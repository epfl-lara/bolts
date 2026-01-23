; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!509268 () Bool)

(assert start!509268)

(declare-fun b!4870516 () Bool)

(declare-fun b_free!130699 () Bool)

(declare-fun b_next!131489 () Bool)

(assert (=> b!4870516 (= b_free!130699 (not b_next!131489))))

(declare-fun tp!1370395 () Bool)

(declare-fun b_and!342979 () Bool)

(assert (=> b!4870516 (= tp!1370395 b_and!342979)))

(declare-fun b_free!130701 () Bool)

(declare-fun b_next!131491 () Bool)

(assert (=> b!4870516 (= b_free!130701 (not b_next!131491))))

(declare-fun tp!1370393 () Bool)

(declare-fun b_and!342981 () Bool)

(assert (=> b!4870516 (= tp!1370393 b_and!342981)))

(declare-fun b!4870512 () Bool)

(declare-fun e!3044680 () Bool)

(declare-fun e!3044686 () Bool)

(assert (=> b!4870512 (= e!3044680 e!3044686)))

(declare-fun res!2079083 () Bool)

(assert (=> b!4870512 (=> (not res!2079083) (not e!3044686))))

(declare-datatypes ((C!26420 0))(
  ( (C!26421 (val!22532 Int)) )
))
(declare-datatypes ((List!56080 0))(
  ( (Nil!55956) (Cons!55956 (h!62404 C!26420) (t!364150 List!56080)) )
))
(declare-fun lt!1995664 () List!56080)

(declare-fun lt!1995663 () List!56080)

(assert (=> b!4870512 (= res!2079083 (= lt!1995664 lt!1995663))))

(declare-datatypes ((IArray!29219 0))(
  ( (IArray!29220 (innerList!14667 List!56080)) )
))
(declare-datatypes ((Conc!14579 0))(
  ( (Node!14579 (left!40645 Conc!14579) (right!40975 Conc!14579) (csize!29388 Int) (cheight!14790 Int)) (Leaf!24308 (xs!17887 IArray!29219) (csize!29389 Int)) (Empty!14579) )
))
(declare-datatypes ((BalanceConc!28600 0))(
  ( (BalanceConc!28601 (c!828408 Conc!14579)) )
))
(declare-fun input!585 () BalanceConc!28600)

(declare-fun list!17502 (BalanceConc!28600) List!56080)

(assert (=> b!4870512 (= lt!1995663 (list!17502 input!585))))

(declare-datatypes ((List!56081 0))(
  ( (Nil!55957) (Cons!55957 (h!62405 (_ BitVec 16)) (t!364151 List!56081)) )
))
(declare-datatypes ((TokenValue!8346 0))(
  ( (FloatLiteralValue!16692 (text!58867 List!56081)) (TokenValueExt!8345 (__x!33985 Int)) (Broken!41730 (value!258142 List!56081)) (Object!8469) (End!8346) (Def!8346) (Underscore!8346) (Match!8346) (Else!8346) (Error!8346) (Case!8346) (If!8346) (Extends!8346) (Abstract!8346) (Class!8346) (Val!8346) (DelimiterValue!16692 (del!8406 List!56081)) (KeywordValue!8352 (value!258143 List!56081)) (CommentValue!16692 (value!258144 List!56081)) (WhitespaceValue!16692 (value!258145 List!56081)) (IndentationValue!8346 (value!258146 List!56081)) (String!63147) (Int32!8346) (Broken!41731 (value!258147 List!56081)) (Boolean!8347) (Unit!145965) (OperatorValue!8349 (op!8406 List!56081)) (IdentifierValue!16692 (value!258148 List!56081)) (IdentifierValue!16693 (value!258149 List!56081)) (WhitespaceValue!16693 (value!258150 List!56081)) (True!16692) (False!16692) (Broken!41732 (value!258151 List!56081)) (Broken!41733 (value!258152 List!56081)) (True!16693) (RightBrace!8346) (RightBracket!8346) (Colon!8346) (Null!8346) (Comma!8346) (LeftBracket!8346) (False!16693) (LeftBrace!8346) (ImaginaryLiteralValue!8346 (text!58868 List!56081)) (StringLiteralValue!25038 (value!258153 List!56081)) (EOFValue!8346 (value!258154 List!56081)) (IdentValue!8346 (value!258155 List!56081)) (DelimiterValue!16693 (value!258156 List!56081)) (DedentValue!8346 (value!258157 List!56081)) (NewLineValue!8346 (value!258158 List!56081)) (IntegerValue!25038 (value!258159 (_ BitVec 32)) (text!58869 List!56081)) (IntegerValue!25039 (value!258160 Int) (text!58870 List!56081)) (Times!8346) (Or!8346) (Equal!8346) (Minus!8346) (Broken!41734 (value!258161 List!56081)) (And!8346) (Div!8346) (LessEqual!8346) (Mod!8346) (Concat!21457) (Not!8346) (Plus!8346) (SpaceValue!8346 (value!258162 List!56081)) (IntegerValue!25040 (value!258163 Int) (text!58871 List!56081)) (StringLiteralValue!25039 (text!58872 List!56081)) (FloatLiteralValue!16693 (text!58873 List!56081)) (BytesLiteralValue!8346 (value!258164 List!56081)) (CommentValue!16693 (value!258165 List!56081)) (StringLiteralValue!25040 (value!258166 List!56081)) (ErrorTokenValue!8346 (msg!8407 List!56081)) )
))
(declare-datatypes ((Regex!13111 0))(
  ( (ElementMatch!13111 (c!828409 C!26420)) (Concat!21458 (regOne!26734 Regex!13111) (regTwo!26734 Regex!13111)) (EmptyExpr!13111) (Star!13111 (reg!13440 Regex!13111)) (EmptyLang!13111) (Union!13111 (regOne!26735 Regex!13111) (regTwo!26735 Regex!13111)) )
))
(declare-datatypes ((String!63148 0))(
  ( (String!63149 (value!258167 String)) )
))
(declare-datatypes ((TokenValueInjection!16000 0))(
  ( (TokenValueInjection!16001 (toValue!10907 Int) (toChars!10766 Int)) )
))
(declare-datatypes ((Rule!15872 0))(
  ( (Rule!15873 (regex!8036 Regex!13111) (tag!8900 String!63148) (isSeparator!8036 Bool) (transformation!8036 TokenValueInjection!16000)) )
))
(declare-datatypes ((Token!14656 0))(
  ( (Token!14657 (value!258168 TokenValue!8346) (rule!11174 Rule!15872) (size!36884 Int) (originalCharacters!8359 List!56080)) )
))
(declare-datatypes ((tuple2!59810 0))(
  ( (tuple2!59811 (_1!33208 Token!14656) (_2!33208 BalanceConc!28600)) )
))
(declare-datatypes ((Option!13785 0))(
  ( (None!13784) (Some!13784 (v!49706 tuple2!59810)) )
))
(declare-fun lt!1995666 () Option!13785)

(declare-fun ++!12189 (List!56080 List!56080) List!56080)

(declare-fun charsOf!5339 (Token!14656) BalanceConc!28600)

(assert (=> b!4870512 (= lt!1995664 (++!12189 (list!17502 (charsOf!5339 (_1!33208 (v!49706 lt!1995666)))) (list!17502 (_2!33208 (v!49706 lt!1995666)))))))

(declare-datatypes ((LexerInterface!7628 0))(
  ( (LexerInterfaceExt!7625 (__x!33986 Int)) (Lexer!7626) )
))
(declare-fun thiss!11460 () LexerInterface!7628)

(declare-datatypes ((List!56082 0))(
  ( (Nil!55958) (Cons!55958 (h!62406 Rule!15872) (t!364152 List!56082)) )
))
(declare-fun rules!1164 () List!56082)

(declare-datatypes ((List!56083 0))(
  ( (Nil!55959) (Cons!55959 (h!62407 Token!14656) (t!364153 List!56083)) )
))
(declare-datatypes ((IArray!29221 0))(
  ( (IArray!29222 (innerList!14668 List!56083)) )
))
(declare-datatypes ((Conc!14580 0))(
  ( (Node!14580 (left!40646 Conc!14580) (right!40976 Conc!14580) (csize!29390 Int) (cheight!14791 Int)) (Leaf!24309 (xs!17888 IArray!29221) (csize!29391 Int)) (Empty!14580) )
))
(declare-datatypes ((BalanceConc!28602 0))(
  ( (BalanceConc!28603 (c!828410 Conc!14580)) )
))
(declare-datatypes ((tuple2!59812 0))(
  ( (tuple2!59813 (_1!33209 BalanceConc!28602) (_2!33209 BalanceConc!28600)) )
))
(declare-fun lt!1995662 () tuple2!59812)

(declare-fun lexRec!847 (LexerInterface!7628 List!56082 BalanceConc!28600) tuple2!59812)

(assert (=> b!4870512 (= lt!1995662 (lexRec!847 thiss!11460 rules!1164 (_2!33208 (v!49706 lt!1995666))))))

(declare-fun b!4870513 () Bool)

(assert (=> b!4870513 (= e!3044686 false)))

(declare-fun lt!1995665 () Bool)

(declare-fun e!3044682 () Bool)

(assert (=> b!4870513 (= lt!1995665 e!3044682)))

(declare-fun c!828407 () Bool)

(declare-fun lt!1995661 () BalanceConc!28602)

(declare-fun size!36885 (BalanceConc!28602) Int)

(assert (=> b!4870513 (= c!828407 (> (size!36885 lt!1995661) 0))))

(declare-fun prepend!1396 (BalanceConc!28602 Token!14656) BalanceConc!28602)

(assert (=> b!4870513 (= lt!1995661 (prepend!1396 (_1!33209 lt!1995662) (_1!33208 (v!49706 lt!1995666))))))

(declare-fun b!4870514 () Bool)

(declare-fun e!3044685 () Bool)

(assert (=> b!4870514 (= e!3044682 e!3044685)))

(declare-fun res!2079078 () Bool)

(declare-fun size!36886 (BalanceConc!28600) Int)

(assert (=> b!4870514 (= res!2079078 (>= (size!36886 (_2!33209 lt!1995662)) (size!36886 input!585)))))

(assert (=> b!4870514 (=> res!2079078 e!3044685)))

(declare-fun b!4870515 () Bool)

(assert (=> b!4870515 (= e!3044682 (not (= (list!17502 (_2!33209 lt!1995662)) lt!1995663)))))

(declare-fun b!4870517 () Bool)

(declare-fun e!3044683 () Bool)

(declare-fun tp!1370394 () Bool)

(declare-fun inv!71876 (Conc!14579) Bool)

(assert (=> b!4870517 (= e!3044683 (and (inv!71876 (c!828408 input!585)) tp!1370394))))

(declare-fun b!4870518 () Bool)

(declare-fun e!3044684 () Bool)

(assert (=> b!4870518 (= e!3044684 e!3044680)))

(declare-fun res!2079082 () Bool)

(assert (=> b!4870518 (=> (not res!2079082) (not e!3044680))))

(get-info :version)

(assert (=> b!4870518 (= res!2079082 ((_ is Some!13784) lt!1995666))))

(declare-fun maxPrefixZipperSequence!1227 (LexerInterface!7628 List!56082 BalanceConc!28600) Option!13785)

(assert (=> b!4870518 (= lt!1995666 (maxPrefixZipperSequence!1227 thiss!11460 rules!1164 input!585))))

(declare-fun e!3044681 () Bool)

(declare-fun e!3044678 () Bool)

(declare-fun b!4870519 () Bool)

(declare-fun tp!1370391 () Bool)

(declare-fun inv!71872 (String!63148) Bool)

(declare-fun inv!71877 (TokenValueInjection!16000) Bool)

(assert (=> b!4870519 (= e!3044681 (and tp!1370391 (inv!71872 (tag!8900 (h!62406 rules!1164))) (inv!71877 (transformation!8036 (h!62406 rules!1164))) e!3044678))))

(declare-fun b!4870520 () Bool)

(declare-fun e!3044679 () Bool)

(declare-fun tp!1370392 () Bool)

(assert (=> b!4870520 (= e!3044679 (and e!3044681 tp!1370392))))

(declare-fun b!4870521 () Bool)

(declare-fun res!2079081 () Bool)

(assert (=> b!4870521 (=> (not res!2079081) (not e!3044684))))

(declare-fun rulesInvariant!6726 (LexerInterface!7628 List!56082) Bool)

(assert (=> b!4870521 (= res!2079081 (rulesInvariant!6726 thiss!11460 rules!1164))))

(declare-fun b!4870522 () Bool)

(declare-fun isEmpty!29948 (BalanceConc!28602) Bool)

(assert (=> b!4870522 (= e!3044685 (isEmpty!29948 lt!1995661))))

(declare-fun b!4870523 () Bool)

(declare-fun res!2079079 () Bool)

(assert (=> b!4870523 (=> (not res!2079079) (not e!3044684))))

(declare-fun isEmpty!29949 (List!56082) Bool)

(assert (=> b!4870523 (= res!2079079 (not (isEmpty!29949 rules!1164)))))

(declare-fun res!2079080 () Bool)

(assert (=> start!509268 (=> (not res!2079080) (not e!3044684))))

(assert (=> start!509268 (= res!2079080 ((_ is Lexer!7626) thiss!11460))))

(assert (=> start!509268 e!3044684))

(assert (=> start!509268 true))

(assert (=> start!509268 e!3044679))

(declare-fun inv!71878 (BalanceConc!28600) Bool)

(assert (=> start!509268 (and (inv!71878 input!585) e!3044683)))

(assert (=> b!4870516 (= e!3044678 (and tp!1370395 tp!1370393))))

(assert (= (and start!509268 res!2079080) b!4870523))

(assert (= (and b!4870523 res!2079079) b!4870521))

(assert (= (and b!4870521 res!2079081) b!4870518))

(assert (= (and b!4870518 res!2079082) b!4870512))

(assert (= (and b!4870512 res!2079083) b!4870513))

(assert (= (and b!4870513 c!828407) b!4870514))

(assert (= (and b!4870513 (not c!828407)) b!4870515))

(assert (= (and b!4870514 (not res!2079078)) b!4870522))

(assert (= b!4870519 b!4870516))

(assert (= b!4870520 b!4870519))

(assert (= (and start!509268 ((_ is Cons!55958) rules!1164)) b!4870520))

(assert (= start!509268 b!4870517))

(declare-fun m!5870774 () Bool)

(assert (=> b!4870513 m!5870774))

(declare-fun m!5870776 () Bool)

(assert (=> b!4870513 m!5870776))

(declare-fun m!5870778 () Bool)

(assert (=> b!4870515 m!5870778))

(declare-fun m!5870780 () Bool)

(assert (=> b!4870512 m!5870780))

(declare-fun m!5870782 () Bool)

(assert (=> b!4870512 m!5870782))

(assert (=> b!4870512 m!5870782))

(declare-fun m!5870784 () Bool)

(assert (=> b!4870512 m!5870784))

(declare-fun m!5870786 () Bool)

(assert (=> b!4870512 m!5870786))

(assert (=> b!4870512 m!5870784))

(assert (=> b!4870512 m!5870780))

(declare-fun m!5870788 () Bool)

(assert (=> b!4870512 m!5870788))

(declare-fun m!5870790 () Bool)

(assert (=> b!4870512 m!5870790))

(declare-fun m!5870792 () Bool)

(assert (=> b!4870523 m!5870792))

(declare-fun m!5870794 () Bool)

(assert (=> b!4870514 m!5870794))

(declare-fun m!5870796 () Bool)

(assert (=> b!4870514 m!5870796))

(declare-fun m!5870798 () Bool)

(assert (=> b!4870519 m!5870798))

(declare-fun m!5870800 () Bool)

(assert (=> b!4870519 m!5870800))

(declare-fun m!5870802 () Bool)

(assert (=> b!4870521 m!5870802))

(declare-fun m!5870804 () Bool)

(assert (=> b!4870517 m!5870804))

(declare-fun m!5870806 () Bool)

(assert (=> b!4870522 m!5870806))

(declare-fun m!5870808 () Bool)

(assert (=> start!509268 m!5870808))

(declare-fun m!5870810 () Bool)

(assert (=> b!4870518 m!5870810))

(check-sat (not b!4870523) (not b!4870517) b_and!342979 (not b!4870520) (not b!4870512) (not b!4870513) (not b!4870521) (not start!509268) b_and!342981 (not b_next!131489) (not b!4870522) (not b!4870518) (not b!4870519) (not b!4870515) (not b_next!131491) (not b!4870514))
(check-sat b_and!342981 b_and!342979 (not b_next!131489) (not b_next!131491))
