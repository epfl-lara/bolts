; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!330294 () Bool)

(assert start!330294)

(declare-fun b!3567341 () Bool)

(declare-fun b_free!91305 () Bool)

(declare-fun b_next!92009 () Bool)

(assert (=> b!3567341 (= b_free!91305 (not b_next!92009))))

(declare-fun tp!1093175 () Bool)

(declare-fun b_and!256651 () Bool)

(assert (=> b!3567341 (= tp!1093175 b_and!256651)))

(declare-fun b_free!91307 () Bool)

(declare-fun b_next!92011 () Bool)

(assert (=> b!3567341 (= b_free!91307 (not b_next!92011))))

(declare-fun tp!1093173 () Bool)

(declare-fun b_and!256653 () Bool)

(assert (=> b!3567341 (= tp!1093173 b_and!256653)))

(declare-fun b!3567364 () Bool)

(declare-fun b_free!91309 () Bool)

(declare-fun b_next!92013 () Bool)

(assert (=> b!3567364 (= b_free!91309 (not b_next!92013))))

(declare-fun tp!1093167 () Bool)

(declare-fun b_and!256655 () Bool)

(assert (=> b!3567364 (= tp!1093167 b_and!256655)))

(declare-fun b_free!91311 () Bool)

(declare-fun b_next!92015 () Bool)

(assert (=> b!3567364 (= b_free!91311 (not b_next!92015))))

(declare-fun tp!1093174 () Bool)

(declare-fun b_and!256657 () Bool)

(assert (=> b!3567364 (= tp!1093174 b_and!256657)))

(declare-fun b!3567361 () Bool)

(declare-fun b_free!91313 () Bool)

(declare-fun b_next!92017 () Bool)

(assert (=> b!3567361 (= b_free!91313 (not b_next!92017))))

(declare-fun tp!1093166 () Bool)

(declare-fun b_and!256659 () Bool)

(assert (=> b!3567361 (= tp!1093166 b_and!256659)))

(declare-fun b_free!91315 () Bool)

(declare-fun b_next!92019 () Bool)

(assert (=> b!3567361 (= b_free!91315 (not b_next!92019))))

(declare-fun tp!1093172 () Bool)

(declare-fun b_and!256661 () Bool)

(assert (=> b!3567361 (= tp!1093172 b_and!256661)))

(declare-fun bs!568989 () Bool)

(declare-fun b!3567352 () Bool)

(declare-fun b!3567358 () Bool)

(assert (= bs!568989 (and b!3567352 b!3567358)))

(declare-fun lambda!123371 () Int)

(declare-fun lambda!123370 () Int)

(assert (=> bs!568989 (not (= lambda!123371 lambda!123370))))

(declare-fun b!3567380 () Bool)

(declare-fun e!2206692 () Bool)

(assert (=> b!3567380 (= e!2206692 true)))

(declare-fun b!3567379 () Bool)

(declare-fun e!2206691 () Bool)

(assert (=> b!3567379 (= e!2206691 e!2206692)))

(declare-fun b!3567378 () Bool)

(declare-fun e!2206690 () Bool)

(assert (=> b!3567378 (= e!2206690 e!2206691)))

(assert (=> b!3567352 e!2206690))

(assert (= b!3567379 b!3567380))

(assert (= b!3567378 b!3567379))

(declare-datatypes ((C!20712 0))(
  ( (C!20713 (val!12404 Int)) )
))
(declare-datatypes ((Regex!10263 0))(
  ( (ElementMatch!10263 (c!618242 C!20712)) (Concat!15997 (regOne!21038 Regex!10263) (regTwo!21038 Regex!10263)) (EmptyExpr!10263) (Star!10263 (reg!10592 Regex!10263)) (EmptyLang!10263) (Union!10263 (regOne!21039 Regex!10263) (regTwo!21039 Regex!10263)) )
))
(declare-datatypes ((List!37594 0))(
  ( (Nil!37470) (Cons!37470 (h!42890 (_ BitVec 16)) (t!288723 List!37594)) )
))
(declare-datatypes ((TokenValue!5734 0))(
  ( (FloatLiteralValue!11468 (text!40583 List!37594)) (TokenValueExt!5733 (__x!23685 Int)) (Broken!28670 (value!177298 List!37594)) (Object!5857) (End!5734) (Def!5734) (Underscore!5734) (Match!5734) (Else!5734) (Error!5734) (Case!5734) (If!5734) (Extends!5734) (Abstract!5734) (Class!5734) (Val!5734) (DelimiterValue!11468 (del!5794 List!37594)) (KeywordValue!5740 (value!177299 List!37594)) (CommentValue!11468 (value!177300 List!37594)) (WhitespaceValue!11468 (value!177301 List!37594)) (IndentationValue!5734 (value!177302 List!37594)) (String!42003) (Int32!5734) (Broken!28671 (value!177303 List!37594)) (Boolean!5735) (Unit!53440) (OperatorValue!5737 (op!5794 List!37594)) (IdentifierValue!11468 (value!177304 List!37594)) (IdentifierValue!11469 (value!177305 List!37594)) (WhitespaceValue!11469 (value!177306 List!37594)) (True!11468) (False!11468) (Broken!28672 (value!177307 List!37594)) (Broken!28673 (value!177308 List!37594)) (True!11469) (RightBrace!5734) (RightBracket!5734) (Colon!5734) (Null!5734) (Comma!5734) (LeftBracket!5734) (False!11469) (LeftBrace!5734) (ImaginaryLiteralValue!5734 (text!40584 List!37594)) (StringLiteralValue!17202 (value!177309 List!37594)) (EOFValue!5734 (value!177310 List!37594)) (IdentValue!5734 (value!177311 List!37594)) (DelimiterValue!11469 (value!177312 List!37594)) (DedentValue!5734 (value!177313 List!37594)) (NewLineValue!5734 (value!177314 List!37594)) (IntegerValue!17202 (value!177315 (_ BitVec 32)) (text!40585 List!37594)) (IntegerValue!17203 (value!177316 Int) (text!40586 List!37594)) (Times!5734) (Or!5734) (Equal!5734) (Minus!5734) (Broken!28674 (value!177317 List!37594)) (And!5734) (Div!5734) (LessEqual!5734) (Mod!5734) (Concat!15998) (Not!5734) (Plus!5734) (SpaceValue!5734 (value!177318 List!37594)) (IntegerValue!17204 (value!177319 Int) (text!40587 List!37594)) (StringLiteralValue!17203 (text!40588 List!37594)) (FloatLiteralValue!11469 (text!40589 List!37594)) (BytesLiteralValue!5734 (value!177320 List!37594)) (CommentValue!11469 (value!177321 List!37594)) (StringLiteralValue!17204 (value!177322 List!37594)) (ErrorTokenValue!5734 (msg!5795 List!37594)) )
))
(declare-datatypes ((List!37595 0))(
  ( (Nil!37471) (Cons!37471 (h!42891 C!20712) (t!288724 List!37595)) )
))
(declare-datatypes ((IArray!22771 0))(
  ( (IArray!22772 (innerList!11443 List!37595)) )
))
(declare-datatypes ((Conc!11383 0))(
  ( (Node!11383 (left!29293 Conc!11383) (right!29623 Conc!11383) (csize!22996 Int) (cheight!11594 Int)) (Leaf!17746 (xs!14585 IArray!22771) (csize!22997 Int)) (Empty!11383) )
))
(declare-datatypes ((BalanceConc!22380 0))(
  ( (BalanceConc!22381 (c!618243 Conc!11383)) )
))
(declare-datatypes ((String!42004 0))(
  ( (String!42005 (value!177323 String)) )
))
(declare-datatypes ((TokenValueInjection!10896 0))(
  ( (TokenValueInjection!10897 (toValue!7772 Int) (toChars!7631 Int)) )
))
(declare-datatypes ((Rule!10808 0))(
  ( (Rule!10809 (regex!5504 Regex!10263) (tag!6158 String!42004) (isSeparator!5504 Bool) (transformation!5504 TokenValueInjection!10896)) )
))
(declare-datatypes ((List!37596 0))(
  ( (Nil!37472) (Cons!37472 (h!42892 Rule!10808) (t!288725 List!37596)) )
))
(declare-fun rules!2135 () List!37596)

(get-info :version)

(assert (= (and b!3567352 ((_ is Cons!37472) rules!2135)) b!3567378))

(declare-fun order!20299 () Int)

(declare-fun order!20297 () Int)

(declare-fun dynLambda!16069 (Int Int) Int)

(declare-fun dynLambda!16070 (Int Int) Int)

(assert (=> b!3567380 (< (dynLambda!16069 order!20297 (toValue!7772 (transformation!5504 (h!42892 rules!2135)))) (dynLambda!16070 order!20299 lambda!123371))))

(declare-fun order!20301 () Int)

(declare-fun dynLambda!16071 (Int Int) Int)

(assert (=> b!3567380 (< (dynLambda!16071 order!20301 (toChars!7631 (transformation!5504 (h!42892 rules!2135)))) (dynLambda!16070 order!20299 lambda!123371))))

(assert (=> b!3567352 true))

(declare-fun b!3567322 () Bool)

(declare-fun e!2206655 () Bool)

(declare-fun e!2206670 () Bool)

(assert (=> b!3567322 (= e!2206655 e!2206670)))

(declare-fun res!1438115 () Bool)

(assert (=> b!3567322 (=> res!1438115 e!2206670)))

(declare-fun lt!1221854 () BalanceConc!22380)

(declare-datatypes ((LexerInterface!5093 0))(
  ( (LexerInterfaceExt!5090 (__x!23686 Int)) (Lexer!5091) )
))
(declare-fun thiss!18206 () LexerInterface!5093)

(declare-datatypes ((Token!10374 0))(
  ( (Token!10375 (value!177324 TokenValue!5734) (rule!8190 Rule!10808) (size!28557 Int) (originalCharacters!6218 List!37595)) )
))
(declare-datatypes ((List!37597 0))(
  ( (Nil!37473) (Cons!37473 (h!42893 Token!10374) (t!288726 List!37597)) )
))
(declare-datatypes ((IArray!22773 0))(
  ( (IArray!22774 (innerList!11444 List!37597)) )
))
(declare-datatypes ((Conc!11384 0))(
  ( (Node!11384 (left!29294 Conc!11384) (right!29624 Conc!11384) (csize!22998 Int) (cheight!11595 Int)) (Leaf!17747 (xs!14586 IArray!22773) (csize!22999 Int)) (Empty!11384) )
))
(declare-datatypes ((BalanceConc!22382 0))(
  ( (BalanceConc!22383 (c!618244 Conc!11384)) )
))
(declare-fun isEmpty!21986 (BalanceConc!22382) Bool)

(declare-datatypes ((tuple2!37368 0))(
  ( (tuple2!37369 (_1!21818 BalanceConc!22382) (_2!21818 BalanceConc!22380)) )
))
(declare-fun lex!2419 (LexerInterface!5093 List!37596 BalanceConc!22380) tuple2!37368)

(assert (=> b!3567322 (= res!1438115 (isEmpty!21986 (_1!21818 (lex!2419 thiss!18206 rules!2135 lt!1221854))))))

(declare-fun lt!1221853 () List!37595)

(declare-fun seqFromList!4061 (List!37595) BalanceConc!22380)

(assert (=> b!3567322 (= lt!1221854 (seqFromList!4061 lt!1221853))))

(declare-fun b!3567323 () Bool)

(declare-fun e!2206672 () Bool)

(declare-fun e!2206664 () Bool)

(assert (=> b!3567323 (= e!2206672 e!2206664)))

(declare-fun res!1438136 () Bool)

(assert (=> b!3567323 (=> res!1438136 e!2206664)))

(declare-fun lt!1221842 () List!37595)

(declare-fun lt!1221857 () List!37595)

(assert (=> b!3567323 (= res!1438136 (not (= lt!1221842 lt!1221857)))))

(declare-fun lt!1221838 () List!37595)

(declare-fun lt!1221886 () List!37595)

(declare-fun ++!9313 (List!37595 List!37595) List!37595)

(assert (=> b!3567323 (= lt!1221857 (++!9313 (++!9313 lt!1221853 lt!1221838) lt!1221886))))

(declare-fun b!3567324 () Bool)

(declare-fun e!2206653 () Bool)

(declare-fun tokens!494 () List!37597)

(declare-fun lt!1221858 () Rule!10808)

(assert (=> b!3567324 (= e!2206653 (= (rule!8190 (h!42893 tokens!494)) lt!1221858))))

(declare-fun b!3567325 () Bool)

(declare-fun e!2206673 () Bool)

(assert (=> b!3567325 (= e!2206673 e!2206672)))

(declare-fun res!1438114 () Bool)

(assert (=> b!3567325 (=> res!1438114 e!2206672)))

(declare-fun separatorToken!241 () Token!10374)

(declare-fun lt!1221864 () List!37595)

(declare-fun printWithSeparatorTokenList!380 (LexerInterface!5093 List!37597 Token!10374) List!37595)

(assert (=> b!3567325 (= res!1438114 (not (= lt!1221886 (++!9313 (++!9313 lt!1221864 lt!1221838) (printWithSeparatorTokenList!380 thiss!18206 (t!288726 (t!288726 tokens!494)) separatorToken!241)))))))

(declare-fun list!13741 (BalanceConc!22380) List!37595)

(declare-fun charsOf!3518 (Token!10374) BalanceConc!22380)

(assert (=> b!3567325 (= lt!1221864 (list!13741 (charsOf!3518 (h!42893 (t!288726 tokens!494)))))))

(declare-fun lt!1221852 () List!37595)

(assert (=> b!3567325 (= lt!1221852 (++!9313 lt!1221838 lt!1221886))))

(assert (=> b!3567325 (= lt!1221838 (list!13741 (charsOf!3518 separatorToken!241)))))

(assert (=> b!3567325 (= lt!1221886 (printWithSeparatorTokenList!380 thiss!18206 (t!288726 tokens!494) separatorToken!241))))

(assert (=> b!3567325 (= lt!1221842 (printWithSeparatorTokenList!380 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3567326 () Bool)

(declare-fun e!2206658 () Bool)

(declare-fun e!2206668 () Bool)

(assert (=> b!3567326 (= e!2206658 e!2206668)))

(declare-fun res!1438134 () Bool)

(assert (=> b!3567326 (=> (not res!1438134) (not e!2206668))))

(declare-fun lt!1221874 () Rule!10808)

(declare-fun matchR!4847 (Regex!10263 List!37595) Bool)

(assert (=> b!3567326 (= res!1438134 (matchR!4847 (regex!5504 lt!1221874) lt!1221838))))

(declare-datatypes ((Option!7677 0))(
  ( (None!7676) (Some!7676 (v!37266 Rule!10808)) )
))
(declare-fun lt!1221861 () Option!7677)

(declare-fun get!12054 (Option!7677) Rule!10808)

(assert (=> b!3567326 (= lt!1221874 (get!12054 lt!1221861))))

(declare-fun b!3567327 () Bool)

(declare-fun e!2206680 () Bool)

(assert (=> b!3567327 (= e!2206664 e!2206680)))

(declare-fun res!1438137 () Bool)

(assert (=> b!3567327 (=> res!1438137 e!2206680)))

(declare-fun lt!1221871 () List!37595)

(assert (=> b!3567327 (= res!1438137 (not (= lt!1221842 lt!1221871)))))

(assert (=> b!3567327 (= lt!1221857 lt!1221871)))

(assert (=> b!3567327 (= lt!1221871 (++!9313 lt!1221853 lt!1221852))))

(declare-datatypes ((Unit!53441 0))(
  ( (Unit!53442) )
))
(declare-fun lt!1221844 () Unit!53441)

(declare-fun lemmaConcatAssociativity!2044 (List!37595 List!37595 List!37595) Unit!53441)

(assert (=> b!3567327 (= lt!1221844 (lemmaConcatAssociativity!2044 lt!1221853 lt!1221838 lt!1221886))))

(declare-fun b!3567328 () Bool)

(declare-fun e!2206651 () Bool)

(declare-fun e!2206647 () Bool)

(declare-fun tp!1093168 () Bool)

(assert (=> b!3567328 (= e!2206651 (and e!2206647 tp!1093168))))

(declare-fun b!3567329 () Bool)

(declare-fun res!1438138 () Bool)

(declare-fun e!2206661 () Bool)

(assert (=> b!3567329 (=> (not res!1438138) (not e!2206661))))

(declare-fun rulesInvariant!4490 (LexerInterface!5093 List!37596) Bool)

(assert (=> b!3567329 (= res!1438138 (rulesInvariant!4490 thiss!18206 rules!2135))))

(declare-fun b!3567330 () Bool)

(declare-fun res!1438122 () Bool)

(declare-fun e!2206681 () Bool)

(assert (=> b!3567330 (=> res!1438122 e!2206681)))

(declare-fun contains!7079 (List!37596 Rule!10808) Bool)

(assert (=> b!3567330 (= res!1438122 (not (contains!7079 rules!2135 (rule!8190 (h!42893 (t!288726 tokens!494))))))))

(declare-fun b!3567331 () Bool)

(declare-fun e!2206660 () Bool)

(assert (=> b!3567331 (= e!2206661 (not e!2206660))))

(declare-fun res!1438121 () Bool)

(assert (=> b!3567331 (=> res!1438121 e!2206660)))

(declare-fun lt!1221880 () List!37595)

(declare-fun lt!1221883 () List!37595)

(assert (=> b!3567331 (= res!1438121 (not (= lt!1221880 lt!1221883)))))

(declare-fun printList!1641 (LexerInterface!5093 List!37597) List!37595)

(assert (=> b!3567331 (= lt!1221883 (printList!1641 thiss!18206 (Cons!37473 (h!42893 tokens!494) Nil!37473)))))

(declare-fun lt!1221881 () BalanceConc!22380)

(assert (=> b!3567331 (= lt!1221880 (list!13741 lt!1221881))))

(declare-fun lt!1221845 () BalanceConc!22382)

(declare-fun printTailRec!1588 (LexerInterface!5093 BalanceConc!22382 Int BalanceConc!22380) BalanceConc!22380)

(assert (=> b!3567331 (= lt!1221881 (printTailRec!1588 thiss!18206 lt!1221845 0 (BalanceConc!22381 Empty!11383)))))

(declare-fun print!2158 (LexerInterface!5093 BalanceConc!22382) BalanceConc!22380)

(assert (=> b!3567331 (= lt!1221881 (print!2158 thiss!18206 lt!1221845))))

(declare-fun singletonSeq!2600 (Token!10374) BalanceConc!22382)

(assert (=> b!3567331 (= lt!1221845 (singletonSeq!2600 (h!42893 tokens!494)))))

(declare-fun b!3567332 () Bool)

(declare-fun e!2206683 () Bool)

(assert (=> b!3567332 (= e!2206683 false)))

(declare-fun res!1438128 () Bool)

(assert (=> start!330294 (=> (not res!1438128) (not e!2206661))))

(assert (=> start!330294 (= res!1438128 ((_ is Lexer!5091) thiss!18206))))

(assert (=> start!330294 e!2206661))

(assert (=> start!330294 true))

(assert (=> start!330294 e!2206651))

(declare-fun e!2206654 () Bool)

(assert (=> start!330294 e!2206654))

(declare-fun e!2206663 () Bool)

(declare-fun inv!50743 (Token!10374) Bool)

(assert (=> start!330294 (and (inv!50743 separatorToken!241) e!2206663)))

(declare-fun b!3567333 () Bool)

(declare-fun tp!1093165 () Bool)

(declare-fun e!2206676 () Bool)

(declare-fun inv!21 (TokenValue!5734) Bool)

(assert (=> b!3567333 (= e!2206663 (and (inv!21 (value!177324 separatorToken!241)) e!2206676 tp!1093165))))

(declare-fun e!2206665 () Bool)

(declare-fun tp!1093171 () Bool)

(declare-fun b!3567334 () Bool)

(declare-fun e!2206650 () Bool)

(assert (=> b!3567334 (= e!2206650 (and (inv!21 (value!177324 (h!42893 tokens!494))) e!2206665 tp!1093171))))

(declare-fun b!3567335 () Bool)

(declare-fun e!2206662 () Bool)

(declare-fun e!2206669 () Bool)

(assert (=> b!3567335 (= e!2206662 e!2206669)))

(declare-fun res!1438116 () Bool)

(assert (=> b!3567335 (=> (not res!1438116) (not e!2206669))))

(declare-fun lt!1221872 () Rule!10808)

(assert (=> b!3567335 (= res!1438116 (matchR!4847 (regex!5504 lt!1221872) lt!1221864))))

(declare-fun lt!1221860 () Option!7677)

(assert (=> b!3567335 (= lt!1221872 (get!12054 lt!1221860))))

(declare-fun b!3567336 () Bool)

(declare-fun res!1438118 () Bool)

(declare-fun e!2206656 () Bool)

(assert (=> b!3567336 (=> res!1438118 e!2206656)))

(declare-fun lt!1221856 () tuple2!37368)

(declare-fun apply!8992 (BalanceConc!22382 Int) Token!10374)

(assert (=> b!3567336 (= res!1438118 (not (= (apply!8992 (_1!21818 lt!1221856) 0) (h!42893 (t!288726 tokens!494)))))))

(declare-fun b!3567337 () Bool)

(assert (=> b!3567337 (= e!2206668 (= (rule!8190 separatorToken!241) lt!1221874))))

(declare-fun b!3567338 () Bool)

(declare-fun res!1438145 () Bool)

(declare-fun e!2206666 () Bool)

(assert (=> b!3567338 (=> (not res!1438145) (not e!2206666))))

(declare-fun lt!1221873 () tuple2!37368)

(assert (=> b!3567338 (= res!1438145 (= (apply!8992 (_1!21818 lt!1221873) 0) separatorToken!241))))

(declare-fun b!3567339 () Bool)

(declare-fun res!1438112 () Bool)

(assert (=> b!3567339 (=> (not res!1438112) (not e!2206661))))

(declare-fun sepAndNonSepRulesDisjointChars!1698 (List!37596 List!37596) Bool)

(assert (=> b!3567339 (= res!1438112 (sepAndNonSepRulesDisjointChars!1698 rules!2135 rules!2135))))

(declare-fun b!3567340 () Bool)

(declare-fun isEmpty!21987 (BalanceConc!22380) Bool)

(assert (=> b!3567340 (= e!2206666 (isEmpty!21987 (_2!21818 lt!1221873)))))

(declare-fun e!2206682 () Bool)

(assert (=> b!3567341 (= e!2206682 (and tp!1093175 tp!1093173))))

(declare-fun b!3567342 () Bool)

(declare-fun e!2206675 () Bool)

(assert (=> b!3567342 (= e!2206675 (matchR!4847 (regex!5504 (rule!8190 separatorToken!241)) lt!1221838))))

(declare-fun ruleValid!1788 (LexerInterface!5093 Rule!10808) Bool)

(assert (=> b!3567342 (ruleValid!1788 thiss!18206 (rule!8190 separatorToken!241))))

(declare-fun lt!1221862 () Unit!53441)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!954 (LexerInterface!5093 Rule!10808 List!37596) Unit!53441)

(assert (=> b!3567342 (= lt!1221862 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!954 thiss!18206 (rule!8190 separatorToken!241) rules!2135))))

(declare-fun b!3567343 () Bool)

(declare-fun e!2206657 () Unit!53441)

(declare-fun Unit!53443 () Unit!53441)

(assert (=> b!3567343 (= e!2206657 Unit!53443)))

(declare-fun b!3567344 () Bool)

(declare-fun res!1438132 () Bool)

(assert (=> b!3567344 (=> (not res!1438132) (not e!2206661))))

(declare-fun rulesProduceIndividualToken!2585 (LexerInterface!5093 List!37596 Token!10374) Bool)

(assert (=> b!3567344 (= res!1438132 (rulesProduceIndividualToken!2585 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3567345 () Bool)

(declare-fun res!1438120 () Bool)

(assert (=> b!3567345 (=> (not res!1438120) (not e!2206661))))

(declare-fun isEmpty!21988 (List!37596) Bool)

(assert (=> b!3567345 (= res!1438120 (not (isEmpty!21988 rules!2135)))))

(declare-fun b!3567346 () Bool)

(declare-fun res!1438131 () Bool)

(assert (=> b!3567346 (=> (not res!1438131) (not e!2206661))))

(declare-fun rulesProduceEachTokenIndividually!1544 (LexerInterface!5093 List!37596 BalanceConc!22382) Bool)

(declare-fun seqFromList!4062 (List!37597) BalanceConc!22382)

(assert (=> b!3567346 (= res!1438131 (rulesProduceEachTokenIndividually!1544 thiss!18206 rules!2135 (seqFromList!4062 tokens!494)))))

(declare-fun b!3567347 () Bool)

(declare-fun e!2206677 () Unit!53441)

(declare-fun Unit!53444 () Unit!53441)

(assert (=> b!3567347 (= e!2206677 Unit!53444)))

(declare-fun lt!1221875 () C!20712)

(declare-fun lt!1221878 () Unit!53441)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!562 (Regex!10263 List!37595 C!20712) Unit!53441)

(assert (=> b!3567347 (= lt!1221878 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!562 (regex!5504 (rule!8190 separatorToken!241)) lt!1221838 lt!1221875))))

(declare-fun res!1438124 () Bool)

(assert (=> b!3567347 (= res!1438124 (not (matchR!4847 (regex!5504 (rule!8190 separatorToken!241)) lt!1221838)))))

(declare-fun e!2206652 () Bool)

(assert (=> b!3567347 (=> (not res!1438124) (not e!2206652))))

(assert (=> b!3567347 e!2206652))

(declare-fun b!3567348 () Bool)

(declare-fun e!2206646 () Bool)

(assert (=> b!3567348 (= e!2206646 e!2206675)))

(declare-fun res!1438127 () Bool)

(assert (=> b!3567348 (=> res!1438127 e!2206675)))

(declare-datatypes ((tuple2!37370 0))(
  ( (tuple2!37371 (_1!21819 Token!10374) (_2!21819 List!37595)) )
))
(declare-fun lt!1221865 () tuple2!37370)

(assert (=> b!3567348 (= res!1438127 (not (= (_1!21819 lt!1221865) separatorToken!241)))))

(declare-datatypes ((Option!7678 0))(
  ( (None!7677) (Some!7677 (v!37267 tuple2!37370)) )
))
(declare-fun lt!1221866 () Option!7678)

(declare-fun get!12055 (Option!7678) tuple2!37370)

(assert (=> b!3567348 (= lt!1221865 (get!12055 lt!1221866))))

(declare-fun b!3567349 () Bool)

(assert (=> b!3567349 (= e!2206660 e!2206655)))

(declare-fun res!1438141 () Bool)

(assert (=> b!3567349 (=> res!1438141 e!2206655)))

(assert (=> b!3567349 (= res!1438141 (or (not (= lt!1221883 lt!1221853)) (not (= lt!1221880 lt!1221853))))))

(assert (=> b!3567349 (= lt!1221853 (list!13741 (charsOf!3518 (h!42893 tokens!494))))))

(declare-fun tp!1093169 () Bool)

(declare-fun b!3567350 () Bool)

(declare-fun e!2206679 () Bool)

(declare-fun inv!50740 (String!42004) Bool)

(declare-fun inv!50744 (TokenValueInjection!10896) Bool)

(assert (=> b!3567350 (= e!2206665 (and tp!1093169 (inv!50740 (tag!6158 (rule!8190 (h!42893 tokens!494)))) (inv!50744 (transformation!5504 (rule!8190 (h!42893 tokens!494)))) e!2206679))))

(declare-fun b!3567351 () Bool)

(declare-fun res!1438140 () Bool)

(assert (=> b!3567351 (=> res!1438140 e!2206655)))

(assert (=> b!3567351 (= res!1438140 (not (rulesProduceIndividualToken!2585 thiss!18206 rules!2135 (h!42893 tokens!494))))))

(assert (=> b!3567352 (= e!2206680 e!2206681)))

(declare-fun res!1438135 () Bool)

(assert (=> b!3567352 (=> res!1438135 e!2206681)))

(assert (=> b!3567352 (= res!1438135 (not (contains!7079 rules!2135 (rule!8190 separatorToken!241))))))

(declare-fun lt!1221867 () List!37595)

(declare-fun lt!1221843 () C!20712)

(declare-fun contains!7080 (List!37595 C!20712) Bool)

(assert (=> b!3567352 (not (contains!7080 lt!1221867 lt!1221843))))

(declare-fun lt!1221879 () Unit!53441)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!186 (LexerInterface!5093 List!37596 List!37596 Rule!10808 Rule!10808 C!20712) Unit!53441)

(assert (=> b!3567352 (= lt!1221879 (lemmaSepRuleNotContainsCharContainedInANonSepRule!186 thiss!18206 rules!2135 rules!2135 (rule!8190 (h!42893 (t!288726 tokens!494))) (rule!8190 separatorToken!241) lt!1221843))))

(declare-fun lt!1221855 () Unit!53441)

(assert (=> b!3567352 (= lt!1221855 e!2206657)))

(declare-fun c!618241 () Bool)

(declare-fun usedCharacters!738 (Regex!10263) List!37595)

(assert (=> b!3567352 (= c!618241 (not (contains!7080 (usedCharacters!738 (regex!5504 (rule!8190 (h!42893 (t!288726 tokens!494))))) lt!1221843)))))

(declare-fun head!7429 (List!37595) C!20712)

(assert (=> b!3567352 (= lt!1221843 (head!7429 lt!1221864))))

(declare-fun maxPrefixOneRule!1800 (LexerInterface!5093 Rule!10808 List!37595) Option!7678)

(declare-fun apply!8993 (TokenValueInjection!10896 BalanceConc!22380) TokenValue!5734)

(declare-fun size!28558 (List!37595) Int)

(assert (=> b!3567352 (= (maxPrefixOneRule!1800 thiss!18206 (rule!8190 (h!42893 (t!288726 tokens!494))) lt!1221864) (Some!7677 (tuple2!37371 (Token!10375 (apply!8993 (transformation!5504 (rule!8190 (h!42893 (t!288726 tokens!494)))) (seqFromList!4061 lt!1221864)) (rule!8190 (h!42893 (t!288726 tokens!494))) (size!28558 lt!1221864) lt!1221864) Nil!37471)))))

(declare-fun lt!1221851 () Unit!53441)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!893 (LexerInterface!5093 List!37596 List!37595 List!37595 List!37595 Rule!10808) Unit!53441)

(assert (=> b!3567352 (= lt!1221851 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!893 thiss!18206 rules!2135 lt!1221864 lt!1221864 Nil!37471 (rule!8190 (h!42893 (t!288726 tokens!494)))))))

(assert (=> b!3567352 e!2206662))

(declare-fun res!1438119 () Bool)

(assert (=> b!3567352 (=> (not res!1438119) (not e!2206662))))

(declare-fun isDefined!5921 (Option!7677) Bool)

(assert (=> b!3567352 (= res!1438119 (isDefined!5921 lt!1221860))))

(declare-fun getRuleFromTag!1147 (LexerInterface!5093 List!37596 String!42004) Option!7677)

(assert (=> b!3567352 (= lt!1221860 (getRuleFromTag!1147 thiss!18206 rules!2135 (tag!6158 (rule!8190 (h!42893 (t!288726 tokens!494))))))))

(declare-fun lt!1221839 () Unit!53441)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1147 (LexerInterface!5093 List!37596 List!37595 Token!10374) Unit!53441)

(assert (=> b!3567352 (= lt!1221839 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1147 thiss!18206 rules!2135 lt!1221864 (h!42893 (t!288726 tokens!494))))))

(declare-fun lt!1221863 () Bool)

(assert (=> b!3567352 lt!1221863))

(declare-fun lt!1221840 () Unit!53441)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1082 (LexerInterface!5093 List!37596 List!37597 Token!10374) Unit!53441)

(assert (=> b!3567352 (= lt!1221840 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1082 thiss!18206 rules!2135 tokens!494 (h!42893 (t!288726 tokens!494))))))

(declare-fun maxPrefix!2633 (LexerInterface!5093 List!37596 List!37595) Option!7678)

(assert (=> b!3567352 (= (maxPrefix!2633 thiss!18206 rules!2135 lt!1221871) (Some!7677 (tuple2!37371 (h!42893 tokens!494) lt!1221852)))))

(declare-fun lt!1221869 () Unit!53441)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!260 (LexerInterface!5093 List!37596 Token!10374 Rule!10808 List!37595 Rule!10808) Unit!53441)

(assert (=> b!3567352 (= lt!1221869 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!260 thiss!18206 rules!2135 (h!42893 tokens!494) (rule!8190 (h!42893 tokens!494)) lt!1221852 (rule!8190 separatorToken!241)))))

(assert (=> b!3567352 (not (contains!7080 (usedCharacters!738 (regex!5504 (rule!8190 (h!42893 tokens!494)))) lt!1221875))))

(declare-fun lt!1221837 () Unit!53441)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!304 (LexerInterface!5093 List!37596 List!37596 Rule!10808 Rule!10808 C!20712) Unit!53441)

(assert (=> b!3567352 (= lt!1221837 (lemmaNonSepRuleNotContainsCharContainedInASepRule!304 thiss!18206 rules!2135 rules!2135 (rule!8190 (h!42893 tokens!494)) (rule!8190 separatorToken!241) lt!1221875))))

(declare-fun lt!1221846 () Unit!53441)

(declare-fun forallContained!1451 (List!37597 Int Token!10374) Unit!53441)

(assert (=> b!3567352 (= lt!1221846 (forallContained!1451 tokens!494 lambda!123371 (h!42893 (t!288726 tokens!494))))))

(declare-fun lt!1221841 () Bool)

(assert (=> b!3567352 (= lt!1221863 (not lt!1221841))))

(assert (=> b!3567352 (= lt!1221863 (rulesProduceIndividualToken!2585 thiss!18206 rules!2135 (h!42893 (t!288726 tokens!494))))))

(assert (=> b!3567352 (= lt!1221841 e!2206656)))

(declare-fun res!1438123 () Bool)

(assert (=> b!3567352 (=> res!1438123 e!2206656)))

(declare-fun size!28559 (BalanceConc!22382) Int)

(assert (=> b!3567352 (= res!1438123 (not (= (size!28559 (_1!21818 lt!1221856)) 1)))))

(declare-fun lt!1221848 () BalanceConc!22380)

(assert (=> b!3567352 (= lt!1221856 (lex!2419 thiss!18206 rules!2135 lt!1221848))))

(declare-fun lt!1221836 () BalanceConc!22382)

(assert (=> b!3567352 (= lt!1221848 (printTailRec!1588 thiss!18206 lt!1221836 0 (BalanceConc!22381 Empty!11383)))))

(assert (=> b!3567352 (= lt!1221848 (print!2158 thiss!18206 lt!1221836))))

(assert (=> b!3567352 (= lt!1221836 (singletonSeq!2600 (h!42893 (t!288726 tokens!494))))))

(assert (=> b!3567352 e!2206666))

(declare-fun res!1438129 () Bool)

(assert (=> b!3567352 (=> (not res!1438129) (not e!2206666))))

(assert (=> b!3567352 (= res!1438129 (= (size!28559 (_1!21818 lt!1221873)) 1))))

(declare-fun lt!1221876 () BalanceConc!22380)

(assert (=> b!3567352 (= lt!1221873 (lex!2419 thiss!18206 rules!2135 lt!1221876))))

(declare-fun lt!1221850 () BalanceConc!22382)

(assert (=> b!3567352 (= lt!1221876 (printTailRec!1588 thiss!18206 lt!1221850 0 (BalanceConc!22381 Empty!11383)))))

(assert (=> b!3567352 (= lt!1221876 (print!2158 thiss!18206 lt!1221850))))

(assert (=> b!3567352 (= lt!1221850 (singletonSeq!2600 separatorToken!241))))

(declare-fun lt!1221849 () Unit!53441)

(assert (=> b!3567352 (= lt!1221849 e!2206677)))

(declare-fun c!618240 () Bool)

(assert (=> b!3567352 (= c!618240 (not (contains!7080 lt!1221867 lt!1221875)))))

(assert (=> b!3567352 (= lt!1221875 (head!7429 lt!1221838))))

(assert (=> b!3567352 (= lt!1221867 (usedCharacters!738 (regex!5504 (rule!8190 separatorToken!241))))))

(assert (=> b!3567352 e!2206658))

(declare-fun res!1438130 () Bool)

(assert (=> b!3567352 (=> (not res!1438130) (not e!2206658))))

(assert (=> b!3567352 (= res!1438130 (isDefined!5921 lt!1221861))))

(assert (=> b!3567352 (= lt!1221861 (getRuleFromTag!1147 thiss!18206 rules!2135 (tag!6158 (rule!8190 separatorToken!241))))))

(declare-fun lt!1221882 () Unit!53441)

(assert (=> b!3567352 (= lt!1221882 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1147 thiss!18206 rules!2135 lt!1221838 separatorToken!241))))

(assert (=> b!3567352 (= (maxPrefixOneRule!1800 thiss!18206 (rule!8190 (h!42893 tokens!494)) lt!1221853) (Some!7677 (tuple2!37371 (Token!10375 (apply!8993 (transformation!5504 (rule!8190 (h!42893 tokens!494))) lt!1221854) (rule!8190 (h!42893 tokens!494)) (size!28558 lt!1221853) lt!1221853) Nil!37471)))))

(declare-fun lt!1221885 () Unit!53441)

(assert (=> b!3567352 (= lt!1221885 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!893 thiss!18206 rules!2135 lt!1221853 lt!1221853 Nil!37471 (rule!8190 (h!42893 tokens!494))))))

(declare-fun e!2206649 () Bool)

(assert (=> b!3567352 e!2206649))

(declare-fun res!1438117 () Bool)

(assert (=> b!3567352 (=> (not res!1438117) (not e!2206649))))

(declare-fun lt!1221847 () Option!7677)

(assert (=> b!3567352 (= res!1438117 (isDefined!5921 lt!1221847))))

(assert (=> b!3567352 (= lt!1221847 (getRuleFromTag!1147 thiss!18206 rules!2135 (tag!6158 (rule!8190 (h!42893 tokens!494)))))))

(declare-fun lt!1221859 () Unit!53441)

(assert (=> b!3567352 (= lt!1221859 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1147 thiss!18206 rules!2135 lt!1221853 (h!42893 tokens!494)))))

(declare-fun lt!1221884 () Unit!53441)

(assert (=> b!3567352 (= lt!1221884 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1082 thiss!18206 rules!2135 tokens!494 (h!42893 tokens!494)))))

(declare-fun tp!1093164 () Bool)

(declare-fun e!2206674 () Bool)

(declare-fun b!3567353 () Bool)

(assert (=> b!3567353 (= e!2206647 (and tp!1093164 (inv!50740 (tag!6158 (h!42892 rules!2135))) (inv!50744 (transformation!5504 (h!42892 rules!2135))) e!2206674))))

(declare-fun b!3567354 () Bool)

(assert (=> b!3567354 (= e!2206681 e!2206646)))

(declare-fun res!1438144 () Bool)

(assert (=> b!3567354 (=> res!1438144 e!2206646)))

(declare-fun isDefined!5922 (Option!7678) Bool)

(assert (=> b!3567354 (= res!1438144 (not (isDefined!5922 lt!1221866)))))

(assert (=> b!3567354 (= lt!1221866 (maxPrefix!2633 thiss!18206 rules!2135 lt!1221838))))

(declare-fun b!3567355 () Bool)

(assert (=> b!3567355 (= e!2206652 false)))

(declare-fun b!3567356 () Bool)

(assert (=> b!3567356 (= e!2206669 (= (rule!8190 (h!42893 (t!288726 tokens!494))) lt!1221872))))

(declare-fun b!3567357 () Bool)

(declare-fun res!1438143 () Bool)

(assert (=> b!3567357 (=> res!1438143 e!2206675)))

(declare-fun isEmpty!21989 (List!37595) Bool)

(assert (=> b!3567357 (= res!1438143 (not (isEmpty!21989 (_2!21819 lt!1221865))))))

(declare-fun res!1438142 () Bool)

(assert (=> b!3567358 (=> (not res!1438142) (not e!2206661))))

(declare-fun forall!8100 (List!37597 Int) Bool)

(assert (=> b!3567358 (= res!1438142 (forall!8100 tokens!494 lambda!123370))))

(declare-fun b!3567359 () Bool)

(assert (=> b!3567359 (= e!2206656 (not (isEmpty!21987 (_2!21818 lt!1221856))))))

(declare-fun b!3567360 () Bool)

(declare-fun res!1438133 () Bool)

(assert (=> b!3567360 (=> (not res!1438133) (not e!2206661))))

(assert (=> b!3567360 (= res!1438133 (and (not ((_ is Nil!37473) tokens!494)) (not ((_ is Nil!37473) (t!288726 tokens!494)))))))

(assert (=> b!3567361 (= e!2206679 (and tp!1093166 tp!1093172))))

(declare-fun tp!1093170 () Bool)

(declare-fun b!3567362 () Bool)

(assert (=> b!3567362 (= e!2206654 (and (inv!50743 (h!42893 tokens!494)) e!2206650 tp!1093170))))

(declare-fun b!3567363 () Bool)

(declare-fun Unit!53445 () Unit!53441)

(assert (=> b!3567363 (= e!2206677 Unit!53445)))

(assert (=> b!3567364 (= e!2206674 (and tp!1093167 tp!1093174))))

(declare-fun b!3567365 () Bool)

(assert (=> b!3567365 (= e!2206649 e!2206653)))

(declare-fun res!1438113 () Bool)

(assert (=> b!3567365 (=> (not res!1438113) (not e!2206653))))

(assert (=> b!3567365 (= res!1438113 (matchR!4847 (regex!5504 lt!1221858) lt!1221853))))

(assert (=> b!3567365 (= lt!1221858 (get!12054 lt!1221847))))

(declare-fun b!3567366 () Bool)

(declare-fun res!1438126 () Bool)

(assert (=> b!3567366 (=> (not res!1438126) (not e!2206661))))

(assert (=> b!3567366 (= res!1438126 (isSeparator!5504 (rule!8190 separatorToken!241)))))

(declare-fun b!3567367 () Bool)

(declare-fun Unit!53446 () Unit!53441)

(assert (=> b!3567367 (= e!2206657 Unit!53446)))

(declare-fun lt!1221868 () Unit!53441)

(assert (=> b!3567367 (= lt!1221868 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!562 (regex!5504 (rule!8190 (h!42893 (t!288726 tokens!494)))) lt!1221864 lt!1221843))))

(declare-fun res!1438125 () Bool)

(assert (=> b!3567367 (= res!1438125 (not (matchR!4847 (regex!5504 (rule!8190 (h!42893 (t!288726 tokens!494)))) lt!1221864)))))

(assert (=> b!3567367 (=> (not res!1438125) (not e!2206683))))

(assert (=> b!3567367 e!2206683))

(declare-fun b!3567368 () Bool)

(assert (=> b!3567368 (= e!2206670 e!2206673)))

(declare-fun res!1438139 () Bool)

(assert (=> b!3567368 (=> res!1438139 e!2206673)))

(assert (=> b!3567368 (= res!1438139 (or (isSeparator!5504 (rule!8190 (h!42893 tokens!494))) (isSeparator!5504 (rule!8190 (h!42893 (t!288726 tokens!494))))))))

(declare-fun lt!1221877 () Unit!53441)

(assert (=> b!3567368 (= lt!1221877 (forallContained!1451 tokens!494 lambda!123370 (h!42893 (t!288726 tokens!494))))))

(declare-fun lt!1221870 () Unit!53441)

(assert (=> b!3567368 (= lt!1221870 (forallContained!1451 tokens!494 lambda!123370 (h!42893 tokens!494)))))

(declare-fun b!3567369 () Bool)

(declare-fun tp!1093176 () Bool)

(assert (=> b!3567369 (= e!2206676 (and tp!1093176 (inv!50740 (tag!6158 (rule!8190 separatorToken!241))) (inv!50744 (transformation!5504 (rule!8190 separatorToken!241))) e!2206682))))

(assert (= (and start!330294 res!1438128) b!3567345))

(assert (= (and b!3567345 res!1438120) b!3567329))

(assert (= (and b!3567329 res!1438138) b!3567346))

(assert (= (and b!3567346 res!1438131) b!3567344))

(assert (= (and b!3567344 res!1438132) b!3567366))

(assert (= (and b!3567366 res!1438126) b!3567358))

(assert (= (and b!3567358 res!1438142) b!3567339))

(assert (= (and b!3567339 res!1438112) b!3567360))

(assert (= (and b!3567360 res!1438133) b!3567331))

(assert (= (and b!3567331 (not res!1438121)) b!3567349))

(assert (= (and b!3567349 (not res!1438141)) b!3567351))

(assert (= (and b!3567351 (not res!1438140)) b!3567322))

(assert (= (and b!3567322 (not res!1438115)) b!3567368))

(assert (= (and b!3567368 (not res!1438139)) b!3567325))

(assert (= (and b!3567325 (not res!1438114)) b!3567323))

(assert (= (and b!3567323 (not res!1438136)) b!3567327))

(assert (= (and b!3567327 (not res!1438137)) b!3567352))

(assert (= (and b!3567352 res!1438117) b!3567365))

(assert (= (and b!3567365 res!1438113) b!3567324))

(assert (= (and b!3567352 res!1438130) b!3567326))

(assert (= (and b!3567326 res!1438134) b!3567337))

(assert (= (and b!3567352 c!618240) b!3567347))

(assert (= (and b!3567352 (not c!618240)) b!3567363))

(assert (= (and b!3567347 res!1438124) b!3567355))

(assert (= (and b!3567352 res!1438129) b!3567338))

(assert (= (and b!3567338 res!1438145) b!3567340))

(assert (= (and b!3567352 (not res!1438123)) b!3567336))

(assert (= (and b!3567336 (not res!1438118)) b!3567359))

(assert (= (and b!3567352 res!1438119) b!3567335))

(assert (= (and b!3567335 res!1438116) b!3567356))

(assert (= (and b!3567352 c!618241) b!3567367))

(assert (= (and b!3567352 (not c!618241)) b!3567343))

(assert (= (and b!3567367 res!1438125) b!3567332))

(assert (= (and b!3567352 (not res!1438135)) b!3567330))

(assert (= (and b!3567330 (not res!1438122)) b!3567354))

(assert (= (and b!3567354 (not res!1438144)) b!3567348))

(assert (= (and b!3567348 (not res!1438127)) b!3567357))

(assert (= (and b!3567357 (not res!1438143)) b!3567342))

(assert (= b!3567353 b!3567364))

(assert (= b!3567328 b!3567353))

(assert (= (and start!330294 ((_ is Cons!37472) rules!2135)) b!3567328))

(assert (= b!3567350 b!3567361))

(assert (= b!3567334 b!3567350))

(assert (= b!3567362 b!3567334))

(assert (= (and start!330294 ((_ is Cons!37473) tokens!494)) b!3567362))

(assert (= b!3567369 b!3567341))

(assert (= b!3567333 b!3567369))

(assert (= start!330294 b!3567333))

(declare-fun m!4053871 () Bool)

(assert (=> b!3567362 m!4053871))

(declare-fun m!4053873 () Bool)

(assert (=> b!3567357 m!4053873))

(declare-fun m!4053875 () Bool)

(assert (=> b!3567345 m!4053875))

(declare-fun m!4053877 () Bool)

(assert (=> b!3567331 m!4053877))

(declare-fun m!4053879 () Bool)

(assert (=> b!3567331 m!4053879))

(declare-fun m!4053881 () Bool)

(assert (=> b!3567331 m!4053881))

(declare-fun m!4053883 () Bool)

(assert (=> b!3567331 m!4053883))

(declare-fun m!4053885 () Bool)

(assert (=> b!3567331 m!4053885))

(declare-fun m!4053887 () Bool)

(assert (=> b!3567352 m!4053887))

(declare-fun m!4053889 () Bool)

(assert (=> b!3567352 m!4053889))

(declare-fun m!4053891 () Bool)

(assert (=> b!3567352 m!4053891))

(declare-fun m!4053893 () Bool)

(assert (=> b!3567352 m!4053893))

(declare-fun m!4053895 () Bool)

(assert (=> b!3567352 m!4053895))

(declare-fun m!4053897 () Bool)

(assert (=> b!3567352 m!4053897))

(declare-fun m!4053899 () Bool)

(assert (=> b!3567352 m!4053899))

(declare-fun m!4053901 () Bool)

(assert (=> b!3567352 m!4053901))

(declare-fun m!4053903 () Bool)

(assert (=> b!3567352 m!4053903))

(declare-fun m!4053905 () Bool)

(assert (=> b!3567352 m!4053905))

(declare-fun m!4053907 () Bool)

(assert (=> b!3567352 m!4053907))

(declare-fun m!4053909 () Bool)

(assert (=> b!3567352 m!4053909))

(declare-fun m!4053911 () Bool)

(assert (=> b!3567352 m!4053911))

(declare-fun m!4053913 () Bool)

(assert (=> b!3567352 m!4053913))

(declare-fun m!4053915 () Bool)

(assert (=> b!3567352 m!4053915))

(declare-fun m!4053917 () Bool)

(assert (=> b!3567352 m!4053917))

(declare-fun m!4053919 () Bool)

(assert (=> b!3567352 m!4053919))

(declare-fun m!4053921 () Bool)

(assert (=> b!3567352 m!4053921))

(declare-fun m!4053923 () Bool)

(assert (=> b!3567352 m!4053923))

(declare-fun m!4053925 () Bool)

(assert (=> b!3567352 m!4053925))

(declare-fun m!4053927 () Bool)

(assert (=> b!3567352 m!4053927))

(declare-fun m!4053929 () Bool)

(assert (=> b!3567352 m!4053929))

(declare-fun m!4053931 () Bool)

(assert (=> b!3567352 m!4053931))

(declare-fun m!4053933 () Bool)

(assert (=> b!3567352 m!4053933))

(declare-fun m!4053935 () Bool)

(assert (=> b!3567352 m!4053935))

(declare-fun m!4053937 () Bool)

(assert (=> b!3567352 m!4053937))

(declare-fun m!4053939 () Bool)

(assert (=> b!3567352 m!4053939))

(assert (=> b!3567352 m!4053899))

(declare-fun m!4053941 () Bool)

(assert (=> b!3567352 m!4053941))

(declare-fun m!4053943 () Bool)

(assert (=> b!3567352 m!4053943))

(declare-fun m!4053945 () Bool)

(assert (=> b!3567352 m!4053945))

(declare-fun m!4053947 () Bool)

(assert (=> b!3567352 m!4053947))

(declare-fun m!4053949 () Bool)

(assert (=> b!3567352 m!4053949))

(declare-fun m!4053951 () Bool)

(assert (=> b!3567352 m!4053951))

(declare-fun m!4053953 () Bool)

(assert (=> b!3567352 m!4053953))

(declare-fun m!4053955 () Bool)

(assert (=> b!3567352 m!4053955))

(declare-fun m!4053957 () Bool)

(assert (=> b!3567352 m!4053957))

(declare-fun m!4053959 () Bool)

(assert (=> b!3567352 m!4053959))

(declare-fun m!4053961 () Bool)

(assert (=> b!3567352 m!4053961))

(declare-fun m!4053963 () Bool)

(assert (=> b!3567352 m!4053963))

(assert (=> b!3567352 m!4053959))

(declare-fun m!4053965 () Bool)

(assert (=> b!3567352 m!4053965))

(declare-fun m!4053967 () Bool)

(assert (=> b!3567352 m!4053967))

(declare-fun m!4053969 () Bool)

(assert (=> b!3567352 m!4053969))

(declare-fun m!4053971 () Bool)

(assert (=> b!3567352 m!4053971))

(declare-fun m!4053973 () Bool)

(assert (=> b!3567352 m!4053973))

(assert (=> b!3567352 m!4053895))

(declare-fun m!4053975 () Bool)

(assert (=> b!3567352 m!4053975))

(declare-fun m!4053977 () Bool)

(assert (=> b!3567352 m!4053977))

(declare-fun m!4053979 () Bool)

(assert (=> b!3567344 m!4053979))

(declare-fun m!4053981 () Bool)

(assert (=> b!3567368 m!4053981))

(declare-fun m!4053983 () Bool)

(assert (=> b!3567368 m!4053983))

(declare-fun m!4053985 () Bool)

(assert (=> b!3567365 m!4053985))

(declare-fun m!4053987 () Bool)

(assert (=> b!3567365 m!4053987))

(declare-fun m!4053989 () Bool)

(assert (=> b!3567349 m!4053989))

(assert (=> b!3567349 m!4053989))

(declare-fun m!4053991 () Bool)

(assert (=> b!3567349 m!4053991))

(declare-fun m!4053993 () Bool)

(assert (=> b!3567327 m!4053993))

(declare-fun m!4053995 () Bool)

(assert (=> b!3567327 m!4053995))

(declare-fun m!4053997 () Bool)

(assert (=> b!3567333 m!4053997))

(declare-fun m!4053999 () Bool)

(assert (=> b!3567329 m!4053999))

(declare-fun m!4054001 () Bool)

(assert (=> b!3567323 m!4054001))

(assert (=> b!3567323 m!4054001))

(declare-fun m!4054003 () Bool)

(assert (=> b!3567323 m!4054003))

(declare-fun m!4054005 () Bool)

(assert (=> b!3567330 m!4054005))

(declare-fun m!4054007 () Bool)

(assert (=> b!3567353 m!4054007))

(declare-fun m!4054009 () Bool)

(assert (=> b!3567353 m!4054009))

(declare-fun m!4054011 () Bool)

(assert (=> b!3567336 m!4054011))

(declare-fun m!4054013 () Bool)

(assert (=> b!3567346 m!4054013))

(assert (=> b!3567346 m!4054013))

(declare-fun m!4054015 () Bool)

(assert (=> b!3567346 m!4054015))

(declare-fun m!4054017 () Bool)

(assert (=> b!3567339 m!4054017))

(declare-fun m!4054019 () Bool)

(assert (=> b!3567367 m!4054019))

(declare-fun m!4054021 () Bool)

(assert (=> b!3567367 m!4054021))

(declare-fun m!4054023 () Bool)

(assert (=> b!3567326 m!4054023))

(declare-fun m!4054025 () Bool)

(assert (=> b!3567326 m!4054025))

(declare-fun m!4054027 () Bool)

(assert (=> b!3567350 m!4054027))

(declare-fun m!4054029 () Bool)

(assert (=> b!3567350 m!4054029))

(declare-fun m!4054031 () Bool)

(assert (=> b!3567335 m!4054031))

(declare-fun m!4054033 () Bool)

(assert (=> b!3567335 m!4054033))

(declare-fun m!4054035 () Bool)

(assert (=> b!3567354 m!4054035))

(declare-fun m!4054037 () Bool)

(assert (=> b!3567354 m!4054037))

(declare-fun m!4054039 () Bool)

(assert (=> b!3567342 m!4054039))

(declare-fun m!4054041 () Bool)

(assert (=> b!3567342 m!4054041))

(declare-fun m!4054043 () Bool)

(assert (=> b!3567342 m!4054043))

(declare-fun m!4054045 () Bool)

(assert (=> start!330294 m!4054045))

(declare-fun m!4054047 () Bool)

(assert (=> b!3567351 m!4054047))

(declare-fun m!4054049 () Bool)

(assert (=> b!3567338 m!4054049))

(declare-fun m!4054051 () Bool)

(assert (=> b!3567340 m!4054051))

(declare-fun m!4054053 () Bool)

(assert (=> b!3567358 m!4054053))

(declare-fun m!4054055 () Bool)

(assert (=> b!3567359 m!4054055))

(declare-fun m!4054057 () Bool)

(assert (=> b!3567348 m!4054057))

(declare-fun m!4054059 () Bool)

(assert (=> b!3567334 m!4054059))

(declare-fun m!4054061 () Bool)

(assert (=> b!3567369 m!4054061))

(declare-fun m!4054063 () Bool)

(assert (=> b!3567369 m!4054063))

(declare-fun m!4054065 () Bool)

(assert (=> b!3567347 m!4054065))

(assert (=> b!3567347 m!4054039))

(declare-fun m!4054067 () Bool)

(assert (=> b!3567322 m!4054067))

(declare-fun m!4054069 () Bool)

(assert (=> b!3567322 m!4054069))

(declare-fun m!4054071 () Bool)

(assert (=> b!3567322 m!4054071))

(declare-fun m!4054073 () Bool)

(assert (=> b!3567325 m!4054073))

(declare-fun m!4054075 () Bool)

(assert (=> b!3567325 m!4054075))

(declare-fun m!4054077 () Bool)

(assert (=> b!3567325 m!4054077))

(declare-fun m!4054079 () Bool)

(assert (=> b!3567325 m!4054079))

(assert (=> b!3567325 m!4054073))

(declare-fun m!4054081 () Bool)

(assert (=> b!3567325 m!4054081))

(declare-fun m!4054083 () Bool)

(assert (=> b!3567325 m!4054083))

(declare-fun m!4054085 () Bool)

(assert (=> b!3567325 m!4054085))

(declare-fun m!4054087 () Bool)

(assert (=> b!3567325 m!4054087))

(declare-fun m!4054089 () Bool)

(assert (=> b!3567325 m!4054089))

(assert (=> b!3567325 m!4054085))

(assert (=> b!3567325 m!4054083))

(assert (=> b!3567325 m!4054075))

(declare-fun m!4054091 () Bool)

(assert (=> b!3567325 m!4054091))

(check-sat (not b!3567378) (not b_next!92015) (not b!3567353) (not b!3567325) (not b!3567329) (not b!3567351) b_and!256653 (not b_next!92017) (not b!3567326) (not b!3567349) b_and!256651 (not b!3567346) (not b!3567327) b_and!256659 (not b!3567331) (not b!3567328) (not b!3567338) (not b!3567330) (not start!330294) (not b_next!92013) (not b!3567368) (not b!3567336) (not b!3567339) b_and!256657 (not b!3567333) (not b!3567367) (not b!3567350) (not b_next!92011) (not b!3567369) (not b!3567358) (not b!3567359) b_and!256655 (not b_next!92009) (not b!3567362) (not b!3567347) (not b!3567340) (not b!3567344) (not b!3567345) (not b!3567357) (not b!3567352) (not b!3567335) (not b!3567322) (not b!3567354) (not b!3567348) b_and!256661 (not b_next!92019) (not b!3567365) (not b!3567334) (not b!3567342) (not b!3567323))
(check-sat b_and!256651 b_and!256659 (not b_next!92013) (not b_next!92015) b_and!256657 (not b_next!92011) b_and!256653 (not b_next!92017) b_and!256661 (not b_next!92019) b_and!256655 (not b_next!92009))
