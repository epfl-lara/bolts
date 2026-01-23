; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!525000 () Bool)

(assert start!525000)

(declare-fun b!4975868 () Bool)

(declare-fun b_free!132895 () Bool)

(declare-fun b_next!133685 () Bool)

(assert (=> b!4975868 (= b_free!132895 (not b_next!133685))))

(declare-fun tp!1395144 () Bool)

(declare-fun b_and!349299 () Bool)

(assert (=> b!4975868 (= tp!1395144 b_and!349299)))

(declare-fun b_free!132897 () Bool)

(declare-fun b_next!133687 () Bool)

(assert (=> b!4975868 (= b_free!132897 (not b_next!133687))))

(declare-fun tp!1395147 () Bool)

(declare-fun b_and!349301 () Bool)

(assert (=> b!4975868 (= tp!1395147 b_and!349301)))

(declare-fun b!4975870 () Bool)

(declare-fun b_free!132899 () Bool)

(declare-fun b_next!133689 () Bool)

(assert (=> b!4975870 (= b_free!132899 (not b_next!133689))))

(declare-fun tp!1395139 () Bool)

(declare-fun b_and!349303 () Bool)

(assert (=> b!4975870 (= tp!1395139 b_and!349303)))

(declare-fun b_free!132901 () Bool)

(declare-fun b_next!133691 () Bool)

(assert (=> b!4975870 (= b_free!132901 (not b_next!133691))))

(declare-fun tp!1395145 () Bool)

(declare-fun b_and!349305 () Bool)

(assert (=> b!4975870 (= tp!1395145 b_and!349305)))

(declare-fun b!4975853 () Bool)

(declare-fun res!2123970 () Bool)

(declare-fun e!3109757 () Bool)

(assert (=> b!4975853 (=> (not res!2123970) (not e!3109757))))

(declare-datatypes ((List!57600 0))(
  ( (Nil!57476) (Cons!57476 (h!63924 (_ BitVec 16)) (t!369600 List!57600)) )
))
(declare-datatypes ((TokenValue!8713 0))(
  ( (FloatLiteralValue!17426 (text!61436 List!57600)) (TokenValueExt!8712 (__x!34719 Int)) (Broken!43565 (value!268899 List!57600)) (Object!8836) (End!8713) (Def!8713) (Underscore!8713) (Match!8713) (Else!8713) (Error!8713) (Case!8713) (If!8713) (Extends!8713) (Abstract!8713) (Class!8713) (Val!8713) (DelimiterValue!17426 (del!8773 List!57600)) (KeywordValue!8719 (value!268900 List!57600)) (CommentValue!17426 (value!268901 List!57600)) (WhitespaceValue!17426 (value!268902 List!57600)) (IndentationValue!8713 (value!268903 List!57600)) (String!65440) (Int32!8713) (Broken!43566 (value!268904 List!57600)) (Boolean!8714) (Unit!148472) (OperatorValue!8716 (op!8773 List!57600)) (IdentifierValue!17426 (value!268905 List!57600)) (IdentifierValue!17427 (value!268906 List!57600)) (WhitespaceValue!17427 (value!268907 List!57600)) (True!17426) (False!17426) (Broken!43567 (value!268908 List!57600)) (Broken!43568 (value!268909 List!57600)) (True!17427) (RightBrace!8713) (RightBracket!8713) (Colon!8713) (Null!8713) (Comma!8713) (LeftBracket!8713) (False!17427) (LeftBrace!8713) (ImaginaryLiteralValue!8713 (text!61437 List!57600)) (StringLiteralValue!26139 (value!268910 List!57600)) (EOFValue!8713 (value!268911 List!57600)) (IdentValue!8713 (value!268912 List!57600)) (DelimiterValue!17427 (value!268913 List!57600)) (DedentValue!8713 (value!268914 List!57600)) (NewLineValue!8713 (value!268915 List!57600)) (IntegerValue!26139 (value!268916 (_ BitVec 32)) (text!61438 List!57600)) (IntegerValue!26140 (value!268917 Int) (text!61439 List!57600)) (Times!8713) (Or!8713) (Equal!8713) (Minus!8713) (Broken!43569 (value!268918 List!57600)) (And!8713) (Div!8713) (LessEqual!8713) (Mod!8713) (Concat!22349) (Not!8713) (Plus!8713) (SpaceValue!8713 (value!268919 List!57600)) (IntegerValue!26141 (value!268920 Int) (text!61440 List!57600)) (StringLiteralValue!26140 (text!61441 List!57600)) (FloatLiteralValue!17427 (text!61442 List!57600)) (BytesLiteralValue!8713 (value!268921 List!57600)) (CommentValue!17427 (value!268922 List!57600)) (StringLiteralValue!26141 (value!268923 List!57600)) (ErrorTokenValue!8713 (msg!8774 List!57600)) )
))
(declare-datatypes ((C!27522 0))(
  ( (C!27523 (val!23127 Int)) )
))
(declare-datatypes ((List!57601 0))(
  ( (Nil!57477) (Cons!57477 (h!63925 C!27522) (t!369601 List!57601)) )
))
(declare-datatypes ((IArray!30371 0))(
  ( (IArray!30372 (innerList!15243 List!57601)) )
))
(declare-datatypes ((Regex!13636 0))(
  ( (ElementMatch!13636 (c!849118 C!27522)) (Concat!22350 (regOne!27784 Regex!13636) (regTwo!27784 Regex!13636)) (EmptyExpr!13636) (Star!13636 (reg!13965 Regex!13636)) (EmptyLang!13636) (Union!13636 (regOne!27785 Regex!13636) (regTwo!27785 Regex!13636)) )
))
(declare-datatypes ((String!65441 0))(
  ( (String!65442 (value!268924 String)) )
))
(declare-datatypes ((Conc!15155 0))(
  ( (Node!15155 (left!41935 Conc!15155) (right!42265 Conc!15155) (csize!30540 Int) (cheight!15366 Int)) (Leaf!25182 (xs!18481 IArray!30371) (csize!30541 Int)) (Empty!15155) )
))
(declare-datatypes ((BalanceConc!29740 0))(
  ( (BalanceConc!29741 (c!849119 Conc!15155)) )
))
(declare-datatypes ((TokenValueInjection!16734 0))(
  ( (TokenValueInjection!16735 (toValue!11378 Int) (toChars!11237 Int)) )
))
(declare-datatypes ((Rule!16606 0))(
  ( (Rule!16607 (regex!8403 Regex!13636) (tag!9267 String!65441) (isSeparator!8403 Bool) (transformation!8403 TokenValueInjection!16734)) )
))
(declare-datatypes ((List!57602 0))(
  ( (Nil!57478) (Cons!57478 (h!63926 Rule!16606) (t!369602 List!57602)) )
))
(declare-fun rulesArg!259 () List!57602)

(declare-fun isEmpty!30983 (List!57602) Bool)

(assert (=> b!4975853 (= res!2123970 (not (isEmpty!30983 rulesArg!259)))))

(declare-fun e!3109755 () Bool)

(declare-fun b!4975854 () Bool)

(declare-datatypes ((Token!15298 0))(
  ( (Token!15299 (value!268925 TokenValue!8713) (rule!11669 Rule!16606) (size!38102 Int) (originalCharacters!8680 List!57601)) )
))
(declare-datatypes ((tuple2!62228 0))(
  ( (tuple2!62229 (_1!34417 Token!15298) (_2!34417 BalanceConc!29740)) )
))
(declare-datatypes ((Option!14465 0))(
  ( (None!14464) (Some!14464 (v!50461 tuple2!62228)) )
))
(declare-fun err!4589 () Option!14465)

(declare-fun e!3109752 () Bool)

(declare-fun tp!1395141 () Bool)

(declare-fun inv!75143 (String!65441) Bool)

(declare-fun inv!75146 (TokenValueInjection!16734) Bool)

(assert (=> b!4975854 (= e!3109752 (and tp!1395141 (inv!75143 (tag!9267 (rule!11669 (_1!34417 (v!50461 err!4589))))) (inv!75146 (transformation!8403 (rule!11669 (_1!34417 (v!50461 err!4589))))) e!3109755))))

(declare-fun b!4975855 () Bool)

(declare-fun e!3109759 () Bool)

(declare-fun totalInput!464 () BalanceConc!29740)

(declare-fun tp!1395140 () Bool)

(declare-fun inv!75147 (Conc!15155) Bool)

(assert (=> b!4975855 (= e!3109759 (and (inv!75147 (c!849119 totalInput!464)) tp!1395140))))

(declare-fun b!4975856 () Bool)

(declare-fun e!3109762 () Bool)

(declare-fun e!3109773 () Bool)

(assert (=> b!4975856 (= e!3109762 e!3109773)))

(declare-fun res!2123974 () Bool)

(assert (=> b!4975856 (=> res!2123974 e!3109773)))

(declare-fun lt!2055044 () Bool)

(assert (=> b!4975856 (= res!2123974 lt!2055044)))

(declare-fun tp!1395149 () Bool)

(declare-fun b!4975857 () Bool)

(declare-fun e!3109771 () Bool)

(declare-fun e!3109766 () Bool)

(assert (=> b!4975857 (= e!3109766 (and tp!1395149 (inv!75143 (tag!9267 (h!63926 rulesArg!259))) (inv!75146 (transformation!8403 (h!63926 rulesArg!259))) e!3109771))))

(declare-fun b!4975858 () Bool)

(declare-fun e!3109769 () Bool)

(declare-fun lt!2055045 () tuple2!62228)

(declare-datatypes ((tuple2!62230 0))(
  ( (tuple2!62231 (_1!34418 Token!15298) (_2!34418 List!57601)) )
))
(declare-fun lt!2055049 () tuple2!62230)

(declare-fun list!18391 (BalanceConc!29740) List!57601)

(assert (=> b!4975858 (= e!3109769 (= (list!18391 (_2!34417 lt!2055045)) (_2!34418 lt!2055049)))))

(declare-fun b!4975859 () Bool)

(declare-fun res!2123978 () Bool)

(assert (=> b!4975859 (=> (not res!2123978) (not e!3109757))))

(declare-datatypes ((LexerInterface!7995 0))(
  ( (LexerInterfaceExt!7992 (__x!34720 Int)) (Lexer!7993) )
))
(declare-fun thiss!15247 () LexerInterface!7995)

(declare-fun rulesValidInductive!3306 (LexerInterface!7995 List!57602) Bool)

(assert (=> b!4975859 (= res!2123978 (rulesValidInductive!3306 thiss!15247 rulesArg!259))))

(declare-fun e!3109758 () Bool)

(declare-fun e!3109770 () Bool)

(declare-fun b!4975860 () Bool)

(declare-fun e!3109772 () Bool)

(declare-fun inv!75148 (Token!15298) Bool)

(declare-fun inv!75149 (BalanceConc!29740) Bool)

(assert (=> b!4975860 (= e!3109758 (and (inv!75148 (_1!34417 (v!50461 err!4589))) e!3109770 (inv!75149 (_2!34417 (v!50461 err!4589))) e!3109772))))

(declare-fun b!4975861 () Bool)

(declare-fun e!3109764 () Bool)

(declare-fun e!3109761 () Bool)

(assert (=> b!4975861 (= e!3109764 e!3109761)))

(declare-fun res!2123976 () Bool)

(assert (=> b!4975861 (=> (not res!2123976) (not e!3109761))))

(declare-fun lt!2055051 () Bool)

(declare-datatypes ((Option!14466 0))(
  ( (None!14465) (Some!14465 (v!50462 tuple2!62230)) )
))
(declare-fun lt!2055043 () Option!14466)

(declare-fun isDefined!11378 (Option!14466) Bool)

(assert (=> b!4975861 (= res!2123976 (= lt!2055051 (isDefined!11378 lt!2055043)))))

(declare-fun lt!2055047 () Option!14465)

(declare-fun isDefined!11379 (Option!14465) Bool)

(assert (=> b!4975861 (= lt!2055051 (isDefined!11379 lt!2055047))))

(declare-fun lt!2055052 () List!57601)

(declare-fun maxPrefixZipper!794 (LexerInterface!7995 List!57602 List!57601) Option!14466)

(assert (=> b!4975861 (= lt!2055043 (maxPrefixZipper!794 thiss!15247 rulesArg!259 lt!2055052))))

(assert (=> b!4975861 (= lt!2055047 err!4589)))

(assert (=> b!4975861 true))

(assert (=> b!4975861 e!3109758))

(declare-fun b!4975862 () Bool)

(declare-fun e!3109763 () Bool)

(assert (=> b!4975862 (= e!3109763 e!3109769)))

(declare-fun res!2123972 () Bool)

(assert (=> b!4975862 (=> (not res!2123972) (not e!3109769))))

(assert (=> b!4975862 (= res!2123972 (= (_1!34417 lt!2055045) (_1!34418 lt!2055049)))))

(declare-fun get!19961 (Option!14466) tuple2!62230)

(assert (=> b!4975862 (= lt!2055049 (get!19961 lt!2055043))))

(declare-fun get!19962 (Option!14465) tuple2!62228)

(assert (=> b!4975862 (= lt!2055045 (get!19962 lt!2055047))))

(declare-fun b!4975863 () Bool)

(declare-fun e!3109768 () Bool)

(assert (=> b!4975863 (= e!3109757 e!3109768)))

(declare-fun res!2123971 () Bool)

(assert (=> b!4975863 (=> (not res!2123971) (not e!3109768))))

(declare-fun isSuffix!1202 (List!57601 List!57601) Bool)

(assert (=> b!4975863 (= res!2123971 (isSuffix!1202 lt!2055052 (list!18391 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29740)

(assert (=> b!4975863 (= lt!2055052 (list!18391 input!1342))))

(declare-fun b!4975864 () Bool)

(declare-fun e!3109754 () Bool)

(declare-fun tp!1395146 () Bool)

(assert (=> b!4975864 (= e!3109754 (and e!3109766 tp!1395146))))

(declare-fun tp!1395143 () Bool)

(declare-fun b!4975865 () Bool)

(declare-fun inv!21 (TokenValue!8713) Bool)

(assert (=> b!4975865 (= e!3109770 (and (inv!21 (value!268925 (_1!34417 (v!50461 err!4589)))) e!3109752 tp!1395143))))

(declare-fun b!4975866 () Bool)

(declare-fun e!3109753 () Bool)

(declare-fun tp!1395142 () Bool)

(assert (=> b!4975866 (= e!3109753 (and (inv!75147 (c!849119 input!1342)) tp!1395142))))

(declare-fun b!4975867 () Bool)

(declare-fun e!3109760 () Bool)

(declare-fun lt!2055048 () tuple2!62228)

(declare-fun lt!2055046 () tuple2!62230)

(assert (=> b!4975867 (= e!3109760 (= (list!18391 (_2!34417 lt!2055048)) (_2!34418 lt!2055046)))))

(assert (=> b!4975868 (= e!3109755 (and tp!1395144 tp!1395147))))

(declare-fun res!2123973 () Bool)

(assert (=> start!525000 (=> (not res!2123973) (not e!3109757))))

(assert (=> start!525000 (= res!2123973 (is-Lexer!7993 thiss!15247))))

(assert (=> start!525000 e!3109757))

(assert (=> start!525000 true))

(assert (=> start!525000 e!3109754))

(assert (=> start!525000 (and (inv!75149 input!1342) e!3109753)))

(assert (=> start!525000 (and (inv!75149 totalInput!464) e!3109759)))

(declare-fun b!4975869 () Bool)

(assert (=> b!4975869 (= e!3109773 e!3109760)))

(declare-fun res!2123968 () Bool)

(assert (=> b!4975869 (=> (not res!2123968) (not e!3109760))))

(assert (=> b!4975869 (= res!2123968 (= (_1!34417 lt!2055048) (_1!34418 lt!2055046)))))

(declare-fun maxPrefix!4668 (LexerInterface!7995 List!57602 List!57601) Option!14466)

(assert (=> b!4975869 (= lt!2055046 (get!19961 (maxPrefix!4668 thiss!15247 rulesArg!259 lt!2055052)))))

(assert (=> b!4975869 (= lt!2055048 (get!19962 lt!2055047))))

(assert (=> b!4975870 (= e!3109771 (and tp!1395139 tp!1395145))))

(declare-fun b!4975871 () Bool)

(assert (=> b!4975871 (= e!3109768 (not e!3109764))))

(declare-fun res!2123969 () Bool)

(assert (=> b!4975871 (=> res!2123969 e!3109764)))

(assert (=> b!4975871 (= res!2123969 (or (and (is-Cons!57478 rulesArg!259) (is-Nil!57478 (t!369602 rulesArg!259))) (is-Cons!57478 rulesArg!259)))))

(declare-fun isPrefix!5254 (List!57601 List!57601) Bool)

(assert (=> b!4975871 (isPrefix!5254 lt!2055052 lt!2055052)))

(declare-datatypes ((Unit!148473 0))(
  ( (Unit!148474) )
))
(declare-fun lt!2055050 () Unit!148473)

(declare-fun lemmaIsPrefixRefl!3578 (List!57601 List!57601) Unit!148473)

(assert (=> b!4975871 (= lt!2055050 (lemmaIsPrefixRefl!3578 lt!2055052 lt!2055052))))

(declare-fun b!4975872 () Bool)

(declare-fun tp!1395148 () Bool)

(assert (=> b!4975872 (= e!3109772 (and (inv!75147 (c!849119 (_2!34417 (v!50461 err!4589)))) tp!1395148))))

(declare-fun b!4975873 () Bool)

(assert (=> b!4975873 (= e!3109761 e!3109762)))

(declare-fun res!2123975 () Bool)

(assert (=> b!4975873 (=> (not res!2123975) (not e!3109762))))

(assert (=> b!4975873 (= res!2123975 e!3109763)))

(declare-fun res!2123977 () Bool)

(assert (=> b!4975873 (=> res!2123977 e!3109763)))

(assert (=> b!4975873 (= res!2123977 lt!2055044)))

(assert (=> b!4975873 (= lt!2055044 (not lt!2055051))))

(assert (= (and start!525000 res!2123973) b!4975859))

(assert (= (and b!4975859 res!2123978) b!4975853))

(assert (= (and b!4975853 res!2123970) b!4975863))

(assert (= (and b!4975863 res!2123971) b!4975871))

(assert (= (and b!4975871 (not res!2123969)) b!4975861))

(assert (= b!4975854 b!4975868))

(assert (= b!4975865 b!4975854))

(assert (= b!4975860 b!4975865))

(assert (= b!4975860 b!4975872))

(assert (= (and b!4975861 (is-Some!14464 err!4589)) b!4975860))

(assert (= (and b!4975861 res!2123976) b!4975873))

(assert (= (and b!4975873 (not res!2123977)) b!4975862))

(assert (= (and b!4975862 res!2123972) b!4975858))

(assert (= (and b!4975873 res!2123975) b!4975856))

(assert (= (and b!4975856 (not res!2123974)) b!4975869))

(assert (= (and b!4975869 res!2123968) b!4975867))

(assert (= b!4975857 b!4975870))

(assert (= b!4975864 b!4975857))

(assert (= (and start!525000 (is-Cons!57478 rulesArg!259)) b!4975864))

(assert (= start!525000 b!4975866))

(assert (= start!525000 b!4975855))

(declare-fun m!6006150 () Bool)

(assert (=> b!4975872 m!6006150))

(declare-fun m!6006152 () Bool)

(assert (=> b!4975863 m!6006152))

(assert (=> b!4975863 m!6006152))

(declare-fun m!6006154 () Bool)

(assert (=> b!4975863 m!6006154))

(declare-fun m!6006156 () Bool)

(assert (=> b!4975863 m!6006156))

(declare-fun m!6006158 () Bool)

(assert (=> b!4975859 m!6006158))

(declare-fun m!6006160 () Bool)

(assert (=> b!4975858 m!6006160))

(declare-fun m!6006162 () Bool)

(assert (=> b!4975855 m!6006162))

(declare-fun m!6006164 () Bool)

(assert (=> b!4975865 m!6006164))

(declare-fun m!6006166 () Bool)

(assert (=> b!4975871 m!6006166))

(declare-fun m!6006168 () Bool)

(assert (=> b!4975871 m!6006168))

(declare-fun m!6006170 () Bool)

(assert (=> b!4975866 m!6006170))

(declare-fun m!6006172 () Bool)

(assert (=> b!4975869 m!6006172))

(assert (=> b!4975869 m!6006172))

(declare-fun m!6006174 () Bool)

(assert (=> b!4975869 m!6006174))

(declare-fun m!6006176 () Bool)

(assert (=> b!4975869 m!6006176))

(declare-fun m!6006178 () Bool)

(assert (=> b!4975862 m!6006178))

(assert (=> b!4975862 m!6006176))

(declare-fun m!6006180 () Bool)

(assert (=> b!4975867 m!6006180))

(declare-fun m!6006182 () Bool)

(assert (=> b!4975854 m!6006182))

(declare-fun m!6006184 () Bool)

(assert (=> b!4975854 m!6006184))

(declare-fun m!6006186 () Bool)

(assert (=> b!4975857 m!6006186))

(declare-fun m!6006188 () Bool)

(assert (=> b!4975857 m!6006188))

(declare-fun m!6006190 () Bool)

(assert (=> b!4975861 m!6006190))

(declare-fun m!6006192 () Bool)

(assert (=> b!4975861 m!6006192))

(declare-fun m!6006194 () Bool)

(assert (=> b!4975861 m!6006194))

(declare-fun m!6006196 () Bool)

(assert (=> b!4975853 m!6006196))

(declare-fun m!6006198 () Bool)

(assert (=> b!4975860 m!6006198))

(declare-fun m!6006200 () Bool)

(assert (=> b!4975860 m!6006200))

(declare-fun m!6006202 () Bool)

(assert (=> start!525000 m!6006202))

(declare-fun m!6006204 () Bool)

(assert (=> start!525000 m!6006204))

(push 1)

(assert (not b!4975858))

(assert (not b!4975859))

(assert (not b!4975871))

(assert (not b!4975866))

(assert (not b!4975872))

(assert (not b!4975867))

(assert (not b_next!133685))

(assert (not b!4975861))

(assert b_and!349299)

(assert (not b!4975854))

(assert (not b!4975862))

(assert (not b_next!133687))

(assert (not b!4975863))

(assert b_and!349301)

(assert (not b_next!133691))

(assert (not b!4975860))

(assert (not b!4975865))

(assert (not start!525000))

(assert (not b!4975853))

(assert (not b!4975864))

(assert (not b!4975857))

(assert b_and!349303)

(assert (not b!4975855))

(assert (not b!4975869))

(assert b_and!349305)

(assert (not b_next!133689))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!133687))

(assert b_and!349301)

(assert (not b_next!133691))

(assert (not b_next!133685))

(assert b_and!349303)

(assert b_and!349299)

(assert b_and!349305)

(assert (not b_next!133689))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1602755 () Bool)

(declare-fun list!18393 (Conc!15155) List!57601)

(assert (=> d!1602755 (= (list!18391 (_2!34417 lt!2055048)) (list!18393 (c!849119 (_2!34417 lt!2055048))))))

(declare-fun bs!1183953 () Bool)

(assert (= bs!1183953 d!1602755))

(declare-fun m!6006262 () Bool)

(assert (=> bs!1183953 m!6006262))

(assert (=> b!4975867 d!1602755))

(declare-fun d!1602757 () Bool)

(declare-fun isBalanced!4211 (Conc!15155) Bool)

(assert (=> d!1602757 (= (inv!75149 input!1342) (isBalanced!4211 (c!849119 input!1342)))))

(declare-fun bs!1183954 () Bool)

(assert (= bs!1183954 d!1602757))

(declare-fun m!6006264 () Bool)

(assert (=> bs!1183954 m!6006264))

(assert (=> start!525000 d!1602757))

(declare-fun d!1602759 () Bool)

(assert (=> d!1602759 (= (inv!75149 totalInput!464) (isBalanced!4211 (c!849119 totalInput!464)))))

(declare-fun bs!1183955 () Bool)

(assert (= bs!1183955 d!1602759))

(declare-fun m!6006266 () Bool)

(assert (=> bs!1183955 m!6006266))

(assert (=> start!525000 d!1602759))

(declare-fun d!1602761 () Bool)

(assert (=> d!1602761 (= (inv!75143 (tag!9267 (h!63926 rulesArg!259))) (= (mod (str.len (value!268924 (tag!9267 (h!63926 rulesArg!259)))) 2) 0))))

(assert (=> b!4975857 d!1602761))

(declare-fun d!1602763 () Bool)

(declare-fun res!2124021 () Bool)

(declare-fun e!3109842 () Bool)

(assert (=> d!1602763 (=> (not res!2124021) (not e!3109842))))

(declare-fun semiInverseModEq!3709 (Int Int) Bool)

(assert (=> d!1602763 (= res!2124021 (semiInverseModEq!3709 (toChars!11237 (transformation!8403 (h!63926 rulesArg!259))) (toValue!11378 (transformation!8403 (h!63926 rulesArg!259)))))))

(assert (=> d!1602763 (= (inv!75146 (transformation!8403 (h!63926 rulesArg!259))) e!3109842)))

(declare-fun b!4975939 () Bool)

(declare-fun equivClasses!3557 (Int Int) Bool)

(assert (=> b!4975939 (= e!3109842 (equivClasses!3557 (toChars!11237 (transformation!8403 (h!63926 rulesArg!259))) (toValue!11378 (transformation!8403 (h!63926 rulesArg!259)))))))

(assert (= (and d!1602763 res!2124021) b!4975939))

(declare-fun m!6006268 () Bool)

(assert (=> d!1602763 m!6006268))

(declare-fun m!6006270 () Bool)

(assert (=> b!4975939 m!6006270))

(assert (=> b!4975857 d!1602763))

(declare-fun d!1602765 () Bool)

(declare-fun c!849125 () Bool)

(assert (=> d!1602765 (= c!849125 (is-Node!15155 (c!849119 input!1342)))))

(declare-fun e!3109847 () Bool)

(assert (=> d!1602765 (= (inv!75147 (c!849119 input!1342)) e!3109847)))

(declare-fun b!4975946 () Bool)

(declare-fun inv!75154 (Conc!15155) Bool)

(assert (=> b!4975946 (= e!3109847 (inv!75154 (c!849119 input!1342)))))

(declare-fun b!4975947 () Bool)

(declare-fun e!3109848 () Bool)

(assert (=> b!4975947 (= e!3109847 e!3109848)))

(declare-fun res!2124027 () Bool)

(assert (=> b!4975947 (= res!2124027 (not (is-Leaf!25182 (c!849119 input!1342))))))

(assert (=> b!4975947 (=> res!2124027 e!3109848)))

(declare-fun b!4975948 () Bool)

(declare-fun inv!75155 (Conc!15155) Bool)

(assert (=> b!4975948 (= e!3109848 (inv!75155 (c!849119 input!1342)))))

(assert (= (and d!1602765 c!849125) b!4975946))

(assert (= (and d!1602765 (not c!849125)) b!4975947))

(assert (= (and b!4975947 (not res!2124027)) b!4975948))

(declare-fun m!6006272 () Bool)

(assert (=> b!4975946 m!6006272))

(declare-fun m!6006274 () Bool)

(assert (=> b!4975948 m!6006274))

(assert (=> b!4975866 d!1602765))

(declare-fun d!1602767 () Bool)

(declare-fun c!849126 () Bool)

(assert (=> d!1602767 (= c!849126 (is-Node!15155 (c!849119 totalInput!464)))))

(declare-fun e!3109849 () Bool)

(assert (=> d!1602767 (= (inv!75147 (c!849119 totalInput!464)) e!3109849)))

(declare-fun b!4975949 () Bool)

(assert (=> b!4975949 (= e!3109849 (inv!75154 (c!849119 totalInput!464)))))

(declare-fun b!4975950 () Bool)

(declare-fun e!3109850 () Bool)

(assert (=> b!4975950 (= e!3109849 e!3109850)))

(declare-fun res!2124028 () Bool)

(assert (=> b!4975950 (= res!2124028 (not (is-Leaf!25182 (c!849119 totalInput!464))))))

(assert (=> b!4975950 (=> res!2124028 e!3109850)))

(declare-fun b!4975951 () Bool)

(assert (=> b!4975951 (= e!3109850 (inv!75155 (c!849119 totalInput!464)))))

(assert (= (and d!1602767 c!849126) b!4975949))

(assert (= (and d!1602767 (not c!849126)) b!4975950))

(assert (= (and b!4975950 (not res!2124028)) b!4975951))

(declare-fun m!6006276 () Bool)

(assert (=> b!4975949 m!6006276))

(declare-fun m!6006278 () Bool)

(assert (=> b!4975951 m!6006278))

(assert (=> b!4975855 d!1602767))

(declare-fun d!1602769 () Bool)

(assert (=> d!1602769 true))

(declare-fun lt!2055108 () Bool)

(declare-fun lambda!247557 () Int)

(declare-fun forall!13337 (List!57602 Int) Bool)

(assert (=> d!1602769 (= lt!2055108 (forall!13337 rulesArg!259 lambda!247557))))

(declare-fun e!3109883 () Bool)

(assert (=> d!1602769 (= lt!2055108 e!3109883)))

(declare-fun res!2124074 () Bool)

(assert (=> d!1602769 (=> res!2124074 e!3109883)))

(assert (=> d!1602769 (= res!2124074 (not (is-Cons!57478 rulesArg!259)))))

(assert (=> d!1602769 (= (rulesValidInductive!3306 thiss!15247 rulesArg!259) lt!2055108)))

(declare-fun b!4976008 () Bool)

(declare-fun e!3109884 () Bool)

(assert (=> b!4976008 (= e!3109883 e!3109884)))

(declare-fun res!2124073 () Bool)

(assert (=> b!4976008 (=> (not res!2124073) (not e!3109884))))

(declare-fun ruleValid!3811 (LexerInterface!7995 Rule!16606) Bool)

(assert (=> b!4976008 (= res!2124073 (ruleValid!3811 thiss!15247 (h!63926 rulesArg!259)))))

(declare-fun b!4976009 () Bool)

(assert (=> b!4976009 (= e!3109884 (rulesValidInductive!3306 thiss!15247 (t!369602 rulesArg!259)))))

(assert (= (and d!1602769 (not res!2124074)) b!4976008))

(assert (= (and b!4976008 res!2124073) b!4976009))

(declare-fun m!6006326 () Bool)

(assert (=> d!1602769 m!6006326))

(declare-fun m!6006328 () Bool)

(assert (=> b!4976008 m!6006328))

(declare-fun m!6006330 () Bool)

(assert (=> b!4976009 m!6006330))

(assert (=> b!4975859 d!1602769))

(declare-fun d!1602793 () Bool)

(declare-fun res!2124079 () Bool)

(declare-fun e!3109887 () Bool)

(assert (=> d!1602793 (=> (not res!2124079) (not e!3109887))))

(declare-fun isEmpty!30985 (List!57601) Bool)

(assert (=> d!1602793 (= res!2124079 (not (isEmpty!30985 (originalCharacters!8680 (_1!34417 (v!50461 err!4589))))))))

(assert (=> d!1602793 (= (inv!75148 (_1!34417 (v!50461 err!4589))) e!3109887)))

(declare-fun b!4976016 () Bool)

(declare-fun res!2124080 () Bool)

(assert (=> b!4976016 (=> (not res!2124080) (not e!3109887))))

(declare-fun dynLambda!23224 (Int TokenValue!8713) BalanceConc!29740)

(assert (=> b!4976016 (= res!2124080 (= (originalCharacters!8680 (_1!34417 (v!50461 err!4589))) (list!18391 (dynLambda!23224 (toChars!11237 (transformation!8403 (rule!11669 (_1!34417 (v!50461 err!4589))))) (value!268925 (_1!34417 (v!50461 err!4589)))))))))

(declare-fun b!4976017 () Bool)

(declare-fun size!38104 (List!57601) Int)

(assert (=> b!4976017 (= e!3109887 (= (size!38102 (_1!34417 (v!50461 err!4589))) (size!38104 (originalCharacters!8680 (_1!34417 (v!50461 err!4589))))))))

(assert (= (and d!1602793 res!2124079) b!4976016))

(assert (= (and b!4976016 res!2124080) b!4976017))

(declare-fun b_lambda!197589 () Bool)

(assert (=> (not b_lambda!197589) (not b!4976016)))

(declare-fun t!369607 () Bool)

(declare-fun tb!261523 () Bool)

(assert (=> (and b!4975868 (= (toChars!11237 (transformation!8403 (rule!11669 (_1!34417 (v!50461 err!4589))))) (toChars!11237 (transformation!8403 (rule!11669 (_1!34417 (v!50461 err!4589)))))) t!369607) tb!261523))

(declare-fun b!4976022 () Bool)

(declare-fun e!3109890 () Bool)

(declare-fun tp!1395185 () Bool)

(assert (=> b!4976022 (= e!3109890 (and (inv!75147 (c!849119 (dynLambda!23224 (toChars!11237 (transformation!8403 (rule!11669 (_1!34417 (v!50461 err!4589))))) (value!268925 (_1!34417 (v!50461 err!4589)))))) tp!1395185))))

(declare-fun result!326726 () Bool)

(assert (=> tb!261523 (= result!326726 (and (inv!75149 (dynLambda!23224 (toChars!11237 (transformation!8403 (rule!11669 (_1!34417 (v!50461 err!4589))))) (value!268925 (_1!34417 (v!50461 err!4589))))) e!3109890))))

(assert (= tb!261523 b!4976022))

(declare-fun m!6006332 () Bool)

(assert (=> b!4976022 m!6006332))

(declare-fun m!6006334 () Bool)

(assert (=> tb!261523 m!6006334))

(assert (=> b!4976016 t!369607))

(declare-fun b_and!349315 () Bool)

(assert (= b_and!349301 (and (=> t!369607 result!326726) b_and!349315)))

(declare-fun t!369609 () Bool)

(declare-fun tb!261525 () Bool)

(assert (=> (and b!4975870 (= (toChars!11237 (transformation!8403 (h!63926 rulesArg!259))) (toChars!11237 (transformation!8403 (rule!11669 (_1!34417 (v!50461 err!4589)))))) t!369609) tb!261525))

(declare-fun result!326730 () Bool)

(assert (= result!326730 result!326726))

(assert (=> b!4976016 t!369609))

(declare-fun b_and!349317 () Bool)

(assert (= b_and!349305 (and (=> t!369609 result!326730) b_and!349317)))

(declare-fun m!6006336 () Bool)

(assert (=> d!1602793 m!6006336))

(declare-fun m!6006338 () Bool)

(assert (=> b!4976016 m!6006338))

(assert (=> b!4976016 m!6006338))

(declare-fun m!6006340 () Bool)

(assert (=> b!4976016 m!6006340))

(declare-fun m!6006342 () Bool)

(assert (=> b!4976017 m!6006342))

(assert (=> b!4975860 d!1602793))

(declare-fun d!1602795 () Bool)

(assert (=> d!1602795 (= (inv!75149 (_2!34417 (v!50461 err!4589))) (isBalanced!4211 (c!849119 (_2!34417 (v!50461 err!4589)))))))

(declare-fun bs!1183960 () Bool)

(assert (= bs!1183960 d!1602795))

(declare-fun m!6006344 () Bool)

(assert (=> bs!1183960 m!6006344))

(assert (=> b!4975860 d!1602795))

(declare-fun d!1602797 () Bool)

(assert (=> d!1602797 (= (list!18391 (_2!34417 lt!2055045)) (list!18393 (c!849119 (_2!34417 lt!2055045))))))

(declare-fun bs!1183961 () Bool)

(assert (= bs!1183961 d!1602797))

(declare-fun m!6006346 () Bool)

(assert (=> bs!1183961 m!6006346))

(assert (=> b!4975858 d!1602797))

(declare-fun d!1602799 () Bool)

(assert (=> d!1602799 (= (get!19961 (maxPrefix!4668 thiss!15247 rulesArg!259 lt!2055052)) (v!50462 (maxPrefix!4668 thiss!15247 rulesArg!259 lt!2055052)))))

(assert (=> b!4975869 d!1602799))

(declare-fun b!4976041 () Bool)

(declare-fun res!2124099 () Bool)

(declare-fun e!3109897 () Bool)

(assert (=> b!4976041 (=> (not res!2124099) (not e!3109897))))

(declare-fun lt!2055123 () Option!14466)

(declare-fun ++!12540 (List!57601 List!57601) List!57601)

(declare-fun charsOf!5445 (Token!15298) BalanceConc!29740)

(assert (=> b!4976041 (= res!2124099 (= (++!12540 (list!18391 (charsOf!5445 (_1!34418 (get!19961 lt!2055123)))) (_2!34418 (get!19961 lt!2055123))) lt!2055052))))

(declare-fun d!1602801 () Bool)

(declare-fun e!3109899 () Bool)

(assert (=> d!1602801 e!3109899))

(declare-fun res!2124095 () Bool)

(assert (=> d!1602801 (=> res!2124095 e!3109899)))

(declare-fun isEmpty!30986 (Option!14466) Bool)

(assert (=> d!1602801 (= res!2124095 (isEmpty!30986 lt!2055123))))

(declare-fun e!3109898 () Option!14466)

(assert (=> d!1602801 (= lt!2055123 e!3109898)))

(declare-fun c!849135 () Bool)

(assert (=> d!1602801 (= c!849135 (and (is-Cons!57478 rulesArg!259) (is-Nil!57478 (t!369602 rulesArg!259))))))

(declare-fun lt!2055120 () Unit!148473)

(declare-fun lt!2055122 () Unit!148473)

(assert (=> d!1602801 (= lt!2055120 lt!2055122)))

(assert (=> d!1602801 (isPrefix!5254 lt!2055052 lt!2055052)))

(assert (=> d!1602801 (= lt!2055122 (lemmaIsPrefixRefl!3578 lt!2055052 lt!2055052))))

(assert (=> d!1602801 (rulesValidInductive!3306 thiss!15247 rulesArg!259)))

(assert (=> d!1602801 (= (maxPrefix!4668 thiss!15247 rulesArg!259 lt!2055052) lt!2055123)))

(declare-fun b!4976042 () Bool)

(declare-fun lt!2055121 () Option!14466)

(declare-fun lt!2055119 () Option!14466)

(assert (=> b!4976042 (= e!3109898 (ite (and (is-None!14465 lt!2055121) (is-None!14465 lt!2055119)) None!14465 (ite (is-None!14465 lt!2055119) lt!2055121 (ite (is-None!14465 lt!2055121) lt!2055119 (ite (>= (size!38102 (_1!34418 (v!50462 lt!2055121))) (size!38102 (_1!34418 (v!50462 lt!2055119)))) lt!2055121 lt!2055119)))))))

(declare-fun call!347059 () Option!14466)

(assert (=> b!4976042 (= lt!2055121 call!347059)))

(assert (=> b!4976042 (= lt!2055119 (maxPrefix!4668 thiss!15247 (t!369602 rulesArg!259) lt!2055052))))

(declare-fun b!4976043 () Bool)

(assert (=> b!4976043 (= e!3109898 call!347059)))

(declare-fun b!4976044 () Bool)

(declare-fun res!2124097 () Bool)

(assert (=> b!4976044 (=> (not res!2124097) (not e!3109897))))

(declare-fun apply!13912 (TokenValueInjection!16734 BalanceConc!29740) TokenValue!8713)

(declare-fun seqFromList!6044 (List!57601) BalanceConc!29740)

(assert (=> b!4976044 (= res!2124097 (= (value!268925 (_1!34418 (get!19961 lt!2055123))) (apply!13912 (transformation!8403 (rule!11669 (_1!34418 (get!19961 lt!2055123)))) (seqFromList!6044 (originalCharacters!8680 (_1!34418 (get!19961 lt!2055123)))))))))

(declare-fun b!4976045 () Bool)

(assert (=> b!4976045 (= e!3109899 e!3109897)))

(declare-fun res!2124101 () Bool)

(assert (=> b!4976045 (=> (not res!2124101) (not e!3109897))))

(assert (=> b!4976045 (= res!2124101 (isDefined!11378 lt!2055123))))

(declare-fun b!4976046 () Bool)

(declare-fun contains!19546 (List!57602 Rule!16606) Bool)

(assert (=> b!4976046 (= e!3109897 (contains!19546 rulesArg!259 (rule!11669 (_1!34418 (get!19961 lt!2055123)))))))

(declare-fun b!4976047 () Bool)

(declare-fun res!2124096 () Bool)

(assert (=> b!4976047 (=> (not res!2124096) (not e!3109897))))

(assert (=> b!4976047 (= res!2124096 (< (size!38104 (_2!34418 (get!19961 lt!2055123))) (size!38104 lt!2055052)))))

(declare-fun bm!347054 () Bool)

(declare-fun maxPrefixOneRule!3637 (LexerInterface!7995 Rule!16606 List!57601) Option!14466)

(assert (=> bm!347054 (= call!347059 (maxPrefixOneRule!3637 thiss!15247 (h!63926 rulesArg!259) lt!2055052))))

(declare-fun b!4976048 () Bool)

(declare-fun res!2124100 () Bool)

(assert (=> b!4976048 (=> (not res!2124100) (not e!3109897))))

(assert (=> b!4976048 (= res!2124100 (= (list!18391 (charsOf!5445 (_1!34418 (get!19961 lt!2055123)))) (originalCharacters!8680 (_1!34418 (get!19961 lt!2055123)))))))

(declare-fun b!4976049 () Bool)

(declare-fun res!2124098 () Bool)

(assert (=> b!4976049 (=> (not res!2124098) (not e!3109897))))

(declare-fun matchR!6644 (Regex!13636 List!57601) Bool)

(assert (=> b!4976049 (= res!2124098 (matchR!6644 (regex!8403 (rule!11669 (_1!34418 (get!19961 lt!2055123)))) (list!18391 (charsOf!5445 (_1!34418 (get!19961 lt!2055123))))))))

(assert (= (and d!1602801 c!849135) b!4976043))

(assert (= (and d!1602801 (not c!849135)) b!4976042))

(assert (= (or b!4976043 b!4976042) bm!347054))

(assert (= (and d!1602801 (not res!2124095)) b!4976045))

(assert (= (and b!4976045 res!2124101) b!4976048))

(assert (= (and b!4976048 res!2124100) b!4976047))

(assert (= (and b!4976047 res!2124096) b!4976041))

(assert (= (and b!4976041 res!2124099) b!4976044))

(assert (= (and b!4976044 res!2124097) b!4976049))

(assert (= (and b!4976049 res!2124098) b!4976046))

(declare-fun m!6006348 () Bool)

(assert (=> b!4976041 m!6006348))

(declare-fun m!6006350 () Bool)

(assert (=> b!4976041 m!6006350))

(assert (=> b!4976041 m!6006350))

(declare-fun m!6006352 () Bool)

(assert (=> b!4976041 m!6006352))

(assert (=> b!4976041 m!6006352))

(declare-fun m!6006354 () Bool)

(assert (=> b!4976041 m!6006354))

(assert (=> b!4976044 m!6006348))

(declare-fun m!6006356 () Bool)

(assert (=> b!4976044 m!6006356))

(assert (=> b!4976044 m!6006356))

(declare-fun m!6006358 () Bool)

(assert (=> b!4976044 m!6006358))

(declare-fun m!6006360 () Bool)

(assert (=> bm!347054 m!6006360))

(declare-fun m!6006362 () Bool)

(assert (=> d!1602801 m!6006362))

(assert (=> d!1602801 m!6006166))

(assert (=> d!1602801 m!6006168))

(assert (=> d!1602801 m!6006158))

(assert (=> b!4976046 m!6006348))

(declare-fun m!6006364 () Bool)

(assert (=> b!4976046 m!6006364))

(assert (=> b!4976048 m!6006348))

(assert (=> b!4976048 m!6006350))

(assert (=> b!4976048 m!6006350))

(assert (=> b!4976048 m!6006352))

(assert (=> b!4976047 m!6006348))

(declare-fun m!6006366 () Bool)

(assert (=> b!4976047 m!6006366))

(declare-fun m!6006368 () Bool)

(assert (=> b!4976047 m!6006368))

(assert (=> b!4976049 m!6006348))

(assert (=> b!4976049 m!6006350))

(assert (=> b!4976049 m!6006350))

(assert (=> b!4976049 m!6006352))

(assert (=> b!4976049 m!6006352))

(declare-fun m!6006370 () Bool)

(assert (=> b!4976049 m!6006370))

(declare-fun m!6006372 () Bool)

(assert (=> b!4976042 m!6006372))

(declare-fun m!6006374 () Bool)

(assert (=> b!4976045 m!6006374))

(assert (=> b!4975869 d!1602801))

(declare-fun d!1602803 () Bool)

(assert (=> d!1602803 (= (get!19962 lt!2055047) (v!50461 lt!2055047))))

(assert (=> b!4975869 d!1602803))

(declare-fun d!1602805 () Bool)

(assert (=> d!1602805 (= (get!19961 lt!2055043) (v!50462 lt!2055043))))

(assert (=> b!4975862 d!1602805))

(assert (=> b!4975862 d!1602803))

(declare-fun b!4976060 () Bool)

(declare-fun e!3109906 () Bool)

(declare-fun tail!9810 (List!57601) List!57601)

(assert (=> b!4976060 (= e!3109906 (isPrefix!5254 (tail!9810 lt!2055052) (tail!9810 lt!2055052)))))

(declare-fun b!4976058 () Bool)

(declare-fun e!3109907 () Bool)

(assert (=> b!4976058 (= e!3109907 e!3109906)))

(declare-fun res!2124113 () Bool)

(assert (=> b!4976058 (=> (not res!2124113) (not e!3109906))))

(assert (=> b!4976058 (= res!2124113 (not (is-Nil!57477 lt!2055052)))))

(declare-fun b!4976059 () Bool)

(declare-fun res!2124110 () Bool)

(assert (=> b!4976059 (=> (not res!2124110) (not e!3109906))))

(declare-fun head!10677 (List!57601) C!27522)

(assert (=> b!4976059 (= res!2124110 (= (head!10677 lt!2055052) (head!10677 lt!2055052)))))

(declare-fun b!4976061 () Bool)

(declare-fun e!3109908 () Bool)

(assert (=> b!4976061 (= e!3109908 (>= (size!38104 lt!2055052) (size!38104 lt!2055052)))))

(declare-fun d!1602807 () Bool)

(assert (=> d!1602807 e!3109908))

(declare-fun res!2124111 () Bool)

(assert (=> d!1602807 (=> res!2124111 e!3109908)))

(declare-fun lt!2055126 () Bool)

(assert (=> d!1602807 (= res!2124111 (not lt!2055126))))

(assert (=> d!1602807 (= lt!2055126 e!3109907)))

(declare-fun res!2124112 () Bool)

(assert (=> d!1602807 (=> res!2124112 e!3109907)))

(assert (=> d!1602807 (= res!2124112 (is-Nil!57477 lt!2055052))))

(assert (=> d!1602807 (= (isPrefix!5254 lt!2055052 lt!2055052) lt!2055126)))

(assert (= (and d!1602807 (not res!2124112)) b!4976058))

(assert (= (and b!4976058 res!2124113) b!4976059))

(assert (= (and b!4976059 res!2124110) b!4976060))

(assert (= (and d!1602807 (not res!2124111)) b!4976061))

(declare-fun m!6006376 () Bool)

(assert (=> b!4976060 m!6006376))

(assert (=> b!4976060 m!6006376))

(assert (=> b!4976060 m!6006376))

(assert (=> b!4976060 m!6006376))

(declare-fun m!6006378 () Bool)

(assert (=> b!4976060 m!6006378))

(declare-fun m!6006380 () Bool)

(assert (=> b!4976059 m!6006380))

(assert (=> b!4976059 m!6006380))

(assert (=> b!4976061 m!6006368))

(assert (=> b!4976061 m!6006368))

(assert (=> b!4975871 d!1602807))

(declare-fun d!1602809 () Bool)

(assert (=> d!1602809 (isPrefix!5254 lt!2055052 lt!2055052)))

(declare-fun lt!2055129 () Unit!148473)

(declare-fun choose!36734 (List!57601 List!57601) Unit!148473)

(assert (=> d!1602809 (= lt!2055129 (choose!36734 lt!2055052 lt!2055052))))

(assert (=> d!1602809 (= (lemmaIsPrefixRefl!3578 lt!2055052 lt!2055052) lt!2055129)))

(declare-fun bs!1183962 () Bool)

(assert (= bs!1183962 d!1602809))

(assert (=> bs!1183962 m!6006166))

(declare-fun m!6006382 () Bool)

(assert (=> bs!1183962 m!6006382))

(assert (=> b!4975871 d!1602809))

(declare-fun d!1602811 () Bool)

(declare-fun c!849136 () Bool)

(assert (=> d!1602811 (= c!849136 (is-Node!15155 (c!849119 (_2!34417 (v!50461 err!4589)))))))

(declare-fun e!3109909 () Bool)

(assert (=> d!1602811 (= (inv!75147 (c!849119 (_2!34417 (v!50461 err!4589)))) e!3109909)))

(declare-fun b!4976062 () Bool)

(assert (=> b!4976062 (= e!3109909 (inv!75154 (c!849119 (_2!34417 (v!50461 err!4589)))))))

(declare-fun b!4976063 () Bool)

(declare-fun e!3109910 () Bool)

(assert (=> b!4976063 (= e!3109909 e!3109910)))

(declare-fun res!2124114 () Bool)

(assert (=> b!4976063 (= res!2124114 (not (is-Leaf!25182 (c!849119 (_2!34417 (v!50461 err!4589))))))))

(assert (=> b!4976063 (=> res!2124114 e!3109910)))

(declare-fun b!4976064 () Bool)

(assert (=> b!4976064 (= e!3109910 (inv!75155 (c!849119 (_2!34417 (v!50461 err!4589)))))))

(assert (= (and d!1602811 c!849136) b!4976062))

(assert (= (and d!1602811 (not c!849136)) b!4976063))

(assert (= (and b!4976063 (not res!2124114)) b!4976064))

(declare-fun m!6006384 () Bool)

(assert (=> b!4976062 m!6006384))

(declare-fun m!6006386 () Bool)

(assert (=> b!4976064 m!6006386))

(assert (=> b!4975872 d!1602811))

(declare-fun d!1602813 () Bool)

(assert (=> d!1602813 (= (isDefined!11378 lt!2055043) (not (isEmpty!30986 lt!2055043)))))

(declare-fun bs!1183963 () Bool)

(assert (= bs!1183963 d!1602813))

(declare-fun m!6006388 () Bool)

(assert (=> bs!1183963 m!6006388))

(assert (=> b!4975861 d!1602813))

(declare-fun d!1602815 () Bool)

(declare-fun isEmpty!30987 (Option!14465) Bool)

(assert (=> d!1602815 (= (isDefined!11379 lt!2055047) (not (isEmpty!30987 lt!2055047)))))

(declare-fun bs!1183964 () Bool)

(assert (= bs!1183964 d!1602815))

(declare-fun m!6006390 () Bool)

(assert (=> bs!1183964 m!6006390))

(assert (=> b!4975861 d!1602815))

(declare-fun d!1602817 () Bool)

(declare-fun lt!2055143 () Option!14466)

(assert (=> d!1602817 (= lt!2055143 (maxPrefix!4668 thiss!15247 rulesArg!259 lt!2055052))))

(declare-fun e!3109913 () Option!14466)

(assert (=> d!1602817 (= lt!2055143 e!3109913)))

(declare-fun c!849139 () Bool)

(assert (=> d!1602817 (= c!849139 (and (is-Cons!57478 rulesArg!259) (is-Nil!57478 (t!369602 rulesArg!259))))))

(declare-fun lt!2055144 () Unit!148473)

(declare-fun lt!2055141 () Unit!148473)

(assert (=> d!1602817 (= lt!2055144 lt!2055141)))

(assert (=> d!1602817 (isPrefix!5254 lt!2055052 lt!2055052)))

(assert (=> d!1602817 (= lt!2055141 (lemmaIsPrefixRefl!3578 lt!2055052 lt!2055052))))

(assert (=> d!1602817 (rulesValidInductive!3306 thiss!15247 rulesArg!259)))

(assert (=> d!1602817 (= (maxPrefixZipper!794 thiss!15247 rulesArg!259 lt!2055052) lt!2055143)))

(declare-fun call!347062 () Option!14466)

(declare-fun bm!347057 () Bool)

(declare-fun maxPrefixOneRuleZipper!304 (LexerInterface!7995 Rule!16606 List!57601) Option!14466)

(assert (=> bm!347057 (= call!347062 (maxPrefixOneRuleZipper!304 thiss!15247 (h!63926 rulesArg!259) lt!2055052))))

(declare-fun b!4976069 () Bool)

(assert (=> b!4976069 (= e!3109913 call!347062)))

(declare-fun b!4976070 () Bool)

(declare-fun lt!2055140 () Option!14466)

(declare-fun lt!2055142 () Option!14466)

(assert (=> b!4976070 (= e!3109913 (ite (and (is-None!14465 lt!2055140) (is-None!14465 lt!2055142)) None!14465 (ite (is-None!14465 lt!2055142) lt!2055140 (ite (is-None!14465 lt!2055140) lt!2055142 (ite (>= (size!38102 (_1!34418 (v!50462 lt!2055140))) (size!38102 (_1!34418 (v!50462 lt!2055142)))) lt!2055140 lt!2055142)))))))

(assert (=> b!4976070 (= lt!2055140 call!347062)))

(assert (=> b!4976070 (= lt!2055142 (maxPrefixZipper!794 thiss!15247 (t!369602 rulesArg!259) lt!2055052))))

(assert (= (and d!1602817 c!849139) b!4976069))

(assert (= (and d!1602817 (not c!849139)) b!4976070))

(assert (= (or b!4976069 b!4976070) bm!347057))

(assert (=> d!1602817 m!6006172))

(assert (=> d!1602817 m!6006166))

(assert (=> d!1602817 m!6006168))

(assert (=> d!1602817 m!6006158))

(declare-fun m!6006392 () Bool)

(assert (=> bm!347057 m!6006392))

(declare-fun m!6006394 () Bool)

(assert (=> b!4976070 m!6006394))

(assert (=> b!4975861 d!1602817))

(declare-fun d!1602819 () Bool)

(assert (=> d!1602819 (= (inv!75143 (tag!9267 (rule!11669 (_1!34417 (v!50461 err!4589))))) (= (mod (str.len (value!268924 (tag!9267 (rule!11669 (_1!34417 (v!50461 err!4589)))))) 2) 0))))

(assert (=> b!4975854 d!1602819))

(declare-fun d!1602821 () Bool)

(declare-fun res!2124115 () Bool)

(declare-fun e!3109914 () Bool)

(assert (=> d!1602821 (=> (not res!2124115) (not e!3109914))))

(assert (=> d!1602821 (= res!2124115 (semiInverseModEq!3709 (toChars!11237 (transformation!8403 (rule!11669 (_1!34417 (v!50461 err!4589))))) (toValue!11378 (transformation!8403 (rule!11669 (_1!34417 (v!50461 err!4589)))))))))

(assert (=> d!1602821 (= (inv!75146 (transformation!8403 (rule!11669 (_1!34417 (v!50461 err!4589))))) e!3109914)))

(declare-fun b!4976071 () Bool)

(assert (=> b!4976071 (= e!3109914 (equivClasses!3557 (toChars!11237 (transformation!8403 (rule!11669 (_1!34417 (v!50461 err!4589))))) (toValue!11378 (transformation!8403 (rule!11669 (_1!34417 (v!50461 err!4589)))))))))

(assert (= (and d!1602821 res!2124115) b!4976071))

(declare-fun m!6006396 () Bool)

(assert (=> d!1602821 m!6006396))

(declare-fun m!6006398 () Bool)

(assert (=> b!4976071 m!6006398))

(assert (=> b!4975854 d!1602821))

(declare-fun d!1602823 () Bool)

(declare-fun c!849145 () Bool)

(assert (=> d!1602823 (= c!849145 (is-IntegerValue!26139 (value!268925 (_1!34417 (v!50461 err!4589)))))))

(declare-fun e!3109922 () Bool)

(assert (=> d!1602823 (= (inv!21 (value!268925 (_1!34417 (v!50461 err!4589)))) e!3109922)))

(declare-fun b!4976082 () Bool)

(declare-fun res!2124118 () Bool)

(declare-fun e!3109923 () Bool)

(assert (=> b!4976082 (=> res!2124118 e!3109923)))

(assert (=> b!4976082 (= res!2124118 (not (is-IntegerValue!26141 (value!268925 (_1!34417 (v!50461 err!4589))))))))

(declare-fun e!3109921 () Bool)

(assert (=> b!4976082 (= e!3109921 e!3109923)))

(declare-fun b!4976083 () Bool)

(declare-fun inv!16 (TokenValue!8713) Bool)

(assert (=> b!4976083 (= e!3109922 (inv!16 (value!268925 (_1!34417 (v!50461 err!4589)))))))

(declare-fun b!4976084 () Bool)

(declare-fun inv!17 (TokenValue!8713) Bool)

(assert (=> b!4976084 (= e!3109921 (inv!17 (value!268925 (_1!34417 (v!50461 err!4589)))))))

(declare-fun b!4976085 () Bool)

(declare-fun inv!15 (TokenValue!8713) Bool)

(assert (=> b!4976085 (= e!3109923 (inv!15 (value!268925 (_1!34417 (v!50461 err!4589)))))))

(declare-fun b!4976086 () Bool)

(assert (=> b!4976086 (= e!3109922 e!3109921)))

(declare-fun c!849144 () Bool)

(assert (=> b!4976086 (= c!849144 (is-IntegerValue!26140 (value!268925 (_1!34417 (v!50461 err!4589)))))))

(assert (= (and d!1602823 c!849145) b!4976083))

(assert (= (and d!1602823 (not c!849145)) b!4976086))

(assert (= (and b!4976086 c!849144) b!4976084))

(assert (= (and b!4976086 (not c!849144)) b!4976082))

(assert (= (and b!4976082 (not res!2124118)) b!4976085))

(declare-fun m!6006400 () Bool)

(assert (=> b!4976083 m!6006400))

(declare-fun m!6006402 () Bool)

(assert (=> b!4976084 m!6006402))

(declare-fun m!6006404 () Bool)

(assert (=> b!4976085 m!6006404))

(assert (=> b!4975865 d!1602823))

(declare-fun d!1602825 () Bool)

(declare-fun e!3109926 () Bool)

(assert (=> d!1602825 e!3109926))

(declare-fun res!2124121 () Bool)

(assert (=> d!1602825 (=> res!2124121 e!3109926)))

(declare-fun lt!2055147 () Bool)

(assert (=> d!1602825 (= res!2124121 (not lt!2055147))))

(declare-fun drop!2358 (List!57601 Int) List!57601)

(assert (=> d!1602825 (= lt!2055147 (= lt!2055052 (drop!2358 (list!18391 totalInput!464) (- (size!38104 (list!18391 totalInput!464)) (size!38104 lt!2055052)))))))

(assert (=> d!1602825 (= (isSuffix!1202 lt!2055052 (list!18391 totalInput!464)) lt!2055147)))

(declare-fun b!4976089 () Bool)

(assert (=> b!4976089 (= e!3109926 (>= (size!38104 (list!18391 totalInput!464)) (size!38104 lt!2055052)))))

(assert (= (and d!1602825 (not res!2124121)) b!4976089))

(assert (=> d!1602825 m!6006152))

(declare-fun m!6006406 () Bool)

(assert (=> d!1602825 m!6006406))

(assert (=> d!1602825 m!6006368))

(assert (=> d!1602825 m!6006152))

(declare-fun m!6006408 () Bool)

(assert (=> d!1602825 m!6006408))

(assert (=> b!4976089 m!6006152))

(assert (=> b!4976089 m!6006406))

(assert (=> b!4976089 m!6006368))

(assert (=> b!4975863 d!1602825))

(declare-fun d!1602827 () Bool)

(assert (=> d!1602827 (= (list!18391 totalInput!464) (list!18393 (c!849119 totalInput!464)))))

(declare-fun bs!1183965 () Bool)

(assert (= bs!1183965 d!1602827))

(declare-fun m!6006410 () Bool)

(assert (=> bs!1183965 m!6006410))

(assert (=> b!4975863 d!1602827))

(declare-fun d!1602829 () Bool)

(assert (=> d!1602829 (= (list!18391 input!1342) (list!18393 (c!849119 input!1342)))))

(declare-fun bs!1183966 () Bool)

(assert (= bs!1183966 d!1602829))

(declare-fun m!6006412 () Bool)

(assert (=> bs!1183966 m!6006412))

(assert (=> b!4975863 d!1602829))

(declare-fun d!1602831 () Bool)

(assert (=> d!1602831 (= (isEmpty!30983 rulesArg!259) (is-Nil!57478 rulesArg!259))))

(assert (=> b!4975853 d!1602831))

(declare-fun b!4976103 () Bool)

(declare-fun e!3109929 () Bool)

(declare-fun tp!1395196 () Bool)

(declare-fun tp!1395199 () Bool)

(assert (=> b!4976103 (= e!3109929 (and tp!1395196 tp!1395199))))

(declare-fun b!4976101 () Bool)

(declare-fun tp!1395197 () Bool)

(declare-fun tp!1395198 () Bool)

(assert (=> b!4976101 (= e!3109929 (and tp!1395197 tp!1395198))))

(declare-fun b!4976102 () Bool)

(declare-fun tp!1395200 () Bool)

(assert (=> b!4976102 (= e!3109929 tp!1395200)))

(declare-fun b!4976100 () Bool)

(declare-fun tp_is_empty!36353 () Bool)

(assert (=> b!4976100 (= e!3109929 tp_is_empty!36353)))

(assert (=> b!4975857 (= tp!1395149 e!3109929)))

(assert (= (and b!4975857 (is-ElementMatch!13636 (regex!8403 (h!63926 rulesArg!259)))) b!4976100))

(assert (= (and b!4975857 (is-Concat!22350 (regex!8403 (h!63926 rulesArg!259)))) b!4976101))

(assert (= (and b!4975857 (is-Star!13636 (regex!8403 (h!63926 rulesArg!259)))) b!4976102))

(assert (= (and b!4975857 (is-Union!13636 (regex!8403 (h!63926 rulesArg!259)))) b!4976103))

(declare-fun e!3109935 () Bool)

(declare-fun tp!1395209 () Bool)

(declare-fun b!4976112 () Bool)

(declare-fun tp!1395208 () Bool)

(assert (=> b!4976112 (= e!3109935 (and (inv!75147 (left!41935 (c!849119 input!1342))) tp!1395209 (inv!75147 (right!42265 (c!849119 input!1342))) tp!1395208))))

(declare-fun b!4976114 () Bool)

(declare-fun e!3109934 () Bool)

(declare-fun tp!1395207 () Bool)

(assert (=> b!4976114 (= e!3109934 tp!1395207)))

(declare-fun b!4976113 () Bool)

(declare-fun inv!75156 (IArray!30371) Bool)

(assert (=> b!4976113 (= e!3109935 (and (inv!75156 (xs!18481 (c!849119 input!1342))) e!3109934))))

(assert (=> b!4975866 (= tp!1395142 (and (inv!75147 (c!849119 input!1342)) e!3109935))))

(assert (= (and b!4975866 (is-Node!15155 (c!849119 input!1342))) b!4976112))

(assert (= b!4976113 b!4976114))

(assert (= (and b!4975866 (is-Leaf!25182 (c!849119 input!1342))) b!4976113))

(declare-fun m!6006414 () Bool)

(assert (=> b!4976112 m!6006414))

(declare-fun m!6006416 () Bool)

(assert (=> b!4976112 m!6006416))

(declare-fun m!6006418 () Bool)

(assert (=> b!4976113 m!6006418))

(assert (=> b!4975866 m!6006170))

(declare-fun tp!1395211 () Bool)

(declare-fun tp!1395212 () Bool)

(declare-fun e!3109937 () Bool)

(declare-fun b!4976115 () Bool)

(assert (=> b!4976115 (= e!3109937 (and (inv!75147 (left!41935 (c!849119 totalInput!464))) tp!1395212 (inv!75147 (right!42265 (c!849119 totalInput!464))) tp!1395211))))

(declare-fun b!4976117 () Bool)

(declare-fun e!3109936 () Bool)

(declare-fun tp!1395210 () Bool)

(assert (=> b!4976117 (= e!3109936 tp!1395210)))

(declare-fun b!4976116 () Bool)

(assert (=> b!4976116 (= e!3109937 (and (inv!75156 (xs!18481 (c!849119 totalInput!464))) e!3109936))))

(assert (=> b!4975855 (= tp!1395140 (and (inv!75147 (c!849119 totalInput!464)) e!3109937))))

(assert (= (and b!4975855 (is-Node!15155 (c!849119 totalInput!464))) b!4976115))

(assert (= b!4976116 b!4976117))

(assert (= (and b!4975855 (is-Leaf!25182 (c!849119 totalInput!464))) b!4976116))

(declare-fun m!6006420 () Bool)

(assert (=> b!4976115 m!6006420))

(declare-fun m!6006422 () Bool)

(assert (=> b!4976115 m!6006422))

(declare-fun m!6006424 () Bool)

(assert (=> b!4976116 m!6006424))

(assert (=> b!4975855 m!6006162))

(declare-fun e!3109939 () Bool)

(declare-fun tp!1395214 () Bool)

(declare-fun tp!1395215 () Bool)

(declare-fun b!4976118 () Bool)

(assert (=> b!4976118 (= e!3109939 (and (inv!75147 (left!41935 (c!849119 (_2!34417 (v!50461 err!4589))))) tp!1395215 (inv!75147 (right!42265 (c!849119 (_2!34417 (v!50461 err!4589))))) tp!1395214))))

(declare-fun b!4976120 () Bool)

(declare-fun e!3109938 () Bool)

(declare-fun tp!1395213 () Bool)

(assert (=> b!4976120 (= e!3109938 tp!1395213)))

(declare-fun b!4976119 () Bool)

(assert (=> b!4976119 (= e!3109939 (and (inv!75156 (xs!18481 (c!849119 (_2!34417 (v!50461 err!4589))))) e!3109938))))

(assert (=> b!4975872 (= tp!1395148 (and (inv!75147 (c!849119 (_2!34417 (v!50461 err!4589)))) e!3109939))))

(assert (= (and b!4975872 (is-Node!15155 (c!849119 (_2!34417 (v!50461 err!4589))))) b!4976118))

(assert (= b!4976119 b!4976120))

(assert (= (and b!4975872 (is-Leaf!25182 (c!849119 (_2!34417 (v!50461 err!4589))))) b!4976119))

(declare-fun m!6006426 () Bool)

(assert (=> b!4976118 m!6006426))

(declare-fun m!6006428 () Bool)

(assert (=> b!4976118 m!6006428))

(declare-fun m!6006430 () Bool)

(assert (=> b!4976119 m!6006430))

(assert (=> b!4975872 m!6006150))

(declare-fun b!4976124 () Bool)

(declare-fun e!3109940 () Bool)

(declare-fun tp!1395216 () Bool)

(declare-fun tp!1395219 () Bool)

(assert (=> b!4976124 (= e!3109940 (and tp!1395216 tp!1395219))))

(declare-fun b!4976122 () Bool)

(declare-fun tp!1395217 () Bool)

(declare-fun tp!1395218 () Bool)

(assert (=> b!4976122 (= e!3109940 (and tp!1395217 tp!1395218))))

(declare-fun b!4976123 () Bool)

(declare-fun tp!1395220 () Bool)

(assert (=> b!4976123 (= e!3109940 tp!1395220)))

(declare-fun b!4976121 () Bool)

(assert (=> b!4976121 (= e!3109940 tp_is_empty!36353)))

(assert (=> b!4975854 (= tp!1395141 e!3109940)))

(assert (= (and b!4975854 (is-ElementMatch!13636 (regex!8403 (rule!11669 (_1!34417 (v!50461 err!4589)))))) b!4976121))

(assert (= (and b!4975854 (is-Concat!22350 (regex!8403 (rule!11669 (_1!34417 (v!50461 err!4589)))))) b!4976122))

(assert (= (and b!4975854 (is-Star!13636 (regex!8403 (rule!11669 (_1!34417 (v!50461 err!4589)))))) b!4976123))

(assert (= (and b!4975854 (is-Union!13636 (regex!8403 (rule!11669 (_1!34417 (v!50461 err!4589)))))) b!4976124))

(declare-fun b!4976129 () Bool)

(declare-fun e!3109943 () Bool)

(declare-fun tp!1395223 () Bool)

(assert (=> b!4976129 (= e!3109943 (and tp_is_empty!36353 tp!1395223))))

(assert (=> b!4975865 (= tp!1395143 e!3109943)))

(assert (= (and b!4975865 (is-Cons!57477 (originalCharacters!8680 (_1!34417 (v!50461 err!4589))))) b!4976129))

(declare-fun b!4976140 () Bool)

(declare-fun b_free!132911 () Bool)

(declare-fun b_next!133701 () Bool)

(assert (=> b!4976140 (= b_free!132911 (not b_next!133701))))

(declare-fun tp!1395232 () Bool)

(declare-fun b_and!349319 () Bool)

(assert (=> b!4976140 (= tp!1395232 b_and!349319)))

(declare-fun b_free!132913 () Bool)

(declare-fun b_next!133703 () Bool)

(assert (=> b!4976140 (= b_free!132913 (not b_next!133703))))

(declare-fun t!369611 () Bool)

(declare-fun tb!261527 () Bool)

(assert (=> (and b!4976140 (= (toChars!11237 (transformation!8403 (h!63926 (t!369602 rulesArg!259)))) (toChars!11237 (transformation!8403 (rule!11669 (_1!34417 (v!50461 err!4589)))))) t!369611) tb!261527))

(declare-fun result!326740 () Bool)

(assert (= result!326740 result!326726))

(assert (=> b!4976016 t!369611))

(declare-fun tp!1395235 () Bool)

(declare-fun b_and!349321 () Bool)

(assert (=> b!4976140 (= tp!1395235 (and (=> t!369611 result!326740) b_and!349321))))

(declare-fun e!3109952 () Bool)

(assert (=> b!4976140 (= e!3109952 (and tp!1395232 tp!1395235))))

(declare-fun tp!1395234 () Bool)

(declare-fun b!4976139 () Bool)

(declare-fun e!3109954 () Bool)

(assert (=> b!4976139 (= e!3109954 (and tp!1395234 (inv!75143 (tag!9267 (h!63926 (t!369602 rulesArg!259)))) (inv!75146 (transformation!8403 (h!63926 (t!369602 rulesArg!259)))) e!3109952))))

(declare-fun b!4976138 () Bool)

(declare-fun e!3109953 () Bool)

(declare-fun tp!1395233 () Bool)

(assert (=> b!4976138 (= e!3109953 (and e!3109954 tp!1395233))))

(assert (=> b!4975864 (= tp!1395146 e!3109953)))

(assert (= b!4976139 b!4976140))

(assert (= b!4976138 b!4976139))

(assert (= (and b!4975864 (is-Cons!57478 (t!369602 rulesArg!259))) b!4976138))

(declare-fun m!6006432 () Bool)

(assert (=> b!4976139 m!6006432))

(declare-fun m!6006434 () Bool)

(assert (=> b!4976139 m!6006434))

(declare-fun b_lambda!197591 () Bool)

(assert (= b_lambda!197589 (or (and b!4975868 b_free!132897) (and b!4975870 b_free!132901 (= (toChars!11237 (transformation!8403 (h!63926 rulesArg!259))) (toChars!11237 (transformation!8403 (rule!11669 (_1!34417 (v!50461 err!4589))))))) (and b!4976140 b_free!132913 (= (toChars!11237 (transformation!8403 (h!63926 (t!369602 rulesArg!259)))) (toChars!11237 (transformation!8403 (rule!11669 (_1!34417 (v!50461 err!4589))))))) b_lambda!197591)))

(push 1)

(assert (not d!1602821))

(assert (not b!4976016))

(assert (not b!4975949))

(assert (not b!4976113))

(assert b_and!349303)

(assert (not d!1602755))

(assert b_and!349299)

(assert (not d!1602763))

(assert (not b_next!133689))

(assert (not b!4976061))

(assert (not b_next!133687))

(assert (not b!4976046))

(assert (not d!1602769))

(assert (not bm!347054))

(assert (not b!4976060))

(assert (not b!4976112))

(assert (not d!1602813))

(assert (not b!4976070))

(assert (not b!4976083))

(assert (not b!4976064))

(assert (not b!4976017))

(assert (not d!1602809))

(assert (not b!4976049))

(assert (not b!4976059))

(assert (not b!4976122))

(assert (not b!4976062))

(assert (not b_next!133703))

(assert (not b!4976041))

(assert (not b!4976045))

(assert (not b!4976048))

(assert (not d!1602829))

(assert (not b!4976089))

(assert (not b!4976120))

(assert (not b!4976124))

(assert (not b!4976123))

(assert (not b!4975866))

(assert (not b!4975946))

(assert (not bm!347057))

(assert (not b!4976116))

(assert (not b!4976071))

(assert (not b!4975872))

(assert b_and!349317)

(assert (not b!4976103))

(assert (not b_next!133691))

(assert (not b!4976139))

(assert (not b!4976085))

(assert b_and!349321)

(assert (not d!1602795))

(assert b_and!349319)

(assert (not b_next!133701))

(assert (not d!1602793))

(assert (not b!4976044))

(assert (not b!4976101))

(assert (not d!1602827))

(assert (not b!4976117))

(assert (not d!1602815))

(assert (not b!4976084))

(assert tp_is_empty!36353)

(assert (not b_next!133685))

(assert (not d!1602801))

(assert (not d!1602757))

(assert (not b!4976102))

(assert (not b!4976115))

(assert (not b!4976047))

(assert (not b!4975951))

(assert (not d!1602817))

(assert (not b!4976129))

(assert (not b!4976022))

(assert (not b!4976138))

(assert (not b!4975939))

(assert b_and!349315)

(assert (not b!4976114))

(assert (not b!4976009))

(assert (not b!4976119))

(assert (not b!4976118))

(assert (not b!4976008))

(assert (not b!4975948))

(assert (not tb!261523))

(assert (not b!4976042))

(assert (not b_lambda!197591))

(assert (not d!1602825))

(assert (not b!4975855))

(assert (not d!1602759))

(assert (not d!1602797))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!133687))

(assert (not b_next!133703))

(assert b_and!349321)

(assert (not b_next!133685))

(assert b_and!349315)

(assert b_and!349303)

(assert b_and!349299)

(assert (not b_next!133689))

(assert b_and!349317)

(assert (not b_next!133691))

(assert b_and!349319)

(assert (not b_next!133701))

(check-sat)

(pop 1)

