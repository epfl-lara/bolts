; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!396548 () Bool)

(assert start!396548)

(declare-fun b!4161583 () Bool)

(declare-fun b_free!119875 () Bool)

(declare-fun b_next!120579 () Bool)

(assert (=> b!4161583 (= b_free!119875 (not b_next!120579))))

(declare-fun tp!1270266 () Bool)

(declare-fun b_and!324237 () Bool)

(assert (=> b!4161583 (= tp!1270266 b_and!324237)))

(declare-fun b_free!119877 () Bool)

(declare-fun b_next!120581 () Bool)

(assert (=> b!4161583 (= b_free!119877 (not b_next!120581))))

(declare-fun tp!1270267 () Bool)

(declare-fun b_and!324239 () Bool)

(assert (=> b!4161583 (= tp!1270267 b_and!324239)))

(declare-fun b!4161575 () Bool)

(declare-fun b_free!119879 () Bool)

(declare-fun b_next!120583 () Bool)

(assert (=> b!4161575 (= b_free!119879 (not b_next!120583))))

(declare-fun tp!1270265 () Bool)

(declare-fun b_and!324241 () Bool)

(assert (=> b!4161575 (= tp!1270265 b_and!324241)))

(declare-fun b_free!119881 () Bool)

(declare-fun b_next!120585 () Bool)

(assert (=> b!4161575 (= b_free!119881 (not b_next!120585))))

(declare-fun tp!1270261 () Bool)

(declare-fun b_and!324243 () Bool)

(assert (=> b!4161575 (= tp!1270261 b_and!324243)))

(declare-fun b!4161586 () Bool)

(declare-fun b_free!119883 () Bool)

(declare-fun b_next!120587 () Bool)

(assert (=> b!4161586 (= b_free!119883 (not b_next!120587))))

(declare-fun tp!1270269 () Bool)

(declare-fun b_and!324245 () Bool)

(assert (=> b!4161586 (= tp!1270269 b_and!324245)))

(declare-fun b_free!119885 () Bool)

(declare-fun b_next!120589 () Bool)

(assert (=> b!4161586 (= b_free!119885 (not b_next!120589))))

(declare-fun tp!1270263 () Bool)

(declare-fun b_and!324247 () Bool)

(assert (=> b!4161586 (= tp!1270263 b_and!324247)))

(declare-fun e!2583256 () Bool)

(assert (=> b!4161575 (= e!2583256 (and tp!1270265 tp!1270261))))

(declare-fun b!4161576 () Bool)

(declare-fun e!2583261 () Bool)

(declare-datatypes ((C!25038 0))(
  ( (C!25039 (val!14681 Int)) )
))
(declare-datatypes ((List!45630 0))(
  ( (Nil!45506) (Cons!45506 (h!50926 C!25038) (t!343661 List!45630)) )
))
(declare-datatypes ((IArray!27465 0))(
  ( (IArray!27466 (innerList!13790 List!45630)) )
))
(declare-datatypes ((Conc!13730 0))(
  ( (Node!13730 (left!33940 Conc!13730) (right!34270 Conc!13730) (csize!27690 Int) (cheight!13941 Int)) (Leaf!21233 (xs!17036 IArray!27465) (csize!27691 Int)) (Empty!13730) )
))
(declare-datatypes ((List!45631 0))(
  ( (Nil!45507) (Cons!45507 (h!50927 (_ BitVec 16)) (t!343662 List!45631)) )
))
(declare-datatypes ((BalanceConc!27054 0))(
  ( (BalanceConc!27055 (c!711942 Conc!13730)) )
))
(declare-datatypes ((TokenValue!7749 0))(
  ( (FloatLiteralValue!15498 (text!54688 List!45631)) (TokenValueExt!7748 (__x!27719 Int)) (Broken!38745 (value!234825 List!45631)) (Object!7872) (End!7749) (Def!7749) (Underscore!7749) (Match!7749) (Else!7749) (Error!7749) (Case!7749) (If!7749) (Extends!7749) (Abstract!7749) (Class!7749) (Val!7749) (DelimiterValue!15498 (del!7809 List!45631)) (KeywordValue!7755 (value!234826 List!45631)) (CommentValue!15498 (value!234827 List!45631)) (WhitespaceValue!15498 (value!234828 List!45631)) (IndentationValue!7749 (value!234829 List!45631)) (String!52612) (Int32!7749) (Broken!38746 (value!234830 List!45631)) (Boolean!7750) (Unit!64599) (OperatorValue!7752 (op!7809 List!45631)) (IdentifierValue!15498 (value!234831 List!45631)) (IdentifierValue!15499 (value!234832 List!45631)) (WhitespaceValue!15499 (value!234833 List!45631)) (True!15498) (False!15498) (Broken!38747 (value!234834 List!45631)) (Broken!38748 (value!234835 List!45631)) (True!15499) (RightBrace!7749) (RightBracket!7749) (Colon!7749) (Null!7749) (Comma!7749) (LeftBracket!7749) (False!15499) (LeftBrace!7749) (ImaginaryLiteralValue!7749 (text!54689 List!45631)) (StringLiteralValue!23247 (value!234836 List!45631)) (EOFValue!7749 (value!234837 List!45631)) (IdentValue!7749 (value!234838 List!45631)) (DelimiterValue!15499 (value!234839 List!45631)) (DedentValue!7749 (value!234840 List!45631)) (NewLineValue!7749 (value!234841 List!45631)) (IntegerValue!23247 (value!234842 (_ BitVec 32)) (text!54690 List!45631)) (IntegerValue!23248 (value!234843 Int) (text!54691 List!45631)) (Times!7749) (Or!7749) (Equal!7749) (Minus!7749) (Broken!38749 (value!234844 List!45631)) (And!7749) (Div!7749) (LessEqual!7749) (Mod!7749) (Concat!20173) (Not!7749) (Plus!7749) (SpaceValue!7749 (value!234845 List!45631)) (IntegerValue!23249 (value!234846 Int) (text!54692 List!45631)) (StringLiteralValue!23248 (text!54693 List!45631)) (FloatLiteralValue!15499 (text!54694 List!45631)) (BytesLiteralValue!7749 (value!234847 List!45631)) (CommentValue!15499 (value!234848 List!45631)) (StringLiteralValue!23249 (value!234849 List!45631)) (ErrorTokenValue!7749 (msg!7810 List!45631)) )
))
(declare-datatypes ((TokenValueInjection!14926 0))(
  ( (TokenValueInjection!14927 (toValue!10183 Int) (toChars!10042 Int)) )
))
(declare-datatypes ((Regex!12424 0))(
  ( (ElementMatch!12424 (c!711943 C!25038)) (Concat!20174 (regOne!25360 Regex!12424) (regTwo!25360 Regex!12424)) (EmptyExpr!12424) (Star!12424 (reg!12753 Regex!12424)) (EmptyLang!12424) (Union!12424 (regOne!25361 Regex!12424) (regTwo!25361 Regex!12424)) )
))
(declare-datatypes ((String!52613 0))(
  ( (String!52614 (value!234850 String)) )
))
(declare-datatypes ((Rule!14838 0))(
  ( (Rule!14839 (regex!7519 Regex!12424) (tag!8383 String!52613) (isSeparator!7519 Bool) (transformation!7519 TokenValueInjection!14926)) )
))
(declare-fun r!4097 () Rule!14838)

(declare-fun validRegex!5566 (Regex!12424) Bool)

(assert (=> b!4161576 (= e!2583261 (not (validRegex!5566 (regex!7519 r!4097))))))

(declare-datatypes ((LexerInterface!7112 0))(
  ( (LexerInterfaceExt!7109 (__x!27720 Int)) (Lexer!7110) )
))
(declare-fun thiss!25889 () LexerInterface!7112)

(declare-fun ruleValid!3243 (LexerInterface!7112 Rule!14838) Bool)

(assert (=> b!4161576 (ruleValid!3243 thiss!25889 r!4097)))

(declare-datatypes ((Unit!64600 0))(
  ( (Unit!64601) )
))
(declare-fun lt!1482937 () Unit!64600)

(declare-datatypes ((List!45632 0))(
  ( (Nil!45508) (Cons!45508 (h!50928 Rule!14838) (t!343663 List!45632)) )
))
(declare-fun rules!3820 () List!45632)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2283 (LexerInterface!7112 Rule!14838 List!45632) Unit!64600)

(assert (=> b!4161576 (= lt!1482937 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2283 thiss!25889 r!4097 rules!3820))))

(declare-fun b!4161577 () Bool)

(declare-fun e!2583266 () Bool)

(declare-fun e!2583259 () Bool)

(declare-fun tp!1270259 () Bool)

(assert (=> b!4161577 (= e!2583266 (and e!2583259 tp!1270259))))

(declare-fun b!4161578 () Bool)

(declare-fun e!2583257 () Bool)

(declare-fun tp_is_empty!21811 () Bool)

(declare-fun tp!1270257 () Bool)

(assert (=> b!4161578 (= e!2583257 (and tp_is_empty!21811 tp!1270257))))

(declare-fun res!1704760 () Bool)

(assert (=> start!396548 (=> (not res!1704760) (not e!2583261))))

(assert (=> start!396548 (= res!1704760 (is-Lexer!7110 thiss!25889))))

(assert (=> start!396548 e!2583261))

(declare-fun e!2583265 () Bool)

(assert (=> start!396548 e!2583265))

(assert (=> start!396548 e!2583266))

(declare-fun e!2583262 () Bool)

(assert (=> start!396548 e!2583262))

(assert (=> start!396548 e!2583257))

(assert (=> start!396548 true))

(declare-fun e!2583255 () Bool)

(assert (=> start!396548 e!2583255))

(declare-fun e!2583254 () Bool)

(assert (=> start!396548 e!2583254))

(declare-fun b!4161579 () Bool)

(declare-fun tp!1270258 () Bool)

(assert (=> b!4161579 (= e!2583262 (and tp_is_empty!21811 tp!1270258))))

(declare-fun b!4161580 () Bool)

(declare-fun tp!1270262 () Bool)

(assert (=> b!4161580 (= e!2583265 (and tp_is_empty!21811 tp!1270262))))

(declare-fun b!4161581 () Bool)

(declare-fun res!1704758 () Bool)

(assert (=> b!4161581 (=> (not res!1704758) (not e!2583261))))

(declare-fun isEmpty!26950 (List!45632) Bool)

(assert (=> b!4161581 (= res!1704758 (not (isEmpty!26950 rules!3820)))))

(declare-fun tp!1270260 () Bool)

(declare-fun rBis!161 () Rule!14838)

(declare-fun b!4161582 () Bool)

(declare-fun inv!60027 (String!52613) Bool)

(declare-fun inv!60030 (TokenValueInjection!14926) Bool)

(assert (=> b!4161582 (= e!2583255 (and tp!1270260 (inv!60027 (tag!8383 rBis!161)) (inv!60030 (transformation!7519 rBis!161)) e!2583256))))

(declare-fun e!2583264 () Bool)

(assert (=> b!4161583 (= e!2583264 (and tp!1270266 tp!1270267))))

(declare-fun b!4161584 () Bool)

(declare-fun tp!1270264 () Bool)

(assert (=> b!4161584 (= e!2583254 (and tp!1270264 (inv!60027 (tag!8383 r!4097)) (inv!60030 (transformation!7519 r!4097)) e!2583264))))

(declare-fun b!4161585 () Bool)

(declare-fun res!1704755 () Bool)

(assert (=> b!4161585 (=> (not res!1704755) (not e!2583261))))

(declare-fun contains!9312 (List!45632 Rule!14838) Bool)

(assert (=> b!4161585 (= res!1704755 (contains!9312 rules!3820 rBis!161))))

(declare-fun e!2583258 () Bool)

(assert (=> b!4161586 (= e!2583258 (and tp!1270269 tp!1270263))))

(declare-fun b!4161587 () Bool)

(declare-fun res!1704761 () Bool)

(assert (=> b!4161587 (=> (not res!1704761) (not e!2583261))))

(declare-fun p!2942 () List!45630)

(declare-fun input!3316 () List!45630)

(declare-fun isPrefix!4376 (List!45630 List!45630) Bool)

(assert (=> b!4161587 (= res!1704761 (isPrefix!4376 p!2942 input!3316))))

(declare-fun b!4161588 () Bool)

(declare-fun res!1704756 () Bool)

(assert (=> b!4161588 (=> (not res!1704756) (not e!2583261))))

(assert (=> b!4161588 (= res!1704756 (contains!9312 rules!3820 r!4097))))

(declare-fun b!4161589 () Bool)

(declare-fun res!1704757 () Bool)

(assert (=> b!4161589 (=> (not res!1704757) (not e!2583261))))

(declare-fun rulesInvariant!6325 (LexerInterface!7112 List!45632) Bool)

(assert (=> b!4161589 (= res!1704757 (rulesInvariant!6325 thiss!25889 rules!3820))))

(declare-fun b!4161590 () Bool)

(declare-fun res!1704759 () Bool)

(assert (=> b!4161590 (=> (not res!1704759) (not e!2583261))))

(declare-fun pBis!100 () List!45630)

(assert (=> b!4161590 (= res!1704759 (isPrefix!4376 pBis!100 input!3316))))

(declare-fun tp!1270268 () Bool)

(declare-fun b!4161591 () Bool)

(assert (=> b!4161591 (= e!2583259 (and tp!1270268 (inv!60027 (tag!8383 (h!50928 rules!3820))) (inv!60030 (transformation!7519 (h!50928 rules!3820))) e!2583258))))

(assert (= (and start!396548 res!1704760) b!4161587))

(assert (= (and b!4161587 res!1704761) b!4161590))

(assert (= (and b!4161590 res!1704759) b!4161581))

(assert (= (and b!4161581 res!1704758) b!4161589))

(assert (= (and b!4161589 res!1704757) b!4161588))

(assert (= (and b!4161588 res!1704756) b!4161585))

(assert (= (and b!4161585 res!1704755) b!4161576))

(assert (= (and start!396548 (is-Cons!45506 pBis!100)) b!4161580))

(assert (= b!4161591 b!4161586))

(assert (= b!4161577 b!4161591))

(assert (= (and start!396548 (is-Cons!45508 rules!3820)) b!4161577))

(assert (= (and start!396548 (is-Cons!45506 p!2942)) b!4161579))

(assert (= (and start!396548 (is-Cons!45506 input!3316)) b!4161578))

(assert (= b!4161582 b!4161575))

(assert (= start!396548 b!4161582))

(assert (= b!4161584 b!4161583))

(assert (= start!396548 b!4161584))

(declare-fun m!4754447 () Bool)

(assert (=> b!4161591 m!4754447))

(declare-fun m!4754449 () Bool)

(assert (=> b!4161591 m!4754449))

(declare-fun m!4754451 () Bool)

(assert (=> b!4161585 m!4754451))

(declare-fun m!4754453 () Bool)

(assert (=> b!4161576 m!4754453))

(declare-fun m!4754455 () Bool)

(assert (=> b!4161576 m!4754455))

(declare-fun m!4754457 () Bool)

(assert (=> b!4161576 m!4754457))

(declare-fun m!4754459 () Bool)

(assert (=> b!4161587 m!4754459))

(declare-fun m!4754461 () Bool)

(assert (=> b!4161582 m!4754461))

(declare-fun m!4754463 () Bool)

(assert (=> b!4161582 m!4754463))

(declare-fun m!4754465 () Bool)

(assert (=> b!4161584 m!4754465))

(declare-fun m!4754467 () Bool)

(assert (=> b!4161584 m!4754467))

(declare-fun m!4754469 () Bool)

(assert (=> b!4161588 m!4754469))

(declare-fun m!4754471 () Bool)

(assert (=> b!4161581 m!4754471))

(declare-fun m!4754473 () Bool)

(assert (=> b!4161590 m!4754473))

(declare-fun m!4754475 () Bool)

(assert (=> b!4161589 m!4754475))

(push 1)

(assert (not b!4161580))

(assert (not b!4161585))

(assert (not b!4161577))

(assert tp_is_empty!21811)

(assert (not b!4161576))

(assert (not b!4161589))

(assert b_and!324237)

(assert (not b_next!120581))

(assert (not b_next!120587))

(assert (not b_next!120583))

(assert (not b!4161582))

(assert (not b!4161581))

(assert b_and!324247)

(assert (not b_next!120579))

(assert (not b!4161579))

(assert (not b!4161587))

(assert b_and!324241)

(assert (not b!4161584))

(assert (not b!4161591))

(assert b_and!324245)

(assert b_and!324239)

(assert (not b!4161588))

(assert (not b_next!120589))

(assert (not b_next!120585))

(assert (not b!4161578))

(assert b_and!324243)

(assert (not b!4161590))

(check-sat)

(pop 1)

(push 1)

(assert b_and!324237)

(assert b_and!324243)

(assert (not b_next!120581))

(assert (not b_next!120587))

(assert (not b_next!120583))

(assert b_and!324247)

(assert (not b_next!120579))

(assert b_and!324241)

(assert b_and!324245)

(assert b_and!324239)

(assert (not b_next!120589))

(assert (not b_next!120585))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1230247 () Bool)

(declare-fun res!1704793 () Bool)

(declare-fun e!2583311 () Bool)

(assert (=> d!1230247 (=> (not res!1704793) (not e!2583311))))

(declare-fun rulesValid!2933 (LexerInterface!7112 List!45632) Bool)

(assert (=> d!1230247 (= res!1704793 (rulesValid!2933 thiss!25889 rules!3820))))

(assert (=> d!1230247 (= (rulesInvariant!6325 thiss!25889 rules!3820) e!2583311)))

(declare-fun b!4161645 () Bool)

(declare-datatypes ((List!45636 0))(
  ( (Nil!45512) (Cons!45512 (h!50932 String!52613) (t!343667 List!45636)) )
))
(declare-fun noDuplicateTag!3094 (LexerInterface!7112 List!45632 List!45636) Bool)

(assert (=> b!4161645 (= e!2583311 (noDuplicateTag!3094 thiss!25889 rules!3820 Nil!45512))))

(assert (= (and d!1230247 res!1704793) b!4161645))

(declare-fun m!4754507 () Bool)

(assert (=> d!1230247 m!4754507))

(declare-fun m!4754509 () Bool)

(assert (=> b!4161645 m!4754509))

(assert (=> b!4161589 d!1230247))

(declare-fun d!1230249 () Bool)

(declare-fun lt!1482943 () Bool)

(declare-fun content!7077 (List!45632) (Set Rule!14838))

(assert (=> d!1230249 (= lt!1482943 (set.member r!4097 (content!7077 rules!3820)))))

(declare-fun e!2583317 () Bool)

(assert (=> d!1230249 (= lt!1482943 e!2583317)))

(declare-fun res!1704798 () Bool)

(assert (=> d!1230249 (=> (not res!1704798) (not e!2583317))))

(assert (=> d!1230249 (= res!1704798 (is-Cons!45508 rules!3820))))

(assert (=> d!1230249 (= (contains!9312 rules!3820 r!4097) lt!1482943)))

(declare-fun b!4161650 () Bool)

(declare-fun e!2583316 () Bool)

(assert (=> b!4161650 (= e!2583317 e!2583316)))

(declare-fun res!1704799 () Bool)

(assert (=> b!4161650 (=> res!1704799 e!2583316)))

(assert (=> b!4161650 (= res!1704799 (= (h!50928 rules!3820) r!4097))))

(declare-fun b!4161651 () Bool)

(assert (=> b!4161651 (= e!2583316 (contains!9312 (t!343663 rules!3820) r!4097))))

(assert (= (and d!1230249 res!1704798) b!4161650))

(assert (= (and b!4161650 (not res!1704799)) b!4161651))

(declare-fun m!4754511 () Bool)

(assert (=> d!1230249 m!4754511))

(declare-fun m!4754513 () Bool)

(assert (=> d!1230249 m!4754513))

(declare-fun m!4754515 () Bool)

(assert (=> b!4161651 m!4754515))

(assert (=> b!4161588 d!1230249))

(declare-fun d!1230253 () Bool)

(declare-fun lt!1482944 () Bool)

(assert (=> d!1230253 (= lt!1482944 (set.member rBis!161 (content!7077 rules!3820)))))

(declare-fun e!2583319 () Bool)

(assert (=> d!1230253 (= lt!1482944 e!2583319)))

(declare-fun res!1704800 () Bool)

(assert (=> d!1230253 (=> (not res!1704800) (not e!2583319))))

(assert (=> d!1230253 (= res!1704800 (is-Cons!45508 rules!3820))))

(assert (=> d!1230253 (= (contains!9312 rules!3820 rBis!161) lt!1482944)))

(declare-fun b!4161652 () Bool)

(declare-fun e!2583318 () Bool)

(assert (=> b!4161652 (= e!2583319 e!2583318)))

(declare-fun res!1704801 () Bool)

(assert (=> b!4161652 (=> res!1704801 e!2583318)))

(assert (=> b!4161652 (= res!1704801 (= (h!50928 rules!3820) rBis!161))))

(declare-fun b!4161653 () Bool)

(assert (=> b!4161653 (= e!2583318 (contains!9312 (t!343663 rules!3820) rBis!161))))

(assert (= (and d!1230253 res!1704800) b!4161652))

(assert (= (and b!4161652 (not res!1704801)) b!4161653))

(assert (=> d!1230253 m!4754511))

(declare-fun m!4754517 () Bool)

(assert (=> d!1230253 m!4754517))

(declare-fun m!4754519 () Bool)

(assert (=> b!4161653 m!4754519))

(assert (=> b!4161585 d!1230253))

(declare-fun b!4161675 () Bool)

(declare-fun res!1704824 () Bool)

(declare-fun e!2583337 () Bool)

(assert (=> b!4161675 (=> (not res!1704824) (not e!2583337))))

(declare-fun head!8833 (List!45630) C!25038)

(assert (=> b!4161675 (= res!1704824 (= (head!8833 pBis!100) (head!8833 input!3316)))))

(declare-fun d!1230255 () Bool)

(declare-fun e!2583336 () Bool)

(assert (=> d!1230255 e!2583336))

(declare-fun res!1704823 () Bool)

(assert (=> d!1230255 (=> res!1704823 e!2583336)))

(declare-fun lt!1482950 () Bool)

(assert (=> d!1230255 (= res!1704823 (not lt!1482950))))

(declare-fun e!2583335 () Bool)

(assert (=> d!1230255 (= lt!1482950 e!2583335)))

(declare-fun res!1704825 () Bool)

(assert (=> d!1230255 (=> res!1704825 e!2583335)))

(assert (=> d!1230255 (= res!1704825 (is-Nil!45506 pBis!100))))

(assert (=> d!1230255 (= (isPrefix!4376 pBis!100 input!3316) lt!1482950)))

(declare-fun b!4161674 () Bool)

(assert (=> b!4161674 (= e!2583335 e!2583337)))

(declare-fun res!1704822 () Bool)

(assert (=> b!4161674 (=> (not res!1704822) (not e!2583337))))

(assert (=> b!4161674 (= res!1704822 (not (is-Nil!45506 input!3316)))))

(declare-fun b!4161677 () Bool)

(declare-fun size!33455 (List!45630) Int)

(assert (=> b!4161677 (= e!2583336 (>= (size!33455 input!3316) (size!33455 pBis!100)))))

(declare-fun b!4161676 () Bool)

(declare-fun tail!6680 (List!45630) List!45630)

(assert (=> b!4161676 (= e!2583337 (isPrefix!4376 (tail!6680 pBis!100) (tail!6680 input!3316)))))

(assert (= (and d!1230255 (not res!1704825)) b!4161674))

(assert (= (and b!4161674 res!1704822) b!4161675))

(assert (= (and b!4161675 res!1704824) b!4161676))

(assert (= (and d!1230255 (not res!1704823)) b!4161677))

(declare-fun m!4754535 () Bool)

(assert (=> b!4161675 m!4754535))

(declare-fun m!4754537 () Bool)

(assert (=> b!4161675 m!4754537))

(declare-fun m!4754539 () Bool)

(assert (=> b!4161677 m!4754539))

(declare-fun m!4754541 () Bool)

(assert (=> b!4161677 m!4754541))

(declare-fun m!4754543 () Bool)

(assert (=> b!4161676 m!4754543))

(declare-fun m!4754545 () Bool)

(assert (=> b!4161676 m!4754545))

(assert (=> b!4161676 m!4754543))

(assert (=> b!4161676 m!4754545))

(declare-fun m!4754547 () Bool)

(assert (=> b!4161676 m!4754547))

(assert (=> b!4161590 d!1230255))

(declare-fun d!1230261 () Bool)

(assert (=> d!1230261 (= (inv!60027 (tag!8383 r!4097)) (= (mod (str.len (value!234850 (tag!8383 r!4097))) 2) 0))))

(assert (=> b!4161584 d!1230261))

(declare-fun d!1230263 () Bool)

(declare-fun res!1704831 () Bool)

(declare-fun e!2583343 () Bool)

(assert (=> d!1230263 (=> (not res!1704831) (not e!2583343))))

(declare-fun semiInverseModEq!3265 (Int Int) Bool)

(assert (=> d!1230263 (= res!1704831 (semiInverseModEq!3265 (toChars!10042 (transformation!7519 r!4097)) (toValue!10183 (transformation!7519 r!4097))))))

(assert (=> d!1230263 (= (inv!60030 (transformation!7519 r!4097)) e!2583343)))

(declare-fun b!4161683 () Bool)

(declare-fun equivClasses!3164 (Int Int) Bool)

(assert (=> b!4161683 (= e!2583343 (equivClasses!3164 (toChars!10042 (transformation!7519 r!4097)) (toValue!10183 (transformation!7519 r!4097))))))

(assert (= (and d!1230263 res!1704831) b!4161683))

(declare-fun m!4754553 () Bool)

(assert (=> d!1230263 m!4754553))

(declare-fun m!4754555 () Bool)

(assert (=> b!4161683 m!4754555))

(assert (=> b!4161584 d!1230263))

(declare-fun d!1230267 () Bool)

(assert (=> d!1230267 (= (isEmpty!26950 rules!3820) (is-Nil!45508 rules!3820))))

(assert (=> b!4161581 d!1230267))

(declare-fun d!1230269 () Bool)

(assert (=> d!1230269 (= (inv!60027 (tag!8383 (h!50928 rules!3820))) (= (mod (str.len (value!234850 (tag!8383 (h!50928 rules!3820)))) 2) 0))))

(assert (=> b!4161591 d!1230269))

(declare-fun d!1230271 () Bool)

(declare-fun res!1704832 () Bool)

(declare-fun e!2583344 () Bool)

(assert (=> d!1230271 (=> (not res!1704832) (not e!2583344))))

(assert (=> d!1230271 (= res!1704832 (semiInverseModEq!3265 (toChars!10042 (transformation!7519 (h!50928 rules!3820))) (toValue!10183 (transformation!7519 (h!50928 rules!3820)))))))

(assert (=> d!1230271 (= (inv!60030 (transformation!7519 (h!50928 rules!3820))) e!2583344)))

(declare-fun b!4161684 () Bool)

(assert (=> b!4161684 (= e!2583344 (equivClasses!3164 (toChars!10042 (transformation!7519 (h!50928 rules!3820))) (toValue!10183 (transformation!7519 (h!50928 rules!3820)))))))

(assert (= (and d!1230271 res!1704832) b!4161684))

(declare-fun m!4754557 () Bool)

(assert (=> d!1230271 m!4754557))

(declare-fun m!4754559 () Bool)

(assert (=> b!4161684 m!4754559))

(assert (=> b!4161591 d!1230271))

(declare-fun d!1230273 () Bool)

(assert (=> d!1230273 (= (inv!60027 (tag!8383 rBis!161)) (= (mod (str.len (value!234850 (tag!8383 rBis!161))) 2) 0))))

(assert (=> b!4161582 d!1230273))

(declare-fun d!1230275 () Bool)

(declare-fun res!1704837 () Bool)

(declare-fun e!2583349 () Bool)

(assert (=> d!1230275 (=> (not res!1704837) (not e!2583349))))

(assert (=> d!1230275 (= res!1704837 (semiInverseModEq!3265 (toChars!10042 (transformation!7519 rBis!161)) (toValue!10183 (transformation!7519 rBis!161))))))

(assert (=> d!1230275 (= (inv!60030 (transformation!7519 rBis!161)) e!2583349)))

(declare-fun b!4161689 () Bool)

(assert (=> b!4161689 (= e!2583349 (equivClasses!3164 (toChars!10042 (transformation!7519 rBis!161)) (toValue!10183 (transformation!7519 rBis!161))))))

(assert (= (and d!1230275 res!1704837) b!4161689))

(declare-fun m!4754561 () Bool)

(assert (=> d!1230275 m!4754561))

(declare-fun m!4754563 () Bool)

(assert (=> b!4161689 m!4754563))

(assert (=> b!4161582 d!1230275))

(declare-fun b!4161691 () Bool)

(declare-fun res!1704840 () Bool)

(declare-fun e!2583352 () Bool)

(assert (=> b!4161691 (=> (not res!1704840) (not e!2583352))))

(assert (=> b!4161691 (= res!1704840 (= (head!8833 p!2942) (head!8833 input!3316)))))

(declare-fun d!1230277 () Bool)

(declare-fun e!2583351 () Bool)

(assert (=> d!1230277 e!2583351))

(declare-fun res!1704839 () Bool)

(assert (=> d!1230277 (=> res!1704839 e!2583351)))

(declare-fun lt!1482953 () Bool)

(assert (=> d!1230277 (= res!1704839 (not lt!1482953))))

(declare-fun e!2583350 () Bool)

(assert (=> d!1230277 (= lt!1482953 e!2583350)))

(declare-fun res!1704841 () Bool)

(assert (=> d!1230277 (=> res!1704841 e!2583350)))

(assert (=> d!1230277 (= res!1704841 (is-Nil!45506 p!2942))))

(assert (=> d!1230277 (= (isPrefix!4376 p!2942 input!3316) lt!1482953)))

(declare-fun b!4161690 () Bool)

(assert (=> b!4161690 (= e!2583350 e!2583352)))

(declare-fun res!1704838 () Bool)

(assert (=> b!4161690 (=> (not res!1704838) (not e!2583352))))

(assert (=> b!4161690 (= res!1704838 (not (is-Nil!45506 input!3316)))))

(declare-fun b!4161693 () Bool)

(assert (=> b!4161693 (= e!2583351 (>= (size!33455 input!3316) (size!33455 p!2942)))))

(declare-fun b!4161692 () Bool)

(assert (=> b!4161692 (= e!2583352 (isPrefix!4376 (tail!6680 p!2942) (tail!6680 input!3316)))))

(assert (= (and d!1230277 (not res!1704841)) b!4161690))

(assert (= (and b!4161690 res!1704838) b!4161691))

(assert (= (and b!4161691 res!1704840) b!4161692))

(assert (= (and d!1230277 (not res!1704839)) b!4161693))

(declare-fun m!4754565 () Bool)

(assert (=> b!4161691 m!4754565))

(assert (=> b!4161691 m!4754537))

(assert (=> b!4161693 m!4754539))

(declare-fun m!4754567 () Bool)

(assert (=> b!4161693 m!4754567))

(declare-fun m!4754569 () Bool)

(assert (=> b!4161692 m!4754569))

(assert (=> b!4161692 m!4754545))

(assert (=> b!4161692 m!4754569))

(assert (=> b!4161692 m!4754545))

(declare-fun m!4754571 () Bool)

(assert (=> b!4161692 m!4754571))

(assert (=> b!4161587 d!1230277))

(declare-fun b!4161734 () Bool)

(declare-fun e!2583389 () Bool)

(declare-fun call!290840 () Bool)

(assert (=> b!4161734 (= e!2583389 call!290840)))

(declare-fun b!4161735 () Bool)

(declare-fun res!1704866 () Bool)

(declare-fun e!2583391 () Bool)

(assert (=> b!4161735 (=> (not res!1704866) (not e!2583391))))

(declare-fun call!290839 () Bool)

(assert (=> b!4161735 (= res!1704866 call!290839)))

(declare-fun e!2583385 () Bool)

(assert (=> b!4161735 (= e!2583385 e!2583391)))

(declare-fun d!1230279 () Bool)

(declare-fun res!1704869 () Bool)

(declare-fun e!2583388 () Bool)

(assert (=> d!1230279 (=> res!1704869 e!2583388)))

(assert (=> d!1230279 (= res!1704869 (is-ElementMatch!12424 (regex!7519 r!4097)))))

(assert (=> d!1230279 (= (validRegex!5566 (regex!7519 r!4097)) e!2583388)))

(declare-fun bm!290834 () Bool)

(declare-fun c!711954 () Bool)

(assert (=> bm!290834 (= call!290840 (validRegex!5566 (ite c!711954 (regTwo!25361 (regex!7519 r!4097)) (regTwo!25360 (regex!7519 r!4097)))))))

(declare-fun b!4161736 () Bool)

(assert (=> b!4161736 (= e!2583391 call!290840)))

(declare-fun bm!290835 () Bool)

(declare-fun c!711955 () Bool)

(declare-fun call!290841 () Bool)

(assert (=> bm!290835 (= call!290841 (validRegex!5566 (ite c!711955 (reg!12753 (regex!7519 r!4097)) (ite c!711954 (regOne!25361 (regex!7519 r!4097)) (regOne!25360 (regex!7519 r!4097))))))))

(declare-fun b!4161737 () Bool)

(declare-fun e!2583390 () Bool)

(assert (=> b!4161737 (= e!2583390 call!290841)))

(declare-fun b!4161738 () Bool)

(declare-fun e!2583387 () Bool)

(assert (=> b!4161738 (= e!2583388 e!2583387)))

(assert (=> b!4161738 (= c!711955 (is-Star!12424 (regex!7519 r!4097)))))

(declare-fun b!4161739 () Bool)

(assert (=> b!4161739 (= e!2583387 e!2583390)))

(declare-fun res!1704867 () Bool)

(declare-fun nullable!4356 (Regex!12424) Bool)

(assert (=> b!4161739 (= res!1704867 (not (nullable!4356 (reg!12753 (regex!7519 r!4097)))))))

(assert (=> b!4161739 (=> (not res!1704867) (not e!2583390))))

(declare-fun bm!290836 () Bool)

(assert (=> bm!290836 (= call!290839 call!290841)))

(declare-fun b!4161740 () Bool)

(assert (=> b!4161740 (= e!2583387 e!2583385)))

(assert (=> b!4161740 (= c!711954 (is-Union!12424 (regex!7519 r!4097)))))

(declare-fun b!4161741 () Bool)

(declare-fun res!1704868 () Bool)

(declare-fun e!2583386 () Bool)

(assert (=> b!4161741 (=> res!1704868 e!2583386)))

(assert (=> b!4161741 (= res!1704868 (not (is-Concat!20174 (regex!7519 r!4097))))))

(assert (=> b!4161741 (= e!2583385 e!2583386)))

(declare-fun b!4161742 () Bool)

(assert (=> b!4161742 (= e!2583386 e!2583389)))

(declare-fun res!1704870 () Bool)

(assert (=> b!4161742 (=> (not res!1704870) (not e!2583389))))

(assert (=> b!4161742 (= res!1704870 call!290839)))

(assert (= (and d!1230279 (not res!1704869)) b!4161738))

(assert (= (and b!4161738 c!711955) b!4161739))

(assert (= (and b!4161738 (not c!711955)) b!4161740))

(assert (= (and b!4161739 res!1704867) b!4161737))

(assert (= (and b!4161740 c!711954) b!4161735))

(assert (= (and b!4161740 (not c!711954)) b!4161741))

(assert (= (and b!4161735 res!1704866) b!4161736))

(assert (= (and b!4161741 (not res!1704868)) b!4161742))

(assert (= (and b!4161742 res!1704870) b!4161734))

(assert (= (or b!4161736 b!4161734) bm!290834))

(assert (= (or b!4161735 b!4161742) bm!290836))

(assert (= (or b!4161737 bm!290836) bm!290835))

(declare-fun m!4754583 () Bool)

(assert (=> bm!290834 m!4754583))

(declare-fun m!4754585 () Bool)

(assert (=> bm!290835 m!4754585))

(declare-fun m!4754587 () Bool)

(assert (=> b!4161739 m!4754587))

(assert (=> b!4161576 d!1230279))

(declare-fun d!1230287 () Bool)

(declare-fun res!1704875 () Bool)

(declare-fun e!2583394 () Bool)

(assert (=> d!1230287 (=> (not res!1704875) (not e!2583394))))

(assert (=> d!1230287 (= res!1704875 (validRegex!5566 (regex!7519 r!4097)))))

(assert (=> d!1230287 (= (ruleValid!3243 thiss!25889 r!4097) e!2583394)))

(declare-fun b!4161747 () Bool)

(declare-fun res!1704876 () Bool)

(assert (=> b!4161747 (=> (not res!1704876) (not e!2583394))))

(assert (=> b!4161747 (= res!1704876 (not (nullable!4356 (regex!7519 r!4097))))))

(declare-fun b!4161748 () Bool)

(assert (=> b!4161748 (= e!2583394 (not (= (tag!8383 r!4097) (String!52614 ""))))))

(assert (= (and d!1230287 res!1704875) b!4161747))

(assert (= (and b!4161747 res!1704876) b!4161748))

(assert (=> d!1230287 m!4754453))

(declare-fun m!4754589 () Bool)

(assert (=> b!4161747 m!4754589))

(assert (=> b!4161576 d!1230287))

(declare-fun d!1230289 () Bool)

(assert (=> d!1230289 (ruleValid!3243 thiss!25889 r!4097)))

(declare-fun lt!1482958 () Unit!64600)

(declare-fun choose!25484 (LexerInterface!7112 Rule!14838 List!45632) Unit!64600)

(assert (=> d!1230289 (= lt!1482958 (choose!25484 thiss!25889 r!4097 rules!3820))))

(assert (=> d!1230289 (contains!9312 rules!3820 r!4097)))

(assert (=> d!1230289 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2283 thiss!25889 r!4097 rules!3820) lt!1482958)))

(declare-fun bs!595664 () Bool)

(assert (= bs!595664 d!1230289))

(assert (=> bs!595664 m!4754455))

(declare-fun m!4754597 () Bool)

(assert (=> bs!595664 m!4754597))

(assert (=> bs!595664 m!4754469))

(assert (=> b!4161576 d!1230289))

(declare-fun b!4161762 () Bool)

(declare-fun e!2583404 () Bool)

(declare-fun tp!1270311 () Bool)

(assert (=> b!4161762 (= e!2583404 (and tp_is_empty!21811 tp!1270311))))

(assert (=> b!4161578 (= tp!1270257 e!2583404)))

(assert (= (and b!4161578 (is-Cons!45506 (t!343661 input!3316))) b!4161762))

(declare-fun b!4161763 () Bool)

(declare-fun e!2583405 () Bool)

(declare-fun tp!1270312 () Bool)

(assert (=> b!4161763 (= e!2583405 (and tp_is_empty!21811 tp!1270312))))

(assert (=> b!4161579 (= tp!1270258 e!2583405)))

(assert (= (and b!4161579 (is-Cons!45506 (t!343661 p!2942))) b!4161763))

(declare-fun b!4161781 () Bool)

(declare-fun e!2583410 () Bool)

(declare-fun tp!1270326 () Bool)

(declare-fun tp!1270324 () Bool)

(assert (=> b!4161781 (= e!2583410 (and tp!1270326 tp!1270324))))

(declare-fun b!4161779 () Bool)

(declare-fun tp!1270327 () Bool)

(declare-fun tp!1270323 () Bool)

(assert (=> b!4161779 (= e!2583410 (and tp!1270327 tp!1270323))))

(declare-fun b!4161780 () Bool)

(declare-fun tp!1270325 () Bool)

(assert (=> b!4161780 (= e!2583410 tp!1270325)))

(declare-fun b!4161778 () Bool)

(assert (=> b!4161778 (= e!2583410 tp_is_empty!21811)))

(assert (=> b!4161584 (= tp!1270264 e!2583410)))

(assert (= (and b!4161584 (is-ElementMatch!12424 (regex!7519 r!4097))) b!4161778))

(assert (= (and b!4161584 (is-Concat!20174 (regex!7519 r!4097))) b!4161779))

(assert (= (and b!4161584 (is-Star!12424 (regex!7519 r!4097))) b!4161780))

(assert (= (and b!4161584 (is-Union!12424 (regex!7519 r!4097))) b!4161781))

(declare-fun b!4161785 () Bool)

(declare-fun e!2583411 () Bool)

(declare-fun tp!1270331 () Bool)

(declare-fun tp!1270329 () Bool)

(assert (=> b!4161785 (= e!2583411 (and tp!1270331 tp!1270329))))

(declare-fun b!4161783 () Bool)

(declare-fun tp!1270332 () Bool)

(declare-fun tp!1270328 () Bool)

(assert (=> b!4161783 (= e!2583411 (and tp!1270332 tp!1270328))))

(declare-fun b!4161784 () Bool)

(declare-fun tp!1270330 () Bool)

(assert (=> b!4161784 (= e!2583411 tp!1270330)))

(declare-fun b!4161782 () Bool)

(assert (=> b!4161782 (= e!2583411 tp_is_empty!21811)))

(assert (=> b!4161591 (= tp!1270268 e!2583411)))

(assert (= (and b!4161591 (is-ElementMatch!12424 (regex!7519 (h!50928 rules!3820)))) b!4161782))

(assert (= (and b!4161591 (is-Concat!20174 (regex!7519 (h!50928 rules!3820)))) b!4161783))

(assert (= (and b!4161591 (is-Star!12424 (regex!7519 (h!50928 rules!3820)))) b!4161784))

(assert (= (and b!4161591 (is-Union!12424 (regex!7519 (h!50928 rules!3820)))) b!4161785))

(declare-fun b!4161788 () Bool)

(declare-fun e!2583413 () Bool)

(declare-fun tp!1270333 () Bool)

(assert (=> b!4161788 (= e!2583413 (and tp_is_empty!21811 tp!1270333))))

(assert (=> b!4161580 (= tp!1270262 e!2583413)))

(assert (= (and b!4161580 (is-Cons!45506 (t!343661 pBis!100))) b!4161788))

(declare-fun b!4161799 () Bool)

(declare-fun b_free!119899 () Bool)

(declare-fun b_next!120603 () Bool)

(assert (=> b!4161799 (= b_free!119899 (not b_next!120603))))

(declare-fun tp!1270342 () Bool)

(declare-fun b_and!324261 () Bool)

(assert (=> b!4161799 (= tp!1270342 b_and!324261)))

(declare-fun b_free!119901 () Bool)

(declare-fun b_next!120605 () Bool)

(assert (=> b!4161799 (= b_free!119901 (not b_next!120605))))

(declare-fun tp!1270344 () Bool)

(declare-fun b_and!324263 () Bool)

(assert (=> b!4161799 (= tp!1270344 b_and!324263)))

(declare-fun e!2583423 () Bool)

(assert (=> b!4161799 (= e!2583423 (and tp!1270342 tp!1270344))))

(declare-fun b!4161798 () Bool)

(declare-fun tp!1270343 () Bool)

(declare-fun e!2583424 () Bool)

(assert (=> b!4161798 (= e!2583424 (and tp!1270343 (inv!60027 (tag!8383 (h!50928 (t!343663 rules!3820)))) (inv!60030 (transformation!7519 (h!50928 (t!343663 rules!3820)))) e!2583423))))

(declare-fun b!4161797 () Bool)

(declare-fun e!2583422 () Bool)

(declare-fun tp!1270345 () Bool)

(assert (=> b!4161797 (= e!2583422 (and e!2583424 tp!1270345))))

(assert (=> b!4161577 (= tp!1270259 e!2583422)))

(assert (= b!4161798 b!4161799))

(assert (= b!4161797 b!4161798))

(assert (= (and b!4161577 (is-Cons!45508 (t!343663 rules!3820))) b!4161797))

(declare-fun m!4754601 () Bool)

(assert (=> b!4161798 m!4754601))

(declare-fun m!4754603 () Bool)

(assert (=> b!4161798 m!4754603))

(declare-fun b!4161803 () Bool)

(declare-fun e!2583426 () Bool)

(declare-fun tp!1270349 () Bool)

(declare-fun tp!1270347 () Bool)

(assert (=> b!4161803 (= e!2583426 (and tp!1270349 tp!1270347))))

(declare-fun b!4161801 () Bool)

(declare-fun tp!1270350 () Bool)

(declare-fun tp!1270346 () Bool)

(assert (=> b!4161801 (= e!2583426 (and tp!1270350 tp!1270346))))

(declare-fun b!4161802 () Bool)

(declare-fun tp!1270348 () Bool)

(assert (=> b!4161802 (= e!2583426 tp!1270348)))

(declare-fun b!4161800 () Bool)

(assert (=> b!4161800 (= e!2583426 tp_is_empty!21811)))

(assert (=> b!4161582 (= tp!1270260 e!2583426)))

(assert (= (and b!4161582 (is-ElementMatch!12424 (regex!7519 rBis!161))) b!4161800))

(assert (= (and b!4161582 (is-Concat!20174 (regex!7519 rBis!161))) b!4161801))

(assert (= (and b!4161582 (is-Star!12424 (regex!7519 rBis!161))) b!4161802))

(assert (= (and b!4161582 (is-Union!12424 (regex!7519 rBis!161))) b!4161803))

(push 1)

(assert tp_is_empty!21811)

(assert (not b!4161675))

(assert (not b!4161676))

(assert (not b!4161689))

(assert (not b!4161783))

(assert (not b_next!120587))

(assert (not b!4161691))

(assert (not d!1230249))

(assert (not b!4161693))

(assert (not b!4161780))

(assert (not bm!290835))

(assert (not d!1230253))

(assert (not b!4161762))

(assert (not b!4161763))

(assert (not b!4161653))

(assert (not b!4161801))

(assert (not bm!290834))

(assert (not b!4161788))

(assert (not b!4161684))

(assert (not d!1230271))

(assert (not d!1230275))

(assert b_and!324263)

(assert b_and!324245)

(assert (not b!4161779))

(assert b_and!324239)

(assert (not b!4161677))

(assert (not d!1230263))

(assert (not b_next!120589))

(assert (not b_next!120585))

(assert (not b!4161798))

(assert (not b!4161784))

(assert (not b!4161797))

(assert b_and!324237)

(assert (not b_next!120603))

(assert b_and!324243)

(assert (not b!4161692))

(assert (not d!1230247))

(assert (not b_next!120581))

(assert (not b!4161683))

(assert (not b!4161802))

(assert (not d!1230289))

(assert (not b_next!120605))

(assert (not b_next!120583))

(assert (not b!4161747))

(assert (not b!4161651))

(assert (not d!1230287))

(assert b_and!324261)

(assert b_and!324247)

(assert (not b!4161781))

(assert (not b_next!120579))

(assert (not b!4161645))

(assert (not b!4161803))

(assert (not b!4161785))

(assert b_and!324241)

(assert (not b!4161739))

(check-sat)

(pop 1)

(push 1)

(assert b_and!324263)

(assert b_and!324243)

(assert (not b_next!120581))

(assert (not b_next!120587))

(assert (not b_next!120579))

(assert b_and!324241)

(assert b_and!324245)

(assert b_and!324239)

(assert (not b_next!120589))

(assert (not b_next!120585))

(assert b_and!324237)

(assert (not b_next!120603))

(assert (not b_next!120605))

(assert (not b_next!120583))

(assert b_and!324261)

(assert b_and!324247)

(check-sat)

(pop 1)

