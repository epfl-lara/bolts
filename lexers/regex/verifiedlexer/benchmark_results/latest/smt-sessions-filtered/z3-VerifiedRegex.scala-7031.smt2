; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373536 () Bool)

(assert start!373536)

(declare-fun b!3969508 () Bool)

(declare-fun b_free!109865 () Bool)

(declare-fun b_next!110569 () Bool)

(assert (=> b!3969508 (= b_free!109865 (not b_next!110569))))

(declare-fun tp!1210028 () Bool)

(declare-fun b_and!305095 () Bool)

(assert (=> b!3969508 (= tp!1210028 b_and!305095)))

(declare-fun b_free!109867 () Bool)

(declare-fun b_next!110571 () Bool)

(assert (=> b!3969508 (= b_free!109867 (not b_next!110571))))

(declare-fun tp!1210025 () Bool)

(declare-fun b_and!305097 () Bool)

(assert (=> b!3969508 (= tp!1210025 b_and!305097)))

(declare-fun b!3969514 () Bool)

(declare-fun b_free!109869 () Bool)

(declare-fun b_next!110573 () Bool)

(assert (=> b!3969514 (= b_free!109869 (not b_next!110573))))

(declare-fun tp!1210022 () Bool)

(declare-fun b_and!305099 () Bool)

(assert (=> b!3969514 (= tp!1210022 b_and!305099)))

(declare-fun b_free!109871 () Bool)

(declare-fun b_next!110575 () Bool)

(assert (=> b!3969514 (= b_free!109871 (not b_next!110575))))

(declare-fun tp!1210023 () Bool)

(declare-fun b_and!305101 () Bool)

(assert (=> b!3969514 (= tp!1210023 b_and!305101)))

(declare-fun b!3969509 () Bool)

(declare-fun e!2458686 () Bool)

(declare-fun tp_is_empty!20081 () Bool)

(declare-fun tp!1210021 () Bool)

(assert (=> b!3969509 (= e!2458686 (and tp_is_empty!20081 tp!1210021))))

(declare-fun b!3969510 () Bool)

(declare-fun e!2458684 () Bool)

(assert (=> b!3969510 (= e!2458684 false)))

(declare-fun lt!1390275 () Bool)

(declare-datatypes ((LexerInterface!6239 0))(
  ( (LexerInterfaceExt!6236 (__x!25977 Int)) (Lexer!6237) )
))
(declare-fun thiss!21717 () LexerInterface!6239)

(declare-datatypes ((C!23296 0))(
  ( (C!23297 (val!13742 Int)) )
))
(declare-datatypes ((List!42456 0))(
  ( (Nil!42332) (Cons!42332 (h!47752 C!23296) (t!330811 List!42456)) )
))
(declare-datatypes ((IArray!25727 0))(
  ( (IArray!25728 (innerList!12921 List!42456)) )
))
(declare-datatypes ((Conc!12861 0))(
  ( (Node!12861 (left!32076 Conc!12861) (right!32406 Conc!12861) (csize!25952 Int) (cheight!13072 Int)) (Leaf!19893 (xs!16167 IArray!25727) (csize!25953 Int)) (Empty!12861) )
))
(declare-datatypes ((BalanceConc!25316 0))(
  ( (BalanceConc!25317 (c!688644 Conc!12861)) )
))
(declare-datatypes ((List!42457 0))(
  ( (Nil!42333) (Cons!42333 (h!47753 (_ BitVec 16)) (t!330812 List!42457)) )
))
(declare-datatypes ((TokenValue!6880 0))(
  ( (FloatLiteralValue!13760 (text!48605 List!42457)) (TokenValueExt!6879 (__x!25978 Int)) (Broken!34400 (value!210133 List!42457)) (Object!7003) (End!6880) (Def!6880) (Underscore!6880) (Match!6880) (Else!6880) (Error!6880) (Case!6880) (If!6880) (Extends!6880) (Abstract!6880) (Class!6880) (Val!6880) (DelimiterValue!13760 (del!6940 List!42457)) (KeywordValue!6886 (value!210134 List!42457)) (CommentValue!13760 (value!210135 List!42457)) (WhitespaceValue!13760 (value!210136 List!42457)) (IndentationValue!6880 (value!210137 List!42457)) (String!48117) (Int32!6880) (Broken!34401 (value!210138 List!42457)) (Boolean!6881) (Unit!60989) (OperatorValue!6883 (op!6940 List!42457)) (IdentifierValue!13760 (value!210139 List!42457)) (IdentifierValue!13761 (value!210140 List!42457)) (WhitespaceValue!13761 (value!210141 List!42457)) (True!13760) (False!13760) (Broken!34402 (value!210142 List!42457)) (Broken!34403 (value!210143 List!42457)) (True!13761) (RightBrace!6880) (RightBracket!6880) (Colon!6880) (Null!6880) (Comma!6880) (LeftBracket!6880) (False!13761) (LeftBrace!6880) (ImaginaryLiteralValue!6880 (text!48606 List!42457)) (StringLiteralValue!20640 (value!210144 List!42457)) (EOFValue!6880 (value!210145 List!42457)) (IdentValue!6880 (value!210146 List!42457)) (DelimiterValue!13761 (value!210147 List!42457)) (DedentValue!6880 (value!210148 List!42457)) (NewLineValue!6880 (value!210149 List!42457)) (IntegerValue!20640 (value!210150 (_ BitVec 32)) (text!48607 List!42457)) (IntegerValue!20641 (value!210151 Int) (text!48608 List!42457)) (Times!6880) (Or!6880) (Equal!6880) (Minus!6880) (Broken!34404 (value!210152 List!42457)) (And!6880) (Div!6880) (LessEqual!6880) (Mod!6880) (Concat!18435) (Not!6880) (Plus!6880) (SpaceValue!6880 (value!210153 List!42457)) (IntegerValue!20642 (value!210154 Int) (text!48609 List!42457)) (StringLiteralValue!20641 (text!48610 List!42457)) (FloatLiteralValue!13761 (text!48611 List!42457)) (BytesLiteralValue!6880 (value!210155 List!42457)) (CommentValue!13761 (value!210156 List!42457)) (StringLiteralValue!20642 (value!210157 List!42457)) (ErrorTokenValue!6880 (msg!6941 List!42457)) )
))
(declare-datatypes ((Regex!11555 0))(
  ( (ElementMatch!11555 (c!688645 C!23296)) (Concat!18436 (regOne!23622 Regex!11555) (regTwo!23622 Regex!11555)) (EmptyExpr!11555) (Star!11555 (reg!11884 Regex!11555)) (EmptyLang!11555) (Union!11555 (regOne!23623 Regex!11555) (regTwo!23623 Regex!11555)) )
))
(declare-datatypes ((String!48118 0))(
  ( (String!48119 (value!210158 String)) )
))
(declare-datatypes ((TokenValueInjection!13188 0))(
  ( (TokenValueInjection!13189 (toValue!9138 Int) (toChars!8997 Int)) )
))
(declare-datatypes ((Rule!13100 0))(
  ( (Rule!13101 (regex!6650 Regex!11555) (tag!7510 String!48118) (isSeparator!6650 Bool) (transformation!6650 TokenValueInjection!13188)) )
))
(declare-datatypes ((List!42458 0))(
  ( (Nil!42334) (Cons!42334 (h!47754 Rule!13100) (t!330813 List!42458)) )
))
(declare-fun rules!2999 () List!42458)

(declare-fun rulesValidInductive!2412 (LexerInterface!6239 List!42458) Bool)

(assert (=> b!3969510 (= lt!1390275 (rulesValidInductive!2412 thiss!21717 rules!2999))))

(declare-fun lt!1390277 () List!42456)

(declare-fun prefix!494 () List!42456)

(declare-fun suffix!1299 () List!42456)

(declare-fun ++!11052 (List!42456 List!42456) List!42456)

(assert (=> b!3969510 (= lt!1390277 (++!11052 prefix!494 suffix!1299))))

(declare-datatypes ((Token!12438 0))(
  ( (Token!12439 (value!210159 TokenValue!6880) (rule!9638 Rule!13100) (size!31680 Int) (originalCharacters!7250 List!42456)) )
))
(declare-fun token!484 () Token!12438)

(declare-fun tp!1210017 () Bool)

(declare-fun e!2458680 () Bool)

(declare-fun b!3969511 () Bool)

(declare-fun e!2458674 () Bool)

(declare-fun inv!21 (TokenValue!6880) Bool)

(assert (=> b!3969511 (= e!2458674 (and (inv!21 (value!210159 token!484)) e!2458680 tp!1210017))))

(declare-fun b!3969512 () Bool)

(declare-fun e!2458683 () Bool)

(declare-fun tp!1210027 () Bool)

(assert (=> b!3969512 (= e!2458683 (and tp_is_empty!20081 tp!1210027))))

(declare-fun b!3969513 () Bool)

(declare-fun e!2458688 () Bool)

(declare-fun tp!1210019 () Bool)

(assert (=> b!3969513 (= e!2458688 (and tp_is_empty!20081 tp!1210019))))

(declare-fun e!2458679 () Bool)

(assert (=> b!3969514 (= e!2458679 (and tp!1210022 tp!1210023))))

(declare-fun b!3969515 () Bool)

(declare-fun res!1606726 () Bool)

(declare-fun e!2458685 () Bool)

(assert (=> b!3969515 (=> (not res!1606726) (not e!2458685))))

(declare-fun newSuffix!27 () List!42456)

(declare-fun size!31681 (List!42456) Int)

(assert (=> b!3969515 (= res!1606726 (>= (size!31681 suffix!1299) (size!31681 newSuffix!27)))))

(declare-fun b!3969516 () Bool)

(declare-fun res!1606721 () Bool)

(assert (=> b!3969516 (=> (not res!1606721) (not e!2458684))))

(declare-fun lt!1390276 () List!42456)

(declare-fun newSuffixResult!27 () List!42456)

(assert (=> b!3969516 (= res!1606721 (= (++!11052 lt!1390276 newSuffixResult!27) (++!11052 prefix!494 newSuffix!27)))))

(declare-fun tp!1210020 () Bool)

(declare-fun e!2458675 () Bool)

(declare-fun b!3969517 () Bool)

(declare-fun inv!56571 (String!48118) Bool)

(declare-fun inv!56574 (TokenValueInjection!13188) Bool)

(assert (=> b!3969517 (= e!2458675 (and tp!1210020 (inv!56571 (tag!7510 (h!47754 rules!2999))) (inv!56574 (transformation!6650 (h!47754 rules!2999))) e!2458679))))

(declare-fun b!3969518 () Bool)

(declare-fun res!1606725 () Bool)

(assert (=> b!3969518 (=> (not res!1606725) (not e!2458685))))

(declare-fun rulesInvariant!5582 (LexerInterface!6239 List!42458) Bool)

(assert (=> b!3969518 (= res!1606725 (rulesInvariant!5582 thiss!21717 rules!2999))))

(declare-fun e!2458678 () Bool)

(assert (=> b!3969508 (= e!2458678 (and tp!1210028 tp!1210025))))

(declare-fun res!1606724 () Bool)

(assert (=> start!373536 (=> (not res!1606724) (not e!2458685))))

(get-info :version)

(assert (=> start!373536 (= res!1606724 ((_ is Lexer!6237) thiss!21717))))

(assert (=> start!373536 e!2458685))

(assert (=> start!373536 e!2458686))

(declare-fun inv!56575 (Token!12438) Bool)

(assert (=> start!373536 (and (inv!56575 token!484) e!2458674)))

(assert (=> start!373536 e!2458688))

(assert (=> start!373536 e!2458683))

(assert (=> start!373536 true))

(declare-fun e!2458682 () Bool)

(assert (=> start!373536 e!2458682))

(declare-fun e!2458681 () Bool)

(assert (=> start!373536 e!2458681))

(declare-fun b!3969519 () Bool)

(declare-fun tp!1210024 () Bool)

(assert (=> b!3969519 (= e!2458681 (and tp_is_empty!20081 tp!1210024))))

(declare-fun b!3969520 () Bool)

(assert (=> b!3969520 (= e!2458685 e!2458684)))

(declare-fun res!1606722 () Bool)

(assert (=> b!3969520 (=> (not res!1606722) (not e!2458684))))

(assert (=> b!3969520 (= res!1606722 (>= (size!31681 prefix!494) (size!31681 lt!1390276)))))

(declare-fun list!15708 (BalanceConc!25316) List!42456)

(declare-fun charsOf!4466 (Token!12438) BalanceConc!25316)

(assert (=> b!3969520 (= lt!1390276 (list!15708 (charsOf!4466 token!484)))))

(declare-fun b!3969521 () Bool)

(declare-fun res!1606720 () Bool)

(assert (=> b!3969521 (=> (not res!1606720) (not e!2458685))))

(declare-fun isPrefix!3737 (List!42456 List!42456) Bool)

(assert (=> b!3969521 (= res!1606720 (isPrefix!3737 newSuffix!27 suffix!1299))))

(declare-fun b!3969522 () Bool)

(declare-fun tp!1210026 () Bool)

(assert (=> b!3969522 (= e!2458682 (and e!2458675 tp!1210026))))

(declare-fun b!3969523 () Bool)

(declare-fun res!1606723 () Bool)

(assert (=> b!3969523 (=> (not res!1606723) (not e!2458685))))

(declare-fun isEmpty!25334 (List!42458) Bool)

(assert (=> b!3969523 (= res!1606723 (not (isEmpty!25334 rules!2999)))))

(declare-fun b!3969524 () Bool)

(declare-fun tp!1210018 () Bool)

(assert (=> b!3969524 (= e!2458680 (and tp!1210018 (inv!56571 (tag!7510 (rule!9638 token!484))) (inv!56574 (transformation!6650 (rule!9638 token!484))) e!2458678))))

(assert (= (and start!373536 res!1606724) b!3969523))

(assert (= (and b!3969523 res!1606723) b!3969518))

(assert (= (and b!3969518 res!1606725) b!3969515))

(assert (= (and b!3969515 res!1606726) b!3969521))

(assert (= (and b!3969521 res!1606720) b!3969520))

(assert (= (and b!3969520 res!1606722) b!3969516))

(assert (= (and b!3969516 res!1606721) b!3969510))

(assert (= (and start!373536 ((_ is Cons!42332) prefix!494)) b!3969509))

(assert (= b!3969524 b!3969508))

(assert (= b!3969511 b!3969524))

(assert (= start!373536 b!3969511))

(assert (= (and start!373536 ((_ is Cons!42332) suffix!1299)) b!3969513))

(assert (= (and start!373536 ((_ is Cons!42332) newSuffix!27)) b!3969512))

(assert (= b!3969517 b!3969514))

(assert (= b!3969522 b!3969517))

(assert (= (and start!373536 ((_ is Cons!42334) rules!2999)) b!3969522))

(assert (= (and start!373536 ((_ is Cons!42332) newSuffixResult!27)) b!3969519))

(declare-fun m!4539835 () Bool)

(assert (=> b!3969521 m!4539835))

(declare-fun m!4539837 () Bool)

(assert (=> b!3969520 m!4539837))

(declare-fun m!4539839 () Bool)

(assert (=> b!3969520 m!4539839))

(declare-fun m!4539841 () Bool)

(assert (=> b!3969520 m!4539841))

(assert (=> b!3969520 m!4539841))

(declare-fun m!4539843 () Bool)

(assert (=> b!3969520 m!4539843))

(declare-fun m!4539845 () Bool)

(assert (=> b!3969518 m!4539845))

(declare-fun m!4539847 () Bool)

(assert (=> b!3969517 m!4539847))

(declare-fun m!4539849 () Bool)

(assert (=> b!3969517 m!4539849))

(declare-fun m!4539851 () Bool)

(assert (=> b!3969523 m!4539851))

(declare-fun m!4539853 () Bool)

(assert (=> b!3969510 m!4539853))

(declare-fun m!4539855 () Bool)

(assert (=> b!3969510 m!4539855))

(declare-fun m!4539857 () Bool)

(assert (=> b!3969511 m!4539857))

(declare-fun m!4539859 () Bool)

(assert (=> b!3969516 m!4539859))

(declare-fun m!4539861 () Bool)

(assert (=> b!3969516 m!4539861))

(declare-fun m!4539863 () Bool)

(assert (=> b!3969524 m!4539863))

(declare-fun m!4539865 () Bool)

(assert (=> b!3969524 m!4539865))

(declare-fun m!4539867 () Bool)

(assert (=> start!373536 m!4539867))

(declare-fun m!4539869 () Bool)

(assert (=> b!3969515 m!4539869))

(declare-fun m!4539871 () Bool)

(assert (=> b!3969515 m!4539871))

(check-sat (not b!3969515) (not b_next!110571) (not b!3969512) b_and!305095 (not b!3969511) (not b_next!110575) (not b!3969519) (not b!3969522) (not b!3969521) (not b!3969517) b_and!305099 b_and!305097 (not b!3969524) (not b_next!110573) (not b!3969516) (not start!373536) (not b!3969510) b_and!305101 tp_is_empty!20081 (not b!3969520) (not b_next!110569) (not b!3969513) (not b!3969523) (not b!3969509) (not b!3969518))
(check-sat (not b_next!110571) b_and!305099 b_and!305097 (not b_next!110573) b_and!305101 b_and!305095 (not b_next!110569) (not b_next!110575))
