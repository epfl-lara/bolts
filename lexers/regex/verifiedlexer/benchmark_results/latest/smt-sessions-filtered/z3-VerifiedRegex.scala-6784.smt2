; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353748 () Bool)

(assert start!353748)

(declare-fun b!3766079 () Bool)

(declare-fun b_free!100901 () Bool)

(declare-fun b_next!101605 () Bool)

(assert (=> b!3766079 (= b_free!100901 (not b_next!101605))))

(declare-fun tp!1150605 () Bool)

(declare-fun b_and!279715 () Bool)

(assert (=> b!3766079 (= tp!1150605 b_and!279715)))

(declare-fun b_free!100903 () Bool)

(declare-fun b_next!101607 () Bool)

(assert (=> b!3766079 (= b_free!100903 (not b_next!101607))))

(declare-fun tp!1150602 () Bool)

(declare-fun b_and!279717 () Bool)

(assert (=> b!3766079 (= tp!1150602 b_and!279717)))

(declare-fun b!3766068 () Bool)

(declare-fun e!2329289 () Bool)

(declare-fun e!2329286 () Bool)

(assert (=> b!3766068 (= e!2329289 e!2329286)))

(declare-fun res!1524605 () Bool)

(assert (=> b!3766068 (=> (not res!1524605) (not e!2329286))))

(declare-datatypes ((List!40318 0))(
  ( (Nil!40194) (Cons!40194 (h!45614 (_ BitVec 16)) (t!304345 List!40318)) )
))
(declare-datatypes ((TokenValue!6404 0))(
  ( (FloatLiteralValue!12808 (text!45273 List!40318)) (TokenValueExt!6403 (__x!25025 Int)) (Broken!32020 (value!196540 List!40318)) (Object!6527) (End!6404) (Def!6404) (Underscore!6404) (Match!6404) (Else!6404) (Error!6404) (Case!6404) (If!6404) (Extends!6404) (Abstract!6404) (Class!6404) (Val!6404) (DelimiterValue!12808 (del!6464 List!40318)) (KeywordValue!6410 (value!196541 List!40318)) (CommentValue!12808 (value!196542 List!40318)) (WhitespaceValue!12808 (value!196543 List!40318)) (IndentationValue!6404 (value!196544 List!40318)) (String!45701) (Int32!6404) (Broken!32021 (value!196545 List!40318)) (Boolean!6405) (Unit!57909) (OperatorValue!6407 (op!6464 List!40318)) (IdentifierValue!12808 (value!196546 List!40318)) (IdentifierValue!12809 (value!196547 List!40318)) (WhitespaceValue!12809 (value!196548 List!40318)) (True!12808) (False!12808) (Broken!32022 (value!196549 List!40318)) (Broken!32023 (value!196550 List!40318)) (True!12809) (RightBrace!6404) (RightBracket!6404) (Colon!6404) (Null!6404) (Comma!6404) (LeftBracket!6404) (False!12809) (LeftBrace!6404) (ImaginaryLiteralValue!6404 (text!45274 List!40318)) (StringLiteralValue!19212 (value!196551 List!40318)) (EOFValue!6404 (value!196552 List!40318)) (IdentValue!6404 (value!196553 List!40318)) (DelimiterValue!12809 (value!196554 List!40318)) (DedentValue!6404 (value!196555 List!40318)) (NewLineValue!6404 (value!196556 List!40318)) (IntegerValue!19212 (value!196557 (_ BitVec 32)) (text!45275 List!40318)) (IntegerValue!19213 (value!196558 Int) (text!45276 List!40318)) (Times!6404) (Or!6404) (Equal!6404) (Minus!6404) (Broken!32024 (value!196559 List!40318)) (And!6404) (Div!6404) (LessEqual!6404) (Mod!6404) (Concat!17483) (Not!6404) (Plus!6404) (SpaceValue!6404 (value!196560 List!40318)) (IntegerValue!19214 (value!196561 Int) (text!45277 List!40318)) (StringLiteralValue!19213 (text!45278 List!40318)) (FloatLiteralValue!12809 (text!45279 List!40318)) (BytesLiteralValue!6404 (value!196562 List!40318)) (CommentValue!12809 (value!196563 List!40318)) (StringLiteralValue!19214 (value!196564 List!40318)) (ErrorTokenValue!6404 (msg!6465 List!40318)) )
))
(declare-datatypes ((C!22344 0))(
  ( (C!22345 (val!13248 Int)) )
))
(declare-datatypes ((Regex!11079 0))(
  ( (ElementMatch!11079 (c!652401 C!22344)) (Concat!17484 (regOne!22670 Regex!11079) (regTwo!22670 Regex!11079)) (EmptyExpr!11079) (Star!11079 (reg!11408 Regex!11079)) (EmptyLang!11079) (Union!11079 (regOne!22671 Regex!11079) (regTwo!22671 Regex!11079)) )
))
(declare-datatypes ((String!45702 0))(
  ( (String!45703 (value!196565 String)) )
))
(declare-datatypes ((List!40319 0))(
  ( (Nil!40195) (Cons!40195 (h!45615 C!22344) (t!304346 List!40319)) )
))
(declare-datatypes ((IArray!24649 0))(
  ( (IArray!24650 (innerList!12382 List!40319)) )
))
(declare-datatypes ((Conc!12322 0))(
  ( (Node!12322 (left!31110 Conc!12322) (right!31440 Conc!12322) (csize!24874 Int) (cheight!12533 Int)) (Leaf!19107 (xs!15532 IArray!24649) (csize!24875 Int)) (Empty!12322) )
))
(declare-datatypes ((BalanceConc!24238 0))(
  ( (BalanceConc!24239 (c!652402 Conc!12322)) )
))
(declare-datatypes ((TokenValueInjection!12236 0))(
  ( (TokenValueInjection!12237 (toValue!8534 Int) (toChars!8393 Int)) )
))
(declare-datatypes ((Rule!12148 0))(
  ( (Rule!12149 (regex!6174 Regex!11079) (tag!7034 String!45702) (isSeparator!6174 Bool) (transformation!6174 TokenValueInjection!12236)) )
))
(declare-datatypes ((Token!11486 0))(
  ( (Token!11487 (value!196566 TokenValue!6404) (rule!8938 Rule!12148) (size!30251 Int) (originalCharacters!6774 List!40319)) )
))
(declare-datatypes ((List!40320 0))(
  ( (Nil!40196) (Cons!40196 (h!45616 Token!11486) (t!304347 List!40320)) )
))
(declare-datatypes ((IArray!24651 0))(
  ( (IArray!24652 (innerList!12383 List!40320)) )
))
(declare-datatypes ((Conc!12323 0))(
  ( (Node!12323 (left!31111 Conc!12323) (right!31441 Conc!12323) (csize!24876 Int) (cheight!12534 Int)) (Leaf!19108 (xs!15533 IArray!24651) (csize!24877 Int)) (Empty!12323) )
))
(declare-datatypes ((BalanceConc!24240 0))(
  ( (BalanceConc!24241 (c!652403 Conc!12323)) )
))
(declare-datatypes ((tuple2!39236 0))(
  ( (tuple2!39237 (_1!22752 BalanceConc!24240) (_2!22752 BalanceConc!24238)) )
))
(declare-fun lt!1303067 () tuple2!39236)

(declare-fun acc!335 () BalanceConc!24240)

(declare-fun list!14859 (BalanceConc!24240) List!40320)

(assert (=> b!3766068 (= res!1524605 (= (list!14859 (_1!22752 lt!1303067)) (list!14859 acc!335)))))

(declare-fun treated!13 () BalanceConc!24238)

(declare-datatypes ((List!40321 0))(
  ( (Nil!40197) (Cons!40197 (h!45617 Rule!12148) (t!304348 List!40321)) )
))
(declare-fun rules!1265 () List!40321)

(declare-datatypes ((LexerInterface!5763 0))(
  ( (LexerInterfaceExt!5760 (__x!25026 Int)) (Lexer!5761) )
))
(declare-fun thiss!11876 () LexerInterface!5763)

(declare-fun lexRec!787 (LexerInterface!5763 List!40321 BalanceConc!24238) tuple2!39236)

(assert (=> b!3766068 (= lt!1303067 (lexRec!787 thiss!11876 rules!1265 treated!13))))

(declare-fun b!3766069 () Bool)

(declare-fun tp!1150608 () Bool)

(declare-fun e!2329282 () Bool)

(declare-fun e!2329285 () Bool)

(declare-fun inv!53965 (String!45702) Bool)

(declare-fun inv!53971 (TokenValueInjection!12236) Bool)

(assert (=> b!3766069 (= e!2329282 (and tp!1150608 (inv!53965 (tag!7034 (h!45617 rules!1265))) (inv!53971 (transformation!6174 (h!45617 rules!1265))) e!2329285))))

(declare-fun res!1524604 () Bool)

(declare-fun e!2329281 () Bool)

(assert (=> start!353748 (=> (not res!1524604) (not e!2329281))))

(get-info :version)

(assert (=> start!353748 (= res!1524604 ((_ is Lexer!5761) thiss!11876))))

(assert (=> start!353748 e!2329281))

(declare-fun input!678 () BalanceConc!24238)

(declare-fun e!2329284 () Bool)

(declare-fun inv!53972 (BalanceConc!24238) Bool)

(assert (=> start!353748 (and (inv!53972 input!678) e!2329284)))

(declare-fun e!2329279 () Bool)

(declare-fun inv!53973 (BalanceConc!24240) Bool)

(assert (=> start!353748 (and (inv!53973 acc!335) e!2329279)))

(declare-fun e!2329288 () Bool)

(assert (=> start!353748 (and (inv!53972 treated!13) e!2329288)))

(declare-fun e!2329287 () Bool)

(assert (=> start!353748 e!2329287))

(assert (=> start!353748 true))

(declare-fun totalInput!335 () BalanceConc!24238)

(declare-fun e!2329280 () Bool)

(assert (=> start!353748 (and (inv!53972 totalInput!335) e!2329280)))

(declare-fun b!3766070 () Bool)

(declare-fun tp!1150606 () Bool)

(declare-fun inv!53974 (Conc!12322) Bool)

(assert (=> b!3766070 (= e!2329280 (and (inv!53974 (c!652402 totalInput!335)) tp!1150606))))

(declare-fun b!3766071 () Bool)

(declare-fun tp!1150607 () Bool)

(declare-fun inv!53975 (Conc!12323) Bool)

(assert (=> b!3766071 (= e!2329279 (and (inv!53975 (c!652403 acc!335)) tp!1150607))))

(declare-fun b!3766072 () Bool)

(declare-fun res!1524603 () Bool)

(assert (=> b!3766072 (=> (not res!1524603) (not e!2329281))))

(declare-fun isEmpty!23603 (List!40321) Bool)

(assert (=> b!3766072 (= res!1524603 (not (isEmpty!23603 rules!1265)))))

(declare-fun b!3766073 () Bool)

(declare-fun tp!1150601 () Bool)

(assert (=> b!3766073 (= e!2329287 (and e!2329282 tp!1150601))))

(declare-fun b!3766074 () Bool)

(declare-fun e!2329283 () Bool)

(assert (=> b!3766074 (= e!2329286 e!2329283)))

(declare-fun res!1524609 () Bool)

(assert (=> b!3766074 (=> (not res!1524609) (not e!2329283))))

(declare-fun lt!1303068 () tuple2!39236)

(declare-fun lt!1303063 () tuple2!39236)

(declare-fun ++!9979 (BalanceConc!24240 BalanceConc!24240) BalanceConc!24240)

(assert (=> b!3766074 (= res!1524609 (= (list!14859 (_1!22752 lt!1303063)) (list!14859 (++!9979 acc!335 (_1!22752 lt!1303068)))))))

(assert (=> b!3766074 (= lt!1303068 (lexRec!787 thiss!11876 rules!1265 input!678))))

(assert (=> b!3766074 (= lt!1303063 (lexRec!787 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3766075 () Bool)

(declare-fun res!1524608 () Bool)

(assert (=> b!3766075 (=> (not res!1524608) (not e!2329281))))

(declare-fun rulesInvariant!5106 (LexerInterface!5763 List!40321) Bool)

(assert (=> b!3766075 (= res!1524608 (rulesInvariant!5106 thiss!11876 rules!1265))))

(declare-fun b!3766076 () Bool)

(declare-fun tp!1150604 () Bool)

(assert (=> b!3766076 (= e!2329284 (and (inv!53974 (c!652402 input!678)) tp!1150604))))

(declare-fun b!3766077 () Bool)

(declare-fun res!1524610 () Bool)

(assert (=> b!3766077 (=> (not res!1524610) (not e!2329286))))

(declare-fun isEmpty!23604 (List!40319) Bool)

(declare-fun list!14860 (BalanceConc!24238) List!40319)

(assert (=> b!3766077 (= res!1524610 (isEmpty!23604 (list!14860 (_2!22752 lt!1303067))))))

(declare-fun b!3766078 () Bool)

(declare-fun res!1524606 () Bool)

(assert (=> b!3766078 (=> (not res!1524606) (not e!2329283))))

(assert (=> b!3766078 (= res!1524606 (= (list!14860 (_2!22752 lt!1303063)) (list!14860 (_2!22752 lt!1303068))))))

(assert (=> b!3766079 (= e!2329285 (and tp!1150605 tp!1150602))))

(declare-fun b!3766080 () Bool)

(declare-fun tp!1150603 () Bool)

(assert (=> b!3766080 (= e!2329288 (and (inv!53974 (c!652402 treated!13)) tp!1150603))))

(declare-fun b!3766081 () Bool)

(assert (=> b!3766081 (= e!2329283 (not true))))

(declare-fun lt!1303071 () Bool)

(declare-fun lt!1303066 () List!40319)

(declare-fun lt!1303065 () List!40319)

(declare-fun isSuffix!948 (List!40319 List!40319) Bool)

(assert (=> b!3766081 (= lt!1303071 (isSuffix!948 lt!1303066 lt!1303065))))

(declare-fun lt!1303069 () List!40319)

(assert (=> b!3766081 (isSuffix!948 lt!1303066 lt!1303069)))

(declare-datatypes ((Unit!57910 0))(
  ( (Unit!57911) )
))
(declare-fun lt!1303070 () Unit!57910)

(declare-fun lt!1303064 () List!40319)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!633 (List!40319 List!40319) Unit!57910)

(assert (=> b!3766081 (= lt!1303070 (lemmaConcatTwoListThenFSndIsSuffix!633 lt!1303064 lt!1303066))))

(declare-fun b!3766082 () Bool)

(assert (=> b!3766082 (= e!2329281 e!2329289)))

(declare-fun res!1524607 () Bool)

(assert (=> b!3766082 (=> (not res!1524607) (not e!2329289))))

(assert (=> b!3766082 (= res!1524607 (= lt!1303065 lt!1303069))))

(declare-fun ++!9980 (List!40319 List!40319) List!40319)

(assert (=> b!3766082 (= lt!1303069 (++!9980 lt!1303064 lt!1303066))))

(assert (=> b!3766082 (= lt!1303065 (list!14860 totalInput!335))))

(assert (=> b!3766082 (= lt!1303066 (list!14860 input!678))))

(assert (=> b!3766082 (= lt!1303064 (list!14860 treated!13))))

(assert (= (and start!353748 res!1524604) b!3766072))

(assert (= (and b!3766072 res!1524603) b!3766075))

(assert (= (and b!3766075 res!1524608) b!3766082))

(assert (= (and b!3766082 res!1524607) b!3766068))

(assert (= (and b!3766068 res!1524605) b!3766077))

(assert (= (and b!3766077 res!1524610) b!3766074))

(assert (= (and b!3766074 res!1524609) b!3766078))

(assert (= (and b!3766078 res!1524606) b!3766081))

(assert (= start!353748 b!3766076))

(assert (= start!353748 b!3766071))

(assert (= start!353748 b!3766080))

(assert (= b!3766069 b!3766079))

(assert (= b!3766073 b!3766069))

(assert (= (and start!353748 ((_ is Cons!40197) rules!1265)) b!3766073))

(assert (= start!353748 b!3766070))

(declare-fun m!4262115 () Bool)

(assert (=> b!3766075 m!4262115))

(declare-fun m!4262117 () Bool)

(assert (=> b!3766077 m!4262117))

(assert (=> b!3766077 m!4262117))

(declare-fun m!4262119 () Bool)

(assert (=> b!3766077 m!4262119))

(declare-fun m!4262121 () Bool)

(assert (=> b!3766070 m!4262121))

(declare-fun m!4262123 () Bool)

(assert (=> b!3766072 m!4262123))

(declare-fun m!4262125 () Bool)

(assert (=> b!3766069 m!4262125))

(declare-fun m!4262127 () Bool)

(assert (=> b!3766069 m!4262127))

(declare-fun m!4262129 () Bool)

(assert (=> b!3766068 m!4262129))

(declare-fun m!4262131 () Bool)

(assert (=> b!3766068 m!4262131))

(declare-fun m!4262133 () Bool)

(assert (=> b!3766068 m!4262133))

(declare-fun m!4262135 () Bool)

(assert (=> b!3766071 m!4262135))

(declare-fun m!4262137 () Bool)

(assert (=> b!3766074 m!4262137))

(declare-fun m!4262139 () Bool)

(assert (=> b!3766074 m!4262139))

(assert (=> b!3766074 m!4262137))

(declare-fun m!4262141 () Bool)

(assert (=> b!3766074 m!4262141))

(declare-fun m!4262143 () Bool)

(assert (=> b!3766074 m!4262143))

(declare-fun m!4262145 () Bool)

(assert (=> b!3766074 m!4262145))

(declare-fun m!4262147 () Bool)

(assert (=> b!3766082 m!4262147))

(declare-fun m!4262149 () Bool)

(assert (=> b!3766082 m!4262149))

(declare-fun m!4262151 () Bool)

(assert (=> b!3766082 m!4262151))

(declare-fun m!4262153 () Bool)

(assert (=> b!3766082 m!4262153))

(declare-fun m!4262155 () Bool)

(assert (=> b!3766081 m!4262155))

(declare-fun m!4262157 () Bool)

(assert (=> b!3766081 m!4262157))

(declare-fun m!4262159 () Bool)

(assert (=> b!3766081 m!4262159))

(declare-fun m!4262161 () Bool)

(assert (=> start!353748 m!4262161))

(declare-fun m!4262163 () Bool)

(assert (=> start!353748 m!4262163))

(declare-fun m!4262165 () Bool)

(assert (=> start!353748 m!4262165))

(declare-fun m!4262167 () Bool)

(assert (=> start!353748 m!4262167))

(declare-fun m!4262169 () Bool)

(assert (=> b!3766080 m!4262169))

(declare-fun m!4262171 () Bool)

(assert (=> b!3766078 m!4262171))

(declare-fun m!4262173 () Bool)

(assert (=> b!3766078 m!4262173))

(declare-fun m!4262175 () Bool)

(assert (=> b!3766076 m!4262175))

(check-sat (not b!3766071) (not b!3766082) (not start!353748) (not b!3766070) (not b!3766069) (not b!3766073) (not b!3766072) (not b!3766078) (not b_next!101605) (not b!3766081) (not b_next!101607) (not b!3766068) (not b!3766080) (not b!3766074) (not b!3766076) (not b!3766077) (not b!3766075) b_and!279715 b_and!279717)
(check-sat b_and!279715 b_and!279717 (not b_next!101605) (not b_next!101607))
