; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!537236 () Bool)

(assert start!537236)

(declare-fun b!5095904 () Bool)

(declare-fun b_free!133439 () Bool)

(declare-fun b_next!134229 () Bool)

(assert (=> b!5095904 (= b_free!133439 (not b_next!134229))))

(declare-fun tp!1421004 () Bool)

(declare-fun b_and!350323 () Bool)

(assert (=> b!5095904 (= tp!1421004 b_and!350323)))

(declare-fun b_free!133441 () Bool)

(declare-fun b_next!134231 () Bool)

(assert (=> b!5095904 (= b_free!133441 (not b_next!134231))))

(declare-fun tp!1421007 () Bool)

(declare-fun b_and!350325 () Bool)

(assert (=> b!5095904 (= tp!1421007 b_and!350325)))

(declare-fun b!5095905 () Bool)

(declare-fun b_free!133443 () Bool)

(declare-fun b_next!134233 () Bool)

(assert (=> b!5095905 (= b_free!133443 (not b_next!134233))))

(declare-fun tp!1421008 () Bool)

(declare-fun b_and!350327 () Bool)

(assert (=> b!5095905 (= tp!1421008 b_and!350327)))

(declare-fun b_free!133445 () Bool)

(declare-fun b_next!134235 () Bool)

(assert (=> b!5095905 (= b_free!133445 (not b_next!134235))))

(declare-fun tp!1421012 () Bool)

(declare-fun b_and!350329 () Bool)

(assert (=> b!5095905 (= tp!1421012 b_and!350329)))

(declare-fun b!5095901 () Bool)

(declare-fun res!2168794 () Bool)

(declare-fun e!3178139 () Bool)

(assert (=> b!5095901 (=> (not res!2168794) (not e!3178139))))

(declare-datatypes ((List!58764 0))(
  ( (Nil!58640) (Cons!58640 (h!65088 (_ BitVec 16)) (t!371719 List!58764)) )
))
(declare-datatypes ((TokenValue!8829 0))(
  ( (FloatLiteralValue!17658 (text!62248 List!58764)) (TokenValueExt!8828 (__x!34947 Int)) (Broken!44145 (value!272961 List!58764)) (Object!8952) (End!8829) (Def!8829) (Underscore!8829) (Match!8829) (Else!8829) (Error!8829) (Case!8829) (If!8829) (Extends!8829) (Abstract!8829) (Class!8829) (Val!8829) (DelimiterValue!17658 (del!8889 List!58764)) (KeywordValue!8835 (value!272962 List!58764)) (CommentValue!17658 (value!272963 List!58764)) (WhitespaceValue!17658 (value!272964 List!58764)) (IndentationValue!8829 (value!272965 List!58764)) (String!67068) (Int32!8829) (Broken!44146 (value!272966 List!58764)) (Boolean!8830) (Unit!149681) (OperatorValue!8832 (op!8889 List!58764)) (IdentifierValue!17658 (value!272967 List!58764)) (IdentifierValue!17659 (value!272968 List!58764)) (WhitespaceValue!17659 (value!272969 List!58764)) (True!17658) (False!17658) (Broken!44147 (value!272970 List!58764)) (Broken!44148 (value!272971 List!58764)) (True!17659) (RightBrace!8829) (RightBracket!8829) (Colon!8829) (Null!8829) (Comma!8829) (LeftBracket!8829) (False!17659) (LeftBrace!8829) (ImaginaryLiteralValue!8829 (text!62249 List!58764)) (StringLiteralValue!26487 (value!272972 List!58764)) (EOFValue!8829 (value!272973 List!58764)) (IdentValue!8829 (value!272974 List!58764)) (DelimiterValue!17659 (value!272975 List!58764)) (DedentValue!8829 (value!272976 List!58764)) (NewLineValue!8829 (value!272977 List!58764)) (IntegerValue!26487 (value!272978 (_ BitVec 32)) (text!62250 List!58764)) (IntegerValue!26488 (value!272979 Int) (text!62251 List!58764)) (Times!8829) (Or!8829) (Equal!8829) (Minus!8829) (Broken!44149 (value!272980 List!58764)) (And!8829) (Div!8829) (LessEqual!8829) (Mod!8829) (Concat!22819) (Not!8829) (Plus!8829) (SpaceValue!8829 (value!272981 List!58764)) (IntegerValue!26489 (value!272982 Int) (text!62252 List!58764)) (StringLiteralValue!26488 (text!62253 List!58764)) (FloatLiteralValue!17659 (text!62254 List!58764)) (BytesLiteralValue!8829 (value!272983 List!58764)) (CommentValue!17659 (value!272984 List!58764)) (StringLiteralValue!26489 (value!272985 List!58764)) (ErrorTokenValue!8829 (msg!8890 List!58764)) )
))
(declare-datatypes ((C!28238 0))(
  ( (C!28239 (val!23771 Int)) )
))
(declare-datatypes ((List!58765 0))(
  ( (Nil!58641) (Cons!58641 (h!65089 C!28238) (t!371720 List!58765)) )
))
(declare-datatypes ((IArray!31435 0))(
  ( (IArray!31436 (innerList!15775 List!58765)) )
))
(declare-datatypes ((Conc!15687 0))(
  ( (Node!15687 (left!43059 Conc!15687) (right!43389 Conc!15687) (csize!31604 Int) (cheight!15898 Int)) (Leaf!26036 (xs!19069 IArray!31435) (csize!31605 Int)) (Empty!15687) )
))
(declare-datatypes ((BalanceConc!30492 0))(
  ( (BalanceConc!30493 (c!875609 Conc!15687)) )
))
(declare-datatypes ((TokenValueInjection!16966 0))(
  ( (TokenValueInjection!16967 (toValue!11538 Int) (toChars!11397 Int)) )
))
(declare-datatypes ((Regex!13990 0))(
  ( (ElementMatch!13990 (c!875610 C!28238)) (Concat!22820 (regOne!28492 Regex!13990) (regTwo!28492 Regex!13990)) (EmptyExpr!13990) (Star!13990 (reg!14319 Regex!13990)) (EmptyLang!13990) (Union!13990 (regOne!28493 Regex!13990) (regTwo!28493 Regex!13990)) )
))
(declare-datatypes ((String!67069 0))(
  ( (String!67070 (value!272986 String)) )
))
(declare-datatypes ((Rule!16830 0))(
  ( (Rule!16831 (regex!8515 Regex!13990) (tag!9379 String!67069) (isSeparator!8515 Bool) (transformation!8515 TokenValueInjection!16966)) )
))
(declare-datatypes ((List!58766 0))(
  ( (Nil!58642) (Cons!58642 (h!65090 Rule!16830) (t!371721 List!58766)) )
))
(declare-fun rulesArg!145 () List!58766)

(declare-fun isEmpty!31742 (List!58766) Bool)

(assert (=> b!5095901 (= res!2168794 (not (isEmpty!31742 rulesArg!145)))))

(declare-fun res!2168796 () Bool)

(assert (=> start!537236 (=> (not res!2168796) (not e!3178139))))

(declare-datatypes ((LexerInterface!8107 0))(
  ( (LexerInterfaceExt!8104 (__x!34948 Int)) (Lexer!8105) )
))
(declare-fun thiss!14775 () LexerInterface!8107)

(assert (=> start!537236 (= res!2168796 (is-Lexer!8105 thiss!14775))))

(assert (=> start!537236 e!3178139))

(assert (=> start!537236 true))

(declare-fun e!3178138 () Bool)

(assert (=> start!537236 e!3178138))

(declare-fun e!3178147 () Bool)

(assert (=> start!537236 e!3178147))

(declare-datatypes ((Token!15466 0))(
  ( (Token!15467 (value!272987 TokenValue!8829) (rule!11797 Rule!16830) (size!39289 Int) (originalCharacters!8764 List!58765)) )
))
(declare-datatypes ((tuple2!63362 0))(
  ( (tuple2!63363 (_1!34984 Token!15466) (_2!34984 List!58765)) )
))
(declare-datatypes ((Option!14642 0))(
  ( (None!14641) (Some!14641 (v!50654 tuple2!63362)) )
))
(declare-fun err!4637 () Option!14642)

(declare-fun e!3178143 () Bool)

(declare-fun b!5095902 () Bool)

(declare-fun input!1210 () List!58765)

(declare-fun maxPrefix!4682 (LexerInterface!8107 List!58766 List!58765) Option!14642)

(assert (=> b!5095902 (= e!3178143 (= err!4637 (maxPrefix!4682 thiss!14775 rulesArg!145 input!1210)))))

(assert (=> b!5095902 true))

(declare-fun e!3178148 () Bool)

(assert (=> b!5095902 e!3178148))

(declare-fun b!5095903 () Bool)

(assert (=> b!5095903 (= e!3178139 (not e!3178143))))

(declare-fun res!2168797 () Bool)

(assert (=> b!5095903 (=> res!2168797 e!3178143)))

(assert (=> b!5095903 (= res!2168797 (or (and (is-Cons!58642 rulesArg!145) (is-Nil!58642 (t!371721 rulesArg!145))) (is-Cons!58642 rulesArg!145)))))

(declare-fun isPrefix!5411 (List!58765 List!58765) Bool)

(assert (=> b!5095903 (isPrefix!5411 input!1210 input!1210)))

(declare-datatypes ((Unit!149682 0))(
  ( (Unit!149683) )
))
(declare-fun lt!2093793 () Unit!149682)

(declare-fun lemmaIsPrefixRefl!3670 (List!58765 List!58765) Unit!149682)

(assert (=> b!5095903 (= lt!2093793 (lemmaIsPrefixRefl!3670 input!1210 input!1210))))

(declare-fun e!3178142 () Bool)

(assert (=> b!5095904 (= e!3178142 (and tp!1421004 tp!1421007))))

(declare-fun e!3178149 () Bool)

(assert (=> b!5095905 (= e!3178149 (and tp!1421008 tp!1421012))))

(declare-fun b!5095906 () Bool)

(declare-fun e!3178141 () Bool)

(declare-fun tp!1421006 () Bool)

(assert (=> b!5095906 (= e!3178138 (and e!3178141 tp!1421006))))

(declare-fun b!5095907 () Bool)

(declare-fun tp!1421013 () Bool)

(declare-fun inv!78130 (String!67069) Bool)

(declare-fun inv!78133 (TokenValueInjection!16966) Bool)

(assert (=> b!5095907 (= e!3178141 (and tp!1421013 (inv!78130 (tag!9379 (h!65090 rulesArg!145))) (inv!78133 (transformation!8515 (h!65090 rulesArg!145))) e!3178142))))

(declare-fun b!5095908 () Bool)

(declare-fun tp!1421005 () Bool)

(declare-fun e!3178140 () Bool)

(assert (=> b!5095908 (= e!3178140 (and tp!1421005 (inv!78130 (tag!9379 (rule!11797 (_1!34984 (v!50654 err!4637))))) (inv!78133 (transformation!8515 (rule!11797 (_1!34984 (v!50654 err!4637))))) e!3178149))))

(declare-fun b!5095909 () Bool)

(declare-fun res!2168795 () Bool)

(assert (=> b!5095909 (=> (not res!2168795) (not e!3178139))))

(declare-fun rulesValidInductive!3340 (LexerInterface!8107 List!58766) Bool)

(assert (=> b!5095909 (= res!2168795 (rulesValidInductive!3340 thiss!14775 rulesArg!145))))

(declare-fun b!5095910 () Bool)

(declare-fun e!3178146 () Bool)

(declare-fun tp!1421011 () Bool)

(declare-fun inv!78134 (Token!15466) Bool)

(assert (=> b!5095910 (= e!3178148 (and (inv!78134 (_1!34984 (v!50654 err!4637))) e!3178146 tp!1421011))))

(declare-fun b!5095911 () Bool)

(declare-fun tp_is_empty!37245 () Bool)

(declare-fun tp!1421010 () Bool)

(assert (=> b!5095911 (= e!3178147 (and tp_is_empty!37245 tp!1421010))))

(declare-fun b!5095912 () Bool)

(declare-fun tp!1421009 () Bool)

(declare-fun inv!21 (TokenValue!8829) Bool)

(assert (=> b!5095912 (= e!3178146 (and (inv!21 (value!272987 (_1!34984 (v!50654 err!4637)))) e!3178140 tp!1421009))))

(assert (= (and start!537236 res!2168796) b!5095909))

(assert (= (and b!5095909 res!2168795) b!5095901))

(assert (= (and b!5095901 res!2168794) b!5095903))

(assert (= (and b!5095903 (not res!2168797)) b!5095902))

(assert (= b!5095908 b!5095905))

(assert (= b!5095912 b!5095908))

(assert (= b!5095910 b!5095912))

(assert (= (and b!5095902 (is-Some!14641 err!4637)) b!5095910))

(assert (= b!5095907 b!5095904))

(assert (= b!5095906 b!5095907))

(assert (= (and start!537236 (is-Cons!58642 rulesArg!145)) b!5095906))

(assert (= (and start!537236 (is-Cons!58641 input!1210)) b!5095911))

(declare-fun m!6153270 () Bool)

(assert (=> b!5095901 m!6153270))

(declare-fun m!6153272 () Bool)

(assert (=> b!5095902 m!6153272))

(declare-fun m!6153274 () Bool)

(assert (=> b!5095910 m!6153274))

(declare-fun m!6153276 () Bool)

(assert (=> b!5095907 m!6153276))

(declare-fun m!6153278 () Bool)

(assert (=> b!5095907 m!6153278))

(declare-fun m!6153280 () Bool)

(assert (=> b!5095909 m!6153280))

(declare-fun m!6153282 () Bool)

(assert (=> b!5095908 m!6153282))

(declare-fun m!6153284 () Bool)

(assert (=> b!5095908 m!6153284))

(declare-fun m!6153286 () Bool)

(assert (=> b!5095903 m!6153286))

(declare-fun m!6153288 () Bool)

(assert (=> b!5095903 m!6153288))

(declare-fun m!6153290 () Bool)

(assert (=> b!5095912 m!6153290))

(push 1)

(assert b_and!350323)

(assert b_and!350325)

(assert (not b_next!134231))

(assert b_and!350329)

(assert (not b!5095908))

(assert (not b!5095911))

(assert tp_is_empty!37245)

(assert (not b!5095909))

(assert (not b!5095910))

(assert (not b!5095903))

(assert (not b!5095912))

(assert (not b_next!134233))

(assert b_and!350327)

(assert (not b!5095906))

(assert (not b_next!134229))

(assert (not b!5095907))

(assert (not b_next!134235))

(assert (not b!5095902))

(assert (not b!5095901))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350323)

(assert b_and!350325)

(assert (not b_next!134231))

(assert b_and!350329)

(assert (not b_next!134233))

(assert b_and!350327)

(assert (not b_next!134229))

(assert (not b_next!134235))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5095960 () Bool)

(declare-fun e!3178196 () Bool)

(declare-fun size!39291 (List!58765) Int)

(assert (=> b!5095960 (= e!3178196 (>= (size!39291 input!1210) (size!39291 input!1210)))))

(declare-fun d!1649055 () Bool)

(assert (=> d!1649055 e!3178196))

(declare-fun res!2168821 () Bool)

(assert (=> d!1649055 (=> res!2168821 e!3178196)))

(declare-fun lt!2093799 () Bool)

(assert (=> d!1649055 (= res!2168821 (not lt!2093799))))

(declare-fun e!3178198 () Bool)

(assert (=> d!1649055 (= lt!2093799 e!3178198)))

(declare-fun res!2168819 () Bool)

(assert (=> d!1649055 (=> res!2168819 e!3178198)))

(assert (=> d!1649055 (= res!2168819 (is-Nil!58641 input!1210))))

(assert (=> d!1649055 (= (isPrefix!5411 input!1210 input!1210) lt!2093799)))

(declare-fun b!5095959 () Bool)

(declare-fun e!3178197 () Bool)

(declare-fun tail!9980 (List!58765) List!58765)

(assert (=> b!5095959 (= e!3178197 (isPrefix!5411 (tail!9980 input!1210) (tail!9980 input!1210)))))

(declare-fun b!5095958 () Bool)

(declare-fun res!2168818 () Bool)

(assert (=> b!5095958 (=> (not res!2168818) (not e!3178197))))

(declare-fun head!10825 (List!58765) C!28238)

(assert (=> b!5095958 (= res!2168818 (= (head!10825 input!1210) (head!10825 input!1210)))))

(declare-fun b!5095957 () Bool)

(assert (=> b!5095957 (= e!3178198 e!3178197)))

(declare-fun res!2168820 () Bool)

(assert (=> b!5095957 (=> (not res!2168820) (not e!3178197))))

(assert (=> b!5095957 (= res!2168820 (not (is-Nil!58641 input!1210)))))

(assert (= (and d!1649055 (not res!2168819)) b!5095957))

(assert (= (and b!5095957 res!2168820) b!5095958))

(assert (= (and b!5095958 res!2168818) b!5095959))

(assert (= (and d!1649055 (not res!2168821)) b!5095960))

(declare-fun m!6153314 () Bool)

(assert (=> b!5095960 m!6153314))

(assert (=> b!5095960 m!6153314))

(declare-fun m!6153316 () Bool)

(assert (=> b!5095959 m!6153316))

(assert (=> b!5095959 m!6153316))

(assert (=> b!5095959 m!6153316))

(assert (=> b!5095959 m!6153316))

(declare-fun m!6153318 () Bool)

(assert (=> b!5095959 m!6153318))

(declare-fun m!6153320 () Bool)

(assert (=> b!5095958 m!6153320))

(assert (=> b!5095958 m!6153320))

(assert (=> b!5095903 d!1649055))

(declare-fun d!1649061 () Bool)

(assert (=> d!1649061 (isPrefix!5411 input!1210 input!1210)))

(declare-fun lt!2093802 () Unit!149682)

(declare-fun choose!37312 (List!58765 List!58765) Unit!149682)

(assert (=> d!1649061 (= lt!2093802 (choose!37312 input!1210 input!1210))))

(assert (=> d!1649061 (= (lemmaIsPrefixRefl!3670 input!1210 input!1210) lt!2093802)))

(declare-fun bs!1191325 () Bool)

(assert (= bs!1191325 d!1649061))

(assert (=> bs!1191325 m!6153286))

(declare-fun m!6153322 () Bool)

(assert (=> bs!1191325 m!6153322))

(assert (=> b!5095903 d!1649061))

(declare-fun d!1649063 () Bool)

(assert (=> d!1649063 true))

(declare-fun lt!2093813 () Bool)

(declare-fun lambda!249895 () Int)

(declare-fun forall!13481 (List!58766 Int) Bool)

(assert (=> d!1649063 (= lt!2093813 (forall!13481 rulesArg!145 lambda!249895))))

(declare-fun e!3178230 () Bool)

(assert (=> d!1649063 (= lt!2093813 e!3178230)))

(declare-fun res!2168849 () Bool)

(assert (=> d!1649063 (=> res!2168849 e!3178230)))

(assert (=> d!1649063 (= res!2168849 (not (is-Cons!58642 rulesArg!145)))))

(assert (=> d!1649063 (= (rulesValidInductive!3340 thiss!14775 rulesArg!145) lt!2093813)))

(declare-fun b!5096000 () Bool)

(declare-fun e!3178229 () Bool)

(assert (=> b!5096000 (= e!3178230 e!3178229)))

(declare-fun res!2168850 () Bool)

(assert (=> b!5096000 (=> (not res!2168850) (not e!3178229))))

(declare-fun ruleValid!3908 (LexerInterface!8107 Rule!16830) Bool)

(assert (=> b!5096000 (= res!2168850 (ruleValid!3908 thiss!14775 (h!65090 rulesArg!145)))))

(declare-fun b!5096001 () Bool)

(assert (=> b!5096001 (= e!3178229 (rulesValidInductive!3340 thiss!14775 (t!371721 rulesArg!145)))))

(assert (= (and d!1649063 (not res!2168849)) b!5096000))

(assert (= (and b!5096000 res!2168850) b!5096001))

(declare-fun m!6153348 () Bool)

(assert (=> d!1649063 m!6153348))

(declare-fun m!6153350 () Bool)

(assert (=> b!5096000 m!6153350))

(declare-fun m!6153352 () Bool)

(assert (=> b!5096001 m!6153352))

(assert (=> b!5095909 d!1649063))

(declare-fun d!1649077 () Bool)

(declare-fun res!2168855 () Bool)

(declare-fun e!3178233 () Bool)

(assert (=> d!1649077 (=> (not res!2168855) (not e!3178233))))

(declare-fun isEmpty!31744 (List!58765) Bool)

(assert (=> d!1649077 (= res!2168855 (not (isEmpty!31744 (originalCharacters!8764 (_1!34984 (v!50654 err!4637))))))))

(assert (=> d!1649077 (= (inv!78134 (_1!34984 (v!50654 err!4637))) e!3178233)))

(declare-fun b!5096008 () Bool)

(declare-fun res!2168856 () Bool)

(assert (=> b!5096008 (=> (not res!2168856) (not e!3178233))))

(declare-fun list!19144 (BalanceConc!30492) List!58765)

(declare-fun dynLambda!23561 (Int TokenValue!8829) BalanceConc!30492)

(assert (=> b!5096008 (= res!2168856 (= (originalCharacters!8764 (_1!34984 (v!50654 err!4637))) (list!19144 (dynLambda!23561 (toChars!11397 (transformation!8515 (rule!11797 (_1!34984 (v!50654 err!4637))))) (value!272987 (_1!34984 (v!50654 err!4637)))))))))

(declare-fun b!5096009 () Bool)

(assert (=> b!5096009 (= e!3178233 (= (size!39289 (_1!34984 (v!50654 err!4637))) (size!39291 (originalCharacters!8764 (_1!34984 (v!50654 err!4637))))))))

(assert (= (and d!1649077 res!2168855) b!5096008))

(assert (= (and b!5096008 res!2168856) b!5096009))

(declare-fun b_lambda!198749 () Bool)

(assert (=> (not b_lambda!198749) (not b!5096008)))

(declare-fun tb!261827 () Bool)

(declare-fun t!371726 () Bool)

(assert (=> (and b!5095904 (= (toChars!11397 (transformation!8515 (h!65090 rulesArg!145))) (toChars!11397 (transformation!8515 (rule!11797 (_1!34984 (v!50654 err!4637)))))) t!371726) tb!261827))

(declare-fun b!5096014 () Bool)

(declare-fun e!3178236 () Bool)

(declare-fun tp!1421046 () Bool)

(declare-fun inv!78137 (Conc!15687) Bool)

(assert (=> b!5096014 (= e!3178236 (and (inv!78137 (c!875609 (dynLambda!23561 (toChars!11397 (transformation!8515 (rule!11797 (_1!34984 (v!50654 err!4637))))) (value!272987 (_1!34984 (v!50654 err!4637)))))) tp!1421046))))

(declare-fun result!328858 () Bool)

(declare-fun inv!78138 (BalanceConc!30492) Bool)

(assert (=> tb!261827 (= result!328858 (and (inv!78138 (dynLambda!23561 (toChars!11397 (transformation!8515 (rule!11797 (_1!34984 (v!50654 err!4637))))) (value!272987 (_1!34984 (v!50654 err!4637))))) e!3178236))))

(assert (= tb!261827 b!5096014))

(declare-fun m!6153354 () Bool)

(assert (=> b!5096014 m!6153354))

(declare-fun m!6153356 () Bool)

(assert (=> tb!261827 m!6153356))

(assert (=> b!5096008 t!371726))

(declare-fun b_and!350339 () Bool)

(assert (= b_and!350325 (and (=> t!371726 result!328858) b_and!350339)))

(declare-fun t!371728 () Bool)

(declare-fun tb!261829 () Bool)

(assert (=> (and b!5095905 (= (toChars!11397 (transformation!8515 (rule!11797 (_1!34984 (v!50654 err!4637))))) (toChars!11397 (transformation!8515 (rule!11797 (_1!34984 (v!50654 err!4637)))))) t!371728) tb!261829))

(declare-fun result!328862 () Bool)

(assert (= result!328862 result!328858))

(assert (=> b!5096008 t!371728))

(declare-fun b_and!350341 () Bool)

(assert (= b_and!350329 (and (=> t!371728 result!328862) b_and!350341)))

(declare-fun m!6153358 () Bool)

(assert (=> d!1649077 m!6153358))

(declare-fun m!6153360 () Bool)

(assert (=> b!5096008 m!6153360))

(assert (=> b!5096008 m!6153360))

(declare-fun m!6153362 () Bool)

(assert (=> b!5096008 m!6153362))

(declare-fun m!6153364 () Bool)

(assert (=> b!5096009 m!6153364))

(assert (=> b!5095910 d!1649077))

(declare-fun d!1649079 () Bool)

(assert (=> d!1649079 (= (isEmpty!31742 rulesArg!145) (is-Nil!58642 rulesArg!145))))

(assert (=> b!5095901 d!1649079))

(declare-fun d!1649081 () Bool)

(declare-fun c!875624 () Bool)

(assert (=> d!1649081 (= c!875624 (is-IntegerValue!26487 (value!272987 (_1!34984 (v!50654 err!4637)))))))

(declare-fun e!3178245 () Bool)

(assert (=> d!1649081 (= (inv!21 (value!272987 (_1!34984 (v!50654 err!4637)))) e!3178245)))

(declare-fun b!5096025 () Bool)

(declare-fun e!3178243 () Bool)

(declare-fun inv!15 (TokenValue!8829) Bool)

(assert (=> b!5096025 (= e!3178243 (inv!15 (value!272987 (_1!34984 (v!50654 err!4637)))))))

(declare-fun b!5096026 () Bool)

(declare-fun res!2168859 () Bool)

(assert (=> b!5096026 (=> res!2168859 e!3178243)))

(assert (=> b!5096026 (= res!2168859 (not (is-IntegerValue!26489 (value!272987 (_1!34984 (v!50654 err!4637))))))))

(declare-fun e!3178244 () Bool)

(assert (=> b!5096026 (= e!3178244 e!3178243)))

(declare-fun b!5096027 () Bool)

(declare-fun inv!16 (TokenValue!8829) Bool)

(assert (=> b!5096027 (= e!3178245 (inv!16 (value!272987 (_1!34984 (v!50654 err!4637)))))))

(declare-fun b!5096028 () Bool)

(assert (=> b!5096028 (= e!3178245 e!3178244)))

(declare-fun c!875625 () Bool)

(assert (=> b!5096028 (= c!875625 (is-IntegerValue!26488 (value!272987 (_1!34984 (v!50654 err!4637)))))))

(declare-fun b!5096029 () Bool)

(declare-fun inv!17 (TokenValue!8829) Bool)

(assert (=> b!5096029 (= e!3178244 (inv!17 (value!272987 (_1!34984 (v!50654 err!4637)))))))

(assert (= (and d!1649081 c!875624) b!5096027))

(assert (= (and d!1649081 (not c!875624)) b!5096028))

(assert (= (and b!5096028 c!875625) b!5096029))

(assert (= (and b!5096028 (not c!875625)) b!5096026))

(assert (= (and b!5096026 (not res!2168859)) b!5096025))

(declare-fun m!6153366 () Bool)

(assert (=> b!5096025 m!6153366))

(declare-fun m!6153368 () Bool)

(assert (=> b!5096027 m!6153368))

(declare-fun m!6153370 () Bool)

(assert (=> b!5096029 m!6153370))

(assert (=> b!5095912 d!1649081))

(declare-fun d!1649083 () Bool)

(assert (=> d!1649083 (= (inv!78130 (tag!9379 (h!65090 rulesArg!145))) (= (mod (str.len (value!272986 (tag!9379 (h!65090 rulesArg!145)))) 2) 0))))

(assert (=> b!5095907 d!1649083))

(declare-fun d!1649085 () Bool)

(declare-fun res!2168862 () Bool)

(declare-fun e!3178248 () Bool)

(assert (=> d!1649085 (=> (not res!2168862) (not e!3178248))))

(declare-fun semiInverseModEq!3794 (Int Int) Bool)

(assert (=> d!1649085 (= res!2168862 (semiInverseModEq!3794 (toChars!11397 (transformation!8515 (h!65090 rulesArg!145))) (toValue!11538 (transformation!8515 (h!65090 rulesArg!145)))))))

(assert (=> d!1649085 (= (inv!78133 (transformation!8515 (h!65090 rulesArg!145))) e!3178248)))

(declare-fun b!5096032 () Bool)

(declare-fun equivClasses!3609 (Int Int) Bool)

(assert (=> b!5096032 (= e!3178248 (equivClasses!3609 (toChars!11397 (transformation!8515 (h!65090 rulesArg!145))) (toValue!11538 (transformation!8515 (h!65090 rulesArg!145)))))))

(assert (= (and d!1649085 res!2168862) b!5096032))

(declare-fun m!6153372 () Bool)

(assert (=> d!1649085 m!6153372))

(declare-fun m!6153374 () Bool)

(assert (=> b!5096032 m!6153374))

(assert (=> b!5095907 d!1649085))

(declare-fun bm!354789 () Bool)

(declare-fun call!354794 () Option!14642)

(declare-fun maxPrefixOneRule!3706 (LexerInterface!8107 Rule!16830 List!58765) Option!14642)

(assert (=> bm!354789 (= call!354794 (maxPrefixOneRule!3706 thiss!14775 (h!65090 rulesArg!145) input!1210))))

(declare-fun b!5096051 () Bool)

(declare-fun e!3178257 () Bool)

(declare-fun lt!2093825 () Option!14642)

(declare-fun contains!19605 (List!58766 Rule!16830) Bool)

(declare-fun get!20355 (Option!14642) tuple2!63362)

(assert (=> b!5096051 (= e!3178257 (contains!19605 rulesArg!145 (rule!11797 (_1!34984 (get!20355 lt!2093825)))))))

(declare-fun b!5096052 () Bool)

(declare-fun e!3178255 () Option!14642)

(assert (=> b!5096052 (= e!3178255 call!354794)))

(declare-fun b!5096053 () Bool)

(declare-fun res!2168882 () Bool)

(assert (=> b!5096053 (=> (not res!2168882) (not e!3178257))))

(declare-fun ++!12855 (List!58765 List!58765) List!58765)

(declare-fun charsOf!5478 (Token!15466) BalanceConc!30492)

(assert (=> b!5096053 (= res!2168882 (= (++!12855 (list!19144 (charsOf!5478 (_1!34984 (get!20355 lt!2093825)))) (_2!34984 (get!20355 lt!2093825))) input!1210))))

(declare-fun d!1649087 () Bool)

(declare-fun e!3178256 () Bool)

(assert (=> d!1649087 e!3178256))

(declare-fun res!2168883 () Bool)

(assert (=> d!1649087 (=> res!2168883 e!3178256)))

(declare-fun isEmpty!31745 (Option!14642) Bool)

(assert (=> d!1649087 (= res!2168883 (isEmpty!31745 lt!2093825))))

(assert (=> d!1649087 (= lt!2093825 e!3178255)))

(declare-fun c!875628 () Bool)

(assert (=> d!1649087 (= c!875628 (and (is-Cons!58642 rulesArg!145) (is-Nil!58642 (t!371721 rulesArg!145))))))

(declare-fun lt!2093828 () Unit!149682)

(declare-fun lt!2093827 () Unit!149682)

(assert (=> d!1649087 (= lt!2093828 lt!2093827)))

(assert (=> d!1649087 (isPrefix!5411 input!1210 input!1210)))

(assert (=> d!1649087 (= lt!2093827 (lemmaIsPrefixRefl!3670 input!1210 input!1210))))

(assert (=> d!1649087 (rulesValidInductive!3340 thiss!14775 rulesArg!145)))

(assert (=> d!1649087 (= (maxPrefix!4682 thiss!14775 rulesArg!145 input!1210) lt!2093825)))

(declare-fun b!5096054 () Bool)

(declare-fun res!2168880 () Bool)

(assert (=> b!5096054 (=> (not res!2168880) (not e!3178257))))

(assert (=> b!5096054 (= res!2168880 (= (list!19144 (charsOf!5478 (_1!34984 (get!20355 lt!2093825)))) (originalCharacters!8764 (_1!34984 (get!20355 lt!2093825)))))))

(declare-fun b!5096055 () Bool)

(declare-fun res!2168879 () Bool)

(assert (=> b!5096055 (=> (not res!2168879) (not e!3178257))))

(assert (=> b!5096055 (= res!2168879 (< (size!39291 (_2!34984 (get!20355 lt!2093825))) (size!39291 input!1210)))))

(declare-fun b!5096056 () Bool)

(declare-fun lt!2093826 () Option!14642)

(declare-fun lt!2093824 () Option!14642)

(assert (=> b!5096056 (= e!3178255 (ite (and (is-None!14641 lt!2093826) (is-None!14641 lt!2093824)) None!14641 (ite (is-None!14641 lt!2093824) lt!2093826 (ite (is-None!14641 lt!2093826) lt!2093824 (ite (>= (size!39289 (_1!34984 (v!50654 lt!2093826))) (size!39289 (_1!34984 (v!50654 lt!2093824)))) lt!2093826 lt!2093824)))))))

(assert (=> b!5096056 (= lt!2093826 call!354794)))

(assert (=> b!5096056 (= lt!2093824 (maxPrefix!4682 thiss!14775 (t!371721 rulesArg!145) input!1210))))

(declare-fun b!5096057 () Bool)

(declare-fun res!2168881 () Bool)

(assert (=> b!5096057 (=> (not res!2168881) (not e!3178257))))

(declare-fun apply!14295 (TokenValueInjection!16966 BalanceConc!30492) TokenValue!8829)

(declare-fun seqFromList!6113 (List!58765) BalanceConc!30492)

(assert (=> b!5096057 (= res!2168881 (= (value!272987 (_1!34984 (get!20355 lt!2093825))) (apply!14295 (transformation!8515 (rule!11797 (_1!34984 (get!20355 lt!2093825)))) (seqFromList!6113 (originalCharacters!8764 (_1!34984 (get!20355 lt!2093825)))))))))

(declare-fun b!5096058 () Bool)

(declare-fun res!2168878 () Bool)

(assert (=> b!5096058 (=> (not res!2168878) (not e!3178257))))

(declare-fun matchR!6795 (Regex!13990 List!58765) Bool)

(assert (=> b!5096058 (= res!2168878 (matchR!6795 (regex!8515 (rule!11797 (_1!34984 (get!20355 lt!2093825)))) (list!19144 (charsOf!5478 (_1!34984 (get!20355 lt!2093825))))))))

(declare-fun b!5096059 () Bool)

(assert (=> b!5096059 (= e!3178256 e!3178257)))

(declare-fun res!2168877 () Bool)

(assert (=> b!5096059 (=> (not res!2168877) (not e!3178257))))

(declare-fun isDefined!11504 (Option!14642) Bool)

(assert (=> b!5096059 (= res!2168877 (isDefined!11504 lt!2093825))))

(assert (= (and d!1649087 c!875628) b!5096052))

(assert (= (and d!1649087 (not c!875628)) b!5096056))

(assert (= (or b!5096052 b!5096056) bm!354789))

(assert (= (and d!1649087 (not res!2168883)) b!5096059))

(assert (= (and b!5096059 res!2168877) b!5096054))

(assert (= (and b!5096054 res!2168880) b!5096055))

(assert (= (and b!5096055 res!2168879) b!5096053))

(assert (= (and b!5096053 res!2168882) b!5096057))

(assert (= (and b!5096057 res!2168881) b!5096058))

(assert (= (and b!5096058 res!2168878) b!5096051))

(declare-fun m!6153376 () Bool)

(assert (=> b!5096059 m!6153376))

(declare-fun m!6153378 () Bool)

(assert (=> b!5096057 m!6153378))

(declare-fun m!6153380 () Bool)

(assert (=> b!5096057 m!6153380))

(assert (=> b!5096057 m!6153380))

(declare-fun m!6153382 () Bool)

(assert (=> b!5096057 m!6153382))

(declare-fun m!6153384 () Bool)

(assert (=> b!5096056 m!6153384))

(assert (=> b!5096051 m!6153378))

(declare-fun m!6153386 () Bool)

(assert (=> b!5096051 m!6153386))

(declare-fun m!6153388 () Bool)

(assert (=> d!1649087 m!6153388))

(assert (=> d!1649087 m!6153286))

(assert (=> d!1649087 m!6153288))

(assert (=> d!1649087 m!6153280))

(assert (=> b!5096058 m!6153378))

(declare-fun m!6153390 () Bool)

(assert (=> b!5096058 m!6153390))

(assert (=> b!5096058 m!6153390))

(declare-fun m!6153392 () Bool)

(assert (=> b!5096058 m!6153392))

(assert (=> b!5096058 m!6153392))

(declare-fun m!6153394 () Bool)

(assert (=> b!5096058 m!6153394))

(assert (=> b!5096054 m!6153378))

(assert (=> b!5096054 m!6153390))

(assert (=> b!5096054 m!6153390))

(assert (=> b!5096054 m!6153392))

(assert (=> b!5096055 m!6153378))

(declare-fun m!6153396 () Bool)

(assert (=> b!5096055 m!6153396))

(assert (=> b!5096055 m!6153314))

(declare-fun m!6153398 () Bool)

(assert (=> bm!354789 m!6153398))

(assert (=> b!5096053 m!6153378))

(assert (=> b!5096053 m!6153390))

(assert (=> b!5096053 m!6153390))

(assert (=> b!5096053 m!6153392))

(assert (=> b!5096053 m!6153392))

(declare-fun m!6153400 () Bool)

(assert (=> b!5096053 m!6153400))

(assert (=> b!5095902 d!1649087))

(declare-fun d!1649089 () Bool)

(assert (=> d!1649089 (= (inv!78130 (tag!9379 (rule!11797 (_1!34984 (v!50654 err!4637))))) (= (mod (str.len (value!272986 (tag!9379 (rule!11797 (_1!34984 (v!50654 err!4637)))))) 2) 0))))

(assert (=> b!5095908 d!1649089))

(declare-fun d!1649091 () Bool)

(declare-fun res!2168884 () Bool)

(declare-fun e!3178258 () Bool)

(assert (=> d!1649091 (=> (not res!2168884) (not e!3178258))))

(assert (=> d!1649091 (= res!2168884 (semiInverseModEq!3794 (toChars!11397 (transformation!8515 (rule!11797 (_1!34984 (v!50654 err!4637))))) (toValue!11538 (transformation!8515 (rule!11797 (_1!34984 (v!50654 err!4637)))))))))

(assert (=> d!1649091 (= (inv!78133 (transformation!8515 (rule!11797 (_1!34984 (v!50654 err!4637))))) e!3178258)))

(declare-fun b!5096060 () Bool)

(assert (=> b!5096060 (= e!3178258 (equivClasses!3609 (toChars!11397 (transformation!8515 (rule!11797 (_1!34984 (v!50654 err!4637))))) (toValue!11538 (transformation!8515 (rule!11797 (_1!34984 (v!50654 err!4637)))))))))

(assert (= (and d!1649091 res!2168884) b!5096060))

(declare-fun m!6153402 () Bool)

(assert (=> d!1649091 m!6153402))

(declare-fun m!6153404 () Bool)

(assert (=> b!5096060 m!6153404))

(assert (=> b!5095908 d!1649091))

(declare-fun b!5096065 () Bool)

(declare-fun e!3178261 () Bool)

(declare-fun tp!1421049 () Bool)

(assert (=> b!5096065 (= e!3178261 (and tp_is_empty!37245 tp!1421049))))

(assert (=> b!5095910 (= tp!1421011 e!3178261)))

(assert (= (and b!5095910 (is-Cons!58641 (_2!34984 (v!50654 err!4637)))) b!5096065))

(declare-fun b!5096066 () Bool)

(declare-fun e!3178262 () Bool)

(declare-fun tp!1421050 () Bool)

(assert (=> b!5096066 (= e!3178262 (and tp_is_empty!37245 tp!1421050))))

(assert (=> b!5095911 (= tp!1421010 e!3178262)))

(assert (= (and b!5095911 (is-Cons!58641 (t!371720 input!1210))) b!5096066))

(declare-fun b!5096077 () Bool)

(declare-fun b_free!133455 () Bool)

(declare-fun b_next!134245 () Bool)

(assert (=> b!5096077 (= b_free!133455 (not b_next!134245))))

(declare-fun tp!1421059 () Bool)

(declare-fun b_and!350343 () Bool)

(assert (=> b!5096077 (= tp!1421059 b_and!350343)))

(declare-fun b_free!133457 () Bool)

(declare-fun b_next!134247 () Bool)

(assert (=> b!5096077 (= b_free!133457 (not b_next!134247))))

(declare-fun t!371730 () Bool)

(declare-fun tb!261831 () Bool)

(assert (=> (and b!5096077 (= (toChars!11397 (transformation!8515 (h!65090 (t!371721 rulesArg!145)))) (toChars!11397 (transformation!8515 (rule!11797 (_1!34984 (v!50654 err!4637)))))) t!371730) tb!261831))

(declare-fun result!328868 () Bool)

(assert (= result!328868 result!328858))

(assert (=> b!5096008 t!371730))

(declare-fun b_and!350345 () Bool)

(declare-fun tp!1421061 () Bool)

(assert (=> b!5096077 (= tp!1421061 (and (=> t!371730 result!328868) b_and!350345))))

(declare-fun e!3178271 () Bool)

(assert (=> b!5096077 (= e!3178271 (and tp!1421059 tp!1421061))))

(declare-fun b!5096076 () Bool)

(declare-fun e!3178274 () Bool)

(declare-fun tp!1421062 () Bool)

(assert (=> b!5096076 (= e!3178274 (and tp!1421062 (inv!78130 (tag!9379 (h!65090 (t!371721 rulesArg!145)))) (inv!78133 (transformation!8515 (h!65090 (t!371721 rulesArg!145)))) e!3178271))))

(declare-fun b!5096075 () Bool)

(declare-fun e!3178272 () Bool)

(declare-fun tp!1421060 () Bool)

(assert (=> b!5096075 (= e!3178272 (and e!3178274 tp!1421060))))

(assert (=> b!5095906 (= tp!1421006 e!3178272)))

(assert (= b!5096076 b!5096077))

(assert (= b!5096075 b!5096076))

(assert (= (and b!5095906 (is-Cons!58642 (t!371721 rulesArg!145))) b!5096075))

(declare-fun m!6153406 () Bool)

(assert (=> b!5096076 m!6153406))

(declare-fun m!6153408 () Bool)

(assert (=> b!5096076 m!6153408))

(declare-fun b!5096078 () Bool)

(declare-fun e!3178275 () Bool)

(declare-fun tp!1421063 () Bool)

(assert (=> b!5096078 (= e!3178275 (and tp_is_empty!37245 tp!1421063))))

(assert (=> b!5095912 (= tp!1421009 e!3178275)))

(assert (= (and b!5095912 (is-Cons!58641 (originalCharacters!8764 (_1!34984 (v!50654 err!4637))))) b!5096078))

(declare-fun b!5096089 () Bool)

(declare-fun e!3178278 () Bool)

(assert (=> b!5096089 (= e!3178278 tp_is_empty!37245)))

(declare-fun b!5096090 () Bool)

(declare-fun tp!1421074 () Bool)

(declare-fun tp!1421078 () Bool)

(assert (=> b!5096090 (= e!3178278 (and tp!1421074 tp!1421078))))

(assert (=> b!5095907 (= tp!1421013 e!3178278)))

(declare-fun b!5096091 () Bool)

(declare-fun tp!1421076 () Bool)

(assert (=> b!5096091 (= e!3178278 tp!1421076)))

(declare-fun b!5096092 () Bool)

(declare-fun tp!1421077 () Bool)

(declare-fun tp!1421075 () Bool)

(assert (=> b!5096092 (= e!3178278 (and tp!1421077 tp!1421075))))

(assert (= (and b!5095907 (is-ElementMatch!13990 (regex!8515 (h!65090 rulesArg!145)))) b!5096089))

(assert (= (and b!5095907 (is-Concat!22820 (regex!8515 (h!65090 rulesArg!145)))) b!5096090))

(assert (= (and b!5095907 (is-Star!13990 (regex!8515 (h!65090 rulesArg!145)))) b!5096091))

(assert (= (and b!5095907 (is-Union!13990 (regex!8515 (h!65090 rulesArg!145)))) b!5096092))

(declare-fun b!5096093 () Bool)

(declare-fun e!3178279 () Bool)

(assert (=> b!5096093 (= e!3178279 tp_is_empty!37245)))

(declare-fun b!5096094 () Bool)

(declare-fun tp!1421079 () Bool)

(declare-fun tp!1421083 () Bool)

(assert (=> b!5096094 (= e!3178279 (and tp!1421079 tp!1421083))))

(assert (=> b!5095908 (= tp!1421005 e!3178279)))

(declare-fun b!5096095 () Bool)

(declare-fun tp!1421081 () Bool)

(assert (=> b!5096095 (= e!3178279 tp!1421081)))

(declare-fun b!5096096 () Bool)

(declare-fun tp!1421082 () Bool)

(declare-fun tp!1421080 () Bool)

(assert (=> b!5096096 (= e!3178279 (and tp!1421082 tp!1421080))))

(assert (= (and b!5095908 (is-ElementMatch!13990 (regex!8515 (rule!11797 (_1!34984 (v!50654 err!4637)))))) b!5096093))

(assert (= (and b!5095908 (is-Concat!22820 (regex!8515 (rule!11797 (_1!34984 (v!50654 err!4637)))))) b!5096094))

(assert (= (and b!5095908 (is-Star!13990 (regex!8515 (rule!11797 (_1!34984 (v!50654 err!4637)))))) b!5096095))

(assert (= (and b!5095908 (is-Union!13990 (regex!8515 (rule!11797 (_1!34984 (v!50654 err!4637)))))) b!5096096))

(declare-fun b_lambda!198751 () Bool)

(assert (= b_lambda!198749 (or (and b!5095904 b_free!133441 (= (toChars!11397 (transformation!8515 (h!65090 rulesArg!145))) (toChars!11397 (transformation!8515 (rule!11797 (_1!34984 (v!50654 err!4637))))))) (and b!5095905 b_free!133445) (and b!5096077 b_free!133457 (= (toChars!11397 (transformation!8515 (h!65090 (t!371721 rulesArg!145)))) (toChars!11397 (transformation!8515 (rule!11797 (_1!34984 (v!50654 err!4637))))))) b_lambda!198751)))

(push 1)

(assert (not d!1649063))

(assert b_and!350341)

(assert (not b!5096065))

(assert (not b!5096091))

(assert (not b!5096001))

(assert (not b!5096057))

(assert (not b!5096051))

(assert (not b!5096066))

(assert (not b!5096056))

(assert (not b_next!134245))

(assert b_and!350323)

(assert (not b!5096027))

(assert (not bm!354789))

(assert (not b!5096076))

(assert (not d!1649087))

(assert (not b!5096058))

(assert b_and!350339)

(assert (not d!1649085))

(assert (not b!5095958))

(assert b_and!350343)

(assert (not b!5096014))

(assert (not b_next!134231))

(assert (not b!5096090))

(assert b_and!350345)

(assert (not d!1649061))

(assert (not b_next!134233))

(assert (not b!5096075))

(assert (not b!5096096))

(assert (not b!5096008))

(assert (not b!5096078))

(assert (not b!5096053))

(assert (not b!5095960))

(assert (not b_lambda!198751))

(assert (not b!5096000))

(assert (not b!5096092))

(assert (not b!5096060))

(assert (not b!5096025))

(assert (not d!1649077))

(assert (not d!1649091))

(assert (not b!5096054))

(assert (not b!5096009))

(assert (not b!5096094))

(assert (not tb!261827))

(assert (not b!5096095))

(assert (not b_next!134247))

(assert (not b!5095959))

(assert tp_is_empty!37245)

(assert (not b!5096059))

(assert b_and!350327)

(assert (not b!5096029))

(assert (not b_next!134229))

(assert (not b_next!134235))

(assert (not b!5096055))

(assert (not b!5096032))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350339)

(assert b_and!350343)

(assert (not b_next!134233))

(assert b_and!350341)

(assert (not b_next!134247))

(assert b_and!350327)

(assert (not b_next!134245))

(assert b_and!350323)

(assert (not b_next!134231))

(assert b_and!350345)

(assert (not b_next!134229))

(assert (not b_next!134235))

(check-sat)

(pop 1)

