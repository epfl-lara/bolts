; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!386230 () Bool)

(assert start!386230)

(declare-fun b!4084857 () Bool)

(declare-fun b_free!114113 () Bool)

(declare-fun b_next!114817 () Bool)

(assert (=> b!4084857 (= b_free!114113 (not b_next!114817))))

(declare-fun tp!1236844 () Bool)

(declare-fun b_and!314447 () Bool)

(assert (=> b!4084857 (= tp!1236844 b_and!314447)))

(declare-fun b_free!114115 () Bool)

(declare-fun b_next!114819 () Bool)

(assert (=> b!4084857 (= b_free!114115 (not b_next!114819))))

(declare-fun tp!1236840 () Bool)

(declare-fun b_and!314449 () Bool)

(assert (=> b!4084857 (= tp!1236840 b_and!314449)))

(declare-fun b!4084862 () Bool)

(declare-fun b_free!114117 () Bool)

(declare-fun b_next!114821 () Bool)

(assert (=> b!4084862 (= b_free!114117 (not b_next!114821))))

(declare-fun tp!1236837 () Bool)

(declare-fun b_and!314451 () Bool)

(assert (=> b!4084862 (= tp!1236837 b_and!314451)))

(declare-fun b_free!114119 () Bool)

(declare-fun b_next!114823 () Bool)

(assert (=> b!4084862 (= b_free!114119 (not b_next!114823))))

(declare-fun tp!1236843 () Bool)

(declare-fun b_and!314453 () Bool)

(assert (=> b!4084862 (= tp!1236843 b_and!314453)))

(declare-fun b!4084849 () Bool)

(declare-fun e!2535274 () Bool)

(declare-fun e!2535268 () Bool)

(declare-fun tp!1236839 () Bool)

(assert (=> b!4084849 (= e!2535274 (and e!2535268 tp!1236839))))

(declare-fun b!4084850 () Bool)

(declare-fun e!2535261 () Bool)

(declare-fun tp_is_empty!20959 () Bool)

(declare-fun tp!1236842 () Bool)

(assert (=> b!4084850 (= e!2535261 (and tp_is_empty!20959 tp!1236842))))

(declare-fun b!4084851 () Bool)

(declare-fun e!2535270 () Bool)

(declare-fun e!2535266 () Bool)

(assert (=> b!4084851 (= e!2535270 (not e!2535266))))

(declare-fun res!1669022 () Bool)

(assert (=> b!4084851 (=> res!1669022 e!2535266)))

(declare-datatypes ((List!43910 0))(
  ( (Nil!43786) (Cons!43786 (h!49206 (_ BitVec 16)) (t!338045 List!43910)) )
))
(declare-datatypes ((TokenValue!7303 0))(
  ( (FloatLiteralValue!14606 (text!51566 List!43910)) (TokenValueExt!7302 (__x!26823 Int)) (Broken!36515 (value!222208 List!43910)) (Object!7426) (End!7303) (Def!7303) (Underscore!7303) (Match!7303) (Else!7303) (Error!7303) (Case!7303) (If!7303) (Extends!7303) (Abstract!7303) (Class!7303) (Val!7303) (DelimiterValue!14606 (del!7363 List!43910)) (KeywordValue!7309 (value!222209 List!43910)) (CommentValue!14606 (value!222210 List!43910)) (WhitespaceValue!14606 (value!222211 List!43910)) (IndentationValue!7303 (value!222212 List!43910)) (String!50266) (Int32!7303) (Broken!36516 (value!222213 List!43910)) (Boolean!7304) (Unit!63309) (OperatorValue!7306 (op!7363 List!43910)) (IdentifierValue!14606 (value!222214 List!43910)) (IdentifierValue!14607 (value!222215 List!43910)) (WhitespaceValue!14607 (value!222216 List!43910)) (True!14606) (False!14606) (Broken!36517 (value!222217 List!43910)) (Broken!36518 (value!222218 List!43910)) (True!14607) (RightBrace!7303) (RightBracket!7303) (Colon!7303) (Null!7303) (Comma!7303) (LeftBracket!7303) (False!14607) (LeftBrace!7303) (ImaginaryLiteralValue!7303 (text!51567 List!43910)) (StringLiteralValue!21909 (value!222219 List!43910)) (EOFValue!7303 (value!222220 List!43910)) (IdentValue!7303 (value!222221 List!43910)) (DelimiterValue!14607 (value!222222 List!43910)) (DedentValue!7303 (value!222223 List!43910)) (NewLineValue!7303 (value!222224 List!43910)) (IntegerValue!21909 (value!222225 (_ BitVec 32)) (text!51568 List!43910)) (IntegerValue!21910 (value!222226 Int) (text!51569 List!43910)) (Times!7303) (Or!7303) (Equal!7303) (Minus!7303) (Broken!36519 (value!222227 List!43910)) (And!7303) (Div!7303) (LessEqual!7303) (Mod!7303) (Concat!19281) (Not!7303) (Plus!7303) (SpaceValue!7303 (value!222228 List!43910)) (IntegerValue!21911 (value!222229 Int) (text!51570 List!43910)) (StringLiteralValue!21910 (text!51571 List!43910)) (FloatLiteralValue!14607 (text!51572 List!43910)) (BytesLiteralValue!7303 (value!222230 List!43910)) (CommentValue!14607 (value!222231 List!43910)) (StringLiteralValue!21911 (value!222232 List!43910)) (ErrorTokenValue!7303 (msg!7364 List!43910)) )
))
(declare-datatypes ((C!24142 0))(
  ( (C!24143 (val!14181 Int)) )
))
(declare-datatypes ((Regex!11978 0))(
  ( (ElementMatch!11978 (c!704225 C!24142)) (Concat!19282 (regOne!24468 Regex!11978) (regTwo!24468 Regex!11978)) (EmptyExpr!11978) (Star!11978 (reg!12307 Regex!11978)) (EmptyLang!11978) (Union!11978 (regOne!24469 Regex!11978) (regTwo!24469 Regex!11978)) )
))
(declare-datatypes ((String!50267 0))(
  ( (String!50268 (value!222233 String)) )
))
(declare-datatypes ((List!43911 0))(
  ( (Nil!43787) (Cons!43787 (h!49207 C!24142) (t!338046 List!43911)) )
))
(declare-datatypes ((IArray!26573 0))(
  ( (IArray!26574 (innerList!13344 List!43911)) )
))
(declare-datatypes ((Conc!13284 0))(
  ( (Node!13284 (left!32911 Conc!13284) (right!33241 Conc!13284) (csize!26798 Int) (cheight!13495 Int)) (Leaf!20536 (xs!16590 IArray!26573) (csize!26799 Int)) (Empty!13284) )
))
(declare-datatypes ((BalanceConc!26162 0))(
  ( (BalanceConc!26163 (c!704226 Conc!13284)) )
))
(declare-datatypes ((TokenValueInjection!14034 0))(
  ( (TokenValueInjection!14035 (toValue!9653 Int) (toChars!9512 Int)) )
))
(declare-datatypes ((Rule!13946 0))(
  ( (Rule!13947 (regex!7073 Regex!11978) (tag!7933 String!50267) (isSeparator!7073 Bool) (transformation!7073 TokenValueInjection!14034)) )
))
(declare-fun r!4213 () Rule!13946)

(declare-fun p!2988 () List!43911)

(declare-fun matchR!5919 (Regex!11978 List!43911) Bool)

(assert (=> b!4084851 (= res!1669022 (not (matchR!5919 (regex!7073 r!4213) p!2988)))))

(declare-datatypes ((LexerInterface!6662 0))(
  ( (LexerInterfaceExt!6659 (__x!26824 Int)) (Lexer!6660) )
))
(declare-fun thiss!26199 () LexerInterface!6662)

(declare-fun ruleValid!2993 (LexerInterface!6662 Rule!13946) Bool)

(assert (=> b!4084851 (ruleValid!2993 thiss!26199 r!4213)))

(declare-datatypes ((List!43912 0))(
  ( (Nil!43788) (Cons!43788 (h!49208 Rule!13946) (t!338047 List!43912)) )
))
(declare-fun rules!3870 () List!43912)

(declare-datatypes ((Unit!63310 0))(
  ( (Unit!63311) )
))
(declare-fun lt!1461076 () Unit!63310)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2059 (LexerInterface!6662 Rule!13946 List!43912) Unit!63310)

(assert (=> b!4084851 (= lt!1461076 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2059 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4084852 () Bool)

(declare-fun res!1669030 () Bool)

(declare-fun e!2535271 () Bool)

(assert (=> b!4084852 (=> (not res!1669030) (not e!2535271))))

(declare-fun rulesInvariant!6005 (LexerInterface!6662 List!43912) Bool)

(assert (=> b!4084852 (= res!1669030 (rulesInvariant!6005 thiss!26199 rules!3870))))

(declare-fun tp!1236846 () Bool)

(declare-fun e!2535264 () Bool)

(declare-fun b!4084853 () Bool)

(declare-fun inv!58466 (String!50267) Bool)

(declare-fun inv!58469 (TokenValueInjection!14034) Bool)

(assert (=> b!4084853 (= e!2535268 (and tp!1236846 (inv!58466 (tag!7933 (h!49208 rules!3870))) (inv!58469 (transformation!7073 (h!49208 rules!3870))) e!2535264))))

(declare-fun b!4084854 () Bool)

(declare-fun res!1669026 () Bool)

(assert (=> b!4084854 (=> (not res!1669026) (not e!2535271))))

(declare-fun isEmpty!26176 (List!43911) Bool)

(assert (=> b!4084854 (= res!1669026 (not (isEmpty!26176 p!2988)))))

(declare-fun b!4084855 () Bool)

(declare-fun e!2535269 () Bool)

(assert (=> b!4084855 (= e!2535266 e!2535269)))

(declare-fun res!1669029 () Bool)

(assert (=> b!4084855 (=> res!1669029 e!2535269)))

(declare-fun isEmpty!26177 (List!43912) Bool)

(assert (=> b!4084855 (= res!1669029 (not (isEmpty!26177 (t!338047 rules!3870))))))

(assert (=> b!4084855 (rulesInvariant!6005 thiss!26199 (t!338047 rules!3870))))

(declare-fun lt!1461072 () Unit!63310)

(declare-fun lemmaInvariantOnRulesThenOnTail!777 (LexerInterface!6662 Rule!13946 List!43912) Unit!63310)

(assert (=> b!4084855 (= lt!1461072 (lemmaInvariantOnRulesThenOnTail!777 thiss!26199 (h!49208 rules!3870) (t!338047 rules!3870)))))

(declare-fun b!4084856 () Bool)

(assert (=> b!4084856 (= e!2535271 e!2535270)))

(declare-fun res!1669023 () Bool)

(assert (=> b!4084856 (=> (not res!1669023) (not e!2535270))))

(declare-datatypes ((Token!13272 0))(
  ( (Token!13273 (value!222234 TokenValue!7303) (rule!10199 Rule!13946) (size!32702 Int) (originalCharacters!7667 List!43911)) )
))
(declare-datatypes ((tuple2!42726 0))(
  ( (tuple2!42727 (_1!24497 Token!13272) (_2!24497 List!43911)) )
))
(declare-datatypes ((Option!9479 0))(
  ( (None!9478) (Some!9478 (v!39950 tuple2!42726)) )
))
(declare-fun lt!1461074 () Option!9479)

(declare-fun input!3411 () List!43911)

(declare-fun maxPrefix!3952 (LexerInterface!6662 List!43912 List!43911) Option!9479)

(assert (=> b!4084856 (= res!1669023 (= (maxPrefix!3952 thiss!26199 rules!3870 input!3411) lt!1461074))))

(declare-fun suffix!1518 () List!43911)

(declare-fun lt!1461075 () BalanceConc!26162)

(declare-fun apply!10256 (TokenValueInjection!14034 BalanceConc!26162) TokenValue!7303)

(declare-fun size!32703 (List!43911) Int)

(assert (=> b!4084856 (= lt!1461074 (Some!9478 (tuple2!42727 (Token!13273 (apply!10256 (transformation!7073 r!4213) lt!1461075) r!4213 (size!32703 p!2988) p!2988) suffix!1518)))))

(declare-fun lt!1461073 () Unit!63310)

(declare-fun lemmaSemiInverse!2040 (TokenValueInjection!14034 BalanceConc!26162) Unit!63310)

(assert (=> b!4084856 (= lt!1461073 (lemmaSemiInverse!2040 (transformation!7073 r!4213) lt!1461075))))

(declare-fun seqFromList!5290 (List!43911) BalanceConc!26162)

(assert (=> b!4084856 (= lt!1461075 (seqFromList!5290 p!2988))))

(assert (=> b!4084857 (= e!2535264 (and tp!1236844 tp!1236840))))

(declare-fun b!4084858 () Bool)

(declare-fun res!1669024 () Bool)

(assert (=> b!4084858 (=> (not res!1669024) (not e!2535271))))

(declare-fun contains!8748 (List!43912 Rule!13946) Bool)

(assert (=> b!4084858 (= res!1669024 (contains!8748 rules!3870 r!4213))))

(declare-fun b!4084859 () Bool)

(declare-fun res!1669027 () Bool)

(assert (=> b!4084859 (=> (not res!1669027) (not e!2535271))))

(declare-fun ++!11479 (List!43911 List!43911) List!43911)

(assert (=> b!4084859 (= res!1669027 (= input!3411 (++!11479 p!2988 suffix!1518)))))

(declare-fun b!4084860 () Bool)

(declare-fun res!1669028 () Bool)

(assert (=> b!4084860 (=> res!1669028 e!2535266)))

(assert (=> b!4084860 (= res!1669028 (or (not (is-Cons!43788 rules!3870)) (not (= (h!49208 rules!3870) r!4213))))))

(declare-fun b!4084861 () Bool)

(declare-fun e!2535267 () Bool)

(declare-fun tp!1236841 () Bool)

(assert (=> b!4084861 (= e!2535267 (and tp_is_empty!20959 tp!1236841))))

(declare-fun res!1669021 () Bool)

(assert (=> start!386230 (=> (not res!1669021) (not e!2535271))))

(assert (=> start!386230 (= res!1669021 (is-Lexer!6660 thiss!26199))))

(assert (=> start!386230 e!2535271))

(assert (=> start!386230 true))

(declare-fun e!2535272 () Bool)

(assert (=> start!386230 e!2535272))

(assert (=> start!386230 e!2535274))

(assert (=> start!386230 e!2535267))

(assert (=> start!386230 e!2535261))

(declare-fun e!2535262 () Bool)

(assert (=> start!386230 e!2535262))

(declare-fun e!2535273 () Bool)

(assert (=> b!4084862 (= e!2535273 (and tp!1236837 tp!1236843))))

(declare-fun b!4084863 () Bool)

(declare-fun tp!1236838 () Bool)

(assert (=> b!4084863 (= e!2535262 (and tp!1236838 (inv!58466 (tag!7933 r!4213)) (inv!58469 (transformation!7073 r!4213)) e!2535273))))

(declare-fun b!4084864 () Bool)

(declare-fun maxPrefixOneRule!2938 (LexerInterface!6662 Rule!13946 List!43911) Option!9479)

(assert (=> b!4084864 (= e!2535269 (= (maxPrefixOneRule!2938 thiss!26199 r!4213 input!3411) lt!1461074))))

(declare-fun b!4084865 () Bool)

(declare-fun tp!1236845 () Bool)

(assert (=> b!4084865 (= e!2535272 (and tp_is_empty!20959 tp!1236845))))

(declare-fun b!4084866 () Bool)

(declare-fun res!1669025 () Bool)

(assert (=> b!4084866 (=> (not res!1669025) (not e!2535271))))

(assert (=> b!4084866 (= res!1669025 (not (isEmpty!26177 rules!3870)))))

(assert (= (and start!386230 res!1669021) b!4084866))

(assert (= (and b!4084866 res!1669025) b!4084852))

(assert (= (and b!4084852 res!1669030) b!4084858))

(assert (= (and b!4084858 res!1669024) b!4084859))

(assert (= (and b!4084859 res!1669027) b!4084854))

(assert (= (and b!4084854 res!1669026) b!4084856))

(assert (= (and b!4084856 res!1669023) b!4084851))

(assert (= (and b!4084851 (not res!1669022)) b!4084860))

(assert (= (and b!4084860 (not res!1669028)) b!4084855))

(assert (= (and b!4084855 (not res!1669029)) b!4084864))

(assert (= (and start!386230 (is-Cons!43787 suffix!1518)) b!4084865))

(assert (= b!4084853 b!4084857))

(assert (= b!4084849 b!4084853))

(assert (= (and start!386230 (is-Cons!43788 rules!3870)) b!4084849))

(assert (= (and start!386230 (is-Cons!43787 p!2988)) b!4084861))

(assert (= (and start!386230 (is-Cons!43787 input!3411)) b!4084850))

(assert (= b!4084863 b!4084862))

(assert (= start!386230 b!4084863))

(declare-fun m!4691773 () Bool)

(assert (=> b!4084852 m!4691773))

(declare-fun m!4691775 () Bool)

(assert (=> b!4084858 m!4691775))

(declare-fun m!4691777 () Bool)

(assert (=> b!4084856 m!4691777))

(declare-fun m!4691779 () Bool)

(assert (=> b!4084856 m!4691779))

(declare-fun m!4691781 () Bool)

(assert (=> b!4084856 m!4691781))

(declare-fun m!4691783 () Bool)

(assert (=> b!4084856 m!4691783))

(declare-fun m!4691785 () Bool)

(assert (=> b!4084856 m!4691785))

(declare-fun m!4691787 () Bool)

(assert (=> b!4084863 m!4691787))

(declare-fun m!4691789 () Bool)

(assert (=> b!4084863 m!4691789))

(declare-fun m!4691791 () Bool)

(assert (=> b!4084851 m!4691791))

(declare-fun m!4691793 () Bool)

(assert (=> b!4084851 m!4691793))

(declare-fun m!4691795 () Bool)

(assert (=> b!4084851 m!4691795))

(declare-fun m!4691797 () Bool)

(assert (=> b!4084855 m!4691797))

(declare-fun m!4691799 () Bool)

(assert (=> b!4084855 m!4691799))

(declare-fun m!4691801 () Bool)

(assert (=> b!4084855 m!4691801))

(declare-fun m!4691803 () Bool)

(assert (=> b!4084859 m!4691803))

(declare-fun m!4691805 () Bool)

(assert (=> b!4084866 m!4691805))

(declare-fun m!4691807 () Bool)

(assert (=> b!4084864 m!4691807))

(declare-fun m!4691809 () Bool)

(assert (=> b!4084853 m!4691809))

(declare-fun m!4691811 () Bool)

(assert (=> b!4084853 m!4691811))

(declare-fun m!4691813 () Bool)

(assert (=> b!4084854 m!4691813))

(push 1)

(assert b_and!314453)

(assert b_and!314451)

(assert b_and!314447)

(assert (not b!4084865))

(assert (not b!4084863))

(assert (not b!4084852))

(assert (not b!4084856))

(assert (not b!4084851))

(assert (not b!4084858))

(assert (not b!4084850))

(assert (not b!4084864))

(assert (not b!4084855))

(assert (not b!4084866))

(assert b_and!314449)

(assert (not b!4084859))

(assert (not b_next!114823))

(assert (not b!4084853))

(assert (not b_next!114819))

(assert tp_is_empty!20959)

(assert (not b!4084849))

(assert (not b_next!114817))

(assert (not b_next!114821))

(assert (not b!4084854))

(assert (not b!4084861))

(check-sat)

(pop 1)

(push 1)

(assert b_and!314453)

(assert b_and!314449)

(assert b_and!314451)

(assert b_and!314447)

(assert (not b_next!114823))

(assert (not b_next!114819))

(assert (not b_next!114817))

(assert (not b_next!114821))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1212984 () Bool)

(assert (=> d!1212984 (= (isEmpty!26177 (t!338047 rules!3870)) (is-Nil!43788 (t!338047 rules!3870)))))

(assert (=> b!4084855 d!1212984))

(declare-fun d!1212986 () Bool)

(declare-fun res!1669067 () Bool)

(declare-fun e!2535319 () Bool)

(assert (=> d!1212986 (=> (not res!1669067) (not e!2535319))))

(declare-fun rulesValid!2767 (LexerInterface!6662 List!43912) Bool)

(assert (=> d!1212986 (= res!1669067 (rulesValid!2767 thiss!26199 (t!338047 rules!3870)))))

(assert (=> d!1212986 (= (rulesInvariant!6005 thiss!26199 (t!338047 rules!3870)) e!2535319)))

(declare-fun b!4084923 () Bool)

(declare-datatypes ((List!43916 0))(
  ( (Nil!43792) (Cons!43792 (h!49212 String!50267) (t!338067 List!43916)) )
))
(declare-fun noDuplicateTag!2768 (LexerInterface!6662 List!43912 List!43916) Bool)

(assert (=> b!4084923 (= e!2535319 (noDuplicateTag!2768 thiss!26199 (t!338047 rules!3870) Nil!43792))))

(assert (= (and d!1212986 res!1669067) b!4084923))

(declare-fun m!4691857 () Bool)

(assert (=> d!1212986 m!4691857))

(declare-fun m!4691859 () Bool)

(assert (=> b!4084923 m!4691859))

(assert (=> b!4084855 d!1212986))

(declare-fun d!1212988 () Bool)

(assert (=> d!1212988 (rulesInvariant!6005 thiss!26199 (t!338047 rules!3870))))

(declare-fun lt!1461094 () Unit!63310)

(declare-fun choose!24936 (LexerInterface!6662 Rule!13946 List!43912) Unit!63310)

(assert (=> d!1212988 (= lt!1461094 (choose!24936 thiss!26199 (h!49208 rules!3870) (t!338047 rules!3870)))))

(assert (=> d!1212988 (rulesInvariant!6005 thiss!26199 (Cons!43788 (h!49208 rules!3870) (t!338047 rules!3870)))))

(assert (=> d!1212988 (= (lemmaInvariantOnRulesThenOnTail!777 thiss!26199 (h!49208 rules!3870) (t!338047 rules!3870)) lt!1461094)))

(declare-fun bs!593039 () Bool)

(assert (= bs!593039 d!1212988))

(assert (=> bs!593039 m!4691799))

(declare-fun m!4691861 () Bool)

(assert (=> bs!593039 m!4691861))

(declare-fun m!4691863 () Bool)

(assert (=> bs!593039 m!4691863))

(assert (=> b!4084855 d!1212988))

(declare-fun d!1212990 () Bool)

(assert (=> d!1212990 (= (isEmpty!26177 rules!3870) (is-Nil!43788 rules!3870))))

(assert (=> b!4084866 d!1212990))

(declare-fun b!4084955 () Bool)

(declare-fun e!2535338 () Bool)

(declare-fun head!8632 (List!43911) C!24142)

(assert (=> b!4084955 (= e!2535338 (= (head!8632 p!2988) (c!704225 (regex!7073 r!4213))))))

(declare-fun b!4084956 () Bool)

(declare-fun e!2535341 () Bool)

(declare-fun e!2535337 () Bool)

(assert (=> b!4084956 (= e!2535341 e!2535337)))

(declare-fun res!1669087 () Bool)

(assert (=> b!4084956 (=> res!1669087 e!2535337)))

(declare-fun call!288791 () Bool)

(assert (=> b!4084956 (= res!1669087 call!288791)))

(declare-fun b!4084957 () Bool)

(declare-fun e!2535343 () Bool)

(declare-fun lt!1461097 () Bool)

(assert (=> b!4084957 (= e!2535343 (not lt!1461097))))

(declare-fun b!4084958 () Bool)

(assert (=> b!4084958 (= e!2535337 (not (= (head!8632 p!2988) (c!704225 (regex!7073 r!4213)))))))

(declare-fun b!4084959 () Bool)

(declare-fun res!1669093 () Bool)

(declare-fun e!2535339 () Bool)

(assert (=> b!4084959 (=> res!1669093 e!2535339)))

(assert (=> b!4084959 (= res!1669093 e!2535338)))

(declare-fun res!1669090 () Bool)

(assert (=> b!4084959 (=> (not res!1669090) (not e!2535338))))

(assert (=> b!4084959 (= res!1669090 lt!1461097)))

(declare-fun b!4084960 () Bool)

(declare-fun res!1669089 () Bool)

(assert (=> b!4084960 (=> res!1669089 e!2535339)))

(assert (=> b!4084960 (= res!1669089 (not (is-ElementMatch!11978 (regex!7073 r!4213))))))

(assert (=> b!4084960 (= e!2535343 e!2535339)))

(declare-fun b!4084961 () Bool)

(declare-fun e!2535342 () Bool)

(assert (=> b!4084961 (= e!2535342 (= lt!1461097 call!288791))))

(declare-fun b!4084962 () Bool)

(declare-fun e!2535340 () Bool)

(declare-fun nullable!4221 (Regex!11978) Bool)

(assert (=> b!4084962 (= e!2535340 (nullable!4221 (regex!7073 r!4213)))))

(declare-fun b!4084963 () Bool)

(declare-fun derivativeStep!3622 (Regex!11978 C!24142) Regex!11978)

(declare-fun tail!6366 (List!43911) List!43911)

(assert (=> b!4084963 (= e!2535340 (matchR!5919 (derivativeStep!3622 (regex!7073 r!4213) (head!8632 p!2988)) (tail!6366 p!2988)))))

(declare-fun d!1212992 () Bool)

(assert (=> d!1212992 e!2535342))

(declare-fun c!704237 () Bool)

(assert (=> d!1212992 (= c!704237 (is-EmptyExpr!11978 (regex!7073 r!4213)))))

(assert (=> d!1212992 (= lt!1461097 e!2535340)))

(declare-fun c!704238 () Bool)

(assert (=> d!1212992 (= c!704238 (isEmpty!26176 p!2988))))

(declare-fun validRegex!5421 (Regex!11978) Bool)

(assert (=> d!1212992 (validRegex!5421 (regex!7073 r!4213))))

(assert (=> d!1212992 (= (matchR!5919 (regex!7073 r!4213) p!2988) lt!1461097)))

(declare-fun b!4084964 () Bool)

(declare-fun res!1669088 () Bool)

(assert (=> b!4084964 (=> (not res!1669088) (not e!2535338))))

(assert (=> b!4084964 (= res!1669088 (isEmpty!26176 (tail!6366 p!2988)))))

(declare-fun b!4084965 () Bool)

(declare-fun res!1669091 () Bool)

(assert (=> b!4084965 (=> (not res!1669091) (not e!2535338))))

(assert (=> b!4084965 (= res!1669091 (not call!288791))))

(declare-fun b!4084966 () Bool)

(assert (=> b!4084966 (= e!2535342 e!2535343)))

(declare-fun c!704236 () Bool)

(assert (=> b!4084966 (= c!704236 (is-EmptyLang!11978 (regex!7073 r!4213)))))

(declare-fun bm!288786 () Bool)

(assert (=> bm!288786 (= call!288791 (isEmpty!26176 p!2988))))

(declare-fun b!4084967 () Bool)

(declare-fun res!1669092 () Bool)

(assert (=> b!4084967 (=> res!1669092 e!2535337)))

(assert (=> b!4084967 (= res!1669092 (not (isEmpty!26176 (tail!6366 p!2988))))))

(declare-fun b!4084968 () Bool)

(assert (=> b!4084968 (= e!2535339 e!2535341)))

(declare-fun res!1669094 () Bool)

(assert (=> b!4084968 (=> (not res!1669094) (not e!2535341))))

(assert (=> b!4084968 (= res!1669094 (not lt!1461097))))

(assert (= (and d!1212992 c!704238) b!4084962))

(assert (= (and d!1212992 (not c!704238)) b!4084963))

(assert (= (and d!1212992 c!704237) b!4084961))

(assert (= (and d!1212992 (not c!704237)) b!4084966))

(assert (= (and b!4084966 c!704236) b!4084957))

(assert (= (and b!4084966 (not c!704236)) b!4084960))

(assert (= (and b!4084960 (not res!1669089)) b!4084959))

(assert (= (and b!4084959 res!1669090) b!4084965))

(assert (= (and b!4084965 res!1669091) b!4084964))

(assert (= (and b!4084964 res!1669088) b!4084955))

(assert (= (and b!4084959 (not res!1669093)) b!4084968))

(assert (= (and b!4084968 res!1669094) b!4084956))

(assert (= (and b!4084956 (not res!1669087)) b!4084967))

(assert (= (and b!4084967 (not res!1669092)) b!4084958))

(assert (= (or b!4084961 b!4084956 b!4084965) bm!288786))

(declare-fun m!4691869 () Bool)

(assert (=> b!4084962 m!4691869))

(declare-fun m!4691871 () Bool)

(assert (=> b!4084955 m!4691871))

(assert (=> d!1212992 m!4691813))

(declare-fun m!4691873 () Bool)

(assert (=> d!1212992 m!4691873))

(assert (=> b!4084963 m!4691871))

(assert (=> b!4084963 m!4691871))

(declare-fun m!4691875 () Bool)

(assert (=> b!4084963 m!4691875))

(declare-fun m!4691877 () Bool)

(assert (=> b!4084963 m!4691877))

(assert (=> b!4084963 m!4691875))

(assert (=> b!4084963 m!4691877))

(declare-fun m!4691879 () Bool)

(assert (=> b!4084963 m!4691879))

(assert (=> b!4084967 m!4691877))

(assert (=> b!4084967 m!4691877))

(declare-fun m!4691881 () Bool)

(assert (=> b!4084967 m!4691881))

(assert (=> b!4084958 m!4691871))

(assert (=> b!4084964 m!4691877))

(assert (=> b!4084964 m!4691877))

(assert (=> b!4084964 m!4691881))

(assert (=> bm!288786 m!4691813))

(assert (=> b!4084851 d!1212992))

(declare-fun d!1213000 () Bool)

(declare-fun res!1669100 () Bool)

(declare-fun e!2535347 () Bool)

(assert (=> d!1213000 (=> (not res!1669100) (not e!2535347))))

(assert (=> d!1213000 (= res!1669100 (validRegex!5421 (regex!7073 r!4213)))))

(assert (=> d!1213000 (= (ruleValid!2993 thiss!26199 r!4213) e!2535347)))

(declare-fun b!4084974 () Bool)

(declare-fun res!1669101 () Bool)

(assert (=> b!4084974 (=> (not res!1669101) (not e!2535347))))

(assert (=> b!4084974 (= res!1669101 (not (nullable!4221 (regex!7073 r!4213))))))

(declare-fun b!4084975 () Bool)

(assert (=> b!4084975 (= e!2535347 (not (= (tag!7933 r!4213) (String!50268 ""))))))

(assert (= (and d!1213000 res!1669100) b!4084974))

(assert (= (and b!4084974 res!1669101) b!4084975))

(assert (=> d!1213000 m!4691873))

(assert (=> b!4084974 m!4691869))

(assert (=> b!4084851 d!1213000))

(declare-fun d!1213006 () Bool)

(assert (=> d!1213006 (ruleValid!2993 thiss!26199 r!4213)))

(declare-fun lt!1461103 () Unit!63310)

(declare-fun choose!24937 (LexerInterface!6662 Rule!13946 List!43912) Unit!63310)

(assert (=> d!1213006 (= lt!1461103 (choose!24937 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1213006 (contains!8748 rules!3870 r!4213)))

(assert (=> d!1213006 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2059 thiss!26199 r!4213 rules!3870) lt!1461103)))

(declare-fun bs!593041 () Bool)

(assert (= bs!593041 d!1213006))

(assert (=> bs!593041 m!4691793))

(declare-fun m!4691891 () Bool)

(assert (=> bs!593041 m!4691891))

(assert (=> bs!593041 m!4691775))

(assert (=> b!4084851 d!1213006))

(declare-fun b!4084994 () Bool)

(declare-fun res!1669122 () Bool)

(declare-fun e!2535355 () Bool)

(assert (=> b!4084994 (=> (not res!1669122) (not e!2535355))))

(declare-fun lt!1461116 () Option!9479)

(declare-fun get!14360 (Option!9479) tuple2!42726)

(assert (=> b!4084994 (= res!1669122 (< (size!32703 (_2!24497 (get!14360 lt!1461116))) (size!32703 input!3411)))))

(declare-fun b!4084995 () Bool)

(declare-fun res!1669117 () Bool)

(assert (=> b!4084995 (=> (not res!1669117) (not e!2535355))))

(assert (=> b!4084995 (= res!1669117 (= (value!222234 (_1!24497 (get!14360 lt!1461116))) (apply!10256 (transformation!7073 (rule!10199 (_1!24497 (get!14360 lt!1461116)))) (seqFromList!5290 (originalCharacters!7667 (_1!24497 (get!14360 lt!1461116)))))))))

(declare-fun call!288794 () Option!9479)

(declare-fun bm!288789 () Bool)

(assert (=> bm!288789 (= call!288794 (maxPrefixOneRule!2938 thiss!26199 (h!49208 rules!3870) input!3411))))

(declare-fun b!4084996 () Bool)

(declare-fun res!1669120 () Bool)

(assert (=> b!4084996 (=> (not res!1669120) (not e!2535355))))

(declare-fun list!16263 (BalanceConc!26162) List!43911)

(declare-fun charsOf!4839 (Token!13272) BalanceConc!26162)

(assert (=> b!4084996 (= res!1669120 (= (++!11479 (list!16263 (charsOf!4839 (_1!24497 (get!14360 lt!1461116)))) (_2!24497 (get!14360 lt!1461116))) input!3411))))

(declare-fun b!4084997 () Bool)

(declare-fun e!2535356 () Option!9479)

(assert (=> b!4084997 (= e!2535356 call!288794)))

(declare-fun b!4084998 () Bool)

(declare-fun lt!1461114 () Option!9479)

(declare-fun lt!1461115 () Option!9479)

(assert (=> b!4084998 (= e!2535356 (ite (and (is-None!9478 lt!1461114) (is-None!9478 lt!1461115)) None!9478 (ite (is-None!9478 lt!1461115) lt!1461114 (ite (is-None!9478 lt!1461114) lt!1461115 (ite (>= (size!32702 (_1!24497 (v!39950 lt!1461114))) (size!32702 (_1!24497 (v!39950 lt!1461115)))) lt!1461114 lt!1461115)))))))

(assert (=> b!4084998 (= lt!1461114 call!288794)))

(assert (=> b!4084998 (= lt!1461115 (maxPrefix!3952 thiss!26199 (t!338047 rules!3870) input!3411))))

(declare-fun d!1213008 () Bool)

(declare-fun e!2535354 () Bool)

(assert (=> d!1213008 e!2535354))

(declare-fun res!1669116 () Bool)

(assert (=> d!1213008 (=> res!1669116 e!2535354)))

(declare-fun isEmpty!26180 (Option!9479) Bool)

(assert (=> d!1213008 (= res!1669116 (isEmpty!26180 lt!1461116))))

(assert (=> d!1213008 (= lt!1461116 e!2535356)))

(declare-fun c!704241 () Bool)

(assert (=> d!1213008 (= c!704241 (and (is-Cons!43788 rules!3870) (is-Nil!43788 (t!338047 rules!3870))))))

(declare-fun lt!1461117 () Unit!63310)

(declare-fun lt!1461118 () Unit!63310)

(assert (=> d!1213008 (= lt!1461117 lt!1461118)))

(declare-fun isPrefix!4126 (List!43911 List!43911) Bool)

(assert (=> d!1213008 (isPrefix!4126 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2677 (List!43911 List!43911) Unit!63310)

(assert (=> d!1213008 (= lt!1461118 (lemmaIsPrefixRefl!2677 input!3411 input!3411))))

(declare-fun rulesValidInductive!2608 (LexerInterface!6662 List!43912) Bool)

(assert (=> d!1213008 (rulesValidInductive!2608 thiss!26199 rules!3870)))

(assert (=> d!1213008 (= (maxPrefix!3952 thiss!26199 rules!3870 input!3411) lt!1461116)))

(declare-fun b!4084999 () Bool)

(declare-fun res!1669121 () Bool)

(assert (=> b!4084999 (=> (not res!1669121) (not e!2535355))))

(assert (=> b!4084999 (= res!1669121 (= (list!16263 (charsOf!4839 (_1!24497 (get!14360 lt!1461116)))) (originalCharacters!7667 (_1!24497 (get!14360 lt!1461116)))))))

(declare-fun b!4085000 () Bool)

(assert (=> b!4085000 (= e!2535354 e!2535355)))

(declare-fun res!1669118 () Bool)

(assert (=> b!4085000 (=> (not res!1669118) (not e!2535355))))

(declare-fun isDefined!7175 (Option!9479) Bool)

(assert (=> b!4085000 (= res!1669118 (isDefined!7175 lt!1461116))))

(declare-fun b!4085001 () Bool)

(assert (=> b!4085001 (= e!2535355 (contains!8748 rules!3870 (rule!10199 (_1!24497 (get!14360 lt!1461116)))))))

(declare-fun b!4085002 () Bool)

(declare-fun res!1669119 () Bool)

(assert (=> b!4085002 (=> (not res!1669119) (not e!2535355))))

(assert (=> b!4085002 (= res!1669119 (matchR!5919 (regex!7073 (rule!10199 (_1!24497 (get!14360 lt!1461116)))) (list!16263 (charsOf!4839 (_1!24497 (get!14360 lt!1461116))))))))

(assert (= (and d!1213008 c!704241) b!4084997))

(assert (= (and d!1213008 (not c!704241)) b!4084998))

(assert (= (or b!4084997 b!4084998) bm!288789))

(assert (= (and d!1213008 (not res!1669116)) b!4085000))

(assert (= (and b!4085000 res!1669118) b!4084999))

(assert (= (and b!4084999 res!1669121) b!4084994))

(assert (= (and b!4084994 res!1669122) b!4084996))

(assert (= (and b!4084996 res!1669120) b!4084995))

(assert (= (and b!4084995 res!1669117) b!4085002))

(assert (= (and b!4085002 res!1669119) b!4085001))

(declare-fun m!4691893 () Bool)

(assert (=> b!4085000 m!4691893))

(declare-fun m!4691895 () Bool)

(assert (=> b!4084995 m!4691895))

(declare-fun m!4691897 () Bool)

(assert (=> b!4084995 m!4691897))

(assert (=> b!4084995 m!4691897))

(declare-fun m!4691899 () Bool)

(assert (=> b!4084995 m!4691899))

(assert (=> b!4084996 m!4691895))

(declare-fun m!4691901 () Bool)

(assert (=> b!4084996 m!4691901))

(assert (=> b!4084996 m!4691901))

(declare-fun m!4691903 () Bool)

(assert (=> b!4084996 m!4691903))

(assert (=> b!4084996 m!4691903))

(declare-fun m!4691905 () Bool)

(assert (=> b!4084996 m!4691905))

(assert (=> b!4085001 m!4691895))

(declare-fun m!4691907 () Bool)

(assert (=> b!4085001 m!4691907))

(assert (=> b!4085002 m!4691895))

(assert (=> b!4085002 m!4691901))

(assert (=> b!4085002 m!4691901))

(assert (=> b!4085002 m!4691903))

(assert (=> b!4085002 m!4691903))

(declare-fun m!4691909 () Bool)

(assert (=> b!4085002 m!4691909))

(declare-fun m!4691911 () Bool)

(assert (=> bm!288789 m!4691911))

(assert (=> b!4084999 m!4691895))

(assert (=> b!4084999 m!4691901))

(assert (=> b!4084999 m!4691901))

(assert (=> b!4084999 m!4691903))

(declare-fun m!4691913 () Bool)

(assert (=> b!4084998 m!4691913))

(assert (=> b!4084994 m!4691895))

(declare-fun m!4691915 () Bool)

(assert (=> b!4084994 m!4691915))

(declare-fun m!4691917 () Bool)

(assert (=> b!4084994 m!4691917))

(declare-fun m!4691919 () Bool)

(assert (=> d!1213008 m!4691919))

(declare-fun m!4691921 () Bool)

(assert (=> d!1213008 m!4691921))

(declare-fun m!4691923 () Bool)

(assert (=> d!1213008 m!4691923))

(declare-fun m!4691925 () Bool)

(assert (=> d!1213008 m!4691925))

(assert (=> b!4084856 d!1213008))

(declare-fun d!1213010 () Bool)

(declare-fun lt!1461121 () Int)

(assert (=> d!1213010 (>= lt!1461121 0)))

(declare-fun e!2535359 () Int)

(assert (=> d!1213010 (= lt!1461121 e!2535359)))

(declare-fun c!704244 () Bool)

(assert (=> d!1213010 (= c!704244 (is-Nil!43787 p!2988))))

(assert (=> d!1213010 (= (size!32703 p!2988) lt!1461121)))

(declare-fun b!4085007 () Bool)

(assert (=> b!4085007 (= e!2535359 0)))

(declare-fun b!4085008 () Bool)

(assert (=> b!4085008 (= e!2535359 (+ 1 (size!32703 (t!338046 p!2988))))))

(assert (= (and d!1213010 c!704244) b!4085007))

(assert (= (and d!1213010 (not c!704244)) b!4085008))

(declare-fun m!4691927 () Bool)

(assert (=> b!4085008 m!4691927))

(assert (=> b!4084856 d!1213010))

(declare-fun d!1213012 () Bool)

(declare-fun fromListB!2419 (List!43911) BalanceConc!26162)

(assert (=> d!1213012 (= (seqFromList!5290 p!2988) (fromListB!2419 p!2988))))

(declare-fun bs!593042 () Bool)

(assert (= bs!593042 d!1213012))

(declare-fun m!4691929 () Bool)

(assert (=> bs!593042 m!4691929))

(assert (=> b!4084856 d!1213012))

(declare-fun d!1213014 () Bool)

(declare-fun dynLambda!18683 (Int BalanceConc!26162) TokenValue!7303)

(assert (=> d!1213014 (= (apply!10256 (transformation!7073 r!4213) lt!1461075) (dynLambda!18683 (toValue!9653 (transformation!7073 r!4213)) lt!1461075))))

(declare-fun b_lambda!119551 () Bool)

(assert (=> (not b_lambda!119551) (not d!1213014)))

(declare-fun tb!245361 () Bool)

(declare-fun t!338052 () Bool)

(assert (=> (and b!4084857 (= (toValue!9653 (transformation!7073 (h!49208 rules!3870))) (toValue!9653 (transformation!7073 r!4213))) t!338052) tb!245361))

(declare-fun result!297682 () Bool)

(declare-fun inv!21 (TokenValue!7303) Bool)

(assert (=> tb!245361 (= result!297682 (inv!21 (dynLambda!18683 (toValue!9653 (transformation!7073 r!4213)) lt!1461075)))))

(declare-fun m!4691931 () Bool)

(assert (=> tb!245361 m!4691931))

(assert (=> d!1213014 t!338052))

(declare-fun b_and!314463 () Bool)

(assert (= b_and!314447 (and (=> t!338052 result!297682) b_and!314463)))

(declare-fun t!338054 () Bool)

(declare-fun tb!245363 () Bool)

(assert (=> (and b!4084862 (= (toValue!9653 (transformation!7073 r!4213)) (toValue!9653 (transformation!7073 r!4213))) t!338054) tb!245363))

(declare-fun result!297686 () Bool)

(assert (= result!297686 result!297682))

(assert (=> d!1213014 t!338054))

(declare-fun b_and!314465 () Bool)

(assert (= b_and!314451 (and (=> t!338054 result!297686) b_and!314465)))

(declare-fun m!4691933 () Bool)

(assert (=> d!1213014 m!4691933))

(assert (=> b!4084856 d!1213014))

(declare-fun b!4085050 () Bool)

(declare-fun e!2535380 () Bool)

(assert (=> b!4085050 (= e!2535380 true)))

(declare-fun d!1213016 () Bool)

(assert (=> d!1213016 e!2535380))

(assert (= d!1213016 b!4085050))

(declare-fun order!22967 () Int)

(declare-fun lambda!127884 () Int)

(declare-fun order!22969 () Int)

(declare-fun dynLambda!18684 (Int Int) Int)

(declare-fun dynLambda!18685 (Int Int) Int)

(assert (=> b!4085050 (< (dynLambda!18684 order!22967 (toValue!9653 (transformation!7073 r!4213))) (dynLambda!18685 order!22969 lambda!127884))))

(declare-fun order!22971 () Int)

(declare-fun dynLambda!18686 (Int Int) Int)

(assert (=> b!4085050 (< (dynLambda!18686 order!22971 (toChars!9512 (transformation!7073 r!4213))) (dynLambda!18685 order!22969 lambda!127884))))

(declare-fun dynLambda!18687 (Int TokenValue!7303) BalanceConc!26162)

(assert (=> d!1213016 (= (list!16263 (dynLambda!18687 (toChars!9512 (transformation!7073 r!4213)) (dynLambda!18683 (toValue!9653 (transformation!7073 r!4213)) lt!1461075))) (list!16263 lt!1461075))))

(declare-fun lt!1461144 () Unit!63310)

(declare-fun ForallOf!872 (Int BalanceConc!26162) Unit!63310)

(assert (=> d!1213016 (= lt!1461144 (ForallOf!872 lambda!127884 lt!1461075))))

(assert (=> d!1213016 (= (lemmaSemiInverse!2040 (transformation!7073 r!4213) lt!1461075) lt!1461144)))

(declare-fun b_lambda!119555 () Bool)

(assert (=> (not b_lambda!119555) (not d!1213016)))

(declare-fun t!338060 () Bool)

(declare-fun tb!245369 () Bool)

(assert (=> (and b!4084857 (= (toChars!9512 (transformation!7073 (h!49208 rules!3870))) (toChars!9512 (transformation!7073 r!4213))) t!338060) tb!245369))

(declare-fun b!4085055 () Bool)

(declare-fun tp!1236879 () Bool)

(declare-fun e!2535383 () Bool)

(declare-fun inv!58471 (Conc!13284) Bool)

(assert (=> b!4085055 (= e!2535383 (and (inv!58471 (c!704226 (dynLambda!18687 (toChars!9512 (transformation!7073 r!4213)) (dynLambda!18683 (toValue!9653 (transformation!7073 r!4213)) lt!1461075)))) tp!1236879))))

(declare-fun result!297694 () Bool)

(declare-fun inv!58472 (BalanceConc!26162) Bool)

(assert (=> tb!245369 (= result!297694 (and (inv!58472 (dynLambda!18687 (toChars!9512 (transformation!7073 r!4213)) (dynLambda!18683 (toValue!9653 (transformation!7073 r!4213)) lt!1461075))) e!2535383))))

(assert (= tb!245369 b!4085055))

(declare-fun m!4691975 () Bool)

(assert (=> b!4085055 m!4691975))

(declare-fun m!4691977 () Bool)

(assert (=> tb!245369 m!4691977))

(assert (=> d!1213016 t!338060))

(declare-fun b_and!314471 () Bool)

(assert (= b_and!314449 (and (=> t!338060 result!297694) b_and!314471)))

(declare-fun t!338062 () Bool)

(declare-fun tb!245371 () Bool)

(assert (=> (and b!4084862 (= (toChars!9512 (transformation!7073 r!4213)) (toChars!9512 (transformation!7073 r!4213))) t!338062) tb!245371))

(declare-fun result!297698 () Bool)

(assert (= result!297698 result!297694))

(assert (=> d!1213016 t!338062))

(declare-fun b_and!314473 () Bool)

(assert (= b_and!314453 (and (=> t!338062 result!297698) b_and!314473)))

(declare-fun b_lambda!119557 () Bool)

(assert (=> (not b_lambda!119557) (not d!1213016)))

(assert (=> d!1213016 t!338052))

(declare-fun b_and!314475 () Bool)

(assert (= b_and!314463 (and (=> t!338052 result!297682) b_and!314475)))

(assert (=> d!1213016 t!338054))

(declare-fun b_and!314477 () Bool)

(assert (= b_and!314465 (and (=> t!338054 result!297686) b_and!314477)))

(declare-fun m!4691979 () Bool)

(assert (=> d!1213016 m!4691979))

(assert (=> d!1213016 m!4691933))

(declare-fun m!4691981 () Bool)

(assert (=> d!1213016 m!4691981))

(assert (=> d!1213016 m!4691933))

(declare-fun m!4691983 () Bool)

(assert (=> d!1213016 m!4691983))

(assert (=> d!1213016 m!4691983))

(declare-fun m!4691985 () Bool)

(assert (=> d!1213016 m!4691985))

(assert (=> b!4084856 d!1213016))

(declare-fun d!1213024 () Bool)

(assert (=> d!1213024 (= (inv!58466 (tag!7933 r!4213)) (= (mod (str.len (value!222233 (tag!7933 r!4213))) 2) 0))))

(assert (=> b!4084863 d!1213024))

(declare-fun d!1213026 () Bool)

(declare-fun res!1669146 () Bool)

(declare-fun e!2535386 () Bool)

(assert (=> d!1213026 (=> (not res!1669146) (not e!2535386))))

(declare-fun semiInverseModEq!3033 (Int Int) Bool)

(assert (=> d!1213026 (= res!1669146 (semiInverseModEq!3033 (toChars!9512 (transformation!7073 r!4213)) (toValue!9653 (transformation!7073 r!4213))))))

(assert (=> d!1213026 (= (inv!58469 (transformation!7073 r!4213)) e!2535386)))

(declare-fun b!4085058 () Bool)

(declare-fun equivClasses!2932 (Int Int) Bool)

(assert (=> b!4085058 (= e!2535386 (equivClasses!2932 (toChars!9512 (transformation!7073 r!4213)) (toValue!9653 (transformation!7073 r!4213))))))

(assert (= (and d!1213026 res!1669146) b!4085058))

(declare-fun m!4691987 () Bool)

(assert (=> d!1213026 m!4691987))

(declare-fun m!4691989 () Bool)

(assert (=> b!4085058 m!4691989))

(assert (=> b!4084863 d!1213026))

(declare-fun d!1213028 () Bool)

(declare-fun res!1669147 () Bool)

(declare-fun e!2535387 () Bool)

(assert (=> d!1213028 (=> (not res!1669147) (not e!2535387))))

(assert (=> d!1213028 (= res!1669147 (rulesValid!2767 thiss!26199 rules!3870))))

(assert (=> d!1213028 (= (rulesInvariant!6005 thiss!26199 rules!3870) e!2535387)))

(declare-fun b!4085059 () Bool)

(assert (=> b!4085059 (= e!2535387 (noDuplicateTag!2768 thiss!26199 rules!3870 Nil!43792))))

(assert (= (and d!1213028 res!1669147) b!4085059))

(declare-fun m!4691991 () Bool)

(assert (=> d!1213028 m!4691991))

(declare-fun m!4691993 () Bool)

(assert (=> b!4085059 m!4691993))

(assert (=> b!4084852 d!1213028))

(declare-fun d!1213030 () Bool)

(assert (=> d!1213030 (= (inv!58466 (tag!7933 (h!49208 rules!3870))) (= (mod (str.len (value!222233 (tag!7933 (h!49208 rules!3870)))) 2) 0))))

(assert (=> b!4084853 d!1213030))

(declare-fun d!1213032 () Bool)

(declare-fun res!1669148 () Bool)

(declare-fun e!2535388 () Bool)

(assert (=> d!1213032 (=> (not res!1669148) (not e!2535388))))

(assert (=> d!1213032 (= res!1669148 (semiInverseModEq!3033 (toChars!9512 (transformation!7073 (h!49208 rules!3870))) (toValue!9653 (transformation!7073 (h!49208 rules!3870)))))))

(assert (=> d!1213032 (= (inv!58469 (transformation!7073 (h!49208 rules!3870))) e!2535388)))

(declare-fun b!4085060 () Bool)

(assert (=> b!4085060 (= e!2535388 (equivClasses!2932 (toChars!9512 (transformation!7073 (h!49208 rules!3870))) (toValue!9653 (transformation!7073 (h!49208 rules!3870)))))))

(assert (= (and d!1213032 res!1669148) b!4085060))

(declare-fun m!4691995 () Bool)

(assert (=> d!1213032 m!4691995))

(declare-fun m!4691997 () Bool)

(assert (=> b!4085060 m!4691997))

(assert (=> b!4084853 d!1213032))

(declare-fun d!1213034 () Bool)

(declare-fun lt!1461147 () Bool)

(declare-fun content!6728 (List!43912) (Set Rule!13946))

(assert (=> d!1213034 (= lt!1461147 (set.member r!4213 (content!6728 rules!3870)))))

(declare-fun e!2535394 () Bool)

(assert (=> d!1213034 (= lt!1461147 e!2535394)))

(declare-fun res!1669153 () Bool)

(assert (=> d!1213034 (=> (not res!1669153) (not e!2535394))))

(assert (=> d!1213034 (= res!1669153 (is-Cons!43788 rules!3870))))

(assert (=> d!1213034 (= (contains!8748 rules!3870 r!4213) lt!1461147)))

(declare-fun b!4085065 () Bool)

(declare-fun e!2535393 () Bool)

(assert (=> b!4085065 (= e!2535394 e!2535393)))

(declare-fun res!1669154 () Bool)

(assert (=> b!4085065 (=> res!1669154 e!2535393)))

(assert (=> b!4085065 (= res!1669154 (= (h!49208 rules!3870) r!4213))))

(declare-fun b!4085066 () Bool)

(assert (=> b!4085066 (= e!2535393 (contains!8748 (t!338047 rules!3870) r!4213))))

(assert (= (and d!1213034 res!1669153) b!4085065))

(assert (= (and b!4085065 (not res!1669154)) b!4085066))

(declare-fun m!4691999 () Bool)

(assert (=> d!1213034 m!4691999))

(declare-fun m!4692001 () Bool)

(assert (=> d!1213034 m!4692001))

(declare-fun m!4692003 () Bool)

(assert (=> b!4085066 m!4692003))

(assert (=> b!4084858 d!1213034))

(declare-fun b!4085077 () Bool)

(declare-fun res!1669159 () Bool)

(declare-fun e!2535399 () Bool)

(assert (=> b!4085077 (=> (not res!1669159) (not e!2535399))))

(declare-fun lt!1461150 () List!43911)

(assert (=> b!4085077 (= res!1669159 (= (size!32703 lt!1461150) (+ (size!32703 p!2988) (size!32703 suffix!1518))))))

(declare-fun b!4085076 () Bool)

(declare-fun e!2535400 () List!43911)

(assert (=> b!4085076 (= e!2535400 (Cons!43787 (h!49207 p!2988) (++!11479 (t!338046 p!2988) suffix!1518)))))

(declare-fun d!1213036 () Bool)

(assert (=> d!1213036 e!2535399))

(declare-fun res!1669160 () Bool)

(assert (=> d!1213036 (=> (not res!1669160) (not e!2535399))))

(declare-fun content!6729 (List!43911) (Set C!24142))

(assert (=> d!1213036 (= res!1669160 (= (content!6729 lt!1461150) (set.union (content!6729 p!2988) (content!6729 suffix!1518))))))

(assert (=> d!1213036 (= lt!1461150 e!2535400)))

(declare-fun c!704255 () Bool)

(assert (=> d!1213036 (= c!704255 (is-Nil!43787 p!2988))))

(assert (=> d!1213036 (= (++!11479 p!2988 suffix!1518) lt!1461150)))

(declare-fun b!4085078 () Bool)

(assert (=> b!4085078 (= e!2535399 (or (not (= suffix!1518 Nil!43787)) (= lt!1461150 p!2988)))))

(declare-fun b!4085075 () Bool)

(assert (=> b!4085075 (= e!2535400 suffix!1518)))

(assert (= (and d!1213036 c!704255) b!4085075))

(assert (= (and d!1213036 (not c!704255)) b!4085076))

(assert (= (and d!1213036 res!1669160) b!4085077))

(assert (= (and b!4085077 res!1669159) b!4085078))

(declare-fun m!4692005 () Bool)

(assert (=> b!4085077 m!4692005))

(assert (=> b!4085077 m!4691783))

(declare-fun m!4692007 () Bool)

(assert (=> b!4085077 m!4692007))

(declare-fun m!4692009 () Bool)

(assert (=> b!4085076 m!4692009))

(declare-fun m!4692011 () Bool)

(assert (=> d!1213036 m!4692011))

(declare-fun m!4692013 () Bool)

(assert (=> d!1213036 m!4692013))

(declare-fun m!4692015 () Bool)

(assert (=> d!1213036 m!4692015))

(assert (=> b!4084859 d!1213036))

(declare-fun d!1213038 () Bool)

(declare-fun e!2535412 () Bool)

(assert (=> d!1213038 e!2535412))

(declare-fun res!1669180 () Bool)

(assert (=> d!1213038 (=> res!1669180 e!2535412)))

(declare-fun lt!1461163 () Option!9479)

(assert (=> d!1213038 (= res!1669180 (isEmpty!26180 lt!1461163))))

(declare-fun e!2535409 () Option!9479)

(assert (=> d!1213038 (= lt!1461163 e!2535409)))

(declare-fun c!704258 () Bool)

(declare-datatypes ((tuple2!42730 0))(
  ( (tuple2!42731 (_1!24499 List!43911) (_2!24499 List!43911)) )
))
(declare-fun lt!1461165 () tuple2!42730)

(assert (=> d!1213038 (= c!704258 (isEmpty!26176 (_1!24499 lt!1461165)))))

(declare-fun findLongestMatch!1358 (Regex!11978 List!43911) tuple2!42730)

(assert (=> d!1213038 (= lt!1461165 (findLongestMatch!1358 (regex!7073 r!4213) input!3411))))

(assert (=> d!1213038 (ruleValid!2993 thiss!26199 r!4213)))

(assert (=> d!1213038 (= (maxPrefixOneRule!2938 thiss!26199 r!4213 input!3411) lt!1461163)))

(declare-fun b!4085097 () Bool)

(assert (=> b!4085097 (= e!2535409 None!9478)))

(declare-fun b!4085098 () Bool)

(declare-fun e!2535410 () Bool)

(assert (=> b!4085098 (= e!2535412 e!2535410)))

(declare-fun res!1669178 () Bool)

(assert (=> b!4085098 (=> (not res!1669178) (not e!2535410))))

(assert (=> b!4085098 (= res!1669178 (matchR!5919 (regex!7073 r!4213) (list!16263 (charsOf!4839 (_1!24497 (get!14360 lt!1461163))))))))

(declare-fun b!4085099 () Bool)

(declare-fun e!2535411 () Bool)

(declare-fun findLongestMatchInner!1445 (Regex!11978 List!43911 Int List!43911 List!43911 Int) tuple2!42730)

(assert (=> b!4085099 (= e!2535411 (matchR!5919 (regex!7073 r!4213) (_1!24499 (findLongestMatchInner!1445 (regex!7073 r!4213) Nil!43787 (size!32703 Nil!43787) input!3411 input!3411 (size!32703 input!3411)))))))

(declare-fun b!4085100 () Bool)

(assert (=> b!4085100 (= e!2535410 (= (size!32702 (_1!24497 (get!14360 lt!1461163))) (size!32703 (originalCharacters!7667 (_1!24497 (get!14360 lt!1461163))))))))

(declare-fun b!4085101 () Bool)

(declare-fun res!1669177 () Bool)

(assert (=> b!4085101 (=> (not res!1669177) (not e!2535410))))

(assert (=> b!4085101 (= res!1669177 (< (size!32703 (_2!24497 (get!14360 lt!1461163))) (size!32703 input!3411)))))

(declare-fun b!4085102 () Bool)

(declare-fun size!32706 (BalanceConc!26162) Int)

(assert (=> b!4085102 (= e!2535409 (Some!9478 (tuple2!42727 (Token!13273 (apply!10256 (transformation!7073 r!4213) (seqFromList!5290 (_1!24499 lt!1461165))) r!4213 (size!32706 (seqFromList!5290 (_1!24499 lt!1461165))) (_1!24499 lt!1461165)) (_2!24499 lt!1461165))))))

(declare-fun lt!1461161 () Unit!63310)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1418 (Regex!11978 List!43911) Unit!63310)

(assert (=> b!4085102 (= lt!1461161 (longestMatchIsAcceptedByMatchOrIsEmpty!1418 (regex!7073 r!4213) input!3411))))

(declare-fun res!1669176 () Bool)

(assert (=> b!4085102 (= res!1669176 (isEmpty!26176 (_1!24499 (findLongestMatchInner!1445 (regex!7073 r!4213) Nil!43787 (size!32703 Nil!43787) input!3411 input!3411 (size!32703 input!3411)))))))

(assert (=> b!4085102 (=> res!1669176 e!2535411)))

(assert (=> b!4085102 e!2535411))

(declare-fun lt!1461164 () Unit!63310)

(assert (=> b!4085102 (= lt!1461164 lt!1461161)))

(declare-fun lt!1461162 () Unit!63310)

(assert (=> b!4085102 (= lt!1461162 (lemmaSemiInverse!2040 (transformation!7073 r!4213) (seqFromList!5290 (_1!24499 lt!1461165))))))

(declare-fun b!4085103 () Bool)

(declare-fun res!1669175 () Bool)

(assert (=> b!4085103 (=> (not res!1669175) (not e!2535410))))

(assert (=> b!4085103 (= res!1669175 (= (value!222234 (_1!24497 (get!14360 lt!1461163))) (apply!10256 (transformation!7073 (rule!10199 (_1!24497 (get!14360 lt!1461163)))) (seqFromList!5290 (originalCharacters!7667 (_1!24497 (get!14360 lt!1461163)))))))))

(declare-fun b!4085104 () Bool)

(declare-fun res!1669181 () Bool)

(assert (=> b!4085104 (=> (not res!1669181) (not e!2535410))))

(assert (=> b!4085104 (= res!1669181 (= (++!11479 (list!16263 (charsOf!4839 (_1!24497 (get!14360 lt!1461163)))) (_2!24497 (get!14360 lt!1461163))) input!3411))))

(declare-fun b!4085105 () Bool)

(declare-fun res!1669179 () Bool)

(assert (=> b!4085105 (=> (not res!1669179) (not e!2535410))))

(assert (=> b!4085105 (= res!1669179 (= (rule!10199 (_1!24497 (get!14360 lt!1461163))) r!4213))))

(assert (= (and d!1213038 c!704258) b!4085097))

(assert (= (and d!1213038 (not c!704258)) b!4085102))

(assert (= (and b!4085102 (not res!1669176)) b!4085099))

(assert (= (and d!1213038 (not res!1669180)) b!4085098))

(assert (= (and b!4085098 res!1669178) b!4085104))

(assert (= (and b!4085104 res!1669181) b!4085101))

(assert (= (and b!4085101 res!1669177) b!4085105))

(assert (= (and b!4085105 res!1669179) b!4085103))

(assert (= (and b!4085103 res!1669175) b!4085100))

(declare-fun m!4692017 () Bool)

(assert (=> b!4085098 m!4692017))

(declare-fun m!4692019 () Bool)

(assert (=> b!4085098 m!4692019))

(assert (=> b!4085098 m!4692019))

(declare-fun m!4692021 () Bool)

(assert (=> b!4085098 m!4692021))

(assert (=> b!4085098 m!4692021))

(declare-fun m!4692023 () Bool)

(assert (=> b!4085098 m!4692023))

(declare-fun m!4692025 () Bool)

(assert (=> b!4085099 m!4692025))

(assert (=> b!4085099 m!4691917))

(assert (=> b!4085099 m!4692025))

(assert (=> b!4085099 m!4691917))

(declare-fun m!4692027 () Bool)

(assert (=> b!4085099 m!4692027))

(declare-fun m!4692029 () Bool)

(assert (=> b!4085099 m!4692029))

(assert (=> b!4085101 m!4692017))

(declare-fun m!4692031 () Bool)

(assert (=> b!4085101 m!4692031))

(assert (=> b!4085101 m!4691917))

(declare-fun m!4692033 () Bool)

(assert (=> b!4085102 m!4692033))

(declare-fun m!4692035 () Bool)

(assert (=> b!4085102 m!4692035))

(assert (=> b!4085102 m!4692033))

(declare-fun m!4692037 () Bool)

(assert (=> b!4085102 m!4692037))

(assert (=> b!4085102 m!4692025))

(assert (=> b!4085102 m!4691917))

(declare-fun m!4692039 () Bool)

(assert (=> b!4085102 m!4692039))

(declare-fun m!4692041 () Bool)

(assert (=> b!4085102 m!4692041))

(assert (=> b!4085102 m!4692025))

(assert (=> b!4085102 m!4691917))

(assert (=> b!4085102 m!4692027))

(assert (=> b!4085102 m!4692033))

(assert (=> b!4085102 m!4692033))

(declare-fun m!4692043 () Bool)

(assert (=> b!4085102 m!4692043))

(declare-fun m!4692045 () Bool)

(assert (=> d!1213038 m!4692045))

(declare-fun m!4692047 () Bool)

(assert (=> d!1213038 m!4692047))

(declare-fun m!4692049 () Bool)

(assert (=> d!1213038 m!4692049))

(assert (=> d!1213038 m!4691793))

(assert (=> b!4085104 m!4692017))

(assert (=> b!4085104 m!4692019))

(assert (=> b!4085104 m!4692019))

(assert (=> b!4085104 m!4692021))

(assert (=> b!4085104 m!4692021))

(declare-fun m!4692051 () Bool)

(assert (=> b!4085104 m!4692051))

(assert (=> b!4085100 m!4692017))

(declare-fun m!4692053 () Bool)

(assert (=> b!4085100 m!4692053))

(assert (=> b!4085105 m!4692017))

(assert (=> b!4085103 m!4692017))

(declare-fun m!4692055 () Bool)

(assert (=> b!4085103 m!4692055))

(assert (=> b!4085103 m!4692055))

(declare-fun m!4692057 () Bool)

(assert (=> b!4085103 m!4692057))

(assert (=> b!4084864 d!1213038))

(declare-fun d!1213040 () Bool)

(assert (=> d!1213040 (= (isEmpty!26176 p!2988) (is-Nil!43787 p!2988))))

(assert (=> b!4084854 d!1213040))

(declare-fun b!4085110 () Bool)

(declare-fun e!2535415 () Bool)

(declare-fun tp!1236882 () Bool)

(assert (=> b!4085110 (= e!2535415 (and tp_is_empty!20959 tp!1236882))))

(assert (=> b!4084861 (= tp!1236841 e!2535415)))

(assert (= (and b!4084861 (is-Cons!43787 (t!338046 p!2988))) b!4085110))

(declare-fun b!4085111 () Bool)

(declare-fun e!2535416 () Bool)

(declare-fun tp!1236883 () Bool)

(assert (=> b!4085111 (= e!2535416 (and tp_is_empty!20959 tp!1236883))))

(assert (=> b!4084850 (= tp!1236842 e!2535416)))

(assert (= (and b!4084850 (is-Cons!43787 (t!338046 input!3411))) b!4085111))

(declare-fun e!2535419 () Bool)

(assert (=> b!4084863 (= tp!1236838 e!2535419)))

(declare-fun b!4085123 () Bool)

(declare-fun tp!1236894 () Bool)

(declare-fun tp!1236898 () Bool)

(assert (=> b!4085123 (= e!2535419 (and tp!1236894 tp!1236898))))

(declare-fun b!4085122 () Bool)

(assert (=> b!4085122 (= e!2535419 tp_is_empty!20959)))

(declare-fun b!4085124 () Bool)

(declare-fun tp!1236895 () Bool)

(assert (=> b!4085124 (= e!2535419 tp!1236895)))

(declare-fun b!4085125 () Bool)

(declare-fun tp!1236896 () Bool)

(declare-fun tp!1236897 () Bool)

(assert (=> b!4085125 (= e!2535419 (and tp!1236896 tp!1236897))))

(assert (= (and b!4084863 (is-ElementMatch!11978 (regex!7073 r!4213))) b!4085122))

(assert (= (and b!4084863 (is-Concat!19282 (regex!7073 r!4213))) b!4085123))

(assert (= (and b!4084863 (is-Star!11978 (regex!7073 r!4213))) b!4085124))

(assert (= (and b!4084863 (is-Union!11978 (regex!7073 r!4213))) b!4085125))

(declare-fun e!2535420 () Bool)

(assert (=> b!4084853 (= tp!1236846 e!2535420)))

(declare-fun b!4085127 () Bool)

(declare-fun tp!1236899 () Bool)

(declare-fun tp!1236903 () Bool)

(assert (=> b!4085127 (= e!2535420 (and tp!1236899 tp!1236903))))

(declare-fun b!4085126 () Bool)

(assert (=> b!4085126 (= e!2535420 tp_is_empty!20959)))

(declare-fun b!4085128 () Bool)

(declare-fun tp!1236900 () Bool)

(assert (=> b!4085128 (= e!2535420 tp!1236900)))

(declare-fun b!4085129 () Bool)

(declare-fun tp!1236901 () Bool)

(declare-fun tp!1236902 () Bool)

(assert (=> b!4085129 (= e!2535420 (and tp!1236901 tp!1236902))))

(assert (= (and b!4084853 (is-ElementMatch!11978 (regex!7073 (h!49208 rules!3870)))) b!4085126))

(assert (= (and b!4084853 (is-Concat!19282 (regex!7073 (h!49208 rules!3870)))) b!4085127))

(assert (= (and b!4084853 (is-Star!11978 (regex!7073 (h!49208 rules!3870)))) b!4085128))

(assert (= (and b!4084853 (is-Union!11978 (regex!7073 (h!49208 rules!3870)))) b!4085129))

(declare-fun b!4085140 () Bool)

(declare-fun b_free!114129 () Bool)

(declare-fun b_next!114833 () Bool)

(assert (=> b!4085140 (= b_free!114129 (not b_next!114833))))

(declare-fun t!338064 () Bool)

(declare-fun tb!245373 () Bool)

(assert (=> (and b!4085140 (= (toValue!9653 (transformation!7073 (h!49208 (t!338047 rules!3870)))) (toValue!9653 (transformation!7073 r!4213))) t!338064) tb!245373))

(declare-fun result!297706 () Bool)

(assert (= result!297706 result!297682))

(assert (=> d!1213014 t!338064))

(assert (=> d!1213016 t!338064))

(declare-fun tp!1236915 () Bool)

(declare-fun b_and!314479 () Bool)

(assert (=> b!4085140 (= tp!1236915 (and (=> t!338064 result!297706) b_and!314479))))

(declare-fun b_free!114131 () Bool)

(declare-fun b_next!114835 () Bool)

(assert (=> b!4085140 (= b_free!114131 (not b_next!114835))))

(declare-fun tb!245375 () Bool)

(declare-fun t!338066 () Bool)

(assert (=> (and b!4085140 (= (toChars!9512 (transformation!7073 (h!49208 (t!338047 rules!3870)))) (toChars!9512 (transformation!7073 r!4213))) t!338066) tb!245375))

(declare-fun result!297708 () Bool)

(assert (= result!297708 result!297694))

(assert (=> d!1213016 t!338066))

(declare-fun tp!1236912 () Bool)

(declare-fun b_and!314481 () Bool)

(assert (=> b!4085140 (= tp!1236912 (and (=> t!338066 result!297708) b_and!314481))))

(declare-fun e!2535429 () Bool)

(assert (=> b!4085140 (= e!2535429 (and tp!1236915 tp!1236912))))

(declare-fun tp!1236913 () Bool)

(declare-fun e!2535431 () Bool)

(declare-fun b!4085139 () Bool)

(assert (=> b!4085139 (= e!2535431 (and tp!1236913 (inv!58466 (tag!7933 (h!49208 (t!338047 rules!3870)))) (inv!58469 (transformation!7073 (h!49208 (t!338047 rules!3870)))) e!2535429))))

(declare-fun b!4085138 () Bool)

(declare-fun e!2535432 () Bool)

(declare-fun tp!1236914 () Bool)

(assert (=> b!4085138 (= e!2535432 (and e!2535431 tp!1236914))))

(assert (=> b!4084849 (= tp!1236839 e!2535432)))

(assert (= b!4085139 b!4085140))

(assert (= b!4085138 b!4085139))

(assert (= (and b!4084849 (is-Cons!43788 (t!338047 rules!3870))) b!4085138))

(declare-fun m!4692059 () Bool)

(assert (=> b!4085139 m!4692059))

(declare-fun m!4692061 () Bool)

(assert (=> b!4085139 m!4692061))

(declare-fun b!4085141 () Bool)

(declare-fun e!2535433 () Bool)

(declare-fun tp!1236916 () Bool)

(assert (=> b!4085141 (= e!2535433 (and tp_is_empty!20959 tp!1236916))))

(assert (=> b!4084865 (= tp!1236845 e!2535433)))

(assert (= (and b!4084865 (is-Cons!43787 (t!338046 suffix!1518))) b!4085141))

(declare-fun b_lambda!119559 () Bool)

(assert (= b_lambda!119551 (or (and b!4084857 b_free!114113 (= (toValue!9653 (transformation!7073 (h!49208 rules!3870))) (toValue!9653 (transformation!7073 r!4213)))) (and b!4084862 b_free!114117) (and b!4085140 b_free!114129 (= (toValue!9653 (transformation!7073 (h!49208 (t!338047 rules!3870)))) (toValue!9653 (transformation!7073 r!4213)))) b_lambda!119559)))

(declare-fun b_lambda!119561 () Bool)

(assert (= b_lambda!119557 (or (and b!4084857 b_free!114113 (= (toValue!9653 (transformation!7073 (h!49208 rules!3870))) (toValue!9653 (transformation!7073 r!4213)))) (and b!4084862 b_free!114117) (and b!4085140 b_free!114129 (= (toValue!9653 (transformation!7073 (h!49208 (t!338047 rules!3870)))) (toValue!9653 (transformation!7073 r!4213)))) b_lambda!119561)))

(declare-fun b_lambda!119563 () Bool)

(assert (= b_lambda!119555 (or (and b!4084857 b_free!114115 (= (toChars!9512 (transformation!7073 (h!49208 rules!3870))) (toChars!9512 (transformation!7073 r!4213)))) (and b!4084862 b_free!114119) (and b!4085140 b_free!114131 (= (toChars!9512 (transformation!7073 (h!49208 (t!338047 rules!3870)))) (toChars!9512 (transformation!7073 r!4213)))) b_lambda!119563)))

(push 1)

(assert (not b_lambda!119563))

(assert b_and!314477)

(assert b_and!314471)

(assert (not b!4085002))

(assert (not d!1213032))

(assert (not b!4084974))

(assert (not b!4085098))

(assert (not d!1212992))

(assert tp_is_empty!20959)

(assert (not b!4084958))

(assert (not b!4085102))

(assert (not b!4085066))

(assert (not b!4084967))

(assert (not d!1213026))

(assert (not b!4085076))

(assert (not d!1213016))

(assert (not d!1213000))

(assert (not d!1212988))

(assert (not b!4085125))

(assert (not b!4084964))

(assert (not b!4085101))

(assert (not d!1213038))

(assert b_and!314473)

(assert (not d!1213008))

(assert (not b!4085000))

(assert (not b!4085055))

(assert (not b!4085129))

(assert (not b!4085060))

(assert (not b_next!114823))

(assert (not b_next!114819))

(assert (not bm!288786))

(assert (not b!4085100))

(assert (not b_lambda!119561))

(assert (not b!4085058))

(assert (not b_next!114833))

(assert (not b!4085139))

(assert (not tb!245361))

(assert (not b!4084923))

(assert (not b!4085141))

(assert (not b!4085111))

(assert (not d!1213034))

(assert (not b!4085105))

(assert (not b!4084995))

(assert b_and!314479)

(assert (not d!1213036))

(assert (not b!4085008))

(assert (not bm!288789))

(assert (not d!1213028))

(assert (not d!1213006))

(assert (not b!4085104))

(assert b_and!314481)

(assert (not b!4084955))

(assert (not b!4085123))

(assert (not b!4085059))

(assert (not b!4085127))

(assert (not d!1212986))

(assert (not b!4085110))

(assert (not b_next!114817))

(assert (not b_next!114821))

(assert (not b!4084999))

(assert (not b!4085128))

(assert (not b_lambda!119559))

(assert (not b!4084963))

(assert (not b!4084962))

(assert (not b!4085138))

(assert (not b!4085001))

(assert b_and!314475)

(assert (not b!4085099))

(assert (not b!4085124))

(assert (not b_next!114835))

(assert (not b!4084998))

(assert (not d!1213012))

(assert (not b!4084994))

(assert (not b!4085103))

(assert (not tb!245369))

(assert (not b!4084996))

(assert (not b!4085077))

(check-sat)

(pop 1)

(push 1)

(assert b_and!314477)

(assert b_and!314473)

(assert (not b_next!114833))

(assert b_and!314479)

(assert b_and!314471)

(assert b_and!314481)

(assert (not b_next!114823))

(assert (not b_next!114819))

(assert (not b_next!114817))

(assert (not b_next!114821))

(assert (not b_next!114835))

(assert b_and!314475)

(check-sat)

(pop 1)

