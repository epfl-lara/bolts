; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!331750 () Bool)

(assert start!331750)

(declare-fun b!3578952 () Bool)

(declare-fun b_free!91633 () Bool)

(declare-fun b_next!92337 () Bool)

(assert (=> b!3578952 (= b_free!91633 (not b_next!92337))))

(declare-fun tp!1094849 () Bool)

(declare-fun b_and!257903 () Bool)

(assert (=> b!3578952 (= tp!1094849 b_and!257903)))

(declare-fun b_free!91635 () Bool)

(declare-fun b_next!92339 () Bool)

(assert (=> b!3578952 (= b_free!91635 (not b_next!92339))))

(declare-fun tp!1094855 () Bool)

(declare-fun b_and!257905 () Bool)

(assert (=> b!3578952 (= tp!1094855 b_and!257905)))

(declare-fun b!3578937 () Bool)

(declare-fun b_free!91637 () Bool)

(declare-fun b_next!92341 () Bool)

(assert (=> b!3578937 (= b_free!91637 (not b_next!92341))))

(declare-fun tp!1094856 () Bool)

(declare-fun b_and!257907 () Bool)

(assert (=> b!3578937 (= tp!1094856 b_and!257907)))

(declare-fun b_free!91639 () Bool)

(declare-fun b_next!92343 () Bool)

(assert (=> b!3578937 (= b_free!91639 (not b_next!92343))))

(declare-fun tp!1094845 () Bool)

(declare-fun b_and!257909 () Bool)

(assert (=> b!3578937 (= tp!1094845 b_and!257909)))

(declare-fun b!3578954 () Bool)

(declare-fun b_free!91641 () Bool)

(declare-fun b_next!92345 () Bool)

(assert (=> b!3578954 (= b_free!91641 (not b_next!92345))))

(declare-fun tp!1094847 () Bool)

(declare-fun b_and!257911 () Bool)

(assert (=> b!3578954 (= tp!1094847 b_and!257911)))

(declare-fun b_free!91643 () Bool)

(declare-fun b_next!92347 () Bool)

(assert (=> b!3578954 (= b_free!91643 (not b_next!92347))))

(declare-fun tp!1094854 () Bool)

(declare-fun b_and!257913 () Bool)

(assert (=> b!3578954 (= tp!1094854 b_and!257913)))

(declare-fun bs!569787 () Bool)

(declare-fun b!3578961 () Bool)

(declare-fun b!3578956 () Bool)

(assert (= bs!569787 (and b!3578961 b!3578956)))

(declare-fun lambda!123697 () Int)

(declare-fun lambda!123696 () Int)

(assert (=> bs!569787 (not (= lambda!123697 lambda!123696))))

(declare-fun b!3578980 () Bool)

(declare-fun e!2214142 () Bool)

(assert (=> b!3578980 (= e!2214142 true)))

(declare-fun b!3578979 () Bool)

(declare-fun e!2214141 () Bool)

(assert (=> b!3578979 (= e!2214141 e!2214142)))

(declare-fun b!3578978 () Bool)

(declare-fun e!2214140 () Bool)

(assert (=> b!3578978 (= e!2214140 e!2214141)))

(assert (=> b!3578961 e!2214140))

(assert (= b!3578979 b!3578980))

(assert (= b!3578978 b!3578979))

(declare-datatypes ((C!20748 0))(
  ( (C!20749 (val!12422 Int)) )
))
(declare-datatypes ((Regex!10281 0))(
  ( (ElementMatch!10281 (c!620350 C!20748)) (Concat!16033 (regOne!21074 Regex!10281) (regTwo!21074 Regex!10281)) (EmptyExpr!10281) (Star!10281 (reg!10610 Regex!10281)) (EmptyLang!10281) (Union!10281 (regOne!21075 Regex!10281) (regTwo!21075 Regex!10281)) )
))
(declare-datatypes ((List!37678 0))(
  ( (Nil!37554) (Cons!37554 (h!42974 (_ BitVec 16)) (t!290163 List!37678)) )
))
(declare-datatypes ((TokenValue!5752 0))(
  ( (FloatLiteralValue!11504 (text!40709 List!37678)) (TokenValueExt!5751 (__x!23721 Int)) (Broken!28760 (value!177811 List!37678)) (Object!5875) (End!5752) (Def!5752) (Underscore!5752) (Match!5752) (Else!5752) (Error!5752) (Case!5752) (If!5752) (Extends!5752) (Abstract!5752) (Class!5752) (Val!5752) (DelimiterValue!11504 (del!5812 List!37678)) (KeywordValue!5758 (value!177812 List!37678)) (CommentValue!11504 (value!177813 List!37678)) (WhitespaceValue!11504 (value!177814 List!37678)) (IndentationValue!5752 (value!177815 List!37678)) (String!42093) (Int32!5752) (Broken!28761 (value!177816 List!37678)) (Boolean!5753) (Unit!53590) (OperatorValue!5755 (op!5812 List!37678)) (IdentifierValue!11504 (value!177817 List!37678)) (IdentifierValue!11505 (value!177818 List!37678)) (WhitespaceValue!11505 (value!177819 List!37678)) (True!11504) (False!11504) (Broken!28762 (value!177820 List!37678)) (Broken!28763 (value!177821 List!37678)) (True!11505) (RightBrace!5752) (RightBracket!5752) (Colon!5752) (Null!5752) (Comma!5752) (LeftBracket!5752) (False!11505) (LeftBrace!5752) (ImaginaryLiteralValue!5752 (text!40710 List!37678)) (StringLiteralValue!17256 (value!177822 List!37678)) (EOFValue!5752 (value!177823 List!37678)) (IdentValue!5752 (value!177824 List!37678)) (DelimiterValue!11505 (value!177825 List!37678)) (DedentValue!5752 (value!177826 List!37678)) (NewLineValue!5752 (value!177827 List!37678)) (IntegerValue!17256 (value!177828 (_ BitVec 32)) (text!40711 List!37678)) (IntegerValue!17257 (value!177829 Int) (text!40712 List!37678)) (Times!5752) (Or!5752) (Equal!5752) (Minus!5752) (Broken!28764 (value!177830 List!37678)) (And!5752) (Div!5752) (LessEqual!5752) (Mod!5752) (Concat!16034) (Not!5752) (Plus!5752) (SpaceValue!5752 (value!177831 List!37678)) (IntegerValue!17258 (value!177832 Int) (text!40713 List!37678)) (StringLiteralValue!17257 (text!40714 List!37678)) (FloatLiteralValue!11505 (text!40715 List!37678)) (BytesLiteralValue!5752 (value!177833 List!37678)) (CommentValue!11505 (value!177834 List!37678)) (StringLiteralValue!17258 (value!177835 List!37678)) (ErrorTokenValue!5752 (msg!5813 List!37678)) )
))
(declare-datatypes ((List!37679 0))(
  ( (Nil!37555) (Cons!37555 (h!42975 C!20748) (t!290164 List!37679)) )
))
(declare-datatypes ((IArray!22843 0))(
  ( (IArray!22844 (innerList!11479 List!37679)) )
))
(declare-datatypes ((Conc!11419 0))(
  ( (Node!11419 (left!29374 Conc!11419) (right!29704 Conc!11419) (csize!23068 Int) (cheight!11630 Int)) (Leaf!17791 (xs!14621 IArray!22843) (csize!23069 Int)) (Empty!11419) )
))
(declare-datatypes ((BalanceConc!22452 0))(
  ( (BalanceConc!22453 (c!620351 Conc!11419)) )
))
(declare-datatypes ((String!42094 0))(
  ( (String!42095 (value!177836 String)) )
))
(declare-datatypes ((TokenValueInjection!10932 0))(
  ( (TokenValueInjection!10933 (toValue!7794 Int) (toChars!7653 Int)) )
))
(declare-datatypes ((Rule!10844 0))(
  ( (Rule!10845 (regex!5522 Regex!10281) (tag!6188 String!42094) (isSeparator!5522 Bool) (transformation!5522 TokenValueInjection!10932)) )
))
(declare-datatypes ((List!37680 0))(
  ( (Nil!37556) (Cons!37556 (h!42976 Rule!10844) (t!290165 List!37680)) )
))
(declare-fun rules!2135 () List!37680)

(get-info :version)

(assert (= (and b!3578961 ((_ is Cons!37556) rules!2135)) b!3578978))

(declare-fun order!20415 () Int)

(declare-fun order!20413 () Int)

(declare-fun dynLambda!16163 (Int Int) Int)

(declare-fun dynLambda!16164 (Int Int) Int)

(assert (=> b!3578980 (< (dynLambda!16163 order!20413 (toValue!7794 (transformation!5522 (h!42976 rules!2135)))) (dynLambda!16164 order!20415 lambda!123697))))

(declare-fun order!20417 () Int)

(declare-fun dynLambda!16165 (Int Int) Int)

(assert (=> b!3578980 (< (dynLambda!16165 order!20417 (toChars!7653 (transformation!5522 (h!42976 rules!2135)))) (dynLambda!16164 order!20415 lambda!123697))))

(assert (=> b!3578961 true))

(declare-fun b!3578923 () Bool)

(declare-fun e!2214109 () Bool)

(declare-fun e!2214120 () Bool)

(assert (=> b!3578923 (= e!2214109 e!2214120)))

(declare-fun res!1443953 () Bool)

(assert (=> b!3578923 (=> res!1443953 e!2214120)))

(declare-datatypes ((Token!10410 0))(
  ( (Token!10411 (value!177837 TokenValue!5752) (rule!8234 Rule!10844) (size!28649 Int) (originalCharacters!6236 List!37679)) )
))
(declare-datatypes ((List!37681 0))(
  ( (Nil!37557) (Cons!37557 (h!42977 Token!10410) (t!290166 List!37681)) )
))
(declare-fun tokens!494 () List!37681)

(assert (=> b!3578923 (= res!1443953 (or (isSeparator!5522 (rule!8234 (h!42977 tokens!494))) (isSeparator!5522 (rule!8234 (h!42977 (t!290166 tokens!494))))))))

(declare-datatypes ((Unit!53591 0))(
  ( (Unit!53592) )
))
(declare-fun lt!1228312 () Unit!53591)

(declare-fun forallContained!1469 (List!37681 Int Token!10410) Unit!53591)

(assert (=> b!3578923 (= lt!1228312 (forallContained!1469 tokens!494 lambda!123696 (h!42977 (t!290166 tokens!494))))))

(declare-fun lt!1228326 () Unit!53591)

(assert (=> b!3578923 (= lt!1228326 (forallContained!1469 tokens!494 lambda!123696 (h!42977 tokens!494)))))

(declare-fun b!3578924 () Bool)

(declare-fun e!2214116 () Bool)

(declare-fun e!2214131 () Bool)

(assert (=> b!3578924 (= e!2214116 e!2214131)))

(declare-fun res!1443956 () Bool)

(assert (=> b!3578924 (=> (not res!1443956) (not e!2214131))))

(declare-datatypes ((LexerInterface!5111 0))(
  ( (LexerInterfaceExt!5108 (__x!23722 Int)) (Lexer!5109) )
))
(declare-fun thiss!18206 () LexerInterface!5111)

(declare-datatypes ((IArray!22845 0))(
  ( (IArray!22846 (innerList!11480 List!37681)) )
))
(declare-datatypes ((Conc!11420 0))(
  ( (Node!11420 (left!29375 Conc!11420) (right!29705 Conc!11420) (csize!23070 Int) (cheight!11631 Int)) (Leaf!17792 (xs!14622 IArray!22845) (csize!23071 Int)) (Empty!11420) )
))
(declare-datatypes ((BalanceConc!22454 0))(
  ( (BalanceConc!22455 (c!620352 Conc!11420)) )
))
(declare-fun lt!1228320 () BalanceConc!22454)

(declare-fun rulesProduceEachTokenIndividually!1562 (LexerInterface!5111 List!37680 BalanceConc!22454) Bool)

(assert (=> b!3578924 (= res!1443956 (rulesProduceEachTokenIndividually!1562 thiss!18206 rules!2135 lt!1228320))))

(declare-fun seqFromList!4097 (List!37681) BalanceConc!22454)

(assert (=> b!3578924 (= lt!1228320 (seqFromList!4097 tokens!494))))

(declare-fun b!3578925 () Bool)

(declare-fun e!2214133 () Bool)

(assert (=> b!3578925 (= e!2214131 (not e!2214133))))

(declare-fun res!1443957 () Bool)

(assert (=> b!3578925 (=> res!1443957 e!2214133)))

(declare-fun lt!1228329 () List!37679)

(declare-fun lt!1228311 () List!37679)

(assert (=> b!3578925 (= res!1443957 (not (= lt!1228329 lt!1228311)))))

(declare-fun printList!1659 (LexerInterface!5111 List!37681) List!37679)

(assert (=> b!3578925 (= lt!1228311 (printList!1659 thiss!18206 (Cons!37557 (h!42977 tokens!494) Nil!37557)))))

(declare-fun lt!1228292 () BalanceConc!22452)

(declare-fun list!13788 (BalanceConc!22452) List!37679)

(assert (=> b!3578925 (= lt!1228329 (list!13788 lt!1228292))))

(declare-fun lt!1228304 () BalanceConc!22454)

(declare-fun printTailRec!1606 (LexerInterface!5111 BalanceConc!22454 Int BalanceConc!22452) BalanceConc!22452)

(assert (=> b!3578925 (= lt!1228292 (printTailRec!1606 thiss!18206 lt!1228304 0 (BalanceConc!22453 Empty!11419)))))

(declare-fun print!2176 (LexerInterface!5111 BalanceConc!22454) BalanceConc!22452)

(assert (=> b!3578925 (= lt!1228292 (print!2176 thiss!18206 lt!1228304))))

(declare-fun singletonSeq!2618 (Token!10410) BalanceConc!22454)

(assert (=> b!3578925 (= lt!1228304 (singletonSeq!2618 (h!42977 tokens!494)))))

(declare-fun b!3578926 () Bool)

(declare-fun res!1443970 () Bool)

(declare-fun e!2214107 () Bool)

(assert (=> b!3578926 (=> res!1443970 e!2214107)))

(declare-datatypes ((tuple2!37494 0))(
  ( (tuple2!37495 (_1!21881 BalanceConc!22454) (_2!21881 BalanceConc!22452)) )
))
(declare-fun lt!1228334 () tuple2!37494)

(declare-fun apply!9054 (BalanceConc!22454 Int) Token!10410)

(assert (=> b!3578926 (= res!1443970 (not (= (apply!9054 (_1!21881 lt!1228334) 0) (h!42977 (t!290166 tokens!494)))))))

(declare-fun b!3578927 () Bool)

(declare-fun e!2214104 () Bool)

(assert (=> b!3578927 (= e!2214104 false)))

(declare-fun b!3578928 () Bool)

(declare-fun e!2214110 () Bool)

(declare-fun e!2214099 () Bool)

(assert (=> b!3578928 (= e!2214110 e!2214099)))

(declare-fun res!1443955 () Bool)

(assert (=> b!3578928 (=> res!1443955 e!2214099)))

(declare-fun lt!1228332 () List!37679)

(declare-fun lt!1228319 () List!37679)

(assert (=> b!3578928 (= res!1443955 (not (= lt!1228332 lt!1228319)))))

(declare-fun lt!1228315 () List!37679)

(assert (=> b!3578928 (= lt!1228315 lt!1228319)))

(declare-fun lt!1228338 () List!37679)

(declare-fun lt!1228308 () List!37679)

(declare-fun ++!9347 (List!37679 List!37679) List!37679)

(assert (=> b!3578928 (= lt!1228319 (++!9347 lt!1228338 lt!1228308))))

(declare-fun lt!1228306 () Unit!53591)

(declare-fun lt!1228337 () List!37679)

(declare-fun lt!1228297 () List!37679)

(declare-fun lemmaConcatAssociativity!2064 (List!37679 List!37679 List!37679) Unit!53591)

(assert (=> b!3578928 (= lt!1228306 (lemmaConcatAssociativity!2064 lt!1228338 lt!1228297 lt!1228337))))

(declare-fun b!3578929 () Bool)

(declare-fun e!2214128 () Bool)

(assert (=> b!3578929 (= e!2214128 e!2214109)))

(declare-fun res!1443976 () Bool)

(assert (=> b!3578929 (=> res!1443976 e!2214109)))

(declare-fun lt!1228324 () BalanceConc!22452)

(declare-fun isEmpty!22113 (BalanceConc!22454) Bool)

(declare-fun lex!2437 (LexerInterface!5111 List!37680 BalanceConc!22452) tuple2!37494)

(assert (=> b!3578929 (= res!1443976 (isEmpty!22113 (_1!21881 (lex!2437 thiss!18206 rules!2135 lt!1228324))))))

(declare-fun seqFromList!4098 (List!37679) BalanceConc!22452)

(assert (=> b!3578929 (= lt!1228324 (seqFromList!4098 lt!1228338))))

(declare-fun separatorToken!241 () Token!10410)

(declare-fun e!2214111 () Bool)

(declare-fun b!3578930 () Bool)

(declare-fun tp!1094851 () Bool)

(declare-fun e!2214127 () Bool)

(declare-fun inv!50833 (String!42094) Bool)

(declare-fun inv!50836 (TokenValueInjection!10932) Bool)

(assert (=> b!3578930 (= e!2214111 (and tp!1094851 (inv!50833 (tag!6188 (rule!8234 separatorToken!241))) (inv!50836 (transformation!5522 (rule!8234 separatorToken!241))) e!2214127))))

(declare-fun b!3578931 () Bool)

(declare-fun res!1443961 () Bool)

(assert (=> b!3578931 (=> (not res!1443961) (not e!2214131))))

(declare-fun sepAndNonSepRulesDisjointChars!1716 (List!37680 List!37680) Bool)

(assert (=> b!3578931 (= res!1443961 (sepAndNonSepRulesDisjointChars!1716 rules!2135 rules!2135))))

(declare-fun e!2214115 () Bool)

(declare-fun lt!1228333 () List!37681)

(declare-fun b!3578932 () Bool)

(declare-fun filter!542 (List!37681 Int) List!37681)

(assert (=> b!3578932 (= e!2214115 (= (filter!542 lt!1228333 lambda!123696) tokens!494))))

(declare-fun b!3578933 () Bool)

(declare-fun e!2214118 () Unit!53591)

(declare-fun Unit!53593 () Unit!53591)

(assert (=> b!3578933 (= e!2214118 Unit!53593)))

(declare-fun lt!1228295 () C!20748)

(declare-fun lt!1228328 () List!37679)

(declare-fun lt!1228310 () Unit!53591)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!580 (Regex!10281 List!37679 C!20748) Unit!53591)

(assert (=> b!3578933 (= lt!1228310 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!580 (regex!5522 (rule!8234 (h!42977 (t!290166 tokens!494)))) lt!1228328 lt!1228295))))

(declare-fun res!1443962 () Bool)

(declare-fun matchR!4865 (Regex!10281 List!37679) Bool)

(assert (=> b!3578933 (= res!1443962 (not (matchR!4865 (regex!5522 (rule!8234 (h!42977 (t!290166 tokens!494)))) lt!1228328)))))

(assert (=> b!3578933 (=> (not res!1443962) (not e!2214104))))

(assert (=> b!3578933 e!2214104))

(declare-fun b!3578934 () Bool)

(declare-fun e!2214112 () Bool)

(declare-fun e!2214103 () Bool)

(assert (=> b!3578934 (= e!2214112 e!2214103)))

(declare-fun res!1443967 () Bool)

(assert (=> b!3578934 (=> (not res!1443967) (not e!2214103))))

(declare-fun lt!1228289 () Rule!10844)

(assert (=> b!3578934 (= res!1443967 (matchR!4865 (regex!5522 lt!1228289) lt!1228328))))

(declare-datatypes ((Option!7715 0))(
  ( (None!7714) (Some!7714 (v!37350 Rule!10844)) )
))
(declare-fun lt!1228305 () Option!7715)

(declare-fun get!12094 (Option!7715) Rule!10844)

(assert (=> b!3578934 (= lt!1228289 (get!12094 lt!1228305))))

(declare-fun res!1443977 () Bool)

(assert (=> start!331750 (=> (not res!1443977) (not e!2214116))))

(assert (=> start!331750 (= res!1443977 ((_ is Lexer!5109) thiss!18206))))

(assert (=> start!331750 e!2214116))

(assert (=> start!331750 true))

(declare-fun e!2214121 () Bool)

(assert (=> start!331750 e!2214121))

(declare-fun e!2214117 () Bool)

(declare-fun inv!50837 (Token!10410) Bool)

(assert (=> start!331750 (and (inv!50837 separatorToken!241) e!2214117)))

(declare-fun e!2214113 () Bool)

(assert (=> start!331750 e!2214113))

(declare-fun b!3578935 () Bool)

(assert (=> b!3578935 (= e!2214103 (= (rule!8234 (h!42977 (t!290166 tokens!494))) lt!1228289))))

(declare-fun b!3578936 () Bool)

(declare-fun res!1443971 () Bool)

(assert (=> b!3578936 (=> (not res!1443971) (not e!2214131))))

(assert (=> b!3578936 (= res!1443971 (and (not ((_ is Nil!37557) tokens!494)) (not ((_ is Nil!37557) (t!290166 tokens!494)))))))

(declare-fun e!2214126 () Bool)

(assert (=> b!3578937 (= e!2214126 (and tp!1094856 tp!1094845))))

(declare-fun tp!1094848 () Bool)

(declare-fun b!3578938 () Bool)

(declare-fun inv!21 (TokenValue!5752) Bool)

(assert (=> b!3578938 (= e!2214117 (and (inv!21 (value!177837 separatorToken!241)) e!2214111 tp!1094848))))

(declare-fun tp!1094844 () Bool)

(declare-fun b!3578939 () Bool)

(declare-fun e!2214096 () Bool)

(declare-fun e!2214098 () Bool)

(assert (=> b!3578939 (= e!2214096 (and (inv!21 (value!177837 (h!42977 tokens!494))) e!2214098 tp!1094844))))

(declare-fun b!3578940 () Bool)

(declare-fun res!1443948 () Bool)

(assert (=> b!3578940 (=> (not res!1443948) (not e!2214116))))

(declare-fun isEmpty!22114 (List!37680) Bool)

(assert (=> b!3578940 (= res!1443948 (not (isEmpty!22114 rules!2135)))))

(declare-fun tp!1094850 () Bool)

(declare-fun e!2214105 () Bool)

(declare-fun b!3578941 () Bool)

(declare-fun e!2214132 () Bool)

(assert (=> b!3578941 (= e!2214132 (and tp!1094850 (inv!50833 (tag!6188 (h!42976 rules!2135))) (inv!50836 (transformation!5522 (h!42976 rules!2135))) e!2214105))))

(declare-fun b!3578942 () Bool)

(declare-fun e!2214106 () Bool)

(assert (=> b!3578942 (= e!2214106 e!2214115)))

(declare-fun res!1443972 () Bool)

(assert (=> b!3578942 (=> res!1443972 e!2214115)))

(assert (=> b!3578942 (= res!1443972 (not (= (filter!542 lt!1228333 lambda!123696) tokens!494)))))

(declare-fun list!13789 (BalanceConc!22454) List!37681)

(declare-fun printWithSeparatorToken!170 (LexerInterface!5111 BalanceConc!22454 Token!10410) BalanceConc!22452)

(assert (=> b!3578942 (= lt!1228333 (list!13789 (_1!21881 (lex!2437 thiss!18206 rules!2135 (printWithSeparatorToken!170 thiss!18206 lt!1228320 separatorToken!241)))))))

(declare-fun b!3578943 () Bool)

(declare-fun res!1443958 () Bool)

(declare-fun e!2214125 () Bool)

(assert (=> b!3578943 (=> (not res!1443958) (not e!2214125))))

(declare-fun lt!1228330 () tuple2!37494)

(assert (=> b!3578943 (= res!1443958 (= (apply!9054 (_1!21881 lt!1228330) 0) separatorToken!241))))

(declare-fun b!3578944 () Bool)

(declare-fun res!1443952 () Bool)

(assert (=> b!3578944 (=> (not res!1443952) (not e!2214131))))

(declare-fun rulesProduceIndividualToken!2603 (LexerInterface!5111 List!37680 Token!10410) Bool)

(assert (=> b!3578944 (= res!1443952 (rulesProduceIndividualToken!2603 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3578945 () Bool)

(declare-fun e!2214097 () Bool)

(assert (=> b!3578945 (= e!2214097 e!2214110)))

(declare-fun res!1443946 () Bool)

(assert (=> b!3578945 (=> res!1443946 e!2214110)))

(assert (=> b!3578945 (= res!1443946 (not (= lt!1228332 lt!1228315)))))

(assert (=> b!3578945 (= lt!1228315 (++!9347 (++!9347 lt!1228338 lt!1228297) lt!1228337))))

(declare-fun b!3578946 () Bool)

(assert (=> b!3578946 (= e!2214133 e!2214128)))

(declare-fun res!1443954 () Bool)

(assert (=> b!3578946 (=> res!1443954 e!2214128)))

(assert (=> b!3578946 (= res!1443954 (or (not (= lt!1228311 lt!1228338)) (not (= lt!1228329 lt!1228338))))))

(declare-fun charsOf!3536 (Token!10410) BalanceConc!22452)

(assert (=> b!3578946 (= lt!1228338 (list!13788 (charsOf!3536 (h!42977 tokens!494))))))

(declare-fun b!3578947 () Bool)

(declare-fun e!2214130 () Bool)

(declare-fun lt!1228340 () Rule!10844)

(assert (=> b!3578947 (= e!2214130 (= (rule!8234 separatorToken!241) lt!1228340))))

(declare-fun b!3578948 () Bool)

(declare-fun e!2214123 () Bool)

(declare-fun lt!1228302 () Rule!10844)

(assert (=> b!3578948 (= e!2214123 (= (rule!8234 (h!42977 tokens!494)) lt!1228302))))

(declare-fun b!3578949 () Bool)

(declare-fun isEmpty!22115 (BalanceConc!22452) Bool)

(assert (=> b!3578949 (= e!2214125 (isEmpty!22115 (_2!21881 lt!1228330)))))

(declare-fun b!3578950 () Bool)

(declare-fun e!2214119 () Bool)

(assert (=> b!3578950 (= e!2214119 false)))

(declare-fun b!3578951 () Bool)

(declare-fun tp!1094853 () Bool)

(assert (=> b!3578951 (= e!2214121 (and e!2214132 tp!1094853))))

(assert (=> b!3578952 (= e!2214127 (and tp!1094849 tp!1094855))))

(declare-fun tp!1094846 () Bool)

(declare-fun b!3578953 () Bool)

(assert (=> b!3578953 (= e!2214113 (and (inv!50837 (h!42977 tokens!494)) e!2214096 tp!1094846))))

(assert (=> b!3578954 (= e!2214105 (and tp!1094847 tp!1094854))))

(declare-fun b!3578955 () Bool)

(declare-fun Unit!53594 () Unit!53591)

(assert (=> b!3578955 (= e!2214118 Unit!53594)))

(declare-fun res!1443949 () Bool)

(assert (=> b!3578956 (=> (not res!1443949) (not e!2214131))))

(declare-fun forall!8134 (List!37681 Int) Bool)

(assert (=> b!3578956 (= res!1443949 (forall!8134 tokens!494 lambda!123696))))

(declare-fun b!3578957 () Bool)

(declare-fun e!2214129 () Unit!53591)

(declare-fun Unit!53595 () Unit!53591)

(assert (=> b!3578957 (= e!2214129 Unit!53595)))

(declare-fun lt!1228301 () C!20748)

(declare-fun lt!1228293 () Unit!53591)

(assert (=> b!3578957 (= lt!1228293 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!580 (regex!5522 (rule!8234 separatorToken!241)) lt!1228297 lt!1228301))))

(declare-fun res!1443964 () Bool)

(assert (=> b!3578957 (= res!1443964 (not (matchR!4865 (regex!5522 (rule!8234 separatorToken!241)) lt!1228297)))))

(assert (=> b!3578957 (=> (not res!1443964) (not e!2214119))))

(assert (=> b!3578957 e!2214119))

(declare-fun b!3578958 () Bool)

(declare-fun res!1443947 () Bool)

(assert (=> b!3578958 (=> (not res!1443947) (not e!2214131))))

(assert (=> b!3578958 (= res!1443947 (isSeparator!5522 (rule!8234 separatorToken!241)))))

(declare-fun b!3578959 () Bool)

(declare-fun res!1443963 () Bool)

(assert (=> b!3578959 (=> (not res!1443963) (not e!2214116))))

(declare-fun rulesInvariant!4508 (LexerInterface!5111 List!37680) Bool)

(assert (=> b!3578959 (= res!1443963 (rulesInvariant!4508 thiss!18206 rules!2135))))

(declare-fun b!3578960 () Bool)

(declare-fun res!1443945 () Bool)

(assert (=> b!3578960 (=> res!1443945 e!2214106)))

(declare-datatypes ((tuple2!37496 0))(
  ( (tuple2!37497 (_1!21882 List!37681) (_2!21882 List!37679)) )
))
(declare-fun lexList!1506 (LexerInterface!5111 List!37680 List!37679) tuple2!37496)

(assert (=> b!3578960 (= res!1443945 (not (= (filter!542 (_1!21882 (lexList!1506 thiss!18206 rules!2135 lt!1228337)) lambda!123696) (t!290166 tokens!494))))))

(assert (=> b!3578961 (= e!2214099 e!2214106)))

(declare-fun res!1443974 () Bool)

(assert (=> b!3578961 (=> res!1443974 e!2214106)))

(declare-fun lt!1228317 () List!37681)

(assert (=> b!3578961 (= res!1443974 (not (= (filter!542 lt!1228317 lambda!123696) (t!290166 tokens!494))))))

(assert (=> b!3578961 (= (filter!542 lt!1228317 lambda!123696) (t!290166 tokens!494))))

(assert (=> b!3578961 (= lt!1228317 (list!13789 (_1!21881 (lex!2437 thiss!18206 rules!2135 (printWithSeparatorToken!170 thiss!18206 (seqFromList!4097 (t!290166 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1228296 () Unit!53591)

(declare-fun theoremInvertFromTokensSepTokenBetweenEach!22 (LexerInterface!5111 List!37680 List!37681 Token!10410) Unit!53591)

(assert (=> b!3578961 (= lt!1228296 (theoremInvertFromTokensSepTokenBetweenEach!22 thiss!18206 rules!2135 (t!290166 tokens!494) separatorToken!241))))

(declare-datatypes ((tuple2!37498 0))(
  ( (tuple2!37499 (_1!21883 Token!10410) (_2!21883 List!37679)) )
))
(declare-datatypes ((Option!7716 0))(
  ( (None!7715) (Some!7715 (v!37351 tuple2!37498)) )
))
(declare-fun maxPrefix!2651 (LexerInterface!5111 List!37680 List!37679) Option!7716)

(assert (=> b!3578961 (= (maxPrefix!2651 thiss!18206 rules!2135 lt!1228308) (Some!7715 (tuple2!37499 separatorToken!241 lt!1228337)))))

(declare-fun lt!1228290 () Unit!53591)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!278 (LexerInterface!5111 List!37680 Token!10410 Rule!10844 List!37679 Rule!10844) Unit!53591)

(assert (=> b!3578961 (= lt!1228290 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!278 thiss!18206 rules!2135 separatorToken!241 (rule!8234 separatorToken!241) lt!1228337 (rule!8234 (h!42977 (t!290166 tokens!494)))))))

(declare-fun lt!1228314 () List!37679)

(declare-fun contains!7124 (List!37679 C!20748) Bool)

(assert (=> b!3578961 (not (contains!7124 lt!1228314 lt!1228295))))

(declare-fun lt!1228318 () Unit!53591)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!204 (LexerInterface!5111 List!37680 List!37680 Rule!10844 Rule!10844 C!20748) Unit!53591)

(assert (=> b!3578961 (= lt!1228318 (lemmaSepRuleNotContainsCharContainedInANonSepRule!204 thiss!18206 rules!2135 rules!2135 (rule!8234 (h!42977 (t!290166 tokens!494))) (rule!8234 separatorToken!241) lt!1228295))))

(declare-fun lt!1228313 () Unit!53591)

(assert (=> b!3578961 (= lt!1228313 e!2214118)))

(declare-fun c!620349 () Bool)

(declare-fun usedCharacters!756 (Regex!10281) List!37679)

(assert (=> b!3578961 (= c!620349 (not (contains!7124 (usedCharacters!756 (regex!5522 (rule!8234 (h!42977 (t!290166 tokens!494))))) lt!1228295)))))

(declare-fun head!7459 (List!37679) C!20748)

(assert (=> b!3578961 (= lt!1228295 (head!7459 lt!1228328))))

(declare-fun maxPrefixOneRule!1818 (LexerInterface!5111 Rule!10844 List!37679) Option!7716)

(declare-fun apply!9055 (TokenValueInjection!10932 BalanceConc!22452) TokenValue!5752)

(declare-fun size!28650 (List!37679) Int)

(assert (=> b!3578961 (= (maxPrefixOneRule!1818 thiss!18206 (rule!8234 (h!42977 (t!290166 tokens!494))) lt!1228328) (Some!7715 (tuple2!37499 (Token!10411 (apply!9055 (transformation!5522 (rule!8234 (h!42977 (t!290166 tokens!494)))) (seqFromList!4098 lt!1228328)) (rule!8234 (h!42977 (t!290166 tokens!494))) (size!28650 lt!1228328) lt!1228328) Nil!37555)))))

(declare-fun lt!1228300 () Unit!53591)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!911 (LexerInterface!5111 List!37680 List!37679 List!37679 List!37679 Rule!10844) Unit!53591)

(assert (=> b!3578961 (= lt!1228300 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!911 thiss!18206 rules!2135 lt!1228328 lt!1228328 Nil!37555 (rule!8234 (h!42977 (t!290166 tokens!494)))))))

(assert (=> b!3578961 e!2214112))

(declare-fun res!1443966 () Bool)

(assert (=> b!3578961 (=> (not res!1443966) (not e!2214112))))

(declare-fun isDefined!5952 (Option!7715) Bool)

(assert (=> b!3578961 (= res!1443966 (isDefined!5952 lt!1228305))))

(declare-fun getRuleFromTag!1165 (LexerInterface!5111 List!37680 String!42094) Option!7715)

(assert (=> b!3578961 (= lt!1228305 (getRuleFromTag!1165 thiss!18206 rules!2135 (tag!6188 (rule!8234 (h!42977 (t!290166 tokens!494))))))))

(declare-fun lt!1228316 () Unit!53591)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1165 (LexerInterface!5111 List!37680 List!37679 Token!10410) Unit!53591)

(assert (=> b!3578961 (= lt!1228316 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1165 thiss!18206 rules!2135 lt!1228328 (h!42977 (t!290166 tokens!494))))))

(declare-fun lt!1228303 () Bool)

(assert (=> b!3578961 lt!1228303))

(declare-fun lt!1228288 () Unit!53591)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1100 (LexerInterface!5111 List!37680 List!37681 Token!10410) Unit!53591)

(assert (=> b!3578961 (= lt!1228288 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1100 thiss!18206 rules!2135 tokens!494 (h!42977 (t!290166 tokens!494))))))

(assert (=> b!3578961 (= (maxPrefix!2651 thiss!18206 rules!2135 lt!1228319) (Some!7715 (tuple2!37499 (h!42977 tokens!494) lt!1228308)))))

(declare-fun lt!1228321 () Unit!53591)

(assert (=> b!3578961 (= lt!1228321 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!278 thiss!18206 rules!2135 (h!42977 tokens!494) (rule!8234 (h!42977 tokens!494)) lt!1228308 (rule!8234 separatorToken!241)))))

(assert (=> b!3578961 (not (contains!7124 (usedCharacters!756 (regex!5522 (rule!8234 (h!42977 tokens!494)))) lt!1228301))))

(declare-fun lt!1228339 () Unit!53591)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!322 (LexerInterface!5111 List!37680 List!37680 Rule!10844 Rule!10844 C!20748) Unit!53591)

(assert (=> b!3578961 (= lt!1228339 (lemmaNonSepRuleNotContainsCharContainedInASepRule!322 thiss!18206 rules!2135 rules!2135 (rule!8234 (h!42977 tokens!494)) (rule!8234 separatorToken!241) lt!1228301))))

(declare-fun lt!1228327 () Unit!53591)

(assert (=> b!3578961 (= lt!1228327 (forallContained!1469 tokens!494 lambda!123697 (h!42977 (t!290166 tokens!494))))))

(declare-fun lt!1228323 () Bool)

(assert (=> b!3578961 (= lt!1228303 (not lt!1228323))))

(assert (=> b!3578961 (= lt!1228303 (rulesProduceIndividualToken!2603 thiss!18206 rules!2135 (h!42977 (t!290166 tokens!494))))))

(assert (=> b!3578961 (= lt!1228323 e!2214107)))

(declare-fun res!1443969 () Bool)

(assert (=> b!3578961 (=> res!1443969 e!2214107)))

(declare-fun size!28651 (BalanceConc!22454) Int)

(assert (=> b!3578961 (= res!1443969 (not (= (size!28651 (_1!21881 lt!1228334)) 1)))))

(declare-fun lt!1228291 () BalanceConc!22452)

(assert (=> b!3578961 (= lt!1228334 (lex!2437 thiss!18206 rules!2135 lt!1228291))))

(declare-fun lt!1228309 () BalanceConc!22454)

(assert (=> b!3578961 (= lt!1228291 (printTailRec!1606 thiss!18206 lt!1228309 0 (BalanceConc!22453 Empty!11419)))))

(assert (=> b!3578961 (= lt!1228291 (print!2176 thiss!18206 lt!1228309))))

(assert (=> b!3578961 (= lt!1228309 (singletonSeq!2618 (h!42977 (t!290166 tokens!494))))))

(assert (=> b!3578961 e!2214125))

(declare-fun res!1443960 () Bool)

(assert (=> b!3578961 (=> (not res!1443960) (not e!2214125))))

(assert (=> b!3578961 (= res!1443960 (= (size!28651 (_1!21881 lt!1228330)) 1))))

(declare-fun lt!1228325 () BalanceConc!22452)

(assert (=> b!3578961 (= lt!1228330 (lex!2437 thiss!18206 rules!2135 lt!1228325))))

(declare-fun lt!1228294 () BalanceConc!22454)

(assert (=> b!3578961 (= lt!1228325 (printTailRec!1606 thiss!18206 lt!1228294 0 (BalanceConc!22453 Empty!11419)))))

(assert (=> b!3578961 (= lt!1228325 (print!2176 thiss!18206 lt!1228294))))

(assert (=> b!3578961 (= lt!1228294 (singletonSeq!2618 separatorToken!241))))

(declare-fun lt!1228322 () Unit!53591)

(assert (=> b!3578961 (= lt!1228322 e!2214129)))

(declare-fun c!620348 () Bool)

(assert (=> b!3578961 (= c!620348 (not (contains!7124 lt!1228314 lt!1228301)))))

(assert (=> b!3578961 (= lt!1228301 (head!7459 lt!1228297))))

(assert (=> b!3578961 (= lt!1228314 (usedCharacters!756 (regex!5522 (rule!8234 separatorToken!241))))))

(declare-fun e!2214100 () Bool)

(assert (=> b!3578961 e!2214100))

(declare-fun res!1443959 () Bool)

(assert (=> b!3578961 (=> (not res!1443959) (not e!2214100))))

(declare-fun lt!1228331 () Option!7715)

(assert (=> b!3578961 (= res!1443959 (isDefined!5952 lt!1228331))))

(assert (=> b!3578961 (= lt!1228331 (getRuleFromTag!1165 thiss!18206 rules!2135 (tag!6188 (rule!8234 separatorToken!241))))))

(declare-fun lt!1228307 () Unit!53591)

(assert (=> b!3578961 (= lt!1228307 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1165 thiss!18206 rules!2135 lt!1228297 separatorToken!241))))

(assert (=> b!3578961 (= (maxPrefixOneRule!1818 thiss!18206 (rule!8234 (h!42977 tokens!494)) lt!1228338) (Some!7715 (tuple2!37499 (Token!10411 (apply!9055 (transformation!5522 (rule!8234 (h!42977 tokens!494))) lt!1228324) (rule!8234 (h!42977 tokens!494)) (size!28650 lt!1228338) lt!1228338) Nil!37555)))))

(declare-fun lt!1228299 () Unit!53591)

(assert (=> b!3578961 (= lt!1228299 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!911 thiss!18206 rules!2135 lt!1228338 lt!1228338 Nil!37555 (rule!8234 (h!42977 tokens!494))))))

(declare-fun e!2214101 () Bool)

(assert (=> b!3578961 e!2214101))

(declare-fun res!1443965 () Bool)

(assert (=> b!3578961 (=> (not res!1443965) (not e!2214101))))

(declare-fun lt!1228298 () Option!7715)

(assert (=> b!3578961 (= res!1443965 (isDefined!5952 lt!1228298))))

(assert (=> b!3578961 (= lt!1228298 (getRuleFromTag!1165 thiss!18206 rules!2135 (tag!6188 (rule!8234 (h!42977 tokens!494)))))))

(declare-fun lt!1228336 () Unit!53591)

(assert (=> b!3578961 (= lt!1228336 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1165 thiss!18206 rules!2135 lt!1228338 (h!42977 tokens!494)))))

(declare-fun lt!1228335 () Unit!53591)

(assert (=> b!3578961 (= lt!1228335 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1100 thiss!18206 rules!2135 tokens!494 (h!42977 tokens!494)))))

(declare-fun b!3578962 () Bool)

(assert (=> b!3578962 (= e!2214120 e!2214097)))

(declare-fun res!1443973 () Bool)

(assert (=> b!3578962 (=> res!1443973 e!2214097)))

(declare-fun printWithSeparatorTokenList!398 (LexerInterface!5111 List!37681 Token!10410) List!37679)

(assert (=> b!3578962 (= res!1443973 (not (= lt!1228337 (++!9347 (++!9347 lt!1228328 lt!1228297) (printWithSeparatorTokenList!398 thiss!18206 (t!290166 (t!290166 tokens!494)) separatorToken!241)))))))

(assert (=> b!3578962 (= lt!1228328 (list!13788 (charsOf!3536 (h!42977 (t!290166 tokens!494)))))))

(assert (=> b!3578962 (= lt!1228308 (++!9347 lt!1228297 lt!1228337))))

(assert (=> b!3578962 (= lt!1228297 (list!13788 (charsOf!3536 separatorToken!241)))))

(assert (=> b!3578962 (= lt!1228337 (printWithSeparatorTokenList!398 thiss!18206 (t!290166 tokens!494) separatorToken!241))))

(assert (=> b!3578962 (= lt!1228332 (printWithSeparatorTokenList!398 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3578963 () Bool)

(declare-fun tp!1094852 () Bool)

(assert (=> b!3578963 (= e!2214098 (and tp!1094852 (inv!50833 (tag!6188 (rule!8234 (h!42977 tokens!494)))) (inv!50836 (transformation!5522 (rule!8234 (h!42977 tokens!494)))) e!2214126))))

(declare-fun b!3578964 () Bool)

(declare-fun res!1443951 () Bool)

(assert (=> b!3578964 (=> res!1443951 e!2214128)))

(assert (=> b!3578964 (= res!1443951 (not (rulesProduceIndividualToken!2603 thiss!18206 rules!2135 (h!42977 tokens!494))))))

(declare-fun b!3578965 () Bool)

(assert (=> b!3578965 (= e!2214101 e!2214123)))

(declare-fun res!1443968 () Bool)

(assert (=> b!3578965 (=> (not res!1443968) (not e!2214123))))

(assert (=> b!3578965 (= res!1443968 (matchR!4865 (regex!5522 lt!1228302) lt!1228338))))

(assert (=> b!3578965 (= lt!1228302 (get!12094 lt!1228298))))

(declare-fun b!3578966 () Bool)

(assert (=> b!3578966 (= e!2214100 e!2214130)))

(declare-fun res!1443975 () Bool)

(assert (=> b!3578966 (=> (not res!1443975) (not e!2214130))))

(assert (=> b!3578966 (= res!1443975 (matchR!4865 (regex!5522 lt!1228340) lt!1228297))))

(assert (=> b!3578966 (= lt!1228340 (get!12094 lt!1228331))))

(declare-fun b!3578967 () Bool)

(declare-fun Unit!53596 () Unit!53591)

(assert (=> b!3578967 (= e!2214129 Unit!53596)))

(declare-fun b!3578968 () Bool)

(declare-fun res!1443950 () Bool)

(assert (=> b!3578968 (=> res!1443950 e!2214106)))

(assert (=> b!3578968 (= res!1443950 (not (= (filter!542 (_1!21882 (lexList!1506 thiss!18206 rules!2135 lt!1228332)) lambda!123696) tokens!494)))))

(declare-fun b!3578969 () Bool)

(assert (=> b!3578969 (= e!2214107 (not (isEmpty!22115 (_2!21881 lt!1228334))))))

(assert (= (and start!331750 res!1443977) b!3578940))

(assert (= (and b!3578940 res!1443948) b!3578959))

(assert (= (and b!3578959 res!1443963) b!3578924))

(assert (= (and b!3578924 res!1443956) b!3578944))

(assert (= (and b!3578944 res!1443952) b!3578958))

(assert (= (and b!3578958 res!1443947) b!3578956))

(assert (= (and b!3578956 res!1443949) b!3578931))

(assert (= (and b!3578931 res!1443961) b!3578936))

(assert (= (and b!3578936 res!1443971) b!3578925))

(assert (= (and b!3578925 (not res!1443957)) b!3578946))

(assert (= (and b!3578946 (not res!1443954)) b!3578964))

(assert (= (and b!3578964 (not res!1443951)) b!3578929))

(assert (= (and b!3578929 (not res!1443976)) b!3578923))

(assert (= (and b!3578923 (not res!1443953)) b!3578962))

(assert (= (and b!3578962 (not res!1443973)) b!3578945))

(assert (= (and b!3578945 (not res!1443946)) b!3578928))

(assert (= (and b!3578928 (not res!1443955)) b!3578961))

(assert (= (and b!3578961 res!1443965) b!3578965))

(assert (= (and b!3578965 res!1443968) b!3578948))

(assert (= (and b!3578961 res!1443959) b!3578966))

(assert (= (and b!3578966 res!1443975) b!3578947))

(assert (= (and b!3578961 c!620348) b!3578957))

(assert (= (and b!3578961 (not c!620348)) b!3578967))

(assert (= (and b!3578957 res!1443964) b!3578950))

(assert (= (and b!3578961 res!1443960) b!3578943))

(assert (= (and b!3578943 res!1443958) b!3578949))

(assert (= (and b!3578961 (not res!1443969)) b!3578926))

(assert (= (and b!3578926 (not res!1443970)) b!3578969))

(assert (= (and b!3578961 res!1443966) b!3578934))

(assert (= (and b!3578934 res!1443967) b!3578935))

(assert (= (and b!3578961 c!620349) b!3578933))

(assert (= (and b!3578961 (not c!620349)) b!3578955))

(assert (= (and b!3578933 res!1443962) b!3578927))

(assert (= (and b!3578961 (not res!1443974)) b!3578960))

(assert (= (and b!3578960 (not res!1443945)) b!3578968))

(assert (= (and b!3578968 (not res!1443950)) b!3578942))

(assert (= (and b!3578942 (not res!1443972)) b!3578932))

(assert (= b!3578941 b!3578954))

(assert (= b!3578951 b!3578941))

(assert (= (and start!331750 ((_ is Cons!37556) rules!2135)) b!3578951))

(assert (= b!3578930 b!3578952))

(assert (= b!3578938 b!3578930))

(assert (= start!331750 b!3578938))

(assert (= b!3578963 b!3578937))

(assert (= b!3578939 b!3578963))

(assert (= b!3578953 b!3578939))

(assert (= (and start!331750 ((_ is Cons!37557) tokens!494)) b!3578953))

(declare-fun m!4073167 () Bool)

(assert (=> b!3578959 m!4073167))

(declare-fun m!4073169 () Bool)

(assert (=> b!3578949 m!4073169))

(declare-fun m!4073171 () Bool)

(assert (=> b!3578931 m!4073171))

(declare-fun m!4073173 () Bool)

(assert (=> b!3578941 m!4073173))

(declare-fun m!4073175 () Bool)

(assert (=> b!3578941 m!4073175))

(declare-fun m!4073177 () Bool)

(assert (=> b!3578961 m!4073177))

(declare-fun m!4073179 () Bool)

(assert (=> b!3578961 m!4073179))

(declare-fun m!4073181 () Bool)

(assert (=> b!3578961 m!4073181))

(declare-fun m!4073183 () Bool)

(assert (=> b!3578961 m!4073183))

(declare-fun m!4073185 () Bool)

(assert (=> b!3578961 m!4073185))

(declare-fun m!4073187 () Bool)

(assert (=> b!3578961 m!4073187))

(declare-fun m!4073189 () Bool)

(assert (=> b!3578961 m!4073189))

(declare-fun m!4073191 () Bool)

(assert (=> b!3578961 m!4073191))

(declare-fun m!4073193 () Bool)

(assert (=> b!3578961 m!4073193))

(declare-fun m!4073195 () Bool)

(assert (=> b!3578961 m!4073195))

(declare-fun m!4073197 () Bool)

(assert (=> b!3578961 m!4073197))

(declare-fun m!4073199 () Bool)

(assert (=> b!3578961 m!4073199))

(declare-fun m!4073201 () Bool)

(assert (=> b!3578961 m!4073201))

(declare-fun m!4073203 () Bool)

(assert (=> b!3578961 m!4073203))

(declare-fun m!4073205 () Bool)

(assert (=> b!3578961 m!4073205))

(declare-fun m!4073207 () Bool)

(assert (=> b!3578961 m!4073207))

(declare-fun m!4073209 () Bool)

(assert (=> b!3578961 m!4073209))

(declare-fun m!4073211 () Bool)

(assert (=> b!3578961 m!4073211))

(declare-fun m!4073213 () Bool)

(assert (=> b!3578961 m!4073213))

(declare-fun m!4073215 () Bool)

(assert (=> b!3578961 m!4073215))

(declare-fun m!4073217 () Bool)

(assert (=> b!3578961 m!4073217))

(declare-fun m!4073219 () Bool)

(assert (=> b!3578961 m!4073219))

(assert (=> b!3578961 m!4073193))

(declare-fun m!4073221 () Bool)

(assert (=> b!3578961 m!4073221))

(declare-fun m!4073223 () Bool)

(assert (=> b!3578961 m!4073223))

(declare-fun m!4073225 () Bool)

(assert (=> b!3578961 m!4073225))

(declare-fun m!4073227 () Bool)

(assert (=> b!3578961 m!4073227))

(declare-fun m!4073229 () Bool)

(assert (=> b!3578961 m!4073229))

(declare-fun m!4073231 () Bool)

(assert (=> b!3578961 m!4073231))

(declare-fun m!4073233 () Bool)

(assert (=> b!3578961 m!4073233))

(declare-fun m!4073235 () Bool)

(assert (=> b!3578961 m!4073235))

(declare-fun m!4073237 () Bool)

(assert (=> b!3578961 m!4073237))

(assert (=> b!3578961 m!4073211))

(declare-fun m!4073239 () Bool)

(assert (=> b!3578961 m!4073239))

(declare-fun m!4073241 () Bool)

(assert (=> b!3578961 m!4073241))

(declare-fun m!4073243 () Bool)

(assert (=> b!3578961 m!4073243))

(declare-fun m!4073245 () Bool)

(assert (=> b!3578961 m!4073245))

(assert (=> b!3578961 m!4073223))

(assert (=> b!3578961 m!4073231))

(declare-fun m!4073247 () Bool)

(assert (=> b!3578961 m!4073247))

(declare-fun m!4073249 () Bool)

(assert (=> b!3578961 m!4073249))

(declare-fun m!4073251 () Bool)

(assert (=> b!3578961 m!4073251))

(declare-fun m!4073253 () Bool)

(assert (=> b!3578961 m!4073253))

(declare-fun m!4073255 () Bool)

(assert (=> b!3578961 m!4073255))

(declare-fun m!4073257 () Bool)

(assert (=> b!3578961 m!4073257))

(declare-fun m!4073259 () Bool)

(assert (=> b!3578961 m!4073259))

(declare-fun m!4073261 () Bool)

(assert (=> b!3578961 m!4073261))

(declare-fun m!4073263 () Bool)

(assert (=> b!3578961 m!4073263))

(declare-fun m!4073265 () Bool)

(assert (=> b!3578961 m!4073265))

(declare-fun m!4073267 () Bool)

(assert (=> b!3578961 m!4073267))

(declare-fun m!4073269 () Bool)

(assert (=> b!3578961 m!4073269))

(assert (=> b!3578961 m!4073195))

(assert (=> b!3578961 m!4073227))

(declare-fun m!4073271 () Bool)

(assert (=> b!3578961 m!4073271))

(declare-fun m!4073273 () Bool)

(assert (=> b!3578961 m!4073273))

(declare-fun m!4073275 () Bool)

(assert (=> b!3578961 m!4073275))

(declare-fun m!4073277 () Bool)

(assert (=> b!3578961 m!4073277))

(declare-fun m!4073279 () Bool)

(assert (=> b!3578961 m!4073279))

(declare-fun m!4073281 () Bool)

(assert (=> b!3578961 m!4073281))

(declare-fun m!4073283 () Bool)

(assert (=> b!3578925 m!4073283))

(declare-fun m!4073285 () Bool)

(assert (=> b!3578925 m!4073285))

(declare-fun m!4073287 () Bool)

(assert (=> b!3578925 m!4073287))

(declare-fun m!4073289 () Bool)

(assert (=> b!3578925 m!4073289))

(declare-fun m!4073291 () Bool)

(assert (=> b!3578925 m!4073291))

(declare-fun m!4073293 () Bool)

(assert (=> b!3578957 m!4073293))

(declare-fun m!4073295 () Bool)

(assert (=> b!3578957 m!4073295))

(declare-fun m!4073297 () Bool)

(assert (=> b!3578969 m!4073297))

(declare-fun m!4073299 () Bool)

(assert (=> b!3578943 m!4073299))

(declare-fun m!4073301 () Bool)

(assert (=> b!3578938 m!4073301))

(declare-fun m!4073303 () Bool)

(assert (=> b!3578926 m!4073303))

(declare-fun m!4073305 () Bool)

(assert (=> b!3578934 m!4073305))

(declare-fun m!4073307 () Bool)

(assert (=> b!3578934 m!4073307))

(declare-fun m!4073309 () Bool)

(assert (=> b!3578956 m!4073309))

(declare-fun m!4073311 () Bool)

(assert (=> b!3578933 m!4073311))

(declare-fun m!4073313 () Bool)

(assert (=> b!3578933 m!4073313))

(declare-fun m!4073315 () Bool)

(assert (=> b!3578965 m!4073315))

(declare-fun m!4073317 () Bool)

(assert (=> b!3578965 m!4073317))

(declare-fun m!4073319 () Bool)

(assert (=> b!3578940 m!4073319))

(declare-fun m!4073321 () Bool)

(assert (=> b!3578944 m!4073321))

(declare-fun m!4073323 () Bool)

(assert (=> b!3578932 m!4073323))

(declare-fun m!4073325 () Bool)

(assert (=> b!3578964 m!4073325))

(declare-fun m!4073327 () Bool)

(assert (=> b!3578963 m!4073327))

(declare-fun m!4073329 () Bool)

(assert (=> b!3578963 m!4073329))

(declare-fun m!4073331 () Bool)

(assert (=> b!3578945 m!4073331))

(assert (=> b!3578945 m!4073331))

(declare-fun m!4073333 () Bool)

(assert (=> b!3578945 m!4073333))

(declare-fun m!4073335 () Bool)

(assert (=> b!3578966 m!4073335))

(declare-fun m!4073337 () Bool)

(assert (=> b!3578966 m!4073337))

(declare-fun m!4073339 () Bool)

(assert (=> b!3578929 m!4073339))

(declare-fun m!4073341 () Bool)

(assert (=> b!3578929 m!4073341))

(declare-fun m!4073343 () Bool)

(assert (=> b!3578929 m!4073343))

(assert (=> b!3578942 m!4073323))

(declare-fun m!4073345 () Bool)

(assert (=> b!3578942 m!4073345))

(assert (=> b!3578942 m!4073345))

(declare-fun m!4073347 () Bool)

(assert (=> b!3578942 m!4073347))

(declare-fun m!4073349 () Bool)

(assert (=> b!3578942 m!4073349))

(declare-fun m!4073351 () Bool)

(assert (=> b!3578923 m!4073351))

(declare-fun m!4073353 () Bool)

(assert (=> b!3578923 m!4073353))

(declare-fun m!4073355 () Bool)

(assert (=> b!3578939 m!4073355))

(declare-fun m!4073357 () Bool)

(assert (=> b!3578928 m!4073357))

(declare-fun m!4073359 () Bool)

(assert (=> b!3578928 m!4073359))

(declare-fun m!4073361 () Bool)

(assert (=> start!331750 m!4073361))

(declare-fun m!4073363 () Bool)

(assert (=> b!3578924 m!4073363))

(declare-fun m!4073365 () Bool)

(assert (=> b!3578924 m!4073365))

(declare-fun m!4073367 () Bool)

(assert (=> b!3578953 m!4073367))

(declare-fun m!4073369 () Bool)

(assert (=> b!3578930 m!4073369))

(declare-fun m!4073371 () Bool)

(assert (=> b!3578930 m!4073371))

(declare-fun m!4073373 () Bool)

(assert (=> b!3578968 m!4073373))

(declare-fun m!4073375 () Bool)

(assert (=> b!3578968 m!4073375))

(declare-fun m!4073377 () Bool)

(assert (=> b!3578960 m!4073377))

(declare-fun m!4073379 () Bool)

(assert (=> b!3578960 m!4073379))

(declare-fun m!4073381 () Bool)

(assert (=> b!3578962 m!4073381))

(declare-fun m!4073383 () Bool)

(assert (=> b!3578962 m!4073383))

(declare-fun m!4073385 () Bool)

(assert (=> b!3578962 m!4073385))

(declare-fun m!4073387 () Bool)

(assert (=> b!3578962 m!4073387))

(declare-fun m!4073389 () Bool)

(assert (=> b!3578962 m!4073389))

(declare-fun m!4073391 () Bool)

(assert (=> b!3578962 m!4073391))

(assert (=> b!3578962 m!4073387))

(declare-fun m!4073393 () Bool)

(assert (=> b!3578962 m!4073393))

(declare-fun m!4073395 () Bool)

(assert (=> b!3578962 m!4073395))

(assert (=> b!3578962 m!4073383))

(declare-fun m!4073397 () Bool)

(assert (=> b!3578962 m!4073397))

(declare-fun m!4073399 () Bool)

(assert (=> b!3578962 m!4073399))

(assert (=> b!3578962 m!4073381))

(assert (=> b!3578962 m!4073397))

(declare-fun m!4073401 () Bool)

(assert (=> b!3578946 m!4073401))

(assert (=> b!3578946 m!4073401))

(declare-fun m!4073403 () Bool)

(assert (=> b!3578946 m!4073403))

(check-sat (not b!3578963) (not b!3578944) b_and!257903 (not b!3578930) (not b!3578953) b_and!257905 b_and!257907 (not b!3578968) (not b!3578929) (not b!3578939) (not b_next!92339) (not start!331750) (not b!3578942) (not b!3578969) (not b!3578965) (not b!3578932) (not b!3578951) (not b!3578961) (not b_next!92337) (not b!3578964) (not b!3578941) (not b!3578945) (not b!3578931) b_and!257909 (not b!3578946) (not b!3578978) b_and!257913 (not b!3578959) (not b!3578966) (not b_next!92347) (not b_next!92345) (not b!3578928) (not b!3578933) (not b!3578925) (not b!3578926) (not b_next!92341) (not b!3578957) (not b!3578934) (not b!3578943) (not b!3578938) (not b!3578960) b_and!257911 (not b!3578924) (not b!3578949) (not b!3578962) (not b_next!92343) (not b!3578940) (not b!3578956) (not b!3578923))
(check-sat b_and!257903 (not b_next!92337) b_and!257905 b_and!257909 b_and!257913 b_and!257907 (not b_next!92341) b_and!257911 (not b_next!92343) (not b_next!92339) (not b_next!92347) (not b_next!92345))
