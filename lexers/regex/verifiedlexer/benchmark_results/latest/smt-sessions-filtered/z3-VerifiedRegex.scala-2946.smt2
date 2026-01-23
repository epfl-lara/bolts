; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!173462 () Bool)

(assert start!173462)

(declare-fun b!1756533 () Bool)

(declare-fun b_free!48519 () Bool)

(declare-fun b_next!49223 () Bool)

(assert (=> b!1756533 (= b_free!48519 (not b_next!49223))))

(declare-fun tp!499315 () Bool)

(declare-fun b_and!131947 () Bool)

(assert (=> b!1756533 (= tp!499315 b_and!131947)))

(declare-fun b_free!48521 () Bool)

(declare-fun b_next!49225 () Bool)

(assert (=> b!1756533 (= b_free!48521 (not b_next!49225))))

(declare-fun tp!499310 () Bool)

(declare-fun b_and!131949 () Bool)

(assert (=> b!1756533 (= tp!499310 b_and!131949)))

(declare-fun b!1756547 () Bool)

(declare-fun b_free!48523 () Bool)

(declare-fun b_next!49227 () Bool)

(assert (=> b!1756547 (= b_free!48523 (not b_next!49227))))

(declare-fun tp!499309 () Bool)

(declare-fun b_and!131951 () Bool)

(assert (=> b!1756547 (= tp!499309 b_and!131951)))

(declare-fun b_free!48525 () Bool)

(declare-fun b_next!49229 () Bool)

(assert (=> b!1756547 (= b_free!48525 (not b_next!49229))))

(declare-fun tp!499311 () Bool)

(declare-fun b_and!131953 () Bool)

(assert (=> b!1756547 (= tp!499311 b_and!131953)))

(declare-fun b!1756534 () Bool)

(declare-fun b_free!48527 () Bool)

(declare-fun b_next!49231 () Bool)

(assert (=> b!1756534 (= b_free!48527 (not b_next!49231))))

(declare-fun tp!499318 () Bool)

(declare-fun b_and!131955 () Bool)

(assert (=> b!1756534 (= tp!499318 b_and!131955)))

(declare-fun b_free!48529 () Bool)

(declare-fun b_next!49233 () Bool)

(assert (=> b!1756534 (= b_free!48529 (not b_next!49233))))

(declare-fun tp!499317 () Bool)

(declare-fun b_and!131957 () Bool)

(assert (=> b!1756534 (= tp!499317 b_and!131957)))

(declare-fun b!1756558 () Bool)

(declare-fun e!1124233 () Bool)

(assert (=> b!1756558 (= e!1124233 true)))

(declare-fun b!1756557 () Bool)

(declare-fun e!1124232 () Bool)

(assert (=> b!1756557 (= e!1124232 e!1124233)))

(declare-fun b!1756556 () Bool)

(declare-fun e!1124231 () Bool)

(assert (=> b!1756556 (= e!1124231 e!1124232)))

(declare-fun b!1756545 () Bool)

(assert (=> b!1756545 e!1124231))

(assert (= b!1756557 b!1756558))

(assert (= b!1756556 b!1756557))

(assert (= b!1756545 b!1756556))

(declare-fun order!12209 () Int)

(declare-datatypes ((List!19397 0))(
  ( (Nil!19327) (Cons!19327 (h!24728 (_ BitVec 16)) (t!163560 List!19397)) )
))
(declare-datatypes ((TokenValue!3543 0))(
  ( (FloatLiteralValue!7086 (text!25246 List!19397)) (TokenValueExt!3542 (__x!12388 Int)) (Broken!17715 (value!108057 List!19397)) (Object!3612) (End!3543) (Def!3543) (Underscore!3543) (Match!3543) (Else!3543) (Error!3543) (Case!3543) (If!3543) (Extends!3543) (Abstract!3543) (Class!3543) (Val!3543) (DelimiterValue!7086 (del!3603 List!19397)) (KeywordValue!3549 (value!108058 List!19397)) (CommentValue!7086 (value!108059 List!19397)) (WhitespaceValue!7086 (value!108060 List!19397)) (IndentationValue!3543 (value!108061 List!19397)) (String!22046) (Int32!3543) (Broken!17716 (value!108062 List!19397)) (Boolean!3544) (Unit!33492) (OperatorValue!3546 (op!3603 List!19397)) (IdentifierValue!7086 (value!108063 List!19397)) (IdentifierValue!7087 (value!108064 List!19397)) (WhitespaceValue!7087 (value!108065 List!19397)) (True!7086) (False!7086) (Broken!17717 (value!108066 List!19397)) (Broken!17718 (value!108067 List!19397)) (True!7087) (RightBrace!3543) (RightBracket!3543) (Colon!3543) (Null!3543) (Comma!3543) (LeftBracket!3543) (False!7087) (LeftBrace!3543) (ImaginaryLiteralValue!3543 (text!25247 List!19397)) (StringLiteralValue!10629 (value!108068 List!19397)) (EOFValue!3543 (value!108069 List!19397)) (IdentValue!3543 (value!108070 List!19397)) (DelimiterValue!7087 (value!108071 List!19397)) (DedentValue!3543 (value!108072 List!19397)) (NewLineValue!3543 (value!108073 List!19397)) (IntegerValue!10629 (value!108074 (_ BitVec 32)) (text!25248 List!19397)) (IntegerValue!10630 (value!108075 Int) (text!25249 List!19397)) (Times!3543) (Or!3543) (Equal!3543) (Minus!3543) (Broken!17719 (value!108076 List!19397)) (And!3543) (Div!3543) (LessEqual!3543) (Mod!3543) (Concat!8324) (Not!3543) (Plus!3543) (SpaceValue!3543 (value!108077 List!19397)) (IntegerValue!10631 (value!108078 Int) (text!25250 List!19397)) (StringLiteralValue!10630 (text!25251 List!19397)) (FloatLiteralValue!7087 (text!25252 List!19397)) (BytesLiteralValue!3543 (value!108079 List!19397)) (CommentValue!7087 (value!108080 List!19397)) (StringLiteralValue!10631 (value!108081 List!19397)) (ErrorTokenValue!3543 (msg!3604 List!19397)) )
))
(declare-datatypes ((C!9736 0))(
  ( (C!9737 (val!5464 Int)) )
))
(declare-datatypes ((List!19398 0))(
  ( (Nil!19328) (Cons!19328 (h!24729 C!9736) (t!163561 List!19398)) )
))
(declare-datatypes ((String!22047 0))(
  ( (String!22048 (value!108082 String)) )
))
(declare-datatypes ((Regex!4781 0))(
  ( (ElementMatch!4781 (c!286300 C!9736)) (Concat!8325 (regOne!10074 Regex!4781) (regTwo!10074 Regex!4781)) (EmptyExpr!4781) (Star!4781 (reg!5110 Regex!4781)) (EmptyLang!4781) (Union!4781 (regOne!10075 Regex!4781) (regTwo!10075 Regex!4781)) )
))
(declare-datatypes ((IArray!12863 0))(
  ( (IArray!12864 (innerList!6489 List!19398)) )
))
(declare-datatypes ((Conc!6429 0))(
  ( (Node!6429 (left!15473 Conc!6429) (right!15803 Conc!6429) (csize!13088 Int) (cheight!6640 Int)) (Leaf!9376 (xs!9305 IArray!12863) (csize!13089 Int)) (Empty!6429) )
))
(declare-datatypes ((BalanceConc!12802 0))(
  ( (BalanceConc!12803 (c!286301 Conc!6429)) )
))
(declare-datatypes ((TokenValueInjection!6746 0))(
  ( (TokenValueInjection!6747 (toValue!4972 Int) (toChars!4831 Int)) )
))
(declare-datatypes ((Rule!6706 0))(
  ( (Rule!6707 (regex!3453 Regex!4781) (tag!3811 String!22047) (isSeparator!3453 Bool) (transformation!3453 TokenValueInjection!6746)) )
))
(declare-datatypes ((Token!6472 0))(
  ( (Token!6473 (value!108083 TokenValue!3543) (rule!5467 Rule!6706) (size!15354 Int) (originalCharacters!4267 List!19398)) )
))
(declare-datatypes ((tuple2!18946 0))(
  ( (tuple2!18947 (_1!10875 Token!6472) (_2!10875 List!19398)) )
))
(declare-fun lt!678588 () tuple2!18946)

(declare-fun lambda!70028 () Int)

(declare-fun order!12207 () Int)

(declare-fun dynLambda!9271 (Int Int) Int)

(declare-fun dynLambda!9272 (Int Int) Int)

(assert (=> b!1756558 (< (dynLambda!9271 order!12207 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) (dynLambda!9272 order!12209 lambda!70028))))

(declare-fun order!12211 () Int)

(declare-fun dynLambda!9273 (Int Int) Int)

(assert (=> b!1756558 (< (dynLambda!9273 order!12211 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) (dynLambda!9272 order!12209 lambda!70028))))

(declare-fun b!1756518 () Bool)

(declare-fun e!1124211 () Bool)

(declare-fun tp!499314 () Bool)

(declare-fun e!1124221 () Bool)

(declare-fun token!523 () Token!6472)

(declare-fun inv!21 (TokenValue!3543) Bool)

(assert (=> b!1756518 (= e!1124221 (and (inv!21 (value!108083 token!523)) e!1124211 tp!499314))))

(declare-fun b!1756519 () Bool)

(declare-fun e!1124209 () Bool)

(declare-fun lt!678583 () Rule!6706)

(assert (=> b!1756519 (= e!1124209 (= (rule!5467 (_1!10875 lt!678588)) lt!678583))))

(declare-fun b!1756520 () Bool)

(declare-fun res!790314 () Bool)

(declare-fun e!1124208 () Bool)

(assert (=> b!1756520 (=> res!790314 e!1124208)))

(declare-fun lt!678589 () List!19398)

(declare-fun lt!678578 () List!19398)

(assert (=> b!1756520 (= res!790314 (not (= lt!678589 lt!678578)))))

(declare-fun b!1756521 () Bool)

(declare-fun e!1124217 () Bool)

(assert (=> b!1756521 (= e!1124217 e!1124209)))

(declare-fun res!790302 () Bool)

(assert (=> b!1756521 (=> (not res!790302) (not e!1124209))))

(declare-fun matchR!2254 (Regex!4781 List!19398) Bool)

(declare-fun list!7835 (BalanceConc!12802) List!19398)

(declare-fun charsOf!2102 (Token!6472) BalanceConc!12802)

(assert (=> b!1756521 (= res!790302 (matchR!2254 (regex!3453 lt!678583) (list!7835 (charsOf!2102 (_1!10875 lt!678588)))))))

(declare-datatypes ((Option!3928 0))(
  ( (None!3927) (Some!3927 (v!25380 Rule!6706)) )
))
(declare-fun lt!678585 () Option!3928)

(declare-fun get!5872 (Option!3928) Rule!6706)

(assert (=> b!1756521 (= lt!678583 (get!5872 lt!678585))))

(declare-fun b!1756522 () Bool)

(declare-fun e!1124213 () Bool)

(declare-fun e!1124210 () Bool)

(assert (=> b!1756522 (= e!1124213 e!1124210)))

(declare-fun res!790316 () Bool)

(assert (=> b!1756522 (=> res!790316 e!1124210)))

(declare-fun lt!678575 () List!19398)

(declare-fun lt!678586 () BalanceConc!12802)

(declare-fun dynLambda!9274 (Int TokenValue!3543) BalanceConc!12802)

(declare-fun dynLambda!9275 (Int BalanceConc!12802) TokenValue!3543)

(assert (=> b!1756522 (= res!790316 (not (= (list!7835 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586))) lt!678575)))))

(declare-datatypes ((Unit!33493 0))(
  ( (Unit!33494) )
))
(declare-fun lt!678576 () Unit!33493)

(declare-fun lemmaSemiInverse!591 (TokenValueInjection!6746 BalanceConc!12802) Unit!33493)

(assert (=> b!1756522 (= lt!678576 (lemmaSemiInverse!591 (transformation!3453 (rule!5467 (_1!10875 lt!678588))) lt!678586))))

(declare-fun b!1756523 () Bool)

(declare-fun e!1124218 () Bool)

(declare-fun e!1124204 () Bool)

(assert (=> b!1756523 (= e!1124218 (not e!1124204))))

(declare-fun res!790308 () Bool)

(assert (=> b!1756523 (=> res!790308 e!1124204)))

(declare-fun rule!422 () Rule!6706)

(declare-fun lt!678573 () List!19398)

(assert (=> b!1756523 (= res!790308 (not (matchR!2254 (regex!3453 rule!422) lt!678573)))))

(declare-datatypes ((LexerInterface!3082 0))(
  ( (LexerInterfaceExt!3079 (__x!12389 Int)) (Lexer!3080) )
))
(declare-fun thiss!24550 () LexerInterface!3082)

(declare-fun ruleValid!951 (LexerInterface!3082 Rule!6706) Bool)

(assert (=> b!1756523 (ruleValid!951 thiss!24550 rule!422)))

(declare-fun lt!678587 () Unit!33493)

(declare-datatypes ((List!19399 0))(
  ( (Nil!19329) (Cons!19329 (h!24730 Rule!6706) (t!163562 List!19399)) )
))
(declare-fun rules!3447 () List!19399)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!474 (LexerInterface!3082 Rule!6706 List!19399) Unit!33493)

(assert (=> b!1756523 (= lt!678587 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!474 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1756524 () Bool)

(declare-fun tp!499313 () Bool)

(declare-fun e!1124212 () Bool)

(declare-fun inv!25085 (String!22047) Bool)

(declare-fun inv!25090 (TokenValueInjection!6746) Bool)

(assert (=> b!1756524 (= e!1124211 (and tp!499313 (inv!25085 (tag!3811 (rule!5467 token!523))) (inv!25090 (transformation!3453 (rule!5467 token!523))) e!1124212))))

(declare-fun b!1756526 () Bool)

(declare-fun res!790298 () Bool)

(declare-fun e!1124215 () Bool)

(assert (=> b!1756526 (=> (not res!790298) (not e!1124215))))

(declare-fun contains!3481 (List!19399 Rule!6706) Bool)

(assert (=> b!1756526 (= res!790298 (contains!3481 rules!3447 rule!422))))

(declare-fun b!1756527 () Bool)

(declare-fun res!790312 () Bool)

(assert (=> b!1756527 (=> (not res!790312) (not e!1124218))))

(declare-fun lt!678590 () tuple2!18946)

(declare-fun isEmpty!12190 (List!19398) Bool)

(assert (=> b!1756527 (= res!790312 (isEmpty!12190 (_2!10875 lt!678590)))))

(declare-fun b!1756528 () Bool)

(declare-fun res!790306 () Bool)

(assert (=> b!1756528 (=> res!790306 e!1124210)))

(assert (=> b!1756528 (= res!790306 (not (= lt!678586 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588))))))))

(declare-fun b!1756529 () Bool)

(assert (=> b!1756529 (= e!1124208 (not (isEmpty!12190 lt!678575)))))

(declare-fun b!1756530 () Bool)

(declare-fun res!790296 () Bool)

(assert (=> b!1756530 (=> res!790296 e!1124204)))

(declare-fun suffix!1421 () List!19398)

(assert (=> b!1756530 (= res!790296 (isEmpty!12190 suffix!1421))))

(declare-fun b!1756531 () Bool)

(declare-fun res!790307 () Bool)

(assert (=> b!1756531 (=> (not res!790307) (not e!1124215))))

(declare-fun isEmpty!12191 (List!19399) Bool)

(assert (=> b!1756531 (= res!790307 (not (isEmpty!12191 rules!3447)))))

(declare-fun b!1756532 () Bool)

(declare-fun e!1124207 () Bool)

(assert (=> b!1756532 (= e!1124215 e!1124207)))

(declare-fun res!790301 () Bool)

(assert (=> b!1756532 (=> (not res!790301) (not e!1124207))))

(declare-datatypes ((Option!3929 0))(
  ( (None!3928) (Some!3928 (v!25381 tuple2!18946)) )
))
(declare-fun lt!678572 () Option!3929)

(declare-fun isDefined!3271 (Option!3929) Bool)

(assert (=> b!1756532 (= res!790301 (isDefined!3271 lt!678572))))

(declare-fun maxPrefix!1636 (LexerInterface!3082 List!19399 List!19398) Option!3929)

(assert (=> b!1756532 (= lt!678572 (maxPrefix!1636 thiss!24550 rules!3447 lt!678573))))

(assert (=> b!1756532 (= lt!678573 (list!7835 (charsOf!2102 token!523)))))

(assert (=> b!1756533 (= e!1124212 (and tp!499315 tp!499310))))

(declare-fun e!1124219 () Bool)

(assert (=> b!1756534 (= e!1124219 (and tp!499318 tp!499317))))

(declare-fun b!1756535 () Bool)

(declare-fun res!790304 () Bool)

(declare-fun e!1124223 () Bool)

(assert (=> b!1756535 (=> res!790304 e!1124223)))

(assert (=> b!1756535 (= res!790304 (not (matchR!2254 (regex!3453 (rule!5467 (_1!10875 lt!678588))) lt!678575)))))

(declare-fun b!1756536 () Bool)

(assert (=> b!1756536 (= e!1124210 e!1124208)))

(declare-fun res!790297 () Bool)

(assert (=> b!1756536 (=> res!790297 e!1124208)))

(declare-fun lt!678581 () Option!3929)

(declare-fun apply!5253 (TokenValueInjection!6746 BalanceConc!12802) TokenValue!3543)

(declare-fun size!15355 (BalanceConc!12802) Int)

(assert (=> b!1756536 (= res!790297 (not (= lt!678581 (Some!3928 (tuple2!18947 (Token!6473 (apply!5253 (transformation!3453 (rule!5467 (_1!10875 lt!678588))) lt!678586) (rule!5467 (_1!10875 lt!678588)) (size!15355 lt!678586) lt!678575) (_2!10875 lt!678588))))))))

(declare-fun lt!678580 () Unit!33493)

(declare-fun lemmaCharactersSize!511 (Token!6472) Unit!33493)

(assert (=> b!1756536 (= lt!678580 (lemmaCharactersSize!511 (_1!10875 lt!678588)))))

(declare-fun lt!678579 () Unit!33493)

(declare-fun lemmaEqSameImage!364 (TokenValueInjection!6746 BalanceConc!12802 BalanceConc!12802) Unit!33493)

(declare-fun seqFromList!2422 (List!19398) BalanceConc!12802)

(assert (=> b!1756536 (= lt!678579 (lemmaEqSameImage!364 (transformation!3453 (rule!5467 (_1!10875 lt!678588))) lt!678586 (seqFromList!2422 (originalCharacters!4267 (_1!10875 lt!678588)))))))

(declare-fun b!1756537 () Bool)

(declare-fun e!1124206 () Bool)

(declare-fun tp_is_empty!7805 () Bool)

(declare-fun tp!499320 () Bool)

(assert (=> b!1756537 (= e!1124206 (and tp_is_empty!7805 tp!499320))))

(declare-fun e!1124205 () Bool)

(declare-fun e!1124224 () Bool)

(declare-fun tp!499312 () Bool)

(declare-fun b!1756538 () Bool)

(assert (=> b!1756538 (= e!1124224 (and tp!499312 (inv!25085 (tag!3811 (h!24730 rules!3447))) (inv!25090 (transformation!3453 (h!24730 rules!3447))) e!1124205))))

(declare-fun res!790299 () Bool)

(assert (=> start!173462 (=> (not res!790299) (not e!1124215))))

(get-info :version)

(assert (=> start!173462 (= res!790299 ((_ is Lexer!3080) thiss!24550))))

(assert (=> start!173462 e!1124215))

(assert (=> start!173462 e!1124206))

(declare-fun e!1124203 () Bool)

(assert (=> start!173462 e!1124203))

(assert (=> start!173462 true))

(declare-fun inv!25091 (Token!6472) Bool)

(assert (=> start!173462 (and (inv!25091 token!523) e!1124221)))

(declare-fun e!1124202 () Bool)

(assert (=> start!173462 e!1124202))

(declare-fun b!1756525 () Bool)

(declare-fun res!790309 () Bool)

(assert (=> b!1756525 (=> res!790309 e!1124208)))

(assert (=> b!1756525 (= res!790309 (not (contains!3481 rules!3447 (rule!5467 (_1!10875 lt!678588)))))))

(declare-fun b!1756539 () Bool)

(assert (=> b!1756539 (= e!1124207 e!1124218)))

(declare-fun res!790311 () Bool)

(assert (=> b!1756539 (=> (not res!790311) (not e!1124218))))

(assert (=> b!1756539 (= res!790311 (= (_1!10875 lt!678590) token!523))))

(declare-fun get!5873 (Option!3929) tuple2!18946)

(assert (=> b!1756539 (= lt!678590 (get!5873 lt!678572))))

(declare-fun b!1756540 () Bool)

(declare-fun res!790303 () Bool)

(assert (=> b!1756540 (=> (not res!790303) (not e!1124218))))

(assert (=> b!1756540 (= res!790303 (= (rule!5467 token!523) rule!422))))

(declare-fun tp!499319 () Bool)

(declare-fun b!1756541 () Bool)

(assert (=> b!1756541 (= e!1124203 (and tp!499319 (inv!25085 (tag!3811 rule!422)) (inv!25090 (transformation!3453 rule!422)) e!1124219))))

(declare-fun b!1756542 () Bool)

(declare-fun tp!499316 () Bool)

(assert (=> b!1756542 (= e!1124202 (and e!1124224 tp!499316))))

(declare-fun b!1756543 () Bool)

(declare-fun res!790313 () Bool)

(assert (=> b!1756543 (=> res!790313 e!1124204)))

(declare-fun prefixMatch!664 (Regex!4781 List!19398) Bool)

(declare-fun rulesRegex!809 (LexerInterface!3082 List!19399) Regex!4781)

(declare-fun ++!5277 (List!19398 List!19398) List!19398)

(declare-fun head!4058 (List!19398) C!9736)

(assert (=> b!1756543 (= res!790313 (prefixMatch!664 (rulesRegex!809 thiss!24550 rules!3447) (++!5277 lt!678573 (Cons!19328 (head!4058 suffix!1421) Nil!19328))))))

(declare-fun b!1756544 () Bool)

(declare-fun res!790310 () Bool)

(assert (=> b!1756544 (=> (not res!790310) (not e!1124215))))

(declare-fun rulesInvariant!2751 (LexerInterface!3082 List!19399) Bool)

(assert (=> b!1756544 (= res!790310 (rulesInvariant!2751 thiss!24550 rules!3447))))

(assert (=> b!1756545 (= e!1124223 e!1124213)))

(declare-fun res!790300 () Bool)

(assert (=> b!1756545 (=> res!790300 e!1124213)))

(declare-fun Forall!820 (Int) Bool)

(assert (=> b!1756545 (= res!790300 (not (Forall!820 lambda!70028)))))

(declare-fun lt!678582 () Unit!33493)

(declare-fun lemmaInv!652 (TokenValueInjection!6746) Unit!33493)

(assert (=> b!1756545 (= lt!678582 (lemmaInv!652 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))))))

(declare-fun b!1756546 () Bool)

(assert (=> b!1756546 (= e!1124204 e!1124223)))

(declare-fun res!790315 () Bool)

(assert (=> b!1756546 (=> res!790315 e!1124223)))

(declare-fun isPrefix!1693 (List!19398 List!19398) Bool)

(assert (=> b!1756546 (= res!790315 (not (isPrefix!1693 lt!678575 lt!678589)))))

(assert (=> b!1756546 (isPrefix!1693 lt!678575 lt!678578)))

(assert (=> b!1756546 (= lt!678578 (++!5277 lt!678575 (_2!10875 lt!678588)))))

(declare-fun lt!678571 () Unit!33493)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1202 (List!19398 List!19398) Unit!33493)

(assert (=> b!1756546 (= lt!678571 (lemmaConcatTwoListThenFirstIsPrefix!1202 lt!678575 (_2!10875 lt!678588)))))

(assert (=> b!1756546 (= lt!678575 (list!7835 lt!678586))))

(assert (=> b!1756546 (= lt!678586 (charsOf!2102 (_1!10875 lt!678588)))))

(assert (=> b!1756546 e!1124217))

(declare-fun res!790305 () Bool)

(assert (=> b!1756546 (=> (not res!790305) (not e!1124217))))

(declare-fun isDefined!3272 (Option!3928) Bool)

(assert (=> b!1756546 (= res!790305 (isDefined!3272 lt!678585))))

(declare-fun getRuleFromTag!501 (LexerInterface!3082 List!19399 String!22047) Option!3928)

(assert (=> b!1756546 (= lt!678585 (getRuleFromTag!501 thiss!24550 rules!3447 (tag!3811 (rule!5467 (_1!10875 lt!678588)))))))

(declare-fun lt!678574 () Unit!33493)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!501 (LexerInterface!3082 List!19399 List!19398 Token!6472) Unit!33493)

(assert (=> b!1756546 (= lt!678574 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!501 thiss!24550 rules!3447 lt!678589 (_1!10875 lt!678588)))))

(assert (=> b!1756546 (= lt!678588 (get!5873 lt!678581))))

(declare-fun lt!678577 () Unit!33493)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!604 (LexerInterface!3082 List!19399 List!19398 List!19398) Unit!33493)

(assert (=> b!1756546 (= lt!678577 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!604 thiss!24550 rules!3447 lt!678573 suffix!1421))))

(assert (=> b!1756546 (= lt!678581 (maxPrefix!1636 thiss!24550 rules!3447 lt!678589))))

(assert (=> b!1756546 (isPrefix!1693 lt!678573 lt!678589)))

(declare-fun lt!678584 () Unit!33493)

(assert (=> b!1756546 (= lt!678584 (lemmaConcatTwoListThenFirstIsPrefix!1202 lt!678573 suffix!1421))))

(assert (=> b!1756546 (= lt!678589 (++!5277 lt!678573 suffix!1421))))

(assert (=> b!1756547 (= e!1124205 (and tp!499309 tp!499311))))

(assert (= (and start!173462 res!790299) b!1756531))

(assert (= (and b!1756531 res!790307) b!1756544))

(assert (= (and b!1756544 res!790310) b!1756526))

(assert (= (and b!1756526 res!790298) b!1756532))

(assert (= (and b!1756532 res!790301) b!1756539))

(assert (= (and b!1756539 res!790311) b!1756527))

(assert (= (and b!1756527 res!790312) b!1756540))

(assert (= (and b!1756540 res!790303) b!1756523))

(assert (= (and b!1756523 (not res!790308)) b!1756530))

(assert (= (and b!1756530 (not res!790296)) b!1756543))

(assert (= (and b!1756543 (not res!790313)) b!1756546))

(assert (= (and b!1756546 res!790305) b!1756521))

(assert (= (and b!1756521 res!790302) b!1756519))

(assert (= (and b!1756546 (not res!790315)) b!1756535))

(assert (= (and b!1756535 (not res!790304)) b!1756545))

(assert (= (and b!1756545 (not res!790300)) b!1756522))

(assert (= (and b!1756522 (not res!790316)) b!1756528))

(assert (= (and b!1756528 (not res!790306)) b!1756536))

(assert (= (and b!1756536 (not res!790297)) b!1756525))

(assert (= (and b!1756525 (not res!790309)) b!1756520))

(assert (= (and b!1756520 (not res!790314)) b!1756529))

(assert (= (and start!173462 ((_ is Cons!19328) suffix!1421)) b!1756537))

(assert (= b!1756541 b!1756534))

(assert (= start!173462 b!1756541))

(assert (= b!1756524 b!1756533))

(assert (= b!1756518 b!1756524))

(assert (= start!173462 b!1756518))

(assert (= b!1756538 b!1756547))

(assert (= b!1756542 b!1756538))

(assert (= (and start!173462 ((_ is Cons!19329) rules!3447)) b!1756542))

(declare-fun b_lambda!56655 () Bool)

(assert (=> (not b_lambda!56655) (not b!1756522)))

(declare-fun tb!105567 () Bool)

(declare-fun t!163543 () Bool)

(assert (=> (and b!1756533 (= (toChars!4831 (transformation!3453 (rule!5467 token!523))) (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) t!163543) tb!105567))

(declare-fun tp!499323 () Bool)

(declare-fun b!1756563 () Bool)

(declare-fun e!1124236 () Bool)

(declare-fun inv!25092 (Conc!6429) Bool)

(assert (=> b!1756563 (= e!1124236 (and (inv!25092 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586)))) tp!499323))))

(declare-fun result!127002 () Bool)

(declare-fun inv!25093 (BalanceConc!12802) Bool)

(assert (=> tb!105567 (= result!127002 (and (inv!25093 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586))) e!1124236))))

(assert (= tb!105567 b!1756563))

(declare-fun m!2171331 () Bool)

(assert (=> b!1756563 m!2171331))

(declare-fun m!2171333 () Bool)

(assert (=> tb!105567 m!2171333))

(assert (=> b!1756522 t!163543))

(declare-fun b_and!131959 () Bool)

(assert (= b_and!131949 (and (=> t!163543 result!127002) b_and!131959)))

(declare-fun t!163545 () Bool)

(declare-fun tb!105569 () Bool)

(assert (=> (and b!1756547 (= (toChars!4831 (transformation!3453 (h!24730 rules!3447))) (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) t!163545) tb!105569))

(declare-fun result!127006 () Bool)

(assert (= result!127006 result!127002))

(assert (=> b!1756522 t!163545))

(declare-fun b_and!131961 () Bool)

(assert (= b_and!131953 (and (=> t!163545 result!127006) b_and!131961)))

(declare-fun tb!105571 () Bool)

(declare-fun t!163547 () Bool)

(assert (=> (and b!1756534 (= (toChars!4831 (transformation!3453 rule!422)) (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) t!163547) tb!105571))

(declare-fun result!127008 () Bool)

(assert (= result!127008 result!127002))

(assert (=> b!1756522 t!163547))

(declare-fun b_and!131963 () Bool)

(assert (= b_and!131957 (and (=> t!163547 result!127008) b_and!131963)))

(declare-fun b_lambda!56657 () Bool)

(assert (=> (not b_lambda!56657) (not b!1756522)))

(declare-fun t!163549 () Bool)

(declare-fun tb!105573 () Bool)

(assert (=> (and b!1756533 (= (toValue!4972 (transformation!3453 (rule!5467 token!523))) (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) t!163549) tb!105573))

(declare-fun result!127010 () Bool)

(assert (=> tb!105573 (= result!127010 (inv!21 (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586)))))

(declare-fun m!2171335 () Bool)

(assert (=> tb!105573 m!2171335))

(assert (=> b!1756522 t!163549))

(declare-fun b_and!131965 () Bool)

(assert (= b_and!131947 (and (=> t!163549 result!127010) b_and!131965)))

(declare-fun t!163551 () Bool)

(declare-fun tb!105575 () Bool)

(assert (=> (and b!1756547 (= (toValue!4972 (transformation!3453 (h!24730 rules!3447))) (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) t!163551) tb!105575))

(declare-fun result!127014 () Bool)

(assert (= result!127014 result!127010))

(assert (=> b!1756522 t!163551))

(declare-fun b_and!131967 () Bool)

(assert (= b_and!131951 (and (=> t!163551 result!127014) b_and!131967)))

(declare-fun tb!105577 () Bool)

(declare-fun t!163553 () Bool)

(assert (=> (and b!1756534 (= (toValue!4972 (transformation!3453 rule!422)) (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) t!163553) tb!105577))

(declare-fun result!127016 () Bool)

(assert (= result!127016 result!127010))

(assert (=> b!1756522 t!163553))

(declare-fun b_and!131969 () Bool)

(assert (= b_and!131955 (and (=> t!163553 result!127016) b_and!131969)))

(declare-fun b_lambda!56659 () Bool)

(assert (=> (not b_lambda!56659) (not b!1756528)))

(declare-fun t!163555 () Bool)

(declare-fun tb!105579 () Bool)

(assert (=> (and b!1756533 (= (toChars!4831 (transformation!3453 (rule!5467 token!523))) (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) t!163555) tb!105579))

(declare-fun b!1756566 () Bool)

(declare-fun e!1124240 () Bool)

(declare-fun tp!499324 () Bool)

(assert (=> b!1756566 (= e!1124240 (and (inv!25092 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588))))) tp!499324))))

(declare-fun result!127018 () Bool)

(assert (=> tb!105579 (= result!127018 (and (inv!25093 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588)))) e!1124240))))

(assert (= tb!105579 b!1756566))

(declare-fun m!2171337 () Bool)

(assert (=> b!1756566 m!2171337))

(declare-fun m!2171339 () Bool)

(assert (=> tb!105579 m!2171339))

(assert (=> b!1756528 t!163555))

(declare-fun b_and!131971 () Bool)

(assert (= b_and!131959 (and (=> t!163555 result!127018) b_and!131971)))

(declare-fun t!163557 () Bool)

(declare-fun tb!105581 () Bool)

(assert (=> (and b!1756547 (= (toChars!4831 (transformation!3453 (h!24730 rules!3447))) (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) t!163557) tb!105581))

(declare-fun result!127020 () Bool)

(assert (= result!127020 result!127018))

(assert (=> b!1756528 t!163557))

(declare-fun b_and!131973 () Bool)

(assert (= b_and!131961 (and (=> t!163557 result!127020) b_and!131973)))

(declare-fun t!163559 () Bool)

(declare-fun tb!105583 () Bool)

(assert (=> (and b!1756534 (= (toChars!4831 (transformation!3453 rule!422)) (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) t!163559) tb!105583))

(declare-fun result!127022 () Bool)

(assert (= result!127022 result!127018))

(assert (=> b!1756528 t!163559))

(declare-fun b_and!131975 () Bool)

(assert (= b_and!131963 (and (=> t!163559 result!127022) b_and!131975)))

(declare-fun m!2171341 () Bool)

(assert (=> b!1756523 m!2171341))

(declare-fun m!2171343 () Bool)

(assert (=> b!1756523 m!2171343))

(declare-fun m!2171345 () Bool)

(assert (=> b!1756523 m!2171345))

(declare-fun m!2171347 () Bool)

(assert (=> b!1756518 m!2171347))

(declare-fun m!2171349 () Bool)

(assert (=> b!1756532 m!2171349))

(declare-fun m!2171351 () Bool)

(assert (=> b!1756532 m!2171351))

(declare-fun m!2171353 () Bool)

(assert (=> b!1756532 m!2171353))

(assert (=> b!1756532 m!2171353))

(declare-fun m!2171355 () Bool)

(assert (=> b!1756532 m!2171355))

(declare-fun m!2171357 () Bool)

(assert (=> b!1756530 m!2171357))

(declare-fun m!2171359 () Bool)

(assert (=> b!1756541 m!2171359))

(declare-fun m!2171361 () Bool)

(assert (=> b!1756541 m!2171361))

(declare-fun m!2171363 () Bool)

(assert (=> b!1756539 m!2171363))

(declare-fun m!2171365 () Bool)

(assert (=> b!1756529 m!2171365))

(declare-fun m!2171367 () Bool)

(assert (=> b!1756526 m!2171367))

(declare-fun m!2171369 () Bool)

(assert (=> b!1756522 m!2171369))

(assert (=> b!1756522 m!2171369))

(declare-fun m!2171371 () Bool)

(assert (=> b!1756522 m!2171371))

(assert (=> b!1756522 m!2171371))

(declare-fun m!2171373 () Bool)

(assert (=> b!1756522 m!2171373))

(declare-fun m!2171375 () Bool)

(assert (=> b!1756522 m!2171375))

(declare-fun m!2171377 () Bool)

(assert (=> b!1756521 m!2171377))

(assert (=> b!1756521 m!2171377))

(declare-fun m!2171379 () Bool)

(assert (=> b!1756521 m!2171379))

(assert (=> b!1756521 m!2171379))

(declare-fun m!2171381 () Bool)

(assert (=> b!1756521 m!2171381))

(declare-fun m!2171383 () Bool)

(assert (=> b!1756521 m!2171383))

(declare-fun m!2171385 () Bool)

(assert (=> b!1756536 m!2171385))

(declare-fun m!2171387 () Bool)

(assert (=> b!1756536 m!2171387))

(declare-fun m!2171389 () Bool)

(assert (=> b!1756536 m!2171389))

(declare-fun m!2171391 () Bool)

(assert (=> b!1756536 m!2171391))

(assert (=> b!1756536 m!2171385))

(declare-fun m!2171393 () Bool)

(assert (=> b!1756536 m!2171393))

(declare-fun m!2171395 () Bool)

(assert (=> b!1756524 m!2171395))

(declare-fun m!2171397 () Bool)

(assert (=> b!1756524 m!2171397))

(declare-fun m!2171399 () Bool)

(assert (=> b!1756531 m!2171399))

(declare-fun m!2171401 () Bool)

(assert (=> b!1756538 m!2171401))

(declare-fun m!2171403 () Bool)

(assert (=> b!1756538 m!2171403))

(declare-fun m!2171405 () Bool)

(assert (=> b!1756545 m!2171405))

(declare-fun m!2171407 () Bool)

(assert (=> b!1756545 m!2171407))

(declare-fun m!2171409 () Bool)

(assert (=> b!1756527 m!2171409))

(declare-fun m!2171411 () Bool)

(assert (=> start!173462 m!2171411))

(declare-fun m!2171413 () Bool)

(assert (=> b!1756525 m!2171413))

(declare-fun m!2171415 () Bool)

(assert (=> b!1756528 m!2171415))

(declare-fun m!2171417 () Bool)

(assert (=> b!1756535 m!2171417))

(declare-fun m!2171419 () Bool)

(assert (=> b!1756544 m!2171419))

(declare-fun m!2171421 () Bool)

(assert (=> b!1756546 m!2171421))

(declare-fun m!2171423 () Bool)

(assert (=> b!1756546 m!2171423))

(declare-fun m!2171425 () Bool)

(assert (=> b!1756546 m!2171425))

(declare-fun m!2171427 () Bool)

(assert (=> b!1756546 m!2171427))

(declare-fun m!2171429 () Bool)

(assert (=> b!1756546 m!2171429))

(declare-fun m!2171431 () Bool)

(assert (=> b!1756546 m!2171431))

(declare-fun m!2171433 () Bool)

(assert (=> b!1756546 m!2171433))

(assert (=> b!1756546 m!2171377))

(declare-fun m!2171435 () Bool)

(assert (=> b!1756546 m!2171435))

(declare-fun m!2171437 () Bool)

(assert (=> b!1756546 m!2171437))

(declare-fun m!2171439 () Bool)

(assert (=> b!1756546 m!2171439))

(declare-fun m!2171441 () Bool)

(assert (=> b!1756546 m!2171441))

(declare-fun m!2171443 () Bool)

(assert (=> b!1756546 m!2171443))

(declare-fun m!2171445 () Bool)

(assert (=> b!1756546 m!2171445))

(declare-fun m!2171447 () Bool)

(assert (=> b!1756546 m!2171447))

(declare-fun m!2171449 () Bool)

(assert (=> b!1756543 m!2171449))

(declare-fun m!2171451 () Bool)

(assert (=> b!1756543 m!2171451))

(declare-fun m!2171453 () Bool)

(assert (=> b!1756543 m!2171453))

(assert (=> b!1756543 m!2171449))

(assert (=> b!1756543 m!2171453))

(declare-fun m!2171455 () Bool)

(assert (=> b!1756543 m!2171455))

(check-sat tp_is_empty!7805 (not b!1756543) (not start!173462) (not b!1756524) (not b!1756523) (not b_next!49233) (not tb!105573) (not b_next!49225) (not b!1756526) (not b!1756539) (not b!1756521) (not b!1756532) (not b!1756536) (not b_lambda!56657) (not b_next!49223) (not b!1756529) (not b_lambda!56659) (not b!1756531) b_and!131975 (not tb!105567) b_and!131967 b_and!131969 (not b!1756537) (not b!1756544) (not b!1756546) (not b!1756541) (not b!1756525) (not b_next!49231) (not b!1756518) (not b!1756535) (not b!1756530) (not b_lambda!56655) (not b_next!49227) (not b!1756538) (not b_next!49229) (not b!1756566) (not b!1756522) b_and!131973 (not b!1756542) b_and!131971 b_and!131965 (not tb!105579) (not b!1756563) (not b!1756527) (not b!1756545))
(check-sat (not b_next!49223) b_and!131975 b_and!131967 b_and!131969 (not b_next!49231) (not b_next!49227) (not b_next!49233) (not b_next!49229) (not b_next!49225) b_and!131973 b_and!131971 b_and!131965)
(get-model)

(declare-fun d!536549 () Bool)

(declare-fun res!790321 () Bool)

(declare-fun e!1124243 () Bool)

(assert (=> d!536549 (=> (not res!790321) (not e!1124243))))

(assert (=> d!536549 (= res!790321 (not (isEmpty!12190 (originalCharacters!4267 token!523))))))

(assert (=> d!536549 (= (inv!25091 token!523) e!1124243)))

(declare-fun b!1756571 () Bool)

(declare-fun res!790322 () Bool)

(assert (=> b!1756571 (=> (not res!790322) (not e!1124243))))

(assert (=> b!1756571 (= res!790322 (= (originalCharacters!4267 token!523) (list!7835 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 token!523))) (value!108083 token!523)))))))

(declare-fun b!1756572 () Bool)

(declare-fun size!15357 (List!19398) Int)

(assert (=> b!1756572 (= e!1124243 (= (size!15354 token!523) (size!15357 (originalCharacters!4267 token!523))))))

(assert (= (and d!536549 res!790321) b!1756571))

(assert (= (and b!1756571 res!790322) b!1756572))

(declare-fun b_lambda!56661 () Bool)

(assert (=> (not b_lambda!56661) (not b!1756571)))

(declare-fun t!163564 () Bool)

(declare-fun tb!105585 () Bool)

(assert (=> (and b!1756533 (= (toChars!4831 (transformation!3453 (rule!5467 token!523))) (toChars!4831 (transformation!3453 (rule!5467 token!523)))) t!163564) tb!105585))

(declare-fun b!1756573 () Bool)

(declare-fun e!1124244 () Bool)

(declare-fun tp!499325 () Bool)

(assert (=> b!1756573 (= e!1124244 (and (inv!25092 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 token!523))) (value!108083 token!523)))) tp!499325))))

(declare-fun result!127024 () Bool)

(assert (=> tb!105585 (= result!127024 (and (inv!25093 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 token!523))) (value!108083 token!523))) e!1124244))))

(assert (= tb!105585 b!1756573))

(declare-fun m!2171457 () Bool)

(assert (=> b!1756573 m!2171457))

(declare-fun m!2171459 () Bool)

(assert (=> tb!105585 m!2171459))

(assert (=> b!1756571 t!163564))

(declare-fun b_and!131977 () Bool)

(assert (= b_and!131971 (and (=> t!163564 result!127024) b_and!131977)))

(declare-fun tb!105587 () Bool)

(declare-fun t!163566 () Bool)

(assert (=> (and b!1756547 (= (toChars!4831 (transformation!3453 (h!24730 rules!3447))) (toChars!4831 (transformation!3453 (rule!5467 token!523)))) t!163566) tb!105587))

(declare-fun result!127026 () Bool)

(assert (= result!127026 result!127024))

(assert (=> b!1756571 t!163566))

(declare-fun b_and!131979 () Bool)

(assert (= b_and!131973 (and (=> t!163566 result!127026) b_and!131979)))

(declare-fun t!163568 () Bool)

(declare-fun tb!105589 () Bool)

(assert (=> (and b!1756534 (= (toChars!4831 (transformation!3453 rule!422)) (toChars!4831 (transformation!3453 (rule!5467 token!523)))) t!163568) tb!105589))

(declare-fun result!127028 () Bool)

(assert (= result!127028 result!127024))

(assert (=> b!1756571 t!163568))

(declare-fun b_and!131981 () Bool)

(assert (= b_and!131975 (and (=> t!163568 result!127028) b_and!131981)))

(declare-fun m!2171461 () Bool)

(assert (=> d!536549 m!2171461))

(declare-fun m!2171463 () Bool)

(assert (=> b!1756571 m!2171463))

(assert (=> b!1756571 m!2171463))

(declare-fun m!2171465 () Bool)

(assert (=> b!1756571 m!2171465))

(declare-fun m!2171467 () Bool)

(assert (=> b!1756572 m!2171467))

(assert (=> start!173462 d!536549))

(declare-fun d!536551 () Bool)

(assert (=> d!536551 (= (size!15354 (_1!10875 lt!678588)) (size!15357 (originalCharacters!4267 (_1!10875 lt!678588))))))

(declare-fun Unit!33497 () Unit!33493)

(assert (=> d!536551 (= (lemmaCharactersSize!511 (_1!10875 lt!678588)) Unit!33497)))

(declare-fun bs!403844 () Bool)

(assert (= bs!403844 d!536551))

(declare-fun m!2171469 () Bool)

(assert (=> bs!403844 m!2171469))

(assert (=> b!1756536 d!536551))

(declare-fun d!536553 () Bool)

(declare-fun lt!678593 () Int)

(assert (=> d!536553 (= lt!678593 (size!15357 (list!7835 lt!678586)))))

(declare-fun size!15358 (Conc!6429) Int)

(assert (=> d!536553 (= lt!678593 (size!15358 (c!286301 lt!678586)))))

(assert (=> d!536553 (= (size!15355 lt!678586) lt!678593)))

(declare-fun bs!403845 () Bool)

(assert (= bs!403845 d!536553))

(assert (=> bs!403845 m!2171433))

(assert (=> bs!403845 m!2171433))

(declare-fun m!2171471 () Bool)

(assert (=> bs!403845 m!2171471))

(declare-fun m!2171473 () Bool)

(assert (=> bs!403845 m!2171473))

(assert (=> b!1756536 d!536553))

(declare-fun d!536555 () Bool)

(assert (=> d!536555 (= (apply!5253 (transformation!3453 (rule!5467 (_1!10875 lt!678588))) lt!678586) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586))))

(declare-fun b_lambda!56663 () Bool)

(assert (=> (not b_lambda!56663) (not d!536555)))

(assert (=> d!536555 t!163549))

(declare-fun b_and!131983 () Bool)

(assert (= b_and!131965 (and (=> t!163549 result!127010) b_and!131983)))

(assert (=> d!536555 t!163551))

(declare-fun b_and!131985 () Bool)

(assert (= b_and!131967 (and (=> t!163551 result!127014) b_and!131985)))

(assert (=> d!536555 t!163553))

(declare-fun b_and!131987 () Bool)

(assert (= b_and!131969 (and (=> t!163553 result!127016) b_and!131987)))

(assert (=> d!536555 m!2171369))

(assert (=> b!1756536 d!536555))

(declare-fun d!536559 () Bool)

(declare-fun fromListB!1101 (List!19398) BalanceConc!12802)

(assert (=> d!536559 (= (seqFromList!2422 (originalCharacters!4267 (_1!10875 lt!678588))) (fromListB!1101 (originalCharacters!4267 (_1!10875 lt!678588))))))

(declare-fun bs!403846 () Bool)

(assert (= bs!403846 d!536559))

(declare-fun m!2171489 () Bool)

(assert (=> bs!403846 m!2171489))

(assert (=> b!1756536 d!536559))

(declare-fun b!1756592 () Bool)

(declare-fun e!1124258 () Bool)

(assert (=> b!1756592 (= e!1124258 true)))

(declare-fun d!536563 () Bool)

(assert (=> d!536563 e!1124258))

(assert (= d!536563 b!1756592))

(declare-fun lambda!70031 () Int)

(declare-fun order!12213 () Int)

(declare-fun dynLambda!9276 (Int Int) Int)

(assert (=> b!1756592 (< (dynLambda!9271 order!12207 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) (dynLambda!9276 order!12213 lambda!70031))))

(assert (=> b!1756592 (< (dynLambda!9273 order!12211 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) (dynLambda!9276 order!12213 lambda!70031))))

(assert (=> d!536563 (= (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (seqFromList!2422 (originalCharacters!4267 (_1!10875 lt!678588)))))))

(declare-fun lt!678599 () Unit!33493)

(declare-fun Forall2of!114 (Int BalanceConc!12802 BalanceConc!12802) Unit!33493)

(assert (=> d!536563 (= lt!678599 (Forall2of!114 lambda!70031 lt!678586 (seqFromList!2422 (originalCharacters!4267 (_1!10875 lt!678588)))))))

(assert (=> d!536563 (= (list!7835 lt!678586) (list!7835 (seqFromList!2422 (originalCharacters!4267 (_1!10875 lt!678588)))))))

(assert (=> d!536563 (= (lemmaEqSameImage!364 (transformation!3453 (rule!5467 (_1!10875 lt!678588))) lt!678586 (seqFromList!2422 (originalCharacters!4267 (_1!10875 lt!678588)))) lt!678599)))

(declare-fun b_lambda!56665 () Bool)

(assert (=> (not b_lambda!56665) (not d!536563)))

(assert (=> d!536563 t!163549))

(declare-fun b_and!131989 () Bool)

(assert (= b_and!131983 (and (=> t!163549 result!127010) b_and!131989)))

(assert (=> d!536563 t!163551))

(declare-fun b_and!131991 () Bool)

(assert (= b_and!131985 (and (=> t!163551 result!127014) b_and!131991)))

(assert (=> d!536563 t!163553))

(declare-fun b_and!131993 () Bool)

(assert (= b_and!131987 (and (=> t!163553 result!127016) b_and!131993)))

(declare-fun b_lambda!56667 () Bool)

(assert (=> (not b_lambda!56667) (not d!536563)))

(declare-fun tb!105591 () Bool)

(declare-fun t!163570 () Bool)

(assert (=> (and b!1756533 (= (toValue!4972 (transformation!3453 (rule!5467 token!523))) (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) t!163570) tb!105591))

(declare-fun result!127030 () Bool)

(assert (=> tb!105591 (= result!127030 (inv!21 (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (seqFromList!2422 (originalCharacters!4267 (_1!10875 lt!678588))))))))

(declare-fun m!2171493 () Bool)

(assert (=> tb!105591 m!2171493))

(assert (=> d!536563 t!163570))

(declare-fun b_and!131995 () Bool)

(assert (= b_and!131989 (and (=> t!163570 result!127030) b_and!131995)))

(declare-fun tb!105593 () Bool)

(declare-fun t!163572 () Bool)

(assert (=> (and b!1756547 (= (toValue!4972 (transformation!3453 (h!24730 rules!3447))) (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) t!163572) tb!105593))

(declare-fun result!127032 () Bool)

(assert (= result!127032 result!127030))

(assert (=> d!536563 t!163572))

(declare-fun b_and!131997 () Bool)

(assert (= b_and!131991 (and (=> t!163572 result!127032) b_and!131997)))

(declare-fun t!163574 () Bool)

(declare-fun tb!105595 () Bool)

(assert (=> (and b!1756534 (= (toValue!4972 (transformation!3453 rule!422)) (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) t!163574) tb!105595))

(declare-fun result!127034 () Bool)

(assert (= result!127034 result!127030))

(assert (=> d!536563 t!163574))

(declare-fun b_and!131999 () Bool)

(assert (= b_and!131993 (and (=> t!163574 result!127034) b_and!131999)))

(assert (=> d!536563 m!2171369))

(assert (=> d!536563 m!2171433))

(assert (=> d!536563 m!2171385))

(declare-fun m!2171495 () Bool)

(assert (=> d!536563 m!2171495))

(assert (=> d!536563 m!2171385))

(declare-fun m!2171497 () Bool)

(assert (=> d!536563 m!2171497))

(assert (=> d!536563 m!2171385))

(declare-fun m!2171499 () Bool)

(assert (=> d!536563 m!2171499))

(assert (=> b!1756536 d!536563))

(declare-fun b!1756621 () Bool)

(declare-fun res!790356 () Bool)

(declare-fun e!1124278 () Bool)

(assert (=> b!1756621 (=> res!790356 e!1124278)))

(declare-fun e!1124280 () Bool)

(assert (=> b!1756621 (= res!790356 e!1124280)))

(declare-fun res!790360 () Bool)

(assert (=> b!1756621 (=> (not res!790360) (not e!1124280))))

(declare-fun lt!678602 () Bool)

(assert (=> b!1756621 (= res!790360 lt!678602)))

(declare-fun b!1756622 () Bool)

(declare-fun res!790358 () Bool)

(declare-fun e!1124277 () Bool)

(assert (=> b!1756622 (=> res!790358 e!1124277)))

(declare-fun tail!2625 (List!19398) List!19398)

(assert (=> b!1756622 (= res!790358 (not (isEmpty!12190 (tail!2625 lt!678575))))))

(declare-fun b!1756623 () Bool)

(assert (=> b!1756623 (= e!1124277 (not (= (head!4058 lt!678575) (c!286300 (regex!3453 (rule!5467 (_1!10875 lt!678588)))))))))

(declare-fun b!1756624 () Bool)

(declare-fun res!790354 () Bool)

(assert (=> b!1756624 (=> (not res!790354) (not e!1124280))))

(assert (=> b!1756624 (= res!790354 (isEmpty!12190 (tail!2625 lt!678575)))))

(declare-fun b!1756625 () Bool)

(declare-fun res!790359 () Bool)

(assert (=> b!1756625 (=> (not res!790359) (not e!1124280))))

(declare-fun call!110559 () Bool)

(assert (=> b!1756625 (= res!790359 (not call!110559))))

(declare-fun b!1756626 () Bool)

(assert (=> b!1756626 (= e!1124280 (= (head!4058 lt!678575) (c!286300 (regex!3453 (rule!5467 (_1!10875 lt!678588))))))))

(declare-fun d!536567 () Bool)

(declare-fun e!1124275 () Bool)

(assert (=> d!536567 e!1124275))

(declare-fun c!286310 () Bool)

(assert (=> d!536567 (= c!286310 ((_ is EmptyExpr!4781) (regex!3453 (rule!5467 (_1!10875 lt!678588)))))))

(declare-fun e!1124279 () Bool)

(assert (=> d!536567 (= lt!678602 e!1124279)))

(declare-fun c!286308 () Bool)

(assert (=> d!536567 (= c!286308 (isEmpty!12190 lt!678575))))

(declare-fun validRegex!1926 (Regex!4781) Bool)

(assert (=> d!536567 (validRegex!1926 (regex!3453 (rule!5467 (_1!10875 lt!678588))))))

(assert (=> d!536567 (= (matchR!2254 (regex!3453 (rule!5467 (_1!10875 lt!678588))) lt!678575) lt!678602)))

(declare-fun b!1756627 () Bool)

(declare-fun nullable!1452 (Regex!4781) Bool)

(assert (=> b!1756627 (= e!1124279 (nullable!1452 (regex!3453 (rule!5467 (_1!10875 lt!678588)))))))

(declare-fun b!1756628 () Bool)

(declare-fun e!1124274 () Bool)

(assert (=> b!1756628 (= e!1124275 e!1124274)))

(declare-fun c!286309 () Bool)

(assert (=> b!1756628 (= c!286309 ((_ is EmptyLang!4781) (regex!3453 (rule!5467 (_1!10875 lt!678588)))))))

(declare-fun bm!110554 () Bool)

(assert (=> bm!110554 (= call!110559 (isEmpty!12190 lt!678575))))

(declare-fun b!1756629 () Bool)

(assert (=> b!1756629 (= e!1124274 (not lt!678602))))

(declare-fun b!1756630 () Bool)

(declare-fun e!1124276 () Bool)

(assert (=> b!1756630 (= e!1124278 e!1124276)))

(declare-fun res!790353 () Bool)

(assert (=> b!1756630 (=> (not res!790353) (not e!1124276))))

(assert (=> b!1756630 (= res!790353 (not lt!678602))))

(declare-fun b!1756631 () Bool)

(assert (=> b!1756631 (= e!1124276 e!1124277)))

(declare-fun res!790357 () Bool)

(assert (=> b!1756631 (=> res!790357 e!1124277)))

(assert (=> b!1756631 (= res!790357 call!110559)))

(declare-fun b!1756632 () Bool)

(assert (=> b!1756632 (= e!1124275 (= lt!678602 call!110559))))

(declare-fun b!1756633 () Bool)

(declare-fun derivativeStep!1221 (Regex!4781 C!9736) Regex!4781)

(assert (=> b!1756633 (= e!1124279 (matchR!2254 (derivativeStep!1221 (regex!3453 (rule!5467 (_1!10875 lt!678588))) (head!4058 lt!678575)) (tail!2625 lt!678575)))))

(declare-fun b!1756634 () Bool)

(declare-fun res!790355 () Bool)

(assert (=> b!1756634 (=> res!790355 e!1124278)))

(assert (=> b!1756634 (= res!790355 (not ((_ is ElementMatch!4781) (regex!3453 (rule!5467 (_1!10875 lt!678588))))))))

(assert (=> b!1756634 (= e!1124274 e!1124278)))

(assert (= (and d!536567 c!286308) b!1756627))

(assert (= (and d!536567 (not c!286308)) b!1756633))

(assert (= (and d!536567 c!286310) b!1756632))

(assert (= (and d!536567 (not c!286310)) b!1756628))

(assert (= (and b!1756628 c!286309) b!1756629))

(assert (= (and b!1756628 (not c!286309)) b!1756634))

(assert (= (and b!1756634 (not res!790355)) b!1756621))

(assert (= (and b!1756621 res!790360) b!1756625))

(assert (= (and b!1756625 res!790359) b!1756624))

(assert (= (and b!1756624 res!790354) b!1756626))

(assert (= (and b!1756621 (not res!790356)) b!1756630))

(assert (= (and b!1756630 res!790353) b!1756631))

(assert (= (and b!1756631 (not res!790357)) b!1756622))

(assert (= (and b!1756622 (not res!790358)) b!1756623))

(assert (= (or b!1756632 b!1756631 b!1756625) bm!110554))

(declare-fun m!2171501 () Bool)

(assert (=> b!1756633 m!2171501))

(assert (=> b!1756633 m!2171501))

(declare-fun m!2171503 () Bool)

(assert (=> b!1756633 m!2171503))

(declare-fun m!2171505 () Bool)

(assert (=> b!1756633 m!2171505))

(assert (=> b!1756633 m!2171503))

(assert (=> b!1756633 m!2171505))

(declare-fun m!2171507 () Bool)

(assert (=> b!1756633 m!2171507))

(assert (=> b!1756622 m!2171505))

(assert (=> b!1756622 m!2171505))

(declare-fun m!2171509 () Bool)

(assert (=> b!1756622 m!2171509))

(assert (=> bm!110554 m!2171365))

(assert (=> b!1756623 m!2171501))

(assert (=> b!1756624 m!2171505))

(assert (=> b!1756624 m!2171505))

(assert (=> b!1756624 m!2171509))

(assert (=> d!536567 m!2171365))

(declare-fun m!2171511 () Bool)

(assert (=> d!536567 m!2171511))

(declare-fun m!2171513 () Bool)

(assert (=> b!1756627 m!2171513))

(assert (=> b!1756626 m!2171501))

(assert (=> b!1756535 d!536567))

(declare-fun d!536569 () Bool)

(assert (=> d!536569 (= (inv!25085 (tag!3811 (h!24730 rules!3447))) (= (mod (str.len (value!108082 (tag!3811 (h!24730 rules!3447)))) 2) 0))))

(assert (=> b!1756538 d!536569))

(declare-fun d!536571 () Bool)

(declare-fun res!790363 () Bool)

(declare-fun e!1124283 () Bool)

(assert (=> d!536571 (=> (not res!790363) (not e!1124283))))

(declare-fun semiInverseModEq!1367 (Int Int) Bool)

(assert (=> d!536571 (= res!790363 (semiInverseModEq!1367 (toChars!4831 (transformation!3453 (h!24730 rules!3447))) (toValue!4972 (transformation!3453 (h!24730 rules!3447)))))))

(assert (=> d!536571 (= (inv!25090 (transformation!3453 (h!24730 rules!3447))) e!1124283)))

(declare-fun b!1756637 () Bool)

(declare-fun equivClasses!1308 (Int Int) Bool)

(assert (=> b!1756637 (= e!1124283 (equivClasses!1308 (toChars!4831 (transformation!3453 (h!24730 rules!3447))) (toValue!4972 (transformation!3453 (h!24730 rules!3447)))))))

(assert (= (and d!536571 res!790363) b!1756637))

(declare-fun m!2171515 () Bool)

(assert (=> d!536571 m!2171515))

(declare-fun m!2171517 () Bool)

(assert (=> b!1756637 m!2171517))

(assert (=> b!1756538 d!536571))

(declare-fun d!536573 () Bool)

(assert (=> d!536573 (= (isEmpty!12190 lt!678575) ((_ is Nil!19328) lt!678575))))

(assert (=> b!1756529 d!536573))

(declare-fun d!536575 () Bool)

(assert (=> d!536575 (= (isEmpty!12190 suffix!1421) ((_ is Nil!19328) suffix!1421))))

(assert (=> b!1756530 d!536575))

(declare-fun d!536577 () Bool)

(declare-fun isEmpty!12194 (Option!3929) Bool)

(assert (=> d!536577 (= (isDefined!3271 lt!678572) (not (isEmpty!12194 lt!678572)))))

(declare-fun bs!403848 () Bool)

(assert (= bs!403848 d!536577))

(declare-fun m!2171519 () Bool)

(assert (=> bs!403848 m!2171519))

(assert (=> b!1756532 d!536577))

(declare-fun bm!110557 () Bool)

(declare-fun call!110562 () Option!3929)

(declare-fun maxPrefixOneRule!1005 (LexerInterface!3082 Rule!6706 List!19398) Option!3929)

(assert (=> bm!110557 (= call!110562 (maxPrefixOneRule!1005 thiss!24550 (h!24730 rules!3447) lt!678573))))

(declare-fun d!536579 () Bool)

(declare-fun e!1124298 () Bool)

(assert (=> d!536579 e!1124298))

(declare-fun res!790388 () Bool)

(assert (=> d!536579 (=> res!790388 e!1124298)))

(declare-fun lt!678666 () Option!3929)

(assert (=> d!536579 (= res!790388 (isEmpty!12194 lt!678666))))

(declare-fun e!1124296 () Option!3929)

(assert (=> d!536579 (= lt!678666 e!1124296)))

(declare-fun c!286316 () Bool)

(assert (=> d!536579 (= c!286316 (and ((_ is Cons!19329) rules!3447) ((_ is Nil!19329) (t!163562 rules!3447))))))

(declare-fun lt!678665 () Unit!33493)

(declare-fun lt!678667 () Unit!33493)

(assert (=> d!536579 (= lt!678665 lt!678667)))

(assert (=> d!536579 (isPrefix!1693 lt!678573 lt!678573)))

(declare-fun lemmaIsPrefixRefl!1120 (List!19398 List!19398) Unit!33493)

(assert (=> d!536579 (= lt!678667 (lemmaIsPrefixRefl!1120 lt!678573 lt!678573))))

(declare-fun rulesValidInductive!1158 (LexerInterface!3082 List!19399) Bool)

(assert (=> d!536579 (rulesValidInductive!1158 thiss!24550 rules!3447)))

(assert (=> d!536579 (= (maxPrefix!1636 thiss!24550 rules!3447 lt!678573) lt!678666)))

(declare-fun b!1756668 () Bool)

(declare-fun lt!678668 () Option!3929)

(declare-fun lt!678664 () Option!3929)

(assert (=> b!1756668 (= e!1124296 (ite (and ((_ is None!3928) lt!678668) ((_ is None!3928) lt!678664)) None!3928 (ite ((_ is None!3928) lt!678664) lt!678668 (ite ((_ is None!3928) lt!678668) lt!678664 (ite (>= (size!15354 (_1!10875 (v!25381 lt!678668))) (size!15354 (_1!10875 (v!25381 lt!678664)))) lt!678668 lt!678664)))))))

(assert (=> b!1756668 (= lt!678668 call!110562)))

(assert (=> b!1756668 (= lt!678664 (maxPrefix!1636 thiss!24550 (t!163562 rules!3447) lt!678573))))

(declare-fun b!1756669 () Bool)

(assert (=> b!1756669 (= e!1124296 call!110562)))

(declare-fun b!1756670 () Bool)

(declare-fun e!1124297 () Bool)

(assert (=> b!1756670 (= e!1124297 (contains!3481 rules!3447 (rule!5467 (_1!10875 (get!5873 lt!678666)))))))

(declare-fun b!1756671 () Bool)

(declare-fun res!790387 () Bool)

(assert (=> b!1756671 (=> (not res!790387) (not e!1124297))))

(assert (=> b!1756671 (= res!790387 (< (size!15357 (_2!10875 (get!5873 lt!678666))) (size!15357 lt!678573)))))

(declare-fun b!1756672 () Bool)

(declare-fun res!790384 () Bool)

(assert (=> b!1756672 (=> (not res!790384) (not e!1124297))))

(assert (=> b!1756672 (= res!790384 (matchR!2254 (regex!3453 (rule!5467 (_1!10875 (get!5873 lt!678666)))) (list!7835 (charsOf!2102 (_1!10875 (get!5873 lt!678666))))))))

(declare-fun b!1756673 () Bool)

(declare-fun res!790389 () Bool)

(assert (=> b!1756673 (=> (not res!790389) (not e!1124297))))

(assert (=> b!1756673 (= res!790389 (= (++!5277 (list!7835 (charsOf!2102 (_1!10875 (get!5873 lt!678666)))) (_2!10875 (get!5873 lt!678666))) lt!678573))))

(declare-fun b!1756674 () Bool)

(declare-fun res!790385 () Bool)

(assert (=> b!1756674 (=> (not res!790385) (not e!1124297))))

(assert (=> b!1756674 (= res!790385 (= (list!7835 (charsOf!2102 (_1!10875 (get!5873 lt!678666)))) (originalCharacters!4267 (_1!10875 (get!5873 lt!678666)))))))

(declare-fun b!1756675 () Bool)

(assert (=> b!1756675 (= e!1124298 e!1124297)))

(declare-fun res!790386 () Bool)

(assert (=> b!1756675 (=> (not res!790386) (not e!1124297))))

(assert (=> b!1756675 (= res!790386 (isDefined!3271 lt!678666))))

(declare-fun b!1756676 () Bool)

(declare-fun res!790390 () Bool)

(assert (=> b!1756676 (=> (not res!790390) (not e!1124297))))

(assert (=> b!1756676 (= res!790390 (= (value!108083 (_1!10875 (get!5873 lt!678666))) (apply!5253 (transformation!3453 (rule!5467 (_1!10875 (get!5873 lt!678666)))) (seqFromList!2422 (originalCharacters!4267 (_1!10875 (get!5873 lt!678666)))))))))

(assert (= (and d!536579 c!286316) b!1756669))

(assert (= (and d!536579 (not c!286316)) b!1756668))

(assert (= (or b!1756669 b!1756668) bm!110557))

(assert (= (and d!536579 (not res!790388)) b!1756675))

(assert (= (and b!1756675 res!790386) b!1756674))

(assert (= (and b!1756674 res!790385) b!1756671))

(assert (= (and b!1756671 res!790387) b!1756673))

(assert (= (and b!1756673 res!790389) b!1756676))

(assert (= (and b!1756676 res!790390) b!1756672))

(assert (= (and b!1756672 res!790384) b!1756670))

(declare-fun m!2171571 () Bool)

(assert (=> bm!110557 m!2171571))

(declare-fun m!2171573 () Bool)

(assert (=> b!1756673 m!2171573))

(declare-fun m!2171575 () Bool)

(assert (=> b!1756673 m!2171575))

(assert (=> b!1756673 m!2171575))

(declare-fun m!2171577 () Bool)

(assert (=> b!1756673 m!2171577))

(assert (=> b!1756673 m!2171577))

(declare-fun m!2171579 () Bool)

(assert (=> b!1756673 m!2171579))

(declare-fun m!2171581 () Bool)

(assert (=> b!1756668 m!2171581))

(assert (=> b!1756676 m!2171573))

(declare-fun m!2171583 () Bool)

(assert (=> b!1756676 m!2171583))

(assert (=> b!1756676 m!2171583))

(declare-fun m!2171585 () Bool)

(assert (=> b!1756676 m!2171585))

(declare-fun m!2171587 () Bool)

(assert (=> d!536579 m!2171587))

(declare-fun m!2171589 () Bool)

(assert (=> d!536579 m!2171589))

(declare-fun m!2171591 () Bool)

(assert (=> d!536579 m!2171591))

(declare-fun m!2171593 () Bool)

(assert (=> d!536579 m!2171593))

(assert (=> b!1756670 m!2171573))

(declare-fun m!2171595 () Bool)

(assert (=> b!1756670 m!2171595))

(assert (=> b!1756672 m!2171573))

(assert (=> b!1756672 m!2171575))

(assert (=> b!1756672 m!2171575))

(assert (=> b!1756672 m!2171577))

(assert (=> b!1756672 m!2171577))

(declare-fun m!2171597 () Bool)

(assert (=> b!1756672 m!2171597))

(assert (=> b!1756671 m!2171573))

(declare-fun m!2171599 () Bool)

(assert (=> b!1756671 m!2171599))

(declare-fun m!2171601 () Bool)

(assert (=> b!1756671 m!2171601))

(assert (=> b!1756674 m!2171573))

(assert (=> b!1756674 m!2171575))

(assert (=> b!1756674 m!2171575))

(assert (=> b!1756674 m!2171577))

(declare-fun m!2171603 () Bool)

(assert (=> b!1756675 m!2171603))

(assert (=> b!1756532 d!536579))

(declare-fun d!536583 () Bool)

(declare-fun list!7838 (Conc!6429) List!19398)

(assert (=> d!536583 (= (list!7835 (charsOf!2102 token!523)) (list!7838 (c!286301 (charsOf!2102 token!523))))))

(declare-fun bs!403849 () Bool)

(assert (= bs!403849 d!536583))

(declare-fun m!2171625 () Bool)

(assert (=> bs!403849 m!2171625))

(assert (=> b!1756532 d!536583))

(declare-fun d!536589 () Bool)

(declare-fun lt!678681 () BalanceConc!12802)

(assert (=> d!536589 (= (list!7835 lt!678681) (originalCharacters!4267 token!523))))

(assert (=> d!536589 (= lt!678681 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 token!523))) (value!108083 token!523)))))

(assert (=> d!536589 (= (charsOf!2102 token!523) lt!678681)))

(declare-fun b_lambda!56669 () Bool)

(assert (=> (not b_lambda!56669) (not d!536589)))

(assert (=> d!536589 t!163564))

(declare-fun b_and!132001 () Bool)

(assert (= b_and!131977 (and (=> t!163564 result!127024) b_and!132001)))

(assert (=> d!536589 t!163566))

(declare-fun b_and!132003 () Bool)

(assert (= b_and!131979 (and (=> t!163566 result!127026) b_and!132003)))

(assert (=> d!536589 t!163568))

(declare-fun b_and!132005 () Bool)

(assert (= b_and!131981 (and (=> t!163568 result!127028) b_and!132005)))

(declare-fun m!2171627 () Bool)

(assert (=> d!536589 m!2171627))

(assert (=> d!536589 m!2171463))

(assert (=> b!1756532 d!536589))

(declare-fun d!536591 () Bool)

(assert (=> d!536591 (= (isEmpty!12191 rules!3447) ((_ is Nil!19329) rules!3447))))

(assert (=> b!1756531 d!536591))

(declare-fun d!536593 () Bool)

(assert (=> d!536593 (= (inv!25085 (tag!3811 (rule!5467 token!523))) (= (mod (str.len (value!108082 (tag!3811 (rule!5467 token!523)))) 2) 0))))

(assert (=> b!1756524 d!536593))

(declare-fun d!536595 () Bool)

(declare-fun res!790405 () Bool)

(declare-fun e!1124318 () Bool)

(assert (=> d!536595 (=> (not res!790405) (not e!1124318))))

(assert (=> d!536595 (= res!790405 (semiInverseModEq!1367 (toChars!4831 (transformation!3453 (rule!5467 token!523))) (toValue!4972 (transformation!3453 (rule!5467 token!523)))))))

(assert (=> d!536595 (= (inv!25090 (transformation!3453 (rule!5467 token!523))) e!1124318)))

(declare-fun b!1756707 () Bool)

(assert (=> b!1756707 (= e!1124318 (equivClasses!1308 (toChars!4831 (transformation!3453 (rule!5467 token!523))) (toValue!4972 (transformation!3453 (rule!5467 token!523)))))))

(assert (= (and d!536595 res!790405) b!1756707))

(declare-fun m!2171629 () Bool)

(assert (=> d!536595 m!2171629))

(declare-fun m!2171631 () Bool)

(assert (=> b!1756707 m!2171631))

(assert (=> b!1756524 d!536595))

(declare-fun d!536597 () Bool)

(declare-fun choose!10859 (Int) Bool)

(assert (=> d!536597 (= (Forall!820 lambda!70028) (choose!10859 lambda!70028))))

(declare-fun bs!403850 () Bool)

(assert (= bs!403850 d!536597))

(declare-fun m!2171633 () Bool)

(assert (=> bs!403850 m!2171633))

(assert (=> b!1756545 d!536597))

(declare-fun d!536599 () Bool)

(declare-fun e!1124323 () Bool)

(assert (=> d!536599 e!1124323))

(declare-fun res!790410 () Bool)

(assert (=> d!536599 (=> (not res!790410) (not e!1124323))))

(assert (=> d!536599 (= res!790410 (semiInverseModEq!1367 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))))))

(declare-fun Unit!33498 () Unit!33493)

(assert (=> d!536599 (= (lemmaInv!652 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) Unit!33498)))

(declare-fun b!1756714 () Bool)

(assert (=> b!1756714 (= e!1124323 (equivClasses!1308 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))))))

(assert (= (and d!536599 res!790410) b!1756714))

(declare-fun m!2171647 () Bool)

(assert (=> d!536599 m!2171647))

(declare-fun m!2171649 () Bool)

(assert (=> b!1756714 m!2171649))

(assert (=> b!1756545 d!536599))

(declare-fun d!536603 () Bool)

(declare-fun isBalanced!2005 (Conc!6429) Bool)

(assert (=> d!536603 (= (inv!25093 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586))) (isBalanced!2005 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586)))))))

(declare-fun bs!403851 () Bool)

(assert (= bs!403851 d!536603))

(declare-fun m!2171653 () Bool)

(assert (=> bs!403851 m!2171653))

(assert (=> tb!105567 d!536603))

(declare-fun b!1756715 () Bool)

(declare-fun res!790414 () Bool)

(declare-fun e!1124328 () Bool)

(assert (=> b!1756715 (=> res!790414 e!1124328)))

(declare-fun e!1124330 () Bool)

(assert (=> b!1756715 (= res!790414 e!1124330)))

(declare-fun res!790418 () Bool)

(assert (=> b!1756715 (=> (not res!790418) (not e!1124330))))

(declare-fun lt!678690 () Bool)

(assert (=> b!1756715 (= res!790418 lt!678690)))

(declare-fun b!1756716 () Bool)

(declare-fun res!790416 () Bool)

(declare-fun e!1124327 () Bool)

(assert (=> b!1756716 (=> res!790416 e!1124327)))

(assert (=> b!1756716 (= res!790416 (not (isEmpty!12190 (tail!2625 lt!678573))))))

(declare-fun b!1756717 () Bool)

(assert (=> b!1756717 (= e!1124327 (not (= (head!4058 lt!678573) (c!286300 (regex!3453 rule!422)))))))

(declare-fun b!1756718 () Bool)

(declare-fun res!790412 () Bool)

(assert (=> b!1756718 (=> (not res!790412) (not e!1124330))))

(assert (=> b!1756718 (= res!790412 (isEmpty!12190 (tail!2625 lt!678573)))))

(declare-fun b!1756719 () Bool)

(declare-fun res!790417 () Bool)

(assert (=> b!1756719 (=> (not res!790417) (not e!1124330))))

(declare-fun call!110563 () Bool)

(assert (=> b!1756719 (= res!790417 (not call!110563))))

(declare-fun b!1756720 () Bool)

(assert (=> b!1756720 (= e!1124330 (= (head!4058 lt!678573) (c!286300 (regex!3453 rule!422))))))

(declare-fun d!536607 () Bool)

(declare-fun e!1124325 () Bool)

(assert (=> d!536607 e!1124325))

(declare-fun c!286328 () Bool)

(assert (=> d!536607 (= c!286328 ((_ is EmptyExpr!4781) (regex!3453 rule!422)))))

(declare-fun e!1124329 () Bool)

(assert (=> d!536607 (= lt!678690 e!1124329)))

(declare-fun c!286326 () Bool)

(assert (=> d!536607 (= c!286326 (isEmpty!12190 lt!678573))))

(assert (=> d!536607 (validRegex!1926 (regex!3453 rule!422))))

(assert (=> d!536607 (= (matchR!2254 (regex!3453 rule!422) lt!678573) lt!678690)))

(declare-fun b!1756721 () Bool)

(assert (=> b!1756721 (= e!1124329 (nullable!1452 (regex!3453 rule!422)))))

(declare-fun b!1756722 () Bool)

(declare-fun e!1124324 () Bool)

(assert (=> b!1756722 (= e!1124325 e!1124324)))

(declare-fun c!286327 () Bool)

(assert (=> b!1756722 (= c!286327 ((_ is EmptyLang!4781) (regex!3453 rule!422)))))

(declare-fun bm!110558 () Bool)

(assert (=> bm!110558 (= call!110563 (isEmpty!12190 lt!678573))))

(declare-fun b!1756723 () Bool)

(assert (=> b!1756723 (= e!1124324 (not lt!678690))))

(declare-fun b!1756724 () Bool)

(declare-fun e!1124326 () Bool)

(assert (=> b!1756724 (= e!1124328 e!1124326)))

(declare-fun res!790411 () Bool)

(assert (=> b!1756724 (=> (not res!790411) (not e!1124326))))

(assert (=> b!1756724 (= res!790411 (not lt!678690))))

(declare-fun b!1756725 () Bool)

(assert (=> b!1756725 (= e!1124326 e!1124327)))

(declare-fun res!790415 () Bool)

(assert (=> b!1756725 (=> res!790415 e!1124327)))

(assert (=> b!1756725 (= res!790415 call!110563)))

(declare-fun b!1756726 () Bool)

(assert (=> b!1756726 (= e!1124325 (= lt!678690 call!110563))))

(declare-fun b!1756727 () Bool)

(assert (=> b!1756727 (= e!1124329 (matchR!2254 (derivativeStep!1221 (regex!3453 rule!422) (head!4058 lt!678573)) (tail!2625 lt!678573)))))

(declare-fun b!1756728 () Bool)

(declare-fun res!790413 () Bool)

(assert (=> b!1756728 (=> res!790413 e!1124328)))

(assert (=> b!1756728 (= res!790413 (not ((_ is ElementMatch!4781) (regex!3453 rule!422))))))

(assert (=> b!1756728 (= e!1124324 e!1124328)))

(assert (= (and d!536607 c!286326) b!1756721))

(assert (= (and d!536607 (not c!286326)) b!1756727))

(assert (= (and d!536607 c!286328) b!1756726))

(assert (= (and d!536607 (not c!286328)) b!1756722))

(assert (= (and b!1756722 c!286327) b!1756723))

(assert (= (and b!1756722 (not c!286327)) b!1756728))

(assert (= (and b!1756728 (not res!790413)) b!1756715))

(assert (= (and b!1756715 res!790418) b!1756719))

(assert (= (and b!1756719 res!790417) b!1756718))

(assert (= (and b!1756718 res!790412) b!1756720))

(assert (= (and b!1756715 (not res!790414)) b!1756724))

(assert (= (and b!1756724 res!790411) b!1756725))

(assert (= (and b!1756725 (not res!790415)) b!1756716))

(assert (= (and b!1756716 (not res!790416)) b!1756717))

(assert (= (or b!1756726 b!1756725 b!1756719) bm!110558))

(declare-fun m!2171667 () Bool)

(assert (=> b!1756727 m!2171667))

(assert (=> b!1756727 m!2171667))

(declare-fun m!2171669 () Bool)

(assert (=> b!1756727 m!2171669))

(declare-fun m!2171671 () Bool)

(assert (=> b!1756727 m!2171671))

(assert (=> b!1756727 m!2171669))

(assert (=> b!1756727 m!2171671))

(declare-fun m!2171673 () Bool)

(assert (=> b!1756727 m!2171673))

(assert (=> b!1756716 m!2171671))

(assert (=> b!1756716 m!2171671))

(declare-fun m!2171675 () Bool)

(assert (=> b!1756716 m!2171675))

(declare-fun m!2171677 () Bool)

(assert (=> bm!110558 m!2171677))

(assert (=> b!1756717 m!2171667))

(assert (=> b!1756718 m!2171671))

(assert (=> b!1756718 m!2171671))

(assert (=> b!1756718 m!2171675))

(assert (=> d!536607 m!2171677))

(declare-fun m!2171679 () Bool)

(assert (=> d!536607 m!2171679))

(declare-fun m!2171681 () Bool)

(assert (=> b!1756721 m!2171681))

(assert (=> b!1756720 m!2171667))

(assert (=> b!1756523 d!536607))

(declare-fun d!536613 () Bool)

(declare-fun res!790427 () Bool)

(declare-fun e!1124336 () Bool)

(assert (=> d!536613 (=> (not res!790427) (not e!1124336))))

(assert (=> d!536613 (= res!790427 (validRegex!1926 (regex!3453 rule!422)))))

(assert (=> d!536613 (= (ruleValid!951 thiss!24550 rule!422) e!1124336)))

(declare-fun b!1756737 () Bool)

(declare-fun res!790428 () Bool)

(assert (=> b!1756737 (=> (not res!790428) (not e!1124336))))

(assert (=> b!1756737 (= res!790428 (not (nullable!1452 (regex!3453 rule!422))))))

(declare-fun b!1756738 () Bool)

(assert (=> b!1756738 (= e!1124336 (not (= (tag!3811 rule!422) (String!22048 ""))))))

(assert (= (and d!536613 res!790427) b!1756737))

(assert (= (and b!1756737 res!790428) b!1756738))

(assert (=> d!536613 m!2171679))

(assert (=> b!1756737 m!2171681))

(assert (=> b!1756523 d!536613))

(declare-fun d!536619 () Bool)

(assert (=> d!536619 (ruleValid!951 thiss!24550 rule!422)))

(declare-fun lt!678695 () Unit!33493)

(declare-fun choose!10860 (LexerInterface!3082 Rule!6706 List!19399) Unit!33493)

(assert (=> d!536619 (= lt!678695 (choose!10860 thiss!24550 rule!422 rules!3447))))

(assert (=> d!536619 (contains!3481 rules!3447 rule!422)))

(assert (=> d!536619 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!474 thiss!24550 rule!422 rules!3447) lt!678695)))

(declare-fun bs!403854 () Bool)

(assert (= bs!403854 d!536619))

(assert (=> bs!403854 m!2171343))

(declare-fun m!2171685 () Bool)

(assert (=> bs!403854 m!2171685))

(assert (=> bs!403854 m!2171367))

(assert (=> b!1756523 d!536619))

(declare-fun d!536621 () Bool)

(declare-fun lt!678698 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2783 (List!19399) (InoxSet Rule!6706))

(assert (=> d!536621 (= lt!678698 (select (content!2783 rules!3447) (rule!5467 (_1!10875 lt!678588))))))

(declare-fun e!1124341 () Bool)

(assert (=> d!536621 (= lt!678698 e!1124341)))

(declare-fun res!790433 () Bool)

(assert (=> d!536621 (=> (not res!790433) (not e!1124341))))

(assert (=> d!536621 (= res!790433 ((_ is Cons!19329) rules!3447))))

(assert (=> d!536621 (= (contains!3481 rules!3447 (rule!5467 (_1!10875 lt!678588))) lt!678698)))

(declare-fun b!1756743 () Bool)

(declare-fun e!1124342 () Bool)

(assert (=> b!1756743 (= e!1124341 e!1124342)))

(declare-fun res!790434 () Bool)

(assert (=> b!1756743 (=> res!790434 e!1124342)))

(assert (=> b!1756743 (= res!790434 (= (h!24730 rules!3447) (rule!5467 (_1!10875 lt!678588))))))

(declare-fun b!1756744 () Bool)

(assert (=> b!1756744 (= e!1124342 (contains!3481 (t!163562 rules!3447) (rule!5467 (_1!10875 lt!678588))))))

(assert (= (and d!536621 res!790433) b!1756743))

(assert (= (and b!1756743 (not res!790434)) b!1756744))

(declare-fun m!2171687 () Bool)

(assert (=> d!536621 m!2171687))

(declare-fun m!2171689 () Bool)

(assert (=> d!536621 m!2171689))

(declare-fun m!2171691 () Bool)

(assert (=> b!1756744 m!2171691))

(assert (=> b!1756525 d!536621))

(declare-fun d!536623 () Bool)

(declare-fun c!286331 () Bool)

(assert (=> d!536623 (= c!286331 ((_ is Node!6429) (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588))))))))

(declare-fun e!1124347 () Bool)

(assert (=> d!536623 (= (inv!25092 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588))))) e!1124347)))

(declare-fun b!1756751 () Bool)

(declare-fun inv!25096 (Conc!6429) Bool)

(assert (=> b!1756751 (= e!1124347 (inv!25096 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588))))))))

(declare-fun b!1756752 () Bool)

(declare-fun e!1124348 () Bool)

(assert (=> b!1756752 (= e!1124347 e!1124348)))

(declare-fun res!790437 () Bool)

(assert (=> b!1756752 (= res!790437 (not ((_ is Leaf!9376) (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588)))))))))

(assert (=> b!1756752 (=> res!790437 e!1124348)))

(declare-fun b!1756753 () Bool)

(declare-fun inv!25097 (Conc!6429) Bool)

(assert (=> b!1756753 (= e!1124348 (inv!25097 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588))))))))

(assert (= (and d!536623 c!286331) b!1756751))

(assert (= (and d!536623 (not c!286331)) b!1756752))

(assert (= (and b!1756752 (not res!790437)) b!1756753))

(declare-fun m!2171693 () Bool)

(assert (=> b!1756751 m!2171693))

(declare-fun m!2171695 () Bool)

(assert (=> b!1756753 m!2171695))

(assert (=> b!1756566 d!536623))

(declare-fun d!536625 () Bool)

(declare-fun isEmpty!12195 (Option!3928) Bool)

(assert (=> d!536625 (= (isDefined!3272 lt!678585) (not (isEmpty!12195 lt!678585)))))

(declare-fun bs!403855 () Bool)

(assert (= bs!403855 d!536625))

(declare-fun m!2171697 () Bool)

(assert (=> bs!403855 m!2171697))

(assert (=> b!1756546 d!536625))

(declare-fun d!536627 () Bool)

(assert (=> d!536627 (isPrefix!1693 lt!678573 (++!5277 lt!678573 suffix!1421))))

(declare-fun lt!678701 () Unit!33493)

(declare-fun choose!10861 (List!19398 List!19398) Unit!33493)

(assert (=> d!536627 (= lt!678701 (choose!10861 lt!678573 suffix!1421))))

(assert (=> d!536627 (= (lemmaConcatTwoListThenFirstIsPrefix!1202 lt!678573 suffix!1421) lt!678701)))

(declare-fun bs!403856 () Bool)

(assert (= bs!403856 d!536627))

(assert (=> bs!403856 m!2171443))

(assert (=> bs!403856 m!2171443))

(declare-fun m!2171699 () Bool)

(assert (=> bs!403856 m!2171699))

(declare-fun m!2171701 () Bool)

(assert (=> bs!403856 m!2171701))

(assert (=> b!1756546 d!536627))

(declare-fun d!536629 () Bool)

(declare-fun e!1124351 () Bool)

(assert (=> d!536629 e!1124351))

(declare-fun res!790442 () Bool)

(assert (=> d!536629 (=> (not res!790442) (not e!1124351))))

(assert (=> d!536629 (= res!790442 (isDefined!3272 (getRuleFromTag!501 thiss!24550 rules!3447 (tag!3811 (rule!5467 (_1!10875 lt!678588))))))))

(declare-fun lt!678704 () Unit!33493)

(declare-fun choose!10862 (LexerInterface!3082 List!19399 List!19398 Token!6472) Unit!33493)

(assert (=> d!536629 (= lt!678704 (choose!10862 thiss!24550 rules!3447 lt!678589 (_1!10875 lt!678588)))))

(assert (=> d!536629 (rulesInvariant!2751 thiss!24550 rules!3447)))

(assert (=> d!536629 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!501 thiss!24550 rules!3447 lt!678589 (_1!10875 lt!678588)) lt!678704)))

(declare-fun b!1756758 () Bool)

(declare-fun res!790443 () Bool)

(assert (=> b!1756758 (=> (not res!790443) (not e!1124351))))

(assert (=> b!1756758 (= res!790443 (matchR!2254 (regex!3453 (get!5872 (getRuleFromTag!501 thiss!24550 rules!3447 (tag!3811 (rule!5467 (_1!10875 lt!678588)))))) (list!7835 (charsOf!2102 (_1!10875 lt!678588)))))))

(declare-fun b!1756759 () Bool)

(assert (=> b!1756759 (= e!1124351 (= (rule!5467 (_1!10875 lt!678588)) (get!5872 (getRuleFromTag!501 thiss!24550 rules!3447 (tag!3811 (rule!5467 (_1!10875 lt!678588)))))))))

(assert (= (and d!536629 res!790442) b!1756758))

(assert (= (and b!1756758 res!790443) b!1756759))

(assert (=> d!536629 m!2171425))

(assert (=> d!536629 m!2171425))

(declare-fun m!2171703 () Bool)

(assert (=> d!536629 m!2171703))

(declare-fun m!2171705 () Bool)

(assert (=> d!536629 m!2171705))

(assert (=> d!536629 m!2171419))

(assert (=> b!1756758 m!2171425))

(declare-fun m!2171707 () Bool)

(assert (=> b!1756758 m!2171707))

(assert (=> b!1756758 m!2171377))

(assert (=> b!1756758 m!2171379))

(assert (=> b!1756758 m!2171425))

(assert (=> b!1756758 m!2171377))

(assert (=> b!1756758 m!2171379))

(declare-fun m!2171709 () Bool)

(assert (=> b!1756758 m!2171709))

(assert (=> b!1756759 m!2171425))

(assert (=> b!1756759 m!2171425))

(assert (=> b!1756759 m!2171707))

(assert (=> b!1756546 d!536629))

(declare-fun b!1756786 () Bool)

(declare-fun e!1124362 () List!19398)

(assert (=> b!1756786 (= e!1124362 suffix!1421)))

(declare-fun b!1756787 () Bool)

(assert (=> b!1756787 (= e!1124362 (Cons!19328 (h!24729 lt!678573) (++!5277 (t!163561 lt!678573) suffix!1421)))))

(declare-fun d!536631 () Bool)

(declare-fun e!1124363 () Bool)

(assert (=> d!536631 e!1124363))

(declare-fun res!790462 () Bool)

(assert (=> d!536631 (=> (not res!790462) (not e!1124363))))

(declare-fun lt!678717 () List!19398)

(declare-fun content!2784 (List!19398) (InoxSet C!9736))

(assert (=> d!536631 (= res!790462 (= (content!2784 lt!678717) ((_ map or) (content!2784 lt!678573) (content!2784 suffix!1421))))))

(assert (=> d!536631 (= lt!678717 e!1124362)))

(declare-fun c!286336 () Bool)

(assert (=> d!536631 (= c!286336 ((_ is Nil!19328) lt!678573))))

(assert (=> d!536631 (= (++!5277 lt!678573 suffix!1421) lt!678717)))

(declare-fun b!1756789 () Bool)

(assert (=> b!1756789 (= e!1124363 (or (not (= suffix!1421 Nil!19328)) (= lt!678717 lt!678573)))))

(declare-fun b!1756788 () Bool)

(declare-fun res!790463 () Bool)

(assert (=> b!1756788 (=> (not res!790463) (not e!1124363))))

(assert (=> b!1756788 (= res!790463 (= (size!15357 lt!678717) (+ (size!15357 lt!678573) (size!15357 suffix!1421))))))

(assert (= (and d!536631 c!286336) b!1756786))

(assert (= (and d!536631 (not c!286336)) b!1756787))

(assert (= (and d!536631 res!790462) b!1756788))

(assert (= (and b!1756788 res!790463) b!1756789))

(declare-fun m!2171711 () Bool)

(assert (=> b!1756787 m!2171711))

(declare-fun m!2171713 () Bool)

(assert (=> d!536631 m!2171713))

(declare-fun m!2171715 () Bool)

(assert (=> d!536631 m!2171715))

(declare-fun m!2171717 () Bool)

(assert (=> d!536631 m!2171717))

(declare-fun m!2171719 () Bool)

(assert (=> b!1756788 m!2171719))

(assert (=> b!1756788 m!2171601))

(declare-fun m!2171721 () Bool)

(assert (=> b!1756788 m!2171721))

(assert (=> b!1756546 d!536631))

(declare-fun d!536633 () Bool)

(assert (=> d!536633 (= (get!5873 lt!678581) (v!25381 lt!678581))))

(assert (=> b!1756546 d!536633))

(declare-fun d!536635 () Bool)

(assert (=> d!536635 (isPrefix!1693 lt!678575 (++!5277 lt!678575 (_2!10875 lt!678588)))))

(declare-fun lt!678718 () Unit!33493)

(assert (=> d!536635 (= lt!678718 (choose!10861 lt!678575 (_2!10875 lt!678588)))))

(assert (=> d!536635 (= (lemmaConcatTwoListThenFirstIsPrefix!1202 lt!678575 (_2!10875 lt!678588)) lt!678718)))

(declare-fun bs!403857 () Bool)

(assert (= bs!403857 d!536635))

(assert (=> bs!403857 m!2171441))

(assert (=> bs!403857 m!2171441))

(declare-fun m!2171723 () Bool)

(assert (=> bs!403857 m!2171723))

(declare-fun m!2171725 () Bool)

(assert (=> bs!403857 m!2171725))

(assert (=> b!1756546 d!536635))

(declare-fun d!536637 () Bool)

(assert (=> d!536637 (= (list!7835 lt!678586) (list!7838 (c!286301 lt!678586)))))

(declare-fun bs!403858 () Bool)

(assert (= bs!403858 d!536637))

(declare-fun m!2171727 () Bool)

(assert (=> bs!403858 m!2171727))

(assert (=> b!1756546 d!536637))

(declare-fun b!1756807 () Bool)

(declare-fun e!1124374 () Bool)

(declare-fun e!1124375 () Bool)

(assert (=> b!1756807 (= e!1124374 e!1124375)))

(declare-fun res!790481 () Bool)

(assert (=> b!1756807 (=> (not res!790481) (not e!1124375))))

(assert (=> b!1756807 (= res!790481 (not ((_ is Nil!19328) lt!678589)))))

(declare-fun b!1756808 () Bool)

(declare-fun res!790482 () Bool)

(assert (=> b!1756808 (=> (not res!790482) (not e!1124375))))

(assert (=> b!1756808 (= res!790482 (= (head!4058 lt!678573) (head!4058 lt!678589)))))

(declare-fun b!1756809 () Bool)

(assert (=> b!1756809 (= e!1124375 (isPrefix!1693 (tail!2625 lt!678573) (tail!2625 lt!678589)))))

(declare-fun d!536639 () Bool)

(declare-fun e!1124373 () Bool)

(assert (=> d!536639 e!1124373))

(declare-fun res!790479 () Bool)

(assert (=> d!536639 (=> res!790479 e!1124373)))

(declare-fun lt!678726 () Bool)

(assert (=> d!536639 (= res!790479 (not lt!678726))))

(assert (=> d!536639 (= lt!678726 e!1124374)))

(declare-fun res!790480 () Bool)

(assert (=> d!536639 (=> res!790480 e!1124374)))

(assert (=> d!536639 (= res!790480 ((_ is Nil!19328) lt!678573))))

(assert (=> d!536639 (= (isPrefix!1693 lt!678573 lt!678589) lt!678726)))

(declare-fun b!1756810 () Bool)

(assert (=> b!1756810 (= e!1124373 (>= (size!15357 lt!678589) (size!15357 lt!678573)))))

(assert (= (and d!536639 (not res!790480)) b!1756807))

(assert (= (and b!1756807 res!790481) b!1756808))

(assert (= (and b!1756808 res!790482) b!1756809))

(assert (= (and d!536639 (not res!790479)) b!1756810))

(assert (=> b!1756808 m!2171667))

(declare-fun m!2171761 () Bool)

(assert (=> b!1756808 m!2171761))

(assert (=> b!1756809 m!2171671))

(declare-fun m!2171763 () Bool)

(assert (=> b!1756809 m!2171763))

(assert (=> b!1756809 m!2171671))

(assert (=> b!1756809 m!2171763))

(declare-fun m!2171765 () Bool)

(assert (=> b!1756809 m!2171765))

(declare-fun m!2171767 () Bool)

(assert (=> b!1756810 m!2171767))

(assert (=> b!1756810 m!2171601))

(assert (=> b!1756546 d!536639))

(declare-fun b!1756811 () Bool)

(declare-fun e!1124377 () Bool)

(declare-fun e!1124378 () Bool)

(assert (=> b!1756811 (= e!1124377 e!1124378)))

(declare-fun res!790485 () Bool)

(assert (=> b!1756811 (=> (not res!790485) (not e!1124378))))

(assert (=> b!1756811 (= res!790485 (not ((_ is Nil!19328) lt!678578)))))

(declare-fun b!1756812 () Bool)

(declare-fun res!790486 () Bool)

(assert (=> b!1756812 (=> (not res!790486) (not e!1124378))))

(assert (=> b!1756812 (= res!790486 (= (head!4058 lt!678575) (head!4058 lt!678578)))))

(declare-fun b!1756813 () Bool)

(assert (=> b!1756813 (= e!1124378 (isPrefix!1693 (tail!2625 lt!678575) (tail!2625 lt!678578)))))

(declare-fun d!536643 () Bool)

(declare-fun e!1124376 () Bool)

(assert (=> d!536643 e!1124376))

(declare-fun res!790483 () Bool)

(assert (=> d!536643 (=> res!790483 e!1124376)))

(declare-fun lt!678727 () Bool)

(assert (=> d!536643 (= res!790483 (not lt!678727))))

(assert (=> d!536643 (= lt!678727 e!1124377)))

(declare-fun res!790484 () Bool)

(assert (=> d!536643 (=> res!790484 e!1124377)))

(assert (=> d!536643 (= res!790484 ((_ is Nil!19328) lt!678575))))

(assert (=> d!536643 (= (isPrefix!1693 lt!678575 lt!678578) lt!678727)))

(declare-fun b!1756814 () Bool)

(assert (=> b!1756814 (= e!1124376 (>= (size!15357 lt!678578) (size!15357 lt!678575)))))

(assert (= (and d!536643 (not res!790484)) b!1756811))

(assert (= (and b!1756811 res!790485) b!1756812))

(assert (= (and b!1756812 res!790486) b!1756813))

(assert (= (and d!536643 (not res!790483)) b!1756814))

(assert (=> b!1756812 m!2171501))

(declare-fun m!2171769 () Bool)

(assert (=> b!1756812 m!2171769))

(assert (=> b!1756813 m!2171505))

(declare-fun m!2171771 () Bool)

(assert (=> b!1756813 m!2171771))

(assert (=> b!1756813 m!2171505))

(assert (=> b!1756813 m!2171771))

(declare-fun m!2171773 () Bool)

(assert (=> b!1756813 m!2171773))

(declare-fun m!2171775 () Bool)

(assert (=> b!1756814 m!2171775))

(declare-fun m!2171777 () Bool)

(assert (=> b!1756814 m!2171777))

(assert (=> b!1756546 d!536643))

(declare-fun b!1757053 () Bool)

(declare-fun e!1124516 () Unit!33493)

(declare-fun Unit!33500 () Unit!33493)

(assert (=> b!1757053 (= e!1124516 Unit!33500)))

(declare-fun lt!678805 () List!19398)

(assert (=> b!1757053 (= lt!678805 (++!5277 lt!678573 suffix!1421))))

(declare-fun lt!678809 () Token!6472)

(declare-fun lt!678799 () Unit!33493)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!311 (LexerInterface!3082 Rule!6706 List!19399 List!19398) Unit!33493)

(assert (=> b!1757053 (= lt!678799 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!311 thiss!24550 (rule!5467 lt!678809) rules!3447 lt!678805))))

(assert (=> b!1757053 (isEmpty!12194 (maxPrefixOneRule!1005 thiss!24550 (rule!5467 lt!678809) lt!678805))))

(declare-fun lt!678804 () Unit!33493)

(assert (=> b!1757053 (= lt!678804 lt!678799)))

(declare-fun lt!678798 () List!19398)

(assert (=> b!1757053 (= lt!678798 (list!7835 (charsOf!2102 lt!678809)))))

(declare-fun lt!678814 () Unit!33493)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!307 (LexerInterface!3082 Rule!6706 List!19398 List!19398) Unit!33493)

(assert (=> b!1757053 (= lt!678814 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!307 thiss!24550 (rule!5467 lt!678809) lt!678798 (++!5277 lt!678573 suffix!1421)))))

(assert (=> b!1757053 (not (matchR!2254 (regex!3453 (rule!5467 lt!678809)) lt!678798))))

(declare-fun lt!678802 () Unit!33493)

(assert (=> b!1757053 (= lt!678802 lt!678814)))

(assert (=> b!1757053 false))

(declare-fun d!536645 () Bool)

(assert (=> d!536645 (isDefined!3271 (maxPrefix!1636 thiss!24550 rules!3447 (++!5277 lt!678573 suffix!1421)))))

(declare-fun lt!678807 () Unit!33493)

(assert (=> d!536645 (= lt!678807 e!1124516)))

(declare-fun c!286374 () Bool)

(assert (=> d!536645 (= c!286374 (isEmpty!12194 (maxPrefix!1636 thiss!24550 rules!3447 (++!5277 lt!678573 suffix!1421))))))

(declare-fun lt!678811 () Unit!33493)

(declare-fun lt!678810 () Unit!33493)

(assert (=> d!536645 (= lt!678811 lt!678810)))

(declare-fun e!1124515 () Bool)

(assert (=> d!536645 e!1124515))

(declare-fun res!790589 () Bool)

(assert (=> d!536645 (=> (not res!790589) (not e!1124515))))

(assert (=> d!536645 (= res!790589 (isDefined!3272 (getRuleFromTag!501 thiss!24550 rules!3447 (tag!3811 (rule!5467 lt!678809)))))))

(assert (=> d!536645 (= lt!678810 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!501 thiss!24550 rules!3447 lt!678573 lt!678809))))

(declare-fun lt!678801 () Unit!33493)

(declare-fun lt!678803 () Unit!33493)

(assert (=> d!536645 (= lt!678801 lt!678803)))

(declare-fun lt!678812 () List!19398)

(assert (=> d!536645 (isPrefix!1693 lt!678812 (++!5277 lt!678573 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!303 (List!19398 List!19398 List!19398) Unit!33493)

(assert (=> d!536645 (= lt!678803 (lemmaPrefixStaysPrefixWhenAddingToSuffix!303 lt!678812 lt!678573 suffix!1421))))

(assert (=> d!536645 (= lt!678812 (list!7835 (charsOf!2102 lt!678809)))))

(declare-fun lt!678813 () Unit!33493)

(declare-fun lt!678800 () Unit!33493)

(assert (=> d!536645 (= lt!678813 lt!678800)))

(declare-fun lt!678806 () List!19398)

(declare-fun lt!678808 () List!19398)

(assert (=> d!536645 (isPrefix!1693 lt!678806 (++!5277 lt!678806 lt!678808))))

(assert (=> d!536645 (= lt!678800 (lemmaConcatTwoListThenFirstIsPrefix!1202 lt!678806 lt!678808))))

(assert (=> d!536645 (= lt!678808 (_2!10875 (get!5873 (maxPrefix!1636 thiss!24550 rules!3447 lt!678573))))))

(assert (=> d!536645 (= lt!678806 (list!7835 (charsOf!2102 lt!678809)))))

(declare-datatypes ((List!19403 0))(
  ( (Nil!19333) (Cons!19333 (h!24734 Token!6472) (t!163610 List!19403)) )
))
(declare-fun head!4060 (List!19403) Token!6472)

(declare-datatypes ((IArray!12867 0))(
  ( (IArray!12868 (innerList!6491 List!19403)) )
))
(declare-datatypes ((Conc!6431 0))(
  ( (Node!6431 (left!15475 Conc!6431) (right!15805 Conc!6431) (csize!13092 Int) (cheight!6642 Int)) (Leaf!9378 (xs!9307 IArray!12867) (csize!13093 Int)) (Empty!6431) )
))
(declare-datatypes ((BalanceConc!12806 0))(
  ( (BalanceConc!12807 (c!286401 Conc!6431)) )
))
(declare-fun list!7839 (BalanceConc!12806) List!19403)

(declare-datatypes ((tuple2!18950 0))(
  ( (tuple2!18951 (_1!10877 BalanceConc!12806) (_2!10877 BalanceConc!12802)) )
))
(declare-fun lex!1442 (LexerInterface!3082 List!19399 BalanceConc!12802) tuple2!18950)

(assert (=> d!536645 (= lt!678809 (head!4060 (list!7839 (_1!10877 (lex!1442 thiss!24550 rules!3447 (seqFromList!2422 lt!678573))))))))

(assert (=> d!536645 (not (isEmpty!12191 rules!3447))))

(assert (=> d!536645 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!604 thiss!24550 rules!3447 lt!678573 suffix!1421) lt!678807)))

(declare-fun b!1757052 () Bool)

(assert (=> b!1757052 (= e!1124515 (= (rule!5467 lt!678809) (get!5872 (getRuleFromTag!501 thiss!24550 rules!3447 (tag!3811 (rule!5467 lt!678809))))))))

(declare-fun b!1757051 () Bool)

(declare-fun res!790590 () Bool)

(assert (=> b!1757051 (=> (not res!790590) (not e!1124515))))

(assert (=> b!1757051 (= res!790590 (matchR!2254 (regex!3453 (get!5872 (getRuleFromTag!501 thiss!24550 rules!3447 (tag!3811 (rule!5467 lt!678809))))) (list!7835 (charsOf!2102 lt!678809))))))

(declare-fun b!1757054 () Bool)

(declare-fun Unit!33501 () Unit!33493)

(assert (=> b!1757054 (= e!1124516 Unit!33501)))

(assert (= (and d!536645 res!790589) b!1757051))

(assert (= (and b!1757051 res!790590) b!1757052))

(assert (= (and d!536645 c!286374) b!1757053))

(assert (= (and d!536645 (not c!286374)) b!1757054))

(assert (=> b!1757053 m!2171443))

(declare-fun m!2172013 () Bool)

(assert (=> b!1757053 m!2172013))

(declare-fun m!2172015 () Bool)

(assert (=> b!1757053 m!2172015))

(declare-fun m!2172017 () Bool)

(assert (=> b!1757053 m!2172017))

(declare-fun m!2172019 () Bool)

(assert (=> b!1757053 m!2172019))

(assert (=> b!1757053 m!2172017))

(declare-fun m!2172021 () Bool)

(assert (=> b!1757053 m!2172021))

(assert (=> b!1757053 m!2172013))

(declare-fun m!2172023 () Bool)

(assert (=> b!1757053 m!2172023))

(assert (=> b!1757053 m!2171443))

(declare-fun m!2172025 () Bool)

(assert (=> b!1757053 m!2172025))

(assert (=> d!536645 m!2171443))

(declare-fun m!2172027 () Bool)

(assert (=> d!536645 m!2172027))

(declare-fun m!2172029 () Bool)

(assert (=> d!536645 m!2172029))

(declare-fun m!2172031 () Bool)

(assert (=> d!536645 m!2172031))

(assert (=> d!536645 m!2171351))

(declare-fun m!2172033 () Bool)

(assert (=> d!536645 m!2172033))

(declare-fun m!2172035 () Bool)

(assert (=> d!536645 m!2172035))

(declare-fun m!2172037 () Bool)

(assert (=> d!536645 m!2172037))

(assert (=> d!536645 m!2171443))

(declare-fun m!2172039 () Bool)

(assert (=> d!536645 m!2172039))

(assert (=> d!536645 m!2171443))

(assert (=> d!536645 m!2171399))

(assert (=> d!536645 m!2171351))

(declare-fun m!2172041 () Bool)

(assert (=> d!536645 m!2172041))

(assert (=> d!536645 m!2172029))

(declare-fun m!2172043 () Bool)

(assert (=> d!536645 m!2172043))

(assert (=> d!536645 m!2172013))

(assert (=> d!536645 m!2172013))

(assert (=> d!536645 m!2172023))

(declare-fun m!2172045 () Bool)

(assert (=> d!536645 m!2172045))

(declare-fun m!2172047 () Bool)

(assert (=> d!536645 m!2172047))

(declare-fun m!2172049 () Bool)

(assert (=> d!536645 m!2172049))

(assert (=> d!536645 m!2172031))

(declare-fun m!2172051 () Bool)

(assert (=> d!536645 m!2172051))

(assert (=> d!536645 m!2172039))

(declare-fun m!2172053 () Bool)

(assert (=> d!536645 m!2172053))

(assert (=> d!536645 m!2172033))

(assert (=> d!536645 m!2172045))

(declare-fun m!2172055 () Bool)

(assert (=> d!536645 m!2172055))

(assert (=> d!536645 m!2172039))

(declare-fun m!2172057 () Bool)

(assert (=> d!536645 m!2172057))

(assert (=> b!1757052 m!2172045))

(assert (=> b!1757052 m!2172045))

(declare-fun m!2172059 () Bool)

(assert (=> b!1757052 m!2172059))

(assert (=> b!1757051 m!2172023))

(declare-fun m!2172061 () Bool)

(assert (=> b!1757051 m!2172061))

(assert (=> b!1757051 m!2172045))

(assert (=> b!1757051 m!2172059))

(assert (=> b!1757051 m!2172013))

(assert (=> b!1757051 m!2172013))

(assert (=> b!1757051 m!2172023))

(assert (=> b!1757051 m!2172045))

(assert (=> b!1756546 d!536645))

(declare-fun b!1757067 () Bool)

(declare-fun e!1124525 () Option!3928)

(declare-fun e!1124526 () Option!3928)

(assert (=> b!1757067 (= e!1124525 e!1124526)))

(declare-fun c!286379 () Bool)

(assert (=> b!1757067 (= c!286379 (and ((_ is Cons!19329) rules!3447) (not (= (tag!3811 (h!24730 rules!3447)) (tag!3811 (rule!5467 (_1!10875 lt!678588)))))))))

(declare-fun d!536741 () Bool)

(declare-fun e!1124527 () Bool)

(assert (=> d!536741 e!1124527))

(declare-fun res!790596 () Bool)

(assert (=> d!536741 (=> res!790596 e!1124527)))

(declare-fun lt!678821 () Option!3928)

(assert (=> d!536741 (= res!790596 (isEmpty!12195 lt!678821))))

(assert (=> d!536741 (= lt!678821 e!1124525)))

(declare-fun c!286380 () Bool)

(assert (=> d!536741 (= c!286380 (and ((_ is Cons!19329) rules!3447) (= (tag!3811 (h!24730 rules!3447)) (tag!3811 (rule!5467 (_1!10875 lt!678588))))))))

(assert (=> d!536741 (rulesInvariant!2751 thiss!24550 rules!3447)))

(assert (=> d!536741 (= (getRuleFromTag!501 thiss!24550 rules!3447 (tag!3811 (rule!5467 (_1!10875 lt!678588)))) lt!678821)))

(declare-fun b!1757068 () Bool)

(declare-fun lt!678823 () Unit!33493)

(declare-fun lt!678822 () Unit!33493)

(assert (=> b!1757068 (= lt!678823 lt!678822)))

(assert (=> b!1757068 (rulesInvariant!2751 thiss!24550 (t!163562 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!182 (LexerInterface!3082 Rule!6706 List!19399) Unit!33493)

(assert (=> b!1757068 (= lt!678822 (lemmaInvariantOnRulesThenOnTail!182 thiss!24550 (h!24730 rules!3447) (t!163562 rules!3447)))))

(assert (=> b!1757068 (= e!1124526 (getRuleFromTag!501 thiss!24550 (t!163562 rules!3447) (tag!3811 (rule!5467 (_1!10875 lt!678588)))))))

(declare-fun b!1757069 () Bool)

(declare-fun e!1124528 () Bool)

(assert (=> b!1757069 (= e!1124527 e!1124528)))

(declare-fun res!790595 () Bool)

(assert (=> b!1757069 (=> (not res!790595) (not e!1124528))))

(assert (=> b!1757069 (= res!790595 (contains!3481 rules!3447 (get!5872 lt!678821)))))

(declare-fun b!1757070 () Bool)

(assert (=> b!1757070 (= e!1124528 (= (tag!3811 (get!5872 lt!678821)) (tag!3811 (rule!5467 (_1!10875 lt!678588)))))))

(declare-fun b!1757071 () Bool)

(assert (=> b!1757071 (= e!1124526 None!3927)))

(declare-fun b!1757072 () Bool)

(assert (=> b!1757072 (= e!1124525 (Some!3927 (h!24730 rules!3447)))))

(assert (= (and d!536741 c!286380) b!1757072))

(assert (= (and d!536741 (not c!286380)) b!1757067))

(assert (= (and b!1757067 c!286379) b!1757068))

(assert (= (and b!1757067 (not c!286379)) b!1757071))

(assert (= (and d!536741 (not res!790596)) b!1757069))

(assert (= (and b!1757069 res!790595) b!1757070))

(declare-fun m!2172063 () Bool)

(assert (=> d!536741 m!2172063))

(assert (=> d!536741 m!2171419))

(declare-fun m!2172065 () Bool)

(assert (=> b!1757068 m!2172065))

(declare-fun m!2172067 () Bool)

(assert (=> b!1757068 m!2172067))

(declare-fun m!2172069 () Bool)

(assert (=> b!1757068 m!2172069))

(declare-fun m!2172071 () Bool)

(assert (=> b!1757069 m!2172071))

(assert (=> b!1757069 m!2172071))

(declare-fun m!2172073 () Bool)

(assert (=> b!1757069 m!2172073))

(assert (=> b!1757070 m!2172071))

(assert (=> b!1756546 d!536741))

(declare-fun d!536743 () Bool)

(declare-fun lt!678824 () BalanceConc!12802)

(assert (=> d!536743 (= (list!7835 lt!678824) (originalCharacters!4267 (_1!10875 lt!678588)))))

(assert (=> d!536743 (= lt!678824 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588))))))

(assert (=> d!536743 (= (charsOf!2102 (_1!10875 lt!678588)) lt!678824)))

(declare-fun b_lambda!56697 () Bool)

(assert (=> (not b_lambda!56697) (not d!536743)))

(assert (=> d!536743 t!163555))

(declare-fun b_and!132059 () Bool)

(assert (= b_and!132001 (and (=> t!163555 result!127018) b_and!132059)))

(assert (=> d!536743 t!163557))

(declare-fun b_and!132061 () Bool)

(assert (= b_and!132003 (and (=> t!163557 result!127020) b_and!132061)))

(assert (=> d!536743 t!163559))

(declare-fun b_and!132063 () Bool)

(assert (= b_and!132005 (and (=> t!163559 result!127022) b_and!132063)))

(declare-fun m!2172075 () Bool)

(assert (=> d!536743 m!2172075))

(assert (=> d!536743 m!2171415))

(assert (=> b!1756546 d!536743))

(declare-fun bm!110568 () Bool)

(declare-fun call!110573 () Option!3929)

(assert (=> bm!110568 (= call!110573 (maxPrefixOneRule!1005 thiss!24550 (h!24730 rules!3447) lt!678589))))

(declare-fun d!536745 () Bool)

(declare-fun e!1124531 () Bool)

(assert (=> d!536745 e!1124531))

(declare-fun res!790601 () Bool)

(assert (=> d!536745 (=> res!790601 e!1124531)))

(declare-fun lt!678827 () Option!3929)

(assert (=> d!536745 (= res!790601 (isEmpty!12194 lt!678827))))

(declare-fun e!1124529 () Option!3929)

(assert (=> d!536745 (= lt!678827 e!1124529)))

(declare-fun c!286382 () Bool)

(assert (=> d!536745 (= c!286382 (and ((_ is Cons!19329) rules!3447) ((_ is Nil!19329) (t!163562 rules!3447))))))

(declare-fun lt!678826 () Unit!33493)

(declare-fun lt!678828 () Unit!33493)

(assert (=> d!536745 (= lt!678826 lt!678828)))

(assert (=> d!536745 (isPrefix!1693 lt!678589 lt!678589)))

(assert (=> d!536745 (= lt!678828 (lemmaIsPrefixRefl!1120 lt!678589 lt!678589))))

(assert (=> d!536745 (rulesValidInductive!1158 thiss!24550 rules!3447)))

(assert (=> d!536745 (= (maxPrefix!1636 thiss!24550 rules!3447 lt!678589) lt!678827)))

(declare-fun b!1757073 () Bool)

(declare-fun lt!678829 () Option!3929)

(declare-fun lt!678825 () Option!3929)

(assert (=> b!1757073 (= e!1124529 (ite (and ((_ is None!3928) lt!678829) ((_ is None!3928) lt!678825)) None!3928 (ite ((_ is None!3928) lt!678825) lt!678829 (ite ((_ is None!3928) lt!678829) lt!678825 (ite (>= (size!15354 (_1!10875 (v!25381 lt!678829))) (size!15354 (_1!10875 (v!25381 lt!678825)))) lt!678829 lt!678825)))))))

(assert (=> b!1757073 (= lt!678829 call!110573)))

(assert (=> b!1757073 (= lt!678825 (maxPrefix!1636 thiss!24550 (t!163562 rules!3447) lt!678589))))

(declare-fun b!1757074 () Bool)

(assert (=> b!1757074 (= e!1124529 call!110573)))

(declare-fun b!1757075 () Bool)

(declare-fun e!1124530 () Bool)

(assert (=> b!1757075 (= e!1124530 (contains!3481 rules!3447 (rule!5467 (_1!10875 (get!5873 lt!678827)))))))

(declare-fun b!1757076 () Bool)

(declare-fun res!790600 () Bool)

(assert (=> b!1757076 (=> (not res!790600) (not e!1124530))))

(assert (=> b!1757076 (= res!790600 (< (size!15357 (_2!10875 (get!5873 lt!678827))) (size!15357 lt!678589)))))

(declare-fun b!1757077 () Bool)

(declare-fun res!790597 () Bool)

(assert (=> b!1757077 (=> (not res!790597) (not e!1124530))))

(assert (=> b!1757077 (= res!790597 (matchR!2254 (regex!3453 (rule!5467 (_1!10875 (get!5873 lt!678827)))) (list!7835 (charsOf!2102 (_1!10875 (get!5873 lt!678827))))))))

(declare-fun b!1757078 () Bool)

(declare-fun res!790602 () Bool)

(assert (=> b!1757078 (=> (not res!790602) (not e!1124530))))

(assert (=> b!1757078 (= res!790602 (= (++!5277 (list!7835 (charsOf!2102 (_1!10875 (get!5873 lt!678827)))) (_2!10875 (get!5873 lt!678827))) lt!678589))))

(declare-fun b!1757079 () Bool)

(declare-fun res!790598 () Bool)

(assert (=> b!1757079 (=> (not res!790598) (not e!1124530))))

(assert (=> b!1757079 (= res!790598 (= (list!7835 (charsOf!2102 (_1!10875 (get!5873 lt!678827)))) (originalCharacters!4267 (_1!10875 (get!5873 lt!678827)))))))

(declare-fun b!1757080 () Bool)

(assert (=> b!1757080 (= e!1124531 e!1124530)))

(declare-fun res!790599 () Bool)

(assert (=> b!1757080 (=> (not res!790599) (not e!1124530))))

(assert (=> b!1757080 (= res!790599 (isDefined!3271 lt!678827))))

(declare-fun b!1757081 () Bool)

(declare-fun res!790603 () Bool)

(assert (=> b!1757081 (=> (not res!790603) (not e!1124530))))

(assert (=> b!1757081 (= res!790603 (= (value!108083 (_1!10875 (get!5873 lt!678827))) (apply!5253 (transformation!3453 (rule!5467 (_1!10875 (get!5873 lt!678827)))) (seqFromList!2422 (originalCharacters!4267 (_1!10875 (get!5873 lt!678827)))))))))

(assert (= (and d!536745 c!286382) b!1757074))

(assert (= (and d!536745 (not c!286382)) b!1757073))

(assert (= (or b!1757074 b!1757073) bm!110568))

(assert (= (and d!536745 (not res!790601)) b!1757080))

(assert (= (and b!1757080 res!790599) b!1757079))

(assert (= (and b!1757079 res!790598) b!1757076))

(assert (= (and b!1757076 res!790600) b!1757078))

(assert (= (and b!1757078 res!790602) b!1757081))

(assert (= (and b!1757081 res!790603) b!1757077))

(assert (= (and b!1757077 res!790597) b!1757075))

(declare-fun m!2172077 () Bool)

(assert (=> bm!110568 m!2172077))

(declare-fun m!2172079 () Bool)

(assert (=> b!1757078 m!2172079))

(declare-fun m!2172081 () Bool)

(assert (=> b!1757078 m!2172081))

(assert (=> b!1757078 m!2172081))

(declare-fun m!2172083 () Bool)

(assert (=> b!1757078 m!2172083))

(assert (=> b!1757078 m!2172083))

(declare-fun m!2172085 () Bool)

(assert (=> b!1757078 m!2172085))

(declare-fun m!2172087 () Bool)

(assert (=> b!1757073 m!2172087))

(assert (=> b!1757081 m!2172079))

(declare-fun m!2172089 () Bool)

(assert (=> b!1757081 m!2172089))

(assert (=> b!1757081 m!2172089))

(declare-fun m!2172091 () Bool)

(assert (=> b!1757081 m!2172091))

(declare-fun m!2172093 () Bool)

(assert (=> d!536745 m!2172093))

(declare-fun m!2172095 () Bool)

(assert (=> d!536745 m!2172095))

(declare-fun m!2172097 () Bool)

(assert (=> d!536745 m!2172097))

(assert (=> d!536745 m!2171593))

(assert (=> b!1757075 m!2172079))

(declare-fun m!2172099 () Bool)

(assert (=> b!1757075 m!2172099))

(assert (=> b!1757077 m!2172079))

(assert (=> b!1757077 m!2172081))

(assert (=> b!1757077 m!2172081))

(assert (=> b!1757077 m!2172083))

(assert (=> b!1757077 m!2172083))

(declare-fun m!2172101 () Bool)

(assert (=> b!1757077 m!2172101))

(assert (=> b!1757076 m!2172079))

(declare-fun m!2172103 () Bool)

(assert (=> b!1757076 m!2172103))

(assert (=> b!1757076 m!2171767))

(assert (=> b!1757079 m!2172079))

(assert (=> b!1757079 m!2172081))

(assert (=> b!1757079 m!2172081))

(assert (=> b!1757079 m!2172083))

(declare-fun m!2172105 () Bool)

(assert (=> b!1757080 m!2172105))

(assert (=> b!1756546 d!536745))

(declare-fun b!1757082 () Bool)

(declare-fun e!1124532 () List!19398)

(assert (=> b!1757082 (= e!1124532 (_2!10875 lt!678588))))

(declare-fun b!1757083 () Bool)

(assert (=> b!1757083 (= e!1124532 (Cons!19328 (h!24729 lt!678575) (++!5277 (t!163561 lt!678575) (_2!10875 lt!678588))))))

(declare-fun d!536747 () Bool)

(declare-fun e!1124533 () Bool)

(assert (=> d!536747 e!1124533))

(declare-fun res!790604 () Bool)

(assert (=> d!536747 (=> (not res!790604) (not e!1124533))))

(declare-fun lt!678830 () List!19398)

(assert (=> d!536747 (= res!790604 (= (content!2784 lt!678830) ((_ map or) (content!2784 lt!678575) (content!2784 (_2!10875 lt!678588)))))))

(assert (=> d!536747 (= lt!678830 e!1124532)))

(declare-fun c!286383 () Bool)

(assert (=> d!536747 (= c!286383 ((_ is Nil!19328) lt!678575))))

(assert (=> d!536747 (= (++!5277 lt!678575 (_2!10875 lt!678588)) lt!678830)))

(declare-fun b!1757085 () Bool)

(assert (=> b!1757085 (= e!1124533 (or (not (= (_2!10875 lt!678588) Nil!19328)) (= lt!678830 lt!678575)))))

(declare-fun b!1757084 () Bool)

(declare-fun res!790605 () Bool)

(assert (=> b!1757084 (=> (not res!790605) (not e!1124533))))

(assert (=> b!1757084 (= res!790605 (= (size!15357 lt!678830) (+ (size!15357 lt!678575) (size!15357 (_2!10875 lt!678588)))))))

(assert (= (and d!536747 c!286383) b!1757082))

(assert (= (and d!536747 (not c!286383)) b!1757083))

(assert (= (and d!536747 res!790604) b!1757084))

(assert (= (and b!1757084 res!790605) b!1757085))

(declare-fun m!2172107 () Bool)

(assert (=> b!1757083 m!2172107))

(declare-fun m!2172109 () Bool)

(assert (=> d!536747 m!2172109))

(declare-fun m!2172111 () Bool)

(assert (=> d!536747 m!2172111))

(declare-fun m!2172113 () Bool)

(assert (=> d!536747 m!2172113))

(declare-fun m!2172115 () Bool)

(assert (=> b!1757084 m!2172115))

(assert (=> b!1757084 m!2171777))

(declare-fun m!2172117 () Bool)

(assert (=> b!1757084 m!2172117))

(assert (=> b!1756546 d!536747))

(declare-fun b!1757086 () Bool)

(declare-fun e!1124535 () Bool)

(declare-fun e!1124536 () Bool)

(assert (=> b!1757086 (= e!1124535 e!1124536)))

(declare-fun res!790608 () Bool)

(assert (=> b!1757086 (=> (not res!790608) (not e!1124536))))

(assert (=> b!1757086 (= res!790608 (not ((_ is Nil!19328) lt!678589)))))

(declare-fun b!1757087 () Bool)

(declare-fun res!790609 () Bool)

(assert (=> b!1757087 (=> (not res!790609) (not e!1124536))))

(assert (=> b!1757087 (= res!790609 (= (head!4058 lt!678575) (head!4058 lt!678589)))))

(declare-fun b!1757088 () Bool)

(assert (=> b!1757088 (= e!1124536 (isPrefix!1693 (tail!2625 lt!678575) (tail!2625 lt!678589)))))

(declare-fun d!536749 () Bool)

(declare-fun e!1124534 () Bool)

(assert (=> d!536749 e!1124534))

(declare-fun res!790606 () Bool)

(assert (=> d!536749 (=> res!790606 e!1124534)))

(declare-fun lt!678831 () Bool)

(assert (=> d!536749 (= res!790606 (not lt!678831))))

(assert (=> d!536749 (= lt!678831 e!1124535)))

(declare-fun res!790607 () Bool)

(assert (=> d!536749 (=> res!790607 e!1124535)))

(assert (=> d!536749 (= res!790607 ((_ is Nil!19328) lt!678575))))

(assert (=> d!536749 (= (isPrefix!1693 lt!678575 lt!678589) lt!678831)))

(declare-fun b!1757089 () Bool)

(assert (=> b!1757089 (= e!1124534 (>= (size!15357 lt!678589) (size!15357 lt!678575)))))

(assert (= (and d!536749 (not res!790607)) b!1757086))

(assert (= (and b!1757086 res!790608) b!1757087))

(assert (= (and b!1757087 res!790609) b!1757088))

(assert (= (and d!536749 (not res!790606)) b!1757089))

(assert (=> b!1757087 m!2171501))

(assert (=> b!1757087 m!2171761))

(assert (=> b!1757088 m!2171505))

(assert (=> b!1757088 m!2171763))

(assert (=> b!1757088 m!2171505))

(assert (=> b!1757088 m!2171763))

(declare-fun m!2172119 () Bool)

(assert (=> b!1757088 m!2172119))

(assert (=> b!1757089 m!2171767))

(assert (=> b!1757089 m!2171777))

(assert (=> b!1756546 d!536749))

(declare-fun d!536751 () Bool)

(declare-fun lt!678832 () Bool)

(assert (=> d!536751 (= lt!678832 (select (content!2783 rules!3447) rule!422))))

(declare-fun e!1124537 () Bool)

(assert (=> d!536751 (= lt!678832 e!1124537)))

(declare-fun res!790610 () Bool)

(assert (=> d!536751 (=> (not res!790610) (not e!1124537))))

(assert (=> d!536751 (= res!790610 ((_ is Cons!19329) rules!3447))))

(assert (=> d!536751 (= (contains!3481 rules!3447 rule!422) lt!678832)))

(declare-fun b!1757090 () Bool)

(declare-fun e!1124538 () Bool)

(assert (=> b!1757090 (= e!1124537 e!1124538)))

(declare-fun res!790611 () Bool)

(assert (=> b!1757090 (=> res!790611 e!1124538)))

(assert (=> b!1757090 (= res!790611 (= (h!24730 rules!3447) rule!422))))

(declare-fun b!1757091 () Bool)

(assert (=> b!1757091 (= e!1124538 (contains!3481 (t!163562 rules!3447) rule!422))))

(assert (= (and d!536751 res!790610) b!1757090))

(assert (= (and b!1757090 (not res!790611)) b!1757091))

(assert (=> d!536751 m!2171687))

(declare-fun m!2172121 () Bool)

(assert (=> d!536751 m!2172121))

(declare-fun m!2172123 () Bool)

(assert (=> b!1757091 m!2172123))

(assert (=> b!1756526 d!536751))

(declare-fun b!1757102 () Bool)

(declare-fun e!1124547 () Bool)

(declare-fun e!1124546 () Bool)

(assert (=> b!1757102 (= e!1124547 e!1124546)))

(declare-fun c!286389 () Bool)

(assert (=> b!1757102 (= c!286389 ((_ is IntegerValue!10630) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586)))))

(declare-fun d!536753 () Bool)

(declare-fun c!286388 () Bool)

(assert (=> d!536753 (= c!286388 ((_ is IntegerValue!10629) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586)))))

(assert (=> d!536753 (= (inv!21 (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586)) e!1124547)))

(declare-fun b!1757103 () Bool)

(declare-fun e!1124545 () Bool)

(declare-fun inv!15 (TokenValue!3543) Bool)

(assert (=> b!1757103 (= e!1124545 (inv!15 (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586)))))

(declare-fun b!1757104 () Bool)

(declare-fun inv!17 (TokenValue!3543) Bool)

(assert (=> b!1757104 (= e!1124546 (inv!17 (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586)))))

(declare-fun b!1757105 () Bool)

(declare-fun inv!16 (TokenValue!3543) Bool)

(assert (=> b!1757105 (= e!1124547 (inv!16 (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586)))))

(declare-fun b!1757106 () Bool)

(declare-fun res!790614 () Bool)

(assert (=> b!1757106 (=> res!790614 e!1124545)))

(assert (=> b!1757106 (= res!790614 (not ((_ is IntegerValue!10631) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586))))))

(assert (=> b!1757106 (= e!1124546 e!1124545)))

(assert (= (and d!536753 c!286388) b!1757105))

(assert (= (and d!536753 (not c!286388)) b!1757102))

(assert (= (and b!1757102 c!286389) b!1757104))

(assert (= (and b!1757102 (not c!286389)) b!1757106))

(assert (= (and b!1757106 (not res!790614)) b!1757103))

(declare-fun m!2172125 () Bool)

(assert (=> b!1757103 m!2172125))

(declare-fun m!2172127 () Bool)

(assert (=> b!1757104 m!2172127))

(declare-fun m!2172129 () Bool)

(assert (=> b!1757105 m!2172129))

(assert (=> tb!105573 d!536753))

(declare-fun d!536755 () Bool)

(assert (=> d!536755 (= (isEmpty!12190 (_2!10875 lt!678590)) ((_ is Nil!19328) (_2!10875 lt!678590)))))

(assert (=> b!1756527 d!536755))

(declare-fun b!1757107 () Bool)

(declare-fun e!1124550 () Bool)

(declare-fun e!1124549 () Bool)

(assert (=> b!1757107 (= e!1124550 e!1124549)))

(declare-fun c!286391 () Bool)

(assert (=> b!1757107 (= c!286391 ((_ is IntegerValue!10630) (value!108083 token!523)))))

(declare-fun d!536757 () Bool)

(declare-fun c!286390 () Bool)

(assert (=> d!536757 (= c!286390 ((_ is IntegerValue!10629) (value!108083 token!523)))))

(assert (=> d!536757 (= (inv!21 (value!108083 token!523)) e!1124550)))

(declare-fun b!1757108 () Bool)

(declare-fun e!1124548 () Bool)

(assert (=> b!1757108 (= e!1124548 (inv!15 (value!108083 token!523)))))

(declare-fun b!1757109 () Bool)

(assert (=> b!1757109 (= e!1124549 (inv!17 (value!108083 token!523)))))

(declare-fun b!1757110 () Bool)

(assert (=> b!1757110 (= e!1124550 (inv!16 (value!108083 token!523)))))

(declare-fun b!1757111 () Bool)

(declare-fun res!790615 () Bool)

(assert (=> b!1757111 (=> res!790615 e!1124548)))

(assert (=> b!1757111 (= res!790615 (not ((_ is IntegerValue!10631) (value!108083 token!523))))))

(assert (=> b!1757111 (= e!1124549 e!1124548)))

(assert (= (and d!536757 c!286390) b!1757110))

(assert (= (and d!536757 (not c!286390)) b!1757107))

(assert (= (and b!1757107 c!286391) b!1757109))

(assert (= (and b!1757107 (not c!286391)) b!1757111))

(assert (= (and b!1757111 (not res!790615)) b!1757108))

(declare-fun m!2172131 () Bool)

(assert (=> b!1757108 m!2172131))

(declare-fun m!2172133 () Bool)

(assert (=> b!1757109 m!2172133))

(declare-fun m!2172135 () Bool)

(assert (=> b!1757110 m!2172135))

(assert (=> b!1756518 d!536757))

(declare-fun d!536759 () Bool)

(assert (=> d!536759 (= (get!5873 lt!678572) (v!25381 lt!678572))))

(assert (=> b!1756539 d!536759))

(declare-fun d!536761 () Bool)

(assert (=> d!536761 (= (inv!25093 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588)))) (isBalanced!2005 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588))))))))

(declare-fun bs!403873 () Bool)

(assert (= bs!403873 d!536761))

(declare-fun m!2172137 () Bool)

(assert (=> bs!403873 m!2172137))

(assert (=> tb!105579 d!536761))

(declare-fun d!536763 () Bool)

(assert (=> d!536763 (= (inv!25085 (tag!3811 rule!422)) (= (mod (str.len (value!108082 (tag!3811 rule!422))) 2) 0))))

(assert (=> b!1756541 d!536763))

(declare-fun d!536765 () Bool)

(declare-fun res!790616 () Bool)

(declare-fun e!1124551 () Bool)

(assert (=> d!536765 (=> (not res!790616) (not e!1124551))))

(assert (=> d!536765 (= res!790616 (semiInverseModEq!1367 (toChars!4831 (transformation!3453 rule!422)) (toValue!4972 (transformation!3453 rule!422))))))

(assert (=> d!536765 (= (inv!25090 (transformation!3453 rule!422)) e!1124551)))

(declare-fun b!1757112 () Bool)

(assert (=> b!1757112 (= e!1124551 (equivClasses!1308 (toChars!4831 (transformation!3453 rule!422)) (toValue!4972 (transformation!3453 rule!422))))))

(assert (= (and d!536765 res!790616) b!1757112))

(declare-fun m!2172139 () Bool)

(assert (=> d!536765 m!2172139))

(declare-fun m!2172141 () Bool)

(assert (=> b!1757112 m!2172141))

(assert (=> b!1756541 d!536765))

(declare-fun d!536767 () Bool)

(declare-fun c!286392 () Bool)

(assert (=> d!536767 (= c!286392 ((_ is Node!6429) (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586)))))))

(declare-fun e!1124552 () Bool)

(assert (=> d!536767 (= (inv!25092 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586)))) e!1124552)))

(declare-fun b!1757113 () Bool)

(assert (=> b!1757113 (= e!1124552 (inv!25096 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586)))))))

(declare-fun b!1757114 () Bool)

(declare-fun e!1124553 () Bool)

(assert (=> b!1757114 (= e!1124552 e!1124553)))

(declare-fun res!790617 () Bool)

(assert (=> b!1757114 (= res!790617 (not ((_ is Leaf!9376) (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586))))))))

(assert (=> b!1757114 (=> res!790617 e!1124553)))

(declare-fun b!1757115 () Bool)

(assert (=> b!1757115 (= e!1124553 (inv!25097 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586)))))))

(assert (= (and d!536767 c!286392) b!1757113))

(assert (= (and d!536767 (not c!286392)) b!1757114))

(assert (= (and b!1757114 (not res!790617)) b!1757115))

(declare-fun m!2172143 () Bool)

(assert (=> b!1757113 m!2172143))

(declare-fun m!2172145 () Bool)

(assert (=> b!1757115 m!2172145))

(assert (=> b!1756563 d!536767))

(declare-fun b!1757116 () Bool)

(declare-fun res!790621 () Bool)

(declare-fun e!1124558 () Bool)

(assert (=> b!1757116 (=> res!790621 e!1124558)))

(declare-fun e!1124560 () Bool)

(assert (=> b!1757116 (= res!790621 e!1124560)))

(declare-fun res!790625 () Bool)

(assert (=> b!1757116 (=> (not res!790625) (not e!1124560))))

(declare-fun lt!678833 () Bool)

(assert (=> b!1757116 (= res!790625 lt!678833)))

(declare-fun b!1757117 () Bool)

(declare-fun res!790623 () Bool)

(declare-fun e!1124557 () Bool)

(assert (=> b!1757117 (=> res!790623 e!1124557)))

(assert (=> b!1757117 (= res!790623 (not (isEmpty!12190 (tail!2625 (list!7835 (charsOf!2102 (_1!10875 lt!678588)))))))))

(declare-fun b!1757118 () Bool)

(assert (=> b!1757118 (= e!1124557 (not (= (head!4058 (list!7835 (charsOf!2102 (_1!10875 lt!678588)))) (c!286300 (regex!3453 lt!678583)))))))

(declare-fun b!1757119 () Bool)

(declare-fun res!790619 () Bool)

(assert (=> b!1757119 (=> (not res!790619) (not e!1124560))))

(assert (=> b!1757119 (= res!790619 (isEmpty!12190 (tail!2625 (list!7835 (charsOf!2102 (_1!10875 lt!678588))))))))

(declare-fun b!1757120 () Bool)

(declare-fun res!790624 () Bool)

(assert (=> b!1757120 (=> (not res!790624) (not e!1124560))))

(declare-fun call!110574 () Bool)

(assert (=> b!1757120 (= res!790624 (not call!110574))))

(declare-fun b!1757121 () Bool)

(assert (=> b!1757121 (= e!1124560 (= (head!4058 (list!7835 (charsOf!2102 (_1!10875 lt!678588)))) (c!286300 (regex!3453 lt!678583))))))

(declare-fun d!536769 () Bool)

(declare-fun e!1124555 () Bool)

(assert (=> d!536769 e!1124555))

(declare-fun c!286395 () Bool)

(assert (=> d!536769 (= c!286395 ((_ is EmptyExpr!4781) (regex!3453 lt!678583)))))

(declare-fun e!1124559 () Bool)

(assert (=> d!536769 (= lt!678833 e!1124559)))

(declare-fun c!286393 () Bool)

(assert (=> d!536769 (= c!286393 (isEmpty!12190 (list!7835 (charsOf!2102 (_1!10875 lt!678588)))))))

(assert (=> d!536769 (validRegex!1926 (regex!3453 lt!678583))))

(assert (=> d!536769 (= (matchR!2254 (regex!3453 lt!678583) (list!7835 (charsOf!2102 (_1!10875 lt!678588)))) lt!678833)))

(declare-fun b!1757122 () Bool)

(assert (=> b!1757122 (= e!1124559 (nullable!1452 (regex!3453 lt!678583)))))

(declare-fun b!1757123 () Bool)

(declare-fun e!1124554 () Bool)

(assert (=> b!1757123 (= e!1124555 e!1124554)))

(declare-fun c!286394 () Bool)

(assert (=> b!1757123 (= c!286394 ((_ is EmptyLang!4781) (regex!3453 lt!678583)))))

(declare-fun bm!110569 () Bool)

(assert (=> bm!110569 (= call!110574 (isEmpty!12190 (list!7835 (charsOf!2102 (_1!10875 lt!678588)))))))

(declare-fun b!1757124 () Bool)

(assert (=> b!1757124 (= e!1124554 (not lt!678833))))

(declare-fun b!1757125 () Bool)

(declare-fun e!1124556 () Bool)

(assert (=> b!1757125 (= e!1124558 e!1124556)))

(declare-fun res!790618 () Bool)

(assert (=> b!1757125 (=> (not res!790618) (not e!1124556))))

(assert (=> b!1757125 (= res!790618 (not lt!678833))))

(declare-fun b!1757126 () Bool)

(assert (=> b!1757126 (= e!1124556 e!1124557)))

(declare-fun res!790622 () Bool)

(assert (=> b!1757126 (=> res!790622 e!1124557)))

(assert (=> b!1757126 (= res!790622 call!110574)))

(declare-fun b!1757127 () Bool)

(assert (=> b!1757127 (= e!1124555 (= lt!678833 call!110574))))

(declare-fun b!1757128 () Bool)

(assert (=> b!1757128 (= e!1124559 (matchR!2254 (derivativeStep!1221 (regex!3453 lt!678583) (head!4058 (list!7835 (charsOf!2102 (_1!10875 lt!678588))))) (tail!2625 (list!7835 (charsOf!2102 (_1!10875 lt!678588))))))))

(declare-fun b!1757129 () Bool)

(declare-fun res!790620 () Bool)

(assert (=> b!1757129 (=> res!790620 e!1124558)))

(assert (=> b!1757129 (= res!790620 (not ((_ is ElementMatch!4781) (regex!3453 lt!678583))))))

(assert (=> b!1757129 (= e!1124554 e!1124558)))

(assert (= (and d!536769 c!286393) b!1757122))

(assert (= (and d!536769 (not c!286393)) b!1757128))

(assert (= (and d!536769 c!286395) b!1757127))

(assert (= (and d!536769 (not c!286395)) b!1757123))

(assert (= (and b!1757123 c!286394) b!1757124))

(assert (= (and b!1757123 (not c!286394)) b!1757129))

(assert (= (and b!1757129 (not res!790620)) b!1757116))

(assert (= (and b!1757116 res!790625) b!1757120))

(assert (= (and b!1757120 res!790624) b!1757119))

(assert (= (and b!1757119 res!790619) b!1757121))

(assert (= (and b!1757116 (not res!790621)) b!1757125))

(assert (= (and b!1757125 res!790618) b!1757126))

(assert (= (and b!1757126 (not res!790622)) b!1757117))

(assert (= (and b!1757117 (not res!790623)) b!1757118))

(assert (= (or b!1757127 b!1757126 b!1757120) bm!110569))

(assert (=> b!1757128 m!2171379))

(declare-fun m!2172147 () Bool)

(assert (=> b!1757128 m!2172147))

(assert (=> b!1757128 m!2172147))

(declare-fun m!2172149 () Bool)

(assert (=> b!1757128 m!2172149))

(assert (=> b!1757128 m!2171379))

(declare-fun m!2172151 () Bool)

(assert (=> b!1757128 m!2172151))

(assert (=> b!1757128 m!2172149))

(assert (=> b!1757128 m!2172151))

(declare-fun m!2172153 () Bool)

(assert (=> b!1757128 m!2172153))

(assert (=> b!1757117 m!2171379))

(assert (=> b!1757117 m!2172151))

(assert (=> b!1757117 m!2172151))

(declare-fun m!2172155 () Bool)

(assert (=> b!1757117 m!2172155))

(assert (=> bm!110569 m!2171379))

(declare-fun m!2172157 () Bool)

(assert (=> bm!110569 m!2172157))

(assert (=> b!1757118 m!2171379))

(assert (=> b!1757118 m!2172147))

(assert (=> b!1757119 m!2171379))

(assert (=> b!1757119 m!2172151))

(assert (=> b!1757119 m!2172151))

(assert (=> b!1757119 m!2172155))

(assert (=> d!536769 m!2171379))

(assert (=> d!536769 m!2172157))

(declare-fun m!2172159 () Bool)

(assert (=> d!536769 m!2172159))

(declare-fun m!2172161 () Bool)

(assert (=> b!1757122 m!2172161))

(assert (=> b!1757121 m!2171379))

(assert (=> b!1757121 m!2172147))

(assert (=> b!1756521 d!536769))

(declare-fun d!536771 () Bool)

(assert (=> d!536771 (= (list!7835 (charsOf!2102 (_1!10875 lt!678588))) (list!7838 (c!286301 (charsOf!2102 (_1!10875 lt!678588)))))))

(declare-fun bs!403874 () Bool)

(assert (= bs!403874 d!536771))

(declare-fun m!2172163 () Bool)

(assert (=> bs!403874 m!2172163))

(assert (=> b!1756521 d!536771))

(assert (=> b!1756521 d!536743))

(declare-fun d!536773 () Bool)

(assert (=> d!536773 (= (get!5872 lt!678585) (v!25380 lt!678585))))

(assert (=> b!1756521 d!536773))

(declare-fun d!536775 () Bool)

(declare-fun res!790628 () Bool)

(declare-fun e!1124563 () Bool)

(assert (=> d!536775 (=> (not res!790628) (not e!1124563))))

(declare-fun rulesValid!1294 (LexerInterface!3082 List!19399) Bool)

(assert (=> d!536775 (= res!790628 (rulesValid!1294 thiss!24550 rules!3447))))

(assert (=> d!536775 (= (rulesInvariant!2751 thiss!24550 rules!3447) e!1124563)))

(declare-fun b!1757132 () Bool)

(declare-datatypes ((List!19404 0))(
  ( (Nil!19334) (Cons!19334 (h!24735 String!22047) (t!163611 List!19404)) )
))
(declare-fun noDuplicateTag!1294 (LexerInterface!3082 List!19399 List!19404) Bool)

(assert (=> b!1757132 (= e!1124563 (noDuplicateTag!1294 thiss!24550 rules!3447 Nil!19334))))

(assert (= (and d!536775 res!790628) b!1757132))

(declare-fun m!2172165 () Bool)

(assert (=> d!536775 m!2172165))

(declare-fun m!2172167 () Bool)

(assert (=> b!1757132 m!2172167))

(assert (=> b!1756544 d!536775))

(declare-fun d!536777 () Bool)

(assert (=> d!536777 (= (list!7835 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586))) (list!7838 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586)))))))

(declare-fun bs!403875 () Bool)

(assert (= bs!403875 d!536777))

(declare-fun m!2172169 () Bool)

(assert (=> bs!403875 m!2172169))

(assert (=> b!1756522 d!536777))

(declare-fun bs!403876 () Bool)

(declare-fun d!536779 () Bool)

(assert (= bs!403876 (and d!536779 b!1756545)))

(declare-fun lambda!70043 () Int)

(assert (=> bs!403876 (= lambda!70043 lambda!70028)))

(declare-fun b!1757137 () Bool)

(declare-fun e!1124566 () Bool)

(assert (=> b!1757137 (= e!1124566 true)))

(assert (=> d!536779 e!1124566))

(assert (= d!536779 b!1757137))

(assert (=> b!1757137 (< (dynLambda!9271 order!12207 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) (dynLambda!9272 order!12209 lambda!70043))))

(assert (=> b!1757137 (< (dynLambda!9273 order!12211 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) (dynLambda!9272 order!12209 lambda!70043))))

(assert (=> d!536779 (= (list!7835 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586))) (list!7835 lt!678586))))

(declare-fun lt!678836 () Unit!33493)

(declare-fun ForallOf!306 (Int BalanceConc!12802) Unit!33493)

(assert (=> d!536779 (= lt!678836 (ForallOf!306 lambda!70043 lt!678586))))

(assert (=> d!536779 (= (lemmaSemiInverse!591 (transformation!3453 (rule!5467 (_1!10875 lt!678588))) lt!678586) lt!678836)))

(declare-fun b_lambda!56699 () Bool)

(assert (=> (not b_lambda!56699) (not d!536779)))

(assert (=> d!536779 t!163543))

(declare-fun b_and!132065 () Bool)

(assert (= b_and!132059 (and (=> t!163543 result!127002) b_and!132065)))

(assert (=> d!536779 t!163545))

(declare-fun b_and!132067 () Bool)

(assert (= b_and!132061 (and (=> t!163545 result!127006) b_and!132067)))

(assert (=> d!536779 t!163547))

(declare-fun b_and!132069 () Bool)

(assert (= b_and!132063 (and (=> t!163547 result!127008) b_and!132069)))

(declare-fun b_lambda!56701 () Bool)

(assert (=> (not b_lambda!56701) (not d!536779)))

(assert (=> d!536779 t!163549))

(declare-fun b_and!132071 () Bool)

(assert (= b_and!131995 (and (=> t!163549 result!127010) b_and!132071)))

(assert (=> d!536779 t!163551))

(declare-fun b_and!132073 () Bool)

(assert (= b_and!131997 (and (=> t!163551 result!127014) b_and!132073)))

(assert (=> d!536779 t!163553))

(declare-fun b_and!132075 () Bool)

(assert (= b_and!131999 (and (=> t!163553 result!127016) b_and!132075)))

(assert (=> d!536779 m!2171369))

(assert (=> d!536779 m!2171371))

(declare-fun m!2172171 () Bool)

(assert (=> d!536779 m!2172171))

(assert (=> d!536779 m!2171369))

(assert (=> d!536779 m!2171433))

(assert (=> d!536779 m!2171371))

(assert (=> d!536779 m!2171373))

(assert (=> b!1756522 d!536779))

(declare-fun d!536781 () Bool)

(declare-fun c!286399 () Bool)

(assert (=> d!536781 (= c!286399 (isEmpty!12190 (++!5277 lt!678573 (Cons!19328 (head!4058 suffix!1421) Nil!19328))))))

(declare-fun e!1124569 () Bool)

(assert (=> d!536781 (= (prefixMatch!664 (rulesRegex!809 thiss!24550 rules!3447) (++!5277 lt!678573 (Cons!19328 (head!4058 suffix!1421) Nil!19328))) e!1124569)))

(declare-fun b!1757142 () Bool)

(declare-fun lostCause!564 (Regex!4781) Bool)

(assert (=> b!1757142 (= e!1124569 (not (lostCause!564 (rulesRegex!809 thiss!24550 rules!3447))))))

(declare-fun b!1757143 () Bool)

(assert (=> b!1757143 (= e!1124569 (prefixMatch!664 (derivativeStep!1221 (rulesRegex!809 thiss!24550 rules!3447) (head!4058 (++!5277 lt!678573 (Cons!19328 (head!4058 suffix!1421) Nil!19328)))) (tail!2625 (++!5277 lt!678573 (Cons!19328 (head!4058 suffix!1421) Nil!19328)))))))

(assert (= (and d!536781 c!286399) b!1757142))

(assert (= (and d!536781 (not c!286399)) b!1757143))

(assert (=> d!536781 m!2171453))

(declare-fun m!2172173 () Bool)

(assert (=> d!536781 m!2172173))

(assert (=> b!1757142 m!2171449))

(declare-fun m!2172175 () Bool)

(assert (=> b!1757142 m!2172175))

(assert (=> b!1757143 m!2171453))

(declare-fun m!2172177 () Bool)

(assert (=> b!1757143 m!2172177))

(assert (=> b!1757143 m!2171449))

(assert (=> b!1757143 m!2172177))

(declare-fun m!2172179 () Bool)

(assert (=> b!1757143 m!2172179))

(assert (=> b!1757143 m!2171453))

(declare-fun m!2172181 () Bool)

(assert (=> b!1757143 m!2172181))

(assert (=> b!1757143 m!2172179))

(assert (=> b!1757143 m!2172181))

(declare-fun m!2172183 () Bool)

(assert (=> b!1757143 m!2172183))

(assert (=> b!1756543 d!536781))

(declare-fun d!536783 () Bool)

(declare-fun lt!678839 () Unit!33493)

(declare-fun lemma!377 (List!19399 LexerInterface!3082 List!19399) Unit!33493)

(assert (=> d!536783 (= lt!678839 (lemma!377 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70046 () Int)

(declare-datatypes ((List!19405 0))(
  ( (Nil!19335) (Cons!19335 (h!24736 Regex!4781) (t!163612 List!19405)) )
))
(declare-fun generalisedUnion!385 (List!19405) Regex!4781)

(declare-fun map!3983 (List!19399 Int) List!19405)

(assert (=> d!536783 (= (rulesRegex!809 thiss!24550 rules!3447) (generalisedUnion!385 (map!3983 rules!3447 lambda!70046)))))

(declare-fun bs!403877 () Bool)

(assert (= bs!403877 d!536783))

(declare-fun m!2172185 () Bool)

(assert (=> bs!403877 m!2172185))

(declare-fun m!2172187 () Bool)

(assert (=> bs!403877 m!2172187))

(assert (=> bs!403877 m!2172187))

(declare-fun m!2172189 () Bool)

(assert (=> bs!403877 m!2172189))

(assert (=> b!1756543 d!536783))

(declare-fun b!1757144 () Bool)

(declare-fun e!1124570 () List!19398)

(assert (=> b!1757144 (= e!1124570 (Cons!19328 (head!4058 suffix!1421) Nil!19328))))

(declare-fun b!1757145 () Bool)

(assert (=> b!1757145 (= e!1124570 (Cons!19328 (h!24729 lt!678573) (++!5277 (t!163561 lt!678573) (Cons!19328 (head!4058 suffix!1421) Nil!19328))))))

(declare-fun d!536785 () Bool)

(declare-fun e!1124571 () Bool)

(assert (=> d!536785 e!1124571))

(declare-fun res!790629 () Bool)

(assert (=> d!536785 (=> (not res!790629) (not e!1124571))))

(declare-fun lt!678840 () List!19398)

(assert (=> d!536785 (= res!790629 (= (content!2784 lt!678840) ((_ map or) (content!2784 lt!678573) (content!2784 (Cons!19328 (head!4058 suffix!1421) Nil!19328)))))))

(assert (=> d!536785 (= lt!678840 e!1124570)))

(declare-fun c!286400 () Bool)

(assert (=> d!536785 (= c!286400 ((_ is Nil!19328) lt!678573))))

(assert (=> d!536785 (= (++!5277 lt!678573 (Cons!19328 (head!4058 suffix!1421) Nil!19328)) lt!678840)))

(declare-fun b!1757147 () Bool)

(assert (=> b!1757147 (= e!1124571 (or (not (= (Cons!19328 (head!4058 suffix!1421) Nil!19328) Nil!19328)) (= lt!678840 lt!678573)))))

(declare-fun b!1757146 () Bool)

(declare-fun res!790630 () Bool)

(assert (=> b!1757146 (=> (not res!790630) (not e!1124571))))

(assert (=> b!1757146 (= res!790630 (= (size!15357 lt!678840) (+ (size!15357 lt!678573) (size!15357 (Cons!19328 (head!4058 suffix!1421) Nil!19328)))))))

(assert (= (and d!536785 c!286400) b!1757144))

(assert (= (and d!536785 (not c!286400)) b!1757145))

(assert (= (and d!536785 res!790629) b!1757146))

(assert (= (and b!1757146 res!790630) b!1757147))

(declare-fun m!2172191 () Bool)

(assert (=> b!1757145 m!2172191))

(declare-fun m!2172193 () Bool)

(assert (=> d!536785 m!2172193))

(assert (=> d!536785 m!2171715))

(declare-fun m!2172195 () Bool)

(assert (=> d!536785 m!2172195))

(declare-fun m!2172197 () Bool)

(assert (=> b!1757146 m!2172197))

(assert (=> b!1757146 m!2171601))

(declare-fun m!2172199 () Bool)

(assert (=> b!1757146 m!2172199))

(assert (=> b!1756543 d!536785))

(declare-fun d!536787 () Bool)

(assert (=> d!536787 (= (head!4058 suffix!1421) (h!24729 suffix!1421))))

(assert (=> b!1756543 d!536787))

(declare-fun b!1757159 () Bool)

(declare-fun e!1124574 () Bool)

(declare-fun tp!499390 () Bool)

(declare-fun tp!499393 () Bool)

(assert (=> b!1757159 (= e!1124574 (and tp!499390 tp!499393))))

(declare-fun b!1757160 () Bool)

(declare-fun tp!499392 () Bool)

(assert (=> b!1757160 (= e!1124574 tp!499392)))

(declare-fun b!1757161 () Bool)

(declare-fun tp!499394 () Bool)

(declare-fun tp!499391 () Bool)

(assert (=> b!1757161 (= e!1124574 (and tp!499394 tp!499391))))

(declare-fun b!1757158 () Bool)

(assert (=> b!1757158 (= e!1124574 tp_is_empty!7805)))

(assert (=> b!1756524 (= tp!499313 e!1124574)))

(assert (= (and b!1756524 ((_ is ElementMatch!4781) (regex!3453 (rule!5467 token!523)))) b!1757158))

(assert (= (and b!1756524 ((_ is Concat!8325) (regex!3453 (rule!5467 token!523)))) b!1757159))

(assert (= (and b!1756524 ((_ is Star!4781) (regex!3453 (rule!5467 token!523)))) b!1757160))

(assert (= (and b!1756524 ((_ is Union!4781) (regex!3453 (rule!5467 token!523)))) b!1757161))

(declare-fun b!1757166 () Bool)

(declare-fun e!1124577 () Bool)

(declare-fun tp!499397 () Bool)

(assert (=> b!1757166 (= e!1124577 (and tp_is_empty!7805 tp!499397))))

(assert (=> b!1756518 (= tp!499314 e!1124577)))

(assert (= (and b!1756518 ((_ is Cons!19328) (originalCharacters!4267 token!523))) b!1757166))

(declare-fun b!1757168 () Bool)

(declare-fun e!1124578 () Bool)

(declare-fun tp!499398 () Bool)

(declare-fun tp!499401 () Bool)

(assert (=> b!1757168 (= e!1124578 (and tp!499398 tp!499401))))

(declare-fun b!1757169 () Bool)

(declare-fun tp!499400 () Bool)

(assert (=> b!1757169 (= e!1124578 tp!499400)))

(declare-fun b!1757170 () Bool)

(declare-fun tp!499402 () Bool)

(declare-fun tp!499399 () Bool)

(assert (=> b!1757170 (= e!1124578 (and tp!499402 tp!499399))))

(declare-fun b!1757167 () Bool)

(assert (=> b!1757167 (= e!1124578 tp_is_empty!7805)))

(assert (=> b!1756541 (= tp!499319 e!1124578)))

(assert (= (and b!1756541 ((_ is ElementMatch!4781) (regex!3453 rule!422))) b!1757167))

(assert (= (and b!1756541 ((_ is Concat!8325) (regex!3453 rule!422))) b!1757168))

(assert (= (and b!1756541 ((_ is Star!4781) (regex!3453 rule!422))) b!1757169))

(assert (= (and b!1756541 ((_ is Union!4781) (regex!3453 rule!422))) b!1757170))

(declare-fun b!1757179 () Bool)

(declare-fun tp!499410 () Bool)

(declare-fun e!1124583 () Bool)

(declare-fun tp!499411 () Bool)

(assert (=> b!1757179 (= e!1124583 (and (inv!25092 (left!15473 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588)))))) tp!499410 (inv!25092 (right!15803 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588)))))) tp!499411))))

(declare-fun b!1757181 () Bool)

(declare-fun e!1124584 () Bool)

(declare-fun tp!499409 () Bool)

(assert (=> b!1757181 (= e!1124584 tp!499409)))

(declare-fun b!1757180 () Bool)

(declare-fun inv!25099 (IArray!12863) Bool)

(assert (=> b!1757180 (= e!1124583 (and (inv!25099 (xs!9305 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588)))))) e!1124584))))

(assert (=> b!1756566 (= tp!499324 (and (inv!25092 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588))))) e!1124583))))

(assert (= (and b!1756566 ((_ is Node!6429) (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588)))))) b!1757179))

(assert (= b!1757180 b!1757181))

(assert (= (and b!1756566 ((_ is Leaf!9376) (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (value!108083 (_1!10875 lt!678588)))))) b!1757180))

(declare-fun m!2172201 () Bool)

(assert (=> b!1757179 m!2172201))

(declare-fun m!2172203 () Bool)

(assert (=> b!1757179 m!2172203))

(declare-fun m!2172205 () Bool)

(assert (=> b!1757180 m!2172205))

(assert (=> b!1756566 m!2171337))

(declare-fun b!1757182 () Bool)

(declare-fun tp!499413 () Bool)

(declare-fun e!1124585 () Bool)

(declare-fun tp!499414 () Bool)

(assert (=> b!1757182 (= e!1124585 (and (inv!25092 (left!15473 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586))))) tp!499413 (inv!25092 (right!15803 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586))))) tp!499414))))

(declare-fun b!1757184 () Bool)

(declare-fun e!1124586 () Bool)

(declare-fun tp!499412 () Bool)

(assert (=> b!1757184 (= e!1124586 tp!499412)))

(declare-fun b!1757183 () Bool)

(assert (=> b!1757183 (= e!1124585 (and (inv!25099 (xs!9305 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586))))) e!1124586))))

(assert (=> b!1756563 (= tp!499323 (and (inv!25092 (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586)))) e!1124585))))

(assert (= (and b!1756563 ((_ is Node!6429) (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586))))) b!1757182))

(assert (= b!1757183 b!1757184))

(assert (= (and b!1756563 ((_ is Leaf!9376) (c!286301 (dynLambda!9274 (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) (dynLambda!9275 (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))) lt!678586))))) b!1757183))

(declare-fun m!2172207 () Bool)

(assert (=> b!1757182 m!2172207))

(declare-fun m!2172209 () Bool)

(assert (=> b!1757182 m!2172209))

(declare-fun m!2172211 () Bool)

(assert (=> b!1757183 m!2172211))

(assert (=> b!1756563 m!2171331))

(declare-fun b!1757185 () Bool)

(declare-fun e!1124587 () Bool)

(declare-fun tp!499415 () Bool)

(assert (=> b!1757185 (= e!1124587 (and tp_is_empty!7805 tp!499415))))

(assert (=> b!1756537 (= tp!499320 e!1124587)))

(assert (= (and b!1756537 ((_ is Cons!19328) (t!163561 suffix!1421))) b!1757185))

(declare-fun b!1757196 () Bool)

(declare-fun b_free!48535 () Bool)

(declare-fun b_next!49239 () Bool)

(assert (=> b!1757196 (= b_free!48535 (not b_next!49239))))

(declare-fun t!163599 () Bool)

(declare-fun tb!105619 () Bool)

(assert (=> (and b!1757196 (= (toValue!4972 (transformation!3453 (h!24730 (t!163562 rules!3447)))) (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) t!163599) tb!105619))

(declare-fun result!127074 () Bool)

(assert (= result!127074 result!127010))

(assert (=> b!1756522 t!163599))

(assert (=> d!536779 t!163599))

(assert (=> d!536563 t!163599))

(assert (=> d!536555 t!163599))

(declare-fun tb!105621 () Bool)

(declare-fun t!163601 () Bool)

(assert (=> (and b!1757196 (= (toValue!4972 (transformation!3453 (h!24730 (t!163562 rules!3447)))) (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) t!163601) tb!105621))

(declare-fun result!127076 () Bool)

(assert (= result!127076 result!127030))

(assert (=> d!536563 t!163601))

(declare-fun b_and!132077 () Bool)

(declare-fun tp!499425 () Bool)

(assert (=> b!1757196 (= tp!499425 (and (=> t!163601 result!127076) (=> t!163599 result!127074) b_and!132077))))

(declare-fun b_free!48537 () Bool)

(declare-fun b_next!49241 () Bool)

(assert (=> b!1757196 (= b_free!48537 (not b_next!49241))))

(declare-fun t!163603 () Bool)

(declare-fun tb!105623 () Bool)

(assert (=> (and b!1757196 (= (toChars!4831 (transformation!3453 (h!24730 (t!163562 rules!3447)))) (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) t!163603) tb!105623))

(declare-fun result!127078 () Bool)

(assert (= result!127078 result!127002))

(assert (=> d!536779 t!163603))

(declare-fun t!163605 () Bool)

(declare-fun tb!105625 () Bool)

(assert (=> (and b!1757196 (= (toChars!4831 (transformation!3453 (h!24730 (t!163562 rules!3447)))) (toChars!4831 (transformation!3453 (rule!5467 token!523)))) t!163605) tb!105625))

(declare-fun result!127080 () Bool)

(assert (= result!127080 result!127024))

(assert (=> d!536589 t!163605))

(declare-fun tb!105627 () Bool)

(declare-fun t!163607 () Bool)

(assert (=> (and b!1757196 (= (toChars!4831 (transformation!3453 (h!24730 (t!163562 rules!3447)))) (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588))))) t!163607) tb!105627))

(declare-fun result!127082 () Bool)

(assert (= result!127082 result!127018))

(assert (=> d!536743 t!163607))

(assert (=> b!1756528 t!163607))

(assert (=> b!1756571 t!163605))

(assert (=> b!1756522 t!163603))

(declare-fun tp!499426 () Bool)

(declare-fun b_and!132079 () Bool)

(assert (=> b!1757196 (= tp!499426 (and (=> t!163607 result!127082) (=> t!163605 result!127080) (=> t!163603 result!127078) b_and!132079))))

(declare-fun e!1124598 () Bool)

(assert (=> b!1757196 (= e!1124598 (and tp!499425 tp!499426))))

(declare-fun b!1757195 () Bool)

(declare-fun e!1124597 () Bool)

(declare-fun tp!499424 () Bool)

(assert (=> b!1757195 (= e!1124597 (and tp!499424 (inv!25085 (tag!3811 (h!24730 (t!163562 rules!3447)))) (inv!25090 (transformation!3453 (h!24730 (t!163562 rules!3447)))) e!1124598))))

(declare-fun b!1757194 () Bool)

(declare-fun e!1124596 () Bool)

(declare-fun tp!499427 () Bool)

(assert (=> b!1757194 (= e!1124596 (and e!1124597 tp!499427))))

(assert (=> b!1756542 (= tp!499316 e!1124596)))

(assert (= b!1757195 b!1757196))

(assert (= b!1757194 b!1757195))

(assert (= (and b!1756542 ((_ is Cons!19329) (t!163562 rules!3447))) b!1757194))

(declare-fun m!2172213 () Bool)

(assert (=> b!1757195 m!2172213))

(declare-fun m!2172215 () Bool)

(assert (=> b!1757195 m!2172215))

(declare-fun b!1757198 () Bool)

(declare-fun e!1124600 () Bool)

(declare-fun tp!499428 () Bool)

(declare-fun tp!499431 () Bool)

(assert (=> b!1757198 (= e!1124600 (and tp!499428 tp!499431))))

(declare-fun b!1757199 () Bool)

(declare-fun tp!499430 () Bool)

(assert (=> b!1757199 (= e!1124600 tp!499430)))

(declare-fun b!1757200 () Bool)

(declare-fun tp!499432 () Bool)

(declare-fun tp!499429 () Bool)

(assert (=> b!1757200 (= e!1124600 (and tp!499432 tp!499429))))

(declare-fun b!1757197 () Bool)

(assert (=> b!1757197 (= e!1124600 tp_is_empty!7805)))

(assert (=> b!1756538 (= tp!499312 e!1124600)))

(assert (= (and b!1756538 ((_ is ElementMatch!4781) (regex!3453 (h!24730 rules!3447)))) b!1757197))

(assert (= (and b!1756538 ((_ is Concat!8325) (regex!3453 (h!24730 rules!3447)))) b!1757198))

(assert (= (and b!1756538 ((_ is Star!4781) (regex!3453 (h!24730 rules!3447)))) b!1757199))

(assert (= (and b!1756538 ((_ is Union!4781) (regex!3453 (h!24730 rules!3447)))) b!1757200))

(declare-fun b_lambda!56703 () Bool)

(assert (= b_lambda!56659 (or (and b!1756533 b_free!48521 (= (toChars!4831 (transformation!3453 (rule!5467 token!523))) (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))))) (and b!1756547 b_free!48525 (= (toChars!4831 (transformation!3453 (h!24730 rules!3447))) (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))))) (and b!1756534 b_free!48529 (= (toChars!4831 (transformation!3453 rule!422)) (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))))) (and b!1757196 b_free!48537 (= (toChars!4831 (transformation!3453 (h!24730 (t!163562 rules!3447)))) (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))))) b_lambda!56703)))

(declare-fun b_lambda!56705 () Bool)

(assert (= b_lambda!56669 (or (and b!1756533 b_free!48521) (and b!1756547 b_free!48525 (= (toChars!4831 (transformation!3453 (h!24730 rules!3447))) (toChars!4831 (transformation!3453 (rule!5467 token!523))))) (and b!1756534 b_free!48529 (= (toChars!4831 (transformation!3453 rule!422)) (toChars!4831 (transformation!3453 (rule!5467 token!523))))) (and b!1757196 b_free!48537 (= (toChars!4831 (transformation!3453 (h!24730 (t!163562 rules!3447)))) (toChars!4831 (transformation!3453 (rule!5467 token!523))))) b_lambda!56705)))

(declare-fun b_lambda!56707 () Bool)

(assert (= b_lambda!56661 (or (and b!1756533 b_free!48521) (and b!1756547 b_free!48525 (= (toChars!4831 (transformation!3453 (h!24730 rules!3447))) (toChars!4831 (transformation!3453 (rule!5467 token!523))))) (and b!1756534 b_free!48529 (= (toChars!4831 (transformation!3453 rule!422)) (toChars!4831 (transformation!3453 (rule!5467 token!523))))) (and b!1757196 b_free!48537 (= (toChars!4831 (transformation!3453 (h!24730 (t!163562 rules!3447)))) (toChars!4831 (transformation!3453 (rule!5467 token!523))))) b_lambda!56707)))

(declare-fun b_lambda!56709 () Bool)

(assert (= b_lambda!56655 (or (and b!1756533 b_free!48521 (= (toChars!4831 (transformation!3453 (rule!5467 token!523))) (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))))) (and b!1756547 b_free!48525 (= (toChars!4831 (transformation!3453 (h!24730 rules!3447))) (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))))) (and b!1756534 b_free!48529 (= (toChars!4831 (transformation!3453 rule!422)) (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))))) (and b!1757196 b_free!48537 (= (toChars!4831 (transformation!3453 (h!24730 (t!163562 rules!3447)))) (toChars!4831 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))))) b_lambda!56709)))

(declare-fun b_lambda!56711 () Bool)

(assert (= b_lambda!56657 (or (and b!1756533 b_free!48519 (= (toValue!4972 (transformation!3453 (rule!5467 token!523))) (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))))) (and b!1756547 b_free!48523 (= (toValue!4972 (transformation!3453 (h!24730 rules!3447))) (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))))) (and b!1756534 b_free!48527 (= (toValue!4972 (transformation!3453 rule!422)) (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))))) (and b!1757196 b_free!48535 (= (toValue!4972 (transformation!3453 (h!24730 (t!163562 rules!3447)))) (toValue!4972 (transformation!3453 (rule!5467 (_1!10875 lt!678588)))))) b_lambda!56711)))

(check-sat (not b!1756758) (not d!536765) (not b!1757112) (not d!536613) (not b!1756671) (not b!1756814) (not d!536781) (not b!1756809) (not b!1757161) (not b!1756672) b_and!132069 (not b!1756668) (not b_lambda!56699) (not d!536761) (not b!1757084) (not b_next!49223) (not b!1756573) (not b!1756717) (not b!1756716) (not d!536595) (not b!1757105) (not b_lambda!56665) (not d!536567) (not b!1757142) (not b!1757179) (not b!1757115) (not bm!110557) (not d!536631) (not b!1757087) tp_is_empty!7805 b_and!132077 (not b!1756788) (not b!1756707) (not b!1756674) (not d!536619) (not d!536779) (not d!536577) (not d!536553) (not b!1756571) (not b!1756808) (not b!1757053) (not b!1757108) (not b!1757069) (not b!1756720) (not b!1757183) (not d!536559) (not b_lambda!56707) (not b!1756718) (not b!1757145) (not tb!105585) (not b!1757051) (not b!1756675) (not b!1756744) (not d!536637) (not d!536741) (not b!1757109) (not d!536635) b_and!132079 (not b!1756623) (not b!1757089) (not b!1757119) (not b_lambda!56697) (not b!1757185) (not b!1757091) (not b!1757081) (not b_lambda!56701) (not b!1756637) (not b!1756727) (not b!1757118) (not d!536645) (not b!1757121) (not b!1756737) (not b!1756627) (not d!536589) (not b!1757113) (not d!536743) (not d!536771) (not b!1757088) (not tb!105591) (not b!1757075) (not d!536583) (not d!536621) (not b!1757132) (not d!536625) (not b!1757200) (not d!536549) (not b!1757104) (not b_lambda!56711) (not b_lambda!56663) (not b!1757103) (not b!1756673) (not d!536777) (not b_next!49231) (not d!536785) (not b!1756813) (not d!536551) (not d!536563) (not b!1757169) (not b!1756759) (not b!1756622) (not b!1756624) (not b!1757198) (not b!1756753) (not b!1756572) (not b!1756721) (not b!1756626) (not b!1757076) (not b!1757077) (not b!1757122) (not b!1756633) (not bm!110569) (not d!536747) (not b!1757083) (not b!1756670) (not b_next!49227) (not b!1757159) (not b!1757146) (not b!1757184) (not bm!110554) (not d!536597) (not b_next!49233) (not b!1756810) (not d!536579) (not b!1757195) (not b_next!49241) (not b!1756714) (not bm!110558) (not b_lambda!56667) (not b!1757143) (not b_next!49229) (not b!1756566) (not b!1757117) (not d!536745) (not b_lambda!56703) (not b!1757080) (not b!1757128) (not bm!110568) (not b_lambda!56705) (not d!536629) (not b!1756676) (not b!1757166) (not b!1756563) b_and!132075 (not d!536603) (not b_lambda!56709) (not d!536769) (not b_next!49225) (not b_next!49239) (not b!1757170) b_and!132071 (not b!1757110) (not d!536627) (not b!1757194) (not d!536751) (not b!1757070) b_and!132067 (not d!536783) (not b!1757078) (not b!1757199) (not b!1757073) (not d!536607) (not d!536599) (not b!1757052) (not b!1757068) (not b!1757180) b_and!132073 (not b!1757181) (not b!1756751) (not b!1757168) b_and!132065 (not b!1757079) (not d!536775) (not b!1756812) (not d!536571) (not b!1757160) (not b!1757182) (not b!1756787))
(check-sat b_and!132077 b_and!132079 (not b_next!49231) (not b_next!49227) (not b_next!49233) b_and!132075 b_and!132071 b_and!132067 b_and!132069 (not b_next!49223) (not b_next!49241) (not b_next!49229) (not b_next!49225) (not b_next!49239) b_and!132065 b_and!132073)
