; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48656 () Bool)

(assert start!48656)

(declare-fun b!530023 () Bool)

(declare-fun b_free!14193 () Bool)

(declare-fun b_next!14209 () Bool)

(assert (=> b!530023 (= b_free!14193 (not b_next!14209))))

(declare-fun tp!168816 () Bool)

(declare-fun b_and!51723 () Bool)

(assert (=> b!530023 (= tp!168816 b_and!51723)))

(declare-fun b_free!14195 () Bool)

(declare-fun b_next!14211 () Bool)

(assert (=> b!530023 (= b_free!14195 (not b_next!14211))))

(declare-fun tp!168809 () Bool)

(declare-fun b_and!51725 () Bool)

(assert (=> b!530023 (= tp!168809 b_and!51725)))

(declare-fun b!530022 () Bool)

(declare-fun b_free!14197 () Bool)

(declare-fun b_next!14213 () Bool)

(assert (=> b!530022 (= b_free!14197 (not b_next!14213))))

(declare-fun tp!168811 () Bool)

(declare-fun b_and!51727 () Bool)

(assert (=> b!530022 (= tp!168811 b_and!51727)))

(declare-fun b_free!14199 () Bool)

(declare-fun b_next!14215 () Bool)

(assert (=> b!530022 (= b_free!14199 (not b_next!14215))))

(declare-fun tp!168810 () Bool)

(declare-fun b_and!51729 () Bool)

(assert (=> b!530022 (= tp!168810 b_and!51729)))

(declare-fun b!530018 () Bool)

(declare-fun e!318945 () Bool)

(declare-datatypes ((C!3400 0))(
  ( (C!3401 (val!1926 Int)) )
))
(declare-datatypes ((Regex!1239 0))(
  ( (ElementMatch!1239 (c!101320 C!3400)) (Concat!2168 (regOne!2990 Regex!1239) (regTwo!2990 Regex!1239)) (EmptyExpr!1239) (Star!1239 (reg!1568 Regex!1239)) (EmptyLang!1239) (Union!1239 (regOne!2991 Regex!1239) (regTwo!2991 Regex!1239)) )
))
(declare-datatypes ((List!5035 0))(
  ( (Nil!5025) (Cons!5025 (h!10426 (_ BitVec 16)) (t!73686 List!5035)) )
))
(declare-datatypes ((TokenValue!929 0))(
  ( (FloatLiteralValue!1858 (text!6948 List!5035)) (TokenValueExt!928 (__x!3756 Int)) (Broken!4645 (value!30633 List!5035)) (Object!938) (End!929) (Def!929) (Underscore!929) (Match!929) (Else!929) (Error!929) (Case!929) (If!929) (Extends!929) (Abstract!929) (Class!929) (Val!929) (DelimiterValue!1858 (del!989 List!5035)) (KeywordValue!935 (value!30634 List!5035)) (CommentValue!1858 (value!30635 List!5035)) (WhitespaceValue!1858 (value!30636 List!5035)) (IndentationValue!929 (value!30637 List!5035)) (String!6388) (Int32!929) (Broken!4646 (value!30638 List!5035)) (Boolean!930) (Unit!8828) (OperatorValue!932 (op!989 List!5035)) (IdentifierValue!1858 (value!30639 List!5035)) (IdentifierValue!1859 (value!30640 List!5035)) (WhitespaceValue!1859 (value!30641 List!5035)) (True!1858) (False!1858) (Broken!4647 (value!30642 List!5035)) (Broken!4648 (value!30643 List!5035)) (True!1859) (RightBrace!929) (RightBracket!929) (Colon!929) (Null!929) (Comma!929) (LeftBracket!929) (False!1859) (LeftBrace!929) (ImaginaryLiteralValue!929 (text!6949 List!5035)) (StringLiteralValue!2787 (value!30644 List!5035)) (EOFValue!929 (value!30645 List!5035)) (IdentValue!929 (value!30646 List!5035)) (DelimiterValue!1859 (value!30647 List!5035)) (DedentValue!929 (value!30648 List!5035)) (NewLineValue!929 (value!30649 List!5035)) (IntegerValue!2787 (value!30650 (_ BitVec 32)) (text!6950 List!5035)) (IntegerValue!2788 (value!30651 Int) (text!6951 List!5035)) (Times!929) (Or!929) (Equal!929) (Minus!929) (Broken!4649 (value!30652 List!5035)) (And!929) (Div!929) (LessEqual!929) (Mod!929) (Concat!2169) (Not!929) (Plus!929) (SpaceValue!929 (value!30653 List!5035)) (IntegerValue!2789 (value!30654 Int) (text!6952 List!5035)) (StringLiteralValue!2788 (text!6953 List!5035)) (FloatLiteralValue!1859 (text!6954 List!5035)) (BytesLiteralValue!929 (value!30655 List!5035)) (CommentValue!1859 (value!30656 List!5035)) (StringLiteralValue!2789 (value!30657 List!5035)) (ErrorTokenValue!929 (msg!990 List!5035)) )
))
(declare-datatypes ((String!6389 0))(
  ( (String!6390 (value!30658 String)) )
))
(declare-datatypes ((List!5036 0))(
  ( (Nil!5026) (Cons!5026 (h!10427 C!3400) (t!73687 List!5036)) )
))
(declare-datatypes ((IArray!3245 0))(
  ( (IArray!3246 (innerList!1680 List!5036)) )
))
(declare-datatypes ((Conc!1622 0))(
  ( (Node!1622 (left!4255 Conc!1622) (right!4585 Conc!1622) (csize!3474 Int) (cheight!1833 Int)) (Leaf!2582 (xs!4259 IArray!3245) (csize!3475 Int)) (Empty!1622) )
))
(declare-datatypes ((BalanceConc!3252 0))(
  ( (BalanceConc!3253 (c!101321 Conc!1622)) )
))
(declare-datatypes ((TokenValueInjection!1626 0))(
  ( (TokenValueInjection!1627 (toValue!1748 Int) (toChars!1607 Int)) )
))
(declare-datatypes ((Rule!1610 0))(
  ( (Rule!1611 (regex!905 Regex!1239) (tag!1167 String!6389) (isSeparator!905 Bool) (transformation!905 TokenValueInjection!1626)) )
))
(declare-datatypes ((Token!1546 0))(
  ( (Token!1547 (value!30659 TokenValue!929) (rule!1605 Rule!1610) (size!4087 Int) (originalCharacters!944 List!5036)) )
))
(declare-fun token!491 () Token!1546)

(declare-fun e!318944 () Bool)

(declare-fun tp!168817 () Bool)

(declare-fun inv!6302 (String!6389) Bool)

(declare-fun inv!6305 (TokenValueInjection!1626) Bool)

(assert (=> b!530018 (= e!318945 (and tp!168817 (inv!6302 (tag!1167 (rule!1605 token!491))) (inv!6305 (transformation!905 (rule!1605 token!491))) e!318944))))

(declare-fun e!318935 () Bool)

(declare-fun tp!168815 () Bool)

(declare-fun b!530019 () Bool)

(declare-fun inv!21 (TokenValue!929) Bool)

(assert (=> b!530019 (= e!318935 (and (inv!21 (value!30659 token!491)) e!318945 tp!168815))))

(declare-fun b!530020 () Bool)

(declare-fun e!318943 () Bool)

(declare-fun e!318938 () Bool)

(declare-fun tp!168818 () Bool)

(assert (=> b!530020 (= e!318943 (and e!318938 tp!168818))))

(declare-fun b!530021 () Bool)

(declare-fun res!223778 () Bool)

(declare-fun e!318941 () Bool)

(assert (=> b!530021 (=> (not res!223778) (not e!318941))))

(declare-datatypes ((LexerInterface!791 0))(
  ( (LexerInterfaceExt!788 (__x!3757 Int)) (Lexer!789) )
))
(declare-fun thiss!22590 () LexerInterface!791)

(declare-datatypes ((List!5037 0))(
  ( (Nil!5027) (Cons!5027 (h!10428 Rule!1610) (t!73688 List!5037)) )
))
(declare-fun rules!3103 () List!5037)

(declare-fun rulesInvariant!754 (LexerInterface!791 List!5037) Bool)

(assert (=> b!530021 (= res!223778 (rulesInvariant!754 thiss!22590 rules!3103))))

(declare-fun e!318940 () Bool)

(assert (=> b!530022 (= e!318940 (and tp!168811 tp!168810))))

(declare-fun res!223781 () Bool)

(assert (=> start!48656 (=> (not res!223781) (not e!318941))))

(get-info :version)

(assert (=> start!48656 (= res!223781 ((_ is Lexer!789) thiss!22590))))

(assert (=> start!48656 e!318941))

(declare-fun e!318937 () Bool)

(assert (=> start!48656 e!318937))

(assert (=> start!48656 e!318943))

(declare-fun inv!6306 (Token!1546) Bool)

(assert (=> start!48656 (and (inv!6306 token!491) e!318935)))

(assert (=> start!48656 true))

(declare-fun e!318942 () Bool)

(assert (=> start!48656 e!318942))

(assert (=> b!530023 (= e!318944 (and tp!168816 tp!168809))))

(declare-fun b!530024 () Bool)

(assert (=> b!530024 (= e!318941 false)))

(declare-fun lt!218421 () Bool)

(declare-fun rulesValidInductive!306 (LexerInterface!791 List!5037) Bool)

(assert (=> b!530024 (= lt!218421 (rulesValidInductive!306 thiss!22590 rules!3103))))

(declare-fun tp!168813 () Bool)

(declare-fun b!530025 () Bool)

(assert (=> b!530025 (= e!318938 (and tp!168813 (inv!6302 (tag!1167 (h!10428 rules!3103))) (inv!6305 (transformation!905 (h!10428 rules!3103))) e!318940))))

(declare-fun b!530026 () Bool)

(declare-fun res!223777 () Bool)

(assert (=> b!530026 (=> (not res!223777) (not e!318941))))

(declare-fun input!2705 () List!5036)

(declare-fun suffix!1342 () List!5036)

(declare-datatypes ((tuple2!6164 0))(
  ( (tuple2!6165 (_1!3346 Token!1546) (_2!3346 List!5036)) )
))
(declare-datatypes ((Option!1255 0))(
  ( (None!1254) (Some!1254 (v!16059 tuple2!6164)) )
))
(declare-fun isDefined!1067 (Option!1255) Bool)

(declare-fun maxPrefix!489 (LexerInterface!791 List!5037 List!5036) Option!1255)

(declare-fun ++!1393 (List!5036 List!5036) List!5036)

(assert (=> b!530026 (= res!223777 (isDefined!1067 (maxPrefix!489 thiss!22590 rules!3103 (++!1393 input!2705 suffix!1342))))))

(declare-fun b!530027 () Bool)

(declare-fun res!223780 () Bool)

(assert (=> b!530027 (=> (not res!223780) (not e!318941))))

(declare-fun isEmpty!3638 (List!5037) Bool)

(assert (=> b!530027 (= res!223780 (not (isEmpty!3638 rules!3103)))))

(declare-fun b!530028 () Bool)

(declare-fun res!223779 () Bool)

(assert (=> b!530028 (=> (not res!223779) (not e!318941))))

(declare-fun isEmpty!3639 (List!5036) Bool)

(assert (=> b!530028 (= res!223779 (not (isEmpty!3639 input!2705)))))

(declare-fun b!530029 () Bool)

(declare-fun tp_is_empty!2833 () Bool)

(declare-fun tp!168814 () Bool)

(assert (=> b!530029 (= e!318942 (and tp_is_empty!2833 tp!168814))))

(declare-fun b!530030 () Bool)

(declare-fun tp!168812 () Bool)

(assert (=> b!530030 (= e!318937 (and tp_is_empty!2833 tp!168812))))

(declare-fun b!530031 () Bool)

(declare-fun res!223776 () Bool)

(assert (=> b!530031 (=> (not res!223776) (not e!318941))))

(declare-fun list!2091 (BalanceConc!3252) List!5036)

(declare-fun charsOf!534 (Token!1546) BalanceConc!3252)

(assert (=> b!530031 (= res!223776 (= (list!2091 (charsOf!534 token!491)) input!2705))))

(assert (= (and start!48656 res!223781) b!530027))

(assert (= (and b!530027 res!223780) b!530021))

(assert (= (and b!530021 res!223778) b!530028))

(assert (= (and b!530028 res!223779) b!530031))

(assert (= (and b!530031 res!223776) b!530026))

(assert (= (and b!530026 res!223777) b!530024))

(assert (= (and start!48656 ((_ is Cons!5026) suffix!1342)) b!530030))

(assert (= b!530025 b!530022))

(assert (= b!530020 b!530025))

(assert (= (and start!48656 ((_ is Cons!5027) rules!3103)) b!530020))

(assert (= b!530018 b!530023))

(assert (= b!530019 b!530018))

(assert (= start!48656 b!530019))

(assert (= (and start!48656 ((_ is Cons!5026) input!2705)) b!530029))

(declare-fun m!775381 () Bool)

(assert (=> b!530024 m!775381))

(declare-fun m!775383 () Bool)

(assert (=> start!48656 m!775383))

(declare-fun m!775385 () Bool)

(assert (=> b!530019 m!775385))

(declare-fun m!775387 () Bool)

(assert (=> b!530018 m!775387))

(declare-fun m!775389 () Bool)

(assert (=> b!530018 m!775389))

(declare-fun m!775391 () Bool)

(assert (=> b!530031 m!775391))

(assert (=> b!530031 m!775391))

(declare-fun m!775393 () Bool)

(assert (=> b!530031 m!775393))

(declare-fun m!775395 () Bool)

(assert (=> b!530021 m!775395))

(declare-fun m!775397 () Bool)

(assert (=> b!530025 m!775397))

(declare-fun m!775399 () Bool)

(assert (=> b!530025 m!775399))

(declare-fun m!775401 () Bool)

(assert (=> b!530027 m!775401))

(declare-fun m!775403 () Bool)

(assert (=> b!530026 m!775403))

(assert (=> b!530026 m!775403))

(declare-fun m!775405 () Bool)

(assert (=> b!530026 m!775405))

(assert (=> b!530026 m!775405))

(declare-fun m!775407 () Bool)

(assert (=> b!530026 m!775407))

(declare-fun m!775409 () Bool)

(assert (=> b!530028 m!775409))

(check-sat b_and!51723 (not b!530025) tp_is_empty!2833 (not b!530028) (not b!530029) (not b!530027) b_and!51727 b_and!51725 (not b_next!14213) (not b!530026) (not b_next!14209) (not b!530024) (not start!48656) (not b!530021) (not b_next!14211) b_and!51729 (not b!530020) (not b_next!14215) (not b!530019) (not b!530031) (not b!530030) (not b!530018))
(check-sat b_and!51723 (not b_next!14215) b_and!51727 b_and!51725 (not b_next!14213) (not b_next!14209) (not b_next!14211) b_and!51729)
