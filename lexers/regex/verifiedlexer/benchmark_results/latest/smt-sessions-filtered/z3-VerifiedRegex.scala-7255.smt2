; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!386588 () Bool)

(assert start!386588)

(declare-fun b!4087238 () Bool)

(declare-fun b_free!114217 () Bool)

(declare-fun b_next!114921 () Bool)

(assert (=> b!4087238 (= b_free!114217 (not b_next!114921))))

(declare-fun tp!1237508 () Bool)

(declare-fun b_and!314747 () Bool)

(assert (=> b!4087238 (= tp!1237508 b_and!314747)))

(declare-fun b_free!114219 () Bool)

(declare-fun b_next!114923 () Bool)

(assert (=> b!4087238 (= b_free!114219 (not b_next!114923))))

(declare-fun tp!1237503 () Bool)

(declare-fun b_and!314749 () Bool)

(assert (=> b!4087238 (= tp!1237503 b_and!314749)))

(declare-fun b!4087234 () Bool)

(declare-fun b_free!114221 () Bool)

(declare-fun b_next!114925 () Bool)

(assert (=> b!4087234 (= b_free!114221 (not b_next!114925))))

(declare-fun tp!1237509 () Bool)

(declare-fun b_and!314751 () Bool)

(assert (=> b!4087234 (= tp!1237509 b_and!314751)))

(declare-fun b_free!114223 () Bool)

(declare-fun b_next!114927 () Bool)

(assert (=> b!4087234 (= b_free!114223 (not b_next!114927))))

(declare-fun tp!1237504 () Bool)

(declare-fun b_and!314753 () Bool)

(assert (=> b!4087234 (= tp!1237504 b_and!314753)))

(declare-fun b!4087233 () Bool)

(declare-fun res!1670174 () Bool)

(declare-fun e!2536691 () Bool)

(assert (=> b!4087233 (=> (not res!1670174) (not e!2536691))))

(declare-datatypes ((C!24160 0))(
  ( (C!24161 (val!14190 Int)) )
))
(declare-datatypes ((List!43943 0))(
  ( (Nil!43819) (Cons!43819 (h!49239 C!24160) (t!338270 List!43943)) )
))
(declare-fun p!2988 () List!43943)

(declare-fun isEmpty!26201 (List!43943) Bool)

(assert (=> b!4087233 (= res!1670174 (not (isEmpty!26201 p!2988)))))

(declare-fun e!2536690 () Bool)

(assert (=> b!4087234 (= e!2536690 (and tp!1237509 tp!1237504))))

(declare-fun b!4087235 () Bool)

(declare-fun e!2536703 () Bool)

(declare-datatypes ((List!43944 0))(
  ( (Nil!43820) (Cons!43820 (h!49240 (_ BitVec 16)) (t!338271 List!43944)) )
))
(declare-datatypes ((TokenValue!7312 0))(
  ( (FloatLiteralValue!14624 (text!51629 List!43944)) (TokenValueExt!7311 (__x!26841 Int)) (Broken!36560 (value!222463 List!43944)) (Object!7435) (End!7312) (Def!7312) (Underscore!7312) (Match!7312) (Else!7312) (Error!7312) (Case!7312) (If!7312) (Extends!7312) (Abstract!7312) (Class!7312) (Val!7312) (DelimiterValue!14624 (del!7372 List!43944)) (KeywordValue!7318 (value!222464 List!43944)) (CommentValue!14624 (value!222465 List!43944)) (WhitespaceValue!14624 (value!222466 List!43944)) (IndentationValue!7312 (value!222467 List!43944)) (String!50309) (Int32!7312) (Broken!36561 (value!222468 List!43944)) (Boolean!7313) (Unit!63342) (OperatorValue!7315 (op!7372 List!43944)) (IdentifierValue!14624 (value!222469 List!43944)) (IdentifierValue!14625 (value!222470 List!43944)) (WhitespaceValue!14625 (value!222471 List!43944)) (True!14624) (False!14624) (Broken!36562 (value!222472 List!43944)) (Broken!36563 (value!222473 List!43944)) (True!14625) (RightBrace!7312) (RightBracket!7312) (Colon!7312) (Null!7312) (Comma!7312) (LeftBracket!7312) (False!14625) (LeftBrace!7312) (ImaginaryLiteralValue!7312 (text!51630 List!43944)) (StringLiteralValue!21936 (value!222474 List!43944)) (EOFValue!7312 (value!222475 List!43944)) (IdentValue!7312 (value!222476 List!43944)) (DelimiterValue!14625 (value!222477 List!43944)) (DedentValue!7312 (value!222478 List!43944)) (NewLineValue!7312 (value!222479 List!43944)) (IntegerValue!21936 (value!222480 (_ BitVec 32)) (text!51631 List!43944)) (IntegerValue!21937 (value!222481 Int) (text!51632 List!43944)) (Times!7312) (Or!7312) (Equal!7312) (Minus!7312) (Broken!36564 (value!222482 List!43944)) (And!7312) (Div!7312) (LessEqual!7312) (Mod!7312) (Concat!19299) (Not!7312) (Plus!7312) (SpaceValue!7312 (value!222483 List!43944)) (IntegerValue!21938 (value!222484 Int) (text!51633 List!43944)) (StringLiteralValue!21937 (text!51634 List!43944)) (FloatLiteralValue!14625 (text!51635 List!43944)) (BytesLiteralValue!7312 (value!222485 List!43944)) (CommentValue!14625 (value!222486 List!43944)) (StringLiteralValue!21938 (value!222487 List!43944)) (ErrorTokenValue!7312 (msg!7373 List!43944)) )
))
(declare-datatypes ((Regex!11987 0))(
  ( (ElementMatch!11987 (c!704554 C!24160)) (Concat!19300 (regOne!24486 Regex!11987) (regTwo!24486 Regex!11987)) (EmptyExpr!11987) (Star!11987 (reg!12316 Regex!11987)) (EmptyLang!11987) (Union!11987 (regOne!24487 Regex!11987) (regTwo!24487 Regex!11987)) )
))
(declare-datatypes ((String!50310 0))(
  ( (String!50311 (value!222488 String)) )
))
(declare-datatypes ((IArray!26591 0))(
  ( (IArray!26592 (innerList!13353 List!43943)) )
))
(declare-datatypes ((Conc!13293 0))(
  ( (Node!13293 (left!32936 Conc!13293) (right!33266 Conc!13293) (csize!26816 Int) (cheight!13504 Int)) (Leaf!20549 (xs!16599 IArray!26591) (csize!26817 Int)) (Empty!13293) )
))
(declare-datatypes ((BalanceConc!26180 0))(
  ( (BalanceConc!26181 (c!704555 Conc!13293)) )
))
(declare-datatypes ((TokenValueInjection!14052 0))(
  ( (TokenValueInjection!14053 (toValue!9666 Int) (toChars!9525 Int)) )
))
(declare-datatypes ((Rule!13964 0))(
  ( (Rule!13965 (regex!7082 Regex!11987) (tag!7942 String!50310) (isSeparator!7082 Bool) (transformation!7082 TokenValueInjection!14052)) )
))
(declare-datatypes ((Token!13290 0))(
  ( (Token!13291 (value!222489 TokenValue!7312) (rule!10214 Rule!13964) (size!32728 Int) (originalCharacters!7676 List!43943)) )
))
(declare-datatypes ((tuple2!42756 0))(
  ( (tuple2!42757 (_1!24512 Token!13290) (_2!24512 List!43943)) )
))
(declare-datatypes ((Option!9488 0))(
  ( (None!9487) (Some!9487 (v!39965 tuple2!42756)) )
))
(declare-fun lt!1461908 () Option!9488)

(declare-datatypes ((List!43945 0))(
  ( (Nil!43821) (Cons!43821 (h!49241 Rule!13964) (t!338272 List!43945)) )
))
(declare-fun rules!3870 () List!43945)

(declare-fun get!14371 (Option!9488) tuple2!42756)

(assert (=> b!4087235 (= e!2536703 (not (= (rule!10214 (_1!24512 (get!14371 lt!1461908))) (h!49241 rules!3870))))))

(declare-fun b!4087236 () Bool)

(declare-fun res!1670171 () Bool)

(declare-fun e!2536697 () Bool)

(assert (=> b!4087236 (=> res!1670171 e!2536697)))

(declare-fun r!4213 () Rule!13964)

(get-info :version)

(assert (=> b!4087236 (= res!1670171 (or (not ((_ is Cons!43821) rules!3870)) (not (= (h!49241 rules!3870) r!4213))))))

(declare-fun b!4087237 () Bool)

(declare-fun e!2536701 () Bool)

(assert (=> b!4087237 (= e!2536697 e!2536701)))

(declare-fun res!1670177 () Bool)

(assert (=> b!4087237 (=> res!1670177 e!2536701)))

(declare-fun isEmpty!26202 (List!43945) Bool)

(assert (=> b!4087237 (= res!1670177 (isEmpty!26202 (t!338272 rules!3870)))))

(declare-datatypes ((LexerInterface!6671 0))(
  ( (LexerInterfaceExt!6668 (__x!26842 Int)) (Lexer!6669) )
))
(declare-fun thiss!26199 () LexerInterface!6671)

(declare-fun rulesInvariant!6014 (LexerInterface!6671 List!43945) Bool)

(assert (=> b!4087237 (rulesInvariant!6014 thiss!26199 (t!338272 rules!3870))))

(declare-datatypes ((Unit!63343 0))(
  ( (Unit!63344) )
))
(declare-fun lt!1461912 () Unit!63343)

(declare-fun lemmaInvariantOnRulesThenOnTail!786 (LexerInterface!6671 Rule!13964 List!43945) Unit!63343)

(assert (=> b!4087237 (= lt!1461912 (lemmaInvariantOnRulesThenOnTail!786 thiss!26199 (h!49241 rules!3870) (t!338272 rules!3870)))))

(declare-fun e!2536704 () Bool)

(assert (=> b!4087238 (= e!2536704 (and tp!1237508 tp!1237503))))

(declare-fun b!4087239 () Bool)

(declare-fun res!1670176 () Bool)

(assert (=> b!4087239 (=> (not res!1670176) (not e!2536691))))

(assert (=> b!4087239 (= res!1670176 (rulesInvariant!6014 thiss!26199 rules!3870))))

(declare-fun tp!1237505 () Bool)

(declare-fun e!2536694 () Bool)

(declare-fun b!4087240 () Bool)

(declare-fun inv!58508 (String!50310) Bool)

(declare-fun inv!58511 (TokenValueInjection!14052) Bool)

(assert (=> b!4087240 (= e!2536694 (and tp!1237505 (inv!58508 (tag!7942 (h!49241 rules!3870))) (inv!58511 (transformation!7082 (h!49241 rules!3870))) e!2536704))))

(declare-fun b!4087241 () Bool)

(declare-fun e!2536699 () Bool)

(assert (=> b!4087241 (= e!2536699 (= (rule!10214 (_1!24512 (get!14371 lt!1461908))) r!4213))))

(declare-fun b!4087242 () Bool)

(declare-fun e!2536695 () Bool)

(declare-fun tp!1237510 () Bool)

(assert (=> b!4087242 (= e!2536695 (and e!2536694 tp!1237510))))

(declare-fun b!4087243 () Bool)

(declare-fun e!2536700 () Bool)

(declare-fun tp_is_empty!20977 () Bool)

(declare-fun tp!1237512 () Bool)

(assert (=> b!4087243 (= e!2536700 (and tp_is_empty!20977 tp!1237512))))

(declare-fun b!4087244 () Bool)

(declare-fun res!1670183 () Bool)

(assert (=> b!4087244 (=> (not res!1670183) (not e!2536691))))

(declare-fun suffix!1518 () List!43943)

(declare-fun input!3411 () List!43943)

(declare-fun ++!11488 (List!43943 List!43943) List!43943)

(assert (=> b!4087244 (= res!1670183 (= input!3411 (++!11488 p!2988 suffix!1518)))))

(declare-fun e!2536693 () Bool)

(declare-fun b!4087245 () Bool)

(declare-fun tp!1237506 () Bool)

(assert (=> b!4087245 (= e!2536693 (and tp!1237506 (inv!58508 (tag!7942 r!4213)) (inv!58511 (transformation!7082 r!4213)) e!2536690))))

(declare-fun b!4087246 () Bool)

(declare-fun e!2536692 () Bool)

(assert (=> b!4087246 (= e!2536692 (not e!2536697))))

(declare-fun res!1670184 () Bool)

(assert (=> b!4087246 (=> res!1670184 e!2536697)))

(declare-fun matchR!5928 (Regex!11987 List!43943) Bool)

(assert (=> b!4087246 (= res!1670184 (not (matchR!5928 (regex!7082 r!4213) p!2988)))))

(declare-fun ruleValid!3002 (LexerInterface!6671 Rule!13964) Bool)

(assert (=> b!4087246 (ruleValid!3002 thiss!26199 r!4213)))

(declare-fun lt!1461906 () Unit!63343)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2068 (LexerInterface!6671 Rule!13964 List!43945) Unit!63343)

(assert (=> b!4087246 (= lt!1461906 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2068 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4087247 () Bool)

(declare-fun e!2536706 () Bool)

(declare-fun tp!1237507 () Bool)

(assert (=> b!4087247 (= e!2536706 (and tp_is_empty!20977 tp!1237507))))

(declare-fun b!4087248 () Bool)

(assert (=> b!4087248 (= e!2536691 e!2536692)))

(declare-fun res!1670175 () Bool)

(assert (=> b!4087248 (=> (not res!1670175) (not e!2536692))))

(declare-fun lt!1461909 () Option!9488)

(declare-fun maxPrefix!3961 (LexerInterface!6671 List!43945 List!43943) Option!9488)

(assert (=> b!4087248 (= res!1670175 (= (maxPrefix!3961 thiss!26199 rules!3870 input!3411) lt!1461909))))

(declare-fun lt!1461905 () Token!13290)

(assert (=> b!4087248 (= lt!1461909 (Some!9487 (tuple2!42757 lt!1461905 suffix!1518)))))

(declare-fun lt!1461907 () BalanceConc!26180)

(declare-fun apply!10265 (TokenValueInjection!14052 BalanceConc!26180) TokenValue!7312)

(declare-fun size!32729 (List!43943) Int)

(assert (=> b!4087248 (= lt!1461905 (Token!13291 (apply!10265 (transformation!7082 r!4213) lt!1461907) r!4213 (size!32729 p!2988) p!2988))))

(declare-fun lt!1461911 () Unit!63343)

(declare-fun lemmaSemiInverse!2049 (TokenValueInjection!14052 BalanceConc!26180) Unit!63343)

(assert (=> b!4087248 (= lt!1461911 (lemmaSemiInverse!2049 (transformation!7082 r!4213) lt!1461907))))

(declare-fun seqFromList!5299 (List!43943) BalanceConc!26180)

(assert (=> b!4087248 (= lt!1461907 (seqFromList!5299 p!2988))))

(declare-fun res!1670182 () Bool)

(assert (=> start!386588 (=> (not res!1670182) (not e!2536691))))

(assert (=> start!386588 (= res!1670182 ((_ is Lexer!6669) thiss!26199))))

(assert (=> start!386588 e!2536691))

(assert (=> start!386588 true))

(assert (=> start!386588 e!2536706))

(assert (=> start!386588 e!2536695))

(declare-fun e!2536696 () Bool)

(assert (=> start!386588 e!2536696))

(assert (=> start!386588 e!2536700))

(assert (=> start!386588 e!2536693))

(declare-fun b!4087249 () Bool)

(declare-fun e!2536705 () Bool)

(assert (=> b!4087249 (= e!2536701 e!2536705)))

(declare-fun res!1670178 () Bool)

(assert (=> b!4087249 (=> res!1670178 e!2536705)))

(assert (=> b!4087249 (= res!1670178 e!2536699)))

(declare-fun res!1670179 () Bool)

(assert (=> b!4087249 (=> (not res!1670179) (not e!2536699))))

(declare-fun lt!1461913 () Bool)

(assert (=> b!4087249 (= res!1670179 (not lt!1461913))))

(assert (=> b!4087249 e!2536703))

(declare-fun res!1670180 () Bool)

(assert (=> b!4087249 (=> res!1670180 e!2536703)))

(assert (=> b!4087249 (= res!1670180 lt!1461913)))

(declare-fun isEmpty!26203 (Option!9488) Bool)

(assert (=> b!4087249 (= lt!1461913 (isEmpty!26203 lt!1461908))))

(assert (=> b!4087249 (= lt!1461908 (maxPrefix!3961 thiss!26199 (t!338272 rules!3870) input!3411))))

(declare-fun lt!1461910 () Unit!63343)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!20 (LexerInterface!6671 Rule!13964 List!43945 List!43943) Unit!63343)

(assert (=> b!4087249 (= lt!1461910 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!20 thiss!26199 (h!49241 rules!3870) (t!338272 rules!3870) input!3411))))

(declare-fun b!4087250 () Bool)

(declare-fun inv!58512 (Token!13290) Bool)

(assert (=> b!4087250 (= e!2536705 (inv!58512 lt!1461905))))

(declare-fun b!4087251 () Bool)

(declare-fun res!1670173 () Bool)

(assert (=> b!4087251 (=> (not res!1670173) (not e!2536691))))

(assert (=> b!4087251 (= res!1670173 (not (isEmpty!26202 rules!3870)))))

(declare-fun b!4087252 () Bool)

(declare-fun tp!1237511 () Bool)

(assert (=> b!4087252 (= e!2536696 (and tp_is_empty!20977 tp!1237511))))

(declare-fun b!4087253 () Bool)

(declare-fun res!1670172 () Bool)

(assert (=> b!4087253 (=> (not res!1670172) (not e!2536691))))

(declare-fun contains!8759 (List!43945 Rule!13964) Bool)

(assert (=> b!4087253 (= res!1670172 (contains!8759 rules!3870 r!4213))))

(declare-fun b!4087254 () Bool)

(declare-fun res!1670181 () Bool)

(assert (=> b!4087254 (=> res!1670181 e!2536705)))

(declare-fun maxPrefixOneRule!2945 (LexerInterface!6671 Rule!13964 List!43943) Option!9488)

(assert (=> b!4087254 (= res!1670181 (not (= (maxPrefixOneRule!2945 thiss!26199 r!4213 input!3411) lt!1461909)))))

(assert (= (and start!386588 res!1670182) b!4087251))

(assert (= (and b!4087251 res!1670173) b!4087239))

(assert (= (and b!4087239 res!1670176) b!4087253))

(assert (= (and b!4087253 res!1670172) b!4087244))

(assert (= (and b!4087244 res!1670183) b!4087233))

(assert (= (and b!4087233 res!1670174) b!4087248))

(assert (= (and b!4087248 res!1670175) b!4087246))

(assert (= (and b!4087246 (not res!1670184)) b!4087236))

(assert (= (and b!4087236 (not res!1670171)) b!4087237))

(assert (= (and b!4087237 (not res!1670177)) b!4087249))

(assert (= (and b!4087249 (not res!1670180)) b!4087235))

(assert (= (and b!4087249 res!1670179) b!4087241))

(assert (= (and b!4087249 (not res!1670178)) b!4087254))

(assert (= (and b!4087254 (not res!1670181)) b!4087250))

(assert (= (and start!386588 ((_ is Cons!43819) suffix!1518)) b!4087247))

(assert (= b!4087240 b!4087238))

(assert (= b!4087242 b!4087240))

(assert (= (and start!386588 ((_ is Cons!43821) rules!3870)) b!4087242))

(assert (= (and start!386588 ((_ is Cons!43819) p!2988)) b!4087252))

(assert (= (and start!386588 ((_ is Cons!43819) input!3411)) b!4087243))

(assert (= b!4087245 b!4087234))

(assert (= start!386588 b!4087245))

(declare-fun m!4694025 () Bool)

(assert (=> b!4087237 m!4694025))

(declare-fun m!4694027 () Bool)

(assert (=> b!4087237 m!4694027))

(declare-fun m!4694029 () Bool)

(assert (=> b!4087237 m!4694029))

(declare-fun m!4694031 () Bool)

(assert (=> b!4087244 m!4694031))

(declare-fun m!4694033 () Bool)

(assert (=> b!4087250 m!4694033))

(declare-fun m!4694035 () Bool)

(assert (=> b!4087253 m!4694035))

(declare-fun m!4694037 () Bool)

(assert (=> b!4087245 m!4694037))

(declare-fun m!4694039 () Bool)

(assert (=> b!4087245 m!4694039))

(declare-fun m!4694041 () Bool)

(assert (=> b!4087251 m!4694041))

(declare-fun m!4694043 () Bool)

(assert (=> b!4087241 m!4694043))

(declare-fun m!4694045 () Bool)

(assert (=> b!4087254 m!4694045))

(declare-fun m!4694047 () Bool)

(assert (=> b!4087246 m!4694047))

(declare-fun m!4694049 () Bool)

(assert (=> b!4087246 m!4694049))

(declare-fun m!4694051 () Bool)

(assert (=> b!4087246 m!4694051))

(declare-fun m!4694053 () Bool)

(assert (=> b!4087248 m!4694053))

(declare-fun m!4694055 () Bool)

(assert (=> b!4087248 m!4694055))

(declare-fun m!4694057 () Bool)

(assert (=> b!4087248 m!4694057))

(declare-fun m!4694059 () Bool)

(assert (=> b!4087248 m!4694059))

(declare-fun m!4694061 () Bool)

(assert (=> b!4087248 m!4694061))

(declare-fun m!4694063 () Bool)

(assert (=> b!4087239 m!4694063))

(declare-fun m!4694065 () Bool)

(assert (=> b!4087240 m!4694065))

(declare-fun m!4694067 () Bool)

(assert (=> b!4087240 m!4694067))

(declare-fun m!4694069 () Bool)

(assert (=> b!4087233 m!4694069))

(declare-fun m!4694071 () Bool)

(assert (=> b!4087249 m!4694071))

(declare-fun m!4694073 () Bool)

(assert (=> b!4087249 m!4694073))

(declare-fun m!4694075 () Bool)

(assert (=> b!4087249 m!4694075))

(assert (=> b!4087235 m!4694043))

(check-sat (not b!4087251) (not b!4087250) (not b!4087235) b_and!314751 (not b!4087247) (not b_next!114923) (not b!4087233) b_and!314753 (not b_next!114925) (not b!4087246) (not b!4087237) (not b!4087239) (not b!4087249) (not b!4087241) (not b!4087248) (not b!4087243) b_and!314749 (not b_next!114921) (not b!4087244) (not b!4087242) (not b!4087254) tp_is_empty!20977 (not b!4087245) b_and!314747 (not b!4087252) (not b!4087240) (not b_next!114927) (not b!4087253))
(check-sat (not b_next!114923) b_and!314749 (not b_next!114921) b_and!314747 b_and!314751 (not b_next!114927) b_and!314753 (not b_next!114925))
(get-model)

(declare-fun d!1213584 () Bool)

(assert (=> d!1213584 (= (inv!58508 (tag!7942 (h!49241 rules!3870))) (= (mod (str.len (value!222488 (tag!7942 (h!49241 rules!3870)))) 2) 0))))

(assert (=> b!4087240 d!1213584))

(declare-fun d!1213586 () Bool)

(declare-fun res!1670201 () Bool)

(declare-fun e!2536718 () Bool)

(assert (=> d!1213586 (=> (not res!1670201) (not e!2536718))))

(declare-fun semiInverseModEq!3039 (Int Int) Bool)

(assert (=> d!1213586 (= res!1670201 (semiInverseModEq!3039 (toChars!9525 (transformation!7082 (h!49241 rules!3870))) (toValue!9666 (transformation!7082 (h!49241 rules!3870)))))))

(assert (=> d!1213586 (= (inv!58511 (transformation!7082 (h!49241 rules!3870))) e!2536718)))

(declare-fun b!4087271 () Bool)

(declare-fun equivClasses!2938 (Int Int) Bool)

(assert (=> b!4087271 (= e!2536718 (equivClasses!2938 (toChars!9525 (transformation!7082 (h!49241 rules!3870))) (toValue!9666 (transformation!7082 (h!49241 rules!3870)))))))

(assert (= (and d!1213586 res!1670201) b!4087271))

(declare-fun m!4694081 () Bool)

(assert (=> d!1213586 m!4694081))

(declare-fun m!4694083 () Bool)

(assert (=> b!4087271 m!4694083))

(assert (=> b!4087240 d!1213586))

(declare-fun d!1213588 () Bool)

(declare-fun res!1670217 () Bool)

(declare-fun e!2536724 () Bool)

(assert (=> d!1213588 (=> (not res!1670217) (not e!2536724))))

(assert (=> d!1213588 (= res!1670217 (not (isEmpty!26201 (originalCharacters!7676 lt!1461905))))))

(assert (=> d!1213588 (= (inv!58512 lt!1461905) e!2536724)))

(declare-fun b!4087284 () Bool)

(declare-fun res!1670218 () Bool)

(assert (=> b!4087284 (=> (not res!1670218) (not e!2536724))))

(declare-fun list!16272 (BalanceConc!26180) List!43943)

(declare-fun dynLambda!18722 (Int TokenValue!7312) BalanceConc!26180)

(assert (=> b!4087284 (= res!1670218 (= (originalCharacters!7676 lt!1461905) (list!16272 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905)))))))

(declare-fun b!4087286 () Bool)

(assert (=> b!4087286 (= e!2536724 (= (size!32728 lt!1461905) (size!32729 (originalCharacters!7676 lt!1461905))))))

(assert (= (and d!1213588 res!1670217) b!4087284))

(assert (= (and b!4087284 res!1670218) b!4087286))

(declare-fun b_lambda!119689 () Bool)

(assert (=> (not b_lambda!119689) (not b!4087284)))

(declare-fun tb!245557 () Bool)

(declare-fun t!338278 () Bool)

(assert (=> (and b!4087238 (= (toChars!9525 (transformation!7082 (h!49241 rules!3870))) (toChars!9525 (transformation!7082 (rule!10214 lt!1461905)))) t!338278) tb!245557))

(declare-fun b!4087297 () Bool)

(declare-fun e!2536727 () Bool)

(declare-fun tp!1237515 () Bool)

(declare-fun inv!58515 (Conc!13293) Bool)

(assert (=> b!4087297 (= e!2536727 (and (inv!58515 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905)))) tp!1237515))))

(declare-fun result!297944 () Bool)

(declare-fun inv!58516 (BalanceConc!26180) Bool)

(assert (=> tb!245557 (= result!297944 (and (inv!58516 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905))) e!2536727))))

(assert (= tb!245557 b!4087297))

(declare-fun m!4694107 () Bool)

(assert (=> b!4087297 m!4694107))

(declare-fun m!4694109 () Bool)

(assert (=> tb!245557 m!4694109))

(assert (=> b!4087284 t!338278))

(declare-fun b_and!314759 () Bool)

(assert (= b_and!314749 (and (=> t!338278 result!297944) b_and!314759)))

(declare-fun t!338280 () Bool)

(declare-fun tb!245559 () Bool)

(assert (=> (and b!4087234 (= (toChars!9525 (transformation!7082 r!4213)) (toChars!9525 (transformation!7082 (rule!10214 lt!1461905)))) t!338280) tb!245559))

(declare-fun result!297948 () Bool)

(assert (= result!297948 result!297944))

(assert (=> b!4087284 t!338280))

(declare-fun b_and!314761 () Bool)

(assert (= b_and!314753 (and (=> t!338280 result!297948) b_and!314761)))

(declare-fun m!4694115 () Bool)

(assert (=> d!1213588 m!4694115))

(declare-fun m!4694119 () Bool)

(assert (=> b!4087284 m!4694119))

(assert (=> b!4087284 m!4694119))

(declare-fun m!4694125 () Bool)

(assert (=> b!4087284 m!4694125))

(declare-fun m!4694127 () Bool)

(assert (=> b!4087286 m!4694127))

(assert (=> b!4087250 d!1213588))

(declare-fun d!1213592 () Bool)

(declare-fun res!1670221 () Bool)

(declare-fun e!2536733 () Bool)

(assert (=> d!1213592 (=> (not res!1670221) (not e!2536733))))

(declare-fun rulesValid!2774 (LexerInterface!6671 List!43945) Bool)

(assert (=> d!1213592 (= res!1670221 (rulesValid!2774 thiss!26199 rules!3870))))

(assert (=> d!1213592 (= (rulesInvariant!6014 thiss!26199 rules!3870) e!2536733)))

(declare-fun b!4087306 () Bool)

(declare-datatypes ((List!43947 0))(
  ( (Nil!43823) (Cons!43823 (h!49243 String!50310) (t!338310 List!43947)) )
))
(declare-fun noDuplicateTag!2775 (LexerInterface!6671 List!43945 List!43947) Bool)

(assert (=> b!4087306 (= e!2536733 (noDuplicateTag!2775 thiss!26199 rules!3870 Nil!43823))))

(assert (= (and d!1213592 res!1670221) b!4087306))

(declare-fun m!4694133 () Bool)

(assert (=> d!1213592 m!4694133))

(declare-fun m!4694135 () Bool)

(assert (=> b!4087306 m!4694135))

(assert (=> b!4087239 d!1213592))

(declare-fun d!1213598 () Bool)

(assert (=> d!1213598 (= (get!14371 lt!1461908) (v!39965 lt!1461908))))

(assert (=> b!4087241 d!1213598))

(declare-fun d!1213600 () Bool)

(assert (=> d!1213600 (= (isEmpty!26202 rules!3870) ((_ is Nil!43821) rules!3870))))

(assert (=> b!4087251 d!1213600))

(declare-fun d!1213602 () Bool)

(declare-fun lt!1461936 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6741 (List!43945) (InoxSet Rule!13964))

(assert (=> d!1213602 (= lt!1461936 (select (content!6741 rules!3870) r!4213))))

(declare-fun e!2536739 () Bool)

(assert (=> d!1213602 (= lt!1461936 e!2536739)))

(declare-fun res!1670227 () Bool)

(assert (=> d!1213602 (=> (not res!1670227) (not e!2536739))))

(assert (=> d!1213602 (= res!1670227 ((_ is Cons!43821) rules!3870))))

(assert (=> d!1213602 (= (contains!8759 rules!3870 r!4213) lt!1461936)))

(declare-fun b!4087311 () Bool)

(declare-fun e!2536738 () Bool)

(assert (=> b!4087311 (= e!2536739 e!2536738)))

(declare-fun res!1670226 () Bool)

(assert (=> b!4087311 (=> res!1670226 e!2536738)))

(assert (=> b!4087311 (= res!1670226 (= (h!49241 rules!3870) r!4213))))

(declare-fun b!4087312 () Bool)

(assert (=> b!4087312 (= e!2536738 (contains!8759 (t!338272 rules!3870) r!4213))))

(assert (= (and d!1213602 res!1670227) b!4087311))

(assert (= (and b!4087311 (not res!1670226)) b!4087312))

(declare-fun m!4694137 () Bool)

(assert (=> d!1213602 m!4694137))

(declare-fun m!4694139 () Bool)

(assert (=> d!1213602 m!4694139))

(declare-fun m!4694141 () Bool)

(assert (=> b!4087312 m!4694141))

(assert (=> b!4087253 d!1213602))

(declare-fun b!4087321 () Bool)

(declare-fun e!2536745 () List!43943)

(assert (=> b!4087321 (= e!2536745 suffix!1518)))

(declare-fun b!4087323 () Bool)

(declare-fun res!1670232 () Bool)

(declare-fun e!2536744 () Bool)

(assert (=> b!4087323 (=> (not res!1670232) (not e!2536744))))

(declare-fun lt!1461939 () List!43943)

(assert (=> b!4087323 (= res!1670232 (= (size!32729 lt!1461939) (+ (size!32729 p!2988) (size!32729 suffix!1518))))))

(declare-fun b!4087322 () Bool)

(assert (=> b!4087322 (= e!2536745 (Cons!43819 (h!49239 p!2988) (++!11488 (t!338270 p!2988) suffix!1518)))))

(declare-fun d!1213604 () Bool)

(assert (=> d!1213604 e!2536744))

(declare-fun res!1670233 () Bool)

(assert (=> d!1213604 (=> (not res!1670233) (not e!2536744))))

(declare-fun content!6742 (List!43943) (InoxSet C!24160))

(assert (=> d!1213604 (= res!1670233 (= (content!6742 lt!1461939) ((_ map or) (content!6742 p!2988) (content!6742 suffix!1518))))))

(assert (=> d!1213604 (= lt!1461939 e!2536745)))

(declare-fun c!704565 () Bool)

(assert (=> d!1213604 (= c!704565 ((_ is Nil!43819) p!2988))))

(assert (=> d!1213604 (= (++!11488 p!2988 suffix!1518) lt!1461939)))

(declare-fun b!4087324 () Bool)

(assert (=> b!4087324 (= e!2536744 (or (not (= suffix!1518 Nil!43819)) (= lt!1461939 p!2988)))))

(assert (= (and d!1213604 c!704565) b!4087321))

(assert (= (and d!1213604 (not c!704565)) b!4087322))

(assert (= (and d!1213604 res!1670233) b!4087323))

(assert (= (and b!4087323 res!1670232) b!4087324))

(declare-fun m!4694143 () Bool)

(assert (=> b!4087323 m!4694143))

(assert (=> b!4087323 m!4694061))

(declare-fun m!4694145 () Bool)

(assert (=> b!4087323 m!4694145))

(declare-fun m!4694147 () Bool)

(assert (=> b!4087322 m!4694147))

(declare-fun m!4694149 () Bool)

(assert (=> d!1213604 m!4694149))

(declare-fun m!4694151 () Bool)

(assert (=> d!1213604 m!4694151))

(declare-fun m!4694153 () Bool)

(assert (=> d!1213604 m!4694153))

(assert (=> b!4087244 d!1213604))

(declare-fun d!1213606 () Bool)

(assert (=> d!1213606 (= (isEmpty!26201 p!2988) ((_ is Nil!43819) p!2988))))

(assert (=> b!4087233 d!1213606))

(declare-fun b!4087343 () Bool)

(declare-fun e!2536756 () Bool)

(declare-fun e!2536754 () Bool)

(assert (=> b!4087343 (= e!2536756 e!2536754)))

(declare-fun res!1670253 () Bool)

(assert (=> b!4087343 (=> (not res!1670253) (not e!2536754))))

(declare-fun lt!1461951 () Option!9488)

(declare-fun charsOf!4846 (Token!13290) BalanceConc!26180)

(assert (=> b!4087343 (= res!1670253 (matchR!5928 (regex!7082 r!4213) (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951))))))))

(declare-fun b!4087344 () Bool)

(declare-fun res!1670251 () Bool)

(assert (=> b!4087344 (=> (not res!1670251) (not e!2536754))))

(assert (=> b!4087344 (= res!1670251 (< (size!32729 (_2!24512 (get!14371 lt!1461951))) (size!32729 input!3411)))))

(declare-fun b!4087345 () Bool)

(declare-fun res!1670249 () Bool)

(assert (=> b!4087345 (=> (not res!1670249) (not e!2536754))))

(assert (=> b!4087345 (= res!1670249 (= (value!222489 (_1!24512 (get!14371 lt!1461951))) (apply!10265 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461951)))) (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1461951)))))))))

(declare-fun b!4087347 () Bool)

(declare-fun res!1670254 () Bool)

(assert (=> b!4087347 (=> (not res!1670254) (not e!2536754))))

(assert (=> b!4087347 (= res!1670254 (= (rule!10214 (_1!24512 (get!14371 lt!1461951))) r!4213))))

(declare-fun b!4087348 () Bool)

(assert (=> b!4087348 (= e!2536754 (= (size!32728 (_1!24512 (get!14371 lt!1461951))) (size!32729 (originalCharacters!7676 (_1!24512 (get!14371 lt!1461951))))))))

(declare-fun b!4087349 () Bool)

(declare-fun e!2536757 () Bool)

(declare-datatypes ((tuple2!42760 0))(
  ( (tuple2!42761 (_1!24514 List!43943) (_2!24514 List!43943)) )
))
(declare-fun findLongestMatchInner!1452 (Regex!11987 List!43943 Int List!43943 List!43943 Int) tuple2!42760)

(assert (=> b!4087349 (= e!2536757 (matchR!5928 (regex!7082 r!4213) (_1!24514 (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)))))))

(declare-fun b!4087350 () Bool)

(declare-fun e!2536755 () Option!9488)

(declare-fun lt!1461954 () tuple2!42760)

(declare-fun size!32731 (BalanceConc!26180) Int)

(assert (=> b!4087350 (= e!2536755 (Some!9487 (tuple2!42757 (Token!13291 (apply!10265 (transformation!7082 r!4213) (seqFromList!5299 (_1!24514 lt!1461954))) r!4213 (size!32731 (seqFromList!5299 (_1!24514 lt!1461954))) (_1!24514 lt!1461954)) (_2!24514 lt!1461954))))))

(declare-fun lt!1461952 () Unit!63343)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1425 (Regex!11987 List!43943) Unit!63343)

(assert (=> b!4087350 (= lt!1461952 (longestMatchIsAcceptedByMatchOrIsEmpty!1425 (regex!7082 r!4213) input!3411))))

(declare-fun res!1670252 () Bool)

(assert (=> b!4087350 (= res!1670252 (isEmpty!26201 (_1!24514 (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)))))))

(assert (=> b!4087350 (=> res!1670252 e!2536757)))

(assert (=> b!4087350 e!2536757))

(declare-fun lt!1461953 () Unit!63343)

(assert (=> b!4087350 (= lt!1461953 lt!1461952)))

(declare-fun lt!1461950 () Unit!63343)

(assert (=> b!4087350 (= lt!1461950 (lemmaSemiInverse!2049 (transformation!7082 r!4213) (seqFromList!5299 (_1!24514 lt!1461954))))))

(declare-fun b!4087351 () Bool)

(assert (=> b!4087351 (= e!2536755 None!9487)))

(declare-fun b!4087346 () Bool)

(declare-fun res!1670248 () Bool)

(assert (=> b!4087346 (=> (not res!1670248) (not e!2536754))))

(assert (=> b!4087346 (= res!1670248 (= (++!11488 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951)))) (_2!24512 (get!14371 lt!1461951))) input!3411))))

(declare-fun d!1213608 () Bool)

(assert (=> d!1213608 e!2536756))

(declare-fun res!1670250 () Bool)

(assert (=> d!1213608 (=> res!1670250 e!2536756)))

(assert (=> d!1213608 (= res!1670250 (isEmpty!26203 lt!1461951))))

(assert (=> d!1213608 (= lt!1461951 e!2536755)))

(declare-fun c!704568 () Bool)

(assert (=> d!1213608 (= c!704568 (isEmpty!26201 (_1!24514 lt!1461954)))))

(declare-fun findLongestMatch!1365 (Regex!11987 List!43943) tuple2!42760)

(assert (=> d!1213608 (= lt!1461954 (findLongestMatch!1365 (regex!7082 r!4213) input!3411))))

(assert (=> d!1213608 (ruleValid!3002 thiss!26199 r!4213)))

(assert (=> d!1213608 (= (maxPrefixOneRule!2945 thiss!26199 r!4213 input!3411) lt!1461951)))

(assert (= (and d!1213608 c!704568) b!4087351))

(assert (= (and d!1213608 (not c!704568)) b!4087350))

(assert (= (and b!4087350 (not res!1670252)) b!4087349))

(assert (= (and d!1213608 (not res!1670250)) b!4087343))

(assert (= (and b!4087343 res!1670253) b!4087346))

(assert (= (and b!4087346 res!1670248) b!4087344))

(assert (= (and b!4087344 res!1670251) b!4087347))

(assert (= (and b!4087347 res!1670254) b!4087345))

(assert (= (and b!4087345 res!1670249) b!4087348))

(declare-fun m!4694155 () Bool)

(assert (=> b!4087347 m!4694155))

(assert (=> b!4087348 m!4694155))

(declare-fun m!4694157 () Bool)

(assert (=> b!4087348 m!4694157))

(declare-fun m!4694159 () Bool)

(assert (=> d!1213608 m!4694159))

(declare-fun m!4694161 () Bool)

(assert (=> d!1213608 m!4694161))

(declare-fun m!4694163 () Bool)

(assert (=> d!1213608 m!4694163))

(assert (=> d!1213608 m!4694049))

(declare-fun m!4694165 () Bool)

(assert (=> b!4087350 m!4694165))

(declare-fun m!4694167 () Bool)

(assert (=> b!4087350 m!4694167))

(declare-fun m!4694169 () Bool)

(assert (=> b!4087350 m!4694169))

(declare-fun m!4694171 () Bool)

(assert (=> b!4087350 m!4694171))

(declare-fun m!4694173 () Bool)

(assert (=> b!4087350 m!4694173))

(declare-fun m!4694175 () Bool)

(assert (=> b!4087350 m!4694175))

(declare-fun m!4694177 () Bool)

(assert (=> b!4087350 m!4694177))

(assert (=> b!4087350 m!4694175))

(declare-fun m!4694179 () Bool)

(assert (=> b!4087350 m!4694179))

(assert (=> b!4087350 m!4694171))

(assert (=> b!4087350 m!4694169))

(assert (=> b!4087350 m!4694175))

(declare-fun m!4694181 () Bool)

(assert (=> b!4087350 m!4694181))

(assert (=> b!4087350 m!4694175))

(assert (=> b!4087346 m!4694155))

(declare-fun m!4694183 () Bool)

(assert (=> b!4087346 m!4694183))

(assert (=> b!4087346 m!4694183))

(declare-fun m!4694185 () Bool)

(assert (=> b!4087346 m!4694185))

(assert (=> b!4087346 m!4694185))

(declare-fun m!4694187 () Bool)

(assert (=> b!4087346 m!4694187))

(assert (=> b!4087343 m!4694155))

(assert (=> b!4087343 m!4694183))

(assert (=> b!4087343 m!4694183))

(assert (=> b!4087343 m!4694185))

(assert (=> b!4087343 m!4694185))

(declare-fun m!4694189 () Bool)

(assert (=> b!4087343 m!4694189))

(assert (=> b!4087349 m!4694169))

(assert (=> b!4087349 m!4694171))

(assert (=> b!4087349 m!4694169))

(assert (=> b!4087349 m!4694171))

(assert (=> b!4087349 m!4694173))

(declare-fun m!4694191 () Bool)

(assert (=> b!4087349 m!4694191))

(assert (=> b!4087344 m!4694155))

(declare-fun m!4694193 () Bool)

(assert (=> b!4087344 m!4694193))

(assert (=> b!4087344 m!4694171))

(assert (=> b!4087345 m!4694155))

(declare-fun m!4694195 () Bool)

(assert (=> b!4087345 m!4694195))

(assert (=> b!4087345 m!4694195))

(declare-fun m!4694197 () Bool)

(assert (=> b!4087345 m!4694197))

(assert (=> b!4087254 d!1213608))

(declare-fun d!1213610 () Bool)

(assert (=> d!1213610 (= (inv!58508 (tag!7942 r!4213)) (= (mod (str.len (value!222488 (tag!7942 r!4213))) 2) 0))))

(assert (=> b!4087245 d!1213610))

(declare-fun d!1213612 () Bool)

(declare-fun res!1670255 () Bool)

(declare-fun e!2536758 () Bool)

(assert (=> d!1213612 (=> (not res!1670255) (not e!2536758))))

(assert (=> d!1213612 (= res!1670255 (semiInverseModEq!3039 (toChars!9525 (transformation!7082 r!4213)) (toValue!9666 (transformation!7082 r!4213))))))

(assert (=> d!1213612 (= (inv!58511 (transformation!7082 r!4213)) e!2536758)))

(declare-fun b!4087352 () Bool)

(assert (=> b!4087352 (= e!2536758 (equivClasses!2938 (toChars!9525 (transformation!7082 r!4213)) (toValue!9666 (transformation!7082 r!4213))))))

(assert (= (and d!1213612 res!1670255) b!4087352))

(declare-fun m!4694199 () Bool)

(assert (=> d!1213612 m!4694199))

(declare-fun m!4694201 () Bool)

(assert (=> b!4087352 m!4694201))

(assert (=> b!4087245 d!1213612))

(declare-fun d!1213614 () Bool)

(declare-fun e!2536779 () Bool)

(assert (=> d!1213614 e!2536779))

(declare-fun c!704577 () Bool)

(assert (=> d!1213614 (= c!704577 ((_ is EmptyExpr!11987) (regex!7082 r!4213)))))

(declare-fun lt!1461957 () Bool)

(declare-fun e!2536775 () Bool)

(assert (=> d!1213614 (= lt!1461957 e!2536775)))

(declare-fun c!704575 () Bool)

(assert (=> d!1213614 (= c!704575 (isEmpty!26201 p!2988))))

(declare-fun validRegex!5428 (Regex!11987) Bool)

(assert (=> d!1213614 (validRegex!5428 (regex!7082 r!4213))))

(assert (=> d!1213614 (= (matchR!5928 (regex!7082 r!4213) p!2988) lt!1461957)))

(declare-fun b!4087381 () Bool)

(declare-fun e!2536776 () Bool)

(assert (=> b!4087381 (= e!2536776 (not lt!1461957))))

(declare-fun b!4087382 () Bool)

(declare-fun e!2536773 () Bool)

(declare-fun head!8639 (List!43943) C!24160)

(assert (=> b!4087382 (= e!2536773 (not (= (head!8639 p!2988) (c!704554 (regex!7082 r!4213)))))))

(declare-fun b!4087383 () Bool)

(assert (=> b!4087383 (= e!2536779 e!2536776)))

(declare-fun c!704576 () Bool)

(assert (=> b!4087383 (= c!704576 ((_ is EmptyLang!11987) (regex!7082 r!4213)))))

(declare-fun b!4087384 () Bool)

(declare-fun res!1670275 () Bool)

(declare-fun e!2536774 () Bool)

(assert (=> b!4087384 (=> res!1670275 e!2536774)))

(assert (=> b!4087384 (= res!1670275 (not ((_ is ElementMatch!11987) (regex!7082 r!4213))))))

(assert (=> b!4087384 (= e!2536776 e!2536774)))

(declare-fun b!4087385 () Bool)

(declare-fun res!1670279 () Bool)

(assert (=> b!4087385 (=> res!1670279 e!2536773)))

(declare-fun tail!6373 (List!43943) List!43943)

(assert (=> b!4087385 (= res!1670279 (not (isEmpty!26201 (tail!6373 p!2988))))))

(declare-fun b!4087386 () Bool)

(declare-fun e!2536778 () Bool)

(assert (=> b!4087386 (= e!2536778 (= (head!8639 p!2988) (c!704554 (regex!7082 r!4213))))))

(declare-fun b!4087387 () Bool)

(declare-fun call!288932 () Bool)

(assert (=> b!4087387 (= e!2536779 (= lt!1461957 call!288932))))

(declare-fun b!4087388 () Bool)

(declare-fun res!1670273 () Bool)

(assert (=> b!4087388 (=> res!1670273 e!2536774)))

(assert (=> b!4087388 (= res!1670273 e!2536778)))

(declare-fun res!1670277 () Bool)

(assert (=> b!4087388 (=> (not res!1670277) (not e!2536778))))

(assert (=> b!4087388 (= res!1670277 lt!1461957)))

(declare-fun bm!288927 () Bool)

(assert (=> bm!288927 (= call!288932 (isEmpty!26201 p!2988))))

(declare-fun b!4087389 () Bool)

(declare-fun res!1670272 () Bool)

(assert (=> b!4087389 (=> (not res!1670272) (not e!2536778))))

(assert (=> b!4087389 (= res!1670272 (isEmpty!26201 (tail!6373 p!2988)))))

(declare-fun b!4087390 () Bool)

(declare-fun e!2536777 () Bool)

(assert (=> b!4087390 (= e!2536774 e!2536777)))

(declare-fun res!1670274 () Bool)

(assert (=> b!4087390 (=> (not res!1670274) (not e!2536777))))

(assert (=> b!4087390 (= res!1670274 (not lt!1461957))))

(declare-fun b!4087391 () Bool)

(declare-fun res!1670278 () Bool)

(assert (=> b!4087391 (=> (not res!1670278) (not e!2536778))))

(assert (=> b!4087391 (= res!1670278 (not call!288932))))

(declare-fun b!4087392 () Bool)

(assert (=> b!4087392 (= e!2536777 e!2536773)))

(declare-fun res!1670276 () Bool)

(assert (=> b!4087392 (=> res!1670276 e!2536773)))

(assert (=> b!4087392 (= res!1670276 call!288932)))

(declare-fun b!4087393 () Bool)

(declare-fun nullable!4228 (Regex!11987) Bool)

(assert (=> b!4087393 (= e!2536775 (nullable!4228 (regex!7082 r!4213)))))

(declare-fun b!4087394 () Bool)

(declare-fun derivativeStep!3629 (Regex!11987 C!24160) Regex!11987)

(assert (=> b!4087394 (= e!2536775 (matchR!5928 (derivativeStep!3629 (regex!7082 r!4213) (head!8639 p!2988)) (tail!6373 p!2988)))))

(assert (= (and d!1213614 c!704575) b!4087393))

(assert (= (and d!1213614 (not c!704575)) b!4087394))

(assert (= (and d!1213614 c!704577) b!4087387))

(assert (= (and d!1213614 (not c!704577)) b!4087383))

(assert (= (and b!4087383 c!704576) b!4087381))

(assert (= (and b!4087383 (not c!704576)) b!4087384))

(assert (= (and b!4087384 (not res!1670275)) b!4087388))

(assert (= (and b!4087388 res!1670277) b!4087391))

(assert (= (and b!4087391 res!1670278) b!4087389))

(assert (= (and b!4087389 res!1670272) b!4087386))

(assert (= (and b!4087388 (not res!1670273)) b!4087390))

(assert (= (and b!4087390 res!1670274) b!4087392))

(assert (= (and b!4087392 (not res!1670276)) b!4087385))

(assert (= (and b!4087385 (not res!1670279)) b!4087382))

(assert (= (or b!4087387 b!4087391 b!4087392) bm!288927))

(declare-fun m!4694203 () Bool)

(assert (=> b!4087382 m!4694203))

(assert (=> bm!288927 m!4694069))

(declare-fun m!4694205 () Bool)

(assert (=> b!4087389 m!4694205))

(assert (=> b!4087389 m!4694205))

(declare-fun m!4694207 () Bool)

(assert (=> b!4087389 m!4694207))

(assert (=> b!4087394 m!4694203))

(assert (=> b!4087394 m!4694203))

(declare-fun m!4694209 () Bool)

(assert (=> b!4087394 m!4694209))

(assert (=> b!4087394 m!4694205))

(assert (=> b!4087394 m!4694209))

(assert (=> b!4087394 m!4694205))

(declare-fun m!4694211 () Bool)

(assert (=> b!4087394 m!4694211))

(assert (=> d!1213614 m!4694069))

(declare-fun m!4694213 () Bool)

(assert (=> d!1213614 m!4694213))

(declare-fun m!4694215 () Bool)

(assert (=> b!4087393 m!4694215))

(assert (=> b!4087385 m!4694205))

(assert (=> b!4087385 m!4694205))

(assert (=> b!4087385 m!4694207))

(assert (=> b!4087386 m!4694203))

(assert (=> b!4087246 d!1213614))

(declare-fun d!1213616 () Bool)

(declare-fun res!1670284 () Bool)

(declare-fun e!2536782 () Bool)

(assert (=> d!1213616 (=> (not res!1670284) (not e!2536782))))

(assert (=> d!1213616 (= res!1670284 (validRegex!5428 (regex!7082 r!4213)))))

(assert (=> d!1213616 (= (ruleValid!3002 thiss!26199 r!4213) e!2536782)))

(declare-fun b!4087399 () Bool)

(declare-fun res!1670285 () Bool)

(assert (=> b!4087399 (=> (not res!1670285) (not e!2536782))))

(assert (=> b!4087399 (= res!1670285 (not (nullable!4228 (regex!7082 r!4213))))))

(declare-fun b!4087400 () Bool)

(assert (=> b!4087400 (= e!2536782 (not (= (tag!7942 r!4213) (String!50311 ""))))))

(assert (= (and d!1213616 res!1670284) b!4087399))

(assert (= (and b!4087399 res!1670285) b!4087400))

(assert (=> d!1213616 m!4694213))

(assert (=> b!4087399 m!4694215))

(assert (=> b!4087246 d!1213616))

(declare-fun d!1213618 () Bool)

(assert (=> d!1213618 (ruleValid!3002 thiss!26199 r!4213)))

(declare-fun lt!1461960 () Unit!63343)

(declare-fun choose!24959 (LexerInterface!6671 Rule!13964 List!43945) Unit!63343)

(assert (=> d!1213618 (= lt!1461960 (choose!24959 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1213618 (contains!8759 rules!3870 r!4213)))

(assert (=> d!1213618 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2068 thiss!26199 r!4213 rules!3870) lt!1461960)))

(declare-fun bs!593136 () Bool)

(assert (= bs!593136 d!1213618))

(assert (=> bs!593136 m!4694049))

(declare-fun m!4694217 () Bool)

(assert (=> bs!593136 m!4694217))

(assert (=> bs!593136 m!4694035))

(assert (=> b!4087246 d!1213618))

(assert (=> b!4087235 d!1213598))

(declare-fun b!4087419 () Bool)

(declare-fun e!2536789 () Option!9488)

(declare-fun call!288935 () Option!9488)

(assert (=> b!4087419 (= e!2536789 call!288935)))

(declare-fun b!4087420 () Bool)

(declare-fun res!1670300 () Bool)

(declare-fun e!2536791 () Bool)

(assert (=> b!4087420 (=> (not res!1670300) (not e!2536791))))

(declare-fun lt!1461973 () Option!9488)

(assert (=> b!4087420 (= res!1670300 (= (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973)))) (originalCharacters!7676 (_1!24512 (get!14371 lt!1461973)))))))

(declare-fun b!4087421 () Bool)

(declare-fun lt!1461975 () Option!9488)

(declare-fun lt!1461972 () Option!9488)

(assert (=> b!4087421 (= e!2536789 (ite (and ((_ is None!9487) lt!1461975) ((_ is None!9487) lt!1461972)) None!9487 (ite ((_ is None!9487) lt!1461972) lt!1461975 (ite ((_ is None!9487) lt!1461975) lt!1461972 (ite (>= (size!32728 (_1!24512 (v!39965 lt!1461975))) (size!32728 (_1!24512 (v!39965 lt!1461972)))) lt!1461975 lt!1461972)))))))

(assert (=> b!4087421 (= lt!1461975 call!288935)))

(assert (=> b!4087421 (= lt!1461972 (maxPrefix!3961 thiss!26199 (t!338272 rules!3870) input!3411))))

(declare-fun b!4087422 () Bool)

(declare-fun res!1670305 () Bool)

(assert (=> b!4087422 (=> (not res!1670305) (not e!2536791))))

(assert (=> b!4087422 (= res!1670305 (matchR!5928 (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973)))) (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973))))))))

(declare-fun bm!288930 () Bool)

(assert (=> bm!288930 (= call!288935 (maxPrefixOneRule!2945 thiss!26199 (h!49241 rules!3870) input!3411))))

(declare-fun b!4087424 () Bool)

(assert (=> b!4087424 (= e!2536791 (contains!8759 rules!3870 (rule!10214 (_1!24512 (get!14371 lt!1461973)))))))

(declare-fun b!4087425 () Bool)

(declare-fun res!1670303 () Bool)

(assert (=> b!4087425 (=> (not res!1670303) (not e!2536791))))

(assert (=> b!4087425 (= res!1670303 (< (size!32729 (_2!24512 (get!14371 lt!1461973))) (size!32729 input!3411)))))

(declare-fun d!1213620 () Bool)

(declare-fun e!2536790 () Bool)

(assert (=> d!1213620 e!2536790))

(declare-fun res!1670301 () Bool)

(assert (=> d!1213620 (=> res!1670301 e!2536790)))

(assert (=> d!1213620 (= res!1670301 (isEmpty!26203 lt!1461973))))

(assert (=> d!1213620 (= lt!1461973 e!2536789)))

(declare-fun c!704580 () Bool)

(assert (=> d!1213620 (= c!704580 (and ((_ is Cons!43821) rules!3870) ((_ is Nil!43821) (t!338272 rules!3870))))))

(declare-fun lt!1461974 () Unit!63343)

(declare-fun lt!1461971 () Unit!63343)

(assert (=> d!1213620 (= lt!1461974 lt!1461971)))

(declare-fun isPrefix!4133 (List!43943 List!43943) Bool)

(assert (=> d!1213620 (isPrefix!4133 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2684 (List!43943 List!43943) Unit!63343)

(assert (=> d!1213620 (= lt!1461971 (lemmaIsPrefixRefl!2684 input!3411 input!3411))))

(declare-fun rulesValidInductive!2615 (LexerInterface!6671 List!43945) Bool)

(assert (=> d!1213620 (rulesValidInductive!2615 thiss!26199 rules!3870)))

(assert (=> d!1213620 (= (maxPrefix!3961 thiss!26199 rules!3870 input!3411) lt!1461973)))

(declare-fun b!4087423 () Bool)

(declare-fun res!1670302 () Bool)

(assert (=> b!4087423 (=> (not res!1670302) (not e!2536791))))

(assert (=> b!4087423 (= res!1670302 (= (++!11488 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973)))) (_2!24512 (get!14371 lt!1461973))) input!3411))))

(declare-fun b!4087426 () Bool)

(declare-fun res!1670306 () Bool)

(assert (=> b!4087426 (=> (not res!1670306) (not e!2536791))))

(assert (=> b!4087426 (= res!1670306 (= (value!222489 (_1!24512 (get!14371 lt!1461973))) (apply!10265 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973)))) (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1461973)))))))))

(declare-fun b!4087427 () Bool)

(assert (=> b!4087427 (= e!2536790 e!2536791)))

(declare-fun res!1670304 () Bool)

(assert (=> b!4087427 (=> (not res!1670304) (not e!2536791))))

(declare-fun isDefined!7182 (Option!9488) Bool)

(assert (=> b!4087427 (= res!1670304 (isDefined!7182 lt!1461973))))

(assert (= (and d!1213620 c!704580) b!4087419))

(assert (= (and d!1213620 (not c!704580)) b!4087421))

(assert (= (or b!4087419 b!4087421) bm!288930))

(assert (= (and d!1213620 (not res!1670301)) b!4087427))

(assert (= (and b!4087427 res!1670304) b!4087420))

(assert (= (and b!4087420 res!1670300) b!4087425))

(assert (= (and b!4087425 res!1670303) b!4087423))

(assert (= (and b!4087423 res!1670302) b!4087426))

(assert (= (and b!4087426 res!1670306) b!4087422))

(assert (= (and b!4087422 res!1670305) b!4087424))

(declare-fun m!4694219 () Bool)

(assert (=> b!4087420 m!4694219))

(declare-fun m!4694221 () Bool)

(assert (=> b!4087420 m!4694221))

(assert (=> b!4087420 m!4694221))

(declare-fun m!4694223 () Bool)

(assert (=> b!4087420 m!4694223))

(assert (=> b!4087424 m!4694219))

(declare-fun m!4694225 () Bool)

(assert (=> b!4087424 m!4694225))

(assert (=> b!4087423 m!4694219))

(assert (=> b!4087423 m!4694221))

(assert (=> b!4087423 m!4694221))

(assert (=> b!4087423 m!4694223))

(assert (=> b!4087423 m!4694223))

(declare-fun m!4694227 () Bool)

(assert (=> b!4087423 m!4694227))

(assert (=> b!4087426 m!4694219))

(declare-fun m!4694229 () Bool)

(assert (=> b!4087426 m!4694229))

(assert (=> b!4087426 m!4694229))

(declare-fun m!4694231 () Bool)

(assert (=> b!4087426 m!4694231))

(assert (=> b!4087421 m!4694073))

(assert (=> b!4087422 m!4694219))

(assert (=> b!4087422 m!4694221))

(assert (=> b!4087422 m!4694221))

(assert (=> b!4087422 m!4694223))

(assert (=> b!4087422 m!4694223))

(declare-fun m!4694233 () Bool)

(assert (=> b!4087422 m!4694233))

(declare-fun m!4694235 () Bool)

(assert (=> b!4087427 m!4694235))

(declare-fun m!4694237 () Bool)

(assert (=> bm!288930 m!4694237))

(declare-fun m!4694239 () Bool)

(assert (=> d!1213620 m!4694239))

(declare-fun m!4694241 () Bool)

(assert (=> d!1213620 m!4694241))

(declare-fun m!4694243 () Bool)

(assert (=> d!1213620 m!4694243))

(declare-fun m!4694245 () Bool)

(assert (=> d!1213620 m!4694245))

(assert (=> b!4087425 m!4694219))

(declare-fun m!4694247 () Bool)

(assert (=> b!4087425 m!4694247))

(assert (=> b!4087425 m!4694171))

(assert (=> b!4087248 d!1213620))

(declare-fun d!1213622 () Bool)

(declare-fun dynLambda!18723 (Int BalanceConc!26180) TokenValue!7312)

(assert (=> d!1213622 (= (apply!10265 (transformation!7082 r!4213) lt!1461907) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907))))

(declare-fun b_lambda!119691 () Bool)

(assert (=> (not b_lambda!119691) (not d!1213622)))

(declare-fun tb!245561 () Bool)

(declare-fun t!338282 () Bool)

(assert (=> (and b!4087238 (= (toValue!9666 (transformation!7082 (h!49241 rules!3870))) (toValue!9666 (transformation!7082 r!4213))) t!338282) tb!245561))

(declare-fun result!297950 () Bool)

(declare-fun inv!21 (TokenValue!7312) Bool)

(assert (=> tb!245561 (= result!297950 (inv!21 (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907)))))

(declare-fun m!4694249 () Bool)

(assert (=> tb!245561 m!4694249))

(assert (=> d!1213622 t!338282))

(declare-fun b_and!314763 () Bool)

(assert (= b_and!314747 (and (=> t!338282 result!297950) b_and!314763)))

(declare-fun t!338284 () Bool)

(declare-fun tb!245563 () Bool)

(assert (=> (and b!4087234 (= (toValue!9666 (transformation!7082 r!4213)) (toValue!9666 (transformation!7082 r!4213))) t!338284) tb!245563))

(declare-fun result!297954 () Bool)

(assert (= result!297954 result!297950))

(assert (=> d!1213622 t!338284))

(declare-fun b_and!314765 () Bool)

(assert (= b_and!314751 (and (=> t!338284 result!297954) b_and!314765)))

(declare-fun m!4694251 () Bool)

(assert (=> d!1213622 m!4694251))

(assert (=> b!4087248 d!1213622))

(declare-fun d!1213624 () Bool)

(declare-fun lt!1461978 () Int)

(assert (=> d!1213624 (>= lt!1461978 0)))

(declare-fun e!2536797 () Int)

(assert (=> d!1213624 (= lt!1461978 e!2536797)))

(declare-fun c!704583 () Bool)

(assert (=> d!1213624 (= c!704583 ((_ is Nil!43819) p!2988))))

(assert (=> d!1213624 (= (size!32729 p!2988) lt!1461978)))

(declare-fun b!4087434 () Bool)

(assert (=> b!4087434 (= e!2536797 0)))

(declare-fun b!4087435 () Bool)

(assert (=> b!4087435 (= e!2536797 (+ 1 (size!32729 (t!338270 p!2988))))))

(assert (= (and d!1213624 c!704583) b!4087434))

(assert (= (and d!1213624 (not c!704583)) b!4087435))

(declare-fun m!4694253 () Bool)

(assert (=> b!4087435 m!4694253))

(assert (=> b!4087248 d!1213624))

(declare-fun d!1213626 () Bool)

(declare-fun fromListB!2426 (List!43943) BalanceConc!26180)

(assert (=> d!1213626 (= (seqFromList!5299 p!2988) (fromListB!2426 p!2988))))

(declare-fun bs!593137 () Bool)

(assert (= bs!593137 d!1213626))

(declare-fun m!4694255 () Bool)

(assert (=> bs!593137 m!4694255))

(assert (=> b!4087248 d!1213626))

(declare-fun b!4087606 () Bool)

(declare-fun e!2536893 () Bool)

(assert (=> b!4087606 (= e!2536893 true)))

(declare-fun d!1213628 () Bool)

(assert (=> d!1213628 e!2536893))

(assert (= d!1213628 b!4087606))

(declare-fun order!23013 () Int)

(declare-fun lambda!127937 () Int)

(declare-fun order!23015 () Int)

(declare-fun dynLambda!18724 (Int Int) Int)

(declare-fun dynLambda!18725 (Int Int) Int)

(assert (=> b!4087606 (< (dynLambda!18724 order!23013 (toValue!9666 (transformation!7082 r!4213))) (dynLambda!18725 order!23015 lambda!127937))))

(declare-fun order!23017 () Int)

(declare-fun dynLambda!18726 (Int Int) Int)

(assert (=> b!4087606 (< (dynLambda!18726 order!23017 (toChars!9525 (transformation!7082 r!4213))) (dynLambda!18725 order!23015 lambda!127937))))

(assert (=> d!1213628 (= (list!16272 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907))) (list!16272 lt!1461907))))

(declare-fun lt!1462020 () Unit!63343)

(declare-fun ForallOf!879 (Int BalanceConc!26180) Unit!63343)

(assert (=> d!1213628 (= lt!1462020 (ForallOf!879 lambda!127937 lt!1461907))))

(assert (=> d!1213628 (= (lemmaSemiInverse!2049 (transformation!7082 r!4213) lt!1461907) lt!1462020)))

(declare-fun b_lambda!119705 () Bool)

(assert (=> (not b_lambda!119705) (not d!1213628)))

(declare-fun t!338301 () Bool)

(declare-fun tb!245579 () Bool)

(assert (=> (and b!4087238 (= (toChars!9525 (transformation!7082 (h!49241 rules!3870))) (toChars!9525 (transformation!7082 r!4213))) t!338301) tb!245579))

(declare-fun b!4087607 () Bool)

(declare-fun tp!1237557 () Bool)

(declare-fun e!2536894 () Bool)

(assert (=> b!4087607 (= e!2536894 (and (inv!58515 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907)))) tp!1237557))))

(declare-fun result!297978 () Bool)

(assert (=> tb!245579 (= result!297978 (and (inv!58516 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907))) e!2536894))))

(assert (= tb!245579 b!4087607))

(declare-fun m!4694415 () Bool)

(assert (=> b!4087607 m!4694415))

(declare-fun m!4694417 () Bool)

(assert (=> tb!245579 m!4694417))

(assert (=> d!1213628 t!338301))

(declare-fun b_and!314783 () Bool)

(assert (= b_and!314759 (and (=> t!338301 result!297978) b_and!314783)))

(declare-fun t!338303 () Bool)

(declare-fun tb!245581 () Bool)

(assert (=> (and b!4087234 (= (toChars!9525 (transformation!7082 r!4213)) (toChars!9525 (transformation!7082 r!4213))) t!338303) tb!245581))

(declare-fun result!297980 () Bool)

(assert (= result!297980 result!297978))

(assert (=> d!1213628 t!338303))

(declare-fun b_and!314785 () Bool)

(assert (= b_and!314761 (and (=> t!338303 result!297980) b_and!314785)))

(declare-fun b_lambda!119707 () Bool)

(assert (=> (not b_lambda!119707) (not d!1213628)))

(assert (=> d!1213628 t!338282))

(declare-fun b_and!314787 () Bool)

(assert (= b_and!314763 (and (=> t!338282 result!297950) b_and!314787)))

(assert (=> d!1213628 t!338284))

(declare-fun b_and!314789 () Bool)

(assert (= b_and!314765 (and (=> t!338284 result!297954) b_and!314789)))

(declare-fun m!4694419 () Bool)

(assert (=> d!1213628 m!4694419))

(declare-fun m!4694421 () Bool)

(assert (=> d!1213628 m!4694421))

(assert (=> d!1213628 m!4694251))

(declare-fun m!4694423 () Bool)

(assert (=> d!1213628 m!4694423))

(assert (=> d!1213628 m!4694251))

(assert (=> d!1213628 m!4694423))

(declare-fun m!4694425 () Bool)

(assert (=> d!1213628 m!4694425))

(assert (=> b!4087248 d!1213628))

(declare-fun d!1213672 () Bool)

(assert (=> d!1213672 (= (isEmpty!26202 (t!338272 rules!3870)) ((_ is Nil!43821) (t!338272 rules!3870)))))

(assert (=> b!4087237 d!1213672))

(declare-fun d!1213674 () Bool)

(declare-fun res!1670394 () Bool)

(declare-fun e!2536895 () Bool)

(assert (=> d!1213674 (=> (not res!1670394) (not e!2536895))))

(assert (=> d!1213674 (= res!1670394 (rulesValid!2774 thiss!26199 (t!338272 rules!3870)))))

(assert (=> d!1213674 (= (rulesInvariant!6014 thiss!26199 (t!338272 rules!3870)) e!2536895)))

(declare-fun b!4087608 () Bool)

(assert (=> b!4087608 (= e!2536895 (noDuplicateTag!2775 thiss!26199 (t!338272 rules!3870) Nil!43823))))

(assert (= (and d!1213674 res!1670394) b!4087608))

(declare-fun m!4694427 () Bool)

(assert (=> d!1213674 m!4694427))

(declare-fun m!4694429 () Bool)

(assert (=> b!4087608 m!4694429))

(assert (=> b!4087237 d!1213674))

(declare-fun d!1213676 () Bool)

(assert (=> d!1213676 (rulesInvariant!6014 thiss!26199 (t!338272 rules!3870))))

(declare-fun lt!1462023 () Unit!63343)

(declare-fun choose!24960 (LexerInterface!6671 Rule!13964 List!43945) Unit!63343)

(assert (=> d!1213676 (= lt!1462023 (choose!24960 thiss!26199 (h!49241 rules!3870) (t!338272 rules!3870)))))

(assert (=> d!1213676 (rulesInvariant!6014 thiss!26199 (Cons!43821 (h!49241 rules!3870) (t!338272 rules!3870)))))

(assert (=> d!1213676 (= (lemmaInvariantOnRulesThenOnTail!786 thiss!26199 (h!49241 rules!3870) (t!338272 rules!3870)) lt!1462023)))

(declare-fun bs!593140 () Bool)

(assert (= bs!593140 d!1213676))

(assert (=> bs!593140 m!4694027))

(declare-fun m!4694431 () Bool)

(assert (=> bs!593140 m!4694431))

(declare-fun m!4694433 () Bool)

(assert (=> bs!593140 m!4694433))

(assert (=> b!4087237 d!1213676))

(declare-fun d!1213678 () Bool)

(assert (=> d!1213678 (= (isEmpty!26203 lt!1461908) (not ((_ is Some!9487) lt!1461908)))))

(assert (=> b!4087249 d!1213678))

(declare-fun b!4087609 () Bool)

(declare-fun e!2536896 () Option!9488)

(declare-fun call!288940 () Option!9488)

(assert (=> b!4087609 (= e!2536896 call!288940)))

(declare-fun b!4087610 () Bool)

(declare-fun res!1670395 () Bool)

(declare-fun e!2536898 () Bool)

(assert (=> b!4087610 (=> (not res!1670395) (not e!2536898))))

(declare-fun lt!1462026 () Option!9488)

(assert (=> b!4087610 (= res!1670395 (= (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026)))) (originalCharacters!7676 (_1!24512 (get!14371 lt!1462026)))))))

(declare-fun b!4087611 () Bool)

(declare-fun lt!1462028 () Option!9488)

(declare-fun lt!1462025 () Option!9488)

(assert (=> b!4087611 (= e!2536896 (ite (and ((_ is None!9487) lt!1462028) ((_ is None!9487) lt!1462025)) None!9487 (ite ((_ is None!9487) lt!1462025) lt!1462028 (ite ((_ is None!9487) lt!1462028) lt!1462025 (ite (>= (size!32728 (_1!24512 (v!39965 lt!1462028))) (size!32728 (_1!24512 (v!39965 lt!1462025)))) lt!1462028 lt!1462025)))))))

(assert (=> b!4087611 (= lt!1462028 call!288940)))

(assert (=> b!4087611 (= lt!1462025 (maxPrefix!3961 thiss!26199 (t!338272 (t!338272 rules!3870)) input!3411))))

(declare-fun b!4087612 () Bool)

(declare-fun res!1670400 () Bool)

(assert (=> b!4087612 (=> (not res!1670400) (not e!2536898))))

(assert (=> b!4087612 (= res!1670400 (matchR!5928 (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026)))) (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026))))))))

(declare-fun bm!288935 () Bool)

(assert (=> bm!288935 (= call!288940 (maxPrefixOneRule!2945 thiss!26199 (h!49241 (t!338272 rules!3870)) input!3411))))

(declare-fun b!4087614 () Bool)

(assert (=> b!4087614 (= e!2536898 (contains!8759 (t!338272 rules!3870) (rule!10214 (_1!24512 (get!14371 lt!1462026)))))))

(declare-fun b!4087615 () Bool)

(declare-fun res!1670398 () Bool)

(assert (=> b!4087615 (=> (not res!1670398) (not e!2536898))))

(assert (=> b!4087615 (= res!1670398 (< (size!32729 (_2!24512 (get!14371 lt!1462026))) (size!32729 input!3411)))))

(declare-fun d!1213680 () Bool)

(declare-fun e!2536897 () Bool)

(assert (=> d!1213680 e!2536897))

(declare-fun res!1670396 () Bool)

(assert (=> d!1213680 (=> res!1670396 e!2536897)))

(assert (=> d!1213680 (= res!1670396 (isEmpty!26203 lt!1462026))))

(assert (=> d!1213680 (= lt!1462026 e!2536896)))

(declare-fun c!704601 () Bool)

(assert (=> d!1213680 (= c!704601 (and ((_ is Cons!43821) (t!338272 rules!3870)) ((_ is Nil!43821) (t!338272 (t!338272 rules!3870)))))))

(declare-fun lt!1462027 () Unit!63343)

(declare-fun lt!1462024 () Unit!63343)

(assert (=> d!1213680 (= lt!1462027 lt!1462024)))

(assert (=> d!1213680 (isPrefix!4133 input!3411 input!3411)))

(assert (=> d!1213680 (= lt!1462024 (lemmaIsPrefixRefl!2684 input!3411 input!3411))))

(assert (=> d!1213680 (rulesValidInductive!2615 thiss!26199 (t!338272 rules!3870))))

(assert (=> d!1213680 (= (maxPrefix!3961 thiss!26199 (t!338272 rules!3870) input!3411) lt!1462026)))

(declare-fun b!4087613 () Bool)

(declare-fun res!1670397 () Bool)

(assert (=> b!4087613 (=> (not res!1670397) (not e!2536898))))

(assert (=> b!4087613 (= res!1670397 (= (++!11488 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026)))) (_2!24512 (get!14371 lt!1462026))) input!3411))))

(declare-fun b!4087616 () Bool)

(declare-fun res!1670401 () Bool)

(assert (=> b!4087616 (=> (not res!1670401) (not e!2536898))))

(assert (=> b!4087616 (= res!1670401 (= (value!222489 (_1!24512 (get!14371 lt!1462026))) (apply!10265 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026)))) (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1462026)))))))))

(declare-fun b!4087617 () Bool)

(assert (=> b!4087617 (= e!2536897 e!2536898)))

(declare-fun res!1670399 () Bool)

(assert (=> b!4087617 (=> (not res!1670399) (not e!2536898))))

(assert (=> b!4087617 (= res!1670399 (isDefined!7182 lt!1462026))))

(assert (= (and d!1213680 c!704601) b!4087609))

(assert (= (and d!1213680 (not c!704601)) b!4087611))

(assert (= (or b!4087609 b!4087611) bm!288935))

(assert (= (and d!1213680 (not res!1670396)) b!4087617))

(assert (= (and b!4087617 res!1670399) b!4087610))

(assert (= (and b!4087610 res!1670395) b!4087615))

(assert (= (and b!4087615 res!1670398) b!4087613))

(assert (= (and b!4087613 res!1670397) b!4087616))

(assert (= (and b!4087616 res!1670401) b!4087612))

(assert (= (and b!4087612 res!1670400) b!4087614))

(declare-fun m!4694435 () Bool)

(assert (=> b!4087610 m!4694435))

(declare-fun m!4694437 () Bool)

(assert (=> b!4087610 m!4694437))

(assert (=> b!4087610 m!4694437))

(declare-fun m!4694439 () Bool)

(assert (=> b!4087610 m!4694439))

(assert (=> b!4087614 m!4694435))

(declare-fun m!4694441 () Bool)

(assert (=> b!4087614 m!4694441))

(assert (=> b!4087613 m!4694435))

(assert (=> b!4087613 m!4694437))

(assert (=> b!4087613 m!4694437))

(assert (=> b!4087613 m!4694439))

(assert (=> b!4087613 m!4694439))

(declare-fun m!4694443 () Bool)

(assert (=> b!4087613 m!4694443))

(assert (=> b!4087616 m!4694435))

(declare-fun m!4694445 () Bool)

(assert (=> b!4087616 m!4694445))

(assert (=> b!4087616 m!4694445))

(declare-fun m!4694447 () Bool)

(assert (=> b!4087616 m!4694447))

(declare-fun m!4694449 () Bool)

(assert (=> b!4087611 m!4694449))

(assert (=> b!4087612 m!4694435))

(assert (=> b!4087612 m!4694437))

(assert (=> b!4087612 m!4694437))

(assert (=> b!4087612 m!4694439))

(assert (=> b!4087612 m!4694439))

(declare-fun m!4694451 () Bool)

(assert (=> b!4087612 m!4694451))

(declare-fun m!4694453 () Bool)

(assert (=> b!4087617 m!4694453))

(declare-fun m!4694455 () Bool)

(assert (=> bm!288935 m!4694455))

(declare-fun m!4694457 () Bool)

(assert (=> d!1213680 m!4694457))

(assert (=> d!1213680 m!4694241))

(assert (=> d!1213680 m!4694243))

(declare-fun m!4694459 () Bool)

(assert (=> d!1213680 m!4694459))

(assert (=> b!4087615 m!4694435))

(declare-fun m!4694461 () Bool)

(assert (=> b!4087615 m!4694461))

(assert (=> b!4087615 m!4694171))

(assert (=> b!4087249 d!1213680))

(declare-fun d!1213682 () Bool)

(declare-fun e!2536901 () Bool)

(assert (=> d!1213682 e!2536901))

(declare-fun res!1670404 () Bool)

(assert (=> d!1213682 (=> res!1670404 e!2536901)))

(assert (=> d!1213682 (= res!1670404 (isEmpty!26203 (maxPrefix!3961 thiss!26199 (t!338272 rules!3870) input!3411)))))

(declare-fun lt!1462031 () Unit!63343)

(declare-fun choose!24961 (LexerInterface!6671 Rule!13964 List!43945 List!43943) Unit!63343)

(assert (=> d!1213682 (= lt!1462031 (choose!24961 thiss!26199 (h!49241 rules!3870) (t!338272 rules!3870) input!3411))))

(assert (=> d!1213682 (not (isEmpty!26202 (t!338272 rules!3870)))))

(assert (=> d!1213682 (= (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!20 thiss!26199 (h!49241 rules!3870) (t!338272 rules!3870) input!3411) lt!1462031)))

(declare-fun b!4087620 () Bool)

(assert (=> b!4087620 (= e!2536901 (not (= (rule!10214 (_1!24512 (get!14371 (maxPrefix!3961 thiss!26199 (t!338272 rules!3870) input!3411)))) (h!49241 rules!3870))))))

(assert (= (and d!1213682 (not res!1670404)) b!4087620))

(assert (=> d!1213682 m!4694073))

(assert (=> d!1213682 m!4694073))

(declare-fun m!4694463 () Bool)

(assert (=> d!1213682 m!4694463))

(declare-fun m!4694465 () Bool)

(assert (=> d!1213682 m!4694465))

(assert (=> d!1213682 m!4694025))

(assert (=> b!4087620 m!4694073))

(assert (=> b!4087620 m!4694073))

(declare-fun m!4694467 () Bool)

(assert (=> b!4087620 m!4694467))

(assert (=> b!4087249 d!1213682))

(declare-fun b!4087632 () Bool)

(declare-fun e!2536904 () Bool)

(declare-fun tp!1237569 () Bool)

(declare-fun tp!1237568 () Bool)

(assert (=> b!4087632 (= e!2536904 (and tp!1237569 tp!1237568))))

(assert (=> b!4087240 (= tp!1237505 e!2536904)))

(declare-fun b!4087633 () Bool)

(declare-fun tp!1237570 () Bool)

(assert (=> b!4087633 (= e!2536904 tp!1237570)))

(declare-fun b!4087634 () Bool)

(declare-fun tp!1237571 () Bool)

(declare-fun tp!1237572 () Bool)

(assert (=> b!4087634 (= e!2536904 (and tp!1237571 tp!1237572))))

(declare-fun b!4087631 () Bool)

(assert (=> b!4087631 (= e!2536904 tp_is_empty!20977)))

(assert (= (and b!4087240 ((_ is ElementMatch!11987) (regex!7082 (h!49241 rules!3870)))) b!4087631))

(assert (= (and b!4087240 ((_ is Concat!19300) (regex!7082 (h!49241 rules!3870)))) b!4087632))

(assert (= (and b!4087240 ((_ is Star!11987) (regex!7082 (h!49241 rules!3870)))) b!4087633))

(assert (= (and b!4087240 ((_ is Union!11987) (regex!7082 (h!49241 rules!3870)))) b!4087634))

(declare-fun b!4087636 () Bool)

(declare-fun e!2536905 () Bool)

(declare-fun tp!1237574 () Bool)

(declare-fun tp!1237573 () Bool)

(assert (=> b!4087636 (= e!2536905 (and tp!1237574 tp!1237573))))

(assert (=> b!4087245 (= tp!1237506 e!2536905)))

(declare-fun b!4087637 () Bool)

(declare-fun tp!1237575 () Bool)

(assert (=> b!4087637 (= e!2536905 tp!1237575)))

(declare-fun b!4087638 () Bool)

(declare-fun tp!1237576 () Bool)

(declare-fun tp!1237577 () Bool)

(assert (=> b!4087638 (= e!2536905 (and tp!1237576 tp!1237577))))

(declare-fun b!4087635 () Bool)

(assert (=> b!4087635 (= e!2536905 tp_is_empty!20977)))

(assert (= (and b!4087245 ((_ is ElementMatch!11987) (regex!7082 r!4213))) b!4087635))

(assert (= (and b!4087245 ((_ is Concat!19300) (regex!7082 r!4213))) b!4087636))

(assert (= (and b!4087245 ((_ is Star!11987) (regex!7082 r!4213))) b!4087637))

(assert (= (and b!4087245 ((_ is Union!11987) (regex!7082 r!4213))) b!4087638))

(declare-fun b!4087643 () Bool)

(declare-fun e!2536908 () Bool)

(declare-fun tp!1237580 () Bool)

(assert (=> b!4087643 (= e!2536908 (and tp_is_empty!20977 tp!1237580))))

(assert (=> b!4087252 (= tp!1237511 e!2536908)))

(assert (= (and b!4087252 ((_ is Cons!43819) (t!338270 p!2988))) b!4087643))

(declare-fun b!4087654 () Bool)

(declare-fun b_free!114229 () Bool)

(declare-fun b_next!114933 () Bool)

(assert (=> b!4087654 (= b_free!114229 (not b_next!114933))))

(declare-fun t!338305 () Bool)

(declare-fun tb!245583 () Bool)

(assert (=> (and b!4087654 (= (toValue!9666 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toValue!9666 (transformation!7082 r!4213))) t!338305) tb!245583))

(declare-fun result!297988 () Bool)

(assert (= result!297988 result!297950))

(assert (=> d!1213622 t!338305))

(assert (=> d!1213628 t!338305))

(declare-fun b_and!314791 () Bool)

(declare-fun tp!1237590 () Bool)

(assert (=> b!4087654 (= tp!1237590 (and (=> t!338305 result!297988) b_and!314791))))

(declare-fun b_free!114231 () Bool)

(declare-fun b_next!114935 () Bool)

(assert (=> b!4087654 (= b_free!114231 (not b_next!114935))))

(declare-fun t!338307 () Bool)

(declare-fun tb!245585 () Bool)

(assert (=> (and b!4087654 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toChars!9525 (transformation!7082 (rule!10214 lt!1461905)))) t!338307) tb!245585))

(declare-fun result!297990 () Bool)

(assert (= result!297990 result!297944))

(assert (=> b!4087284 t!338307))

(declare-fun tb!245587 () Bool)

(declare-fun t!338309 () Bool)

(assert (=> (and b!4087654 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toChars!9525 (transformation!7082 r!4213))) t!338309) tb!245587))

(declare-fun result!297992 () Bool)

(assert (= result!297992 result!297978))

(assert (=> d!1213628 t!338309))

(declare-fun b_and!314793 () Bool)

(declare-fun tp!1237591 () Bool)

(assert (=> b!4087654 (= tp!1237591 (and (=> t!338307 result!297990) (=> t!338309 result!297992) b_and!314793))))

(declare-fun e!2536920 () Bool)

(assert (=> b!4087654 (= e!2536920 (and tp!1237590 tp!1237591))))

(declare-fun e!2536917 () Bool)

(declare-fun tp!1237589 () Bool)

(declare-fun b!4087653 () Bool)

(assert (=> b!4087653 (= e!2536917 (and tp!1237589 (inv!58508 (tag!7942 (h!49241 (t!338272 rules!3870)))) (inv!58511 (transformation!7082 (h!49241 (t!338272 rules!3870)))) e!2536920))))

(declare-fun b!4087652 () Bool)

(declare-fun e!2536918 () Bool)

(declare-fun tp!1237592 () Bool)

(assert (=> b!4087652 (= e!2536918 (and e!2536917 tp!1237592))))

(assert (=> b!4087242 (= tp!1237510 e!2536918)))

(assert (= b!4087653 b!4087654))

(assert (= b!4087652 b!4087653))

(assert (= (and b!4087242 ((_ is Cons!43821) (t!338272 rules!3870))) b!4087652))

(declare-fun m!4694469 () Bool)

(assert (=> b!4087653 m!4694469))

(declare-fun m!4694471 () Bool)

(assert (=> b!4087653 m!4694471))

(declare-fun b!4087655 () Bool)

(declare-fun e!2536921 () Bool)

(declare-fun tp!1237593 () Bool)

(assert (=> b!4087655 (= e!2536921 (and tp_is_empty!20977 tp!1237593))))

(assert (=> b!4087247 (= tp!1237507 e!2536921)))

(assert (= (and b!4087247 ((_ is Cons!43819) (t!338270 suffix!1518))) b!4087655))

(declare-fun b!4087656 () Bool)

(declare-fun e!2536922 () Bool)

(declare-fun tp!1237594 () Bool)

(assert (=> b!4087656 (= e!2536922 (and tp_is_empty!20977 tp!1237594))))

(assert (=> b!4087243 (= tp!1237512 e!2536922)))

(assert (= (and b!4087243 ((_ is Cons!43819) (t!338270 input!3411))) b!4087656))

(declare-fun b_lambda!119709 () Bool)

(assert (= b_lambda!119691 (or (and b!4087238 b_free!114217 (= (toValue!9666 (transformation!7082 (h!49241 rules!3870))) (toValue!9666 (transformation!7082 r!4213)))) (and b!4087234 b_free!114221) (and b!4087654 b_free!114229 (= (toValue!9666 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toValue!9666 (transformation!7082 r!4213)))) b_lambda!119709)))

(declare-fun b_lambda!119711 () Bool)

(assert (= b_lambda!119705 (or (and b!4087238 b_free!114219 (= (toChars!9525 (transformation!7082 (h!49241 rules!3870))) (toChars!9525 (transformation!7082 r!4213)))) (and b!4087234 b_free!114223) (and b!4087654 b_free!114231 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toChars!9525 (transformation!7082 r!4213)))) b_lambda!119711)))

(declare-fun b_lambda!119713 () Bool)

(assert (= b_lambda!119707 (or (and b!4087238 b_free!114217 (= (toValue!9666 (transformation!7082 (h!49241 rules!3870))) (toValue!9666 (transformation!7082 r!4213)))) (and b!4087234 b_free!114221) (and b!4087654 b_free!114229 (= (toValue!9666 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toValue!9666 (transformation!7082 r!4213)))) b_lambda!119713)))

(check-sat (not b!4087345) (not b!4087349) (not b!4087652) (not b_next!114921) (not d!1213616) (not b!4087323) (not b_lambda!119709) (not b!4087607) (not b_next!114923) (not b_lambda!119711) (not d!1213612) (not b!4087653) (not b_next!114925) (not b!4087656) (not d!1213628) (not b!4087617) (not b!4087424) (not b!4087382) (not b!4087616) (not b!4087655) b_and!314793 (not d!1213588) (not b!4087271) b_and!314783 (not b!4087286) b_and!314787 (not b!4087393) (not b!4087634) (not tb!245557) (not d!1213592) (not b!4087633) (not b!4087389) (not b!4087435) (not b!4087306) (not b!4087297) (not d!1213602) b_and!314789 (not b!4087312) (not b!4087611) b_and!314791 (not d!1213620) (not bm!288927) (not b_lambda!119689) (not b!4087385) (not d!1213626) (not b!4087632) (not b!4087386) (not b!4087350) (not b!4087420) (not tb!245579) (not b!4087421) (not b!4087612) (not d!1213618) (not b!4087322) (not d!1213680) (not b!4087614) (not b!4087344) (not b!4087613) (not b!4087636) (not bm!288930) tp_is_empty!20977 (not b!4087610) (not b!4087637) (not b!4087346) (not b!4087422) (not d!1213676) (not d!1213604) (not b!4087638) (not b!4087348) (not d!1213674) (not b!4087425) (not b!4087394) (not tb!245561) (not b!4087426) (not b!4087608) (not b!4087615) (not b!4087347) (not b_lambda!119713) (not b!4087343) (not b!4087423) (not b!4087620) (not bm!288935) b_and!314785 (not d!1213586) (not b!4087284) (not b_next!114927) (not d!1213608) (not b_next!114935) (not b!4087427) (not d!1213614) (not b!4087643) (not d!1213682) (not b!4087352) (not b_next!114933) (not b!4087399))
(check-sat (not b_next!114923) (not b_next!114925) b_and!314793 b_and!314789 b_and!314791 (not b_next!114921) b_and!314785 (not b_next!114933) b_and!314783 b_and!314787 (not b_next!114927) (not b_next!114935))
(get-model)

(declare-fun b!4087761 () Bool)

(declare-fun e!2536983 () Bool)

(declare-fun e!2536982 () Bool)

(assert (=> b!4087761 (= e!2536983 e!2536982)))

(declare-fun c!704632 () Bool)

(assert (=> b!4087761 (= c!704632 ((_ is IntegerValue!21937) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907)))))

(declare-fun b!4087762 () Bool)

(declare-fun inv!16 (TokenValue!7312) Bool)

(assert (=> b!4087762 (= e!2536983 (inv!16 (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907)))))

(declare-fun b!4087763 () Bool)

(declare-fun res!1670445 () Bool)

(declare-fun e!2536984 () Bool)

(assert (=> b!4087763 (=> res!1670445 e!2536984)))

(assert (=> b!4087763 (= res!1670445 (not ((_ is IntegerValue!21938) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907))))))

(assert (=> b!4087763 (= e!2536982 e!2536984)))

(declare-fun b!4087764 () Bool)

(declare-fun inv!17 (TokenValue!7312) Bool)

(assert (=> b!4087764 (= e!2536982 (inv!17 (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907)))))

(declare-fun b!4087760 () Bool)

(declare-fun inv!15 (TokenValue!7312) Bool)

(assert (=> b!4087760 (= e!2536984 (inv!15 (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907)))))

(declare-fun d!1213714 () Bool)

(declare-fun c!704631 () Bool)

(assert (=> d!1213714 (= c!704631 ((_ is IntegerValue!21936) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907)))))

(assert (=> d!1213714 (= (inv!21 (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907)) e!2536983)))

(assert (= (and d!1213714 c!704631) b!4087762))

(assert (= (and d!1213714 (not c!704631)) b!4087761))

(assert (= (and b!4087761 c!704632) b!4087764))

(assert (= (and b!4087761 (not c!704632)) b!4087763))

(assert (= (and b!4087763 (not res!1670445)) b!4087760))

(declare-fun m!4694567 () Bool)

(assert (=> b!4087762 m!4694567))

(declare-fun m!4694569 () Bool)

(assert (=> b!4087764 m!4694569))

(declare-fun m!4694571 () Bool)

(assert (=> b!4087760 m!4694571))

(assert (=> tb!245561 d!1213714))

(declare-fun d!1213716 () Bool)

(assert (=> d!1213716 (= (isEmpty!26203 lt!1461973) (not ((_ is Some!9487) lt!1461973)))))

(assert (=> d!1213620 d!1213716))

(declare-fun b!4087773 () Bool)

(declare-fun e!2536992 () Bool)

(declare-fun e!2536991 () Bool)

(assert (=> b!4087773 (= e!2536992 e!2536991)))

(declare-fun res!1670457 () Bool)

(assert (=> b!4087773 (=> (not res!1670457) (not e!2536991))))

(assert (=> b!4087773 (= res!1670457 (not ((_ is Nil!43819) input!3411)))))

(declare-fun d!1213718 () Bool)

(declare-fun e!2536993 () Bool)

(assert (=> d!1213718 e!2536993))

(declare-fun res!1670454 () Bool)

(assert (=> d!1213718 (=> res!1670454 e!2536993)))

(declare-fun lt!1462100 () Bool)

(assert (=> d!1213718 (= res!1670454 (not lt!1462100))))

(assert (=> d!1213718 (= lt!1462100 e!2536992)))

(declare-fun res!1670456 () Bool)

(assert (=> d!1213718 (=> res!1670456 e!2536992)))

(assert (=> d!1213718 (= res!1670456 ((_ is Nil!43819) input!3411))))

(assert (=> d!1213718 (= (isPrefix!4133 input!3411 input!3411) lt!1462100)))

(declare-fun b!4087775 () Bool)

(assert (=> b!4087775 (= e!2536991 (isPrefix!4133 (tail!6373 input!3411) (tail!6373 input!3411)))))

(declare-fun b!4087774 () Bool)

(declare-fun res!1670455 () Bool)

(assert (=> b!4087774 (=> (not res!1670455) (not e!2536991))))

(assert (=> b!4087774 (= res!1670455 (= (head!8639 input!3411) (head!8639 input!3411)))))

(declare-fun b!4087776 () Bool)

(assert (=> b!4087776 (= e!2536993 (>= (size!32729 input!3411) (size!32729 input!3411)))))

(assert (= (and d!1213718 (not res!1670456)) b!4087773))

(assert (= (and b!4087773 res!1670457) b!4087774))

(assert (= (and b!4087774 res!1670455) b!4087775))

(assert (= (and d!1213718 (not res!1670454)) b!4087776))

(declare-fun m!4694573 () Bool)

(assert (=> b!4087775 m!4694573))

(assert (=> b!4087775 m!4694573))

(assert (=> b!4087775 m!4694573))

(assert (=> b!4087775 m!4694573))

(declare-fun m!4694575 () Bool)

(assert (=> b!4087775 m!4694575))

(declare-fun m!4694577 () Bool)

(assert (=> b!4087774 m!4694577))

(assert (=> b!4087774 m!4694577))

(assert (=> b!4087776 m!4694171))

(assert (=> b!4087776 m!4694171))

(assert (=> d!1213620 d!1213718))

(declare-fun d!1213720 () Bool)

(assert (=> d!1213720 (isPrefix!4133 input!3411 input!3411)))

(declare-fun lt!1462103 () Unit!63343)

(declare-fun choose!24962 (List!43943 List!43943) Unit!63343)

(assert (=> d!1213720 (= lt!1462103 (choose!24962 input!3411 input!3411))))

(assert (=> d!1213720 (= (lemmaIsPrefixRefl!2684 input!3411 input!3411) lt!1462103)))

(declare-fun bs!593147 () Bool)

(assert (= bs!593147 d!1213720))

(assert (=> bs!593147 m!4694241))

(declare-fun m!4694579 () Bool)

(assert (=> bs!593147 m!4694579))

(assert (=> d!1213620 d!1213720))

(declare-fun d!1213722 () Bool)

(assert (=> d!1213722 true))

(declare-fun lt!1462106 () Bool)

(declare-fun lambda!127943 () Int)

(declare-fun forall!8409 (List!43945 Int) Bool)

(assert (=> d!1213722 (= lt!1462106 (forall!8409 rules!3870 lambda!127943))))

(declare-fun e!2537002 () Bool)

(assert (=> d!1213722 (= lt!1462106 e!2537002)))

(declare-fun res!1670467 () Bool)

(assert (=> d!1213722 (=> res!1670467 e!2537002)))

(assert (=> d!1213722 (= res!1670467 (not ((_ is Cons!43821) rules!3870)))))

(assert (=> d!1213722 (= (rulesValidInductive!2615 thiss!26199 rules!3870) lt!1462106)))

(declare-fun b!4087785 () Bool)

(declare-fun e!2537003 () Bool)

(assert (=> b!4087785 (= e!2537002 e!2537003)))

(declare-fun res!1670466 () Bool)

(assert (=> b!4087785 (=> (not res!1670466) (not e!2537003))))

(assert (=> b!4087785 (= res!1670466 (ruleValid!3002 thiss!26199 (h!49241 rules!3870)))))

(declare-fun b!4087786 () Bool)

(assert (=> b!4087786 (= e!2537003 (rulesValidInductive!2615 thiss!26199 (t!338272 rules!3870)))))

(assert (= (and d!1213722 (not res!1670467)) b!4087785))

(assert (= (and b!4087785 res!1670466) b!4087786))

(declare-fun m!4694581 () Bool)

(assert (=> d!1213722 m!4694581))

(declare-fun m!4694583 () Bool)

(assert (=> b!4087785 m!4694583))

(assert (=> b!4087786 m!4694459))

(assert (=> d!1213620 d!1213722))

(declare-fun d!1213724 () Bool)

(declare-fun lt!1462107 () Int)

(assert (=> d!1213724 (>= lt!1462107 0)))

(declare-fun e!2537004 () Int)

(assert (=> d!1213724 (= lt!1462107 e!2537004)))

(declare-fun c!704633 () Bool)

(assert (=> d!1213724 (= c!704633 ((_ is Nil!43819) lt!1461939))))

(assert (=> d!1213724 (= (size!32729 lt!1461939) lt!1462107)))

(declare-fun b!4087789 () Bool)

(assert (=> b!4087789 (= e!2537004 0)))

(declare-fun b!4087790 () Bool)

(assert (=> b!4087790 (= e!2537004 (+ 1 (size!32729 (t!338270 lt!1461939))))))

(assert (= (and d!1213724 c!704633) b!4087789))

(assert (= (and d!1213724 (not c!704633)) b!4087790))

(declare-fun m!4694585 () Bool)

(assert (=> b!4087790 m!4694585))

(assert (=> b!4087323 d!1213724))

(assert (=> b!4087323 d!1213624))

(declare-fun d!1213726 () Bool)

(declare-fun lt!1462108 () Int)

(assert (=> d!1213726 (>= lt!1462108 0)))

(declare-fun e!2537005 () Int)

(assert (=> d!1213726 (= lt!1462108 e!2537005)))

(declare-fun c!704634 () Bool)

(assert (=> d!1213726 (= c!704634 ((_ is Nil!43819) suffix!1518))))

(assert (=> d!1213726 (= (size!32729 suffix!1518) lt!1462108)))

(declare-fun b!4087791 () Bool)

(assert (=> b!4087791 (= e!2537005 0)))

(declare-fun b!4087792 () Bool)

(assert (=> b!4087792 (= e!2537005 (+ 1 (size!32729 (t!338270 suffix!1518))))))

(assert (= (and d!1213726 c!704634) b!4087791))

(assert (= (and d!1213726 (not c!704634)) b!4087792))

(declare-fun m!4694587 () Bool)

(assert (=> b!4087792 m!4694587))

(assert (=> b!4087323 d!1213726))

(declare-fun d!1213728 () Bool)

(assert (=> d!1213728 (= (head!8639 p!2988) (h!49239 p!2988))))

(assert (=> b!4087382 d!1213728))

(declare-fun d!1213730 () Bool)

(assert (=> d!1213730 (= (isDefined!7182 lt!1461973) (not (isEmpty!26203 lt!1461973)))))

(declare-fun bs!593148 () Bool)

(assert (= bs!593148 d!1213730))

(assert (=> bs!593148 m!4694239))

(assert (=> b!4087427 d!1213730))

(declare-fun bs!593149 () Bool)

(declare-fun d!1213732 () Bool)

(assert (= bs!593149 (and d!1213732 d!1213628)))

(declare-fun lambda!127946 () Int)

(assert (=> bs!593149 (= lambda!127946 lambda!127937)))

(assert (=> d!1213732 true))

(assert (=> d!1213732 (< (dynLambda!18726 order!23017 (toChars!9525 (transformation!7082 r!4213))) (dynLambda!18725 order!23015 lambda!127946))))

(assert (=> d!1213732 true))

(assert (=> d!1213732 (< (dynLambda!18724 order!23013 (toValue!9666 (transformation!7082 r!4213))) (dynLambda!18725 order!23015 lambda!127946))))

(declare-fun Forall!1513 (Int) Bool)

(assert (=> d!1213732 (= (semiInverseModEq!3039 (toChars!9525 (transformation!7082 r!4213)) (toValue!9666 (transformation!7082 r!4213))) (Forall!1513 lambda!127946))))

(declare-fun bs!593150 () Bool)

(assert (= bs!593150 d!1213732))

(declare-fun m!4694637 () Bool)

(assert (=> bs!593150 m!4694637))

(assert (=> d!1213612 d!1213732))

(declare-fun bs!593152 () Bool)

(declare-fun d!1213736 () Bool)

(assert (= bs!593152 (and d!1213736 d!1213722)))

(declare-fun lambda!127949 () Int)

(assert (=> bs!593152 (= lambda!127949 lambda!127943)))

(assert (=> d!1213736 true))

(declare-fun lt!1462143 () Bool)

(assert (=> d!1213736 (= lt!1462143 (rulesValidInductive!2615 thiss!26199 (t!338272 rules!3870)))))

(assert (=> d!1213736 (= lt!1462143 (forall!8409 (t!338272 rules!3870) lambda!127949))))

(assert (=> d!1213736 (= (rulesValid!2774 thiss!26199 (t!338272 rules!3870)) lt!1462143)))

(declare-fun bs!593153 () Bool)

(assert (= bs!593153 d!1213736))

(assert (=> bs!593153 m!4694459))

(declare-fun m!4694663 () Bool)

(assert (=> bs!593153 m!4694663))

(assert (=> d!1213674 d!1213736))

(declare-fun d!1213746 () Bool)

(assert (=> d!1213746 true))

(declare-fun order!23019 () Int)

(declare-fun lambda!127952 () Int)

(declare-fun dynLambda!18727 (Int Int) Int)

(assert (=> d!1213746 (< (dynLambda!18724 order!23013 (toValue!9666 (transformation!7082 (h!49241 rules!3870)))) (dynLambda!18727 order!23019 lambda!127952))))

(declare-fun Forall2!1111 (Int) Bool)

(assert (=> d!1213746 (= (equivClasses!2938 (toChars!9525 (transformation!7082 (h!49241 rules!3870))) (toValue!9666 (transformation!7082 (h!49241 rules!3870)))) (Forall2!1111 lambda!127952))))

(declare-fun bs!593154 () Bool)

(assert (= bs!593154 d!1213746))

(declare-fun m!4694673 () Bool)

(assert (=> bs!593154 m!4694673))

(assert (=> b!4087271 d!1213746))

(declare-fun d!1213752 () Bool)

(declare-fun lt!1462147 () Int)

(assert (=> d!1213752 (>= lt!1462147 0)))

(declare-fun e!2537024 () Int)

(assert (=> d!1213752 (= lt!1462147 e!2537024)))

(declare-fun c!704645 () Bool)

(assert (=> d!1213752 (= c!704645 ((_ is Nil!43819) (originalCharacters!7676 lt!1461905)))))

(assert (=> d!1213752 (= (size!32729 (originalCharacters!7676 lt!1461905)) lt!1462147)))

(declare-fun b!4087827 () Bool)

(assert (=> b!4087827 (= e!2537024 0)))

(declare-fun b!4087828 () Bool)

(assert (=> b!4087828 (= e!2537024 (+ 1 (size!32729 (t!338270 (originalCharacters!7676 lt!1461905)))))))

(assert (= (and d!1213752 c!704645) b!4087827))

(assert (= (and d!1213752 (not c!704645)) b!4087828))

(declare-fun m!4694675 () Bool)

(assert (=> b!4087828 m!4694675))

(assert (=> b!4087286 d!1213752))

(declare-fun d!1213754 () Bool)

(declare-fun e!2537031 () Bool)

(assert (=> d!1213754 e!2537031))

(declare-fun c!704648 () Bool)

(assert (=> d!1213754 (= c!704648 ((_ is EmptyExpr!11987) (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973))))))))

(declare-fun lt!1462148 () Bool)

(declare-fun e!2537027 () Bool)

(assert (=> d!1213754 (= lt!1462148 e!2537027)))

(declare-fun c!704646 () Bool)

(assert (=> d!1213754 (= c!704646 (isEmpty!26201 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973))))))))

(assert (=> d!1213754 (validRegex!5428 (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973)))))))

(assert (=> d!1213754 (= (matchR!5928 (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973)))) (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973))))) lt!1462148)))

(declare-fun b!4087829 () Bool)

(declare-fun e!2537028 () Bool)

(assert (=> b!4087829 (= e!2537028 (not lt!1462148))))

(declare-fun b!4087830 () Bool)

(declare-fun e!2537025 () Bool)

(assert (=> b!4087830 (= e!2537025 (not (= (head!8639 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973))))) (c!704554 (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973))))))))))

(declare-fun b!4087831 () Bool)

(assert (=> b!4087831 (= e!2537031 e!2537028)))

(declare-fun c!704647 () Bool)

(assert (=> b!4087831 (= c!704647 ((_ is EmptyLang!11987) (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973))))))))

(declare-fun b!4087832 () Bool)

(declare-fun res!1670480 () Bool)

(declare-fun e!2537026 () Bool)

(assert (=> b!4087832 (=> res!1670480 e!2537026)))

(assert (=> b!4087832 (= res!1670480 (not ((_ is ElementMatch!11987) (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973)))))))))

(assert (=> b!4087832 (= e!2537028 e!2537026)))

(declare-fun b!4087833 () Bool)

(declare-fun res!1670484 () Bool)

(assert (=> b!4087833 (=> res!1670484 e!2537025)))

(assert (=> b!4087833 (= res!1670484 (not (isEmpty!26201 (tail!6373 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973))))))))))

(declare-fun b!4087834 () Bool)

(declare-fun e!2537030 () Bool)

(assert (=> b!4087834 (= e!2537030 (= (head!8639 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973))))) (c!704554 (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973)))))))))

(declare-fun b!4087835 () Bool)

(declare-fun call!288976 () Bool)

(assert (=> b!4087835 (= e!2537031 (= lt!1462148 call!288976))))

(declare-fun b!4087836 () Bool)

(declare-fun res!1670478 () Bool)

(assert (=> b!4087836 (=> res!1670478 e!2537026)))

(assert (=> b!4087836 (= res!1670478 e!2537030)))

(declare-fun res!1670482 () Bool)

(assert (=> b!4087836 (=> (not res!1670482) (not e!2537030))))

(assert (=> b!4087836 (= res!1670482 lt!1462148)))

(declare-fun bm!288971 () Bool)

(assert (=> bm!288971 (= call!288976 (isEmpty!26201 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973))))))))

(declare-fun b!4087837 () Bool)

(declare-fun res!1670477 () Bool)

(assert (=> b!4087837 (=> (not res!1670477) (not e!2537030))))

(assert (=> b!4087837 (= res!1670477 (isEmpty!26201 (tail!6373 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973)))))))))

(declare-fun b!4087838 () Bool)

(declare-fun e!2537029 () Bool)

(assert (=> b!4087838 (= e!2537026 e!2537029)))

(declare-fun res!1670479 () Bool)

(assert (=> b!4087838 (=> (not res!1670479) (not e!2537029))))

(assert (=> b!4087838 (= res!1670479 (not lt!1462148))))

(declare-fun b!4087839 () Bool)

(declare-fun res!1670483 () Bool)

(assert (=> b!4087839 (=> (not res!1670483) (not e!2537030))))

(assert (=> b!4087839 (= res!1670483 (not call!288976))))

(declare-fun b!4087840 () Bool)

(assert (=> b!4087840 (= e!2537029 e!2537025)))

(declare-fun res!1670481 () Bool)

(assert (=> b!4087840 (=> res!1670481 e!2537025)))

(assert (=> b!4087840 (= res!1670481 call!288976)))

(declare-fun b!4087841 () Bool)

(assert (=> b!4087841 (= e!2537027 (nullable!4228 (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973))))))))

(declare-fun b!4087842 () Bool)

(assert (=> b!4087842 (= e!2537027 (matchR!5928 (derivativeStep!3629 (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973)))) (head!8639 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973)))))) (tail!6373 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973)))))))))

(assert (= (and d!1213754 c!704646) b!4087841))

(assert (= (and d!1213754 (not c!704646)) b!4087842))

(assert (= (and d!1213754 c!704648) b!4087835))

(assert (= (and d!1213754 (not c!704648)) b!4087831))

(assert (= (and b!4087831 c!704647) b!4087829))

(assert (= (and b!4087831 (not c!704647)) b!4087832))

(assert (= (and b!4087832 (not res!1670480)) b!4087836))

(assert (= (and b!4087836 res!1670482) b!4087839))

(assert (= (and b!4087839 res!1670483) b!4087837))

(assert (= (and b!4087837 res!1670477) b!4087834))

(assert (= (and b!4087836 (not res!1670478)) b!4087838))

(assert (= (and b!4087838 res!1670479) b!4087840))

(assert (= (and b!4087840 (not res!1670481)) b!4087833))

(assert (= (and b!4087833 (not res!1670484)) b!4087830))

(assert (= (or b!4087835 b!4087839 b!4087840) bm!288971))

(assert (=> b!4087830 m!4694223))

(declare-fun m!4694677 () Bool)

(assert (=> b!4087830 m!4694677))

(assert (=> bm!288971 m!4694223))

(declare-fun m!4694679 () Bool)

(assert (=> bm!288971 m!4694679))

(assert (=> b!4087837 m!4694223))

(declare-fun m!4694681 () Bool)

(assert (=> b!4087837 m!4694681))

(assert (=> b!4087837 m!4694681))

(declare-fun m!4694683 () Bool)

(assert (=> b!4087837 m!4694683))

(assert (=> b!4087842 m!4694223))

(assert (=> b!4087842 m!4694677))

(assert (=> b!4087842 m!4694677))

(declare-fun m!4694685 () Bool)

(assert (=> b!4087842 m!4694685))

(assert (=> b!4087842 m!4694223))

(assert (=> b!4087842 m!4694681))

(assert (=> b!4087842 m!4694685))

(assert (=> b!4087842 m!4694681))

(declare-fun m!4694687 () Bool)

(assert (=> b!4087842 m!4694687))

(assert (=> d!1213754 m!4694223))

(assert (=> d!1213754 m!4694679))

(declare-fun m!4694689 () Bool)

(assert (=> d!1213754 m!4694689))

(declare-fun m!4694691 () Bool)

(assert (=> b!4087841 m!4694691))

(assert (=> b!4087833 m!4694223))

(assert (=> b!4087833 m!4694681))

(assert (=> b!4087833 m!4694681))

(assert (=> b!4087833 m!4694683))

(assert (=> b!4087834 m!4694223))

(assert (=> b!4087834 m!4694677))

(assert (=> b!4087422 d!1213754))

(declare-fun d!1213756 () Bool)

(assert (=> d!1213756 (= (get!14371 lt!1461973) (v!39965 lt!1461973))))

(assert (=> b!4087422 d!1213756))

(declare-fun d!1213758 () Bool)

(declare-fun list!16274 (Conc!13293) List!43943)

(assert (=> d!1213758 (= (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973)))) (list!16274 (c!704555 (charsOf!4846 (_1!24512 (get!14371 lt!1461973))))))))

(declare-fun bs!593155 () Bool)

(assert (= bs!593155 d!1213758))

(declare-fun m!4694697 () Bool)

(assert (=> bs!593155 m!4694697))

(assert (=> b!4087422 d!1213758))

(declare-fun d!1213766 () Bool)

(declare-fun lt!1462152 () BalanceConc!26180)

(assert (=> d!1213766 (= (list!16272 lt!1462152) (originalCharacters!7676 (_1!24512 (get!14371 lt!1461973))))))

(assert (=> d!1213766 (= lt!1462152 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973))))) (value!222489 (_1!24512 (get!14371 lt!1461973)))))))

(assert (=> d!1213766 (= (charsOf!4846 (_1!24512 (get!14371 lt!1461973))) lt!1462152)))

(declare-fun b_lambda!119721 () Bool)

(assert (=> (not b_lambda!119721) (not d!1213766)))

(declare-fun tb!245607 () Bool)

(declare-fun t!338330 () Bool)

(assert (=> (and b!4087238 (= (toChars!9525 (transformation!7082 (h!49241 rules!3870))) (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973)))))) t!338330) tb!245607))

(declare-fun b!4087858 () Bool)

(declare-fun e!2537044 () Bool)

(declare-fun tp!1237597 () Bool)

(assert (=> b!4087858 (= e!2537044 (and (inv!58515 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973))))) (value!222489 (_1!24512 (get!14371 lt!1461973)))))) tp!1237597))))

(declare-fun result!298012 () Bool)

(assert (=> tb!245607 (= result!298012 (and (inv!58516 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973))))) (value!222489 (_1!24512 (get!14371 lt!1461973))))) e!2537044))))

(assert (= tb!245607 b!4087858))

(declare-fun m!4694703 () Bool)

(assert (=> b!4087858 m!4694703))

(declare-fun m!4694705 () Bool)

(assert (=> tb!245607 m!4694705))

(assert (=> d!1213766 t!338330))

(declare-fun b_and!314813 () Bool)

(assert (= b_and!314783 (and (=> t!338330 result!298012) b_and!314813)))

(declare-fun tb!245609 () Bool)

(declare-fun t!338332 () Bool)

(assert (=> (and b!4087234 (= (toChars!9525 (transformation!7082 r!4213)) (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973)))))) t!338332) tb!245609))

(declare-fun result!298014 () Bool)

(assert (= result!298014 result!298012))

(assert (=> d!1213766 t!338332))

(declare-fun b_and!314815 () Bool)

(assert (= b_and!314785 (and (=> t!338332 result!298014) b_and!314815)))

(declare-fun tb!245611 () Bool)

(declare-fun t!338334 () Bool)

(assert (=> (and b!4087654 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973)))))) t!338334) tb!245611))

(declare-fun result!298016 () Bool)

(assert (= result!298016 result!298012))

(assert (=> d!1213766 t!338334))

(declare-fun b_and!314817 () Bool)

(assert (= b_and!314793 (and (=> t!338334 result!298016) b_and!314817)))

(declare-fun m!4694707 () Bool)

(assert (=> d!1213766 m!4694707))

(declare-fun m!4694709 () Bool)

(assert (=> d!1213766 m!4694709))

(assert (=> b!4087422 d!1213766))

(declare-fun d!1213770 () Bool)

(declare-fun lt!1462153 () Bool)

(assert (=> d!1213770 (= lt!1462153 (select (content!6741 (t!338272 rules!3870)) (rule!10214 (_1!24512 (get!14371 lt!1462026)))))))

(declare-fun e!2537048 () Bool)

(assert (=> d!1213770 (= lt!1462153 e!2537048)))

(declare-fun res!1670497 () Bool)

(assert (=> d!1213770 (=> (not res!1670497) (not e!2537048))))

(assert (=> d!1213770 (= res!1670497 ((_ is Cons!43821) (t!338272 rules!3870)))))

(assert (=> d!1213770 (= (contains!8759 (t!338272 rules!3870) (rule!10214 (_1!24512 (get!14371 lt!1462026)))) lt!1462153)))

(declare-fun b!4087861 () Bool)

(declare-fun e!2537047 () Bool)

(assert (=> b!4087861 (= e!2537048 e!2537047)))

(declare-fun res!1670496 () Bool)

(assert (=> b!4087861 (=> res!1670496 e!2537047)))

(assert (=> b!4087861 (= res!1670496 (= (h!49241 (t!338272 rules!3870)) (rule!10214 (_1!24512 (get!14371 lt!1462026)))))))

(declare-fun b!4087862 () Bool)

(assert (=> b!4087862 (= e!2537047 (contains!8759 (t!338272 (t!338272 rules!3870)) (rule!10214 (_1!24512 (get!14371 lt!1462026)))))))

(assert (= (and d!1213770 res!1670497) b!4087861))

(assert (= (and b!4087861 (not res!1670496)) b!4087862))

(declare-fun m!4694715 () Bool)

(assert (=> d!1213770 m!4694715))

(declare-fun m!4694717 () Bool)

(assert (=> d!1213770 m!4694717))

(declare-fun m!4694719 () Bool)

(assert (=> b!4087862 m!4694719))

(assert (=> b!4087614 d!1213770))

(declare-fun d!1213776 () Bool)

(assert (=> d!1213776 (= (get!14371 lt!1462026) (v!39965 lt!1462026))))

(assert (=> b!4087614 d!1213776))

(declare-fun d!1213778 () Bool)

(declare-fun e!2537055 () Bool)

(assert (=> d!1213778 e!2537055))

(declare-fun c!704654 () Bool)

(assert (=> d!1213778 (= c!704654 ((_ is EmptyExpr!11987) (regex!7082 r!4213)))))

(declare-fun lt!1462154 () Bool)

(declare-fun e!2537051 () Bool)

(assert (=> d!1213778 (= lt!1462154 e!2537051)))

(declare-fun c!704652 () Bool)

(assert (=> d!1213778 (= c!704652 (isEmpty!26201 (_1!24514 (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)))))))

(assert (=> d!1213778 (validRegex!5428 (regex!7082 r!4213))))

(assert (=> d!1213778 (= (matchR!5928 (regex!7082 r!4213) (_1!24514 (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)))) lt!1462154)))

(declare-fun b!4087863 () Bool)

(declare-fun e!2537052 () Bool)

(assert (=> b!4087863 (= e!2537052 (not lt!1462154))))

(declare-fun b!4087864 () Bool)

(declare-fun e!2537049 () Bool)

(assert (=> b!4087864 (= e!2537049 (not (= (head!8639 (_1!24514 (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)))) (c!704554 (regex!7082 r!4213)))))))

(declare-fun b!4087865 () Bool)

(assert (=> b!4087865 (= e!2537055 e!2537052)))

(declare-fun c!704653 () Bool)

(assert (=> b!4087865 (= c!704653 ((_ is EmptyLang!11987) (regex!7082 r!4213)))))

(declare-fun b!4087866 () Bool)

(declare-fun res!1670501 () Bool)

(declare-fun e!2537050 () Bool)

(assert (=> b!4087866 (=> res!1670501 e!2537050)))

(assert (=> b!4087866 (= res!1670501 (not ((_ is ElementMatch!11987) (regex!7082 r!4213))))))

(assert (=> b!4087866 (= e!2537052 e!2537050)))

(declare-fun b!4087867 () Bool)

(declare-fun res!1670505 () Bool)

(assert (=> b!4087867 (=> res!1670505 e!2537049)))

(assert (=> b!4087867 (= res!1670505 (not (isEmpty!26201 (tail!6373 (_1!24514 (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)))))))))

(declare-fun b!4087868 () Bool)

(declare-fun e!2537054 () Bool)

(assert (=> b!4087868 (= e!2537054 (= (head!8639 (_1!24514 (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)))) (c!704554 (regex!7082 r!4213))))))

(declare-fun b!4087869 () Bool)

(declare-fun call!288977 () Bool)

(assert (=> b!4087869 (= e!2537055 (= lt!1462154 call!288977))))

(declare-fun b!4087870 () Bool)

(declare-fun res!1670499 () Bool)

(assert (=> b!4087870 (=> res!1670499 e!2537050)))

(assert (=> b!4087870 (= res!1670499 e!2537054)))

(declare-fun res!1670503 () Bool)

(assert (=> b!4087870 (=> (not res!1670503) (not e!2537054))))

(assert (=> b!4087870 (= res!1670503 lt!1462154)))

(declare-fun bm!288972 () Bool)

(assert (=> bm!288972 (= call!288977 (isEmpty!26201 (_1!24514 (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)))))))

(declare-fun b!4087871 () Bool)

(declare-fun res!1670498 () Bool)

(assert (=> b!4087871 (=> (not res!1670498) (not e!2537054))))

(assert (=> b!4087871 (= res!1670498 (isEmpty!26201 (tail!6373 (_1!24514 (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411))))))))

(declare-fun b!4087872 () Bool)

(declare-fun e!2537053 () Bool)

(assert (=> b!4087872 (= e!2537050 e!2537053)))

(declare-fun res!1670500 () Bool)

(assert (=> b!4087872 (=> (not res!1670500) (not e!2537053))))

(assert (=> b!4087872 (= res!1670500 (not lt!1462154))))

(declare-fun b!4087873 () Bool)

(declare-fun res!1670504 () Bool)

(assert (=> b!4087873 (=> (not res!1670504) (not e!2537054))))

(assert (=> b!4087873 (= res!1670504 (not call!288977))))

(declare-fun b!4087874 () Bool)

(assert (=> b!4087874 (= e!2537053 e!2537049)))

(declare-fun res!1670502 () Bool)

(assert (=> b!4087874 (=> res!1670502 e!2537049)))

(assert (=> b!4087874 (= res!1670502 call!288977)))

(declare-fun b!4087875 () Bool)

(assert (=> b!4087875 (= e!2537051 (nullable!4228 (regex!7082 r!4213)))))

(declare-fun b!4087876 () Bool)

(assert (=> b!4087876 (= e!2537051 (matchR!5928 (derivativeStep!3629 (regex!7082 r!4213) (head!8639 (_1!24514 (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411))))) (tail!6373 (_1!24514 (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411))))))))

(assert (= (and d!1213778 c!704652) b!4087875))

(assert (= (and d!1213778 (not c!704652)) b!4087876))

(assert (= (and d!1213778 c!704654) b!4087869))

(assert (= (and d!1213778 (not c!704654)) b!4087865))

(assert (= (and b!4087865 c!704653) b!4087863))

(assert (= (and b!4087865 (not c!704653)) b!4087866))

(assert (= (and b!4087866 (not res!1670501)) b!4087870))

(assert (= (and b!4087870 res!1670503) b!4087873))

(assert (= (and b!4087873 res!1670504) b!4087871))

(assert (= (and b!4087871 res!1670498) b!4087868))

(assert (= (and b!4087870 (not res!1670499)) b!4087872))

(assert (= (and b!4087872 res!1670500) b!4087874))

(assert (= (and b!4087874 (not res!1670502)) b!4087867))

(assert (= (and b!4087867 (not res!1670505)) b!4087864))

(assert (= (or b!4087869 b!4087873 b!4087874) bm!288972))

(declare-fun m!4694725 () Bool)

(assert (=> b!4087864 m!4694725))

(assert (=> bm!288972 m!4694165))

(declare-fun m!4694727 () Bool)

(assert (=> b!4087871 m!4694727))

(assert (=> b!4087871 m!4694727))

(declare-fun m!4694729 () Bool)

(assert (=> b!4087871 m!4694729))

(assert (=> b!4087876 m!4694725))

(assert (=> b!4087876 m!4694725))

(declare-fun m!4694731 () Bool)

(assert (=> b!4087876 m!4694731))

(assert (=> b!4087876 m!4694727))

(assert (=> b!4087876 m!4694731))

(assert (=> b!4087876 m!4694727))

(declare-fun m!4694733 () Bool)

(assert (=> b!4087876 m!4694733))

(assert (=> d!1213778 m!4694165))

(assert (=> d!1213778 m!4694213))

(assert (=> b!4087875 m!4694215))

(assert (=> b!4087867 m!4694727))

(assert (=> b!4087867 m!4694727))

(assert (=> b!4087867 m!4694729))

(assert (=> b!4087868 m!4694725))

(assert (=> b!4087349 d!1213778))

(declare-fun bm!289003 () Bool)

(declare-fun call!289013 () Regex!11987)

(declare-fun call!289010 () C!24160)

(assert (=> bm!289003 (= call!289013 (derivativeStep!3629 (regex!7082 r!4213) call!289010))))

(declare-fun b!4088038 () Bool)

(declare-fun e!2537154 () tuple2!42760)

(assert (=> b!4088038 (= e!2537154 (tuple2!42761 Nil!43819 input!3411))))

(declare-fun b!4088039 () Bool)

(declare-fun e!2537152 () Bool)

(declare-fun lt!1462288 () tuple2!42760)

(assert (=> b!4088039 (= e!2537152 (>= (size!32729 (_1!24514 lt!1462288)) (size!32729 Nil!43819)))))

(declare-fun b!4088040 () Bool)

(declare-fun e!2537155 () Unit!63343)

(declare-fun Unit!63348 () Unit!63343)

(assert (=> b!4088040 (= e!2537155 Unit!63348)))

(declare-fun bm!289004 () Bool)

(declare-fun call!289011 () Unit!63343)

(declare-fun lemmaIsPrefixSameLengthThenSameList!963 (List!43943 List!43943 List!43943) Unit!63343)

(assert (=> bm!289004 (= call!289011 (lemmaIsPrefixSameLengthThenSameList!963 input!3411 Nil!43819 input!3411))))

(declare-fun b!4088041 () Bool)

(declare-fun Unit!63349 () Unit!63343)

(assert (=> b!4088041 (= e!2537155 Unit!63349)))

(declare-fun lt!1462278 () Unit!63343)

(declare-fun call!289008 () Unit!63343)

(assert (=> b!4088041 (= lt!1462278 call!289008)))

(declare-fun call!289009 () Bool)

(assert (=> b!4088041 call!289009))

(declare-fun lt!1462279 () Unit!63343)

(assert (=> b!4088041 (= lt!1462279 lt!1462278)))

(declare-fun lt!1462275 () Unit!63343)

(assert (=> b!4088041 (= lt!1462275 call!289011)))

(assert (=> b!4088041 (= input!3411 Nil!43819)))

(declare-fun lt!1462297 () Unit!63343)

(assert (=> b!4088041 (= lt!1462297 lt!1462275)))

(assert (=> b!4088041 false))

(declare-fun b!4088042 () Bool)

(declare-fun e!2537156 () tuple2!42760)

(assert (=> b!4088042 (= e!2537156 e!2537154)))

(declare-fun lt!1462285 () tuple2!42760)

(declare-fun call!289012 () tuple2!42760)

(assert (=> b!4088042 (= lt!1462285 call!289012)))

(declare-fun c!704705 () Bool)

(assert (=> b!4088042 (= c!704705 (isEmpty!26201 (_1!24514 lt!1462285)))))

(declare-fun b!4088043 () Bool)

(declare-fun e!2537150 () tuple2!42760)

(declare-fun e!2537151 () tuple2!42760)

(assert (=> b!4088043 (= e!2537150 e!2537151)))

(declare-fun c!704706 () Bool)

(assert (=> b!4088043 (= c!704706 (= (size!32729 Nil!43819) (size!32729 input!3411)))))

(declare-fun bm!289005 () Bool)

(declare-fun call!289015 () List!43943)

(assert (=> bm!289005 (= call!289015 (tail!6373 input!3411))))

(declare-fun b!4088044 () Bool)

(declare-fun e!2537157 () Bool)

(assert (=> b!4088044 (= e!2537157 e!2537152)))

(declare-fun res!1670569 () Bool)

(assert (=> b!4088044 (=> res!1670569 e!2537152)))

(assert (=> b!4088044 (= res!1670569 (isEmpty!26201 (_1!24514 lt!1462288)))))

(declare-fun lt!1462281 () List!43943)

(declare-fun bm!289006 () Bool)

(assert (=> bm!289006 (= call!289012 (findLongestMatchInner!1452 call!289013 lt!1462281 (+ (size!32729 Nil!43819) 1) call!289015 input!3411 (size!32729 input!3411)))))

(declare-fun b!4088045 () Bool)

(assert (=> b!4088045 (= e!2537154 lt!1462285)))

(declare-fun b!4088046 () Bool)

(declare-fun e!2537153 () tuple2!42760)

(assert (=> b!4088046 (= e!2537153 (tuple2!42761 Nil!43819 input!3411))))

(declare-fun b!4088047 () Bool)

(declare-fun c!704703 () Bool)

(declare-fun call!289014 () Bool)

(assert (=> b!4088047 (= c!704703 call!289014)))

(declare-fun lt!1462289 () Unit!63343)

(declare-fun lt!1462294 () Unit!63343)

(assert (=> b!4088047 (= lt!1462289 lt!1462294)))

(declare-fun lt!1462277 () C!24160)

(declare-fun lt!1462290 () List!43943)

(assert (=> b!4088047 (= (++!11488 (++!11488 Nil!43819 (Cons!43819 lt!1462277 Nil!43819)) lt!1462290) input!3411)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1269 (List!43943 C!24160 List!43943 List!43943) Unit!63343)

(assert (=> b!4088047 (= lt!1462294 (lemmaMoveElementToOtherListKeepsConcatEq!1269 Nil!43819 lt!1462277 lt!1462290 input!3411))))

(assert (=> b!4088047 (= lt!1462290 (tail!6373 input!3411))))

(assert (=> b!4088047 (= lt!1462277 (head!8639 input!3411))))

(declare-fun lt!1462276 () Unit!63343)

(declare-fun lt!1462298 () Unit!63343)

(assert (=> b!4088047 (= lt!1462276 lt!1462298)))

(declare-fun getSuffix!2498 (List!43943 List!43943) List!43943)

(assert (=> b!4088047 (isPrefix!4133 (++!11488 Nil!43819 (Cons!43819 (head!8639 (getSuffix!2498 input!3411 Nil!43819)) Nil!43819)) input!3411)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!651 (List!43943 List!43943) Unit!63343)

(assert (=> b!4088047 (= lt!1462298 (lemmaAddHeadSuffixToPrefixStillPrefix!651 Nil!43819 input!3411))))

(declare-fun lt!1462295 () Unit!63343)

(declare-fun lt!1462293 () Unit!63343)

(assert (=> b!4088047 (= lt!1462295 lt!1462293)))

(assert (=> b!4088047 (= lt!1462293 (lemmaAddHeadSuffixToPrefixStillPrefix!651 Nil!43819 input!3411))))

(assert (=> b!4088047 (= lt!1462281 (++!11488 Nil!43819 (Cons!43819 (head!8639 input!3411) Nil!43819)))))

(declare-fun lt!1462282 () Unit!63343)

(assert (=> b!4088047 (= lt!1462282 e!2537155)))

(declare-fun c!704704 () Bool)

(assert (=> b!4088047 (= c!704704 (= (size!32729 Nil!43819) (size!32729 input!3411)))))

(declare-fun lt!1462292 () Unit!63343)

(declare-fun lt!1462296 () Unit!63343)

(assert (=> b!4088047 (= lt!1462292 lt!1462296)))

(assert (=> b!4088047 (<= (size!32729 Nil!43819) (size!32729 input!3411))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!459 (List!43943 List!43943) Unit!63343)

(assert (=> b!4088047 (= lt!1462296 (lemmaIsPrefixThenSmallerEqSize!459 Nil!43819 input!3411))))

(assert (=> b!4088047 (= e!2537151 e!2537156)))

(declare-fun b!4088048 () Bool)

(assert (=> b!4088048 (= e!2537153 (tuple2!42761 Nil!43819 Nil!43819))))

(declare-fun bm!289007 () Bool)

(assert (=> bm!289007 (= call!289008 (lemmaIsPrefixRefl!2684 input!3411 input!3411))))

(declare-fun bm!289008 () Bool)

(assert (=> bm!289008 (= call!289010 (head!8639 input!3411))))

(declare-fun d!1213784 () Bool)

(assert (=> d!1213784 e!2537157))

(declare-fun res!1670568 () Bool)

(assert (=> d!1213784 (=> (not res!1670568) (not e!2537157))))

(assert (=> d!1213784 (= res!1670568 (= (++!11488 (_1!24514 lt!1462288) (_2!24514 lt!1462288)) input!3411))))

(assert (=> d!1213784 (= lt!1462288 e!2537150)))

(declare-fun c!704707 () Bool)

(declare-fun lostCause!1025 (Regex!11987) Bool)

(assert (=> d!1213784 (= c!704707 (lostCause!1025 (regex!7082 r!4213)))))

(declare-fun lt!1462274 () Unit!63343)

(declare-fun Unit!63350 () Unit!63343)

(assert (=> d!1213784 (= lt!1462274 Unit!63350)))

(assert (=> d!1213784 (= (getSuffix!2498 input!3411 Nil!43819) input!3411)))

(declare-fun lt!1462273 () Unit!63343)

(declare-fun lt!1462283 () Unit!63343)

(assert (=> d!1213784 (= lt!1462273 lt!1462283)))

(declare-fun lt!1462271 () List!43943)

(assert (=> d!1213784 (= input!3411 lt!1462271)))

(declare-fun lemmaSamePrefixThenSameSuffix!2242 (List!43943 List!43943 List!43943 List!43943 List!43943) Unit!63343)

(assert (=> d!1213784 (= lt!1462283 (lemmaSamePrefixThenSameSuffix!2242 Nil!43819 input!3411 Nil!43819 lt!1462271 input!3411))))

(assert (=> d!1213784 (= lt!1462271 (getSuffix!2498 input!3411 Nil!43819))))

(declare-fun lt!1462284 () Unit!63343)

(declare-fun lt!1462286 () Unit!63343)

(assert (=> d!1213784 (= lt!1462284 lt!1462286)))

(assert (=> d!1213784 (isPrefix!4133 Nil!43819 (++!11488 Nil!43819 input!3411))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2916 (List!43943 List!43943) Unit!63343)

(assert (=> d!1213784 (= lt!1462286 (lemmaConcatTwoListThenFirstIsPrefix!2916 Nil!43819 input!3411))))

(assert (=> d!1213784 (validRegex!5428 (regex!7082 r!4213))))

(assert (=> d!1213784 (= (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)) lt!1462288)))

(declare-fun b!4088049 () Bool)

(declare-fun c!704708 () Bool)

(assert (=> b!4088049 (= c!704708 call!289014)))

(declare-fun lt!1462287 () Unit!63343)

(declare-fun lt!1462272 () Unit!63343)

(assert (=> b!4088049 (= lt!1462287 lt!1462272)))

(assert (=> b!4088049 (= input!3411 Nil!43819)))

(assert (=> b!4088049 (= lt!1462272 call!289011)))

(declare-fun lt!1462291 () Unit!63343)

(declare-fun lt!1462280 () Unit!63343)

(assert (=> b!4088049 (= lt!1462291 lt!1462280)))

(assert (=> b!4088049 call!289009))

(assert (=> b!4088049 (= lt!1462280 call!289008)))

(assert (=> b!4088049 (= e!2537151 e!2537153)))

(declare-fun bm!289009 () Bool)

(assert (=> bm!289009 (= call!289009 (isPrefix!4133 input!3411 input!3411))))

(declare-fun b!4088050 () Bool)

(assert (=> b!4088050 (= e!2537150 (tuple2!42761 Nil!43819 input!3411))))

(declare-fun bm!289010 () Bool)

(assert (=> bm!289010 (= call!289014 (nullable!4228 (regex!7082 r!4213)))))

(declare-fun b!4088051 () Bool)

(assert (=> b!4088051 (= e!2537156 call!289012)))

(assert (= (and d!1213784 c!704707) b!4088050))

(assert (= (and d!1213784 (not c!704707)) b!4088043))

(assert (= (and b!4088043 c!704706) b!4088049))

(assert (= (and b!4088043 (not c!704706)) b!4088047))

(assert (= (and b!4088049 c!704708) b!4088048))

(assert (= (and b!4088049 (not c!704708)) b!4088046))

(assert (= (and b!4088047 c!704704) b!4088041))

(assert (= (and b!4088047 (not c!704704)) b!4088040))

(assert (= (and b!4088047 c!704703) b!4088042))

(assert (= (and b!4088047 (not c!704703)) b!4088051))

(assert (= (and b!4088042 c!704705) b!4088038))

(assert (= (and b!4088042 (not c!704705)) b!4088045))

(assert (= (or b!4088042 b!4088051) bm!289008))

(assert (= (or b!4088042 b!4088051) bm!289005))

(assert (= (or b!4088042 b!4088051) bm!289003))

(assert (= (or b!4088042 b!4088051) bm!289006))

(assert (= (or b!4088049 b!4088041) bm!289009))

(assert (= (or b!4088049 b!4088041) bm!289007))

(assert (= (or b!4088049 b!4088047) bm!289010))

(assert (= (or b!4088049 b!4088041) bm!289004))

(assert (= (and d!1213784 res!1670568) b!4088044))

(assert (= (and b!4088044 (not res!1670569)) b!4088039))

(declare-fun m!4694959 () Bool)

(assert (=> d!1213784 m!4694959))

(declare-fun m!4694961 () Bool)

(assert (=> d!1213784 m!4694961))

(declare-fun m!4694963 () Bool)

(assert (=> d!1213784 m!4694963))

(assert (=> d!1213784 m!4694213))

(declare-fun m!4694965 () Bool)

(assert (=> d!1213784 m!4694965))

(declare-fun m!4694967 () Bool)

(assert (=> d!1213784 m!4694967))

(assert (=> d!1213784 m!4694967))

(declare-fun m!4694969 () Bool)

(assert (=> d!1213784 m!4694969))

(declare-fun m!4694971 () Bool)

(assert (=> d!1213784 m!4694971))

(assert (=> bm!289009 m!4694241))

(assert (=> bm!289008 m!4694577))

(declare-fun m!4694973 () Bool)

(assert (=> b!4088042 m!4694973))

(declare-fun m!4694975 () Bool)

(assert (=> b!4088047 m!4694975))

(declare-fun m!4694977 () Bool)

(assert (=> b!4088047 m!4694977))

(assert (=> b!4088047 m!4694961))

(declare-fun m!4694979 () Bool)

(assert (=> b!4088047 m!4694979))

(assert (=> b!4088047 m!4694975))

(declare-fun m!4694981 () Bool)

(assert (=> b!4088047 m!4694981))

(assert (=> b!4088047 m!4694573))

(declare-fun m!4694983 () Bool)

(assert (=> b!4088047 m!4694983))

(declare-fun m!4694985 () Bool)

(assert (=> b!4088047 m!4694985))

(assert (=> b!4088047 m!4694979))

(declare-fun m!4694987 () Bool)

(assert (=> b!4088047 m!4694987))

(assert (=> b!4088047 m!4694961))

(declare-fun m!4694989 () Bool)

(assert (=> b!4088047 m!4694989))

(assert (=> b!4088047 m!4694171))

(assert (=> b!4088047 m!4694577))

(assert (=> b!4088047 m!4694169))

(declare-fun m!4694991 () Bool)

(assert (=> b!4088047 m!4694991))

(declare-fun m!4694993 () Bool)

(assert (=> b!4088044 m!4694993))

(assert (=> bm!289007 m!4694243))

(declare-fun m!4694995 () Bool)

(assert (=> bm!289003 m!4694995))

(declare-fun m!4694997 () Bool)

(assert (=> b!4088039 m!4694997))

(assert (=> b!4088039 m!4694169))

(declare-fun m!4694999 () Bool)

(assert (=> bm!289004 m!4694999))

(assert (=> bm!289006 m!4694171))

(declare-fun m!4695001 () Bool)

(assert (=> bm!289006 m!4695001))

(assert (=> bm!289010 m!4694215))

(assert (=> bm!289005 m!4694573))

(assert (=> b!4087349 d!1213784))

(declare-fun d!1213878 () Bool)

(declare-fun lt!1462299 () Int)

(assert (=> d!1213878 (>= lt!1462299 0)))

(declare-fun e!2537160 () Int)

(assert (=> d!1213878 (= lt!1462299 e!2537160)))

(declare-fun c!704709 () Bool)

(assert (=> d!1213878 (= c!704709 ((_ is Nil!43819) Nil!43819))))

(assert (=> d!1213878 (= (size!32729 Nil!43819) lt!1462299)))

(declare-fun b!4088054 () Bool)

(assert (=> b!4088054 (= e!2537160 0)))

(declare-fun b!4088055 () Bool)

(assert (=> b!4088055 (= e!2537160 (+ 1 (size!32729 (t!338270 Nil!43819))))))

(assert (= (and d!1213878 c!704709) b!4088054))

(assert (= (and d!1213878 (not c!704709)) b!4088055))

(declare-fun m!4695003 () Bool)

(assert (=> b!4088055 m!4695003))

(assert (=> b!4087349 d!1213878))

(declare-fun d!1213880 () Bool)

(declare-fun lt!1462300 () Int)

(assert (=> d!1213880 (>= lt!1462300 0)))

(declare-fun e!2537161 () Int)

(assert (=> d!1213880 (= lt!1462300 e!2537161)))

(declare-fun c!704710 () Bool)

(assert (=> d!1213880 (= c!704710 ((_ is Nil!43819) input!3411))))

(assert (=> d!1213880 (= (size!32729 input!3411) lt!1462300)))

(declare-fun b!4088056 () Bool)

(assert (=> b!4088056 (= e!2537161 0)))

(declare-fun b!4088057 () Bool)

(assert (=> b!4088057 (= e!2537161 (+ 1 (size!32729 (t!338270 input!3411))))))

(assert (= (and d!1213880 c!704710) b!4088056))

(assert (= (and d!1213880 (not c!704710)) b!4088057))

(declare-fun m!4695005 () Bool)

(assert (=> b!4088057 m!4695005))

(assert (=> b!4087349 d!1213880))

(declare-fun d!1213882 () Bool)

(declare-fun res!1670576 () Bool)

(declare-fun e!2537166 () Bool)

(assert (=> d!1213882 (=> res!1670576 e!2537166)))

(assert (=> d!1213882 (= res!1670576 ((_ is Nil!43821) rules!3870))))

(assert (=> d!1213882 (= (noDuplicateTag!2775 thiss!26199 rules!3870 Nil!43823) e!2537166)))

(declare-fun b!4088064 () Bool)

(declare-fun e!2537167 () Bool)

(assert (=> b!4088064 (= e!2537166 e!2537167)))

(declare-fun res!1670577 () Bool)

(assert (=> b!4088064 (=> (not res!1670577) (not e!2537167))))

(declare-fun contains!8761 (List!43947 String!50310) Bool)

(assert (=> b!4088064 (= res!1670577 (not (contains!8761 Nil!43823 (tag!7942 (h!49241 rules!3870)))))))

(declare-fun b!4088065 () Bool)

(assert (=> b!4088065 (= e!2537167 (noDuplicateTag!2775 thiss!26199 (t!338272 rules!3870) (Cons!43823 (tag!7942 (h!49241 rules!3870)) Nil!43823)))))

(assert (= (and d!1213882 (not res!1670576)) b!4088064))

(assert (= (and b!4088064 res!1670577) b!4088065))

(declare-fun m!4695009 () Bool)

(assert (=> b!4088064 m!4695009))

(declare-fun m!4695011 () Bool)

(assert (=> b!4088065 m!4695011))

(assert (=> b!4087306 d!1213882))

(assert (=> b!4087616 d!1213776))

(declare-fun d!1213888 () Bool)

(assert (=> d!1213888 (= (apply!10265 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026)))) (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1462026))))) (dynLambda!18723 (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026))))) (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1462026))))))))

(declare-fun b_lambda!119731 () Bool)

(assert (=> (not b_lambda!119731) (not d!1213888)))

(declare-fun t!338354 () Bool)

(declare-fun tb!245631 () Bool)

(assert (=> (and b!4087238 (= (toValue!9666 (transformation!7082 (h!49241 rules!3870))) (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026)))))) t!338354) tb!245631))

(declare-fun result!298036 () Bool)

(assert (=> tb!245631 (= result!298036 (inv!21 (dynLambda!18723 (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026))))) (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1462026)))))))))

(declare-fun m!4695019 () Bool)

(assert (=> tb!245631 m!4695019))

(assert (=> d!1213888 t!338354))

(declare-fun b_and!314837 () Bool)

(assert (= b_and!314787 (and (=> t!338354 result!298036) b_and!314837)))

(declare-fun t!338358 () Bool)

(declare-fun tb!245635 () Bool)

(assert (=> (and b!4087234 (= (toValue!9666 (transformation!7082 r!4213)) (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026)))))) t!338358) tb!245635))

(declare-fun result!298040 () Bool)

(assert (= result!298040 result!298036))

(assert (=> d!1213888 t!338358))

(declare-fun b_and!314841 () Bool)

(assert (= b_and!314789 (and (=> t!338358 result!298040) b_and!314841)))

(declare-fun tb!245639 () Bool)

(declare-fun t!338362 () Bool)

(assert (=> (and b!4087654 (= (toValue!9666 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026)))))) t!338362) tb!245639))

(declare-fun result!298044 () Bool)

(assert (= result!298044 result!298036))

(assert (=> d!1213888 t!338362))

(declare-fun b_and!314845 () Bool)

(assert (= b_and!314791 (and (=> t!338362 result!298044) b_and!314845)))

(assert (=> d!1213888 m!4694445))

(declare-fun m!4695025 () Bool)

(assert (=> d!1213888 m!4695025))

(assert (=> b!4087616 d!1213888))

(declare-fun d!1213894 () Bool)

(assert (=> d!1213894 (= (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1462026)))) (fromListB!2426 (originalCharacters!7676 (_1!24512 (get!14371 lt!1462026)))))))

(declare-fun bs!593176 () Bool)

(assert (= bs!593176 d!1213894))

(declare-fun m!4695029 () Bool)

(assert (=> bs!593176 m!4695029))

(assert (=> b!4087616 d!1213894))

(declare-fun b!4088066 () Bool)

(declare-fun e!2537171 () List!43943)

(assert (=> b!4088066 (= e!2537171 (_2!24512 (get!14371 lt!1461973)))))

(declare-fun b!4088068 () Bool)

(declare-fun res!1670578 () Bool)

(declare-fun e!2537170 () Bool)

(assert (=> b!4088068 (=> (not res!1670578) (not e!2537170))))

(declare-fun lt!1462305 () List!43943)

(assert (=> b!4088068 (= res!1670578 (= (size!32729 lt!1462305) (+ (size!32729 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973))))) (size!32729 (_2!24512 (get!14371 lt!1461973))))))))

(declare-fun b!4088067 () Bool)

(assert (=> b!4088067 (= e!2537171 (Cons!43819 (h!49239 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973))))) (++!11488 (t!338270 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973))))) (_2!24512 (get!14371 lt!1461973)))))))

(declare-fun d!1213898 () Bool)

(assert (=> d!1213898 e!2537170))

(declare-fun res!1670579 () Bool)

(assert (=> d!1213898 (=> (not res!1670579) (not e!2537170))))

(assert (=> d!1213898 (= res!1670579 (= (content!6742 lt!1462305) ((_ map or) (content!6742 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973))))) (content!6742 (_2!24512 (get!14371 lt!1461973))))))))

(assert (=> d!1213898 (= lt!1462305 e!2537171)))

(declare-fun c!704711 () Bool)

(assert (=> d!1213898 (= c!704711 ((_ is Nil!43819) (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973))))))))

(assert (=> d!1213898 (= (++!11488 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973)))) (_2!24512 (get!14371 lt!1461973))) lt!1462305)))

(declare-fun b!4088069 () Bool)

(assert (=> b!4088069 (= e!2537170 (or (not (= (_2!24512 (get!14371 lt!1461973)) Nil!43819)) (= lt!1462305 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461973)))))))))

(assert (= (and d!1213898 c!704711) b!4088066))

(assert (= (and d!1213898 (not c!704711)) b!4088067))

(assert (= (and d!1213898 res!1670579) b!4088068))

(assert (= (and b!4088068 res!1670578) b!4088069))

(declare-fun m!4695031 () Bool)

(assert (=> b!4088068 m!4695031))

(assert (=> b!4088068 m!4694223))

(declare-fun m!4695033 () Bool)

(assert (=> b!4088068 m!4695033))

(assert (=> b!4088068 m!4694247))

(declare-fun m!4695035 () Bool)

(assert (=> b!4088067 m!4695035))

(declare-fun m!4695037 () Bool)

(assert (=> d!1213898 m!4695037))

(assert (=> d!1213898 m!4694223))

(declare-fun m!4695039 () Bool)

(assert (=> d!1213898 m!4695039))

(declare-fun m!4695041 () Bool)

(assert (=> d!1213898 m!4695041))

(assert (=> b!4087423 d!1213898))

(assert (=> b!4087423 d!1213758))

(assert (=> b!4087423 d!1213766))

(assert (=> b!4087423 d!1213756))

(declare-fun d!1213900 () Bool)

(declare-fun lt!1462306 () Int)

(assert (=> d!1213900 (>= lt!1462306 0)))

(declare-fun e!2537173 () Int)

(assert (=> d!1213900 (= lt!1462306 e!2537173)))

(declare-fun c!704712 () Bool)

(assert (=> d!1213900 (= c!704712 ((_ is Nil!43819) (_2!24512 (get!14371 lt!1461973))))))

(assert (=> d!1213900 (= (size!32729 (_2!24512 (get!14371 lt!1461973))) lt!1462306)))

(declare-fun b!4088071 () Bool)

(assert (=> b!4088071 (= e!2537173 0)))

(declare-fun b!4088072 () Bool)

(assert (=> b!4088072 (= e!2537173 (+ 1 (size!32729 (t!338270 (_2!24512 (get!14371 lt!1461973))))))))

(assert (= (and d!1213900 c!704712) b!4088071))

(assert (= (and d!1213900 (not c!704712)) b!4088072))

(declare-fun m!4695043 () Bool)

(assert (=> b!4088072 m!4695043))

(assert (=> b!4087425 d!1213900))

(assert (=> b!4087425 d!1213756))

(assert (=> b!4087425 d!1213880))

(declare-fun d!1213902 () Bool)

(declare-fun lt!1462307 () Int)

(assert (=> d!1213902 (>= lt!1462307 0)))

(declare-fun e!2537174 () Int)

(assert (=> d!1213902 (= lt!1462307 e!2537174)))

(declare-fun c!704713 () Bool)

(assert (=> d!1213902 (= c!704713 ((_ is Nil!43819) (_2!24512 (get!14371 lt!1461951))))))

(assert (=> d!1213902 (= (size!32729 (_2!24512 (get!14371 lt!1461951))) lt!1462307)))

(declare-fun b!4088073 () Bool)

(assert (=> b!4088073 (= e!2537174 0)))

(declare-fun b!4088074 () Bool)

(assert (=> b!4088074 (= e!2537174 (+ 1 (size!32729 (t!338270 (_2!24512 (get!14371 lt!1461951))))))))

(assert (= (and d!1213902 c!704713) b!4088073))

(assert (= (and d!1213902 (not c!704713)) b!4088074))

(declare-fun m!4695045 () Bool)

(assert (=> b!4088074 m!4695045))

(assert (=> b!4087344 d!1213902))

(declare-fun d!1213904 () Bool)

(assert (=> d!1213904 (= (get!14371 lt!1461951) (v!39965 lt!1461951))))

(assert (=> b!4087344 d!1213904))

(assert (=> b!4087344 d!1213880))

(declare-fun d!1213906 () Bool)

(assert (=> d!1213906 (= (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026)))) (list!16274 (c!704555 (charsOf!4846 (_1!24512 (get!14371 lt!1462026))))))))

(declare-fun bs!593180 () Bool)

(assert (= bs!593180 d!1213906))

(declare-fun m!4695051 () Bool)

(assert (=> bs!593180 m!4695051))

(assert (=> b!4087610 d!1213906))

(declare-fun d!1213908 () Bool)

(declare-fun lt!1462308 () BalanceConc!26180)

(assert (=> d!1213908 (= (list!16272 lt!1462308) (originalCharacters!7676 (_1!24512 (get!14371 lt!1462026))))))

(assert (=> d!1213908 (= lt!1462308 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026))))) (value!222489 (_1!24512 (get!14371 lt!1462026)))))))

(assert (=> d!1213908 (= (charsOf!4846 (_1!24512 (get!14371 lt!1462026))) lt!1462308)))

(declare-fun b_lambda!119737 () Bool)

(assert (=> (not b_lambda!119737) (not d!1213908)))

(declare-fun tb!245649 () Bool)

(declare-fun t!338372 () Bool)

(assert (=> (and b!4087238 (= (toChars!9525 (transformation!7082 (h!49241 rules!3870))) (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026)))))) t!338372) tb!245649))

(declare-fun b!4088076 () Bool)

(declare-fun e!2537176 () Bool)

(declare-fun tp!1237600 () Bool)

(assert (=> b!4088076 (= e!2537176 (and (inv!58515 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026))))) (value!222489 (_1!24512 (get!14371 lt!1462026)))))) tp!1237600))))

(declare-fun result!298054 () Bool)

(assert (=> tb!245649 (= result!298054 (and (inv!58516 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026))))) (value!222489 (_1!24512 (get!14371 lt!1462026))))) e!2537176))))

(assert (= tb!245649 b!4088076))

(declare-fun m!4695059 () Bool)

(assert (=> b!4088076 m!4695059))

(declare-fun m!4695061 () Bool)

(assert (=> tb!245649 m!4695061))

(assert (=> d!1213908 t!338372))

(declare-fun b_and!314861 () Bool)

(assert (= b_and!314813 (and (=> t!338372 result!298054) b_and!314861)))

(declare-fun tb!245651 () Bool)

(declare-fun t!338374 () Bool)

(assert (=> (and b!4087234 (= (toChars!9525 (transformation!7082 r!4213)) (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026)))))) t!338374) tb!245651))

(declare-fun result!298056 () Bool)

(assert (= result!298056 result!298054))

(assert (=> d!1213908 t!338374))

(declare-fun b_and!314863 () Bool)

(assert (= b_and!314815 (and (=> t!338374 result!298056) b_and!314863)))

(declare-fun tb!245653 () Bool)

(declare-fun t!338376 () Bool)

(assert (=> (and b!4087654 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026)))))) t!338376) tb!245653))

(declare-fun result!298058 () Bool)

(assert (= result!298058 result!298054))

(assert (=> d!1213908 t!338376))

(declare-fun b_and!314865 () Bool)

(assert (= b_and!314817 (and (=> t!338376 result!298058) b_and!314865)))

(declare-fun m!4695063 () Bool)

(assert (=> d!1213908 m!4695063))

(declare-fun m!4695065 () Bool)

(assert (=> d!1213908 m!4695065))

(assert (=> b!4087610 d!1213908))

(assert (=> b!4087610 d!1213776))

(declare-fun d!1213914 () Bool)

(declare-fun nullableFct!1184 (Regex!11987) Bool)

(assert (=> d!1213914 (= (nullable!4228 (regex!7082 r!4213)) (nullableFct!1184 (regex!7082 r!4213)))))

(declare-fun bs!593181 () Bool)

(assert (= bs!593181 d!1213914))

(declare-fun m!4695067 () Bool)

(assert (=> bs!593181 m!4695067))

(assert (=> b!4087393 d!1213914))

(declare-fun d!1213916 () Bool)

(declare-fun c!704716 () Bool)

(assert (=> d!1213916 (= c!704716 ((_ is Node!13293) (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907)))))))

(declare-fun e!2537181 () Bool)

(assert (=> d!1213916 (= (inv!58515 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907)))) e!2537181)))

(declare-fun b!4088083 () Bool)

(declare-fun inv!58519 (Conc!13293) Bool)

(assert (=> b!4088083 (= e!2537181 (inv!58519 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907)))))))

(declare-fun b!4088084 () Bool)

(declare-fun e!2537182 () Bool)

(assert (=> b!4088084 (= e!2537181 e!2537182)))

(declare-fun res!1670582 () Bool)

(assert (=> b!4088084 (= res!1670582 (not ((_ is Leaf!20549) (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907))))))))

(assert (=> b!4088084 (=> res!1670582 e!2537182)))

(declare-fun b!4088085 () Bool)

(declare-fun inv!58520 (Conc!13293) Bool)

(assert (=> b!4088085 (= e!2537182 (inv!58520 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907)))))))

(assert (= (and d!1213916 c!704716) b!4088083))

(assert (= (and d!1213916 (not c!704716)) b!4088084))

(assert (= (and b!4088084 (not res!1670582)) b!4088085))

(declare-fun m!4695069 () Bool)

(assert (=> b!4088083 m!4695069))

(declare-fun m!4695071 () Bool)

(assert (=> b!4088085 m!4695071))

(assert (=> b!4087607 d!1213916))

(declare-fun d!1213918 () Bool)

(assert (=> d!1213918 (= (isEmpty!26203 lt!1462026) (not ((_ is Some!9487) lt!1462026)))))

(assert (=> d!1213680 d!1213918))

(assert (=> d!1213680 d!1213718))

(assert (=> d!1213680 d!1213720))

(declare-fun bs!593182 () Bool)

(declare-fun d!1213920 () Bool)

(assert (= bs!593182 (and d!1213920 d!1213722)))

(declare-fun lambda!127962 () Int)

(assert (=> bs!593182 (= lambda!127962 lambda!127943)))

(declare-fun bs!593183 () Bool)

(assert (= bs!593183 (and d!1213920 d!1213736)))

(assert (=> bs!593183 (= lambda!127962 lambda!127949)))

(assert (=> d!1213920 true))

(declare-fun lt!1462309 () Bool)

(assert (=> d!1213920 (= lt!1462309 (forall!8409 (t!338272 rules!3870) lambda!127962))))

(declare-fun e!2537183 () Bool)

(assert (=> d!1213920 (= lt!1462309 e!2537183)))

(declare-fun res!1670584 () Bool)

(assert (=> d!1213920 (=> res!1670584 e!2537183)))

(assert (=> d!1213920 (= res!1670584 (not ((_ is Cons!43821) (t!338272 rules!3870))))))

(assert (=> d!1213920 (= (rulesValidInductive!2615 thiss!26199 (t!338272 rules!3870)) lt!1462309)))

(declare-fun b!4088086 () Bool)

(declare-fun e!2537184 () Bool)

(assert (=> b!4088086 (= e!2537183 e!2537184)))

(declare-fun res!1670583 () Bool)

(assert (=> b!4088086 (=> (not res!1670583) (not e!2537184))))

(assert (=> b!4088086 (= res!1670583 (ruleValid!3002 thiss!26199 (h!49241 (t!338272 rules!3870))))))

(declare-fun b!4088087 () Bool)

(assert (=> b!4088087 (= e!2537184 (rulesValidInductive!2615 thiss!26199 (t!338272 (t!338272 rules!3870))))))

(assert (= (and d!1213920 (not res!1670584)) b!4088086))

(assert (= (and b!4088086 res!1670583) b!4088087))

(declare-fun m!4695073 () Bool)

(assert (=> d!1213920 m!4695073))

(declare-fun m!4695075 () Bool)

(assert (=> b!4088086 m!4695075))

(declare-fun m!4695077 () Bool)

(assert (=> b!4088087 m!4695077))

(assert (=> d!1213680 d!1213920))

(declare-fun d!1213922 () Bool)

(declare-fun e!2537191 () Bool)

(assert (=> d!1213922 e!2537191))

(declare-fun c!704719 () Bool)

(assert (=> d!1213922 (= c!704719 ((_ is EmptyExpr!11987) (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026))))))))

(declare-fun lt!1462310 () Bool)

(declare-fun e!2537187 () Bool)

(assert (=> d!1213922 (= lt!1462310 e!2537187)))

(declare-fun c!704717 () Bool)

(assert (=> d!1213922 (= c!704717 (isEmpty!26201 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026))))))))

(assert (=> d!1213922 (validRegex!5428 (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026)))))))

(assert (=> d!1213922 (= (matchR!5928 (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026)))) (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026))))) lt!1462310)))

(declare-fun b!4088088 () Bool)

(declare-fun e!2537188 () Bool)

(assert (=> b!4088088 (= e!2537188 (not lt!1462310))))

(declare-fun b!4088089 () Bool)

(declare-fun e!2537185 () Bool)

(assert (=> b!4088089 (= e!2537185 (not (= (head!8639 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026))))) (c!704554 (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026))))))))))

(declare-fun b!4088090 () Bool)

(assert (=> b!4088090 (= e!2537191 e!2537188)))

(declare-fun c!704718 () Bool)

(assert (=> b!4088090 (= c!704718 ((_ is EmptyLang!11987) (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026))))))))

(declare-fun b!4088091 () Bool)

(declare-fun res!1670588 () Bool)

(declare-fun e!2537186 () Bool)

(assert (=> b!4088091 (=> res!1670588 e!2537186)))

(assert (=> b!4088091 (= res!1670588 (not ((_ is ElementMatch!11987) (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026)))))))))

(assert (=> b!4088091 (= e!2537188 e!2537186)))

(declare-fun b!4088092 () Bool)

(declare-fun res!1670592 () Bool)

(assert (=> b!4088092 (=> res!1670592 e!2537185)))

(assert (=> b!4088092 (= res!1670592 (not (isEmpty!26201 (tail!6373 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026))))))))))

(declare-fun b!4088093 () Bool)

(declare-fun e!2537190 () Bool)

(assert (=> b!4088093 (= e!2537190 (= (head!8639 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026))))) (c!704554 (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026)))))))))

(declare-fun b!4088094 () Bool)

(declare-fun call!289016 () Bool)

(assert (=> b!4088094 (= e!2537191 (= lt!1462310 call!289016))))

(declare-fun b!4088095 () Bool)

(declare-fun res!1670586 () Bool)

(assert (=> b!4088095 (=> res!1670586 e!2537186)))

(assert (=> b!4088095 (= res!1670586 e!2537190)))

(declare-fun res!1670590 () Bool)

(assert (=> b!4088095 (=> (not res!1670590) (not e!2537190))))

(assert (=> b!4088095 (= res!1670590 lt!1462310)))

(declare-fun bm!289011 () Bool)

(assert (=> bm!289011 (= call!289016 (isEmpty!26201 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026))))))))

(declare-fun b!4088096 () Bool)

(declare-fun res!1670585 () Bool)

(assert (=> b!4088096 (=> (not res!1670585) (not e!2537190))))

(assert (=> b!4088096 (= res!1670585 (isEmpty!26201 (tail!6373 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026)))))))))

(declare-fun b!4088097 () Bool)

(declare-fun e!2537189 () Bool)

(assert (=> b!4088097 (= e!2537186 e!2537189)))

(declare-fun res!1670587 () Bool)

(assert (=> b!4088097 (=> (not res!1670587) (not e!2537189))))

(assert (=> b!4088097 (= res!1670587 (not lt!1462310))))

(declare-fun b!4088098 () Bool)

(declare-fun res!1670591 () Bool)

(assert (=> b!4088098 (=> (not res!1670591) (not e!2537190))))

(assert (=> b!4088098 (= res!1670591 (not call!289016))))

(declare-fun b!4088099 () Bool)

(assert (=> b!4088099 (= e!2537189 e!2537185)))

(declare-fun res!1670589 () Bool)

(assert (=> b!4088099 (=> res!1670589 e!2537185)))

(assert (=> b!4088099 (= res!1670589 call!289016)))

(declare-fun b!4088100 () Bool)

(assert (=> b!4088100 (= e!2537187 (nullable!4228 (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026))))))))

(declare-fun b!4088101 () Bool)

(assert (=> b!4088101 (= e!2537187 (matchR!5928 (derivativeStep!3629 (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026)))) (head!8639 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026)))))) (tail!6373 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026)))))))))

(assert (= (and d!1213922 c!704717) b!4088100))

(assert (= (and d!1213922 (not c!704717)) b!4088101))

(assert (= (and d!1213922 c!704719) b!4088094))

(assert (= (and d!1213922 (not c!704719)) b!4088090))

(assert (= (and b!4088090 c!704718) b!4088088))

(assert (= (and b!4088090 (not c!704718)) b!4088091))

(assert (= (and b!4088091 (not res!1670588)) b!4088095))

(assert (= (and b!4088095 res!1670590) b!4088098))

(assert (= (and b!4088098 res!1670591) b!4088096))

(assert (= (and b!4088096 res!1670585) b!4088093))

(assert (= (and b!4088095 (not res!1670586)) b!4088097))

(assert (= (and b!4088097 res!1670587) b!4088099))

(assert (= (and b!4088099 (not res!1670589)) b!4088092))

(assert (= (and b!4088092 (not res!1670592)) b!4088089))

(assert (= (or b!4088094 b!4088098 b!4088099) bm!289011))

(assert (=> b!4088089 m!4694439))

(declare-fun m!4695079 () Bool)

(assert (=> b!4088089 m!4695079))

(assert (=> bm!289011 m!4694439))

(declare-fun m!4695081 () Bool)

(assert (=> bm!289011 m!4695081))

(assert (=> b!4088096 m!4694439))

(declare-fun m!4695083 () Bool)

(assert (=> b!4088096 m!4695083))

(assert (=> b!4088096 m!4695083))

(declare-fun m!4695085 () Bool)

(assert (=> b!4088096 m!4695085))

(assert (=> b!4088101 m!4694439))

(assert (=> b!4088101 m!4695079))

(assert (=> b!4088101 m!4695079))

(declare-fun m!4695087 () Bool)

(assert (=> b!4088101 m!4695087))

(assert (=> b!4088101 m!4694439))

(assert (=> b!4088101 m!4695083))

(assert (=> b!4088101 m!4695087))

(assert (=> b!4088101 m!4695083))

(declare-fun m!4695089 () Bool)

(assert (=> b!4088101 m!4695089))

(assert (=> d!1213922 m!4694439))

(assert (=> d!1213922 m!4695081))

(declare-fun m!4695091 () Bool)

(assert (=> d!1213922 m!4695091))

(declare-fun m!4695093 () Bool)

(assert (=> b!4088100 m!4695093))

(assert (=> b!4088092 m!4694439))

(assert (=> b!4088092 m!4695083))

(assert (=> b!4088092 m!4695083))

(assert (=> b!4088092 m!4695085))

(assert (=> b!4088093 m!4694439))

(assert (=> b!4088093 m!4695079))

(assert (=> b!4087612 d!1213922))

(assert (=> b!4087612 d!1213776))

(assert (=> b!4087612 d!1213906))

(assert (=> b!4087612 d!1213908))

(declare-fun b!4088104 () Bool)

(declare-fun e!2537195 () List!43943)

(assert (=> b!4088104 (= e!2537195 (_2!24512 (get!14371 lt!1461951)))))

(declare-fun b!4088106 () Bool)

(declare-fun res!1670595 () Bool)

(declare-fun e!2537194 () Bool)

(assert (=> b!4088106 (=> (not res!1670595) (not e!2537194))))

(declare-fun lt!1462313 () List!43943)

(assert (=> b!4088106 (= res!1670595 (= (size!32729 lt!1462313) (+ (size!32729 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951))))) (size!32729 (_2!24512 (get!14371 lt!1461951))))))))

(declare-fun b!4088105 () Bool)

(assert (=> b!4088105 (= e!2537195 (Cons!43819 (h!49239 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951))))) (++!11488 (t!338270 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951))))) (_2!24512 (get!14371 lt!1461951)))))))

(declare-fun d!1213924 () Bool)

(assert (=> d!1213924 e!2537194))

(declare-fun res!1670596 () Bool)

(assert (=> d!1213924 (=> (not res!1670596) (not e!2537194))))

(assert (=> d!1213924 (= res!1670596 (= (content!6742 lt!1462313) ((_ map or) (content!6742 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951))))) (content!6742 (_2!24512 (get!14371 lt!1461951))))))))

(assert (=> d!1213924 (= lt!1462313 e!2537195)))

(declare-fun c!704720 () Bool)

(assert (=> d!1213924 (= c!704720 ((_ is Nil!43819) (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951))))))))

(assert (=> d!1213924 (= (++!11488 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951)))) (_2!24512 (get!14371 lt!1461951))) lt!1462313)))

(declare-fun b!4088107 () Bool)

(assert (=> b!4088107 (= e!2537194 (or (not (= (_2!24512 (get!14371 lt!1461951)) Nil!43819)) (= lt!1462313 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951)))))))))

(assert (= (and d!1213924 c!704720) b!4088104))

(assert (= (and d!1213924 (not c!704720)) b!4088105))

(assert (= (and d!1213924 res!1670596) b!4088106))

(assert (= (and b!4088106 res!1670595) b!4088107))

(declare-fun m!4695095 () Bool)

(assert (=> b!4088106 m!4695095))

(assert (=> b!4088106 m!4694185))

(declare-fun m!4695097 () Bool)

(assert (=> b!4088106 m!4695097))

(assert (=> b!4088106 m!4694193))

(declare-fun m!4695099 () Bool)

(assert (=> b!4088105 m!4695099))

(declare-fun m!4695101 () Bool)

(assert (=> d!1213924 m!4695101))

(assert (=> d!1213924 m!4694185))

(declare-fun m!4695103 () Bool)

(assert (=> d!1213924 m!4695103))

(declare-fun m!4695105 () Bool)

(assert (=> d!1213924 m!4695105))

(assert (=> b!4087346 d!1213924))

(declare-fun d!1213926 () Bool)

(assert (=> d!1213926 (= (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951)))) (list!16274 (c!704555 (charsOf!4846 (_1!24512 (get!14371 lt!1461951))))))))

(declare-fun bs!593184 () Bool)

(assert (= bs!593184 d!1213926))

(declare-fun m!4695107 () Bool)

(assert (=> bs!593184 m!4695107))

(assert (=> b!4087346 d!1213926))

(declare-fun d!1213928 () Bool)

(declare-fun lt!1462315 () BalanceConc!26180)

(assert (=> d!1213928 (= (list!16272 lt!1462315) (originalCharacters!7676 (_1!24512 (get!14371 lt!1461951))))))

(assert (=> d!1213928 (= lt!1462315 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461951))))) (value!222489 (_1!24512 (get!14371 lt!1461951)))))))

(assert (=> d!1213928 (= (charsOf!4846 (_1!24512 (get!14371 lt!1461951))) lt!1462315)))

(declare-fun b_lambda!119741 () Bool)

(assert (=> (not b_lambda!119741) (not d!1213928)))

(declare-fun tb!245655 () Bool)

(declare-fun t!338378 () Bool)

(assert (=> (and b!4087238 (= (toChars!9525 (transformation!7082 (h!49241 rules!3870))) (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461951)))))) t!338378) tb!245655))

(declare-fun b!4088109 () Bool)

(declare-fun e!2537197 () Bool)

(declare-fun tp!1237601 () Bool)

(assert (=> b!4088109 (= e!2537197 (and (inv!58515 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461951))))) (value!222489 (_1!24512 (get!14371 lt!1461951)))))) tp!1237601))))

(declare-fun result!298060 () Bool)

(assert (=> tb!245655 (= result!298060 (and (inv!58516 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461951))))) (value!222489 (_1!24512 (get!14371 lt!1461951))))) e!2537197))))

(assert (= tb!245655 b!4088109))

(declare-fun m!4695111 () Bool)

(assert (=> b!4088109 m!4695111))

(declare-fun m!4695113 () Bool)

(assert (=> tb!245655 m!4695113))

(assert (=> d!1213928 t!338378))

(declare-fun b_and!314867 () Bool)

(assert (= b_and!314861 (and (=> t!338378 result!298060) b_and!314867)))

(declare-fun tb!245657 () Bool)

(declare-fun t!338380 () Bool)

(assert (=> (and b!4087234 (= (toChars!9525 (transformation!7082 r!4213)) (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461951)))))) t!338380) tb!245657))

(declare-fun result!298062 () Bool)

(assert (= result!298062 result!298060))

(assert (=> d!1213928 t!338380))

(declare-fun b_and!314869 () Bool)

(assert (= b_and!314863 (and (=> t!338380 result!298062) b_and!314869)))

(declare-fun tb!245659 () Bool)

(declare-fun t!338382 () Bool)

(assert (=> (and b!4087654 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461951)))))) t!338382) tb!245659))

(declare-fun result!298064 () Bool)

(assert (= result!298064 result!298060))

(assert (=> d!1213928 t!338382))

(declare-fun b_and!314871 () Bool)

(assert (= b_and!314865 (and (=> t!338382 result!298064) b_and!314871)))

(declare-fun m!4695117 () Bool)

(assert (=> d!1213928 m!4695117))

(declare-fun m!4695119 () Bool)

(assert (=> d!1213928 m!4695119))

(assert (=> b!4087346 d!1213928))

(assert (=> b!4087346 d!1213904))

(assert (=> b!4087386 d!1213728))

(declare-fun d!1213934 () Bool)

(assert (=> d!1213934 (= (inv!58508 (tag!7942 (h!49241 (t!338272 rules!3870)))) (= (mod (str.len (value!222488 (tag!7942 (h!49241 (t!338272 rules!3870))))) 2) 0))))

(assert (=> b!4087653 d!1213934))

(declare-fun d!1213936 () Bool)

(declare-fun res!1670606 () Bool)

(declare-fun e!2537205 () Bool)

(assert (=> d!1213936 (=> (not res!1670606) (not e!2537205))))

(assert (=> d!1213936 (= res!1670606 (semiInverseModEq!3039 (toChars!9525 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toValue!9666 (transformation!7082 (h!49241 (t!338272 rules!3870))))))))

(assert (=> d!1213936 (= (inv!58511 (transformation!7082 (h!49241 (t!338272 rules!3870)))) e!2537205)))

(declare-fun b!4088124 () Bool)

(assert (=> b!4088124 (= e!2537205 (equivClasses!2938 (toChars!9525 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toValue!9666 (transformation!7082 (h!49241 (t!338272 rules!3870))))))))

(assert (= (and d!1213936 res!1670606) b!4088124))

(declare-fun m!4695121 () Bool)

(assert (=> d!1213936 m!4695121))

(declare-fun m!4695123 () Bool)

(assert (=> b!4088124 m!4695123))

(assert (=> b!4087653 d!1213936))

(declare-fun bs!593186 () Bool)

(declare-fun d!1213938 () Bool)

(assert (= bs!593186 (and d!1213938 d!1213628)))

(declare-fun lambda!127963 () Int)

(assert (=> bs!593186 (= (and (= (toChars!9525 (transformation!7082 (h!49241 rules!3870))) (toChars!9525 (transformation!7082 r!4213))) (= (toValue!9666 (transformation!7082 (h!49241 rules!3870))) (toValue!9666 (transformation!7082 r!4213)))) (= lambda!127963 lambda!127937))))

(declare-fun bs!593187 () Bool)

(assert (= bs!593187 (and d!1213938 d!1213732)))

(assert (=> bs!593187 (= (and (= (toChars!9525 (transformation!7082 (h!49241 rules!3870))) (toChars!9525 (transformation!7082 r!4213))) (= (toValue!9666 (transformation!7082 (h!49241 rules!3870))) (toValue!9666 (transformation!7082 r!4213)))) (= lambda!127963 lambda!127946))))

(assert (=> d!1213938 true))

(assert (=> d!1213938 (< (dynLambda!18726 order!23017 (toChars!9525 (transformation!7082 (h!49241 rules!3870)))) (dynLambda!18725 order!23015 lambda!127963))))

(assert (=> d!1213938 true))

(assert (=> d!1213938 (< (dynLambda!18724 order!23013 (toValue!9666 (transformation!7082 (h!49241 rules!3870)))) (dynLambda!18725 order!23015 lambda!127963))))

(assert (=> d!1213938 (= (semiInverseModEq!3039 (toChars!9525 (transformation!7082 (h!49241 rules!3870))) (toValue!9666 (transformation!7082 (h!49241 rules!3870)))) (Forall!1513 lambda!127963))))

(declare-fun bs!593188 () Bool)

(assert (= bs!593188 d!1213938))

(declare-fun m!4695133 () Bool)

(assert (=> bs!593188 m!4695133))

(assert (=> d!1213586 d!1213938))

(declare-fun d!1213940 () Bool)

(declare-fun isBalanced!3702 (Conc!13293) Bool)

(assert (=> d!1213940 (= (inv!58516 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905))) (isBalanced!3702 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905)))))))

(declare-fun bs!593191 () Bool)

(assert (= bs!593191 d!1213940))

(declare-fun m!4695143 () Bool)

(assert (=> bs!593191 m!4695143))

(assert (=> tb!245557 d!1213940))

(declare-fun d!1213948 () Bool)

(assert (=> d!1213948 (= (isEmpty!26203 (maxPrefix!3961 thiss!26199 (t!338272 rules!3870) input!3411)) (not ((_ is Some!9487) (maxPrefix!3961 thiss!26199 (t!338272 rules!3870) input!3411))))))

(assert (=> d!1213682 d!1213948))

(assert (=> d!1213682 d!1213680))

(declare-fun d!1213950 () Bool)

(declare-fun e!2537243 () Bool)

(assert (=> d!1213950 e!2537243))

(declare-fun res!1670622 () Bool)

(assert (=> d!1213950 (=> res!1670622 e!2537243)))

(assert (=> d!1213950 (= res!1670622 (isEmpty!26203 (maxPrefix!3961 thiss!26199 (t!338272 rules!3870) input!3411)))))

(assert (=> d!1213950 true))

(declare-fun _$60!831 () Unit!63343)

(assert (=> d!1213950 (= (choose!24961 thiss!26199 (h!49241 rules!3870) (t!338272 rules!3870) input!3411) _$60!831)))

(declare-fun b!4088196 () Bool)

(assert (=> b!4088196 (= e!2537243 (not (= (rule!10214 (_1!24512 (get!14371 (maxPrefix!3961 thiss!26199 (t!338272 rules!3870) input!3411)))) (h!49241 rules!3870))))))

(assert (= (and d!1213950 (not res!1670622)) b!4088196))

(assert (=> d!1213950 m!4694073))

(assert (=> d!1213950 m!4694073))

(assert (=> d!1213950 m!4694463))

(assert (=> b!4088196 m!4694073))

(assert (=> b!4088196 m!4694073))

(assert (=> b!4088196 m!4694467))

(assert (=> d!1213682 d!1213950))

(assert (=> d!1213682 d!1213672))

(declare-fun d!1213966 () Bool)

(assert (=> d!1213966 (= (isEmpty!26201 (tail!6373 p!2988)) ((_ is Nil!43819) (tail!6373 p!2988)))))

(assert (=> b!4087389 d!1213966))

(declare-fun d!1213968 () Bool)

(assert (=> d!1213968 (= (tail!6373 p!2988) (t!338270 p!2988))))

(assert (=> b!4087389 d!1213968))

(assert (=> d!1213618 d!1213616))

(declare-fun d!1213970 () Bool)

(assert (=> d!1213970 (ruleValid!3002 thiss!26199 r!4213)))

(assert (=> d!1213970 true))

(declare-fun _$65!1570 () Unit!63343)

(assert (=> d!1213970 (= (choose!24959 thiss!26199 r!4213 rules!3870) _$65!1570)))

(declare-fun bs!593199 () Bool)

(assert (= bs!593199 d!1213970))

(assert (=> bs!593199 m!4694049))

(assert (=> d!1213618 d!1213970))

(assert (=> d!1213618 d!1213602))

(declare-fun b!4088249 () Bool)

(declare-fun e!2537277 () Bool)

(declare-fun e!2537275 () Bool)

(assert (=> b!4088249 (= e!2537277 e!2537275)))

(declare-fun res!1670633 () Bool)

(assert (=> b!4088249 (=> (not res!1670633) (not e!2537275))))

(declare-fun call!289027 () Bool)

(assert (=> b!4088249 (= res!1670633 call!289027)))

(declare-fun b!4088250 () Bool)

(declare-fun call!289025 () Bool)

(assert (=> b!4088250 (= e!2537275 call!289025)))

(declare-fun b!4088251 () Bool)

(declare-fun res!1670635 () Bool)

(assert (=> b!4088251 (=> res!1670635 e!2537277)))

(assert (=> b!4088251 (= res!1670635 (not ((_ is Concat!19300) (regex!7082 r!4213))))))

(declare-fun e!2537274 () Bool)

(assert (=> b!4088251 (= e!2537274 e!2537277)))

(declare-fun c!704742 () Bool)

(declare-fun c!704741 () Bool)

(declare-fun call!289026 () Bool)

(declare-fun bm!289020 () Bool)

(assert (=> bm!289020 (= call!289026 (validRegex!5428 (ite c!704741 (reg!12316 (regex!7082 r!4213)) (ite c!704742 (regOne!24487 (regex!7082 r!4213)) (regOne!24486 (regex!7082 r!4213))))))))

(declare-fun b!4088252 () Bool)

(declare-fun e!2537271 () Bool)

(declare-fun e!2537272 () Bool)

(assert (=> b!4088252 (= e!2537271 e!2537272)))

(declare-fun res!1670636 () Bool)

(assert (=> b!4088252 (= res!1670636 (not (nullable!4228 (reg!12316 (regex!7082 r!4213)))))))

(assert (=> b!4088252 (=> (not res!1670636) (not e!2537272))))

(declare-fun d!1213972 () Bool)

(declare-fun res!1670637 () Bool)

(declare-fun e!2537276 () Bool)

(assert (=> d!1213972 (=> res!1670637 e!2537276)))

(assert (=> d!1213972 (= res!1670637 ((_ is ElementMatch!11987) (regex!7082 r!4213)))))

(assert (=> d!1213972 (= (validRegex!5428 (regex!7082 r!4213)) e!2537276)))

(declare-fun b!4088253 () Bool)

(assert (=> b!4088253 (= e!2537271 e!2537274)))

(assert (=> b!4088253 (= c!704742 ((_ is Union!11987) (regex!7082 r!4213)))))

(declare-fun b!4088254 () Bool)

(assert (=> b!4088254 (= e!2537276 e!2537271)))

(assert (=> b!4088254 (= c!704741 ((_ is Star!11987) (regex!7082 r!4213)))))

(declare-fun bm!289021 () Bool)

(assert (=> bm!289021 (= call!289027 call!289026)))

(declare-fun b!4088255 () Bool)

(assert (=> b!4088255 (= e!2537272 call!289026)))

(declare-fun b!4088256 () Bool)

(declare-fun res!1670634 () Bool)

(declare-fun e!2537273 () Bool)

(assert (=> b!4088256 (=> (not res!1670634) (not e!2537273))))

(assert (=> b!4088256 (= res!1670634 call!289027)))

(assert (=> b!4088256 (= e!2537274 e!2537273)))

(declare-fun b!4088257 () Bool)

(assert (=> b!4088257 (= e!2537273 call!289025)))

(declare-fun bm!289022 () Bool)

(assert (=> bm!289022 (= call!289025 (validRegex!5428 (ite c!704742 (regTwo!24487 (regex!7082 r!4213)) (regTwo!24486 (regex!7082 r!4213)))))))

(assert (= (and d!1213972 (not res!1670637)) b!4088254))

(assert (= (and b!4088254 c!704741) b!4088252))

(assert (= (and b!4088254 (not c!704741)) b!4088253))

(assert (= (and b!4088252 res!1670636) b!4088255))

(assert (= (and b!4088253 c!704742) b!4088256))

(assert (= (and b!4088253 (not c!704742)) b!4088251))

(assert (= (and b!4088256 res!1670634) b!4088257))

(assert (= (and b!4088251 (not res!1670635)) b!4088249))

(assert (= (and b!4088249 res!1670633) b!4088250))

(assert (= (or b!4088257 b!4088250) bm!289022))

(assert (= (or b!4088256 b!4088249) bm!289021))

(assert (= (or b!4088255 bm!289021) bm!289020))

(declare-fun m!4695197 () Bool)

(assert (=> bm!289020 m!4695197))

(declare-fun m!4695199 () Bool)

(assert (=> b!4088252 m!4695199))

(declare-fun m!4695201 () Bool)

(assert (=> bm!289022 m!4695201))

(assert (=> d!1213616 d!1213972))

(declare-fun d!1213976 () Bool)

(assert (=> d!1213976 (= (isEmpty!26203 lt!1461951) (not ((_ is Some!9487) lt!1461951)))))

(assert (=> d!1213608 d!1213976))

(declare-fun d!1213978 () Bool)

(assert (=> d!1213978 (= (isEmpty!26201 (_1!24514 lt!1461954)) ((_ is Nil!43819) (_1!24514 lt!1461954)))))

(assert (=> d!1213608 d!1213978))

(declare-fun d!1213980 () Bool)

(declare-fun lt!1462348 () tuple2!42760)

(assert (=> d!1213980 (= (++!11488 (_1!24514 lt!1462348) (_2!24514 lt!1462348)) input!3411)))

(declare-fun sizeTr!288 (List!43943 Int) Int)

(assert (=> d!1213980 (= lt!1462348 (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 0 input!3411 input!3411 (sizeTr!288 input!3411 0)))))

(declare-fun lt!1462345 () Unit!63343)

(declare-fun lt!1462347 () Unit!63343)

(assert (=> d!1213980 (= lt!1462345 lt!1462347)))

(declare-fun lt!1462343 () List!43943)

(declare-fun lt!1462350 () Int)

(assert (=> d!1213980 (= (sizeTr!288 lt!1462343 lt!1462350) (+ (size!32729 lt!1462343) lt!1462350))))

(declare-fun lemmaSizeTrEqualsSize!287 (List!43943 Int) Unit!63343)

(assert (=> d!1213980 (= lt!1462347 (lemmaSizeTrEqualsSize!287 lt!1462343 lt!1462350))))

(assert (=> d!1213980 (= lt!1462350 0)))

(assert (=> d!1213980 (= lt!1462343 Nil!43819)))

(declare-fun lt!1462349 () Unit!63343)

(declare-fun lt!1462344 () Unit!63343)

(assert (=> d!1213980 (= lt!1462349 lt!1462344)))

(declare-fun lt!1462346 () Int)

(assert (=> d!1213980 (= (sizeTr!288 input!3411 lt!1462346) (+ (size!32729 input!3411) lt!1462346))))

(assert (=> d!1213980 (= lt!1462344 (lemmaSizeTrEqualsSize!287 input!3411 lt!1462346))))

(assert (=> d!1213980 (= lt!1462346 0)))

(assert (=> d!1213980 (validRegex!5428 (regex!7082 r!4213))))

(assert (=> d!1213980 (= (findLongestMatch!1365 (regex!7082 r!4213) input!3411) lt!1462348)))

(declare-fun bs!593201 () Bool)

(assert (= bs!593201 d!1213980))

(declare-fun m!4695203 () Bool)

(assert (=> bs!593201 m!4695203))

(declare-fun m!4695205 () Bool)

(assert (=> bs!593201 m!4695205))

(declare-fun m!4695207 () Bool)

(assert (=> bs!593201 m!4695207))

(assert (=> bs!593201 m!4694171))

(declare-fun m!4695209 () Bool)

(assert (=> bs!593201 m!4695209))

(declare-fun m!4695211 () Bool)

(assert (=> bs!593201 m!4695211))

(assert (=> bs!593201 m!4694213))

(declare-fun m!4695213 () Bool)

(assert (=> bs!593201 m!4695213))

(assert (=> bs!593201 m!4695205))

(declare-fun m!4695215 () Bool)

(assert (=> bs!593201 m!4695215))

(declare-fun m!4695217 () Bool)

(assert (=> bs!593201 m!4695217))

(assert (=> d!1213608 d!1213980))

(assert (=> d!1213608 d!1213616))

(assert (=> b!4087426 d!1213756))

(declare-fun d!1213982 () Bool)

(assert (=> d!1213982 (= (apply!10265 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973)))) (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1461973))))) (dynLambda!18723 (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973))))) (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1461973))))))))

(declare-fun b_lambda!119757 () Bool)

(assert (=> (not b_lambda!119757) (not d!1213982)))

(declare-fun t!338406 () Bool)

(declare-fun tb!245683 () Bool)

(assert (=> (and b!4087238 (= (toValue!9666 (transformation!7082 (h!49241 rules!3870))) (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973)))))) t!338406) tb!245683))

(declare-fun result!298090 () Bool)

(assert (=> tb!245683 (= result!298090 (inv!21 (dynLambda!18723 (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973))))) (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1461973)))))))))

(declare-fun m!4695219 () Bool)

(assert (=> tb!245683 m!4695219))

(assert (=> d!1213982 t!338406))

(declare-fun b_and!314893 () Bool)

(assert (= b_and!314837 (and (=> t!338406 result!298090) b_and!314893)))

(declare-fun t!338408 () Bool)

(declare-fun tb!245685 () Bool)

(assert (=> (and b!4087234 (= (toValue!9666 (transformation!7082 r!4213)) (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973)))))) t!338408) tb!245685))

(declare-fun result!298092 () Bool)

(assert (= result!298092 result!298090))

(assert (=> d!1213982 t!338408))

(declare-fun b_and!314895 () Bool)

(assert (= b_and!314841 (and (=> t!338408 result!298092) b_and!314895)))

(declare-fun t!338410 () Bool)

(declare-fun tb!245687 () Bool)

(assert (=> (and b!4087654 (= (toValue!9666 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973)))))) t!338410) tb!245687))

(declare-fun result!298094 () Bool)

(assert (= result!298094 result!298090))

(assert (=> d!1213982 t!338410))

(declare-fun b_and!314897 () Bool)

(assert (= b_and!314845 (and (=> t!338410 result!298094) b_and!314897)))

(assert (=> d!1213982 m!4694229))

(declare-fun m!4695221 () Bool)

(assert (=> d!1213982 m!4695221))

(assert (=> b!4087426 d!1213982))

(declare-fun d!1213984 () Bool)

(assert (=> d!1213984 (= (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1461973)))) (fromListB!2426 (originalCharacters!7676 (_1!24512 (get!14371 lt!1461973)))))))

(declare-fun bs!593202 () Bool)

(assert (= bs!593202 d!1213984))

(declare-fun m!4695223 () Bool)

(assert (=> bs!593202 m!4695223))

(assert (=> b!4087426 d!1213984))

(declare-fun b!4088258 () Bool)

(declare-fun e!2537280 () List!43943)

(assert (=> b!4088258 (= e!2537280 suffix!1518)))

(declare-fun b!4088260 () Bool)

(declare-fun res!1670638 () Bool)

(declare-fun e!2537279 () Bool)

(assert (=> b!4088260 (=> (not res!1670638) (not e!2537279))))

(declare-fun lt!1462351 () List!43943)

(assert (=> b!4088260 (= res!1670638 (= (size!32729 lt!1462351) (+ (size!32729 (t!338270 p!2988)) (size!32729 suffix!1518))))))

(declare-fun b!4088259 () Bool)

(assert (=> b!4088259 (= e!2537280 (Cons!43819 (h!49239 (t!338270 p!2988)) (++!11488 (t!338270 (t!338270 p!2988)) suffix!1518)))))

(declare-fun d!1213986 () Bool)

(assert (=> d!1213986 e!2537279))

(declare-fun res!1670639 () Bool)

(assert (=> d!1213986 (=> (not res!1670639) (not e!2537279))))

(assert (=> d!1213986 (= res!1670639 (= (content!6742 lt!1462351) ((_ map or) (content!6742 (t!338270 p!2988)) (content!6742 suffix!1518))))))

(assert (=> d!1213986 (= lt!1462351 e!2537280)))

(declare-fun c!704743 () Bool)

(assert (=> d!1213986 (= c!704743 ((_ is Nil!43819) (t!338270 p!2988)))))

(assert (=> d!1213986 (= (++!11488 (t!338270 p!2988) suffix!1518) lt!1462351)))

(declare-fun b!4088261 () Bool)

(assert (=> b!4088261 (= e!2537279 (or (not (= suffix!1518 Nil!43819)) (= lt!1462351 (t!338270 p!2988))))))

(assert (= (and d!1213986 c!704743) b!4088258))

(assert (= (and d!1213986 (not c!704743)) b!4088259))

(assert (= (and d!1213986 res!1670639) b!4088260))

(assert (= (and b!4088260 res!1670638) b!4088261))

(declare-fun m!4695225 () Bool)

(assert (=> b!4088260 m!4695225))

(assert (=> b!4088260 m!4694253))

(assert (=> b!4088260 m!4694145))

(declare-fun m!4695227 () Bool)

(assert (=> b!4088259 m!4695227))

(declare-fun m!4695229 () Bool)

(assert (=> d!1213986 m!4695229))

(declare-fun m!4695231 () Bool)

(assert (=> d!1213986 m!4695231))

(assert (=> d!1213986 m!4694153))

(assert (=> b!4087322 d!1213986))

(declare-fun d!1213988 () Bool)

(declare-fun c!704746 () Bool)

(assert (=> d!1213988 (= c!704746 ((_ is Nil!43821) rules!3870))))

(declare-fun e!2537283 () (InoxSet Rule!13964))

(assert (=> d!1213988 (= (content!6741 rules!3870) e!2537283)))

(declare-fun b!4088266 () Bool)

(assert (=> b!4088266 (= e!2537283 ((as const (Array Rule!13964 Bool)) false))))

(declare-fun b!4088267 () Bool)

(assert (=> b!4088267 (= e!2537283 ((_ map or) (store ((as const (Array Rule!13964 Bool)) false) (h!49241 rules!3870) true) (content!6741 (t!338272 rules!3870))))))

(assert (= (and d!1213988 c!704746) b!4088266))

(assert (= (and d!1213988 (not c!704746)) b!4088267))

(declare-fun m!4695233 () Bool)

(assert (=> b!4088267 m!4695233))

(assert (=> b!4088267 m!4694715))

(assert (=> d!1213602 d!1213988))

(declare-fun d!1213990 () Bool)

(declare-fun lt!1462352 () Int)

(assert (=> d!1213990 (>= lt!1462352 0)))

(declare-fun e!2537284 () Int)

(assert (=> d!1213990 (= lt!1462352 e!2537284)))

(declare-fun c!704747 () Bool)

(assert (=> d!1213990 (= c!704747 ((_ is Nil!43819) (t!338270 p!2988)))))

(assert (=> d!1213990 (= (size!32729 (t!338270 p!2988)) lt!1462352)))

(declare-fun b!4088268 () Bool)

(assert (=> b!4088268 (= e!2537284 0)))

(declare-fun b!4088269 () Bool)

(assert (=> b!4088269 (= e!2537284 (+ 1 (size!32729 (t!338270 (t!338270 p!2988)))))))

(assert (= (and d!1213990 c!704747) b!4088268))

(assert (= (and d!1213990 (not c!704747)) b!4088269))

(declare-fun m!4695235 () Bool)

(assert (=> b!4088269 m!4695235))

(assert (=> b!4087435 d!1213990))

(declare-fun d!1213992 () Bool)

(declare-fun lt!1462353 () Bool)

(assert (=> d!1213992 (= lt!1462353 (select (content!6741 (t!338272 rules!3870)) r!4213))))

(declare-fun e!2537286 () Bool)

(assert (=> d!1213992 (= lt!1462353 e!2537286)))

(declare-fun res!1670641 () Bool)

(assert (=> d!1213992 (=> (not res!1670641) (not e!2537286))))

(assert (=> d!1213992 (= res!1670641 ((_ is Cons!43821) (t!338272 rules!3870)))))

(assert (=> d!1213992 (= (contains!8759 (t!338272 rules!3870) r!4213) lt!1462353)))

(declare-fun b!4088270 () Bool)

(declare-fun e!2537285 () Bool)

(assert (=> b!4088270 (= e!2537286 e!2537285)))

(declare-fun res!1670640 () Bool)

(assert (=> b!4088270 (=> res!1670640 e!2537285)))

(assert (=> b!4088270 (= res!1670640 (= (h!49241 (t!338272 rules!3870)) r!4213))))

(declare-fun b!4088271 () Bool)

(assert (=> b!4088271 (= e!2537285 (contains!8759 (t!338272 (t!338272 rules!3870)) r!4213))))

(assert (= (and d!1213992 res!1670641) b!4088270))

(assert (= (and b!4088270 (not res!1670640)) b!4088271))

(assert (=> d!1213992 m!4694715))

(declare-fun m!4695237 () Bool)

(assert (=> d!1213992 m!4695237))

(declare-fun m!4695239 () Bool)

(assert (=> b!4088271 m!4695239))

(assert (=> b!4087312 d!1213992))

(assert (=> b!4087385 d!1213966))

(assert (=> b!4087385 d!1213968))

(assert (=> b!4087348 d!1213904))

(declare-fun d!1213994 () Bool)

(declare-fun lt!1462354 () Int)

(assert (=> d!1213994 (>= lt!1462354 0)))

(declare-fun e!2537287 () Int)

(assert (=> d!1213994 (= lt!1462354 e!2537287)))

(declare-fun c!704748 () Bool)

(assert (=> d!1213994 (= c!704748 ((_ is Nil!43819) (originalCharacters!7676 (_1!24512 (get!14371 lt!1461951)))))))

(assert (=> d!1213994 (= (size!32729 (originalCharacters!7676 (_1!24512 (get!14371 lt!1461951)))) lt!1462354)))

(declare-fun b!4088272 () Bool)

(assert (=> b!4088272 (= e!2537287 0)))

(declare-fun b!4088273 () Bool)

(assert (=> b!4088273 (= e!2537287 (+ 1 (size!32729 (t!338270 (originalCharacters!7676 (_1!24512 (get!14371 lt!1461951)))))))))

(assert (= (and d!1213994 c!704748) b!4088272))

(assert (= (and d!1213994 (not c!704748)) b!4088273))

(declare-fun m!4695241 () Bool)

(assert (=> b!4088273 m!4695241))

(assert (=> b!4087348 d!1213994))

(declare-fun d!1213996 () Bool)

(declare-fun c!704749 () Bool)

(assert (=> d!1213996 (= c!704749 ((_ is Node!13293) (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905)))))))

(declare-fun e!2537288 () Bool)

(assert (=> d!1213996 (= (inv!58515 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905)))) e!2537288)))

(declare-fun b!4088274 () Bool)

(assert (=> b!4088274 (= e!2537288 (inv!58519 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905)))))))

(declare-fun b!4088275 () Bool)

(declare-fun e!2537289 () Bool)

(assert (=> b!4088275 (= e!2537288 e!2537289)))

(declare-fun res!1670642 () Bool)

(assert (=> b!4088275 (= res!1670642 (not ((_ is Leaf!20549) (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905))))))))

(assert (=> b!4088275 (=> res!1670642 e!2537289)))

(declare-fun b!4088276 () Bool)

(assert (=> b!4088276 (= e!2537289 (inv!58520 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905)))))))

(assert (= (and d!1213996 c!704749) b!4088274))

(assert (= (and d!1213996 (not c!704749)) b!4088275))

(assert (= (and b!4088275 (not res!1670642)) b!4088276))

(declare-fun m!4695243 () Bool)

(assert (=> b!4088274 m!4695243))

(declare-fun m!4695245 () Bool)

(assert (=> b!4088276 m!4695245))

(assert (=> b!4087297 d!1213996))

(assert (=> b!4087421 d!1213680))

(declare-fun b!4088277 () Bool)

(declare-fun e!2537291 () List!43943)

(assert (=> b!4088277 (= e!2537291 (_2!24512 (get!14371 lt!1462026)))))

(declare-fun b!4088279 () Bool)

(declare-fun res!1670643 () Bool)

(declare-fun e!2537290 () Bool)

(assert (=> b!4088279 (=> (not res!1670643) (not e!2537290))))

(declare-fun lt!1462355 () List!43943)

(assert (=> b!4088279 (= res!1670643 (= (size!32729 lt!1462355) (+ (size!32729 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026))))) (size!32729 (_2!24512 (get!14371 lt!1462026))))))))

(declare-fun b!4088278 () Bool)

(assert (=> b!4088278 (= e!2537291 (Cons!43819 (h!49239 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026))))) (++!11488 (t!338270 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026))))) (_2!24512 (get!14371 lt!1462026)))))))

(declare-fun d!1213998 () Bool)

(assert (=> d!1213998 e!2537290))

(declare-fun res!1670644 () Bool)

(assert (=> d!1213998 (=> (not res!1670644) (not e!2537290))))

(assert (=> d!1213998 (= res!1670644 (= (content!6742 lt!1462355) ((_ map or) (content!6742 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026))))) (content!6742 (_2!24512 (get!14371 lt!1462026))))))))

(assert (=> d!1213998 (= lt!1462355 e!2537291)))

(declare-fun c!704750 () Bool)

(assert (=> d!1213998 (= c!704750 ((_ is Nil!43819) (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026))))))))

(assert (=> d!1213998 (= (++!11488 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026)))) (_2!24512 (get!14371 lt!1462026))) lt!1462355)))

(declare-fun b!4088280 () Bool)

(assert (=> b!4088280 (= e!2537290 (or (not (= (_2!24512 (get!14371 lt!1462026)) Nil!43819)) (= lt!1462355 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462026)))))))))

(assert (= (and d!1213998 c!704750) b!4088277))

(assert (= (and d!1213998 (not c!704750)) b!4088278))

(assert (= (and d!1213998 res!1670644) b!4088279))

(assert (= (and b!4088279 res!1670643) b!4088280))

(declare-fun m!4695247 () Bool)

(assert (=> b!4088279 m!4695247))

(assert (=> b!4088279 m!4694439))

(declare-fun m!4695249 () Bool)

(assert (=> b!4088279 m!4695249))

(assert (=> b!4088279 m!4694461))

(declare-fun m!4695251 () Bool)

(assert (=> b!4088278 m!4695251))

(declare-fun m!4695253 () Bool)

(assert (=> d!1213998 m!4695253))

(assert (=> d!1213998 m!4694439))

(declare-fun m!4695255 () Bool)

(assert (=> d!1213998 m!4695255))

(declare-fun m!4695257 () Bool)

(assert (=> d!1213998 m!4695257))

(assert (=> b!4087613 d!1213998))

(assert (=> b!4087613 d!1213906))

(assert (=> b!4087613 d!1213908))

(assert (=> b!4087613 d!1213776))

(declare-fun b!4088281 () Bool)

(declare-fun e!2537294 () Bool)

(declare-fun e!2537292 () Bool)

(assert (=> b!4088281 (= e!2537294 e!2537292)))

(declare-fun res!1670650 () Bool)

(assert (=> b!4088281 (=> (not res!1670650) (not e!2537292))))

(declare-fun lt!1462357 () Option!9488)

(assert (=> b!4088281 (= res!1670650 (matchR!5928 (regex!7082 (h!49241 rules!3870)) (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462357))))))))

(declare-fun b!4088282 () Bool)

(declare-fun res!1670648 () Bool)

(assert (=> b!4088282 (=> (not res!1670648) (not e!2537292))))

(assert (=> b!4088282 (= res!1670648 (< (size!32729 (_2!24512 (get!14371 lt!1462357))) (size!32729 input!3411)))))

(declare-fun b!4088283 () Bool)

(declare-fun res!1670646 () Bool)

(assert (=> b!4088283 (=> (not res!1670646) (not e!2537292))))

(assert (=> b!4088283 (= res!1670646 (= (value!222489 (_1!24512 (get!14371 lt!1462357))) (apply!10265 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462357)))) (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1462357)))))))))

(declare-fun b!4088285 () Bool)

(declare-fun res!1670651 () Bool)

(assert (=> b!4088285 (=> (not res!1670651) (not e!2537292))))

(assert (=> b!4088285 (= res!1670651 (= (rule!10214 (_1!24512 (get!14371 lt!1462357))) (h!49241 rules!3870)))))

(declare-fun b!4088286 () Bool)

(assert (=> b!4088286 (= e!2537292 (= (size!32728 (_1!24512 (get!14371 lt!1462357))) (size!32729 (originalCharacters!7676 (_1!24512 (get!14371 lt!1462357))))))))

(declare-fun b!4088287 () Bool)

(declare-fun e!2537295 () Bool)

(assert (=> b!4088287 (= e!2537295 (matchR!5928 (regex!7082 (h!49241 rules!3870)) (_1!24514 (findLongestMatchInner!1452 (regex!7082 (h!49241 rules!3870)) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)))))))

(declare-fun b!4088288 () Bool)

(declare-fun e!2537293 () Option!9488)

(declare-fun lt!1462360 () tuple2!42760)

(assert (=> b!4088288 (= e!2537293 (Some!9487 (tuple2!42757 (Token!13291 (apply!10265 (transformation!7082 (h!49241 rules!3870)) (seqFromList!5299 (_1!24514 lt!1462360))) (h!49241 rules!3870) (size!32731 (seqFromList!5299 (_1!24514 lt!1462360))) (_1!24514 lt!1462360)) (_2!24514 lt!1462360))))))

(declare-fun lt!1462358 () Unit!63343)

(assert (=> b!4088288 (= lt!1462358 (longestMatchIsAcceptedByMatchOrIsEmpty!1425 (regex!7082 (h!49241 rules!3870)) input!3411))))

(declare-fun res!1670649 () Bool)

(assert (=> b!4088288 (= res!1670649 (isEmpty!26201 (_1!24514 (findLongestMatchInner!1452 (regex!7082 (h!49241 rules!3870)) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)))))))

(assert (=> b!4088288 (=> res!1670649 e!2537295)))

(assert (=> b!4088288 e!2537295))

(declare-fun lt!1462359 () Unit!63343)

(assert (=> b!4088288 (= lt!1462359 lt!1462358)))

(declare-fun lt!1462356 () Unit!63343)

(assert (=> b!4088288 (= lt!1462356 (lemmaSemiInverse!2049 (transformation!7082 (h!49241 rules!3870)) (seqFromList!5299 (_1!24514 lt!1462360))))))

(declare-fun b!4088289 () Bool)

(assert (=> b!4088289 (= e!2537293 None!9487)))

(declare-fun b!4088284 () Bool)

(declare-fun res!1670645 () Bool)

(assert (=> b!4088284 (=> (not res!1670645) (not e!2537292))))

(assert (=> b!4088284 (= res!1670645 (= (++!11488 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462357)))) (_2!24512 (get!14371 lt!1462357))) input!3411))))

(declare-fun d!1214000 () Bool)

(assert (=> d!1214000 e!2537294))

(declare-fun res!1670647 () Bool)

(assert (=> d!1214000 (=> res!1670647 e!2537294)))

(assert (=> d!1214000 (= res!1670647 (isEmpty!26203 lt!1462357))))

(assert (=> d!1214000 (= lt!1462357 e!2537293)))

(declare-fun c!704751 () Bool)

(assert (=> d!1214000 (= c!704751 (isEmpty!26201 (_1!24514 lt!1462360)))))

(assert (=> d!1214000 (= lt!1462360 (findLongestMatch!1365 (regex!7082 (h!49241 rules!3870)) input!3411))))

(assert (=> d!1214000 (ruleValid!3002 thiss!26199 (h!49241 rules!3870))))

(assert (=> d!1214000 (= (maxPrefixOneRule!2945 thiss!26199 (h!49241 rules!3870) input!3411) lt!1462357)))

(assert (= (and d!1214000 c!704751) b!4088289))

(assert (= (and d!1214000 (not c!704751)) b!4088288))

(assert (= (and b!4088288 (not res!1670649)) b!4088287))

(assert (= (and d!1214000 (not res!1670647)) b!4088281))

(assert (= (and b!4088281 res!1670650) b!4088284))

(assert (= (and b!4088284 res!1670645) b!4088282))

(assert (= (and b!4088282 res!1670648) b!4088285))

(assert (= (and b!4088285 res!1670651) b!4088283))

(assert (= (and b!4088283 res!1670646) b!4088286))

(declare-fun m!4695259 () Bool)

(assert (=> b!4088285 m!4695259))

(assert (=> b!4088286 m!4695259))

(declare-fun m!4695261 () Bool)

(assert (=> b!4088286 m!4695261))

(declare-fun m!4695263 () Bool)

(assert (=> d!1214000 m!4695263))

(declare-fun m!4695265 () Bool)

(assert (=> d!1214000 m!4695265))

(declare-fun m!4695267 () Bool)

(assert (=> d!1214000 m!4695267))

(assert (=> d!1214000 m!4694583))

(declare-fun m!4695269 () Bool)

(assert (=> b!4088288 m!4695269))

(declare-fun m!4695271 () Bool)

(assert (=> b!4088288 m!4695271))

(assert (=> b!4088288 m!4694169))

(assert (=> b!4088288 m!4694171))

(declare-fun m!4695273 () Bool)

(assert (=> b!4088288 m!4695273))

(declare-fun m!4695275 () Bool)

(assert (=> b!4088288 m!4695275))

(declare-fun m!4695277 () Bool)

(assert (=> b!4088288 m!4695277))

(assert (=> b!4088288 m!4695275))

(declare-fun m!4695279 () Bool)

(assert (=> b!4088288 m!4695279))

(assert (=> b!4088288 m!4694171))

(assert (=> b!4088288 m!4694169))

(assert (=> b!4088288 m!4695275))

(declare-fun m!4695281 () Bool)

(assert (=> b!4088288 m!4695281))

(assert (=> b!4088288 m!4695275))

(assert (=> b!4088284 m!4695259))

(declare-fun m!4695283 () Bool)

(assert (=> b!4088284 m!4695283))

(assert (=> b!4088284 m!4695283))

(declare-fun m!4695285 () Bool)

(assert (=> b!4088284 m!4695285))

(assert (=> b!4088284 m!4695285))

(declare-fun m!4695287 () Bool)

(assert (=> b!4088284 m!4695287))

(assert (=> b!4088281 m!4695259))

(assert (=> b!4088281 m!4695283))

(assert (=> b!4088281 m!4695283))

(assert (=> b!4088281 m!4695285))

(assert (=> b!4088281 m!4695285))

(declare-fun m!4695289 () Bool)

(assert (=> b!4088281 m!4695289))

(assert (=> b!4088287 m!4694169))

(assert (=> b!4088287 m!4694171))

(assert (=> b!4088287 m!4694169))

(assert (=> b!4088287 m!4694171))

(assert (=> b!4088287 m!4695273))

(declare-fun m!4695291 () Bool)

(assert (=> b!4088287 m!4695291))

(assert (=> b!4088282 m!4695259))

(declare-fun m!4695293 () Bool)

(assert (=> b!4088282 m!4695293))

(assert (=> b!4088282 m!4694171))

(assert (=> b!4088283 m!4695259))

(declare-fun m!4695295 () Bool)

(assert (=> b!4088283 m!4695295))

(assert (=> b!4088283 m!4695295))

(declare-fun m!4695297 () Bool)

(assert (=> b!4088283 m!4695297))

(assert (=> bm!288930 d!1214000))

(declare-fun bs!593203 () Bool)

(declare-fun d!1214002 () Bool)

(assert (= bs!593203 (and d!1214002 d!1213722)))

(declare-fun lambda!127969 () Int)

(assert (=> bs!593203 (= lambda!127969 lambda!127943)))

(declare-fun bs!593204 () Bool)

(assert (= bs!593204 (and d!1214002 d!1213736)))

(assert (=> bs!593204 (= lambda!127969 lambda!127949)))

(declare-fun bs!593205 () Bool)

(assert (= bs!593205 (and d!1214002 d!1213920)))

(assert (=> bs!593205 (= lambda!127969 lambda!127962)))

(assert (=> d!1214002 true))

(declare-fun lt!1462361 () Bool)

(assert (=> d!1214002 (= lt!1462361 (rulesValidInductive!2615 thiss!26199 rules!3870))))

(assert (=> d!1214002 (= lt!1462361 (forall!8409 rules!3870 lambda!127969))))

(assert (=> d!1214002 (= (rulesValid!2774 thiss!26199 rules!3870) lt!1462361)))

(declare-fun bs!593206 () Bool)

(assert (= bs!593206 d!1214002))

(assert (=> bs!593206 m!4694245))

(declare-fun m!4695299 () Bool)

(assert (=> bs!593206 m!4695299))

(assert (=> d!1213592 d!1214002))

(declare-fun d!1214004 () Bool)

(declare-fun lt!1462362 () Int)

(assert (=> d!1214004 (>= lt!1462362 0)))

(declare-fun e!2537296 () Int)

(assert (=> d!1214004 (= lt!1462362 e!2537296)))

(declare-fun c!704752 () Bool)

(assert (=> d!1214004 (= c!704752 ((_ is Nil!43819) (_2!24512 (get!14371 lt!1462026))))))

(assert (=> d!1214004 (= (size!32729 (_2!24512 (get!14371 lt!1462026))) lt!1462362)))

(declare-fun b!4088290 () Bool)

(assert (=> b!4088290 (= e!2537296 0)))

(declare-fun b!4088291 () Bool)

(assert (=> b!4088291 (= e!2537296 (+ 1 (size!32729 (t!338270 (_2!24512 (get!14371 lt!1462026))))))))

(assert (= (and d!1214004 c!704752) b!4088290))

(assert (= (and d!1214004 (not c!704752)) b!4088291))

(declare-fun m!4695301 () Bool)

(assert (=> b!4088291 m!4695301))

(assert (=> b!4087615 d!1214004))

(assert (=> b!4087615 d!1213776))

(assert (=> b!4087615 d!1213880))

(declare-fun d!1214006 () Bool)

(assert (=> d!1214006 (= (seqFromList!5299 (_1!24514 lt!1461954)) (fromListB!2426 (_1!24514 lt!1461954)))))

(declare-fun bs!593207 () Bool)

(assert (= bs!593207 d!1214006))

(declare-fun m!4695303 () Bool)

(assert (=> bs!593207 m!4695303))

(assert (=> b!4087350 d!1214006))

(declare-fun d!1214008 () Bool)

(declare-fun lt!1462365 () Int)

(assert (=> d!1214008 (= lt!1462365 (size!32729 (list!16272 (seqFromList!5299 (_1!24514 lt!1461954)))))))

(declare-fun size!32732 (Conc!13293) Int)

(assert (=> d!1214008 (= lt!1462365 (size!32732 (c!704555 (seqFromList!5299 (_1!24514 lt!1461954)))))))

(assert (=> d!1214008 (= (size!32731 (seqFromList!5299 (_1!24514 lt!1461954))) lt!1462365)))

(declare-fun bs!593208 () Bool)

(assert (= bs!593208 d!1214008))

(assert (=> bs!593208 m!4694175))

(declare-fun m!4695305 () Bool)

(assert (=> bs!593208 m!4695305))

(assert (=> bs!593208 m!4695305))

(declare-fun m!4695307 () Bool)

(assert (=> bs!593208 m!4695307))

(declare-fun m!4695309 () Bool)

(assert (=> bs!593208 m!4695309))

(assert (=> b!4087350 d!1214008))

(declare-fun d!1214010 () Bool)

(assert (=> d!1214010 (= (apply!10265 (transformation!7082 r!4213) (seqFromList!5299 (_1!24514 lt!1461954))) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) (seqFromList!5299 (_1!24514 lt!1461954))))))

(declare-fun b_lambda!119759 () Bool)

(assert (=> (not b_lambda!119759) (not d!1214010)))

(declare-fun t!338412 () Bool)

(declare-fun tb!245689 () Bool)

(assert (=> (and b!4087238 (= (toValue!9666 (transformation!7082 (h!49241 rules!3870))) (toValue!9666 (transformation!7082 r!4213))) t!338412) tb!245689))

(declare-fun result!298096 () Bool)

(assert (=> tb!245689 (= result!298096 (inv!21 (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) (seqFromList!5299 (_1!24514 lt!1461954)))))))

(declare-fun m!4695311 () Bool)

(assert (=> tb!245689 m!4695311))

(assert (=> d!1214010 t!338412))

(declare-fun b_and!314899 () Bool)

(assert (= b_and!314893 (and (=> t!338412 result!298096) b_and!314899)))

(declare-fun t!338414 () Bool)

(declare-fun tb!245691 () Bool)

(assert (=> (and b!4087234 (= (toValue!9666 (transformation!7082 r!4213)) (toValue!9666 (transformation!7082 r!4213))) t!338414) tb!245691))

(declare-fun result!298098 () Bool)

(assert (= result!298098 result!298096))

(assert (=> d!1214010 t!338414))

(declare-fun b_and!314901 () Bool)

(assert (= b_and!314895 (and (=> t!338414 result!298098) b_and!314901)))

(declare-fun tb!245693 () Bool)

(declare-fun t!338416 () Bool)

(assert (=> (and b!4087654 (= (toValue!9666 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toValue!9666 (transformation!7082 r!4213))) t!338416) tb!245693))

(declare-fun result!298100 () Bool)

(assert (= result!298100 result!298096))

(assert (=> d!1214010 t!338416))

(declare-fun b_and!314903 () Bool)

(assert (= b_and!314897 (and (=> t!338416 result!298100) b_and!314903)))

(assert (=> d!1214010 m!4694175))

(declare-fun m!4695313 () Bool)

(assert (=> d!1214010 m!4695313))

(assert (=> b!4087350 d!1214010))

(declare-fun bs!593209 () Bool)

(declare-fun d!1214012 () Bool)

(assert (= bs!593209 (and d!1214012 d!1213628)))

(declare-fun lambda!127970 () Int)

(assert (=> bs!593209 (= lambda!127970 lambda!127937)))

(declare-fun bs!593210 () Bool)

(assert (= bs!593210 (and d!1214012 d!1213732)))

(assert (=> bs!593210 (= lambda!127970 lambda!127946)))

(declare-fun bs!593211 () Bool)

(assert (= bs!593211 (and d!1214012 d!1213938)))

(assert (=> bs!593211 (= (and (= (toChars!9525 (transformation!7082 r!4213)) (toChars!9525 (transformation!7082 (h!49241 rules!3870)))) (= (toValue!9666 (transformation!7082 r!4213)) (toValue!9666 (transformation!7082 (h!49241 rules!3870))))) (= lambda!127970 lambda!127963))))

(declare-fun b!4088292 () Bool)

(declare-fun e!2537298 () Bool)

(assert (=> b!4088292 (= e!2537298 true)))

(assert (=> d!1214012 e!2537298))

(assert (= d!1214012 b!4088292))

(assert (=> b!4088292 (< (dynLambda!18724 order!23013 (toValue!9666 (transformation!7082 r!4213))) (dynLambda!18725 order!23015 lambda!127970))))

(assert (=> b!4088292 (< (dynLambda!18726 order!23017 (toChars!9525 (transformation!7082 r!4213))) (dynLambda!18725 order!23015 lambda!127970))))

(assert (=> d!1214012 (= (list!16272 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) (seqFromList!5299 (_1!24514 lt!1461954))))) (list!16272 (seqFromList!5299 (_1!24514 lt!1461954))))))

(declare-fun lt!1462366 () Unit!63343)

(assert (=> d!1214012 (= lt!1462366 (ForallOf!879 lambda!127970 (seqFromList!5299 (_1!24514 lt!1461954))))))

(assert (=> d!1214012 (= (lemmaSemiInverse!2049 (transformation!7082 r!4213) (seqFromList!5299 (_1!24514 lt!1461954))) lt!1462366)))

(declare-fun b_lambda!119761 () Bool)

(assert (=> (not b_lambda!119761) (not d!1214012)))

(declare-fun t!338418 () Bool)

(declare-fun tb!245695 () Bool)

(assert (=> (and b!4087238 (= (toChars!9525 (transformation!7082 (h!49241 rules!3870))) (toChars!9525 (transformation!7082 r!4213))) t!338418) tb!245695))

(declare-fun e!2537299 () Bool)

(declare-fun b!4088293 () Bool)

(declare-fun tp!1237676 () Bool)

(assert (=> b!4088293 (= e!2537299 (and (inv!58515 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) (seqFromList!5299 (_1!24514 lt!1461954)))))) tp!1237676))))

(declare-fun result!298102 () Bool)

(assert (=> tb!245695 (= result!298102 (and (inv!58516 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) (seqFromList!5299 (_1!24514 lt!1461954))))) e!2537299))))

(assert (= tb!245695 b!4088293))

(declare-fun m!4695315 () Bool)

(assert (=> b!4088293 m!4695315))

(declare-fun m!4695317 () Bool)

(assert (=> tb!245695 m!4695317))

(assert (=> d!1214012 t!338418))

(declare-fun b_and!314905 () Bool)

(assert (= b_and!314867 (and (=> t!338418 result!298102) b_and!314905)))

(declare-fun t!338420 () Bool)

(declare-fun tb!245697 () Bool)

(assert (=> (and b!4087234 (= (toChars!9525 (transformation!7082 r!4213)) (toChars!9525 (transformation!7082 r!4213))) t!338420) tb!245697))

(declare-fun result!298104 () Bool)

(assert (= result!298104 result!298102))

(assert (=> d!1214012 t!338420))

(declare-fun b_and!314907 () Bool)

(assert (= b_and!314869 (and (=> t!338420 result!298104) b_and!314907)))

(declare-fun tb!245699 () Bool)

(declare-fun t!338422 () Bool)

(assert (=> (and b!4087654 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toChars!9525 (transformation!7082 r!4213))) t!338422) tb!245699))

(declare-fun result!298106 () Bool)

(assert (= result!298106 result!298102))

(assert (=> d!1214012 t!338422))

(declare-fun b_and!314909 () Bool)

(assert (= b_and!314871 (and (=> t!338422 result!298106) b_and!314909)))

(declare-fun b_lambda!119763 () Bool)

(assert (=> (not b_lambda!119763) (not d!1214012)))

(assert (=> d!1214012 t!338412))

(declare-fun b_and!314911 () Bool)

(assert (= b_and!314899 (and (=> t!338412 result!298096) b_and!314911)))

(assert (=> d!1214012 t!338414))

(declare-fun b_and!314913 () Bool)

(assert (= b_and!314901 (and (=> t!338414 result!298098) b_and!314913)))

(assert (=> d!1214012 t!338416))

(declare-fun b_and!314915 () Bool)

(assert (= b_and!314903 (and (=> t!338416 result!298100) b_and!314915)))

(assert (=> d!1214012 m!4694175))

(declare-fun m!4695319 () Bool)

(assert (=> d!1214012 m!4695319))

(assert (=> d!1214012 m!4694175))

(assert (=> d!1214012 m!4695305))

(assert (=> d!1214012 m!4695313))

(declare-fun m!4695321 () Bool)

(assert (=> d!1214012 m!4695321))

(assert (=> d!1214012 m!4694175))

(assert (=> d!1214012 m!4695313))

(assert (=> d!1214012 m!4695321))

(declare-fun m!4695323 () Bool)

(assert (=> d!1214012 m!4695323))

(assert (=> b!4087350 d!1214012))

(assert (=> b!4087350 d!1213784))

(declare-fun d!1214014 () Bool)

(assert (=> d!1214014 (= (isEmpty!26201 (_1!24514 (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)))) ((_ is Nil!43819) (_1!24514 (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)))))))

(assert (=> b!4087350 d!1214014))

(assert (=> b!4087350 d!1213880))

(assert (=> b!4087350 d!1213878))

(declare-fun d!1214016 () Bool)

(declare-fun e!2537302 () Bool)

(assert (=> d!1214016 e!2537302))

(declare-fun res!1670654 () Bool)

(assert (=> d!1214016 (=> res!1670654 e!2537302)))

(assert (=> d!1214016 (= res!1670654 (isEmpty!26201 (_1!24514 (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)))))))

(declare-fun lt!1462369 () Unit!63343)

(declare-fun choose!24965 (Regex!11987 List!43943) Unit!63343)

(assert (=> d!1214016 (= lt!1462369 (choose!24965 (regex!7082 r!4213) input!3411))))

(assert (=> d!1214016 (validRegex!5428 (regex!7082 r!4213))))

(assert (=> d!1214016 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1425 (regex!7082 r!4213) input!3411) lt!1462369)))

(declare-fun b!4088296 () Bool)

(assert (=> b!4088296 (= e!2537302 (matchR!5928 (regex!7082 r!4213) (_1!24514 (findLongestMatchInner!1452 (regex!7082 r!4213) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)))))))

(assert (= (and d!1214016 (not res!1670654)) b!4088296))

(assert (=> d!1214016 m!4694169))

(assert (=> d!1214016 m!4694171))

(assert (=> d!1214016 m!4694165))

(assert (=> d!1214016 m!4694213))

(assert (=> d!1214016 m!4694169))

(assert (=> d!1214016 m!4694171))

(assert (=> d!1214016 m!4694173))

(declare-fun m!4695325 () Bool)

(assert (=> d!1214016 m!4695325))

(assert (=> b!4088296 m!4694169))

(assert (=> b!4088296 m!4694171))

(assert (=> b!4088296 m!4694169))

(assert (=> b!4088296 m!4694171))

(assert (=> b!4088296 m!4694173))

(assert (=> b!4088296 m!4694191))

(assert (=> b!4087350 d!1214016))

(declare-fun d!1214018 () Bool)

(declare-fun lt!1462370 () Bool)

(assert (=> d!1214018 (= lt!1462370 (select (content!6741 rules!3870) (rule!10214 (_1!24512 (get!14371 lt!1461973)))))))

(declare-fun e!2537304 () Bool)

(assert (=> d!1214018 (= lt!1462370 e!2537304)))

(declare-fun res!1670656 () Bool)

(assert (=> d!1214018 (=> (not res!1670656) (not e!2537304))))

(assert (=> d!1214018 (= res!1670656 ((_ is Cons!43821) rules!3870))))

(assert (=> d!1214018 (= (contains!8759 rules!3870 (rule!10214 (_1!24512 (get!14371 lt!1461973)))) lt!1462370)))

(declare-fun b!4088297 () Bool)

(declare-fun e!2537303 () Bool)

(assert (=> b!4088297 (= e!2537304 e!2537303)))

(declare-fun res!1670655 () Bool)

(assert (=> b!4088297 (=> res!1670655 e!2537303)))

(assert (=> b!4088297 (= res!1670655 (= (h!49241 rules!3870) (rule!10214 (_1!24512 (get!14371 lt!1461973)))))))

(declare-fun b!4088298 () Bool)

(assert (=> b!4088298 (= e!2537303 (contains!8759 (t!338272 rules!3870) (rule!10214 (_1!24512 (get!14371 lt!1461973)))))))

(assert (= (and d!1214018 res!1670656) b!4088297))

(assert (= (and b!4088297 (not res!1670655)) b!4088298))

(assert (=> d!1214018 m!4694137))

(declare-fun m!4695327 () Bool)

(assert (=> d!1214018 m!4695327))

(declare-fun m!4695329 () Bool)

(assert (=> b!4088298 m!4695329))

(assert (=> b!4087424 d!1214018))

(assert (=> b!4087424 d!1213756))

(declare-fun d!1214020 () Bool)

(assert (=> d!1214020 (= (isEmpty!26201 (originalCharacters!7676 lt!1461905)) ((_ is Nil!43819) (originalCharacters!7676 lt!1461905)))))

(assert (=> d!1213588 d!1214020))

(declare-fun d!1214022 () Bool)

(assert (=> d!1214022 (= (isDefined!7182 lt!1462026) (not (isEmpty!26203 lt!1462026)))))

(declare-fun bs!593212 () Bool)

(assert (= bs!593212 d!1214022))

(assert (=> bs!593212 m!4694457))

(assert (=> b!4087617 d!1214022))

(declare-fun d!1214024 () Bool)

(declare-fun c!704755 () Bool)

(assert (=> d!1214024 (= c!704755 ((_ is Nil!43819) lt!1461939))))

(declare-fun e!2537307 () (InoxSet C!24160))

(assert (=> d!1214024 (= (content!6742 lt!1461939) e!2537307)))

(declare-fun b!4088303 () Bool)

(assert (=> b!4088303 (= e!2537307 ((as const (Array C!24160 Bool)) false))))

(declare-fun b!4088304 () Bool)

(assert (=> b!4088304 (= e!2537307 ((_ map or) (store ((as const (Array C!24160 Bool)) false) (h!49239 lt!1461939) true) (content!6742 (t!338270 lt!1461939))))))

(assert (= (and d!1214024 c!704755) b!4088303))

(assert (= (and d!1214024 (not c!704755)) b!4088304))

(declare-fun m!4695331 () Bool)

(assert (=> b!4088304 m!4695331))

(declare-fun m!4695333 () Bool)

(assert (=> b!4088304 m!4695333))

(assert (=> d!1213604 d!1214024))

(declare-fun d!1214026 () Bool)

(declare-fun c!704756 () Bool)

(assert (=> d!1214026 (= c!704756 ((_ is Nil!43819) p!2988))))

(declare-fun e!2537308 () (InoxSet C!24160))

(assert (=> d!1214026 (= (content!6742 p!2988) e!2537308)))

(declare-fun b!4088305 () Bool)

(assert (=> b!4088305 (= e!2537308 ((as const (Array C!24160 Bool)) false))))

(declare-fun b!4088306 () Bool)

(assert (=> b!4088306 (= e!2537308 ((_ map or) (store ((as const (Array C!24160 Bool)) false) (h!49239 p!2988) true) (content!6742 (t!338270 p!2988))))))

(assert (= (and d!1214026 c!704756) b!4088305))

(assert (= (and d!1214026 (not c!704756)) b!4088306))

(declare-fun m!4695335 () Bool)

(assert (=> b!4088306 m!4695335))

(assert (=> b!4088306 m!4695231))

(assert (=> d!1213604 d!1214026))

(declare-fun d!1214028 () Bool)

(declare-fun c!704757 () Bool)

(assert (=> d!1214028 (= c!704757 ((_ is Nil!43819) suffix!1518))))

(declare-fun e!2537309 () (InoxSet C!24160))

(assert (=> d!1214028 (= (content!6742 suffix!1518) e!2537309)))

(declare-fun b!4088307 () Bool)

(assert (=> b!4088307 (= e!2537309 ((as const (Array C!24160 Bool)) false))))

(declare-fun b!4088308 () Bool)

(assert (=> b!4088308 (= e!2537309 ((_ map or) (store ((as const (Array C!24160 Bool)) false) (h!49239 suffix!1518) true) (content!6742 (t!338270 suffix!1518))))))

(assert (= (and d!1214028 c!704757) b!4088307))

(assert (= (and d!1214028 (not c!704757)) b!4088308))

(declare-fun m!4695337 () Bool)

(assert (=> b!4088308 m!4695337))

(declare-fun m!4695339 () Bool)

(assert (=> b!4088308 m!4695339))

(assert (=> d!1213604 d!1214028))

(declare-fun d!1214030 () Bool)

(declare-fun e!2537316 () Bool)

(assert (=> d!1214030 e!2537316))

(declare-fun c!704760 () Bool)

(assert (=> d!1214030 (= c!704760 ((_ is EmptyExpr!11987) (regex!7082 r!4213)))))

(declare-fun lt!1462371 () Bool)

(declare-fun e!2537312 () Bool)

(assert (=> d!1214030 (= lt!1462371 e!2537312)))

(declare-fun c!704758 () Bool)

(assert (=> d!1214030 (= c!704758 (isEmpty!26201 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951))))))))

(assert (=> d!1214030 (validRegex!5428 (regex!7082 r!4213))))

(assert (=> d!1214030 (= (matchR!5928 (regex!7082 r!4213) (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951))))) lt!1462371)))

(declare-fun b!4088309 () Bool)

(declare-fun e!2537313 () Bool)

(assert (=> b!4088309 (= e!2537313 (not lt!1462371))))

(declare-fun b!4088310 () Bool)

(declare-fun e!2537310 () Bool)

(assert (=> b!4088310 (= e!2537310 (not (= (head!8639 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951))))) (c!704554 (regex!7082 r!4213)))))))

(declare-fun b!4088311 () Bool)

(assert (=> b!4088311 (= e!2537316 e!2537313)))

(declare-fun c!704759 () Bool)

(assert (=> b!4088311 (= c!704759 ((_ is EmptyLang!11987) (regex!7082 r!4213)))))

(declare-fun b!4088312 () Bool)

(declare-fun res!1670660 () Bool)

(declare-fun e!2537311 () Bool)

(assert (=> b!4088312 (=> res!1670660 e!2537311)))

(assert (=> b!4088312 (= res!1670660 (not ((_ is ElementMatch!11987) (regex!7082 r!4213))))))

(assert (=> b!4088312 (= e!2537313 e!2537311)))

(declare-fun b!4088313 () Bool)

(declare-fun res!1670664 () Bool)

(assert (=> b!4088313 (=> res!1670664 e!2537310)))

(assert (=> b!4088313 (= res!1670664 (not (isEmpty!26201 (tail!6373 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951))))))))))

(declare-fun b!4088314 () Bool)

(declare-fun e!2537315 () Bool)

(assert (=> b!4088314 (= e!2537315 (= (head!8639 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951))))) (c!704554 (regex!7082 r!4213))))))

(declare-fun b!4088315 () Bool)

(declare-fun call!289028 () Bool)

(assert (=> b!4088315 (= e!2537316 (= lt!1462371 call!289028))))

(declare-fun b!4088316 () Bool)

(declare-fun res!1670658 () Bool)

(assert (=> b!4088316 (=> res!1670658 e!2537311)))

(assert (=> b!4088316 (= res!1670658 e!2537315)))

(declare-fun res!1670662 () Bool)

(assert (=> b!4088316 (=> (not res!1670662) (not e!2537315))))

(assert (=> b!4088316 (= res!1670662 lt!1462371)))

(declare-fun bm!289023 () Bool)

(assert (=> bm!289023 (= call!289028 (isEmpty!26201 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951))))))))

(declare-fun b!4088317 () Bool)

(declare-fun res!1670657 () Bool)

(assert (=> b!4088317 (=> (not res!1670657) (not e!2537315))))

(assert (=> b!4088317 (= res!1670657 (isEmpty!26201 (tail!6373 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951)))))))))

(declare-fun b!4088318 () Bool)

(declare-fun e!2537314 () Bool)

(assert (=> b!4088318 (= e!2537311 e!2537314)))

(declare-fun res!1670659 () Bool)

(assert (=> b!4088318 (=> (not res!1670659) (not e!2537314))))

(assert (=> b!4088318 (= res!1670659 (not lt!1462371))))

(declare-fun b!4088319 () Bool)

(declare-fun res!1670663 () Bool)

(assert (=> b!4088319 (=> (not res!1670663) (not e!2537315))))

(assert (=> b!4088319 (= res!1670663 (not call!289028))))

(declare-fun b!4088320 () Bool)

(assert (=> b!4088320 (= e!2537314 e!2537310)))

(declare-fun res!1670661 () Bool)

(assert (=> b!4088320 (=> res!1670661 e!2537310)))

(assert (=> b!4088320 (= res!1670661 call!289028)))

(declare-fun b!4088321 () Bool)

(assert (=> b!4088321 (= e!2537312 (nullable!4228 (regex!7082 r!4213)))))

(declare-fun b!4088322 () Bool)

(assert (=> b!4088322 (= e!2537312 (matchR!5928 (derivativeStep!3629 (regex!7082 r!4213) (head!8639 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951)))))) (tail!6373 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1461951)))))))))

(assert (= (and d!1214030 c!704758) b!4088321))

(assert (= (and d!1214030 (not c!704758)) b!4088322))

(assert (= (and d!1214030 c!704760) b!4088315))

(assert (= (and d!1214030 (not c!704760)) b!4088311))

(assert (= (and b!4088311 c!704759) b!4088309))

(assert (= (and b!4088311 (not c!704759)) b!4088312))

(assert (= (and b!4088312 (not res!1670660)) b!4088316))

(assert (= (and b!4088316 res!1670662) b!4088319))

(assert (= (and b!4088319 res!1670663) b!4088317))

(assert (= (and b!4088317 res!1670657) b!4088314))

(assert (= (and b!4088316 (not res!1670658)) b!4088318))

(assert (= (and b!4088318 res!1670659) b!4088320))

(assert (= (and b!4088320 (not res!1670661)) b!4088313))

(assert (= (and b!4088313 (not res!1670664)) b!4088310))

(assert (= (or b!4088315 b!4088319 b!4088320) bm!289023))

(assert (=> b!4088310 m!4694185))

(declare-fun m!4695341 () Bool)

(assert (=> b!4088310 m!4695341))

(assert (=> bm!289023 m!4694185))

(declare-fun m!4695343 () Bool)

(assert (=> bm!289023 m!4695343))

(assert (=> b!4088317 m!4694185))

(declare-fun m!4695345 () Bool)

(assert (=> b!4088317 m!4695345))

(assert (=> b!4088317 m!4695345))

(declare-fun m!4695347 () Bool)

(assert (=> b!4088317 m!4695347))

(assert (=> b!4088322 m!4694185))

(assert (=> b!4088322 m!4695341))

(assert (=> b!4088322 m!4695341))

(declare-fun m!4695349 () Bool)

(assert (=> b!4088322 m!4695349))

(assert (=> b!4088322 m!4694185))

(assert (=> b!4088322 m!4695345))

(assert (=> b!4088322 m!4695349))

(assert (=> b!4088322 m!4695345))

(declare-fun m!4695351 () Bool)

(assert (=> b!4088322 m!4695351))

(assert (=> d!1214030 m!4694185))

(assert (=> d!1214030 m!4695343))

(assert (=> d!1214030 m!4694213))

(assert (=> b!4088321 m!4694215))

(assert (=> b!4088313 m!4694185))

(assert (=> b!4088313 m!4695345))

(assert (=> b!4088313 m!4695345))

(assert (=> b!4088313 m!4695347))

(assert (=> b!4088314 m!4694185))

(assert (=> b!4088314 m!4695341))

(assert (=> b!4087343 d!1214030))

(assert (=> b!4087343 d!1213926))

(assert (=> b!4087343 d!1213928))

(assert (=> b!4087343 d!1213904))

(assert (=> d!1213614 d!1213606))

(assert (=> d!1213614 d!1213972))

(assert (=> d!1213676 d!1213674))

(declare-fun d!1214032 () Bool)

(assert (=> d!1214032 (rulesInvariant!6014 thiss!26199 (t!338272 rules!3870))))

(assert (=> d!1214032 true))

(declare-fun _$66!584 () Unit!63343)

(assert (=> d!1214032 (= (choose!24960 thiss!26199 (h!49241 rules!3870) (t!338272 rules!3870)) _$66!584)))

(declare-fun bs!593213 () Bool)

(assert (= bs!593213 d!1214032))

(assert (=> bs!593213 m!4694027))

(assert (=> d!1213676 d!1214032))

(declare-fun d!1214034 () Bool)

(declare-fun res!1670665 () Bool)

(declare-fun e!2537317 () Bool)

(assert (=> d!1214034 (=> (not res!1670665) (not e!2537317))))

(assert (=> d!1214034 (= res!1670665 (rulesValid!2774 thiss!26199 (Cons!43821 (h!49241 rules!3870) (t!338272 rules!3870))))))

(assert (=> d!1214034 (= (rulesInvariant!6014 thiss!26199 (Cons!43821 (h!49241 rules!3870) (t!338272 rules!3870))) e!2537317)))

(declare-fun b!4088323 () Bool)

(assert (=> b!4088323 (= e!2537317 (noDuplicateTag!2775 thiss!26199 (Cons!43821 (h!49241 rules!3870) (t!338272 rules!3870)) Nil!43823))))

(assert (= (and d!1214034 res!1670665) b!4088323))

(declare-fun m!4695353 () Bool)

(assert (=> d!1214034 m!4695353))

(declare-fun m!4695355 () Bool)

(assert (=> b!4088323 m!4695355))

(assert (=> d!1213676 d!1214034))

(declare-fun b!4088324 () Bool)

(declare-fun e!2537318 () Option!9488)

(declare-fun call!289029 () Option!9488)

(assert (=> b!4088324 (= e!2537318 call!289029)))

(declare-fun b!4088325 () Bool)

(declare-fun res!1670666 () Bool)

(declare-fun e!2537320 () Bool)

(assert (=> b!4088325 (=> (not res!1670666) (not e!2537320))))

(declare-fun lt!1462374 () Option!9488)

(assert (=> b!4088325 (= res!1670666 (= (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462374)))) (originalCharacters!7676 (_1!24512 (get!14371 lt!1462374)))))))

(declare-fun b!4088326 () Bool)

(declare-fun lt!1462376 () Option!9488)

(declare-fun lt!1462373 () Option!9488)

(assert (=> b!4088326 (= e!2537318 (ite (and ((_ is None!9487) lt!1462376) ((_ is None!9487) lt!1462373)) None!9487 (ite ((_ is None!9487) lt!1462373) lt!1462376 (ite ((_ is None!9487) lt!1462376) lt!1462373 (ite (>= (size!32728 (_1!24512 (v!39965 lt!1462376))) (size!32728 (_1!24512 (v!39965 lt!1462373)))) lt!1462376 lt!1462373)))))))

(assert (=> b!4088326 (= lt!1462376 call!289029)))

(assert (=> b!4088326 (= lt!1462373 (maxPrefix!3961 thiss!26199 (t!338272 (t!338272 (t!338272 rules!3870))) input!3411))))

(declare-fun b!4088327 () Bool)

(declare-fun res!1670671 () Bool)

(assert (=> b!4088327 (=> (not res!1670671) (not e!2537320))))

(assert (=> b!4088327 (= res!1670671 (matchR!5928 (regex!7082 (rule!10214 (_1!24512 (get!14371 lt!1462374)))) (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462374))))))))

(declare-fun bm!289024 () Bool)

(assert (=> bm!289024 (= call!289029 (maxPrefixOneRule!2945 thiss!26199 (h!49241 (t!338272 (t!338272 rules!3870))) input!3411))))

(declare-fun b!4088329 () Bool)

(assert (=> b!4088329 (= e!2537320 (contains!8759 (t!338272 (t!338272 rules!3870)) (rule!10214 (_1!24512 (get!14371 lt!1462374)))))))

(declare-fun b!4088330 () Bool)

(declare-fun res!1670669 () Bool)

(assert (=> b!4088330 (=> (not res!1670669) (not e!2537320))))

(assert (=> b!4088330 (= res!1670669 (< (size!32729 (_2!24512 (get!14371 lt!1462374))) (size!32729 input!3411)))))

(declare-fun d!1214036 () Bool)

(declare-fun e!2537319 () Bool)

(assert (=> d!1214036 e!2537319))

(declare-fun res!1670667 () Bool)

(assert (=> d!1214036 (=> res!1670667 e!2537319)))

(assert (=> d!1214036 (= res!1670667 (isEmpty!26203 lt!1462374))))

(assert (=> d!1214036 (= lt!1462374 e!2537318)))

(declare-fun c!704761 () Bool)

(assert (=> d!1214036 (= c!704761 (and ((_ is Cons!43821) (t!338272 (t!338272 rules!3870))) ((_ is Nil!43821) (t!338272 (t!338272 (t!338272 rules!3870))))))))

(declare-fun lt!1462375 () Unit!63343)

(declare-fun lt!1462372 () Unit!63343)

(assert (=> d!1214036 (= lt!1462375 lt!1462372)))

(assert (=> d!1214036 (isPrefix!4133 input!3411 input!3411)))

(assert (=> d!1214036 (= lt!1462372 (lemmaIsPrefixRefl!2684 input!3411 input!3411))))

(assert (=> d!1214036 (rulesValidInductive!2615 thiss!26199 (t!338272 (t!338272 rules!3870)))))

(assert (=> d!1214036 (= (maxPrefix!3961 thiss!26199 (t!338272 (t!338272 rules!3870)) input!3411) lt!1462374)))

(declare-fun b!4088328 () Bool)

(declare-fun res!1670668 () Bool)

(assert (=> b!4088328 (=> (not res!1670668) (not e!2537320))))

(assert (=> b!4088328 (= res!1670668 (= (++!11488 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462374)))) (_2!24512 (get!14371 lt!1462374))) input!3411))))

(declare-fun b!4088331 () Bool)

(declare-fun res!1670672 () Bool)

(assert (=> b!4088331 (=> (not res!1670672) (not e!2537320))))

(assert (=> b!4088331 (= res!1670672 (= (value!222489 (_1!24512 (get!14371 lt!1462374))) (apply!10265 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462374)))) (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1462374)))))))))

(declare-fun b!4088332 () Bool)

(assert (=> b!4088332 (= e!2537319 e!2537320)))

(declare-fun res!1670670 () Bool)

(assert (=> b!4088332 (=> (not res!1670670) (not e!2537320))))

(assert (=> b!4088332 (= res!1670670 (isDefined!7182 lt!1462374))))

(assert (= (and d!1214036 c!704761) b!4088324))

(assert (= (and d!1214036 (not c!704761)) b!4088326))

(assert (= (or b!4088324 b!4088326) bm!289024))

(assert (= (and d!1214036 (not res!1670667)) b!4088332))

(assert (= (and b!4088332 res!1670670) b!4088325))

(assert (= (and b!4088325 res!1670666) b!4088330))

(assert (= (and b!4088330 res!1670669) b!4088328))

(assert (= (and b!4088328 res!1670668) b!4088331))

(assert (= (and b!4088331 res!1670672) b!4088327))

(assert (= (and b!4088327 res!1670671) b!4088329))

(declare-fun m!4695357 () Bool)

(assert (=> b!4088325 m!4695357))

(declare-fun m!4695359 () Bool)

(assert (=> b!4088325 m!4695359))

(assert (=> b!4088325 m!4695359))

(declare-fun m!4695361 () Bool)

(assert (=> b!4088325 m!4695361))

(assert (=> b!4088329 m!4695357))

(declare-fun m!4695363 () Bool)

(assert (=> b!4088329 m!4695363))

(assert (=> b!4088328 m!4695357))

(assert (=> b!4088328 m!4695359))

(assert (=> b!4088328 m!4695359))

(assert (=> b!4088328 m!4695361))

(assert (=> b!4088328 m!4695361))

(declare-fun m!4695365 () Bool)

(assert (=> b!4088328 m!4695365))

(assert (=> b!4088331 m!4695357))

(declare-fun m!4695367 () Bool)

(assert (=> b!4088331 m!4695367))

(assert (=> b!4088331 m!4695367))

(declare-fun m!4695369 () Bool)

(assert (=> b!4088331 m!4695369))

(declare-fun m!4695371 () Bool)

(assert (=> b!4088326 m!4695371))

(assert (=> b!4088327 m!4695357))

(assert (=> b!4088327 m!4695359))

(assert (=> b!4088327 m!4695359))

(assert (=> b!4088327 m!4695361))

(assert (=> b!4088327 m!4695361))

(declare-fun m!4695373 () Bool)

(assert (=> b!4088327 m!4695373))

(declare-fun m!4695375 () Bool)

(assert (=> b!4088332 m!4695375))

(declare-fun m!4695377 () Bool)

(assert (=> bm!289024 m!4695377))

(declare-fun m!4695379 () Bool)

(assert (=> d!1214036 m!4695379))

(assert (=> d!1214036 m!4694241))

(assert (=> d!1214036 m!4694243))

(assert (=> d!1214036 m!4695077))

(assert (=> b!4088330 m!4695357))

(declare-fun m!4695381 () Bool)

(assert (=> b!4088330 m!4695381))

(assert (=> b!4088330 m!4694171))

(assert (=> b!4087611 d!1214036))

(assert (=> b!4087345 d!1213904))

(declare-fun d!1214038 () Bool)

(assert (=> d!1214038 (= (apply!10265 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461951)))) (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1461951))))) (dynLambda!18723 (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461951))))) (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1461951))))))))

(declare-fun b_lambda!119765 () Bool)

(assert (=> (not b_lambda!119765) (not d!1214038)))

(declare-fun t!338424 () Bool)

(declare-fun tb!245701 () Bool)

(assert (=> (and b!4087238 (= (toValue!9666 (transformation!7082 (h!49241 rules!3870))) (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461951)))))) t!338424) tb!245701))

(declare-fun result!298108 () Bool)

(assert (=> tb!245701 (= result!298108 (inv!21 (dynLambda!18723 (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461951))))) (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1461951)))))))))

(declare-fun m!4695383 () Bool)

(assert (=> tb!245701 m!4695383))

(assert (=> d!1214038 t!338424))

(declare-fun b_and!314917 () Bool)

(assert (= b_and!314911 (and (=> t!338424 result!298108) b_and!314917)))

(declare-fun tb!245703 () Bool)

(declare-fun t!338426 () Bool)

(assert (=> (and b!4087234 (= (toValue!9666 (transformation!7082 r!4213)) (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461951)))))) t!338426) tb!245703))

(declare-fun result!298110 () Bool)

(assert (= result!298110 result!298108))

(assert (=> d!1214038 t!338426))

(declare-fun b_and!314919 () Bool)

(assert (= b_and!314913 (and (=> t!338426 result!298110) b_and!314919)))

(declare-fun tb!245705 () Bool)

(declare-fun t!338428 () Bool)

(assert (=> (and b!4087654 (= (toValue!9666 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461951)))))) t!338428) tb!245705))

(declare-fun result!298112 () Bool)

(assert (= result!298112 result!298108))

(assert (=> d!1214038 t!338428))

(declare-fun b_and!314921 () Bool)

(assert (= b_and!314915 (and (=> t!338428 result!298112) b_and!314921)))

(assert (=> d!1214038 m!4694195))

(declare-fun m!4695385 () Bool)

(assert (=> d!1214038 m!4695385))

(assert (=> b!4087345 d!1214038))

(declare-fun d!1214040 () Bool)

(assert (=> d!1214040 (= (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1461951)))) (fromListB!2426 (originalCharacters!7676 (_1!24512 (get!14371 lt!1461951)))))))

(declare-fun bs!593214 () Bool)

(assert (= bs!593214 d!1214040))

(declare-fun m!4695387 () Bool)

(assert (=> bs!593214 m!4695387))

(assert (=> b!4087345 d!1214040))

(declare-fun d!1214042 () Bool)

(assert (=> d!1214042 (= (list!16272 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907))) (list!16274 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907)))))))

(declare-fun bs!593215 () Bool)

(assert (= bs!593215 d!1214042))

(declare-fun m!4695389 () Bool)

(assert (=> bs!593215 m!4695389))

(assert (=> d!1213628 d!1214042))

(declare-fun d!1214044 () Bool)

(assert (=> d!1214044 (= (list!16272 lt!1461907) (list!16274 (c!704555 lt!1461907)))))

(declare-fun bs!593216 () Bool)

(assert (= bs!593216 d!1214044))

(declare-fun m!4695391 () Bool)

(assert (=> bs!593216 m!4695391))

(assert (=> d!1213628 d!1214044))

(declare-fun d!1214046 () Bool)

(declare-fun dynLambda!18730 (Int BalanceConc!26180) Bool)

(assert (=> d!1214046 (dynLambda!18730 lambda!127937 lt!1461907)))

(declare-fun lt!1462379 () Unit!63343)

(declare-fun choose!24967 (Int BalanceConc!26180) Unit!63343)

(assert (=> d!1214046 (= lt!1462379 (choose!24967 lambda!127937 lt!1461907))))

(assert (=> d!1214046 (Forall!1513 lambda!127937)))

(assert (=> d!1214046 (= (ForallOf!879 lambda!127937 lt!1461907) lt!1462379)))

(declare-fun b_lambda!119767 () Bool)

(assert (=> (not b_lambda!119767) (not d!1214046)))

(declare-fun bs!593217 () Bool)

(assert (= bs!593217 d!1214046))

(declare-fun m!4695393 () Bool)

(assert (=> bs!593217 m!4695393))

(declare-fun m!4695395 () Bool)

(assert (=> bs!593217 m!4695395))

(declare-fun m!4695397 () Bool)

(assert (=> bs!593217 m!4695397))

(assert (=> d!1213628 d!1214046))

(assert (=> b!4087347 d!1213904))

(declare-fun d!1214048 () Bool)

(assert (=> d!1214048 (= (list!16272 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905))) (list!16274 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905)))))))

(declare-fun bs!593218 () Bool)

(assert (= bs!593218 d!1214048))

(declare-fun m!4695399 () Bool)

(assert (=> bs!593218 m!4695399))

(assert (=> b!4087284 d!1214048))

(declare-fun b!4088333 () Bool)

(declare-fun e!2537324 () Bool)

(declare-fun e!2537322 () Bool)

(assert (=> b!4088333 (= e!2537324 e!2537322)))

(declare-fun res!1670678 () Bool)

(assert (=> b!4088333 (=> (not res!1670678) (not e!2537322))))

(declare-fun lt!1462381 () Option!9488)

(assert (=> b!4088333 (= res!1670678 (matchR!5928 (regex!7082 (h!49241 (t!338272 rules!3870))) (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462381))))))))

(declare-fun b!4088334 () Bool)

(declare-fun res!1670676 () Bool)

(assert (=> b!4088334 (=> (not res!1670676) (not e!2537322))))

(assert (=> b!4088334 (= res!1670676 (< (size!32729 (_2!24512 (get!14371 lt!1462381))) (size!32729 input!3411)))))

(declare-fun b!4088335 () Bool)

(declare-fun res!1670674 () Bool)

(assert (=> b!4088335 (=> (not res!1670674) (not e!2537322))))

(assert (=> b!4088335 (= res!1670674 (= (value!222489 (_1!24512 (get!14371 lt!1462381))) (apply!10265 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462381)))) (seqFromList!5299 (originalCharacters!7676 (_1!24512 (get!14371 lt!1462381)))))))))

(declare-fun b!4088337 () Bool)

(declare-fun res!1670679 () Bool)

(assert (=> b!4088337 (=> (not res!1670679) (not e!2537322))))

(assert (=> b!4088337 (= res!1670679 (= (rule!10214 (_1!24512 (get!14371 lt!1462381))) (h!49241 (t!338272 rules!3870))))))

(declare-fun b!4088338 () Bool)

(assert (=> b!4088338 (= e!2537322 (= (size!32728 (_1!24512 (get!14371 lt!1462381))) (size!32729 (originalCharacters!7676 (_1!24512 (get!14371 lt!1462381))))))))

(declare-fun b!4088339 () Bool)

(declare-fun e!2537325 () Bool)

(assert (=> b!4088339 (= e!2537325 (matchR!5928 (regex!7082 (h!49241 (t!338272 rules!3870))) (_1!24514 (findLongestMatchInner!1452 (regex!7082 (h!49241 (t!338272 rules!3870))) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)))))))

(declare-fun b!4088340 () Bool)

(declare-fun e!2537323 () Option!9488)

(declare-fun lt!1462384 () tuple2!42760)

(assert (=> b!4088340 (= e!2537323 (Some!9487 (tuple2!42757 (Token!13291 (apply!10265 (transformation!7082 (h!49241 (t!338272 rules!3870))) (seqFromList!5299 (_1!24514 lt!1462384))) (h!49241 (t!338272 rules!3870)) (size!32731 (seqFromList!5299 (_1!24514 lt!1462384))) (_1!24514 lt!1462384)) (_2!24514 lt!1462384))))))

(declare-fun lt!1462382 () Unit!63343)

(assert (=> b!4088340 (= lt!1462382 (longestMatchIsAcceptedByMatchOrIsEmpty!1425 (regex!7082 (h!49241 (t!338272 rules!3870))) input!3411))))

(declare-fun res!1670677 () Bool)

(assert (=> b!4088340 (= res!1670677 (isEmpty!26201 (_1!24514 (findLongestMatchInner!1452 (regex!7082 (h!49241 (t!338272 rules!3870))) Nil!43819 (size!32729 Nil!43819) input!3411 input!3411 (size!32729 input!3411)))))))

(assert (=> b!4088340 (=> res!1670677 e!2537325)))

(assert (=> b!4088340 e!2537325))

(declare-fun lt!1462383 () Unit!63343)

(assert (=> b!4088340 (= lt!1462383 lt!1462382)))

(declare-fun lt!1462380 () Unit!63343)

(assert (=> b!4088340 (= lt!1462380 (lemmaSemiInverse!2049 (transformation!7082 (h!49241 (t!338272 rules!3870))) (seqFromList!5299 (_1!24514 lt!1462384))))))

(declare-fun b!4088341 () Bool)

(assert (=> b!4088341 (= e!2537323 None!9487)))

(declare-fun b!4088336 () Bool)

(declare-fun res!1670673 () Bool)

(assert (=> b!4088336 (=> (not res!1670673) (not e!2537322))))

(assert (=> b!4088336 (= res!1670673 (= (++!11488 (list!16272 (charsOf!4846 (_1!24512 (get!14371 lt!1462381)))) (_2!24512 (get!14371 lt!1462381))) input!3411))))

(declare-fun d!1214050 () Bool)

(assert (=> d!1214050 e!2537324))

(declare-fun res!1670675 () Bool)

(assert (=> d!1214050 (=> res!1670675 e!2537324)))

(assert (=> d!1214050 (= res!1670675 (isEmpty!26203 lt!1462381))))

(assert (=> d!1214050 (= lt!1462381 e!2537323)))

(declare-fun c!704762 () Bool)

(assert (=> d!1214050 (= c!704762 (isEmpty!26201 (_1!24514 lt!1462384)))))

(assert (=> d!1214050 (= lt!1462384 (findLongestMatch!1365 (regex!7082 (h!49241 (t!338272 rules!3870))) input!3411))))

(assert (=> d!1214050 (ruleValid!3002 thiss!26199 (h!49241 (t!338272 rules!3870)))))

(assert (=> d!1214050 (= (maxPrefixOneRule!2945 thiss!26199 (h!49241 (t!338272 rules!3870)) input!3411) lt!1462381)))

(assert (= (and d!1214050 c!704762) b!4088341))

(assert (= (and d!1214050 (not c!704762)) b!4088340))

(assert (= (and b!4088340 (not res!1670677)) b!4088339))

(assert (= (and d!1214050 (not res!1670675)) b!4088333))

(assert (= (and b!4088333 res!1670678) b!4088336))

(assert (= (and b!4088336 res!1670673) b!4088334))

(assert (= (and b!4088334 res!1670676) b!4088337))

(assert (= (and b!4088337 res!1670679) b!4088335))

(assert (= (and b!4088335 res!1670674) b!4088338))

(declare-fun m!4695401 () Bool)

(assert (=> b!4088337 m!4695401))

(assert (=> b!4088338 m!4695401))

(declare-fun m!4695403 () Bool)

(assert (=> b!4088338 m!4695403))

(declare-fun m!4695405 () Bool)

(assert (=> d!1214050 m!4695405))

(declare-fun m!4695407 () Bool)

(assert (=> d!1214050 m!4695407))

(declare-fun m!4695409 () Bool)

(assert (=> d!1214050 m!4695409))

(assert (=> d!1214050 m!4695075))

(declare-fun m!4695411 () Bool)

(assert (=> b!4088340 m!4695411))

(declare-fun m!4695413 () Bool)

(assert (=> b!4088340 m!4695413))

(assert (=> b!4088340 m!4694169))

(assert (=> b!4088340 m!4694171))

(declare-fun m!4695415 () Bool)

(assert (=> b!4088340 m!4695415))

(declare-fun m!4695417 () Bool)

(assert (=> b!4088340 m!4695417))

(declare-fun m!4695419 () Bool)

(assert (=> b!4088340 m!4695419))

(assert (=> b!4088340 m!4695417))

(declare-fun m!4695421 () Bool)

(assert (=> b!4088340 m!4695421))

(assert (=> b!4088340 m!4694171))

(assert (=> b!4088340 m!4694169))

(assert (=> b!4088340 m!4695417))

(declare-fun m!4695423 () Bool)

(assert (=> b!4088340 m!4695423))

(assert (=> b!4088340 m!4695417))

(assert (=> b!4088336 m!4695401))

(declare-fun m!4695425 () Bool)

(assert (=> b!4088336 m!4695425))

(assert (=> b!4088336 m!4695425))

(declare-fun m!4695427 () Bool)

(assert (=> b!4088336 m!4695427))

(assert (=> b!4088336 m!4695427))

(declare-fun m!4695429 () Bool)

(assert (=> b!4088336 m!4695429))

(assert (=> b!4088333 m!4695401))

(assert (=> b!4088333 m!4695425))

(assert (=> b!4088333 m!4695425))

(assert (=> b!4088333 m!4695427))

(assert (=> b!4088333 m!4695427))

(declare-fun m!4695431 () Bool)

(assert (=> b!4088333 m!4695431))

(assert (=> b!4088339 m!4694169))

(assert (=> b!4088339 m!4694171))

(assert (=> b!4088339 m!4694169))

(assert (=> b!4088339 m!4694171))

(assert (=> b!4088339 m!4695415))

(declare-fun m!4695433 () Bool)

(assert (=> b!4088339 m!4695433))

(assert (=> b!4088334 m!4695401))

(declare-fun m!4695435 () Bool)

(assert (=> b!4088334 m!4695435))

(assert (=> b!4088334 m!4694171))

(assert (=> b!4088335 m!4695401))

(declare-fun m!4695437 () Bool)

(assert (=> b!4088335 m!4695437))

(assert (=> b!4088335 m!4695437))

(declare-fun m!4695439 () Bool)

(assert (=> b!4088335 m!4695439))

(assert (=> bm!288935 d!1214050))

(declare-fun d!1214052 () Bool)

(declare-fun e!2537332 () Bool)

(assert (=> d!1214052 e!2537332))

(declare-fun c!704765 () Bool)

(assert (=> d!1214052 (= c!704765 ((_ is EmptyExpr!11987) (derivativeStep!3629 (regex!7082 r!4213) (head!8639 p!2988))))))

(declare-fun lt!1462385 () Bool)

(declare-fun e!2537328 () Bool)

(assert (=> d!1214052 (= lt!1462385 e!2537328)))

(declare-fun c!704763 () Bool)

(assert (=> d!1214052 (= c!704763 (isEmpty!26201 (tail!6373 p!2988)))))

(assert (=> d!1214052 (validRegex!5428 (derivativeStep!3629 (regex!7082 r!4213) (head!8639 p!2988)))))

(assert (=> d!1214052 (= (matchR!5928 (derivativeStep!3629 (regex!7082 r!4213) (head!8639 p!2988)) (tail!6373 p!2988)) lt!1462385)))

(declare-fun b!4088342 () Bool)

(declare-fun e!2537329 () Bool)

(assert (=> b!4088342 (= e!2537329 (not lt!1462385))))

(declare-fun b!4088343 () Bool)

(declare-fun e!2537326 () Bool)

(assert (=> b!4088343 (= e!2537326 (not (= (head!8639 (tail!6373 p!2988)) (c!704554 (derivativeStep!3629 (regex!7082 r!4213) (head!8639 p!2988))))))))

(declare-fun b!4088344 () Bool)

(assert (=> b!4088344 (= e!2537332 e!2537329)))

(declare-fun c!704764 () Bool)

(assert (=> b!4088344 (= c!704764 ((_ is EmptyLang!11987) (derivativeStep!3629 (regex!7082 r!4213) (head!8639 p!2988))))))

(declare-fun b!4088345 () Bool)

(declare-fun res!1670683 () Bool)

(declare-fun e!2537327 () Bool)

(assert (=> b!4088345 (=> res!1670683 e!2537327)))

(assert (=> b!4088345 (= res!1670683 (not ((_ is ElementMatch!11987) (derivativeStep!3629 (regex!7082 r!4213) (head!8639 p!2988)))))))

(assert (=> b!4088345 (= e!2537329 e!2537327)))

(declare-fun b!4088346 () Bool)

(declare-fun res!1670687 () Bool)

(assert (=> b!4088346 (=> res!1670687 e!2537326)))

(assert (=> b!4088346 (= res!1670687 (not (isEmpty!26201 (tail!6373 (tail!6373 p!2988)))))))

(declare-fun b!4088347 () Bool)

(declare-fun e!2537331 () Bool)

(assert (=> b!4088347 (= e!2537331 (= (head!8639 (tail!6373 p!2988)) (c!704554 (derivativeStep!3629 (regex!7082 r!4213) (head!8639 p!2988)))))))

(declare-fun b!4088348 () Bool)

(declare-fun call!289030 () Bool)

(assert (=> b!4088348 (= e!2537332 (= lt!1462385 call!289030))))

(declare-fun b!4088349 () Bool)

(declare-fun res!1670681 () Bool)

(assert (=> b!4088349 (=> res!1670681 e!2537327)))

(assert (=> b!4088349 (= res!1670681 e!2537331)))

(declare-fun res!1670685 () Bool)

(assert (=> b!4088349 (=> (not res!1670685) (not e!2537331))))

(assert (=> b!4088349 (= res!1670685 lt!1462385)))

(declare-fun bm!289025 () Bool)

(assert (=> bm!289025 (= call!289030 (isEmpty!26201 (tail!6373 p!2988)))))

(declare-fun b!4088350 () Bool)

(declare-fun res!1670680 () Bool)

(assert (=> b!4088350 (=> (not res!1670680) (not e!2537331))))

(assert (=> b!4088350 (= res!1670680 (isEmpty!26201 (tail!6373 (tail!6373 p!2988))))))

(declare-fun b!4088351 () Bool)

(declare-fun e!2537330 () Bool)

(assert (=> b!4088351 (= e!2537327 e!2537330)))

(declare-fun res!1670682 () Bool)

(assert (=> b!4088351 (=> (not res!1670682) (not e!2537330))))

(assert (=> b!4088351 (= res!1670682 (not lt!1462385))))

(declare-fun b!4088352 () Bool)

(declare-fun res!1670686 () Bool)

(assert (=> b!4088352 (=> (not res!1670686) (not e!2537331))))

(assert (=> b!4088352 (= res!1670686 (not call!289030))))

(declare-fun b!4088353 () Bool)

(assert (=> b!4088353 (= e!2537330 e!2537326)))

(declare-fun res!1670684 () Bool)

(assert (=> b!4088353 (=> res!1670684 e!2537326)))

(assert (=> b!4088353 (= res!1670684 call!289030)))

(declare-fun b!4088354 () Bool)

(assert (=> b!4088354 (= e!2537328 (nullable!4228 (derivativeStep!3629 (regex!7082 r!4213) (head!8639 p!2988))))))

(declare-fun b!4088355 () Bool)

(assert (=> b!4088355 (= e!2537328 (matchR!5928 (derivativeStep!3629 (derivativeStep!3629 (regex!7082 r!4213) (head!8639 p!2988)) (head!8639 (tail!6373 p!2988))) (tail!6373 (tail!6373 p!2988))))))

(assert (= (and d!1214052 c!704763) b!4088354))

(assert (= (and d!1214052 (not c!704763)) b!4088355))

(assert (= (and d!1214052 c!704765) b!4088348))

(assert (= (and d!1214052 (not c!704765)) b!4088344))

(assert (= (and b!4088344 c!704764) b!4088342))

(assert (= (and b!4088344 (not c!704764)) b!4088345))

(assert (= (and b!4088345 (not res!1670683)) b!4088349))

(assert (= (and b!4088349 res!1670685) b!4088352))

(assert (= (and b!4088352 res!1670686) b!4088350))

(assert (= (and b!4088350 res!1670680) b!4088347))

(assert (= (and b!4088349 (not res!1670681)) b!4088351))

(assert (= (and b!4088351 res!1670682) b!4088353))

(assert (= (and b!4088353 (not res!1670684)) b!4088346))

(assert (= (and b!4088346 (not res!1670687)) b!4088343))

(assert (= (or b!4088348 b!4088352 b!4088353) bm!289025))

(assert (=> b!4088343 m!4694205))

(declare-fun m!4695441 () Bool)

(assert (=> b!4088343 m!4695441))

(assert (=> bm!289025 m!4694205))

(assert (=> bm!289025 m!4694207))

(assert (=> b!4088350 m!4694205))

(declare-fun m!4695443 () Bool)

(assert (=> b!4088350 m!4695443))

(assert (=> b!4088350 m!4695443))

(declare-fun m!4695445 () Bool)

(assert (=> b!4088350 m!4695445))

(assert (=> b!4088355 m!4694205))

(assert (=> b!4088355 m!4695441))

(assert (=> b!4088355 m!4694209))

(assert (=> b!4088355 m!4695441))

(declare-fun m!4695447 () Bool)

(assert (=> b!4088355 m!4695447))

(assert (=> b!4088355 m!4694205))

(assert (=> b!4088355 m!4695443))

(assert (=> b!4088355 m!4695447))

(assert (=> b!4088355 m!4695443))

(declare-fun m!4695449 () Bool)

(assert (=> b!4088355 m!4695449))

(assert (=> d!1214052 m!4694205))

(assert (=> d!1214052 m!4694207))

(assert (=> d!1214052 m!4694209))

(declare-fun m!4695451 () Bool)

(assert (=> d!1214052 m!4695451))

(assert (=> b!4088354 m!4694209))

(declare-fun m!4695453 () Bool)

(assert (=> b!4088354 m!4695453))

(assert (=> b!4088346 m!4694205))

(assert (=> b!4088346 m!4695443))

(assert (=> b!4088346 m!4695443))

(assert (=> b!4088346 m!4695445))

(assert (=> b!4088347 m!4694205))

(assert (=> b!4088347 m!4695441))

(assert (=> b!4087394 d!1214052))

(declare-fun b!4088376 () Bool)

(declare-fun e!2537346 () Regex!11987)

(declare-fun call!289042 () Regex!11987)

(assert (=> b!4088376 (= e!2537346 (Concat!19300 call!289042 (regex!7082 r!4213)))))

(declare-fun b!4088377 () Bool)

(declare-fun e!2537344 () Regex!11987)

(declare-fun call!289040 () Regex!11987)

(assert (=> b!4088377 (= e!2537344 (Union!11987 (Concat!19300 call!289040 (regTwo!24486 (regex!7082 r!4213))) EmptyLang!11987))))

(declare-fun call!289039 () Regex!11987)

(declare-fun bm!289034 () Bool)

(declare-fun c!704778 () Bool)

(declare-fun c!704779 () Bool)

(assert (=> bm!289034 (= call!289039 (derivativeStep!3629 (ite c!704779 (regOne!24487 (regex!7082 r!4213)) (ite c!704778 (reg!12316 (regex!7082 r!4213)) (regOne!24486 (regex!7082 r!4213)))) (head!8639 p!2988)))))

(declare-fun b!4088378 () Bool)

(declare-fun e!2537347 () Regex!11987)

(assert (=> b!4088378 (= e!2537347 EmptyLang!11987)))

(declare-fun call!289041 () Regex!11987)

(declare-fun b!4088379 () Bool)

(assert (=> b!4088379 (= e!2537344 (Union!11987 (Concat!19300 call!289040 (regTwo!24486 (regex!7082 r!4213))) call!289041))))

(declare-fun b!4088380 () Bool)

(declare-fun e!2537343 () Regex!11987)

(assert (=> b!4088380 (= e!2537343 (ite (= (head!8639 p!2988) (c!704554 (regex!7082 r!4213))) EmptyExpr!11987 EmptyLang!11987))))

(declare-fun b!4088381 () Bool)

(declare-fun e!2537345 () Regex!11987)

(assert (=> b!4088381 (= e!2537345 (Union!11987 call!289039 call!289041))))

(declare-fun b!4088382 () Bool)

(declare-fun c!704776 () Bool)

(assert (=> b!4088382 (= c!704776 (nullable!4228 (regOne!24486 (regex!7082 r!4213))))))

(assert (=> b!4088382 (= e!2537346 e!2537344)))

(declare-fun b!4088383 () Bool)

(assert (=> b!4088383 (= e!2537345 e!2537346)))

(assert (=> b!4088383 (= c!704778 ((_ is Star!11987) (regex!7082 r!4213)))))

(declare-fun b!4088384 () Bool)

(assert (=> b!4088384 (= c!704779 ((_ is Union!11987) (regex!7082 r!4213)))))

(assert (=> b!4088384 (= e!2537343 e!2537345)))

(declare-fun bm!289036 () Bool)

(assert (=> bm!289036 (= call!289042 call!289039)))

(declare-fun bm!289035 () Bool)

(assert (=> bm!289035 (= call!289040 call!289042)))

(declare-fun d!1214054 () Bool)

(declare-fun lt!1462388 () Regex!11987)

(assert (=> d!1214054 (validRegex!5428 lt!1462388)))

(assert (=> d!1214054 (= lt!1462388 e!2537347)))

(declare-fun c!704777 () Bool)

(assert (=> d!1214054 (= c!704777 (or ((_ is EmptyExpr!11987) (regex!7082 r!4213)) ((_ is EmptyLang!11987) (regex!7082 r!4213))))))

(assert (=> d!1214054 (validRegex!5428 (regex!7082 r!4213))))

(assert (=> d!1214054 (= (derivativeStep!3629 (regex!7082 r!4213) (head!8639 p!2988)) lt!1462388)))

(declare-fun bm!289037 () Bool)

(assert (=> bm!289037 (= call!289041 (derivativeStep!3629 (ite c!704779 (regTwo!24487 (regex!7082 r!4213)) (regTwo!24486 (regex!7082 r!4213))) (head!8639 p!2988)))))

(declare-fun b!4088385 () Bool)

(assert (=> b!4088385 (= e!2537347 e!2537343)))

(declare-fun c!704780 () Bool)

(assert (=> b!4088385 (= c!704780 ((_ is ElementMatch!11987) (regex!7082 r!4213)))))

(assert (= (and d!1214054 c!704777) b!4088378))

(assert (= (and d!1214054 (not c!704777)) b!4088385))

(assert (= (and b!4088385 c!704780) b!4088380))

(assert (= (and b!4088385 (not c!704780)) b!4088384))

(assert (= (and b!4088384 c!704779) b!4088381))

(assert (= (and b!4088384 (not c!704779)) b!4088383))

(assert (= (and b!4088383 c!704778) b!4088376))

(assert (= (and b!4088383 (not c!704778)) b!4088382))

(assert (= (and b!4088382 c!704776) b!4088379))

(assert (= (and b!4088382 (not c!704776)) b!4088377))

(assert (= (or b!4088379 b!4088377) bm!289035))

(assert (= (or b!4088376 bm!289035) bm!289036))

(assert (= (or b!4088381 bm!289036) bm!289034))

(assert (= (or b!4088381 b!4088379) bm!289037))

(assert (=> bm!289034 m!4694203))

(declare-fun m!4695455 () Bool)

(assert (=> bm!289034 m!4695455))

(declare-fun m!4695457 () Bool)

(assert (=> b!4088382 m!4695457))

(declare-fun m!4695459 () Bool)

(assert (=> d!1214054 m!4695459))

(assert (=> d!1214054 m!4694213))

(assert (=> bm!289037 m!4694203))

(declare-fun m!4695461 () Bool)

(assert (=> bm!289037 m!4695461))

(assert (=> b!4087394 d!1214054))

(assert (=> b!4087394 d!1213728))

(assert (=> b!4087394 d!1213968))

(assert (=> b!4087420 d!1213758))

(assert (=> b!4087420 d!1213766))

(assert (=> b!4087420 d!1213756))

(assert (=> b!4087399 d!1213914))

(declare-fun d!1214056 () Bool)

(declare-fun res!1670688 () Bool)

(declare-fun e!2537348 () Bool)

(assert (=> d!1214056 (=> res!1670688 e!2537348)))

(assert (=> d!1214056 (= res!1670688 ((_ is Nil!43821) (t!338272 rules!3870)))))

(assert (=> d!1214056 (= (noDuplicateTag!2775 thiss!26199 (t!338272 rules!3870) Nil!43823) e!2537348)))

(declare-fun b!4088386 () Bool)

(declare-fun e!2537349 () Bool)

(assert (=> b!4088386 (= e!2537348 e!2537349)))

(declare-fun res!1670689 () Bool)

(assert (=> b!4088386 (=> (not res!1670689) (not e!2537349))))

(assert (=> b!4088386 (= res!1670689 (not (contains!8761 Nil!43823 (tag!7942 (h!49241 (t!338272 rules!3870))))))))

(declare-fun b!4088387 () Bool)

(assert (=> b!4088387 (= e!2537349 (noDuplicateTag!2775 thiss!26199 (t!338272 (t!338272 rules!3870)) (Cons!43823 (tag!7942 (h!49241 (t!338272 rules!3870))) Nil!43823)))))

(assert (= (and d!1214056 (not res!1670688)) b!4088386))

(assert (= (and b!4088386 res!1670689) b!4088387))

(declare-fun m!4695463 () Bool)

(assert (=> b!4088386 m!4695463))

(declare-fun m!4695465 () Bool)

(assert (=> b!4088387 m!4695465))

(assert (=> b!4087608 d!1214056))

(declare-fun d!1214058 () Bool)

(declare-fun e!2537352 () Bool)

(assert (=> d!1214058 e!2537352))

(declare-fun res!1670692 () Bool)

(assert (=> d!1214058 (=> (not res!1670692) (not e!2537352))))

(declare-fun lt!1462391 () BalanceConc!26180)

(assert (=> d!1214058 (= res!1670692 (= (list!16272 lt!1462391) p!2988))))

(declare-fun fromList!881 (List!43943) Conc!13293)

(assert (=> d!1214058 (= lt!1462391 (BalanceConc!26181 (fromList!881 p!2988)))))

(assert (=> d!1214058 (= (fromListB!2426 p!2988) lt!1462391)))

(declare-fun b!4088390 () Bool)

(assert (=> b!4088390 (= e!2537352 (isBalanced!3702 (fromList!881 p!2988)))))

(assert (= (and d!1214058 res!1670692) b!4088390))

(declare-fun m!4695467 () Bool)

(assert (=> d!1214058 m!4695467))

(declare-fun m!4695469 () Bool)

(assert (=> d!1214058 m!4695469))

(assert (=> b!4088390 m!4695469))

(assert (=> b!4088390 m!4695469))

(declare-fun m!4695471 () Bool)

(assert (=> b!4088390 m!4695471))

(assert (=> d!1213626 d!1214058))

(declare-fun d!1214060 () Bool)

(assert (=> d!1214060 (= (get!14371 (maxPrefix!3961 thiss!26199 (t!338272 rules!3870) input!3411)) (v!39965 (maxPrefix!3961 thiss!26199 (t!338272 rules!3870) input!3411)))))

(assert (=> b!4087620 d!1214060))

(assert (=> b!4087620 d!1213680))

(declare-fun bs!593219 () Bool)

(declare-fun d!1214062 () Bool)

(assert (= bs!593219 (and d!1214062 d!1213746)))

(declare-fun lambda!127971 () Int)

(assert (=> bs!593219 (= (= (toValue!9666 (transformation!7082 r!4213)) (toValue!9666 (transformation!7082 (h!49241 rules!3870)))) (= lambda!127971 lambda!127952))))

(assert (=> d!1214062 true))

(assert (=> d!1214062 (< (dynLambda!18724 order!23013 (toValue!9666 (transformation!7082 r!4213))) (dynLambda!18727 order!23019 lambda!127971))))

(assert (=> d!1214062 (= (equivClasses!2938 (toChars!9525 (transformation!7082 r!4213)) (toValue!9666 (transformation!7082 r!4213))) (Forall2!1111 lambda!127971))))

(declare-fun bs!593220 () Bool)

(assert (= bs!593220 d!1214062))

(declare-fun m!4695473 () Bool)

(assert (=> bs!593220 m!4695473))

(assert (=> b!4087352 d!1214062))

(assert (=> bm!288927 d!1213606))

(declare-fun d!1214064 () Bool)

(assert (=> d!1214064 (= (inv!58516 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907))) (isBalanced!3702 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907)))))))

(declare-fun bs!593221 () Bool)

(assert (= bs!593221 d!1214064))

(declare-fun m!4695475 () Bool)

(assert (=> bs!593221 m!4695475))

(assert (=> tb!245579 d!1214064))

(declare-fun b!4088391 () Bool)

(declare-fun e!2537353 () Bool)

(declare-fun tp!1237677 () Bool)

(assert (=> b!4088391 (= e!2537353 (and tp_is_empty!20977 tp!1237677))))

(assert (=> b!4087643 (= tp!1237580 e!2537353)))

(assert (= (and b!4087643 ((_ is Cons!43819) (t!338270 (t!338270 p!2988)))) b!4088391))

(declare-fun b!4088392 () Bool)

(declare-fun e!2537354 () Bool)

(declare-fun tp!1237678 () Bool)

(assert (=> b!4088392 (= e!2537354 (and tp_is_empty!20977 tp!1237678))))

(assert (=> b!4087655 (= tp!1237593 e!2537354)))

(assert (= (and b!4087655 ((_ is Cons!43819) (t!338270 (t!338270 suffix!1518)))) b!4088392))

(declare-fun tp!1237687 () Bool)

(declare-fun tp!1237686 () Bool)

(declare-fun b!4088401 () Bool)

(declare-fun e!2537360 () Bool)

(assert (=> b!4088401 (= e!2537360 (and (inv!58515 (left!32936 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907))))) tp!1237686 (inv!58515 (right!33266 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907))))) tp!1237687))))

(declare-fun b!4088403 () Bool)

(declare-fun e!2537359 () Bool)

(declare-fun tp!1237685 () Bool)

(assert (=> b!4088403 (= e!2537359 tp!1237685)))

(declare-fun b!4088402 () Bool)

(declare-fun inv!58521 (IArray!26591) Bool)

(assert (=> b!4088402 (= e!2537360 (and (inv!58521 (xs!16599 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907))))) e!2537359))))

(assert (=> b!4087607 (= tp!1237557 (and (inv!58515 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907)))) e!2537360))))

(assert (= (and b!4087607 ((_ is Node!13293) (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907))))) b!4088401))

(assert (= b!4088402 b!4088403))

(assert (= (and b!4087607 ((_ is Leaf!20549) (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907))))) b!4088402))

(declare-fun m!4695477 () Bool)

(assert (=> b!4088401 m!4695477))

(declare-fun m!4695479 () Bool)

(assert (=> b!4088401 m!4695479))

(declare-fun m!4695481 () Bool)

(assert (=> b!4088402 m!4695481))

(assert (=> b!4087607 m!4694415))

(declare-fun b!4088405 () Bool)

(declare-fun e!2537361 () Bool)

(declare-fun tp!1237689 () Bool)

(declare-fun tp!1237688 () Bool)

(assert (=> b!4088405 (= e!2537361 (and tp!1237689 tp!1237688))))

(assert (=> b!4087636 (= tp!1237574 e!2537361)))

(declare-fun b!4088406 () Bool)

(declare-fun tp!1237690 () Bool)

(assert (=> b!4088406 (= e!2537361 tp!1237690)))

(declare-fun b!4088407 () Bool)

(declare-fun tp!1237691 () Bool)

(declare-fun tp!1237692 () Bool)

(assert (=> b!4088407 (= e!2537361 (and tp!1237691 tp!1237692))))

(declare-fun b!4088404 () Bool)

(assert (=> b!4088404 (= e!2537361 tp_is_empty!20977)))

(assert (= (and b!4087636 ((_ is ElementMatch!11987) (regOne!24486 (regex!7082 r!4213)))) b!4088404))

(assert (= (and b!4087636 ((_ is Concat!19300) (regOne!24486 (regex!7082 r!4213)))) b!4088405))

(assert (= (and b!4087636 ((_ is Star!11987) (regOne!24486 (regex!7082 r!4213)))) b!4088406))

(assert (= (and b!4087636 ((_ is Union!11987) (regOne!24486 (regex!7082 r!4213)))) b!4088407))

(declare-fun b!4088409 () Bool)

(declare-fun e!2537362 () Bool)

(declare-fun tp!1237694 () Bool)

(declare-fun tp!1237693 () Bool)

(assert (=> b!4088409 (= e!2537362 (and tp!1237694 tp!1237693))))

(assert (=> b!4087636 (= tp!1237573 e!2537362)))

(declare-fun b!4088410 () Bool)

(declare-fun tp!1237695 () Bool)

(assert (=> b!4088410 (= e!2537362 tp!1237695)))

(declare-fun b!4088411 () Bool)

(declare-fun tp!1237696 () Bool)

(declare-fun tp!1237697 () Bool)

(assert (=> b!4088411 (= e!2537362 (and tp!1237696 tp!1237697))))

(declare-fun b!4088408 () Bool)

(assert (=> b!4088408 (= e!2537362 tp_is_empty!20977)))

(assert (= (and b!4087636 ((_ is ElementMatch!11987) (regTwo!24486 (regex!7082 r!4213)))) b!4088408))

(assert (= (and b!4087636 ((_ is Concat!19300) (regTwo!24486 (regex!7082 r!4213)))) b!4088409))

(assert (= (and b!4087636 ((_ is Star!11987) (regTwo!24486 (regex!7082 r!4213)))) b!4088410))

(assert (= (and b!4087636 ((_ is Union!11987) (regTwo!24486 (regex!7082 r!4213)))) b!4088411))

(declare-fun b!4088412 () Bool)

(declare-fun e!2537363 () Bool)

(declare-fun tp!1237698 () Bool)

(assert (=> b!4088412 (= e!2537363 (and tp_is_empty!20977 tp!1237698))))

(assert (=> b!4087656 (= tp!1237594 e!2537363)))

(assert (= (and b!4087656 ((_ is Cons!43819) (t!338270 (t!338270 input!3411)))) b!4088412))

(declare-fun b!4088414 () Bool)

(declare-fun e!2537364 () Bool)

(declare-fun tp!1237700 () Bool)

(declare-fun tp!1237699 () Bool)

(assert (=> b!4088414 (= e!2537364 (and tp!1237700 tp!1237699))))

(assert (=> b!4087632 (= tp!1237569 e!2537364)))

(declare-fun b!4088415 () Bool)

(declare-fun tp!1237701 () Bool)

(assert (=> b!4088415 (= e!2537364 tp!1237701)))

(declare-fun b!4088416 () Bool)

(declare-fun tp!1237702 () Bool)

(declare-fun tp!1237703 () Bool)

(assert (=> b!4088416 (= e!2537364 (and tp!1237702 tp!1237703))))

(declare-fun b!4088413 () Bool)

(assert (=> b!4088413 (= e!2537364 tp_is_empty!20977)))

(assert (= (and b!4087632 ((_ is ElementMatch!11987) (regOne!24486 (regex!7082 (h!49241 rules!3870))))) b!4088413))

(assert (= (and b!4087632 ((_ is Concat!19300) (regOne!24486 (regex!7082 (h!49241 rules!3870))))) b!4088414))

(assert (= (and b!4087632 ((_ is Star!11987) (regOne!24486 (regex!7082 (h!49241 rules!3870))))) b!4088415))

(assert (= (and b!4087632 ((_ is Union!11987) (regOne!24486 (regex!7082 (h!49241 rules!3870))))) b!4088416))

(declare-fun b!4088418 () Bool)

(declare-fun e!2537365 () Bool)

(declare-fun tp!1237705 () Bool)

(declare-fun tp!1237704 () Bool)

(assert (=> b!4088418 (= e!2537365 (and tp!1237705 tp!1237704))))

(assert (=> b!4087632 (= tp!1237568 e!2537365)))

(declare-fun b!4088419 () Bool)

(declare-fun tp!1237706 () Bool)

(assert (=> b!4088419 (= e!2537365 tp!1237706)))

(declare-fun b!4088420 () Bool)

(declare-fun tp!1237707 () Bool)

(declare-fun tp!1237708 () Bool)

(assert (=> b!4088420 (= e!2537365 (and tp!1237707 tp!1237708))))

(declare-fun b!4088417 () Bool)

(assert (=> b!4088417 (= e!2537365 tp_is_empty!20977)))

(assert (= (and b!4087632 ((_ is ElementMatch!11987) (regTwo!24486 (regex!7082 (h!49241 rules!3870))))) b!4088417))

(assert (= (and b!4087632 ((_ is Concat!19300) (regTwo!24486 (regex!7082 (h!49241 rules!3870))))) b!4088418))

(assert (= (and b!4087632 ((_ is Star!11987) (regTwo!24486 (regex!7082 (h!49241 rules!3870))))) b!4088419))

(assert (= (and b!4087632 ((_ is Union!11987) (regTwo!24486 (regex!7082 (h!49241 rules!3870))))) b!4088420))

(declare-fun b!4088422 () Bool)

(declare-fun e!2537366 () Bool)

(declare-fun tp!1237710 () Bool)

(declare-fun tp!1237709 () Bool)

(assert (=> b!4088422 (= e!2537366 (and tp!1237710 tp!1237709))))

(assert (=> b!4087633 (= tp!1237570 e!2537366)))

(declare-fun b!4088423 () Bool)

(declare-fun tp!1237711 () Bool)

(assert (=> b!4088423 (= e!2537366 tp!1237711)))

(declare-fun b!4088424 () Bool)

(declare-fun tp!1237712 () Bool)

(declare-fun tp!1237713 () Bool)

(assert (=> b!4088424 (= e!2537366 (and tp!1237712 tp!1237713))))

(declare-fun b!4088421 () Bool)

(assert (=> b!4088421 (= e!2537366 tp_is_empty!20977)))

(assert (= (and b!4087633 ((_ is ElementMatch!11987) (reg!12316 (regex!7082 (h!49241 rules!3870))))) b!4088421))

(assert (= (and b!4087633 ((_ is Concat!19300) (reg!12316 (regex!7082 (h!49241 rules!3870))))) b!4088422))

(assert (= (and b!4087633 ((_ is Star!11987) (reg!12316 (regex!7082 (h!49241 rules!3870))))) b!4088423))

(assert (= (and b!4087633 ((_ is Union!11987) (reg!12316 (regex!7082 (h!49241 rules!3870))))) b!4088424))

(declare-fun b!4088427 () Bool)

(declare-fun b_free!114237 () Bool)

(declare-fun b_next!114941 () Bool)

(assert (=> b!4088427 (= b_free!114237 (not b_next!114941))))

(declare-fun tb!245707 () Bool)

(declare-fun t!338430 () Bool)

(assert (=> (and b!4088427 (= (toValue!9666 (transformation!7082 (h!49241 (t!338272 (t!338272 rules!3870))))) (toValue!9666 (transformation!7082 r!4213))) t!338430) tb!245707))

(declare-fun result!298116 () Bool)

(assert (= result!298116 result!297950))

(assert (=> d!1213628 t!338430))

(declare-fun tb!245709 () Bool)

(declare-fun t!338432 () Bool)

(assert (=> (and b!4088427 (= (toValue!9666 (transformation!7082 (h!49241 (t!338272 (t!338272 rules!3870))))) (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461951)))))) t!338432) tb!245709))

(declare-fun result!298118 () Bool)

(assert (= result!298118 result!298108))

(assert (=> d!1214038 t!338432))

(declare-fun tb!245711 () Bool)

(declare-fun t!338434 () Bool)

(assert (=> (and b!4088427 (= (toValue!9666 (transformation!7082 (h!49241 (t!338272 (t!338272 rules!3870))))) (toValue!9666 (transformation!7082 r!4213))) t!338434) tb!245711))

(declare-fun result!298120 () Bool)

(assert (= result!298120 result!298096))

(assert (=> d!1214012 t!338434))

(declare-fun tb!245713 () Bool)

(declare-fun t!338436 () Bool)

(assert (=> (and b!4088427 (= (toValue!9666 (transformation!7082 (h!49241 (t!338272 (t!338272 rules!3870))))) (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026)))))) t!338436) tb!245713))

(declare-fun result!298122 () Bool)

(assert (= result!298122 result!298036))

(assert (=> d!1213888 t!338436))

(declare-fun t!338438 () Bool)

(declare-fun tb!245715 () Bool)

(assert (=> (and b!4088427 (= (toValue!9666 (transformation!7082 (h!49241 (t!338272 (t!338272 rules!3870))))) (toValue!9666 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973)))))) t!338438) tb!245715))

(declare-fun result!298124 () Bool)

(assert (= result!298124 result!298090))

(assert (=> d!1213982 t!338438))

(assert (=> d!1214010 t!338434))

(assert (=> d!1213622 t!338430))

(declare-fun tp!1237715 () Bool)

(declare-fun b_and!314923 () Bool)

(assert (=> b!4088427 (= tp!1237715 (and (=> t!338434 result!298120) (=> t!338438 result!298124) (=> t!338436 result!298122) (=> t!338430 result!298116) (=> t!338432 result!298118) b_and!314923))))

(declare-fun b_free!114239 () Bool)

(declare-fun b_next!114943 () Bool)

(assert (=> b!4088427 (= b_free!114239 (not b_next!114943))))

(declare-fun t!338440 () Bool)

(declare-fun tb!245717 () Bool)

(assert (=> (and b!4088427 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 (t!338272 rules!3870))))) (toChars!9525 (transformation!7082 r!4213))) t!338440) tb!245717))

(declare-fun result!298126 () Bool)

(assert (= result!298126 result!298102))

(assert (=> d!1214012 t!338440))

(declare-fun t!338442 () Bool)

(declare-fun tb!245719 () Bool)

(assert (=> (and b!4088427 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 (t!338272 rules!3870))))) (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1462026)))))) t!338442) tb!245719))

(declare-fun result!298128 () Bool)

(assert (= result!298128 result!298054))

(assert (=> d!1213908 t!338442))

(declare-fun tb!245721 () Bool)

(declare-fun t!338444 () Bool)

(assert (=> (and b!4088427 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 (t!338272 rules!3870))))) (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461973)))))) t!338444) tb!245721))

(declare-fun result!298130 () Bool)

(assert (= result!298130 result!298012))

(assert (=> d!1213766 t!338444))

(declare-fun t!338446 () Bool)

(declare-fun tb!245723 () Bool)

(assert (=> (and b!4088427 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 (t!338272 rules!3870))))) (toChars!9525 (transformation!7082 (rule!10214 (_1!24512 (get!14371 lt!1461951)))))) t!338446) tb!245723))

(declare-fun result!298132 () Bool)

(assert (= result!298132 result!298060))

(assert (=> d!1213928 t!338446))

(declare-fun tb!245725 () Bool)

(declare-fun t!338448 () Bool)

(assert (=> (and b!4088427 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 (t!338272 rules!3870))))) (toChars!9525 (transformation!7082 (rule!10214 lt!1461905)))) t!338448) tb!245725))

(declare-fun result!298134 () Bool)

(assert (= result!298134 result!297944))

(assert (=> b!4087284 t!338448))

(declare-fun tb!245727 () Bool)

(declare-fun t!338450 () Bool)

(assert (=> (and b!4088427 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 (t!338272 rules!3870))))) (toChars!9525 (transformation!7082 r!4213))) t!338450) tb!245727))

(declare-fun result!298136 () Bool)

(assert (= result!298136 result!297978))

(assert (=> d!1213628 t!338450))

(declare-fun b_and!314925 () Bool)

(declare-fun tp!1237716 () Bool)

(assert (=> b!4088427 (= tp!1237716 (and (=> t!338450 result!298136) (=> t!338448 result!298134) (=> t!338442 result!298128) (=> t!338444 result!298130) (=> t!338440 result!298126) (=> t!338446 result!298132) b_and!314925))))

(declare-fun e!2537370 () Bool)

(assert (=> b!4088427 (= e!2537370 (and tp!1237715 tp!1237716))))

(declare-fun e!2537367 () Bool)

(declare-fun tp!1237714 () Bool)

(declare-fun b!4088426 () Bool)

(assert (=> b!4088426 (= e!2537367 (and tp!1237714 (inv!58508 (tag!7942 (h!49241 (t!338272 (t!338272 rules!3870))))) (inv!58511 (transformation!7082 (h!49241 (t!338272 (t!338272 rules!3870))))) e!2537370))))

(declare-fun b!4088425 () Bool)

(declare-fun e!2537368 () Bool)

(declare-fun tp!1237717 () Bool)

(assert (=> b!4088425 (= e!2537368 (and e!2537367 tp!1237717))))

(assert (=> b!4087652 (= tp!1237592 e!2537368)))

(assert (= b!4088426 b!4088427))

(assert (= b!4088425 b!4088426))

(assert (= (and b!4087652 ((_ is Cons!43821) (t!338272 (t!338272 rules!3870)))) b!4088425))

(declare-fun m!4695483 () Bool)

(assert (=> b!4088426 m!4695483))

(declare-fun m!4695485 () Bool)

(assert (=> b!4088426 m!4695485))

(declare-fun tp!1237720 () Bool)

(declare-fun tp!1237719 () Bool)

(declare-fun e!2537372 () Bool)

(declare-fun b!4088428 () Bool)

(assert (=> b!4088428 (= e!2537372 (and (inv!58515 (left!32936 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905))))) tp!1237719 (inv!58515 (right!33266 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905))))) tp!1237720))))

(declare-fun b!4088430 () Bool)

(declare-fun e!2537371 () Bool)

(declare-fun tp!1237718 () Bool)

(assert (=> b!4088430 (= e!2537371 tp!1237718)))

(declare-fun b!4088429 () Bool)

(assert (=> b!4088429 (= e!2537372 (and (inv!58521 (xs!16599 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905))))) e!2537371))))

(assert (=> b!4087297 (= tp!1237515 (and (inv!58515 (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905)))) e!2537372))))

(assert (= (and b!4087297 ((_ is Node!13293) (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905))))) b!4088428))

(assert (= b!4088429 b!4088430))

(assert (= (and b!4087297 ((_ is Leaf!20549) (c!704555 (dynLambda!18722 (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))) (value!222489 lt!1461905))))) b!4088429))

(declare-fun m!4695487 () Bool)

(assert (=> b!4088428 m!4695487))

(declare-fun m!4695489 () Bool)

(assert (=> b!4088428 m!4695489))

(declare-fun m!4695491 () Bool)

(assert (=> b!4088429 m!4695491))

(assert (=> b!4087297 m!4694107))

(declare-fun b!4088432 () Bool)

(declare-fun e!2537373 () Bool)

(declare-fun tp!1237722 () Bool)

(declare-fun tp!1237721 () Bool)

(assert (=> b!4088432 (= e!2537373 (and tp!1237722 tp!1237721))))

(assert (=> b!4087637 (= tp!1237575 e!2537373)))

(declare-fun b!4088433 () Bool)

(declare-fun tp!1237723 () Bool)

(assert (=> b!4088433 (= e!2537373 tp!1237723)))

(declare-fun b!4088434 () Bool)

(declare-fun tp!1237724 () Bool)

(declare-fun tp!1237725 () Bool)

(assert (=> b!4088434 (= e!2537373 (and tp!1237724 tp!1237725))))

(declare-fun b!4088431 () Bool)

(assert (=> b!4088431 (= e!2537373 tp_is_empty!20977)))

(assert (= (and b!4087637 ((_ is ElementMatch!11987) (reg!12316 (regex!7082 r!4213)))) b!4088431))

(assert (= (and b!4087637 ((_ is Concat!19300) (reg!12316 (regex!7082 r!4213)))) b!4088432))

(assert (= (and b!4087637 ((_ is Star!11987) (reg!12316 (regex!7082 r!4213)))) b!4088433))

(assert (= (and b!4087637 ((_ is Union!11987) (reg!12316 (regex!7082 r!4213)))) b!4088434))

(declare-fun b!4088436 () Bool)

(declare-fun e!2537374 () Bool)

(declare-fun tp!1237727 () Bool)

(declare-fun tp!1237726 () Bool)

(assert (=> b!4088436 (= e!2537374 (and tp!1237727 tp!1237726))))

(assert (=> b!4087638 (= tp!1237576 e!2537374)))

(declare-fun b!4088437 () Bool)

(declare-fun tp!1237728 () Bool)

(assert (=> b!4088437 (= e!2537374 tp!1237728)))

(declare-fun b!4088438 () Bool)

(declare-fun tp!1237729 () Bool)

(declare-fun tp!1237730 () Bool)

(assert (=> b!4088438 (= e!2537374 (and tp!1237729 tp!1237730))))

(declare-fun b!4088435 () Bool)

(assert (=> b!4088435 (= e!2537374 tp_is_empty!20977)))

(assert (= (and b!4087638 ((_ is ElementMatch!11987) (regOne!24487 (regex!7082 r!4213)))) b!4088435))

(assert (= (and b!4087638 ((_ is Concat!19300) (regOne!24487 (regex!7082 r!4213)))) b!4088436))

(assert (= (and b!4087638 ((_ is Star!11987) (regOne!24487 (regex!7082 r!4213)))) b!4088437))

(assert (= (and b!4087638 ((_ is Union!11987) (regOne!24487 (regex!7082 r!4213)))) b!4088438))

(declare-fun b!4088440 () Bool)

(declare-fun e!2537375 () Bool)

(declare-fun tp!1237732 () Bool)

(declare-fun tp!1237731 () Bool)

(assert (=> b!4088440 (= e!2537375 (and tp!1237732 tp!1237731))))

(assert (=> b!4087638 (= tp!1237577 e!2537375)))

(declare-fun b!4088441 () Bool)

(declare-fun tp!1237733 () Bool)

(assert (=> b!4088441 (= e!2537375 tp!1237733)))

(declare-fun b!4088442 () Bool)

(declare-fun tp!1237734 () Bool)

(declare-fun tp!1237735 () Bool)

(assert (=> b!4088442 (= e!2537375 (and tp!1237734 tp!1237735))))

(declare-fun b!4088439 () Bool)

(assert (=> b!4088439 (= e!2537375 tp_is_empty!20977)))

(assert (= (and b!4087638 ((_ is ElementMatch!11987) (regTwo!24487 (regex!7082 r!4213)))) b!4088439))

(assert (= (and b!4087638 ((_ is Concat!19300) (regTwo!24487 (regex!7082 r!4213)))) b!4088440))

(assert (= (and b!4087638 ((_ is Star!11987) (regTwo!24487 (regex!7082 r!4213)))) b!4088441))

(assert (= (and b!4087638 ((_ is Union!11987) (regTwo!24487 (regex!7082 r!4213)))) b!4088442))

(declare-fun b!4088444 () Bool)

(declare-fun e!2537376 () Bool)

(declare-fun tp!1237737 () Bool)

(declare-fun tp!1237736 () Bool)

(assert (=> b!4088444 (= e!2537376 (and tp!1237737 tp!1237736))))

(assert (=> b!4087634 (= tp!1237571 e!2537376)))

(declare-fun b!4088445 () Bool)

(declare-fun tp!1237738 () Bool)

(assert (=> b!4088445 (= e!2537376 tp!1237738)))

(declare-fun b!4088446 () Bool)

(declare-fun tp!1237739 () Bool)

(declare-fun tp!1237740 () Bool)

(assert (=> b!4088446 (= e!2537376 (and tp!1237739 tp!1237740))))

(declare-fun b!4088443 () Bool)

(assert (=> b!4088443 (= e!2537376 tp_is_empty!20977)))

(assert (= (and b!4087634 ((_ is ElementMatch!11987) (regOne!24487 (regex!7082 (h!49241 rules!3870))))) b!4088443))

(assert (= (and b!4087634 ((_ is Concat!19300) (regOne!24487 (regex!7082 (h!49241 rules!3870))))) b!4088444))

(assert (= (and b!4087634 ((_ is Star!11987) (regOne!24487 (regex!7082 (h!49241 rules!3870))))) b!4088445))

(assert (= (and b!4087634 ((_ is Union!11987) (regOne!24487 (regex!7082 (h!49241 rules!3870))))) b!4088446))

(declare-fun b!4088448 () Bool)

(declare-fun e!2537377 () Bool)

(declare-fun tp!1237742 () Bool)

(declare-fun tp!1237741 () Bool)

(assert (=> b!4088448 (= e!2537377 (and tp!1237742 tp!1237741))))

(assert (=> b!4087634 (= tp!1237572 e!2537377)))

(declare-fun b!4088449 () Bool)

(declare-fun tp!1237743 () Bool)

(assert (=> b!4088449 (= e!2537377 tp!1237743)))

(declare-fun b!4088450 () Bool)

(declare-fun tp!1237744 () Bool)

(declare-fun tp!1237745 () Bool)

(assert (=> b!4088450 (= e!2537377 (and tp!1237744 tp!1237745))))

(declare-fun b!4088447 () Bool)

(assert (=> b!4088447 (= e!2537377 tp_is_empty!20977)))

(assert (= (and b!4087634 ((_ is ElementMatch!11987) (regTwo!24487 (regex!7082 (h!49241 rules!3870))))) b!4088447))

(assert (= (and b!4087634 ((_ is Concat!19300) (regTwo!24487 (regex!7082 (h!49241 rules!3870))))) b!4088448))

(assert (= (and b!4087634 ((_ is Star!11987) (regTwo!24487 (regex!7082 (h!49241 rules!3870))))) b!4088449))

(assert (= (and b!4087634 ((_ is Union!11987) (regTwo!24487 (regex!7082 (h!49241 rules!3870))))) b!4088450))

(declare-fun b!4088452 () Bool)

(declare-fun e!2537378 () Bool)

(declare-fun tp!1237747 () Bool)

(declare-fun tp!1237746 () Bool)

(assert (=> b!4088452 (= e!2537378 (and tp!1237747 tp!1237746))))

(assert (=> b!4087653 (= tp!1237589 e!2537378)))

(declare-fun b!4088453 () Bool)

(declare-fun tp!1237748 () Bool)

(assert (=> b!4088453 (= e!2537378 tp!1237748)))

(declare-fun b!4088454 () Bool)

(declare-fun tp!1237749 () Bool)

(declare-fun tp!1237750 () Bool)

(assert (=> b!4088454 (= e!2537378 (and tp!1237749 tp!1237750))))

(declare-fun b!4088451 () Bool)

(assert (=> b!4088451 (= e!2537378 tp_is_empty!20977)))

(assert (= (and b!4087653 ((_ is ElementMatch!11987) (regex!7082 (h!49241 (t!338272 rules!3870))))) b!4088451))

(assert (= (and b!4087653 ((_ is Concat!19300) (regex!7082 (h!49241 (t!338272 rules!3870))))) b!4088452))

(assert (= (and b!4087653 ((_ is Star!11987) (regex!7082 (h!49241 (t!338272 rules!3870))))) b!4088453))

(assert (= (and b!4087653 ((_ is Union!11987) (regex!7082 (h!49241 (t!338272 rules!3870))))) b!4088454))

(declare-fun b_lambda!119769 () Bool)

(assert (= b_lambda!119763 (or (and b!4087238 b_free!114217 (= (toValue!9666 (transformation!7082 (h!49241 rules!3870))) (toValue!9666 (transformation!7082 r!4213)))) (and b!4087234 b_free!114221) (and b!4087654 b_free!114229 (= (toValue!9666 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toValue!9666 (transformation!7082 r!4213)))) (and b!4088427 b_free!114237 (= (toValue!9666 (transformation!7082 (h!49241 (t!338272 (t!338272 rules!3870))))) (toValue!9666 (transformation!7082 r!4213)))) b_lambda!119769)))

(declare-fun b_lambda!119771 () Bool)

(assert (= b_lambda!119767 (or d!1213628 b_lambda!119771)))

(declare-fun bs!593222 () Bool)

(declare-fun d!1214066 () Bool)

(assert (= bs!593222 (and d!1214066 d!1213628)))

(assert (=> bs!593222 (= (dynLambda!18730 lambda!127937 lt!1461907) (= (list!16272 (dynLambda!18722 (toChars!9525 (transformation!7082 r!4213)) (dynLambda!18723 (toValue!9666 (transformation!7082 r!4213)) lt!1461907))) (list!16272 lt!1461907)))))

(declare-fun b_lambda!119779 () Bool)

(assert (=> (not b_lambda!119779) (not bs!593222)))

(assert (=> bs!593222 t!338301))

(declare-fun b_and!314927 () Bool)

(assert (= b_and!314905 (and (=> t!338301 result!297978) b_and!314927)))

(assert (=> bs!593222 t!338303))

(declare-fun b_and!314929 () Bool)

(assert (= b_and!314907 (and (=> t!338303 result!297980) b_and!314929)))

(assert (=> bs!593222 t!338309))

(declare-fun b_and!314931 () Bool)

(assert (= b_and!314909 (and (=> t!338309 result!297992) b_and!314931)))

(assert (=> bs!593222 t!338450))

(declare-fun b_and!314933 () Bool)

(assert (= b_and!314925 (and (=> t!338450 result!298136) b_and!314933)))

(declare-fun b_lambda!119781 () Bool)

(assert (=> (not b_lambda!119781) (not bs!593222)))

(assert (=> bs!593222 t!338282))

(declare-fun b_and!314935 () Bool)

(assert (= b_and!314917 (and (=> t!338282 result!297950) b_and!314935)))

(assert (=> bs!593222 t!338284))

(declare-fun b_and!314937 () Bool)

(assert (= b_and!314919 (and (=> t!338284 result!297954) b_and!314937)))

(assert (=> bs!593222 t!338305))

(declare-fun b_and!314939 () Bool)

(assert (= b_and!314921 (and (=> t!338305 result!297988) b_and!314939)))

(assert (=> bs!593222 t!338430))

(declare-fun b_and!314941 () Bool)

(assert (= b_and!314923 (and (=> t!338430 result!298116) b_and!314941)))

(assert (=> bs!593222 m!4694251))

(assert (=> bs!593222 m!4694423))

(assert (=> bs!593222 m!4694423))

(assert (=> bs!593222 m!4694425))

(assert (=> bs!593222 m!4694421))

(assert (=> bs!593222 m!4694251))

(assert (=> d!1214046 d!1214066))

(declare-fun b_lambda!119773 () Bool)

(assert (= b_lambda!119689 (or (and b!4087238 b_free!114219 (= (toChars!9525 (transformation!7082 (h!49241 rules!3870))) (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))))) (and b!4087234 b_free!114223 (= (toChars!9525 (transformation!7082 r!4213)) (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))))) (and b!4087654 b_free!114231 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))))) (and b!4088427 b_free!114239 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 (t!338272 rules!3870))))) (toChars!9525 (transformation!7082 (rule!10214 lt!1461905))))) b_lambda!119773)))

(declare-fun b_lambda!119775 () Bool)

(assert (= b_lambda!119759 (or (and b!4087238 b_free!114217 (= (toValue!9666 (transformation!7082 (h!49241 rules!3870))) (toValue!9666 (transformation!7082 r!4213)))) (and b!4087234 b_free!114221) (and b!4087654 b_free!114229 (= (toValue!9666 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toValue!9666 (transformation!7082 r!4213)))) (and b!4088427 b_free!114237 (= (toValue!9666 (transformation!7082 (h!49241 (t!338272 (t!338272 rules!3870))))) (toValue!9666 (transformation!7082 r!4213)))) b_lambda!119775)))

(declare-fun b_lambda!119777 () Bool)

(assert (= b_lambda!119761 (or (and b!4087238 b_free!114219 (= (toChars!9525 (transformation!7082 (h!49241 rules!3870))) (toChars!9525 (transformation!7082 r!4213)))) (and b!4087234 b_free!114223) (and b!4087654 b_free!114231 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 rules!3870)))) (toChars!9525 (transformation!7082 r!4213)))) (and b!4088427 b_free!114239 (= (toChars!9525 (transformation!7082 (h!49241 (t!338272 (t!338272 rules!3870))))) (toChars!9525 (transformation!7082 r!4213)))) b_lambda!119777)))

(check-sat (not b!4087607) (not b_next!114923) (not d!1214006) (not b_lambda!119711) (not b!4088441) (not b_next!114925) (not b!4088100) (not b_lambda!119773) b_and!314939 (not b!4087864) (not b!4088350) (not d!1213736) (not b!4088298) (not bm!289023) (not d!1213784) (not b!4088334) (not bm!289025) (not b!4088087) (not d!1214002) (not b!4088284) (not b!4088323) (not d!1213732) (not bm!289034) (not d!1213986) (not b!4088259) (not b!4088402) (not d!1214044) (not d!1213924) (not b!4088317) (not b!4087792) (not b!4088354) (not b!4088387) (not b!4088092) (not b!4088074) (not b!4088415) b_and!314931 (not b!4088339) (not d!1213770) (not b!4088420) (not b!4088424) (not b!4087858) (not d!1213898) (not b!4088346) (not b!4088331) (not bm!289024) b_and!314935 (not b!4088436) b_and!314927 (not b!4088325) (not b!4087760) (not b!4088428) (not b!4087876) (not b!4088279) (not b!4087842) (not tb!245607) (not b!4088083) (not d!1213914) (not tb!245683) (not b!4088321) (not b!4088446) (not b!4088068) (not b!4088044) (not b!4088333) (not b!4088355) (not b!4088444) (not d!1214032) (not b!4088343) (not b!4088287) (not tb!245695) (not b!4087774) (not d!1214046) (not b!4088304) (not b!4087297) (not d!1213730) (not d!1213922) (not d!1213926) (not b!4088310) (not b_next!114941) (not b_lambda!119741) (not d!1213906) (not b!4088291) (not b!4087841) (not bm!289008) (not d!1213758) (not b!4088337) (not b!4088271) (not b!4088448) (not b_lambda!119757) (not b!4088286) (not b!4088418) (not d!1213746) (not b!4088105) (not b!4087833) (not b!4087837) (not b!4088414) (not bm!288971) (not b!4088285) (not d!1213928) (not tb!245649) (not d!1213970) (not bm!288972) (not b!4088124) (not b!4088252) (not b!4088042) (not d!1214052) (not b_lambda!119765) b_and!314937 (not b!4088419) (not d!1214022) (not b!4088281) (not b!4088332) (not b!4088057) (not d!1213936) (not d!1213984) b_and!314941 (not b!4088267) (not b!4087875) (not tb!245689) (not bm!289020) (not d!1214064) (not d!1213950) (not bm!289003) (not b!4088093) (not d!1214054) (not d!1213754) (not b!4088064) (not b!4088296) (not b!4088327) (not d!1214030) (not b!4088409) (not b_next!114921) (not b!4087868) (not b!4088442) (not d!1213894) (not b!4088453) (not d!1214034) (not b_lambda!119731) (not bm!289011) (not d!1213722) (not b!4088322) (not d!1213980) (not b_lambda!119769) (not bm!289009) (not b!4088450) (not b!4088445) (not b!4088392) (not tb!245655) (not b!4088274) (not b!4088382) (not b!4088405) (not d!1214036) (not b_lambda!119777) (not b!4088039) (not b!4087785) (not b!4088335) b_and!314933 (not d!1214018) (not b_lambda!119781) (not b!4088440) (not b!4087764) (not b!4087828) (not b!4088403) (not b!4088336) (not b!4088391) tp_is_empty!20977 (not b!4087871) (not b!4088313) (not bm!289022) (not b!4088314) (not b!4088347) (not bs!593222) (not b!4088412) (not b!4088406) (not b!4087830) (not b!4087867) (not bm!289004) (not d!1214012) (not tb!245631) (not b!4088429) (not b!4088454) (not b!4087775) (not d!1213938) (not b!4088390) (not b!4088273) (not b!4088434) (not b!4087786) (not d!1214048) (not b!4088196) (not b!4087862) (not b!4088283) (not b!4088055) (not b!4088085) (not b!4088072) (not b!4088410) (not d!1213778) (not b!4088416) (not b!4088452) (not b!4088089) (not b_next!114943) (not b!4088433) (not b!4087776) (not d!1214016) (not d!1214008) (not b_lambda!119713) (not d!1213766) (not b_lambda!119771) (not d!1214062) (not b!4088423) (not b!4088306) (not b!4088278) (not b_lambda!119721) (not bm!289037) (not b!4088437) (not b!4088338) (not b!4088101) (not b!4088086) (not b!4088425) (not b!4088449) (not bm!289006) (not b!4088422) (not b!4087790) (not b!4088282) (not b!4088438) (not b!4087762) (not b!4088076) (not b!4088340) (not bm!289010) (not b!4088047) (not b_lambda!119779) (not d!1214000) (not b!4087834) (not b!4088329) (not b!4088065) (not b!4088269) (not d!1214050) (not b!4088109) (not b!4088260) (not b!4088426) (not d!1214040) (not b!4088330) (not b!4088407) (not b!4088401) (not d!1213940) (not b!4088326) (not b!4088067) (not b_next!114927) (not b!4088432) (not b!4088430) (not b_next!114935) (not b!4088106) (not b!4088293) (not d!1214042) (not d!1213992) (not b_lambda!119775) (not d!1213998) (not bm!289005) (not b!4088276) (not bm!289007) (not d!1214058) (not d!1213720) (not d!1213908) (not b_lambda!119709) b_and!314929 (not b_lambda!119737) (not b!4088328) (not d!1213920) (not b_next!114933) (not b!4088308) (not b!4088386) (not b!4088288) (not tb!245701) (not b!4088096) (not b!4088411))
(check-sat (not b_next!114923) b_and!314931 b_and!314935 b_and!314927 (not b_next!114941) (not b_next!114921) b_and!314933 (not b_next!114943) (not b_next!114925) b_and!314939 b_and!314937 b_and!314941 (not b_next!114927) (not b_next!114935) b_and!314929 (not b_next!114933))
