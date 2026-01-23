; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513624 () Bool)

(assert start!513624)

(declare-fun b!4902540 () Bool)

(declare-fun b_free!131835 () Bool)

(declare-fun b_next!132625 () Bool)

(assert (=> b!4902540 (= b_free!131835 (not b_next!132625))))

(declare-fun tp!1379436 () Bool)

(declare-fun b_and!346227 () Bool)

(assert (=> b!4902540 (= tp!1379436 b_and!346227)))

(declare-fun b_free!131837 () Bool)

(declare-fun b_next!132627 () Bool)

(assert (=> b!4902540 (= b_free!131837 (not b_next!132627))))

(declare-fun tp!1379439 () Bool)

(declare-fun b_and!346229 () Bool)

(assert (=> b!4902540 (= tp!1379439 b_and!346229)))

(declare-fun b!4902559 () Bool)

(declare-fun e!3064652 () Bool)

(assert (=> b!4902559 (= e!3064652 true)))

(declare-fun b!4902558 () Bool)

(declare-fun e!3064651 () Bool)

(assert (=> b!4902558 (= e!3064651 e!3064652)))

(declare-fun b!4902549 () Bool)

(assert (=> b!4902549 e!3064651))

(assert (= b!4902558 b!4902559))

(assert (= b!4902549 b!4902558))

(declare-fun order!25647 () Int)

(declare-fun order!25645 () Int)

(declare-datatypes ((C!26780 0))(
  ( (C!26781 (val!22724 Int)) )
))
(declare-datatypes ((Regex!13291 0))(
  ( (ElementMatch!13291 (c!833199 C!26780)) (Concat!21817 (regOne!27094 Regex!13291) (regTwo!27094 Regex!13291)) (EmptyExpr!13291) (Star!13291 (reg!13620 Regex!13291)) (EmptyLang!13291) (Union!13291 (regOne!27095 Regex!13291) (regTwo!27095 Regex!13291)) )
))
(declare-datatypes ((String!64071 0))(
  ( (String!64072 (value!263266 String)) )
))
(declare-datatypes ((List!56630 0))(
  ( (Nil!56506) (Cons!56506 (h!62954 (_ BitVec 16)) (t!366722 List!56630)) )
))
(declare-datatypes ((TokenValue!8526 0))(
  ( (FloatLiteralValue!17052 (text!60127 List!56630)) (TokenValueExt!8525 (__x!34345 Int)) (Broken!42630 (value!263267 List!56630)) (Object!8649) (End!8526) (Def!8526) (Underscore!8526) (Match!8526) (Else!8526) (Error!8526) (Case!8526) (If!8526) (Extends!8526) (Abstract!8526) (Class!8526) (Val!8526) (DelimiterValue!17052 (del!8586 List!56630)) (KeywordValue!8532 (value!263268 List!56630)) (CommentValue!17052 (value!263269 List!56630)) (WhitespaceValue!17052 (value!263270 List!56630)) (IndentationValue!8526 (value!263271 List!56630)) (String!64073) (Int32!8526) (Broken!42631 (value!263272 List!56630)) (Boolean!8527) (Unit!146616) (OperatorValue!8529 (op!8586 List!56630)) (IdentifierValue!17052 (value!263273 List!56630)) (IdentifierValue!17053 (value!263274 List!56630)) (WhitespaceValue!17053 (value!263275 List!56630)) (True!17052) (False!17052) (Broken!42632 (value!263276 List!56630)) (Broken!42633 (value!263277 List!56630)) (True!17053) (RightBrace!8526) (RightBracket!8526) (Colon!8526) (Null!8526) (Comma!8526) (LeftBracket!8526) (False!17053) (LeftBrace!8526) (ImaginaryLiteralValue!8526 (text!60128 List!56630)) (StringLiteralValue!25578 (value!263278 List!56630)) (EOFValue!8526 (value!263279 List!56630)) (IdentValue!8526 (value!263280 List!56630)) (DelimiterValue!17053 (value!263281 List!56630)) (DedentValue!8526 (value!263282 List!56630)) (NewLineValue!8526 (value!263283 List!56630)) (IntegerValue!25578 (value!263284 (_ BitVec 32)) (text!60129 List!56630)) (IntegerValue!25579 (value!263285 Int) (text!60130 List!56630)) (Times!8526) (Or!8526) (Equal!8526) (Minus!8526) (Broken!42634 (value!263286 List!56630)) (And!8526) (Div!8526) (LessEqual!8526) (Mod!8526) (Concat!21818) (Not!8526) (Plus!8526) (SpaceValue!8526 (value!263287 List!56630)) (IntegerValue!25580 (value!263288 Int) (text!60131 List!56630)) (StringLiteralValue!25579 (text!60132 List!56630)) (FloatLiteralValue!17053 (text!60133 List!56630)) (BytesLiteralValue!8526 (value!263289 List!56630)) (CommentValue!17053 (value!263290 List!56630)) (StringLiteralValue!25580 (value!263291 List!56630)) (ErrorTokenValue!8526 (msg!8587 List!56630)) )
))
(declare-datatypes ((List!56631 0))(
  ( (Nil!56507) (Cons!56507 (h!62955 C!26780) (t!366723 List!56631)) )
))
(declare-datatypes ((IArray!29629 0))(
  ( (IArray!29630 (innerList!14872 List!56631)) )
))
(declare-datatypes ((Conc!14784 0))(
  ( (Node!14784 (left!41102 Conc!14784) (right!41432 Conc!14784) (csize!29798 Int) (cheight!14995 Int)) (Leaf!24609 (xs!18100 IArray!29629) (csize!29799 Int)) (Empty!14784) )
))
(declare-datatypes ((BalanceConc!28998 0))(
  ( (BalanceConc!28999 (c!833200 Conc!14784)) )
))
(declare-datatypes ((TokenValueInjection!16360 0))(
  ( (TokenValueInjection!16361 (toValue!11127 Int) (toChars!10986 Int)) )
))
(declare-datatypes ((Rule!16232 0))(
  ( (Rule!16233 (regex!8216 Regex!13291) (tag!9080 String!64071) (isSeparator!8216 Bool) (transformation!8216 TokenValueInjection!16360)) )
))
(declare-fun rule!164 () Rule!16232)

(declare-fun lambda!244346 () Int)

(declare-fun dynLambda!22756 (Int Int) Int)

(declare-fun dynLambda!22757 (Int Int) Int)

(assert (=> b!4902559 (< (dynLambda!22756 order!25645 (toValue!11127 (transformation!8216 rule!164))) (dynLambda!22757 order!25647 lambda!244346))))

(declare-fun order!25649 () Int)

(declare-fun dynLambda!22758 (Int Int) Int)

(assert (=> b!4902559 (< (dynLambda!22758 order!25649 (toChars!10986 (transformation!8216 rule!164))) (dynLambda!22757 order!25647 lambda!244346))))

(declare-fun e!3064646 () Bool)

(assert (=> b!4902540 (= e!3064646 (and tp!1379436 tp!1379439))))

(declare-fun b!4902541 () Bool)

(declare-fun e!3064643 () Bool)

(declare-datatypes ((tuple2!60676 0))(
  ( (tuple2!60677 (_1!33641 List!56631) (_2!33641 List!56631)) )
))
(declare-fun lt!2010616 () tuple2!60676)

(declare-fun matchR!6558 (Regex!13291 List!56631) Bool)

(assert (=> b!4902541 (= e!3064643 (matchR!6558 (regex!8216 rule!164) (_1!33641 lt!2010616)))))

(declare-fun b!4902542 () Bool)

(declare-fun e!3064638 () Bool)

(declare-fun e!3064642 () Bool)

(assert (=> b!4902542 (= e!3064638 e!3064642)))

(declare-fun res!2094145 () Bool)

(assert (=> b!4902542 (=> res!2094145 e!3064642)))

(declare-fun lt!2010608 () TokenValue!8526)

(declare-fun lt!2010607 () BalanceConc!28998)

(declare-fun apply!13564 (TokenValueInjection!16360 BalanceConc!28998) TokenValue!8526)

(assert (=> b!4902542 (= res!2094145 (not (= (apply!13564 (transformation!8216 rule!164) lt!2010607) lt!2010608)))))

(declare-datatypes ((tuple2!60678 0))(
  ( (tuple2!60679 (_1!33642 BalanceConc!28998) (_2!33642 BalanceConc!28998)) )
))
(declare-fun lt!2010612 () tuple2!60678)

(declare-datatypes ((Unit!146617 0))(
  ( (Unit!146618) )
))
(declare-fun lt!2010613 () Unit!146617)

(declare-fun lemmaEqSameImage!1108 (TokenValueInjection!16360 BalanceConc!28998 BalanceConc!28998) Unit!146617)

(assert (=> b!4902542 (= lt!2010613 (lemmaEqSameImage!1108 (transformation!8216 rule!164) (_1!33642 lt!2010612) lt!2010607))))

(declare-fun e!3064645 () Bool)

(declare-fun tp!1379438 () Bool)

(declare-fun b!4902544 () Bool)

(declare-fun inv!72899 (String!64071) Bool)

(declare-fun inv!72903 (TokenValueInjection!16360) Bool)

(assert (=> b!4902544 (= e!3064645 (and tp!1379438 (inv!72899 (tag!9080 rule!164)) (inv!72903 (transformation!8216 rule!164)) e!3064646))))

(declare-fun b!4902545 () Bool)

(declare-fun e!3064644 () Bool)

(assert (=> b!4902545 (= e!3064644 e!3064638)))

(declare-fun res!2094148 () Bool)

(assert (=> b!4902545 (=> res!2094148 e!3064638)))

(declare-fun lt!2010605 () Bool)

(declare-fun lt!2010604 () Bool)

(assert (=> b!4902545 (= res!2094148 (or (not (= lt!2010605 lt!2010604)) (not lt!2010605)))))

(declare-datatypes ((Token!14968 0))(
  ( (Token!14969 (value!263292 TokenValue!8526) (rule!11416 Rule!16232) (size!37228 Int) (originalCharacters!8515 List!56631)) )
))
(declare-datatypes ((tuple2!60680 0))(
  ( (tuple2!60681 (_1!33643 Token!14968) (_2!33643 List!56631)) )
))
(declare-datatypes ((Option!14077 0))(
  ( (None!14076) (Some!14076 (v!50038 tuple2!60680)) )
))
(declare-fun lt!2010603 () Option!14077)

(declare-fun isDefined!11086 (Option!14077) Bool)

(assert (=> b!4902545 (= lt!2010604 (isDefined!11086 lt!2010603))))

(declare-fun lt!2010602 () Int)

(declare-fun lt!2010611 () List!56631)

(declare-datatypes ((tuple2!60682 0))(
  ( (tuple2!60683 (_1!33644 Token!14968) (_2!33644 BalanceConc!28998)) )
))
(declare-datatypes ((Option!14078 0))(
  ( (None!14077) (Some!14077 (v!50039 tuple2!60682)) )
))
(declare-fun isDefined!11087 (Option!14078) Bool)

(assert (=> b!4902545 (= lt!2010605 (isDefined!11087 (Some!14077 (tuple2!60683 (Token!14969 lt!2010608 rule!164 lt!2010602 lt!2010611) (_2!33642 lt!2010612)))))))

(declare-fun lt!2010615 () List!56631)

(declare-datatypes ((LexerInterface!7808 0))(
  ( (LexerInterfaceExt!7805 (__x!34346 Int)) (Lexer!7806) )
))
(declare-fun thiss!15943 () LexerInterface!7808)

(declare-fun maxPrefixOneRule!3557 (LexerInterface!7808 Rule!16232 List!56631) Option!14077)

(assert (=> b!4902545 (= lt!2010603 (maxPrefixOneRule!3557 thiss!15943 rule!164 lt!2010615))))

(declare-fun size!37229 (BalanceConc!28998) Int)

(assert (=> b!4902545 (= lt!2010602 (size!37229 (_1!33642 lt!2010612)))))

(assert (=> b!4902545 (= lt!2010608 (apply!13564 (transformation!8216 rule!164) (_1!33642 lt!2010612)))))

(declare-fun lt!2010617 () Unit!146617)

(declare-fun ForallOf!1157 (Int BalanceConc!28998) Unit!146617)

(assert (=> b!4902545 (= lt!2010617 (ForallOf!1157 lambda!244346 lt!2010607))))

(declare-fun seqFromList!5962 (List!56631) BalanceConc!28998)

(assert (=> b!4902545 (= lt!2010607 (seqFromList!5962 lt!2010611))))

(declare-fun list!17786 (BalanceConc!28998) List!56631)

(assert (=> b!4902545 (= lt!2010611 (list!17786 (_1!33642 lt!2010612)))))

(declare-fun lt!2010614 () Unit!146617)

(assert (=> b!4902545 (= lt!2010614 (ForallOf!1157 lambda!244346 (_1!33642 lt!2010612)))))

(declare-fun b!4902546 () Bool)

(declare-fun res!2094144 () Bool)

(declare-fun e!3064637 () Bool)

(assert (=> b!4902546 (=> (not res!2094144) (not e!3064637))))

(declare-fun ruleValid!3713 (LexerInterface!7808 Rule!16232) Bool)

(assert (=> b!4902546 (= res!2094144 (ruleValid!3713 thiss!15943 rule!164))))

(declare-fun b!4902547 () Bool)

(declare-fun res!2094149 () Bool)

(assert (=> b!4902547 (=> res!2094149 e!3064638)))

(assert (=> b!4902547 (= res!2094149 (not (= (list!17786 lt!2010607) lt!2010611)))))

(declare-fun b!4902543 () Bool)

(declare-fun e!3064641 () Bool)

(declare-fun input!1509 () BalanceConc!28998)

(declare-fun tp!1379437 () Bool)

(declare-fun inv!72904 (Conc!14784) Bool)

(assert (=> b!4902543 (= e!3064641 (and (inv!72904 (c!833200 input!1509)) tp!1379437))))

(declare-fun res!2094143 () Bool)

(assert (=> start!513624 (=> (not res!2094143) (not e!3064637))))

(get-info :version)

(assert (=> start!513624 (= res!2094143 ((_ is Lexer!7806) thiss!15943))))

(assert (=> start!513624 e!3064637))

(assert (=> start!513624 true))

(assert (=> start!513624 e!3064645))

(declare-fun inv!72905 (BalanceConc!28998) Bool)

(assert (=> start!513624 (and (inv!72905 input!1509) e!3064641)))

(declare-fun b!4902548 () Bool)

(declare-fun e!3064640 () Bool)

(assert (=> b!4902548 (= e!3064637 e!3064640)))

(declare-fun res!2094150 () Bool)

(assert (=> b!4902548 (=> (not res!2094150) (not e!3064640))))

(declare-fun isEmpty!30367 (BalanceConc!28998) Bool)

(assert (=> b!4902548 (= res!2094150 (not (isEmpty!30367 (_1!33642 lt!2010612))))))

(declare-fun findLongestMatchWithZipperSequence!304 (Regex!13291 BalanceConc!28998) tuple2!60678)

(assert (=> b!4902548 (= lt!2010612 (findLongestMatchWithZipperSequence!304 (regex!8216 rule!164) input!1509))))

(declare-fun res!2094147 () Bool)

(assert (=> b!4902549 (=> res!2094147 e!3064644)))

(declare-fun Forall!1713 (Int) Bool)

(assert (=> b!4902549 (= res!2094147 (not (Forall!1713 lambda!244346)))))

(declare-fun b!4902550 () Bool)

(assert (=> b!4902550 (= e!3064640 (not e!3064644))))

(declare-fun res!2094146 () Bool)

(assert (=> b!4902550 (=> res!2094146 e!3064644)))

(declare-fun semiInverseModEq!3617 (Int Int) Bool)

(assert (=> b!4902550 (= res!2094146 (not (semiInverseModEq!3617 (toChars!10986 (transformation!8216 rule!164)) (toValue!11127 (transformation!8216 rule!164)))))))

(declare-fun lt!2010606 () Unit!146617)

(declare-fun lemmaInv!1262 (TokenValueInjection!16360) Unit!146617)

(assert (=> b!4902550 (= lt!2010606 (lemmaInv!1262 (transformation!8216 rule!164)))))

(assert (=> b!4902550 e!3064643))

(declare-fun res!2094142 () Bool)

(assert (=> b!4902550 (=> res!2094142 e!3064643)))

(declare-fun isEmpty!30368 (List!56631) Bool)

(assert (=> b!4902550 (= res!2094142 (isEmpty!30368 (_1!33641 lt!2010616)))))

(declare-fun findLongestMatchInner!1779 (Regex!13291 List!56631 Int List!56631 List!56631 Int) tuple2!60676)

(declare-fun size!37230 (List!56631) Int)

(assert (=> b!4902550 (= lt!2010616 (findLongestMatchInner!1779 (regex!8216 rule!164) Nil!56507 (size!37230 Nil!56507) lt!2010615 lt!2010615 (size!37230 lt!2010615)))))

(declare-fun lt!2010610 () Unit!146617)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1742 (Regex!13291 List!56631) Unit!146617)

(assert (=> b!4902550 (= lt!2010610 (longestMatchIsAcceptedByMatchOrIsEmpty!1742 (regex!8216 rule!164) lt!2010615))))

(assert (=> b!4902550 (= lt!2010615 (list!17786 input!1509))))

(declare-fun b!4902551 () Bool)

(declare-fun lt!2010609 () tuple2!60680)

(assert (=> b!4902551 (= e!3064642 (or (not (= (value!263292 (_1!33643 lt!2010609)) lt!2010608)) (not (= (rule!11416 (_1!33643 lt!2010609)) rule!164)) (not (= (size!37228 (_1!33643 lt!2010609)) lt!2010602)) lt!2010604))))

(declare-fun get!19530 (Option!14077) tuple2!60680)

(assert (=> b!4902551 (= lt!2010609 (get!19530 lt!2010603))))

(assert (= (and start!513624 res!2094143) b!4902546))

(assert (= (and b!4902546 res!2094144) b!4902548))

(assert (= (and b!4902548 res!2094150) b!4902550))

(assert (= (and b!4902550 (not res!2094142)) b!4902541))

(assert (= (and b!4902550 (not res!2094146)) b!4902549))

(assert (= (and b!4902549 (not res!2094147)) b!4902545))

(assert (= (and b!4902545 (not res!2094148)) b!4902547))

(assert (= (and b!4902547 (not res!2094149)) b!4902542))

(assert (= (and b!4902542 (not res!2094145)) b!4902551))

(assert (= b!4902544 b!4902540))

(assert (= start!513624 b!4902544))

(assert (= start!513624 b!4902543))

(declare-fun m!5911354 () Bool)

(assert (=> start!513624 m!5911354))

(declare-fun m!5911356 () Bool)

(assert (=> b!4902543 m!5911356))

(declare-fun m!5911358 () Bool)

(assert (=> b!4902548 m!5911358))

(declare-fun m!5911360 () Bool)

(assert (=> b!4902548 m!5911360))

(declare-fun m!5911362 () Bool)

(assert (=> b!4902545 m!5911362))

(declare-fun m!5911364 () Bool)

(assert (=> b!4902545 m!5911364))

(declare-fun m!5911366 () Bool)

(assert (=> b!4902545 m!5911366))

(declare-fun m!5911368 () Bool)

(assert (=> b!4902545 m!5911368))

(declare-fun m!5911370 () Bool)

(assert (=> b!4902545 m!5911370))

(declare-fun m!5911372 () Bool)

(assert (=> b!4902545 m!5911372))

(declare-fun m!5911374 () Bool)

(assert (=> b!4902545 m!5911374))

(declare-fun m!5911376 () Bool)

(assert (=> b!4902545 m!5911376))

(declare-fun m!5911378 () Bool)

(assert (=> b!4902545 m!5911378))

(declare-fun m!5911380 () Bool)

(assert (=> b!4902541 m!5911380))

(declare-fun m!5911382 () Bool)

(assert (=> b!4902542 m!5911382))

(declare-fun m!5911384 () Bool)

(assert (=> b!4902542 m!5911384))

(declare-fun m!5911386 () Bool)

(assert (=> b!4902546 m!5911386))

(declare-fun m!5911388 () Bool)

(assert (=> b!4902549 m!5911388))

(declare-fun m!5911390 () Bool)

(assert (=> b!4902547 m!5911390))

(declare-fun m!5911392 () Bool)

(assert (=> b!4902551 m!5911392))

(declare-fun m!5911394 () Bool)

(assert (=> b!4902550 m!5911394))

(declare-fun m!5911396 () Bool)

(assert (=> b!4902550 m!5911396))

(declare-fun m!5911398 () Bool)

(assert (=> b!4902550 m!5911398))

(declare-fun m!5911400 () Bool)

(assert (=> b!4902550 m!5911400))

(declare-fun m!5911402 () Bool)

(assert (=> b!4902550 m!5911402))

(assert (=> b!4902550 m!5911396))

(assert (=> b!4902550 m!5911398))

(declare-fun m!5911404 () Bool)

(assert (=> b!4902550 m!5911404))

(declare-fun m!5911406 () Bool)

(assert (=> b!4902550 m!5911406))

(declare-fun m!5911408 () Bool)

(assert (=> b!4902550 m!5911408))

(declare-fun m!5911410 () Bool)

(assert (=> b!4902544 m!5911410))

(declare-fun m!5911412 () Bool)

(assert (=> b!4902544 m!5911412))

(check-sat (not b_next!132625) (not b!4902543) (not b!4902545) (not b!4902550) (not b!4902544) (not b!4902541) (not b!4902542) (not b!4902547) (not b_next!132627) (not b!4902551) (not b!4902549) b_and!346227 (not b!4902548) (not start!513624) (not b!4902546) b_and!346229)
(check-sat b_and!346229 b_and!346227 (not b_next!132627) (not b_next!132625))
