; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5634 () Bool)

(assert start!5634)

(declare-fun b!75160 () Bool)

(declare-fun b_free!2329 () Bool)

(declare-fun b_next!2329 () Bool)

(assert (=> b!75160 (= b_free!2329 (not b_next!2329))))

(declare-fun tp!49044 () Bool)

(declare-fun b_and!3371 () Bool)

(assert (=> b!75160 (= tp!49044 b_and!3371)))

(declare-fun b_free!2331 () Bool)

(declare-fun b_next!2331 () Bool)

(assert (=> b!75160 (= b_free!2331 (not b_next!2331))))

(declare-fun tp!49046 () Bool)

(declare-fun b_and!3373 () Bool)

(assert (=> b!75160 (= tp!49046 b_and!3373)))

(declare-fun e!41802 () Bool)

(declare-fun b!75156 () Bool)

(declare-datatypes ((C!1600 0))(
  ( (C!1601 (val!407 Int)) )
))
(declare-datatypes ((List!1254 0))(
  ( (Nil!1248) (Cons!1248 (h!6645 C!1600) (t!19989 List!1254)) )
))
(declare-datatypes ((IArray!689 0))(
  ( (IArray!690 (innerList!402 List!1254)) )
))
(declare-datatypes ((Conc!344 0))(
  ( (Node!344 (left!952 Conc!344) (right!1282 Conc!344) (csize!918 Int) (cheight!555 Int)) (Leaf!615 (xs!2923 IArray!689) (csize!919 Int)) (Empty!344) )
))
(declare-datatypes ((BalanceConc!692 0))(
  ( (BalanceConc!693 (c!19496 Conc!344)) )
))
(declare-datatypes ((Regex!339 0))(
  ( (ElementMatch!339 (c!19497 C!1600)) (Concat!600 (regOne!1190 Regex!339) (regTwo!1190 Regex!339)) (EmptyExpr!339) (Star!339 (reg!668 Regex!339)) (EmptyLang!339) (Union!339 (regOne!1191 Regex!339) (regTwo!1191 Regex!339)) )
))
(declare-datatypes ((String!1696 0))(
  ( (String!1697 (value!10593 String)) )
))
(declare-datatypes ((List!1255 0))(
  ( (Nil!1249) (Cons!1249 (h!6646 (_ BitVec 16)) (t!19990 List!1255)) )
))
(declare-datatypes ((TokenValue!261 0))(
  ( (FloatLiteralValue!522 (text!2272 List!1255)) (TokenValueExt!260 (__x!1617 Int)) (Broken!1305 (value!10594 List!1255)) (Object!266) (End!261) (Def!261) (Underscore!261) (Match!261) (Else!261) (Error!261) (Case!261) (If!261) (Extends!261) (Abstract!261) (Class!261) (Val!261) (DelimiterValue!522 (del!321 List!1255)) (KeywordValue!267 (value!10595 List!1255)) (CommentValue!522 (value!10596 List!1255)) (WhitespaceValue!522 (value!10597 List!1255)) (IndentationValue!261 (value!10598 List!1255)) (String!1698) (Int32!261) (Broken!1306 (value!10599 List!1255)) (Boolean!262) (Unit!745) (OperatorValue!264 (op!321 List!1255)) (IdentifierValue!522 (value!10600 List!1255)) (IdentifierValue!523 (value!10601 List!1255)) (WhitespaceValue!523 (value!10602 List!1255)) (True!522) (False!522) (Broken!1307 (value!10603 List!1255)) (Broken!1308 (value!10604 List!1255)) (True!523) (RightBrace!261) (RightBracket!261) (Colon!261) (Null!261) (Comma!261) (LeftBracket!261) (False!523) (LeftBrace!261) (ImaginaryLiteralValue!261 (text!2273 List!1255)) (StringLiteralValue!783 (value!10605 List!1255)) (EOFValue!261 (value!10606 List!1255)) (IdentValue!261 (value!10607 List!1255)) (DelimiterValue!523 (value!10608 List!1255)) (DedentValue!261 (value!10609 List!1255)) (NewLineValue!261 (value!10610 List!1255)) (IntegerValue!783 (value!10611 (_ BitVec 32)) (text!2274 List!1255)) (IntegerValue!784 (value!10612 Int) (text!2275 List!1255)) (Times!261) (Or!261) (Equal!261) (Minus!261) (Broken!1309 (value!10613 List!1255)) (And!261) (Div!261) (LessEqual!261) (Mod!261) (Concat!601) (Not!261) (Plus!261) (SpaceValue!261 (value!10614 List!1255)) (IntegerValue!785 (value!10615 Int) (text!2276 List!1255)) (StringLiteralValue!784 (text!2277 List!1255)) (FloatLiteralValue!523 (text!2278 List!1255)) (BytesLiteralValue!261 (value!10616 List!1255)) (CommentValue!523 (value!10617 List!1255)) (StringLiteralValue!785 (value!10618 List!1255)) (ErrorTokenValue!261 (msg!322 List!1255)) )
))
(declare-datatypes ((TokenValueInjection!346 0))(
  ( (TokenValueInjection!347 (toValue!770 Int) (toChars!629 Int)) )
))
(declare-datatypes ((Rule!342 0))(
  ( (Rule!343 (regex!271 Regex!339) (tag!449 String!1696) (isSeparator!271 Bool) (transformation!271 TokenValueInjection!346)) )
))
(declare-datatypes ((List!1256 0))(
  ( (Nil!1250) (Cons!1250 (h!6647 Rule!342) (t!19991 List!1256)) )
))
(declare-fun rules!2471 () List!1256)

(declare-fun e!41803 () Bool)

(declare-fun tp!49048 () Bool)

(declare-fun inv!1652 (String!1696) Bool)

(declare-fun inv!1654 (TokenValueInjection!346) Bool)

(assert (=> b!75156 (= e!41802 (and tp!49048 (inv!1652 (tag!449 (h!6647 rules!2471))) (inv!1654 (transformation!271 (h!6647 rules!2471))) e!41803))))

(declare-fun b!75157 () Bool)

(declare-fun e!41799 () Bool)

(declare-fun tp_is_empty!601 () Bool)

(declare-fun tp!49047 () Bool)

(assert (=> b!75157 (= e!41799 (and tp_is_empty!601 tp!49047))))

(declare-fun b!75158 () Bool)

(declare-fun res!39306 () Bool)

(declare-fun e!41805 () Bool)

(assert (=> b!75158 (=> (not res!39306) (not e!41805))))

(declare-fun isEmpty!328 (List!1256) Bool)

(assert (=> b!75158 (= res!39306 (not (isEmpty!328 rules!2471)))))

(declare-fun b!75159 () Bool)

(declare-fun e!41800 () Bool)

(assert (=> b!75159 (= e!41800 (not true))))

(declare-datatypes ((LexerInterface!163 0))(
  ( (LexerInterfaceExt!160 (__x!1618 Int)) (Lexer!161) )
))
(declare-fun thiss!19403 () LexerInterface!163)

(declare-datatypes ((Token!302 0))(
  ( (Token!303 (value!10619 TokenValue!261) (rule!746 Rule!342) (size!1127 Int) (originalCharacters!322 List!1254)) )
))
(declare-datatypes ((List!1257 0))(
  ( (Nil!1251) (Cons!1251 (h!6648 Token!302) (t!19992 List!1257)) )
))
(declare-datatypes ((IArray!691 0))(
  ( (IArray!692 (innerList!403 List!1257)) )
))
(declare-datatypes ((Conc!345 0))(
  ( (Node!345 (left!953 Conc!345) (right!1283 Conc!345) (csize!920 Int) (cheight!556 Int)) (Leaf!616 (xs!2924 IArray!691) (csize!921 Int)) (Empty!345) )
))
(declare-datatypes ((BalanceConc!694 0))(
  ( (BalanceConc!695 (c!19498 Conc!345)) )
))
(declare-datatypes ((tuple2!1228 0))(
  ( (tuple2!1229 (_1!821 BalanceConc!694) (_2!821 BalanceConc!692)) )
))
(declare-fun lt!14208 () tuple2!1228)

(declare-datatypes ((tuple2!1230 0))(
  ( (tuple2!1231 (_1!822 Token!302) (_2!822 List!1254)) )
))
(declare-fun lt!14206 () tuple2!1230)

(declare-fun ++!88 (List!1254 List!1254) List!1254)

(declare-fun list!368 (BalanceConc!692) List!1254)

(declare-fun print!16 (LexerInterface!163 BalanceConc!694) BalanceConc!692)

(assert (=> b!75159 (= (++!88 (list!368 (print!16 thiss!19403 (_1!821 lt!14208))) (list!368 (_2!821 lt!14208))) (_2!822 lt!14206))))

(declare-fun lex!71 (LexerInterface!163 List!1256 BalanceConc!692) tuple2!1228)

(declare-fun seqFromList!59 (List!1254) BalanceConc!692)

(assert (=> b!75159 (= lt!14208 (lex!71 thiss!19403 rules!2471 (seqFromList!59 (_2!822 lt!14206))))))

(declare-datatypes ((Unit!746 0))(
  ( (Unit!747) )
))
(declare-fun lt!14210 () Unit!746)

(declare-fun theoremInvertFromString!2 (LexerInterface!163 List!1256 List!1254) Unit!746)

(assert (=> b!75159 (= lt!14210 (theoremInvertFromString!2 thiss!19403 rules!2471 (_2!822 lt!14206)))))

(declare-fun input!2238 () List!1254)

(declare-datatypes ((Option!80 0))(
  ( (None!79) (Some!79 (v!12720 tuple2!1230)) )
))
(declare-fun get!309 (Option!80) tuple2!1230)

(declare-fun maxPrefix!17 (LexerInterface!163 List!1256 List!1254) Option!80)

(assert (=> b!75159 (= lt!14206 (get!309 (maxPrefix!17 thiss!19403 rules!2471 input!2238)))))

(assert (=> b!75160 (= e!41803 (and tp!49044 tp!49046))))

(declare-fun b!75161 () Bool)

(declare-fun e!41804 () Bool)

(assert (=> b!75161 (= e!41804 e!41800)))

(declare-fun res!39307 () Bool)

(assert (=> b!75161 (=> (not res!39307) (not e!41800))))

(declare-fun lt!14207 () List!1257)

(get-info :version)

(assert (=> b!75161 (= res!39307 (and (or (not ((_ is Cons!1251) lt!14207)) (not ((_ is Nil!1251) (t!19992 lt!14207)))) ((_ is Cons!1251) lt!14207)))))

(declare-fun lt!14209 () tuple2!1228)

(declare-fun list!369 (BalanceConc!694) List!1257)

(assert (=> b!75161 (= lt!14207 (list!369 (_1!821 lt!14209)))))

(declare-fun b!75163 () Bool)

(assert (=> b!75163 (= e!41805 e!41804)))

(declare-fun res!39309 () Bool)

(assert (=> b!75163 (=> (not res!39309) (not e!41804))))

(declare-fun isEmpty!329 (BalanceConc!692) Bool)

(assert (=> b!75163 (= res!39309 (isEmpty!329 (_2!821 lt!14209)))))

(assert (=> b!75163 (= lt!14209 (lex!71 thiss!19403 rules!2471 (seqFromList!59 input!2238)))))

(declare-fun b!75164 () Bool)

(declare-fun res!39308 () Bool)

(assert (=> b!75164 (=> (not res!39308) (not e!41805))))

(declare-fun rulesInvariant!157 (LexerInterface!163 List!1256) Bool)

(assert (=> b!75164 (= res!39308 (rulesInvariant!157 thiss!19403 rules!2471))))

(declare-fun res!39305 () Bool)

(assert (=> start!5634 (=> (not res!39305) (not e!41805))))

(assert (=> start!5634 (= res!39305 ((_ is Lexer!161) thiss!19403))))

(assert (=> start!5634 e!41805))

(assert (=> start!5634 true))

(declare-fun e!41806 () Bool)

(assert (=> start!5634 e!41806))

(assert (=> start!5634 e!41799))

(declare-fun b!75162 () Bool)

(declare-fun tp!49045 () Bool)

(assert (=> b!75162 (= e!41806 (and e!41802 tp!49045))))

(assert (= (and start!5634 res!39305) b!75158))

(assert (= (and b!75158 res!39306) b!75164))

(assert (= (and b!75164 res!39308) b!75163))

(assert (= (and b!75163 res!39309) b!75161))

(assert (= (and b!75161 res!39307) b!75159))

(assert (= b!75156 b!75160))

(assert (= b!75162 b!75156))

(assert (= (and start!5634 ((_ is Cons!1250) rules!2471)) b!75162))

(assert (= (and start!5634 ((_ is Cons!1248) input!2238)) b!75157))

(declare-fun m!46872 () Bool)

(assert (=> b!75161 m!46872))

(declare-fun m!46874 () Bool)

(assert (=> b!75158 m!46874))

(declare-fun m!46876 () Bool)

(assert (=> b!75164 m!46876))

(declare-fun m!46878 () Bool)

(assert (=> b!75156 m!46878))

(declare-fun m!46880 () Bool)

(assert (=> b!75156 m!46880))

(declare-fun m!46882 () Bool)

(assert (=> b!75159 m!46882))

(declare-fun m!46884 () Bool)

(assert (=> b!75159 m!46884))

(declare-fun m!46886 () Bool)

(assert (=> b!75159 m!46886))

(declare-fun m!46888 () Bool)

(assert (=> b!75159 m!46888))

(declare-fun m!46890 () Bool)

(assert (=> b!75159 m!46890))

(declare-fun m!46892 () Bool)

(assert (=> b!75159 m!46892))

(declare-fun m!46894 () Bool)

(assert (=> b!75159 m!46894))

(declare-fun m!46896 () Bool)

(assert (=> b!75159 m!46896))

(declare-fun m!46898 () Bool)

(assert (=> b!75159 m!46898))

(assert (=> b!75159 m!46888))

(assert (=> b!75159 m!46894))

(assert (=> b!75159 m!46886))

(assert (=> b!75159 m!46896))

(assert (=> b!75159 m!46882))

(declare-fun m!46900 () Bool)

(assert (=> b!75163 m!46900))

(declare-fun m!46902 () Bool)

(assert (=> b!75163 m!46902))

(assert (=> b!75163 m!46902))

(declare-fun m!46904 () Bool)

(assert (=> b!75163 m!46904))

(check-sat tp_is_empty!601 (not b_next!2331) (not b!75159) (not b!75158) b_and!3373 (not b!75161) (not b_next!2329) (not b!75163) (not b!75164) (not b!75156) b_and!3371 (not b!75162) (not b!75157))
(check-sat b_and!3373 b_and!3371 (not b_next!2331) (not b_next!2329))
