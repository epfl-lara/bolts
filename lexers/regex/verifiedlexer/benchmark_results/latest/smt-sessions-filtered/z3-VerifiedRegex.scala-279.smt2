; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5978 () Bool)

(assert start!5978)

(declare-fun b!76701 () Bool)

(declare-fun b_free!2433 () Bool)

(declare-fun b_next!2433 () Bool)

(assert (=> b!76701 (= b_free!2433 (not b_next!2433))))

(declare-fun tp!49583 () Bool)

(declare-fun b_and!3491 () Bool)

(assert (=> b!76701 (= tp!49583 b_and!3491)))

(declare-fun b_free!2435 () Bool)

(declare-fun b_next!2435 () Bool)

(assert (=> b!76701 (= b_free!2435 (not b_next!2435))))

(declare-fun tp!49584 () Bool)

(declare-fun b_and!3493 () Bool)

(assert (=> b!76701 (= tp!49584 b_and!3493)))

(declare-fun b!76700 () Bool)

(declare-fun e!42826 () Bool)

(declare-fun e!42827 () Bool)

(declare-fun tp!49581 () Bool)

(assert (=> b!76700 (= e!42826 (and e!42827 tp!49581))))

(declare-fun e!42830 () Bool)

(assert (=> b!76701 (= e!42830 (and tp!49583 tp!49584))))

(declare-fun b!76702 () Bool)

(declare-fun res!40090 () Bool)

(declare-fun e!42823 () Bool)

(assert (=> b!76702 (=> (not res!40090) (not e!42823))))

(declare-datatypes ((LexerInterface!181 0))(
  ( (LexerInterfaceExt!178 (__x!1653 Int)) (Lexer!179) )
))
(declare-fun thiss!19403 () LexerInterface!181)

(declare-datatypes ((C!1636 0))(
  ( (C!1637 (val!425 Int)) )
))
(declare-datatypes ((List!1330 0))(
  ( (Nil!1324) (Cons!1324 (h!6721 C!1636) (t!20109 List!1330)) )
))
(declare-datatypes ((IArray!761 0))(
  ( (IArray!762 (innerList!438 List!1330)) )
))
(declare-datatypes ((Conc!380 0))(
  ( (Node!380 (left!1005 Conc!380) (right!1335 Conc!380) (csize!990 Int) (cheight!591 Int)) (Leaf!660 (xs!2959 IArray!761) (csize!991 Int)) (Empty!380) )
))
(declare-datatypes ((BalanceConc!764 0))(
  ( (BalanceConc!765 (c!19730 Conc!380)) )
))
(declare-datatypes ((Regex!357 0))(
  ( (ElementMatch!357 (c!19731 C!1636)) (Concat!636 (regOne!1226 Regex!357) (regTwo!1226 Regex!357)) (EmptyExpr!357) (Star!357 (reg!686 Regex!357)) (EmptyLang!357) (Union!357 (regOne!1227 Regex!357) (regTwo!1227 Regex!357)) )
))
(declare-datatypes ((String!1786 0))(
  ( (String!1787 (value!11106 String)) )
))
(declare-datatypes ((List!1331 0))(
  ( (Nil!1325) (Cons!1325 (h!6722 (_ BitVec 16)) (t!20110 List!1331)) )
))
(declare-datatypes ((TokenValue!279 0))(
  ( (FloatLiteralValue!558 (text!2398 List!1331)) (TokenValueExt!278 (__x!1654 Int)) (Broken!1395 (value!11107 List!1331)) (Object!284) (End!279) (Def!279) (Underscore!279) (Match!279) (Else!279) (Error!279) (Case!279) (If!279) (Extends!279) (Abstract!279) (Class!279) (Val!279) (DelimiterValue!558 (del!339 List!1331)) (KeywordValue!285 (value!11108 List!1331)) (CommentValue!558 (value!11109 List!1331)) (WhitespaceValue!558 (value!11110 List!1331)) (IndentationValue!279 (value!11111 List!1331)) (String!1788) (Int32!279) (Broken!1396 (value!11112 List!1331)) (Boolean!280) (Unit!795) (OperatorValue!282 (op!339 List!1331)) (IdentifierValue!558 (value!11113 List!1331)) (IdentifierValue!559 (value!11114 List!1331)) (WhitespaceValue!559 (value!11115 List!1331)) (True!558) (False!558) (Broken!1397 (value!11116 List!1331)) (Broken!1398 (value!11117 List!1331)) (True!559) (RightBrace!279) (RightBracket!279) (Colon!279) (Null!279) (Comma!279) (LeftBracket!279) (False!559) (LeftBrace!279) (ImaginaryLiteralValue!279 (text!2399 List!1331)) (StringLiteralValue!837 (value!11118 List!1331)) (EOFValue!279 (value!11119 List!1331)) (IdentValue!279 (value!11120 List!1331)) (DelimiterValue!559 (value!11121 List!1331)) (DedentValue!279 (value!11122 List!1331)) (NewLineValue!279 (value!11123 List!1331)) (IntegerValue!837 (value!11124 (_ BitVec 32)) (text!2400 List!1331)) (IntegerValue!838 (value!11125 Int) (text!2401 List!1331)) (Times!279) (Or!279) (Equal!279) (Minus!279) (Broken!1399 (value!11126 List!1331)) (And!279) (Div!279) (LessEqual!279) (Mod!279) (Concat!637) (Not!279) (Plus!279) (SpaceValue!279 (value!11127 List!1331)) (IntegerValue!839 (value!11128 Int) (text!2402 List!1331)) (StringLiteralValue!838 (text!2403 List!1331)) (FloatLiteralValue!559 (text!2404 List!1331)) (BytesLiteralValue!279 (value!11129 List!1331)) (CommentValue!559 (value!11130 List!1331)) (StringLiteralValue!839 (value!11131 List!1331)) (ErrorTokenValue!279 (msg!340 List!1331)) )
))
(declare-datatypes ((TokenValueInjection!382 0))(
  ( (TokenValueInjection!383 (toValue!796 Int) (toChars!655 Int)) )
))
(declare-datatypes ((Rule!378 0))(
  ( (Rule!379 (regex!289 Regex!357) (tag!467 String!1786) (isSeparator!289 Bool) (transformation!289 TokenValueInjection!382)) )
))
(declare-datatypes ((List!1332 0))(
  ( (Nil!1326) (Cons!1326 (h!6723 Rule!378) (t!20111 List!1332)) )
))
(declare-fun rules!2471 () List!1332)

(declare-fun rulesInvariant!175 (LexerInterface!181 List!1332) Bool)

(assert (=> b!76702 (= res!40090 (rulesInvariant!175 thiss!19403 rules!2471))))

(declare-fun tp!49580 () Bool)

(declare-fun b!76703 () Bool)

(declare-fun inv!1701 (String!1786) Bool)

(declare-fun inv!1703 (TokenValueInjection!382) Bool)

(assert (=> b!76703 (= e!42827 (and tp!49580 (inv!1701 (tag!467 (h!6723 rules!2471))) (inv!1703 (transformation!289 (h!6723 rules!2471))) e!42830))))

(declare-fun b!76704 () Bool)

(declare-fun e!42824 () Bool)

(declare-fun tp_is_empty!637 () Bool)

(declare-fun tp!49582 () Bool)

(assert (=> b!76704 (= e!42824 (and tp_is_empty!637 tp!49582))))

(declare-fun b!76705 () Bool)

(declare-fun e!42825 () Bool)

(declare-fun e!42829 () Bool)

(assert (=> b!76705 (= e!42825 e!42829)))

(declare-fun res!40089 () Bool)

(assert (=> b!76705 (=> (not res!40089) (not e!42829))))

(declare-fun lt!15166 () Bool)

(declare-datatypes ((Token!338 0))(
  ( (Token!339 (value!11132 TokenValue!279) (rule!766 Rule!378) (size!1170 Int) (originalCharacters!340 List!1330)) )
))
(declare-datatypes ((List!1333 0))(
  ( (Nil!1327) (Cons!1327 (h!6724 Token!338) (t!20112 List!1333)) )
))
(declare-fun lt!15164 () List!1333)

(get-info :version)

(assert (=> b!76705 (= res!40089 (and (or lt!15166 (not ((_ is Nil!1327) (t!20112 lt!15164)))) (not lt!15166)))))

(assert (=> b!76705 (= lt!15166 (not ((_ is Cons!1327) lt!15164)))))

(declare-datatypes ((IArray!763 0))(
  ( (IArray!764 (innerList!439 List!1333)) )
))
(declare-datatypes ((Conc!381 0))(
  ( (Node!381 (left!1006 Conc!381) (right!1336 Conc!381) (csize!992 Int) (cheight!592 Int)) (Leaf!661 (xs!2960 IArray!763) (csize!993 Int)) (Empty!381) )
))
(declare-datatypes ((BalanceConc!766 0))(
  ( (BalanceConc!767 (c!19732 Conc!381)) )
))
(declare-datatypes ((tuple2!1300 0))(
  ( (tuple2!1301 (_1!857 BalanceConc!766) (_2!857 BalanceConc!764)) )
))
(declare-fun lt!15165 () tuple2!1300)

(declare-fun list!406 (BalanceConc!766) List!1333)

(assert (=> b!76705 (= lt!15164 (list!406 (_1!857 lt!15165)))))

(declare-fun b!76706 () Bool)

(assert (=> b!76706 (= e!42829 (not true))))

(declare-fun lt!15167 () Int)

(declare-fun size!1171 (List!1333) Int)

(assert (=> b!76706 (= lt!15167 (size!1171 lt!15164))))

(declare-fun lt!15168 () List!1330)

(declare-fun list!407 (BalanceConc!764) List!1330)

(assert (=> b!76706 (= lt!15168 (list!407 (_2!857 lt!15165)))))

(declare-fun lt!15163 () tuple2!1300)

(declare-datatypes ((tuple2!1302 0))(
  ( (tuple2!1303 (_1!858 Token!338) (_2!858 List!1330)) )
))
(declare-fun lt!15162 () tuple2!1302)

(declare-fun ++!108 (List!1330 List!1330) List!1330)

(declare-fun print!20 (LexerInterface!181 BalanceConc!766) BalanceConc!764)

(assert (=> b!76706 (= (++!108 (list!407 (print!20 thiss!19403 (_1!857 lt!15163))) (list!407 (_2!857 lt!15163))) (_2!858 lt!15162))))

(declare-fun lex!89 (LexerInterface!181 List!1332 BalanceConc!764) tuple2!1300)

(declare-fun seqFromList!90 (List!1330) BalanceConc!764)

(assert (=> b!76706 (= lt!15163 (lex!89 thiss!19403 rules!2471 (seqFromList!90 (_2!858 lt!15162))))))

(declare-datatypes ((Unit!796 0))(
  ( (Unit!797) )
))
(declare-fun lt!15169 () Unit!796)

(declare-fun theoremInvertFromString!4 (LexerInterface!181 List!1332 List!1330) Unit!796)

(assert (=> b!76706 (= lt!15169 (theoremInvertFromString!4 thiss!19403 rules!2471 (_2!858 lt!15162)))))

(declare-fun input!2238 () List!1330)

(declare-datatypes ((Option!92 0))(
  ( (None!91) (Some!91 (v!12742 tuple2!1302)) )
))
(declare-fun get!322 (Option!92) tuple2!1302)

(declare-fun maxPrefix!25 (LexerInterface!181 List!1332 List!1330) Option!92)

(assert (=> b!76706 (= lt!15162 (get!322 (maxPrefix!25 thiss!19403 rules!2471 input!2238)))))

(declare-fun prepend!38 (BalanceConc!766 Token!338) BalanceConc!766)

(declare-fun seqFromList!91 (List!1333) BalanceConc!766)

(assert (=> b!76706 (= lt!15164 (list!406 (prepend!38 (seqFromList!91 (t!20112 lt!15164)) (h!6724 lt!15164))))))

(declare-fun lt!15170 () Unit!796)

(declare-fun seqFromListBHdTlConstructive!12 (Token!338 List!1333 BalanceConc!766) Unit!796)

(assert (=> b!76706 (= lt!15170 (seqFromListBHdTlConstructive!12 (h!6724 lt!15164) (t!20112 lt!15164) (_1!857 lt!15165)))))

(declare-fun res!40092 () Bool)

(assert (=> start!5978 (=> (not res!40092) (not e!42823))))

(assert (=> start!5978 (= res!40092 ((_ is Lexer!179) thiss!19403))))

(assert (=> start!5978 e!42823))

(assert (=> start!5978 true))

(assert (=> start!5978 e!42826))

(assert (=> start!5978 e!42824))

(declare-fun b!76707 () Bool)

(assert (=> b!76707 (= e!42823 e!42825)))

(declare-fun res!40088 () Bool)

(assert (=> b!76707 (=> (not res!40088) (not e!42825))))

(declare-fun isEmpty!386 (BalanceConc!764) Bool)

(assert (=> b!76707 (= res!40088 (not (isEmpty!386 (_2!857 lt!15165))))))

(assert (=> b!76707 (= lt!15165 (lex!89 thiss!19403 rules!2471 (seqFromList!90 input!2238)))))

(declare-fun b!76708 () Bool)

(declare-fun res!40091 () Bool)

(assert (=> b!76708 (=> (not res!40091) (not e!42823))))

(declare-fun isEmpty!387 (List!1332) Bool)

(assert (=> b!76708 (= res!40091 (not (isEmpty!387 rules!2471)))))

(assert (= (and start!5978 res!40092) b!76708))

(assert (= (and b!76708 res!40091) b!76702))

(assert (= (and b!76702 res!40090) b!76707))

(assert (= (and b!76707 res!40088) b!76705))

(assert (= (and b!76705 res!40089) b!76706))

(assert (= b!76703 b!76701))

(assert (= b!76700 b!76703))

(assert (= (and start!5978 ((_ is Cons!1326) rules!2471)) b!76700))

(assert (= (and start!5978 ((_ is Cons!1324) input!2238)) b!76704))

(declare-fun m!48776 () Bool)

(assert (=> b!76707 m!48776))

(declare-fun m!48778 () Bool)

(assert (=> b!76707 m!48778))

(assert (=> b!76707 m!48778))

(declare-fun m!48780 () Bool)

(assert (=> b!76707 m!48780))

(declare-fun m!48782 () Bool)

(assert (=> b!76705 m!48782))

(declare-fun m!48784 () Bool)

(assert (=> b!76708 m!48784))

(declare-fun m!48786 () Bool)

(assert (=> b!76706 m!48786))

(assert (=> b!76706 m!48786))

(declare-fun m!48788 () Bool)

(assert (=> b!76706 m!48788))

(declare-fun m!48790 () Bool)

(assert (=> b!76706 m!48790))

(declare-fun m!48792 () Bool)

(assert (=> b!76706 m!48792))

(declare-fun m!48794 () Bool)

(assert (=> b!76706 m!48794))

(declare-fun m!48796 () Bool)

(assert (=> b!76706 m!48796))

(declare-fun m!48798 () Bool)

(assert (=> b!76706 m!48798))

(declare-fun m!48800 () Bool)

(assert (=> b!76706 m!48800))

(assert (=> b!76706 m!48796))

(assert (=> b!76706 m!48792))

(assert (=> b!76706 m!48800))

(declare-fun m!48802 () Bool)

(assert (=> b!76706 m!48802))

(declare-fun m!48804 () Bool)

(assert (=> b!76706 m!48804))

(declare-fun m!48806 () Bool)

(assert (=> b!76706 m!48806))

(declare-fun m!48808 () Bool)

(assert (=> b!76706 m!48808))

(assert (=> b!76706 m!48806))

(declare-fun m!48810 () Bool)

(assert (=> b!76706 m!48810))

(assert (=> b!76706 m!48790))

(declare-fun m!48812 () Bool)

(assert (=> b!76706 m!48812))

(declare-fun m!48814 () Bool)

(assert (=> b!76706 m!48814))

(assert (=> b!76706 m!48810))

(declare-fun m!48816 () Bool)

(assert (=> b!76702 m!48816))

(declare-fun m!48818 () Bool)

(assert (=> b!76703 m!48818))

(declare-fun m!48820 () Bool)

(assert (=> b!76703 m!48820))

(check-sat (not b!76700) (not b!76703) (not b_next!2433) (not b!76708) (not b!76706) (not b_next!2435) (not b!76705) (not b!76704) b_and!3491 (not b!76702) tp_is_empty!637 b_and!3493 (not b!76707))
(check-sat b_and!3493 b_and!3491 (not b_next!2435) (not b_next!2433))
