; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!181202 () Bool)

(assert start!181202)

(declare-fun b!1827320 () Bool)

(declare-fun b_free!50959 () Bool)

(declare-fun b_next!51663 () Bool)

(assert (=> b!1827320 (= b_free!50959 (not b_next!51663))))

(declare-fun tp!516800 () Bool)

(declare-fun b_and!141997 () Bool)

(assert (=> b!1827320 (= tp!516800 b_and!141997)))

(declare-fun b_free!50961 () Bool)

(declare-fun b_next!51665 () Bool)

(assert (=> b!1827320 (= b_free!50961 (not b_next!51665))))

(declare-fun tp!516803 () Bool)

(declare-fun b_and!141999 () Bool)

(assert (=> b!1827320 (= tp!516803 b_and!141999)))

(declare-fun b!1827326 () Bool)

(declare-fun b_free!50963 () Bool)

(declare-fun b_next!51667 () Bool)

(assert (=> b!1827326 (= b_free!50963 (not b_next!51667))))

(declare-fun tp!516805 () Bool)

(declare-fun b_and!142001 () Bool)

(assert (=> b!1827326 (= tp!516805 b_and!142001)))

(declare-fun b_free!50965 () Bool)

(declare-fun b_next!51669 () Bool)

(assert (=> b!1827326 (= b_free!50965 (not b_next!51669))))

(declare-fun tp!516797 () Bool)

(declare-fun b_and!142003 () Bool)

(assert (=> b!1827326 (= tp!516797 b_and!142003)))

(declare-fun b!1827323 () Bool)

(declare-fun b_free!50967 () Bool)

(declare-fun b_next!51671 () Bool)

(assert (=> b!1827323 (= b_free!50967 (not b_next!51671))))

(declare-fun tp!516808 () Bool)

(declare-fun b_and!142005 () Bool)

(assert (=> b!1827323 (= tp!516808 b_and!142005)))

(declare-fun b_free!50969 () Bool)

(declare-fun b_next!51673 () Bool)

(assert (=> b!1827323 (= b_free!50969 (not b_next!51673))))

(declare-fun tp!516798 () Bool)

(declare-fun b_and!142007 () Bool)

(assert (=> b!1827323 (= tp!516798 b_and!142007)))

(declare-fun e!1168000 () Bool)

(assert (=> b!1827320 (= e!1168000 (and tp!516800 tp!516803))))

(declare-fun tp!516799 () Bool)

(declare-fun b!1827321 () Bool)

(declare-datatypes ((List!20147 0))(
  ( (Nil!20077) (Cons!20077 (h!25478 (_ BitVec 16)) (t!170362 List!20147)) )
))
(declare-datatypes ((TokenValue!3715 0))(
  ( (FloatLiteralValue!7430 (text!26450 List!20147)) (TokenValueExt!3714 (__x!12732 Int)) (Broken!18575 (value!112953 List!20147)) (Object!3784) (End!3715) (Def!3715) (Underscore!3715) (Match!3715) (Else!3715) (Error!3715) (Case!3715) (If!3715) (Extends!3715) (Abstract!3715) (Class!3715) (Val!3715) (DelimiterValue!7430 (del!3775 List!20147)) (KeywordValue!3721 (value!112954 List!20147)) (CommentValue!7430 (value!112955 List!20147)) (WhitespaceValue!7430 (value!112956 List!20147)) (IndentationValue!3715 (value!112957 List!20147)) (String!22906) (Int32!3715) (Broken!18576 (value!112958 List!20147)) (Boolean!3716) (Unit!34748) (OperatorValue!3718 (op!3775 List!20147)) (IdentifierValue!7430 (value!112959 List!20147)) (IdentifierValue!7431 (value!112960 List!20147)) (WhitespaceValue!7431 (value!112961 List!20147)) (True!7430) (False!7430) (Broken!18577 (value!112962 List!20147)) (Broken!18578 (value!112963 List!20147)) (True!7431) (RightBrace!3715) (RightBracket!3715) (Colon!3715) (Null!3715) (Comma!3715) (LeftBracket!3715) (False!7431) (LeftBrace!3715) (ImaginaryLiteralValue!3715 (text!26451 List!20147)) (StringLiteralValue!11145 (value!112964 List!20147)) (EOFValue!3715 (value!112965 List!20147)) (IdentValue!3715 (value!112966 List!20147)) (DelimiterValue!7431 (value!112967 List!20147)) (DedentValue!3715 (value!112968 List!20147)) (NewLineValue!3715 (value!112969 List!20147)) (IntegerValue!11145 (value!112970 (_ BitVec 32)) (text!26452 List!20147)) (IntegerValue!11146 (value!112971 Int) (text!26453 List!20147)) (Times!3715) (Or!3715) (Equal!3715) (Minus!3715) (Broken!18579 (value!112972 List!20147)) (And!3715) (Div!3715) (LessEqual!3715) (Mod!3715) (Concat!8668) (Not!3715) (Plus!3715) (SpaceValue!3715 (value!112973 List!20147)) (IntegerValue!11147 (value!112974 Int) (text!26454 List!20147)) (StringLiteralValue!11146 (text!26455 List!20147)) (FloatLiteralValue!7431 (text!26456 List!20147)) (BytesLiteralValue!3715 (value!112975 List!20147)) (CommentValue!7431 (value!112976 List!20147)) (StringLiteralValue!11147 (value!112977 List!20147)) (ErrorTokenValue!3715 (msg!3776 List!20147)) )
))
(declare-datatypes ((C!10080 0))(
  ( (C!10081 (val!5636 Int)) )
))
(declare-datatypes ((List!20148 0))(
  ( (Nil!20078) (Cons!20078 (h!25479 C!10080) (t!170363 List!20148)) )
))
(declare-datatypes ((IArray!13319 0))(
  ( (IArray!13320 (innerList!6717 List!20148)) )
))
(declare-datatypes ((Conc!6657 0))(
  ( (Node!6657 (left!16063 Conc!6657) (right!16393 Conc!6657) (csize!13544 Int) (cheight!6868 Int)) (Leaf!9690 (xs!9533 IArray!13319) (csize!13545 Int)) (Empty!6657) )
))
(declare-datatypes ((BalanceConc!13258 0))(
  ( (BalanceConc!13259 (c!298052 Conc!6657)) )
))
(declare-datatypes ((TokenValueInjection!7090 0))(
  ( (TokenValueInjection!7091 (toValue!5164 Int) (toChars!5023 Int)) )
))
(declare-datatypes ((String!22907 0))(
  ( (String!22908 (value!112978 String)) )
))
(declare-datatypes ((Regex!4953 0))(
  ( (ElementMatch!4953 (c!298053 C!10080)) (Concat!8669 (regOne!10418 Regex!4953) (regTwo!10418 Regex!4953)) (EmptyExpr!4953) (Star!4953 (reg!5282 Regex!4953)) (EmptyLang!4953) (Union!4953 (regOne!10419 Regex!4953) (regTwo!10419 Regex!4953)) )
))
(declare-datatypes ((Rule!7050 0))(
  ( (Rule!7051 (regex!3625 Regex!4953) (tag!4039 String!22907) (isSeparator!3625 Bool) (transformation!3625 TokenValueInjection!7090)) )
))
(declare-datatypes ((Token!6804 0))(
  ( (Token!6805 (value!112979 TokenValue!3715) (rule!5785 Rule!7050) (size!15924 Int) (originalCharacters!4433 List!20148)) )
))
(declare-fun token!556 () Token!6804)

(declare-fun e!1167998 () Bool)

(declare-fun e!1167999 () Bool)

(declare-fun inv!26122 (String!22907) Bool)

(declare-fun inv!26125 (TokenValueInjection!7090) Bool)

(assert (=> b!1827321 (= e!1167999 (and tp!516799 (inv!26122 (tag!4039 (rule!5785 token!556))) (inv!26125 (transformation!3625 (rule!5785 token!556))) e!1167998))))

(declare-fun tp!516806 () Bool)

(declare-fun e!1167995 () Bool)

(declare-fun b!1827322 () Bool)

(declare-fun inv!21 (TokenValue!3715) Bool)

(assert (=> b!1827322 (= e!1167995 (and (inv!21 (value!112979 token!556)) e!1167999 tp!516806))))

(assert (=> b!1827323 (= e!1167998 (and tp!516808 tp!516798))))

(declare-fun b!1827324 () Bool)

(declare-fun res!821804 () Bool)

(declare-fun e!1167991 () Bool)

(assert (=> b!1827324 (=> (not res!821804) (not e!1167991))))

(declare-fun rule!559 () Rule!7050)

(assert (=> b!1827324 (= res!821804 (= (rule!5785 token!556) rule!559))))

(declare-fun b!1827325 () Bool)

(declare-fun res!821806 () Bool)

(assert (=> b!1827325 (=> (not res!821806) (not e!1167991))))

(declare-fun suffix!1667 () List!20148)

(declare-datatypes ((LexerInterface!3254 0))(
  ( (LexerInterfaceExt!3251 (__x!12733 Int)) (Lexer!3252) )
))
(declare-fun thiss!28068 () LexerInterface!3254)

(declare-datatypes ((List!20149 0))(
  ( (Nil!20079) (Cons!20079 (h!25480 Rule!7050) (t!170364 List!20149)) )
))
(declare-fun rules!4538 () List!20149)

(declare-fun input!3612 () List!20148)

(declare-datatypes ((tuple2!19558 0))(
  ( (tuple2!19559 (_1!11181 Token!6804) (_2!11181 List!20148)) )
))
(declare-datatypes ((Option!4205 0))(
  ( (None!4204) (Some!4204 (v!25767 tuple2!19558)) )
))
(declare-fun maxPrefix!1802 (LexerInterface!3254 List!20149 List!20148) Option!4205)

(assert (=> b!1827325 (= res!821806 (= (maxPrefix!1802 thiss!28068 rules!4538 input!3612) (Some!4204 (tuple2!19559 token!556 suffix!1667))))))

(declare-fun e!1167993 () Bool)

(assert (=> b!1827326 (= e!1167993 (and tp!516805 tp!516797))))

(declare-fun b!1827327 () Bool)

(declare-fun e!1167994 () Bool)

(assert (=> b!1827327 (= e!1167991 e!1167994)))

(declare-fun res!821801 () Bool)

(assert (=> b!1827327 (=> (not res!821801) (not e!1167994))))

(declare-fun lt!709877 () List!20148)

(declare-fun ++!5449 (List!20148 List!20148) List!20148)

(assert (=> b!1827327 (= res!821801 (= input!3612 (++!5449 lt!709877 suffix!1667)))))

(declare-fun list!8157 (BalanceConc!13258) List!20148)

(declare-fun charsOf!2268 (Token!6804) BalanceConc!13258)

(assert (=> b!1827327 (= lt!709877 (list!8157 (charsOf!2268 token!556)))))

(declare-fun b!1827328 () Bool)

(declare-fun res!821800 () Bool)

(assert (=> b!1827328 (=> (not res!821800) (not e!1167991))))

(declare-fun rulesInvariant!2923 (LexerInterface!3254 List!20149) Bool)

(assert (=> b!1827328 (= res!821800 (rulesInvariant!2923 thiss!28068 rules!4538))))

(declare-fun b!1827329 () Bool)

(declare-fun res!821805 () Bool)

(assert (=> b!1827329 (=> (not res!821805) (not e!1167991))))

(declare-fun contains!3691 (List!20149 Rule!7050) Bool)

(assert (=> b!1827329 (= res!821805 (contains!3691 rules!4538 rule!559))))

(declare-fun b!1827330 () Bool)

(declare-fun e!1167996 () Bool)

(declare-fun e!1168001 () Bool)

(declare-fun tp!516796 () Bool)

(assert (=> b!1827330 (= e!1167996 (and e!1168001 tp!516796))))

(declare-fun res!821803 () Bool)

(assert (=> start!181202 (=> (not res!821803) (not e!1167991))))

(get-info :version)

(assert (=> start!181202 (= res!821803 ((_ is Lexer!3252) thiss!28068))))

(assert (=> start!181202 e!1167991))

(declare-fun e!1168002 () Bool)

(assert (=> start!181202 e!1168002))

(assert (=> start!181202 true))

(assert (=> start!181202 e!1167996))

(declare-fun inv!26126 (Token!6804) Bool)

(assert (=> start!181202 (and (inv!26126 token!556) e!1167995)))

(declare-fun e!1167997 () Bool)

(assert (=> start!181202 e!1167997))

(declare-fun e!1167992 () Bool)

(assert (=> start!181202 e!1167992))

(declare-fun b!1827331 () Bool)

(declare-fun tp!516802 () Bool)

(assert (=> b!1827331 (= e!1167997 (and tp!516802 (inv!26122 (tag!4039 rule!559)) (inv!26125 (transformation!3625 rule!559)) e!1168000))))

(declare-fun b!1827332 () Bool)

(declare-fun tp_is_empty!8141 () Bool)

(declare-fun tp!516804 () Bool)

(assert (=> b!1827332 (= e!1168002 (and tp_is_empty!8141 tp!516804))))

(declare-fun b!1827333 () Bool)

(assert (=> b!1827333 (= e!1167994 (not true))))

(declare-fun lt!709876 () Bool)

(declare-fun matchR!2416 (Regex!4953 List!20148) Bool)

(assert (=> b!1827333 (= lt!709876 (matchR!2416 (regex!3625 rule!559) lt!709877))))

(declare-fun ruleValid!1115 (LexerInterface!3254 Rule!7050) Bool)

(assert (=> b!1827333 (ruleValid!1115 thiss!28068 rule!559)))

(declare-datatypes ((Unit!34749 0))(
  ( (Unit!34750) )
))
(declare-fun lt!709878 () Unit!34749)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!634 (LexerInterface!3254 Rule!7050 List!20149) Unit!34749)

(assert (=> b!1827333 (= lt!709878 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!634 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1827334 () Bool)

(declare-fun res!821802 () Bool)

(assert (=> b!1827334 (=> (not res!821802) (not e!1167991))))

(declare-fun isEmpty!12677 (List!20149) Bool)

(assert (=> b!1827334 (= res!821802 (not (isEmpty!12677 rules!4538)))))

(declare-fun b!1827335 () Bool)

(declare-fun tp!516807 () Bool)

(assert (=> b!1827335 (= e!1168001 (and tp!516807 (inv!26122 (tag!4039 (h!25480 rules!4538))) (inv!26125 (transformation!3625 (h!25480 rules!4538))) e!1167993))))

(declare-fun b!1827336 () Bool)

(declare-fun tp!516801 () Bool)

(assert (=> b!1827336 (= e!1167992 (and tp_is_empty!8141 tp!516801))))

(assert (= (and start!181202 res!821803) b!1827334))

(assert (= (and b!1827334 res!821802) b!1827328))

(assert (= (and b!1827328 res!821800) b!1827329))

(assert (= (and b!1827329 res!821805) b!1827325))

(assert (= (and b!1827325 res!821806) b!1827324))

(assert (= (and b!1827324 res!821804) b!1827327))

(assert (= (and b!1827327 res!821801) b!1827333))

(assert (= (and start!181202 ((_ is Cons!20078) suffix!1667)) b!1827332))

(assert (= b!1827335 b!1827326))

(assert (= b!1827330 b!1827335))

(assert (= (and start!181202 ((_ is Cons!20079) rules!4538)) b!1827330))

(assert (= b!1827321 b!1827323))

(assert (= b!1827322 b!1827321))

(assert (= start!181202 b!1827322))

(assert (= b!1827331 b!1827320))

(assert (= start!181202 b!1827331))

(assert (= (and start!181202 ((_ is Cons!20078) input!3612)) b!1827336))

(declare-fun m!2255481 () Bool)

(assert (=> b!1827334 m!2255481))

(declare-fun m!2255483 () Bool)

(assert (=> b!1827329 m!2255483))

(declare-fun m!2255485 () Bool)

(assert (=> b!1827335 m!2255485))

(declare-fun m!2255487 () Bool)

(assert (=> b!1827335 m!2255487))

(declare-fun m!2255489 () Bool)

(assert (=> b!1827331 m!2255489))

(declare-fun m!2255491 () Bool)

(assert (=> b!1827331 m!2255491))

(declare-fun m!2255493 () Bool)

(assert (=> b!1827333 m!2255493))

(declare-fun m!2255495 () Bool)

(assert (=> b!1827333 m!2255495))

(declare-fun m!2255497 () Bool)

(assert (=> b!1827333 m!2255497))

(declare-fun m!2255499 () Bool)

(assert (=> b!1827328 m!2255499))

(declare-fun m!2255501 () Bool)

(assert (=> b!1827321 m!2255501))

(declare-fun m!2255503 () Bool)

(assert (=> b!1827321 m!2255503))

(declare-fun m!2255505 () Bool)

(assert (=> b!1827325 m!2255505))

(declare-fun m!2255507 () Bool)

(assert (=> start!181202 m!2255507))

(declare-fun m!2255509 () Bool)

(assert (=> b!1827327 m!2255509))

(declare-fun m!2255511 () Bool)

(assert (=> b!1827327 m!2255511))

(assert (=> b!1827327 m!2255511))

(declare-fun m!2255513 () Bool)

(assert (=> b!1827327 m!2255513))

(declare-fun m!2255515 () Bool)

(assert (=> b!1827322 m!2255515))

(check-sat (not b!1827336) (not b!1827325) (not b_next!51669) (not b!1827321) (not b!1827332) b_and!142001 (not b_next!51671) b_and!142007 (not b_next!51667) (not b!1827330) (not b!1827327) (not start!181202) (not b!1827322) (not b!1827328) (not b!1827333) (not b!1827335) (not b_next!51663) b_and!142005 tp_is_empty!8141 (not b_next!51673) b_and!141997 (not b!1827329) b_and!142003 (not b_next!51665) (not b!1827331) b_and!141999 (not b!1827334))
(check-sat (not b_next!51669) b_and!142001 (not b_next!51671) (not b_next!51663) b_and!142005 b_and!142007 (not b_next!51667) (not b_next!51665) b_and!141999 (not b_next!51673) b_and!141997 b_and!142003)
