; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!327082 () Bool)

(assert start!327082)

(declare-fun b!3520728 () Bool)

(declare-fun b_free!90729 () Bool)

(declare-fun b_next!91433 () Bool)

(assert (=> b!3520728 (= b_free!90729 (not b_next!91433))))

(declare-fun tp!1086946 () Bool)

(declare-fun b_and!250727 () Bool)

(assert (=> b!3520728 (= tp!1086946 b_and!250727)))

(declare-fun b_free!90731 () Bool)

(declare-fun b_next!91435 () Bool)

(assert (=> b!3520728 (= b_free!90731 (not b_next!91435))))

(declare-fun tp!1086956 () Bool)

(declare-fun b_and!250729 () Bool)

(assert (=> b!3520728 (= tp!1086956 b_and!250729)))

(declare-fun b!3520694 () Bool)

(declare-fun b_free!90733 () Bool)

(declare-fun b_next!91437 () Bool)

(assert (=> b!3520694 (= b_free!90733 (not b_next!91437))))

(declare-fun tp!1086953 () Bool)

(declare-fun b_and!250731 () Bool)

(assert (=> b!3520694 (= tp!1086953 b_and!250731)))

(declare-fun b_free!90735 () Bool)

(declare-fun b_next!91439 () Bool)

(assert (=> b!3520694 (= b_free!90735 (not b_next!91439))))

(declare-fun tp!1086949 () Bool)

(declare-fun b_and!250733 () Bool)

(assert (=> b!3520694 (= tp!1086949 b_and!250733)))

(declare-fun b!3520698 () Bool)

(declare-fun b_free!90737 () Bool)

(declare-fun b_next!91441 () Bool)

(assert (=> b!3520698 (= b_free!90737 (not b_next!91441))))

(declare-fun tp!1086950 () Bool)

(declare-fun b_and!250735 () Bool)

(assert (=> b!3520698 (= tp!1086950 b_and!250735)))

(declare-fun b_free!90739 () Bool)

(declare-fun b_next!91443 () Bool)

(assert (=> b!3520698 (= b_free!90739 (not b_next!91443))))

(declare-fun tp!1086958 () Bool)

(declare-fun b_and!250737 () Bool)

(assert (=> b!3520698 (= tp!1086958 b_and!250737)))

(declare-fun bs!565271 () Bool)

(declare-fun b!3520730 () Bool)

(declare-fun b!3520722 () Bool)

(assert (= bs!565271 (and b!3520730 b!3520722)))

(declare-fun lambda!122743 () Int)

(declare-fun lambda!122742 () Int)

(assert (=> bs!565271 (not (= lambda!122743 lambda!122742))))

(declare-fun b!3520742 () Bool)

(declare-fun e!2179290 () Bool)

(assert (=> b!3520742 (= e!2179290 true)))

(declare-fun b!3520741 () Bool)

(declare-fun e!2179289 () Bool)

(assert (=> b!3520741 (= e!2179289 e!2179290)))

(declare-fun b!3520740 () Bool)

(declare-fun e!2179288 () Bool)

(assert (=> b!3520740 (= e!2179288 e!2179289)))

(assert (=> b!3520730 e!2179288))

(assert (= b!3520741 b!3520742))

(assert (= b!3520740 b!3520741))

(declare-datatypes ((C!20656 0))(
  ( (C!20657 (val!12376 Int)) )
))
(declare-datatypes ((Regex!10235 0))(
  ( (ElementMatch!10235 (c!606752 C!20656)) (Concat!15941 (regOne!20982 Regex!10235) (regTwo!20982 Regex!10235)) (EmptyExpr!10235) (Star!10235 (reg!10564 Regex!10235)) (EmptyLang!10235) (Union!10235 (regOne!20983 Regex!10235) (regTwo!20983 Regex!10235)) )
))
(declare-datatypes ((List!37466 0))(
  ( (Nil!37342) (Cons!37342 (h!42762 (_ BitVec 16)) (t!281697 List!37466)) )
))
(declare-datatypes ((TokenValue!5706 0))(
  ( (FloatLiteralValue!11412 (text!40387 List!37466)) (TokenValueExt!5705 (__x!23629 Int)) (Broken!28530 (value!176500 List!37466)) (Object!5829) (End!5706) (Def!5706) (Underscore!5706) (Match!5706) (Else!5706) (Error!5706) (Case!5706) (If!5706) (Extends!5706) (Abstract!5706) (Class!5706) (Val!5706) (DelimiterValue!11412 (del!5766 List!37466)) (KeywordValue!5712 (value!176501 List!37466)) (CommentValue!11412 (value!176502 List!37466)) (WhitespaceValue!11412 (value!176503 List!37466)) (IndentationValue!5706 (value!176504 List!37466)) (String!41863) (Int32!5706) (Broken!28531 (value!176505 List!37466)) (Boolean!5707) (Unit!52993) (OperatorValue!5709 (op!5766 List!37466)) (IdentifierValue!11412 (value!176506 List!37466)) (IdentifierValue!11413 (value!176507 List!37466)) (WhitespaceValue!11413 (value!176508 List!37466)) (True!11412) (False!11412) (Broken!28532 (value!176509 List!37466)) (Broken!28533 (value!176510 List!37466)) (True!11413) (RightBrace!5706) (RightBracket!5706) (Colon!5706) (Null!5706) (Comma!5706) (LeftBracket!5706) (False!11413) (LeftBrace!5706) (ImaginaryLiteralValue!5706 (text!40388 List!37466)) (StringLiteralValue!17118 (value!176511 List!37466)) (EOFValue!5706 (value!176512 List!37466)) (IdentValue!5706 (value!176513 List!37466)) (DelimiterValue!11413 (value!176514 List!37466)) (DedentValue!5706 (value!176515 List!37466)) (NewLineValue!5706 (value!176516 List!37466)) (IntegerValue!17118 (value!176517 (_ BitVec 32)) (text!40389 List!37466)) (IntegerValue!17119 (value!176518 Int) (text!40390 List!37466)) (Times!5706) (Or!5706) (Equal!5706) (Minus!5706) (Broken!28534 (value!176519 List!37466)) (And!5706) (Div!5706) (LessEqual!5706) (Mod!5706) (Concat!15942) (Not!5706) (Plus!5706) (SpaceValue!5706 (value!176520 List!37466)) (IntegerValue!17120 (value!176521 Int) (text!40391 List!37466)) (StringLiteralValue!17119 (text!40392 List!37466)) (FloatLiteralValue!11413 (text!40393 List!37466)) (BytesLiteralValue!5706 (value!176522 List!37466)) (CommentValue!11413 (value!176523 List!37466)) (StringLiteralValue!17120 (value!176524 List!37466)) (ErrorTokenValue!5706 (msg!5767 List!37466)) )
))
(declare-datatypes ((List!37467 0))(
  ( (Nil!37343) (Cons!37343 (h!42763 C!20656) (t!281698 List!37467)) )
))
(declare-datatypes ((IArray!22659 0))(
  ( (IArray!22660 (innerList!11387 List!37467)) )
))
(declare-datatypes ((Conc!11327 0))(
  ( (Node!11327 (left!29167 Conc!11327) (right!29497 Conc!11327) (csize!22884 Int) (cheight!11538 Int)) (Leaf!17676 (xs!14517 IArray!22659) (csize!22885 Int)) (Empty!11327) )
))
(declare-datatypes ((BalanceConc!22268 0))(
  ( (BalanceConc!22269 (c!606753 Conc!11327)) )
))
(declare-datatypes ((String!41864 0))(
  ( (String!41865 (value!176525 String)) )
))
(declare-datatypes ((TokenValueInjection!10840 0))(
  ( (TokenValueInjection!10841 (toValue!7728 Int) (toChars!7587 Int)) )
))
(declare-datatypes ((Rule!10752 0))(
  ( (Rule!10753 (regex!5476 Regex!10235) (tag!6114 String!41864) (isSeparator!5476 Bool) (transformation!5476 TokenValueInjection!10840)) )
))
(declare-datatypes ((List!37468 0))(
  ( (Nil!37344) (Cons!37344 (h!42764 Rule!10752) (t!281699 List!37468)) )
))
(declare-fun rules!2135 () List!37468)

(get-info :version)

(assert (= (and b!3520730 ((_ is Cons!37344) rules!2135)) b!3520740))

(declare-fun order!20085 () Int)

(declare-fun order!20087 () Int)

(declare-fun dynLambda!15904 (Int Int) Int)

(declare-fun dynLambda!15905 (Int Int) Int)

(assert (=> b!3520742 (< (dynLambda!15904 order!20085 (toValue!7728 (transformation!5476 (h!42764 rules!2135)))) (dynLambda!15905 order!20087 lambda!122743))))

(declare-fun order!20089 () Int)

(declare-fun dynLambda!15906 (Int Int) Int)

(assert (=> b!3520742 (< (dynLambda!15906 order!20089 (toChars!7587 (transformation!5476 (h!42764 rules!2135)))) (dynLambda!15905 order!20087 lambda!122743))))

(assert (=> b!3520730 true))

(declare-fun b!3520690 () Bool)

(declare-fun res!1419918 () Bool)

(declare-fun e!2179259 () Bool)

(assert (=> b!3520690 (=> (not res!1419918) (not e!2179259))))

(declare-datatypes ((Token!10318 0))(
  ( (Token!10319 (value!176526 TokenValue!5706) (rule!8122 Rule!10752) (size!28411 Int) (originalCharacters!6190 List!37467)) )
))
(declare-datatypes ((List!37469 0))(
  ( (Nil!37345) (Cons!37345 (h!42765 Token!10318) (t!281700 List!37469)) )
))
(declare-datatypes ((IArray!22661 0))(
  ( (IArray!22662 (innerList!11388 List!37469)) )
))
(declare-datatypes ((Conc!11328 0))(
  ( (Node!11328 (left!29168 Conc!11328) (right!29498 Conc!11328) (csize!22886 Int) (cheight!11539 Int)) (Leaf!17677 (xs!14518 IArray!22661) (csize!22887 Int)) (Empty!11328) )
))
(declare-datatypes ((BalanceConc!22270 0))(
  ( (BalanceConc!22271 (c!606754 Conc!11328)) )
))
(declare-datatypes ((tuple2!37176 0))(
  ( (tuple2!37177 (_1!21722 BalanceConc!22270) (_2!21722 BalanceConc!22268)) )
))
(declare-fun lt!1201925 () tuple2!37176)

(declare-fun separatorToken!241 () Token!10318)

(declare-fun apply!8896 (BalanceConc!22270 Int) Token!10318)

(assert (=> b!3520690 (= res!1419918 (= (apply!8896 (_1!21722 lt!1201925) 0) separatorToken!241))))

(declare-fun b!3520691 () Bool)

(declare-datatypes ((Unit!52994 0))(
  ( (Unit!52995) )
))
(declare-fun e!2179263 () Unit!52994)

(declare-fun Unit!52996 () Unit!52994)

(assert (=> b!3520691 (= e!2179263 Unit!52996)))

(declare-fun lt!1201944 () List!37467)

(declare-fun lt!1201930 () C!20656)

(declare-fun lt!1201910 () Unit!52994)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!534 (Regex!10235 List!37467 C!20656) Unit!52994)

(assert (=> b!3520691 (= lt!1201910 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!534 (regex!5476 (rule!8122 separatorToken!241)) lt!1201944 lt!1201930))))

(declare-fun res!1419909 () Bool)

(declare-fun matchR!4819 (Regex!10235 List!37467) Bool)

(assert (=> b!3520691 (= res!1419909 (not (matchR!4819 (regex!5476 (rule!8122 separatorToken!241)) lt!1201944)))))

(declare-fun e!2179273 () Bool)

(assert (=> b!3520691 (=> (not res!1419909) (not e!2179273))))

(assert (=> b!3520691 e!2179273))

(declare-fun b!3520692 () Bool)

(declare-fun e!2179261 () Bool)

(declare-fun lt!1201926 () Rule!10752)

(assert (=> b!3520692 (= e!2179261 (= (rule!8122 separatorToken!241) lt!1201926))))

(declare-fun b!3520693 () Bool)

(declare-fun res!1419898 () Bool)

(declare-fun e!2179265 () Bool)

(assert (=> b!3520693 (=> (not res!1419898) (not e!2179265))))

(declare-datatypes ((LexerInterface!5065 0))(
  ( (LexerInterfaceExt!5062 (__x!23630 Int)) (Lexer!5063) )
))
(declare-fun thiss!18206 () LexerInterface!5065)

(declare-fun rulesProduceIndividualToken!2557 (LexerInterface!5065 List!37468 Token!10318) Bool)

(assert (=> b!3520693 (= res!1419898 (rulesProduceIndividualToken!2557 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!2179270 () Bool)

(assert (=> b!3520694 (= e!2179270 (and tp!1086953 tp!1086949))))

(declare-fun b!3520695 () Bool)

(declare-fun e!2179266 () Bool)

(declare-fun e!2179264 () Bool)

(assert (=> b!3520695 (= e!2179266 e!2179264)))

(declare-fun res!1419897 () Bool)

(assert (=> b!3520695 (=> (not res!1419897) (not e!2179264))))

(declare-fun lt!1201935 () Rule!10752)

(declare-fun lt!1201911 () List!37467)

(assert (=> b!3520695 (= res!1419897 (matchR!4819 (regex!5476 lt!1201935) lt!1201911))))

(declare-datatypes ((Option!7613 0))(
  ( (None!7612) (Some!7612 (v!37100 Rule!10752)) )
))
(declare-fun lt!1201945 () Option!7613)

(declare-fun get!11989 (Option!7613) Rule!10752)

(assert (=> b!3520695 (= lt!1201935 (get!11989 lt!1201945))))

(declare-fun b!3520696 () Bool)

(declare-fun res!1419905 () Bool)

(declare-fun e!2179271 () Bool)

(assert (=> b!3520696 (=> res!1419905 e!2179271)))

(declare-fun lt!1201946 () tuple2!37176)

(declare-fun tokens!494 () List!37469)

(assert (=> b!3520696 (= res!1419905 (not (= (apply!8896 (_1!21722 lt!1201946) 0) (h!42765 (t!281700 tokens!494)))))))

(declare-fun b!3520697 () Bool)

(assert (=> b!3520697 (= e!2179264 (= (rule!8122 (h!42765 tokens!494)) lt!1201935))))

(declare-fun e!2179248 () Bool)

(assert (=> b!3520698 (= e!2179248 (and tp!1086950 tp!1086958))))

(declare-fun b!3520699 () Bool)

(declare-fun res!1419923 () Bool)

(assert (=> b!3520699 (=> (not res!1419923) (not e!2179265))))

(declare-fun sepAndNonSepRulesDisjointChars!1670 (List!37468 List!37468) Bool)

(assert (=> b!3520699 (= res!1419923 (sepAndNonSepRulesDisjointChars!1670 rules!2135 rules!2135))))

(declare-fun b!3520700 () Bool)

(declare-fun e!2179278 () Bool)

(declare-fun e!2179275 () Bool)

(declare-fun tp!1086948 () Bool)

(assert (=> b!3520700 (= e!2179278 (and e!2179275 tp!1086948))))

(declare-fun res!1419917 () Bool)

(assert (=> start!327082 (=> (not res!1419917) (not e!2179265))))

(assert (=> start!327082 (= res!1419917 ((_ is Lexer!5063) thiss!18206))))

(assert (=> start!327082 e!2179265))

(assert (=> start!327082 true))

(assert (=> start!327082 e!2179278))

(declare-fun e!2179280 () Bool)

(assert (=> start!327082 e!2179280))

(declare-fun e!2179258 () Bool)

(declare-fun inv!50577 (Token!10318) Bool)

(assert (=> start!327082 (and (inv!50577 separatorToken!241) e!2179258)))

(declare-fun b!3520701 () Bool)

(declare-fun tp!1086951 () Bool)

(declare-fun inv!50574 (String!41864) Bool)

(declare-fun inv!50578 (TokenValueInjection!10840) Bool)

(assert (=> b!3520701 (= e!2179275 (and tp!1086951 (inv!50574 (tag!6114 (h!42764 rules!2135))) (inv!50578 (transformation!5476 (h!42764 rules!2135))) e!2179270))))

(declare-fun b!3520702 () Bool)

(declare-fun e!2179254 () Bool)

(declare-fun e!2179262 () Bool)

(assert (=> b!3520702 (= e!2179254 e!2179262)))

(declare-fun res!1419906 () Bool)

(assert (=> b!3520702 (=> (not res!1419906) (not e!2179262))))

(declare-fun lt!1201933 () Rule!10752)

(declare-fun lt!1201914 () List!37467)

(assert (=> b!3520702 (= res!1419906 (matchR!4819 (regex!5476 lt!1201933) lt!1201914))))

(declare-fun lt!1201948 () Option!7613)

(assert (=> b!3520702 (= lt!1201933 (get!11989 lt!1201948))))

(declare-fun b!3520703 () Bool)

(assert (=> b!3520703 (= e!2179262 (= (rule!8122 (h!42765 (t!281700 tokens!494))) lt!1201933))))

(declare-fun b!3520704 () Bool)

(declare-fun e!2179255 () Bool)

(declare-fun e!2179260 () Bool)

(assert (=> b!3520704 (= e!2179255 e!2179260)))

(declare-fun res!1419910 () Bool)

(assert (=> b!3520704 (=> res!1419910 e!2179260)))

(declare-fun lt!1201939 () List!37467)

(declare-fun ++!9253 (List!37467 List!37467) List!37467)

(declare-fun printWithSeparatorTokenList!352 (LexerInterface!5065 List!37469 Token!10318) List!37467)

(assert (=> b!3520704 (= res!1419910 (not (= lt!1201939 (++!9253 (++!9253 lt!1201914 lt!1201944) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)))))))

(declare-fun list!13659 (BalanceConc!22268) List!37467)

(declare-fun charsOf!3490 (Token!10318) BalanceConc!22268)

(assert (=> b!3520704 (= lt!1201914 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494)))))))

(declare-fun lt!1201943 () List!37467)

(assert (=> b!3520704 (= lt!1201943 (++!9253 lt!1201944 lt!1201939))))

(assert (=> b!3520704 (= lt!1201944 (list!13659 (charsOf!3490 separatorToken!241)))))

(assert (=> b!3520704 (= lt!1201939 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 tokens!494) separatorToken!241))))

(declare-fun lt!1201937 () List!37467)

(assert (=> b!3520704 (= lt!1201937 (printWithSeparatorTokenList!352 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3520705 () Bool)

(declare-fun res!1419922 () Bool)

(assert (=> b!3520705 (=> (not res!1419922) (not e!2179265))))

(declare-fun rulesProduceEachTokenIndividually!1516 (LexerInterface!5065 List!37468 BalanceConc!22270) Bool)

(declare-fun seqFromList!4005 (List!37469) BalanceConc!22270)

(assert (=> b!3520705 (= res!1419922 (rulesProduceEachTokenIndividually!1516 thiss!18206 rules!2135 (seqFromList!4005 tokens!494)))))

(declare-fun b!3520706 () Bool)

(declare-fun e!2179256 () Bool)

(declare-fun e!2179269 () Bool)

(assert (=> b!3520706 (= e!2179256 e!2179269)))

(declare-fun res!1419920 () Bool)

(assert (=> b!3520706 (=> res!1419920 e!2179269)))

(declare-fun lt!1201923 () List!37467)

(assert (=> b!3520706 (= res!1419920 (not (= lt!1201937 lt!1201923)))))

(declare-fun lt!1201919 () List!37467)

(assert (=> b!3520706 (= lt!1201919 lt!1201923)))

(assert (=> b!3520706 (= lt!1201923 (++!9253 lt!1201911 lt!1201943))))

(declare-fun lt!1201909 () Unit!52994)

(declare-fun lemmaConcatAssociativity!2008 (List!37467 List!37467 List!37467) Unit!52994)

(assert (=> b!3520706 (= lt!1201909 (lemmaConcatAssociativity!2008 lt!1201911 lt!1201944 lt!1201939))))

(declare-fun b!3520707 () Bool)

(declare-fun e!2179268 () Bool)

(assert (=> b!3520707 (= e!2179268 e!2179261)))

(declare-fun res!1419924 () Bool)

(assert (=> b!3520707 (=> (not res!1419924) (not e!2179261))))

(assert (=> b!3520707 (= res!1419924 (matchR!4819 (regex!5476 lt!1201926) lt!1201944))))

(declare-fun lt!1201905 () Option!7613)

(assert (=> b!3520707 (= lt!1201926 (get!11989 lt!1201905))))

(declare-fun b!3520708 () Bool)

(declare-fun e!2179274 () Bool)

(declare-fun e!2179281 () Bool)

(assert (=> b!3520708 (= e!2179274 e!2179281)))

(declare-fun res!1419903 () Bool)

(assert (=> b!3520708 (=> res!1419903 e!2179281)))

(declare-fun lt!1201929 () BalanceConc!22268)

(declare-fun isEmpty!21805 (BalanceConc!22270) Bool)

(declare-fun lex!2391 (LexerInterface!5065 List!37468 BalanceConc!22268) tuple2!37176)

(assert (=> b!3520708 (= res!1419903 (isEmpty!21805 (_1!21722 (lex!2391 thiss!18206 rules!2135 lt!1201929))))))

(declare-fun seqFromList!4006 (List!37467) BalanceConc!22268)

(assert (=> b!3520708 (= lt!1201929 (seqFromList!4006 lt!1201911))))

(declare-fun b!3520709 () Bool)

(declare-fun e!2179252 () Bool)

(declare-fun lt!1201942 () C!20656)

(declare-fun contains!7004 (List!37467 C!20656) Bool)

(assert (=> b!3520709 (= e!2179252 (contains!7004 lt!1201914 lt!1201942))))

(declare-fun b!3520710 () Bool)

(declare-fun res!1419915 () Bool)

(assert (=> b!3520710 (=> res!1419915 e!2179252)))

(declare-fun validRegex!4674 (Regex!10235) Bool)

(assert (=> b!3520710 (= res!1419915 (not (validRegex!4674 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(declare-fun b!3520711 () Bool)

(declare-fun tp!1086954 () Bool)

(declare-fun e!2179250 () Bool)

(assert (=> b!3520711 (= e!2179280 (and (inv!50577 (h!42765 tokens!494)) e!2179250 tp!1086954))))

(declare-fun b!3520712 () Bool)

(declare-fun res!1419899 () Bool)

(assert (=> b!3520712 (=> (not res!1419899) (not e!2179265))))

(declare-fun rulesInvariant!4462 (LexerInterface!5065 List!37468) Bool)

(assert (=> b!3520712 (= res!1419899 (rulesInvariant!4462 thiss!18206 rules!2135))))

(declare-fun b!3520713 () Bool)

(declare-fun isEmpty!21806 (BalanceConc!22268) Bool)

(assert (=> b!3520713 (= e!2179271 (not (isEmpty!21806 (_2!21722 lt!1201946))))))

(declare-fun b!3520714 () Bool)

(declare-fun res!1419914 () Bool)

(assert (=> b!3520714 (=> (not res!1419914) (not e!2179265))))

(assert (=> b!3520714 (= res!1419914 (and (not ((_ is Nil!37345) tokens!494)) (not ((_ is Nil!37345) (t!281700 tokens!494)))))))

(declare-fun b!3520715 () Bool)

(assert (=> b!3520715 (= e!2179260 e!2179256)))

(declare-fun res!1419907 () Bool)

(assert (=> b!3520715 (=> res!1419907 e!2179256)))

(assert (=> b!3520715 (= res!1419907 (not (= lt!1201937 lt!1201919)))))

(assert (=> b!3520715 (= lt!1201919 (++!9253 (++!9253 lt!1201911 lt!1201944) lt!1201939))))

(declare-fun tp!1086957 () Bool)

(declare-fun e!2179267 () Bool)

(declare-fun b!3520716 () Bool)

(assert (=> b!3520716 (= e!2179267 (and tp!1086957 (inv!50574 (tag!6114 (rule!8122 (h!42765 tokens!494)))) (inv!50578 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) e!2179248))))

(declare-fun b!3520717 () Bool)

(declare-fun res!1419902 () Bool)

(assert (=> b!3520717 (=> (not res!1419902) (not e!2179265))))

(assert (=> b!3520717 (= res!1419902 (isSeparator!5476 (rule!8122 separatorToken!241)))))

(declare-fun b!3520718 () Bool)

(declare-fun res!1419901 () Bool)

(assert (=> b!3520718 (=> res!1419901 e!2179274)))

(assert (=> b!3520718 (= res!1419901 (not (rulesProduceIndividualToken!2557 thiss!18206 rules!2135 (h!42765 tokens!494))))))

(declare-fun b!3520719 () Bool)

(assert (=> b!3520719 (= e!2179273 false)))

(declare-fun b!3520720 () Bool)

(assert (=> b!3520720 (= e!2179259 (isEmpty!21806 (_2!21722 lt!1201925)))))

(declare-fun tp!1086952 () Bool)

(declare-fun b!3520721 () Bool)

(declare-fun e!2179253 () Bool)

(declare-fun inv!21 (TokenValue!5706) Bool)

(assert (=> b!3520721 (= e!2179258 (and (inv!21 (value!176526 separatorToken!241)) e!2179253 tp!1086952))))

(declare-fun res!1419919 () Bool)

(assert (=> b!3520722 (=> (not res!1419919) (not e!2179265))))

(declare-fun forall!8029 (List!37469 Int) Bool)

(assert (=> b!3520722 (= res!1419919 (forall!8029 tokens!494 lambda!122742))))

(declare-fun b!3520723 () Bool)

(declare-fun Unit!52997 () Unit!52994)

(assert (=> b!3520723 (= e!2179263 Unit!52997)))

(declare-fun b!3520724 () Bool)

(declare-fun e!2179249 () Bool)

(assert (=> b!3520724 (= e!2179249 e!2179274)))

(declare-fun res!1419926 () Bool)

(assert (=> b!3520724 (=> res!1419926 e!2179274)))

(declare-fun lt!1201916 () List!37467)

(declare-fun lt!1201908 () List!37467)

(assert (=> b!3520724 (= res!1419926 (or (not (= lt!1201908 lt!1201911)) (not (= lt!1201916 lt!1201911))))))

(assert (=> b!3520724 (= lt!1201911 (list!13659 (charsOf!3490 (h!42765 tokens!494))))))

(declare-fun b!3520725 () Bool)

(assert (=> b!3520725 (= e!2179281 e!2179255)))

(declare-fun res!1419900 () Bool)

(assert (=> b!3520725 (=> res!1419900 e!2179255)))

(assert (=> b!3520725 (= res!1419900 (or (isSeparator!5476 (rule!8122 (h!42765 tokens!494))) (isSeparator!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(declare-fun lt!1201928 () Unit!52994)

(declare-fun forallContained!1423 (List!37469 Int Token!10318) Unit!52994)

(assert (=> b!3520725 (= lt!1201928 (forallContained!1423 tokens!494 lambda!122742 (h!42765 (t!281700 tokens!494))))))

(declare-fun lt!1201936 () Unit!52994)

(assert (=> b!3520725 (= lt!1201936 (forallContained!1423 tokens!494 lambda!122742 (h!42765 tokens!494)))))

(declare-fun b!3520726 () Bool)

(declare-fun e!2179279 () Bool)

(declare-fun tp!1086955 () Bool)

(assert (=> b!3520726 (= e!2179253 (and tp!1086955 (inv!50574 (tag!6114 (rule!8122 separatorToken!241))) (inv!50578 (transformation!5476 (rule!8122 separatorToken!241))) e!2179279))))

(declare-fun b!3520727 () Bool)

(declare-fun res!1419916 () Bool)

(assert (=> b!3520727 (=> (not res!1419916) (not e!2179265))))

(declare-fun isEmpty!21807 (List!37468) Bool)

(assert (=> b!3520727 (= res!1419916 (not (isEmpty!21807 rules!2135)))))

(assert (=> b!3520728 (= e!2179279 (and tp!1086946 tp!1086956))))

(declare-fun b!3520729 () Bool)

(assert (=> b!3520729 (= e!2179265 (not e!2179249))))

(declare-fun res!1419913 () Bool)

(assert (=> b!3520729 (=> res!1419913 e!2179249)))

(assert (=> b!3520729 (= res!1419913 (not (= lt!1201916 lt!1201908)))))

(declare-fun printList!1613 (LexerInterface!5065 List!37469) List!37467)

(assert (=> b!3520729 (= lt!1201908 (printList!1613 thiss!18206 (Cons!37345 (h!42765 tokens!494) Nil!37345)))))

(declare-fun lt!1201924 () BalanceConc!22268)

(assert (=> b!3520729 (= lt!1201916 (list!13659 lt!1201924))))

(declare-fun lt!1201920 () BalanceConc!22270)

(declare-fun printTailRec!1560 (LexerInterface!5065 BalanceConc!22270 Int BalanceConc!22268) BalanceConc!22268)

(assert (=> b!3520729 (= lt!1201924 (printTailRec!1560 thiss!18206 lt!1201920 0 (BalanceConc!22269 Empty!11327)))))

(declare-fun print!2130 (LexerInterface!5065 BalanceConc!22270) BalanceConc!22268)

(assert (=> b!3520729 (= lt!1201924 (print!2130 thiss!18206 lt!1201920))))

(declare-fun singletonSeq!2572 (Token!10318) BalanceConc!22270)

(assert (=> b!3520729 (= lt!1201920 (singletonSeq!2572 (h!42765 tokens!494)))))

(assert (=> b!3520730 (= e!2179269 e!2179252)))

(declare-fun res!1419904 () Bool)

(assert (=> b!3520730 (=> res!1419904 e!2179252)))

(declare-fun usedCharacters!710 (Regex!10235) List!37467)

(assert (=> b!3520730 (= res!1419904 (contains!7004 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) lt!1201942))))

(declare-fun head!7385 (List!37467) C!20656)

(assert (=> b!3520730 (= lt!1201942 (head!7385 lt!1201914))))

(declare-datatypes ((tuple2!37178 0))(
  ( (tuple2!37179 (_1!21723 Token!10318) (_2!21723 List!37467)) )
))
(declare-datatypes ((Option!7614 0))(
  ( (None!7613) (Some!7613 (v!37101 tuple2!37178)) )
))
(declare-fun maxPrefixOneRule!1772 (LexerInterface!5065 Rule!10752 List!37467) Option!7614)

(declare-fun apply!8897 (TokenValueInjection!10840 BalanceConc!22268) TokenValue!5706)

(declare-fun size!28412 (List!37467) Int)

(assert (=> b!3520730 (= (maxPrefixOneRule!1772 thiss!18206 (rule!8122 (h!42765 (t!281700 tokens!494))) lt!1201914) (Some!7613 (tuple2!37179 (Token!10319 (apply!8897 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) (seqFromList!4006 lt!1201914)) (rule!8122 (h!42765 (t!281700 tokens!494))) (size!28412 lt!1201914) lt!1201914) Nil!37343)))))

(declare-fun lt!1201918 () Unit!52994)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!865 (LexerInterface!5065 List!37468 List!37467 List!37467 List!37467 Rule!10752) Unit!52994)

(assert (=> b!3520730 (= lt!1201918 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!865 thiss!18206 rules!2135 lt!1201914 lt!1201914 Nil!37343 (rule!8122 (h!42765 (t!281700 tokens!494)))))))

(assert (=> b!3520730 e!2179254))

(declare-fun res!1419912 () Bool)

(assert (=> b!3520730 (=> (not res!1419912) (not e!2179254))))

(declare-fun isDefined!5870 (Option!7613) Bool)

(assert (=> b!3520730 (= res!1419912 (isDefined!5870 lt!1201948))))

(declare-fun getRuleFromTag!1119 (LexerInterface!5065 List!37468 String!41864) Option!7613)

(assert (=> b!3520730 (= lt!1201948 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(declare-fun lt!1201922 () Unit!52994)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1119 (LexerInterface!5065 List!37468 List!37467 Token!10318) Unit!52994)

(assert (=> b!3520730 (= lt!1201922 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1119 thiss!18206 rules!2135 lt!1201914 (h!42765 (t!281700 tokens!494))))))

(declare-fun lt!1201940 () Bool)

(assert (=> b!3520730 lt!1201940))

(declare-fun lt!1201938 () Unit!52994)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1054 (LexerInterface!5065 List!37468 List!37469 Token!10318) Unit!52994)

(assert (=> b!3520730 (= lt!1201938 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1054 thiss!18206 rules!2135 tokens!494 (h!42765 (t!281700 tokens!494))))))

(declare-fun maxPrefix!2605 (LexerInterface!5065 List!37468 List!37467) Option!7614)

(assert (=> b!3520730 (= (maxPrefix!2605 thiss!18206 rules!2135 lt!1201923) (Some!7613 (tuple2!37179 (h!42765 tokens!494) lt!1201943)))))

(declare-fun lt!1201932 () Unit!52994)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!232 (LexerInterface!5065 List!37468 Token!10318 Rule!10752 List!37467 Rule!10752) Unit!52994)

(assert (=> b!3520730 (= lt!1201932 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!232 thiss!18206 rules!2135 (h!42765 tokens!494) (rule!8122 (h!42765 tokens!494)) lt!1201943 (rule!8122 separatorToken!241)))))

(assert (=> b!3520730 (not (contains!7004 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494)))) lt!1201930))))

(declare-fun lt!1201931 () Unit!52994)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!276 (LexerInterface!5065 List!37468 List!37468 Rule!10752 Rule!10752 C!20656) Unit!52994)

(assert (=> b!3520730 (= lt!1201931 (lemmaNonSepRuleNotContainsCharContainedInASepRule!276 thiss!18206 rules!2135 rules!2135 (rule!8122 (h!42765 tokens!494)) (rule!8122 separatorToken!241) lt!1201930))))

(declare-fun lt!1201921 () Unit!52994)

(assert (=> b!3520730 (= lt!1201921 (forallContained!1423 tokens!494 lambda!122743 (h!42765 (t!281700 tokens!494))))))

(declare-fun lt!1201915 () Bool)

(assert (=> b!3520730 (= lt!1201940 (not lt!1201915))))

(assert (=> b!3520730 (= lt!1201940 (rulesProduceIndividualToken!2557 thiss!18206 rules!2135 (h!42765 (t!281700 tokens!494))))))

(assert (=> b!3520730 (= lt!1201915 e!2179271)))

(declare-fun res!1419925 () Bool)

(assert (=> b!3520730 (=> res!1419925 e!2179271)))

(declare-fun size!28413 (BalanceConc!22270) Int)

(assert (=> b!3520730 (= res!1419925 (not (= (size!28413 (_1!21722 lt!1201946)) 1)))))

(declare-fun lt!1201934 () BalanceConc!22268)

(assert (=> b!3520730 (= lt!1201946 (lex!2391 thiss!18206 rules!2135 lt!1201934))))

(declare-fun lt!1201912 () BalanceConc!22270)

(assert (=> b!3520730 (= lt!1201934 (printTailRec!1560 thiss!18206 lt!1201912 0 (BalanceConc!22269 Empty!11327)))))

(assert (=> b!3520730 (= lt!1201934 (print!2130 thiss!18206 lt!1201912))))

(assert (=> b!3520730 (= lt!1201912 (singletonSeq!2572 (h!42765 (t!281700 tokens!494))))))

(assert (=> b!3520730 e!2179259))

(declare-fun res!1419911 () Bool)

(assert (=> b!3520730 (=> (not res!1419911) (not e!2179259))))

(assert (=> b!3520730 (= res!1419911 (= (size!28413 (_1!21722 lt!1201925)) 1))))

(declare-fun lt!1201907 () BalanceConc!22268)

(assert (=> b!3520730 (= lt!1201925 (lex!2391 thiss!18206 rules!2135 lt!1201907))))

(declare-fun lt!1201906 () BalanceConc!22270)

(assert (=> b!3520730 (= lt!1201907 (printTailRec!1560 thiss!18206 lt!1201906 0 (BalanceConc!22269 Empty!11327)))))

(assert (=> b!3520730 (= lt!1201907 (print!2130 thiss!18206 lt!1201906))))

(assert (=> b!3520730 (= lt!1201906 (singletonSeq!2572 separatorToken!241))))

(declare-fun lt!1201927 () Unit!52994)

(assert (=> b!3520730 (= lt!1201927 e!2179263)))

(declare-fun c!606751 () Bool)

(assert (=> b!3520730 (= c!606751 (not (contains!7004 (usedCharacters!710 (regex!5476 (rule!8122 separatorToken!241))) lt!1201930)))))

(assert (=> b!3520730 (= lt!1201930 (head!7385 lt!1201944))))

(assert (=> b!3520730 e!2179268))

(declare-fun res!1419908 () Bool)

(assert (=> b!3520730 (=> (not res!1419908) (not e!2179268))))

(assert (=> b!3520730 (= res!1419908 (isDefined!5870 lt!1201905))))

(assert (=> b!3520730 (= lt!1201905 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241))))))

(declare-fun lt!1201917 () Unit!52994)

(assert (=> b!3520730 (= lt!1201917 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1119 thiss!18206 rules!2135 lt!1201944 separatorToken!241))))

(assert (=> b!3520730 (= (maxPrefixOneRule!1772 thiss!18206 (rule!8122 (h!42765 tokens!494)) lt!1201911) (Some!7613 (tuple2!37179 (Token!10319 (apply!8897 (transformation!5476 (rule!8122 (h!42765 tokens!494))) lt!1201929) (rule!8122 (h!42765 tokens!494)) (size!28412 lt!1201911) lt!1201911) Nil!37343)))))

(declare-fun lt!1201947 () Unit!52994)

(assert (=> b!3520730 (= lt!1201947 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!865 thiss!18206 rules!2135 lt!1201911 lt!1201911 Nil!37343 (rule!8122 (h!42765 tokens!494))))))

(assert (=> b!3520730 e!2179266))

(declare-fun res!1419921 () Bool)

(assert (=> b!3520730 (=> (not res!1419921) (not e!2179266))))

(assert (=> b!3520730 (= res!1419921 (isDefined!5870 lt!1201945))))

(assert (=> b!3520730 (= lt!1201945 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494)))))))

(declare-fun lt!1201913 () Unit!52994)

(assert (=> b!3520730 (= lt!1201913 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1119 thiss!18206 rules!2135 lt!1201911 (h!42765 tokens!494)))))

(declare-fun lt!1201941 () Unit!52994)

(assert (=> b!3520730 (= lt!1201941 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1054 thiss!18206 rules!2135 tokens!494 (h!42765 tokens!494)))))

(declare-fun tp!1086947 () Bool)

(declare-fun b!3520731 () Bool)

(assert (=> b!3520731 (= e!2179250 (and (inv!21 (value!176526 (h!42765 tokens!494))) e!2179267 tp!1086947))))

(assert (= (and start!327082 res!1419917) b!3520727))

(assert (= (and b!3520727 res!1419916) b!3520712))

(assert (= (and b!3520712 res!1419899) b!3520705))

(assert (= (and b!3520705 res!1419922) b!3520693))

(assert (= (and b!3520693 res!1419898) b!3520717))

(assert (= (and b!3520717 res!1419902) b!3520722))

(assert (= (and b!3520722 res!1419919) b!3520699))

(assert (= (and b!3520699 res!1419923) b!3520714))

(assert (= (and b!3520714 res!1419914) b!3520729))

(assert (= (and b!3520729 (not res!1419913)) b!3520724))

(assert (= (and b!3520724 (not res!1419926)) b!3520718))

(assert (= (and b!3520718 (not res!1419901)) b!3520708))

(assert (= (and b!3520708 (not res!1419903)) b!3520725))

(assert (= (and b!3520725 (not res!1419900)) b!3520704))

(assert (= (and b!3520704 (not res!1419910)) b!3520715))

(assert (= (and b!3520715 (not res!1419907)) b!3520706))

(assert (= (and b!3520706 (not res!1419920)) b!3520730))

(assert (= (and b!3520730 res!1419921) b!3520695))

(assert (= (and b!3520695 res!1419897) b!3520697))

(assert (= (and b!3520730 res!1419908) b!3520707))

(assert (= (and b!3520707 res!1419924) b!3520692))

(assert (= (and b!3520730 c!606751) b!3520691))

(assert (= (and b!3520730 (not c!606751)) b!3520723))

(assert (= (and b!3520691 res!1419909) b!3520719))

(assert (= (and b!3520730 res!1419911) b!3520690))

(assert (= (and b!3520690 res!1419918) b!3520720))

(assert (= (and b!3520730 (not res!1419925)) b!3520696))

(assert (= (and b!3520696 (not res!1419905)) b!3520713))

(assert (= (and b!3520730 res!1419912) b!3520702))

(assert (= (and b!3520702 res!1419906) b!3520703))

(assert (= (and b!3520730 (not res!1419904)) b!3520710))

(assert (= (and b!3520710 (not res!1419915)) b!3520709))

(assert (= b!3520701 b!3520694))

(assert (= b!3520700 b!3520701))

(assert (= (and start!327082 ((_ is Cons!37344) rules!2135)) b!3520700))

(assert (= b!3520716 b!3520698))

(assert (= b!3520731 b!3520716))

(assert (= b!3520711 b!3520731))

(assert (= (and start!327082 ((_ is Cons!37345) tokens!494)) b!3520711))

(assert (= b!3520726 b!3520728))

(assert (= b!3520721 b!3520726))

(assert (= start!327082 b!3520721))

(declare-fun m!3970523 () Bool)

(assert (=> b!3520716 m!3970523))

(declare-fun m!3970525 () Bool)

(assert (=> b!3520716 m!3970525))

(declare-fun m!3970527 () Bool)

(assert (=> b!3520704 m!3970527))

(declare-fun m!3970529 () Bool)

(assert (=> b!3520704 m!3970529))

(declare-fun m!3970531 () Bool)

(assert (=> b!3520704 m!3970531))

(declare-fun m!3970533 () Bool)

(assert (=> b!3520704 m!3970533))

(assert (=> b!3520704 m!3970527))

(declare-fun m!3970535 () Bool)

(assert (=> b!3520704 m!3970535))

(declare-fun m!3970537 () Bool)

(assert (=> b!3520704 m!3970537))

(declare-fun m!3970539 () Bool)

(assert (=> b!3520704 m!3970539))

(declare-fun m!3970541 () Bool)

(assert (=> b!3520704 m!3970541))

(assert (=> b!3520704 m!3970539))

(declare-fun m!3970543 () Bool)

(assert (=> b!3520704 m!3970543))

(assert (=> b!3520704 m!3970541))

(assert (=> b!3520704 m!3970529))

(declare-fun m!3970545 () Bool)

(assert (=> b!3520704 m!3970545))

(declare-fun m!3970547 () Bool)

(assert (=> b!3520702 m!3970547))

(declare-fun m!3970549 () Bool)

(assert (=> b!3520702 m!3970549))

(declare-fun m!3970551 () Bool)

(assert (=> b!3520696 m!3970551))

(declare-fun m!3970553 () Bool)

(assert (=> b!3520691 m!3970553))

(declare-fun m!3970555 () Bool)

(assert (=> b!3520691 m!3970555))

(declare-fun m!3970557 () Bool)

(assert (=> b!3520725 m!3970557))

(declare-fun m!3970559 () Bool)

(assert (=> b!3520725 m!3970559))

(declare-fun m!3970561 () Bool)

(assert (=> b!3520712 m!3970561))

(declare-fun m!3970563 () Bool)

(assert (=> b!3520701 m!3970563))

(declare-fun m!3970565 () Bool)

(assert (=> b!3520701 m!3970565))

(declare-fun m!3970567 () Bool)

(assert (=> b!3520690 m!3970567))

(declare-fun m!3970569 () Bool)

(assert (=> b!3520730 m!3970569))

(declare-fun m!3970571 () Bool)

(assert (=> b!3520730 m!3970571))

(declare-fun m!3970573 () Bool)

(assert (=> b!3520730 m!3970573))

(declare-fun m!3970575 () Bool)

(assert (=> b!3520730 m!3970575))

(declare-fun m!3970577 () Bool)

(assert (=> b!3520730 m!3970577))

(declare-fun m!3970579 () Bool)

(assert (=> b!3520730 m!3970579))

(declare-fun m!3970581 () Bool)

(assert (=> b!3520730 m!3970581))

(declare-fun m!3970583 () Bool)

(assert (=> b!3520730 m!3970583))

(declare-fun m!3970585 () Bool)

(assert (=> b!3520730 m!3970585))

(declare-fun m!3970587 () Bool)

(assert (=> b!3520730 m!3970587))

(declare-fun m!3970589 () Bool)

(assert (=> b!3520730 m!3970589))

(declare-fun m!3970591 () Bool)

(assert (=> b!3520730 m!3970591))

(declare-fun m!3970593 () Bool)

(assert (=> b!3520730 m!3970593))

(declare-fun m!3970595 () Bool)

(assert (=> b!3520730 m!3970595))

(declare-fun m!3970597 () Bool)

(assert (=> b!3520730 m!3970597))

(declare-fun m!3970599 () Bool)

(assert (=> b!3520730 m!3970599))

(declare-fun m!3970601 () Bool)

(assert (=> b!3520730 m!3970601))

(declare-fun m!3970603 () Bool)

(assert (=> b!3520730 m!3970603))

(declare-fun m!3970605 () Bool)

(assert (=> b!3520730 m!3970605))

(declare-fun m!3970607 () Bool)

(assert (=> b!3520730 m!3970607))

(declare-fun m!3970609 () Bool)

(assert (=> b!3520730 m!3970609))

(assert (=> b!3520730 m!3970603))

(declare-fun m!3970611 () Bool)

(assert (=> b!3520730 m!3970611))

(declare-fun m!3970613 () Bool)

(assert (=> b!3520730 m!3970613))

(declare-fun m!3970615 () Bool)

(assert (=> b!3520730 m!3970615))

(declare-fun m!3970617 () Bool)

(assert (=> b!3520730 m!3970617))

(declare-fun m!3970619 () Bool)

(assert (=> b!3520730 m!3970619))

(assert (=> b!3520730 m!3970589))

(declare-fun m!3970621 () Bool)

(assert (=> b!3520730 m!3970621))

(declare-fun m!3970623 () Bool)

(assert (=> b!3520730 m!3970623))

(declare-fun m!3970625 () Bool)

(assert (=> b!3520730 m!3970625))

(declare-fun m!3970627 () Bool)

(assert (=> b!3520730 m!3970627))

(declare-fun m!3970629 () Bool)

(assert (=> b!3520730 m!3970629))

(assert (=> b!3520730 m!3970595))

(declare-fun m!3970631 () Bool)

(assert (=> b!3520730 m!3970631))

(declare-fun m!3970633 () Bool)

(assert (=> b!3520730 m!3970633))

(declare-fun m!3970635 () Bool)

(assert (=> b!3520730 m!3970635))

(declare-fun m!3970637 () Bool)

(assert (=> b!3520730 m!3970637))

(declare-fun m!3970639 () Bool)

(assert (=> b!3520730 m!3970639))

(assert (=> b!3520730 m!3970621))

(declare-fun m!3970641 () Bool)

(assert (=> b!3520730 m!3970641))

(declare-fun m!3970643 () Bool)

(assert (=> b!3520730 m!3970643))

(declare-fun m!3970645 () Bool)

(assert (=> b!3520730 m!3970645))

(declare-fun m!3970647 () Bool)

(assert (=> b!3520730 m!3970647))

(declare-fun m!3970649 () Bool)

(assert (=> b!3520730 m!3970649))

(declare-fun m!3970651 () Bool)

(assert (=> b!3520730 m!3970651))

(declare-fun m!3970653 () Bool)

(assert (=> b!3520730 m!3970653))

(declare-fun m!3970655 () Bool)

(assert (=> b!3520713 m!3970655))

(declare-fun m!3970657 () Bool)

(assert (=> b!3520707 m!3970657))

(declare-fun m!3970659 () Bool)

(assert (=> b!3520707 m!3970659))

(declare-fun m!3970661 () Bool)

(assert (=> b!3520705 m!3970661))

(assert (=> b!3520705 m!3970661))

(declare-fun m!3970663 () Bool)

(assert (=> b!3520705 m!3970663))

(declare-fun m!3970665 () Bool)

(assert (=> b!3520693 m!3970665))

(declare-fun m!3970667 () Bool)

(assert (=> start!327082 m!3970667))

(declare-fun m!3970669 () Bool)

(assert (=> b!3520699 m!3970669))

(declare-fun m!3970671 () Bool)

(assert (=> b!3520710 m!3970671))

(declare-fun m!3970673 () Bool)

(assert (=> b!3520724 m!3970673))

(assert (=> b!3520724 m!3970673))

(declare-fun m!3970675 () Bool)

(assert (=> b!3520724 m!3970675))

(declare-fun m!3970677 () Bool)

(assert (=> b!3520727 m!3970677))

(declare-fun m!3970679 () Bool)

(assert (=> b!3520708 m!3970679))

(declare-fun m!3970681 () Bool)

(assert (=> b!3520708 m!3970681))

(declare-fun m!3970683 () Bool)

(assert (=> b!3520708 m!3970683))

(declare-fun m!3970685 () Bool)

(assert (=> b!3520731 m!3970685))

(declare-fun m!3970687 () Bool)

(assert (=> b!3520729 m!3970687))

(declare-fun m!3970689 () Bool)

(assert (=> b!3520729 m!3970689))

(declare-fun m!3970691 () Bool)

(assert (=> b!3520729 m!3970691))

(declare-fun m!3970693 () Bool)

(assert (=> b!3520729 m!3970693))

(declare-fun m!3970695 () Bool)

(assert (=> b!3520729 m!3970695))

(declare-fun m!3970697 () Bool)

(assert (=> b!3520709 m!3970697))

(declare-fun m!3970699 () Bool)

(assert (=> b!3520715 m!3970699))

(assert (=> b!3520715 m!3970699))

(declare-fun m!3970701 () Bool)

(assert (=> b!3520715 m!3970701))

(declare-fun m!3970703 () Bool)

(assert (=> b!3520718 m!3970703))

(declare-fun m!3970705 () Bool)

(assert (=> b!3520695 m!3970705))

(declare-fun m!3970707 () Bool)

(assert (=> b!3520695 m!3970707))

(declare-fun m!3970709 () Bool)

(assert (=> b!3520706 m!3970709))

(declare-fun m!3970711 () Bool)

(assert (=> b!3520706 m!3970711))

(declare-fun m!3970713 () Bool)

(assert (=> b!3520722 m!3970713))

(declare-fun m!3970715 () Bool)

(assert (=> b!3520726 m!3970715))

(declare-fun m!3970717 () Bool)

(assert (=> b!3520726 m!3970717))

(declare-fun m!3970719 () Bool)

(assert (=> b!3520711 m!3970719))

(declare-fun m!3970721 () Bool)

(assert (=> b!3520720 m!3970721))

(declare-fun m!3970723 () Bool)

(assert (=> b!3520721 m!3970723))

(check-sat (not b!3520704) (not b!3520718) (not b_next!91437) b_and!250735 (not b_next!91433) (not b!3520724) (not b!3520713) (not b!3520701) (not b!3520715) (not b!3520740) (not b_next!91439) (not b!3520716) (not b!3520708) (not b!3520695) b_and!250737 (not b_next!91443) (not b!3520711) (not b!3520725) (not start!327082) (not b_next!91441) (not b!3520720) b_and!250733 (not b!3520702) (not b_next!91435) (not b!3520726) (not b!3520722) b_and!250727 (not b!3520710) (not b!3520729) (not b!3520699) (not b!3520705) (not b!3520712) (not b!3520707) (not b!3520709) b_and!250729 b_and!250731 (not b!3520706) (not b!3520730) (not b!3520696) (not b!3520691) (not b!3520721) (not b!3520700) (not b!3520727) (not b!3520731) (not b!3520690) (not b!3520693))
(check-sat (not b_next!91439) (not b_next!91441) b_and!250733 (not b_next!91435) b_and!250727 (not b_next!91437) b_and!250729 b_and!250731 b_and!250735 (not b_next!91433) b_and!250737 (not b_next!91443))
(get-model)

(declare-fun b!3520804 () Bool)

(declare-fun res!1419968 () Bool)

(declare-fun e!2179330 () Bool)

(assert (=> b!3520804 (=> (not res!1419968) (not e!2179330))))

(declare-fun isEmpty!21812 (List!37467) Bool)

(declare-fun tail!5490 (List!37467) List!37467)

(assert (=> b!3520804 (= res!1419968 (isEmpty!21812 (tail!5490 lt!1201911)))))

(declare-fun bm!254338 () Bool)

(declare-fun call!254343 () Bool)

(assert (=> bm!254338 (= call!254343 (isEmpty!21812 lt!1201911))))

(declare-fun b!3520805 () Bool)

(declare-fun res!1419975 () Bool)

(declare-fun e!2179333 () Bool)

(assert (=> b!3520805 (=> res!1419975 e!2179333)))

(assert (=> b!3520805 (= res!1419975 e!2179330)))

(declare-fun res!1419973 () Bool)

(assert (=> b!3520805 (=> (not res!1419973) (not e!2179330))))

(declare-fun lt!1201976 () Bool)

(assert (=> b!3520805 (= res!1419973 lt!1201976)))

(declare-fun b!3520806 () Bool)

(declare-fun res!1419971 () Bool)

(assert (=> b!3520806 (=> (not res!1419971) (not e!2179330))))

(assert (=> b!3520806 (= res!1419971 (not call!254343))))

(declare-fun b!3520807 () Bool)

(declare-fun e!2179331 () Bool)

(assert (=> b!3520807 (= e!2179333 e!2179331)))

(declare-fun res!1419972 () Bool)

(assert (=> b!3520807 (=> (not res!1419972) (not e!2179331))))

(assert (=> b!3520807 (= res!1419972 (not lt!1201976))))

(declare-fun b!3520808 () Bool)

(declare-fun e!2179332 () Bool)

(assert (=> b!3520808 (= e!2179332 (not (= (head!7385 lt!1201911) (c!606752 (regex!5476 lt!1201935)))))))

(declare-fun b!3520809 () Bool)

(declare-fun e!2179327 () Bool)

(declare-fun e!2179328 () Bool)

(assert (=> b!3520809 (= e!2179327 e!2179328)))

(declare-fun c!606768 () Bool)

(assert (=> b!3520809 (= c!606768 ((_ is EmptyLang!10235) (regex!5476 lt!1201935)))))

(declare-fun b!3520810 () Bool)

(declare-fun e!2179329 () Bool)

(declare-fun derivativeStep!3070 (Regex!10235 C!20656) Regex!10235)

(assert (=> b!3520810 (= e!2179329 (matchR!4819 (derivativeStep!3070 (regex!5476 lt!1201935) (head!7385 lt!1201911)) (tail!5490 lt!1201911)))))

(declare-fun b!3520811 () Bool)

(declare-fun nullable!3517 (Regex!10235) Bool)

(assert (=> b!3520811 (= e!2179329 (nullable!3517 (regex!5476 lt!1201935)))))

(declare-fun b!3520803 () Bool)

(declare-fun res!1419970 () Bool)

(assert (=> b!3520803 (=> res!1419970 e!2179332)))

(assert (=> b!3520803 (= res!1419970 (not (isEmpty!21812 (tail!5490 lt!1201911))))))

(declare-fun d!1026945 () Bool)

(assert (=> d!1026945 e!2179327))

(declare-fun c!606767 () Bool)

(assert (=> d!1026945 (= c!606767 ((_ is EmptyExpr!10235) (regex!5476 lt!1201935)))))

(assert (=> d!1026945 (= lt!1201976 e!2179329)))

(declare-fun c!606769 () Bool)

(assert (=> d!1026945 (= c!606769 (isEmpty!21812 lt!1201911))))

(assert (=> d!1026945 (validRegex!4674 (regex!5476 lt!1201935))))

(assert (=> d!1026945 (= (matchR!4819 (regex!5476 lt!1201935) lt!1201911) lt!1201976)))

(declare-fun b!3520812 () Bool)

(assert (=> b!3520812 (= e!2179327 (= lt!1201976 call!254343))))

(declare-fun b!3520813 () Bool)

(declare-fun res!1419969 () Bool)

(assert (=> b!3520813 (=> res!1419969 e!2179333)))

(assert (=> b!3520813 (= res!1419969 (not ((_ is ElementMatch!10235) (regex!5476 lt!1201935))))))

(assert (=> b!3520813 (= e!2179328 e!2179333)))

(declare-fun b!3520814 () Bool)

(assert (=> b!3520814 (= e!2179328 (not lt!1201976))))

(declare-fun b!3520815 () Bool)

(assert (=> b!3520815 (= e!2179330 (= (head!7385 lt!1201911) (c!606752 (regex!5476 lt!1201935))))))

(declare-fun b!3520816 () Bool)

(assert (=> b!3520816 (= e!2179331 e!2179332)))

(declare-fun res!1419974 () Bool)

(assert (=> b!3520816 (=> res!1419974 e!2179332)))

(assert (=> b!3520816 (= res!1419974 call!254343)))

(assert (= (and d!1026945 c!606769) b!3520811))

(assert (= (and d!1026945 (not c!606769)) b!3520810))

(assert (= (and d!1026945 c!606767) b!3520812))

(assert (= (and d!1026945 (not c!606767)) b!3520809))

(assert (= (and b!3520809 c!606768) b!3520814))

(assert (= (and b!3520809 (not c!606768)) b!3520813))

(assert (= (and b!3520813 (not res!1419969)) b!3520805))

(assert (= (and b!3520805 res!1419973) b!3520806))

(assert (= (and b!3520806 res!1419971) b!3520804))

(assert (= (and b!3520804 res!1419968) b!3520815))

(assert (= (and b!3520805 (not res!1419975)) b!3520807))

(assert (= (and b!3520807 res!1419972) b!3520816))

(assert (= (and b!3520816 (not res!1419974)) b!3520803))

(assert (= (and b!3520803 (not res!1419970)) b!3520808))

(assert (= (or b!3520812 b!3520806 b!3520816) bm!254338))

(declare-fun m!3970773 () Bool)

(assert (=> d!1026945 m!3970773))

(declare-fun m!3970775 () Bool)

(assert (=> d!1026945 m!3970775))

(declare-fun m!3970777 () Bool)

(assert (=> b!3520803 m!3970777))

(assert (=> b!3520803 m!3970777))

(declare-fun m!3970779 () Bool)

(assert (=> b!3520803 m!3970779))

(assert (=> bm!254338 m!3970773))

(declare-fun m!3970781 () Bool)

(assert (=> b!3520810 m!3970781))

(assert (=> b!3520810 m!3970781))

(declare-fun m!3970783 () Bool)

(assert (=> b!3520810 m!3970783))

(assert (=> b!3520810 m!3970777))

(assert (=> b!3520810 m!3970783))

(assert (=> b!3520810 m!3970777))

(declare-fun m!3970785 () Bool)

(assert (=> b!3520810 m!3970785))

(assert (=> b!3520815 m!3970781))

(declare-fun m!3970787 () Bool)

(assert (=> b!3520811 m!3970787))

(assert (=> b!3520808 m!3970781))

(assert (=> b!3520804 m!3970777))

(assert (=> b!3520804 m!3970777))

(assert (=> b!3520804 m!3970779))

(assert (=> b!3520695 d!1026945))

(declare-fun d!1026951 () Bool)

(assert (=> d!1026951 (= (get!11989 lt!1201945) (v!37100 lt!1201945))))

(assert (=> b!3520695 d!1026951))

(declare-fun d!1026953 () Bool)

(assert (=> d!1026953 (= (inv!50574 (tag!6114 (rule!8122 (h!42765 tokens!494)))) (= (mod (str.len (value!176525 (tag!6114 (rule!8122 (h!42765 tokens!494))))) 2) 0))))

(assert (=> b!3520716 d!1026953))

(declare-fun d!1026955 () Bool)

(declare-fun res!1419978 () Bool)

(declare-fun e!2179336 () Bool)

(assert (=> d!1026955 (=> (not res!1419978) (not e!2179336))))

(declare-fun semiInverseModEq!2312 (Int Int) Bool)

(assert (=> d!1026955 (= res!1419978 (semiInverseModEq!2312 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))))))

(assert (=> d!1026955 (= (inv!50578 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) e!2179336)))

(declare-fun b!3520819 () Bool)

(declare-fun equivClasses!2211 (Int Int) Bool)

(assert (=> b!3520819 (= e!2179336 (equivClasses!2211 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))))))

(assert (= (and d!1026955 res!1419978) b!3520819))

(declare-fun m!3970789 () Bool)

(assert (=> d!1026955 m!3970789))

(declare-fun m!3970791 () Bool)

(assert (=> b!3520819 m!3970791))

(assert (=> b!3520716 d!1026955))

(declare-fun d!1026957 () Bool)

(declare-fun lt!1202008 () Bool)

(declare-fun e!2179383 () Bool)

(assert (=> d!1026957 (= lt!1202008 e!2179383)))

(declare-fun res!1420030 () Bool)

(assert (=> d!1026957 (=> (not res!1420030) (not e!2179383))))

(declare-fun list!13662 (BalanceConc!22270) List!37469)

(assert (=> d!1026957 (= res!1420030 (= (list!13662 (_1!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494)))))) (list!13662 (singletonSeq!2572 (h!42765 tokens!494)))))))

(declare-fun e!2179384 () Bool)

(assert (=> d!1026957 (= lt!1202008 e!2179384)))

(declare-fun res!1420029 () Bool)

(assert (=> d!1026957 (=> (not res!1420029) (not e!2179384))))

(declare-fun lt!1202009 () tuple2!37176)

(assert (=> d!1026957 (= res!1420029 (= (size!28413 (_1!21722 lt!1202009)) 1))))

(assert (=> d!1026957 (= lt!1202009 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494)))))))

(assert (=> d!1026957 (not (isEmpty!21807 rules!2135))))

(assert (=> d!1026957 (= (rulesProduceIndividualToken!2557 thiss!18206 rules!2135 (h!42765 tokens!494)) lt!1202008)))

(declare-fun b!3520912 () Bool)

(declare-fun res!1420031 () Bool)

(assert (=> b!3520912 (=> (not res!1420031) (not e!2179384))))

(assert (=> b!3520912 (= res!1420031 (= (apply!8896 (_1!21722 lt!1202009) 0) (h!42765 tokens!494)))))

(declare-fun b!3520913 () Bool)

(assert (=> b!3520913 (= e!2179384 (isEmpty!21806 (_2!21722 lt!1202009)))))

(declare-fun b!3520914 () Bool)

(assert (=> b!3520914 (= e!2179383 (isEmpty!21806 (_2!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494)))))))))

(assert (= (and d!1026957 res!1420029) b!3520912))

(assert (= (and b!3520912 res!1420031) b!3520913))

(assert (= (and d!1026957 res!1420030) b!3520914))

(assert (=> d!1026957 m!3970691))

(declare-fun m!3970901 () Bool)

(assert (=> d!1026957 m!3970901))

(declare-fun m!3970903 () Bool)

(assert (=> d!1026957 m!3970903))

(declare-fun m!3970905 () Bool)

(assert (=> d!1026957 m!3970905))

(assert (=> d!1026957 m!3970677))

(assert (=> d!1026957 m!3970691))

(declare-fun m!3970907 () Bool)

(assert (=> d!1026957 m!3970907))

(assert (=> d!1026957 m!3970691))

(assert (=> d!1026957 m!3970903))

(declare-fun m!3970909 () Bool)

(assert (=> d!1026957 m!3970909))

(declare-fun m!3970911 () Bool)

(assert (=> b!3520912 m!3970911))

(declare-fun m!3970913 () Bool)

(assert (=> b!3520913 m!3970913))

(assert (=> b!3520914 m!3970691))

(assert (=> b!3520914 m!3970691))

(assert (=> b!3520914 m!3970903))

(assert (=> b!3520914 m!3970903))

(assert (=> b!3520914 m!3970905))

(declare-fun m!3970915 () Bool)

(assert (=> b!3520914 m!3970915))

(assert (=> b!3520718 d!1026957))

(declare-fun d!1026977 () Bool)

(declare-fun lt!1202015 () Token!10318)

(declare-fun apply!8898 (List!37469 Int) Token!10318)

(assert (=> d!1026977 (= lt!1202015 (apply!8898 (list!13662 (_1!21722 lt!1201946)) 0))))

(declare-fun apply!8899 (Conc!11328 Int) Token!10318)

(assert (=> d!1026977 (= lt!1202015 (apply!8899 (c!606754 (_1!21722 lt!1201946)) 0))))

(declare-fun e!2179387 () Bool)

(assert (=> d!1026977 e!2179387))

(declare-fun res!1420034 () Bool)

(assert (=> d!1026977 (=> (not res!1420034) (not e!2179387))))

(assert (=> d!1026977 (= res!1420034 (<= 0 0))))

(assert (=> d!1026977 (= (apply!8896 (_1!21722 lt!1201946) 0) lt!1202015)))

(declare-fun b!3520917 () Bool)

(assert (=> b!3520917 (= e!2179387 (< 0 (size!28413 (_1!21722 lt!1201946))))))

(assert (= (and d!1026977 res!1420034) b!3520917))

(declare-fun m!3970921 () Bool)

(assert (=> d!1026977 m!3970921))

(assert (=> d!1026977 m!3970921))

(declare-fun m!3970923 () Bool)

(assert (=> d!1026977 m!3970923))

(declare-fun m!3970925 () Bool)

(assert (=> d!1026977 m!3970925))

(assert (=> b!3520917 m!3970571))

(assert (=> b!3520696 d!1026977))

(declare-fun d!1026983 () Bool)

(declare-fun lt!1202022 () Bool)

(assert (=> d!1026983 (= lt!1202022 (isEmpty!21812 (list!13659 (_2!21722 lt!1201946))))))

(declare-fun isEmpty!21813 (Conc!11327) Bool)

(assert (=> d!1026983 (= lt!1202022 (isEmpty!21813 (c!606753 (_2!21722 lt!1201946))))))

(assert (=> d!1026983 (= (isEmpty!21806 (_2!21722 lt!1201946)) lt!1202022)))

(declare-fun bs!565279 () Bool)

(assert (= bs!565279 d!1026983))

(declare-fun m!3970929 () Bool)

(assert (=> bs!565279 m!3970929))

(assert (=> bs!565279 m!3970929))

(declare-fun m!3970931 () Bool)

(assert (=> bs!565279 m!3970931))

(declare-fun m!3970933 () Bool)

(assert (=> bs!565279 m!3970933))

(assert (=> b!3520713 d!1026983))

(declare-fun b!3520937 () Bool)

(declare-fun e!2179397 () List!37467)

(assert (=> b!3520937 (= e!2179397 (Cons!37343 (h!42763 (++!9253 lt!1201911 lt!1201944)) (++!9253 (t!281698 (++!9253 lt!1201911 lt!1201944)) lt!1201939)))))

(declare-fun d!1026987 () Bool)

(declare-fun e!2179398 () Bool)

(assert (=> d!1026987 e!2179398))

(declare-fun res!1420042 () Bool)

(assert (=> d!1026987 (=> (not res!1420042) (not e!2179398))))

(declare-fun lt!1202029 () List!37467)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5263 (List!37467) (InoxSet C!20656))

(assert (=> d!1026987 (= res!1420042 (= (content!5263 lt!1202029) ((_ map or) (content!5263 (++!9253 lt!1201911 lt!1201944)) (content!5263 lt!1201939))))))

(assert (=> d!1026987 (= lt!1202029 e!2179397)))

(declare-fun c!606798 () Bool)

(assert (=> d!1026987 (= c!606798 ((_ is Nil!37343) (++!9253 lt!1201911 lt!1201944)))))

(assert (=> d!1026987 (= (++!9253 (++!9253 lt!1201911 lt!1201944) lt!1201939) lt!1202029)))

(declare-fun b!3520938 () Bool)

(declare-fun res!1420041 () Bool)

(assert (=> b!3520938 (=> (not res!1420041) (not e!2179398))))

(assert (=> b!3520938 (= res!1420041 (= (size!28412 lt!1202029) (+ (size!28412 (++!9253 lt!1201911 lt!1201944)) (size!28412 lt!1201939))))))

(declare-fun b!3520936 () Bool)

(assert (=> b!3520936 (= e!2179397 lt!1201939)))

(declare-fun b!3520939 () Bool)

(assert (=> b!3520939 (= e!2179398 (or (not (= lt!1201939 Nil!37343)) (= lt!1202029 (++!9253 lt!1201911 lt!1201944))))))

(assert (= (and d!1026987 c!606798) b!3520936))

(assert (= (and d!1026987 (not c!606798)) b!3520937))

(assert (= (and d!1026987 res!1420042) b!3520938))

(assert (= (and b!3520938 res!1420041) b!3520939))

(declare-fun m!3970957 () Bool)

(assert (=> b!3520937 m!3970957))

(declare-fun m!3970959 () Bool)

(assert (=> d!1026987 m!3970959))

(assert (=> d!1026987 m!3970699))

(declare-fun m!3970961 () Bool)

(assert (=> d!1026987 m!3970961))

(declare-fun m!3970963 () Bool)

(assert (=> d!1026987 m!3970963))

(declare-fun m!3970965 () Bool)

(assert (=> b!3520938 m!3970965))

(assert (=> b!3520938 m!3970699))

(declare-fun m!3970967 () Bool)

(assert (=> b!3520938 m!3970967))

(declare-fun m!3970969 () Bool)

(assert (=> b!3520938 m!3970969))

(assert (=> b!3520715 d!1026987))

(declare-fun b!3520941 () Bool)

(declare-fun e!2179399 () List!37467)

(assert (=> b!3520941 (= e!2179399 (Cons!37343 (h!42763 lt!1201911) (++!9253 (t!281698 lt!1201911) lt!1201944)))))

(declare-fun d!1026997 () Bool)

(declare-fun e!2179400 () Bool)

(assert (=> d!1026997 e!2179400))

(declare-fun res!1420044 () Bool)

(assert (=> d!1026997 (=> (not res!1420044) (not e!2179400))))

(declare-fun lt!1202030 () List!37467)

(assert (=> d!1026997 (= res!1420044 (= (content!5263 lt!1202030) ((_ map or) (content!5263 lt!1201911) (content!5263 lt!1201944))))))

(assert (=> d!1026997 (= lt!1202030 e!2179399)))

(declare-fun c!606799 () Bool)

(assert (=> d!1026997 (= c!606799 ((_ is Nil!37343) lt!1201911))))

(assert (=> d!1026997 (= (++!9253 lt!1201911 lt!1201944) lt!1202030)))

(declare-fun b!3520942 () Bool)

(declare-fun res!1420043 () Bool)

(assert (=> b!3520942 (=> (not res!1420043) (not e!2179400))))

(assert (=> b!3520942 (= res!1420043 (= (size!28412 lt!1202030) (+ (size!28412 lt!1201911) (size!28412 lt!1201944))))))

(declare-fun b!3520940 () Bool)

(assert (=> b!3520940 (= e!2179399 lt!1201944)))

(declare-fun b!3520943 () Bool)

(assert (=> b!3520943 (= e!2179400 (or (not (= lt!1201944 Nil!37343)) (= lt!1202030 lt!1201911)))))

(assert (= (and d!1026997 c!606799) b!3520940))

(assert (= (and d!1026997 (not c!606799)) b!3520941))

(assert (= (and d!1026997 res!1420044) b!3520942))

(assert (= (and b!3520942 res!1420043) b!3520943))

(declare-fun m!3970971 () Bool)

(assert (=> b!3520941 m!3970971))

(declare-fun m!3970973 () Bool)

(assert (=> d!1026997 m!3970973))

(declare-fun m!3970975 () Bool)

(assert (=> d!1026997 m!3970975))

(declare-fun m!3970977 () Bool)

(assert (=> d!1026997 m!3970977))

(declare-fun m!3970979 () Bool)

(assert (=> b!3520942 m!3970979))

(assert (=> b!3520942 m!3970641))

(declare-fun m!3970981 () Bool)

(assert (=> b!3520942 m!3970981))

(assert (=> b!3520715 d!1026997))

(declare-fun d!1026999 () Bool)

(declare-fun lt!1202033 () Bool)

(declare-fun e!2179405 () Bool)

(assert (=> d!1026999 (= lt!1202033 e!2179405)))

(declare-fun res!1420050 () Bool)

(assert (=> d!1026999 (=> (not res!1420050) (not e!2179405))))

(assert (=> d!1026999 (= res!1420050 (= (list!13662 (_1!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 separatorToken!241))))) (list!13662 (singletonSeq!2572 separatorToken!241))))))

(declare-fun e!2179406 () Bool)

(assert (=> d!1026999 (= lt!1202033 e!2179406)))

(declare-fun res!1420049 () Bool)

(assert (=> d!1026999 (=> (not res!1420049) (not e!2179406))))

(declare-fun lt!1202034 () tuple2!37176)

(assert (=> d!1026999 (= res!1420049 (= (size!28413 (_1!21722 lt!1202034)) 1))))

(assert (=> d!1026999 (= lt!1202034 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 separatorToken!241))))))

(assert (=> d!1026999 (not (isEmpty!21807 rules!2135))))

(assert (=> d!1026999 (= (rulesProduceIndividualToken!2557 thiss!18206 rules!2135 separatorToken!241) lt!1202033)))

(declare-fun b!3520948 () Bool)

(declare-fun res!1420051 () Bool)

(assert (=> b!3520948 (=> (not res!1420051) (not e!2179406))))

(assert (=> b!3520948 (= res!1420051 (= (apply!8896 (_1!21722 lt!1202034) 0) separatorToken!241))))

(declare-fun b!3520949 () Bool)

(assert (=> b!3520949 (= e!2179406 (isEmpty!21806 (_2!21722 lt!1202034)))))

(declare-fun b!3520950 () Bool)

(assert (=> b!3520950 (= e!2179405 (isEmpty!21806 (_2!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 separatorToken!241))))))))

(assert (= (and d!1026999 res!1420049) b!3520948))

(assert (= (and b!3520948 res!1420051) b!3520949))

(assert (= (and d!1026999 res!1420050) b!3520950))

(assert (=> d!1026999 m!3970601))

(declare-fun m!3970983 () Bool)

(assert (=> d!1026999 m!3970983))

(declare-fun m!3970985 () Bool)

(assert (=> d!1026999 m!3970985))

(declare-fun m!3970987 () Bool)

(assert (=> d!1026999 m!3970987))

(assert (=> d!1026999 m!3970677))

(assert (=> d!1026999 m!3970601))

(declare-fun m!3970989 () Bool)

(assert (=> d!1026999 m!3970989))

(assert (=> d!1026999 m!3970601))

(assert (=> d!1026999 m!3970985))

(declare-fun m!3970991 () Bool)

(assert (=> d!1026999 m!3970991))

(declare-fun m!3970993 () Bool)

(assert (=> b!3520948 m!3970993))

(declare-fun m!3970995 () Bool)

(assert (=> b!3520949 m!3970995))

(assert (=> b!3520950 m!3970601))

(assert (=> b!3520950 m!3970601))

(assert (=> b!3520950 m!3970985))

(assert (=> b!3520950 m!3970985))

(assert (=> b!3520950 m!3970987))

(declare-fun m!3970999 () Bool)

(assert (=> b!3520950 m!3970999))

(assert (=> b!3520693 d!1026999))

(declare-fun d!1027001 () Bool)

(declare-fun lt!1202036 () Token!10318)

(assert (=> d!1027001 (= lt!1202036 (apply!8898 (list!13662 (_1!21722 lt!1201925)) 0))))

(assert (=> d!1027001 (= lt!1202036 (apply!8899 (c!606754 (_1!21722 lt!1201925)) 0))))

(declare-fun e!2179409 () Bool)

(assert (=> d!1027001 e!2179409))

(declare-fun res!1420054 () Bool)

(assert (=> d!1027001 (=> (not res!1420054) (not e!2179409))))

(assert (=> d!1027001 (= res!1420054 (<= 0 0))))

(assert (=> d!1027001 (= (apply!8896 (_1!21722 lt!1201925) 0) lt!1202036)))

(declare-fun b!3520953 () Bool)

(assert (=> b!3520953 (= e!2179409 (< 0 (size!28413 (_1!21722 lt!1201925))))))

(assert (= (and d!1027001 res!1420054) b!3520953))

(declare-fun m!3971005 () Bool)

(assert (=> d!1027001 m!3971005))

(assert (=> d!1027001 m!3971005))

(declare-fun m!3971007 () Bool)

(assert (=> d!1027001 m!3971007))

(declare-fun m!3971009 () Bool)

(assert (=> d!1027001 m!3971009))

(assert (=> b!3520953 m!3970639))

(assert (=> b!3520690 d!1027001))

(declare-fun d!1027005 () Bool)

(declare-fun res!1420059 () Bool)

(declare-fun e!2179412 () Bool)

(assert (=> d!1027005 (=> (not res!1420059) (not e!2179412))))

(assert (=> d!1027005 (= res!1420059 (not (isEmpty!21812 (originalCharacters!6190 (h!42765 tokens!494)))))))

(assert (=> d!1027005 (= (inv!50577 (h!42765 tokens!494)) e!2179412)))

(declare-fun b!3520958 () Bool)

(declare-fun res!1420060 () Bool)

(assert (=> b!3520958 (=> (not res!1420060) (not e!2179412))))

(declare-fun dynLambda!15910 (Int TokenValue!5706) BalanceConc!22268)

(assert (=> b!3520958 (= res!1420060 (= (originalCharacters!6190 (h!42765 tokens!494)) (list!13659 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494))))))))

(declare-fun b!3520959 () Bool)

(assert (=> b!3520959 (= e!2179412 (= (size!28411 (h!42765 tokens!494)) (size!28412 (originalCharacters!6190 (h!42765 tokens!494)))))))

(assert (= (and d!1027005 res!1420059) b!3520958))

(assert (= (and b!3520958 res!1420060) b!3520959))

(declare-fun b_lambda!102753 () Bool)

(assert (=> (not b_lambda!102753) (not b!3520958)))

(declare-fun t!281711 () Bool)

(declare-fun tb!196625 () Bool)

(assert (=> (and b!3520728 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281711) tb!196625))

(declare-fun b!3520964 () Bool)

(declare-fun e!2179415 () Bool)

(declare-fun tp!1086964 () Bool)

(declare-fun inv!50581 (Conc!11327) Bool)

(assert (=> b!3520964 (= e!2179415 (and (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494))))) tp!1086964))))

(declare-fun result!240976 () Bool)

(declare-fun inv!50582 (BalanceConc!22268) Bool)

(assert (=> tb!196625 (= result!240976 (and (inv!50582 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494)))) e!2179415))))

(assert (= tb!196625 b!3520964))

(declare-fun m!3971011 () Bool)

(assert (=> b!3520964 m!3971011))

(declare-fun m!3971013 () Bool)

(assert (=> tb!196625 m!3971013))

(assert (=> b!3520958 t!281711))

(declare-fun b_and!250745 () Bool)

(assert (= b_and!250729 (and (=> t!281711 result!240976) b_and!250745)))

(declare-fun tb!196627 () Bool)

(declare-fun t!281713 () Bool)

(assert (=> (and b!3520694 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281713) tb!196627))

(declare-fun result!240980 () Bool)

(assert (= result!240980 result!240976))

(assert (=> b!3520958 t!281713))

(declare-fun b_and!250747 () Bool)

(assert (= b_and!250733 (and (=> t!281713 result!240980) b_and!250747)))

(declare-fun t!281715 () Bool)

(declare-fun tb!196629 () Bool)

(assert (=> (and b!3520698 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281715) tb!196629))

(declare-fun result!240982 () Bool)

(assert (= result!240982 result!240976))

(assert (=> b!3520958 t!281715))

(declare-fun b_and!250749 () Bool)

(assert (= b_and!250737 (and (=> t!281715 result!240982) b_and!250749)))

(declare-fun m!3971015 () Bool)

(assert (=> d!1027005 m!3971015))

(declare-fun m!3971017 () Bool)

(assert (=> b!3520958 m!3971017))

(assert (=> b!3520958 m!3971017))

(declare-fun m!3971019 () Bool)

(assert (=> b!3520958 m!3971019))

(declare-fun m!3971021 () Bool)

(assert (=> b!3520959 m!3971021))

(assert (=> b!3520711 d!1027005))

(declare-fun d!1027007 () Bool)

(assert (=> d!1027007 (not (matchR!4819 (regex!5476 (rule!8122 separatorToken!241)) lt!1201944))))

(declare-fun lt!1202039 () Unit!52994)

(declare-fun choose!20440 (Regex!10235 List!37467 C!20656) Unit!52994)

(assert (=> d!1027007 (= lt!1202039 (choose!20440 (regex!5476 (rule!8122 separatorToken!241)) lt!1201944 lt!1201930))))

(assert (=> d!1027007 (validRegex!4674 (regex!5476 (rule!8122 separatorToken!241)))))

(assert (=> d!1027007 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!534 (regex!5476 (rule!8122 separatorToken!241)) lt!1201944 lt!1201930) lt!1202039)))

(declare-fun bs!565282 () Bool)

(assert (= bs!565282 d!1027007))

(assert (=> bs!565282 m!3970555))

(declare-fun m!3971023 () Bool)

(assert (=> bs!565282 m!3971023))

(declare-fun m!3971025 () Bool)

(assert (=> bs!565282 m!3971025))

(assert (=> b!3520691 d!1027007))

(declare-fun b!3520966 () Bool)

(declare-fun res!1420061 () Bool)

(declare-fun e!2179419 () Bool)

(assert (=> b!3520966 (=> (not res!1420061) (not e!2179419))))

(assert (=> b!3520966 (= res!1420061 (isEmpty!21812 (tail!5490 lt!1201944)))))

(declare-fun bm!254358 () Bool)

(declare-fun call!254363 () Bool)

(assert (=> bm!254358 (= call!254363 (isEmpty!21812 lt!1201944))))

(declare-fun b!3520967 () Bool)

(declare-fun res!1420068 () Bool)

(declare-fun e!2179422 () Bool)

(assert (=> b!3520967 (=> res!1420068 e!2179422)))

(assert (=> b!3520967 (= res!1420068 e!2179419)))

(declare-fun res!1420066 () Bool)

(assert (=> b!3520967 (=> (not res!1420066) (not e!2179419))))

(declare-fun lt!1202040 () Bool)

(assert (=> b!3520967 (= res!1420066 lt!1202040)))

(declare-fun b!3520968 () Bool)

(declare-fun res!1420064 () Bool)

(assert (=> b!3520968 (=> (not res!1420064) (not e!2179419))))

(assert (=> b!3520968 (= res!1420064 (not call!254363))))

(declare-fun b!3520969 () Bool)

(declare-fun e!2179420 () Bool)

(assert (=> b!3520969 (= e!2179422 e!2179420)))

(declare-fun res!1420065 () Bool)

(assert (=> b!3520969 (=> (not res!1420065) (not e!2179420))))

(assert (=> b!3520969 (= res!1420065 (not lt!1202040))))

(declare-fun b!3520970 () Bool)

(declare-fun e!2179421 () Bool)

(assert (=> b!3520970 (= e!2179421 (not (= (head!7385 lt!1201944) (c!606752 (regex!5476 (rule!8122 separatorToken!241))))))))

(declare-fun b!3520971 () Bool)

(declare-fun e!2179416 () Bool)

(declare-fun e!2179417 () Bool)

(assert (=> b!3520971 (= e!2179416 e!2179417)))

(declare-fun c!606802 () Bool)

(assert (=> b!3520971 (= c!606802 ((_ is EmptyLang!10235) (regex!5476 (rule!8122 separatorToken!241))))))

(declare-fun b!3520972 () Bool)

(declare-fun e!2179418 () Bool)

(assert (=> b!3520972 (= e!2179418 (matchR!4819 (derivativeStep!3070 (regex!5476 (rule!8122 separatorToken!241)) (head!7385 lt!1201944)) (tail!5490 lt!1201944)))))

(declare-fun b!3520973 () Bool)

(assert (=> b!3520973 (= e!2179418 (nullable!3517 (regex!5476 (rule!8122 separatorToken!241))))))

(declare-fun b!3520965 () Bool)

(declare-fun res!1420063 () Bool)

(assert (=> b!3520965 (=> res!1420063 e!2179421)))

(assert (=> b!3520965 (= res!1420063 (not (isEmpty!21812 (tail!5490 lt!1201944))))))

(declare-fun d!1027009 () Bool)

(assert (=> d!1027009 e!2179416))

(declare-fun c!606801 () Bool)

(assert (=> d!1027009 (= c!606801 ((_ is EmptyExpr!10235) (regex!5476 (rule!8122 separatorToken!241))))))

(assert (=> d!1027009 (= lt!1202040 e!2179418)))

(declare-fun c!606803 () Bool)

(assert (=> d!1027009 (= c!606803 (isEmpty!21812 lt!1201944))))

(assert (=> d!1027009 (validRegex!4674 (regex!5476 (rule!8122 separatorToken!241)))))

(assert (=> d!1027009 (= (matchR!4819 (regex!5476 (rule!8122 separatorToken!241)) lt!1201944) lt!1202040)))

(declare-fun b!3520974 () Bool)

(assert (=> b!3520974 (= e!2179416 (= lt!1202040 call!254363))))

(declare-fun b!3520975 () Bool)

(declare-fun res!1420062 () Bool)

(assert (=> b!3520975 (=> res!1420062 e!2179422)))

(assert (=> b!3520975 (= res!1420062 (not ((_ is ElementMatch!10235) (regex!5476 (rule!8122 separatorToken!241)))))))

(assert (=> b!3520975 (= e!2179417 e!2179422)))

(declare-fun b!3520976 () Bool)

(assert (=> b!3520976 (= e!2179417 (not lt!1202040))))

(declare-fun b!3520977 () Bool)

(assert (=> b!3520977 (= e!2179419 (= (head!7385 lt!1201944) (c!606752 (regex!5476 (rule!8122 separatorToken!241)))))))

(declare-fun b!3520978 () Bool)

(assert (=> b!3520978 (= e!2179420 e!2179421)))

(declare-fun res!1420067 () Bool)

(assert (=> b!3520978 (=> res!1420067 e!2179421)))

(assert (=> b!3520978 (= res!1420067 call!254363)))

(assert (= (and d!1027009 c!606803) b!3520973))

(assert (= (and d!1027009 (not c!606803)) b!3520972))

(assert (= (and d!1027009 c!606801) b!3520974))

(assert (= (and d!1027009 (not c!606801)) b!3520971))

(assert (= (and b!3520971 c!606802) b!3520976))

(assert (= (and b!3520971 (not c!606802)) b!3520975))

(assert (= (and b!3520975 (not res!1420062)) b!3520967))

(assert (= (and b!3520967 res!1420066) b!3520968))

(assert (= (and b!3520968 res!1420064) b!3520966))

(assert (= (and b!3520966 res!1420061) b!3520977))

(assert (= (and b!3520967 (not res!1420068)) b!3520969))

(assert (= (and b!3520969 res!1420065) b!3520978))

(assert (= (and b!3520978 (not res!1420067)) b!3520965))

(assert (= (and b!3520965 (not res!1420063)) b!3520970))

(assert (= (or b!3520974 b!3520968 b!3520978) bm!254358))

(declare-fun m!3971027 () Bool)

(assert (=> d!1027009 m!3971027))

(assert (=> d!1027009 m!3971025))

(declare-fun m!3971029 () Bool)

(assert (=> b!3520965 m!3971029))

(assert (=> b!3520965 m!3971029))

(declare-fun m!3971031 () Bool)

(assert (=> b!3520965 m!3971031))

(assert (=> bm!254358 m!3971027))

(assert (=> b!3520972 m!3970579))

(assert (=> b!3520972 m!3970579))

(declare-fun m!3971033 () Bool)

(assert (=> b!3520972 m!3971033))

(assert (=> b!3520972 m!3971029))

(assert (=> b!3520972 m!3971033))

(assert (=> b!3520972 m!3971029))

(declare-fun m!3971035 () Bool)

(assert (=> b!3520972 m!3971035))

(assert (=> b!3520977 m!3970579))

(declare-fun m!3971037 () Bool)

(assert (=> b!3520973 m!3971037))

(assert (=> b!3520970 m!3970579))

(assert (=> b!3520966 m!3971029))

(assert (=> b!3520966 m!3971029))

(assert (=> b!3520966 m!3971031))

(assert (=> b!3520691 d!1027009))

(declare-fun d!1027011 () Bool)

(declare-fun res!1420071 () Bool)

(declare-fun e!2179425 () Bool)

(assert (=> d!1027011 (=> (not res!1420071) (not e!2179425))))

(declare-fun rulesValid!2072 (LexerInterface!5065 List!37468) Bool)

(assert (=> d!1027011 (= res!1420071 (rulesValid!2072 thiss!18206 rules!2135))))

(assert (=> d!1027011 (= (rulesInvariant!4462 thiss!18206 rules!2135) e!2179425)))

(declare-fun b!3520981 () Bool)

(declare-datatypes ((List!37470 0))(
  ( (Nil!37346) (Cons!37346 (h!42766 String!41864) (t!281815 List!37470)) )
))
(declare-fun noDuplicateTag!2068 (LexerInterface!5065 List!37468 List!37470) Bool)

(assert (=> b!3520981 (= e!2179425 (noDuplicateTag!2068 thiss!18206 rules!2135 Nil!37346))))

(assert (= (and d!1027011 res!1420071) b!3520981))

(declare-fun m!3971039 () Bool)

(assert (=> d!1027011 m!3971039))

(declare-fun m!3971041 () Bool)

(assert (=> b!3520981 m!3971041))

(assert (=> b!3520712 d!1027011))

(declare-fun d!1027013 () Bool)

(declare-fun lt!1202045 () Int)

(declare-fun size!28417 (List!37469) Int)

(assert (=> d!1027013 (= lt!1202045 (size!28417 (list!13662 (_1!21722 lt!1201925))))))

(declare-fun size!28418 (Conc!11328) Int)

(assert (=> d!1027013 (= lt!1202045 (size!28418 (c!606754 (_1!21722 lt!1201925))))))

(assert (=> d!1027013 (= (size!28413 (_1!21722 lt!1201925)) lt!1202045)))

(declare-fun bs!565283 () Bool)

(assert (= bs!565283 d!1027013))

(assert (=> bs!565283 m!3971005))

(assert (=> bs!565283 m!3971005))

(declare-fun m!3971043 () Bool)

(assert (=> bs!565283 m!3971043))

(declare-fun m!3971045 () Bool)

(assert (=> bs!565283 m!3971045))

(assert (=> b!3520730 d!1027013))

(declare-fun d!1027015 () Bool)

(declare-fun lt!1202049 () Bool)

(assert (=> d!1027015 (= lt!1202049 (select (content!5263 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494))))) lt!1201930))))

(declare-fun e!2179430 () Bool)

(assert (=> d!1027015 (= lt!1202049 e!2179430)))

(declare-fun res!1420076 () Bool)

(assert (=> d!1027015 (=> (not res!1420076) (not e!2179430))))

(assert (=> d!1027015 (= res!1420076 ((_ is Cons!37343) (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494))))))))

(assert (=> d!1027015 (= (contains!7004 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494)))) lt!1201930) lt!1202049)))

(declare-fun b!3520986 () Bool)

(declare-fun e!2179431 () Bool)

(assert (=> b!3520986 (= e!2179430 e!2179431)))

(declare-fun res!1420077 () Bool)

(assert (=> b!3520986 (=> res!1420077 e!2179431)))

(assert (=> b!3520986 (= res!1420077 (= (h!42763 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494))))) lt!1201930))))

(declare-fun b!3520987 () Bool)

(assert (=> b!3520987 (= e!2179431 (contains!7004 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494))))) lt!1201930))))

(assert (= (and d!1027015 res!1420076) b!3520986))

(assert (= (and b!3520986 (not res!1420077)) b!3520987))

(assert (=> d!1027015 m!3970621))

(declare-fun m!3971053 () Bool)

(assert (=> d!1027015 m!3971053))

(declare-fun m!3971055 () Bool)

(assert (=> d!1027015 m!3971055))

(declare-fun m!3971057 () Bool)

(assert (=> b!3520987 m!3971057))

(assert (=> b!3520730 d!1027015))

(declare-fun d!1027019 () Bool)

(declare-fun dynLambda!15911 (Int BalanceConc!22268) TokenValue!5706)

(assert (=> d!1027019 (= (apply!8897 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) (seqFromList!4006 lt!1201914)) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (seqFromList!4006 lt!1201914)))))

(declare-fun b_lambda!102755 () Bool)

(assert (=> (not b_lambda!102755) (not d!1027019)))

(declare-fun t!281717 () Bool)

(declare-fun tb!196631 () Bool)

(assert (=> (and b!3520728 (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!281717) tb!196631))

(declare-fun result!240984 () Bool)

(assert (=> tb!196631 (= result!240984 (inv!21 (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (seqFromList!4006 lt!1201914))))))

(declare-fun m!3971059 () Bool)

(assert (=> tb!196631 m!3971059))

(assert (=> d!1027019 t!281717))

(declare-fun b_and!250751 () Bool)

(assert (= b_and!250727 (and (=> t!281717 result!240984) b_and!250751)))

(declare-fun tb!196633 () Bool)

(declare-fun t!281719 () Bool)

(assert (=> (and b!3520694 (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!281719) tb!196633))

(declare-fun result!240988 () Bool)

(assert (= result!240988 result!240984))

(assert (=> d!1027019 t!281719))

(declare-fun b_and!250753 () Bool)

(assert (= b_and!250731 (and (=> t!281719 result!240988) b_and!250753)))

(declare-fun t!281721 () Bool)

(declare-fun tb!196635 () Bool)

(assert (=> (and b!3520698 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!281721) tb!196635))

(declare-fun result!240990 () Bool)

(assert (= result!240990 result!240984))

(assert (=> d!1027019 t!281721))

(declare-fun b_and!250755 () Bool)

(assert (= b_and!250735 (and (=> t!281721 result!240990) b_and!250755)))

(assert (=> d!1027019 m!3970589))

(declare-fun m!3971061 () Bool)

(assert (=> d!1027019 m!3971061))

(assert (=> b!3520730 d!1027019))

(declare-fun b!3521002 () Bool)

(declare-fun e!2179443 () Option!7613)

(assert (=> b!3521002 (= e!2179443 (Some!7612 (h!42764 rules!2135)))))

(declare-fun d!1027021 () Bool)

(declare-fun e!2179445 () Bool)

(assert (=> d!1027021 e!2179445))

(declare-fun res!1420083 () Bool)

(assert (=> d!1027021 (=> res!1420083 e!2179445)))

(declare-fun lt!1202058 () Option!7613)

(declare-fun isEmpty!21814 (Option!7613) Bool)

(assert (=> d!1027021 (= res!1420083 (isEmpty!21814 lt!1202058))))

(assert (=> d!1027021 (= lt!1202058 e!2179443)))

(declare-fun c!606809 () Bool)

(assert (=> d!1027021 (= c!606809 (and ((_ is Cons!37344) rules!2135) (= (tag!6114 (h!42764 rules!2135)) (tag!6114 (rule!8122 (h!42765 tokens!494))))))))

(assert (=> d!1027021 (rulesInvariant!4462 thiss!18206 rules!2135)))

(assert (=> d!1027021 (= (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494)))) lt!1202058)))

(declare-fun b!3521003 () Bool)

(declare-fun e!2179446 () Bool)

(assert (=> b!3521003 (= e!2179446 (= (tag!6114 (get!11989 lt!1202058)) (tag!6114 (rule!8122 (h!42765 tokens!494)))))))

(declare-fun b!3521004 () Bool)

(assert (=> b!3521004 (= e!2179445 e!2179446)))

(declare-fun res!1420082 () Bool)

(assert (=> b!3521004 (=> (not res!1420082) (not e!2179446))))

(declare-fun contains!7007 (List!37468 Rule!10752) Bool)

(assert (=> b!3521004 (= res!1420082 (contains!7007 rules!2135 (get!11989 lt!1202058)))))

(declare-fun b!3521005 () Bool)

(declare-fun e!2179444 () Option!7613)

(assert (=> b!3521005 (= e!2179444 None!7612)))

(declare-fun b!3521006 () Bool)

(declare-fun lt!1202057 () Unit!52994)

(declare-fun lt!1202056 () Unit!52994)

(assert (=> b!3521006 (= lt!1202057 lt!1202056)))

(assert (=> b!3521006 (rulesInvariant!4462 thiss!18206 (t!281699 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!462 (LexerInterface!5065 Rule!10752 List!37468) Unit!52994)

(assert (=> b!3521006 (= lt!1202056 (lemmaInvariantOnRulesThenOnTail!462 thiss!18206 (h!42764 rules!2135) (t!281699 rules!2135)))))

(assert (=> b!3521006 (= e!2179444 (getRuleFromTag!1119 thiss!18206 (t!281699 rules!2135) (tag!6114 (rule!8122 (h!42765 tokens!494)))))))

(declare-fun b!3521007 () Bool)

(assert (=> b!3521007 (= e!2179443 e!2179444)))

(declare-fun c!606808 () Bool)

(assert (=> b!3521007 (= c!606808 (and ((_ is Cons!37344) rules!2135) (not (= (tag!6114 (h!42764 rules!2135)) (tag!6114 (rule!8122 (h!42765 tokens!494)))))))))

(assert (= (and d!1027021 c!606809) b!3521002))

(assert (= (and d!1027021 (not c!606809)) b!3521007))

(assert (= (and b!3521007 c!606808) b!3521006))

(assert (= (and b!3521007 (not c!606808)) b!3521005))

(assert (= (and d!1027021 (not res!1420083)) b!3521004))

(assert (= (and b!3521004 res!1420082) b!3521003))

(declare-fun m!3971063 () Bool)

(assert (=> d!1027021 m!3971063))

(assert (=> d!1027021 m!3970561))

(declare-fun m!3971065 () Bool)

(assert (=> b!3521003 m!3971065))

(assert (=> b!3521004 m!3971065))

(assert (=> b!3521004 m!3971065))

(declare-fun m!3971067 () Bool)

(assert (=> b!3521004 m!3971067))

(declare-fun m!3971069 () Bool)

(assert (=> b!3521006 m!3971069))

(declare-fun m!3971071 () Bool)

(assert (=> b!3521006 m!3971071))

(declare-fun m!3971073 () Bool)

(assert (=> b!3521006 m!3971073))

(assert (=> b!3520730 d!1027021))

(declare-fun b!3521026 () Bool)

(declare-fun e!2179455 () Option!7614)

(declare-fun lt!1202073 () Option!7614)

(declare-fun lt!1202069 () Option!7614)

(assert (=> b!3521026 (= e!2179455 (ite (and ((_ is None!7613) lt!1202073) ((_ is None!7613) lt!1202069)) None!7613 (ite ((_ is None!7613) lt!1202069) lt!1202073 (ite ((_ is None!7613) lt!1202073) lt!1202069 (ite (>= (size!28411 (_1!21723 (v!37101 lt!1202073))) (size!28411 (_1!21723 (v!37101 lt!1202069)))) lt!1202073 lt!1202069)))))))

(declare-fun call!254366 () Option!7614)

(assert (=> b!3521026 (= lt!1202073 call!254366)))

(assert (=> b!3521026 (= lt!1202069 (maxPrefix!2605 thiss!18206 (t!281699 rules!2135) lt!1201923))))

(declare-fun b!3521027 () Bool)

(declare-fun e!2179453 () Bool)

(declare-fun e!2179454 () Bool)

(assert (=> b!3521027 (= e!2179453 e!2179454)))

(declare-fun res!1420101 () Bool)

(assert (=> b!3521027 (=> (not res!1420101) (not e!2179454))))

(declare-fun lt!1202070 () Option!7614)

(declare-fun isDefined!5872 (Option!7614) Bool)

(assert (=> b!3521027 (= res!1420101 (isDefined!5872 lt!1202070))))

(declare-fun b!3521028 () Bool)

(declare-fun res!1420102 () Bool)

(assert (=> b!3521028 (=> (not res!1420102) (not e!2179454))))

(declare-fun get!11991 (Option!7614) tuple2!37178)

(assert (=> b!3521028 (= res!1420102 (matchR!4819 (regex!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))) (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070))))))))

(declare-fun b!3521029 () Bool)

(assert (=> b!3521029 (= e!2179454 (contains!7007 rules!2135 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))))

(declare-fun b!3521030 () Bool)

(declare-fun res!1420103 () Bool)

(assert (=> b!3521030 (=> (not res!1420103) (not e!2179454))))

(assert (=> b!3521030 (= res!1420103 (= (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070)))) (originalCharacters!6190 (_1!21723 (get!11991 lt!1202070)))))))

(declare-fun b!3521031 () Bool)

(declare-fun res!1420100 () Bool)

(assert (=> b!3521031 (=> (not res!1420100) (not e!2179454))))

(assert (=> b!3521031 (= res!1420100 (= (value!176526 (_1!21723 (get!11991 lt!1202070))) (apply!8897 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))) (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202070)))))))))

(declare-fun b!3521032 () Bool)

(declare-fun res!1420098 () Bool)

(assert (=> b!3521032 (=> (not res!1420098) (not e!2179454))))

(assert (=> b!3521032 (= res!1420098 (< (size!28412 (_2!21723 (get!11991 lt!1202070))) (size!28412 lt!1201923)))))

(declare-fun b!3521033 () Bool)

(assert (=> b!3521033 (= e!2179455 call!254366)))

(declare-fun b!3521034 () Bool)

(declare-fun res!1420099 () Bool)

(assert (=> b!3521034 (=> (not res!1420099) (not e!2179454))))

(assert (=> b!3521034 (= res!1420099 (= (++!9253 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070)))) (_2!21723 (get!11991 lt!1202070))) lt!1201923))))

(declare-fun bm!254361 () Bool)

(assert (=> bm!254361 (= call!254366 (maxPrefixOneRule!1772 thiss!18206 (h!42764 rules!2135) lt!1201923))))

(declare-fun d!1027023 () Bool)

(assert (=> d!1027023 e!2179453))

(declare-fun res!1420104 () Bool)

(assert (=> d!1027023 (=> res!1420104 e!2179453)))

(declare-fun isEmpty!21815 (Option!7614) Bool)

(assert (=> d!1027023 (= res!1420104 (isEmpty!21815 lt!1202070))))

(assert (=> d!1027023 (= lt!1202070 e!2179455)))

(declare-fun c!606812 () Bool)

(assert (=> d!1027023 (= c!606812 (and ((_ is Cons!37344) rules!2135) ((_ is Nil!37344) (t!281699 rules!2135))))))

(declare-fun lt!1202072 () Unit!52994)

(declare-fun lt!1202071 () Unit!52994)

(assert (=> d!1027023 (= lt!1202072 lt!1202071)))

(declare-fun isPrefix!2874 (List!37467 List!37467) Bool)

(assert (=> d!1027023 (isPrefix!2874 lt!1201923 lt!1201923)))

(declare-fun lemmaIsPrefixRefl!1833 (List!37467 List!37467) Unit!52994)

(assert (=> d!1027023 (= lt!1202071 (lemmaIsPrefixRefl!1833 lt!1201923 lt!1201923))))

(declare-fun rulesValidInductive!1883 (LexerInterface!5065 List!37468) Bool)

(assert (=> d!1027023 (rulesValidInductive!1883 thiss!18206 rules!2135)))

(assert (=> d!1027023 (= (maxPrefix!2605 thiss!18206 rules!2135 lt!1201923) lt!1202070)))

(assert (= (and d!1027023 c!606812) b!3521033))

(assert (= (and d!1027023 (not c!606812)) b!3521026))

(assert (= (or b!3521033 b!3521026) bm!254361))

(assert (= (and d!1027023 (not res!1420104)) b!3521027))

(assert (= (and b!3521027 res!1420101) b!3521030))

(assert (= (and b!3521030 res!1420103) b!3521032))

(assert (= (and b!3521032 res!1420098) b!3521034))

(assert (= (and b!3521034 res!1420099) b!3521031))

(assert (= (and b!3521031 res!1420100) b!3521028))

(assert (= (and b!3521028 res!1420102) b!3521029))

(declare-fun m!3971075 () Bool)

(assert (=> b!3521032 m!3971075))

(declare-fun m!3971077 () Bool)

(assert (=> b!3521032 m!3971077))

(declare-fun m!3971079 () Bool)

(assert (=> b!3521032 m!3971079))

(assert (=> b!3521029 m!3971075))

(declare-fun m!3971081 () Bool)

(assert (=> b!3521029 m!3971081))

(declare-fun m!3971083 () Bool)

(assert (=> d!1027023 m!3971083))

(declare-fun m!3971085 () Bool)

(assert (=> d!1027023 m!3971085))

(declare-fun m!3971087 () Bool)

(assert (=> d!1027023 m!3971087))

(declare-fun m!3971089 () Bool)

(assert (=> d!1027023 m!3971089))

(assert (=> b!3521028 m!3971075))

(declare-fun m!3971091 () Bool)

(assert (=> b!3521028 m!3971091))

(assert (=> b!3521028 m!3971091))

(declare-fun m!3971093 () Bool)

(assert (=> b!3521028 m!3971093))

(assert (=> b!3521028 m!3971093))

(declare-fun m!3971095 () Bool)

(assert (=> b!3521028 m!3971095))

(assert (=> b!3521031 m!3971075))

(declare-fun m!3971097 () Bool)

(assert (=> b!3521031 m!3971097))

(assert (=> b!3521031 m!3971097))

(declare-fun m!3971099 () Bool)

(assert (=> b!3521031 m!3971099))

(declare-fun m!3971101 () Bool)

(assert (=> b!3521026 m!3971101))

(declare-fun m!3971103 () Bool)

(assert (=> b!3521027 m!3971103))

(assert (=> b!3521034 m!3971075))

(assert (=> b!3521034 m!3971091))

(assert (=> b!3521034 m!3971091))

(assert (=> b!3521034 m!3971093))

(assert (=> b!3521034 m!3971093))

(declare-fun m!3971105 () Bool)

(assert (=> b!3521034 m!3971105))

(declare-fun m!3971107 () Bool)

(assert (=> bm!254361 m!3971107))

(assert (=> b!3521030 m!3971075))

(assert (=> b!3521030 m!3971091))

(assert (=> b!3521030 m!3971091))

(assert (=> b!3521030 m!3971093))

(assert (=> b!3520730 d!1027023))

(declare-fun d!1027025 () Bool)

(declare-fun lt!1202076 () BalanceConc!22268)

(assert (=> d!1027025 (= (list!13659 lt!1202076) (printList!1613 thiss!18206 (list!13662 lt!1201906)))))

(assert (=> d!1027025 (= lt!1202076 (printTailRec!1560 thiss!18206 lt!1201906 0 (BalanceConc!22269 Empty!11327)))))

(assert (=> d!1027025 (= (print!2130 thiss!18206 lt!1201906) lt!1202076)))

(declare-fun bs!565285 () Bool)

(assert (= bs!565285 d!1027025))

(declare-fun m!3971109 () Bool)

(assert (=> bs!565285 m!3971109))

(declare-fun m!3971111 () Bool)

(assert (=> bs!565285 m!3971111))

(assert (=> bs!565285 m!3971111))

(declare-fun m!3971113 () Bool)

(assert (=> bs!565285 m!3971113))

(assert (=> bs!565285 m!3970645))

(assert (=> b!3520730 d!1027025))

(declare-fun d!1027027 () Bool)

(assert (=> d!1027027 (= (head!7385 lt!1201914) (h!42763 lt!1201914))))

(assert (=> b!3520730 d!1027027))

(declare-fun d!1027029 () Bool)

(assert (=> d!1027029 (= (apply!8897 (transformation!5476 (rule!8122 (h!42765 tokens!494))) lt!1201929) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) lt!1201929))))

(declare-fun b_lambda!102757 () Bool)

(assert (=> (not b_lambda!102757) (not d!1027029)))

(declare-fun t!281723 () Bool)

(declare-fun tb!196637 () Bool)

(assert (=> (and b!3520728 (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281723) tb!196637))

(declare-fun result!240992 () Bool)

(assert (=> tb!196637 (= result!240992 (inv!21 (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) lt!1201929)))))

(declare-fun m!3971115 () Bool)

(assert (=> tb!196637 m!3971115))

(assert (=> d!1027029 t!281723))

(declare-fun b_and!250757 () Bool)

(assert (= b_and!250751 (and (=> t!281723 result!240992) b_and!250757)))

(declare-fun t!281725 () Bool)

(declare-fun tb!196639 () Bool)

(assert (=> (and b!3520694 (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281725) tb!196639))

(declare-fun result!240994 () Bool)

(assert (= result!240994 result!240992))

(assert (=> d!1027029 t!281725))

(declare-fun b_and!250759 () Bool)

(assert (= b_and!250753 (and (=> t!281725 result!240994) b_and!250759)))

(declare-fun t!281727 () Bool)

(declare-fun tb!196641 () Bool)

(assert (=> (and b!3520698 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281727) tb!196641))

(declare-fun result!240996 () Bool)

(assert (= result!240996 result!240992))

(assert (=> d!1027029 t!281727))

(declare-fun b_and!250761 () Bool)

(assert (= b_and!250755 (and (=> t!281727 result!240996) b_and!250761)))

(declare-fun m!3971117 () Bool)

(assert (=> d!1027029 m!3971117))

(assert (=> b!3520730 d!1027029))

(declare-fun bm!254370 () Bool)

(declare-fun call!254376 () List!37467)

(declare-fun c!606823 () Bool)

(declare-fun c!606824 () Bool)

(assert (=> bm!254370 (= call!254376 (usedCharacters!710 (ite c!606823 (reg!10564 (regex!5476 (rule!8122 separatorToken!241))) (ite c!606824 (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241)))))))))

(declare-fun b!3521051 () Bool)

(declare-fun e!2179466 () List!37467)

(declare-fun call!254378 () List!37467)

(assert (=> b!3521051 (= e!2179466 call!254378)))

(declare-fun bm!254371 () Bool)

(declare-fun call!254375 () List!37467)

(assert (=> bm!254371 (= call!254375 (usedCharacters!710 (ite c!606824 (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241))))))))

(declare-fun b!3521052 () Bool)

(assert (=> b!3521052 (= e!2179466 call!254378)))

(declare-fun d!1027031 () Bool)

(declare-fun c!606822 () Bool)

(assert (=> d!1027031 (= c!606822 (or ((_ is EmptyExpr!10235) (regex!5476 (rule!8122 separatorToken!241))) ((_ is EmptyLang!10235) (regex!5476 (rule!8122 separatorToken!241)))))))

(declare-fun e!2179465 () List!37467)

(assert (=> d!1027031 (= (usedCharacters!710 (regex!5476 (rule!8122 separatorToken!241))) e!2179465)))

(declare-fun b!3521053 () Bool)

(assert (=> b!3521053 (= e!2179465 Nil!37343)))

(declare-fun call!254377 () List!37467)

(declare-fun bm!254372 () Bool)

(assert (=> bm!254372 (= call!254378 (++!9253 (ite c!606824 call!254375 call!254377) (ite c!606824 call!254377 call!254375)))))

(declare-fun b!3521054 () Bool)

(declare-fun e!2179468 () List!37467)

(assert (=> b!3521054 (= e!2179465 e!2179468)))

(declare-fun c!606821 () Bool)

(assert (=> b!3521054 (= c!606821 ((_ is ElementMatch!10235) (regex!5476 (rule!8122 separatorToken!241))))))

(declare-fun b!3521055 () Bool)

(assert (=> b!3521055 (= c!606823 ((_ is Star!10235) (regex!5476 (rule!8122 separatorToken!241))))))

(declare-fun e!2179467 () List!37467)

(assert (=> b!3521055 (= e!2179468 e!2179467)))

(declare-fun b!3521056 () Bool)

(assert (=> b!3521056 (= e!2179468 (Cons!37343 (c!606752 (regex!5476 (rule!8122 separatorToken!241))) Nil!37343))))

(declare-fun b!3521057 () Bool)

(assert (=> b!3521057 (= e!2179467 call!254376)))

(declare-fun bm!254373 () Bool)

(assert (=> bm!254373 (= call!254377 call!254376)))

(declare-fun b!3521058 () Bool)

(assert (=> b!3521058 (= e!2179467 e!2179466)))

(assert (=> b!3521058 (= c!606824 ((_ is Union!10235) (regex!5476 (rule!8122 separatorToken!241))))))

(assert (= (and d!1027031 c!606822) b!3521053))

(assert (= (and d!1027031 (not c!606822)) b!3521054))

(assert (= (and b!3521054 c!606821) b!3521056))

(assert (= (and b!3521054 (not c!606821)) b!3521055))

(assert (= (and b!3521055 c!606823) b!3521057))

(assert (= (and b!3521055 (not c!606823)) b!3521058))

(assert (= (and b!3521058 c!606824) b!3521052))

(assert (= (and b!3521058 (not c!606824)) b!3521051))

(assert (= (or b!3521052 b!3521051) bm!254373))

(assert (= (or b!3521052 b!3521051) bm!254371))

(assert (= (or b!3521052 b!3521051) bm!254372))

(assert (= (or b!3521057 bm!254373) bm!254370))

(declare-fun m!3971119 () Bool)

(assert (=> bm!254370 m!3971119))

(declare-fun m!3971121 () Bool)

(assert (=> bm!254371 m!3971121))

(declare-fun m!3971123 () Bool)

(assert (=> bm!254372 m!3971123))

(assert (=> b!3520730 d!1027031))

(declare-fun d!1027033 () Bool)

(declare-fun e!2179475 () Bool)

(assert (=> d!1027033 e!2179475))

(declare-fun res!1420115 () Bool)

(assert (=> d!1027033 (=> (not res!1420115) (not e!2179475))))

(assert (=> d!1027033 (= res!1420115 (isDefined!5870 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494))))))))

(declare-fun lt!1202083 () Unit!52994)

(declare-fun choose!20442 (LexerInterface!5065 List!37468 List!37467 Token!10318) Unit!52994)

(assert (=> d!1027033 (= lt!1202083 (choose!20442 thiss!18206 rules!2135 lt!1201911 (h!42765 tokens!494)))))

(assert (=> d!1027033 (rulesInvariant!4462 thiss!18206 rules!2135)))

(assert (=> d!1027033 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1119 thiss!18206 rules!2135 lt!1201911 (h!42765 tokens!494)) lt!1202083)))

(declare-fun b!3521069 () Bool)

(declare-fun res!1420116 () Bool)

(assert (=> b!3521069 (=> (not res!1420116) (not e!2179475))))

(assert (=> b!3521069 (= res!1420116 (matchR!4819 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494)))))) (list!13659 (charsOf!3490 (h!42765 tokens!494)))))))

(declare-fun b!3521070 () Bool)

(assert (=> b!3521070 (= e!2179475 (= (rule!8122 (h!42765 tokens!494)) (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494)))))))))

(assert (= (and d!1027033 res!1420115) b!3521069))

(assert (= (and b!3521069 res!1420116) b!3521070))

(assert (=> d!1027033 m!3970597))

(assert (=> d!1027033 m!3970597))

(declare-fun m!3971125 () Bool)

(assert (=> d!1027033 m!3971125))

(declare-fun m!3971127 () Bool)

(assert (=> d!1027033 m!3971127))

(assert (=> d!1027033 m!3970561))

(assert (=> b!3521069 m!3970675))

(declare-fun m!3971129 () Bool)

(assert (=> b!3521069 m!3971129))

(assert (=> b!3521069 m!3970673))

(assert (=> b!3521069 m!3970675))

(assert (=> b!3521069 m!3970673))

(assert (=> b!3521069 m!3970597))

(declare-fun m!3971131 () Bool)

(assert (=> b!3521069 m!3971131))

(assert (=> b!3521069 m!3970597))

(assert (=> b!3521070 m!3970597))

(assert (=> b!3521070 m!3970597))

(assert (=> b!3521070 m!3971131))

(assert (=> b!3520730 d!1027033))

(declare-fun d!1027035 () Bool)

(assert (=> d!1027035 (= (isDefined!5870 lt!1201945) (not (isEmpty!21814 lt!1201945)))))

(declare-fun bs!565286 () Bool)

(assert (= bs!565286 d!1027035))

(declare-fun m!3971133 () Bool)

(assert (=> bs!565286 m!3971133))

(assert (=> b!3520730 d!1027035))

(declare-fun bm!254374 () Bool)

(declare-fun c!606827 () Bool)

(declare-fun c!606828 () Bool)

(declare-fun call!254380 () List!37467)

(assert (=> bm!254374 (= call!254380 (usedCharacters!710 (ite c!606827 (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (ite c!606828 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494))))))))))

(declare-fun b!3521074 () Bool)

(declare-fun e!2179479 () List!37467)

(declare-fun call!254382 () List!37467)

(assert (=> b!3521074 (= e!2179479 call!254382)))

(declare-fun bm!254375 () Bool)

(declare-fun call!254379 () List!37467)

(assert (=> bm!254375 (= call!254379 (usedCharacters!710 (ite c!606828 (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))))))

(declare-fun b!3521075 () Bool)

(assert (=> b!3521075 (= e!2179479 call!254382)))

(declare-fun d!1027037 () Bool)

(declare-fun c!606826 () Bool)

(assert (=> d!1027037 (= c!606826 (or ((_ is EmptyExpr!10235) (regex!5476 (rule!8122 (h!42765 tokens!494)))) ((_ is EmptyLang!10235) (regex!5476 (rule!8122 (h!42765 tokens!494))))))))

(declare-fun e!2179478 () List!37467)

(assert (=> d!1027037 (= (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494)))) e!2179478)))

(declare-fun b!3521076 () Bool)

(assert (=> b!3521076 (= e!2179478 Nil!37343)))

(declare-fun bm!254376 () Bool)

(declare-fun call!254381 () List!37467)

(assert (=> bm!254376 (= call!254382 (++!9253 (ite c!606828 call!254379 call!254381) (ite c!606828 call!254381 call!254379)))))

(declare-fun b!3521077 () Bool)

(declare-fun e!2179481 () List!37467)

(assert (=> b!3521077 (= e!2179478 e!2179481)))

(declare-fun c!606825 () Bool)

(assert (=> b!3521077 (= c!606825 ((_ is ElementMatch!10235) (regex!5476 (rule!8122 (h!42765 tokens!494)))))))

(declare-fun b!3521078 () Bool)

(assert (=> b!3521078 (= c!606827 ((_ is Star!10235) (regex!5476 (rule!8122 (h!42765 tokens!494)))))))

(declare-fun e!2179480 () List!37467)

(assert (=> b!3521078 (= e!2179481 e!2179480)))

(declare-fun b!3521079 () Bool)

(assert (=> b!3521079 (= e!2179481 (Cons!37343 (c!606752 (regex!5476 (rule!8122 (h!42765 tokens!494)))) Nil!37343))))

(declare-fun b!3521080 () Bool)

(assert (=> b!3521080 (= e!2179480 call!254380)))

(declare-fun bm!254377 () Bool)

(assert (=> bm!254377 (= call!254381 call!254380)))

(declare-fun b!3521081 () Bool)

(assert (=> b!3521081 (= e!2179480 e!2179479)))

(assert (=> b!3521081 (= c!606828 ((_ is Union!10235) (regex!5476 (rule!8122 (h!42765 tokens!494)))))))

(assert (= (and d!1027037 c!606826) b!3521076))

(assert (= (and d!1027037 (not c!606826)) b!3521077))

(assert (= (and b!3521077 c!606825) b!3521079))

(assert (= (and b!3521077 (not c!606825)) b!3521078))

(assert (= (and b!3521078 c!606827) b!3521080))

(assert (= (and b!3521078 (not c!606827)) b!3521081))

(assert (= (and b!3521081 c!606828) b!3521075))

(assert (= (and b!3521081 (not c!606828)) b!3521074))

(assert (= (or b!3521075 b!3521074) bm!254377))

(assert (= (or b!3521075 b!3521074) bm!254375))

(assert (= (or b!3521075 b!3521074) bm!254376))

(assert (= (or b!3521080 bm!254377) bm!254374))

(declare-fun m!3971151 () Bool)

(assert (=> bm!254374 m!3971151))

(declare-fun m!3971153 () Bool)

(assert (=> bm!254375 m!3971153))

(declare-fun m!3971155 () Bool)

(assert (=> bm!254376 m!3971155))

(assert (=> b!3520730 d!1027037))

(declare-fun d!1027041 () Bool)

(assert (=> d!1027041 (rulesProduceIndividualToken!2557 thiss!18206 rules!2135 (h!42765 tokens!494))))

(declare-fun lt!1202116 () Unit!52994)

(declare-fun choose!20443 (LexerInterface!5065 List!37468 List!37469 Token!10318) Unit!52994)

(assert (=> d!1027041 (= lt!1202116 (choose!20443 thiss!18206 rules!2135 tokens!494 (h!42765 tokens!494)))))

(assert (=> d!1027041 (not (isEmpty!21807 rules!2135))))

(assert (=> d!1027041 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1054 thiss!18206 rules!2135 tokens!494 (h!42765 tokens!494)) lt!1202116)))

(declare-fun bs!565290 () Bool)

(assert (= bs!565290 d!1027041))

(assert (=> bs!565290 m!3970703))

(declare-fun m!3971251 () Bool)

(assert (=> bs!565290 m!3971251))

(assert (=> bs!565290 m!3970677))

(assert (=> b!3520730 d!1027041))

(declare-fun d!1027067 () Bool)

(declare-fun e!2179514 () Bool)

(assert (=> d!1027067 e!2179514))

(declare-fun res!1420147 () Bool)

(assert (=> d!1027067 (=> (not res!1420147) (not e!2179514))))

(assert (=> d!1027067 (= res!1420147 (isDefined!5870 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(declare-fun lt!1202117 () Unit!52994)

(assert (=> d!1027067 (= lt!1202117 (choose!20442 thiss!18206 rules!2135 lt!1201914 (h!42765 (t!281700 tokens!494))))))

(assert (=> d!1027067 (rulesInvariant!4462 thiss!18206 rules!2135)))

(assert (=> d!1027067 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1119 thiss!18206 rules!2135 lt!1201914 (h!42765 (t!281700 tokens!494))) lt!1202117)))

(declare-fun b!3521137 () Bool)

(declare-fun res!1420148 () Bool)

(assert (=> b!3521137 (=> (not res!1420148) (not e!2179514))))

(assert (=> b!3521137 (= res!1420148 (matchR!4819 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494))))))))

(declare-fun b!3521138 () Bool)

(assert (=> b!3521138 (= e!2179514 (= (rule!8122 (h!42765 (t!281700 tokens!494))) (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(assert (= (and d!1027067 res!1420147) b!3521137))

(assert (= (and b!3521137 res!1420148) b!3521138))

(assert (=> d!1027067 m!3970583))

(assert (=> d!1027067 m!3970583))

(declare-fun m!3971255 () Bool)

(assert (=> d!1027067 m!3971255))

(declare-fun m!3971257 () Bool)

(assert (=> d!1027067 m!3971257))

(assert (=> d!1027067 m!3970561))

(assert (=> b!3521137 m!3970535))

(declare-fun m!3971259 () Bool)

(assert (=> b!3521137 m!3971259))

(assert (=> b!3521137 m!3970527))

(assert (=> b!3521137 m!3970535))

(assert (=> b!3521137 m!3970527))

(assert (=> b!3521137 m!3970583))

(declare-fun m!3971261 () Bool)

(assert (=> b!3521137 m!3971261))

(assert (=> b!3521137 m!3970583))

(assert (=> b!3521138 m!3970583))

(assert (=> b!3521138 m!3970583))

(assert (=> b!3521138 m!3971261))

(assert (=> b!3520730 d!1027067))

(declare-fun d!1027071 () Bool)

(declare-fun lt!1202123 () Bool)

(declare-fun e!2179519 () Bool)

(assert (=> d!1027071 (= lt!1202123 e!2179519)))

(declare-fun res!1420157 () Bool)

(assert (=> d!1027071 (=> (not res!1420157) (not e!2179519))))

(assert (=> d!1027071 (= res!1420157 (= (list!13662 (_1!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494))))))) (list!13662 (singletonSeq!2572 (h!42765 (t!281700 tokens!494))))))))

(declare-fun e!2179520 () Bool)

(assert (=> d!1027071 (= lt!1202123 e!2179520)))

(declare-fun res!1420156 () Bool)

(assert (=> d!1027071 (=> (not res!1420156) (not e!2179520))))

(declare-fun lt!1202124 () tuple2!37176)

(assert (=> d!1027071 (= res!1420156 (= (size!28413 (_1!21722 lt!1202124)) 1))))

(assert (=> d!1027071 (= lt!1202124 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494))))))))

(assert (=> d!1027071 (not (isEmpty!21807 rules!2135))))

(assert (=> d!1027071 (= (rulesProduceIndividualToken!2557 thiss!18206 rules!2135 (h!42765 (t!281700 tokens!494))) lt!1202123)))

(declare-fun b!3521148 () Bool)

(declare-fun res!1420158 () Bool)

(assert (=> b!3521148 (=> (not res!1420158) (not e!2179520))))

(assert (=> b!3521148 (= res!1420158 (= (apply!8896 (_1!21722 lt!1202124) 0) (h!42765 (t!281700 tokens!494))))))

(declare-fun b!3521149 () Bool)

(assert (=> b!3521149 (= e!2179520 (isEmpty!21806 (_2!21722 lt!1202124)))))

(declare-fun b!3521150 () Bool)

(assert (=> b!3521150 (= e!2179519 (isEmpty!21806 (_2!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494))))))))))

(assert (= (and d!1027071 res!1420156) b!3521148))

(assert (= (and b!3521148 res!1420158) b!3521149))

(assert (= (and d!1027071 res!1420157) b!3521150))

(assert (=> d!1027071 m!3970627))

(declare-fun m!3971263 () Bool)

(assert (=> d!1027071 m!3971263))

(declare-fun m!3971265 () Bool)

(assert (=> d!1027071 m!3971265))

(declare-fun m!3971267 () Bool)

(assert (=> d!1027071 m!3971267))

(assert (=> d!1027071 m!3970677))

(assert (=> d!1027071 m!3970627))

(declare-fun m!3971269 () Bool)

(assert (=> d!1027071 m!3971269))

(assert (=> d!1027071 m!3970627))

(assert (=> d!1027071 m!3971265))

(declare-fun m!3971271 () Bool)

(assert (=> d!1027071 m!3971271))

(declare-fun m!3971273 () Bool)

(assert (=> b!3521148 m!3971273))

(declare-fun m!3971275 () Bool)

(assert (=> b!3521149 m!3971275))

(assert (=> b!3521150 m!3970627))

(assert (=> b!3521150 m!3970627))

(assert (=> b!3521150 m!3971265))

(assert (=> b!3521150 m!3971265))

(assert (=> b!3521150 m!3971267))

(declare-fun m!3971283 () Bool)

(assert (=> b!3521150 m!3971283))

(assert (=> b!3520730 d!1027071))

(declare-fun d!1027073 () Bool)

(declare-fun e!2179589 () Bool)

(assert (=> d!1027073 e!2179589))

(declare-fun res!1420231 () Bool)

(assert (=> d!1027073 (=> (not res!1420231) (not e!2179589))))

(declare-fun e!2179587 () Bool)

(assert (=> d!1027073 (= res!1420231 e!2179587)))

(declare-fun c!606865 () Bool)

(declare-fun lt!1202171 () tuple2!37176)

(assert (=> d!1027073 (= c!606865 (> (size!28413 (_1!21722 lt!1202171)) 0))))

(declare-fun lexTailRecV2!1086 (LexerInterface!5065 List!37468 BalanceConc!22268 BalanceConc!22268 BalanceConc!22268 BalanceConc!22270) tuple2!37176)

(assert (=> d!1027073 (= lt!1202171 (lexTailRecV2!1086 thiss!18206 rules!2135 lt!1201907 (BalanceConc!22269 Empty!11327) lt!1201907 (BalanceConc!22271 Empty!11328)))))

(assert (=> d!1027073 (= (lex!2391 thiss!18206 rules!2135 lt!1201907) lt!1202171)))

(declare-fun b!3521265 () Bool)

(declare-fun res!1420232 () Bool)

(assert (=> b!3521265 (=> (not res!1420232) (not e!2179589))))

(declare-datatypes ((tuple2!37184 0))(
  ( (tuple2!37185 (_1!21726 List!37469) (_2!21726 List!37467)) )
))
(declare-fun lexList!1478 (LexerInterface!5065 List!37468 List!37467) tuple2!37184)

(assert (=> b!3521265 (= res!1420232 (= (list!13662 (_1!21722 lt!1202171)) (_1!21726 (lexList!1478 thiss!18206 rules!2135 (list!13659 lt!1201907)))))))

(declare-fun b!3521266 () Bool)

(declare-fun e!2179588 () Bool)

(assert (=> b!3521266 (= e!2179587 e!2179588)))

(declare-fun res!1420230 () Bool)

(declare-fun size!28419 (BalanceConc!22268) Int)

(assert (=> b!3521266 (= res!1420230 (< (size!28419 (_2!21722 lt!1202171)) (size!28419 lt!1201907)))))

(assert (=> b!3521266 (=> (not res!1420230) (not e!2179588))))

(declare-fun b!3521267 () Bool)

(assert (=> b!3521267 (= e!2179588 (not (isEmpty!21805 (_1!21722 lt!1202171))))))

(declare-fun b!3521268 () Bool)

(assert (=> b!3521268 (= e!2179589 (= (list!13659 (_2!21722 lt!1202171)) (_2!21726 (lexList!1478 thiss!18206 rules!2135 (list!13659 lt!1201907)))))))

(declare-fun b!3521269 () Bool)

(assert (=> b!3521269 (= e!2179587 (= (_2!21722 lt!1202171) lt!1201907))))

(assert (= (and d!1027073 c!606865) b!3521266))

(assert (= (and d!1027073 (not c!606865)) b!3521269))

(assert (= (and b!3521266 res!1420230) b!3521267))

(assert (= (and d!1027073 res!1420231) b!3521265))

(assert (= (and b!3521265 res!1420232) b!3521268))

(declare-fun m!3971497 () Bool)

(assert (=> b!3521267 m!3971497))

(declare-fun m!3971499 () Bool)

(assert (=> b!3521268 m!3971499))

(declare-fun m!3971501 () Bool)

(assert (=> b!3521268 m!3971501))

(assert (=> b!3521268 m!3971501))

(declare-fun m!3971503 () Bool)

(assert (=> b!3521268 m!3971503))

(declare-fun m!3971505 () Bool)

(assert (=> b!3521265 m!3971505))

(assert (=> b!3521265 m!3971501))

(assert (=> b!3521265 m!3971501))

(assert (=> b!3521265 m!3971503))

(declare-fun m!3971507 () Bool)

(assert (=> d!1027073 m!3971507))

(declare-fun m!3971509 () Bool)

(assert (=> d!1027073 m!3971509))

(declare-fun m!3971511 () Bool)

(assert (=> b!3521266 m!3971511))

(declare-fun m!3971513 () Bool)

(assert (=> b!3521266 m!3971513))

(assert (=> b!3520730 d!1027073))

(declare-fun d!1027117 () Bool)

(assert (=> d!1027117 (= (isDefined!5870 lt!1201948) (not (isEmpty!21814 lt!1201948)))))

(declare-fun bs!565295 () Bool)

(assert (= bs!565295 d!1027117))

(declare-fun m!3971515 () Bool)

(assert (=> bs!565295 m!3971515))

(assert (=> b!3520730 d!1027117))

(declare-fun d!1027119 () Bool)

(assert (=> d!1027119 (rulesProduceIndividualToken!2557 thiss!18206 rules!2135 (h!42765 (t!281700 tokens!494)))))

(declare-fun lt!1202172 () Unit!52994)

(assert (=> d!1027119 (= lt!1202172 (choose!20443 thiss!18206 rules!2135 tokens!494 (h!42765 (t!281700 tokens!494))))))

(assert (=> d!1027119 (not (isEmpty!21807 rules!2135))))

(assert (=> d!1027119 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1054 thiss!18206 rules!2135 tokens!494 (h!42765 (t!281700 tokens!494))) lt!1202172)))

(declare-fun bs!565296 () Bool)

(assert (= bs!565296 d!1027119))

(assert (=> bs!565296 m!3970605))

(declare-fun m!3971517 () Bool)

(assert (=> bs!565296 m!3971517))

(assert (=> bs!565296 m!3970677))

(assert (=> b!3520730 d!1027119))

(declare-fun d!1027121 () Bool)

(declare-fun e!2179590 () Bool)

(assert (=> d!1027121 e!2179590))

(declare-fun res!1420233 () Bool)

(assert (=> d!1027121 (=> (not res!1420233) (not e!2179590))))

(assert (=> d!1027121 (= res!1420233 (isDefined!5870 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241)))))))

(declare-fun lt!1202173 () Unit!52994)

(assert (=> d!1027121 (= lt!1202173 (choose!20442 thiss!18206 rules!2135 lt!1201944 separatorToken!241))))

(assert (=> d!1027121 (rulesInvariant!4462 thiss!18206 rules!2135)))

(assert (=> d!1027121 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1119 thiss!18206 rules!2135 lt!1201944 separatorToken!241) lt!1202173)))

(declare-fun b!3521270 () Bool)

(declare-fun res!1420234 () Bool)

(assert (=> b!3521270 (=> (not res!1420234) (not e!2179590))))

(assert (=> b!3521270 (= res!1420234 (matchR!4819 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241))))) (list!13659 (charsOf!3490 separatorToken!241))))))

(declare-fun b!3521271 () Bool)

(assert (=> b!3521271 (= e!2179590 (= (rule!8122 separatorToken!241) (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241))))))))

(assert (= (and d!1027121 res!1420233) b!3521270))

(assert (= (and b!3521270 res!1420234) b!3521271))

(assert (=> d!1027121 m!3970617))

(assert (=> d!1027121 m!3970617))

(declare-fun m!3971519 () Bool)

(assert (=> d!1027121 m!3971519))

(declare-fun m!3971521 () Bool)

(assert (=> d!1027121 m!3971521))

(assert (=> d!1027121 m!3970561))

(assert (=> b!3521270 m!3970545))

(declare-fun m!3971523 () Bool)

(assert (=> b!3521270 m!3971523))

(assert (=> b!3521270 m!3970529))

(assert (=> b!3521270 m!3970545))

(assert (=> b!3521270 m!3970529))

(assert (=> b!3521270 m!3970617))

(declare-fun m!3971525 () Bool)

(assert (=> b!3521270 m!3971525))

(assert (=> b!3521270 m!3970617))

(assert (=> b!3521271 m!3970617))

(assert (=> b!3521271 m!3970617))

(assert (=> b!3521271 m!3971525))

(assert (=> b!3520730 d!1027121))

(declare-fun d!1027123 () Bool)

(declare-fun lt!1202174 () Bool)

(assert (=> d!1027123 (= lt!1202174 (select (content!5263 (usedCharacters!710 (regex!5476 (rule!8122 separatorToken!241)))) lt!1201930))))

(declare-fun e!2179591 () Bool)

(assert (=> d!1027123 (= lt!1202174 e!2179591)))

(declare-fun res!1420235 () Bool)

(assert (=> d!1027123 (=> (not res!1420235) (not e!2179591))))

(assert (=> d!1027123 (= res!1420235 ((_ is Cons!37343) (usedCharacters!710 (regex!5476 (rule!8122 separatorToken!241)))))))

(assert (=> d!1027123 (= (contains!7004 (usedCharacters!710 (regex!5476 (rule!8122 separatorToken!241))) lt!1201930) lt!1202174)))

(declare-fun b!3521272 () Bool)

(declare-fun e!2179592 () Bool)

(assert (=> b!3521272 (= e!2179591 e!2179592)))

(declare-fun res!1420236 () Bool)

(assert (=> b!3521272 (=> res!1420236 e!2179592)))

(assert (=> b!3521272 (= res!1420236 (= (h!42763 (usedCharacters!710 (regex!5476 (rule!8122 separatorToken!241)))) lt!1201930))))

(declare-fun b!3521273 () Bool)

(assert (=> b!3521273 (= e!2179592 (contains!7004 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 separatorToken!241)))) lt!1201930))))

(assert (= (and d!1027123 res!1420235) b!3521272))

(assert (= (and b!3521272 (not res!1420236)) b!3521273))

(assert (=> d!1027123 m!3970595))

(declare-fun m!3971527 () Bool)

(assert (=> d!1027123 m!3971527))

(declare-fun m!3971529 () Bool)

(assert (=> d!1027123 m!3971529))

(declare-fun m!3971531 () Bool)

(assert (=> b!3521273 m!3971531))

(assert (=> b!3520730 d!1027123))

(declare-fun d!1027125 () Bool)

(declare-fun e!2179595 () Bool)

(assert (=> d!1027125 e!2179595))

(declare-fun res!1420239 () Bool)

(assert (=> d!1027125 (=> (not res!1420239) (not e!2179595))))

(declare-fun lt!1202177 () BalanceConc!22270)

(assert (=> d!1027125 (= res!1420239 (= (list!13662 lt!1202177) (Cons!37345 separatorToken!241 Nil!37345)))))

(declare-fun singleton!1150 (Token!10318) BalanceConc!22270)

(assert (=> d!1027125 (= lt!1202177 (singleton!1150 separatorToken!241))))

(assert (=> d!1027125 (= (singletonSeq!2572 separatorToken!241) lt!1202177)))

(declare-fun b!3521276 () Bool)

(declare-fun isBalanced!3457 (Conc!11328) Bool)

(assert (=> b!3521276 (= e!2179595 (isBalanced!3457 (c!606754 lt!1202177)))))

(assert (= (and d!1027125 res!1420239) b!3521276))

(declare-fun m!3971533 () Bool)

(assert (=> d!1027125 m!3971533))

(declare-fun m!3971535 () Bool)

(assert (=> d!1027125 m!3971535))

(declare-fun m!3971537 () Bool)

(assert (=> b!3521276 m!3971537))

(assert (=> b!3520730 d!1027125))

(declare-fun d!1027127 () Bool)

(declare-fun lt!1202178 () Int)

(assert (=> d!1027127 (= lt!1202178 (size!28417 (list!13662 (_1!21722 lt!1201946))))))

(assert (=> d!1027127 (= lt!1202178 (size!28418 (c!606754 (_1!21722 lt!1201946))))))

(assert (=> d!1027127 (= (size!28413 (_1!21722 lt!1201946)) lt!1202178)))

(declare-fun bs!565297 () Bool)

(assert (= bs!565297 d!1027127))

(assert (=> bs!565297 m!3970921))

(assert (=> bs!565297 m!3970921))

(declare-fun m!3971539 () Bool)

(assert (=> bs!565297 m!3971539))

(declare-fun m!3971541 () Bool)

(assert (=> bs!565297 m!3971541))

(assert (=> b!3520730 d!1027127))

(declare-fun d!1027129 () Bool)

(assert (=> d!1027129 (not (contains!7004 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494)))) lt!1201930))))

(declare-fun lt!1202181 () Unit!52994)

(declare-fun choose!20445 (LexerInterface!5065 List!37468 List!37468 Rule!10752 Rule!10752 C!20656) Unit!52994)

(assert (=> d!1027129 (= lt!1202181 (choose!20445 thiss!18206 rules!2135 rules!2135 (rule!8122 (h!42765 tokens!494)) (rule!8122 separatorToken!241) lt!1201930))))

(assert (=> d!1027129 (rulesInvariant!4462 thiss!18206 rules!2135)))

(assert (=> d!1027129 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!276 thiss!18206 rules!2135 rules!2135 (rule!8122 (h!42765 tokens!494)) (rule!8122 separatorToken!241) lt!1201930) lt!1202181)))

(declare-fun bs!565298 () Bool)

(assert (= bs!565298 d!1027129))

(assert (=> bs!565298 m!3970621))

(assert (=> bs!565298 m!3970621))

(assert (=> bs!565298 m!3970623))

(declare-fun m!3971543 () Bool)

(assert (=> bs!565298 m!3971543))

(assert (=> bs!565298 m!3970561))

(assert (=> b!3520730 d!1027129))

(declare-fun d!1027131 () Bool)

(declare-fun lt!1202199 () BalanceConc!22268)

(declare-fun printListTailRec!718 (LexerInterface!5065 List!37469 List!37467) List!37467)

(declare-fun dropList!1235 (BalanceConc!22270 Int) List!37469)

(assert (=> d!1027131 (= (list!13659 lt!1202199) (printListTailRec!718 thiss!18206 (dropList!1235 lt!1201912 0) (list!13659 (BalanceConc!22269 Empty!11327))))))

(declare-fun e!2179600 () BalanceConc!22268)

(assert (=> d!1027131 (= lt!1202199 e!2179600)))

(declare-fun c!606869 () Bool)

(assert (=> d!1027131 (= c!606869 (>= 0 (size!28413 lt!1201912)))))

(declare-fun e!2179601 () Bool)

(assert (=> d!1027131 e!2179601))

(declare-fun res!1420242 () Bool)

(assert (=> d!1027131 (=> (not res!1420242) (not e!2179601))))

(assert (=> d!1027131 (= res!1420242 (>= 0 0))))

(assert (=> d!1027131 (= (printTailRec!1560 thiss!18206 lt!1201912 0 (BalanceConc!22269 Empty!11327)) lt!1202199)))

(declare-fun b!3521283 () Bool)

(assert (=> b!3521283 (= e!2179601 (<= 0 (size!28413 lt!1201912)))))

(declare-fun b!3521284 () Bool)

(assert (=> b!3521284 (= e!2179600 (BalanceConc!22269 Empty!11327))))

(declare-fun b!3521285 () Bool)

(declare-fun ++!9255 (BalanceConc!22268 BalanceConc!22268) BalanceConc!22268)

(assert (=> b!3521285 (= e!2179600 (printTailRec!1560 thiss!18206 lt!1201912 (+ 0 1) (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201912 0)))))))

(declare-fun lt!1202198 () List!37469)

(assert (=> b!3521285 (= lt!1202198 (list!13662 lt!1201912))))

(declare-fun lt!1202200 () Unit!52994)

(declare-fun lemmaDropApply!1193 (List!37469 Int) Unit!52994)

(assert (=> b!3521285 (= lt!1202200 (lemmaDropApply!1193 lt!1202198 0))))

(declare-fun head!7387 (List!37469) Token!10318)

(declare-fun drop!2049 (List!37469 Int) List!37469)

(assert (=> b!3521285 (= (head!7387 (drop!2049 lt!1202198 0)) (apply!8898 lt!1202198 0))))

(declare-fun lt!1202197 () Unit!52994)

(assert (=> b!3521285 (= lt!1202197 lt!1202200)))

(declare-fun lt!1202201 () List!37469)

(assert (=> b!3521285 (= lt!1202201 (list!13662 lt!1201912))))

(declare-fun lt!1202196 () Unit!52994)

(declare-fun lemmaDropTail!1077 (List!37469 Int) Unit!52994)

(assert (=> b!3521285 (= lt!1202196 (lemmaDropTail!1077 lt!1202201 0))))

(declare-fun tail!5493 (List!37469) List!37469)

(assert (=> b!3521285 (= (tail!5493 (drop!2049 lt!1202201 0)) (drop!2049 lt!1202201 (+ 0 1)))))

(declare-fun lt!1202202 () Unit!52994)

(assert (=> b!3521285 (= lt!1202202 lt!1202196)))

(assert (= (and d!1027131 res!1420242) b!3521283))

(assert (= (and d!1027131 c!606869) b!3521284))

(assert (= (and d!1027131 (not c!606869)) b!3521285))

(declare-fun m!3971545 () Bool)

(assert (=> d!1027131 m!3971545))

(declare-fun m!3971547 () Bool)

(assert (=> d!1027131 m!3971547))

(assert (=> d!1027131 m!3971545))

(declare-fun m!3971549 () Bool)

(assert (=> d!1027131 m!3971549))

(declare-fun m!3971551 () Bool)

(assert (=> d!1027131 m!3971551))

(declare-fun m!3971553 () Bool)

(assert (=> d!1027131 m!3971553))

(assert (=> d!1027131 m!3971547))

(assert (=> b!3521283 m!3971551))

(declare-fun m!3971555 () Bool)

(assert (=> b!3521285 m!3971555))

(declare-fun m!3971557 () Bool)

(assert (=> b!3521285 m!3971557))

(declare-fun m!3971559 () Bool)

(assert (=> b!3521285 m!3971559))

(declare-fun m!3971561 () Bool)

(assert (=> b!3521285 m!3971561))

(declare-fun m!3971563 () Bool)

(assert (=> b!3521285 m!3971563))

(declare-fun m!3971565 () Bool)

(assert (=> b!3521285 m!3971565))

(declare-fun m!3971567 () Bool)

(assert (=> b!3521285 m!3971567))

(declare-fun m!3971569 () Bool)

(assert (=> b!3521285 m!3971569))

(assert (=> b!3521285 m!3971561))

(assert (=> b!3521285 m!3971567))

(assert (=> b!3521285 m!3971563))

(assert (=> b!3521285 m!3971557))

(declare-fun m!3971571 () Bool)

(assert (=> b!3521285 m!3971571))

(declare-fun m!3971573 () Bool)

(assert (=> b!3521285 m!3971573))

(declare-fun m!3971575 () Bool)

(assert (=> b!3521285 m!3971575))

(assert (=> b!3521285 m!3971571))

(declare-fun m!3971577 () Bool)

(assert (=> b!3521285 m!3971577))

(declare-fun m!3971579 () Bool)

(assert (=> b!3521285 m!3971579))

(assert (=> b!3520730 d!1027131))

(declare-fun b!3521317 () Bool)

(declare-fun res!1420273 () Bool)

(declare-fun e!2179624 () Bool)

(assert (=> b!3521317 (=> (not res!1420273) (not e!2179624))))

(declare-fun lt!1202217 () Option!7614)

(assert (=> b!3521317 (= res!1420273 (= (++!9253 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217)))) (_2!21723 (get!11991 lt!1202217))) lt!1201914))))

(declare-fun b!3521318 () Bool)

(declare-fun e!2179625 () Bool)

(assert (=> b!3521318 (= e!2179625 e!2179624)))

(declare-fun res!1420267 () Bool)

(assert (=> b!3521318 (=> (not res!1420267) (not e!2179624))))

(assert (=> b!3521318 (= res!1420267 (matchR!4819 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217))))))))

(declare-fun b!3521319 () Bool)

(declare-fun e!2179623 () Option!7614)

(assert (=> b!3521319 (= e!2179623 None!7613)))

(declare-fun b!3521320 () Bool)

(declare-fun res!1420269 () Bool)

(assert (=> b!3521320 (=> (not res!1420269) (not e!2179624))))

(assert (=> b!3521320 (= res!1420269 (= (value!176526 (_1!21723 (get!11991 lt!1202217))) (apply!8897 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217)))) (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202217)))))))))

(declare-fun b!3521321 () Bool)

(declare-datatypes ((tuple2!37186 0))(
  ( (tuple2!37187 (_1!21727 List!37467) (_2!21727 List!37467)) )
))
(declare-fun lt!1202220 () tuple2!37186)

(assert (=> b!3521321 (= e!2179623 (Some!7613 (tuple2!37179 (Token!10319 (apply!8897 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) (seqFromList!4006 (_1!21727 lt!1202220))) (rule!8122 (h!42765 (t!281700 tokens!494))) (size!28419 (seqFromList!4006 (_1!21727 lt!1202220))) (_1!21727 lt!1202220)) (_2!21727 lt!1202220))))))

(declare-fun lt!1202216 () Unit!52994)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!912 (Regex!10235 List!37467) Unit!52994)

(assert (=> b!3521321 (= lt!1202216 (longestMatchIsAcceptedByMatchOrIsEmpty!912 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) lt!1201914))))

(declare-fun res!1420268 () Bool)

(declare-fun findLongestMatchInner!939 (Regex!10235 List!37467 Int List!37467 List!37467 Int) tuple2!37186)

(assert (=> b!3521321 (= res!1420268 (isEmpty!21812 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 (size!28412 Nil!37343) lt!1201914 lt!1201914 (size!28412 lt!1201914)))))))

(declare-fun e!2179626 () Bool)

(assert (=> b!3521321 (=> res!1420268 e!2179626)))

(assert (=> b!3521321 e!2179626))

(declare-fun lt!1202219 () Unit!52994)

(assert (=> b!3521321 (= lt!1202219 lt!1202216)))

(declare-fun lt!1202218 () Unit!52994)

(declare-fun lemmaSemiInverse!1291 (TokenValueInjection!10840 BalanceConc!22268) Unit!52994)

(assert (=> b!3521321 (= lt!1202218 (lemmaSemiInverse!1291 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) (seqFromList!4006 (_1!21727 lt!1202220))))))

(declare-fun b!3521322 () Bool)

(declare-fun res!1420272 () Bool)

(assert (=> b!3521322 (=> (not res!1420272) (not e!2179624))))

(assert (=> b!3521322 (= res!1420272 (< (size!28412 (_2!21723 (get!11991 lt!1202217))) (size!28412 lt!1201914)))))

(declare-fun d!1027133 () Bool)

(assert (=> d!1027133 e!2179625))

(declare-fun res!1420270 () Bool)

(assert (=> d!1027133 (=> res!1420270 e!2179625)))

(assert (=> d!1027133 (= res!1420270 (isEmpty!21815 lt!1202217))))

(assert (=> d!1027133 (= lt!1202217 e!2179623)))

(declare-fun c!606872 () Bool)

(assert (=> d!1027133 (= c!606872 (isEmpty!21812 (_1!21727 lt!1202220)))))

(declare-fun findLongestMatch!854 (Regex!10235 List!37467) tuple2!37186)

(assert (=> d!1027133 (= lt!1202220 (findLongestMatch!854 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) lt!1201914))))

(declare-fun ruleValid!1772 (LexerInterface!5065 Rule!10752) Bool)

(assert (=> d!1027133 (ruleValid!1772 thiss!18206 (rule!8122 (h!42765 (t!281700 tokens!494))))))

(assert (=> d!1027133 (= (maxPrefixOneRule!1772 thiss!18206 (rule!8122 (h!42765 (t!281700 tokens!494))) lt!1201914) lt!1202217)))

(declare-fun b!3521323 () Bool)

(declare-fun res!1420271 () Bool)

(assert (=> b!3521323 (=> (not res!1420271) (not e!2179624))))

(assert (=> b!3521323 (= res!1420271 (= (rule!8122 (_1!21723 (get!11991 lt!1202217))) (rule!8122 (h!42765 (t!281700 tokens!494)))))))

(declare-fun b!3521324 () Bool)

(assert (=> b!3521324 (= e!2179624 (= (size!28411 (_1!21723 (get!11991 lt!1202217))) (size!28412 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202217))))))))

(declare-fun b!3521325 () Bool)

(assert (=> b!3521325 (= e!2179626 (matchR!4819 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 (size!28412 Nil!37343) lt!1201914 lt!1201914 (size!28412 lt!1201914)))))))

(assert (= (and d!1027133 c!606872) b!3521319))

(assert (= (and d!1027133 (not c!606872)) b!3521321))

(assert (= (and b!3521321 (not res!1420268)) b!3521325))

(assert (= (and d!1027133 (not res!1420270)) b!3521318))

(assert (= (and b!3521318 res!1420267) b!3521317))

(assert (= (and b!3521317 res!1420273) b!3521322))

(assert (= (and b!3521322 res!1420272) b!3521323))

(assert (= (and b!3521323 res!1420271) b!3521320))

(assert (= (and b!3521320 res!1420269) b!3521324))

(declare-fun m!3971597 () Bool)

(assert (=> b!3521322 m!3971597))

(declare-fun m!3971599 () Bool)

(assert (=> b!3521322 m!3971599))

(assert (=> b!3521322 m!3970651))

(assert (=> b!3521318 m!3971597))

(declare-fun m!3971601 () Bool)

(assert (=> b!3521318 m!3971601))

(assert (=> b!3521318 m!3971601))

(declare-fun m!3971603 () Bool)

(assert (=> b!3521318 m!3971603))

(assert (=> b!3521318 m!3971603))

(declare-fun m!3971605 () Bool)

(assert (=> b!3521318 m!3971605))

(assert (=> b!3521323 m!3971597))

(declare-fun m!3971607 () Bool)

(assert (=> b!3521325 m!3971607))

(assert (=> b!3521325 m!3970651))

(assert (=> b!3521325 m!3971607))

(assert (=> b!3521325 m!3970651))

(declare-fun m!3971609 () Bool)

(assert (=> b!3521325 m!3971609))

(declare-fun m!3971611 () Bool)

(assert (=> b!3521325 m!3971611))

(assert (=> b!3521317 m!3971597))

(assert (=> b!3521317 m!3971601))

(assert (=> b!3521317 m!3971601))

(assert (=> b!3521317 m!3971603))

(assert (=> b!3521317 m!3971603))

(declare-fun m!3971613 () Bool)

(assert (=> b!3521317 m!3971613))

(declare-fun m!3971615 () Bool)

(assert (=> d!1027133 m!3971615))

(declare-fun m!3971617 () Bool)

(assert (=> d!1027133 m!3971617))

(declare-fun m!3971619 () Bool)

(assert (=> d!1027133 m!3971619))

(declare-fun m!3971621 () Bool)

(assert (=> d!1027133 m!3971621))

(declare-fun m!3971623 () Bool)

(assert (=> b!3521321 m!3971623))

(declare-fun m!3971625 () Bool)

(assert (=> b!3521321 m!3971625))

(assert (=> b!3521321 m!3971607))

(assert (=> b!3521321 m!3970651))

(assert (=> b!3521321 m!3971609))

(declare-fun m!3971627 () Bool)

(assert (=> b!3521321 m!3971627))

(assert (=> b!3521321 m!3971623))

(declare-fun m!3971629 () Bool)

(assert (=> b!3521321 m!3971629))

(declare-fun m!3971631 () Bool)

(assert (=> b!3521321 m!3971631))

(assert (=> b!3521321 m!3971623))

(declare-fun m!3971633 () Bool)

(assert (=> b!3521321 m!3971633))

(assert (=> b!3521321 m!3970651))

(assert (=> b!3521321 m!3971623))

(assert (=> b!3521321 m!3971607))

(assert (=> b!3521324 m!3971597))

(declare-fun m!3971635 () Bool)

(assert (=> b!3521324 m!3971635))

(assert (=> b!3521320 m!3971597))

(declare-fun m!3971637 () Bool)

(assert (=> b!3521320 m!3971637))

(assert (=> b!3521320 m!3971637))

(declare-fun m!3971639 () Bool)

(assert (=> b!3521320 m!3971639))

(assert (=> b!3520730 d!1027133))

(declare-fun d!1027147 () Bool)

(assert (=> d!1027147 (= (maxPrefix!2605 thiss!18206 rules!2135 (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) lt!1201943)) (Some!7613 (tuple2!37179 (h!42765 tokens!494) lt!1201943)))))

(declare-fun lt!1202240 () Unit!52994)

(declare-fun choose!20446 (LexerInterface!5065 List!37468 Token!10318 Rule!10752 List!37467 Rule!10752) Unit!52994)

(assert (=> d!1027147 (= lt!1202240 (choose!20446 thiss!18206 rules!2135 (h!42765 tokens!494) (rule!8122 (h!42765 tokens!494)) lt!1201943 (rule!8122 separatorToken!241)))))

(assert (=> d!1027147 (not (isEmpty!21807 rules!2135))))

(assert (=> d!1027147 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!232 thiss!18206 rules!2135 (h!42765 tokens!494) (rule!8122 (h!42765 tokens!494)) lt!1201943 (rule!8122 separatorToken!241)) lt!1202240)))

(declare-fun bs!565306 () Bool)

(assert (= bs!565306 d!1027147))

(assert (=> bs!565306 m!3970673))

(assert (=> bs!565306 m!3970675))

(declare-fun m!3971743 () Bool)

(assert (=> bs!565306 m!3971743))

(declare-fun m!3971745 () Bool)

(assert (=> bs!565306 m!3971745))

(assert (=> bs!565306 m!3970677))

(assert (=> bs!565306 m!3970673))

(assert (=> bs!565306 m!3970675))

(assert (=> bs!565306 m!3971743))

(declare-fun m!3971747 () Bool)

(assert (=> bs!565306 m!3971747))

(assert (=> b!3520730 d!1027147))

(declare-fun b!3521388 () Bool)

(declare-fun e!2179665 () Option!7613)

(assert (=> b!3521388 (= e!2179665 (Some!7612 (h!42764 rules!2135)))))

(declare-fun d!1027173 () Bool)

(declare-fun e!2179667 () Bool)

(assert (=> d!1027173 e!2179667))

(declare-fun res!1420311 () Bool)

(assert (=> d!1027173 (=> res!1420311 e!2179667)))

(declare-fun lt!1202243 () Option!7613)

(assert (=> d!1027173 (= res!1420311 (isEmpty!21814 lt!1202243))))

(assert (=> d!1027173 (= lt!1202243 e!2179665)))

(declare-fun c!606887 () Bool)

(assert (=> d!1027173 (= c!606887 (and ((_ is Cons!37344) rules!2135) (= (tag!6114 (h!42764 rules!2135)) (tag!6114 (rule!8122 separatorToken!241)))))))

(assert (=> d!1027173 (rulesInvariant!4462 thiss!18206 rules!2135)))

(assert (=> d!1027173 (= (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241))) lt!1202243)))

(declare-fun b!3521389 () Bool)

(declare-fun e!2179668 () Bool)

(assert (=> b!3521389 (= e!2179668 (= (tag!6114 (get!11989 lt!1202243)) (tag!6114 (rule!8122 separatorToken!241))))))

(declare-fun b!3521390 () Bool)

(assert (=> b!3521390 (= e!2179667 e!2179668)))

(declare-fun res!1420310 () Bool)

(assert (=> b!3521390 (=> (not res!1420310) (not e!2179668))))

(assert (=> b!3521390 (= res!1420310 (contains!7007 rules!2135 (get!11989 lt!1202243)))))

(declare-fun b!3521391 () Bool)

(declare-fun e!2179666 () Option!7613)

(assert (=> b!3521391 (= e!2179666 None!7612)))

(declare-fun b!3521392 () Bool)

(declare-fun lt!1202242 () Unit!52994)

(declare-fun lt!1202241 () Unit!52994)

(assert (=> b!3521392 (= lt!1202242 lt!1202241)))

(assert (=> b!3521392 (rulesInvariant!4462 thiss!18206 (t!281699 rules!2135))))

(assert (=> b!3521392 (= lt!1202241 (lemmaInvariantOnRulesThenOnTail!462 thiss!18206 (h!42764 rules!2135) (t!281699 rules!2135)))))

(assert (=> b!3521392 (= e!2179666 (getRuleFromTag!1119 thiss!18206 (t!281699 rules!2135) (tag!6114 (rule!8122 separatorToken!241))))))

(declare-fun b!3521393 () Bool)

(assert (=> b!3521393 (= e!2179665 e!2179666)))

(declare-fun c!606886 () Bool)

(assert (=> b!3521393 (= c!606886 (and ((_ is Cons!37344) rules!2135) (not (= (tag!6114 (h!42764 rules!2135)) (tag!6114 (rule!8122 separatorToken!241))))))))

(assert (= (and d!1027173 c!606887) b!3521388))

(assert (= (and d!1027173 (not c!606887)) b!3521393))

(assert (= (and b!3521393 c!606886) b!3521392))

(assert (= (and b!3521393 (not c!606886)) b!3521391))

(assert (= (and d!1027173 (not res!1420311)) b!3521390))

(assert (= (and b!3521390 res!1420310) b!3521389))

(declare-fun m!3971749 () Bool)

(assert (=> d!1027173 m!3971749))

(assert (=> d!1027173 m!3970561))

(declare-fun m!3971751 () Bool)

(assert (=> b!3521389 m!3971751))

(assert (=> b!3521390 m!3971751))

(assert (=> b!3521390 m!3971751))

(declare-fun m!3971753 () Bool)

(assert (=> b!3521390 m!3971753))

(assert (=> b!3521392 m!3971069))

(assert (=> b!3521392 m!3971071))

(declare-fun m!3971755 () Bool)

(assert (=> b!3521392 m!3971755))

(assert (=> b!3520730 d!1027173))

(declare-fun d!1027175 () Bool)

(assert (=> d!1027175 (= (isDefined!5870 lt!1201905) (not (isEmpty!21814 lt!1201905)))))

(declare-fun bs!565307 () Bool)

(assert (= bs!565307 d!1027175))

(declare-fun m!3971757 () Bool)

(assert (=> bs!565307 m!3971757))

(assert (=> b!3520730 d!1027175))

(declare-fun d!1027177 () Bool)

(assert (=> d!1027177 (= (head!7385 lt!1201944) (h!42763 lt!1201944))))

(assert (=> b!3520730 d!1027177))

(declare-fun call!254400 () List!37467)

(declare-fun c!606891 () Bool)

(declare-fun bm!254394 () Bool)

(declare-fun c!606890 () Bool)

(assert (=> bm!254394 (= call!254400 (usedCharacters!710 (ite c!606890 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606891 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))

(declare-fun b!3521394 () Bool)

(declare-fun e!2179670 () List!37467)

(declare-fun call!254402 () List!37467)

(assert (=> b!3521394 (= e!2179670 call!254402)))

(declare-fun bm!254395 () Bool)

(declare-fun call!254399 () List!37467)

(assert (=> bm!254395 (= call!254399 (usedCharacters!710 (ite c!606891 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(declare-fun b!3521395 () Bool)

(assert (=> b!3521395 (= e!2179670 call!254402)))

(declare-fun d!1027179 () Bool)

(declare-fun c!606889 () Bool)

(assert (=> d!1027179 (= c!606889 (or ((_ is EmptyExpr!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) ((_ is EmptyLang!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(declare-fun e!2179669 () List!37467)

(assert (=> d!1027179 (= (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) e!2179669)))

(declare-fun b!3521396 () Bool)

(assert (=> b!3521396 (= e!2179669 Nil!37343)))

(declare-fun bm!254396 () Bool)

(declare-fun call!254401 () List!37467)

(assert (=> bm!254396 (= call!254402 (++!9253 (ite c!606891 call!254399 call!254401) (ite c!606891 call!254401 call!254399)))))

(declare-fun b!3521397 () Bool)

(declare-fun e!2179672 () List!37467)

(assert (=> b!3521397 (= e!2179669 e!2179672)))

(declare-fun c!606888 () Bool)

(assert (=> b!3521397 (= c!606888 ((_ is ElementMatch!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(declare-fun b!3521398 () Bool)

(assert (=> b!3521398 (= c!606890 ((_ is Star!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(declare-fun e!2179671 () List!37467)

(assert (=> b!3521398 (= e!2179672 e!2179671)))

(declare-fun b!3521399 () Bool)

(assert (=> b!3521399 (= e!2179672 (Cons!37343 (c!606752 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) Nil!37343))))

(declare-fun b!3521400 () Bool)

(assert (=> b!3521400 (= e!2179671 call!254400)))

(declare-fun bm!254397 () Bool)

(assert (=> bm!254397 (= call!254401 call!254400)))

(declare-fun b!3521401 () Bool)

(assert (=> b!3521401 (= e!2179671 e!2179670)))

(assert (=> b!3521401 (= c!606891 ((_ is Union!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(assert (= (and d!1027179 c!606889) b!3521396))

(assert (= (and d!1027179 (not c!606889)) b!3521397))

(assert (= (and b!3521397 c!606888) b!3521399))

(assert (= (and b!3521397 (not c!606888)) b!3521398))

(assert (= (and b!3521398 c!606890) b!3521400))

(assert (= (and b!3521398 (not c!606890)) b!3521401))

(assert (= (and b!3521401 c!606891) b!3521395))

(assert (= (and b!3521401 (not c!606891)) b!3521394))

(assert (= (or b!3521395 b!3521394) bm!254397))

(assert (= (or b!3521395 b!3521394) bm!254395))

(assert (= (or b!3521395 b!3521394) bm!254396))

(assert (= (or b!3521400 bm!254397) bm!254394))

(declare-fun m!3971759 () Bool)

(assert (=> bm!254394 m!3971759))

(declare-fun m!3971761 () Bool)

(assert (=> bm!254395 m!3971761))

(declare-fun m!3971763 () Bool)

(assert (=> bm!254396 m!3971763))

(assert (=> b!3520730 d!1027179))

(declare-fun d!1027181 () Bool)

(declare-fun e!2179675 () Bool)

(assert (=> d!1027181 e!2179675))

(declare-fun res!1420313 () Bool)

(assert (=> d!1027181 (=> (not res!1420313) (not e!2179675))))

(declare-fun e!2179673 () Bool)

(assert (=> d!1027181 (= res!1420313 e!2179673)))

(declare-fun c!606892 () Bool)

(declare-fun lt!1202244 () tuple2!37176)

(assert (=> d!1027181 (= c!606892 (> (size!28413 (_1!21722 lt!1202244)) 0))))

(assert (=> d!1027181 (= lt!1202244 (lexTailRecV2!1086 thiss!18206 rules!2135 lt!1201934 (BalanceConc!22269 Empty!11327) lt!1201934 (BalanceConc!22271 Empty!11328)))))

(assert (=> d!1027181 (= (lex!2391 thiss!18206 rules!2135 lt!1201934) lt!1202244)))

(declare-fun b!3521402 () Bool)

(declare-fun res!1420314 () Bool)

(assert (=> b!3521402 (=> (not res!1420314) (not e!2179675))))

(assert (=> b!3521402 (= res!1420314 (= (list!13662 (_1!21722 lt!1202244)) (_1!21726 (lexList!1478 thiss!18206 rules!2135 (list!13659 lt!1201934)))))))

(declare-fun b!3521403 () Bool)

(declare-fun e!2179674 () Bool)

(assert (=> b!3521403 (= e!2179673 e!2179674)))

(declare-fun res!1420312 () Bool)

(assert (=> b!3521403 (= res!1420312 (< (size!28419 (_2!21722 lt!1202244)) (size!28419 lt!1201934)))))

(assert (=> b!3521403 (=> (not res!1420312) (not e!2179674))))

(declare-fun b!3521404 () Bool)

(assert (=> b!3521404 (= e!2179674 (not (isEmpty!21805 (_1!21722 lt!1202244))))))

(declare-fun b!3521405 () Bool)

(assert (=> b!3521405 (= e!2179675 (= (list!13659 (_2!21722 lt!1202244)) (_2!21726 (lexList!1478 thiss!18206 rules!2135 (list!13659 lt!1201934)))))))

(declare-fun b!3521406 () Bool)

(assert (=> b!3521406 (= e!2179673 (= (_2!21722 lt!1202244) lt!1201934))))

(assert (= (and d!1027181 c!606892) b!3521403))

(assert (= (and d!1027181 (not c!606892)) b!3521406))

(assert (= (and b!3521403 res!1420312) b!3521404))

(assert (= (and d!1027181 res!1420313) b!3521402))

(assert (= (and b!3521402 res!1420314) b!3521405))

(declare-fun m!3971765 () Bool)

(assert (=> b!3521404 m!3971765))

(declare-fun m!3971767 () Bool)

(assert (=> b!3521405 m!3971767))

(declare-fun m!3971769 () Bool)

(assert (=> b!3521405 m!3971769))

(assert (=> b!3521405 m!3971769))

(declare-fun m!3971771 () Bool)

(assert (=> b!3521405 m!3971771))

(declare-fun m!3971773 () Bool)

(assert (=> b!3521402 m!3971773))

(assert (=> b!3521402 m!3971769))

(assert (=> b!3521402 m!3971769))

(assert (=> b!3521402 m!3971771))

(declare-fun m!3971775 () Bool)

(assert (=> d!1027181 m!3971775))

(declare-fun m!3971777 () Bool)

(assert (=> d!1027181 m!3971777))

(declare-fun m!3971779 () Bool)

(assert (=> b!3521403 m!3971779))

(declare-fun m!3971781 () Bool)

(assert (=> b!3521403 m!3971781))

(assert (=> b!3520730 d!1027181))

(declare-fun d!1027183 () Bool)

(declare-fun dynLambda!15912 (Int Token!10318) Bool)

(assert (=> d!1027183 (dynLambda!15912 lambda!122743 (h!42765 (t!281700 tokens!494)))))

(declare-fun lt!1202255 () Unit!52994)

(declare-fun choose!20447 (List!37469 Int Token!10318) Unit!52994)

(assert (=> d!1027183 (= lt!1202255 (choose!20447 tokens!494 lambda!122743 (h!42765 (t!281700 tokens!494))))))

(declare-fun e!2179689 () Bool)

(assert (=> d!1027183 e!2179689))

(declare-fun res!1420325 () Bool)

(assert (=> d!1027183 (=> (not res!1420325) (not e!2179689))))

(assert (=> d!1027183 (= res!1420325 (forall!8029 tokens!494 lambda!122743))))

(assert (=> d!1027183 (= (forallContained!1423 tokens!494 lambda!122743 (h!42765 (t!281700 tokens!494))) lt!1202255)))

(declare-fun b!3521423 () Bool)

(declare-fun contains!7008 (List!37469 Token!10318) Bool)

(assert (=> b!3521423 (= e!2179689 (contains!7008 tokens!494 (h!42765 (t!281700 tokens!494))))))

(assert (= (and d!1027183 res!1420325) b!3521423))

(declare-fun b_lambda!102771 () Bool)

(assert (=> (not b_lambda!102771) (not d!1027183)))

(declare-fun m!3971799 () Bool)

(assert (=> d!1027183 m!3971799))

(declare-fun m!3971803 () Bool)

(assert (=> d!1027183 m!3971803))

(declare-fun m!3971807 () Bool)

(assert (=> d!1027183 m!3971807))

(declare-fun m!3971809 () Bool)

(assert (=> b!3521423 m!3971809))

(assert (=> b!3520730 d!1027183))

(declare-fun d!1027195 () Bool)

(declare-fun lt!1202260 () Int)

(assert (=> d!1027195 (>= lt!1202260 0)))

(declare-fun e!2179693 () Int)

(assert (=> d!1027195 (= lt!1202260 e!2179693)))

(declare-fun c!606898 () Bool)

(assert (=> d!1027195 (= c!606898 ((_ is Nil!37343) lt!1201911))))

(assert (=> d!1027195 (= (size!28412 lt!1201911) lt!1202260)))

(declare-fun b!3521429 () Bool)

(assert (=> b!3521429 (= e!2179693 0)))

(declare-fun b!3521430 () Bool)

(assert (=> b!3521430 (= e!2179693 (+ 1 (size!28412 (t!281698 lt!1201911))))))

(assert (= (and d!1027195 c!606898) b!3521429))

(assert (= (and d!1027195 (not c!606898)) b!3521430))

(declare-fun m!3971851 () Bool)

(assert (=> b!3521430 m!3971851))

(assert (=> b!3520730 d!1027195))

(declare-fun d!1027203 () Bool)

(declare-fun lt!1202261 () Bool)

(assert (=> d!1027203 (= lt!1202261 (select (content!5263 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) lt!1201942))))

(declare-fun e!2179694 () Bool)

(assert (=> d!1027203 (= lt!1202261 e!2179694)))

(declare-fun res!1420327 () Bool)

(assert (=> d!1027203 (=> (not res!1420327) (not e!2179694))))

(assert (=> d!1027203 (= res!1420327 ((_ is Cons!37343) (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(assert (=> d!1027203 (= (contains!7004 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) lt!1201942) lt!1202261)))

(declare-fun b!3521431 () Bool)

(declare-fun e!2179695 () Bool)

(assert (=> b!3521431 (= e!2179694 e!2179695)))

(declare-fun res!1420328 () Bool)

(assert (=> b!3521431 (=> res!1420328 e!2179695)))

(assert (=> b!3521431 (= res!1420328 (= (h!42763 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) lt!1201942))))

(declare-fun b!3521432 () Bool)

(assert (=> b!3521432 (= e!2179695 (contains!7004 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) lt!1201942))))

(assert (= (and d!1027203 res!1420327) b!3521431))

(assert (= (and b!3521431 (not res!1420328)) b!3521432))

(assert (=> d!1027203 m!3970603))

(declare-fun m!3971853 () Bool)

(assert (=> d!1027203 m!3971853))

(declare-fun m!3971855 () Bool)

(assert (=> d!1027203 m!3971855))

(declare-fun m!3971857 () Bool)

(assert (=> b!3521432 m!3971857))

(assert (=> b!3520730 d!1027203))

(declare-fun d!1027205 () Bool)

(declare-fun e!2179698 () Bool)

(assert (=> d!1027205 e!2179698))

(declare-fun res!1420329 () Bool)

(assert (=> d!1027205 (=> (not res!1420329) (not e!2179698))))

(declare-fun lt!1202262 () BalanceConc!22270)

(assert (=> d!1027205 (= res!1420329 (= (list!13662 lt!1202262) (Cons!37345 (h!42765 (t!281700 tokens!494)) Nil!37345)))))

(assert (=> d!1027205 (= lt!1202262 (singleton!1150 (h!42765 (t!281700 tokens!494))))))

(assert (=> d!1027205 (= (singletonSeq!2572 (h!42765 (t!281700 tokens!494))) lt!1202262)))

(declare-fun b!3521437 () Bool)

(assert (=> b!3521437 (= e!2179698 (isBalanced!3457 (c!606754 lt!1202262)))))

(assert (= (and d!1027205 res!1420329) b!3521437))

(declare-fun m!3971859 () Bool)

(assert (=> d!1027205 m!3971859))

(declare-fun m!3971861 () Bool)

(assert (=> d!1027205 m!3971861))

(declare-fun m!3971863 () Bool)

(assert (=> b!3521437 m!3971863))

(assert (=> b!3520730 d!1027205))

(declare-fun d!1027207 () Bool)

(declare-fun lt!1202266 () BalanceConc!22268)

(assert (=> d!1027207 (= (list!13659 lt!1202266) (printListTailRec!718 thiss!18206 (dropList!1235 lt!1201906 0) (list!13659 (BalanceConc!22269 Empty!11327))))))

(declare-fun e!2179699 () BalanceConc!22268)

(assert (=> d!1027207 (= lt!1202266 e!2179699)))

(declare-fun c!606901 () Bool)

(assert (=> d!1027207 (= c!606901 (>= 0 (size!28413 lt!1201906)))))

(declare-fun e!2179700 () Bool)

(assert (=> d!1027207 e!2179700))

(declare-fun res!1420330 () Bool)

(assert (=> d!1027207 (=> (not res!1420330) (not e!2179700))))

(assert (=> d!1027207 (= res!1420330 (>= 0 0))))

(assert (=> d!1027207 (= (printTailRec!1560 thiss!18206 lt!1201906 0 (BalanceConc!22269 Empty!11327)) lt!1202266)))

(declare-fun b!3521438 () Bool)

(assert (=> b!3521438 (= e!2179700 (<= 0 (size!28413 lt!1201906)))))

(declare-fun b!3521439 () Bool)

(assert (=> b!3521439 (= e!2179699 (BalanceConc!22269 Empty!11327))))

(declare-fun b!3521440 () Bool)

(assert (=> b!3521440 (= e!2179699 (printTailRec!1560 thiss!18206 lt!1201906 (+ 0 1) (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201906 0)))))))

(declare-fun lt!1202265 () List!37469)

(assert (=> b!3521440 (= lt!1202265 (list!13662 lt!1201906))))

(declare-fun lt!1202267 () Unit!52994)

(assert (=> b!3521440 (= lt!1202267 (lemmaDropApply!1193 lt!1202265 0))))

(assert (=> b!3521440 (= (head!7387 (drop!2049 lt!1202265 0)) (apply!8898 lt!1202265 0))))

(declare-fun lt!1202264 () Unit!52994)

(assert (=> b!3521440 (= lt!1202264 lt!1202267)))

(declare-fun lt!1202268 () List!37469)

(assert (=> b!3521440 (= lt!1202268 (list!13662 lt!1201906))))

(declare-fun lt!1202263 () Unit!52994)

(assert (=> b!3521440 (= lt!1202263 (lemmaDropTail!1077 lt!1202268 0))))

(assert (=> b!3521440 (= (tail!5493 (drop!2049 lt!1202268 0)) (drop!2049 lt!1202268 (+ 0 1)))))

(declare-fun lt!1202269 () Unit!52994)

(assert (=> b!3521440 (= lt!1202269 lt!1202263)))

(assert (= (and d!1027207 res!1420330) b!3521438))

(assert (= (and d!1027207 c!606901) b!3521439))

(assert (= (and d!1027207 (not c!606901)) b!3521440))

(assert (=> d!1027207 m!3971545))

(declare-fun m!3971871 () Bool)

(assert (=> d!1027207 m!3971871))

(assert (=> d!1027207 m!3971545))

(declare-fun m!3971873 () Bool)

(assert (=> d!1027207 m!3971873))

(declare-fun m!3971877 () Bool)

(assert (=> d!1027207 m!3971877))

(declare-fun m!3971879 () Bool)

(assert (=> d!1027207 m!3971879))

(assert (=> d!1027207 m!3971871))

(assert (=> b!3521438 m!3971877))

(declare-fun m!3971881 () Bool)

(assert (=> b!3521440 m!3971881))

(declare-fun m!3971883 () Bool)

(assert (=> b!3521440 m!3971883))

(declare-fun m!3971885 () Bool)

(assert (=> b!3521440 m!3971885))

(declare-fun m!3971887 () Bool)

(assert (=> b!3521440 m!3971887))

(declare-fun m!3971889 () Bool)

(assert (=> b!3521440 m!3971889))

(declare-fun m!3971891 () Bool)

(assert (=> b!3521440 m!3971891))

(declare-fun m!3971893 () Bool)

(assert (=> b!3521440 m!3971893))

(declare-fun m!3971895 () Bool)

(assert (=> b!3521440 m!3971895))

(assert (=> b!3521440 m!3971887))

(assert (=> b!3521440 m!3971893))

(assert (=> b!3521440 m!3971889))

(assert (=> b!3521440 m!3971883))

(declare-fun m!3971897 () Bool)

(assert (=> b!3521440 m!3971897))

(declare-fun m!3971899 () Bool)

(assert (=> b!3521440 m!3971899))

(declare-fun m!3971901 () Bool)

(assert (=> b!3521440 m!3971901))

(assert (=> b!3521440 m!3971897))

(declare-fun m!3971903 () Bool)

(assert (=> b!3521440 m!3971903))

(assert (=> b!3521440 m!3971111))

(assert (=> b!3520730 d!1027207))

(declare-fun d!1027211 () Bool)

(assert (=> d!1027211 (= (maxPrefixOneRule!1772 thiss!18206 (rule!8122 (h!42765 tokens!494)) lt!1201911) (Some!7613 (tuple2!37179 (Token!10319 (apply!8897 (transformation!5476 (rule!8122 (h!42765 tokens!494))) (seqFromList!4006 lt!1201911)) (rule!8122 (h!42765 tokens!494)) (size!28412 lt!1201911) lt!1201911) Nil!37343)))))

(declare-fun lt!1202275 () Unit!52994)

(declare-fun choose!20448 (LexerInterface!5065 List!37468 List!37467 List!37467 List!37467 Rule!10752) Unit!52994)

(assert (=> d!1027211 (= lt!1202275 (choose!20448 thiss!18206 rules!2135 lt!1201911 lt!1201911 Nil!37343 (rule!8122 (h!42765 tokens!494))))))

(assert (=> d!1027211 (not (isEmpty!21807 rules!2135))))

(assert (=> d!1027211 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!865 thiss!18206 rules!2135 lt!1201911 lt!1201911 Nil!37343 (rule!8122 (h!42765 tokens!494))) lt!1202275)))

(declare-fun bs!565310 () Bool)

(assert (= bs!565310 d!1027211))

(assert (=> bs!565310 m!3970641))

(declare-fun m!3971953 () Bool)

(assert (=> bs!565310 m!3971953))

(assert (=> bs!565310 m!3970683))

(declare-fun m!3971955 () Bool)

(assert (=> bs!565310 m!3971955))

(assert (=> bs!565310 m!3970677))

(assert (=> bs!565310 m!3970615))

(assert (=> bs!565310 m!3970683))

(assert (=> b!3520730 d!1027211))

(declare-fun d!1027229 () Bool)

(assert (=> d!1027229 (= (maxPrefixOneRule!1772 thiss!18206 (rule!8122 (h!42765 (t!281700 tokens!494))) lt!1201914) (Some!7613 (tuple2!37179 (Token!10319 (apply!8897 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) (seqFromList!4006 lt!1201914)) (rule!8122 (h!42765 (t!281700 tokens!494))) (size!28412 lt!1201914) lt!1201914) Nil!37343)))))

(declare-fun lt!1202277 () Unit!52994)

(assert (=> d!1027229 (= lt!1202277 (choose!20448 thiss!18206 rules!2135 lt!1201914 lt!1201914 Nil!37343 (rule!8122 (h!42765 (t!281700 tokens!494)))))))

(assert (=> d!1027229 (not (isEmpty!21807 rules!2135))))

(assert (=> d!1027229 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!865 thiss!18206 rules!2135 lt!1201914 lt!1201914 Nil!37343 (rule!8122 (h!42765 (t!281700 tokens!494)))) lt!1202277)))

(declare-fun bs!565312 () Bool)

(assert (= bs!565312 d!1027229))

(assert (=> bs!565312 m!3970651))

(declare-fun m!3971959 () Bool)

(assert (=> bs!565312 m!3971959))

(assert (=> bs!565312 m!3970589))

(assert (=> bs!565312 m!3970591))

(assert (=> bs!565312 m!3970677))

(assert (=> bs!565312 m!3970609))

(assert (=> bs!565312 m!3970589))

(assert (=> b!3520730 d!1027229))

(declare-fun b!3521489 () Bool)

(declare-fun res!1420353 () Bool)

(declare-fun e!2179731 () Bool)

(assert (=> b!3521489 (=> (not res!1420353) (not e!2179731))))

(declare-fun lt!1202279 () Option!7614)

(assert (=> b!3521489 (= res!1420353 (= (++!9253 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279)))) (_2!21723 (get!11991 lt!1202279))) lt!1201911))))

(declare-fun b!3521490 () Bool)

(declare-fun e!2179732 () Bool)

(assert (=> b!3521490 (= e!2179732 e!2179731)))

(declare-fun res!1420347 () Bool)

(assert (=> b!3521490 (=> (not res!1420347) (not e!2179731))))

(assert (=> b!3521490 (= res!1420347 (matchR!4819 (regex!5476 (rule!8122 (h!42765 tokens!494))) (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279))))))))

(declare-fun b!3521491 () Bool)

(declare-fun e!2179730 () Option!7614)

(assert (=> b!3521491 (= e!2179730 None!7613)))

(declare-fun b!3521492 () Bool)

(declare-fun res!1420349 () Bool)

(assert (=> b!3521492 (=> (not res!1420349) (not e!2179731))))

(assert (=> b!3521492 (= res!1420349 (= (value!176526 (_1!21723 (get!11991 lt!1202279))) (apply!8897 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279)))) (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202279)))))))))

(declare-fun b!3521493 () Bool)

(declare-fun lt!1202282 () tuple2!37186)

(assert (=> b!3521493 (= e!2179730 (Some!7613 (tuple2!37179 (Token!10319 (apply!8897 (transformation!5476 (rule!8122 (h!42765 tokens!494))) (seqFromList!4006 (_1!21727 lt!1202282))) (rule!8122 (h!42765 tokens!494)) (size!28419 (seqFromList!4006 (_1!21727 lt!1202282))) (_1!21727 lt!1202282)) (_2!21727 lt!1202282))))))

(declare-fun lt!1202278 () Unit!52994)

(assert (=> b!3521493 (= lt!1202278 (longestMatchIsAcceptedByMatchOrIsEmpty!912 (regex!5476 (rule!8122 (h!42765 tokens!494))) lt!1201911))))

(declare-fun res!1420348 () Bool)

(assert (=> b!3521493 (= res!1420348 (isEmpty!21812 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 (size!28412 Nil!37343) lt!1201911 lt!1201911 (size!28412 lt!1201911)))))))

(declare-fun e!2179733 () Bool)

(assert (=> b!3521493 (=> res!1420348 e!2179733)))

(assert (=> b!3521493 e!2179733))

(declare-fun lt!1202281 () Unit!52994)

(assert (=> b!3521493 (= lt!1202281 lt!1202278)))

(declare-fun lt!1202280 () Unit!52994)

(assert (=> b!3521493 (= lt!1202280 (lemmaSemiInverse!1291 (transformation!5476 (rule!8122 (h!42765 tokens!494))) (seqFromList!4006 (_1!21727 lt!1202282))))))

(declare-fun b!3521494 () Bool)

(declare-fun res!1420352 () Bool)

(assert (=> b!3521494 (=> (not res!1420352) (not e!2179731))))

(assert (=> b!3521494 (= res!1420352 (< (size!28412 (_2!21723 (get!11991 lt!1202279))) (size!28412 lt!1201911)))))

(declare-fun d!1027233 () Bool)

(assert (=> d!1027233 e!2179732))

(declare-fun res!1420350 () Bool)

(assert (=> d!1027233 (=> res!1420350 e!2179732)))

(assert (=> d!1027233 (= res!1420350 (isEmpty!21815 lt!1202279))))

(assert (=> d!1027233 (= lt!1202279 e!2179730)))

(declare-fun c!606918 () Bool)

(assert (=> d!1027233 (= c!606918 (isEmpty!21812 (_1!21727 lt!1202282)))))

(assert (=> d!1027233 (= lt!1202282 (findLongestMatch!854 (regex!5476 (rule!8122 (h!42765 tokens!494))) lt!1201911))))

(assert (=> d!1027233 (ruleValid!1772 thiss!18206 (rule!8122 (h!42765 tokens!494)))))

(assert (=> d!1027233 (= (maxPrefixOneRule!1772 thiss!18206 (rule!8122 (h!42765 tokens!494)) lt!1201911) lt!1202279)))

(declare-fun b!3521495 () Bool)

(declare-fun res!1420351 () Bool)

(assert (=> b!3521495 (=> (not res!1420351) (not e!2179731))))

(assert (=> b!3521495 (= res!1420351 (= (rule!8122 (_1!21723 (get!11991 lt!1202279))) (rule!8122 (h!42765 tokens!494))))))

(declare-fun b!3521496 () Bool)

(assert (=> b!3521496 (= e!2179731 (= (size!28411 (_1!21723 (get!11991 lt!1202279))) (size!28412 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202279))))))))

(declare-fun b!3521497 () Bool)

(assert (=> b!3521497 (= e!2179733 (matchR!4819 (regex!5476 (rule!8122 (h!42765 tokens!494))) (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 (size!28412 Nil!37343) lt!1201911 lt!1201911 (size!28412 lt!1201911)))))))

(assert (= (and d!1027233 c!606918) b!3521491))

(assert (= (and d!1027233 (not c!606918)) b!3521493))

(assert (= (and b!3521493 (not res!1420348)) b!3521497))

(assert (= (and d!1027233 (not res!1420350)) b!3521490))

(assert (= (and b!3521490 res!1420347) b!3521489))

(assert (= (and b!3521489 res!1420353) b!3521494))

(assert (= (and b!3521494 res!1420352) b!3521495))

(assert (= (and b!3521495 res!1420351) b!3521492))

(assert (= (and b!3521492 res!1420349) b!3521496))

(declare-fun m!3971981 () Bool)

(assert (=> b!3521494 m!3971981))

(declare-fun m!3971983 () Bool)

(assert (=> b!3521494 m!3971983))

(assert (=> b!3521494 m!3970641))

(assert (=> b!3521490 m!3971981))

(declare-fun m!3971989 () Bool)

(assert (=> b!3521490 m!3971989))

(assert (=> b!3521490 m!3971989))

(declare-fun m!3971991 () Bool)

(assert (=> b!3521490 m!3971991))

(assert (=> b!3521490 m!3971991))

(declare-fun m!3971993 () Bool)

(assert (=> b!3521490 m!3971993))

(assert (=> b!3521495 m!3971981))

(assert (=> b!3521497 m!3971607))

(assert (=> b!3521497 m!3970641))

(assert (=> b!3521497 m!3971607))

(assert (=> b!3521497 m!3970641))

(declare-fun m!3971995 () Bool)

(assert (=> b!3521497 m!3971995))

(declare-fun m!3971997 () Bool)

(assert (=> b!3521497 m!3971997))

(assert (=> b!3521489 m!3971981))

(assert (=> b!3521489 m!3971989))

(assert (=> b!3521489 m!3971989))

(assert (=> b!3521489 m!3971991))

(assert (=> b!3521489 m!3971991))

(declare-fun m!3971999 () Bool)

(assert (=> b!3521489 m!3971999))

(declare-fun m!3972001 () Bool)

(assert (=> d!1027233 m!3972001))

(declare-fun m!3972003 () Bool)

(assert (=> d!1027233 m!3972003))

(declare-fun m!3972005 () Bool)

(assert (=> d!1027233 m!3972005))

(declare-fun m!3972007 () Bool)

(assert (=> d!1027233 m!3972007))

(declare-fun m!3972009 () Bool)

(assert (=> b!3521493 m!3972009))

(declare-fun m!3972011 () Bool)

(assert (=> b!3521493 m!3972011))

(assert (=> b!3521493 m!3971607))

(assert (=> b!3521493 m!3970641))

(assert (=> b!3521493 m!3971995))

(declare-fun m!3972013 () Bool)

(assert (=> b!3521493 m!3972013))

(assert (=> b!3521493 m!3972009))

(declare-fun m!3972015 () Bool)

(assert (=> b!3521493 m!3972015))

(declare-fun m!3972017 () Bool)

(assert (=> b!3521493 m!3972017))

(assert (=> b!3521493 m!3972009))

(declare-fun m!3972019 () Bool)

(assert (=> b!3521493 m!3972019))

(assert (=> b!3521493 m!3970641))

(assert (=> b!3521493 m!3972009))

(assert (=> b!3521493 m!3971607))

(assert (=> b!3521496 m!3971981))

(declare-fun m!3972021 () Bool)

(assert (=> b!3521496 m!3972021))

(assert (=> b!3521492 m!3971981))

(declare-fun m!3972023 () Bool)

(assert (=> b!3521492 m!3972023))

(assert (=> b!3521492 m!3972023))

(declare-fun m!3972025 () Bool)

(assert (=> b!3521492 m!3972025))

(assert (=> b!3520730 d!1027233))

(declare-fun d!1027241 () Bool)

(declare-fun lt!1202284 () Int)

(assert (=> d!1027241 (>= lt!1202284 0)))

(declare-fun e!2179739 () Int)

(assert (=> d!1027241 (= lt!1202284 e!2179739)))

(declare-fun c!606920 () Bool)

(assert (=> d!1027241 (= c!606920 ((_ is Nil!37343) lt!1201914))))

(assert (=> d!1027241 (= (size!28412 lt!1201914) lt!1202284)))

(declare-fun b!3521515 () Bool)

(assert (=> b!3521515 (= e!2179739 0)))

(declare-fun b!3521516 () Bool)

(assert (=> b!3521516 (= e!2179739 (+ 1 (size!28412 (t!281698 lt!1201914))))))

(assert (= (and d!1027241 c!606920) b!3521515))

(assert (= (and d!1027241 (not c!606920)) b!3521516))

(declare-fun m!3972027 () Bool)

(assert (=> b!3521516 m!3972027))

(assert (=> b!3520730 d!1027241))

(declare-fun b!3521521 () Bool)

(declare-fun e!2179742 () Option!7613)

(assert (=> b!3521521 (= e!2179742 (Some!7612 (h!42764 rules!2135)))))

(declare-fun d!1027243 () Bool)

(declare-fun e!2179744 () Bool)

(assert (=> d!1027243 e!2179744))

(declare-fun res!1420355 () Bool)

(assert (=> d!1027243 (=> res!1420355 e!2179744)))

(declare-fun lt!1202287 () Option!7613)

(assert (=> d!1027243 (= res!1420355 (isEmpty!21814 lt!1202287))))

(assert (=> d!1027243 (= lt!1202287 e!2179742)))

(declare-fun c!606922 () Bool)

(assert (=> d!1027243 (= c!606922 (and ((_ is Cons!37344) rules!2135) (= (tag!6114 (h!42764 rules!2135)) (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(assert (=> d!1027243 (rulesInvariant!4462 thiss!18206 rules!2135)))

(assert (=> d!1027243 (= (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))) lt!1202287)))

(declare-fun b!3521522 () Bool)

(declare-fun e!2179745 () Bool)

(assert (=> b!3521522 (= e!2179745 (= (tag!6114 (get!11989 lt!1202287)) (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(declare-fun b!3521523 () Bool)

(assert (=> b!3521523 (= e!2179744 e!2179745)))

(declare-fun res!1420354 () Bool)

(assert (=> b!3521523 (=> (not res!1420354) (not e!2179745))))

(assert (=> b!3521523 (= res!1420354 (contains!7007 rules!2135 (get!11989 lt!1202287)))))

(declare-fun b!3521524 () Bool)

(declare-fun e!2179743 () Option!7613)

(assert (=> b!3521524 (= e!2179743 None!7612)))

(declare-fun b!3521525 () Bool)

(declare-fun lt!1202286 () Unit!52994)

(declare-fun lt!1202285 () Unit!52994)

(assert (=> b!3521525 (= lt!1202286 lt!1202285)))

(assert (=> b!3521525 (rulesInvariant!4462 thiss!18206 (t!281699 rules!2135))))

(assert (=> b!3521525 (= lt!1202285 (lemmaInvariantOnRulesThenOnTail!462 thiss!18206 (h!42764 rules!2135) (t!281699 rules!2135)))))

(assert (=> b!3521525 (= e!2179743 (getRuleFromTag!1119 thiss!18206 (t!281699 rules!2135) (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(declare-fun b!3521526 () Bool)

(assert (=> b!3521526 (= e!2179742 e!2179743)))

(declare-fun c!606921 () Bool)

(assert (=> b!3521526 (= c!606921 (and ((_ is Cons!37344) rules!2135) (not (= (tag!6114 (h!42764 rules!2135)) (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(assert (= (and d!1027243 c!606922) b!3521521))

(assert (= (and d!1027243 (not c!606922)) b!3521526))

(assert (= (and b!3521526 c!606921) b!3521525))

(assert (= (and b!3521526 (not c!606921)) b!3521524))

(assert (= (and d!1027243 (not res!1420355)) b!3521523))

(assert (= (and b!3521523 res!1420354) b!3521522))

(declare-fun m!3972029 () Bool)

(assert (=> d!1027243 m!3972029))

(assert (=> d!1027243 m!3970561))

(declare-fun m!3972031 () Bool)

(assert (=> b!3521522 m!3972031))

(assert (=> b!3521523 m!3972031))

(assert (=> b!3521523 m!3972031))

(declare-fun m!3972033 () Bool)

(assert (=> b!3521523 m!3972033))

(assert (=> b!3521525 m!3971069))

(assert (=> b!3521525 m!3971071))

(declare-fun m!3972035 () Bool)

(assert (=> b!3521525 m!3972035))

(assert (=> b!3520730 d!1027243))

(declare-fun d!1027245 () Bool)

(declare-fun lt!1202288 () BalanceConc!22268)

(assert (=> d!1027245 (= (list!13659 lt!1202288) (printList!1613 thiss!18206 (list!13662 lt!1201912)))))

(assert (=> d!1027245 (= lt!1202288 (printTailRec!1560 thiss!18206 lt!1201912 0 (BalanceConc!22269 Empty!11327)))))

(assert (=> d!1027245 (= (print!2130 thiss!18206 lt!1201912) lt!1202288)))

(declare-fun bs!565314 () Bool)

(assert (= bs!565314 d!1027245))

(declare-fun m!3972037 () Bool)

(assert (=> bs!565314 m!3972037))

(assert (=> bs!565314 m!3971579))

(assert (=> bs!565314 m!3971579))

(declare-fun m!3972039 () Bool)

(assert (=> bs!565314 m!3972039))

(assert (=> bs!565314 m!3970633))

(assert (=> b!3520730 d!1027245))

(declare-fun d!1027247 () Bool)

(declare-fun fromListB!1842 (List!37467) BalanceConc!22268)

(assert (=> d!1027247 (= (seqFromList!4006 lt!1201914) (fromListB!1842 lt!1201914))))

(declare-fun bs!565315 () Bool)

(assert (= bs!565315 d!1027247))

(declare-fun m!3972043 () Bool)

(assert (=> bs!565315 m!3972043))

(assert (=> b!3520730 d!1027247))

(declare-fun lt!1202291 () Bool)

(declare-fun d!1027249 () Bool)

(declare-fun isEmpty!21818 (List!37469) Bool)

(assert (=> d!1027249 (= lt!1202291 (isEmpty!21818 (list!13662 (_1!21722 (lex!2391 thiss!18206 rules!2135 lt!1201929)))))))

(declare-fun isEmpty!21819 (Conc!11328) Bool)

(assert (=> d!1027249 (= lt!1202291 (isEmpty!21819 (c!606754 (_1!21722 (lex!2391 thiss!18206 rules!2135 lt!1201929)))))))

(assert (=> d!1027249 (= (isEmpty!21805 (_1!21722 (lex!2391 thiss!18206 rules!2135 lt!1201929))) lt!1202291)))

(declare-fun bs!565316 () Bool)

(assert (= bs!565316 d!1027249))

(declare-fun m!3972047 () Bool)

(assert (=> bs!565316 m!3972047))

(assert (=> bs!565316 m!3972047))

(declare-fun m!3972049 () Bool)

(assert (=> bs!565316 m!3972049))

(declare-fun m!3972051 () Bool)

(assert (=> bs!565316 m!3972051))

(assert (=> b!3520708 d!1027249))

(declare-fun d!1027251 () Bool)

(declare-fun e!2179774 () Bool)

(assert (=> d!1027251 e!2179774))

(declare-fun res!1420357 () Bool)

(assert (=> d!1027251 (=> (not res!1420357) (not e!2179774))))

(declare-fun e!2179772 () Bool)

(assert (=> d!1027251 (= res!1420357 e!2179772)))

(declare-fun c!606923 () Bool)

(declare-fun lt!1202292 () tuple2!37176)

(assert (=> d!1027251 (= c!606923 (> (size!28413 (_1!21722 lt!1202292)) 0))))

(assert (=> d!1027251 (= lt!1202292 (lexTailRecV2!1086 thiss!18206 rules!2135 lt!1201929 (BalanceConc!22269 Empty!11327) lt!1201929 (BalanceConc!22271 Empty!11328)))))

(assert (=> d!1027251 (= (lex!2391 thiss!18206 rules!2135 lt!1201929) lt!1202292)))

(declare-fun b!3521558 () Bool)

(declare-fun res!1420358 () Bool)

(assert (=> b!3521558 (=> (not res!1420358) (not e!2179774))))

(assert (=> b!3521558 (= res!1420358 (= (list!13662 (_1!21722 lt!1202292)) (_1!21726 (lexList!1478 thiss!18206 rules!2135 (list!13659 lt!1201929)))))))

(declare-fun b!3521559 () Bool)

(declare-fun e!2179773 () Bool)

(assert (=> b!3521559 (= e!2179772 e!2179773)))

(declare-fun res!1420356 () Bool)

(assert (=> b!3521559 (= res!1420356 (< (size!28419 (_2!21722 lt!1202292)) (size!28419 lt!1201929)))))

(assert (=> b!3521559 (=> (not res!1420356) (not e!2179773))))

(declare-fun b!3521560 () Bool)

(assert (=> b!3521560 (= e!2179773 (not (isEmpty!21805 (_1!21722 lt!1202292))))))

(declare-fun b!3521561 () Bool)

(assert (=> b!3521561 (= e!2179774 (= (list!13659 (_2!21722 lt!1202292)) (_2!21726 (lexList!1478 thiss!18206 rules!2135 (list!13659 lt!1201929)))))))

(declare-fun b!3521562 () Bool)

(assert (=> b!3521562 (= e!2179772 (= (_2!21722 lt!1202292) lt!1201929))))

(assert (= (and d!1027251 c!606923) b!3521559))

(assert (= (and d!1027251 (not c!606923)) b!3521562))

(assert (= (and b!3521559 res!1420356) b!3521560))

(assert (= (and d!1027251 res!1420357) b!3521558))

(assert (= (and b!3521558 res!1420358) b!3521561))

(declare-fun m!3972053 () Bool)

(assert (=> b!3521560 m!3972053))

(declare-fun m!3972055 () Bool)

(assert (=> b!3521561 m!3972055))

(declare-fun m!3972057 () Bool)

(assert (=> b!3521561 m!3972057))

(assert (=> b!3521561 m!3972057))

(declare-fun m!3972059 () Bool)

(assert (=> b!3521561 m!3972059))

(declare-fun m!3972061 () Bool)

(assert (=> b!3521558 m!3972061))

(assert (=> b!3521558 m!3972057))

(assert (=> b!3521558 m!3972057))

(assert (=> b!3521558 m!3972059))

(declare-fun m!3972063 () Bool)

(assert (=> d!1027251 m!3972063))

(declare-fun m!3972065 () Bool)

(assert (=> d!1027251 m!3972065))

(declare-fun m!3972067 () Bool)

(assert (=> b!3521559 m!3972067))

(declare-fun m!3972069 () Bool)

(assert (=> b!3521559 m!3972069))

(assert (=> b!3520708 d!1027251))

(declare-fun d!1027253 () Bool)

(assert (=> d!1027253 (= (seqFromList!4006 lt!1201911) (fromListB!1842 lt!1201911))))

(declare-fun bs!565317 () Bool)

(assert (= bs!565317 d!1027253))

(declare-fun m!3972071 () Bool)

(assert (=> bs!565317 m!3972071))

(assert (=> b!3520708 d!1027253))

(declare-fun d!1027255 () Bool)

(declare-fun list!13663 (Conc!11327) List!37467)

(assert (=> d!1027255 (= (list!13659 lt!1201924) (list!13663 (c!606753 lt!1201924)))))

(declare-fun bs!565318 () Bool)

(assert (= bs!565318 d!1027255))

(declare-fun m!3972073 () Bool)

(assert (=> bs!565318 m!3972073))

(assert (=> b!3520729 d!1027255))

(declare-fun d!1027257 () Bool)

(declare-fun lt!1202293 () BalanceConc!22268)

(assert (=> d!1027257 (= (list!13659 lt!1202293) (printList!1613 thiss!18206 (list!13662 lt!1201920)))))

(assert (=> d!1027257 (= lt!1202293 (printTailRec!1560 thiss!18206 lt!1201920 0 (BalanceConc!22269 Empty!11327)))))

(assert (=> d!1027257 (= (print!2130 thiss!18206 lt!1201920) lt!1202293)))

(declare-fun bs!565319 () Bool)

(assert (= bs!565319 d!1027257))

(declare-fun m!3972075 () Bool)

(assert (=> bs!565319 m!3972075))

(declare-fun m!3972077 () Bool)

(assert (=> bs!565319 m!3972077))

(assert (=> bs!565319 m!3972077))

(declare-fun m!3972079 () Bool)

(assert (=> bs!565319 m!3972079))

(assert (=> bs!565319 m!3970687))

(assert (=> b!3520729 d!1027257))

(declare-fun d!1027259 () Bool)

(declare-fun lt!1202297 () BalanceConc!22268)

(assert (=> d!1027259 (= (list!13659 lt!1202297) (printListTailRec!718 thiss!18206 (dropList!1235 lt!1201920 0) (list!13659 (BalanceConc!22269 Empty!11327))))))

(declare-fun e!2179785 () BalanceConc!22268)

(assert (=> d!1027259 (= lt!1202297 e!2179785)))

(declare-fun c!606924 () Bool)

(assert (=> d!1027259 (= c!606924 (>= 0 (size!28413 lt!1201920)))))

(declare-fun e!2179786 () Bool)

(assert (=> d!1027259 e!2179786))

(declare-fun res!1420359 () Bool)

(assert (=> d!1027259 (=> (not res!1420359) (not e!2179786))))

(assert (=> d!1027259 (= res!1420359 (>= 0 0))))

(assert (=> d!1027259 (= (printTailRec!1560 thiss!18206 lt!1201920 0 (BalanceConc!22269 Empty!11327)) lt!1202297)))

(declare-fun b!3521569 () Bool)

(assert (=> b!3521569 (= e!2179786 (<= 0 (size!28413 lt!1201920)))))

(declare-fun b!3521570 () Bool)

(assert (=> b!3521570 (= e!2179785 (BalanceConc!22269 Empty!11327))))

(declare-fun b!3521571 () Bool)

(assert (=> b!3521571 (= e!2179785 (printTailRec!1560 thiss!18206 lt!1201920 (+ 0 1) (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201920 0)))))))

(declare-fun lt!1202296 () List!37469)

(assert (=> b!3521571 (= lt!1202296 (list!13662 lt!1201920))))

(declare-fun lt!1202298 () Unit!52994)

(assert (=> b!3521571 (= lt!1202298 (lemmaDropApply!1193 lt!1202296 0))))

(assert (=> b!3521571 (= (head!7387 (drop!2049 lt!1202296 0)) (apply!8898 lt!1202296 0))))

(declare-fun lt!1202295 () Unit!52994)

(assert (=> b!3521571 (= lt!1202295 lt!1202298)))

(declare-fun lt!1202299 () List!37469)

(assert (=> b!3521571 (= lt!1202299 (list!13662 lt!1201920))))

(declare-fun lt!1202294 () Unit!52994)

(assert (=> b!3521571 (= lt!1202294 (lemmaDropTail!1077 lt!1202299 0))))

(assert (=> b!3521571 (= (tail!5493 (drop!2049 lt!1202299 0)) (drop!2049 lt!1202299 (+ 0 1)))))

(declare-fun lt!1202300 () Unit!52994)

(assert (=> b!3521571 (= lt!1202300 lt!1202294)))

(assert (= (and d!1027259 res!1420359) b!3521569))

(assert (= (and d!1027259 c!606924) b!3521570))

(assert (= (and d!1027259 (not c!606924)) b!3521571))

(assert (=> d!1027259 m!3971545))

(declare-fun m!3972089 () Bool)

(assert (=> d!1027259 m!3972089))

(assert (=> d!1027259 m!3971545))

(declare-fun m!3972091 () Bool)

(assert (=> d!1027259 m!3972091))

(declare-fun m!3972093 () Bool)

(assert (=> d!1027259 m!3972093))

(declare-fun m!3972095 () Bool)

(assert (=> d!1027259 m!3972095))

(assert (=> d!1027259 m!3972089))

(assert (=> b!3521569 m!3972093))

(declare-fun m!3972097 () Bool)

(assert (=> b!3521571 m!3972097))

(declare-fun m!3972099 () Bool)

(assert (=> b!3521571 m!3972099))

(declare-fun m!3972101 () Bool)

(assert (=> b!3521571 m!3972101))

(declare-fun m!3972103 () Bool)

(assert (=> b!3521571 m!3972103))

(declare-fun m!3972105 () Bool)

(assert (=> b!3521571 m!3972105))

(declare-fun m!3972107 () Bool)

(assert (=> b!3521571 m!3972107))

(declare-fun m!3972109 () Bool)

(assert (=> b!3521571 m!3972109))

(declare-fun m!3972111 () Bool)

(assert (=> b!3521571 m!3972111))

(assert (=> b!3521571 m!3972103))

(assert (=> b!3521571 m!3972109))

(assert (=> b!3521571 m!3972105))

(assert (=> b!3521571 m!3972099))

(declare-fun m!3972113 () Bool)

(assert (=> b!3521571 m!3972113))

(declare-fun m!3972115 () Bool)

(assert (=> b!3521571 m!3972115))

(declare-fun m!3972117 () Bool)

(assert (=> b!3521571 m!3972117))

(assert (=> b!3521571 m!3972113))

(declare-fun m!3972119 () Bool)

(assert (=> b!3521571 m!3972119))

(assert (=> b!3521571 m!3972077))

(assert (=> b!3520729 d!1027259))

(declare-fun d!1027263 () Bool)

(declare-fun e!2179788 () Bool)

(assert (=> d!1027263 e!2179788))

(declare-fun res!1420360 () Bool)

(assert (=> d!1027263 (=> (not res!1420360) (not e!2179788))))

(declare-fun lt!1202301 () BalanceConc!22270)

(assert (=> d!1027263 (= res!1420360 (= (list!13662 lt!1202301) (Cons!37345 (h!42765 tokens!494) Nil!37345)))))

(assert (=> d!1027263 (= lt!1202301 (singleton!1150 (h!42765 tokens!494)))))

(assert (=> d!1027263 (= (singletonSeq!2572 (h!42765 tokens!494)) lt!1202301)))

(declare-fun b!3521573 () Bool)

(assert (=> b!3521573 (= e!2179788 (isBalanced!3457 (c!606754 lt!1202301)))))

(assert (= (and d!1027263 res!1420360) b!3521573))

(declare-fun m!3972121 () Bool)

(assert (=> d!1027263 m!3972121))

(declare-fun m!3972123 () Bool)

(assert (=> d!1027263 m!3972123))

(declare-fun m!3972125 () Bool)

(assert (=> b!3521573 m!3972125))

(assert (=> b!3520729 d!1027263))

(declare-fun d!1027269 () Bool)

(declare-fun c!606927 () Bool)

(assert (=> d!1027269 (= c!606927 ((_ is Cons!37345) (Cons!37345 (h!42765 tokens!494) Nil!37345)))))

(declare-fun e!2179791 () List!37467)

(assert (=> d!1027269 (= (printList!1613 thiss!18206 (Cons!37345 (h!42765 tokens!494) Nil!37345)) e!2179791)))

(declare-fun b!3521578 () Bool)

(assert (=> b!3521578 (= e!2179791 (++!9253 (list!13659 (charsOf!3490 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345)))) (printList!1613 thiss!18206 (t!281700 (Cons!37345 (h!42765 tokens!494) Nil!37345)))))))

(declare-fun b!3521579 () Bool)

(assert (=> b!3521579 (= e!2179791 Nil!37343)))

(assert (= (and d!1027269 c!606927) b!3521578))

(assert (= (and d!1027269 (not c!606927)) b!3521579))

(declare-fun m!3972127 () Bool)

(assert (=> b!3521578 m!3972127))

(assert (=> b!3521578 m!3972127))

(declare-fun m!3972129 () Bool)

(assert (=> b!3521578 m!3972129))

(declare-fun m!3972131 () Bool)

(assert (=> b!3521578 m!3972131))

(assert (=> b!3521578 m!3972129))

(assert (=> b!3521578 m!3972131))

(declare-fun m!3972133 () Bool)

(assert (=> b!3521578 m!3972133))

(assert (=> b!3520729 d!1027269))

(declare-fun b!3521598 () Bool)

(declare-fun e!2179806 () Bool)

(declare-fun call!254414 () Bool)

(assert (=> b!3521598 (= e!2179806 call!254414)))

(declare-fun d!1027271 () Bool)

(declare-fun res!1420371 () Bool)

(declare-fun e!2179809 () Bool)

(assert (=> d!1027271 (=> res!1420371 e!2179809)))

(assert (=> d!1027271 (= res!1420371 ((_ is ElementMatch!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(assert (=> d!1027271 (= (validRegex!4674 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) e!2179809)))

(declare-fun b!3521599 () Bool)

(declare-fun res!1420375 () Bool)

(declare-fun e!2179808 () Bool)

(assert (=> b!3521599 (=> (not res!1420375) (not e!2179808))))

(declare-fun call!254413 () Bool)

(assert (=> b!3521599 (= res!1420375 call!254413)))

(declare-fun e!2179812 () Bool)

(assert (=> b!3521599 (= e!2179812 e!2179808)))

(declare-fun b!3521600 () Bool)

(declare-fun e!2179807 () Bool)

(declare-fun call!254412 () Bool)

(assert (=> b!3521600 (= e!2179807 call!254412)))

(declare-fun bm!254407 () Bool)

(assert (=> bm!254407 (= call!254412 call!254414)))

(declare-fun b!3521601 () Bool)

(assert (=> b!3521601 (= e!2179808 call!254412)))

(declare-fun c!606933 () Bool)

(declare-fun bm!254408 () Bool)

(declare-fun c!606932 () Bool)

(assert (=> bm!254408 (= call!254414 (validRegex!4674 (ite c!606932 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606933 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))

(declare-fun b!3521602 () Bool)

(declare-fun e!2179810 () Bool)

(assert (=> b!3521602 (= e!2179809 e!2179810)))

(assert (=> b!3521602 (= c!606932 ((_ is Star!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(declare-fun b!3521603 () Bool)

(declare-fun res!1420372 () Bool)

(declare-fun e!2179811 () Bool)

(assert (=> b!3521603 (=> res!1420372 e!2179811)))

(assert (=> b!3521603 (= res!1420372 (not ((_ is Concat!15941) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(assert (=> b!3521603 (= e!2179812 e!2179811)))

(declare-fun b!3521604 () Bool)

(assert (=> b!3521604 (= e!2179810 e!2179812)))

(assert (=> b!3521604 (= c!606933 ((_ is Union!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(declare-fun b!3521605 () Bool)

(assert (=> b!3521605 (= e!2179810 e!2179806)))

(declare-fun res!1420373 () Bool)

(assert (=> b!3521605 (= res!1420373 (not (nullable!3517 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(assert (=> b!3521605 (=> (not res!1420373) (not e!2179806))))

(declare-fun b!3521606 () Bool)

(assert (=> b!3521606 (= e!2179811 e!2179807)))

(declare-fun res!1420374 () Bool)

(assert (=> b!3521606 (=> (not res!1420374) (not e!2179807))))

(assert (=> b!3521606 (= res!1420374 call!254413)))

(declare-fun bm!254409 () Bool)

(assert (=> bm!254409 (= call!254413 (validRegex!4674 (ite c!606933 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(assert (= (and d!1027271 (not res!1420371)) b!3521602))

(assert (= (and b!3521602 c!606932) b!3521605))

(assert (= (and b!3521602 (not c!606932)) b!3521604))

(assert (= (and b!3521605 res!1420373) b!3521598))

(assert (= (and b!3521604 c!606933) b!3521599))

(assert (= (and b!3521604 (not c!606933)) b!3521603))

(assert (= (and b!3521599 res!1420375) b!3521601))

(assert (= (and b!3521603 (not res!1420372)) b!3521606))

(assert (= (and b!3521606 res!1420374) b!3521600))

(assert (= (or b!3521601 b!3521600) bm!254407))

(assert (= (or b!3521599 b!3521606) bm!254409))

(assert (= (or b!3521598 bm!254407) bm!254408))

(declare-fun m!3972135 () Bool)

(assert (=> bm!254408 m!3972135))

(declare-fun m!3972137 () Bool)

(assert (=> b!3521605 m!3972137))

(declare-fun m!3972139 () Bool)

(assert (=> bm!254409 m!3972139))

(assert (=> b!3520710 d!1027271))

(declare-fun b!3521617 () Bool)

(declare-fun e!2179821 () Bool)

(declare-fun e!2179820 () Bool)

(assert (=> b!3521617 (= e!2179821 e!2179820)))

(declare-fun c!606938 () Bool)

(assert (=> b!3521617 (= c!606938 ((_ is IntegerValue!17119) (value!176526 (h!42765 tokens!494))))))

(declare-fun b!3521618 () Bool)

(declare-fun e!2179819 () Bool)

(declare-fun inv!15 (TokenValue!5706) Bool)

(assert (=> b!3521618 (= e!2179819 (inv!15 (value!176526 (h!42765 tokens!494))))))

(declare-fun d!1027273 () Bool)

(declare-fun c!606939 () Bool)

(assert (=> d!1027273 (= c!606939 ((_ is IntegerValue!17118) (value!176526 (h!42765 tokens!494))))))

(assert (=> d!1027273 (= (inv!21 (value!176526 (h!42765 tokens!494))) e!2179821)))

(declare-fun b!3521619 () Bool)

(declare-fun inv!17 (TokenValue!5706) Bool)

(assert (=> b!3521619 (= e!2179820 (inv!17 (value!176526 (h!42765 tokens!494))))))

(declare-fun b!3521620 () Bool)

(declare-fun res!1420378 () Bool)

(assert (=> b!3521620 (=> res!1420378 e!2179819)))

(assert (=> b!3521620 (= res!1420378 (not ((_ is IntegerValue!17120) (value!176526 (h!42765 tokens!494)))))))

(assert (=> b!3521620 (= e!2179820 e!2179819)))

(declare-fun b!3521621 () Bool)

(declare-fun inv!16 (TokenValue!5706) Bool)

(assert (=> b!3521621 (= e!2179821 (inv!16 (value!176526 (h!42765 tokens!494))))))

(assert (= (and d!1027273 c!606939) b!3521621))

(assert (= (and d!1027273 (not c!606939)) b!3521617))

(assert (= (and b!3521617 c!606938) b!3521619))

(assert (= (and b!3521617 (not c!606938)) b!3521620))

(assert (= (and b!3521620 (not res!1420378)) b!3521618))

(declare-fun m!3972141 () Bool)

(assert (=> b!3521618 m!3972141))

(declare-fun m!3972143 () Bool)

(assert (=> b!3521619 m!3972143))

(declare-fun m!3972145 () Bool)

(assert (=> b!3521621 m!3972145))

(assert (=> b!3520731 d!1027273))

(declare-fun d!1027275 () Bool)

(declare-fun lt!1202302 () Bool)

(assert (=> d!1027275 (= lt!1202302 (select (content!5263 lt!1201914) lt!1201942))))

(declare-fun e!2179822 () Bool)

(assert (=> d!1027275 (= lt!1202302 e!2179822)))

(declare-fun res!1420379 () Bool)

(assert (=> d!1027275 (=> (not res!1420379) (not e!2179822))))

(assert (=> d!1027275 (= res!1420379 ((_ is Cons!37343) lt!1201914))))

(assert (=> d!1027275 (= (contains!7004 lt!1201914 lt!1201942) lt!1202302)))

(declare-fun b!3521622 () Bool)

(declare-fun e!2179823 () Bool)

(assert (=> b!3521622 (= e!2179822 e!2179823)))

(declare-fun res!1420380 () Bool)

(assert (=> b!3521622 (=> res!1420380 e!2179823)))

(assert (=> b!3521622 (= res!1420380 (= (h!42763 lt!1201914) lt!1201942))))

(declare-fun b!3521623 () Bool)

(assert (=> b!3521623 (= e!2179823 (contains!7004 (t!281698 lt!1201914) lt!1201942))))

(assert (= (and d!1027275 res!1420379) b!3521622))

(assert (= (and b!3521622 (not res!1420380)) b!3521623))

(declare-fun m!3972147 () Bool)

(assert (=> d!1027275 m!3972147))

(declare-fun m!3972149 () Bool)

(assert (=> d!1027275 m!3972149))

(declare-fun m!3972151 () Bool)

(assert (=> b!3521623 m!3972151))

(assert (=> b!3520709 d!1027275))

(declare-fun b!3521625 () Bool)

(declare-fun e!2179824 () List!37467)

(assert (=> b!3521625 (= e!2179824 (Cons!37343 (h!42763 lt!1201911) (++!9253 (t!281698 lt!1201911) lt!1201943)))))

(declare-fun d!1027277 () Bool)

(declare-fun e!2179825 () Bool)

(assert (=> d!1027277 e!2179825))

(declare-fun res!1420382 () Bool)

(assert (=> d!1027277 (=> (not res!1420382) (not e!2179825))))

(declare-fun lt!1202303 () List!37467)

(assert (=> d!1027277 (= res!1420382 (= (content!5263 lt!1202303) ((_ map or) (content!5263 lt!1201911) (content!5263 lt!1201943))))))

(assert (=> d!1027277 (= lt!1202303 e!2179824)))

(declare-fun c!606940 () Bool)

(assert (=> d!1027277 (= c!606940 ((_ is Nil!37343) lt!1201911))))

(assert (=> d!1027277 (= (++!9253 lt!1201911 lt!1201943) lt!1202303)))

(declare-fun b!3521626 () Bool)

(declare-fun res!1420381 () Bool)

(assert (=> b!3521626 (=> (not res!1420381) (not e!2179825))))

(assert (=> b!3521626 (= res!1420381 (= (size!28412 lt!1202303) (+ (size!28412 lt!1201911) (size!28412 lt!1201943))))))

(declare-fun b!3521624 () Bool)

(assert (=> b!3521624 (= e!2179824 lt!1201943)))

(declare-fun b!3521627 () Bool)

(assert (=> b!3521627 (= e!2179825 (or (not (= lt!1201943 Nil!37343)) (= lt!1202303 lt!1201911)))))

(assert (= (and d!1027277 c!606940) b!3521624))

(assert (= (and d!1027277 (not c!606940)) b!3521625))

(assert (= (and d!1027277 res!1420382) b!3521626))

(assert (= (and b!3521626 res!1420381) b!3521627))

(declare-fun m!3972153 () Bool)

(assert (=> b!3521625 m!3972153))

(declare-fun m!3972155 () Bool)

(assert (=> d!1027277 m!3972155))

(assert (=> d!1027277 m!3970975))

(declare-fun m!3972157 () Bool)

(assert (=> d!1027277 m!3972157))

(declare-fun m!3972159 () Bool)

(assert (=> b!3521626 m!3972159))

(assert (=> b!3521626 m!3970641))

(declare-fun m!3972161 () Bool)

(assert (=> b!3521626 m!3972161))

(assert (=> b!3520706 d!1027277))

(declare-fun d!1027279 () Bool)

(assert (=> d!1027279 (= (++!9253 (++!9253 lt!1201911 lt!1201944) lt!1201939) (++!9253 lt!1201911 (++!9253 lt!1201944 lt!1201939)))))

(declare-fun lt!1202306 () Unit!52994)

(declare-fun choose!20449 (List!37467 List!37467 List!37467) Unit!52994)

(assert (=> d!1027279 (= lt!1202306 (choose!20449 lt!1201911 lt!1201944 lt!1201939))))

(assert (=> d!1027279 (= (lemmaConcatAssociativity!2008 lt!1201911 lt!1201944 lt!1201939) lt!1202306)))

(declare-fun bs!565323 () Bool)

(assert (= bs!565323 d!1027279))

(assert (=> bs!565323 m!3970699))

(assert (=> bs!565323 m!3970701))

(declare-fun m!3972163 () Bool)

(assert (=> bs!565323 m!3972163))

(assert (=> bs!565323 m!3970699))

(assert (=> bs!565323 m!3970537))

(assert (=> bs!565323 m!3970537))

(declare-fun m!3972165 () Bool)

(assert (=> bs!565323 m!3972165))

(assert (=> b!3520706 d!1027279))

(declare-fun d!1027281 () Bool)

(assert (=> d!1027281 (= (isEmpty!21807 rules!2135) ((_ is Nil!37344) rules!2135))))

(assert (=> b!3520727 d!1027281))

(declare-fun bs!565324 () Bool)

(declare-fun d!1027283 () Bool)

(assert (= bs!565324 (and d!1027283 b!3520722)))

(declare-fun lambda!122753 () Int)

(assert (=> bs!565324 (not (= lambda!122753 lambda!122742))))

(declare-fun bs!565325 () Bool)

(assert (= bs!565325 (and d!1027283 b!3520730)))

(assert (=> bs!565325 (= lambda!122753 lambda!122743)))

(declare-fun b!3521633 () Bool)

(declare-fun e!2179831 () Bool)

(assert (=> b!3521633 (= e!2179831 true)))

(declare-fun b!3521632 () Bool)

(declare-fun e!2179830 () Bool)

(assert (=> b!3521632 (= e!2179830 e!2179831)))

(declare-fun b!3521631 () Bool)

(declare-fun e!2179829 () Bool)

(assert (=> b!3521631 (= e!2179829 e!2179830)))

(assert (=> d!1027283 e!2179829))

(assert (= b!3521632 b!3521633))

(assert (= b!3521631 b!3521632))

(assert (= (and d!1027283 ((_ is Cons!37344) rules!2135)) b!3521631))

(assert (=> b!3521633 (< (dynLambda!15904 order!20085 (toValue!7728 (transformation!5476 (h!42764 rules!2135)))) (dynLambda!15905 order!20087 lambda!122753))))

(assert (=> b!3521633 (< (dynLambda!15906 order!20089 (toChars!7587 (transformation!5476 (h!42764 rules!2135)))) (dynLambda!15905 order!20087 lambda!122753))))

(assert (=> d!1027283 true))

(declare-fun e!2179828 () Bool)

(assert (=> d!1027283 e!2179828))

(declare-fun res!1420385 () Bool)

(assert (=> d!1027283 (=> (not res!1420385) (not e!2179828))))

(declare-fun lt!1202309 () Bool)

(assert (=> d!1027283 (= res!1420385 (= lt!1202309 (forall!8029 (list!13662 (seqFromList!4005 tokens!494)) lambda!122753)))))

(declare-fun forall!8031 (BalanceConc!22270 Int) Bool)

(assert (=> d!1027283 (= lt!1202309 (forall!8031 (seqFromList!4005 tokens!494) lambda!122753))))

(assert (=> d!1027283 (not (isEmpty!21807 rules!2135))))

(assert (=> d!1027283 (= (rulesProduceEachTokenIndividually!1516 thiss!18206 rules!2135 (seqFromList!4005 tokens!494)) lt!1202309)))

(declare-fun b!3521630 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1885 (LexerInterface!5065 List!37468 List!37469) Bool)

(assert (=> b!3521630 (= e!2179828 (= lt!1202309 (rulesProduceEachTokenIndividuallyList!1885 thiss!18206 rules!2135 (list!13662 (seqFromList!4005 tokens!494)))))))

(assert (= (and d!1027283 res!1420385) b!3521630))

(assert (=> d!1027283 m!3970661))

(declare-fun m!3972167 () Bool)

(assert (=> d!1027283 m!3972167))

(assert (=> d!1027283 m!3972167))

(declare-fun m!3972169 () Bool)

(assert (=> d!1027283 m!3972169))

(assert (=> d!1027283 m!3970661))

(declare-fun m!3972171 () Bool)

(assert (=> d!1027283 m!3972171))

(assert (=> d!1027283 m!3970677))

(assert (=> b!3521630 m!3970661))

(assert (=> b!3521630 m!3972167))

(assert (=> b!3521630 m!3972167))

(declare-fun m!3972173 () Bool)

(assert (=> b!3521630 m!3972173))

(assert (=> b!3520705 d!1027283))

(declare-fun d!1027285 () Bool)

(declare-fun fromListB!1843 (List!37469) BalanceConc!22270)

(assert (=> d!1027285 (= (seqFromList!4005 tokens!494) (fromListB!1843 tokens!494))))

(declare-fun bs!565326 () Bool)

(assert (= bs!565326 d!1027285))

(declare-fun m!3972175 () Bool)

(assert (=> bs!565326 m!3972175))

(assert (=> b!3520705 d!1027285))

(declare-fun b!3521635 () Bool)

(declare-fun res!1420386 () Bool)

(declare-fun e!2179835 () Bool)

(assert (=> b!3521635 (=> (not res!1420386) (not e!2179835))))

(assert (=> b!3521635 (= res!1420386 (isEmpty!21812 (tail!5490 lt!1201944)))))

(declare-fun bm!254410 () Bool)

(declare-fun call!254415 () Bool)

(assert (=> bm!254410 (= call!254415 (isEmpty!21812 lt!1201944))))

(declare-fun b!3521636 () Bool)

(declare-fun res!1420393 () Bool)

(declare-fun e!2179838 () Bool)

(assert (=> b!3521636 (=> res!1420393 e!2179838)))

(assert (=> b!3521636 (= res!1420393 e!2179835)))

(declare-fun res!1420391 () Bool)

(assert (=> b!3521636 (=> (not res!1420391) (not e!2179835))))

(declare-fun lt!1202310 () Bool)

(assert (=> b!3521636 (= res!1420391 lt!1202310)))

(declare-fun b!3521637 () Bool)

(declare-fun res!1420389 () Bool)

(assert (=> b!3521637 (=> (not res!1420389) (not e!2179835))))

(assert (=> b!3521637 (= res!1420389 (not call!254415))))

(declare-fun b!3521638 () Bool)

(declare-fun e!2179836 () Bool)

(assert (=> b!3521638 (= e!2179838 e!2179836)))

(declare-fun res!1420390 () Bool)

(assert (=> b!3521638 (=> (not res!1420390) (not e!2179836))))

(assert (=> b!3521638 (= res!1420390 (not lt!1202310))))

(declare-fun b!3521639 () Bool)

(declare-fun e!2179837 () Bool)

(assert (=> b!3521639 (= e!2179837 (not (= (head!7385 lt!1201944) (c!606752 (regex!5476 lt!1201926)))))))

(declare-fun b!3521640 () Bool)

(declare-fun e!2179832 () Bool)

(declare-fun e!2179833 () Bool)

(assert (=> b!3521640 (= e!2179832 e!2179833)))

(declare-fun c!606942 () Bool)

(assert (=> b!3521640 (= c!606942 ((_ is EmptyLang!10235) (regex!5476 lt!1201926)))))

(declare-fun b!3521641 () Bool)

(declare-fun e!2179834 () Bool)

(assert (=> b!3521641 (= e!2179834 (matchR!4819 (derivativeStep!3070 (regex!5476 lt!1201926) (head!7385 lt!1201944)) (tail!5490 lt!1201944)))))

(declare-fun b!3521642 () Bool)

(assert (=> b!3521642 (= e!2179834 (nullable!3517 (regex!5476 lt!1201926)))))

(declare-fun b!3521634 () Bool)

(declare-fun res!1420388 () Bool)

(assert (=> b!3521634 (=> res!1420388 e!2179837)))

(assert (=> b!3521634 (= res!1420388 (not (isEmpty!21812 (tail!5490 lt!1201944))))))

(declare-fun d!1027287 () Bool)

(assert (=> d!1027287 e!2179832))

(declare-fun c!606941 () Bool)

(assert (=> d!1027287 (= c!606941 ((_ is EmptyExpr!10235) (regex!5476 lt!1201926)))))

(assert (=> d!1027287 (= lt!1202310 e!2179834)))

(declare-fun c!606943 () Bool)

(assert (=> d!1027287 (= c!606943 (isEmpty!21812 lt!1201944))))

(assert (=> d!1027287 (validRegex!4674 (regex!5476 lt!1201926))))

(assert (=> d!1027287 (= (matchR!4819 (regex!5476 lt!1201926) lt!1201944) lt!1202310)))

(declare-fun b!3521643 () Bool)

(assert (=> b!3521643 (= e!2179832 (= lt!1202310 call!254415))))

(declare-fun b!3521644 () Bool)

(declare-fun res!1420387 () Bool)

(assert (=> b!3521644 (=> res!1420387 e!2179838)))

(assert (=> b!3521644 (= res!1420387 (not ((_ is ElementMatch!10235) (regex!5476 lt!1201926))))))

(assert (=> b!3521644 (= e!2179833 e!2179838)))

(declare-fun b!3521645 () Bool)

(assert (=> b!3521645 (= e!2179833 (not lt!1202310))))

(declare-fun b!3521646 () Bool)

(assert (=> b!3521646 (= e!2179835 (= (head!7385 lt!1201944) (c!606752 (regex!5476 lt!1201926))))))

(declare-fun b!3521647 () Bool)

(assert (=> b!3521647 (= e!2179836 e!2179837)))

(declare-fun res!1420392 () Bool)

(assert (=> b!3521647 (=> res!1420392 e!2179837)))

(assert (=> b!3521647 (= res!1420392 call!254415)))

(assert (= (and d!1027287 c!606943) b!3521642))

(assert (= (and d!1027287 (not c!606943)) b!3521641))

(assert (= (and d!1027287 c!606941) b!3521643))

(assert (= (and d!1027287 (not c!606941)) b!3521640))

(assert (= (and b!3521640 c!606942) b!3521645))

(assert (= (and b!3521640 (not c!606942)) b!3521644))

(assert (= (and b!3521644 (not res!1420387)) b!3521636))

(assert (= (and b!3521636 res!1420391) b!3521637))

(assert (= (and b!3521637 res!1420389) b!3521635))

(assert (= (and b!3521635 res!1420386) b!3521646))

(assert (= (and b!3521636 (not res!1420393)) b!3521638))

(assert (= (and b!3521638 res!1420390) b!3521647))

(assert (= (and b!3521647 (not res!1420392)) b!3521634))

(assert (= (and b!3521634 (not res!1420388)) b!3521639))

(assert (= (or b!3521643 b!3521637 b!3521647) bm!254410))

(assert (=> d!1027287 m!3971027))

(declare-fun m!3972177 () Bool)

(assert (=> d!1027287 m!3972177))

(assert (=> b!3521634 m!3971029))

(assert (=> b!3521634 m!3971029))

(assert (=> b!3521634 m!3971031))

(assert (=> bm!254410 m!3971027))

(assert (=> b!3521641 m!3970579))

(assert (=> b!3521641 m!3970579))

(declare-fun m!3972179 () Bool)

(assert (=> b!3521641 m!3972179))

(assert (=> b!3521641 m!3971029))

(assert (=> b!3521641 m!3972179))

(assert (=> b!3521641 m!3971029))

(declare-fun m!3972181 () Bool)

(assert (=> b!3521641 m!3972181))

(assert (=> b!3521646 m!3970579))

(declare-fun m!3972183 () Bool)

(assert (=> b!3521642 m!3972183))

(assert (=> b!3521639 m!3970579))

(assert (=> b!3521635 m!3971029))

(assert (=> b!3521635 m!3971029))

(assert (=> b!3521635 m!3971031))

(assert (=> b!3520707 d!1027287))

(declare-fun d!1027289 () Bool)

(assert (=> d!1027289 (= (get!11989 lt!1201905) (v!37100 lt!1201905))))

(assert (=> b!3520707 d!1027289))

(declare-fun d!1027291 () Bool)

(assert (=> d!1027291 (= (list!13659 (charsOf!3490 (h!42765 tokens!494))) (list!13663 (c!606753 (charsOf!3490 (h!42765 tokens!494)))))))

(declare-fun bs!565327 () Bool)

(assert (= bs!565327 d!1027291))

(declare-fun m!3972185 () Bool)

(assert (=> bs!565327 m!3972185))

(assert (=> b!3520724 d!1027291))

(declare-fun d!1027293 () Bool)

(declare-fun lt!1202313 () BalanceConc!22268)

(assert (=> d!1027293 (= (list!13659 lt!1202313) (originalCharacters!6190 (h!42765 tokens!494)))))

(assert (=> d!1027293 (= lt!1202313 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494))))))

(assert (=> d!1027293 (= (charsOf!3490 (h!42765 tokens!494)) lt!1202313)))

(declare-fun b_lambda!102799 () Bool)

(assert (=> (not b_lambda!102799) (not d!1027293)))

(assert (=> d!1027293 t!281711))

(declare-fun b_and!250807 () Bool)

(assert (= b_and!250745 (and (=> t!281711 result!240976) b_and!250807)))

(assert (=> d!1027293 t!281713))

(declare-fun b_and!250809 () Bool)

(assert (= b_and!250747 (and (=> t!281713 result!240980) b_and!250809)))

(assert (=> d!1027293 t!281715))

(declare-fun b_and!250811 () Bool)

(assert (= b_and!250749 (and (=> t!281715 result!240982) b_and!250811)))

(declare-fun m!3972187 () Bool)

(assert (=> d!1027293 m!3972187))

(assert (=> d!1027293 m!3971017))

(assert (=> b!3520724 d!1027293))

(declare-fun d!1027295 () Bool)

(assert (=> d!1027295 (= (inv!50574 (tag!6114 (rule!8122 separatorToken!241))) (= (mod (str.len (value!176525 (tag!6114 (rule!8122 separatorToken!241)))) 2) 0))))

(assert (=> b!3520726 d!1027295))

(declare-fun d!1027297 () Bool)

(declare-fun res!1420394 () Bool)

(declare-fun e!2179839 () Bool)

(assert (=> d!1027297 (=> (not res!1420394) (not e!2179839))))

(assert (=> d!1027297 (= res!1420394 (semiInverseModEq!2312 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241)))))))

(assert (=> d!1027297 (= (inv!50578 (transformation!5476 (rule!8122 separatorToken!241))) e!2179839)))

(declare-fun b!3521648 () Bool)

(assert (=> b!3521648 (= e!2179839 (equivClasses!2211 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241)))))))

(assert (= (and d!1027297 res!1420394) b!3521648))

(declare-fun m!3972189 () Bool)

(assert (=> d!1027297 m!3972189))

(declare-fun m!3972191 () Bool)

(assert (=> b!3521648 m!3972191))

(assert (=> b!3520726 d!1027297))

(declare-fun d!1027299 () Bool)

(declare-fun c!606946 () Bool)

(assert (=> d!1027299 (= c!606946 ((_ is Cons!37345) tokens!494))))

(declare-fun e!2179842 () List!37467)

(assert (=> d!1027299 (= (printWithSeparatorTokenList!352 thiss!18206 tokens!494 separatorToken!241) e!2179842)))

(declare-fun b!3521653 () Bool)

(assert (=> b!3521653 (= e!2179842 (++!9253 (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) (list!13659 (charsOf!3490 separatorToken!241))) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 tokens!494) separatorToken!241)))))

(declare-fun b!3521654 () Bool)

(assert (=> b!3521654 (= e!2179842 Nil!37343)))

(assert (= (and d!1027299 c!606946) b!3521653))

(assert (= (and d!1027299 (not c!606946)) b!3521654))

(assert (=> b!3521653 m!3970673))

(assert (=> b!3521653 m!3970533))

(declare-fun m!3972193 () Bool)

(assert (=> b!3521653 m!3972193))

(assert (=> b!3521653 m!3970533))

(declare-fun m!3972195 () Bool)

(assert (=> b!3521653 m!3972195))

(assert (=> b!3521653 m!3970529))

(assert (=> b!3521653 m!3970545))

(assert (=> b!3521653 m!3970529))

(assert (=> b!3521653 m!3970673))

(assert (=> b!3521653 m!3970675))

(assert (=> b!3521653 m!3970675))

(assert (=> b!3521653 m!3970545))

(assert (=> b!3521653 m!3972193))

(assert (=> b!3520704 d!1027299))

(declare-fun b!3521656 () Bool)

(declare-fun e!2179843 () List!37467)

(assert (=> b!3521656 (= e!2179843 (Cons!37343 (h!42763 lt!1201914) (++!9253 (t!281698 lt!1201914) lt!1201944)))))

(declare-fun d!1027301 () Bool)

(declare-fun e!2179844 () Bool)

(assert (=> d!1027301 e!2179844))

(declare-fun res!1420396 () Bool)

(assert (=> d!1027301 (=> (not res!1420396) (not e!2179844))))

(declare-fun lt!1202314 () List!37467)

(assert (=> d!1027301 (= res!1420396 (= (content!5263 lt!1202314) ((_ map or) (content!5263 lt!1201914) (content!5263 lt!1201944))))))

(assert (=> d!1027301 (= lt!1202314 e!2179843)))

(declare-fun c!606947 () Bool)

(assert (=> d!1027301 (= c!606947 ((_ is Nil!37343) lt!1201914))))

(assert (=> d!1027301 (= (++!9253 lt!1201914 lt!1201944) lt!1202314)))

(declare-fun b!3521657 () Bool)

(declare-fun res!1420395 () Bool)

(assert (=> b!3521657 (=> (not res!1420395) (not e!2179844))))

(assert (=> b!3521657 (= res!1420395 (= (size!28412 lt!1202314) (+ (size!28412 lt!1201914) (size!28412 lt!1201944))))))

(declare-fun b!3521655 () Bool)

(assert (=> b!3521655 (= e!2179843 lt!1201944)))

(declare-fun b!3521658 () Bool)

(assert (=> b!3521658 (= e!2179844 (or (not (= lt!1201944 Nil!37343)) (= lt!1202314 lt!1201914)))))

(assert (= (and d!1027301 c!606947) b!3521655))

(assert (= (and d!1027301 (not c!606947)) b!3521656))

(assert (= (and d!1027301 res!1420396) b!3521657))

(assert (= (and b!3521657 res!1420395) b!3521658))

(declare-fun m!3972197 () Bool)

(assert (=> b!3521656 m!3972197))

(declare-fun m!3972199 () Bool)

(assert (=> d!1027301 m!3972199))

(assert (=> d!1027301 m!3972147))

(assert (=> d!1027301 m!3970977))

(declare-fun m!3972201 () Bool)

(assert (=> b!3521657 m!3972201))

(assert (=> b!3521657 m!3970651))

(assert (=> b!3521657 m!3970981))

(assert (=> b!3520704 d!1027301))

(declare-fun d!1027303 () Bool)

(assert (=> d!1027303 (= (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494)))) (list!13663 (c!606753 (charsOf!3490 (h!42765 (t!281700 tokens!494))))))))

(declare-fun bs!565328 () Bool)

(assert (= bs!565328 d!1027303))

(declare-fun m!3972203 () Bool)

(assert (=> bs!565328 m!3972203))

(assert (=> b!3520704 d!1027303))

(declare-fun b!3521660 () Bool)

(declare-fun e!2179845 () List!37467)

(assert (=> b!3521660 (= e!2179845 (Cons!37343 (h!42763 (++!9253 lt!1201914 lt!1201944)) (++!9253 (t!281698 (++!9253 lt!1201914 lt!1201944)) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241))))))

(declare-fun d!1027305 () Bool)

(declare-fun e!2179846 () Bool)

(assert (=> d!1027305 e!2179846))

(declare-fun res!1420398 () Bool)

(assert (=> d!1027305 (=> (not res!1420398) (not e!2179846))))

(declare-fun lt!1202315 () List!37467)

(assert (=> d!1027305 (= res!1420398 (= (content!5263 lt!1202315) ((_ map or) (content!5263 (++!9253 lt!1201914 lt!1201944)) (content!5263 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)))))))

(assert (=> d!1027305 (= lt!1202315 e!2179845)))

(declare-fun c!606948 () Bool)

(assert (=> d!1027305 (= c!606948 ((_ is Nil!37343) (++!9253 lt!1201914 lt!1201944)))))

(assert (=> d!1027305 (= (++!9253 (++!9253 lt!1201914 lt!1201944) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)) lt!1202315)))

(declare-fun b!3521661 () Bool)

(declare-fun res!1420397 () Bool)

(assert (=> b!3521661 (=> (not res!1420397) (not e!2179846))))

(assert (=> b!3521661 (= res!1420397 (= (size!28412 lt!1202315) (+ (size!28412 (++!9253 lt!1201914 lt!1201944)) (size!28412 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)))))))

(declare-fun b!3521659 () Bool)

(assert (=> b!3521659 (= e!2179845 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241))))

(declare-fun b!3521662 () Bool)

(assert (=> b!3521662 (= e!2179846 (or (not (= (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241) Nil!37343)) (= lt!1202315 (++!9253 lt!1201914 lt!1201944))))))

(assert (= (and d!1027305 c!606948) b!3521659))

(assert (= (and d!1027305 (not c!606948)) b!3521660))

(assert (= (and d!1027305 res!1420398) b!3521661))

(assert (= (and b!3521661 res!1420397) b!3521662))

(assert (=> b!3521660 m!3970539))

(declare-fun m!3972205 () Bool)

(assert (=> b!3521660 m!3972205))

(declare-fun m!3972207 () Bool)

(assert (=> d!1027305 m!3972207))

(assert (=> d!1027305 m!3970541))

(declare-fun m!3972209 () Bool)

(assert (=> d!1027305 m!3972209))

(assert (=> d!1027305 m!3970539))

(declare-fun m!3972211 () Bool)

(assert (=> d!1027305 m!3972211))

(declare-fun m!3972213 () Bool)

(assert (=> b!3521661 m!3972213))

(assert (=> b!3521661 m!3970541))

(declare-fun m!3972215 () Bool)

(assert (=> b!3521661 m!3972215))

(assert (=> b!3521661 m!3970539))

(declare-fun m!3972217 () Bool)

(assert (=> b!3521661 m!3972217))

(assert (=> b!3520704 d!1027305))

(declare-fun d!1027307 () Bool)

(declare-fun c!606949 () Bool)

(assert (=> d!1027307 (= c!606949 ((_ is Cons!37345) (t!281700 (t!281700 tokens!494))))))

(declare-fun e!2179847 () List!37467)

(assert (=> d!1027307 (= (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241) e!2179847)))

(declare-fun b!3521663 () Bool)

(assert (=> b!3521663 (= e!2179847 (++!9253 (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494))))) (list!13659 (charsOf!3490 separatorToken!241))) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 (t!281700 tokens!494))) separatorToken!241)))))

(declare-fun b!3521664 () Bool)

(assert (=> b!3521664 (= e!2179847 Nil!37343)))

(assert (= (and d!1027307 c!606949) b!3521663))

(assert (= (and d!1027307 (not c!606949)) b!3521664))

(declare-fun m!3972219 () Bool)

(assert (=> b!3521663 m!3972219))

(declare-fun m!3972221 () Bool)

(assert (=> b!3521663 m!3972221))

(declare-fun m!3972223 () Bool)

(assert (=> b!3521663 m!3972223))

(assert (=> b!3521663 m!3972221))

(declare-fun m!3972225 () Bool)

(assert (=> b!3521663 m!3972225))

(assert (=> b!3521663 m!3970529))

(assert (=> b!3521663 m!3970545))

(assert (=> b!3521663 m!3970529))

(assert (=> b!3521663 m!3972219))

(declare-fun m!3972227 () Bool)

(assert (=> b!3521663 m!3972227))

(assert (=> b!3521663 m!3972227))

(assert (=> b!3521663 m!3970545))

(assert (=> b!3521663 m!3972223))

(assert (=> b!3520704 d!1027307))

(declare-fun d!1027309 () Bool)

(declare-fun c!606950 () Bool)

(assert (=> d!1027309 (= c!606950 ((_ is Cons!37345) (t!281700 tokens!494)))))

(declare-fun e!2179848 () List!37467)

(assert (=> d!1027309 (= (printWithSeparatorTokenList!352 thiss!18206 (t!281700 tokens!494) separatorToken!241) e!2179848)))

(declare-fun b!3521665 () Bool)

(assert (=> b!3521665 (= e!2179848 (++!9253 (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494)))) (list!13659 (charsOf!3490 separatorToken!241))) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)))))

(declare-fun b!3521666 () Bool)

(assert (=> b!3521666 (= e!2179848 Nil!37343)))

(assert (= (and d!1027309 c!606950) b!3521665))

(assert (= (and d!1027309 (not c!606950)) b!3521666))

(assert (=> b!3521665 m!3970527))

(assert (=> b!3521665 m!3970539))

(declare-fun m!3972229 () Bool)

(assert (=> b!3521665 m!3972229))

(assert (=> b!3521665 m!3970539))

(declare-fun m!3972231 () Bool)

(assert (=> b!3521665 m!3972231))

(assert (=> b!3521665 m!3970529))

(assert (=> b!3521665 m!3970545))

(assert (=> b!3521665 m!3970529))

(assert (=> b!3521665 m!3970527))

(assert (=> b!3521665 m!3970535))

(assert (=> b!3521665 m!3970535))

(assert (=> b!3521665 m!3970545))

(assert (=> b!3521665 m!3972229))

(assert (=> b!3520704 d!1027309))

(declare-fun b!3521668 () Bool)

(declare-fun e!2179849 () List!37467)

(assert (=> b!3521668 (= e!2179849 (Cons!37343 (h!42763 lt!1201944) (++!9253 (t!281698 lt!1201944) lt!1201939)))))

(declare-fun d!1027311 () Bool)

(declare-fun e!2179850 () Bool)

(assert (=> d!1027311 e!2179850))

(declare-fun res!1420400 () Bool)

(assert (=> d!1027311 (=> (not res!1420400) (not e!2179850))))

(declare-fun lt!1202316 () List!37467)

(assert (=> d!1027311 (= res!1420400 (= (content!5263 lt!1202316) ((_ map or) (content!5263 lt!1201944) (content!5263 lt!1201939))))))

(assert (=> d!1027311 (= lt!1202316 e!2179849)))

(declare-fun c!606951 () Bool)

(assert (=> d!1027311 (= c!606951 ((_ is Nil!37343) lt!1201944))))

(assert (=> d!1027311 (= (++!9253 lt!1201944 lt!1201939) lt!1202316)))

(declare-fun b!3521669 () Bool)

(declare-fun res!1420399 () Bool)

(assert (=> b!3521669 (=> (not res!1420399) (not e!2179850))))

(assert (=> b!3521669 (= res!1420399 (= (size!28412 lt!1202316) (+ (size!28412 lt!1201944) (size!28412 lt!1201939))))))

(declare-fun b!3521667 () Bool)

(assert (=> b!3521667 (= e!2179849 lt!1201939)))

(declare-fun b!3521670 () Bool)

(assert (=> b!3521670 (= e!2179850 (or (not (= lt!1201939 Nil!37343)) (= lt!1202316 lt!1201944)))))

(assert (= (and d!1027311 c!606951) b!3521667))

(assert (= (and d!1027311 (not c!606951)) b!3521668))

(assert (= (and d!1027311 res!1420400) b!3521669))

(assert (= (and b!3521669 res!1420399) b!3521670))

(declare-fun m!3972233 () Bool)

(assert (=> b!3521668 m!3972233))

(declare-fun m!3972235 () Bool)

(assert (=> d!1027311 m!3972235))

(assert (=> d!1027311 m!3970977))

(assert (=> d!1027311 m!3970963))

(declare-fun m!3972237 () Bool)

(assert (=> b!3521669 m!3972237))

(assert (=> b!3521669 m!3970981))

(assert (=> b!3521669 m!3970969))

(assert (=> b!3520704 d!1027311))

(declare-fun d!1027313 () Bool)

(declare-fun lt!1202317 () BalanceConc!22268)

(assert (=> d!1027313 (= (list!13659 lt!1202317) (originalCharacters!6190 separatorToken!241))))

(assert (=> d!1027313 (= lt!1202317 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241)))))

(assert (=> d!1027313 (= (charsOf!3490 separatorToken!241) lt!1202317)))

(declare-fun b_lambda!102801 () Bool)

(assert (=> (not b_lambda!102801) (not d!1027313)))

(declare-fun t!281784 () Bool)

(declare-fun tb!196687 () Bool)

(assert (=> (and b!3520728 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241)))) t!281784) tb!196687))

(declare-fun b!3521671 () Bool)

(declare-fun e!2179851 () Bool)

(declare-fun tp!1087023 () Bool)

(assert (=> b!3521671 (= e!2179851 (and (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241)))) tp!1087023))))

(declare-fun result!241052 () Bool)

(assert (=> tb!196687 (= result!241052 (and (inv!50582 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241))) e!2179851))))

(assert (= tb!196687 b!3521671))

(declare-fun m!3972239 () Bool)

(assert (=> b!3521671 m!3972239))

(declare-fun m!3972241 () Bool)

(assert (=> tb!196687 m!3972241))

(assert (=> d!1027313 t!281784))

(declare-fun b_and!250813 () Bool)

(assert (= b_and!250807 (and (=> t!281784 result!241052) b_and!250813)))

(declare-fun tb!196689 () Bool)

(declare-fun t!281786 () Bool)

(assert (=> (and b!3520694 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241)))) t!281786) tb!196689))

(declare-fun result!241054 () Bool)

(assert (= result!241054 result!241052))

(assert (=> d!1027313 t!281786))

(declare-fun b_and!250815 () Bool)

(assert (= b_and!250809 (and (=> t!281786 result!241054) b_and!250815)))

(declare-fun tb!196691 () Bool)

(declare-fun t!281788 () Bool)

(assert (=> (and b!3520698 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241)))) t!281788) tb!196691))

(declare-fun result!241056 () Bool)

(assert (= result!241056 result!241052))

(assert (=> d!1027313 t!281788))

(declare-fun b_and!250817 () Bool)

(assert (= b_and!250811 (and (=> t!281788 result!241056) b_and!250817)))

(declare-fun m!3972243 () Bool)

(assert (=> d!1027313 m!3972243))

(declare-fun m!3972245 () Bool)

(assert (=> d!1027313 m!3972245))

(assert (=> b!3520704 d!1027313))

(declare-fun d!1027315 () Bool)

(assert (=> d!1027315 (= (list!13659 (charsOf!3490 separatorToken!241)) (list!13663 (c!606753 (charsOf!3490 separatorToken!241))))))

(declare-fun bs!565329 () Bool)

(assert (= bs!565329 d!1027315))

(declare-fun m!3972247 () Bool)

(assert (=> bs!565329 m!3972247))

(assert (=> b!3520704 d!1027315))

(declare-fun d!1027317 () Bool)

(declare-fun lt!1202318 () BalanceConc!22268)

(assert (=> d!1027317 (= (list!13659 lt!1202318) (originalCharacters!6190 (h!42765 (t!281700 tokens!494))))))

(assert (=> d!1027317 (= lt!1202318 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494)))))))

(assert (=> d!1027317 (= (charsOf!3490 (h!42765 (t!281700 tokens!494))) lt!1202318)))

(declare-fun b_lambda!102803 () Bool)

(assert (=> (not b_lambda!102803) (not d!1027317)))

(declare-fun t!281790 () Bool)

(declare-fun tb!196693 () Bool)

(assert (=> (and b!3520728 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!281790) tb!196693))

(declare-fun b!3521672 () Bool)

(declare-fun e!2179852 () Bool)

(declare-fun tp!1087024 () Bool)

(assert (=> b!3521672 (= e!2179852 (and (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494)))))) tp!1087024))))

(declare-fun result!241058 () Bool)

(assert (=> tb!196693 (= result!241058 (and (inv!50582 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494))))) e!2179852))))

(assert (= tb!196693 b!3521672))

(declare-fun m!3972249 () Bool)

(assert (=> b!3521672 m!3972249))

(declare-fun m!3972251 () Bool)

(assert (=> tb!196693 m!3972251))

(assert (=> d!1027317 t!281790))

(declare-fun b_and!250819 () Bool)

(assert (= b_and!250813 (and (=> t!281790 result!241058) b_and!250819)))

(declare-fun t!281792 () Bool)

(declare-fun tb!196695 () Bool)

(assert (=> (and b!3520694 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!281792) tb!196695))

(declare-fun result!241060 () Bool)

(assert (= result!241060 result!241058))

(assert (=> d!1027317 t!281792))

(declare-fun b_and!250821 () Bool)

(assert (= b_and!250815 (and (=> t!281792 result!241060) b_and!250821)))

(declare-fun t!281794 () Bool)

(declare-fun tb!196697 () Bool)

(assert (=> (and b!3520698 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!281794) tb!196697))

(declare-fun result!241062 () Bool)

(assert (= result!241062 result!241058))

(assert (=> d!1027317 t!281794))

(declare-fun b_and!250823 () Bool)

(assert (= b_and!250817 (and (=> t!281794 result!241062) b_and!250823)))

(declare-fun m!3972253 () Bool)

(assert (=> d!1027317 m!3972253))

(declare-fun m!3972255 () Bool)

(assert (=> d!1027317 m!3972255))

(assert (=> b!3520704 d!1027317))

(declare-fun d!1027319 () Bool)

(assert (=> d!1027319 (dynLambda!15912 lambda!122742 (h!42765 (t!281700 tokens!494)))))

(declare-fun lt!1202319 () Unit!52994)

(assert (=> d!1027319 (= lt!1202319 (choose!20447 tokens!494 lambda!122742 (h!42765 (t!281700 tokens!494))))))

(declare-fun e!2179853 () Bool)

(assert (=> d!1027319 e!2179853))

(declare-fun res!1420401 () Bool)

(assert (=> d!1027319 (=> (not res!1420401) (not e!2179853))))

(assert (=> d!1027319 (= res!1420401 (forall!8029 tokens!494 lambda!122742))))

(assert (=> d!1027319 (= (forallContained!1423 tokens!494 lambda!122742 (h!42765 (t!281700 tokens!494))) lt!1202319)))

(declare-fun b!3521673 () Bool)

(assert (=> b!3521673 (= e!2179853 (contains!7008 tokens!494 (h!42765 (t!281700 tokens!494))))))

(assert (= (and d!1027319 res!1420401) b!3521673))

(declare-fun b_lambda!102805 () Bool)

(assert (=> (not b_lambda!102805) (not d!1027319)))

(declare-fun m!3972257 () Bool)

(assert (=> d!1027319 m!3972257))

(declare-fun m!3972259 () Bool)

(assert (=> d!1027319 m!3972259))

(assert (=> d!1027319 m!3970713))

(assert (=> b!3521673 m!3971809))

(assert (=> b!3520725 d!1027319))

(declare-fun d!1027321 () Bool)

(assert (=> d!1027321 (dynLambda!15912 lambda!122742 (h!42765 tokens!494))))

(declare-fun lt!1202320 () Unit!52994)

(assert (=> d!1027321 (= lt!1202320 (choose!20447 tokens!494 lambda!122742 (h!42765 tokens!494)))))

(declare-fun e!2179854 () Bool)

(assert (=> d!1027321 e!2179854))

(declare-fun res!1420402 () Bool)

(assert (=> d!1027321 (=> (not res!1420402) (not e!2179854))))

(assert (=> d!1027321 (= res!1420402 (forall!8029 tokens!494 lambda!122742))))

(assert (=> d!1027321 (= (forallContained!1423 tokens!494 lambda!122742 (h!42765 tokens!494)) lt!1202320)))

(declare-fun b!3521674 () Bool)

(assert (=> b!3521674 (= e!2179854 (contains!7008 tokens!494 (h!42765 tokens!494)))))

(assert (= (and d!1027321 res!1420402) b!3521674))

(declare-fun b_lambda!102807 () Bool)

(assert (=> (not b_lambda!102807) (not d!1027321)))

(declare-fun m!3972261 () Bool)

(assert (=> d!1027321 m!3972261))

(declare-fun m!3972263 () Bool)

(assert (=> d!1027321 m!3972263))

(assert (=> d!1027321 m!3970713))

(declare-fun m!3972265 () Bool)

(assert (=> b!3521674 m!3972265))

(assert (=> b!3520725 d!1027321))

(declare-fun d!1027323 () Bool)

(declare-fun res!1420407 () Bool)

(declare-fun e!2179859 () Bool)

(assert (=> d!1027323 (=> res!1420407 e!2179859)))

(assert (=> d!1027323 (= res!1420407 ((_ is Nil!37345) tokens!494))))

(assert (=> d!1027323 (= (forall!8029 tokens!494 lambda!122742) e!2179859)))

(declare-fun b!3521679 () Bool)

(declare-fun e!2179860 () Bool)

(assert (=> b!3521679 (= e!2179859 e!2179860)))

(declare-fun res!1420408 () Bool)

(assert (=> b!3521679 (=> (not res!1420408) (not e!2179860))))

(assert (=> b!3521679 (= res!1420408 (dynLambda!15912 lambda!122742 (h!42765 tokens!494)))))

(declare-fun b!3521680 () Bool)

(assert (=> b!3521680 (= e!2179860 (forall!8029 (t!281700 tokens!494) lambda!122742))))

(assert (= (and d!1027323 (not res!1420407)) b!3521679))

(assert (= (and b!3521679 res!1420408) b!3521680))

(declare-fun b_lambda!102809 () Bool)

(assert (=> (not b_lambda!102809) (not b!3521679)))

(assert (=> b!3521679 m!3972261))

(declare-fun m!3972267 () Bool)

(assert (=> b!3521680 m!3972267))

(assert (=> b!3520722 d!1027323))

(declare-fun b!3521681 () Bool)

(declare-fun e!2179863 () Bool)

(declare-fun e!2179862 () Bool)

(assert (=> b!3521681 (= e!2179863 e!2179862)))

(declare-fun c!606952 () Bool)

(assert (=> b!3521681 (= c!606952 ((_ is IntegerValue!17119) (value!176526 separatorToken!241)))))

(declare-fun b!3521682 () Bool)

(declare-fun e!2179861 () Bool)

(assert (=> b!3521682 (= e!2179861 (inv!15 (value!176526 separatorToken!241)))))

(declare-fun d!1027325 () Bool)

(declare-fun c!606953 () Bool)

(assert (=> d!1027325 (= c!606953 ((_ is IntegerValue!17118) (value!176526 separatorToken!241)))))

(assert (=> d!1027325 (= (inv!21 (value!176526 separatorToken!241)) e!2179863)))

(declare-fun b!3521683 () Bool)

(assert (=> b!3521683 (= e!2179862 (inv!17 (value!176526 separatorToken!241)))))

(declare-fun b!3521684 () Bool)

(declare-fun res!1420409 () Bool)

(assert (=> b!3521684 (=> res!1420409 e!2179861)))

(assert (=> b!3521684 (= res!1420409 (not ((_ is IntegerValue!17120) (value!176526 separatorToken!241))))))

(assert (=> b!3521684 (= e!2179862 e!2179861)))

(declare-fun b!3521685 () Bool)

(assert (=> b!3521685 (= e!2179863 (inv!16 (value!176526 separatorToken!241)))))

(assert (= (and d!1027325 c!606953) b!3521685))

(assert (= (and d!1027325 (not c!606953)) b!3521681))

(assert (= (and b!3521681 c!606952) b!3521683))

(assert (= (and b!3521681 (not c!606952)) b!3521684))

(assert (= (and b!3521684 (not res!1420409)) b!3521682))

(declare-fun m!3972269 () Bool)

(assert (=> b!3521682 m!3972269))

(declare-fun m!3972271 () Bool)

(assert (=> b!3521683 m!3972271))

(declare-fun m!3972273 () Bool)

(assert (=> b!3521685 m!3972273))

(assert (=> b!3520721 d!1027325))

(declare-fun b!3521687 () Bool)

(declare-fun res!1420410 () Bool)

(declare-fun e!2179867 () Bool)

(assert (=> b!3521687 (=> (not res!1420410) (not e!2179867))))

(assert (=> b!3521687 (= res!1420410 (isEmpty!21812 (tail!5490 lt!1201914)))))

(declare-fun bm!254411 () Bool)

(declare-fun call!254416 () Bool)

(assert (=> bm!254411 (= call!254416 (isEmpty!21812 lt!1201914))))

(declare-fun b!3521688 () Bool)

(declare-fun res!1420417 () Bool)

(declare-fun e!2179870 () Bool)

(assert (=> b!3521688 (=> res!1420417 e!2179870)))

(assert (=> b!3521688 (= res!1420417 e!2179867)))

(declare-fun res!1420415 () Bool)

(assert (=> b!3521688 (=> (not res!1420415) (not e!2179867))))

(declare-fun lt!1202321 () Bool)

(assert (=> b!3521688 (= res!1420415 lt!1202321)))

(declare-fun b!3521689 () Bool)

(declare-fun res!1420413 () Bool)

(assert (=> b!3521689 (=> (not res!1420413) (not e!2179867))))

(assert (=> b!3521689 (= res!1420413 (not call!254416))))

(declare-fun b!3521690 () Bool)

(declare-fun e!2179868 () Bool)

(assert (=> b!3521690 (= e!2179870 e!2179868)))

(declare-fun res!1420414 () Bool)

(assert (=> b!3521690 (=> (not res!1420414) (not e!2179868))))

(assert (=> b!3521690 (= res!1420414 (not lt!1202321))))

(declare-fun b!3521691 () Bool)

(declare-fun e!2179869 () Bool)

(assert (=> b!3521691 (= e!2179869 (not (= (head!7385 lt!1201914) (c!606752 (regex!5476 lt!1201933)))))))

(declare-fun b!3521692 () Bool)

(declare-fun e!2179864 () Bool)

(declare-fun e!2179865 () Bool)

(assert (=> b!3521692 (= e!2179864 e!2179865)))

(declare-fun c!606955 () Bool)

(assert (=> b!3521692 (= c!606955 ((_ is EmptyLang!10235) (regex!5476 lt!1201933)))))

(declare-fun b!3521693 () Bool)

(declare-fun e!2179866 () Bool)

(assert (=> b!3521693 (= e!2179866 (matchR!4819 (derivativeStep!3070 (regex!5476 lt!1201933) (head!7385 lt!1201914)) (tail!5490 lt!1201914)))))

(declare-fun b!3521694 () Bool)

(assert (=> b!3521694 (= e!2179866 (nullable!3517 (regex!5476 lt!1201933)))))

(declare-fun b!3521686 () Bool)

(declare-fun res!1420412 () Bool)

(assert (=> b!3521686 (=> res!1420412 e!2179869)))

(assert (=> b!3521686 (= res!1420412 (not (isEmpty!21812 (tail!5490 lt!1201914))))))

(declare-fun d!1027327 () Bool)

(assert (=> d!1027327 e!2179864))

(declare-fun c!606954 () Bool)

(assert (=> d!1027327 (= c!606954 ((_ is EmptyExpr!10235) (regex!5476 lt!1201933)))))

(assert (=> d!1027327 (= lt!1202321 e!2179866)))

(declare-fun c!606956 () Bool)

(assert (=> d!1027327 (= c!606956 (isEmpty!21812 lt!1201914))))

(assert (=> d!1027327 (validRegex!4674 (regex!5476 lt!1201933))))

(assert (=> d!1027327 (= (matchR!4819 (regex!5476 lt!1201933) lt!1201914) lt!1202321)))

(declare-fun b!3521695 () Bool)

(assert (=> b!3521695 (= e!2179864 (= lt!1202321 call!254416))))

(declare-fun b!3521696 () Bool)

(declare-fun res!1420411 () Bool)

(assert (=> b!3521696 (=> res!1420411 e!2179870)))

(assert (=> b!3521696 (= res!1420411 (not ((_ is ElementMatch!10235) (regex!5476 lt!1201933))))))

(assert (=> b!3521696 (= e!2179865 e!2179870)))

(declare-fun b!3521697 () Bool)

(assert (=> b!3521697 (= e!2179865 (not lt!1202321))))

(declare-fun b!3521698 () Bool)

(assert (=> b!3521698 (= e!2179867 (= (head!7385 lt!1201914) (c!606752 (regex!5476 lt!1201933))))))

(declare-fun b!3521699 () Bool)

(assert (=> b!3521699 (= e!2179868 e!2179869)))

(declare-fun res!1420416 () Bool)

(assert (=> b!3521699 (=> res!1420416 e!2179869)))

(assert (=> b!3521699 (= res!1420416 call!254416)))

(assert (= (and d!1027327 c!606956) b!3521694))

(assert (= (and d!1027327 (not c!606956)) b!3521693))

(assert (= (and d!1027327 c!606954) b!3521695))

(assert (= (and d!1027327 (not c!606954)) b!3521692))

(assert (= (and b!3521692 c!606955) b!3521697))

(assert (= (and b!3521692 (not c!606955)) b!3521696))

(assert (= (and b!3521696 (not res!1420411)) b!3521688))

(assert (= (and b!3521688 res!1420415) b!3521689))

(assert (= (and b!3521689 res!1420413) b!3521687))

(assert (= (and b!3521687 res!1420410) b!3521698))

(assert (= (and b!3521688 (not res!1420417)) b!3521690))

(assert (= (and b!3521690 res!1420414) b!3521699))

(assert (= (and b!3521699 (not res!1420416)) b!3521686))

(assert (= (and b!3521686 (not res!1420412)) b!3521691))

(assert (= (or b!3521695 b!3521689 b!3521699) bm!254411))

(declare-fun m!3972275 () Bool)

(assert (=> d!1027327 m!3972275))

(declare-fun m!3972277 () Bool)

(assert (=> d!1027327 m!3972277))

(declare-fun m!3972279 () Bool)

(assert (=> b!3521686 m!3972279))

(assert (=> b!3521686 m!3972279))

(declare-fun m!3972281 () Bool)

(assert (=> b!3521686 m!3972281))

(assert (=> bm!254411 m!3972275))

(assert (=> b!3521693 m!3970635))

(assert (=> b!3521693 m!3970635))

(declare-fun m!3972283 () Bool)

(assert (=> b!3521693 m!3972283))

(assert (=> b!3521693 m!3972279))

(assert (=> b!3521693 m!3972283))

(assert (=> b!3521693 m!3972279))

(declare-fun m!3972285 () Bool)

(assert (=> b!3521693 m!3972285))

(assert (=> b!3521698 m!3970635))

(declare-fun m!3972287 () Bool)

(assert (=> b!3521694 m!3972287))

(assert (=> b!3521691 m!3970635))

(assert (=> b!3521687 m!3972279))

(assert (=> b!3521687 m!3972279))

(assert (=> b!3521687 m!3972281))

(assert (=> b!3520702 d!1027327))

(declare-fun d!1027329 () Bool)

(assert (=> d!1027329 (= (get!11989 lt!1201948) (v!37100 lt!1201948))))

(assert (=> b!3520702 d!1027329))

(declare-fun d!1027331 () Bool)

(declare-fun res!1420418 () Bool)

(declare-fun e!2179871 () Bool)

(assert (=> d!1027331 (=> (not res!1420418) (not e!2179871))))

(assert (=> d!1027331 (= res!1420418 (not (isEmpty!21812 (originalCharacters!6190 separatorToken!241))))))

(assert (=> d!1027331 (= (inv!50577 separatorToken!241) e!2179871)))

(declare-fun b!3521700 () Bool)

(declare-fun res!1420419 () Bool)

(assert (=> b!3521700 (=> (not res!1420419) (not e!2179871))))

(assert (=> b!3521700 (= res!1420419 (= (originalCharacters!6190 separatorToken!241) (list!13659 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241)))))))

(declare-fun b!3521701 () Bool)

(assert (=> b!3521701 (= e!2179871 (= (size!28411 separatorToken!241) (size!28412 (originalCharacters!6190 separatorToken!241))))))

(assert (= (and d!1027331 res!1420418) b!3521700))

(assert (= (and b!3521700 res!1420419) b!3521701))

(declare-fun b_lambda!102811 () Bool)

(assert (=> (not b_lambda!102811) (not b!3521700)))

(assert (=> b!3521700 t!281784))

(declare-fun b_and!250825 () Bool)

(assert (= b_and!250819 (and (=> t!281784 result!241052) b_and!250825)))

(assert (=> b!3521700 t!281786))

(declare-fun b_and!250827 () Bool)

(assert (= b_and!250821 (and (=> t!281786 result!241054) b_and!250827)))

(assert (=> b!3521700 t!281788))

(declare-fun b_and!250829 () Bool)

(assert (= b_and!250823 (and (=> t!281788 result!241056) b_and!250829)))

(declare-fun m!3972289 () Bool)

(assert (=> d!1027331 m!3972289))

(assert (=> b!3521700 m!3972245))

(assert (=> b!3521700 m!3972245))

(declare-fun m!3972291 () Bool)

(assert (=> b!3521700 m!3972291))

(declare-fun m!3972293 () Bool)

(assert (=> b!3521701 m!3972293))

(assert (=> start!327082 d!1027331))

(declare-fun d!1027333 () Bool)

(assert (=> d!1027333 (= (inv!50574 (tag!6114 (h!42764 rules!2135))) (= (mod (str.len (value!176525 (tag!6114 (h!42764 rules!2135)))) 2) 0))))

(assert (=> b!3520701 d!1027333))

(declare-fun d!1027335 () Bool)

(declare-fun res!1420420 () Bool)

(declare-fun e!2179872 () Bool)

(assert (=> d!1027335 (=> (not res!1420420) (not e!2179872))))

(assert (=> d!1027335 (= res!1420420 (semiInverseModEq!2312 (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (h!42764 rules!2135)))))))

(assert (=> d!1027335 (= (inv!50578 (transformation!5476 (h!42764 rules!2135))) e!2179872)))

(declare-fun b!3521702 () Bool)

(assert (=> b!3521702 (= e!2179872 (equivClasses!2211 (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (h!42764 rules!2135)))))))

(assert (= (and d!1027335 res!1420420) b!3521702))

(declare-fun m!3972295 () Bool)

(assert (=> d!1027335 m!3972295))

(declare-fun m!3972297 () Bool)

(assert (=> b!3521702 m!3972297))

(assert (=> b!3520701 d!1027335))

(declare-fun d!1027337 () Bool)

(declare-fun res!1420425 () Bool)

(declare-fun e!2179877 () Bool)

(assert (=> d!1027337 (=> res!1420425 e!2179877)))

(assert (=> d!1027337 (= res!1420425 (not ((_ is Cons!37344) rules!2135)))))

(assert (=> d!1027337 (= (sepAndNonSepRulesDisjointChars!1670 rules!2135 rules!2135) e!2179877)))

(declare-fun b!3521707 () Bool)

(declare-fun e!2179878 () Bool)

(assert (=> b!3521707 (= e!2179877 e!2179878)))

(declare-fun res!1420426 () Bool)

(assert (=> b!3521707 (=> (not res!1420426) (not e!2179878))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!749 (Rule!10752 List!37468) Bool)

(assert (=> b!3521707 (= res!1420426 (ruleDisjointCharsFromAllFromOtherType!749 (h!42764 rules!2135) rules!2135))))

(declare-fun b!3521708 () Bool)

(assert (=> b!3521708 (= e!2179878 (sepAndNonSepRulesDisjointChars!1670 rules!2135 (t!281699 rules!2135)))))

(assert (= (and d!1027337 (not res!1420425)) b!3521707))

(assert (= (and b!3521707 res!1420426) b!3521708))

(declare-fun m!3972299 () Bool)

(assert (=> b!3521707 m!3972299))

(declare-fun m!3972301 () Bool)

(assert (=> b!3521708 m!3972301))

(assert (=> b!3520699 d!1027337))

(declare-fun d!1027339 () Bool)

(declare-fun lt!1202322 () Bool)

(assert (=> d!1027339 (= lt!1202322 (isEmpty!21812 (list!13659 (_2!21722 lt!1201925))))))

(assert (=> d!1027339 (= lt!1202322 (isEmpty!21813 (c!606753 (_2!21722 lt!1201925))))))

(assert (=> d!1027339 (= (isEmpty!21806 (_2!21722 lt!1201925)) lt!1202322)))

(declare-fun bs!565330 () Bool)

(assert (= bs!565330 d!1027339))

(declare-fun m!3972303 () Bool)

(assert (=> bs!565330 m!3972303))

(assert (=> bs!565330 m!3972303))

(declare-fun m!3972305 () Bool)

(assert (=> bs!565330 m!3972305))

(declare-fun m!3972307 () Bool)

(assert (=> bs!565330 m!3972307))

(assert (=> b!3520720 d!1027339))

(declare-fun b!3521719 () Bool)

(declare-fun e!2179881 () Bool)

(declare-fun tp_is_empty!17617 () Bool)

(assert (=> b!3521719 (= e!2179881 tp_is_empty!17617)))

(assert (=> b!3520716 (= tp!1086957 e!2179881)))

(declare-fun b!3521722 () Bool)

(declare-fun tp!1087037 () Bool)

(declare-fun tp!1087039 () Bool)

(assert (=> b!3521722 (= e!2179881 (and tp!1087037 tp!1087039))))

(declare-fun b!3521720 () Bool)

(declare-fun tp!1087035 () Bool)

(declare-fun tp!1087038 () Bool)

(assert (=> b!3521720 (= e!2179881 (and tp!1087035 tp!1087038))))

(declare-fun b!3521721 () Bool)

(declare-fun tp!1087036 () Bool)

(assert (=> b!3521721 (= e!2179881 tp!1087036)))

(assert (= (and b!3520716 ((_ is ElementMatch!10235) (regex!5476 (rule!8122 (h!42765 tokens!494))))) b!3521719))

(assert (= (and b!3520716 ((_ is Concat!15941) (regex!5476 (rule!8122 (h!42765 tokens!494))))) b!3521720))

(assert (= (and b!3520716 ((_ is Star!10235) (regex!5476 (rule!8122 (h!42765 tokens!494))))) b!3521721))

(assert (= (and b!3520716 ((_ is Union!10235) (regex!5476 (rule!8122 (h!42765 tokens!494))))) b!3521722))

(declare-fun b!3521723 () Bool)

(declare-fun e!2179882 () Bool)

(assert (=> b!3521723 (= e!2179882 tp_is_empty!17617)))

(assert (=> b!3520726 (= tp!1086955 e!2179882)))

(declare-fun b!3521726 () Bool)

(declare-fun tp!1087042 () Bool)

(declare-fun tp!1087044 () Bool)

(assert (=> b!3521726 (= e!2179882 (and tp!1087042 tp!1087044))))

(declare-fun b!3521724 () Bool)

(declare-fun tp!1087040 () Bool)

(declare-fun tp!1087043 () Bool)

(assert (=> b!3521724 (= e!2179882 (and tp!1087040 tp!1087043))))

(declare-fun b!3521725 () Bool)

(declare-fun tp!1087041 () Bool)

(assert (=> b!3521725 (= e!2179882 tp!1087041)))

(assert (= (and b!3520726 ((_ is ElementMatch!10235) (regex!5476 (rule!8122 separatorToken!241)))) b!3521723))

(assert (= (and b!3520726 ((_ is Concat!15941) (regex!5476 (rule!8122 separatorToken!241)))) b!3521724))

(assert (= (and b!3520726 ((_ is Star!10235) (regex!5476 (rule!8122 separatorToken!241)))) b!3521725))

(assert (= (and b!3520726 ((_ is Union!10235) (regex!5476 (rule!8122 separatorToken!241)))) b!3521726))

(declare-fun b!3521729 () Bool)

(declare-fun e!2179885 () Bool)

(assert (=> b!3521729 (= e!2179885 true)))

(declare-fun b!3521728 () Bool)

(declare-fun e!2179884 () Bool)

(assert (=> b!3521728 (= e!2179884 e!2179885)))

(declare-fun b!3521727 () Bool)

(declare-fun e!2179883 () Bool)

(assert (=> b!3521727 (= e!2179883 e!2179884)))

(assert (=> b!3520740 e!2179883))

(assert (= b!3521728 b!3521729))

(assert (= b!3521727 b!3521728))

(assert (= (and b!3520740 ((_ is Cons!37344) (t!281699 rules!2135))) b!3521727))

(assert (=> b!3521729 (< (dynLambda!15904 order!20085 (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135))))) (dynLambda!15905 order!20087 lambda!122743))))

(assert (=> b!3521729 (< (dynLambda!15906 order!20089 (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135))))) (dynLambda!15905 order!20087 lambda!122743))))

(declare-fun b!3521743 () Bool)

(declare-fun b_free!90749 () Bool)

(declare-fun b_next!91453 () Bool)

(assert (=> b!3521743 (= b_free!90749 (not b_next!91453))))

(declare-fun t!281796 () Bool)

(declare-fun tb!196699 () Bool)

(assert (=> (and b!3521743 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!281796) tb!196699))

(declare-fun result!241068 () Bool)

(assert (= result!241068 result!240984))

(assert (=> d!1027019 t!281796))

(declare-fun t!281798 () Bool)

(declare-fun tb!196701 () Bool)

(assert (=> (and b!3521743 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281798) tb!196701))

(declare-fun result!241070 () Bool)

(assert (= result!241070 result!240992))

(assert (=> d!1027029 t!281798))

(declare-fun b_and!250831 () Bool)

(declare-fun tp!1087057 () Bool)

(assert (=> b!3521743 (= tp!1087057 (and (=> t!281796 result!241068) (=> t!281798 result!241070) b_and!250831))))

(declare-fun b_free!90751 () Bool)

(declare-fun b_next!91455 () Bool)

(assert (=> b!3521743 (= b_free!90751 (not b_next!91455))))

(declare-fun t!281800 () Bool)

(declare-fun tb!196703 () Bool)

(assert (=> (and b!3521743 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281800) tb!196703))

(declare-fun result!241072 () Bool)

(assert (= result!241072 result!240976))

(assert (=> b!3520958 t!281800))

(assert (=> d!1027293 t!281800))

(declare-fun tb!196705 () Bool)

(declare-fun t!281802 () Bool)

(assert (=> (and b!3521743 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241)))) t!281802) tb!196705))

(declare-fun result!241074 () Bool)

(assert (= result!241074 result!241052))

(assert (=> b!3521700 t!281802))

(declare-fun t!281804 () Bool)

(declare-fun tb!196707 () Bool)

(assert (=> (and b!3521743 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!281804) tb!196707))

(declare-fun result!241076 () Bool)

(assert (= result!241076 result!241058))

(assert (=> d!1027317 t!281804))

(assert (=> d!1027313 t!281802))

(declare-fun tp!1087056 () Bool)

(declare-fun b_and!250833 () Bool)

(assert (=> b!3521743 (= tp!1087056 (and (=> t!281800 result!241072) (=> t!281802 result!241074) (=> t!281804 result!241076) b_and!250833))))

(declare-fun e!2179898 () Bool)

(declare-fun tp!1087059 () Bool)

(declare-fun b!3521742 () Bool)

(declare-fun e!2179903 () Bool)

(assert (=> b!3521742 (= e!2179898 (and tp!1087059 (inv!50574 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))) (inv!50578 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) e!2179903))))

(declare-fun e!2179900 () Bool)

(declare-fun b!3521741 () Bool)

(declare-fun tp!1087055 () Bool)

(assert (=> b!3521741 (= e!2179900 (and (inv!21 (value!176526 (h!42765 (t!281700 tokens!494)))) e!2179898 tp!1087055))))

(declare-fun e!2179902 () Bool)

(assert (=> b!3520711 (= tp!1086954 e!2179902)))

(assert (=> b!3521743 (= e!2179903 (and tp!1087057 tp!1087056))))

(declare-fun tp!1087058 () Bool)

(declare-fun b!3521740 () Bool)

(assert (=> b!3521740 (= e!2179902 (and (inv!50577 (h!42765 (t!281700 tokens!494))) e!2179900 tp!1087058))))

(assert (= b!3521742 b!3521743))

(assert (= b!3521741 b!3521742))

(assert (= b!3521740 b!3521741))

(assert (= (and b!3520711 ((_ is Cons!37345) (t!281700 tokens!494))) b!3521740))

(declare-fun m!3972309 () Bool)

(assert (=> b!3521742 m!3972309))

(declare-fun m!3972311 () Bool)

(assert (=> b!3521742 m!3972311))

(declare-fun m!3972313 () Bool)

(assert (=> b!3521741 m!3972313))

(declare-fun m!3972315 () Bool)

(assert (=> b!3521740 m!3972315))

(declare-fun b!3521754 () Bool)

(declare-fun b_free!90753 () Bool)

(declare-fun b_next!91457 () Bool)

(assert (=> b!3521754 (= b_free!90753 (not b_next!91457))))

(declare-fun tb!196709 () Bool)

(declare-fun t!281806 () Bool)

(assert (=> (and b!3521754 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!281806) tb!196709))

(declare-fun result!241080 () Bool)

(assert (= result!241080 result!240984))

(assert (=> d!1027019 t!281806))

(declare-fun tb!196711 () Bool)

(declare-fun t!281808 () Bool)

(assert (=> (and b!3521754 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281808) tb!196711))

(declare-fun result!241082 () Bool)

(assert (= result!241082 result!240992))

(assert (=> d!1027029 t!281808))

(declare-fun tp!1087070 () Bool)

(declare-fun b_and!250835 () Bool)

(assert (=> b!3521754 (= tp!1087070 (and (=> t!281806 result!241080) (=> t!281808 result!241082) b_and!250835))))

(declare-fun b_free!90755 () Bool)

(declare-fun b_next!91459 () Bool)

(assert (=> b!3521754 (= b_free!90755 (not b_next!91459))))

(declare-fun t!281810 () Bool)

(declare-fun tb!196713 () Bool)

(assert (=> (and b!3521754 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281810) tb!196713))

(declare-fun result!241084 () Bool)

(assert (= result!241084 result!240976))

(assert (=> b!3520958 t!281810))

(assert (=> d!1027293 t!281810))

(declare-fun tb!196715 () Bool)

(declare-fun t!281812 () Bool)

(assert (=> (and b!3521754 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241)))) t!281812) tb!196715))

(declare-fun result!241086 () Bool)

(assert (= result!241086 result!241052))

(assert (=> b!3521700 t!281812))

(declare-fun tb!196717 () Bool)

(declare-fun t!281814 () Bool)

(assert (=> (and b!3521754 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!281814) tb!196717))

(declare-fun result!241088 () Bool)

(assert (= result!241088 result!241058))

(assert (=> d!1027317 t!281814))

(assert (=> d!1027313 t!281812))

(declare-fun tp!1087069 () Bool)

(declare-fun b_and!250837 () Bool)

(assert (=> b!3521754 (= tp!1087069 (and (=> t!281812 result!241086) (=> t!281814 result!241088) (=> t!281810 result!241084) b_and!250837))))

(declare-fun e!2179915 () Bool)

(assert (=> b!3521754 (= e!2179915 (and tp!1087070 tp!1087069))))

(declare-fun b!3521753 () Bool)

(declare-fun tp!1087068 () Bool)

(declare-fun e!2179914 () Bool)

(assert (=> b!3521753 (= e!2179914 (and tp!1087068 (inv!50574 (tag!6114 (h!42764 (t!281699 rules!2135)))) (inv!50578 (transformation!5476 (h!42764 (t!281699 rules!2135)))) e!2179915))))

(declare-fun b!3521752 () Bool)

(declare-fun e!2179913 () Bool)

(declare-fun tp!1087071 () Bool)

(assert (=> b!3521752 (= e!2179913 (and e!2179914 tp!1087071))))

(assert (=> b!3520700 (= tp!1086948 e!2179913)))

(assert (= b!3521753 b!3521754))

(assert (= b!3521752 b!3521753))

(assert (= (and b!3520700 ((_ is Cons!37344) (t!281699 rules!2135))) b!3521752))

(declare-fun m!3972317 () Bool)

(assert (=> b!3521753 m!3972317))

(declare-fun m!3972319 () Bool)

(assert (=> b!3521753 m!3972319))

(declare-fun b!3521759 () Bool)

(declare-fun e!2179918 () Bool)

(declare-fun tp!1087074 () Bool)

(assert (=> b!3521759 (= e!2179918 (and tp_is_empty!17617 tp!1087074))))

(assert (=> b!3520721 (= tp!1086952 e!2179918)))

(assert (= (and b!3520721 ((_ is Cons!37343) (originalCharacters!6190 separatorToken!241))) b!3521759))

(declare-fun b!3521760 () Bool)

(declare-fun e!2179919 () Bool)

(assert (=> b!3521760 (= e!2179919 tp_is_empty!17617)))

(assert (=> b!3520701 (= tp!1086951 e!2179919)))

(declare-fun b!3521763 () Bool)

(declare-fun tp!1087077 () Bool)

(declare-fun tp!1087079 () Bool)

(assert (=> b!3521763 (= e!2179919 (and tp!1087077 tp!1087079))))

(declare-fun b!3521761 () Bool)

(declare-fun tp!1087075 () Bool)

(declare-fun tp!1087078 () Bool)

(assert (=> b!3521761 (= e!2179919 (and tp!1087075 tp!1087078))))

(declare-fun b!3521762 () Bool)

(declare-fun tp!1087076 () Bool)

(assert (=> b!3521762 (= e!2179919 tp!1087076)))

(assert (= (and b!3520701 ((_ is ElementMatch!10235) (regex!5476 (h!42764 rules!2135)))) b!3521760))

(assert (= (and b!3520701 ((_ is Concat!15941) (regex!5476 (h!42764 rules!2135)))) b!3521761))

(assert (= (and b!3520701 ((_ is Star!10235) (regex!5476 (h!42764 rules!2135)))) b!3521762))

(assert (= (and b!3520701 ((_ is Union!10235) (regex!5476 (h!42764 rules!2135)))) b!3521763))

(declare-fun b!3521764 () Bool)

(declare-fun e!2179920 () Bool)

(declare-fun tp!1087080 () Bool)

(assert (=> b!3521764 (= e!2179920 (and tp_is_empty!17617 tp!1087080))))

(assert (=> b!3520731 (= tp!1086947 e!2179920)))

(assert (= (and b!3520731 ((_ is Cons!37343) (originalCharacters!6190 (h!42765 tokens!494)))) b!3521764))

(declare-fun b_lambda!102813 () Bool)

(assert (= b_lambda!102803 (or (and b!3520694 b_free!90735 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3521743 b_free!90751) (and b!3521754 b_free!90755 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3520698 b_free!90739 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3520728 b_free!90731 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) b_lambda!102813)))

(declare-fun b_lambda!102815 () Bool)

(assert (= b_lambda!102753 (or (and b!3520694 b_free!90735 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3520698 b_free!90739) (and b!3521743 b_free!90751 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3521754 b_free!90755 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3520728 b_free!90731 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) b_lambda!102815)))

(declare-fun b_lambda!102817 () Bool)

(assert (= b_lambda!102771 (or b!3520730 b_lambda!102817)))

(declare-fun bs!565331 () Bool)

(declare-fun d!1027341 () Bool)

(assert (= bs!565331 (and d!1027341 b!3520730)))

(assert (=> bs!565331 (= (dynLambda!15912 lambda!122743 (h!42765 (t!281700 tokens!494))) (rulesProduceIndividualToken!2557 thiss!18206 rules!2135 (h!42765 (t!281700 tokens!494))))))

(assert (=> bs!565331 m!3970605))

(assert (=> d!1027183 d!1027341))

(declare-fun b_lambda!102819 () Bool)

(assert (= b_lambda!102799 (or (and b!3520694 b_free!90735 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3520698 b_free!90739) (and b!3521743 b_free!90751 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3521754 b_free!90755 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3520728 b_free!90731 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) b_lambda!102819)))

(declare-fun b_lambda!102821 () Bool)

(assert (= b_lambda!102809 (or b!3520722 b_lambda!102821)))

(declare-fun bs!565332 () Bool)

(declare-fun d!1027343 () Bool)

(assert (= bs!565332 (and d!1027343 b!3520722)))

(assert (=> bs!565332 (= (dynLambda!15912 lambda!122742 (h!42765 tokens!494)) (not (isSeparator!5476 (rule!8122 (h!42765 tokens!494)))))))

(assert (=> b!3521679 d!1027343))

(declare-fun b_lambda!102823 () Bool)

(assert (= b_lambda!102755 (or (and b!3520728 b_free!90729 (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3520698 b_free!90737 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3521743 b_free!90749) (and b!3521754 b_free!90753 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3520694 b_free!90733 (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) b_lambda!102823)))

(declare-fun b_lambda!102825 () Bool)

(assert (= b_lambda!102811 (or (and b!3520728 b_free!90731) (and b!3520698 b_free!90739 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))))) (and b!3521754 b_free!90755 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))))) (and b!3520694 b_free!90735 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))))) (and b!3521743 b_free!90751 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))))) b_lambda!102825)))

(declare-fun b_lambda!102827 () Bool)

(assert (= b_lambda!102807 (or b!3520722 b_lambda!102827)))

(assert (=> d!1027321 d!1027343))

(declare-fun b_lambda!102829 () Bool)

(assert (= b_lambda!102757 (or (and b!3521754 b_free!90753 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3520698 b_free!90737) (and b!3520694 b_free!90733 (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3520728 b_free!90729 (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3521743 b_free!90749 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) b_lambda!102829)))

(declare-fun b_lambda!102831 () Bool)

(assert (= b_lambda!102805 (or b!3520722 b_lambda!102831)))

(declare-fun bs!565333 () Bool)

(declare-fun d!1027345 () Bool)

(assert (= bs!565333 (and d!1027345 b!3520722)))

(assert (=> bs!565333 (= (dynLambda!15912 lambda!122742 (h!42765 (t!281700 tokens!494))) (not (isSeparator!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(assert (=> d!1027319 d!1027345))

(declare-fun b_lambda!102833 () Bool)

(assert (= b_lambda!102801 (or (and b!3520728 b_free!90731) (and b!3520698 b_free!90739 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))))) (and b!3521754 b_free!90755 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))))) (and b!3520694 b_free!90735 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))))) (and b!3521743 b_free!90751 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))))) b_lambda!102833)))

(check-sat (not b!3521619) (not b!3521027) (not d!1027243) (not b!3520913) (not b!3521268) (not bm!254411) (not b!3521741) (not b!3521702) b_and!250761 (not b!3521683) (not bm!254394) (not d!1027257) (not b!3521605) (not b_lambda!102827) (not d!1027009) (not d!1027331) (not b!3521669) (not d!1027123) (not b!3521030) (not d!1027297) (not bm!254408) (not b_next!91439) (not b_lambda!102815) (not bm!254395) (not bm!254410) (not d!1027035) (not b!3521523) (not b!3520949) (not b!3521069) (not b!3521325) (not b!3521661) (not d!1027067) (not b!3521285) (not b!3521701) (not b!3521003) (not b!3521626) (not b!3521559) b_and!250831 (not d!1027005) (not b!3520914) (not b!3521516) (not tb!196687) (not b!3521727) (not d!1027071) (not b!3521753) (not b!3521006) b_and!250825 (not b!3521489) (not b_next!91453) (not b!3521648) (not bm!254376) (not b!3521031) (not bm!254374) (not b!3520958) (not b!3521317) (not d!1026977) (not b!3521642) (not b_lambda!102823) (not b_lambda!102817) (not d!1027321) (not b!3521625) (not b!3520950) (not b!3521569) (not b!3521490) (not b!3521438) b_and!250833 (not d!1027319) (not d!1027147) (not d!1027277) (not d!1027279) (not b!3521494) (not b!3521721) (not b_next!91443) (not b!3521070) (not b!3520970) (not d!1027249) (not bs!565331) (not b!3521430) (not d!1027315) (not b!3521321) (not b_next!91441) (not b!3521026) (not b!3521671) (not b!3521492) (not d!1027285) (not b!3520987) (not b!3521137) (not b!3521004) (not b!3520804) (not bm!254361) (not b!3521266) (not d!1026957) (not b_next!91435) (not d!1027023) (not b!3520959) (not d!1027131) (not tb!196631) tp_is_empty!17617 (not b!3521440) (not d!1027317) (not b!3521618) (not b!3520803) (not b!3521324) (not b!3521686) (not b!3521034) (not tb!196625) (not b!3521646) (not b!3520965) (not b!3521707) (not b!3521270) (not d!1027025) (not b!3521028) (not d!1027233) (not b!3521522) (not b!3521641) (not tb!196637) (not b!3520948) (not b_lambda!102833) (not d!1027013) (not b!3521323) (not b!3520937) (not b!3521685) (not b!3521273) (not d!1027207) (not b_next!91437) (not d!1027335) (not b!3521561) (not b!3521578) (not d!1027313) (not b!3521762) (not b!3521668) (not b!3521149) (not b!3521322) (not b!3521437) (not d!1027205) (not d!1027253) (not d!1027073) (not d!1027203) (not b!3521657) (not b!3521558) (not d!1027291) (not b!3521271) (not b!3521674) (not d!1027229) (not d!1027259) (not b!3520942) (not b!3521320) (not d!1027283) (not d!1027255) (not b!3521495) (not d!1027033) (not b!3521423) (not b_lambda!102819) (not b!3520964) (not b!3521631) (not b!3520966) (not d!1027125) (not b!3521693) (not d!1027129) (not d!1027245) (not b!3521653) (not d!1027133) (not b_next!91433) (not b!3521672) (not b!3521029) (not b!3521763) (not d!1027301) (not b!3521635) (not b!3521496) (not d!1026997) (not b!3520981) (not b!3521698) (not bm!254338) (not b!3520912) (not b_lambda!102829) (not b!3520815) (not b!3521656) (not d!1027041) (not d!1027339) (not d!1027263) (not b!3521493) (not b!3521265) (not b!3520810) (not b!3521680) b_and!250829 (not b!3521720) (not b!3521432) (not d!1026945) (not bm!254396) (not d!1027121) (not b!3521389) (not d!1027011) (not b!3521148) (not b!3521573) (not d!1027181) (not b!3521392) (not b!3521634) (not b!3521404) (not b!3521742) (not b_next!91459) (not b!3521673) (not b!3521267) (not b!3521405) (not b_next!91455) (not b!3521660) (not d!1026955) (not b!3521722) (not b!3521571) b_and!250759 (not d!1027211) b_and!250837 (not b!3520819) (not b_lambda!102821) b_and!250827 (not d!1026983) (not d!1027015) (not d!1027021) (not b!3521639) (not b!3521665) (not b!3520938) (not b!3520941) (not b_next!91457) b_and!250835 (not b!3520808) (not d!1027275) (not b!3521402) (not bm!254358) (not b!3521390) (not b!3521726) (not b!3521621) (not d!1027119) (not d!1027127) (not d!1027007) (not d!1027247) (not b!3521724) (not b!3521752) (not b!3521708) (not bm!254372) (not bm!254409) (not b!3521525) (not d!1027175) (not d!1027305) (not d!1027117) (not d!1027001) (not d!1026987) (not b!3521630) (not b!3520973) (not bm!254375) (not bm!254370) (not tb!196693) (not b!3521725) b_and!250757 (not b!3520811) (not d!1027311) (not b_lambda!102813) (not b!3521560) (not b!3521682) (not b!3520953) (not b!3521663) (not b!3521759) (not b!3521150) (not d!1027173) (not b!3521032) (not b!3521761) (not d!1026999) (not b!3521740) (not b!3521694) (not b!3520972) (not b!3521318) (not b!3520977) (not b!3521700) (not b!3520917) (not b!3521764) (not b!3521691) (not d!1027287) (not d!1027251) (not b_lambda!102831) (not b_lambda!102825) (not b!3521403) (not bm!254371) (not b!3521283) (not b!3521623) (not b!3521276) (not d!1027303) (not b!3521687) (not b!3521497) (not b!3521138) (not d!1027183) (not d!1027293) (not d!1027327))
(check-sat b_and!250831 b_and!250825 (not b_next!91453) b_and!250833 (not b_next!91443) (not b_next!91441) (not b_next!91435) (not b_next!91437) (not b_next!91433) b_and!250829 b_and!250827 b_and!250757 b_and!250761 (not b_next!91439) (not b_next!91459) (not b_next!91455) b_and!250759 b_and!250837 (not b_next!91457) b_and!250835)
(get-model)

(assert (=> d!1027119 d!1027071))

(declare-fun d!1027695 () Bool)

(assert (=> d!1027695 (rulesProduceIndividualToken!2557 thiss!18206 rules!2135 (h!42765 (t!281700 tokens!494)))))

(assert (=> d!1027695 true))

(declare-fun _$77!1015 () Unit!52994)

(assert (=> d!1027695 (= (choose!20443 thiss!18206 rules!2135 tokens!494 (h!42765 (t!281700 tokens!494))) _$77!1015)))

(declare-fun bs!565385 () Bool)

(assert (= bs!565385 d!1027695))

(assert (=> bs!565385 m!3970605))

(assert (=> d!1027119 d!1027695))

(assert (=> d!1027119 d!1027281))

(declare-fun b!3522366 () Bool)

(declare-fun e!2180277 () Bool)

(declare-fun call!254473 () Bool)

(assert (=> b!3522366 (= e!2180277 call!254473)))

(declare-fun d!1027755 () Bool)

(declare-fun res!1420654 () Bool)

(declare-fun e!2180280 () Bool)

(assert (=> d!1027755 (=> res!1420654 e!2180280)))

(assert (=> d!1027755 (= res!1420654 ((_ is ElementMatch!10235) (ite c!606932 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606933 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))

(assert (=> d!1027755 (= (validRegex!4674 (ite c!606932 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606933 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))) e!2180280)))

(declare-fun b!3522367 () Bool)

(declare-fun res!1420658 () Bool)

(declare-fun e!2180279 () Bool)

(assert (=> b!3522367 (=> (not res!1420658) (not e!2180279))))

(declare-fun call!254472 () Bool)

(assert (=> b!3522367 (= res!1420658 call!254472)))

(declare-fun e!2180283 () Bool)

(assert (=> b!3522367 (= e!2180283 e!2180279)))

(declare-fun b!3522368 () Bool)

(declare-fun e!2180278 () Bool)

(declare-fun call!254471 () Bool)

(assert (=> b!3522368 (= e!2180278 call!254471)))

(declare-fun bm!254466 () Bool)

(assert (=> bm!254466 (= call!254471 call!254473)))

(declare-fun b!3522369 () Bool)

(assert (=> b!3522369 (= e!2180279 call!254471)))

(declare-fun c!607141 () Bool)

(declare-fun c!607142 () Bool)

(declare-fun bm!254467 () Bool)

(assert (=> bm!254467 (= call!254473 (validRegex!4674 (ite c!607141 (reg!10564 (ite c!606932 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606933 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))) (ite c!607142 (regTwo!20983 (ite c!606932 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606933 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))) (regTwo!20982 (ite c!606932 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606933 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))))))

(declare-fun b!3522370 () Bool)

(declare-fun e!2180281 () Bool)

(assert (=> b!3522370 (= e!2180280 e!2180281)))

(assert (=> b!3522370 (= c!607141 ((_ is Star!10235) (ite c!606932 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606933 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))

(declare-fun b!3522371 () Bool)

(declare-fun res!1420655 () Bool)

(declare-fun e!2180282 () Bool)

(assert (=> b!3522371 (=> res!1420655 e!2180282)))

(assert (=> b!3522371 (= res!1420655 (not ((_ is Concat!15941) (ite c!606932 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606933 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))))

(assert (=> b!3522371 (= e!2180283 e!2180282)))

(declare-fun b!3522372 () Bool)

(assert (=> b!3522372 (= e!2180281 e!2180283)))

(assert (=> b!3522372 (= c!607142 ((_ is Union!10235) (ite c!606932 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606933 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))

(declare-fun b!3522373 () Bool)

(assert (=> b!3522373 (= e!2180281 e!2180277)))

(declare-fun res!1420656 () Bool)

(assert (=> b!3522373 (= res!1420656 (not (nullable!3517 (reg!10564 (ite c!606932 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606933 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))))

(assert (=> b!3522373 (=> (not res!1420656) (not e!2180277))))

(declare-fun b!3522374 () Bool)

(assert (=> b!3522374 (= e!2180282 e!2180278)))

(declare-fun res!1420657 () Bool)

(assert (=> b!3522374 (=> (not res!1420657) (not e!2180278))))

(assert (=> b!3522374 (= res!1420657 call!254472)))

(declare-fun bm!254468 () Bool)

(assert (=> bm!254468 (= call!254472 (validRegex!4674 (ite c!607142 (regOne!20983 (ite c!606932 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606933 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))) (regOne!20982 (ite c!606932 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606933 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))))

(assert (= (and d!1027755 (not res!1420654)) b!3522370))

(assert (= (and b!3522370 c!607141) b!3522373))

(assert (= (and b!3522370 (not c!607141)) b!3522372))

(assert (= (and b!3522373 res!1420656) b!3522366))

(assert (= (and b!3522372 c!607142) b!3522367))

(assert (= (and b!3522372 (not c!607142)) b!3522371))

(assert (= (and b!3522367 res!1420658) b!3522369))

(assert (= (and b!3522371 (not res!1420655)) b!3522374))

(assert (= (and b!3522374 res!1420657) b!3522368))

(assert (= (or b!3522369 b!3522368) bm!254466))

(assert (= (or b!3522367 b!3522374) bm!254468))

(assert (= (or b!3522366 bm!254466) bm!254467))

(declare-fun m!3973487 () Bool)

(assert (=> bm!254467 m!3973487))

(declare-fun m!3973489 () Bool)

(assert (=> b!3522373 m!3973489))

(declare-fun m!3973491 () Bool)

(assert (=> bm!254468 m!3973491))

(assert (=> bm!254408 d!1027755))

(declare-fun d!1027757 () Bool)

(declare-fun charsToBigInt!1 (List!37466) Int)

(assert (=> d!1027757 (= (inv!17 (value!176526 separatorToken!241)) (= (charsToBigInt!1 (text!40390 (value!176526 separatorToken!241))) (value!176518 (value!176526 separatorToken!241))))))

(declare-fun bs!565386 () Bool)

(assert (= bs!565386 d!1027757))

(declare-fun m!3973493 () Bool)

(assert (=> bs!565386 m!3973493))

(assert (=> b!3521683 d!1027757))

(declare-fun d!1027759 () Bool)

(declare-fun lt!1202635 () Int)

(assert (=> d!1027759 (>= lt!1202635 0)))

(declare-fun e!2180284 () Int)

(assert (=> d!1027759 (= lt!1202635 e!2180284)))

(declare-fun c!607143 () Bool)

(assert (=> d!1027759 (= c!607143 ((_ is Nil!37343) (_2!21723 (get!11991 lt!1202279))))))

(assert (=> d!1027759 (= (size!28412 (_2!21723 (get!11991 lt!1202279))) lt!1202635)))

(declare-fun b!3522375 () Bool)

(assert (=> b!3522375 (= e!2180284 0)))

(declare-fun b!3522376 () Bool)

(assert (=> b!3522376 (= e!2180284 (+ 1 (size!28412 (t!281698 (_2!21723 (get!11991 lt!1202279))))))))

(assert (= (and d!1027759 c!607143) b!3522375))

(assert (= (and d!1027759 (not c!607143)) b!3522376))

(declare-fun m!3973495 () Bool)

(assert (=> b!3522376 m!3973495))

(assert (=> b!3521494 d!1027759))

(declare-fun d!1027761 () Bool)

(assert (=> d!1027761 (= (get!11991 lt!1202279) (v!37101 lt!1202279))))

(assert (=> b!3521494 d!1027761))

(assert (=> b!3521494 d!1027195))

(assert (=> b!3520953 d!1027013))

(declare-fun d!1027763 () Bool)

(assert (=> d!1027763 (= (list!13659 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241))) (list!13663 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241)))))))

(declare-fun bs!565387 () Bool)

(assert (= bs!565387 d!1027763))

(declare-fun m!3973497 () Bool)

(assert (=> bs!565387 m!3973497))

(assert (=> b!3521700 d!1027763))

(declare-fun d!1027765 () Bool)

(declare-fun list!13665 (Conc!11328) List!37469)

(assert (=> d!1027765 (= (dropList!1235 lt!1201912 0) (drop!2049 (list!13665 (c!606754 lt!1201912)) 0))))

(declare-fun bs!565388 () Bool)

(assert (= bs!565388 d!1027765))

(declare-fun m!3973499 () Bool)

(assert (=> bs!565388 m!3973499))

(assert (=> bs!565388 m!3973499))

(declare-fun m!3973501 () Bool)

(assert (=> bs!565388 m!3973501))

(assert (=> d!1027131 d!1027765))

(declare-fun d!1027767 () Bool)

(assert (=> d!1027767 (= (list!13659 lt!1202199) (list!13663 (c!606753 lt!1202199)))))

(declare-fun bs!565389 () Bool)

(assert (= bs!565389 d!1027767))

(declare-fun m!3973503 () Bool)

(assert (=> bs!565389 m!3973503))

(assert (=> d!1027131 d!1027767))

(declare-fun d!1027769 () Bool)

(assert (=> d!1027769 (= (list!13659 (BalanceConc!22269 Empty!11327)) (list!13663 (c!606753 (BalanceConc!22269 Empty!11327))))))

(declare-fun bs!565390 () Bool)

(assert (= bs!565390 d!1027769))

(declare-fun m!3973505 () Bool)

(assert (=> bs!565390 m!3973505))

(assert (=> d!1027131 d!1027769))

(declare-fun d!1027771 () Bool)

(declare-fun lt!1202636 () Int)

(assert (=> d!1027771 (= lt!1202636 (size!28417 (list!13662 lt!1201912)))))

(assert (=> d!1027771 (= lt!1202636 (size!28418 (c!606754 lt!1201912)))))

(assert (=> d!1027771 (= (size!28413 lt!1201912) lt!1202636)))

(declare-fun bs!565391 () Bool)

(assert (= bs!565391 d!1027771))

(assert (=> bs!565391 m!3971579))

(assert (=> bs!565391 m!3971579))

(declare-fun m!3973507 () Bool)

(assert (=> bs!565391 m!3973507))

(declare-fun m!3973509 () Bool)

(assert (=> bs!565391 m!3973509))

(assert (=> d!1027131 d!1027771))

(declare-fun d!1027773 () Bool)

(declare-fun lt!1202649 () List!37467)

(assert (=> d!1027773 (= lt!1202649 (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) (printList!1613 thiss!18206 (dropList!1235 lt!1201912 0))))))

(declare-fun e!2180287 () List!37467)

(assert (=> d!1027773 (= lt!1202649 e!2180287)))

(declare-fun c!607146 () Bool)

(assert (=> d!1027773 (= c!607146 ((_ is Cons!37345) (dropList!1235 lt!1201912 0)))))

(assert (=> d!1027773 (= (printListTailRec!718 thiss!18206 (dropList!1235 lt!1201912 0) (list!13659 (BalanceConc!22269 Empty!11327))) lt!1202649)))

(declare-fun b!3522381 () Bool)

(assert (=> b!3522381 (= e!2180287 (printListTailRec!718 thiss!18206 (t!281700 (dropList!1235 lt!1201912 0)) (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) (list!13659 (charsOf!3490 (h!42765 (dropList!1235 lt!1201912 0)))))))))

(declare-fun lt!1202651 () List!37467)

(assert (=> b!3522381 (= lt!1202651 (list!13659 (charsOf!3490 (h!42765 (dropList!1235 lt!1201912 0)))))))

(declare-fun lt!1202650 () List!37467)

(assert (=> b!3522381 (= lt!1202650 (printList!1613 thiss!18206 (t!281700 (dropList!1235 lt!1201912 0))))))

(declare-fun lt!1202647 () Unit!52994)

(assert (=> b!3522381 (= lt!1202647 (lemmaConcatAssociativity!2008 (list!13659 (BalanceConc!22269 Empty!11327)) lt!1202651 lt!1202650))))

(assert (=> b!3522381 (= (++!9253 (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) lt!1202651) lt!1202650) (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) (++!9253 lt!1202651 lt!1202650)))))

(declare-fun lt!1202648 () Unit!52994)

(assert (=> b!3522381 (= lt!1202648 lt!1202647)))

(declare-fun b!3522382 () Bool)

(assert (=> b!3522382 (= e!2180287 (list!13659 (BalanceConc!22269 Empty!11327)))))

(assert (= (and d!1027773 c!607146) b!3522381))

(assert (= (and d!1027773 (not c!607146)) b!3522382))

(assert (=> d!1027773 m!3971547))

(declare-fun m!3973511 () Bool)

(assert (=> d!1027773 m!3973511))

(assert (=> d!1027773 m!3971545))

(assert (=> d!1027773 m!3973511))

(declare-fun m!3973513 () Bool)

(assert (=> d!1027773 m!3973513))

(declare-fun m!3973515 () Bool)

(assert (=> b!3522381 m!3973515))

(assert (=> b!3522381 m!3971545))

(declare-fun m!3973517 () Bool)

(assert (=> b!3522381 m!3973517))

(declare-fun m!3973519 () Bool)

(assert (=> b!3522381 m!3973519))

(assert (=> b!3522381 m!3971545))

(declare-fun m!3973521 () Bool)

(assert (=> b!3522381 m!3973521))

(declare-fun m!3973523 () Bool)

(assert (=> b!3522381 m!3973523))

(declare-fun m!3973525 () Bool)

(assert (=> b!3522381 m!3973525))

(assert (=> b!3522381 m!3973517))

(assert (=> b!3522381 m!3971545))

(declare-fun m!3973527 () Bool)

(assert (=> b!3522381 m!3973527))

(assert (=> b!3522381 m!3973523))

(assert (=> b!3522381 m!3971545))

(declare-fun m!3973529 () Bool)

(assert (=> b!3522381 m!3973529))

(declare-fun m!3973531 () Bool)

(assert (=> b!3522381 m!3973531))

(assert (=> b!3522381 m!3973515))

(assert (=> b!3522381 m!3973527))

(assert (=> b!3522381 m!3973521))

(declare-fun m!3973533 () Bool)

(assert (=> b!3522381 m!3973533))

(assert (=> d!1027131 d!1027773))

(declare-fun d!1027775 () Bool)

(declare-fun nullableFct!1023 (Regex!10235) Bool)

(assert (=> d!1027775 (= (nullable!3517 (regex!5476 (rule!8122 separatorToken!241))) (nullableFct!1023 (regex!5476 (rule!8122 separatorToken!241))))))

(declare-fun bs!565392 () Bool)

(assert (= bs!565392 d!1027775))

(declare-fun m!3973535 () Bool)

(assert (=> bs!565392 m!3973535))

(assert (=> b!3520973 d!1027775))

(declare-fun d!1027777 () Bool)

(declare-fun e!2180290 () Bool)

(assert (=> d!1027777 e!2180290))

(declare-fun res!1420661 () Bool)

(assert (=> d!1027777 (=> (not res!1420661) (not e!2180290))))

(declare-fun lt!1202654 () BalanceConc!22270)

(assert (=> d!1027777 (= res!1420661 (= (list!13662 lt!1202654) tokens!494))))

(declare-fun fromList!771 (List!37469) Conc!11328)

(assert (=> d!1027777 (= lt!1202654 (BalanceConc!22271 (fromList!771 tokens!494)))))

(assert (=> d!1027777 (= (fromListB!1843 tokens!494) lt!1202654)))

(declare-fun b!3522385 () Bool)

(assert (=> b!3522385 (= e!2180290 (isBalanced!3457 (fromList!771 tokens!494)))))

(assert (= (and d!1027777 res!1420661) b!3522385))

(declare-fun m!3973537 () Bool)

(assert (=> d!1027777 m!3973537))

(declare-fun m!3973539 () Bool)

(assert (=> d!1027777 m!3973539))

(assert (=> b!3522385 m!3973539))

(assert (=> b!3522385 m!3973539))

(declare-fun m!3973541 () Bool)

(assert (=> b!3522385 m!3973541))

(assert (=> d!1027285 d!1027777))

(declare-fun d!1027779 () Bool)

(assert (=> d!1027779 (= (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494))))) (v!37100 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494))))))))

(assert (=> b!3521070 d!1027779))

(assert (=> b!3521070 d!1027021))

(declare-fun d!1027781 () Bool)

(assert (=> d!1027781 (= (list!13659 lt!1202318) (list!13663 (c!606753 lt!1202318)))))

(declare-fun bs!565393 () Bool)

(assert (= bs!565393 d!1027781))

(declare-fun m!3973543 () Bool)

(assert (=> bs!565393 m!3973543))

(assert (=> d!1027317 d!1027781))

(declare-fun d!1027783 () Bool)

(assert (=> d!1027783 (= (head!7385 lt!1201911) (h!42763 lt!1201911))))

(assert (=> b!3520808 d!1027783))

(declare-fun d!1027785 () Bool)

(declare-fun lt!1202695 () Token!10318)

(assert (=> d!1027785 (contains!7008 (list!13662 (_1!21722 lt!1201925)) lt!1202695)))

(declare-fun e!2180303 () Token!10318)

(assert (=> d!1027785 (= lt!1202695 e!2180303)))

(declare-fun c!607158 () Bool)

(assert (=> d!1027785 (= c!607158 (= 0 0))))

(declare-fun e!2180304 () Bool)

(assert (=> d!1027785 e!2180304))

(declare-fun res!1420664 () Bool)

(assert (=> d!1027785 (=> (not res!1420664) (not e!2180304))))

(assert (=> d!1027785 (= res!1420664 (<= 0 0))))

(assert (=> d!1027785 (= (apply!8898 (list!13662 (_1!21722 lt!1201925)) 0) lt!1202695)))

(declare-fun b!3522408 () Bool)

(assert (=> b!3522408 (= e!2180304 (< 0 (size!28417 (list!13662 (_1!21722 lt!1201925)))))))

(declare-fun b!3522409 () Bool)

(assert (=> b!3522409 (= e!2180303 (head!7387 (list!13662 (_1!21722 lt!1201925))))))

(declare-fun b!3522410 () Bool)

(assert (=> b!3522410 (= e!2180303 (apply!8898 (tail!5493 (list!13662 (_1!21722 lt!1201925))) (- 0 1)))))

(assert (= (and d!1027785 res!1420664) b!3522408))

(assert (= (and d!1027785 c!607158) b!3522409))

(assert (= (and d!1027785 (not c!607158)) b!3522410))

(assert (=> d!1027785 m!3971005))

(declare-fun m!3973545 () Bool)

(assert (=> d!1027785 m!3973545))

(assert (=> b!3522408 m!3971005))

(assert (=> b!3522408 m!3971043))

(assert (=> b!3522409 m!3971005))

(declare-fun m!3973547 () Bool)

(assert (=> b!3522409 m!3973547))

(assert (=> b!3522410 m!3971005))

(declare-fun m!3973549 () Bool)

(assert (=> b!3522410 m!3973549))

(assert (=> b!3522410 m!3973549))

(declare-fun m!3973551 () Bool)

(assert (=> b!3522410 m!3973551))

(assert (=> d!1027001 d!1027785))

(declare-fun d!1027787 () Bool)

(assert (=> d!1027787 (= (list!13662 (_1!21722 lt!1201925)) (list!13665 (c!606754 (_1!21722 lt!1201925))))))

(declare-fun bs!565394 () Bool)

(assert (= bs!565394 d!1027787))

(declare-fun m!3973553 () Bool)

(assert (=> bs!565394 m!3973553))

(assert (=> d!1027001 d!1027787))

(declare-fun b!3522437 () Bool)

(declare-fun e!2180323 () Token!10318)

(declare-fun e!2180324 () Token!10318)

(assert (=> b!3522437 (= e!2180323 e!2180324)))

(declare-fun lt!1202718 () Bool)

(declare-fun appendIndex!357 (List!37469 List!37469 Int) Bool)

(assert (=> b!3522437 (= lt!1202718 (appendIndex!357 (list!13665 (left!29168 (c!606754 (_1!21722 lt!1201925)))) (list!13665 (right!29498 (c!606754 (_1!21722 lt!1201925)))) 0))))

(declare-fun c!607169 () Bool)

(assert (=> b!3522437 (= c!607169 (< 0 (size!28418 (left!29168 (c!606754 (_1!21722 lt!1201925))))))))

(declare-fun b!3522438 () Bool)

(declare-fun e!2180322 () Bool)

(assert (=> b!3522438 (= e!2180322 (< 0 (size!28418 (c!606754 (_1!21722 lt!1201925)))))))

(declare-fun b!3522439 () Bool)

(declare-fun apply!8902 (IArray!22661 Int) Token!10318)

(assert (=> b!3522439 (= e!2180323 (apply!8902 (xs!14518 (c!606754 (_1!21722 lt!1201925))) 0))))

(declare-fun bm!254487 () Bool)

(declare-fun c!607171 () Bool)

(assert (=> bm!254487 (= c!607171 c!607169)))

(declare-fun call!254492 () Token!10318)

(declare-fun e!2180321 () Int)

(assert (=> bm!254487 (= call!254492 (apply!8899 (ite c!607169 (left!29168 (c!606754 (_1!21722 lt!1201925))) (right!29498 (c!606754 (_1!21722 lt!1201925)))) e!2180321))))

(declare-fun b!3522440 () Bool)

(assert (=> b!3522440 (= e!2180321 (- 0 (size!28418 (left!29168 (c!606754 (_1!21722 lt!1201925))))))))

(declare-fun b!3522442 () Bool)

(assert (=> b!3522442 (= e!2180324 call!254492)))

(declare-fun b!3522443 () Bool)

(assert (=> b!3522443 (= e!2180324 call!254492)))

(declare-fun b!3522441 () Bool)

(assert (=> b!3522441 (= e!2180321 0)))

(declare-fun d!1027789 () Bool)

(declare-fun lt!1202719 () Token!10318)

(assert (=> d!1027789 (= lt!1202719 (apply!8898 (list!13665 (c!606754 (_1!21722 lt!1201925))) 0))))

(assert (=> d!1027789 (= lt!1202719 e!2180323)))

(declare-fun c!607170 () Bool)

(assert (=> d!1027789 (= c!607170 ((_ is Leaf!17677) (c!606754 (_1!21722 lt!1201925))))))

(assert (=> d!1027789 e!2180322))

(declare-fun res!1420671 () Bool)

(assert (=> d!1027789 (=> (not res!1420671) (not e!2180322))))

(assert (=> d!1027789 (= res!1420671 (<= 0 0))))

(assert (=> d!1027789 (= (apply!8899 (c!606754 (_1!21722 lt!1201925)) 0) lt!1202719)))

(assert (= (and d!1027789 res!1420671) b!3522438))

(assert (= (and d!1027789 c!607170) b!3522439))

(assert (= (and d!1027789 (not c!607170)) b!3522437))

(assert (= (and b!3522437 c!607169) b!3522443))

(assert (= (and b!3522437 (not c!607169)) b!3522442))

(assert (= (or b!3522443 b!3522442) bm!254487))

(assert (= (and bm!254487 c!607171) b!3522441))

(assert (= (and bm!254487 (not c!607171)) b!3522440))

(assert (=> b!3522438 m!3971045))

(declare-fun m!3973555 () Bool)

(assert (=> b!3522437 m!3973555))

(declare-fun m!3973557 () Bool)

(assert (=> b!3522437 m!3973557))

(assert (=> b!3522437 m!3973555))

(assert (=> b!3522437 m!3973557))

(declare-fun m!3973559 () Bool)

(assert (=> b!3522437 m!3973559))

(declare-fun m!3973561 () Bool)

(assert (=> b!3522437 m!3973561))

(declare-fun m!3973563 () Bool)

(assert (=> b!3522439 m!3973563))

(declare-fun m!3973565 () Bool)

(assert (=> bm!254487 m!3973565))

(assert (=> d!1027789 m!3973553))

(assert (=> d!1027789 m!3973553))

(declare-fun m!3973567 () Bool)

(assert (=> d!1027789 m!3973567))

(assert (=> b!3522440 m!3973561))

(assert (=> d!1027001 d!1027789))

(declare-fun d!1027791 () Bool)

(assert (=> d!1027791 (= (isEmpty!21815 lt!1202279) (not ((_ is Some!7613) lt!1202279)))))

(assert (=> d!1027233 d!1027791))

(declare-fun d!1027793 () Bool)

(assert (=> d!1027793 (= (isEmpty!21812 (_1!21727 lt!1202282)) ((_ is Nil!37343) (_1!21727 lt!1202282)))))

(assert (=> d!1027233 d!1027793))

(declare-fun d!1027795 () Bool)

(declare-fun lt!1202774 () tuple2!37186)

(assert (=> d!1027795 (= (++!9253 (_1!21727 lt!1202774) (_2!21727 lt!1202774)) lt!1201911)))

(declare-fun sizeTr!216 (List!37467 Int) Int)

(assert (=> d!1027795 (= lt!1202774 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 0 lt!1201911 lt!1201911 (sizeTr!216 lt!1201911 0)))))

(declare-fun lt!1202772 () Unit!52994)

(declare-fun lt!1202773 () Unit!52994)

(assert (=> d!1027795 (= lt!1202772 lt!1202773)))

(declare-fun lt!1202771 () List!37467)

(declare-fun lt!1202776 () Int)

(assert (=> d!1027795 (= (sizeTr!216 lt!1202771 lt!1202776) (+ (size!28412 lt!1202771) lt!1202776))))

(declare-fun lemmaSizeTrEqualsSize!215 (List!37467 Int) Unit!52994)

(assert (=> d!1027795 (= lt!1202773 (lemmaSizeTrEqualsSize!215 lt!1202771 lt!1202776))))

(assert (=> d!1027795 (= lt!1202776 0)))

(assert (=> d!1027795 (= lt!1202771 Nil!37343)))

(declare-fun lt!1202777 () Unit!52994)

(declare-fun lt!1202778 () Unit!52994)

(assert (=> d!1027795 (= lt!1202777 lt!1202778)))

(declare-fun lt!1202775 () Int)

(assert (=> d!1027795 (= (sizeTr!216 lt!1201911 lt!1202775) (+ (size!28412 lt!1201911) lt!1202775))))

(assert (=> d!1027795 (= lt!1202778 (lemmaSizeTrEqualsSize!215 lt!1201911 lt!1202775))))

(assert (=> d!1027795 (= lt!1202775 0)))

(assert (=> d!1027795 (validRegex!4674 (regex!5476 (rule!8122 (h!42765 tokens!494))))))

(assert (=> d!1027795 (= (findLongestMatch!854 (regex!5476 (rule!8122 (h!42765 tokens!494))) lt!1201911) lt!1202774)))

(declare-fun bs!565398 () Bool)

(assert (= bs!565398 d!1027795))

(declare-fun m!3973629 () Bool)

(assert (=> bs!565398 m!3973629))

(declare-fun m!3973631 () Bool)

(assert (=> bs!565398 m!3973631))

(declare-fun m!3973633 () Bool)

(assert (=> bs!565398 m!3973633))

(declare-fun m!3973635 () Bool)

(assert (=> bs!565398 m!3973635))

(declare-fun m!3973637 () Bool)

(assert (=> bs!565398 m!3973637))

(declare-fun m!3973639 () Bool)

(assert (=> bs!565398 m!3973639))

(declare-fun m!3973641 () Bool)

(assert (=> bs!565398 m!3973641))

(declare-fun m!3973643 () Bool)

(assert (=> bs!565398 m!3973643))

(assert (=> bs!565398 m!3973639))

(declare-fun m!3973647 () Bool)

(assert (=> bs!565398 m!3973647))

(assert (=> bs!565398 m!3970641))

(assert (=> d!1027233 d!1027795))

(declare-fun d!1027809 () Bool)

(declare-fun res!1420690 () Bool)

(declare-fun e!2180352 () Bool)

(assert (=> d!1027809 (=> (not res!1420690) (not e!2180352))))

(assert (=> d!1027809 (= res!1420690 (validRegex!4674 (regex!5476 (rule!8122 (h!42765 tokens!494)))))))

(assert (=> d!1027809 (= (ruleValid!1772 thiss!18206 (rule!8122 (h!42765 tokens!494))) e!2180352)))

(declare-fun b!3522490 () Bool)

(declare-fun res!1420691 () Bool)

(assert (=> b!3522490 (=> (not res!1420691) (not e!2180352))))

(assert (=> b!3522490 (= res!1420691 (not (nullable!3517 (regex!5476 (rule!8122 (h!42765 tokens!494))))))))

(declare-fun b!3522491 () Bool)

(assert (=> b!3522491 (= e!2180352 (not (= (tag!6114 (rule!8122 (h!42765 tokens!494))) (String!41865 ""))))))

(assert (= (and d!1027809 res!1420690) b!3522490))

(assert (= (and b!3522490 res!1420691) b!3522491))

(assert (=> d!1027809 m!3973633))

(declare-fun m!3973673 () Bool)

(assert (=> b!3522490 m!3973673))

(assert (=> d!1027233 d!1027809))

(declare-fun d!1027817 () Bool)

(assert (=> d!1027817 (= (isEmpty!21812 lt!1201914) ((_ is Nil!37343) lt!1201914))))

(assert (=> bm!254411 d!1027817))

(declare-fun d!1027819 () Bool)

(declare-fun c!607189 () Bool)

(assert (=> d!1027819 (= c!607189 ((_ is Nil!37343) lt!1202029))))

(declare-fun e!2180356 () (InoxSet C!20656))

(assert (=> d!1027819 (= (content!5263 lt!1202029) e!2180356)))

(declare-fun b!3522497 () Bool)

(assert (=> b!3522497 (= e!2180356 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3522498 () Bool)

(assert (=> b!3522498 (= e!2180356 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 lt!1202029) true) (content!5263 (t!281698 lt!1202029))))))

(assert (= (and d!1027819 c!607189) b!3522497))

(assert (= (and d!1027819 (not c!607189)) b!3522498))

(declare-fun m!3973697 () Bool)

(assert (=> b!3522498 m!3973697))

(declare-fun m!3973699 () Bool)

(assert (=> b!3522498 m!3973699))

(assert (=> d!1026987 d!1027819))

(declare-fun d!1027827 () Bool)

(declare-fun c!607190 () Bool)

(assert (=> d!1027827 (= c!607190 ((_ is Nil!37343) (++!9253 lt!1201911 lt!1201944)))))

(declare-fun e!2180357 () (InoxSet C!20656))

(assert (=> d!1027827 (= (content!5263 (++!9253 lt!1201911 lt!1201944)) e!2180357)))

(declare-fun b!3522499 () Bool)

(assert (=> b!3522499 (= e!2180357 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3522500 () Bool)

(assert (=> b!3522500 (= e!2180357 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 (++!9253 lt!1201911 lt!1201944)) true) (content!5263 (t!281698 (++!9253 lt!1201911 lt!1201944)))))))

(assert (= (and d!1027827 c!607190) b!3522499))

(assert (= (and d!1027827 (not c!607190)) b!3522500))

(declare-fun m!3973705 () Bool)

(assert (=> b!3522500 m!3973705))

(declare-fun m!3973707 () Bool)

(assert (=> b!3522500 m!3973707))

(assert (=> d!1026987 d!1027827))

(declare-fun d!1027831 () Bool)

(declare-fun c!607191 () Bool)

(assert (=> d!1027831 (= c!607191 ((_ is Nil!37343) lt!1201939))))

(declare-fun e!2180358 () (InoxSet C!20656))

(assert (=> d!1027831 (= (content!5263 lt!1201939) e!2180358)))

(declare-fun b!3522501 () Bool)

(assert (=> b!3522501 (= e!2180358 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3522502 () Bool)

(assert (=> b!3522502 (= e!2180358 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 lt!1201939) true) (content!5263 (t!281698 lt!1201939))))))

(assert (= (and d!1027831 c!607191) b!3522501))

(assert (= (and d!1027831 (not c!607191)) b!3522502))

(declare-fun m!3973709 () Bool)

(assert (=> b!3522502 m!3973709))

(declare-fun m!3973711 () Bool)

(assert (=> b!3522502 m!3973711))

(assert (=> d!1026987 d!1027831))

(declare-fun d!1027833 () Bool)

(assert (=> d!1027833 (= (isEmpty!21812 (tail!5490 lt!1201944)) ((_ is Nil!37343) (tail!5490 lt!1201944)))))

(assert (=> b!3520965 d!1027833))

(declare-fun d!1027835 () Bool)

(assert (=> d!1027835 (= (tail!5490 lt!1201944) (t!281698 lt!1201944))))

(assert (=> b!3520965 d!1027835))

(declare-fun d!1027837 () Bool)

(assert (=> d!1027837 (= (get!11989 lt!1202243) (v!37100 lt!1202243))))

(assert (=> b!3521389 d!1027837))

(declare-fun c!607194 () Bool)

(declare-fun call!254505 () List!37467)

(declare-fun c!607195 () Bool)

(declare-fun bm!254499 () Bool)

(assert (=> bm!254499 (= call!254505 (usedCharacters!710 (ite c!607194 (reg!10564 (ite c!606823 (reg!10564 (regex!5476 (rule!8122 separatorToken!241))) (ite c!606824 (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241)))))) (ite c!607195 (regTwo!20983 (ite c!606823 (reg!10564 (regex!5476 (rule!8122 separatorToken!241))) (ite c!606824 (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241)))))) (regOne!20982 (ite c!606823 (reg!10564 (regex!5476 (rule!8122 separatorToken!241))) (ite c!606824 (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241))))))))))))

(declare-fun b!3522503 () Bool)

(declare-fun e!2180360 () List!37467)

(declare-fun call!254507 () List!37467)

(assert (=> b!3522503 (= e!2180360 call!254507)))

(declare-fun call!254504 () List!37467)

(declare-fun bm!254500 () Bool)

(assert (=> bm!254500 (= call!254504 (usedCharacters!710 (ite c!607195 (regOne!20983 (ite c!606823 (reg!10564 (regex!5476 (rule!8122 separatorToken!241))) (ite c!606824 (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241)))))) (regTwo!20982 (ite c!606823 (reg!10564 (regex!5476 (rule!8122 separatorToken!241))) (ite c!606824 (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241)))))))))))

(declare-fun b!3522504 () Bool)

(assert (=> b!3522504 (= e!2180360 call!254507)))

(declare-fun d!1027839 () Bool)

(declare-fun c!607193 () Bool)

(assert (=> d!1027839 (= c!607193 (or ((_ is EmptyExpr!10235) (ite c!606823 (reg!10564 (regex!5476 (rule!8122 separatorToken!241))) (ite c!606824 (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241)))))) ((_ is EmptyLang!10235) (ite c!606823 (reg!10564 (regex!5476 (rule!8122 separatorToken!241))) (ite c!606824 (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241))))))))))

(declare-fun e!2180359 () List!37467)

(assert (=> d!1027839 (= (usedCharacters!710 (ite c!606823 (reg!10564 (regex!5476 (rule!8122 separatorToken!241))) (ite c!606824 (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241)))))) e!2180359)))

(declare-fun b!3522505 () Bool)

(assert (=> b!3522505 (= e!2180359 Nil!37343)))

(declare-fun bm!254501 () Bool)

(declare-fun call!254506 () List!37467)

(assert (=> bm!254501 (= call!254507 (++!9253 (ite c!607195 call!254504 call!254506) (ite c!607195 call!254506 call!254504)))))

(declare-fun b!3522506 () Bool)

(declare-fun e!2180362 () List!37467)

(assert (=> b!3522506 (= e!2180359 e!2180362)))

(declare-fun c!607192 () Bool)

(assert (=> b!3522506 (= c!607192 ((_ is ElementMatch!10235) (ite c!606823 (reg!10564 (regex!5476 (rule!8122 separatorToken!241))) (ite c!606824 (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241)))))))))

(declare-fun b!3522507 () Bool)

(assert (=> b!3522507 (= c!607194 ((_ is Star!10235) (ite c!606823 (reg!10564 (regex!5476 (rule!8122 separatorToken!241))) (ite c!606824 (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241)))))))))

(declare-fun e!2180361 () List!37467)

(assert (=> b!3522507 (= e!2180362 e!2180361)))

(declare-fun b!3522508 () Bool)

(assert (=> b!3522508 (= e!2180362 (Cons!37343 (c!606752 (ite c!606823 (reg!10564 (regex!5476 (rule!8122 separatorToken!241))) (ite c!606824 (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241)))))) Nil!37343))))

(declare-fun b!3522509 () Bool)

(assert (=> b!3522509 (= e!2180361 call!254505)))

(declare-fun bm!254502 () Bool)

(assert (=> bm!254502 (= call!254506 call!254505)))

(declare-fun b!3522510 () Bool)

(assert (=> b!3522510 (= e!2180361 e!2180360)))

(assert (=> b!3522510 (= c!607195 ((_ is Union!10235) (ite c!606823 (reg!10564 (regex!5476 (rule!8122 separatorToken!241))) (ite c!606824 (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241)))))))))

(assert (= (and d!1027839 c!607193) b!3522505))

(assert (= (and d!1027839 (not c!607193)) b!3522506))

(assert (= (and b!3522506 c!607192) b!3522508))

(assert (= (and b!3522506 (not c!607192)) b!3522507))

(assert (= (and b!3522507 c!607194) b!3522509))

(assert (= (and b!3522507 (not c!607194)) b!3522510))

(assert (= (and b!3522510 c!607195) b!3522504))

(assert (= (and b!3522510 (not c!607195)) b!3522503))

(assert (= (or b!3522504 b!3522503) bm!254502))

(assert (= (or b!3522504 b!3522503) bm!254500))

(assert (= (or b!3522504 b!3522503) bm!254501))

(assert (= (or b!3522509 bm!254502) bm!254499))

(declare-fun m!3973715 () Bool)

(assert (=> bm!254499 m!3973715))

(declare-fun m!3973717 () Bool)

(assert (=> bm!254500 m!3973717))

(declare-fun m!3973719 () Bool)

(assert (=> bm!254501 m!3973719))

(assert (=> bm!254370 d!1027839))

(declare-fun d!1027843 () Bool)

(assert (=> d!1027843 (= (get!11989 lt!1202058) (v!37100 lt!1202058))))

(assert (=> b!3521003 d!1027843))

(declare-fun d!1027845 () Bool)

(declare-fun lt!1202788 () Int)

(assert (=> d!1027845 (= lt!1202788 (size!28412 (list!13659 (_2!21722 lt!1202244))))))

(declare-fun size!28421 (Conc!11327) Int)

(assert (=> d!1027845 (= lt!1202788 (size!28421 (c!606753 (_2!21722 lt!1202244))))))

(assert (=> d!1027845 (= (size!28419 (_2!21722 lt!1202244)) lt!1202788)))

(declare-fun bs!565406 () Bool)

(assert (= bs!565406 d!1027845))

(assert (=> bs!565406 m!3971767))

(assert (=> bs!565406 m!3971767))

(declare-fun m!3973733 () Bool)

(assert (=> bs!565406 m!3973733))

(declare-fun m!3973735 () Bool)

(assert (=> bs!565406 m!3973735))

(assert (=> b!3521403 d!1027845))

(declare-fun d!1027857 () Bool)

(declare-fun lt!1202792 () Int)

(assert (=> d!1027857 (= lt!1202792 (size!28412 (list!13659 lt!1201934)))))

(assert (=> d!1027857 (= lt!1202792 (size!28421 (c!606753 lt!1201934)))))

(assert (=> d!1027857 (= (size!28419 lt!1201934) lt!1202792)))

(declare-fun bs!565407 () Bool)

(assert (= bs!565407 d!1027857))

(assert (=> bs!565407 m!3971769))

(assert (=> bs!565407 m!3971769))

(declare-fun m!3973737 () Bool)

(assert (=> bs!565407 m!3973737))

(declare-fun m!3973739 () Bool)

(assert (=> bs!565407 m!3973739))

(assert (=> b!3521403 d!1027857))

(declare-fun d!1027859 () Bool)

(assert (=> d!1027859 (= (isEmpty!21812 (originalCharacters!6190 (h!42765 tokens!494))) ((_ is Nil!37343) (originalCharacters!6190 (h!42765 tokens!494))))))

(assert (=> d!1027005 d!1027859))

(declare-fun d!1027861 () Bool)

(declare-fun lt!1202793 () Int)

(assert (=> d!1027861 (= lt!1202793 (size!28412 (list!13659 (_2!21722 lt!1202292))))))

(assert (=> d!1027861 (= lt!1202793 (size!28421 (c!606753 (_2!21722 lt!1202292))))))

(assert (=> d!1027861 (= (size!28419 (_2!21722 lt!1202292)) lt!1202793)))

(declare-fun bs!565408 () Bool)

(assert (= bs!565408 d!1027861))

(assert (=> bs!565408 m!3972055))

(assert (=> bs!565408 m!3972055))

(declare-fun m!3973741 () Bool)

(assert (=> bs!565408 m!3973741))

(declare-fun m!3973743 () Bool)

(assert (=> bs!565408 m!3973743))

(assert (=> b!3521559 d!1027861))

(declare-fun d!1027863 () Bool)

(declare-fun lt!1202794 () Int)

(assert (=> d!1027863 (= lt!1202794 (size!28412 (list!13659 lt!1201929)))))

(assert (=> d!1027863 (= lt!1202794 (size!28421 (c!606753 lt!1201929)))))

(assert (=> d!1027863 (= (size!28419 lt!1201929) lt!1202794)))

(declare-fun bs!565409 () Bool)

(assert (= bs!565409 d!1027863))

(assert (=> bs!565409 m!3972057))

(assert (=> bs!565409 m!3972057))

(declare-fun m!3973753 () Bool)

(assert (=> bs!565409 m!3973753))

(declare-fun m!3973757 () Bool)

(assert (=> bs!565409 m!3973757))

(assert (=> b!3521559 d!1027863))

(declare-fun d!1027865 () Bool)

(assert (=> d!1027865 (= (list!13659 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494)))) (list!13663 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494))))))))

(declare-fun bs!565410 () Bool)

(assert (= bs!565410 d!1027865))

(declare-fun m!3973759 () Bool)

(assert (=> bs!565410 m!3973759))

(assert (=> b!3520958 d!1027865))

(declare-fun d!1027871 () Bool)

(declare-fun lt!1202798 () BalanceConc!22268)

(assert (=> d!1027871 (= (list!13659 lt!1202798) (printListTailRec!718 thiss!18206 (dropList!1235 lt!1201912 (+ 0 1)) (list!13659 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201912 0))))))))

(declare-fun e!2180369 () BalanceConc!22268)

(assert (=> d!1027871 (= lt!1202798 e!2180369)))

(declare-fun c!607201 () Bool)

(assert (=> d!1027871 (= c!607201 (>= (+ 0 1) (size!28413 lt!1201912)))))

(declare-fun e!2180370 () Bool)

(assert (=> d!1027871 e!2180370))

(declare-fun res!1420695 () Bool)

(assert (=> d!1027871 (=> (not res!1420695) (not e!2180370))))

(assert (=> d!1027871 (= res!1420695 (>= (+ 0 1) 0))))

(assert (=> d!1027871 (= (printTailRec!1560 thiss!18206 lt!1201912 (+ 0 1) (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201912 0)))) lt!1202798)))

(declare-fun b!3522522 () Bool)

(assert (=> b!3522522 (= e!2180370 (<= (+ 0 1) (size!28413 lt!1201912)))))

(declare-fun b!3522523 () Bool)

(assert (=> b!3522523 (= e!2180369 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201912 0))))))

(declare-fun b!3522524 () Bool)

(assert (=> b!3522524 (= e!2180369 (printTailRec!1560 thiss!18206 lt!1201912 (+ 0 1 1) (++!9255 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201912 0))) (charsOf!3490 (apply!8896 lt!1201912 (+ 0 1))))))))

(declare-fun lt!1202797 () List!37469)

(assert (=> b!3522524 (= lt!1202797 (list!13662 lt!1201912))))

(declare-fun lt!1202799 () Unit!52994)

(assert (=> b!3522524 (= lt!1202799 (lemmaDropApply!1193 lt!1202797 (+ 0 1)))))

(assert (=> b!3522524 (= (head!7387 (drop!2049 lt!1202797 (+ 0 1))) (apply!8898 lt!1202797 (+ 0 1)))))

(declare-fun lt!1202796 () Unit!52994)

(assert (=> b!3522524 (= lt!1202796 lt!1202799)))

(declare-fun lt!1202800 () List!37469)

(assert (=> b!3522524 (= lt!1202800 (list!13662 lt!1201912))))

(declare-fun lt!1202795 () Unit!52994)

(assert (=> b!3522524 (= lt!1202795 (lemmaDropTail!1077 lt!1202800 (+ 0 1)))))

(assert (=> b!3522524 (= (tail!5493 (drop!2049 lt!1202800 (+ 0 1))) (drop!2049 lt!1202800 (+ 0 1 1)))))

(declare-fun lt!1202801 () Unit!52994)

(assert (=> b!3522524 (= lt!1202801 lt!1202795)))

(assert (= (and d!1027871 res!1420695) b!3522522))

(assert (= (and d!1027871 c!607201) b!3522523))

(assert (= (and d!1027871 (not c!607201)) b!3522524))

(assert (=> d!1027871 m!3971557))

(declare-fun m!3973763 () Bool)

(assert (=> d!1027871 m!3973763))

(declare-fun m!3973765 () Bool)

(assert (=> d!1027871 m!3973765))

(assert (=> d!1027871 m!3973763))

(declare-fun m!3973767 () Bool)

(assert (=> d!1027871 m!3973767))

(assert (=> d!1027871 m!3971551))

(declare-fun m!3973769 () Bool)

(assert (=> d!1027871 m!3973769))

(assert (=> d!1027871 m!3973765))

(assert (=> b!3522522 m!3971551))

(declare-fun m!3973771 () Bool)

(assert (=> b!3522524 m!3973771))

(declare-fun m!3973773 () Bool)

(assert (=> b!3522524 m!3973773))

(declare-fun m!3973775 () Bool)

(assert (=> b!3522524 m!3973775))

(declare-fun m!3973777 () Bool)

(assert (=> b!3522524 m!3973777))

(declare-fun m!3973779 () Bool)

(assert (=> b!3522524 m!3973779))

(declare-fun m!3973781 () Bool)

(assert (=> b!3522524 m!3973781))

(declare-fun m!3973783 () Bool)

(assert (=> b!3522524 m!3973783))

(declare-fun m!3973785 () Bool)

(assert (=> b!3522524 m!3973785))

(assert (=> b!3522524 m!3973777))

(assert (=> b!3522524 m!3973783))

(assert (=> b!3522524 m!3971557))

(assert (=> b!3522524 m!3973779))

(assert (=> b!3522524 m!3973773))

(declare-fun m!3973787 () Bool)

(assert (=> b!3522524 m!3973787))

(declare-fun m!3973789 () Bool)

(assert (=> b!3522524 m!3973789))

(declare-fun m!3973791 () Bool)

(assert (=> b!3522524 m!3973791))

(assert (=> b!3522524 m!3973787))

(declare-fun m!3973793 () Bool)

(assert (=> b!3522524 m!3973793))

(assert (=> b!3522524 m!3971579))

(assert (=> b!3521285 d!1027871))

(declare-fun d!1027873 () Bool)

(declare-fun lt!1202802 () Token!10318)

(assert (=> d!1027873 (contains!7008 lt!1202198 lt!1202802)))

(declare-fun e!2180371 () Token!10318)

(assert (=> d!1027873 (= lt!1202802 e!2180371)))

(declare-fun c!607202 () Bool)

(assert (=> d!1027873 (= c!607202 (= 0 0))))

(declare-fun e!2180372 () Bool)

(assert (=> d!1027873 e!2180372))

(declare-fun res!1420696 () Bool)

(assert (=> d!1027873 (=> (not res!1420696) (not e!2180372))))

(assert (=> d!1027873 (= res!1420696 (<= 0 0))))

(assert (=> d!1027873 (= (apply!8898 lt!1202198 0) lt!1202802)))

(declare-fun b!3522525 () Bool)

(assert (=> b!3522525 (= e!2180372 (< 0 (size!28417 lt!1202198)))))

(declare-fun b!3522526 () Bool)

(assert (=> b!3522526 (= e!2180371 (head!7387 lt!1202198))))

(declare-fun b!3522527 () Bool)

(assert (=> b!3522527 (= e!2180371 (apply!8898 (tail!5493 lt!1202198) (- 0 1)))))

(assert (= (and d!1027873 res!1420696) b!3522525))

(assert (= (and d!1027873 c!607202) b!3522526))

(assert (= (and d!1027873 (not c!607202)) b!3522527))

(declare-fun m!3973795 () Bool)

(assert (=> d!1027873 m!3973795))

(declare-fun m!3973797 () Bool)

(assert (=> b!3522525 m!3973797))

(declare-fun m!3973799 () Bool)

(assert (=> b!3522526 m!3973799))

(declare-fun m!3973801 () Bool)

(assert (=> b!3522527 m!3973801))

(assert (=> b!3522527 m!3973801))

(declare-fun m!3973803 () Bool)

(assert (=> b!3522527 m!3973803))

(assert (=> b!3521285 d!1027873))

(declare-fun d!1027875 () Bool)

(declare-fun e!2180375 () Bool)

(assert (=> d!1027875 e!2180375))

(declare-fun res!1420706 () Bool)

(assert (=> d!1027875 (=> (not res!1420706) (not e!2180375))))

(declare-fun appendAssocInst!817 (Conc!11327 Conc!11327) Bool)

(assert (=> d!1027875 (= res!1420706 (appendAssocInst!817 (c!606753 (BalanceConc!22269 Empty!11327)) (c!606753 (charsOf!3490 (apply!8896 lt!1201912 0)))))))

(declare-fun lt!1202805 () BalanceConc!22268)

(declare-fun ++!9258 (Conc!11327 Conc!11327) Conc!11327)

(assert (=> d!1027875 (= lt!1202805 (BalanceConc!22269 (++!9258 (c!606753 (BalanceConc!22269 Empty!11327)) (c!606753 (charsOf!3490 (apply!8896 lt!1201912 0))))))))

(assert (=> d!1027875 (= (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201912 0))) lt!1202805)))

(declare-fun b!3522539 () Bool)

(assert (=> b!3522539 (= e!2180375 (= (list!13659 lt!1202805) (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) (list!13659 (charsOf!3490 (apply!8896 lt!1201912 0))))))))

(declare-fun b!3522538 () Bool)

(declare-fun res!1420705 () Bool)

(assert (=> b!3522538 (=> (not res!1420705) (not e!2180375))))

(declare-fun height!1723 (Conc!11327) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3522538 (= res!1420705 (>= (height!1723 (++!9258 (c!606753 (BalanceConc!22269 Empty!11327)) (c!606753 (charsOf!3490 (apply!8896 lt!1201912 0))))) (max!0 (height!1723 (c!606753 (BalanceConc!22269 Empty!11327))) (height!1723 (c!606753 (charsOf!3490 (apply!8896 lt!1201912 0)))))))))

(declare-fun b!3522536 () Bool)

(declare-fun res!1420707 () Bool)

(assert (=> b!3522536 (=> (not res!1420707) (not e!2180375))))

(declare-fun isBalanced!3459 (Conc!11327) Bool)

(assert (=> b!3522536 (= res!1420707 (isBalanced!3459 (++!9258 (c!606753 (BalanceConc!22269 Empty!11327)) (c!606753 (charsOf!3490 (apply!8896 lt!1201912 0))))))))

(declare-fun b!3522537 () Bool)

(declare-fun res!1420708 () Bool)

(assert (=> b!3522537 (=> (not res!1420708) (not e!2180375))))

(assert (=> b!3522537 (= res!1420708 (<= (height!1723 (++!9258 (c!606753 (BalanceConc!22269 Empty!11327)) (c!606753 (charsOf!3490 (apply!8896 lt!1201912 0))))) (+ (max!0 (height!1723 (c!606753 (BalanceConc!22269 Empty!11327))) (height!1723 (c!606753 (charsOf!3490 (apply!8896 lt!1201912 0))))) 1)))))

(assert (= (and d!1027875 res!1420706) b!3522536))

(assert (= (and b!3522536 res!1420707) b!3522537))

(assert (= (and b!3522537 res!1420708) b!3522538))

(assert (= (and b!3522538 res!1420705) b!3522539))

(declare-fun m!3973805 () Bool)

(assert (=> b!3522539 m!3973805))

(assert (=> b!3522539 m!3971545))

(assert (=> b!3522539 m!3971563))

(declare-fun m!3973807 () Bool)

(assert (=> b!3522539 m!3973807))

(assert (=> b!3522539 m!3971545))

(assert (=> b!3522539 m!3973807))

(declare-fun m!3973809 () Bool)

(assert (=> b!3522539 m!3973809))

(declare-fun m!3973811 () Bool)

(assert (=> b!3522537 m!3973811))

(assert (=> b!3522537 m!3973811))

(declare-fun m!3973813 () Bool)

(assert (=> b!3522537 m!3973813))

(declare-fun m!3973815 () Bool)

(assert (=> b!3522537 m!3973815))

(declare-fun m!3973817 () Bool)

(assert (=> b!3522537 m!3973817))

(assert (=> b!3522537 m!3973817))

(declare-fun m!3973819 () Bool)

(assert (=> b!3522537 m!3973819))

(assert (=> b!3522537 m!3973813))

(assert (=> b!3522536 m!3973817))

(assert (=> b!3522536 m!3973817))

(declare-fun m!3973821 () Bool)

(assert (=> b!3522536 m!3973821))

(assert (=> b!3522538 m!3973811))

(assert (=> b!3522538 m!3973811))

(assert (=> b!3522538 m!3973813))

(assert (=> b!3522538 m!3973815))

(assert (=> b!3522538 m!3973817))

(assert (=> b!3522538 m!3973817))

(assert (=> b!3522538 m!3973819))

(assert (=> b!3522538 m!3973813))

(declare-fun m!3973823 () Bool)

(assert (=> d!1027875 m!3973823))

(assert (=> d!1027875 m!3973817))

(assert (=> b!3521285 d!1027875))

(declare-fun d!1027877 () Bool)

(assert (=> d!1027877 (= (tail!5493 (drop!2049 lt!1202201 0)) (t!281700 (drop!2049 lt!1202201 0)))))

(assert (=> b!3521285 d!1027877))

(declare-fun d!1027879 () Bool)

(assert (=> d!1027879 (= (head!7387 (drop!2049 lt!1202198 0)) (h!42765 (drop!2049 lt!1202198 0)))))

(assert (=> b!3521285 d!1027879))

(declare-fun d!1027881 () Bool)

(declare-fun e!2180387 () Bool)

(assert (=> d!1027881 e!2180387))

(declare-fun res!1420711 () Bool)

(assert (=> d!1027881 (=> (not res!1420711) (not e!2180387))))

(declare-fun lt!1202808 () List!37469)

(declare-fun content!5266 (List!37469) (InoxSet Token!10318))

(assert (=> d!1027881 (= res!1420711 (= ((_ map implies) (content!5266 lt!1202808) (content!5266 lt!1202201)) ((as const (InoxSet Token!10318)) true)))))

(declare-fun e!2180386 () List!37469)

(assert (=> d!1027881 (= lt!1202808 e!2180386)))

(declare-fun c!607214 () Bool)

(assert (=> d!1027881 (= c!607214 ((_ is Nil!37345) lt!1202201))))

(assert (=> d!1027881 (= (drop!2049 lt!1202201 (+ 0 1)) lt!1202808)))

(declare-fun b!3522558 () Bool)

(declare-fun e!2180389 () List!37469)

(assert (=> b!3522558 (= e!2180389 (drop!2049 (t!281700 lt!1202201) (- (+ 0 1) 1)))))

(declare-fun bm!254505 () Bool)

(declare-fun call!254510 () Int)

(assert (=> bm!254505 (= call!254510 (size!28417 lt!1202201))))

(declare-fun b!3522559 () Bool)

(declare-fun e!2180388 () Int)

(assert (=> b!3522559 (= e!2180387 (= (size!28417 lt!1202808) e!2180388))))

(declare-fun c!607216 () Bool)

(assert (=> b!3522559 (= c!607216 (<= (+ 0 1) 0))))

(declare-fun b!3522560 () Bool)

(assert (=> b!3522560 (= e!2180388 call!254510)))

(declare-fun b!3522561 () Bool)

(assert (=> b!3522561 (= e!2180386 e!2180389)))

(declare-fun c!607215 () Bool)

(assert (=> b!3522561 (= c!607215 (<= (+ 0 1) 0))))

(declare-fun b!3522562 () Bool)

(declare-fun e!2180390 () Int)

(assert (=> b!3522562 (= e!2180390 0)))

(declare-fun b!3522563 () Bool)

(assert (=> b!3522563 (= e!2180390 (- call!254510 (+ 0 1)))))

(declare-fun b!3522564 () Bool)

(assert (=> b!3522564 (= e!2180389 lt!1202201)))

(declare-fun b!3522565 () Bool)

(assert (=> b!3522565 (= e!2180386 Nil!37345)))

(declare-fun b!3522566 () Bool)

(assert (=> b!3522566 (= e!2180388 e!2180390)))

(declare-fun c!607217 () Bool)

(assert (=> b!3522566 (= c!607217 (>= (+ 0 1) call!254510))))

(assert (= (and d!1027881 c!607214) b!3522565))

(assert (= (and d!1027881 (not c!607214)) b!3522561))

(assert (= (and b!3522561 c!607215) b!3522564))

(assert (= (and b!3522561 (not c!607215)) b!3522558))

(assert (= (and d!1027881 res!1420711) b!3522559))

(assert (= (and b!3522559 c!607216) b!3522560))

(assert (= (and b!3522559 (not c!607216)) b!3522566))

(assert (= (and b!3522566 c!607217) b!3522562))

(assert (= (and b!3522566 (not c!607217)) b!3522563))

(assert (= (or b!3522560 b!3522566 b!3522563) bm!254505))

(declare-fun m!3973825 () Bool)

(assert (=> d!1027881 m!3973825))

(declare-fun m!3973827 () Bool)

(assert (=> d!1027881 m!3973827))

(declare-fun m!3973829 () Bool)

(assert (=> b!3522558 m!3973829))

(declare-fun m!3973831 () Bool)

(assert (=> bm!254505 m!3973831))

(declare-fun m!3973833 () Bool)

(assert (=> b!3522559 m!3973833))

(assert (=> b!3521285 d!1027881))

(declare-fun d!1027883 () Bool)

(declare-fun lt!1202809 () Token!10318)

(assert (=> d!1027883 (= lt!1202809 (apply!8898 (list!13662 lt!1201912) 0))))

(assert (=> d!1027883 (= lt!1202809 (apply!8899 (c!606754 lt!1201912) 0))))

(declare-fun e!2180391 () Bool)

(assert (=> d!1027883 e!2180391))

(declare-fun res!1420712 () Bool)

(assert (=> d!1027883 (=> (not res!1420712) (not e!2180391))))

(assert (=> d!1027883 (= res!1420712 (<= 0 0))))

(assert (=> d!1027883 (= (apply!8896 lt!1201912 0) lt!1202809)))

(declare-fun b!3522567 () Bool)

(assert (=> b!3522567 (= e!2180391 (< 0 (size!28413 lt!1201912)))))

(assert (= (and d!1027883 res!1420712) b!3522567))

(assert (=> d!1027883 m!3971579))

(assert (=> d!1027883 m!3971579))

(declare-fun m!3973835 () Bool)

(assert (=> d!1027883 m!3973835))

(declare-fun m!3973837 () Bool)

(assert (=> d!1027883 m!3973837))

(assert (=> b!3522567 m!3971551))

(assert (=> b!3521285 d!1027883))

(declare-fun d!1027885 () Bool)

(assert (=> d!1027885 (= (head!7387 (drop!2049 lt!1202198 0)) (apply!8898 lt!1202198 0))))

(declare-fun lt!1202812 () Unit!52994)

(declare-fun choose!20455 (List!37469 Int) Unit!52994)

(assert (=> d!1027885 (= lt!1202812 (choose!20455 lt!1202198 0))))

(declare-fun e!2180394 () Bool)

(assert (=> d!1027885 e!2180394))

(declare-fun res!1420715 () Bool)

(assert (=> d!1027885 (=> (not res!1420715) (not e!2180394))))

(assert (=> d!1027885 (= res!1420715 (>= 0 0))))

(assert (=> d!1027885 (= (lemmaDropApply!1193 lt!1202198 0) lt!1202812)))

(declare-fun b!3522570 () Bool)

(assert (=> b!3522570 (= e!2180394 (< 0 (size!28417 lt!1202198)))))

(assert (= (and d!1027885 res!1420715) b!3522570))

(assert (=> d!1027885 m!3971567))

(assert (=> d!1027885 m!3971567))

(assert (=> d!1027885 m!3971569))

(assert (=> d!1027885 m!3971565))

(declare-fun m!3973839 () Bool)

(assert (=> d!1027885 m!3973839))

(assert (=> b!3522570 m!3973797))

(assert (=> b!3521285 d!1027885))

(declare-fun d!1027887 () Bool)

(declare-fun e!2180396 () Bool)

(assert (=> d!1027887 e!2180396))

(declare-fun res!1420716 () Bool)

(assert (=> d!1027887 (=> (not res!1420716) (not e!2180396))))

(declare-fun lt!1202813 () List!37469)

(assert (=> d!1027887 (= res!1420716 (= ((_ map implies) (content!5266 lt!1202813) (content!5266 lt!1202198)) ((as const (InoxSet Token!10318)) true)))))

(declare-fun e!2180395 () List!37469)

(assert (=> d!1027887 (= lt!1202813 e!2180395)))

(declare-fun c!607218 () Bool)

(assert (=> d!1027887 (= c!607218 ((_ is Nil!37345) lt!1202198))))

(assert (=> d!1027887 (= (drop!2049 lt!1202198 0) lt!1202813)))

(declare-fun b!3522571 () Bool)

(declare-fun e!2180398 () List!37469)

(assert (=> b!3522571 (= e!2180398 (drop!2049 (t!281700 lt!1202198) (- 0 1)))))

(declare-fun bm!254506 () Bool)

(declare-fun call!254511 () Int)

(assert (=> bm!254506 (= call!254511 (size!28417 lt!1202198))))

(declare-fun b!3522572 () Bool)

(declare-fun e!2180397 () Int)

(assert (=> b!3522572 (= e!2180396 (= (size!28417 lt!1202813) e!2180397))))

(declare-fun c!607220 () Bool)

(assert (=> b!3522572 (= c!607220 (<= 0 0))))

(declare-fun b!3522573 () Bool)

(assert (=> b!3522573 (= e!2180397 call!254511)))

(declare-fun b!3522574 () Bool)

(assert (=> b!3522574 (= e!2180395 e!2180398)))

(declare-fun c!607219 () Bool)

(assert (=> b!3522574 (= c!607219 (<= 0 0))))

(declare-fun b!3522575 () Bool)

(declare-fun e!2180399 () Int)

(assert (=> b!3522575 (= e!2180399 0)))

(declare-fun b!3522576 () Bool)

(assert (=> b!3522576 (= e!2180399 (- call!254511 0))))

(declare-fun b!3522577 () Bool)

(assert (=> b!3522577 (= e!2180398 lt!1202198)))

(declare-fun b!3522578 () Bool)

(assert (=> b!3522578 (= e!2180395 Nil!37345)))

(declare-fun b!3522579 () Bool)

(assert (=> b!3522579 (= e!2180397 e!2180399)))

(declare-fun c!607221 () Bool)

(assert (=> b!3522579 (= c!607221 (>= 0 call!254511))))

(assert (= (and d!1027887 c!607218) b!3522578))

(assert (= (and d!1027887 (not c!607218)) b!3522574))

(assert (= (and b!3522574 c!607219) b!3522577))

(assert (= (and b!3522574 (not c!607219)) b!3522571))

(assert (= (and d!1027887 res!1420716) b!3522572))

(assert (= (and b!3522572 c!607220) b!3522573))

(assert (= (and b!3522572 (not c!607220)) b!3522579))

(assert (= (and b!3522579 c!607221) b!3522575))

(assert (= (and b!3522579 (not c!607221)) b!3522576))

(assert (= (or b!3522573 b!3522579 b!3522576) bm!254506))

(declare-fun m!3973841 () Bool)

(assert (=> d!1027887 m!3973841))

(declare-fun m!3973843 () Bool)

(assert (=> d!1027887 m!3973843))

(declare-fun m!3973845 () Bool)

(assert (=> b!3522571 m!3973845))

(assert (=> bm!254506 m!3973797))

(declare-fun m!3973847 () Bool)

(assert (=> b!3522572 m!3973847))

(assert (=> b!3521285 d!1027887))

(declare-fun d!1027889 () Bool)

(assert (=> d!1027889 (= (list!13662 lt!1201912) (list!13665 (c!606754 lt!1201912)))))

(declare-fun bs!565412 () Bool)

(assert (= bs!565412 d!1027889))

(assert (=> bs!565412 m!3973499))

(assert (=> b!3521285 d!1027889))

(declare-fun d!1027891 () Bool)

(declare-fun lt!1202814 () BalanceConc!22268)

(assert (=> d!1027891 (= (list!13659 lt!1202814) (originalCharacters!6190 (apply!8896 lt!1201912 0)))))

(assert (=> d!1027891 (= lt!1202814 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201912 0)))) (value!176526 (apply!8896 lt!1201912 0))))))

(assert (=> d!1027891 (= (charsOf!3490 (apply!8896 lt!1201912 0)) lt!1202814)))

(declare-fun b_lambda!102861 () Bool)

(assert (=> (not b_lambda!102861) (not d!1027891)))

(declare-fun tb!196819 () Bool)

(declare-fun t!281925 () Bool)

(assert (=> (and b!3520694 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201912 0))))) t!281925) tb!196819))

(declare-fun b!3522580 () Bool)

(declare-fun e!2180400 () Bool)

(declare-fun tp!1087089 () Bool)

(assert (=> b!3522580 (= e!2180400 (and (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201912 0)))) (value!176526 (apply!8896 lt!1201912 0))))) tp!1087089))))

(declare-fun result!241192 () Bool)

(assert (=> tb!196819 (= result!241192 (and (inv!50582 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201912 0)))) (value!176526 (apply!8896 lt!1201912 0)))) e!2180400))))

(assert (= tb!196819 b!3522580))

(declare-fun m!3973849 () Bool)

(assert (=> b!3522580 m!3973849))

(declare-fun m!3973851 () Bool)

(assert (=> tb!196819 m!3973851))

(assert (=> d!1027891 t!281925))

(declare-fun b_and!250959 () Bool)

(assert (= b_and!250827 (and (=> t!281925 result!241192) b_and!250959)))

(declare-fun t!281927 () Bool)

(declare-fun tb!196821 () Bool)

(assert (=> (and b!3520728 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201912 0))))) t!281927) tb!196821))

(declare-fun result!241194 () Bool)

(assert (= result!241194 result!241192))

(assert (=> d!1027891 t!281927))

(declare-fun b_and!250961 () Bool)

(assert (= b_and!250825 (and (=> t!281927 result!241194) b_and!250961)))

(declare-fun tb!196823 () Bool)

(declare-fun t!281929 () Bool)

(assert (=> (and b!3521743 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201912 0))))) t!281929) tb!196823))

(declare-fun result!241196 () Bool)

(assert (= result!241196 result!241192))

(assert (=> d!1027891 t!281929))

(declare-fun b_and!250963 () Bool)

(assert (= b_and!250833 (and (=> t!281929 result!241196) b_and!250963)))

(declare-fun tb!196825 () Bool)

(declare-fun t!281931 () Bool)

(assert (=> (and b!3520698 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201912 0))))) t!281931) tb!196825))

(declare-fun result!241198 () Bool)

(assert (= result!241198 result!241192))

(assert (=> d!1027891 t!281931))

(declare-fun b_and!250965 () Bool)

(assert (= b_and!250829 (and (=> t!281931 result!241198) b_and!250965)))

(declare-fun t!281933 () Bool)

(declare-fun tb!196827 () Bool)

(assert (=> (and b!3521754 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201912 0))))) t!281933) tb!196827))

(declare-fun result!241200 () Bool)

(assert (= result!241200 result!241192))

(assert (=> d!1027891 t!281933))

(declare-fun b_and!250967 () Bool)

(assert (= b_and!250837 (and (=> t!281933 result!241200) b_and!250967)))

(declare-fun m!3973853 () Bool)

(assert (=> d!1027891 m!3973853))

(declare-fun m!3973855 () Bool)

(assert (=> d!1027891 m!3973855))

(assert (=> b!3521285 d!1027891))

(declare-fun d!1027893 () Bool)

(declare-fun e!2180402 () Bool)

(assert (=> d!1027893 e!2180402))

(declare-fun res!1420717 () Bool)

(assert (=> d!1027893 (=> (not res!1420717) (not e!2180402))))

(declare-fun lt!1202815 () List!37469)

(assert (=> d!1027893 (= res!1420717 (= ((_ map implies) (content!5266 lt!1202815) (content!5266 lt!1202201)) ((as const (InoxSet Token!10318)) true)))))

(declare-fun e!2180401 () List!37469)

(assert (=> d!1027893 (= lt!1202815 e!2180401)))

(declare-fun c!607222 () Bool)

(assert (=> d!1027893 (= c!607222 ((_ is Nil!37345) lt!1202201))))

(assert (=> d!1027893 (= (drop!2049 lt!1202201 0) lt!1202815)))

(declare-fun b!3522581 () Bool)

(declare-fun e!2180404 () List!37469)

(assert (=> b!3522581 (= e!2180404 (drop!2049 (t!281700 lt!1202201) (- 0 1)))))

(declare-fun bm!254507 () Bool)

(declare-fun call!254512 () Int)

(assert (=> bm!254507 (= call!254512 (size!28417 lt!1202201))))

(declare-fun b!3522582 () Bool)

(declare-fun e!2180403 () Int)

(assert (=> b!3522582 (= e!2180402 (= (size!28417 lt!1202815) e!2180403))))

(declare-fun c!607224 () Bool)

(assert (=> b!3522582 (= c!607224 (<= 0 0))))

(declare-fun b!3522583 () Bool)

(assert (=> b!3522583 (= e!2180403 call!254512)))

(declare-fun b!3522584 () Bool)

(assert (=> b!3522584 (= e!2180401 e!2180404)))

(declare-fun c!607223 () Bool)

(assert (=> b!3522584 (= c!607223 (<= 0 0))))

(declare-fun b!3522585 () Bool)

(declare-fun e!2180405 () Int)

(assert (=> b!3522585 (= e!2180405 0)))

(declare-fun b!3522586 () Bool)

(assert (=> b!3522586 (= e!2180405 (- call!254512 0))))

(declare-fun b!3522587 () Bool)

(assert (=> b!3522587 (= e!2180404 lt!1202201)))

(declare-fun b!3522588 () Bool)

(assert (=> b!3522588 (= e!2180401 Nil!37345)))

(declare-fun b!3522589 () Bool)

(assert (=> b!3522589 (= e!2180403 e!2180405)))

(declare-fun c!607225 () Bool)

(assert (=> b!3522589 (= c!607225 (>= 0 call!254512))))

(assert (= (and d!1027893 c!607222) b!3522588))

(assert (= (and d!1027893 (not c!607222)) b!3522584))

(assert (= (and b!3522584 c!607223) b!3522587))

(assert (= (and b!3522584 (not c!607223)) b!3522581))

(assert (= (and d!1027893 res!1420717) b!3522582))

(assert (= (and b!3522582 c!607224) b!3522583))

(assert (= (and b!3522582 (not c!607224)) b!3522589))

(assert (= (and b!3522589 c!607225) b!3522585))

(assert (= (and b!3522589 (not c!607225)) b!3522586))

(assert (= (or b!3522583 b!3522589 b!3522586) bm!254507))

(declare-fun m!3973857 () Bool)

(assert (=> d!1027893 m!3973857))

(assert (=> d!1027893 m!3973827))

(declare-fun m!3973859 () Bool)

(assert (=> b!3522581 m!3973859))

(assert (=> bm!254507 m!3973831))

(declare-fun m!3973861 () Bool)

(assert (=> b!3522582 m!3973861))

(assert (=> b!3521285 d!1027893))

(declare-fun d!1027895 () Bool)

(assert (=> d!1027895 (= (tail!5493 (drop!2049 lt!1202201 0)) (drop!2049 lt!1202201 (+ 0 1)))))

(declare-fun lt!1202818 () Unit!52994)

(declare-fun choose!20456 (List!37469 Int) Unit!52994)

(assert (=> d!1027895 (= lt!1202818 (choose!20456 lt!1202201 0))))

(declare-fun e!2180408 () Bool)

(assert (=> d!1027895 e!2180408))

(declare-fun res!1420720 () Bool)

(assert (=> d!1027895 (=> (not res!1420720) (not e!2180408))))

(assert (=> d!1027895 (= res!1420720 (>= 0 0))))

(assert (=> d!1027895 (= (lemmaDropTail!1077 lt!1202201 0) lt!1202818)))

(declare-fun b!3522592 () Bool)

(assert (=> b!3522592 (= e!2180408 (< 0 (size!28417 lt!1202201)))))

(assert (= (and d!1027895 res!1420720) b!3522592))

(assert (=> d!1027895 m!3971571))

(assert (=> d!1027895 m!3971571))

(assert (=> d!1027895 m!3971573))

(assert (=> d!1027895 m!3971555))

(declare-fun m!3973863 () Bool)

(assert (=> d!1027895 m!3973863))

(assert (=> b!3522592 m!3973831))

(assert (=> b!3521285 d!1027895))

(declare-fun b!3522604 () Bool)

(declare-fun e!2180414 () List!37467)

(assert (=> b!3522604 (= e!2180414 (++!9253 (list!13663 (left!29167 (c!606753 lt!1201924))) (list!13663 (right!29497 (c!606753 lt!1201924)))))))

(declare-fun b!3522601 () Bool)

(declare-fun e!2180413 () List!37467)

(assert (=> b!3522601 (= e!2180413 Nil!37343)))

(declare-fun d!1027897 () Bool)

(declare-fun c!607230 () Bool)

(assert (=> d!1027897 (= c!607230 ((_ is Empty!11327) (c!606753 lt!1201924)))))

(assert (=> d!1027897 (= (list!13663 (c!606753 lt!1201924)) e!2180413)))

(declare-fun b!3522602 () Bool)

(assert (=> b!3522602 (= e!2180413 e!2180414)))

(declare-fun c!607231 () Bool)

(assert (=> b!3522602 (= c!607231 ((_ is Leaf!17676) (c!606753 lt!1201924)))))

(declare-fun b!3522603 () Bool)

(declare-fun list!13666 (IArray!22659) List!37467)

(assert (=> b!3522603 (= e!2180414 (list!13666 (xs!14517 (c!606753 lt!1201924))))))

(assert (= (and d!1027897 c!607230) b!3522601))

(assert (= (and d!1027897 (not c!607230)) b!3522602))

(assert (= (and b!3522602 c!607231) b!3522603))

(assert (= (and b!3522602 (not c!607231)) b!3522604))

(declare-fun m!3973865 () Bool)

(assert (=> b!3522604 m!3973865))

(declare-fun m!3973867 () Bool)

(assert (=> b!3522604 m!3973867))

(assert (=> b!3522604 m!3973865))

(assert (=> b!3522604 m!3973867))

(declare-fun m!3973869 () Bool)

(assert (=> b!3522604 m!3973869))

(declare-fun m!3973871 () Bool)

(assert (=> b!3522603 m!3973871))

(assert (=> d!1027255 d!1027897))

(declare-fun d!1027899 () Bool)

(declare-fun res!1420721 () Bool)

(declare-fun e!2180415 () Bool)

(assert (=> d!1027899 (=> res!1420721 e!2180415)))

(assert (=> d!1027899 (= res!1420721 ((_ is Nil!37345) (t!281700 tokens!494)))))

(assert (=> d!1027899 (= (forall!8029 (t!281700 tokens!494) lambda!122742) e!2180415)))

(declare-fun b!3522605 () Bool)

(declare-fun e!2180416 () Bool)

(assert (=> b!3522605 (= e!2180415 e!2180416)))

(declare-fun res!1420722 () Bool)

(assert (=> b!3522605 (=> (not res!1420722) (not e!2180416))))

(assert (=> b!3522605 (= res!1420722 (dynLambda!15912 lambda!122742 (h!42765 (t!281700 tokens!494))))))

(declare-fun b!3522606 () Bool)

(assert (=> b!3522606 (= e!2180416 (forall!8029 (t!281700 (t!281700 tokens!494)) lambda!122742))))

(assert (= (and d!1027899 (not res!1420721)) b!3522605))

(assert (= (and b!3522605 res!1420722) b!3522606))

(declare-fun b_lambda!102863 () Bool)

(assert (=> (not b_lambda!102863) (not b!3522605)))

(assert (=> b!3522605 m!3972257))

(declare-fun m!3973873 () Bool)

(assert (=> b!3522606 m!3973873))

(assert (=> b!3521680 d!1027899))

(declare-fun d!1027901 () Bool)

(assert (=> d!1027901 (= (get!11989 lt!1202287) (v!37100 lt!1202287))))

(assert (=> b!3521522 d!1027901))

(declare-fun d!1027903 () Bool)

(declare-fun lt!1202819 () Int)

(assert (=> d!1027903 (>= lt!1202819 0)))

(declare-fun e!2180417 () Int)

(assert (=> d!1027903 (= lt!1202819 e!2180417)))

(declare-fun c!607232 () Bool)

(assert (=> d!1027903 (= c!607232 ((_ is Nil!37343) (_2!21723 (get!11991 lt!1202070))))))

(assert (=> d!1027903 (= (size!28412 (_2!21723 (get!11991 lt!1202070))) lt!1202819)))

(declare-fun b!3522607 () Bool)

(assert (=> b!3522607 (= e!2180417 0)))

(declare-fun b!3522608 () Bool)

(assert (=> b!3522608 (= e!2180417 (+ 1 (size!28412 (t!281698 (_2!21723 (get!11991 lt!1202070))))))))

(assert (= (and d!1027903 c!607232) b!3522607))

(assert (= (and d!1027903 (not c!607232)) b!3522608))

(declare-fun m!3973875 () Bool)

(assert (=> b!3522608 m!3973875))

(assert (=> b!3521032 d!1027903))

(declare-fun d!1027905 () Bool)

(assert (=> d!1027905 (= (get!11991 lt!1202070) (v!37101 lt!1202070))))

(assert (=> b!3521032 d!1027905))

(declare-fun d!1027907 () Bool)

(declare-fun lt!1202820 () Int)

(assert (=> d!1027907 (>= lt!1202820 0)))

(declare-fun e!2180418 () Int)

(assert (=> d!1027907 (= lt!1202820 e!2180418)))

(declare-fun c!607233 () Bool)

(assert (=> d!1027907 (= c!607233 ((_ is Nil!37343) lt!1201923))))

(assert (=> d!1027907 (= (size!28412 lt!1201923) lt!1202820)))

(declare-fun b!3522609 () Bool)

(assert (=> b!3522609 (= e!2180418 0)))

(declare-fun b!3522610 () Bool)

(assert (=> b!3522610 (= e!2180418 (+ 1 (size!28412 (t!281698 lt!1201923))))))

(assert (= (and d!1027907 c!607233) b!3522609))

(assert (= (and d!1027907 (not c!607233)) b!3522610))

(declare-fun m!3973877 () Bool)

(assert (=> b!3522610 m!3973877))

(assert (=> b!3521032 d!1027907))

(declare-fun d!1027909 () Bool)

(assert (=> d!1027909 (= (get!11991 lt!1202217) (v!37101 lt!1202217))))

(assert (=> b!3521320 d!1027909))

(declare-fun d!1027911 () Bool)

(assert (=> d!1027911 (= (apply!8897 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217)))) (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202217))))) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217))))) (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202217))))))))

(declare-fun b_lambda!102865 () Bool)

(assert (=> (not b_lambda!102865) (not d!1027911)))

(declare-fun tb!196829 () Bool)

(declare-fun t!281936 () Bool)

(assert (=> (and b!3520694 (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217)))))) t!281936) tb!196829))

(declare-fun result!241202 () Bool)

(assert (=> tb!196829 (= result!241202 (inv!21 (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217))))) (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202217)))))))))

(declare-fun m!3973879 () Bool)

(assert (=> tb!196829 m!3973879))

(assert (=> d!1027911 t!281936))

(declare-fun b_and!250969 () Bool)

(assert (= b_and!250759 (and (=> t!281936 result!241202) b_and!250969)))

(declare-fun t!281938 () Bool)

(declare-fun tb!196831 () Bool)

(assert (=> (and b!3521754 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217)))))) t!281938) tb!196831))

(declare-fun result!241204 () Bool)

(assert (= result!241204 result!241202))

(assert (=> d!1027911 t!281938))

(declare-fun b_and!250971 () Bool)

(assert (= b_and!250835 (and (=> t!281938 result!241204) b_and!250971)))

(declare-fun tb!196833 () Bool)

(declare-fun t!281940 () Bool)

(assert (=> (and b!3520698 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217)))))) t!281940) tb!196833))

(declare-fun result!241206 () Bool)

(assert (= result!241206 result!241202))

(assert (=> d!1027911 t!281940))

(declare-fun b_and!250973 () Bool)

(assert (= b_and!250761 (and (=> t!281940 result!241206) b_and!250973)))

(declare-fun t!281942 () Bool)

(declare-fun tb!196835 () Bool)

(assert (=> (and b!3520728 (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217)))))) t!281942) tb!196835))

(declare-fun result!241208 () Bool)

(assert (= result!241208 result!241202))

(assert (=> d!1027911 t!281942))

(declare-fun b_and!250975 () Bool)

(assert (= b_and!250757 (and (=> t!281942 result!241208) b_and!250975)))

(declare-fun t!281944 () Bool)

(declare-fun tb!196837 () Bool)

(assert (=> (and b!3521743 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217)))))) t!281944) tb!196837))

(declare-fun result!241210 () Bool)

(assert (= result!241210 result!241202))

(assert (=> d!1027911 t!281944))

(declare-fun b_and!250977 () Bool)

(assert (= b_and!250831 (and (=> t!281944 result!241210) b_and!250977)))

(assert (=> d!1027911 m!3971637))

(declare-fun m!3973881 () Bool)

(assert (=> d!1027911 m!3973881))

(assert (=> b!3521320 d!1027911))

(declare-fun d!1027913 () Bool)

(assert (=> d!1027913 (= (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202217)))) (fromListB!1842 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202217)))))))

(declare-fun bs!565413 () Bool)

(assert (= bs!565413 d!1027913))

(declare-fun m!3973883 () Bool)

(assert (=> bs!565413 m!3973883))

(assert (=> b!3521320 d!1027913))

(declare-fun d!1027915 () Bool)

(assert (=> d!1027915 (= (inv!50574 (tag!6114 (h!42764 (t!281699 rules!2135)))) (= (mod (str.len (value!176525 (tag!6114 (h!42764 (t!281699 rules!2135))))) 2) 0))))

(assert (=> b!3521753 d!1027915))

(declare-fun d!1027917 () Bool)

(declare-fun res!1420723 () Bool)

(declare-fun e!2180420 () Bool)

(assert (=> d!1027917 (=> (not res!1420723) (not e!2180420))))

(assert (=> d!1027917 (= res!1420723 (semiInverseModEq!2312 (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135))))))))

(assert (=> d!1027917 (= (inv!50578 (transformation!5476 (h!42764 (t!281699 rules!2135)))) e!2180420)))

(declare-fun b!3522611 () Bool)

(assert (=> b!3522611 (= e!2180420 (equivClasses!2211 (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135))))))))

(assert (= (and d!1027917 res!1420723) b!3522611))

(declare-fun m!3973885 () Bool)

(assert (=> d!1027917 m!3973885))

(declare-fun m!3973887 () Bool)

(assert (=> b!3522611 m!3973887))

(assert (=> b!3521753 d!1027917))

(assert (=> bs!565331 d!1027071))

(assert (=> b!3520815 d!1027783))

(declare-fun d!1027919 () Bool)

(declare-fun charsToBigInt!0 (List!37466 Int) Int)

(assert (=> d!1027919 (= (inv!15 (value!176526 separatorToken!241)) (= (charsToBigInt!0 (text!40391 (value!176526 separatorToken!241)) 0) (value!176521 (value!176526 separatorToken!241))))))

(declare-fun bs!565414 () Bool)

(assert (= bs!565414 d!1027919))

(declare-fun m!3973889 () Bool)

(assert (=> bs!565414 m!3973889))

(assert (=> b!3521682 d!1027919))

(assert (=> b!3521031 d!1027905))

(declare-fun d!1027921 () Bool)

(assert (=> d!1027921 (= (apply!8897 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))) (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202070))))) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070))))) (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202070))))))))

(declare-fun b_lambda!102867 () Bool)

(assert (=> (not b_lambda!102867) (not d!1027921)))

(declare-fun t!281946 () Bool)

(declare-fun tb!196839 () Bool)

(assert (=> (and b!3520728 (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))) t!281946) tb!196839))

(declare-fun result!241212 () Bool)

(assert (=> tb!196839 (= result!241212 (inv!21 (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070))))) (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202070)))))))))

(declare-fun m!3973891 () Bool)

(assert (=> tb!196839 m!3973891))

(assert (=> d!1027921 t!281946))

(declare-fun b_and!250979 () Bool)

(assert (= b_and!250975 (and (=> t!281946 result!241212) b_and!250979)))

(declare-fun tb!196841 () Bool)

(declare-fun t!281948 () Bool)

(assert (=> (and b!3521754 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))) t!281948) tb!196841))

(declare-fun result!241214 () Bool)

(assert (= result!241214 result!241212))

(assert (=> d!1027921 t!281948))

(declare-fun b_and!250981 () Bool)

(assert (= b_and!250971 (and (=> t!281948 result!241214) b_and!250981)))

(declare-fun tb!196843 () Bool)

(declare-fun t!281950 () Bool)

(assert (=> (and b!3520694 (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))) t!281950) tb!196843))

(declare-fun result!241216 () Bool)

(assert (= result!241216 result!241212))

(assert (=> d!1027921 t!281950))

(declare-fun b_and!250983 () Bool)

(assert (= b_and!250969 (and (=> t!281950 result!241216) b_and!250983)))

(declare-fun t!281952 () Bool)

(declare-fun tb!196845 () Bool)

(assert (=> (and b!3520698 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))) t!281952) tb!196845))

(declare-fun result!241218 () Bool)

(assert (= result!241218 result!241212))

(assert (=> d!1027921 t!281952))

(declare-fun b_and!250985 () Bool)

(assert (= b_and!250973 (and (=> t!281952 result!241218) b_and!250985)))

(declare-fun t!281954 () Bool)

(declare-fun tb!196847 () Bool)

(assert (=> (and b!3521743 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))) t!281954) tb!196847))

(declare-fun result!241220 () Bool)

(assert (= result!241220 result!241212))

(assert (=> d!1027921 t!281954))

(declare-fun b_and!250987 () Bool)

(assert (= b_and!250977 (and (=> t!281954 result!241220) b_and!250987)))

(assert (=> d!1027921 m!3971097))

(declare-fun m!3973893 () Bool)

(assert (=> d!1027921 m!3973893))

(assert (=> b!3521031 d!1027921))

(declare-fun d!1027923 () Bool)

(assert (=> d!1027923 (= (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202070)))) (fromListB!1842 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202070)))))))

(declare-fun bs!565415 () Bool)

(assert (= bs!565415 d!1027923))

(declare-fun m!3973895 () Bool)

(assert (=> bs!565415 m!3973895))

(assert (=> b!3521031 d!1027923))

(declare-fun bm!254542 () Bool)

(declare-fun call!254550 () Regex!10235)

(declare-fun call!254554 () C!20656)

(assert (=> bm!254542 (= call!254550 (derivativeStep!3070 (regex!5476 (rule!8122 (h!42765 tokens!494))) call!254554))))

(declare-fun d!1027925 () Bool)

(declare-fun e!2180506 () Bool)

(assert (=> d!1027925 e!2180506))

(declare-fun res!1420782 () Bool)

(assert (=> d!1027925 (=> (not res!1420782) (not e!2180506))))

(declare-fun lt!1202955 () tuple2!37186)

(assert (=> d!1027925 (= res!1420782 (= (++!9253 (_1!21727 lt!1202955) (_2!21727 lt!1202955)) lt!1201911))))

(declare-fun e!2180510 () tuple2!37186)

(assert (=> d!1027925 (= lt!1202955 e!2180510)))

(declare-fun c!607284 () Bool)

(declare-fun lostCause!937 (Regex!10235) Bool)

(assert (=> d!1027925 (= c!607284 (lostCause!937 (regex!5476 (rule!8122 (h!42765 tokens!494)))))))

(declare-fun lt!1202935 () Unit!52994)

(declare-fun Unit!53000 () Unit!52994)

(assert (=> d!1027925 (= lt!1202935 Unit!53000)))

(declare-fun getSuffix!1505 (List!37467 List!37467) List!37467)

(assert (=> d!1027925 (= (getSuffix!1505 lt!1201911 Nil!37343) lt!1201911)))

(declare-fun lt!1202959 () Unit!52994)

(declare-fun lt!1202946 () Unit!52994)

(assert (=> d!1027925 (= lt!1202959 lt!1202946)))

(declare-fun lt!1202956 () List!37467)

(assert (=> d!1027925 (= lt!1201911 lt!1202956)))

(declare-fun lemmaSamePrefixThenSameSuffix!1287 (List!37467 List!37467 List!37467 List!37467 List!37467) Unit!52994)

(assert (=> d!1027925 (= lt!1202946 (lemmaSamePrefixThenSameSuffix!1287 Nil!37343 lt!1201911 Nil!37343 lt!1202956 lt!1201911))))

(assert (=> d!1027925 (= lt!1202956 (getSuffix!1505 lt!1201911 Nil!37343))))

(declare-fun lt!1202960 () Unit!52994)

(declare-fun lt!1202941 () Unit!52994)

(assert (=> d!1027925 (= lt!1202960 lt!1202941)))

(assert (=> d!1027925 (isPrefix!2874 Nil!37343 (++!9253 Nil!37343 lt!1201911))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1821 (List!37467 List!37467) Unit!52994)

(assert (=> d!1027925 (= lt!1202941 (lemmaConcatTwoListThenFirstIsPrefix!1821 Nil!37343 lt!1201911))))

(assert (=> d!1027925 (validRegex!4674 (regex!5476 (rule!8122 (h!42765 tokens!494))))))

(assert (=> d!1027925 (= (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 (size!28412 Nil!37343) lt!1201911 lt!1201911 (size!28412 lt!1201911)) lt!1202955)))

(declare-fun b!3522758 () Bool)

(declare-fun e!2180508 () tuple2!37186)

(assert (=> b!3522758 (= e!2180508 (tuple2!37187 Nil!37343 lt!1201911))))

(declare-fun b!3522759 () Bool)

(assert (=> b!3522759 (= e!2180510 (tuple2!37187 Nil!37343 lt!1201911))))

(declare-fun b!3522760 () Bool)

(declare-fun e!2180505 () Unit!52994)

(declare-fun Unit!53001 () Unit!52994)

(assert (=> b!3522760 (= e!2180505 Unit!53001)))

(declare-fun bm!254543 () Bool)

(declare-fun call!254551 () List!37467)

(assert (=> bm!254543 (= call!254551 (tail!5490 lt!1201911))))

(declare-fun b!3522761 () Bool)

(declare-fun e!2180509 () tuple2!37186)

(declare-fun e!2180511 () tuple2!37186)

(assert (=> b!3522761 (= e!2180509 e!2180511)))

(declare-fun lt!1202944 () tuple2!37186)

(declare-fun call!254553 () tuple2!37186)

(assert (=> b!3522761 (= lt!1202944 call!254553)))

(declare-fun c!607280 () Bool)

(assert (=> b!3522761 (= c!607280 (isEmpty!21812 (_1!21727 lt!1202944)))))

(declare-fun b!3522762 () Bool)

(declare-fun c!607283 () Bool)

(declare-fun call!254547 () Bool)

(assert (=> b!3522762 (= c!607283 call!254547)))

(declare-fun lt!1202942 () Unit!52994)

(declare-fun lt!1202952 () Unit!52994)

(assert (=> b!3522762 (= lt!1202942 lt!1202952)))

(assert (=> b!3522762 (= lt!1201911 Nil!37343)))

(declare-fun call!254549 () Unit!52994)

(assert (=> b!3522762 (= lt!1202952 call!254549)))

(declare-fun lt!1202936 () Unit!52994)

(declare-fun lt!1202953 () Unit!52994)

(assert (=> b!3522762 (= lt!1202936 lt!1202953)))

(declare-fun call!254552 () Bool)

(assert (=> b!3522762 call!254552))

(declare-fun call!254548 () Unit!52994)

(assert (=> b!3522762 (= lt!1202953 call!254548)))

(declare-fun e!2180512 () tuple2!37186)

(assert (=> b!3522762 (= e!2180512 e!2180508)))

(declare-fun bm!254544 () Bool)

(assert (=> bm!254544 (= call!254554 (head!7385 lt!1201911))))

(declare-fun bm!254545 () Bool)

(assert (=> bm!254545 (= call!254547 (nullable!3517 (regex!5476 (rule!8122 (h!42765 tokens!494)))))))

(declare-fun b!3522763 () Bool)

(assert (=> b!3522763 (= e!2180510 e!2180512)))

(declare-fun c!607279 () Bool)

(assert (=> b!3522763 (= c!607279 (= (size!28412 Nil!37343) (size!28412 lt!1201911)))))

(declare-fun b!3522764 () Bool)

(assert (=> b!3522764 (= e!2180508 (tuple2!37187 Nil!37343 Nil!37343))))

(declare-fun b!3522765 () Bool)

(declare-fun e!2180507 () Bool)

(assert (=> b!3522765 (= e!2180507 (>= (size!28412 (_1!21727 lt!1202955)) (size!28412 Nil!37343)))))

(declare-fun b!3522766 () Bool)

(declare-fun c!607282 () Bool)

(assert (=> b!3522766 (= c!607282 call!254547)))

(declare-fun lt!1202945 () Unit!52994)

(declare-fun lt!1202958 () Unit!52994)

(assert (=> b!3522766 (= lt!1202945 lt!1202958)))

(declare-fun lt!1202951 () C!20656)

(declare-fun lt!1202947 () List!37467)

(assert (=> b!3522766 (= (++!9253 (++!9253 Nil!37343 (Cons!37343 lt!1202951 Nil!37343)) lt!1202947) lt!1201911)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1175 (List!37467 C!20656 List!37467 List!37467) Unit!52994)

(assert (=> b!3522766 (= lt!1202958 (lemmaMoveElementToOtherListKeepsConcatEq!1175 Nil!37343 lt!1202951 lt!1202947 lt!1201911))))

(assert (=> b!3522766 (= lt!1202947 (tail!5490 lt!1201911))))

(assert (=> b!3522766 (= lt!1202951 (head!7385 lt!1201911))))

(declare-fun lt!1202948 () Unit!52994)

(declare-fun lt!1202962 () Unit!52994)

(assert (=> b!3522766 (= lt!1202948 lt!1202962)))

(assert (=> b!3522766 (isPrefix!2874 (++!9253 Nil!37343 (Cons!37343 (head!7385 (getSuffix!1505 lt!1201911 Nil!37343)) Nil!37343)) lt!1201911)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!563 (List!37467 List!37467) Unit!52994)

(assert (=> b!3522766 (= lt!1202962 (lemmaAddHeadSuffixToPrefixStillPrefix!563 Nil!37343 lt!1201911))))

(declare-fun lt!1202954 () Unit!52994)

(declare-fun lt!1202943 () Unit!52994)

(assert (=> b!3522766 (= lt!1202954 lt!1202943)))

(assert (=> b!3522766 (= lt!1202943 (lemmaAddHeadSuffixToPrefixStillPrefix!563 Nil!37343 lt!1201911))))

(declare-fun lt!1202949 () List!37467)

(assert (=> b!3522766 (= lt!1202949 (++!9253 Nil!37343 (Cons!37343 (head!7385 lt!1201911) Nil!37343)))))

(declare-fun lt!1202957 () Unit!52994)

(assert (=> b!3522766 (= lt!1202957 e!2180505)))

(declare-fun c!607281 () Bool)

(assert (=> b!3522766 (= c!607281 (= (size!28412 Nil!37343) (size!28412 lt!1201911)))))

(declare-fun lt!1202961 () Unit!52994)

(declare-fun lt!1202938 () Unit!52994)

(assert (=> b!3522766 (= lt!1202961 lt!1202938)))

(assert (=> b!3522766 (<= (size!28412 Nil!37343) (size!28412 lt!1201911))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!371 (List!37467 List!37467) Unit!52994)

(assert (=> b!3522766 (= lt!1202938 (lemmaIsPrefixThenSmallerEqSize!371 Nil!37343 lt!1201911))))

(assert (=> b!3522766 (= e!2180512 e!2180509)))

(declare-fun bm!254546 () Bool)

(assert (=> bm!254546 (= call!254553 (findLongestMatchInner!939 call!254550 lt!1202949 (+ (size!28412 Nil!37343) 1) call!254551 lt!1201911 (size!28412 lt!1201911)))))

(declare-fun bm!254547 () Bool)

(assert (=> bm!254547 (= call!254548 (lemmaIsPrefixRefl!1833 lt!1201911 lt!1201911))))

(declare-fun b!3522767 () Bool)

(assert (=> b!3522767 (= e!2180511 lt!1202944)))

(declare-fun b!3522768 () Bool)

(assert (=> b!3522768 (= e!2180511 (tuple2!37187 Nil!37343 lt!1201911))))

(declare-fun bm!254548 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!570 (List!37467 List!37467 List!37467) Unit!52994)

(assert (=> bm!254548 (= call!254549 (lemmaIsPrefixSameLengthThenSameList!570 lt!1201911 Nil!37343 lt!1201911))))

(declare-fun bm!254549 () Bool)

(assert (=> bm!254549 (= call!254552 (isPrefix!2874 lt!1201911 lt!1201911))))

(declare-fun b!3522769 () Bool)

(assert (=> b!3522769 (= e!2180506 e!2180507)))

(declare-fun res!1420783 () Bool)

(assert (=> b!3522769 (=> res!1420783 e!2180507)))

(assert (=> b!3522769 (= res!1420783 (isEmpty!21812 (_1!21727 lt!1202955)))))

(declare-fun b!3522770 () Bool)

(declare-fun Unit!53002 () Unit!52994)

(assert (=> b!3522770 (= e!2180505 Unit!53002)))

(declare-fun lt!1202937 () Unit!52994)

(assert (=> b!3522770 (= lt!1202937 call!254548)))

(assert (=> b!3522770 call!254552))

(declare-fun lt!1202940 () Unit!52994)

(assert (=> b!3522770 (= lt!1202940 lt!1202937)))

(declare-fun lt!1202950 () Unit!52994)

(assert (=> b!3522770 (= lt!1202950 call!254549)))

(assert (=> b!3522770 (= lt!1201911 Nil!37343)))

(declare-fun lt!1202939 () Unit!52994)

(assert (=> b!3522770 (= lt!1202939 lt!1202950)))

(assert (=> b!3522770 false))

(declare-fun b!3522771 () Bool)

(assert (=> b!3522771 (= e!2180509 call!254553)))

(assert (= (and d!1027925 c!607284) b!3522759))

(assert (= (and d!1027925 (not c!607284)) b!3522763))

(assert (= (and b!3522763 c!607279) b!3522762))

(assert (= (and b!3522763 (not c!607279)) b!3522766))

(assert (= (and b!3522762 c!607283) b!3522764))

(assert (= (and b!3522762 (not c!607283)) b!3522758))

(assert (= (and b!3522766 c!607281) b!3522770))

(assert (= (and b!3522766 (not c!607281)) b!3522760))

(assert (= (and b!3522766 c!607282) b!3522761))

(assert (= (and b!3522766 (not c!607282)) b!3522771))

(assert (= (and b!3522761 c!607280) b!3522768))

(assert (= (and b!3522761 (not c!607280)) b!3522767))

(assert (= (or b!3522761 b!3522771) bm!254544))

(assert (= (or b!3522761 b!3522771) bm!254543))

(assert (= (or b!3522761 b!3522771) bm!254542))

(assert (= (or b!3522761 b!3522771) bm!254546))

(assert (= (or b!3522762 b!3522770) bm!254547))

(assert (= (or b!3522762 b!3522770) bm!254549))

(assert (= (or b!3522762 b!3522770) bm!254548))

(assert (= (or b!3522762 b!3522766) bm!254545))

(assert (= (and d!1027925 res!1420782) b!3522769))

(assert (= (and b!3522769 (not res!1420783)) b!3522765))

(declare-fun m!3974169 () Bool)

(assert (=> b!3522765 m!3974169))

(assert (=> b!3522765 m!3971607))

(assert (=> bm!254544 m!3970781))

(declare-fun m!3974171 () Bool)

(assert (=> d!1027925 m!3974171))

(assert (=> d!1027925 m!3973633))

(declare-fun m!3974173 () Bool)

(assert (=> d!1027925 m!3974173))

(declare-fun m!3974175 () Bool)

(assert (=> d!1027925 m!3974175))

(declare-fun m!3974177 () Bool)

(assert (=> d!1027925 m!3974177))

(declare-fun m!3974179 () Bool)

(assert (=> d!1027925 m!3974179))

(declare-fun m!3974181 () Bool)

(assert (=> d!1027925 m!3974181))

(assert (=> d!1027925 m!3974181))

(declare-fun m!3974183 () Bool)

(assert (=> d!1027925 m!3974183))

(declare-fun m!3974185 () Bool)

(assert (=> bm!254547 m!3974185))

(declare-fun m!3974187 () Bool)

(assert (=> b!3522766 m!3974187))

(declare-fun m!3974189 () Bool)

(assert (=> b!3522766 m!3974189))

(declare-fun m!3974191 () Bool)

(assert (=> b!3522766 m!3974191))

(assert (=> b!3522766 m!3971607))

(declare-fun m!3974193 () Bool)

(assert (=> b!3522766 m!3974193))

(assert (=> b!3522766 m!3970641))

(assert (=> b!3522766 m!3974175))

(declare-fun m!3974195 () Bool)

(assert (=> b!3522766 m!3974195))

(assert (=> b!3522766 m!3974189))

(declare-fun m!3974197 () Bool)

(assert (=> b!3522766 m!3974197))

(assert (=> b!3522766 m!3974175))

(declare-fun m!3974199 () Bool)

(assert (=> b!3522766 m!3974199))

(declare-fun m!3974201 () Bool)

(assert (=> b!3522766 m!3974201))

(assert (=> b!3522766 m!3970777))

(assert (=> b!3522766 m!3970781))

(declare-fun m!3974203 () Bool)

(assert (=> b!3522766 m!3974203))

(assert (=> b!3522766 m!3974199))

(assert (=> bm!254543 m!3970777))

(declare-fun m!3974205 () Bool)

(assert (=> bm!254548 m!3974205))

(assert (=> bm!254546 m!3970641))

(declare-fun m!3974207 () Bool)

(assert (=> bm!254546 m!3974207))

(declare-fun m!3974209 () Bool)

(assert (=> bm!254549 m!3974209))

(declare-fun m!3974211 () Bool)

(assert (=> b!3522769 m!3974211))

(assert (=> bm!254545 m!3973673))

(declare-fun m!3974213 () Bool)

(assert (=> b!3522761 m!3974213))

(declare-fun m!3974215 () Bool)

(assert (=> bm!254542 m!3974215))

(assert (=> b!3521493 d!1027925))

(declare-fun b!3522776 () Bool)

(declare-fun e!2180515 () Bool)

(assert (=> b!3522776 (= e!2180515 true)))

(declare-fun d!1028003 () Bool)

(assert (=> d!1028003 e!2180515))

(assert (= d!1028003 b!3522776))

(declare-fun order!20095 () Int)

(declare-fun lambda!122766 () Int)

(declare-fun dynLambda!15914 (Int Int) Int)

(assert (=> b!3522776 (< (dynLambda!15904 order!20085 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) (dynLambda!15914 order!20095 lambda!122766))))

(assert (=> b!3522776 (< (dynLambda!15906 order!20089 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) (dynLambda!15914 order!20095 lambda!122766))))

(assert (=> d!1028003 (= (list!13659 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (seqFromList!4006 (_1!21727 lt!1202282))))) (list!13659 (seqFromList!4006 (_1!21727 lt!1202282))))))

(declare-fun lt!1202965 () Unit!52994)

(declare-fun ForallOf!609 (Int BalanceConc!22268) Unit!52994)

(assert (=> d!1028003 (= lt!1202965 (ForallOf!609 lambda!122766 (seqFromList!4006 (_1!21727 lt!1202282))))))

(assert (=> d!1028003 (= (lemmaSemiInverse!1291 (transformation!5476 (rule!8122 (h!42765 tokens!494))) (seqFromList!4006 (_1!21727 lt!1202282))) lt!1202965)))

(declare-fun b_lambda!102873 () Bool)

(assert (=> (not b_lambda!102873) (not d!1028003)))

(declare-fun tb!196859 () Bool)

(declare-fun t!281968 () Bool)

(assert (=> (and b!3521754 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281968) tb!196859))

(declare-fun tp!1087090 () Bool)

(declare-fun e!2180516 () Bool)

(declare-fun b!3522777 () Bool)

(assert (=> b!3522777 (= e!2180516 (and (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (seqFromList!4006 (_1!21727 lt!1202282)))))) tp!1087090))))

(declare-fun result!241232 () Bool)

(assert (=> tb!196859 (= result!241232 (and (inv!50582 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (seqFromList!4006 (_1!21727 lt!1202282))))) e!2180516))))

(assert (= tb!196859 b!3522777))

(declare-fun m!3974217 () Bool)

(assert (=> b!3522777 m!3974217))

(declare-fun m!3974219 () Bool)

(assert (=> tb!196859 m!3974219))

(assert (=> d!1028003 t!281968))

(declare-fun b_and!250999 () Bool)

(assert (= b_and!250967 (and (=> t!281968 result!241232) b_and!250999)))

(declare-fun t!281970 () Bool)

(declare-fun tb!196861 () Bool)

(assert (=> (and b!3520728 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281970) tb!196861))

(declare-fun result!241234 () Bool)

(assert (= result!241234 result!241232))

(assert (=> d!1028003 t!281970))

(declare-fun b_and!251001 () Bool)

(assert (= b_and!250961 (and (=> t!281970 result!241234) b_and!251001)))

(declare-fun tb!196863 () Bool)

(declare-fun t!281972 () Bool)

(assert (=> (and b!3520694 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281972) tb!196863))

(declare-fun result!241236 () Bool)

(assert (= result!241236 result!241232))

(assert (=> d!1028003 t!281972))

(declare-fun b_and!251003 () Bool)

(assert (= b_and!250959 (and (=> t!281972 result!241236) b_and!251003)))

(declare-fun t!281974 () Bool)

(declare-fun tb!196865 () Bool)

(assert (=> (and b!3521743 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281974) tb!196865))

(declare-fun result!241238 () Bool)

(assert (= result!241238 result!241232))

(assert (=> d!1028003 t!281974))

(declare-fun b_and!251005 () Bool)

(assert (= b_and!250963 (and (=> t!281974 result!241238) b_and!251005)))

(declare-fun t!281978 () Bool)

(declare-fun tb!196869 () Bool)

(assert (=> (and b!3520698 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281978) tb!196869))

(declare-fun result!241242 () Bool)

(assert (= result!241242 result!241232))

(assert (=> d!1028003 t!281978))

(declare-fun b_and!251007 () Bool)

(assert (= b_and!250965 (and (=> t!281978 result!241242) b_and!251007)))

(declare-fun b_lambda!102877 () Bool)

(assert (=> (not b_lambda!102877) (not d!1028003)))

(declare-fun t!281982 () Bool)

(declare-fun tb!196873 () Bool)

(assert (=> (and b!3521754 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281982) tb!196873))

(declare-fun result!241246 () Bool)

(assert (=> tb!196873 (= result!241246 (inv!21 (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (seqFromList!4006 (_1!21727 lt!1202282)))))))

(declare-fun m!3974223 () Bool)

(assert (=> tb!196873 m!3974223))

(assert (=> d!1028003 t!281982))

(declare-fun b_and!251013 () Bool)

(assert (= b_and!250981 (and (=> t!281982 result!241246) b_and!251013)))

(declare-fun t!281986 () Bool)

(declare-fun tb!196877 () Bool)

(assert (=> (and b!3520694 (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281986) tb!196877))

(declare-fun result!241250 () Bool)

(assert (= result!241250 result!241246))

(assert (=> d!1028003 t!281986))

(declare-fun b_and!251017 () Bool)

(assert (= b_and!250983 (and (=> t!281986 result!241250) b_and!251017)))

(declare-fun t!281990 () Bool)

(declare-fun tb!196881 () Bool)

(assert (=> (and b!3520698 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281990) tb!196881))

(declare-fun result!241254 () Bool)

(assert (= result!241254 result!241246))

(assert (=> d!1028003 t!281990))

(declare-fun b_and!251021 () Bool)

(assert (= b_and!250985 (and (=> t!281990 result!241254) b_and!251021)))

(declare-fun tb!196885 () Bool)

(declare-fun t!281994 () Bool)

(assert (=> (and b!3520728 (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281994) tb!196885))

(declare-fun result!241258 () Bool)

(assert (= result!241258 result!241246))

(assert (=> d!1028003 t!281994))

(declare-fun b_and!251025 () Bool)

(assert (= b_and!250979 (and (=> t!281994 result!241258) b_and!251025)))

(declare-fun t!281996 () Bool)

(declare-fun tb!196887 () Bool)

(assert (=> (and b!3521743 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!281996) tb!196887))

(declare-fun result!241260 () Bool)

(assert (= result!241260 result!241246))

(assert (=> d!1028003 t!281996))

(declare-fun b_and!251027 () Bool)

(assert (= b_and!250987 (and (=> t!281996 result!241260) b_and!251027)))

(declare-fun m!3974229 () Bool)

(assert (=> d!1028003 m!3974229))

(declare-fun m!3974231 () Bool)

(assert (=> d!1028003 m!3974231))

(assert (=> d!1028003 m!3972009))

(declare-fun m!3974233 () Bool)

(assert (=> d!1028003 m!3974233))

(assert (=> d!1028003 m!3972009))

(declare-fun m!3974235 () Bool)

(assert (=> d!1028003 m!3974235))

(assert (=> d!1028003 m!3972009))

(assert (=> d!1028003 m!3974229))

(assert (=> d!1028003 m!3974231))

(declare-fun m!3974239 () Bool)

(assert (=> d!1028003 m!3974239))

(assert (=> b!3521493 d!1028003))

(assert (=> b!3521493 d!1027195))

(declare-fun d!1028013 () Bool)

(assert (=> d!1028013 (= (seqFromList!4006 (_1!21727 lt!1202282)) (fromListB!1842 (_1!21727 lt!1202282)))))

(declare-fun bs!565435 () Bool)

(assert (= bs!565435 d!1028013))

(declare-fun m!3974247 () Bool)

(assert (=> bs!565435 m!3974247))

(assert (=> b!3521493 d!1028013))

(declare-fun d!1028017 () Bool)

(declare-fun e!2180527 () Bool)

(assert (=> d!1028017 e!2180527))

(declare-fun res!1420792 () Bool)

(assert (=> d!1028017 (=> res!1420792 e!2180527)))

(assert (=> d!1028017 (= res!1420792 (isEmpty!21812 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 (size!28412 Nil!37343) lt!1201911 lt!1201911 (size!28412 lt!1201911)))))))

(declare-fun lt!1202978 () Unit!52994)

(declare-fun choose!20457 (Regex!10235 List!37467) Unit!52994)

(assert (=> d!1028017 (= lt!1202978 (choose!20457 (regex!5476 (rule!8122 (h!42765 tokens!494))) lt!1201911))))

(assert (=> d!1028017 (validRegex!4674 (regex!5476 (rule!8122 (h!42765 tokens!494))))))

(assert (=> d!1028017 (= (longestMatchIsAcceptedByMatchOrIsEmpty!912 (regex!5476 (rule!8122 (h!42765 tokens!494))) lt!1201911) lt!1202978)))

(declare-fun b!3522790 () Bool)

(assert (=> b!3522790 (= e!2180527 (matchR!4819 (regex!5476 (rule!8122 (h!42765 tokens!494))) (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 (size!28412 Nil!37343) lt!1201911 lt!1201911 (size!28412 lt!1201911)))))))

(assert (= (and d!1028017 (not res!1420792)) b!3522790))

(assert (=> d!1028017 m!3971607))

(assert (=> d!1028017 m!3970641))

(assert (=> d!1028017 m!3971995))

(assert (=> d!1028017 m!3972017))

(assert (=> d!1028017 m!3971607))

(assert (=> d!1028017 m!3973633))

(declare-fun m!3974317 () Bool)

(assert (=> d!1028017 m!3974317))

(assert (=> d!1028017 m!3970641))

(assert (=> b!3522790 m!3971607))

(assert (=> b!3522790 m!3970641))

(assert (=> b!3522790 m!3971607))

(assert (=> b!3522790 m!3970641))

(assert (=> b!3522790 m!3971995))

(assert (=> b!3522790 m!3971997))

(assert (=> b!3521493 d!1028017))

(declare-fun d!1028041 () Bool)

(assert (=> d!1028041 (= (apply!8897 (transformation!5476 (rule!8122 (h!42765 tokens!494))) (seqFromList!4006 (_1!21727 lt!1202282))) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (seqFromList!4006 (_1!21727 lt!1202282))))))

(declare-fun b_lambda!102879 () Bool)

(assert (=> (not b_lambda!102879) (not d!1028041)))

(assert (=> d!1028041 t!281994))

(declare-fun b_and!251029 () Bool)

(assert (= b_and!251025 (and (=> t!281994 result!241258) b_and!251029)))

(assert (=> d!1028041 t!281996))

(declare-fun b_and!251031 () Bool)

(assert (= b_and!251027 (and (=> t!281996 result!241260) b_and!251031)))

(assert (=> d!1028041 t!281990))

(declare-fun b_and!251033 () Bool)

(assert (= b_and!251021 (and (=> t!281990 result!241254) b_and!251033)))

(assert (=> d!1028041 t!281986))

(declare-fun b_and!251035 () Bool)

(assert (= b_and!251017 (and (=> t!281986 result!241250) b_and!251035)))

(assert (=> d!1028041 t!281982))

(declare-fun b_and!251037 () Bool)

(assert (= b_and!251013 (and (=> t!281982 result!241246) b_and!251037)))

(assert (=> d!1028041 m!3972009))

(assert (=> d!1028041 m!3974229))

(assert (=> b!3521493 d!1028041))

(declare-fun d!1028045 () Bool)

(declare-fun lt!1202983 () Int)

(assert (=> d!1028045 (= lt!1202983 (size!28412 (list!13659 (seqFromList!4006 (_1!21727 lt!1202282)))))))

(assert (=> d!1028045 (= lt!1202983 (size!28421 (c!606753 (seqFromList!4006 (_1!21727 lt!1202282)))))))

(assert (=> d!1028045 (= (size!28419 (seqFromList!4006 (_1!21727 lt!1202282))) lt!1202983)))

(declare-fun bs!565448 () Bool)

(assert (= bs!565448 d!1028045))

(assert (=> bs!565448 m!3972009))

(assert (=> bs!565448 m!3974233))

(assert (=> bs!565448 m!3974233))

(declare-fun m!3974335 () Bool)

(assert (=> bs!565448 m!3974335))

(declare-fun m!3974339 () Bool)

(assert (=> bs!565448 m!3974339))

(assert (=> b!3521493 d!1028045))

(declare-fun d!1028051 () Bool)

(declare-fun lt!1202985 () Int)

(assert (=> d!1028051 (>= lt!1202985 0)))

(declare-fun e!2180534 () Int)

(assert (=> d!1028051 (= lt!1202985 e!2180534)))

(declare-fun c!607290 () Bool)

(assert (=> d!1028051 (= c!607290 ((_ is Nil!37343) Nil!37343))))

(assert (=> d!1028051 (= (size!28412 Nil!37343) lt!1202985)))

(declare-fun b!3522799 () Bool)

(assert (=> b!3522799 (= e!2180534 0)))

(declare-fun b!3522800 () Bool)

(assert (=> b!3522800 (= e!2180534 (+ 1 (size!28412 (t!281698 Nil!37343))))))

(assert (= (and d!1028051 c!607290) b!3522799))

(assert (= (and d!1028051 (not c!607290)) b!3522800))

(declare-fun m!3974341 () Bool)

(assert (=> b!3522800 m!3974341))

(assert (=> b!3521493 d!1028051))

(declare-fun d!1028053 () Bool)

(assert (=> d!1028053 (= (isEmpty!21812 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 (size!28412 Nil!37343) lt!1201911 lt!1201911 (size!28412 lt!1201911)))) ((_ is Nil!37343) (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 (size!28412 Nil!37343) lt!1201911 lt!1201911 (size!28412 lt!1201911)))))))

(assert (=> b!3521493 d!1028053))

(declare-fun b!3522809 () Bool)

(declare-fun res!1420798 () Bool)

(declare-fun e!2180542 () Bool)

(assert (=> b!3522809 (=> (not res!1420798) (not e!2180542))))

(assert (=> b!3522809 (= res!1420798 (isEmpty!21812 (tail!5490 (tail!5490 lt!1201944))))))

(declare-fun bm!254550 () Bool)

(declare-fun call!254555 () Bool)

(assert (=> bm!254550 (= call!254555 (isEmpty!21812 (tail!5490 lt!1201944)))))

(declare-fun b!3522810 () Bool)

(declare-fun res!1420805 () Bool)

(declare-fun e!2180545 () Bool)

(assert (=> b!3522810 (=> res!1420805 e!2180545)))

(assert (=> b!3522810 (= res!1420805 e!2180542)))

(declare-fun res!1420803 () Bool)

(assert (=> b!3522810 (=> (not res!1420803) (not e!2180542))))

(declare-fun lt!1203020 () Bool)

(assert (=> b!3522810 (= res!1420803 lt!1203020)))

(declare-fun b!3522811 () Bool)

(declare-fun res!1420801 () Bool)

(assert (=> b!3522811 (=> (not res!1420801) (not e!2180542))))

(assert (=> b!3522811 (= res!1420801 (not call!254555))))

(declare-fun b!3522812 () Bool)

(declare-fun e!2180543 () Bool)

(assert (=> b!3522812 (= e!2180545 e!2180543)))

(declare-fun res!1420802 () Bool)

(assert (=> b!3522812 (=> (not res!1420802) (not e!2180543))))

(assert (=> b!3522812 (= res!1420802 (not lt!1203020))))

(declare-fun b!3522813 () Bool)

(declare-fun e!2180544 () Bool)

(assert (=> b!3522813 (= e!2180544 (not (= (head!7385 (tail!5490 lt!1201944)) (c!606752 (derivativeStep!3070 (regex!5476 (rule!8122 separatorToken!241)) (head!7385 lt!1201944))))))))

(declare-fun b!3522814 () Bool)

(declare-fun e!2180539 () Bool)

(declare-fun e!2180540 () Bool)

(assert (=> b!3522814 (= e!2180539 e!2180540)))

(declare-fun c!607295 () Bool)

(assert (=> b!3522814 (= c!607295 ((_ is EmptyLang!10235) (derivativeStep!3070 (regex!5476 (rule!8122 separatorToken!241)) (head!7385 lt!1201944))))))

(declare-fun b!3522815 () Bool)

(declare-fun e!2180541 () Bool)

(assert (=> b!3522815 (= e!2180541 (matchR!4819 (derivativeStep!3070 (derivativeStep!3070 (regex!5476 (rule!8122 separatorToken!241)) (head!7385 lt!1201944)) (head!7385 (tail!5490 lt!1201944))) (tail!5490 (tail!5490 lt!1201944))))))

(declare-fun b!3522816 () Bool)

(assert (=> b!3522816 (= e!2180541 (nullable!3517 (derivativeStep!3070 (regex!5476 (rule!8122 separatorToken!241)) (head!7385 lt!1201944))))))

(declare-fun b!3522808 () Bool)

(declare-fun res!1420800 () Bool)

(assert (=> b!3522808 (=> res!1420800 e!2180544)))

(assert (=> b!3522808 (= res!1420800 (not (isEmpty!21812 (tail!5490 (tail!5490 lt!1201944)))))))

(declare-fun d!1028055 () Bool)

(assert (=> d!1028055 e!2180539))

(declare-fun c!607294 () Bool)

(assert (=> d!1028055 (= c!607294 ((_ is EmptyExpr!10235) (derivativeStep!3070 (regex!5476 (rule!8122 separatorToken!241)) (head!7385 lt!1201944))))))

(assert (=> d!1028055 (= lt!1203020 e!2180541)))

(declare-fun c!607296 () Bool)

(assert (=> d!1028055 (= c!607296 (isEmpty!21812 (tail!5490 lt!1201944)))))

(assert (=> d!1028055 (validRegex!4674 (derivativeStep!3070 (regex!5476 (rule!8122 separatorToken!241)) (head!7385 lt!1201944)))))

(assert (=> d!1028055 (= (matchR!4819 (derivativeStep!3070 (regex!5476 (rule!8122 separatorToken!241)) (head!7385 lt!1201944)) (tail!5490 lt!1201944)) lt!1203020)))

(declare-fun b!3522817 () Bool)

(assert (=> b!3522817 (= e!2180539 (= lt!1203020 call!254555))))

(declare-fun b!3522818 () Bool)

(declare-fun res!1420799 () Bool)

(assert (=> b!3522818 (=> res!1420799 e!2180545)))

(assert (=> b!3522818 (= res!1420799 (not ((_ is ElementMatch!10235) (derivativeStep!3070 (regex!5476 (rule!8122 separatorToken!241)) (head!7385 lt!1201944)))))))

(assert (=> b!3522818 (= e!2180540 e!2180545)))

(declare-fun b!3522819 () Bool)

(assert (=> b!3522819 (= e!2180540 (not lt!1203020))))

(declare-fun b!3522820 () Bool)

(assert (=> b!3522820 (= e!2180542 (= (head!7385 (tail!5490 lt!1201944)) (c!606752 (derivativeStep!3070 (regex!5476 (rule!8122 separatorToken!241)) (head!7385 lt!1201944)))))))

(declare-fun b!3522821 () Bool)

(assert (=> b!3522821 (= e!2180543 e!2180544)))

(declare-fun res!1420804 () Bool)

(assert (=> b!3522821 (=> res!1420804 e!2180544)))

(assert (=> b!3522821 (= res!1420804 call!254555)))

(assert (= (and d!1028055 c!607296) b!3522816))

(assert (= (and d!1028055 (not c!607296)) b!3522815))

(assert (= (and d!1028055 c!607294) b!3522817))

(assert (= (and d!1028055 (not c!607294)) b!3522814))

(assert (= (and b!3522814 c!607295) b!3522819))

(assert (= (and b!3522814 (not c!607295)) b!3522818))

(assert (= (and b!3522818 (not res!1420799)) b!3522810))

(assert (= (and b!3522810 res!1420803) b!3522811))

(assert (= (and b!3522811 res!1420801) b!3522809))

(assert (= (and b!3522809 res!1420798) b!3522820))

(assert (= (and b!3522810 (not res!1420805)) b!3522812))

(assert (= (and b!3522812 res!1420802) b!3522821))

(assert (= (and b!3522821 (not res!1420804)) b!3522808))

(assert (= (and b!3522808 (not res!1420800)) b!3522813))

(assert (= (or b!3522817 b!3522811 b!3522821) bm!254550))

(assert (=> d!1028055 m!3971029))

(assert (=> d!1028055 m!3971031))

(assert (=> d!1028055 m!3971033))

(declare-fun m!3974343 () Bool)

(assert (=> d!1028055 m!3974343))

(assert (=> b!3522808 m!3971029))

(declare-fun m!3974345 () Bool)

(assert (=> b!3522808 m!3974345))

(assert (=> b!3522808 m!3974345))

(declare-fun m!3974347 () Bool)

(assert (=> b!3522808 m!3974347))

(assert (=> bm!254550 m!3971029))

(assert (=> bm!254550 m!3971031))

(assert (=> b!3522815 m!3971029))

(declare-fun m!3974349 () Bool)

(assert (=> b!3522815 m!3974349))

(assert (=> b!3522815 m!3971033))

(assert (=> b!3522815 m!3974349))

(declare-fun m!3974351 () Bool)

(assert (=> b!3522815 m!3974351))

(assert (=> b!3522815 m!3971029))

(assert (=> b!3522815 m!3974345))

(assert (=> b!3522815 m!3974351))

(assert (=> b!3522815 m!3974345))

(declare-fun m!3974353 () Bool)

(assert (=> b!3522815 m!3974353))

(assert (=> b!3522820 m!3971029))

(assert (=> b!3522820 m!3974349))

(assert (=> b!3522816 m!3971033))

(declare-fun m!3974355 () Bool)

(assert (=> b!3522816 m!3974355))

(assert (=> b!3522813 m!3971029))

(assert (=> b!3522813 m!3974349))

(assert (=> b!3522809 m!3971029))

(assert (=> b!3522809 m!3974345))

(assert (=> b!3522809 m!3974345))

(assert (=> b!3522809 m!3974347))

(assert (=> b!3520972 d!1028055))

(declare-fun call!254565 () Regex!10235)

(declare-fun c!607315 () Bool)

(declare-fun bm!254560 () Bool)

(declare-fun c!607316 () Bool)

(assert (=> bm!254560 (= call!254565 (derivativeStep!3070 (ite c!607315 (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))) (ite c!607316 (reg!10564 (regex!5476 (rule!8122 separatorToken!241))) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241))))) (head!7385 lt!1201944)))))

(declare-fun b!3522864 () Bool)

(declare-fun e!2180569 () Regex!10235)

(declare-fun call!254567 () Regex!10235)

(assert (=> b!3522864 (= e!2180569 (Union!10235 (Concat!15941 call!254567 (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241)))) EmptyLang!10235))))

(declare-fun b!3522865 () Bool)

(declare-fun c!607317 () Bool)

(assert (=> b!3522865 (= c!607317 (nullable!3517 (regOne!20982 (regex!5476 (rule!8122 separatorToken!241)))))))

(declare-fun e!2180571 () Regex!10235)

(assert (=> b!3522865 (= e!2180571 e!2180569)))

(declare-fun call!254568 () Regex!10235)

(declare-fun b!3522866 () Bool)

(assert (=> b!3522866 (= e!2180569 (Union!10235 (Concat!15941 call!254567 (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241)))) call!254568))))

(declare-fun b!3522867 () Bool)

(declare-fun e!2180570 () Regex!10235)

(assert (=> b!3522867 (= e!2180570 e!2180571)))

(assert (=> b!3522867 (= c!607316 ((_ is Star!10235) (regex!5476 (rule!8122 separatorToken!241))))))

(declare-fun d!1028057 () Bool)

(declare-fun lt!1203028 () Regex!10235)

(assert (=> d!1028057 (validRegex!4674 lt!1203028)))

(declare-fun e!2180568 () Regex!10235)

(assert (=> d!1028057 (= lt!1203028 e!2180568)))

(declare-fun c!607313 () Bool)

(assert (=> d!1028057 (= c!607313 (or ((_ is EmptyExpr!10235) (regex!5476 (rule!8122 separatorToken!241))) ((_ is EmptyLang!10235) (regex!5476 (rule!8122 separatorToken!241)))))))

(assert (=> d!1028057 (validRegex!4674 (regex!5476 (rule!8122 separatorToken!241)))))

(assert (=> d!1028057 (= (derivativeStep!3070 (regex!5476 (rule!8122 separatorToken!241)) (head!7385 lt!1201944)) lt!1203028)))

(declare-fun bm!254561 () Bool)

(declare-fun call!254566 () Regex!10235)

(assert (=> bm!254561 (= call!254566 call!254565)))

(declare-fun b!3522868 () Bool)

(declare-fun e!2180572 () Regex!10235)

(assert (=> b!3522868 (= e!2180568 e!2180572)))

(declare-fun c!607314 () Bool)

(assert (=> b!3522868 (= c!607314 ((_ is ElementMatch!10235) (regex!5476 (rule!8122 separatorToken!241))))))

(declare-fun b!3522869 () Bool)

(assert (=> b!3522869 (= c!607315 ((_ is Union!10235) (regex!5476 (rule!8122 separatorToken!241))))))

(assert (=> b!3522869 (= e!2180572 e!2180570)))

(declare-fun b!3522870 () Bool)

(assert (=> b!3522870 (= e!2180571 (Concat!15941 call!254566 (regex!5476 (rule!8122 separatorToken!241))))))

(declare-fun bm!254562 () Bool)

(assert (=> bm!254562 (= call!254568 (derivativeStep!3070 (ite c!607315 (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241)))) (head!7385 lt!1201944)))))

(declare-fun bm!254563 () Bool)

(assert (=> bm!254563 (= call!254567 call!254566)))

(declare-fun b!3522871 () Bool)

(assert (=> b!3522871 (= e!2180570 (Union!10235 call!254565 call!254568))))

(declare-fun b!3522872 () Bool)

(assert (=> b!3522872 (= e!2180568 EmptyLang!10235)))

(declare-fun b!3522873 () Bool)

(assert (=> b!3522873 (= e!2180572 (ite (= (head!7385 lt!1201944) (c!606752 (regex!5476 (rule!8122 separatorToken!241)))) EmptyExpr!10235 EmptyLang!10235))))

(assert (= (and d!1028057 c!607313) b!3522872))

(assert (= (and d!1028057 (not c!607313)) b!3522868))

(assert (= (and b!3522868 c!607314) b!3522873))

(assert (= (and b!3522868 (not c!607314)) b!3522869))

(assert (= (and b!3522869 c!607315) b!3522871))

(assert (= (and b!3522869 (not c!607315)) b!3522867))

(assert (= (and b!3522867 c!607316) b!3522870))

(assert (= (and b!3522867 (not c!607316)) b!3522865))

(assert (= (and b!3522865 c!607317) b!3522866))

(assert (= (and b!3522865 (not c!607317)) b!3522864))

(assert (= (or b!3522866 b!3522864) bm!254563))

(assert (= (or b!3522870 bm!254563) bm!254561))

(assert (= (or b!3522871 bm!254561) bm!254560))

(assert (= (or b!3522871 b!3522866) bm!254562))

(assert (=> bm!254560 m!3970579))

(declare-fun m!3974487 () Bool)

(assert (=> bm!254560 m!3974487))

(declare-fun m!3974489 () Bool)

(assert (=> b!3522865 m!3974489))

(declare-fun m!3974491 () Bool)

(assert (=> d!1028057 m!3974491))

(assert (=> d!1028057 m!3971025))

(assert (=> bm!254562 m!3970579))

(declare-fun m!3974493 () Bool)

(assert (=> bm!254562 m!3974493))

(assert (=> b!3520972 d!1028057))

(assert (=> b!3520972 d!1027177))

(assert (=> b!3520972 d!1027835))

(declare-fun d!1028087 () Bool)

(assert (=> d!1028087 (= (list!13659 (_2!21722 lt!1202171)) (list!13663 (c!606753 (_2!21722 lt!1202171))))))

(declare-fun bs!565454 () Bool)

(assert (= bs!565454 d!1028087))

(declare-fun m!3974495 () Bool)

(assert (=> bs!565454 m!3974495))

(assert (=> b!3521268 d!1028087))

(declare-fun d!1028089 () Bool)

(declare-fun e!2180597 () Bool)

(assert (=> d!1028089 e!2180597))

(declare-fun c!607333 () Bool)

(declare-fun lt!1203045 () tuple2!37184)

(assert (=> d!1028089 (= c!607333 (> (size!28417 (_1!21726 lt!1203045)) 0))))

(declare-fun e!2180595 () tuple2!37184)

(assert (=> d!1028089 (= lt!1203045 e!2180595)))

(declare-fun c!607332 () Bool)

(declare-fun lt!1203044 () Option!7614)

(assert (=> d!1028089 (= c!607332 ((_ is Some!7613) lt!1203044))))

(assert (=> d!1028089 (= lt!1203044 (maxPrefix!2605 thiss!18206 rules!2135 (list!13659 lt!1201907)))))

(assert (=> d!1028089 (= (lexList!1478 thiss!18206 rules!2135 (list!13659 lt!1201907)) lt!1203045)))

(declare-fun b!3522910 () Bool)

(assert (=> b!3522910 (= e!2180597 (= (_2!21726 lt!1203045) (list!13659 lt!1201907)))))

(declare-fun b!3522911 () Bool)

(assert (=> b!3522911 (= e!2180595 (tuple2!37185 Nil!37345 (list!13659 lt!1201907)))))

(declare-fun b!3522912 () Bool)

(declare-fun e!2180596 () Bool)

(assert (=> b!3522912 (= e!2180597 e!2180596)))

(declare-fun res!1420823 () Bool)

(assert (=> b!3522912 (= res!1420823 (< (size!28412 (_2!21726 lt!1203045)) (size!28412 (list!13659 lt!1201907))))))

(assert (=> b!3522912 (=> (not res!1420823) (not e!2180596))))

(declare-fun b!3522913 () Bool)

(assert (=> b!3522913 (= e!2180596 (not (isEmpty!21818 (_1!21726 lt!1203045))))))

(declare-fun b!3522914 () Bool)

(declare-fun lt!1203046 () tuple2!37184)

(assert (=> b!3522914 (= e!2180595 (tuple2!37185 (Cons!37345 (_1!21723 (v!37101 lt!1203044)) (_1!21726 lt!1203046)) (_2!21726 lt!1203046)))))

(assert (=> b!3522914 (= lt!1203046 (lexList!1478 thiss!18206 rules!2135 (_2!21723 (v!37101 lt!1203044))))))

(assert (= (and d!1028089 c!607332) b!3522914))

(assert (= (and d!1028089 (not c!607332)) b!3522911))

(assert (= (and d!1028089 c!607333) b!3522912))

(assert (= (and d!1028089 (not c!607333)) b!3522910))

(assert (= (and b!3522912 res!1420823) b!3522913))

(declare-fun m!3974539 () Bool)

(assert (=> d!1028089 m!3974539))

(assert (=> d!1028089 m!3971501))

(declare-fun m!3974541 () Bool)

(assert (=> d!1028089 m!3974541))

(declare-fun m!3974543 () Bool)

(assert (=> b!3522912 m!3974543))

(assert (=> b!3522912 m!3971501))

(declare-fun m!3974545 () Bool)

(assert (=> b!3522912 m!3974545))

(declare-fun m!3974547 () Bool)

(assert (=> b!3522913 m!3974547))

(declare-fun m!3974549 () Bool)

(assert (=> b!3522914 m!3974549))

(assert (=> b!3521268 d!1028089))

(declare-fun d!1028107 () Bool)

(assert (=> d!1028107 (= (list!13659 lt!1201907) (list!13663 (c!606753 lt!1201907)))))

(declare-fun bs!565459 () Bool)

(assert (= bs!565459 d!1028107))

(declare-fun m!3974551 () Bool)

(assert (=> bs!565459 m!3974551))

(assert (=> b!3521268 d!1028107))

(declare-fun d!1028109 () Bool)

(assert (=> d!1028109 (= (isEmpty!21812 lt!1201911) ((_ is Nil!37343) lt!1201911))))

(assert (=> d!1026945 d!1028109))

(declare-fun b!3522915 () Bool)

(declare-fun e!2180598 () Bool)

(declare-fun call!254574 () Bool)

(assert (=> b!3522915 (= e!2180598 call!254574)))

(declare-fun d!1028111 () Bool)

(declare-fun res!1420824 () Bool)

(declare-fun e!2180601 () Bool)

(assert (=> d!1028111 (=> res!1420824 e!2180601)))

(assert (=> d!1028111 (= res!1420824 ((_ is ElementMatch!10235) (regex!5476 lt!1201935)))))

(assert (=> d!1028111 (= (validRegex!4674 (regex!5476 lt!1201935)) e!2180601)))

(declare-fun b!3522916 () Bool)

(declare-fun res!1420828 () Bool)

(declare-fun e!2180600 () Bool)

(assert (=> b!3522916 (=> (not res!1420828) (not e!2180600))))

(declare-fun call!254573 () Bool)

(assert (=> b!3522916 (= res!1420828 call!254573)))

(declare-fun e!2180604 () Bool)

(assert (=> b!3522916 (= e!2180604 e!2180600)))

(declare-fun b!3522917 () Bool)

(declare-fun e!2180599 () Bool)

(declare-fun call!254572 () Bool)

(assert (=> b!3522917 (= e!2180599 call!254572)))

(declare-fun bm!254567 () Bool)

(assert (=> bm!254567 (= call!254572 call!254574)))

(declare-fun b!3522918 () Bool)

(assert (=> b!3522918 (= e!2180600 call!254572)))

(declare-fun c!607334 () Bool)

(declare-fun bm!254568 () Bool)

(declare-fun c!607335 () Bool)

(assert (=> bm!254568 (= call!254574 (validRegex!4674 (ite c!607334 (reg!10564 (regex!5476 lt!1201935)) (ite c!607335 (regTwo!20983 (regex!5476 lt!1201935)) (regTwo!20982 (regex!5476 lt!1201935))))))))

(declare-fun b!3522919 () Bool)

(declare-fun e!2180602 () Bool)

(assert (=> b!3522919 (= e!2180601 e!2180602)))

(assert (=> b!3522919 (= c!607334 ((_ is Star!10235) (regex!5476 lt!1201935)))))

(declare-fun b!3522920 () Bool)

(declare-fun res!1420825 () Bool)

(declare-fun e!2180603 () Bool)

(assert (=> b!3522920 (=> res!1420825 e!2180603)))

(assert (=> b!3522920 (= res!1420825 (not ((_ is Concat!15941) (regex!5476 lt!1201935))))))

(assert (=> b!3522920 (= e!2180604 e!2180603)))

(declare-fun b!3522921 () Bool)

(assert (=> b!3522921 (= e!2180602 e!2180604)))

(assert (=> b!3522921 (= c!607335 ((_ is Union!10235) (regex!5476 lt!1201935)))))

(declare-fun b!3522922 () Bool)

(assert (=> b!3522922 (= e!2180602 e!2180598)))

(declare-fun res!1420826 () Bool)

(assert (=> b!3522922 (= res!1420826 (not (nullable!3517 (reg!10564 (regex!5476 lt!1201935)))))))

(assert (=> b!3522922 (=> (not res!1420826) (not e!2180598))))

(declare-fun b!3522923 () Bool)

(assert (=> b!3522923 (= e!2180603 e!2180599)))

(declare-fun res!1420827 () Bool)

(assert (=> b!3522923 (=> (not res!1420827) (not e!2180599))))

(assert (=> b!3522923 (= res!1420827 call!254573)))

(declare-fun bm!254569 () Bool)

(assert (=> bm!254569 (= call!254573 (validRegex!4674 (ite c!607335 (regOne!20983 (regex!5476 lt!1201935)) (regOne!20982 (regex!5476 lt!1201935)))))))

(assert (= (and d!1028111 (not res!1420824)) b!3522919))

(assert (= (and b!3522919 c!607334) b!3522922))

(assert (= (and b!3522919 (not c!607334)) b!3522921))

(assert (= (and b!3522922 res!1420826) b!3522915))

(assert (= (and b!3522921 c!607335) b!3522916))

(assert (= (and b!3522921 (not c!607335)) b!3522920))

(assert (= (and b!3522916 res!1420828) b!3522918))

(assert (= (and b!3522920 (not res!1420825)) b!3522923))

(assert (= (and b!3522923 res!1420827) b!3522917))

(assert (= (or b!3522918 b!3522917) bm!254567))

(assert (= (or b!3522916 b!3522923) bm!254569))

(assert (= (or b!3522915 bm!254567) bm!254568))

(declare-fun m!3974553 () Bool)

(assert (=> bm!254568 m!3974553))

(declare-fun m!3974555 () Bool)

(assert (=> b!3522922 m!3974555))

(declare-fun m!3974557 () Bool)

(assert (=> bm!254569 m!3974557))

(assert (=> d!1026945 d!1028111))

(declare-fun bm!254570 () Bool)

(declare-fun c!607338 () Bool)

(declare-fun call!254576 () List!37467)

(declare-fun c!607339 () Bool)

(assert (=> bm!254570 (= call!254576 (usedCharacters!710 (ite c!607338 (reg!10564 (ite c!606827 (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (ite c!606828 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494))))))) (ite c!607339 (regTwo!20983 (ite c!606827 (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (ite c!606828 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494))))))) (regOne!20982 (ite c!606827 (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (ite c!606828 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))))))))))

(declare-fun b!3522924 () Bool)

(declare-fun e!2180606 () List!37467)

(declare-fun call!254578 () List!37467)

(assert (=> b!3522924 (= e!2180606 call!254578)))

(declare-fun call!254575 () List!37467)

(declare-fun bm!254571 () Bool)

(assert (=> bm!254571 (= call!254575 (usedCharacters!710 (ite c!607339 (regOne!20983 (ite c!606827 (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (ite c!606828 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494))))))) (regTwo!20982 (ite c!606827 (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (ite c!606828 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494))))))))))))

(declare-fun b!3522925 () Bool)

(assert (=> b!3522925 (= e!2180606 call!254578)))

(declare-fun d!1028113 () Bool)

(declare-fun c!607337 () Bool)

(assert (=> d!1028113 (= c!607337 (or ((_ is EmptyExpr!10235) (ite c!606827 (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (ite c!606828 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494))))))) ((_ is EmptyLang!10235) (ite c!606827 (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (ite c!606828 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))))))))

(declare-fun e!2180605 () List!37467)

(assert (=> d!1028113 (= (usedCharacters!710 (ite c!606827 (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (ite c!606828 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494))))))) e!2180605)))

(declare-fun b!3522926 () Bool)

(assert (=> b!3522926 (= e!2180605 Nil!37343)))

(declare-fun bm!254572 () Bool)

(declare-fun call!254577 () List!37467)

(assert (=> bm!254572 (= call!254578 (++!9253 (ite c!607339 call!254575 call!254577) (ite c!607339 call!254577 call!254575)))))

(declare-fun b!3522927 () Bool)

(declare-fun e!2180608 () List!37467)

(assert (=> b!3522927 (= e!2180605 e!2180608)))

(declare-fun c!607336 () Bool)

(assert (=> b!3522927 (= c!607336 ((_ is ElementMatch!10235) (ite c!606827 (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (ite c!606828 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494))))))))))

(declare-fun b!3522928 () Bool)

(assert (=> b!3522928 (= c!607338 ((_ is Star!10235) (ite c!606827 (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (ite c!606828 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494))))))))))

(declare-fun e!2180607 () List!37467)

(assert (=> b!3522928 (= e!2180608 e!2180607)))

(declare-fun b!3522929 () Bool)

(assert (=> b!3522929 (= e!2180608 (Cons!37343 (c!606752 (ite c!606827 (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (ite c!606828 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494))))))) Nil!37343))))

(declare-fun b!3522930 () Bool)

(assert (=> b!3522930 (= e!2180607 call!254576)))

(declare-fun bm!254573 () Bool)

(assert (=> bm!254573 (= call!254577 call!254576)))

(declare-fun b!3522931 () Bool)

(assert (=> b!3522931 (= e!2180607 e!2180606)))

(assert (=> b!3522931 (= c!607339 ((_ is Union!10235) (ite c!606827 (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (ite c!606828 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494))))))))))

(assert (= (and d!1028113 c!607337) b!3522926))

(assert (= (and d!1028113 (not c!607337)) b!3522927))

(assert (= (and b!3522927 c!607336) b!3522929))

(assert (= (and b!3522927 (not c!607336)) b!3522928))

(assert (= (and b!3522928 c!607338) b!3522930))

(assert (= (and b!3522928 (not c!607338)) b!3522931))

(assert (= (and b!3522931 c!607339) b!3522925))

(assert (= (and b!3522931 (not c!607339)) b!3522924))

(assert (= (or b!3522925 b!3522924) bm!254573))

(assert (= (or b!3522925 b!3522924) bm!254571))

(assert (= (or b!3522925 b!3522924) bm!254572))

(assert (= (or b!3522930 bm!254573) bm!254570))

(declare-fun m!3974559 () Bool)

(assert (=> bm!254570 m!3974559))

(declare-fun m!3974561 () Bool)

(assert (=> bm!254571 m!3974561))

(declare-fun m!3974563 () Bool)

(assert (=> bm!254572 m!3974563))

(assert (=> bm!254374 d!1028113))

(assert (=> b!3521069 d!1027293))

(declare-fun b!3522933 () Bool)

(declare-fun res!1420829 () Bool)

(declare-fun e!2180612 () Bool)

(assert (=> b!3522933 (=> (not res!1420829) (not e!2180612))))

(assert (=> b!3522933 (= res!1420829 (isEmpty!21812 (tail!5490 (list!13659 (charsOf!3490 (h!42765 tokens!494))))))))

(declare-fun bm!254574 () Bool)

(declare-fun call!254579 () Bool)

(assert (=> bm!254574 (= call!254579 (isEmpty!21812 (list!13659 (charsOf!3490 (h!42765 tokens!494)))))))

(declare-fun b!3522934 () Bool)

(declare-fun res!1420836 () Bool)

(declare-fun e!2180615 () Bool)

(assert (=> b!3522934 (=> res!1420836 e!2180615)))

(assert (=> b!3522934 (= res!1420836 e!2180612)))

(declare-fun res!1420834 () Bool)

(assert (=> b!3522934 (=> (not res!1420834) (not e!2180612))))

(declare-fun lt!1203047 () Bool)

(assert (=> b!3522934 (= res!1420834 lt!1203047)))

(declare-fun b!3522935 () Bool)

(declare-fun res!1420832 () Bool)

(assert (=> b!3522935 (=> (not res!1420832) (not e!2180612))))

(assert (=> b!3522935 (= res!1420832 (not call!254579))))

(declare-fun b!3522936 () Bool)

(declare-fun e!2180613 () Bool)

(assert (=> b!3522936 (= e!2180615 e!2180613)))

(declare-fun res!1420833 () Bool)

(assert (=> b!3522936 (=> (not res!1420833) (not e!2180613))))

(assert (=> b!3522936 (= res!1420833 (not lt!1203047))))

(declare-fun e!2180614 () Bool)

(declare-fun b!3522937 () Bool)

(assert (=> b!3522937 (= e!2180614 (not (= (head!7385 (list!13659 (charsOf!3490 (h!42765 tokens!494)))) (c!606752 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494))))))))))))

(declare-fun b!3522938 () Bool)

(declare-fun e!2180609 () Bool)

(declare-fun e!2180610 () Bool)

(assert (=> b!3522938 (= e!2180609 e!2180610)))

(declare-fun c!607341 () Bool)

(assert (=> b!3522938 (= c!607341 ((_ is EmptyLang!10235) (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494))))))))))

(declare-fun b!3522939 () Bool)

(declare-fun e!2180611 () Bool)

(assert (=> b!3522939 (= e!2180611 (matchR!4819 (derivativeStep!3070 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494)))))) (head!7385 (list!13659 (charsOf!3490 (h!42765 tokens!494))))) (tail!5490 (list!13659 (charsOf!3490 (h!42765 tokens!494))))))))

(declare-fun b!3522940 () Bool)

(assert (=> b!3522940 (= e!2180611 (nullable!3517 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494))))))))))

(declare-fun b!3522932 () Bool)

(declare-fun res!1420831 () Bool)

(assert (=> b!3522932 (=> res!1420831 e!2180614)))

(assert (=> b!3522932 (= res!1420831 (not (isEmpty!21812 (tail!5490 (list!13659 (charsOf!3490 (h!42765 tokens!494)))))))))

(declare-fun d!1028115 () Bool)

(assert (=> d!1028115 e!2180609))

(declare-fun c!607340 () Bool)

(assert (=> d!1028115 (= c!607340 ((_ is EmptyExpr!10235) (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494))))))))))

(assert (=> d!1028115 (= lt!1203047 e!2180611)))

(declare-fun c!607342 () Bool)

(assert (=> d!1028115 (= c!607342 (isEmpty!21812 (list!13659 (charsOf!3490 (h!42765 tokens!494)))))))

(assert (=> d!1028115 (validRegex!4674 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494)))))))))

(assert (=> d!1028115 (= (matchR!4819 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494)))))) (list!13659 (charsOf!3490 (h!42765 tokens!494)))) lt!1203047)))

(declare-fun b!3522941 () Bool)

(assert (=> b!3522941 (= e!2180609 (= lt!1203047 call!254579))))

(declare-fun b!3522942 () Bool)

(declare-fun res!1420830 () Bool)

(assert (=> b!3522942 (=> res!1420830 e!2180615)))

(assert (=> b!3522942 (= res!1420830 (not ((_ is ElementMatch!10235) (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494)))))))))))

(assert (=> b!3522942 (= e!2180610 e!2180615)))

(declare-fun b!3522943 () Bool)

(assert (=> b!3522943 (= e!2180610 (not lt!1203047))))

(declare-fun b!3522944 () Bool)

(assert (=> b!3522944 (= e!2180612 (= (head!7385 (list!13659 (charsOf!3490 (h!42765 tokens!494)))) (c!606752 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494)))))))))))

(declare-fun b!3522945 () Bool)

(assert (=> b!3522945 (= e!2180613 e!2180614)))

(declare-fun res!1420835 () Bool)

(assert (=> b!3522945 (=> res!1420835 e!2180614)))

(assert (=> b!3522945 (= res!1420835 call!254579)))

(assert (= (and d!1028115 c!607342) b!3522940))

(assert (= (and d!1028115 (not c!607342)) b!3522939))

(assert (= (and d!1028115 c!607340) b!3522941))

(assert (= (and d!1028115 (not c!607340)) b!3522938))

(assert (= (and b!3522938 c!607341) b!3522943))

(assert (= (and b!3522938 (not c!607341)) b!3522942))

(assert (= (and b!3522942 (not res!1420830)) b!3522934))

(assert (= (and b!3522934 res!1420834) b!3522935))

(assert (= (and b!3522935 res!1420832) b!3522933))

(assert (= (and b!3522933 res!1420829) b!3522944))

(assert (= (and b!3522934 (not res!1420836)) b!3522936))

(assert (= (and b!3522936 res!1420833) b!3522945))

(assert (= (and b!3522945 (not res!1420835)) b!3522932))

(assert (= (and b!3522932 (not res!1420831)) b!3522937))

(assert (= (or b!3522941 b!3522935 b!3522945) bm!254574))

(assert (=> d!1028115 m!3970675))

(declare-fun m!3974565 () Bool)

(assert (=> d!1028115 m!3974565))

(declare-fun m!3974567 () Bool)

(assert (=> d!1028115 m!3974567))

(assert (=> b!3522932 m!3970675))

(declare-fun m!3974569 () Bool)

(assert (=> b!3522932 m!3974569))

(assert (=> b!3522932 m!3974569))

(declare-fun m!3974571 () Bool)

(assert (=> b!3522932 m!3974571))

(assert (=> bm!254574 m!3970675))

(assert (=> bm!254574 m!3974565))

(assert (=> b!3522939 m!3970675))

(declare-fun m!3974573 () Bool)

(assert (=> b!3522939 m!3974573))

(assert (=> b!3522939 m!3974573))

(declare-fun m!3974575 () Bool)

(assert (=> b!3522939 m!3974575))

(assert (=> b!3522939 m!3970675))

(assert (=> b!3522939 m!3974569))

(assert (=> b!3522939 m!3974575))

(assert (=> b!3522939 m!3974569))

(declare-fun m!3974577 () Bool)

(assert (=> b!3522939 m!3974577))

(assert (=> b!3522944 m!3970675))

(assert (=> b!3522944 m!3974573))

(declare-fun m!3974579 () Bool)

(assert (=> b!3522940 m!3974579))

(assert (=> b!3522937 m!3970675))

(assert (=> b!3522937 m!3974573))

(assert (=> b!3522933 m!3970675))

(assert (=> b!3522933 m!3974569))

(assert (=> b!3522933 m!3974569))

(assert (=> b!3522933 m!3974571))

(assert (=> b!3521069 d!1028115))

(assert (=> b!3521069 d!1027021))

(assert (=> b!3521069 d!1027779))

(assert (=> b!3521069 d!1027291))

(declare-fun d!1028117 () Bool)

(assert (=> d!1028117 (= (isEmpty!21812 (list!13659 (_2!21722 lt!1201925))) ((_ is Nil!37343) (list!13659 (_2!21722 lt!1201925))))))

(assert (=> d!1027339 d!1028117))

(declare-fun d!1028119 () Bool)

(assert (=> d!1028119 (= (list!13659 (_2!21722 lt!1201925)) (list!13663 (c!606753 (_2!21722 lt!1201925))))))

(declare-fun bs!565460 () Bool)

(assert (= bs!565460 d!1028119))

(declare-fun m!3974581 () Bool)

(assert (=> bs!565460 m!3974581))

(assert (=> d!1027339 d!1028119))

(declare-fun d!1028121 () Bool)

(declare-fun lt!1203050 () Bool)

(assert (=> d!1028121 (= lt!1203050 (isEmpty!21812 (list!13663 (c!606753 (_2!21722 lt!1201925)))))))

(assert (=> d!1028121 (= lt!1203050 (= (size!28421 (c!606753 (_2!21722 lt!1201925))) 0))))

(assert (=> d!1028121 (= (isEmpty!21813 (c!606753 (_2!21722 lt!1201925))) lt!1203050)))

(declare-fun bs!565461 () Bool)

(assert (= bs!565461 d!1028121))

(assert (=> bs!565461 m!3974581))

(assert (=> bs!565461 m!3974581))

(declare-fun m!3974583 () Bool)

(assert (=> bs!565461 m!3974583))

(declare-fun m!3974585 () Bool)

(assert (=> bs!565461 m!3974585))

(assert (=> d!1027339 d!1028121))

(declare-fun d!1028123 () Bool)

(assert (=> d!1028123 (= (list!13662 (_1!21722 lt!1202244)) (list!13665 (c!606754 (_1!21722 lt!1202244))))))

(declare-fun bs!565462 () Bool)

(assert (= bs!565462 d!1028123))

(declare-fun m!3974587 () Bool)

(assert (=> bs!565462 m!3974587))

(assert (=> b!3521402 d!1028123))

(declare-fun d!1028125 () Bool)

(declare-fun e!2180618 () Bool)

(assert (=> d!1028125 e!2180618))

(declare-fun c!607344 () Bool)

(declare-fun lt!1203052 () tuple2!37184)

(assert (=> d!1028125 (= c!607344 (> (size!28417 (_1!21726 lt!1203052)) 0))))

(declare-fun e!2180616 () tuple2!37184)

(assert (=> d!1028125 (= lt!1203052 e!2180616)))

(declare-fun c!607343 () Bool)

(declare-fun lt!1203051 () Option!7614)

(assert (=> d!1028125 (= c!607343 ((_ is Some!7613) lt!1203051))))

(assert (=> d!1028125 (= lt!1203051 (maxPrefix!2605 thiss!18206 rules!2135 (list!13659 lt!1201934)))))

(assert (=> d!1028125 (= (lexList!1478 thiss!18206 rules!2135 (list!13659 lt!1201934)) lt!1203052)))

(declare-fun b!3522946 () Bool)

(assert (=> b!3522946 (= e!2180618 (= (_2!21726 lt!1203052) (list!13659 lt!1201934)))))

(declare-fun b!3522947 () Bool)

(assert (=> b!3522947 (= e!2180616 (tuple2!37185 Nil!37345 (list!13659 lt!1201934)))))

(declare-fun b!3522948 () Bool)

(declare-fun e!2180617 () Bool)

(assert (=> b!3522948 (= e!2180618 e!2180617)))

(declare-fun res!1420837 () Bool)

(assert (=> b!3522948 (= res!1420837 (< (size!28412 (_2!21726 lt!1203052)) (size!28412 (list!13659 lt!1201934))))))

(assert (=> b!3522948 (=> (not res!1420837) (not e!2180617))))

(declare-fun b!3522949 () Bool)

(assert (=> b!3522949 (= e!2180617 (not (isEmpty!21818 (_1!21726 lt!1203052))))))

(declare-fun b!3522950 () Bool)

(declare-fun lt!1203053 () tuple2!37184)

(assert (=> b!3522950 (= e!2180616 (tuple2!37185 (Cons!37345 (_1!21723 (v!37101 lt!1203051)) (_1!21726 lt!1203053)) (_2!21726 lt!1203053)))))

(assert (=> b!3522950 (= lt!1203053 (lexList!1478 thiss!18206 rules!2135 (_2!21723 (v!37101 lt!1203051))))))

(assert (= (and d!1028125 c!607343) b!3522950))

(assert (= (and d!1028125 (not c!607343)) b!3522947))

(assert (= (and d!1028125 c!607344) b!3522948))

(assert (= (and d!1028125 (not c!607344)) b!3522946))

(assert (= (and b!3522948 res!1420837) b!3522949))

(declare-fun m!3974589 () Bool)

(assert (=> d!1028125 m!3974589))

(assert (=> d!1028125 m!3971769))

(declare-fun m!3974591 () Bool)

(assert (=> d!1028125 m!3974591))

(declare-fun m!3974593 () Bool)

(assert (=> b!3522948 m!3974593))

(assert (=> b!3522948 m!3971769))

(assert (=> b!3522948 m!3973737))

(declare-fun m!3974595 () Bool)

(assert (=> b!3522949 m!3974595))

(declare-fun m!3974597 () Bool)

(assert (=> b!3522950 m!3974597))

(assert (=> b!3521402 d!1028125))

(declare-fun d!1028127 () Bool)

(assert (=> d!1028127 (= (list!13659 lt!1201934) (list!13663 (c!606753 lt!1201934)))))

(declare-fun bs!565463 () Bool)

(assert (= bs!565463 d!1028127))

(declare-fun m!3974599 () Bool)

(assert (=> bs!565463 m!3974599))

(assert (=> b!3521402 d!1028127))

(declare-fun d!1028129 () Bool)

(assert (=> d!1028129 (= (isEmpty!21812 (tail!5490 lt!1201914)) ((_ is Nil!37343) (tail!5490 lt!1201914)))))

(assert (=> b!3521687 d!1028129))

(declare-fun d!1028131 () Bool)

(assert (=> d!1028131 (= (tail!5490 lt!1201914) (t!281698 lt!1201914))))

(assert (=> b!3521687 d!1028131))

(declare-fun d!1028133 () Bool)

(assert (=> d!1028133 (= (isDefined!5870 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494)))))) (not (isEmpty!21814 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(declare-fun bs!565464 () Bool)

(assert (= bs!565464 d!1028133))

(assert (=> bs!565464 m!3970583))

(declare-fun m!3974601 () Bool)

(assert (=> bs!565464 m!3974601))

(assert (=> d!1027067 d!1028133))

(assert (=> d!1027067 d!1027243))

(declare-fun d!1028135 () Bool)

(declare-fun e!2180621 () Bool)

(assert (=> d!1028135 e!2180621))

(declare-fun res!1420842 () Bool)

(assert (=> d!1028135 (=> (not res!1420842) (not e!2180621))))

(assert (=> d!1028135 (= res!1420842 (isDefined!5870 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(assert (=> d!1028135 true))

(declare-fun _$52!1989 () Unit!52994)

(assert (=> d!1028135 (= (choose!20442 thiss!18206 rules!2135 lt!1201914 (h!42765 (t!281700 tokens!494))) _$52!1989)))

(declare-fun b!3522955 () Bool)

(declare-fun res!1420843 () Bool)

(assert (=> b!3522955 (=> (not res!1420843) (not e!2180621))))

(assert (=> b!3522955 (= res!1420843 (matchR!4819 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494))))))))

(declare-fun b!3522956 () Bool)

(assert (=> b!3522956 (= e!2180621 (= (rule!8122 (h!42765 (t!281700 tokens!494))) (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(assert (= (and d!1028135 res!1420842) b!3522955))

(assert (= (and b!3522955 res!1420843) b!3522956))

(assert (=> d!1028135 m!3970583))

(assert (=> d!1028135 m!3970583))

(assert (=> d!1028135 m!3971255))

(assert (=> b!3522955 m!3970583))

(assert (=> b!3522955 m!3970583))

(assert (=> b!3522955 m!3971261))

(assert (=> b!3522955 m!3970527))

(assert (=> b!3522955 m!3970535))

(assert (=> b!3522955 m!3970527))

(assert (=> b!3522955 m!3970535))

(assert (=> b!3522955 m!3971259))

(assert (=> b!3522956 m!3970583))

(assert (=> b!3522956 m!3970583))

(assert (=> b!3522956 m!3971261))

(assert (=> d!1027067 d!1028135))

(assert (=> d!1027067 d!1027011))

(declare-fun d!1028137 () Bool)

(declare-fun e!2180623 () Bool)

(assert (=> d!1028137 e!2180623))

(declare-fun res!1420844 () Bool)

(assert (=> d!1028137 (=> (not res!1420844) (not e!2180623))))

(declare-fun lt!1203054 () List!37469)

(assert (=> d!1028137 (= res!1420844 (= ((_ map implies) (content!5266 lt!1203054) (content!5266 lt!1202299)) ((as const (InoxSet Token!10318)) true)))))

(declare-fun e!2180622 () List!37469)

(assert (=> d!1028137 (= lt!1203054 e!2180622)))

(declare-fun c!607345 () Bool)

(assert (=> d!1028137 (= c!607345 ((_ is Nil!37345) lt!1202299))))

(assert (=> d!1028137 (= (drop!2049 lt!1202299 0) lt!1203054)))

(declare-fun b!3522957 () Bool)

(declare-fun e!2180625 () List!37469)

(assert (=> b!3522957 (= e!2180625 (drop!2049 (t!281700 lt!1202299) (- 0 1)))))

(declare-fun bm!254575 () Bool)

(declare-fun call!254580 () Int)

(assert (=> bm!254575 (= call!254580 (size!28417 lt!1202299))))

(declare-fun b!3522958 () Bool)

(declare-fun e!2180624 () Int)

(assert (=> b!3522958 (= e!2180623 (= (size!28417 lt!1203054) e!2180624))))

(declare-fun c!607347 () Bool)

(assert (=> b!3522958 (= c!607347 (<= 0 0))))

(declare-fun b!3522959 () Bool)

(assert (=> b!3522959 (= e!2180624 call!254580)))

(declare-fun b!3522960 () Bool)

(assert (=> b!3522960 (= e!2180622 e!2180625)))

(declare-fun c!607346 () Bool)

(assert (=> b!3522960 (= c!607346 (<= 0 0))))

(declare-fun b!3522961 () Bool)

(declare-fun e!2180626 () Int)

(assert (=> b!3522961 (= e!2180626 0)))

(declare-fun b!3522962 () Bool)

(assert (=> b!3522962 (= e!2180626 (- call!254580 0))))

(declare-fun b!3522963 () Bool)

(assert (=> b!3522963 (= e!2180625 lt!1202299)))

(declare-fun b!3522964 () Bool)

(assert (=> b!3522964 (= e!2180622 Nil!37345)))

(declare-fun b!3522965 () Bool)

(assert (=> b!3522965 (= e!2180624 e!2180626)))

(declare-fun c!607348 () Bool)

(assert (=> b!3522965 (= c!607348 (>= 0 call!254580))))

(assert (= (and d!1028137 c!607345) b!3522964))

(assert (= (and d!1028137 (not c!607345)) b!3522960))

(assert (= (and b!3522960 c!607346) b!3522963))

(assert (= (and b!3522960 (not c!607346)) b!3522957))

(assert (= (and d!1028137 res!1420844) b!3522958))

(assert (= (and b!3522958 c!607347) b!3522959))

(assert (= (and b!3522958 (not c!607347)) b!3522965))

(assert (= (and b!3522965 c!607348) b!3522961))

(assert (= (and b!3522965 (not c!607348)) b!3522962))

(assert (= (or b!3522959 b!3522965 b!3522962) bm!254575))

(declare-fun m!3974603 () Bool)

(assert (=> d!1028137 m!3974603))

(declare-fun m!3974605 () Bool)

(assert (=> d!1028137 m!3974605))

(declare-fun m!3974607 () Bool)

(assert (=> b!3522957 m!3974607))

(declare-fun m!3974609 () Bool)

(assert (=> bm!254575 m!3974609))

(declare-fun m!3974611 () Bool)

(assert (=> b!3522958 m!3974611))

(assert (=> b!3521571 d!1028137))

(declare-fun d!1028139 () Bool)

(declare-fun e!2180628 () Bool)

(assert (=> d!1028139 e!2180628))

(declare-fun res!1420845 () Bool)

(assert (=> d!1028139 (=> (not res!1420845) (not e!2180628))))

(declare-fun lt!1203055 () List!37469)

(assert (=> d!1028139 (= res!1420845 (= ((_ map implies) (content!5266 lt!1203055) (content!5266 lt!1202296)) ((as const (InoxSet Token!10318)) true)))))

(declare-fun e!2180627 () List!37469)

(assert (=> d!1028139 (= lt!1203055 e!2180627)))

(declare-fun c!607349 () Bool)

(assert (=> d!1028139 (= c!607349 ((_ is Nil!37345) lt!1202296))))

(assert (=> d!1028139 (= (drop!2049 lt!1202296 0) lt!1203055)))

(declare-fun b!3522966 () Bool)

(declare-fun e!2180630 () List!37469)

(assert (=> b!3522966 (= e!2180630 (drop!2049 (t!281700 lt!1202296) (- 0 1)))))

(declare-fun bm!254576 () Bool)

(declare-fun call!254581 () Int)

(assert (=> bm!254576 (= call!254581 (size!28417 lt!1202296))))

(declare-fun b!3522967 () Bool)

(declare-fun e!2180629 () Int)

(assert (=> b!3522967 (= e!2180628 (= (size!28417 lt!1203055) e!2180629))))

(declare-fun c!607351 () Bool)

(assert (=> b!3522967 (= c!607351 (<= 0 0))))

(declare-fun b!3522968 () Bool)

(assert (=> b!3522968 (= e!2180629 call!254581)))

(declare-fun b!3522969 () Bool)

(assert (=> b!3522969 (= e!2180627 e!2180630)))

(declare-fun c!607350 () Bool)

(assert (=> b!3522969 (= c!607350 (<= 0 0))))

(declare-fun b!3522970 () Bool)

(declare-fun e!2180631 () Int)

(assert (=> b!3522970 (= e!2180631 0)))

(declare-fun b!3522971 () Bool)

(assert (=> b!3522971 (= e!2180631 (- call!254581 0))))

(declare-fun b!3522972 () Bool)

(assert (=> b!3522972 (= e!2180630 lt!1202296)))

(declare-fun b!3522973 () Bool)

(assert (=> b!3522973 (= e!2180627 Nil!37345)))

(declare-fun b!3522974 () Bool)

(assert (=> b!3522974 (= e!2180629 e!2180631)))

(declare-fun c!607352 () Bool)

(assert (=> b!3522974 (= c!607352 (>= 0 call!254581))))

(assert (= (and d!1028139 c!607349) b!3522973))

(assert (= (and d!1028139 (not c!607349)) b!3522969))

(assert (= (and b!3522969 c!607350) b!3522972))

(assert (= (and b!3522969 (not c!607350)) b!3522966))

(assert (= (and d!1028139 res!1420845) b!3522967))

(assert (= (and b!3522967 c!607351) b!3522968))

(assert (= (and b!3522967 (not c!607351)) b!3522974))

(assert (= (and b!3522974 c!607352) b!3522970))

(assert (= (and b!3522974 (not c!607352)) b!3522971))

(assert (= (or b!3522968 b!3522974 b!3522971) bm!254576))

(declare-fun m!3974613 () Bool)

(assert (=> d!1028139 m!3974613))

(declare-fun m!3974615 () Bool)

(assert (=> d!1028139 m!3974615))

(declare-fun m!3974617 () Bool)

(assert (=> b!3522966 m!3974617))

(declare-fun m!3974619 () Bool)

(assert (=> bm!254576 m!3974619))

(declare-fun m!3974621 () Bool)

(assert (=> b!3522967 m!3974621))

(assert (=> b!3521571 d!1028139))

(declare-fun d!1028141 () Bool)

(declare-fun e!2180633 () Bool)

(assert (=> d!1028141 e!2180633))

(declare-fun res!1420846 () Bool)

(assert (=> d!1028141 (=> (not res!1420846) (not e!2180633))))

(declare-fun lt!1203056 () List!37469)

(assert (=> d!1028141 (= res!1420846 (= ((_ map implies) (content!5266 lt!1203056) (content!5266 lt!1202299)) ((as const (InoxSet Token!10318)) true)))))

(declare-fun e!2180632 () List!37469)

(assert (=> d!1028141 (= lt!1203056 e!2180632)))

(declare-fun c!607353 () Bool)

(assert (=> d!1028141 (= c!607353 ((_ is Nil!37345) lt!1202299))))

(assert (=> d!1028141 (= (drop!2049 lt!1202299 (+ 0 1)) lt!1203056)))

(declare-fun b!3522975 () Bool)

(declare-fun e!2180635 () List!37469)

(assert (=> b!3522975 (= e!2180635 (drop!2049 (t!281700 lt!1202299) (- (+ 0 1) 1)))))

(declare-fun bm!254577 () Bool)

(declare-fun call!254582 () Int)

(assert (=> bm!254577 (= call!254582 (size!28417 lt!1202299))))

(declare-fun b!3522976 () Bool)

(declare-fun e!2180634 () Int)

(assert (=> b!3522976 (= e!2180633 (= (size!28417 lt!1203056) e!2180634))))

(declare-fun c!607355 () Bool)

(assert (=> b!3522976 (= c!607355 (<= (+ 0 1) 0))))

(declare-fun b!3522977 () Bool)

(assert (=> b!3522977 (= e!2180634 call!254582)))

(declare-fun b!3522978 () Bool)

(assert (=> b!3522978 (= e!2180632 e!2180635)))

(declare-fun c!607354 () Bool)

(assert (=> b!3522978 (= c!607354 (<= (+ 0 1) 0))))

(declare-fun b!3522979 () Bool)

(declare-fun e!2180636 () Int)

(assert (=> b!3522979 (= e!2180636 0)))

(declare-fun b!3522980 () Bool)

(assert (=> b!3522980 (= e!2180636 (- call!254582 (+ 0 1)))))

(declare-fun b!3522981 () Bool)

(assert (=> b!3522981 (= e!2180635 lt!1202299)))

(declare-fun b!3522982 () Bool)

(assert (=> b!3522982 (= e!2180632 Nil!37345)))

(declare-fun b!3522983 () Bool)

(assert (=> b!3522983 (= e!2180634 e!2180636)))

(declare-fun c!607356 () Bool)

(assert (=> b!3522983 (= c!607356 (>= (+ 0 1) call!254582))))

(assert (= (and d!1028141 c!607353) b!3522982))

(assert (= (and d!1028141 (not c!607353)) b!3522978))

(assert (= (and b!3522978 c!607354) b!3522981))

(assert (= (and b!3522978 (not c!607354)) b!3522975))

(assert (= (and d!1028141 res!1420846) b!3522976))

(assert (= (and b!3522976 c!607355) b!3522977))

(assert (= (and b!3522976 (not c!607355)) b!3522983))

(assert (= (and b!3522983 c!607356) b!3522979))

(assert (= (and b!3522983 (not c!607356)) b!3522980))

(assert (= (or b!3522977 b!3522983 b!3522980) bm!254577))

(declare-fun m!3974623 () Bool)

(assert (=> d!1028141 m!3974623))

(assert (=> d!1028141 m!3974605))

(declare-fun m!3974625 () Bool)

(assert (=> b!3522975 m!3974625))

(assert (=> bm!254577 m!3974609))

(declare-fun m!3974627 () Bool)

(assert (=> b!3522976 m!3974627))

(assert (=> b!3521571 d!1028141))

(declare-fun d!1028143 () Bool)

(declare-fun lt!1203057 () BalanceConc!22268)

(assert (=> d!1028143 (= (list!13659 lt!1203057) (originalCharacters!6190 (apply!8896 lt!1201920 0)))))

(assert (=> d!1028143 (= lt!1203057 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201920 0)))) (value!176526 (apply!8896 lt!1201920 0))))))

(assert (=> d!1028143 (= (charsOf!3490 (apply!8896 lt!1201920 0)) lt!1203057)))

(declare-fun b_lambda!102885 () Bool)

(assert (=> (not b_lambda!102885) (not d!1028143)))

(declare-fun tb!196909 () Bool)

(declare-fun t!282020 () Bool)

(assert (=> (and b!3520698 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201920 0))))) t!282020) tb!196909))

(declare-fun b!3522984 () Bool)

(declare-fun e!2180637 () Bool)

(declare-fun tp!1087092 () Bool)

(assert (=> b!3522984 (= e!2180637 (and (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201920 0)))) (value!176526 (apply!8896 lt!1201920 0))))) tp!1087092))))

(declare-fun result!241282 () Bool)

(assert (=> tb!196909 (= result!241282 (and (inv!50582 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201920 0)))) (value!176526 (apply!8896 lt!1201920 0)))) e!2180637))))

(assert (= tb!196909 b!3522984))

(declare-fun m!3974629 () Bool)

(assert (=> b!3522984 m!3974629))

(declare-fun m!3974631 () Bool)

(assert (=> tb!196909 m!3974631))

(assert (=> d!1028143 t!282020))

(declare-fun b_and!251059 () Bool)

(assert (= b_and!251007 (and (=> t!282020 result!241282) b_and!251059)))

(declare-fun t!282022 () Bool)

(declare-fun tb!196911 () Bool)

(assert (=> (and b!3520728 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201920 0))))) t!282022) tb!196911))

(declare-fun result!241284 () Bool)

(assert (= result!241284 result!241282))

(assert (=> d!1028143 t!282022))

(declare-fun b_and!251061 () Bool)

(assert (= b_and!251001 (and (=> t!282022 result!241284) b_and!251061)))

(declare-fun t!282024 () Bool)

(declare-fun tb!196913 () Bool)

(assert (=> (and b!3521743 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201920 0))))) t!282024) tb!196913))

(declare-fun result!241286 () Bool)

(assert (= result!241286 result!241282))

(assert (=> d!1028143 t!282024))

(declare-fun b_and!251063 () Bool)

(assert (= b_and!251005 (and (=> t!282024 result!241286) b_and!251063)))

(declare-fun t!282026 () Bool)

(declare-fun tb!196915 () Bool)

(assert (=> (and b!3521754 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201920 0))))) t!282026) tb!196915))

(declare-fun result!241288 () Bool)

(assert (= result!241288 result!241282))

(assert (=> d!1028143 t!282026))

(declare-fun b_and!251065 () Bool)

(assert (= b_and!250999 (and (=> t!282026 result!241288) b_and!251065)))

(declare-fun t!282028 () Bool)

(declare-fun tb!196917 () Bool)

(assert (=> (and b!3520694 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201920 0))))) t!282028) tb!196917))

(declare-fun result!241290 () Bool)

(assert (= result!241290 result!241282))

(assert (=> d!1028143 t!282028))

(declare-fun b_and!251067 () Bool)

(assert (= b_and!251003 (and (=> t!282028 result!241290) b_and!251067)))

(declare-fun m!3974633 () Bool)

(assert (=> d!1028143 m!3974633))

(declare-fun m!3974635 () Bool)

(assert (=> d!1028143 m!3974635))

(assert (=> b!3521571 d!1028143))

(declare-fun d!1028145 () Bool)

(declare-fun lt!1203058 () Token!10318)

(assert (=> d!1028145 (contains!7008 lt!1202296 lt!1203058)))

(declare-fun e!2180638 () Token!10318)

(assert (=> d!1028145 (= lt!1203058 e!2180638)))

(declare-fun c!607357 () Bool)

(assert (=> d!1028145 (= c!607357 (= 0 0))))

(declare-fun e!2180639 () Bool)

(assert (=> d!1028145 e!2180639))

(declare-fun res!1420847 () Bool)

(assert (=> d!1028145 (=> (not res!1420847) (not e!2180639))))

(assert (=> d!1028145 (= res!1420847 (<= 0 0))))

(assert (=> d!1028145 (= (apply!8898 lt!1202296 0) lt!1203058)))

(declare-fun b!3522985 () Bool)

(assert (=> b!3522985 (= e!2180639 (< 0 (size!28417 lt!1202296)))))

(declare-fun b!3522986 () Bool)

(assert (=> b!3522986 (= e!2180638 (head!7387 lt!1202296))))

(declare-fun b!3522987 () Bool)

(assert (=> b!3522987 (= e!2180638 (apply!8898 (tail!5493 lt!1202296) (- 0 1)))))

(assert (= (and d!1028145 res!1420847) b!3522985))

(assert (= (and d!1028145 c!607357) b!3522986))

(assert (= (and d!1028145 (not c!607357)) b!3522987))

(declare-fun m!3974637 () Bool)

(assert (=> d!1028145 m!3974637))

(assert (=> b!3522985 m!3974619))

(declare-fun m!3974639 () Bool)

(assert (=> b!3522986 m!3974639))

(declare-fun m!3974641 () Bool)

(assert (=> b!3522987 m!3974641))

(assert (=> b!3522987 m!3974641))

(declare-fun m!3974643 () Bool)

(assert (=> b!3522987 m!3974643))

(assert (=> b!3521571 d!1028145))

(declare-fun d!1028147 () Bool)

(declare-fun lt!1203062 () BalanceConc!22268)

(assert (=> d!1028147 (= (list!13659 lt!1203062) (printListTailRec!718 thiss!18206 (dropList!1235 lt!1201920 (+ 0 1)) (list!13659 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201920 0))))))))

(declare-fun e!2180640 () BalanceConc!22268)

(assert (=> d!1028147 (= lt!1203062 e!2180640)))

(declare-fun c!607358 () Bool)

(assert (=> d!1028147 (= c!607358 (>= (+ 0 1) (size!28413 lt!1201920)))))

(declare-fun e!2180641 () Bool)

(assert (=> d!1028147 e!2180641))

(declare-fun res!1420848 () Bool)

(assert (=> d!1028147 (=> (not res!1420848) (not e!2180641))))

(assert (=> d!1028147 (= res!1420848 (>= (+ 0 1) 0))))

(assert (=> d!1028147 (= (printTailRec!1560 thiss!18206 lt!1201920 (+ 0 1) (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201920 0)))) lt!1203062)))

(declare-fun b!3522988 () Bool)

(assert (=> b!3522988 (= e!2180641 (<= (+ 0 1) (size!28413 lt!1201920)))))

(declare-fun b!3522989 () Bool)

(assert (=> b!3522989 (= e!2180640 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201920 0))))))

(declare-fun b!3522990 () Bool)

(assert (=> b!3522990 (= e!2180640 (printTailRec!1560 thiss!18206 lt!1201920 (+ 0 1 1) (++!9255 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201920 0))) (charsOf!3490 (apply!8896 lt!1201920 (+ 0 1))))))))

(declare-fun lt!1203061 () List!37469)

(assert (=> b!3522990 (= lt!1203061 (list!13662 lt!1201920))))

(declare-fun lt!1203063 () Unit!52994)

(assert (=> b!3522990 (= lt!1203063 (lemmaDropApply!1193 lt!1203061 (+ 0 1)))))

(assert (=> b!3522990 (= (head!7387 (drop!2049 lt!1203061 (+ 0 1))) (apply!8898 lt!1203061 (+ 0 1)))))

(declare-fun lt!1203060 () Unit!52994)

(assert (=> b!3522990 (= lt!1203060 lt!1203063)))

(declare-fun lt!1203064 () List!37469)

(assert (=> b!3522990 (= lt!1203064 (list!13662 lt!1201920))))

(declare-fun lt!1203059 () Unit!52994)

(assert (=> b!3522990 (= lt!1203059 (lemmaDropTail!1077 lt!1203064 (+ 0 1)))))

(assert (=> b!3522990 (= (tail!5493 (drop!2049 lt!1203064 (+ 0 1))) (drop!2049 lt!1203064 (+ 0 1 1)))))

(declare-fun lt!1203065 () Unit!52994)

(assert (=> b!3522990 (= lt!1203065 lt!1203059)))

(assert (= (and d!1028147 res!1420848) b!3522988))

(assert (= (and d!1028147 c!607358) b!3522989))

(assert (= (and d!1028147 (not c!607358)) b!3522990))

(assert (=> d!1028147 m!3972099))

(declare-fun m!3974645 () Bool)

(assert (=> d!1028147 m!3974645))

(declare-fun m!3974647 () Bool)

(assert (=> d!1028147 m!3974647))

(assert (=> d!1028147 m!3974645))

(declare-fun m!3974649 () Bool)

(assert (=> d!1028147 m!3974649))

(assert (=> d!1028147 m!3972093))

(declare-fun m!3974651 () Bool)

(assert (=> d!1028147 m!3974651))

(assert (=> d!1028147 m!3974647))

(assert (=> b!3522988 m!3972093))

(declare-fun m!3974653 () Bool)

(assert (=> b!3522990 m!3974653))

(declare-fun m!3974655 () Bool)

(assert (=> b!3522990 m!3974655))

(declare-fun m!3974657 () Bool)

(assert (=> b!3522990 m!3974657))

(declare-fun m!3974659 () Bool)

(assert (=> b!3522990 m!3974659))

(declare-fun m!3974661 () Bool)

(assert (=> b!3522990 m!3974661))

(declare-fun m!3974663 () Bool)

(assert (=> b!3522990 m!3974663))

(declare-fun m!3974665 () Bool)

(assert (=> b!3522990 m!3974665))

(declare-fun m!3974667 () Bool)

(assert (=> b!3522990 m!3974667))

(assert (=> b!3522990 m!3974659))

(assert (=> b!3522990 m!3974665))

(assert (=> b!3522990 m!3972099))

(assert (=> b!3522990 m!3974661))

(assert (=> b!3522990 m!3974655))

(declare-fun m!3974669 () Bool)

(assert (=> b!3522990 m!3974669))

(declare-fun m!3974671 () Bool)

(assert (=> b!3522990 m!3974671))

(declare-fun m!3974673 () Bool)

(assert (=> b!3522990 m!3974673))

(assert (=> b!3522990 m!3974669))

(declare-fun m!3974675 () Bool)

(assert (=> b!3522990 m!3974675))

(assert (=> b!3522990 m!3972077))

(assert (=> b!3521571 d!1028147))

(declare-fun d!1028149 () Bool)

(assert (=> d!1028149 (= (head!7387 (drop!2049 lt!1202296 0)) (apply!8898 lt!1202296 0))))

(declare-fun lt!1203066 () Unit!52994)

(assert (=> d!1028149 (= lt!1203066 (choose!20455 lt!1202296 0))))

(declare-fun e!2180642 () Bool)

(assert (=> d!1028149 e!2180642))

(declare-fun res!1420849 () Bool)

(assert (=> d!1028149 (=> (not res!1420849) (not e!2180642))))

(assert (=> d!1028149 (= res!1420849 (>= 0 0))))

(assert (=> d!1028149 (= (lemmaDropApply!1193 lt!1202296 0) lt!1203066)))

(declare-fun b!3522991 () Bool)

(assert (=> b!3522991 (= e!2180642 (< 0 (size!28417 lt!1202296)))))

(assert (= (and d!1028149 res!1420849) b!3522991))

(assert (=> d!1028149 m!3972109))

(assert (=> d!1028149 m!3972109))

(assert (=> d!1028149 m!3972111))

(assert (=> d!1028149 m!3972107))

(declare-fun m!3974677 () Bool)

(assert (=> d!1028149 m!3974677))

(assert (=> b!3522991 m!3974619))

(assert (=> b!3521571 d!1028149))

(declare-fun d!1028151 () Bool)

(assert (=> d!1028151 (= (tail!5493 (drop!2049 lt!1202299 0)) (drop!2049 lt!1202299 (+ 0 1)))))

(declare-fun lt!1203067 () Unit!52994)

(assert (=> d!1028151 (= lt!1203067 (choose!20456 lt!1202299 0))))

(declare-fun e!2180643 () Bool)

(assert (=> d!1028151 e!2180643))

(declare-fun res!1420850 () Bool)

(assert (=> d!1028151 (=> (not res!1420850) (not e!2180643))))

(assert (=> d!1028151 (= res!1420850 (>= 0 0))))

(assert (=> d!1028151 (= (lemmaDropTail!1077 lt!1202299 0) lt!1203067)))

(declare-fun b!3522992 () Bool)

(assert (=> b!3522992 (= e!2180643 (< 0 (size!28417 lt!1202299)))))

(assert (= (and d!1028151 res!1420850) b!3522992))

(assert (=> d!1028151 m!3972113))

(assert (=> d!1028151 m!3972113))

(assert (=> d!1028151 m!3972115))

(assert (=> d!1028151 m!3972097))

(declare-fun m!3974679 () Bool)

(assert (=> d!1028151 m!3974679))

(assert (=> b!3522992 m!3974609))

(assert (=> b!3521571 d!1028151))

(declare-fun d!1028153 () Bool)

(declare-fun lt!1203068 () Token!10318)

(assert (=> d!1028153 (= lt!1203068 (apply!8898 (list!13662 lt!1201920) 0))))

(assert (=> d!1028153 (= lt!1203068 (apply!8899 (c!606754 lt!1201920) 0))))

(declare-fun e!2180644 () Bool)

(assert (=> d!1028153 e!2180644))

(declare-fun res!1420851 () Bool)

(assert (=> d!1028153 (=> (not res!1420851) (not e!2180644))))

(assert (=> d!1028153 (= res!1420851 (<= 0 0))))

(assert (=> d!1028153 (= (apply!8896 lt!1201920 0) lt!1203068)))

(declare-fun b!3522993 () Bool)

(assert (=> b!3522993 (= e!2180644 (< 0 (size!28413 lt!1201920)))))

(assert (= (and d!1028153 res!1420851) b!3522993))

(assert (=> d!1028153 m!3972077))

(assert (=> d!1028153 m!3972077))

(declare-fun m!3974681 () Bool)

(assert (=> d!1028153 m!3974681))

(declare-fun m!3974683 () Bool)

(assert (=> d!1028153 m!3974683))

(assert (=> b!3522993 m!3972093))

(assert (=> b!3521571 d!1028153))

(declare-fun d!1028155 () Bool)

(assert (=> d!1028155 (= (head!7387 (drop!2049 lt!1202296 0)) (h!42765 (drop!2049 lt!1202296 0)))))

(assert (=> b!3521571 d!1028155))

(declare-fun d!1028157 () Bool)

(assert (=> d!1028157 (= (list!13662 lt!1201920) (list!13665 (c!606754 lt!1201920)))))

(declare-fun bs!565465 () Bool)

(assert (= bs!565465 d!1028157))

(declare-fun m!3974685 () Bool)

(assert (=> bs!565465 m!3974685))

(assert (=> b!3521571 d!1028157))

(declare-fun d!1028159 () Bool)

(declare-fun e!2180645 () Bool)

(assert (=> d!1028159 e!2180645))

(declare-fun res!1420853 () Bool)

(assert (=> d!1028159 (=> (not res!1420853) (not e!2180645))))

(assert (=> d!1028159 (= res!1420853 (appendAssocInst!817 (c!606753 (BalanceConc!22269 Empty!11327)) (c!606753 (charsOf!3490 (apply!8896 lt!1201920 0)))))))

(declare-fun lt!1203069 () BalanceConc!22268)

(assert (=> d!1028159 (= lt!1203069 (BalanceConc!22269 (++!9258 (c!606753 (BalanceConc!22269 Empty!11327)) (c!606753 (charsOf!3490 (apply!8896 lt!1201920 0))))))))

(assert (=> d!1028159 (= (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201920 0))) lt!1203069)))

(declare-fun b!3522997 () Bool)

(assert (=> b!3522997 (= e!2180645 (= (list!13659 lt!1203069) (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) (list!13659 (charsOf!3490 (apply!8896 lt!1201920 0))))))))

(declare-fun b!3522996 () Bool)

(declare-fun res!1420852 () Bool)

(assert (=> b!3522996 (=> (not res!1420852) (not e!2180645))))

(assert (=> b!3522996 (= res!1420852 (>= (height!1723 (++!9258 (c!606753 (BalanceConc!22269 Empty!11327)) (c!606753 (charsOf!3490 (apply!8896 lt!1201920 0))))) (max!0 (height!1723 (c!606753 (BalanceConc!22269 Empty!11327))) (height!1723 (c!606753 (charsOf!3490 (apply!8896 lt!1201920 0)))))))))

(declare-fun b!3522994 () Bool)

(declare-fun res!1420854 () Bool)

(assert (=> b!3522994 (=> (not res!1420854) (not e!2180645))))

(assert (=> b!3522994 (= res!1420854 (isBalanced!3459 (++!9258 (c!606753 (BalanceConc!22269 Empty!11327)) (c!606753 (charsOf!3490 (apply!8896 lt!1201920 0))))))))

(declare-fun b!3522995 () Bool)

(declare-fun res!1420855 () Bool)

(assert (=> b!3522995 (=> (not res!1420855) (not e!2180645))))

(assert (=> b!3522995 (= res!1420855 (<= (height!1723 (++!9258 (c!606753 (BalanceConc!22269 Empty!11327)) (c!606753 (charsOf!3490 (apply!8896 lt!1201920 0))))) (+ (max!0 (height!1723 (c!606753 (BalanceConc!22269 Empty!11327))) (height!1723 (c!606753 (charsOf!3490 (apply!8896 lt!1201920 0))))) 1)))))

(assert (= (and d!1028159 res!1420853) b!3522994))

(assert (= (and b!3522994 res!1420854) b!3522995))

(assert (= (and b!3522995 res!1420855) b!3522996))

(assert (= (and b!3522996 res!1420852) b!3522997))

(declare-fun m!3974687 () Bool)

(assert (=> b!3522997 m!3974687))

(assert (=> b!3522997 m!3971545))

(assert (=> b!3522997 m!3972105))

(declare-fun m!3974689 () Bool)

(assert (=> b!3522997 m!3974689))

(assert (=> b!3522997 m!3971545))

(assert (=> b!3522997 m!3974689))

(declare-fun m!3974691 () Bool)

(assert (=> b!3522997 m!3974691))

(assert (=> b!3522995 m!3973811))

(assert (=> b!3522995 m!3973811))

(declare-fun m!3974693 () Bool)

(assert (=> b!3522995 m!3974693))

(declare-fun m!3974695 () Bool)

(assert (=> b!3522995 m!3974695))

(declare-fun m!3974697 () Bool)

(assert (=> b!3522995 m!3974697))

(assert (=> b!3522995 m!3974697))

(declare-fun m!3974699 () Bool)

(assert (=> b!3522995 m!3974699))

(assert (=> b!3522995 m!3974693))

(assert (=> b!3522994 m!3974697))

(assert (=> b!3522994 m!3974697))

(declare-fun m!3974701 () Bool)

(assert (=> b!3522994 m!3974701))

(assert (=> b!3522996 m!3973811))

(assert (=> b!3522996 m!3973811))

(assert (=> b!3522996 m!3974693))

(assert (=> b!3522996 m!3974695))

(assert (=> b!3522996 m!3974697))

(assert (=> b!3522996 m!3974697))

(assert (=> b!3522996 m!3974699))

(assert (=> b!3522996 m!3974693))

(declare-fun m!3974703 () Bool)

(assert (=> d!1028159 m!3974703))

(assert (=> d!1028159 m!3974697))

(assert (=> b!3521571 d!1028159))

(declare-fun d!1028161 () Bool)

(assert (=> d!1028161 (= (tail!5493 (drop!2049 lt!1202299 0)) (t!281700 (drop!2049 lt!1202299 0)))))

(assert (=> b!3521571 d!1028161))

(declare-fun d!1028163 () Bool)

(assert (=> d!1028163 (= (inv!50582 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494)))) (isBalanced!3459 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494))))))))

(declare-fun bs!565466 () Bool)

(assert (= bs!565466 d!1028163))

(declare-fun m!3974705 () Bool)

(assert (=> bs!565466 m!3974705))

(assert (=> tb!196625 d!1028163))

(assert (=> d!1027279 d!1026987))

(assert (=> d!1027279 d!1026997))

(declare-fun e!2180646 () List!37467)

(declare-fun b!3522999 () Bool)

(assert (=> b!3522999 (= e!2180646 (Cons!37343 (h!42763 lt!1201911) (++!9253 (t!281698 lt!1201911) (++!9253 lt!1201944 lt!1201939))))))

(declare-fun d!1028165 () Bool)

(declare-fun e!2180647 () Bool)

(assert (=> d!1028165 e!2180647))

(declare-fun res!1420857 () Bool)

(assert (=> d!1028165 (=> (not res!1420857) (not e!2180647))))

(declare-fun lt!1203070 () List!37467)

(assert (=> d!1028165 (= res!1420857 (= (content!5263 lt!1203070) ((_ map or) (content!5263 lt!1201911) (content!5263 (++!9253 lt!1201944 lt!1201939)))))))

(assert (=> d!1028165 (= lt!1203070 e!2180646)))

(declare-fun c!607359 () Bool)

(assert (=> d!1028165 (= c!607359 ((_ is Nil!37343) lt!1201911))))

(assert (=> d!1028165 (= (++!9253 lt!1201911 (++!9253 lt!1201944 lt!1201939)) lt!1203070)))

(declare-fun b!3523000 () Bool)

(declare-fun res!1420856 () Bool)

(assert (=> b!3523000 (=> (not res!1420856) (not e!2180647))))

(assert (=> b!3523000 (= res!1420856 (= (size!28412 lt!1203070) (+ (size!28412 lt!1201911) (size!28412 (++!9253 lt!1201944 lt!1201939)))))))

(declare-fun b!3522998 () Bool)

(assert (=> b!3522998 (= e!2180646 (++!9253 lt!1201944 lt!1201939))))

(declare-fun b!3523001 () Bool)

(assert (=> b!3523001 (= e!2180647 (or (not (= (++!9253 lt!1201944 lt!1201939) Nil!37343)) (= lt!1203070 lt!1201911)))))

(assert (= (and d!1028165 c!607359) b!3522998))

(assert (= (and d!1028165 (not c!607359)) b!3522999))

(assert (= (and d!1028165 res!1420857) b!3523000))

(assert (= (and b!3523000 res!1420856) b!3523001))

(assert (=> b!3522999 m!3970537))

(declare-fun m!3974707 () Bool)

(assert (=> b!3522999 m!3974707))

(declare-fun m!3974709 () Bool)

(assert (=> d!1028165 m!3974709))

(assert (=> d!1028165 m!3970975))

(assert (=> d!1028165 m!3970537))

(declare-fun m!3974711 () Bool)

(assert (=> d!1028165 m!3974711))

(declare-fun m!3974713 () Bool)

(assert (=> b!3523000 m!3974713))

(assert (=> b!3523000 m!3970641))

(assert (=> b!3523000 m!3970537))

(declare-fun m!3974715 () Bool)

(assert (=> b!3523000 m!3974715))

(assert (=> d!1027279 d!1028165))

(assert (=> d!1027279 d!1027311))

(declare-fun d!1028167 () Bool)

(assert (=> d!1028167 (= (++!9253 (++!9253 lt!1201911 lt!1201944) lt!1201939) (++!9253 lt!1201911 (++!9253 lt!1201944 lt!1201939)))))

(assert (=> d!1028167 true))

(declare-fun _$52!1992 () Unit!52994)

(assert (=> d!1028167 (= (choose!20449 lt!1201911 lt!1201944 lt!1201939) _$52!1992)))

(declare-fun bs!565467 () Bool)

(assert (= bs!565467 d!1028167))

(assert (=> bs!565467 m!3970699))

(assert (=> bs!565467 m!3970699))

(assert (=> bs!565467 m!3970701))

(assert (=> bs!565467 m!3970537))

(assert (=> bs!565467 m!3970537))

(assert (=> bs!565467 m!3972165))

(assert (=> d!1027279 d!1028167))

(declare-fun d!1028169 () Bool)

(declare-fun c!607362 () Bool)

(assert (=> d!1028169 (= c!607362 ((_ is Node!11327) (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494))))))))

(declare-fun e!2180652 () Bool)

(assert (=> d!1028169 (= (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494))))) e!2180652)))

(declare-fun b!3523008 () Bool)

(declare-fun inv!50583 (Conc!11327) Bool)

(assert (=> b!3523008 (= e!2180652 (inv!50583 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494))))))))

(declare-fun b!3523009 () Bool)

(declare-fun e!2180653 () Bool)

(assert (=> b!3523009 (= e!2180652 e!2180653)))

(declare-fun res!1420860 () Bool)

(assert (=> b!3523009 (= res!1420860 (not ((_ is Leaf!17676) (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494)))))))))

(assert (=> b!3523009 (=> res!1420860 e!2180653)))

(declare-fun b!3523010 () Bool)

(declare-fun inv!50584 (Conc!11327) Bool)

(assert (=> b!3523010 (= e!2180653 (inv!50584 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494))))))))

(assert (= (and d!1028169 c!607362) b!3523008))

(assert (= (and d!1028169 (not c!607362)) b!3523009))

(assert (= (and b!3523009 (not res!1420860)) b!3523010))

(declare-fun m!3974717 () Bool)

(assert (=> b!3523008 m!3974717))

(declare-fun m!3974719 () Bool)

(assert (=> b!3523010 m!3974719))

(assert (=> b!3520964 d!1028169))

(declare-fun d!1028171 () Bool)

(declare-fun res!1420865 () Bool)

(declare-fun e!2180658 () Bool)

(assert (=> d!1028171 (=> res!1420865 e!2180658)))

(assert (=> d!1028171 (= res!1420865 ((_ is Nil!37344) rules!2135))))

(assert (=> d!1028171 (= (noDuplicateTag!2068 thiss!18206 rules!2135 Nil!37346) e!2180658)))

(declare-fun b!3523015 () Bool)

(declare-fun e!2180659 () Bool)

(assert (=> b!3523015 (= e!2180658 e!2180659)))

(declare-fun res!1420866 () Bool)

(assert (=> b!3523015 (=> (not res!1420866) (not e!2180659))))

(declare-fun contains!7010 (List!37470 String!41864) Bool)

(assert (=> b!3523015 (= res!1420866 (not (contains!7010 Nil!37346 (tag!6114 (h!42764 rules!2135)))))))

(declare-fun b!3523016 () Bool)

(assert (=> b!3523016 (= e!2180659 (noDuplicateTag!2068 thiss!18206 (t!281699 rules!2135) (Cons!37346 (tag!6114 (h!42764 rules!2135)) Nil!37346)))))

(assert (= (and d!1028171 (not res!1420865)) b!3523015))

(assert (= (and b!3523015 res!1420866) b!3523016))

(declare-fun m!3974721 () Bool)

(assert (=> b!3523015 m!3974721))

(declare-fun m!3974723 () Bool)

(assert (=> b!3523016 m!3974723))

(assert (=> b!3520981 d!1028171))

(declare-fun d!1028173 () Bool)

(assert (=> d!1028173 (= (isEmpty!21812 lt!1201944) ((_ is Nil!37343) lt!1201944))))

(assert (=> bm!254410 d!1028173))

(declare-fun d!1028175 () Bool)

(assert (=> d!1028175 (= (inv!50582 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494))))) (isBalanced!3459 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494)))))))))

(declare-fun bs!565468 () Bool)

(assert (= bs!565468 d!1028175))

(declare-fun m!3974725 () Bool)

(assert (=> bs!565468 m!3974725))

(assert (=> tb!196693 d!1028175))

(declare-fun d!1028177 () Bool)

(assert (=> d!1028177 (= (list!13662 (_1!21722 lt!1202292)) (list!13665 (c!606754 (_1!21722 lt!1202292))))))

(declare-fun bs!565469 () Bool)

(assert (= bs!565469 d!1028177))

(declare-fun m!3974727 () Bool)

(assert (=> bs!565469 m!3974727))

(assert (=> b!3521558 d!1028177))

(declare-fun d!1028179 () Bool)

(declare-fun e!2180662 () Bool)

(assert (=> d!1028179 e!2180662))

(declare-fun c!607364 () Bool)

(declare-fun lt!1203072 () tuple2!37184)

(assert (=> d!1028179 (= c!607364 (> (size!28417 (_1!21726 lt!1203072)) 0))))

(declare-fun e!2180660 () tuple2!37184)

(assert (=> d!1028179 (= lt!1203072 e!2180660)))

(declare-fun c!607363 () Bool)

(declare-fun lt!1203071 () Option!7614)

(assert (=> d!1028179 (= c!607363 ((_ is Some!7613) lt!1203071))))

(assert (=> d!1028179 (= lt!1203071 (maxPrefix!2605 thiss!18206 rules!2135 (list!13659 lt!1201929)))))

(assert (=> d!1028179 (= (lexList!1478 thiss!18206 rules!2135 (list!13659 lt!1201929)) lt!1203072)))

(declare-fun b!3523017 () Bool)

(assert (=> b!3523017 (= e!2180662 (= (_2!21726 lt!1203072) (list!13659 lt!1201929)))))

(declare-fun b!3523018 () Bool)

(assert (=> b!3523018 (= e!2180660 (tuple2!37185 Nil!37345 (list!13659 lt!1201929)))))

(declare-fun b!3523019 () Bool)

(declare-fun e!2180661 () Bool)

(assert (=> b!3523019 (= e!2180662 e!2180661)))

(declare-fun res!1420867 () Bool)

(assert (=> b!3523019 (= res!1420867 (< (size!28412 (_2!21726 lt!1203072)) (size!28412 (list!13659 lt!1201929))))))

(assert (=> b!3523019 (=> (not res!1420867) (not e!2180661))))

(declare-fun b!3523020 () Bool)

(assert (=> b!3523020 (= e!2180661 (not (isEmpty!21818 (_1!21726 lt!1203072))))))

(declare-fun b!3523021 () Bool)

(declare-fun lt!1203073 () tuple2!37184)

(assert (=> b!3523021 (= e!2180660 (tuple2!37185 (Cons!37345 (_1!21723 (v!37101 lt!1203071)) (_1!21726 lt!1203073)) (_2!21726 lt!1203073)))))

(assert (=> b!3523021 (= lt!1203073 (lexList!1478 thiss!18206 rules!2135 (_2!21723 (v!37101 lt!1203071))))))

(assert (= (and d!1028179 c!607363) b!3523021))

(assert (= (and d!1028179 (not c!607363)) b!3523018))

(assert (= (and d!1028179 c!607364) b!3523019))

(assert (= (and d!1028179 (not c!607364)) b!3523017))

(assert (= (and b!3523019 res!1420867) b!3523020))

(declare-fun m!3974729 () Bool)

(assert (=> d!1028179 m!3974729))

(assert (=> d!1028179 m!3972057))

(declare-fun m!3974731 () Bool)

(assert (=> d!1028179 m!3974731))

(declare-fun m!3974733 () Bool)

(assert (=> b!3523019 m!3974733))

(assert (=> b!3523019 m!3972057))

(assert (=> b!3523019 m!3973753))

(declare-fun m!3974735 () Bool)

(assert (=> b!3523020 m!3974735))

(declare-fun m!3974737 () Bool)

(assert (=> b!3523021 m!3974737))

(assert (=> b!3521558 d!1028179))

(declare-fun d!1028181 () Bool)

(assert (=> d!1028181 (= (list!13659 lt!1201929) (list!13663 (c!606753 lt!1201929)))))

(declare-fun bs!565470 () Bool)

(assert (= bs!565470 d!1028181))

(declare-fun m!3974739 () Bool)

(assert (=> bs!565470 m!3974739))

(assert (=> b!3521558 d!1028181))

(declare-fun d!1028183 () Bool)

(declare-fun c!607365 () Bool)

(assert (=> d!1028183 (= c!607365 ((_ is Nil!37343) (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(declare-fun e!2180663 () (InoxSet C!20656))

(assert (=> d!1028183 (= (content!5263 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) e!2180663)))

(declare-fun b!3523022 () Bool)

(assert (=> b!3523022 (= e!2180663 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3523023 () Bool)

(assert (=> b!3523023 (= e!2180663 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) true) (content!5263 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))

(assert (= (and d!1028183 c!607365) b!3523022))

(assert (= (and d!1028183 (not c!607365)) b!3523023))

(declare-fun m!3974741 () Bool)

(assert (=> b!3523023 m!3974741))

(declare-fun m!3974743 () Bool)

(assert (=> b!3523023 m!3974743))

(assert (=> d!1027203 d!1028183))

(declare-fun d!1028185 () Bool)

(assert (=> d!1028185 (= (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070)))) (list!13663 (c!606753 (charsOf!3490 (_1!21723 (get!11991 lt!1202070))))))))

(declare-fun bs!565471 () Bool)

(assert (= bs!565471 d!1028185))

(declare-fun m!3974745 () Bool)

(assert (=> bs!565471 m!3974745))

(assert (=> b!3521030 d!1028185))

(declare-fun d!1028187 () Bool)

(declare-fun lt!1203074 () BalanceConc!22268)

(assert (=> d!1028187 (= (list!13659 lt!1203074) (originalCharacters!6190 (_1!21723 (get!11991 lt!1202070))))))

(assert (=> d!1028187 (= lt!1203074 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070))))) (value!176526 (_1!21723 (get!11991 lt!1202070)))))))

(assert (=> d!1028187 (= (charsOf!3490 (_1!21723 (get!11991 lt!1202070))) lt!1203074)))

(declare-fun b_lambda!102887 () Bool)

(assert (=> (not b_lambda!102887) (not d!1028187)))

(declare-fun tb!196919 () Bool)

(declare-fun t!282030 () Bool)

(assert (=> (and b!3521743 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))) t!282030) tb!196919))

(declare-fun b!3523024 () Bool)

(declare-fun e!2180664 () Bool)

(declare-fun tp!1087093 () Bool)

(assert (=> b!3523024 (= e!2180664 (and (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070))))) (value!176526 (_1!21723 (get!11991 lt!1202070)))))) tp!1087093))))

(declare-fun result!241292 () Bool)

(assert (=> tb!196919 (= result!241292 (and (inv!50582 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070))))) (value!176526 (_1!21723 (get!11991 lt!1202070))))) e!2180664))))

(assert (= tb!196919 b!3523024))

(declare-fun m!3974747 () Bool)

(assert (=> b!3523024 m!3974747))

(declare-fun m!3974749 () Bool)

(assert (=> tb!196919 m!3974749))

(assert (=> d!1028187 t!282030))

(declare-fun b_and!251069 () Bool)

(assert (= b_and!251063 (and (=> t!282030 result!241292) b_and!251069)))

(declare-fun t!282032 () Bool)

(declare-fun tb!196921 () Bool)

(assert (=> (and b!3520694 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))) t!282032) tb!196921))

(declare-fun result!241294 () Bool)

(assert (= result!241294 result!241292))

(assert (=> d!1028187 t!282032))

(declare-fun b_and!251071 () Bool)

(assert (= b_and!251067 (and (=> t!282032 result!241294) b_and!251071)))

(declare-fun tb!196923 () Bool)

(declare-fun t!282034 () Bool)

(assert (=> (and b!3520698 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))) t!282034) tb!196923))

(declare-fun result!241296 () Bool)

(assert (= result!241296 result!241292))

(assert (=> d!1028187 t!282034))

(declare-fun b_and!251073 () Bool)

(assert (= b_and!251059 (and (=> t!282034 result!241296) b_and!251073)))

(declare-fun t!282036 () Bool)

(declare-fun tb!196925 () Bool)

(assert (=> (and b!3520728 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))) t!282036) tb!196925))

(declare-fun result!241298 () Bool)

(assert (= result!241298 result!241292))

(assert (=> d!1028187 t!282036))

(declare-fun b_and!251075 () Bool)

(assert (= b_and!251061 (and (=> t!282036 result!241298) b_and!251075)))

(declare-fun t!282038 () Bool)

(declare-fun tb!196927 () Bool)

(assert (=> (and b!3521754 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))) t!282038) tb!196927))

(declare-fun result!241300 () Bool)

(assert (= result!241300 result!241292))

(assert (=> d!1028187 t!282038))

(declare-fun b_and!251077 () Bool)

(assert (= b_and!251065 (and (=> t!282038 result!241300) b_and!251077)))

(declare-fun m!3974751 () Bool)

(assert (=> d!1028187 m!3974751))

(declare-fun m!3974753 () Bool)

(assert (=> d!1028187 m!3974753))

(assert (=> b!3521030 d!1028187))

(assert (=> b!3521030 d!1027905))

(declare-fun b!3523026 () Bool)

(declare-fun res!1420868 () Bool)

(declare-fun e!2180668 () Bool)

(assert (=> b!3523026 (=> (not res!1420868) (not e!2180668))))

(assert (=> b!3523026 (= res!1420868 (isEmpty!21812 (tail!5490 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217)))))))))

(declare-fun bm!254578 () Bool)

(declare-fun call!254583 () Bool)

(assert (=> bm!254578 (= call!254583 (isEmpty!21812 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217))))))))

(declare-fun b!3523027 () Bool)

(declare-fun res!1420875 () Bool)

(declare-fun e!2180671 () Bool)

(assert (=> b!3523027 (=> res!1420875 e!2180671)))

(assert (=> b!3523027 (= res!1420875 e!2180668)))

(declare-fun res!1420873 () Bool)

(assert (=> b!3523027 (=> (not res!1420873) (not e!2180668))))

(declare-fun lt!1203075 () Bool)

(assert (=> b!3523027 (= res!1420873 lt!1203075)))

(declare-fun b!3523028 () Bool)

(declare-fun res!1420871 () Bool)

(assert (=> b!3523028 (=> (not res!1420871) (not e!2180668))))

(assert (=> b!3523028 (= res!1420871 (not call!254583))))

(declare-fun b!3523029 () Bool)

(declare-fun e!2180669 () Bool)

(assert (=> b!3523029 (= e!2180671 e!2180669)))

(declare-fun res!1420872 () Bool)

(assert (=> b!3523029 (=> (not res!1420872) (not e!2180669))))

(assert (=> b!3523029 (= res!1420872 (not lt!1203075))))

(declare-fun b!3523030 () Bool)

(declare-fun e!2180670 () Bool)

(assert (=> b!3523030 (= e!2180670 (not (= (head!7385 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217))))) (c!606752 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(declare-fun b!3523031 () Bool)

(declare-fun e!2180665 () Bool)

(declare-fun e!2180666 () Bool)

(assert (=> b!3523031 (= e!2180665 e!2180666)))

(declare-fun c!607367 () Bool)

(assert (=> b!3523031 (= c!607367 ((_ is EmptyLang!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(declare-fun b!3523032 () Bool)

(declare-fun e!2180667 () Bool)

(assert (=> b!3523032 (= e!2180667 (matchR!4819 (derivativeStep!3070 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) (head!7385 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217)))))) (tail!5490 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217)))))))))

(declare-fun b!3523033 () Bool)

(assert (=> b!3523033 (= e!2180667 (nullable!3517 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(declare-fun b!3523025 () Bool)

(declare-fun res!1420870 () Bool)

(assert (=> b!3523025 (=> res!1420870 e!2180670)))

(assert (=> b!3523025 (= res!1420870 (not (isEmpty!21812 (tail!5490 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217))))))))))

(declare-fun d!1028189 () Bool)

(assert (=> d!1028189 e!2180665))

(declare-fun c!607366 () Bool)

(assert (=> d!1028189 (= c!607366 ((_ is EmptyExpr!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(assert (=> d!1028189 (= lt!1203075 e!2180667)))

(declare-fun c!607368 () Bool)

(assert (=> d!1028189 (= c!607368 (isEmpty!21812 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217))))))))

(assert (=> d!1028189 (validRegex!4674 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))

(assert (=> d!1028189 (= (matchR!4819 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217))))) lt!1203075)))

(declare-fun b!3523034 () Bool)

(assert (=> b!3523034 (= e!2180665 (= lt!1203075 call!254583))))

(declare-fun b!3523035 () Bool)

(declare-fun res!1420869 () Bool)

(assert (=> b!3523035 (=> res!1420869 e!2180671)))

(assert (=> b!3523035 (= res!1420869 (not ((_ is ElementMatch!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(assert (=> b!3523035 (= e!2180666 e!2180671)))

(declare-fun b!3523036 () Bool)

(assert (=> b!3523036 (= e!2180666 (not lt!1203075))))

(declare-fun b!3523037 () Bool)

(assert (=> b!3523037 (= e!2180668 (= (head!7385 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217))))) (c!606752 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(declare-fun b!3523038 () Bool)

(assert (=> b!3523038 (= e!2180669 e!2180670)))

(declare-fun res!1420874 () Bool)

(assert (=> b!3523038 (=> res!1420874 e!2180670)))

(assert (=> b!3523038 (= res!1420874 call!254583)))

(assert (= (and d!1028189 c!607368) b!3523033))

(assert (= (and d!1028189 (not c!607368)) b!3523032))

(assert (= (and d!1028189 c!607366) b!3523034))

(assert (= (and d!1028189 (not c!607366)) b!3523031))

(assert (= (and b!3523031 c!607367) b!3523036))

(assert (= (and b!3523031 (not c!607367)) b!3523035))

(assert (= (and b!3523035 (not res!1420869)) b!3523027))

(assert (= (and b!3523027 res!1420873) b!3523028))

(assert (= (and b!3523028 res!1420871) b!3523026))

(assert (= (and b!3523026 res!1420868) b!3523037))

(assert (= (and b!3523027 (not res!1420875)) b!3523029))

(assert (= (and b!3523029 res!1420872) b!3523038))

(assert (= (and b!3523038 (not res!1420874)) b!3523025))

(assert (= (and b!3523025 (not res!1420870)) b!3523030))

(assert (= (or b!3523034 b!3523028 b!3523038) bm!254578))

(assert (=> d!1028189 m!3971603))

(declare-fun m!3974755 () Bool)

(assert (=> d!1028189 m!3974755))

(assert (=> d!1028189 m!3970671))

(assert (=> b!3523025 m!3971603))

(declare-fun m!3974757 () Bool)

(assert (=> b!3523025 m!3974757))

(assert (=> b!3523025 m!3974757))

(declare-fun m!3974759 () Bool)

(assert (=> b!3523025 m!3974759))

(assert (=> bm!254578 m!3971603))

(assert (=> bm!254578 m!3974755))

(assert (=> b!3523032 m!3971603))

(declare-fun m!3974761 () Bool)

(assert (=> b!3523032 m!3974761))

(assert (=> b!3523032 m!3974761))

(declare-fun m!3974763 () Bool)

(assert (=> b!3523032 m!3974763))

(assert (=> b!3523032 m!3971603))

(assert (=> b!3523032 m!3974757))

(assert (=> b!3523032 m!3974763))

(assert (=> b!3523032 m!3974757))

(declare-fun m!3974765 () Bool)

(assert (=> b!3523032 m!3974765))

(assert (=> b!3523037 m!3971603))

(assert (=> b!3523037 m!3974761))

(declare-fun m!3974767 () Bool)

(assert (=> b!3523033 m!3974767))

(assert (=> b!3523030 m!3971603))

(assert (=> b!3523030 m!3974761))

(assert (=> b!3523026 m!3971603))

(assert (=> b!3523026 m!3974757))

(assert (=> b!3523026 m!3974757))

(assert (=> b!3523026 m!3974759))

(assert (=> b!3521318 d!1028189))

(declare-fun d!1028191 () Bool)

(assert (=> d!1028191 (= (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217)))) (list!13663 (c!606753 (charsOf!3490 (_1!21723 (get!11991 lt!1202217))))))))

(declare-fun bs!565472 () Bool)

(assert (= bs!565472 d!1028191))

(declare-fun m!3974769 () Bool)

(assert (=> bs!565472 m!3974769))

(assert (=> b!3521318 d!1028191))

(declare-fun d!1028193 () Bool)

(declare-fun lt!1203076 () BalanceConc!22268)

(assert (=> d!1028193 (= (list!13659 lt!1203076) (originalCharacters!6190 (_1!21723 (get!11991 lt!1202217))))))

(assert (=> d!1028193 (= lt!1203076 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217))))) (value!176526 (_1!21723 (get!11991 lt!1202217)))))))

(assert (=> d!1028193 (= (charsOf!3490 (_1!21723 (get!11991 lt!1202217))) lt!1203076)))

(declare-fun b_lambda!102889 () Bool)

(assert (=> (not b_lambda!102889) (not d!1028193)))

(declare-fun tb!196929 () Bool)

(declare-fun t!282040 () Bool)

(assert (=> (and b!3520694 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217)))))) t!282040) tb!196929))

(declare-fun b!3523039 () Bool)

(declare-fun e!2180672 () Bool)

(declare-fun tp!1087094 () Bool)

(assert (=> b!3523039 (= e!2180672 (and (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217))))) (value!176526 (_1!21723 (get!11991 lt!1202217)))))) tp!1087094))))

(declare-fun result!241302 () Bool)

(assert (=> tb!196929 (= result!241302 (and (inv!50582 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217))))) (value!176526 (_1!21723 (get!11991 lt!1202217))))) e!2180672))))

(assert (= tb!196929 b!3523039))

(declare-fun m!3974771 () Bool)

(assert (=> b!3523039 m!3974771))

(declare-fun m!3974773 () Bool)

(assert (=> tb!196929 m!3974773))

(assert (=> d!1028193 t!282040))

(declare-fun b_and!251079 () Bool)

(assert (= b_and!251071 (and (=> t!282040 result!241302) b_and!251079)))

(declare-fun tb!196931 () Bool)

(declare-fun t!282042 () Bool)

(assert (=> (and b!3521743 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217)))))) t!282042) tb!196931))

(declare-fun result!241304 () Bool)

(assert (= result!241304 result!241302))

(assert (=> d!1028193 t!282042))

(declare-fun b_and!251081 () Bool)

(assert (= b_and!251069 (and (=> t!282042 result!241304) b_and!251081)))

(declare-fun t!282044 () Bool)

(declare-fun tb!196933 () Bool)

(assert (=> (and b!3520698 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217)))))) t!282044) tb!196933))

(declare-fun result!241306 () Bool)

(assert (= result!241306 result!241302))

(assert (=> d!1028193 t!282044))

(declare-fun b_and!251083 () Bool)

(assert (= b_and!251073 (and (=> t!282044 result!241306) b_and!251083)))

(declare-fun t!282046 () Bool)

(declare-fun tb!196935 () Bool)

(assert (=> (and b!3521754 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217)))))) t!282046) tb!196935))

(declare-fun result!241308 () Bool)

(assert (= result!241308 result!241302))

(assert (=> d!1028193 t!282046))

(declare-fun b_and!251085 () Bool)

(assert (= b_and!251077 (and (=> t!282046 result!241308) b_and!251085)))

(declare-fun t!282048 () Bool)

(declare-fun tb!196937 () Bool)

(assert (=> (and b!3520728 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217)))))) t!282048) tb!196937))

(declare-fun result!241310 () Bool)

(assert (= result!241310 result!241302))

(assert (=> d!1028193 t!282048))

(declare-fun b_and!251087 () Bool)

(assert (= b_and!251075 (and (=> t!282048 result!241310) b_and!251087)))

(declare-fun m!3974775 () Bool)

(assert (=> d!1028193 m!3974775))

(declare-fun m!3974777 () Bool)

(assert (=> d!1028193 m!3974777))

(assert (=> b!3521318 d!1028193))

(assert (=> b!3521318 d!1027909))

(declare-fun d!1028195 () Bool)

(declare-fun lt!1203077 () Int)

(assert (=> d!1028195 (>= lt!1203077 0)))

(declare-fun e!2180673 () Int)

(assert (=> d!1028195 (= lt!1203077 e!2180673)))

(declare-fun c!607369 () Bool)

(assert (=> d!1028195 (= c!607369 ((_ is Nil!37343) (t!281698 lt!1201914)))))

(assert (=> d!1028195 (= (size!28412 (t!281698 lt!1201914)) lt!1203077)))

(declare-fun b!3523040 () Bool)

(assert (=> b!3523040 (= e!2180673 0)))

(declare-fun b!3523041 () Bool)

(assert (=> b!3523041 (= e!2180673 (+ 1 (size!28412 (t!281698 (t!281698 lt!1201914)))))))

(assert (= (and d!1028195 c!607369) b!3523040))

(assert (= (and d!1028195 (not c!607369)) b!3523041))

(declare-fun m!3974779 () Bool)

(assert (=> b!3523041 m!3974779))

(assert (=> b!3521516 d!1028195))

(declare-fun d!1028197 () Bool)

(declare-fun lt!1203078 () Int)

(assert (=> d!1028197 (= lt!1203078 (size!28417 (list!13662 (_1!21722 lt!1202244))))))

(assert (=> d!1028197 (= lt!1203078 (size!28418 (c!606754 (_1!21722 lt!1202244))))))

(assert (=> d!1028197 (= (size!28413 (_1!21722 lt!1202244)) lt!1203078)))

(declare-fun bs!565473 () Bool)

(assert (= bs!565473 d!1028197))

(assert (=> bs!565473 m!3971773))

(assert (=> bs!565473 m!3971773))

(declare-fun m!3974781 () Bool)

(assert (=> bs!565473 m!3974781))

(declare-fun m!3974783 () Bool)

(assert (=> bs!565473 m!3974783))

(assert (=> d!1027181 d!1028197))

(declare-fun d!1028199 () Bool)

(declare-fun e!2180870 () Bool)

(assert (=> d!1028199 e!2180870))

(declare-fun res!1420984 () Bool)

(assert (=> d!1028199 (=> (not res!1420984) (not e!2180870))))

(declare-fun lt!1203257 () tuple2!37176)

(declare-fun lexRec!763 (LexerInterface!5065 List!37468 BalanceConc!22268) tuple2!37176)

(assert (=> d!1028199 (= res!1420984 (= (list!13662 (_1!21722 lt!1203257)) (list!13662 (_1!21722 (lexRec!763 thiss!18206 rules!2135 lt!1201934)))))))

(declare-fun e!2180869 () tuple2!37176)

(assert (=> d!1028199 (= lt!1203257 e!2180869)))

(declare-fun c!607445 () Bool)

(declare-datatypes ((tuple2!37190 0))(
  ( (tuple2!37191 (_1!21729 Token!10318) (_2!21729 BalanceConc!22268)) )
))
(declare-datatypes ((Option!7616 0))(
  ( (None!7615) (Some!7615 (v!37113 tuple2!37190)) )
))
(declare-fun lt!1203246 () Option!7616)

(assert (=> d!1028199 (= c!607445 ((_ is Some!7615) lt!1203246))))

(declare-fun maxPrefixZipperSequenceV2!550 (LexerInterface!5065 List!37468 BalanceConc!22268 BalanceConc!22268) Option!7616)

(assert (=> d!1028199 (= lt!1203246 (maxPrefixZipperSequenceV2!550 thiss!18206 rules!2135 lt!1201934 lt!1201934))))

(declare-fun lt!1203233 () Unit!52994)

(declare-fun lt!1203255 () Unit!52994)

(assert (=> d!1028199 (= lt!1203233 lt!1203255)))

(declare-fun lt!1203254 () List!37467)

(declare-fun lt!1203265 () List!37467)

(declare-fun isSuffix!925 (List!37467 List!37467) Bool)

(assert (=> d!1028199 (isSuffix!925 lt!1203254 (++!9253 lt!1203265 lt!1203254))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!610 (List!37467 List!37467) Unit!52994)

(assert (=> d!1028199 (= lt!1203255 (lemmaConcatTwoListThenFSndIsSuffix!610 lt!1203265 lt!1203254))))

(assert (=> d!1028199 (= lt!1203254 (list!13659 lt!1201934))))

(assert (=> d!1028199 (= lt!1203265 (list!13659 (BalanceConc!22269 Empty!11327)))))

(assert (=> d!1028199 (= (lexTailRecV2!1086 thiss!18206 rules!2135 lt!1201934 (BalanceConc!22269 Empty!11327) lt!1201934 (BalanceConc!22271 Empty!11328)) lt!1203257)))

(declare-fun b!3523408 () Bool)

(declare-fun e!2180867 () tuple2!37176)

(assert (=> b!3523408 (= e!2180867 (tuple2!37177 (BalanceConc!22271 Empty!11328) lt!1201934))))

(declare-fun b!3523409 () Bool)

(declare-fun e!2180868 () tuple2!37176)

(declare-fun lt!1203262 () BalanceConc!22268)

(assert (=> b!3523409 (= e!2180868 (tuple2!37177 (BalanceConc!22271 Empty!11328) lt!1203262))))

(declare-fun b!3523410 () Bool)

(assert (=> b!3523410 (= e!2180870 (= (list!13659 (_2!21722 lt!1203257)) (list!13659 (_2!21722 (lexRec!763 thiss!18206 rules!2135 lt!1201934)))))))

(declare-fun lt!1203260 () tuple2!37176)

(declare-fun b!3523411 () Bool)

(declare-fun lt!1203235 () Option!7616)

(assert (=> b!3523411 (= lt!1203260 (lexRec!763 thiss!18206 rules!2135 (_2!21729 (v!37113 lt!1203235))))))

(declare-fun prepend!1283 (BalanceConc!22270 Token!10318) BalanceConc!22270)

(assert (=> b!3523411 (= e!2180867 (tuple2!37177 (prepend!1283 (_1!21722 lt!1203260) (_1!21729 (v!37113 lt!1203235))) (_2!21722 lt!1203260)))))

(declare-fun lt!1203251 () Option!7616)

(declare-fun b!3523412 () Bool)

(declare-fun lt!1203245 () tuple2!37176)

(assert (=> b!3523412 (= lt!1203245 (lexRec!763 thiss!18206 rules!2135 (_2!21729 (v!37113 lt!1203251))))))

(assert (=> b!3523412 (= e!2180868 (tuple2!37177 (prepend!1283 (_1!21722 lt!1203245) (_1!21729 (v!37113 lt!1203251))) (_2!21722 lt!1203245)))))

(declare-fun b!3523413 () Bool)

(assert (=> b!3523413 (= e!2180869 (tuple2!37177 (BalanceConc!22271 Empty!11328) lt!1201934))))

(declare-fun b!3523414 () Bool)

(declare-fun lt!1203241 () BalanceConc!22268)

(declare-fun append!987 (BalanceConc!22270 Token!10318) BalanceConc!22270)

(assert (=> b!3523414 (= e!2180869 (lexTailRecV2!1086 thiss!18206 rules!2135 lt!1201934 lt!1203241 (_2!21729 (v!37113 lt!1203246)) (append!987 (BalanceConc!22271 Empty!11328) (_1!21729 (v!37113 lt!1203246)))))))

(declare-fun lt!1203240 () tuple2!37176)

(assert (=> b!3523414 (= lt!1203240 (lexRec!763 thiss!18206 rules!2135 (_2!21729 (v!37113 lt!1203246))))))

(declare-fun lt!1203250 () List!37467)

(assert (=> b!3523414 (= lt!1203250 (list!13659 (BalanceConc!22269 Empty!11327)))))

(declare-fun lt!1203263 () List!37467)

(assert (=> b!3523414 (= lt!1203263 (list!13659 (charsOf!3490 (_1!21729 (v!37113 lt!1203246)))))))

(declare-fun lt!1203266 () List!37467)

(assert (=> b!3523414 (= lt!1203266 (list!13659 (_2!21729 (v!37113 lt!1203246))))))

(declare-fun lt!1203249 () Unit!52994)

(assert (=> b!3523414 (= lt!1203249 (lemmaConcatAssociativity!2008 lt!1203250 lt!1203263 lt!1203266))))

(assert (=> b!3523414 (= (++!9253 (++!9253 lt!1203250 lt!1203263) lt!1203266) (++!9253 lt!1203250 (++!9253 lt!1203263 lt!1203266)))))

(declare-fun lt!1203259 () Unit!52994)

(assert (=> b!3523414 (= lt!1203259 lt!1203249)))

(declare-fun maxPrefixZipperSequence!1156 (LexerInterface!5065 List!37468 BalanceConc!22268) Option!7616)

(assert (=> b!3523414 (= lt!1203235 (maxPrefixZipperSequence!1156 thiss!18206 rules!2135 lt!1201934))))

(declare-fun c!607444 () Bool)

(assert (=> b!3523414 (= c!607444 ((_ is Some!7615) lt!1203235))))

(assert (=> b!3523414 (= (lexRec!763 thiss!18206 rules!2135 lt!1201934) e!2180867)))

(declare-fun lt!1203256 () Unit!52994)

(declare-fun Unit!53006 () Unit!52994)

(assert (=> b!3523414 (= lt!1203256 Unit!53006)))

(declare-fun lt!1203239 () List!37469)

(assert (=> b!3523414 (= lt!1203239 (list!13662 (BalanceConc!22271 Empty!11328)))))

(declare-fun lt!1203247 () List!37469)

(assert (=> b!3523414 (= lt!1203247 (Cons!37345 (_1!21729 (v!37113 lt!1203246)) Nil!37345))))

(declare-fun lt!1203243 () List!37469)

(assert (=> b!3523414 (= lt!1203243 (list!13662 (_1!21722 lt!1203240)))))

(declare-fun lt!1203261 () Unit!52994)

(declare-fun lemmaConcatAssociativity!2010 (List!37469 List!37469 List!37469) Unit!52994)

(assert (=> b!3523414 (= lt!1203261 (lemmaConcatAssociativity!2010 lt!1203239 lt!1203247 lt!1203243))))

(declare-fun ++!9259 (List!37469 List!37469) List!37469)

(assert (=> b!3523414 (= (++!9259 (++!9259 lt!1203239 lt!1203247) lt!1203243) (++!9259 lt!1203239 (++!9259 lt!1203247 lt!1203243)))))

(declare-fun lt!1203248 () Unit!52994)

(assert (=> b!3523414 (= lt!1203248 lt!1203261)))

(declare-fun lt!1203237 () List!37467)

(assert (=> b!3523414 (= lt!1203237 (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) (list!13659 (charsOf!3490 (_1!21729 (v!37113 lt!1203246))))))))

(declare-fun lt!1203253 () List!37467)

(assert (=> b!3523414 (= lt!1203253 (list!13659 (_2!21729 (v!37113 lt!1203246))))))

(declare-fun lt!1203252 () List!37469)

(assert (=> b!3523414 (= lt!1203252 (list!13662 (append!987 (BalanceConc!22271 Empty!11328) (_1!21729 (v!37113 lt!1203246)))))))

(declare-fun lt!1203264 () Unit!52994)

(declare-fun lemmaLexThenLexPrefix!528 (LexerInterface!5065 List!37468 List!37467 List!37467 List!37469 List!37469 List!37467) Unit!52994)

(assert (=> b!3523414 (= lt!1203264 (lemmaLexThenLexPrefix!528 thiss!18206 rules!2135 lt!1203237 lt!1203253 lt!1203252 (list!13662 (_1!21722 lt!1203240)) (list!13659 (_2!21722 lt!1203240))))))

(assert (=> b!3523414 (= (lexList!1478 thiss!18206 rules!2135 lt!1203237) (tuple2!37185 lt!1203252 Nil!37343))))

(declare-fun lt!1203244 () Unit!52994)

(assert (=> b!3523414 (= lt!1203244 lt!1203264)))

(assert (=> b!3523414 (= lt!1203262 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (_1!21729 (v!37113 lt!1203246)))))))

(assert (=> b!3523414 (= lt!1203251 (maxPrefixZipperSequence!1156 thiss!18206 rules!2135 lt!1203262))))

(declare-fun c!607446 () Bool)

(assert (=> b!3523414 (= c!607446 ((_ is Some!7615) lt!1203251))))

(assert (=> b!3523414 (= (lexRec!763 thiss!18206 rules!2135 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (_1!21729 (v!37113 lt!1203246))))) e!2180868)))

(declare-fun lt!1203258 () Unit!52994)

(declare-fun Unit!53007 () Unit!52994)

(assert (=> b!3523414 (= lt!1203258 Unit!53007)))

(assert (=> b!3523414 (= lt!1203241 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (_1!21729 (v!37113 lt!1203246)))))))

(declare-fun lt!1203234 () List!37467)

(assert (=> b!3523414 (= lt!1203234 (list!13659 lt!1203241))))

(declare-fun lt!1203236 () List!37467)

(assert (=> b!3523414 (= lt!1203236 (list!13659 (_2!21729 (v!37113 lt!1203246))))))

(declare-fun lt!1203242 () Unit!52994)

(assert (=> b!3523414 (= lt!1203242 (lemmaConcatTwoListThenFSndIsSuffix!610 lt!1203234 lt!1203236))))

(assert (=> b!3523414 (isSuffix!925 lt!1203236 (++!9253 lt!1203234 lt!1203236))))

(declare-fun lt!1203238 () Unit!52994)

(assert (=> b!3523414 (= lt!1203238 lt!1203242)))

(assert (= (and d!1028199 c!607445) b!3523414))

(assert (= (and d!1028199 (not c!607445)) b!3523413))

(assert (= (and b!3523414 c!607444) b!3523411))

(assert (= (and b!3523414 (not c!607444)) b!3523408))

(assert (= (and b!3523414 c!607446) b!3523412))

(assert (= (and b!3523414 (not c!607446)) b!3523409))

(assert (= (and d!1028199 res!1420984) b!3523410))

(declare-fun m!3975283 () Bool)

(assert (=> b!3523414 m!3975283))

(declare-fun m!3975285 () Bool)

(assert (=> b!3523414 m!3975285))

(declare-fun m!3975287 () Bool)

(assert (=> b!3523414 m!3975287))

(declare-fun m!3975289 () Bool)

(assert (=> b!3523414 m!3975289))

(declare-fun m!3975291 () Bool)

(assert (=> b!3523414 m!3975291))

(declare-fun m!3975293 () Bool)

(assert (=> b!3523414 m!3975293))

(assert (=> b!3523414 m!3975283))

(assert (=> b!3523414 m!3971545))

(declare-fun m!3975295 () Bool)

(assert (=> b!3523414 m!3975295))

(declare-fun m!3975297 () Bool)

(assert (=> b!3523414 m!3975297))

(declare-fun m!3975299 () Bool)

(assert (=> b!3523414 m!3975299))

(declare-fun m!3975301 () Bool)

(assert (=> b!3523414 m!3975301))

(declare-fun m!3975303 () Bool)

(assert (=> b!3523414 m!3975303))

(assert (=> b!3523414 m!3975291))

(declare-fun m!3975305 () Bool)

(assert (=> b!3523414 m!3975305))

(assert (=> b!3523414 m!3975287))

(declare-fun m!3975307 () Bool)

(assert (=> b!3523414 m!3975307))

(declare-fun m!3975309 () Bool)

(assert (=> b!3523414 m!3975309))

(assert (=> b!3523414 m!3975299))

(declare-fun m!3975311 () Bool)

(assert (=> b!3523414 m!3975311))

(assert (=> b!3523414 m!3975291))

(declare-fun m!3975313 () Bool)

(assert (=> b!3523414 m!3975313))

(declare-fun m!3975315 () Bool)

(assert (=> b!3523414 m!3975315))

(declare-fun m!3975317 () Bool)

(assert (=> b!3523414 m!3975317))

(assert (=> b!3523414 m!3975315))

(declare-fun m!3975319 () Bool)

(assert (=> b!3523414 m!3975319))

(assert (=> b!3523414 m!3975293))

(declare-fun m!3975321 () Bool)

(assert (=> b!3523414 m!3975321))

(declare-fun m!3975323 () Bool)

(assert (=> b!3523414 m!3975323))

(declare-fun m!3975325 () Bool)

(assert (=> b!3523414 m!3975325))

(declare-fun m!3975327 () Bool)

(assert (=> b!3523414 m!3975327))

(declare-fun m!3975329 () Bool)

(assert (=> b!3523414 m!3975329))

(assert (=> b!3523414 m!3975293))

(assert (=> b!3523414 m!3975295))

(declare-fun m!3975331 () Bool)

(assert (=> b!3523414 m!3975331))

(assert (=> b!3523414 m!3975327))

(declare-fun m!3975333 () Bool)

(assert (=> b!3523414 m!3975333))

(declare-fun m!3975335 () Bool)

(assert (=> b!3523414 m!3975335))

(declare-fun m!3975337 () Bool)

(assert (=> b!3523414 m!3975337))

(declare-fun m!3975339 () Bool)

(assert (=> b!3523414 m!3975339))

(assert (=> b!3523414 m!3975337))

(assert (=> b!3523414 m!3975335))

(declare-fun m!3975341 () Bool)

(assert (=> b!3523414 m!3975341))

(assert (=> b!3523414 m!3971545))

(assert (=> b!3523414 m!3975333))

(declare-fun m!3975343 () Bool)

(assert (=> b!3523414 m!3975343))

(declare-fun m!3975345 () Bool)

(assert (=> b!3523414 m!3975345))

(declare-fun m!3975347 () Bool)

(assert (=> b!3523410 m!3975347))

(assert (=> b!3523410 m!3975317))

(declare-fun m!3975349 () Bool)

(assert (=> b!3523410 m!3975349))

(declare-fun m!3975351 () Bool)

(assert (=> d!1028199 m!3975351))

(declare-fun m!3975353 () Bool)

(assert (=> d!1028199 m!3975353))

(assert (=> d!1028199 m!3971545))

(assert (=> d!1028199 m!3975353))

(declare-fun m!3975355 () Bool)

(assert (=> d!1028199 m!3975355))

(declare-fun m!3975357 () Bool)

(assert (=> d!1028199 m!3975357))

(assert (=> d!1028199 m!3971769))

(assert (=> d!1028199 m!3975317))

(declare-fun m!3975359 () Bool)

(assert (=> d!1028199 m!3975359))

(declare-fun m!3975361 () Bool)

(assert (=> d!1028199 m!3975361))

(declare-fun m!3975363 () Bool)

(assert (=> b!3523412 m!3975363))

(declare-fun m!3975365 () Bool)

(assert (=> b!3523412 m!3975365))

(declare-fun m!3975367 () Bool)

(assert (=> b!3523411 m!3975367))

(declare-fun m!3975369 () Bool)

(assert (=> b!3523411 m!3975369))

(assert (=> d!1027181 d!1028199))

(declare-fun d!1028373 () Bool)

(assert (=> d!1028373 true))

(declare-fun order!20097 () Int)

(declare-fun lambda!122782 () Int)

(declare-fun dynLambda!15916 (Int Int) Int)

(assert (=> d!1028373 (< (dynLambda!15904 order!20085 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) (dynLambda!15916 order!20097 lambda!122782))))

(declare-fun Forall2!948 (Int) Bool)

(assert (=> d!1028373 (= (equivClasses!2211 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) (Forall2!948 lambda!122782))))

(declare-fun bs!565518 () Bool)

(assert (= bs!565518 d!1028373))

(declare-fun m!3975371 () Bool)

(assert (=> bs!565518 m!3975371))

(assert (=> b!3520819 d!1028373))

(assert (=> b!3521653 d!1027293))

(assert (=> b!3521653 d!1027291))

(declare-fun e!2180873 () List!37467)

(declare-fun b!3523420 () Bool)

(assert (=> b!3523420 (= e!2180873 (Cons!37343 (h!42763 (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) (list!13659 (charsOf!3490 separatorToken!241)))) (++!9253 (t!281698 (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) (list!13659 (charsOf!3490 separatorToken!241)))) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 tokens!494) separatorToken!241))))))

(declare-fun d!1028375 () Bool)

(declare-fun e!2180874 () Bool)

(assert (=> d!1028375 e!2180874))

(declare-fun res!1420988 () Bool)

(assert (=> d!1028375 (=> (not res!1420988) (not e!2180874))))

(declare-fun lt!1203267 () List!37467)

(assert (=> d!1028375 (= res!1420988 (= (content!5263 lt!1203267) ((_ map or) (content!5263 (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) (list!13659 (charsOf!3490 separatorToken!241)))) (content!5263 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 tokens!494) separatorToken!241)))))))

(assert (=> d!1028375 (= lt!1203267 e!2180873)))

(declare-fun c!607447 () Bool)

(assert (=> d!1028375 (= c!607447 ((_ is Nil!37343) (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) (list!13659 (charsOf!3490 separatorToken!241)))))))

(assert (=> d!1028375 (= (++!9253 (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) (list!13659 (charsOf!3490 separatorToken!241))) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 tokens!494) separatorToken!241)) lt!1203267)))

(declare-fun b!3523421 () Bool)

(declare-fun res!1420987 () Bool)

(assert (=> b!3523421 (=> (not res!1420987) (not e!2180874))))

(assert (=> b!3523421 (= res!1420987 (= (size!28412 lt!1203267) (+ (size!28412 (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) (list!13659 (charsOf!3490 separatorToken!241)))) (size!28412 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 tokens!494) separatorToken!241)))))))

(declare-fun b!3523419 () Bool)

(assert (=> b!3523419 (= e!2180873 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 tokens!494) separatorToken!241))))

(declare-fun b!3523422 () Bool)

(assert (=> b!3523422 (= e!2180874 (or (not (= (printWithSeparatorTokenList!352 thiss!18206 (t!281700 tokens!494) separatorToken!241) Nil!37343)) (= lt!1203267 (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) (list!13659 (charsOf!3490 separatorToken!241))))))))

(assert (= (and d!1028375 c!607447) b!3523419))

(assert (= (and d!1028375 (not c!607447)) b!3523420))

(assert (= (and d!1028375 res!1420988) b!3523421))

(assert (= (and b!3523421 res!1420987) b!3523422))

(assert (=> b!3523420 m!3970533))

(declare-fun m!3975373 () Bool)

(assert (=> b!3523420 m!3975373))

(declare-fun m!3975375 () Bool)

(assert (=> d!1028375 m!3975375))

(assert (=> d!1028375 m!3972193))

(declare-fun m!3975377 () Bool)

(assert (=> d!1028375 m!3975377))

(assert (=> d!1028375 m!3970533))

(declare-fun m!3975379 () Bool)

(assert (=> d!1028375 m!3975379))

(declare-fun m!3975381 () Bool)

(assert (=> b!3523421 m!3975381))

(assert (=> b!3523421 m!3972193))

(declare-fun m!3975383 () Bool)

(assert (=> b!3523421 m!3975383))

(assert (=> b!3523421 m!3970533))

(declare-fun m!3975385 () Bool)

(assert (=> b!3523421 m!3975385))

(assert (=> b!3521653 d!1028375))

(assert (=> b!3521653 d!1027313))

(assert (=> b!3521653 d!1027315))

(declare-fun b!3523424 () Bool)

(declare-fun e!2180875 () List!37467)

(assert (=> b!3523424 (= e!2180875 (Cons!37343 (h!42763 (list!13659 (charsOf!3490 (h!42765 tokens!494)))) (++!9253 (t!281698 (list!13659 (charsOf!3490 (h!42765 tokens!494)))) (list!13659 (charsOf!3490 separatorToken!241)))))))

(declare-fun d!1028377 () Bool)

(declare-fun e!2180876 () Bool)

(assert (=> d!1028377 e!2180876))

(declare-fun res!1420990 () Bool)

(assert (=> d!1028377 (=> (not res!1420990) (not e!2180876))))

(declare-fun lt!1203268 () List!37467)

(assert (=> d!1028377 (= res!1420990 (= (content!5263 lt!1203268) ((_ map or) (content!5263 (list!13659 (charsOf!3490 (h!42765 tokens!494)))) (content!5263 (list!13659 (charsOf!3490 separatorToken!241))))))))

(assert (=> d!1028377 (= lt!1203268 e!2180875)))

(declare-fun c!607448 () Bool)

(assert (=> d!1028377 (= c!607448 ((_ is Nil!37343) (list!13659 (charsOf!3490 (h!42765 tokens!494)))))))

(assert (=> d!1028377 (= (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) (list!13659 (charsOf!3490 separatorToken!241))) lt!1203268)))

(declare-fun b!3523425 () Bool)

(declare-fun res!1420989 () Bool)

(assert (=> b!3523425 (=> (not res!1420989) (not e!2180876))))

(assert (=> b!3523425 (= res!1420989 (= (size!28412 lt!1203268) (+ (size!28412 (list!13659 (charsOf!3490 (h!42765 tokens!494)))) (size!28412 (list!13659 (charsOf!3490 separatorToken!241))))))))

(declare-fun b!3523423 () Bool)

(assert (=> b!3523423 (= e!2180875 (list!13659 (charsOf!3490 separatorToken!241)))))

(declare-fun b!3523426 () Bool)

(assert (=> b!3523426 (= e!2180876 (or (not (= (list!13659 (charsOf!3490 separatorToken!241)) Nil!37343)) (= lt!1203268 (list!13659 (charsOf!3490 (h!42765 tokens!494))))))))

(assert (= (and d!1028377 c!607448) b!3523423))

(assert (= (and d!1028377 (not c!607448)) b!3523424))

(assert (= (and d!1028377 res!1420990) b!3523425))

(assert (= (and b!3523425 res!1420989) b!3523426))

(assert (=> b!3523424 m!3970545))

(declare-fun m!3975387 () Bool)

(assert (=> b!3523424 m!3975387))

(declare-fun m!3975389 () Bool)

(assert (=> d!1028377 m!3975389))

(assert (=> d!1028377 m!3970675))

(declare-fun m!3975391 () Bool)

(assert (=> d!1028377 m!3975391))

(assert (=> d!1028377 m!3970545))

(declare-fun m!3975393 () Bool)

(assert (=> d!1028377 m!3975393))

(declare-fun m!3975395 () Bool)

(assert (=> b!3523425 m!3975395))

(assert (=> b!3523425 m!3970675))

(declare-fun m!3975397 () Bool)

(assert (=> b!3523425 m!3975397))

(assert (=> b!3523425 m!3970545))

(declare-fun m!3975399 () Bool)

(assert (=> b!3523425 m!3975399))

(assert (=> b!3521653 d!1028377))

(assert (=> b!3521653 d!1027309))

(declare-fun d!1028379 () Bool)

(declare-fun e!2180879 () Bool)

(assert (=> d!1028379 e!2180879))

(declare-fun res!1420993 () Bool)

(assert (=> d!1028379 (=> (not res!1420993) (not e!2180879))))

(declare-fun lt!1203271 () BalanceConc!22268)

(assert (=> d!1028379 (= res!1420993 (= (list!13659 lt!1203271) lt!1201914))))

(declare-fun fromList!772 (List!37467) Conc!11327)

(assert (=> d!1028379 (= lt!1203271 (BalanceConc!22269 (fromList!772 lt!1201914)))))

(assert (=> d!1028379 (= (fromListB!1842 lt!1201914) lt!1203271)))

(declare-fun b!3523429 () Bool)

(assert (=> b!3523429 (= e!2180879 (isBalanced!3459 (fromList!772 lt!1201914)))))

(assert (= (and d!1028379 res!1420993) b!3523429))

(declare-fun m!3975401 () Bool)

(assert (=> d!1028379 m!3975401))

(declare-fun m!3975403 () Bool)

(assert (=> d!1028379 m!3975403))

(assert (=> b!3523429 m!3975403))

(assert (=> b!3523429 m!3975403))

(declare-fun m!3975405 () Bool)

(assert (=> b!3523429 m!3975405))

(assert (=> d!1027247 d!1028379))

(declare-fun d!1028381 () Bool)

(assert (=> d!1028381 (= (isEmpty!21814 lt!1202058) (not ((_ is Some!7612) lt!1202058)))))

(assert (=> d!1027021 d!1028381))

(assert (=> d!1027021 d!1027011))

(declare-fun d!1028383 () Bool)

(assert (=> d!1028383 (dynLambda!15912 lambda!122742 (h!42765 (t!281700 tokens!494)))))

(assert (=> d!1028383 true))

(declare-fun _$7!1367 () Unit!52994)

(assert (=> d!1028383 (= (choose!20447 tokens!494 lambda!122742 (h!42765 (t!281700 tokens!494))) _$7!1367)))

(declare-fun b_lambda!102935 () Bool)

(assert (=> (not b_lambda!102935) (not d!1028383)))

(declare-fun bs!565519 () Bool)

(assert (= bs!565519 d!1028383))

(assert (=> bs!565519 m!3972257))

(assert (=> d!1027319 d!1028383))

(assert (=> d!1027319 d!1027323))

(declare-fun d!1028385 () Bool)

(declare-fun lt!1203272 () Int)

(assert (=> d!1028385 (= lt!1203272 (size!28417 (list!13662 (_1!21722 lt!1202171))))))

(assert (=> d!1028385 (= lt!1203272 (size!28418 (c!606754 (_1!21722 lt!1202171))))))

(assert (=> d!1028385 (= (size!28413 (_1!21722 lt!1202171)) lt!1203272)))

(declare-fun bs!565520 () Bool)

(assert (= bs!565520 d!1028385))

(assert (=> bs!565520 m!3971505))

(assert (=> bs!565520 m!3971505))

(declare-fun m!3975407 () Bool)

(assert (=> bs!565520 m!3975407))

(declare-fun m!3975409 () Bool)

(assert (=> bs!565520 m!3975409))

(assert (=> d!1027073 d!1028385))

(declare-fun d!1028387 () Bool)

(declare-fun e!2180883 () Bool)

(assert (=> d!1028387 e!2180883))

(declare-fun res!1420994 () Bool)

(assert (=> d!1028387 (=> (not res!1420994) (not e!2180883))))

(declare-fun lt!1203297 () tuple2!37176)

(assert (=> d!1028387 (= res!1420994 (= (list!13662 (_1!21722 lt!1203297)) (list!13662 (_1!21722 (lexRec!763 thiss!18206 rules!2135 lt!1201907)))))))

(declare-fun e!2180882 () tuple2!37176)

(assert (=> d!1028387 (= lt!1203297 e!2180882)))

(declare-fun c!607451 () Bool)

(declare-fun lt!1203286 () Option!7616)

(assert (=> d!1028387 (= c!607451 ((_ is Some!7615) lt!1203286))))

(assert (=> d!1028387 (= lt!1203286 (maxPrefixZipperSequenceV2!550 thiss!18206 rules!2135 lt!1201907 lt!1201907))))

(declare-fun lt!1203273 () Unit!52994)

(declare-fun lt!1203295 () Unit!52994)

(assert (=> d!1028387 (= lt!1203273 lt!1203295)))

(declare-fun lt!1203294 () List!37467)

(declare-fun lt!1203305 () List!37467)

(assert (=> d!1028387 (isSuffix!925 lt!1203294 (++!9253 lt!1203305 lt!1203294))))

(assert (=> d!1028387 (= lt!1203295 (lemmaConcatTwoListThenFSndIsSuffix!610 lt!1203305 lt!1203294))))

(assert (=> d!1028387 (= lt!1203294 (list!13659 lt!1201907))))

(assert (=> d!1028387 (= lt!1203305 (list!13659 (BalanceConc!22269 Empty!11327)))))

(assert (=> d!1028387 (= (lexTailRecV2!1086 thiss!18206 rules!2135 lt!1201907 (BalanceConc!22269 Empty!11327) lt!1201907 (BalanceConc!22271 Empty!11328)) lt!1203297)))

(declare-fun b!3523430 () Bool)

(declare-fun e!2180880 () tuple2!37176)

(assert (=> b!3523430 (= e!2180880 (tuple2!37177 (BalanceConc!22271 Empty!11328) lt!1201907))))

(declare-fun b!3523431 () Bool)

(declare-fun e!2180881 () tuple2!37176)

(declare-fun lt!1203302 () BalanceConc!22268)

(assert (=> b!3523431 (= e!2180881 (tuple2!37177 (BalanceConc!22271 Empty!11328) lt!1203302))))

(declare-fun b!3523432 () Bool)

(assert (=> b!3523432 (= e!2180883 (= (list!13659 (_2!21722 lt!1203297)) (list!13659 (_2!21722 (lexRec!763 thiss!18206 rules!2135 lt!1201907)))))))

(declare-fun b!3523433 () Bool)

(declare-fun lt!1203275 () Option!7616)

(declare-fun lt!1203300 () tuple2!37176)

(assert (=> b!3523433 (= lt!1203300 (lexRec!763 thiss!18206 rules!2135 (_2!21729 (v!37113 lt!1203275))))))

(assert (=> b!3523433 (= e!2180880 (tuple2!37177 (prepend!1283 (_1!21722 lt!1203300) (_1!21729 (v!37113 lt!1203275))) (_2!21722 lt!1203300)))))

(declare-fun lt!1203291 () Option!7616)

(declare-fun lt!1203285 () tuple2!37176)

(declare-fun b!3523434 () Bool)

(assert (=> b!3523434 (= lt!1203285 (lexRec!763 thiss!18206 rules!2135 (_2!21729 (v!37113 lt!1203291))))))

(assert (=> b!3523434 (= e!2180881 (tuple2!37177 (prepend!1283 (_1!21722 lt!1203285) (_1!21729 (v!37113 lt!1203291))) (_2!21722 lt!1203285)))))

(declare-fun b!3523435 () Bool)

(assert (=> b!3523435 (= e!2180882 (tuple2!37177 (BalanceConc!22271 Empty!11328) lt!1201907))))

(declare-fun lt!1203281 () BalanceConc!22268)

(declare-fun b!3523436 () Bool)

(assert (=> b!3523436 (= e!2180882 (lexTailRecV2!1086 thiss!18206 rules!2135 lt!1201907 lt!1203281 (_2!21729 (v!37113 lt!1203286)) (append!987 (BalanceConc!22271 Empty!11328) (_1!21729 (v!37113 lt!1203286)))))))

(declare-fun lt!1203280 () tuple2!37176)

(assert (=> b!3523436 (= lt!1203280 (lexRec!763 thiss!18206 rules!2135 (_2!21729 (v!37113 lt!1203286))))))

(declare-fun lt!1203290 () List!37467)

(assert (=> b!3523436 (= lt!1203290 (list!13659 (BalanceConc!22269 Empty!11327)))))

(declare-fun lt!1203303 () List!37467)

(assert (=> b!3523436 (= lt!1203303 (list!13659 (charsOf!3490 (_1!21729 (v!37113 lt!1203286)))))))

(declare-fun lt!1203306 () List!37467)

(assert (=> b!3523436 (= lt!1203306 (list!13659 (_2!21729 (v!37113 lt!1203286))))))

(declare-fun lt!1203289 () Unit!52994)

(assert (=> b!3523436 (= lt!1203289 (lemmaConcatAssociativity!2008 lt!1203290 lt!1203303 lt!1203306))))

(assert (=> b!3523436 (= (++!9253 (++!9253 lt!1203290 lt!1203303) lt!1203306) (++!9253 lt!1203290 (++!9253 lt!1203303 lt!1203306)))))

(declare-fun lt!1203299 () Unit!52994)

(assert (=> b!3523436 (= lt!1203299 lt!1203289)))

(assert (=> b!3523436 (= lt!1203275 (maxPrefixZipperSequence!1156 thiss!18206 rules!2135 lt!1201907))))

(declare-fun c!607450 () Bool)

(assert (=> b!3523436 (= c!607450 ((_ is Some!7615) lt!1203275))))

(assert (=> b!3523436 (= (lexRec!763 thiss!18206 rules!2135 lt!1201907) e!2180880)))

(declare-fun lt!1203296 () Unit!52994)

(declare-fun Unit!53010 () Unit!52994)

(assert (=> b!3523436 (= lt!1203296 Unit!53010)))

(declare-fun lt!1203279 () List!37469)

(assert (=> b!3523436 (= lt!1203279 (list!13662 (BalanceConc!22271 Empty!11328)))))

(declare-fun lt!1203287 () List!37469)

(assert (=> b!3523436 (= lt!1203287 (Cons!37345 (_1!21729 (v!37113 lt!1203286)) Nil!37345))))

(declare-fun lt!1203283 () List!37469)

(assert (=> b!3523436 (= lt!1203283 (list!13662 (_1!21722 lt!1203280)))))

(declare-fun lt!1203301 () Unit!52994)

(assert (=> b!3523436 (= lt!1203301 (lemmaConcatAssociativity!2010 lt!1203279 lt!1203287 lt!1203283))))

(assert (=> b!3523436 (= (++!9259 (++!9259 lt!1203279 lt!1203287) lt!1203283) (++!9259 lt!1203279 (++!9259 lt!1203287 lt!1203283)))))

(declare-fun lt!1203288 () Unit!52994)

(assert (=> b!3523436 (= lt!1203288 lt!1203301)))

(declare-fun lt!1203277 () List!37467)

(assert (=> b!3523436 (= lt!1203277 (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) (list!13659 (charsOf!3490 (_1!21729 (v!37113 lt!1203286))))))))

(declare-fun lt!1203293 () List!37467)

(assert (=> b!3523436 (= lt!1203293 (list!13659 (_2!21729 (v!37113 lt!1203286))))))

(declare-fun lt!1203292 () List!37469)

(assert (=> b!3523436 (= lt!1203292 (list!13662 (append!987 (BalanceConc!22271 Empty!11328) (_1!21729 (v!37113 lt!1203286)))))))

(declare-fun lt!1203304 () Unit!52994)

(assert (=> b!3523436 (= lt!1203304 (lemmaLexThenLexPrefix!528 thiss!18206 rules!2135 lt!1203277 lt!1203293 lt!1203292 (list!13662 (_1!21722 lt!1203280)) (list!13659 (_2!21722 lt!1203280))))))

(assert (=> b!3523436 (= (lexList!1478 thiss!18206 rules!2135 lt!1203277) (tuple2!37185 lt!1203292 Nil!37343))))

(declare-fun lt!1203284 () Unit!52994)

(assert (=> b!3523436 (= lt!1203284 lt!1203304)))

(assert (=> b!3523436 (= lt!1203302 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (_1!21729 (v!37113 lt!1203286)))))))

(assert (=> b!3523436 (= lt!1203291 (maxPrefixZipperSequence!1156 thiss!18206 rules!2135 lt!1203302))))

(declare-fun c!607452 () Bool)

(assert (=> b!3523436 (= c!607452 ((_ is Some!7615) lt!1203291))))

(assert (=> b!3523436 (= (lexRec!763 thiss!18206 rules!2135 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (_1!21729 (v!37113 lt!1203286))))) e!2180881)))

(declare-fun lt!1203298 () Unit!52994)

(declare-fun Unit!53011 () Unit!52994)

(assert (=> b!3523436 (= lt!1203298 Unit!53011)))

(assert (=> b!3523436 (= lt!1203281 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (_1!21729 (v!37113 lt!1203286)))))))

(declare-fun lt!1203274 () List!37467)

(assert (=> b!3523436 (= lt!1203274 (list!13659 lt!1203281))))

(declare-fun lt!1203276 () List!37467)

(assert (=> b!3523436 (= lt!1203276 (list!13659 (_2!21729 (v!37113 lt!1203286))))))

(declare-fun lt!1203282 () Unit!52994)

(assert (=> b!3523436 (= lt!1203282 (lemmaConcatTwoListThenFSndIsSuffix!610 lt!1203274 lt!1203276))))

(assert (=> b!3523436 (isSuffix!925 lt!1203276 (++!9253 lt!1203274 lt!1203276))))

(declare-fun lt!1203278 () Unit!52994)

(assert (=> b!3523436 (= lt!1203278 lt!1203282)))

(assert (= (and d!1028387 c!607451) b!3523436))

(assert (= (and d!1028387 (not c!607451)) b!3523435))

(assert (= (and b!3523436 c!607450) b!3523433))

(assert (= (and b!3523436 (not c!607450)) b!3523430))

(assert (= (and b!3523436 c!607452) b!3523434))

(assert (= (and b!3523436 (not c!607452)) b!3523431))

(assert (= (and d!1028387 res!1420994) b!3523432))

(declare-fun m!3975411 () Bool)

(assert (=> b!3523436 m!3975411))

(declare-fun m!3975413 () Bool)

(assert (=> b!3523436 m!3975413))

(declare-fun m!3975415 () Bool)

(assert (=> b!3523436 m!3975415))

(declare-fun m!3975417 () Bool)

(assert (=> b!3523436 m!3975417))

(declare-fun m!3975419 () Bool)

(assert (=> b!3523436 m!3975419))

(declare-fun m!3975421 () Bool)

(assert (=> b!3523436 m!3975421))

(assert (=> b!3523436 m!3975411))

(assert (=> b!3523436 m!3971545))

(declare-fun m!3975423 () Bool)

(assert (=> b!3523436 m!3975423))

(declare-fun m!3975425 () Bool)

(assert (=> b!3523436 m!3975425))

(declare-fun m!3975427 () Bool)

(assert (=> b!3523436 m!3975427))

(declare-fun m!3975429 () Bool)

(assert (=> b!3523436 m!3975429))

(declare-fun m!3975431 () Bool)

(assert (=> b!3523436 m!3975431))

(assert (=> b!3523436 m!3975419))

(declare-fun m!3975433 () Bool)

(assert (=> b!3523436 m!3975433))

(assert (=> b!3523436 m!3975415))

(declare-fun m!3975435 () Bool)

(assert (=> b!3523436 m!3975435))

(assert (=> b!3523436 m!3975309))

(assert (=> b!3523436 m!3975427))

(declare-fun m!3975437 () Bool)

(assert (=> b!3523436 m!3975437))

(assert (=> b!3523436 m!3975419))

(declare-fun m!3975439 () Bool)

(assert (=> b!3523436 m!3975439))

(declare-fun m!3975441 () Bool)

(assert (=> b!3523436 m!3975441))

(declare-fun m!3975443 () Bool)

(assert (=> b!3523436 m!3975443))

(assert (=> b!3523436 m!3975441))

(declare-fun m!3975445 () Bool)

(assert (=> b!3523436 m!3975445))

(assert (=> b!3523436 m!3975421))

(declare-fun m!3975447 () Bool)

(assert (=> b!3523436 m!3975447))

(declare-fun m!3975449 () Bool)

(assert (=> b!3523436 m!3975449))

(declare-fun m!3975451 () Bool)

(assert (=> b!3523436 m!3975451))

(declare-fun m!3975453 () Bool)

(assert (=> b!3523436 m!3975453))

(declare-fun m!3975455 () Bool)

(assert (=> b!3523436 m!3975455))

(assert (=> b!3523436 m!3975421))

(assert (=> b!3523436 m!3975423))

(declare-fun m!3975457 () Bool)

(assert (=> b!3523436 m!3975457))

(assert (=> b!3523436 m!3975453))

(declare-fun m!3975459 () Bool)

(assert (=> b!3523436 m!3975459))

(declare-fun m!3975461 () Bool)

(assert (=> b!3523436 m!3975461))

(declare-fun m!3975463 () Bool)

(assert (=> b!3523436 m!3975463))

(declare-fun m!3975465 () Bool)

(assert (=> b!3523436 m!3975465))

(assert (=> b!3523436 m!3975463))

(assert (=> b!3523436 m!3975461))

(declare-fun m!3975467 () Bool)

(assert (=> b!3523436 m!3975467))

(assert (=> b!3523436 m!3971545))

(assert (=> b!3523436 m!3975459))

(declare-fun m!3975469 () Bool)

(assert (=> b!3523436 m!3975469))

(declare-fun m!3975471 () Bool)

(assert (=> b!3523436 m!3975471))

(declare-fun m!3975473 () Bool)

(assert (=> b!3523432 m!3975473))

(assert (=> b!3523432 m!3975443))

(declare-fun m!3975475 () Bool)

(assert (=> b!3523432 m!3975475))

(declare-fun m!3975477 () Bool)

(assert (=> d!1028387 m!3975477))

(declare-fun m!3975479 () Bool)

(assert (=> d!1028387 m!3975479))

(assert (=> d!1028387 m!3971545))

(assert (=> d!1028387 m!3975479))

(declare-fun m!3975481 () Bool)

(assert (=> d!1028387 m!3975481))

(declare-fun m!3975483 () Bool)

(assert (=> d!1028387 m!3975483))

(assert (=> d!1028387 m!3971501))

(assert (=> d!1028387 m!3975443))

(declare-fun m!3975485 () Bool)

(assert (=> d!1028387 m!3975485))

(declare-fun m!3975487 () Bool)

(assert (=> d!1028387 m!3975487))

(declare-fun m!3975489 () Bool)

(assert (=> b!3523434 m!3975489))

(declare-fun m!3975491 () Bool)

(assert (=> b!3523434 m!3975491))

(declare-fun m!3975493 () Bool)

(assert (=> b!3523433 m!3975493))

(declare-fun m!3975495 () Bool)

(assert (=> b!3523433 m!3975495))

(assert (=> d!1027073 d!1028387))

(declare-fun bs!565521 () Bool)

(declare-fun d!1028389 () Bool)

(assert (= bs!565521 (and d!1028389 d!1028003)))

(declare-fun lambda!122785 () Int)

(assert (=> bs!565521 (= (and (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (= lambda!122785 lambda!122766))))

(assert (=> d!1028389 true))

(assert (=> d!1028389 (< (dynLambda!15906 order!20089 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241)))) (dynLambda!15914 order!20095 lambda!122785))))

(assert (=> d!1028389 true))

(assert (=> d!1028389 (< (dynLambda!15904 order!20085 (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241)))) (dynLambda!15914 order!20095 lambda!122785))))

(declare-fun Forall!1350 (Int) Bool)

(assert (=> d!1028389 (= (semiInverseModEq!2312 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241)))) (Forall!1350 lambda!122785))))

(declare-fun bs!565522 () Bool)

(assert (= bs!565522 d!1028389))

(declare-fun m!3975497 () Bool)

(assert (=> bs!565522 m!3975497))

(assert (=> d!1027297 d!1028389))

(declare-fun d!1028391 () Bool)

(assert (=> d!1028391 (= (nullable!3517 (regex!5476 lt!1201933)) (nullableFct!1023 (regex!5476 lt!1201933)))))

(declare-fun bs!565523 () Bool)

(assert (= bs!565523 d!1028391))

(declare-fun m!3975499 () Bool)

(assert (=> bs!565523 m!3975499))

(assert (=> b!3521694 d!1028391))

(declare-fun d!1028393 () Bool)

(declare-fun lt!1203307 () Token!10318)

(assert (=> d!1028393 (contains!7008 (list!13662 (_1!21722 lt!1201946)) lt!1203307)))

(declare-fun e!2180884 () Token!10318)

(assert (=> d!1028393 (= lt!1203307 e!2180884)))

(declare-fun c!607453 () Bool)

(assert (=> d!1028393 (= c!607453 (= 0 0))))

(declare-fun e!2180885 () Bool)

(assert (=> d!1028393 e!2180885))

(declare-fun res!1420995 () Bool)

(assert (=> d!1028393 (=> (not res!1420995) (not e!2180885))))

(assert (=> d!1028393 (= res!1420995 (<= 0 0))))

(assert (=> d!1028393 (= (apply!8898 (list!13662 (_1!21722 lt!1201946)) 0) lt!1203307)))

(declare-fun b!3523441 () Bool)

(assert (=> b!3523441 (= e!2180885 (< 0 (size!28417 (list!13662 (_1!21722 lt!1201946)))))))

(declare-fun b!3523442 () Bool)

(assert (=> b!3523442 (= e!2180884 (head!7387 (list!13662 (_1!21722 lt!1201946))))))

(declare-fun b!3523443 () Bool)

(assert (=> b!3523443 (= e!2180884 (apply!8898 (tail!5493 (list!13662 (_1!21722 lt!1201946))) (- 0 1)))))

(assert (= (and d!1028393 res!1420995) b!3523441))

(assert (= (and d!1028393 c!607453) b!3523442))

(assert (= (and d!1028393 (not c!607453)) b!3523443))

(assert (=> d!1028393 m!3970921))

(declare-fun m!3975501 () Bool)

(assert (=> d!1028393 m!3975501))

(assert (=> b!3523441 m!3970921))

(assert (=> b!3523441 m!3971539))

(assert (=> b!3523442 m!3970921))

(declare-fun m!3975503 () Bool)

(assert (=> b!3523442 m!3975503))

(assert (=> b!3523443 m!3970921))

(declare-fun m!3975505 () Bool)

(assert (=> b!3523443 m!3975505))

(assert (=> b!3523443 m!3975505))

(declare-fun m!3975507 () Bool)

(assert (=> b!3523443 m!3975507))

(assert (=> d!1026977 d!1028393))

(declare-fun d!1028395 () Bool)

(assert (=> d!1028395 (= (list!13662 (_1!21722 lt!1201946)) (list!13665 (c!606754 (_1!21722 lt!1201946))))))

(declare-fun bs!565524 () Bool)

(assert (= bs!565524 d!1028395))

(declare-fun m!3975509 () Bool)

(assert (=> bs!565524 m!3975509))

(assert (=> d!1026977 d!1028395))

(declare-fun b!3523444 () Bool)

(declare-fun e!2180888 () Token!10318)

(declare-fun e!2180889 () Token!10318)

(assert (=> b!3523444 (= e!2180888 e!2180889)))

(declare-fun lt!1203308 () Bool)

(assert (=> b!3523444 (= lt!1203308 (appendIndex!357 (list!13665 (left!29168 (c!606754 (_1!21722 lt!1201946)))) (list!13665 (right!29498 (c!606754 (_1!21722 lt!1201946)))) 0))))

(declare-fun c!607454 () Bool)

(assert (=> b!3523444 (= c!607454 (< 0 (size!28418 (left!29168 (c!606754 (_1!21722 lt!1201946))))))))

(declare-fun b!3523445 () Bool)

(declare-fun e!2180887 () Bool)

(assert (=> b!3523445 (= e!2180887 (< 0 (size!28418 (c!606754 (_1!21722 lt!1201946)))))))

(declare-fun b!3523446 () Bool)

(assert (=> b!3523446 (= e!2180888 (apply!8902 (xs!14518 (c!606754 (_1!21722 lt!1201946))) 0))))

(declare-fun bm!254606 () Bool)

(declare-fun c!607456 () Bool)

(assert (=> bm!254606 (= c!607456 c!607454)))

(declare-fun call!254611 () Token!10318)

(declare-fun e!2180886 () Int)

(assert (=> bm!254606 (= call!254611 (apply!8899 (ite c!607454 (left!29168 (c!606754 (_1!21722 lt!1201946))) (right!29498 (c!606754 (_1!21722 lt!1201946)))) e!2180886))))

(declare-fun b!3523447 () Bool)

(assert (=> b!3523447 (= e!2180886 (- 0 (size!28418 (left!29168 (c!606754 (_1!21722 lt!1201946))))))))

(declare-fun b!3523449 () Bool)

(assert (=> b!3523449 (= e!2180889 call!254611)))

(declare-fun b!3523450 () Bool)

(assert (=> b!3523450 (= e!2180889 call!254611)))

(declare-fun b!3523448 () Bool)

(assert (=> b!3523448 (= e!2180886 0)))

(declare-fun d!1028397 () Bool)

(declare-fun lt!1203309 () Token!10318)

(assert (=> d!1028397 (= lt!1203309 (apply!8898 (list!13665 (c!606754 (_1!21722 lt!1201946))) 0))))

(assert (=> d!1028397 (= lt!1203309 e!2180888)))

(declare-fun c!607455 () Bool)

(assert (=> d!1028397 (= c!607455 ((_ is Leaf!17677) (c!606754 (_1!21722 lt!1201946))))))

(assert (=> d!1028397 e!2180887))

(declare-fun res!1420996 () Bool)

(assert (=> d!1028397 (=> (not res!1420996) (not e!2180887))))

(assert (=> d!1028397 (= res!1420996 (<= 0 0))))

(assert (=> d!1028397 (= (apply!8899 (c!606754 (_1!21722 lt!1201946)) 0) lt!1203309)))

(assert (= (and d!1028397 res!1420996) b!3523445))

(assert (= (and d!1028397 c!607455) b!3523446))

(assert (= (and d!1028397 (not c!607455)) b!3523444))

(assert (= (and b!3523444 c!607454) b!3523450))

(assert (= (and b!3523444 (not c!607454)) b!3523449))

(assert (= (or b!3523450 b!3523449) bm!254606))

(assert (= (and bm!254606 c!607456) b!3523448))

(assert (= (and bm!254606 (not c!607456)) b!3523447))

(assert (=> b!3523445 m!3971541))

(declare-fun m!3975511 () Bool)

(assert (=> b!3523444 m!3975511))

(declare-fun m!3975513 () Bool)

(assert (=> b!3523444 m!3975513))

(assert (=> b!3523444 m!3975511))

(assert (=> b!3523444 m!3975513))

(declare-fun m!3975515 () Bool)

(assert (=> b!3523444 m!3975515))

(declare-fun m!3975517 () Bool)

(assert (=> b!3523444 m!3975517))

(declare-fun m!3975519 () Bool)

(assert (=> b!3523446 m!3975519))

(declare-fun m!3975521 () Bool)

(assert (=> bm!254606 m!3975521))

(assert (=> d!1028397 m!3975509))

(assert (=> d!1028397 m!3975509))

(declare-fun m!3975523 () Bool)

(assert (=> d!1028397 m!3975523))

(assert (=> b!3523447 m!3975517))

(assert (=> d!1026977 d!1028397))

(assert (=> b!3521492 d!1027761))

(declare-fun d!1028399 () Bool)

(assert (=> d!1028399 (= (apply!8897 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279)))) (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202279))))) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279))))) (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202279))))))))

(declare-fun b_lambda!102937 () Bool)

(assert (=> (not b_lambda!102937) (not d!1028399)))

(declare-fun tb!197043 () Bool)

(declare-fun t!282156 () Bool)

(assert (=> (and b!3521754 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279)))))) t!282156) tb!197043))

(declare-fun result!241418 () Bool)

(assert (=> tb!197043 (= result!241418 (inv!21 (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279))))) (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202279)))))))))

(declare-fun m!3975525 () Bool)

(assert (=> tb!197043 m!3975525))

(assert (=> d!1028399 t!282156))

(declare-fun b_and!251127 () Bool)

(assert (= b_and!251037 (and (=> t!282156 result!241418) b_and!251127)))

(declare-fun t!282158 () Bool)

(declare-fun tb!197045 () Bool)

(assert (=> (and b!3520728 (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279)))))) t!282158) tb!197045))

(declare-fun result!241420 () Bool)

(assert (= result!241420 result!241418))

(assert (=> d!1028399 t!282158))

(declare-fun b_and!251129 () Bool)

(assert (= b_and!251029 (and (=> t!282158 result!241420) b_and!251129)))

(declare-fun t!282160 () Bool)

(declare-fun tb!197047 () Bool)

(assert (=> (and b!3521743 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279)))))) t!282160) tb!197047))

(declare-fun result!241422 () Bool)

(assert (= result!241422 result!241418))

(assert (=> d!1028399 t!282160))

(declare-fun b_and!251131 () Bool)

(assert (= b_and!251031 (and (=> t!282160 result!241422) b_and!251131)))

(declare-fun tb!197049 () Bool)

(declare-fun t!282162 () Bool)

(assert (=> (and b!3520694 (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279)))))) t!282162) tb!197049))

(declare-fun result!241424 () Bool)

(assert (= result!241424 result!241418))

(assert (=> d!1028399 t!282162))

(declare-fun b_and!251133 () Bool)

(assert (= b_and!251035 (and (=> t!282162 result!241424) b_and!251133)))

(declare-fun tb!197051 () Bool)

(declare-fun t!282164 () Bool)

(assert (=> (and b!3520698 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279)))))) t!282164) tb!197051))

(declare-fun result!241426 () Bool)

(assert (= result!241426 result!241418))

(assert (=> d!1028399 t!282164))

(declare-fun b_and!251135 () Bool)

(assert (= b_and!251033 (and (=> t!282164 result!241426) b_and!251135)))

(assert (=> d!1028399 m!3972023))

(declare-fun m!3975527 () Bool)

(assert (=> d!1028399 m!3975527))

(assert (=> b!3521492 d!1028399))

(declare-fun d!1028401 () Bool)

(assert (=> d!1028401 (= (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202279)))) (fromListB!1842 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202279)))))))

(declare-fun bs!565525 () Bool)

(assert (= bs!565525 d!1028401))

(declare-fun m!3975529 () Bool)

(assert (=> bs!565525 m!3975529))

(assert (=> b!3521492 d!1028401))

(declare-fun d!1028403 () Bool)

(declare-fun lt!1203310 () BalanceConc!22268)

(assert (=> d!1028403 (= (list!13659 lt!1203310) (originalCharacters!6190 (h!42765 (t!281700 (t!281700 tokens!494)))))))

(assert (=> d!1028403 (= lt!1203310 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (value!176526 (h!42765 (t!281700 (t!281700 tokens!494))))))))

(assert (=> d!1028403 (= (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494)))) lt!1203310)))

(declare-fun b_lambda!102939 () Bool)

(assert (=> (not b_lambda!102939) (not d!1028403)))

(declare-fun t!282166 () Bool)

(declare-fun tb!197053 () Bool)

(assert (=> (and b!3521743 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494))))))) t!282166) tb!197053))

(declare-fun b!3523451 () Bool)

(declare-fun e!2180891 () Bool)

(declare-fun tp!1087208 () Bool)

(assert (=> b!3523451 (= e!2180891 (and (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (value!176526 (h!42765 (t!281700 (t!281700 tokens!494))))))) tp!1087208))))

(declare-fun result!241428 () Bool)

(assert (=> tb!197053 (= result!241428 (and (inv!50582 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (value!176526 (h!42765 (t!281700 (t!281700 tokens!494)))))) e!2180891))))

(assert (= tb!197053 b!3523451))

(declare-fun m!3975531 () Bool)

(assert (=> b!3523451 m!3975531))

(declare-fun m!3975533 () Bool)

(assert (=> tb!197053 m!3975533))

(assert (=> d!1028403 t!282166))

(declare-fun b_and!251137 () Bool)

(assert (= b_and!251081 (and (=> t!282166 result!241428) b_and!251137)))

(declare-fun t!282168 () Bool)

(declare-fun tb!197055 () Bool)

(assert (=> (and b!3520694 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494))))))) t!282168) tb!197055))

(declare-fun result!241430 () Bool)

(assert (= result!241430 result!241428))

(assert (=> d!1028403 t!282168))

(declare-fun b_and!251139 () Bool)

(assert (= b_and!251079 (and (=> t!282168 result!241430) b_and!251139)))

(declare-fun tb!197057 () Bool)

(declare-fun t!282170 () Bool)

(assert (=> (and b!3520728 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494))))))) t!282170) tb!197057))

(declare-fun result!241432 () Bool)

(assert (= result!241432 result!241428))

(assert (=> d!1028403 t!282170))

(declare-fun b_and!251141 () Bool)

(assert (= b_and!251087 (and (=> t!282170 result!241432) b_and!251141)))

(declare-fun t!282172 () Bool)

(declare-fun tb!197059 () Bool)

(assert (=> (and b!3520698 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494))))))) t!282172) tb!197059))

(declare-fun result!241434 () Bool)

(assert (= result!241434 result!241428))

(assert (=> d!1028403 t!282172))

(declare-fun b_and!251143 () Bool)

(assert (= b_and!251083 (and (=> t!282172 result!241434) b_and!251143)))

(declare-fun t!282174 () Bool)

(declare-fun tb!197061 () Bool)

(assert (=> (and b!3521754 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494))))))) t!282174) tb!197061))

(declare-fun result!241436 () Bool)

(assert (= result!241436 result!241428))

(assert (=> d!1028403 t!282174))

(declare-fun b_and!251145 () Bool)

(assert (= b_and!251085 (and (=> t!282174 result!241436) b_and!251145)))

(declare-fun m!3975535 () Bool)

(assert (=> d!1028403 m!3975535))

(declare-fun m!3975537 () Bool)

(assert (=> d!1028403 m!3975537))

(assert (=> b!3521663 d!1028403))

(declare-fun d!1028405 () Bool)

(assert (=> d!1028405 (= (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494))))) (list!13663 (c!606753 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494)))))))))

(declare-fun bs!565526 () Bool)

(assert (= bs!565526 d!1028405))

(declare-fun m!3975539 () Bool)

(assert (=> bs!565526 m!3975539))

(assert (=> b!3521663 d!1028405))

(declare-fun d!1028407 () Bool)

(declare-fun c!607457 () Bool)

(assert (=> d!1028407 (= c!607457 ((_ is Cons!37345) (t!281700 (t!281700 (t!281700 tokens!494)))))))

(declare-fun e!2180892 () List!37467)

(assert (=> d!1028407 (= (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 (t!281700 tokens!494))) separatorToken!241) e!2180892)))

(declare-fun b!3523452 () Bool)

(assert (=> b!3523452 (= e!2180892 (++!9253 (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 (t!281700 tokens!494)))))) (list!13659 (charsOf!3490 separatorToken!241))) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 (t!281700 (t!281700 tokens!494)))) separatorToken!241)))))

(declare-fun b!3523453 () Bool)

(assert (=> b!3523453 (= e!2180892 Nil!37343)))

(assert (= (and d!1028407 c!607457) b!3523452))

(assert (= (and d!1028407 (not c!607457)) b!3523453))

(declare-fun m!3975541 () Bool)

(assert (=> b!3523452 m!3975541))

(declare-fun m!3975543 () Bool)

(assert (=> b!3523452 m!3975543))

(declare-fun m!3975545 () Bool)

(assert (=> b!3523452 m!3975545))

(assert (=> b!3523452 m!3975543))

(declare-fun m!3975547 () Bool)

(assert (=> b!3523452 m!3975547))

(assert (=> b!3523452 m!3970529))

(assert (=> b!3523452 m!3970545))

(assert (=> b!3523452 m!3970529))

(assert (=> b!3523452 m!3975541))

(declare-fun m!3975549 () Bool)

(assert (=> b!3523452 m!3975549))

(assert (=> b!3523452 m!3975549))

(assert (=> b!3523452 m!3970545))

(assert (=> b!3523452 m!3975545))

(assert (=> b!3521663 d!1028407))

(declare-fun b!3523455 () Bool)

(declare-fun e!2180893 () List!37467)

(assert (=> b!3523455 (= e!2180893 (Cons!37343 (h!42763 (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494)))))) (++!9253 (t!281698 (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494)))))) (list!13659 (charsOf!3490 separatorToken!241)))))))

(declare-fun d!1028409 () Bool)

(declare-fun e!2180894 () Bool)

(assert (=> d!1028409 e!2180894))

(declare-fun res!1420998 () Bool)

(assert (=> d!1028409 (=> (not res!1420998) (not e!2180894))))

(declare-fun lt!1203311 () List!37467)

(assert (=> d!1028409 (= res!1420998 (= (content!5263 lt!1203311) ((_ map or) (content!5263 (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494)))))) (content!5263 (list!13659 (charsOf!3490 separatorToken!241))))))))

(assert (=> d!1028409 (= lt!1203311 e!2180893)))

(declare-fun c!607458 () Bool)

(assert (=> d!1028409 (= c!607458 ((_ is Nil!37343) (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494)))))))))

(assert (=> d!1028409 (= (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494))))) (list!13659 (charsOf!3490 separatorToken!241))) lt!1203311)))

(declare-fun b!3523456 () Bool)

(declare-fun res!1420997 () Bool)

(assert (=> b!3523456 (=> (not res!1420997) (not e!2180894))))

(assert (=> b!3523456 (= res!1420997 (= (size!28412 lt!1203311) (+ (size!28412 (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494)))))) (size!28412 (list!13659 (charsOf!3490 separatorToken!241))))))))

(declare-fun b!3523454 () Bool)

(assert (=> b!3523454 (= e!2180893 (list!13659 (charsOf!3490 separatorToken!241)))))

(declare-fun b!3523457 () Bool)

(assert (=> b!3523457 (= e!2180894 (or (not (= (list!13659 (charsOf!3490 separatorToken!241)) Nil!37343)) (= lt!1203311 (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494))))))))))

(assert (= (and d!1028409 c!607458) b!3523454))

(assert (= (and d!1028409 (not c!607458)) b!3523455))

(assert (= (and d!1028409 res!1420998) b!3523456))

(assert (= (and b!3523456 res!1420997) b!3523457))

(assert (=> b!3523455 m!3970545))

(declare-fun m!3975551 () Bool)

(assert (=> b!3523455 m!3975551))

(declare-fun m!3975553 () Bool)

(assert (=> d!1028409 m!3975553))

(assert (=> d!1028409 m!3972227))

(declare-fun m!3975555 () Bool)

(assert (=> d!1028409 m!3975555))

(assert (=> d!1028409 m!3970545))

(assert (=> d!1028409 m!3975393))

(declare-fun m!3975557 () Bool)

(assert (=> b!3523456 m!3975557))

(assert (=> b!3523456 m!3972227))

(declare-fun m!3975559 () Bool)

(assert (=> b!3523456 m!3975559))

(assert (=> b!3523456 m!3970545))

(assert (=> b!3523456 m!3975399))

(assert (=> b!3521663 d!1028409))

(assert (=> b!3521663 d!1027313))

(assert (=> b!3521663 d!1027315))

(declare-fun b!3523459 () Bool)

(declare-fun e!2180895 () List!37467)

(assert (=> b!3523459 (= e!2180895 (Cons!37343 (h!42763 (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494))))) (list!13659 (charsOf!3490 separatorToken!241)))) (++!9253 (t!281698 (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494))))) (list!13659 (charsOf!3490 separatorToken!241)))) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 (t!281700 tokens!494))) separatorToken!241))))))

(declare-fun d!1028411 () Bool)

(declare-fun e!2180896 () Bool)

(assert (=> d!1028411 e!2180896))

(declare-fun res!1421000 () Bool)

(assert (=> d!1028411 (=> (not res!1421000) (not e!2180896))))

(declare-fun lt!1203312 () List!37467)

(assert (=> d!1028411 (= res!1421000 (= (content!5263 lt!1203312) ((_ map or) (content!5263 (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494))))) (list!13659 (charsOf!3490 separatorToken!241)))) (content!5263 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 (t!281700 tokens!494))) separatorToken!241)))))))

(assert (=> d!1028411 (= lt!1203312 e!2180895)))

(declare-fun c!607459 () Bool)

(assert (=> d!1028411 (= c!607459 ((_ is Nil!37343) (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494))))) (list!13659 (charsOf!3490 separatorToken!241)))))))

(assert (=> d!1028411 (= (++!9253 (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494))))) (list!13659 (charsOf!3490 separatorToken!241))) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 (t!281700 tokens!494))) separatorToken!241)) lt!1203312)))

(declare-fun b!3523460 () Bool)

(declare-fun res!1420999 () Bool)

(assert (=> b!3523460 (=> (not res!1420999) (not e!2180896))))

(assert (=> b!3523460 (= res!1420999 (= (size!28412 lt!1203312) (+ (size!28412 (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494))))) (list!13659 (charsOf!3490 separatorToken!241)))) (size!28412 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 (t!281700 tokens!494))) separatorToken!241)))))))

(declare-fun b!3523458 () Bool)

(assert (=> b!3523458 (= e!2180895 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 (t!281700 tokens!494))) separatorToken!241))))

(declare-fun b!3523461 () Bool)

(assert (=> b!3523461 (= e!2180896 (or (not (= (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 (t!281700 tokens!494))) separatorToken!241) Nil!37343)) (= lt!1203312 (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 (t!281700 tokens!494))))) (list!13659 (charsOf!3490 separatorToken!241))))))))

(assert (= (and d!1028411 c!607459) b!3523458))

(assert (= (and d!1028411 (not c!607459)) b!3523459))

(assert (= (and d!1028411 res!1421000) b!3523460))

(assert (= (and b!3523460 res!1420999) b!3523461))

(assert (=> b!3523459 m!3972221))

(declare-fun m!3975561 () Bool)

(assert (=> b!3523459 m!3975561))

(declare-fun m!3975563 () Bool)

(assert (=> d!1028411 m!3975563))

(assert (=> d!1028411 m!3972223))

(declare-fun m!3975565 () Bool)

(assert (=> d!1028411 m!3975565))

(assert (=> d!1028411 m!3972221))

(declare-fun m!3975567 () Bool)

(assert (=> d!1028411 m!3975567))

(declare-fun m!3975569 () Bool)

(assert (=> b!3523460 m!3975569))

(assert (=> b!3523460 m!3972223))

(declare-fun m!3975571 () Bool)

(assert (=> b!3523460 m!3975571))

(assert (=> b!3523460 m!3972221))

(declare-fun m!3975573 () Bool)

(assert (=> b!3523460 m!3975573))

(assert (=> b!3521663 d!1028411))

(declare-fun d!1028413 () Bool)

(declare-fun lt!1203313 () Bool)

(assert (=> d!1028413 (= lt!1203313 (isEmpty!21818 (list!13662 (_1!21722 lt!1202171))))))

(assert (=> d!1028413 (= lt!1203313 (isEmpty!21819 (c!606754 (_1!21722 lt!1202171))))))

(assert (=> d!1028413 (= (isEmpty!21805 (_1!21722 lt!1202171)) lt!1203313)))

(declare-fun bs!565527 () Bool)

(assert (= bs!565527 d!1028413))

(assert (=> bs!565527 m!3971505))

(assert (=> bs!565527 m!3971505))

(declare-fun m!3975575 () Bool)

(assert (=> bs!565527 m!3975575))

(declare-fun m!3975577 () Bool)

(assert (=> bs!565527 m!3975577))

(assert (=> b!3521267 d!1028413))

(assert (=> b!3521635 d!1027833))

(assert (=> b!3521635 d!1027835))

(declare-fun d!1028415 () Bool)

(declare-fun lt!1203316 () Bool)

(assert (=> d!1028415 (= lt!1203316 (select (content!5266 tokens!494) (h!42765 tokens!494)))))

(declare-fun e!2180902 () Bool)

(assert (=> d!1028415 (= lt!1203316 e!2180902)))

(declare-fun res!1421005 () Bool)

(assert (=> d!1028415 (=> (not res!1421005) (not e!2180902))))

(assert (=> d!1028415 (= res!1421005 ((_ is Cons!37345) tokens!494))))

(assert (=> d!1028415 (= (contains!7008 tokens!494 (h!42765 tokens!494)) lt!1203316)))

(declare-fun b!3523466 () Bool)

(declare-fun e!2180901 () Bool)

(assert (=> b!3523466 (= e!2180902 e!2180901)))

(declare-fun res!1421006 () Bool)

(assert (=> b!3523466 (=> res!1421006 e!2180901)))

(assert (=> b!3523466 (= res!1421006 (= (h!42765 tokens!494) (h!42765 tokens!494)))))

(declare-fun b!3523467 () Bool)

(assert (=> b!3523467 (= e!2180901 (contains!7008 (t!281700 tokens!494) (h!42765 tokens!494)))))

(assert (= (and d!1028415 res!1421005) b!3523466))

(assert (= (and b!3523466 (not res!1421006)) b!3523467))

(declare-fun m!3975579 () Bool)

(assert (=> d!1028415 m!3975579))

(declare-fun m!3975581 () Bool)

(assert (=> d!1028415 m!3975581))

(declare-fun m!3975583 () Bool)

(assert (=> b!3523467 m!3975583))

(assert (=> b!3521674 d!1028415))

(assert (=> b!3521686 d!1028129))

(assert (=> b!3521686 d!1028131))

(declare-fun d!1028417 () Bool)

(assert (=> d!1028417 (dynLambda!15912 lambda!122743 (h!42765 (t!281700 tokens!494)))))

(assert (=> d!1028417 true))

(declare-fun _$7!1368 () Unit!52994)

(assert (=> d!1028417 (= (choose!20447 tokens!494 lambda!122743 (h!42765 (t!281700 tokens!494))) _$7!1368)))

(declare-fun b_lambda!102941 () Bool)

(assert (=> (not b_lambda!102941) (not d!1028417)))

(declare-fun bs!565528 () Bool)

(assert (= bs!565528 d!1028417))

(assert (=> bs!565528 m!3971799))

(assert (=> d!1027183 d!1028417))

(declare-fun d!1028419 () Bool)

(declare-fun res!1421007 () Bool)

(declare-fun e!2180903 () Bool)

(assert (=> d!1028419 (=> res!1421007 e!2180903)))

(assert (=> d!1028419 (= res!1421007 ((_ is Nil!37345) tokens!494))))

(assert (=> d!1028419 (= (forall!8029 tokens!494 lambda!122743) e!2180903)))

(declare-fun b!3523468 () Bool)

(declare-fun e!2180904 () Bool)

(assert (=> b!3523468 (= e!2180903 e!2180904)))

(declare-fun res!1421008 () Bool)

(assert (=> b!3523468 (=> (not res!1421008) (not e!2180904))))

(assert (=> b!3523468 (= res!1421008 (dynLambda!15912 lambda!122743 (h!42765 tokens!494)))))

(declare-fun b!3523469 () Bool)

(assert (=> b!3523469 (= e!2180904 (forall!8029 (t!281700 tokens!494) lambda!122743))))

(assert (= (and d!1028419 (not res!1421007)) b!3523468))

(assert (= (and b!3523468 res!1421008) b!3523469))

(declare-fun b_lambda!102943 () Bool)

(assert (=> (not b_lambda!102943) (not b!3523468)))

(declare-fun m!3975585 () Bool)

(assert (=> b!3523468 m!3975585))

(declare-fun m!3975587 () Bool)

(assert (=> b!3523469 m!3975587))

(assert (=> d!1027183 d!1028419))

(declare-fun b!3523471 () Bool)

(declare-fun e!2180905 () List!37467)

(assert (=> b!3523471 (= e!2180905 (Cons!37343 (h!42763 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494))))) (++!9253 (t!281698 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494))))) (list!13659 (charsOf!3490 separatorToken!241)))))))

(declare-fun d!1028421 () Bool)

(declare-fun e!2180906 () Bool)

(assert (=> d!1028421 e!2180906))

(declare-fun res!1421010 () Bool)

(assert (=> d!1028421 (=> (not res!1421010) (not e!2180906))))

(declare-fun lt!1203317 () List!37467)

(assert (=> d!1028421 (= res!1421010 (= (content!5263 lt!1203317) ((_ map or) (content!5263 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494))))) (content!5263 (list!13659 (charsOf!3490 separatorToken!241))))))))

(assert (=> d!1028421 (= lt!1203317 e!2180905)))

(declare-fun c!607460 () Bool)

(assert (=> d!1028421 (= c!607460 ((_ is Nil!37343) (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494))))))))

(assert (=> d!1028421 (= (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494)))) (list!13659 (charsOf!3490 separatorToken!241))) lt!1203317)))

(declare-fun b!3523472 () Bool)

(declare-fun res!1421009 () Bool)

(assert (=> b!3523472 (=> (not res!1421009) (not e!2180906))))

(assert (=> b!3523472 (= res!1421009 (= (size!28412 lt!1203317) (+ (size!28412 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494))))) (size!28412 (list!13659 (charsOf!3490 separatorToken!241))))))))

(declare-fun b!3523470 () Bool)

(assert (=> b!3523470 (= e!2180905 (list!13659 (charsOf!3490 separatorToken!241)))))

(declare-fun b!3523473 () Bool)

(assert (=> b!3523473 (= e!2180906 (or (not (= (list!13659 (charsOf!3490 separatorToken!241)) Nil!37343)) (= lt!1203317 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494)))))))))

(assert (= (and d!1028421 c!607460) b!3523470))

(assert (= (and d!1028421 (not c!607460)) b!3523471))

(assert (= (and d!1028421 res!1421010) b!3523472))

(assert (= (and b!3523472 res!1421009) b!3523473))

(assert (=> b!3523471 m!3970545))

(declare-fun m!3975589 () Bool)

(assert (=> b!3523471 m!3975589))

(declare-fun m!3975591 () Bool)

(assert (=> d!1028421 m!3975591))

(assert (=> d!1028421 m!3970535))

(declare-fun m!3975593 () Bool)

(assert (=> d!1028421 m!3975593))

(assert (=> d!1028421 m!3970545))

(assert (=> d!1028421 m!3975393))

(declare-fun m!3975595 () Bool)

(assert (=> b!3523472 m!3975595))

(assert (=> b!3523472 m!3970535))

(declare-fun m!3975597 () Bool)

(assert (=> b!3523472 m!3975597))

(assert (=> b!3523472 m!3970545))

(assert (=> b!3523472 m!3975399))

(assert (=> b!3521665 d!1028421))

(assert (=> b!3521665 d!1027307))

(assert (=> b!3521665 d!1027313))

(assert (=> b!3521665 d!1027303))

(declare-fun b!3523475 () Bool)

(declare-fun e!2180907 () List!37467)

(assert (=> b!3523475 (= e!2180907 (Cons!37343 (h!42763 (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494)))) (list!13659 (charsOf!3490 separatorToken!241)))) (++!9253 (t!281698 (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494)))) (list!13659 (charsOf!3490 separatorToken!241)))) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241))))))

(declare-fun d!1028423 () Bool)

(declare-fun e!2180908 () Bool)

(assert (=> d!1028423 e!2180908))

(declare-fun res!1421012 () Bool)

(assert (=> d!1028423 (=> (not res!1421012) (not e!2180908))))

(declare-fun lt!1203318 () List!37467)

(assert (=> d!1028423 (= res!1421012 (= (content!5263 lt!1203318) ((_ map or) (content!5263 (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494)))) (list!13659 (charsOf!3490 separatorToken!241)))) (content!5263 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)))))))

(assert (=> d!1028423 (= lt!1203318 e!2180907)))

(declare-fun c!607461 () Bool)

(assert (=> d!1028423 (= c!607461 ((_ is Nil!37343) (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494)))) (list!13659 (charsOf!3490 separatorToken!241)))))))

(assert (=> d!1028423 (= (++!9253 (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494)))) (list!13659 (charsOf!3490 separatorToken!241))) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)) lt!1203318)))

(declare-fun b!3523476 () Bool)

(declare-fun res!1421011 () Bool)

(assert (=> b!3523476 (=> (not res!1421011) (not e!2180908))))

(assert (=> b!3523476 (= res!1421011 (= (size!28412 lt!1203318) (+ (size!28412 (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494)))) (list!13659 (charsOf!3490 separatorToken!241)))) (size!28412 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)))))))

(declare-fun b!3523474 () Bool)

(assert (=> b!3523474 (= e!2180907 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241))))

(declare-fun b!3523477 () Bool)

(assert (=> b!3523477 (= e!2180908 (or (not (= (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241) Nil!37343)) (= lt!1203318 (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494)))) (list!13659 (charsOf!3490 separatorToken!241))))))))

(assert (= (and d!1028423 c!607461) b!3523474))

(assert (= (and d!1028423 (not c!607461)) b!3523475))

(assert (= (and d!1028423 res!1421012) b!3523476))

(assert (= (and b!3523476 res!1421011) b!3523477))

(assert (=> b!3523475 m!3970539))

(declare-fun m!3975599 () Bool)

(assert (=> b!3523475 m!3975599))

(declare-fun m!3975601 () Bool)

(assert (=> d!1028423 m!3975601))

(assert (=> d!1028423 m!3972229))

(declare-fun m!3975603 () Bool)

(assert (=> d!1028423 m!3975603))

(assert (=> d!1028423 m!3970539))

(assert (=> d!1028423 m!3972211))

(declare-fun m!3975605 () Bool)

(assert (=> b!3523476 m!3975605))

(assert (=> b!3523476 m!3972229))

(declare-fun m!3975607 () Bool)

(assert (=> b!3523476 m!3975607))

(assert (=> b!3523476 m!3970539))

(assert (=> b!3523476 m!3972217))

(assert (=> b!3521665 d!1028423))

(assert (=> b!3521665 d!1027315))

(assert (=> b!3521665 d!1027317))

(declare-fun d!1028425 () Bool)

(assert (=> d!1028425 (= (isDefined!5870 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241)))) (not (isEmpty!21814 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241))))))))

(declare-fun bs!565529 () Bool)

(assert (= bs!565529 d!1028425))

(assert (=> bs!565529 m!3970617))

(declare-fun m!3975609 () Bool)

(assert (=> bs!565529 m!3975609))

(assert (=> d!1027121 d!1028425))

(assert (=> d!1027121 d!1027173))

(declare-fun d!1028427 () Bool)

(declare-fun e!2180909 () Bool)

(assert (=> d!1028427 e!2180909))

(declare-fun res!1421013 () Bool)

(assert (=> d!1028427 (=> (not res!1421013) (not e!2180909))))

(assert (=> d!1028427 (= res!1421013 (isDefined!5870 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241)))))))

(assert (=> d!1028427 true))

(declare-fun _$52!1993 () Unit!52994)

(assert (=> d!1028427 (= (choose!20442 thiss!18206 rules!2135 lt!1201944 separatorToken!241) _$52!1993)))

(declare-fun b!3523478 () Bool)

(declare-fun res!1421014 () Bool)

(assert (=> b!3523478 (=> (not res!1421014) (not e!2180909))))

(assert (=> b!3523478 (= res!1421014 (matchR!4819 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241))))) (list!13659 (charsOf!3490 separatorToken!241))))))

(declare-fun b!3523479 () Bool)

(assert (=> b!3523479 (= e!2180909 (= (rule!8122 separatorToken!241) (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241))))))))

(assert (= (and d!1028427 res!1421013) b!3523478))

(assert (= (and b!3523478 res!1421014) b!3523479))

(assert (=> d!1028427 m!3970617))

(assert (=> d!1028427 m!3970617))

(assert (=> d!1028427 m!3971519))

(assert (=> b!3523478 m!3970617))

(assert (=> b!3523478 m!3970617))

(assert (=> b!3523478 m!3971525))

(assert (=> b!3523478 m!3970529))

(assert (=> b!3523478 m!3970545))

(assert (=> b!3523478 m!3970529))

(assert (=> b!3523478 m!3970545))

(assert (=> b!3523478 m!3971523))

(assert (=> b!3523479 m!3970617))

(assert (=> b!3523479 m!3970617))

(assert (=> b!3523479 m!3971525))

(assert (=> d!1027121 d!1028427))

(assert (=> d!1027121 d!1027011))

(declare-fun b!3523483 () Bool)

(declare-fun e!2180911 () List!37467)

(assert (=> b!3523483 (= e!2180911 (++!9253 (list!13663 (left!29167 (c!606753 (charsOf!3490 (h!42765 (t!281700 tokens!494)))))) (list!13663 (right!29497 (c!606753 (charsOf!3490 (h!42765 (t!281700 tokens!494))))))))))

(declare-fun b!3523480 () Bool)

(declare-fun e!2180910 () List!37467)

(assert (=> b!3523480 (= e!2180910 Nil!37343)))

(declare-fun d!1028429 () Bool)

(declare-fun c!607462 () Bool)

(assert (=> d!1028429 (= c!607462 ((_ is Empty!11327) (c!606753 (charsOf!3490 (h!42765 (t!281700 tokens!494))))))))

(assert (=> d!1028429 (= (list!13663 (c!606753 (charsOf!3490 (h!42765 (t!281700 tokens!494))))) e!2180910)))

(declare-fun b!3523481 () Bool)

(assert (=> b!3523481 (= e!2180910 e!2180911)))

(declare-fun c!607463 () Bool)

(assert (=> b!3523481 (= c!607463 ((_ is Leaf!17676) (c!606753 (charsOf!3490 (h!42765 (t!281700 tokens!494))))))))

(declare-fun b!3523482 () Bool)

(assert (=> b!3523482 (= e!2180911 (list!13666 (xs!14517 (c!606753 (charsOf!3490 (h!42765 (t!281700 tokens!494)))))))))

(assert (= (and d!1028429 c!607462) b!3523480))

(assert (= (and d!1028429 (not c!607462)) b!3523481))

(assert (= (and b!3523481 c!607463) b!3523482))

(assert (= (and b!3523481 (not c!607463)) b!3523483))

(declare-fun m!3975611 () Bool)

(assert (=> b!3523483 m!3975611))

(declare-fun m!3975613 () Bool)

(assert (=> b!3523483 m!3975613))

(assert (=> b!3523483 m!3975611))

(assert (=> b!3523483 m!3975613))

(declare-fun m!3975615 () Bool)

(assert (=> b!3523483 m!3975615))

(declare-fun m!3975617 () Bool)

(assert (=> b!3523482 m!3975617))

(assert (=> d!1027303 d!1028429))

(declare-fun bs!565530 () Bool)

(declare-fun d!1028431 () Bool)

(assert (= bs!565530 (and d!1028431 b!3520722)))

(declare-fun lambda!122788 () Int)

(assert (=> bs!565530 (not (= lambda!122788 lambda!122742))))

(declare-fun bs!565531 () Bool)

(assert (= bs!565531 (and d!1028431 b!3520730)))

(assert (=> bs!565531 (= lambda!122788 lambda!122743)))

(declare-fun bs!565532 () Bool)

(assert (= bs!565532 (and d!1028431 d!1027283)))

(assert (=> bs!565532 (= lambda!122788 lambda!122753)))

(declare-fun b!3523492 () Bool)

(declare-fun e!2180920 () Bool)

(assert (=> b!3523492 (= e!2180920 true)))

(declare-fun b!3523491 () Bool)

(declare-fun e!2180919 () Bool)

(assert (=> b!3523491 (= e!2180919 e!2180920)))

(declare-fun b!3523490 () Bool)

(declare-fun e!2180918 () Bool)

(assert (=> b!3523490 (= e!2180918 e!2180919)))

(assert (=> d!1028431 e!2180918))

(assert (= b!3523491 b!3523492))

(assert (= b!3523490 b!3523491))

(assert (= (and d!1028431 ((_ is Cons!37344) rules!2135)) b!3523490))

(assert (=> b!3523492 (< (dynLambda!15904 order!20085 (toValue!7728 (transformation!5476 (h!42764 rules!2135)))) (dynLambda!15905 order!20087 lambda!122788))))

(assert (=> b!3523492 (< (dynLambda!15906 order!20089 (toChars!7587 (transformation!5476 (h!42764 rules!2135)))) (dynLambda!15905 order!20087 lambda!122788))))

(assert (=> d!1028431 true))

(declare-fun lt!1203321 () Bool)

(assert (=> d!1028431 (= lt!1203321 (forall!8029 (list!13662 (seqFromList!4005 tokens!494)) lambda!122788))))

(declare-fun e!2180916 () Bool)

(assert (=> d!1028431 (= lt!1203321 e!2180916)))

(declare-fun res!1421019 () Bool)

(assert (=> d!1028431 (=> res!1421019 e!2180916)))

(assert (=> d!1028431 (= res!1421019 (not ((_ is Cons!37345) (list!13662 (seqFromList!4005 tokens!494)))))))

(assert (=> d!1028431 (not (isEmpty!21807 rules!2135))))

(assert (=> d!1028431 (= (rulesProduceEachTokenIndividuallyList!1885 thiss!18206 rules!2135 (list!13662 (seqFromList!4005 tokens!494))) lt!1203321)))

(declare-fun b!3523488 () Bool)

(declare-fun e!2180917 () Bool)

(assert (=> b!3523488 (= e!2180916 e!2180917)))

(declare-fun res!1421020 () Bool)

(assert (=> b!3523488 (=> (not res!1421020) (not e!2180917))))

(assert (=> b!3523488 (= res!1421020 (rulesProduceIndividualToken!2557 thiss!18206 rules!2135 (h!42765 (list!13662 (seqFromList!4005 tokens!494)))))))

(declare-fun b!3523489 () Bool)

(assert (=> b!3523489 (= e!2180917 (rulesProduceEachTokenIndividuallyList!1885 thiss!18206 rules!2135 (t!281700 (list!13662 (seqFromList!4005 tokens!494)))))))

(assert (= (and d!1028431 (not res!1421019)) b!3523488))

(assert (= (and b!3523488 res!1421020) b!3523489))

(assert (=> d!1028431 m!3972167))

(declare-fun m!3975619 () Bool)

(assert (=> d!1028431 m!3975619))

(assert (=> d!1028431 m!3970677))

(declare-fun m!3975621 () Bool)

(assert (=> b!3523488 m!3975621))

(declare-fun m!3975623 () Bool)

(assert (=> b!3523489 m!3975623))

(assert (=> b!3521630 d!1028431))

(declare-fun d!1028433 () Bool)

(assert (=> d!1028433 (= (list!13662 (seqFromList!4005 tokens!494)) (list!13665 (c!606754 (seqFromList!4005 tokens!494))))))

(declare-fun bs!565533 () Bool)

(assert (= bs!565533 d!1028433))

(declare-fun m!3975625 () Bool)

(assert (=> bs!565533 m!3975625))

(assert (=> b!3521630 d!1028433))

(assert (=> b!3521283 d!1027771))

(declare-fun bm!254607 () Bool)

(declare-fun c!607466 () Bool)

(declare-fun c!607467 () Bool)

(declare-fun call!254613 () List!37467)

(assert (=> bm!254607 (= call!254613 (usedCharacters!710 (ite c!607466 (reg!10564 (ite c!606891 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (ite c!607467 (regTwo!20983 (ite c!606891 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (regOne!20982 (ite c!606891 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))))

(declare-fun b!3523493 () Bool)

(declare-fun e!2180922 () List!37467)

(declare-fun call!254615 () List!37467)

(assert (=> b!3523493 (= e!2180922 call!254615)))

(declare-fun bm!254608 () Bool)

(declare-fun call!254612 () List!37467)

(assert (=> bm!254608 (= call!254612 (usedCharacters!710 (ite c!607467 (regOne!20983 (ite c!606891 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (regTwo!20982 (ite c!606891 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))))

(declare-fun b!3523494 () Bool)

(assert (=> b!3523494 (= e!2180922 call!254615)))

(declare-fun d!1028435 () Bool)

(declare-fun c!607465 () Bool)

(assert (=> d!1028435 (= c!607465 (or ((_ is EmptyExpr!10235) (ite c!606891 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) ((_ is EmptyLang!10235) (ite c!606891 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))

(declare-fun e!2180921 () List!37467)

(assert (=> d!1028435 (= (usedCharacters!710 (ite c!606891 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) e!2180921)))

(declare-fun b!3523495 () Bool)

(assert (=> b!3523495 (= e!2180921 Nil!37343)))

(declare-fun call!254614 () List!37467)

(declare-fun bm!254609 () Bool)

(assert (=> bm!254609 (= call!254615 (++!9253 (ite c!607467 call!254612 call!254614) (ite c!607467 call!254614 call!254612)))))

(declare-fun b!3523496 () Bool)

(declare-fun e!2180924 () List!37467)

(assert (=> b!3523496 (= e!2180921 e!2180924)))

(declare-fun c!607464 () Bool)

(assert (=> b!3523496 (= c!607464 ((_ is ElementMatch!10235) (ite c!606891 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(declare-fun b!3523497 () Bool)

(assert (=> b!3523497 (= c!607466 ((_ is Star!10235) (ite c!606891 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(declare-fun e!2180923 () List!37467)

(assert (=> b!3523497 (= e!2180924 e!2180923)))

(declare-fun b!3523498 () Bool)

(assert (=> b!3523498 (= e!2180924 (Cons!37343 (c!606752 (ite c!606891 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) Nil!37343))))

(declare-fun b!3523499 () Bool)

(assert (=> b!3523499 (= e!2180923 call!254613)))

(declare-fun bm!254610 () Bool)

(assert (=> bm!254610 (= call!254614 call!254613)))

(declare-fun b!3523500 () Bool)

(assert (=> b!3523500 (= e!2180923 e!2180922)))

(assert (=> b!3523500 (= c!607467 ((_ is Union!10235) (ite c!606891 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(assert (= (and d!1028435 c!607465) b!3523495))

(assert (= (and d!1028435 (not c!607465)) b!3523496))

(assert (= (and b!3523496 c!607464) b!3523498))

(assert (= (and b!3523496 (not c!607464)) b!3523497))

(assert (= (and b!3523497 c!607466) b!3523499))

(assert (= (and b!3523497 (not c!607466)) b!3523500))

(assert (= (and b!3523500 c!607467) b!3523494))

(assert (= (and b!3523500 (not c!607467)) b!3523493))

(assert (= (or b!3523494 b!3523493) bm!254610))

(assert (= (or b!3523494 b!3523493) bm!254608))

(assert (= (or b!3523494 b!3523493) bm!254609))

(assert (= (or b!3523499 bm!254610) bm!254607))

(declare-fun m!3975627 () Bool)

(assert (=> bm!254607 m!3975627))

(declare-fun m!3975629 () Bool)

(assert (=> bm!254608 m!3975629))

(declare-fun m!3975631 () Bool)

(assert (=> bm!254609 m!3975631))

(assert (=> bm!254395 d!1028435))

(declare-fun b!3523501 () Bool)

(declare-fun e!2180925 () Bool)

(declare-fun call!254618 () Bool)

(assert (=> b!3523501 (= e!2180925 call!254618)))

(declare-fun d!1028437 () Bool)

(declare-fun res!1421021 () Bool)

(declare-fun e!2180928 () Bool)

(assert (=> d!1028437 (=> res!1421021 e!2180928)))

(assert (=> d!1028437 (= res!1421021 ((_ is ElementMatch!10235) (ite c!606933 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(assert (=> d!1028437 (= (validRegex!4674 (ite c!606933 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) e!2180928)))

(declare-fun b!3523502 () Bool)

(declare-fun res!1421025 () Bool)

(declare-fun e!2180927 () Bool)

(assert (=> b!3523502 (=> (not res!1421025) (not e!2180927))))

(declare-fun call!254617 () Bool)

(assert (=> b!3523502 (= res!1421025 call!254617)))

(declare-fun e!2180931 () Bool)

(assert (=> b!3523502 (= e!2180931 e!2180927)))

(declare-fun b!3523503 () Bool)

(declare-fun e!2180926 () Bool)

(declare-fun call!254616 () Bool)

(assert (=> b!3523503 (= e!2180926 call!254616)))

(declare-fun bm!254611 () Bool)

(assert (=> bm!254611 (= call!254616 call!254618)))

(declare-fun b!3523504 () Bool)

(assert (=> b!3523504 (= e!2180927 call!254616)))

(declare-fun bm!254612 () Bool)

(declare-fun c!607469 () Bool)

(declare-fun c!607468 () Bool)

(assert (=> bm!254612 (= call!254618 (validRegex!4674 (ite c!607468 (reg!10564 (ite c!606933 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (ite c!607469 (regTwo!20983 (ite c!606933 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (regTwo!20982 (ite c!606933 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))))

(declare-fun b!3523505 () Bool)

(declare-fun e!2180929 () Bool)

(assert (=> b!3523505 (= e!2180928 e!2180929)))

(assert (=> b!3523505 (= c!607468 ((_ is Star!10235) (ite c!606933 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(declare-fun b!3523506 () Bool)

(declare-fun res!1421022 () Bool)

(declare-fun e!2180930 () Bool)

(assert (=> b!3523506 (=> res!1421022 e!2180930)))

(assert (=> b!3523506 (= res!1421022 (not ((_ is Concat!15941) (ite c!606933 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))

(assert (=> b!3523506 (= e!2180931 e!2180930)))

(declare-fun b!3523507 () Bool)

(assert (=> b!3523507 (= e!2180929 e!2180931)))

(assert (=> b!3523507 (= c!607469 ((_ is Union!10235) (ite c!606933 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(declare-fun b!3523508 () Bool)

(assert (=> b!3523508 (= e!2180929 e!2180925)))

(declare-fun res!1421023 () Bool)

(assert (=> b!3523508 (= res!1421023 (not (nullable!3517 (reg!10564 (ite c!606933 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))))

(assert (=> b!3523508 (=> (not res!1421023) (not e!2180925))))

(declare-fun b!3523509 () Bool)

(assert (=> b!3523509 (= e!2180930 e!2180926)))

(declare-fun res!1421024 () Bool)

(assert (=> b!3523509 (=> (not res!1421024) (not e!2180926))))

(assert (=> b!3523509 (= res!1421024 call!254617)))

(declare-fun bm!254613 () Bool)

(assert (=> bm!254613 (= call!254617 (validRegex!4674 (ite c!607469 (regOne!20983 (ite c!606933 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (regOne!20982 (ite c!606933 (regOne!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))))

(assert (= (and d!1028437 (not res!1421021)) b!3523505))

(assert (= (and b!3523505 c!607468) b!3523508))

(assert (= (and b!3523505 (not c!607468)) b!3523507))

(assert (= (and b!3523508 res!1421023) b!3523501))

(assert (= (and b!3523507 c!607469) b!3523502))

(assert (= (and b!3523507 (not c!607469)) b!3523506))

(assert (= (and b!3523502 res!1421025) b!3523504))

(assert (= (and b!3523506 (not res!1421022)) b!3523509))

(assert (= (and b!3523509 res!1421024) b!3523503))

(assert (= (or b!3523504 b!3523503) bm!254611))

(assert (= (or b!3523502 b!3523509) bm!254613))

(assert (= (or b!3523501 bm!254611) bm!254612))

(declare-fun m!3975633 () Bool)

(assert (=> bm!254612 m!3975633))

(declare-fun m!3975635 () Bool)

(assert (=> b!3523508 m!3975635))

(declare-fun m!3975637 () Bool)

(assert (=> bm!254613 m!3975637))

(assert (=> bm!254409 d!1028437))

(declare-fun d!1028439 () Bool)

(declare-fun lt!1203324 () Bool)

(declare-fun content!5267 (List!37468) (InoxSet Rule!10752))

(assert (=> d!1028439 (= lt!1203324 (select (content!5267 rules!2135) (rule!8122 (_1!21723 (get!11991 lt!1202070)))))))

(declare-fun e!2180937 () Bool)

(assert (=> d!1028439 (= lt!1203324 e!2180937)))

(declare-fun res!1421031 () Bool)

(assert (=> d!1028439 (=> (not res!1421031) (not e!2180937))))

(assert (=> d!1028439 (= res!1421031 ((_ is Cons!37344) rules!2135))))

(assert (=> d!1028439 (= (contains!7007 rules!2135 (rule!8122 (_1!21723 (get!11991 lt!1202070)))) lt!1203324)))

(declare-fun b!3523514 () Bool)

(declare-fun e!2180936 () Bool)

(assert (=> b!3523514 (= e!2180937 e!2180936)))

(declare-fun res!1421030 () Bool)

(assert (=> b!3523514 (=> res!1421030 e!2180936)))

(assert (=> b!3523514 (= res!1421030 (= (h!42764 rules!2135) (rule!8122 (_1!21723 (get!11991 lt!1202070)))))))

(declare-fun b!3523515 () Bool)

(assert (=> b!3523515 (= e!2180936 (contains!7007 (t!281699 rules!2135) (rule!8122 (_1!21723 (get!11991 lt!1202070)))))))

(assert (= (and d!1028439 res!1421031) b!3523514))

(assert (= (and b!3523514 (not res!1421030)) b!3523515))

(declare-fun m!3975639 () Bool)

(assert (=> d!1028439 m!3975639))

(declare-fun m!3975641 () Bool)

(assert (=> d!1028439 m!3975641))

(declare-fun m!3975643 () Bool)

(assert (=> b!3523515 m!3975643))

(assert (=> b!3521029 d!1028439))

(assert (=> b!3521029 d!1027905))

(declare-fun d!1028441 () Bool)

(declare-fun c!607470 () Bool)

(assert (=> d!1028441 (= c!607470 ((_ is Nil!37343) (usedCharacters!710 (regex!5476 (rule!8122 separatorToken!241)))))))

(declare-fun e!2180938 () (InoxSet C!20656))

(assert (=> d!1028441 (= (content!5263 (usedCharacters!710 (regex!5476 (rule!8122 separatorToken!241)))) e!2180938)))

(declare-fun b!3523516 () Bool)

(assert (=> b!3523516 (= e!2180938 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3523517 () Bool)

(assert (=> b!3523517 (= e!2180938 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 (usedCharacters!710 (regex!5476 (rule!8122 separatorToken!241)))) true) (content!5263 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 separatorToken!241)))))))))

(assert (= (and d!1028441 c!607470) b!3523516))

(assert (= (and d!1028441 (not c!607470)) b!3523517))

(declare-fun m!3975645 () Bool)

(assert (=> b!3523517 m!3975645))

(declare-fun m!3975647 () Bool)

(assert (=> b!3523517 m!3975647))

(assert (=> d!1027123 d!1028441))

(declare-fun b!3523531 () Bool)

(declare-fun e!2180944 () Bool)

(declare-fun e!2180943 () Bool)

(assert (=> b!3523531 (= e!2180944 e!2180943)))

(declare-fun res!1421046 () Bool)

(assert (=> b!3523531 (=> (not res!1421046) (not e!2180943))))

(declare-fun height!1724 (Conc!11328) Int)

(assert (=> b!3523531 (= res!1421046 (<= (- 1) (- (height!1724 (left!29168 (c!606754 lt!1202301))) (height!1724 (right!29498 (c!606754 lt!1202301))))))))

(declare-fun b!3523532 () Bool)

(declare-fun res!1421048 () Bool)

(assert (=> b!3523532 (=> (not res!1421048) (not e!2180943))))

(assert (=> b!3523532 (= res!1421048 (<= (- (height!1724 (left!29168 (c!606754 lt!1202301))) (height!1724 (right!29498 (c!606754 lt!1202301)))) 1))))

(declare-fun b!3523533 () Bool)

(assert (=> b!3523533 (= e!2180943 (not (isEmpty!21819 (right!29498 (c!606754 lt!1202301)))))))

(declare-fun b!3523534 () Bool)

(declare-fun res!1421049 () Bool)

(assert (=> b!3523534 (=> (not res!1421049) (not e!2180943))))

(assert (=> b!3523534 (= res!1421049 (isBalanced!3457 (right!29498 (c!606754 lt!1202301))))))

(declare-fun b!3523535 () Bool)

(declare-fun res!1421045 () Bool)

(assert (=> b!3523535 (=> (not res!1421045) (not e!2180943))))

(assert (=> b!3523535 (= res!1421045 (isBalanced!3457 (left!29168 (c!606754 lt!1202301))))))

(declare-fun b!3523530 () Bool)

(declare-fun res!1421044 () Bool)

(assert (=> b!3523530 (=> (not res!1421044) (not e!2180943))))

(assert (=> b!3523530 (= res!1421044 (not (isEmpty!21819 (left!29168 (c!606754 lt!1202301)))))))

(declare-fun d!1028443 () Bool)

(declare-fun res!1421047 () Bool)

(assert (=> d!1028443 (=> res!1421047 e!2180944)))

(assert (=> d!1028443 (= res!1421047 (not ((_ is Node!11328) (c!606754 lt!1202301))))))

(assert (=> d!1028443 (= (isBalanced!3457 (c!606754 lt!1202301)) e!2180944)))

(assert (= (and d!1028443 (not res!1421047)) b!3523531))

(assert (= (and b!3523531 res!1421046) b!3523532))

(assert (= (and b!3523532 res!1421048) b!3523535))

(assert (= (and b!3523535 res!1421045) b!3523534))

(assert (= (and b!3523534 res!1421049) b!3523530))

(assert (= (and b!3523530 res!1421044) b!3523533))

(declare-fun m!3975649 () Bool)

(assert (=> b!3523533 m!3975649))

(declare-fun m!3975651 () Bool)

(assert (=> b!3523530 m!3975651))

(declare-fun m!3975653 () Bool)

(assert (=> b!3523531 m!3975653))

(declare-fun m!3975655 () Bool)

(assert (=> b!3523531 m!3975655))

(assert (=> b!3523532 m!3975653))

(assert (=> b!3523532 m!3975655))

(declare-fun m!3975657 () Bool)

(assert (=> b!3523535 m!3975657))

(declare-fun m!3975659 () Bool)

(assert (=> b!3523534 m!3975659))

(assert (=> b!3521573 d!1028443))

(assert (=> d!1027007 d!1027009))

(declare-fun d!1028445 () Bool)

(assert (=> d!1028445 (not (matchR!4819 (regex!5476 (rule!8122 separatorToken!241)) lt!1201944))))

(assert (=> d!1028445 true))

(declare-fun _$127!398 () Unit!52994)

(assert (=> d!1028445 (= (choose!20440 (regex!5476 (rule!8122 separatorToken!241)) lt!1201944 lt!1201930) _$127!398)))

(declare-fun bs!565534 () Bool)

(assert (= bs!565534 d!1028445))

(assert (=> bs!565534 m!3970555))

(assert (=> d!1027007 d!1028445))

(declare-fun b!3523536 () Bool)

(declare-fun e!2180945 () Bool)

(declare-fun call!254621 () Bool)

(assert (=> b!3523536 (= e!2180945 call!254621)))

(declare-fun d!1028447 () Bool)

(declare-fun res!1421050 () Bool)

(declare-fun e!2180948 () Bool)

(assert (=> d!1028447 (=> res!1421050 e!2180948)))

(assert (=> d!1028447 (= res!1421050 ((_ is ElementMatch!10235) (regex!5476 (rule!8122 separatorToken!241))))))

(assert (=> d!1028447 (= (validRegex!4674 (regex!5476 (rule!8122 separatorToken!241))) e!2180948)))

(declare-fun b!3523537 () Bool)

(declare-fun res!1421054 () Bool)

(declare-fun e!2180947 () Bool)

(assert (=> b!3523537 (=> (not res!1421054) (not e!2180947))))

(declare-fun call!254620 () Bool)

(assert (=> b!3523537 (= res!1421054 call!254620)))

(declare-fun e!2180951 () Bool)

(assert (=> b!3523537 (= e!2180951 e!2180947)))

(declare-fun b!3523538 () Bool)

(declare-fun e!2180946 () Bool)

(declare-fun call!254619 () Bool)

(assert (=> b!3523538 (= e!2180946 call!254619)))

(declare-fun bm!254614 () Bool)

(assert (=> bm!254614 (= call!254619 call!254621)))

(declare-fun b!3523539 () Bool)

(assert (=> b!3523539 (= e!2180947 call!254619)))

(declare-fun c!607473 () Bool)

(declare-fun c!607472 () Bool)

(declare-fun bm!254615 () Bool)

(assert (=> bm!254615 (= call!254621 (validRegex!4674 (ite c!607472 (reg!10564 (regex!5476 (rule!8122 separatorToken!241))) (ite c!607473 (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241)))))))))

(declare-fun b!3523540 () Bool)

(declare-fun e!2180949 () Bool)

(assert (=> b!3523540 (= e!2180948 e!2180949)))

(assert (=> b!3523540 (= c!607472 ((_ is Star!10235) (regex!5476 (rule!8122 separatorToken!241))))))

(declare-fun b!3523541 () Bool)

(declare-fun res!1421051 () Bool)

(declare-fun e!2180950 () Bool)

(assert (=> b!3523541 (=> res!1421051 e!2180950)))

(assert (=> b!3523541 (= res!1421051 (not ((_ is Concat!15941) (regex!5476 (rule!8122 separatorToken!241)))))))

(assert (=> b!3523541 (= e!2180951 e!2180950)))

(declare-fun b!3523542 () Bool)

(assert (=> b!3523542 (= e!2180949 e!2180951)))

(assert (=> b!3523542 (= c!607473 ((_ is Union!10235) (regex!5476 (rule!8122 separatorToken!241))))))

(declare-fun b!3523543 () Bool)

(assert (=> b!3523543 (= e!2180949 e!2180945)))

(declare-fun res!1421052 () Bool)

(assert (=> b!3523543 (= res!1421052 (not (nullable!3517 (reg!10564 (regex!5476 (rule!8122 separatorToken!241))))))))

(assert (=> b!3523543 (=> (not res!1421052) (not e!2180945))))

(declare-fun b!3523544 () Bool)

(assert (=> b!3523544 (= e!2180950 e!2180946)))

(declare-fun res!1421053 () Bool)

(assert (=> b!3523544 (=> (not res!1421053) (not e!2180946))))

(assert (=> b!3523544 (= res!1421053 call!254620)))

(declare-fun bm!254616 () Bool)

(assert (=> bm!254616 (= call!254620 (validRegex!4674 (ite c!607473 (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241))))))))

(assert (= (and d!1028447 (not res!1421050)) b!3523540))

(assert (= (and b!3523540 c!607472) b!3523543))

(assert (= (and b!3523540 (not c!607472)) b!3523542))

(assert (= (and b!3523543 res!1421052) b!3523536))

(assert (= (and b!3523542 c!607473) b!3523537))

(assert (= (and b!3523542 (not c!607473)) b!3523541))

(assert (= (and b!3523537 res!1421054) b!3523539))

(assert (= (and b!3523541 (not res!1421051)) b!3523544))

(assert (= (and b!3523544 res!1421053) b!3523538))

(assert (= (or b!3523539 b!3523538) bm!254614))

(assert (= (or b!3523537 b!3523544) bm!254616))

(assert (= (or b!3523536 bm!254614) bm!254615))

(declare-fun m!3975661 () Bool)

(assert (=> bm!254615 m!3975661))

(declare-fun m!3975663 () Bool)

(assert (=> b!3523543 m!3975663))

(declare-fun m!3975665 () Bool)

(assert (=> bm!254616 m!3975665))

(assert (=> d!1027007 d!1028447))

(declare-fun bs!565535 () Bool)

(declare-fun d!1028449 () Bool)

(assert (= bs!565535 (and d!1028449 d!1028373)))

(declare-fun lambda!122789 () Int)

(assert (=> bs!565535 (= (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) (= lambda!122789 lambda!122782))))

(assert (=> d!1028449 true))

(assert (=> d!1028449 (< (dynLambda!15904 order!20085 (toValue!7728 (transformation!5476 (h!42764 rules!2135)))) (dynLambda!15916 order!20097 lambda!122789))))

(assert (=> d!1028449 (= (equivClasses!2211 (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (h!42764 rules!2135)))) (Forall2!948 lambda!122789))))

(declare-fun bs!565536 () Bool)

(assert (= bs!565536 d!1028449))

(declare-fun m!3975667 () Bool)

(assert (=> bs!565536 m!3975667))

(assert (=> b!3521702 d!1028449))

(assert (=> d!1027147 d!1027293))

(declare-fun d!1028451 () Bool)

(assert (=> d!1028451 (= (maxPrefix!2605 thiss!18206 rules!2135 (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) lt!1201943)) (Some!7613 (tuple2!37179 (h!42765 tokens!494) lt!1201943)))))

(assert (=> d!1028451 true))

(declare-fun _$49!292 () Unit!52994)

(assert (=> d!1028451 (= (choose!20446 thiss!18206 rules!2135 (h!42765 tokens!494) (rule!8122 (h!42765 tokens!494)) lt!1201943 (rule!8122 separatorToken!241)) _$49!292)))

(declare-fun bs!565537 () Bool)

(assert (= bs!565537 d!1028451))

(assert (=> bs!565537 m!3970673))

(assert (=> bs!565537 m!3970673))

(assert (=> bs!565537 m!3970675))

(assert (=> bs!565537 m!3970675))

(assert (=> bs!565537 m!3971743))

(assert (=> bs!565537 m!3971743))

(assert (=> bs!565537 m!3971747))

(assert (=> d!1027147 d!1028451))

(assert (=> d!1027147 d!1027291))

(declare-fun b!3523545 () Bool)

(declare-fun e!2180954 () Option!7614)

(declare-fun lt!1203329 () Option!7614)

(declare-fun lt!1203325 () Option!7614)

(assert (=> b!3523545 (= e!2180954 (ite (and ((_ is None!7613) lt!1203329) ((_ is None!7613) lt!1203325)) None!7613 (ite ((_ is None!7613) lt!1203325) lt!1203329 (ite ((_ is None!7613) lt!1203329) lt!1203325 (ite (>= (size!28411 (_1!21723 (v!37101 lt!1203329))) (size!28411 (_1!21723 (v!37101 lt!1203325)))) lt!1203329 lt!1203325)))))))

(declare-fun call!254622 () Option!7614)

(assert (=> b!3523545 (= lt!1203329 call!254622)))

(assert (=> b!3523545 (= lt!1203325 (maxPrefix!2605 thiss!18206 (t!281699 rules!2135) (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) lt!1201943)))))

(declare-fun b!3523546 () Bool)

(declare-fun e!2180952 () Bool)

(declare-fun e!2180953 () Bool)

(assert (=> b!3523546 (= e!2180952 e!2180953)))

(declare-fun res!1421058 () Bool)

(assert (=> b!3523546 (=> (not res!1421058) (not e!2180953))))

(declare-fun lt!1203326 () Option!7614)

(assert (=> b!3523546 (= res!1421058 (isDefined!5872 lt!1203326))))

(declare-fun b!3523547 () Bool)

(declare-fun res!1421059 () Bool)

(assert (=> b!3523547 (=> (not res!1421059) (not e!2180953))))

(assert (=> b!3523547 (= res!1421059 (matchR!4819 (regex!5476 (rule!8122 (_1!21723 (get!11991 lt!1203326)))) (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1203326))))))))

(declare-fun b!3523548 () Bool)

(assert (=> b!3523548 (= e!2180953 (contains!7007 rules!2135 (rule!8122 (_1!21723 (get!11991 lt!1203326)))))))

(declare-fun b!3523549 () Bool)

(declare-fun res!1421060 () Bool)

(assert (=> b!3523549 (=> (not res!1421060) (not e!2180953))))

(assert (=> b!3523549 (= res!1421060 (= (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1203326)))) (originalCharacters!6190 (_1!21723 (get!11991 lt!1203326)))))))

(declare-fun b!3523550 () Bool)

(declare-fun res!1421057 () Bool)

(assert (=> b!3523550 (=> (not res!1421057) (not e!2180953))))

(assert (=> b!3523550 (= res!1421057 (= (value!176526 (_1!21723 (get!11991 lt!1203326))) (apply!8897 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1203326)))) (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1203326)))))))))

(declare-fun b!3523551 () Bool)

(declare-fun res!1421055 () Bool)

(assert (=> b!3523551 (=> (not res!1421055) (not e!2180953))))

(assert (=> b!3523551 (= res!1421055 (< (size!28412 (_2!21723 (get!11991 lt!1203326))) (size!28412 (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) lt!1201943))))))

(declare-fun b!3523552 () Bool)

(assert (=> b!3523552 (= e!2180954 call!254622)))

(declare-fun b!3523553 () Bool)

(declare-fun res!1421056 () Bool)

(assert (=> b!3523553 (=> (not res!1421056) (not e!2180953))))

(assert (=> b!3523553 (= res!1421056 (= (++!9253 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1203326)))) (_2!21723 (get!11991 lt!1203326))) (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) lt!1201943)))))

(declare-fun bm!254617 () Bool)

(assert (=> bm!254617 (= call!254622 (maxPrefixOneRule!1772 thiss!18206 (h!42764 rules!2135) (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) lt!1201943)))))

(declare-fun d!1028453 () Bool)

(assert (=> d!1028453 e!2180952))

(declare-fun res!1421061 () Bool)

(assert (=> d!1028453 (=> res!1421061 e!2180952)))

(assert (=> d!1028453 (= res!1421061 (isEmpty!21815 lt!1203326))))

(assert (=> d!1028453 (= lt!1203326 e!2180954)))

(declare-fun c!607474 () Bool)

(assert (=> d!1028453 (= c!607474 (and ((_ is Cons!37344) rules!2135) ((_ is Nil!37344) (t!281699 rules!2135))))))

(declare-fun lt!1203328 () Unit!52994)

(declare-fun lt!1203327 () Unit!52994)

(assert (=> d!1028453 (= lt!1203328 lt!1203327)))

(assert (=> d!1028453 (isPrefix!2874 (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) lt!1201943) (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) lt!1201943))))

(assert (=> d!1028453 (= lt!1203327 (lemmaIsPrefixRefl!1833 (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) lt!1201943) (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) lt!1201943)))))

(assert (=> d!1028453 (rulesValidInductive!1883 thiss!18206 rules!2135)))

(assert (=> d!1028453 (= (maxPrefix!2605 thiss!18206 rules!2135 (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) lt!1201943)) lt!1203326)))

(assert (= (and d!1028453 c!607474) b!3523552))

(assert (= (and d!1028453 (not c!607474)) b!3523545))

(assert (= (or b!3523552 b!3523545) bm!254617))

(assert (= (and d!1028453 (not res!1421061)) b!3523546))

(assert (= (and b!3523546 res!1421058) b!3523549))

(assert (= (and b!3523549 res!1421060) b!3523551))

(assert (= (and b!3523551 res!1421055) b!3523553))

(assert (= (and b!3523553 res!1421056) b!3523550))

(assert (= (and b!3523550 res!1421057) b!3523547))

(assert (= (and b!3523547 res!1421059) b!3523548))

(declare-fun m!3975669 () Bool)

(assert (=> b!3523551 m!3975669))

(declare-fun m!3975671 () Bool)

(assert (=> b!3523551 m!3975671))

(assert (=> b!3523551 m!3971743))

(declare-fun m!3975673 () Bool)

(assert (=> b!3523551 m!3975673))

(assert (=> b!3523548 m!3975669))

(declare-fun m!3975675 () Bool)

(assert (=> b!3523548 m!3975675))

(declare-fun m!3975677 () Bool)

(assert (=> d!1028453 m!3975677))

(assert (=> d!1028453 m!3971743))

(assert (=> d!1028453 m!3971743))

(declare-fun m!3975679 () Bool)

(assert (=> d!1028453 m!3975679))

(assert (=> d!1028453 m!3971743))

(assert (=> d!1028453 m!3971743))

(declare-fun m!3975681 () Bool)

(assert (=> d!1028453 m!3975681))

(assert (=> d!1028453 m!3971089))

(assert (=> b!3523547 m!3975669))

(declare-fun m!3975683 () Bool)

(assert (=> b!3523547 m!3975683))

(assert (=> b!3523547 m!3975683))

(declare-fun m!3975685 () Bool)

(assert (=> b!3523547 m!3975685))

(assert (=> b!3523547 m!3975685))

(declare-fun m!3975687 () Bool)

(assert (=> b!3523547 m!3975687))

(assert (=> b!3523550 m!3975669))

(declare-fun m!3975689 () Bool)

(assert (=> b!3523550 m!3975689))

(assert (=> b!3523550 m!3975689))

(declare-fun m!3975691 () Bool)

(assert (=> b!3523550 m!3975691))

(assert (=> b!3523545 m!3971743))

(declare-fun m!3975693 () Bool)

(assert (=> b!3523545 m!3975693))

(declare-fun m!3975695 () Bool)

(assert (=> b!3523546 m!3975695))

(assert (=> b!3523553 m!3975669))

(assert (=> b!3523553 m!3975683))

(assert (=> b!3523553 m!3975683))

(assert (=> b!3523553 m!3975685))

(assert (=> b!3523553 m!3975685))

(declare-fun m!3975697 () Bool)

(assert (=> b!3523553 m!3975697))

(assert (=> bm!254617 m!3971743))

(declare-fun m!3975699 () Bool)

(assert (=> bm!254617 m!3975699))

(assert (=> b!3523549 m!3975669))

(assert (=> b!3523549 m!3975683))

(assert (=> b!3523549 m!3975683))

(assert (=> b!3523549 m!3975685))

(assert (=> d!1027147 d!1028453))

(declare-fun b!3523555 () Bool)

(declare-fun e!2180955 () List!37467)

(assert (=> b!3523555 (= e!2180955 (Cons!37343 (h!42763 (list!13659 (charsOf!3490 (h!42765 tokens!494)))) (++!9253 (t!281698 (list!13659 (charsOf!3490 (h!42765 tokens!494)))) lt!1201943)))))

(declare-fun d!1028455 () Bool)

(declare-fun e!2180956 () Bool)

(assert (=> d!1028455 e!2180956))

(declare-fun res!1421063 () Bool)

(assert (=> d!1028455 (=> (not res!1421063) (not e!2180956))))

(declare-fun lt!1203330 () List!37467)

(assert (=> d!1028455 (= res!1421063 (= (content!5263 lt!1203330) ((_ map or) (content!5263 (list!13659 (charsOf!3490 (h!42765 tokens!494)))) (content!5263 lt!1201943))))))

(assert (=> d!1028455 (= lt!1203330 e!2180955)))

(declare-fun c!607475 () Bool)

(assert (=> d!1028455 (= c!607475 ((_ is Nil!37343) (list!13659 (charsOf!3490 (h!42765 tokens!494)))))))

(assert (=> d!1028455 (= (++!9253 (list!13659 (charsOf!3490 (h!42765 tokens!494))) lt!1201943) lt!1203330)))

(declare-fun b!3523556 () Bool)

(declare-fun res!1421062 () Bool)

(assert (=> b!3523556 (=> (not res!1421062) (not e!2180956))))

(assert (=> b!3523556 (= res!1421062 (= (size!28412 lt!1203330) (+ (size!28412 (list!13659 (charsOf!3490 (h!42765 tokens!494)))) (size!28412 lt!1201943))))))

(declare-fun b!3523554 () Bool)

(assert (=> b!3523554 (= e!2180955 lt!1201943)))

(declare-fun b!3523557 () Bool)

(assert (=> b!3523557 (= e!2180956 (or (not (= lt!1201943 Nil!37343)) (= lt!1203330 (list!13659 (charsOf!3490 (h!42765 tokens!494))))))))

(assert (= (and d!1028455 c!607475) b!3523554))

(assert (= (and d!1028455 (not c!607475)) b!3523555))

(assert (= (and d!1028455 res!1421063) b!3523556))

(assert (= (and b!3523556 res!1421062) b!3523557))

(declare-fun m!3975701 () Bool)

(assert (=> b!3523555 m!3975701))

(declare-fun m!3975703 () Bool)

(assert (=> d!1028455 m!3975703))

(assert (=> d!1028455 m!3970675))

(assert (=> d!1028455 m!3975391))

(assert (=> d!1028455 m!3972157))

(declare-fun m!3975705 () Bool)

(assert (=> b!3523556 m!3975705))

(assert (=> b!3523556 m!3970675))

(assert (=> b!3523556 m!3975397))

(assert (=> b!3523556 m!3972161))

(assert (=> d!1027147 d!1028455))

(assert (=> d!1027147 d!1027281))

(declare-fun d!1028457 () Bool)

(assert (=> d!1028457 (= (list!13659 lt!1202076) (list!13663 (c!606753 lt!1202076)))))

(declare-fun bs!565538 () Bool)

(assert (= bs!565538 d!1028457))

(declare-fun m!3975707 () Bool)

(assert (=> bs!565538 m!3975707))

(assert (=> d!1027025 d!1028457))

(declare-fun d!1028459 () Bool)

(declare-fun c!607476 () Bool)

(assert (=> d!1028459 (= c!607476 ((_ is Cons!37345) (list!13662 lt!1201906)))))

(declare-fun e!2180957 () List!37467)

(assert (=> d!1028459 (= (printList!1613 thiss!18206 (list!13662 lt!1201906)) e!2180957)))

(declare-fun b!3523558 () Bool)

(assert (=> b!3523558 (= e!2180957 (++!9253 (list!13659 (charsOf!3490 (h!42765 (list!13662 lt!1201906)))) (printList!1613 thiss!18206 (t!281700 (list!13662 lt!1201906)))))))

(declare-fun b!3523559 () Bool)

(assert (=> b!3523559 (= e!2180957 Nil!37343)))

(assert (= (and d!1028459 c!607476) b!3523558))

(assert (= (and d!1028459 (not c!607476)) b!3523559))

(declare-fun m!3975709 () Bool)

(assert (=> b!3523558 m!3975709))

(assert (=> b!3523558 m!3975709))

(declare-fun m!3975711 () Bool)

(assert (=> b!3523558 m!3975711))

(declare-fun m!3975713 () Bool)

(assert (=> b!3523558 m!3975713))

(assert (=> b!3523558 m!3975711))

(assert (=> b!3523558 m!3975713))

(declare-fun m!3975715 () Bool)

(assert (=> b!3523558 m!3975715))

(assert (=> d!1027025 d!1028459))

(declare-fun d!1028461 () Bool)

(assert (=> d!1028461 (= (list!13662 lt!1201906) (list!13665 (c!606754 lt!1201906)))))

(declare-fun bs!565539 () Bool)

(assert (= bs!565539 d!1028461))

(declare-fun m!3975717 () Bool)

(assert (=> bs!565539 m!3975717))

(assert (=> d!1027025 d!1028461))

(assert (=> d!1027025 d!1027207))

(declare-fun b!3523561 () Bool)

(declare-fun e!2180958 () List!37467)

(assert (=> b!3523561 (= e!2180958 (Cons!37343 (h!42763 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217))))) (++!9253 (t!281698 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217))))) (_2!21723 (get!11991 lt!1202217)))))))

(declare-fun d!1028463 () Bool)

(declare-fun e!2180959 () Bool)

(assert (=> d!1028463 e!2180959))

(declare-fun res!1421065 () Bool)

(assert (=> d!1028463 (=> (not res!1421065) (not e!2180959))))

(declare-fun lt!1203331 () List!37467)

(assert (=> d!1028463 (= res!1421065 (= (content!5263 lt!1203331) ((_ map or) (content!5263 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217))))) (content!5263 (_2!21723 (get!11991 lt!1202217))))))))

(assert (=> d!1028463 (= lt!1203331 e!2180958)))

(declare-fun c!607477 () Bool)

(assert (=> d!1028463 (= c!607477 ((_ is Nil!37343) (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217))))))))

(assert (=> d!1028463 (= (++!9253 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217)))) (_2!21723 (get!11991 lt!1202217))) lt!1203331)))

(declare-fun b!3523562 () Bool)

(declare-fun res!1421064 () Bool)

(assert (=> b!3523562 (=> (not res!1421064) (not e!2180959))))

(assert (=> b!3523562 (= res!1421064 (= (size!28412 lt!1203331) (+ (size!28412 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217))))) (size!28412 (_2!21723 (get!11991 lt!1202217))))))))

(declare-fun b!3523560 () Bool)

(assert (=> b!3523560 (= e!2180958 (_2!21723 (get!11991 lt!1202217)))))

(declare-fun b!3523563 () Bool)

(assert (=> b!3523563 (= e!2180959 (or (not (= (_2!21723 (get!11991 lt!1202217)) Nil!37343)) (= lt!1203331 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202217)))))))))

(assert (= (and d!1028463 c!607477) b!3523560))

(assert (= (and d!1028463 (not c!607477)) b!3523561))

(assert (= (and d!1028463 res!1421065) b!3523562))

(assert (= (and b!3523562 res!1421064) b!3523563))

(declare-fun m!3975719 () Bool)

(assert (=> b!3523561 m!3975719))

(declare-fun m!3975721 () Bool)

(assert (=> d!1028463 m!3975721))

(assert (=> d!1028463 m!3971603))

(declare-fun m!3975723 () Bool)

(assert (=> d!1028463 m!3975723))

(declare-fun m!3975725 () Bool)

(assert (=> d!1028463 m!3975725))

(declare-fun m!3975727 () Bool)

(assert (=> b!3523562 m!3975727))

(assert (=> b!3523562 m!3971603))

(declare-fun m!3975729 () Bool)

(assert (=> b!3523562 m!3975729))

(assert (=> b!3523562 m!3971599))

(assert (=> b!3521317 d!1028463))

(assert (=> b!3521317 d!1028191))

(assert (=> b!3521317 d!1028193))

(assert (=> b!3521317 d!1027909))

(declare-fun d!1028465 () Bool)

(declare-fun lt!1203332 () Bool)

(assert (=> d!1028465 (= lt!1203332 (isEmpty!21812 (list!13659 (_2!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494))))))))))

(assert (=> d!1028465 (= lt!1203332 (isEmpty!21813 (c!606753 (_2!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494))))))))))

(assert (=> d!1028465 (= (isEmpty!21806 (_2!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494)))))) lt!1203332)))

(declare-fun bs!565540 () Bool)

(assert (= bs!565540 d!1028465))

(declare-fun m!3975731 () Bool)

(assert (=> bs!565540 m!3975731))

(assert (=> bs!565540 m!3975731))

(declare-fun m!3975733 () Bool)

(assert (=> bs!565540 m!3975733))

(declare-fun m!3975735 () Bool)

(assert (=> bs!565540 m!3975735))

(assert (=> b!3520914 d!1028465))

(declare-fun d!1028467 () Bool)

(declare-fun e!2180962 () Bool)

(assert (=> d!1028467 e!2180962))

(declare-fun res!1421067 () Bool)

(assert (=> d!1028467 (=> (not res!1421067) (not e!2180962))))

(declare-fun e!2180960 () Bool)

(assert (=> d!1028467 (= res!1421067 e!2180960)))

(declare-fun c!607478 () Bool)

(declare-fun lt!1203333 () tuple2!37176)

(assert (=> d!1028467 (= c!607478 (> (size!28413 (_1!21722 lt!1203333)) 0))))

(assert (=> d!1028467 (= lt!1203333 (lexTailRecV2!1086 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494))) (BalanceConc!22269 Empty!11327) (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494))) (BalanceConc!22271 Empty!11328)))))

(assert (=> d!1028467 (= (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494)))) lt!1203333)))

(declare-fun b!3523564 () Bool)

(declare-fun res!1421068 () Bool)

(assert (=> b!3523564 (=> (not res!1421068) (not e!2180962))))

(assert (=> b!3523564 (= res!1421068 (= (list!13662 (_1!21722 lt!1203333)) (_1!21726 (lexList!1478 thiss!18206 rules!2135 (list!13659 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494))))))))))

(declare-fun b!3523565 () Bool)

(declare-fun e!2180961 () Bool)

(assert (=> b!3523565 (= e!2180960 e!2180961)))

(declare-fun res!1421066 () Bool)

(assert (=> b!3523565 (= res!1421066 (< (size!28419 (_2!21722 lt!1203333)) (size!28419 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494))))))))

(assert (=> b!3523565 (=> (not res!1421066) (not e!2180961))))

(declare-fun b!3523566 () Bool)

(assert (=> b!3523566 (= e!2180961 (not (isEmpty!21805 (_1!21722 lt!1203333))))))

(declare-fun b!3523567 () Bool)

(assert (=> b!3523567 (= e!2180962 (= (list!13659 (_2!21722 lt!1203333)) (_2!21726 (lexList!1478 thiss!18206 rules!2135 (list!13659 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494))))))))))

(declare-fun b!3523568 () Bool)

(assert (=> b!3523568 (= e!2180960 (= (_2!21722 lt!1203333) (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494)))))))

(assert (= (and d!1028467 c!607478) b!3523565))

(assert (= (and d!1028467 (not c!607478)) b!3523568))

(assert (= (and b!3523565 res!1421066) b!3523566))

(assert (= (and d!1028467 res!1421067) b!3523564))

(assert (= (and b!3523564 res!1421068) b!3523567))

(declare-fun m!3975737 () Bool)

(assert (=> b!3523566 m!3975737))

(declare-fun m!3975739 () Bool)

(assert (=> b!3523567 m!3975739))

(assert (=> b!3523567 m!3970903))

(declare-fun m!3975741 () Bool)

(assert (=> b!3523567 m!3975741))

(assert (=> b!3523567 m!3975741))

(declare-fun m!3975743 () Bool)

(assert (=> b!3523567 m!3975743))

(declare-fun m!3975745 () Bool)

(assert (=> b!3523564 m!3975745))

(assert (=> b!3523564 m!3970903))

(assert (=> b!3523564 m!3975741))

(assert (=> b!3523564 m!3975741))

(assert (=> b!3523564 m!3975743))

(declare-fun m!3975747 () Bool)

(assert (=> d!1028467 m!3975747))

(assert (=> d!1028467 m!3970903))

(assert (=> d!1028467 m!3970903))

(declare-fun m!3975749 () Bool)

(assert (=> d!1028467 m!3975749))

(declare-fun m!3975751 () Bool)

(assert (=> b!3523565 m!3975751))

(assert (=> b!3523565 m!3970903))

(declare-fun m!3975753 () Bool)

(assert (=> b!3523565 m!3975753))

(assert (=> b!3520914 d!1028467))

(declare-fun d!1028469 () Bool)

(declare-fun lt!1203334 () BalanceConc!22268)

(assert (=> d!1028469 (= (list!13659 lt!1203334) (printList!1613 thiss!18206 (list!13662 (singletonSeq!2572 (h!42765 tokens!494)))))))

(assert (=> d!1028469 (= lt!1203334 (printTailRec!1560 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494)) 0 (BalanceConc!22269 Empty!11327)))))

(assert (=> d!1028469 (= (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494))) lt!1203334)))

(declare-fun bs!565541 () Bool)

(assert (= bs!565541 d!1028469))

(declare-fun m!3975755 () Bool)

(assert (=> bs!565541 m!3975755))

(assert (=> bs!565541 m!3970691))

(assert (=> bs!565541 m!3970907))

(assert (=> bs!565541 m!3970907))

(declare-fun m!3975757 () Bool)

(assert (=> bs!565541 m!3975757))

(assert (=> bs!565541 m!3970691))

(declare-fun m!3975759 () Bool)

(assert (=> bs!565541 m!3975759))

(assert (=> b!3520914 d!1028469))

(assert (=> b!3520914 d!1027263))

(declare-fun d!1028471 () Bool)

(assert (=> d!1028471 (= (list!13659 lt!1202317) (list!13663 (c!606753 lt!1202317)))))

(declare-fun bs!565542 () Bool)

(assert (= bs!565542 d!1028471))

(declare-fun m!3975761 () Bool)

(assert (=> bs!565542 m!3975761))

(assert (=> d!1027313 d!1028471))

(assert (=> b!3520970 d!1027177))

(declare-fun d!1028473 () Bool)

(declare-fun lt!1203335 () Bool)

(assert (=> d!1028473 (= lt!1203335 (select (content!5263 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) lt!1201942))))

(declare-fun e!2180963 () Bool)

(assert (=> d!1028473 (= lt!1203335 e!2180963)))

(declare-fun res!1421069 () Bool)

(assert (=> d!1028473 (=> (not res!1421069) (not e!2180963))))

(assert (=> d!1028473 (= res!1421069 ((_ is Cons!37343) (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(assert (=> d!1028473 (= (contains!7004 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) lt!1201942) lt!1203335)))

(declare-fun b!3523569 () Bool)

(declare-fun e!2180964 () Bool)

(assert (=> b!3523569 (= e!2180963 e!2180964)))

(declare-fun res!1421070 () Bool)

(assert (=> b!3523569 (=> res!1421070 e!2180964)))

(assert (=> b!3523569 (= res!1421070 (= (h!42763 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) lt!1201942))))

(declare-fun b!3523570 () Bool)

(assert (=> b!3523570 (= e!2180964 (contains!7004 (t!281698 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) lt!1201942))))

(assert (= (and d!1028473 res!1421069) b!3523569))

(assert (= (and b!3523569 (not res!1421070)) b!3523570))

(assert (=> d!1028473 m!3974743))

(declare-fun m!3975763 () Bool)

(assert (=> d!1028473 m!3975763))

(declare-fun m!3975765 () Bool)

(assert (=> b!3523570 m!3975765))

(assert (=> b!3521432 d!1028473))

(declare-fun b!3523574 () Bool)

(declare-fun e!2180966 () List!37467)

(assert (=> b!3523574 (= e!2180966 (++!9253 (list!13663 (left!29167 (c!606753 (charsOf!3490 (h!42765 tokens!494))))) (list!13663 (right!29497 (c!606753 (charsOf!3490 (h!42765 tokens!494)))))))))

(declare-fun b!3523571 () Bool)

(declare-fun e!2180965 () List!37467)

(assert (=> b!3523571 (= e!2180965 Nil!37343)))

(declare-fun d!1028475 () Bool)

(declare-fun c!607479 () Bool)

(assert (=> d!1028475 (= c!607479 ((_ is Empty!11327) (c!606753 (charsOf!3490 (h!42765 tokens!494)))))))

(assert (=> d!1028475 (= (list!13663 (c!606753 (charsOf!3490 (h!42765 tokens!494)))) e!2180965)))

(declare-fun b!3523572 () Bool)

(assert (=> b!3523572 (= e!2180965 e!2180966)))

(declare-fun c!607480 () Bool)

(assert (=> b!3523572 (= c!607480 ((_ is Leaf!17676) (c!606753 (charsOf!3490 (h!42765 tokens!494)))))))

(declare-fun b!3523573 () Bool)

(assert (=> b!3523573 (= e!2180966 (list!13666 (xs!14517 (c!606753 (charsOf!3490 (h!42765 tokens!494))))))))

(assert (= (and d!1028475 c!607479) b!3523571))

(assert (= (and d!1028475 (not c!607479)) b!3523572))

(assert (= (and b!3523572 c!607480) b!3523573))

(assert (= (and b!3523572 (not c!607480)) b!3523574))

(declare-fun m!3975767 () Bool)

(assert (=> b!3523574 m!3975767))

(declare-fun m!3975769 () Bool)

(assert (=> b!3523574 m!3975769))

(assert (=> b!3523574 m!3975767))

(assert (=> b!3523574 m!3975769))

(declare-fun m!3975771 () Bool)

(assert (=> b!3523574 m!3975771))

(declare-fun m!3975773 () Bool)

(assert (=> b!3523573 m!3975773))

(assert (=> d!1027291 d!1028475))

(declare-fun lt!1203336 () Bool)

(declare-fun d!1028477 () Bool)

(assert (=> d!1028477 (= lt!1203336 (isEmpty!21812 (list!13659 (_2!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494)))))))))))

(assert (=> d!1028477 (= lt!1203336 (isEmpty!21813 (c!606753 (_2!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494)))))))))))

(assert (=> d!1028477 (= (isEmpty!21806 (_2!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494))))))) lt!1203336)))

(declare-fun bs!565543 () Bool)

(assert (= bs!565543 d!1028477))

(declare-fun m!3975775 () Bool)

(assert (=> bs!565543 m!3975775))

(assert (=> bs!565543 m!3975775))

(declare-fun m!3975777 () Bool)

(assert (=> bs!565543 m!3975777))

(declare-fun m!3975779 () Bool)

(assert (=> bs!565543 m!3975779))

(assert (=> b!3521150 d!1028477))

(declare-fun d!1028479 () Bool)

(declare-fun e!2180969 () Bool)

(assert (=> d!1028479 e!2180969))

(declare-fun res!1421072 () Bool)

(assert (=> d!1028479 (=> (not res!1421072) (not e!2180969))))

(declare-fun e!2180967 () Bool)

(assert (=> d!1028479 (= res!1421072 e!2180967)))

(declare-fun c!607481 () Bool)

(declare-fun lt!1203337 () tuple2!37176)

(assert (=> d!1028479 (= c!607481 (> (size!28413 (_1!21722 lt!1203337)) 0))))

(assert (=> d!1028479 (= lt!1203337 (lexTailRecV2!1086 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494)))) (BalanceConc!22269 Empty!11327) (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494)))) (BalanceConc!22271 Empty!11328)))))

(assert (=> d!1028479 (= (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494))))) lt!1203337)))

(declare-fun b!3523575 () Bool)

(declare-fun res!1421073 () Bool)

(assert (=> b!3523575 (=> (not res!1421073) (not e!2180969))))

(assert (=> b!3523575 (= res!1421073 (= (list!13662 (_1!21722 lt!1203337)) (_1!21726 (lexList!1478 thiss!18206 rules!2135 (list!13659 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494)))))))))))

(declare-fun b!3523576 () Bool)

(declare-fun e!2180968 () Bool)

(assert (=> b!3523576 (= e!2180967 e!2180968)))

(declare-fun res!1421071 () Bool)

(assert (=> b!3523576 (= res!1421071 (< (size!28419 (_2!21722 lt!1203337)) (size!28419 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494)))))))))

(assert (=> b!3523576 (=> (not res!1421071) (not e!2180968))))

(declare-fun b!3523577 () Bool)

(assert (=> b!3523577 (= e!2180968 (not (isEmpty!21805 (_1!21722 lt!1203337))))))

(declare-fun b!3523578 () Bool)

(assert (=> b!3523578 (= e!2180969 (= (list!13659 (_2!21722 lt!1203337)) (_2!21726 (lexList!1478 thiss!18206 rules!2135 (list!13659 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494)))))))))))

(declare-fun b!3523579 () Bool)

(assert (=> b!3523579 (= e!2180967 (= (_2!21722 lt!1203337) (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494))))))))

(assert (= (and d!1028479 c!607481) b!3523576))

(assert (= (and d!1028479 (not c!607481)) b!3523579))

(assert (= (and b!3523576 res!1421071) b!3523577))

(assert (= (and d!1028479 res!1421072) b!3523575))

(assert (= (and b!3523575 res!1421073) b!3523578))

(declare-fun m!3975781 () Bool)

(assert (=> b!3523577 m!3975781))

(declare-fun m!3975783 () Bool)

(assert (=> b!3523578 m!3975783))

(assert (=> b!3523578 m!3971265))

(declare-fun m!3975785 () Bool)

(assert (=> b!3523578 m!3975785))

(assert (=> b!3523578 m!3975785))

(declare-fun m!3975787 () Bool)

(assert (=> b!3523578 m!3975787))

(declare-fun m!3975789 () Bool)

(assert (=> b!3523575 m!3975789))

(assert (=> b!3523575 m!3971265))

(assert (=> b!3523575 m!3975785))

(assert (=> b!3523575 m!3975785))

(assert (=> b!3523575 m!3975787))

(declare-fun m!3975791 () Bool)

(assert (=> d!1028479 m!3975791))

(assert (=> d!1028479 m!3971265))

(assert (=> d!1028479 m!3971265))

(declare-fun m!3975793 () Bool)

(assert (=> d!1028479 m!3975793))

(declare-fun m!3975795 () Bool)

(assert (=> b!3523576 m!3975795))

(assert (=> b!3523576 m!3971265))

(declare-fun m!3975797 () Bool)

(assert (=> b!3523576 m!3975797))

(assert (=> b!3521150 d!1028479))

(declare-fun d!1028481 () Bool)

(declare-fun lt!1203338 () BalanceConc!22268)

(assert (=> d!1028481 (= (list!13659 lt!1203338) (printList!1613 thiss!18206 (list!13662 (singletonSeq!2572 (h!42765 (t!281700 tokens!494))))))))

(assert (=> d!1028481 (= lt!1203338 (printTailRec!1560 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494))) 0 (BalanceConc!22269 Empty!11327)))))

(assert (=> d!1028481 (= (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494)))) lt!1203338)))

(declare-fun bs!565544 () Bool)

(assert (= bs!565544 d!1028481))

(declare-fun m!3975799 () Bool)

(assert (=> bs!565544 m!3975799))

(assert (=> bs!565544 m!3970627))

(assert (=> bs!565544 m!3971269))

(assert (=> bs!565544 m!3971269))

(declare-fun m!3975801 () Bool)

(assert (=> bs!565544 m!3975801))

(assert (=> bs!565544 m!3970627))

(declare-fun m!3975803 () Bool)

(assert (=> bs!565544 m!3975803))

(assert (=> b!3521150 d!1028481))

(assert (=> b!3521150 d!1027205))

(declare-fun d!1028483 () Bool)

(assert (=> d!1028483 (= (nullable!3517 (regex!5476 lt!1201926)) (nullableFct!1023 (regex!5476 lt!1201926)))))

(declare-fun bs!565545 () Bool)

(assert (= bs!565545 d!1028483))

(declare-fun m!3975805 () Bool)

(assert (=> bs!565545 m!3975805))

(assert (=> b!3521642 d!1028483))

(declare-fun d!1028485 () Bool)

(declare-fun lt!1203339 () Int)

(assert (=> d!1028485 (= lt!1203339 (size!28412 (list!13659 (_2!21722 lt!1202171))))))

(assert (=> d!1028485 (= lt!1203339 (size!28421 (c!606753 (_2!21722 lt!1202171))))))

(assert (=> d!1028485 (= (size!28419 (_2!21722 lt!1202171)) lt!1203339)))

(declare-fun bs!565546 () Bool)

(assert (= bs!565546 d!1028485))

(assert (=> bs!565546 m!3971499))

(assert (=> bs!565546 m!3971499))

(declare-fun m!3975807 () Bool)

(assert (=> bs!565546 m!3975807))

(declare-fun m!3975809 () Bool)

(assert (=> bs!565546 m!3975809))

(assert (=> b!3521266 d!1028485))

(declare-fun d!1028487 () Bool)

(declare-fun lt!1203340 () Int)

(assert (=> d!1028487 (= lt!1203340 (size!28412 (list!13659 lt!1201907)))))

(assert (=> d!1028487 (= lt!1203340 (size!28421 (c!606753 lt!1201907)))))

(assert (=> d!1028487 (= (size!28419 lt!1201907) lt!1203340)))

(declare-fun bs!565547 () Bool)

(assert (= bs!565547 d!1028487))

(assert (=> bs!565547 m!3971501))

(assert (=> bs!565547 m!3971501))

(assert (=> bs!565547 m!3974545))

(declare-fun m!3975811 () Bool)

(assert (=> bs!565547 m!3975811))

(assert (=> b!3521266 d!1028487))

(declare-fun d!1028489 () Bool)

(declare-fun lt!1203341 () Int)

(assert (=> d!1028489 (>= lt!1203341 0)))

(declare-fun e!2180970 () Int)

(assert (=> d!1028489 (= lt!1203341 e!2180970)))

(declare-fun c!607482 () Bool)

(assert (=> d!1028489 (= c!607482 ((_ is Nil!37343) lt!1202314))))

(assert (=> d!1028489 (= (size!28412 lt!1202314) lt!1203341)))

(declare-fun b!3523580 () Bool)

(assert (=> b!3523580 (= e!2180970 0)))

(declare-fun b!3523581 () Bool)

(assert (=> b!3523581 (= e!2180970 (+ 1 (size!28412 (t!281698 lt!1202314))))))

(assert (= (and d!1028489 c!607482) b!3523580))

(assert (= (and d!1028489 (not c!607482)) b!3523581))

(declare-fun m!3975813 () Bool)

(assert (=> b!3523581 m!3975813))

(assert (=> b!3521657 d!1028489))

(assert (=> b!3521657 d!1027241))

(declare-fun d!1028491 () Bool)

(declare-fun lt!1203342 () Int)

(assert (=> d!1028491 (>= lt!1203342 0)))

(declare-fun e!2180971 () Int)

(assert (=> d!1028491 (= lt!1203342 e!2180971)))

(declare-fun c!607483 () Bool)

(assert (=> d!1028491 (= c!607483 ((_ is Nil!37343) lt!1201944))))

(assert (=> d!1028491 (= (size!28412 lt!1201944) lt!1203342)))

(declare-fun b!3523582 () Bool)

(assert (=> b!3523582 (= e!2180971 0)))

(declare-fun b!3523583 () Bool)

(assert (=> b!3523583 (= e!2180971 (+ 1 (size!28412 (t!281698 lt!1201944))))))

(assert (= (and d!1028491 c!607483) b!3523582))

(assert (= (and d!1028491 (not c!607483)) b!3523583))

(declare-fun m!3975815 () Bool)

(assert (=> b!3523583 m!3975815))

(assert (=> b!3521657 d!1028491))

(declare-fun b!3523585 () Bool)

(declare-fun res!1421074 () Bool)

(declare-fun e!2180975 () Bool)

(assert (=> b!3523585 (=> (not res!1421074) (not e!2180975))))

(assert (=> b!3523585 (= res!1421074 (isEmpty!21812 (tail!5490 (tail!5490 lt!1201914))))))

(declare-fun bm!254618 () Bool)

(declare-fun call!254623 () Bool)

(assert (=> bm!254618 (= call!254623 (isEmpty!21812 (tail!5490 lt!1201914)))))

(declare-fun b!3523586 () Bool)

(declare-fun res!1421081 () Bool)

(declare-fun e!2180978 () Bool)

(assert (=> b!3523586 (=> res!1421081 e!2180978)))

(assert (=> b!3523586 (= res!1421081 e!2180975)))

(declare-fun res!1421079 () Bool)

(assert (=> b!3523586 (=> (not res!1421079) (not e!2180975))))

(declare-fun lt!1203343 () Bool)

(assert (=> b!3523586 (= res!1421079 lt!1203343)))

(declare-fun b!3523587 () Bool)

(declare-fun res!1421077 () Bool)

(assert (=> b!3523587 (=> (not res!1421077) (not e!2180975))))

(assert (=> b!3523587 (= res!1421077 (not call!254623))))

(declare-fun b!3523588 () Bool)

(declare-fun e!2180976 () Bool)

(assert (=> b!3523588 (= e!2180978 e!2180976)))

(declare-fun res!1421078 () Bool)

(assert (=> b!3523588 (=> (not res!1421078) (not e!2180976))))

(assert (=> b!3523588 (= res!1421078 (not lt!1203343))))

(declare-fun b!3523589 () Bool)

(declare-fun e!2180977 () Bool)

(assert (=> b!3523589 (= e!2180977 (not (= (head!7385 (tail!5490 lt!1201914)) (c!606752 (derivativeStep!3070 (regex!5476 lt!1201933) (head!7385 lt!1201914))))))))

(declare-fun b!3523590 () Bool)

(declare-fun e!2180972 () Bool)

(declare-fun e!2180973 () Bool)

(assert (=> b!3523590 (= e!2180972 e!2180973)))

(declare-fun c!607485 () Bool)

(assert (=> b!3523590 (= c!607485 ((_ is EmptyLang!10235) (derivativeStep!3070 (regex!5476 lt!1201933) (head!7385 lt!1201914))))))

(declare-fun b!3523591 () Bool)

(declare-fun e!2180974 () Bool)

(assert (=> b!3523591 (= e!2180974 (matchR!4819 (derivativeStep!3070 (derivativeStep!3070 (regex!5476 lt!1201933) (head!7385 lt!1201914)) (head!7385 (tail!5490 lt!1201914))) (tail!5490 (tail!5490 lt!1201914))))))

(declare-fun b!3523592 () Bool)

(assert (=> b!3523592 (= e!2180974 (nullable!3517 (derivativeStep!3070 (regex!5476 lt!1201933) (head!7385 lt!1201914))))))

(declare-fun b!3523584 () Bool)

(declare-fun res!1421076 () Bool)

(assert (=> b!3523584 (=> res!1421076 e!2180977)))

(assert (=> b!3523584 (= res!1421076 (not (isEmpty!21812 (tail!5490 (tail!5490 lt!1201914)))))))

(declare-fun d!1028493 () Bool)

(assert (=> d!1028493 e!2180972))

(declare-fun c!607484 () Bool)

(assert (=> d!1028493 (= c!607484 ((_ is EmptyExpr!10235) (derivativeStep!3070 (regex!5476 lt!1201933) (head!7385 lt!1201914))))))

(assert (=> d!1028493 (= lt!1203343 e!2180974)))

(declare-fun c!607486 () Bool)

(assert (=> d!1028493 (= c!607486 (isEmpty!21812 (tail!5490 lt!1201914)))))

(assert (=> d!1028493 (validRegex!4674 (derivativeStep!3070 (regex!5476 lt!1201933) (head!7385 lt!1201914)))))

(assert (=> d!1028493 (= (matchR!4819 (derivativeStep!3070 (regex!5476 lt!1201933) (head!7385 lt!1201914)) (tail!5490 lt!1201914)) lt!1203343)))

(declare-fun b!3523593 () Bool)

(assert (=> b!3523593 (= e!2180972 (= lt!1203343 call!254623))))

(declare-fun b!3523594 () Bool)

(declare-fun res!1421075 () Bool)

(assert (=> b!3523594 (=> res!1421075 e!2180978)))

(assert (=> b!3523594 (= res!1421075 (not ((_ is ElementMatch!10235) (derivativeStep!3070 (regex!5476 lt!1201933) (head!7385 lt!1201914)))))))

(assert (=> b!3523594 (= e!2180973 e!2180978)))

(declare-fun b!3523595 () Bool)

(assert (=> b!3523595 (= e!2180973 (not lt!1203343))))

(declare-fun b!3523596 () Bool)

(assert (=> b!3523596 (= e!2180975 (= (head!7385 (tail!5490 lt!1201914)) (c!606752 (derivativeStep!3070 (regex!5476 lt!1201933) (head!7385 lt!1201914)))))))

(declare-fun b!3523597 () Bool)

(assert (=> b!3523597 (= e!2180976 e!2180977)))

(declare-fun res!1421080 () Bool)

(assert (=> b!3523597 (=> res!1421080 e!2180977)))

(assert (=> b!3523597 (= res!1421080 call!254623)))

(assert (= (and d!1028493 c!607486) b!3523592))

(assert (= (and d!1028493 (not c!607486)) b!3523591))

(assert (= (and d!1028493 c!607484) b!3523593))

(assert (= (and d!1028493 (not c!607484)) b!3523590))

(assert (= (and b!3523590 c!607485) b!3523595))

(assert (= (and b!3523590 (not c!607485)) b!3523594))

(assert (= (and b!3523594 (not res!1421075)) b!3523586))

(assert (= (and b!3523586 res!1421079) b!3523587))

(assert (= (and b!3523587 res!1421077) b!3523585))

(assert (= (and b!3523585 res!1421074) b!3523596))

(assert (= (and b!3523586 (not res!1421081)) b!3523588))

(assert (= (and b!3523588 res!1421078) b!3523597))

(assert (= (and b!3523597 (not res!1421080)) b!3523584))

(assert (= (and b!3523584 (not res!1421076)) b!3523589))

(assert (= (or b!3523593 b!3523587 b!3523597) bm!254618))

(assert (=> d!1028493 m!3972279))

(assert (=> d!1028493 m!3972281))

(assert (=> d!1028493 m!3972283))

(declare-fun m!3975817 () Bool)

(assert (=> d!1028493 m!3975817))

(assert (=> b!3523584 m!3972279))

(declare-fun m!3975819 () Bool)

(assert (=> b!3523584 m!3975819))

(assert (=> b!3523584 m!3975819))

(declare-fun m!3975821 () Bool)

(assert (=> b!3523584 m!3975821))

(assert (=> bm!254618 m!3972279))

(assert (=> bm!254618 m!3972281))

(assert (=> b!3523591 m!3972279))

(declare-fun m!3975823 () Bool)

(assert (=> b!3523591 m!3975823))

(assert (=> b!3523591 m!3972283))

(assert (=> b!3523591 m!3975823))

(declare-fun m!3975825 () Bool)

(assert (=> b!3523591 m!3975825))

(assert (=> b!3523591 m!3972279))

(assert (=> b!3523591 m!3975819))

(assert (=> b!3523591 m!3975825))

(assert (=> b!3523591 m!3975819))

(declare-fun m!3975827 () Bool)

(assert (=> b!3523591 m!3975827))

(assert (=> b!3523596 m!3972279))

(assert (=> b!3523596 m!3975823))

(assert (=> b!3523592 m!3972283))

(declare-fun m!3975829 () Bool)

(assert (=> b!3523592 m!3975829))

(assert (=> b!3523589 m!3972279))

(assert (=> b!3523589 m!3975823))

(assert (=> b!3523585 m!3972279))

(assert (=> b!3523585 m!3975819))

(assert (=> b!3523585 m!3975819))

(assert (=> b!3523585 m!3975821))

(assert (=> b!3521693 d!1028493))

(declare-fun call!254624 () Regex!10235)

(declare-fun bm!254619 () Bool)

(declare-fun c!607490 () Bool)

(declare-fun c!607489 () Bool)

(assert (=> bm!254619 (= call!254624 (derivativeStep!3070 (ite c!607489 (regOne!20983 (regex!5476 lt!1201933)) (ite c!607490 (reg!10564 (regex!5476 lt!1201933)) (regOne!20982 (regex!5476 lt!1201933)))) (head!7385 lt!1201914)))))

(declare-fun b!3523598 () Bool)

(declare-fun e!2180980 () Regex!10235)

(declare-fun call!254626 () Regex!10235)

(assert (=> b!3523598 (= e!2180980 (Union!10235 (Concat!15941 call!254626 (regTwo!20982 (regex!5476 lt!1201933))) EmptyLang!10235))))

(declare-fun b!3523599 () Bool)

(declare-fun c!607491 () Bool)

(assert (=> b!3523599 (= c!607491 (nullable!3517 (regOne!20982 (regex!5476 lt!1201933))))))

(declare-fun e!2180982 () Regex!10235)

(assert (=> b!3523599 (= e!2180982 e!2180980)))

(declare-fun b!3523600 () Bool)

(declare-fun call!254627 () Regex!10235)

(assert (=> b!3523600 (= e!2180980 (Union!10235 (Concat!15941 call!254626 (regTwo!20982 (regex!5476 lt!1201933))) call!254627))))

(declare-fun b!3523601 () Bool)

(declare-fun e!2180981 () Regex!10235)

(assert (=> b!3523601 (= e!2180981 e!2180982)))

(assert (=> b!3523601 (= c!607490 ((_ is Star!10235) (regex!5476 lt!1201933)))))

(declare-fun d!1028495 () Bool)

(declare-fun lt!1203344 () Regex!10235)

(assert (=> d!1028495 (validRegex!4674 lt!1203344)))

(declare-fun e!2180979 () Regex!10235)

(assert (=> d!1028495 (= lt!1203344 e!2180979)))

(declare-fun c!607487 () Bool)

(assert (=> d!1028495 (= c!607487 (or ((_ is EmptyExpr!10235) (regex!5476 lt!1201933)) ((_ is EmptyLang!10235) (regex!5476 lt!1201933))))))

(assert (=> d!1028495 (validRegex!4674 (regex!5476 lt!1201933))))

(assert (=> d!1028495 (= (derivativeStep!3070 (regex!5476 lt!1201933) (head!7385 lt!1201914)) lt!1203344)))

(declare-fun bm!254620 () Bool)

(declare-fun call!254625 () Regex!10235)

(assert (=> bm!254620 (= call!254625 call!254624)))

(declare-fun b!3523602 () Bool)

(declare-fun e!2180983 () Regex!10235)

(assert (=> b!3523602 (= e!2180979 e!2180983)))

(declare-fun c!607488 () Bool)

(assert (=> b!3523602 (= c!607488 ((_ is ElementMatch!10235) (regex!5476 lt!1201933)))))

(declare-fun b!3523603 () Bool)

(assert (=> b!3523603 (= c!607489 ((_ is Union!10235) (regex!5476 lt!1201933)))))

(assert (=> b!3523603 (= e!2180983 e!2180981)))

(declare-fun b!3523604 () Bool)

(assert (=> b!3523604 (= e!2180982 (Concat!15941 call!254625 (regex!5476 lt!1201933)))))

(declare-fun bm!254621 () Bool)

(assert (=> bm!254621 (= call!254627 (derivativeStep!3070 (ite c!607489 (regTwo!20983 (regex!5476 lt!1201933)) (regTwo!20982 (regex!5476 lt!1201933))) (head!7385 lt!1201914)))))

(declare-fun bm!254622 () Bool)

(assert (=> bm!254622 (= call!254626 call!254625)))

(declare-fun b!3523605 () Bool)

(assert (=> b!3523605 (= e!2180981 (Union!10235 call!254624 call!254627))))

(declare-fun b!3523606 () Bool)

(assert (=> b!3523606 (= e!2180979 EmptyLang!10235)))

(declare-fun b!3523607 () Bool)

(assert (=> b!3523607 (= e!2180983 (ite (= (head!7385 lt!1201914) (c!606752 (regex!5476 lt!1201933))) EmptyExpr!10235 EmptyLang!10235))))

(assert (= (and d!1028495 c!607487) b!3523606))

(assert (= (and d!1028495 (not c!607487)) b!3523602))

(assert (= (and b!3523602 c!607488) b!3523607))

(assert (= (and b!3523602 (not c!607488)) b!3523603))

(assert (= (and b!3523603 c!607489) b!3523605))

(assert (= (and b!3523603 (not c!607489)) b!3523601))

(assert (= (and b!3523601 c!607490) b!3523604))

(assert (= (and b!3523601 (not c!607490)) b!3523599))

(assert (= (and b!3523599 c!607491) b!3523600))

(assert (= (and b!3523599 (not c!607491)) b!3523598))

(assert (= (or b!3523600 b!3523598) bm!254622))

(assert (= (or b!3523604 bm!254622) bm!254620))

(assert (= (or b!3523605 bm!254620) bm!254619))

(assert (= (or b!3523605 b!3523600) bm!254621))

(assert (=> bm!254619 m!3970635))

(declare-fun m!3975831 () Bool)

(assert (=> bm!254619 m!3975831))

(declare-fun m!3975833 () Bool)

(assert (=> b!3523599 m!3975833))

(declare-fun m!3975835 () Bool)

(assert (=> d!1028495 m!3975835))

(assert (=> d!1028495 m!3972277))

(assert (=> bm!254621 m!3970635))

(declare-fun m!3975837 () Bool)

(assert (=> bm!254621 m!3975837))

(assert (=> b!3521693 d!1028495))

(assert (=> b!3521693 d!1027027))

(assert (=> b!3521693 d!1028131))

(assert (=> bm!254338 d!1028109))

(assert (=> b!3520917 d!1027127))

(assert (=> b!3521634 d!1027833))

(assert (=> b!3521634 d!1027835))

(declare-fun d!1028497 () Bool)

(declare-fun lt!1203345 () Bool)

(assert (=> d!1028497 (= lt!1203345 (isEmpty!21812 (list!13659 (_2!21722 lt!1202124))))))

(assert (=> d!1028497 (= lt!1203345 (isEmpty!21813 (c!606753 (_2!21722 lt!1202124))))))

(assert (=> d!1028497 (= (isEmpty!21806 (_2!21722 lt!1202124)) lt!1203345)))

(declare-fun bs!565548 () Bool)

(assert (= bs!565548 d!1028497))

(declare-fun m!3975839 () Bool)

(assert (=> bs!565548 m!3975839))

(assert (=> bs!565548 m!3975839))

(declare-fun m!3975841 () Bool)

(assert (=> bs!565548 m!3975841))

(declare-fun m!3975843 () Bool)

(assert (=> bs!565548 m!3975843))

(assert (=> b!3521149 d!1028497))

(declare-fun d!1028499 () Bool)

(declare-fun lt!1203346 () Bool)

(assert (=> d!1028499 (= lt!1203346 (isEmpty!21812 (list!13659 (_2!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 separatorToken!241)))))))))

(assert (=> d!1028499 (= lt!1203346 (isEmpty!21813 (c!606753 (_2!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 separatorToken!241)))))))))

(assert (=> d!1028499 (= (isEmpty!21806 (_2!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 separatorToken!241))))) lt!1203346)))

(declare-fun bs!565549 () Bool)

(assert (= bs!565549 d!1028499))

(declare-fun m!3975845 () Bool)

(assert (=> bs!565549 m!3975845))

(assert (=> bs!565549 m!3975845))

(declare-fun m!3975847 () Bool)

(assert (=> bs!565549 m!3975847))

(declare-fun m!3975849 () Bool)

(assert (=> bs!565549 m!3975849))

(assert (=> b!3520950 d!1028499))

(declare-fun d!1028501 () Bool)

(declare-fun e!2180986 () Bool)

(assert (=> d!1028501 e!2180986))

(declare-fun res!1421083 () Bool)

(assert (=> d!1028501 (=> (not res!1421083) (not e!2180986))))

(declare-fun e!2180984 () Bool)

(assert (=> d!1028501 (= res!1421083 e!2180984)))

(declare-fun c!607492 () Bool)

(declare-fun lt!1203347 () tuple2!37176)

(assert (=> d!1028501 (= c!607492 (> (size!28413 (_1!21722 lt!1203347)) 0))))

(assert (=> d!1028501 (= lt!1203347 (lexTailRecV2!1086 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 separatorToken!241)) (BalanceConc!22269 Empty!11327) (print!2130 thiss!18206 (singletonSeq!2572 separatorToken!241)) (BalanceConc!22271 Empty!11328)))))

(assert (=> d!1028501 (= (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 separatorToken!241))) lt!1203347)))

(declare-fun b!3523608 () Bool)

(declare-fun res!1421084 () Bool)

(assert (=> b!3523608 (=> (not res!1421084) (not e!2180986))))

(assert (=> b!3523608 (= res!1421084 (= (list!13662 (_1!21722 lt!1203347)) (_1!21726 (lexList!1478 thiss!18206 rules!2135 (list!13659 (print!2130 thiss!18206 (singletonSeq!2572 separatorToken!241)))))))))

(declare-fun b!3523609 () Bool)

(declare-fun e!2180985 () Bool)

(assert (=> b!3523609 (= e!2180984 e!2180985)))

(declare-fun res!1421082 () Bool)

(assert (=> b!3523609 (= res!1421082 (< (size!28419 (_2!21722 lt!1203347)) (size!28419 (print!2130 thiss!18206 (singletonSeq!2572 separatorToken!241)))))))

(assert (=> b!3523609 (=> (not res!1421082) (not e!2180985))))

(declare-fun b!3523610 () Bool)

(assert (=> b!3523610 (= e!2180985 (not (isEmpty!21805 (_1!21722 lt!1203347))))))

(declare-fun b!3523611 () Bool)

(assert (=> b!3523611 (= e!2180986 (= (list!13659 (_2!21722 lt!1203347)) (_2!21726 (lexList!1478 thiss!18206 rules!2135 (list!13659 (print!2130 thiss!18206 (singletonSeq!2572 separatorToken!241)))))))))

(declare-fun b!3523612 () Bool)

(assert (=> b!3523612 (= e!2180984 (= (_2!21722 lt!1203347) (print!2130 thiss!18206 (singletonSeq!2572 separatorToken!241))))))

(assert (= (and d!1028501 c!607492) b!3523609))

(assert (= (and d!1028501 (not c!607492)) b!3523612))

(assert (= (and b!3523609 res!1421082) b!3523610))

(assert (= (and d!1028501 res!1421083) b!3523608))

(assert (= (and b!3523608 res!1421084) b!3523611))

(declare-fun m!3975851 () Bool)

(assert (=> b!3523610 m!3975851))

(declare-fun m!3975853 () Bool)

(assert (=> b!3523611 m!3975853))

(assert (=> b!3523611 m!3970985))

(declare-fun m!3975855 () Bool)

(assert (=> b!3523611 m!3975855))

(assert (=> b!3523611 m!3975855))

(declare-fun m!3975857 () Bool)

(assert (=> b!3523611 m!3975857))

(declare-fun m!3975859 () Bool)

(assert (=> b!3523608 m!3975859))

(assert (=> b!3523608 m!3970985))

(assert (=> b!3523608 m!3975855))

(assert (=> b!3523608 m!3975855))

(assert (=> b!3523608 m!3975857))

(declare-fun m!3975861 () Bool)

(assert (=> d!1028501 m!3975861))

(assert (=> d!1028501 m!3970985))

(assert (=> d!1028501 m!3970985))

(declare-fun m!3975863 () Bool)

(assert (=> d!1028501 m!3975863))

(declare-fun m!3975865 () Bool)

(assert (=> b!3523609 m!3975865))

(assert (=> b!3523609 m!3970985))

(declare-fun m!3975867 () Bool)

(assert (=> b!3523609 m!3975867))

(assert (=> b!3520950 d!1028501))

(declare-fun d!1028503 () Bool)

(declare-fun lt!1203348 () BalanceConc!22268)

(assert (=> d!1028503 (= (list!13659 lt!1203348) (printList!1613 thiss!18206 (list!13662 (singletonSeq!2572 separatorToken!241))))))

(assert (=> d!1028503 (= lt!1203348 (printTailRec!1560 thiss!18206 (singletonSeq!2572 separatorToken!241) 0 (BalanceConc!22269 Empty!11327)))))

(assert (=> d!1028503 (= (print!2130 thiss!18206 (singletonSeq!2572 separatorToken!241)) lt!1203348)))

(declare-fun bs!565550 () Bool)

(assert (= bs!565550 d!1028503))

(declare-fun m!3975869 () Bool)

(assert (=> bs!565550 m!3975869))

(assert (=> bs!565550 m!3970601))

(assert (=> bs!565550 m!3970989))

(assert (=> bs!565550 m!3970989))

(declare-fun m!3975871 () Bool)

(assert (=> bs!565550 m!3975871))

(assert (=> bs!565550 m!3970601))

(declare-fun m!3975873 () Bool)

(assert (=> bs!565550 m!3975873))

(assert (=> b!3520950 d!1028503))

(assert (=> b!3520950 d!1027125))

(declare-fun b!3523613 () Bool)

(declare-fun e!2180989 () Bool)

(declare-fun e!2180988 () Bool)

(assert (=> b!3523613 (= e!2180989 e!2180988)))

(declare-fun c!607493 () Bool)

(assert (=> b!3523613 (= c!607493 ((_ is IntegerValue!17119) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (seqFromList!4006 lt!1201914))))))

(declare-fun b!3523614 () Bool)

(declare-fun e!2180987 () Bool)

(assert (=> b!3523614 (= e!2180987 (inv!15 (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (seqFromList!4006 lt!1201914))))))

(declare-fun d!1028505 () Bool)

(declare-fun c!607494 () Bool)

(assert (=> d!1028505 (= c!607494 ((_ is IntegerValue!17118) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (seqFromList!4006 lt!1201914))))))

(assert (=> d!1028505 (= (inv!21 (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (seqFromList!4006 lt!1201914))) e!2180989)))

(declare-fun b!3523615 () Bool)

(assert (=> b!3523615 (= e!2180988 (inv!17 (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (seqFromList!4006 lt!1201914))))))

(declare-fun b!3523616 () Bool)

(declare-fun res!1421085 () Bool)

(assert (=> b!3523616 (=> res!1421085 e!2180987)))

(assert (=> b!3523616 (= res!1421085 (not ((_ is IntegerValue!17120) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (seqFromList!4006 lt!1201914)))))))

(assert (=> b!3523616 (= e!2180988 e!2180987)))

(declare-fun b!3523617 () Bool)

(assert (=> b!3523617 (= e!2180989 (inv!16 (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (seqFromList!4006 lt!1201914))))))

(assert (= (and d!1028505 c!607494) b!3523617))

(assert (= (and d!1028505 (not c!607494)) b!3523613))

(assert (= (and b!3523613 c!607493) b!3523615))

(assert (= (and b!3523613 (not c!607493)) b!3523616))

(assert (= (and b!3523616 (not res!1421085)) b!3523614))

(declare-fun m!3975875 () Bool)

(assert (=> b!3523614 m!3975875))

(declare-fun m!3975877 () Bool)

(assert (=> b!3523615 m!3975877))

(declare-fun m!3975879 () Bool)

(assert (=> b!3523617 m!3975879))

(assert (=> tb!196631 d!1028505))

(declare-fun b!3523619 () Bool)

(declare-fun res!1421086 () Bool)

(declare-fun e!2180993 () Bool)

(assert (=> b!3523619 (=> (not res!1421086) (not e!2180993))))

(assert (=> b!3523619 (= res!1421086 (isEmpty!21812 (tail!5490 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 (size!28412 Nil!37343) lt!1201914 lt!1201914 (size!28412 lt!1201914))))))))

(declare-fun bm!254623 () Bool)

(declare-fun call!254628 () Bool)

(assert (=> bm!254623 (= call!254628 (isEmpty!21812 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 (size!28412 Nil!37343) lt!1201914 lt!1201914 (size!28412 lt!1201914)))))))

(declare-fun b!3523620 () Bool)

(declare-fun res!1421093 () Bool)

(declare-fun e!2180996 () Bool)

(assert (=> b!3523620 (=> res!1421093 e!2180996)))

(assert (=> b!3523620 (= res!1421093 e!2180993)))

(declare-fun res!1421091 () Bool)

(assert (=> b!3523620 (=> (not res!1421091) (not e!2180993))))

(declare-fun lt!1203349 () Bool)

(assert (=> b!3523620 (= res!1421091 lt!1203349)))

(declare-fun b!3523621 () Bool)

(declare-fun res!1421089 () Bool)

(assert (=> b!3523621 (=> (not res!1421089) (not e!2180993))))

(assert (=> b!3523621 (= res!1421089 (not call!254628))))

(declare-fun b!3523622 () Bool)

(declare-fun e!2180994 () Bool)

(assert (=> b!3523622 (= e!2180996 e!2180994)))

(declare-fun res!1421090 () Bool)

(assert (=> b!3523622 (=> (not res!1421090) (not e!2180994))))

(assert (=> b!3523622 (= res!1421090 (not lt!1203349))))

(declare-fun b!3523623 () Bool)

(declare-fun e!2180995 () Bool)

(assert (=> b!3523623 (= e!2180995 (not (= (head!7385 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 (size!28412 Nil!37343) lt!1201914 lt!1201914 (size!28412 lt!1201914)))) (c!606752 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(declare-fun b!3523624 () Bool)

(declare-fun e!2180990 () Bool)

(declare-fun e!2180991 () Bool)

(assert (=> b!3523624 (= e!2180990 e!2180991)))

(declare-fun c!607496 () Bool)

(assert (=> b!3523624 (= c!607496 ((_ is EmptyLang!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(declare-fun b!3523625 () Bool)

(declare-fun e!2180992 () Bool)

(assert (=> b!3523625 (= e!2180992 (matchR!4819 (derivativeStep!3070 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) (head!7385 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 (size!28412 Nil!37343) lt!1201914 lt!1201914 (size!28412 lt!1201914))))) (tail!5490 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 (size!28412 Nil!37343) lt!1201914 lt!1201914 (size!28412 lt!1201914))))))))

(declare-fun b!3523626 () Bool)

(assert (=> b!3523626 (= e!2180992 (nullable!3517 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(declare-fun b!3523618 () Bool)

(declare-fun res!1421088 () Bool)

(assert (=> b!3523618 (=> res!1421088 e!2180995)))

(assert (=> b!3523618 (= res!1421088 (not (isEmpty!21812 (tail!5490 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 (size!28412 Nil!37343) lt!1201914 lt!1201914 (size!28412 lt!1201914)))))))))

(declare-fun d!1028507 () Bool)

(assert (=> d!1028507 e!2180990))

(declare-fun c!607495 () Bool)

(assert (=> d!1028507 (= c!607495 ((_ is EmptyExpr!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(assert (=> d!1028507 (= lt!1203349 e!2180992)))

(declare-fun c!607497 () Bool)

(assert (=> d!1028507 (= c!607497 (isEmpty!21812 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 (size!28412 Nil!37343) lt!1201914 lt!1201914 (size!28412 lt!1201914)))))))

(assert (=> d!1028507 (validRegex!4674 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))

(assert (=> d!1028507 (= (matchR!4819 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 (size!28412 Nil!37343) lt!1201914 lt!1201914 (size!28412 lt!1201914)))) lt!1203349)))

(declare-fun b!3523627 () Bool)

(assert (=> b!3523627 (= e!2180990 (= lt!1203349 call!254628))))

(declare-fun b!3523628 () Bool)

(declare-fun res!1421087 () Bool)

(assert (=> b!3523628 (=> res!1421087 e!2180996)))

(assert (=> b!3523628 (= res!1421087 (not ((_ is ElementMatch!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(assert (=> b!3523628 (= e!2180991 e!2180996)))

(declare-fun b!3523629 () Bool)

(assert (=> b!3523629 (= e!2180991 (not lt!1203349))))

(declare-fun b!3523630 () Bool)

(assert (=> b!3523630 (= e!2180993 (= (head!7385 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 (size!28412 Nil!37343) lt!1201914 lt!1201914 (size!28412 lt!1201914)))) (c!606752 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(declare-fun b!3523631 () Bool)

(assert (=> b!3523631 (= e!2180994 e!2180995)))

(declare-fun res!1421092 () Bool)

(assert (=> b!3523631 (=> res!1421092 e!2180995)))

(assert (=> b!3523631 (= res!1421092 call!254628)))

(assert (= (and d!1028507 c!607497) b!3523626))

(assert (= (and d!1028507 (not c!607497)) b!3523625))

(assert (= (and d!1028507 c!607495) b!3523627))

(assert (= (and d!1028507 (not c!607495)) b!3523624))

(assert (= (and b!3523624 c!607496) b!3523629))

(assert (= (and b!3523624 (not c!607496)) b!3523628))

(assert (= (and b!3523628 (not res!1421087)) b!3523620))

(assert (= (and b!3523620 res!1421091) b!3523621))

(assert (= (and b!3523621 res!1421089) b!3523619))

(assert (= (and b!3523619 res!1421086) b!3523630))

(assert (= (and b!3523620 (not res!1421093)) b!3523622))

(assert (= (and b!3523622 res!1421090) b!3523631))

(assert (= (and b!3523631 (not res!1421092)) b!3523618))

(assert (= (and b!3523618 (not res!1421088)) b!3523623))

(assert (= (or b!3523627 b!3523621 b!3523631) bm!254623))

(assert (=> d!1028507 m!3971631))

(assert (=> d!1028507 m!3970671))

(declare-fun m!3975881 () Bool)

(assert (=> b!3523618 m!3975881))

(assert (=> b!3523618 m!3975881))

(declare-fun m!3975883 () Bool)

(assert (=> b!3523618 m!3975883))

(assert (=> bm!254623 m!3971631))

(declare-fun m!3975885 () Bool)

(assert (=> b!3523625 m!3975885))

(assert (=> b!3523625 m!3975885))

(declare-fun m!3975887 () Bool)

(assert (=> b!3523625 m!3975887))

(assert (=> b!3523625 m!3975881))

(assert (=> b!3523625 m!3975887))

(assert (=> b!3523625 m!3975881))

(declare-fun m!3975889 () Bool)

(assert (=> b!3523625 m!3975889))

(assert (=> b!3523630 m!3975885))

(assert (=> b!3523626 m!3974767))

(assert (=> b!3523623 m!3975885))

(assert (=> b!3523619 m!3975881))

(assert (=> b!3523619 m!3975881))

(assert (=> b!3523619 m!3975883))

(assert (=> b!3521325 d!1028507))

(declare-fun bm!254624 () Bool)

(declare-fun call!254632 () Regex!10235)

(declare-fun call!254636 () C!20656)

(assert (=> bm!254624 (= call!254632 (derivativeStep!3070 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) call!254636))))

(declare-fun d!1028509 () Bool)

(declare-fun e!2180998 () Bool)

(assert (=> d!1028509 e!2180998))

(declare-fun res!1421094 () Bool)

(assert (=> d!1028509 (=> (not res!1421094) (not e!2180998))))

(declare-fun lt!1203370 () tuple2!37186)

(assert (=> d!1028509 (= res!1421094 (= (++!9253 (_1!21727 lt!1203370) (_2!21727 lt!1203370)) lt!1201914))))

(declare-fun e!2181002 () tuple2!37186)

(assert (=> d!1028509 (= lt!1203370 e!2181002)))

(declare-fun c!607503 () Bool)

(assert (=> d!1028509 (= c!607503 (lostCause!937 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(declare-fun lt!1203350 () Unit!52994)

(declare-fun Unit!53014 () Unit!52994)

(assert (=> d!1028509 (= lt!1203350 Unit!53014)))

(assert (=> d!1028509 (= (getSuffix!1505 lt!1201914 Nil!37343) lt!1201914)))

(declare-fun lt!1203374 () Unit!52994)

(declare-fun lt!1203361 () Unit!52994)

(assert (=> d!1028509 (= lt!1203374 lt!1203361)))

(declare-fun lt!1203371 () List!37467)

(assert (=> d!1028509 (= lt!1201914 lt!1203371)))

(assert (=> d!1028509 (= lt!1203361 (lemmaSamePrefixThenSameSuffix!1287 Nil!37343 lt!1201914 Nil!37343 lt!1203371 lt!1201914))))

(assert (=> d!1028509 (= lt!1203371 (getSuffix!1505 lt!1201914 Nil!37343))))

(declare-fun lt!1203375 () Unit!52994)

(declare-fun lt!1203356 () Unit!52994)

(assert (=> d!1028509 (= lt!1203375 lt!1203356)))

(assert (=> d!1028509 (isPrefix!2874 Nil!37343 (++!9253 Nil!37343 lt!1201914))))

(assert (=> d!1028509 (= lt!1203356 (lemmaConcatTwoListThenFirstIsPrefix!1821 Nil!37343 lt!1201914))))

(assert (=> d!1028509 (validRegex!4674 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))

(assert (=> d!1028509 (= (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 (size!28412 Nil!37343) lt!1201914 lt!1201914 (size!28412 lt!1201914)) lt!1203370)))

(declare-fun b!3523632 () Bool)

(declare-fun e!2181000 () tuple2!37186)

(assert (=> b!3523632 (= e!2181000 (tuple2!37187 Nil!37343 lt!1201914))))

(declare-fun b!3523633 () Bool)

(assert (=> b!3523633 (= e!2181002 (tuple2!37187 Nil!37343 lt!1201914))))

(declare-fun b!3523634 () Bool)

(declare-fun e!2180997 () Unit!52994)

(declare-fun Unit!53015 () Unit!52994)

(assert (=> b!3523634 (= e!2180997 Unit!53015)))

(declare-fun bm!254625 () Bool)

(declare-fun call!254633 () List!37467)

(assert (=> bm!254625 (= call!254633 (tail!5490 lt!1201914))))

(declare-fun b!3523635 () Bool)

(declare-fun e!2181001 () tuple2!37186)

(declare-fun e!2181003 () tuple2!37186)

(assert (=> b!3523635 (= e!2181001 e!2181003)))

(declare-fun lt!1203359 () tuple2!37186)

(declare-fun call!254635 () tuple2!37186)

(assert (=> b!3523635 (= lt!1203359 call!254635)))

(declare-fun c!607499 () Bool)

(assert (=> b!3523635 (= c!607499 (isEmpty!21812 (_1!21727 lt!1203359)))))

(declare-fun b!3523636 () Bool)

(declare-fun c!607502 () Bool)

(declare-fun call!254629 () Bool)

(assert (=> b!3523636 (= c!607502 call!254629)))

(declare-fun lt!1203357 () Unit!52994)

(declare-fun lt!1203367 () Unit!52994)

(assert (=> b!3523636 (= lt!1203357 lt!1203367)))

(assert (=> b!3523636 (= lt!1201914 Nil!37343)))

(declare-fun call!254631 () Unit!52994)

(assert (=> b!3523636 (= lt!1203367 call!254631)))

(declare-fun lt!1203351 () Unit!52994)

(declare-fun lt!1203368 () Unit!52994)

(assert (=> b!3523636 (= lt!1203351 lt!1203368)))

(declare-fun call!254634 () Bool)

(assert (=> b!3523636 call!254634))

(declare-fun call!254630 () Unit!52994)

(assert (=> b!3523636 (= lt!1203368 call!254630)))

(declare-fun e!2181004 () tuple2!37186)

(assert (=> b!3523636 (= e!2181004 e!2181000)))

(declare-fun bm!254626 () Bool)

(assert (=> bm!254626 (= call!254636 (head!7385 lt!1201914))))

(declare-fun bm!254627 () Bool)

(assert (=> bm!254627 (= call!254629 (nullable!3517 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(declare-fun b!3523637 () Bool)

(assert (=> b!3523637 (= e!2181002 e!2181004)))

(declare-fun c!607498 () Bool)

(assert (=> b!3523637 (= c!607498 (= (size!28412 Nil!37343) (size!28412 lt!1201914)))))

(declare-fun b!3523638 () Bool)

(assert (=> b!3523638 (= e!2181000 (tuple2!37187 Nil!37343 Nil!37343))))

(declare-fun b!3523639 () Bool)

(declare-fun e!2180999 () Bool)

(assert (=> b!3523639 (= e!2180999 (>= (size!28412 (_1!21727 lt!1203370)) (size!28412 Nil!37343)))))

(declare-fun b!3523640 () Bool)

(declare-fun c!607501 () Bool)

(assert (=> b!3523640 (= c!607501 call!254629)))

(declare-fun lt!1203360 () Unit!52994)

(declare-fun lt!1203373 () Unit!52994)

(assert (=> b!3523640 (= lt!1203360 lt!1203373)))

(declare-fun lt!1203366 () C!20656)

(declare-fun lt!1203362 () List!37467)

(assert (=> b!3523640 (= (++!9253 (++!9253 Nil!37343 (Cons!37343 lt!1203366 Nil!37343)) lt!1203362) lt!1201914)))

(assert (=> b!3523640 (= lt!1203373 (lemmaMoveElementToOtherListKeepsConcatEq!1175 Nil!37343 lt!1203366 lt!1203362 lt!1201914))))

(assert (=> b!3523640 (= lt!1203362 (tail!5490 lt!1201914))))

(assert (=> b!3523640 (= lt!1203366 (head!7385 lt!1201914))))

(declare-fun lt!1203363 () Unit!52994)

(declare-fun lt!1203377 () Unit!52994)

(assert (=> b!3523640 (= lt!1203363 lt!1203377)))

(assert (=> b!3523640 (isPrefix!2874 (++!9253 Nil!37343 (Cons!37343 (head!7385 (getSuffix!1505 lt!1201914 Nil!37343)) Nil!37343)) lt!1201914)))

(assert (=> b!3523640 (= lt!1203377 (lemmaAddHeadSuffixToPrefixStillPrefix!563 Nil!37343 lt!1201914))))

(declare-fun lt!1203369 () Unit!52994)

(declare-fun lt!1203358 () Unit!52994)

(assert (=> b!3523640 (= lt!1203369 lt!1203358)))

(assert (=> b!3523640 (= lt!1203358 (lemmaAddHeadSuffixToPrefixStillPrefix!563 Nil!37343 lt!1201914))))

(declare-fun lt!1203364 () List!37467)

(assert (=> b!3523640 (= lt!1203364 (++!9253 Nil!37343 (Cons!37343 (head!7385 lt!1201914) Nil!37343)))))

(declare-fun lt!1203372 () Unit!52994)

(assert (=> b!3523640 (= lt!1203372 e!2180997)))

(declare-fun c!607500 () Bool)

(assert (=> b!3523640 (= c!607500 (= (size!28412 Nil!37343) (size!28412 lt!1201914)))))

(declare-fun lt!1203376 () Unit!52994)

(declare-fun lt!1203353 () Unit!52994)

(assert (=> b!3523640 (= lt!1203376 lt!1203353)))

(assert (=> b!3523640 (<= (size!28412 Nil!37343) (size!28412 lt!1201914))))

(assert (=> b!3523640 (= lt!1203353 (lemmaIsPrefixThenSmallerEqSize!371 Nil!37343 lt!1201914))))

(assert (=> b!3523640 (= e!2181004 e!2181001)))

(declare-fun bm!254628 () Bool)

(assert (=> bm!254628 (= call!254635 (findLongestMatchInner!939 call!254632 lt!1203364 (+ (size!28412 Nil!37343) 1) call!254633 lt!1201914 (size!28412 lt!1201914)))))

(declare-fun bm!254629 () Bool)

(assert (=> bm!254629 (= call!254630 (lemmaIsPrefixRefl!1833 lt!1201914 lt!1201914))))

(declare-fun b!3523641 () Bool)

(assert (=> b!3523641 (= e!2181003 lt!1203359)))

(declare-fun b!3523642 () Bool)

(assert (=> b!3523642 (= e!2181003 (tuple2!37187 Nil!37343 lt!1201914))))

(declare-fun bm!254630 () Bool)

(assert (=> bm!254630 (= call!254631 (lemmaIsPrefixSameLengthThenSameList!570 lt!1201914 Nil!37343 lt!1201914))))

(declare-fun bm!254631 () Bool)

(assert (=> bm!254631 (= call!254634 (isPrefix!2874 lt!1201914 lt!1201914))))

(declare-fun b!3523643 () Bool)

(assert (=> b!3523643 (= e!2180998 e!2180999)))

(declare-fun res!1421095 () Bool)

(assert (=> b!3523643 (=> res!1421095 e!2180999)))

(assert (=> b!3523643 (= res!1421095 (isEmpty!21812 (_1!21727 lt!1203370)))))

(declare-fun b!3523644 () Bool)

(declare-fun Unit!53016 () Unit!52994)

(assert (=> b!3523644 (= e!2180997 Unit!53016)))

(declare-fun lt!1203352 () Unit!52994)

(assert (=> b!3523644 (= lt!1203352 call!254630)))

(assert (=> b!3523644 call!254634))

(declare-fun lt!1203355 () Unit!52994)

(assert (=> b!3523644 (= lt!1203355 lt!1203352)))

(declare-fun lt!1203365 () Unit!52994)

(assert (=> b!3523644 (= lt!1203365 call!254631)))

(assert (=> b!3523644 (= lt!1201914 Nil!37343)))

(declare-fun lt!1203354 () Unit!52994)

(assert (=> b!3523644 (= lt!1203354 lt!1203365)))

(assert (=> b!3523644 false))

(declare-fun b!3523645 () Bool)

(assert (=> b!3523645 (= e!2181001 call!254635)))

(assert (= (and d!1028509 c!607503) b!3523633))

(assert (= (and d!1028509 (not c!607503)) b!3523637))

(assert (= (and b!3523637 c!607498) b!3523636))

(assert (= (and b!3523637 (not c!607498)) b!3523640))

(assert (= (and b!3523636 c!607502) b!3523638))

(assert (= (and b!3523636 (not c!607502)) b!3523632))

(assert (= (and b!3523640 c!607500) b!3523644))

(assert (= (and b!3523640 (not c!607500)) b!3523634))

(assert (= (and b!3523640 c!607501) b!3523635))

(assert (= (and b!3523640 (not c!607501)) b!3523645))

(assert (= (and b!3523635 c!607499) b!3523642))

(assert (= (and b!3523635 (not c!607499)) b!3523641))

(assert (= (or b!3523635 b!3523645) bm!254626))

(assert (= (or b!3523635 b!3523645) bm!254625))

(assert (= (or b!3523635 b!3523645) bm!254624))

(assert (= (or b!3523635 b!3523645) bm!254628))

(assert (= (or b!3523636 b!3523644) bm!254629))

(assert (= (or b!3523636 b!3523644) bm!254631))

(assert (= (or b!3523636 b!3523644) bm!254630))

(assert (= (or b!3523636 b!3523640) bm!254627))

(assert (= (and d!1028509 res!1421094) b!3523643))

(assert (= (and b!3523643 (not res!1421095)) b!3523639))

(declare-fun m!3975891 () Bool)

(assert (=> b!3523639 m!3975891))

(assert (=> b!3523639 m!3971607))

(assert (=> bm!254626 m!3970635))

(declare-fun m!3975893 () Bool)

(assert (=> d!1028509 m!3975893))

(assert (=> d!1028509 m!3970671))

(declare-fun m!3975895 () Bool)

(assert (=> d!1028509 m!3975895))

(declare-fun m!3975897 () Bool)

(assert (=> d!1028509 m!3975897))

(declare-fun m!3975899 () Bool)

(assert (=> d!1028509 m!3975899))

(declare-fun m!3975901 () Bool)

(assert (=> d!1028509 m!3975901))

(declare-fun m!3975903 () Bool)

(assert (=> d!1028509 m!3975903))

(assert (=> d!1028509 m!3975903))

(declare-fun m!3975905 () Bool)

(assert (=> d!1028509 m!3975905))

(declare-fun m!3975907 () Bool)

(assert (=> bm!254629 m!3975907))

(declare-fun m!3975909 () Bool)

(assert (=> b!3523640 m!3975909))

(declare-fun m!3975911 () Bool)

(assert (=> b!3523640 m!3975911))

(declare-fun m!3975913 () Bool)

(assert (=> b!3523640 m!3975913))

(assert (=> b!3523640 m!3971607))

(declare-fun m!3975915 () Bool)

(assert (=> b!3523640 m!3975915))

(assert (=> b!3523640 m!3970651))

(assert (=> b!3523640 m!3975897))

(declare-fun m!3975917 () Bool)

(assert (=> b!3523640 m!3975917))

(assert (=> b!3523640 m!3975911))

(declare-fun m!3975919 () Bool)

(assert (=> b!3523640 m!3975919))

(assert (=> b!3523640 m!3975897))

(declare-fun m!3975921 () Bool)

(assert (=> b!3523640 m!3975921))

(declare-fun m!3975923 () Bool)

(assert (=> b!3523640 m!3975923))

(assert (=> b!3523640 m!3972279))

(assert (=> b!3523640 m!3970635))

(declare-fun m!3975925 () Bool)

(assert (=> b!3523640 m!3975925))

(assert (=> b!3523640 m!3975921))

(assert (=> bm!254625 m!3972279))

(declare-fun m!3975927 () Bool)

(assert (=> bm!254630 m!3975927))

(assert (=> bm!254628 m!3970651))

(declare-fun m!3975929 () Bool)

(assert (=> bm!254628 m!3975929))

(declare-fun m!3975931 () Bool)

(assert (=> bm!254631 m!3975931))

(declare-fun m!3975933 () Bool)

(assert (=> b!3523643 m!3975933))

(assert (=> bm!254627 m!3974767))

(declare-fun m!3975935 () Bool)

(assert (=> b!3523635 m!3975935))

(declare-fun m!3975937 () Bool)

(assert (=> bm!254624 m!3975937))

(assert (=> b!3521325 d!1028509))

(assert (=> b!3521325 d!1028051))

(assert (=> b!3521325 d!1027241))

(declare-fun d!1028511 () Bool)

(declare-fun lt!1203378 () Int)

(assert (=> d!1028511 (= lt!1203378 (size!28417 (list!13662 lt!1201920)))))

(assert (=> d!1028511 (= lt!1203378 (size!28418 (c!606754 lt!1201920)))))

(assert (=> d!1028511 (= (size!28413 lt!1201920) lt!1203378)))

(declare-fun bs!565551 () Bool)

(assert (= bs!565551 d!1028511))

(assert (=> bs!565551 m!3972077))

(assert (=> bs!565551 m!3972077))

(declare-fun m!3975939 () Bool)

(assert (=> bs!565551 m!3975939))

(declare-fun m!3975941 () Bool)

(assert (=> bs!565551 m!3975941))

(assert (=> b!3521569 d!1028511))

(declare-fun d!1028513 () Bool)

(declare-fun c!607504 () Bool)

(assert (=> d!1028513 (= c!607504 ((_ is Nil!37343) lt!1202314))))

(declare-fun e!2181005 () (InoxSet C!20656))

(assert (=> d!1028513 (= (content!5263 lt!1202314) e!2181005)))

(declare-fun b!3523646 () Bool)

(assert (=> b!3523646 (= e!2181005 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3523647 () Bool)

(assert (=> b!3523647 (= e!2181005 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 lt!1202314) true) (content!5263 (t!281698 lt!1202314))))))

(assert (= (and d!1028513 c!607504) b!3523646))

(assert (= (and d!1028513 (not c!607504)) b!3523647))

(declare-fun m!3975943 () Bool)

(assert (=> b!3523647 m!3975943))

(declare-fun m!3975945 () Bool)

(assert (=> b!3523647 m!3975945))

(assert (=> d!1027301 d!1028513))

(declare-fun d!1028515 () Bool)

(declare-fun c!607505 () Bool)

(assert (=> d!1028515 (= c!607505 ((_ is Nil!37343) lt!1201914))))

(declare-fun e!2181006 () (InoxSet C!20656))

(assert (=> d!1028515 (= (content!5263 lt!1201914) e!2181006)))

(declare-fun b!3523648 () Bool)

(assert (=> b!3523648 (= e!2181006 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3523649 () Bool)

(assert (=> b!3523649 (= e!2181006 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 lt!1201914) true) (content!5263 (t!281698 lt!1201914))))))

(assert (= (and d!1028515 c!607505) b!3523648))

(assert (= (and d!1028515 (not c!607505)) b!3523649))

(declare-fun m!3975947 () Bool)

(assert (=> b!3523649 m!3975947))

(declare-fun m!3975949 () Bool)

(assert (=> b!3523649 m!3975949))

(assert (=> d!1027301 d!1028515))

(declare-fun d!1028517 () Bool)

(declare-fun c!607506 () Bool)

(assert (=> d!1028517 (= c!607506 ((_ is Nil!37343) lt!1201944))))

(declare-fun e!2181007 () (InoxSet C!20656))

(assert (=> d!1028517 (= (content!5263 lt!1201944) e!2181007)))

(declare-fun b!3523650 () Bool)

(assert (=> b!3523650 (= e!2181007 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3523651 () Bool)

(assert (=> b!3523651 (= e!2181007 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 lt!1201944) true) (content!5263 (t!281698 lt!1201944))))))

(assert (= (and d!1028517 c!607506) b!3523650))

(assert (= (and d!1028517 (not c!607506)) b!3523651))

(declare-fun m!3975951 () Bool)

(assert (=> b!3523651 m!3975951))

(declare-fun m!3975953 () Bool)

(assert (=> b!3523651 m!3975953))

(assert (=> d!1027301 d!1028517))

(declare-fun d!1028519 () Bool)

(declare-fun lt!1203379 () Int)

(assert (=> d!1028519 (>= lt!1203379 0)))

(declare-fun e!2181008 () Int)

(assert (=> d!1028519 (= lt!1203379 e!2181008)))

(declare-fun c!607507 () Bool)

(assert (=> d!1028519 (= c!607507 ((_ is Nil!37343) lt!1202316))))

(assert (=> d!1028519 (= (size!28412 lt!1202316) lt!1203379)))

(declare-fun b!3523652 () Bool)

(assert (=> b!3523652 (= e!2181008 0)))

(declare-fun b!3523653 () Bool)

(assert (=> b!3523653 (= e!2181008 (+ 1 (size!28412 (t!281698 lt!1202316))))))

(assert (= (and d!1028519 c!607507) b!3523652))

(assert (= (and d!1028519 (not c!607507)) b!3523653))

(declare-fun m!3975955 () Bool)

(assert (=> b!3523653 m!3975955))

(assert (=> b!3521669 d!1028519))

(assert (=> b!3521669 d!1028491))

(declare-fun d!1028521 () Bool)

(declare-fun lt!1203380 () Int)

(assert (=> d!1028521 (>= lt!1203380 0)))

(declare-fun e!2181009 () Int)

(assert (=> d!1028521 (= lt!1203380 e!2181009)))

(declare-fun c!607508 () Bool)

(assert (=> d!1028521 (= c!607508 ((_ is Nil!37343) lt!1201939))))

(assert (=> d!1028521 (= (size!28412 lt!1201939) lt!1203380)))

(declare-fun b!3523654 () Bool)

(assert (=> b!3523654 (= e!2181009 0)))

(declare-fun b!3523655 () Bool)

(assert (=> b!3523655 (= e!2181009 (+ 1 (size!28412 (t!281698 lt!1201939))))))

(assert (= (and d!1028521 c!607508) b!3523654))

(assert (= (and d!1028521 (not c!607508)) b!3523655))

(declare-fun m!3975957 () Bool)

(assert (=> b!3523655 m!3975957))

(assert (=> b!3521669 d!1028521))

(declare-fun d!1028523 () Bool)

(assert (=> d!1028523 (= (isEmpty!21815 lt!1202217) (not ((_ is Some!7613) lt!1202217)))))

(assert (=> d!1027133 d!1028523))

(declare-fun d!1028525 () Bool)

(assert (=> d!1028525 (= (isEmpty!21812 (_1!21727 lt!1202220)) ((_ is Nil!37343) (_1!21727 lt!1202220)))))

(assert (=> d!1027133 d!1028525))

(declare-fun d!1028527 () Bool)

(declare-fun lt!1203384 () tuple2!37186)

(assert (=> d!1028527 (= (++!9253 (_1!21727 lt!1203384) (_2!21727 lt!1203384)) lt!1201914)))

(assert (=> d!1028527 (= lt!1203384 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 0 lt!1201914 lt!1201914 (sizeTr!216 lt!1201914 0)))))

(declare-fun lt!1203382 () Unit!52994)

(declare-fun lt!1203383 () Unit!52994)

(assert (=> d!1028527 (= lt!1203382 lt!1203383)))

(declare-fun lt!1203381 () List!37467)

(declare-fun lt!1203386 () Int)

(assert (=> d!1028527 (= (sizeTr!216 lt!1203381 lt!1203386) (+ (size!28412 lt!1203381) lt!1203386))))

(assert (=> d!1028527 (= lt!1203383 (lemmaSizeTrEqualsSize!215 lt!1203381 lt!1203386))))

(assert (=> d!1028527 (= lt!1203386 0)))

(assert (=> d!1028527 (= lt!1203381 Nil!37343)))

(declare-fun lt!1203387 () Unit!52994)

(declare-fun lt!1203388 () Unit!52994)

(assert (=> d!1028527 (= lt!1203387 lt!1203388)))

(declare-fun lt!1203385 () Int)

(assert (=> d!1028527 (= (sizeTr!216 lt!1201914 lt!1203385) (+ (size!28412 lt!1201914) lt!1203385))))

(assert (=> d!1028527 (= lt!1203388 (lemmaSizeTrEqualsSize!215 lt!1201914 lt!1203385))))

(assert (=> d!1028527 (= lt!1203385 0)))

(assert (=> d!1028527 (validRegex!4674 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))

(assert (=> d!1028527 (= (findLongestMatch!854 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) lt!1201914) lt!1203384)))

(declare-fun bs!565552 () Bool)

(assert (= bs!565552 d!1028527))

(declare-fun m!3975959 () Bool)

(assert (=> bs!565552 m!3975959))

(declare-fun m!3975961 () Bool)

(assert (=> bs!565552 m!3975961))

(assert (=> bs!565552 m!3970671))

(declare-fun m!3975963 () Bool)

(assert (=> bs!565552 m!3975963))

(declare-fun m!3975965 () Bool)

(assert (=> bs!565552 m!3975965))

(declare-fun m!3975967 () Bool)

(assert (=> bs!565552 m!3975967))

(declare-fun m!3975969 () Bool)

(assert (=> bs!565552 m!3975969))

(declare-fun m!3975971 () Bool)

(assert (=> bs!565552 m!3975971))

(assert (=> bs!565552 m!3975967))

(declare-fun m!3975973 () Bool)

(assert (=> bs!565552 m!3975973))

(assert (=> bs!565552 m!3970651))

(assert (=> d!1027133 d!1028527))

(declare-fun d!1028529 () Bool)

(declare-fun res!1421096 () Bool)

(declare-fun e!2181010 () Bool)

(assert (=> d!1028529 (=> (not res!1421096) (not e!2181010))))

(assert (=> d!1028529 (= res!1421096 (validRegex!4674 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(assert (=> d!1028529 (= (ruleValid!1772 thiss!18206 (rule!8122 (h!42765 (t!281700 tokens!494)))) e!2181010)))

(declare-fun b!3523656 () Bool)

(declare-fun res!1421097 () Bool)

(assert (=> b!3523656 (=> (not res!1421097) (not e!2181010))))

(assert (=> b!3523656 (= res!1421097 (not (nullable!3517 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(declare-fun b!3523657 () Bool)

(assert (=> b!3523657 (= e!2181010 (not (= (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494)))) (String!41865 ""))))))

(assert (= (and d!1028529 res!1421096) b!3523656))

(assert (= (and b!3523656 res!1421097) b!3523657))

(assert (=> d!1028529 m!3970671))

(assert (=> b!3523656 m!3974767))

(assert (=> d!1027133 d!1028529))

(declare-fun d!1028531 () Bool)

(assert (=> d!1028531 (= (isEmpty!21812 (originalCharacters!6190 separatorToken!241)) ((_ is Nil!37343) (originalCharacters!6190 separatorToken!241)))))

(assert (=> d!1027331 d!1028531))

(declare-fun d!1028533 () Bool)

(declare-fun c!607509 () Bool)

(assert (=> d!1028533 (= c!607509 ((_ is Nil!37343) lt!1202316))))

(declare-fun e!2181011 () (InoxSet C!20656))

(assert (=> d!1028533 (= (content!5263 lt!1202316) e!2181011)))

(declare-fun b!3523658 () Bool)

(assert (=> b!3523658 (= e!2181011 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3523659 () Bool)

(assert (=> b!3523659 (= e!2181011 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 lt!1202316) true) (content!5263 (t!281698 lt!1202316))))))

(assert (= (and d!1028533 c!607509) b!3523658))

(assert (= (and d!1028533 (not c!607509)) b!3523659))

(declare-fun m!3975975 () Bool)

(assert (=> b!3523659 m!3975975))

(declare-fun m!3975977 () Bool)

(assert (=> b!3523659 m!3975977))

(assert (=> d!1027311 d!1028533))

(assert (=> d!1027311 d!1028517))

(assert (=> d!1027311 d!1027831))

(declare-fun d!1028535 () Bool)

(assert (=> d!1028535 (= (isEmpty!21812 (list!13659 (_2!21722 lt!1201946))) ((_ is Nil!37343) (list!13659 (_2!21722 lt!1201946))))))

(assert (=> d!1026983 d!1028535))

(declare-fun d!1028537 () Bool)

(assert (=> d!1028537 (= (list!13659 (_2!21722 lt!1201946)) (list!13663 (c!606753 (_2!21722 lt!1201946))))))

(declare-fun bs!565553 () Bool)

(assert (= bs!565553 d!1028537))

(declare-fun m!3975979 () Bool)

(assert (=> bs!565553 m!3975979))

(assert (=> d!1026983 d!1028537))

(declare-fun d!1028539 () Bool)

(declare-fun lt!1203389 () Bool)

(assert (=> d!1028539 (= lt!1203389 (isEmpty!21812 (list!13663 (c!606753 (_2!21722 lt!1201946)))))))

(assert (=> d!1028539 (= lt!1203389 (= (size!28421 (c!606753 (_2!21722 lt!1201946))) 0))))

(assert (=> d!1028539 (= (isEmpty!21813 (c!606753 (_2!21722 lt!1201946))) lt!1203389)))

(declare-fun bs!565554 () Bool)

(assert (= bs!565554 d!1028539))

(assert (=> bs!565554 m!3975979))

(assert (=> bs!565554 m!3975979))

(declare-fun m!3975981 () Bool)

(assert (=> bs!565554 m!3975981))

(declare-fun m!3975983 () Bool)

(assert (=> bs!565554 m!3975983))

(assert (=> d!1026983 d!1028539))

(declare-fun b!3523661 () Bool)

(declare-fun res!1421098 () Bool)

(declare-fun e!2181015 () Bool)

(assert (=> b!3523661 (=> (not res!1421098) (not e!2181015))))

(assert (=> b!3523661 (= res!1421098 (isEmpty!21812 (tail!5490 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070)))))))))

(declare-fun bm!254632 () Bool)

(declare-fun call!254637 () Bool)

(assert (=> bm!254632 (= call!254637 (isEmpty!21812 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070))))))))

(declare-fun b!3523662 () Bool)

(declare-fun res!1421105 () Bool)

(declare-fun e!2181018 () Bool)

(assert (=> b!3523662 (=> res!1421105 e!2181018)))

(assert (=> b!3523662 (= res!1421105 e!2181015)))

(declare-fun res!1421103 () Bool)

(assert (=> b!3523662 (=> (not res!1421103) (not e!2181015))))

(declare-fun lt!1203390 () Bool)

(assert (=> b!3523662 (= res!1421103 lt!1203390)))

(declare-fun b!3523663 () Bool)

(declare-fun res!1421101 () Bool)

(assert (=> b!3523663 (=> (not res!1421101) (not e!2181015))))

(assert (=> b!3523663 (= res!1421101 (not call!254637))))

(declare-fun b!3523664 () Bool)

(declare-fun e!2181016 () Bool)

(assert (=> b!3523664 (= e!2181018 e!2181016)))

(declare-fun res!1421102 () Bool)

(assert (=> b!3523664 (=> (not res!1421102) (not e!2181016))))

(assert (=> b!3523664 (= res!1421102 (not lt!1203390))))

(declare-fun b!3523665 () Bool)

(declare-fun e!2181017 () Bool)

(assert (=> b!3523665 (= e!2181017 (not (= (head!7385 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070))))) (c!606752 (regex!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070))))))))))

(declare-fun b!3523666 () Bool)

(declare-fun e!2181012 () Bool)

(declare-fun e!2181013 () Bool)

(assert (=> b!3523666 (= e!2181012 e!2181013)))

(declare-fun c!607511 () Bool)

(assert (=> b!3523666 (= c!607511 ((_ is EmptyLang!10235) (regex!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070))))))))

(declare-fun b!3523667 () Bool)

(declare-fun e!2181014 () Bool)

(assert (=> b!3523667 (= e!2181014 (matchR!4819 (derivativeStep!3070 (regex!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))) (head!7385 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070)))))) (tail!5490 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070)))))))))

(declare-fun b!3523668 () Bool)

(assert (=> b!3523668 (= e!2181014 (nullable!3517 (regex!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070))))))))

(declare-fun b!3523660 () Bool)

(declare-fun res!1421100 () Bool)

(assert (=> b!3523660 (=> res!1421100 e!2181017)))

(assert (=> b!3523660 (= res!1421100 (not (isEmpty!21812 (tail!5490 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070))))))))))

(declare-fun d!1028541 () Bool)

(assert (=> d!1028541 e!2181012))

(declare-fun c!607510 () Bool)

(assert (=> d!1028541 (= c!607510 ((_ is EmptyExpr!10235) (regex!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070))))))))

(assert (=> d!1028541 (= lt!1203390 e!2181014)))

(declare-fun c!607512 () Bool)

(assert (=> d!1028541 (= c!607512 (isEmpty!21812 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070))))))))

(assert (=> d!1028541 (validRegex!4674 (regex!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))))

(assert (=> d!1028541 (= (matchR!4819 (regex!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))) (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070))))) lt!1203390)))

(declare-fun b!3523669 () Bool)

(assert (=> b!3523669 (= e!2181012 (= lt!1203390 call!254637))))

(declare-fun b!3523670 () Bool)

(declare-fun res!1421099 () Bool)

(assert (=> b!3523670 (=> res!1421099 e!2181018)))

(assert (=> b!3523670 (= res!1421099 (not ((_ is ElementMatch!10235) (regex!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))))))

(assert (=> b!3523670 (= e!2181013 e!2181018)))

(declare-fun b!3523671 () Bool)

(assert (=> b!3523671 (= e!2181013 (not lt!1203390))))

(declare-fun b!3523672 () Bool)

(assert (=> b!3523672 (= e!2181015 (= (head!7385 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070))))) (c!606752 (regex!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))))))

(declare-fun b!3523673 () Bool)

(assert (=> b!3523673 (= e!2181016 e!2181017)))

(declare-fun res!1421104 () Bool)

(assert (=> b!3523673 (=> res!1421104 e!2181017)))

(assert (=> b!3523673 (= res!1421104 call!254637)))

(assert (= (and d!1028541 c!607512) b!3523668))

(assert (= (and d!1028541 (not c!607512)) b!3523667))

(assert (= (and d!1028541 c!607510) b!3523669))

(assert (= (and d!1028541 (not c!607510)) b!3523666))

(assert (= (and b!3523666 c!607511) b!3523671))

(assert (= (and b!3523666 (not c!607511)) b!3523670))

(assert (= (and b!3523670 (not res!1421099)) b!3523662))

(assert (= (and b!3523662 res!1421103) b!3523663))

(assert (= (and b!3523663 res!1421101) b!3523661))

(assert (= (and b!3523661 res!1421098) b!3523672))

(assert (= (and b!3523662 (not res!1421105)) b!3523664))

(assert (= (and b!3523664 res!1421102) b!3523673))

(assert (= (and b!3523673 (not res!1421104)) b!3523660))

(assert (= (and b!3523660 (not res!1421100)) b!3523665))

(assert (= (or b!3523669 b!3523663 b!3523673) bm!254632))

(assert (=> d!1028541 m!3971093))

(declare-fun m!3975985 () Bool)

(assert (=> d!1028541 m!3975985))

(declare-fun m!3975987 () Bool)

(assert (=> d!1028541 m!3975987))

(assert (=> b!3523660 m!3971093))

(declare-fun m!3975989 () Bool)

(assert (=> b!3523660 m!3975989))

(assert (=> b!3523660 m!3975989))

(declare-fun m!3975991 () Bool)

(assert (=> b!3523660 m!3975991))

(assert (=> bm!254632 m!3971093))

(assert (=> bm!254632 m!3975985))

(assert (=> b!3523667 m!3971093))

(declare-fun m!3975993 () Bool)

(assert (=> b!3523667 m!3975993))

(assert (=> b!3523667 m!3975993))

(declare-fun m!3975995 () Bool)

(assert (=> b!3523667 m!3975995))

(assert (=> b!3523667 m!3971093))

(assert (=> b!3523667 m!3975989))

(assert (=> b!3523667 m!3975995))

(assert (=> b!3523667 m!3975989))

(declare-fun m!3975997 () Bool)

(assert (=> b!3523667 m!3975997))

(assert (=> b!3523672 m!3971093))

(assert (=> b!3523672 m!3975993))

(declare-fun m!3975999 () Bool)

(assert (=> b!3523668 m!3975999))

(assert (=> b!3523665 m!3971093))

(assert (=> b!3523665 m!3975993))

(assert (=> b!3523661 m!3971093))

(assert (=> b!3523661 m!3975989))

(assert (=> b!3523661 m!3975989))

(assert (=> b!3523661 m!3975991))

(assert (=> b!3521028 d!1028541))

(assert (=> b!3521028 d!1027905))

(assert (=> b!3521028 d!1028185))

(assert (=> b!3521028 d!1028187))

(declare-fun b!3523675 () Bool)

(declare-fun e!2181019 () List!37467)

(assert (=> b!3523675 (= e!2181019 (Cons!37343 (h!42763 (ite c!606828 call!254379 call!254381)) (++!9253 (t!281698 (ite c!606828 call!254379 call!254381)) (ite c!606828 call!254381 call!254379))))))

(declare-fun d!1028543 () Bool)

(declare-fun e!2181020 () Bool)

(assert (=> d!1028543 e!2181020))

(declare-fun res!1421107 () Bool)

(assert (=> d!1028543 (=> (not res!1421107) (not e!2181020))))

(declare-fun lt!1203391 () List!37467)

(assert (=> d!1028543 (= res!1421107 (= (content!5263 lt!1203391) ((_ map or) (content!5263 (ite c!606828 call!254379 call!254381)) (content!5263 (ite c!606828 call!254381 call!254379)))))))

(assert (=> d!1028543 (= lt!1203391 e!2181019)))

(declare-fun c!607513 () Bool)

(assert (=> d!1028543 (= c!607513 ((_ is Nil!37343) (ite c!606828 call!254379 call!254381)))))

(assert (=> d!1028543 (= (++!9253 (ite c!606828 call!254379 call!254381) (ite c!606828 call!254381 call!254379)) lt!1203391)))

(declare-fun b!3523676 () Bool)

(declare-fun res!1421106 () Bool)

(assert (=> b!3523676 (=> (not res!1421106) (not e!2181020))))

(assert (=> b!3523676 (= res!1421106 (= (size!28412 lt!1203391) (+ (size!28412 (ite c!606828 call!254379 call!254381)) (size!28412 (ite c!606828 call!254381 call!254379)))))))

(declare-fun b!3523674 () Bool)

(assert (=> b!3523674 (= e!2181019 (ite c!606828 call!254381 call!254379))))

(declare-fun b!3523677 () Bool)

(assert (=> b!3523677 (= e!2181020 (or (not (= (ite c!606828 call!254381 call!254379) Nil!37343)) (= lt!1203391 (ite c!606828 call!254379 call!254381))))))

(assert (= (and d!1028543 c!607513) b!3523674))

(assert (= (and d!1028543 (not c!607513)) b!3523675))

(assert (= (and d!1028543 res!1421107) b!3523676))

(assert (= (and b!3523676 res!1421106) b!3523677))

(declare-fun m!3976001 () Bool)

(assert (=> b!3523675 m!3976001))

(declare-fun m!3976003 () Bool)

(assert (=> d!1028543 m!3976003))

(declare-fun m!3976005 () Bool)

(assert (=> d!1028543 m!3976005))

(declare-fun m!3976007 () Bool)

(assert (=> d!1028543 m!3976007))

(declare-fun m!3976009 () Bool)

(assert (=> b!3523676 m!3976009))

(declare-fun m!3976011 () Bool)

(assert (=> b!3523676 m!3976011))

(declare-fun m!3976013 () Bool)

(assert (=> b!3523676 m!3976013))

(assert (=> bm!254376 d!1028543))

(declare-fun d!1028545 () Bool)

(assert (=> d!1028545 (= (inv!50582 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241))) (isBalanced!3459 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241)))))))

(declare-fun bs!565555 () Bool)

(assert (= bs!565555 d!1028545))

(declare-fun m!3976015 () Bool)

(assert (=> bs!565555 m!3976015))

(assert (=> tb!196687 d!1028545))

(declare-fun b!3523679 () Bool)

(declare-fun res!1421108 () Bool)

(declare-fun e!2181024 () Bool)

(assert (=> b!3523679 (=> (not res!1421108) (not e!2181024))))

(assert (=> b!3523679 (= res!1421108 (isEmpty!21812 (tail!5490 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279)))))))))

(declare-fun bm!254633 () Bool)

(declare-fun call!254638 () Bool)

(assert (=> bm!254633 (= call!254638 (isEmpty!21812 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279))))))))

(declare-fun b!3523680 () Bool)

(declare-fun res!1421115 () Bool)

(declare-fun e!2181027 () Bool)

(assert (=> b!3523680 (=> res!1421115 e!2181027)))

(assert (=> b!3523680 (= res!1421115 e!2181024)))

(declare-fun res!1421113 () Bool)

(assert (=> b!3523680 (=> (not res!1421113) (not e!2181024))))

(declare-fun lt!1203392 () Bool)

(assert (=> b!3523680 (= res!1421113 lt!1203392)))

(declare-fun b!3523681 () Bool)

(declare-fun res!1421111 () Bool)

(assert (=> b!3523681 (=> (not res!1421111) (not e!2181024))))

(assert (=> b!3523681 (= res!1421111 (not call!254638))))

(declare-fun b!3523682 () Bool)

(declare-fun e!2181025 () Bool)

(assert (=> b!3523682 (= e!2181027 e!2181025)))

(declare-fun res!1421112 () Bool)

(assert (=> b!3523682 (=> (not res!1421112) (not e!2181025))))

(assert (=> b!3523682 (= res!1421112 (not lt!1203392))))

(declare-fun b!3523683 () Bool)

(declare-fun e!2181026 () Bool)

(assert (=> b!3523683 (= e!2181026 (not (= (head!7385 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279))))) (c!606752 (regex!5476 (rule!8122 (h!42765 tokens!494)))))))))

(declare-fun b!3523684 () Bool)

(declare-fun e!2181021 () Bool)

(declare-fun e!2181022 () Bool)

(assert (=> b!3523684 (= e!2181021 e!2181022)))

(declare-fun c!607515 () Bool)

(assert (=> b!3523684 (= c!607515 ((_ is EmptyLang!10235) (regex!5476 (rule!8122 (h!42765 tokens!494)))))))

(declare-fun b!3523685 () Bool)

(declare-fun e!2181023 () Bool)

(assert (=> b!3523685 (= e!2181023 (matchR!4819 (derivativeStep!3070 (regex!5476 (rule!8122 (h!42765 tokens!494))) (head!7385 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279)))))) (tail!5490 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279)))))))))

(declare-fun b!3523686 () Bool)

(assert (=> b!3523686 (= e!2181023 (nullable!3517 (regex!5476 (rule!8122 (h!42765 tokens!494)))))))

(declare-fun b!3523678 () Bool)

(declare-fun res!1421110 () Bool)

(assert (=> b!3523678 (=> res!1421110 e!2181026)))

(assert (=> b!3523678 (= res!1421110 (not (isEmpty!21812 (tail!5490 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279))))))))))

(declare-fun d!1028547 () Bool)

(assert (=> d!1028547 e!2181021))

(declare-fun c!607514 () Bool)

(assert (=> d!1028547 (= c!607514 ((_ is EmptyExpr!10235) (regex!5476 (rule!8122 (h!42765 tokens!494)))))))

(assert (=> d!1028547 (= lt!1203392 e!2181023)))

(declare-fun c!607516 () Bool)

(assert (=> d!1028547 (= c!607516 (isEmpty!21812 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279))))))))

(assert (=> d!1028547 (validRegex!4674 (regex!5476 (rule!8122 (h!42765 tokens!494))))))

(assert (=> d!1028547 (= (matchR!4819 (regex!5476 (rule!8122 (h!42765 tokens!494))) (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279))))) lt!1203392)))

(declare-fun b!3523687 () Bool)

(assert (=> b!3523687 (= e!2181021 (= lt!1203392 call!254638))))

(declare-fun b!3523688 () Bool)

(declare-fun res!1421109 () Bool)

(assert (=> b!3523688 (=> res!1421109 e!2181027)))

(assert (=> b!3523688 (= res!1421109 (not ((_ is ElementMatch!10235) (regex!5476 (rule!8122 (h!42765 tokens!494))))))))

(assert (=> b!3523688 (= e!2181022 e!2181027)))

(declare-fun b!3523689 () Bool)

(assert (=> b!3523689 (= e!2181022 (not lt!1203392))))

(declare-fun b!3523690 () Bool)

(assert (=> b!3523690 (= e!2181024 (= (head!7385 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279))))) (c!606752 (regex!5476 (rule!8122 (h!42765 tokens!494))))))))

(declare-fun b!3523691 () Bool)

(assert (=> b!3523691 (= e!2181025 e!2181026)))

(declare-fun res!1421114 () Bool)

(assert (=> b!3523691 (=> res!1421114 e!2181026)))

(assert (=> b!3523691 (= res!1421114 call!254638)))

(assert (= (and d!1028547 c!607516) b!3523686))

(assert (= (and d!1028547 (not c!607516)) b!3523685))

(assert (= (and d!1028547 c!607514) b!3523687))

(assert (= (and d!1028547 (not c!607514)) b!3523684))

(assert (= (and b!3523684 c!607515) b!3523689))

(assert (= (and b!3523684 (not c!607515)) b!3523688))

(assert (= (and b!3523688 (not res!1421109)) b!3523680))

(assert (= (and b!3523680 res!1421113) b!3523681))

(assert (= (and b!3523681 res!1421111) b!3523679))

(assert (= (and b!3523679 res!1421108) b!3523690))

(assert (= (and b!3523680 (not res!1421115)) b!3523682))

(assert (= (and b!3523682 res!1421112) b!3523691))

(assert (= (and b!3523691 (not res!1421114)) b!3523678))

(assert (= (and b!3523678 (not res!1421110)) b!3523683))

(assert (= (or b!3523687 b!3523681 b!3523691) bm!254633))

(assert (=> d!1028547 m!3971991))

(declare-fun m!3976017 () Bool)

(assert (=> d!1028547 m!3976017))

(assert (=> d!1028547 m!3973633))

(assert (=> b!3523678 m!3971991))

(declare-fun m!3976019 () Bool)

(assert (=> b!3523678 m!3976019))

(assert (=> b!3523678 m!3976019))

(declare-fun m!3976021 () Bool)

(assert (=> b!3523678 m!3976021))

(assert (=> bm!254633 m!3971991))

(assert (=> bm!254633 m!3976017))

(assert (=> b!3523685 m!3971991))

(declare-fun m!3976023 () Bool)

(assert (=> b!3523685 m!3976023))

(assert (=> b!3523685 m!3976023))

(declare-fun m!3976025 () Bool)

(assert (=> b!3523685 m!3976025))

(assert (=> b!3523685 m!3971991))

(assert (=> b!3523685 m!3976019))

(assert (=> b!3523685 m!3976025))

(assert (=> b!3523685 m!3976019))

(declare-fun m!3976027 () Bool)

(assert (=> b!3523685 m!3976027))

(assert (=> b!3523690 m!3971991))

(assert (=> b!3523690 m!3976023))

(assert (=> b!3523686 m!3973673))

(assert (=> b!3523683 m!3971991))

(assert (=> b!3523683 m!3976023))

(assert (=> b!3523679 m!3971991))

(assert (=> b!3523679 m!3976019))

(assert (=> b!3523679 m!3976019))

(assert (=> b!3523679 m!3976021))

(assert (=> b!3521490 d!1028547))

(declare-fun d!1028549 () Bool)

(assert (=> d!1028549 (= (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279)))) (list!13663 (c!606753 (charsOf!3490 (_1!21723 (get!11991 lt!1202279))))))))

(declare-fun bs!565556 () Bool)

(assert (= bs!565556 d!1028549))

(declare-fun m!3976029 () Bool)

(assert (=> bs!565556 m!3976029))

(assert (=> b!3521490 d!1028549))

(declare-fun d!1028551 () Bool)

(declare-fun lt!1203393 () BalanceConc!22268)

(assert (=> d!1028551 (= (list!13659 lt!1203393) (originalCharacters!6190 (_1!21723 (get!11991 lt!1202279))))))

(assert (=> d!1028551 (= lt!1203393 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279))))) (value!176526 (_1!21723 (get!11991 lt!1202279)))))))

(assert (=> d!1028551 (= (charsOf!3490 (_1!21723 (get!11991 lt!1202279))) lt!1203393)))

(declare-fun b_lambda!102945 () Bool)

(assert (=> (not b_lambda!102945) (not d!1028551)))

(declare-fun tb!197063 () Bool)

(declare-fun t!282179 () Bool)

(assert (=> (and b!3520694 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279)))))) t!282179) tb!197063))

(declare-fun b!3523692 () Bool)

(declare-fun e!2181028 () Bool)

(declare-fun tp!1087209 () Bool)

(assert (=> b!3523692 (= e!2181028 (and (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279))))) (value!176526 (_1!21723 (get!11991 lt!1202279)))))) tp!1087209))))

(declare-fun result!241438 () Bool)

(assert (=> tb!197063 (= result!241438 (and (inv!50582 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279))))) (value!176526 (_1!21723 (get!11991 lt!1202279))))) e!2181028))))

(assert (= tb!197063 b!3523692))

(declare-fun m!3976031 () Bool)

(assert (=> b!3523692 m!3976031))

(declare-fun m!3976033 () Bool)

(assert (=> tb!197063 m!3976033))

(assert (=> d!1028551 t!282179))

(declare-fun b_and!251147 () Bool)

(assert (= b_and!251139 (and (=> t!282179 result!241438) b_and!251147)))

(declare-fun tb!197065 () Bool)

(declare-fun t!282181 () Bool)

(assert (=> (and b!3521743 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279)))))) t!282181) tb!197065))

(declare-fun result!241440 () Bool)

(assert (= result!241440 result!241438))

(assert (=> d!1028551 t!282181))

(declare-fun b_and!251149 () Bool)

(assert (= b_and!251137 (and (=> t!282181 result!241440) b_and!251149)))

(declare-fun t!282183 () Bool)

(declare-fun tb!197067 () Bool)

(assert (=> (and b!3520728 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279)))))) t!282183) tb!197067))

(declare-fun result!241442 () Bool)

(assert (= result!241442 result!241438))

(assert (=> d!1028551 t!282183))

(declare-fun b_and!251151 () Bool)

(assert (= b_and!251141 (and (=> t!282183 result!241442) b_and!251151)))

(declare-fun tb!197069 () Bool)

(declare-fun t!282185 () Bool)

(assert (=> (and b!3521754 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279)))))) t!282185) tb!197069))

(declare-fun result!241444 () Bool)

(assert (= result!241444 result!241438))

(assert (=> d!1028551 t!282185))

(declare-fun b_and!251153 () Bool)

(assert (= b_and!251145 (and (=> t!282185 result!241444) b_and!251153)))

(declare-fun t!282187 () Bool)

(declare-fun tb!197071 () Bool)

(assert (=> (and b!3520698 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279)))))) t!282187) tb!197071))

(declare-fun result!241446 () Bool)

(assert (= result!241446 result!241438))

(assert (=> d!1028551 t!282187))

(declare-fun b_and!251155 () Bool)

(assert (= b_and!251143 (and (=> t!282187 result!241446) b_and!251155)))

(declare-fun m!3976035 () Bool)

(assert (=> d!1028551 m!3976035))

(declare-fun m!3976037 () Bool)

(assert (=> d!1028551 m!3976037))

(assert (=> b!3521490 d!1028551))

(assert (=> b!3521490 d!1027761))

(declare-fun b!3523694 () Bool)

(declare-fun e!2181029 () List!37467)

(assert (=> b!3523694 (= e!2181029 (Cons!37343 (h!42763 (t!281698 lt!1201914)) (++!9253 (t!281698 (t!281698 lt!1201914)) lt!1201944)))))

(declare-fun d!1028553 () Bool)

(declare-fun e!2181030 () Bool)

(assert (=> d!1028553 e!2181030))

(declare-fun res!1421117 () Bool)

(assert (=> d!1028553 (=> (not res!1421117) (not e!2181030))))

(declare-fun lt!1203394 () List!37467)

(assert (=> d!1028553 (= res!1421117 (= (content!5263 lt!1203394) ((_ map or) (content!5263 (t!281698 lt!1201914)) (content!5263 lt!1201944))))))

(assert (=> d!1028553 (= lt!1203394 e!2181029)))

(declare-fun c!607517 () Bool)

(assert (=> d!1028553 (= c!607517 ((_ is Nil!37343) (t!281698 lt!1201914)))))

(assert (=> d!1028553 (= (++!9253 (t!281698 lt!1201914) lt!1201944) lt!1203394)))

(declare-fun b!3523695 () Bool)

(declare-fun res!1421116 () Bool)

(assert (=> b!3523695 (=> (not res!1421116) (not e!2181030))))

(assert (=> b!3523695 (= res!1421116 (= (size!28412 lt!1203394) (+ (size!28412 (t!281698 lt!1201914)) (size!28412 lt!1201944))))))

(declare-fun b!3523693 () Bool)

(assert (=> b!3523693 (= e!2181029 lt!1201944)))

(declare-fun b!3523696 () Bool)

(assert (=> b!3523696 (= e!2181030 (or (not (= lt!1201944 Nil!37343)) (= lt!1203394 (t!281698 lt!1201914))))))

(assert (= (and d!1028553 c!607517) b!3523693))

(assert (= (and d!1028553 (not c!607517)) b!3523694))

(assert (= (and d!1028553 res!1421117) b!3523695))

(assert (= (and b!3523695 res!1421116) b!3523696))

(declare-fun m!3976039 () Bool)

(assert (=> b!3523694 m!3976039))

(declare-fun m!3976041 () Bool)

(assert (=> d!1028553 m!3976041))

(assert (=> d!1028553 m!3975949))

(assert (=> d!1028553 m!3970977))

(declare-fun m!3976043 () Bool)

(assert (=> b!3523695 m!3976043))

(assert (=> b!3523695 m!3972027))

(assert (=> b!3523695 m!3970981))

(assert (=> b!3521656 d!1028553))

(declare-fun d!1028555 () Bool)

(declare-fun lt!1203397 () Int)

(assert (=> d!1028555 (>= lt!1203397 0)))

(declare-fun e!2181033 () Int)

(assert (=> d!1028555 (= lt!1203397 e!2181033)))

(declare-fun c!607520 () Bool)

(assert (=> d!1028555 (= c!607520 ((_ is Nil!37345) (list!13662 (_1!21722 lt!1201925))))))

(assert (=> d!1028555 (= (size!28417 (list!13662 (_1!21722 lt!1201925))) lt!1203397)))

(declare-fun b!3523701 () Bool)

(assert (=> b!3523701 (= e!2181033 0)))

(declare-fun b!3523702 () Bool)

(assert (=> b!3523702 (= e!2181033 (+ 1 (size!28417 (t!281700 (list!13662 (_1!21722 lt!1201925))))))))

(assert (= (and d!1028555 c!607520) b!3523701))

(assert (= (and d!1028555 (not c!607520)) b!3523702))

(declare-fun m!3976045 () Bool)

(assert (=> b!3523702 m!3976045))

(assert (=> d!1027013 d!1028555))

(assert (=> d!1027013 d!1027787))

(declare-fun d!1028557 () Bool)

(declare-fun lt!1203400 () Int)

(assert (=> d!1028557 (= lt!1203400 (size!28417 (list!13665 (c!606754 (_1!21722 lt!1201925)))))))

(assert (=> d!1028557 (= lt!1203400 (ite ((_ is Empty!11328) (c!606754 (_1!21722 lt!1201925))) 0 (ite ((_ is Leaf!17677) (c!606754 (_1!21722 lt!1201925))) (csize!22887 (c!606754 (_1!21722 lt!1201925))) (csize!22886 (c!606754 (_1!21722 lt!1201925))))))))

(assert (=> d!1028557 (= (size!28418 (c!606754 (_1!21722 lt!1201925))) lt!1203400)))

(declare-fun bs!565557 () Bool)

(assert (= bs!565557 d!1028557))

(assert (=> bs!565557 m!3973553))

(assert (=> bs!565557 m!3973553))

(declare-fun m!3976047 () Bool)

(assert (=> bs!565557 m!3976047))

(assert (=> d!1027013 d!1028557))

(declare-fun b!3523704 () Bool)

(declare-fun e!2181034 () List!37467)

(assert (=> b!3523704 (= e!2181034 (Cons!37343 (h!42763 (ite c!606824 call!254375 call!254377)) (++!9253 (t!281698 (ite c!606824 call!254375 call!254377)) (ite c!606824 call!254377 call!254375))))))

(declare-fun d!1028559 () Bool)

(declare-fun e!2181035 () Bool)

(assert (=> d!1028559 e!2181035))

(declare-fun res!1421119 () Bool)

(assert (=> d!1028559 (=> (not res!1421119) (not e!2181035))))

(declare-fun lt!1203401 () List!37467)

(assert (=> d!1028559 (= res!1421119 (= (content!5263 lt!1203401) ((_ map or) (content!5263 (ite c!606824 call!254375 call!254377)) (content!5263 (ite c!606824 call!254377 call!254375)))))))

(assert (=> d!1028559 (= lt!1203401 e!2181034)))

(declare-fun c!607521 () Bool)

(assert (=> d!1028559 (= c!607521 ((_ is Nil!37343) (ite c!606824 call!254375 call!254377)))))

(assert (=> d!1028559 (= (++!9253 (ite c!606824 call!254375 call!254377) (ite c!606824 call!254377 call!254375)) lt!1203401)))

(declare-fun b!3523705 () Bool)

(declare-fun res!1421118 () Bool)

(assert (=> b!3523705 (=> (not res!1421118) (not e!2181035))))

(assert (=> b!3523705 (= res!1421118 (= (size!28412 lt!1203401) (+ (size!28412 (ite c!606824 call!254375 call!254377)) (size!28412 (ite c!606824 call!254377 call!254375)))))))

(declare-fun b!3523703 () Bool)

(assert (=> b!3523703 (= e!2181034 (ite c!606824 call!254377 call!254375))))

(declare-fun b!3523706 () Bool)

(assert (=> b!3523706 (= e!2181035 (or (not (= (ite c!606824 call!254377 call!254375) Nil!37343)) (= lt!1203401 (ite c!606824 call!254375 call!254377))))))

(assert (= (and d!1028559 c!607521) b!3523703))

(assert (= (and d!1028559 (not c!607521)) b!3523704))

(assert (= (and d!1028559 res!1421119) b!3523705))

(assert (= (and b!3523705 res!1421118) b!3523706))

(declare-fun m!3976049 () Bool)

(assert (=> b!3523704 m!3976049))

(declare-fun m!3976051 () Bool)

(assert (=> d!1028559 m!3976051))

(declare-fun m!3976053 () Bool)

(assert (=> d!1028559 m!3976053))

(declare-fun m!3976055 () Bool)

(assert (=> d!1028559 m!3976055))

(declare-fun m!3976057 () Bool)

(assert (=> b!3523705 m!3976057))

(declare-fun m!3976059 () Bool)

(assert (=> b!3523705 m!3976059))

(declare-fun m!3976061 () Bool)

(assert (=> b!3523705 m!3976061))

(assert (=> bm!254372 d!1028559))

(declare-fun d!1028561 () Bool)

(assert (=> d!1028561 (= (list!13662 (_1!21722 lt!1202171)) (list!13665 (c!606754 (_1!21722 lt!1202171))))))

(declare-fun bs!565558 () Bool)

(assert (= bs!565558 d!1028561))

(declare-fun m!3976063 () Bool)

(assert (=> bs!565558 m!3976063))

(assert (=> b!3521265 d!1028561))

(assert (=> b!3521265 d!1028089))

(assert (=> b!3521265 d!1028107))

(declare-fun d!1028563 () Bool)

(declare-fun lt!1203402 () Bool)

(assert (=> d!1028563 (= lt!1203402 (isEmpty!21812 (list!13659 (_2!21722 lt!1202009))))))

(assert (=> d!1028563 (= lt!1203402 (isEmpty!21813 (c!606753 (_2!21722 lt!1202009))))))

(assert (=> d!1028563 (= (isEmpty!21806 (_2!21722 lt!1202009)) lt!1203402)))

(declare-fun bs!565559 () Bool)

(assert (= bs!565559 d!1028563))

(declare-fun m!3976065 () Bool)

(assert (=> bs!565559 m!3976065))

(assert (=> bs!565559 m!3976065))

(declare-fun m!3976067 () Bool)

(assert (=> bs!565559 m!3976067))

(declare-fun m!3976069 () Bool)

(assert (=> bs!565559 m!3976069))

(assert (=> b!3520913 d!1028563))

(declare-fun b!3523708 () Bool)

(declare-fun e!2181037 () Bool)

(declare-fun e!2181036 () Bool)

(assert (=> b!3523708 (= e!2181037 e!2181036)))

(declare-fun res!1421122 () Bool)

(assert (=> b!3523708 (=> (not res!1421122) (not e!2181036))))

(assert (=> b!3523708 (= res!1421122 (<= (- 1) (- (height!1724 (left!29168 (c!606754 lt!1202262))) (height!1724 (right!29498 (c!606754 lt!1202262))))))))

(declare-fun b!3523709 () Bool)

(declare-fun res!1421124 () Bool)

(assert (=> b!3523709 (=> (not res!1421124) (not e!2181036))))

(assert (=> b!3523709 (= res!1421124 (<= (- (height!1724 (left!29168 (c!606754 lt!1202262))) (height!1724 (right!29498 (c!606754 lt!1202262)))) 1))))

(declare-fun b!3523710 () Bool)

(assert (=> b!3523710 (= e!2181036 (not (isEmpty!21819 (right!29498 (c!606754 lt!1202262)))))))

(declare-fun b!3523711 () Bool)

(declare-fun res!1421125 () Bool)

(assert (=> b!3523711 (=> (not res!1421125) (not e!2181036))))

(assert (=> b!3523711 (= res!1421125 (isBalanced!3457 (right!29498 (c!606754 lt!1202262))))))

(declare-fun b!3523712 () Bool)

(declare-fun res!1421121 () Bool)

(assert (=> b!3523712 (=> (not res!1421121) (not e!2181036))))

(assert (=> b!3523712 (= res!1421121 (isBalanced!3457 (left!29168 (c!606754 lt!1202262))))))

(declare-fun b!3523707 () Bool)

(declare-fun res!1421120 () Bool)

(assert (=> b!3523707 (=> (not res!1421120) (not e!2181036))))

(assert (=> b!3523707 (= res!1421120 (not (isEmpty!21819 (left!29168 (c!606754 lt!1202262)))))))

(declare-fun d!1028565 () Bool)

(declare-fun res!1421123 () Bool)

(assert (=> d!1028565 (=> res!1421123 e!2181037)))

(assert (=> d!1028565 (= res!1421123 (not ((_ is Node!11328) (c!606754 lt!1202262))))))

(assert (=> d!1028565 (= (isBalanced!3457 (c!606754 lt!1202262)) e!2181037)))

(assert (= (and d!1028565 (not res!1421123)) b!3523708))

(assert (= (and b!3523708 res!1421122) b!3523709))

(assert (= (and b!3523709 res!1421124) b!3523712))

(assert (= (and b!3523712 res!1421121) b!3523711))

(assert (= (and b!3523711 res!1421125) b!3523707))

(assert (= (and b!3523707 res!1421120) b!3523710))

(declare-fun m!3976071 () Bool)

(assert (=> b!3523710 m!3976071))

(declare-fun m!3976073 () Bool)

(assert (=> b!3523707 m!3976073))

(declare-fun m!3976075 () Bool)

(assert (=> b!3523708 m!3976075))

(declare-fun m!3976077 () Bool)

(assert (=> b!3523708 m!3976077))

(assert (=> b!3523709 m!3976075))

(assert (=> b!3523709 m!3976077))

(declare-fun m!3976079 () Bool)

(assert (=> b!3523712 m!3976079))

(declare-fun m!3976081 () Bool)

(assert (=> b!3523711 m!3976081))

(assert (=> b!3521437 d!1028565))

(declare-fun b!3523714 () Bool)

(declare-fun res!1421126 () Bool)

(declare-fun e!2181041 () Bool)

(assert (=> b!3523714 (=> (not res!1421126) (not e!2181041))))

(assert (=> b!3523714 (= res!1421126 (isEmpty!21812 (tail!5490 (tail!5490 lt!1201944))))))

(declare-fun bm!254634 () Bool)

(declare-fun call!254639 () Bool)

(assert (=> bm!254634 (= call!254639 (isEmpty!21812 (tail!5490 lt!1201944)))))

(declare-fun b!3523715 () Bool)

(declare-fun res!1421133 () Bool)

(declare-fun e!2181044 () Bool)

(assert (=> b!3523715 (=> res!1421133 e!2181044)))

(assert (=> b!3523715 (= res!1421133 e!2181041)))

(declare-fun res!1421131 () Bool)

(assert (=> b!3523715 (=> (not res!1421131) (not e!2181041))))

(declare-fun lt!1203403 () Bool)

(assert (=> b!3523715 (= res!1421131 lt!1203403)))

(declare-fun b!3523716 () Bool)

(declare-fun res!1421129 () Bool)

(assert (=> b!3523716 (=> (not res!1421129) (not e!2181041))))

(assert (=> b!3523716 (= res!1421129 (not call!254639))))

(declare-fun b!3523717 () Bool)

(declare-fun e!2181042 () Bool)

(assert (=> b!3523717 (= e!2181044 e!2181042)))

(declare-fun res!1421130 () Bool)

(assert (=> b!3523717 (=> (not res!1421130) (not e!2181042))))

(assert (=> b!3523717 (= res!1421130 (not lt!1203403))))

(declare-fun b!3523718 () Bool)

(declare-fun e!2181043 () Bool)

(assert (=> b!3523718 (= e!2181043 (not (= (head!7385 (tail!5490 lt!1201944)) (c!606752 (derivativeStep!3070 (regex!5476 lt!1201926) (head!7385 lt!1201944))))))))

(declare-fun b!3523719 () Bool)

(declare-fun e!2181038 () Bool)

(declare-fun e!2181039 () Bool)

(assert (=> b!3523719 (= e!2181038 e!2181039)))

(declare-fun c!607523 () Bool)

(assert (=> b!3523719 (= c!607523 ((_ is EmptyLang!10235) (derivativeStep!3070 (regex!5476 lt!1201926) (head!7385 lt!1201944))))))

(declare-fun b!3523720 () Bool)

(declare-fun e!2181040 () Bool)

(assert (=> b!3523720 (= e!2181040 (matchR!4819 (derivativeStep!3070 (derivativeStep!3070 (regex!5476 lt!1201926) (head!7385 lt!1201944)) (head!7385 (tail!5490 lt!1201944))) (tail!5490 (tail!5490 lt!1201944))))))

(declare-fun b!3523721 () Bool)

(assert (=> b!3523721 (= e!2181040 (nullable!3517 (derivativeStep!3070 (regex!5476 lt!1201926) (head!7385 lt!1201944))))))

(declare-fun b!3523713 () Bool)

(declare-fun res!1421128 () Bool)

(assert (=> b!3523713 (=> res!1421128 e!2181043)))

(assert (=> b!3523713 (= res!1421128 (not (isEmpty!21812 (tail!5490 (tail!5490 lt!1201944)))))))

(declare-fun d!1028567 () Bool)

(assert (=> d!1028567 e!2181038))

(declare-fun c!607522 () Bool)

(assert (=> d!1028567 (= c!607522 ((_ is EmptyExpr!10235) (derivativeStep!3070 (regex!5476 lt!1201926) (head!7385 lt!1201944))))))

(assert (=> d!1028567 (= lt!1203403 e!2181040)))

(declare-fun c!607524 () Bool)

(assert (=> d!1028567 (= c!607524 (isEmpty!21812 (tail!5490 lt!1201944)))))

(assert (=> d!1028567 (validRegex!4674 (derivativeStep!3070 (regex!5476 lt!1201926) (head!7385 lt!1201944)))))

(assert (=> d!1028567 (= (matchR!4819 (derivativeStep!3070 (regex!5476 lt!1201926) (head!7385 lt!1201944)) (tail!5490 lt!1201944)) lt!1203403)))

(declare-fun b!3523722 () Bool)

(assert (=> b!3523722 (= e!2181038 (= lt!1203403 call!254639))))

(declare-fun b!3523723 () Bool)

(declare-fun res!1421127 () Bool)

(assert (=> b!3523723 (=> res!1421127 e!2181044)))

(assert (=> b!3523723 (= res!1421127 (not ((_ is ElementMatch!10235) (derivativeStep!3070 (regex!5476 lt!1201926) (head!7385 lt!1201944)))))))

(assert (=> b!3523723 (= e!2181039 e!2181044)))

(declare-fun b!3523724 () Bool)

(assert (=> b!3523724 (= e!2181039 (not lt!1203403))))

(declare-fun b!3523725 () Bool)

(assert (=> b!3523725 (= e!2181041 (= (head!7385 (tail!5490 lt!1201944)) (c!606752 (derivativeStep!3070 (regex!5476 lt!1201926) (head!7385 lt!1201944)))))))

(declare-fun b!3523726 () Bool)

(assert (=> b!3523726 (= e!2181042 e!2181043)))

(declare-fun res!1421132 () Bool)

(assert (=> b!3523726 (=> res!1421132 e!2181043)))

(assert (=> b!3523726 (= res!1421132 call!254639)))

(assert (= (and d!1028567 c!607524) b!3523721))

(assert (= (and d!1028567 (not c!607524)) b!3523720))

(assert (= (and d!1028567 c!607522) b!3523722))

(assert (= (and d!1028567 (not c!607522)) b!3523719))

(assert (= (and b!3523719 c!607523) b!3523724))

(assert (= (and b!3523719 (not c!607523)) b!3523723))

(assert (= (and b!3523723 (not res!1421127)) b!3523715))

(assert (= (and b!3523715 res!1421131) b!3523716))

(assert (= (and b!3523716 res!1421129) b!3523714))

(assert (= (and b!3523714 res!1421126) b!3523725))

(assert (= (and b!3523715 (not res!1421133)) b!3523717))

(assert (= (and b!3523717 res!1421130) b!3523726))

(assert (= (and b!3523726 (not res!1421132)) b!3523713))

(assert (= (and b!3523713 (not res!1421128)) b!3523718))

(assert (= (or b!3523722 b!3523716 b!3523726) bm!254634))

(assert (=> d!1028567 m!3971029))

(assert (=> d!1028567 m!3971031))

(assert (=> d!1028567 m!3972179))

(declare-fun m!3976083 () Bool)

(assert (=> d!1028567 m!3976083))

(assert (=> b!3523713 m!3971029))

(assert (=> b!3523713 m!3974345))

(assert (=> b!3523713 m!3974345))

(assert (=> b!3523713 m!3974347))

(assert (=> bm!254634 m!3971029))

(assert (=> bm!254634 m!3971031))

(assert (=> b!3523720 m!3971029))

(assert (=> b!3523720 m!3974349))

(assert (=> b!3523720 m!3972179))

(assert (=> b!3523720 m!3974349))

(declare-fun m!3976085 () Bool)

(assert (=> b!3523720 m!3976085))

(assert (=> b!3523720 m!3971029))

(assert (=> b!3523720 m!3974345))

(assert (=> b!3523720 m!3976085))

(assert (=> b!3523720 m!3974345))

(declare-fun m!3976087 () Bool)

(assert (=> b!3523720 m!3976087))

(assert (=> b!3523725 m!3971029))

(assert (=> b!3523725 m!3974349))

(assert (=> b!3523721 m!3972179))

(declare-fun m!3976089 () Bool)

(assert (=> b!3523721 m!3976089))

(assert (=> b!3523718 m!3971029))

(assert (=> b!3523718 m!3974349))

(assert (=> b!3523714 m!3971029))

(assert (=> b!3523714 m!3974345))

(assert (=> b!3523714 m!3974345))

(assert (=> b!3523714 m!3974347))

(assert (=> b!3521641 d!1028567))

(declare-fun c!607527 () Bool)

(declare-fun c!607528 () Bool)

(declare-fun call!254640 () Regex!10235)

(declare-fun bm!254635 () Bool)

(assert (=> bm!254635 (= call!254640 (derivativeStep!3070 (ite c!607527 (regOne!20983 (regex!5476 lt!1201926)) (ite c!607528 (reg!10564 (regex!5476 lt!1201926)) (regOne!20982 (regex!5476 lt!1201926)))) (head!7385 lt!1201944)))))

(declare-fun b!3523727 () Bool)

(declare-fun e!2181046 () Regex!10235)

(declare-fun call!254642 () Regex!10235)

(assert (=> b!3523727 (= e!2181046 (Union!10235 (Concat!15941 call!254642 (regTwo!20982 (regex!5476 lt!1201926))) EmptyLang!10235))))

(declare-fun b!3523728 () Bool)

(declare-fun c!607529 () Bool)

(assert (=> b!3523728 (= c!607529 (nullable!3517 (regOne!20982 (regex!5476 lt!1201926))))))

(declare-fun e!2181048 () Regex!10235)

(assert (=> b!3523728 (= e!2181048 e!2181046)))

(declare-fun call!254643 () Regex!10235)

(declare-fun b!3523729 () Bool)

(assert (=> b!3523729 (= e!2181046 (Union!10235 (Concat!15941 call!254642 (regTwo!20982 (regex!5476 lt!1201926))) call!254643))))

(declare-fun b!3523730 () Bool)

(declare-fun e!2181047 () Regex!10235)

(assert (=> b!3523730 (= e!2181047 e!2181048)))

(assert (=> b!3523730 (= c!607528 ((_ is Star!10235) (regex!5476 lt!1201926)))))

(declare-fun d!1028569 () Bool)

(declare-fun lt!1203404 () Regex!10235)

(assert (=> d!1028569 (validRegex!4674 lt!1203404)))

(declare-fun e!2181045 () Regex!10235)

(assert (=> d!1028569 (= lt!1203404 e!2181045)))

(declare-fun c!607525 () Bool)

(assert (=> d!1028569 (= c!607525 (or ((_ is EmptyExpr!10235) (regex!5476 lt!1201926)) ((_ is EmptyLang!10235) (regex!5476 lt!1201926))))))

(assert (=> d!1028569 (validRegex!4674 (regex!5476 lt!1201926))))

(assert (=> d!1028569 (= (derivativeStep!3070 (regex!5476 lt!1201926) (head!7385 lt!1201944)) lt!1203404)))

(declare-fun bm!254636 () Bool)

(declare-fun call!254641 () Regex!10235)

(assert (=> bm!254636 (= call!254641 call!254640)))

(declare-fun b!3523731 () Bool)

(declare-fun e!2181049 () Regex!10235)

(assert (=> b!3523731 (= e!2181045 e!2181049)))

(declare-fun c!607526 () Bool)

(assert (=> b!3523731 (= c!607526 ((_ is ElementMatch!10235) (regex!5476 lt!1201926)))))

(declare-fun b!3523732 () Bool)

(assert (=> b!3523732 (= c!607527 ((_ is Union!10235) (regex!5476 lt!1201926)))))

(assert (=> b!3523732 (= e!2181049 e!2181047)))

(declare-fun b!3523733 () Bool)

(assert (=> b!3523733 (= e!2181048 (Concat!15941 call!254641 (regex!5476 lt!1201926)))))

(declare-fun bm!254637 () Bool)

(assert (=> bm!254637 (= call!254643 (derivativeStep!3070 (ite c!607527 (regTwo!20983 (regex!5476 lt!1201926)) (regTwo!20982 (regex!5476 lt!1201926))) (head!7385 lt!1201944)))))

(declare-fun bm!254638 () Bool)

(assert (=> bm!254638 (= call!254642 call!254641)))

(declare-fun b!3523734 () Bool)

(assert (=> b!3523734 (= e!2181047 (Union!10235 call!254640 call!254643))))

(declare-fun b!3523735 () Bool)

(assert (=> b!3523735 (= e!2181045 EmptyLang!10235)))

(declare-fun b!3523736 () Bool)

(assert (=> b!3523736 (= e!2181049 (ite (= (head!7385 lt!1201944) (c!606752 (regex!5476 lt!1201926))) EmptyExpr!10235 EmptyLang!10235))))

(assert (= (and d!1028569 c!607525) b!3523735))

(assert (= (and d!1028569 (not c!607525)) b!3523731))

(assert (= (and b!3523731 c!607526) b!3523736))

(assert (= (and b!3523731 (not c!607526)) b!3523732))

(assert (= (and b!3523732 c!607527) b!3523734))

(assert (= (and b!3523732 (not c!607527)) b!3523730))

(assert (= (and b!3523730 c!607528) b!3523733))

(assert (= (and b!3523730 (not c!607528)) b!3523728))

(assert (= (and b!3523728 c!607529) b!3523729))

(assert (= (and b!3523728 (not c!607529)) b!3523727))

(assert (= (or b!3523729 b!3523727) bm!254638))

(assert (= (or b!3523733 bm!254638) bm!254636))

(assert (= (or b!3523734 bm!254636) bm!254635))

(assert (= (or b!3523734 b!3523729) bm!254637))

(assert (=> bm!254635 m!3970579))

(declare-fun m!3976091 () Bool)

(assert (=> bm!254635 m!3976091))

(declare-fun m!3976093 () Bool)

(assert (=> b!3523728 m!3976093))

(declare-fun m!3976095 () Bool)

(assert (=> d!1028569 m!3976095))

(assert (=> d!1028569 m!3972177))

(assert (=> bm!254637 m!3970579))

(declare-fun m!3976097 () Bool)

(assert (=> bm!254637 m!3976097))

(assert (=> b!3521641 d!1028569))

(assert (=> b!3521641 d!1027177))

(assert (=> b!3521641 d!1027835))

(declare-fun d!1028571 () Bool)

(declare-fun lt!1203405 () Token!10318)

(assert (=> d!1028571 (= lt!1203405 (apply!8898 (list!13662 (_1!21722 lt!1202124)) 0))))

(assert (=> d!1028571 (= lt!1203405 (apply!8899 (c!606754 (_1!21722 lt!1202124)) 0))))

(declare-fun e!2181050 () Bool)

(assert (=> d!1028571 e!2181050))

(declare-fun res!1421134 () Bool)

(assert (=> d!1028571 (=> (not res!1421134) (not e!2181050))))

(assert (=> d!1028571 (= res!1421134 (<= 0 0))))

(assert (=> d!1028571 (= (apply!8896 (_1!21722 lt!1202124) 0) lt!1203405)))

(declare-fun b!3523737 () Bool)

(assert (=> b!3523737 (= e!2181050 (< 0 (size!28413 (_1!21722 lt!1202124))))))

(assert (= (and d!1028571 res!1421134) b!3523737))

(declare-fun m!3976099 () Bool)

(assert (=> d!1028571 m!3976099))

(assert (=> d!1028571 m!3976099))

(declare-fun m!3976101 () Bool)

(assert (=> d!1028571 m!3976101))

(declare-fun m!3976103 () Bool)

(assert (=> d!1028571 m!3976103))

(assert (=> b!3523737 m!3971263))

(assert (=> b!3521148 d!1028571))

(declare-fun d!1028573 () Bool)

(assert (=> d!1028573 (= (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241)))) (v!37100 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241)))))))

(assert (=> b!3521271 d!1028573))

(assert (=> b!3521271 d!1027173))

(assert (=> d!1027009 d!1028173))

(assert (=> d!1027009 d!1028447))

(declare-fun d!1028575 () Bool)

(declare-fun c!607530 () Bool)

(assert (=> d!1028575 (= c!607530 ((_ is Node!11327) (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494)))))))))

(declare-fun e!2181051 () Bool)

(assert (=> d!1028575 (= (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494)))))) e!2181051)))

(declare-fun b!3523738 () Bool)

(assert (=> b!3523738 (= e!2181051 (inv!50583 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494)))))))))

(declare-fun b!3523739 () Bool)

(declare-fun e!2181052 () Bool)

(assert (=> b!3523739 (= e!2181051 e!2181052)))

(declare-fun res!1421135 () Bool)

(assert (=> b!3523739 (= res!1421135 (not ((_ is Leaf!17676) (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494))))))))))

(assert (=> b!3523739 (=> res!1421135 e!2181052)))

(declare-fun b!3523740 () Bool)

(assert (=> b!3523740 (= e!2181052 (inv!50584 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494)))))))))

(assert (= (and d!1028575 c!607530) b!3523738))

(assert (= (and d!1028575 (not c!607530)) b!3523739))

(assert (= (and b!3523739 (not res!1421135)) b!3523740))

(declare-fun m!3976105 () Bool)

(assert (=> b!3523738 m!3976105))

(declare-fun m!3976107 () Bool)

(assert (=> b!3523740 m!3976107))

(assert (=> b!3521672 d!1028575))

(declare-fun b!3523744 () Bool)

(declare-fun e!2181054 () List!37467)

(assert (=> b!3523744 (= e!2181054 (++!9253 (list!13663 (left!29167 (c!606753 (charsOf!3490 separatorToken!241)))) (list!13663 (right!29497 (c!606753 (charsOf!3490 separatorToken!241))))))))

(declare-fun b!3523741 () Bool)

(declare-fun e!2181053 () List!37467)

(assert (=> b!3523741 (= e!2181053 Nil!37343)))

(declare-fun d!1028577 () Bool)

(declare-fun c!607531 () Bool)

(assert (=> d!1028577 (= c!607531 ((_ is Empty!11327) (c!606753 (charsOf!3490 separatorToken!241))))))

(assert (=> d!1028577 (= (list!13663 (c!606753 (charsOf!3490 separatorToken!241))) e!2181053)))

(declare-fun b!3523742 () Bool)

(assert (=> b!3523742 (= e!2181053 e!2181054)))

(declare-fun c!607532 () Bool)

(assert (=> b!3523742 (= c!607532 ((_ is Leaf!17676) (c!606753 (charsOf!3490 separatorToken!241))))))

(declare-fun b!3523743 () Bool)

(assert (=> b!3523743 (= e!2181054 (list!13666 (xs!14517 (c!606753 (charsOf!3490 separatorToken!241)))))))

(assert (= (and d!1028577 c!607531) b!3523741))

(assert (= (and d!1028577 (not c!607531)) b!3523742))

(assert (= (and b!3523742 c!607532) b!3523743))

(assert (= (and b!3523742 (not c!607532)) b!3523744))

(declare-fun m!3976109 () Bool)

(assert (=> b!3523744 m!3976109))

(declare-fun m!3976111 () Bool)

(assert (=> b!3523744 m!3976111))

(assert (=> b!3523744 m!3976109))

(assert (=> b!3523744 m!3976111))

(declare-fun m!3976113 () Bool)

(assert (=> b!3523744 m!3976113))

(declare-fun m!3976115 () Bool)

(assert (=> b!3523743 m!3976115))

(assert (=> d!1027315 d!1028577))

(declare-fun d!1028579 () Bool)

(assert (=> d!1028579 (= (isEmpty!21814 lt!1202287) (not ((_ is Some!7612) lt!1202287)))))

(assert (=> d!1027243 d!1028579))

(assert (=> d!1027243 d!1027011))

(declare-fun d!1028581 () Bool)

(assert (=> d!1028581 (= (isEmpty!21812 (tail!5490 lt!1201911)) ((_ is Nil!37343) (tail!5490 lt!1201911)))))

(assert (=> b!3520804 d!1028581))

(declare-fun d!1028583 () Bool)

(assert (=> d!1028583 (= (tail!5490 lt!1201911) (t!281698 lt!1201911))))

(assert (=> b!3520804 d!1028583))

(declare-fun d!1028585 () Bool)

(assert (=> d!1028585 (= (list!13659 lt!1202293) (list!13663 (c!606753 lt!1202293)))))

(declare-fun bs!565560 () Bool)

(assert (= bs!565560 d!1028585))

(declare-fun m!3976117 () Bool)

(assert (=> bs!565560 m!3976117))

(assert (=> d!1027257 d!1028585))

(declare-fun d!1028587 () Bool)

(declare-fun c!607533 () Bool)

(assert (=> d!1028587 (= c!607533 ((_ is Cons!37345) (list!13662 lt!1201920)))))

(declare-fun e!2181055 () List!37467)

(assert (=> d!1028587 (= (printList!1613 thiss!18206 (list!13662 lt!1201920)) e!2181055)))

(declare-fun b!3523745 () Bool)

(assert (=> b!3523745 (= e!2181055 (++!9253 (list!13659 (charsOf!3490 (h!42765 (list!13662 lt!1201920)))) (printList!1613 thiss!18206 (t!281700 (list!13662 lt!1201920)))))))

(declare-fun b!3523746 () Bool)

(assert (=> b!3523746 (= e!2181055 Nil!37343)))

(assert (= (and d!1028587 c!607533) b!3523745))

(assert (= (and d!1028587 (not c!607533)) b!3523746))

(declare-fun m!3976119 () Bool)

(assert (=> b!3523745 m!3976119))

(assert (=> b!3523745 m!3976119))

(declare-fun m!3976121 () Bool)

(assert (=> b!3523745 m!3976121))

(declare-fun m!3976123 () Bool)

(assert (=> b!3523745 m!3976123))

(assert (=> b!3523745 m!3976121))

(assert (=> b!3523745 m!3976123))

(declare-fun m!3976125 () Bool)

(assert (=> b!3523745 m!3976125))

(assert (=> d!1027257 d!1028587))

(assert (=> d!1027257 d!1028157))

(assert (=> d!1027257 d!1027259))

(declare-fun d!1028589 () Bool)

(declare-fun lt!1203406 () Bool)

(assert (=> d!1028589 (= lt!1203406 (select (content!5263 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) lt!1201930))))

(declare-fun e!2181056 () Bool)

(assert (=> d!1028589 (= lt!1203406 e!2181056)))

(declare-fun res!1421136 () Bool)

(assert (=> d!1028589 (=> (not res!1421136) (not e!2181056))))

(assert (=> d!1028589 (= res!1421136 ((_ is Cons!37343) (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494)))))))))

(assert (=> d!1028589 (= (contains!7004 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494))))) lt!1201930) lt!1203406)))

(declare-fun b!3523747 () Bool)

(declare-fun e!2181057 () Bool)

(assert (=> b!3523747 (= e!2181056 e!2181057)))

(declare-fun res!1421137 () Bool)

(assert (=> b!3523747 (=> res!1421137 e!2181057)))

(assert (=> b!3523747 (= res!1421137 (= (h!42763 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) lt!1201930))))

(declare-fun b!3523748 () Bool)

(assert (=> b!3523748 (= e!2181057 (contains!7004 (t!281698 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) lt!1201930))))

(assert (= (and d!1028589 res!1421136) b!3523747))

(assert (= (and b!3523747 (not res!1421137)) b!3523748))

(declare-fun m!3976127 () Bool)

(assert (=> d!1028589 m!3976127))

(declare-fun m!3976129 () Bool)

(assert (=> d!1028589 m!3976129))

(declare-fun m!3976131 () Bool)

(assert (=> b!3523748 m!3976131))

(assert (=> b!3520987 d!1028589))

(declare-fun d!1028591 () Bool)

(declare-fun charsToInt!0 (List!37466) (_ BitVec 32))

(assert (=> d!1028591 (= (inv!16 (value!176526 (h!42765 tokens!494))) (= (charsToInt!0 (text!40389 (value!176526 (h!42765 tokens!494)))) (value!176517 (value!176526 (h!42765 tokens!494)))))))

(declare-fun bs!565561 () Bool)

(assert (= bs!565561 d!1028591))

(declare-fun m!3976133 () Bool)

(assert (=> bs!565561 m!3976133))

(assert (=> b!3521621 d!1028591))

(declare-fun d!1028593 () Bool)

(declare-fun lt!1203407 () Bool)

(assert (=> d!1028593 (= lt!1203407 (isEmpty!21812 (list!13659 (_2!21722 lt!1202034))))))

(assert (=> d!1028593 (= lt!1203407 (isEmpty!21813 (c!606753 (_2!21722 lt!1202034))))))

(assert (=> d!1028593 (= (isEmpty!21806 (_2!21722 lt!1202034)) lt!1203407)))

(declare-fun bs!565562 () Bool)

(assert (= bs!565562 d!1028593))

(declare-fun m!3976135 () Bool)

(assert (=> bs!565562 m!3976135))

(assert (=> bs!565562 m!3976135))

(declare-fun m!3976137 () Bool)

(assert (=> bs!565562 m!3976137))

(declare-fun m!3976139 () Bool)

(assert (=> bs!565562 m!3976139))

(assert (=> b!3520949 d!1028593))

(declare-fun d!1028595 () Bool)

(assert (=> d!1028595 (= (list!13662 (_1!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494)))))) (list!13665 (c!606754 (_1!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 tokens!494))))))))))

(declare-fun bs!565563 () Bool)

(assert (= bs!565563 d!1028595))

(declare-fun m!3976141 () Bool)

(assert (=> bs!565563 m!3976141))

(assert (=> d!1026957 d!1028595))

(assert (=> d!1026957 d!1028467))

(assert (=> d!1026957 d!1028469))

(declare-fun d!1028597 () Bool)

(assert (=> d!1028597 (= (list!13662 (singletonSeq!2572 (h!42765 tokens!494))) (list!13665 (c!606754 (singletonSeq!2572 (h!42765 tokens!494)))))))

(declare-fun bs!565564 () Bool)

(assert (= bs!565564 d!1028597))

(declare-fun m!3976143 () Bool)

(assert (=> bs!565564 m!3976143))

(assert (=> d!1026957 d!1028597))

(assert (=> d!1026957 d!1027263))

(declare-fun d!1028599 () Bool)

(declare-fun lt!1203408 () Int)

(assert (=> d!1028599 (= lt!1203408 (size!28417 (list!13662 (_1!21722 lt!1202009))))))

(assert (=> d!1028599 (= lt!1203408 (size!28418 (c!606754 (_1!21722 lt!1202009))))))

(assert (=> d!1028599 (= (size!28413 (_1!21722 lt!1202009)) lt!1203408)))

(declare-fun bs!565565 () Bool)

(assert (= bs!565565 d!1028599))

(declare-fun m!3976145 () Bool)

(assert (=> bs!565565 m!3976145))

(assert (=> bs!565565 m!3976145))

(declare-fun m!3976147 () Bool)

(assert (=> bs!565565 m!3976147))

(declare-fun m!3976149 () Bool)

(assert (=> bs!565565 m!3976149))

(assert (=> d!1026957 d!1028599))

(assert (=> d!1026957 d!1027281))

(assert (=> b!3521324 d!1027909))

(declare-fun d!1028601 () Bool)

(declare-fun lt!1203409 () Int)

(assert (=> d!1028601 (>= lt!1203409 0)))

(declare-fun e!2181058 () Int)

(assert (=> d!1028601 (= lt!1203409 e!2181058)))

(declare-fun c!607534 () Bool)

(assert (=> d!1028601 (= c!607534 ((_ is Nil!37343) (originalCharacters!6190 (_1!21723 (get!11991 lt!1202217)))))))

(assert (=> d!1028601 (= (size!28412 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202217)))) lt!1203409)))

(declare-fun b!3523749 () Bool)

(assert (=> b!3523749 (= e!2181058 0)))

(declare-fun b!3523750 () Bool)

(assert (=> b!3523750 (= e!2181058 (+ 1 (size!28412 (t!281698 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202217)))))))))

(assert (= (and d!1028601 c!607534) b!3523749))

(assert (= (and d!1028601 (not c!607534)) b!3523750))

(declare-fun m!3976151 () Bool)

(assert (=> b!3523750 m!3976151))

(assert (=> b!3521324 d!1028601))

(declare-fun call!254645 () List!37467)

(declare-fun c!607538 () Bool)

(declare-fun bm!254639 () Bool)

(declare-fun c!607537 () Bool)

(assert (=> bm!254639 (= call!254645 (usedCharacters!710 (ite c!607537 (reg!10564 (ite c!606890 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606891 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))) (ite c!607538 (regTwo!20983 (ite c!606890 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606891 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))) (regOne!20982 (ite c!606890 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606891 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))))))

(declare-fun b!3523751 () Bool)

(declare-fun e!2181060 () List!37467)

(declare-fun call!254647 () List!37467)

(assert (=> b!3523751 (= e!2181060 call!254647)))

(declare-fun call!254644 () List!37467)

(declare-fun bm!254640 () Bool)

(assert (=> bm!254640 (= call!254644 (usedCharacters!710 (ite c!607538 (regOne!20983 (ite c!606890 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606891 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))) (regTwo!20982 (ite c!606890 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606891 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))))

(declare-fun b!3523752 () Bool)

(assert (=> b!3523752 (= e!2181060 call!254647)))

(declare-fun c!607536 () Bool)

(declare-fun d!1028603 () Bool)

(assert (=> d!1028603 (= c!607536 (or ((_ is EmptyExpr!10235) (ite c!606890 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606891 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))) ((_ is EmptyLang!10235) (ite c!606890 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606891 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))))

(declare-fun e!2181059 () List!37467)

(assert (=> d!1028603 (= (usedCharacters!710 (ite c!606890 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606891 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))) e!2181059)))

(declare-fun b!3523753 () Bool)

(assert (=> b!3523753 (= e!2181059 Nil!37343)))

(declare-fun call!254646 () List!37467)

(declare-fun bm!254641 () Bool)

(assert (=> bm!254641 (= call!254647 (++!9253 (ite c!607538 call!254644 call!254646) (ite c!607538 call!254646 call!254644)))))

(declare-fun b!3523754 () Bool)

(declare-fun e!2181062 () List!37467)

(assert (=> b!3523754 (= e!2181059 e!2181062)))

(declare-fun c!607535 () Bool)

(assert (=> b!3523754 (= c!607535 ((_ is ElementMatch!10235) (ite c!606890 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606891 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))

(declare-fun b!3523755 () Bool)

(assert (=> b!3523755 (= c!607537 ((_ is Star!10235) (ite c!606890 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606891 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))

(declare-fun e!2181061 () List!37467)

(assert (=> b!3523755 (= e!2181062 e!2181061)))

(declare-fun b!3523756 () Bool)

(assert (=> b!3523756 (= e!2181062 (Cons!37343 (c!606752 (ite c!606890 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606891 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))) Nil!37343))))

(declare-fun b!3523757 () Bool)

(assert (=> b!3523757 (= e!2181061 call!254645)))

(declare-fun bm!254642 () Bool)

(assert (=> bm!254642 (= call!254646 call!254645)))

(declare-fun b!3523758 () Bool)

(assert (=> b!3523758 (= e!2181061 e!2181060)))

(assert (=> b!3523758 (= c!607538 ((_ is Union!10235) (ite c!606890 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (ite c!606891 (regTwo!20983 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (regOne!20982 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))

(assert (= (and d!1028603 c!607536) b!3523753))

(assert (= (and d!1028603 (not c!607536)) b!3523754))

(assert (= (and b!3523754 c!607535) b!3523756))

(assert (= (and b!3523754 (not c!607535)) b!3523755))

(assert (= (and b!3523755 c!607537) b!3523757))

(assert (= (and b!3523755 (not c!607537)) b!3523758))

(assert (= (and b!3523758 c!607538) b!3523752))

(assert (= (and b!3523758 (not c!607538)) b!3523751))

(assert (= (or b!3523752 b!3523751) bm!254642))

(assert (= (or b!3523752 b!3523751) bm!254640))

(assert (= (or b!3523752 b!3523751) bm!254641))

(assert (= (or b!3523757 bm!254642) bm!254639))

(declare-fun m!3976153 () Bool)

(assert (=> bm!254639 m!3976153))

(declare-fun m!3976155 () Bool)

(assert (=> bm!254640 m!3976155))

(declare-fun m!3976157 () Bool)

(assert (=> bm!254641 m!3976157))

(assert (=> bm!254394 d!1028603))

(declare-fun d!1028605 () Bool)

(assert (=> d!1028605 (= (nullable!3517 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) (nullableFct!1023 (reg!10564 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(declare-fun bs!565566 () Bool)

(assert (= bs!565566 d!1028605))

(declare-fun m!3976159 () Bool)

(assert (=> bs!565566 m!3976159))

(assert (=> b!3521605 d!1028605))

(declare-fun d!1028607 () Bool)

(declare-fun lt!1203412 () List!37467)

(assert (=> d!1028607 (= lt!1203412 (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) (printList!1613 thiss!18206 (dropList!1235 lt!1201906 0))))))

(declare-fun e!2181063 () List!37467)

(assert (=> d!1028607 (= lt!1203412 e!2181063)))

(declare-fun c!607539 () Bool)

(assert (=> d!1028607 (= c!607539 ((_ is Cons!37345) (dropList!1235 lt!1201906 0)))))

(assert (=> d!1028607 (= (printListTailRec!718 thiss!18206 (dropList!1235 lt!1201906 0) (list!13659 (BalanceConc!22269 Empty!11327))) lt!1203412)))

(declare-fun b!3523759 () Bool)

(assert (=> b!3523759 (= e!2181063 (printListTailRec!718 thiss!18206 (t!281700 (dropList!1235 lt!1201906 0)) (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) (list!13659 (charsOf!3490 (h!42765 (dropList!1235 lt!1201906 0)))))))))

(declare-fun lt!1203414 () List!37467)

(assert (=> b!3523759 (= lt!1203414 (list!13659 (charsOf!3490 (h!42765 (dropList!1235 lt!1201906 0)))))))

(declare-fun lt!1203413 () List!37467)

(assert (=> b!3523759 (= lt!1203413 (printList!1613 thiss!18206 (t!281700 (dropList!1235 lt!1201906 0))))))

(declare-fun lt!1203410 () Unit!52994)

(assert (=> b!3523759 (= lt!1203410 (lemmaConcatAssociativity!2008 (list!13659 (BalanceConc!22269 Empty!11327)) lt!1203414 lt!1203413))))

(assert (=> b!3523759 (= (++!9253 (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) lt!1203414) lt!1203413) (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) (++!9253 lt!1203414 lt!1203413)))))

(declare-fun lt!1203411 () Unit!52994)

(assert (=> b!3523759 (= lt!1203411 lt!1203410)))

(declare-fun b!3523760 () Bool)

(assert (=> b!3523760 (= e!2181063 (list!13659 (BalanceConc!22269 Empty!11327)))))

(assert (= (and d!1028607 c!607539) b!3523759))

(assert (= (and d!1028607 (not c!607539)) b!3523760))

(assert (=> d!1028607 m!3971871))

(declare-fun m!3976161 () Bool)

(assert (=> d!1028607 m!3976161))

(assert (=> d!1028607 m!3971545))

(assert (=> d!1028607 m!3976161))

(declare-fun m!3976163 () Bool)

(assert (=> d!1028607 m!3976163))

(declare-fun m!3976165 () Bool)

(assert (=> b!3523759 m!3976165))

(assert (=> b!3523759 m!3971545))

(declare-fun m!3976167 () Bool)

(assert (=> b!3523759 m!3976167))

(declare-fun m!3976169 () Bool)

(assert (=> b!3523759 m!3976169))

(assert (=> b!3523759 m!3971545))

(declare-fun m!3976171 () Bool)

(assert (=> b!3523759 m!3976171))

(declare-fun m!3976173 () Bool)

(assert (=> b!3523759 m!3976173))

(declare-fun m!3976175 () Bool)

(assert (=> b!3523759 m!3976175))

(assert (=> b!3523759 m!3976167))

(assert (=> b!3523759 m!3971545))

(declare-fun m!3976177 () Bool)

(assert (=> b!3523759 m!3976177))

(assert (=> b!3523759 m!3976173))

(assert (=> b!3523759 m!3971545))

(declare-fun m!3976179 () Bool)

(assert (=> b!3523759 m!3976179))

(declare-fun m!3976181 () Bool)

(assert (=> b!3523759 m!3976181))

(assert (=> b!3523759 m!3976165))

(assert (=> b!3523759 m!3976177))

(assert (=> b!3523759 m!3976171))

(declare-fun m!3976183 () Bool)

(assert (=> b!3523759 m!3976183))

(assert (=> d!1027207 d!1028607))

(declare-fun d!1028609 () Bool)

(assert (=> d!1028609 (= (dropList!1235 lt!1201906 0) (drop!2049 (list!13665 (c!606754 lt!1201906)) 0))))

(declare-fun bs!565567 () Bool)

(assert (= bs!565567 d!1028609))

(assert (=> bs!565567 m!3975717))

(assert (=> bs!565567 m!3975717))

(declare-fun m!3976185 () Bool)

(assert (=> bs!565567 m!3976185))

(assert (=> d!1027207 d!1028609))

(assert (=> d!1027207 d!1027769))

(declare-fun d!1028611 () Bool)

(declare-fun lt!1203415 () Int)

(assert (=> d!1028611 (= lt!1203415 (size!28417 (list!13662 lt!1201906)))))

(assert (=> d!1028611 (= lt!1203415 (size!28418 (c!606754 lt!1201906)))))

(assert (=> d!1028611 (= (size!28413 lt!1201906) lt!1203415)))

(declare-fun bs!565568 () Bool)

(assert (= bs!565568 d!1028611))

(assert (=> bs!565568 m!3971111))

(assert (=> bs!565568 m!3971111))

(declare-fun m!3976187 () Bool)

(assert (=> bs!565568 m!3976187))

(declare-fun m!3976189 () Bool)

(assert (=> bs!565568 m!3976189))

(assert (=> d!1027207 d!1028611))

(declare-fun d!1028613 () Bool)

(assert (=> d!1028613 (= (list!13659 lt!1202266) (list!13663 (c!606753 lt!1202266)))))

(declare-fun bs!565569 () Bool)

(assert (= bs!565569 d!1028613))

(declare-fun m!3976191 () Bool)

(assert (=> bs!565569 m!3976191))

(assert (=> d!1027207 d!1028613))

(declare-fun d!1028615 () Bool)

(declare-fun lt!1203416 () Int)

(assert (=> d!1028615 (>= lt!1203416 0)))

(declare-fun e!2181064 () Int)

(assert (=> d!1028615 (= lt!1203416 e!2181064)))

(declare-fun c!607540 () Bool)

(assert (=> d!1028615 (= c!607540 ((_ is Nil!37343) lt!1202030))))

(assert (=> d!1028615 (= (size!28412 lt!1202030) lt!1203416)))

(declare-fun b!3523761 () Bool)

(assert (=> b!3523761 (= e!2181064 0)))

(declare-fun b!3523762 () Bool)

(assert (=> b!3523762 (= e!2181064 (+ 1 (size!28412 (t!281698 lt!1202030))))))

(assert (= (and d!1028615 c!607540) b!3523761))

(assert (= (and d!1028615 (not c!607540)) b!3523762))

(declare-fun m!3976193 () Bool)

(assert (=> b!3523762 m!3976193))

(assert (=> b!3520942 d!1028615))

(assert (=> b!3520942 d!1027195))

(assert (=> b!3520942 d!1028491))

(declare-fun d!1028617 () Bool)

(declare-fun lt!1203417 () Bool)

(assert (=> d!1028617 (= lt!1203417 (select (content!5263 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 separatorToken!241))))) lt!1201930))))

(declare-fun e!2181065 () Bool)

(assert (=> d!1028617 (= lt!1203417 e!2181065)))

(declare-fun res!1421138 () Bool)

(assert (=> d!1028617 (=> (not res!1421138) (not e!2181065))))

(assert (=> d!1028617 (= res!1421138 ((_ is Cons!37343) (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 separatorToken!241))))))))

(assert (=> d!1028617 (= (contains!7004 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 separatorToken!241)))) lt!1201930) lt!1203417)))

(declare-fun b!3523763 () Bool)

(declare-fun e!2181066 () Bool)

(assert (=> b!3523763 (= e!2181065 e!2181066)))

(declare-fun res!1421139 () Bool)

(assert (=> b!3523763 (=> res!1421139 e!2181066)))

(assert (=> b!3523763 (= res!1421139 (= (h!42763 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 separatorToken!241))))) lt!1201930))))

(declare-fun b!3523764 () Bool)

(assert (=> b!3523764 (= e!2181066 (contains!7004 (t!281698 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 separatorToken!241))))) lt!1201930))))

(assert (= (and d!1028617 res!1421138) b!3523763))

(assert (= (and b!3523763 (not res!1421139)) b!3523764))

(assert (=> d!1028617 m!3975647))

(declare-fun m!3976195 () Bool)

(assert (=> d!1028617 m!3976195))

(declare-fun m!3976197 () Bool)

(assert (=> b!3523764 m!3976197))

(assert (=> b!3521273 d!1028617))

(assert (=> b!3520977 d!1027177))

(assert (=> d!1027071 d!1028479))

(assert (=> d!1027071 d!1028481))

(declare-fun d!1028619 () Bool)

(declare-fun lt!1203418 () Int)

(assert (=> d!1028619 (= lt!1203418 (size!28417 (list!13662 (_1!21722 lt!1202124))))))

(assert (=> d!1028619 (= lt!1203418 (size!28418 (c!606754 (_1!21722 lt!1202124))))))

(assert (=> d!1028619 (= (size!28413 (_1!21722 lt!1202124)) lt!1203418)))

(declare-fun bs!565570 () Bool)

(assert (= bs!565570 d!1028619))

(assert (=> bs!565570 m!3976099))

(assert (=> bs!565570 m!3976099))

(declare-fun m!3976199 () Bool)

(assert (=> bs!565570 m!3976199))

(declare-fun m!3976201 () Bool)

(assert (=> bs!565570 m!3976201))

(assert (=> d!1027071 d!1028619))

(declare-fun d!1028621 () Bool)

(assert (=> d!1028621 (= (list!13662 (_1!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494))))))) (list!13665 (c!606754 (_1!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 (h!42765 (t!281700 tokens!494)))))))))))

(declare-fun bs!565571 () Bool)

(assert (= bs!565571 d!1028621))

(declare-fun m!3976203 () Bool)

(assert (=> bs!565571 m!3976203))

(assert (=> d!1027071 d!1028621))

(assert (=> d!1027071 d!1027205))

(assert (=> d!1027071 d!1027281))

(declare-fun d!1028623 () Bool)

(assert (=> d!1028623 (= (list!13662 (singletonSeq!2572 (h!42765 (t!281700 tokens!494)))) (list!13665 (c!606754 (singletonSeq!2572 (h!42765 (t!281700 tokens!494))))))))

(declare-fun bs!565572 () Bool)

(assert (= bs!565572 d!1028623))

(declare-fun m!3976205 () Bool)

(assert (=> bs!565572 m!3976205))

(assert (=> d!1027071 d!1028623))

(declare-fun d!1028625 () Bool)

(assert (=> d!1028625 (= (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494)))))) (v!37100 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(assert (=> b!3521138 d!1028625))

(assert (=> b!3521138 d!1027243))

(declare-fun b!3523766 () Bool)

(declare-fun e!2181067 () List!37467)

(assert (=> b!3523766 (= e!2181067 (Cons!37343 (h!42763 (t!281698 lt!1201944)) (++!9253 (t!281698 (t!281698 lt!1201944)) lt!1201939)))))

(declare-fun d!1028627 () Bool)

(declare-fun e!2181068 () Bool)

(assert (=> d!1028627 e!2181068))

(declare-fun res!1421141 () Bool)

(assert (=> d!1028627 (=> (not res!1421141) (not e!2181068))))

(declare-fun lt!1203419 () List!37467)

(assert (=> d!1028627 (= res!1421141 (= (content!5263 lt!1203419) ((_ map or) (content!5263 (t!281698 lt!1201944)) (content!5263 lt!1201939))))))

(assert (=> d!1028627 (= lt!1203419 e!2181067)))

(declare-fun c!607541 () Bool)

(assert (=> d!1028627 (= c!607541 ((_ is Nil!37343) (t!281698 lt!1201944)))))

(assert (=> d!1028627 (= (++!9253 (t!281698 lt!1201944) lt!1201939) lt!1203419)))

(declare-fun b!3523767 () Bool)

(declare-fun res!1421140 () Bool)

(assert (=> b!3523767 (=> (not res!1421140) (not e!2181068))))

(assert (=> b!3523767 (= res!1421140 (= (size!28412 lt!1203419) (+ (size!28412 (t!281698 lt!1201944)) (size!28412 lt!1201939))))))

(declare-fun b!3523765 () Bool)

(assert (=> b!3523765 (= e!2181067 lt!1201939)))

(declare-fun b!3523768 () Bool)

(assert (=> b!3523768 (= e!2181068 (or (not (= lt!1201939 Nil!37343)) (= lt!1203419 (t!281698 lt!1201944))))))

(assert (= (and d!1028627 c!607541) b!3523765))

(assert (= (and d!1028627 (not c!607541)) b!3523766))

(assert (= (and d!1028627 res!1421141) b!3523767))

(assert (= (and b!3523767 res!1421140) b!3523768))

(declare-fun m!3976207 () Bool)

(assert (=> b!3523766 m!3976207))

(declare-fun m!3976209 () Bool)

(assert (=> d!1028627 m!3976209))

(assert (=> d!1028627 m!3975953))

(assert (=> d!1028627 m!3970963))

(declare-fun m!3976211 () Bool)

(assert (=> b!3523767 m!3976211))

(assert (=> b!3523767 m!3975815))

(assert (=> b!3523767 m!3970969))

(assert (=> b!3521668 d!1028627))

(declare-fun d!1028629 () Bool)

(declare-fun e!2181069 () Bool)

(assert (=> d!1028629 e!2181069))

(declare-fun res!1421142 () Bool)

(assert (=> d!1028629 (=> (not res!1421142) (not e!2181069))))

(declare-fun lt!1203420 () BalanceConc!22268)

(assert (=> d!1028629 (= res!1421142 (= (list!13659 lt!1203420) lt!1201911))))

(assert (=> d!1028629 (= lt!1203420 (BalanceConc!22269 (fromList!772 lt!1201911)))))

(assert (=> d!1028629 (= (fromListB!1842 lt!1201911) lt!1203420)))

(declare-fun b!3523769 () Bool)

(assert (=> b!3523769 (= e!2181069 (isBalanced!3459 (fromList!772 lt!1201911)))))

(assert (= (and d!1028629 res!1421142) b!3523769))

(declare-fun m!3976213 () Bool)

(assert (=> d!1028629 m!3976213))

(declare-fun m!3976215 () Bool)

(assert (=> d!1028629 m!3976215))

(assert (=> b!3523769 m!3976215))

(assert (=> b!3523769 m!3976215))

(declare-fun m!3976217 () Bool)

(assert (=> b!3523769 m!3976217))

(assert (=> d!1027253 d!1028629))

(declare-fun d!1028631 () Bool)

(declare-fun lt!1203421 () Int)

(assert (=> d!1028631 (>= lt!1203421 0)))

(declare-fun e!2181070 () Int)

(assert (=> d!1028631 (= lt!1203421 e!2181070)))

(declare-fun c!607542 () Bool)

(assert (=> d!1028631 (= c!607542 ((_ is Nil!37343) lt!1202029))))

(assert (=> d!1028631 (= (size!28412 lt!1202029) lt!1203421)))

(declare-fun b!3523770 () Bool)

(assert (=> b!3523770 (= e!2181070 0)))

(declare-fun b!3523771 () Bool)

(assert (=> b!3523771 (= e!2181070 (+ 1 (size!28412 (t!281698 lt!1202029))))))

(assert (= (and d!1028631 c!607542) b!3523770))

(assert (= (and d!1028631 (not c!607542)) b!3523771))

(declare-fun m!3976219 () Bool)

(assert (=> b!3523771 m!3976219))

(assert (=> b!3520938 d!1028631))

(declare-fun d!1028633 () Bool)

(declare-fun lt!1203422 () Int)

(assert (=> d!1028633 (>= lt!1203422 0)))

(declare-fun e!2181071 () Int)

(assert (=> d!1028633 (= lt!1203422 e!2181071)))

(declare-fun c!607543 () Bool)

(assert (=> d!1028633 (= c!607543 ((_ is Nil!37343) (++!9253 lt!1201911 lt!1201944)))))

(assert (=> d!1028633 (= (size!28412 (++!9253 lt!1201911 lt!1201944)) lt!1203422)))

(declare-fun b!3523772 () Bool)

(assert (=> b!3523772 (= e!2181071 0)))

(declare-fun b!3523773 () Bool)

(assert (=> b!3523773 (= e!2181071 (+ 1 (size!28412 (t!281698 (++!9253 lt!1201911 lt!1201944)))))))

(assert (= (and d!1028633 c!607543) b!3523772))

(assert (= (and d!1028633 (not c!607543)) b!3523773))

(declare-fun m!3976221 () Bool)

(assert (=> b!3523773 m!3976221))

(assert (=> b!3520938 d!1028633))

(assert (=> b!3520938 d!1028521))

(declare-fun d!1028635 () Bool)

(assert (=> d!1028635 (= (tail!5493 (drop!2049 lt!1202268 0)) (t!281700 (drop!2049 lt!1202268 0)))))

(assert (=> b!3521440 d!1028635))

(declare-fun d!1028637 () Bool)

(assert (=> d!1028637 (= (head!7387 (drop!2049 lt!1202265 0)) (h!42765 (drop!2049 lt!1202265 0)))))

(assert (=> b!3521440 d!1028637))

(declare-fun d!1028639 () Bool)

(declare-fun e!2181072 () Bool)

(assert (=> d!1028639 e!2181072))

(declare-fun res!1421144 () Bool)

(assert (=> d!1028639 (=> (not res!1421144) (not e!2181072))))

(assert (=> d!1028639 (= res!1421144 (appendAssocInst!817 (c!606753 (BalanceConc!22269 Empty!11327)) (c!606753 (charsOf!3490 (apply!8896 lt!1201906 0)))))))

(declare-fun lt!1203423 () BalanceConc!22268)

(assert (=> d!1028639 (= lt!1203423 (BalanceConc!22269 (++!9258 (c!606753 (BalanceConc!22269 Empty!11327)) (c!606753 (charsOf!3490 (apply!8896 lt!1201906 0))))))))

(assert (=> d!1028639 (= (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201906 0))) lt!1203423)))

(declare-fun b!3523777 () Bool)

(assert (=> b!3523777 (= e!2181072 (= (list!13659 lt!1203423) (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) (list!13659 (charsOf!3490 (apply!8896 lt!1201906 0))))))))

(declare-fun b!3523776 () Bool)

(declare-fun res!1421143 () Bool)

(assert (=> b!3523776 (=> (not res!1421143) (not e!2181072))))

(assert (=> b!3523776 (= res!1421143 (>= (height!1723 (++!9258 (c!606753 (BalanceConc!22269 Empty!11327)) (c!606753 (charsOf!3490 (apply!8896 lt!1201906 0))))) (max!0 (height!1723 (c!606753 (BalanceConc!22269 Empty!11327))) (height!1723 (c!606753 (charsOf!3490 (apply!8896 lt!1201906 0)))))))))

(declare-fun b!3523774 () Bool)

(declare-fun res!1421145 () Bool)

(assert (=> b!3523774 (=> (not res!1421145) (not e!2181072))))

(assert (=> b!3523774 (= res!1421145 (isBalanced!3459 (++!9258 (c!606753 (BalanceConc!22269 Empty!11327)) (c!606753 (charsOf!3490 (apply!8896 lt!1201906 0))))))))

(declare-fun b!3523775 () Bool)

(declare-fun res!1421146 () Bool)

(assert (=> b!3523775 (=> (not res!1421146) (not e!2181072))))

(assert (=> b!3523775 (= res!1421146 (<= (height!1723 (++!9258 (c!606753 (BalanceConc!22269 Empty!11327)) (c!606753 (charsOf!3490 (apply!8896 lt!1201906 0))))) (+ (max!0 (height!1723 (c!606753 (BalanceConc!22269 Empty!11327))) (height!1723 (c!606753 (charsOf!3490 (apply!8896 lt!1201906 0))))) 1)))))

(assert (= (and d!1028639 res!1421144) b!3523774))

(assert (= (and b!3523774 res!1421145) b!3523775))

(assert (= (and b!3523775 res!1421146) b!3523776))

(assert (= (and b!3523776 res!1421143) b!3523777))

(declare-fun m!3976223 () Bool)

(assert (=> b!3523777 m!3976223))

(assert (=> b!3523777 m!3971545))

(assert (=> b!3523777 m!3971889))

(declare-fun m!3976225 () Bool)

(assert (=> b!3523777 m!3976225))

(assert (=> b!3523777 m!3971545))

(assert (=> b!3523777 m!3976225))

(declare-fun m!3976227 () Bool)

(assert (=> b!3523777 m!3976227))

(assert (=> b!3523775 m!3973811))

(assert (=> b!3523775 m!3973811))

(declare-fun m!3976229 () Bool)

(assert (=> b!3523775 m!3976229))

(declare-fun m!3976231 () Bool)

(assert (=> b!3523775 m!3976231))

(declare-fun m!3976233 () Bool)

(assert (=> b!3523775 m!3976233))

(assert (=> b!3523775 m!3976233))

(declare-fun m!3976235 () Bool)

(assert (=> b!3523775 m!3976235))

(assert (=> b!3523775 m!3976229))

(assert (=> b!3523774 m!3976233))

(assert (=> b!3523774 m!3976233))

(declare-fun m!3976237 () Bool)

(assert (=> b!3523774 m!3976237))

(assert (=> b!3523776 m!3973811))

(assert (=> b!3523776 m!3973811))

(assert (=> b!3523776 m!3976229))

(assert (=> b!3523776 m!3976231))

(assert (=> b!3523776 m!3976233))

(assert (=> b!3523776 m!3976233))

(assert (=> b!3523776 m!3976235))

(assert (=> b!3523776 m!3976229))

(declare-fun m!3976239 () Bool)

(assert (=> d!1028639 m!3976239))

(assert (=> d!1028639 m!3976233))

(assert (=> b!3521440 d!1028639))

(declare-fun d!1028641 () Bool)

(declare-fun lt!1203424 () Token!10318)

(assert (=> d!1028641 (= lt!1203424 (apply!8898 (list!13662 lt!1201906) 0))))

(assert (=> d!1028641 (= lt!1203424 (apply!8899 (c!606754 lt!1201906) 0))))

(declare-fun e!2181073 () Bool)

(assert (=> d!1028641 e!2181073))

(declare-fun res!1421147 () Bool)

(assert (=> d!1028641 (=> (not res!1421147) (not e!2181073))))

(assert (=> d!1028641 (= res!1421147 (<= 0 0))))

(assert (=> d!1028641 (= (apply!8896 lt!1201906 0) lt!1203424)))

(declare-fun b!3523778 () Bool)

(assert (=> b!3523778 (= e!2181073 (< 0 (size!28413 lt!1201906)))))

(assert (= (and d!1028641 res!1421147) b!3523778))

(assert (=> d!1028641 m!3971111))

(assert (=> d!1028641 m!3971111))

(declare-fun m!3976241 () Bool)

(assert (=> d!1028641 m!3976241))

(declare-fun m!3976243 () Bool)

(assert (=> d!1028641 m!3976243))

(assert (=> b!3523778 m!3971877))

(assert (=> b!3521440 d!1028641))

(assert (=> b!3521440 d!1028461))

(declare-fun d!1028643 () Bool)

(declare-fun lt!1203428 () BalanceConc!22268)

(assert (=> d!1028643 (= (list!13659 lt!1203428) (printListTailRec!718 thiss!18206 (dropList!1235 lt!1201906 (+ 0 1)) (list!13659 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201906 0))))))))

(declare-fun e!2181074 () BalanceConc!22268)

(assert (=> d!1028643 (= lt!1203428 e!2181074)))

(declare-fun c!607544 () Bool)

(assert (=> d!1028643 (= c!607544 (>= (+ 0 1) (size!28413 lt!1201906)))))

(declare-fun e!2181075 () Bool)

(assert (=> d!1028643 e!2181075))

(declare-fun res!1421148 () Bool)

(assert (=> d!1028643 (=> (not res!1421148) (not e!2181075))))

(assert (=> d!1028643 (= res!1421148 (>= (+ 0 1) 0))))

(assert (=> d!1028643 (= (printTailRec!1560 thiss!18206 lt!1201906 (+ 0 1) (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201906 0)))) lt!1203428)))

(declare-fun b!3523779 () Bool)

(assert (=> b!3523779 (= e!2181075 (<= (+ 0 1) (size!28413 lt!1201906)))))

(declare-fun b!3523780 () Bool)

(assert (=> b!3523780 (= e!2181074 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201906 0))))))

(declare-fun b!3523781 () Bool)

(assert (=> b!3523781 (= e!2181074 (printTailRec!1560 thiss!18206 lt!1201906 (+ 0 1 1) (++!9255 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (apply!8896 lt!1201906 0))) (charsOf!3490 (apply!8896 lt!1201906 (+ 0 1))))))))

(declare-fun lt!1203427 () List!37469)

(assert (=> b!3523781 (= lt!1203427 (list!13662 lt!1201906))))

(declare-fun lt!1203429 () Unit!52994)

(assert (=> b!3523781 (= lt!1203429 (lemmaDropApply!1193 lt!1203427 (+ 0 1)))))

(assert (=> b!3523781 (= (head!7387 (drop!2049 lt!1203427 (+ 0 1))) (apply!8898 lt!1203427 (+ 0 1)))))

(declare-fun lt!1203426 () Unit!52994)

(assert (=> b!3523781 (= lt!1203426 lt!1203429)))

(declare-fun lt!1203430 () List!37469)

(assert (=> b!3523781 (= lt!1203430 (list!13662 lt!1201906))))

(declare-fun lt!1203425 () Unit!52994)

(assert (=> b!3523781 (= lt!1203425 (lemmaDropTail!1077 lt!1203430 (+ 0 1)))))

(assert (=> b!3523781 (= (tail!5493 (drop!2049 lt!1203430 (+ 0 1))) (drop!2049 lt!1203430 (+ 0 1 1)))))

(declare-fun lt!1203431 () Unit!52994)

(assert (=> b!3523781 (= lt!1203431 lt!1203425)))

(assert (= (and d!1028643 res!1421148) b!3523779))

(assert (= (and d!1028643 c!607544) b!3523780))

(assert (= (and d!1028643 (not c!607544)) b!3523781))

(assert (=> d!1028643 m!3971883))

(declare-fun m!3976245 () Bool)

(assert (=> d!1028643 m!3976245))

(declare-fun m!3976247 () Bool)

(assert (=> d!1028643 m!3976247))

(assert (=> d!1028643 m!3976245))

(declare-fun m!3976249 () Bool)

(assert (=> d!1028643 m!3976249))

(assert (=> d!1028643 m!3971877))

(declare-fun m!3976251 () Bool)

(assert (=> d!1028643 m!3976251))

(assert (=> d!1028643 m!3976247))

(assert (=> b!3523779 m!3971877))

(declare-fun m!3976253 () Bool)

(assert (=> b!3523781 m!3976253))

(declare-fun m!3976255 () Bool)

(assert (=> b!3523781 m!3976255))

(declare-fun m!3976257 () Bool)

(assert (=> b!3523781 m!3976257))

(declare-fun m!3976259 () Bool)

(assert (=> b!3523781 m!3976259))

(declare-fun m!3976261 () Bool)

(assert (=> b!3523781 m!3976261))

(declare-fun m!3976263 () Bool)

(assert (=> b!3523781 m!3976263))

(declare-fun m!3976265 () Bool)

(assert (=> b!3523781 m!3976265))

(declare-fun m!3976267 () Bool)

(assert (=> b!3523781 m!3976267))

(assert (=> b!3523781 m!3976259))

(assert (=> b!3523781 m!3976265))

(assert (=> b!3523781 m!3971883))

(assert (=> b!3523781 m!3976261))

(assert (=> b!3523781 m!3976255))

(declare-fun m!3976269 () Bool)

(assert (=> b!3523781 m!3976269))

(declare-fun m!3976271 () Bool)

(assert (=> b!3523781 m!3976271))

(declare-fun m!3976273 () Bool)

(assert (=> b!3523781 m!3976273))

(assert (=> b!3523781 m!3976269))

(declare-fun m!3976275 () Bool)

(assert (=> b!3523781 m!3976275))

(assert (=> b!3523781 m!3971111))

(assert (=> b!3521440 d!1028643))

(declare-fun d!1028645 () Bool)

(declare-fun lt!1203432 () BalanceConc!22268)

(assert (=> d!1028645 (= (list!13659 lt!1203432) (originalCharacters!6190 (apply!8896 lt!1201906 0)))))

(assert (=> d!1028645 (= lt!1203432 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201906 0)))) (value!176526 (apply!8896 lt!1201906 0))))))

(assert (=> d!1028645 (= (charsOf!3490 (apply!8896 lt!1201906 0)) lt!1203432)))

(declare-fun b_lambda!102947 () Bool)

(assert (=> (not b_lambda!102947) (not d!1028645)))

(declare-fun tb!197073 () Bool)

(declare-fun t!282190 () Bool)

(assert (=> (and b!3520728 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201906 0))))) t!282190) tb!197073))

(declare-fun b!3523782 () Bool)

(declare-fun e!2181076 () Bool)

(declare-fun tp!1087210 () Bool)

(assert (=> b!3523782 (= e!2181076 (and (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201906 0)))) (value!176526 (apply!8896 lt!1201906 0))))) tp!1087210))))

(declare-fun result!241448 () Bool)

(assert (=> tb!197073 (= result!241448 (and (inv!50582 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201906 0)))) (value!176526 (apply!8896 lt!1201906 0)))) e!2181076))))

(assert (= tb!197073 b!3523782))

(declare-fun m!3976277 () Bool)

(assert (=> b!3523782 m!3976277))

(declare-fun m!3976279 () Bool)

(assert (=> tb!197073 m!3976279))

(assert (=> d!1028645 t!282190))

(declare-fun b_and!251157 () Bool)

(assert (= b_and!251151 (and (=> t!282190 result!241448) b_and!251157)))

(declare-fun t!282192 () Bool)

(declare-fun tb!197075 () Bool)

(assert (=> (and b!3520698 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201906 0))))) t!282192) tb!197075))

(declare-fun result!241450 () Bool)

(assert (= result!241450 result!241448))

(assert (=> d!1028645 t!282192))

(declare-fun b_and!251159 () Bool)

(assert (= b_and!251155 (and (=> t!282192 result!241450) b_and!251159)))

(declare-fun tb!197077 () Bool)

(declare-fun t!282194 () Bool)

(assert (=> (and b!3521754 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201906 0))))) t!282194) tb!197077))

(declare-fun result!241452 () Bool)

(assert (= result!241452 result!241448))

(assert (=> d!1028645 t!282194))

(declare-fun b_and!251161 () Bool)

(assert (= b_and!251153 (and (=> t!282194 result!241452) b_and!251161)))

(declare-fun t!282196 () Bool)

(declare-fun tb!197079 () Bool)

(assert (=> (and b!3521743 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201906 0))))) t!282196) tb!197079))

(declare-fun result!241454 () Bool)

(assert (= result!241454 result!241448))

(assert (=> d!1028645 t!282196))

(declare-fun b_and!251163 () Bool)

(assert (= b_and!251149 (and (=> t!282196 result!241454) b_and!251163)))

(declare-fun t!282198 () Bool)

(declare-fun tb!197081 () Bool)

(assert (=> (and b!3520694 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201906 0))))) t!282198) tb!197081))

(declare-fun result!241456 () Bool)

(assert (= result!241456 result!241448))

(assert (=> d!1028645 t!282198))

(declare-fun b_and!251165 () Bool)

(assert (= b_and!251147 (and (=> t!282198 result!241456) b_and!251165)))

(declare-fun m!3976281 () Bool)

(assert (=> d!1028645 m!3976281))

(declare-fun m!3976283 () Bool)

(assert (=> d!1028645 m!3976283))

(assert (=> b!3521440 d!1028645))

(declare-fun d!1028647 () Bool)

(declare-fun e!2181078 () Bool)

(assert (=> d!1028647 e!2181078))

(declare-fun res!1421149 () Bool)

(assert (=> d!1028647 (=> (not res!1421149) (not e!2181078))))

(declare-fun lt!1203433 () List!37469)

(assert (=> d!1028647 (= res!1421149 (= ((_ map implies) (content!5266 lt!1203433) (content!5266 lt!1202268)) ((as const (InoxSet Token!10318)) true)))))

(declare-fun e!2181077 () List!37469)

(assert (=> d!1028647 (= lt!1203433 e!2181077)))

(declare-fun c!607545 () Bool)

(assert (=> d!1028647 (= c!607545 ((_ is Nil!37345) lt!1202268))))

(assert (=> d!1028647 (= (drop!2049 lt!1202268 (+ 0 1)) lt!1203433)))

(declare-fun b!3523783 () Bool)

(declare-fun e!2181080 () List!37469)

(assert (=> b!3523783 (= e!2181080 (drop!2049 (t!281700 lt!1202268) (- (+ 0 1) 1)))))

(declare-fun bm!254643 () Bool)

(declare-fun call!254648 () Int)

(assert (=> bm!254643 (= call!254648 (size!28417 lt!1202268))))

(declare-fun b!3523784 () Bool)

(declare-fun e!2181079 () Int)

(assert (=> b!3523784 (= e!2181078 (= (size!28417 lt!1203433) e!2181079))))

(declare-fun c!607547 () Bool)

(assert (=> b!3523784 (= c!607547 (<= (+ 0 1) 0))))

(declare-fun b!3523785 () Bool)

(assert (=> b!3523785 (= e!2181079 call!254648)))

(declare-fun b!3523786 () Bool)

(assert (=> b!3523786 (= e!2181077 e!2181080)))

(declare-fun c!607546 () Bool)

(assert (=> b!3523786 (= c!607546 (<= (+ 0 1) 0))))

(declare-fun b!3523787 () Bool)

(declare-fun e!2181081 () Int)

(assert (=> b!3523787 (= e!2181081 0)))

(declare-fun b!3523788 () Bool)

(assert (=> b!3523788 (= e!2181081 (- call!254648 (+ 0 1)))))

(declare-fun b!3523789 () Bool)

(assert (=> b!3523789 (= e!2181080 lt!1202268)))

(declare-fun b!3523790 () Bool)

(assert (=> b!3523790 (= e!2181077 Nil!37345)))

(declare-fun b!3523791 () Bool)

(assert (=> b!3523791 (= e!2181079 e!2181081)))

(declare-fun c!607548 () Bool)

(assert (=> b!3523791 (= c!607548 (>= (+ 0 1) call!254648))))

(assert (= (and d!1028647 c!607545) b!3523790))

(assert (= (and d!1028647 (not c!607545)) b!3523786))

(assert (= (and b!3523786 c!607546) b!3523789))

(assert (= (and b!3523786 (not c!607546)) b!3523783))

(assert (= (and d!1028647 res!1421149) b!3523784))

(assert (= (and b!3523784 c!607547) b!3523785))

(assert (= (and b!3523784 (not c!607547)) b!3523791))

(assert (= (and b!3523791 c!607548) b!3523787))

(assert (= (and b!3523791 (not c!607548)) b!3523788))

(assert (= (or b!3523785 b!3523791 b!3523788) bm!254643))

(declare-fun m!3976285 () Bool)

(assert (=> d!1028647 m!3976285))

(declare-fun m!3976287 () Bool)

(assert (=> d!1028647 m!3976287))

(declare-fun m!3976289 () Bool)

(assert (=> b!3523783 m!3976289))

(declare-fun m!3976291 () Bool)

(assert (=> bm!254643 m!3976291))

(declare-fun m!3976293 () Bool)

(assert (=> b!3523784 m!3976293))

(assert (=> b!3521440 d!1028647))

(declare-fun d!1028649 () Bool)

(declare-fun e!2181083 () Bool)

(assert (=> d!1028649 e!2181083))

(declare-fun res!1421150 () Bool)

(assert (=> d!1028649 (=> (not res!1421150) (not e!2181083))))

(declare-fun lt!1203434 () List!37469)

(assert (=> d!1028649 (= res!1421150 (= ((_ map implies) (content!5266 lt!1203434) (content!5266 lt!1202268)) ((as const (InoxSet Token!10318)) true)))))

(declare-fun e!2181082 () List!37469)

(assert (=> d!1028649 (= lt!1203434 e!2181082)))

(declare-fun c!607549 () Bool)

(assert (=> d!1028649 (= c!607549 ((_ is Nil!37345) lt!1202268))))

(assert (=> d!1028649 (= (drop!2049 lt!1202268 0) lt!1203434)))

(declare-fun b!3523792 () Bool)

(declare-fun e!2181085 () List!37469)

(assert (=> b!3523792 (= e!2181085 (drop!2049 (t!281700 lt!1202268) (- 0 1)))))

(declare-fun bm!254644 () Bool)

(declare-fun call!254649 () Int)

(assert (=> bm!254644 (= call!254649 (size!28417 lt!1202268))))

(declare-fun b!3523793 () Bool)

(declare-fun e!2181084 () Int)

(assert (=> b!3523793 (= e!2181083 (= (size!28417 lt!1203434) e!2181084))))

(declare-fun c!607551 () Bool)

(assert (=> b!3523793 (= c!607551 (<= 0 0))))

(declare-fun b!3523794 () Bool)

(assert (=> b!3523794 (= e!2181084 call!254649)))

(declare-fun b!3523795 () Bool)

(assert (=> b!3523795 (= e!2181082 e!2181085)))

(declare-fun c!607550 () Bool)

(assert (=> b!3523795 (= c!607550 (<= 0 0))))

(declare-fun b!3523796 () Bool)

(declare-fun e!2181086 () Int)

(assert (=> b!3523796 (= e!2181086 0)))

(declare-fun b!3523797 () Bool)

(assert (=> b!3523797 (= e!2181086 (- call!254649 0))))

(declare-fun b!3523798 () Bool)

(assert (=> b!3523798 (= e!2181085 lt!1202268)))

(declare-fun b!3523799 () Bool)

(assert (=> b!3523799 (= e!2181082 Nil!37345)))

(declare-fun b!3523800 () Bool)

(assert (=> b!3523800 (= e!2181084 e!2181086)))

(declare-fun c!607552 () Bool)

(assert (=> b!3523800 (= c!607552 (>= 0 call!254649))))

(assert (= (and d!1028649 c!607549) b!3523799))

(assert (= (and d!1028649 (not c!607549)) b!3523795))

(assert (= (and b!3523795 c!607550) b!3523798))

(assert (= (and b!3523795 (not c!607550)) b!3523792))

(assert (= (and d!1028649 res!1421150) b!3523793))

(assert (= (and b!3523793 c!607551) b!3523794))

(assert (= (and b!3523793 (not c!607551)) b!3523800))

(assert (= (and b!3523800 c!607552) b!3523796))

(assert (= (and b!3523800 (not c!607552)) b!3523797))

(assert (= (or b!3523794 b!3523800 b!3523797) bm!254644))

(declare-fun m!3976295 () Bool)

(assert (=> d!1028649 m!3976295))

(assert (=> d!1028649 m!3976287))

(declare-fun m!3976297 () Bool)

(assert (=> b!3523792 m!3976297))

(assert (=> bm!254644 m!3976291))

(declare-fun m!3976299 () Bool)

(assert (=> b!3523793 m!3976299))

(assert (=> b!3521440 d!1028649))

(declare-fun d!1028651 () Bool)

(declare-fun lt!1203435 () Token!10318)

(assert (=> d!1028651 (contains!7008 lt!1202265 lt!1203435)))

(declare-fun e!2181087 () Token!10318)

(assert (=> d!1028651 (= lt!1203435 e!2181087)))

(declare-fun c!607553 () Bool)

(assert (=> d!1028651 (= c!607553 (= 0 0))))

(declare-fun e!2181088 () Bool)

(assert (=> d!1028651 e!2181088))

(declare-fun res!1421151 () Bool)

(assert (=> d!1028651 (=> (not res!1421151) (not e!2181088))))

(assert (=> d!1028651 (= res!1421151 (<= 0 0))))

(assert (=> d!1028651 (= (apply!8898 lt!1202265 0) lt!1203435)))

(declare-fun b!3523801 () Bool)

(assert (=> b!3523801 (= e!2181088 (< 0 (size!28417 lt!1202265)))))

(declare-fun b!3523802 () Bool)

(assert (=> b!3523802 (= e!2181087 (head!7387 lt!1202265))))

(declare-fun b!3523803 () Bool)

(assert (=> b!3523803 (= e!2181087 (apply!8898 (tail!5493 lt!1202265) (- 0 1)))))

(assert (= (and d!1028651 res!1421151) b!3523801))

(assert (= (and d!1028651 c!607553) b!3523802))

(assert (= (and d!1028651 (not c!607553)) b!3523803))

(declare-fun m!3976301 () Bool)

(assert (=> d!1028651 m!3976301))

(declare-fun m!3976303 () Bool)

(assert (=> b!3523801 m!3976303))

(declare-fun m!3976305 () Bool)

(assert (=> b!3523802 m!3976305))

(declare-fun m!3976307 () Bool)

(assert (=> b!3523803 m!3976307))

(assert (=> b!3523803 m!3976307))

(declare-fun m!3976309 () Bool)

(assert (=> b!3523803 m!3976309))

(assert (=> b!3521440 d!1028651))

(declare-fun d!1028653 () Bool)

(assert (=> d!1028653 (= (head!7387 (drop!2049 lt!1202265 0)) (apply!8898 lt!1202265 0))))

(declare-fun lt!1203436 () Unit!52994)

(assert (=> d!1028653 (= lt!1203436 (choose!20455 lt!1202265 0))))

(declare-fun e!2181089 () Bool)

(assert (=> d!1028653 e!2181089))

(declare-fun res!1421152 () Bool)

(assert (=> d!1028653 (=> (not res!1421152) (not e!2181089))))

(assert (=> d!1028653 (= res!1421152 (>= 0 0))))

(assert (=> d!1028653 (= (lemmaDropApply!1193 lt!1202265 0) lt!1203436)))

(declare-fun b!3523804 () Bool)

(assert (=> b!3523804 (= e!2181089 (< 0 (size!28417 lt!1202265)))))

(assert (= (and d!1028653 res!1421152) b!3523804))

(assert (=> d!1028653 m!3971893))

(assert (=> d!1028653 m!3971893))

(assert (=> d!1028653 m!3971895))

(assert (=> d!1028653 m!3971891))

(declare-fun m!3976311 () Bool)

(assert (=> d!1028653 m!3976311))

(assert (=> b!3523804 m!3976303))

(assert (=> b!3521440 d!1028653))

(declare-fun d!1028655 () Bool)

(declare-fun e!2181091 () Bool)

(assert (=> d!1028655 e!2181091))

(declare-fun res!1421153 () Bool)

(assert (=> d!1028655 (=> (not res!1421153) (not e!2181091))))

(declare-fun lt!1203437 () List!37469)

(assert (=> d!1028655 (= res!1421153 (= ((_ map implies) (content!5266 lt!1203437) (content!5266 lt!1202265)) ((as const (InoxSet Token!10318)) true)))))

(declare-fun e!2181090 () List!37469)

(assert (=> d!1028655 (= lt!1203437 e!2181090)))

(declare-fun c!607554 () Bool)

(assert (=> d!1028655 (= c!607554 ((_ is Nil!37345) lt!1202265))))

(assert (=> d!1028655 (= (drop!2049 lt!1202265 0) lt!1203437)))

(declare-fun b!3523805 () Bool)

(declare-fun e!2181093 () List!37469)

(assert (=> b!3523805 (= e!2181093 (drop!2049 (t!281700 lt!1202265) (- 0 1)))))

(declare-fun bm!254645 () Bool)

(declare-fun call!254650 () Int)

(assert (=> bm!254645 (= call!254650 (size!28417 lt!1202265))))

(declare-fun b!3523806 () Bool)

(declare-fun e!2181092 () Int)

(assert (=> b!3523806 (= e!2181091 (= (size!28417 lt!1203437) e!2181092))))

(declare-fun c!607556 () Bool)

(assert (=> b!3523806 (= c!607556 (<= 0 0))))

(declare-fun b!3523807 () Bool)

(assert (=> b!3523807 (= e!2181092 call!254650)))

(declare-fun b!3523808 () Bool)

(assert (=> b!3523808 (= e!2181090 e!2181093)))

(declare-fun c!607555 () Bool)

(assert (=> b!3523808 (= c!607555 (<= 0 0))))

(declare-fun b!3523809 () Bool)

(declare-fun e!2181094 () Int)

(assert (=> b!3523809 (= e!2181094 0)))

(declare-fun b!3523810 () Bool)

(assert (=> b!3523810 (= e!2181094 (- call!254650 0))))

(declare-fun b!3523811 () Bool)

(assert (=> b!3523811 (= e!2181093 lt!1202265)))

(declare-fun b!3523812 () Bool)

(assert (=> b!3523812 (= e!2181090 Nil!37345)))

(declare-fun b!3523813 () Bool)

(assert (=> b!3523813 (= e!2181092 e!2181094)))

(declare-fun c!607557 () Bool)

(assert (=> b!3523813 (= c!607557 (>= 0 call!254650))))

(assert (= (and d!1028655 c!607554) b!3523812))

(assert (= (and d!1028655 (not c!607554)) b!3523808))

(assert (= (and b!3523808 c!607555) b!3523811))

(assert (= (and b!3523808 (not c!607555)) b!3523805))

(assert (= (and d!1028655 res!1421153) b!3523806))

(assert (= (and b!3523806 c!607556) b!3523807))

(assert (= (and b!3523806 (not c!607556)) b!3523813))

(assert (= (and b!3523813 c!607557) b!3523809))

(assert (= (and b!3523813 (not c!607557)) b!3523810))

(assert (= (or b!3523807 b!3523813 b!3523810) bm!254645))

(declare-fun m!3976313 () Bool)

(assert (=> d!1028655 m!3976313))

(declare-fun m!3976315 () Bool)

(assert (=> d!1028655 m!3976315))

(declare-fun m!3976317 () Bool)

(assert (=> b!3523805 m!3976317))

(assert (=> bm!254645 m!3976303))

(declare-fun m!3976319 () Bool)

(assert (=> b!3523806 m!3976319))

(assert (=> b!3521440 d!1028655))

(declare-fun d!1028657 () Bool)

(assert (=> d!1028657 (= (tail!5493 (drop!2049 lt!1202268 0)) (drop!2049 lt!1202268 (+ 0 1)))))

(declare-fun lt!1203438 () Unit!52994)

(assert (=> d!1028657 (= lt!1203438 (choose!20456 lt!1202268 0))))

(declare-fun e!2181095 () Bool)

(assert (=> d!1028657 e!2181095))

(declare-fun res!1421154 () Bool)

(assert (=> d!1028657 (=> (not res!1421154) (not e!2181095))))

(assert (=> d!1028657 (= res!1421154 (>= 0 0))))

(assert (=> d!1028657 (= (lemmaDropTail!1077 lt!1202268 0) lt!1203438)))

(declare-fun b!3523814 () Bool)

(assert (=> b!3523814 (= e!2181095 (< 0 (size!28417 lt!1202268)))))

(assert (= (and d!1028657 res!1421154) b!3523814))

(assert (=> d!1028657 m!3971897))

(assert (=> d!1028657 m!3971897))

(assert (=> d!1028657 m!3971899))

(assert (=> d!1028657 m!3971881))

(declare-fun m!3976321 () Bool)

(assert (=> d!1028657 m!3976321))

(assert (=> b!3523814 m!3976291))

(assert (=> b!3521440 d!1028657))

(assert (=> d!1027275 d!1028515))

(declare-fun d!1028659 () Bool)

(declare-fun c!607558 () Bool)

(assert (=> d!1028659 (= c!607558 ((_ is Nil!37343) lt!1202030))))

(declare-fun e!2181096 () (InoxSet C!20656))

(assert (=> d!1028659 (= (content!5263 lt!1202030) e!2181096)))

(declare-fun b!3523815 () Bool)

(assert (=> b!3523815 (= e!2181096 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3523816 () Bool)

(assert (=> b!3523816 (= e!2181096 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 lt!1202030) true) (content!5263 (t!281698 lt!1202030))))))

(assert (= (and d!1028659 c!607558) b!3523815))

(assert (= (and d!1028659 (not c!607558)) b!3523816))

(declare-fun m!3976323 () Bool)

(assert (=> b!3523816 m!3976323))

(declare-fun m!3976325 () Bool)

(assert (=> b!3523816 m!3976325))

(assert (=> d!1026997 d!1028659))

(declare-fun d!1028661 () Bool)

(declare-fun c!607559 () Bool)

(assert (=> d!1028661 (= c!607559 ((_ is Nil!37343) lt!1201911))))

(declare-fun e!2181097 () (InoxSet C!20656))

(assert (=> d!1028661 (= (content!5263 lt!1201911) e!2181097)))

(declare-fun b!3523817 () Bool)

(assert (=> b!3523817 (= e!2181097 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3523818 () Bool)

(assert (=> b!3523818 (= e!2181097 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 lt!1201911) true) (content!5263 (t!281698 lt!1201911))))))

(assert (= (and d!1028661 c!607559) b!3523817))

(assert (= (and d!1028661 (not c!607559)) b!3523818))

(declare-fun m!3976327 () Bool)

(assert (=> b!3523818 m!3976327))

(declare-fun m!3976329 () Bool)

(assert (=> b!3523818 m!3976329))

(assert (=> d!1026997 d!1028661))

(assert (=> d!1026997 d!1028517))

(declare-fun d!1028663 () Bool)

(declare-fun lt!1203439 () Int)

(assert (=> d!1028663 (= lt!1203439 (size!28417 (list!13662 (_1!21722 lt!1202034))))))

(assert (=> d!1028663 (= lt!1203439 (size!28418 (c!606754 (_1!21722 lt!1202034))))))

(assert (=> d!1028663 (= (size!28413 (_1!21722 lt!1202034)) lt!1203439)))

(declare-fun bs!565573 () Bool)

(assert (= bs!565573 d!1028663))

(declare-fun m!3976331 () Bool)

(assert (=> bs!565573 m!3976331))

(assert (=> bs!565573 m!3976331))

(declare-fun m!3976333 () Bool)

(assert (=> bs!565573 m!3976333))

(declare-fun m!3976335 () Bool)

(assert (=> bs!565573 m!3976335))

(assert (=> d!1026999 d!1028663))

(declare-fun d!1028665 () Bool)

(assert (=> d!1028665 (= (list!13662 (singletonSeq!2572 separatorToken!241)) (list!13665 (c!606754 (singletonSeq!2572 separatorToken!241))))))

(declare-fun bs!565574 () Bool)

(assert (= bs!565574 d!1028665))

(declare-fun m!3976337 () Bool)

(assert (=> bs!565574 m!3976337))

(assert (=> d!1026999 d!1028665))

(declare-fun d!1028667 () Bool)

(assert (=> d!1028667 (= (list!13662 (_1!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 separatorToken!241))))) (list!13665 (c!606754 (_1!21722 (lex!2391 thiss!18206 rules!2135 (print!2130 thiss!18206 (singletonSeq!2572 separatorToken!241)))))))))

(declare-fun bs!565575 () Bool)

(assert (= bs!565575 d!1028667))

(declare-fun m!3976339 () Bool)

(assert (=> bs!565575 m!3976339))

(assert (=> d!1026999 d!1028667))

(assert (=> d!1026999 d!1027125))

(assert (=> d!1026999 d!1028503))

(assert (=> d!1026999 d!1027281))

(assert (=> d!1026999 d!1028501))

(declare-fun d!1028669 () Bool)

(assert (=> d!1028669 (= (isDefined!5872 lt!1202070) (not (isEmpty!21815 lt!1202070)))))

(declare-fun bs!565576 () Bool)

(assert (= bs!565576 d!1028669))

(assert (=> bs!565576 m!3971083))

(assert (=> b!3521027 d!1028669))

(declare-fun b!3523820 () Bool)

(declare-fun res!1421155 () Bool)

(declare-fun e!2181101 () Bool)

(assert (=> b!3523820 (=> (not res!1421155) (not e!2181101))))

(assert (=> b!3523820 (= res!1421155 (isEmpty!21812 (tail!5490 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 (size!28412 Nil!37343) lt!1201911 lt!1201911 (size!28412 lt!1201911))))))))

(declare-fun bm!254646 () Bool)

(declare-fun call!254651 () Bool)

(assert (=> bm!254646 (= call!254651 (isEmpty!21812 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 (size!28412 Nil!37343) lt!1201911 lt!1201911 (size!28412 lt!1201911)))))))

(declare-fun b!3523821 () Bool)

(declare-fun res!1421162 () Bool)

(declare-fun e!2181104 () Bool)

(assert (=> b!3523821 (=> res!1421162 e!2181104)))

(assert (=> b!3523821 (= res!1421162 e!2181101)))

(declare-fun res!1421160 () Bool)

(assert (=> b!3523821 (=> (not res!1421160) (not e!2181101))))

(declare-fun lt!1203440 () Bool)

(assert (=> b!3523821 (= res!1421160 lt!1203440)))

(declare-fun b!3523822 () Bool)

(declare-fun res!1421158 () Bool)

(assert (=> b!3523822 (=> (not res!1421158) (not e!2181101))))

(assert (=> b!3523822 (= res!1421158 (not call!254651))))

(declare-fun b!3523823 () Bool)

(declare-fun e!2181102 () Bool)

(assert (=> b!3523823 (= e!2181104 e!2181102)))

(declare-fun res!1421159 () Bool)

(assert (=> b!3523823 (=> (not res!1421159) (not e!2181102))))

(assert (=> b!3523823 (= res!1421159 (not lt!1203440))))

(declare-fun b!3523824 () Bool)

(declare-fun e!2181103 () Bool)

(assert (=> b!3523824 (= e!2181103 (not (= (head!7385 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 (size!28412 Nil!37343) lt!1201911 lt!1201911 (size!28412 lt!1201911)))) (c!606752 (regex!5476 (rule!8122 (h!42765 tokens!494)))))))))

(declare-fun b!3523825 () Bool)

(declare-fun e!2181098 () Bool)

(declare-fun e!2181099 () Bool)

(assert (=> b!3523825 (= e!2181098 e!2181099)))

(declare-fun c!607561 () Bool)

(assert (=> b!3523825 (= c!607561 ((_ is EmptyLang!10235) (regex!5476 (rule!8122 (h!42765 tokens!494)))))))

(declare-fun b!3523826 () Bool)

(declare-fun e!2181100 () Bool)

(assert (=> b!3523826 (= e!2181100 (matchR!4819 (derivativeStep!3070 (regex!5476 (rule!8122 (h!42765 tokens!494))) (head!7385 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 (size!28412 Nil!37343) lt!1201911 lt!1201911 (size!28412 lt!1201911))))) (tail!5490 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 (size!28412 Nil!37343) lt!1201911 lt!1201911 (size!28412 lt!1201911))))))))

(declare-fun b!3523827 () Bool)

(assert (=> b!3523827 (= e!2181100 (nullable!3517 (regex!5476 (rule!8122 (h!42765 tokens!494)))))))

(declare-fun b!3523819 () Bool)

(declare-fun res!1421157 () Bool)

(assert (=> b!3523819 (=> res!1421157 e!2181103)))

(assert (=> b!3523819 (= res!1421157 (not (isEmpty!21812 (tail!5490 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 (size!28412 Nil!37343) lt!1201911 lt!1201911 (size!28412 lt!1201911)))))))))

(declare-fun d!1028671 () Bool)

(assert (=> d!1028671 e!2181098))

(declare-fun c!607560 () Bool)

(assert (=> d!1028671 (= c!607560 ((_ is EmptyExpr!10235) (regex!5476 (rule!8122 (h!42765 tokens!494)))))))

(assert (=> d!1028671 (= lt!1203440 e!2181100)))

(declare-fun c!607562 () Bool)

(assert (=> d!1028671 (= c!607562 (isEmpty!21812 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 (size!28412 Nil!37343) lt!1201911 lt!1201911 (size!28412 lt!1201911)))))))

(assert (=> d!1028671 (validRegex!4674 (regex!5476 (rule!8122 (h!42765 tokens!494))))))

(assert (=> d!1028671 (= (matchR!4819 (regex!5476 (rule!8122 (h!42765 tokens!494))) (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 (size!28412 Nil!37343) lt!1201911 lt!1201911 (size!28412 lt!1201911)))) lt!1203440)))

(declare-fun b!3523828 () Bool)

(assert (=> b!3523828 (= e!2181098 (= lt!1203440 call!254651))))

(declare-fun b!3523829 () Bool)

(declare-fun res!1421156 () Bool)

(assert (=> b!3523829 (=> res!1421156 e!2181104)))

(assert (=> b!3523829 (= res!1421156 (not ((_ is ElementMatch!10235) (regex!5476 (rule!8122 (h!42765 tokens!494))))))))

(assert (=> b!3523829 (= e!2181099 e!2181104)))

(declare-fun b!3523830 () Bool)

(assert (=> b!3523830 (= e!2181099 (not lt!1203440))))

(declare-fun b!3523831 () Bool)

(assert (=> b!3523831 (= e!2181101 (= (head!7385 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 tokens!494))) Nil!37343 (size!28412 Nil!37343) lt!1201911 lt!1201911 (size!28412 lt!1201911)))) (c!606752 (regex!5476 (rule!8122 (h!42765 tokens!494))))))))

(declare-fun b!3523832 () Bool)

(assert (=> b!3523832 (= e!2181102 e!2181103)))

(declare-fun res!1421161 () Bool)

(assert (=> b!3523832 (=> res!1421161 e!2181103)))

(assert (=> b!3523832 (= res!1421161 call!254651)))

(assert (= (and d!1028671 c!607562) b!3523827))

(assert (= (and d!1028671 (not c!607562)) b!3523826))

(assert (= (and d!1028671 c!607560) b!3523828))

(assert (= (and d!1028671 (not c!607560)) b!3523825))

(assert (= (and b!3523825 c!607561) b!3523830))

(assert (= (and b!3523825 (not c!607561)) b!3523829))

(assert (= (and b!3523829 (not res!1421156)) b!3523821))

(assert (= (and b!3523821 res!1421160) b!3523822))

(assert (= (and b!3523822 res!1421158) b!3523820))

(assert (= (and b!3523820 res!1421155) b!3523831))

(assert (= (and b!3523821 (not res!1421162)) b!3523823))

(assert (= (and b!3523823 res!1421159) b!3523832))

(assert (= (and b!3523832 (not res!1421161)) b!3523819))

(assert (= (and b!3523819 (not res!1421157)) b!3523824))

(assert (= (or b!3523828 b!3523822 b!3523832) bm!254646))

(assert (=> d!1028671 m!3972017))

(assert (=> d!1028671 m!3973633))

(declare-fun m!3976341 () Bool)

(assert (=> b!3523819 m!3976341))

(assert (=> b!3523819 m!3976341))

(declare-fun m!3976343 () Bool)

(assert (=> b!3523819 m!3976343))

(assert (=> bm!254646 m!3972017))

(declare-fun m!3976345 () Bool)

(assert (=> b!3523826 m!3976345))

(assert (=> b!3523826 m!3976345))

(declare-fun m!3976347 () Bool)

(assert (=> b!3523826 m!3976347))

(assert (=> b!3523826 m!3976341))

(assert (=> b!3523826 m!3976347))

(assert (=> b!3523826 m!3976341))

(declare-fun m!3976349 () Bool)

(assert (=> b!3523826 m!3976349))

(assert (=> b!3523831 m!3976345))

(assert (=> b!3523827 m!3973673))

(assert (=> b!3523824 m!3976345))

(assert (=> b!3523820 m!3976341))

(assert (=> b!3523820 m!3976341))

(assert (=> b!3523820 m!3976343))

(assert (=> b!3521497 d!1028671))

(assert (=> b!3521497 d!1027925))

(assert (=> b!3521497 d!1028051))

(assert (=> b!3521497 d!1027195))

(declare-fun d!1028673 () Bool)

(assert (=> d!1028673 (= (inv!50574 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))) (= (mod (str.len (value!176525 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494)))))) 2) 0))))

(assert (=> b!3521742 d!1028673))

(declare-fun d!1028675 () Bool)

(declare-fun res!1421163 () Bool)

(declare-fun e!2181105 () Bool)

(assert (=> d!1028675 (=> (not res!1421163) (not e!2181105))))

(assert (=> d!1028675 (= res!1421163 (semiInverseModEq!2312 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(assert (=> d!1028675 (= (inv!50578 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) e!2181105)))

(declare-fun b!3523833 () Bool)

(assert (=> b!3523833 (= e!2181105 (equivClasses!2211 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(assert (= (and d!1028675 res!1421163) b!3523833))

(declare-fun m!3976351 () Bool)

(assert (=> d!1028675 m!3976351))

(declare-fun m!3976353 () Bool)

(assert (=> b!3523833 m!3976353))

(assert (=> b!3521742 d!1028675))

(declare-fun d!1028677 () Bool)

(assert (=> d!1028677 (= (isEmpty!21814 lt!1201948) (not ((_ is Some!7612) lt!1201948)))))

(assert (=> d!1027117 d!1028677))

(declare-fun b!3523835 () Bool)

(declare-fun e!2181106 () List!37467)

(assert (=> b!3523835 (= e!2181106 (Cons!37343 (h!42763 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279))))) (++!9253 (t!281698 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279))))) (_2!21723 (get!11991 lt!1202279)))))))

(declare-fun d!1028679 () Bool)

(declare-fun e!2181107 () Bool)

(assert (=> d!1028679 e!2181107))

(declare-fun res!1421165 () Bool)

(assert (=> d!1028679 (=> (not res!1421165) (not e!2181107))))

(declare-fun lt!1203441 () List!37467)

(assert (=> d!1028679 (= res!1421165 (= (content!5263 lt!1203441) ((_ map or) (content!5263 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279))))) (content!5263 (_2!21723 (get!11991 lt!1202279))))))))

(assert (=> d!1028679 (= lt!1203441 e!2181106)))

(declare-fun c!607563 () Bool)

(assert (=> d!1028679 (= c!607563 ((_ is Nil!37343) (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279))))))))

(assert (=> d!1028679 (= (++!9253 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279)))) (_2!21723 (get!11991 lt!1202279))) lt!1203441)))

(declare-fun b!3523836 () Bool)

(declare-fun res!1421164 () Bool)

(assert (=> b!3523836 (=> (not res!1421164) (not e!2181107))))

(assert (=> b!3523836 (= res!1421164 (= (size!28412 lt!1203441) (+ (size!28412 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279))))) (size!28412 (_2!21723 (get!11991 lt!1202279))))))))

(declare-fun b!3523834 () Bool)

(assert (=> b!3523834 (= e!2181106 (_2!21723 (get!11991 lt!1202279)))))

(declare-fun b!3523837 () Bool)

(assert (=> b!3523837 (= e!2181107 (or (not (= (_2!21723 (get!11991 lt!1202279)) Nil!37343)) (= lt!1203441 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202279)))))))))

(assert (= (and d!1028679 c!607563) b!3523834))

(assert (= (and d!1028679 (not c!607563)) b!3523835))

(assert (= (and d!1028679 res!1421165) b!3523836))

(assert (= (and b!3523836 res!1421164) b!3523837))

(declare-fun m!3976355 () Bool)

(assert (=> b!3523835 m!3976355))

(declare-fun m!3976357 () Bool)

(assert (=> d!1028679 m!3976357))

(assert (=> d!1028679 m!3971991))

(declare-fun m!3976359 () Bool)

(assert (=> d!1028679 m!3976359))

(declare-fun m!3976361 () Bool)

(assert (=> d!1028679 m!3976361))

(declare-fun m!3976363 () Bool)

(assert (=> b!3523836 m!3976363))

(assert (=> b!3523836 m!3971991))

(declare-fun m!3976365 () Bool)

(assert (=> b!3523836 m!3976365))

(assert (=> b!3523836 m!3971983))

(assert (=> b!3521489 d!1028679))

(assert (=> b!3521489 d!1028549))

(assert (=> b!3521489 d!1028551))

(assert (=> b!3521489 d!1027761))

(declare-fun d!1028681 () Bool)

(assert (=> d!1028681 (= (nullable!3517 (regex!5476 lt!1201935)) (nullableFct!1023 (regex!5476 lt!1201935)))))

(declare-fun bs!565577 () Bool)

(assert (= bs!565577 d!1028681))

(declare-fun m!3976367 () Bool)

(assert (=> bs!565577 m!3976367))

(assert (=> b!3520811 d!1028681))

(assert (=> b!3521691 d!1027027))

(declare-fun d!1028683 () Bool)

(declare-fun lt!1203442 () Int)

(assert (=> d!1028683 (>= lt!1203442 0)))

(declare-fun e!2181108 () Int)

(assert (=> d!1028683 (= lt!1203442 e!2181108)))

(declare-fun c!607564 () Bool)

(assert (=> d!1028683 (= c!607564 ((_ is Nil!37343) lt!1202315))))

(assert (=> d!1028683 (= (size!28412 lt!1202315) lt!1203442)))

(declare-fun b!3523838 () Bool)

(assert (=> b!3523838 (= e!2181108 0)))

(declare-fun b!3523839 () Bool)

(assert (=> b!3523839 (= e!2181108 (+ 1 (size!28412 (t!281698 lt!1202315))))))

(assert (= (and d!1028683 c!607564) b!3523838))

(assert (= (and d!1028683 (not c!607564)) b!3523839))

(declare-fun m!3976369 () Bool)

(assert (=> b!3523839 m!3976369))

(assert (=> b!3521661 d!1028683))

(declare-fun d!1028685 () Bool)

(declare-fun lt!1203443 () Int)

(assert (=> d!1028685 (>= lt!1203443 0)))

(declare-fun e!2181109 () Int)

(assert (=> d!1028685 (= lt!1203443 e!2181109)))

(declare-fun c!607565 () Bool)

(assert (=> d!1028685 (= c!607565 ((_ is Nil!37343) (++!9253 lt!1201914 lt!1201944)))))

(assert (=> d!1028685 (= (size!28412 (++!9253 lt!1201914 lt!1201944)) lt!1203443)))

(declare-fun b!3523840 () Bool)

(assert (=> b!3523840 (= e!2181109 0)))

(declare-fun b!3523841 () Bool)

(assert (=> b!3523841 (= e!2181109 (+ 1 (size!28412 (t!281698 (++!9253 lt!1201914 lt!1201944)))))))

(assert (= (and d!1028685 c!607565) b!3523840))

(assert (= (and d!1028685 (not c!607565)) b!3523841))

(declare-fun m!3976371 () Bool)

(assert (=> b!3523841 m!3976371))

(assert (=> b!3521661 d!1028685))

(declare-fun d!1028687 () Bool)

(declare-fun lt!1203444 () Int)

(assert (=> d!1028687 (>= lt!1203444 0)))

(declare-fun e!2181110 () Int)

(assert (=> d!1028687 (= lt!1203444 e!2181110)))

(declare-fun c!607566 () Bool)

(assert (=> d!1028687 (= c!607566 ((_ is Nil!37343) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)))))

(assert (=> d!1028687 (= (size!28412 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)) lt!1203444)))

(declare-fun b!3523842 () Bool)

(assert (=> b!3523842 (= e!2181110 0)))

(declare-fun b!3523843 () Bool)

(assert (=> b!3523843 (= e!2181110 (+ 1 (size!28412 (t!281698 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)))))))

(assert (= (and d!1028687 c!607566) b!3523842))

(assert (= (and d!1028687 (not c!607566)) b!3523843))

(declare-fun m!3976373 () Bool)

(assert (=> b!3523843 m!3976373))

(assert (=> b!3521661 d!1028687))

(declare-fun d!1028689 () Bool)

(assert (=> d!1028689 (= (isEmpty!21814 lt!1202243) (not ((_ is Some!7612) lt!1202243)))))

(assert (=> d!1027173 d!1028689))

(assert (=> d!1027173 d!1027011))

(declare-fun d!1028691 () Bool)

(declare-fun lt!1203445 () Token!10318)

(assert (=> d!1028691 (= lt!1203445 (apply!8898 (list!13662 (_1!21722 lt!1202009)) 0))))

(assert (=> d!1028691 (= lt!1203445 (apply!8899 (c!606754 (_1!21722 lt!1202009)) 0))))

(declare-fun e!2181111 () Bool)

(assert (=> d!1028691 e!2181111))

(declare-fun res!1421166 () Bool)

(assert (=> d!1028691 (=> (not res!1421166) (not e!2181111))))

(assert (=> d!1028691 (= res!1421166 (<= 0 0))))

(assert (=> d!1028691 (= (apply!8896 (_1!21722 lt!1202009) 0) lt!1203445)))

(declare-fun b!3523844 () Bool)

(assert (=> b!3523844 (= e!2181111 (< 0 (size!28413 (_1!21722 lt!1202009))))))

(assert (= (and d!1028691 res!1421166) b!3523844))

(assert (=> d!1028691 m!3976145))

(assert (=> d!1028691 m!3976145))

(declare-fun m!3976375 () Bool)

(assert (=> d!1028691 m!3976375))

(declare-fun m!3976377 () Bool)

(assert (=> d!1028691 m!3976377))

(assert (=> b!3523844 m!3970901))

(assert (=> b!3520912 d!1028691))

(declare-fun d!1028693 () Bool)

(assert (=> d!1028693 (= (list!13662 lt!1202177) (list!13665 (c!606754 lt!1202177)))))

(declare-fun bs!565578 () Bool)

(assert (= bs!565578 d!1028693))

(declare-fun m!3976379 () Bool)

(assert (=> bs!565578 m!3976379))

(assert (=> d!1027125 d!1028693))

(declare-fun d!1028695 () Bool)

(declare-fun e!2181114 () Bool)

(assert (=> d!1028695 e!2181114))

(declare-fun res!1421169 () Bool)

(assert (=> d!1028695 (=> (not res!1421169) (not e!2181114))))

(declare-fun lt!1203448 () BalanceConc!22270)

(assert (=> d!1028695 (= res!1421169 (= (list!13662 lt!1203448) (Cons!37345 separatorToken!241 Nil!37345)))))

(declare-fun choose!20459 (Token!10318) BalanceConc!22270)

(assert (=> d!1028695 (= lt!1203448 (choose!20459 separatorToken!241))))

(assert (=> d!1028695 (= (singleton!1150 separatorToken!241) lt!1203448)))

(declare-fun b!3523847 () Bool)

(assert (=> b!3523847 (= e!2181114 (isBalanced!3457 (c!606754 lt!1203448)))))

(assert (= (and d!1028695 res!1421169) b!3523847))

(declare-fun m!3976381 () Bool)

(assert (=> d!1028695 m!3976381))

(declare-fun m!3976383 () Bool)

(assert (=> d!1028695 m!3976383))

(declare-fun m!3976385 () Bool)

(assert (=> b!3523847 m!3976385))

(assert (=> d!1027125 d!1028695))

(assert (=> b!3521270 d!1028573))

(assert (=> b!3521270 d!1027173))

(declare-fun b!3523849 () Bool)

(declare-fun res!1421170 () Bool)

(declare-fun e!2181118 () Bool)

(assert (=> b!3523849 (=> (not res!1421170) (not e!2181118))))

(assert (=> b!3523849 (= res!1421170 (isEmpty!21812 (tail!5490 (list!13659 (charsOf!3490 separatorToken!241)))))))

(declare-fun bm!254647 () Bool)

(declare-fun call!254652 () Bool)

(assert (=> bm!254647 (= call!254652 (isEmpty!21812 (list!13659 (charsOf!3490 separatorToken!241))))))

(declare-fun b!3523850 () Bool)

(declare-fun res!1421177 () Bool)

(declare-fun e!2181121 () Bool)

(assert (=> b!3523850 (=> res!1421177 e!2181121)))

(assert (=> b!3523850 (= res!1421177 e!2181118)))

(declare-fun res!1421175 () Bool)

(assert (=> b!3523850 (=> (not res!1421175) (not e!2181118))))

(declare-fun lt!1203449 () Bool)

(assert (=> b!3523850 (= res!1421175 lt!1203449)))

(declare-fun b!3523851 () Bool)

(declare-fun res!1421173 () Bool)

(assert (=> b!3523851 (=> (not res!1421173) (not e!2181118))))

(assert (=> b!3523851 (= res!1421173 (not call!254652))))

(declare-fun b!3523852 () Bool)

(declare-fun e!2181119 () Bool)

(assert (=> b!3523852 (= e!2181121 e!2181119)))

(declare-fun res!1421174 () Bool)

(assert (=> b!3523852 (=> (not res!1421174) (not e!2181119))))

(assert (=> b!3523852 (= res!1421174 (not lt!1203449))))

(declare-fun b!3523853 () Bool)

(declare-fun e!2181120 () Bool)

(assert (=> b!3523853 (= e!2181120 (not (= (head!7385 (list!13659 (charsOf!3490 separatorToken!241))) (c!606752 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241)))))))))))

(declare-fun b!3523854 () Bool)

(declare-fun e!2181115 () Bool)

(declare-fun e!2181116 () Bool)

(assert (=> b!3523854 (= e!2181115 e!2181116)))

(declare-fun c!607568 () Bool)

(assert (=> b!3523854 (= c!607568 ((_ is EmptyLang!10235) (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241)))))))))

(declare-fun b!3523855 () Bool)

(declare-fun e!2181117 () Bool)

(assert (=> b!3523855 (= e!2181117 (matchR!4819 (derivativeStep!3070 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241))))) (head!7385 (list!13659 (charsOf!3490 separatorToken!241)))) (tail!5490 (list!13659 (charsOf!3490 separatorToken!241)))))))

(declare-fun b!3523856 () Bool)

(assert (=> b!3523856 (= e!2181117 (nullable!3517 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241)))))))))

(declare-fun b!3523848 () Bool)

(declare-fun res!1421172 () Bool)

(assert (=> b!3523848 (=> res!1421172 e!2181120)))

(assert (=> b!3523848 (= res!1421172 (not (isEmpty!21812 (tail!5490 (list!13659 (charsOf!3490 separatorToken!241))))))))

(declare-fun d!1028697 () Bool)

(assert (=> d!1028697 e!2181115))

(declare-fun c!607567 () Bool)

(assert (=> d!1028697 (= c!607567 ((_ is EmptyExpr!10235) (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241)))))))))

(assert (=> d!1028697 (= lt!1203449 e!2181117)))

(declare-fun c!607569 () Bool)

(assert (=> d!1028697 (= c!607569 (isEmpty!21812 (list!13659 (charsOf!3490 separatorToken!241))))))

(assert (=> d!1028697 (validRegex!4674 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241))))))))

(assert (=> d!1028697 (= (matchR!4819 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241))))) (list!13659 (charsOf!3490 separatorToken!241))) lt!1203449)))

(declare-fun b!3523857 () Bool)

(assert (=> b!3523857 (= e!2181115 (= lt!1203449 call!254652))))

(declare-fun b!3523858 () Bool)

(declare-fun res!1421171 () Bool)

(assert (=> b!3523858 (=> res!1421171 e!2181121)))

(assert (=> b!3523858 (= res!1421171 (not ((_ is ElementMatch!10235) (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241))))))))))

(assert (=> b!3523858 (= e!2181116 e!2181121)))

(declare-fun b!3523859 () Bool)

(assert (=> b!3523859 (= e!2181116 (not lt!1203449))))

(declare-fun b!3523860 () Bool)

(assert (=> b!3523860 (= e!2181118 (= (head!7385 (list!13659 (charsOf!3490 separatorToken!241))) (c!606752 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 separatorToken!241))))))))))

(declare-fun b!3523861 () Bool)

(assert (=> b!3523861 (= e!2181119 e!2181120)))

(declare-fun res!1421176 () Bool)

(assert (=> b!3523861 (=> res!1421176 e!2181120)))

(assert (=> b!3523861 (= res!1421176 call!254652)))

(assert (= (and d!1028697 c!607569) b!3523856))

(assert (= (and d!1028697 (not c!607569)) b!3523855))

(assert (= (and d!1028697 c!607567) b!3523857))

(assert (= (and d!1028697 (not c!607567)) b!3523854))

(assert (= (and b!3523854 c!607568) b!3523859))

(assert (= (and b!3523854 (not c!607568)) b!3523858))

(assert (= (and b!3523858 (not res!1421171)) b!3523850))

(assert (= (and b!3523850 res!1421175) b!3523851))

(assert (= (and b!3523851 res!1421173) b!3523849))

(assert (= (and b!3523849 res!1421170) b!3523860))

(assert (= (and b!3523850 (not res!1421177)) b!3523852))

(assert (= (and b!3523852 res!1421174) b!3523861))

(assert (= (and b!3523861 (not res!1421176)) b!3523848))

(assert (= (and b!3523848 (not res!1421172)) b!3523853))

(assert (= (or b!3523857 b!3523851 b!3523861) bm!254647))

(assert (=> d!1028697 m!3970545))

(declare-fun m!3976387 () Bool)

(assert (=> d!1028697 m!3976387))

(declare-fun m!3976389 () Bool)

(assert (=> d!1028697 m!3976389))

(assert (=> b!3523848 m!3970545))

(declare-fun m!3976391 () Bool)

(assert (=> b!3523848 m!3976391))

(assert (=> b!3523848 m!3976391))

(declare-fun m!3976393 () Bool)

(assert (=> b!3523848 m!3976393))

(assert (=> bm!254647 m!3970545))

(assert (=> bm!254647 m!3976387))

(assert (=> b!3523855 m!3970545))

(declare-fun m!3976395 () Bool)

(assert (=> b!3523855 m!3976395))

(assert (=> b!3523855 m!3976395))

(declare-fun m!3976397 () Bool)

(assert (=> b!3523855 m!3976397))

(assert (=> b!3523855 m!3970545))

(assert (=> b!3523855 m!3976391))

(assert (=> b!3523855 m!3976397))

(assert (=> b!3523855 m!3976391))

(declare-fun m!3976399 () Bool)

(assert (=> b!3523855 m!3976399))

(assert (=> b!3523860 m!3970545))

(assert (=> b!3523860 m!3976395))

(declare-fun m!3976401 () Bool)

(assert (=> b!3523856 m!3976401))

(assert (=> b!3523853 m!3970545))

(assert (=> b!3523853 m!3976395))

(assert (=> b!3523849 m!3970545))

(assert (=> b!3523849 m!3976391))

(assert (=> b!3523849 m!3976391))

(assert (=> b!3523849 m!3976393))

(assert (=> b!3521270 d!1028697))

(assert (=> b!3521270 d!1027313))

(assert (=> b!3521270 d!1027315))

(declare-fun d!1028699 () Bool)

(assert (=> d!1028699 (= (list!13659 lt!1202288) (list!13663 (c!606753 lt!1202288)))))

(declare-fun bs!565579 () Bool)

(assert (= bs!565579 d!1028699))

(declare-fun m!3976403 () Bool)

(assert (=> bs!565579 m!3976403))

(assert (=> d!1027245 d!1028699))

(declare-fun d!1028701 () Bool)

(declare-fun c!607570 () Bool)

(assert (=> d!1028701 (= c!607570 ((_ is Cons!37345) (list!13662 lt!1201912)))))

(declare-fun e!2181122 () List!37467)

(assert (=> d!1028701 (= (printList!1613 thiss!18206 (list!13662 lt!1201912)) e!2181122)))

(declare-fun b!3523862 () Bool)

(assert (=> b!3523862 (= e!2181122 (++!9253 (list!13659 (charsOf!3490 (h!42765 (list!13662 lt!1201912)))) (printList!1613 thiss!18206 (t!281700 (list!13662 lt!1201912)))))))

(declare-fun b!3523863 () Bool)

(assert (=> b!3523863 (= e!2181122 Nil!37343)))

(assert (= (and d!1028701 c!607570) b!3523862))

(assert (= (and d!1028701 (not c!607570)) b!3523863))

(declare-fun m!3976405 () Bool)

(assert (=> b!3523862 m!3976405))

(assert (=> b!3523862 m!3976405))

(declare-fun m!3976407 () Bool)

(assert (=> b!3523862 m!3976407))

(declare-fun m!3976409 () Bool)

(assert (=> b!3523862 m!3976409))

(assert (=> b!3523862 m!3976407))

(assert (=> b!3523862 m!3976409))

(declare-fun m!3976411 () Bool)

(assert (=> b!3523862 m!3976411))

(assert (=> d!1027245 d!1028701))

(assert (=> d!1027245 d!1027889))

(assert (=> d!1027245 d!1027131))

(declare-fun d!1028703 () Bool)

(declare-fun res!1421178 () Bool)

(declare-fun e!2181123 () Bool)

(assert (=> d!1028703 (=> (not res!1421178) (not e!2181123))))

(assert (=> d!1028703 (= res!1421178 (rulesValid!2072 thiss!18206 (t!281699 rules!2135)))))

(assert (=> d!1028703 (= (rulesInvariant!4462 thiss!18206 (t!281699 rules!2135)) e!2181123)))

(declare-fun b!3523864 () Bool)

(assert (=> b!3523864 (= e!2181123 (noDuplicateTag!2068 thiss!18206 (t!281699 rules!2135) Nil!37346))))

(assert (= (and d!1028703 res!1421178) b!3523864))

(declare-fun m!3976413 () Bool)

(assert (=> d!1028703 m!3976413))

(declare-fun m!3976415 () Bool)

(assert (=> b!3523864 m!3976415))

(assert (=> b!3521006 d!1028703))

(declare-fun d!1028705 () Bool)

(assert (=> d!1028705 (rulesInvariant!4462 thiss!18206 (t!281699 rules!2135))))

(declare-fun lt!1203452 () Unit!52994)

(declare-fun choose!20460 (LexerInterface!5065 Rule!10752 List!37468) Unit!52994)

(assert (=> d!1028705 (= lt!1203452 (choose!20460 thiss!18206 (h!42764 rules!2135) (t!281699 rules!2135)))))

(assert (=> d!1028705 (rulesInvariant!4462 thiss!18206 (Cons!37344 (h!42764 rules!2135) (t!281699 rules!2135)))))

(assert (=> d!1028705 (= (lemmaInvariantOnRulesThenOnTail!462 thiss!18206 (h!42764 rules!2135) (t!281699 rules!2135)) lt!1203452)))

(declare-fun bs!565580 () Bool)

(assert (= bs!565580 d!1028705))

(assert (=> bs!565580 m!3971069))

(declare-fun m!3976417 () Bool)

(assert (=> bs!565580 m!3976417))

(declare-fun m!3976419 () Bool)

(assert (=> bs!565580 m!3976419))

(assert (=> b!3521006 d!1028705))

(declare-fun b!3523865 () Bool)

(declare-fun e!2181124 () Option!7613)

(assert (=> b!3523865 (= e!2181124 (Some!7612 (h!42764 (t!281699 rules!2135))))))

(declare-fun d!1028707 () Bool)

(declare-fun e!2181126 () Bool)

(assert (=> d!1028707 e!2181126))

(declare-fun res!1421180 () Bool)

(assert (=> d!1028707 (=> res!1421180 e!2181126)))

(declare-fun lt!1203455 () Option!7613)

(assert (=> d!1028707 (= res!1421180 (isEmpty!21814 lt!1203455))))

(assert (=> d!1028707 (= lt!1203455 e!2181124)))

(declare-fun c!607572 () Bool)

(assert (=> d!1028707 (= c!607572 (and ((_ is Cons!37344) (t!281699 rules!2135)) (= (tag!6114 (h!42764 (t!281699 rules!2135))) (tag!6114 (rule!8122 (h!42765 tokens!494))))))))

(assert (=> d!1028707 (rulesInvariant!4462 thiss!18206 (t!281699 rules!2135))))

(assert (=> d!1028707 (= (getRuleFromTag!1119 thiss!18206 (t!281699 rules!2135) (tag!6114 (rule!8122 (h!42765 tokens!494)))) lt!1203455)))

(declare-fun b!3523866 () Bool)

(declare-fun e!2181127 () Bool)

(assert (=> b!3523866 (= e!2181127 (= (tag!6114 (get!11989 lt!1203455)) (tag!6114 (rule!8122 (h!42765 tokens!494)))))))

(declare-fun b!3523867 () Bool)

(assert (=> b!3523867 (= e!2181126 e!2181127)))

(declare-fun res!1421179 () Bool)

(assert (=> b!3523867 (=> (not res!1421179) (not e!2181127))))

(assert (=> b!3523867 (= res!1421179 (contains!7007 (t!281699 rules!2135) (get!11989 lt!1203455)))))

(declare-fun b!3523868 () Bool)

(declare-fun e!2181125 () Option!7613)

(assert (=> b!3523868 (= e!2181125 None!7612)))

(declare-fun b!3523869 () Bool)

(declare-fun lt!1203454 () Unit!52994)

(declare-fun lt!1203453 () Unit!52994)

(assert (=> b!3523869 (= lt!1203454 lt!1203453)))

(assert (=> b!3523869 (rulesInvariant!4462 thiss!18206 (t!281699 (t!281699 rules!2135)))))

(assert (=> b!3523869 (= lt!1203453 (lemmaInvariantOnRulesThenOnTail!462 thiss!18206 (h!42764 (t!281699 rules!2135)) (t!281699 (t!281699 rules!2135))))))

(assert (=> b!3523869 (= e!2181125 (getRuleFromTag!1119 thiss!18206 (t!281699 (t!281699 rules!2135)) (tag!6114 (rule!8122 (h!42765 tokens!494)))))))

(declare-fun b!3523870 () Bool)

(assert (=> b!3523870 (= e!2181124 e!2181125)))

(declare-fun c!607571 () Bool)

(assert (=> b!3523870 (= c!607571 (and ((_ is Cons!37344) (t!281699 rules!2135)) (not (= (tag!6114 (h!42764 (t!281699 rules!2135))) (tag!6114 (rule!8122 (h!42765 tokens!494)))))))))

(assert (= (and d!1028707 c!607572) b!3523865))

(assert (= (and d!1028707 (not c!607572)) b!3523870))

(assert (= (and b!3523870 c!607571) b!3523869))

(assert (= (and b!3523870 (not c!607571)) b!3523868))

(assert (= (and d!1028707 (not res!1421180)) b!3523867))

(assert (= (and b!3523867 res!1421179) b!3523866))

(declare-fun m!3976421 () Bool)

(assert (=> d!1028707 m!3976421))

(assert (=> d!1028707 m!3971069))

(declare-fun m!3976423 () Bool)

(assert (=> b!3523866 m!3976423))

(assert (=> b!3523867 m!3976423))

(assert (=> b!3523867 m!3976423))

(declare-fun m!3976425 () Bool)

(assert (=> b!3523867 m!3976425))

(declare-fun m!3976427 () Bool)

(assert (=> b!3523869 m!3976427))

(declare-fun m!3976429 () Bool)

(assert (=> b!3523869 m!3976429))

(declare-fun m!3976431 () Bool)

(assert (=> b!3523869 m!3976431))

(assert (=> b!3521006 d!1028707))

(declare-fun d!1028709 () Bool)

(declare-fun c!607573 () Bool)

(assert (=> d!1028709 (= c!607573 ((_ is Nil!37343) lt!1202315))))

(declare-fun e!2181128 () (InoxSet C!20656))

(assert (=> d!1028709 (= (content!5263 lt!1202315) e!2181128)))

(declare-fun b!3523871 () Bool)

(assert (=> b!3523871 (= e!2181128 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3523872 () Bool)

(assert (=> b!3523872 (= e!2181128 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 lt!1202315) true) (content!5263 (t!281698 lt!1202315))))))

(assert (= (and d!1028709 c!607573) b!3523871))

(assert (= (and d!1028709 (not c!607573)) b!3523872))

(declare-fun m!3976433 () Bool)

(assert (=> b!3523872 m!3976433))

(declare-fun m!3976435 () Bool)

(assert (=> b!3523872 m!3976435))

(assert (=> d!1027305 d!1028709))

(declare-fun d!1028711 () Bool)

(declare-fun c!607574 () Bool)

(assert (=> d!1028711 (= c!607574 ((_ is Nil!37343) (++!9253 lt!1201914 lt!1201944)))))

(declare-fun e!2181129 () (InoxSet C!20656))

(assert (=> d!1028711 (= (content!5263 (++!9253 lt!1201914 lt!1201944)) e!2181129)))

(declare-fun b!3523873 () Bool)

(assert (=> b!3523873 (= e!2181129 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3523874 () Bool)

(assert (=> b!3523874 (= e!2181129 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 (++!9253 lt!1201914 lt!1201944)) true) (content!5263 (t!281698 (++!9253 lt!1201914 lt!1201944)))))))

(assert (= (and d!1028711 c!607574) b!3523873))

(assert (= (and d!1028711 (not c!607574)) b!3523874))

(declare-fun m!3976437 () Bool)

(assert (=> b!3523874 m!3976437))

(declare-fun m!3976439 () Bool)

(assert (=> b!3523874 m!3976439))

(assert (=> d!1027305 d!1028711))

(declare-fun c!607575 () Bool)

(declare-fun d!1028713 () Bool)

(assert (=> d!1028713 (= c!607575 ((_ is Nil!37343) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)))))

(declare-fun e!2181130 () (InoxSet C!20656))

(assert (=> d!1028713 (= (content!5263 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)) e!2181130)))

(declare-fun b!3523875 () Bool)

(assert (=> b!3523875 (= e!2181130 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3523876 () Bool)

(assert (=> b!3523876 (= e!2181130 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)) true) (content!5263 (t!281698 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)))))))

(assert (= (and d!1028713 c!607575) b!3523875))

(assert (= (and d!1028713 (not c!607575)) b!3523876))

(declare-fun m!3976441 () Bool)

(assert (=> b!3523876 m!3976441))

(declare-fun m!3976443 () Bool)

(assert (=> b!3523876 m!3976443))

(assert (=> d!1027305 d!1028713))

(declare-fun b!3523878 () Bool)

(declare-fun e!2181131 () List!37467)

(assert (=> b!3523878 (= e!2181131 (Cons!37343 (h!42763 (list!13659 (charsOf!3490 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345))))) (++!9253 (t!281698 (list!13659 (charsOf!3490 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345))))) (printList!1613 thiss!18206 (t!281700 (Cons!37345 (h!42765 tokens!494) Nil!37345))))))))

(declare-fun d!1028715 () Bool)

(declare-fun e!2181132 () Bool)

(assert (=> d!1028715 e!2181132))

(declare-fun res!1421182 () Bool)

(assert (=> d!1028715 (=> (not res!1421182) (not e!2181132))))

(declare-fun lt!1203456 () List!37467)

(assert (=> d!1028715 (= res!1421182 (= (content!5263 lt!1203456) ((_ map or) (content!5263 (list!13659 (charsOf!3490 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345))))) (content!5263 (printList!1613 thiss!18206 (t!281700 (Cons!37345 (h!42765 tokens!494) Nil!37345)))))))))

(assert (=> d!1028715 (= lt!1203456 e!2181131)))

(declare-fun c!607576 () Bool)

(assert (=> d!1028715 (= c!607576 ((_ is Nil!37343) (list!13659 (charsOf!3490 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345))))))))

(assert (=> d!1028715 (= (++!9253 (list!13659 (charsOf!3490 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345)))) (printList!1613 thiss!18206 (t!281700 (Cons!37345 (h!42765 tokens!494) Nil!37345)))) lt!1203456)))

(declare-fun b!3523879 () Bool)

(declare-fun res!1421181 () Bool)

(assert (=> b!3523879 (=> (not res!1421181) (not e!2181132))))

(assert (=> b!3523879 (= res!1421181 (= (size!28412 lt!1203456) (+ (size!28412 (list!13659 (charsOf!3490 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345))))) (size!28412 (printList!1613 thiss!18206 (t!281700 (Cons!37345 (h!42765 tokens!494) Nil!37345)))))))))

(declare-fun b!3523877 () Bool)

(assert (=> b!3523877 (= e!2181131 (printList!1613 thiss!18206 (t!281700 (Cons!37345 (h!42765 tokens!494) Nil!37345))))))

(declare-fun b!3523880 () Bool)

(assert (=> b!3523880 (= e!2181132 (or (not (= (printList!1613 thiss!18206 (t!281700 (Cons!37345 (h!42765 tokens!494) Nil!37345))) Nil!37343)) (= lt!1203456 (list!13659 (charsOf!3490 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345)))))))))

(assert (= (and d!1028715 c!607576) b!3523877))

(assert (= (and d!1028715 (not c!607576)) b!3523878))

(assert (= (and d!1028715 res!1421182) b!3523879))

(assert (= (and b!3523879 res!1421181) b!3523880))

(assert (=> b!3523878 m!3972131))

(declare-fun m!3976445 () Bool)

(assert (=> b!3523878 m!3976445))

(declare-fun m!3976447 () Bool)

(assert (=> d!1028715 m!3976447))

(assert (=> d!1028715 m!3972129))

(declare-fun m!3976449 () Bool)

(assert (=> d!1028715 m!3976449))

(assert (=> d!1028715 m!3972131))

(declare-fun m!3976451 () Bool)

(assert (=> d!1028715 m!3976451))

(declare-fun m!3976453 () Bool)

(assert (=> b!3523879 m!3976453))

(assert (=> b!3523879 m!3972129))

(declare-fun m!3976455 () Bool)

(assert (=> b!3523879 m!3976455))

(assert (=> b!3523879 m!3972131))

(declare-fun m!3976457 () Bool)

(assert (=> b!3523879 m!3976457))

(assert (=> b!3521578 d!1028715))

(declare-fun d!1028717 () Bool)

(assert (=> d!1028717 (= (list!13659 (charsOf!3490 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345)))) (list!13663 (c!606753 (charsOf!3490 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345))))))))

(declare-fun bs!565581 () Bool)

(assert (= bs!565581 d!1028717))

(declare-fun m!3976459 () Bool)

(assert (=> bs!565581 m!3976459))

(assert (=> b!3521578 d!1028717))

(declare-fun d!1028719 () Bool)

(declare-fun lt!1203457 () BalanceConc!22268)

(assert (=> d!1028719 (= (list!13659 lt!1203457) (originalCharacters!6190 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345))))))

(assert (=> d!1028719 (= lt!1203457 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345))))) (value!176526 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345)))))))

(assert (=> d!1028719 (= (charsOf!3490 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345))) lt!1203457)))

(declare-fun b_lambda!102949 () Bool)

(assert (=> (not b_lambda!102949) (not d!1028719)))

(declare-fun tb!197083 () Bool)

(declare-fun t!282201 () Bool)

(assert (=> (and b!3521754 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345)))))) t!282201) tb!197083))

(declare-fun b!3523881 () Bool)

(declare-fun e!2181133 () Bool)

(declare-fun tp!1087211 () Bool)

(assert (=> b!3523881 (= e!2181133 (and (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345))))) (value!176526 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345)))))) tp!1087211))))

(declare-fun result!241458 () Bool)

(assert (=> tb!197083 (= result!241458 (and (inv!50582 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345))))) (value!176526 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345))))) e!2181133))))

(assert (= tb!197083 b!3523881))

(declare-fun m!3976461 () Bool)

(assert (=> b!3523881 m!3976461))

(declare-fun m!3976463 () Bool)

(assert (=> tb!197083 m!3976463))

(assert (=> d!1028719 t!282201))

(declare-fun b_and!251167 () Bool)

(assert (= b_and!251161 (and (=> t!282201 result!241458) b_and!251167)))

(declare-fun tb!197085 () Bool)

(declare-fun t!282203 () Bool)

(assert (=> (and b!3520728 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345)))))) t!282203) tb!197085))

(declare-fun result!241460 () Bool)

(assert (= result!241460 result!241458))

(assert (=> d!1028719 t!282203))

(declare-fun b_and!251169 () Bool)

(assert (= b_and!251157 (and (=> t!282203 result!241460) b_and!251169)))

(declare-fun tb!197087 () Bool)

(declare-fun t!282205 () Bool)

(assert (=> (and b!3520694 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345)))))) t!282205) tb!197087))

(declare-fun result!241462 () Bool)

(assert (= result!241462 result!241458))

(assert (=> d!1028719 t!282205))

(declare-fun b_and!251171 () Bool)

(assert (= b_and!251165 (and (=> t!282205 result!241462) b_and!251171)))

(declare-fun t!282207 () Bool)

(declare-fun tb!197089 () Bool)

(assert (=> (and b!3521743 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345)))))) t!282207) tb!197089))

(declare-fun result!241464 () Bool)

(assert (= result!241464 result!241458))

(assert (=> d!1028719 t!282207))

(declare-fun b_and!251173 () Bool)

(assert (= b_and!251163 (and (=> t!282207 result!241464) b_and!251173)))

(declare-fun t!282209 () Bool)

(declare-fun tb!197091 () Bool)

(assert (=> (and b!3520698 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345)))))) t!282209) tb!197091))

(declare-fun result!241466 () Bool)

(assert (= result!241466 result!241458))

(assert (=> d!1028719 t!282209))

(declare-fun b_and!251175 () Bool)

(assert (= b_and!251159 (and (=> t!282209 result!241466) b_and!251175)))

(declare-fun m!3976465 () Bool)

(assert (=> d!1028719 m!3976465))

(declare-fun m!3976467 () Bool)

(assert (=> d!1028719 m!3976467))

(assert (=> b!3521578 d!1028719))

(declare-fun d!1028721 () Bool)

(declare-fun c!607577 () Bool)

(assert (=> d!1028721 (= c!607577 ((_ is Cons!37345) (t!281700 (Cons!37345 (h!42765 tokens!494) Nil!37345))))))

(declare-fun e!2181134 () List!37467)

(assert (=> d!1028721 (= (printList!1613 thiss!18206 (t!281700 (Cons!37345 (h!42765 tokens!494) Nil!37345))) e!2181134)))

(declare-fun b!3523882 () Bool)

(assert (=> b!3523882 (= e!2181134 (++!9253 (list!13659 (charsOf!3490 (h!42765 (t!281700 (Cons!37345 (h!42765 tokens!494) Nil!37345))))) (printList!1613 thiss!18206 (t!281700 (t!281700 (Cons!37345 (h!42765 tokens!494) Nil!37345))))))))

(declare-fun b!3523883 () Bool)

(assert (=> b!3523883 (= e!2181134 Nil!37343)))

(assert (= (and d!1028721 c!607577) b!3523882))

(assert (= (and d!1028721 (not c!607577)) b!3523883))

(declare-fun m!3976469 () Bool)

(assert (=> b!3523882 m!3976469))

(assert (=> b!3523882 m!3976469))

(declare-fun m!3976471 () Bool)

(assert (=> b!3523882 m!3976471))

(declare-fun m!3976473 () Bool)

(assert (=> b!3523882 m!3976473))

(assert (=> b!3523882 m!3976471))

(assert (=> b!3523882 m!3976473))

(declare-fun m!3976475 () Bool)

(assert (=> b!3523882 m!3976475))

(assert (=> b!3521578 d!1028721))

(declare-fun bs!565582 () Bool)

(declare-fun d!1028723 () Bool)

(assert (= bs!565582 (and d!1028723 d!1028003)))

(declare-fun lambda!122790 () Int)

(assert (=> bs!565582 (= lambda!122790 lambda!122766)))

(declare-fun bs!565583 () Bool)

(assert (= bs!565583 (and d!1028723 d!1028389)))

(assert (=> bs!565583 (= (and (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241)))) (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))))) (= lambda!122790 lambda!122785))))

(assert (=> d!1028723 true))

(assert (=> d!1028723 (< (dynLambda!15906 order!20089 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) (dynLambda!15914 order!20095 lambda!122790))))

(assert (=> d!1028723 true))

(assert (=> d!1028723 (< (dynLambda!15904 order!20085 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) (dynLambda!15914 order!20095 lambda!122790))))

(assert (=> d!1028723 (= (semiInverseModEq!2312 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) (Forall!1350 lambda!122790))))

(declare-fun bs!565584 () Bool)

(assert (= bs!565584 d!1028723))

(declare-fun m!3976477 () Bool)

(assert (=> bs!565584 m!3976477))

(assert (=> d!1026955 d!1028723))

(declare-fun d!1028725 () Bool)

(declare-fun res!1421183 () Bool)

(declare-fun e!2181135 () Bool)

(assert (=> d!1028725 (=> res!1421183 e!2181135)))

(assert (=> d!1028725 (= res!1421183 ((_ is Nil!37345) (list!13662 (seqFromList!4005 tokens!494))))))

(assert (=> d!1028725 (= (forall!8029 (list!13662 (seqFromList!4005 tokens!494)) lambda!122753) e!2181135)))

(declare-fun b!3523884 () Bool)

(declare-fun e!2181136 () Bool)

(assert (=> b!3523884 (= e!2181135 e!2181136)))

(declare-fun res!1421184 () Bool)

(assert (=> b!3523884 (=> (not res!1421184) (not e!2181136))))

(assert (=> b!3523884 (= res!1421184 (dynLambda!15912 lambda!122753 (h!42765 (list!13662 (seqFromList!4005 tokens!494)))))))

(declare-fun b!3523885 () Bool)

(assert (=> b!3523885 (= e!2181136 (forall!8029 (t!281700 (list!13662 (seqFromList!4005 tokens!494))) lambda!122753))))

(assert (= (and d!1028725 (not res!1421183)) b!3523884))

(assert (= (and b!3523884 res!1421184) b!3523885))

(declare-fun b_lambda!102951 () Bool)

(assert (=> (not b_lambda!102951) (not b!3523884)))

(declare-fun m!3976479 () Bool)

(assert (=> b!3523884 m!3976479))

(declare-fun m!3976481 () Bool)

(assert (=> b!3523885 m!3976481))

(assert (=> d!1027283 d!1028725))

(assert (=> d!1027283 d!1028433))

(declare-fun d!1028727 () Bool)

(declare-fun lt!1203460 () Bool)

(assert (=> d!1028727 (= lt!1203460 (forall!8029 (list!13662 (seqFromList!4005 tokens!494)) lambda!122753))))

(declare-fun forall!8034 (Conc!11328 Int) Bool)

(assert (=> d!1028727 (= lt!1203460 (forall!8034 (c!606754 (seqFromList!4005 tokens!494)) lambda!122753))))

(assert (=> d!1028727 (= (forall!8031 (seqFromList!4005 tokens!494) lambda!122753) lt!1203460)))

(declare-fun bs!565585 () Bool)

(assert (= bs!565585 d!1028727))

(assert (=> bs!565585 m!3970661))

(assert (=> bs!565585 m!3972167))

(assert (=> bs!565585 m!3972167))

(assert (=> bs!565585 m!3972169))

(declare-fun m!3976483 () Bool)

(assert (=> bs!565585 m!3976483))

(assert (=> d!1027283 d!1028727))

(assert (=> d!1027283 d!1027281))

(assert (=> b!3521392 d!1028703))

(assert (=> b!3521392 d!1028705))

(declare-fun b!3523886 () Bool)

(declare-fun e!2181137 () Option!7613)

(assert (=> b!3523886 (= e!2181137 (Some!7612 (h!42764 (t!281699 rules!2135))))))

(declare-fun d!1028729 () Bool)

(declare-fun e!2181139 () Bool)

(assert (=> d!1028729 e!2181139))

(declare-fun res!1421186 () Bool)

(assert (=> d!1028729 (=> res!1421186 e!2181139)))

(declare-fun lt!1203463 () Option!7613)

(assert (=> d!1028729 (= res!1421186 (isEmpty!21814 lt!1203463))))

(assert (=> d!1028729 (= lt!1203463 e!2181137)))

(declare-fun c!607579 () Bool)

(assert (=> d!1028729 (= c!607579 (and ((_ is Cons!37344) (t!281699 rules!2135)) (= (tag!6114 (h!42764 (t!281699 rules!2135))) (tag!6114 (rule!8122 separatorToken!241)))))))

(assert (=> d!1028729 (rulesInvariant!4462 thiss!18206 (t!281699 rules!2135))))

(assert (=> d!1028729 (= (getRuleFromTag!1119 thiss!18206 (t!281699 rules!2135) (tag!6114 (rule!8122 separatorToken!241))) lt!1203463)))

(declare-fun b!3523887 () Bool)

(declare-fun e!2181140 () Bool)

(assert (=> b!3523887 (= e!2181140 (= (tag!6114 (get!11989 lt!1203463)) (tag!6114 (rule!8122 separatorToken!241))))))

(declare-fun b!3523888 () Bool)

(assert (=> b!3523888 (= e!2181139 e!2181140)))

(declare-fun res!1421185 () Bool)

(assert (=> b!3523888 (=> (not res!1421185) (not e!2181140))))

(assert (=> b!3523888 (= res!1421185 (contains!7007 (t!281699 rules!2135) (get!11989 lt!1203463)))))

(declare-fun b!3523889 () Bool)

(declare-fun e!2181138 () Option!7613)

(assert (=> b!3523889 (= e!2181138 None!7612)))

(declare-fun b!3523890 () Bool)

(declare-fun lt!1203462 () Unit!52994)

(declare-fun lt!1203461 () Unit!52994)

(assert (=> b!3523890 (= lt!1203462 lt!1203461)))

(assert (=> b!3523890 (rulesInvariant!4462 thiss!18206 (t!281699 (t!281699 rules!2135)))))

(assert (=> b!3523890 (= lt!1203461 (lemmaInvariantOnRulesThenOnTail!462 thiss!18206 (h!42764 (t!281699 rules!2135)) (t!281699 (t!281699 rules!2135))))))

(assert (=> b!3523890 (= e!2181138 (getRuleFromTag!1119 thiss!18206 (t!281699 (t!281699 rules!2135)) (tag!6114 (rule!8122 separatorToken!241))))))

(declare-fun b!3523891 () Bool)

(assert (=> b!3523891 (= e!2181137 e!2181138)))

(declare-fun c!607578 () Bool)

(assert (=> b!3523891 (= c!607578 (and ((_ is Cons!37344) (t!281699 rules!2135)) (not (= (tag!6114 (h!42764 (t!281699 rules!2135))) (tag!6114 (rule!8122 separatorToken!241))))))))

(assert (= (and d!1028729 c!607579) b!3523886))

(assert (= (and d!1028729 (not c!607579)) b!3523891))

(assert (= (and b!3523891 c!607578) b!3523890))

(assert (= (and b!3523891 (not c!607578)) b!3523889))

(assert (= (and d!1028729 (not res!1421186)) b!3523888))

(assert (= (and b!3523888 res!1421185) b!3523887))

(declare-fun m!3976485 () Bool)

(assert (=> d!1028729 m!3976485))

(assert (=> d!1028729 m!3971069))

(declare-fun m!3976487 () Bool)

(assert (=> b!3523887 m!3976487))

(assert (=> b!3523888 m!3976487))

(assert (=> b!3523888 m!3976487))

(declare-fun m!3976489 () Bool)

(assert (=> b!3523888 m!3976489))

(assert (=> b!3523890 m!3976427))

(assert (=> b!3523890 m!3976429))

(declare-fun m!3976491 () Bool)

(assert (=> b!3523890 m!3976491))

(assert (=> b!3521392 d!1028729))

(assert (=> b!3520803 d!1028581))

(assert (=> b!3520803 d!1028583))

(declare-fun b!3523893 () Bool)

(declare-fun e!2181141 () List!37467)

(assert (=> b!3523893 (= e!2181141 (Cons!37343 (h!42763 (t!281698 lt!1201911)) (++!9253 (t!281698 (t!281698 lt!1201911)) lt!1201944)))))

(declare-fun d!1028731 () Bool)

(declare-fun e!2181142 () Bool)

(assert (=> d!1028731 e!2181142))

(declare-fun res!1421188 () Bool)

(assert (=> d!1028731 (=> (not res!1421188) (not e!2181142))))

(declare-fun lt!1203464 () List!37467)

(assert (=> d!1028731 (= res!1421188 (= (content!5263 lt!1203464) ((_ map or) (content!5263 (t!281698 lt!1201911)) (content!5263 lt!1201944))))))

(assert (=> d!1028731 (= lt!1203464 e!2181141)))

(declare-fun c!607580 () Bool)

(assert (=> d!1028731 (= c!607580 ((_ is Nil!37343) (t!281698 lt!1201911)))))

(assert (=> d!1028731 (= (++!9253 (t!281698 lt!1201911) lt!1201944) lt!1203464)))

(declare-fun b!3523894 () Bool)

(declare-fun res!1421187 () Bool)

(assert (=> b!3523894 (=> (not res!1421187) (not e!2181142))))

(assert (=> b!3523894 (= res!1421187 (= (size!28412 lt!1203464) (+ (size!28412 (t!281698 lt!1201911)) (size!28412 lt!1201944))))))

(declare-fun b!3523892 () Bool)

(assert (=> b!3523892 (= e!2181141 lt!1201944)))

(declare-fun b!3523895 () Bool)

(assert (=> b!3523895 (= e!2181142 (or (not (= lt!1201944 Nil!37343)) (= lt!1203464 (t!281698 lt!1201911))))))

(assert (= (and d!1028731 c!607580) b!3523892))

(assert (= (and d!1028731 (not c!607580)) b!3523893))

(assert (= (and d!1028731 res!1421188) b!3523894))

(assert (= (and b!3523894 res!1421187) b!3523895))

(declare-fun m!3976493 () Bool)

(assert (=> b!3523893 m!3976493))

(declare-fun m!3976495 () Bool)

(assert (=> d!1028731 m!3976495))

(assert (=> d!1028731 m!3976329))

(assert (=> d!1028731 m!3970977))

(declare-fun m!3976497 () Bool)

(assert (=> b!3523894 m!3976497))

(assert (=> b!3523894 m!3971851))

(assert (=> b!3523894 m!3970981))

(assert (=> b!3520941 d!1028731))

(assert (=> b!3521323 d!1027909))

(declare-fun d!1028733 () Bool)

(declare-fun lt!1203465 () Token!10318)

(assert (=> d!1028733 (= lt!1203465 (apply!8898 (list!13662 (_1!21722 lt!1202034)) 0))))

(assert (=> d!1028733 (= lt!1203465 (apply!8899 (c!606754 (_1!21722 lt!1202034)) 0))))

(declare-fun e!2181143 () Bool)

(assert (=> d!1028733 e!2181143))

(declare-fun res!1421189 () Bool)

(assert (=> d!1028733 (=> (not res!1421189) (not e!2181143))))

(assert (=> d!1028733 (= res!1421189 (<= 0 0))))

(assert (=> d!1028733 (= (apply!8896 (_1!21722 lt!1202034) 0) lt!1203465)))

(declare-fun b!3523896 () Bool)

(assert (=> b!3523896 (= e!2181143 (< 0 (size!28413 (_1!21722 lt!1202034))))))

(assert (= (and d!1028733 res!1421189) b!3523896))

(assert (=> d!1028733 m!3976331))

(assert (=> d!1028733 m!3976331))

(declare-fun m!3976499 () Bool)

(assert (=> d!1028733 m!3976499))

(declare-fun m!3976501 () Bool)

(assert (=> d!1028733 m!3976501))

(assert (=> b!3523896 m!3970983))

(assert (=> b!3520948 d!1028733))

(declare-fun b!3523897 () Bool)

(declare-fun res!1421196 () Bool)

(declare-fun e!2181145 () Bool)

(assert (=> b!3523897 (=> (not res!1421196) (not e!2181145))))

(declare-fun lt!1203467 () Option!7614)

(assert (=> b!3523897 (= res!1421196 (= (++!9253 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1203467)))) (_2!21723 (get!11991 lt!1203467))) lt!1201923))))

(declare-fun b!3523898 () Bool)

(declare-fun e!2181146 () Bool)

(assert (=> b!3523898 (= e!2181146 e!2181145)))

(declare-fun res!1421190 () Bool)

(assert (=> b!3523898 (=> (not res!1421190) (not e!2181145))))

(assert (=> b!3523898 (= res!1421190 (matchR!4819 (regex!5476 (h!42764 rules!2135)) (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1203467))))))))

(declare-fun b!3523899 () Bool)

(declare-fun e!2181144 () Option!7614)

(assert (=> b!3523899 (= e!2181144 None!7613)))

(declare-fun b!3523900 () Bool)

(declare-fun res!1421192 () Bool)

(assert (=> b!3523900 (=> (not res!1421192) (not e!2181145))))

(assert (=> b!3523900 (= res!1421192 (= (value!176526 (_1!21723 (get!11991 lt!1203467))) (apply!8897 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1203467)))) (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1203467)))))))))

(declare-fun b!3523901 () Bool)

(declare-fun lt!1203470 () tuple2!37186)

(assert (=> b!3523901 (= e!2181144 (Some!7613 (tuple2!37179 (Token!10319 (apply!8897 (transformation!5476 (h!42764 rules!2135)) (seqFromList!4006 (_1!21727 lt!1203470))) (h!42764 rules!2135) (size!28419 (seqFromList!4006 (_1!21727 lt!1203470))) (_1!21727 lt!1203470)) (_2!21727 lt!1203470))))))

(declare-fun lt!1203466 () Unit!52994)

(assert (=> b!3523901 (= lt!1203466 (longestMatchIsAcceptedByMatchOrIsEmpty!912 (regex!5476 (h!42764 rules!2135)) lt!1201923))))

(declare-fun res!1421191 () Bool)

(assert (=> b!3523901 (= res!1421191 (isEmpty!21812 (_1!21727 (findLongestMatchInner!939 (regex!5476 (h!42764 rules!2135)) Nil!37343 (size!28412 Nil!37343) lt!1201923 lt!1201923 (size!28412 lt!1201923)))))))

(declare-fun e!2181147 () Bool)

(assert (=> b!3523901 (=> res!1421191 e!2181147)))

(assert (=> b!3523901 e!2181147))

(declare-fun lt!1203469 () Unit!52994)

(assert (=> b!3523901 (= lt!1203469 lt!1203466)))

(declare-fun lt!1203468 () Unit!52994)

(assert (=> b!3523901 (= lt!1203468 (lemmaSemiInverse!1291 (transformation!5476 (h!42764 rules!2135)) (seqFromList!4006 (_1!21727 lt!1203470))))))

(declare-fun b!3523902 () Bool)

(declare-fun res!1421195 () Bool)

(assert (=> b!3523902 (=> (not res!1421195) (not e!2181145))))

(assert (=> b!3523902 (= res!1421195 (< (size!28412 (_2!21723 (get!11991 lt!1203467))) (size!28412 lt!1201923)))))

(declare-fun d!1028735 () Bool)

(assert (=> d!1028735 e!2181146))

(declare-fun res!1421193 () Bool)

(assert (=> d!1028735 (=> res!1421193 e!2181146)))

(assert (=> d!1028735 (= res!1421193 (isEmpty!21815 lt!1203467))))

(assert (=> d!1028735 (= lt!1203467 e!2181144)))

(declare-fun c!607581 () Bool)

(assert (=> d!1028735 (= c!607581 (isEmpty!21812 (_1!21727 lt!1203470)))))

(assert (=> d!1028735 (= lt!1203470 (findLongestMatch!854 (regex!5476 (h!42764 rules!2135)) lt!1201923))))

(assert (=> d!1028735 (ruleValid!1772 thiss!18206 (h!42764 rules!2135))))

(assert (=> d!1028735 (= (maxPrefixOneRule!1772 thiss!18206 (h!42764 rules!2135) lt!1201923) lt!1203467)))

(declare-fun b!3523903 () Bool)

(declare-fun res!1421194 () Bool)

(assert (=> b!3523903 (=> (not res!1421194) (not e!2181145))))

(assert (=> b!3523903 (= res!1421194 (= (rule!8122 (_1!21723 (get!11991 lt!1203467))) (h!42764 rules!2135)))))

(declare-fun b!3523904 () Bool)

(assert (=> b!3523904 (= e!2181145 (= (size!28411 (_1!21723 (get!11991 lt!1203467))) (size!28412 (originalCharacters!6190 (_1!21723 (get!11991 lt!1203467))))))))

(declare-fun b!3523905 () Bool)

(assert (=> b!3523905 (= e!2181147 (matchR!4819 (regex!5476 (h!42764 rules!2135)) (_1!21727 (findLongestMatchInner!939 (regex!5476 (h!42764 rules!2135)) Nil!37343 (size!28412 Nil!37343) lt!1201923 lt!1201923 (size!28412 lt!1201923)))))))

(assert (= (and d!1028735 c!607581) b!3523899))

(assert (= (and d!1028735 (not c!607581)) b!3523901))

(assert (= (and b!3523901 (not res!1421191)) b!3523905))

(assert (= (and d!1028735 (not res!1421193)) b!3523898))

(assert (= (and b!3523898 res!1421190) b!3523897))

(assert (= (and b!3523897 res!1421196) b!3523902))

(assert (= (and b!3523902 res!1421195) b!3523903))

(assert (= (and b!3523903 res!1421194) b!3523900))

(assert (= (and b!3523900 res!1421192) b!3523904))

(declare-fun m!3976503 () Bool)

(assert (=> b!3523902 m!3976503))

(declare-fun m!3976505 () Bool)

(assert (=> b!3523902 m!3976505))

(assert (=> b!3523902 m!3971079))

(assert (=> b!3523898 m!3976503))

(declare-fun m!3976507 () Bool)

(assert (=> b!3523898 m!3976507))

(assert (=> b!3523898 m!3976507))

(declare-fun m!3976509 () Bool)

(assert (=> b!3523898 m!3976509))

(assert (=> b!3523898 m!3976509))

(declare-fun m!3976511 () Bool)

(assert (=> b!3523898 m!3976511))

(assert (=> b!3523903 m!3976503))

(assert (=> b!3523905 m!3971607))

(assert (=> b!3523905 m!3971079))

(assert (=> b!3523905 m!3971607))

(assert (=> b!3523905 m!3971079))

(declare-fun m!3976513 () Bool)

(assert (=> b!3523905 m!3976513))

(declare-fun m!3976515 () Bool)

(assert (=> b!3523905 m!3976515))

(assert (=> b!3523897 m!3976503))

(assert (=> b!3523897 m!3976507))

(assert (=> b!3523897 m!3976507))

(assert (=> b!3523897 m!3976509))

(assert (=> b!3523897 m!3976509))

(declare-fun m!3976517 () Bool)

(assert (=> b!3523897 m!3976517))

(declare-fun m!3976519 () Bool)

(assert (=> d!1028735 m!3976519))

(declare-fun m!3976521 () Bool)

(assert (=> d!1028735 m!3976521))

(declare-fun m!3976523 () Bool)

(assert (=> d!1028735 m!3976523))

(declare-fun m!3976525 () Bool)

(assert (=> d!1028735 m!3976525))

(declare-fun m!3976527 () Bool)

(assert (=> b!3523901 m!3976527))

(declare-fun m!3976529 () Bool)

(assert (=> b!3523901 m!3976529))

(assert (=> b!3523901 m!3971607))

(assert (=> b!3523901 m!3971079))

(assert (=> b!3523901 m!3976513))

(declare-fun m!3976531 () Bool)

(assert (=> b!3523901 m!3976531))

(assert (=> b!3523901 m!3976527))

(declare-fun m!3976533 () Bool)

(assert (=> b!3523901 m!3976533))

(declare-fun m!3976535 () Bool)

(assert (=> b!3523901 m!3976535))

(assert (=> b!3523901 m!3976527))

(declare-fun m!3976537 () Bool)

(assert (=> b!3523901 m!3976537))

(assert (=> b!3523901 m!3971079))

(assert (=> b!3523901 m!3976527))

(assert (=> b!3523901 m!3971607))

(assert (=> b!3523904 m!3976503))

(declare-fun m!3976539 () Bool)

(assert (=> b!3523904 m!3976539))

(assert (=> b!3523900 m!3976503))

(declare-fun m!3976541 () Bool)

(assert (=> b!3523900 m!3976541))

(assert (=> b!3523900 m!3976541))

(declare-fun m!3976543 () Bool)

(assert (=> b!3523900 m!3976543))

(assert (=> bm!254361 d!1028735))

(declare-fun d!1028737 () Bool)

(declare-fun lt!1203471 () Int)

(assert (=> d!1028737 (>= lt!1203471 0)))

(declare-fun e!2181148 () Int)

(assert (=> d!1028737 (= lt!1203471 e!2181148)))

(declare-fun c!607582 () Bool)

(assert (=> d!1028737 (= c!607582 ((_ is Nil!37343) (t!281698 lt!1201911)))))

(assert (=> d!1028737 (= (size!28412 (t!281698 lt!1201911)) lt!1203471)))

(declare-fun b!3523906 () Bool)

(assert (=> b!3523906 (= e!2181148 0)))

(declare-fun b!3523907 () Bool)

(assert (=> b!3523907 (= e!2181148 (+ 1 (size!28412 (t!281698 (t!281698 lt!1201911)))))))

(assert (= (and d!1028737 c!607582) b!3523906))

(assert (= (and d!1028737 (not c!607582)) b!3523907))

(declare-fun m!3976545 () Bool)

(assert (=> b!3523907 m!3976545))

(assert (=> b!3521430 d!1028737))

(assert (=> b!3521525 d!1028703))

(assert (=> b!3521525 d!1028705))

(declare-fun b!3523908 () Bool)

(declare-fun e!2181149 () Option!7613)

(assert (=> b!3523908 (= e!2181149 (Some!7612 (h!42764 (t!281699 rules!2135))))))

(declare-fun d!1028739 () Bool)

(declare-fun e!2181151 () Bool)

(assert (=> d!1028739 e!2181151))

(declare-fun res!1421198 () Bool)

(assert (=> d!1028739 (=> res!1421198 e!2181151)))

(declare-fun lt!1203474 () Option!7613)

(assert (=> d!1028739 (= res!1421198 (isEmpty!21814 lt!1203474))))

(assert (=> d!1028739 (= lt!1203474 e!2181149)))

(declare-fun c!607584 () Bool)

(assert (=> d!1028739 (= c!607584 (and ((_ is Cons!37344) (t!281699 rules!2135)) (= (tag!6114 (h!42764 (t!281699 rules!2135))) (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))

(assert (=> d!1028739 (rulesInvariant!4462 thiss!18206 (t!281699 rules!2135))))

(assert (=> d!1028739 (= (getRuleFromTag!1119 thiss!18206 (t!281699 rules!2135) (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))) lt!1203474)))

(declare-fun b!3523909 () Bool)

(declare-fun e!2181152 () Bool)

(assert (=> b!3523909 (= e!2181152 (= (tag!6114 (get!11989 lt!1203474)) (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(declare-fun b!3523910 () Bool)

(assert (=> b!3523910 (= e!2181151 e!2181152)))

(declare-fun res!1421197 () Bool)

(assert (=> b!3523910 (=> (not res!1421197) (not e!2181152))))

(assert (=> b!3523910 (= res!1421197 (contains!7007 (t!281699 rules!2135) (get!11989 lt!1203474)))))

(declare-fun b!3523911 () Bool)

(declare-fun e!2181150 () Option!7613)

(assert (=> b!3523911 (= e!2181150 None!7612)))

(declare-fun b!3523912 () Bool)

(declare-fun lt!1203473 () Unit!52994)

(declare-fun lt!1203472 () Unit!52994)

(assert (=> b!3523912 (= lt!1203473 lt!1203472)))

(assert (=> b!3523912 (rulesInvariant!4462 thiss!18206 (t!281699 (t!281699 rules!2135)))))

(assert (=> b!3523912 (= lt!1203472 (lemmaInvariantOnRulesThenOnTail!462 thiss!18206 (h!42764 (t!281699 rules!2135)) (t!281699 (t!281699 rules!2135))))))

(assert (=> b!3523912 (= e!2181150 (getRuleFromTag!1119 thiss!18206 (t!281699 (t!281699 rules!2135)) (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))))

(declare-fun b!3523913 () Bool)

(assert (=> b!3523913 (= e!2181149 e!2181150)))

(declare-fun c!607583 () Bool)

(assert (=> b!3523913 (= c!607583 (and ((_ is Cons!37344) (t!281699 rules!2135)) (not (= (tag!6114 (h!42764 (t!281699 rules!2135))) (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(assert (= (and d!1028739 c!607584) b!3523908))

(assert (= (and d!1028739 (not c!607584)) b!3523913))

(assert (= (and b!3523913 c!607583) b!3523912))

(assert (= (and b!3523913 (not c!607583)) b!3523911))

(assert (= (and d!1028739 (not res!1421198)) b!3523910))

(assert (= (and b!3523910 res!1421197) b!3523909))

(declare-fun m!3976547 () Bool)

(assert (=> d!1028739 m!3976547))

(assert (=> d!1028739 m!3971069))

(declare-fun m!3976549 () Bool)

(assert (=> b!3523909 m!3976549))

(assert (=> b!3523910 m!3976549))

(assert (=> b!3523910 m!3976549))

(declare-fun m!3976551 () Bool)

(assert (=> b!3523910 m!3976551))

(assert (=> b!3523912 m!3976427))

(assert (=> b!3523912 m!3976429))

(declare-fun m!3976553 () Bool)

(assert (=> b!3523912 m!3976553))

(assert (=> b!3521525 d!1028739))

(assert (=> b!3521137 d!1028625))

(declare-fun b!3523915 () Bool)

(declare-fun res!1421199 () Bool)

(declare-fun e!2181156 () Bool)

(assert (=> b!3523915 (=> (not res!1421199) (not e!2181156))))

(assert (=> b!3523915 (= res!1421199 (isEmpty!21812 (tail!5490 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494)))))))))

(declare-fun bm!254648 () Bool)

(declare-fun call!254653 () Bool)

(assert (=> bm!254648 (= call!254653 (isEmpty!21812 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494))))))))

(declare-fun b!3523916 () Bool)

(declare-fun res!1421206 () Bool)

(declare-fun e!2181159 () Bool)

(assert (=> b!3523916 (=> res!1421206 e!2181159)))

(assert (=> b!3523916 (= res!1421206 e!2181156)))

(declare-fun res!1421204 () Bool)

(assert (=> b!3523916 (=> (not res!1421204) (not e!2181156))))

(declare-fun lt!1203475 () Bool)

(assert (=> b!3523916 (= res!1421204 lt!1203475)))

(declare-fun b!3523917 () Bool)

(declare-fun res!1421202 () Bool)

(assert (=> b!3523917 (=> (not res!1421202) (not e!2181156))))

(assert (=> b!3523917 (= res!1421202 (not call!254653))))

(declare-fun b!3523918 () Bool)

(declare-fun e!2181157 () Bool)

(assert (=> b!3523918 (= e!2181159 e!2181157)))

(declare-fun res!1421203 () Bool)

(assert (=> b!3523918 (=> (not res!1421203) (not e!2181157))))

(assert (=> b!3523918 (= res!1421203 (not lt!1203475))))

(declare-fun e!2181158 () Bool)

(declare-fun b!3523919 () Bool)

(assert (=> b!3523919 (= e!2181158 (not (= (head!7385 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494))))) (c!606752 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))))

(declare-fun b!3523920 () Bool)

(declare-fun e!2181153 () Bool)

(declare-fun e!2181154 () Bool)

(assert (=> b!3523920 (= e!2181153 e!2181154)))

(declare-fun c!607586 () Bool)

(assert (=> b!3523920 (= c!607586 ((_ is EmptyLang!10235) (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))

(declare-fun e!2181155 () Bool)

(declare-fun b!3523921 () Bool)

(assert (=> b!3523921 (= e!2181155 (matchR!4819 (derivativeStep!3070 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (head!7385 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494)))))) (tail!5490 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494)))))))))

(declare-fun b!3523922 () Bool)

(assert (=> b!3523922 (= e!2181155 (nullable!3517 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))

(declare-fun b!3523914 () Bool)

(declare-fun res!1421201 () Bool)

(assert (=> b!3523914 (=> res!1421201 e!2181158)))

(assert (=> b!3523914 (= res!1421201 (not (isEmpty!21812 (tail!5490 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494))))))))))

(declare-fun d!1028741 () Bool)

(assert (=> d!1028741 e!2181153))

(declare-fun c!607585 () Bool)

(assert (=> d!1028741 (= c!607585 ((_ is EmptyExpr!10235) (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494)))))))))))

(assert (=> d!1028741 (= lt!1203475 e!2181155)))

(declare-fun c!607587 () Bool)

(assert (=> d!1028741 (= c!607587 (isEmpty!21812 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494))))))))

(assert (=> d!1028741 (validRegex!4674 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))

(assert (=> d!1028741 (= (matchR!4819 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494))))) lt!1203475)))

(declare-fun b!3523923 () Bool)

(assert (=> b!3523923 (= e!2181153 (= lt!1203475 call!254653))))

(declare-fun b!3523924 () Bool)

(declare-fun res!1421200 () Bool)

(assert (=> b!3523924 (=> res!1421200 e!2181159)))

(assert (=> b!3523924 (= res!1421200 (not ((_ is ElementMatch!10235) (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))))

(assert (=> b!3523924 (= e!2181154 e!2181159)))

(declare-fun b!3523925 () Bool)

(assert (=> b!3523925 (= e!2181154 (not lt!1203475))))

(declare-fun b!3523926 () Bool)

(assert (=> b!3523926 (= e!2181156 (= (head!7385 (list!13659 (charsOf!3490 (h!42765 (t!281700 tokens!494))))) (c!606752 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 (t!281700 tokens!494))))))))))))

(declare-fun b!3523927 () Bool)

(assert (=> b!3523927 (= e!2181157 e!2181158)))

(declare-fun res!1421205 () Bool)

(assert (=> b!3523927 (=> res!1421205 e!2181158)))

(assert (=> b!3523927 (= res!1421205 call!254653)))

(assert (= (and d!1028741 c!607587) b!3523922))

(assert (= (and d!1028741 (not c!607587)) b!3523921))

(assert (= (and d!1028741 c!607585) b!3523923))

(assert (= (and d!1028741 (not c!607585)) b!3523920))

(assert (= (and b!3523920 c!607586) b!3523925))

(assert (= (and b!3523920 (not c!607586)) b!3523924))

(assert (= (and b!3523924 (not res!1421200)) b!3523916))

(assert (= (and b!3523916 res!1421204) b!3523917))

(assert (= (and b!3523917 res!1421202) b!3523915))

(assert (= (and b!3523915 res!1421199) b!3523926))

(assert (= (and b!3523916 (not res!1421206)) b!3523918))

(assert (= (and b!3523918 res!1421203) b!3523927))

(assert (= (and b!3523927 (not res!1421205)) b!3523914))

(assert (= (and b!3523914 (not res!1421201)) b!3523919))

(assert (= (or b!3523923 b!3523917 b!3523927) bm!254648))

(assert (=> d!1028741 m!3970535))

(declare-fun m!3976555 () Bool)

(assert (=> d!1028741 m!3976555))

(declare-fun m!3976557 () Bool)

(assert (=> d!1028741 m!3976557))

(assert (=> b!3523914 m!3970535))

(declare-fun m!3976559 () Bool)

(assert (=> b!3523914 m!3976559))

(assert (=> b!3523914 m!3976559))

(declare-fun m!3976561 () Bool)

(assert (=> b!3523914 m!3976561))

(assert (=> bm!254648 m!3970535))

(assert (=> bm!254648 m!3976555))

(assert (=> b!3523921 m!3970535))

(declare-fun m!3976563 () Bool)

(assert (=> b!3523921 m!3976563))

(assert (=> b!3523921 m!3976563))

(declare-fun m!3976565 () Bool)

(assert (=> b!3523921 m!3976565))

(assert (=> b!3523921 m!3970535))

(assert (=> b!3523921 m!3976559))

(assert (=> b!3523921 m!3976565))

(assert (=> b!3523921 m!3976559))

(declare-fun m!3976567 () Bool)

(assert (=> b!3523921 m!3976567))

(assert (=> b!3523926 m!3970535))

(assert (=> b!3523926 m!3976563))

(declare-fun m!3976569 () Bool)

(assert (=> b!3523922 m!3976569))

(assert (=> b!3523919 m!3970535))

(assert (=> b!3523919 m!3976563))

(assert (=> b!3523915 m!3970535))

(assert (=> b!3523915 m!3976559))

(assert (=> b!3523915 m!3976559))

(assert (=> b!3523915 m!3976561))

(assert (=> b!3521137 d!1028741))

(assert (=> b!3521137 d!1027303))

(assert (=> b!3521137 d!1027317))

(assert (=> b!3521137 d!1027243))

(declare-fun bs!565586 () Bool)

(declare-fun d!1028743 () Bool)

(assert (= bs!565586 (and d!1028743 d!1028003)))

(declare-fun lambda!122791 () Int)

(assert (=> bs!565586 (= (and (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (= lambda!122791 lambda!122766))))

(declare-fun bs!565587 () Bool)

(assert (= bs!565587 (and d!1028743 d!1028389)))

(assert (=> bs!565587 (= (and (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241)))) (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))))) (= lambda!122791 lambda!122785))))

(declare-fun bs!565588 () Bool)

(assert (= bs!565588 (and d!1028743 d!1028723)))

(assert (=> bs!565588 (= (and (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (= lambda!122791 lambda!122790))))

(assert (=> d!1028743 true))

(assert (=> d!1028743 (< (dynLambda!15906 order!20089 (toChars!7587 (transformation!5476 (h!42764 rules!2135)))) (dynLambda!15914 order!20095 lambda!122791))))

(assert (=> d!1028743 true))

(assert (=> d!1028743 (< (dynLambda!15904 order!20085 (toValue!7728 (transformation!5476 (h!42764 rules!2135)))) (dynLambda!15914 order!20095 lambda!122791))))

(assert (=> d!1028743 (= (semiInverseModEq!2312 (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (h!42764 rules!2135)))) (Forall!1350 lambda!122791))))

(declare-fun bs!565589 () Bool)

(assert (= bs!565589 d!1028743))

(declare-fun m!3976571 () Bool)

(assert (=> bs!565589 m!3976571))

(assert (=> d!1027335 d!1028743))

(declare-fun e!2181160 () List!37467)

(declare-fun b!3523929 () Bool)

(assert (=> b!3523929 (= e!2181160 (Cons!37343 (h!42763 (t!281698 (++!9253 lt!1201911 lt!1201944))) (++!9253 (t!281698 (t!281698 (++!9253 lt!1201911 lt!1201944))) lt!1201939)))))

(declare-fun d!1028745 () Bool)

(declare-fun e!2181161 () Bool)

(assert (=> d!1028745 e!2181161))

(declare-fun res!1421208 () Bool)

(assert (=> d!1028745 (=> (not res!1421208) (not e!2181161))))

(declare-fun lt!1203476 () List!37467)

(assert (=> d!1028745 (= res!1421208 (= (content!5263 lt!1203476) ((_ map or) (content!5263 (t!281698 (++!9253 lt!1201911 lt!1201944))) (content!5263 lt!1201939))))))

(assert (=> d!1028745 (= lt!1203476 e!2181160)))

(declare-fun c!607588 () Bool)

(assert (=> d!1028745 (= c!607588 ((_ is Nil!37343) (t!281698 (++!9253 lt!1201911 lt!1201944))))))

(assert (=> d!1028745 (= (++!9253 (t!281698 (++!9253 lt!1201911 lt!1201944)) lt!1201939) lt!1203476)))

(declare-fun b!3523930 () Bool)

(declare-fun res!1421207 () Bool)

(assert (=> b!3523930 (=> (not res!1421207) (not e!2181161))))

(assert (=> b!3523930 (= res!1421207 (= (size!28412 lt!1203476) (+ (size!28412 (t!281698 (++!9253 lt!1201911 lt!1201944))) (size!28412 lt!1201939))))))

(declare-fun b!3523928 () Bool)

(assert (=> b!3523928 (= e!2181160 lt!1201939)))

(declare-fun b!3523931 () Bool)

(assert (=> b!3523931 (= e!2181161 (or (not (= lt!1201939 Nil!37343)) (= lt!1203476 (t!281698 (++!9253 lt!1201911 lt!1201944)))))))

(assert (= (and d!1028745 c!607588) b!3523928))

(assert (= (and d!1028745 (not c!607588)) b!3523929))

(assert (= (and d!1028745 res!1421208) b!3523930))

(assert (= (and b!3523930 res!1421207) b!3523931))

(declare-fun m!3976573 () Bool)

(assert (=> b!3523929 m!3976573))

(declare-fun m!3976575 () Bool)

(assert (=> d!1028745 m!3976575))

(assert (=> d!1028745 m!3973707))

(assert (=> d!1028745 m!3970963))

(declare-fun m!3976577 () Bool)

(assert (=> b!3523930 m!3976577))

(assert (=> b!3523930 m!3976221))

(assert (=> b!3523930 m!3970969))

(assert (=> b!3520937 d!1028745))

(declare-fun d!1028747 () Bool)

(assert (=> d!1028747 (= (list!13659 lt!1202313) (list!13663 (c!606753 lt!1202313)))))

(declare-fun bs!565590 () Bool)

(assert (= bs!565590 d!1028747))

(declare-fun m!3976579 () Bool)

(assert (=> bs!565590 m!3976579))

(assert (=> d!1027293 d!1028747))

(declare-fun d!1028749 () Bool)

(declare-fun lt!1203477 () Bool)

(assert (=> d!1028749 (= lt!1203477 (select (content!5266 tokens!494) (h!42765 (t!281700 tokens!494))))))

(declare-fun e!2181163 () Bool)

(assert (=> d!1028749 (= lt!1203477 e!2181163)))

(declare-fun res!1421209 () Bool)

(assert (=> d!1028749 (=> (not res!1421209) (not e!2181163))))

(assert (=> d!1028749 (= res!1421209 ((_ is Cons!37345) tokens!494))))

(assert (=> d!1028749 (= (contains!7008 tokens!494 (h!42765 (t!281700 tokens!494))) lt!1203477)))

(declare-fun b!3523932 () Bool)

(declare-fun e!2181162 () Bool)

(assert (=> b!3523932 (= e!2181163 e!2181162)))

(declare-fun res!1421210 () Bool)

(assert (=> b!3523932 (=> res!1421210 e!2181162)))

(assert (=> b!3523932 (= res!1421210 (= (h!42765 tokens!494) (h!42765 (t!281700 tokens!494))))))

(declare-fun b!3523933 () Bool)

(assert (=> b!3523933 (= e!2181162 (contains!7008 (t!281700 tokens!494) (h!42765 (t!281700 tokens!494))))))

(assert (= (and d!1028749 res!1421209) b!3523932))

(assert (= (and b!3523932 (not res!1421210)) b!3523933))

(assert (=> d!1028749 m!3975579))

(declare-fun m!3976581 () Bool)

(assert (=> d!1028749 m!3976581))

(declare-fun m!3976583 () Bool)

(assert (=> b!3523933 m!3976583))

(assert (=> b!3521673 d!1028749))

(declare-fun d!1028751 () Bool)

(assert (=> d!1028751 true))

(declare-fun lt!1203480 () Bool)

(assert (=> d!1028751 (= lt!1203480 (rulesValidInductive!1883 thiss!18206 rules!2135))))

(declare-fun lambda!122794 () Int)

(declare-fun forall!8035 (List!37468 Int) Bool)

(assert (=> d!1028751 (= lt!1203480 (forall!8035 rules!2135 lambda!122794))))

(assert (=> d!1028751 (= (rulesValid!2072 thiss!18206 rules!2135) lt!1203480)))

(declare-fun bs!565591 () Bool)

(assert (= bs!565591 d!1028751))

(assert (=> bs!565591 m!3971089))

(declare-fun m!3976585 () Bool)

(assert (=> bs!565591 m!3976585))

(assert (=> d!1027011 d!1028751))

(assert (=> b!3521698 d!1027027))

(assert (=> b!3521496 d!1027761))

(declare-fun d!1028753 () Bool)

(declare-fun lt!1203481 () Int)

(assert (=> d!1028753 (>= lt!1203481 0)))

(declare-fun e!2181164 () Int)

(assert (=> d!1028753 (= lt!1203481 e!2181164)))

(declare-fun c!607589 () Bool)

(assert (=> d!1028753 (= c!607589 ((_ is Nil!37343) (originalCharacters!6190 (_1!21723 (get!11991 lt!1202279)))))))

(assert (=> d!1028753 (= (size!28412 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202279)))) lt!1203481)))

(declare-fun b!3523936 () Bool)

(assert (=> b!3523936 (= e!2181164 0)))

(declare-fun b!3523937 () Bool)

(assert (=> b!3523937 (= e!2181164 (+ 1 (size!28412 (t!281698 (originalCharacters!6190 (_1!21723 (get!11991 lt!1202279)))))))))

(assert (= (and d!1028753 c!607589) b!3523936))

(assert (= (and d!1028753 (not c!607589)) b!3523937))

(declare-fun m!3976587 () Bool)

(assert (=> b!3523937 m!3976587))

(assert (=> b!3521496 d!1028753))

(declare-fun d!1028755 () Bool)

(declare-fun lt!1203482 () Int)

(assert (=> d!1028755 (>= lt!1203482 0)))

(declare-fun e!2181165 () Int)

(assert (=> d!1028755 (= lt!1203482 e!2181165)))

(declare-fun c!607590 () Bool)

(assert (=> d!1028755 (= c!607590 ((_ is Nil!37343) lt!1202303))))

(assert (=> d!1028755 (= (size!28412 lt!1202303) lt!1203482)))

(declare-fun b!3523938 () Bool)

(assert (=> b!3523938 (= e!2181165 0)))

(declare-fun b!3523939 () Bool)

(assert (=> b!3523939 (= e!2181165 (+ 1 (size!28412 (t!281698 lt!1202303))))))

(assert (= (and d!1028755 c!607590) b!3523938))

(assert (= (and d!1028755 (not c!607590)) b!3523939))

(declare-fun m!3976589 () Bool)

(assert (=> b!3523939 m!3976589))

(assert (=> b!3521626 d!1028755))

(assert (=> b!3521626 d!1027195))

(declare-fun d!1028757 () Bool)

(declare-fun lt!1203483 () Int)

(assert (=> d!1028757 (>= lt!1203483 0)))

(declare-fun e!2181166 () Int)

(assert (=> d!1028757 (= lt!1203483 e!2181166)))

(declare-fun c!607591 () Bool)

(assert (=> d!1028757 (= c!607591 ((_ is Nil!37343) lt!1201943))))

(assert (=> d!1028757 (= (size!28412 lt!1201943) lt!1203483)))

(declare-fun b!3523940 () Bool)

(assert (=> b!3523940 (= e!2181166 0)))

(declare-fun b!3523941 () Bool)

(assert (=> b!3523941 (= e!2181166 (+ 1 (size!28412 (t!281698 lt!1201943))))))

(assert (= (and d!1028757 c!607591) b!3523940))

(assert (= (and d!1028757 (not c!607591)) b!3523941))

(declare-fun m!3976591 () Bool)

(assert (=> b!3523941 m!3976591))

(assert (=> b!3521626 d!1028757))

(declare-fun b!3523942 () Bool)

(declare-fun e!2181169 () Bool)

(declare-fun e!2181168 () Bool)

(assert (=> b!3523942 (= e!2181169 e!2181168)))

(declare-fun c!607592 () Bool)

(assert (=> b!3523942 (= c!607592 ((_ is IntegerValue!17119) (value!176526 (h!42765 (t!281700 tokens!494)))))))

(declare-fun b!3523943 () Bool)

(declare-fun e!2181167 () Bool)

(assert (=> b!3523943 (= e!2181167 (inv!15 (value!176526 (h!42765 (t!281700 tokens!494)))))))

(declare-fun d!1028759 () Bool)

(declare-fun c!607593 () Bool)

(assert (=> d!1028759 (= c!607593 ((_ is IntegerValue!17118) (value!176526 (h!42765 (t!281700 tokens!494)))))))

(assert (=> d!1028759 (= (inv!21 (value!176526 (h!42765 (t!281700 tokens!494)))) e!2181169)))

(declare-fun b!3523944 () Bool)

(assert (=> b!3523944 (= e!2181168 (inv!17 (value!176526 (h!42765 (t!281700 tokens!494)))))))

(declare-fun b!3523945 () Bool)

(declare-fun res!1421211 () Bool)

(assert (=> b!3523945 (=> res!1421211 e!2181167)))

(assert (=> b!3523945 (= res!1421211 (not ((_ is IntegerValue!17120) (value!176526 (h!42765 (t!281700 tokens!494))))))))

(assert (=> b!3523945 (= e!2181168 e!2181167)))

(declare-fun b!3523946 () Bool)

(assert (=> b!3523946 (= e!2181169 (inv!16 (value!176526 (h!42765 (t!281700 tokens!494)))))))

(assert (= (and d!1028759 c!607593) b!3523946))

(assert (= (and d!1028759 (not c!607593)) b!3523942))

(assert (= (and b!3523942 c!607592) b!3523944))

(assert (= (and b!3523942 (not c!607592)) b!3523945))

(assert (= (and b!3523945 (not res!1421211)) b!3523943))

(declare-fun m!3976593 () Bool)

(assert (=> b!3523943 m!3976593))

(declare-fun m!3976595 () Bool)

(assert (=> b!3523944 m!3976595))

(declare-fun m!3976597 () Bool)

(assert (=> b!3523946 m!3976597))

(assert (=> b!3521741 d!1028759))

(declare-fun d!1028761 () Bool)

(assert (=> d!1028761 (= (inv!16 (value!176526 separatorToken!241)) (= (charsToInt!0 (text!40389 (value!176526 separatorToken!241))) (value!176517 (value!176526 separatorToken!241))))))

(declare-fun bs!565592 () Bool)

(assert (= bs!565592 d!1028761))

(declare-fun m!3976599 () Bool)

(assert (=> bs!565592 m!3976599))

(assert (=> b!3521685 d!1028761))

(assert (=> b!3521639 d!1027177))

(declare-fun d!1028763 () Bool)

(declare-fun c!607594 () Bool)

(assert (=> d!1028763 (= c!607594 ((_ is Nil!37343) (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494))))))))

(declare-fun e!2181170 () (InoxSet C!20656))

(assert (=> d!1028763 (= (content!5263 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494))))) e!2181170)))

(declare-fun b!3523947 () Bool)

(assert (=> b!3523947 (= e!2181170 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3523948 () Bool)

(assert (=> b!3523948 (= e!2181170 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494))))) true) (content!5263 (t!281698 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494))))))))))

(assert (= (and d!1028763 c!607594) b!3523947))

(assert (= (and d!1028763 (not c!607594)) b!3523948))

(declare-fun m!3976601 () Bool)

(assert (=> b!3523948 m!3976601))

(assert (=> b!3523948 m!3976127))

(assert (=> d!1027015 d!1028763))

(declare-fun b!3523950 () Bool)

(declare-fun res!1421212 () Bool)

(declare-fun e!2181174 () Bool)

(assert (=> b!3523950 (=> (not res!1421212) (not e!2181174))))

(assert (=> b!3523950 (= res!1421212 (isEmpty!21812 (tail!5490 (tail!5490 lt!1201911))))))

(declare-fun bm!254649 () Bool)

(declare-fun call!254654 () Bool)

(assert (=> bm!254649 (= call!254654 (isEmpty!21812 (tail!5490 lt!1201911)))))

(declare-fun b!3523951 () Bool)

(declare-fun res!1421219 () Bool)

(declare-fun e!2181177 () Bool)

(assert (=> b!3523951 (=> res!1421219 e!2181177)))

(assert (=> b!3523951 (= res!1421219 e!2181174)))

(declare-fun res!1421217 () Bool)

(assert (=> b!3523951 (=> (not res!1421217) (not e!2181174))))

(declare-fun lt!1203484 () Bool)

(assert (=> b!3523951 (= res!1421217 lt!1203484)))

(declare-fun b!3523952 () Bool)

(declare-fun res!1421215 () Bool)

(assert (=> b!3523952 (=> (not res!1421215) (not e!2181174))))

(assert (=> b!3523952 (= res!1421215 (not call!254654))))

(declare-fun b!3523953 () Bool)

(declare-fun e!2181175 () Bool)

(assert (=> b!3523953 (= e!2181177 e!2181175)))

(declare-fun res!1421216 () Bool)

(assert (=> b!3523953 (=> (not res!1421216) (not e!2181175))))

(assert (=> b!3523953 (= res!1421216 (not lt!1203484))))

(declare-fun b!3523954 () Bool)

(declare-fun e!2181176 () Bool)

(assert (=> b!3523954 (= e!2181176 (not (= (head!7385 (tail!5490 lt!1201911)) (c!606752 (derivativeStep!3070 (regex!5476 lt!1201935) (head!7385 lt!1201911))))))))

(declare-fun b!3523955 () Bool)

(declare-fun e!2181171 () Bool)

(declare-fun e!2181172 () Bool)

(assert (=> b!3523955 (= e!2181171 e!2181172)))

(declare-fun c!607596 () Bool)

(assert (=> b!3523955 (= c!607596 ((_ is EmptyLang!10235) (derivativeStep!3070 (regex!5476 lt!1201935) (head!7385 lt!1201911))))))

(declare-fun b!3523956 () Bool)

(declare-fun e!2181173 () Bool)

(assert (=> b!3523956 (= e!2181173 (matchR!4819 (derivativeStep!3070 (derivativeStep!3070 (regex!5476 lt!1201935) (head!7385 lt!1201911)) (head!7385 (tail!5490 lt!1201911))) (tail!5490 (tail!5490 lt!1201911))))))

(declare-fun b!3523957 () Bool)

(assert (=> b!3523957 (= e!2181173 (nullable!3517 (derivativeStep!3070 (regex!5476 lt!1201935) (head!7385 lt!1201911))))))

(declare-fun b!3523949 () Bool)

(declare-fun res!1421214 () Bool)

(assert (=> b!3523949 (=> res!1421214 e!2181176)))

(assert (=> b!3523949 (= res!1421214 (not (isEmpty!21812 (tail!5490 (tail!5490 lt!1201911)))))))

(declare-fun d!1028765 () Bool)

(assert (=> d!1028765 e!2181171))

(declare-fun c!607595 () Bool)

(assert (=> d!1028765 (= c!607595 ((_ is EmptyExpr!10235) (derivativeStep!3070 (regex!5476 lt!1201935) (head!7385 lt!1201911))))))

(assert (=> d!1028765 (= lt!1203484 e!2181173)))

(declare-fun c!607597 () Bool)

(assert (=> d!1028765 (= c!607597 (isEmpty!21812 (tail!5490 lt!1201911)))))

(assert (=> d!1028765 (validRegex!4674 (derivativeStep!3070 (regex!5476 lt!1201935) (head!7385 lt!1201911)))))

(assert (=> d!1028765 (= (matchR!4819 (derivativeStep!3070 (regex!5476 lt!1201935) (head!7385 lt!1201911)) (tail!5490 lt!1201911)) lt!1203484)))

(declare-fun b!3523958 () Bool)

(assert (=> b!3523958 (= e!2181171 (= lt!1203484 call!254654))))

(declare-fun b!3523959 () Bool)

(declare-fun res!1421213 () Bool)

(assert (=> b!3523959 (=> res!1421213 e!2181177)))

(assert (=> b!3523959 (= res!1421213 (not ((_ is ElementMatch!10235) (derivativeStep!3070 (regex!5476 lt!1201935) (head!7385 lt!1201911)))))))

(assert (=> b!3523959 (= e!2181172 e!2181177)))

(declare-fun b!3523960 () Bool)

(assert (=> b!3523960 (= e!2181172 (not lt!1203484))))

(declare-fun b!3523961 () Bool)

(assert (=> b!3523961 (= e!2181174 (= (head!7385 (tail!5490 lt!1201911)) (c!606752 (derivativeStep!3070 (regex!5476 lt!1201935) (head!7385 lt!1201911)))))))

(declare-fun b!3523962 () Bool)

(assert (=> b!3523962 (= e!2181175 e!2181176)))

(declare-fun res!1421218 () Bool)

(assert (=> b!3523962 (=> res!1421218 e!2181176)))

(assert (=> b!3523962 (= res!1421218 call!254654)))

(assert (= (and d!1028765 c!607597) b!3523957))

(assert (= (and d!1028765 (not c!607597)) b!3523956))

(assert (= (and d!1028765 c!607595) b!3523958))

(assert (= (and d!1028765 (not c!607595)) b!3523955))

(assert (= (and b!3523955 c!607596) b!3523960))

(assert (= (and b!3523955 (not c!607596)) b!3523959))

(assert (= (and b!3523959 (not res!1421213)) b!3523951))

(assert (= (and b!3523951 res!1421217) b!3523952))

(assert (= (and b!3523952 res!1421215) b!3523950))

(assert (= (and b!3523950 res!1421212) b!3523961))

(assert (= (and b!3523951 (not res!1421219)) b!3523953))

(assert (= (and b!3523953 res!1421216) b!3523962))

(assert (= (and b!3523962 (not res!1421218)) b!3523949))

(assert (= (and b!3523949 (not res!1421214)) b!3523954))

(assert (= (or b!3523958 b!3523952 b!3523962) bm!254649))

(assert (=> d!1028765 m!3970777))

(assert (=> d!1028765 m!3970779))

(assert (=> d!1028765 m!3970783))

(declare-fun m!3976603 () Bool)

(assert (=> d!1028765 m!3976603))

(assert (=> b!3523949 m!3970777))

(declare-fun m!3976605 () Bool)

(assert (=> b!3523949 m!3976605))

(assert (=> b!3523949 m!3976605))

(declare-fun m!3976607 () Bool)

(assert (=> b!3523949 m!3976607))

(assert (=> bm!254649 m!3970777))

(assert (=> bm!254649 m!3970779))

(assert (=> b!3523956 m!3970777))

(declare-fun m!3976609 () Bool)

(assert (=> b!3523956 m!3976609))

(assert (=> b!3523956 m!3970783))

(assert (=> b!3523956 m!3976609))

(declare-fun m!3976611 () Bool)

(assert (=> b!3523956 m!3976611))

(assert (=> b!3523956 m!3970777))

(assert (=> b!3523956 m!3976605))

(assert (=> b!3523956 m!3976611))

(assert (=> b!3523956 m!3976605))

(declare-fun m!3976613 () Bool)

(assert (=> b!3523956 m!3976613))

(assert (=> b!3523961 m!3970777))

(assert (=> b!3523961 m!3976609))

(assert (=> b!3523957 m!3970783))

(declare-fun m!3976615 () Bool)

(assert (=> b!3523957 m!3976615))

(assert (=> b!3523954 m!3970777))

(assert (=> b!3523954 m!3976609))

(assert (=> b!3523950 m!3970777))

(assert (=> b!3523950 m!3976605))

(assert (=> b!3523950 m!3976605))

(assert (=> b!3523950 m!3976607))

(assert (=> b!3520810 d!1028765))

(declare-fun c!607600 () Bool)

(declare-fun call!254655 () Regex!10235)

(declare-fun bm!254650 () Bool)

(declare-fun c!607601 () Bool)

(assert (=> bm!254650 (= call!254655 (derivativeStep!3070 (ite c!607600 (regOne!20983 (regex!5476 lt!1201935)) (ite c!607601 (reg!10564 (regex!5476 lt!1201935)) (regOne!20982 (regex!5476 lt!1201935)))) (head!7385 lt!1201911)))))

(declare-fun b!3523963 () Bool)

(declare-fun e!2181179 () Regex!10235)

(declare-fun call!254657 () Regex!10235)

(assert (=> b!3523963 (= e!2181179 (Union!10235 (Concat!15941 call!254657 (regTwo!20982 (regex!5476 lt!1201935))) EmptyLang!10235))))

(declare-fun b!3523964 () Bool)

(declare-fun c!607602 () Bool)

(assert (=> b!3523964 (= c!607602 (nullable!3517 (regOne!20982 (regex!5476 lt!1201935))))))

(declare-fun e!2181181 () Regex!10235)

(assert (=> b!3523964 (= e!2181181 e!2181179)))

(declare-fun call!254658 () Regex!10235)

(declare-fun b!3523965 () Bool)

(assert (=> b!3523965 (= e!2181179 (Union!10235 (Concat!15941 call!254657 (regTwo!20982 (regex!5476 lt!1201935))) call!254658))))

(declare-fun b!3523966 () Bool)

(declare-fun e!2181180 () Regex!10235)

(assert (=> b!3523966 (= e!2181180 e!2181181)))

(assert (=> b!3523966 (= c!607601 ((_ is Star!10235) (regex!5476 lt!1201935)))))

(declare-fun d!1028767 () Bool)

(declare-fun lt!1203485 () Regex!10235)

(assert (=> d!1028767 (validRegex!4674 lt!1203485)))

(declare-fun e!2181178 () Regex!10235)

(assert (=> d!1028767 (= lt!1203485 e!2181178)))

(declare-fun c!607598 () Bool)

(assert (=> d!1028767 (= c!607598 (or ((_ is EmptyExpr!10235) (regex!5476 lt!1201935)) ((_ is EmptyLang!10235) (regex!5476 lt!1201935))))))

(assert (=> d!1028767 (validRegex!4674 (regex!5476 lt!1201935))))

(assert (=> d!1028767 (= (derivativeStep!3070 (regex!5476 lt!1201935) (head!7385 lt!1201911)) lt!1203485)))

(declare-fun bm!254651 () Bool)

(declare-fun call!254656 () Regex!10235)

(assert (=> bm!254651 (= call!254656 call!254655)))

(declare-fun b!3523967 () Bool)

(declare-fun e!2181182 () Regex!10235)

(assert (=> b!3523967 (= e!2181178 e!2181182)))

(declare-fun c!607599 () Bool)

(assert (=> b!3523967 (= c!607599 ((_ is ElementMatch!10235) (regex!5476 lt!1201935)))))

(declare-fun b!3523968 () Bool)

(assert (=> b!3523968 (= c!607600 ((_ is Union!10235) (regex!5476 lt!1201935)))))

(assert (=> b!3523968 (= e!2181182 e!2181180)))

(declare-fun b!3523969 () Bool)

(assert (=> b!3523969 (= e!2181181 (Concat!15941 call!254656 (regex!5476 lt!1201935)))))

(declare-fun bm!254652 () Bool)

(assert (=> bm!254652 (= call!254658 (derivativeStep!3070 (ite c!607600 (regTwo!20983 (regex!5476 lt!1201935)) (regTwo!20982 (regex!5476 lt!1201935))) (head!7385 lt!1201911)))))

(declare-fun bm!254653 () Bool)

(assert (=> bm!254653 (= call!254657 call!254656)))

(declare-fun b!3523970 () Bool)

(assert (=> b!3523970 (= e!2181180 (Union!10235 call!254655 call!254658))))

(declare-fun b!3523971 () Bool)

(assert (=> b!3523971 (= e!2181178 EmptyLang!10235)))

(declare-fun b!3523972 () Bool)

(assert (=> b!3523972 (= e!2181182 (ite (= (head!7385 lt!1201911) (c!606752 (regex!5476 lt!1201935))) EmptyExpr!10235 EmptyLang!10235))))

(assert (= (and d!1028767 c!607598) b!3523971))

(assert (= (and d!1028767 (not c!607598)) b!3523967))

(assert (= (and b!3523967 c!607599) b!3523972))

(assert (= (and b!3523967 (not c!607599)) b!3523968))

(assert (= (and b!3523968 c!607600) b!3523970))

(assert (= (and b!3523968 (not c!607600)) b!3523966))

(assert (= (and b!3523966 c!607601) b!3523969))

(assert (= (and b!3523966 (not c!607601)) b!3523964))

(assert (= (and b!3523964 c!607602) b!3523965))

(assert (= (and b!3523964 (not c!607602)) b!3523963))

(assert (= (or b!3523965 b!3523963) bm!254653))

(assert (= (or b!3523969 bm!254653) bm!254651))

(assert (= (or b!3523970 bm!254651) bm!254650))

(assert (= (or b!3523970 b!3523965) bm!254652))

(assert (=> bm!254650 m!3970781))

(declare-fun m!3976617 () Bool)

(assert (=> bm!254650 m!3976617))

(declare-fun m!3976619 () Bool)

(assert (=> b!3523964 m!3976619))

(declare-fun m!3976621 () Bool)

(assert (=> d!1028767 m!3976621))

(assert (=> d!1028767 m!3970775))

(assert (=> bm!254652 m!3970781))

(declare-fun m!3976623 () Bool)

(assert (=> bm!254652 m!3976623))

(assert (=> b!3520810 d!1028767))

(assert (=> b!3520810 d!1027783))

(assert (=> b!3520810 d!1028583))

(declare-fun b!3523973 () Bool)

(declare-fun e!2181185 () Option!7614)

(declare-fun lt!1203490 () Option!7614)

(declare-fun lt!1203486 () Option!7614)

(assert (=> b!3523973 (= e!2181185 (ite (and ((_ is None!7613) lt!1203490) ((_ is None!7613) lt!1203486)) None!7613 (ite ((_ is None!7613) lt!1203486) lt!1203490 (ite ((_ is None!7613) lt!1203490) lt!1203486 (ite (>= (size!28411 (_1!21723 (v!37101 lt!1203490))) (size!28411 (_1!21723 (v!37101 lt!1203486)))) lt!1203490 lt!1203486)))))))

(declare-fun call!254659 () Option!7614)

(assert (=> b!3523973 (= lt!1203490 call!254659)))

(assert (=> b!3523973 (= lt!1203486 (maxPrefix!2605 thiss!18206 (t!281699 (t!281699 rules!2135)) lt!1201923))))

(declare-fun b!3523974 () Bool)

(declare-fun e!2181183 () Bool)

(declare-fun e!2181184 () Bool)

(assert (=> b!3523974 (= e!2181183 e!2181184)))

(declare-fun res!1421223 () Bool)

(assert (=> b!3523974 (=> (not res!1421223) (not e!2181184))))

(declare-fun lt!1203487 () Option!7614)

(assert (=> b!3523974 (= res!1421223 (isDefined!5872 lt!1203487))))

(declare-fun b!3523975 () Bool)

(declare-fun res!1421224 () Bool)

(assert (=> b!3523975 (=> (not res!1421224) (not e!2181184))))

(assert (=> b!3523975 (= res!1421224 (matchR!4819 (regex!5476 (rule!8122 (_1!21723 (get!11991 lt!1203487)))) (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1203487))))))))

(declare-fun b!3523976 () Bool)

(assert (=> b!3523976 (= e!2181184 (contains!7007 (t!281699 rules!2135) (rule!8122 (_1!21723 (get!11991 lt!1203487)))))))

(declare-fun b!3523977 () Bool)

(declare-fun res!1421225 () Bool)

(assert (=> b!3523977 (=> (not res!1421225) (not e!2181184))))

(assert (=> b!3523977 (= res!1421225 (= (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1203487)))) (originalCharacters!6190 (_1!21723 (get!11991 lt!1203487)))))))

(declare-fun b!3523978 () Bool)

(declare-fun res!1421222 () Bool)

(assert (=> b!3523978 (=> (not res!1421222) (not e!2181184))))

(assert (=> b!3523978 (= res!1421222 (= (value!176526 (_1!21723 (get!11991 lt!1203487))) (apply!8897 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1203487)))) (seqFromList!4006 (originalCharacters!6190 (_1!21723 (get!11991 lt!1203487)))))))))

(declare-fun b!3523979 () Bool)

(declare-fun res!1421220 () Bool)

(assert (=> b!3523979 (=> (not res!1421220) (not e!2181184))))

(assert (=> b!3523979 (= res!1421220 (< (size!28412 (_2!21723 (get!11991 lt!1203487))) (size!28412 lt!1201923)))))

(declare-fun b!3523980 () Bool)

(assert (=> b!3523980 (= e!2181185 call!254659)))

(declare-fun b!3523981 () Bool)

(declare-fun res!1421221 () Bool)

(assert (=> b!3523981 (=> (not res!1421221) (not e!2181184))))

(assert (=> b!3523981 (= res!1421221 (= (++!9253 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1203487)))) (_2!21723 (get!11991 lt!1203487))) lt!1201923))))

(declare-fun bm!254654 () Bool)

(assert (=> bm!254654 (= call!254659 (maxPrefixOneRule!1772 thiss!18206 (h!42764 (t!281699 rules!2135)) lt!1201923))))

(declare-fun d!1028769 () Bool)

(assert (=> d!1028769 e!2181183))

(declare-fun res!1421226 () Bool)

(assert (=> d!1028769 (=> res!1421226 e!2181183)))

(assert (=> d!1028769 (= res!1421226 (isEmpty!21815 lt!1203487))))

(assert (=> d!1028769 (= lt!1203487 e!2181185)))

(declare-fun c!607603 () Bool)

(assert (=> d!1028769 (= c!607603 (and ((_ is Cons!37344) (t!281699 rules!2135)) ((_ is Nil!37344) (t!281699 (t!281699 rules!2135)))))))

(declare-fun lt!1203489 () Unit!52994)

(declare-fun lt!1203488 () Unit!52994)

(assert (=> d!1028769 (= lt!1203489 lt!1203488)))

(assert (=> d!1028769 (isPrefix!2874 lt!1201923 lt!1201923)))

(assert (=> d!1028769 (= lt!1203488 (lemmaIsPrefixRefl!1833 lt!1201923 lt!1201923))))

(assert (=> d!1028769 (rulesValidInductive!1883 thiss!18206 (t!281699 rules!2135))))

(assert (=> d!1028769 (= (maxPrefix!2605 thiss!18206 (t!281699 rules!2135) lt!1201923) lt!1203487)))

(assert (= (and d!1028769 c!607603) b!3523980))

(assert (= (and d!1028769 (not c!607603)) b!3523973))

(assert (= (or b!3523980 b!3523973) bm!254654))

(assert (= (and d!1028769 (not res!1421226)) b!3523974))

(assert (= (and b!3523974 res!1421223) b!3523977))

(assert (= (and b!3523977 res!1421225) b!3523979))

(assert (= (and b!3523979 res!1421220) b!3523981))

(assert (= (and b!3523981 res!1421221) b!3523978))

(assert (= (and b!3523978 res!1421222) b!3523975))

(assert (= (and b!3523975 res!1421224) b!3523976))

(declare-fun m!3976625 () Bool)

(assert (=> b!3523979 m!3976625))

(declare-fun m!3976627 () Bool)

(assert (=> b!3523979 m!3976627))

(assert (=> b!3523979 m!3971079))

(assert (=> b!3523976 m!3976625))

(declare-fun m!3976629 () Bool)

(assert (=> b!3523976 m!3976629))

(declare-fun m!3976631 () Bool)

(assert (=> d!1028769 m!3976631))

(assert (=> d!1028769 m!3971085))

(assert (=> d!1028769 m!3971087))

(declare-fun m!3976633 () Bool)

(assert (=> d!1028769 m!3976633))

(assert (=> b!3523975 m!3976625))

(declare-fun m!3976635 () Bool)

(assert (=> b!3523975 m!3976635))

(assert (=> b!3523975 m!3976635))

(declare-fun m!3976637 () Bool)

(assert (=> b!3523975 m!3976637))

(assert (=> b!3523975 m!3976637))

(declare-fun m!3976639 () Bool)

(assert (=> b!3523975 m!3976639))

(assert (=> b!3523978 m!3976625))

(declare-fun m!3976641 () Bool)

(assert (=> b!3523978 m!3976641))

(assert (=> b!3523978 m!3976641))

(declare-fun m!3976643 () Bool)

(assert (=> b!3523978 m!3976643))

(declare-fun m!3976645 () Bool)

(assert (=> b!3523973 m!3976645))

(declare-fun m!3976647 () Bool)

(assert (=> b!3523974 m!3976647))

(assert (=> b!3523981 m!3976625))

(assert (=> b!3523981 m!3976635))

(assert (=> b!3523981 m!3976635))

(assert (=> b!3523981 m!3976637))

(assert (=> b!3523981 m!3976637))

(declare-fun m!3976649 () Bool)

(assert (=> b!3523981 m!3976649))

(declare-fun m!3976651 () Bool)

(assert (=> bm!254654 m!3976651))

(assert (=> b!3523977 m!3976625))

(assert (=> b!3523977 m!3976635))

(assert (=> b!3523977 m!3976635))

(assert (=> b!3523977 m!3976637))

(assert (=> b!3521026 d!1028769))

(declare-fun e!2181186 () List!37467)

(declare-fun b!3523983 () Bool)

(assert (=> b!3523983 (= e!2181186 (Cons!37343 (h!42763 (t!281698 (++!9253 lt!1201914 lt!1201944))) (++!9253 (t!281698 (t!281698 (++!9253 lt!1201914 lt!1201944))) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241))))))

(declare-fun d!1028771 () Bool)

(declare-fun e!2181187 () Bool)

(assert (=> d!1028771 e!2181187))

(declare-fun res!1421228 () Bool)

(assert (=> d!1028771 (=> (not res!1421228) (not e!2181187))))

(declare-fun lt!1203491 () List!37467)

(assert (=> d!1028771 (= res!1421228 (= (content!5263 lt!1203491) ((_ map or) (content!5263 (t!281698 (++!9253 lt!1201914 lt!1201944))) (content!5263 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)))))))

(assert (=> d!1028771 (= lt!1203491 e!2181186)))

(declare-fun c!607604 () Bool)

(assert (=> d!1028771 (= c!607604 ((_ is Nil!37343) (t!281698 (++!9253 lt!1201914 lt!1201944))))))

(assert (=> d!1028771 (= (++!9253 (t!281698 (++!9253 lt!1201914 lt!1201944)) (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)) lt!1203491)))

(declare-fun b!3523984 () Bool)

(declare-fun res!1421227 () Bool)

(assert (=> b!3523984 (=> (not res!1421227) (not e!2181187))))

(assert (=> b!3523984 (= res!1421227 (= (size!28412 lt!1203491) (+ (size!28412 (t!281698 (++!9253 lt!1201914 lt!1201944))) (size!28412 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241)))))))

(declare-fun b!3523982 () Bool)

(assert (=> b!3523982 (= e!2181186 (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241))))

(declare-fun b!3523985 () Bool)

(assert (=> b!3523985 (= e!2181187 (or (not (= (printWithSeparatorTokenList!352 thiss!18206 (t!281700 (t!281700 tokens!494)) separatorToken!241) Nil!37343)) (= lt!1203491 (t!281698 (++!9253 lt!1201914 lt!1201944)))))))

(assert (= (and d!1028771 c!607604) b!3523982))

(assert (= (and d!1028771 (not c!607604)) b!3523983))

(assert (= (and d!1028771 res!1421228) b!3523984))

(assert (= (and b!3523984 res!1421227) b!3523985))

(assert (=> b!3523983 m!3970539))

(declare-fun m!3976653 () Bool)

(assert (=> b!3523983 m!3976653))

(declare-fun m!3976655 () Bool)

(assert (=> d!1028771 m!3976655))

(assert (=> d!1028771 m!3976439))

(assert (=> d!1028771 m!3970539))

(assert (=> d!1028771 m!3972211))

(declare-fun m!3976657 () Bool)

(assert (=> b!3523984 m!3976657))

(assert (=> b!3523984 m!3976371))

(assert (=> b!3523984 m!3970539))

(assert (=> b!3523984 m!3972217))

(assert (=> b!3521660 d!1028771))

(declare-fun d!1028773 () Bool)

(assert (=> d!1028773 (= (inv!17 (value!176526 (h!42765 tokens!494))) (= (charsToBigInt!1 (text!40390 (value!176526 (h!42765 tokens!494)))) (value!176518 (value!176526 (h!42765 tokens!494)))))))

(declare-fun bs!565593 () Bool)

(assert (= bs!565593 d!1028773))

(declare-fun m!3976659 () Bool)

(assert (=> bs!565593 m!3976659))

(assert (=> b!3521619 d!1028773))

(declare-fun d!1028775 () Bool)

(assert (=> d!1028775 (= (isEmpty!21818 (list!13662 (_1!21722 (lex!2391 thiss!18206 rules!2135 lt!1201929)))) ((_ is Nil!37345) (list!13662 (_1!21722 (lex!2391 thiss!18206 rules!2135 lt!1201929)))))))

(assert (=> d!1027249 d!1028775))

(declare-fun d!1028777 () Bool)

(assert (=> d!1028777 (= (list!13662 (_1!21722 (lex!2391 thiss!18206 rules!2135 lt!1201929))) (list!13665 (c!606754 (_1!21722 (lex!2391 thiss!18206 rules!2135 lt!1201929)))))))

(declare-fun bs!565594 () Bool)

(assert (= bs!565594 d!1028777))

(declare-fun m!3976661 () Bool)

(assert (=> bs!565594 m!3976661))

(assert (=> d!1027249 d!1028777))

(declare-fun d!1028779 () Bool)

(declare-fun lt!1203494 () Bool)

(assert (=> d!1028779 (= lt!1203494 (isEmpty!21818 (list!13665 (c!606754 (_1!21722 (lex!2391 thiss!18206 rules!2135 lt!1201929))))))))

(assert (=> d!1028779 (= lt!1203494 (= (size!28418 (c!606754 (_1!21722 (lex!2391 thiss!18206 rules!2135 lt!1201929)))) 0))))

(assert (=> d!1028779 (= (isEmpty!21819 (c!606754 (_1!21722 (lex!2391 thiss!18206 rules!2135 lt!1201929)))) lt!1203494)))

(declare-fun bs!565595 () Bool)

(assert (= bs!565595 d!1028779))

(assert (=> bs!565595 m!3976661))

(assert (=> bs!565595 m!3976661))

(declare-fun m!3976663 () Bool)

(assert (=> bs!565595 m!3976663))

(declare-fun m!3976665 () Bool)

(assert (=> bs!565595 m!3976665))

(assert (=> d!1027249 d!1028779))

(assert (=> d!1027327 d!1027817))

(declare-fun b!3523986 () Bool)

(declare-fun e!2181188 () Bool)

(declare-fun call!254662 () Bool)

(assert (=> b!3523986 (= e!2181188 call!254662)))

(declare-fun d!1028781 () Bool)

(declare-fun res!1421229 () Bool)

(declare-fun e!2181191 () Bool)

(assert (=> d!1028781 (=> res!1421229 e!2181191)))

(assert (=> d!1028781 (= res!1421229 ((_ is ElementMatch!10235) (regex!5476 lt!1201933)))))

(assert (=> d!1028781 (= (validRegex!4674 (regex!5476 lt!1201933)) e!2181191)))

(declare-fun b!3523987 () Bool)

(declare-fun res!1421233 () Bool)

(declare-fun e!2181190 () Bool)

(assert (=> b!3523987 (=> (not res!1421233) (not e!2181190))))

(declare-fun call!254661 () Bool)

(assert (=> b!3523987 (= res!1421233 call!254661)))

(declare-fun e!2181194 () Bool)

(assert (=> b!3523987 (= e!2181194 e!2181190)))

(declare-fun b!3523988 () Bool)

(declare-fun e!2181189 () Bool)

(declare-fun call!254660 () Bool)

(assert (=> b!3523988 (= e!2181189 call!254660)))

(declare-fun bm!254655 () Bool)

(assert (=> bm!254655 (= call!254660 call!254662)))

(declare-fun b!3523989 () Bool)

(assert (=> b!3523989 (= e!2181190 call!254660)))

(declare-fun bm!254656 () Bool)

(declare-fun c!607605 () Bool)

(declare-fun c!607606 () Bool)

(assert (=> bm!254656 (= call!254662 (validRegex!4674 (ite c!607605 (reg!10564 (regex!5476 lt!1201933)) (ite c!607606 (regTwo!20983 (regex!5476 lt!1201933)) (regTwo!20982 (regex!5476 lt!1201933))))))))

(declare-fun b!3523990 () Bool)

(declare-fun e!2181192 () Bool)

(assert (=> b!3523990 (= e!2181191 e!2181192)))

(assert (=> b!3523990 (= c!607605 ((_ is Star!10235) (regex!5476 lt!1201933)))))

(declare-fun b!3523991 () Bool)

(declare-fun res!1421230 () Bool)

(declare-fun e!2181193 () Bool)

(assert (=> b!3523991 (=> res!1421230 e!2181193)))

(assert (=> b!3523991 (= res!1421230 (not ((_ is Concat!15941) (regex!5476 lt!1201933))))))

(assert (=> b!3523991 (= e!2181194 e!2181193)))

(declare-fun b!3523992 () Bool)

(assert (=> b!3523992 (= e!2181192 e!2181194)))

(assert (=> b!3523992 (= c!607606 ((_ is Union!10235) (regex!5476 lt!1201933)))))

(declare-fun b!3523993 () Bool)

(assert (=> b!3523993 (= e!2181192 e!2181188)))

(declare-fun res!1421231 () Bool)

(assert (=> b!3523993 (= res!1421231 (not (nullable!3517 (reg!10564 (regex!5476 lt!1201933)))))))

(assert (=> b!3523993 (=> (not res!1421231) (not e!2181188))))

(declare-fun b!3523994 () Bool)

(assert (=> b!3523994 (= e!2181193 e!2181189)))

(declare-fun res!1421232 () Bool)

(assert (=> b!3523994 (=> (not res!1421232) (not e!2181189))))

(assert (=> b!3523994 (= res!1421232 call!254661)))

(declare-fun bm!254657 () Bool)

(assert (=> bm!254657 (= call!254661 (validRegex!4674 (ite c!607606 (regOne!20983 (regex!5476 lt!1201933)) (regOne!20982 (regex!5476 lt!1201933)))))))

(assert (= (and d!1028781 (not res!1421229)) b!3523990))

(assert (= (and b!3523990 c!607605) b!3523993))

(assert (= (and b!3523990 (not c!607605)) b!3523992))

(assert (= (and b!3523993 res!1421231) b!3523986))

(assert (= (and b!3523992 c!607606) b!3523987))

(assert (= (and b!3523992 (not c!607606)) b!3523991))

(assert (= (and b!3523987 res!1421233) b!3523989))

(assert (= (and b!3523991 (not res!1421230)) b!3523994))

(assert (= (and b!3523994 res!1421232) b!3523988))

(assert (= (or b!3523989 b!3523988) bm!254655))

(assert (= (or b!3523987 b!3523994) bm!254657))

(assert (= (or b!3523986 bm!254655) bm!254656))

(declare-fun m!3976667 () Bool)

(assert (=> bm!254656 m!3976667))

(declare-fun m!3976669 () Bool)

(assert (=> b!3523993 m!3976669))

(declare-fun m!3976671 () Bool)

(assert (=> bm!254657 m!3976671))

(assert (=> d!1027327 d!1028781))

(declare-fun d!1028783 () Bool)

(declare-fun c!607607 () Bool)

(assert (=> d!1028783 (= c!607607 ((_ is Nil!37343) lt!1202303))))

(declare-fun e!2181195 () (InoxSet C!20656))

(assert (=> d!1028783 (= (content!5263 lt!1202303) e!2181195)))

(declare-fun b!3523995 () Bool)

(assert (=> b!3523995 (= e!2181195 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3523996 () Bool)

(assert (=> b!3523996 (= e!2181195 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 lt!1202303) true) (content!5263 (t!281698 lt!1202303))))))

(assert (= (and d!1028783 c!607607) b!3523995))

(assert (= (and d!1028783 (not c!607607)) b!3523996))

(declare-fun m!3976673 () Bool)

(assert (=> b!3523996 m!3976673))

(declare-fun m!3976675 () Bool)

(assert (=> b!3523996 m!3976675))

(assert (=> d!1027277 d!1028783))

(assert (=> d!1027277 d!1028661))

(declare-fun d!1028785 () Bool)

(declare-fun c!607608 () Bool)

(assert (=> d!1028785 (= c!607608 ((_ is Nil!37343) lt!1201943))))

(declare-fun e!2181196 () (InoxSet C!20656))

(assert (=> d!1028785 (= (content!5263 lt!1201943) e!2181196)))

(declare-fun b!3523997 () Bool)

(assert (=> b!3523997 (= e!2181196 ((as const (Array C!20656 Bool)) false))))

(declare-fun b!3523998 () Bool)

(assert (=> b!3523998 (= e!2181196 ((_ map or) (store ((as const (Array C!20656 Bool)) false) (h!42763 lt!1201943) true) (content!5263 (t!281698 lt!1201943))))))

(assert (= (and d!1028785 c!607608) b!3523997))

(assert (= (and d!1028785 (not c!607608)) b!3523998))

(declare-fun m!3976677 () Bool)

(assert (=> b!3523998 m!3976677))

(declare-fun m!3976679 () Bool)

(assert (=> b!3523998 m!3976679))

(assert (=> d!1027277 d!1028785))

(declare-fun b!3524000 () Bool)

(declare-fun e!2181198 () Bool)

(declare-fun e!2181197 () Bool)

(assert (=> b!3524000 (= e!2181198 e!2181197)))

(declare-fun res!1421236 () Bool)

(assert (=> b!3524000 (=> (not res!1421236) (not e!2181197))))

(assert (=> b!3524000 (= res!1421236 (<= (- 1) (- (height!1724 (left!29168 (c!606754 lt!1202177))) (height!1724 (right!29498 (c!606754 lt!1202177))))))))

(declare-fun b!3524001 () Bool)

(declare-fun res!1421238 () Bool)

(assert (=> b!3524001 (=> (not res!1421238) (not e!2181197))))

(assert (=> b!3524001 (= res!1421238 (<= (- (height!1724 (left!29168 (c!606754 lt!1202177))) (height!1724 (right!29498 (c!606754 lt!1202177)))) 1))))

(declare-fun b!3524002 () Bool)

(assert (=> b!3524002 (= e!2181197 (not (isEmpty!21819 (right!29498 (c!606754 lt!1202177)))))))

(declare-fun b!3524003 () Bool)

(declare-fun res!1421239 () Bool)

(assert (=> b!3524003 (=> (not res!1421239) (not e!2181197))))

(assert (=> b!3524003 (= res!1421239 (isBalanced!3457 (right!29498 (c!606754 lt!1202177))))))

(declare-fun b!3524004 () Bool)

(declare-fun res!1421235 () Bool)

(assert (=> b!3524004 (=> (not res!1421235) (not e!2181197))))

(assert (=> b!3524004 (= res!1421235 (isBalanced!3457 (left!29168 (c!606754 lt!1202177))))))

(declare-fun b!3523999 () Bool)

(declare-fun res!1421234 () Bool)

(assert (=> b!3523999 (=> (not res!1421234) (not e!2181197))))

(assert (=> b!3523999 (= res!1421234 (not (isEmpty!21819 (left!29168 (c!606754 lt!1202177)))))))

(declare-fun d!1028787 () Bool)

(declare-fun res!1421237 () Bool)

(assert (=> d!1028787 (=> res!1421237 e!2181198)))

(assert (=> d!1028787 (= res!1421237 (not ((_ is Node!11328) (c!606754 lt!1202177))))))

(assert (=> d!1028787 (= (isBalanced!3457 (c!606754 lt!1202177)) e!2181198)))

(assert (= (and d!1028787 (not res!1421237)) b!3524000))

(assert (= (and b!3524000 res!1421236) b!3524001))

(assert (= (and b!3524001 res!1421238) b!3524004))

(assert (= (and b!3524004 res!1421235) b!3524003))

(assert (= (and b!3524003 res!1421239) b!3523999))

(assert (= (and b!3523999 res!1421234) b!3524002))

(declare-fun m!3976681 () Bool)

(assert (=> b!3524002 m!3976681))

(declare-fun m!3976683 () Bool)

(assert (=> b!3523999 m!3976683))

(declare-fun m!3976685 () Bool)

(assert (=> b!3524000 m!3976685))

(declare-fun m!3976687 () Bool)

(assert (=> b!3524000 m!3976687))

(assert (=> b!3524001 m!3976685))

(assert (=> b!3524001 m!3976687))

(declare-fun m!3976689 () Bool)

(assert (=> b!3524004 m!3976689))

(declare-fun m!3976691 () Bool)

(assert (=> b!3524003 m!3976691))

(assert (=> b!3521276 d!1028787))

(declare-fun d!1028789 () Bool)

(declare-fun res!1421240 () Bool)

(declare-fun e!2181199 () Bool)

(assert (=> d!1028789 (=> res!1421240 e!2181199)))

(assert (=> d!1028789 (= res!1421240 (not ((_ is Cons!37344) (t!281699 rules!2135))))))

(assert (=> d!1028789 (= (sepAndNonSepRulesDisjointChars!1670 rules!2135 (t!281699 rules!2135)) e!2181199)))

(declare-fun b!3524005 () Bool)

(declare-fun e!2181200 () Bool)

(assert (=> b!3524005 (= e!2181199 e!2181200)))

(declare-fun res!1421241 () Bool)

(assert (=> b!3524005 (=> (not res!1421241) (not e!2181200))))

(assert (=> b!3524005 (= res!1421241 (ruleDisjointCharsFromAllFromOtherType!749 (h!42764 (t!281699 rules!2135)) rules!2135))))

(declare-fun b!3524006 () Bool)

(assert (=> b!3524006 (= e!2181200 (sepAndNonSepRulesDisjointChars!1670 rules!2135 (t!281699 (t!281699 rules!2135))))))

(assert (= (and d!1028789 (not res!1421240)) b!3524005))

(assert (= (and b!3524005 res!1421241) b!3524006))

(declare-fun m!3976693 () Bool)

(assert (=> b!3524005 m!3976693))

(declare-fun m!3976695 () Bool)

(assert (=> b!3524006 m!3976695))

(assert (=> b!3521708 d!1028789))

(declare-fun d!1028791 () Bool)

(assert (=> d!1028791 (= (isDefined!5870 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494))))) (not (isEmpty!21814 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494)))))))))

(declare-fun bs!565596 () Bool)

(assert (= bs!565596 d!1028791))

(assert (=> bs!565596 m!3970597))

(declare-fun m!3976697 () Bool)

(assert (=> bs!565596 m!3976697))

(assert (=> d!1027033 d!1028791))

(assert (=> d!1027033 d!1027021))

(declare-fun d!1028793 () Bool)

(declare-fun e!2181201 () Bool)

(assert (=> d!1028793 e!2181201))

(declare-fun res!1421242 () Bool)

(assert (=> d!1028793 (=> (not res!1421242) (not e!2181201))))

(assert (=> d!1028793 (= res!1421242 (isDefined!5870 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494))))))))

(assert (=> d!1028793 true))

(declare-fun _$52!1994 () Unit!52994)

(assert (=> d!1028793 (= (choose!20442 thiss!18206 rules!2135 lt!1201911 (h!42765 tokens!494)) _$52!1994)))

(declare-fun b!3524007 () Bool)

(declare-fun res!1421243 () Bool)

(assert (=> b!3524007 (=> (not res!1421243) (not e!2181201))))

(assert (=> b!3524007 (= res!1421243 (matchR!4819 (regex!5476 (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494)))))) (list!13659 (charsOf!3490 (h!42765 tokens!494)))))))

(declare-fun b!3524008 () Bool)

(assert (=> b!3524008 (= e!2181201 (= (rule!8122 (h!42765 tokens!494)) (get!11989 (getRuleFromTag!1119 thiss!18206 rules!2135 (tag!6114 (rule!8122 (h!42765 tokens!494)))))))))

(assert (= (and d!1028793 res!1421242) b!3524007))

(assert (= (and b!3524007 res!1421243) b!3524008))

(assert (=> d!1028793 m!3970597))

(assert (=> d!1028793 m!3970597))

(assert (=> d!1028793 m!3971125))

(assert (=> b!3524007 m!3970597))

(assert (=> b!3524007 m!3970597))

(assert (=> b!3524007 m!3971131))

(assert (=> b!3524007 m!3970673))

(assert (=> b!3524007 m!3970675))

(assert (=> b!3524007 m!3970673))

(assert (=> b!3524007 m!3970675))

(assert (=> b!3524007 m!3971129))

(assert (=> b!3524008 m!3970597))

(assert (=> b!3524008 m!3970597))

(assert (=> b!3524008 m!3971131))

(assert (=> d!1027033 d!1028793))

(assert (=> d!1027033 d!1027011))

(declare-fun d!1028795 () Bool)

(assert (=> d!1028795 (= (isEmpty!21814 lt!1201945) (not ((_ is Some!7612) lt!1201945)))))

(assert (=> d!1027035 d!1028795))

(declare-fun d!1028797 () Bool)

(declare-fun lt!1203495 () Bool)

(assert (=> d!1028797 (= lt!1203495 (select (content!5263 (t!281698 lt!1201914)) lt!1201942))))

(declare-fun e!2181202 () Bool)

(assert (=> d!1028797 (= lt!1203495 e!2181202)))

(declare-fun res!1421244 () Bool)

(assert (=> d!1028797 (=> (not res!1421244) (not e!2181202))))

(assert (=> d!1028797 (= res!1421244 ((_ is Cons!37343) (t!281698 lt!1201914)))))

(assert (=> d!1028797 (= (contains!7004 (t!281698 lt!1201914) lt!1201942) lt!1203495)))

(declare-fun b!3524009 () Bool)

(declare-fun e!2181203 () Bool)

(assert (=> b!3524009 (= e!2181202 e!2181203)))

(declare-fun res!1421245 () Bool)

(assert (=> b!3524009 (=> res!1421245 e!2181203)))

(assert (=> b!3524009 (= res!1421245 (= (h!42763 (t!281698 lt!1201914)) lt!1201942))))

(declare-fun b!3524010 () Bool)

(assert (=> b!3524010 (= e!2181203 (contains!7004 (t!281698 (t!281698 lt!1201914)) lt!1201942))))

(assert (= (and d!1028797 res!1421244) b!3524009))

(assert (= (and b!3524009 (not res!1421245)) b!3524010))

(assert (=> d!1028797 m!3975949))

(declare-fun m!3976699 () Bool)

(assert (=> d!1028797 m!3976699))

(declare-fun m!3976701 () Bool)

(assert (=> b!3524010 m!3976701))

(assert (=> b!3521623 d!1028797))

(declare-fun d!1028799 () Bool)

(assert (=> d!1028799 (= (list!13659 (_2!21722 lt!1202292)) (list!13663 (c!606753 (_2!21722 lt!1202292))))))

(declare-fun bs!565597 () Bool)

(assert (= bs!565597 d!1028799))

(declare-fun m!3976703 () Bool)

(assert (=> bs!565597 m!3976703))

(assert (=> b!3521561 d!1028799))

(assert (=> b!3521561 d!1028179))

(assert (=> b!3521561 d!1028181))

(declare-fun b!3524012 () Bool)

(declare-fun e!2181204 () List!37467)

(assert (=> b!3524012 (= e!2181204 (Cons!37343 (h!42763 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070))))) (++!9253 (t!281698 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070))))) (_2!21723 (get!11991 lt!1202070)))))))

(declare-fun d!1028801 () Bool)

(declare-fun e!2181205 () Bool)

(assert (=> d!1028801 e!2181205))

(declare-fun res!1421247 () Bool)

(assert (=> d!1028801 (=> (not res!1421247) (not e!2181205))))

(declare-fun lt!1203496 () List!37467)

(assert (=> d!1028801 (= res!1421247 (= (content!5263 lt!1203496) ((_ map or) (content!5263 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070))))) (content!5263 (_2!21723 (get!11991 lt!1202070))))))))

(assert (=> d!1028801 (= lt!1203496 e!2181204)))

(declare-fun c!607609 () Bool)

(assert (=> d!1028801 (= c!607609 ((_ is Nil!37343) (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070))))))))

(assert (=> d!1028801 (= (++!9253 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070)))) (_2!21723 (get!11991 lt!1202070))) lt!1203496)))

(declare-fun b!3524013 () Bool)

(declare-fun res!1421246 () Bool)

(assert (=> b!3524013 (=> (not res!1421246) (not e!2181205))))

(assert (=> b!3524013 (= res!1421246 (= (size!28412 lt!1203496) (+ (size!28412 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070))))) (size!28412 (_2!21723 (get!11991 lt!1202070))))))))

(declare-fun b!3524011 () Bool)

(assert (=> b!3524011 (= e!2181204 (_2!21723 (get!11991 lt!1202070)))))

(declare-fun b!3524014 () Bool)

(assert (=> b!3524014 (= e!2181205 (or (not (= (_2!21723 (get!11991 lt!1202070)) Nil!37343)) (= lt!1203496 (list!13659 (charsOf!3490 (_1!21723 (get!11991 lt!1202070)))))))))

(assert (= (and d!1028801 c!607609) b!3524011))

(assert (= (and d!1028801 (not c!607609)) b!3524012))

(assert (= (and d!1028801 res!1421247) b!3524013))

(assert (= (and b!3524013 res!1421246) b!3524014))

(declare-fun m!3976705 () Bool)

(assert (=> b!3524012 m!3976705))

(declare-fun m!3976707 () Bool)

(assert (=> d!1028801 m!3976707))

(assert (=> d!1028801 m!3971093))

(declare-fun m!3976709 () Bool)

(assert (=> d!1028801 m!3976709))

(declare-fun m!3976711 () Bool)

(assert (=> d!1028801 m!3976711))

(declare-fun m!3976713 () Bool)

(assert (=> b!3524013 m!3976713))

(assert (=> b!3524013 m!3971093))

(declare-fun m!3976715 () Bool)

(assert (=> b!3524013 m!3976715))

(assert (=> b!3524013 m!3971077))

(assert (=> b!3521034 d!1028801))

(assert (=> b!3521034 d!1028185))

(assert (=> b!3521034 d!1028187))

(assert (=> b!3521034 d!1027905))

(declare-fun d!1028803 () Bool)

(declare-fun lt!1203497 () Int)

(assert (=> d!1028803 (>= lt!1203497 0)))

(declare-fun e!2181206 () Int)

(assert (=> d!1028803 (= lt!1203497 e!2181206)))

(declare-fun c!607610 () Bool)

(assert (=> d!1028803 (= c!607610 ((_ is Nil!37343) (_2!21723 (get!11991 lt!1202217))))))

(assert (=> d!1028803 (= (size!28412 (_2!21723 (get!11991 lt!1202217))) lt!1203497)))

(declare-fun b!3524015 () Bool)

(assert (=> b!3524015 (= e!2181206 0)))

(declare-fun b!3524016 () Bool)

(assert (=> b!3524016 (= e!2181206 (+ 1 (size!28412 (t!281698 (_2!21723 (get!11991 lt!1202217))))))))

(assert (= (and d!1028803 c!607610) b!3524015))

(assert (= (and d!1028803 (not c!607610)) b!3524016))

(declare-fun m!3976717 () Bool)

(assert (=> b!3524016 m!3976717))

(assert (=> b!3521322 d!1028803))

(assert (=> b!3521322 d!1027909))

(assert (=> b!3521322 d!1027241))

(declare-fun d!1028805 () Bool)

(assert (=> d!1028805 (dynLambda!15912 lambda!122742 (h!42765 tokens!494))))

(assert (=> d!1028805 true))

(declare-fun _$7!1369 () Unit!52994)

(assert (=> d!1028805 (= (choose!20447 tokens!494 lambda!122742 (h!42765 tokens!494)) _$7!1369)))

(declare-fun b_lambda!102953 () Bool)

(assert (=> (not b_lambda!102953) (not d!1028805)))

(declare-fun bs!565598 () Bool)

(assert (= bs!565598 d!1028805))

(assert (=> bs!565598 m!3972261))

(assert (=> d!1027321 d!1028805))

(assert (=> d!1027321 d!1027323))

(assert (=> b!3521495 d!1027761))

(declare-fun b!3524018 () Bool)

(declare-fun e!2181207 () List!37467)

(assert (=> b!3524018 (= e!2181207 (Cons!37343 (h!42763 (t!281698 lt!1201911)) (++!9253 (t!281698 (t!281698 lt!1201911)) lt!1201943)))))

(declare-fun d!1028807 () Bool)

(declare-fun e!2181208 () Bool)

(assert (=> d!1028807 e!2181208))

(declare-fun res!1421249 () Bool)

(assert (=> d!1028807 (=> (not res!1421249) (not e!2181208))))

(declare-fun lt!1203498 () List!37467)

(assert (=> d!1028807 (= res!1421249 (= (content!5263 lt!1203498) ((_ map or) (content!5263 (t!281698 lt!1201911)) (content!5263 lt!1201943))))))

(assert (=> d!1028807 (= lt!1203498 e!2181207)))

(declare-fun c!607611 () Bool)

(assert (=> d!1028807 (= c!607611 ((_ is Nil!37343) (t!281698 lt!1201911)))))

(assert (=> d!1028807 (= (++!9253 (t!281698 lt!1201911) lt!1201943) lt!1203498)))

(declare-fun b!3524019 () Bool)

(declare-fun res!1421248 () Bool)

(assert (=> b!3524019 (=> (not res!1421248) (not e!2181208))))

(assert (=> b!3524019 (= res!1421248 (= (size!28412 lt!1203498) (+ (size!28412 (t!281698 lt!1201911)) (size!28412 lt!1201943))))))

(declare-fun b!3524017 () Bool)

(assert (=> b!3524017 (= e!2181207 lt!1201943)))

(declare-fun b!3524020 () Bool)

(assert (=> b!3524020 (= e!2181208 (or (not (= lt!1201943 Nil!37343)) (= lt!1203498 (t!281698 lt!1201911))))))

(assert (= (and d!1028807 c!607611) b!3524017))

(assert (= (and d!1028807 (not c!607611)) b!3524018))

(assert (= (and d!1028807 res!1421249) b!3524019))

(assert (= (and b!3524019 res!1421248) b!3524020))

(declare-fun m!3976719 () Bool)

(assert (=> b!3524018 m!3976719))

(declare-fun m!3976721 () Bool)

(assert (=> d!1028807 m!3976721))

(assert (=> d!1028807 m!3976329))

(assert (=> d!1028807 m!3972157))

(declare-fun m!3976723 () Bool)

(assert (=> b!3524019 m!3976723))

(assert (=> b!3524019 m!3971851))

(assert (=> b!3524019 m!3972161))

(assert (=> b!3521625 d!1028807))

(assert (=> b!3521423 d!1028749))

(assert (=> b!3521646 d!1027177))

(declare-fun d!1028809 () Bool)

(declare-fun res!1421250 () Bool)

(declare-fun e!2181209 () Bool)

(assert (=> d!1028809 (=> (not res!1421250) (not e!2181209))))

(assert (=> d!1028809 (= res!1421250 (not (isEmpty!21812 (originalCharacters!6190 (h!42765 (t!281700 tokens!494))))))))

(assert (=> d!1028809 (= (inv!50577 (h!42765 (t!281700 tokens!494))) e!2181209)))

(declare-fun b!3524021 () Bool)

(declare-fun res!1421251 () Bool)

(assert (=> b!3524021 (=> (not res!1421251) (not e!2181209))))

(assert (=> b!3524021 (= res!1421251 (= (originalCharacters!6190 (h!42765 (t!281700 tokens!494))) (list!13659 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494)))))))))

(declare-fun b!3524022 () Bool)

(assert (=> b!3524022 (= e!2181209 (= (size!28411 (h!42765 (t!281700 tokens!494))) (size!28412 (originalCharacters!6190 (h!42765 (t!281700 tokens!494))))))))

(assert (= (and d!1028809 res!1421250) b!3524021))

(assert (= (and b!3524021 res!1421251) b!3524022))

(declare-fun b_lambda!102955 () Bool)

(assert (=> (not b_lambda!102955) (not b!3524021)))

(assert (=> b!3524021 t!281814))

(declare-fun b_and!251177 () Bool)

(assert (= b_and!251167 (and (=> t!281814 result!241088) b_and!251177)))

(assert (=> b!3524021 t!281792))

(declare-fun b_and!251179 () Bool)

(assert (= b_and!251171 (and (=> t!281792 result!241060) b_and!251179)))

(assert (=> b!3524021 t!281794))

(declare-fun b_and!251181 () Bool)

(assert (= b_and!251175 (and (=> t!281794 result!241062) b_and!251181)))

(assert (=> b!3524021 t!281804))

(declare-fun b_and!251183 () Bool)

(assert (= b_and!251173 (and (=> t!281804 result!241076) b_and!251183)))

(assert (=> b!3524021 t!281790))

(declare-fun b_and!251185 () Bool)

(assert (= b_and!251169 (and (=> t!281790 result!241058) b_and!251185)))

(declare-fun m!3976725 () Bool)

(assert (=> d!1028809 m!3976725))

(assert (=> b!3524021 m!3972255))

(assert (=> b!3524021 m!3972255))

(declare-fun m!3976727 () Bool)

(assert (=> b!3524021 m!3976727))

(declare-fun m!3976729 () Bool)

(assert (=> b!3524022 m!3976729))

(assert (=> b!3521740 d!1028809))

(declare-fun bs!565599 () Bool)

(declare-fun d!1028811 () Bool)

(assert (= bs!565599 (and d!1028811 d!1028373)))

(declare-fun lambda!122795 () Int)

(assert (=> bs!565599 (= (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) (= lambda!122795 lambda!122782))))

(declare-fun bs!565600 () Bool)

(assert (= bs!565600 (and d!1028811 d!1028449)))

(assert (=> bs!565600 (= (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (h!42764 rules!2135)))) (= lambda!122795 lambda!122789))))

(assert (=> d!1028811 true))

(assert (=> d!1028811 (< (dynLambda!15904 order!20085 (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241)))) (dynLambda!15916 order!20097 lambda!122795))))

(assert (=> d!1028811 (= (equivClasses!2211 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241)))) (Forall2!948 lambda!122795))))

(declare-fun bs!565601 () Bool)

(assert (= bs!565601 d!1028811))

(declare-fun m!3976731 () Bool)

(assert (=> bs!565601 m!3976731))

(assert (=> b!3521648 d!1028811))

(assert (=> d!1027229 d!1027019))

(assert (=> d!1027229 d!1027133))

(declare-fun d!1028813 () Bool)

(assert (=> d!1028813 (= (maxPrefixOneRule!1772 thiss!18206 (rule!8122 (h!42765 (t!281700 tokens!494))) lt!1201914) (Some!7613 (tuple2!37179 (Token!10319 (apply!8897 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) (seqFromList!4006 lt!1201914)) (rule!8122 (h!42765 (t!281700 tokens!494))) (size!28412 lt!1201914) lt!1201914) Nil!37343)))))

(assert (=> d!1028813 true))

(declare-fun _$59!542 () Unit!52994)

(assert (=> d!1028813 (= (choose!20448 thiss!18206 rules!2135 lt!1201914 lt!1201914 Nil!37343 (rule!8122 (h!42765 (t!281700 tokens!494)))) _$59!542)))

(declare-fun bs!565602 () Bool)

(assert (= bs!565602 d!1028813))

(assert (=> bs!565602 m!3970609))

(assert (=> bs!565602 m!3970589))

(assert (=> bs!565602 m!3970589))

(assert (=> bs!565602 m!3970591))

(assert (=> bs!565602 m!3970651))

(assert (=> d!1027229 d!1028813))

(assert (=> d!1027229 d!1027241))

(assert (=> d!1027229 d!1027281))

(assert (=> d!1027229 d!1027247))

(assert (=> d!1027041 d!1026957))

(declare-fun d!1028815 () Bool)

(assert (=> d!1028815 (rulesProduceIndividualToken!2557 thiss!18206 rules!2135 (h!42765 tokens!494))))

(assert (=> d!1028815 true))

(declare-fun _$77!1020 () Unit!52994)

(assert (=> d!1028815 (= (choose!20443 thiss!18206 rules!2135 tokens!494 (h!42765 tokens!494)) _$77!1020)))

(declare-fun bs!565603 () Bool)

(assert (= bs!565603 d!1028815))

(assert (=> bs!565603 m!3970703))

(assert (=> d!1027041 d!1028815))

(assert (=> d!1027041 d!1027281))

(declare-fun d!1028817 () Bool)

(assert (=> d!1028817 (= (list!13662 lt!1202301) (list!13665 (c!606754 lt!1202301)))))

(declare-fun bs!565604 () Bool)

(assert (= bs!565604 d!1028817))

(declare-fun m!3976733 () Bool)

(assert (=> bs!565604 m!3976733))

(assert (=> d!1027263 d!1028817))

(declare-fun d!1028819 () Bool)

(declare-fun e!2181210 () Bool)

(assert (=> d!1028819 e!2181210))

(declare-fun res!1421252 () Bool)

(assert (=> d!1028819 (=> (not res!1421252) (not e!2181210))))

(declare-fun lt!1203499 () BalanceConc!22270)

(assert (=> d!1028819 (= res!1421252 (= (list!13662 lt!1203499) (Cons!37345 (h!42765 tokens!494) Nil!37345)))))

(assert (=> d!1028819 (= lt!1203499 (choose!20459 (h!42765 tokens!494)))))

(assert (=> d!1028819 (= (singleton!1150 (h!42765 tokens!494)) lt!1203499)))

(declare-fun b!3524023 () Bool)

(assert (=> b!3524023 (= e!2181210 (isBalanced!3457 (c!606754 lt!1203499)))))

(assert (= (and d!1028819 res!1421252) b!3524023))

(declare-fun m!3976735 () Bool)

(assert (=> d!1028819 m!3976735))

(declare-fun m!3976737 () Bool)

(assert (=> d!1028819 m!3976737))

(declare-fun m!3976739 () Bool)

(assert (=> b!3524023 m!3976739))

(assert (=> d!1027263 d!1028819))

(declare-fun bm!254658 () Bool)

(declare-fun c!607614 () Bool)

(declare-fun c!607615 () Bool)

(declare-fun call!254664 () List!37467)

(assert (=> bm!254658 (= call!254664 (usedCharacters!710 (ite c!607614 (reg!10564 (ite c!606828 (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) (ite c!607615 (regTwo!20983 (ite c!606828 (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) (regOne!20982 (ite c!606828 (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494))))))))))))

(declare-fun b!3524024 () Bool)

(declare-fun e!2181212 () List!37467)

(declare-fun call!254666 () List!37467)

(assert (=> b!3524024 (= e!2181212 call!254666)))

(declare-fun bm!254659 () Bool)

(declare-fun call!254663 () List!37467)

(assert (=> bm!254659 (= call!254663 (usedCharacters!710 (ite c!607615 (regOne!20983 (ite c!606828 (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) (regTwo!20982 (ite c!606828 (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))))))))

(declare-fun b!3524025 () Bool)

(assert (=> b!3524025 (= e!2181212 call!254666)))

(declare-fun d!1028821 () Bool)

(declare-fun c!607613 () Bool)

(assert (=> d!1028821 (= c!607613 (or ((_ is EmptyExpr!10235) (ite c!606828 (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) ((_ is EmptyLang!10235) (ite c!606828 (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494))))))))))

(declare-fun e!2181211 () List!37467)

(assert (=> d!1028821 (= (usedCharacters!710 (ite c!606828 (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) e!2181211)))

(declare-fun b!3524026 () Bool)

(assert (=> b!3524026 (= e!2181211 Nil!37343)))

(declare-fun bm!254660 () Bool)

(declare-fun call!254665 () List!37467)

(assert (=> bm!254660 (= call!254666 (++!9253 (ite c!607615 call!254663 call!254665) (ite c!607615 call!254665 call!254663)))))

(declare-fun b!3524027 () Bool)

(declare-fun e!2181214 () List!37467)

(assert (=> b!3524027 (= e!2181211 e!2181214)))

(declare-fun c!607612 () Bool)

(assert (=> b!3524027 (= c!607612 ((_ is ElementMatch!10235) (ite c!606828 (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))))))

(declare-fun b!3524028 () Bool)

(assert (=> b!3524028 (= c!607614 ((_ is Star!10235) (ite c!606828 (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))))))

(declare-fun e!2181213 () List!37467)

(assert (=> b!3524028 (= e!2181214 e!2181213)))

(declare-fun b!3524029 () Bool)

(assert (=> b!3524029 (= e!2181214 (Cons!37343 (c!606752 (ite c!606828 (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) Nil!37343))))

(declare-fun b!3524030 () Bool)

(assert (=> b!3524030 (= e!2181213 call!254664)))

(declare-fun bm!254661 () Bool)

(assert (=> bm!254661 (= call!254665 call!254664)))

(declare-fun b!3524031 () Bool)

(assert (=> b!3524031 (= e!2181213 e!2181212)))

(assert (=> b!3524031 (= c!607615 ((_ is Union!10235) (ite c!606828 (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))))))

(assert (= (and d!1028821 c!607613) b!3524026))

(assert (= (and d!1028821 (not c!607613)) b!3524027))

(assert (= (and b!3524027 c!607612) b!3524029))

(assert (= (and b!3524027 (not c!607612)) b!3524028))

(assert (= (and b!3524028 c!607614) b!3524030))

(assert (= (and b!3524028 (not c!607614)) b!3524031))

(assert (= (and b!3524031 c!607615) b!3524025))

(assert (= (and b!3524031 (not c!607615)) b!3524024))

(assert (= (or b!3524025 b!3524024) bm!254661))

(assert (= (or b!3524025 b!3524024) bm!254659))

(assert (= (or b!3524025 b!3524024) bm!254660))

(assert (= (or b!3524030 bm!254661) bm!254658))

(declare-fun m!3976741 () Bool)

(assert (=> bm!254658 m!3976741))

(declare-fun m!3976743 () Bool)

(assert (=> bm!254659 m!3976743))

(declare-fun m!3976745 () Bool)

(assert (=> bm!254660 m!3976745))

(assert (=> bm!254375 d!1028821))

(declare-fun d!1028823 () Bool)

(declare-fun lt!1203500 () Int)

(assert (=> d!1028823 (>= lt!1203500 0)))

(declare-fun e!2181215 () Int)

(assert (=> d!1028823 (= lt!1203500 e!2181215)))

(declare-fun c!607616 () Bool)

(assert (=> d!1028823 (= c!607616 ((_ is Nil!37345) (list!13662 (_1!21722 lt!1201946))))))

(assert (=> d!1028823 (= (size!28417 (list!13662 (_1!21722 lt!1201946))) lt!1203500)))

(declare-fun b!3524032 () Bool)

(assert (=> b!3524032 (= e!2181215 0)))

(declare-fun b!3524033 () Bool)

(assert (=> b!3524033 (= e!2181215 (+ 1 (size!28417 (t!281700 (list!13662 (_1!21722 lt!1201946))))))))

(assert (= (and d!1028823 c!607616) b!3524032))

(assert (= (and d!1028823 (not c!607616)) b!3524033))

(declare-fun m!3976747 () Bool)

(assert (=> b!3524033 m!3976747))

(assert (=> d!1027127 d!1028823))

(assert (=> d!1027127 d!1028395))

(declare-fun d!1028825 () Bool)

(declare-fun lt!1203501 () Int)

(assert (=> d!1028825 (= lt!1203501 (size!28417 (list!13665 (c!606754 (_1!21722 lt!1201946)))))))

(assert (=> d!1028825 (= lt!1203501 (ite ((_ is Empty!11328) (c!606754 (_1!21722 lt!1201946))) 0 (ite ((_ is Leaf!17677) (c!606754 (_1!21722 lt!1201946))) (csize!22887 (c!606754 (_1!21722 lt!1201946))) (csize!22886 (c!606754 (_1!21722 lt!1201946))))))))

(assert (=> d!1028825 (= (size!28418 (c!606754 (_1!21722 lt!1201946))) lt!1203501)))

(declare-fun bs!565605 () Bool)

(assert (= bs!565605 d!1028825))

(assert (=> bs!565605 m!3975509))

(assert (=> bs!565605 m!3975509))

(declare-fun m!3976749 () Bool)

(assert (=> bs!565605 m!3976749))

(assert (=> d!1027127 d!1028825))

(declare-fun d!1028827 () Bool)

(assert (=> d!1028827 (= (list!13659 (_2!21722 lt!1202244)) (list!13663 (c!606753 (_2!21722 lt!1202244))))))

(declare-fun bs!565606 () Bool)

(assert (= bs!565606 d!1028827))

(declare-fun m!3976751 () Bool)

(assert (=> bs!565606 m!3976751))

(assert (=> b!3521405 d!1028827))

(assert (=> b!3521405 d!1028125))

(assert (=> b!3521405 d!1028127))

(assert (=> bm!254358 d!1028173))

(assert (=> b!3521438 d!1028611))

(declare-fun call!254668 () List!37467)

(declare-fun c!607620 () Bool)

(declare-fun bm!254662 () Bool)

(declare-fun c!607619 () Bool)

(assert (=> bm!254662 (= call!254668 (usedCharacters!710 (ite c!607619 (reg!10564 (ite c!606824 (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241))))) (ite c!607620 (regTwo!20983 (ite c!606824 (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241))))) (regOne!20982 (ite c!606824 (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241)))))))))))

(declare-fun b!3524034 () Bool)

(declare-fun e!2181217 () List!37467)

(declare-fun call!254670 () List!37467)

(assert (=> b!3524034 (= e!2181217 call!254670)))

(declare-fun bm!254663 () Bool)

(declare-fun call!254667 () List!37467)

(assert (=> bm!254663 (= call!254667 (usedCharacters!710 (ite c!607620 (regOne!20983 (ite c!606824 (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241))))) (regTwo!20982 (ite c!606824 (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241))))))))))

(declare-fun b!3524035 () Bool)

(assert (=> b!3524035 (= e!2181217 call!254670)))

(declare-fun d!1028829 () Bool)

(declare-fun c!607618 () Bool)

(assert (=> d!1028829 (= c!607618 (or ((_ is EmptyExpr!10235) (ite c!606824 (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241))))) ((_ is EmptyLang!10235) (ite c!606824 (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241)))))))))

(declare-fun e!2181216 () List!37467)

(assert (=> d!1028829 (= (usedCharacters!710 (ite c!606824 (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241))))) e!2181216)))

(declare-fun b!3524036 () Bool)

(assert (=> b!3524036 (= e!2181216 Nil!37343)))

(declare-fun call!254669 () List!37467)

(declare-fun bm!254664 () Bool)

(assert (=> bm!254664 (= call!254670 (++!9253 (ite c!607620 call!254667 call!254669) (ite c!607620 call!254669 call!254667)))))

(declare-fun b!3524037 () Bool)

(declare-fun e!2181219 () List!37467)

(assert (=> b!3524037 (= e!2181216 e!2181219)))

(declare-fun c!607617 () Bool)

(assert (=> b!3524037 (= c!607617 ((_ is ElementMatch!10235) (ite c!606824 (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241))))))))

(declare-fun b!3524038 () Bool)

(assert (=> b!3524038 (= c!607619 ((_ is Star!10235) (ite c!606824 (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241))))))))

(declare-fun e!2181218 () List!37467)

(assert (=> b!3524038 (= e!2181219 e!2181218)))

(declare-fun b!3524039 () Bool)

(assert (=> b!3524039 (= e!2181219 (Cons!37343 (c!606752 (ite c!606824 (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241))))) Nil!37343))))

(declare-fun b!3524040 () Bool)

(assert (=> b!3524040 (= e!2181218 call!254668)))

(declare-fun bm!254665 () Bool)

(assert (=> bm!254665 (= call!254669 call!254668)))

(declare-fun b!3524041 () Bool)

(assert (=> b!3524041 (= e!2181218 e!2181217)))

(assert (=> b!3524041 (= c!607620 ((_ is Union!10235) (ite c!606824 (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241))))))))

(assert (= (and d!1028829 c!607618) b!3524036))

(assert (= (and d!1028829 (not c!607618)) b!3524037))

(assert (= (and b!3524037 c!607617) b!3524039))

(assert (= (and b!3524037 (not c!607617)) b!3524038))

(assert (= (and b!3524038 c!607619) b!3524040))

(assert (= (and b!3524038 (not c!607619)) b!3524041))

(assert (= (and b!3524041 c!607620) b!3524035))

(assert (= (and b!3524041 (not c!607620)) b!3524034))

(assert (= (or b!3524035 b!3524034) bm!254665))

(assert (= (or b!3524035 b!3524034) bm!254663))

(assert (= (or b!3524035 b!3524034) bm!254664))

(assert (= (or b!3524040 bm!254665) bm!254662))

(declare-fun m!3976753 () Bool)

(assert (=> bm!254662 m!3976753))

(declare-fun m!3976755 () Bool)

(assert (=> bm!254663 m!3976755))

(declare-fun m!3976757 () Bool)

(assert (=> bm!254664 m!3976757))

(assert (=> bm!254371 d!1028829))

(declare-fun d!1028831 () Bool)

(declare-fun lt!1203502 () Int)

(assert (=> d!1028831 (= lt!1203502 (size!28417 (list!13662 (_1!21722 lt!1202292))))))

(assert (=> d!1028831 (= lt!1203502 (size!28418 (c!606754 (_1!21722 lt!1202292))))))

(assert (=> d!1028831 (= (size!28413 (_1!21722 lt!1202292)) lt!1203502)))

(declare-fun bs!565607 () Bool)

(assert (= bs!565607 d!1028831))

(assert (=> bs!565607 m!3972061))

(assert (=> bs!565607 m!3972061))

(declare-fun m!3976759 () Bool)

(assert (=> bs!565607 m!3976759))

(declare-fun m!3976761 () Bool)

(assert (=> bs!565607 m!3976761))

(assert (=> d!1027251 d!1028831))

(declare-fun d!1028833 () Bool)

(declare-fun e!2181223 () Bool)

(assert (=> d!1028833 e!2181223))

(declare-fun res!1421253 () Bool)

(assert (=> d!1028833 (=> (not res!1421253) (not e!2181223))))

(declare-fun lt!1203527 () tuple2!37176)

(assert (=> d!1028833 (= res!1421253 (= (list!13662 (_1!21722 lt!1203527)) (list!13662 (_1!21722 (lexRec!763 thiss!18206 rules!2135 lt!1201929)))))))

(declare-fun e!2181222 () tuple2!37176)

(assert (=> d!1028833 (= lt!1203527 e!2181222)))

(declare-fun c!607622 () Bool)

(declare-fun lt!1203516 () Option!7616)

(assert (=> d!1028833 (= c!607622 ((_ is Some!7615) lt!1203516))))

(assert (=> d!1028833 (= lt!1203516 (maxPrefixZipperSequenceV2!550 thiss!18206 rules!2135 lt!1201929 lt!1201929))))

(declare-fun lt!1203503 () Unit!52994)

(declare-fun lt!1203525 () Unit!52994)

(assert (=> d!1028833 (= lt!1203503 lt!1203525)))

(declare-fun lt!1203524 () List!37467)

(declare-fun lt!1203535 () List!37467)

(assert (=> d!1028833 (isSuffix!925 lt!1203524 (++!9253 lt!1203535 lt!1203524))))

(assert (=> d!1028833 (= lt!1203525 (lemmaConcatTwoListThenFSndIsSuffix!610 lt!1203535 lt!1203524))))

(assert (=> d!1028833 (= lt!1203524 (list!13659 lt!1201929))))

(assert (=> d!1028833 (= lt!1203535 (list!13659 (BalanceConc!22269 Empty!11327)))))

(assert (=> d!1028833 (= (lexTailRecV2!1086 thiss!18206 rules!2135 lt!1201929 (BalanceConc!22269 Empty!11327) lt!1201929 (BalanceConc!22271 Empty!11328)) lt!1203527)))

(declare-fun b!3524042 () Bool)

(declare-fun e!2181220 () tuple2!37176)

(assert (=> b!3524042 (= e!2181220 (tuple2!37177 (BalanceConc!22271 Empty!11328) lt!1201929))))

(declare-fun b!3524043 () Bool)

(declare-fun e!2181221 () tuple2!37176)

(declare-fun lt!1203532 () BalanceConc!22268)

(assert (=> b!3524043 (= e!2181221 (tuple2!37177 (BalanceConc!22271 Empty!11328) lt!1203532))))

(declare-fun b!3524044 () Bool)

(assert (=> b!3524044 (= e!2181223 (= (list!13659 (_2!21722 lt!1203527)) (list!13659 (_2!21722 (lexRec!763 thiss!18206 rules!2135 lt!1201929)))))))

(declare-fun lt!1203505 () Option!7616)

(declare-fun lt!1203530 () tuple2!37176)

(declare-fun b!3524045 () Bool)

(assert (=> b!3524045 (= lt!1203530 (lexRec!763 thiss!18206 rules!2135 (_2!21729 (v!37113 lt!1203505))))))

(assert (=> b!3524045 (= e!2181220 (tuple2!37177 (prepend!1283 (_1!21722 lt!1203530) (_1!21729 (v!37113 lt!1203505))) (_2!21722 lt!1203530)))))

(declare-fun lt!1203521 () Option!7616)

(declare-fun lt!1203515 () tuple2!37176)

(declare-fun b!3524046 () Bool)

(assert (=> b!3524046 (= lt!1203515 (lexRec!763 thiss!18206 rules!2135 (_2!21729 (v!37113 lt!1203521))))))

(assert (=> b!3524046 (= e!2181221 (tuple2!37177 (prepend!1283 (_1!21722 lt!1203515) (_1!21729 (v!37113 lt!1203521))) (_2!21722 lt!1203515)))))

(declare-fun b!3524047 () Bool)

(assert (=> b!3524047 (= e!2181222 (tuple2!37177 (BalanceConc!22271 Empty!11328) lt!1201929))))

(declare-fun b!3524048 () Bool)

(declare-fun lt!1203511 () BalanceConc!22268)

(assert (=> b!3524048 (= e!2181222 (lexTailRecV2!1086 thiss!18206 rules!2135 lt!1201929 lt!1203511 (_2!21729 (v!37113 lt!1203516)) (append!987 (BalanceConc!22271 Empty!11328) (_1!21729 (v!37113 lt!1203516)))))))

(declare-fun lt!1203510 () tuple2!37176)

(assert (=> b!3524048 (= lt!1203510 (lexRec!763 thiss!18206 rules!2135 (_2!21729 (v!37113 lt!1203516))))))

(declare-fun lt!1203520 () List!37467)

(assert (=> b!3524048 (= lt!1203520 (list!13659 (BalanceConc!22269 Empty!11327)))))

(declare-fun lt!1203533 () List!37467)

(assert (=> b!3524048 (= lt!1203533 (list!13659 (charsOf!3490 (_1!21729 (v!37113 lt!1203516)))))))

(declare-fun lt!1203536 () List!37467)

(assert (=> b!3524048 (= lt!1203536 (list!13659 (_2!21729 (v!37113 lt!1203516))))))

(declare-fun lt!1203519 () Unit!52994)

(assert (=> b!3524048 (= lt!1203519 (lemmaConcatAssociativity!2008 lt!1203520 lt!1203533 lt!1203536))))

(assert (=> b!3524048 (= (++!9253 (++!9253 lt!1203520 lt!1203533) lt!1203536) (++!9253 lt!1203520 (++!9253 lt!1203533 lt!1203536)))))

(declare-fun lt!1203529 () Unit!52994)

(assert (=> b!3524048 (= lt!1203529 lt!1203519)))

(assert (=> b!3524048 (= lt!1203505 (maxPrefixZipperSequence!1156 thiss!18206 rules!2135 lt!1201929))))

(declare-fun c!607621 () Bool)

(assert (=> b!3524048 (= c!607621 ((_ is Some!7615) lt!1203505))))

(assert (=> b!3524048 (= (lexRec!763 thiss!18206 rules!2135 lt!1201929) e!2181220)))

(declare-fun lt!1203526 () Unit!52994)

(declare-fun Unit!53020 () Unit!52994)

(assert (=> b!3524048 (= lt!1203526 Unit!53020)))

(declare-fun lt!1203509 () List!37469)

(assert (=> b!3524048 (= lt!1203509 (list!13662 (BalanceConc!22271 Empty!11328)))))

(declare-fun lt!1203517 () List!37469)

(assert (=> b!3524048 (= lt!1203517 (Cons!37345 (_1!21729 (v!37113 lt!1203516)) Nil!37345))))

(declare-fun lt!1203513 () List!37469)

(assert (=> b!3524048 (= lt!1203513 (list!13662 (_1!21722 lt!1203510)))))

(declare-fun lt!1203531 () Unit!52994)

(assert (=> b!3524048 (= lt!1203531 (lemmaConcatAssociativity!2010 lt!1203509 lt!1203517 lt!1203513))))

(assert (=> b!3524048 (= (++!9259 (++!9259 lt!1203509 lt!1203517) lt!1203513) (++!9259 lt!1203509 (++!9259 lt!1203517 lt!1203513)))))

(declare-fun lt!1203518 () Unit!52994)

(assert (=> b!3524048 (= lt!1203518 lt!1203531)))

(declare-fun lt!1203507 () List!37467)

(assert (=> b!3524048 (= lt!1203507 (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) (list!13659 (charsOf!3490 (_1!21729 (v!37113 lt!1203516))))))))

(declare-fun lt!1203523 () List!37467)

(assert (=> b!3524048 (= lt!1203523 (list!13659 (_2!21729 (v!37113 lt!1203516))))))

(declare-fun lt!1203522 () List!37469)

(assert (=> b!3524048 (= lt!1203522 (list!13662 (append!987 (BalanceConc!22271 Empty!11328) (_1!21729 (v!37113 lt!1203516)))))))

(declare-fun lt!1203534 () Unit!52994)

(assert (=> b!3524048 (= lt!1203534 (lemmaLexThenLexPrefix!528 thiss!18206 rules!2135 lt!1203507 lt!1203523 lt!1203522 (list!13662 (_1!21722 lt!1203510)) (list!13659 (_2!21722 lt!1203510))))))

(assert (=> b!3524048 (= (lexList!1478 thiss!18206 rules!2135 lt!1203507) (tuple2!37185 lt!1203522 Nil!37343))))

(declare-fun lt!1203514 () Unit!52994)

(assert (=> b!3524048 (= lt!1203514 lt!1203534)))

(assert (=> b!3524048 (= lt!1203532 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (_1!21729 (v!37113 lt!1203516)))))))

(assert (=> b!3524048 (= lt!1203521 (maxPrefixZipperSequence!1156 thiss!18206 rules!2135 lt!1203532))))

(declare-fun c!607623 () Bool)

(assert (=> b!3524048 (= c!607623 ((_ is Some!7615) lt!1203521))))

(assert (=> b!3524048 (= (lexRec!763 thiss!18206 rules!2135 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (_1!21729 (v!37113 lt!1203516))))) e!2181221)))

(declare-fun lt!1203528 () Unit!52994)

(declare-fun Unit!53021 () Unit!52994)

(assert (=> b!3524048 (= lt!1203528 Unit!53021)))

(assert (=> b!3524048 (= lt!1203511 (++!9255 (BalanceConc!22269 Empty!11327) (charsOf!3490 (_1!21729 (v!37113 lt!1203516)))))))

(declare-fun lt!1203504 () List!37467)

(assert (=> b!3524048 (= lt!1203504 (list!13659 lt!1203511))))

(declare-fun lt!1203506 () List!37467)

(assert (=> b!3524048 (= lt!1203506 (list!13659 (_2!21729 (v!37113 lt!1203516))))))

(declare-fun lt!1203512 () Unit!52994)

(assert (=> b!3524048 (= lt!1203512 (lemmaConcatTwoListThenFSndIsSuffix!610 lt!1203504 lt!1203506))))

(assert (=> b!3524048 (isSuffix!925 lt!1203506 (++!9253 lt!1203504 lt!1203506))))

(declare-fun lt!1203508 () Unit!52994)

(assert (=> b!3524048 (= lt!1203508 lt!1203512)))

(assert (= (and d!1028833 c!607622) b!3524048))

(assert (= (and d!1028833 (not c!607622)) b!3524047))

(assert (= (and b!3524048 c!607621) b!3524045))

(assert (= (and b!3524048 (not c!607621)) b!3524042))

(assert (= (and b!3524048 c!607623) b!3524046))

(assert (= (and b!3524048 (not c!607623)) b!3524043))

(assert (= (and d!1028833 res!1421253) b!3524044))

(declare-fun m!3976763 () Bool)

(assert (=> b!3524048 m!3976763))

(declare-fun m!3976765 () Bool)

(assert (=> b!3524048 m!3976765))

(declare-fun m!3976767 () Bool)

(assert (=> b!3524048 m!3976767))

(declare-fun m!3976769 () Bool)

(assert (=> b!3524048 m!3976769))

(declare-fun m!3976771 () Bool)

(assert (=> b!3524048 m!3976771))

(declare-fun m!3976773 () Bool)

(assert (=> b!3524048 m!3976773))

(assert (=> b!3524048 m!3976763))

(assert (=> b!3524048 m!3971545))

(declare-fun m!3976775 () Bool)

(assert (=> b!3524048 m!3976775))

(declare-fun m!3976777 () Bool)

(assert (=> b!3524048 m!3976777))

(declare-fun m!3976779 () Bool)

(assert (=> b!3524048 m!3976779))

(declare-fun m!3976781 () Bool)

(assert (=> b!3524048 m!3976781))

(declare-fun m!3976783 () Bool)

(assert (=> b!3524048 m!3976783))

(assert (=> b!3524048 m!3976771))

(declare-fun m!3976785 () Bool)

(assert (=> b!3524048 m!3976785))

(assert (=> b!3524048 m!3976767))

(declare-fun m!3976787 () Bool)

(assert (=> b!3524048 m!3976787))

(assert (=> b!3524048 m!3975309))

(assert (=> b!3524048 m!3976779))

(declare-fun m!3976789 () Bool)

(assert (=> b!3524048 m!3976789))

(assert (=> b!3524048 m!3976771))

(declare-fun m!3976791 () Bool)

(assert (=> b!3524048 m!3976791))

(declare-fun m!3976793 () Bool)

(assert (=> b!3524048 m!3976793))

(declare-fun m!3976795 () Bool)

(assert (=> b!3524048 m!3976795))

(assert (=> b!3524048 m!3976793))

(declare-fun m!3976797 () Bool)

(assert (=> b!3524048 m!3976797))

(assert (=> b!3524048 m!3976773))

(declare-fun m!3976799 () Bool)

(assert (=> b!3524048 m!3976799))

(declare-fun m!3976801 () Bool)

(assert (=> b!3524048 m!3976801))

(declare-fun m!3976803 () Bool)

(assert (=> b!3524048 m!3976803))

(declare-fun m!3976805 () Bool)

(assert (=> b!3524048 m!3976805))

(declare-fun m!3976807 () Bool)

(assert (=> b!3524048 m!3976807))

(assert (=> b!3524048 m!3976773))

(assert (=> b!3524048 m!3976775))

(declare-fun m!3976809 () Bool)

(assert (=> b!3524048 m!3976809))

(assert (=> b!3524048 m!3976805))

(declare-fun m!3976811 () Bool)

(assert (=> b!3524048 m!3976811))

(declare-fun m!3976813 () Bool)

(assert (=> b!3524048 m!3976813))

(declare-fun m!3976815 () Bool)

(assert (=> b!3524048 m!3976815))

(declare-fun m!3976817 () Bool)

(assert (=> b!3524048 m!3976817))

(assert (=> b!3524048 m!3976815))

(assert (=> b!3524048 m!3976813))

(declare-fun m!3976819 () Bool)

(assert (=> b!3524048 m!3976819))

(assert (=> b!3524048 m!3971545))

(assert (=> b!3524048 m!3976811))

(declare-fun m!3976821 () Bool)

(assert (=> b!3524048 m!3976821))

(declare-fun m!3976823 () Bool)

(assert (=> b!3524048 m!3976823))

(declare-fun m!3976825 () Bool)

(assert (=> b!3524044 m!3976825))

(assert (=> b!3524044 m!3976795))

(declare-fun m!3976827 () Bool)

(assert (=> b!3524044 m!3976827))

(declare-fun m!3976829 () Bool)

(assert (=> d!1028833 m!3976829))

(declare-fun m!3976831 () Bool)

(assert (=> d!1028833 m!3976831))

(assert (=> d!1028833 m!3971545))

(assert (=> d!1028833 m!3976831))

(declare-fun m!3976833 () Bool)

(assert (=> d!1028833 m!3976833))

(declare-fun m!3976835 () Bool)

(assert (=> d!1028833 m!3976835))

(assert (=> d!1028833 m!3972057))

(assert (=> d!1028833 m!3976795))

(declare-fun m!3976837 () Bool)

(assert (=> d!1028833 m!3976837))

(declare-fun m!3976839 () Bool)

(assert (=> d!1028833 m!3976839))

(declare-fun m!3976841 () Bool)

(assert (=> b!3524046 m!3976841))

(declare-fun m!3976843 () Bool)

(assert (=> b!3524046 m!3976843))

(declare-fun m!3976845 () Bool)

(assert (=> b!3524045 m!3976845))

(declare-fun m!3976847 () Bool)

(assert (=> b!3524045 m!3976847))

(assert (=> d!1027251 d!1028833))

(assert (=> d!1027287 d!1028173))

(declare-fun b!3524049 () Bool)

(declare-fun e!2181224 () Bool)

(declare-fun call!254673 () Bool)

(assert (=> b!3524049 (= e!2181224 call!254673)))

(declare-fun d!1028835 () Bool)

(declare-fun res!1421254 () Bool)

(declare-fun e!2181227 () Bool)

(assert (=> d!1028835 (=> res!1421254 e!2181227)))

(assert (=> d!1028835 (= res!1421254 ((_ is ElementMatch!10235) (regex!5476 lt!1201926)))))

(assert (=> d!1028835 (= (validRegex!4674 (regex!5476 lt!1201926)) e!2181227)))

(declare-fun b!3524050 () Bool)

(declare-fun res!1421258 () Bool)

(declare-fun e!2181226 () Bool)

(assert (=> b!3524050 (=> (not res!1421258) (not e!2181226))))

(declare-fun call!254672 () Bool)

(assert (=> b!3524050 (= res!1421258 call!254672)))

(declare-fun e!2181230 () Bool)

(assert (=> b!3524050 (= e!2181230 e!2181226)))

(declare-fun b!3524051 () Bool)

(declare-fun e!2181225 () Bool)

(declare-fun call!254671 () Bool)

(assert (=> b!3524051 (= e!2181225 call!254671)))

(declare-fun bm!254666 () Bool)

(assert (=> bm!254666 (= call!254671 call!254673)))

(declare-fun b!3524052 () Bool)

(assert (=> b!3524052 (= e!2181226 call!254671)))

(declare-fun c!607625 () Bool)

(declare-fun c!607624 () Bool)

(declare-fun bm!254667 () Bool)

(assert (=> bm!254667 (= call!254673 (validRegex!4674 (ite c!607624 (reg!10564 (regex!5476 lt!1201926)) (ite c!607625 (regTwo!20983 (regex!5476 lt!1201926)) (regTwo!20982 (regex!5476 lt!1201926))))))))

(declare-fun b!3524053 () Bool)

(declare-fun e!2181228 () Bool)

(assert (=> b!3524053 (= e!2181227 e!2181228)))

(assert (=> b!3524053 (= c!607624 ((_ is Star!10235) (regex!5476 lt!1201926)))))

(declare-fun b!3524054 () Bool)

(declare-fun res!1421255 () Bool)

(declare-fun e!2181229 () Bool)

(assert (=> b!3524054 (=> res!1421255 e!2181229)))

(assert (=> b!3524054 (= res!1421255 (not ((_ is Concat!15941) (regex!5476 lt!1201926))))))

(assert (=> b!3524054 (= e!2181230 e!2181229)))

(declare-fun b!3524055 () Bool)

(assert (=> b!3524055 (= e!2181228 e!2181230)))

(assert (=> b!3524055 (= c!607625 ((_ is Union!10235) (regex!5476 lt!1201926)))))

(declare-fun b!3524056 () Bool)

(assert (=> b!3524056 (= e!2181228 e!2181224)))

(declare-fun res!1421256 () Bool)

(assert (=> b!3524056 (= res!1421256 (not (nullable!3517 (reg!10564 (regex!5476 lt!1201926)))))))

(assert (=> b!3524056 (=> (not res!1421256) (not e!2181224))))

(declare-fun b!3524057 () Bool)

(assert (=> b!3524057 (= e!2181229 e!2181225)))

(declare-fun res!1421257 () Bool)

(assert (=> b!3524057 (=> (not res!1421257) (not e!2181225))))

(assert (=> b!3524057 (= res!1421257 call!254672)))

(declare-fun bm!254668 () Bool)

(assert (=> bm!254668 (= call!254672 (validRegex!4674 (ite c!607625 (regOne!20983 (regex!5476 lt!1201926)) (regOne!20982 (regex!5476 lt!1201926)))))))

(assert (= (and d!1028835 (not res!1421254)) b!3524053))

(assert (= (and b!3524053 c!607624) b!3524056))

(assert (= (and b!3524053 (not c!607624)) b!3524055))

(assert (= (and b!3524056 res!1421256) b!3524049))

(assert (= (and b!3524055 c!607625) b!3524050))

(assert (= (and b!3524055 (not c!607625)) b!3524054))

(assert (= (and b!3524050 res!1421258) b!3524052))

(assert (= (and b!3524054 (not res!1421255)) b!3524057))

(assert (= (and b!3524057 res!1421257) b!3524051))

(assert (= (or b!3524052 b!3524051) bm!254666))

(assert (= (or b!3524050 b!3524057) bm!254668))

(assert (= (or b!3524049 bm!254666) bm!254667))

(declare-fun m!3976849 () Bool)

(assert (=> bm!254667 m!3976849))

(declare-fun m!3976851 () Bool)

(assert (=> b!3524056 m!3976851))

(declare-fun m!3976853 () Bool)

(assert (=> bm!254668 m!3976853))

(assert (=> d!1027287 d!1028835))

(declare-fun d!1028837 () Bool)

(declare-fun lt!1203537 () Bool)

(assert (=> d!1028837 (= lt!1203537 (select (content!5267 rules!2135) (get!11989 lt!1202243)))))

(declare-fun e!2181232 () Bool)

(assert (=> d!1028837 (= lt!1203537 e!2181232)))

(declare-fun res!1421260 () Bool)

(assert (=> d!1028837 (=> (not res!1421260) (not e!2181232))))

(assert (=> d!1028837 (= res!1421260 ((_ is Cons!37344) rules!2135))))

(assert (=> d!1028837 (= (contains!7007 rules!2135 (get!11989 lt!1202243)) lt!1203537)))

(declare-fun b!3524058 () Bool)

(declare-fun e!2181231 () Bool)

(assert (=> b!3524058 (= e!2181232 e!2181231)))

(declare-fun res!1421259 () Bool)

(assert (=> b!3524058 (=> res!1421259 e!2181231)))

(assert (=> b!3524058 (= res!1421259 (= (h!42764 rules!2135) (get!11989 lt!1202243)))))

(declare-fun b!3524059 () Bool)

(assert (=> b!3524059 (= e!2181231 (contains!7007 (t!281699 rules!2135) (get!11989 lt!1202243)))))

(assert (= (and d!1028837 res!1421260) b!3524058))

(assert (= (and b!3524058 (not res!1421259)) b!3524059))

(assert (=> d!1028837 m!3975639))

(assert (=> d!1028837 m!3971751))

(declare-fun m!3976855 () Bool)

(assert (=> d!1028837 m!3976855))

(assert (=> b!3524059 m!3971751))

(declare-fun m!3976857 () Bool)

(assert (=> b!3524059 m!3976857))

(assert (=> b!3521390 d!1028837))

(assert (=> b!3521390 d!1027837))

(declare-fun bm!254671 () Bool)

(declare-fun call!254676 () Bool)

(assert (=> bm!254671 (= call!254676 (ruleDisjointCharsFromAllFromOtherType!749 (h!42764 rules!2135) (t!281699 rules!2135)))))

(declare-fun d!1028839 () Bool)

(declare-fun c!607628 () Bool)

(assert (=> d!1028839 (= c!607628 (and ((_ is Cons!37344) rules!2135) (not (= (isSeparator!5476 (h!42764 rules!2135)) (isSeparator!5476 (h!42764 rules!2135))))))))

(declare-fun e!2181240 () Bool)

(assert (=> d!1028839 (= (ruleDisjointCharsFromAllFromOtherType!749 (h!42764 rules!2135) rules!2135) e!2181240)))

(declare-fun b!3524068 () Bool)

(declare-fun e!2181239 () Bool)

(assert (=> b!3524068 (= e!2181240 e!2181239)))

(declare-fun res!1421266 () Bool)

(declare-fun rulesUseDisjointChars!355 (Rule!10752 Rule!10752) Bool)

(assert (=> b!3524068 (= res!1421266 (rulesUseDisjointChars!355 (h!42764 rules!2135) (h!42764 rules!2135)))))

(assert (=> b!3524068 (=> (not res!1421266) (not e!2181239))))

(declare-fun b!3524069 () Bool)

(assert (=> b!3524069 (= e!2181239 call!254676)))

(declare-fun b!3524070 () Bool)

(declare-fun e!2181241 () Bool)

(assert (=> b!3524070 (= e!2181241 call!254676)))

(declare-fun b!3524071 () Bool)

(assert (=> b!3524071 (= e!2181240 e!2181241)))

(declare-fun res!1421265 () Bool)

(assert (=> b!3524071 (= res!1421265 (not ((_ is Cons!37344) rules!2135)))))

(assert (=> b!3524071 (=> res!1421265 e!2181241)))

(assert (= (and d!1028839 c!607628) b!3524068))

(assert (= (and d!1028839 (not c!607628)) b!3524071))

(assert (= (and b!3524068 res!1421266) b!3524069))

(assert (= (and b!3524071 (not res!1421265)) b!3524070))

(assert (= (or b!3524069 b!3524070) bm!254671))

(declare-fun m!3976859 () Bool)

(assert (=> bm!254671 m!3976859))

(declare-fun m!3976861 () Bool)

(assert (=> b!3524068 m!3976861))

(assert (=> b!3521707 d!1028839))

(assert (=> b!3520966 d!1027833))

(assert (=> b!3520966 d!1027835))

(declare-fun b!3524073 () Bool)

(declare-fun e!2181242 () List!37467)

(assert (=> b!3524073 (= e!2181242 (Cons!37343 (h!42763 (ite c!606891 call!254399 call!254401)) (++!9253 (t!281698 (ite c!606891 call!254399 call!254401)) (ite c!606891 call!254401 call!254399))))))

(declare-fun d!1028841 () Bool)

(declare-fun e!2181243 () Bool)

(assert (=> d!1028841 e!2181243))

(declare-fun res!1421268 () Bool)

(assert (=> d!1028841 (=> (not res!1421268) (not e!2181243))))

(declare-fun lt!1203538 () List!37467)

(assert (=> d!1028841 (= res!1421268 (= (content!5263 lt!1203538) ((_ map or) (content!5263 (ite c!606891 call!254399 call!254401)) (content!5263 (ite c!606891 call!254401 call!254399)))))))

(assert (=> d!1028841 (= lt!1203538 e!2181242)))

(declare-fun c!607629 () Bool)

(assert (=> d!1028841 (= c!607629 ((_ is Nil!37343) (ite c!606891 call!254399 call!254401)))))

(assert (=> d!1028841 (= (++!9253 (ite c!606891 call!254399 call!254401) (ite c!606891 call!254401 call!254399)) lt!1203538)))

(declare-fun b!3524074 () Bool)

(declare-fun res!1421267 () Bool)

(assert (=> b!3524074 (=> (not res!1421267) (not e!2181243))))

(assert (=> b!3524074 (= res!1421267 (= (size!28412 lt!1203538) (+ (size!28412 (ite c!606891 call!254399 call!254401)) (size!28412 (ite c!606891 call!254401 call!254399)))))))

(declare-fun b!3524072 () Bool)

(assert (=> b!3524072 (= e!2181242 (ite c!606891 call!254401 call!254399))))

(declare-fun b!3524075 () Bool)

(assert (=> b!3524075 (= e!2181243 (or (not (= (ite c!606891 call!254401 call!254399) Nil!37343)) (= lt!1203538 (ite c!606891 call!254399 call!254401))))))

(assert (= (and d!1028841 c!607629) b!3524072))

(assert (= (and d!1028841 (not c!607629)) b!3524073))

(assert (= (and d!1028841 res!1421268) b!3524074))

(assert (= (and b!3524074 res!1421267) b!3524075))

(declare-fun m!3976863 () Bool)

(assert (=> b!3524073 m!3976863))

(declare-fun m!3976865 () Bool)

(assert (=> d!1028841 m!3976865))

(declare-fun m!3976867 () Bool)

(assert (=> d!1028841 m!3976867))

(declare-fun m!3976869 () Bool)

(assert (=> d!1028841 m!3976869))

(declare-fun m!3976871 () Bool)

(assert (=> b!3524074 m!3976871))

(declare-fun m!3976873 () Bool)

(assert (=> b!3524074 m!3976873))

(declare-fun m!3976875 () Bool)

(assert (=> b!3524074 m!3976875))

(assert (=> bm!254396 d!1028841))

(declare-fun d!1028843 () Bool)

(assert (=> d!1028843 (= (list!13662 lt!1202262) (list!13665 (c!606754 lt!1202262)))))

(declare-fun bs!565608 () Bool)

(assert (= bs!565608 d!1028843))

(declare-fun m!3976877 () Bool)

(assert (=> bs!565608 m!3976877))

(assert (=> d!1027205 d!1028843))

(declare-fun d!1028845 () Bool)

(declare-fun e!2181244 () Bool)

(assert (=> d!1028845 e!2181244))

(declare-fun res!1421269 () Bool)

(assert (=> d!1028845 (=> (not res!1421269) (not e!2181244))))

(declare-fun lt!1203539 () BalanceConc!22270)

(assert (=> d!1028845 (= res!1421269 (= (list!13662 lt!1203539) (Cons!37345 (h!42765 (t!281700 tokens!494)) Nil!37345)))))

(assert (=> d!1028845 (= lt!1203539 (choose!20459 (h!42765 (t!281700 tokens!494))))))

(assert (=> d!1028845 (= (singleton!1150 (h!42765 (t!281700 tokens!494))) lt!1203539)))

(declare-fun b!3524076 () Bool)

(assert (=> b!3524076 (= e!2181244 (isBalanced!3457 (c!606754 lt!1203539)))))

(assert (= (and d!1028845 res!1421269) b!3524076))

(declare-fun m!3976879 () Bool)

(assert (=> d!1028845 m!3976879))

(declare-fun m!3976881 () Bool)

(assert (=> d!1028845 m!3976881))

(declare-fun m!3976883 () Bool)

(assert (=> b!3524076 m!3976883))

(assert (=> d!1027205 d!1028845))

(declare-fun d!1028847 () Bool)

(declare-fun lt!1203540 () Bool)

(assert (=> d!1028847 (= lt!1203540 (isEmpty!21818 (list!13662 (_1!21722 lt!1202244))))))

(assert (=> d!1028847 (= lt!1203540 (isEmpty!21819 (c!606754 (_1!21722 lt!1202244))))))

(assert (=> d!1028847 (= (isEmpty!21805 (_1!21722 lt!1202244)) lt!1203540)))

(declare-fun bs!565609 () Bool)

(assert (= bs!565609 d!1028847))

(assert (=> bs!565609 m!3971773))

(assert (=> bs!565609 m!3971773))

(declare-fun m!3976885 () Bool)

(assert (=> bs!565609 m!3976885))

(declare-fun m!3976887 () Bool)

(assert (=> bs!565609 m!3976887))

(assert (=> b!3521404 d!1028847))

(declare-fun d!1028849 () Bool)

(assert (=> d!1028849 (= (list!13659 lt!1202297) (list!13663 (c!606753 lt!1202297)))))

(declare-fun bs!565610 () Bool)

(assert (= bs!565610 d!1028849))

(declare-fun m!3976889 () Bool)

(assert (=> bs!565610 m!3976889))

(assert (=> d!1027259 d!1028849))

(assert (=> d!1027259 d!1028511))

(declare-fun d!1028851 () Bool)

(assert (=> d!1028851 (= (dropList!1235 lt!1201920 0) (drop!2049 (list!13665 (c!606754 lt!1201920)) 0))))

(declare-fun bs!565611 () Bool)

(assert (= bs!565611 d!1028851))

(assert (=> bs!565611 m!3974685))

(assert (=> bs!565611 m!3974685))

(declare-fun m!3976891 () Bool)

(assert (=> bs!565611 m!3976891))

(assert (=> d!1027259 d!1028851))

(assert (=> d!1027259 d!1027769))

(declare-fun d!1028853 () Bool)

(declare-fun lt!1203543 () List!37467)

(assert (=> d!1028853 (= lt!1203543 (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) (printList!1613 thiss!18206 (dropList!1235 lt!1201920 0))))))

(declare-fun e!2181245 () List!37467)

(assert (=> d!1028853 (= lt!1203543 e!2181245)))

(declare-fun c!607630 () Bool)

(assert (=> d!1028853 (= c!607630 ((_ is Cons!37345) (dropList!1235 lt!1201920 0)))))

(assert (=> d!1028853 (= (printListTailRec!718 thiss!18206 (dropList!1235 lt!1201920 0) (list!13659 (BalanceConc!22269 Empty!11327))) lt!1203543)))

(declare-fun b!3524077 () Bool)

(assert (=> b!3524077 (= e!2181245 (printListTailRec!718 thiss!18206 (t!281700 (dropList!1235 lt!1201920 0)) (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) (list!13659 (charsOf!3490 (h!42765 (dropList!1235 lt!1201920 0)))))))))

(declare-fun lt!1203545 () List!37467)

(assert (=> b!3524077 (= lt!1203545 (list!13659 (charsOf!3490 (h!42765 (dropList!1235 lt!1201920 0)))))))

(declare-fun lt!1203544 () List!37467)

(assert (=> b!3524077 (= lt!1203544 (printList!1613 thiss!18206 (t!281700 (dropList!1235 lt!1201920 0))))))

(declare-fun lt!1203541 () Unit!52994)

(assert (=> b!3524077 (= lt!1203541 (lemmaConcatAssociativity!2008 (list!13659 (BalanceConc!22269 Empty!11327)) lt!1203545 lt!1203544))))

(assert (=> b!3524077 (= (++!9253 (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) lt!1203545) lt!1203544) (++!9253 (list!13659 (BalanceConc!22269 Empty!11327)) (++!9253 lt!1203545 lt!1203544)))))

(declare-fun lt!1203542 () Unit!52994)

(assert (=> b!3524077 (= lt!1203542 lt!1203541)))

(declare-fun b!3524078 () Bool)

(assert (=> b!3524078 (= e!2181245 (list!13659 (BalanceConc!22269 Empty!11327)))))

(assert (= (and d!1028853 c!607630) b!3524077))

(assert (= (and d!1028853 (not c!607630)) b!3524078))

(assert (=> d!1028853 m!3972089))

(declare-fun m!3976893 () Bool)

(assert (=> d!1028853 m!3976893))

(assert (=> d!1028853 m!3971545))

(assert (=> d!1028853 m!3976893))

(declare-fun m!3976895 () Bool)

(assert (=> d!1028853 m!3976895))

(declare-fun m!3976897 () Bool)

(assert (=> b!3524077 m!3976897))

(assert (=> b!3524077 m!3971545))

(declare-fun m!3976899 () Bool)

(assert (=> b!3524077 m!3976899))

(declare-fun m!3976901 () Bool)

(assert (=> b!3524077 m!3976901))

(assert (=> b!3524077 m!3971545))

(declare-fun m!3976903 () Bool)

(assert (=> b!3524077 m!3976903))

(declare-fun m!3976905 () Bool)

(assert (=> b!3524077 m!3976905))

(declare-fun m!3976907 () Bool)

(assert (=> b!3524077 m!3976907))

(assert (=> b!3524077 m!3976899))

(assert (=> b!3524077 m!3971545))

(declare-fun m!3976909 () Bool)

(assert (=> b!3524077 m!3976909))

(assert (=> b!3524077 m!3976905))

(assert (=> b!3524077 m!3971545))

(declare-fun m!3976911 () Bool)

(assert (=> b!3524077 m!3976911))

(declare-fun m!3976913 () Bool)

(assert (=> b!3524077 m!3976913))

(assert (=> b!3524077 m!3976897))

(assert (=> b!3524077 m!3976909))

(assert (=> b!3524077 m!3976903))

(declare-fun m!3976915 () Bool)

(assert (=> b!3524077 m!3976915))

(assert (=> d!1027259 d!1028853))

(declare-fun d!1028855 () Bool)

(declare-fun lt!1203546 () Bool)

(assert (=> d!1028855 (= lt!1203546 (select (content!5267 rules!2135) (get!11989 lt!1202058)))))

(declare-fun e!2181247 () Bool)

(assert (=> d!1028855 (= lt!1203546 e!2181247)))

(declare-fun res!1421271 () Bool)

(assert (=> d!1028855 (=> (not res!1421271) (not e!2181247))))

(assert (=> d!1028855 (= res!1421271 ((_ is Cons!37344) rules!2135))))

(assert (=> d!1028855 (= (contains!7007 rules!2135 (get!11989 lt!1202058)) lt!1203546)))

(declare-fun b!3524079 () Bool)

(declare-fun e!2181246 () Bool)

(assert (=> b!3524079 (= e!2181247 e!2181246)))

(declare-fun res!1421270 () Bool)

(assert (=> b!3524079 (=> res!1421270 e!2181246)))

(assert (=> b!3524079 (= res!1421270 (= (h!42764 rules!2135) (get!11989 lt!1202058)))))

(declare-fun b!3524080 () Bool)

(assert (=> b!3524080 (= e!2181246 (contains!7007 (t!281699 rules!2135) (get!11989 lt!1202058)))))

(assert (= (and d!1028855 res!1421271) b!3524079))

(assert (= (and b!3524079 (not res!1421270)) b!3524080))

(assert (=> d!1028855 m!3975639))

(assert (=> d!1028855 m!3971065))

(declare-fun m!3976917 () Bool)

(assert (=> d!1028855 m!3976917))

(assert (=> b!3524080 m!3971065))

(declare-fun m!3976919 () Bool)

(assert (=> b!3524080 m!3976919))

(assert (=> b!3521004 d!1028855))

(assert (=> b!3521004 d!1027843))

(declare-fun d!1028857 () Bool)

(assert (=> d!1028857 (= (isEmpty!21814 lt!1201905) (not ((_ is Some!7612) lt!1201905)))))

(assert (=> d!1027175 d!1028857))

(declare-fun d!1028859 () Bool)

(declare-fun lt!1203547 () Bool)

(assert (=> d!1028859 (= lt!1203547 (select (content!5267 rules!2135) (get!11989 lt!1202287)))))

(declare-fun e!2181249 () Bool)

(assert (=> d!1028859 (= lt!1203547 e!2181249)))

(declare-fun res!1421273 () Bool)

(assert (=> d!1028859 (=> (not res!1421273) (not e!2181249))))

(assert (=> d!1028859 (= res!1421273 ((_ is Cons!37344) rules!2135))))

(assert (=> d!1028859 (= (contains!7007 rules!2135 (get!11989 lt!1202287)) lt!1203547)))

(declare-fun b!3524081 () Bool)

(declare-fun e!2181248 () Bool)

(assert (=> b!3524081 (= e!2181249 e!2181248)))

(declare-fun res!1421272 () Bool)

(assert (=> b!3524081 (=> res!1421272 e!2181248)))

(assert (=> b!3524081 (= res!1421272 (= (h!42764 rules!2135) (get!11989 lt!1202287)))))

(declare-fun b!3524082 () Bool)

(assert (=> b!3524082 (= e!2181248 (contains!7007 (t!281699 rules!2135) (get!11989 lt!1202287)))))

(assert (= (and d!1028859 res!1421273) b!3524081))

(assert (= (and b!3524081 (not res!1421272)) b!3524082))

(assert (=> d!1028859 m!3975639))

(assert (=> d!1028859 m!3972031))

(declare-fun m!3976921 () Bool)

(assert (=> d!1028859 m!3976921))

(assert (=> b!3524082 m!3972031))

(declare-fun m!3976923 () Bool)

(assert (=> b!3524082 m!3976923))

(assert (=> b!3521523 d!1028859))

(assert (=> b!3521523 d!1027901))

(declare-fun d!1028861 () Bool)

(declare-fun lt!1203548 () Int)

(assert (=> d!1028861 (>= lt!1203548 0)))

(declare-fun e!2181250 () Int)

(assert (=> d!1028861 (= lt!1203548 e!2181250)))

(declare-fun c!607631 () Bool)

(assert (=> d!1028861 (= c!607631 ((_ is Nil!37343) (originalCharacters!6190 (h!42765 tokens!494))))))

(assert (=> d!1028861 (= (size!28412 (originalCharacters!6190 (h!42765 tokens!494))) lt!1203548)))

(declare-fun b!3524083 () Bool)

(assert (=> b!3524083 (= e!2181250 0)))

(declare-fun b!3524084 () Bool)

(assert (=> b!3524084 (= e!2181250 (+ 1 (size!28412 (t!281698 (originalCharacters!6190 (h!42765 tokens!494))))))))

(assert (= (and d!1028861 c!607631) b!3524083))

(assert (= (and d!1028861 (not c!607631)) b!3524084))

(declare-fun m!3976925 () Bool)

(assert (=> b!3524084 m!3976925))

(assert (=> b!3520959 d!1028861))

(declare-fun d!1028863 () Bool)

(assert (=> d!1028863 (= (isEmpty!21815 lt!1202070) (not ((_ is Some!7613) lt!1202070)))))

(assert (=> d!1027023 d!1028863))

(declare-fun b!3524096 () Bool)

(declare-fun e!2181257 () Bool)

(assert (=> b!3524096 (= e!2181257 (>= (size!28412 lt!1201923) (size!28412 lt!1201923)))))

(declare-fun d!1028865 () Bool)

(assert (=> d!1028865 e!2181257))

(declare-fun res!1421284 () Bool)

(assert (=> d!1028865 (=> res!1421284 e!2181257)))

(declare-fun lt!1203551 () Bool)

(assert (=> d!1028865 (= res!1421284 (not lt!1203551))))

(declare-fun e!2181258 () Bool)

(assert (=> d!1028865 (= lt!1203551 e!2181258)))

(declare-fun res!1421283 () Bool)

(assert (=> d!1028865 (=> res!1421283 e!2181258)))

(assert (=> d!1028865 (= res!1421283 ((_ is Nil!37343) lt!1201923))))

(assert (=> d!1028865 (= (isPrefix!2874 lt!1201923 lt!1201923) lt!1203551)))

(declare-fun b!3524095 () Bool)

(declare-fun e!2181259 () Bool)

(assert (=> b!3524095 (= e!2181259 (isPrefix!2874 (tail!5490 lt!1201923) (tail!5490 lt!1201923)))))

(declare-fun b!3524094 () Bool)

(declare-fun res!1421285 () Bool)

(assert (=> b!3524094 (=> (not res!1421285) (not e!2181259))))

(assert (=> b!3524094 (= res!1421285 (= (head!7385 lt!1201923) (head!7385 lt!1201923)))))

(declare-fun b!3524093 () Bool)

(assert (=> b!3524093 (= e!2181258 e!2181259)))

(declare-fun res!1421282 () Bool)

(assert (=> b!3524093 (=> (not res!1421282) (not e!2181259))))

(assert (=> b!3524093 (= res!1421282 (not ((_ is Nil!37343) lt!1201923)))))

(assert (= (and d!1028865 (not res!1421283)) b!3524093))

(assert (= (and b!3524093 res!1421282) b!3524094))

(assert (= (and b!3524094 res!1421285) b!3524095))

(assert (= (and d!1028865 (not res!1421284)) b!3524096))

(assert (=> b!3524096 m!3971079))

(assert (=> b!3524096 m!3971079))

(declare-fun m!3976927 () Bool)

(assert (=> b!3524095 m!3976927))

(assert (=> b!3524095 m!3976927))

(assert (=> b!3524095 m!3976927))

(assert (=> b!3524095 m!3976927))

(declare-fun m!3976929 () Bool)

(assert (=> b!3524095 m!3976929))

(declare-fun m!3976931 () Bool)

(assert (=> b!3524094 m!3976931))

(assert (=> b!3524094 m!3976931))

(assert (=> d!1027023 d!1028865))

(declare-fun d!1028867 () Bool)

(assert (=> d!1028867 (isPrefix!2874 lt!1201923 lt!1201923)))

(declare-fun lt!1203554 () Unit!52994)

(declare-fun choose!20461 (List!37467 List!37467) Unit!52994)

(assert (=> d!1028867 (= lt!1203554 (choose!20461 lt!1201923 lt!1201923))))

(assert (=> d!1028867 (= (lemmaIsPrefixRefl!1833 lt!1201923 lt!1201923) lt!1203554)))

(declare-fun bs!565612 () Bool)

(assert (= bs!565612 d!1028867))

(assert (=> bs!565612 m!3971085))

(declare-fun m!3976933 () Bool)

(assert (=> bs!565612 m!3976933))

(assert (=> d!1027023 d!1028867))

(declare-fun bs!565613 () Bool)

(declare-fun d!1028869 () Bool)

(assert (= bs!565613 (and d!1028869 d!1028751)))

(declare-fun lambda!122798 () Int)

(assert (=> bs!565613 (= lambda!122798 lambda!122794)))

(assert (=> d!1028869 true))

(declare-fun lt!1203557 () Bool)

(assert (=> d!1028869 (= lt!1203557 (forall!8035 rules!2135 lambda!122798))))

(declare-fun e!2181265 () Bool)

(assert (=> d!1028869 (= lt!1203557 e!2181265)))

(declare-fun res!1421290 () Bool)

(assert (=> d!1028869 (=> res!1421290 e!2181265)))

(assert (=> d!1028869 (= res!1421290 (not ((_ is Cons!37344) rules!2135)))))

(assert (=> d!1028869 (= (rulesValidInductive!1883 thiss!18206 rules!2135) lt!1203557)))

(declare-fun b!3524101 () Bool)

(declare-fun e!2181264 () Bool)

(assert (=> b!3524101 (= e!2181265 e!2181264)))

(declare-fun res!1421291 () Bool)

(assert (=> b!3524101 (=> (not res!1421291) (not e!2181264))))

(assert (=> b!3524101 (= res!1421291 (ruleValid!1772 thiss!18206 (h!42764 rules!2135)))))

(declare-fun b!3524102 () Bool)

(assert (=> b!3524102 (= e!2181264 (rulesValidInductive!1883 thiss!18206 (t!281699 rules!2135)))))

(assert (= (and d!1028869 (not res!1421290)) b!3524101))

(assert (= (and b!3524101 res!1421291) b!3524102))

(declare-fun m!3976935 () Bool)

(assert (=> d!1028869 m!3976935))

(assert (=> b!3524101 m!3976525))

(assert (=> b!3524102 m!3976633))

(assert (=> d!1027023 d!1028869))

(declare-fun b!3524103 () Bool)

(declare-fun e!2181268 () Bool)

(declare-fun e!2181267 () Bool)

(assert (=> b!3524103 (= e!2181268 e!2181267)))

(declare-fun c!607632 () Bool)

(assert (=> b!3524103 (= c!607632 ((_ is IntegerValue!17119) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) lt!1201929)))))

(declare-fun b!3524104 () Bool)

(declare-fun e!2181266 () Bool)

(assert (=> b!3524104 (= e!2181266 (inv!15 (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) lt!1201929)))))

(declare-fun d!1028871 () Bool)

(declare-fun c!607633 () Bool)

(assert (=> d!1028871 (= c!607633 ((_ is IntegerValue!17118) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) lt!1201929)))))

(assert (=> d!1028871 (= (inv!21 (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) lt!1201929)) e!2181268)))

(declare-fun b!3524105 () Bool)

(assert (=> b!3524105 (= e!2181267 (inv!17 (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) lt!1201929)))))

(declare-fun b!3524106 () Bool)

(declare-fun res!1421292 () Bool)

(assert (=> b!3524106 (=> res!1421292 e!2181266)))

(assert (=> b!3524106 (= res!1421292 (not ((_ is IntegerValue!17120) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) lt!1201929))))))

(assert (=> b!3524106 (= e!2181267 e!2181266)))

(declare-fun b!3524107 () Bool)

(assert (=> b!3524107 (= e!2181268 (inv!16 (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) lt!1201929)))))

(assert (= (and d!1028871 c!607633) b!3524107))

(assert (= (and d!1028871 (not c!607633)) b!3524103))

(assert (= (and b!3524103 c!607632) b!3524105))

(assert (= (and b!3524103 (not c!607632)) b!3524106))

(assert (= (and b!3524106 (not res!1421292)) b!3524104))

(declare-fun m!3976937 () Bool)

(assert (=> b!3524104 m!3976937))

(declare-fun m!3976939 () Bool)

(assert (=> b!3524105 m!3976939))

(declare-fun m!3976941 () Bool)

(assert (=> b!3524107 m!3976941))

(assert (=> tb!196637 d!1028871))

(assert (=> d!1027211 d!1027253))

(declare-fun d!1028873 () Bool)

(assert (=> d!1028873 (= (apply!8897 (transformation!5476 (rule!8122 (h!42765 tokens!494))) (seqFromList!4006 lt!1201911)) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (seqFromList!4006 lt!1201911)))))

(declare-fun b_lambda!102957 () Bool)

(assert (=> (not b_lambda!102957) (not d!1028873)))

(declare-fun tb!197093 () Bool)

(declare-fun t!282212 () Bool)

(assert (=> (and b!3521754 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!282212) tb!197093))

(declare-fun result!241468 () Bool)

(assert (=> tb!197093 (= result!241468 (inv!21 (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (seqFromList!4006 lt!1201911))))))

(declare-fun m!3976943 () Bool)

(assert (=> tb!197093 m!3976943))

(assert (=> d!1028873 t!282212))

(declare-fun b_and!251187 () Bool)

(assert (= b_and!251127 (and (=> t!282212 result!241468) b_and!251187)))

(declare-fun t!282214 () Bool)

(declare-fun tb!197095 () Bool)

(assert (=> (and b!3520728 (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!282214) tb!197095))

(declare-fun result!241470 () Bool)

(assert (= result!241470 result!241468))

(assert (=> d!1028873 t!282214))

(declare-fun b_and!251189 () Bool)

(assert (= b_and!251129 (and (=> t!282214 result!241470) b_and!251189)))

(declare-fun t!282216 () Bool)

(declare-fun tb!197097 () Bool)

(assert (=> (and b!3520698 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!282216) tb!197097))

(declare-fun result!241472 () Bool)

(assert (= result!241472 result!241468))

(assert (=> d!1028873 t!282216))

(declare-fun b_and!251191 () Bool)

(assert (= b_and!251135 (and (=> t!282216 result!241472) b_and!251191)))

(declare-fun t!282218 () Bool)

(declare-fun tb!197099 () Bool)

(assert (=> (and b!3520694 (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!282218) tb!197099))

(declare-fun result!241474 () Bool)

(assert (= result!241474 result!241468))

(assert (=> d!1028873 t!282218))

(declare-fun b_and!251193 () Bool)

(assert (= b_and!251133 (and (=> t!282218 result!241474) b_and!251193)))

(declare-fun t!282220 () Bool)

(declare-fun tb!197101 () Bool)

(assert (=> (and b!3521743 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!282220) tb!197101))

(declare-fun result!241476 () Bool)

(assert (= result!241476 result!241468))

(assert (=> d!1028873 t!282220))

(declare-fun b_and!251195 () Bool)

(assert (= b_and!251131 (and (=> t!282220 result!241476) b_and!251195)))

(assert (=> d!1028873 m!3970683))

(declare-fun m!3976945 () Bool)

(assert (=> d!1028873 m!3976945))

(assert (=> d!1027211 d!1028873))

(assert (=> d!1027211 d!1027195))

(assert (=> d!1027211 d!1027281))

(declare-fun d!1028875 () Bool)

(assert (=> d!1028875 (= (maxPrefixOneRule!1772 thiss!18206 (rule!8122 (h!42765 tokens!494)) lt!1201911) (Some!7613 (tuple2!37179 (Token!10319 (apply!8897 (transformation!5476 (rule!8122 (h!42765 tokens!494))) (seqFromList!4006 lt!1201911)) (rule!8122 (h!42765 tokens!494)) (size!28412 lt!1201911) lt!1201911) Nil!37343)))))

(assert (=> d!1028875 true))

(declare-fun _$59!543 () Unit!52994)

(assert (=> d!1028875 (= (choose!20448 thiss!18206 rules!2135 lt!1201911 lt!1201911 Nil!37343 (rule!8122 (h!42765 tokens!494))) _$59!543)))

(declare-fun bs!565614 () Bool)

(assert (= bs!565614 d!1028875))

(assert (=> bs!565614 m!3970615))

(assert (=> bs!565614 m!3970683))

(assert (=> bs!565614 m!3970683))

(assert (=> bs!565614 m!3971955))

(assert (=> bs!565614 m!3970641))

(assert (=> d!1027211 d!1028875))

(assert (=> d!1027211 d!1027233))

(declare-fun d!1028877 () Bool)

(declare-fun lt!1203558 () Int)

(assert (=> d!1028877 (>= lt!1203558 0)))

(declare-fun e!2181270 () Int)

(assert (=> d!1028877 (= lt!1203558 e!2181270)))

(declare-fun c!607634 () Bool)

(assert (=> d!1028877 (= c!607634 ((_ is Nil!37343) (originalCharacters!6190 separatorToken!241)))))

(assert (=> d!1028877 (= (size!28412 (originalCharacters!6190 separatorToken!241)) lt!1203558)))

(declare-fun b!3524108 () Bool)

(assert (=> b!3524108 (= e!2181270 0)))

(declare-fun b!3524109 () Bool)

(assert (=> b!3524109 (= e!2181270 (+ 1 (size!28412 (t!281698 (originalCharacters!6190 separatorToken!241)))))))

(assert (= (and d!1028877 c!607634) b!3524108))

(assert (= (and d!1028877 (not c!607634)) b!3524109))

(declare-fun m!3976947 () Bool)

(assert (=> b!3524109 m!3976947))

(assert (=> b!3521701 d!1028877))

(declare-fun d!1028879 () Bool)

(assert (=> d!1028879 (= (inv!15 (value!176526 (h!42765 tokens!494))) (= (charsToBigInt!0 (text!40391 (value!176526 (h!42765 tokens!494))) 0) (value!176521 (value!176526 (h!42765 tokens!494)))))))

(declare-fun bs!565615 () Bool)

(assert (= bs!565615 d!1028879))

(declare-fun m!3976949 () Bool)

(assert (=> bs!565615 m!3976949))

(assert (=> b!3521618 d!1028879))

(declare-fun d!1028881 () Bool)

(assert (=> d!1028881 (= (seqFromList!4006 (_1!21727 lt!1202220)) (fromListB!1842 (_1!21727 lt!1202220)))))

(declare-fun bs!565616 () Bool)

(assert (= bs!565616 d!1028881))

(declare-fun m!3976951 () Bool)

(assert (=> bs!565616 m!3976951))

(assert (=> b!3521321 d!1028881))

(declare-fun d!1028883 () Bool)

(declare-fun e!2181271 () Bool)

(assert (=> d!1028883 e!2181271))

(declare-fun res!1421293 () Bool)

(assert (=> d!1028883 (=> res!1421293 e!2181271)))

(assert (=> d!1028883 (= res!1421293 (isEmpty!21812 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 (size!28412 Nil!37343) lt!1201914 lt!1201914 (size!28412 lt!1201914)))))))

(declare-fun lt!1203559 () Unit!52994)

(assert (=> d!1028883 (= lt!1203559 (choose!20457 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) lt!1201914))))

(assert (=> d!1028883 (validRegex!4674 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))))

(assert (=> d!1028883 (= (longestMatchIsAcceptedByMatchOrIsEmpty!912 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) lt!1201914) lt!1203559)))

(declare-fun b!3524110 () Bool)

(assert (=> b!3524110 (= e!2181271 (matchR!4819 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 (size!28412 Nil!37343) lt!1201914 lt!1201914 (size!28412 lt!1201914)))))))

(assert (= (and d!1028883 (not res!1421293)) b!3524110))

(assert (=> d!1028883 m!3971607))

(assert (=> d!1028883 m!3970651))

(assert (=> d!1028883 m!3971609))

(assert (=> d!1028883 m!3971631))

(assert (=> d!1028883 m!3971607))

(assert (=> d!1028883 m!3970671))

(declare-fun m!3976953 () Bool)

(assert (=> d!1028883 m!3976953))

(assert (=> d!1028883 m!3970651))

(assert (=> b!3524110 m!3971607))

(assert (=> b!3524110 m!3970651))

(assert (=> b!3524110 m!3971607))

(assert (=> b!3524110 m!3970651))

(assert (=> b!3524110 m!3971609))

(assert (=> b!3524110 m!3971611))

(assert (=> b!3521321 d!1028883))

(declare-fun d!1028885 () Bool)

(declare-fun lt!1203560 () Int)

(assert (=> d!1028885 (= lt!1203560 (size!28412 (list!13659 (seqFromList!4006 (_1!21727 lt!1202220)))))))

(assert (=> d!1028885 (= lt!1203560 (size!28421 (c!606753 (seqFromList!4006 (_1!21727 lt!1202220)))))))

(assert (=> d!1028885 (= (size!28419 (seqFromList!4006 (_1!21727 lt!1202220))) lt!1203560)))

(declare-fun bs!565617 () Bool)

(assert (= bs!565617 d!1028885))

(assert (=> bs!565617 m!3971623))

(declare-fun m!3976955 () Bool)

(assert (=> bs!565617 m!3976955))

(assert (=> bs!565617 m!3976955))

(declare-fun m!3976957 () Bool)

(assert (=> bs!565617 m!3976957))

(declare-fun m!3976959 () Bool)

(assert (=> bs!565617 m!3976959))

(assert (=> b!3521321 d!1028885))

(declare-fun bs!565618 () Bool)

(declare-fun d!1028887 () Bool)

(assert (= bs!565618 (and d!1028887 d!1028003)))

(declare-fun lambda!122799 () Int)

(assert (=> bs!565618 (= (and (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (= lambda!122799 lambda!122766))))

(declare-fun bs!565619 () Bool)

(assert (= bs!565619 (and d!1028887 d!1028389)))

(assert (=> bs!565619 (= (and (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241)))) (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))))) (= lambda!122799 lambda!122785))))

(declare-fun bs!565620 () Bool)

(assert (= bs!565620 (and d!1028887 d!1028723)))

(assert (=> bs!565620 (= (and (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (= lambda!122799 lambda!122790))))

(declare-fun bs!565621 () Bool)

(assert (= bs!565621 (and d!1028887 d!1028743)))

(assert (=> bs!565621 (= (and (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (h!42764 rules!2135)))) (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (h!42764 rules!2135))))) (= lambda!122799 lambda!122791))))

(declare-fun b!3524111 () Bool)

(declare-fun e!2181272 () Bool)

(assert (=> b!3524111 (= e!2181272 true)))

(assert (=> d!1028887 e!2181272))

(assert (= d!1028887 b!3524111))

(assert (=> b!3524111 (< (dynLambda!15904 order!20085 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) (dynLambda!15914 order!20095 lambda!122799))))

(assert (=> b!3524111 (< (dynLambda!15906 order!20089 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) (dynLambda!15914 order!20095 lambda!122799))))

(assert (=> d!1028887 (= (list!13659 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (seqFromList!4006 (_1!21727 lt!1202220))))) (list!13659 (seqFromList!4006 (_1!21727 lt!1202220))))))

(declare-fun lt!1203561 () Unit!52994)

(assert (=> d!1028887 (= lt!1203561 (ForallOf!609 lambda!122799 (seqFromList!4006 (_1!21727 lt!1202220))))))

(assert (=> d!1028887 (= (lemmaSemiInverse!1291 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) (seqFromList!4006 (_1!21727 lt!1202220))) lt!1203561)))

(declare-fun b_lambda!102959 () Bool)

(assert (=> (not b_lambda!102959) (not d!1028887)))

(declare-fun t!282222 () Bool)

(declare-fun tb!197103 () Bool)

(assert (=> (and b!3521743 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282222) tb!197103))

(declare-fun tp!1087212 () Bool)

(declare-fun b!3524112 () Bool)

(declare-fun e!2181273 () Bool)

(assert (=> b!3524112 (= e!2181273 (and (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (seqFromList!4006 (_1!21727 lt!1202220)))))) tp!1087212))))

(declare-fun result!241478 () Bool)

(assert (=> tb!197103 (= result!241478 (and (inv!50582 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (seqFromList!4006 (_1!21727 lt!1202220))))) e!2181273))))

(assert (= tb!197103 b!3524112))

(declare-fun m!3976961 () Bool)

(assert (=> b!3524112 m!3976961))

(declare-fun m!3976963 () Bool)

(assert (=> tb!197103 m!3976963))

(assert (=> d!1028887 t!282222))

(declare-fun b_and!251197 () Bool)

(assert (= b_and!251183 (and (=> t!282222 result!241478) b_and!251197)))

(declare-fun t!282224 () Bool)

(declare-fun tb!197105 () Bool)

(assert (=> (and b!3520728 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282224) tb!197105))

(declare-fun result!241480 () Bool)

(assert (= result!241480 result!241478))

(assert (=> d!1028887 t!282224))

(declare-fun b_and!251199 () Bool)

(assert (= b_and!251185 (and (=> t!282224 result!241480) b_and!251199)))

(declare-fun t!282226 () Bool)

(declare-fun tb!197107 () Bool)

(assert (=> (and b!3521754 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282226) tb!197107))

(declare-fun result!241482 () Bool)

(assert (= result!241482 result!241478))

(assert (=> d!1028887 t!282226))

(declare-fun b_and!251201 () Bool)

(assert (= b_and!251177 (and (=> t!282226 result!241482) b_and!251201)))

(declare-fun t!282228 () Bool)

(declare-fun tb!197109 () Bool)

(assert (=> (and b!3520698 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282228) tb!197109))

(declare-fun result!241484 () Bool)

(assert (= result!241484 result!241478))

(assert (=> d!1028887 t!282228))

(declare-fun b_and!251203 () Bool)

(assert (= b_and!251181 (and (=> t!282228 result!241484) b_and!251203)))

(declare-fun tb!197111 () Bool)

(declare-fun t!282230 () Bool)

(assert (=> (and b!3520694 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282230) tb!197111))

(declare-fun result!241486 () Bool)

(assert (= result!241486 result!241478))

(assert (=> d!1028887 t!282230))

(declare-fun b_and!251205 () Bool)

(assert (= b_and!251179 (and (=> t!282230 result!241486) b_and!251205)))

(declare-fun b_lambda!102961 () Bool)

(assert (=> (not b_lambda!102961) (not d!1028887)))

(declare-fun t!282232 () Bool)

(declare-fun tb!197113 () Bool)

(assert (=> (and b!3521743 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282232) tb!197113))

(declare-fun result!241488 () Bool)

(assert (=> tb!197113 (= result!241488 (inv!21 (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (seqFromList!4006 (_1!21727 lt!1202220)))))))

(declare-fun m!3976965 () Bool)

(assert (=> tb!197113 m!3976965))

(assert (=> d!1028887 t!282232))

(declare-fun b_and!251207 () Bool)

(assert (= b_and!251195 (and (=> t!282232 result!241488) b_and!251207)))

(declare-fun t!282234 () Bool)

(declare-fun tb!197115 () Bool)

(assert (=> (and b!3521754 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282234) tb!197115))

(declare-fun result!241490 () Bool)

(assert (= result!241490 result!241488))

(assert (=> d!1028887 t!282234))

(declare-fun b_and!251209 () Bool)

(assert (= b_and!251187 (and (=> t!282234 result!241490) b_and!251209)))

(declare-fun t!282236 () Bool)

(declare-fun tb!197117 () Bool)

(assert (=> (and b!3520698 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282236) tb!197117))

(declare-fun result!241492 () Bool)

(assert (= result!241492 result!241488))

(assert (=> d!1028887 t!282236))

(declare-fun b_and!251211 () Bool)

(assert (= b_and!251191 (and (=> t!282236 result!241492) b_and!251211)))

(declare-fun t!282238 () Bool)

(declare-fun tb!197119 () Bool)

(assert (=> (and b!3520694 (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282238) tb!197119))

(declare-fun result!241494 () Bool)

(assert (= result!241494 result!241488))

(assert (=> d!1028887 t!282238))

(declare-fun b_and!251213 () Bool)

(assert (= b_and!251193 (and (=> t!282238 result!241494) b_and!251213)))

(declare-fun tb!197121 () Bool)

(declare-fun t!282240 () Bool)

(assert (=> (and b!3520728 (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282240) tb!197121))

(declare-fun result!241496 () Bool)

(assert (= result!241496 result!241488))

(assert (=> d!1028887 t!282240))

(declare-fun b_and!251215 () Bool)

(assert (= b_and!251189 (and (=> t!282240 result!241496) b_and!251215)))

(declare-fun m!3976967 () Bool)

(assert (=> d!1028887 m!3976967))

(declare-fun m!3976969 () Bool)

(assert (=> d!1028887 m!3976969))

(assert (=> d!1028887 m!3971623))

(assert (=> d!1028887 m!3976955))

(assert (=> d!1028887 m!3971623))

(declare-fun m!3976971 () Bool)

(assert (=> d!1028887 m!3976971))

(assert (=> d!1028887 m!3971623))

(assert (=> d!1028887 m!3976967))

(assert (=> d!1028887 m!3976969))

(declare-fun m!3976973 () Bool)

(assert (=> d!1028887 m!3976973))

(assert (=> b!3521321 d!1028887))

(assert (=> b!3521321 d!1028509))

(assert (=> b!3521321 d!1027241))

(declare-fun d!1028889 () Bool)

(assert (=> d!1028889 (= (isEmpty!21812 (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 (size!28412 Nil!37343) lt!1201914 lt!1201914 (size!28412 lt!1201914)))) ((_ is Nil!37343) (_1!21727 (findLongestMatchInner!939 (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) Nil!37343 (size!28412 Nil!37343) lt!1201914 lt!1201914 (size!28412 lt!1201914)))))))

(assert (=> b!3521321 d!1028889))

(assert (=> b!3521321 d!1028051))

(declare-fun d!1028891 () Bool)

(assert (=> d!1028891 (= (apply!8897 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))) (seqFromList!4006 (_1!21727 lt!1202220))) (dynLambda!15911 (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (seqFromList!4006 (_1!21727 lt!1202220))))))

(declare-fun b_lambda!102963 () Bool)

(assert (=> (not b_lambda!102963) (not d!1028891)))

(assert (=> d!1028891 t!282236))

(declare-fun b_and!251217 () Bool)

(assert (= b_and!251211 (and (=> t!282236 result!241492) b_and!251217)))

(assert (=> d!1028891 t!282232))

(declare-fun b_and!251219 () Bool)

(assert (= b_and!251207 (and (=> t!282232 result!241488) b_and!251219)))

(assert (=> d!1028891 t!282234))

(declare-fun b_and!251221 () Bool)

(assert (= b_and!251209 (and (=> t!282234 result!241490) b_and!251221)))

(assert (=> d!1028891 t!282240))

(declare-fun b_and!251223 () Bool)

(assert (= b_and!251215 (and (=> t!282240 result!241496) b_and!251223)))

(assert (=> d!1028891 t!282238))

(declare-fun b_and!251225 () Bool)

(assert (= b_and!251213 (and (=> t!282238 result!241494) b_and!251225)))

(assert (=> d!1028891 m!3971623))

(assert (=> d!1028891 m!3976967))

(assert (=> b!3521321 d!1028891))

(assert (=> d!1027129 d!1027015))

(assert (=> d!1027129 d!1027037))

(declare-fun d!1028893 () Bool)

(assert (=> d!1028893 (not (contains!7004 (usedCharacters!710 (regex!5476 (rule!8122 (h!42765 tokens!494)))) lt!1201930))))

(assert (=> d!1028893 true))

(declare-fun _$73!298 () Unit!52994)

(assert (=> d!1028893 (= (choose!20445 thiss!18206 rules!2135 rules!2135 (rule!8122 (h!42765 tokens!494)) (rule!8122 separatorToken!241) lt!1201930) _$73!298)))

(declare-fun bs!565622 () Bool)

(assert (= bs!565622 d!1028893))

(assert (=> bs!565622 m!3970621))

(assert (=> bs!565622 m!3970621))

(assert (=> bs!565622 m!3970623))

(assert (=> d!1027129 d!1028893))

(assert (=> d!1027129 d!1027011))

(declare-fun d!1028895 () Bool)

(declare-fun c!607636 () Bool)

(assert (=> d!1028895 (= c!607636 ((_ is Node!11327) (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241)))))))

(declare-fun e!2181275 () Bool)

(assert (=> d!1028895 (= (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241)))) e!2181275)))

(declare-fun b!3524113 () Bool)

(assert (=> b!3524113 (= e!2181275 (inv!50583 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241)))))))

(declare-fun b!3524114 () Bool)

(declare-fun e!2181276 () Bool)

(assert (=> b!3524114 (= e!2181275 e!2181276)))

(declare-fun res!1421294 () Bool)

(assert (=> b!3524114 (= res!1421294 (not ((_ is Leaf!17676) (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241))))))))

(assert (=> b!3524114 (=> res!1421294 e!2181276)))

(declare-fun b!3524115 () Bool)

(assert (=> b!3524115 (= e!2181276 (inv!50584 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241)))))))

(assert (= (and d!1028895 c!607636) b!3524113))

(assert (= (and d!1028895 (not c!607636)) b!3524114))

(assert (= (and b!3524114 (not res!1421294)) b!3524115))

(declare-fun m!3976975 () Bool)

(assert (=> b!3524113 m!3976975))

(declare-fun m!3976977 () Bool)

(assert (=> b!3524115 m!3976977))

(assert (=> b!3521671 d!1028895))

(declare-fun d!1028897 () Bool)

(declare-fun lt!1203562 () Bool)

(assert (=> d!1028897 (= lt!1203562 (isEmpty!21818 (list!13662 (_1!21722 lt!1202292))))))

(assert (=> d!1028897 (= lt!1203562 (isEmpty!21819 (c!606754 (_1!21722 lt!1202292))))))

(assert (=> d!1028897 (= (isEmpty!21805 (_1!21722 lt!1202292)) lt!1203562)))

(declare-fun bs!565623 () Bool)

(assert (= bs!565623 d!1028897))

(assert (=> bs!565623 m!3972061))

(assert (=> bs!565623 m!3972061))

(declare-fun m!3976979 () Bool)

(assert (=> bs!565623 m!3976979))

(declare-fun m!3976981 () Bool)

(assert (=> bs!565623 m!3976981))

(assert (=> b!3521560 d!1028897))

(declare-fun b!3524116 () Bool)

(declare-fun e!2181277 () Bool)

(assert (=> b!3524116 (= e!2181277 tp_is_empty!17617)))

(assert (=> b!3521721 (= tp!1087036 e!2181277)))

(declare-fun b!3524119 () Bool)

(declare-fun tp!1087215 () Bool)

(declare-fun tp!1087217 () Bool)

(assert (=> b!3524119 (= e!2181277 (and tp!1087215 tp!1087217))))

(declare-fun b!3524117 () Bool)

(declare-fun tp!1087213 () Bool)

(declare-fun tp!1087216 () Bool)

(assert (=> b!3524117 (= e!2181277 (and tp!1087213 tp!1087216))))

(declare-fun b!3524118 () Bool)

(declare-fun tp!1087214 () Bool)

(assert (=> b!3524118 (= e!2181277 tp!1087214)))

(assert (= (and b!3521721 ((_ is ElementMatch!10235) (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524116))

(assert (= (and b!3521721 ((_ is Concat!15941) (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524117))

(assert (= (and b!3521721 ((_ is Star!10235) (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524118))

(assert (= (and b!3521721 ((_ is Union!10235) (reg!10564 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524119))

(declare-fun b!3524120 () Bool)

(declare-fun e!2181278 () Bool)

(assert (=> b!3524120 (= e!2181278 tp_is_empty!17617)))

(assert (=> b!3521720 (= tp!1087035 e!2181278)))

(declare-fun b!3524123 () Bool)

(declare-fun tp!1087220 () Bool)

(declare-fun tp!1087222 () Bool)

(assert (=> b!3524123 (= e!2181278 (and tp!1087220 tp!1087222))))

(declare-fun b!3524121 () Bool)

(declare-fun tp!1087218 () Bool)

(declare-fun tp!1087221 () Bool)

(assert (=> b!3524121 (= e!2181278 (and tp!1087218 tp!1087221))))

(declare-fun b!3524122 () Bool)

(declare-fun tp!1087219 () Bool)

(assert (=> b!3524122 (= e!2181278 tp!1087219)))

(assert (= (and b!3521720 ((_ is ElementMatch!10235) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524120))

(assert (= (and b!3521720 ((_ is Concat!15941) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524121))

(assert (= (and b!3521720 ((_ is Star!10235) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524122))

(assert (= (and b!3521720 ((_ is Union!10235) (regOne!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524123))

(declare-fun b!3524124 () Bool)

(declare-fun e!2181279 () Bool)

(assert (=> b!3524124 (= e!2181279 tp_is_empty!17617)))

(assert (=> b!3521720 (= tp!1087038 e!2181279)))

(declare-fun b!3524127 () Bool)

(declare-fun tp!1087225 () Bool)

(declare-fun tp!1087227 () Bool)

(assert (=> b!3524127 (= e!2181279 (and tp!1087225 tp!1087227))))

(declare-fun b!3524125 () Bool)

(declare-fun tp!1087223 () Bool)

(declare-fun tp!1087226 () Bool)

(assert (=> b!3524125 (= e!2181279 (and tp!1087223 tp!1087226))))

(declare-fun b!3524126 () Bool)

(declare-fun tp!1087224 () Bool)

(assert (=> b!3524126 (= e!2181279 tp!1087224)))

(assert (= (and b!3521720 ((_ is ElementMatch!10235) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524124))

(assert (= (and b!3521720 ((_ is Concat!15941) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524125))

(assert (= (and b!3521720 ((_ is Star!10235) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524126))

(assert (= (and b!3521720 ((_ is Union!10235) (regTwo!20982 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524127))

(declare-fun b!3524128 () Bool)

(declare-fun e!2181280 () Bool)

(assert (=> b!3524128 (= e!2181280 tp_is_empty!17617)))

(assert (=> b!3521742 (= tp!1087059 e!2181280)))

(declare-fun b!3524131 () Bool)

(declare-fun tp!1087230 () Bool)

(declare-fun tp!1087232 () Bool)

(assert (=> b!3524131 (= e!2181280 (and tp!1087230 tp!1087232))))

(declare-fun b!3524129 () Bool)

(declare-fun tp!1087228 () Bool)

(declare-fun tp!1087231 () Bool)

(assert (=> b!3524129 (= e!2181280 (and tp!1087228 tp!1087231))))

(declare-fun b!3524130 () Bool)

(declare-fun tp!1087229 () Bool)

(assert (=> b!3524130 (= e!2181280 tp!1087229)))

(assert (= (and b!3521742 ((_ is ElementMatch!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) b!3524128))

(assert (= (and b!3521742 ((_ is Concat!15941) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) b!3524129))

(assert (= (and b!3521742 ((_ is Star!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) b!3524130))

(assert (= (and b!3521742 ((_ is Union!10235) (regex!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) b!3524131))

(declare-fun b!3524132 () Bool)

(declare-fun e!2181281 () Bool)

(assert (=> b!3524132 (= e!2181281 tp_is_empty!17617)))

(assert (=> b!3521722 (= tp!1087037 e!2181281)))

(declare-fun b!3524135 () Bool)

(declare-fun tp!1087235 () Bool)

(declare-fun tp!1087237 () Bool)

(assert (=> b!3524135 (= e!2181281 (and tp!1087235 tp!1087237))))

(declare-fun b!3524133 () Bool)

(declare-fun tp!1087233 () Bool)

(declare-fun tp!1087236 () Bool)

(assert (=> b!3524133 (= e!2181281 (and tp!1087233 tp!1087236))))

(declare-fun b!3524134 () Bool)

(declare-fun tp!1087234 () Bool)

(assert (=> b!3524134 (= e!2181281 tp!1087234)))

(assert (= (and b!3521722 ((_ is ElementMatch!10235) (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524132))

(assert (= (and b!3521722 ((_ is Concat!15941) (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524133))

(assert (= (and b!3521722 ((_ is Star!10235) (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524134))

(assert (= (and b!3521722 ((_ is Union!10235) (regOne!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524135))

(declare-fun b!3524136 () Bool)

(declare-fun e!2181282 () Bool)

(assert (=> b!3524136 (= e!2181282 tp_is_empty!17617)))

(assert (=> b!3521722 (= tp!1087039 e!2181282)))

(declare-fun b!3524139 () Bool)

(declare-fun tp!1087240 () Bool)

(declare-fun tp!1087242 () Bool)

(assert (=> b!3524139 (= e!2181282 (and tp!1087240 tp!1087242))))

(declare-fun b!3524137 () Bool)

(declare-fun tp!1087238 () Bool)

(declare-fun tp!1087241 () Bool)

(assert (=> b!3524137 (= e!2181282 (and tp!1087238 tp!1087241))))

(declare-fun b!3524138 () Bool)

(declare-fun tp!1087239 () Bool)

(assert (=> b!3524138 (= e!2181282 tp!1087239)))

(assert (= (and b!3521722 ((_ is ElementMatch!10235) (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524136))

(assert (= (and b!3521722 ((_ is Concat!15941) (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524137))

(assert (= (and b!3521722 ((_ is Star!10235) (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524138))

(assert (= (and b!3521722 ((_ is Union!10235) (regTwo!20983 (regex!5476 (rule!8122 (h!42765 tokens!494)))))) b!3524139))

(declare-fun b!3524143 () Bool)

(declare-fun b_free!90765 () Bool)

(declare-fun b_next!91469 () Bool)

(assert (=> b!3524143 (= b_free!90765 (not b_next!91469))))

(declare-fun t!282242 () Bool)

(declare-fun tb!197123 () Bool)

(assert (=> (and b!3524143 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))) t!282242) tb!197123))

(declare-fun result!241498 () Bool)

(assert (= result!241498 result!241212))

(assert (=> d!1027921 t!282242))

(declare-fun tb!197125 () Bool)

(declare-fun t!282244 () Bool)

(assert (=> (and b!3524143 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217)))))) t!282244) tb!197125))

(declare-fun result!241500 () Bool)

(assert (= result!241500 result!241202))

(assert (=> d!1027911 t!282244))

(declare-fun t!282246 () Bool)

(declare-fun tb!197127 () Bool)

(assert (=> (and b!3524143 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!282246) tb!197127))

(declare-fun result!241502 () Bool)

(assert (= result!241502 result!241246))

(assert (=> d!1028003 t!282246))

(assert (=> d!1028041 t!282246))

(declare-fun t!282248 () Bool)

(declare-fun tb!197129 () Bool)

(assert (=> (and b!3524143 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282248) tb!197129))

(declare-fun result!241504 () Bool)

(assert (= result!241504 result!241488))

(assert (=> d!1028891 t!282248))

(assert (=> d!1028887 t!282248))

(declare-fun t!282250 () Bool)

(declare-fun tb!197131 () Bool)

(assert (=> (and b!3524143 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279)))))) t!282250) tb!197131))

(declare-fun result!241506 () Bool)

(assert (= result!241506 result!241418))

(assert (=> d!1028399 t!282250))

(declare-fun t!282252 () Bool)

(declare-fun tb!197133 () Bool)

(assert (=> (and b!3524143 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282252) tb!197133))

(declare-fun result!241508 () Bool)

(assert (= result!241508 result!240984))

(assert (=> d!1027019 t!282252))

(declare-fun t!282254 () Bool)

(declare-fun tb!197135 () Bool)

(assert (=> (and b!3524143 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!282254) tb!197135))

(declare-fun result!241510 () Bool)

(assert (= result!241510 result!240992))

(assert (=> d!1027029 t!282254))

(declare-fun t!282256 () Bool)

(declare-fun tb!197137 () Bool)

(assert (=> (and b!3524143 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!282256) tb!197137))

(declare-fun result!241512 () Bool)

(assert (= result!241512 result!241468))

(assert (=> d!1028873 t!282256))

(declare-fun tp!1087245 () Bool)

(declare-fun b_and!251227 () Bool)

(assert (=> b!3524143 (= tp!1087245 (and (=> t!282254 result!241510) (=> t!282256 result!241512) (=> t!282246 result!241502) (=> t!282250 result!241506) (=> t!282248 result!241504) (=> t!282244 result!241500) (=> t!282242 result!241498) (=> t!282252 result!241508) b_and!251227))))

(declare-fun b_free!90767 () Bool)

(declare-fun b_next!91471 () Bool)

(assert (=> b!3524143 (= b_free!90767 (not b_next!91471))))

(declare-fun t!282258 () Bool)

(declare-fun tb!197139 () Bool)

(assert (=> (and b!3524143 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282258) tb!197139))

(declare-fun result!241514 () Bool)

(assert (= result!241514 result!241058))

(assert (=> b!3524021 t!282258))

(declare-fun tb!197141 () Bool)

(declare-fun t!282260 () Bool)

(assert (=> (and b!3524143 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279)))))) t!282260) tb!197141))

(declare-fun result!241516 () Bool)

(assert (= result!241516 result!241438))

(assert (=> d!1028551 t!282260))

(declare-fun tb!197143 () Bool)

(declare-fun t!282262 () Bool)

(assert (=> (and b!3524143 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217)))))) t!282262) tb!197143))

(declare-fun result!241518 () Bool)

(assert (= result!241518 result!241302))

(assert (=> d!1028193 t!282262))

(declare-fun t!282264 () Bool)

(declare-fun tb!197145 () Bool)

(assert (=> (and b!3524143 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!282264) tb!197145))

(declare-fun result!241520 () Bool)

(assert (= result!241520 result!240976))

(assert (=> b!3520958 t!282264))

(assert (=> d!1027293 t!282264))

(declare-fun t!282266 () Bool)

(declare-fun tb!197147 () Bool)

(assert (=> (and b!3524143 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494))))))) t!282266) tb!197147))

(declare-fun result!241522 () Bool)

(assert (= result!241522 result!241428))

(assert (=> d!1028403 t!282266))

(declare-fun tb!197149 () Bool)

(declare-fun t!282268 () Bool)

(assert (=> (and b!3524143 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241)))) t!282268) tb!197149))

(declare-fun result!241524 () Bool)

(assert (= result!241524 result!241052))

(assert (=> b!3521700 t!282268))

(declare-fun t!282270 () Bool)

(declare-fun tb!197151 () Bool)

(assert (=> (and b!3524143 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201920 0))))) t!282270) tb!197151))

(declare-fun result!241526 () Bool)

(assert (= result!241526 result!241282))

(assert (=> d!1028143 t!282270))

(declare-fun t!282272 () Bool)

(declare-fun tb!197153 () Bool)

(assert (=> (and b!3524143 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201906 0))))) t!282272) tb!197153))

(declare-fun result!241528 () Bool)

(assert (= result!241528 result!241448))

(assert (=> d!1028645 t!282272))

(assert (=> d!1027313 t!282268))

(declare-fun t!282274 () Bool)

(declare-fun tb!197155 () Bool)

(assert (=> (and b!3524143 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))) t!282274) tb!197155))

(declare-fun result!241530 () Bool)

(assert (= result!241530 result!241292))

(assert (=> d!1028187 t!282274))

(declare-fun t!282276 () Bool)

(declare-fun tb!197157 () Bool)

(assert (=> (and b!3524143 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345)))))) t!282276) tb!197157))

(declare-fun result!241532 () Bool)

(assert (= result!241532 result!241458))

(assert (=> d!1028719 t!282276))

(declare-fun t!282278 () Bool)

(declare-fun tb!197159 () Bool)

(assert (=> (and b!3524143 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282278) tb!197159))

(declare-fun result!241534 () Bool)

(assert (= result!241534 result!241478))

(assert (=> d!1028887 t!282278))

(assert (=> d!1027317 t!282258))

(declare-fun t!282280 () Bool)

(declare-fun tb!197161 () Bool)

(assert (=> (and b!3524143 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201912 0))))) t!282280) tb!197161))

(declare-fun result!241536 () Bool)

(assert (= result!241536 result!241192))

(assert (=> d!1027891 t!282280))

(declare-fun t!282282 () Bool)

(declare-fun tb!197163 () Bool)

(assert (=> (and b!3524143 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!282282) tb!197163))

(declare-fun result!241538 () Bool)

(assert (= result!241538 result!241232))

(assert (=> d!1028003 t!282282))

(declare-fun b_and!251229 () Bool)

(declare-fun tp!1087244 () Bool)

(assert (=> b!3524143 (= tp!1087244 (and (=> t!282270 result!241526) (=> t!282282 result!241538) (=> t!282278 result!241534) (=> t!282272 result!241528) (=> t!282276 result!241532) (=> t!282260 result!241516) (=> t!282268 result!241524) (=> t!282274 result!241530) (=> t!282258 result!241514) (=> t!282280 result!241536) (=> t!282264 result!241520) (=> t!282266 result!241522) (=> t!282262 result!241518) b_and!251229))))

(declare-fun e!2181288 () Bool)

(declare-fun e!2181283 () Bool)

(declare-fun tp!1087247 () Bool)

(declare-fun b!3524142 () Bool)

(assert (=> b!3524142 (= e!2181283 (and tp!1087247 (inv!50574 (tag!6114 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (inv!50578 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) e!2181288))))

(declare-fun tp!1087243 () Bool)

(declare-fun b!3524141 () Bool)

(declare-fun e!2181285 () Bool)

(assert (=> b!3524141 (= e!2181285 (and (inv!21 (value!176526 (h!42765 (t!281700 (t!281700 tokens!494))))) e!2181283 tp!1087243))))

(declare-fun e!2181287 () Bool)

(assert (=> b!3521740 (= tp!1087058 e!2181287)))

(assert (=> b!3524143 (= e!2181288 (and tp!1087245 tp!1087244))))

(declare-fun b!3524140 () Bool)

(declare-fun tp!1087246 () Bool)

(assert (=> b!3524140 (= e!2181287 (and (inv!50577 (h!42765 (t!281700 (t!281700 tokens!494)))) e!2181285 tp!1087246))))

(assert (= b!3524142 b!3524143))

(assert (= b!3524141 b!3524142))

(assert (= b!3524140 b!3524141))

(assert (= (and b!3521740 ((_ is Cons!37345) (t!281700 (t!281700 tokens!494)))) b!3524140))

(declare-fun m!3976983 () Bool)

(assert (=> b!3524142 m!3976983))

(declare-fun m!3976985 () Bool)

(assert (=> b!3524142 m!3976985))

(declare-fun m!3976987 () Bool)

(assert (=> b!3524141 m!3976987))

(declare-fun m!3976989 () Bool)

(assert (=> b!3524140 m!3976989))

(declare-fun b!3524144 () Bool)

(declare-fun e!2181289 () Bool)

(declare-fun tp!1087248 () Bool)

(assert (=> b!3524144 (= e!2181289 (and tp_is_empty!17617 tp!1087248))))

(assert (=> b!3521741 (= tp!1087055 e!2181289)))

(assert (= (and b!3521741 ((_ is Cons!37343) (originalCharacters!6190 (h!42765 (t!281700 tokens!494))))) b!3524144))

(declare-fun b!3524145 () Bool)

(declare-fun e!2181290 () Bool)

(assert (=> b!3524145 (= e!2181290 tp_is_empty!17617)))

(assert (=> b!3521763 (= tp!1087077 e!2181290)))

(declare-fun b!3524148 () Bool)

(declare-fun tp!1087251 () Bool)

(declare-fun tp!1087253 () Bool)

(assert (=> b!3524148 (= e!2181290 (and tp!1087251 tp!1087253))))

(declare-fun b!3524146 () Bool)

(declare-fun tp!1087249 () Bool)

(declare-fun tp!1087252 () Bool)

(assert (=> b!3524146 (= e!2181290 (and tp!1087249 tp!1087252))))

(declare-fun b!3524147 () Bool)

(declare-fun tp!1087250 () Bool)

(assert (=> b!3524147 (= e!2181290 tp!1087250)))

(assert (= (and b!3521763 ((_ is ElementMatch!10235) (regOne!20983 (regex!5476 (h!42764 rules!2135))))) b!3524145))

(assert (= (and b!3521763 ((_ is Concat!15941) (regOne!20983 (regex!5476 (h!42764 rules!2135))))) b!3524146))

(assert (= (and b!3521763 ((_ is Star!10235) (regOne!20983 (regex!5476 (h!42764 rules!2135))))) b!3524147))

(assert (= (and b!3521763 ((_ is Union!10235) (regOne!20983 (regex!5476 (h!42764 rules!2135))))) b!3524148))

(declare-fun b!3524149 () Bool)

(declare-fun e!2181291 () Bool)

(assert (=> b!3524149 (= e!2181291 tp_is_empty!17617)))

(assert (=> b!3521763 (= tp!1087079 e!2181291)))

(declare-fun b!3524152 () Bool)

(declare-fun tp!1087256 () Bool)

(declare-fun tp!1087258 () Bool)

(assert (=> b!3524152 (= e!2181291 (and tp!1087256 tp!1087258))))

(declare-fun b!3524150 () Bool)

(declare-fun tp!1087254 () Bool)

(declare-fun tp!1087257 () Bool)

(assert (=> b!3524150 (= e!2181291 (and tp!1087254 tp!1087257))))

(declare-fun b!3524151 () Bool)

(declare-fun tp!1087255 () Bool)

(assert (=> b!3524151 (= e!2181291 tp!1087255)))

(assert (= (and b!3521763 ((_ is ElementMatch!10235) (regTwo!20983 (regex!5476 (h!42764 rules!2135))))) b!3524149))

(assert (= (and b!3521763 ((_ is Concat!15941) (regTwo!20983 (regex!5476 (h!42764 rules!2135))))) b!3524150))

(assert (= (and b!3521763 ((_ is Star!10235) (regTwo!20983 (regex!5476 (h!42764 rules!2135))))) b!3524151))

(assert (= (and b!3521763 ((_ is Union!10235) (regTwo!20983 (regex!5476 (h!42764 rules!2135))))) b!3524152))

(declare-fun b!3524155 () Bool)

(declare-fun e!2181294 () Bool)

(assert (=> b!3524155 (= e!2181294 true)))

(declare-fun b!3524154 () Bool)

(declare-fun e!2181293 () Bool)

(assert (=> b!3524154 (= e!2181293 e!2181294)))

(declare-fun b!3524153 () Bool)

(declare-fun e!2181292 () Bool)

(assert (=> b!3524153 (= e!2181292 e!2181293)))

(assert (=> b!3521727 e!2181292))

(assert (= b!3524154 b!3524155))

(assert (= b!3524153 b!3524154))

(assert (= (and b!3521727 ((_ is Cons!37344) (t!281699 (t!281699 rules!2135)))) b!3524153))

(assert (=> b!3524155 (< (dynLambda!15904 order!20085 (toValue!7728 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135)))))) (dynLambda!15905 order!20087 lambda!122743))))

(assert (=> b!3524155 (< (dynLambda!15906 order!20089 (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135)))))) (dynLambda!15905 order!20087 lambda!122743))))

(declare-fun b!3524156 () Bool)

(declare-fun e!2181295 () Bool)

(declare-fun tp!1087259 () Bool)

(assert (=> b!3524156 (= e!2181295 (and tp_is_empty!17617 tp!1087259))))

(assert (=> b!3521764 (= tp!1087080 e!2181295)))

(assert (= (and b!3521764 ((_ is Cons!37343) (t!281698 (originalCharacters!6190 (h!42765 tokens!494))))) b!3524156))

(declare-fun b!3524157 () Bool)

(declare-fun e!2181296 () Bool)

(assert (=> b!3524157 (= e!2181296 tp_is_empty!17617)))

(assert (=> b!3521726 (= tp!1087042 e!2181296)))

(declare-fun b!3524160 () Bool)

(declare-fun tp!1087262 () Bool)

(declare-fun tp!1087264 () Bool)

(assert (=> b!3524160 (= e!2181296 (and tp!1087262 tp!1087264))))

(declare-fun b!3524158 () Bool)

(declare-fun tp!1087260 () Bool)

(declare-fun tp!1087263 () Bool)

(assert (=> b!3524158 (= e!2181296 (and tp!1087260 tp!1087263))))

(declare-fun b!3524159 () Bool)

(declare-fun tp!1087261 () Bool)

(assert (=> b!3524159 (= e!2181296 tp!1087261)))

(assert (= (and b!3521726 ((_ is ElementMatch!10235) (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))))) b!3524157))

(assert (= (and b!3521726 ((_ is Concat!15941) (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))))) b!3524158))

(assert (= (and b!3521726 ((_ is Star!10235) (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))))) b!3524159))

(assert (= (and b!3521726 ((_ is Union!10235) (regOne!20983 (regex!5476 (rule!8122 separatorToken!241))))) b!3524160))

(declare-fun b!3524161 () Bool)

(declare-fun e!2181297 () Bool)

(assert (=> b!3524161 (= e!2181297 tp_is_empty!17617)))

(assert (=> b!3521726 (= tp!1087044 e!2181297)))

(declare-fun b!3524164 () Bool)

(declare-fun tp!1087267 () Bool)

(declare-fun tp!1087269 () Bool)

(assert (=> b!3524164 (= e!2181297 (and tp!1087267 tp!1087269))))

(declare-fun b!3524162 () Bool)

(declare-fun tp!1087265 () Bool)

(declare-fun tp!1087268 () Bool)

(assert (=> b!3524162 (= e!2181297 (and tp!1087265 tp!1087268))))

(declare-fun b!3524163 () Bool)

(declare-fun tp!1087266 () Bool)

(assert (=> b!3524163 (= e!2181297 tp!1087266)))

(assert (= (and b!3521726 ((_ is ElementMatch!10235) (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))))) b!3524161))

(assert (= (and b!3521726 ((_ is Concat!15941) (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))))) b!3524162))

(assert (= (and b!3521726 ((_ is Star!10235) (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))))) b!3524163))

(assert (= (and b!3521726 ((_ is Union!10235) (regTwo!20983 (regex!5476 (rule!8122 separatorToken!241))))) b!3524164))

(declare-fun b!3524165 () Bool)

(declare-fun e!2181298 () Bool)

(assert (=> b!3524165 (= e!2181298 tp_is_empty!17617)))

(assert (=> b!3521724 (= tp!1087040 e!2181298)))

(declare-fun b!3524168 () Bool)

(declare-fun tp!1087272 () Bool)

(declare-fun tp!1087274 () Bool)

(assert (=> b!3524168 (= e!2181298 (and tp!1087272 tp!1087274))))

(declare-fun b!3524166 () Bool)

(declare-fun tp!1087270 () Bool)

(declare-fun tp!1087273 () Bool)

(assert (=> b!3524166 (= e!2181298 (and tp!1087270 tp!1087273))))

(declare-fun b!3524167 () Bool)

(declare-fun tp!1087271 () Bool)

(assert (=> b!3524167 (= e!2181298 tp!1087271)))

(assert (= (and b!3521724 ((_ is ElementMatch!10235) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241))))) b!3524165))

(assert (= (and b!3521724 ((_ is Concat!15941) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241))))) b!3524166))

(assert (= (and b!3521724 ((_ is Star!10235) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241))))) b!3524167))

(assert (= (and b!3521724 ((_ is Union!10235) (regOne!20982 (regex!5476 (rule!8122 separatorToken!241))))) b!3524168))

(declare-fun b!3524169 () Bool)

(declare-fun e!2181299 () Bool)

(assert (=> b!3524169 (= e!2181299 tp_is_empty!17617)))

(assert (=> b!3521724 (= tp!1087043 e!2181299)))

(declare-fun b!3524172 () Bool)

(declare-fun tp!1087277 () Bool)

(declare-fun tp!1087279 () Bool)

(assert (=> b!3524172 (= e!2181299 (and tp!1087277 tp!1087279))))

(declare-fun b!3524170 () Bool)

(declare-fun tp!1087275 () Bool)

(declare-fun tp!1087278 () Bool)

(assert (=> b!3524170 (= e!2181299 (and tp!1087275 tp!1087278))))

(declare-fun b!3524171 () Bool)

(declare-fun tp!1087276 () Bool)

(assert (=> b!3524171 (= e!2181299 tp!1087276)))

(assert (= (and b!3521724 ((_ is ElementMatch!10235) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241))))) b!3524169))

(assert (= (and b!3521724 ((_ is Concat!15941) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241))))) b!3524170))

(assert (= (and b!3521724 ((_ is Star!10235) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241))))) b!3524171))

(assert (= (and b!3521724 ((_ is Union!10235) (regTwo!20982 (regex!5476 (rule!8122 separatorToken!241))))) b!3524172))

(declare-fun b!3524173 () Bool)

(declare-fun e!2181300 () Bool)

(assert (=> b!3524173 (= e!2181300 tp_is_empty!17617)))

(assert (=> b!3521725 (= tp!1087041 e!2181300)))

(declare-fun b!3524176 () Bool)

(declare-fun tp!1087282 () Bool)

(declare-fun tp!1087284 () Bool)

(assert (=> b!3524176 (= e!2181300 (and tp!1087282 tp!1087284))))

(declare-fun b!3524174 () Bool)

(declare-fun tp!1087280 () Bool)

(declare-fun tp!1087283 () Bool)

(assert (=> b!3524174 (= e!2181300 (and tp!1087280 tp!1087283))))

(declare-fun b!3524175 () Bool)

(declare-fun tp!1087281 () Bool)

(assert (=> b!3524175 (= e!2181300 tp!1087281)))

(assert (= (and b!3521725 ((_ is ElementMatch!10235) (reg!10564 (regex!5476 (rule!8122 separatorToken!241))))) b!3524173))

(assert (= (and b!3521725 ((_ is Concat!15941) (reg!10564 (regex!5476 (rule!8122 separatorToken!241))))) b!3524174))

(assert (= (and b!3521725 ((_ is Star!10235) (reg!10564 (regex!5476 (rule!8122 separatorToken!241))))) b!3524175))

(assert (= (and b!3521725 ((_ is Union!10235) (reg!10564 (regex!5476 (rule!8122 separatorToken!241))))) b!3524176))

(declare-fun tp!1087293 () Bool)

(declare-fun tp!1087291 () Bool)

(declare-fun b!3524185 () Bool)

(declare-fun e!2181305 () Bool)

(assert (=> b!3524185 (= e!2181305 (and (inv!50581 (left!29167 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494))))))) tp!1087293 (inv!50581 (right!29497 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494))))))) tp!1087291))))

(declare-fun b!3524187 () Bool)

(declare-fun e!2181306 () Bool)

(declare-fun tp!1087292 () Bool)

(assert (=> b!3524187 (= e!2181306 tp!1087292)))

(declare-fun b!3524186 () Bool)

(declare-fun inv!50588 (IArray!22659) Bool)

(assert (=> b!3524186 (= e!2181305 (and (inv!50588 (xs!14517 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494))))))) e!2181306))))

(assert (=> b!3521672 (= tp!1087024 (and (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494)))))) e!2181305))))

(assert (= (and b!3521672 ((_ is Node!11327) (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494))))))) b!3524185))

(assert (= b!3524186 b!3524187))

(assert (= (and b!3521672 ((_ is Leaf!17676) (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (value!176526 (h!42765 (t!281700 tokens!494))))))) b!3524186))

(declare-fun m!3976991 () Bool)

(assert (=> b!3524185 m!3976991))

(declare-fun m!3976993 () Bool)

(assert (=> b!3524185 m!3976993))

(declare-fun m!3976995 () Bool)

(assert (=> b!3524186 m!3976995))

(assert (=> b!3521672 m!3972249))

(declare-fun tp!1087296 () Bool)

(declare-fun e!2181307 () Bool)

(declare-fun b!3524188 () Bool)

(declare-fun tp!1087294 () Bool)

(assert (=> b!3524188 (= e!2181307 (and (inv!50581 (left!29167 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494)))))) tp!1087296 (inv!50581 (right!29497 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494)))))) tp!1087294))))

(declare-fun b!3524190 () Bool)

(declare-fun e!2181308 () Bool)

(declare-fun tp!1087295 () Bool)

(assert (=> b!3524190 (= e!2181308 tp!1087295)))

(declare-fun b!3524189 () Bool)

(assert (=> b!3524189 (= e!2181307 (and (inv!50588 (xs!14517 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494)))))) e!2181308))))

(assert (=> b!3520964 (= tp!1086964 (and (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494))))) e!2181307))))

(assert (= (and b!3520964 ((_ is Node!11327) (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494)))))) b!3524188))

(assert (= b!3524189 b!3524190))

(assert (= (and b!3520964 ((_ is Leaf!17676) (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (value!176526 (h!42765 tokens!494)))))) b!3524189))

(declare-fun m!3976997 () Bool)

(assert (=> b!3524188 m!3976997))

(declare-fun m!3976999 () Bool)

(assert (=> b!3524188 m!3976999))

(declare-fun m!3977001 () Bool)

(assert (=> b!3524189 m!3977001))

(assert (=> b!3520964 m!3971011))

(declare-fun b!3524191 () Bool)

(declare-fun e!2181309 () Bool)

(assert (=> b!3524191 (= e!2181309 tp_is_empty!17617)))

(assert (=> b!3521762 (= tp!1087076 e!2181309)))

(declare-fun b!3524194 () Bool)

(declare-fun tp!1087299 () Bool)

(declare-fun tp!1087301 () Bool)

(assert (=> b!3524194 (= e!2181309 (and tp!1087299 tp!1087301))))

(declare-fun b!3524192 () Bool)

(declare-fun tp!1087297 () Bool)

(declare-fun tp!1087300 () Bool)

(assert (=> b!3524192 (= e!2181309 (and tp!1087297 tp!1087300))))

(declare-fun b!3524193 () Bool)

(declare-fun tp!1087298 () Bool)

(assert (=> b!3524193 (= e!2181309 tp!1087298)))

(assert (= (and b!3521762 ((_ is ElementMatch!10235) (reg!10564 (regex!5476 (h!42764 rules!2135))))) b!3524191))

(assert (= (and b!3521762 ((_ is Concat!15941) (reg!10564 (regex!5476 (h!42764 rules!2135))))) b!3524192))

(assert (= (and b!3521762 ((_ is Star!10235) (reg!10564 (regex!5476 (h!42764 rules!2135))))) b!3524193))

(assert (= (and b!3521762 ((_ is Union!10235) (reg!10564 (regex!5476 (h!42764 rules!2135))))) b!3524194))

(declare-fun b!3524195 () Bool)

(declare-fun e!2181310 () Bool)

(assert (=> b!3524195 (= e!2181310 tp_is_empty!17617)))

(assert (=> b!3521761 (= tp!1087075 e!2181310)))

(declare-fun b!3524198 () Bool)

(declare-fun tp!1087304 () Bool)

(declare-fun tp!1087306 () Bool)

(assert (=> b!3524198 (= e!2181310 (and tp!1087304 tp!1087306))))

(declare-fun b!3524196 () Bool)

(declare-fun tp!1087302 () Bool)

(declare-fun tp!1087305 () Bool)

(assert (=> b!3524196 (= e!2181310 (and tp!1087302 tp!1087305))))

(declare-fun b!3524197 () Bool)

(declare-fun tp!1087303 () Bool)

(assert (=> b!3524197 (= e!2181310 tp!1087303)))

(assert (= (and b!3521761 ((_ is ElementMatch!10235) (regOne!20982 (regex!5476 (h!42764 rules!2135))))) b!3524195))

(assert (= (and b!3521761 ((_ is Concat!15941) (regOne!20982 (regex!5476 (h!42764 rules!2135))))) b!3524196))

(assert (= (and b!3521761 ((_ is Star!10235) (regOne!20982 (regex!5476 (h!42764 rules!2135))))) b!3524197))

(assert (= (and b!3521761 ((_ is Union!10235) (regOne!20982 (regex!5476 (h!42764 rules!2135))))) b!3524198))

(declare-fun b!3524199 () Bool)

(declare-fun e!2181311 () Bool)

(assert (=> b!3524199 (= e!2181311 tp_is_empty!17617)))

(assert (=> b!3521761 (= tp!1087078 e!2181311)))

(declare-fun b!3524202 () Bool)

(declare-fun tp!1087309 () Bool)

(declare-fun tp!1087311 () Bool)

(assert (=> b!3524202 (= e!2181311 (and tp!1087309 tp!1087311))))

(declare-fun b!3524200 () Bool)

(declare-fun tp!1087307 () Bool)

(declare-fun tp!1087310 () Bool)

(assert (=> b!3524200 (= e!2181311 (and tp!1087307 tp!1087310))))

(declare-fun b!3524201 () Bool)

(declare-fun tp!1087308 () Bool)

(assert (=> b!3524201 (= e!2181311 tp!1087308)))

(assert (= (and b!3521761 ((_ is ElementMatch!10235) (regTwo!20982 (regex!5476 (h!42764 rules!2135))))) b!3524199))

(assert (= (and b!3521761 ((_ is Concat!15941) (regTwo!20982 (regex!5476 (h!42764 rules!2135))))) b!3524200))

(assert (= (and b!3521761 ((_ is Star!10235) (regTwo!20982 (regex!5476 (h!42764 rules!2135))))) b!3524201))

(assert (= (and b!3521761 ((_ is Union!10235) (regTwo!20982 (regex!5476 (h!42764 rules!2135))))) b!3524202))

(declare-fun b!3524205 () Bool)

(declare-fun b_free!90769 () Bool)

(declare-fun b_next!91473 () Bool)

(assert (=> b!3524205 (= b_free!90769 (not b_next!91473))))

(declare-fun tb!197165 () Bool)

(declare-fun t!282284 () Bool)

(assert (=> (and b!3524205 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))) t!282284) tb!197165))

(declare-fun result!241542 () Bool)

(assert (= result!241542 result!241212))

(assert (=> d!1027921 t!282284))

(declare-fun tb!197167 () Bool)

(declare-fun t!282286 () Bool)

(assert (=> (and b!3524205 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217)))))) t!282286) tb!197167))

(declare-fun result!241544 () Bool)

(assert (= result!241544 result!241202))

(assert (=> d!1027911 t!282286))

(declare-fun t!282288 () Bool)

(declare-fun tb!197169 () Bool)

(assert (=> (and b!3524205 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!282288) tb!197169))

(declare-fun result!241546 () Bool)

(assert (= result!241546 result!241246))

(assert (=> d!1028003 t!282288))

(assert (=> d!1028041 t!282288))

(declare-fun tb!197171 () Bool)

(declare-fun t!282290 () Bool)

(assert (=> (and b!3524205 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282290) tb!197171))

(declare-fun result!241548 () Bool)

(assert (= result!241548 result!241488))

(assert (=> d!1028891 t!282290))

(assert (=> d!1028887 t!282290))

(declare-fun t!282292 () Bool)

(declare-fun tb!197173 () Bool)

(assert (=> (and b!3524205 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toValue!7728 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279)))))) t!282292) tb!197173))

(declare-fun result!241550 () Bool)

(assert (= result!241550 result!241418))

(assert (=> d!1028399 t!282292))

(declare-fun t!282294 () Bool)

(declare-fun tb!197175 () Bool)

(assert (=> (and b!3524205 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282294) tb!197175))

(declare-fun result!241552 () Bool)

(assert (= result!241552 result!240984))

(assert (=> d!1027019 t!282294))

(declare-fun t!282296 () Bool)

(declare-fun tb!197177 () Bool)

(assert (=> (and b!3524205 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!282296) tb!197177))

(declare-fun result!241554 () Bool)

(assert (= result!241554 result!240992))

(assert (=> d!1027029 t!282296))

(declare-fun t!282298 () Bool)

(declare-fun tb!197179 () Bool)

(assert (=> (and b!3524205 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!282298) tb!197179))

(declare-fun result!241556 () Bool)

(assert (= result!241556 result!241468))

(assert (=> d!1028873 t!282298))

(declare-fun tp!1087314 () Bool)

(declare-fun b_and!251231 () Bool)

(assert (=> b!3524205 (= tp!1087314 (and (=> t!282294 result!241552) (=> t!282288 result!241546) (=> t!282296 result!241554) (=> t!282284 result!241542) (=> t!282290 result!241548) (=> t!282286 result!241544) (=> t!282298 result!241556) (=> t!282292 result!241550) b_and!251231))))

(declare-fun b_free!90771 () Bool)

(declare-fun b_next!91475 () Bool)

(assert (=> b!3524205 (= b_free!90771 (not b_next!91475))))

(declare-fun t!282300 () Bool)

(declare-fun tb!197181 () Bool)

(assert (=> (and b!3524205 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282300) tb!197181))

(declare-fun result!241558 () Bool)

(assert (= result!241558 result!241058))

(assert (=> b!3524021 t!282300))

(declare-fun tb!197183 () Bool)

(declare-fun t!282302 () Bool)

(assert (=> (and b!3524205 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202279)))))) t!282302) tb!197183))

(declare-fun result!241560 () Bool)

(assert (= result!241560 result!241438))

(assert (=> d!1028551 t!282302))

(declare-fun t!282304 () Bool)

(declare-fun tb!197185 () Bool)

(assert (=> (and b!3524205 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202217)))))) t!282304) tb!197185))

(declare-fun result!241562 () Bool)

(assert (= result!241562 result!241302))

(assert (=> d!1028193 t!282304))

(declare-fun tb!197187 () Bool)

(declare-fun t!282306 () Bool)

(assert (=> (and b!3524205 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!282306) tb!197187))

(declare-fun result!241564 () Bool)

(assert (= result!241564 result!240976))

(assert (=> b!3520958 t!282306))

(assert (=> d!1027293 t!282306))

(declare-fun t!282308 () Bool)

(declare-fun tb!197189 () Bool)

(assert (=> (and b!3524205 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494))))))) t!282308) tb!197189))

(declare-fun result!241566 () Bool)

(assert (= result!241566 result!241428))

(assert (=> d!1028403 t!282308))

(declare-fun t!282310 () Bool)

(declare-fun tb!197191 () Bool)

(assert (=> (and b!3524205 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241)))) t!282310) tb!197191))

(declare-fun result!241568 () Bool)

(assert (= result!241568 result!241052))

(assert (=> b!3521700 t!282310))

(declare-fun t!282312 () Bool)

(declare-fun tb!197193 () Bool)

(assert (=> (and b!3524205 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201920 0))))) t!282312) tb!197193))

(declare-fun result!241570 () Bool)

(assert (= result!241570 result!241282))

(assert (=> d!1028143 t!282312))

(declare-fun tb!197195 () Bool)

(declare-fun t!282314 () Bool)

(assert (=> (and b!3524205 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201906 0))))) t!282314) tb!197195))

(declare-fun result!241572 () Bool)

(assert (= result!241572 result!241448))

(assert (=> d!1028645 t!282314))

(assert (=> d!1027313 t!282310))

(declare-fun tb!197197 () Bool)

(declare-fun t!282316 () Bool)

(assert (=> (and b!3524205 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 (_1!21723 (get!11991 lt!1202070)))))) t!282316) tb!197197))

(declare-fun result!241574 () Bool)

(assert (= result!241574 result!241292))

(assert (=> d!1028187 t!282316))

(declare-fun tb!197199 () Bool)

(declare-fun t!282318 () Bool)

(assert (=> (and b!3524205 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (Cons!37345 (h!42765 tokens!494) Nil!37345)))))) t!282318) tb!197199))

(declare-fun result!241576 () Bool)

(assert (= result!241576 result!241458))

(assert (=> d!1028719 t!282318))

(declare-fun t!282320 () Bool)

(declare-fun tb!197201 () Bool)

(assert (=> (and b!3524205 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494)))))) t!282320) tb!197201))

(declare-fun result!241578 () Bool)

(assert (= result!241578 result!241478))

(assert (=> d!1028887 t!282320))

(assert (=> d!1027317 t!282300))

(declare-fun tb!197203 () Bool)

(declare-fun t!282322 () Bool)

(assert (=> (and b!3524205 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 (apply!8896 lt!1201912 0))))) t!282322) tb!197203))

(declare-fun result!241580 () Bool)

(assert (= result!241580 result!241192))

(assert (=> d!1027891 t!282322))

(declare-fun tb!197205 () Bool)

(declare-fun t!282324 () Bool)

(assert (=> (and b!3524205 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494))))) t!282324) tb!197205))

(declare-fun result!241582 () Bool)

(assert (= result!241582 result!241232))

(assert (=> d!1028003 t!282324))

(declare-fun b_and!251233 () Bool)

(declare-fun tp!1087313 () Bool)

(assert (=> b!3524205 (= tp!1087313 (and (=> t!282306 result!241564) (=> t!282314 result!241572) (=> t!282322 result!241580) (=> t!282312 result!241570) (=> t!282320 result!241578) (=> t!282324 result!241582) (=> t!282304 result!241562) (=> t!282302 result!241560) (=> t!282310 result!241568) (=> t!282308 result!241566) (=> t!282300 result!241558) (=> t!282318 result!241576) (=> t!282316 result!241574) b_and!251233))))

(declare-fun e!2181315 () Bool)

(assert (=> b!3524205 (= e!2181315 (and tp!1087314 tp!1087313))))

(declare-fun tp!1087312 () Bool)

(declare-fun e!2181314 () Bool)

(declare-fun b!3524204 () Bool)

(assert (=> b!3524204 (= e!2181314 (and tp!1087312 (inv!50574 (tag!6114 (h!42764 (t!281699 (t!281699 rules!2135))))) (inv!50578 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) e!2181315))))

(declare-fun b!3524203 () Bool)

(declare-fun e!2181313 () Bool)

(declare-fun tp!1087315 () Bool)

(assert (=> b!3524203 (= e!2181313 (and e!2181314 tp!1087315))))

(assert (=> b!3521752 (= tp!1087071 e!2181313)))

(assert (= b!3524204 b!3524205))

(assert (= b!3524203 b!3524204))

(assert (= (and b!3521752 ((_ is Cons!37344) (t!281699 (t!281699 rules!2135)))) b!3524203))

(declare-fun m!3977003 () Bool)

(assert (=> b!3524204 m!3977003))

(declare-fun m!3977005 () Bool)

(assert (=> b!3524204 m!3977005))

(declare-fun b!3524206 () Bool)

(declare-fun e!2181316 () Bool)

(declare-fun tp!1087316 () Bool)

(assert (=> b!3524206 (= e!2181316 (and tp_is_empty!17617 tp!1087316))))

(assert (=> b!3521759 (= tp!1087074 e!2181316)))

(assert (= (and b!3521759 ((_ is Cons!37343) (t!281698 (originalCharacters!6190 separatorToken!241)))) b!3524206))

(declare-fun b!3524209 () Bool)

(declare-fun e!2181319 () Bool)

(assert (=> b!3524209 (= e!2181319 true)))

(declare-fun b!3524208 () Bool)

(declare-fun e!2181318 () Bool)

(assert (=> b!3524208 (= e!2181318 e!2181319)))

(declare-fun b!3524207 () Bool)

(declare-fun e!2181317 () Bool)

(assert (=> b!3524207 (= e!2181317 e!2181318)))

(assert (=> b!3521631 e!2181317))

(assert (= b!3524208 b!3524209))

(assert (= b!3524207 b!3524208))

(assert (= (and b!3521631 ((_ is Cons!37344) (t!281699 rules!2135))) b!3524207))

(assert (=> b!3524209 (< (dynLambda!15904 order!20085 (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135))))) (dynLambda!15905 order!20087 lambda!122753))))

(assert (=> b!3524209 (< (dynLambda!15906 order!20089 (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135))))) (dynLambda!15905 order!20087 lambda!122753))))

(declare-fun e!2181320 () Bool)

(declare-fun tp!1087317 () Bool)

(declare-fun tp!1087319 () Bool)

(declare-fun b!3524210 () Bool)

(assert (=> b!3524210 (= e!2181320 (and (inv!50581 (left!29167 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241))))) tp!1087319 (inv!50581 (right!29497 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241))))) tp!1087317))))

(declare-fun b!3524212 () Bool)

(declare-fun e!2181321 () Bool)

(declare-fun tp!1087318 () Bool)

(assert (=> b!3524212 (= e!2181321 tp!1087318)))

(declare-fun b!3524211 () Bool)

(assert (=> b!3524211 (= e!2181320 (and (inv!50588 (xs!14517 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241))))) e!2181321))))

(assert (=> b!3521671 (= tp!1087023 (and (inv!50581 (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241)))) e!2181320))))

(assert (= (and b!3521671 ((_ is Node!11327) (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241))))) b!3524210))

(assert (= b!3524211 b!3524212))

(assert (= (and b!3521671 ((_ is Leaf!17676) (c!606753 (dynLambda!15910 (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (value!176526 separatorToken!241))))) b!3524211))

(declare-fun m!3977007 () Bool)

(assert (=> b!3524210 m!3977007))

(declare-fun m!3977009 () Bool)

(assert (=> b!3524210 m!3977009))

(declare-fun m!3977011 () Bool)

(assert (=> b!3524211 m!3977011))

(assert (=> b!3521671 m!3972239))

(declare-fun b!3524213 () Bool)

(declare-fun e!2181322 () Bool)

(assert (=> b!3524213 (= e!2181322 tp_is_empty!17617)))

(assert (=> b!3521753 (= tp!1087068 e!2181322)))

(declare-fun b!3524216 () Bool)

(declare-fun tp!1087322 () Bool)

(declare-fun tp!1087324 () Bool)

(assert (=> b!3524216 (= e!2181322 (and tp!1087322 tp!1087324))))

(declare-fun b!3524214 () Bool)

(declare-fun tp!1087320 () Bool)

(declare-fun tp!1087323 () Bool)

(assert (=> b!3524214 (= e!2181322 (and tp!1087320 tp!1087323))))

(declare-fun b!3524215 () Bool)

(declare-fun tp!1087321 () Bool)

(assert (=> b!3524215 (= e!2181322 tp!1087321)))

(assert (= (and b!3521753 ((_ is ElementMatch!10235) (regex!5476 (h!42764 (t!281699 rules!2135))))) b!3524213))

(assert (= (and b!3521753 ((_ is Concat!15941) (regex!5476 (h!42764 (t!281699 rules!2135))))) b!3524214))

(assert (= (and b!3521753 ((_ is Star!10235) (regex!5476 (h!42764 (t!281699 rules!2135))))) b!3524215))

(assert (= (and b!3521753 ((_ is Union!10235) (regex!5476 (h!42764 (t!281699 rules!2135))))) b!3524216))

(declare-fun b_lambda!102965 () Bool)

(assert (= b_lambda!102961 (or (and b!3524143 b_free!90765 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3524205 b_free!90769 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3520728 b_free!90729 (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3520698 b_free!90737 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3521743 b_free!90749) (and b!3521754 b_free!90753 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3520694 b_free!90733 (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) b_lambda!102965)))

(declare-fun b_lambda!102967 () Bool)

(assert (= b_lambda!102953 (or b!3520722 b_lambda!102967)))

(assert (=> d!1028805 d!1027343))

(declare-fun b_lambda!102969 () Bool)

(assert (= b_lambda!102877 (or (and b!3524143 b_free!90765 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3521754 b_free!90753 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3520698 b_free!90737) (and b!3520694 b_free!90733 (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3520728 b_free!90729 (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3521743 b_free!90749 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3524205 b_free!90769 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) b_lambda!102969)))

(declare-fun b_lambda!102971 () Bool)

(assert (= b_lambda!102941 (or b!3520730 b_lambda!102971)))

(assert (=> d!1028417 d!1027341))

(declare-fun b_lambda!102973 () Bool)

(assert (= b_lambda!102951 (or d!1027283 b_lambda!102973)))

(declare-fun bs!565624 () Bool)

(declare-fun d!1028899 () Bool)

(assert (= bs!565624 (and d!1028899 d!1027283)))

(assert (=> bs!565624 (= (dynLambda!15912 lambda!122753 (h!42765 (list!13662 (seqFromList!4005 tokens!494)))) (rulesProduceIndividualToken!2557 thiss!18206 rules!2135 (h!42765 (list!13662 (seqFromList!4005 tokens!494)))))))

(assert (=> bs!565624 m!3975621))

(assert (=> b!3523884 d!1028899))

(declare-fun b_lambda!102975 () Bool)

(assert (= b_lambda!102955 (or (and b!3524143 b_free!90767 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3520694 b_free!90735 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3521743 b_free!90751) (and b!3524205 b_free!90771 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3521754 b_free!90755 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3520698 b_free!90739 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3520728 b_free!90731 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) b_lambda!102975)))

(declare-fun b_lambda!102977 () Bool)

(assert (= b_lambda!102963 (or (and b!3524143 b_free!90765 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3524205 b_free!90769 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3520728 b_free!90729 (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3520698 b_free!90737 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3521743 b_free!90749) (and b!3521754 b_free!90753 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3520694 b_free!90733 (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) b_lambda!102977)))

(declare-fun b_lambda!102979 () Bool)

(assert (= b_lambda!102959 (or (and b!3524143 b_free!90767 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3520694 b_free!90735 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3521743 b_free!90751) (and b!3524205 b_free!90771 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3521754 b_free!90755 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3520698 b_free!90739 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) (and b!3520728 b_free!90731 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))))) b_lambda!102979)))

(declare-fun b_lambda!102981 () Bool)

(assert (= b_lambda!102939 (or (and b!3520728 b_free!90731 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))))) (and b!3520694 b_free!90735 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))))) (and b!3524143 b_free!90767) (and b!3520698 b_free!90739 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))))) (and b!3521743 b_free!90751 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))))) (and b!3521754 b_free!90755 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))))) (and b!3524205 b_free!90771 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))))) b_lambda!102981)))

(declare-fun b_lambda!102983 () Bool)

(assert (= b_lambda!102957 (or (and b!3524143 b_free!90765 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3521754 b_free!90753 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3520698 b_free!90737) (and b!3520694 b_free!90733 (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3520728 b_free!90729 (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3521743 b_free!90749 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3524205 b_free!90769 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) b_lambda!102983)))

(declare-fun b_lambda!102985 () Bool)

(assert (= b_lambda!102873 (or (and b!3520694 b_free!90735 (= (toChars!7587 (transformation!5476 (h!42764 rules!2135))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3524143 b_free!90767 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3520698 b_free!90739) (and b!3524205 b_free!90771 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3521743 b_free!90751 (= (toChars!7587 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3521754 b_free!90755 (= (toChars!7587 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3520728 b_free!90731 (= (toChars!7587 (transformation!5476 (rule!8122 separatorToken!241))) (toChars!7587 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) b_lambda!102985)))

(declare-fun b_lambda!102987 () Bool)

(assert (= b_lambda!102935 (or b!3520722 b_lambda!102987)))

(assert (=> d!1028383 d!1027345))

(declare-fun b_lambda!102989 () Bool)

(assert (= b_lambda!102863 (or b!3520722 b_lambda!102989)))

(assert (=> b!3522605 d!1027345))

(declare-fun b_lambda!102991 () Bool)

(assert (= b_lambda!102879 (or (and b!3524143 b_free!90765 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 (t!281700 tokens!494)))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3521754 b_free!90753 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 rules!2135)))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3520698 b_free!90737) (and b!3520694 b_free!90733 (= (toValue!7728 (transformation!5476 (h!42764 rules!2135))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3520728 b_free!90729 (= (toValue!7728 (transformation!5476 (rule!8122 separatorToken!241))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3521743 b_free!90749 (= (toValue!7728 (transformation!5476 (rule!8122 (h!42765 (t!281700 tokens!494))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) (and b!3524205 b_free!90769 (= (toValue!7728 (transformation!5476 (h!42764 (t!281699 (t!281699 rules!2135))))) (toValue!7728 (transformation!5476 (rule!8122 (h!42765 tokens!494)))))) b_lambda!102991)))

(declare-fun b_lambda!102993 () Bool)

(assert (= b_lambda!102943 (or b!3520730 b_lambda!102993)))

(declare-fun bs!565625 () Bool)

(declare-fun d!1028901 () Bool)

(assert (= bs!565625 (and d!1028901 b!3520730)))

(assert (=> bs!565625 (= (dynLambda!15912 lambda!122743 (h!42765 tokens!494)) (rulesProduceIndividualToken!2557 thiss!18206 rules!2135 (h!42765 tokens!494)))))

(assert (=> bs!565625 m!3970703))

(assert (=> b!3523468 d!1028901))

(check-sat (not bm!254487) (not b!3523878) (not b!3522996) (not b!3523738) (not d!1028495) (not b!3523553) (not b!3523675) (not b!3523575) (not b!3523679) (not d!1028017) (not b_lambda!102987) (not b!3524204) (not d!1028771) (not b!3523950) (not d!1028641) (not b!3523452) (not b!3523764) (not bm!254657) (not bm!254631) (not b!3523818) (not d!1028479) (not b!3524105) (not b!3524130) (not b!3522373) (not d!1028629) (not d!1028543) (not d!1027891) (not b!3523608) (not b_next!91439) (not b_next!91473) (not d!1027893) (not d!1028655) (not b_lambda!102827) (not d!1028799) (not b!3523893) (not b!3522956) (not b_lambda!102885) (not b!3523551) (not b!3524187) (not d!1028087) (not d!1028833) (not bm!254574) (not b!3524216) (not b!3524076) (not b!3522536) (not b_lambda!102937) (not b!3523008) (not d!1028115) (not b!3523914) b_and!251229 (not b!3522582) (not b!3523653) (not d!1028731) (not d!1028003) (not b!3524138) (not b!3524131) (not b!3523853) (not b!3523929) (not b!3523651) (not b_lambda!102815) b_and!251205 (not b!3524082) (not b!3524102) (not b!3523926) (not d!1028471) (not d!1028497) (not b!3523714) (not b!3523849) (not d!1028869) (not d!1028119) (not d!1028723) b_and!251219 (not b!3522376) (not d!1028389) (not d!1027771) (not d!1028493) (not tb!196909) (not b!3523655) (not d!1028421) (not b!3524215) (not d!1028539) (not b!3524101) (not d!1027865) (not b!3524193) (not d!1028191) (not b!3523856) (not b!3523956) (not b!3523996) (not d!1028135) (not bm!254500) (not b!3523683) (not b!3523626) (not b!3523710) (not b!3524110) (not bm!254667) (not d!1028549) (not b!3524107) (not bm!254628) (not d!1028545) (not d!1028449) (not d!1028791) (not b!3522933) (not b!3522991) (not b!3524171) (not b!3523890) (not d!1028141) (not b!3524175) (not bm!254545) (not b!3522937) (not b!3522912) (not bm!254570) (not d!1028769) (not b!3523743) (not b!3524203) (not b!3524001) (not b_lambda!102889) (not bm!254641) (not d!1028411) (not d!1028623) (not d!1028551) (not b_lambda!102967) (not d!1028885) (not b!3524012) (not d!1028597) (not b!3523475) (not b!3523833) (not d!1028393) (not b!3523020) (not b_lambda!102817) (not d!1028859) (not b!3523983) (not b!3523424) (not d!1028729) (not b!3524135) (not b_next!91453) (not b!3523661) (not b!3522922) (not b!3523885) (not bm!254662) (not bm!254505) (not b!3522409) (not d!1028439) (not b!3524094) (not b!3524170) (not bm!254506) (not b!3524167) (not b!3523826) (not b_lambda!102823) (not bm!254635) (not b!3522581) (not d!1028089) (not bm!254632) (not d!1028841) (not b!3524163) (not d!1028143) (not b!3522410) (not b!3523993) (not d!1028395) (not d!1028181) (not bm!254568) (not tb!197103) (not d!1028773) (not d!1028845) (not bm!254645) (not b!3523766) (not d!1028695) (not b!3523489) (not b!3523773) (not b!3523447) (not d!1028813) (not d!1028153) (not bm!254607) (not b!3523478) (not d!1028843) (not b!3523894) (not d!1028605) (not b!3523792) (not b!3523549) (not bm!254547) (not b!3523778) (not b!3523410) (not b!3523543) (not bm!254625) (not d!1028619) (not d!1028675) (not d!1028157) (not b!3523015) (not d!1028177) (not b!3523974) (not b_lambda!102983) (not d!1027895) (not d!1028621) (not b!3523827) (not d!1028013) (not b!3523623) (not b!3523964) (not b!3523750) (not b!3523915) (not b!3523824) (not d!1027875) (not b!3523556) (not b!3523839) (not bm!254671) (not b_next!91443) (not b!3523660) (not b!3523782) (not b!3523692) (not b!3523026) (not bm!254577) (not b!3524059) (not b!3524005) (not tb!197053) (not b!3524096) (not d!1028537) (not b!3524159) (not b!3524104) (not d!1028749) (not b!3521671) (not b!3522610) (not b!3523771) (not b_next!91469) (not b!3524188) (not b!3523793) (not b!3523630) (not bm!254659) (not b!3522527) (not d!1028527) (not bs!565624) (not d!1028593) (not d!1028699) (not d!1028553) (not b_next!91441) (not b!3522502) (not b_lambda!102861) (not b!3523412) (not b!3523534) (not bm!254626) (not b!3522939) (not b!3523584) (not b!3523981) (not d!1027885) (not b!3524153) (not b!3524121) (not d!1028167) (not b!3523944) (not b!3522967) (not b!3523933) (not b!3524112) (not d!1028707) (not b!3523902) (not b!3523694) (not b!3523570) (not b!3524211) (not tb!197043) (not b!3523774) (not d!1028469) (not b!3523784) (not d!1028727) (not b_next!91435) (not b!3524190) (not b!3523592) (not b!3523882) (not bm!254640) (not d!1028137) (not d!1027775) (not b!3524197) (not d!1028465) (not bm!254617) (not d!1028445) (not b!3524142) (not b!3522558) (not b!3524186) (not bm!254650) (not b!3524168) tp_is_empty!17617 (not d!1028747) (not b!3523433) (not d!1028159) (not b!3524189) (not d!1028503) (not b!3524080) (not d!1028563) (not b!3522526) (not b!3524160) (not b!3524010) (not d!1028853) (not b!3523866) (not d!1028405) (not b!3523843) (not b!3523555) (not d!1028611) (not d!1028055) (not tb!196839) (not b!3523446) (not b!3524056) (not b!3524119) (not bm!254562) (not b!3523695) (not d!1027873) (not b!3524074) (not b!3523445) (not bm!254660) (not b!3523946) (not d!1028669) b_and!251227 (not b!3524125) (not b!3524141) (not b!3523841) (not b!3523573) (not b!3523483) (not d!1028679) (not b!3523685) (not b!3523550) (not b!3522976) (not d!1028609) (not b!3522986) (not d!1028139) (not b!3523783) (not b_lambda!102975) (not b!3523451) (not d!1027809) (not b!3523032) (not b!3524137) (not d!1028867) (not d!1028567) b_and!251201 (not b!3523030) (not b!3524008) b_and!251223 (not b!3523720) (not b!3523019) (not tb!197063) (not d!1028107) (not b_lambda!102833) (not b!3522592) (not b!3523903) (not b!3523467) b_and!251221 (not b!3523998) (not b!3523678) (not d!1028485) (not bm!254560) (not b!3523640) (not b!3523721) (not b!3523862) (not d!1028665) (not b!3523517) (not d!1028797) (not d!1028591) (not tb!196873) (not d!1028165) (not b!3523957) (not b!3523615) (not b!3523919) (not b!3522940) (not d!1027787) (not b!3524151) (not b!3523025) (not b!3522988) (not b!3523441) b_and!251197 (not b!3523472) (not bm!254613) (not b_lambda!102969) (not b!3523930) (not bm!254578) (not tb!197083) (not bm!254630) (not d!1028453) (not b!3524045) (not b!3522538) (not d!1028883) (not b!3522975) (not d!1027913) (not d!1028847) (not b!3524172) (not b!3523975) (not b!3523676) (not d!1027763) (not b_next!91437) (not b!3524046) (not d!1027785) (not bm!254550) (not b!3523835) (not b!3523718) (not b!3522948) (not d!1028735) (not d!1028401) (not b!3523016) (not d!1028425) (not b!3523471) (not d!1028569) (not b!3522525) (not bm!254501) (not b!3522604) (not tb!196829) (not b!3523037) (not bm!254621) (not b!3523709) (not b!3524002) (not d!1027925) (not d!1028483) (not bm!254647) (not b_lambda!102947) (not d!1028133) (not b!3524164) (not b!3523976) (not b!3523905) (not b_lambda!102887) (not d!1028663) (not b!3524016) (not b!3523707) (not bm!254639) (not b!3522816) (not b!3523937) (not b!3524196) (not b!3524118) (not b!3523639) b_and!251203 (not b!3524113) (not b!3523702) (not b!3524048) (not d!1028649) (not b!3523546) (not b!3523948) (not b!3523801) (not d!1027923) (not d!1028571) (not bm!254572) (not b!3522608) (not b_lambda!102865) (not d!1028455) (not b!3524210) (not d!1028767) (not d!1027773) (not d!1028613) (not b!3523564) (not bm!254615) (not b!3523531) (not b!3524126) (not b!3523578) (not b!3524133) (not d!1028397) (not tb!197093) (not d!1028151) (not b!3523943) (not b!3523649) (not b_lambda!102977) (not bm!254499) (not d!1028801) (not b!3523609) (not b!3522606) (not b!3524146) (not bm!254619) (not d!1027889) (not d!1028897) (not d!1027863) (not b!3523879) (not d!1028703) (not b!3523414) (not b_lambda!102819) (not b!3520964) (not b!3523488) (not d!1028463) (not b!3523545) (not b!3523455) (not d!1028671) (not b!3522997) (not d!1028751) (not b!3523909) (not d!1027757) (not d!1028541) (not b!3522984) (not b_lambda!102971) (not b!3522490) (not b!3523434) (not d!1028717) (not b!3523881) (not b!3522761) (not d!1028461) (not b!3523024) (not b!3523874) (not d!1028427) (not b!3523819) (not b!3523420) (not b!3523708) (not d!1028693) (not b!3522381) (not d!1027845) (not b!3523767) (not d!1028499) (not b!3523647) (not d!1028647) (not b_lambda!102945) (not b!3523777) (not d!1028185) (not b!3523561) (not d!1028477) (not bm!254668) (not d!1028557) (not d!1028645) (not b!3524004) (not b!3523816) (not b_next!91433) (not bm!254542) (not bm!254623) (not b_lambda!102949) (not d!1027919) (not b!3523411) (not b!3523460) (not d!1027881) (not d!1028779) (not b!3523421) (not b!3522522) (not b!3521672) (not b!3522537) (not d!1028145) (not b!3523803) (not b!3523806) (not b!3523581) (not b!3523748) (not d!1028681) (not b!3522813) (not b!3523535) (not b!3522498) (not b!3523686) (not b!3523515) (not bm!254549) (not bm!254616) (not b!3524019) (not b!3523820) (not b!3523762) (not b!3523547) (not b!3522603) (not b!3522944) (not d!1028125) (not b!3524206) (not b!3523033) (not b!3523939) (not b!3522950) (not b!3522408) (not d!1028147) (not d!1028589) (not b!3523781) (not b!3523456) (not b!3523432) (not d!1027767) (not b!3523869) (not d!1028807) (not b!3523610) (not b!3522914) (not b!3523898) (not b!3524134) (not bm!254656) (not b!3523668) (not b!3523021) (not b!3523565) (not b!3524068) (not b!3524021) (not b!3522955) (not b_lambda!102829) (not b!3524003) (not d!1028189) (not b!3523023) (not d!1027883) (not d!1028667) (not bm!254507) (not d!1028385) (not bm!254624) (not b!3523804) (not b!3523705) (not b!3523039) (not d!1028831) (not d!1027789) (not b!3522539) (not d!1028473) (not d!1028643) (not d!1028127) (not d!1028123) (not d!1027695) (not bm!254629) (not d!1028149) (not d!1028481) (not d!1028487) (not b!3524129) (not b!3523860) (not bm!254575) (not tb!196819) (not b!3524198) (not tb!197113) (not b!3522571) (not b!3524127) (not d!1028451) (not b!3524044) (not d!1028423) (not b_next!91459) (not bm!254543) (not b!3522559) (not tb!196919) (not b!3523533) (not b!3522993) b_and!251225 (not bm!254606) (not d!1028705) (not b!3524073) (not b!3522820) (not d!1028639) (not bm!254569) (not b_lambda!102979) (not d!1028501) b_and!251233 (not b!3524202) (not b!3523596) (not d!1028375) (not bm!254468) (not d!1028045) (not b!3522438) (not b!3523444) (not tb!196859) (not b!3522958) (not bm!254634) (not b!3524123) (not b!3523443) (not d!1028739) (not b_next!91455) (not b!3522567) (not b!3524166) (not d!1028697) (not b!3523901) (not b!3523436) (not b!3522500) (not b!3524140) (not b!3522790) (not b!3522766) (not b_lambda!102821) (not b!3523429) (not b!3523567) (not b!3522966) (not bm!254576) (not b!3522957) (not bm!254643) (not d!1028811) b_and!251199 (not d!1028559) (not b!3523864) (not b!3523704) (not d!1028175) (not b!3524194) (not b!3522524) (not b!3523805) (not b!3522765) (not b!3523904) (not b!3524018) (not b!3523910) (not d!1027781) (not b!3523442) (not d!1028529) (not d!1028415) (not b!3523984) (not b!3524115) (not b!3523847) (not b!3523744) (not b!3523469) (not b!3522999) (not bm!254637) (not d!1028057) (not b!3524185) (not d!1028585) (not b_lambda!102965) (not b!3524000) (not d!1028511) (not d!1028431) (not b!3524148) (not d!1028761) (not b!3524201) (not bm!254571) (not b!3522992) (not b!3523585) (not b!3523591) (not b!3523425) (not b!3522865) (not b!3522932) (not d!1028879) (not d!1027861) (not d!1028379) (not b!3523577) (not b_next!91471) (not b!3523900) (not b!3522987) (not b!3524007) (not d!1028403) (not b!3523713) (not d!1028409) (not b_lambda!102981) (not b!3523725) (not b!3523776) (not d!1028893) (not d!1027871) (not bm!254544) (not d!1028881) (not d!1028855) (not bm!254649) (not bm!254664) (not bm!254654) (not d!1027769) (not d!1028507) (not b!3523872) (not d!1028793) (not bm!254658) (not b_next!91457) (not d!1028187) (not b!3523728) (not b!3523712) (not b!3523961) (not d!1028179) (not b!3523737) (not b!3523548) (not b!3523949) (not b!3523576) (not tb!196929) (not b!3523745) (not bm!254646) (not b!3522611) (not b!3523635) (not b!3523973) (not tb!197073) (not bm!254548) (not d!1027777) (not b!3523532) (not bm!254627) (not b!3523831) (not b!3524158) (not b!3523667) (not b!3523896) (not b!3522809) (not b!3523779) (not d!1028819) (not b!3523921) (not d!1028815) (not b!3523999) (not d!1027857) (not b_lambda!102867) (not b!3524152) (not b!3522580) (not d!1028741) (not b!3523740) b_and!251217 (not b!3523711) (not b!3523836) (not b_lambda!102985) (not d!1028657) (not b!3523618) (not bm!254618) (not d!1028433) (not b!3522815) (not d!1028627) (not d!1028827) (not b_lambda!102989) (not d!1028745) (not d!1027887) (not b!3523912) (not b!3523979) (not b!3523954) (not bm!254467) (not b!3523769) (not d!1028617) (not bs!565625) (not b!3523888) (not b!3524192) (not b!3524200) (not d!1028875) (not b!3523583) (not d!1028851) (not b!3523558) (not b!3524109) (not b!3522769) (not b!3523530) (not b!3523978) (not b!3523625) (not b!3522437) (not b!3523759) (not b!3524174) (not d!1027795) (not bm!254609) (not b!3523000) (not b_next!91475) (not d!1028715) (not b!3524006) (not b!3522570) (not b!3523814) (not b!3524144) (not bm!254648) (not d!1028391) (not b!3523876) (not d!1028595) (not b!3524212) (not b!3524214) (not b_lambda!102991) (not b!3523611) (not b!3523855) (not b!3523508) (not d!1028837) (not b!3523482) (not b!3522994) (not b_lambda!102813) (not d!1028373) (not b!3523907) (not b!3523459) b_and!251231 (not b!3524022) (not b!3523672) (not d!1028765) (not d!1027765) (not b!3524156) (not b!3524084) (not d!1028599) (not d!1028653) (not b!3523617) (not b!3523619) (not b!3522995) (not d!1027917) (not d!1028509) (not b!3523010) (not d!1028199) (not d!1028561) (not d!1028163) (not b!3523941) (not b!3522808) (not d!1028457) (not d!1028193) (not b!3524077) (not b!3524033) (not d!1028743) (not b!3523897) (not d!1028197) (not b!3522913) (not b!3522777) (not bm!254652) (not d!1028825) (not d!1028547) (not b!3523041) (not bm!254663) (not d!1028387) (not b!3523599) (not b!3523566) (not d!1028733) (not d!1028691) (not d!1028413) (not b!3523977) (not d!1028887) (not bm!254546) (not d!1028849) (not bm!254633) (not b!3524013) (not d!1028651) (not b!3523479) (not d!1028817) (not b!3523887) (not b!3524023) (not d!1028377) (not b!3523490) (not d!1028719) (not b!3523775) (not b!3522439) (not b_lambda!102973) (not b!3523922) (not d!1028777) (not b!3523802) (not b!3523844) (not b!3523665) (not b!3523476) (not b!3522572) (not b_lambda!102831) (not b!3523867) (not d!1028467) (not b!3523659) (not b!3524147) (not b_lambda!102825) (not b!3524122) (not b!3524162) (not b!3523574) (not b!3522990) (not b!3523614) (not bm!254608) (not b!3523848) (not bm!254612) (not b!3524095) (not b!3523690) (not d!1028607) (not b!3524207) (not bm!254644) (not b!3523562) (not b!3522440) (not b!3524117) (not b!3522985) (not b!3524150) (not b_lambda!102993) (not b!3524139) (not b!3522800) (not b!3522949) (not d!1028809) (not b!3523643) (not b!3523589) (not b!3523656) (not b!3524176) (not d!1028121) (not b!3522385))
(check-sat b_and!251219 (not b_next!91453) (not b_next!91443) (not b_next!91435) b_and!251227 b_and!251221 b_and!251203 (not b_next!91433) b_and!251199 b_and!251217 (not b_next!91475) b_and!251231 (not b_next!91439) (not b_next!91473) b_and!251229 b_and!251205 (not b_next!91469) (not b_next!91441) b_and!251201 b_and!251223 b_and!251197 (not b_next!91437) b_and!251225 b_and!251233 (not b_next!91459) (not b_next!91455) (not b_next!91471) (not b_next!91457))
