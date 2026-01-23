; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!264996 () Bool)

(assert start!264996)

(declare-fun b!2732541 () Bool)

(declare-fun b_free!76793 () Bool)

(declare-fun b_next!77497 () Bool)

(assert (=> b!2732541 (= b_free!76793 (not b_next!77497))))

(declare-fun tp!860277 () Bool)

(declare-fun b_and!201037 () Bool)

(assert (=> b!2732541 (= tp!860277 b_and!201037)))

(declare-fun b_free!76795 () Bool)

(declare-fun b_next!77499 () Bool)

(assert (=> b!2732541 (= b_free!76795 (not b_next!77499))))

(declare-fun tp!860278 () Bool)

(declare-fun b_and!201039 () Bool)

(assert (=> b!2732541 (= tp!860278 b_and!201039)))

(declare-datatypes ((C!16080 0))(
  ( (C!16081 (val!9974 Int)) )
))
(declare-datatypes ((List!31509 0))(
  ( (Nil!31409) (Cons!31409 (h!36829 C!16080) (t!227033 List!31509)) )
))
(declare-fun lt!967213 () List!31509)

(declare-fun b!2732524 () Bool)

(declare-fun e!1721148 () Bool)

(declare-datatypes ((LexerInterface!4405 0))(
  ( (LexerInterfaceExt!4402 (__x!20197 Int)) (Lexer!4403) )
))
(declare-fun thiss!11556 () LexerInterface!4405)

(declare-fun lt!967220 () List!31509)

(declare-datatypes ((List!31510 0))(
  ( (Nil!31410) (Cons!31410 (h!36830 (_ BitVec 16)) (t!227034 List!31510)) )
))
(declare-datatypes ((TokenValue!5031 0))(
  ( (FloatLiteralValue!10062 (text!35662 List!31510)) (TokenValueExt!5030 (__x!20198 Int)) (Broken!25155 (value!154643 List!31510)) (Object!5130) (End!5031) (Def!5031) (Underscore!5031) (Match!5031) (Else!5031) (Error!5031) (Case!5031) (If!5031) (Extends!5031) (Abstract!5031) (Class!5031) (Val!5031) (DelimiterValue!10062 (del!5091 List!31510)) (KeywordValue!5037 (value!154644 List!31510)) (CommentValue!10062 (value!154645 List!31510)) (WhitespaceValue!10062 (value!154646 List!31510)) (IndentationValue!5031 (value!154647 List!31510)) (String!35054) (Int32!5031) (Broken!25156 (value!154648 List!31510)) (Boolean!5032) (Unit!45425) (OperatorValue!5034 (op!5091 List!31510)) (IdentifierValue!10062 (value!154649 List!31510)) (IdentifierValue!10063 (value!154650 List!31510)) (WhitespaceValue!10063 (value!154651 List!31510)) (True!10062) (False!10062) (Broken!25157 (value!154652 List!31510)) (Broken!25158 (value!154653 List!31510)) (True!10063) (RightBrace!5031) (RightBracket!5031) (Colon!5031) (Null!5031) (Comma!5031) (LeftBracket!5031) (False!10063) (LeftBrace!5031) (ImaginaryLiteralValue!5031 (text!35663 List!31510)) (StringLiteralValue!15093 (value!154654 List!31510)) (EOFValue!5031 (value!154655 List!31510)) (IdentValue!5031 (value!154656 List!31510)) (DelimiterValue!10063 (value!154657 List!31510)) (DedentValue!5031 (value!154658 List!31510)) (NewLineValue!5031 (value!154659 List!31510)) (IntegerValue!15093 (value!154660 (_ BitVec 32)) (text!35664 List!31510)) (IntegerValue!15094 (value!154661 Int) (text!35665 List!31510)) (Times!5031) (Or!5031) (Equal!5031) (Minus!5031) (Broken!25159 (value!154662 List!31510)) (And!5031) (Div!5031) (LessEqual!5031) (Mod!5031) (Concat!12992) (Not!5031) (Plus!5031) (SpaceValue!5031 (value!154663 List!31510)) (IntegerValue!15095 (value!154664 Int) (text!35666 List!31510)) (StringLiteralValue!15094 (text!35667 List!31510)) (FloatLiteralValue!10063 (text!35668 List!31510)) (BytesLiteralValue!5031 (value!154665 List!31510)) (CommentValue!10063 (value!154666 List!31510)) (StringLiteralValue!15095 (value!154667 List!31510)) (ErrorTokenValue!5031 (msg!5092 List!31510)) )
))
(declare-datatypes ((IArray!19695 0))(
  ( (IArray!19696 (innerList!9905 List!31509)) )
))
(declare-datatypes ((Conc!9845 0))(
  ( (Node!9845 (left!24151 Conc!9845) (right!24481 Conc!9845) (csize!19920 Int) (cheight!10056 Int)) (Leaf!14994 (xs!12936 IArray!19695) (csize!19921 Int)) (Empty!9845) )
))
(declare-datatypes ((BalanceConc!19304 0))(
  ( (BalanceConc!19305 (c!442557 Conc!9845)) )
))
(declare-datatypes ((Regex!7961 0))(
  ( (ElementMatch!7961 (c!442558 C!16080)) (Concat!12993 (regOne!16434 Regex!7961) (regTwo!16434 Regex!7961)) (EmptyExpr!7961) (Star!7961 (reg!8290 Regex!7961)) (EmptyLang!7961) (Union!7961 (regOne!16435 Regex!7961) (regTwo!16435 Regex!7961)) )
))
(declare-datatypes ((String!35055 0))(
  ( (String!35056 (value!154668 String)) )
))
(declare-datatypes ((TokenValueInjection!9502 0))(
  ( (TokenValueInjection!9503 (toValue!6799 Int) (toChars!6658 Int)) )
))
(declare-datatypes ((Rule!9418 0))(
  ( (Rule!9419 (regex!4809 Regex!7961) (tag!5313 String!35055) (isSeparator!4809 Bool) (transformation!4809 TokenValueInjection!9502)) )
))
(declare-datatypes ((List!31511 0))(
  ( (Nil!31411) (Cons!31411 (h!36831 Rule!9418) (t!227035 List!31511)) )
))
(declare-fun rules!1182 () List!31511)

(declare-datatypes ((Token!9080 0))(
  ( (Token!9081 (value!154669 TokenValue!5031) (rule!7251 Rule!9418) (size!24248 Int) (originalCharacters!5571 List!31509)) )
))
(declare-datatypes ((List!31512 0))(
  ( (Nil!31412) (Cons!31412 (h!36832 Token!9080) (t!227036 List!31512)) )
))
(declare-fun lt!967218 () List!31512)

(declare-datatypes ((tuple2!31146 0))(
  ( (tuple2!31147 (_1!18205 List!31512) (_2!18205 List!31509)) )
))
(declare-fun lexList!1234 (LexerInterface!4405 List!31511 List!31509) tuple2!31146)

(assert (=> b!2732524 (= e!1721148 (= (lexList!1234 thiss!11556 rules!1182 lt!967220) (tuple2!31147 lt!967218 lt!967213)))))

(declare-fun b!2732526 () Bool)

(declare-fun e!1721146 () Bool)

(declare-fun totalInput!328 () BalanceConc!19304)

(declare-fun tp!860272 () Bool)

(declare-fun inv!42701 (Conc!9845) Bool)

(assert (=> b!2732526 (= e!1721146 (and (inv!42701 (c!442557 totalInput!328)) tp!860272))))

(declare-fun b!2732527 () Bool)

(declare-fun res!1147346 () Bool)

(declare-fun e!1721151 () Bool)

(assert (=> b!2732527 (=> (not res!1147346) (not e!1721151))))

(declare-fun rulesInvariant!3890 (LexerInterface!4405 List!31511) Bool)

(assert (=> b!2732527 (= res!1147346 (rulesInvariant!3890 thiss!11556 rules!1182))))

(declare-fun b!2732528 () Bool)

(declare-fun res!1147352 () Bool)

(declare-fun e!1721149 () Bool)

(assert (=> b!2732528 (=> (not res!1147352) (not e!1721149))))

(declare-datatypes ((IArray!19697 0))(
  ( (IArray!19698 (innerList!9906 List!31512)) )
))
(declare-datatypes ((Conc!9846 0))(
  ( (Node!9846 (left!24152 Conc!9846) (right!24482 Conc!9846) (csize!19922 Int) (cheight!10057 Int)) (Leaf!14995 (xs!12937 IArray!19697) (csize!19923 Int)) (Empty!9846) )
))
(declare-datatypes ((BalanceConc!19306 0))(
  ( (BalanceConc!19307 (c!442559 Conc!9846)) )
))
(declare-datatypes ((tuple2!31148 0))(
  ( (tuple2!31149 (_1!18206 BalanceConc!19306) (_2!18206 BalanceConc!19304)) )
))
(declare-fun lt!967214 () tuple2!31148)

(declare-fun isEmpty!17958 (List!31509) Bool)

(declare-fun list!11932 (BalanceConc!19304) List!31509)

(assert (=> b!2732528 (= res!1147352 (isEmpty!17958 (list!11932 (_2!18206 lt!967214))))))

(declare-fun e!1721140 () Bool)

(declare-fun tp!860274 () Bool)

(declare-fun b!2732529 () Bool)

(declare-fun e!1721144 () Bool)

(declare-fun inv!42695 (String!35055) Bool)

(declare-fun inv!42702 (TokenValueInjection!9502) Bool)

(assert (=> b!2732529 (= e!1721140 (and tp!860274 (inv!42695 (tag!5313 (h!36831 rules!1182))) (inv!42702 (transformation!4809 (h!36831 rules!1182))) e!1721144))))

(declare-fun b!2732530 () Bool)

(declare-fun e!1721152 () Bool)

(declare-fun input!603 () BalanceConc!19304)

(declare-fun tp!860273 () Bool)

(assert (=> b!2732530 (= e!1721152 (and (inv!42701 (c!442557 input!603)) tp!860273))))

(declare-fun b!2732531 () Bool)

(declare-fun e!1721153 () Bool)

(assert (=> b!2732531 (= e!1721149 e!1721153)))

(declare-fun res!1147349 () Bool)

(assert (=> b!2732531 (=> (not res!1147349) (not e!1721153))))

(declare-fun lt!967216 () tuple2!31148)

(declare-fun lt!967219 () tuple2!31148)

(declare-fun acc!331 () BalanceConc!19306)

(declare-fun list!11933 (BalanceConc!19306) List!31512)

(declare-fun ++!7841 (BalanceConc!19306 BalanceConc!19306) BalanceConc!19306)

(assert (=> b!2732531 (= res!1147349 (= (list!11933 (_1!18206 lt!967216)) (list!11933 (++!7841 acc!331 (_1!18206 lt!967219)))))))

(declare-fun lexRec!665 (LexerInterface!4405 List!31511 BalanceConc!19304) tuple2!31148)

(assert (=> b!2732531 (= lt!967219 (lexRec!665 thiss!11556 rules!1182 input!603))))

(assert (=> b!2732531 (= lt!967216 (lexRec!665 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2732532 () Bool)

(declare-fun e!1721143 () Bool)

(assert (=> b!2732532 (= e!1721151 e!1721143)))

(declare-fun res!1147351 () Bool)

(assert (=> b!2732532 (=> (not res!1147351) (not e!1721143))))

(declare-fun lt!967210 () List!31509)

(declare-fun ++!7842 (List!31509 List!31509) List!31509)

(assert (=> b!2732532 (= res!1147351 (= (list!11932 totalInput!328) (++!7842 lt!967210 (list!11932 input!603))))))

(declare-fun treated!9 () BalanceConc!19304)

(assert (=> b!2732532 (= lt!967210 (list!11932 treated!9))))

(declare-fun b!2732533 () Bool)

(assert (=> b!2732533 (= e!1721143 e!1721149)))

(declare-fun res!1147350 () Bool)

(assert (=> b!2732533 (=> (not res!1147350) (not e!1721149))))

(declare-fun lt!967207 () List!31512)

(declare-fun lt!967205 () List!31512)

(assert (=> b!2732533 (= res!1147350 (= lt!967207 lt!967205))))

(assert (=> b!2732533 (= lt!967205 (list!11933 acc!331))))

(assert (=> b!2732533 (= lt!967207 (list!11933 (_1!18206 lt!967214)))))

(assert (=> b!2732533 (= lt!967214 (lexRec!665 thiss!11556 rules!1182 treated!9))))

(declare-fun b!2732534 () Bool)

(declare-fun e!1721142 () Bool)

(declare-fun tp!860275 () Bool)

(assert (=> b!2732534 (= e!1721142 (and (inv!42701 (c!442557 treated!9)) tp!860275))))

(declare-fun b!2732525 () Bool)

(declare-fun res!1147348 () Bool)

(assert (=> b!2732525 (=> res!1147348 e!1721148)))

(declare-fun lt!967204 () List!31512)

(declare-fun lt!967217 () List!31509)

(declare-fun ++!7843 (List!31512 List!31512) List!31512)

(assert (=> b!2732525 (= res!1147348 (not (= (lexList!1234 thiss!11556 rules!1182 lt!967217) (tuple2!31147 (++!7843 lt!967204 lt!967218) lt!967213))))))

(declare-fun res!1147343 () Bool)

(assert (=> start!264996 (=> (not res!1147343) (not e!1721151))))

(get-info :version)

(assert (=> start!264996 (= res!1147343 ((_ is Lexer!4403) thiss!11556))))

(assert (=> start!264996 e!1721151))

(declare-fun inv!42703 (BalanceConc!19304) Bool)

(assert (=> start!264996 (and (inv!42703 treated!9) e!1721142)))

(assert (=> start!264996 (and (inv!42703 input!603) e!1721152)))

(assert (=> start!264996 true))

(declare-fun e!1721147 () Bool)

(assert (=> start!264996 e!1721147))

(assert (=> start!264996 (and (inv!42703 totalInput!328) e!1721146)))

(declare-fun e!1721141 () Bool)

(declare-fun inv!42704 (BalanceConc!19306) Bool)

(assert (=> start!264996 (and (inv!42704 acc!331) e!1721141)))

(declare-fun b!2732535 () Bool)

(declare-fun tp!860276 () Bool)

(assert (=> b!2732535 (= e!1721147 (and e!1721140 tp!860276))))

(declare-fun b!2732536 () Bool)

(declare-fun res!1147344 () Bool)

(assert (=> b!2732536 (=> res!1147344 e!1721148)))

(declare-fun lt!967211 () List!31509)

(assert (=> b!2732536 (= res!1147344 (isEmpty!17958 lt!967211))))

(declare-fun b!2732537 () Bool)

(declare-fun e!1721150 () Bool)

(assert (=> b!2732537 (= e!1721150 (not e!1721148))))

(declare-fun res!1147347 () Bool)

(assert (=> b!2732537 (=> res!1147347 e!1721148)))

(declare-fun isEmpty!17959 (List!31512) Bool)

(assert (=> b!2732537 (= res!1147347 (isEmpty!17959 lt!967204))))

(declare-fun lt!967215 () tuple2!31148)

(assert (=> b!2732537 (= lt!967213 (list!11932 (_2!18206 lt!967215)))))

(declare-datatypes ((tuple2!31150 0))(
  ( (tuple2!31151 (_1!18207 Token!9080) (_2!18207 BalanceConc!19304)) )
))
(declare-datatypes ((Option!6211 0))(
  ( (None!6210) (Some!6210 (v!33084 tuple2!31150)) )
))
(declare-fun lt!967212 () Option!6211)

(declare-fun append!839 (BalanceConc!19306 Token!9080) BalanceConc!19306)

(assert (=> b!2732537 (= lt!967204 (list!11933 (append!839 acc!331 (_1!18207 (v!33084 lt!967212)))))))

(declare-fun lt!967206 () List!31512)

(assert (=> b!2732537 (= (++!7843 (++!7843 lt!967205 lt!967206) lt!967218) (++!7843 lt!967205 (++!7843 lt!967206 lt!967218)))))

(declare-datatypes ((Unit!45426 0))(
  ( (Unit!45427) )
))
(declare-fun lt!967208 () Unit!45426)

(declare-fun lemmaConcatAssociativity!1641 (List!31512 List!31512 List!31512) Unit!45426)

(assert (=> b!2732537 (= lt!967208 (lemmaConcatAssociativity!1641 lt!967205 lt!967206 lt!967218))))

(assert (=> b!2732537 (= lt!967218 (list!11933 (_1!18206 lt!967215)))))

(assert (=> b!2732537 (= lt!967206 (Cons!31412 (_1!18207 (v!33084 lt!967212)) Nil!31412))))

(declare-fun e!1721145 () Bool)

(assert (=> b!2732537 e!1721145))

(declare-fun res!1147340 () Bool)

(assert (=> b!2732537 (=> (not res!1147340) (not e!1721145))))

(declare-fun lt!967209 () List!31509)

(assert (=> b!2732537 (= res!1147340 (= lt!967217 (++!7842 lt!967210 lt!967209)))))

(assert (=> b!2732537 (= lt!967217 (++!7842 lt!967211 lt!967220))))

(declare-fun lt!967222 () List!31509)

(assert (=> b!2732537 (= lt!967209 (++!7842 lt!967222 lt!967220))))

(assert (=> b!2732537 (= lt!967211 (++!7842 lt!967210 lt!967222))))

(declare-fun lt!967221 () Unit!45426)

(declare-fun lemmaConcatAssociativity!1642 (List!31509 List!31509 List!31509) Unit!45426)

(assert (=> b!2732537 (= lt!967221 (lemmaConcatAssociativity!1642 lt!967210 lt!967222 lt!967220))))

(assert (=> b!2732537 (= lt!967220 (list!11932 (_2!18207 (v!33084 lt!967212))))))

(declare-fun charsOf!3030 (Token!9080) BalanceConc!19304)

(assert (=> b!2732537 (= lt!967222 (list!11932 (charsOf!3030 (_1!18207 (v!33084 lt!967212)))))))

(assert (=> b!2732537 (= lt!967215 (lexRec!665 thiss!11556 rules!1182 (_2!18207 (v!33084 lt!967212))))))

(declare-fun b!2732538 () Bool)

(declare-fun res!1147342 () Bool)

(assert (=> b!2732538 (=> (not res!1147342) (not e!1721153))))

(assert (=> b!2732538 (= res!1147342 (= (list!11932 (_2!18206 lt!967216)) (list!11932 (_2!18206 lt!967219))))))

(declare-fun b!2732539 () Bool)

(declare-fun prepend!1145 (BalanceConc!19306 Token!9080) BalanceConc!19306)

(assert (=> b!2732539 (= e!1721145 (= lt!967219 (tuple2!31149 (prepend!1145 (_1!18206 lt!967215) (_1!18207 (v!33084 lt!967212))) (_2!18206 lt!967215))))))

(declare-fun b!2732540 () Bool)

(declare-fun res!1147341 () Bool)

(assert (=> b!2732540 (=> (not res!1147341) (not e!1721151))))

(declare-fun isEmpty!17960 (List!31511) Bool)

(assert (=> b!2732540 (= res!1147341 (not (isEmpty!17960 rules!1182)))))

(assert (=> b!2732541 (= e!1721144 (and tp!860277 tp!860278))))

(declare-fun b!2732542 () Bool)

(declare-fun tp!860279 () Bool)

(declare-fun inv!42705 (Conc!9846) Bool)

(assert (=> b!2732542 (= e!1721141 (and (inv!42705 (c!442559 acc!331)) tp!860279))))

(declare-fun b!2732543 () Bool)

(assert (=> b!2732543 (= e!1721153 e!1721150)))

(declare-fun res!1147345 () Bool)

(assert (=> b!2732543 (=> (not res!1147345) (not e!1721150))))

(assert (=> b!2732543 (= res!1147345 ((_ is Some!6210) lt!967212))))

(declare-fun maxPrefixZipperSequence!1053 (LexerInterface!4405 List!31511 BalanceConc!19304) Option!6211)

(assert (=> b!2732543 (= lt!967212 (maxPrefixZipperSequence!1053 thiss!11556 rules!1182 input!603))))

(assert (= (and start!264996 res!1147343) b!2732540))

(assert (= (and b!2732540 res!1147341) b!2732527))

(assert (= (and b!2732527 res!1147346) b!2732532))

(assert (= (and b!2732532 res!1147351) b!2732533))

(assert (= (and b!2732533 res!1147350) b!2732528))

(assert (= (and b!2732528 res!1147352) b!2732531))

(assert (= (and b!2732531 res!1147349) b!2732538))

(assert (= (and b!2732538 res!1147342) b!2732543))

(assert (= (and b!2732543 res!1147345) b!2732537))

(assert (= (and b!2732537 res!1147340) b!2732539))

(assert (= (and b!2732537 (not res!1147347)) b!2732536))

(assert (= (and b!2732536 (not res!1147344)) b!2732525))

(assert (= (and b!2732525 (not res!1147348)) b!2732524))

(assert (= start!264996 b!2732534))

(assert (= start!264996 b!2732530))

(assert (= b!2732529 b!2732541))

(assert (= b!2732535 b!2732529))

(assert (= (and start!264996 ((_ is Cons!31411) rules!1182)) b!2732535))

(assert (= start!264996 b!2732526))

(assert (= start!264996 b!2732542))

(declare-fun m!3142559 () Bool)

(assert (=> b!2732526 m!3142559))

(declare-fun m!3142561 () Bool)

(assert (=> b!2732532 m!3142561))

(declare-fun m!3142563 () Bool)

(assert (=> b!2732532 m!3142563))

(assert (=> b!2732532 m!3142563))

(declare-fun m!3142565 () Bool)

(assert (=> b!2732532 m!3142565))

(declare-fun m!3142567 () Bool)

(assert (=> b!2732532 m!3142567))

(declare-fun m!3142569 () Bool)

(assert (=> b!2732529 m!3142569))

(declare-fun m!3142571 () Bool)

(assert (=> b!2732529 m!3142571))

(declare-fun m!3142573 () Bool)

(assert (=> b!2732534 m!3142573))

(declare-fun m!3142575 () Bool)

(assert (=> b!2732530 m!3142575))

(declare-fun m!3142577 () Bool)

(assert (=> b!2732536 m!3142577))

(declare-fun m!3142579 () Bool)

(assert (=> b!2732533 m!3142579))

(declare-fun m!3142581 () Bool)

(assert (=> b!2732533 m!3142581))

(declare-fun m!3142583 () Bool)

(assert (=> b!2732533 m!3142583))

(declare-fun m!3142585 () Bool)

(assert (=> b!2732527 m!3142585))

(declare-fun m!3142587 () Bool)

(assert (=> b!2732524 m!3142587))

(declare-fun m!3142589 () Bool)

(assert (=> b!2732528 m!3142589))

(assert (=> b!2732528 m!3142589))

(declare-fun m!3142591 () Bool)

(assert (=> b!2732528 m!3142591))

(declare-fun m!3142593 () Bool)

(assert (=> start!264996 m!3142593))

(declare-fun m!3142595 () Bool)

(assert (=> start!264996 m!3142595))

(declare-fun m!3142597 () Bool)

(assert (=> start!264996 m!3142597))

(declare-fun m!3142599 () Bool)

(assert (=> start!264996 m!3142599))

(declare-fun m!3142601 () Bool)

(assert (=> b!2732542 m!3142601))

(declare-fun m!3142603 () Bool)

(assert (=> b!2732539 m!3142603))

(declare-fun m!3142605 () Bool)

(assert (=> b!2732531 m!3142605))

(declare-fun m!3142607 () Bool)

(assert (=> b!2732531 m!3142607))

(declare-fun m!3142609 () Bool)

(assert (=> b!2732531 m!3142609))

(declare-fun m!3142611 () Bool)

(assert (=> b!2732531 m!3142611))

(assert (=> b!2732531 m!3142611))

(declare-fun m!3142613 () Bool)

(assert (=> b!2732531 m!3142613))

(declare-fun m!3142615 () Bool)

(assert (=> b!2732538 m!3142615))

(declare-fun m!3142617 () Bool)

(assert (=> b!2732538 m!3142617))

(declare-fun m!3142619 () Bool)

(assert (=> b!2732525 m!3142619))

(declare-fun m!3142621 () Bool)

(assert (=> b!2732525 m!3142621))

(declare-fun m!3142623 () Bool)

(assert (=> b!2732540 m!3142623))

(declare-fun m!3142625 () Bool)

(assert (=> b!2732537 m!3142625))

(assert (=> b!2732537 m!3142625))

(declare-fun m!3142627 () Bool)

(assert (=> b!2732537 m!3142627))

(declare-fun m!3142629 () Bool)

(assert (=> b!2732537 m!3142629))

(declare-fun m!3142631 () Bool)

(assert (=> b!2732537 m!3142631))

(declare-fun m!3142633 () Bool)

(assert (=> b!2732537 m!3142633))

(declare-fun m!3142635 () Bool)

(assert (=> b!2732537 m!3142635))

(declare-fun m!3142637 () Bool)

(assert (=> b!2732537 m!3142637))

(declare-fun m!3142639 () Bool)

(assert (=> b!2732537 m!3142639))

(declare-fun m!3142641 () Bool)

(assert (=> b!2732537 m!3142641))

(declare-fun m!3142643 () Bool)

(assert (=> b!2732537 m!3142643))

(declare-fun m!3142645 () Bool)

(assert (=> b!2732537 m!3142645))

(assert (=> b!2732537 m!3142631))

(declare-fun m!3142647 () Bool)

(assert (=> b!2732537 m!3142647))

(declare-fun m!3142649 () Bool)

(assert (=> b!2732537 m!3142649))

(assert (=> b!2732537 m!3142647))

(declare-fun m!3142651 () Bool)

(assert (=> b!2732537 m!3142651))

(declare-fun m!3142653 () Bool)

(assert (=> b!2732537 m!3142653))

(declare-fun m!3142655 () Bool)

(assert (=> b!2732537 m!3142655))

(declare-fun m!3142657 () Bool)

(assert (=> b!2732537 m!3142657))

(declare-fun m!3142659 () Bool)

(assert (=> b!2732537 m!3142659))

(assert (=> b!2732537 m!3142655))

(declare-fun m!3142661 () Bool)

(assert (=> b!2732537 m!3142661))

(declare-fun m!3142663 () Bool)

(assert (=> b!2732543 m!3142663))

(check-sat (not b!2732524) (not b!2732528) (not b!2732533) (not b!2732525) (not b_next!77497) (not b!2732530) (not b!2732540) (not b!2732543) b_and!201039 (not b!2732526) (not b!2732539) (not b!2732531) (not b!2732534) (not b!2732527) (not b_next!77499) (not b!2732542) (not b!2732536) (not b!2732532) (not b!2732535) (not b!2732529) (not b!2732537) b_and!201037 (not start!264996) (not b!2732538))
(check-sat b_and!201039 b_and!201037 (not b_next!77499) (not b_next!77497))
(get-model)

(declare-fun b!2732597 () Bool)

(declare-fun e!1721184 () Bool)

(declare-fun lt!967248 () tuple2!31146)

(assert (=> b!2732597 (= e!1721184 (= (_2!18205 lt!967248) lt!967220))))

(declare-fun d!790613 () Bool)

(assert (=> d!790613 e!1721184))

(declare-fun c!442576 () Bool)

(declare-fun size!24253 (List!31512) Int)

(assert (=> d!790613 (= c!442576 (> (size!24253 (_1!18205 lt!967248)) 0))))

(declare-fun e!1721182 () tuple2!31146)

(assert (=> d!790613 (= lt!967248 e!1721182)))

(declare-fun c!442577 () Bool)

(declare-datatypes ((tuple2!31154 0))(
  ( (tuple2!31155 (_1!18209 Token!9080) (_2!18209 List!31509)) )
))
(declare-datatypes ((Option!6213 0))(
  ( (None!6212) (Some!6212 (v!33090 tuple2!31154)) )
))
(declare-fun lt!967247 () Option!6213)

(assert (=> d!790613 (= c!442577 ((_ is Some!6212) lt!967247))))

(declare-fun maxPrefix!2376 (LexerInterface!4405 List!31511 List!31509) Option!6213)

(assert (=> d!790613 (= lt!967247 (maxPrefix!2376 thiss!11556 rules!1182 lt!967220))))

(assert (=> d!790613 (= (lexList!1234 thiss!11556 rules!1182 lt!967220) lt!967248)))

(declare-fun b!2732598 () Bool)

(assert (=> b!2732598 (= e!1721182 (tuple2!31147 Nil!31412 lt!967220))))

(declare-fun b!2732599 () Bool)

(declare-fun lt!967249 () tuple2!31146)

(assert (=> b!2732599 (= e!1721182 (tuple2!31147 (Cons!31412 (_1!18209 (v!33090 lt!967247)) (_1!18205 lt!967249)) (_2!18205 lt!967249)))))

(assert (=> b!2732599 (= lt!967249 (lexList!1234 thiss!11556 rules!1182 (_2!18209 (v!33090 lt!967247))))))

(declare-fun b!2732600 () Bool)

(declare-fun e!1721183 () Bool)

(assert (=> b!2732600 (= e!1721183 (not (isEmpty!17959 (_1!18205 lt!967248))))))

(declare-fun b!2732601 () Bool)

(assert (=> b!2732601 (= e!1721184 e!1721183)))

(declare-fun res!1147388 () Bool)

(declare-fun size!24254 (List!31509) Int)

(assert (=> b!2732601 (= res!1147388 (< (size!24254 (_2!18205 lt!967248)) (size!24254 lt!967220)))))

(assert (=> b!2732601 (=> (not res!1147388) (not e!1721183))))

(assert (= (and d!790613 c!442577) b!2732599))

(assert (= (and d!790613 (not c!442577)) b!2732598))

(assert (= (and d!790613 c!442576) b!2732601))

(assert (= (and d!790613 (not c!442576)) b!2732597))

(assert (= (and b!2732601 res!1147388) b!2732600))

(declare-fun m!3142733 () Bool)

(assert (=> d!790613 m!3142733))

(declare-fun m!3142735 () Bool)

(assert (=> d!790613 m!3142735))

(declare-fun m!3142737 () Bool)

(assert (=> b!2732599 m!3142737))

(declare-fun m!3142739 () Bool)

(assert (=> b!2732600 m!3142739))

(declare-fun m!3142741 () Bool)

(assert (=> b!2732601 m!3142741))

(declare-fun m!3142743 () Bool)

(assert (=> b!2732601 m!3142743))

(assert (=> b!2732524 d!790613))

(declare-fun d!790625 () Bool)

(declare-fun list!11936 (Conc!9846) List!31512)

(assert (=> d!790625 (= (list!11933 acc!331) (list!11936 (c!442559 acc!331)))))

(declare-fun bs!489354 () Bool)

(assert (= bs!489354 d!790625))

(declare-fun m!3142745 () Bool)

(assert (=> bs!489354 m!3142745))

(assert (=> b!2732533 d!790625))

(declare-fun d!790627 () Bool)

(assert (=> d!790627 (= (list!11933 (_1!18206 lt!967214)) (list!11936 (c!442559 (_1!18206 lt!967214))))))

(declare-fun bs!489355 () Bool)

(assert (= bs!489355 d!790627))

(declare-fun m!3142747 () Bool)

(assert (=> bs!489355 m!3142747))

(assert (=> b!2732533 d!790627))

(declare-fun b!2732751 () Bool)

(declare-fun e!1721279 () Bool)

(declare-fun lt!967309 () tuple2!31148)

(declare-fun isEmpty!17962 (BalanceConc!19306) Bool)

(assert (=> b!2732751 (= e!1721279 (not (isEmpty!17962 (_1!18206 lt!967309))))))

(declare-fun b!2732752 () Bool)

(declare-fun res!1147459 () Bool)

(declare-fun e!1721278 () Bool)

(assert (=> b!2732752 (=> (not res!1147459) (not e!1721278))))

(assert (=> b!2732752 (= res!1147459 (= (list!11933 (_1!18206 lt!967309)) (_1!18205 (lexList!1234 thiss!11556 rules!1182 (list!11932 treated!9)))))))

(declare-fun b!2732754 () Bool)

(declare-fun e!1721276 () tuple2!31148)

(assert (=> b!2732754 (= e!1721276 (tuple2!31149 (BalanceConc!19307 Empty!9846) treated!9))))

(declare-fun b!2732755 () Bool)

(declare-fun lt!967310 () tuple2!31148)

(declare-fun lt!967308 () Option!6211)

(assert (=> b!2732755 (= e!1721276 (tuple2!31149 (prepend!1145 (_1!18206 lt!967310) (_1!18207 (v!33084 lt!967308))) (_2!18206 lt!967310)))))

(assert (=> b!2732755 (= lt!967310 (lexRec!665 thiss!11556 rules!1182 (_2!18207 (v!33084 lt!967308))))))

(declare-fun b!2732756 () Bool)

(declare-fun e!1721277 () Bool)

(assert (=> b!2732756 (= e!1721277 e!1721279)))

(declare-fun res!1147460 () Bool)

(declare-fun size!24255 (BalanceConc!19304) Int)

(assert (=> b!2732756 (= res!1147460 (< (size!24255 (_2!18206 lt!967309)) (size!24255 treated!9)))))

(assert (=> b!2732756 (=> (not res!1147460) (not e!1721279))))

(declare-fun b!2732757 () Bool)

(assert (=> b!2732757 (= e!1721277 (= (list!11932 (_2!18206 lt!967309)) (list!11932 treated!9)))))

(declare-fun b!2732753 () Bool)

(assert (=> b!2732753 (= e!1721278 (= (list!11932 (_2!18206 lt!967309)) (_2!18205 (lexList!1234 thiss!11556 rules!1182 (list!11932 treated!9)))))))

(declare-fun d!790629 () Bool)

(assert (=> d!790629 e!1721278))

(declare-fun res!1147461 () Bool)

(assert (=> d!790629 (=> (not res!1147461) (not e!1721278))))

(assert (=> d!790629 (= res!1147461 e!1721277)))

(declare-fun c!442616 () Bool)

(declare-fun size!24256 (BalanceConc!19306) Int)

(assert (=> d!790629 (= c!442616 (> (size!24256 (_1!18206 lt!967309)) 0))))

(assert (=> d!790629 (= lt!967309 e!1721276)))

(declare-fun c!442615 () Bool)

(assert (=> d!790629 (= c!442615 ((_ is Some!6210) lt!967308))))

(assert (=> d!790629 (= lt!967308 (maxPrefixZipperSequence!1053 thiss!11556 rules!1182 treated!9))))

(assert (=> d!790629 (= (lexRec!665 thiss!11556 rules!1182 treated!9) lt!967309)))

(assert (= (and d!790629 c!442615) b!2732755))

(assert (= (and d!790629 (not c!442615)) b!2732754))

(assert (= (and d!790629 c!442616) b!2732756))

(assert (= (and d!790629 (not c!442616)) b!2732757))

(assert (= (and b!2732756 res!1147460) b!2732751))

(assert (= (and d!790629 res!1147461) b!2732752))

(assert (= (and b!2732752 res!1147459) b!2732753))

(declare-fun m!3142997 () Bool)

(assert (=> b!2732756 m!3142997))

(declare-fun m!3142999 () Bool)

(assert (=> b!2732756 m!3142999))

(declare-fun m!3143001 () Bool)

(assert (=> b!2732755 m!3143001))

(declare-fun m!3143003 () Bool)

(assert (=> b!2732755 m!3143003))

(declare-fun m!3143005 () Bool)

(assert (=> b!2732757 m!3143005))

(assert (=> b!2732757 m!3142567))

(declare-fun m!3143007 () Bool)

(assert (=> d!790629 m!3143007))

(declare-fun m!3143009 () Bool)

(assert (=> d!790629 m!3143009))

(declare-fun m!3143011 () Bool)

(assert (=> b!2732752 m!3143011))

(assert (=> b!2732752 m!3142567))

(assert (=> b!2732752 m!3142567))

(declare-fun m!3143013 () Bool)

(assert (=> b!2732752 m!3143013))

(assert (=> b!2732753 m!3143005))

(assert (=> b!2732753 m!3142567))

(assert (=> b!2732753 m!3142567))

(assert (=> b!2732753 m!3143013))

(declare-fun m!3143015 () Bool)

(assert (=> b!2732751 m!3143015))

(assert (=> b!2732533 d!790629))

(declare-fun d!790711 () Bool)

(declare-fun c!442621 () Bool)

(assert (=> d!790711 (= c!442621 ((_ is Node!9845) (c!442557 treated!9)))))

(declare-fun e!1721288 () Bool)

(assert (=> d!790711 (= (inv!42701 (c!442557 treated!9)) e!1721288)))

(declare-fun b!2732771 () Bool)

(declare-fun inv!42710 (Conc!9845) Bool)

(assert (=> b!2732771 (= e!1721288 (inv!42710 (c!442557 treated!9)))))

(declare-fun b!2732772 () Bool)

(declare-fun e!1721289 () Bool)

(assert (=> b!2732772 (= e!1721288 e!1721289)))

(declare-fun res!1147467 () Bool)

(assert (=> b!2732772 (= res!1147467 (not ((_ is Leaf!14994) (c!442557 treated!9))))))

(assert (=> b!2732772 (=> res!1147467 e!1721289)))

(declare-fun b!2732773 () Bool)

(declare-fun inv!42711 (Conc!9845) Bool)

(assert (=> b!2732773 (= e!1721289 (inv!42711 (c!442557 treated!9)))))

(assert (= (and d!790711 c!442621) b!2732771))

(assert (= (and d!790711 (not c!442621)) b!2732772))

(assert (= (and b!2732772 (not res!1147467)) b!2732773))

(declare-fun m!3143029 () Bool)

(assert (=> b!2732771 m!3143029))

(declare-fun m!3143031 () Bool)

(assert (=> b!2732773 m!3143031))

(assert (=> b!2732534 d!790711))

(declare-fun d!790721 () Bool)

(declare-fun list!11937 (Conc!9845) List!31509)

(assert (=> d!790721 (= (list!11932 totalInput!328) (list!11937 (c!442557 totalInput!328)))))

(declare-fun bs!489375 () Bool)

(assert (= bs!489375 d!790721))

(declare-fun m!3143033 () Bool)

(assert (=> bs!489375 m!3143033))

(assert (=> b!2732532 d!790721))

(declare-fun b!2732830 () Bool)

(declare-fun res!1147479 () Bool)

(declare-fun e!1721322 () Bool)

(assert (=> b!2732830 (=> (not res!1147479) (not e!1721322))))

(declare-fun lt!967326 () List!31509)

(assert (=> b!2732830 (= res!1147479 (= (size!24254 lt!967326) (+ (size!24254 lt!967210) (size!24254 (list!11932 input!603)))))))

(declare-fun b!2732828 () Bool)

(declare-fun e!1721323 () List!31509)

(assert (=> b!2732828 (= e!1721323 (list!11932 input!603))))

(declare-fun b!2732829 () Bool)

(assert (=> b!2732829 (= e!1721323 (Cons!31409 (h!36829 lt!967210) (++!7842 (t!227033 lt!967210) (list!11932 input!603))))))

(declare-fun d!790723 () Bool)

(assert (=> d!790723 e!1721322))

(declare-fun res!1147478 () Bool)

(assert (=> d!790723 (=> (not res!1147478) (not e!1721322))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4466 (List!31509) (InoxSet C!16080))

(assert (=> d!790723 (= res!1147478 (= (content!4466 lt!967326) ((_ map or) (content!4466 lt!967210) (content!4466 (list!11932 input!603)))))))

(assert (=> d!790723 (= lt!967326 e!1721323)))

(declare-fun c!442627 () Bool)

(assert (=> d!790723 (= c!442627 ((_ is Nil!31409) lt!967210))))

(assert (=> d!790723 (= (++!7842 lt!967210 (list!11932 input!603)) lt!967326)))

(declare-fun b!2732831 () Bool)

(assert (=> b!2732831 (= e!1721322 (or (not (= (list!11932 input!603) Nil!31409)) (= lt!967326 lt!967210)))))

(assert (= (and d!790723 c!442627) b!2732828))

(assert (= (and d!790723 (not c!442627)) b!2732829))

(assert (= (and d!790723 res!1147478) b!2732830))

(assert (= (and b!2732830 res!1147479) b!2732831))

(declare-fun m!3143063 () Bool)

(assert (=> b!2732830 m!3143063))

(declare-fun m!3143065 () Bool)

(assert (=> b!2732830 m!3143065))

(assert (=> b!2732830 m!3142563))

(declare-fun m!3143067 () Bool)

(assert (=> b!2732830 m!3143067))

(assert (=> b!2732829 m!3142563))

(declare-fun m!3143069 () Bool)

(assert (=> b!2732829 m!3143069))

(declare-fun m!3143071 () Bool)

(assert (=> d!790723 m!3143071))

(declare-fun m!3143073 () Bool)

(assert (=> d!790723 m!3143073))

(assert (=> d!790723 m!3142563))

(declare-fun m!3143075 () Bool)

(assert (=> d!790723 m!3143075))

(assert (=> b!2732532 d!790723))

(declare-fun d!790729 () Bool)

(assert (=> d!790729 (= (list!11932 input!603) (list!11937 (c!442557 input!603)))))

(declare-fun bs!489376 () Bool)

(assert (= bs!489376 d!790729))

(declare-fun m!3143077 () Bool)

(assert (=> bs!489376 m!3143077))

(assert (=> b!2732532 d!790729))

(declare-fun d!790731 () Bool)

(assert (=> d!790731 (= (list!11932 treated!9) (list!11937 (c!442557 treated!9)))))

(declare-fun bs!489377 () Bool)

(assert (= bs!489377 d!790731))

(declare-fun m!3143079 () Bool)

(assert (=> bs!489377 m!3143079))

(assert (=> b!2732532 d!790731))

(declare-fun b!2732865 () Bool)

(declare-fun e!1721350 () Option!6211)

(declare-fun lt!967345 () Option!6211)

(declare-fun lt!967341 () Option!6211)

(assert (=> b!2732865 (= e!1721350 (ite (and ((_ is None!6210) lt!967345) ((_ is None!6210) lt!967341)) None!6210 (ite ((_ is None!6210) lt!967341) lt!967345 (ite ((_ is None!6210) lt!967345) lt!967341 (ite (>= (size!24248 (_1!18207 (v!33084 lt!967345))) (size!24248 (_1!18207 (v!33084 lt!967341)))) lt!967345 lt!967341)))))))

(declare-fun call!176564 () Option!6211)

(assert (=> b!2732865 (= lt!967345 call!176564)))

(assert (=> b!2732865 (= lt!967341 (maxPrefixZipperSequence!1053 thiss!11556 (t!227035 rules!1182) input!603))))

(declare-fun b!2732866 () Bool)

(assert (=> b!2732866 (= e!1721350 call!176564)))

(declare-fun b!2732867 () Bool)

(declare-fun res!1147493 () Bool)

(declare-fun e!1721347 () Bool)

(assert (=> b!2732867 (=> (not res!1147493) (not e!1721347))))

(declare-fun e!1721349 () Bool)

(assert (=> b!2732867 (= res!1147493 e!1721349)))

(declare-fun res!1147497 () Bool)

(assert (=> b!2732867 (=> res!1147497 e!1721349)))

(declare-fun lt!967344 () Option!6211)

(declare-fun isDefined!4913 (Option!6211) Bool)

(assert (=> b!2732867 (= res!1147497 (not (isDefined!4913 lt!967344)))))

(declare-fun b!2732868 () Bool)

(declare-fun e!1721348 () Bool)

(declare-fun get!9805 (Option!6211) tuple2!31150)

(declare-fun get!9806 (Option!6213) tuple2!31154)

(declare-fun maxPrefixZipper!480 (LexerInterface!4405 List!31511 List!31509) Option!6213)

(assert (=> b!2732868 (= e!1721348 (= (list!11932 (_2!18207 (get!9805 lt!967344))) (_2!18209 (get!9806 (maxPrefixZipper!480 thiss!11556 rules!1182 (list!11932 input!603))))))))

(declare-fun bm!176559 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!489 (LexerInterface!4405 Rule!9418 BalanceConc!19304) Option!6211)

(assert (=> bm!176559 (= call!176564 (maxPrefixOneRuleZipperSequence!489 thiss!11556 (h!36831 rules!1182) input!603))))

(declare-fun b!2732869 () Bool)

(declare-fun e!1721351 () Bool)

(declare-fun e!1721346 () Bool)

(assert (=> b!2732869 (= e!1721351 e!1721346)))

(declare-fun res!1147495 () Bool)

(assert (=> b!2732869 (=> (not res!1147495) (not e!1721346))))

(assert (=> b!2732869 (= res!1147495 (= (_1!18207 (get!9805 lt!967344)) (_1!18209 (get!9806 (maxPrefix!2376 thiss!11556 rules!1182 (list!11932 input!603))))))))

(declare-fun b!2732870 () Bool)

(assert (=> b!2732870 (= e!1721346 (= (list!11932 (_2!18207 (get!9805 lt!967344))) (_2!18209 (get!9806 (maxPrefix!2376 thiss!11556 rules!1182 (list!11932 input!603))))))))

(declare-fun b!2732872 () Bool)

(assert (=> b!2732872 (= e!1721347 e!1721351)))

(declare-fun res!1147492 () Bool)

(assert (=> b!2732872 (=> res!1147492 e!1721351)))

(assert (=> b!2732872 (= res!1147492 (not (isDefined!4913 lt!967344)))))

(declare-fun d!790733 () Bool)

(assert (=> d!790733 e!1721347))

(declare-fun res!1147494 () Bool)

(assert (=> d!790733 (=> (not res!1147494) (not e!1721347))))

(declare-fun isDefined!4914 (Option!6213) Bool)

(assert (=> d!790733 (= res!1147494 (= (isDefined!4913 lt!967344) (isDefined!4914 (maxPrefixZipper!480 thiss!11556 rules!1182 (list!11932 input!603)))))))

(assert (=> d!790733 (= lt!967344 e!1721350)))

(declare-fun c!442630 () Bool)

(assert (=> d!790733 (= c!442630 (and ((_ is Cons!31411) rules!1182) ((_ is Nil!31411) (t!227035 rules!1182))))))

(declare-fun lt!967347 () Unit!45426)

(declare-fun lt!967342 () Unit!45426)

(assert (=> d!790733 (= lt!967347 lt!967342)))

(declare-fun lt!967346 () List!31509)

(declare-fun lt!967343 () List!31509)

(declare-fun isPrefix!2493 (List!31509 List!31509) Bool)

(assert (=> d!790733 (isPrefix!2493 lt!967346 lt!967343)))

(declare-fun lemmaIsPrefixRefl!1619 (List!31509 List!31509) Unit!45426)

(assert (=> d!790733 (= lt!967342 (lemmaIsPrefixRefl!1619 lt!967346 lt!967343))))

(assert (=> d!790733 (= lt!967343 (list!11932 input!603))))

(assert (=> d!790733 (= lt!967346 (list!11932 input!603))))

(declare-fun rulesValidInductive!1677 (LexerInterface!4405 List!31511) Bool)

(assert (=> d!790733 (rulesValidInductive!1677 thiss!11556 rules!1182)))

(assert (=> d!790733 (= (maxPrefixZipperSequence!1053 thiss!11556 rules!1182 input!603) lt!967344)))

(declare-fun b!2732871 () Bool)

(assert (=> b!2732871 (= e!1721349 e!1721348)))

(declare-fun res!1147496 () Bool)

(assert (=> b!2732871 (=> (not res!1147496) (not e!1721348))))

(assert (=> b!2732871 (= res!1147496 (= (_1!18207 (get!9805 lt!967344)) (_1!18209 (get!9806 (maxPrefixZipper!480 thiss!11556 rules!1182 (list!11932 input!603))))))))

(assert (= (and d!790733 c!442630) b!2732866))

(assert (= (and d!790733 (not c!442630)) b!2732865))

(assert (= (or b!2732866 b!2732865) bm!176559))

(assert (= (and d!790733 res!1147494) b!2732867))

(assert (= (and b!2732867 (not res!1147497)) b!2732871))

(assert (= (and b!2732871 res!1147496) b!2732868))

(assert (= (and b!2732867 res!1147493) b!2732872))

(assert (= (and b!2732872 (not res!1147492)) b!2732869))

(assert (= (and b!2732869 res!1147495) b!2732870))

(assert (=> b!2732870 m!3142563))

(declare-fun m!3143099 () Bool)

(assert (=> b!2732870 m!3143099))

(assert (=> b!2732870 m!3142563))

(declare-fun m!3143101 () Bool)

(assert (=> b!2732870 m!3143101))

(assert (=> b!2732870 m!3143101))

(declare-fun m!3143103 () Bool)

(assert (=> b!2732870 m!3143103))

(declare-fun m!3143105 () Bool)

(assert (=> b!2732870 m!3143105))

(assert (=> b!2732868 m!3142563))

(assert (=> b!2732868 m!3143099))

(declare-fun m!3143107 () Bool)

(assert (=> b!2732868 m!3143107))

(declare-fun m!3143109 () Bool)

(assert (=> b!2732868 m!3143109))

(assert (=> b!2732868 m!3143105))

(assert (=> b!2732868 m!3142563))

(assert (=> b!2732868 m!3143107))

(assert (=> d!790733 m!3142563))

(declare-fun m!3143111 () Bool)

(assert (=> d!790733 m!3143111))

(declare-fun m!3143113 () Bool)

(assert (=> d!790733 m!3143113))

(assert (=> d!790733 m!3143107))

(declare-fun m!3143115 () Bool)

(assert (=> d!790733 m!3143115))

(assert (=> d!790733 m!3142563))

(assert (=> d!790733 m!3143107))

(declare-fun m!3143117 () Bool)

(assert (=> d!790733 m!3143117))

(declare-fun m!3143119 () Bool)

(assert (=> d!790733 m!3143119))

(assert (=> b!2732872 m!3143113))

(assert (=> b!2732869 m!3143099))

(assert (=> b!2732869 m!3142563))

(assert (=> b!2732869 m!3142563))

(assert (=> b!2732869 m!3143101))

(assert (=> b!2732869 m!3143101))

(assert (=> b!2732869 m!3143103))

(declare-fun m!3143121 () Bool)

(assert (=> b!2732865 m!3143121))

(declare-fun m!3143123 () Bool)

(assert (=> bm!176559 m!3143123))

(assert (=> b!2732867 m!3143113))

(assert (=> b!2732871 m!3143099))

(assert (=> b!2732871 m!3142563))

(assert (=> b!2732871 m!3142563))

(assert (=> b!2732871 m!3143107))

(assert (=> b!2732871 m!3143107))

(assert (=> b!2732871 m!3143109))

(assert (=> b!2732543 d!790733))

(declare-fun d!790735 () Bool)

(declare-fun isBalanced!2991 (Conc!9845) Bool)

(assert (=> d!790735 (= (inv!42703 treated!9) (isBalanced!2991 (c!442557 treated!9)))))

(declare-fun bs!489378 () Bool)

(assert (= bs!489378 d!790735))

(declare-fun m!3143125 () Bool)

(assert (=> bs!489378 m!3143125))

(assert (=> start!264996 d!790735))

(declare-fun d!790737 () Bool)

(assert (=> d!790737 (= (inv!42703 input!603) (isBalanced!2991 (c!442557 input!603)))))

(declare-fun bs!489379 () Bool)

(assert (= bs!489379 d!790737))

(declare-fun m!3143127 () Bool)

(assert (=> bs!489379 m!3143127))

(assert (=> start!264996 d!790737))

(declare-fun d!790739 () Bool)

(assert (=> d!790739 (= (inv!42703 totalInput!328) (isBalanced!2991 (c!442557 totalInput!328)))))

(declare-fun bs!489380 () Bool)

(assert (= bs!489380 d!790739))

(declare-fun m!3143129 () Bool)

(assert (=> bs!489380 m!3143129))

(assert (=> start!264996 d!790739))

(declare-fun d!790741 () Bool)

(declare-fun isBalanced!2992 (Conc!9846) Bool)

(assert (=> d!790741 (= (inv!42704 acc!331) (isBalanced!2992 (c!442559 acc!331)))))

(declare-fun bs!489381 () Bool)

(assert (= bs!489381 d!790741))

(declare-fun m!3143131 () Bool)

(assert (=> bs!489381 m!3143131))

(assert (=> start!264996 d!790741))

(declare-fun d!790743 () Bool)

(assert (=> d!790743 (= (list!11933 (_1!18206 lt!967216)) (list!11936 (c!442559 (_1!18206 lt!967216))))))

(declare-fun bs!489382 () Bool)

(assert (= bs!489382 d!790743))

(declare-fun m!3143133 () Bool)

(assert (=> bs!489382 m!3143133))

(assert (=> b!2732531 d!790743))

(declare-fun b!2732883 () Bool)

(declare-fun res!1147506 () Bool)

(declare-fun e!1721354 () Bool)

(assert (=> b!2732883 (=> (not res!1147506) (not e!1721354))))

(declare-fun height!1470 (Conc!9846) Int)

(declare-fun ++!7845 (Conc!9846 Conc!9846) Conc!9846)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2732883 (= res!1147506 (>= (height!1470 (++!7845 (c!442559 acc!331) (c!442559 (_1!18206 lt!967219)))) (max!0 (height!1470 (c!442559 acc!331)) (height!1470 (c!442559 (_1!18206 lt!967219))))))))

(declare-fun d!790745 () Bool)

(assert (=> d!790745 e!1721354))

(declare-fun res!1147507 () Bool)

(assert (=> d!790745 (=> (not res!1147507) (not e!1721354))))

(declare-fun appendAssocInst!699 (Conc!9846 Conc!9846) Bool)

(assert (=> d!790745 (= res!1147507 (appendAssocInst!699 (c!442559 acc!331) (c!442559 (_1!18206 lt!967219))))))

(declare-fun lt!967350 () BalanceConc!19306)

(assert (=> d!790745 (= lt!967350 (BalanceConc!19307 (++!7845 (c!442559 acc!331) (c!442559 (_1!18206 lt!967219)))))))

(assert (=> d!790745 (= (++!7841 acc!331 (_1!18206 lt!967219)) lt!967350)))

(declare-fun b!2732882 () Bool)

(declare-fun res!1147508 () Bool)

(assert (=> b!2732882 (=> (not res!1147508) (not e!1721354))))

(assert (=> b!2732882 (= res!1147508 (<= (height!1470 (++!7845 (c!442559 acc!331) (c!442559 (_1!18206 lt!967219)))) (+ (max!0 (height!1470 (c!442559 acc!331)) (height!1470 (c!442559 (_1!18206 lt!967219)))) 1)))))

(declare-fun b!2732884 () Bool)

(assert (=> b!2732884 (= e!1721354 (= (list!11933 lt!967350) (++!7843 (list!11933 acc!331) (list!11933 (_1!18206 lt!967219)))))))

(declare-fun b!2732881 () Bool)

(declare-fun res!1147509 () Bool)

(assert (=> b!2732881 (=> (not res!1147509) (not e!1721354))))

(assert (=> b!2732881 (= res!1147509 (isBalanced!2992 (++!7845 (c!442559 acc!331) (c!442559 (_1!18206 lt!967219)))))))

(assert (= (and d!790745 res!1147507) b!2732881))

(assert (= (and b!2732881 res!1147509) b!2732882))

(assert (= (and b!2732882 res!1147508) b!2732883))

(assert (= (and b!2732883 res!1147506) b!2732884))

(declare-fun m!3143135 () Bool)

(assert (=> b!2732883 m!3143135))

(declare-fun m!3143137 () Bool)

(assert (=> b!2732883 m!3143137))

(declare-fun m!3143139 () Bool)

(assert (=> b!2732883 m!3143139))

(assert (=> b!2732883 m!3143137))

(declare-fun m!3143141 () Bool)

(assert (=> b!2732883 m!3143141))

(assert (=> b!2732883 m!3143135))

(declare-fun m!3143143 () Bool)

(assert (=> b!2732883 m!3143143))

(assert (=> b!2732883 m!3143141))

(declare-fun m!3143145 () Bool)

(assert (=> b!2732884 m!3143145))

(assert (=> b!2732884 m!3142579))

(declare-fun m!3143147 () Bool)

(assert (=> b!2732884 m!3143147))

(assert (=> b!2732884 m!3142579))

(assert (=> b!2732884 m!3143147))

(declare-fun m!3143149 () Bool)

(assert (=> b!2732884 m!3143149))

(declare-fun m!3143151 () Bool)

(assert (=> d!790745 m!3143151))

(assert (=> d!790745 m!3143137))

(assert (=> b!2732881 m!3143137))

(assert (=> b!2732881 m!3143137))

(declare-fun m!3143153 () Bool)

(assert (=> b!2732881 m!3143153))

(assert (=> b!2732882 m!3143135))

(assert (=> b!2732882 m!3143137))

(assert (=> b!2732882 m!3143139))

(assert (=> b!2732882 m!3143137))

(assert (=> b!2732882 m!3143141))

(assert (=> b!2732882 m!3143135))

(assert (=> b!2732882 m!3143143))

(assert (=> b!2732882 m!3143141))

(assert (=> b!2732531 d!790745))

(declare-fun b!2732885 () Bool)

(declare-fun e!1721358 () Bool)

(declare-fun lt!967352 () tuple2!31148)

(assert (=> b!2732885 (= e!1721358 (not (isEmpty!17962 (_1!18206 lt!967352))))))

(declare-fun b!2732886 () Bool)

(declare-fun res!1147510 () Bool)

(declare-fun e!1721357 () Bool)

(assert (=> b!2732886 (=> (not res!1147510) (not e!1721357))))

(assert (=> b!2732886 (= res!1147510 (= (list!11933 (_1!18206 lt!967352)) (_1!18205 (lexList!1234 thiss!11556 rules!1182 (list!11932 input!603)))))))

(declare-fun b!2732888 () Bool)

(declare-fun e!1721355 () tuple2!31148)

(assert (=> b!2732888 (= e!1721355 (tuple2!31149 (BalanceConc!19307 Empty!9846) input!603))))

(declare-fun b!2732889 () Bool)

(declare-fun lt!967353 () tuple2!31148)

(declare-fun lt!967351 () Option!6211)

(assert (=> b!2732889 (= e!1721355 (tuple2!31149 (prepend!1145 (_1!18206 lt!967353) (_1!18207 (v!33084 lt!967351))) (_2!18206 lt!967353)))))

(assert (=> b!2732889 (= lt!967353 (lexRec!665 thiss!11556 rules!1182 (_2!18207 (v!33084 lt!967351))))))

(declare-fun b!2732890 () Bool)

(declare-fun e!1721356 () Bool)

(assert (=> b!2732890 (= e!1721356 e!1721358)))

(declare-fun res!1147511 () Bool)

(assert (=> b!2732890 (= res!1147511 (< (size!24255 (_2!18206 lt!967352)) (size!24255 input!603)))))

(assert (=> b!2732890 (=> (not res!1147511) (not e!1721358))))

(declare-fun b!2732891 () Bool)

(assert (=> b!2732891 (= e!1721356 (= (list!11932 (_2!18206 lt!967352)) (list!11932 input!603)))))

(declare-fun b!2732887 () Bool)

(assert (=> b!2732887 (= e!1721357 (= (list!11932 (_2!18206 lt!967352)) (_2!18205 (lexList!1234 thiss!11556 rules!1182 (list!11932 input!603)))))))

(declare-fun d!790747 () Bool)

(assert (=> d!790747 e!1721357))

(declare-fun res!1147512 () Bool)

(assert (=> d!790747 (=> (not res!1147512) (not e!1721357))))

(assert (=> d!790747 (= res!1147512 e!1721356)))

(declare-fun c!442635 () Bool)

(assert (=> d!790747 (= c!442635 (> (size!24256 (_1!18206 lt!967352)) 0))))

(assert (=> d!790747 (= lt!967352 e!1721355)))

(declare-fun c!442634 () Bool)

(assert (=> d!790747 (= c!442634 ((_ is Some!6210) lt!967351))))

(assert (=> d!790747 (= lt!967351 (maxPrefixZipperSequence!1053 thiss!11556 rules!1182 input!603))))

(assert (=> d!790747 (= (lexRec!665 thiss!11556 rules!1182 input!603) lt!967352)))

(assert (= (and d!790747 c!442634) b!2732889))

(assert (= (and d!790747 (not c!442634)) b!2732888))

(assert (= (and d!790747 c!442635) b!2732890))

(assert (= (and d!790747 (not c!442635)) b!2732891))

(assert (= (and b!2732890 res!1147511) b!2732885))

(assert (= (and d!790747 res!1147512) b!2732886))

(assert (= (and b!2732886 res!1147510) b!2732887))

(declare-fun m!3143155 () Bool)

(assert (=> b!2732890 m!3143155))

(declare-fun m!3143157 () Bool)

(assert (=> b!2732890 m!3143157))

(declare-fun m!3143159 () Bool)

(assert (=> b!2732889 m!3143159))

(declare-fun m!3143161 () Bool)

(assert (=> b!2732889 m!3143161))

(declare-fun m!3143163 () Bool)

(assert (=> b!2732891 m!3143163))

(assert (=> b!2732891 m!3142563))

(declare-fun m!3143165 () Bool)

(assert (=> d!790747 m!3143165))

(assert (=> d!790747 m!3142663))

(declare-fun m!3143167 () Bool)

(assert (=> b!2732886 m!3143167))

(assert (=> b!2732886 m!3142563))

(assert (=> b!2732886 m!3142563))

(declare-fun m!3143169 () Bool)

(assert (=> b!2732886 m!3143169))

(assert (=> b!2732887 m!3143163))

(assert (=> b!2732887 m!3142563))

(assert (=> b!2732887 m!3142563))

(assert (=> b!2732887 m!3143169))

(declare-fun m!3143171 () Bool)

(assert (=> b!2732885 m!3143171))

(assert (=> b!2732531 d!790747))

(declare-fun d!790749 () Bool)

(assert (=> d!790749 (= (list!11933 (++!7841 acc!331 (_1!18206 lt!967219))) (list!11936 (c!442559 (++!7841 acc!331 (_1!18206 lt!967219)))))))

(declare-fun bs!489383 () Bool)

(assert (= bs!489383 d!790749))

(declare-fun m!3143173 () Bool)

(assert (=> bs!489383 m!3143173))

(assert (=> b!2732531 d!790749))

(declare-fun b!2732892 () Bool)

(declare-fun e!1721362 () Bool)

(declare-fun lt!967355 () tuple2!31148)

(assert (=> b!2732892 (= e!1721362 (not (isEmpty!17962 (_1!18206 lt!967355))))))

(declare-fun b!2732893 () Bool)

(declare-fun res!1147513 () Bool)

(declare-fun e!1721361 () Bool)

(assert (=> b!2732893 (=> (not res!1147513) (not e!1721361))))

(assert (=> b!2732893 (= res!1147513 (= (list!11933 (_1!18206 lt!967355)) (_1!18205 (lexList!1234 thiss!11556 rules!1182 (list!11932 totalInput!328)))))))

(declare-fun b!2732895 () Bool)

(declare-fun e!1721359 () tuple2!31148)

(assert (=> b!2732895 (= e!1721359 (tuple2!31149 (BalanceConc!19307 Empty!9846) totalInput!328))))

(declare-fun b!2732896 () Bool)

(declare-fun lt!967356 () tuple2!31148)

(declare-fun lt!967354 () Option!6211)

(assert (=> b!2732896 (= e!1721359 (tuple2!31149 (prepend!1145 (_1!18206 lt!967356) (_1!18207 (v!33084 lt!967354))) (_2!18206 lt!967356)))))

(assert (=> b!2732896 (= lt!967356 (lexRec!665 thiss!11556 rules!1182 (_2!18207 (v!33084 lt!967354))))))

(declare-fun b!2732897 () Bool)

(declare-fun e!1721360 () Bool)

(assert (=> b!2732897 (= e!1721360 e!1721362)))

(declare-fun res!1147514 () Bool)

(assert (=> b!2732897 (= res!1147514 (< (size!24255 (_2!18206 lt!967355)) (size!24255 totalInput!328)))))

(assert (=> b!2732897 (=> (not res!1147514) (not e!1721362))))

(declare-fun b!2732898 () Bool)

(assert (=> b!2732898 (= e!1721360 (= (list!11932 (_2!18206 lt!967355)) (list!11932 totalInput!328)))))

(declare-fun b!2732894 () Bool)

(assert (=> b!2732894 (= e!1721361 (= (list!11932 (_2!18206 lt!967355)) (_2!18205 (lexList!1234 thiss!11556 rules!1182 (list!11932 totalInput!328)))))))

(declare-fun d!790751 () Bool)

(assert (=> d!790751 e!1721361))

(declare-fun res!1147515 () Bool)

(assert (=> d!790751 (=> (not res!1147515) (not e!1721361))))

(assert (=> d!790751 (= res!1147515 e!1721360)))

(declare-fun c!442637 () Bool)

(assert (=> d!790751 (= c!442637 (> (size!24256 (_1!18206 lt!967355)) 0))))

(assert (=> d!790751 (= lt!967355 e!1721359)))

(declare-fun c!442636 () Bool)

(assert (=> d!790751 (= c!442636 ((_ is Some!6210) lt!967354))))

(assert (=> d!790751 (= lt!967354 (maxPrefixZipperSequence!1053 thiss!11556 rules!1182 totalInput!328))))

(assert (=> d!790751 (= (lexRec!665 thiss!11556 rules!1182 totalInput!328) lt!967355)))

(assert (= (and d!790751 c!442636) b!2732896))

(assert (= (and d!790751 (not c!442636)) b!2732895))

(assert (= (and d!790751 c!442637) b!2732897))

(assert (= (and d!790751 (not c!442637)) b!2732898))

(assert (= (and b!2732897 res!1147514) b!2732892))

(assert (= (and d!790751 res!1147515) b!2732893))

(assert (= (and b!2732893 res!1147513) b!2732894))

(declare-fun m!3143175 () Bool)

(assert (=> b!2732897 m!3143175))

(declare-fun m!3143177 () Bool)

(assert (=> b!2732897 m!3143177))

(declare-fun m!3143179 () Bool)

(assert (=> b!2732896 m!3143179))

(declare-fun m!3143181 () Bool)

(assert (=> b!2732896 m!3143181))

(declare-fun m!3143183 () Bool)

(assert (=> b!2732898 m!3143183))

(assert (=> b!2732898 m!3142561))

(declare-fun m!3143185 () Bool)

(assert (=> d!790751 m!3143185))

(declare-fun m!3143187 () Bool)

(assert (=> d!790751 m!3143187))

(declare-fun m!3143189 () Bool)

(assert (=> b!2732893 m!3143189))

(assert (=> b!2732893 m!3142561))

(assert (=> b!2732893 m!3142561))

(declare-fun m!3143191 () Bool)

(assert (=> b!2732893 m!3143191))

(assert (=> b!2732894 m!3143183))

(assert (=> b!2732894 m!3142561))

(assert (=> b!2732894 m!3142561))

(assert (=> b!2732894 m!3143191))

(declare-fun m!3143193 () Bool)

(assert (=> b!2732892 m!3143193))

(assert (=> b!2732531 d!790751))

(declare-fun d!790753 () Bool)

(declare-fun c!442640 () Bool)

(assert (=> d!790753 (= c!442640 ((_ is Node!9846) (c!442559 acc!331)))))

(declare-fun e!1721367 () Bool)

(assert (=> d!790753 (= (inv!42705 (c!442559 acc!331)) e!1721367)))

(declare-fun b!2732905 () Bool)

(declare-fun inv!42713 (Conc!9846) Bool)

(assert (=> b!2732905 (= e!1721367 (inv!42713 (c!442559 acc!331)))))

(declare-fun b!2732906 () Bool)

(declare-fun e!1721368 () Bool)

(assert (=> b!2732906 (= e!1721367 e!1721368)))

(declare-fun res!1147518 () Bool)

(assert (=> b!2732906 (= res!1147518 (not ((_ is Leaf!14995) (c!442559 acc!331))))))

(assert (=> b!2732906 (=> res!1147518 e!1721368)))

(declare-fun b!2732907 () Bool)

(declare-fun inv!42714 (Conc!9846) Bool)

(assert (=> b!2732907 (= e!1721368 (inv!42714 (c!442559 acc!331)))))

(assert (= (and d!790753 c!442640) b!2732905))

(assert (= (and d!790753 (not c!442640)) b!2732906))

(assert (= (and b!2732906 (not res!1147518)) b!2732907))

(declare-fun m!3143195 () Bool)

(assert (=> b!2732905 m!3143195))

(declare-fun m!3143197 () Bool)

(assert (=> b!2732907 m!3143197))

(assert (=> b!2732542 d!790753))

(declare-fun d!790755 () Bool)

(assert (=> d!790755 (= (inv!42695 (tag!5313 (h!36831 rules!1182))) (= (mod (str.len (value!154668 (tag!5313 (h!36831 rules!1182)))) 2) 0))))

(assert (=> b!2732529 d!790755))

(declare-fun d!790757 () Bool)

(declare-fun res!1147521 () Bool)

(declare-fun e!1721371 () Bool)

(assert (=> d!790757 (=> (not res!1147521) (not e!1721371))))

(declare-fun semiInverseModEq!1985 (Int Int) Bool)

(assert (=> d!790757 (= res!1147521 (semiInverseModEq!1985 (toChars!6658 (transformation!4809 (h!36831 rules!1182))) (toValue!6799 (transformation!4809 (h!36831 rules!1182)))))))

(assert (=> d!790757 (= (inv!42702 (transformation!4809 (h!36831 rules!1182))) e!1721371)))

(declare-fun b!2732910 () Bool)

(declare-fun equivClasses!1886 (Int Int) Bool)

(assert (=> b!2732910 (= e!1721371 (equivClasses!1886 (toChars!6658 (transformation!4809 (h!36831 rules!1182))) (toValue!6799 (transformation!4809 (h!36831 rules!1182)))))))

(assert (= (and d!790757 res!1147521) b!2732910))

(declare-fun m!3143199 () Bool)

(assert (=> d!790757 m!3143199))

(declare-fun m!3143201 () Bool)

(assert (=> b!2732910 m!3143201))

(assert (=> b!2732529 d!790757))

(declare-fun d!790759 () Bool)

(assert (=> d!790759 (= (isEmpty!17960 rules!1182) ((_ is Nil!31411) rules!1182))))

(assert (=> b!2732540 d!790759))

(declare-fun d!790761 () Bool)

(declare-fun c!442641 () Bool)

(assert (=> d!790761 (= c!442641 ((_ is Node!9845) (c!442557 input!603)))))

(declare-fun e!1721372 () Bool)

(assert (=> d!790761 (= (inv!42701 (c!442557 input!603)) e!1721372)))

(declare-fun b!2732911 () Bool)

(assert (=> b!2732911 (= e!1721372 (inv!42710 (c!442557 input!603)))))

(declare-fun b!2732912 () Bool)

(declare-fun e!1721373 () Bool)

(assert (=> b!2732912 (= e!1721372 e!1721373)))

(declare-fun res!1147522 () Bool)

(assert (=> b!2732912 (= res!1147522 (not ((_ is Leaf!14994) (c!442557 input!603))))))

(assert (=> b!2732912 (=> res!1147522 e!1721373)))

(declare-fun b!2732913 () Bool)

(assert (=> b!2732913 (= e!1721373 (inv!42711 (c!442557 input!603)))))

(assert (= (and d!790761 c!442641) b!2732911))

(assert (= (and d!790761 (not c!442641)) b!2732912))

(assert (= (and b!2732912 (not res!1147522)) b!2732913))

(declare-fun m!3143203 () Bool)

(assert (=> b!2732911 m!3143203))

(declare-fun m!3143205 () Bool)

(assert (=> b!2732913 m!3143205))

(assert (=> b!2732530 d!790761))

(declare-fun d!790763 () Bool)

(assert (=> d!790763 (= (isEmpty!17958 (list!11932 (_2!18206 lt!967214))) ((_ is Nil!31409) (list!11932 (_2!18206 lt!967214))))))

(assert (=> b!2732528 d!790763))

(declare-fun d!790765 () Bool)

(assert (=> d!790765 (= (list!11932 (_2!18206 lt!967214)) (list!11937 (c!442557 (_2!18206 lt!967214))))))

(declare-fun bs!489384 () Bool)

(assert (= bs!489384 d!790765))

(declare-fun m!3143207 () Bool)

(assert (=> bs!489384 m!3143207))

(assert (=> b!2732528 d!790765))

(declare-fun d!790767 () Bool)

(declare-fun e!1721376 () Bool)

(assert (=> d!790767 e!1721376))

(declare-fun res!1147525 () Bool)

(assert (=> d!790767 (=> (not res!1147525) (not e!1721376))))

(declare-fun prepend!1147 (Conc!9846 Token!9080) Conc!9846)

(assert (=> d!790767 (= res!1147525 (isBalanced!2992 (prepend!1147 (c!442559 (_1!18206 lt!967215)) (_1!18207 (v!33084 lt!967212)))))))

(declare-fun lt!967359 () BalanceConc!19306)

(assert (=> d!790767 (= lt!967359 (BalanceConc!19307 (prepend!1147 (c!442559 (_1!18206 lt!967215)) (_1!18207 (v!33084 lt!967212)))))))

(assert (=> d!790767 (= (prepend!1145 (_1!18206 lt!967215) (_1!18207 (v!33084 lt!967212))) lt!967359)))

(declare-fun b!2732916 () Bool)

(assert (=> b!2732916 (= e!1721376 (= (list!11933 lt!967359) (Cons!31412 (_1!18207 (v!33084 lt!967212)) (list!11933 (_1!18206 lt!967215)))))))

(assert (= (and d!790767 res!1147525) b!2732916))

(declare-fun m!3143209 () Bool)

(assert (=> d!790767 m!3143209))

(assert (=> d!790767 m!3143209))

(declare-fun m!3143211 () Bool)

(assert (=> d!790767 m!3143211))

(declare-fun m!3143213 () Bool)

(assert (=> b!2732916 m!3143213))

(assert (=> b!2732916 m!3142639))

(assert (=> b!2732539 d!790767))

(declare-fun b!2732919 () Bool)

(declare-fun res!1147527 () Bool)

(declare-fun e!1721377 () Bool)

(assert (=> b!2732919 (=> (not res!1147527) (not e!1721377))))

(declare-fun lt!967360 () List!31509)

(assert (=> b!2732919 (= res!1147527 (= (size!24254 lt!967360) (+ (size!24254 lt!967211) (size!24254 lt!967220))))))

(declare-fun b!2732917 () Bool)

(declare-fun e!1721378 () List!31509)

(assert (=> b!2732917 (= e!1721378 lt!967220)))

(declare-fun b!2732918 () Bool)

(assert (=> b!2732918 (= e!1721378 (Cons!31409 (h!36829 lt!967211) (++!7842 (t!227033 lt!967211) lt!967220)))))

(declare-fun d!790769 () Bool)

(assert (=> d!790769 e!1721377))

(declare-fun res!1147526 () Bool)

(assert (=> d!790769 (=> (not res!1147526) (not e!1721377))))

(assert (=> d!790769 (= res!1147526 (= (content!4466 lt!967360) ((_ map or) (content!4466 lt!967211) (content!4466 lt!967220))))))

(assert (=> d!790769 (= lt!967360 e!1721378)))

(declare-fun c!442643 () Bool)

(assert (=> d!790769 (= c!442643 ((_ is Nil!31409) lt!967211))))

(assert (=> d!790769 (= (++!7842 lt!967211 lt!967220) lt!967360)))

(declare-fun b!2732920 () Bool)

(assert (=> b!2732920 (= e!1721377 (or (not (= lt!967220 Nil!31409)) (= lt!967360 lt!967211)))))

(assert (= (and d!790769 c!442643) b!2732917))

(assert (= (and d!790769 (not c!442643)) b!2732918))

(assert (= (and d!790769 res!1147526) b!2732919))

(assert (= (and b!2732919 res!1147527) b!2732920))

(declare-fun m!3143215 () Bool)

(assert (=> b!2732919 m!3143215))

(declare-fun m!3143217 () Bool)

(assert (=> b!2732919 m!3143217))

(assert (=> b!2732919 m!3142743))

(declare-fun m!3143219 () Bool)

(assert (=> b!2732918 m!3143219))

(declare-fun m!3143221 () Bool)

(assert (=> d!790769 m!3143221))

(declare-fun m!3143223 () Bool)

(assert (=> d!790769 m!3143223))

(declare-fun m!3143225 () Bool)

(assert (=> d!790769 m!3143225))

(assert (=> b!2732537 d!790769))

(declare-fun d!790771 () Bool)

(assert (=> d!790771 (= (list!11933 (append!839 acc!331 (_1!18207 (v!33084 lt!967212)))) (list!11936 (c!442559 (append!839 acc!331 (_1!18207 (v!33084 lt!967212))))))))

(declare-fun bs!489385 () Bool)

(assert (= bs!489385 d!790771))

(declare-fun m!3143227 () Bool)

(assert (=> bs!489385 m!3143227))

(assert (=> b!2732537 d!790771))

(declare-fun b!2732929 () Bool)

(declare-fun e!1721383 () List!31512)

(assert (=> b!2732929 (= e!1721383 lt!967218)))

(declare-fun b!2732931 () Bool)

(declare-fun res!1147532 () Bool)

(declare-fun e!1721384 () Bool)

(assert (=> b!2732931 (=> (not res!1147532) (not e!1721384))))

(declare-fun lt!967363 () List!31512)

(assert (=> b!2732931 (= res!1147532 (= (size!24253 lt!967363) (+ (size!24253 lt!967206) (size!24253 lt!967218))))))

(declare-fun b!2732932 () Bool)

(assert (=> b!2732932 (= e!1721384 (or (not (= lt!967218 Nil!31412)) (= lt!967363 lt!967206)))))

(declare-fun d!790773 () Bool)

(assert (=> d!790773 e!1721384))

(declare-fun res!1147533 () Bool)

(assert (=> d!790773 (=> (not res!1147533) (not e!1721384))))

(declare-fun content!4467 (List!31512) (InoxSet Token!9080))

(assert (=> d!790773 (= res!1147533 (= (content!4467 lt!967363) ((_ map or) (content!4467 lt!967206) (content!4467 lt!967218))))))

(assert (=> d!790773 (= lt!967363 e!1721383)))

(declare-fun c!442646 () Bool)

(assert (=> d!790773 (= c!442646 ((_ is Nil!31412) lt!967206))))

(assert (=> d!790773 (= (++!7843 lt!967206 lt!967218) lt!967363)))

(declare-fun b!2732930 () Bool)

(assert (=> b!2732930 (= e!1721383 (Cons!31412 (h!36832 lt!967206) (++!7843 (t!227036 lt!967206) lt!967218)))))

(assert (= (and d!790773 c!442646) b!2732929))

(assert (= (and d!790773 (not c!442646)) b!2732930))

(assert (= (and d!790773 res!1147533) b!2732931))

(assert (= (and b!2732931 res!1147532) b!2732932))

(declare-fun m!3143229 () Bool)

(assert (=> b!2732931 m!3143229))

(declare-fun m!3143231 () Bool)

(assert (=> b!2732931 m!3143231))

(declare-fun m!3143233 () Bool)

(assert (=> b!2732931 m!3143233))

(declare-fun m!3143235 () Bool)

(assert (=> d!790773 m!3143235))

(declare-fun m!3143237 () Bool)

(assert (=> d!790773 m!3143237))

(declare-fun m!3143239 () Bool)

(assert (=> d!790773 m!3143239))

(declare-fun m!3143241 () Bool)

(assert (=> b!2732930 m!3143241))

(assert (=> b!2732537 d!790773))

(declare-fun d!790775 () Bool)

(assert (=> d!790775 (= (isEmpty!17959 lt!967204) ((_ is Nil!31412) lt!967204))))

(assert (=> b!2732537 d!790775))

(declare-fun d!790777 () Bool)

(declare-fun e!1721387 () Bool)

(assert (=> d!790777 e!1721387))

(declare-fun res!1147536 () Bool)

(assert (=> d!790777 (=> (not res!1147536) (not e!1721387))))

(declare-fun append!841 (Conc!9846 Token!9080) Conc!9846)

(assert (=> d!790777 (= res!1147536 (isBalanced!2992 (append!841 (c!442559 acc!331) (_1!18207 (v!33084 lt!967212)))))))

(declare-fun lt!967366 () BalanceConc!19306)

(assert (=> d!790777 (= lt!967366 (BalanceConc!19307 (append!841 (c!442559 acc!331) (_1!18207 (v!33084 lt!967212)))))))

(assert (=> d!790777 (= (append!839 acc!331 (_1!18207 (v!33084 lt!967212))) lt!967366)))

(declare-fun b!2732935 () Bool)

(declare-fun $colon+!187 (List!31512 Token!9080) List!31512)

(assert (=> b!2732935 (= e!1721387 (= (list!11933 lt!967366) ($colon+!187 (list!11933 acc!331) (_1!18207 (v!33084 lt!967212)))))))

(assert (= (and d!790777 res!1147536) b!2732935))

(declare-fun m!3143243 () Bool)

(assert (=> d!790777 m!3143243))

(assert (=> d!790777 m!3143243))

(declare-fun m!3143245 () Bool)

(assert (=> d!790777 m!3143245))

(declare-fun m!3143247 () Bool)

(assert (=> b!2732935 m!3143247))

(assert (=> b!2732935 m!3142579))

(assert (=> b!2732935 m!3142579))

(declare-fun m!3143249 () Bool)

(assert (=> b!2732935 m!3143249))

(assert (=> b!2732537 d!790777))

(declare-fun b!2732938 () Bool)

(declare-fun res!1147538 () Bool)

(declare-fun e!1721388 () Bool)

(assert (=> b!2732938 (=> (not res!1147538) (not e!1721388))))

(declare-fun lt!967367 () List!31509)

(assert (=> b!2732938 (= res!1147538 (= (size!24254 lt!967367) (+ (size!24254 lt!967222) (size!24254 lt!967220))))))

(declare-fun b!2732936 () Bool)

(declare-fun e!1721389 () List!31509)

(assert (=> b!2732936 (= e!1721389 lt!967220)))

(declare-fun b!2732937 () Bool)

(assert (=> b!2732937 (= e!1721389 (Cons!31409 (h!36829 lt!967222) (++!7842 (t!227033 lt!967222) lt!967220)))))

(declare-fun d!790779 () Bool)

(assert (=> d!790779 e!1721388))

(declare-fun res!1147537 () Bool)

(assert (=> d!790779 (=> (not res!1147537) (not e!1721388))))

(assert (=> d!790779 (= res!1147537 (= (content!4466 lt!967367) ((_ map or) (content!4466 lt!967222) (content!4466 lt!967220))))))

(assert (=> d!790779 (= lt!967367 e!1721389)))

(declare-fun c!442648 () Bool)

(assert (=> d!790779 (= c!442648 ((_ is Nil!31409) lt!967222))))

(assert (=> d!790779 (= (++!7842 lt!967222 lt!967220) lt!967367)))

(declare-fun b!2732939 () Bool)

(assert (=> b!2732939 (= e!1721388 (or (not (= lt!967220 Nil!31409)) (= lt!967367 lt!967222)))))

(assert (= (and d!790779 c!442648) b!2732936))

(assert (= (and d!790779 (not c!442648)) b!2732937))

(assert (= (and d!790779 res!1147537) b!2732938))

(assert (= (and b!2732938 res!1147538) b!2732939))

(declare-fun m!3143251 () Bool)

(assert (=> b!2732938 m!3143251))

(declare-fun m!3143253 () Bool)

(assert (=> b!2732938 m!3143253))

(assert (=> b!2732938 m!3142743))

(declare-fun m!3143255 () Bool)

(assert (=> b!2732937 m!3143255))

(declare-fun m!3143257 () Bool)

(assert (=> d!790779 m!3143257))

(declare-fun m!3143259 () Bool)

(assert (=> d!790779 m!3143259))

(assert (=> d!790779 m!3143225))

(assert (=> b!2732537 d!790779))

(declare-fun b!2732940 () Bool)

(declare-fun e!1721390 () List!31512)

(assert (=> b!2732940 (= e!1721390 lt!967218)))

(declare-fun b!2732942 () Bool)

(declare-fun res!1147539 () Bool)

(declare-fun e!1721391 () Bool)

(assert (=> b!2732942 (=> (not res!1147539) (not e!1721391))))

(declare-fun lt!967368 () List!31512)

(assert (=> b!2732942 (= res!1147539 (= (size!24253 lt!967368) (+ (size!24253 (++!7843 lt!967205 lt!967206)) (size!24253 lt!967218))))))

(declare-fun b!2732943 () Bool)

(assert (=> b!2732943 (= e!1721391 (or (not (= lt!967218 Nil!31412)) (= lt!967368 (++!7843 lt!967205 lt!967206))))))

(declare-fun d!790781 () Bool)

(assert (=> d!790781 e!1721391))

(declare-fun res!1147540 () Bool)

(assert (=> d!790781 (=> (not res!1147540) (not e!1721391))))

(assert (=> d!790781 (= res!1147540 (= (content!4467 lt!967368) ((_ map or) (content!4467 (++!7843 lt!967205 lt!967206)) (content!4467 lt!967218))))))

(assert (=> d!790781 (= lt!967368 e!1721390)))

(declare-fun c!442649 () Bool)

(assert (=> d!790781 (= c!442649 ((_ is Nil!31412) (++!7843 lt!967205 lt!967206)))))

(assert (=> d!790781 (= (++!7843 (++!7843 lt!967205 lt!967206) lt!967218) lt!967368)))

(declare-fun b!2732941 () Bool)

(assert (=> b!2732941 (= e!1721390 (Cons!31412 (h!36832 (++!7843 lt!967205 lt!967206)) (++!7843 (t!227036 (++!7843 lt!967205 lt!967206)) lt!967218)))))

(assert (= (and d!790781 c!442649) b!2732940))

(assert (= (and d!790781 (not c!442649)) b!2732941))

(assert (= (and d!790781 res!1147540) b!2732942))

(assert (= (and b!2732942 res!1147539) b!2732943))

(declare-fun m!3143261 () Bool)

(assert (=> b!2732942 m!3143261))

(assert (=> b!2732942 m!3142655))

(declare-fun m!3143263 () Bool)

(assert (=> b!2732942 m!3143263))

(assert (=> b!2732942 m!3143233))

(declare-fun m!3143265 () Bool)

(assert (=> d!790781 m!3143265))

(assert (=> d!790781 m!3142655))

(declare-fun m!3143267 () Bool)

(assert (=> d!790781 m!3143267))

(assert (=> d!790781 m!3143239))

(declare-fun m!3143269 () Bool)

(assert (=> b!2732941 m!3143269))

(assert (=> b!2732537 d!790781))

(declare-fun d!790783 () Bool)

(assert (=> d!790783 (= (++!7842 (++!7842 lt!967210 lt!967222) lt!967220) (++!7842 lt!967210 (++!7842 lt!967222 lt!967220)))))

(declare-fun lt!967371 () Unit!45426)

(declare-fun choose!16026 (List!31509 List!31509 List!31509) Unit!45426)

(assert (=> d!790783 (= lt!967371 (choose!16026 lt!967210 lt!967222 lt!967220))))

(assert (=> d!790783 (= (lemmaConcatAssociativity!1642 lt!967210 lt!967222 lt!967220) lt!967371)))

(declare-fun bs!489386 () Bool)

(assert (= bs!489386 d!790783))

(assert (=> bs!489386 m!3142659))

(declare-fun m!3143271 () Bool)

(assert (=> bs!489386 m!3143271))

(declare-fun m!3143273 () Bool)

(assert (=> bs!489386 m!3143273))

(assert (=> bs!489386 m!3142659))

(assert (=> bs!489386 m!3142635))

(assert (=> bs!489386 m!3142635))

(declare-fun m!3143275 () Bool)

(assert (=> bs!489386 m!3143275))

(assert (=> b!2732537 d!790783))

(declare-fun d!790785 () Bool)

(assert (=> d!790785 (= (list!11932 (_2!18206 lt!967215)) (list!11937 (c!442557 (_2!18206 lt!967215))))))

(declare-fun bs!489387 () Bool)

(assert (= bs!489387 d!790785))

(declare-fun m!3143277 () Bool)

(assert (=> bs!489387 m!3143277))

(assert (=> b!2732537 d!790785))

(declare-fun d!790787 () Bool)

(assert (=> d!790787 (= (list!11932 (charsOf!3030 (_1!18207 (v!33084 lt!967212)))) (list!11937 (c!442557 (charsOf!3030 (_1!18207 (v!33084 lt!967212))))))))

(declare-fun bs!489388 () Bool)

(assert (= bs!489388 d!790787))

(declare-fun m!3143279 () Bool)

(assert (=> bs!489388 m!3143279))

(assert (=> b!2732537 d!790787))

(declare-fun b!2732946 () Bool)

(declare-fun res!1147542 () Bool)

(declare-fun e!1721392 () Bool)

(assert (=> b!2732946 (=> (not res!1147542) (not e!1721392))))

(declare-fun lt!967372 () List!31509)

(assert (=> b!2732946 (= res!1147542 (= (size!24254 lt!967372) (+ (size!24254 lt!967210) (size!24254 lt!967222))))))

(declare-fun b!2732944 () Bool)

(declare-fun e!1721393 () List!31509)

(assert (=> b!2732944 (= e!1721393 lt!967222)))

(declare-fun b!2732945 () Bool)

(assert (=> b!2732945 (= e!1721393 (Cons!31409 (h!36829 lt!967210) (++!7842 (t!227033 lt!967210) lt!967222)))))

(declare-fun d!790789 () Bool)

(assert (=> d!790789 e!1721392))

(declare-fun res!1147541 () Bool)

(assert (=> d!790789 (=> (not res!1147541) (not e!1721392))))

(assert (=> d!790789 (= res!1147541 (= (content!4466 lt!967372) ((_ map or) (content!4466 lt!967210) (content!4466 lt!967222))))))

(assert (=> d!790789 (= lt!967372 e!1721393)))

(declare-fun c!442650 () Bool)

(assert (=> d!790789 (= c!442650 ((_ is Nil!31409) lt!967210))))

(assert (=> d!790789 (= (++!7842 lt!967210 lt!967222) lt!967372)))

(declare-fun b!2732947 () Bool)

(assert (=> b!2732947 (= e!1721392 (or (not (= lt!967222 Nil!31409)) (= lt!967372 lt!967210)))))

(assert (= (and d!790789 c!442650) b!2732944))

(assert (= (and d!790789 (not c!442650)) b!2732945))

(assert (= (and d!790789 res!1147541) b!2732946))

(assert (= (and b!2732946 res!1147542) b!2732947))

(declare-fun m!3143281 () Bool)

(assert (=> b!2732946 m!3143281))

(assert (=> b!2732946 m!3143065))

(assert (=> b!2732946 m!3143253))

(declare-fun m!3143283 () Bool)

(assert (=> b!2732945 m!3143283))

(declare-fun m!3143285 () Bool)

(assert (=> d!790789 m!3143285))

(assert (=> d!790789 m!3143073))

(assert (=> d!790789 m!3143259))

(assert (=> b!2732537 d!790789))

(declare-fun b!2732948 () Bool)

(declare-fun e!1721394 () List!31512)

(assert (=> b!2732948 (= e!1721394 (++!7843 lt!967206 lt!967218))))

(declare-fun b!2732950 () Bool)

(declare-fun res!1147543 () Bool)

(declare-fun e!1721395 () Bool)

(assert (=> b!2732950 (=> (not res!1147543) (not e!1721395))))

(declare-fun lt!967373 () List!31512)

(assert (=> b!2732950 (= res!1147543 (= (size!24253 lt!967373) (+ (size!24253 lt!967205) (size!24253 (++!7843 lt!967206 lt!967218)))))))

(declare-fun b!2732951 () Bool)

(assert (=> b!2732951 (= e!1721395 (or (not (= (++!7843 lt!967206 lt!967218) Nil!31412)) (= lt!967373 lt!967205)))))

(declare-fun d!790791 () Bool)

(assert (=> d!790791 e!1721395))

(declare-fun res!1147544 () Bool)

(assert (=> d!790791 (=> (not res!1147544) (not e!1721395))))

(assert (=> d!790791 (= res!1147544 (= (content!4467 lt!967373) ((_ map or) (content!4467 lt!967205) (content!4467 (++!7843 lt!967206 lt!967218)))))))

(assert (=> d!790791 (= lt!967373 e!1721394)))

(declare-fun c!442651 () Bool)

(assert (=> d!790791 (= c!442651 ((_ is Nil!31412) lt!967205))))

(assert (=> d!790791 (= (++!7843 lt!967205 (++!7843 lt!967206 lt!967218)) lt!967373)))

(declare-fun b!2732949 () Bool)

(assert (=> b!2732949 (= e!1721394 (Cons!31412 (h!36832 lt!967205) (++!7843 (t!227036 lt!967205) (++!7843 lt!967206 lt!967218))))))

(assert (= (and d!790791 c!442651) b!2732948))

(assert (= (and d!790791 (not c!442651)) b!2732949))

(assert (= (and d!790791 res!1147544) b!2732950))

(assert (= (and b!2732950 res!1147543) b!2732951))

(declare-fun m!3143287 () Bool)

(assert (=> b!2732950 m!3143287))

(declare-fun m!3143289 () Bool)

(assert (=> b!2732950 m!3143289))

(assert (=> b!2732950 m!3142631))

(declare-fun m!3143291 () Bool)

(assert (=> b!2732950 m!3143291))

(declare-fun m!3143293 () Bool)

(assert (=> d!790791 m!3143293))

(declare-fun m!3143295 () Bool)

(assert (=> d!790791 m!3143295))

(assert (=> d!790791 m!3142631))

(declare-fun m!3143297 () Bool)

(assert (=> d!790791 m!3143297))

(assert (=> b!2732949 m!3142631))

(declare-fun m!3143299 () Bool)

(assert (=> b!2732949 m!3143299))

(assert (=> b!2732537 d!790791))

(declare-fun d!790793 () Bool)

(declare-fun lt!967376 () BalanceConc!19304)

(assert (=> d!790793 (= (list!11932 lt!967376) (originalCharacters!5571 (_1!18207 (v!33084 lt!967212))))))

(declare-fun dynLambda!13554 (Int TokenValue!5031) BalanceConc!19304)

(assert (=> d!790793 (= lt!967376 (dynLambda!13554 (toChars!6658 (transformation!4809 (rule!7251 (_1!18207 (v!33084 lt!967212))))) (value!154669 (_1!18207 (v!33084 lt!967212)))))))

(assert (=> d!790793 (= (charsOf!3030 (_1!18207 (v!33084 lt!967212))) lt!967376)))

(declare-fun b_lambda!82745 () Bool)

(assert (=> (not b_lambda!82745) (not d!790793)))

(declare-fun tb!152441 () Bool)

(declare-fun t!227043 () Bool)

(assert (=> (and b!2732541 (= (toChars!6658 (transformation!4809 (h!36831 rules!1182))) (toChars!6658 (transformation!4809 (rule!7251 (_1!18207 (v!33084 lt!967212)))))) t!227043) tb!152441))

(declare-fun b!2732956 () Bool)

(declare-fun e!1721398 () Bool)

(declare-fun tp!860336 () Bool)

(assert (=> b!2732956 (= e!1721398 (and (inv!42701 (c!442557 (dynLambda!13554 (toChars!6658 (transformation!4809 (rule!7251 (_1!18207 (v!33084 lt!967212))))) (value!154669 (_1!18207 (v!33084 lt!967212)))))) tp!860336))))

(declare-fun result!188320 () Bool)

(assert (=> tb!152441 (= result!188320 (and (inv!42703 (dynLambda!13554 (toChars!6658 (transformation!4809 (rule!7251 (_1!18207 (v!33084 lt!967212))))) (value!154669 (_1!18207 (v!33084 lt!967212))))) e!1721398))))

(assert (= tb!152441 b!2732956))

(declare-fun m!3143301 () Bool)

(assert (=> b!2732956 m!3143301))

(declare-fun m!3143303 () Bool)

(assert (=> tb!152441 m!3143303))

(assert (=> d!790793 t!227043))

(declare-fun b_and!201047 () Bool)

(assert (= b_and!201039 (and (=> t!227043 result!188320) b_and!201047)))

(declare-fun m!3143305 () Bool)

(assert (=> d!790793 m!3143305))

(declare-fun m!3143307 () Bool)

(assert (=> d!790793 m!3143307))

(assert (=> b!2732537 d!790793))

(declare-fun b!2732959 () Bool)

(declare-fun res!1147546 () Bool)

(declare-fun e!1721399 () Bool)

(assert (=> b!2732959 (=> (not res!1147546) (not e!1721399))))

(declare-fun lt!967377 () List!31509)

(assert (=> b!2732959 (= res!1147546 (= (size!24254 lt!967377) (+ (size!24254 lt!967210) (size!24254 lt!967209))))))

(declare-fun b!2732957 () Bool)

(declare-fun e!1721400 () List!31509)

(assert (=> b!2732957 (= e!1721400 lt!967209)))

(declare-fun b!2732958 () Bool)

(assert (=> b!2732958 (= e!1721400 (Cons!31409 (h!36829 lt!967210) (++!7842 (t!227033 lt!967210) lt!967209)))))

(declare-fun d!790795 () Bool)

(assert (=> d!790795 e!1721399))

(declare-fun res!1147545 () Bool)

(assert (=> d!790795 (=> (not res!1147545) (not e!1721399))))

(assert (=> d!790795 (= res!1147545 (= (content!4466 lt!967377) ((_ map or) (content!4466 lt!967210) (content!4466 lt!967209))))))

(assert (=> d!790795 (= lt!967377 e!1721400)))

(declare-fun c!442652 () Bool)

(assert (=> d!790795 (= c!442652 ((_ is Nil!31409) lt!967210))))

(assert (=> d!790795 (= (++!7842 lt!967210 lt!967209) lt!967377)))

(declare-fun b!2732960 () Bool)

(assert (=> b!2732960 (= e!1721399 (or (not (= lt!967209 Nil!31409)) (= lt!967377 lt!967210)))))

(assert (= (and d!790795 c!442652) b!2732957))

(assert (= (and d!790795 (not c!442652)) b!2732958))

(assert (= (and d!790795 res!1147545) b!2732959))

(assert (= (and b!2732959 res!1147546) b!2732960))

(declare-fun m!3143309 () Bool)

(assert (=> b!2732959 m!3143309))

(assert (=> b!2732959 m!3143065))

(declare-fun m!3143311 () Bool)

(assert (=> b!2732959 m!3143311))

(declare-fun m!3143313 () Bool)

(assert (=> b!2732958 m!3143313))

(declare-fun m!3143315 () Bool)

(assert (=> d!790795 m!3143315))

(assert (=> d!790795 m!3143073))

(declare-fun m!3143317 () Bool)

(assert (=> d!790795 m!3143317))

(assert (=> b!2732537 d!790795))

(declare-fun d!790797 () Bool)

(assert (=> d!790797 (= (list!11932 (_2!18207 (v!33084 lt!967212))) (list!11937 (c!442557 (_2!18207 (v!33084 lt!967212)))))))

(declare-fun bs!489389 () Bool)

(assert (= bs!489389 d!790797))

(declare-fun m!3143319 () Bool)

(assert (=> bs!489389 m!3143319))

(assert (=> b!2732537 d!790797))

(declare-fun b!2732961 () Bool)

(declare-fun e!1721401 () List!31512)

(assert (=> b!2732961 (= e!1721401 lt!967206)))

(declare-fun b!2732963 () Bool)

(declare-fun res!1147547 () Bool)

(declare-fun e!1721402 () Bool)

(assert (=> b!2732963 (=> (not res!1147547) (not e!1721402))))

(declare-fun lt!967378 () List!31512)

(assert (=> b!2732963 (= res!1147547 (= (size!24253 lt!967378) (+ (size!24253 lt!967205) (size!24253 lt!967206))))))

(declare-fun b!2732964 () Bool)

(assert (=> b!2732964 (= e!1721402 (or (not (= lt!967206 Nil!31412)) (= lt!967378 lt!967205)))))

(declare-fun d!790799 () Bool)

(assert (=> d!790799 e!1721402))

(declare-fun res!1147548 () Bool)

(assert (=> d!790799 (=> (not res!1147548) (not e!1721402))))

(assert (=> d!790799 (= res!1147548 (= (content!4467 lt!967378) ((_ map or) (content!4467 lt!967205) (content!4467 lt!967206))))))

(assert (=> d!790799 (= lt!967378 e!1721401)))

(declare-fun c!442653 () Bool)

(assert (=> d!790799 (= c!442653 ((_ is Nil!31412) lt!967205))))

(assert (=> d!790799 (= (++!7843 lt!967205 lt!967206) lt!967378)))

(declare-fun b!2732962 () Bool)

(assert (=> b!2732962 (= e!1721401 (Cons!31412 (h!36832 lt!967205) (++!7843 (t!227036 lt!967205) lt!967206)))))

(assert (= (and d!790799 c!442653) b!2732961))

(assert (= (and d!790799 (not c!442653)) b!2732962))

(assert (= (and d!790799 res!1147548) b!2732963))

(assert (= (and b!2732963 res!1147547) b!2732964))

(declare-fun m!3143321 () Bool)

(assert (=> b!2732963 m!3143321))

(assert (=> b!2732963 m!3143289))

(assert (=> b!2732963 m!3143231))

(declare-fun m!3143323 () Bool)

(assert (=> d!790799 m!3143323))

(assert (=> d!790799 m!3143295))

(assert (=> d!790799 m!3143237))

(declare-fun m!3143325 () Bool)

(assert (=> b!2732962 m!3143325))

(assert (=> b!2732537 d!790799))

(declare-fun d!790801 () Bool)

(assert (=> d!790801 (= (++!7843 (++!7843 lt!967205 lt!967206) lt!967218) (++!7843 lt!967205 (++!7843 lt!967206 lt!967218)))))

(declare-fun lt!967381 () Unit!45426)

(declare-fun choose!16027 (List!31512 List!31512 List!31512) Unit!45426)

(assert (=> d!790801 (= lt!967381 (choose!16027 lt!967205 lt!967206 lt!967218))))

(assert (=> d!790801 (= (lemmaConcatAssociativity!1641 lt!967205 lt!967206 lt!967218) lt!967381)))

(declare-fun bs!489390 () Bool)

(assert (= bs!489390 d!790801))

(assert (=> bs!489390 m!3142655))

(assert (=> bs!489390 m!3142657))

(declare-fun m!3143327 () Bool)

(assert (=> bs!489390 m!3143327))

(assert (=> bs!489390 m!3142655))

(assert (=> bs!489390 m!3142631))

(assert (=> bs!489390 m!3142633))

(assert (=> bs!489390 m!3142631))

(assert (=> b!2732537 d!790801))

(declare-fun b!2732965 () Bool)

(declare-fun e!1721406 () Bool)

(declare-fun lt!967383 () tuple2!31148)

(assert (=> b!2732965 (= e!1721406 (not (isEmpty!17962 (_1!18206 lt!967383))))))

(declare-fun b!2732966 () Bool)

(declare-fun res!1147549 () Bool)

(declare-fun e!1721405 () Bool)

(assert (=> b!2732966 (=> (not res!1147549) (not e!1721405))))

(assert (=> b!2732966 (= res!1147549 (= (list!11933 (_1!18206 lt!967383)) (_1!18205 (lexList!1234 thiss!11556 rules!1182 (list!11932 (_2!18207 (v!33084 lt!967212)))))))))

(declare-fun b!2732968 () Bool)

(declare-fun e!1721403 () tuple2!31148)

(assert (=> b!2732968 (= e!1721403 (tuple2!31149 (BalanceConc!19307 Empty!9846) (_2!18207 (v!33084 lt!967212))))))

(declare-fun b!2732969 () Bool)

(declare-fun lt!967384 () tuple2!31148)

(declare-fun lt!967382 () Option!6211)

(assert (=> b!2732969 (= e!1721403 (tuple2!31149 (prepend!1145 (_1!18206 lt!967384) (_1!18207 (v!33084 lt!967382))) (_2!18206 lt!967384)))))

(assert (=> b!2732969 (= lt!967384 (lexRec!665 thiss!11556 rules!1182 (_2!18207 (v!33084 lt!967382))))))

(declare-fun b!2732970 () Bool)

(declare-fun e!1721404 () Bool)

(assert (=> b!2732970 (= e!1721404 e!1721406)))

(declare-fun res!1147550 () Bool)

(assert (=> b!2732970 (= res!1147550 (< (size!24255 (_2!18206 lt!967383)) (size!24255 (_2!18207 (v!33084 lt!967212)))))))

(assert (=> b!2732970 (=> (not res!1147550) (not e!1721406))))

(declare-fun b!2732971 () Bool)

(assert (=> b!2732971 (= e!1721404 (= (list!11932 (_2!18206 lt!967383)) (list!11932 (_2!18207 (v!33084 lt!967212)))))))

(declare-fun b!2732967 () Bool)

(assert (=> b!2732967 (= e!1721405 (= (list!11932 (_2!18206 lt!967383)) (_2!18205 (lexList!1234 thiss!11556 rules!1182 (list!11932 (_2!18207 (v!33084 lt!967212)))))))))

(declare-fun d!790803 () Bool)

(assert (=> d!790803 e!1721405))

(declare-fun res!1147551 () Bool)

(assert (=> d!790803 (=> (not res!1147551) (not e!1721405))))

(assert (=> d!790803 (= res!1147551 e!1721404)))

(declare-fun c!442655 () Bool)

(assert (=> d!790803 (= c!442655 (> (size!24256 (_1!18206 lt!967383)) 0))))

(assert (=> d!790803 (= lt!967383 e!1721403)))

(declare-fun c!442654 () Bool)

(assert (=> d!790803 (= c!442654 ((_ is Some!6210) lt!967382))))

(assert (=> d!790803 (= lt!967382 (maxPrefixZipperSequence!1053 thiss!11556 rules!1182 (_2!18207 (v!33084 lt!967212))))))

(assert (=> d!790803 (= (lexRec!665 thiss!11556 rules!1182 (_2!18207 (v!33084 lt!967212))) lt!967383)))

(assert (= (and d!790803 c!442654) b!2732969))

(assert (= (and d!790803 (not c!442654)) b!2732968))

(assert (= (and d!790803 c!442655) b!2732970))

(assert (= (and d!790803 (not c!442655)) b!2732971))

(assert (= (and b!2732970 res!1147550) b!2732965))

(assert (= (and d!790803 res!1147551) b!2732966))

(assert (= (and b!2732966 res!1147549) b!2732967))

(declare-fun m!3143329 () Bool)

(assert (=> b!2732970 m!3143329))

(declare-fun m!3143331 () Bool)

(assert (=> b!2732970 m!3143331))

(declare-fun m!3143333 () Bool)

(assert (=> b!2732969 m!3143333))

(declare-fun m!3143335 () Bool)

(assert (=> b!2732969 m!3143335))

(declare-fun m!3143337 () Bool)

(assert (=> b!2732971 m!3143337))

(assert (=> b!2732971 m!3142653))

(declare-fun m!3143339 () Bool)

(assert (=> d!790803 m!3143339))

(declare-fun m!3143341 () Bool)

(assert (=> d!790803 m!3143341))

(declare-fun m!3143343 () Bool)

(assert (=> b!2732966 m!3143343))

(assert (=> b!2732966 m!3142653))

(assert (=> b!2732966 m!3142653))

(declare-fun m!3143345 () Bool)

(assert (=> b!2732966 m!3143345))

(assert (=> b!2732967 m!3143337))

(assert (=> b!2732967 m!3142653))

(assert (=> b!2732967 m!3142653))

(assert (=> b!2732967 m!3143345))

(declare-fun m!3143347 () Bool)

(assert (=> b!2732965 m!3143347))

(assert (=> b!2732537 d!790803))

(declare-fun d!790805 () Bool)

(assert (=> d!790805 (= (list!11933 (_1!18206 lt!967215)) (list!11936 (c!442559 (_1!18206 lt!967215))))))

(declare-fun bs!489391 () Bool)

(assert (= bs!489391 d!790805))

(declare-fun m!3143349 () Bool)

(assert (=> bs!489391 m!3143349))

(assert (=> b!2732537 d!790805))

(declare-fun d!790807 () Bool)

(declare-fun res!1147554 () Bool)

(declare-fun e!1721409 () Bool)

(assert (=> d!790807 (=> (not res!1147554) (not e!1721409))))

(declare-fun rulesValid!1792 (LexerInterface!4405 List!31511) Bool)

(assert (=> d!790807 (= res!1147554 (rulesValid!1792 thiss!11556 rules!1182))))

(assert (=> d!790807 (= (rulesInvariant!3890 thiss!11556 rules!1182) e!1721409)))

(declare-fun b!2732974 () Bool)

(declare-datatypes ((List!31514 0))(
  ( (Nil!31414) (Cons!31414 (h!36834 String!35055) (t!227046 List!31514)) )
))
(declare-fun noDuplicateTag!1788 (LexerInterface!4405 List!31511 List!31514) Bool)

(assert (=> b!2732974 (= e!1721409 (noDuplicateTag!1788 thiss!11556 rules!1182 Nil!31414))))

(assert (= (and d!790807 res!1147554) b!2732974))

(declare-fun m!3143351 () Bool)

(assert (=> d!790807 m!3143351))

(declare-fun m!3143353 () Bool)

(assert (=> b!2732974 m!3143353))

(assert (=> b!2732527 d!790807))

(declare-fun d!790809 () Bool)

(assert (=> d!790809 (= (list!11932 (_2!18206 lt!967216)) (list!11937 (c!442557 (_2!18206 lt!967216))))))

(declare-fun bs!489392 () Bool)

(assert (= bs!489392 d!790809))

(declare-fun m!3143355 () Bool)

(assert (=> bs!489392 m!3143355))

(assert (=> b!2732538 d!790809))

(declare-fun d!790811 () Bool)

(assert (=> d!790811 (= (list!11932 (_2!18206 lt!967219)) (list!11937 (c!442557 (_2!18206 lt!967219))))))

(declare-fun bs!489393 () Bool)

(assert (= bs!489393 d!790811))

(declare-fun m!3143357 () Bool)

(assert (=> bs!489393 m!3143357))

(assert (=> b!2732538 d!790811))

(declare-fun b!2732975 () Bool)

(declare-fun e!1721412 () Bool)

(declare-fun lt!967386 () tuple2!31146)

(assert (=> b!2732975 (= e!1721412 (= (_2!18205 lt!967386) lt!967217))))

(declare-fun d!790813 () Bool)

(assert (=> d!790813 e!1721412))

(declare-fun c!442656 () Bool)

(assert (=> d!790813 (= c!442656 (> (size!24253 (_1!18205 lt!967386)) 0))))

(declare-fun e!1721410 () tuple2!31146)

(assert (=> d!790813 (= lt!967386 e!1721410)))

(declare-fun c!442657 () Bool)

(declare-fun lt!967385 () Option!6213)

(assert (=> d!790813 (= c!442657 ((_ is Some!6212) lt!967385))))

(assert (=> d!790813 (= lt!967385 (maxPrefix!2376 thiss!11556 rules!1182 lt!967217))))

(assert (=> d!790813 (= (lexList!1234 thiss!11556 rules!1182 lt!967217) lt!967386)))

(declare-fun b!2732976 () Bool)

(assert (=> b!2732976 (= e!1721410 (tuple2!31147 Nil!31412 lt!967217))))

(declare-fun b!2732977 () Bool)

(declare-fun lt!967387 () tuple2!31146)

(assert (=> b!2732977 (= e!1721410 (tuple2!31147 (Cons!31412 (_1!18209 (v!33090 lt!967385)) (_1!18205 lt!967387)) (_2!18205 lt!967387)))))

(assert (=> b!2732977 (= lt!967387 (lexList!1234 thiss!11556 rules!1182 (_2!18209 (v!33090 lt!967385))))))

(declare-fun b!2732978 () Bool)

(declare-fun e!1721411 () Bool)

(assert (=> b!2732978 (= e!1721411 (not (isEmpty!17959 (_1!18205 lt!967386))))))

(declare-fun b!2732979 () Bool)

(assert (=> b!2732979 (= e!1721412 e!1721411)))

(declare-fun res!1147555 () Bool)

(assert (=> b!2732979 (= res!1147555 (< (size!24254 (_2!18205 lt!967386)) (size!24254 lt!967217)))))

(assert (=> b!2732979 (=> (not res!1147555) (not e!1721411))))

(assert (= (and d!790813 c!442657) b!2732977))

(assert (= (and d!790813 (not c!442657)) b!2732976))

(assert (= (and d!790813 c!442656) b!2732979))

(assert (= (and d!790813 (not c!442656)) b!2732975))

(assert (= (and b!2732979 res!1147555) b!2732978))

(declare-fun m!3143359 () Bool)

(assert (=> d!790813 m!3143359))

(declare-fun m!3143361 () Bool)

(assert (=> d!790813 m!3143361))

(declare-fun m!3143363 () Bool)

(assert (=> b!2732977 m!3143363))

(declare-fun m!3143365 () Bool)

(assert (=> b!2732978 m!3143365))

(declare-fun m!3143367 () Bool)

(assert (=> b!2732979 m!3143367))

(declare-fun m!3143369 () Bool)

(assert (=> b!2732979 m!3143369))

(assert (=> b!2732525 d!790813))

(declare-fun b!2732980 () Bool)

(declare-fun e!1721413 () List!31512)

(assert (=> b!2732980 (= e!1721413 lt!967218)))

(declare-fun b!2732982 () Bool)

(declare-fun res!1147556 () Bool)

(declare-fun e!1721414 () Bool)

(assert (=> b!2732982 (=> (not res!1147556) (not e!1721414))))

(declare-fun lt!967388 () List!31512)

(assert (=> b!2732982 (= res!1147556 (= (size!24253 lt!967388) (+ (size!24253 lt!967204) (size!24253 lt!967218))))))

(declare-fun b!2732983 () Bool)

(assert (=> b!2732983 (= e!1721414 (or (not (= lt!967218 Nil!31412)) (= lt!967388 lt!967204)))))

(declare-fun d!790815 () Bool)

(assert (=> d!790815 e!1721414))

(declare-fun res!1147557 () Bool)

(assert (=> d!790815 (=> (not res!1147557) (not e!1721414))))

(assert (=> d!790815 (= res!1147557 (= (content!4467 lt!967388) ((_ map or) (content!4467 lt!967204) (content!4467 lt!967218))))))

(assert (=> d!790815 (= lt!967388 e!1721413)))

(declare-fun c!442658 () Bool)

(assert (=> d!790815 (= c!442658 ((_ is Nil!31412) lt!967204))))

(assert (=> d!790815 (= (++!7843 lt!967204 lt!967218) lt!967388)))

(declare-fun b!2732981 () Bool)

(assert (=> b!2732981 (= e!1721413 (Cons!31412 (h!36832 lt!967204) (++!7843 (t!227036 lt!967204) lt!967218)))))

(assert (= (and d!790815 c!442658) b!2732980))

(assert (= (and d!790815 (not c!442658)) b!2732981))

(assert (= (and d!790815 res!1147557) b!2732982))

(assert (= (and b!2732982 res!1147556) b!2732983))

(declare-fun m!3143371 () Bool)

(assert (=> b!2732982 m!3143371))

(declare-fun m!3143373 () Bool)

(assert (=> b!2732982 m!3143373))

(assert (=> b!2732982 m!3143233))

(declare-fun m!3143375 () Bool)

(assert (=> d!790815 m!3143375))

(declare-fun m!3143377 () Bool)

(assert (=> d!790815 m!3143377))

(assert (=> d!790815 m!3143239))

(declare-fun m!3143379 () Bool)

(assert (=> b!2732981 m!3143379))

(assert (=> b!2732525 d!790815))

(declare-fun d!790817 () Bool)

(assert (=> d!790817 (= (isEmpty!17958 lt!967211) ((_ is Nil!31409) lt!967211))))

(assert (=> b!2732536 d!790817))

(declare-fun d!790819 () Bool)

(declare-fun c!442659 () Bool)

(assert (=> d!790819 (= c!442659 ((_ is Node!9845) (c!442557 totalInput!328)))))

(declare-fun e!1721415 () Bool)

(assert (=> d!790819 (= (inv!42701 (c!442557 totalInput!328)) e!1721415)))

(declare-fun b!2732984 () Bool)

(assert (=> b!2732984 (= e!1721415 (inv!42710 (c!442557 totalInput!328)))))

(declare-fun b!2732985 () Bool)

(declare-fun e!1721416 () Bool)

(assert (=> b!2732985 (= e!1721415 e!1721416)))

(declare-fun res!1147558 () Bool)

(assert (=> b!2732985 (= res!1147558 (not ((_ is Leaf!14994) (c!442557 totalInput!328))))))

(assert (=> b!2732985 (=> res!1147558 e!1721416)))

(declare-fun b!2732986 () Bool)

(assert (=> b!2732986 (= e!1721416 (inv!42711 (c!442557 totalInput!328)))))

(assert (= (and d!790819 c!442659) b!2732984))

(assert (= (and d!790819 (not c!442659)) b!2732985))

(assert (= (and b!2732985 (not res!1147558)) b!2732986))

(declare-fun m!3143381 () Bool)

(assert (=> b!2732984 m!3143381))

(declare-fun m!3143383 () Bool)

(assert (=> b!2732986 m!3143383))

(assert (=> b!2732526 d!790819))

(declare-fun b!2733000 () Bool)

(declare-fun e!1721419 () Bool)

(declare-fun tp!860349 () Bool)

(declare-fun tp!860351 () Bool)

(assert (=> b!2733000 (= e!1721419 (and tp!860349 tp!860351))))

(assert (=> b!2732529 (= tp!860274 e!1721419)))

(declare-fun b!2732999 () Bool)

(declare-fun tp!860350 () Bool)

(assert (=> b!2732999 (= e!1721419 tp!860350)))

(declare-fun b!2732998 () Bool)

(declare-fun tp!860347 () Bool)

(declare-fun tp!860348 () Bool)

(assert (=> b!2732998 (= e!1721419 (and tp!860347 tp!860348))))

(declare-fun b!2732997 () Bool)

(declare-fun tp_is_empty!13901 () Bool)

(assert (=> b!2732997 (= e!1721419 tp_is_empty!13901)))

(assert (= (and b!2732529 ((_ is ElementMatch!7961) (regex!4809 (h!36831 rules!1182)))) b!2732997))

(assert (= (and b!2732529 ((_ is Concat!12993) (regex!4809 (h!36831 rules!1182)))) b!2732998))

(assert (= (and b!2732529 ((_ is Star!7961) (regex!4809 (h!36831 rules!1182)))) b!2732999))

(assert (= (and b!2732529 ((_ is Union!7961) (regex!4809 (h!36831 rules!1182)))) b!2733000))

(declare-fun b!2733011 () Bool)

(declare-fun b_free!76801 () Bool)

(declare-fun b_next!77505 () Bool)

(assert (=> b!2733011 (= b_free!76801 (not b_next!77505))))

(declare-fun tp!860361 () Bool)

(declare-fun b_and!201049 () Bool)

(assert (=> b!2733011 (= tp!860361 b_and!201049)))

(declare-fun b_free!76803 () Bool)

(declare-fun b_next!77507 () Bool)

(assert (=> b!2733011 (= b_free!76803 (not b_next!77507))))

(declare-fun tb!152443 () Bool)

(declare-fun t!227045 () Bool)

(assert (=> (and b!2733011 (= (toChars!6658 (transformation!4809 (h!36831 (t!227035 rules!1182)))) (toChars!6658 (transformation!4809 (rule!7251 (_1!18207 (v!33084 lt!967212)))))) t!227045) tb!152443))

(declare-fun result!188328 () Bool)

(assert (= result!188328 result!188320))

(assert (=> d!790793 t!227045))

(declare-fun tp!860360 () Bool)

(declare-fun b_and!201051 () Bool)

(assert (=> b!2733011 (= tp!860360 (and (=> t!227045 result!188328) b_and!201051))))

(declare-fun e!1721428 () Bool)

(assert (=> b!2733011 (= e!1721428 (and tp!860361 tp!860360))))

(declare-fun b!2733010 () Bool)

(declare-fun e!1721430 () Bool)

(declare-fun tp!860363 () Bool)

(assert (=> b!2733010 (= e!1721430 (and tp!860363 (inv!42695 (tag!5313 (h!36831 (t!227035 rules!1182)))) (inv!42702 (transformation!4809 (h!36831 (t!227035 rules!1182)))) e!1721428))))

(declare-fun b!2733009 () Bool)

(declare-fun e!1721431 () Bool)

(declare-fun tp!860362 () Bool)

(assert (=> b!2733009 (= e!1721431 (and e!1721430 tp!860362))))

(assert (=> b!2732535 (= tp!860276 e!1721431)))

(assert (= b!2733010 b!2733011))

(assert (= b!2733009 b!2733010))

(assert (= (and b!2732535 ((_ is Cons!31411) (t!227035 rules!1182))) b!2733009))

(declare-fun m!3143385 () Bool)

(assert (=> b!2733010 m!3143385))

(declare-fun m!3143387 () Bool)

(assert (=> b!2733010 m!3143387))

(declare-fun tp!860372 () Bool)

(declare-fun tp!860370 () Bool)

(declare-fun e!1721436 () Bool)

(declare-fun b!2733020 () Bool)

(assert (=> b!2733020 (= e!1721436 (and (inv!42701 (left!24151 (c!442557 input!603))) tp!860370 (inv!42701 (right!24481 (c!442557 input!603))) tp!860372))))

(declare-fun b!2733022 () Bool)

(declare-fun e!1721437 () Bool)

(declare-fun tp!860371 () Bool)

(assert (=> b!2733022 (= e!1721437 tp!860371)))

(declare-fun b!2733021 () Bool)

(declare-fun inv!42716 (IArray!19695) Bool)

(assert (=> b!2733021 (= e!1721436 (and (inv!42716 (xs!12936 (c!442557 input!603))) e!1721437))))

(assert (=> b!2732530 (= tp!860273 (and (inv!42701 (c!442557 input!603)) e!1721436))))

(assert (= (and b!2732530 ((_ is Node!9845) (c!442557 input!603))) b!2733020))

(assert (= b!2733021 b!2733022))

(assert (= (and b!2732530 ((_ is Leaf!14994) (c!442557 input!603))) b!2733021))

(declare-fun m!3143389 () Bool)

(assert (=> b!2733020 m!3143389))

(declare-fun m!3143391 () Bool)

(assert (=> b!2733020 m!3143391))

(declare-fun m!3143393 () Bool)

(assert (=> b!2733021 m!3143393))

(assert (=> b!2732530 m!3142575))

(declare-fun tp!860373 () Bool)

(declare-fun tp!860375 () Bool)

(declare-fun b!2733023 () Bool)

(declare-fun e!1721438 () Bool)

(assert (=> b!2733023 (= e!1721438 (and (inv!42701 (left!24151 (c!442557 treated!9))) tp!860373 (inv!42701 (right!24481 (c!442557 treated!9))) tp!860375))))

(declare-fun b!2733025 () Bool)

(declare-fun e!1721439 () Bool)

(declare-fun tp!860374 () Bool)

(assert (=> b!2733025 (= e!1721439 tp!860374)))

(declare-fun b!2733024 () Bool)

(assert (=> b!2733024 (= e!1721438 (and (inv!42716 (xs!12936 (c!442557 treated!9))) e!1721439))))

(assert (=> b!2732534 (= tp!860275 (and (inv!42701 (c!442557 treated!9)) e!1721438))))

(assert (= (and b!2732534 ((_ is Node!9845) (c!442557 treated!9))) b!2733023))

(assert (= b!2733024 b!2733025))

(assert (= (and b!2732534 ((_ is Leaf!14994) (c!442557 treated!9))) b!2733024))

(declare-fun m!3143395 () Bool)

(assert (=> b!2733023 m!3143395))

(declare-fun m!3143397 () Bool)

(assert (=> b!2733023 m!3143397))

(declare-fun m!3143399 () Bool)

(assert (=> b!2733024 m!3143399))

(assert (=> b!2732534 m!3142573))

(declare-fun b!2733026 () Bool)

(declare-fun tp!860376 () Bool)

(declare-fun e!1721440 () Bool)

(declare-fun tp!860378 () Bool)

(assert (=> b!2733026 (= e!1721440 (and (inv!42701 (left!24151 (c!442557 totalInput!328))) tp!860376 (inv!42701 (right!24481 (c!442557 totalInput!328))) tp!860378))))

(declare-fun b!2733028 () Bool)

(declare-fun e!1721441 () Bool)

(declare-fun tp!860377 () Bool)

(assert (=> b!2733028 (= e!1721441 tp!860377)))

(declare-fun b!2733027 () Bool)

(assert (=> b!2733027 (= e!1721440 (and (inv!42716 (xs!12936 (c!442557 totalInput!328))) e!1721441))))

(assert (=> b!2732526 (= tp!860272 (and (inv!42701 (c!442557 totalInput!328)) e!1721440))))

(assert (= (and b!2732526 ((_ is Node!9845) (c!442557 totalInput!328))) b!2733026))

(assert (= b!2733027 b!2733028))

(assert (= (and b!2732526 ((_ is Leaf!14994) (c!442557 totalInput!328))) b!2733027))

(declare-fun m!3143401 () Bool)

(assert (=> b!2733026 m!3143401))

(declare-fun m!3143403 () Bool)

(assert (=> b!2733026 m!3143403))

(declare-fun m!3143405 () Bool)

(assert (=> b!2733027 m!3143405))

(assert (=> b!2732526 m!3142559))

(declare-fun b!2733037 () Bool)

(declare-fun tp!860385 () Bool)

(declare-fun tp!860387 () Bool)

(declare-fun e!1721447 () Bool)

(assert (=> b!2733037 (= e!1721447 (and (inv!42705 (left!24152 (c!442559 acc!331))) tp!860385 (inv!42705 (right!24482 (c!442559 acc!331))) tp!860387))))

(declare-fun b!2733039 () Bool)

(declare-fun e!1721446 () Bool)

(declare-fun tp!860386 () Bool)

(assert (=> b!2733039 (= e!1721446 tp!860386)))

(declare-fun b!2733038 () Bool)

(declare-fun inv!42717 (IArray!19697) Bool)

(assert (=> b!2733038 (= e!1721447 (and (inv!42717 (xs!12937 (c!442559 acc!331))) e!1721446))))

(assert (=> b!2732542 (= tp!860279 (and (inv!42705 (c!442559 acc!331)) e!1721447))))

(assert (= (and b!2732542 ((_ is Node!9846) (c!442559 acc!331))) b!2733037))

(assert (= b!2733038 b!2733039))

(assert (= (and b!2732542 ((_ is Leaf!14995) (c!442559 acc!331))) b!2733038))

(declare-fun m!3143407 () Bool)

(assert (=> b!2733037 m!3143407))

(declare-fun m!3143409 () Bool)

(assert (=> b!2733037 m!3143409))

(declare-fun m!3143411 () Bool)

(assert (=> b!2733038 m!3143411))

(assert (=> b!2732542 m!3142601))

(check-sat (not b!2732889) (not b!2733039) (not b!2732534) (not b!2733026) (not b!2732865) (not d!790797) (not b!2732919) (not b!2733010) (not b!2732986) (not d!790773) (not b_next!77499) (not d!790793) (not b!2732542) (not d!790751) (not d!790799) (not b!2732867) (not b!2733028) (not b!2732869) (not d!790731) (not b!2732911) (not b!2732893) (not b!2732974) (not b!2732872) (not b!2732941) (not d!790789) (not b!2732956) (not b!2732755) (not b!2733038) (not b!2732881) (not d!790723) (not b!2732756) b_and!201049 (not b!2732958) b_and!201047 (not b!2732896) (not b!2733027) (not b!2732969) (not b!2732918) (not b!2732894) (not b_next!77507) (not b!2732882) (not d!790785) (not b!2732970) (not b!2732892) (not b!2732830) (not d!790767) (not d!790757) (not b!2732891) (not b!2732949) (not b!2732999) (not b!2732945) (not b!2733021) (not b!2732959) (not b!2733023) (not bm!176559) (not d!790735) (not d!790811) (not b!2732757) (not d!790629) (not b!2732753) (not b!2732931) b_and!201037 (not tb!152441) (not b!2732998) (not d!790729) (not b_next!77505) (not d!790809) (not b!2732898) (not b!2732977) (not b!2732897) (not b!2732982) (not b!2732599) (not d!790815) (not b!2733024) (not b!2732962) (not b_next!77497) (not b!2732600) (not b!2732601) (not b!2732978) (not b!2732829) (not d!790625) (not b!2732916) (not b!2732530) (not d!790779) (not d!790769) (not d!790803) (not b!2732870) (not d!790787) (not d!790745) (not b!2732950) (not d!790739) (not b!2732938) (not b!2732910) (not b!2732966) (not b!2732771) (not b!2732751) (not b!2732868) (not d!790781) (not d!790783) (not b!2732883) (not d!790777) (not d!790813) (not d!790737) (not b!2732886) (not b!2732884) (not d!790801) (not b!2732984) (not b!2732871) (not d!790765) (not d!790627) (not d!790721) (not b!2732965) (not b!2732981) (not b!2732885) (not d!790613) (not d!790807) (not b!2732971) (not b!2733020) (not d!790741) (not b!2732937) (not b!2733022) (not b!2732890) (not b!2732935) (not d!790791) (not b!2732967) (not d!790771) (not b!2732887) (not d!790733) b_and!201051 (not d!790749) (not b_lambda!82745) (not b!2732913) (not b!2732979) (not b!2732773) (not b!2732907) (not d!790743) (not b!2733000) (not b!2732930) tp_is_empty!13901 (not d!790795) (not d!790805) (not b!2732905) (not b!2733009) (not b!2732526) (not b!2732946) (not b!2733025) (not b!2732942) (not d!790747) (not b!2732963) (not b!2733037) (not b!2732752))
(check-sat (not b_next!77499) b_and!201049 b_and!201047 (not b_next!77507) b_and!201037 (not b_next!77505) (not b_next!77497) b_and!201051)
