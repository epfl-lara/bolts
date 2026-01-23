; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!405420 () Bool)

(assert start!405420)

(declare-fun b!4237034 () Bool)

(declare-fun b_free!125275 () Bool)

(declare-fun b_next!125979 () Bool)

(assert (=> b!4237034 (= b_free!125275 (not b_next!125979))))

(declare-fun tp!1298005 () Bool)

(declare-fun b_and!334745 () Bool)

(assert (=> b!4237034 (= tp!1298005 b_and!334745)))

(declare-fun b_free!125277 () Bool)

(declare-fun b_next!125981 () Bool)

(assert (=> b!4237034 (= b_free!125277 (not b_next!125981))))

(declare-fun tp!1298015 () Bool)

(declare-fun b_and!334747 () Bool)

(assert (=> b!4237034 (= tp!1298015 b_and!334747)))

(declare-fun b!4237044 () Bool)

(declare-fun b_free!125279 () Bool)

(declare-fun b_next!125983 () Bool)

(assert (=> b!4237044 (= b_free!125279 (not b_next!125983))))

(declare-fun tp!1297999 () Bool)

(declare-fun b_and!334749 () Bool)

(assert (=> b!4237044 (= tp!1297999 b_and!334749)))

(declare-fun b_free!125281 () Bool)

(declare-fun b_next!125985 () Bool)

(assert (=> b!4237044 (= b_free!125281 (not b_next!125985))))

(declare-fun tp!1298000 () Bool)

(declare-fun b_and!334751 () Bool)

(assert (=> b!4237044 (= tp!1298000 b_and!334751)))

(declare-fun b!4237038 () Bool)

(declare-fun b_free!125283 () Bool)

(declare-fun b_next!125987 () Bool)

(assert (=> b!4237038 (= b_free!125283 (not b_next!125987))))

(declare-fun tp!1298002 () Bool)

(declare-fun b_and!334753 () Bool)

(assert (=> b!4237038 (= tp!1298002 b_and!334753)))

(declare-fun b_free!125285 () Bool)

(declare-fun b_next!125989 () Bool)

(assert (=> b!4237038 (= b_free!125285 (not b_next!125989))))

(declare-fun tp!1298006 () Bool)

(declare-fun b_and!334755 () Bool)

(assert (=> b!4237038 (= tp!1298006 b_and!334755)))

(declare-datatypes ((List!46964 0))(
  ( (Nil!46840) (Cons!46840 (h!52260 (_ BitVec 16)) (t!349907 List!46964)) )
))
(declare-datatypes ((TokenValue!8147 0))(
  ( (FloatLiteralValue!16294 (text!57474 List!46964)) (TokenValueExt!8146 (__x!28517 Int)) (Broken!40735 (value!246146 List!46964)) (Object!8270) (End!8147) (Def!8147) (Underscore!8147) (Match!8147) (Else!8147) (Error!8147) (Case!8147) (If!8147) (Extends!8147) (Abstract!8147) (Class!8147) (Val!8147) (DelimiterValue!16294 (del!8207 List!46964)) (KeywordValue!8153 (value!246147 List!46964)) (CommentValue!16294 (value!246148 List!46964)) (WhitespaceValue!16294 (value!246149 List!46964)) (IndentationValue!8147 (value!246150 List!46964)) (String!54666) (Int32!8147) (Broken!40736 (value!246151 List!46964)) (Boolean!8148) (Unit!65945) (OperatorValue!8150 (op!8207 List!46964)) (IdentifierValue!16294 (value!246152 List!46964)) (IdentifierValue!16295 (value!246153 List!46964)) (WhitespaceValue!16295 (value!246154 List!46964)) (True!16294) (False!16294) (Broken!40737 (value!246155 List!46964)) (Broken!40738 (value!246156 List!46964)) (True!16295) (RightBrace!8147) (RightBracket!8147) (Colon!8147) (Null!8147) (Comma!8147) (LeftBracket!8147) (False!16295) (LeftBrace!8147) (ImaginaryLiteralValue!8147 (text!57475 List!46964)) (StringLiteralValue!24441 (value!246157 List!46964)) (EOFValue!8147 (value!246158 List!46964)) (IdentValue!8147 (value!246159 List!46964)) (DelimiterValue!16295 (value!246160 List!46964)) (DedentValue!8147 (value!246161 List!46964)) (NewLineValue!8147 (value!246162 List!46964)) (IntegerValue!24441 (value!246163 (_ BitVec 32)) (text!57476 List!46964)) (IntegerValue!24442 (value!246164 Int) (text!57477 List!46964)) (Times!8147) (Or!8147) (Equal!8147) (Minus!8147) (Broken!40739 (value!246165 List!46964)) (And!8147) (Div!8147) (LessEqual!8147) (Mod!8147) (Concat!20969) (Not!8147) (Plus!8147) (SpaceValue!8147 (value!246166 List!46964)) (IntegerValue!24443 (value!246167 Int) (text!57478 List!46964)) (StringLiteralValue!24442 (text!57479 List!46964)) (FloatLiteralValue!16295 (text!57480 List!46964)) (BytesLiteralValue!8147 (value!246168 List!46964)) (CommentValue!16295 (value!246169 List!46964)) (StringLiteralValue!24443 (value!246170 List!46964)) (ErrorTokenValue!8147 (msg!8208 List!46964)) )
))
(declare-datatypes ((C!25842 0))(
  ( (C!25843 (val!15111 Int)) )
))
(declare-datatypes ((Regex!12822 0))(
  ( (ElementMatch!12822 (c!720053 C!25842)) (Concat!20970 (regOne!26156 Regex!12822) (regTwo!26156 Regex!12822)) (EmptyExpr!12822) (Star!12822 (reg!13151 Regex!12822)) (EmptyLang!12822) (Union!12822 (regOne!26157 Regex!12822) (regTwo!26157 Regex!12822)) )
))
(declare-datatypes ((String!54667 0))(
  ( (String!54668 (value!246171 String)) )
))
(declare-datatypes ((List!46965 0))(
  ( (Nil!46841) (Cons!46841 (h!52261 C!25842) (t!349908 List!46965)) )
))
(declare-datatypes ((IArray!28261 0))(
  ( (IArray!28262 (innerList!14188 List!46965)) )
))
(declare-datatypes ((Conc!14128 0))(
  ( (Node!14128 (left!34821 Conc!14128) (right!35151 Conc!14128) (csize!28486 Int) (cheight!14339 Int)) (Leaf!21846 (xs!17434 IArray!28261) (csize!28487 Int)) (Empty!14128) )
))
(declare-datatypes ((BalanceConc!27850 0))(
  ( (BalanceConc!27851 (c!720054 Conc!14128)) )
))
(declare-datatypes ((TokenValueInjection!15722 0))(
  ( (TokenValueInjection!15723 (toValue!10661 Int) (toChars!10520 Int)) )
))
(declare-datatypes ((Rule!15634 0))(
  ( (Rule!15635 (regex!7917 Regex!12822) (tag!8781 String!54667) (isSeparator!7917 Bool) (transformation!7917 TokenValueInjection!15722)) )
))
(declare-datatypes ((Token!14460 0))(
  ( (Token!14461 (value!246172 TokenValue!8147) (rule!11041 Rule!15634) (size!34314 Int) (originalCharacters!8261 List!46965)) )
))
(declare-datatypes ((List!46966 0))(
  ( (Nil!46842) (Cons!46842 (h!52262 Token!14460) (t!349909 List!46966)) )
))
(declare-fun addTokens!17 () List!46966)

(declare-fun tp!1298014 () Bool)

(declare-fun e!2631108 () Bool)

(declare-fun b!4237027 () Bool)

(declare-fun e!2631105 () Bool)

(declare-fun inv!21 (TokenValue!8147) Bool)

(assert (=> b!4237027 (= e!2631108 (and (inv!21 (value!246172 (h!52262 addTokens!17))) e!2631105 tp!1298014))))

(declare-fun b!4237028 () Bool)

(declare-fun e!2631103 () Bool)

(declare-fun tp_is_empty!22635 () Bool)

(declare-fun tp!1298001 () Bool)

(assert (=> b!4237028 (= e!2631103 (and tp_is_empty!22635 tp!1298001))))

(declare-fun e!2631113 () Bool)

(declare-fun b!4237029 () Bool)

(declare-fun e!2631102 () Bool)

(declare-fun tokens!581 () List!46966)

(declare-fun tp!1298010 () Bool)

(declare-fun inv!61567 (String!54667) Bool)

(declare-fun inv!61570 (TokenValueInjection!15722) Bool)

(assert (=> b!4237029 (= e!2631113 (and tp!1298010 (inv!61567 (tag!8781 (rule!11041 (h!52262 tokens!581)))) (inv!61570 (transformation!7917 (rule!11041 (h!52262 tokens!581)))) e!2631102))))

(declare-fun b!4237030 () Bool)

(declare-fun res!1742560 () Bool)

(declare-fun e!2631109 () Bool)

(assert (=> b!4237030 (=> (not res!1742560) (not e!2631109))))

(declare-fun longerInput!51 () List!46965)

(declare-fun shorterInput!51 () List!46965)

(declare-fun size!34315 (List!46965) Int)

(assert (=> b!4237030 (= res!1742560 (> (size!34315 longerInput!51) (size!34315 shorterInput!51)))))

(declare-fun b!4237031 () Bool)

(declare-fun res!1742555 () Bool)

(assert (=> b!4237031 (=> (not res!1742555) (not e!2631109))))

(declare-datatypes ((LexerInterface!7512 0))(
  ( (LexerInterfaceExt!7509 (__x!28518 Int)) (Lexer!7510) )
))
(declare-fun thiss!21540 () LexerInterface!7512)

(declare-datatypes ((List!46967 0))(
  ( (Nil!46843) (Cons!46843 (h!52263 Rule!15634) (t!349910 List!46967)) )
))
(declare-fun rules!2932 () List!46967)

(declare-fun rulesInvariant!6623 (LexerInterface!7512 List!46967) Bool)

(assert (=> b!4237031 (= res!1742555 (rulesInvariant!6623 thiss!21540 rules!2932))))

(declare-fun b!4237032 () Bool)

(declare-fun e!2631100 () Bool)

(declare-fun tp!1298004 () Bool)

(assert (=> b!4237032 (= e!2631100 (and tp_is_empty!22635 tp!1298004))))

(declare-fun b!4237033 () Bool)

(declare-fun res!1742561 () Bool)

(assert (=> b!4237033 (=> (not res!1742561) (not e!2631109))))

(declare-fun size!34316 (List!46966) Int)

(assert (=> b!4237033 (= res!1742561 (> (size!34316 addTokens!17) 0))))

(assert (=> b!4237034 (= e!2631102 (and tp!1298005 tp!1298015))))

(declare-fun b!4237035 () Bool)

(declare-fun res!1742556 () Bool)

(assert (=> b!4237035 (=> (not res!1742556) (not e!2631109))))

(declare-fun suffix!1262 () List!46965)

(declare-datatypes ((tuple2!44418 0))(
  ( (tuple2!44419 (_1!25343 List!46966) (_2!25343 List!46965)) )
))
(declare-fun lexList!2018 (LexerInterface!7512 List!46967 List!46965) tuple2!44418)

(assert (=> b!4237035 (= res!1742556 (= (lexList!2018 thiss!21540 rules!2932 longerInput!51) (tuple2!44419 tokens!581 suffix!1262)))))

(declare-fun b!4237036 () Bool)

(declare-fun e!2631106 () Bool)

(declare-fun e!2631099 () Bool)

(declare-fun tp!1298008 () Bool)

(assert (=> b!4237036 (= e!2631106 (and e!2631099 tp!1298008))))

(declare-fun b!4237037 () Bool)

(assert (=> b!4237037 (= e!2631109 false)))

(declare-datatypes ((tuple2!44420 0))(
  ( (tuple2!44421 (_1!25344 Token!14460) (_2!25344 List!46965)) )
))
(declare-datatypes ((Option!10053 0))(
  ( (None!10052) (Some!10052 (v!41000 tuple2!44420)) )
))
(declare-fun lt!1505965 () Option!10053)

(declare-fun maxPrefix!4470 (LexerInterface!7512 List!46967 List!46965) Option!10053)

(assert (=> b!4237037 (= lt!1505965 (maxPrefix!4470 thiss!21540 rules!2932 shorterInput!51))))

(declare-fun lt!1505966 () Option!10053)

(assert (=> b!4237037 (= lt!1505966 (maxPrefix!4470 thiss!21540 rules!2932 longerInput!51))))

(declare-fun e!2631116 () Bool)

(assert (=> b!4237038 (= e!2631116 (and tp!1298002 tp!1298006))))

(declare-fun b!4237039 () Bool)

(declare-fun e!2631115 () Bool)

(declare-fun tp!1298012 () Bool)

(assert (=> b!4237039 (= e!2631099 (and tp!1298012 (inv!61567 (tag!8781 (h!52263 rules!2932))) (inv!61570 (transformation!7917 (h!52263 rules!2932))) e!2631115))))

(declare-fun b!4237040 () Bool)

(declare-fun tp!1298011 () Bool)

(assert (=> b!4237040 (= e!2631105 (and tp!1298011 (inv!61567 (tag!8781 (rule!11041 (h!52262 addTokens!17)))) (inv!61570 (transformation!7917 (rule!11041 (h!52262 addTokens!17)))) e!2631116))))

(declare-fun b!4237041 () Bool)

(declare-fun res!1742557 () Bool)

(assert (=> b!4237041 (=> (not res!1742557) (not e!2631109))))

(declare-fun isEmpty!27682 (List!46965) Bool)

(assert (=> b!4237041 (= res!1742557 (not (isEmpty!27682 longerInput!51)))))

(declare-fun b!4237042 () Bool)

(declare-fun e!2631118 () Bool)

(declare-fun tp!1298007 () Bool)

(assert (=> b!4237042 (= e!2631118 (and tp_is_empty!22635 tp!1298007))))

(declare-fun tp!1298013 () Bool)

(declare-fun b!4237043 () Bool)

(declare-fun e!2631112 () Bool)

(declare-fun inv!61571 (Token!14460) Bool)

(assert (=> b!4237043 (= e!2631112 (and (inv!61571 (h!52262 addTokens!17)) e!2631108 tp!1298013))))

(assert (=> b!4237044 (= e!2631115 (and tp!1297999 tp!1298000))))

(declare-fun res!1742559 () Bool)

(assert (=> start!405420 (=> (not res!1742559) (not e!2631109))))

(assert (=> start!405420 (= res!1742559 (is-Lexer!7510 thiss!21540))))

(assert (=> start!405420 e!2631109))

(assert (=> start!405420 true))

(assert (=> start!405420 e!2631106))

(assert (=> start!405420 e!2631112))

(assert (=> start!405420 e!2631118))

(assert (=> start!405420 e!2631103))

(declare-fun e!2631101 () Bool)

(assert (=> start!405420 e!2631101))

(assert (=> start!405420 e!2631100))

(declare-fun b!4237045 () Bool)

(declare-fun res!1742558 () Bool)

(assert (=> b!4237045 (=> (not res!1742558) (not e!2631109))))

(declare-fun isEmpty!27683 (List!46967) Bool)

(assert (=> b!4237045 (= res!1742558 (not (isEmpty!27683 rules!2932)))))

(declare-fun b!4237046 () Bool)

(declare-fun res!1742554 () Bool)

(assert (=> b!4237046 (=> (not res!1742554) (not e!2631109))))

(declare-fun isEmpty!27684 (List!46966) Bool)

(assert (=> b!4237046 (= res!1742554 (not (isEmpty!27684 addTokens!17)))))

(declare-fun e!2631107 () Bool)

(declare-fun b!4237047 () Bool)

(declare-fun tp!1298003 () Bool)

(assert (=> b!4237047 (= e!2631101 (and (inv!61571 (h!52262 tokens!581)) e!2631107 tp!1298003))))

(declare-fun b!4237048 () Bool)

(declare-fun tp!1298009 () Bool)

(assert (=> b!4237048 (= e!2631107 (and (inv!21 (value!246172 (h!52262 tokens!581))) e!2631113 tp!1298009))))

(assert (= (and start!405420 res!1742559) b!4237045))

(assert (= (and b!4237045 res!1742558) b!4237031))

(assert (= (and b!4237031 res!1742555) b!4237041))

(assert (= (and b!4237041 res!1742557) b!4237030))

(assert (= (and b!4237030 res!1742560) b!4237035))

(assert (= (and b!4237035 res!1742556) b!4237046))

(assert (= (and b!4237046 res!1742554) b!4237033))

(assert (= (and b!4237033 res!1742561) b!4237037))

(assert (= b!4237039 b!4237044))

(assert (= b!4237036 b!4237039))

(assert (= (and start!405420 (is-Cons!46843 rules!2932)) b!4237036))

(assert (= b!4237040 b!4237038))

(assert (= b!4237027 b!4237040))

(assert (= b!4237043 b!4237027))

(assert (= (and start!405420 (is-Cons!46842 addTokens!17)) b!4237043))

(assert (= (and start!405420 (is-Cons!46841 shorterInput!51)) b!4237042))

(assert (= (and start!405420 (is-Cons!46841 suffix!1262)) b!4237028))

(assert (= b!4237029 b!4237034))

(assert (= b!4237048 b!4237029))

(assert (= b!4237047 b!4237048))

(assert (= (and start!405420 (is-Cons!46842 tokens!581)) b!4237047))

(assert (= (and start!405420 (is-Cons!46841 longerInput!51)) b!4237032))

(declare-fun m!4822511 () Bool)

(assert (=> b!4237031 m!4822511))

(declare-fun m!4822513 () Bool)

(assert (=> b!4237041 m!4822513))

(declare-fun m!4822515 () Bool)

(assert (=> b!4237048 m!4822515))

(declare-fun m!4822517 () Bool)

(assert (=> b!4237027 m!4822517))

(declare-fun m!4822519 () Bool)

(assert (=> b!4237039 m!4822519))

(declare-fun m!4822521 () Bool)

(assert (=> b!4237039 m!4822521))

(declare-fun m!4822523 () Bool)

(assert (=> b!4237040 m!4822523))

(declare-fun m!4822525 () Bool)

(assert (=> b!4237040 m!4822525))

(declare-fun m!4822527 () Bool)

(assert (=> b!4237029 m!4822527))

(declare-fun m!4822529 () Bool)

(assert (=> b!4237029 m!4822529))

(declare-fun m!4822531 () Bool)

(assert (=> b!4237047 m!4822531))

(declare-fun m!4822533 () Bool)

(assert (=> b!4237046 m!4822533))

(declare-fun m!4822535 () Bool)

(assert (=> b!4237045 m!4822535))

(declare-fun m!4822537 () Bool)

(assert (=> b!4237033 m!4822537))

(declare-fun m!4822539 () Bool)

(assert (=> b!4237030 m!4822539))

(declare-fun m!4822541 () Bool)

(assert (=> b!4237030 m!4822541))

(declare-fun m!4822543 () Bool)

(assert (=> b!4237043 m!4822543))

(declare-fun m!4822545 () Bool)

(assert (=> b!4237037 m!4822545))

(declare-fun m!4822547 () Bool)

(assert (=> b!4237037 m!4822547))

(declare-fun m!4822549 () Bool)

(assert (=> b!4237035 m!4822549))

(push 1)

(assert (not b!4237032))

(assert (not b!4237046))

(assert b_and!334751)

(assert (not b!4237047))

(assert b_and!334753)

(assert (not b!4237043))

(assert (not b!4237029))

(assert b_and!334755)

(assert (not b_next!125987))

(assert (not b_next!125979))

(assert tp_is_empty!22635)

(assert (not b!4237027))

(assert (not b!4237036))

(assert b_and!334749)

(assert (not b_next!125985))

(assert b_and!334747)

(assert (not b_next!125983))

(assert (not b_next!125989))

(assert (not b!4237048))

(assert (not b!4237042))

(assert (not b!4237037))

(assert (not b!4237033))

(assert (not b!4237028))

(assert (not b!4237030))

(assert (not b!4237045))

(assert (not b_next!125981))

(assert (not b!4237031))

(assert b_and!334745)

(assert (not b!4237041))

(assert (not b!4237040))

(assert (not b!4237035))

(assert (not b!4237039))

(check-sat)

(pop 1)

(push 1)

(assert b_and!334751)

(assert b_and!334753)

(assert b_and!334755)

(assert (not b_next!125987))

(assert (not b_next!125981))

(assert b_and!334745)

(assert (not b_next!125979))

(assert b_and!334749)

(assert (not b_next!125985))

(assert b_and!334747)

(assert (not b_next!125983))

(assert (not b_next!125989))

(check-sat)

(pop 1)

