; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!346718 () Bool)

(assert start!346718)

(declare-fun b!3688024 () Bool)

(declare-fun b_free!97853 () Bool)

(declare-fun b_next!98557 () Bool)

(assert (=> b!3688024 (= b_free!97853 (not b_next!98557))))

(declare-fun tp!1120906 () Bool)

(declare-fun b_and!275579 () Bool)

(assert (=> b!3688024 (= tp!1120906 b_and!275579)))

(declare-fun b_free!97855 () Bool)

(declare-fun b_next!98559 () Bool)

(assert (=> b!3688024 (= b_free!97855 (not b_next!98559))))

(declare-fun tp!1120901 () Bool)

(declare-fun b_and!275581 () Bool)

(assert (=> b!3688024 (= tp!1120901 b_and!275581)))

(declare-fun b!3688019 () Bool)

(declare-fun e!2283799 () Bool)

(declare-fun tp_is_empty!18389 () Bool)

(declare-fun tp!1120903 () Bool)

(assert (=> b!3688019 (= e!2283799 (and tp_is_empty!18389 tp!1120903))))

(declare-fun b!3688020 () Bool)

(declare-fun e!2283798 () Bool)

(declare-datatypes ((List!39152 0))(
  ( (Nil!39028) (Cons!39028 (h!44448 (_ BitVec 16)) (t!301219 List!39152)) )
))
(declare-datatypes ((TokenValue!6124 0))(
  ( (FloatLiteralValue!12248 (text!43313 List!39152)) (TokenValueExt!6123 (__x!24465 Int)) (Broken!30620 (value!188413 List!39152)) (Object!6247) (End!6124) (Def!6124) (Underscore!6124) (Match!6124) (Else!6124) (Error!6124) (Case!6124) (If!6124) (Extends!6124) (Abstract!6124) (Class!6124) (Val!6124) (DelimiterValue!12248 (del!6184 List!39152)) (KeywordValue!6130 (value!188414 List!39152)) (CommentValue!12248 (value!188415 List!39152)) (WhitespaceValue!12248 (value!188416 List!39152)) (IndentationValue!6124 (value!188417 List!39152)) (String!43953) (Int32!6124) (Broken!30621 (value!188418 List!39152)) (Boolean!6125) (Unit!57085) (OperatorValue!6127 (op!6184 List!39152)) (IdentifierValue!12248 (value!188419 List!39152)) (IdentifierValue!12249 (value!188420 List!39152)) (WhitespaceValue!12249 (value!188421 List!39152)) (True!12248) (False!12248) (Broken!30622 (value!188422 List!39152)) (Broken!30623 (value!188423 List!39152)) (True!12249) (RightBrace!6124) (RightBracket!6124) (Colon!6124) (Null!6124) (Comma!6124) (LeftBracket!6124) (False!12249) (LeftBrace!6124) (ImaginaryLiteralValue!6124 (text!43314 List!39152)) (StringLiteralValue!18372 (value!188424 List!39152)) (EOFValue!6124 (value!188425 List!39152)) (IdentValue!6124 (value!188426 List!39152)) (DelimiterValue!12249 (value!188427 List!39152)) (DedentValue!6124 (value!188428 List!39152)) (NewLineValue!6124 (value!188429 List!39152)) (IntegerValue!18372 (value!188430 (_ BitVec 32)) (text!43315 List!39152)) (IntegerValue!18373 (value!188431 Int) (text!43316 List!39152)) (Times!6124) (Or!6124) (Equal!6124) (Minus!6124) (Broken!30624 (value!188432 List!39152)) (And!6124) (Div!6124) (LessEqual!6124) (Mod!6124) (Concat!16777) (Not!6124) (Plus!6124) (SpaceValue!6124 (value!188433 List!39152)) (IntegerValue!18374 (value!188434 Int) (text!43317 List!39152)) (StringLiteralValue!18373 (text!43318 List!39152)) (FloatLiteralValue!12249 (text!43319 List!39152)) (BytesLiteralValue!6124 (value!188435 List!39152)) (CommentValue!12249 (value!188436 List!39152)) (StringLiteralValue!18374 (value!188437 List!39152)) (ErrorTokenValue!6124 (msg!6185 List!39152)) )
))
(declare-datatypes ((C!21492 0))(
  ( (C!21493 (val!12794 Int)) )
))
(declare-datatypes ((Regex!10653 0))(
  ( (ElementMatch!10653 (c!637899 C!21492)) (Concat!16778 (regOne!21818 Regex!10653) (regTwo!21818 Regex!10653)) (EmptyExpr!10653) (Star!10653 (reg!10982 Regex!10653)) (EmptyLang!10653) (Union!10653 (regOne!21819 Regex!10653) (regTwo!21819 Regex!10653)) )
))
(declare-datatypes ((String!43954 0))(
  ( (String!43955 (value!188438 String)) )
))
(declare-datatypes ((List!39153 0))(
  ( (Nil!39029) (Cons!39029 (h!44449 C!21492) (t!301220 List!39153)) )
))
(declare-datatypes ((IArray!23961 0))(
  ( (IArray!23962 (innerList!12038 List!39153)) )
))
(declare-datatypes ((Conc!11978 0))(
  ( (Node!11978 (left!30443 Conc!11978) (right!30773 Conc!11978) (csize!24186 Int) (cheight!12189 Int)) (Leaf!18536 (xs!15180 IArray!23961) (csize!24187 Int)) (Empty!11978) )
))
(declare-datatypes ((BalanceConc!23570 0))(
  ( (BalanceConc!23571 (c!637900 Conc!11978)) )
))
(declare-datatypes ((TokenValueInjection!11676 0))(
  ( (TokenValueInjection!11677 (toValue!8210 Int) (toChars!8069 Int)) )
))
(declare-datatypes ((Rule!11588 0))(
  ( (Rule!11589 (regex!5894 Regex!10653) (tag!6706 String!43954) (isSeparator!5894 Bool) (transformation!5894 TokenValueInjection!11676)) )
))
(declare-datatypes ((Token!11154 0))(
  ( (Token!11155 (value!188439 TokenValue!6124) (rule!8740 Rule!11588) (size!29820 Int) (originalCharacters!6608 List!39153)) )
))
(declare-datatypes ((tuple2!38932 0))(
  ( (tuple2!38933 (_1!22600 Token!11154) (_2!22600 List!39153)) )
))
(declare-fun lt!1291054 () tuple2!38932)

(declare-fun lt!1291051 () Token!11154)

(assert (=> b!3688020 (= e!2283798 (= (_1!22600 lt!1291054) lt!1291051))))

(declare-fun b!3688021 () Bool)

(declare-fun res!1498778 () Bool)

(declare-fun e!2283797 () Bool)

(assert (=> b!3688021 (=> (not res!1498778) (not e!2283797))))

(declare-datatypes ((List!39154 0))(
  ( (Nil!39030) (Cons!39030 (h!44450 Rule!11588) (t!301221 List!39154)) )
))
(declare-fun rules!3568 () List!39154)

(declare-fun isEmpty!23227 (List!39154) Bool)

(assert (=> b!3688021 (= res!1498778 (not (isEmpty!23227 rules!3568)))))

(declare-fun b!3688022 () Bool)

(declare-fun e!2283800 () Bool)

(declare-fun e!2283801 () Bool)

(declare-fun tp!1120904 () Bool)

(assert (=> b!3688022 (= e!2283800 (and e!2283801 tp!1120904))))

(declare-fun b!3688023 () Bool)

(declare-fun e!2283804 () Bool)

(assert (=> b!3688023 (= e!2283804 (not e!2283798))))

(declare-fun res!1498780 () Bool)

(assert (=> b!3688023 (=> res!1498780 e!2283798)))

(declare-datatypes ((Option!8398 0))(
  ( (None!8397) (Some!8397 (v!38347 tuple2!38932)) )
))
(declare-fun lt!1291052 () Option!8398)

(declare-fun isDefined!6597 (Option!8398) Bool)

(assert (=> b!3688023 (= res!1498780 (not (isDefined!6597 lt!1291052)))))

(declare-fun lt!1291056 () List!39153)

(declare-fun input!3129 () List!39153)

(declare-fun suffix!1448 () List!39153)

(declare-fun isPrefix!3247 (List!39153 List!39153) Bool)

(declare-fun ++!9721 (List!39153 List!39153) List!39153)

(assert (=> b!3688023 (isPrefix!3247 lt!1291056 (++!9721 input!3129 suffix!1448))))

(declare-datatypes ((Unit!57086 0))(
  ( (Unit!57087) )
))
(declare-fun lt!1291050 () Unit!57086)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!576 (List!39153 List!39153 List!39153) Unit!57086)

(assert (=> b!3688023 (= lt!1291050 (lemmaPrefixStaysPrefixWhenAddingToSuffix!576 lt!1291056 input!3129 suffix!1448))))

(assert (=> b!3688023 (isPrefix!3247 lt!1291056 (++!9721 lt!1291056 (_2!22600 lt!1291054)))))

(declare-fun lt!1291055 () Unit!57086)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2164 (List!39153 List!39153) Unit!57086)

(assert (=> b!3688023 (= lt!1291055 (lemmaConcatTwoListThenFirstIsPrefix!2164 lt!1291056 (_2!22600 lt!1291054)))))

(declare-fun get!12942 (Option!8398) tuple2!38932)

(assert (=> b!3688023 (= lt!1291054 (get!12942 lt!1291052))))

(declare-datatypes ((LexerInterface!5483 0))(
  ( (LexerInterfaceExt!5480 (__x!24466 Int)) (Lexer!5481) )
))
(declare-fun thiss!25197 () LexerInterface!5483)

(declare-fun maxPrefix!3011 (LexerInterface!5483 List!39154 List!39153) Option!8398)

(assert (=> b!3688023 (= lt!1291052 (maxPrefix!3011 thiss!25197 rules!3568 input!3129))))

(declare-fun list!14570 (BalanceConc!23570) List!39153)

(declare-fun charsOf!3905 (Token!11154) BalanceConc!23570)

(assert (=> b!3688023 (= lt!1291056 (list!14570 (charsOf!3905 lt!1291051)))))

(declare-datatypes ((List!39155 0))(
  ( (Nil!39031) (Cons!39031 (h!44451 Token!11154) (t!301222 List!39155)) )
))
(declare-datatypes ((IArray!23963 0))(
  ( (IArray!23964 (innerList!12039 List!39155)) )
))
(declare-datatypes ((Conc!11979 0))(
  ( (Node!11979 (left!30444 Conc!11979) (right!30774 Conc!11979) (csize!24188 Int) (cheight!12190 Int)) (Leaf!18537 (xs!15181 IArray!23963) (csize!24189 Int)) (Empty!11979) )
))
(declare-datatypes ((BalanceConc!23572 0))(
  ( (BalanceConc!23573 (c!637901 Conc!11979)) )
))
(declare-datatypes ((tuple2!38934 0))(
  ( (tuple2!38935 (_1!22601 BalanceConc!23572) (_2!22601 BalanceConc!23570)) )
))
(declare-fun lt!1291053 () tuple2!38934)

(declare-fun head!7958 (List!39155) Token!11154)

(declare-fun list!14571 (BalanceConc!23572) List!39155)

(assert (=> b!3688023 (= lt!1291051 (head!7958 (list!14571 (_1!22601 lt!1291053))))))

(declare-fun res!1498781 () Bool)

(assert (=> start!346718 (=> (not res!1498781) (not e!2283797))))

(get-info :version)

(assert (=> start!346718 (= res!1498781 ((_ is Lexer!5481) thiss!25197))))

(assert (=> start!346718 e!2283797))

(assert (=> start!346718 true))

(assert (=> start!346718 e!2283800))

(assert (=> start!346718 e!2283799))

(declare-fun e!2283803 () Bool)

(assert (=> start!346718 e!2283803))

(declare-fun e!2283796 () Bool)

(assert (=> b!3688024 (= e!2283796 (and tp!1120906 tp!1120901))))

(declare-fun tp!1120905 () Bool)

(declare-fun b!3688025 () Bool)

(declare-fun inv!52494 (String!43954) Bool)

(declare-fun inv!52496 (TokenValueInjection!11676) Bool)

(assert (=> b!3688025 (= e!2283801 (and tp!1120905 (inv!52494 (tag!6706 (h!44450 rules!3568))) (inv!52496 (transformation!5894 (h!44450 rules!3568))) e!2283796))))

(declare-fun b!3688026 () Bool)

(declare-fun tp!1120902 () Bool)

(assert (=> b!3688026 (= e!2283803 (and tp_is_empty!18389 tp!1120902))))

(declare-fun b!3688027 () Bool)

(assert (=> b!3688027 (= e!2283797 e!2283804)))

(declare-fun res!1498779 () Bool)

(assert (=> b!3688027 (=> (not res!1498779) (not e!2283804))))

(declare-fun isEmpty!23228 (BalanceConc!23572) Bool)

(assert (=> b!3688027 (= res!1498779 (not (isEmpty!23228 (_1!22601 lt!1291053))))))

(declare-fun lex!2624 (LexerInterface!5483 List!39154 BalanceConc!23570) tuple2!38934)

(declare-fun seqFromList!4443 (List!39153) BalanceConc!23570)

(assert (=> b!3688027 (= lt!1291053 (lex!2624 thiss!25197 rules!3568 (seqFromList!4443 input!3129)))))

(declare-fun b!3688028 () Bool)

(declare-fun res!1498777 () Bool)

(assert (=> b!3688028 (=> (not res!1498777) (not e!2283797))))

(declare-fun rulesInvariant!4880 (LexerInterface!5483 List!39154) Bool)

(assert (=> b!3688028 (= res!1498777 (rulesInvariant!4880 thiss!25197 rules!3568))))

(assert (= (and start!346718 res!1498781) b!3688021))

(assert (= (and b!3688021 res!1498778) b!3688028))

(assert (= (and b!3688028 res!1498777) b!3688027))

(assert (= (and b!3688027 res!1498779) b!3688023))

(assert (= (and b!3688023 (not res!1498780)) b!3688020))

(assert (= b!3688025 b!3688024))

(assert (= b!3688022 b!3688025))

(assert (= (and start!346718 ((_ is Cons!39030) rules!3568)) b!3688022))

(assert (= (and start!346718 ((_ is Cons!39029) suffix!1448)) b!3688019))

(assert (= (and start!346718 ((_ is Cons!39029) input!3129)) b!3688026))

(declare-fun m!4200145 () Bool)

(assert (=> b!3688021 m!4200145))

(declare-fun m!4200147 () Bool)

(assert (=> b!3688028 m!4200147))

(declare-fun m!4200149 () Bool)

(assert (=> b!3688027 m!4200149))

(declare-fun m!4200151 () Bool)

(assert (=> b!3688027 m!4200151))

(assert (=> b!3688027 m!4200151))

(declare-fun m!4200153 () Bool)

(assert (=> b!3688027 m!4200153))

(declare-fun m!4200155 () Bool)

(assert (=> b!3688023 m!4200155))

(declare-fun m!4200157 () Bool)

(assert (=> b!3688023 m!4200157))

(declare-fun m!4200159 () Bool)

(assert (=> b!3688023 m!4200159))

(assert (=> b!3688023 m!4200159))

(declare-fun m!4200161 () Bool)

(assert (=> b!3688023 m!4200161))

(declare-fun m!4200163 () Bool)

(assert (=> b!3688023 m!4200163))

(declare-fun m!4200165 () Bool)

(assert (=> b!3688023 m!4200165))

(declare-fun m!4200167 () Bool)

(assert (=> b!3688023 m!4200167))

(assert (=> b!3688023 m!4200155))

(declare-fun m!4200169 () Bool)

(assert (=> b!3688023 m!4200169))

(declare-fun m!4200171 () Bool)

(assert (=> b!3688023 m!4200171))

(declare-fun m!4200173 () Bool)

(assert (=> b!3688023 m!4200173))

(declare-fun m!4200175 () Bool)

(assert (=> b!3688023 m!4200175))

(declare-fun m!4200177 () Bool)

(assert (=> b!3688023 m!4200177))

(assert (=> b!3688023 m!4200165))

(assert (=> b!3688023 m!4200177))

(declare-fun m!4200179 () Bool)

(assert (=> b!3688023 m!4200179))

(declare-fun m!4200181 () Bool)

(assert (=> b!3688025 m!4200181))

(declare-fun m!4200183 () Bool)

(assert (=> b!3688025 m!4200183))

(check-sat (not b!3688019) (not b!3688021) (not b!3688025) (not b_next!98557) (not b!3688023) b_and!275579 b_and!275581 (not b!3688026) tp_is_empty!18389 (not b_next!98559) (not b!3688027) (not b!3688022) (not b!3688028))
(check-sat b_and!275579 b_and!275581 (not b_next!98559) (not b_next!98557))
(get-model)

(declare-fun d!1082428 () Bool)

(assert (=> d!1082428 (= (inv!52494 (tag!6706 (h!44450 rules!3568))) (= (mod (str.len (value!188438 (tag!6706 (h!44450 rules!3568)))) 2) 0))))

(assert (=> b!3688025 d!1082428))

(declare-fun d!1082436 () Bool)

(declare-fun res!1498791 () Bool)

(declare-fun e!2283810 () Bool)

(assert (=> d!1082436 (=> (not res!1498791) (not e!2283810))))

(declare-fun semiInverseModEq!2515 (Int Int) Bool)

(assert (=> d!1082436 (= res!1498791 (semiInverseModEq!2515 (toChars!8069 (transformation!5894 (h!44450 rules!3568))) (toValue!8210 (transformation!5894 (h!44450 rules!3568)))))))

(assert (=> d!1082436 (= (inv!52496 (transformation!5894 (h!44450 rules!3568))) e!2283810)))

(declare-fun b!3688034 () Bool)

(declare-fun equivClasses!2414 (Int Int) Bool)

(assert (=> b!3688034 (= e!2283810 (equivClasses!2414 (toChars!8069 (transformation!5894 (h!44450 rules!3568))) (toValue!8210 (transformation!5894 (h!44450 rules!3568)))))))

(assert (= (and d!1082436 res!1498791) b!3688034))

(declare-fun m!4200189 () Bool)

(assert (=> d!1082436 m!4200189))

(declare-fun m!4200191 () Bool)

(assert (=> b!3688034 m!4200191))

(assert (=> b!3688025 d!1082436))

(declare-fun d!1082438 () Bool)

(assert (=> d!1082438 (= (isEmpty!23227 rules!3568) ((_ is Nil!39030) rules!3568))))

(assert (=> b!3688021 d!1082438))

(declare-fun d!1082440 () Bool)

(declare-fun lt!1291059 () Bool)

(declare-fun isEmpty!23232 (List!39155) Bool)

(assert (=> d!1082440 (= lt!1291059 (isEmpty!23232 (list!14571 (_1!22601 lt!1291053))))))

(declare-fun isEmpty!23233 (Conc!11979) Bool)

(assert (=> d!1082440 (= lt!1291059 (isEmpty!23233 (c!637901 (_1!22601 lt!1291053))))))

(assert (=> d!1082440 (= (isEmpty!23228 (_1!22601 lt!1291053)) lt!1291059)))

(declare-fun bs!573970 () Bool)

(assert (= bs!573970 d!1082440))

(assert (=> bs!573970 m!4200177))

(assert (=> bs!573970 m!4200177))

(declare-fun m!4200193 () Bool)

(assert (=> bs!573970 m!4200193))

(declare-fun m!4200195 () Bool)

(assert (=> bs!573970 m!4200195))

(assert (=> b!3688027 d!1082440))

(declare-fun b!3688158 () Bool)

(declare-fun e!2283880 () Bool)

(declare-fun lt!1291100 () tuple2!38934)

(assert (=> b!3688158 (= e!2283880 (not (isEmpty!23228 (_1!22601 lt!1291100))))))

(declare-fun d!1082442 () Bool)

(declare-fun e!2283881 () Bool)

(assert (=> d!1082442 e!2283881))

(declare-fun res!1498857 () Bool)

(assert (=> d!1082442 (=> (not res!1498857) (not e!2283881))))

(declare-fun e!2283882 () Bool)

(assert (=> d!1082442 (= res!1498857 e!2283882)))

(declare-fun c!637914 () Bool)

(declare-fun size!29824 (BalanceConc!23572) Int)

(assert (=> d!1082442 (= c!637914 (> (size!29824 (_1!22601 lt!1291100)) 0))))

(declare-fun lexTailRecV2!1140 (LexerInterface!5483 List!39154 BalanceConc!23570 BalanceConc!23570 BalanceConc!23570 BalanceConc!23572) tuple2!38934)

(assert (=> d!1082442 (= lt!1291100 (lexTailRecV2!1140 thiss!25197 rules!3568 (seqFromList!4443 input!3129) (BalanceConc!23571 Empty!11978) (seqFromList!4443 input!3129) (BalanceConc!23573 Empty!11979)))))

(assert (=> d!1082442 (= (lex!2624 thiss!25197 rules!3568 (seqFromList!4443 input!3129)) lt!1291100)))

(declare-fun b!3688159 () Bool)

(assert (=> b!3688159 (= e!2283882 e!2283880)))

(declare-fun res!1498856 () Bool)

(declare-fun size!29825 (BalanceConc!23570) Int)

(assert (=> b!3688159 (= res!1498856 (< (size!29825 (_2!22601 lt!1291100)) (size!29825 (seqFromList!4443 input!3129))))))

(assert (=> b!3688159 (=> (not res!1498856) (not e!2283880))))

(declare-fun b!3688160 () Bool)

(declare-datatypes ((tuple2!38938 0))(
  ( (tuple2!38939 (_1!22603 List!39155) (_2!22603 List!39153)) )
))
(declare-fun lexList!1534 (LexerInterface!5483 List!39154 List!39153) tuple2!38938)

(assert (=> b!3688160 (= e!2283881 (= (list!14570 (_2!22601 lt!1291100)) (_2!22603 (lexList!1534 thiss!25197 rules!3568 (list!14570 (seqFromList!4443 input!3129))))))))

(declare-fun b!3688161 () Bool)

(assert (=> b!3688161 (= e!2283882 (= (_2!22601 lt!1291100) (seqFromList!4443 input!3129)))))

(declare-fun b!3688162 () Bool)

(declare-fun res!1498855 () Bool)

(assert (=> b!3688162 (=> (not res!1498855) (not e!2283881))))

(assert (=> b!3688162 (= res!1498855 (= (list!14571 (_1!22601 lt!1291100)) (_1!22603 (lexList!1534 thiss!25197 rules!3568 (list!14570 (seqFromList!4443 input!3129))))))))

(assert (= (and d!1082442 c!637914) b!3688159))

(assert (= (and d!1082442 (not c!637914)) b!3688161))

(assert (= (and b!3688159 res!1498856) b!3688158))

(assert (= (and d!1082442 res!1498857) b!3688162))

(assert (= (and b!3688162 res!1498855) b!3688160))

(declare-fun m!4200329 () Bool)

(assert (=> b!3688162 m!4200329))

(assert (=> b!3688162 m!4200151))

(declare-fun m!4200331 () Bool)

(assert (=> b!3688162 m!4200331))

(assert (=> b!3688162 m!4200331))

(declare-fun m!4200333 () Bool)

(assert (=> b!3688162 m!4200333))

(declare-fun m!4200335 () Bool)

(assert (=> b!3688159 m!4200335))

(assert (=> b!3688159 m!4200151))

(declare-fun m!4200337 () Bool)

(assert (=> b!3688159 m!4200337))

(declare-fun m!4200339 () Bool)

(assert (=> b!3688160 m!4200339))

(assert (=> b!3688160 m!4200151))

(assert (=> b!3688160 m!4200331))

(assert (=> b!3688160 m!4200331))

(assert (=> b!3688160 m!4200333))

(declare-fun m!4200341 () Bool)

(assert (=> b!3688158 m!4200341))

(declare-fun m!4200343 () Bool)

(assert (=> d!1082442 m!4200343))

(assert (=> d!1082442 m!4200151))

(assert (=> d!1082442 m!4200151))

(declare-fun m!4200345 () Bool)

(assert (=> d!1082442 m!4200345))

(assert (=> b!3688027 d!1082442))

(declare-fun d!1082474 () Bool)

(declare-fun fromListB!2050 (List!39153) BalanceConc!23570)

(assert (=> d!1082474 (= (seqFromList!4443 input!3129) (fromListB!2050 input!3129))))

(declare-fun bs!573978 () Bool)

(assert (= bs!573978 d!1082474))

(declare-fun m!4200347 () Bool)

(assert (=> bs!573978 m!4200347))

(assert (=> b!3688027 d!1082474))

(declare-fun d!1082476 () Bool)

(declare-fun res!1498860 () Bool)

(declare-fun e!2283885 () Bool)

(assert (=> d!1082476 (=> (not res!1498860) (not e!2283885))))

(declare-fun rulesValid!2272 (LexerInterface!5483 List!39154) Bool)

(assert (=> d!1082476 (= res!1498860 (rulesValid!2272 thiss!25197 rules!3568))))

(assert (=> d!1082476 (= (rulesInvariant!4880 thiss!25197 rules!3568) e!2283885)))

(declare-fun b!3688165 () Bool)

(declare-datatypes ((List!39157 0))(
  ( (Nil!39033) (Cons!39033 (h!44453 String!43954) (t!301232 List!39157)) )
))
(declare-fun noDuplicateTag!2268 (LexerInterface!5483 List!39154 List!39157) Bool)

(assert (=> b!3688165 (= e!2283885 (noDuplicateTag!2268 thiss!25197 rules!3568 Nil!39033))))

(assert (= (and d!1082476 res!1498860) b!3688165))

(declare-fun m!4200349 () Bool)

(assert (=> d!1082476 m!4200349))

(declare-fun m!4200351 () Bool)

(assert (=> b!3688165 m!4200351))

(assert (=> b!3688028 d!1082476))

(declare-fun d!1082478 () Bool)

(declare-fun lt!1291103 () BalanceConc!23570)

(assert (=> d!1082478 (= (list!14570 lt!1291103) (originalCharacters!6608 lt!1291051))))

(declare-fun dynLambda!17098 (Int TokenValue!6124) BalanceConc!23570)

(assert (=> d!1082478 (= lt!1291103 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))) (value!188439 lt!1291051)))))

(assert (=> d!1082478 (= (charsOf!3905 lt!1291051) lt!1291103)))

(declare-fun b_lambda!109481 () Bool)

(assert (=> (not b_lambda!109481) (not d!1082478)))

(declare-fun t!301228 () Bool)

(declare-fun tb!213797 () Bool)

(assert (=> (and b!3688024 (= (toChars!8069 (transformation!5894 (h!44450 rules!3568))) (toChars!8069 (transformation!5894 (rule!8740 lt!1291051)))) t!301228) tb!213797))

(declare-fun b!3688170 () Bool)

(declare-fun e!2283888 () Bool)

(declare-fun tp!1120943 () Bool)

(declare-fun inv!52499 (Conc!11978) Bool)

(assert (=> b!3688170 (= e!2283888 (and (inv!52499 (c!637900 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))) (value!188439 lt!1291051)))) tp!1120943))))

(declare-fun result!260242 () Bool)

(declare-fun inv!52500 (BalanceConc!23570) Bool)

(assert (=> tb!213797 (= result!260242 (and (inv!52500 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))) (value!188439 lt!1291051))) e!2283888))))

(assert (= tb!213797 b!3688170))

(declare-fun m!4200353 () Bool)

(assert (=> b!3688170 m!4200353))

(declare-fun m!4200355 () Bool)

(assert (=> tb!213797 m!4200355))

(assert (=> d!1082478 t!301228))

(declare-fun b_and!275589 () Bool)

(assert (= b_and!275581 (and (=> t!301228 result!260242) b_and!275589)))

(declare-fun m!4200357 () Bool)

(assert (=> d!1082478 m!4200357))

(declare-fun m!4200359 () Bool)

(assert (=> d!1082478 m!4200359))

(assert (=> b!3688023 d!1082478))

(declare-fun d!1082480 () Bool)

(assert (=> d!1082480 (= (get!12942 lt!1291052) (v!38347 lt!1291052))))

(assert (=> b!3688023 d!1082480))

(declare-fun b!3688189 () Bool)

(declare-fun e!2283897 () Bool)

(declare-fun e!2283896 () Bool)

(assert (=> b!3688189 (= e!2283897 e!2283896)))

(declare-fun res!1498875 () Bool)

(assert (=> b!3688189 (=> (not res!1498875) (not e!2283896))))

(declare-fun lt!1291114 () Option!8398)

(assert (=> b!3688189 (= res!1498875 (isDefined!6597 lt!1291114))))

(declare-fun b!3688190 () Bool)

(declare-fun res!1498881 () Bool)

(assert (=> b!3688190 (=> (not res!1498881) (not e!2283896))))

(declare-fun size!29826 (List!39153) Int)

(assert (=> b!3688190 (= res!1498881 (< (size!29826 (_2!22600 (get!12942 lt!1291114))) (size!29826 input!3129)))))

(declare-fun b!3688192 () Bool)

(declare-fun res!1498880 () Bool)

(assert (=> b!3688192 (=> (not res!1498880) (not e!2283896))))

(assert (=> b!3688192 (= res!1498880 (= (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114)))) (originalCharacters!6608 (_1!22600 (get!12942 lt!1291114)))))))

(declare-fun b!3688193 () Bool)

(declare-fun res!1498876 () Bool)

(assert (=> b!3688193 (=> (not res!1498876) (not e!2283896))))

(declare-fun apply!9366 (TokenValueInjection!11676 BalanceConc!23570) TokenValue!6124)

(assert (=> b!3688193 (= res!1498876 (= (value!188439 (_1!22600 (get!12942 lt!1291114))) (apply!9366 (transformation!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114)))) (seqFromList!4443 (originalCharacters!6608 (_1!22600 (get!12942 lt!1291114)))))))))

(declare-fun call!266876 () Option!8398)

(declare-fun bm!266871 () Bool)

(declare-fun maxPrefixOneRule!2129 (LexerInterface!5483 Rule!11588 List!39153) Option!8398)

(assert (=> bm!266871 (= call!266876 (maxPrefixOneRule!2129 thiss!25197 (h!44450 rules!3568) input!3129))))

(declare-fun b!3688194 () Bool)

(declare-fun e!2283895 () Option!8398)

(assert (=> b!3688194 (= e!2283895 call!266876)))

(declare-fun b!3688195 () Bool)

(declare-fun lt!1291117 () Option!8398)

(declare-fun lt!1291116 () Option!8398)

(assert (=> b!3688195 (= e!2283895 (ite (and ((_ is None!8397) lt!1291117) ((_ is None!8397) lt!1291116)) None!8397 (ite ((_ is None!8397) lt!1291116) lt!1291117 (ite ((_ is None!8397) lt!1291117) lt!1291116 (ite (>= (size!29820 (_1!22600 (v!38347 lt!1291117))) (size!29820 (_1!22600 (v!38347 lt!1291116)))) lt!1291117 lt!1291116)))))))

(assert (=> b!3688195 (= lt!1291117 call!266876)))

(assert (=> b!3688195 (= lt!1291116 (maxPrefix!3011 thiss!25197 (t!301221 rules!3568) input!3129))))

(declare-fun b!3688196 () Bool)

(declare-fun res!1498877 () Bool)

(assert (=> b!3688196 (=> (not res!1498877) (not e!2283896))))

(declare-fun matchR!5208 (Regex!10653 List!39153) Bool)

(assert (=> b!3688196 (= res!1498877 (matchR!5208 (regex!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114)))) (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114))))))))

(declare-fun b!3688197 () Bool)

(declare-fun res!1498878 () Bool)

(assert (=> b!3688197 (=> (not res!1498878) (not e!2283896))))

(assert (=> b!3688197 (= res!1498878 (= (++!9721 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114)))) (_2!22600 (get!12942 lt!1291114))) input!3129))))

(declare-fun d!1082482 () Bool)

(assert (=> d!1082482 e!2283897))

(declare-fun res!1498879 () Bool)

(assert (=> d!1082482 (=> res!1498879 e!2283897)))

(declare-fun isEmpty!23234 (Option!8398) Bool)

(assert (=> d!1082482 (= res!1498879 (isEmpty!23234 lt!1291114))))

(assert (=> d!1082482 (= lt!1291114 e!2283895)))

(declare-fun c!637917 () Bool)

(assert (=> d!1082482 (= c!637917 (and ((_ is Cons!39030) rules!3568) ((_ is Nil!39030) (t!301221 rules!3568))))))

(declare-fun lt!1291115 () Unit!57086)

(declare-fun lt!1291118 () Unit!57086)

(assert (=> d!1082482 (= lt!1291115 lt!1291118)))

(assert (=> d!1082482 (isPrefix!3247 input!3129 input!3129)))

(declare-fun lemmaIsPrefixRefl!2034 (List!39153 List!39153) Unit!57086)

(assert (=> d!1082482 (= lt!1291118 (lemmaIsPrefixRefl!2034 input!3129 input!3129))))

(declare-fun rulesValidInductive!2108 (LexerInterface!5483 List!39154) Bool)

(assert (=> d!1082482 (rulesValidInductive!2108 thiss!25197 rules!3568)))

(assert (=> d!1082482 (= (maxPrefix!3011 thiss!25197 rules!3568 input!3129) lt!1291114)))

(declare-fun b!3688191 () Bool)

(declare-fun contains!7793 (List!39154 Rule!11588) Bool)

(assert (=> b!3688191 (= e!2283896 (contains!7793 rules!3568 (rule!8740 (_1!22600 (get!12942 lt!1291114)))))))

(assert (= (and d!1082482 c!637917) b!3688194))

(assert (= (and d!1082482 (not c!637917)) b!3688195))

(assert (= (or b!3688194 b!3688195) bm!266871))

(assert (= (and d!1082482 (not res!1498879)) b!3688189))

(assert (= (and b!3688189 res!1498875) b!3688192))

(assert (= (and b!3688192 res!1498880) b!3688190))

(assert (= (and b!3688190 res!1498881) b!3688197))

(assert (= (and b!3688197 res!1498878) b!3688193))

(assert (= (and b!3688193 res!1498876) b!3688196))

(assert (= (and b!3688196 res!1498877) b!3688191))

(declare-fun m!4200361 () Bool)

(assert (=> b!3688190 m!4200361))

(declare-fun m!4200363 () Bool)

(assert (=> b!3688190 m!4200363))

(declare-fun m!4200365 () Bool)

(assert (=> b!3688190 m!4200365))

(assert (=> b!3688191 m!4200361))

(declare-fun m!4200367 () Bool)

(assert (=> b!3688191 m!4200367))

(assert (=> b!3688197 m!4200361))

(declare-fun m!4200369 () Bool)

(assert (=> b!3688197 m!4200369))

(assert (=> b!3688197 m!4200369))

(declare-fun m!4200371 () Bool)

(assert (=> b!3688197 m!4200371))

(assert (=> b!3688197 m!4200371))

(declare-fun m!4200373 () Bool)

(assert (=> b!3688197 m!4200373))

(assert (=> b!3688196 m!4200361))

(assert (=> b!3688196 m!4200369))

(assert (=> b!3688196 m!4200369))

(assert (=> b!3688196 m!4200371))

(assert (=> b!3688196 m!4200371))

(declare-fun m!4200375 () Bool)

(assert (=> b!3688196 m!4200375))

(assert (=> b!3688193 m!4200361))

(declare-fun m!4200377 () Bool)

(assert (=> b!3688193 m!4200377))

(assert (=> b!3688193 m!4200377))

(declare-fun m!4200379 () Bool)

(assert (=> b!3688193 m!4200379))

(assert (=> b!3688192 m!4200361))

(assert (=> b!3688192 m!4200369))

(assert (=> b!3688192 m!4200369))

(assert (=> b!3688192 m!4200371))

(declare-fun m!4200381 () Bool)

(assert (=> d!1082482 m!4200381))

(declare-fun m!4200383 () Bool)

(assert (=> d!1082482 m!4200383))

(declare-fun m!4200385 () Bool)

(assert (=> d!1082482 m!4200385))

(declare-fun m!4200387 () Bool)

(assert (=> d!1082482 m!4200387))

(declare-fun m!4200389 () Bool)

(assert (=> b!3688189 m!4200389))

(declare-fun m!4200391 () Bool)

(assert (=> bm!266871 m!4200391))

(declare-fun m!4200393 () Bool)

(assert (=> b!3688195 m!4200393))

(assert (=> b!3688023 d!1082482))

(declare-fun d!1082484 () Bool)

(declare-fun list!14574 (Conc!11978) List!39153)

(assert (=> d!1082484 (= (list!14570 (charsOf!3905 lt!1291051)) (list!14574 (c!637900 (charsOf!3905 lt!1291051))))))

(declare-fun bs!573979 () Bool)

(assert (= bs!573979 d!1082484))

(declare-fun m!4200395 () Bool)

(assert (=> bs!573979 m!4200395))

(assert (=> b!3688023 d!1082484))

(declare-fun b!3688207 () Bool)

(declare-fun e!2283903 () List!39153)

(assert (=> b!3688207 (= e!2283903 (Cons!39029 (h!44449 lt!1291056) (++!9721 (t!301220 lt!1291056) (_2!22600 lt!1291054))))))

(declare-fun d!1082486 () Bool)

(declare-fun e!2283902 () Bool)

(assert (=> d!1082486 e!2283902))

(declare-fun res!1498887 () Bool)

(assert (=> d!1082486 (=> (not res!1498887) (not e!2283902))))

(declare-fun lt!1291121 () List!39153)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5655 (List!39153) (InoxSet C!21492))

(assert (=> d!1082486 (= res!1498887 (= (content!5655 lt!1291121) ((_ map or) (content!5655 lt!1291056) (content!5655 (_2!22600 lt!1291054)))))))

(assert (=> d!1082486 (= lt!1291121 e!2283903)))

(declare-fun c!637920 () Bool)

(assert (=> d!1082486 (= c!637920 ((_ is Nil!39029) lt!1291056))))

(assert (=> d!1082486 (= (++!9721 lt!1291056 (_2!22600 lt!1291054)) lt!1291121)))

(declare-fun b!3688208 () Bool)

(declare-fun res!1498886 () Bool)

(assert (=> b!3688208 (=> (not res!1498886) (not e!2283902))))

(assert (=> b!3688208 (= res!1498886 (= (size!29826 lt!1291121) (+ (size!29826 lt!1291056) (size!29826 (_2!22600 lt!1291054)))))))

(declare-fun b!3688206 () Bool)

(assert (=> b!3688206 (= e!2283903 (_2!22600 lt!1291054))))

(declare-fun b!3688209 () Bool)

(assert (=> b!3688209 (= e!2283902 (or (not (= (_2!22600 lt!1291054) Nil!39029)) (= lt!1291121 lt!1291056)))))

(assert (= (and d!1082486 c!637920) b!3688206))

(assert (= (and d!1082486 (not c!637920)) b!3688207))

(assert (= (and d!1082486 res!1498887) b!3688208))

(assert (= (and b!3688208 res!1498886) b!3688209))

(declare-fun m!4200397 () Bool)

(assert (=> b!3688207 m!4200397))

(declare-fun m!4200399 () Bool)

(assert (=> d!1082486 m!4200399))

(declare-fun m!4200401 () Bool)

(assert (=> d!1082486 m!4200401))

(declare-fun m!4200403 () Bool)

(assert (=> d!1082486 m!4200403))

(declare-fun m!4200405 () Bool)

(assert (=> b!3688208 m!4200405))

(declare-fun m!4200407 () Bool)

(assert (=> b!3688208 m!4200407))

(declare-fun m!4200409 () Bool)

(assert (=> b!3688208 m!4200409))

(assert (=> b!3688023 d!1082486))

(declare-fun d!1082488 () Bool)

(declare-fun list!14575 (Conc!11979) List!39155)

(assert (=> d!1082488 (= (list!14571 (_1!22601 lt!1291053)) (list!14575 (c!637901 (_1!22601 lt!1291053))))))

(declare-fun bs!573980 () Bool)

(assert (= bs!573980 d!1082488))

(declare-fun m!4200411 () Bool)

(assert (=> bs!573980 m!4200411))

(assert (=> b!3688023 d!1082488))

(declare-fun d!1082490 () Bool)

(assert (=> d!1082490 (isPrefix!3247 lt!1291056 (++!9721 input!3129 suffix!1448))))

(declare-fun lt!1291124 () Unit!57086)

(declare-fun choose!22073 (List!39153 List!39153 List!39153) Unit!57086)

(assert (=> d!1082490 (= lt!1291124 (choose!22073 lt!1291056 input!3129 suffix!1448))))

(assert (=> d!1082490 (isPrefix!3247 lt!1291056 input!3129)))

(assert (=> d!1082490 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!576 lt!1291056 input!3129 suffix!1448) lt!1291124)))

(declare-fun bs!573981 () Bool)

(assert (= bs!573981 d!1082490))

(assert (=> bs!573981 m!4200159))

(assert (=> bs!573981 m!4200159))

(assert (=> bs!573981 m!4200161))

(declare-fun m!4200413 () Bool)

(assert (=> bs!573981 m!4200413))

(declare-fun m!4200415 () Bool)

(assert (=> bs!573981 m!4200415))

(assert (=> b!3688023 d!1082490))

(declare-fun b!3688211 () Bool)

(declare-fun e!2283905 () List!39153)

(assert (=> b!3688211 (= e!2283905 (Cons!39029 (h!44449 input!3129) (++!9721 (t!301220 input!3129) suffix!1448)))))

(declare-fun d!1082492 () Bool)

(declare-fun e!2283904 () Bool)

(assert (=> d!1082492 e!2283904))

(declare-fun res!1498889 () Bool)

(assert (=> d!1082492 (=> (not res!1498889) (not e!2283904))))

(declare-fun lt!1291125 () List!39153)

(assert (=> d!1082492 (= res!1498889 (= (content!5655 lt!1291125) ((_ map or) (content!5655 input!3129) (content!5655 suffix!1448))))))

(assert (=> d!1082492 (= lt!1291125 e!2283905)))

(declare-fun c!637921 () Bool)

(assert (=> d!1082492 (= c!637921 ((_ is Nil!39029) input!3129))))

(assert (=> d!1082492 (= (++!9721 input!3129 suffix!1448) lt!1291125)))

(declare-fun b!3688212 () Bool)

(declare-fun res!1498888 () Bool)

(assert (=> b!3688212 (=> (not res!1498888) (not e!2283904))))

(assert (=> b!3688212 (= res!1498888 (= (size!29826 lt!1291125) (+ (size!29826 input!3129) (size!29826 suffix!1448))))))

(declare-fun b!3688210 () Bool)

(assert (=> b!3688210 (= e!2283905 suffix!1448)))

(declare-fun b!3688213 () Bool)

(assert (=> b!3688213 (= e!2283904 (or (not (= suffix!1448 Nil!39029)) (= lt!1291125 input!3129)))))

(assert (= (and d!1082492 c!637921) b!3688210))

(assert (= (and d!1082492 (not c!637921)) b!3688211))

(assert (= (and d!1082492 res!1498889) b!3688212))

(assert (= (and b!3688212 res!1498888) b!3688213))

(declare-fun m!4200417 () Bool)

(assert (=> b!3688211 m!4200417))

(declare-fun m!4200419 () Bool)

(assert (=> d!1082492 m!4200419))

(declare-fun m!4200421 () Bool)

(assert (=> d!1082492 m!4200421))

(declare-fun m!4200423 () Bool)

(assert (=> d!1082492 m!4200423))

(declare-fun m!4200425 () Bool)

(assert (=> b!3688212 m!4200425))

(assert (=> b!3688212 m!4200365))

(declare-fun m!4200427 () Bool)

(assert (=> b!3688212 m!4200427))

(assert (=> b!3688023 d!1082492))

(declare-fun d!1082494 () Bool)

(assert (=> d!1082494 (isPrefix!3247 lt!1291056 (++!9721 lt!1291056 (_2!22600 lt!1291054)))))

(declare-fun lt!1291128 () Unit!57086)

(declare-fun choose!22074 (List!39153 List!39153) Unit!57086)

(assert (=> d!1082494 (= lt!1291128 (choose!22074 lt!1291056 (_2!22600 lt!1291054)))))

(assert (=> d!1082494 (= (lemmaConcatTwoListThenFirstIsPrefix!2164 lt!1291056 (_2!22600 lt!1291054)) lt!1291128)))

(declare-fun bs!573982 () Bool)

(assert (= bs!573982 d!1082494))

(assert (=> bs!573982 m!4200165))

(assert (=> bs!573982 m!4200165))

(assert (=> bs!573982 m!4200167))

(declare-fun m!4200429 () Bool)

(assert (=> bs!573982 m!4200429))

(assert (=> b!3688023 d!1082494))

(declare-fun d!1082496 () Bool)

(assert (=> d!1082496 (= (head!7958 (list!14571 (_1!22601 lt!1291053))) (h!44451 (list!14571 (_1!22601 lt!1291053))))))

(assert (=> b!3688023 d!1082496))

(declare-fun d!1082498 () Bool)

(assert (=> d!1082498 (= (isDefined!6597 lt!1291052) (not (isEmpty!23234 lt!1291052)))))

(declare-fun bs!573983 () Bool)

(assert (= bs!573983 d!1082498))

(declare-fun m!4200431 () Bool)

(assert (=> bs!573983 m!4200431))

(assert (=> b!3688023 d!1082498))

(declare-fun b!3688223 () Bool)

(declare-fun res!1498900 () Bool)

(declare-fun e!2283913 () Bool)

(assert (=> b!3688223 (=> (not res!1498900) (not e!2283913))))

(declare-fun head!7960 (List!39153) C!21492)

(assert (=> b!3688223 (= res!1498900 (= (head!7960 lt!1291056) (head!7960 (++!9721 input!3129 suffix!1448))))))

(declare-fun d!1082500 () Bool)

(declare-fun e!2283912 () Bool)

(assert (=> d!1082500 e!2283912))

(declare-fun res!1498901 () Bool)

(assert (=> d!1082500 (=> res!1498901 e!2283912)))

(declare-fun lt!1291131 () Bool)

(assert (=> d!1082500 (= res!1498901 (not lt!1291131))))

(declare-fun e!2283914 () Bool)

(assert (=> d!1082500 (= lt!1291131 e!2283914)))

(declare-fun res!1498899 () Bool)

(assert (=> d!1082500 (=> res!1498899 e!2283914)))

(assert (=> d!1082500 (= res!1498899 ((_ is Nil!39029) lt!1291056))))

(assert (=> d!1082500 (= (isPrefix!3247 lt!1291056 (++!9721 input!3129 suffix!1448)) lt!1291131)))

(declare-fun b!3688225 () Bool)

(assert (=> b!3688225 (= e!2283912 (>= (size!29826 (++!9721 input!3129 suffix!1448)) (size!29826 lt!1291056)))))

(declare-fun b!3688222 () Bool)

(assert (=> b!3688222 (= e!2283914 e!2283913)))

(declare-fun res!1498898 () Bool)

(assert (=> b!3688222 (=> (not res!1498898) (not e!2283913))))

(assert (=> b!3688222 (= res!1498898 (not ((_ is Nil!39029) (++!9721 input!3129 suffix!1448))))))

(declare-fun b!3688224 () Bool)

(declare-fun tail!5709 (List!39153) List!39153)

(assert (=> b!3688224 (= e!2283913 (isPrefix!3247 (tail!5709 lt!1291056) (tail!5709 (++!9721 input!3129 suffix!1448))))))

(assert (= (and d!1082500 (not res!1498899)) b!3688222))

(assert (= (and b!3688222 res!1498898) b!3688223))

(assert (= (and b!3688223 res!1498900) b!3688224))

(assert (= (and d!1082500 (not res!1498901)) b!3688225))

(declare-fun m!4200433 () Bool)

(assert (=> b!3688223 m!4200433))

(assert (=> b!3688223 m!4200159))

(declare-fun m!4200435 () Bool)

(assert (=> b!3688223 m!4200435))

(assert (=> b!3688225 m!4200159))

(declare-fun m!4200437 () Bool)

(assert (=> b!3688225 m!4200437))

(assert (=> b!3688225 m!4200407))

(declare-fun m!4200439 () Bool)

(assert (=> b!3688224 m!4200439))

(assert (=> b!3688224 m!4200159))

(declare-fun m!4200441 () Bool)

(assert (=> b!3688224 m!4200441))

(assert (=> b!3688224 m!4200439))

(assert (=> b!3688224 m!4200441))

(declare-fun m!4200443 () Bool)

(assert (=> b!3688224 m!4200443))

(assert (=> b!3688023 d!1082500))

(declare-fun b!3688227 () Bool)

(declare-fun res!1498904 () Bool)

(declare-fun e!2283916 () Bool)

(assert (=> b!3688227 (=> (not res!1498904) (not e!2283916))))

(assert (=> b!3688227 (= res!1498904 (= (head!7960 lt!1291056) (head!7960 (++!9721 lt!1291056 (_2!22600 lt!1291054)))))))

(declare-fun d!1082502 () Bool)

(declare-fun e!2283915 () Bool)

(assert (=> d!1082502 e!2283915))

(declare-fun res!1498905 () Bool)

(assert (=> d!1082502 (=> res!1498905 e!2283915)))

(declare-fun lt!1291132 () Bool)

(assert (=> d!1082502 (= res!1498905 (not lt!1291132))))

(declare-fun e!2283917 () Bool)

(assert (=> d!1082502 (= lt!1291132 e!2283917)))

(declare-fun res!1498903 () Bool)

(assert (=> d!1082502 (=> res!1498903 e!2283917)))

(assert (=> d!1082502 (= res!1498903 ((_ is Nil!39029) lt!1291056))))

(assert (=> d!1082502 (= (isPrefix!3247 lt!1291056 (++!9721 lt!1291056 (_2!22600 lt!1291054))) lt!1291132)))

(declare-fun b!3688229 () Bool)

(assert (=> b!3688229 (= e!2283915 (>= (size!29826 (++!9721 lt!1291056 (_2!22600 lt!1291054))) (size!29826 lt!1291056)))))

(declare-fun b!3688226 () Bool)

(assert (=> b!3688226 (= e!2283917 e!2283916)))

(declare-fun res!1498902 () Bool)

(assert (=> b!3688226 (=> (not res!1498902) (not e!2283916))))

(assert (=> b!3688226 (= res!1498902 (not ((_ is Nil!39029) (++!9721 lt!1291056 (_2!22600 lt!1291054)))))))

(declare-fun b!3688228 () Bool)

(assert (=> b!3688228 (= e!2283916 (isPrefix!3247 (tail!5709 lt!1291056) (tail!5709 (++!9721 lt!1291056 (_2!22600 lt!1291054)))))))

(assert (= (and d!1082502 (not res!1498903)) b!3688226))

(assert (= (and b!3688226 res!1498902) b!3688227))

(assert (= (and b!3688227 res!1498904) b!3688228))

(assert (= (and d!1082502 (not res!1498905)) b!3688229))

(assert (=> b!3688227 m!4200433))

(assert (=> b!3688227 m!4200165))

(declare-fun m!4200445 () Bool)

(assert (=> b!3688227 m!4200445))

(assert (=> b!3688229 m!4200165))

(declare-fun m!4200447 () Bool)

(assert (=> b!3688229 m!4200447))

(assert (=> b!3688229 m!4200407))

(assert (=> b!3688228 m!4200439))

(assert (=> b!3688228 m!4200165))

(declare-fun m!4200449 () Bool)

(assert (=> b!3688228 m!4200449))

(assert (=> b!3688228 m!4200439))

(assert (=> b!3688228 m!4200449))

(declare-fun m!4200451 () Bool)

(assert (=> b!3688228 m!4200451))

(assert (=> b!3688023 d!1082502))

(declare-fun b!3688240 () Bool)

(declare-fun e!2283920 () Bool)

(assert (=> b!3688240 (= e!2283920 tp_is_empty!18389)))

(declare-fun b!3688242 () Bool)

(declare-fun tp!1120957 () Bool)

(assert (=> b!3688242 (= e!2283920 tp!1120957)))

(declare-fun b!3688241 () Bool)

(declare-fun tp!1120954 () Bool)

(declare-fun tp!1120955 () Bool)

(assert (=> b!3688241 (= e!2283920 (and tp!1120954 tp!1120955))))

(declare-fun b!3688243 () Bool)

(declare-fun tp!1120956 () Bool)

(declare-fun tp!1120958 () Bool)

(assert (=> b!3688243 (= e!2283920 (and tp!1120956 tp!1120958))))

(assert (=> b!3688025 (= tp!1120905 e!2283920)))

(assert (= (and b!3688025 ((_ is ElementMatch!10653) (regex!5894 (h!44450 rules!3568)))) b!3688240))

(assert (= (and b!3688025 ((_ is Concat!16778) (regex!5894 (h!44450 rules!3568)))) b!3688241))

(assert (= (and b!3688025 ((_ is Star!10653) (regex!5894 (h!44450 rules!3568)))) b!3688242))

(assert (= (and b!3688025 ((_ is Union!10653) (regex!5894 (h!44450 rules!3568)))) b!3688243))

(declare-fun b!3688248 () Bool)

(declare-fun e!2283923 () Bool)

(declare-fun tp!1120961 () Bool)

(assert (=> b!3688248 (= e!2283923 (and tp_is_empty!18389 tp!1120961))))

(assert (=> b!3688026 (= tp!1120902 e!2283923)))

(assert (= (and b!3688026 ((_ is Cons!39029) (t!301220 input!3129))) b!3688248))

(declare-fun b!3688259 () Bool)

(declare-fun b_free!97861 () Bool)

(declare-fun b_next!98565 () Bool)

(assert (=> b!3688259 (= b_free!97861 (not b_next!98565))))

(declare-fun tp!1120971 () Bool)

(declare-fun b_and!275591 () Bool)

(assert (=> b!3688259 (= tp!1120971 b_and!275591)))

(declare-fun b_free!97863 () Bool)

(declare-fun b_next!98567 () Bool)

(assert (=> b!3688259 (= b_free!97863 (not b_next!98567))))

(declare-fun t!301231 () Bool)

(declare-fun tb!213799 () Bool)

(assert (=> (and b!3688259 (= (toChars!8069 (transformation!5894 (h!44450 (t!301221 rules!3568)))) (toChars!8069 (transformation!5894 (rule!8740 lt!1291051)))) t!301231) tb!213799))

(declare-fun result!260252 () Bool)

(assert (= result!260252 result!260242))

(assert (=> d!1082478 t!301231))

(declare-fun b_and!275593 () Bool)

(declare-fun tp!1120973 () Bool)

(assert (=> b!3688259 (= tp!1120973 (and (=> t!301231 result!260252) b_and!275593))))

(declare-fun e!2283932 () Bool)

(assert (=> b!3688259 (= e!2283932 (and tp!1120971 tp!1120973))))

(declare-fun e!2283933 () Bool)

(declare-fun tp!1120970 () Bool)

(declare-fun b!3688258 () Bool)

(assert (=> b!3688258 (= e!2283933 (and tp!1120970 (inv!52494 (tag!6706 (h!44450 (t!301221 rules!3568)))) (inv!52496 (transformation!5894 (h!44450 (t!301221 rules!3568)))) e!2283932))))

(declare-fun b!3688257 () Bool)

(declare-fun e!2283934 () Bool)

(declare-fun tp!1120972 () Bool)

(assert (=> b!3688257 (= e!2283934 (and e!2283933 tp!1120972))))

(assert (=> b!3688022 (= tp!1120904 e!2283934)))

(assert (= b!3688258 b!3688259))

(assert (= b!3688257 b!3688258))

(assert (= (and b!3688022 ((_ is Cons!39030) (t!301221 rules!3568))) b!3688257))

(declare-fun m!4200453 () Bool)

(assert (=> b!3688258 m!4200453))

(declare-fun m!4200455 () Bool)

(assert (=> b!3688258 m!4200455))

(declare-fun b!3688260 () Bool)

(declare-fun e!2283936 () Bool)

(declare-fun tp!1120974 () Bool)

(assert (=> b!3688260 (= e!2283936 (and tp_is_empty!18389 tp!1120974))))

(assert (=> b!3688019 (= tp!1120903 e!2283936)))

(assert (= (and b!3688019 ((_ is Cons!39029) (t!301220 suffix!1448))) b!3688260))

(check-sat (not d!1082492) (not b!3688260) b_and!275591 (not b!3688224) (not d!1082490) (not d!1082442) (not b!3688158) (not b!3688162) b_and!275593 (not b!3688190) (not b!3688193) (not b!3688248) (not b!3688229) (not d!1082484) (not d!1082498) (not b!3688211) (not b!3688258) (not b!3688257) (not b!3688159) (not b!3688241) (not b!3688225) (not b!3688170) (not b!3688197) (not d!1082494) (not b_next!98557) tp_is_empty!18389 (not bm!266871) (not b_next!98559) (not b_next!98567) b_and!275589 (not tb!213797) (not d!1082478) (not b!3688242) (not b!3688160) (not d!1082440) (not b!3688243) (not d!1082486) (not d!1082476) (not b_lambda!109481) b_and!275579 (not b!3688207) (not b!3688191) (not b!3688189) (not b!3688208) (not b!3688165) (not b!3688227) (not b!3688192) (not b!3688223) (not d!1082488) (not b!3688212) (not b!3688034) (not d!1082474) (not b!3688228) (not d!1082482) (not b!3688196) (not b!3688195) (not b_next!98565) (not d!1082436))
(check-sat b_and!275591 (not b_next!98557) b_and!275589 b_and!275579 b_and!275593 (not b_next!98565) (not b_next!98559) (not b_next!98567))
(get-model)

(declare-fun d!1082518 () Bool)

(assert (=> d!1082518 (= (isEmpty!23234 lt!1291114) (not ((_ is Some!8397) lt!1291114)))))

(assert (=> d!1082482 d!1082518))

(declare-fun b!3688280 () Bool)

(declare-fun res!1498924 () Bool)

(declare-fun e!2283950 () Bool)

(assert (=> b!3688280 (=> (not res!1498924) (not e!2283950))))

(assert (=> b!3688280 (= res!1498924 (= (head!7960 input!3129) (head!7960 input!3129)))))

(declare-fun d!1082520 () Bool)

(declare-fun e!2283949 () Bool)

(assert (=> d!1082520 e!2283949))

(declare-fun res!1498925 () Bool)

(assert (=> d!1082520 (=> res!1498925 e!2283949)))

(declare-fun lt!1291144 () Bool)

(assert (=> d!1082520 (= res!1498925 (not lt!1291144))))

(declare-fun e!2283951 () Bool)

(assert (=> d!1082520 (= lt!1291144 e!2283951)))

(declare-fun res!1498923 () Bool)

(assert (=> d!1082520 (=> res!1498923 e!2283951)))

(assert (=> d!1082520 (= res!1498923 ((_ is Nil!39029) input!3129))))

(assert (=> d!1082520 (= (isPrefix!3247 input!3129 input!3129) lt!1291144)))

(declare-fun b!3688282 () Bool)

(assert (=> b!3688282 (= e!2283949 (>= (size!29826 input!3129) (size!29826 input!3129)))))

(declare-fun b!3688279 () Bool)

(assert (=> b!3688279 (= e!2283951 e!2283950)))

(declare-fun res!1498922 () Bool)

(assert (=> b!3688279 (=> (not res!1498922) (not e!2283950))))

(assert (=> b!3688279 (= res!1498922 (not ((_ is Nil!39029) input!3129)))))

(declare-fun b!3688281 () Bool)

(assert (=> b!3688281 (= e!2283950 (isPrefix!3247 (tail!5709 input!3129) (tail!5709 input!3129)))))

(assert (= (and d!1082520 (not res!1498923)) b!3688279))

(assert (= (and b!3688279 res!1498922) b!3688280))

(assert (= (and b!3688280 res!1498924) b!3688281))

(assert (= (and d!1082520 (not res!1498925)) b!3688282))

(declare-fun m!4200471 () Bool)

(assert (=> b!3688280 m!4200471))

(assert (=> b!3688280 m!4200471))

(assert (=> b!3688282 m!4200365))

(assert (=> b!3688282 m!4200365))

(declare-fun m!4200473 () Bool)

(assert (=> b!3688281 m!4200473))

(assert (=> b!3688281 m!4200473))

(assert (=> b!3688281 m!4200473))

(assert (=> b!3688281 m!4200473))

(declare-fun m!4200475 () Bool)

(assert (=> b!3688281 m!4200475))

(assert (=> d!1082482 d!1082520))

(declare-fun d!1082522 () Bool)

(assert (=> d!1082522 (isPrefix!3247 input!3129 input!3129)))

(declare-fun lt!1291147 () Unit!57086)

(declare-fun choose!22076 (List!39153 List!39153) Unit!57086)

(assert (=> d!1082522 (= lt!1291147 (choose!22076 input!3129 input!3129))))

(assert (=> d!1082522 (= (lemmaIsPrefixRefl!2034 input!3129 input!3129) lt!1291147)))

(declare-fun bs!573985 () Bool)

(assert (= bs!573985 d!1082522))

(assert (=> bs!573985 m!4200383))

(declare-fun m!4200477 () Bool)

(assert (=> bs!573985 m!4200477))

(assert (=> d!1082482 d!1082522))

(declare-fun d!1082524 () Bool)

(assert (=> d!1082524 true))

(declare-fun lt!1291176 () Bool)

(declare-fun lambda!124920 () Int)

(declare-fun forall!8170 (List!39154 Int) Bool)

(assert (=> d!1082524 (= lt!1291176 (forall!8170 rules!3568 lambda!124920))))

(declare-fun e!2284016 () Bool)

(assert (=> d!1082524 (= lt!1291176 e!2284016)))

(declare-fun res!1498963 () Bool)

(assert (=> d!1082524 (=> res!1498963 e!2284016)))

(assert (=> d!1082524 (= res!1498963 (not ((_ is Cons!39030) rules!3568)))))

(assert (=> d!1082524 (= (rulesValidInductive!2108 thiss!25197 rules!3568) lt!1291176)))

(declare-fun b!3688385 () Bool)

(declare-fun e!2284015 () Bool)

(assert (=> b!3688385 (= e!2284016 e!2284015)))

(declare-fun res!1498962 () Bool)

(assert (=> b!3688385 (=> (not res!1498962) (not e!2284015))))

(declare-fun ruleValid!2130 (LexerInterface!5483 Rule!11588) Bool)

(assert (=> b!3688385 (= res!1498962 (ruleValid!2130 thiss!25197 (h!44450 rules!3568)))))

(declare-fun b!3688386 () Bool)

(assert (=> b!3688386 (= e!2284015 (rulesValidInductive!2108 thiss!25197 (t!301221 rules!3568)))))

(assert (= (and d!1082524 (not res!1498963)) b!3688385))

(assert (= (and b!3688385 res!1498962) b!3688386))

(declare-fun m!4200605 () Bool)

(assert (=> d!1082524 m!4200605))

(declare-fun m!4200607 () Bool)

(assert (=> b!3688385 m!4200607))

(declare-fun m!4200609 () Bool)

(assert (=> b!3688386 m!4200609))

(assert (=> d!1082482 d!1082524))

(declare-fun d!1082610 () Bool)

(declare-fun c!637958 () Bool)

(assert (=> d!1082610 (= c!637958 ((_ is Nil!39029) lt!1291121))))

(declare-fun e!2284019 () (InoxSet C!21492))

(assert (=> d!1082610 (= (content!5655 lt!1291121) e!2284019)))

(declare-fun b!3688393 () Bool)

(assert (=> b!3688393 (= e!2284019 ((as const (Array C!21492 Bool)) false))))

(declare-fun b!3688394 () Bool)

(assert (=> b!3688394 (= e!2284019 ((_ map or) (store ((as const (Array C!21492 Bool)) false) (h!44449 lt!1291121) true) (content!5655 (t!301220 lt!1291121))))))

(assert (= (and d!1082610 c!637958) b!3688393))

(assert (= (and d!1082610 (not c!637958)) b!3688394))

(declare-fun m!4200611 () Bool)

(assert (=> b!3688394 m!4200611))

(declare-fun m!4200613 () Bool)

(assert (=> b!3688394 m!4200613))

(assert (=> d!1082486 d!1082610))

(declare-fun d!1082612 () Bool)

(declare-fun c!637959 () Bool)

(assert (=> d!1082612 (= c!637959 ((_ is Nil!39029) lt!1291056))))

(declare-fun e!2284020 () (InoxSet C!21492))

(assert (=> d!1082612 (= (content!5655 lt!1291056) e!2284020)))

(declare-fun b!3688395 () Bool)

(assert (=> b!3688395 (= e!2284020 ((as const (Array C!21492 Bool)) false))))

(declare-fun b!3688396 () Bool)

(assert (=> b!3688396 (= e!2284020 ((_ map or) (store ((as const (Array C!21492 Bool)) false) (h!44449 lt!1291056) true) (content!5655 (t!301220 lt!1291056))))))

(assert (= (and d!1082612 c!637959) b!3688395))

(assert (= (and d!1082612 (not c!637959)) b!3688396))

(declare-fun m!4200615 () Bool)

(assert (=> b!3688396 m!4200615))

(declare-fun m!4200617 () Bool)

(assert (=> b!3688396 m!4200617))

(assert (=> d!1082486 d!1082612))

(declare-fun d!1082614 () Bool)

(declare-fun c!637960 () Bool)

(assert (=> d!1082614 (= c!637960 ((_ is Nil!39029) (_2!22600 lt!1291054)))))

(declare-fun e!2284021 () (InoxSet C!21492))

(assert (=> d!1082614 (= (content!5655 (_2!22600 lt!1291054)) e!2284021)))

(declare-fun b!3688397 () Bool)

(assert (=> b!3688397 (= e!2284021 ((as const (Array C!21492 Bool)) false))))

(declare-fun b!3688398 () Bool)

(assert (=> b!3688398 (= e!2284021 ((_ map or) (store ((as const (Array C!21492 Bool)) false) (h!44449 (_2!22600 lt!1291054)) true) (content!5655 (t!301220 (_2!22600 lt!1291054)))))))

(assert (= (and d!1082614 c!637960) b!3688397))

(assert (= (and d!1082614 (not c!637960)) b!3688398))

(declare-fun m!4200619 () Bool)

(assert (=> b!3688398 m!4200619))

(declare-fun m!4200621 () Bool)

(assert (=> b!3688398 m!4200621))

(assert (=> d!1082486 d!1082614))

(declare-fun b!3688400 () Bool)

(declare-fun e!2284023 () List!39153)

(assert (=> b!3688400 (= e!2284023 (Cons!39029 (h!44449 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114))))) (++!9721 (t!301220 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114))))) (_2!22600 (get!12942 lt!1291114)))))))

(declare-fun d!1082616 () Bool)

(declare-fun e!2284022 () Bool)

(assert (=> d!1082616 e!2284022))

(declare-fun res!1498965 () Bool)

(assert (=> d!1082616 (=> (not res!1498965) (not e!2284022))))

(declare-fun lt!1291177 () List!39153)

(assert (=> d!1082616 (= res!1498965 (= (content!5655 lt!1291177) ((_ map or) (content!5655 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114))))) (content!5655 (_2!22600 (get!12942 lt!1291114))))))))

(assert (=> d!1082616 (= lt!1291177 e!2284023)))

(declare-fun c!637961 () Bool)

(assert (=> d!1082616 (= c!637961 ((_ is Nil!39029) (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114))))))))

(assert (=> d!1082616 (= (++!9721 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114)))) (_2!22600 (get!12942 lt!1291114))) lt!1291177)))

(declare-fun b!3688401 () Bool)

(declare-fun res!1498964 () Bool)

(assert (=> b!3688401 (=> (not res!1498964) (not e!2284022))))

(assert (=> b!3688401 (= res!1498964 (= (size!29826 lt!1291177) (+ (size!29826 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114))))) (size!29826 (_2!22600 (get!12942 lt!1291114))))))))

(declare-fun b!3688399 () Bool)

(assert (=> b!3688399 (= e!2284023 (_2!22600 (get!12942 lt!1291114)))))

(declare-fun b!3688402 () Bool)

(assert (=> b!3688402 (= e!2284022 (or (not (= (_2!22600 (get!12942 lt!1291114)) Nil!39029)) (= lt!1291177 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114)))))))))

(assert (= (and d!1082616 c!637961) b!3688399))

(assert (= (and d!1082616 (not c!637961)) b!3688400))

(assert (= (and d!1082616 res!1498965) b!3688401))

(assert (= (and b!3688401 res!1498964) b!3688402))

(declare-fun m!4200623 () Bool)

(assert (=> b!3688400 m!4200623))

(declare-fun m!4200625 () Bool)

(assert (=> d!1082616 m!4200625))

(assert (=> d!1082616 m!4200371))

(declare-fun m!4200627 () Bool)

(assert (=> d!1082616 m!4200627))

(declare-fun m!4200629 () Bool)

(assert (=> d!1082616 m!4200629))

(declare-fun m!4200631 () Bool)

(assert (=> b!3688401 m!4200631))

(assert (=> b!3688401 m!4200371))

(declare-fun m!4200633 () Bool)

(assert (=> b!3688401 m!4200633))

(assert (=> b!3688401 m!4200363))

(assert (=> b!3688197 d!1082616))

(declare-fun d!1082618 () Bool)

(assert (=> d!1082618 (= (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114)))) (list!14574 (c!637900 (charsOf!3905 (_1!22600 (get!12942 lt!1291114))))))))

(declare-fun bs!573999 () Bool)

(assert (= bs!573999 d!1082618))

(declare-fun m!4200635 () Bool)

(assert (=> bs!573999 m!4200635))

(assert (=> b!3688197 d!1082618))

(declare-fun d!1082620 () Bool)

(declare-fun lt!1291178 () BalanceConc!23570)

(assert (=> d!1082620 (= (list!14570 lt!1291178) (originalCharacters!6608 (_1!22600 (get!12942 lt!1291114))))))

(assert (=> d!1082620 (= lt!1291178 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114))))) (value!188439 (_1!22600 (get!12942 lt!1291114)))))))

(assert (=> d!1082620 (= (charsOf!3905 (_1!22600 (get!12942 lt!1291114))) lt!1291178)))

(declare-fun b_lambda!109485 () Bool)

(assert (=> (not b_lambda!109485) (not d!1082620)))

(declare-fun t!301240 () Bool)

(declare-fun tb!213805 () Bool)

(assert (=> (and b!3688024 (= (toChars!8069 (transformation!5894 (h!44450 rules!3568))) (toChars!8069 (transformation!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114)))))) t!301240) tb!213805))

(declare-fun b!3688403 () Bool)

(declare-fun e!2284024 () Bool)

(declare-fun tp!1120975 () Bool)

(assert (=> b!3688403 (= e!2284024 (and (inv!52499 (c!637900 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114))))) (value!188439 (_1!22600 (get!12942 lt!1291114)))))) tp!1120975))))

(declare-fun result!260260 () Bool)

(assert (=> tb!213805 (= result!260260 (and (inv!52500 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114))))) (value!188439 (_1!22600 (get!12942 lt!1291114))))) e!2284024))))

(assert (= tb!213805 b!3688403))

(declare-fun m!4200637 () Bool)

(assert (=> b!3688403 m!4200637))

(declare-fun m!4200639 () Bool)

(assert (=> tb!213805 m!4200639))

(assert (=> d!1082620 t!301240))

(declare-fun b_and!275599 () Bool)

(assert (= b_and!275589 (and (=> t!301240 result!260260) b_and!275599)))

(declare-fun t!301242 () Bool)

(declare-fun tb!213807 () Bool)

(assert (=> (and b!3688259 (= (toChars!8069 (transformation!5894 (h!44450 (t!301221 rules!3568)))) (toChars!8069 (transformation!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114)))))) t!301242) tb!213807))

(declare-fun result!260262 () Bool)

(assert (= result!260262 result!260260))

(assert (=> d!1082620 t!301242))

(declare-fun b_and!275601 () Bool)

(assert (= b_and!275593 (and (=> t!301242 result!260262) b_and!275601)))

(declare-fun m!4200641 () Bool)

(assert (=> d!1082620 m!4200641))

(declare-fun m!4200643 () Bool)

(assert (=> d!1082620 m!4200643))

(assert (=> b!3688197 d!1082620))

(declare-fun d!1082622 () Bool)

(assert (=> d!1082622 (= (get!12942 lt!1291114) (v!38347 lt!1291114))))

(assert (=> b!3688197 d!1082622))

(declare-fun d!1082624 () Bool)

(declare-fun isBalanced!3516 (Conc!11978) Bool)

(assert (=> d!1082624 (= (inv!52500 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))) (value!188439 lt!1291051))) (isBalanced!3516 (c!637900 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))) (value!188439 lt!1291051)))))))

(declare-fun bs!574000 () Bool)

(assert (= bs!574000 d!1082624))

(declare-fun m!4200645 () Bool)

(assert (=> bs!574000 m!4200645))

(assert (=> tb!213797 d!1082624))

(declare-fun d!1082626 () Bool)

(declare-fun e!2284027 () Bool)

(assert (=> d!1082626 e!2284027))

(declare-fun res!1498968 () Bool)

(assert (=> d!1082626 (=> (not res!1498968) (not e!2284027))))

(declare-fun lt!1291181 () BalanceConc!23570)

(assert (=> d!1082626 (= res!1498968 (= (list!14570 lt!1291181) input!3129))))

(declare-fun fromList!810 (List!39153) Conc!11978)

(assert (=> d!1082626 (= lt!1291181 (BalanceConc!23571 (fromList!810 input!3129)))))

(assert (=> d!1082626 (= (fromListB!2050 input!3129) lt!1291181)))

(declare-fun b!3688406 () Bool)

(assert (=> b!3688406 (= e!2284027 (isBalanced!3516 (fromList!810 input!3129)))))

(assert (= (and d!1082626 res!1498968) b!3688406))

(declare-fun m!4200647 () Bool)

(assert (=> d!1082626 m!4200647))

(declare-fun m!4200649 () Bool)

(assert (=> d!1082626 m!4200649))

(assert (=> b!3688406 m!4200649))

(assert (=> b!3688406 m!4200649))

(declare-fun m!4200651 () Bool)

(assert (=> b!3688406 m!4200651))

(assert (=> d!1082474 d!1082626))

(declare-fun d!1082628 () Bool)

(assert (=> d!1082628 (= (isEmpty!23234 lt!1291052) (not ((_ is Some!8397) lt!1291052)))))

(assert (=> d!1082498 d!1082628))

(declare-fun b!3688418 () Bool)

(declare-fun e!2284033 () List!39155)

(declare-fun ++!9722 (List!39155 List!39155) List!39155)

(assert (=> b!3688418 (= e!2284033 (++!9722 (list!14575 (left!30444 (c!637901 (_1!22601 lt!1291053)))) (list!14575 (right!30774 (c!637901 (_1!22601 lt!1291053))))))))

(declare-fun b!3688417 () Bool)

(declare-fun list!14577 (IArray!23963) List!39155)

(assert (=> b!3688417 (= e!2284033 (list!14577 (xs!15181 (c!637901 (_1!22601 lt!1291053)))))))

(declare-fun b!3688416 () Bool)

(declare-fun e!2284032 () List!39155)

(assert (=> b!3688416 (= e!2284032 e!2284033)))

(declare-fun c!637968 () Bool)

(assert (=> b!3688416 (= c!637968 ((_ is Leaf!18537) (c!637901 (_1!22601 lt!1291053))))))

(declare-fun b!3688415 () Bool)

(assert (=> b!3688415 (= e!2284032 Nil!39031)))

(declare-fun d!1082630 () Bool)

(declare-fun c!637967 () Bool)

(assert (=> d!1082630 (= c!637967 ((_ is Empty!11979) (c!637901 (_1!22601 lt!1291053))))))

(assert (=> d!1082630 (= (list!14575 (c!637901 (_1!22601 lt!1291053))) e!2284032)))

(assert (= (and d!1082630 c!637967) b!3688415))

(assert (= (and d!1082630 (not c!637967)) b!3688416))

(assert (= (and b!3688416 c!637968) b!3688417))

(assert (= (and b!3688416 (not c!637968)) b!3688418))

(declare-fun m!4200653 () Bool)

(assert (=> b!3688418 m!4200653))

(declare-fun m!4200655 () Bool)

(assert (=> b!3688418 m!4200655))

(assert (=> b!3688418 m!4200653))

(assert (=> b!3688418 m!4200655))

(declare-fun m!4200657 () Bool)

(assert (=> b!3688418 m!4200657))

(declare-fun m!4200659 () Bool)

(assert (=> b!3688417 m!4200659))

(assert (=> d!1082488 d!1082630))

(declare-fun d!1082632 () Bool)

(assert (=> d!1082632 (= (inv!52494 (tag!6706 (h!44450 (t!301221 rules!3568)))) (= (mod (str.len (value!188438 (tag!6706 (h!44450 (t!301221 rules!3568))))) 2) 0))))

(assert (=> b!3688258 d!1082632))

(declare-fun d!1082634 () Bool)

(declare-fun res!1498969 () Bool)

(declare-fun e!2284034 () Bool)

(assert (=> d!1082634 (=> (not res!1498969) (not e!2284034))))

(assert (=> d!1082634 (= res!1498969 (semiInverseModEq!2515 (toChars!8069 (transformation!5894 (h!44450 (t!301221 rules!3568)))) (toValue!8210 (transformation!5894 (h!44450 (t!301221 rules!3568))))))))

(assert (=> d!1082634 (= (inv!52496 (transformation!5894 (h!44450 (t!301221 rules!3568)))) e!2284034)))

(declare-fun b!3688419 () Bool)

(assert (=> b!3688419 (= e!2284034 (equivClasses!2414 (toChars!8069 (transformation!5894 (h!44450 (t!301221 rules!3568)))) (toValue!8210 (transformation!5894 (h!44450 (t!301221 rules!3568))))))))

(assert (= (and d!1082634 res!1498969) b!3688419))

(declare-fun m!4200661 () Bool)

(assert (=> d!1082634 m!4200661))

(declare-fun m!4200663 () Bool)

(assert (=> b!3688419 m!4200663))

(assert (=> b!3688258 d!1082634))

(declare-fun d!1082636 () Bool)

(assert (=> d!1082636 (= (list!14570 (_2!22601 lt!1291100)) (list!14574 (c!637900 (_2!22601 lt!1291100))))))

(declare-fun bs!574001 () Bool)

(assert (= bs!574001 d!1082636))

(declare-fun m!4200665 () Bool)

(assert (=> bs!574001 m!4200665))

(assert (=> b!3688160 d!1082636))

(declare-fun b!3688448 () Bool)

(declare-fun e!2284050 () tuple2!38938)

(assert (=> b!3688448 (= e!2284050 (tuple2!38939 Nil!39031 (list!14570 (seqFromList!4443 input!3129))))))

(declare-fun d!1082638 () Bool)

(declare-fun e!2284051 () Bool)

(assert (=> d!1082638 e!2284051))

(declare-fun c!637975 () Bool)

(declare-fun lt!1291200 () tuple2!38938)

(declare-fun size!29829 (List!39155) Int)

(assert (=> d!1082638 (= c!637975 (> (size!29829 (_1!22603 lt!1291200)) 0))))

(assert (=> d!1082638 (= lt!1291200 e!2284050)))

(declare-fun c!637976 () Bool)

(declare-fun lt!1291199 () Option!8398)

(assert (=> d!1082638 (= c!637976 ((_ is Some!8397) lt!1291199))))

(assert (=> d!1082638 (= lt!1291199 (maxPrefix!3011 thiss!25197 rules!3568 (list!14570 (seqFromList!4443 input!3129))))))

(assert (=> d!1082638 (= (lexList!1534 thiss!25197 rules!3568 (list!14570 (seqFromList!4443 input!3129))) lt!1291200)))

(declare-fun b!3688449 () Bool)

(declare-fun e!2284049 () Bool)

(assert (=> b!3688449 (= e!2284051 e!2284049)))

(declare-fun res!1498986 () Bool)

(assert (=> b!3688449 (= res!1498986 (< (size!29826 (_2!22603 lt!1291200)) (size!29826 (list!14570 (seqFromList!4443 input!3129)))))))

(assert (=> b!3688449 (=> (not res!1498986) (not e!2284049))))

(declare-fun b!3688450 () Bool)

(assert (=> b!3688450 (= e!2284051 (= (_2!22603 lt!1291200) (list!14570 (seqFromList!4443 input!3129))))))

(declare-fun b!3688451 () Bool)

(assert (=> b!3688451 (= e!2284049 (not (isEmpty!23232 (_1!22603 lt!1291200))))))

(declare-fun b!3688452 () Bool)

(declare-fun lt!1291198 () tuple2!38938)

(assert (=> b!3688452 (= e!2284050 (tuple2!38939 (Cons!39031 (_1!22600 (v!38347 lt!1291199)) (_1!22603 lt!1291198)) (_2!22603 lt!1291198)))))

(assert (=> b!3688452 (= lt!1291198 (lexList!1534 thiss!25197 rules!3568 (_2!22600 (v!38347 lt!1291199))))))

(assert (= (and d!1082638 c!637976) b!3688452))

(assert (= (and d!1082638 (not c!637976)) b!3688448))

(assert (= (and d!1082638 c!637975) b!3688449))

(assert (= (and d!1082638 (not c!637975)) b!3688450))

(assert (= (and b!3688449 res!1498986) b!3688451))

(declare-fun m!4200667 () Bool)

(assert (=> d!1082638 m!4200667))

(assert (=> d!1082638 m!4200331))

(declare-fun m!4200669 () Bool)

(assert (=> d!1082638 m!4200669))

(declare-fun m!4200671 () Bool)

(assert (=> b!3688449 m!4200671))

(assert (=> b!3688449 m!4200331))

(declare-fun m!4200673 () Bool)

(assert (=> b!3688449 m!4200673))

(declare-fun m!4200675 () Bool)

(assert (=> b!3688451 m!4200675))

(declare-fun m!4200677 () Bool)

(assert (=> b!3688452 m!4200677))

(assert (=> b!3688160 d!1082638))

(declare-fun d!1082640 () Bool)

(assert (=> d!1082640 (= (list!14570 (seqFromList!4443 input!3129)) (list!14574 (c!637900 (seqFromList!4443 input!3129))))))

(declare-fun bs!574002 () Bool)

(assert (= bs!574002 d!1082640))

(declare-fun m!4200679 () Bool)

(assert (=> bs!574002 m!4200679))

(assert (=> b!3688160 d!1082640))

(declare-fun d!1082642 () Bool)

(declare-fun lt!1291208 () Int)

(assert (=> d!1082642 (= lt!1291208 (size!29826 (list!14570 (_2!22601 lt!1291100))))))

(declare-fun size!29830 (Conc!11978) Int)

(assert (=> d!1082642 (= lt!1291208 (size!29830 (c!637900 (_2!22601 lt!1291100))))))

(assert (=> d!1082642 (= (size!29825 (_2!22601 lt!1291100)) lt!1291208)))

(declare-fun bs!574003 () Bool)

(assert (= bs!574003 d!1082642))

(assert (=> bs!574003 m!4200339))

(assert (=> bs!574003 m!4200339))

(declare-fun m!4200681 () Bool)

(assert (=> bs!574003 m!4200681))

(declare-fun m!4200683 () Bool)

(assert (=> bs!574003 m!4200683))

(assert (=> b!3688159 d!1082642))

(declare-fun d!1082644 () Bool)

(declare-fun lt!1291209 () Int)

(assert (=> d!1082644 (= lt!1291209 (size!29826 (list!14570 (seqFromList!4443 input!3129))))))

(assert (=> d!1082644 (= lt!1291209 (size!29830 (c!637900 (seqFromList!4443 input!3129))))))

(assert (=> d!1082644 (= (size!29825 (seqFromList!4443 input!3129)) lt!1291209)))

(declare-fun bs!574004 () Bool)

(assert (= bs!574004 d!1082644))

(assert (=> bs!574004 m!4200151))

(assert (=> bs!574004 m!4200331))

(assert (=> bs!574004 m!4200331))

(assert (=> bs!574004 m!4200673))

(declare-fun m!4200685 () Bool)

(assert (=> bs!574004 m!4200685))

(assert (=> b!3688159 d!1082644))

(declare-fun d!1082646 () Bool)

(declare-fun c!637982 () Bool)

(assert (=> d!1082646 (= c!637982 ((_ is Node!11978) (c!637900 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))) (value!188439 lt!1291051)))))))

(declare-fun e!2284067 () Bool)

(assert (=> d!1082646 (= (inv!52499 (c!637900 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))) (value!188439 lt!1291051)))) e!2284067)))

(declare-fun b!3688482 () Bool)

(declare-fun inv!52503 (Conc!11978) Bool)

(assert (=> b!3688482 (= e!2284067 (inv!52503 (c!637900 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))) (value!188439 lt!1291051)))))))

(declare-fun b!3688484 () Bool)

(declare-fun e!2284068 () Bool)

(assert (=> b!3688484 (= e!2284067 e!2284068)))

(declare-fun res!1499007 () Bool)

(assert (=> b!3688484 (= res!1499007 (not ((_ is Leaf!18536) (c!637900 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))) (value!188439 lt!1291051))))))))

(assert (=> b!3688484 (=> res!1499007 e!2284068)))

(declare-fun b!3688485 () Bool)

(declare-fun inv!52504 (Conc!11978) Bool)

(assert (=> b!3688485 (= e!2284068 (inv!52504 (c!637900 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))) (value!188439 lt!1291051)))))))

(assert (= (and d!1082646 c!637982) b!3688482))

(assert (= (and d!1082646 (not c!637982)) b!3688484))

(assert (= (and b!3688484 (not res!1499007)) b!3688485))

(declare-fun m!4200739 () Bool)

(assert (=> b!3688482 m!4200739))

(declare-fun m!4200741 () Bool)

(assert (=> b!3688485 m!4200741))

(assert (=> b!3688170 d!1082646))

(declare-fun d!1082656 () Bool)

(assert (=> d!1082656 (= (isEmpty!23232 (list!14571 (_1!22601 lt!1291053))) ((_ is Nil!39031) (list!14571 (_1!22601 lt!1291053))))))

(assert (=> d!1082440 d!1082656))

(assert (=> d!1082440 d!1082488))

(declare-fun d!1082658 () Bool)

(declare-fun lt!1291219 () Bool)

(assert (=> d!1082658 (= lt!1291219 (isEmpty!23232 (list!14575 (c!637901 (_1!22601 lt!1291053)))))))

(declare-fun size!29831 (Conc!11979) Int)

(assert (=> d!1082658 (= lt!1291219 (= (size!29831 (c!637901 (_1!22601 lt!1291053))) 0))))

(assert (=> d!1082658 (= (isEmpty!23233 (c!637901 (_1!22601 lt!1291053))) lt!1291219)))

(declare-fun bs!574005 () Bool)

(assert (= bs!574005 d!1082658))

(assert (=> bs!574005 m!4200411))

(assert (=> bs!574005 m!4200411))

(declare-fun m!4200765 () Bool)

(assert (=> bs!574005 m!4200765))

(declare-fun m!4200767 () Bool)

(assert (=> bs!574005 m!4200767))

(assert (=> d!1082440 d!1082658))

(declare-fun d!1082660 () Bool)

(declare-fun lt!1291220 () Bool)

(assert (=> d!1082660 (= lt!1291220 (isEmpty!23232 (list!14571 (_1!22601 lt!1291100))))))

(assert (=> d!1082660 (= lt!1291220 (isEmpty!23233 (c!637901 (_1!22601 lt!1291100))))))

(assert (=> d!1082660 (= (isEmpty!23228 (_1!22601 lt!1291100)) lt!1291220)))

(declare-fun bs!574006 () Bool)

(assert (= bs!574006 d!1082660))

(assert (=> bs!574006 m!4200329))

(assert (=> bs!574006 m!4200329))

(declare-fun m!4200769 () Bool)

(assert (=> bs!574006 m!4200769))

(declare-fun m!4200771 () Bool)

(assert (=> bs!574006 m!4200771))

(assert (=> b!3688158 d!1082660))

(declare-fun d!1082662 () Bool)

(assert (=> d!1082662 true))

(declare-fun lambda!124923 () Int)

(declare-fun order!21629 () Int)

(declare-fun order!21627 () Int)

(declare-fun dynLambda!17104 (Int Int) Int)

(declare-fun dynLambda!17105 (Int Int) Int)

(assert (=> d!1082662 (< (dynLambda!17104 order!21627 (toChars!8069 (transformation!5894 (h!44450 rules!3568)))) (dynLambda!17105 order!21629 lambda!124923))))

(assert (=> d!1082662 true))

(declare-fun order!21631 () Int)

(declare-fun dynLambda!17106 (Int Int) Int)

(assert (=> d!1082662 (< (dynLambda!17106 order!21631 (toValue!8210 (transformation!5894 (h!44450 rules!3568)))) (dynLambda!17105 order!21629 lambda!124923))))

(declare-fun Forall!1382 (Int) Bool)

(assert (=> d!1082662 (= (semiInverseModEq!2515 (toChars!8069 (transformation!5894 (h!44450 rules!3568))) (toValue!8210 (transformation!5894 (h!44450 rules!3568)))) (Forall!1382 lambda!124923))))

(declare-fun bs!574008 () Bool)

(assert (= bs!574008 d!1082662))

(declare-fun m!4200787 () Bool)

(assert (=> bs!574008 m!4200787))

(assert (=> d!1082436 d!1082662))

(declare-fun b!3688515 () Bool)

(declare-fun e!2284084 () List!39153)

(assert (=> b!3688515 (= e!2284084 (++!9721 (list!14574 (left!30443 (c!637900 (charsOf!3905 lt!1291051)))) (list!14574 (right!30773 (c!637900 (charsOf!3905 lt!1291051))))))))

(declare-fun d!1082670 () Bool)

(declare-fun c!637991 () Bool)

(assert (=> d!1082670 (= c!637991 ((_ is Empty!11978) (c!637900 (charsOf!3905 lt!1291051))))))

(declare-fun e!2284083 () List!39153)

(assert (=> d!1082670 (= (list!14574 (c!637900 (charsOf!3905 lt!1291051))) e!2284083)))

(declare-fun b!3688514 () Bool)

(declare-fun list!14578 (IArray!23961) List!39153)

(assert (=> b!3688514 (= e!2284084 (list!14578 (xs!15180 (c!637900 (charsOf!3905 lt!1291051)))))))

(declare-fun b!3688512 () Bool)

(assert (=> b!3688512 (= e!2284083 Nil!39029)))

(declare-fun b!3688513 () Bool)

(assert (=> b!3688513 (= e!2284083 e!2284084)))

(declare-fun c!637992 () Bool)

(assert (=> b!3688513 (= c!637992 ((_ is Leaf!18536) (c!637900 (charsOf!3905 lt!1291051))))))

(assert (= (and d!1082670 c!637991) b!3688512))

(assert (= (and d!1082670 (not c!637991)) b!3688513))

(assert (= (and b!3688513 c!637992) b!3688514))

(assert (= (and b!3688513 (not c!637992)) b!3688515))

(declare-fun m!4200789 () Bool)

(assert (=> b!3688515 m!4200789))

(declare-fun m!4200791 () Bool)

(assert (=> b!3688515 m!4200791))

(assert (=> b!3688515 m!4200789))

(assert (=> b!3688515 m!4200791))

(declare-fun m!4200793 () Bool)

(assert (=> b!3688515 m!4200793))

(declare-fun m!4200797 () Bool)

(assert (=> b!3688514 m!4200797))

(assert (=> d!1082484 d!1082670))

(declare-fun d!1082672 () Bool)

(declare-fun lt!1291232 () Bool)

(declare-fun content!5656 (List!39154) (InoxSet Rule!11588))

(assert (=> d!1082672 (= lt!1291232 (select (content!5656 rules!3568) (rule!8740 (_1!22600 (get!12942 lt!1291114)))))))

(declare-fun e!2284094 () Bool)

(assert (=> d!1082672 (= lt!1291232 e!2284094)))

(declare-fun res!1499021 () Bool)

(assert (=> d!1082672 (=> (not res!1499021) (not e!2284094))))

(assert (=> d!1082672 (= res!1499021 ((_ is Cons!39030) rules!3568))))

(assert (=> d!1082672 (= (contains!7793 rules!3568 (rule!8740 (_1!22600 (get!12942 lt!1291114)))) lt!1291232)))

(declare-fun b!3688528 () Bool)

(declare-fun e!2284093 () Bool)

(assert (=> b!3688528 (= e!2284094 e!2284093)))

(declare-fun res!1499020 () Bool)

(assert (=> b!3688528 (=> res!1499020 e!2284093)))

(assert (=> b!3688528 (= res!1499020 (= (h!44450 rules!3568) (rule!8740 (_1!22600 (get!12942 lt!1291114)))))))

(declare-fun b!3688529 () Bool)

(assert (=> b!3688529 (= e!2284093 (contains!7793 (t!301221 rules!3568) (rule!8740 (_1!22600 (get!12942 lt!1291114)))))))

(assert (= (and d!1082672 res!1499021) b!3688528))

(assert (= (and b!3688528 (not res!1499020)) b!3688529))

(declare-fun m!4200811 () Bool)

(assert (=> d!1082672 m!4200811))

(declare-fun m!4200813 () Bool)

(assert (=> d!1082672 m!4200813))

(declare-fun m!4200815 () Bool)

(assert (=> b!3688529 m!4200815))

(assert (=> b!3688191 d!1082672))

(assert (=> b!3688191 d!1082622))

(declare-fun d!1082680 () Bool)

(declare-fun lt!1291236 () Int)

(assert (=> d!1082680 (>= lt!1291236 0)))

(declare-fun e!2284098 () Int)

(assert (=> d!1082680 (= lt!1291236 e!2284098)))

(declare-fun c!637998 () Bool)

(assert (=> d!1082680 (= c!637998 ((_ is Nil!39029) (++!9721 input!3129 suffix!1448)))))

(assert (=> d!1082680 (= (size!29826 (++!9721 input!3129 suffix!1448)) lt!1291236)))

(declare-fun b!3688535 () Bool)

(assert (=> b!3688535 (= e!2284098 0)))

(declare-fun b!3688536 () Bool)

(assert (=> b!3688536 (= e!2284098 (+ 1 (size!29826 (t!301220 (++!9721 input!3129 suffix!1448)))))))

(assert (= (and d!1082680 c!637998) b!3688535))

(assert (= (and d!1082680 (not c!637998)) b!3688536))

(declare-fun m!4200839 () Bool)

(assert (=> b!3688536 m!4200839))

(assert (=> b!3688225 d!1082680))

(declare-fun d!1082688 () Bool)

(declare-fun lt!1291237 () Int)

(assert (=> d!1082688 (>= lt!1291237 0)))

(declare-fun e!2284099 () Int)

(assert (=> d!1082688 (= lt!1291237 e!2284099)))

(declare-fun c!637999 () Bool)

(assert (=> d!1082688 (= c!637999 ((_ is Nil!39029) lt!1291056))))

(assert (=> d!1082688 (= (size!29826 lt!1291056) lt!1291237)))

(declare-fun b!3688537 () Bool)

(assert (=> b!3688537 (= e!2284099 0)))

(declare-fun b!3688538 () Bool)

(assert (=> b!3688538 (= e!2284099 (+ 1 (size!29826 (t!301220 lt!1291056))))))

(assert (= (and d!1082688 c!637999) b!3688537))

(assert (= (and d!1082688 (not c!637999)) b!3688538))

(declare-fun m!4200841 () Bool)

(assert (=> b!3688538 m!4200841))

(assert (=> b!3688225 d!1082688))

(declare-fun d!1082690 () Bool)

(declare-fun lt!1291238 () Int)

(assert (=> d!1082690 (>= lt!1291238 0)))

(declare-fun e!2284100 () Int)

(assert (=> d!1082690 (= lt!1291238 e!2284100)))

(declare-fun c!638000 () Bool)

(assert (=> d!1082690 (= c!638000 ((_ is Nil!39029) (_2!22600 (get!12942 lt!1291114))))))

(assert (=> d!1082690 (= (size!29826 (_2!22600 (get!12942 lt!1291114))) lt!1291238)))

(declare-fun b!3688539 () Bool)

(assert (=> b!3688539 (= e!2284100 0)))

(declare-fun b!3688540 () Bool)

(assert (=> b!3688540 (= e!2284100 (+ 1 (size!29826 (t!301220 (_2!22600 (get!12942 lt!1291114))))))))

(assert (= (and d!1082690 c!638000) b!3688539))

(assert (= (and d!1082690 (not c!638000)) b!3688540))

(declare-fun m!4200843 () Bool)

(assert (=> b!3688540 m!4200843))

(assert (=> b!3688190 d!1082690))

(assert (=> b!3688190 d!1082622))

(declare-fun d!1082692 () Bool)

(declare-fun lt!1291239 () Int)

(assert (=> d!1082692 (>= lt!1291239 0)))

(declare-fun e!2284101 () Int)

(assert (=> d!1082692 (= lt!1291239 e!2284101)))

(declare-fun c!638001 () Bool)

(assert (=> d!1082692 (= c!638001 ((_ is Nil!39029) input!3129))))

(assert (=> d!1082692 (= (size!29826 input!3129) lt!1291239)))

(declare-fun b!3688541 () Bool)

(assert (=> b!3688541 (= e!2284101 0)))

(declare-fun b!3688542 () Bool)

(assert (=> b!3688542 (= e!2284101 (+ 1 (size!29826 (t!301220 input!3129))))))

(assert (= (and d!1082692 c!638001) b!3688541))

(assert (= (and d!1082692 (not c!638001)) b!3688542))

(declare-fun m!4200845 () Bool)

(assert (=> b!3688542 m!4200845))

(assert (=> b!3688190 d!1082692))

(declare-fun b!3688544 () Bool)

(declare-fun res!1499024 () Bool)

(declare-fun e!2284103 () Bool)

(assert (=> b!3688544 (=> (not res!1499024) (not e!2284103))))

(assert (=> b!3688544 (= res!1499024 (= (head!7960 (tail!5709 lt!1291056)) (head!7960 (tail!5709 (++!9721 input!3129 suffix!1448)))))))

(declare-fun d!1082694 () Bool)

(declare-fun e!2284102 () Bool)

(assert (=> d!1082694 e!2284102))

(declare-fun res!1499025 () Bool)

(assert (=> d!1082694 (=> res!1499025 e!2284102)))

(declare-fun lt!1291240 () Bool)

(assert (=> d!1082694 (= res!1499025 (not lt!1291240))))

(declare-fun e!2284104 () Bool)

(assert (=> d!1082694 (= lt!1291240 e!2284104)))

(declare-fun res!1499023 () Bool)

(assert (=> d!1082694 (=> res!1499023 e!2284104)))

(assert (=> d!1082694 (= res!1499023 ((_ is Nil!39029) (tail!5709 lt!1291056)))))

(assert (=> d!1082694 (= (isPrefix!3247 (tail!5709 lt!1291056) (tail!5709 (++!9721 input!3129 suffix!1448))) lt!1291240)))

(declare-fun b!3688546 () Bool)

(assert (=> b!3688546 (= e!2284102 (>= (size!29826 (tail!5709 (++!9721 input!3129 suffix!1448))) (size!29826 (tail!5709 lt!1291056))))))

(declare-fun b!3688543 () Bool)

(assert (=> b!3688543 (= e!2284104 e!2284103)))

(declare-fun res!1499022 () Bool)

(assert (=> b!3688543 (=> (not res!1499022) (not e!2284103))))

(assert (=> b!3688543 (= res!1499022 (not ((_ is Nil!39029) (tail!5709 (++!9721 input!3129 suffix!1448)))))))

(declare-fun b!3688545 () Bool)

(assert (=> b!3688545 (= e!2284103 (isPrefix!3247 (tail!5709 (tail!5709 lt!1291056)) (tail!5709 (tail!5709 (++!9721 input!3129 suffix!1448)))))))

(assert (= (and d!1082694 (not res!1499023)) b!3688543))

(assert (= (and b!3688543 res!1499022) b!3688544))

(assert (= (and b!3688544 res!1499024) b!3688545))

(assert (= (and d!1082694 (not res!1499025)) b!3688546))

(assert (=> b!3688544 m!4200439))

(declare-fun m!4200849 () Bool)

(assert (=> b!3688544 m!4200849))

(assert (=> b!3688544 m!4200441))

(declare-fun m!4200851 () Bool)

(assert (=> b!3688544 m!4200851))

(assert (=> b!3688546 m!4200441))

(declare-fun m!4200853 () Bool)

(assert (=> b!3688546 m!4200853))

(assert (=> b!3688546 m!4200439))

(declare-fun m!4200855 () Bool)

(assert (=> b!3688546 m!4200855))

(assert (=> b!3688545 m!4200439))

(declare-fun m!4200857 () Bool)

(assert (=> b!3688545 m!4200857))

(assert (=> b!3688545 m!4200441))

(declare-fun m!4200859 () Bool)

(assert (=> b!3688545 m!4200859))

(assert (=> b!3688545 m!4200857))

(assert (=> b!3688545 m!4200859))

(declare-fun m!4200861 () Bool)

(assert (=> b!3688545 m!4200861))

(assert (=> b!3688224 d!1082694))

(declare-fun d!1082698 () Bool)

(assert (=> d!1082698 (= (tail!5709 lt!1291056) (t!301220 lt!1291056))))

(assert (=> b!3688224 d!1082698))

(declare-fun d!1082700 () Bool)

(assert (=> d!1082700 (= (tail!5709 (++!9721 input!3129 suffix!1448)) (t!301220 (++!9721 input!3129 suffix!1448)))))

(assert (=> b!3688224 d!1082700))

(assert (=> d!1082494 d!1082502))

(assert (=> d!1082494 d!1082486))

(declare-fun d!1082702 () Bool)

(assert (=> d!1082702 (isPrefix!3247 lt!1291056 (++!9721 lt!1291056 (_2!22600 lt!1291054)))))

(assert (=> d!1082702 true))

(declare-fun _$46!1493 () Unit!57086)

(assert (=> d!1082702 (= (choose!22074 lt!1291056 (_2!22600 lt!1291054)) _$46!1493)))

(declare-fun bs!574014 () Bool)

(assert (= bs!574014 d!1082702))

(assert (=> bs!574014 m!4200165))

(assert (=> bs!574014 m!4200165))

(assert (=> bs!574014 m!4200167))

(assert (=> d!1082494 d!1082702))

(declare-fun d!1082706 () Bool)

(declare-fun lt!1291244 () Int)

(assert (=> d!1082706 (>= lt!1291244 0)))

(declare-fun e!2284105 () Int)

(assert (=> d!1082706 (= lt!1291244 e!2284105)))

(declare-fun c!638002 () Bool)

(assert (=> d!1082706 (= c!638002 ((_ is Nil!39029) lt!1291121))))

(assert (=> d!1082706 (= (size!29826 lt!1291121) lt!1291244)))

(declare-fun b!3688547 () Bool)

(assert (=> b!3688547 (= e!2284105 0)))

(declare-fun b!3688548 () Bool)

(assert (=> b!3688548 (= e!2284105 (+ 1 (size!29826 (t!301220 lt!1291121))))))

(assert (= (and d!1082706 c!638002) b!3688547))

(assert (= (and d!1082706 (not c!638002)) b!3688548))

(declare-fun m!4200867 () Bool)

(assert (=> b!3688548 m!4200867))

(assert (=> b!3688208 d!1082706))

(assert (=> b!3688208 d!1082688))

(declare-fun d!1082708 () Bool)

(declare-fun lt!1291245 () Int)

(assert (=> d!1082708 (>= lt!1291245 0)))

(declare-fun e!2284106 () Int)

(assert (=> d!1082708 (= lt!1291245 e!2284106)))

(declare-fun c!638003 () Bool)

(assert (=> d!1082708 (= c!638003 ((_ is Nil!39029) (_2!22600 lt!1291054)))))

(assert (=> d!1082708 (= (size!29826 (_2!22600 lt!1291054)) lt!1291245)))

(declare-fun b!3688549 () Bool)

(assert (=> b!3688549 (= e!2284106 0)))

(declare-fun b!3688550 () Bool)

(assert (=> b!3688550 (= e!2284106 (+ 1 (size!29826 (t!301220 (_2!22600 lt!1291054)))))))

(assert (= (and d!1082708 c!638003) b!3688549))

(assert (= (and d!1082708 (not c!638003)) b!3688550))

(declare-fun m!4200869 () Bool)

(assert (=> b!3688550 m!4200869))

(assert (=> b!3688208 d!1082708))

(declare-fun d!1082710 () Bool)

(assert (=> d!1082710 (= (isDefined!6597 lt!1291114) (not (isEmpty!23234 lt!1291114)))))

(declare-fun bs!574015 () Bool)

(assert (= bs!574015 d!1082710))

(assert (=> bs!574015 m!4200381))

(assert (=> b!3688189 d!1082710))

(declare-fun d!1082712 () Bool)

(assert (=> d!1082712 (= (head!7960 lt!1291056) (h!44449 lt!1291056))))

(assert (=> b!3688223 d!1082712))

(declare-fun d!1082714 () Bool)

(assert (=> d!1082714 (= (head!7960 (++!9721 input!3129 suffix!1448)) (h!44449 (++!9721 input!3129 suffix!1448)))))

(assert (=> b!3688223 d!1082714))

(declare-fun b!3688552 () Bool)

(declare-fun e!2284108 () List!39153)

(assert (=> b!3688552 (= e!2284108 (Cons!39029 (h!44449 (t!301220 lt!1291056)) (++!9721 (t!301220 (t!301220 lt!1291056)) (_2!22600 lt!1291054))))))

(declare-fun d!1082716 () Bool)

(declare-fun e!2284107 () Bool)

(assert (=> d!1082716 e!2284107))

(declare-fun res!1499027 () Bool)

(assert (=> d!1082716 (=> (not res!1499027) (not e!2284107))))

(declare-fun lt!1291246 () List!39153)

(assert (=> d!1082716 (= res!1499027 (= (content!5655 lt!1291246) ((_ map or) (content!5655 (t!301220 lt!1291056)) (content!5655 (_2!22600 lt!1291054)))))))

(assert (=> d!1082716 (= lt!1291246 e!2284108)))

(declare-fun c!638004 () Bool)

(assert (=> d!1082716 (= c!638004 ((_ is Nil!39029) (t!301220 lt!1291056)))))

(assert (=> d!1082716 (= (++!9721 (t!301220 lt!1291056) (_2!22600 lt!1291054)) lt!1291246)))

(declare-fun b!3688553 () Bool)

(declare-fun res!1499026 () Bool)

(assert (=> b!3688553 (=> (not res!1499026) (not e!2284107))))

(assert (=> b!3688553 (= res!1499026 (= (size!29826 lt!1291246) (+ (size!29826 (t!301220 lt!1291056)) (size!29826 (_2!22600 lt!1291054)))))))

(declare-fun b!3688551 () Bool)

(assert (=> b!3688551 (= e!2284108 (_2!22600 lt!1291054))))

(declare-fun b!3688554 () Bool)

(assert (=> b!3688554 (= e!2284107 (or (not (= (_2!22600 lt!1291054) Nil!39029)) (= lt!1291246 (t!301220 lt!1291056))))))

(assert (= (and d!1082716 c!638004) b!3688551))

(assert (= (and d!1082716 (not c!638004)) b!3688552))

(assert (= (and d!1082716 res!1499027) b!3688553))

(assert (= (and b!3688553 res!1499026) b!3688554))

(declare-fun m!4200871 () Bool)

(assert (=> b!3688552 m!4200871))

(declare-fun m!4200873 () Bool)

(assert (=> d!1082716 m!4200873))

(assert (=> d!1082716 m!4200617))

(assert (=> d!1082716 m!4200403))

(declare-fun m!4200875 () Bool)

(assert (=> b!3688553 m!4200875))

(assert (=> b!3688553 m!4200841))

(assert (=> b!3688553 m!4200409))

(assert (=> b!3688207 d!1082716))

(declare-fun d!1082718 () Bool)

(declare-fun res!1499032 () Bool)

(declare-fun e!2284113 () Bool)

(assert (=> d!1082718 (=> res!1499032 e!2284113)))

(assert (=> d!1082718 (= res!1499032 ((_ is Nil!39030) rules!3568))))

(assert (=> d!1082718 (= (noDuplicateTag!2268 thiss!25197 rules!3568 Nil!39033) e!2284113)))

(declare-fun b!3688559 () Bool)

(declare-fun e!2284114 () Bool)

(assert (=> b!3688559 (= e!2284113 e!2284114)))

(declare-fun res!1499033 () Bool)

(assert (=> b!3688559 (=> (not res!1499033) (not e!2284114))))

(declare-fun contains!7795 (List!39157 String!43954) Bool)

(assert (=> b!3688559 (= res!1499033 (not (contains!7795 Nil!39033 (tag!6706 (h!44450 rules!3568)))))))

(declare-fun b!3688560 () Bool)

(assert (=> b!3688560 (= e!2284114 (noDuplicateTag!2268 thiss!25197 (t!301221 rules!3568) (Cons!39033 (tag!6706 (h!44450 rules!3568)) Nil!39033)))))

(assert (= (and d!1082718 (not res!1499032)) b!3688559))

(assert (= (and b!3688559 res!1499033) b!3688560))

(declare-fun m!4200877 () Bool)

(assert (=> b!3688559 m!4200877))

(declare-fun m!4200879 () Bool)

(assert (=> b!3688560 m!4200879))

(assert (=> b!3688165 d!1082718))

(declare-fun d!1082720 () Bool)

(assert (=> d!1082720 (= (list!14571 (_1!22601 lt!1291100)) (list!14575 (c!637901 (_1!22601 lt!1291100))))))

(declare-fun bs!574016 () Bool)

(assert (= bs!574016 d!1082720))

(declare-fun m!4200881 () Bool)

(assert (=> bs!574016 m!4200881))

(assert (=> b!3688162 d!1082720))

(assert (=> b!3688162 d!1082638))

(assert (=> b!3688162 d!1082640))

(declare-fun d!1082722 () Bool)

(declare-fun c!638005 () Bool)

(assert (=> d!1082722 (= c!638005 ((_ is Nil!39029) lt!1291125))))

(declare-fun e!2284115 () (InoxSet C!21492))

(assert (=> d!1082722 (= (content!5655 lt!1291125) e!2284115)))

(declare-fun b!3688561 () Bool)

(assert (=> b!3688561 (= e!2284115 ((as const (Array C!21492 Bool)) false))))

(declare-fun b!3688562 () Bool)

(assert (=> b!3688562 (= e!2284115 ((_ map or) (store ((as const (Array C!21492 Bool)) false) (h!44449 lt!1291125) true) (content!5655 (t!301220 lt!1291125))))))

(assert (= (and d!1082722 c!638005) b!3688561))

(assert (= (and d!1082722 (not c!638005)) b!3688562))

(declare-fun m!4200883 () Bool)

(assert (=> b!3688562 m!4200883))

(declare-fun m!4200885 () Bool)

(assert (=> b!3688562 m!4200885))

(assert (=> d!1082492 d!1082722))

(declare-fun d!1082724 () Bool)

(declare-fun c!638006 () Bool)

(assert (=> d!1082724 (= c!638006 ((_ is Nil!39029) input!3129))))

(declare-fun e!2284116 () (InoxSet C!21492))

(assert (=> d!1082724 (= (content!5655 input!3129) e!2284116)))

(declare-fun b!3688563 () Bool)

(assert (=> b!3688563 (= e!2284116 ((as const (Array C!21492 Bool)) false))))

(declare-fun b!3688564 () Bool)

(assert (=> b!3688564 (= e!2284116 ((_ map or) (store ((as const (Array C!21492 Bool)) false) (h!44449 input!3129) true) (content!5655 (t!301220 input!3129))))))

(assert (= (and d!1082724 c!638006) b!3688563))

(assert (= (and d!1082724 (not c!638006)) b!3688564))

(declare-fun m!4200887 () Bool)

(assert (=> b!3688564 m!4200887))

(declare-fun m!4200889 () Bool)

(assert (=> b!3688564 m!4200889))

(assert (=> d!1082492 d!1082724))

(declare-fun d!1082726 () Bool)

(declare-fun c!638007 () Bool)

(assert (=> d!1082726 (= c!638007 ((_ is Nil!39029) suffix!1448))))

(declare-fun e!2284117 () (InoxSet C!21492))

(assert (=> d!1082726 (= (content!5655 suffix!1448) e!2284117)))

(declare-fun b!3688565 () Bool)

(assert (=> b!3688565 (= e!2284117 ((as const (Array C!21492 Bool)) false))))

(declare-fun b!3688566 () Bool)

(assert (=> b!3688566 (= e!2284117 ((_ map or) (store ((as const (Array C!21492 Bool)) false) (h!44449 suffix!1448) true) (content!5655 (t!301220 suffix!1448))))))

(assert (= (and d!1082726 c!638007) b!3688565))

(assert (= (and d!1082726 (not c!638007)) b!3688566))

(declare-fun m!4200891 () Bool)

(assert (=> b!3688566 m!4200891))

(declare-fun m!4200893 () Bool)

(assert (=> b!3688566 m!4200893))

(assert (=> d!1082492 d!1082726))

(declare-fun d!1082728 () Bool)

(declare-fun e!2284133 () Bool)

(assert (=> d!1082728 e!2284133))

(declare-fun c!638014 () Bool)

(assert (=> d!1082728 (= c!638014 ((_ is EmptyExpr!10653) (regex!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114))))))))

(declare-fun lt!1291249 () Bool)

(declare-fun e!2284132 () Bool)

(assert (=> d!1082728 (= lt!1291249 e!2284132)))

(declare-fun c!638016 () Bool)

(declare-fun isEmpty!23236 (List!39153) Bool)

(assert (=> d!1082728 (= c!638016 (isEmpty!23236 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114))))))))

(declare-fun validRegex!4874 (Regex!10653) Bool)

(assert (=> d!1082728 (validRegex!4874 (regex!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114)))))))

(assert (=> d!1082728 (= (matchR!5208 (regex!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114)))) (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114))))) lt!1291249)))

(declare-fun bm!266875 () Bool)

(declare-fun call!266880 () Bool)

(assert (=> bm!266875 (= call!266880 (isEmpty!23236 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114))))))))

(declare-fun b!3688595 () Bool)

(declare-fun res!1499055 () Bool)

(declare-fun e!2284137 () Bool)

(assert (=> b!3688595 (=> (not res!1499055) (not e!2284137))))

(assert (=> b!3688595 (= res!1499055 (isEmpty!23236 (tail!5709 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114)))))))))

(declare-fun b!3688596 () Bool)

(declare-fun e!2284136 () Bool)

(declare-fun e!2284135 () Bool)

(assert (=> b!3688596 (= e!2284136 e!2284135)))

(declare-fun res!1499052 () Bool)

(assert (=> b!3688596 (=> (not res!1499052) (not e!2284135))))

(assert (=> b!3688596 (= res!1499052 (not lt!1291249))))

(declare-fun b!3688597 () Bool)

(assert (=> b!3688597 (= e!2284137 (= (head!7960 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114))))) (c!637899 (regex!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114)))))))))

(declare-fun b!3688598 () Bool)

(declare-fun nullable!3712 (Regex!10653) Bool)

(assert (=> b!3688598 (= e!2284132 (nullable!3712 (regex!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114))))))))

(declare-fun b!3688599 () Bool)

(declare-fun e!2284134 () Bool)

(assert (=> b!3688599 (= e!2284135 e!2284134)))

(declare-fun res!1499057 () Bool)

(assert (=> b!3688599 (=> res!1499057 e!2284134)))

(assert (=> b!3688599 (= res!1499057 call!266880)))

(declare-fun b!3688600 () Bool)

(declare-fun res!1499056 () Bool)

(assert (=> b!3688600 (=> res!1499056 e!2284136)))

(assert (=> b!3688600 (= res!1499056 e!2284137)))

(declare-fun res!1499054 () Bool)

(assert (=> b!3688600 (=> (not res!1499054) (not e!2284137))))

(assert (=> b!3688600 (= res!1499054 lt!1291249)))

(declare-fun b!3688601 () Bool)

(declare-fun e!2284138 () Bool)

(assert (=> b!3688601 (= e!2284133 e!2284138)))

(declare-fun c!638015 () Bool)

(assert (=> b!3688601 (= c!638015 ((_ is EmptyLang!10653) (regex!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114))))))))

(declare-fun b!3688602 () Bool)

(declare-fun res!1499051 () Bool)

(assert (=> b!3688602 (=> res!1499051 e!2284134)))

(assert (=> b!3688602 (= res!1499051 (not (isEmpty!23236 (tail!5709 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114))))))))))

(declare-fun b!3688603 () Bool)

(assert (=> b!3688603 (= e!2284133 (= lt!1291249 call!266880))))

(declare-fun b!3688604 () Bool)

(declare-fun res!1499050 () Bool)

(assert (=> b!3688604 (=> res!1499050 e!2284136)))

(assert (=> b!3688604 (= res!1499050 (not ((_ is ElementMatch!10653) (regex!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114)))))))))

(assert (=> b!3688604 (= e!2284138 e!2284136)))

(declare-fun b!3688605 () Bool)

(declare-fun derivativeStep!3258 (Regex!10653 C!21492) Regex!10653)

(assert (=> b!3688605 (= e!2284132 (matchR!5208 (derivativeStep!3258 (regex!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114)))) (head!7960 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114)))))) (tail!5709 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114)))))))))

(declare-fun b!3688606 () Bool)

(assert (=> b!3688606 (= e!2284134 (not (= (head!7960 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291114))))) (c!637899 (regex!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114))))))))))

(declare-fun b!3688607 () Bool)

(declare-fun res!1499053 () Bool)

(assert (=> b!3688607 (=> (not res!1499053) (not e!2284137))))

(assert (=> b!3688607 (= res!1499053 (not call!266880))))

(declare-fun b!3688608 () Bool)

(assert (=> b!3688608 (= e!2284138 (not lt!1291249))))

(assert (= (and d!1082728 c!638016) b!3688598))

(assert (= (and d!1082728 (not c!638016)) b!3688605))

(assert (= (and d!1082728 c!638014) b!3688603))

(assert (= (and d!1082728 (not c!638014)) b!3688601))

(assert (= (and b!3688601 c!638015) b!3688608))

(assert (= (and b!3688601 (not c!638015)) b!3688604))

(assert (= (and b!3688604 (not res!1499050)) b!3688600))

(assert (= (and b!3688600 res!1499054) b!3688607))

(assert (= (and b!3688607 res!1499053) b!3688595))

(assert (= (and b!3688595 res!1499055) b!3688597))

(assert (= (and b!3688600 (not res!1499056)) b!3688596))

(assert (= (and b!3688596 res!1499052) b!3688599))

(assert (= (and b!3688599 (not res!1499057)) b!3688602))

(assert (= (and b!3688602 (not res!1499051)) b!3688606))

(assert (= (or b!3688603 b!3688599 b!3688607) bm!266875))

(assert (=> b!3688595 m!4200371))

(declare-fun m!4200895 () Bool)

(assert (=> b!3688595 m!4200895))

(assert (=> b!3688595 m!4200895))

(declare-fun m!4200897 () Bool)

(assert (=> b!3688595 m!4200897))

(assert (=> bm!266875 m!4200371))

(declare-fun m!4200899 () Bool)

(assert (=> bm!266875 m!4200899))

(assert (=> b!3688602 m!4200371))

(assert (=> b!3688602 m!4200895))

(assert (=> b!3688602 m!4200895))

(assert (=> b!3688602 m!4200897))

(assert (=> b!3688597 m!4200371))

(declare-fun m!4200901 () Bool)

(assert (=> b!3688597 m!4200901))

(assert (=> d!1082728 m!4200371))

(assert (=> d!1082728 m!4200899))

(declare-fun m!4200903 () Bool)

(assert (=> d!1082728 m!4200903))

(assert (=> b!3688605 m!4200371))

(assert (=> b!3688605 m!4200901))

(assert (=> b!3688605 m!4200901))

(declare-fun m!4200905 () Bool)

(assert (=> b!3688605 m!4200905))

(assert (=> b!3688605 m!4200371))

(assert (=> b!3688605 m!4200895))

(assert (=> b!3688605 m!4200905))

(assert (=> b!3688605 m!4200895))

(declare-fun m!4200907 () Bool)

(assert (=> b!3688605 m!4200907))

(declare-fun m!4200909 () Bool)

(assert (=> b!3688598 m!4200909))

(assert (=> b!3688606 m!4200371))

(assert (=> b!3688606 m!4200901))

(assert (=> b!3688196 d!1082728))

(assert (=> b!3688196 d!1082622))

(assert (=> b!3688196 d!1082618))

(assert (=> b!3688196 d!1082620))

(declare-fun d!1082730 () Bool)

(declare-fun lt!1291252 () Int)

(assert (=> d!1082730 (= lt!1291252 (size!29829 (list!14571 (_1!22601 lt!1291100))))))

(assert (=> d!1082730 (= lt!1291252 (size!29831 (c!637901 (_1!22601 lt!1291100))))))

(assert (=> d!1082730 (= (size!29824 (_1!22601 lt!1291100)) lt!1291252)))

(declare-fun bs!574017 () Bool)

(assert (= bs!574017 d!1082730))

(assert (=> bs!574017 m!4200329))

(assert (=> bs!574017 m!4200329))

(declare-fun m!4200911 () Bool)

(assert (=> bs!574017 m!4200911))

(declare-fun m!4200913 () Bool)

(assert (=> bs!574017 m!4200913))

(assert (=> d!1082442 d!1082730))

(declare-fun b!3688690 () Bool)

(declare-datatypes ((tuple2!38944 0))(
  ( (tuple2!38945 (_1!22606 Token!11154) (_2!22606 BalanceConc!23570)) )
))
(declare-datatypes ((Option!8400 0))(
  ( (None!8399) (Some!8399 (v!38351 tuple2!38944)) )
))
(declare-fun lt!1291430 () Option!8400)

(declare-fun lt!1291447 () tuple2!38934)

(declare-fun lexRec!785 (LexerInterface!5483 List!39154 BalanceConc!23570) tuple2!38934)

(assert (=> b!3688690 (= lt!1291447 (lexRec!785 thiss!25197 rules!3568 (_2!22606 (v!38351 lt!1291430))))))

(declare-fun e!2284184 () tuple2!38934)

(declare-fun prepend!1309 (BalanceConc!23572 Token!11154) BalanceConc!23572)

(assert (=> b!3688690 (= e!2284184 (tuple2!38935 (prepend!1309 (_1!22601 lt!1291447) (_1!22606 (v!38351 lt!1291430))) (_2!22601 lt!1291447)))))

(declare-fun lt!1291442 () BalanceConc!23570)

(declare-fun lt!1291434 () Option!8400)

(declare-fun e!2284183 () tuple2!38934)

(declare-fun b!3688691 () Bool)

(declare-fun append!1014 (BalanceConc!23572 Token!11154) BalanceConc!23572)

(assert (=> b!3688691 (= e!2284183 (lexTailRecV2!1140 thiss!25197 rules!3568 (seqFromList!4443 input!3129) lt!1291442 (_2!22606 (v!38351 lt!1291434)) (append!1014 (BalanceConc!23573 Empty!11979) (_1!22606 (v!38351 lt!1291434)))))))

(declare-fun lt!1291440 () tuple2!38934)

(assert (=> b!3688691 (= lt!1291440 (lexRec!785 thiss!25197 rules!3568 (_2!22606 (v!38351 lt!1291434))))))

(declare-fun lt!1291460 () List!39153)

(assert (=> b!3688691 (= lt!1291460 (list!14570 (BalanceConc!23571 Empty!11978)))))

(declare-fun lt!1291439 () List!39153)

(assert (=> b!3688691 (= lt!1291439 (list!14570 (charsOf!3905 (_1!22606 (v!38351 lt!1291434)))))))

(declare-fun lt!1291446 () List!39153)

(assert (=> b!3688691 (= lt!1291446 (list!14570 (_2!22606 (v!38351 lt!1291434))))))

(declare-fun lt!1291428 () Unit!57086)

(declare-fun lemmaConcatAssociativity!2089 (List!39153 List!39153 List!39153) Unit!57086)

(assert (=> b!3688691 (= lt!1291428 (lemmaConcatAssociativity!2089 lt!1291460 lt!1291439 lt!1291446))))

(assert (=> b!3688691 (= (++!9721 (++!9721 lt!1291460 lt!1291439) lt!1291446) (++!9721 lt!1291460 (++!9721 lt!1291439 lt!1291446)))))

(declare-fun lt!1291438 () Unit!57086)

(assert (=> b!3688691 (= lt!1291438 lt!1291428)))

(declare-fun maxPrefixZipperSequence!1177 (LexerInterface!5483 List!39154 BalanceConc!23570) Option!8400)

(assert (=> b!3688691 (= lt!1291430 (maxPrefixZipperSequence!1177 thiss!25197 rules!3568 (seqFromList!4443 input!3129)))))

(declare-fun c!638043 () Bool)

(assert (=> b!3688691 (= c!638043 ((_ is Some!8399) lt!1291430))))

(assert (=> b!3688691 (= (lexRec!785 thiss!25197 rules!3568 (seqFromList!4443 input!3129)) e!2284184)))

(declare-fun lt!1291432 () Unit!57086)

(declare-fun Unit!57090 () Unit!57086)

(assert (=> b!3688691 (= lt!1291432 Unit!57090)))

(declare-fun lt!1291457 () List!39155)

(assert (=> b!3688691 (= lt!1291457 (list!14571 (BalanceConc!23573 Empty!11979)))))

(declare-fun lt!1291443 () List!39155)

(assert (=> b!3688691 (= lt!1291443 (Cons!39031 (_1!22606 (v!38351 lt!1291434)) Nil!39031))))

(declare-fun lt!1291461 () List!39155)

(assert (=> b!3688691 (= lt!1291461 (list!14571 (_1!22601 lt!1291440)))))

(declare-fun lt!1291429 () Unit!57086)

(declare-fun lemmaConcatAssociativity!2090 (List!39155 List!39155 List!39155) Unit!57086)

(assert (=> b!3688691 (= lt!1291429 (lemmaConcatAssociativity!2090 lt!1291457 lt!1291443 lt!1291461))))

(assert (=> b!3688691 (= (++!9722 (++!9722 lt!1291457 lt!1291443) lt!1291461) (++!9722 lt!1291457 (++!9722 lt!1291443 lt!1291461)))))

(declare-fun lt!1291441 () Unit!57086)

(assert (=> b!3688691 (= lt!1291441 lt!1291429)))

(declare-fun lt!1291445 () List!39153)

(assert (=> b!3688691 (= lt!1291445 (++!9721 (list!14570 (BalanceConc!23571 Empty!11978)) (list!14570 (charsOf!3905 (_1!22606 (v!38351 lt!1291434))))))))

(declare-fun lt!1291450 () List!39153)

(assert (=> b!3688691 (= lt!1291450 (list!14570 (_2!22606 (v!38351 lt!1291434))))))

(declare-fun lt!1291453 () List!39155)

(assert (=> b!3688691 (= lt!1291453 (list!14571 (append!1014 (BalanceConc!23573 Empty!11979) (_1!22606 (v!38351 lt!1291434)))))))

(declare-fun lt!1291458 () Unit!57086)

(declare-fun lemmaLexThenLexPrefix!549 (LexerInterface!5483 List!39154 List!39153 List!39153 List!39155 List!39155 List!39153) Unit!57086)

(assert (=> b!3688691 (= lt!1291458 (lemmaLexThenLexPrefix!549 thiss!25197 rules!3568 lt!1291445 lt!1291450 lt!1291453 (list!14571 (_1!22601 lt!1291440)) (list!14570 (_2!22601 lt!1291440))))))

(assert (=> b!3688691 (= (lexList!1534 thiss!25197 rules!3568 lt!1291445) (tuple2!38939 lt!1291453 Nil!39029))))

(declare-fun lt!1291456 () Unit!57086)

(assert (=> b!3688691 (= lt!1291456 lt!1291458)))

(declare-fun lt!1291444 () BalanceConc!23570)

(declare-fun ++!9725 (BalanceConc!23570 BalanceConc!23570) BalanceConc!23570)

(assert (=> b!3688691 (= lt!1291444 (++!9725 (BalanceConc!23571 Empty!11978) (charsOf!3905 (_1!22606 (v!38351 lt!1291434)))))))

(declare-fun lt!1291451 () Option!8400)

(assert (=> b!3688691 (= lt!1291451 (maxPrefixZipperSequence!1177 thiss!25197 rules!3568 lt!1291444))))

(declare-fun c!638044 () Bool)

(assert (=> b!3688691 (= c!638044 ((_ is Some!8399) lt!1291451))))

(declare-fun e!2284182 () tuple2!38934)

(assert (=> b!3688691 (= (lexRec!785 thiss!25197 rules!3568 (++!9725 (BalanceConc!23571 Empty!11978) (charsOf!3905 (_1!22606 (v!38351 lt!1291434))))) e!2284182)))

(declare-fun lt!1291449 () Unit!57086)

(declare-fun Unit!57091 () Unit!57086)

(assert (=> b!3688691 (= lt!1291449 Unit!57091)))

(assert (=> b!3688691 (= lt!1291442 (++!9725 (BalanceConc!23571 Empty!11978) (charsOf!3905 (_1!22606 (v!38351 lt!1291434)))))))

(declare-fun lt!1291455 () List!39153)

(assert (=> b!3688691 (= lt!1291455 (list!14570 lt!1291442))))

(declare-fun lt!1291436 () List!39153)

(assert (=> b!3688691 (= lt!1291436 (list!14570 (_2!22606 (v!38351 lt!1291434))))))

(declare-fun lt!1291437 () Unit!57086)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!631 (List!39153 List!39153) Unit!57086)

(assert (=> b!3688691 (= lt!1291437 (lemmaConcatTwoListThenFSndIsSuffix!631 lt!1291455 lt!1291436))))

(declare-fun isSuffix!946 (List!39153 List!39153) Bool)

(assert (=> b!3688691 (isSuffix!946 lt!1291436 (++!9721 lt!1291455 lt!1291436))))

(declare-fun lt!1291452 () Unit!57086)

(assert (=> b!3688691 (= lt!1291452 lt!1291437)))

(declare-fun e!2284185 () Bool)

(declare-fun lt!1291433 () tuple2!38934)

(declare-fun b!3688692 () Bool)

(assert (=> b!3688692 (= e!2284185 (= (list!14570 (_2!22601 lt!1291433)) (list!14570 (_2!22601 (lexRec!785 thiss!25197 rules!3568 (seqFromList!4443 input!3129))))))))

(declare-fun b!3688693 () Bool)

(assert (=> b!3688693 (= e!2284182 (tuple2!38935 (BalanceConc!23573 Empty!11979) lt!1291444))))

(declare-fun b!3688694 () Bool)

(assert (=> b!3688694 (= e!2284184 (tuple2!38935 (BalanceConc!23573 Empty!11979) (seqFromList!4443 input!3129)))))

(declare-fun d!1082732 () Bool)

(assert (=> d!1082732 e!2284185))

(declare-fun res!1499087 () Bool)

(assert (=> d!1082732 (=> (not res!1499087) (not e!2284185))))

(assert (=> d!1082732 (= res!1499087 (= (list!14571 (_1!22601 lt!1291433)) (list!14571 (_1!22601 (lexRec!785 thiss!25197 rules!3568 (seqFromList!4443 input!3129))))))))

(assert (=> d!1082732 (= lt!1291433 e!2284183)))

(declare-fun c!638045 () Bool)

(assert (=> d!1082732 (= c!638045 ((_ is Some!8399) lt!1291434))))

(declare-fun maxPrefixZipperSequenceV2!571 (LexerInterface!5483 List!39154 BalanceConc!23570 BalanceConc!23570) Option!8400)

(assert (=> d!1082732 (= lt!1291434 (maxPrefixZipperSequenceV2!571 thiss!25197 rules!3568 (seqFromList!4443 input!3129) (seqFromList!4443 input!3129)))))

(declare-fun lt!1291431 () Unit!57086)

(declare-fun lt!1291435 () Unit!57086)

(assert (=> d!1082732 (= lt!1291431 lt!1291435)))

(declare-fun lt!1291459 () List!39153)

(declare-fun lt!1291448 () List!39153)

(assert (=> d!1082732 (isSuffix!946 lt!1291459 (++!9721 lt!1291448 lt!1291459))))

(assert (=> d!1082732 (= lt!1291435 (lemmaConcatTwoListThenFSndIsSuffix!631 lt!1291448 lt!1291459))))

(assert (=> d!1082732 (= lt!1291459 (list!14570 (seqFromList!4443 input!3129)))))

(assert (=> d!1082732 (= lt!1291448 (list!14570 (BalanceConc!23571 Empty!11978)))))

(assert (=> d!1082732 (= (lexTailRecV2!1140 thiss!25197 rules!3568 (seqFromList!4443 input!3129) (BalanceConc!23571 Empty!11978) (seqFromList!4443 input!3129) (BalanceConc!23573 Empty!11979)) lt!1291433)))

(declare-fun b!3688695 () Bool)

(declare-fun lt!1291454 () tuple2!38934)

(assert (=> b!3688695 (= lt!1291454 (lexRec!785 thiss!25197 rules!3568 (_2!22606 (v!38351 lt!1291451))))))

(assert (=> b!3688695 (= e!2284182 (tuple2!38935 (prepend!1309 (_1!22601 lt!1291454) (_1!22606 (v!38351 lt!1291451))) (_2!22601 lt!1291454)))))

(declare-fun b!3688696 () Bool)

(assert (=> b!3688696 (= e!2284183 (tuple2!38935 (BalanceConc!23573 Empty!11979) (seqFromList!4443 input!3129)))))

(assert (= (and d!1082732 c!638045) b!3688691))

(assert (= (and d!1082732 (not c!638045)) b!3688696))

(assert (= (and b!3688691 c!638043) b!3688690))

(assert (= (and b!3688691 (not c!638043)) b!3688694))

(assert (= (and b!3688691 c!638044) b!3688695))

(assert (= (and b!3688691 (not c!638044)) b!3688693))

(assert (= (and d!1082732 res!1499087) b!3688692))

(declare-fun m!4201031 () Bool)

(assert (=> b!3688691 m!4201031))

(declare-fun m!4201033 () Bool)

(assert (=> b!3688691 m!4201033))

(declare-fun m!4201035 () Bool)

(assert (=> b!3688691 m!4201035))

(assert (=> b!3688691 m!4200151))

(declare-fun m!4201037 () Bool)

(assert (=> b!3688691 m!4201037))

(assert (=> b!3688691 m!4200151))

(declare-fun m!4201039 () Bool)

(assert (=> b!3688691 m!4201039))

(declare-fun m!4201041 () Bool)

(assert (=> b!3688691 m!4201041))

(declare-fun m!4201043 () Bool)

(assert (=> b!3688691 m!4201043))

(declare-fun m!4201045 () Bool)

(assert (=> b!3688691 m!4201045))

(declare-fun m!4201047 () Bool)

(assert (=> b!3688691 m!4201047))

(declare-fun m!4201049 () Bool)

(assert (=> b!3688691 m!4201049))

(declare-fun m!4201051 () Bool)

(assert (=> b!3688691 m!4201051))

(declare-fun m!4201053 () Bool)

(assert (=> b!3688691 m!4201053))

(assert (=> b!3688691 m!4201031))

(declare-fun m!4201055 () Bool)

(assert (=> b!3688691 m!4201055))

(assert (=> b!3688691 m!4201039))

(declare-fun m!4201057 () Bool)

(assert (=> b!3688691 m!4201057))

(declare-fun m!4201059 () Bool)

(assert (=> b!3688691 m!4201059))

(declare-fun m!4201061 () Bool)

(assert (=> b!3688691 m!4201061))

(declare-fun m!4201063 () Bool)

(assert (=> b!3688691 m!4201063))

(declare-fun m!4201065 () Bool)

(assert (=> b!3688691 m!4201065))

(assert (=> b!3688691 m!4201057))

(declare-fun m!4201067 () Bool)

(assert (=> b!3688691 m!4201067))

(declare-fun m!4201069 () Bool)

(assert (=> b!3688691 m!4201069))

(assert (=> b!3688691 m!4201055))

(declare-fun m!4201071 () Bool)

(assert (=> b!3688691 m!4201071))

(assert (=> b!3688691 m!4201033))

(declare-fun m!4201073 () Bool)

(assert (=> b!3688691 m!4201073))

(assert (=> b!3688691 m!4201039))

(declare-fun m!4201075 () Bool)

(assert (=> b!3688691 m!4201075))

(declare-fun m!4201077 () Bool)

(assert (=> b!3688691 m!4201077))

(assert (=> b!3688691 m!4201047))

(declare-fun m!4201079 () Bool)

(assert (=> b!3688691 m!4201079))

(assert (=> b!3688691 m!4200151))

(declare-fun m!4201081 () Bool)

(assert (=> b!3688691 m!4201081))

(declare-fun m!4201083 () Bool)

(assert (=> b!3688691 m!4201083))

(assert (=> b!3688691 m!4201045))

(assert (=> b!3688691 m!4201083))

(declare-fun m!4201085 () Bool)

(assert (=> b!3688691 m!4201085))

(assert (=> b!3688691 m!4201031))

(assert (=> b!3688691 m!4201061))

(declare-fun m!4201087 () Bool)

(assert (=> b!3688691 m!4201087))

(declare-fun m!4201089 () Bool)

(assert (=> b!3688691 m!4201089))

(assert (=> b!3688691 m!4201053))

(declare-fun m!4201091 () Bool)

(assert (=> b!3688691 m!4201091))

(assert (=> b!3688691 m!4201051))

(declare-fun m!4201097 () Bool)

(assert (=> b!3688691 m!4201097))

(assert (=> b!3688691 m!4201059))

(declare-fun m!4201099 () Bool)

(assert (=> b!3688691 m!4201099))

(declare-fun m!4201101 () Bool)

(assert (=> b!3688690 m!4201101))

(declare-fun m!4201103 () Bool)

(assert (=> b!3688690 m!4201103))

(declare-fun m!4201105 () Bool)

(assert (=> b!3688692 m!4201105))

(assert (=> b!3688692 m!4200151))

(assert (=> b!3688692 m!4201037))

(declare-fun m!4201107 () Bool)

(assert (=> b!3688692 m!4201107))

(declare-fun m!4201109 () Bool)

(assert (=> b!3688695 m!4201109))

(declare-fun m!4201111 () Bool)

(assert (=> b!3688695 m!4201111))

(declare-fun m!4201113 () Bool)

(assert (=> d!1082732 m!4201113))

(assert (=> d!1082732 m!4200151))

(assert (=> d!1082732 m!4200151))

(declare-fun m!4201115 () Bool)

(assert (=> d!1082732 m!4201115))

(declare-fun m!4201117 () Bool)

(assert (=> d!1082732 m!4201117))

(assert (=> d!1082732 m!4200151))

(assert (=> d!1082732 m!4200331))

(assert (=> d!1082732 m!4200151))

(assert (=> d!1082732 m!4201037))

(declare-fun m!4201119 () Bool)

(assert (=> d!1082732 m!4201119))

(declare-fun m!4201121 () Bool)

(assert (=> d!1082732 m!4201121))

(assert (=> d!1082732 m!4201119))

(declare-fun m!4201123 () Bool)

(assert (=> d!1082732 m!4201123))

(assert (=> d!1082732 m!4201059))

(assert (=> d!1082442 d!1082732))

(declare-fun d!1082740 () Bool)

(declare-fun lt!1291462 () Int)

(assert (=> d!1082740 (>= lt!1291462 0)))

(declare-fun e!2284204 () Int)

(assert (=> d!1082740 (= lt!1291462 e!2284204)))

(declare-fun c!638046 () Bool)

(assert (=> d!1082740 (= c!638046 ((_ is Nil!39029) lt!1291125))))

(assert (=> d!1082740 (= (size!29826 lt!1291125) lt!1291462)))

(declare-fun b!3688737 () Bool)

(assert (=> b!3688737 (= e!2284204 0)))

(declare-fun b!3688738 () Bool)

(assert (=> b!3688738 (= e!2284204 (+ 1 (size!29826 (t!301220 lt!1291125))))))

(assert (= (and d!1082740 c!638046) b!3688737))

(assert (= (and d!1082740 (not c!638046)) b!3688738))

(declare-fun m!4201125 () Bool)

(assert (=> b!3688738 m!4201125))

(assert (=> b!3688212 d!1082740))

(assert (=> b!3688212 d!1082692))

(declare-fun d!1082742 () Bool)

(declare-fun lt!1291463 () Int)

(assert (=> d!1082742 (>= lt!1291463 0)))

(declare-fun e!2284205 () Int)

(assert (=> d!1082742 (= lt!1291463 e!2284205)))

(declare-fun c!638047 () Bool)

(assert (=> d!1082742 (= c!638047 ((_ is Nil!39029) suffix!1448))))

(assert (=> d!1082742 (= (size!29826 suffix!1448) lt!1291463)))

(declare-fun b!3688739 () Bool)

(assert (=> b!3688739 (= e!2284205 0)))

(declare-fun b!3688740 () Bool)

(assert (=> b!3688740 (= e!2284205 (+ 1 (size!29826 (t!301220 suffix!1448))))))

(assert (= (and d!1082742 c!638047) b!3688739))

(assert (= (and d!1082742 (not c!638047)) b!3688740))

(declare-fun m!4201127 () Bool)

(assert (=> b!3688740 m!4201127))

(assert (=> b!3688212 d!1082742))

(declare-fun b!3688741 () Bool)

(declare-fun e!2284208 () Bool)

(declare-fun e!2284207 () Bool)

(assert (=> b!3688741 (= e!2284208 e!2284207)))

(declare-fun res!1499088 () Bool)

(assert (=> b!3688741 (=> (not res!1499088) (not e!2284207))))

(declare-fun lt!1291464 () Option!8398)

(assert (=> b!3688741 (= res!1499088 (isDefined!6597 lt!1291464))))

(declare-fun b!3688742 () Bool)

(declare-fun res!1499094 () Bool)

(assert (=> b!3688742 (=> (not res!1499094) (not e!2284207))))

(assert (=> b!3688742 (= res!1499094 (< (size!29826 (_2!22600 (get!12942 lt!1291464))) (size!29826 input!3129)))))

(declare-fun b!3688744 () Bool)

(declare-fun res!1499093 () Bool)

(assert (=> b!3688744 (=> (not res!1499093) (not e!2284207))))

(assert (=> b!3688744 (= res!1499093 (= (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291464)))) (originalCharacters!6608 (_1!22600 (get!12942 lt!1291464)))))))

(declare-fun b!3688745 () Bool)

(declare-fun res!1499089 () Bool)

(assert (=> b!3688745 (=> (not res!1499089) (not e!2284207))))

(assert (=> b!3688745 (= res!1499089 (= (value!188439 (_1!22600 (get!12942 lt!1291464))) (apply!9366 (transformation!5894 (rule!8740 (_1!22600 (get!12942 lt!1291464)))) (seqFromList!4443 (originalCharacters!6608 (_1!22600 (get!12942 lt!1291464)))))))))

(declare-fun call!266884 () Option!8398)

(declare-fun bm!266879 () Bool)

(assert (=> bm!266879 (= call!266884 (maxPrefixOneRule!2129 thiss!25197 (h!44450 (t!301221 rules!3568)) input!3129))))

(declare-fun b!3688746 () Bool)

(declare-fun e!2284206 () Option!8398)

(assert (=> b!3688746 (= e!2284206 call!266884)))

(declare-fun b!3688747 () Bool)

(declare-fun lt!1291467 () Option!8398)

(declare-fun lt!1291466 () Option!8398)

(assert (=> b!3688747 (= e!2284206 (ite (and ((_ is None!8397) lt!1291467) ((_ is None!8397) lt!1291466)) None!8397 (ite ((_ is None!8397) lt!1291466) lt!1291467 (ite ((_ is None!8397) lt!1291467) lt!1291466 (ite (>= (size!29820 (_1!22600 (v!38347 lt!1291467))) (size!29820 (_1!22600 (v!38347 lt!1291466)))) lt!1291467 lt!1291466)))))))

(assert (=> b!3688747 (= lt!1291467 call!266884)))

(assert (=> b!3688747 (= lt!1291466 (maxPrefix!3011 thiss!25197 (t!301221 (t!301221 rules!3568)) input!3129))))

(declare-fun b!3688748 () Bool)

(declare-fun res!1499090 () Bool)

(assert (=> b!3688748 (=> (not res!1499090) (not e!2284207))))

(assert (=> b!3688748 (= res!1499090 (matchR!5208 (regex!5894 (rule!8740 (_1!22600 (get!12942 lt!1291464)))) (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291464))))))))

(declare-fun b!3688749 () Bool)

(declare-fun res!1499091 () Bool)

(assert (=> b!3688749 (=> (not res!1499091) (not e!2284207))))

(assert (=> b!3688749 (= res!1499091 (= (++!9721 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291464)))) (_2!22600 (get!12942 lt!1291464))) input!3129))))

(declare-fun d!1082744 () Bool)

(assert (=> d!1082744 e!2284208))

(declare-fun res!1499092 () Bool)

(assert (=> d!1082744 (=> res!1499092 e!2284208)))

(assert (=> d!1082744 (= res!1499092 (isEmpty!23234 lt!1291464))))

(assert (=> d!1082744 (= lt!1291464 e!2284206)))

(declare-fun c!638048 () Bool)

(assert (=> d!1082744 (= c!638048 (and ((_ is Cons!39030) (t!301221 rules!3568)) ((_ is Nil!39030) (t!301221 (t!301221 rules!3568)))))))

(declare-fun lt!1291465 () Unit!57086)

(declare-fun lt!1291468 () Unit!57086)

(assert (=> d!1082744 (= lt!1291465 lt!1291468)))

(assert (=> d!1082744 (isPrefix!3247 input!3129 input!3129)))

(assert (=> d!1082744 (= lt!1291468 (lemmaIsPrefixRefl!2034 input!3129 input!3129))))

(assert (=> d!1082744 (rulesValidInductive!2108 thiss!25197 (t!301221 rules!3568))))

(assert (=> d!1082744 (= (maxPrefix!3011 thiss!25197 (t!301221 rules!3568) input!3129) lt!1291464)))

(declare-fun b!3688743 () Bool)

(assert (=> b!3688743 (= e!2284207 (contains!7793 (t!301221 rules!3568) (rule!8740 (_1!22600 (get!12942 lt!1291464)))))))

(assert (= (and d!1082744 c!638048) b!3688746))

(assert (= (and d!1082744 (not c!638048)) b!3688747))

(assert (= (or b!3688746 b!3688747) bm!266879))

(assert (= (and d!1082744 (not res!1499092)) b!3688741))

(assert (= (and b!3688741 res!1499088) b!3688744))

(assert (= (and b!3688744 res!1499093) b!3688742))

(assert (= (and b!3688742 res!1499094) b!3688749))

(assert (= (and b!3688749 res!1499091) b!3688745))

(assert (= (and b!3688745 res!1499089) b!3688748))

(assert (= (and b!3688748 res!1499090) b!3688743))

(declare-fun m!4201129 () Bool)

(assert (=> b!3688742 m!4201129))

(declare-fun m!4201131 () Bool)

(assert (=> b!3688742 m!4201131))

(assert (=> b!3688742 m!4200365))

(assert (=> b!3688743 m!4201129))

(declare-fun m!4201133 () Bool)

(assert (=> b!3688743 m!4201133))

(assert (=> b!3688749 m!4201129))

(declare-fun m!4201135 () Bool)

(assert (=> b!3688749 m!4201135))

(assert (=> b!3688749 m!4201135))

(declare-fun m!4201137 () Bool)

(assert (=> b!3688749 m!4201137))

(assert (=> b!3688749 m!4201137))

(declare-fun m!4201139 () Bool)

(assert (=> b!3688749 m!4201139))

(assert (=> b!3688748 m!4201129))

(assert (=> b!3688748 m!4201135))

(assert (=> b!3688748 m!4201135))

(assert (=> b!3688748 m!4201137))

(assert (=> b!3688748 m!4201137))

(declare-fun m!4201141 () Bool)

(assert (=> b!3688748 m!4201141))

(assert (=> b!3688745 m!4201129))

(declare-fun m!4201143 () Bool)

(assert (=> b!3688745 m!4201143))

(assert (=> b!3688745 m!4201143))

(declare-fun m!4201145 () Bool)

(assert (=> b!3688745 m!4201145))

(assert (=> b!3688744 m!4201129))

(assert (=> b!3688744 m!4201135))

(assert (=> b!3688744 m!4201135))

(assert (=> b!3688744 m!4201137))

(declare-fun m!4201147 () Bool)

(assert (=> d!1082744 m!4201147))

(assert (=> d!1082744 m!4200383))

(assert (=> d!1082744 m!4200385))

(assert (=> d!1082744 m!4200609))

(declare-fun m!4201149 () Bool)

(assert (=> b!3688741 m!4201149))

(declare-fun m!4201151 () Bool)

(assert (=> bm!266879 m!4201151))

(declare-fun m!4201153 () Bool)

(assert (=> b!3688747 m!4201153))

(assert (=> b!3688195 d!1082744))

(declare-fun d!1082746 () Bool)

(declare-fun lt!1291469 () Int)

(assert (=> d!1082746 (>= lt!1291469 0)))

(declare-fun e!2284209 () Int)

(assert (=> d!1082746 (= lt!1291469 e!2284209)))

(declare-fun c!638049 () Bool)

(assert (=> d!1082746 (= c!638049 ((_ is Nil!39029) (++!9721 lt!1291056 (_2!22600 lt!1291054))))))

(assert (=> d!1082746 (= (size!29826 (++!9721 lt!1291056 (_2!22600 lt!1291054))) lt!1291469)))

(declare-fun b!3688750 () Bool)

(assert (=> b!3688750 (= e!2284209 0)))

(declare-fun b!3688751 () Bool)

(assert (=> b!3688751 (= e!2284209 (+ 1 (size!29826 (t!301220 (++!9721 lt!1291056 (_2!22600 lt!1291054))))))))

(assert (= (and d!1082746 c!638049) b!3688750))

(assert (= (and d!1082746 (not c!638049)) b!3688751))

(declare-fun m!4201155 () Bool)

(assert (=> b!3688751 m!4201155))

(assert (=> b!3688229 d!1082746))

(assert (=> b!3688229 d!1082688))

(declare-fun bs!574018 () Bool)

(declare-fun d!1082748 () Bool)

(assert (= bs!574018 (and d!1082748 d!1082524)))

(declare-fun lambda!124926 () Int)

(assert (=> bs!574018 (= lambda!124926 lambda!124920)))

(assert (=> d!1082748 true))

(declare-fun lt!1291472 () Bool)

(assert (=> d!1082748 (= lt!1291472 (rulesValidInductive!2108 thiss!25197 rules!3568))))

(assert (=> d!1082748 (= lt!1291472 (forall!8170 rules!3568 lambda!124926))))

(assert (=> d!1082748 (= (rulesValid!2272 thiss!25197 rules!3568) lt!1291472)))

(declare-fun bs!574019 () Bool)

(assert (= bs!574019 d!1082748))

(assert (=> bs!574019 m!4200387))

(declare-fun m!4201157 () Bool)

(assert (=> bs!574019 m!4201157))

(assert (=> d!1082476 d!1082748))

(declare-fun b!3688753 () Bool)

(declare-fun e!2284211 () List!39153)

(assert (=> b!3688753 (= e!2284211 (Cons!39029 (h!44449 (t!301220 input!3129)) (++!9721 (t!301220 (t!301220 input!3129)) suffix!1448)))))

(declare-fun d!1082750 () Bool)

(declare-fun e!2284210 () Bool)

(assert (=> d!1082750 e!2284210))

(declare-fun res!1499096 () Bool)

(assert (=> d!1082750 (=> (not res!1499096) (not e!2284210))))

(declare-fun lt!1291473 () List!39153)

(assert (=> d!1082750 (= res!1499096 (= (content!5655 lt!1291473) ((_ map or) (content!5655 (t!301220 input!3129)) (content!5655 suffix!1448))))))

(assert (=> d!1082750 (= lt!1291473 e!2284211)))

(declare-fun c!638050 () Bool)

(assert (=> d!1082750 (= c!638050 ((_ is Nil!39029) (t!301220 input!3129)))))

(assert (=> d!1082750 (= (++!9721 (t!301220 input!3129) suffix!1448) lt!1291473)))

(declare-fun b!3688754 () Bool)

(declare-fun res!1499095 () Bool)

(assert (=> b!3688754 (=> (not res!1499095) (not e!2284210))))

(assert (=> b!3688754 (= res!1499095 (= (size!29826 lt!1291473) (+ (size!29826 (t!301220 input!3129)) (size!29826 suffix!1448))))))

(declare-fun b!3688752 () Bool)

(assert (=> b!3688752 (= e!2284211 suffix!1448)))

(declare-fun b!3688755 () Bool)

(assert (=> b!3688755 (= e!2284210 (or (not (= suffix!1448 Nil!39029)) (= lt!1291473 (t!301220 input!3129))))))

(assert (= (and d!1082750 c!638050) b!3688752))

(assert (= (and d!1082750 (not c!638050)) b!3688753))

(assert (= (and d!1082750 res!1499096) b!3688754))

(assert (= (and b!3688754 res!1499095) b!3688755))

(declare-fun m!4201159 () Bool)

(assert (=> b!3688753 m!4201159))

(declare-fun m!4201161 () Bool)

(assert (=> d!1082750 m!4201161))

(assert (=> d!1082750 m!4200889))

(assert (=> d!1082750 m!4200423))

(declare-fun m!4201163 () Bool)

(assert (=> b!3688754 m!4201163))

(assert (=> b!3688754 m!4200845))

(assert (=> b!3688754 m!4200427))

(assert (=> b!3688211 d!1082750))

(declare-fun d!1082752 () Bool)

(assert (=> d!1082752 (= (list!14570 lt!1291103) (list!14574 (c!637900 lt!1291103)))))

(declare-fun bs!574020 () Bool)

(assert (= bs!574020 d!1082752))

(declare-fun m!4201165 () Bool)

(assert (=> bs!574020 m!4201165))

(assert (=> d!1082478 d!1082752))

(declare-fun b!3688774 () Bool)

(declare-fun res!1499113 () Bool)

(declare-fun e!2284223 () Bool)

(assert (=> b!3688774 (=> (not res!1499113) (not e!2284223))))

(declare-fun lt!1291488 () Option!8398)

(assert (=> b!3688774 (= res!1499113 (< (size!29826 (_2!22600 (get!12942 lt!1291488))) (size!29826 input!3129)))))

(declare-fun b!3688775 () Bool)

(assert (=> b!3688775 (= e!2284223 (= (size!29820 (_1!22600 (get!12942 lt!1291488))) (size!29826 (originalCharacters!6608 (_1!22600 (get!12942 lt!1291488))))))))

(declare-fun b!3688776 () Bool)

(declare-fun res!1499114 () Bool)

(assert (=> b!3688776 (=> (not res!1499114) (not e!2284223))))

(assert (=> b!3688776 (= res!1499114 (= (++!9721 (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291488)))) (_2!22600 (get!12942 lt!1291488))) input!3129))))

(declare-fun b!3688777 () Bool)

(declare-fun e!2284221 () Bool)

(assert (=> b!3688777 (= e!2284221 e!2284223)))

(declare-fun res!1499115 () Bool)

(assert (=> b!3688777 (=> (not res!1499115) (not e!2284223))))

(assert (=> b!3688777 (= res!1499115 (matchR!5208 (regex!5894 (h!44450 rules!3568)) (list!14570 (charsOf!3905 (_1!22600 (get!12942 lt!1291488))))))))

(declare-fun b!3688778 () Bool)

(declare-fun res!1499112 () Bool)

(assert (=> b!3688778 (=> (not res!1499112) (not e!2284223))))

(assert (=> b!3688778 (= res!1499112 (= (value!188439 (_1!22600 (get!12942 lt!1291488))) (apply!9366 (transformation!5894 (rule!8740 (_1!22600 (get!12942 lt!1291488)))) (seqFromList!4443 (originalCharacters!6608 (_1!22600 (get!12942 lt!1291488)))))))))

(declare-fun b!3688779 () Bool)

(declare-fun e!2284222 () Bool)

(declare-datatypes ((tuple2!38946 0))(
  ( (tuple2!38947 (_1!22607 List!39153) (_2!22607 List!39153)) )
))
(declare-fun findLongestMatchInner!1101 (Regex!10653 List!39153 Int List!39153 List!39153 Int) tuple2!38946)

(assert (=> b!3688779 (= e!2284222 (matchR!5208 (regex!5894 (h!44450 rules!3568)) (_1!22607 (findLongestMatchInner!1101 (regex!5894 (h!44450 rules!3568)) Nil!39029 (size!29826 Nil!39029) input!3129 input!3129 (size!29826 input!3129)))))))

(declare-fun d!1082754 () Bool)

(assert (=> d!1082754 e!2284221))

(declare-fun res!1499111 () Bool)

(assert (=> d!1082754 (=> res!1499111 e!2284221)))

(assert (=> d!1082754 (= res!1499111 (isEmpty!23234 lt!1291488))))

(declare-fun e!2284220 () Option!8398)

(assert (=> d!1082754 (= lt!1291488 e!2284220)))

(declare-fun c!638053 () Bool)

(declare-fun lt!1291486 () tuple2!38946)

(assert (=> d!1082754 (= c!638053 (isEmpty!23236 (_1!22607 lt!1291486)))))

(declare-fun findLongestMatch!1016 (Regex!10653 List!39153) tuple2!38946)

(assert (=> d!1082754 (= lt!1291486 (findLongestMatch!1016 (regex!5894 (h!44450 rules!3568)) input!3129))))

(assert (=> d!1082754 (ruleValid!2130 thiss!25197 (h!44450 rules!3568))))

(assert (=> d!1082754 (= (maxPrefixOneRule!2129 thiss!25197 (h!44450 rules!3568) input!3129) lt!1291488)))

(declare-fun b!3688780 () Bool)

(assert (=> b!3688780 (= e!2284220 (Some!8397 (tuple2!38933 (Token!11155 (apply!9366 (transformation!5894 (h!44450 rules!3568)) (seqFromList!4443 (_1!22607 lt!1291486))) (h!44450 rules!3568) (size!29825 (seqFromList!4443 (_1!22607 lt!1291486))) (_1!22607 lt!1291486)) (_2!22607 lt!1291486))))))

(declare-fun lt!1291485 () Unit!57086)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1074 (Regex!10653 List!39153) Unit!57086)

(assert (=> b!3688780 (= lt!1291485 (longestMatchIsAcceptedByMatchOrIsEmpty!1074 (regex!5894 (h!44450 rules!3568)) input!3129))))

(declare-fun res!1499117 () Bool)

(assert (=> b!3688780 (= res!1499117 (isEmpty!23236 (_1!22607 (findLongestMatchInner!1101 (regex!5894 (h!44450 rules!3568)) Nil!39029 (size!29826 Nil!39029) input!3129 input!3129 (size!29826 input!3129)))))))

(assert (=> b!3688780 (=> res!1499117 e!2284222)))

(assert (=> b!3688780 e!2284222))

(declare-fun lt!1291487 () Unit!57086)

(assert (=> b!3688780 (= lt!1291487 lt!1291485)))

(declare-fun lt!1291484 () Unit!57086)

(declare-fun lemmaSemiInverse!1607 (TokenValueInjection!11676 BalanceConc!23570) Unit!57086)

(assert (=> b!3688780 (= lt!1291484 (lemmaSemiInverse!1607 (transformation!5894 (h!44450 rules!3568)) (seqFromList!4443 (_1!22607 lt!1291486))))))

(declare-fun b!3688781 () Bool)

(assert (=> b!3688781 (= e!2284220 None!8397)))

(declare-fun b!3688782 () Bool)

(declare-fun res!1499116 () Bool)

(assert (=> b!3688782 (=> (not res!1499116) (not e!2284223))))

(assert (=> b!3688782 (= res!1499116 (= (rule!8740 (_1!22600 (get!12942 lt!1291488))) (h!44450 rules!3568)))))

(assert (= (and d!1082754 c!638053) b!3688781))

(assert (= (and d!1082754 (not c!638053)) b!3688780))

(assert (= (and b!3688780 (not res!1499117)) b!3688779))

(assert (= (and d!1082754 (not res!1499111)) b!3688777))

(assert (= (and b!3688777 res!1499115) b!3688776))

(assert (= (and b!3688776 res!1499114) b!3688774))

(assert (= (and b!3688774 res!1499113) b!3688782))

(assert (= (and b!3688782 res!1499116) b!3688778))

(assert (= (and b!3688778 res!1499112) b!3688775))

(declare-fun m!4201167 () Bool)

(assert (=> b!3688778 m!4201167))

(declare-fun m!4201169 () Bool)

(assert (=> b!3688778 m!4201169))

(assert (=> b!3688778 m!4201169))

(declare-fun m!4201171 () Bool)

(assert (=> b!3688778 m!4201171))

(assert (=> b!3688782 m!4201167))

(assert (=> b!3688774 m!4201167))

(declare-fun m!4201173 () Bool)

(assert (=> b!3688774 m!4201173))

(assert (=> b!3688774 m!4200365))

(assert (=> b!3688775 m!4201167))

(declare-fun m!4201175 () Bool)

(assert (=> b!3688775 m!4201175))

(assert (=> b!3688777 m!4201167))

(declare-fun m!4201177 () Bool)

(assert (=> b!3688777 m!4201177))

(assert (=> b!3688777 m!4201177))

(declare-fun m!4201179 () Bool)

(assert (=> b!3688777 m!4201179))

(assert (=> b!3688777 m!4201179))

(declare-fun m!4201181 () Bool)

(assert (=> b!3688777 m!4201181))

(declare-fun m!4201183 () Bool)

(assert (=> d!1082754 m!4201183))

(declare-fun m!4201185 () Bool)

(assert (=> d!1082754 m!4201185))

(declare-fun m!4201187 () Bool)

(assert (=> d!1082754 m!4201187))

(assert (=> d!1082754 m!4200607))

(declare-fun m!4201189 () Bool)

(assert (=> b!3688779 m!4201189))

(assert (=> b!3688779 m!4200365))

(assert (=> b!3688779 m!4201189))

(assert (=> b!3688779 m!4200365))

(declare-fun m!4201191 () Bool)

(assert (=> b!3688779 m!4201191))

(declare-fun m!4201193 () Bool)

(assert (=> b!3688779 m!4201193))

(declare-fun m!4201195 () Bool)

(assert (=> b!3688780 m!4201195))

(declare-fun m!4201197 () Bool)

(assert (=> b!3688780 m!4201197))

(declare-fun m!4201199 () Bool)

(assert (=> b!3688780 m!4201199))

(assert (=> b!3688780 m!4200365))

(assert (=> b!3688780 m!4201195))

(declare-fun m!4201201 () Bool)

(assert (=> b!3688780 m!4201201))

(assert (=> b!3688780 m!4201195))

(declare-fun m!4201203 () Bool)

(assert (=> b!3688780 m!4201203))

(assert (=> b!3688780 m!4201189))

(declare-fun m!4201205 () Bool)

(assert (=> b!3688780 m!4201205))

(assert (=> b!3688780 m!4201189))

(assert (=> b!3688780 m!4200365))

(assert (=> b!3688780 m!4201191))

(assert (=> b!3688780 m!4201195))

(assert (=> b!3688776 m!4201167))

(assert (=> b!3688776 m!4201177))

(assert (=> b!3688776 m!4201177))

(assert (=> b!3688776 m!4201179))

(assert (=> b!3688776 m!4201179))

(declare-fun m!4201207 () Bool)

(assert (=> b!3688776 m!4201207))

(assert (=> bm!266871 d!1082754))

(declare-fun b!3688784 () Bool)

(declare-fun res!1499120 () Bool)

(declare-fun e!2284225 () Bool)

(assert (=> b!3688784 (=> (not res!1499120) (not e!2284225))))

(assert (=> b!3688784 (= res!1499120 (= (head!7960 (tail!5709 lt!1291056)) (head!7960 (tail!5709 (++!9721 lt!1291056 (_2!22600 lt!1291054))))))))

(declare-fun d!1082756 () Bool)

(declare-fun e!2284224 () Bool)

(assert (=> d!1082756 e!2284224))

(declare-fun res!1499121 () Bool)

(assert (=> d!1082756 (=> res!1499121 e!2284224)))

(declare-fun lt!1291489 () Bool)

(assert (=> d!1082756 (= res!1499121 (not lt!1291489))))

(declare-fun e!2284226 () Bool)

(assert (=> d!1082756 (= lt!1291489 e!2284226)))

(declare-fun res!1499119 () Bool)

(assert (=> d!1082756 (=> res!1499119 e!2284226)))

(assert (=> d!1082756 (= res!1499119 ((_ is Nil!39029) (tail!5709 lt!1291056)))))

(assert (=> d!1082756 (= (isPrefix!3247 (tail!5709 lt!1291056) (tail!5709 (++!9721 lt!1291056 (_2!22600 lt!1291054)))) lt!1291489)))

(declare-fun b!3688786 () Bool)

(assert (=> b!3688786 (= e!2284224 (>= (size!29826 (tail!5709 (++!9721 lt!1291056 (_2!22600 lt!1291054)))) (size!29826 (tail!5709 lt!1291056))))))

(declare-fun b!3688783 () Bool)

(assert (=> b!3688783 (= e!2284226 e!2284225)))

(declare-fun res!1499118 () Bool)

(assert (=> b!3688783 (=> (not res!1499118) (not e!2284225))))

(assert (=> b!3688783 (= res!1499118 (not ((_ is Nil!39029) (tail!5709 (++!9721 lt!1291056 (_2!22600 lt!1291054))))))))

(declare-fun b!3688785 () Bool)

(assert (=> b!3688785 (= e!2284225 (isPrefix!3247 (tail!5709 (tail!5709 lt!1291056)) (tail!5709 (tail!5709 (++!9721 lt!1291056 (_2!22600 lt!1291054))))))))

(assert (= (and d!1082756 (not res!1499119)) b!3688783))

(assert (= (and b!3688783 res!1499118) b!3688784))

(assert (= (and b!3688784 res!1499120) b!3688785))

(assert (= (and d!1082756 (not res!1499121)) b!3688786))

(assert (=> b!3688784 m!4200439))

(assert (=> b!3688784 m!4200849))

(assert (=> b!3688784 m!4200449))

(declare-fun m!4201209 () Bool)

(assert (=> b!3688784 m!4201209))

(assert (=> b!3688786 m!4200449))

(declare-fun m!4201211 () Bool)

(assert (=> b!3688786 m!4201211))

(assert (=> b!3688786 m!4200439))

(assert (=> b!3688786 m!4200855))

(assert (=> b!3688785 m!4200439))

(assert (=> b!3688785 m!4200857))

(assert (=> b!3688785 m!4200449))

(declare-fun m!4201213 () Bool)

(assert (=> b!3688785 m!4201213))

(assert (=> b!3688785 m!4200857))

(assert (=> b!3688785 m!4201213))

(declare-fun m!4201215 () Bool)

(assert (=> b!3688785 m!4201215))

(assert (=> b!3688228 d!1082756))

(assert (=> b!3688228 d!1082698))

(declare-fun d!1082758 () Bool)

(assert (=> d!1082758 (= (tail!5709 (++!9721 lt!1291056 (_2!22600 lt!1291054))) (t!301220 (++!9721 lt!1291056 (_2!22600 lt!1291054))))))

(assert (=> b!3688228 d!1082758))

(declare-fun d!1082760 () Bool)

(assert (=> d!1082760 true))

(declare-fun order!21633 () Int)

(declare-fun lambda!124929 () Int)

(declare-fun dynLambda!17107 (Int Int) Int)

(assert (=> d!1082760 (< (dynLambda!17106 order!21631 (toValue!8210 (transformation!5894 (h!44450 rules!3568)))) (dynLambda!17107 order!21633 lambda!124929))))

(declare-fun Forall2!980 (Int) Bool)

(assert (=> d!1082760 (= (equivClasses!2414 (toChars!8069 (transformation!5894 (h!44450 rules!3568))) (toValue!8210 (transformation!5894 (h!44450 rules!3568)))) (Forall2!980 lambda!124929))))

(declare-fun bs!574021 () Bool)

(assert (= bs!574021 d!1082760))

(declare-fun m!4201217 () Bool)

(assert (=> bs!574021 m!4201217))

(assert (=> b!3688034 d!1082760))

(assert (=> b!3688227 d!1082712))

(declare-fun d!1082762 () Bool)

(assert (=> d!1082762 (= (head!7960 (++!9721 lt!1291056 (_2!22600 lt!1291054))) (h!44449 (++!9721 lt!1291056 (_2!22600 lt!1291054))))))

(assert (=> b!3688227 d!1082762))

(assert (=> d!1082490 d!1082500))

(assert (=> d!1082490 d!1082492))

(declare-fun d!1082764 () Bool)

(assert (=> d!1082764 (isPrefix!3247 lt!1291056 (++!9721 input!3129 suffix!1448))))

(assert (=> d!1082764 true))

(declare-fun _$58!514 () Unit!57086)

(assert (=> d!1082764 (= (choose!22073 lt!1291056 input!3129 suffix!1448) _$58!514)))

(declare-fun bs!574022 () Bool)

(assert (= bs!574022 d!1082764))

(assert (=> bs!574022 m!4200159))

(assert (=> bs!574022 m!4200159))

(assert (=> bs!574022 m!4200161))

(assert (=> d!1082490 d!1082764))

(declare-fun b!3688792 () Bool)

(declare-fun res!1499126 () Bool)

(declare-fun e!2284230 () Bool)

(assert (=> b!3688792 (=> (not res!1499126) (not e!2284230))))

(assert (=> b!3688792 (= res!1499126 (= (head!7960 lt!1291056) (head!7960 input!3129)))))

(declare-fun d!1082766 () Bool)

(declare-fun e!2284229 () Bool)

(assert (=> d!1082766 e!2284229))

(declare-fun res!1499127 () Bool)

(assert (=> d!1082766 (=> res!1499127 e!2284229)))

(declare-fun lt!1291490 () Bool)

(assert (=> d!1082766 (= res!1499127 (not lt!1291490))))

(declare-fun e!2284231 () Bool)

(assert (=> d!1082766 (= lt!1291490 e!2284231)))

(declare-fun res!1499125 () Bool)

(assert (=> d!1082766 (=> res!1499125 e!2284231)))

(assert (=> d!1082766 (= res!1499125 ((_ is Nil!39029) lt!1291056))))

(assert (=> d!1082766 (= (isPrefix!3247 lt!1291056 input!3129) lt!1291490)))

(declare-fun b!3688794 () Bool)

(assert (=> b!3688794 (= e!2284229 (>= (size!29826 input!3129) (size!29826 lt!1291056)))))

(declare-fun b!3688791 () Bool)

(assert (=> b!3688791 (= e!2284231 e!2284230)))

(declare-fun res!1499124 () Bool)

(assert (=> b!3688791 (=> (not res!1499124) (not e!2284230))))

(assert (=> b!3688791 (= res!1499124 (not ((_ is Nil!39029) input!3129)))))

(declare-fun b!3688793 () Bool)

(assert (=> b!3688793 (= e!2284230 (isPrefix!3247 (tail!5709 lt!1291056) (tail!5709 input!3129)))))

(assert (= (and d!1082766 (not res!1499125)) b!3688791))

(assert (= (and b!3688791 res!1499124) b!3688792))

(assert (= (and b!3688792 res!1499126) b!3688793))

(assert (= (and d!1082766 (not res!1499127)) b!3688794))

(assert (=> b!3688792 m!4200433))

(assert (=> b!3688792 m!4200471))

(assert (=> b!3688794 m!4200365))

(assert (=> b!3688794 m!4200407))

(assert (=> b!3688793 m!4200439))

(assert (=> b!3688793 m!4200473))

(assert (=> b!3688793 m!4200439))

(assert (=> b!3688793 m!4200473))

(declare-fun m!4201219 () Bool)

(assert (=> b!3688793 m!4201219))

(assert (=> d!1082490 d!1082766))

(assert (=> b!3688193 d!1082622))

(declare-fun d!1082768 () Bool)

(declare-fun dynLambda!17108 (Int BalanceConc!23570) TokenValue!6124)

(assert (=> d!1082768 (= (apply!9366 (transformation!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114)))) (seqFromList!4443 (originalCharacters!6608 (_1!22600 (get!12942 lt!1291114))))) (dynLambda!17108 (toValue!8210 (transformation!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114))))) (seqFromList!4443 (originalCharacters!6608 (_1!22600 (get!12942 lt!1291114))))))))

(declare-fun b_lambda!109491 () Bool)

(assert (=> (not b_lambda!109491) (not d!1082768)))

(declare-fun tb!213819 () Bool)

(declare-fun t!301258 () Bool)

(assert (=> (and b!3688024 (= (toValue!8210 (transformation!5894 (h!44450 rules!3568))) (toValue!8210 (transformation!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114)))))) t!301258) tb!213819))

(declare-fun result!260276 () Bool)

(declare-fun inv!21 (TokenValue!6124) Bool)

(assert (=> tb!213819 (= result!260276 (inv!21 (dynLambda!17108 (toValue!8210 (transformation!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114))))) (seqFromList!4443 (originalCharacters!6608 (_1!22600 (get!12942 lt!1291114)))))))))

(declare-fun m!4201221 () Bool)

(assert (=> tb!213819 m!4201221))

(assert (=> d!1082768 t!301258))

(declare-fun b_and!275611 () Bool)

(assert (= b_and!275579 (and (=> t!301258 result!260276) b_and!275611)))

(declare-fun t!301260 () Bool)

(declare-fun tb!213821 () Bool)

(assert (=> (and b!3688259 (= (toValue!8210 (transformation!5894 (h!44450 (t!301221 rules!3568)))) (toValue!8210 (transformation!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114)))))) t!301260) tb!213821))

(declare-fun result!260280 () Bool)

(assert (= result!260280 result!260276))

(assert (=> d!1082768 t!301260))

(declare-fun b_and!275613 () Bool)

(assert (= b_and!275591 (and (=> t!301260 result!260280) b_and!275613)))

(assert (=> d!1082768 m!4200377))

(declare-fun m!4201223 () Bool)

(assert (=> d!1082768 m!4201223))

(assert (=> b!3688193 d!1082768))

(declare-fun d!1082770 () Bool)

(assert (=> d!1082770 (= (seqFromList!4443 (originalCharacters!6608 (_1!22600 (get!12942 lt!1291114)))) (fromListB!2050 (originalCharacters!6608 (_1!22600 (get!12942 lt!1291114)))))))

(declare-fun bs!574023 () Bool)

(assert (= bs!574023 d!1082770))

(declare-fun m!4201225 () Bool)

(assert (=> bs!574023 m!4201225))

(assert (=> b!3688193 d!1082770))

(assert (=> b!3688192 d!1082618))

(assert (=> b!3688192 d!1082620))

(assert (=> b!3688192 d!1082622))

(declare-fun b!3688797 () Bool)

(declare-fun e!2284235 () Bool)

(assert (=> b!3688797 (= e!2284235 tp_is_empty!18389)))

(declare-fun b!3688799 () Bool)

(declare-fun tp!1121025 () Bool)

(assert (=> b!3688799 (= e!2284235 tp!1121025)))

(declare-fun b!3688798 () Bool)

(declare-fun tp!1121022 () Bool)

(declare-fun tp!1121023 () Bool)

(assert (=> b!3688798 (= e!2284235 (and tp!1121022 tp!1121023))))

(declare-fun b!3688800 () Bool)

(declare-fun tp!1121024 () Bool)

(declare-fun tp!1121026 () Bool)

(assert (=> b!3688800 (= e!2284235 (and tp!1121024 tp!1121026))))

(assert (=> b!3688243 (= tp!1120956 e!2284235)))

(assert (= (and b!3688243 ((_ is ElementMatch!10653) (regOne!21819 (regex!5894 (h!44450 rules!3568))))) b!3688797))

(assert (= (and b!3688243 ((_ is Concat!16778) (regOne!21819 (regex!5894 (h!44450 rules!3568))))) b!3688798))

(assert (= (and b!3688243 ((_ is Star!10653) (regOne!21819 (regex!5894 (h!44450 rules!3568))))) b!3688799))

(assert (= (and b!3688243 ((_ is Union!10653) (regOne!21819 (regex!5894 (h!44450 rules!3568))))) b!3688800))

(declare-fun b!3688801 () Bool)

(declare-fun e!2284236 () Bool)

(assert (=> b!3688801 (= e!2284236 tp_is_empty!18389)))

(declare-fun b!3688803 () Bool)

(declare-fun tp!1121030 () Bool)

(assert (=> b!3688803 (= e!2284236 tp!1121030)))

(declare-fun b!3688802 () Bool)

(declare-fun tp!1121027 () Bool)

(declare-fun tp!1121028 () Bool)

(assert (=> b!3688802 (= e!2284236 (and tp!1121027 tp!1121028))))

(declare-fun b!3688804 () Bool)

(declare-fun tp!1121029 () Bool)

(declare-fun tp!1121031 () Bool)

(assert (=> b!3688804 (= e!2284236 (and tp!1121029 tp!1121031))))

(assert (=> b!3688243 (= tp!1120958 e!2284236)))

(assert (= (and b!3688243 ((_ is ElementMatch!10653) (regTwo!21819 (regex!5894 (h!44450 rules!3568))))) b!3688801))

(assert (= (and b!3688243 ((_ is Concat!16778) (regTwo!21819 (regex!5894 (h!44450 rules!3568))))) b!3688802))

(assert (= (and b!3688243 ((_ is Star!10653) (regTwo!21819 (regex!5894 (h!44450 rules!3568))))) b!3688803))

(assert (= (and b!3688243 ((_ is Union!10653) (regTwo!21819 (regex!5894 (h!44450 rules!3568))))) b!3688804))

(declare-fun b!3688805 () Bool)

(declare-fun e!2284237 () Bool)

(assert (=> b!3688805 (= e!2284237 tp_is_empty!18389)))

(declare-fun b!3688807 () Bool)

(declare-fun tp!1121035 () Bool)

(assert (=> b!3688807 (= e!2284237 tp!1121035)))

(declare-fun b!3688806 () Bool)

(declare-fun tp!1121032 () Bool)

(declare-fun tp!1121033 () Bool)

(assert (=> b!3688806 (= e!2284237 (and tp!1121032 tp!1121033))))

(declare-fun b!3688808 () Bool)

(declare-fun tp!1121034 () Bool)

(declare-fun tp!1121036 () Bool)

(assert (=> b!3688808 (= e!2284237 (and tp!1121034 tp!1121036))))

(assert (=> b!3688258 (= tp!1120970 e!2284237)))

(assert (= (and b!3688258 ((_ is ElementMatch!10653) (regex!5894 (h!44450 (t!301221 rules!3568))))) b!3688805))

(assert (= (and b!3688258 ((_ is Concat!16778) (regex!5894 (h!44450 (t!301221 rules!3568))))) b!3688806))

(assert (= (and b!3688258 ((_ is Star!10653) (regex!5894 (h!44450 (t!301221 rules!3568))))) b!3688807))

(assert (= (and b!3688258 ((_ is Union!10653) (regex!5894 (h!44450 (t!301221 rules!3568))))) b!3688808))

(declare-fun b!3688811 () Bool)

(declare-fun b_free!97869 () Bool)

(declare-fun b_next!98573 () Bool)

(assert (=> b!3688811 (= b_free!97869 (not b_next!98573))))

(declare-fun tb!213823 () Bool)

(declare-fun t!301262 () Bool)

(assert (=> (and b!3688811 (= (toValue!8210 (transformation!5894 (h!44450 (t!301221 (t!301221 rules!3568))))) (toValue!8210 (transformation!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114)))))) t!301262) tb!213823))

(declare-fun result!260282 () Bool)

(assert (= result!260282 result!260276))

(assert (=> d!1082768 t!301262))

(declare-fun b_and!275615 () Bool)

(declare-fun tp!1121038 () Bool)

(assert (=> b!3688811 (= tp!1121038 (and (=> t!301262 result!260282) b_and!275615))))

(declare-fun b_free!97871 () Bool)

(declare-fun b_next!98575 () Bool)

(assert (=> b!3688811 (= b_free!97871 (not b_next!98575))))

(declare-fun tb!213825 () Bool)

(declare-fun t!301264 () Bool)

(assert (=> (and b!3688811 (= (toChars!8069 (transformation!5894 (h!44450 (t!301221 (t!301221 rules!3568))))) (toChars!8069 (transformation!5894 (rule!8740 lt!1291051)))) t!301264) tb!213825))

(declare-fun result!260284 () Bool)

(assert (= result!260284 result!260242))

(assert (=> d!1082478 t!301264))

(declare-fun t!301266 () Bool)

(declare-fun tb!213827 () Bool)

(assert (=> (and b!3688811 (= (toChars!8069 (transformation!5894 (h!44450 (t!301221 (t!301221 rules!3568))))) (toChars!8069 (transformation!5894 (rule!8740 (_1!22600 (get!12942 lt!1291114)))))) t!301266) tb!213827))

(declare-fun result!260286 () Bool)

(assert (= result!260286 result!260260))

(assert (=> d!1082620 t!301266))

(declare-fun b_and!275617 () Bool)

(declare-fun tp!1121040 () Bool)

(assert (=> b!3688811 (= tp!1121040 (and (=> t!301264 result!260284) (=> t!301266 result!260286) b_and!275617))))

(declare-fun e!2284238 () Bool)

(assert (=> b!3688811 (= e!2284238 (and tp!1121038 tp!1121040))))

(declare-fun tp!1121037 () Bool)

(declare-fun e!2284239 () Bool)

(declare-fun b!3688810 () Bool)

(assert (=> b!3688810 (= e!2284239 (and tp!1121037 (inv!52494 (tag!6706 (h!44450 (t!301221 (t!301221 rules!3568))))) (inv!52496 (transformation!5894 (h!44450 (t!301221 (t!301221 rules!3568))))) e!2284238))))

(declare-fun b!3688809 () Bool)

(declare-fun e!2284240 () Bool)

(declare-fun tp!1121039 () Bool)

(assert (=> b!3688809 (= e!2284240 (and e!2284239 tp!1121039))))

(assert (=> b!3688257 (= tp!1120972 e!2284240)))

(assert (= b!3688810 b!3688811))

(assert (= b!3688809 b!3688810))

(assert (= (and b!3688257 ((_ is Cons!39030) (t!301221 (t!301221 rules!3568)))) b!3688809))

(declare-fun m!4201227 () Bool)

(assert (=> b!3688810 m!4201227))

(declare-fun m!4201229 () Bool)

(assert (=> b!3688810 m!4201229))

(declare-fun b!3688812 () Bool)

(declare-fun e!2284242 () Bool)

(declare-fun tp!1121041 () Bool)

(assert (=> b!3688812 (= e!2284242 (and tp_is_empty!18389 tp!1121041))))

(assert (=> b!3688248 (= tp!1120961 e!2284242)))

(assert (= (and b!3688248 ((_ is Cons!39029) (t!301220 (t!301220 input!3129)))) b!3688812))

(declare-fun b!3688813 () Bool)

(declare-fun e!2284243 () Bool)

(assert (=> b!3688813 (= e!2284243 tp_is_empty!18389)))

(declare-fun b!3688815 () Bool)

(declare-fun tp!1121045 () Bool)

(assert (=> b!3688815 (= e!2284243 tp!1121045)))

(declare-fun b!3688814 () Bool)

(declare-fun tp!1121042 () Bool)

(declare-fun tp!1121043 () Bool)

(assert (=> b!3688814 (= e!2284243 (and tp!1121042 tp!1121043))))

(declare-fun b!3688816 () Bool)

(declare-fun tp!1121044 () Bool)

(declare-fun tp!1121046 () Bool)

(assert (=> b!3688816 (= e!2284243 (and tp!1121044 tp!1121046))))

(assert (=> b!3688242 (= tp!1120957 e!2284243)))

(assert (= (and b!3688242 ((_ is ElementMatch!10653) (reg!10982 (regex!5894 (h!44450 rules!3568))))) b!3688813))

(assert (= (and b!3688242 ((_ is Concat!16778) (reg!10982 (regex!5894 (h!44450 rules!3568))))) b!3688814))

(assert (= (and b!3688242 ((_ is Star!10653) (reg!10982 (regex!5894 (h!44450 rules!3568))))) b!3688815))

(assert (= (and b!3688242 ((_ is Union!10653) (reg!10982 (regex!5894 (h!44450 rules!3568))))) b!3688816))

(declare-fun b!3688817 () Bool)

(declare-fun e!2284244 () Bool)

(declare-fun tp!1121047 () Bool)

(assert (=> b!3688817 (= e!2284244 (and tp_is_empty!18389 tp!1121047))))

(assert (=> b!3688260 (= tp!1120974 e!2284244)))

(assert (= (and b!3688260 ((_ is Cons!39029) (t!301220 (t!301220 suffix!1448)))) b!3688817))

(declare-fun b!3688818 () Bool)

(declare-fun e!2284245 () Bool)

(assert (=> b!3688818 (= e!2284245 tp_is_empty!18389)))

(declare-fun b!3688820 () Bool)

(declare-fun tp!1121051 () Bool)

(assert (=> b!3688820 (= e!2284245 tp!1121051)))

(declare-fun b!3688819 () Bool)

(declare-fun tp!1121048 () Bool)

(declare-fun tp!1121049 () Bool)

(assert (=> b!3688819 (= e!2284245 (and tp!1121048 tp!1121049))))

(declare-fun b!3688821 () Bool)

(declare-fun tp!1121050 () Bool)

(declare-fun tp!1121052 () Bool)

(assert (=> b!3688821 (= e!2284245 (and tp!1121050 tp!1121052))))

(assert (=> b!3688241 (= tp!1120954 e!2284245)))

(assert (= (and b!3688241 ((_ is ElementMatch!10653) (regOne!21818 (regex!5894 (h!44450 rules!3568))))) b!3688818))

(assert (= (and b!3688241 ((_ is Concat!16778) (regOne!21818 (regex!5894 (h!44450 rules!3568))))) b!3688819))

(assert (= (and b!3688241 ((_ is Star!10653) (regOne!21818 (regex!5894 (h!44450 rules!3568))))) b!3688820))

(assert (= (and b!3688241 ((_ is Union!10653) (regOne!21818 (regex!5894 (h!44450 rules!3568))))) b!3688821))

(declare-fun b!3688822 () Bool)

(declare-fun e!2284246 () Bool)

(assert (=> b!3688822 (= e!2284246 tp_is_empty!18389)))

(declare-fun b!3688824 () Bool)

(declare-fun tp!1121056 () Bool)

(assert (=> b!3688824 (= e!2284246 tp!1121056)))

(declare-fun b!3688823 () Bool)

(declare-fun tp!1121053 () Bool)

(declare-fun tp!1121054 () Bool)

(assert (=> b!3688823 (= e!2284246 (and tp!1121053 tp!1121054))))

(declare-fun b!3688825 () Bool)

(declare-fun tp!1121055 () Bool)

(declare-fun tp!1121057 () Bool)

(assert (=> b!3688825 (= e!2284246 (and tp!1121055 tp!1121057))))

(assert (=> b!3688241 (= tp!1120955 e!2284246)))

(assert (= (and b!3688241 ((_ is ElementMatch!10653) (regTwo!21818 (regex!5894 (h!44450 rules!3568))))) b!3688822))

(assert (= (and b!3688241 ((_ is Concat!16778) (regTwo!21818 (regex!5894 (h!44450 rules!3568))))) b!3688823))

(assert (= (and b!3688241 ((_ is Star!10653) (regTwo!21818 (regex!5894 (h!44450 rules!3568))))) b!3688824))

(assert (= (and b!3688241 ((_ is Union!10653) (regTwo!21818 (regex!5894 (h!44450 rules!3568))))) b!3688825))

(declare-fun b!3688834 () Bool)

(declare-fun e!2284251 () Bool)

(declare-fun tp!1121065 () Bool)

(declare-fun tp!1121064 () Bool)

(assert (=> b!3688834 (= e!2284251 (and (inv!52499 (left!30443 (c!637900 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))) (value!188439 lt!1291051))))) tp!1121065 (inv!52499 (right!30773 (c!637900 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))) (value!188439 lt!1291051))))) tp!1121064))))

(declare-fun b!3688836 () Bool)

(declare-fun e!2284252 () Bool)

(declare-fun tp!1121066 () Bool)

(assert (=> b!3688836 (= e!2284252 tp!1121066)))

(declare-fun b!3688835 () Bool)

(declare-fun inv!52506 (IArray!23961) Bool)

(assert (=> b!3688835 (= e!2284251 (and (inv!52506 (xs!15180 (c!637900 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))) (value!188439 lt!1291051))))) e!2284252))))

(assert (=> b!3688170 (= tp!1120943 (and (inv!52499 (c!637900 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))) (value!188439 lt!1291051)))) e!2284251))))

(assert (= (and b!3688170 ((_ is Node!11978) (c!637900 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))) (value!188439 lt!1291051))))) b!3688834))

(assert (= b!3688835 b!3688836))

(assert (= (and b!3688170 ((_ is Leaf!18536) (c!637900 (dynLambda!17098 (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))) (value!188439 lt!1291051))))) b!3688835))

(declare-fun m!4201231 () Bool)

(assert (=> b!3688834 m!4201231))

(declare-fun m!4201233 () Bool)

(assert (=> b!3688834 m!4201233))

(declare-fun m!4201235 () Bool)

(assert (=> b!3688835 m!4201235))

(assert (=> b!3688170 m!4200353))

(declare-fun b_lambda!109493 () Bool)

(assert (= b_lambda!109481 (or (and b!3688024 b_free!97855 (= (toChars!8069 (transformation!5894 (h!44450 rules!3568))) (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))))) (and b!3688259 b_free!97863 (= (toChars!8069 (transformation!5894 (h!44450 (t!301221 rules!3568)))) (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))))) (and b!3688811 b_free!97871 (= (toChars!8069 (transformation!5894 (h!44450 (t!301221 (t!301221 rules!3568))))) (toChars!8069 (transformation!5894 (rule!8740 lt!1291051))))) b_lambda!109493)))

(check-sat (not b!3688809) (not b!3688406) (not b_next!98573) (not b!3688595) (not d!1082750) (not d!1082644) (not d!1082754) (not b!3688529) (not b!3688282) (not b!3688418) (not b!3688560) (not b!3688552) (not d!1082636) (not b!3688743) (not b!3688798) (not b!3688690) (not b!3688540) (not d!1082662) (not d!1082626) (not b!3688280) (not d!1082640) (not b!3688794) (not b!3688417) (not b!3688799) (not b!3688401) (not b!3688819) (not b!3688606) b_and!275599 (not b!3688836) (not b!3688741) b_and!275617 (not b!3688562) (not d!1082634) (not b!3688385) (not tb!213819) (not b!3688745) (not b!3688754) (not b!3688780) b_and!275615 (not d!1082702) (not b!3688738) (not b!3688740) (not b!3688820) (not d!1082624) (not d!1082710) (not b!3688777) (not d!1082764) (not d!1082720) (not b_next!98575) (not d!1082618) (not b!3688691) (not b!3688544) (not b!3688281) (not b!3688170) (not b!3688835) (not b!3688553) (not b!3688806) (not tb!213805) (not d!1082638) (not d!1082672) (not b!3688536) (not b_lambda!109493) (not b_lambda!109485) (not d!1082760) (not d!1082658) (not b!3688776) (not b!3688398) (not b!3688775) (not b!3688548) (not b!3688834) (not b!3688747) (not b!3688566) (not b_next!98557) (not d!1082616) (not b!3688598) b_and!275613 (not b!3688695) (not b!3688804) (not b!3688810) (not d!1082620) (not b!3688815) (not b!3688545) (not b!3688817) (not b!3688550) (not b!3688514) (not d!1082728) (not b!3688403) (not b!3688602) (not d!1082524) (not b!3688542) (not b!3688394) (not b!3688785) tp_is_empty!18389 (not b!3688814) (not b!3688823) (not b_next!98559) (not b!3688812) (not b!3688538) (not b!3688802) (not d!1082744) (not b_next!98567) (not d!1082716) (not b!3688452) b_and!275611 (not b!3688786) (not b!3688748) (not b!3688400) (not b!3688800) (not b!3688742) (not b!3688749) (not b!3688779) (not b!3688597) (not d!1082752) (not b!3688784) (not b!3688482) (not b!3688451) (not bm!266879) (not b!3688515) (not b!3688803) (not d!1082522) (not b!3688419) (not b!3688821) (not d!1082642) (not b!3688751) (not d!1082730) (not b!3688807) (not bm!266875) (not b!3688564) (not b!3688792) b_and!275601 (not b!3688546) (not b!3688396) (not b!3688744) (not d!1082770) (not b!3688485) (not b!3688782) (not d!1082748) (not b!3688808) (not b!3688816) (not b!3688774) (not b!3688825) (not b!3688605) (not d!1082732) (not b!3688778) (not b!3688449) (not b!3688386) (not b_lambda!109491) (not b!3688824) (not b!3688692) (not b!3688559) (not b_next!98565) (not d!1082660) (not b!3688793) (not b!3688753))
(check-sat (not b_next!98573) b_and!275615 (not b_next!98575) b_and!275611 b_and!275601 (not b_next!98565) b_and!275599 b_and!275617 (not b_next!98557) b_and!275613 (not b_next!98559) (not b_next!98567))
