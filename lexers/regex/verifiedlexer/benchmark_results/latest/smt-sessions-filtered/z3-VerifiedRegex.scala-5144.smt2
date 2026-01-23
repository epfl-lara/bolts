; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!263920 () Bool)

(assert start!263920)

(declare-fun b!2719430 () Bool)

(declare-fun b_free!76625 () Bool)

(declare-fun b_next!77329 () Bool)

(assert (=> b!2719430 (= b_free!76625 (not b_next!77329))))

(declare-fun tp!858283 () Bool)

(declare-fun b_and!200377 () Bool)

(assert (=> b!2719430 (= tp!858283 b_and!200377)))

(declare-fun b_free!76627 () Bool)

(declare-fun b_next!77331 () Bool)

(assert (=> b!2719430 (= b_free!76627 (not b_next!77331))))

(declare-fun tp!858282 () Bool)

(declare-fun b_and!200379 () Bool)

(assert (=> b!2719430 (= tp!858282 b_and!200379)))

(declare-fun b!2719427 () Bool)

(declare-fun res!1142196 () Bool)

(declare-fun e!1713960 () Bool)

(assert (=> b!2719427 (=> (not res!1142196) (not e!1713960))))

(declare-datatypes ((LexerInterface!4397 0))(
  ( (LexerInterfaceExt!4394 (__x!20181 Int)) (Lexer!4395) )
))
(declare-fun thiss!11556 () LexerInterface!4397)

(declare-datatypes ((List!31471 0))(
  ( (Nil!31371) (Cons!31371 (h!36791 (_ BitVec 16)) (t!226335 List!31471)) )
))
(declare-datatypes ((TokenValue!5023 0))(
  ( (FloatLiteralValue!10046 (text!35606 List!31471)) (TokenValueExt!5022 (__x!20182 Int)) (Broken!25115 (value!154415 List!31471)) (Object!5122) (End!5023) (Def!5023) (Underscore!5023) (Match!5023) (Else!5023) (Error!5023) (Case!5023) (If!5023) (Extends!5023) (Abstract!5023) (Class!5023) (Val!5023) (DelimiterValue!10046 (del!5083 List!31471)) (KeywordValue!5029 (value!154416 List!31471)) (CommentValue!10046 (value!154417 List!31471)) (WhitespaceValue!10046 (value!154418 List!31471)) (IndentationValue!5023 (value!154419 List!31471)) (String!35014) (Int32!5023) (Broken!25116 (value!154420 List!31471)) (Boolean!5024) (Unit!45385) (OperatorValue!5026 (op!5083 List!31471)) (IdentifierValue!10046 (value!154421 List!31471)) (IdentifierValue!10047 (value!154422 List!31471)) (WhitespaceValue!10047 (value!154423 List!31471)) (True!10046) (False!10046) (Broken!25117 (value!154424 List!31471)) (Broken!25118 (value!154425 List!31471)) (True!10047) (RightBrace!5023) (RightBracket!5023) (Colon!5023) (Null!5023) (Comma!5023) (LeftBracket!5023) (False!10047) (LeftBrace!5023) (ImaginaryLiteralValue!5023 (text!35607 List!31471)) (StringLiteralValue!15069 (value!154426 List!31471)) (EOFValue!5023 (value!154427 List!31471)) (IdentValue!5023 (value!154428 List!31471)) (DelimiterValue!10047 (value!154429 List!31471)) (DedentValue!5023 (value!154430 List!31471)) (NewLineValue!5023 (value!154431 List!31471)) (IntegerValue!15069 (value!154432 (_ BitVec 32)) (text!35608 List!31471)) (IntegerValue!15070 (value!154433 Int) (text!35609 List!31471)) (Times!5023) (Or!5023) (Equal!5023) (Minus!5023) (Broken!25119 (value!154434 List!31471)) (And!5023) (Div!5023) (LessEqual!5023) (Mod!5023) (Concat!12976) (Not!5023) (Plus!5023) (SpaceValue!5023 (value!154435 List!31471)) (IntegerValue!15071 (value!154436 Int) (text!35610 List!31471)) (StringLiteralValue!15070 (text!35611 List!31471)) (FloatLiteralValue!10047 (text!35612 List!31471)) (BytesLiteralValue!5023 (value!154437 List!31471)) (CommentValue!10047 (value!154438 List!31471)) (StringLiteralValue!15071 (value!154439 List!31471)) (ErrorTokenValue!5023 (msg!5084 List!31471)) )
))
(declare-datatypes ((C!16064 0))(
  ( (C!16065 (val!9966 Int)) )
))
(declare-datatypes ((List!31472 0))(
  ( (Nil!31372) (Cons!31372 (h!36792 C!16064) (t!226336 List!31472)) )
))
(declare-datatypes ((IArray!19663 0))(
  ( (IArray!19664 (innerList!9889 List!31472)) )
))
(declare-datatypes ((Conc!9829 0))(
  ( (Node!9829 (left!24119 Conc!9829) (right!24449 Conc!9829) (csize!19888 Int) (cheight!10040 Int)) (Leaf!14974 (xs!12904 IArray!19663) (csize!19889 Int)) (Empty!9829) )
))
(declare-datatypes ((BalanceConc!19272 0))(
  ( (BalanceConc!19273 (c!439463 Conc!9829)) )
))
(declare-datatypes ((Regex!7953 0))(
  ( (ElementMatch!7953 (c!439464 C!16064)) (Concat!12977 (regOne!16418 Regex!7953) (regTwo!16418 Regex!7953)) (EmptyExpr!7953) (Star!7953 (reg!8282 Regex!7953)) (EmptyLang!7953) (Union!7953 (regOne!16419 Regex!7953) (regTwo!16419 Regex!7953)) )
))
(declare-datatypes ((String!35015 0))(
  ( (String!35016 (value!154440 String)) )
))
(declare-datatypes ((TokenValueInjection!9486 0))(
  ( (TokenValueInjection!9487 (toValue!6779 Int) (toChars!6638 Int)) )
))
(declare-datatypes ((Rule!9402 0))(
  ( (Rule!9403 (regex!4801 Regex!7953) (tag!5305 String!35015) (isSeparator!4801 Bool) (transformation!4801 TokenValueInjection!9486)) )
))
(declare-datatypes ((List!31473 0))(
  ( (Nil!31373) (Cons!31373 (h!36793 Rule!9402) (t!226337 List!31473)) )
))
(declare-fun rules!1182 () List!31473)

(declare-fun rulesInvariant!3882 (LexerInterface!4397 List!31473) Bool)

(assert (=> b!2719427 (= res!1142196 (rulesInvariant!3882 thiss!11556 rules!1182))))

(declare-fun b!2719428 () Bool)

(declare-fun e!1713966 () Bool)

(declare-datatypes ((Token!9064 0))(
  ( (Token!9065 (value!154441 TokenValue!5023) (rule!7229 Rule!9402) (size!24200 Int) (originalCharacters!5563 List!31472)) )
))
(declare-datatypes ((List!31474 0))(
  ( (Nil!31374) (Cons!31374 (h!36794 Token!9064) (t!226338 List!31474)) )
))
(declare-datatypes ((IArray!19665 0))(
  ( (IArray!19666 (innerList!9890 List!31474)) )
))
(declare-datatypes ((Conc!9830 0))(
  ( (Node!9830 (left!24120 Conc!9830) (right!24450 Conc!9830) (csize!19890 Int) (cheight!10041 Int)) (Leaf!14975 (xs!12905 IArray!19665) (csize!19891 Int)) (Empty!9830) )
))
(declare-datatypes ((BalanceConc!19274 0))(
  ( (BalanceConc!19275 (c!439465 Conc!9830)) )
))
(declare-fun acc!331 () BalanceConc!19274)

(declare-fun tp!858279 () Bool)

(declare-fun inv!42607 (Conc!9830) Bool)

(assert (=> b!2719428 (= e!1713966 (and (inv!42607 (c!439465 acc!331)) tp!858279))))

(declare-fun b!2719429 () Bool)

(declare-fun e!1713965 () Bool)

(declare-fun totalInput!328 () BalanceConc!19272)

(declare-fun tp!858277 () Bool)

(declare-fun inv!42608 (Conc!9829) Bool)

(assert (=> b!2719429 (= e!1713965 (and (inv!42608 (c!439463 totalInput!328)) tp!858277))))

(declare-fun e!1713959 () Bool)

(assert (=> b!2719430 (= e!1713959 (and tp!858283 tp!858282))))

(declare-fun b!2719432 () Bool)

(declare-fun e!1713962 () Bool)

(declare-fun treated!9 () BalanceConc!19272)

(declare-fun tp!858281 () Bool)

(assert (=> b!2719432 (= e!1713962 (and (inv!42608 (c!439463 treated!9)) tp!858281))))

(declare-fun b!2719433 () Bool)

(declare-fun e!1713956 () Bool)

(declare-fun input!603 () BalanceConc!19272)

(declare-fun tp!858280 () Bool)

(assert (=> b!2719433 (= e!1713956 (and (inv!42608 (c!439463 input!603)) tp!858280))))

(declare-fun b!2719434 () Bool)

(declare-fun e!1713958 () Bool)

(assert (=> b!2719434 (= e!1713958 (not true))))

(declare-fun lt!962420 () List!31472)

(declare-datatypes ((tuple2!31064 0))(
  ( (tuple2!31065 (_1!18164 BalanceConc!19274) (_2!18164 BalanceConc!19272)) )
))
(declare-fun lt!962411 () tuple2!31064)

(declare-fun list!11892 (BalanceConc!19272) List!31472)

(assert (=> b!2719434 (= lt!962420 (list!11892 (_2!18164 lt!962411)))))

(declare-fun lt!962422 () List!31474)

(declare-datatypes ((tuple2!31066 0))(
  ( (tuple2!31067 (_1!18165 Token!9064) (_2!18165 BalanceConc!19272)) )
))
(declare-datatypes ((Option!6197 0))(
  ( (None!6196) (Some!6196 (v!33038 tuple2!31066)) )
))
(declare-fun lt!962409 () Option!6197)

(declare-fun list!11893 (BalanceConc!19274) List!31474)

(declare-fun append!819 (BalanceConc!19274 Token!9064) BalanceConc!19274)

(assert (=> b!2719434 (= lt!962422 (list!11893 (append!819 acc!331 (_1!18165 (v!33038 lt!962409)))))))

(declare-fun lt!962410 () List!31474)

(declare-fun lt!962408 () List!31474)

(declare-fun lt!962412 () List!31474)

(declare-fun ++!7811 (List!31474 List!31474) List!31474)

(assert (=> b!2719434 (= (++!7811 (++!7811 lt!962410 lt!962408) lt!962412) (++!7811 lt!962410 (++!7811 lt!962408 lt!962412)))))

(declare-datatypes ((Unit!45386 0))(
  ( (Unit!45387) )
))
(declare-fun lt!962417 () Unit!45386)

(declare-fun lemmaConcatAssociativity!1619 (List!31474 List!31474 List!31474) Unit!45386)

(assert (=> b!2719434 (= lt!962417 (lemmaConcatAssociativity!1619 lt!962410 lt!962408 lt!962412))))

(assert (=> b!2719434 (= lt!962412 (list!11893 (_1!18164 lt!962411)))))

(assert (=> b!2719434 (= lt!962408 (Cons!31374 (_1!18165 (v!33038 lt!962409)) Nil!31374))))

(declare-fun e!1713954 () Bool)

(assert (=> b!2719434 e!1713954))

(declare-fun res!1142194 () Bool)

(assert (=> b!2719434 (=> (not res!1142194) (not e!1713954))))

(declare-fun lt!962407 () List!31472)

(declare-fun lt!962416 () List!31472)

(declare-fun lt!962414 () List!31472)

(declare-fun ++!7812 (List!31472 List!31472) List!31472)

(assert (=> b!2719434 (= res!1142194 (= (++!7812 (++!7812 lt!962416 lt!962414) lt!962407) (++!7812 lt!962416 (++!7812 lt!962414 lt!962407))))))

(declare-fun lt!962415 () Unit!45386)

(declare-fun lemmaConcatAssociativity!1620 (List!31472 List!31472 List!31472) Unit!45386)

(assert (=> b!2719434 (= lt!962415 (lemmaConcatAssociativity!1620 lt!962416 lt!962414 lt!962407))))

(assert (=> b!2719434 (= lt!962407 (list!11892 (_2!18165 (v!33038 lt!962409))))))

(declare-fun charsOf!3022 (Token!9064) BalanceConc!19272)

(assert (=> b!2719434 (= lt!962414 (list!11892 (charsOf!3022 (_1!18165 (v!33038 lt!962409)))))))

(declare-fun lexRec!657 (LexerInterface!4397 List!31473 BalanceConc!19272) tuple2!31064)

(assert (=> b!2719434 (= lt!962411 (lexRec!657 thiss!11556 rules!1182 (_2!18165 (v!33038 lt!962409))))))

(declare-fun e!1713967 () Bool)

(declare-fun b!2719435 () Bool)

(declare-fun tp!858276 () Bool)

(declare-fun inv!42601 (String!35015) Bool)

(declare-fun inv!42609 (TokenValueInjection!9486) Bool)

(assert (=> b!2719435 (= e!1713967 (and tp!858276 (inv!42601 (tag!5305 (h!36793 rules!1182))) (inv!42609 (transformation!4801 (h!36793 rules!1182))) e!1713959))))

(declare-fun b!2719436 () Bool)

(declare-fun e!1713957 () Bool)

(declare-fun e!1713955 () Bool)

(assert (=> b!2719436 (= e!1713957 e!1713955)))

(declare-fun res!1142200 () Bool)

(assert (=> b!2719436 (=> (not res!1142200) (not e!1713955))))

(declare-fun lt!962413 () List!31474)

(assert (=> b!2719436 (= res!1142200 (= lt!962413 lt!962410))))

(assert (=> b!2719436 (= lt!962410 (list!11893 acc!331))))

(declare-fun lt!962421 () tuple2!31064)

(assert (=> b!2719436 (= lt!962413 (list!11893 (_1!18164 lt!962421)))))

(assert (=> b!2719436 (= lt!962421 (lexRec!657 thiss!11556 rules!1182 treated!9))))

(declare-fun b!2719437 () Bool)

(assert (=> b!2719437 (= e!1713960 e!1713957)))

(declare-fun res!1142199 () Bool)

(assert (=> b!2719437 (=> (not res!1142199) (not e!1713957))))

(assert (=> b!2719437 (= res!1142199 (= (list!11892 totalInput!328) (++!7812 lt!962416 (list!11892 input!603))))))

(assert (=> b!2719437 (= lt!962416 (list!11892 treated!9))))

(declare-fun b!2719438 () Bool)

(declare-fun e!1713964 () Bool)

(assert (=> b!2719438 (= e!1713964 e!1713958)))

(declare-fun res!1142195 () Bool)

(assert (=> b!2719438 (=> (not res!1142195) (not e!1713958))))

(get-info :version)

(assert (=> b!2719438 (= res!1142195 ((_ is Some!6196) lt!962409))))

(declare-fun maxPrefixZipperSequence!1045 (LexerInterface!4397 List!31473 BalanceConc!19272) Option!6197)

(assert (=> b!2719438 (= lt!962409 (maxPrefixZipperSequence!1045 thiss!11556 rules!1182 input!603))))

(declare-fun b!2719439 () Bool)

(declare-fun res!1142198 () Bool)

(assert (=> b!2719439 (=> (not res!1142198) (not e!1713960))))

(declare-fun isEmpty!17899 (List!31473) Bool)

(assert (=> b!2719439 (= res!1142198 (not (isEmpty!17899 rules!1182)))))

(declare-fun b!2719440 () Bool)

(declare-fun lt!962418 () tuple2!31064)

(declare-fun prepend!1131 (BalanceConc!19274 Token!9064) BalanceConc!19274)

(assert (=> b!2719440 (= e!1713954 (= lt!962418 (tuple2!31065 (prepend!1131 (_1!18164 lt!962411) (_1!18165 (v!33038 lt!962409))) (_2!18164 lt!962411))))))

(declare-fun b!2719441 () Bool)

(declare-fun e!1713961 () Bool)

(declare-fun tp!858278 () Bool)

(assert (=> b!2719441 (= e!1713961 (and e!1713967 tp!858278))))

(declare-fun b!2719442 () Bool)

(declare-fun res!1142191 () Bool)

(assert (=> b!2719442 (=> (not res!1142191) (not e!1713955))))

(declare-fun isEmpty!17900 (List!31472) Bool)

(assert (=> b!2719442 (= res!1142191 (isEmpty!17900 (list!11892 (_2!18164 lt!962421))))))

(declare-fun b!2719443 () Bool)

(declare-fun res!1142192 () Bool)

(assert (=> b!2719443 (=> (not res!1142192) (not e!1713964))))

(declare-fun lt!962419 () tuple2!31064)

(assert (=> b!2719443 (= res!1142192 (= (list!11892 (_2!18164 lt!962419)) (list!11892 (_2!18164 lt!962418))))))

(declare-fun b!2719431 () Bool)

(assert (=> b!2719431 (= e!1713955 e!1713964)))

(declare-fun res!1142193 () Bool)

(assert (=> b!2719431 (=> (not res!1142193) (not e!1713964))))

(declare-fun ++!7813 (BalanceConc!19274 BalanceConc!19274) BalanceConc!19274)

(assert (=> b!2719431 (= res!1142193 (= (list!11893 (_1!18164 lt!962419)) (list!11893 (++!7813 acc!331 (_1!18164 lt!962418)))))))

(assert (=> b!2719431 (= lt!962418 (lexRec!657 thiss!11556 rules!1182 input!603))))

(assert (=> b!2719431 (= lt!962419 (lexRec!657 thiss!11556 rules!1182 totalInput!328))))

(declare-fun res!1142197 () Bool)

(assert (=> start!263920 (=> (not res!1142197) (not e!1713960))))

(assert (=> start!263920 (= res!1142197 ((_ is Lexer!4395) thiss!11556))))

(assert (=> start!263920 e!1713960))

(declare-fun inv!42610 (BalanceConc!19272) Bool)

(assert (=> start!263920 (and (inv!42610 treated!9) e!1713962)))

(assert (=> start!263920 (and (inv!42610 input!603) e!1713956)))

(assert (=> start!263920 true))

(assert (=> start!263920 e!1713961))

(assert (=> start!263920 (and (inv!42610 totalInput!328) e!1713965)))

(declare-fun inv!42611 (BalanceConc!19274) Bool)

(assert (=> start!263920 (and (inv!42611 acc!331) e!1713966)))

(assert (= (and start!263920 res!1142197) b!2719439))

(assert (= (and b!2719439 res!1142198) b!2719427))

(assert (= (and b!2719427 res!1142196) b!2719437))

(assert (= (and b!2719437 res!1142199) b!2719436))

(assert (= (and b!2719436 res!1142200) b!2719442))

(assert (= (and b!2719442 res!1142191) b!2719431))

(assert (= (and b!2719431 res!1142193) b!2719443))

(assert (= (and b!2719443 res!1142192) b!2719438))

(assert (= (and b!2719438 res!1142195) b!2719434))

(assert (= (and b!2719434 res!1142194) b!2719440))

(assert (= start!263920 b!2719432))

(assert (= start!263920 b!2719433))

(assert (= b!2719435 b!2719430))

(assert (= b!2719441 b!2719435))

(assert (= (and start!263920 ((_ is Cons!31373) rules!1182)) b!2719441))

(assert (= start!263920 b!2719429))

(assert (= start!263920 b!2719428))

(declare-fun m!3119137 () Bool)

(assert (=> b!2719433 m!3119137))

(declare-fun m!3119139 () Bool)

(assert (=> b!2719435 m!3119139))

(declare-fun m!3119141 () Bool)

(assert (=> b!2719435 m!3119141))

(declare-fun m!3119143 () Bool)

(assert (=> b!2719429 m!3119143))

(declare-fun m!3119145 () Bool)

(assert (=> b!2719427 m!3119145))

(declare-fun m!3119147 () Bool)

(assert (=> start!263920 m!3119147))

(declare-fun m!3119149 () Bool)

(assert (=> start!263920 m!3119149))

(declare-fun m!3119151 () Bool)

(assert (=> start!263920 m!3119151))

(declare-fun m!3119153 () Bool)

(assert (=> start!263920 m!3119153))

(declare-fun m!3119155 () Bool)

(assert (=> b!2719442 m!3119155))

(assert (=> b!2719442 m!3119155))

(declare-fun m!3119157 () Bool)

(assert (=> b!2719442 m!3119157))

(declare-fun m!3119159 () Bool)

(assert (=> b!2719440 m!3119159))

(declare-fun m!3119161 () Bool)

(assert (=> b!2719438 m!3119161))

(declare-fun m!3119163 () Bool)

(assert (=> b!2719431 m!3119163))

(declare-fun m!3119165 () Bool)

(assert (=> b!2719431 m!3119165))

(declare-fun m!3119167 () Bool)

(assert (=> b!2719431 m!3119167))

(declare-fun m!3119169 () Bool)

(assert (=> b!2719431 m!3119169))

(assert (=> b!2719431 m!3119165))

(declare-fun m!3119171 () Bool)

(assert (=> b!2719431 m!3119171))

(declare-fun m!3119173 () Bool)

(assert (=> b!2719439 m!3119173))

(declare-fun m!3119175 () Bool)

(assert (=> b!2719437 m!3119175))

(declare-fun m!3119177 () Bool)

(assert (=> b!2719437 m!3119177))

(assert (=> b!2719437 m!3119177))

(declare-fun m!3119179 () Bool)

(assert (=> b!2719437 m!3119179))

(declare-fun m!3119181 () Bool)

(assert (=> b!2719437 m!3119181))

(declare-fun m!3119183 () Bool)

(assert (=> b!2719436 m!3119183))

(declare-fun m!3119185 () Bool)

(assert (=> b!2719436 m!3119185))

(declare-fun m!3119187 () Bool)

(assert (=> b!2719436 m!3119187))

(declare-fun m!3119189 () Bool)

(assert (=> b!2719432 m!3119189))

(declare-fun m!3119191 () Bool)

(assert (=> b!2719428 m!3119191))

(declare-fun m!3119193 () Bool)

(assert (=> b!2719434 m!3119193))

(declare-fun m!3119195 () Bool)

(assert (=> b!2719434 m!3119195))

(declare-fun m!3119197 () Bool)

(assert (=> b!2719434 m!3119197))

(declare-fun m!3119199 () Bool)

(assert (=> b!2719434 m!3119199))

(declare-fun m!3119201 () Bool)

(assert (=> b!2719434 m!3119201))

(declare-fun m!3119203 () Bool)

(assert (=> b!2719434 m!3119203))

(declare-fun m!3119205 () Bool)

(assert (=> b!2719434 m!3119205))

(declare-fun m!3119207 () Bool)

(assert (=> b!2719434 m!3119207))

(declare-fun m!3119209 () Bool)

(assert (=> b!2719434 m!3119209))

(declare-fun m!3119211 () Bool)

(assert (=> b!2719434 m!3119211))

(assert (=> b!2719434 m!3119193))

(assert (=> b!2719434 m!3119201))

(declare-fun m!3119213 () Bool)

(assert (=> b!2719434 m!3119213))

(declare-fun m!3119215 () Bool)

(assert (=> b!2719434 m!3119215))

(declare-fun m!3119217 () Bool)

(assert (=> b!2719434 m!3119217))

(assert (=> b!2719434 m!3119209))

(declare-fun m!3119219 () Bool)

(assert (=> b!2719434 m!3119219))

(declare-fun m!3119221 () Bool)

(assert (=> b!2719434 m!3119221))

(declare-fun m!3119223 () Bool)

(assert (=> b!2719434 m!3119223))

(assert (=> b!2719434 m!3119197))

(assert (=> b!2719434 m!3119221))

(declare-fun m!3119225 () Bool)

(assert (=> b!2719434 m!3119225))

(declare-fun m!3119227 () Bool)

(assert (=> b!2719434 m!3119227))

(assert (=> b!2719434 m!3119205))

(declare-fun m!3119229 () Bool)

(assert (=> b!2719443 m!3119229))

(declare-fun m!3119231 () Bool)

(assert (=> b!2719443 m!3119231))

(check-sat (not b_next!77329) (not start!263920) (not b!2719427) b_and!200379 (not b!2719428) (not b!2719435) (not b!2719436) (not b!2719442) (not b_next!77331) (not b!2719431) (not b!2719439) (not b!2719441) b_and!200377 (not b!2719429) (not b!2719434) (not b!2719440) (not b!2719432) (not b!2719437) (not b!2719443) (not b!2719433) (not b!2719438))
(check-sat b_and!200379 b_and!200377 (not b_next!77331) (not b_next!77329))
