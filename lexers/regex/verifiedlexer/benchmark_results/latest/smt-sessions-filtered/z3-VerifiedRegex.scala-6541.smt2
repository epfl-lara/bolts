; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!345858 () Bool)

(assert start!345858)

(declare-fun b!3683466 () Bool)

(declare-fun b_free!97653 () Bool)

(declare-fun b_next!98357 () Bool)

(assert (=> b!3683466 (= b_free!97653 (not b_next!98357))))

(declare-fun tp!1119665 () Bool)

(declare-fun b_and!275307 () Bool)

(assert (=> b!3683466 (= tp!1119665 b_and!275307)))

(declare-fun b_free!97655 () Bool)

(declare-fun b_next!98359 () Bool)

(assert (=> b!3683466 (= b_free!97655 (not b_next!98359))))

(declare-fun tp!1119666 () Bool)

(declare-fun b_and!275309 () Bool)

(assert (=> b!3683466 (= tp!1119666 b_and!275309)))

(declare-fun b!3683459 () Bool)

(declare-fun res!1496523 () Bool)

(declare-fun e!2280914 () Bool)

(assert (=> b!3683459 (=> (not res!1496523) (not e!2280914))))

(declare-datatypes ((LexerInterface!5451 0))(
  ( (LexerInterfaceExt!5448 (__x!24401 Int)) (Lexer!5449) )
))
(declare-fun thiss!25197 () LexerInterface!5451)

(declare-datatypes ((List!39012 0))(
  ( (Nil!38888) (Cons!38888 (h!44308 (_ BitVec 16)) (t!300929 List!39012)) )
))
(declare-datatypes ((TokenValue!6092 0))(
  ( (FloatLiteralValue!12184 (text!43089 List!39012)) (TokenValueExt!6091 (__x!24402 Int)) (Broken!30460 (value!187501 List!39012)) (Object!6215) (End!6092) (Def!6092) (Underscore!6092) (Match!6092) (Else!6092) (Error!6092) (Case!6092) (If!6092) (Extends!6092) (Abstract!6092) (Class!6092) (Val!6092) (DelimiterValue!12184 (del!6152 List!39012)) (KeywordValue!6098 (value!187502 List!39012)) (CommentValue!12184 (value!187503 List!39012)) (WhitespaceValue!12184 (value!187504 List!39012)) (IndentationValue!6092 (value!187505 List!39012)) (String!43793) (Int32!6092) (Broken!30461 (value!187506 List!39012)) (Boolean!6093) (Unit!56975) (OperatorValue!6095 (op!6152 List!39012)) (IdentifierValue!12184 (value!187507 List!39012)) (IdentifierValue!12185 (value!187508 List!39012)) (WhitespaceValue!12185 (value!187509 List!39012)) (True!12184) (False!12184) (Broken!30462 (value!187510 List!39012)) (Broken!30463 (value!187511 List!39012)) (True!12185) (RightBrace!6092) (RightBracket!6092) (Colon!6092) (Null!6092) (Comma!6092) (LeftBracket!6092) (False!12185) (LeftBrace!6092) (ImaginaryLiteralValue!6092 (text!43090 List!39012)) (StringLiteralValue!18276 (value!187512 List!39012)) (EOFValue!6092 (value!187513 List!39012)) (IdentValue!6092 (value!187514 List!39012)) (DelimiterValue!12185 (value!187515 List!39012)) (DedentValue!6092 (value!187516 List!39012)) (NewLineValue!6092 (value!187517 List!39012)) (IntegerValue!18276 (value!187518 (_ BitVec 32)) (text!43091 List!39012)) (IntegerValue!18277 (value!187519 Int) (text!43092 List!39012)) (Times!6092) (Or!6092) (Equal!6092) (Minus!6092) (Broken!30464 (value!187520 List!39012)) (And!6092) (Div!6092) (LessEqual!6092) (Mod!6092) (Concat!16713) (Not!6092) (Plus!6092) (SpaceValue!6092 (value!187521 List!39012)) (IntegerValue!18278 (value!187522 Int) (text!43093 List!39012)) (StringLiteralValue!18277 (text!43094 List!39012)) (FloatLiteralValue!12185 (text!43095 List!39012)) (BytesLiteralValue!6092 (value!187523 List!39012)) (CommentValue!12185 (value!187524 List!39012)) (StringLiteralValue!18278 (value!187525 List!39012)) (ErrorTokenValue!6092 (msg!6153 List!39012)) )
))
(declare-datatypes ((C!21428 0))(
  ( (C!21429 (val!12762 Int)) )
))
(declare-datatypes ((List!39013 0))(
  ( (Nil!38889) (Cons!38889 (h!44309 C!21428) (t!300930 List!39013)) )
))
(declare-datatypes ((IArray!23833 0))(
  ( (IArray!23834 (innerList!11974 List!39013)) )
))
(declare-datatypes ((Regex!10621 0))(
  ( (ElementMatch!10621 (c!637193 C!21428)) (Concat!16714 (regOne!21754 Regex!10621) (regTwo!21754 Regex!10621)) (EmptyExpr!10621) (Star!10621 (reg!10950 Regex!10621)) (EmptyLang!10621) (Union!10621 (regOne!21755 Regex!10621) (regTwo!21755 Regex!10621)) )
))
(declare-datatypes ((Conc!11914 0))(
  ( (Node!11914 (left!30343 Conc!11914) (right!30673 Conc!11914) (csize!24058 Int) (cheight!12125 Int)) (Leaf!18456 (xs!15116 IArray!23833) (csize!24059 Int)) (Empty!11914) )
))
(declare-datatypes ((BalanceConc!23442 0))(
  ( (BalanceConc!23443 (c!637194 Conc!11914)) )
))
(declare-datatypes ((String!43794 0))(
  ( (String!43795 (value!187526 String)) )
))
(declare-datatypes ((TokenValueInjection!11612 0))(
  ( (TokenValueInjection!11613 (toValue!8166 Int) (toChars!8025 Int)) )
))
(declare-datatypes ((Rule!11524 0))(
  ( (Rule!11525 (regex!5862 Regex!10621) (tag!6668 String!43794) (isSeparator!5862 Bool) (transformation!5862 TokenValueInjection!11612)) )
))
(declare-datatypes ((List!39014 0))(
  ( (Nil!38890) (Cons!38890 (h!44310 Rule!11524) (t!300931 List!39014)) )
))
(declare-fun rules!3568 () List!39014)

(declare-fun rulesInvariant!4848 (LexerInterface!5451 List!39014) Bool)

(assert (=> b!3683459 (= res!1496523 (rulesInvariant!4848 thiss!25197 rules!3568))))

(declare-fun b!3683460 () Bool)

(declare-fun e!2280915 () Bool)

(declare-fun e!2280911 () Bool)

(declare-fun tp!1119663 () Bool)

(assert (=> b!3683460 (= e!2280915 (and e!2280911 tp!1119663))))

(declare-fun b!3683461 () Bool)

(declare-fun res!1496526 () Bool)

(assert (=> b!3683461 (=> (not res!1496526) (not e!2280914))))

(declare-fun isEmpty!23102 (List!39014) Bool)

(assert (=> b!3683461 (= res!1496526 (not (isEmpty!23102 rules!3568)))))

(declare-fun b!3683462 () Bool)

(declare-fun e!2280910 () Bool)

(declare-fun tp!1119662 () Bool)

(declare-fun inv!52375 (String!43794) Bool)

(declare-fun inv!52377 (TokenValueInjection!11612) Bool)

(assert (=> b!3683462 (= e!2280911 (and tp!1119662 (inv!52375 (tag!6668 (h!44310 rules!3568))) (inv!52377 (transformation!5862 (h!44310 rules!3568))) e!2280910))))

(declare-fun b!3683463 () Bool)

(declare-fun e!2280912 () Bool)

(assert (=> b!3683463 (= e!2280914 e!2280912)))

(declare-fun res!1496525 () Bool)

(assert (=> b!3683463 (=> (not res!1496525) (not e!2280912))))

(declare-datatypes ((Token!11090 0))(
  ( (Token!11091 (value!187527 TokenValue!6092) (rule!8702 Rule!11524) (size!29735 Int) (originalCharacters!6576 List!39013)) )
))
(declare-datatypes ((List!39015 0))(
  ( (Nil!38891) (Cons!38891 (h!44311 Token!11090) (t!300932 List!39015)) )
))
(declare-datatypes ((IArray!23835 0))(
  ( (IArray!23836 (innerList!11975 List!39015)) )
))
(declare-datatypes ((Conc!11915 0))(
  ( (Node!11915 (left!30344 Conc!11915) (right!30674 Conc!11915) (csize!24060 Int) (cheight!12126 Int)) (Leaf!18457 (xs!15117 IArray!23835) (csize!24061 Int)) (Empty!11915) )
))
(declare-datatypes ((BalanceConc!23444 0))(
  ( (BalanceConc!23445 (c!637195 Conc!11915)) )
))
(declare-datatypes ((tuple2!38756 0))(
  ( (tuple2!38757 (_1!22512 BalanceConc!23444) (_2!22512 BalanceConc!23442)) )
))
(declare-fun lt!1288625 () tuple2!38756)

(declare-fun isEmpty!23103 (BalanceConc!23444) Bool)

(assert (=> b!3683463 (= res!1496525 (not (isEmpty!23103 (_1!22512 lt!1288625))))))

(declare-fun input!3129 () List!39013)

(declare-fun lex!2592 (LexerInterface!5451 List!39014 BalanceConc!23442) tuple2!38756)

(declare-fun seqFromList!4411 (List!39013) BalanceConc!23442)

(assert (=> b!3683463 (= lt!1288625 (lex!2592 thiss!25197 rules!3568 (seqFromList!4411 input!3129)))))

(declare-fun b!3683464 () Bool)

(declare-datatypes ((tuple2!38758 0))(
  ( (tuple2!38759 (_1!22513 Token!11090) (_2!22513 List!39013)) )
))
(declare-datatypes ((Option!8338 0))(
  ( (None!8337) (Some!8337 (v!38281 tuple2!38758)) )
))
(declare-fun isDefined!6563 (Option!8338) Bool)

(declare-fun maxPrefix!2979 (LexerInterface!5451 List!39014 List!39013) Option!8338)

(assert (=> b!3683464 (= e!2280912 (not (isDefined!6563 (maxPrefix!2979 thiss!25197 rules!3568 input!3129))))))

(declare-fun lt!1288626 () List!39013)

(declare-fun list!14472 (BalanceConc!23442) List!39013)

(declare-fun charsOf!3873 (Token!11090) BalanceConc!23442)

(declare-fun head!7914 (List!39015) Token!11090)

(declare-fun list!14473 (BalanceConc!23444) List!39015)

(assert (=> b!3683464 (= lt!1288626 (list!14472 (charsOf!3873 (head!7914 (list!14473 (_1!22512 lt!1288625))))))))

(declare-fun res!1496524 () Bool)

(assert (=> start!345858 (=> (not res!1496524) (not e!2280914))))

(get-info :version)

(assert (=> start!345858 (= res!1496524 ((_ is Lexer!5449) thiss!25197))))

(assert (=> start!345858 e!2280914))

(assert (=> start!345858 true))

(assert (=> start!345858 e!2280915))

(declare-fun e!2280916 () Bool)

(assert (=> start!345858 e!2280916))

(declare-fun b!3683465 () Bool)

(declare-fun tp_is_empty!18325 () Bool)

(declare-fun tp!1119664 () Bool)

(assert (=> b!3683465 (= e!2280916 (and tp_is_empty!18325 tp!1119664))))

(assert (=> b!3683466 (= e!2280910 (and tp!1119665 tp!1119666))))

(assert (= (and start!345858 res!1496524) b!3683461))

(assert (= (and b!3683461 res!1496526) b!3683459))

(assert (= (and b!3683459 res!1496523) b!3683463))

(assert (= (and b!3683463 res!1496525) b!3683464))

(assert (= b!3683462 b!3683466))

(assert (= b!3683460 b!3683462))

(assert (= (and start!345858 ((_ is Cons!38890) rules!3568)) b!3683460))

(assert (= (and start!345858 ((_ is Cons!38889) input!3129)) b!3683465))

(declare-fun m!4194651 () Bool)

(assert (=> b!3683461 m!4194651))

(declare-fun m!4194653 () Bool)

(assert (=> b!3683459 m!4194653))

(declare-fun m!4194655 () Bool)

(assert (=> b!3683464 m!4194655))

(declare-fun m!4194657 () Bool)

(assert (=> b!3683464 m!4194657))

(assert (=> b!3683464 m!4194657))

(declare-fun m!4194659 () Bool)

(assert (=> b!3683464 m!4194659))

(declare-fun m!4194661 () Bool)

(assert (=> b!3683464 m!4194661))

(assert (=> b!3683464 m!4194661))

(assert (=> b!3683464 m!4194655))

(declare-fun m!4194663 () Bool)

(assert (=> b!3683464 m!4194663))

(assert (=> b!3683464 m!4194663))

(declare-fun m!4194665 () Bool)

(assert (=> b!3683464 m!4194665))

(declare-fun m!4194667 () Bool)

(assert (=> b!3683463 m!4194667))

(declare-fun m!4194669 () Bool)

(assert (=> b!3683463 m!4194669))

(assert (=> b!3683463 m!4194669))

(declare-fun m!4194671 () Bool)

(assert (=> b!3683463 m!4194671))

(declare-fun m!4194673 () Bool)

(assert (=> b!3683462 m!4194673))

(declare-fun m!4194675 () Bool)

(assert (=> b!3683462 m!4194675))

(check-sat (not b!3683459) (not b!3683460) (not b!3683461) (not b!3683462) b_and!275309 (not b!3683463) (not b!3683465) tp_is_empty!18325 (not b!3683464) (not b_next!98359) b_and!275307 (not b_next!98357))
(check-sat b_and!275307 b_and!275309 (not b_next!98359) (not b_next!98357))
(get-model)

(declare-fun d!1081232 () Bool)

(assert (=> d!1081232 (= (isEmpty!23102 rules!3568) ((_ is Nil!38890) rules!3568))))

(assert (=> b!3683461 d!1081232))

(declare-fun d!1081236 () Bool)

(assert (=> d!1081236 (= (inv!52375 (tag!6668 (h!44310 rules!3568))) (= (mod (str.len (value!187526 (tag!6668 (h!44310 rules!3568)))) 2) 0))))

(assert (=> b!3683462 d!1081236))

(declare-fun d!1081238 () Bool)

(declare-fun res!1496532 () Bool)

(declare-fun e!2280922 () Bool)

(assert (=> d!1081238 (=> (not res!1496532) (not e!2280922))))

(declare-fun semiInverseModEq!2503 (Int Int) Bool)

(assert (=> d!1081238 (= res!1496532 (semiInverseModEq!2503 (toChars!8025 (transformation!5862 (h!44310 rules!3568))) (toValue!8166 (transformation!5862 (h!44310 rules!3568)))))))

(assert (=> d!1081238 (= (inv!52377 (transformation!5862 (h!44310 rules!3568))) e!2280922)))

(declare-fun b!3683472 () Bool)

(declare-fun equivClasses!2402 (Int Int) Bool)

(assert (=> b!3683472 (= e!2280922 (equivClasses!2402 (toChars!8025 (transformation!5862 (h!44310 rules!3568))) (toValue!8166 (transformation!5862 (h!44310 rules!3568)))))))

(assert (= (and d!1081238 res!1496532) b!3683472))

(declare-fun m!4194681 () Bool)

(assert (=> d!1081238 m!4194681))

(declare-fun m!4194683 () Bool)

(assert (=> b!3683472 m!4194683))

(assert (=> b!3683462 d!1081238))

(declare-fun d!1081242 () Bool)

(declare-fun lt!1288632 () Bool)

(declare-fun isEmpty!23107 (List!39015) Bool)

(assert (=> d!1081242 (= lt!1288632 (isEmpty!23107 (list!14473 (_1!22512 lt!1288625))))))

(declare-fun isEmpty!23108 (Conc!11915) Bool)

(assert (=> d!1081242 (= lt!1288632 (isEmpty!23108 (c!637195 (_1!22512 lt!1288625))))))

(assert (=> d!1081242 (= (isEmpty!23103 (_1!22512 lt!1288625)) lt!1288632)))

(declare-fun bs!573749 () Bool)

(assert (= bs!573749 d!1081242))

(assert (=> bs!573749 m!4194661))

(assert (=> bs!573749 m!4194661))

(declare-fun m!4194689 () Bool)

(assert (=> bs!573749 m!4194689))

(declare-fun m!4194691 () Bool)

(assert (=> bs!573749 m!4194691))

(assert (=> b!3683463 d!1081242))

(declare-fun b!3683563 () Bool)

(declare-fun e!2280972 () Bool)

(declare-fun lt!1288656 () tuple2!38756)

(assert (=> b!3683563 (= e!2280972 (= (_2!22512 lt!1288656) (seqFromList!4411 input!3129)))))

(declare-fun b!3683565 () Bool)

(declare-fun e!2280973 () Bool)

(declare-datatypes ((tuple2!38762 0))(
  ( (tuple2!38763 (_1!22515 List!39015) (_2!22515 List!39013)) )
))
(declare-fun lexList!1522 (LexerInterface!5451 List!39014 List!39013) tuple2!38762)

(assert (=> b!3683565 (= e!2280973 (= (list!14472 (_2!22512 lt!1288656)) (_2!22515 (lexList!1522 thiss!25197 rules!3568 (list!14472 (seqFromList!4411 input!3129))))))))

(declare-fun b!3683566 () Bool)

(declare-fun e!2280971 () Bool)

(assert (=> b!3683566 (= e!2280971 (not (isEmpty!23103 (_1!22512 lt!1288656))))))

(declare-fun b!3683567 () Bool)

(assert (=> b!3683567 (= e!2280972 e!2280971)))

(declare-fun res!1496572 () Bool)

(declare-fun size!29739 (BalanceConc!23442) Int)

(assert (=> b!3683567 (= res!1496572 (< (size!29739 (_2!22512 lt!1288656)) (size!29739 (seqFromList!4411 input!3129))))))

(assert (=> b!3683567 (=> (not res!1496572) (not e!2280971))))

(declare-fun d!1081246 () Bool)

(assert (=> d!1081246 e!2280973))

(declare-fun res!1496574 () Bool)

(assert (=> d!1081246 (=> (not res!1496574) (not e!2280973))))

(assert (=> d!1081246 (= res!1496574 e!2280972)))

(declare-fun c!637204 () Bool)

(declare-fun size!29740 (BalanceConc!23444) Int)

(assert (=> d!1081246 (= c!637204 (> (size!29740 (_1!22512 lt!1288656)) 0))))

(declare-fun lexTailRecV2!1128 (LexerInterface!5451 List!39014 BalanceConc!23442 BalanceConc!23442 BalanceConc!23442 BalanceConc!23444) tuple2!38756)

(assert (=> d!1081246 (= lt!1288656 (lexTailRecV2!1128 thiss!25197 rules!3568 (seqFromList!4411 input!3129) (BalanceConc!23443 Empty!11914) (seqFromList!4411 input!3129) (BalanceConc!23445 Empty!11915)))))

(assert (=> d!1081246 (= (lex!2592 thiss!25197 rules!3568 (seqFromList!4411 input!3129)) lt!1288656)))

(declare-fun b!3683564 () Bool)

(declare-fun res!1496573 () Bool)

(assert (=> b!3683564 (=> (not res!1496573) (not e!2280973))))

(assert (=> b!3683564 (= res!1496573 (= (list!14473 (_1!22512 lt!1288656)) (_1!22515 (lexList!1522 thiss!25197 rules!3568 (list!14472 (seqFromList!4411 input!3129))))))))

(assert (= (and d!1081246 c!637204) b!3683567))

(assert (= (and d!1081246 (not c!637204)) b!3683563))

(assert (= (and b!3683567 res!1496572) b!3683566))

(assert (= (and d!1081246 res!1496574) b!3683564))

(assert (= (and b!3683564 res!1496573) b!3683565))

(declare-fun m!4194769 () Bool)

(assert (=> b!3683567 m!4194769))

(assert (=> b!3683567 m!4194669))

(declare-fun m!4194771 () Bool)

(assert (=> b!3683567 m!4194771))

(declare-fun m!4194773 () Bool)

(assert (=> d!1081246 m!4194773))

(assert (=> d!1081246 m!4194669))

(assert (=> d!1081246 m!4194669))

(declare-fun m!4194775 () Bool)

(assert (=> d!1081246 m!4194775))

(declare-fun m!4194777 () Bool)

(assert (=> b!3683564 m!4194777))

(assert (=> b!3683564 m!4194669))

(declare-fun m!4194779 () Bool)

(assert (=> b!3683564 m!4194779))

(assert (=> b!3683564 m!4194779))

(declare-fun m!4194781 () Bool)

(assert (=> b!3683564 m!4194781))

(declare-fun m!4194783 () Bool)

(assert (=> b!3683566 m!4194783))

(declare-fun m!4194785 () Bool)

(assert (=> b!3683565 m!4194785))

(assert (=> b!3683565 m!4194669))

(assert (=> b!3683565 m!4194779))

(assert (=> b!3683565 m!4194779))

(assert (=> b!3683565 m!4194781))

(assert (=> b!3683463 d!1081246))

(declare-fun d!1081268 () Bool)

(declare-fun fromListB!2039 (List!39013) BalanceConc!23442)

(assert (=> d!1081268 (= (seqFromList!4411 input!3129) (fromListB!2039 input!3129))))

(declare-fun bs!573754 () Bool)

(assert (= bs!573754 d!1081268))

(declare-fun m!4194787 () Bool)

(assert (=> bs!573754 m!4194787))

(assert (=> b!3683463 d!1081268))

(declare-fun d!1081270 () Bool)

(assert (=> d!1081270 (= (head!7914 (list!14473 (_1!22512 lt!1288625))) (h!44311 (list!14473 (_1!22512 lt!1288625))))))

(assert (=> b!3683464 d!1081270))

(declare-fun d!1081272 () Bool)

(declare-fun lt!1288659 () BalanceConc!23442)

(assert (=> d!1081272 (= (list!14472 lt!1288659) (originalCharacters!6576 (head!7914 (list!14473 (_1!22512 lt!1288625)))))))

(declare-fun dynLambda!17059 (Int TokenValue!6092) BalanceConc!23442)

(assert (=> d!1081272 (= lt!1288659 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (value!187527 (head!7914 (list!14473 (_1!22512 lt!1288625))))))))

(assert (=> d!1081272 (= (charsOf!3873 (head!7914 (list!14473 (_1!22512 lt!1288625)))) lt!1288659)))

(declare-fun b_lambda!109421 () Bool)

(assert (=> (not b_lambda!109421) (not d!1081272)))

(declare-fun tb!213665 () Bool)

(declare-fun t!300939 () Bool)

(assert (=> (and b!3683466 (= (toChars!8025 (transformation!5862 (h!44310 rules!3568))) (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625))))))) t!300939) tb!213665))

(declare-fun b!3683572 () Bool)

(declare-fun e!2280976 () Bool)

(declare-fun tp!1119702 () Bool)

(declare-fun inv!52380 (Conc!11914) Bool)

(assert (=> b!3683572 (= e!2280976 (and (inv!52380 (c!637194 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (value!187527 (head!7914 (list!14473 (_1!22512 lt!1288625))))))) tp!1119702))))

(declare-fun result!259990 () Bool)

(declare-fun inv!52381 (BalanceConc!23442) Bool)

(assert (=> tb!213665 (= result!259990 (and (inv!52381 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (value!187527 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) e!2280976))))

(assert (= tb!213665 b!3683572))

(declare-fun m!4194789 () Bool)

(assert (=> b!3683572 m!4194789))

(declare-fun m!4194791 () Bool)

(assert (=> tb!213665 m!4194791))

(assert (=> d!1081272 t!300939))

(declare-fun b_and!275317 () Bool)

(assert (= b_and!275309 (and (=> t!300939 result!259990) b_and!275317)))

(declare-fun m!4194793 () Bool)

(assert (=> d!1081272 m!4194793))

(declare-fun m!4194795 () Bool)

(assert (=> d!1081272 m!4194795))

(assert (=> b!3683464 d!1081272))

(declare-fun d!1081274 () Bool)

(declare-fun list!14476 (Conc!11914) List!39013)

(assert (=> d!1081274 (= (list!14472 (charsOf!3873 (head!7914 (list!14473 (_1!22512 lt!1288625))))) (list!14476 (c!637194 (charsOf!3873 (head!7914 (list!14473 (_1!22512 lt!1288625)))))))))

(declare-fun bs!573755 () Bool)

(assert (= bs!573755 d!1081274))

(declare-fun m!4194797 () Bool)

(assert (=> bs!573755 m!4194797))

(assert (=> b!3683464 d!1081274))

(declare-fun d!1081276 () Bool)

(declare-fun list!14477 (Conc!11915) List!39015)

(assert (=> d!1081276 (= (list!14473 (_1!22512 lt!1288625)) (list!14477 (c!637195 (_1!22512 lt!1288625))))))

(declare-fun bs!573756 () Bool)

(assert (= bs!573756 d!1081276))

(declare-fun m!4194799 () Bool)

(assert (=> bs!573756 m!4194799))

(assert (=> b!3683464 d!1081276))

(declare-fun call!266774 () Option!8338)

(declare-fun bm!266769 () Bool)

(declare-fun maxPrefixOneRule!2113 (LexerInterface!5451 Rule!11524 List!39013) Option!8338)

(assert (=> bm!266769 (= call!266774 (maxPrefixOneRule!2113 thiss!25197 (h!44310 rules!3568) input!3129))))

(declare-fun b!3683591 () Bool)

(declare-fun res!1496590 () Bool)

(declare-fun e!2280985 () Bool)

(assert (=> b!3683591 (=> (not res!1496590) (not e!2280985))))

(declare-fun lt!1288672 () Option!8338)

(declare-fun get!12872 (Option!8338) tuple2!38758)

(declare-fun apply!9354 (TokenValueInjection!11612 BalanceConc!23442) TokenValue!6092)

(assert (=> b!3683591 (= res!1496590 (= (value!187527 (_1!22513 (get!12872 lt!1288672))) (apply!9354 (transformation!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672)))) (seqFromList!4411 (originalCharacters!6576 (_1!22513 (get!12872 lt!1288672)))))))))

(declare-fun d!1081278 () Bool)

(declare-fun e!2280983 () Bool)

(assert (=> d!1081278 e!2280983))

(declare-fun res!1496594 () Bool)

(assert (=> d!1081278 (=> res!1496594 e!2280983)))

(declare-fun isEmpty!23109 (Option!8338) Bool)

(assert (=> d!1081278 (= res!1496594 (isEmpty!23109 lt!1288672))))

(declare-fun e!2280984 () Option!8338)

(assert (=> d!1081278 (= lt!1288672 e!2280984)))

(declare-fun c!637207 () Bool)

(assert (=> d!1081278 (= c!637207 (and ((_ is Cons!38890) rules!3568) ((_ is Nil!38890) (t!300931 rules!3568))))))

(declare-datatypes ((Unit!56978 0))(
  ( (Unit!56979) )
))
(declare-fun lt!1288670 () Unit!56978)

(declare-fun lt!1288673 () Unit!56978)

(assert (=> d!1081278 (= lt!1288670 lt!1288673)))

(declare-fun isPrefix!3215 (List!39013 List!39013) Bool)

(assert (=> d!1081278 (isPrefix!3215 input!3129 input!3129)))

(declare-fun lemmaIsPrefixRefl!2022 (List!39013 List!39013) Unit!56978)

(assert (=> d!1081278 (= lt!1288673 (lemmaIsPrefixRefl!2022 input!3129 input!3129))))

(declare-fun rulesValidInductive!2090 (LexerInterface!5451 List!39014) Bool)

(assert (=> d!1081278 (rulesValidInductive!2090 thiss!25197 rules!3568)))

(assert (=> d!1081278 (= (maxPrefix!2979 thiss!25197 rules!3568 input!3129) lt!1288672)))

(declare-fun b!3683592 () Bool)

(assert (=> b!3683592 (= e!2280984 call!266774)))

(declare-fun b!3683593 () Bool)

(declare-fun res!1496589 () Bool)

(assert (=> b!3683593 (=> (not res!1496589) (not e!2280985))))

(declare-fun size!29741 (List!39013) Int)

(assert (=> b!3683593 (= res!1496589 (< (size!29741 (_2!22513 (get!12872 lt!1288672))) (size!29741 input!3129)))))

(declare-fun b!3683594 () Bool)

(declare-fun res!1496592 () Bool)

(assert (=> b!3683594 (=> (not res!1496592) (not e!2280985))))

(assert (=> b!3683594 (= res!1496592 (= (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672)))) (originalCharacters!6576 (_1!22513 (get!12872 lt!1288672)))))))

(declare-fun b!3683595 () Bool)

(declare-fun res!1496593 () Bool)

(assert (=> b!3683595 (=> (not res!1496593) (not e!2280985))))

(declare-fun ++!9677 (List!39013 List!39013) List!39013)

(assert (=> b!3683595 (= res!1496593 (= (++!9677 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672)))) (_2!22513 (get!12872 lt!1288672))) input!3129))))

(declare-fun b!3683596 () Bool)

(declare-fun lt!1288674 () Option!8338)

(declare-fun lt!1288671 () Option!8338)

(assert (=> b!3683596 (= e!2280984 (ite (and ((_ is None!8337) lt!1288674) ((_ is None!8337) lt!1288671)) None!8337 (ite ((_ is None!8337) lt!1288671) lt!1288674 (ite ((_ is None!8337) lt!1288674) lt!1288671 (ite (>= (size!29735 (_1!22513 (v!38281 lt!1288674))) (size!29735 (_1!22513 (v!38281 lt!1288671)))) lt!1288674 lt!1288671)))))))

(assert (=> b!3683596 (= lt!1288674 call!266774)))

(assert (=> b!3683596 (= lt!1288671 (maxPrefix!2979 thiss!25197 (t!300931 rules!3568) input!3129))))

(declare-fun b!3683597 () Bool)

(assert (=> b!3683597 (= e!2280983 e!2280985)))

(declare-fun res!1496595 () Bool)

(assert (=> b!3683597 (=> (not res!1496595) (not e!2280985))))

(assert (=> b!3683597 (= res!1496595 (isDefined!6563 lt!1288672))))

(declare-fun b!3683598 () Bool)

(declare-fun res!1496591 () Bool)

(assert (=> b!3683598 (=> (not res!1496591) (not e!2280985))))

(declare-fun matchR!5180 (Regex!10621 List!39013) Bool)

(assert (=> b!3683598 (= res!1496591 (matchR!5180 (regex!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672)))) (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672))))))))

(declare-fun b!3683599 () Bool)

(declare-fun contains!7773 (List!39014 Rule!11524) Bool)

(assert (=> b!3683599 (= e!2280985 (contains!7773 rules!3568 (rule!8702 (_1!22513 (get!12872 lt!1288672)))))))

(assert (= (and d!1081278 c!637207) b!3683592))

(assert (= (and d!1081278 (not c!637207)) b!3683596))

(assert (= (or b!3683592 b!3683596) bm!266769))

(assert (= (and d!1081278 (not res!1496594)) b!3683597))

(assert (= (and b!3683597 res!1496595) b!3683594))

(assert (= (and b!3683594 res!1496592) b!3683593))

(assert (= (and b!3683593 res!1496589) b!3683595))

(assert (= (and b!3683595 res!1496593) b!3683591))

(assert (= (and b!3683591 res!1496590) b!3683598))

(assert (= (and b!3683598 res!1496591) b!3683599))

(declare-fun m!4194801 () Bool)

(assert (=> b!3683595 m!4194801))

(declare-fun m!4194803 () Bool)

(assert (=> b!3683595 m!4194803))

(assert (=> b!3683595 m!4194803))

(declare-fun m!4194805 () Bool)

(assert (=> b!3683595 m!4194805))

(assert (=> b!3683595 m!4194805))

(declare-fun m!4194807 () Bool)

(assert (=> b!3683595 m!4194807))

(assert (=> b!3683593 m!4194801))

(declare-fun m!4194809 () Bool)

(assert (=> b!3683593 m!4194809))

(declare-fun m!4194811 () Bool)

(assert (=> b!3683593 m!4194811))

(assert (=> b!3683594 m!4194801))

(assert (=> b!3683594 m!4194803))

(assert (=> b!3683594 m!4194803))

(assert (=> b!3683594 m!4194805))

(declare-fun m!4194813 () Bool)

(assert (=> b!3683596 m!4194813))

(declare-fun m!4194815 () Bool)

(assert (=> b!3683597 m!4194815))

(assert (=> b!3683598 m!4194801))

(assert (=> b!3683598 m!4194803))

(assert (=> b!3683598 m!4194803))

(assert (=> b!3683598 m!4194805))

(assert (=> b!3683598 m!4194805))

(declare-fun m!4194817 () Bool)

(assert (=> b!3683598 m!4194817))

(declare-fun m!4194819 () Bool)

(assert (=> bm!266769 m!4194819))

(assert (=> b!3683599 m!4194801))

(declare-fun m!4194821 () Bool)

(assert (=> b!3683599 m!4194821))

(declare-fun m!4194823 () Bool)

(assert (=> d!1081278 m!4194823))

(declare-fun m!4194825 () Bool)

(assert (=> d!1081278 m!4194825))

(declare-fun m!4194827 () Bool)

(assert (=> d!1081278 m!4194827))

(declare-fun m!4194829 () Bool)

(assert (=> d!1081278 m!4194829))

(assert (=> b!3683591 m!4194801))

(declare-fun m!4194831 () Bool)

(assert (=> b!3683591 m!4194831))

(assert (=> b!3683591 m!4194831))

(declare-fun m!4194833 () Bool)

(assert (=> b!3683591 m!4194833))

(assert (=> b!3683464 d!1081278))

(declare-fun d!1081280 () Bool)

(assert (=> d!1081280 (= (isDefined!6563 (maxPrefix!2979 thiss!25197 rules!3568 input!3129)) (not (isEmpty!23109 (maxPrefix!2979 thiss!25197 rules!3568 input!3129))))))

(declare-fun bs!573757 () Bool)

(assert (= bs!573757 d!1081280))

(assert (=> bs!573757 m!4194663))

(declare-fun m!4194835 () Bool)

(assert (=> bs!573757 m!4194835))

(assert (=> b!3683464 d!1081280))

(declare-fun d!1081282 () Bool)

(declare-fun res!1496598 () Bool)

(declare-fun e!2280988 () Bool)

(assert (=> d!1081282 (=> (not res!1496598) (not e!2280988))))

(declare-fun rulesValid!2260 (LexerInterface!5451 List!39014) Bool)

(assert (=> d!1081282 (= res!1496598 (rulesValid!2260 thiss!25197 rules!3568))))

(assert (=> d!1081282 (= (rulesInvariant!4848 thiss!25197 rules!3568) e!2280988)))

(declare-fun b!3683602 () Bool)

(declare-datatypes ((List!39017 0))(
  ( (Nil!38893) (Cons!38893 (h!44313 String!43794) (t!300942 List!39017)) )
))
(declare-fun noDuplicateTag!2256 (LexerInterface!5451 List!39014 List!39017) Bool)

(assert (=> b!3683602 (= e!2280988 (noDuplicateTag!2256 thiss!25197 rules!3568 Nil!38893))))

(assert (= (and d!1081282 res!1496598) b!3683602))

(declare-fun m!4194837 () Bool)

(assert (=> d!1081282 m!4194837))

(declare-fun m!4194839 () Bool)

(assert (=> b!3683602 m!4194839))

(assert (=> b!3683459 d!1081282))

(declare-fun b!3683607 () Bool)

(declare-fun e!2280991 () Bool)

(declare-fun tp!1119705 () Bool)

(assert (=> b!3683607 (= e!2280991 (and tp_is_empty!18325 tp!1119705))))

(assert (=> b!3683465 (= tp!1119664 e!2280991)))

(assert (= (and b!3683465 ((_ is Cons!38889) (t!300930 input!3129))) b!3683607))

(declare-fun b!3683618 () Bool)

(declare-fun b_free!97661 () Bool)

(declare-fun b_next!98365 () Bool)

(assert (=> b!3683618 (= b_free!97661 (not b_next!98365))))

(declare-fun tp!1119717 () Bool)

(declare-fun b_and!275319 () Bool)

(assert (=> b!3683618 (= tp!1119717 b_and!275319)))

(declare-fun b_free!97663 () Bool)

(declare-fun b_next!98367 () Bool)

(assert (=> b!3683618 (= b_free!97663 (not b_next!98367))))

(declare-fun t!300941 () Bool)

(declare-fun tb!213667 () Bool)

(assert (=> (and b!3683618 (= (toChars!8025 (transformation!5862 (h!44310 (t!300931 rules!3568)))) (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625))))))) t!300941) tb!213667))

(declare-fun result!259998 () Bool)

(assert (= result!259998 result!259990))

(assert (=> d!1081272 t!300941))

(declare-fun tp!1119716 () Bool)

(declare-fun b_and!275321 () Bool)

(assert (=> b!3683618 (= tp!1119716 (and (=> t!300941 result!259998) b_and!275321))))

(declare-fun e!2281003 () Bool)

(assert (=> b!3683618 (= e!2281003 (and tp!1119717 tp!1119716))))

(declare-fun tp!1119715 () Bool)

(declare-fun e!2281001 () Bool)

(declare-fun b!3683617 () Bool)

(assert (=> b!3683617 (= e!2281001 (and tp!1119715 (inv!52375 (tag!6668 (h!44310 (t!300931 rules!3568)))) (inv!52377 (transformation!5862 (h!44310 (t!300931 rules!3568)))) e!2281003))))

(declare-fun b!3683616 () Bool)

(declare-fun e!2281002 () Bool)

(declare-fun tp!1119714 () Bool)

(assert (=> b!3683616 (= e!2281002 (and e!2281001 tp!1119714))))

(assert (=> b!3683460 (= tp!1119663 e!2281002)))

(assert (= b!3683617 b!3683618))

(assert (= b!3683616 b!3683617))

(assert (= (and b!3683460 ((_ is Cons!38890) (t!300931 rules!3568))) b!3683616))

(declare-fun m!4194841 () Bool)

(assert (=> b!3683617 m!4194841))

(declare-fun m!4194843 () Bool)

(assert (=> b!3683617 m!4194843))

(declare-fun b!3683630 () Bool)

(declare-fun e!2281006 () Bool)

(declare-fun tp!1119729 () Bool)

(declare-fun tp!1119728 () Bool)

(assert (=> b!3683630 (= e!2281006 (and tp!1119729 tp!1119728))))

(declare-fun b!3683629 () Bool)

(assert (=> b!3683629 (= e!2281006 tp_is_empty!18325)))

(assert (=> b!3683462 (= tp!1119662 e!2281006)))

(declare-fun b!3683631 () Bool)

(declare-fun tp!1119730 () Bool)

(assert (=> b!3683631 (= e!2281006 tp!1119730)))

(declare-fun b!3683632 () Bool)

(declare-fun tp!1119731 () Bool)

(declare-fun tp!1119732 () Bool)

(assert (=> b!3683632 (= e!2281006 (and tp!1119731 tp!1119732))))

(assert (= (and b!3683462 ((_ is ElementMatch!10621) (regex!5862 (h!44310 rules!3568)))) b!3683629))

(assert (= (and b!3683462 ((_ is Concat!16714) (regex!5862 (h!44310 rules!3568)))) b!3683630))

(assert (= (and b!3683462 ((_ is Star!10621) (regex!5862 (h!44310 rules!3568)))) b!3683631))

(assert (= (and b!3683462 ((_ is Union!10621) (regex!5862 (h!44310 rules!3568)))) b!3683632))

(check-sat (not tb!213665) (not b!3683564) (not b!3683593) (not d!1081282) (not b!3683602) (not b_next!98365) (not b!3683566) b_and!275321 (not d!1081268) (not b!3683594) (not b!3683630) (not d!1081272) (not d!1081238) (not b!3683616) (not b!3683599) (not d!1081242) (not b!3683591) tp_is_empty!18325 (not b!3683596) (not b_lambda!109421) b_and!275317 (not d!1081280) (not b!3683607) (not b!3683632) (not d!1081274) (not b!3683567) (not d!1081278) (not b!3683472) (not b!3683572) (not b!3683617) b_and!275319 (not b_next!98359) (not b!3683595) (not b!3683598) b_and!275307 (not b!3683631) (not b_next!98357) (not b!3683565) (not b_next!98367) (not bm!266769) (not d!1081246) (not b!3683597) (not d!1081276))
(check-sat b_and!275317 (not b_next!98367) (not b_next!98365) b_and!275321 b_and!275319 (not b_next!98359) b_and!275307 (not b_next!98357))
(get-model)

(declare-fun d!1081286 () Bool)

(assert (=> d!1081286 (= (list!14473 (_1!22512 lt!1288656)) (list!14477 (c!637195 (_1!22512 lt!1288656))))))

(declare-fun bs!573758 () Bool)

(assert (= bs!573758 d!1081286))

(declare-fun m!4194845 () Bool)

(assert (=> bs!573758 m!4194845))

(assert (=> b!3683564 d!1081286))

(declare-fun d!1081288 () Bool)

(declare-fun e!2281013 () Bool)

(assert (=> d!1081288 e!2281013))

(declare-fun c!637213 () Bool)

(declare-fun lt!1288682 () tuple2!38762)

(declare-fun size!29744 (List!39015) Int)

(assert (=> d!1081288 (= c!637213 (> (size!29744 (_1!22515 lt!1288682)) 0))))

(declare-fun e!2281014 () tuple2!38762)

(assert (=> d!1081288 (= lt!1288682 e!2281014)))

(declare-fun c!637212 () Bool)

(declare-fun lt!1288683 () Option!8338)

(assert (=> d!1081288 (= c!637212 ((_ is Some!8337) lt!1288683))))

(assert (=> d!1081288 (= lt!1288683 (maxPrefix!2979 thiss!25197 rules!3568 (list!14472 (seqFromList!4411 input!3129))))))

(assert (=> d!1081288 (= (lexList!1522 thiss!25197 rules!3568 (list!14472 (seqFromList!4411 input!3129))) lt!1288682)))

(declare-fun b!3683643 () Bool)

(declare-fun e!2281015 () Bool)

(assert (=> b!3683643 (= e!2281013 e!2281015)))

(declare-fun res!1496605 () Bool)

(assert (=> b!3683643 (= res!1496605 (< (size!29741 (_2!22515 lt!1288682)) (size!29741 (list!14472 (seqFromList!4411 input!3129)))))))

(assert (=> b!3683643 (=> (not res!1496605) (not e!2281015))))

(declare-fun b!3683644 () Bool)

(assert (=> b!3683644 (= e!2281014 (tuple2!38763 Nil!38891 (list!14472 (seqFromList!4411 input!3129))))))

(declare-fun b!3683645 () Bool)

(assert (=> b!3683645 (= e!2281013 (= (_2!22515 lt!1288682) (list!14472 (seqFromList!4411 input!3129))))))

(declare-fun b!3683646 () Bool)

(assert (=> b!3683646 (= e!2281015 (not (isEmpty!23107 (_1!22515 lt!1288682))))))

(declare-fun b!3683647 () Bool)

(declare-fun lt!1288681 () tuple2!38762)

(assert (=> b!3683647 (= e!2281014 (tuple2!38763 (Cons!38891 (_1!22513 (v!38281 lt!1288683)) (_1!22515 lt!1288681)) (_2!22515 lt!1288681)))))

(assert (=> b!3683647 (= lt!1288681 (lexList!1522 thiss!25197 rules!3568 (_2!22513 (v!38281 lt!1288683))))))

(assert (= (and d!1081288 c!637212) b!3683647))

(assert (= (and d!1081288 (not c!637212)) b!3683644))

(assert (= (and d!1081288 c!637213) b!3683643))

(assert (= (and d!1081288 (not c!637213)) b!3683645))

(assert (= (and b!3683643 res!1496605) b!3683646))

(declare-fun m!4194847 () Bool)

(assert (=> d!1081288 m!4194847))

(assert (=> d!1081288 m!4194779))

(declare-fun m!4194849 () Bool)

(assert (=> d!1081288 m!4194849))

(declare-fun m!4194851 () Bool)

(assert (=> b!3683643 m!4194851))

(assert (=> b!3683643 m!4194779))

(declare-fun m!4194853 () Bool)

(assert (=> b!3683643 m!4194853))

(declare-fun m!4194855 () Bool)

(assert (=> b!3683646 m!4194855))

(declare-fun m!4194857 () Bool)

(assert (=> b!3683647 m!4194857))

(assert (=> b!3683564 d!1081288))

(declare-fun d!1081290 () Bool)

(assert (=> d!1081290 (= (list!14472 (seqFromList!4411 input!3129)) (list!14476 (c!637194 (seqFromList!4411 input!3129))))))

(declare-fun bs!573759 () Bool)

(assert (= bs!573759 d!1081290))

(declare-fun m!4194859 () Bool)

(assert (=> bs!573759 m!4194859))

(assert (=> b!3683564 d!1081290))

(declare-fun d!1081292 () Bool)

(assert (=> d!1081292 (= (isEmpty!23109 lt!1288672) (not ((_ is Some!8337) lt!1288672)))))

(assert (=> d!1081278 d!1081292))

(declare-fun b!3683656 () Bool)

(declare-fun e!2281024 () Bool)

(declare-fun e!2281023 () Bool)

(assert (=> b!3683656 (= e!2281024 e!2281023)))

(declare-fun res!1496615 () Bool)

(assert (=> b!3683656 (=> (not res!1496615) (not e!2281023))))

(assert (=> b!3683656 (= res!1496615 (not ((_ is Nil!38889) input!3129)))))

(declare-fun b!3683658 () Bool)

(declare-fun tail!5697 (List!39013) List!39013)

(assert (=> b!3683658 (= e!2281023 (isPrefix!3215 (tail!5697 input!3129) (tail!5697 input!3129)))))

(declare-fun b!3683659 () Bool)

(declare-fun e!2281022 () Bool)

(assert (=> b!3683659 (= e!2281022 (>= (size!29741 input!3129) (size!29741 input!3129)))))

(declare-fun d!1081294 () Bool)

(assert (=> d!1081294 e!2281022))

(declare-fun res!1496614 () Bool)

(assert (=> d!1081294 (=> res!1496614 e!2281022)))

(declare-fun lt!1288686 () Bool)

(assert (=> d!1081294 (= res!1496614 (not lt!1288686))))

(assert (=> d!1081294 (= lt!1288686 e!2281024)))

(declare-fun res!1496616 () Bool)

(assert (=> d!1081294 (=> res!1496616 e!2281024)))

(assert (=> d!1081294 (= res!1496616 ((_ is Nil!38889) input!3129))))

(assert (=> d!1081294 (= (isPrefix!3215 input!3129 input!3129) lt!1288686)))

(declare-fun b!3683657 () Bool)

(declare-fun res!1496617 () Bool)

(assert (=> b!3683657 (=> (not res!1496617) (not e!2281023))))

(declare-fun head!7916 (List!39013) C!21428)

(assert (=> b!3683657 (= res!1496617 (= (head!7916 input!3129) (head!7916 input!3129)))))

(assert (= (and d!1081294 (not res!1496616)) b!3683656))

(assert (= (and b!3683656 res!1496615) b!3683657))

(assert (= (and b!3683657 res!1496617) b!3683658))

(assert (= (and d!1081294 (not res!1496614)) b!3683659))

(declare-fun m!4194861 () Bool)

(assert (=> b!3683658 m!4194861))

(assert (=> b!3683658 m!4194861))

(assert (=> b!3683658 m!4194861))

(assert (=> b!3683658 m!4194861))

(declare-fun m!4194863 () Bool)

(assert (=> b!3683658 m!4194863))

(assert (=> b!3683659 m!4194811))

(assert (=> b!3683659 m!4194811))

(declare-fun m!4194865 () Bool)

(assert (=> b!3683657 m!4194865))

(assert (=> b!3683657 m!4194865))

(assert (=> d!1081278 d!1081294))

(declare-fun d!1081296 () Bool)

(assert (=> d!1081296 (isPrefix!3215 input!3129 input!3129)))

(declare-fun lt!1288689 () Unit!56978)

(declare-fun choose!22042 (List!39013 List!39013) Unit!56978)

(assert (=> d!1081296 (= lt!1288689 (choose!22042 input!3129 input!3129))))

(assert (=> d!1081296 (= (lemmaIsPrefixRefl!2022 input!3129 input!3129) lt!1288689)))

(declare-fun bs!573760 () Bool)

(assert (= bs!573760 d!1081296))

(assert (=> bs!573760 m!4194825))

(declare-fun m!4194867 () Bool)

(assert (=> bs!573760 m!4194867))

(assert (=> d!1081278 d!1081296))

(declare-fun d!1081298 () Bool)

(assert (=> d!1081298 true))

(declare-fun lt!1288767 () Bool)

(declare-fun lambda!124827 () Int)

(declare-fun forall!8160 (List!39014 Int) Bool)

(assert (=> d!1081298 (= lt!1288767 (forall!8160 rules!3568 lambda!124827))))

(declare-fun e!2281043 () Bool)

(assert (=> d!1081298 (= lt!1288767 e!2281043)))

(declare-fun res!1496626 () Bool)

(assert (=> d!1081298 (=> res!1496626 e!2281043)))

(assert (=> d!1081298 (= res!1496626 (not ((_ is Cons!38890) rules!3568)))))

(assert (=> d!1081298 (= (rulesValidInductive!2090 thiss!25197 rules!3568) lt!1288767)))

(declare-fun b!3683690 () Bool)

(declare-fun e!2281044 () Bool)

(assert (=> b!3683690 (= e!2281043 e!2281044)))

(declare-fun res!1496627 () Bool)

(assert (=> b!3683690 (=> (not res!1496627) (not e!2281044))))

(declare-fun ruleValid!2117 (LexerInterface!5451 Rule!11524) Bool)

(assert (=> b!3683690 (= res!1496627 (ruleValid!2117 thiss!25197 (h!44310 rules!3568)))))

(declare-fun b!3683691 () Bool)

(assert (=> b!3683691 (= e!2281044 (rulesValidInductive!2090 thiss!25197 (t!300931 rules!3568)))))

(assert (= (and d!1081298 (not res!1496626)) b!3683690))

(assert (= (and b!3683690 res!1496627) b!3683691))

(declare-fun m!4194879 () Bool)

(assert (=> d!1081298 m!4194879))

(declare-fun m!4194881 () Bool)

(assert (=> b!3683690 m!4194881))

(declare-fun m!4194883 () Bool)

(assert (=> b!3683691 m!4194883))

(assert (=> d!1081278 d!1081298))

(declare-fun b!3683741 () Bool)

(declare-fun e!2281074 () Bool)

(assert (=> b!3683741 (= e!2281074 (not (= (head!7916 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672))))) (c!637193 (regex!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672))))))))))

(declare-fun d!1081310 () Bool)

(declare-fun e!2281073 () Bool)

(assert (=> d!1081310 e!2281073))

(declare-fun c!637240 () Bool)

(assert (=> d!1081310 (= c!637240 ((_ is EmptyExpr!10621) (regex!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672))))))))

(declare-fun lt!1288804 () Bool)

(declare-fun e!2281070 () Bool)

(assert (=> d!1081310 (= lt!1288804 e!2281070)))

(declare-fun c!637241 () Bool)

(declare-fun isEmpty!23111 (List!39013) Bool)

(assert (=> d!1081310 (= c!637241 (isEmpty!23111 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672))))))))

(declare-fun validRegex!4863 (Regex!10621) Bool)

(assert (=> d!1081310 (validRegex!4863 (regex!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672)))))))

(assert (=> d!1081310 (= (matchR!5180 (regex!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672)))) (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672))))) lt!1288804)))

(declare-fun b!3683742 () Bool)

(declare-fun derivativeStep!3248 (Regex!10621 C!21428) Regex!10621)

(assert (=> b!3683742 (= e!2281070 (matchR!5180 (derivativeStep!3248 (regex!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672)))) (head!7916 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672)))))) (tail!5697 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672)))))))))

(declare-fun b!3683743 () Bool)

(declare-fun call!266777 () Bool)

(assert (=> b!3683743 (= e!2281073 (= lt!1288804 call!266777))))

(declare-fun b!3683744 () Bool)

(declare-fun nullable!3701 (Regex!10621) Bool)

(assert (=> b!3683744 (= e!2281070 (nullable!3701 (regex!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672))))))))

(declare-fun bm!266772 () Bool)

(assert (=> bm!266772 (= call!266777 (isEmpty!23111 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672))))))))

(declare-fun b!3683745 () Bool)

(declare-fun e!2281071 () Bool)

(assert (=> b!3683745 (= e!2281071 (= (head!7916 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672))))) (c!637193 (regex!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672)))))))))

(declare-fun b!3683746 () Bool)

(declare-fun e!2281075 () Bool)

(assert (=> b!3683746 (= e!2281075 (not lt!1288804))))

(declare-fun b!3683747 () Bool)

(declare-fun e!2281072 () Bool)

(assert (=> b!3683747 (= e!2281072 e!2281074)))

(declare-fun res!1496649 () Bool)

(assert (=> b!3683747 (=> res!1496649 e!2281074)))

(assert (=> b!3683747 (= res!1496649 call!266777)))

(declare-fun b!3683748 () Bool)

(declare-fun res!1496650 () Bool)

(declare-fun e!2281069 () Bool)

(assert (=> b!3683748 (=> res!1496650 e!2281069)))

(assert (=> b!3683748 (= res!1496650 e!2281071)))

(declare-fun res!1496648 () Bool)

(assert (=> b!3683748 (=> (not res!1496648) (not e!2281071))))

(assert (=> b!3683748 (= res!1496648 lt!1288804)))

(declare-fun b!3683749 () Bool)

(assert (=> b!3683749 (= e!2281069 e!2281072)))

(declare-fun res!1496647 () Bool)

(assert (=> b!3683749 (=> (not res!1496647) (not e!2281072))))

(assert (=> b!3683749 (= res!1496647 (not lt!1288804))))

(declare-fun b!3683750 () Bool)

(declare-fun res!1496646 () Bool)

(assert (=> b!3683750 (=> res!1496646 e!2281074)))

(assert (=> b!3683750 (= res!1496646 (not (isEmpty!23111 (tail!5697 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672))))))))))

(declare-fun b!3683751 () Bool)

(declare-fun res!1496645 () Bool)

(assert (=> b!3683751 (=> (not res!1496645) (not e!2281071))))

(assert (=> b!3683751 (= res!1496645 (not call!266777))))

(declare-fun b!3683752 () Bool)

(assert (=> b!3683752 (= e!2281073 e!2281075)))

(declare-fun c!637239 () Bool)

(assert (=> b!3683752 (= c!637239 ((_ is EmptyLang!10621) (regex!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672))))))))

(declare-fun b!3683753 () Bool)

(declare-fun res!1496652 () Bool)

(assert (=> b!3683753 (=> res!1496652 e!2281069)))

(assert (=> b!3683753 (= res!1496652 (not ((_ is ElementMatch!10621) (regex!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672)))))))))

(assert (=> b!3683753 (= e!2281075 e!2281069)))

(declare-fun b!3683754 () Bool)

(declare-fun res!1496651 () Bool)

(assert (=> b!3683754 (=> (not res!1496651) (not e!2281071))))

(assert (=> b!3683754 (= res!1496651 (isEmpty!23111 (tail!5697 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672)))))))))

(assert (= (and d!1081310 c!637241) b!3683744))

(assert (= (and d!1081310 (not c!637241)) b!3683742))

(assert (= (and d!1081310 c!637240) b!3683743))

(assert (= (and d!1081310 (not c!637240)) b!3683752))

(assert (= (and b!3683752 c!637239) b!3683746))

(assert (= (and b!3683752 (not c!637239)) b!3683753))

(assert (= (and b!3683753 (not res!1496652)) b!3683748))

(assert (= (and b!3683748 res!1496648) b!3683751))

(assert (= (and b!3683751 res!1496645) b!3683754))

(assert (= (and b!3683754 res!1496651) b!3683745))

(assert (= (and b!3683748 (not res!1496650)) b!3683749))

(assert (= (and b!3683749 res!1496647) b!3683747))

(assert (= (and b!3683747 (not res!1496649)) b!3683750))

(assert (= (and b!3683750 (not res!1496646)) b!3683741))

(assert (= (or b!3683743 b!3683747 b!3683751) bm!266772))

(assert (=> bm!266772 m!4194805))

(declare-fun m!4194983 () Bool)

(assert (=> bm!266772 m!4194983))

(assert (=> b!3683754 m!4194805))

(declare-fun m!4194985 () Bool)

(assert (=> b!3683754 m!4194985))

(assert (=> b!3683754 m!4194985))

(declare-fun m!4194987 () Bool)

(assert (=> b!3683754 m!4194987))

(declare-fun m!4194989 () Bool)

(assert (=> b!3683744 m!4194989))

(assert (=> b!3683750 m!4194805))

(assert (=> b!3683750 m!4194985))

(assert (=> b!3683750 m!4194985))

(assert (=> b!3683750 m!4194987))

(assert (=> b!3683741 m!4194805))

(declare-fun m!4194991 () Bool)

(assert (=> b!3683741 m!4194991))

(assert (=> d!1081310 m!4194805))

(assert (=> d!1081310 m!4194983))

(declare-fun m!4194993 () Bool)

(assert (=> d!1081310 m!4194993))

(assert (=> b!3683742 m!4194805))

(assert (=> b!3683742 m!4194991))

(assert (=> b!3683742 m!4194991))

(declare-fun m!4194995 () Bool)

(assert (=> b!3683742 m!4194995))

(assert (=> b!3683742 m!4194805))

(assert (=> b!3683742 m!4194985))

(assert (=> b!3683742 m!4194995))

(assert (=> b!3683742 m!4194985))

(declare-fun m!4194997 () Bool)

(assert (=> b!3683742 m!4194997))

(assert (=> b!3683745 m!4194805))

(assert (=> b!3683745 m!4194991))

(assert (=> b!3683598 d!1081310))

(declare-fun d!1081316 () Bool)

(assert (=> d!1081316 (= (get!12872 lt!1288672) (v!38281 lt!1288672))))

(assert (=> b!3683598 d!1081316))

(declare-fun d!1081318 () Bool)

(assert (=> d!1081318 (= (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672)))) (list!14476 (c!637194 (charsOf!3873 (_1!22513 (get!12872 lt!1288672))))))))

(declare-fun bs!573763 () Bool)

(assert (= bs!573763 d!1081318))

(declare-fun m!4194999 () Bool)

(assert (=> bs!573763 m!4194999))

(assert (=> b!3683598 d!1081318))

(declare-fun d!1081320 () Bool)

(declare-fun lt!1288807 () BalanceConc!23442)

(assert (=> d!1081320 (= (list!14472 lt!1288807) (originalCharacters!6576 (_1!22513 (get!12872 lt!1288672))))))

(assert (=> d!1081320 (= lt!1288807 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672))))) (value!187527 (_1!22513 (get!12872 lt!1288672)))))))

(assert (=> d!1081320 (= (charsOf!3873 (_1!22513 (get!12872 lt!1288672))) lt!1288807)))

(declare-fun b_lambda!109423 () Bool)

(assert (=> (not b_lambda!109423) (not d!1081320)))

(declare-fun t!300945 () Bool)

(declare-fun tb!213669 () Bool)

(assert (=> (and b!3683466 (= (toChars!8025 (transformation!5862 (h!44310 rules!3568))) (toChars!8025 (transformation!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672)))))) t!300945) tb!213669))

(declare-fun b!3683767 () Bool)

(declare-fun e!2281082 () Bool)

(declare-fun tp!1119733 () Bool)

(assert (=> b!3683767 (= e!2281082 (and (inv!52380 (c!637194 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672))))) (value!187527 (_1!22513 (get!12872 lt!1288672)))))) tp!1119733))))

(declare-fun result!260002 () Bool)

(assert (=> tb!213669 (= result!260002 (and (inv!52381 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672))))) (value!187527 (_1!22513 (get!12872 lt!1288672))))) e!2281082))))

(assert (= tb!213669 b!3683767))

(declare-fun m!4195001 () Bool)

(assert (=> b!3683767 m!4195001))

(declare-fun m!4195003 () Bool)

(assert (=> tb!213669 m!4195003))

(assert (=> d!1081320 t!300945))

(declare-fun b_and!275323 () Bool)

(assert (= b_and!275317 (and (=> t!300945 result!260002) b_and!275323)))

(declare-fun tb!213671 () Bool)

(declare-fun t!300947 () Bool)

(assert (=> (and b!3683618 (= (toChars!8025 (transformation!5862 (h!44310 (t!300931 rules!3568)))) (toChars!8025 (transformation!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672)))))) t!300947) tb!213671))

(declare-fun result!260004 () Bool)

(assert (= result!260004 result!260002))

(assert (=> d!1081320 t!300947))

(declare-fun b_and!275325 () Bool)

(assert (= b_and!275321 (and (=> t!300947 result!260004) b_and!275325)))

(declare-fun m!4195007 () Bool)

(assert (=> d!1081320 m!4195007))

(declare-fun m!4195009 () Bool)

(assert (=> d!1081320 m!4195009))

(assert (=> b!3683598 d!1081320))

(declare-fun d!1081322 () Bool)

(assert (=> d!1081322 (= (list!14472 (_2!22512 lt!1288656)) (list!14476 (c!637194 (_2!22512 lt!1288656))))))

(declare-fun bs!573764 () Bool)

(assert (= bs!573764 d!1081322))

(declare-fun m!4195019 () Bool)

(assert (=> bs!573764 m!4195019))

(assert (=> b!3683565 d!1081322))

(assert (=> b!3683565 d!1081288))

(assert (=> b!3683565 d!1081290))

(declare-fun d!1081324 () Bool)

(assert (=> d!1081324 (= (isDefined!6563 lt!1288672) (not (isEmpty!23109 lt!1288672)))))

(declare-fun bs!573765 () Bool)

(assert (= bs!573765 d!1081324))

(assert (=> bs!573765 m!4194823))

(assert (=> b!3683597 d!1081324))

(declare-fun d!1081328 () Bool)

(declare-fun lt!1288809 () Bool)

(assert (=> d!1081328 (= lt!1288809 (isEmpty!23107 (list!14473 (_1!22512 lt!1288656))))))

(assert (=> d!1081328 (= lt!1288809 (isEmpty!23108 (c!637195 (_1!22512 lt!1288656))))))

(assert (=> d!1081328 (= (isEmpty!23103 (_1!22512 lt!1288656)) lt!1288809)))

(declare-fun bs!573767 () Bool)

(assert (= bs!573767 d!1081328))

(assert (=> bs!573767 m!4194777))

(assert (=> bs!573767 m!4194777))

(declare-fun m!4195025 () Bool)

(assert (=> bs!573767 m!4195025))

(declare-fun m!4195027 () Bool)

(assert (=> bs!573767 m!4195027))

(assert (=> b!3683566 d!1081328))

(declare-fun bm!266773 () Bool)

(declare-fun call!266778 () Option!8338)

(assert (=> bm!266773 (= call!266778 (maxPrefixOneRule!2113 thiss!25197 (h!44310 (t!300931 rules!3568)) input!3129))))

(declare-fun b!3683768 () Bool)

(declare-fun res!1496660 () Bool)

(declare-fun e!2281085 () Bool)

(assert (=> b!3683768 (=> (not res!1496660) (not e!2281085))))

(declare-fun lt!1288813 () Option!8338)

(assert (=> b!3683768 (= res!1496660 (= (value!187527 (_1!22513 (get!12872 lt!1288813))) (apply!9354 (transformation!5862 (rule!8702 (_1!22513 (get!12872 lt!1288813)))) (seqFromList!4411 (originalCharacters!6576 (_1!22513 (get!12872 lt!1288813)))))))))

(declare-fun d!1081332 () Bool)

(declare-fun e!2281083 () Bool)

(assert (=> d!1081332 e!2281083))

(declare-fun res!1496664 () Bool)

(assert (=> d!1081332 (=> res!1496664 e!2281083)))

(assert (=> d!1081332 (= res!1496664 (isEmpty!23109 lt!1288813))))

(declare-fun e!2281084 () Option!8338)

(assert (=> d!1081332 (= lt!1288813 e!2281084)))

(declare-fun c!637245 () Bool)

(assert (=> d!1081332 (= c!637245 (and ((_ is Cons!38890) (t!300931 rules!3568)) ((_ is Nil!38890) (t!300931 (t!300931 rules!3568)))))))

(declare-fun lt!1288811 () Unit!56978)

(declare-fun lt!1288814 () Unit!56978)

(assert (=> d!1081332 (= lt!1288811 lt!1288814)))

(assert (=> d!1081332 (isPrefix!3215 input!3129 input!3129)))

(assert (=> d!1081332 (= lt!1288814 (lemmaIsPrefixRefl!2022 input!3129 input!3129))))

(assert (=> d!1081332 (rulesValidInductive!2090 thiss!25197 (t!300931 rules!3568))))

(assert (=> d!1081332 (= (maxPrefix!2979 thiss!25197 (t!300931 rules!3568) input!3129) lt!1288813)))

(declare-fun b!3683769 () Bool)

(assert (=> b!3683769 (= e!2281084 call!266778)))

(declare-fun b!3683770 () Bool)

(declare-fun res!1496659 () Bool)

(assert (=> b!3683770 (=> (not res!1496659) (not e!2281085))))

(assert (=> b!3683770 (= res!1496659 (< (size!29741 (_2!22513 (get!12872 lt!1288813))) (size!29741 input!3129)))))

(declare-fun b!3683771 () Bool)

(declare-fun res!1496662 () Bool)

(assert (=> b!3683771 (=> (not res!1496662) (not e!2281085))))

(assert (=> b!3683771 (= res!1496662 (= (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288813)))) (originalCharacters!6576 (_1!22513 (get!12872 lt!1288813)))))))

(declare-fun b!3683772 () Bool)

(declare-fun res!1496663 () Bool)

(assert (=> b!3683772 (=> (not res!1496663) (not e!2281085))))

(assert (=> b!3683772 (= res!1496663 (= (++!9677 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288813)))) (_2!22513 (get!12872 lt!1288813))) input!3129))))

(declare-fun b!3683773 () Bool)

(declare-fun lt!1288815 () Option!8338)

(declare-fun lt!1288812 () Option!8338)

(assert (=> b!3683773 (= e!2281084 (ite (and ((_ is None!8337) lt!1288815) ((_ is None!8337) lt!1288812)) None!8337 (ite ((_ is None!8337) lt!1288812) lt!1288815 (ite ((_ is None!8337) lt!1288815) lt!1288812 (ite (>= (size!29735 (_1!22513 (v!38281 lt!1288815))) (size!29735 (_1!22513 (v!38281 lt!1288812)))) lt!1288815 lt!1288812)))))))

(assert (=> b!3683773 (= lt!1288815 call!266778)))

(assert (=> b!3683773 (= lt!1288812 (maxPrefix!2979 thiss!25197 (t!300931 (t!300931 rules!3568)) input!3129))))

(declare-fun b!3683774 () Bool)

(assert (=> b!3683774 (= e!2281083 e!2281085)))

(declare-fun res!1496665 () Bool)

(assert (=> b!3683774 (=> (not res!1496665) (not e!2281085))))

(assert (=> b!3683774 (= res!1496665 (isDefined!6563 lt!1288813))))

(declare-fun b!3683775 () Bool)

(declare-fun res!1496661 () Bool)

(assert (=> b!3683775 (=> (not res!1496661) (not e!2281085))))

(assert (=> b!3683775 (= res!1496661 (matchR!5180 (regex!5862 (rule!8702 (_1!22513 (get!12872 lt!1288813)))) (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288813))))))))

(declare-fun b!3683776 () Bool)

(assert (=> b!3683776 (= e!2281085 (contains!7773 (t!300931 rules!3568) (rule!8702 (_1!22513 (get!12872 lt!1288813)))))))

(assert (= (and d!1081332 c!637245) b!3683769))

(assert (= (and d!1081332 (not c!637245)) b!3683773))

(assert (= (or b!3683769 b!3683773) bm!266773))

(assert (= (and d!1081332 (not res!1496664)) b!3683774))

(assert (= (and b!3683774 res!1496665) b!3683771))

(assert (= (and b!3683771 res!1496662) b!3683770))

(assert (= (and b!3683770 res!1496659) b!3683772))

(assert (= (and b!3683772 res!1496663) b!3683768))

(assert (= (and b!3683768 res!1496660) b!3683775))

(assert (= (and b!3683775 res!1496661) b!3683776))

(declare-fun m!4195037 () Bool)

(assert (=> b!3683772 m!4195037))

(declare-fun m!4195039 () Bool)

(assert (=> b!3683772 m!4195039))

(assert (=> b!3683772 m!4195039))

(declare-fun m!4195041 () Bool)

(assert (=> b!3683772 m!4195041))

(assert (=> b!3683772 m!4195041))

(declare-fun m!4195043 () Bool)

(assert (=> b!3683772 m!4195043))

(assert (=> b!3683770 m!4195037))

(declare-fun m!4195045 () Bool)

(assert (=> b!3683770 m!4195045))

(assert (=> b!3683770 m!4194811))

(assert (=> b!3683771 m!4195037))

(assert (=> b!3683771 m!4195039))

(assert (=> b!3683771 m!4195039))

(assert (=> b!3683771 m!4195041))

(declare-fun m!4195047 () Bool)

(assert (=> b!3683773 m!4195047))

(declare-fun m!4195049 () Bool)

(assert (=> b!3683774 m!4195049))

(assert (=> b!3683775 m!4195037))

(assert (=> b!3683775 m!4195039))

(assert (=> b!3683775 m!4195039))

(assert (=> b!3683775 m!4195041))

(assert (=> b!3683775 m!4195041))

(declare-fun m!4195053 () Bool)

(assert (=> b!3683775 m!4195053))

(declare-fun m!4195055 () Bool)

(assert (=> bm!266773 m!4195055))

(assert (=> b!3683776 m!4195037))

(declare-fun m!4195057 () Bool)

(assert (=> b!3683776 m!4195057))

(declare-fun m!4195059 () Bool)

(assert (=> d!1081332 m!4195059))

(assert (=> d!1081332 m!4194825))

(assert (=> d!1081332 m!4194827))

(assert (=> d!1081332 m!4194883))

(assert (=> b!3683768 m!4195037))

(declare-fun m!4195061 () Bool)

(assert (=> b!3683768 m!4195061))

(assert (=> b!3683768 m!4195061))

(declare-fun m!4195063 () Bool)

(assert (=> b!3683768 m!4195063))

(assert (=> b!3683596 d!1081332))

(declare-fun d!1081338 () Bool)

(declare-fun isBalanced!3510 (Conc!11914) Bool)

(assert (=> d!1081338 (= (inv!52381 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (value!187527 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (isBalanced!3510 (c!637194 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (value!187527 (head!7914 (list!14473 (_1!22512 lt!1288625))))))))))

(declare-fun bs!573769 () Bool)

(assert (= bs!573769 d!1081338))

(declare-fun m!4195065 () Bool)

(assert (=> bs!573769 m!4195065))

(assert (=> tb!213665 d!1081338))

(declare-fun d!1081340 () Bool)

(declare-fun lt!1288818 () Int)

(assert (=> d!1081340 (= lt!1288818 (size!29741 (list!14472 (_2!22512 lt!1288656))))))

(declare-fun size!29746 (Conc!11914) Int)

(assert (=> d!1081340 (= lt!1288818 (size!29746 (c!637194 (_2!22512 lt!1288656))))))

(assert (=> d!1081340 (= (size!29739 (_2!22512 lt!1288656)) lt!1288818)))

(declare-fun bs!573770 () Bool)

(assert (= bs!573770 d!1081340))

(assert (=> bs!573770 m!4194785))

(assert (=> bs!573770 m!4194785))

(declare-fun m!4195067 () Bool)

(assert (=> bs!573770 m!4195067))

(declare-fun m!4195069 () Bool)

(assert (=> bs!573770 m!4195069))

(assert (=> b!3683567 d!1081340))

(declare-fun d!1081342 () Bool)

(declare-fun lt!1288819 () Int)

(assert (=> d!1081342 (= lt!1288819 (size!29741 (list!14472 (seqFromList!4411 input!3129))))))

(assert (=> d!1081342 (= lt!1288819 (size!29746 (c!637194 (seqFromList!4411 input!3129))))))

(assert (=> d!1081342 (= (size!29739 (seqFromList!4411 input!3129)) lt!1288819)))

(declare-fun bs!573771 () Bool)

(assert (= bs!573771 d!1081342))

(assert (=> bs!573771 m!4194669))

(assert (=> bs!573771 m!4194779))

(assert (=> bs!573771 m!4194779))

(assert (=> bs!573771 m!4194853))

(declare-fun m!4195071 () Bool)

(assert (=> bs!573771 m!4195071))

(assert (=> b!3683567 d!1081342))

(declare-fun b!3683814 () Bool)

(declare-fun e!2281105 () List!39013)

(assert (=> b!3683814 (= e!2281105 (_2!22513 (get!12872 lt!1288672)))))

(declare-fun d!1081344 () Bool)

(declare-fun e!2281106 () Bool)

(assert (=> d!1081344 e!2281106))

(declare-fun res!1496686 () Bool)

(assert (=> d!1081344 (=> (not res!1496686) (not e!2281106))))

(declare-fun lt!1288824 () List!39013)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5638 (List!39013) (InoxSet C!21428))

(assert (=> d!1081344 (= res!1496686 (= (content!5638 lt!1288824) ((_ map or) (content!5638 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672))))) (content!5638 (_2!22513 (get!12872 lt!1288672))))))))

(assert (=> d!1081344 (= lt!1288824 e!2281105)))

(declare-fun c!637254 () Bool)

(assert (=> d!1081344 (= c!637254 ((_ is Nil!38889) (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672))))))))

(assert (=> d!1081344 (= (++!9677 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672)))) (_2!22513 (get!12872 lt!1288672))) lt!1288824)))

(declare-fun b!3683816 () Bool)

(declare-fun res!1496687 () Bool)

(assert (=> b!3683816 (=> (not res!1496687) (not e!2281106))))

(assert (=> b!3683816 (= res!1496687 (= (size!29741 lt!1288824) (+ (size!29741 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672))))) (size!29741 (_2!22513 (get!12872 lt!1288672))))))))

(declare-fun b!3683815 () Bool)

(assert (=> b!3683815 (= e!2281105 (Cons!38889 (h!44309 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672))))) (++!9677 (t!300930 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672))))) (_2!22513 (get!12872 lt!1288672)))))))

(declare-fun b!3683817 () Bool)

(assert (=> b!3683817 (= e!2281106 (or (not (= (_2!22513 (get!12872 lt!1288672)) Nil!38889)) (= lt!1288824 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1288672)))))))))

(assert (= (and d!1081344 c!637254) b!3683814))

(assert (= (and d!1081344 (not c!637254)) b!3683815))

(assert (= (and d!1081344 res!1496686) b!3683816))

(assert (= (and b!3683816 res!1496687) b!3683817))

(declare-fun m!4195073 () Bool)

(assert (=> d!1081344 m!4195073))

(assert (=> d!1081344 m!4194805))

(declare-fun m!4195075 () Bool)

(assert (=> d!1081344 m!4195075))

(declare-fun m!4195077 () Bool)

(assert (=> d!1081344 m!4195077))

(declare-fun m!4195079 () Bool)

(assert (=> b!3683816 m!4195079))

(assert (=> b!3683816 m!4194805))

(declare-fun m!4195081 () Bool)

(assert (=> b!3683816 m!4195081))

(assert (=> b!3683816 m!4194809))

(declare-fun m!4195083 () Bool)

(assert (=> b!3683815 m!4195083))

(assert (=> b!3683595 d!1081344))

(assert (=> b!3683595 d!1081318))

(assert (=> b!3683595 d!1081320))

(assert (=> b!3683595 d!1081316))

(assert (=> b!3683594 d!1081318))

(assert (=> b!3683594 d!1081320))

(assert (=> b!3683594 d!1081316))

(declare-fun d!1081346 () Bool)

(assert (=> d!1081346 (= (isEmpty!23107 (list!14473 (_1!22512 lt!1288625))) ((_ is Nil!38891) (list!14473 (_1!22512 lt!1288625))))))

(assert (=> d!1081242 d!1081346))

(assert (=> d!1081242 d!1081276))

(declare-fun d!1081348 () Bool)

(declare-fun lt!1288828 () Bool)

(assert (=> d!1081348 (= lt!1288828 (isEmpty!23107 (list!14477 (c!637195 (_1!22512 lt!1288625)))))))

(declare-fun size!29747 (Conc!11915) Int)

(assert (=> d!1081348 (= lt!1288828 (= (size!29747 (c!637195 (_1!22512 lt!1288625))) 0))))

(assert (=> d!1081348 (= (isEmpty!23108 (c!637195 (_1!22512 lt!1288625))) lt!1288828)))

(declare-fun bs!573772 () Bool)

(assert (= bs!573772 d!1081348))

(assert (=> bs!573772 m!4194799))

(assert (=> bs!573772 m!4194799))

(declare-fun m!4195085 () Bool)

(assert (=> bs!573772 m!4195085))

(declare-fun m!4195089 () Bool)

(assert (=> bs!573772 m!4195089))

(assert (=> d!1081242 d!1081348))

(declare-fun b!3683844 () Bool)

(declare-fun e!2281120 () List!39013)

(declare-fun list!14480 (IArray!23833) List!39013)

(assert (=> b!3683844 (= e!2281120 (list!14480 (xs!15116 (c!637194 (charsOf!3873 (head!7914 (list!14473 (_1!22512 lt!1288625))))))))))

(declare-fun b!3683843 () Bool)

(declare-fun e!2281118 () List!39013)

(assert (=> b!3683843 (= e!2281118 e!2281120)))

(declare-fun c!637263 () Bool)

(assert (=> b!3683843 (= c!637263 ((_ is Leaf!18456) (c!637194 (charsOf!3873 (head!7914 (list!14473 (_1!22512 lt!1288625)))))))))

(declare-fun b!3683845 () Bool)

(assert (=> b!3683845 (= e!2281120 (++!9677 (list!14476 (left!30343 (c!637194 (charsOf!3873 (head!7914 (list!14473 (_1!22512 lt!1288625))))))) (list!14476 (right!30673 (c!637194 (charsOf!3873 (head!7914 (list!14473 (_1!22512 lt!1288625)))))))))))

(declare-fun d!1081350 () Bool)

(declare-fun c!637262 () Bool)

(assert (=> d!1081350 (= c!637262 ((_ is Empty!11914) (c!637194 (charsOf!3873 (head!7914 (list!14473 (_1!22512 lt!1288625)))))))))

(assert (=> d!1081350 (= (list!14476 (c!637194 (charsOf!3873 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) e!2281118)))

(declare-fun b!3683840 () Bool)

(assert (=> b!3683840 (= e!2281118 Nil!38889)))

(assert (= (and d!1081350 c!637262) b!3683840))

(assert (= (and d!1081350 (not c!637262)) b!3683843))

(assert (= (and b!3683843 c!637263) b!3683844))

(assert (= (and b!3683843 (not c!637263)) b!3683845))

(declare-fun m!4195105 () Bool)

(assert (=> b!3683844 m!4195105))

(declare-fun m!4195107 () Bool)

(assert (=> b!3683845 m!4195107))

(declare-fun m!4195109 () Bool)

(assert (=> b!3683845 m!4195109))

(assert (=> b!3683845 m!4195107))

(assert (=> b!3683845 m!4195109))

(declare-fun m!4195111 () Bool)

(assert (=> b!3683845 m!4195111))

(assert (=> d!1081274 d!1081350))

(declare-fun d!1081356 () Bool)

(assert (=> d!1081356 (= (list!14472 lt!1288659) (list!14476 (c!637194 lt!1288659)))))

(declare-fun bs!573773 () Bool)

(assert (= bs!573773 d!1081356))

(declare-fun m!4195113 () Bool)

(assert (=> bs!573773 m!4195113))

(assert (=> d!1081272 d!1081356))

(declare-fun bs!573775 () Bool)

(declare-fun d!1081358 () Bool)

(assert (= bs!573775 (and d!1081358 d!1081298)))

(declare-fun lambda!124830 () Int)

(assert (=> bs!573775 (= lambda!124830 lambda!124827)))

(assert (=> d!1081358 true))

(declare-fun lt!1288834 () Bool)

(assert (=> d!1081358 (= lt!1288834 (rulesValidInductive!2090 thiss!25197 rules!3568))))

(assert (=> d!1081358 (= lt!1288834 (forall!8160 rules!3568 lambda!124830))))

(assert (=> d!1081358 (= (rulesValid!2260 thiss!25197 rules!3568) lt!1288834)))

(declare-fun bs!573776 () Bool)

(assert (= bs!573776 d!1081358))

(assert (=> bs!573776 m!4194829))

(declare-fun m!4195123 () Bool)

(assert (=> bs!573776 m!4195123))

(assert (=> d!1081282 d!1081358))

(declare-fun d!1081364 () Bool)

(declare-fun lt!1288837 () Bool)

(declare-fun content!5639 (List!39014) (InoxSet Rule!11524))

(assert (=> d!1081364 (= lt!1288837 (select (content!5639 rules!3568) (rule!8702 (_1!22513 (get!12872 lt!1288672)))))))

(declare-fun e!2281131 () Bool)

(assert (=> d!1081364 (= lt!1288837 e!2281131)))

(declare-fun res!1496707 () Bool)

(assert (=> d!1081364 (=> (not res!1496707) (not e!2281131))))

(assert (=> d!1081364 (= res!1496707 ((_ is Cons!38890) rules!3568))))

(assert (=> d!1081364 (= (contains!7773 rules!3568 (rule!8702 (_1!22513 (get!12872 lt!1288672)))) lt!1288837)))

(declare-fun b!3683854 () Bool)

(declare-fun e!2281130 () Bool)

(assert (=> b!3683854 (= e!2281131 e!2281130)))

(declare-fun res!1496706 () Bool)

(assert (=> b!3683854 (=> res!1496706 e!2281130)))

(assert (=> b!3683854 (= res!1496706 (= (h!44310 rules!3568) (rule!8702 (_1!22513 (get!12872 lt!1288672)))))))

(declare-fun b!3683855 () Bool)

(assert (=> b!3683855 (= e!2281130 (contains!7773 (t!300931 rules!3568) (rule!8702 (_1!22513 (get!12872 lt!1288672)))))))

(assert (= (and d!1081364 res!1496707) b!3683854))

(assert (= (and b!3683854 (not res!1496706)) b!3683855))

(declare-fun m!4195125 () Bool)

(assert (=> d!1081364 m!4195125))

(declare-fun m!4195127 () Bool)

(assert (=> d!1081364 m!4195127))

(declare-fun m!4195129 () Bool)

(assert (=> b!3683855 m!4195129))

(assert (=> b!3683599 d!1081364))

(assert (=> b!3683599 d!1081316))

(declare-fun d!1081366 () Bool)

(assert (=> d!1081366 (= (inv!52375 (tag!6668 (h!44310 (t!300931 rules!3568)))) (= (mod (str.len (value!187526 (tag!6668 (h!44310 (t!300931 rules!3568))))) 2) 0))))

(assert (=> b!3683617 d!1081366))

(declare-fun d!1081368 () Bool)

(declare-fun res!1496708 () Bool)

(declare-fun e!2281132 () Bool)

(assert (=> d!1081368 (=> (not res!1496708) (not e!2281132))))

(assert (=> d!1081368 (= res!1496708 (semiInverseModEq!2503 (toChars!8025 (transformation!5862 (h!44310 (t!300931 rules!3568)))) (toValue!8166 (transformation!5862 (h!44310 (t!300931 rules!3568))))))))

(assert (=> d!1081368 (= (inv!52377 (transformation!5862 (h!44310 (t!300931 rules!3568)))) e!2281132)))

(declare-fun b!3683856 () Bool)

(assert (=> b!3683856 (= e!2281132 (equivClasses!2402 (toChars!8025 (transformation!5862 (h!44310 (t!300931 rules!3568)))) (toValue!8166 (transformation!5862 (h!44310 (t!300931 rules!3568))))))))

(assert (= (and d!1081368 res!1496708) b!3683856))

(declare-fun m!4195131 () Bool)

(assert (=> d!1081368 m!4195131))

(declare-fun m!4195133 () Bool)

(assert (=> b!3683856 m!4195133))

(assert (=> b!3683617 d!1081368))

(declare-fun d!1081370 () Bool)

(declare-fun lt!1288840 () Int)

(assert (=> d!1081370 (= lt!1288840 (size!29744 (list!14473 (_1!22512 lt!1288656))))))

(assert (=> d!1081370 (= lt!1288840 (size!29747 (c!637195 (_1!22512 lt!1288656))))))

(assert (=> d!1081370 (= (size!29740 (_1!22512 lt!1288656)) lt!1288840)))

(declare-fun bs!573777 () Bool)

(assert (= bs!573777 d!1081370))

(assert (=> bs!573777 m!4194777))

(assert (=> bs!573777 m!4194777))

(declare-fun m!4195135 () Bool)

(assert (=> bs!573777 m!4195135))

(declare-fun m!4195137 () Bool)

(assert (=> bs!573777 m!4195137))

(assert (=> d!1081246 d!1081370))

(declare-fun e!2281224 () Bool)

(declare-fun lt!1288987 () tuple2!38756)

(declare-fun b!3684017 () Bool)

(declare-fun lexRec!779 (LexerInterface!5451 List!39014 BalanceConc!23442) tuple2!38756)

(assert (=> b!3684017 (= e!2281224 (= (list!14472 (_2!22512 lt!1288987)) (list!14472 (_2!22512 (lexRec!779 thiss!25197 rules!3568 (seqFromList!4411 input!3129))))))))

(declare-fun lt!1288992 () tuple2!38756)

(declare-datatypes ((tuple2!38768 0))(
  ( (tuple2!38769 (_1!22518 Token!11090) (_2!22518 BalanceConc!23442)) )
))
(declare-datatypes ((Option!8340 0))(
  ( (None!8339) (Some!8339 (v!38285 tuple2!38768)) )
))
(declare-fun lt!1288971 () Option!8340)

(declare-fun b!3684018 () Bool)

(assert (=> b!3684018 (= lt!1288992 (lexRec!779 thiss!25197 rules!3568 (_2!22518 (v!38285 lt!1288971))))))

(declare-fun e!2281222 () tuple2!38756)

(declare-fun prepend!1304 (BalanceConc!23444 Token!11090) BalanceConc!23444)

(assert (=> b!3684018 (= e!2281222 (tuple2!38757 (prepend!1304 (_1!22512 lt!1288992) (_1!22518 (v!38285 lt!1288971))) (_2!22512 lt!1288992)))))

(declare-fun b!3684019 () Bool)

(declare-fun e!2281223 () tuple2!38756)

(assert (=> b!3684019 (= e!2281223 (tuple2!38757 (BalanceConc!23445 Empty!11915) (seqFromList!4411 input!3129)))))

(declare-fun d!1081372 () Bool)

(assert (=> d!1081372 e!2281224))

(declare-fun res!1496773 () Bool)

(assert (=> d!1081372 (=> (not res!1496773) (not e!2281224))))

(assert (=> d!1081372 (= res!1496773 (= (list!14473 (_1!22512 lt!1288987)) (list!14473 (_1!22512 (lexRec!779 thiss!25197 rules!3568 (seqFromList!4411 input!3129))))))))

(assert (=> d!1081372 (= lt!1288987 e!2281223)))

(declare-fun c!637290 () Bool)

(declare-fun lt!1288966 () Option!8340)

(assert (=> d!1081372 (= c!637290 ((_ is Some!8339) lt!1288966))))

(declare-fun maxPrefixZipperSequenceV2!565 (LexerInterface!5451 List!39014 BalanceConc!23442 BalanceConc!23442) Option!8340)

(assert (=> d!1081372 (= lt!1288966 (maxPrefixZipperSequenceV2!565 thiss!25197 rules!3568 (seqFromList!4411 input!3129) (seqFromList!4411 input!3129)))))

(declare-fun lt!1288972 () Unit!56978)

(declare-fun lt!1288980 () Unit!56978)

(assert (=> d!1081372 (= lt!1288972 lt!1288980)))

(declare-fun lt!1288968 () List!39013)

(declare-fun lt!1288978 () List!39013)

(declare-fun isSuffix!940 (List!39013 List!39013) Bool)

(assert (=> d!1081372 (isSuffix!940 lt!1288968 (++!9677 lt!1288978 lt!1288968))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!625 (List!39013 List!39013) Unit!56978)

(assert (=> d!1081372 (= lt!1288980 (lemmaConcatTwoListThenFSndIsSuffix!625 lt!1288978 lt!1288968))))

(assert (=> d!1081372 (= lt!1288968 (list!14472 (seqFromList!4411 input!3129)))))

(assert (=> d!1081372 (= lt!1288978 (list!14472 (BalanceConc!23443 Empty!11914)))))

(assert (=> d!1081372 (= (lexTailRecV2!1128 thiss!25197 rules!3568 (seqFromList!4411 input!3129) (BalanceConc!23443 Empty!11914) (seqFromList!4411 input!3129) (BalanceConc!23445 Empty!11915)) lt!1288987)))

(declare-fun b!3684020 () Bool)

(declare-fun lt!1288982 () BalanceConc!23442)

(declare-fun append!1008 (BalanceConc!23444 Token!11090) BalanceConc!23444)

(assert (=> b!3684020 (= e!2281223 (lexTailRecV2!1128 thiss!25197 rules!3568 (seqFromList!4411 input!3129) lt!1288982 (_2!22518 (v!38285 lt!1288966)) (append!1008 (BalanceConc!23445 Empty!11915) (_1!22518 (v!38285 lt!1288966)))))))

(declare-fun lt!1288973 () tuple2!38756)

(assert (=> b!3684020 (= lt!1288973 (lexRec!779 thiss!25197 rules!3568 (_2!22518 (v!38285 lt!1288966))))))

(declare-fun lt!1288964 () List!39013)

(assert (=> b!3684020 (= lt!1288964 (list!14472 (BalanceConc!23443 Empty!11914)))))

(declare-fun lt!1288983 () List!39013)

(assert (=> b!3684020 (= lt!1288983 (list!14472 (charsOf!3873 (_1!22518 (v!38285 lt!1288966)))))))

(declare-fun lt!1288967 () List!39013)

(assert (=> b!3684020 (= lt!1288967 (list!14472 (_2!22518 (v!38285 lt!1288966))))))

(declare-fun lt!1288962 () Unit!56978)

(declare-fun lemmaConcatAssociativity!2077 (List!39013 List!39013 List!39013) Unit!56978)

(assert (=> b!3684020 (= lt!1288962 (lemmaConcatAssociativity!2077 lt!1288964 lt!1288983 lt!1288967))))

(assert (=> b!3684020 (= (++!9677 (++!9677 lt!1288964 lt!1288983) lt!1288967) (++!9677 lt!1288964 (++!9677 lt!1288983 lt!1288967)))))

(declare-fun lt!1288991 () Unit!56978)

(assert (=> b!3684020 (= lt!1288991 lt!1288962)))

(declare-fun maxPrefixZipperSequence!1171 (LexerInterface!5451 List!39014 BalanceConc!23442) Option!8340)

(assert (=> b!3684020 (= lt!1288971 (maxPrefixZipperSequence!1171 thiss!25197 rules!3568 (seqFromList!4411 input!3129)))))

(declare-fun c!637291 () Bool)

(assert (=> b!3684020 (= c!637291 ((_ is Some!8339) lt!1288971))))

(assert (=> b!3684020 (= (lexRec!779 thiss!25197 rules!3568 (seqFromList!4411 input!3129)) e!2281222)))

(declare-fun lt!1288977 () Unit!56978)

(declare-fun Unit!56982 () Unit!56978)

(assert (=> b!3684020 (= lt!1288977 Unit!56982)))

(declare-fun lt!1288965 () List!39015)

(assert (=> b!3684020 (= lt!1288965 (list!14473 (BalanceConc!23445 Empty!11915)))))

(declare-fun lt!1288974 () List!39015)

(assert (=> b!3684020 (= lt!1288974 (Cons!38891 (_1!22518 (v!38285 lt!1288966)) Nil!38891))))

(declare-fun lt!1288981 () List!39015)

(assert (=> b!3684020 (= lt!1288981 (list!14473 (_1!22512 lt!1288973)))))

(declare-fun lt!1288961 () Unit!56978)

(declare-fun lemmaConcatAssociativity!2078 (List!39015 List!39015 List!39015) Unit!56978)

(assert (=> b!3684020 (= lt!1288961 (lemmaConcatAssociativity!2078 lt!1288965 lt!1288974 lt!1288981))))

(declare-fun ++!9680 (List!39015 List!39015) List!39015)

(assert (=> b!3684020 (= (++!9680 (++!9680 lt!1288965 lt!1288974) lt!1288981) (++!9680 lt!1288965 (++!9680 lt!1288974 lt!1288981)))))

(declare-fun lt!1288984 () Unit!56978)

(assert (=> b!3684020 (= lt!1288984 lt!1288961)))

(declare-fun lt!1288986 () List!39013)

(assert (=> b!3684020 (= lt!1288986 (++!9677 (list!14472 (BalanceConc!23443 Empty!11914)) (list!14472 (charsOf!3873 (_1!22518 (v!38285 lt!1288966))))))))

(declare-fun lt!1288990 () List!39013)

(assert (=> b!3684020 (= lt!1288990 (list!14472 (_2!22518 (v!38285 lt!1288966))))))

(declare-fun lt!1288970 () List!39015)

(assert (=> b!3684020 (= lt!1288970 (list!14473 (append!1008 (BalanceConc!23445 Empty!11915) (_1!22518 (v!38285 lt!1288966)))))))

(declare-fun lt!1288994 () Unit!56978)

(declare-fun lemmaLexThenLexPrefix!543 (LexerInterface!5451 List!39014 List!39013 List!39013 List!39015 List!39015 List!39013) Unit!56978)

(assert (=> b!3684020 (= lt!1288994 (lemmaLexThenLexPrefix!543 thiss!25197 rules!3568 lt!1288986 lt!1288990 lt!1288970 (list!14473 (_1!22512 lt!1288973)) (list!14472 (_2!22512 lt!1288973))))))

(assert (=> b!3684020 (= (lexList!1522 thiss!25197 rules!3568 lt!1288986) (tuple2!38763 lt!1288970 Nil!38889))))

(declare-fun lt!1288969 () Unit!56978)

(assert (=> b!3684020 (= lt!1288969 lt!1288994)))

(declare-fun lt!1288985 () BalanceConc!23442)

(declare-fun ++!9681 (BalanceConc!23442 BalanceConc!23442) BalanceConc!23442)

(assert (=> b!3684020 (= lt!1288985 (++!9681 (BalanceConc!23443 Empty!11914) (charsOf!3873 (_1!22518 (v!38285 lt!1288966)))))))

(declare-fun lt!1288993 () Option!8340)

(assert (=> b!3684020 (= lt!1288993 (maxPrefixZipperSequence!1171 thiss!25197 rules!3568 lt!1288985))))

(declare-fun c!637292 () Bool)

(assert (=> b!3684020 (= c!637292 ((_ is Some!8339) lt!1288993))))

(declare-fun e!2281221 () tuple2!38756)

(assert (=> b!3684020 (= (lexRec!779 thiss!25197 rules!3568 (++!9681 (BalanceConc!23443 Empty!11914) (charsOf!3873 (_1!22518 (v!38285 lt!1288966))))) e!2281221)))

(declare-fun lt!1288975 () Unit!56978)

(declare-fun Unit!56983 () Unit!56978)

(assert (=> b!3684020 (= lt!1288975 Unit!56983)))

(assert (=> b!3684020 (= lt!1288982 (++!9681 (BalanceConc!23443 Empty!11914) (charsOf!3873 (_1!22518 (v!38285 lt!1288966)))))))

(declare-fun lt!1288989 () List!39013)

(assert (=> b!3684020 (= lt!1288989 (list!14472 lt!1288982))))

(declare-fun lt!1288963 () List!39013)

(assert (=> b!3684020 (= lt!1288963 (list!14472 (_2!22518 (v!38285 lt!1288966))))))

(declare-fun lt!1288976 () Unit!56978)

(assert (=> b!3684020 (= lt!1288976 (lemmaConcatTwoListThenFSndIsSuffix!625 lt!1288989 lt!1288963))))

(assert (=> b!3684020 (isSuffix!940 lt!1288963 (++!9677 lt!1288989 lt!1288963))))

(declare-fun lt!1288988 () Unit!56978)

(assert (=> b!3684020 (= lt!1288988 lt!1288976)))

(declare-fun b!3684021 () Bool)

(assert (=> b!3684021 (= e!2281221 (tuple2!38757 (BalanceConc!23445 Empty!11915) lt!1288985))))

(declare-fun b!3684022 () Bool)

(assert (=> b!3684022 (= e!2281222 (tuple2!38757 (BalanceConc!23445 Empty!11915) (seqFromList!4411 input!3129)))))

(declare-fun lt!1288979 () tuple2!38756)

(declare-fun b!3684023 () Bool)

(assert (=> b!3684023 (= lt!1288979 (lexRec!779 thiss!25197 rules!3568 (_2!22518 (v!38285 lt!1288993))))))

(assert (=> b!3684023 (= e!2281221 (tuple2!38757 (prepend!1304 (_1!22512 lt!1288979) (_1!22518 (v!38285 lt!1288993))) (_2!22512 lt!1288979)))))

(assert (= (and d!1081372 c!637290) b!3684020))

(assert (= (and d!1081372 (not c!637290)) b!3684019))

(assert (= (and b!3684020 c!637291) b!3684018))

(assert (= (and b!3684020 (not c!637291)) b!3684022))

(assert (= (and b!3684020 c!637292) b!3684023))

(assert (= (and b!3684020 (not c!637292)) b!3684021))

(assert (= (and d!1081372 res!1496773) b!3684017))

(declare-fun m!4195299 () Bool)

(assert (=> d!1081372 m!4195299))

(assert (=> d!1081372 m!4194669))

(assert (=> d!1081372 m!4194779))

(declare-fun m!4195301 () Bool)

(assert (=> d!1081372 m!4195301))

(declare-fun m!4195303 () Bool)

(assert (=> d!1081372 m!4195303))

(declare-fun m!4195305 () Bool)

(assert (=> d!1081372 m!4195305))

(assert (=> d!1081372 m!4194669))

(declare-fun m!4195307 () Bool)

(assert (=> d!1081372 m!4195307))

(assert (=> d!1081372 m!4195299))

(declare-fun m!4195309 () Bool)

(assert (=> d!1081372 m!4195309))

(declare-fun m!4195311 () Bool)

(assert (=> d!1081372 m!4195311))

(assert (=> d!1081372 m!4194669))

(assert (=> d!1081372 m!4194669))

(declare-fun m!4195313 () Bool)

(assert (=> d!1081372 m!4195313))

(declare-fun m!4195315 () Bool)

(assert (=> b!3684018 m!4195315))

(declare-fun m!4195317 () Bool)

(assert (=> b!3684018 m!4195317))

(declare-fun m!4195319 () Bool)

(assert (=> b!3684017 m!4195319))

(assert (=> b!3684017 m!4194669))

(assert (=> b!3684017 m!4195307))

(declare-fun m!4195321 () Bool)

(assert (=> b!3684017 m!4195321))

(declare-fun m!4195323 () Bool)

(assert (=> b!3684020 m!4195323))

(declare-fun m!4195325 () Bool)

(assert (=> b!3684020 m!4195325))

(declare-fun m!4195327 () Bool)

(assert (=> b!3684020 m!4195327))

(assert (=> b!3684020 m!4194669))

(declare-fun m!4195329 () Bool)

(assert (=> b!3684020 m!4195329))

(declare-fun m!4195331 () Bool)

(assert (=> b!3684020 m!4195331))

(declare-fun m!4195333 () Bool)

(assert (=> b!3684020 m!4195333))

(declare-fun m!4195335 () Bool)

(assert (=> b!3684020 m!4195335))

(declare-fun m!4195337 () Bool)

(assert (=> b!3684020 m!4195337))

(declare-fun m!4195339 () Bool)

(assert (=> b!3684020 m!4195339))

(declare-fun m!4195341 () Bool)

(assert (=> b!3684020 m!4195341))

(declare-fun m!4195343 () Bool)

(assert (=> b!3684020 m!4195343))

(assert (=> b!3684020 m!4195337))

(declare-fun m!4195345 () Bool)

(assert (=> b!3684020 m!4195345))

(declare-fun m!4195347 () Bool)

(assert (=> b!3684020 m!4195347))

(declare-fun m!4195349 () Bool)

(assert (=> b!3684020 m!4195349))

(declare-fun m!4195351 () Bool)

(assert (=> b!3684020 m!4195351))

(declare-fun m!4195353 () Bool)

(assert (=> b!3684020 m!4195353))

(declare-fun m!4195355 () Bool)

(assert (=> b!3684020 m!4195355))

(assert (=> b!3684020 m!4195323))

(declare-fun m!4195357 () Bool)

(assert (=> b!3684020 m!4195357))

(declare-fun m!4195359 () Bool)

(assert (=> b!3684020 m!4195359))

(assert (=> b!3684020 m!4194669))

(assert (=> b!3684020 m!4195307))

(assert (=> b!3684020 m!4195349))

(declare-fun m!4195361 () Bool)

(assert (=> b!3684020 m!4195361))

(declare-fun m!4195363 () Bool)

(assert (=> b!3684020 m!4195363))

(declare-fun m!4195365 () Bool)

(assert (=> b!3684020 m!4195365))

(assert (=> b!3684020 m!4195355))

(assert (=> b!3684020 m!4195333))

(declare-fun m!4195367 () Bool)

(assert (=> b!3684020 m!4195367))

(declare-fun m!4195369 () Bool)

(assert (=> b!3684020 m!4195369))

(assert (=> b!3684020 m!4195303))

(assert (=> b!3684020 m!4195341))

(assert (=> b!3684020 m!4195303))

(declare-fun m!4195371 () Bool)

(assert (=> b!3684020 m!4195371))

(declare-fun m!4195373 () Bool)

(assert (=> b!3684020 m!4195373))

(assert (=> b!3684020 m!4195359))

(declare-fun m!4195375 () Bool)

(assert (=> b!3684020 m!4195375))

(assert (=> b!3684020 m!4195363))

(declare-fun m!4195377 () Bool)

(assert (=> b!3684020 m!4195377))

(assert (=> b!3684020 m!4195355))

(assert (=> b!3684020 m!4195371))

(assert (=> b!3684020 m!4194669))

(assert (=> b!3684020 m!4195323))

(declare-fun m!4195379 () Bool)

(assert (=> b!3684020 m!4195379))

(declare-fun m!4195381 () Bool)

(assert (=> b!3684020 m!4195381))

(assert (=> b!3684020 m!4195339))

(assert (=> b!3684020 m!4195367))

(declare-fun m!4195383 () Bool)

(assert (=> b!3684020 m!4195383))

(declare-fun m!4195385 () Bool)

(assert (=> b!3684023 m!4195385))

(declare-fun m!4195387 () Bool)

(assert (=> b!3684023 m!4195387))

(assert (=> d!1081246 d!1081372))

(declare-fun d!1081424 () Bool)

(assert (=> d!1081424 true))

(declare-fun lambda!124842 () Int)

(declare-fun order!21579 () Int)

(declare-fun order!21581 () Int)

(declare-fun dynLambda!17065 (Int Int) Int)

(declare-fun dynLambda!17066 (Int Int) Int)

(assert (=> d!1081424 (< (dynLambda!17065 order!21579 (toChars!8025 (transformation!5862 (h!44310 rules!3568)))) (dynLambda!17066 order!21581 lambda!124842))))

(assert (=> d!1081424 true))

(declare-fun order!21583 () Int)

(declare-fun dynLambda!17067 (Int Int) Int)

(assert (=> d!1081424 (< (dynLambda!17067 order!21583 (toValue!8166 (transformation!5862 (h!44310 rules!3568)))) (dynLambda!17066 order!21581 lambda!124842))))

(declare-fun Forall!1377 (Int) Bool)

(assert (=> d!1081424 (= (semiInverseModEq!2503 (toChars!8025 (transformation!5862 (h!44310 rules!3568))) (toValue!8166 (transformation!5862 (h!44310 rules!3568)))) (Forall!1377 lambda!124842))))

(declare-fun bs!573791 () Bool)

(assert (= bs!573791 d!1081424))

(declare-fun m!4195389 () Bool)

(assert (=> bs!573791 m!4195389))

(assert (=> d!1081238 d!1081424))

(declare-fun d!1081426 () Bool)

(declare-fun e!2281228 () Bool)

(assert (=> d!1081426 e!2281228))

(declare-fun res!1496776 () Bool)

(assert (=> d!1081426 (=> (not res!1496776) (not e!2281228))))

(declare-fun lt!1288997 () BalanceConc!23442)

(assert (=> d!1081426 (= res!1496776 (= (list!14472 lt!1288997) input!3129))))

(declare-fun fromList!804 (List!39013) Conc!11914)

(assert (=> d!1081426 (= lt!1288997 (BalanceConc!23443 (fromList!804 input!3129)))))

(assert (=> d!1081426 (= (fromListB!2039 input!3129) lt!1288997)))

(declare-fun b!3684031 () Bool)

(assert (=> b!3684031 (= e!2281228 (isBalanced!3510 (fromList!804 input!3129)))))

(assert (= (and d!1081426 res!1496776) b!3684031))

(declare-fun m!4195391 () Bool)

(assert (=> d!1081426 m!4195391))

(declare-fun m!4195393 () Bool)

(assert (=> d!1081426 m!4195393))

(assert (=> b!3684031 m!4195393))

(assert (=> b!3684031 m!4195393))

(declare-fun m!4195395 () Bool)

(assert (=> b!3684031 m!4195395))

(assert (=> d!1081268 d!1081426))

(declare-fun d!1081428 () Bool)

(declare-fun lt!1289000 () Int)

(assert (=> d!1081428 (>= lt!1289000 0)))

(declare-fun e!2281231 () Int)

(assert (=> d!1081428 (= lt!1289000 e!2281231)))

(declare-fun c!637296 () Bool)

(assert (=> d!1081428 (= c!637296 ((_ is Nil!38889) (_2!22513 (get!12872 lt!1288672))))))

(assert (=> d!1081428 (= (size!29741 (_2!22513 (get!12872 lt!1288672))) lt!1289000)))

(declare-fun b!3684036 () Bool)

(assert (=> b!3684036 (= e!2281231 0)))

(declare-fun b!3684037 () Bool)

(assert (=> b!3684037 (= e!2281231 (+ 1 (size!29741 (t!300930 (_2!22513 (get!12872 lt!1288672))))))))

(assert (= (and d!1081428 c!637296) b!3684036))

(assert (= (and d!1081428 (not c!637296)) b!3684037))

(declare-fun m!4195397 () Bool)

(assert (=> b!3684037 m!4195397))

(assert (=> b!3683593 d!1081428))

(assert (=> b!3683593 d!1081316))

(declare-fun d!1081430 () Bool)

(declare-fun lt!1289001 () Int)

(assert (=> d!1081430 (>= lt!1289001 0)))

(declare-fun e!2281232 () Int)

(assert (=> d!1081430 (= lt!1289001 e!2281232)))

(declare-fun c!637297 () Bool)

(assert (=> d!1081430 (= c!637297 ((_ is Nil!38889) input!3129))))

(assert (=> d!1081430 (= (size!29741 input!3129) lt!1289001)))

(declare-fun b!3684038 () Bool)

(assert (=> b!3684038 (= e!2281232 0)))

(declare-fun b!3684039 () Bool)

(assert (=> b!3684039 (= e!2281232 (+ 1 (size!29741 (t!300930 input!3129))))))

(assert (= (and d!1081430 c!637297) b!3684038))

(assert (= (and d!1081430 (not c!637297)) b!3684039))

(declare-fun m!4195399 () Bool)

(assert (=> b!3684039 m!4195399))

(assert (=> b!3683593 d!1081430))

(declare-fun d!1081432 () Bool)

(assert (=> d!1081432 (= (isEmpty!23109 (maxPrefix!2979 thiss!25197 rules!3568 input!3129)) (not ((_ is Some!8337) (maxPrefix!2979 thiss!25197 rules!3568 input!3129))))))

(assert (=> d!1081280 d!1081432))

(declare-fun d!1081434 () Bool)

(declare-fun res!1496781 () Bool)

(declare-fun e!2281237 () Bool)

(assert (=> d!1081434 (=> res!1496781 e!2281237)))

(assert (=> d!1081434 (= res!1496781 ((_ is Nil!38890) rules!3568))))

(assert (=> d!1081434 (= (noDuplicateTag!2256 thiss!25197 rules!3568 Nil!38893) e!2281237)))

(declare-fun b!3684044 () Bool)

(declare-fun e!2281238 () Bool)

(assert (=> b!3684044 (= e!2281237 e!2281238)))

(declare-fun res!1496782 () Bool)

(assert (=> b!3684044 (=> (not res!1496782) (not e!2281238))))

(declare-fun contains!7775 (List!39017 String!43794) Bool)

(assert (=> b!3684044 (= res!1496782 (not (contains!7775 Nil!38893 (tag!6668 (h!44310 rules!3568)))))))

(declare-fun b!3684045 () Bool)

(assert (=> b!3684045 (= e!2281238 (noDuplicateTag!2256 thiss!25197 (t!300931 rules!3568) (Cons!38893 (tag!6668 (h!44310 rules!3568)) Nil!38893)))))

(assert (= (and d!1081434 (not res!1496781)) b!3684044))

(assert (= (and b!3684044 res!1496782) b!3684045))

(declare-fun m!4195401 () Bool)

(assert (=> b!3684044 m!4195401))

(declare-fun m!4195403 () Bool)

(assert (=> b!3684045 m!4195403))

(assert (=> b!3683602 d!1081434))

(declare-fun d!1081436 () Bool)

(declare-fun c!637300 () Bool)

(assert (=> d!1081436 (= c!637300 ((_ is Node!11914) (c!637194 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (value!187527 (head!7914 (list!14473 (_1!22512 lt!1288625))))))))))

(declare-fun e!2281243 () Bool)

(assert (=> d!1081436 (= (inv!52380 (c!637194 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (value!187527 (head!7914 (list!14473 (_1!22512 lt!1288625))))))) e!2281243)))

(declare-fun b!3684052 () Bool)

(declare-fun inv!52385 (Conc!11914) Bool)

(assert (=> b!3684052 (= e!2281243 (inv!52385 (c!637194 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (value!187527 (head!7914 (list!14473 (_1!22512 lt!1288625))))))))))

(declare-fun b!3684053 () Bool)

(declare-fun e!2281244 () Bool)

(assert (=> b!3684053 (= e!2281243 e!2281244)))

(declare-fun res!1496785 () Bool)

(assert (=> b!3684053 (= res!1496785 (not ((_ is Leaf!18456) (c!637194 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (value!187527 (head!7914 (list!14473 (_1!22512 lt!1288625)))))))))))

(assert (=> b!3684053 (=> res!1496785 e!2281244)))

(declare-fun b!3684054 () Bool)

(declare-fun inv!52386 (Conc!11914) Bool)

(assert (=> b!3684054 (= e!2281244 (inv!52386 (c!637194 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (value!187527 (head!7914 (list!14473 (_1!22512 lt!1288625))))))))))

(assert (= (and d!1081436 c!637300) b!3684052))

(assert (= (and d!1081436 (not c!637300)) b!3684053))

(assert (= (and b!3684053 (not res!1496785)) b!3684054))

(declare-fun m!4195405 () Bool)

(assert (=> b!3684052 m!4195405))

(declare-fun m!4195407 () Bool)

(assert (=> b!3684054 m!4195407))

(assert (=> b!3683572 d!1081436))

(assert (=> b!3683591 d!1081316))

(declare-fun d!1081438 () Bool)

(declare-fun dynLambda!17068 (Int BalanceConc!23442) TokenValue!6092)

(assert (=> d!1081438 (= (apply!9354 (transformation!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672)))) (seqFromList!4411 (originalCharacters!6576 (_1!22513 (get!12872 lt!1288672))))) (dynLambda!17068 (toValue!8166 (transformation!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672))))) (seqFromList!4411 (originalCharacters!6576 (_1!22513 (get!12872 lt!1288672))))))))

(declare-fun b_lambda!109431 () Bool)

(assert (=> (not b_lambda!109431) (not d!1081438)))

(declare-fun t!300967 () Bool)

(declare-fun tb!213687 () Bool)

(assert (=> (and b!3683466 (= (toValue!8166 (transformation!5862 (h!44310 rules!3568))) (toValue!8166 (transformation!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672)))))) t!300967) tb!213687))

(declare-fun result!260024 () Bool)

(declare-fun inv!21 (TokenValue!6092) Bool)

(assert (=> tb!213687 (= result!260024 (inv!21 (dynLambda!17068 (toValue!8166 (transformation!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672))))) (seqFromList!4411 (originalCharacters!6576 (_1!22513 (get!12872 lt!1288672)))))))))

(declare-fun m!4195409 () Bool)

(assert (=> tb!213687 m!4195409))

(assert (=> d!1081438 t!300967))

(declare-fun b_and!275339 () Bool)

(assert (= b_and!275307 (and (=> t!300967 result!260024) b_and!275339)))

(declare-fun tb!213689 () Bool)

(declare-fun t!300969 () Bool)

(assert (=> (and b!3683618 (= (toValue!8166 (transformation!5862 (h!44310 (t!300931 rules!3568)))) (toValue!8166 (transformation!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672)))))) t!300969) tb!213689))

(declare-fun result!260028 () Bool)

(assert (= result!260028 result!260024))

(assert (=> d!1081438 t!300969))

(declare-fun b_and!275341 () Bool)

(assert (= b_and!275319 (and (=> t!300969 result!260028) b_and!275341)))

(assert (=> d!1081438 m!4194831))

(declare-fun m!4195411 () Bool)

(assert (=> d!1081438 m!4195411))

(assert (=> b!3683591 d!1081438))

(declare-fun d!1081440 () Bool)

(assert (=> d!1081440 (= (seqFromList!4411 (originalCharacters!6576 (_1!22513 (get!12872 lt!1288672)))) (fromListB!2039 (originalCharacters!6576 (_1!22513 (get!12872 lt!1288672)))))))

(declare-fun bs!573792 () Bool)

(assert (= bs!573792 d!1081440))

(declare-fun m!4195413 () Bool)

(assert (=> bs!573792 m!4195413))

(assert (=> b!3683591 d!1081440))

(declare-fun b!3684065 () Bool)

(declare-fun e!2281252 () List!39015)

(assert (=> b!3684065 (= e!2281252 Nil!38891)))

(declare-fun d!1081442 () Bool)

(declare-fun c!637305 () Bool)

(assert (=> d!1081442 (= c!637305 ((_ is Empty!11915) (c!637195 (_1!22512 lt!1288625))))))

(assert (=> d!1081442 (= (list!14477 (c!637195 (_1!22512 lt!1288625))) e!2281252)))

(declare-fun b!3684066 () Bool)

(declare-fun e!2281253 () List!39015)

(assert (=> b!3684066 (= e!2281252 e!2281253)))

(declare-fun c!637306 () Bool)

(assert (=> b!3684066 (= c!637306 ((_ is Leaf!18457) (c!637195 (_1!22512 lt!1288625))))))

(declare-fun b!3684067 () Bool)

(declare-fun list!14481 (IArray!23835) List!39015)

(assert (=> b!3684067 (= e!2281253 (list!14481 (xs!15117 (c!637195 (_1!22512 lt!1288625)))))))

(declare-fun b!3684068 () Bool)

(assert (=> b!3684068 (= e!2281253 (++!9680 (list!14477 (left!30344 (c!637195 (_1!22512 lt!1288625)))) (list!14477 (right!30674 (c!637195 (_1!22512 lt!1288625))))))))

(assert (= (and d!1081442 c!637305) b!3684065))

(assert (= (and d!1081442 (not c!637305)) b!3684066))

(assert (= (and b!3684066 c!637306) b!3684067))

(assert (= (and b!3684066 (not c!637306)) b!3684068))

(declare-fun m!4195415 () Bool)

(assert (=> b!3684067 m!4195415))

(declare-fun m!4195417 () Bool)

(assert (=> b!3684068 m!4195417))

(declare-fun m!4195419 () Bool)

(assert (=> b!3684068 m!4195419))

(assert (=> b!3684068 m!4195417))

(assert (=> b!3684068 m!4195419))

(declare-fun m!4195421 () Bool)

(assert (=> b!3684068 m!4195421))

(assert (=> d!1081276 d!1081442))

(declare-fun b!3684087 () Bool)

(declare-fun res!1496806 () Bool)

(declare-fun e!2281263 () Bool)

(assert (=> b!3684087 (=> (not res!1496806) (not e!2281263))))

(declare-fun lt!1289014 () Option!8338)

(assert (=> b!3684087 (= res!1496806 (= (rule!8702 (_1!22513 (get!12872 lt!1289014))) (h!44310 rules!3568)))))

(declare-fun d!1081444 () Bool)

(declare-fun e!2281264 () Bool)

(assert (=> d!1081444 e!2281264))

(declare-fun res!1496804 () Bool)

(assert (=> d!1081444 (=> res!1496804 e!2281264)))

(assert (=> d!1081444 (= res!1496804 (isEmpty!23109 lt!1289014))))

(declare-fun e!2281262 () Option!8338)

(assert (=> d!1081444 (= lt!1289014 e!2281262)))

(declare-fun c!637309 () Bool)

(declare-datatypes ((tuple2!38770 0))(
  ( (tuple2!38771 (_1!22519 List!39013) (_2!22519 List!39013)) )
))
(declare-fun lt!1289016 () tuple2!38770)

(assert (=> d!1081444 (= c!637309 (isEmpty!23111 (_1!22519 lt!1289016)))))

(declare-fun findLongestMatch!1010 (Regex!10621 List!39013) tuple2!38770)

(assert (=> d!1081444 (= lt!1289016 (findLongestMatch!1010 (regex!5862 (h!44310 rules!3568)) input!3129))))

(assert (=> d!1081444 (ruleValid!2117 thiss!25197 (h!44310 rules!3568))))

(assert (=> d!1081444 (= (maxPrefixOneRule!2113 thiss!25197 (h!44310 rules!3568) input!3129) lt!1289014)))

(declare-fun b!3684088 () Bool)

(declare-fun e!2281265 () Bool)

(declare-fun findLongestMatchInner!1095 (Regex!10621 List!39013 Int List!39013 List!39013 Int) tuple2!38770)

(assert (=> b!3684088 (= e!2281265 (matchR!5180 (regex!5862 (h!44310 rules!3568)) (_1!22519 (findLongestMatchInner!1095 (regex!5862 (h!44310 rules!3568)) Nil!38889 (size!29741 Nil!38889) input!3129 input!3129 (size!29741 input!3129)))))))

(declare-fun b!3684089 () Bool)

(assert (=> b!3684089 (= e!2281263 (= (size!29735 (_1!22513 (get!12872 lt!1289014))) (size!29741 (originalCharacters!6576 (_1!22513 (get!12872 lt!1289014))))))))

(declare-fun b!3684090 () Bool)

(assert (=> b!3684090 (= e!2281262 None!8337)))

(declare-fun b!3684091 () Bool)

(declare-fun res!1496802 () Bool)

(assert (=> b!3684091 (=> (not res!1496802) (not e!2281263))))

(assert (=> b!3684091 (= res!1496802 (= (value!187527 (_1!22513 (get!12872 lt!1289014))) (apply!9354 (transformation!5862 (rule!8702 (_1!22513 (get!12872 lt!1289014)))) (seqFromList!4411 (originalCharacters!6576 (_1!22513 (get!12872 lt!1289014)))))))))

(declare-fun b!3684092 () Bool)

(declare-fun res!1496805 () Bool)

(assert (=> b!3684092 (=> (not res!1496805) (not e!2281263))))

(assert (=> b!3684092 (= res!1496805 (< (size!29741 (_2!22513 (get!12872 lt!1289014))) (size!29741 input!3129)))))

(declare-fun b!3684093 () Bool)

(assert (=> b!3684093 (= e!2281262 (Some!8337 (tuple2!38759 (Token!11091 (apply!9354 (transformation!5862 (h!44310 rules!3568)) (seqFromList!4411 (_1!22519 lt!1289016))) (h!44310 rules!3568) (size!29739 (seqFromList!4411 (_1!22519 lt!1289016))) (_1!22519 lt!1289016)) (_2!22519 lt!1289016))))))

(declare-fun lt!1289013 () Unit!56978)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1068 (Regex!10621 List!39013) Unit!56978)

(assert (=> b!3684093 (= lt!1289013 (longestMatchIsAcceptedByMatchOrIsEmpty!1068 (regex!5862 (h!44310 rules!3568)) input!3129))))

(declare-fun res!1496801 () Bool)

(assert (=> b!3684093 (= res!1496801 (isEmpty!23111 (_1!22519 (findLongestMatchInner!1095 (regex!5862 (h!44310 rules!3568)) Nil!38889 (size!29741 Nil!38889) input!3129 input!3129 (size!29741 input!3129)))))))

(assert (=> b!3684093 (=> res!1496801 e!2281265)))

(assert (=> b!3684093 e!2281265))

(declare-fun lt!1289012 () Unit!56978)

(assert (=> b!3684093 (= lt!1289012 lt!1289013)))

(declare-fun lt!1289015 () Unit!56978)

(declare-fun lemmaSemiInverse!1601 (TokenValueInjection!11612 BalanceConc!23442) Unit!56978)

(assert (=> b!3684093 (= lt!1289015 (lemmaSemiInverse!1601 (transformation!5862 (h!44310 rules!3568)) (seqFromList!4411 (_1!22519 lt!1289016))))))

(declare-fun b!3684094 () Bool)

(assert (=> b!3684094 (= e!2281264 e!2281263)))

(declare-fun res!1496800 () Bool)

(assert (=> b!3684094 (=> (not res!1496800) (not e!2281263))))

(assert (=> b!3684094 (= res!1496800 (matchR!5180 (regex!5862 (h!44310 rules!3568)) (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1289014))))))))

(declare-fun b!3684095 () Bool)

(declare-fun res!1496803 () Bool)

(assert (=> b!3684095 (=> (not res!1496803) (not e!2281263))))

(assert (=> b!3684095 (= res!1496803 (= (++!9677 (list!14472 (charsOf!3873 (_1!22513 (get!12872 lt!1289014)))) (_2!22513 (get!12872 lt!1289014))) input!3129))))

(assert (= (and d!1081444 c!637309) b!3684090))

(assert (= (and d!1081444 (not c!637309)) b!3684093))

(assert (= (and b!3684093 (not res!1496801)) b!3684088))

(assert (= (and d!1081444 (not res!1496804)) b!3684094))

(assert (= (and b!3684094 res!1496800) b!3684095))

(assert (= (and b!3684095 res!1496803) b!3684092))

(assert (= (and b!3684092 res!1496805) b!3684087))

(assert (= (and b!3684087 res!1496806) b!3684091))

(assert (= (and b!3684091 res!1496802) b!3684089))

(declare-fun m!4195423 () Bool)

(assert (=> b!3684087 m!4195423))

(assert (=> b!3684089 m!4195423))

(declare-fun m!4195425 () Bool)

(assert (=> b!3684089 m!4195425))

(assert (=> b!3684095 m!4195423))

(declare-fun m!4195427 () Bool)

(assert (=> b!3684095 m!4195427))

(assert (=> b!3684095 m!4195427))

(declare-fun m!4195429 () Bool)

(assert (=> b!3684095 m!4195429))

(assert (=> b!3684095 m!4195429))

(declare-fun m!4195431 () Bool)

(assert (=> b!3684095 m!4195431))

(declare-fun m!4195433 () Bool)

(assert (=> b!3684088 m!4195433))

(assert (=> b!3684088 m!4194811))

(assert (=> b!3684088 m!4195433))

(assert (=> b!3684088 m!4194811))

(declare-fun m!4195435 () Bool)

(assert (=> b!3684088 m!4195435))

(declare-fun m!4195437 () Bool)

(assert (=> b!3684088 m!4195437))

(declare-fun m!4195439 () Bool)

(assert (=> b!3684093 m!4195439))

(declare-fun m!4195441 () Bool)

(assert (=> b!3684093 m!4195441))

(assert (=> b!3684093 m!4195439))

(declare-fun m!4195443 () Bool)

(assert (=> b!3684093 m!4195443))

(assert (=> b!3684093 m!4194811))

(declare-fun m!4195445 () Bool)

(assert (=> b!3684093 m!4195445))

(assert (=> b!3684093 m!4195439))

(declare-fun m!4195447 () Bool)

(assert (=> b!3684093 m!4195447))

(assert (=> b!3684093 m!4195433))

(assert (=> b!3684093 m!4195439))

(declare-fun m!4195449 () Bool)

(assert (=> b!3684093 m!4195449))

(assert (=> b!3684093 m!4195433))

(assert (=> b!3684093 m!4194811))

(assert (=> b!3684093 m!4195435))

(assert (=> b!3684094 m!4195423))

(assert (=> b!3684094 m!4195427))

(assert (=> b!3684094 m!4195427))

(assert (=> b!3684094 m!4195429))

(assert (=> b!3684094 m!4195429))

(declare-fun m!4195451 () Bool)

(assert (=> b!3684094 m!4195451))

(assert (=> b!3684092 m!4195423))

(declare-fun m!4195453 () Bool)

(assert (=> b!3684092 m!4195453))

(assert (=> b!3684092 m!4194811))

(declare-fun m!4195455 () Bool)

(assert (=> d!1081444 m!4195455))

(declare-fun m!4195457 () Bool)

(assert (=> d!1081444 m!4195457))

(declare-fun m!4195459 () Bool)

(assert (=> d!1081444 m!4195459))

(assert (=> d!1081444 m!4194881))

(assert (=> b!3684091 m!4195423))

(declare-fun m!4195461 () Bool)

(assert (=> b!3684091 m!4195461))

(assert (=> b!3684091 m!4195461))

(declare-fun m!4195463 () Bool)

(assert (=> b!3684091 m!4195463))

(assert (=> bm!266769 d!1081444))

(declare-fun d!1081446 () Bool)

(assert (=> d!1081446 true))

(declare-fun lambda!124845 () Int)

(declare-fun order!21585 () Int)

(declare-fun dynLambda!17069 (Int Int) Int)

(assert (=> d!1081446 (< (dynLambda!17067 order!21583 (toValue!8166 (transformation!5862 (h!44310 rules!3568)))) (dynLambda!17069 order!21585 lambda!124845))))

(declare-fun Forall2!974 (Int) Bool)

(assert (=> d!1081446 (= (equivClasses!2402 (toChars!8025 (transformation!5862 (h!44310 rules!3568))) (toValue!8166 (transformation!5862 (h!44310 rules!3568)))) (Forall2!974 lambda!124845))))

(declare-fun bs!573793 () Bool)

(assert (= bs!573793 d!1081446))

(declare-fun m!4195465 () Bool)

(assert (=> bs!573793 m!4195465))

(assert (=> b!3683472 d!1081446))

(declare-fun tp!1119786 () Bool)

(declare-fun b!3684108 () Bool)

(declare-fun tp!1119785 () Bool)

(declare-fun e!2281273 () Bool)

(assert (=> b!3684108 (= e!2281273 (and (inv!52380 (left!30343 (c!637194 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (value!187527 (head!7914 (list!14473 (_1!22512 lt!1288625)))))))) tp!1119785 (inv!52380 (right!30673 (c!637194 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (value!187527 (head!7914 (list!14473 (_1!22512 lt!1288625)))))))) tp!1119786))))

(declare-fun b!3684110 () Bool)

(declare-fun e!2281272 () Bool)

(declare-fun tp!1119787 () Bool)

(assert (=> b!3684110 (= e!2281272 tp!1119787)))

(declare-fun b!3684109 () Bool)

(declare-fun inv!52387 (IArray!23833) Bool)

(assert (=> b!3684109 (= e!2281273 (and (inv!52387 (xs!15116 (c!637194 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (value!187527 (head!7914 (list!14473 (_1!22512 lt!1288625)))))))) e!2281272))))

(assert (=> b!3683572 (= tp!1119702 (and (inv!52380 (c!637194 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (value!187527 (head!7914 (list!14473 (_1!22512 lt!1288625))))))) e!2281273))))

(assert (= (and b!3683572 ((_ is Node!11914) (c!637194 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (value!187527 (head!7914 (list!14473 (_1!22512 lt!1288625)))))))) b!3684108))

(assert (= b!3684109 b!3684110))

(assert (= (and b!3683572 ((_ is Leaf!18456) (c!637194 (dynLambda!17059 (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))) (value!187527 (head!7914 (list!14473 (_1!22512 lt!1288625)))))))) b!3684109))

(declare-fun m!4195467 () Bool)

(assert (=> b!3684108 m!4195467))

(declare-fun m!4195469 () Bool)

(assert (=> b!3684108 m!4195469))

(declare-fun m!4195471 () Bool)

(assert (=> b!3684109 m!4195471))

(assert (=> b!3683572 m!4194789))

(declare-fun b!3684112 () Bool)

(declare-fun e!2281274 () Bool)

(declare-fun tp!1119789 () Bool)

(declare-fun tp!1119788 () Bool)

(assert (=> b!3684112 (= e!2281274 (and tp!1119789 tp!1119788))))

(declare-fun b!3684111 () Bool)

(assert (=> b!3684111 (= e!2281274 tp_is_empty!18325)))

(assert (=> b!3683632 (= tp!1119731 e!2281274)))

(declare-fun b!3684113 () Bool)

(declare-fun tp!1119790 () Bool)

(assert (=> b!3684113 (= e!2281274 tp!1119790)))

(declare-fun b!3684114 () Bool)

(declare-fun tp!1119791 () Bool)

(declare-fun tp!1119792 () Bool)

(assert (=> b!3684114 (= e!2281274 (and tp!1119791 tp!1119792))))

(assert (= (and b!3683632 ((_ is ElementMatch!10621) (regOne!21755 (regex!5862 (h!44310 rules!3568))))) b!3684111))

(assert (= (and b!3683632 ((_ is Concat!16714) (regOne!21755 (regex!5862 (h!44310 rules!3568))))) b!3684112))

(assert (= (and b!3683632 ((_ is Star!10621) (regOne!21755 (regex!5862 (h!44310 rules!3568))))) b!3684113))

(assert (= (and b!3683632 ((_ is Union!10621) (regOne!21755 (regex!5862 (h!44310 rules!3568))))) b!3684114))

(declare-fun b!3684116 () Bool)

(declare-fun e!2281275 () Bool)

(declare-fun tp!1119794 () Bool)

(declare-fun tp!1119793 () Bool)

(assert (=> b!3684116 (= e!2281275 (and tp!1119794 tp!1119793))))

(declare-fun b!3684115 () Bool)

(assert (=> b!3684115 (= e!2281275 tp_is_empty!18325)))

(assert (=> b!3683632 (= tp!1119732 e!2281275)))

(declare-fun b!3684117 () Bool)

(declare-fun tp!1119795 () Bool)

(assert (=> b!3684117 (= e!2281275 tp!1119795)))

(declare-fun b!3684118 () Bool)

(declare-fun tp!1119796 () Bool)

(declare-fun tp!1119797 () Bool)

(assert (=> b!3684118 (= e!2281275 (and tp!1119796 tp!1119797))))

(assert (= (and b!3683632 ((_ is ElementMatch!10621) (regTwo!21755 (regex!5862 (h!44310 rules!3568))))) b!3684115))

(assert (= (and b!3683632 ((_ is Concat!16714) (regTwo!21755 (regex!5862 (h!44310 rules!3568))))) b!3684116))

(assert (= (and b!3683632 ((_ is Star!10621) (regTwo!21755 (regex!5862 (h!44310 rules!3568))))) b!3684117))

(assert (= (and b!3683632 ((_ is Union!10621) (regTwo!21755 (regex!5862 (h!44310 rules!3568))))) b!3684118))

(declare-fun b!3684120 () Bool)

(declare-fun e!2281276 () Bool)

(declare-fun tp!1119799 () Bool)

(declare-fun tp!1119798 () Bool)

(assert (=> b!3684120 (= e!2281276 (and tp!1119799 tp!1119798))))

(declare-fun b!3684119 () Bool)

(assert (=> b!3684119 (= e!2281276 tp_is_empty!18325)))

(assert (=> b!3683617 (= tp!1119715 e!2281276)))

(declare-fun b!3684121 () Bool)

(declare-fun tp!1119800 () Bool)

(assert (=> b!3684121 (= e!2281276 tp!1119800)))

(declare-fun b!3684122 () Bool)

(declare-fun tp!1119801 () Bool)

(declare-fun tp!1119802 () Bool)

(assert (=> b!3684122 (= e!2281276 (and tp!1119801 tp!1119802))))

(assert (= (and b!3683617 ((_ is ElementMatch!10621) (regex!5862 (h!44310 (t!300931 rules!3568))))) b!3684119))

(assert (= (and b!3683617 ((_ is Concat!16714) (regex!5862 (h!44310 (t!300931 rules!3568))))) b!3684120))

(assert (= (and b!3683617 ((_ is Star!10621) (regex!5862 (h!44310 (t!300931 rules!3568))))) b!3684121))

(assert (= (and b!3683617 ((_ is Union!10621) (regex!5862 (h!44310 (t!300931 rules!3568))))) b!3684122))

(declare-fun b!3684123 () Bool)

(declare-fun e!2281277 () Bool)

(declare-fun tp!1119803 () Bool)

(assert (=> b!3684123 (= e!2281277 (and tp_is_empty!18325 tp!1119803))))

(assert (=> b!3683607 (= tp!1119705 e!2281277)))

(assert (= (and b!3683607 ((_ is Cons!38889) (t!300930 (t!300930 input!3129)))) b!3684123))

(declare-fun b!3684125 () Bool)

(declare-fun e!2281278 () Bool)

(declare-fun tp!1119805 () Bool)

(declare-fun tp!1119804 () Bool)

(assert (=> b!3684125 (= e!2281278 (and tp!1119805 tp!1119804))))

(declare-fun b!3684124 () Bool)

(assert (=> b!3684124 (= e!2281278 tp_is_empty!18325)))

(assert (=> b!3683631 (= tp!1119730 e!2281278)))

(declare-fun b!3684126 () Bool)

(declare-fun tp!1119806 () Bool)

(assert (=> b!3684126 (= e!2281278 tp!1119806)))

(declare-fun b!3684127 () Bool)

(declare-fun tp!1119807 () Bool)

(declare-fun tp!1119808 () Bool)

(assert (=> b!3684127 (= e!2281278 (and tp!1119807 tp!1119808))))

(assert (= (and b!3683631 ((_ is ElementMatch!10621) (reg!10950 (regex!5862 (h!44310 rules!3568))))) b!3684124))

(assert (= (and b!3683631 ((_ is Concat!16714) (reg!10950 (regex!5862 (h!44310 rules!3568))))) b!3684125))

(assert (= (and b!3683631 ((_ is Star!10621) (reg!10950 (regex!5862 (h!44310 rules!3568))))) b!3684126))

(assert (= (and b!3683631 ((_ is Union!10621) (reg!10950 (regex!5862 (h!44310 rules!3568))))) b!3684127))

(declare-fun b!3684130 () Bool)

(declare-fun b_free!97669 () Bool)

(declare-fun b_next!98373 () Bool)

(assert (=> b!3684130 (= b_free!97669 (not b_next!98373))))

(declare-fun t!300972 () Bool)

(declare-fun tb!213691 () Bool)

(assert (=> (and b!3684130 (= (toValue!8166 (transformation!5862 (h!44310 (t!300931 (t!300931 rules!3568))))) (toValue!8166 (transformation!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672)))))) t!300972) tb!213691))

(declare-fun result!260032 () Bool)

(assert (= result!260032 result!260024))

(assert (=> d!1081438 t!300972))

(declare-fun b_and!275343 () Bool)

(declare-fun tp!1119812 () Bool)

(assert (=> b!3684130 (= tp!1119812 (and (=> t!300972 result!260032) b_and!275343))))

(declare-fun b_free!97671 () Bool)

(declare-fun b_next!98375 () Bool)

(assert (=> b!3684130 (= b_free!97671 (not b_next!98375))))

(declare-fun tb!213693 () Bool)

(declare-fun t!300974 () Bool)

(assert (=> (and b!3684130 (= (toChars!8025 (transformation!5862 (h!44310 (t!300931 (t!300931 rules!3568))))) (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625))))))) t!300974) tb!213693))

(declare-fun result!260034 () Bool)

(assert (= result!260034 result!259990))

(assert (=> d!1081272 t!300974))

(declare-fun t!300976 () Bool)

(declare-fun tb!213695 () Bool)

(assert (=> (and b!3684130 (= (toChars!8025 (transformation!5862 (h!44310 (t!300931 (t!300931 rules!3568))))) (toChars!8025 (transformation!5862 (rule!8702 (_1!22513 (get!12872 lt!1288672)))))) t!300976) tb!213695))

(declare-fun result!260036 () Bool)

(assert (= result!260036 result!260002))

(assert (=> d!1081320 t!300976))

(declare-fun tp!1119811 () Bool)

(declare-fun b_and!275345 () Bool)

(assert (=> b!3684130 (= tp!1119811 (and (=> t!300974 result!260034) (=> t!300976 result!260036) b_and!275345))))

(declare-fun e!2281282 () Bool)

(assert (=> b!3684130 (= e!2281282 (and tp!1119812 tp!1119811))))

(declare-fun b!3684129 () Bool)

(declare-fun e!2281280 () Bool)

(declare-fun tp!1119810 () Bool)

(assert (=> b!3684129 (= e!2281280 (and tp!1119810 (inv!52375 (tag!6668 (h!44310 (t!300931 (t!300931 rules!3568))))) (inv!52377 (transformation!5862 (h!44310 (t!300931 (t!300931 rules!3568))))) e!2281282))))

(declare-fun b!3684128 () Bool)

(declare-fun e!2281281 () Bool)

(declare-fun tp!1119809 () Bool)

(assert (=> b!3684128 (= e!2281281 (and e!2281280 tp!1119809))))

(assert (=> b!3683616 (= tp!1119714 e!2281281)))

(assert (= b!3684129 b!3684130))

(assert (= b!3684128 b!3684129))

(assert (= (and b!3683616 ((_ is Cons!38890) (t!300931 (t!300931 rules!3568)))) b!3684128))

(declare-fun m!4195473 () Bool)

(assert (=> b!3684129 m!4195473))

(declare-fun m!4195475 () Bool)

(assert (=> b!3684129 m!4195475))

(declare-fun b!3684132 () Bool)

(declare-fun e!2281283 () Bool)

(declare-fun tp!1119814 () Bool)

(declare-fun tp!1119813 () Bool)

(assert (=> b!3684132 (= e!2281283 (and tp!1119814 tp!1119813))))

(declare-fun b!3684131 () Bool)

(assert (=> b!3684131 (= e!2281283 tp_is_empty!18325)))

(assert (=> b!3683630 (= tp!1119729 e!2281283)))

(declare-fun b!3684133 () Bool)

(declare-fun tp!1119815 () Bool)

(assert (=> b!3684133 (= e!2281283 tp!1119815)))

(declare-fun b!3684134 () Bool)

(declare-fun tp!1119816 () Bool)

(declare-fun tp!1119817 () Bool)

(assert (=> b!3684134 (= e!2281283 (and tp!1119816 tp!1119817))))

(assert (= (and b!3683630 ((_ is ElementMatch!10621) (regOne!21754 (regex!5862 (h!44310 rules!3568))))) b!3684131))

(assert (= (and b!3683630 ((_ is Concat!16714) (regOne!21754 (regex!5862 (h!44310 rules!3568))))) b!3684132))

(assert (= (and b!3683630 ((_ is Star!10621) (regOne!21754 (regex!5862 (h!44310 rules!3568))))) b!3684133))

(assert (= (and b!3683630 ((_ is Union!10621) (regOne!21754 (regex!5862 (h!44310 rules!3568))))) b!3684134))

(declare-fun b!3684136 () Bool)

(declare-fun e!2281284 () Bool)

(declare-fun tp!1119819 () Bool)

(declare-fun tp!1119818 () Bool)

(assert (=> b!3684136 (= e!2281284 (and tp!1119819 tp!1119818))))

(declare-fun b!3684135 () Bool)

(assert (=> b!3684135 (= e!2281284 tp_is_empty!18325)))

(assert (=> b!3683630 (= tp!1119728 e!2281284)))

(declare-fun b!3684137 () Bool)

(declare-fun tp!1119820 () Bool)

(assert (=> b!3684137 (= e!2281284 tp!1119820)))

(declare-fun b!3684138 () Bool)

(declare-fun tp!1119821 () Bool)

(declare-fun tp!1119822 () Bool)

(assert (=> b!3684138 (= e!2281284 (and tp!1119821 tp!1119822))))

(assert (= (and b!3683630 ((_ is ElementMatch!10621) (regTwo!21754 (regex!5862 (h!44310 rules!3568))))) b!3684135))

(assert (= (and b!3683630 ((_ is Concat!16714) (regTwo!21754 (regex!5862 (h!44310 rules!3568))))) b!3684136))

(assert (= (and b!3683630 ((_ is Star!10621) (regTwo!21754 (regex!5862 (h!44310 rules!3568))))) b!3684137))

(assert (= (and b!3683630 ((_ is Union!10621) (regTwo!21754 (regex!5862 (h!44310 rules!3568))))) b!3684138))

(declare-fun b_lambda!109433 () Bool)

(assert (= b_lambda!109421 (or (and b!3683466 b_free!97655 (= (toChars!8025 (transformation!5862 (h!44310 rules!3568))) (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))))) (and b!3683618 b_free!97663 (= (toChars!8025 (transformation!5862 (h!44310 (t!300931 rules!3568)))) (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))))) (and b!3684130 b_free!97671 (= (toChars!8025 (transformation!5862 (h!44310 (t!300931 (t!300931 rules!3568))))) (toChars!8025 (transformation!5862 (rule!8702 (head!7914 (list!14473 (_1!22512 lt!1288625)))))))) b_lambda!109433)))

(check-sat (not bm!266772) b_and!275323 (not b!3684067) (not d!1081322) (not b!3683770) (not b!3684118) (not b!3683772) b_and!275339 (not b!3683776) (not b!3684092) (not b!3684044) (not b!3684031) (not b!3683647) (not b!3684094) (not b!3683658) (not b!3683775) (not d!1081370) (not b!3684109) (not d!1081324) (not d!1081290) (not b!3684095) (not d!1081320) (not d!1081296) (not b!3684112) (not d!1081426) (not b!3684138) (not b!3683771) b_and!275341 (not b!3684133) (not d!1081342) (not b!3684091) (not b!3684045) (not b!3683691) (not b_lambda!109431) (not b!3683774) (not b!3683816) (not d!1081444) (not b_lambda!109423) (not b!3684088) tp_is_empty!18325 (not b!3684093) (not b!3683855) b_and!275343 (not b!3684136) (not d!1081344) (not b!3683844) (not b!3683750) (not tb!213687) (not b!3684129) (not b!3683815) (not b!3683646) (not d!1081310) (not d!1081318) (not b!3684116) (not b!3683845) (not b_lambda!109433) (not b!3684122) (not b!3683690) (not b!3683856) (not b!3684117) (not b!3683742) (not d!1081368) (not d!1081348) (not d!1081356) (not b!3683643) (not d!1081446) (not b!3684020) (not b!3684127) (not d!1081338) (not b!3684114) (not b!3683768) (not d!1081328) (not b!3683659) (not d!1081288) (not b!3684121) (not b!3684128) (not b!3684037) (not b_next!98373) (not b!3684089) (not b!3683572) (not b!3683754) (not b_next!98359) (not b!3683744) (not d!1081358) (not b!3684018) (not d!1081332) (not b!3683745) (not b!3684052) (not b!3683773) (not b!3684120) (not b!3684123) (not b!3684054) (not d!1081298) (not d!1081364) (not b!3684137) (not b_next!98357) (not tb!213669) (not b!3684108) (not bm!266773) (not b!3684126) (not b_next!98367) (not d!1081440) (not b!3684113) b_and!275325 (not b_next!98365) (not d!1081424) b_and!275345 (not b!3683741) (not d!1081286) (not b!3684110) (not b!3684023) (not b!3684125) (not b!3683657) (not b!3684132) (not b!3684087) (not b!3684017) (not b!3684068) (not d!1081340) (not d!1081372) (not b!3684039) (not b_next!98375) (not b!3683767) (not b!3684134))
(check-sat b_and!275339 b_and!275341 b_and!275343 b_and!275323 (not b_next!98373) (not b_next!98359) (not b_next!98357) (not b_next!98375) (not b_next!98367) b_and!275325 (not b_next!98365) b_and!275345)
