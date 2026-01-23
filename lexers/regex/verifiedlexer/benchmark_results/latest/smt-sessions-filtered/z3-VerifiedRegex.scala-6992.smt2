; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371360 () Bool)

(assert start!371360)

(declare-fun b!3950104 () Bool)

(declare-fun b_free!108489 () Bool)

(declare-fun b_next!109193 () Bool)

(assert (=> b!3950104 (= b_free!108489 (not b_next!109193))))

(declare-fun tp!1203207 () Bool)

(declare-fun b_and!302571 () Bool)

(assert (=> b!3950104 (= tp!1203207 b_and!302571)))

(declare-fun b_free!108491 () Bool)

(declare-fun b_next!109195 () Bool)

(assert (=> b!3950104 (= b_free!108491 (not b_next!109195))))

(declare-fun tp!1203204 () Bool)

(declare-fun b_and!302573 () Bool)

(assert (=> b!3950104 (= tp!1203204 b_and!302573)))

(declare-fun b!3950114 () Bool)

(declare-fun b_free!108493 () Bool)

(declare-fun b_next!109197 () Bool)

(assert (=> b!3950114 (= b_free!108493 (not b_next!109197))))

(declare-fun tp!1203202 () Bool)

(declare-fun b_and!302575 () Bool)

(assert (=> b!3950114 (= tp!1203202 b_and!302575)))

(declare-fun b_free!108495 () Bool)

(declare-fun b_next!109199 () Bool)

(assert (=> b!3950114 (= b_free!108495 (not b_next!109199))))

(declare-fun tp!1203190 () Bool)

(declare-fun b_and!302577 () Bool)

(assert (=> b!3950114 (= tp!1203190 b_and!302577)))

(declare-fun b!3950108 () Bool)

(declare-fun b_free!108497 () Bool)

(declare-fun b_next!109201 () Bool)

(assert (=> b!3950108 (= b_free!108497 (not b_next!109201))))

(declare-fun tp!1203189 () Bool)

(declare-fun b_and!302579 () Bool)

(assert (=> b!3950108 (= tp!1203189 b_and!302579)))

(declare-fun b_free!108499 () Bool)

(declare-fun b_next!109203 () Bool)

(assert (=> b!3950108 (= b_free!108499 (not b_next!109203))))

(declare-fun tp!1203198 () Bool)

(declare-fun b_and!302581 () Bool)

(assert (=> b!3950108 (= tp!1203198 b_and!302581)))

(declare-fun b!3950128 () Bool)

(declare-fun b_free!108501 () Bool)

(declare-fun b_next!109205 () Bool)

(assert (=> b!3950128 (= b_free!108501 (not b_next!109205))))

(declare-fun tp!1203200 () Bool)

(declare-fun b_and!302583 () Bool)

(assert (=> b!3950128 (= tp!1203200 b_and!302583)))

(declare-fun b_free!108503 () Bool)

(declare-fun b_next!109207 () Bool)

(assert (=> b!3950128 (= b_free!108503 (not b_next!109207))))

(declare-fun tp!1203206 () Bool)

(declare-fun b_and!302585 () Bool)

(assert (=> b!3950128 (= tp!1203206 b_and!302585)))

(declare-fun b!3950095 () Bool)

(declare-datatypes ((LexerInterface!6161 0))(
  ( (LexerInterfaceExt!6158 (__x!25821 Int)) (Lexer!6159) )
))
(declare-fun thiss!20629 () LexerInterface!6161)

(declare-datatypes ((List!42119 0))(
  ( (Nil!41995) (Cons!41995 (h!47415 (_ BitVec 16)) (t!328480 List!42119)) )
))
(declare-datatypes ((TokenValue!6802 0))(
  ( (FloatLiteralValue!13604 (text!48059 List!42119)) (TokenValueExt!6801 (__x!25822 Int)) (Broken!34010 (value!207910 List!42119)) (Object!6925) (End!6802) (Def!6802) (Underscore!6802) (Match!6802) (Else!6802) (Error!6802) (Case!6802) (If!6802) (Extends!6802) (Abstract!6802) (Class!6802) (Val!6802) (DelimiterValue!13604 (del!6862 List!42119)) (KeywordValue!6808 (value!207911 List!42119)) (CommentValue!13604 (value!207912 List!42119)) (WhitespaceValue!13604 (value!207913 List!42119)) (IndentationValue!6802 (value!207914 List!42119)) (String!47727) (Int32!6802) (Broken!34011 (value!207915 List!42119)) (Boolean!6803) (Unit!60513) (OperatorValue!6805 (op!6862 List!42119)) (IdentifierValue!13604 (value!207916 List!42119)) (IdentifierValue!13605 (value!207917 List!42119)) (WhitespaceValue!13605 (value!207918 List!42119)) (True!13604) (False!13604) (Broken!34012 (value!207919 List!42119)) (Broken!34013 (value!207920 List!42119)) (True!13605) (RightBrace!6802) (RightBracket!6802) (Colon!6802) (Null!6802) (Comma!6802) (LeftBracket!6802) (False!13605) (LeftBrace!6802) (ImaginaryLiteralValue!6802 (text!48060 List!42119)) (StringLiteralValue!20406 (value!207921 List!42119)) (EOFValue!6802 (value!207922 List!42119)) (IdentValue!6802 (value!207923 List!42119)) (DelimiterValue!13605 (value!207924 List!42119)) (DedentValue!6802 (value!207925 List!42119)) (NewLineValue!6802 (value!207926 List!42119)) (IntegerValue!20406 (value!207927 (_ BitVec 32)) (text!48061 List!42119)) (IntegerValue!20407 (value!207928 Int) (text!48062 List!42119)) (Times!6802) (Or!6802) (Equal!6802) (Minus!6802) (Broken!34014 (value!207929 List!42119)) (And!6802) (Div!6802) (LessEqual!6802) (Mod!6802) (Concat!18279) (Not!6802) (Plus!6802) (SpaceValue!6802 (value!207930 List!42119)) (IntegerValue!20408 (value!207931 Int) (text!48063 List!42119)) (StringLiteralValue!20407 (text!48064 List!42119)) (FloatLiteralValue!13605 (text!48065 List!42119)) (BytesLiteralValue!6802 (value!207932 List!42119)) (CommentValue!13605 (value!207933 List!42119)) (StringLiteralValue!20408 (value!207934 List!42119)) (ErrorTokenValue!6802 (msg!6863 List!42119)) )
))
(declare-datatypes ((C!23140 0))(
  ( (C!23141 (val!13664 Int)) )
))
(declare-datatypes ((Regex!11477 0))(
  ( (ElementMatch!11477 (c!685922 C!23140)) (Concat!18280 (regOne!23466 Regex!11477) (regTwo!23466 Regex!11477)) (EmptyExpr!11477) (Star!11477 (reg!11806 Regex!11477)) (EmptyLang!11477) (Union!11477 (regOne!23467 Regex!11477) (regTwo!23467 Regex!11477)) )
))
(declare-datatypes ((String!47728 0))(
  ( (String!47729 (value!207935 String)) )
))
(declare-datatypes ((List!42120 0))(
  ( (Nil!41996) (Cons!41996 (h!47416 C!23140) (t!328481 List!42120)) )
))
(declare-datatypes ((IArray!25571 0))(
  ( (IArray!25572 (innerList!12843 List!42120)) )
))
(declare-datatypes ((Conc!12783 0))(
  ( (Node!12783 (left!31947 Conc!12783) (right!32277 Conc!12783) (csize!25796 Int) (cheight!12994 Int)) (Leaf!19776 (xs!16089 IArray!25571) (csize!25797 Int)) (Empty!12783) )
))
(declare-datatypes ((BalanceConc!25160 0))(
  ( (BalanceConc!25161 (c!685923 Conc!12783)) )
))
(declare-datatypes ((TokenValueInjection!13032 0))(
  ( (TokenValueInjection!13033 (toValue!9048 Int) (toChars!8907 Int)) )
))
(declare-datatypes ((Rule!12944 0))(
  ( (Rule!12945 (regex!6572 Regex!11477) (tag!7432 String!47728) (isSeparator!6572 Bool) (transformation!6572 TokenValueInjection!13032)) )
))
(declare-datatypes ((Token!12282 0))(
  ( (Token!12283 (value!207936 TokenValue!6802) (rule!9538 Rule!12944) (size!31474 Int) (originalCharacters!7172 List!42120)) )
))
(declare-datatypes ((tuple2!41278 0))(
  ( (tuple2!41279 (_1!23773 Token!12282) (_2!23773 List!42120)) )
))
(declare-datatypes ((Option!8992 0))(
  ( (None!8991) (Some!8991 (v!39331 tuple2!41278)) )
))
(declare-fun lt!1380766 () Option!8992)

(declare-datatypes ((List!42121 0))(
  ( (Nil!41997) (Cons!41997 (h!47417 Rule!12944) (t!328482 List!42121)) )
))
(declare-fun rules!2768 () List!42121)

(declare-fun lt!1380768 () List!42120)

(declare-fun maxPrefix!3465 (LexerInterface!6161 List!42121 List!42120) Option!8992)

(assert (=> b!3950095 (= lt!1380766 (maxPrefix!3465 thiss!20629 (t!328482 rules!2768) lt!1380768))))

(declare-fun lt!1380763 () Option!8992)

(declare-fun call!285206 () Option!8992)

(assert (=> b!3950095 (= lt!1380763 call!285206)))

(declare-fun e!2444782 () Option!8992)

(get-info :version)

(assert (=> b!3950095 (= e!2444782 (ite (and ((_ is None!8991) lt!1380763) ((_ is None!8991) lt!1380766)) None!8991 (ite ((_ is None!8991) lt!1380766) lt!1380763 (ite ((_ is None!8991) lt!1380763) lt!1380766 (ite (>= (size!31474 (_1!23773 (v!39331 lt!1380763))) (size!31474 (_1!23773 (v!39331 lt!1380766)))) (Some!8991 (v!39331 lt!1380763)) lt!1380766)))))))

(declare-fun b!3950096 () Bool)

(declare-fun e!2444769 () Bool)

(declare-fun tp_is_empty!19925 () Bool)

(declare-fun tp!1203199 () Bool)

(assert (=> b!3950096 (= e!2444769 (and tp_is_empty!19925 tp!1203199))))

(declare-fun b!3950097 () Bool)

(declare-fun e!2444786 () Bool)

(declare-fun e!2444767 () Bool)

(declare-fun tp!1203187 () Bool)

(declare-fun inv!56221 (String!47728) Bool)

(declare-fun inv!56224 (TokenValueInjection!13032) Bool)

(assert (=> b!3950097 (= e!2444786 (and tp!1203187 (inv!56221 (tag!7432 (h!47417 rules!2768))) (inv!56224 (transformation!6572 (h!47417 rules!2768))) e!2444767))))

(declare-fun bm!285201 () Bool)

(declare-fun maxPrefixOneRule!2519 (LexerInterface!6161 Rule!12944 List!42120) Option!8992)

(assert (=> bm!285201 (= call!285206 (maxPrefixOneRule!2519 thiss!20629 (h!47417 rules!2768) lt!1380768))))

(declare-fun err!4417 () Option!8992)

(declare-fun e!2444768 () Bool)

(declare-fun b!3950098 () Bool)

(declare-fun e!2444779 () Bool)

(declare-fun tp!1203193 () Bool)

(declare-fun inv!21 (TokenValue!6802) Bool)

(assert (=> b!3950098 (= e!2444768 (and (inv!21 (value!207936 (_1!23773 (v!39331 err!4417)))) e!2444779 tp!1203193))))

(declare-fun b!3950099 () Bool)

(declare-fun res!1598271 () Bool)

(declare-fun e!2444757 () Bool)

(assert (=> b!3950099 (=> (not res!1598271) (not e!2444757))))

(declare-fun isEmpty!25080 (List!42121) Bool)

(assert (=> b!3950099 (= res!1598271 (not (isEmpty!25080 rules!2768)))))

(declare-fun b!3950100 () Bool)

(declare-fun e!2444774 () Bool)

(declare-fun tp!1203197 () Bool)

(assert (=> b!3950100 (= e!2444774 (and tp_is_empty!19925 tp!1203197))))

(declare-fun b!3950101 () Bool)

(declare-fun res!1598266 () Bool)

(assert (=> b!3950101 (=> (not res!1598266) (not e!2444757))))

(declare-datatypes ((List!42122 0))(
  ( (Nil!41998) (Cons!41998 (h!47418 Token!12282) (t!328483 List!42122)) )
))
(declare-fun prefixTokens!80 () List!42122)

(declare-fun isEmpty!25081 (List!42122) Bool)

(assert (=> b!3950101 (= res!1598266 (not (isEmpty!25081 prefixTokens!80)))))

(declare-fun b!3950102 () Bool)

(declare-fun e!2444784 () Bool)

(declare-fun lt!1380772 () Int)

(declare-fun prefix!426 () List!42120)

(declare-fun size!31475 (List!42120) Int)

(assert (=> b!3950102 (= e!2444784 (= lt!1380772 (size!31475 prefix!426)))))

(declare-fun b!3950103 () Bool)

(declare-fun res!1598268 () Bool)

(declare-fun e!2444771 () Bool)

(assert (=> b!3950103 (=> res!1598268 e!2444771)))

(declare-datatypes ((tuple2!41280 0))(
  ( (tuple2!41281 (_1!23774 List!42122) (_2!23774 List!42120)) )
))
(declare-fun lt!1380771 () tuple2!41280)

(declare-fun lt!1380770 () Option!8992)

(declare-fun lt!1380762 () tuple2!41280)

(declare-fun ++!10901 (List!42122 List!42122) List!42122)

(assert (=> b!3950103 (= res!1598268 (not (= lt!1380771 (tuple2!41281 (++!10901 (Cons!41998 (_1!23773 (v!39331 lt!1380770)) Nil!41998) (_1!23774 lt!1380762)) (_2!23774 lt!1380762)))))))

(declare-fun e!2444765 () Bool)

(assert (=> b!3950104 (= e!2444765 (and tp!1203207 tp!1203204))))

(declare-fun res!1598259 () Bool)

(assert (=> start!371360 (=> (not res!1598259) (not e!2444757))))

(assert (=> start!371360 (= res!1598259 ((_ is Lexer!6159) thiss!20629))))

(assert (=> start!371360 e!2444757))

(assert (=> start!371360 e!2444769))

(assert (=> start!371360 true))

(assert (=> start!371360 e!2444774))

(declare-fun e!2444783 () Bool)

(assert (=> start!371360 e!2444783))

(declare-fun e!2444756 () Bool)

(assert (=> start!371360 e!2444756))

(declare-fun e!2444772 () Bool)

(assert (=> start!371360 e!2444772))

(declare-fun e!2444762 () Bool)

(assert (=> start!371360 e!2444762))

(declare-fun b!3950105 () Bool)

(declare-fun e!2444778 () Bool)

(declare-fun e!2444787 () Option!8992)

(assert (=> b!3950105 (= e!2444778 (= lt!1380770 e!2444787))))

(declare-fun c!685920 () Bool)

(assert (=> b!3950105 (= c!685920 (and ((_ is Cons!41997) rules!2768) ((_ is Nil!41997) (t!328482 rules!2768))))))

(declare-fun e!2444780 () Bool)

(declare-fun b!3950106 () Bool)

(declare-fun suffixTokens!72 () List!42122)

(declare-fun tp!1203208 () Bool)

(declare-fun e!2444775 () Bool)

(assert (=> b!3950106 (= e!2444780 (and (inv!21 (value!207936 (h!47418 suffixTokens!72))) e!2444775 tp!1203208))))

(declare-fun b!3950107 () Bool)

(declare-fun res!1598262 () Bool)

(assert (=> b!3950107 (=> (not res!1598262) (not e!2444757))))

(declare-fun isEmpty!25082 (List!42120) Bool)

(assert (=> b!3950107 (= res!1598262 (not (isEmpty!25082 prefix!426)))))

(declare-fun e!2444761 () Bool)

(assert (=> b!3950108 (= e!2444761 (and tp!1203189 tp!1203198))))

(declare-fun b!3950109 () Bool)

(declare-fun res!1598263 () Bool)

(assert (=> b!3950109 (=> (not res!1598263) (not e!2444757))))

(declare-fun rulesInvariant!5504 (LexerInterface!6161 List!42121) Bool)

(assert (=> b!3950109 (= res!1598263 (rulesInvariant!5504 thiss!20629 rules!2768))))

(declare-fun b!3950110 () Bool)

(assert (=> b!3950110 true))

(declare-fun e!2444785 () Bool)

(assert (=> b!3950110 e!2444785))

(assert (=> b!3950110 (= e!2444782 err!4417)))

(declare-fun b!3950111 () Bool)

(declare-fun res!1598260 () Bool)

(declare-fun e!2444759 () Bool)

(assert (=> b!3950111 (=> (not res!1598260) (not e!2444759))))

(declare-fun suffixResult!91 () List!42120)

(declare-fun suffix!1176 () List!42120)

(declare-fun lexList!1929 (LexerInterface!6161 List!42121 List!42120) tuple2!41280)

(assert (=> b!3950111 (= res!1598260 (= (lexList!1929 thiss!20629 rules!2768 suffix!1176) (tuple2!41281 suffixTokens!72 suffixResult!91)))))

(declare-fun e!2444776 () Bool)

(declare-fun b!3950112 () Bool)

(declare-fun e!2444770 () Bool)

(declare-fun tp!1203201 () Bool)

(assert (=> b!3950112 (= e!2444776 (and (inv!21 (value!207936 (h!47418 prefixTokens!80))) e!2444770 tp!1203201))))

(declare-fun b!3950113 () Bool)

(declare-fun res!1598269 () Bool)

(assert (=> b!3950113 (=> res!1598269 e!2444771)))

(assert (=> b!3950113 (= res!1598269 (or (not (= lt!1380762 (tuple2!41281 (_1!23774 lt!1380762) (_2!23774 lt!1380762)))) (not (= (_2!23773 (v!39331 lt!1380770)) suffix!1176))))))

(declare-fun e!2444773 () Bool)

(assert (=> b!3950114 (= e!2444773 (and tp!1203202 tp!1203190))))

(declare-fun b!3950115 () Bool)

(declare-fun e!2444764 () Bool)

(assert (=> b!3950115 (= e!2444764 (not e!2444771))))

(declare-fun res!1598261 () Bool)

(assert (=> b!3950115 (=> res!1598261 e!2444771)))

(declare-fun lt!1380764 () List!42120)

(assert (=> b!3950115 (= res!1598261 (not (= lt!1380764 lt!1380768)))))

(assert (=> b!3950115 (= lt!1380762 (lexList!1929 thiss!20629 rules!2768 (_2!23773 (v!39331 lt!1380770))))))

(declare-fun lt!1380761 () List!42120)

(declare-fun lt!1380760 () List!42120)

(declare-fun lt!1380759 () TokenValue!6802)

(assert (=> b!3950115 (and (= (size!31474 (_1!23773 (v!39331 lt!1380770))) lt!1380772) (= (originalCharacters!7172 (_1!23773 (v!39331 lt!1380770))) lt!1380761) (= (tuple2!41279 (_1!23773 (v!39331 lt!1380770)) (_2!23773 (v!39331 lt!1380770))) (tuple2!41279 (Token!12283 lt!1380759 (rule!9538 (_1!23773 (v!39331 lt!1380770))) lt!1380772 lt!1380761) lt!1380760)))))

(assert (=> b!3950115 (= lt!1380772 (size!31475 lt!1380761))))

(declare-fun e!2444777 () Bool)

(assert (=> b!3950115 e!2444777))

(declare-fun res!1598270 () Bool)

(assert (=> b!3950115 (=> (not res!1598270) (not e!2444777))))

(assert (=> b!3950115 (= res!1598270 (= (value!207936 (_1!23773 (v!39331 lt!1380770))) lt!1380759))))

(declare-fun apply!9803 (TokenValueInjection!13032 BalanceConc!25160) TokenValue!6802)

(declare-fun seqFromList!4831 (List!42120) BalanceConc!25160)

(assert (=> b!3950115 (= lt!1380759 (apply!9803 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))) (seqFromList!4831 lt!1380761)))))

(assert (=> b!3950115 (= (_2!23773 (v!39331 lt!1380770)) lt!1380760)))

(declare-datatypes ((Unit!60514 0))(
  ( (Unit!60515) )
))
(declare-fun lt!1380769 () Unit!60514)

(declare-fun lemmaSamePrefixThenSameSuffix!1870 (List!42120 List!42120 List!42120 List!42120 List!42120) Unit!60514)

(assert (=> b!3950115 (= lt!1380769 (lemmaSamePrefixThenSameSuffix!1870 lt!1380761 (_2!23773 (v!39331 lt!1380770)) lt!1380761 lt!1380760 lt!1380768))))

(declare-fun getSuffix!2112 (List!42120 List!42120) List!42120)

(assert (=> b!3950115 (= lt!1380760 (getSuffix!2112 lt!1380768 lt!1380761))))

(declare-fun isPrefix!3661 (List!42120 List!42120) Bool)

(assert (=> b!3950115 (isPrefix!3661 lt!1380761 lt!1380764)))

(declare-fun ++!10902 (List!42120 List!42120) List!42120)

(assert (=> b!3950115 (= lt!1380764 (++!10902 lt!1380761 (_2!23773 (v!39331 lt!1380770))))))

(declare-fun lt!1380775 () Unit!60514)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2520 (List!42120 List!42120) Unit!60514)

(assert (=> b!3950115 (= lt!1380775 (lemmaConcatTwoListThenFirstIsPrefix!2520 lt!1380761 (_2!23773 (v!39331 lt!1380770))))))

(declare-fun list!15598 (BalanceConc!25160) List!42120)

(declare-fun charsOf!4390 (Token!12282) BalanceConc!25160)

(assert (=> b!3950115 (= lt!1380761 (list!15598 (charsOf!4390 (_1!23773 (v!39331 lt!1380770)))))))

(declare-fun ruleValid!2514 (LexerInterface!6161 Rule!12944) Bool)

(assert (=> b!3950115 (ruleValid!2514 thiss!20629 (rule!9538 (_1!23773 (v!39331 lt!1380770))))))

(declare-fun lt!1380773 () Unit!60514)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1590 (LexerInterface!6161 Rule!12944 List!42121) Unit!60514)

(assert (=> b!3950115 (= lt!1380773 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1590 thiss!20629 (rule!9538 (_1!23773 (v!39331 lt!1380770))) rules!2768))))

(declare-fun lt!1380767 () Unit!60514)

(declare-fun lemmaCharactersSize!1225 (Token!12282) Unit!60514)

(assert (=> b!3950115 (= lt!1380767 (lemmaCharactersSize!1225 (_1!23773 (v!39331 lt!1380770))))))

(declare-fun b!3950116 () Bool)

(declare-fun tp!1203195 () Bool)

(assert (=> b!3950116 (= e!2444775 (and tp!1203195 (inv!56221 (tag!7432 (rule!9538 (h!47418 suffixTokens!72)))) (inv!56224 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))) e!2444773))))

(declare-fun b!3950117 () Bool)

(declare-fun tp!1203188 () Bool)

(declare-fun inv!56225 (Token!12282) Bool)

(assert (=> b!3950117 (= e!2444756 (and (inv!56225 (h!47418 prefixTokens!80)) e!2444776 tp!1203188))))

(declare-fun b!3950118 () Bool)

(declare-fun tp!1203191 () Bool)

(assert (=> b!3950118 (= e!2444772 (and (inv!56225 (h!47418 suffixTokens!72)) e!2444780 tp!1203191))))

(declare-fun tp!1203196 () Bool)

(declare-fun b!3950119 () Bool)

(assert (=> b!3950119 (= e!2444770 (and tp!1203196 (inv!56221 (tag!7432 (rule!9538 (h!47418 prefixTokens!80)))) (inv!56224 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))) e!2444765))))

(declare-fun b!3950120 () Bool)

(assert (=> b!3950120 (= e!2444787 e!2444782)))

(declare-fun c!685921 () Bool)

(assert (=> b!3950120 (= c!685921 ((_ is Cons!41997) rules!2768))))

(declare-fun b!3950121 () Bool)

(assert (=> b!3950121 (= e!2444777 (= (size!31474 (_1!23773 (v!39331 lt!1380770))) (size!31475 (originalCharacters!7172 (_1!23773 (v!39331 lt!1380770))))))))

(declare-fun b!3950122 () Bool)

(declare-fun tp!1203205 () Bool)

(assert (=> b!3950122 (= e!2444762 (and tp_is_empty!19925 tp!1203205))))

(declare-fun b!3950123 () Bool)

(assert (=> b!3950123 (= e!2444787 call!285206)))

(declare-fun b!3950124 () Bool)

(assert (=> b!3950124 (= e!2444771 e!2444784)))

(declare-fun res!1598265 () Bool)

(assert (=> b!3950124 (=> res!1598265 e!2444784)))

(assert (=> b!3950124 (= res!1598265 (not (= lt!1380770 (Some!8991 (tuple2!41279 (_1!23773 (v!39331 lt!1380770)) (_2!23773 (v!39331 lt!1380770)))))))))

(assert (=> b!3950124 e!2444778))

(declare-fun res!1598264 () Bool)

(assert (=> b!3950124 (=> (not res!1598264) (not e!2444778))))

(assert (=> b!3950124 (= res!1598264 (isPrefix!3661 lt!1380768 lt!1380768))))

(declare-fun lt!1380765 () Unit!60514)

(declare-fun lemmaIsPrefixRefl!2312 (List!42120 List!42120) Unit!60514)

(assert (=> b!3950124 (= lt!1380765 (lemmaIsPrefixRefl!2312 lt!1380768 lt!1380768))))

(assert (=> b!3950124 (= lt!1380771 (tuple2!41281 (Cons!41998 (_1!23773 (v!39331 lt!1380770)) (_1!23774 lt!1380762)) (_2!23774 lt!1380762)))))

(declare-fun b!3950125 () Bool)

(declare-fun tp!1203192 () Bool)

(assert (=> b!3950125 (= e!2444783 (and e!2444786 tp!1203192))))

(declare-fun b!3950126 () Bool)

(assert (=> b!3950126 (= e!2444759 e!2444764)))

(declare-fun res!1598267 () Bool)

(assert (=> b!3950126 (=> (not res!1598267) (not e!2444764))))

(assert (=> b!3950126 (= res!1598267 ((_ is Some!8991) lt!1380770))))

(assert (=> b!3950126 (= lt!1380770 (maxPrefix!3465 thiss!20629 rules!2768 lt!1380768))))

(declare-fun b!3950127 () Bool)

(assert (=> b!3950127 (= e!2444757 e!2444759)))

(declare-fun res!1598272 () Bool)

(assert (=> b!3950127 (=> (not res!1598272) (not e!2444759))))

(declare-fun lt!1380774 () List!42122)

(assert (=> b!3950127 (= res!1598272 (= lt!1380771 (tuple2!41281 lt!1380774 suffixResult!91)))))

(assert (=> b!3950127 (= lt!1380771 (lexList!1929 thiss!20629 rules!2768 lt!1380768))))

(assert (=> b!3950127 (= lt!1380774 (++!10901 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3950127 (= lt!1380768 (++!10902 prefix!426 suffix!1176))))

(assert (=> b!3950128 (= e!2444767 (and tp!1203200 tp!1203206))))

(declare-fun b!3950129 () Bool)

(declare-fun tp!1203203 () Bool)

(assert (=> b!3950129 (= e!2444785 (and (inv!56225 (_1!23773 (v!39331 err!4417))) e!2444768 tp!1203203))))

(declare-fun b!3950130 () Bool)

(declare-fun tp!1203194 () Bool)

(assert (=> b!3950130 (= e!2444779 (and tp!1203194 (inv!56221 (tag!7432 (rule!9538 (_1!23773 (v!39331 err!4417))))) (inv!56224 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))) e!2444761))))

(assert (= (and start!371360 res!1598259) b!3950099))

(assert (= (and b!3950099 res!1598271) b!3950109))

(assert (= (and b!3950109 res!1598263) b!3950101))

(assert (= (and b!3950101 res!1598266) b!3950107))

(assert (= (and b!3950107 res!1598262) b!3950127))

(assert (= (and b!3950127 res!1598272) b!3950111))

(assert (= (and b!3950111 res!1598260) b!3950126))

(assert (= (and b!3950126 res!1598267) b!3950115))

(assert (= (and b!3950115 res!1598270) b!3950121))

(assert (= (and b!3950115 (not res!1598261)) b!3950103))

(assert (= (and b!3950103 (not res!1598268)) b!3950113))

(assert (= (and b!3950113 (not res!1598269)) b!3950124))

(assert (= (and b!3950124 res!1598264) b!3950105))

(assert (= (and b!3950105 c!685920) b!3950123))

(assert (= (and b!3950105 (not c!685920)) b!3950120))

(assert (= (and b!3950120 c!685921) b!3950095))

(assert (= (and b!3950120 (not c!685921)) b!3950110))

(assert (= b!3950130 b!3950108))

(assert (= b!3950098 b!3950130))

(assert (= b!3950129 b!3950098))

(assert (= (and b!3950110 ((_ is Some!8991) err!4417)) b!3950129))

(assert (= (or b!3950123 b!3950095) bm!285201))

(assert (= (and b!3950124 (not res!1598265)) b!3950102))

(assert (= (and start!371360 ((_ is Cons!41996) suffixResult!91)) b!3950096))

(assert (= (and start!371360 ((_ is Cons!41996) suffix!1176)) b!3950100))

(assert (= b!3950097 b!3950128))

(assert (= b!3950125 b!3950097))

(assert (= (and start!371360 ((_ is Cons!41997) rules!2768)) b!3950125))

(assert (= b!3950119 b!3950104))

(assert (= b!3950112 b!3950119))

(assert (= b!3950117 b!3950112))

(assert (= (and start!371360 ((_ is Cons!41998) prefixTokens!80)) b!3950117))

(assert (= b!3950116 b!3950114))

(assert (= b!3950106 b!3950116))

(assert (= b!3950118 b!3950106))

(assert (= (and start!371360 ((_ is Cons!41998) suffixTokens!72)) b!3950118))

(assert (= (and start!371360 ((_ is Cons!41996) prefix!426)) b!3950122))

(declare-fun m!4518881 () Bool)

(assert (=> b!3950127 m!4518881))

(declare-fun m!4518883 () Bool)

(assert (=> b!3950127 m!4518883))

(declare-fun m!4518885 () Bool)

(assert (=> b!3950127 m!4518885))

(declare-fun m!4518887 () Bool)

(assert (=> b!3950106 m!4518887))

(declare-fun m!4518889 () Bool)

(assert (=> b!3950098 m!4518889))

(declare-fun m!4518891 () Bool)

(assert (=> b!3950109 m!4518891))

(declare-fun m!4518893 () Bool)

(assert (=> b!3950130 m!4518893))

(declare-fun m!4518895 () Bool)

(assert (=> b!3950130 m!4518895))

(declare-fun m!4518897 () Bool)

(assert (=> b!3950129 m!4518897))

(declare-fun m!4518899 () Bool)

(assert (=> b!3950124 m!4518899))

(declare-fun m!4518901 () Bool)

(assert (=> b!3950124 m!4518901))

(declare-fun m!4518903 () Bool)

(assert (=> b!3950118 m!4518903))

(declare-fun m!4518905 () Bool)

(assert (=> b!3950107 m!4518905))

(declare-fun m!4518907 () Bool)

(assert (=> bm!285201 m!4518907))

(declare-fun m!4518909 () Bool)

(assert (=> b!3950102 m!4518909))

(declare-fun m!4518911 () Bool)

(assert (=> b!3950116 m!4518911))

(declare-fun m!4518913 () Bool)

(assert (=> b!3950116 m!4518913))

(declare-fun m!4518915 () Bool)

(assert (=> b!3950101 m!4518915))

(declare-fun m!4518917 () Bool)

(assert (=> b!3950111 m!4518917))

(declare-fun m!4518919 () Bool)

(assert (=> b!3950095 m!4518919))

(declare-fun m!4518921 () Bool)

(assert (=> b!3950121 m!4518921))

(declare-fun m!4518923 () Bool)

(assert (=> b!3950119 m!4518923))

(declare-fun m!4518925 () Bool)

(assert (=> b!3950119 m!4518925))

(declare-fun m!4518927 () Bool)

(assert (=> b!3950126 m!4518927))

(declare-fun m!4518929 () Bool)

(assert (=> b!3950097 m!4518929))

(declare-fun m!4518931 () Bool)

(assert (=> b!3950097 m!4518931))

(declare-fun m!4518933 () Bool)

(assert (=> b!3950103 m!4518933))

(declare-fun m!4518935 () Bool)

(assert (=> b!3950117 m!4518935))

(declare-fun m!4518937 () Bool)

(assert (=> b!3950112 m!4518937))

(declare-fun m!4518939 () Bool)

(assert (=> b!3950115 m!4518939))

(declare-fun m!4518941 () Bool)

(assert (=> b!3950115 m!4518941))

(declare-fun m!4518943 () Bool)

(assert (=> b!3950115 m!4518943))

(declare-fun m!4518945 () Bool)

(assert (=> b!3950115 m!4518945))

(declare-fun m!4518947 () Bool)

(assert (=> b!3950115 m!4518947))

(declare-fun m!4518949 () Bool)

(assert (=> b!3950115 m!4518949))

(declare-fun m!4518951 () Bool)

(assert (=> b!3950115 m!4518951))

(declare-fun m!4518953 () Bool)

(assert (=> b!3950115 m!4518953))

(declare-fun m!4518955 () Bool)

(assert (=> b!3950115 m!4518955))

(declare-fun m!4518957 () Bool)

(assert (=> b!3950115 m!4518957))

(assert (=> b!3950115 m!4518947))

(declare-fun m!4518959 () Bool)

(assert (=> b!3950115 m!4518959))

(declare-fun m!4518961 () Bool)

(assert (=> b!3950115 m!4518961))

(declare-fun m!4518963 () Bool)

(assert (=> b!3950115 m!4518963))

(declare-fun m!4518965 () Bool)

(assert (=> b!3950115 m!4518965))

(assert (=> b!3950115 m!4518955))

(declare-fun m!4518967 () Bool)

(assert (=> b!3950099 m!4518967))

(check-sat (not b!3950122) (not b!3950100) (not bm!285201) (not b!3950117) b_and!302571 b_and!302573 (not b!3950129) (not b_next!109207) (not b_next!109205) b_and!302581 (not b_next!109201) (not b!3950118) (not b!3950097) (not b_next!109197) (not b!3950102) (not b!3950116) (not b!3950098) b_and!302585 (not b!3950119) (not b!3950109) (not b!3950103) (not b!3950126) (not b!3950111) (not b!3950115) (not b!3950107) b_and!302579 tp_is_empty!19925 b_and!302577 (not b!3950127) b_and!302583 (not b!3950130) b_and!302575 (not b!3950125) (not b!3950099) (not b!3950106) (not b!3950096) (not b!3950101) (not b_next!109193) (not b!3950095) (not b!3950121) (not b_next!109203) (not b_next!109195) (not b_next!109199) (not b!3950124) (not b!3950112))
(check-sat (not b_next!109201) (not b_next!109197) b_and!302585 b_and!302579 b_and!302571 b_and!302577 b_and!302583 b_and!302573 b_and!302575 (not b_next!109207) (not b_next!109205) b_and!302581 (not b_next!109193) (not b_next!109203) (not b_next!109195) (not b_next!109199))
(get-model)

(declare-fun d!1171505 () Bool)

(declare-fun lt!1380778 () Int)

(assert (=> d!1171505 (>= lt!1380778 0)))

(declare-fun e!2444791 () Int)

(assert (=> d!1171505 (= lt!1380778 e!2444791)))

(declare-fun c!685926 () Bool)

(assert (=> d!1171505 (= c!685926 ((_ is Nil!41996) (originalCharacters!7172 (_1!23773 (v!39331 lt!1380770)))))))

(assert (=> d!1171505 (= (size!31475 (originalCharacters!7172 (_1!23773 (v!39331 lt!1380770)))) lt!1380778)))

(declare-fun b!3950135 () Bool)

(assert (=> b!3950135 (= e!2444791 0)))

(declare-fun b!3950136 () Bool)

(assert (=> b!3950136 (= e!2444791 (+ 1 (size!31475 (t!328481 (originalCharacters!7172 (_1!23773 (v!39331 lt!1380770)))))))))

(assert (= (and d!1171505 c!685926) b!3950135))

(assert (= (and d!1171505 (not c!685926)) b!3950136))

(declare-fun m!4518969 () Bool)

(assert (=> b!3950136 m!4518969))

(assert (=> b!3950121 d!1171505))

(declare-fun d!1171507 () Bool)

(declare-fun c!685931 () Bool)

(assert (=> d!1171507 (= c!685931 ((_ is IntegerValue!20406) (value!207936 (_1!23773 (v!39331 err!4417)))))))

(declare-fun e!2444799 () Bool)

(assert (=> d!1171507 (= (inv!21 (value!207936 (_1!23773 (v!39331 err!4417)))) e!2444799)))

(declare-fun b!3950147 () Bool)

(declare-fun e!2444798 () Bool)

(declare-fun inv!15 (TokenValue!6802) Bool)

(assert (=> b!3950147 (= e!2444798 (inv!15 (value!207936 (_1!23773 (v!39331 err!4417)))))))

(declare-fun b!3950148 () Bool)

(declare-fun e!2444800 () Bool)

(assert (=> b!3950148 (= e!2444799 e!2444800)))

(declare-fun c!685932 () Bool)

(assert (=> b!3950148 (= c!685932 ((_ is IntegerValue!20407) (value!207936 (_1!23773 (v!39331 err!4417)))))))

(declare-fun b!3950149 () Bool)

(declare-fun inv!17 (TokenValue!6802) Bool)

(assert (=> b!3950149 (= e!2444800 (inv!17 (value!207936 (_1!23773 (v!39331 err!4417)))))))

(declare-fun b!3950150 () Bool)

(declare-fun inv!16 (TokenValue!6802) Bool)

(assert (=> b!3950150 (= e!2444799 (inv!16 (value!207936 (_1!23773 (v!39331 err!4417)))))))

(declare-fun b!3950151 () Bool)

(declare-fun res!1598283 () Bool)

(assert (=> b!3950151 (=> res!1598283 e!2444798)))

(assert (=> b!3950151 (= res!1598283 (not ((_ is IntegerValue!20408) (value!207936 (_1!23773 (v!39331 err!4417))))))))

(assert (=> b!3950151 (= e!2444800 e!2444798)))

(assert (= (and d!1171507 c!685931) b!3950150))

(assert (= (and d!1171507 (not c!685931)) b!3950148))

(assert (= (and b!3950148 c!685932) b!3950149))

(assert (= (and b!3950148 (not c!685932)) b!3950151))

(assert (= (and b!3950151 (not res!1598283)) b!3950147))

(declare-fun m!4518971 () Bool)

(assert (=> b!3950147 m!4518971))

(declare-fun m!4518973 () Bool)

(assert (=> b!3950149 m!4518973))

(declare-fun m!4518975 () Bool)

(assert (=> b!3950150 m!4518975))

(assert (=> b!3950098 d!1171507))

(declare-fun d!1171511 () Bool)

(assert (=> d!1171511 (= (isEmpty!25080 rules!2768) ((_ is Nil!41997) rules!2768))))

(assert (=> b!3950099 d!1171511))

(declare-fun d!1171513 () Bool)

(declare-fun lt!1380779 () Int)

(assert (=> d!1171513 (>= lt!1380779 0)))

(declare-fun e!2444801 () Int)

(assert (=> d!1171513 (= lt!1380779 e!2444801)))

(declare-fun c!685933 () Bool)

(assert (=> d!1171513 (= c!685933 ((_ is Nil!41996) prefix!426))))

(assert (=> d!1171513 (= (size!31475 prefix!426) lt!1380779)))

(declare-fun b!3950152 () Bool)

(assert (=> b!3950152 (= e!2444801 0)))

(declare-fun b!3950153 () Bool)

(assert (=> b!3950153 (= e!2444801 (+ 1 (size!31475 (t!328481 prefix!426))))))

(assert (= (and d!1171513 c!685933) b!3950152))

(assert (= (and d!1171513 (not c!685933)) b!3950153))

(declare-fun m!4518977 () Bool)

(assert (=> b!3950153 m!4518977))

(assert (=> b!3950102 d!1171513))

(declare-fun b!3950163 () Bool)

(declare-fun e!2444807 () List!42122)

(assert (=> b!3950163 (= e!2444807 (Cons!41998 (h!47418 (Cons!41998 (_1!23773 (v!39331 lt!1380770)) Nil!41998)) (++!10901 (t!328483 (Cons!41998 (_1!23773 (v!39331 lt!1380770)) Nil!41998)) (_1!23774 lt!1380762))))))

(declare-fun b!3950164 () Bool)

(declare-fun res!1598289 () Bool)

(declare-fun e!2444806 () Bool)

(assert (=> b!3950164 (=> (not res!1598289) (not e!2444806))))

(declare-fun lt!1380782 () List!42122)

(declare-fun size!31477 (List!42122) Int)

(assert (=> b!3950164 (= res!1598289 (= (size!31477 lt!1380782) (+ (size!31477 (Cons!41998 (_1!23773 (v!39331 lt!1380770)) Nil!41998)) (size!31477 (_1!23774 lt!1380762)))))))

(declare-fun b!3950162 () Bool)

(assert (=> b!3950162 (= e!2444807 (_1!23774 lt!1380762))))

(declare-fun d!1171515 () Bool)

(assert (=> d!1171515 e!2444806))

(declare-fun res!1598288 () Bool)

(assert (=> d!1171515 (=> (not res!1598288) (not e!2444806))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6368 (List!42122) (InoxSet Token!12282))

(assert (=> d!1171515 (= res!1598288 (= (content!6368 lt!1380782) ((_ map or) (content!6368 (Cons!41998 (_1!23773 (v!39331 lt!1380770)) Nil!41998)) (content!6368 (_1!23774 lt!1380762)))))))

(assert (=> d!1171515 (= lt!1380782 e!2444807)))

(declare-fun c!685936 () Bool)

(assert (=> d!1171515 (= c!685936 ((_ is Nil!41998) (Cons!41998 (_1!23773 (v!39331 lt!1380770)) Nil!41998)))))

(assert (=> d!1171515 (= (++!10901 (Cons!41998 (_1!23773 (v!39331 lt!1380770)) Nil!41998) (_1!23774 lt!1380762)) lt!1380782)))

(declare-fun b!3950165 () Bool)

(assert (=> b!3950165 (= e!2444806 (or (not (= (_1!23774 lt!1380762) Nil!41998)) (= lt!1380782 (Cons!41998 (_1!23773 (v!39331 lt!1380770)) Nil!41998))))))

(assert (= (and d!1171515 c!685936) b!3950162))

(assert (= (and d!1171515 (not c!685936)) b!3950163))

(assert (= (and d!1171515 res!1598288) b!3950164))

(assert (= (and b!3950164 res!1598289) b!3950165))

(declare-fun m!4518979 () Bool)

(assert (=> b!3950163 m!4518979))

(declare-fun m!4518981 () Bool)

(assert (=> b!3950164 m!4518981))

(declare-fun m!4518983 () Bool)

(assert (=> b!3950164 m!4518983))

(declare-fun m!4518985 () Bool)

(assert (=> b!3950164 m!4518985))

(declare-fun m!4518987 () Bool)

(assert (=> d!1171515 m!4518987))

(declare-fun m!4518989 () Bool)

(assert (=> d!1171515 m!4518989))

(declare-fun m!4518991 () Bool)

(assert (=> d!1171515 m!4518991))

(assert (=> b!3950103 d!1171515))

(declare-fun d!1171517 () Bool)

(declare-fun e!2444828 () Bool)

(assert (=> d!1171517 e!2444828))

(declare-fun res!1598307 () Bool)

(assert (=> d!1171517 (=> res!1598307 e!2444828)))

(declare-fun lt!1380794 () Bool)

(assert (=> d!1171517 (= res!1598307 (not lt!1380794))))

(declare-fun e!2444827 () Bool)

(assert (=> d!1171517 (= lt!1380794 e!2444827)))

(declare-fun res!1598305 () Bool)

(assert (=> d!1171517 (=> res!1598305 e!2444827)))

(assert (=> d!1171517 (= res!1598305 ((_ is Nil!41996) lt!1380768))))

(assert (=> d!1171517 (= (isPrefix!3661 lt!1380768 lt!1380768) lt!1380794)))

(declare-fun b!3950194 () Bool)

(declare-fun e!2444826 () Bool)

(declare-fun tail!6118 (List!42120) List!42120)

(assert (=> b!3950194 (= e!2444826 (isPrefix!3661 (tail!6118 lt!1380768) (tail!6118 lt!1380768)))))

(declare-fun b!3950195 () Bool)

(assert (=> b!3950195 (= e!2444828 (>= (size!31475 lt!1380768) (size!31475 lt!1380768)))))

(declare-fun b!3950193 () Bool)

(declare-fun res!1598304 () Bool)

(assert (=> b!3950193 (=> (not res!1598304) (not e!2444826))))

(declare-fun head!8392 (List!42120) C!23140)

(assert (=> b!3950193 (= res!1598304 (= (head!8392 lt!1380768) (head!8392 lt!1380768)))))

(declare-fun b!3950192 () Bool)

(assert (=> b!3950192 (= e!2444827 e!2444826)))

(declare-fun res!1598306 () Bool)

(assert (=> b!3950192 (=> (not res!1598306) (not e!2444826))))

(assert (=> b!3950192 (= res!1598306 (not ((_ is Nil!41996) lt!1380768)))))

(assert (= (and d!1171517 (not res!1598305)) b!3950192))

(assert (= (and b!3950192 res!1598306) b!3950193))

(assert (= (and b!3950193 res!1598304) b!3950194))

(assert (= (and d!1171517 (not res!1598307)) b!3950195))

(declare-fun m!4519009 () Bool)

(assert (=> b!3950194 m!4519009))

(assert (=> b!3950194 m!4519009))

(assert (=> b!3950194 m!4519009))

(assert (=> b!3950194 m!4519009))

(declare-fun m!4519011 () Bool)

(assert (=> b!3950194 m!4519011))

(declare-fun m!4519013 () Bool)

(assert (=> b!3950195 m!4519013))

(assert (=> b!3950195 m!4519013))

(declare-fun m!4519015 () Bool)

(assert (=> b!3950193 m!4519015))

(assert (=> b!3950193 m!4519015))

(assert (=> b!3950124 d!1171517))

(declare-fun d!1171525 () Bool)

(assert (=> d!1171525 (isPrefix!3661 lt!1380768 lt!1380768)))

(declare-fun lt!1380797 () Unit!60514)

(declare-fun choose!23574 (List!42120 List!42120) Unit!60514)

(assert (=> d!1171525 (= lt!1380797 (choose!23574 lt!1380768 lt!1380768))))

(assert (=> d!1171525 (= (lemmaIsPrefixRefl!2312 lt!1380768 lt!1380768) lt!1380797)))

(declare-fun bs!587001 () Bool)

(assert (= bs!587001 d!1171525))

(assert (=> bs!587001 m!4518899))

(declare-fun m!4519017 () Bool)

(assert (=> bs!587001 m!4519017))

(assert (=> b!3950124 d!1171525))

(declare-fun d!1171527 () Bool)

(assert (=> d!1171527 (= (isEmpty!25081 prefixTokens!80) ((_ is Nil!41998) prefixTokens!80))))

(assert (=> b!3950101 d!1171527))

(declare-fun b!3950330 () Bool)

(declare-fun e!2444893 () Option!8992)

(declare-fun lt!1380855 () Option!8992)

(declare-fun lt!1380858 () Option!8992)

(assert (=> b!3950330 (= e!2444893 (ite (and ((_ is None!8991) lt!1380855) ((_ is None!8991) lt!1380858)) None!8991 (ite ((_ is None!8991) lt!1380858) lt!1380855 (ite ((_ is None!8991) lt!1380855) lt!1380858 (ite (>= (size!31474 (_1!23773 (v!39331 lt!1380855))) (size!31474 (_1!23773 (v!39331 lt!1380858)))) lt!1380855 lt!1380858)))))))

(declare-fun call!285212 () Option!8992)

(assert (=> b!3950330 (= lt!1380855 call!285212)))

(assert (=> b!3950330 (= lt!1380858 (maxPrefix!3465 thiss!20629 (t!328482 (t!328482 rules!2768)) lt!1380768))))

(declare-fun b!3950331 () Bool)

(declare-fun res!1598373 () Bool)

(declare-fun e!2444892 () Bool)

(assert (=> b!3950331 (=> (not res!1598373) (not e!2444892))))

(declare-fun lt!1380856 () Option!8992)

(declare-fun get!13862 (Option!8992) tuple2!41278)

(assert (=> b!3950331 (= res!1598373 (= (value!207936 (_1!23773 (get!13862 lt!1380856))) (apply!9803 (transformation!6572 (rule!9538 (_1!23773 (get!13862 lt!1380856)))) (seqFromList!4831 (originalCharacters!7172 (_1!23773 (get!13862 lt!1380856)))))))))

(declare-fun b!3950332 () Bool)

(assert (=> b!3950332 (= e!2444893 call!285212)))

(declare-fun b!3950333 () Bool)

(declare-fun contains!8406 (List!42121 Rule!12944) Bool)

(assert (=> b!3950333 (= e!2444892 (contains!8406 (t!328482 rules!2768) (rule!9538 (_1!23773 (get!13862 lt!1380856)))))))

(declare-fun b!3950334 () Bool)

(declare-fun res!1598375 () Bool)

(assert (=> b!3950334 (=> (not res!1598375) (not e!2444892))))

(assert (=> b!3950334 (= res!1598375 (= (list!15598 (charsOf!4390 (_1!23773 (get!13862 lt!1380856)))) (originalCharacters!7172 (_1!23773 (get!13862 lt!1380856)))))))

(declare-fun b!3950335 () Bool)

(declare-fun res!1598371 () Bool)

(assert (=> b!3950335 (=> (not res!1598371) (not e!2444892))))

(declare-fun matchR!5514 (Regex!11477 List!42120) Bool)

(assert (=> b!3950335 (= res!1598371 (matchR!5514 (regex!6572 (rule!9538 (_1!23773 (get!13862 lt!1380856)))) (list!15598 (charsOf!4390 (_1!23773 (get!13862 lt!1380856))))))))

(declare-fun bm!285207 () Bool)

(assert (=> bm!285207 (= call!285212 (maxPrefixOneRule!2519 thiss!20629 (h!47417 (t!328482 rules!2768)) lt!1380768))))

(declare-fun b!3950337 () Bool)

(declare-fun res!1598374 () Bool)

(assert (=> b!3950337 (=> (not res!1598374) (not e!2444892))))

(assert (=> b!3950337 (= res!1598374 (= (++!10902 (list!15598 (charsOf!4390 (_1!23773 (get!13862 lt!1380856)))) (_2!23773 (get!13862 lt!1380856))) lt!1380768))))

(declare-fun b!3950338 () Bool)

(declare-fun e!2444894 () Bool)

(assert (=> b!3950338 (= e!2444894 e!2444892)))

(declare-fun res!1598372 () Bool)

(assert (=> b!3950338 (=> (not res!1598372) (not e!2444892))))

(declare-fun isDefined!6981 (Option!8992) Bool)

(assert (=> b!3950338 (= res!1598372 (isDefined!6981 lt!1380856))))

(declare-fun b!3950336 () Bool)

(declare-fun res!1598377 () Bool)

(assert (=> b!3950336 (=> (not res!1598377) (not e!2444892))))

(assert (=> b!3950336 (= res!1598377 (< (size!31475 (_2!23773 (get!13862 lt!1380856))) (size!31475 lt!1380768)))))

(declare-fun d!1171529 () Bool)

(assert (=> d!1171529 e!2444894))

(declare-fun res!1598376 () Bool)

(assert (=> d!1171529 (=> res!1598376 e!2444894)))

(declare-fun isEmpty!25084 (Option!8992) Bool)

(assert (=> d!1171529 (= res!1598376 (isEmpty!25084 lt!1380856))))

(assert (=> d!1171529 (= lt!1380856 e!2444893)))

(declare-fun c!685976 () Bool)

(assert (=> d!1171529 (= c!685976 (and ((_ is Cons!41997) (t!328482 rules!2768)) ((_ is Nil!41997) (t!328482 (t!328482 rules!2768)))))))

(declare-fun lt!1380857 () Unit!60514)

(declare-fun lt!1380854 () Unit!60514)

(assert (=> d!1171529 (= lt!1380857 lt!1380854)))

(assert (=> d!1171529 (isPrefix!3661 lt!1380768 lt!1380768)))

(assert (=> d!1171529 (= lt!1380854 (lemmaIsPrefixRefl!2312 lt!1380768 lt!1380768))))

(declare-fun rulesValidInductive!2382 (LexerInterface!6161 List!42121) Bool)

(assert (=> d!1171529 (rulesValidInductive!2382 thiss!20629 (t!328482 rules!2768))))

(assert (=> d!1171529 (= (maxPrefix!3465 thiss!20629 (t!328482 rules!2768) lt!1380768) lt!1380856)))

(assert (= (and d!1171529 c!685976) b!3950332))

(assert (= (and d!1171529 (not c!685976)) b!3950330))

(assert (= (or b!3950332 b!3950330) bm!285207))

(assert (= (and d!1171529 (not res!1598376)) b!3950338))

(assert (= (and b!3950338 res!1598372) b!3950334))

(assert (= (and b!3950334 res!1598375) b!3950336))

(assert (= (and b!3950336 res!1598377) b!3950337))

(assert (= (and b!3950337 res!1598374) b!3950331))

(assert (= (and b!3950331 res!1598373) b!3950335))

(assert (= (and b!3950335 res!1598371) b!3950333))

(declare-fun m!4519165 () Bool)

(assert (=> b!3950331 m!4519165))

(declare-fun m!4519167 () Bool)

(assert (=> b!3950331 m!4519167))

(assert (=> b!3950331 m!4519167))

(declare-fun m!4519169 () Bool)

(assert (=> b!3950331 m!4519169))

(assert (=> b!3950336 m!4519165))

(declare-fun m!4519171 () Bool)

(assert (=> b!3950336 m!4519171))

(assert (=> b!3950336 m!4519013))

(assert (=> b!3950337 m!4519165))

(declare-fun m!4519173 () Bool)

(assert (=> b!3950337 m!4519173))

(assert (=> b!3950337 m!4519173))

(declare-fun m!4519181 () Bool)

(assert (=> b!3950337 m!4519181))

(assert (=> b!3950337 m!4519181))

(declare-fun m!4519189 () Bool)

(assert (=> b!3950337 m!4519189))

(assert (=> b!3950334 m!4519165))

(assert (=> b!3950334 m!4519173))

(assert (=> b!3950334 m!4519173))

(assert (=> b!3950334 m!4519181))

(assert (=> b!3950335 m!4519165))

(assert (=> b!3950335 m!4519173))

(assert (=> b!3950335 m!4519173))

(assert (=> b!3950335 m!4519181))

(assert (=> b!3950335 m!4519181))

(declare-fun m!4519201 () Bool)

(assert (=> b!3950335 m!4519201))

(declare-fun m!4519203 () Bool)

(assert (=> b!3950330 m!4519203))

(declare-fun m!4519205 () Bool)

(assert (=> bm!285207 m!4519205))

(declare-fun m!4519207 () Bool)

(assert (=> d!1171529 m!4519207))

(assert (=> d!1171529 m!4518899))

(assert (=> d!1171529 m!4518901))

(declare-fun m!4519209 () Bool)

(assert (=> d!1171529 m!4519209))

(declare-fun m!4519211 () Bool)

(assert (=> b!3950338 m!4519211))

(assert (=> b!3950333 m!4519165))

(declare-fun m!4519213 () Bool)

(assert (=> b!3950333 m!4519213))

(assert (=> b!3950095 d!1171529))

(declare-fun d!1171577 () Bool)

(assert (=> d!1171577 (= (inv!56221 (tag!7432 (rule!9538 (h!47418 suffixTokens!72)))) (= (mod (str.len (value!207935 (tag!7432 (rule!9538 (h!47418 suffixTokens!72))))) 2) 0))))

(assert (=> b!3950116 d!1171577))

(declare-fun d!1171579 () Bool)

(declare-fun res!1598393 () Bool)

(declare-fun e!2444912 () Bool)

(assert (=> d!1171579 (=> (not res!1598393) (not e!2444912))))

(declare-fun semiInverseModEq!2835 (Int Int) Bool)

(assert (=> d!1171579 (= res!1598393 (semiInverseModEq!2835 (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))) (toValue!9048 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72))))))))

(assert (=> d!1171579 (= (inv!56224 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))) e!2444912)))

(declare-fun b!3950360 () Bool)

(declare-fun equivClasses!2734 (Int Int) Bool)

(assert (=> b!3950360 (= e!2444912 (equivClasses!2734 (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))) (toValue!9048 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72))))))))

(assert (= (and d!1171579 res!1598393) b!3950360))

(declare-fun m!4519219 () Bool)

(assert (=> d!1171579 m!4519219))

(declare-fun m!4519221 () Bool)

(assert (=> b!3950360 m!4519221))

(assert (=> b!3950116 d!1171579))

(declare-fun b!3950371 () Bool)

(declare-fun e!2444919 () Bool)

(declare-fun lt!1380871 () tuple2!41280)

(assert (=> b!3950371 (= e!2444919 (not (isEmpty!25081 (_1!23774 lt!1380871))))))

(declare-fun b!3950372 () Bool)

(declare-fun e!2444920 () Bool)

(assert (=> b!3950372 (= e!2444920 e!2444919)))

(declare-fun res!1598396 () Bool)

(assert (=> b!3950372 (= res!1598396 (< (size!31475 (_2!23774 lt!1380871)) (size!31475 (_2!23773 (v!39331 lt!1380770)))))))

(assert (=> b!3950372 (=> (not res!1598396) (not e!2444919))))

(declare-fun d!1171587 () Bool)

(assert (=> d!1171587 e!2444920))

(declare-fun c!685984 () Bool)

(assert (=> d!1171587 (= c!685984 (> (size!31477 (_1!23774 lt!1380871)) 0))))

(declare-fun e!2444921 () tuple2!41280)

(assert (=> d!1171587 (= lt!1380871 e!2444921)))

(declare-fun c!685983 () Bool)

(declare-fun lt!1380873 () Option!8992)

(assert (=> d!1171587 (= c!685983 ((_ is Some!8991) lt!1380873))))

(assert (=> d!1171587 (= lt!1380873 (maxPrefix!3465 thiss!20629 rules!2768 (_2!23773 (v!39331 lt!1380770))))))

(assert (=> d!1171587 (= (lexList!1929 thiss!20629 rules!2768 (_2!23773 (v!39331 lt!1380770))) lt!1380871)))

(declare-fun b!3950373 () Bool)

(assert (=> b!3950373 (= e!2444920 (= (_2!23774 lt!1380871) (_2!23773 (v!39331 lt!1380770))))))

(declare-fun b!3950374 () Bool)

(assert (=> b!3950374 (= e!2444921 (tuple2!41281 Nil!41998 (_2!23773 (v!39331 lt!1380770))))))

(declare-fun b!3950375 () Bool)

(declare-fun lt!1380872 () tuple2!41280)

(assert (=> b!3950375 (= e!2444921 (tuple2!41281 (Cons!41998 (_1!23773 (v!39331 lt!1380873)) (_1!23774 lt!1380872)) (_2!23774 lt!1380872)))))

(assert (=> b!3950375 (= lt!1380872 (lexList!1929 thiss!20629 rules!2768 (_2!23773 (v!39331 lt!1380873))))))

(assert (= (and d!1171587 c!685983) b!3950375))

(assert (= (and d!1171587 (not c!685983)) b!3950374))

(assert (= (and d!1171587 c!685984) b!3950372))

(assert (= (and d!1171587 (not c!685984)) b!3950373))

(assert (= (and b!3950372 res!1598396) b!3950371))

(declare-fun m!4519223 () Bool)

(assert (=> b!3950371 m!4519223))

(declare-fun m!4519225 () Bool)

(assert (=> b!3950372 m!4519225))

(declare-fun m!4519227 () Bool)

(assert (=> b!3950372 m!4519227))

(declare-fun m!4519229 () Bool)

(assert (=> d!1171587 m!4519229))

(declare-fun m!4519231 () Bool)

(assert (=> d!1171587 m!4519231))

(declare-fun m!4519233 () Bool)

(assert (=> b!3950375 m!4519233))

(assert (=> b!3950115 d!1171587))

(declare-fun d!1171589 () Bool)

(assert (=> d!1171589 (isPrefix!3661 lt!1380761 (++!10902 lt!1380761 (_2!23773 (v!39331 lt!1380770))))))

(declare-fun lt!1380876 () Unit!60514)

(declare-fun choose!23578 (List!42120 List!42120) Unit!60514)

(assert (=> d!1171589 (= lt!1380876 (choose!23578 lt!1380761 (_2!23773 (v!39331 lt!1380770))))))

(assert (=> d!1171589 (= (lemmaConcatTwoListThenFirstIsPrefix!2520 lt!1380761 (_2!23773 (v!39331 lt!1380770))) lt!1380876)))

(declare-fun bs!587008 () Bool)

(assert (= bs!587008 d!1171589))

(assert (=> bs!587008 m!4518943))

(assert (=> bs!587008 m!4518943))

(declare-fun m!4519235 () Bool)

(assert (=> bs!587008 m!4519235))

(declare-fun m!4519237 () Bool)

(assert (=> bs!587008 m!4519237))

(assert (=> b!3950115 d!1171589))

(declare-fun d!1171591 () Bool)

(declare-fun fromListB!2236 (List!42120) BalanceConc!25160)

(assert (=> d!1171591 (= (seqFromList!4831 lt!1380761) (fromListB!2236 lt!1380761))))

(declare-fun bs!587009 () Bool)

(assert (= bs!587009 d!1171591))

(declare-fun m!4519239 () Bool)

(assert (=> bs!587009 m!4519239))

(assert (=> b!3950115 d!1171591))

(declare-fun d!1171593 () Bool)

(declare-fun list!15600 (Conc!12783) List!42120)

(assert (=> d!1171593 (= (list!15598 (charsOf!4390 (_1!23773 (v!39331 lt!1380770)))) (list!15600 (c!685923 (charsOf!4390 (_1!23773 (v!39331 lt!1380770))))))))

(declare-fun bs!587010 () Bool)

(assert (= bs!587010 d!1171593))

(declare-fun m!4519241 () Bool)

(assert (=> bs!587010 m!4519241))

(assert (=> b!3950115 d!1171593))

(declare-fun d!1171595 () Bool)

(assert (=> d!1171595 (= (size!31474 (_1!23773 (v!39331 lt!1380770))) (size!31475 (originalCharacters!7172 (_1!23773 (v!39331 lt!1380770)))))))

(declare-fun Unit!60516 () Unit!60514)

(assert (=> d!1171595 (= (lemmaCharactersSize!1225 (_1!23773 (v!39331 lt!1380770))) Unit!60516)))

(declare-fun bs!587011 () Bool)

(assert (= bs!587011 d!1171595))

(assert (=> bs!587011 m!4518921))

(assert (=> b!3950115 d!1171595))

(declare-fun d!1171597 () Bool)

(declare-fun lt!1380889 () List!42120)

(assert (=> d!1171597 (= (++!10902 lt!1380761 lt!1380889) lt!1380768)))

(declare-fun e!2444932 () List!42120)

(assert (=> d!1171597 (= lt!1380889 e!2444932)))

(declare-fun c!685989 () Bool)

(assert (=> d!1171597 (= c!685989 ((_ is Cons!41996) lt!1380761))))

(assert (=> d!1171597 (>= (size!31475 lt!1380768) (size!31475 lt!1380761))))

(assert (=> d!1171597 (= (getSuffix!2112 lt!1380768 lt!1380761) lt!1380889)))

(declare-fun b!3950398 () Bool)

(assert (=> b!3950398 (= e!2444932 (getSuffix!2112 (tail!6118 lt!1380768) (t!328481 lt!1380761)))))

(declare-fun b!3950399 () Bool)

(assert (=> b!3950399 (= e!2444932 lt!1380768)))

(assert (= (and d!1171597 c!685989) b!3950398))

(assert (= (and d!1171597 (not c!685989)) b!3950399))

(declare-fun m!4519243 () Bool)

(assert (=> d!1171597 m!4519243))

(assert (=> d!1171597 m!4519013))

(assert (=> d!1171597 m!4518945))

(assert (=> b!3950398 m!4519009))

(assert (=> b!3950398 m!4519009))

(declare-fun m!4519245 () Bool)

(assert (=> b!3950398 m!4519245))

(assert (=> b!3950115 d!1171597))

(declare-fun d!1171599 () Bool)

(assert (=> d!1171599 (ruleValid!2514 thiss!20629 (rule!9538 (_1!23773 (v!39331 lt!1380770))))))

(declare-fun lt!1380892 () Unit!60514)

(declare-fun choose!23579 (LexerInterface!6161 Rule!12944 List!42121) Unit!60514)

(assert (=> d!1171599 (= lt!1380892 (choose!23579 thiss!20629 (rule!9538 (_1!23773 (v!39331 lt!1380770))) rules!2768))))

(assert (=> d!1171599 (contains!8406 rules!2768 (rule!9538 (_1!23773 (v!39331 lt!1380770))))))

(assert (=> d!1171599 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1590 thiss!20629 (rule!9538 (_1!23773 (v!39331 lt!1380770))) rules!2768) lt!1380892)))

(declare-fun bs!587012 () Bool)

(assert (= bs!587012 d!1171599))

(assert (=> bs!587012 m!4518939))

(declare-fun m!4519247 () Bool)

(assert (=> bs!587012 m!4519247))

(declare-fun m!4519249 () Bool)

(assert (=> bs!587012 m!4519249))

(assert (=> b!3950115 d!1171599))

(declare-fun d!1171601 () Bool)

(declare-fun e!2444935 () Bool)

(assert (=> d!1171601 e!2444935))

(declare-fun res!1598414 () Bool)

(assert (=> d!1171601 (=> res!1598414 e!2444935)))

(declare-fun lt!1380893 () Bool)

(assert (=> d!1171601 (= res!1598414 (not lt!1380893))))

(declare-fun e!2444934 () Bool)

(assert (=> d!1171601 (= lt!1380893 e!2444934)))

(declare-fun res!1598412 () Bool)

(assert (=> d!1171601 (=> res!1598412 e!2444934)))

(assert (=> d!1171601 (= res!1598412 ((_ is Nil!41996) lt!1380761))))

(assert (=> d!1171601 (= (isPrefix!3661 lt!1380761 lt!1380764) lt!1380893)))

(declare-fun b!3950402 () Bool)

(declare-fun e!2444933 () Bool)

(assert (=> b!3950402 (= e!2444933 (isPrefix!3661 (tail!6118 lt!1380761) (tail!6118 lt!1380764)))))

(declare-fun b!3950403 () Bool)

(assert (=> b!3950403 (= e!2444935 (>= (size!31475 lt!1380764) (size!31475 lt!1380761)))))

(declare-fun b!3950401 () Bool)

(declare-fun res!1598411 () Bool)

(assert (=> b!3950401 (=> (not res!1598411) (not e!2444933))))

(assert (=> b!3950401 (= res!1598411 (= (head!8392 lt!1380761) (head!8392 lt!1380764)))))

(declare-fun b!3950400 () Bool)

(assert (=> b!3950400 (= e!2444934 e!2444933)))

(declare-fun res!1598413 () Bool)

(assert (=> b!3950400 (=> (not res!1598413) (not e!2444933))))

(assert (=> b!3950400 (= res!1598413 (not ((_ is Nil!41996) lt!1380764)))))

(assert (= (and d!1171601 (not res!1598412)) b!3950400))

(assert (= (and b!3950400 res!1598413) b!3950401))

(assert (= (and b!3950401 res!1598411) b!3950402))

(assert (= (and d!1171601 (not res!1598414)) b!3950403))

(declare-fun m!4519251 () Bool)

(assert (=> b!3950402 m!4519251))

(declare-fun m!4519253 () Bool)

(assert (=> b!3950402 m!4519253))

(assert (=> b!3950402 m!4519251))

(assert (=> b!3950402 m!4519253))

(declare-fun m!4519255 () Bool)

(assert (=> b!3950402 m!4519255))

(declare-fun m!4519257 () Bool)

(assert (=> b!3950403 m!4519257))

(assert (=> b!3950403 m!4518945))

(declare-fun m!4519259 () Bool)

(assert (=> b!3950401 m!4519259))

(declare-fun m!4519261 () Bool)

(assert (=> b!3950401 m!4519261))

(assert (=> b!3950115 d!1171601))

(declare-fun d!1171603 () Bool)

(declare-fun dynLambda!17986 (Int BalanceConc!25160) TokenValue!6802)

(assert (=> d!1171603 (= (apply!9803 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))) (seqFromList!4831 lt!1380761)) (dynLambda!17986 (toValue!9048 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770))))) (seqFromList!4831 lt!1380761)))))

(declare-fun b_lambda!115563 () Bool)

(assert (=> (not b_lambda!115563) (not d!1171603)))

(declare-fun t!328501 () Bool)

(declare-fun tb!237645 () Bool)

(assert (=> (and b!3950104 (= (toValue!9048 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))) (toValue!9048 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))))) t!328501) tb!237645))

(declare-fun result!287814 () Bool)

(assert (=> tb!237645 (= result!287814 (inv!21 (dynLambda!17986 (toValue!9048 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770))))) (seqFromList!4831 lt!1380761))))))

(declare-fun m!4519263 () Bool)

(assert (=> tb!237645 m!4519263))

(assert (=> d!1171603 t!328501))

(declare-fun b_and!302603 () Bool)

(assert (= b_and!302571 (and (=> t!328501 result!287814) b_and!302603)))

(declare-fun tb!237647 () Bool)

(declare-fun t!328503 () Bool)

(assert (=> (and b!3950114 (= (toValue!9048 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))) (toValue!9048 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))))) t!328503) tb!237647))

(declare-fun result!287818 () Bool)

(assert (= result!287818 result!287814))

(assert (=> d!1171603 t!328503))

(declare-fun b_and!302605 () Bool)

(assert (= b_and!302575 (and (=> t!328503 result!287818) b_and!302605)))

(declare-fun t!328505 () Bool)

(declare-fun tb!237649 () Bool)

(assert (=> (and b!3950108 (= (toValue!9048 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))) (toValue!9048 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))))) t!328505) tb!237649))

(declare-fun result!287820 () Bool)

(assert (= result!287820 result!287814))

(assert (=> d!1171603 t!328505))

(declare-fun b_and!302607 () Bool)

(assert (= b_and!302579 (and (=> t!328505 result!287820) b_and!302607)))

(declare-fun tb!237651 () Bool)

(declare-fun t!328507 () Bool)

(assert (=> (and b!3950128 (= (toValue!9048 (transformation!6572 (h!47417 rules!2768))) (toValue!9048 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))))) t!328507) tb!237651))

(declare-fun result!287822 () Bool)

(assert (= result!287822 result!287814))

(assert (=> d!1171603 t!328507))

(declare-fun b_and!302609 () Bool)

(assert (= b_and!302583 (and (=> t!328507 result!287822) b_and!302609)))

(assert (=> d!1171603 m!4518947))

(declare-fun m!4519265 () Bool)

(assert (=> d!1171603 m!4519265))

(assert (=> b!3950115 d!1171603))

(declare-fun d!1171605 () Bool)

(assert (=> d!1171605 (= (_2!23773 (v!39331 lt!1380770)) lt!1380760)))

(declare-fun lt!1380901 () Unit!60514)

(declare-fun choose!23580 (List!42120 List!42120 List!42120 List!42120 List!42120) Unit!60514)

(assert (=> d!1171605 (= lt!1380901 (choose!23580 lt!1380761 (_2!23773 (v!39331 lt!1380770)) lt!1380761 lt!1380760 lt!1380768))))

(assert (=> d!1171605 (isPrefix!3661 lt!1380761 lt!1380768)))

(assert (=> d!1171605 (= (lemmaSamePrefixThenSameSuffix!1870 lt!1380761 (_2!23773 (v!39331 lt!1380770)) lt!1380761 lt!1380760 lt!1380768) lt!1380901)))

(declare-fun bs!587013 () Bool)

(assert (= bs!587013 d!1171605))

(declare-fun m!4519311 () Bool)

(assert (=> bs!587013 m!4519311))

(declare-fun m!4519313 () Bool)

(assert (=> bs!587013 m!4519313))

(assert (=> b!3950115 d!1171605))

(declare-fun d!1171609 () Bool)

(declare-fun lt!1380904 () BalanceConc!25160)

(assert (=> d!1171609 (= (list!15598 lt!1380904) (originalCharacters!7172 (_1!23773 (v!39331 lt!1380770))))))

(declare-fun dynLambda!17987 (Int TokenValue!6802) BalanceConc!25160)

(assert (=> d!1171609 (= lt!1380904 (dynLambda!17987 (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770))))) (value!207936 (_1!23773 (v!39331 lt!1380770)))))))

(assert (=> d!1171609 (= (charsOf!4390 (_1!23773 (v!39331 lt!1380770))) lt!1380904)))

(declare-fun b_lambda!115565 () Bool)

(assert (=> (not b_lambda!115565) (not d!1171609)))

(declare-fun tb!237653 () Bool)

(declare-fun t!328509 () Bool)

(assert (=> (and b!3950104 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))))) t!328509) tb!237653))

(declare-fun b!3950425 () Bool)

(declare-fun e!2444948 () Bool)

(declare-fun tp!1203214 () Bool)

(declare-fun inv!56228 (Conc!12783) Bool)

(assert (=> b!3950425 (= e!2444948 (and (inv!56228 (c!685923 (dynLambda!17987 (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770))))) (value!207936 (_1!23773 (v!39331 lt!1380770)))))) tp!1203214))))

(declare-fun result!287824 () Bool)

(declare-fun inv!56229 (BalanceConc!25160) Bool)

(assert (=> tb!237653 (= result!287824 (and (inv!56229 (dynLambda!17987 (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770))))) (value!207936 (_1!23773 (v!39331 lt!1380770))))) e!2444948))))

(assert (= tb!237653 b!3950425))

(declare-fun m!4519315 () Bool)

(assert (=> b!3950425 m!4519315))

(declare-fun m!4519317 () Bool)

(assert (=> tb!237653 m!4519317))

(assert (=> d!1171609 t!328509))

(declare-fun b_and!302611 () Bool)

(assert (= b_and!302573 (and (=> t!328509 result!287824) b_and!302611)))

(declare-fun t!328513 () Bool)

(declare-fun tb!237657 () Bool)

(assert (=> (and b!3950114 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))))) t!328513) tb!237657))

(declare-fun result!287830 () Bool)

(assert (= result!287830 result!287824))

(assert (=> d!1171609 t!328513))

(declare-fun b_and!302613 () Bool)

(assert (= b_and!302577 (and (=> t!328513 result!287830) b_and!302613)))

(declare-fun t!328515 () Bool)

(declare-fun tb!237659 () Bool)

(assert (=> (and b!3950108 (= (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))))) t!328515) tb!237659))

(declare-fun result!287832 () Bool)

(assert (= result!287832 result!287824))

(assert (=> d!1171609 t!328515))

(declare-fun b_and!302615 () Bool)

(assert (= b_and!302581 (and (=> t!328515 result!287832) b_and!302615)))

(declare-fun t!328517 () Bool)

(declare-fun tb!237661 () Bool)

(assert (=> (and b!3950128 (= (toChars!8907 (transformation!6572 (h!47417 rules!2768))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))))) t!328517) tb!237661))

(declare-fun result!287834 () Bool)

(assert (= result!287834 result!287824))

(assert (=> d!1171609 t!328517))

(declare-fun b_and!302619 () Bool)

(assert (= b_and!302585 (and (=> t!328517 result!287834) b_and!302619)))

(declare-fun m!4519323 () Bool)

(assert (=> d!1171609 m!4519323))

(declare-fun m!4519325 () Bool)

(assert (=> d!1171609 m!4519325))

(assert (=> b!3950115 d!1171609))

(declare-fun d!1171611 () Bool)

(declare-fun lt!1380905 () Int)

(assert (=> d!1171611 (>= lt!1380905 0)))

(declare-fun e!2444950 () Int)

(assert (=> d!1171611 (= lt!1380905 e!2444950)))

(declare-fun c!685991 () Bool)

(assert (=> d!1171611 (= c!685991 ((_ is Nil!41996) lt!1380761))))

(assert (=> d!1171611 (= (size!31475 lt!1380761) lt!1380905)))

(declare-fun b!3950427 () Bool)

(assert (=> b!3950427 (= e!2444950 0)))

(declare-fun b!3950428 () Bool)

(assert (=> b!3950428 (= e!2444950 (+ 1 (size!31475 (t!328481 lt!1380761))))))

(assert (= (and d!1171611 c!685991) b!3950427))

(assert (= (and d!1171611 (not c!685991)) b!3950428))

(declare-fun m!4519333 () Bool)

(assert (=> b!3950428 m!4519333))

(assert (=> b!3950115 d!1171611))

(declare-fun d!1171613 () Bool)

(declare-fun res!1598442 () Bool)

(declare-fun e!2444959 () Bool)

(assert (=> d!1171613 (=> (not res!1598442) (not e!2444959))))

(declare-fun validRegex!5230 (Regex!11477) Bool)

(assert (=> d!1171613 (= res!1598442 (validRegex!5230 (regex!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770))))))))

(assert (=> d!1171613 (= (ruleValid!2514 thiss!20629 (rule!9538 (_1!23773 (v!39331 lt!1380770)))) e!2444959)))

(declare-fun b!3950445 () Bool)

(declare-fun res!1598443 () Bool)

(assert (=> b!3950445 (=> (not res!1598443) (not e!2444959))))

(declare-fun nullable!4031 (Regex!11477) Bool)

(assert (=> b!3950445 (= res!1598443 (not (nullable!4031 (regex!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))))))))

(declare-fun b!3950446 () Bool)

(assert (=> b!3950446 (= e!2444959 (not (= (tag!7432 (rule!9538 (_1!23773 (v!39331 lt!1380770)))) (String!47729 ""))))))

(assert (= (and d!1171613 res!1598442) b!3950445))

(assert (= (and b!3950445 res!1598443) b!3950446))

(declare-fun m!4519349 () Bool)

(assert (=> d!1171613 m!4519349))

(declare-fun m!4519351 () Bool)

(assert (=> b!3950445 m!4519351))

(assert (=> b!3950115 d!1171613))

(declare-fun e!2444969 () Bool)

(declare-fun lt!1380913 () List!42120)

(declare-fun b!3950464 () Bool)

(assert (=> b!3950464 (= e!2444969 (or (not (= (_2!23773 (v!39331 lt!1380770)) Nil!41996)) (= lt!1380913 lt!1380761)))))

(declare-fun b!3950463 () Bool)

(declare-fun res!1598452 () Bool)

(assert (=> b!3950463 (=> (not res!1598452) (not e!2444969))))

(assert (=> b!3950463 (= res!1598452 (= (size!31475 lt!1380913) (+ (size!31475 lt!1380761) (size!31475 (_2!23773 (v!39331 lt!1380770))))))))

(declare-fun b!3950462 () Bool)

(declare-fun e!2444968 () List!42120)

(assert (=> b!3950462 (= e!2444968 (Cons!41996 (h!47416 lt!1380761) (++!10902 (t!328481 lt!1380761) (_2!23773 (v!39331 lt!1380770)))))))

(declare-fun d!1171631 () Bool)

(assert (=> d!1171631 e!2444969))

(declare-fun res!1598453 () Bool)

(assert (=> d!1171631 (=> (not res!1598453) (not e!2444969))))

(declare-fun content!6369 (List!42120) (InoxSet C!23140))

(assert (=> d!1171631 (= res!1598453 (= (content!6369 lt!1380913) ((_ map or) (content!6369 lt!1380761) (content!6369 (_2!23773 (v!39331 lt!1380770))))))))

(assert (=> d!1171631 (= lt!1380913 e!2444968)))

(declare-fun c!685995 () Bool)

(assert (=> d!1171631 (= c!685995 ((_ is Nil!41996) lt!1380761))))

(assert (=> d!1171631 (= (++!10902 lt!1380761 (_2!23773 (v!39331 lt!1380770))) lt!1380913)))

(declare-fun b!3950461 () Bool)

(assert (=> b!3950461 (= e!2444968 (_2!23773 (v!39331 lt!1380770)))))

(assert (= (and d!1171631 c!685995) b!3950461))

(assert (= (and d!1171631 (not c!685995)) b!3950462))

(assert (= (and d!1171631 res!1598453) b!3950463))

(assert (= (and b!3950463 res!1598452) b!3950464))

(declare-fun m!4519401 () Bool)

(assert (=> b!3950463 m!4519401))

(assert (=> b!3950463 m!4518945))

(assert (=> b!3950463 m!4519227))

(declare-fun m!4519403 () Bool)

(assert (=> b!3950462 m!4519403))

(declare-fun m!4519405 () Bool)

(assert (=> d!1171631 m!4519405))

(declare-fun m!4519407 () Bool)

(assert (=> d!1171631 m!4519407))

(declare-fun m!4519409 () Bool)

(assert (=> d!1171631 m!4519409))

(assert (=> b!3950115 d!1171631))

(declare-fun b!3950556 () Bool)

(declare-fun res!1598476 () Bool)

(declare-fun e!2445036 () Bool)

(assert (=> b!3950556 (=> (not res!1598476) (not e!2445036))))

(declare-fun lt!1380928 () Option!8992)

(assert (=> b!3950556 (= res!1598476 (= (rule!9538 (_1!23773 (get!13862 lt!1380928))) (h!47417 rules!2768)))))

(declare-fun b!3950557 () Bool)

(declare-fun res!1598479 () Bool)

(assert (=> b!3950557 (=> (not res!1598479) (not e!2445036))))

(assert (=> b!3950557 (= res!1598479 (< (size!31475 (_2!23773 (get!13862 lt!1380928))) (size!31475 lt!1380768)))))

(declare-fun b!3950558 () Bool)

(assert (=> b!3950558 (= e!2445036 (= (size!31474 (_1!23773 (get!13862 lt!1380928))) (size!31475 (originalCharacters!7172 (_1!23773 (get!13862 lt!1380928))))))))

(declare-fun b!3950559 () Bool)

(declare-fun res!1598478 () Bool)

(assert (=> b!3950559 (=> (not res!1598478) (not e!2445036))))

(assert (=> b!3950559 (= res!1598478 (= (++!10902 (list!15598 (charsOf!4390 (_1!23773 (get!13862 lt!1380928)))) (_2!23773 (get!13862 lt!1380928))) lt!1380768))))

(declare-fun b!3950561 () Bool)

(declare-fun e!2445038 () Bool)

(declare-datatypes ((tuple2!41284 0))(
  ( (tuple2!41285 (_1!23776 List!42120) (_2!23776 List!42120)) )
))
(declare-fun findLongestMatchInner!1282 (Regex!11477 List!42120 Int List!42120 List!42120 Int) tuple2!41284)

(assert (=> b!3950561 (= e!2445038 (matchR!5514 (regex!6572 (h!47417 rules!2768)) (_1!23776 (findLongestMatchInner!1282 (regex!6572 (h!47417 rules!2768)) Nil!41996 (size!31475 Nil!41996) lt!1380768 lt!1380768 (size!31475 lt!1380768)))))))

(declare-fun b!3950562 () Bool)

(declare-fun e!2445035 () Bool)

(assert (=> b!3950562 (= e!2445035 e!2445036)))

(declare-fun res!1598477 () Bool)

(assert (=> b!3950562 (=> (not res!1598477) (not e!2445036))))

(assert (=> b!3950562 (= res!1598477 (matchR!5514 (regex!6572 (h!47417 rules!2768)) (list!15598 (charsOf!4390 (_1!23773 (get!13862 lt!1380928))))))))

(declare-fun b!3950563 () Bool)

(declare-fun e!2445037 () Option!8992)

(declare-fun lt!1380929 () tuple2!41284)

(declare-fun size!31479 (BalanceConc!25160) Int)

(assert (=> b!3950563 (= e!2445037 (Some!8991 (tuple2!41279 (Token!12283 (apply!9803 (transformation!6572 (h!47417 rules!2768)) (seqFromList!4831 (_1!23776 lt!1380929))) (h!47417 rules!2768) (size!31479 (seqFromList!4831 (_1!23776 lt!1380929))) (_1!23776 lt!1380929)) (_2!23776 lt!1380929))))))

(declare-fun lt!1380931 () Unit!60514)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1255 (Regex!11477 List!42120) Unit!60514)

(assert (=> b!3950563 (= lt!1380931 (longestMatchIsAcceptedByMatchOrIsEmpty!1255 (regex!6572 (h!47417 rules!2768)) lt!1380768))))

(declare-fun res!1598480 () Bool)

(assert (=> b!3950563 (= res!1598480 (isEmpty!25082 (_1!23776 (findLongestMatchInner!1282 (regex!6572 (h!47417 rules!2768)) Nil!41996 (size!31475 Nil!41996) lt!1380768 lt!1380768 (size!31475 lt!1380768)))))))

(assert (=> b!3950563 (=> res!1598480 e!2445038)))

(assert (=> b!3950563 e!2445038))

(declare-fun lt!1380930 () Unit!60514)

(assert (=> b!3950563 (= lt!1380930 lt!1380931)))

(declare-fun lt!1380932 () Unit!60514)

(declare-fun lemmaSemiInverse!1788 (TokenValueInjection!13032 BalanceConc!25160) Unit!60514)

(assert (=> b!3950563 (= lt!1380932 (lemmaSemiInverse!1788 (transformation!6572 (h!47417 rules!2768)) (seqFromList!4831 (_1!23776 lt!1380929))))))

(declare-fun b!3950564 () Bool)

(declare-fun res!1598481 () Bool)

(assert (=> b!3950564 (=> (not res!1598481) (not e!2445036))))

(assert (=> b!3950564 (= res!1598481 (= (value!207936 (_1!23773 (get!13862 lt!1380928))) (apply!9803 (transformation!6572 (rule!9538 (_1!23773 (get!13862 lt!1380928)))) (seqFromList!4831 (originalCharacters!7172 (_1!23773 (get!13862 lt!1380928)))))))))

(declare-fun b!3950560 () Bool)

(assert (=> b!3950560 (= e!2445037 None!8991)))

(declare-fun d!1171639 () Bool)

(assert (=> d!1171639 e!2445035))

(declare-fun res!1598475 () Bool)

(assert (=> d!1171639 (=> res!1598475 e!2445035)))

(assert (=> d!1171639 (= res!1598475 (isEmpty!25084 lt!1380928))))

(assert (=> d!1171639 (= lt!1380928 e!2445037)))

(declare-fun c!685998 () Bool)

(assert (=> d!1171639 (= c!685998 (isEmpty!25082 (_1!23776 lt!1380929)))))

(declare-fun findLongestMatch!1195 (Regex!11477 List!42120) tuple2!41284)

(assert (=> d!1171639 (= lt!1380929 (findLongestMatch!1195 (regex!6572 (h!47417 rules!2768)) lt!1380768))))

(assert (=> d!1171639 (ruleValid!2514 thiss!20629 (h!47417 rules!2768))))

(assert (=> d!1171639 (= (maxPrefixOneRule!2519 thiss!20629 (h!47417 rules!2768) lt!1380768) lt!1380928)))

(assert (= (and d!1171639 c!685998) b!3950560))

(assert (= (and d!1171639 (not c!685998)) b!3950563))

(assert (= (and b!3950563 (not res!1598480)) b!3950561))

(assert (= (and d!1171639 (not res!1598475)) b!3950562))

(assert (= (and b!3950562 res!1598477) b!3950559))

(assert (= (and b!3950559 res!1598478) b!3950557))

(assert (= (and b!3950557 res!1598479) b!3950556))

(assert (= (and b!3950556 res!1598476) b!3950564))

(assert (= (and b!3950564 res!1598481) b!3950558))

(declare-fun m!4519441 () Bool)

(assert (=> b!3950558 m!4519441))

(declare-fun m!4519443 () Bool)

(assert (=> b!3950558 m!4519443))

(declare-fun m!4519445 () Bool)

(assert (=> d!1171639 m!4519445))

(declare-fun m!4519447 () Bool)

(assert (=> d!1171639 m!4519447))

(declare-fun m!4519449 () Bool)

(assert (=> d!1171639 m!4519449))

(declare-fun m!4519451 () Bool)

(assert (=> d!1171639 m!4519451))

(assert (=> b!3950562 m!4519441))

(declare-fun m!4519453 () Bool)

(assert (=> b!3950562 m!4519453))

(assert (=> b!3950562 m!4519453))

(declare-fun m!4519455 () Bool)

(assert (=> b!3950562 m!4519455))

(assert (=> b!3950562 m!4519455))

(declare-fun m!4519457 () Bool)

(assert (=> b!3950562 m!4519457))

(declare-fun m!4519459 () Bool)

(assert (=> b!3950563 m!4519459))

(declare-fun m!4519461 () Bool)

(assert (=> b!3950563 m!4519461))

(assert (=> b!3950563 m!4519459))

(assert (=> b!3950563 m!4519459))

(declare-fun m!4519463 () Bool)

(assert (=> b!3950563 m!4519463))

(declare-fun m!4519465 () Bool)

(assert (=> b!3950563 m!4519465))

(assert (=> b!3950563 m!4519459))

(declare-fun m!4519467 () Bool)

(assert (=> b!3950563 m!4519467))

(declare-fun m!4519469 () Bool)

(assert (=> b!3950563 m!4519469))

(assert (=> b!3950563 m!4519013))

(declare-fun m!4519471 () Bool)

(assert (=> b!3950563 m!4519471))

(assert (=> b!3950563 m!4519471))

(assert (=> b!3950563 m!4519013))

(declare-fun m!4519473 () Bool)

(assert (=> b!3950563 m!4519473))

(assert (=> b!3950559 m!4519441))

(assert (=> b!3950559 m!4519453))

(assert (=> b!3950559 m!4519453))

(assert (=> b!3950559 m!4519455))

(assert (=> b!3950559 m!4519455))

(declare-fun m!4519475 () Bool)

(assert (=> b!3950559 m!4519475))

(assert (=> b!3950557 m!4519441))

(declare-fun m!4519477 () Bool)

(assert (=> b!3950557 m!4519477))

(assert (=> b!3950557 m!4519013))

(assert (=> b!3950561 m!4519471))

(assert (=> b!3950561 m!4519013))

(assert (=> b!3950561 m!4519471))

(assert (=> b!3950561 m!4519013))

(assert (=> b!3950561 m!4519473))

(declare-fun m!4519479 () Bool)

(assert (=> b!3950561 m!4519479))

(assert (=> b!3950564 m!4519441))

(declare-fun m!4519481 () Bool)

(assert (=> b!3950564 m!4519481))

(assert (=> b!3950564 m!4519481))

(declare-fun m!4519483 () Bool)

(assert (=> b!3950564 m!4519483))

(assert (=> b!3950556 m!4519441))

(assert (=> bm!285201 d!1171639))

(declare-fun d!1171645 () Bool)

(declare-fun res!1598486 () Bool)

(declare-fun e!2445041 () Bool)

(assert (=> d!1171645 (=> (not res!1598486) (not e!2445041))))

(assert (=> d!1171645 (= res!1598486 (not (isEmpty!25082 (originalCharacters!7172 (h!47418 suffixTokens!72)))))))

(assert (=> d!1171645 (= (inv!56225 (h!47418 suffixTokens!72)) e!2445041)))

(declare-fun b!3950569 () Bool)

(declare-fun res!1598487 () Bool)

(assert (=> b!3950569 (=> (not res!1598487) (not e!2445041))))

(assert (=> b!3950569 (= res!1598487 (= (originalCharacters!7172 (h!47418 suffixTokens!72)) (list!15598 (dynLambda!17987 (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))) (value!207936 (h!47418 suffixTokens!72))))))))

(declare-fun b!3950570 () Bool)

(assert (=> b!3950570 (= e!2445041 (= (size!31474 (h!47418 suffixTokens!72)) (size!31475 (originalCharacters!7172 (h!47418 suffixTokens!72)))))))

(assert (= (and d!1171645 res!1598486) b!3950569))

(assert (= (and b!3950569 res!1598487) b!3950570))

(declare-fun b_lambda!115579 () Bool)

(assert (=> (not b_lambda!115579) (not b!3950569)))

(declare-fun tb!237715 () Bool)

(declare-fun t!328571 () Bool)

(assert (=> (and b!3950104 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72))))) t!328571) tb!237715))

(declare-fun b!3950571 () Bool)

(declare-fun e!2445042 () Bool)

(declare-fun tp!1203289 () Bool)

(assert (=> b!3950571 (= e!2445042 (and (inv!56228 (c!685923 (dynLambda!17987 (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))) (value!207936 (h!47418 suffixTokens!72))))) tp!1203289))))

(declare-fun result!287896 () Bool)

(assert (=> tb!237715 (= result!287896 (and (inv!56229 (dynLambda!17987 (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))) (value!207936 (h!47418 suffixTokens!72)))) e!2445042))))

(assert (= tb!237715 b!3950571))

(declare-fun m!4519485 () Bool)

(assert (=> b!3950571 m!4519485))

(declare-fun m!4519487 () Bool)

(assert (=> tb!237715 m!4519487))

(assert (=> b!3950569 t!328571))

(declare-fun b_and!302655 () Bool)

(assert (= b_and!302611 (and (=> t!328571 result!287896) b_and!302655)))

(declare-fun t!328573 () Bool)

(declare-fun tb!237717 () Bool)

(assert (=> (and b!3950114 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72))))) t!328573) tb!237717))

(declare-fun result!287898 () Bool)

(assert (= result!287898 result!287896))

(assert (=> b!3950569 t!328573))

(declare-fun b_and!302657 () Bool)

(assert (= b_and!302613 (and (=> t!328573 result!287898) b_and!302657)))

(declare-fun tb!237719 () Bool)

(declare-fun t!328575 () Bool)

(assert (=> (and b!3950108 (= (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72))))) t!328575) tb!237719))

(declare-fun result!287900 () Bool)

(assert (= result!287900 result!287896))

(assert (=> b!3950569 t!328575))

(declare-fun b_and!302659 () Bool)

(assert (= b_and!302615 (and (=> t!328575 result!287900) b_and!302659)))

(declare-fun tb!237721 () Bool)

(declare-fun t!328577 () Bool)

(assert (=> (and b!3950128 (= (toChars!8907 (transformation!6572 (h!47417 rules!2768))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72))))) t!328577) tb!237721))

(declare-fun result!287902 () Bool)

(assert (= result!287902 result!287896))

(assert (=> b!3950569 t!328577))

(declare-fun b_and!302661 () Bool)

(assert (= b_and!302619 (and (=> t!328577 result!287902) b_and!302661)))

(declare-fun m!4519489 () Bool)

(assert (=> d!1171645 m!4519489))

(declare-fun m!4519491 () Bool)

(assert (=> b!3950569 m!4519491))

(assert (=> b!3950569 m!4519491))

(declare-fun m!4519493 () Bool)

(assert (=> b!3950569 m!4519493))

(declare-fun m!4519495 () Bool)

(assert (=> b!3950570 m!4519495))

(assert (=> b!3950118 d!1171645))

(declare-fun d!1171647 () Bool)

(assert (=> d!1171647 (= (inv!56221 (tag!7432 (rule!9538 (h!47418 prefixTokens!80)))) (= (mod (str.len (value!207935 (tag!7432 (rule!9538 (h!47418 prefixTokens!80))))) 2) 0))))

(assert (=> b!3950119 d!1171647))

(declare-fun d!1171649 () Bool)

(declare-fun res!1598488 () Bool)

(declare-fun e!2445043 () Bool)

(assert (=> d!1171649 (=> (not res!1598488) (not e!2445043))))

(assert (=> d!1171649 (= res!1598488 (semiInverseModEq!2835 (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))) (toValue!9048 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80))))))))

(assert (=> d!1171649 (= (inv!56224 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))) e!2445043)))

(declare-fun b!3950572 () Bool)

(assert (=> b!3950572 (= e!2445043 (equivClasses!2734 (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))) (toValue!9048 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80))))))))

(assert (= (and d!1171649 res!1598488) b!3950572))

(declare-fun m!4519497 () Bool)

(assert (=> d!1171649 m!4519497))

(declare-fun m!4519499 () Bool)

(assert (=> b!3950572 m!4519499))

(assert (=> b!3950119 d!1171649))

(declare-fun d!1171651 () Bool)

(declare-fun res!1598489 () Bool)

(declare-fun e!2445044 () Bool)

(assert (=> d!1171651 (=> (not res!1598489) (not e!2445044))))

(assert (=> d!1171651 (= res!1598489 (not (isEmpty!25082 (originalCharacters!7172 (h!47418 prefixTokens!80)))))))

(assert (=> d!1171651 (= (inv!56225 (h!47418 prefixTokens!80)) e!2445044)))

(declare-fun b!3950573 () Bool)

(declare-fun res!1598490 () Bool)

(assert (=> b!3950573 (=> (not res!1598490) (not e!2445044))))

(assert (=> b!3950573 (= res!1598490 (= (originalCharacters!7172 (h!47418 prefixTokens!80)) (list!15598 (dynLambda!17987 (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))) (value!207936 (h!47418 prefixTokens!80))))))))

(declare-fun b!3950574 () Bool)

(assert (=> b!3950574 (= e!2445044 (= (size!31474 (h!47418 prefixTokens!80)) (size!31475 (originalCharacters!7172 (h!47418 prefixTokens!80)))))))

(assert (= (and d!1171651 res!1598489) b!3950573))

(assert (= (and b!3950573 res!1598490) b!3950574))

(declare-fun b_lambda!115581 () Bool)

(assert (=> (not b_lambda!115581) (not b!3950573)))

(declare-fun t!328579 () Bool)

(declare-fun tb!237723 () Bool)

(assert (=> (and b!3950104 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80))))) t!328579) tb!237723))

(declare-fun b!3950575 () Bool)

(declare-fun e!2445045 () Bool)

(declare-fun tp!1203290 () Bool)

(assert (=> b!3950575 (= e!2445045 (and (inv!56228 (c!685923 (dynLambda!17987 (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))) (value!207936 (h!47418 prefixTokens!80))))) tp!1203290))))

(declare-fun result!287904 () Bool)

(assert (=> tb!237723 (= result!287904 (and (inv!56229 (dynLambda!17987 (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))) (value!207936 (h!47418 prefixTokens!80)))) e!2445045))))

(assert (= tb!237723 b!3950575))

(declare-fun m!4519501 () Bool)

(assert (=> b!3950575 m!4519501))

(declare-fun m!4519503 () Bool)

(assert (=> tb!237723 m!4519503))

(assert (=> b!3950573 t!328579))

(declare-fun b_and!302663 () Bool)

(assert (= b_and!302655 (and (=> t!328579 result!287904) b_and!302663)))

(declare-fun t!328581 () Bool)

(declare-fun tb!237725 () Bool)

(assert (=> (and b!3950114 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80))))) t!328581) tb!237725))

(declare-fun result!287906 () Bool)

(assert (= result!287906 result!287904))

(assert (=> b!3950573 t!328581))

(declare-fun b_and!302665 () Bool)

(assert (= b_and!302657 (and (=> t!328581 result!287906) b_and!302665)))

(declare-fun t!328583 () Bool)

(declare-fun tb!237727 () Bool)

(assert (=> (and b!3950108 (= (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80))))) t!328583) tb!237727))

(declare-fun result!287908 () Bool)

(assert (= result!287908 result!287904))

(assert (=> b!3950573 t!328583))

(declare-fun b_and!302667 () Bool)

(assert (= b_and!302659 (and (=> t!328583 result!287908) b_and!302667)))

(declare-fun tb!237729 () Bool)

(declare-fun t!328585 () Bool)

(assert (=> (and b!3950128 (= (toChars!8907 (transformation!6572 (h!47417 rules!2768))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80))))) t!328585) tb!237729))

(declare-fun result!287910 () Bool)

(assert (= result!287910 result!287904))

(assert (=> b!3950573 t!328585))

(declare-fun b_and!302669 () Bool)

(assert (= b_and!302661 (and (=> t!328585 result!287910) b_and!302669)))

(declare-fun m!4519505 () Bool)

(assert (=> d!1171651 m!4519505))

(declare-fun m!4519507 () Bool)

(assert (=> b!3950573 m!4519507))

(assert (=> b!3950573 m!4519507))

(declare-fun m!4519509 () Bool)

(assert (=> b!3950573 m!4519509))

(declare-fun m!4519511 () Bool)

(assert (=> b!3950574 m!4519511))

(assert (=> b!3950117 d!1171651))

(declare-fun d!1171653 () Bool)

(assert (=> d!1171653 (= (inv!56221 (tag!7432 (h!47417 rules!2768))) (= (mod (str.len (value!207935 (tag!7432 (h!47417 rules!2768)))) 2) 0))))

(assert (=> b!3950097 d!1171653))

(declare-fun d!1171655 () Bool)

(declare-fun res!1598491 () Bool)

(declare-fun e!2445046 () Bool)

(assert (=> d!1171655 (=> (not res!1598491) (not e!2445046))))

(assert (=> d!1171655 (= res!1598491 (semiInverseModEq!2835 (toChars!8907 (transformation!6572 (h!47417 rules!2768))) (toValue!9048 (transformation!6572 (h!47417 rules!2768)))))))

(assert (=> d!1171655 (= (inv!56224 (transformation!6572 (h!47417 rules!2768))) e!2445046)))

(declare-fun b!3950576 () Bool)

(assert (=> b!3950576 (= e!2445046 (equivClasses!2734 (toChars!8907 (transformation!6572 (h!47417 rules!2768))) (toValue!9048 (transformation!6572 (h!47417 rules!2768)))))))

(assert (= (and d!1171655 res!1598491) b!3950576))

(declare-fun m!4519513 () Bool)

(assert (=> d!1171655 m!4519513))

(declare-fun m!4519515 () Bool)

(assert (=> b!3950576 m!4519515))

(assert (=> b!3950097 d!1171655))

(declare-fun b!3950577 () Bool)

(declare-fun e!2445047 () Bool)

(declare-fun lt!1380933 () tuple2!41280)

(assert (=> b!3950577 (= e!2445047 (not (isEmpty!25081 (_1!23774 lt!1380933))))))

(declare-fun b!3950578 () Bool)

(declare-fun e!2445048 () Bool)

(assert (=> b!3950578 (= e!2445048 e!2445047)))

(declare-fun res!1598492 () Bool)

(assert (=> b!3950578 (= res!1598492 (< (size!31475 (_2!23774 lt!1380933)) (size!31475 suffix!1176)))))

(assert (=> b!3950578 (=> (not res!1598492) (not e!2445047))))

(declare-fun d!1171657 () Bool)

(assert (=> d!1171657 e!2445048))

(declare-fun c!686000 () Bool)

(assert (=> d!1171657 (= c!686000 (> (size!31477 (_1!23774 lt!1380933)) 0))))

(declare-fun e!2445049 () tuple2!41280)

(assert (=> d!1171657 (= lt!1380933 e!2445049)))

(declare-fun c!685999 () Bool)

(declare-fun lt!1380935 () Option!8992)

(assert (=> d!1171657 (= c!685999 ((_ is Some!8991) lt!1380935))))

(assert (=> d!1171657 (= lt!1380935 (maxPrefix!3465 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1171657 (= (lexList!1929 thiss!20629 rules!2768 suffix!1176) lt!1380933)))

(declare-fun b!3950579 () Bool)

(assert (=> b!3950579 (= e!2445048 (= (_2!23774 lt!1380933) suffix!1176))))

(declare-fun b!3950580 () Bool)

(assert (=> b!3950580 (= e!2445049 (tuple2!41281 Nil!41998 suffix!1176))))

(declare-fun b!3950581 () Bool)

(declare-fun lt!1380934 () tuple2!41280)

(assert (=> b!3950581 (= e!2445049 (tuple2!41281 (Cons!41998 (_1!23773 (v!39331 lt!1380935)) (_1!23774 lt!1380934)) (_2!23774 lt!1380934)))))

(assert (=> b!3950581 (= lt!1380934 (lexList!1929 thiss!20629 rules!2768 (_2!23773 (v!39331 lt!1380935))))))

(assert (= (and d!1171657 c!685999) b!3950581))

(assert (= (and d!1171657 (not c!685999)) b!3950580))

(assert (= (and d!1171657 c!686000) b!3950578))

(assert (= (and d!1171657 (not c!686000)) b!3950579))

(assert (= (and b!3950578 res!1598492) b!3950577))

(declare-fun m!4519517 () Bool)

(assert (=> b!3950577 m!4519517))

(declare-fun m!4519519 () Bool)

(assert (=> b!3950578 m!4519519))

(declare-fun m!4519521 () Bool)

(assert (=> b!3950578 m!4519521))

(declare-fun m!4519523 () Bool)

(assert (=> d!1171657 m!4519523))

(declare-fun m!4519525 () Bool)

(assert (=> d!1171657 m!4519525))

(declare-fun m!4519527 () Bool)

(assert (=> b!3950581 m!4519527))

(assert (=> b!3950111 d!1171657))

(declare-fun d!1171659 () Bool)

(declare-fun res!1598495 () Bool)

(declare-fun e!2445052 () Bool)

(assert (=> d!1171659 (=> (not res!1598495) (not e!2445052))))

(declare-fun rulesValid!2568 (LexerInterface!6161 List!42121) Bool)

(assert (=> d!1171659 (= res!1598495 (rulesValid!2568 thiss!20629 rules!2768))))

(assert (=> d!1171659 (= (rulesInvariant!5504 thiss!20629 rules!2768) e!2445052)))

(declare-fun b!3950584 () Bool)

(declare-datatypes ((List!42123 0))(
  ( (Nil!41999) (Cons!41999 (h!47419 String!47728) (t!328624 List!42123)) )
))
(declare-fun noDuplicateTag!2569 (LexerInterface!6161 List!42121 List!42123) Bool)

(assert (=> b!3950584 (= e!2445052 (noDuplicateTag!2569 thiss!20629 rules!2768 Nil!41999))))

(assert (= (and d!1171659 res!1598495) b!3950584))

(declare-fun m!4519529 () Bool)

(assert (=> d!1171659 m!4519529))

(declare-fun m!4519531 () Bool)

(assert (=> b!3950584 m!4519531))

(assert (=> b!3950109 d!1171659))

(declare-fun d!1171661 () Bool)

(assert (=> d!1171661 (= (inv!56221 (tag!7432 (rule!9538 (_1!23773 (v!39331 err!4417))))) (= (mod (str.len (value!207935 (tag!7432 (rule!9538 (_1!23773 (v!39331 err!4417)))))) 2) 0))))

(assert (=> b!3950130 d!1171661))

(declare-fun d!1171663 () Bool)

(declare-fun res!1598496 () Bool)

(declare-fun e!2445053 () Bool)

(assert (=> d!1171663 (=> (not res!1598496) (not e!2445053))))

(assert (=> d!1171663 (= res!1598496 (semiInverseModEq!2835 (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))) (toValue!9048 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417)))))))))

(assert (=> d!1171663 (= (inv!56224 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))) e!2445053)))

(declare-fun b!3950585 () Bool)

(assert (=> b!3950585 (= e!2445053 (equivClasses!2734 (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))) (toValue!9048 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417)))))))))

(assert (= (and d!1171663 res!1598496) b!3950585))

(declare-fun m!4519533 () Bool)

(assert (=> d!1171663 m!4519533))

(declare-fun m!4519535 () Bool)

(assert (=> b!3950585 m!4519535))

(assert (=> b!3950130 d!1171663))

(declare-fun d!1171665 () Bool)

(declare-fun c!686001 () Bool)

(assert (=> d!1171665 (= c!686001 ((_ is IntegerValue!20406) (value!207936 (h!47418 prefixTokens!80))))))

(declare-fun e!2445055 () Bool)

(assert (=> d!1171665 (= (inv!21 (value!207936 (h!47418 prefixTokens!80))) e!2445055)))

(declare-fun b!3950586 () Bool)

(declare-fun e!2445054 () Bool)

(assert (=> b!3950586 (= e!2445054 (inv!15 (value!207936 (h!47418 prefixTokens!80))))))

(declare-fun b!3950587 () Bool)

(declare-fun e!2445056 () Bool)

(assert (=> b!3950587 (= e!2445055 e!2445056)))

(declare-fun c!686002 () Bool)

(assert (=> b!3950587 (= c!686002 ((_ is IntegerValue!20407) (value!207936 (h!47418 prefixTokens!80))))))

(declare-fun b!3950588 () Bool)

(assert (=> b!3950588 (= e!2445056 (inv!17 (value!207936 (h!47418 prefixTokens!80))))))

(declare-fun b!3950589 () Bool)

(assert (=> b!3950589 (= e!2445055 (inv!16 (value!207936 (h!47418 prefixTokens!80))))))

(declare-fun b!3950590 () Bool)

(declare-fun res!1598497 () Bool)

(assert (=> b!3950590 (=> res!1598497 e!2445054)))

(assert (=> b!3950590 (= res!1598497 (not ((_ is IntegerValue!20408) (value!207936 (h!47418 prefixTokens!80)))))))

(assert (=> b!3950590 (= e!2445056 e!2445054)))

(assert (= (and d!1171665 c!686001) b!3950589))

(assert (= (and d!1171665 (not c!686001)) b!3950587))

(assert (= (and b!3950587 c!686002) b!3950588))

(assert (= (and b!3950587 (not c!686002)) b!3950590))

(assert (= (and b!3950590 (not res!1598497)) b!3950586))

(declare-fun m!4519537 () Bool)

(assert (=> b!3950586 m!4519537))

(declare-fun m!4519539 () Bool)

(assert (=> b!3950588 m!4519539))

(declare-fun m!4519541 () Bool)

(assert (=> b!3950589 m!4519541))

(assert (=> b!3950112 d!1171665))

(declare-fun b!3950591 () Bool)

(declare-fun e!2445058 () Option!8992)

(declare-fun lt!1380937 () Option!8992)

(declare-fun lt!1380940 () Option!8992)

(assert (=> b!3950591 (= e!2445058 (ite (and ((_ is None!8991) lt!1380937) ((_ is None!8991) lt!1380940)) None!8991 (ite ((_ is None!8991) lt!1380940) lt!1380937 (ite ((_ is None!8991) lt!1380937) lt!1380940 (ite (>= (size!31474 (_1!23773 (v!39331 lt!1380937))) (size!31474 (_1!23773 (v!39331 lt!1380940)))) lt!1380937 lt!1380940)))))))

(declare-fun call!285214 () Option!8992)

(assert (=> b!3950591 (= lt!1380937 call!285214)))

(assert (=> b!3950591 (= lt!1380940 (maxPrefix!3465 thiss!20629 (t!328482 rules!2768) lt!1380768))))

(declare-fun b!3950592 () Bool)

(declare-fun res!1598500 () Bool)

(declare-fun e!2445057 () Bool)

(assert (=> b!3950592 (=> (not res!1598500) (not e!2445057))))

(declare-fun lt!1380938 () Option!8992)

(assert (=> b!3950592 (= res!1598500 (= (value!207936 (_1!23773 (get!13862 lt!1380938))) (apply!9803 (transformation!6572 (rule!9538 (_1!23773 (get!13862 lt!1380938)))) (seqFromList!4831 (originalCharacters!7172 (_1!23773 (get!13862 lt!1380938)))))))))

(declare-fun b!3950593 () Bool)

(assert (=> b!3950593 (= e!2445058 call!285214)))

(declare-fun b!3950594 () Bool)

(assert (=> b!3950594 (= e!2445057 (contains!8406 rules!2768 (rule!9538 (_1!23773 (get!13862 lt!1380938)))))))

(declare-fun b!3950595 () Bool)

(declare-fun res!1598502 () Bool)

(assert (=> b!3950595 (=> (not res!1598502) (not e!2445057))))

(assert (=> b!3950595 (= res!1598502 (= (list!15598 (charsOf!4390 (_1!23773 (get!13862 lt!1380938)))) (originalCharacters!7172 (_1!23773 (get!13862 lt!1380938)))))))

(declare-fun b!3950596 () Bool)

(declare-fun res!1598498 () Bool)

(assert (=> b!3950596 (=> (not res!1598498) (not e!2445057))))

(assert (=> b!3950596 (= res!1598498 (matchR!5514 (regex!6572 (rule!9538 (_1!23773 (get!13862 lt!1380938)))) (list!15598 (charsOf!4390 (_1!23773 (get!13862 lt!1380938))))))))

(declare-fun bm!285209 () Bool)

(assert (=> bm!285209 (= call!285214 (maxPrefixOneRule!2519 thiss!20629 (h!47417 rules!2768) lt!1380768))))

(declare-fun b!3950598 () Bool)

(declare-fun res!1598501 () Bool)

(assert (=> b!3950598 (=> (not res!1598501) (not e!2445057))))

(assert (=> b!3950598 (= res!1598501 (= (++!10902 (list!15598 (charsOf!4390 (_1!23773 (get!13862 lt!1380938)))) (_2!23773 (get!13862 lt!1380938))) lt!1380768))))

(declare-fun b!3950599 () Bool)

(declare-fun e!2445059 () Bool)

(assert (=> b!3950599 (= e!2445059 e!2445057)))

(declare-fun res!1598499 () Bool)

(assert (=> b!3950599 (=> (not res!1598499) (not e!2445057))))

(assert (=> b!3950599 (= res!1598499 (isDefined!6981 lt!1380938))))

(declare-fun b!3950597 () Bool)

(declare-fun res!1598504 () Bool)

(assert (=> b!3950597 (=> (not res!1598504) (not e!2445057))))

(assert (=> b!3950597 (= res!1598504 (< (size!31475 (_2!23773 (get!13862 lt!1380938))) (size!31475 lt!1380768)))))

(declare-fun d!1171667 () Bool)

(assert (=> d!1171667 e!2445059))

(declare-fun res!1598503 () Bool)

(assert (=> d!1171667 (=> res!1598503 e!2445059)))

(assert (=> d!1171667 (= res!1598503 (isEmpty!25084 lt!1380938))))

(assert (=> d!1171667 (= lt!1380938 e!2445058)))

(declare-fun c!686003 () Bool)

(assert (=> d!1171667 (= c!686003 (and ((_ is Cons!41997) rules!2768) ((_ is Nil!41997) (t!328482 rules!2768))))))

(declare-fun lt!1380939 () Unit!60514)

(declare-fun lt!1380936 () Unit!60514)

(assert (=> d!1171667 (= lt!1380939 lt!1380936)))

(assert (=> d!1171667 (isPrefix!3661 lt!1380768 lt!1380768)))

(assert (=> d!1171667 (= lt!1380936 (lemmaIsPrefixRefl!2312 lt!1380768 lt!1380768))))

(assert (=> d!1171667 (rulesValidInductive!2382 thiss!20629 rules!2768)))

(assert (=> d!1171667 (= (maxPrefix!3465 thiss!20629 rules!2768 lt!1380768) lt!1380938)))

(assert (= (and d!1171667 c!686003) b!3950593))

(assert (= (and d!1171667 (not c!686003)) b!3950591))

(assert (= (or b!3950593 b!3950591) bm!285209))

(assert (= (and d!1171667 (not res!1598503)) b!3950599))

(assert (= (and b!3950599 res!1598499) b!3950595))

(assert (= (and b!3950595 res!1598502) b!3950597))

(assert (= (and b!3950597 res!1598504) b!3950598))

(assert (= (and b!3950598 res!1598501) b!3950592))

(assert (= (and b!3950592 res!1598500) b!3950596))

(assert (= (and b!3950596 res!1598498) b!3950594))

(declare-fun m!4519543 () Bool)

(assert (=> b!3950592 m!4519543))

(declare-fun m!4519545 () Bool)

(assert (=> b!3950592 m!4519545))

(assert (=> b!3950592 m!4519545))

(declare-fun m!4519547 () Bool)

(assert (=> b!3950592 m!4519547))

(assert (=> b!3950597 m!4519543))

(declare-fun m!4519549 () Bool)

(assert (=> b!3950597 m!4519549))

(assert (=> b!3950597 m!4519013))

(assert (=> b!3950598 m!4519543))

(declare-fun m!4519551 () Bool)

(assert (=> b!3950598 m!4519551))

(assert (=> b!3950598 m!4519551))

(declare-fun m!4519553 () Bool)

(assert (=> b!3950598 m!4519553))

(assert (=> b!3950598 m!4519553))

(declare-fun m!4519555 () Bool)

(assert (=> b!3950598 m!4519555))

(assert (=> b!3950595 m!4519543))

(assert (=> b!3950595 m!4519551))

(assert (=> b!3950595 m!4519551))

(assert (=> b!3950595 m!4519553))

(assert (=> b!3950596 m!4519543))

(assert (=> b!3950596 m!4519551))

(assert (=> b!3950596 m!4519551))

(assert (=> b!3950596 m!4519553))

(assert (=> b!3950596 m!4519553))

(declare-fun m!4519557 () Bool)

(assert (=> b!3950596 m!4519557))

(assert (=> b!3950591 m!4518919))

(assert (=> bm!285209 m!4518907))

(declare-fun m!4519559 () Bool)

(assert (=> d!1171667 m!4519559))

(assert (=> d!1171667 m!4518899))

(assert (=> d!1171667 m!4518901))

(declare-fun m!4519561 () Bool)

(assert (=> d!1171667 m!4519561))

(declare-fun m!4519563 () Bool)

(assert (=> b!3950599 m!4519563))

(assert (=> b!3950594 m!4519543))

(declare-fun m!4519565 () Bool)

(assert (=> b!3950594 m!4519565))

(assert (=> b!3950126 d!1171667))

(declare-fun b!3950600 () Bool)

(declare-fun e!2445060 () Bool)

(declare-fun lt!1380941 () tuple2!41280)

(assert (=> b!3950600 (= e!2445060 (not (isEmpty!25081 (_1!23774 lt!1380941))))))

(declare-fun b!3950601 () Bool)

(declare-fun e!2445061 () Bool)

(assert (=> b!3950601 (= e!2445061 e!2445060)))

(declare-fun res!1598505 () Bool)

(assert (=> b!3950601 (= res!1598505 (< (size!31475 (_2!23774 lt!1380941)) (size!31475 lt!1380768)))))

(assert (=> b!3950601 (=> (not res!1598505) (not e!2445060))))

(declare-fun d!1171669 () Bool)

(assert (=> d!1171669 e!2445061))

(declare-fun c!686005 () Bool)

(assert (=> d!1171669 (= c!686005 (> (size!31477 (_1!23774 lt!1380941)) 0))))

(declare-fun e!2445062 () tuple2!41280)

(assert (=> d!1171669 (= lt!1380941 e!2445062)))

(declare-fun c!686004 () Bool)

(declare-fun lt!1380943 () Option!8992)

(assert (=> d!1171669 (= c!686004 ((_ is Some!8991) lt!1380943))))

(assert (=> d!1171669 (= lt!1380943 (maxPrefix!3465 thiss!20629 rules!2768 lt!1380768))))

(assert (=> d!1171669 (= (lexList!1929 thiss!20629 rules!2768 lt!1380768) lt!1380941)))

(declare-fun b!3950602 () Bool)

(assert (=> b!3950602 (= e!2445061 (= (_2!23774 lt!1380941) lt!1380768))))

(declare-fun b!3950603 () Bool)

(assert (=> b!3950603 (= e!2445062 (tuple2!41281 Nil!41998 lt!1380768))))

(declare-fun b!3950604 () Bool)

(declare-fun lt!1380942 () tuple2!41280)

(assert (=> b!3950604 (= e!2445062 (tuple2!41281 (Cons!41998 (_1!23773 (v!39331 lt!1380943)) (_1!23774 lt!1380942)) (_2!23774 lt!1380942)))))

(assert (=> b!3950604 (= lt!1380942 (lexList!1929 thiss!20629 rules!2768 (_2!23773 (v!39331 lt!1380943))))))

(assert (= (and d!1171669 c!686004) b!3950604))

(assert (= (and d!1171669 (not c!686004)) b!3950603))

(assert (= (and d!1171669 c!686005) b!3950601))

(assert (= (and d!1171669 (not c!686005)) b!3950602))

(assert (= (and b!3950601 res!1598505) b!3950600))

(declare-fun m!4519567 () Bool)

(assert (=> b!3950600 m!4519567))

(declare-fun m!4519569 () Bool)

(assert (=> b!3950601 m!4519569))

(assert (=> b!3950601 m!4519013))

(declare-fun m!4519571 () Bool)

(assert (=> d!1171669 m!4519571))

(assert (=> d!1171669 m!4518927))

(declare-fun m!4519573 () Bool)

(assert (=> b!3950604 m!4519573))

(assert (=> b!3950127 d!1171669))

(declare-fun b!3950606 () Bool)

(declare-fun e!2445064 () List!42122)

(assert (=> b!3950606 (= e!2445064 (Cons!41998 (h!47418 prefixTokens!80) (++!10901 (t!328483 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3950607 () Bool)

(declare-fun res!1598507 () Bool)

(declare-fun e!2445063 () Bool)

(assert (=> b!3950607 (=> (not res!1598507) (not e!2445063))))

(declare-fun lt!1380944 () List!42122)

(assert (=> b!3950607 (= res!1598507 (= (size!31477 lt!1380944) (+ (size!31477 prefixTokens!80) (size!31477 suffixTokens!72))))))

(declare-fun b!3950605 () Bool)

(assert (=> b!3950605 (= e!2445064 suffixTokens!72)))

(declare-fun d!1171671 () Bool)

(assert (=> d!1171671 e!2445063))

(declare-fun res!1598506 () Bool)

(assert (=> d!1171671 (=> (not res!1598506) (not e!2445063))))

(assert (=> d!1171671 (= res!1598506 (= (content!6368 lt!1380944) ((_ map or) (content!6368 prefixTokens!80) (content!6368 suffixTokens!72))))))

(assert (=> d!1171671 (= lt!1380944 e!2445064)))

(declare-fun c!686006 () Bool)

(assert (=> d!1171671 (= c!686006 ((_ is Nil!41998) prefixTokens!80))))

(assert (=> d!1171671 (= (++!10901 prefixTokens!80 suffixTokens!72) lt!1380944)))

(declare-fun b!3950608 () Bool)

(assert (=> b!3950608 (= e!2445063 (or (not (= suffixTokens!72 Nil!41998)) (= lt!1380944 prefixTokens!80)))))

(assert (= (and d!1171671 c!686006) b!3950605))

(assert (= (and d!1171671 (not c!686006)) b!3950606))

(assert (= (and d!1171671 res!1598506) b!3950607))

(assert (= (and b!3950607 res!1598507) b!3950608))

(declare-fun m!4519575 () Bool)

(assert (=> b!3950606 m!4519575))

(declare-fun m!4519577 () Bool)

(assert (=> b!3950607 m!4519577))

(declare-fun m!4519579 () Bool)

(assert (=> b!3950607 m!4519579))

(declare-fun m!4519581 () Bool)

(assert (=> b!3950607 m!4519581))

(declare-fun m!4519583 () Bool)

(assert (=> d!1171671 m!4519583))

(declare-fun m!4519585 () Bool)

(assert (=> d!1171671 m!4519585))

(declare-fun m!4519587 () Bool)

(assert (=> d!1171671 m!4519587))

(assert (=> b!3950127 d!1171671))

(declare-fun e!2445066 () Bool)

(declare-fun b!3950612 () Bool)

(declare-fun lt!1380945 () List!42120)

(assert (=> b!3950612 (= e!2445066 (or (not (= suffix!1176 Nil!41996)) (= lt!1380945 prefix!426)))))

(declare-fun b!3950611 () Bool)

(declare-fun res!1598508 () Bool)

(assert (=> b!3950611 (=> (not res!1598508) (not e!2445066))))

(assert (=> b!3950611 (= res!1598508 (= (size!31475 lt!1380945) (+ (size!31475 prefix!426) (size!31475 suffix!1176))))))

(declare-fun b!3950610 () Bool)

(declare-fun e!2445065 () List!42120)

(assert (=> b!3950610 (= e!2445065 (Cons!41996 (h!47416 prefix!426) (++!10902 (t!328481 prefix!426) suffix!1176)))))

(declare-fun d!1171673 () Bool)

(assert (=> d!1171673 e!2445066))

(declare-fun res!1598509 () Bool)

(assert (=> d!1171673 (=> (not res!1598509) (not e!2445066))))

(assert (=> d!1171673 (= res!1598509 (= (content!6369 lt!1380945) ((_ map or) (content!6369 prefix!426) (content!6369 suffix!1176))))))

(assert (=> d!1171673 (= lt!1380945 e!2445065)))

(declare-fun c!686007 () Bool)

(assert (=> d!1171673 (= c!686007 ((_ is Nil!41996) prefix!426))))

(assert (=> d!1171673 (= (++!10902 prefix!426 suffix!1176) lt!1380945)))

(declare-fun b!3950609 () Bool)

(assert (=> b!3950609 (= e!2445065 suffix!1176)))

(assert (= (and d!1171673 c!686007) b!3950609))

(assert (= (and d!1171673 (not c!686007)) b!3950610))

(assert (= (and d!1171673 res!1598509) b!3950611))

(assert (= (and b!3950611 res!1598508) b!3950612))

(declare-fun m!4519589 () Bool)

(assert (=> b!3950611 m!4519589))

(assert (=> b!3950611 m!4518909))

(assert (=> b!3950611 m!4519521))

(declare-fun m!4519591 () Bool)

(assert (=> b!3950610 m!4519591))

(declare-fun m!4519593 () Bool)

(assert (=> d!1171673 m!4519593))

(declare-fun m!4519595 () Bool)

(assert (=> d!1171673 m!4519595))

(declare-fun m!4519597 () Bool)

(assert (=> d!1171673 m!4519597))

(assert (=> b!3950127 d!1171673))

(declare-fun d!1171675 () Bool)

(declare-fun res!1598510 () Bool)

(declare-fun e!2445067 () Bool)

(assert (=> d!1171675 (=> (not res!1598510) (not e!2445067))))

(assert (=> d!1171675 (= res!1598510 (not (isEmpty!25082 (originalCharacters!7172 (_1!23773 (v!39331 err!4417))))))))

(assert (=> d!1171675 (= (inv!56225 (_1!23773 (v!39331 err!4417))) e!2445067)))

(declare-fun b!3950613 () Bool)

(declare-fun res!1598511 () Bool)

(assert (=> b!3950613 (=> (not res!1598511) (not e!2445067))))

(assert (=> b!3950613 (= res!1598511 (= (originalCharacters!7172 (_1!23773 (v!39331 err!4417))) (list!15598 (dynLambda!17987 (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))) (value!207936 (_1!23773 (v!39331 err!4417)))))))))

(declare-fun b!3950614 () Bool)

(assert (=> b!3950614 (= e!2445067 (= (size!31474 (_1!23773 (v!39331 err!4417))) (size!31475 (originalCharacters!7172 (_1!23773 (v!39331 err!4417))))))))

(assert (= (and d!1171675 res!1598510) b!3950613))

(assert (= (and b!3950613 res!1598511) b!3950614))

(declare-fun b_lambda!115583 () Bool)

(assert (=> (not b_lambda!115583) (not b!3950613)))

(declare-fun t!328587 () Bool)

(declare-fun tb!237731 () Bool)

(assert (=> (and b!3950104 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417)))))) t!328587) tb!237731))

(declare-fun b!3950615 () Bool)

(declare-fun e!2445068 () Bool)

(declare-fun tp!1203291 () Bool)

(assert (=> b!3950615 (= e!2445068 (and (inv!56228 (c!685923 (dynLambda!17987 (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))) (value!207936 (_1!23773 (v!39331 err!4417)))))) tp!1203291))))

(declare-fun result!287912 () Bool)

(assert (=> tb!237731 (= result!287912 (and (inv!56229 (dynLambda!17987 (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))) (value!207936 (_1!23773 (v!39331 err!4417))))) e!2445068))))

(assert (= tb!237731 b!3950615))

(declare-fun m!4519599 () Bool)

(assert (=> b!3950615 m!4519599))

(declare-fun m!4519601 () Bool)

(assert (=> tb!237731 m!4519601))

(assert (=> b!3950613 t!328587))

(declare-fun b_and!302671 () Bool)

(assert (= b_and!302663 (and (=> t!328587 result!287912) b_and!302671)))

(declare-fun tb!237733 () Bool)

(declare-fun t!328589 () Bool)

(assert (=> (and b!3950114 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417)))))) t!328589) tb!237733))

(declare-fun result!287914 () Bool)

(assert (= result!287914 result!287912))

(assert (=> b!3950613 t!328589))

(declare-fun b_and!302673 () Bool)

(assert (= b_and!302665 (and (=> t!328589 result!287914) b_and!302673)))

(declare-fun t!328591 () Bool)

(declare-fun tb!237735 () Bool)

(assert (=> (and b!3950108 (= (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417)))))) t!328591) tb!237735))

(declare-fun result!287916 () Bool)

(assert (= result!287916 result!287912))

(assert (=> b!3950613 t!328591))

(declare-fun b_and!302675 () Bool)

(assert (= b_and!302667 (and (=> t!328591 result!287916) b_and!302675)))

(declare-fun t!328593 () Bool)

(declare-fun tb!237737 () Bool)

(assert (=> (and b!3950128 (= (toChars!8907 (transformation!6572 (h!47417 rules!2768))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417)))))) t!328593) tb!237737))

(declare-fun result!287918 () Bool)

(assert (= result!287918 result!287912))

(assert (=> b!3950613 t!328593))

(declare-fun b_and!302677 () Bool)

(assert (= b_and!302669 (and (=> t!328593 result!287918) b_and!302677)))

(declare-fun m!4519603 () Bool)

(assert (=> d!1171675 m!4519603))

(declare-fun m!4519605 () Bool)

(assert (=> b!3950613 m!4519605))

(assert (=> b!3950613 m!4519605))

(declare-fun m!4519607 () Bool)

(assert (=> b!3950613 m!4519607))

(declare-fun m!4519609 () Bool)

(assert (=> b!3950614 m!4519609))

(assert (=> b!3950129 d!1171675))

(declare-fun d!1171677 () Bool)

(declare-fun c!686008 () Bool)

(assert (=> d!1171677 (= c!686008 ((_ is IntegerValue!20406) (value!207936 (h!47418 suffixTokens!72))))))

(declare-fun e!2445070 () Bool)

(assert (=> d!1171677 (= (inv!21 (value!207936 (h!47418 suffixTokens!72))) e!2445070)))

(declare-fun b!3950616 () Bool)

(declare-fun e!2445069 () Bool)

(assert (=> b!3950616 (= e!2445069 (inv!15 (value!207936 (h!47418 suffixTokens!72))))))

(declare-fun b!3950617 () Bool)

(declare-fun e!2445071 () Bool)

(assert (=> b!3950617 (= e!2445070 e!2445071)))

(declare-fun c!686009 () Bool)

(assert (=> b!3950617 (= c!686009 ((_ is IntegerValue!20407) (value!207936 (h!47418 suffixTokens!72))))))

(declare-fun b!3950618 () Bool)

(assert (=> b!3950618 (= e!2445071 (inv!17 (value!207936 (h!47418 suffixTokens!72))))))

(declare-fun b!3950619 () Bool)

(assert (=> b!3950619 (= e!2445070 (inv!16 (value!207936 (h!47418 suffixTokens!72))))))

(declare-fun b!3950620 () Bool)

(declare-fun res!1598512 () Bool)

(assert (=> b!3950620 (=> res!1598512 e!2445069)))

(assert (=> b!3950620 (= res!1598512 (not ((_ is IntegerValue!20408) (value!207936 (h!47418 suffixTokens!72)))))))

(assert (=> b!3950620 (= e!2445071 e!2445069)))

(assert (= (and d!1171677 c!686008) b!3950619))

(assert (= (and d!1171677 (not c!686008)) b!3950617))

(assert (= (and b!3950617 c!686009) b!3950618))

(assert (= (and b!3950617 (not c!686009)) b!3950620))

(assert (= (and b!3950620 (not res!1598512)) b!3950616))

(declare-fun m!4519611 () Bool)

(assert (=> b!3950616 m!4519611))

(declare-fun m!4519613 () Bool)

(assert (=> b!3950618 m!4519613))

(declare-fun m!4519615 () Bool)

(assert (=> b!3950619 m!4519615))

(assert (=> b!3950106 d!1171677))

(declare-fun d!1171679 () Bool)

(assert (=> d!1171679 (= (isEmpty!25082 prefix!426) ((_ is Nil!41996) prefix!426))))

(assert (=> b!3950107 d!1171679))

(declare-fun b!3950625 () Bool)

(declare-fun e!2445074 () Bool)

(declare-fun tp!1203294 () Bool)

(assert (=> b!3950625 (= e!2445074 (and tp_is_empty!19925 tp!1203294))))

(assert (=> b!3950100 (= tp!1203197 e!2445074)))

(assert (= (and b!3950100 ((_ is Cons!41996) (t!328481 suffix!1176))) b!3950625))

(declare-fun b!3950626 () Bool)

(declare-fun e!2445075 () Bool)

(declare-fun tp!1203295 () Bool)

(assert (=> b!3950626 (= e!2445075 (and tp_is_empty!19925 tp!1203295))))

(assert (=> b!3950098 (= tp!1203193 e!2445075)))

(assert (= (and b!3950098 ((_ is Cons!41996) (originalCharacters!7172 (_1!23773 (v!39331 err!4417))))) b!3950626))

(declare-fun b!3950640 () Bool)

(declare-fun e!2445078 () Bool)

(declare-fun tp!1203308 () Bool)

(declare-fun tp!1203307 () Bool)

(assert (=> b!3950640 (= e!2445078 (and tp!1203308 tp!1203307))))

(declare-fun b!3950639 () Bool)

(declare-fun tp!1203310 () Bool)

(assert (=> b!3950639 (= e!2445078 tp!1203310)))

(declare-fun b!3950638 () Bool)

(declare-fun tp!1203309 () Bool)

(declare-fun tp!1203306 () Bool)

(assert (=> b!3950638 (= e!2445078 (and tp!1203309 tp!1203306))))

(assert (=> b!3950130 (= tp!1203194 e!2445078)))

(declare-fun b!3950637 () Bool)

(assert (=> b!3950637 (= e!2445078 tp_is_empty!19925)))

(assert (= (and b!3950130 ((_ is ElementMatch!11477) (regex!6572 (rule!9538 (_1!23773 (v!39331 err!4417)))))) b!3950637))

(assert (= (and b!3950130 ((_ is Concat!18280) (regex!6572 (rule!9538 (_1!23773 (v!39331 err!4417)))))) b!3950638))

(assert (= (and b!3950130 ((_ is Star!11477) (regex!6572 (rule!9538 (_1!23773 (v!39331 err!4417)))))) b!3950639))

(assert (= (and b!3950130 ((_ is Union!11477) (regex!6572 (rule!9538 (_1!23773 (v!39331 err!4417)))))) b!3950640))

(declare-fun b!3950641 () Bool)

(declare-fun e!2445079 () Bool)

(declare-fun tp!1203311 () Bool)

(assert (=> b!3950641 (= e!2445079 (and tp_is_empty!19925 tp!1203311))))

(assert (=> b!3950122 (= tp!1203205 e!2445079)))

(assert (= (and b!3950122 ((_ is Cons!41996) (t!328481 prefix!426))) b!3950641))

(declare-fun b!3950642 () Bool)

(declare-fun e!2445080 () Bool)

(declare-fun tp!1203312 () Bool)

(assert (=> b!3950642 (= e!2445080 (and tp_is_empty!19925 tp!1203312))))

(assert (=> b!3950112 (= tp!1203201 e!2445080)))

(assert (= (and b!3950112 ((_ is Cons!41996) (originalCharacters!7172 (h!47418 prefixTokens!80)))) b!3950642))

(declare-fun b!3950643 () Bool)

(declare-fun e!2445081 () Bool)

(declare-fun tp!1203313 () Bool)

(assert (=> b!3950643 (= e!2445081 (and tp_is_empty!19925 tp!1203313))))

(assert (=> b!3950096 (= tp!1203199 e!2445081)))

(assert (= (and b!3950096 ((_ is Cons!41996) (t!328481 suffixResult!91))) b!3950643))

(declare-fun b!3950647 () Bool)

(declare-fun e!2445082 () Bool)

(declare-fun tp!1203316 () Bool)

(declare-fun tp!1203315 () Bool)

(assert (=> b!3950647 (= e!2445082 (and tp!1203316 tp!1203315))))

(declare-fun b!3950646 () Bool)

(declare-fun tp!1203318 () Bool)

(assert (=> b!3950646 (= e!2445082 tp!1203318)))

(declare-fun b!3950645 () Bool)

(declare-fun tp!1203317 () Bool)

(declare-fun tp!1203314 () Bool)

(assert (=> b!3950645 (= e!2445082 (and tp!1203317 tp!1203314))))

(assert (=> b!3950116 (= tp!1203195 e!2445082)))

(declare-fun b!3950644 () Bool)

(assert (=> b!3950644 (= e!2445082 tp_is_empty!19925)))

(assert (= (and b!3950116 ((_ is ElementMatch!11477) (regex!6572 (rule!9538 (h!47418 suffixTokens!72))))) b!3950644))

(assert (= (and b!3950116 ((_ is Concat!18280) (regex!6572 (rule!9538 (h!47418 suffixTokens!72))))) b!3950645))

(assert (= (and b!3950116 ((_ is Star!11477) (regex!6572 (rule!9538 (h!47418 suffixTokens!72))))) b!3950646))

(assert (= (and b!3950116 ((_ is Union!11477) (regex!6572 (rule!9538 (h!47418 suffixTokens!72))))) b!3950647))

(declare-fun b!3950658 () Bool)

(declare-fun b_free!108517 () Bool)

(declare-fun b_next!109221 () Bool)

(assert (=> b!3950658 (= b_free!108517 (not b_next!109221))))

(declare-fun tb!237739 () Bool)

(declare-fun t!328595 () Bool)

(assert (=> (and b!3950658 (= (toValue!9048 (transformation!6572 (h!47417 (t!328482 rules!2768)))) (toValue!9048 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))))) t!328595) tb!237739))

(declare-fun result!287926 () Bool)

(assert (= result!287926 result!287814))

(assert (=> d!1171603 t!328595))

(declare-fun tp!1203327 () Bool)

(declare-fun b_and!302679 () Bool)

(assert (=> b!3950658 (= tp!1203327 (and (=> t!328595 result!287926) b_and!302679))))

(declare-fun b_free!108519 () Bool)

(declare-fun b_next!109223 () Bool)

(assert (=> b!3950658 (= b_free!108519 (not b_next!109223))))

(declare-fun tb!237741 () Bool)

(declare-fun t!328597 () Bool)

(assert (=> (and b!3950658 (= (toChars!8907 (transformation!6572 (h!47417 (t!328482 rules!2768)))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))))) t!328597) tb!237741))

(declare-fun result!287928 () Bool)

(assert (= result!287928 result!287824))

(assert (=> d!1171609 t!328597))

(declare-fun t!328599 () Bool)

(declare-fun tb!237743 () Bool)

(assert (=> (and b!3950658 (= (toChars!8907 (transformation!6572 (h!47417 (t!328482 rules!2768)))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72))))) t!328599) tb!237743))

(declare-fun result!287930 () Bool)

(assert (= result!287930 result!287896))

(assert (=> b!3950569 t!328599))

(declare-fun t!328601 () Bool)

(declare-fun tb!237745 () Bool)

(assert (=> (and b!3950658 (= (toChars!8907 (transformation!6572 (h!47417 (t!328482 rules!2768)))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80))))) t!328601) tb!237745))

(declare-fun result!287932 () Bool)

(assert (= result!287932 result!287904))

(assert (=> b!3950573 t!328601))

(declare-fun t!328603 () Bool)

(declare-fun tb!237747 () Bool)

(assert (=> (and b!3950658 (= (toChars!8907 (transformation!6572 (h!47417 (t!328482 rules!2768)))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417)))))) t!328603) tb!237747))

(declare-fun result!287934 () Bool)

(assert (= result!287934 result!287912))

(assert (=> b!3950613 t!328603))

(declare-fun b_and!302681 () Bool)

(declare-fun tp!1203330 () Bool)

(assert (=> b!3950658 (= tp!1203330 (and (=> t!328597 result!287928) (=> t!328599 result!287930) (=> t!328601 result!287932) (=> t!328603 result!287934) b_and!302681))))

(declare-fun e!2445093 () Bool)

(assert (=> b!3950658 (= e!2445093 (and tp!1203327 tp!1203330))))

(declare-fun tp!1203328 () Bool)

(declare-fun b!3950657 () Bool)

(declare-fun e!2445092 () Bool)

(assert (=> b!3950657 (= e!2445092 (and tp!1203328 (inv!56221 (tag!7432 (h!47417 (t!328482 rules!2768)))) (inv!56224 (transformation!6572 (h!47417 (t!328482 rules!2768)))) e!2445093))))

(declare-fun b!3950656 () Bool)

(declare-fun e!2445091 () Bool)

(declare-fun tp!1203329 () Bool)

(assert (=> b!3950656 (= e!2445091 (and e!2445092 tp!1203329))))

(assert (=> b!3950125 (= tp!1203192 e!2445091)))

(assert (= b!3950657 b!3950658))

(assert (= b!3950656 b!3950657))

(assert (= (and b!3950125 ((_ is Cons!41997) (t!328482 rules!2768))) b!3950656))

(declare-fun m!4519617 () Bool)

(assert (=> b!3950657 m!4519617))

(declare-fun m!4519619 () Bool)

(assert (=> b!3950657 m!4519619))

(declare-fun b!3950659 () Bool)

(declare-fun e!2445095 () Bool)

(declare-fun tp!1203331 () Bool)

(assert (=> b!3950659 (= e!2445095 (and tp_is_empty!19925 tp!1203331))))

(assert (=> b!3950129 (= tp!1203203 e!2445095)))

(assert (= (and b!3950129 ((_ is Cons!41996) (_2!23773 (v!39331 err!4417)))) b!3950659))

(declare-fun b!3950673 () Bool)

(declare-fun b_free!108521 () Bool)

(declare-fun b_next!109225 () Bool)

(assert (=> b!3950673 (= b_free!108521 (not b_next!109225))))

(declare-fun tb!237749 () Bool)

(declare-fun t!328605 () Bool)

(assert (=> (and b!3950673 (= (toValue!9048 (transformation!6572 (rule!9538 (h!47418 (t!328483 suffixTokens!72))))) (toValue!9048 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))))) t!328605) tb!237749))

(declare-fun result!287938 () Bool)

(assert (= result!287938 result!287814))

(assert (=> d!1171603 t!328605))

(declare-fun b_and!302683 () Bool)

(declare-fun tp!1203342 () Bool)

(assert (=> b!3950673 (= tp!1203342 (and (=> t!328605 result!287938) b_and!302683))))

(declare-fun b_free!108523 () Bool)

(declare-fun b_next!109227 () Bool)

(assert (=> b!3950673 (= b_free!108523 (not b_next!109227))))

(declare-fun tb!237751 () Bool)

(declare-fun t!328607 () Bool)

(assert (=> (and b!3950673 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 (t!328483 suffixTokens!72))))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))))) t!328607) tb!237751))

(declare-fun result!287940 () Bool)

(assert (= result!287940 result!287824))

(assert (=> d!1171609 t!328607))

(declare-fun t!328609 () Bool)

(declare-fun tb!237753 () Bool)

(assert (=> (and b!3950673 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 (t!328483 suffixTokens!72))))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72))))) t!328609) tb!237753))

(declare-fun result!287942 () Bool)

(assert (= result!287942 result!287896))

(assert (=> b!3950569 t!328609))

(declare-fun tb!237755 () Bool)

(declare-fun t!328611 () Bool)

(assert (=> (and b!3950673 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 (t!328483 suffixTokens!72))))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80))))) t!328611) tb!237755))

(declare-fun result!287944 () Bool)

(assert (= result!287944 result!287904))

(assert (=> b!3950573 t!328611))

(declare-fun t!328613 () Bool)

(declare-fun tb!237757 () Bool)

(assert (=> (and b!3950673 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 (t!328483 suffixTokens!72))))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417)))))) t!328613) tb!237757))

(declare-fun result!287946 () Bool)

(assert (= result!287946 result!287912))

(assert (=> b!3950613 t!328613))

(declare-fun tp!1203346 () Bool)

(declare-fun b_and!302685 () Bool)

(assert (=> b!3950673 (= tp!1203346 (and (=> t!328607 result!287940) (=> t!328609 result!287942) (=> t!328611 result!287944) (=> t!328613 result!287946) b_and!302685))))

(declare-fun e!2445113 () Bool)

(declare-fun b!3950670 () Bool)

(declare-fun tp!1203344 () Bool)

(declare-fun e!2445112 () Bool)

(assert (=> b!3950670 (= e!2445112 (and (inv!56225 (h!47418 (t!328483 suffixTokens!72))) e!2445113 tp!1203344))))

(declare-fun e!2445110 () Bool)

(declare-fun e!2445108 () Bool)

(declare-fun tp!1203343 () Bool)

(declare-fun b!3950672 () Bool)

(assert (=> b!3950672 (= e!2445108 (and tp!1203343 (inv!56221 (tag!7432 (rule!9538 (h!47418 (t!328483 suffixTokens!72))))) (inv!56224 (transformation!6572 (rule!9538 (h!47418 (t!328483 suffixTokens!72))))) e!2445110))))

(assert (=> b!3950673 (= e!2445110 (and tp!1203342 tp!1203346))))

(declare-fun b!3950671 () Bool)

(declare-fun tp!1203345 () Bool)

(assert (=> b!3950671 (= e!2445113 (and (inv!21 (value!207936 (h!47418 (t!328483 suffixTokens!72)))) e!2445108 tp!1203345))))

(assert (=> b!3950118 (= tp!1203191 e!2445112)))

(assert (= b!3950672 b!3950673))

(assert (= b!3950671 b!3950672))

(assert (= b!3950670 b!3950671))

(assert (= (and b!3950118 ((_ is Cons!41998) (t!328483 suffixTokens!72))) b!3950670))

(declare-fun m!4519621 () Bool)

(assert (=> b!3950670 m!4519621))

(declare-fun m!4519623 () Bool)

(assert (=> b!3950672 m!4519623))

(declare-fun m!4519625 () Bool)

(assert (=> b!3950672 m!4519625))

(declare-fun m!4519627 () Bool)

(assert (=> b!3950671 m!4519627))

(declare-fun b!3950677 () Bool)

(declare-fun e!2445114 () Bool)

(declare-fun tp!1203349 () Bool)

(declare-fun tp!1203348 () Bool)

(assert (=> b!3950677 (= e!2445114 (and tp!1203349 tp!1203348))))

(declare-fun b!3950676 () Bool)

(declare-fun tp!1203351 () Bool)

(assert (=> b!3950676 (= e!2445114 tp!1203351)))

(declare-fun b!3950675 () Bool)

(declare-fun tp!1203350 () Bool)

(declare-fun tp!1203347 () Bool)

(assert (=> b!3950675 (= e!2445114 (and tp!1203350 tp!1203347))))

(assert (=> b!3950119 (= tp!1203196 e!2445114)))

(declare-fun b!3950674 () Bool)

(assert (=> b!3950674 (= e!2445114 tp_is_empty!19925)))

(assert (= (and b!3950119 ((_ is ElementMatch!11477) (regex!6572 (rule!9538 (h!47418 prefixTokens!80))))) b!3950674))

(assert (= (and b!3950119 ((_ is Concat!18280) (regex!6572 (rule!9538 (h!47418 prefixTokens!80))))) b!3950675))

(assert (= (and b!3950119 ((_ is Star!11477) (regex!6572 (rule!9538 (h!47418 prefixTokens!80))))) b!3950676))

(assert (= (and b!3950119 ((_ is Union!11477) (regex!6572 (rule!9538 (h!47418 prefixTokens!80))))) b!3950677))

(declare-fun b!3950681 () Bool)

(declare-fun b_free!108525 () Bool)

(declare-fun b_next!109229 () Bool)

(assert (=> b!3950681 (= b_free!108525 (not b_next!109229))))

(declare-fun t!328615 () Bool)

(declare-fun tb!237759 () Bool)

(assert (=> (and b!3950681 (= (toValue!9048 (transformation!6572 (rule!9538 (h!47418 (t!328483 prefixTokens!80))))) (toValue!9048 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))))) t!328615) tb!237759))

(declare-fun result!287948 () Bool)

(assert (= result!287948 result!287814))

(assert (=> d!1171603 t!328615))

(declare-fun b_and!302687 () Bool)

(declare-fun tp!1203352 () Bool)

(assert (=> b!3950681 (= tp!1203352 (and (=> t!328615 result!287948) b_and!302687))))

(declare-fun b_free!108527 () Bool)

(declare-fun b_next!109231 () Bool)

(assert (=> b!3950681 (= b_free!108527 (not b_next!109231))))

(declare-fun t!328617 () Bool)

(declare-fun tb!237761 () Bool)

(assert (=> (and b!3950681 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 (t!328483 prefixTokens!80))))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 lt!1380770)))))) t!328617) tb!237761))

(declare-fun result!287950 () Bool)

(assert (= result!287950 result!287824))

(assert (=> d!1171609 t!328617))

(declare-fun tb!237763 () Bool)

(declare-fun t!328619 () Bool)

(assert (=> (and b!3950681 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 (t!328483 prefixTokens!80))))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72))))) t!328619) tb!237763))

(declare-fun result!287952 () Bool)

(assert (= result!287952 result!287896))

(assert (=> b!3950569 t!328619))

(declare-fun t!328621 () Bool)

(declare-fun tb!237765 () Bool)

(assert (=> (and b!3950681 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 (t!328483 prefixTokens!80))))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80))))) t!328621) tb!237765))

(declare-fun result!287954 () Bool)

(assert (= result!287954 result!287904))

(assert (=> b!3950573 t!328621))

(declare-fun t!328623 () Bool)

(declare-fun tb!237767 () Bool)

(assert (=> (and b!3950681 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 (t!328483 prefixTokens!80))))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417)))))) t!328623) tb!237767))

(declare-fun result!287956 () Bool)

(assert (= result!287956 result!287912))

(assert (=> b!3950613 t!328623))

(declare-fun b_and!302689 () Bool)

(declare-fun tp!1203356 () Bool)

(assert (=> b!3950681 (= tp!1203356 (and (=> t!328617 result!287950) (=> t!328619 result!287952) (=> t!328621 result!287954) (=> t!328623 result!287956) b_and!302689))))

(declare-fun tp!1203354 () Bool)

(declare-fun e!2445120 () Bool)

(declare-fun e!2445119 () Bool)

(declare-fun b!3950678 () Bool)

(assert (=> b!3950678 (= e!2445119 (and (inv!56225 (h!47418 (t!328483 prefixTokens!80))) e!2445120 tp!1203354))))

(declare-fun e!2445117 () Bool)

(declare-fun b!3950680 () Bool)

(declare-fun tp!1203353 () Bool)

(declare-fun e!2445115 () Bool)

(assert (=> b!3950680 (= e!2445115 (and tp!1203353 (inv!56221 (tag!7432 (rule!9538 (h!47418 (t!328483 prefixTokens!80))))) (inv!56224 (transformation!6572 (rule!9538 (h!47418 (t!328483 prefixTokens!80))))) e!2445117))))

(assert (=> b!3950681 (= e!2445117 (and tp!1203352 tp!1203356))))

(declare-fun b!3950679 () Bool)

(declare-fun tp!1203355 () Bool)

(assert (=> b!3950679 (= e!2445120 (and (inv!21 (value!207936 (h!47418 (t!328483 prefixTokens!80)))) e!2445115 tp!1203355))))

(assert (=> b!3950117 (= tp!1203188 e!2445119)))

(assert (= b!3950680 b!3950681))

(assert (= b!3950679 b!3950680))

(assert (= b!3950678 b!3950679))

(assert (= (and b!3950117 ((_ is Cons!41998) (t!328483 prefixTokens!80))) b!3950678))

(declare-fun m!4519629 () Bool)

(assert (=> b!3950678 m!4519629))

(declare-fun m!4519631 () Bool)

(assert (=> b!3950680 m!4519631))

(declare-fun m!4519633 () Bool)

(assert (=> b!3950680 m!4519633))

(declare-fun m!4519635 () Bool)

(assert (=> b!3950679 m!4519635))

(declare-fun b!3950682 () Bool)

(declare-fun e!2445121 () Bool)

(declare-fun tp!1203357 () Bool)

(assert (=> b!3950682 (= e!2445121 (and tp_is_empty!19925 tp!1203357))))

(assert (=> b!3950106 (= tp!1203208 e!2445121)))

(assert (= (and b!3950106 ((_ is Cons!41996) (originalCharacters!7172 (h!47418 suffixTokens!72)))) b!3950682))

(declare-fun b!3950686 () Bool)

(declare-fun e!2445122 () Bool)

(declare-fun tp!1203360 () Bool)

(declare-fun tp!1203359 () Bool)

(assert (=> b!3950686 (= e!2445122 (and tp!1203360 tp!1203359))))

(declare-fun b!3950685 () Bool)

(declare-fun tp!1203362 () Bool)

(assert (=> b!3950685 (= e!2445122 tp!1203362)))

(declare-fun b!3950684 () Bool)

(declare-fun tp!1203361 () Bool)

(declare-fun tp!1203358 () Bool)

(assert (=> b!3950684 (= e!2445122 (and tp!1203361 tp!1203358))))

(assert (=> b!3950097 (= tp!1203187 e!2445122)))

(declare-fun b!3950683 () Bool)

(assert (=> b!3950683 (= e!2445122 tp_is_empty!19925)))

(assert (= (and b!3950097 ((_ is ElementMatch!11477) (regex!6572 (h!47417 rules!2768)))) b!3950683))

(assert (= (and b!3950097 ((_ is Concat!18280) (regex!6572 (h!47417 rules!2768)))) b!3950684))

(assert (= (and b!3950097 ((_ is Star!11477) (regex!6572 (h!47417 rules!2768)))) b!3950685))

(assert (= (and b!3950097 ((_ is Union!11477) (regex!6572 (h!47417 rules!2768)))) b!3950686))

(declare-fun b_lambda!115585 () Bool)

(assert (= b_lambda!115583 (or (and b!3950114 b_free!108495 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))))) (and b!3950681 b_free!108527 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 (t!328483 prefixTokens!80))))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))))) (and b!3950658 b_free!108519 (= (toChars!8907 (transformation!6572 (h!47417 (t!328482 rules!2768)))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))))) (and b!3950128 b_free!108503 (= (toChars!8907 (transformation!6572 (h!47417 rules!2768))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))))) (and b!3950673 b_free!108523 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 (t!328483 suffixTokens!72))))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))))) (and b!3950108 b_free!108499) (and b!3950104 b_free!108491 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))) (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))))) b_lambda!115585)))

(declare-fun b_lambda!115587 () Bool)

(assert (= b_lambda!115581 (or (and b!3950108 b_free!108499 (= (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))))) (and b!3950104 b_free!108491) (and b!3950681 b_free!108527 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 (t!328483 prefixTokens!80))))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))))) (and b!3950673 b_free!108523 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 (t!328483 suffixTokens!72))))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))))) (and b!3950658 b_free!108519 (= (toChars!8907 (transformation!6572 (h!47417 (t!328482 rules!2768)))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))))) (and b!3950114 b_free!108495 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))))) (and b!3950128 b_free!108503 (= (toChars!8907 (transformation!6572 (h!47417 rules!2768))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))))) b_lambda!115587)))

(declare-fun b_lambda!115589 () Bool)

(assert (= b_lambda!115579 (or (and b!3950114 b_free!108495) (and b!3950128 b_free!108503 (= (toChars!8907 (transformation!6572 (h!47417 rules!2768))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))))) (and b!3950681 b_free!108527 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 (t!328483 prefixTokens!80))))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))))) (and b!3950108 b_free!108499 (= (toChars!8907 (transformation!6572 (rule!9538 (_1!23773 (v!39331 err!4417))))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))))) (and b!3950673 b_free!108523 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 (t!328483 suffixTokens!72))))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))))) (and b!3950104 b_free!108491 (= (toChars!8907 (transformation!6572 (rule!9538 (h!47418 prefixTokens!80)))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))))) (and b!3950658 b_free!108519 (= (toChars!8907 (transformation!6572 (h!47417 (t!328482 rules!2768)))) (toChars!8907 (transformation!6572 (rule!9538 (h!47418 suffixTokens!72)))))) b_lambda!115589)))

(check-sat b_and!302603 (not b!3950643) (not b!3950576) (not b!3950641) (not b!3950333) (not d!1171609) (not d!1171525) (not d!1171655) (not b_next!109229) (not b_next!109201) (not b!3950679) b_and!302671 (not b!3950577) b_and!302677 (not b_next!109221) (not b!3950676) (not b_next!109197) (not b!3950682) (not b!3950573) (not d!1171591) (not d!1171645) (not b!3950592) (not d!1171613) (not tb!237715) (not b!3950402) (not b!3950613) (not b!3950336) (not d!1171515) (not b!3950445) (not b!3950647) (not d!1171657) (not b!3950615) (not d!1171599) (not b!3950163) (not b!3950586) (not b!3950625) (not b!3950337) (not b!3950680) (not b!3950557) (not b_next!109227) (not b!3950338) (not d!1171649) (not d!1171671) (not b!3950136) (not bm!285209) (not d!1171651) (not d!1171605) (not d!1171631) (not b!3950598) (not b!3950670) (not b!3950195) (not d!1171589) (not b!3950656) (not b!3950671) (not b!3950596) (not b!3950684) (not b!3950147) (not d!1171595) (not b!3950428) (not b!3950153) (not d!1171639) (not b!3950672) (not b!3950571) b_and!302675 (not b!3950463) (not d!1171579) (not b!3950659) (not b!3950149) (not d!1171673) (not b!3950462) (not b!3950597) (not b!3950594) (not b!3950642) (not b!3950150) (not b!3950562) (not b!3950678) (not b!3950626) (not b_lambda!115565) tp_is_empty!19925 b_and!302687 (not b!3950584) (not b_lambda!115585) (not b!3950619) (not b!3950657) (not b!3950618) (not b!3950556) b_and!302689 (not b!3950425) (not b!3950640) (not b!3950194) (not b!3950595) (not b!3950639) (not b!3950558) (not b!3950574) (not b_lambda!115589) (not d!1171597) (not b!3950616) (not b!3950335) (not d!1171667) (not d!1171663) (not b!3950330) (not b!3950398) b_and!302683 (not tb!237653) (not b!3950600) (not b!3950164) b_and!302607 (not b!3950372) (not bm!285207) (not b!3950401) (not b!3950686) (not b!3950685) (not b_lambda!115587) b_and!302681 (not d!1171669) (not b!3950645) b_and!302605 (not b!3950578) (not d!1171659) (not d!1171529) (not b!3950604) (not b_next!109231) (not b!3950334) (not b!3950599) (not b!3950371) (not b_next!109223) (not tb!237731) (not b!3950646) (not b!3950601) (not b!3950331) (not b!3950564) (not b!3950606) (not b_next!109193) (not b!3950614) (not b!3950575) (not b_next!109203) (not b!3950403) (not tb!237645) (not b!3950581) b_and!302673 b_and!302685 (not b!3950569) (not b!3950572) (not b!3950570) (not b_next!109207) (not b!3950607) (not b_next!109195) (not b_next!109199) (not b!3950193) (not b!3950588) (not b!3950563) (not b!3950591) (not d!1171675) (not b!3950677) (not b_lambda!115563) (not b!3950585) (not b!3950589) (not b!3950375) (not d!1171593) (not b!3950675) (not b!3950638) (not b!3950360) (not b_next!109205) (not b!3950559) (not b_next!109225) (not d!1171587) b_and!302609 (not b!3950561) (not tb!237723) (not b!3950611) (not b!3950610) b_and!302679)
(check-sat (not b_next!109197) (not b_next!109227) b_and!302603 b_and!302675 b_and!302687 b_and!302689 b_and!302681 b_and!302605 (not b_next!109231) (not b_next!109223) (not b_next!109229) (not b_next!109201) b_and!302671 b_and!302677 (not b_next!109221) b_and!302607 b_and!302683 (not b_next!109193) (not b_next!109203) (not b_next!109207) b_and!302673 b_and!302685 (not b_next!109195) (not b_next!109199) (not b_next!109205) (not b_next!109225) b_and!302679 b_and!302609)
