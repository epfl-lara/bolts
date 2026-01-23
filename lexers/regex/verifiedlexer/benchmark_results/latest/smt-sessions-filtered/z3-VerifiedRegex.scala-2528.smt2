; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134850 () Bool)

(assert start!134850)

(declare-fun b!1449124 () Bool)

(declare-fun res!656108 () Bool)

(declare-fun e!924580 () Bool)

(assert (=> b!1449124 (=> (not res!656108) (not e!924580))))

(declare-datatypes ((C!8116 0))(
  ( (C!8117 (val!4628 Int)) )
))
(declare-datatypes ((List!15144 0))(
  ( (Nil!15078) (Cons!15078 (h!20479 C!8116) (t!130481 List!15144)) )
))
(declare-datatypes ((IArray!10277 0))(
  ( (IArray!10278 (innerList!5196 List!15144)) )
))
(declare-datatypes ((Conc!5136 0))(
  ( (Node!5136 (left!12826 Conc!5136) (right!13156 Conc!5136) (csize!10502 Int) (cheight!5347 Int)) (Leaf!7665 (xs!7877 IArray!10277) (csize!10503 Int)) (Empty!5136) )
))
(declare-datatypes ((BalanceConc!10212 0))(
  ( (BalanceConc!10213 (c!238662 Conc!5136)) )
))
(declare-datatypes ((List!15145 0))(
  ( (Nil!15079) (Cons!15079 (h!20480 (_ BitVec 16)) (t!130482 List!15145)) )
))
(declare-datatypes ((TokenValue!2745 0))(
  ( (FloatLiteralValue!5490 (text!19660 List!15145)) (TokenValueExt!2744 (__x!9280 Int)) (Broken!13725 (value!85289 List!15145)) (Object!2810) (End!2745) (Def!2745) (Underscore!2745) (Match!2745) (Else!2745) (Error!2745) (Case!2745) (If!2745) (Extends!2745) (Abstract!2745) (Class!2745) (Val!2745) (DelimiterValue!5490 (del!2805 List!15145)) (KeywordValue!2751 (value!85290 List!15145)) (CommentValue!5490 (value!85291 List!15145)) (WhitespaceValue!5490 (value!85292 List!15145)) (IndentationValue!2745 (value!85293 List!15145)) (String!17980) (Int32!2745) (Broken!13726 (value!85294 List!15145)) (Boolean!2746) (Unit!23988) (OperatorValue!2748 (op!2805 List!15145)) (IdentifierValue!5490 (value!85295 List!15145)) (IdentifierValue!5491 (value!85296 List!15145)) (WhitespaceValue!5491 (value!85297 List!15145)) (True!5490) (False!5490) (Broken!13727 (value!85298 List!15145)) (Broken!13728 (value!85299 List!15145)) (True!5491) (RightBrace!2745) (RightBracket!2745) (Colon!2745) (Null!2745) (Comma!2745) (LeftBracket!2745) (False!5491) (LeftBrace!2745) (ImaginaryLiteralValue!2745 (text!19661 List!15145)) (StringLiteralValue!8235 (value!85300 List!15145)) (EOFValue!2745 (value!85301 List!15145)) (IdentValue!2745 (value!85302 List!15145)) (DelimiterValue!5491 (value!85303 List!15145)) (DedentValue!2745 (value!85304 List!15145)) (NewLineValue!2745 (value!85305 List!15145)) (IntegerValue!8235 (value!85306 (_ BitVec 32)) (text!19662 List!15145)) (IntegerValue!8236 (value!85307 Int) (text!19663 List!15145)) (Times!2745) (Or!2745) (Equal!2745) (Minus!2745) (Broken!13729 (value!85308 List!15145)) (And!2745) (Div!2745) (LessEqual!2745) (Mod!2745) (Concat!6714) (Not!2745) (Plus!2745) (SpaceValue!2745 (value!85309 List!15145)) (IntegerValue!8237 (value!85310 Int) (text!19664 List!15145)) (StringLiteralValue!8236 (text!19665 List!15145)) (FloatLiteralValue!5491 (text!19666 List!15145)) (BytesLiteralValue!2745 (value!85311 List!15145)) (CommentValue!5491 (value!85312 List!15145)) (StringLiteralValue!8237 (value!85313 List!15145)) (ErrorTokenValue!2745 (msg!2806 List!15145)) )
))
(declare-datatypes ((Regex!3969 0))(
  ( (ElementMatch!3969 (c!238663 C!8116)) (Concat!6715 (regOne!8450 Regex!3969) (regTwo!8450 Regex!3969)) (EmptyExpr!3969) (Star!3969 (reg!4298 Regex!3969)) (EmptyLang!3969) (Union!3969 (regOne!8451 Regex!3969) (regTwo!8451 Regex!3969)) )
))
(declare-datatypes ((String!17981 0))(
  ( (String!17982 (value!85314 String)) )
))
(declare-datatypes ((TokenValueInjection!5150 0))(
  ( (TokenValueInjection!5151 (toValue!3962 Int) (toChars!3821 Int)) )
))
(declare-datatypes ((Rule!5110 0))(
  ( (Rule!5111 (regex!2655 Regex!3969) (tag!2919 String!17981) (isSeparator!2655 Bool) (transformation!2655 TokenValueInjection!5150)) )
))
(declare-datatypes ((Token!4972 0))(
  ( (Token!4973 (value!85315 TokenValue!2745) (rule!4428 Rule!5110) (size!12334 Int) (originalCharacters!3517 List!15144)) )
))
(declare-datatypes ((List!15146 0))(
  ( (Nil!15080) (Cons!15080 (h!20481 Token!4972) (t!130483 List!15146)) )
))
(declare-datatypes ((IArray!10279 0))(
  ( (IArray!10280 (innerList!5197 List!15146)) )
))
(declare-datatypes ((Conc!5137 0))(
  ( (Node!5137 (left!12827 Conc!5137) (right!13157 Conc!5137) (csize!10504 Int) (cheight!5348 Int)) (Leaf!7666 (xs!7878 IArray!10279) (csize!10505 Int)) (Empty!5137) )
))
(declare-datatypes ((BalanceConc!10214 0))(
  ( (BalanceConc!10215 (c!238664 Conc!5137)) )
))
(declare-datatypes ((List!15147 0))(
  ( (Nil!15081) (Cons!15081 (h!20482 Rule!5110) (t!130484 List!15147)) )
))
(declare-datatypes ((PrintableTokens!1092 0))(
  ( (PrintableTokens!1093 (rules!11552 List!15147) (tokens!2048 BalanceConc!10214)) )
))
(declare-fun thiss!10022 () PrintableTokens!1092)

(declare-fun isEmpty!9417 (BalanceConc!10214) Bool)

(assert (=> b!1449124 (= res!656108 (not (isEmpty!9417 (tokens!2048 thiss!10022))))))

(declare-fun b!1449125 () Bool)

(declare-fun res!656110 () Bool)

(declare-fun e!924578 () Bool)

(assert (=> b!1449125 (=> res!656110 e!924578)))

(declare-datatypes ((LexerInterface!2311 0))(
  ( (LexerInterfaceExt!2308 (__x!9281 Int)) (Lexer!2309) )
))
(declare-fun rulesInvariant!2146 (LexerInterface!2311 List!15147) Bool)

(assert (=> b!1449125 (= res!656110 (not (rulesInvariant!2146 Lexer!2309 (rules!11552 thiss!10022))))))

(declare-fun res!656109 () Bool)

(declare-fun e!924579 () Bool)

(assert (=> start!134850 (=> (not res!656109) (not e!924579))))

(declare-fun other!32 () PrintableTokens!1092)

(assert (=> start!134850 (= res!656109 (= (rules!11552 thiss!10022) (rules!11552 other!32)))))

(assert (=> start!134850 e!924579))

(declare-fun e!924582 () Bool)

(declare-fun inv!20110 (PrintableTokens!1092) Bool)

(assert (=> start!134850 (and (inv!20110 thiss!10022) e!924582)))

(declare-fun e!924581 () Bool)

(assert (=> start!134850 (and (inv!20110 other!32) e!924581)))

(declare-fun b!1449126 () Bool)

(declare-fun e!924584 () Bool)

(declare-fun tp!408834 () Bool)

(declare-fun inv!20111 (Conc!5137) Bool)

(assert (=> b!1449126 (= e!924584 (and (inv!20111 (c!238664 (tokens!2048 thiss!10022))) tp!408834))))

(declare-fun e!924583 () Bool)

(declare-fun tp!408833 () Bool)

(declare-fun b!1449127 () Bool)

(declare-fun inv!20112 (BalanceConc!10214) Bool)

(assert (=> b!1449127 (= e!924581 (and tp!408833 (inv!20112 (tokens!2048 other!32)) e!924583))))

(declare-fun b!1449128 () Bool)

(declare-fun lt!499616 () List!15146)

(declare-fun lt!499621 () Token!4972)

(declare-fun contains!2883 (List!15146 Token!4972) Bool)

(assert (=> b!1449128 (= e!924578 (contains!2883 lt!499616 lt!499621))))

(declare-fun b!1449129 () Bool)

(assert (=> b!1449129 (= e!924580 (not e!924578))))

(declare-fun res!656112 () Bool)

(assert (=> b!1449129 (=> res!656112 e!924578)))

(declare-fun isEmpty!9418 (List!15147) Bool)

(assert (=> b!1449129 (= res!656112 (isEmpty!9418 (rules!11552 thiss!10022)))))

(declare-fun head!2953 (BalanceConc!10214) Token!4972)

(assert (=> b!1449129 (= lt!499621 (head!2953 (tokens!2048 other!32)))))

(declare-fun list!6020 (BalanceConc!10214) List!15146)

(assert (=> b!1449129 (= lt!499616 (list!6020 (tokens!2048 other!32)))))

(declare-fun lt!499618 () Token!4972)

(declare-fun rulesProduceIndividualToken!1230 (LexerInterface!2311 List!15147 Token!4972) Bool)

(assert (=> b!1449129 (rulesProduceIndividualToken!1230 Lexer!2309 (rules!11552 thiss!10022) lt!499618)))

(declare-datatypes ((Unit!23989 0))(
  ( (Unit!23990) )
))
(declare-fun lt!499620 () Unit!23989)

(declare-fun lt!499615 () List!15146)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!413 (LexerInterface!2311 List!15147 List!15146 Token!4972) Unit!23989)

(assert (=> b!1449129 (= lt!499620 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!413 Lexer!2309 (rules!11552 thiss!10022) lt!499615 lt!499618))))

(declare-fun last!221 (BalanceConc!10214) Token!4972)

(assert (=> b!1449129 (= lt!499618 (last!221 (tokens!2048 thiss!10022)))))

(assert (=> b!1449129 (= lt!499615 (list!6020 (tokens!2048 thiss!10022)))))

(declare-fun b!1449130 () Bool)

(assert (=> b!1449130 (= e!924579 e!924580)))

(declare-fun res!656111 () Bool)

(assert (=> b!1449130 (=> (not res!656111) (not e!924580))))

(assert (=> b!1449130 (= res!656111 (not (isEmpty!9417 (tokens!2048 other!32))))))

(declare-fun lt!499617 () Unit!23989)

(declare-fun lemmaInvariant!351 (PrintableTokens!1092) Unit!23989)

(assert (=> b!1449130 (= lt!499617 (lemmaInvariant!351 thiss!10022))))

(declare-fun lt!499619 () Unit!23989)

(assert (=> b!1449130 (= lt!499619 (lemmaInvariant!351 other!32))))

(declare-fun b!1449131 () Bool)

(declare-fun tp!408832 () Bool)

(assert (=> b!1449131 (= e!924583 (and (inv!20111 (c!238664 (tokens!2048 other!32))) tp!408832))))

(declare-fun tp!408831 () Bool)

(declare-fun b!1449132 () Bool)

(assert (=> b!1449132 (= e!924582 (and tp!408831 (inv!20112 (tokens!2048 thiss!10022)) e!924584))))

(assert (= (and start!134850 res!656109) b!1449130))

(assert (= (and b!1449130 res!656111) b!1449124))

(assert (= (and b!1449124 res!656108) b!1449129))

(assert (= (and b!1449129 (not res!656112)) b!1449125))

(assert (= (and b!1449125 (not res!656110)) b!1449128))

(assert (= b!1449132 b!1449126))

(assert (= start!134850 b!1449132))

(assert (= b!1449127 b!1449131))

(assert (= start!134850 b!1449127))

(declare-fun m!1672135 () Bool)

(assert (=> b!1449127 m!1672135))

(declare-fun m!1672137 () Bool)

(assert (=> b!1449128 m!1672137))

(declare-fun m!1672139 () Bool)

(assert (=> b!1449124 m!1672139))

(declare-fun m!1672141 () Bool)

(assert (=> b!1449125 m!1672141))

(declare-fun m!1672143 () Bool)

(assert (=> b!1449130 m!1672143))

(declare-fun m!1672145 () Bool)

(assert (=> b!1449130 m!1672145))

(declare-fun m!1672147 () Bool)

(assert (=> b!1449130 m!1672147))

(declare-fun m!1672149 () Bool)

(assert (=> start!134850 m!1672149))

(declare-fun m!1672151 () Bool)

(assert (=> start!134850 m!1672151))

(declare-fun m!1672153 () Bool)

(assert (=> b!1449126 m!1672153))

(declare-fun m!1672155 () Bool)

(assert (=> b!1449129 m!1672155))

(declare-fun m!1672157 () Bool)

(assert (=> b!1449129 m!1672157))

(declare-fun m!1672159 () Bool)

(assert (=> b!1449129 m!1672159))

(declare-fun m!1672161 () Bool)

(assert (=> b!1449129 m!1672161))

(declare-fun m!1672163 () Bool)

(assert (=> b!1449129 m!1672163))

(declare-fun m!1672165 () Bool)

(assert (=> b!1449129 m!1672165))

(declare-fun m!1672167 () Bool)

(assert (=> b!1449129 m!1672167))

(declare-fun m!1672169 () Bool)

(assert (=> b!1449132 m!1672169))

(declare-fun m!1672171 () Bool)

(assert (=> b!1449131 m!1672171))

(check-sat (not b!1449130) (not b!1449124) (not start!134850) (not b!1449131) (not b!1449127) (not b!1449128) (not b!1449129) (not b!1449125) (not b!1449126) (not b!1449132))
(check-sat)
(get-model)

(declare-fun d!420761 () Bool)

(declare-fun lt!499627 () Bool)

(declare-fun isEmpty!9422 (List!15146) Bool)

(assert (=> d!420761 (= lt!499627 (isEmpty!9422 (list!6020 (tokens!2048 other!32))))))

(declare-fun isEmpty!9423 (Conc!5137) Bool)

(assert (=> d!420761 (= lt!499627 (isEmpty!9423 (c!238664 (tokens!2048 other!32))))))

(assert (=> d!420761 (= (isEmpty!9417 (tokens!2048 other!32)) lt!499627)))

(declare-fun bs!342447 () Bool)

(assert (= bs!342447 d!420761))

(assert (=> bs!342447 m!1672159))

(assert (=> bs!342447 m!1672159))

(declare-fun m!1672177 () Bool)

(assert (=> bs!342447 m!1672177))

(declare-fun m!1672179 () Bool)

(assert (=> bs!342447 m!1672179))

(assert (=> b!1449130 d!420761))

(declare-fun d!420763 () Bool)

(declare-fun e!924607 () Bool)

(assert (=> d!420763 e!924607))

(declare-fun res!656150 () Bool)

(assert (=> d!420763 (=> (not res!656150) (not e!924607))))

(assert (=> d!420763 (= res!656150 (rulesInvariant!2146 Lexer!2309 (rules!11552 thiss!10022)))))

(declare-fun Unit!23993 () Unit!23989)

(assert (=> d!420763 (= (lemmaInvariant!351 thiss!10022) Unit!23993)))

(declare-fun b!1449172 () Bool)

(declare-fun res!656151 () Bool)

(assert (=> b!1449172 (=> (not res!656151) (not e!924607))))

(declare-fun rulesProduceEachTokenIndividually!863 (LexerInterface!2311 List!15147 BalanceConc!10214) Bool)

(assert (=> b!1449172 (= res!656151 (rulesProduceEachTokenIndividually!863 Lexer!2309 (rules!11552 thiss!10022) (tokens!2048 thiss!10022)))))

(declare-fun b!1449173 () Bool)

(declare-fun separableTokens!247 (LexerInterface!2311 BalanceConc!10214 List!15147) Bool)

(assert (=> b!1449173 (= e!924607 (separableTokens!247 Lexer!2309 (tokens!2048 thiss!10022) (rules!11552 thiss!10022)))))

(assert (= (and d!420763 res!656150) b!1449172))

(assert (= (and b!1449172 res!656151) b!1449173))

(assert (=> d!420763 m!1672141))

(declare-fun m!1672215 () Bool)

(assert (=> b!1449172 m!1672215))

(declare-fun m!1672217 () Bool)

(assert (=> b!1449173 m!1672217))

(assert (=> b!1449130 d!420763))

(declare-fun d!420785 () Bool)

(declare-fun e!924608 () Bool)

(assert (=> d!420785 e!924608))

(declare-fun res!656152 () Bool)

(assert (=> d!420785 (=> (not res!656152) (not e!924608))))

(assert (=> d!420785 (= res!656152 (rulesInvariant!2146 Lexer!2309 (rules!11552 other!32)))))

(declare-fun Unit!23994 () Unit!23989)

(assert (=> d!420785 (= (lemmaInvariant!351 other!32) Unit!23994)))

(declare-fun b!1449174 () Bool)

(declare-fun res!656153 () Bool)

(assert (=> b!1449174 (=> (not res!656153) (not e!924608))))

(assert (=> b!1449174 (= res!656153 (rulesProduceEachTokenIndividually!863 Lexer!2309 (rules!11552 other!32) (tokens!2048 other!32)))))

(declare-fun b!1449175 () Bool)

(assert (=> b!1449175 (= e!924608 (separableTokens!247 Lexer!2309 (tokens!2048 other!32) (rules!11552 other!32)))))

(assert (= (and d!420785 res!656152) b!1449174))

(assert (= (and b!1449174 res!656153) b!1449175))

(declare-fun m!1672219 () Bool)

(assert (=> d!420785 m!1672219))

(declare-fun m!1672221 () Bool)

(assert (=> b!1449174 m!1672221))

(declare-fun m!1672223 () Bool)

(assert (=> b!1449175 m!1672223))

(assert (=> b!1449130 d!420785))

(declare-fun d!420787 () Bool)

(declare-fun res!656156 () Bool)

(declare-fun e!924611 () Bool)

(assert (=> d!420787 (=> (not res!656156) (not e!924611))))

(declare-fun rulesValid!976 (LexerInterface!2311 List!15147) Bool)

(assert (=> d!420787 (= res!656156 (rulesValid!976 Lexer!2309 (rules!11552 thiss!10022)))))

(assert (=> d!420787 (= (rulesInvariant!2146 Lexer!2309 (rules!11552 thiss!10022)) e!924611)))

(declare-fun b!1449178 () Bool)

(declare-datatypes ((List!15149 0))(
  ( (Nil!15083) (Cons!15083 (h!20484 String!17981) (t!130490 List!15149)) )
))
(declare-fun noDuplicateTag!976 (LexerInterface!2311 List!15147 List!15149) Bool)

(assert (=> b!1449178 (= e!924611 (noDuplicateTag!976 Lexer!2309 (rules!11552 thiss!10022) Nil!15083))))

(assert (= (and d!420787 res!656156) b!1449178))

(declare-fun m!1672225 () Bool)

(assert (=> d!420787 m!1672225))

(declare-fun m!1672227 () Bool)

(assert (=> b!1449178 m!1672227))

(assert (=> b!1449125 d!420787))

(declare-fun d!420789 () Bool)

(declare-fun lt!499635 () Bool)

(assert (=> d!420789 (= lt!499635 (isEmpty!9422 (list!6020 (tokens!2048 thiss!10022))))))

(assert (=> d!420789 (= lt!499635 (isEmpty!9423 (c!238664 (tokens!2048 thiss!10022))))))

(assert (=> d!420789 (= (isEmpty!9417 (tokens!2048 thiss!10022)) lt!499635)))

(declare-fun bs!342452 () Bool)

(assert (= bs!342452 d!420789))

(assert (=> bs!342452 m!1672165))

(assert (=> bs!342452 m!1672165))

(declare-fun m!1672229 () Bool)

(assert (=> bs!342452 m!1672229))

(declare-fun m!1672231 () Bool)

(assert (=> bs!342452 m!1672231))

(assert (=> b!1449124 d!420789))

(declare-fun d!420791 () Bool)

(declare-fun lt!499643 () Bool)

(declare-fun e!924617 () Bool)

(assert (=> d!420791 (= lt!499643 e!924617)))

(declare-fun res!656163 () Bool)

(assert (=> d!420791 (=> (not res!656163) (not e!924617))))

(declare-datatypes ((tuple2!14188 0))(
  ( (tuple2!14189 (_1!7980 BalanceConc!10214) (_2!7980 BalanceConc!10212)) )
))
(declare-fun lex!1059 (LexerInterface!2311 List!15147 BalanceConc!10212) tuple2!14188)

(declare-fun print!1086 (LexerInterface!2311 BalanceConc!10214) BalanceConc!10212)

(declare-fun singletonSeq!1250 (Token!4972) BalanceConc!10214)

(assert (=> d!420791 (= res!656163 (= (list!6020 (_1!7980 (lex!1059 Lexer!2309 (rules!11552 thiss!10022) (print!1086 Lexer!2309 (singletonSeq!1250 lt!499618))))) (list!6020 (singletonSeq!1250 lt!499618))))))

(declare-fun e!924616 () Bool)

(assert (=> d!420791 (= lt!499643 e!924616)))

(declare-fun res!656164 () Bool)

(assert (=> d!420791 (=> (not res!656164) (not e!924616))))

(declare-fun lt!499644 () tuple2!14188)

(declare-fun size!12336 (BalanceConc!10214) Int)

(assert (=> d!420791 (= res!656164 (= (size!12336 (_1!7980 lt!499644)) 1))))

(assert (=> d!420791 (= lt!499644 (lex!1059 Lexer!2309 (rules!11552 thiss!10022) (print!1086 Lexer!2309 (singletonSeq!1250 lt!499618))))))

(assert (=> d!420791 (not (isEmpty!9418 (rules!11552 thiss!10022)))))

(assert (=> d!420791 (= (rulesProduceIndividualToken!1230 Lexer!2309 (rules!11552 thiss!10022) lt!499618) lt!499643)))

(declare-fun b!1449185 () Bool)

(declare-fun res!656165 () Bool)

(assert (=> b!1449185 (=> (not res!656165) (not e!924616))))

(declare-fun apply!3887 (BalanceConc!10214 Int) Token!4972)

(assert (=> b!1449185 (= res!656165 (= (apply!3887 (_1!7980 lt!499644) 0) lt!499618))))

(declare-fun b!1449186 () Bool)

(declare-fun isEmpty!9424 (BalanceConc!10212) Bool)

(assert (=> b!1449186 (= e!924616 (isEmpty!9424 (_2!7980 lt!499644)))))

(declare-fun b!1449187 () Bool)

(assert (=> b!1449187 (= e!924617 (isEmpty!9424 (_2!7980 (lex!1059 Lexer!2309 (rules!11552 thiss!10022) (print!1086 Lexer!2309 (singletonSeq!1250 lt!499618))))))))

(assert (= (and d!420791 res!656164) b!1449185))

(assert (= (and b!1449185 res!656165) b!1449186))

(assert (= (and d!420791 res!656163) b!1449187))

(declare-fun m!1672237 () Bool)

(assert (=> d!420791 m!1672237))

(declare-fun m!1672239 () Bool)

(assert (=> d!420791 m!1672239))

(declare-fun m!1672241 () Bool)

(assert (=> d!420791 m!1672241))

(assert (=> d!420791 m!1672237))

(assert (=> d!420791 m!1672241))

(assert (=> d!420791 m!1672167))

(declare-fun m!1672243 () Bool)

(assert (=> d!420791 m!1672243))

(assert (=> d!420791 m!1672241))

(declare-fun m!1672245 () Bool)

(assert (=> d!420791 m!1672245))

(declare-fun m!1672247 () Bool)

(assert (=> d!420791 m!1672247))

(declare-fun m!1672249 () Bool)

(assert (=> b!1449185 m!1672249))

(declare-fun m!1672251 () Bool)

(assert (=> b!1449186 m!1672251))

(assert (=> b!1449187 m!1672241))

(assert (=> b!1449187 m!1672241))

(assert (=> b!1449187 m!1672237))

(assert (=> b!1449187 m!1672237))

(assert (=> b!1449187 m!1672239))

(declare-fun m!1672253 () Bool)

(assert (=> b!1449187 m!1672253))

(assert (=> b!1449129 d!420791))

(declare-fun d!420799 () Bool)

(declare-fun list!6022 (Conc!5137) List!15146)

(assert (=> d!420799 (= (list!6020 (tokens!2048 other!32)) (list!6022 (c!238664 (tokens!2048 other!32))))))

(declare-fun bs!342455 () Bool)

(assert (= bs!342455 d!420799))

(declare-fun m!1672255 () Bool)

(assert (=> bs!342455 m!1672255))

(assert (=> b!1449129 d!420799))

(declare-fun d!420801 () Bool)

(declare-fun lt!499647 () Token!4972)

(declare-fun head!2956 (List!15146) Token!4972)

(assert (=> d!420801 (= lt!499647 (head!2956 (list!6020 (tokens!2048 other!32))))))

(declare-fun head!2957 (Conc!5137) Token!4972)

(assert (=> d!420801 (= lt!499647 (head!2957 (c!238664 (tokens!2048 other!32))))))

(assert (=> d!420801 (not (isEmpty!9417 (tokens!2048 other!32)))))

(assert (=> d!420801 (= (head!2953 (tokens!2048 other!32)) lt!499647)))

(declare-fun bs!342456 () Bool)

(assert (= bs!342456 d!420801))

(assert (=> bs!342456 m!1672159))

(assert (=> bs!342456 m!1672159))

(declare-fun m!1672257 () Bool)

(assert (=> bs!342456 m!1672257))

(declare-fun m!1672259 () Bool)

(assert (=> bs!342456 m!1672259))

(assert (=> bs!342456 m!1672143))

(assert (=> b!1449129 d!420801))

(declare-fun d!420803 () Bool)

(declare-fun lt!499650 () Token!4972)

(declare-fun last!224 (List!15146) Token!4972)

(assert (=> d!420803 (= lt!499650 (last!224 (list!6020 (tokens!2048 thiss!10022))))))

(declare-fun last!225 (Conc!5137) Token!4972)

(assert (=> d!420803 (= lt!499650 (last!225 (c!238664 (tokens!2048 thiss!10022))))))

(assert (=> d!420803 (not (isEmpty!9417 (tokens!2048 thiss!10022)))))

(assert (=> d!420803 (= (last!221 (tokens!2048 thiss!10022)) lt!499650)))

(declare-fun bs!342457 () Bool)

(assert (= bs!342457 d!420803))

(assert (=> bs!342457 m!1672165))

(assert (=> bs!342457 m!1672165))

(declare-fun m!1672261 () Bool)

(assert (=> bs!342457 m!1672261))

(declare-fun m!1672263 () Bool)

(assert (=> bs!342457 m!1672263))

(assert (=> bs!342457 m!1672139))

(assert (=> b!1449129 d!420803))

(declare-fun d!420805 () Bool)

(assert (=> d!420805 (= (list!6020 (tokens!2048 thiss!10022)) (list!6022 (c!238664 (tokens!2048 thiss!10022))))))

(declare-fun bs!342458 () Bool)

(assert (= bs!342458 d!420805))

(declare-fun m!1672265 () Bool)

(assert (=> bs!342458 m!1672265))

(assert (=> b!1449129 d!420805))

(declare-fun d!420807 () Bool)

(get-info :version)

(assert (=> d!420807 (= (isEmpty!9418 (rules!11552 thiss!10022)) ((_ is Nil!15081) (rules!11552 thiss!10022)))))

(assert (=> b!1449129 d!420807))

(declare-fun d!420809 () Bool)

(assert (=> d!420809 (rulesProduceIndividualToken!1230 Lexer!2309 (rules!11552 thiss!10022) lt!499618)))

(declare-fun lt!499662 () Unit!23989)

(declare-fun choose!8923 (LexerInterface!2311 List!15147 List!15146 Token!4972) Unit!23989)

(assert (=> d!420809 (= lt!499662 (choose!8923 Lexer!2309 (rules!11552 thiss!10022) lt!499615 lt!499618))))

(assert (=> d!420809 (not (isEmpty!9418 (rules!11552 thiss!10022)))))

(assert (=> d!420809 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!413 Lexer!2309 (rules!11552 thiss!10022) lt!499615 lt!499618) lt!499662)))

(declare-fun bs!342461 () Bool)

(assert (= bs!342461 d!420809))

(assert (=> bs!342461 m!1672163))

(declare-fun m!1672319 () Bool)

(assert (=> bs!342461 m!1672319))

(assert (=> bs!342461 m!1672167))

(assert (=> b!1449129 d!420809))

(declare-fun d!420819 () Bool)

(declare-fun isBalanced!1532 (Conc!5137) Bool)

(assert (=> d!420819 (= (inv!20112 (tokens!2048 other!32)) (isBalanced!1532 (c!238664 (tokens!2048 other!32))))))

(declare-fun bs!342462 () Bool)

(assert (= bs!342462 d!420819))

(declare-fun m!1672321 () Bool)

(assert (=> bs!342462 m!1672321))

(assert (=> b!1449127 d!420819))

(declare-fun d!420821 () Bool)

(declare-fun lt!499665 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2229 (List!15146) (InoxSet Token!4972))

(assert (=> d!420821 (= lt!499665 (select (content!2229 lt!499616) lt!499621))))

(declare-fun e!924658 () Bool)

(assert (=> d!420821 (= lt!499665 e!924658)))

(declare-fun res!656184 () Bool)

(assert (=> d!420821 (=> (not res!656184) (not e!924658))))

(assert (=> d!420821 (= res!656184 ((_ is Cons!15080) lt!499616))))

(assert (=> d!420821 (= (contains!2883 lt!499616 lt!499621) lt!499665)))

(declare-fun b!1449235 () Bool)

(declare-fun e!924657 () Bool)

(assert (=> b!1449235 (= e!924658 e!924657)))

(declare-fun res!656183 () Bool)

(assert (=> b!1449235 (=> res!656183 e!924657)))

(assert (=> b!1449235 (= res!656183 (= (h!20481 lt!499616) lt!499621))))

(declare-fun b!1449236 () Bool)

(assert (=> b!1449236 (= e!924657 (contains!2883 (t!130483 lt!499616) lt!499621))))

(assert (= (and d!420821 res!656184) b!1449235))

(assert (= (and b!1449235 (not res!656183)) b!1449236))

(declare-fun m!1672323 () Bool)

(assert (=> d!420821 m!1672323))

(declare-fun m!1672325 () Bool)

(assert (=> d!420821 m!1672325))

(declare-fun m!1672327 () Bool)

(assert (=> b!1449236 m!1672327))

(assert (=> b!1449128 d!420821))

(declare-fun d!420823 () Bool)

(declare-fun c!238671 () Bool)

(assert (=> d!420823 (= c!238671 ((_ is Node!5137) (c!238664 (tokens!2048 thiss!10022))))))

(declare-fun e!924663 () Bool)

(assert (=> d!420823 (= (inv!20111 (c!238664 (tokens!2048 thiss!10022))) e!924663)))

(declare-fun b!1449243 () Bool)

(declare-fun inv!20117 (Conc!5137) Bool)

(assert (=> b!1449243 (= e!924663 (inv!20117 (c!238664 (tokens!2048 thiss!10022))))))

(declare-fun b!1449244 () Bool)

(declare-fun e!924664 () Bool)

(assert (=> b!1449244 (= e!924663 e!924664)))

(declare-fun res!656187 () Bool)

(assert (=> b!1449244 (= res!656187 (not ((_ is Leaf!7666) (c!238664 (tokens!2048 thiss!10022)))))))

(assert (=> b!1449244 (=> res!656187 e!924664)))

(declare-fun b!1449245 () Bool)

(declare-fun inv!20118 (Conc!5137) Bool)

(assert (=> b!1449245 (= e!924664 (inv!20118 (c!238664 (tokens!2048 thiss!10022))))))

(assert (= (and d!420823 c!238671) b!1449243))

(assert (= (and d!420823 (not c!238671)) b!1449244))

(assert (= (and b!1449244 (not res!656187)) b!1449245))

(declare-fun m!1672329 () Bool)

(assert (=> b!1449243 m!1672329))

(declare-fun m!1672331 () Bool)

(assert (=> b!1449245 m!1672331))

(assert (=> b!1449126 d!420823))

(declare-fun d!420825 () Bool)

(declare-fun res!656194 () Bool)

(declare-fun e!924667 () Bool)

(assert (=> d!420825 (=> (not res!656194) (not e!924667))))

(assert (=> d!420825 (= res!656194 (not (isEmpty!9418 (rules!11552 thiss!10022))))))

(assert (=> d!420825 (= (inv!20110 thiss!10022) e!924667)))

(declare-fun b!1449252 () Bool)

(declare-fun res!656195 () Bool)

(assert (=> b!1449252 (=> (not res!656195) (not e!924667))))

(assert (=> b!1449252 (= res!656195 (rulesInvariant!2146 Lexer!2309 (rules!11552 thiss!10022)))))

(declare-fun b!1449253 () Bool)

(declare-fun res!656196 () Bool)

(assert (=> b!1449253 (=> (not res!656196) (not e!924667))))

(assert (=> b!1449253 (= res!656196 (rulesProduceEachTokenIndividually!863 Lexer!2309 (rules!11552 thiss!10022) (tokens!2048 thiss!10022)))))

(declare-fun b!1449254 () Bool)

(assert (=> b!1449254 (= e!924667 (separableTokens!247 Lexer!2309 (tokens!2048 thiss!10022) (rules!11552 thiss!10022)))))

(assert (= (and d!420825 res!656194) b!1449252))

(assert (= (and b!1449252 res!656195) b!1449253))

(assert (= (and b!1449253 res!656196) b!1449254))

(assert (=> d!420825 m!1672167))

(assert (=> b!1449252 m!1672141))

(assert (=> b!1449253 m!1672215))

(assert (=> b!1449254 m!1672217))

(assert (=> start!134850 d!420825))

(declare-fun d!420827 () Bool)

(declare-fun res!656197 () Bool)

(declare-fun e!924668 () Bool)

(assert (=> d!420827 (=> (not res!656197) (not e!924668))))

(assert (=> d!420827 (= res!656197 (not (isEmpty!9418 (rules!11552 other!32))))))

(assert (=> d!420827 (= (inv!20110 other!32) e!924668)))

(declare-fun b!1449255 () Bool)

(declare-fun res!656198 () Bool)

(assert (=> b!1449255 (=> (not res!656198) (not e!924668))))

(assert (=> b!1449255 (= res!656198 (rulesInvariant!2146 Lexer!2309 (rules!11552 other!32)))))

(declare-fun b!1449256 () Bool)

(declare-fun res!656199 () Bool)

(assert (=> b!1449256 (=> (not res!656199) (not e!924668))))

(assert (=> b!1449256 (= res!656199 (rulesProduceEachTokenIndividually!863 Lexer!2309 (rules!11552 other!32) (tokens!2048 other!32)))))

(declare-fun b!1449257 () Bool)

(assert (=> b!1449257 (= e!924668 (separableTokens!247 Lexer!2309 (tokens!2048 other!32) (rules!11552 other!32)))))

(assert (= (and d!420827 res!656197) b!1449255))

(assert (= (and b!1449255 res!656198) b!1449256))

(assert (= (and b!1449256 res!656199) b!1449257))

(declare-fun m!1672333 () Bool)

(assert (=> d!420827 m!1672333))

(assert (=> b!1449255 m!1672219))

(assert (=> b!1449256 m!1672221))

(assert (=> b!1449257 m!1672223))

(assert (=> start!134850 d!420827))

(declare-fun d!420829 () Bool)

(declare-fun c!238672 () Bool)

(assert (=> d!420829 (= c!238672 ((_ is Node!5137) (c!238664 (tokens!2048 other!32))))))

(declare-fun e!924669 () Bool)

(assert (=> d!420829 (= (inv!20111 (c!238664 (tokens!2048 other!32))) e!924669)))

(declare-fun b!1449258 () Bool)

(assert (=> b!1449258 (= e!924669 (inv!20117 (c!238664 (tokens!2048 other!32))))))

(declare-fun b!1449259 () Bool)

(declare-fun e!924670 () Bool)

(assert (=> b!1449259 (= e!924669 e!924670)))

(declare-fun res!656200 () Bool)

(assert (=> b!1449259 (= res!656200 (not ((_ is Leaf!7666) (c!238664 (tokens!2048 other!32)))))))

(assert (=> b!1449259 (=> res!656200 e!924670)))

(declare-fun b!1449260 () Bool)

(assert (=> b!1449260 (= e!924670 (inv!20118 (c!238664 (tokens!2048 other!32))))))

(assert (= (and d!420829 c!238672) b!1449258))

(assert (= (and d!420829 (not c!238672)) b!1449259))

(assert (= (and b!1449259 (not res!656200)) b!1449260))

(declare-fun m!1672335 () Bool)

(assert (=> b!1449258 m!1672335))

(declare-fun m!1672337 () Bool)

(assert (=> b!1449260 m!1672337))

(assert (=> b!1449131 d!420829))

(declare-fun d!420831 () Bool)

(assert (=> d!420831 (= (inv!20112 (tokens!2048 thiss!10022)) (isBalanced!1532 (c!238664 (tokens!2048 thiss!10022))))))

(declare-fun bs!342463 () Bool)

(assert (= bs!342463 d!420831))

(declare-fun m!1672339 () Bool)

(assert (=> bs!342463 m!1672339))

(assert (=> b!1449132 d!420831))

(declare-fun b!1449271 () Bool)

(declare-fun b_free!36007 () Bool)

(declare-fun b_next!36711 () Bool)

(assert (=> b!1449271 (= b_free!36007 (not b_next!36711))))

(declare-fun tp!408873 () Bool)

(declare-fun b_and!98071 () Bool)

(assert (=> b!1449271 (= tp!408873 b_and!98071)))

(declare-fun b_free!36009 () Bool)

(declare-fun b_next!36713 () Bool)

(assert (=> b!1449271 (= b_free!36009 (not b_next!36713))))

(declare-fun tp!408874 () Bool)

(declare-fun b_and!98073 () Bool)

(assert (=> b!1449271 (= tp!408874 b_and!98073)))

(declare-fun e!924680 () Bool)

(assert (=> b!1449271 (= e!924680 (and tp!408873 tp!408874))))

(declare-fun e!924679 () Bool)

(declare-fun tp!408872 () Bool)

(declare-fun b!1449270 () Bool)

(declare-fun inv!20106 (String!17981) Bool)

(declare-fun inv!20119 (TokenValueInjection!5150) Bool)

(assert (=> b!1449270 (= e!924679 (and tp!408872 (inv!20106 (tag!2919 (h!20482 (rules!11552 other!32)))) (inv!20119 (transformation!2655 (h!20482 (rules!11552 other!32)))) e!924680))))

(declare-fun b!1449269 () Bool)

(declare-fun e!924682 () Bool)

(declare-fun tp!408871 () Bool)

(assert (=> b!1449269 (= e!924682 (and e!924679 tp!408871))))

(assert (=> b!1449127 (= tp!408833 e!924682)))

(assert (= b!1449270 b!1449271))

(assert (= b!1449269 b!1449270))

(assert (= (and b!1449127 ((_ is Cons!15081) (rules!11552 other!32))) b!1449269))

(declare-fun m!1672341 () Bool)

(assert (=> b!1449270 m!1672341))

(declare-fun m!1672343 () Bool)

(assert (=> b!1449270 m!1672343))

(declare-fun b!1449280 () Bool)

(declare-fun e!924688 () Bool)

(declare-fun tp!408883 () Bool)

(declare-fun tp!408882 () Bool)

(assert (=> b!1449280 (= e!924688 (and (inv!20111 (left!12827 (c!238664 (tokens!2048 thiss!10022)))) tp!408882 (inv!20111 (right!13157 (c!238664 (tokens!2048 thiss!10022)))) tp!408883))))

(declare-fun b!1449282 () Bool)

(declare-fun e!924687 () Bool)

(declare-fun tp!408881 () Bool)

(assert (=> b!1449282 (= e!924687 tp!408881)))

(declare-fun b!1449281 () Bool)

(declare-fun inv!20120 (IArray!10279) Bool)

(assert (=> b!1449281 (= e!924688 (and (inv!20120 (xs!7878 (c!238664 (tokens!2048 thiss!10022)))) e!924687))))

(assert (=> b!1449126 (= tp!408834 (and (inv!20111 (c!238664 (tokens!2048 thiss!10022))) e!924688))))

(assert (= (and b!1449126 ((_ is Node!5137) (c!238664 (tokens!2048 thiss!10022)))) b!1449280))

(assert (= b!1449281 b!1449282))

(assert (= (and b!1449126 ((_ is Leaf!7666) (c!238664 (tokens!2048 thiss!10022)))) b!1449281))

(declare-fun m!1672345 () Bool)

(assert (=> b!1449280 m!1672345))

(declare-fun m!1672347 () Bool)

(assert (=> b!1449280 m!1672347))

(declare-fun m!1672349 () Bool)

(assert (=> b!1449281 m!1672349))

(assert (=> b!1449126 m!1672153))

(declare-fun tp!408886 () Bool)

(declare-fun b!1449283 () Bool)

(declare-fun tp!408885 () Bool)

(declare-fun e!924690 () Bool)

(assert (=> b!1449283 (= e!924690 (and (inv!20111 (left!12827 (c!238664 (tokens!2048 other!32)))) tp!408885 (inv!20111 (right!13157 (c!238664 (tokens!2048 other!32)))) tp!408886))))

(declare-fun b!1449285 () Bool)

(declare-fun e!924689 () Bool)

(declare-fun tp!408884 () Bool)

(assert (=> b!1449285 (= e!924689 tp!408884)))

(declare-fun b!1449284 () Bool)

(assert (=> b!1449284 (= e!924690 (and (inv!20120 (xs!7878 (c!238664 (tokens!2048 other!32)))) e!924689))))

(assert (=> b!1449131 (= tp!408832 (and (inv!20111 (c!238664 (tokens!2048 other!32))) e!924690))))

(assert (= (and b!1449131 ((_ is Node!5137) (c!238664 (tokens!2048 other!32)))) b!1449283))

(assert (= b!1449284 b!1449285))

(assert (= (and b!1449131 ((_ is Leaf!7666) (c!238664 (tokens!2048 other!32)))) b!1449284))

(declare-fun m!1672351 () Bool)

(assert (=> b!1449283 m!1672351))

(declare-fun m!1672353 () Bool)

(assert (=> b!1449283 m!1672353))

(declare-fun m!1672355 () Bool)

(assert (=> b!1449284 m!1672355))

(assert (=> b!1449131 m!1672171))

(declare-fun b!1449288 () Bool)

(declare-fun b_free!36011 () Bool)

(declare-fun b_next!36715 () Bool)

(assert (=> b!1449288 (= b_free!36011 (not b_next!36715))))

(declare-fun tp!408889 () Bool)

(declare-fun b_and!98075 () Bool)

(assert (=> b!1449288 (= tp!408889 b_and!98075)))

(declare-fun b_free!36013 () Bool)

(declare-fun b_next!36717 () Bool)

(assert (=> b!1449288 (= b_free!36013 (not b_next!36717))))

(declare-fun tp!408890 () Bool)

(declare-fun b_and!98077 () Bool)

(assert (=> b!1449288 (= tp!408890 b_and!98077)))

(declare-fun e!924692 () Bool)

(assert (=> b!1449288 (= e!924692 (and tp!408889 tp!408890))))

(declare-fun b!1449287 () Bool)

(declare-fun tp!408888 () Bool)

(declare-fun e!924691 () Bool)

(assert (=> b!1449287 (= e!924691 (and tp!408888 (inv!20106 (tag!2919 (h!20482 (rules!11552 thiss!10022)))) (inv!20119 (transformation!2655 (h!20482 (rules!11552 thiss!10022)))) e!924692))))

(declare-fun b!1449286 () Bool)

(declare-fun e!924694 () Bool)

(declare-fun tp!408887 () Bool)

(assert (=> b!1449286 (= e!924694 (and e!924691 tp!408887))))

(assert (=> b!1449132 (= tp!408831 e!924694)))

(assert (= b!1449287 b!1449288))

(assert (= b!1449286 b!1449287))

(assert (= (and b!1449132 ((_ is Cons!15081) (rules!11552 thiss!10022))) b!1449286))

(declare-fun m!1672357 () Bool)

(assert (=> b!1449287 m!1672357))

(declare-fun m!1672359 () Bool)

(assert (=> b!1449287 m!1672359))

(check-sat (not b_next!36717) (not d!420831) (not d!420787) (not b!1449270) (not b_next!36715) (not b!1449131) (not d!420761) (not b!1449178) (not b!1449173) (not d!420789) (not d!420763) (not b!1449187) b_and!98073 (not b!1449255) (not b!1449172) (not b!1449256) (not b!1449254) b_and!98075 (not d!420799) (not b!1449243) (not d!420791) (not b!1449269) (not b!1449260) (not b!1449284) (not d!420821) (not b!1449253) (not d!420803) (not b!1449236) (not b!1449257) (not b!1449285) (not b!1449186) (not b!1449245) (not b!1449280) (not b!1449174) (not d!420801) (not d!420785) (not b!1449281) (not b!1449252) (not b!1449185) (not b!1449287) (not b!1449283) (not b!1449258) (not b_next!36711) (not b!1449282) (not d!420825) (not b_next!36713) (not b!1449175) (not d!420827) (not b!1449286) (not d!420809) (not d!420805) b_and!98077 (not d!420819) (not b!1449126) b_and!98071)
(check-sat b_and!98073 b_and!98075 (not b_next!36717) (not b_next!36715) (not b_next!36711) (not b_next!36713) b_and!98077 b_and!98071)
(get-model)

(declare-fun b!1449348 () Bool)

(declare-fun e!924736 () Bool)

(assert (=> b!1449348 (= e!924736 true)))

(declare-fun b!1449347 () Bool)

(declare-fun e!924735 () Bool)

(assert (=> b!1449347 (= e!924735 e!924736)))

(declare-fun b!1449346 () Bool)

(declare-fun e!924734 () Bool)

(assert (=> b!1449346 (= e!924734 e!924735)))

(declare-fun d!420853 () Bool)

(assert (=> d!420853 e!924734))

(assert (= b!1449347 b!1449348))

(assert (= b!1449346 b!1449347))

(assert (= (and d!420853 ((_ is Cons!15081) (rules!11552 other!32))) b!1449346))

(declare-fun order!9061 () Int)

(declare-fun lambda!63015 () Int)

(declare-fun order!9059 () Int)

(declare-fun dynLambda!6867 (Int Int) Int)

(declare-fun dynLambda!6868 (Int Int) Int)

(assert (=> b!1449348 (< (dynLambda!6867 order!9059 (toValue!3962 (transformation!2655 (h!20482 (rules!11552 other!32))))) (dynLambda!6868 order!9061 lambda!63015))))

(declare-fun order!9063 () Int)

(declare-fun dynLambda!6869 (Int Int) Int)

(assert (=> b!1449348 (< (dynLambda!6869 order!9063 (toChars!3821 (transformation!2655 (h!20482 (rules!11552 other!32))))) (dynLambda!6868 order!9061 lambda!63015))))

(assert (=> d!420853 true))

(declare-fun e!924727 () Bool)

(assert (=> d!420853 e!924727))

(declare-fun res!656241 () Bool)

(assert (=> d!420853 (=> (not res!656241) (not e!924727))))

(declare-fun lt!499705 () Bool)

(declare-fun forall!3706 (List!15146 Int) Bool)

(assert (=> d!420853 (= res!656241 (= lt!499705 (forall!3706 (list!6020 (tokens!2048 other!32)) lambda!63015)))))

(declare-fun forall!3707 (BalanceConc!10214 Int) Bool)

(assert (=> d!420853 (= lt!499705 (forall!3707 (tokens!2048 other!32) lambda!63015))))

(assert (=> d!420853 (not (isEmpty!9418 (rules!11552 other!32)))))

(assert (=> d!420853 (= (rulesProduceEachTokenIndividually!863 Lexer!2309 (rules!11552 other!32) (tokens!2048 other!32)) lt!499705)))

(declare-fun b!1449337 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!736 (LexerInterface!2311 List!15147 List!15146) Bool)

(assert (=> b!1449337 (= e!924727 (= lt!499705 (rulesProduceEachTokenIndividuallyList!736 Lexer!2309 (rules!11552 other!32) (list!6020 (tokens!2048 other!32)))))))

(assert (= (and d!420853 res!656241) b!1449337))

(assert (=> d!420853 m!1672159))

(assert (=> d!420853 m!1672159))

(declare-fun m!1672451 () Bool)

(assert (=> d!420853 m!1672451))

(declare-fun m!1672453 () Bool)

(assert (=> d!420853 m!1672453))

(assert (=> d!420853 m!1672333))

(assert (=> b!1449337 m!1672159))

(assert (=> b!1449337 m!1672159))

(declare-fun m!1672455 () Bool)

(assert (=> b!1449337 m!1672455))

(assert (=> b!1449174 d!420853))

(declare-fun d!420869 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!128 (LexerInterface!2311 BalanceConc!10214 Int List!15147) Bool)

(assert (=> d!420869 (= (separableTokens!247 Lexer!2309 (tokens!2048 other!32) (rules!11552 other!32)) (tokensListTwoByTwoPredicateSeparable!128 Lexer!2309 (tokens!2048 other!32) 0 (rules!11552 other!32)))))

(declare-fun bs!342472 () Bool)

(assert (= bs!342472 d!420869))

(declare-fun m!1672483 () Bool)

(assert (=> bs!342472 m!1672483))

(assert (=> b!1449175 d!420869))

(declare-fun d!420877 () Bool)

(declare-fun res!656255 () Bool)

(declare-fun e!924750 () Bool)

(assert (=> d!420877 (=> res!656255 e!924750)))

(assert (=> d!420877 (= res!656255 ((_ is Nil!15081) (rules!11552 thiss!10022)))))

(assert (=> d!420877 (= (noDuplicateTag!976 Lexer!2309 (rules!11552 thiss!10022) Nil!15083) e!924750)))

(declare-fun b!1449370 () Bool)

(declare-fun e!924751 () Bool)

(assert (=> b!1449370 (= e!924750 e!924751)))

(declare-fun res!656256 () Bool)

(assert (=> b!1449370 (=> (not res!656256) (not e!924751))))

(declare-fun contains!2885 (List!15149 String!17981) Bool)

(assert (=> b!1449370 (= res!656256 (not (contains!2885 Nil!15083 (tag!2919 (h!20482 (rules!11552 thiss!10022))))))))

(declare-fun b!1449371 () Bool)

(assert (=> b!1449371 (= e!924751 (noDuplicateTag!976 Lexer!2309 (t!130484 (rules!11552 thiss!10022)) (Cons!15083 (tag!2919 (h!20482 (rules!11552 thiss!10022))) Nil!15083)))))

(assert (= (and d!420877 (not res!656255)) b!1449370))

(assert (= (and b!1449370 res!656256) b!1449371))

(declare-fun m!1672485 () Bool)

(assert (=> b!1449370 m!1672485))

(declare-fun m!1672487 () Bool)

(assert (=> b!1449371 m!1672487))

(assert (=> b!1449178 d!420877))

(declare-fun b!1449380 () Bool)

(declare-fun e!924756 () List!15146)

(assert (=> b!1449380 (= e!924756 Nil!15080)))

(declare-fun b!1449382 () Bool)

(declare-fun e!924757 () List!15146)

(declare-fun list!6025 (IArray!10279) List!15146)

(assert (=> b!1449382 (= e!924757 (list!6025 (xs!7878 (c!238664 (tokens!2048 thiss!10022)))))))

(declare-fun b!1449381 () Bool)

(assert (=> b!1449381 (= e!924756 e!924757)))

(declare-fun c!238688 () Bool)

(assert (=> b!1449381 (= c!238688 ((_ is Leaf!7666) (c!238664 (tokens!2048 thiss!10022))))))

(declare-fun d!420879 () Bool)

(declare-fun c!238687 () Bool)

(assert (=> d!420879 (= c!238687 ((_ is Empty!5137) (c!238664 (tokens!2048 thiss!10022))))))

(assert (=> d!420879 (= (list!6022 (c!238664 (tokens!2048 thiss!10022))) e!924756)))

(declare-fun b!1449383 () Bool)

(declare-fun ++!4050 (List!15146 List!15146) List!15146)

(assert (=> b!1449383 (= e!924757 (++!4050 (list!6022 (left!12827 (c!238664 (tokens!2048 thiss!10022)))) (list!6022 (right!13157 (c!238664 (tokens!2048 thiss!10022))))))))

(assert (= (and d!420879 c!238687) b!1449380))

(assert (= (and d!420879 (not c!238687)) b!1449381))

(assert (= (and b!1449381 c!238688) b!1449382))

(assert (= (and b!1449381 (not c!238688)) b!1449383))

(declare-fun m!1672489 () Bool)

(assert (=> b!1449382 m!1672489))

(declare-fun m!1672491 () Bool)

(assert (=> b!1449383 m!1672491))

(declare-fun m!1672493 () Bool)

(assert (=> b!1449383 m!1672493))

(assert (=> b!1449383 m!1672491))

(assert (=> b!1449383 m!1672493))

(declare-fun m!1672495 () Bool)

(assert (=> b!1449383 m!1672495))

(assert (=> d!420805 d!420879))

(declare-fun d!420881 () Bool)

(assert (=> d!420881 (= (inv!20106 (tag!2919 (h!20482 (rules!11552 thiss!10022)))) (= (mod (str.len (value!85314 (tag!2919 (h!20482 (rules!11552 thiss!10022))))) 2) 0))))

(assert (=> b!1449287 d!420881))

(declare-fun d!420883 () Bool)

(declare-fun res!656259 () Bool)

(declare-fun e!924760 () Bool)

(assert (=> d!420883 (=> (not res!656259) (not e!924760))))

(declare-fun semiInverseModEq!1000 (Int Int) Bool)

(assert (=> d!420883 (= res!656259 (semiInverseModEq!1000 (toChars!3821 (transformation!2655 (h!20482 (rules!11552 thiss!10022)))) (toValue!3962 (transformation!2655 (h!20482 (rules!11552 thiss!10022))))))))

(assert (=> d!420883 (= (inv!20119 (transformation!2655 (h!20482 (rules!11552 thiss!10022)))) e!924760)))

(declare-fun b!1449386 () Bool)

(declare-fun equivClasses!959 (Int Int) Bool)

(assert (=> b!1449386 (= e!924760 (equivClasses!959 (toChars!3821 (transformation!2655 (h!20482 (rules!11552 thiss!10022)))) (toValue!3962 (transformation!2655 (h!20482 (rules!11552 thiss!10022))))))))

(assert (= (and d!420883 res!656259) b!1449386))

(declare-fun m!1672497 () Bool)

(assert (=> d!420883 m!1672497))

(declare-fun m!1672499 () Bool)

(assert (=> b!1449386 m!1672499))

(assert (=> b!1449287 d!420883))

(declare-fun d!420885 () Bool)

(assert (=> d!420885 (= (isEmpty!9422 (list!6020 (tokens!2048 other!32))) ((_ is Nil!15080) (list!6020 (tokens!2048 other!32))))))

(assert (=> d!420761 d!420885))

(assert (=> d!420761 d!420799))

(declare-fun d!420887 () Bool)

(declare-fun lt!499714 () Bool)

(assert (=> d!420887 (= lt!499714 (isEmpty!9422 (list!6022 (c!238664 (tokens!2048 other!32)))))))

(declare-fun size!12340 (Conc!5137) Int)

(assert (=> d!420887 (= lt!499714 (= (size!12340 (c!238664 (tokens!2048 other!32))) 0))))

(assert (=> d!420887 (= (isEmpty!9423 (c!238664 (tokens!2048 other!32))) lt!499714)))

(declare-fun bs!342473 () Bool)

(assert (= bs!342473 d!420887))

(assert (=> bs!342473 m!1672255))

(assert (=> bs!342473 m!1672255))

(declare-fun m!1672501 () Bool)

(assert (=> bs!342473 m!1672501))

(declare-fun m!1672503 () Bool)

(assert (=> bs!342473 m!1672503))

(assert (=> d!420761 d!420887))

(declare-fun d!420889 () Bool)

(declare-fun c!238691 () Bool)

(assert (=> d!420889 (= c!238691 ((_ is Nil!15080) lt!499616))))

(declare-fun e!924763 () (InoxSet Token!4972))

(assert (=> d!420889 (= (content!2229 lt!499616) e!924763)))

(declare-fun b!1449391 () Bool)

(assert (=> b!1449391 (= e!924763 ((as const (Array Token!4972 Bool)) false))))

(declare-fun b!1449392 () Bool)

(assert (=> b!1449392 (= e!924763 ((_ map or) (store ((as const (Array Token!4972 Bool)) false) (h!20481 lt!499616) true) (content!2229 (t!130483 lt!499616))))))

(assert (= (and d!420889 c!238691) b!1449391))

(assert (= (and d!420889 (not c!238691)) b!1449392))

(declare-fun m!1672505 () Bool)

(assert (=> b!1449392 m!1672505))

(declare-fun m!1672507 () Bool)

(assert (=> b!1449392 m!1672507))

(assert (=> d!420821 d!420889))

(assert (=> b!1449126 d!420823))

(declare-fun d!420891 () Bool)

(declare-fun res!656264 () Bool)

(declare-fun e!924766 () Bool)

(assert (=> d!420891 (=> (not res!656264) (not e!924766))))

(declare-fun size!12341 (List!15146) Int)

(assert (=> d!420891 (= res!656264 (<= (size!12341 (list!6025 (xs!7878 (c!238664 (tokens!2048 thiss!10022))))) 512))))

(assert (=> d!420891 (= (inv!20118 (c!238664 (tokens!2048 thiss!10022))) e!924766)))

(declare-fun b!1449397 () Bool)

(declare-fun res!656265 () Bool)

(assert (=> b!1449397 (=> (not res!656265) (not e!924766))))

(assert (=> b!1449397 (= res!656265 (= (csize!10505 (c!238664 (tokens!2048 thiss!10022))) (size!12341 (list!6025 (xs!7878 (c!238664 (tokens!2048 thiss!10022)))))))))

(declare-fun b!1449398 () Bool)

(assert (=> b!1449398 (= e!924766 (and (> (csize!10505 (c!238664 (tokens!2048 thiss!10022))) 0) (<= (csize!10505 (c!238664 (tokens!2048 thiss!10022))) 512)))))

(assert (= (and d!420891 res!656264) b!1449397))

(assert (= (and b!1449397 res!656265) b!1449398))

(assert (=> d!420891 m!1672489))

(assert (=> d!420891 m!1672489))

(declare-fun m!1672509 () Bool)

(assert (=> d!420891 m!1672509))

(assert (=> b!1449397 m!1672489))

(assert (=> b!1449397 m!1672489))

(assert (=> b!1449397 m!1672509))

(assert (=> b!1449245 d!420891))

(declare-fun d!420893 () Bool)

(declare-fun res!656266 () Bool)

(declare-fun e!924767 () Bool)

(assert (=> d!420893 (=> (not res!656266) (not e!924767))))

(assert (=> d!420893 (= res!656266 (rulesValid!976 Lexer!2309 (rules!11552 other!32)))))

(assert (=> d!420893 (= (rulesInvariant!2146 Lexer!2309 (rules!11552 other!32)) e!924767)))

(declare-fun b!1449399 () Bool)

(assert (=> b!1449399 (= e!924767 (noDuplicateTag!976 Lexer!2309 (rules!11552 other!32) Nil!15083))))

(assert (= (and d!420893 res!656266) b!1449399))

(declare-fun m!1672511 () Bool)

(assert (=> d!420893 m!1672511))

(declare-fun m!1672513 () Bool)

(assert (=> b!1449399 m!1672513))

(assert (=> d!420785 d!420893))

(declare-fun d!420895 () Bool)

(declare-fun lt!499715 () Bool)

(assert (=> d!420895 (= lt!499715 (select (content!2229 (t!130483 lt!499616)) lt!499621))))

(declare-fun e!924769 () Bool)

(assert (=> d!420895 (= lt!499715 e!924769)))

(declare-fun res!656268 () Bool)

(assert (=> d!420895 (=> (not res!656268) (not e!924769))))

(assert (=> d!420895 (= res!656268 ((_ is Cons!15080) (t!130483 lt!499616)))))

(assert (=> d!420895 (= (contains!2883 (t!130483 lt!499616) lt!499621) lt!499715)))

(declare-fun b!1449400 () Bool)

(declare-fun e!924768 () Bool)

(assert (=> b!1449400 (= e!924769 e!924768)))

(declare-fun res!656267 () Bool)

(assert (=> b!1449400 (=> res!656267 e!924768)))

(assert (=> b!1449400 (= res!656267 (= (h!20481 (t!130483 lt!499616)) lt!499621))))

(declare-fun b!1449401 () Bool)

(assert (=> b!1449401 (= e!924768 (contains!2883 (t!130483 (t!130483 lt!499616)) lt!499621))))

(assert (= (and d!420895 res!656268) b!1449400))

(assert (= (and b!1449400 (not res!656267)) b!1449401))

(assert (=> d!420895 m!1672507))

(declare-fun m!1672515 () Bool)

(assert (=> d!420895 m!1672515))

(declare-fun m!1672517 () Bool)

(assert (=> b!1449401 m!1672517))

(assert (=> b!1449236 d!420895))

(declare-fun d!420897 () Bool)

(assert (=> d!420897 (= (separableTokens!247 Lexer!2309 (tokens!2048 thiss!10022) (rules!11552 thiss!10022)) (tokensListTwoByTwoPredicateSeparable!128 Lexer!2309 (tokens!2048 thiss!10022) 0 (rules!11552 thiss!10022)))))

(declare-fun bs!342474 () Bool)

(assert (= bs!342474 d!420897))

(declare-fun m!1672519 () Bool)

(assert (=> bs!342474 m!1672519))

(assert (=> b!1449254 d!420897))

(assert (=> b!1449252 d!420787))

(declare-fun d!420899 () Bool)

(declare-fun c!238692 () Bool)

(assert (=> d!420899 (= c!238692 ((_ is Node!5137) (left!12827 (c!238664 (tokens!2048 other!32)))))))

(declare-fun e!924770 () Bool)

(assert (=> d!420899 (= (inv!20111 (left!12827 (c!238664 (tokens!2048 other!32)))) e!924770)))

(declare-fun b!1449402 () Bool)

(assert (=> b!1449402 (= e!924770 (inv!20117 (left!12827 (c!238664 (tokens!2048 other!32)))))))

(declare-fun b!1449403 () Bool)

(declare-fun e!924771 () Bool)

(assert (=> b!1449403 (= e!924770 e!924771)))

(declare-fun res!656269 () Bool)

(assert (=> b!1449403 (= res!656269 (not ((_ is Leaf!7666) (left!12827 (c!238664 (tokens!2048 other!32))))))))

(assert (=> b!1449403 (=> res!656269 e!924771)))

(declare-fun b!1449404 () Bool)

(assert (=> b!1449404 (= e!924771 (inv!20118 (left!12827 (c!238664 (tokens!2048 other!32)))))))

(assert (= (and d!420899 c!238692) b!1449402))

(assert (= (and d!420899 (not c!238692)) b!1449403))

(assert (= (and b!1449403 (not res!656269)) b!1449404))

(declare-fun m!1672521 () Bool)

(assert (=> b!1449402 m!1672521))

(declare-fun m!1672523 () Bool)

(assert (=> b!1449404 m!1672523))

(assert (=> b!1449283 d!420899))

(declare-fun d!420901 () Bool)

(declare-fun c!238693 () Bool)

(assert (=> d!420901 (= c!238693 ((_ is Node!5137) (right!13157 (c!238664 (tokens!2048 other!32)))))))

(declare-fun e!924772 () Bool)

(assert (=> d!420901 (= (inv!20111 (right!13157 (c!238664 (tokens!2048 other!32)))) e!924772)))

(declare-fun b!1449405 () Bool)

(assert (=> b!1449405 (= e!924772 (inv!20117 (right!13157 (c!238664 (tokens!2048 other!32)))))))

(declare-fun b!1449406 () Bool)

(declare-fun e!924773 () Bool)

(assert (=> b!1449406 (= e!924772 e!924773)))

(declare-fun res!656270 () Bool)

(assert (=> b!1449406 (= res!656270 (not ((_ is Leaf!7666) (right!13157 (c!238664 (tokens!2048 other!32))))))))

(assert (=> b!1449406 (=> res!656270 e!924773)))

(declare-fun b!1449407 () Bool)

(assert (=> b!1449407 (= e!924773 (inv!20118 (right!13157 (c!238664 (tokens!2048 other!32)))))))

(assert (= (and d!420901 c!238693) b!1449405))

(assert (= (and d!420901 (not c!238693)) b!1449406))

(assert (= (and b!1449406 (not res!656270)) b!1449407))

(declare-fun m!1672525 () Bool)

(assert (=> b!1449405 m!1672525))

(declare-fun m!1672527 () Bool)

(assert (=> b!1449407 m!1672527))

(assert (=> b!1449283 d!420901))

(declare-fun d!420903 () Bool)

(declare-fun res!656271 () Bool)

(declare-fun e!924774 () Bool)

(assert (=> d!420903 (=> (not res!656271) (not e!924774))))

(assert (=> d!420903 (= res!656271 (<= (size!12341 (list!6025 (xs!7878 (c!238664 (tokens!2048 other!32))))) 512))))

(assert (=> d!420903 (= (inv!20118 (c!238664 (tokens!2048 other!32))) e!924774)))

(declare-fun b!1449408 () Bool)

(declare-fun res!656272 () Bool)

(assert (=> b!1449408 (=> (not res!656272) (not e!924774))))

(assert (=> b!1449408 (= res!656272 (= (csize!10505 (c!238664 (tokens!2048 other!32))) (size!12341 (list!6025 (xs!7878 (c!238664 (tokens!2048 other!32)))))))))

(declare-fun b!1449409 () Bool)

(assert (=> b!1449409 (= e!924774 (and (> (csize!10505 (c!238664 (tokens!2048 other!32))) 0) (<= (csize!10505 (c!238664 (tokens!2048 other!32))) 512)))))

(assert (= (and d!420903 res!656271) b!1449408))

(assert (= (and b!1449408 res!656272) b!1449409))

(declare-fun m!1672529 () Bool)

(assert (=> d!420903 m!1672529))

(assert (=> d!420903 m!1672529))

(declare-fun m!1672531 () Bool)

(assert (=> d!420903 m!1672531))

(assert (=> b!1449408 m!1672529))

(assert (=> b!1449408 m!1672529))

(assert (=> b!1449408 m!1672531))

(assert (=> b!1449260 d!420903))

(declare-fun bs!342475 () Bool)

(declare-fun d!420905 () Bool)

(assert (= bs!342475 (and d!420905 d!420853)))

(declare-fun lambda!63016 () Int)

(assert (=> bs!342475 (= (= (rules!11552 thiss!10022) (rules!11552 other!32)) (= lambda!63016 lambda!63015))))

(declare-fun b!1449413 () Bool)

(declare-fun e!924778 () Bool)

(assert (=> b!1449413 (= e!924778 true)))

(declare-fun b!1449412 () Bool)

(declare-fun e!924777 () Bool)

(assert (=> b!1449412 (= e!924777 e!924778)))

(declare-fun b!1449411 () Bool)

(declare-fun e!924776 () Bool)

(assert (=> b!1449411 (= e!924776 e!924777)))

(assert (=> d!420905 e!924776))

(assert (= b!1449412 b!1449413))

(assert (= b!1449411 b!1449412))

(assert (= (and d!420905 ((_ is Cons!15081) (rules!11552 thiss!10022))) b!1449411))

(assert (=> b!1449413 (< (dynLambda!6867 order!9059 (toValue!3962 (transformation!2655 (h!20482 (rules!11552 thiss!10022))))) (dynLambda!6868 order!9061 lambda!63016))))

(assert (=> b!1449413 (< (dynLambda!6869 order!9063 (toChars!3821 (transformation!2655 (h!20482 (rules!11552 thiss!10022))))) (dynLambda!6868 order!9061 lambda!63016))))

(assert (=> d!420905 true))

(declare-fun e!924775 () Bool)

(assert (=> d!420905 e!924775))

(declare-fun res!656273 () Bool)

(assert (=> d!420905 (=> (not res!656273) (not e!924775))))

(declare-fun lt!499716 () Bool)

(assert (=> d!420905 (= res!656273 (= lt!499716 (forall!3706 (list!6020 (tokens!2048 thiss!10022)) lambda!63016)))))

(assert (=> d!420905 (= lt!499716 (forall!3707 (tokens!2048 thiss!10022) lambda!63016))))

(assert (=> d!420905 (not (isEmpty!9418 (rules!11552 thiss!10022)))))

(assert (=> d!420905 (= (rulesProduceEachTokenIndividually!863 Lexer!2309 (rules!11552 thiss!10022) (tokens!2048 thiss!10022)) lt!499716)))

(declare-fun b!1449410 () Bool)

(assert (=> b!1449410 (= e!924775 (= lt!499716 (rulesProduceEachTokenIndividuallyList!736 Lexer!2309 (rules!11552 thiss!10022) (list!6020 (tokens!2048 thiss!10022)))))))

(assert (= (and d!420905 res!656273) b!1449410))

(assert (=> d!420905 m!1672165))

(assert (=> d!420905 m!1672165))

(declare-fun m!1672533 () Bool)

(assert (=> d!420905 m!1672533))

(declare-fun m!1672535 () Bool)

(assert (=> d!420905 m!1672535))

(assert (=> d!420905 m!1672167))

(assert (=> b!1449410 m!1672165))

(assert (=> b!1449410 m!1672165))

(declare-fun m!1672537 () Bool)

(assert (=> b!1449410 m!1672537))

(assert (=> b!1449253 d!420905))

(declare-fun d!420907 () Bool)

(assert (=> d!420907 (= (inv!20120 (xs!7878 (c!238664 (tokens!2048 other!32)))) (<= (size!12341 (innerList!5197 (xs!7878 (c!238664 (tokens!2048 other!32))))) 2147483647))))

(declare-fun bs!342476 () Bool)

(assert (= bs!342476 d!420907))

(declare-fun m!1672539 () Bool)

(assert (=> bs!342476 m!1672539))

(assert (=> b!1449284 d!420907))

(declare-fun d!420909 () Bool)

(declare-fun res!656280 () Bool)

(declare-fun e!924781 () Bool)

(assert (=> d!420909 (=> (not res!656280) (not e!924781))))

(assert (=> d!420909 (= res!656280 (= (csize!10504 (c!238664 (tokens!2048 other!32))) (+ (size!12340 (left!12827 (c!238664 (tokens!2048 other!32)))) (size!12340 (right!13157 (c!238664 (tokens!2048 other!32)))))))))

(assert (=> d!420909 (= (inv!20117 (c!238664 (tokens!2048 other!32))) e!924781)))

(declare-fun b!1449420 () Bool)

(declare-fun res!656281 () Bool)

(assert (=> b!1449420 (=> (not res!656281) (not e!924781))))

(assert (=> b!1449420 (= res!656281 (and (not (= (left!12827 (c!238664 (tokens!2048 other!32))) Empty!5137)) (not (= (right!13157 (c!238664 (tokens!2048 other!32))) Empty!5137))))))

(declare-fun b!1449421 () Bool)

(declare-fun res!656282 () Bool)

(assert (=> b!1449421 (=> (not res!656282) (not e!924781))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!762 (Conc!5137) Int)

(assert (=> b!1449421 (= res!656282 (= (cheight!5348 (c!238664 (tokens!2048 other!32))) (+ (max!0 (height!762 (left!12827 (c!238664 (tokens!2048 other!32)))) (height!762 (right!13157 (c!238664 (tokens!2048 other!32))))) 1)))))

(declare-fun b!1449422 () Bool)

(assert (=> b!1449422 (= e!924781 (<= 0 (cheight!5348 (c!238664 (tokens!2048 other!32)))))))

(assert (= (and d!420909 res!656280) b!1449420))

(assert (= (and b!1449420 res!656281) b!1449421))

(assert (= (and b!1449421 res!656282) b!1449422))

(declare-fun m!1672541 () Bool)

(assert (=> d!420909 m!1672541))

(declare-fun m!1672543 () Bool)

(assert (=> d!420909 m!1672543))

(declare-fun m!1672545 () Bool)

(assert (=> b!1449421 m!1672545))

(declare-fun m!1672547 () Bool)

(assert (=> b!1449421 m!1672547))

(assert (=> b!1449421 m!1672545))

(assert (=> b!1449421 m!1672547))

(declare-fun m!1672549 () Bool)

(assert (=> b!1449421 m!1672549))

(assert (=> b!1449258 d!420909))

(assert (=> b!1449131 d!420829))

(assert (=> d!420825 d!420807))

(declare-fun d!420911 () Bool)

(assert (=> d!420911 (= (inv!20120 (xs!7878 (c!238664 (tokens!2048 thiss!10022)))) (<= (size!12341 (innerList!5197 (xs!7878 (c!238664 (tokens!2048 thiss!10022))))) 2147483647))))

(declare-fun bs!342477 () Bool)

(assert (= bs!342477 d!420911))

(declare-fun m!1672551 () Bool)

(assert (=> bs!342477 m!1672551))

(assert (=> b!1449281 d!420911))

(declare-fun d!420913 () Bool)

(declare-fun res!656301 () Bool)

(declare-fun e!924791 () Bool)

(assert (=> d!420913 (=> res!656301 e!924791)))

(assert (=> d!420913 (= res!656301 (not ((_ is Node!5137) (c!238664 (tokens!2048 other!32)))))))

(assert (=> d!420913 (= (isBalanced!1532 (c!238664 (tokens!2048 other!32))) e!924791)))

(declare-fun b!1449442 () Bool)

(declare-fun e!924792 () Bool)

(assert (=> b!1449442 (= e!924791 e!924792)))

(declare-fun res!656300 () Bool)

(assert (=> b!1449442 (=> (not res!656300) (not e!924792))))

(assert (=> b!1449442 (= res!656300 (<= (- 1) (- (height!762 (left!12827 (c!238664 (tokens!2048 other!32)))) (height!762 (right!13157 (c!238664 (tokens!2048 other!32)))))))))

(declare-fun b!1449443 () Bool)

(assert (=> b!1449443 (= e!924792 (not (isEmpty!9423 (right!13157 (c!238664 (tokens!2048 other!32))))))))

(declare-fun b!1449444 () Bool)

(declare-fun res!656298 () Bool)

(assert (=> b!1449444 (=> (not res!656298) (not e!924792))))

(assert (=> b!1449444 (= res!656298 (isBalanced!1532 (right!13157 (c!238664 (tokens!2048 other!32)))))))

(declare-fun b!1449445 () Bool)

(declare-fun res!656302 () Bool)

(assert (=> b!1449445 (=> (not res!656302) (not e!924792))))

(assert (=> b!1449445 (= res!656302 (not (isEmpty!9423 (left!12827 (c!238664 (tokens!2048 other!32))))))))

(declare-fun b!1449446 () Bool)

(declare-fun res!656303 () Bool)

(assert (=> b!1449446 (=> (not res!656303) (not e!924792))))

(assert (=> b!1449446 (= res!656303 (isBalanced!1532 (left!12827 (c!238664 (tokens!2048 other!32)))))))

(declare-fun b!1449447 () Bool)

(declare-fun res!656299 () Bool)

(assert (=> b!1449447 (=> (not res!656299) (not e!924792))))

(assert (=> b!1449447 (= res!656299 (<= (- (height!762 (left!12827 (c!238664 (tokens!2048 other!32)))) (height!762 (right!13157 (c!238664 (tokens!2048 other!32))))) 1))))

(assert (= (and d!420913 (not res!656301)) b!1449442))

(assert (= (and b!1449442 res!656300) b!1449447))

(assert (= (and b!1449447 res!656299) b!1449446))

(assert (= (and b!1449446 res!656303) b!1449444))

(assert (= (and b!1449444 res!656298) b!1449445))

(assert (= (and b!1449445 res!656302) b!1449443))

(assert (=> b!1449447 m!1672545))

(assert (=> b!1449447 m!1672547))

(declare-fun m!1672553 () Bool)

(assert (=> b!1449443 m!1672553))

(declare-fun m!1672555 () Bool)

(assert (=> b!1449444 m!1672555))

(declare-fun m!1672557 () Bool)

(assert (=> b!1449446 m!1672557))

(assert (=> b!1449442 m!1672545))

(assert (=> b!1449442 m!1672547))

(declare-fun m!1672559 () Bool)

(assert (=> b!1449445 m!1672559))

(assert (=> d!420819 d!420913))

(assert (=> b!1449173 d!420897))

(assert (=> b!1449255 d!420893))

(declare-fun d!420915 () Bool)

(declare-fun lt!499722 () Bool)

(declare-fun isEmpty!9427 (List!15144) Bool)

(declare-fun list!6026 (BalanceConc!10212) List!15144)

(assert (=> d!420915 (= lt!499722 (isEmpty!9427 (list!6026 (_2!7980 (lex!1059 Lexer!2309 (rules!11552 thiss!10022) (print!1086 Lexer!2309 (singletonSeq!1250 lt!499618)))))))))

(declare-fun isEmpty!9428 (Conc!5136) Bool)

(assert (=> d!420915 (= lt!499722 (isEmpty!9428 (c!238662 (_2!7980 (lex!1059 Lexer!2309 (rules!11552 thiss!10022) (print!1086 Lexer!2309 (singletonSeq!1250 lt!499618)))))))))

(assert (=> d!420915 (= (isEmpty!9424 (_2!7980 (lex!1059 Lexer!2309 (rules!11552 thiss!10022) (print!1086 Lexer!2309 (singletonSeq!1250 lt!499618))))) lt!499722)))

(declare-fun bs!342478 () Bool)

(assert (= bs!342478 d!420915))

(declare-fun m!1672567 () Bool)

(assert (=> bs!342478 m!1672567))

(assert (=> bs!342478 m!1672567))

(declare-fun m!1672569 () Bool)

(assert (=> bs!342478 m!1672569))

(declare-fun m!1672571 () Bool)

(assert (=> bs!342478 m!1672571))

(assert (=> b!1449187 d!420915))

(declare-fun b!1449538 () Bool)

(declare-fun res!656347 () Bool)

(declare-fun e!924847 () Bool)

(assert (=> b!1449538 (=> (not res!656347) (not e!924847))))

(declare-fun lt!499731 () tuple2!14188)

(declare-datatypes ((tuple2!14192 0))(
  ( (tuple2!14193 (_1!7982 List!15146) (_2!7982 List!15144)) )
))
(declare-fun lexList!708 (LexerInterface!2311 List!15147 List!15144) tuple2!14192)

(assert (=> b!1449538 (= res!656347 (= (list!6020 (_1!7980 lt!499731)) (_1!7982 (lexList!708 Lexer!2309 (rules!11552 thiss!10022) (list!6026 (print!1086 Lexer!2309 (singletonSeq!1250 lt!499618)))))))))

(declare-fun b!1449539 () Bool)

(assert (=> b!1449539 (= e!924847 (= (list!6026 (_2!7980 lt!499731)) (_2!7982 (lexList!708 Lexer!2309 (rules!11552 thiss!10022) (list!6026 (print!1086 Lexer!2309 (singletonSeq!1250 lt!499618)))))))))

(declare-fun b!1449540 () Bool)

(declare-fun e!924846 () Bool)

(assert (=> b!1449540 (= e!924846 (= (_2!7980 lt!499731) (print!1086 Lexer!2309 (singletonSeq!1250 lt!499618))))))

(declare-fun b!1449541 () Bool)

(declare-fun e!924845 () Bool)

(assert (=> b!1449541 (= e!924845 (not (isEmpty!9417 (_1!7980 lt!499731))))))

(declare-fun b!1449542 () Bool)

(assert (=> b!1449542 (= e!924846 e!924845)))

(declare-fun res!656346 () Bool)

(declare-fun size!12342 (BalanceConc!10212) Int)

(assert (=> b!1449542 (= res!656346 (< (size!12342 (_2!7980 lt!499731)) (size!12342 (print!1086 Lexer!2309 (singletonSeq!1250 lt!499618)))))))

(assert (=> b!1449542 (=> (not res!656346) (not e!924845))))

(declare-fun d!420919 () Bool)

(assert (=> d!420919 e!924847))

(declare-fun res!656348 () Bool)

(assert (=> d!420919 (=> (not res!656348) (not e!924847))))

(assert (=> d!420919 (= res!656348 e!924846)))

(declare-fun c!238713 () Bool)

(assert (=> d!420919 (= c!238713 (> (size!12336 (_1!7980 lt!499731)) 0))))

(declare-fun lexTailRecV2!463 (LexerInterface!2311 List!15147 BalanceConc!10212 BalanceConc!10212 BalanceConc!10212 BalanceConc!10214) tuple2!14188)

(assert (=> d!420919 (= lt!499731 (lexTailRecV2!463 Lexer!2309 (rules!11552 thiss!10022) (print!1086 Lexer!2309 (singletonSeq!1250 lt!499618)) (BalanceConc!10213 Empty!5136) (print!1086 Lexer!2309 (singletonSeq!1250 lt!499618)) (BalanceConc!10215 Empty!5137)))))

(assert (=> d!420919 (= (lex!1059 Lexer!2309 (rules!11552 thiss!10022) (print!1086 Lexer!2309 (singletonSeq!1250 lt!499618))) lt!499731)))

(assert (= (and d!420919 c!238713) b!1449542))

(assert (= (and d!420919 (not c!238713)) b!1449540))

(assert (= (and b!1449542 res!656346) b!1449541))

(assert (= (and d!420919 res!656348) b!1449538))

(assert (= (and b!1449538 res!656347) b!1449539))

(declare-fun m!1672641 () Bool)

(assert (=> b!1449539 m!1672641))

(assert (=> b!1449539 m!1672237))

(declare-fun m!1672643 () Bool)

(assert (=> b!1449539 m!1672643))

(assert (=> b!1449539 m!1672643))

(declare-fun m!1672645 () Bool)

(assert (=> b!1449539 m!1672645))

(declare-fun m!1672647 () Bool)

(assert (=> b!1449542 m!1672647))

(assert (=> b!1449542 m!1672237))

(declare-fun m!1672649 () Bool)

(assert (=> b!1449542 m!1672649))

(declare-fun m!1672651 () Bool)

(assert (=> b!1449541 m!1672651))

(declare-fun m!1672653 () Bool)

(assert (=> b!1449538 m!1672653))

(assert (=> b!1449538 m!1672237))

(assert (=> b!1449538 m!1672643))

(assert (=> b!1449538 m!1672643))

(assert (=> b!1449538 m!1672645))

(declare-fun m!1672655 () Bool)

(assert (=> d!420919 m!1672655))

(assert (=> d!420919 m!1672237))

(assert (=> d!420919 m!1672237))

(declare-fun m!1672657 () Bool)

(assert (=> d!420919 m!1672657))

(assert (=> b!1449187 d!420919))

(declare-fun d!420961 () Bool)

(declare-fun lt!499734 () BalanceConc!10212)

(declare-fun printList!717 (LexerInterface!2311 List!15146) List!15144)

(assert (=> d!420961 (= (list!6026 lt!499734) (printList!717 Lexer!2309 (list!6020 (singletonSeq!1250 lt!499618))))))

(declare-fun printTailRec!689 (LexerInterface!2311 BalanceConc!10214 Int BalanceConc!10212) BalanceConc!10212)

(assert (=> d!420961 (= lt!499734 (printTailRec!689 Lexer!2309 (singletonSeq!1250 lt!499618) 0 (BalanceConc!10213 Empty!5136)))))

(assert (=> d!420961 (= (print!1086 Lexer!2309 (singletonSeq!1250 lt!499618)) lt!499734)))

(declare-fun bs!342484 () Bool)

(assert (= bs!342484 d!420961))

(declare-fun m!1672659 () Bool)

(assert (=> bs!342484 m!1672659))

(assert (=> bs!342484 m!1672241))

(assert (=> bs!342484 m!1672245))

(assert (=> bs!342484 m!1672245))

(declare-fun m!1672661 () Bool)

(assert (=> bs!342484 m!1672661))

(assert (=> bs!342484 m!1672241))

(declare-fun m!1672663 () Bool)

(assert (=> bs!342484 m!1672663))

(assert (=> b!1449187 d!420961))

(declare-fun d!420963 () Bool)

(declare-fun e!924850 () Bool)

(assert (=> d!420963 e!924850))

(declare-fun res!656351 () Bool)

(assert (=> d!420963 (=> (not res!656351) (not e!924850))))

(declare-fun lt!499737 () BalanceConc!10214)

(assert (=> d!420963 (= res!656351 (= (list!6020 lt!499737) (Cons!15080 lt!499618 Nil!15080)))))

(declare-fun singleton!524 (Token!4972) BalanceConc!10214)

(assert (=> d!420963 (= lt!499737 (singleton!524 lt!499618))))

(assert (=> d!420963 (= (singletonSeq!1250 lt!499618) lt!499737)))

(declare-fun b!1449545 () Bool)

(assert (=> b!1449545 (= e!924850 (isBalanced!1532 (c!238664 lt!499737)))))

(assert (= (and d!420963 res!656351) b!1449545))

(declare-fun m!1672665 () Bool)

(assert (=> d!420963 m!1672665))

(declare-fun m!1672667 () Bool)

(assert (=> d!420963 m!1672667))

(declare-fun m!1672669 () Bool)

(assert (=> b!1449545 m!1672669))

(assert (=> b!1449187 d!420963))

(assert (=> d!420809 d!420791))

(declare-fun d!420965 () Bool)

(assert (=> d!420965 (rulesProduceIndividualToken!1230 Lexer!2309 (rules!11552 thiss!10022) lt!499618)))

(assert (=> d!420965 true))

(declare-fun _$77!576 () Unit!23989)

(assert (=> d!420965 (= (choose!8923 Lexer!2309 (rules!11552 thiss!10022) lt!499615 lt!499618) _$77!576)))

(declare-fun bs!342487 () Bool)

(assert (= bs!342487 d!420965))

(assert (=> bs!342487 m!1672163))

(assert (=> d!420809 d!420965))

(assert (=> d!420809 d!420807))

(declare-fun d!420977 () Bool)

(declare-fun res!656364 () Bool)

(declare-fun e!924902 () Bool)

(assert (=> d!420977 (=> res!656364 e!924902)))

(assert (=> d!420977 (= res!656364 (not ((_ is Node!5137) (c!238664 (tokens!2048 thiss!10022)))))))

(assert (=> d!420977 (= (isBalanced!1532 (c!238664 (tokens!2048 thiss!10022))) e!924902)))

(declare-fun b!1449613 () Bool)

(declare-fun e!924903 () Bool)

(assert (=> b!1449613 (= e!924902 e!924903)))

(declare-fun res!656363 () Bool)

(assert (=> b!1449613 (=> (not res!656363) (not e!924903))))

(assert (=> b!1449613 (= res!656363 (<= (- 1) (- (height!762 (left!12827 (c!238664 (tokens!2048 thiss!10022)))) (height!762 (right!13157 (c!238664 (tokens!2048 thiss!10022)))))))))

(declare-fun b!1449614 () Bool)

(assert (=> b!1449614 (= e!924903 (not (isEmpty!9423 (right!13157 (c!238664 (tokens!2048 thiss!10022))))))))

(declare-fun b!1449615 () Bool)

(declare-fun res!656361 () Bool)

(assert (=> b!1449615 (=> (not res!656361) (not e!924903))))

(assert (=> b!1449615 (= res!656361 (isBalanced!1532 (right!13157 (c!238664 (tokens!2048 thiss!10022)))))))

(declare-fun b!1449616 () Bool)

(declare-fun res!656365 () Bool)

(assert (=> b!1449616 (=> (not res!656365) (not e!924903))))

(assert (=> b!1449616 (= res!656365 (not (isEmpty!9423 (left!12827 (c!238664 (tokens!2048 thiss!10022))))))))

(declare-fun b!1449617 () Bool)

(declare-fun res!656366 () Bool)

(assert (=> b!1449617 (=> (not res!656366) (not e!924903))))

(assert (=> b!1449617 (= res!656366 (isBalanced!1532 (left!12827 (c!238664 (tokens!2048 thiss!10022)))))))

(declare-fun b!1449618 () Bool)

(declare-fun res!656362 () Bool)

(assert (=> b!1449618 (=> (not res!656362) (not e!924903))))

(assert (=> b!1449618 (= res!656362 (<= (- (height!762 (left!12827 (c!238664 (tokens!2048 thiss!10022)))) (height!762 (right!13157 (c!238664 (tokens!2048 thiss!10022))))) 1))))

(assert (= (and d!420977 (not res!656364)) b!1449613))

(assert (= (and b!1449613 res!656363) b!1449618))

(assert (= (and b!1449618 res!656362) b!1449617))

(assert (= (and b!1449617 res!656366) b!1449615))

(assert (= (and b!1449615 res!656361) b!1449616))

(assert (= (and b!1449616 res!656365) b!1449614))

(declare-fun m!1672741 () Bool)

(assert (=> b!1449618 m!1672741))

(declare-fun m!1672743 () Bool)

(assert (=> b!1449618 m!1672743))

(declare-fun m!1672745 () Bool)

(assert (=> b!1449614 m!1672745))

(declare-fun m!1672747 () Bool)

(assert (=> b!1449615 m!1672747))

(declare-fun m!1672749 () Bool)

(assert (=> b!1449617 m!1672749))

(assert (=> b!1449613 m!1672741))

(assert (=> b!1449613 m!1672743))

(declare-fun m!1672751 () Bool)

(assert (=> b!1449616 m!1672751))

(assert (=> d!420831 d!420977))

(assert (=> d!420763 d!420787))

(assert (=> b!1449172 d!420905))

(declare-fun d!420979 () Bool)

(declare-fun c!238716 () Bool)

(assert (=> d!420979 (= c!238716 ((_ is Node!5137) (left!12827 (c!238664 (tokens!2048 thiss!10022)))))))

(declare-fun e!924904 () Bool)

(assert (=> d!420979 (= (inv!20111 (left!12827 (c!238664 (tokens!2048 thiss!10022)))) e!924904)))

(declare-fun b!1449619 () Bool)

(assert (=> b!1449619 (= e!924904 (inv!20117 (left!12827 (c!238664 (tokens!2048 thiss!10022)))))))

(declare-fun b!1449620 () Bool)

(declare-fun e!924905 () Bool)

(assert (=> b!1449620 (= e!924904 e!924905)))

(declare-fun res!656367 () Bool)

(assert (=> b!1449620 (= res!656367 (not ((_ is Leaf!7666) (left!12827 (c!238664 (tokens!2048 thiss!10022))))))))

(assert (=> b!1449620 (=> res!656367 e!924905)))

(declare-fun b!1449621 () Bool)

(assert (=> b!1449621 (= e!924905 (inv!20118 (left!12827 (c!238664 (tokens!2048 thiss!10022)))))))

(assert (= (and d!420979 c!238716) b!1449619))

(assert (= (and d!420979 (not c!238716)) b!1449620))

(assert (= (and b!1449620 (not res!656367)) b!1449621))

(declare-fun m!1672753 () Bool)

(assert (=> b!1449619 m!1672753))

(declare-fun m!1672755 () Bool)

(assert (=> b!1449621 m!1672755))

(assert (=> b!1449280 d!420979))

(declare-fun d!420981 () Bool)

(declare-fun c!238717 () Bool)

(assert (=> d!420981 (= c!238717 ((_ is Node!5137) (right!13157 (c!238664 (tokens!2048 thiss!10022)))))))

(declare-fun e!924906 () Bool)

(assert (=> d!420981 (= (inv!20111 (right!13157 (c!238664 (tokens!2048 thiss!10022)))) e!924906)))

(declare-fun b!1449622 () Bool)

(assert (=> b!1449622 (= e!924906 (inv!20117 (right!13157 (c!238664 (tokens!2048 thiss!10022)))))))

(declare-fun b!1449623 () Bool)

(declare-fun e!924907 () Bool)

(assert (=> b!1449623 (= e!924906 e!924907)))

(declare-fun res!656368 () Bool)

(assert (=> b!1449623 (= res!656368 (not ((_ is Leaf!7666) (right!13157 (c!238664 (tokens!2048 thiss!10022))))))))

(assert (=> b!1449623 (=> res!656368 e!924907)))

(declare-fun b!1449624 () Bool)

(assert (=> b!1449624 (= e!924907 (inv!20118 (right!13157 (c!238664 (tokens!2048 thiss!10022)))))))

(assert (= (and d!420981 c!238717) b!1449622))

(assert (= (and d!420981 (not c!238717)) b!1449623))

(assert (= (and b!1449623 (not res!656368)) b!1449624))

(declare-fun m!1672757 () Bool)

(assert (=> b!1449622 m!1672757))

(declare-fun m!1672759 () Bool)

(assert (=> b!1449624 m!1672759))

(assert (=> b!1449280 d!420981))

(declare-fun b!1449625 () Bool)

(declare-fun e!924908 () List!15146)

(assert (=> b!1449625 (= e!924908 Nil!15080)))

(declare-fun b!1449627 () Bool)

(declare-fun e!924909 () List!15146)

(assert (=> b!1449627 (= e!924909 (list!6025 (xs!7878 (c!238664 (tokens!2048 other!32)))))))

(declare-fun b!1449626 () Bool)

(assert (=> b!1449626 (= e!924908 e!924909)))

(declare-fun c!238719 () Bool)

(assert (=> b!1449626 (= c!238719 ((_ is Leaf!7666) (c!238664 (tokens!2048 other!32))))))

(declare-fun d!420983 () Bool)

(declare-fun c!238718 () Bool)

(assert (=> d!420983 (= c!238718 ((_ is Empty!5137) (c!238664 (tokens!2048 other!32))))))

(assert (=> d!420983 (= (list!6022 (c!238664 (tokens!2048 other!32))) e!924908)))

(declare-fun b!1449628 () Bool)

(assert (=> b!1449628 (= e!924909 (++!4050 (list!6022 (left!12827 (c!238664 (tokens!2048 other!32)))) (list!6022 (right!13157 (c!238664 (tokens!2048 other!32))))))))

(assert (= (and d!420983 c!238718) b!1449625))

(assert (= (and d!420983 (not c!238718)) b!1449626))

(assert (= (and b!1449626 c!238719) b!1449627))

(assert (= (and b!1449626 (not c!238719)) b!1449628))

(assert (=> b!1449627 m!1672529))

(declare-fun m!1672761 () Bool)

(assert (=> b!1449628 m!1672761))

(declare-fun m!1672763 () Bool)

(assert (=> b!1449628 m!1672763))

(assert (=> b!1449628 m!1672761))

(assert (=> b!1449628 m!1672763))

(declare-fun m!1672765 () Bool)

(assert (=> b!1449628 m!1672765))

(assert (=> d!420799 d!420983))

(declare-fun d!420985 () Bool)

(declare-fun lt!499740 () Token!4972)

(assert (=> d!420985 (contains!2883 (list!6020 (tokens!2048 thiss!10022)) lt!499740)))

(declare-fun e!924912 () Token!4972)

(assert (=> d!420985 (= lt!499740 e!924912)))

(declare-fun c!238722 () Bool)

(assert (=> d!420985 (= c!238722 (and ((_ is Cons!15080) (list!6020 (tokens!2048 thiss!10022))) ((_ is Nil!15080) (t!130483 (list!6020 (tokens!2048 thiss!10022))))))))

(assert (=> d!420985 (not (isEmpty!9422 (list!6020 (tokens!2048 thiss!10022))))))

(assert (=> d!420985 (= (last!224 (list!6020 (tokens!2048 thiss!10022))) lt!499740)))

(declare-fun b!1449633 () Bool)

(assert (=> b!1449633 (= e!924912 (h!20481 (list!6020 (tokens!2048 thiss!10022))))))

(declare-fun b!1449634 () Bool)

(assert (=> b!1449634 (= e!924912 (last!224 (t!130483 (list!6020 (tokens!2048 thiss!10022)))))))

(assert (= (and d!420985 c!238722) b!1449633))

(assert (= (and d!420985 (not c!238722)) b!1449634))

(assert (=> d!420985 m!1672165))

(declare-fun m!1672767 () Bool)

(assert (=> d!420985 m!1672767))

(assert (=> d!420985 m!1672165))

(assert (=> d!420985 m!1672229))

(declare-fun m!1672769 () Bool)

(assert (=> b!1449634 m!1672769))

(assert (=> d!420803 d!420985))

(assert (=> d!420803 d!420805))

(declare-fun b!1449645 () Bool)

(declare-fun e!924924 () Bool)

(declare-fun lt!499753 () List!15146)

(declare-fun lt!499751 () List!15146)

(assert (=> b!1449645 (= e!924924 (= (last!224 (++!4050 lt!499753 lt!499751)) (last!224 lt!499753)))))

(declare-fun b!1449646 () Bool)

(declare-fun e!924921 () Bool)

(assert (=> b!1449646 (= e!924921 (= (last!224 (++!4050 lt!499753 lt!499751)) (last!224 lt!499751)))))

(declare-fun b!1449647 () Bool)

(declare-fun e!924923 () Token!4972)

(declare-fun last!227 (IArray!10279) Token!4972)

(assert (=> b!1449647 (= e!924923 (last!227 (xs!7878 (c!238664 (tokens!2048 thiss!10022)))))))

(declare-fun b!1449648 () Bool)

(assert (=> b!1449648 (= e!924923 (last!225 (right!13157 (c!238664 (tokens!2048 thiss!10022)))))))

(assert (=> b!1449648 (= lt!499753 (list!6022 (left!12827 (c!238664 (tokens!2048 thiss!10022)))))))

(assert (=> b!1449648 (= lt!499751 (list!6022 (right!13157 (c!238664 (tokens!2048 thiss!10022)))))))

(declare-fun lt!499752 () Unit!23989)

(declare-fun lemmaLastOfConcatIsLastOfRhs!12 (List!15146 List!15146) Unit!23989)

(assert (=> b!1449648 (= lt!499752 (lemmaLastOfConcatIsLastOfRhs!12 lt!499753 lt!499751))))

(declare-fun res!656377 () Bool)

(assert (=> b!1449648 (= res!656377 (isEmpty!9422 lt!499751))))

(assert (=> b!1449648 (=> (not res!656377) (not e!924924))))

(declare-fun res!656375 () Bool)

(assert (=> b!1449648 (= res!656375 e!924924)))

(declare-fun e!924922 () Bool)

(assert (=> b!1449648 (=> res!656375 e!924922)))

(assert (=> b!1449648 e!924922))

(declare-fun lt!499755 () Unit!23989)

(assert (=> b!1449648 (= lt!499755 lt!499752)))

(declare-fun d!420987 () Bool)

(declare-fun lt!499754 () Token!4972)

(assert (=> d!420987 (= lt!499754 (last!224 (list!6022 (c!238664 (tokens!2048 thiss!10022)))))))

(assert (=> d!420987 (= lt!499754 e!924923)))

(declare-fun c!238725 () Bool)

(assert (=> d!420987 (= c!238725 ((_ is Leaf!7666) (c!238664 (tokens!2048 thiss!10022))))))

(assert (=> d!420987 (isBalanced!1532 (c!238664 (tokens!2048 thiss!10022)))))

(assert (=> d!420987 (= (last!225 (c!238664 (tokens!2048 thiss!10022))) lt!499754)))

(declare-fun b!1449649 () Bool)

(declare-fun res!656376 () Bool)

(assert (=> b!1449649 (= res!656376 (not (isEmpty!9422 lt!499751)))))

(assert (=> b!1449649 (=> (not res!656376) (not e!924921))))

(assert (=> b!1449649 (= e!924922 e!924921)))

(assert (= (and d!420987 c!238725) b!1449647))

(assert (= (and d!420987 (not c!238725)) b!1449648))

(assert (= (and b!1449648 res!656377) b!1449645))

(assert (= (and b!1449648 (not res!656375)) b!1449649))

(assert (= (and b!1449649 res!656376) b!1449646))

(assert (=> b!1449648 m!1672493))

(declare-fun m!1672771 () Bool)

(assert (=> b!1449648 m!1672771))

(assert (=> b!1449648 m!1672491))

(declare-fun m!1672773 () Bool)

(assert (=> b!1449648 m!1672773))

(declare-fun m!1672775 () Bool)

(assert (=> b!1449648 m!1672775))

(declare-fun m!1672777 () Bool)

(assert (=> b!1449645 m!1672777))

(assert (=> b!1449645 m!1672777))

(declare-fun m!1672779 () Bool)

(assert (=> b!1449645 m!1672779))

(declare-fun m!1672781 () Bool)

(assert (=> b!1449645 m!1672781))

(declare-fun m!1672783 () Bool)

(assert (=> b!1449647 m!1672783))

(assert (=> b!1449646 m!1672777))

(assert (=> b!1449646 m!1672777))

(assert (=> b!1449646 m!1672779))

(declare-fun m!1672785 () Bool)

(assert (=> b!1449646 m!1672785))

(assert (=> d!420987 m!1672265))

(assert (=> d!420987 m!1672265))

(declare-fun m!1672787 () Bool)

(assert (=> d!420987 m!1672787))

(assert (=> d!420987 m!1672339))

(assert (=> b!1449649 m!1672775))

(assert (=> d!420803 d!420987))

(assert (=> d!420803 d!420789))

(declare-fun d!420989 () Bool)

(assert (=> d!420989 true))

(declare-fun lt!499758 () Bool)

(declare-fun rulesValidInductive!824 (LexerInterface!2311 List!15147) Bool)

(assert (=> d!420989 (= lt!499758 (rulesValidInductive!824 Lexer!2309 (rules!11552 thiss!10022)))))

(declare-fun lambda!63025 () Int)

(declare-fun forall!3708 (List!15147 Int) Bool)

(assert (=> d!420989 (= lt!499758 (forall!3708 (rules!11552 thiss!10022) lambda!63025))))

(assert (=> d!420989 (= (rulesValid!976 Lexer!2309 (rules!11552 thiss!10022)) lt!499758)))

(declare-fun bs!342488 () Bool)

(assert (= bs!342488 d!420989))

(declare-fun m!1672789 () Bool)

(assert (=> bs!342488 m!1672789))

(declare-fun m!1672791 () Bool)

(assert (=> bs!342488 m!1672791))

(assert (=> d!420787 d!420989))

(declare-fun d!420991 () Bool)

(declare-fun lt!499759 () Bool)

(assert (=> d!420991 (= lt!499759 (isEmpty!9427 (list!6026 (_2!7980 lt!499644))))))

(assert (=> d!420991 (= lt!499759 (isEmpty!9428 (c!238662 (_2!7980 lt!499644))))))

(assert (=> d!420991 (= (isEmpty!9424 (_2!7980 lt!499644)) lt!499759)))

(declare-fun bs!342489 () Bool)

(assert (= bs!342489 d!420991))

(declare-fun m!1672793 () Bool)

(assert (=> bs!342489 m!1672793))

(assert (=> bs!342489 m!1672793))

(declare-fun m!1672795 () Bool)

(assert (=> bs!342489 m!1672795))

(declare-fun m!1672797 () Bool)

(assert (=> bs!342489 m!1672797))

(assert (=> b!1449186 d!420991))

(declare-fun d!420993 () Bool)

(assert (=> d!420993 (= (isEmpty!9418 (rules!11552 other!32)) ((_ is Nil!15081) (rules!11552 other!32)))))

(assert (=> d!420827 d!420993))

(declare-fun d!420995 () Bool)

(assert (=> d!420995 (= (isEmpty!9422 (list!6020 (tokens!2048 thiss!10022))) ((_ is Nil!15080) (list!6020 (tokens!2048 thiss!10022))))))

(assert (=> d!420789 d!420995))

(assert (=> d!420789 d!420805))

(declare-fun d!420997 () Bool)

(declare-fun lt!499760 () Bool)

(assert (=> d!420997 (= lt!499760 (isEmpty!9422 (list!6022 (c!238664 (tokens!2048 thiss!10022)))))))

(assert (=> d!420997 (= lt!499760 (= (size!12340 (c!238664 (tokens!2048 thiss!10022))) 0))))

(assert (=> d!420997 (= (isEmpty!9423 (c!238664 (tokens!2048 thiss!10022))) lt!499760)))

(declare-fun bs!342490 () Bool)

(assert (= bs!342490 d!420997))

(assert (=> bs!342490 m!1672265))

(assert (=> bs!342490 m!1672265))

(declare-fun m!1672799 () Bool)

(assert (=> bs!342490 m!1672799))

(declare-fun m!1672801 () Bool)

(assert (=> bs!342490 m!1672801))

(assert (=> d!420789 d!420997))

(declare-fun d!420999 () Bool)

(declare-fun lt!499763 () Token!4972)

(declare-fun apply!3891 (List!15146 Int) Token!4972)

(assert (=> d!420999 (= lt!499763 (apply!3891 (list!6020 (_1!7980 lt!499644)) 0))))

(declare-fun apply!3892 (Conc!5137 Int) Token!4972)

(assert (=> d!420999 (= lt!499763 (apply!3892 (c!238664 (_1!7980 lt!499644)) 0))))

(declare-fun e!924927 () Bool)

(assert (=> d!420999 e!924927))

(declare-fun res!656380 () Bool)

(assert (=> d!420999 (=> (not res!656380) (not e!924927))))

(assert (=> d!420999 (= res!656380 (<= 0 0))))

(assert (=> d!420999 (= (apply!3887 (_1!7980 lt!499644) 0) lt!499763)))

(declare-fun b!1449654 () Bool)

(assert (=> b!1449654 (= e!924927 (< 0 (size!12336 (_1!7980 lt!499644))))))

(assert (= (and d!420999 res!656380) b!1449654))

(declare-fun m!1672803 () Bool)

(assert (=> d!420999 m!1672803))

(assert (=> d!420999 m!1672803))

(declare-fun m!1672805 () Bool)

(assert (=> d!420999 m!1672805))

(declare-fun m!1672807 () Bool)

(assert (=> d!420999 m!1672807))

(assert (=> b!1449654 m!1672243))

(assert (=> b!1449185 d!420999))

(declare-fun d!421001 () Bool)

(assert (=> d!421001 (= (inv!20106 (tag!2919 (h!20482 (rules!11552 other!32)))) (= (mod (str.len (value!85314 (tag!2919 (h!20482 (rules!11552 other!32))))) 2) 0))))

(assert (=> b!1449270 d!421001))

(declare-fun d!421003 () Bool)

(declare-fun res!656381 () Bool)

(declare-fun e!924928 () Bool)

(assert (=> d!421003 (=> (not res!656381) (not e!924928))))

(assert (=> d!421003 (= res!656381 (semiInverseModEq!1000 (toChars!3821 (transformation!2655 (h!20482 (rules!11552 other!32)))) (toValue!3962 (transformation!2655 (h!20482 (rules!11552 other!32))))))))

(assert (=> d!421003 (= (inv!20119 (transformation!2655 (h!20482 (rules!11552 other!32)))) e!924928)))

(declare-fun b!1449655 () Bool)

(assert (=> b!1449655 (= e!924928 (equivClasses!959 (toChars!3821 (transformation!2655 (h!20482 (rules!11552 other!32)))) (toValue!3962 (transformation!2655 (h!20482 (rules!11552 other!32))))))))

(assert (= (and d!421003 res!656381) b!1449655))

(declare-fun m!1672809 () Bool)

(assert (=> d!421003 m!1672809))

(declare-fun m!1672811 () Bool)

(assert (=> b!1449655 m!1672811))

(assert (=> b!1449270 d!421003))

(declare-fun d!421005 () Bool)

(assert (=> d!421005 (= (head!2956 (list!6020 (tokens!2048 other!32))) (h!20481 (list!6020 (tokens!2048 other!32))))))

(assert (=> d!420801 d!421005))

(assert (=> d!420801 d!420799))

(declare-fun d!421007 () Bool)

(declare-fun lt!499766 () Token!4972)

(assert (=> d!421007 (= lt!499766 (head!2956 (list!6022 (c!238664 (tokens!2048 other!32)))))))

(declare-fun e!924931 () Token!4972)

(assert (=> d!421007 (= lt!499766 e!924931)))

(declare-fun c!238728 () Bool)

(assert (=> d!421007 (= c!238728 ((_ is Leaf!7666) (c!238664 (tokens!2048 other!32))))))

(assert (=> d!421007 (isBalanced!1532 (c!238664 (tokens!2048 other!32)))))

(assert (=> d!421007 (= (head!2957 (c!238664 (tokens!2048 other!32))) lt!499766)))

(declare-fun b!1449660 () Bool)

(declare-fun apply!3893 (IArray!10279 Int) Token!4972)

(assert (=> b!1449660 (= e!924931 (apply!3893 (xs!7878 (c!238664 (tokens!2048 other!32))) 0))))

(declare-fun b!1449661 () Bool)

(assert (=> b!1449661 (= e!924931 (head!2957 (left!12827 (c!238664 (tokens!2048 other!32)))))))

(assert (= (and d!421007 c!238728) b!1449660))

(assert (= (and d!421007 (not c!238728)) b!1449661))

(assert (=> d!421007 m!1672255))

(assert (=> d!421007 m!1672255))

(declare-fun m!1672813 () Bool)

(assert (=> d!421007 m!1672813))

(assert (=> d!421007 m!1672321))

(declare-fun m!1672815 () Bool)

(assert (=> b!1449660 m!1672815))

(declare-fun m!1672817 () Bool)

(assert (=> b!1449661 m!1672817))

(assert (=> d!420801 d!421007))

(assert (=> d!420801 d!420761))

(declare-fun d!421009 () Bool)

(assert (=> d!421009 (= (list!6020 (singletonSeq!1250 lt!499618)) (list!6022 (c!238664 (singletonSeq!1250 lt!499618))))))

(declare-fun bs!342491 () Bool)

(assert (= bs!342491 d!421009))

(declare-fun m!1672819 () Bool)

(assert (=> bs!342491 m!1672819))

(assert (=> d!420791 d!421009))

(assert (=> d!420791 d!420919))

(assert (=> d!420791 d!420807))

(declare-fun d!421011 () Bool)

(declare-fun lt!499769 () Int)

(assert (=> d!421011 (= lt!499769 (size!12341 (list!6020 (_1!7980 lt!499644))))))

(assert (=> d!421011 (= lt!499769 (size!12340 (c!238664 (_1!7980 lt!499644))))))

(assert (=> d!421011 (= (size!12336 (_1!7980 lt!499644)) lt!499769)))

(declare-fun bs!342492 () Bool)

(assert (= bs!342492 d!421011))

(assert (=> bs!342492 m!1672803))

(assert (=> bs!342492 m!1672803))

(declare-fun m!1672821 () Bool)

(assert (=> bs!342492 m!1672821))

(declare-fun m!1672823 () Bool)

(assert (=> bs!342492 m!1672823))

(assert (=> d!420791 d!421011))

(assert (=> d!420791 d!420963))

(assert (=> d!420791 d!420961))

(declare-fun d!421013 () Bool)

(assert (=> d!421013 (= (list!6020 (_1!7980 (lex!1059 Lexer!2309 (rules!11552 thiss!10022) (print!1086 Lexer!2309 (singletonSeq!1250 lt!499618))))) (list!6022 (c!238664 (_1!7980 (lex!1059 Lexer!2309 (rules!11552 thiss!10022) (print!1086 Lexer!2309 (singletonSeq!1250 lt!499618)))))))))

(declare-fun bs!342493 () Bool)

(assert (= bs!342493 d!421013))

(declare-fun m!1672825 () Bool)

(assert (=> bs!342493 m!1672825))

(assert (=> d!420791 d!421013))

(declare-fun d!421015 () Bool)

(declare-fun res!656382 () Bool)

(declare-fun e!924932 () Bool)

(assert (=> d!421015 (=> (not res!656382) (not e!924932))))

(assert (=> d!421015 (= res!656382 (= (csize!10504 (c!238664 (tokens!2048 thiss!10022))) (+ (size!12340 (left!12827 (c!238664 (tokens!2048 thiss!10022)))) (size!12340 (right!13157 (c!238664 (tokens!2048 thiss!10022)))))))))

(assert (=> d!421015 (= (inv!20117 (c!238664 (tokens!2048 thiss!10022))) e!924932)))

(declare-fun b!1449662 () Bool)

(declare-fun res!656383 () Bool)

(assert (=> b!1449662 (=> (not res!656383) (not e!924932))))

(assert (=> b!1449662 (= res!656383 (and (not (= (left!12827 (c!238664 (tokens!2048 thiss!10022))) Empty!5137)) (not (= (right!13157 (c!238664 (tokens!2048 thiss!10022))) Empty!5137))))))

(declare-fun b!1449663 () Bool)

(declare-fun res!656384 () Bool)

(assert (=> b!1449663 (=> (not res!656384) (not e!924932))))

(assert (=> b!1449663 (= res!656384 (= (cheight!5348 (c!238664 (tokens!2048 thiss!10022))) (+ (max!0 (height!762 (left!12827 (c!238664 (tokens!2048 thiss!10022)))) (height!762 (right!13157 (c!238664 (tokens!2048 thiss!10022))))) 1)))))

(declare-fun b!1449664 () Bool)

(assert (=> b!1449664 (= e!924932 (<= 0 (cheight!5348 (c!238664 (tokens!2048 thiss!10022)))))))

(assert (= (and d!421015 res!656382) b!1449662))

(assert (= (and b!1449662 res!656383) b!1449663))

(assert (= (and b!1449663 res!656384) b!1449664))

(declare-fun m!1672827 () Bool)

(assert (=> d!421015 m!1672827))

(declare-fun m!1672829 () Bool)

(assert (=> d!421015 m!1672829))

(assert (=> b!1449663 m!1672741))

(assert (=> b!1449663 m!1672743))

(assert (=> b!1449663 m!1672741))

(assert (=> b!1449663 m!1672743))

(declare-fun m!1672831 () Bool)

(assert (=> b!1449663 m!1672831))

(assert (=> b!1449243 d!421015))

(assert (=> b!1449257 d!420869))

(assert (=> b!1449256 d!420853))

(declare-fun tp!408952 () Bool)

(declare-fun tp!408953 () Bool)

(declare-fun e!924934 () Bool)

(declare-fun b!1449665 () Bool)

(assert (=> b!1449665 (= e!924934 (and (inv!20111 (left!12827 (left!12827 (c!238664 (tokens!2048 thiss!10022))))) tp!408952 (inv!20111 (right!13157 (left!12827 (c!238664 (tokens!2048 thiss!10022))))) tp!408953))))

(declare-fun b!1449667 () Bool)

(declare-fun e!924933 () Bool)

(declare-fun tp!408951 () Bool)

(assert (=> b!1449667 (= e!924933 tp!408951)))

(declare-fun b!1449666 () Bool)

(assert (=> b!1449666 (= e!924934 (and (inv!20120 (xs!7878 (left!12827 (c!238664 (tokens!2048 thiss!10022))))) e!924933))))

(assert (=> b!1449280 (= tp!408882 (and (inv!20111 (left!12827 (c!238664 (tokens!2048 thiss!10022)))) e!924934))))

(assert (= (and b!1449280 ((_ is Node!5137) (left!12827 (c!238664 (tokens!2048 thiss!10022))))) b!1449665))

(assert (= b!1449666 b!1449667))

(assert (= (and b!1449280 ((_ is Leaf!7666) (left!12827 (c!238664 (tokens!2048 thiss!10022))))) b!1449666))

(declare-fun m!1672833 () Bool)

(assert (=> b!1449665 m!1672833))

(declare-fun m!1672835 () Bool)

(assert (=> b!1449665 m!1672835))

(declare-fun m!1672837 () Bool)

(assert (=> b!1449666 m!1672837))

(assert (=> b!1449280 m!1672345))

(declare-fun b!1449668 () Bool)

(declare-fun tp!408955 () Bool)

(declare-fun e!924936 () Bool)

(declare-fun tp!408956 () Bool)

(assert (=> b!1449668 (= e!924936 (and (inv!20111 (left!12827 (right!13157 (c!238664 (tokens!2048 thiss!10022))))) tp!408955 (inv!20111 (right!13157 (right!13157 (c!238664 (tokens!2048 thiss!10022))))) tp!408956))))

(declare-fun b!1449670 () Bool)

(declare-fun e!924935 () Bool)

(declare-fun tp!408954 () Bool)

(assert (=> b!1449670 (= e!924935 tp!408954)))

(declare-fun b!1449669 () Bool)

(assert (=> b!1449669 (= e!924936 (and (inv!20120 (xs!7878 (right!13157 (c!238664 (tokens!2048 thiss!10022))))) e!924935))))

(assert (=> b!1449280 (= tp!408883 (and (inv!20111 (right!13157 (c!238664 (tokens!2048 thiss!10022)))) e!924936))))

(assert (= (and b!1449280 ((_ is Node!5137) (right!13157 (c!238664 (tokens!2048 thiss!10022))))) b!1449668))

(assert (= b!1449669 b!1449670))

(assert (= (and b!1449280 ((_ is Leaf!7666) (right!13157 (c!238664 (tokens!2048 thiss!10022))))) b!1449669))

(declare-fun m!1672839 () Bool)

(assert (=> b!1449668 m!1672839))

(declare-fun m!1672841 () Bool)

(assert (=> b!1449668 m!1672841))

(declare-fun m!1672843 () Bool)

(assert (=> b!1449669 m!1672843))

(assert (=> b!1449280 m!1672347))

(declare-fun e!924939 () Bool)

(assert (=> b!1449287 (= tp!408888 e!924939)))

(declare-fun b!1449682 () Bool)

(declare-fun tp!408970 () Bool)

(declare-fun tp!408967 () Bool)

(assert (=> b!1449682 (= e!924939 (and tp!408970 tp!408967))))

(declare-fun b!1449681 () Bool)

(declare-fun tp_is_empty!6867 () Bool)

(assert (=> b!1449681 (= e!924939 tp_is_empty!6867)))

(declare-fun b!1449684 () Bool)

(declare-fun tp!408971 () Bool)

(declare-fun tp!408968 () Bool)

(assert (=> b!1449684 (= e!924939 (and tp!408971 tp!408968))))

(declare-fun b!1449683 () Bool)

(declare-fun tp!408969 () Bool)

(assert (=> b!1449683 (= e!924939 tp!408969)))

(assert (= (and b!1449287 ((_ is ElementMatch!3969) (regex!2655 (h!20482 (rules!11552 thiss!10022))))) b!1449681))

(assert (= (and b!1449287 ((_ is Concat!6715) (regex!2655 (h!20482 (rules!11552 thiss!10022))))) b!1449682))

(assert (= (and b!1449287 ((_ is Star!3969) (regex!2655 (h!20482 (rules!11552 thiss!10022))))) b!1449683))

(assert (= (and b!1449287 ((_ is Union!3969) (regex!2655 (h!20482 (rules!11552 thiss!10022))))) b!1449684))

(declare-fun b!1449698 () Bool)

(declare-fun b_free!36031 () Bool)

(declare-fun b_next!36735 () Bool)

(assert (=> b!1449698 (= b_free!36031 (not b_next!36735))))

(declare-fun tp!408983 () Bool)

(declare-fun b_and!98095 () Bool)

(assert (=> b!1449698 (= tp!408983 b_and!98095)))

(declare-fun b_free!36033 () Bool)

(declare-fun b_next!36737 () Bool)

(assert (=> b!1449698 (= b_free!36033 (not b_next!36737))))

(declare-fun tp!408986 () Bool)

(declare-fun b_and!98097 () Bool)

(assert (=> b!1449698 (= tp!408986 b_and!98097)))

(declare-fun e!924955 () Bool)

(assert (=> b!1449285 (= tp!408884 e!924955)))

(declare-fun b!1449695 () Bool)

(declare-fun e!924952 () Bool)

(declare-fun tp!408982 () Bool)

(declare-fun inv!20122 (Token!4972) Bool)

(assert (=> b!1449695 (= e!924955 (and (inv!20122 (h!20481 (innerList!5197 (xs!7878 (c!238664 (tokens!2048 other!32)))))) e!924952 tp!408982))))

(declare-fun e!924957 () Bool)

(declare-fun tp!408985 () Bool)

(declare-fun b!1449696 () Bool)

(declare-fun inv!21 (TokenValue!2745) Bool)

(assert (=> b!1449696 (= e!924952 (and (inv!21 (value!85315 (h!20481 (innerList!5197 (xs!7878 (c!238664 (tokens!2048 other!32))))))) e!924957 tp!408985))))

(declare-fun b!1449697 () Bool)

(declare-fun e!924953 () Bool)

(declare-fun tp!408984 () Bool)

(assert (=> b!1449697 (= e!924957 (and tp!408984 (inv!20106 (tag!2919 (rule!4428 (h!20481 (innerList!5197 (xs!7878 (c!238664 (tokens!2048 other!32)))))))) (inv!20119 (transformation!2655 (rule!4428 (h!20481 (innerList!5197 (xs!7878 (c!238664 (tokens!2048 other!32)))))))) e!924953))))

(assert (=> b!1449698 (= e!924953 (and tp!408983 tp!408986))))

(assert (= b!1449697 b!1449698))

(assert (= b!1449696 b!1449697))

(assert (= b!1449695 b!1449696))

(assert (= (and b!1449285 ((_ is Cons!15080) (innerList!5197 (xs!7878 (c!238664 (tokens!2048 other!32)))))) b!1449695))

(declare-fun m!1672845 () Bool)

(assert (=> b!1449695 m!1672845))

(declare-fun m!1672847 () Bool)

(assert (=> b!1449696 m!1672847))

(declare-fun m!1672849 () Bool)

(assert (=> b!1449697 m!1672849))

(declare-fun m!1672851 () Bool)

(assert (=> b!1449697 m!1672851))

(declare-fun e!924959 () Bool)

(declare-fun tp!408988 () Bool)

(declare-fun b!1449699 () Bool)

(declare-fun tp!408989 () Bool)

(assert (=> b!1449699 (= e!924959 (and (inv!20111 (left!12827 (left!12827 (c!238664 (tokens!2048 other!32))))) tp!408988 (inv!20111 (right!13157 (left!12827 (c!238664 (tokens!2048 other!32))))) tp!408989))))

(declare-fun b!1449701 () Bool)

(declare-fun e!924958 () Bool)

(declare-fun tp!408987 () Bool)

(assert (=> b!1449701 (= e!924958 tp!408987)))

(declare-fun b!1449700 () Bool)

(assert (=> b!1449700 (= e!924959 (and (inv!20120 (xs!7878 (left!12827 (c!238664 (tokens!2048 other!32))))) e!924958))))

(assert (=> b!1449283 (= tp!408885 (and (inv!20111 (left!12827 (c!238664 (tokens!2048 other!32)))) e!924959))))

(assert (= (and b!1449283 ((_ is Node!5137) (left!12827 (c!238664 (tokens!2048 other!32))))) b!1449699))

(assert (= b!1449700 b!1449701))

(assert (= (and b!1449283 ((_ is Leaf!7666) (left!12827 (c!238664 (tokens!2048 other!32))))) b!1449700))

(declare-fun m!1672853 () Bool)

(assert (=> b!1449699 m!1672853))

(declare-fun m!1672855 () Bool)

(assert (=> b!1449699 m!1672855))

(declare-fun m!1672857 () Bool)

(assert (=> b!1449700 m!1672857))

(assert (=> b!1449283 m!1672351))

(declare-fun b!1449702 () Bool)

(declare-fun tp!408991 () Bool)

(declare-fun e!924961 () Bool)

(declare-fun tp!408992 () Bool)

(assert (=> b!1449702 (= e!924961 (and (inv!20111 (left!12827 (right!13157 (c!238664 (tokens!2048 other!32))))) tp!408991 (inv!20111 (right!13157 (right!13157 (c!238664 (tokens!2048 other!32))))) tp!408992))))

(declare-fun b!1449704 () Bool)

(declare-fun e!924960 () Bool)

(declare-fun tp!408990 () Bool)

(assert (=> b!1449704 (= e!924960 tp!408990)))

(declare-fun b!1449703 () Bool)

(assert (=> b!1449703 (= e!924961 (and (inv!20120 (xs!7878 (right!13157 (c!238664 (tokens!2048 other!32))))) e!924960))))

(assert (=> b!1449283 (= tp!408886 (and (inv!20111 (right!13157 (c!238664 (tokens!2048 other!32)))) e!924961))))

(assert (= (and b!1449283 ((_ is Node!5137) (right!13157 (c!238664 (tokens!2048 other!32))))) b!1449702))

(assert (= b!1449703 b!1449704))

(assert (= (and b!1449283 ((_ is Leaf!7666) (right!13157 (c!238664 (tokens!2048 other!32))))) b!1449703))

(declare-fun m!1672859 () Bool)

(assert (=> b!1449702 m!1672859))

(declare-fun m!1672861 () Bool)

(assert (=> b!1449702 m!1672861))

(declare-fun m!1672863 () Bool)

(assert (=> b!1449703 m!1672863))

(assert (=> b!1449283 m!1672353))

(declare-fun b!1449707 () Bool)

(declare-fun b_free!36035 () Bool)

(declare-fun b_next!36739 () Bool)

(assert (=> b!1449707 (= b_free!36035 (not b_next!36739))))

(declare-fun tp!408995 () Bool)

(declare-fun b_and!98099 () Bool)

(assert (=> b!1449707 (= tp!408995 b_and!98099)))

(declare-fun b_free!36037 () Bool)

(declare-fun b_next!36741 () Bool)

(assert (=> b!1449707 (= b_free!36037 (not b_next!36741))))

(declare-fun tp!408996 () Bool)

(declare-fun b_and!98101 () Bool)

(assert (=> b!1449707 (= tp!408996 b_and!98101)))

(declare-fun e!924963 () Bool)

(assert (=> b!1449707 (= e!924963 (and tp!408995 tp!408996))))

(declare-fun tp!408994 () Bool)

(declare-fun e!924962 () Bool)

(declare-fun b!1449706 () Bool)

(assert (=> b!1449706 (= e!924962 (and tp!408994 (inv!20106 (tag!2919 (h!20482 (t!130484 (rules!11552 thiss!10022))))) (inv!20119 (transformation!2655 (h!20482 (t!130484 (rules!11552 thiss!10022))))) e!924963))))

(declare-fun b!1449705 () Bool)

(declare-fun e!924965 () Bool)

(declare-fun tp!408993 () Bool)

(assert (=> b!1449705 (= e!924965 (and e!924962 tp!408993))))

(assert (=> b!1449286 (= tp!408887 e!924965)))

(assert (= b!1449706 b!1449707))

(assert (= b!1449705 b!1449706))

(assert (= (and b!1449286 ((_ is Cons!15081) (t!130484 (rules!11552 thiss!10022)))) b!1449705))

(declare-fun m!1672865 () Bool)

(assert (=> b!1449706 m!1672865))

(declare-fun m!1672867 () Bool)

(assert (=> b!1449706 m!1672867))

(declare-fun b!1449711 () Bool)

(declare-fun b_free!36039 () Bool)

(declare-fun b_next!36743 () Bool)

(assert (=> b!1449711 (= b_free!36039 (not b_next!36743))))

(declare-fun tp!408998 () Bool)

(declare-fun b_and!98103 () Bool)

(assert (=> b!1449711 (= tp!408998 b_and!98103)))

(declare-fun b_free!36041 () Bool)

(declare-fun b_next!36745 () Bool)

(assert (=> b!1449711 (= b_free!36041 (not b_next!36745))))

(declare-fun tp!409001 () Bool)

(declare-fun b_and!98105 () Bool)

(assert (=> b!1449711 (= tp!409001 b_and!98105)))

(declare-fun e!924969 () Bool)

(assert (=> b!1449282 (= tp!408881 e!924969)))

(declare-fun b!1449708 () Bool)

(declare-fun e!924966 () Bool)

(declare-fun tp!408997 () Bool)

(assert (=> b!1449708 (= e!924969 (and (inv!20122 (h!20481 (innerList!5197 (xs!7878 (c!238664 (tokens!2048 thiss!10022)))))) e!924966 tp!408997))))

(declare-fun b!1449709 () Bool)

(declare-fun tp!409000 () Bool)

(declare-fun e!924971 () Bool)

(assert (=> b!1449709 (= e!924966 (and (inv!21 (value!85315 (h!20481 (innerList!5197 (xs!7878 (c!238664 (tokens!2048 thiss!10022))))))) e!924971 tp!409000))))

(declare-fun b!1449710 () Bool)

(declare-fun e!924967 () Bool)

(declare-fun tp!408999 () Bool)

(assert (=> b!1449710 (= e!924971 (and tp!408999 (inv!20106 (tag!2919 (rule!4428 (h!20481 (innerList!5197 (xs!7878 (c!238664 (tokens!2048 thiss!10022)))))))) (inv!20119 (transformation!2655 (rule!4428 (h!20481 (innerList!5197 (xs!7878 (c!238664 (tokens!2048 thiss!10022)))))))) e!924967))))

(assert (=> b!1449711 (= e!924967 (and tp!408998 tp!409001))))

(assert (= b!1449710 b!1449711))

(assert (= b!1449709 b!1449710))

(assert (= b!1449708 b!1449709))

(assert (= (and b!1449282 ((_ is Cons!15080) (innerList!5197 (xs!7878 (c!238664 (tokens!2048 thiss!10022)))))) b!1449708))

(declare-fun m!1672869 () Bool)

(assert (=> b!1449708 m!1672869))

(declare-fun m!1672871 () Bool)

(assert (=> b!1449709 m!1672871))

(declare-fun m!1672873 () Bool)

(assert (=> b!1449710 m!1672873))

(declare-fun m!1672875 () Bool)

(assert (=> b!1449710 m!1672875))

(declare-fun b!1449714 () Bool)

(declare-fun b_free!36043 () Bool)

(declare-fun b_next!36747 () Bool)

(assert (=> b!1449714 (= b_free!36043 (not b_next!36747))))

(declare-fun tp!409004 () Bool)

(declare-fun b_and!98107 () Bool)

(assert (=> b!1449714 (= tp!409004 b_and!98107)))

(declare-fun b_free!36045 () Bool)

(declare-fun b_next!36749 () Bool)

(assert (=> b!1449714 (= b_free!36045 (not b_next!36749))))

(declare-fun tp!409005 () Bool)

(declare-fun b_and!98109 () Bool)

(assert (=> b!1449714 (= tp!409005 b_and!98109)))

(declare-fun e!924973 () Bool)

(assert (=> b!1449714 (= e!924973 (and tp!409004 tp!409005))))

(declare-fun e!924972 () Bool)

(declare-fun tp!409003 () Bool)

(declare-fun b!1449713 () Bool)

(assert (=> b!1449713 (= e!924972 (and tp!409003 (inv!20106 (tag!2919 (h!20482 (t!130484 (rules!11552 other!32))))) (inv!20119 (transformation!2655 (h!20482 (t!130484 (rules!11552 other!32))))) e!924973))))

(declare-fun b!1449712 () Bool)

(declare-fun e!924975 () Bool)

(declare-fun tp!409002 () Bool)

(assert (=> b!1449712 (= e!924975 (and e!924972 tp!409002))))

(assert (=> b!1449269 (= tp!408871 e!924975)))

(assert (= b!1449713 b!1449714))

(assert (= b!1449712 b!1449713))

(assert (= (and b!1449269 ((_ is Cons!15081) (t!130484 (rules!11552 other!32)))) b!1449712))

(declare-fun m!1672877 () Bool)

(assert (=> b!1449713 m!1672877))

(declare-fun m!1672879 () Bool)

(assert (=> b!1449713 m!1672879))

(declare-fun e!924976 () Bool)

(assert (=> b!1449270 (= tp!408872 e!924976)))

(declare-fun b!1449716 () Bool)

(declare-fun tp!409009 () Bool)

(declare-fun tp!409006 () Bool)

(assert (=> b!1449716 (= e!924976 (and tp!409009 tp!409006))))

(declare-fun b!1449715 () Bool)

(assert (=> b!1449715 (= e!924976 tp_is_empty!6867)))

(declare-fun b!1449718 () Bool)

(declare-fun tp!409010 () Bool)

(declare-fun tp!409007 () Bool)

(assert (=> b!1449718 (= e!924976 (and tp!409010 tp!409007))))

(declare-fun b!1449717 () Bool)

(declare-fun tp!409008 () Bool)

(assert (=> b!1449717 (= e!924976 tp!409008)))

(assert (= (and b!1449270 ((_ is ElementMatch!3969) (regex!2655 (h!20482 (rules!11552 other!32))))) b!1449715))

(assert (= (and b!1449270 ((_ is Concat!6715) (regex!2655 (h!20482 (rules!11552 other!32))))) b!1449716))

(assert (= (and b!1449270 ((_ is Star!3969) (regex!2655 (h!20482 (rules!11552 other!32))))) b!1449717))

(assert (= (and b!1449270 ((_ is Union!3969) (regex!2655 (h!20482 (rules!11552 other!32))))) b!1449718))

(check-sat (not d!420895) (not b!1449337) (not b!1449622) b_and!98073 b_and!98109 (not d!420853) (not d!421015) (not b!1449700) b_and!98099 (not b!1449705) (not b_next!36741) b_and!98075 (not b!1449660) (not b!1449704) (not d!420911) (not b_next!36739) (not d!420905) (not b!1449615) (not b!1449682) (not b_next!36717) (not b!1449616) (not b!1449370) (not b!1449410) (not b!1449624) (not b!1449654) (not b!1449628) (not d!420903) (not b!1449383) (not d!420989) (not b!1449442) (not d!420965) (not b!1449408) (not b!1449702) (not b!1449402) (not b!1449542) (not b!1449446) (not d!420891) (not d!420963) (not b!1449648) b_and!98097 (not b!1449716) (not b!1449386) (not b!1449645) (not b!1449708) (not d!421009) (not b!1449669) (not b!1449619) (not b!1449666) (not b_next!36747) (not b!1449695) (not d!420985) (not b_next!36715) (not b!1449713) (not d!421013) (not b_next!36743) (not d!420883) (not b!1449447) (not d!421011) (not d!420915) b_and!98095 b_and!98105 (not b_next!36737) (not b!1449444) (not d!420999) (not b_next!36749) (not b!1449618) (not b!1449706) (not b!1449614) (not b!1449407) (not d!420887) (not b!1449397) (not b!1449661) (not d!420907) (not b!1449649) (not d!420961) (not d!420909) (not b!1449539) (not b!1449667) (not b!1449404) (not b!1449280) (not b!1449445) b_and!98103 (not b!1449399) (not d!420991) (not b!1449670) (not b!1449655) (not d!421003) (not b!1449627) (not b!1449346) (not b!1449712) (not d!420919) (not b_next!36745) (not b!1449703) (not b!1449443) (not b!1449621) (not d!420897) (not b!1449283) (not b!1449634) (not d!420987) (not b!1449411) (not b!1449668) (not b!1449541) (not b!1449717) (not b!1449371) (not b!1449718) (not b!1449709) (not b_next!36711) (not d!420997) (not b!1449382) (not b!1449613) (not b!1449683) b_and!98101 (not b!1449421) (not b_next!36713) (not b!1449684) (not d!420869) (not b!1449647) (not b!1449617) (not b!1449696) (not b!1449710) (not b!1449701) (not d!421007) (not b_next!36735) (not b!1449401) (not b!1449405) (not b!1449545) (not b!1449697) b_and!98077 tp_is_empty!6867 (not b!1449646) b_and!98107 (not b!1449663) (not b!1449538) b_and!98071 (not d!420893) (not b!1449699) (not b!1449392) (not b!1449665))
(check-sat b_and!98075 b_and!98097 (not b_next!36747) (not b_next!36715) (not b_next!36743) b_and!98095 (not b_next!36749) b_and!98103 (not b_next!36745) (not b_next!36711) b_and!98101 (not b_next!36713) (not b_next!36735) b_and!98077 b_and!98073 b_and!98109 b_and!98099 (not b_next!36741) (not b_next!36739) (not b_next!36717) b_and!98105 (not b_next!36737) b_and!98107 b_and!98071)
