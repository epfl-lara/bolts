; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!59170 () Bool)

(assert start!59170)

(declare-fun b!617130 () Bool)

(declare-fun b_free!17737 () Bool)

(declare-fun b_next!17753 () Bool)

(assert (=> b!617130 (= b_free!17737 (not b_next!17753))))

(declare-fun tp!190908 () Bool)

(declare-fun b_and!61251 () Bool)

(assert (=> b!617130 (= tp!190908 b_and!61251)))

(declare-fun b_free!17739 () Bool)

(declare-fun b_next!17755 () Bool)

(assert (=> b!617130 (= b_free!17739 (not b_next!17755))))

(declare-fun tp!190914 () Bool)

(declare-fun b_and!61253 () Bool)

(assert (=> b!617130 (= tp!190914 b_and!61253)))

(declare-fun b!617127 () Bool)

(declare-fun b_free!17741 () Bool)

(declare-fun b_next!17757 () Bool)

(assert (=> b!617127 (= b_free!17741 (not b_next!17757))))

(declare-fun tp!190913 () Bool)

(declare-fun b_and!61255 () Bool)

(assert (=> b!617127 (= tp!190913 b_and!61255)))

(declare-fun b_free!17743 () Bool)

(declare-fun b_next!17759 () Bool)

(assert (=> b!617127 (= b_free!17743 (not b_next!17759))))

(declare-fun tp!190912 () Bool)

(declare-fun b_and!61257 () Bool)

(assert (=> b!617127 (= tp!190912 b_and!61257)))

(declare-datatypes ((List!6232 0))(
  ( (Nil!6222) (Cons!6222 (h!11623 (_ BitVec 16)) (t!81471 List!6232)) )
))
(declare-datatypes ((TokenValue!1280 0))(
  ( (FloatLiteralValue!2560 (text!9405 List!6232)) (TokenValueExt!1279 (__x!4460 Int)) (Broken!6400 (value!40635 List!6232)) (Object!1289) (End!1280) (Def!1280) (Underscore!1280) (Match!1280) (Else!1280) (Error!1280) (Case!1280) (If!1280) (Extends!1280) (Abstract!1280) (Class!1280) (Val!1280) (DelimiterValue!2560 (del!1340 List!6232)) (KeywordValue!1286 (value!40636 List!6232)) (CommentValue!2560 (value!40637 List!6232)) (WhitespaceValue!2560 (value!40638 List!6232)) (IndentationValue!1280 (value!40639 List!6232)) (String!8149) (Int32!1280) (Broken!6401 (value!40640 List!6232)) (Boolean!1281) (Unit!11370) (OperatorValue!1283 (op!1340 List!6232)) (IdentifierValue!2560 (value!40641 List!6232)) (IdentifierValue!2561 (value!40642 List!6232)) (WhitespaceValue!2561 (value!40643 List!6232)) (True!2560) (False!2560) (Broken!6402 (value!40644 List!6232)) (Broken!6403 (value!40645 List!6232)) (True!2561) (RightBrace!1280) (RightBracket!1280) (Colon!1280) (Null!1280) (Comma!1280) (LeftBracket!1280) (False!2561) (LeftBrace!1280) (ImaginaryLiteralValue!1280 (text!9406 List!6232)) (StringLiteralValue!3840 (value!40646 List!6232)) (EOFValue!1280 (value!40647 List!6232)) (IdentValue!1280 (value!40648 List!6232)) (DelimiterValue!2561 (value!40649 List!6232)) (DedentValue!1280 (value!40650 List!6232)) (NewLineValue!1280 (value!40651 List!6232)) (IntegerValue!3840 (value!40652 (_ BitVec 32)) (text!9407 List!6232)) (IntegerValue!3841 (value!40653 Int) (text!9408 List!6232)) (Times!1280) (Or!1280) (Equal!1280) (Minus!1280) (Broken!6404 (value!40654 List!6232)) (And!1280) (Div!1280) (LessEqual!1280) (Mod!1280) (Concat!2870) (Not!1280) (Plus!1280) (SpaceValue!1280 (value!40655 List!6232)) (IntegerValue!3842 (value!40656 Int) (text!9409 List!6232)) (StringLiteralValue!3841 (text!9410 List!6232)) (FloatLiteralValue!2561 (text!9411 List!6232)) (BytesLiteralValue!1280 (value!40657 List!6232)) (CommentValue!2561 (value!40658 List!6232)) (StringLiteralValue!3842 (value!40659 List!6232)) (ErrorTokenValue!1280 (msg!1341 List!6232)) )
))
(declare-datatypes ((C!4106 0))(
  ( (C!4107 (val!2279 Int)) )
))
(declare-datatypes ((List!6233 0))(
  ( (Nil!6223) (Cons!6223 (h!11624 C!4106) (t!81472 List!6233)) )
))
(declare-datatypes ((IArray!3947 0))(
  ( (IArray!3948 (innerList!2031 List!6233)) )
))
(declare-datatypes ((Regex!1590 0))(
  ( (ElementMatch!1590 (c!113771 C!4106)) (Concat!2871 (regOne!3692 Regex!1590) (regTwo!3692 Regex!1590)) (EmptyExpr!1590) (Star!1590 (reg!1919 Regex!1590)) (EmptyLang!1590) (Union!1590 (regOne!3693 Regex!1590) (regTwo!3693 Regex!1590)) )
))
(declare-datatypes ((String!8150 0))(
  ( (String!8151 (value!40660 String)) )
))
(declare-datatypes ((Conc!1973 0))(
  ( (Node!1973 (left!4955 Conc!1973) (right!5285 Conc!1973) (csize!4176 Int) (cheight!2184 Int)) (Leaf!3110 (xs!4610 IArray!3947) (csize!4177 Int)) (Empty!1973) )
))
(declare-datatypes ((BalanceConc!3954 0))(
  ( (BalanceConc!3955 (c!113772 Conc!1973)) )
))
(declare-datatypes ((TokenValueInjection!2328 0))(
  ( (TokenValueInjection!2329 (toValue!2169 Int) (toChars!2028 Int)) )
))
(declare-datatypes ((Rule!2312 0))(
  ( (Rule!2313 (regex!1256 Regex!1590) (tag!1518 String!8150) (isSeparator!1256 Bool) (transformation!1256 TokenValueInjection!2328)) )
))
(declare-fun r!3983 () Rule!2312)

(declare-fun b!617120 () Bool)

(declare-fun tp!190916 () Bool)

(declare-fun e!374264 () Bool)

(declare-fun e!374266 () Bool)

(declare-fun inv!7910 (String!8150) Bool)

(declare-fun inv!7913 (TokenValueInjection!2328) Bool)

(assert (=> b!617120 (= e!374266 (and tp!190916 (inv!7910 (tag!1518 r!3983)) (inv!7913 (transformation!1256 r!3983)) e!374264))))

(declare-fun b!617121 () Bool)

(declare-fun e!374263 () Bool)

(declare-fun tp_is_empty!3539 () Bool)

(declare-fun tp!190909 () Bool)

(assert (=> b!617121 (= e!374263 (and tp_is_empty!3539 tp!190909))))

(declare-fun e!374268 () Bool)

(declare-fun tp!190911 () Bool)

(declare-fun e!374270 () Bool)

(declare-datatypes ((List!6234 0))(
  ( (Nil!6224) (Cons!6224 (h!11625 Rule!2312) (t!81473 List!6234)) )
))
(declare-fun rules!3744 () List!6234)

(declare-fun b!617122 () Bool)

(assert (=> b!617122 (= e!374270 (and tp!190911 (inv!7910 (tag!1518 (h!11625 rules!3744))) (inv!7913 (transformation!1256 (h!11625 rules!3744))) e!374268))))

(declare-fun b!617123 () Bool)

(declare-fun e!374265 () Bool)

(assert (=> b!617123 (= e!374265 (not true))))

(declare-fun lt!264473 () Bool)

(declare-datatypes ((LexerInterface!1144 0))(
  ( (LexerInterfaceExt!1141 (__x!4461 Int)) (Lexer!1142) )
))
(declare-fun thiss!25598 () LexerInterface!1144)

(declare-fun rulesValidInductive!479 (LexerInterface!1144 List!6234) Bool)

(assert (=> b!617123 (= lt!264473 (rulesValidInductive!479 thiss!25598 rules!3744))))

(declare-fun ruleValid!438 (LexerInterface!1144 Rule!2312) Bool)

(assert (=> b!617123 (ruleValid!438 thiss!25598 r!3983)))

(declare-datatypes ((Unit!11371 0))(
  ( (Unit!11372) )
))
(declare-fun lt!264474 () Unit!11371)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!283 (LexerInterface!1144 Rule!2312 List!6234) Unit!11371)

(assert (=> b!617123 (= lt!264474 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!283 thiss!25598 r!3983 rules!3744))))

(declare-fun b!617124 () Bool)

(declare-fun res!268656 () Bool)

(assert (=> b!617124 (=> (not res!268656) (not e!374265))))

(declare-fun rulesInvariant!1105 (LexerInterface!1144 List!6234) Bool)

(assert (=> b!617124 (= res!268656 (rulesInvariant!1105 thiss!25598 rules!3744))))

(declare-fun res!268657 () Bool)

(assert (=> start!59170 (=> (not res!268657) (not e!374265))))

(assert (=> start!59170 (= res!268657 (is-Lexer!1142 thiss!25598))))

(assert (=> start!59170 e!374265))

(assert (=> start!59170 e!374266))

(assert (=> start!59170 e!374263))

(declare-fun e!374271 () Bool)

(assert (=> start!59170 e!374271))

(assert (=> start!59170 true))

(declare-fun e!374272 () Bool)

(assert (=> start!59170 e!374272))

(declare-fun b!617125 () Bool)

(declare-fun res!268658 () Bool)

(assert (=> b!617125 (=> (not res!268658) (not e!374265))))

(declare-fun isEmpty!4481 (List!6234) Bool)

(assert (=> b!617125 (= res!268658 (not (isEmpty!4481 rules!3744)))))

(declare-fun b!617126 () Bool)

(declare-fun res!268661 () Bool)

(assert (=> b!617126 (=> (not res!268661) (not e!374265))))

(declare-fun contains!1473 (List!6234 Rule!2312) Bool)

(assert (=> b!617126 (= res!268661 (contains!1473 rules!3744 r!3983))))

(assert (=> b!617127 (= e!374264 (and tp!190913 tp!190912))))

(declare-fun b!617128 () Bool)

(declare-fun tp!190915 () Bool)

(assert (=> b!617128 (= e!374272 (and tp_is_empty!3539 tp!190915))))

(declare-fun b!617129 () Bool)

(declare-fun res!268660 () Bool)

(assert (=> b!617129 (=> (not res!268660) (not e!374265))))

(declare-fun input!3215 () List!6233)

(declare-datatypes ((Token!2236 0))(
  ( (Token!2237 (value!40661 TokenValue!1280) (rule!2044 Rule!2312) (size!4861 Int) (originalCharacters!1289 List!6233)) )
))
(declare-datatypes ((tuple2!7040 0))(
  ( (tuple2!7041 (_1!3784 Token!2236) (_2!3784 List!6233)) )
))
(declare-datatypes ((Option!1601 0))(
  ( (None!1600) (Some!1600 (v!16519 tuple2!7040)) )
))
(declare-fun isEmpty!4482 (Option!1601) Bool)

(declare-fun maxPrefix!834 (LexerInterface!1144 List!6234 List!6233) Option!1601)

(assert (=> b!617129 (= res!268660 (isEmpty!4482 (maxPrefix!834 thiss!25598 rules!3744 input!3215)))))

(assert (=> b!617130 (= e!374268 (and tp!190908 tp!190914))))

(declare-fun b!617131 () Bool)

(declare-fun res!268659 () Bool)

(assert (=> b!617131 (=> (not res!268659) (not e!374265))))

(declare-fun p!2908 () List!6233)

(declare-fun isPrefix!886 (List!6233 List!6233) Bool)

(assert (=> b!617131 (= res!268659 (isPrefix!886 p!2908 input!3215))))

(declare-fun b!617132 () Bool)

(declare-fun tp!190910 () Bool)

(assert (=> b!617132 (= e!374271 (and e!374270 tp!190910))))

(assert (= (and start!59170 res!268657) b!617131))

(assert (= (and b!617131 res!268659) b!617125))

(assert (= (and b!617125 res!268658) b!617124))

(assert (= (and b!617124 res!268656) b!617126))

(assert (= (and b!617126 res!268661) b!617129))

(assert (= (and b!617129 res!268660) b!617123))

(assert (= b!617120 b!617127))

(assert (= start!59170 b!617120))

(assert (= (and start!59170 (is-Cons!6223 p!2908)) b!617121))

(assert (= b!617122 b!617130))

(assert (= b!617132 b!617122))

(assert (= (and start!59170 (is-Cons!6224 rules!3744)) b!617132))

(assert (= (and start!59170 (is-Cons!6223 input!3215)) b!617128))

(declare-fun m!885519 () Bool)

(assert (=> b!617131 m!885519))

(declare-fun m!885521 () Bool)

(assert (=> b!617122 m!885521))

(declare-fun m!885523 () Bool)

(assert (=> b!617122 m!885523))

(declare-fun m!885525 () Bool)

(assert (=> b!617129 m!885525))

(assert (=> b!617129 m!885525))

(declare-fun m!885527 () Bool)

(assert (=> b!617129 m!885527))

(declare-fun m!885529 () Bool)

(assert (=> b!617120 m!885529))

(declare-fun m!885531 () Bool)

(assert (=> b!617120 m!885531))

(declare-fun m!885533 () Bool)

(assert (=> b!617126 m!885533))

(declare-fun m!885535 () Bool)

(assert (=> b!617123 m!885535))

(declare-fun m!885537 () Bool)

(assert (=> b!617123 m!885537))

(declare-fun m!885539 () Bool)

(assert (=> b!617123 m!885539))

(declare-fun m!885541 () Bool)

(assert (=> b!617125 m!885541))

(declare-fun m!885543 () Bool)

(assert (=> b!617124 m!885543))

(push 1)

(assert (not b!617131))

(assert (not b_next!17753))

(assert (not b!617123))

(assert tp_is_empty!3539)

(assert (not b_next!17759))

(assert b_and!61251)

(assert b_and!61253)

(assert (not b!617124))

(assert (not b!617129))

(assert (not b!617120))

(assert (not b_next!17757))

(assert (not b!617126))

(assert (not b!617125))

(assert b_and!61257)

(assert b_and!61255)

(assert (not b!617121))

(assert (not b!617122))

(assert (not b_next!17755))

(assert (not b!617128))

(assert (not b!617132))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!17753))

(assert (not b_next!17759))

(assert b_and!61251)

(assert b_and!61253)

(assert (not b_next!17755))

(assert (not b_next!17757))

(assert b_and!61257)

(assert b_and!61255)

(check-sat)

(pop 1)

