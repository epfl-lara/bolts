; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!263736 () Bool)

(assert start!263736)

(declare-fun b!2717760 () Bool)

(declare-fun b_free!76569 () Bool)

(declare-fun b_next!77273 () Bool)

(assert (=> b!2717760 (= b_free!76569 (not b_next!77273))))

(declare-fun tp!857833 () Bool)

(declare-fun b_and!200321 () Bool)

(assert (=> b!2717760 (= tp!857833 b_and!200321)))

(declare-fun b_free!76571 () Bool)

(declare-fun b_next!77275 () Bool)

(assert (=> b!2717760 (= b_free!76571 (not b_next!77275))))

(declare-fun tp!857829 () Bool)

(declare-fun b_and!200323 () Bool)

(assert (=> b!2717760 (= tp!857829 b_and!200323)))

(declare-fun b!2717757 () Bool)

(declare-fun res!1141448 () Bool)

(declare-fun e!1712917 () Bool)

(assert (=> b!2717757 (=> res!1141448 e!1712917)))

(declare-datatypes ((List!31437 0))(
  ( (Nil!31337) (Cons!31337 (h!36757 (_ BitVec 16)) (t!226289 List!31437)) )
))
(declare-datatypes ((TokenValue!5015 0))(
  ( (FloatLiteralValue!10030 (text!35550 List!31437)) (TokenValueExt!5014 (__x!20165 Int)) (Broken!25075 (value!154187 List!31437)) (Object!5114) (End!5015) (Def!5015) (Underscore!5015) (Match!5015) (Else!5015) (Error!5015) (Case!5015) (If!5015) (Extends!5015) (Abstract!5015) (Class!5015) (Val!5015) (DelimiterValue!10030 (del!5075 List!31437)) (KeywordValue!5021 (value!154188 List!31437)) (CommentValue!10030 (value!154189 List!31437)) (WhitespaceValue!10030 (value!154190 List!31437)) (IndentationValue!5015 (value!154191 List!31437)) (String!34974) (Int32!5015) (Broken!25076 (value!154192 List!31437)) (Boolean!5016) (Unit!45361) (OperatorValue!5018 (op!5075 List!31437)) (IdentifierValue!10030 (value!154193 List!31437)) (IdentifierValue!10031 (value!154194 List!31437)) (WhitespaceValue!10031 (value!154195 List!31437)) (True!10030) (False!10030) (Broken!25077 (value!154196 List!31437)) (Broken!25078 (value!154197 List!31437)) (True!10031) (RightBrace!5015) (RightBracket!5015) (Colon!5015) (Null!5015) (Comma!5015) (LeftBracket!5015) (False!10031) (LeftBrace!5015) (ImaginaryLiteralValue!5015 (text!35551 List!31437)) (StringLiteralValue!15045 (value!154198 List!31437)) (EOFValue!5015 (value!154199 List!31437)) (IdentValue!5015 (value!154200 List!31437)) (DelimiterValue!10031 (value!154201 List!31437)) (DedentValue!5015 (value!154202 List!31437)) (NewLineValue!5015 (value!154203 List!31437)) (IntegerValue!15045 (value!154204 (_ BitVec 32)) (text!35552 List!31437)) (IntegerValue!15046 (value!154205 Int) (text!35553 List!31437)) (Times!5015) (Or!5015) (Equal!5015) (Minus!5015) (Broken!25079 (value!154206 List!31437)) (And!5015) (Div!5015) (LessEqual!5015) (Mod!5015) (Concat!12960) (Not!5015) (Plus!5015) (SpaceValue!5015 (value!154207 List!31437)) (IntegerValue!15047 (value!154208 Int) (text!35554 List!31437)) (StringLiteralValue!15046 (text!35555 List!31437)) (FloatLiteralValue!10031 (text!35556 List!31437)) (BytesLiteralValue!5015 (value!154209 List!31437)) (CommentValue!10031 (value!154210 List!31437)) (StringLiteralValue!15047 (value!154211 List!31437)) (ErrorTokenValue!5015 (msg!5076 List!31437)) )
))
(declare-datatypes ((C!16048 0))(
  ( (C!16049 (val!9958 Int)) )
))
(declare-datatypes ((List!31438 0))(
  ( (Nil!31338) (Cons!31338 (h!36758 C!16048) (t!226290 List!31438)) )
))
(declare-datatypes ((IArray!19631 0))(
  ( (IArray!19632 (innerList!9873 List!31438)) )
))
(declare-datatypes ((Conc!9813 0))(
  ( (Node!9813 (left!24095 Conc!9813) (right!24425 Conc!9813) (csize!19856 Int) (cheight!10024 Int)) (Leaf!14954 (xs!12884 IArray!19631) (csize!19857 Int)) (Empty!9813) )
))
(declare-datatypes ((BalanceConc!19240 0))(
  ( (BalanceConc!19241 (c!439181 Conc!9813)) )
))
(declare-datatypes ((Regex!7945 0))(
  ( (ElementMatch!7945 (c!439182 C!16048)) (Concat!12961 (regOne!16402 Regex!7945) (regTwo!16402 Regex!7945)) (EmptyExpr!7945) (Star!7945 (reg!8274 Regex!7945)) (EmptyLang!7945) (Union!7945 (regOne!16403 Regex!7945) (regTwo!16403 Regex!7945)) )
))
(declare-datatypes ((String!34975 0))(
  ( (String!34976 (value!154212 String)) )
))
(declare-datatypes ((TokenValueInjection!9470 0))(
  ( (TokenValueInjection!9471 (toValue!6767 Int) (toChars!6626 Int)) )
))
(declare-datatypes ((Rule!9386 0))(
  ( (Rule!9387 (regex!4793 Regex!7945) (tag!5297 String!34975) (isSeparator!4793 Bool) (transformation!4793 TokenValueInjection!9470)) )
))
(declare-datatypes ((Token!9048 0))(
  ( (Token!9049 (value!154213 TokenValue!5015) (rule!7221 Rule!9386) (size!24180 Int) (originalCharacters!5555 List!31438)) )
))
(declare-datatypes ((List!31439 0))(
  ( (Nil!31339) (Cons!31339 (h!36759 Token!9048) (t!226291 List!31439)) )
))
(declare-datatypes ((IArray!19633 0))(
  ( (IArray!19634 (innerList!9874 List!31439)) )
))
(declare-datatypes ((Conc!9814 0))(
  ( (Node!9814 (left!24096 Conc!9814) (right!24426 Conc!9814) (csize!19858 Int) (cheight!10025 Int)) (Leaf!14955 (xs!12885 IArray!19633) (csize!19859 Int)) (Empty!9814) )
))
(declare-datatypes ((BalanceConc!19242 0))(
  ( (BalanceConc!19243 (c!439183 Conc!9814)) )
))
(declare-datatypes ((tuple2!31014 0))(
  ( (tuple2!31015 (_1!18139 BalanceConc!19242) (_2!18139 BalanceConc!19240)) )
))
(declare-fun lt!961734 () tuple2!31014)

(declare-fun lt!961739 () BalanceConc!19242)

(declare-fun lt!961759 () List!31439)

(declare-fun list!11868 (BalanceConc!19242) List!31439)

(declare-fun ++!7780 (BalanceConc!19242 BalanceConc!19242) BalanceConc!19242)

(assert (=> b!2717757 (= res!1141448 (not (= lt!961759 (list!11868 (++!7780 lt!961739 (_1!18139 lt!961734))))))))

(declare-fun b!2717758 () Bool)

(declare-fun e!1712912 () Bool)

(assert (=> b!2717758 (= e!1712912 (not e!1712917))))

(declare-fun res!1141453 () Bool)

(assert (=> b!2717758 (=> res!1141453 e!1712917)))

(declare-fun lt!961749 () List!31438)

(declare-fun lt!961754 () BalanceConc!19240)

(declare-fun lt!961753 () List!31438)

(declare-fun ++!7781 (List!31438 List!31438) List!31438)

(declare-fun list!11869 (BalanceConc!19240) List!31438)

(assert (=> b!2717758 (= res!1141453 (not (= lt!961753 (++!7781 (list!11869 lt!961754) lt!961749))))))

(declare-fun e!1712920 () Bool)

(assert (=> b!2717758 e!1712920))

(declare-fun c!439180 () Bool)

(declare-datatypes ((tuple2!31016 0))(
  ( (tuple2!31017 (_1!18140 Token!9048) (_2!18140 BalanceConc!19240)) )
))
(declare-datatypes ((Option!6187 0))(
  ( (None!6186) (Some!6186 (v!33026 tuple2!31016)) )
))
(declare-fun lt!961736 () Option!6187)

(get-info :version)

(assert (=> b!2717758 (= c!439180 ((_ is Some!6186) lt!961736))))

(declare-datatypes ((LexerInterface!4389 0))(
  ( (LexerInterfaceExt!4386 (__x!20166 Int)) (Lexer!4387) )
))
(declare-fun thiss!11556 () LexerInterface!4389)

(declare-datatypes ((List!31440 0))(
  ( (Nil!31340) (Cons!31340 (h!36760 Rule!9386) (t!226292 List!31440)) )
))
(declare-fun rules!1182 () List!31440)

(declare-fun lt!961745 () tuple2!31014)

(declare-fun lexRec!649 (LexerInterface!4389 List!31440 BalanceConc!19240) tuple2!31014)

(assert (=> b!2717758 (= lt!961745 (lexRec!649 thiss!11556 rules!1182 lt!961754))))

(declare-fun maxPrefixZipperSequence!1037 (LexerInterface!4389 List!31440 BalanceConc!19240) Option!6187)

(assert (=> b!2717758 (= lt!961736 (maxPrefixZipperSequence!1037 thiss!11556 rules!1182 lt!961754))))

(declare-fun treated!9 () BalanceConc!19240)

(declare-fun lt!961758 () BalanceConc!19240)

(declare-fun ++!7782 (BalanceConc!19240 BalanceConc!19240) BalanceConc!19240)

(assert (=> b!2717758 (= lt!961754 (++!7782 treated!9 lt!961758))))

(declare-fun lt!961750 () List!31438)

(declare-fun lt!961743 () List!31439)

(declare-datatypes ((tuple2!31018 0))(
  ( (tuple2!31019 (_1!18141 List!31439) (_2!18141 List!31438)) )
))
(declare-fun lexList!1220 (LexerInterface!4389 List!31440 List!31438) tuple2!31018)

(assert (=> b!2717758 (= (lexList!1220 thiss!11556 rules!1182 lt!961750) (tuple2!31019 lt!961743 Nil!31338))))

(declare-datatypes ((Unit!45362 0))(
  ( (Unit!45363) )
))
(declare-fun lt!961737 () Unit!45362)

(declare-fun lt!961757 () List!31439)

(declare-fun lt!961748 () List!31438)

(declare-fun lemmaLexThenLexPrefix!428 (LexerInterface!4389 List!31440 List!31438 List!31438 List!31439 List!31439 List!31438) Unit!45362)

(assert (=> b!2717758 (= lt!961737 (lemmaLexThenLexPrefix!428 thiss!11556 rules!1182 lt!961750 lt!961749 lt!961743 lt!961757 lt!961748))))

(assert (=> b!2717758 (= lt!961748 (list!11869 (_2!18139 lt!961734)))))

(assert (=> b!2717758 (= lt!961743 (list!11868 lt!961739))))

(declare-fun acc!331 () BalanceConc!19242)

(declare-fun lt!961755 () Option!6187)

(declare-fun append!813 (BalanceConc!19242 Token!9048) BalanceConc!19242)

(assert (=> b!2717758 (= lt!961739 (append!813 acc!331 (_1!18140 (v!33026 lt!961755))))))

(declare-fun lt!961744 () List!31439)

(declare-fun lt!961740 () List!31439)

(declare-fun ++!7783 (List!31439 List!31439) List!31439)

(assert (=> b!2717758 (= (++!7783 (++!7783 lt!961744 lt!961740) lt!961757) (++!7783 lt!961744 (++!7783 lt!961740 lt!961757)))))

(declare-fun lt!961738 () Unit!45362)

(declare-fun lemmaConcatAssociativity!1607 (List!31439 List!31439 List!31439) Unit!45362)

(assert (=> b!2717758 (= lt!961738 (lemmaConcatAssociativity!1607 lt!961744 lt!961740 lt!961757))))

(assert (=> b!2717758 (= lt!961757 (list!11868 (_1!18139 lt!961734)))))

(assert (=> b!2717758 (= lt!961740 (Cons!31339 (_1!18140 (v!33026 lt!961755)) Nil!31339))))

(declare-fun e!1712925 () Bool)

(assert (=> b!2717758 e!1712925))

(declare-fun res!1141449 () Bool)

(assert (=> b!2717758 (=> (not res!1141449) (not e!1712925))))

(declare-fun lt!961756 () List!31438)

(declare-fun lt!961746 () List!31438)

(assert (=> b!2717758 (= res!1141449 (= (++!7781 lt!961750 lt!961749) (++!7781 lt!961746 (++!7781 lt!961756 lt!961749))))))

(assert (=> b!2717758 (= lt!961750 (++!7781 lt!961746 lt!961756))))

(declare-fun lt!961760 () Unit!45362)

(declare-fun lemmaConcatAssociativity!1608 (List!31438 List!31438 List!31438) Unit!45362)

(assert (=> b!2717758 (= lt!961760 (lemmaConcatAssociativity!1608 lt!961746 lt!961756 lt!961749))))

(assert (=> b!2717758 (= lt!961749 (list!11869 (_2!18140 (v!33026 lt!961755))))))

(assert (=> b!2717758 (= lt!961756 (list!11869 lt!961758))))

(declare-fun charsOf!3016 (Token!9048) BalanceConc!19240)

(assert (=> b!2717758 (= lt!961758 (charsOf!3016 (_1!18140 (v!33026 lt!961755))))))

(assert (=> b!2717758 (= lt!961734 (lexRec!649 thiss!11556 rules!1182 (_2!18140 (v!33026 lt!961755))))))

(declare-fun b!2717759 () Bool)

(declare-fun res!1141442 () Bool)

(assert (=> b!2717759 (=> res!1141442 e!1712917)))

(assert (=> b!2717759 (= res!1141442 (not (= (list!11868 (_1!18139 lt!961745)) lt!961743)))))

(declare-fun e!1712926 () Bool)

(assert (=> b!2717760 (= e!1712926 (and tp!857833 tp!857829))))

(declare-fun b!2717761 () Bool)

(declare-fun lt!961732 () List!31438)

(assert (=> b!2717761 (= e!1712917 (= lt!961732 lt!961748))))

(declare-fun res!1141451 () Bool)

(declare-fun e!1712927 () Bool)

(assert (=> start!263736 (=> (not res!1141451) (not e!1712927))))

(assert (=> start!263736 (= res!1141451 ((_ is Lexer!4387) thiss!11556))))

(assert (=> start!263736 e!1712927))

(declare-fun e!1712916 () Bool)

(declare-fun inv!42541 (BalanceConc!19240) Bool)

(assert (=> start!263736 (and (inv!42541 treated!9) e!1712916)))

(declare-fun input!603 () BalanceConc!19240)

(declare-fun e!1712913 () Bool)

(assert (=> start!263736 (and (inv!42541 input!603) e!1712913)))

(assert (=> start!263736 true))

(declare-fun e!1712911 () Bool)

(assert (=> start!263736 e!1712911))

(declare-fun totalInput!328 () BalanceConc!19240)

(declare-fun e!1712922 () Bool)

(assert (=> start!263736 (and (inv!42541 totalInput!328) e!1712922)))

(declare-fun e!1712918 () Bool)

(declare-fun inv!42542 (BalanceConc!19242) Bool)

(assert (=> start!263736 (and (inv!42542 acc!331) e!1712918)))

(declare-fun b!2717762 () Bool)

(declare-fun e!1712915 () Bool)

(assert (=> b!2717762 (= e!1712927 e!1712915)))

(declare-fun res!1141443 () Bool)

(assert (=> b!2717762 (=> (not res!1141443) (not e!1712915))))

(declare-fun lt!961741 () List!31438)

(assert (=> b!2717762 (= res!1141443 (= lt!961753 (++!7781 lt!961746 lt!961741)))))

(assert (=> b!2717762 (= lt!961753 (list!11869 totalInput!328))))

(assert (=> b!2717762 (= lt!961741 (list!11869 input!603))))

(assert (=> b!2717762 (= lt!961746 (list!11869 treated!9))))

(declare-fun b!2717763 () Bool)

(declare-fun e!1712919 () Bool)

(declare-fun e!1712921 () Bool)

(assert (=> b!2717763 (= e!1712919 e!1712921)))

(declare-fun res!1141445 () Bool)

(assert (=> b!2717763 (=> (not res!1141445) (not e!1712921))))

(declare-fun lt!961752 () BalanceConc!19242)

(assert (=> b!2717763 (= res!1141445 (= lt!961759 (list!11868 lt!961752)))))

(declare-fun lt!961733 () tuple2!31014)

(assert (=> b!2717763 (= lt!961759 (list!11868 (_1!18139 lt!961733)))))

(declare-fun lt!961751 () tuple2!31014)

(assert (=> b!2717763 (= lt!961752 (++!7780 acc!331 (_1!18139 lt!961751)))))

(assert (=> b!2717763 (= lt!961751 (lexRec!649 thiss!11556 rules!1182 input!603))))

(assert (=> b!2717763 (= lt!961733 (lexRec!649 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2717764 () Bool)

(declare-fun res!1141454 () Bool)

(assert (=> b!2717764 (=> res!1141454 e!1712917)))

(declare-fun isEmpty!17875 (List!31438) Bool)

(assert (=> b!2717764 (= res!1141454 (not (isEmpty!17875 (list!11869 (_2!18139 lt!961745)))))))

(declare-fun b!2717765 () Bool)

(declare-fun tp!857831 () Bool)

(declare-fun inv!42543 (Conc!9813) Bool)

(assert (=> b!2717765 (= e!1712916 (and (inv!42543 (c!439181 treated!9)) tp!857831))))

(declare-fun b!2717766 () Bool)

(declare-fun tp!857827 () Bool)

(declare-fun inv!42544 (Conc!9814) Bool)

(assert (=> b!2717766 (= e!1712918 (and (inv!42544 (c!439183 acc!331)) tp!857827))))

(declare-fun e!1712924 () Bool)

(declare-fun tp!857826 () Bool)

(declare-fun b!2717767 () Bool)

(declare-fun inv!42535 (String!34975) Bool)

(declare-fun inv!42545 (TokenValueInjection!9470) Bool)

(assert (=> b!2717767 (= e!1712924 (and tp!857826 (inv!42535 (tag!5297 (h!36760 rules!1182))) (inv!42545 (transformation!4793 (h!36760 rules!1182))) e!1712926))))

(declare-fun b!2717768 () Bool)

(declare-fun e!1712914 () Bool)

(assert (=> b!2717768 (= e!1712914 e!1712912)))

(declare-fun res!1141447 () Bool)

(assert (=> b!2717768 (=> (not res!1141447) (not e!1712912))))

(assert (=> b!2717768 (= res!1141447 ((_ is Some!6186) lt!961755))))

(assert (=> b!2717768 (= lt!961755 (maxPrefixZipperSequence!1037 thiss!11556 rules!1182 input!603))))

(declare-fun b!2717769 () Bool)

(declare-fun res!1141444 () Bool)

(assert (=> b!2717769 (=> (not res!1141444) (not e!1712919))))

(declare-fun lt!961747 () tuple2!31014)

(assert (=> b!2717769 (= res!1141444 (isEmpty!17875 (list!11869 (_2!18139 lt!961747))))))

(declare-fun b!2717770 () Bool)

(declare-fun tp!857832 () Bool)

(assert (=> b!2717770 (= e!1712922 (and (inv!42543 (c!439181 totalInput!328)) tp!857832))))

(declare-fun b!2717771 () Bool)

(declare-fun res!1141446 () Bool)

(assert (=> b!2717771 (=> (not res!1141446) (not e!1712927))))

(declare-fun isEmpty!17876 (List!31440) Bool)

(assert (=> b!2717771 (= res!1141446 (not (isEmpty!17876 rules!1182)))))

(declare-fun b!2717772 () Bool)

(assert (=> b!2717772 (= e!1712920 (= lt!961745 (tuple2!31015 (BalanceConc!19243 Empty!9814) lt!961754)))))

(declare-fun b!2717773 () Bool)

(declare-fun res!1141450 () Bool)

(assert (=> b!2717773 (=> (not res!1141450) (not e!1712927))))

(declare-fun rulesInvariant!3874 (LexerInterface!4389 List!31440) Bool)

(assert (=> b!2717773 (= res!1141450 (rulesInvariant!3874 thiss!11556 rules!1182))))

(declare-fun b!2717774 () Bool)

(assert (=> b!2717774 (= e!1712915 e!1712919)))

(declare-fun res!1141452 () Bool)

(assert (=> b!2717774 (=> (not res!1141452) (not e!1712919))))

(declare-fun lt!961742 () List!31439)

(assert (=> b!2717774 (= res!1141452 (= lt!961742 lt!961744))))

(assert (=> b!2717774 (= lt!961744 (list!11868 acc!331))))

(assert (=> b!2717774 (= lt!961742 (list!11868 (_1!18139 lt!961747)))))

(assert (=> b!2717774 (= lt!961747 (lexRec!649 thiss!11556 rules!1182 treated!9))))

(declare-fun b!2717775 () Bool)

(declare-fun tp!857828 () Bool)

(assert (=> b!2717775 (= e!1712913 (and (inv!42543 (c!439181 input!603)) tp!857828))))

(declare-fun b!2717776 () Bool)

(declare-fun tp!857830 () Bool)

(assert (=> b!2717776 (= e!1712911 (and e!1712924 tp!857830))))

(declare-fun b!2717777 () Bool)

(declare-fun prepend!1121 (BalanceConc!19242 Token!9048) BalanceConc!19242)

(assert (=> b!2717777 (= e!1712925 (= lt!961751 (tuple2!31015 (prepend!1121 (_1!18139 lt!961734) (_1!18140 (v!33026 lt!961755))) (_2!18139 lt!961734))))))

(declare-fun lt!961735 () tuple2!31014)

(declare-fun b!2717778 () Bool)

(assert (=> b!2717778 (= e!1712920 (= lt!961745 (tuple2!31015 (prepend!1121 (_1!18139 lt!961735) (_1!18140 (v!33026 lt!961736))) (_2!18139 lt!961735))))))

(assert (=> b!2717778 (= lt!961735 (lexRec!649 thiss!11556 rules!1182 (_2!18140 (v!33026 lt!961736))))))

(declare-fun b!2717779 () Bool)

(assert (=> b!2717779 (= e!1712921 e!1712914)))

(declare-fun res!1141441 () Bool)

(assert (=> b!2717779 (=> (not res!1141441) (not e!1712914))))

(assert (=> b!2717779 (= res!1141441 (= lt!961732 (list!11869 (_2!18139 lt!961751))))))

(assert (=> b!2717779 (= lt!961732 (list!11869 (_2!18139 lt!961733)))))

(assert (= (and start!263736 res!1141451) b!2717771))

(assert (= (and b!2717771 res!1141446) b!2717773))

(assert (= (and b!2717773 res!1141450) b!2717762))

(assert (= (and b!2717762 res!1141443) b!2717774))

(assert (= (and b!2717774 res!1141452) b!2717769))

(assert (= (and b!2717769 res!1141444) b!2717763))

(assert (= (and b!2717763 res!1141445) b!2717779))

(assert (= (and b!2717779 res!1141441) b!2717768))

(assert (= (and b!2717768 res!1141447) b!2717758))

(assert (= (and b!2717758 res!1141449) b!2717777))

(assert (= (and b!2717758 c!439180) b!2717778))

(assert (= (and b!2717758 (not c!439180)) b!2717772))

(assert (= (and b!2717758 (not res!1141453)) b!2717759))

(assert (= (and b!2717759 (not res!1141442)) b!2717764))

(assert (= (and b!2717764 (not res!1141454)) b!2717757))

(assert (= (and b!2717757 (not res!1141448)) b!2717761))

(assert (= start!263736 b!2717765))

(assert (= start!263736 b!2717775))

(assert (= b!2717767 b!2717760))

(assert (= b!2717776 b!2717767))

(assert (= (and start!263736 ((_ is Cons!31340) rules!1182)) b!2717776))

(assert (= start!263736 b!2717770))

(assert (= start!263736 b!2717766))

(declare-fun m!3116753 () Bool)

(assert (=> b!2717757 m!3116753))

(assert (=> b!2717757 m!3116753))

(declare-fun m!3116755 () Bool)

(assert (=> b!2717757 m!3116755))

(declare-fun m!3116757 () Bool)

(assert (=> b!2717770 m!3116757))

(declare-fun m!3116759 () Bool)

(assert (=> b!2717766 m!3116759))

(declare-fun m!3116761 () Bool)

(assert (=> b!2717765 m!3116761))

(declare-fun m!3116763 () Bool)

(assert (=> b!2717778 m!3116763))

(declare-fun m!3116765 () Bool)

(assert (=> b!2717778 m!3116765))

(declare-fun m!3116767 () Bool)

(assert (=> b!2717767 m!3116767))

(declare-fun m!3116769 () Bool)

(assert (=> b!2717767 m!3116769))

(declare-fun m!3116771 () Bool)

(assert (=> b!2717774 m!3116771))

(declare-fun m!3116773 () Bool)

(assert (=> b!2717774 m!3116773))

(declare-fun m!3116775 () Bool)

(assert (=> b!2717774 m!3116775))

(declare-fun m!3116777 () Bool)

(assert (=> b!2717763 m!3116777))

(declare-fun m!3116779 () Bool)

(assert (=> b!2717763 m!3116779))

(declare-fun m!3116781 () Bool)

(assert (=> b!2717763 m!3116781))

(declare-fun m!3116783 () Bool)

(assert (=> b!2717763 m!3116783))

(declare-fun m!3116785 () Bool)

(assert (=> b!2717763 m!3116785))

(declare-fun m!3116787 () Bool)

(assert (=> b!2717762 m!3116787))

(declare-fun m!3116789 () Bool)

(assert (=> b!2717762 m!3116789))

(declare-fun m!3116791 () Bool)

(assert (=> b!2717762 m!3116791))

(declare-fun m!3116793 () Bool)

(assert (=> b!2717762 m!3116793))

(declare-fun m!3116795 () Bool)

(assert (=> b!2717759 m!3116795))

(declare-fun m!3116797 () Bool)

(assert (=> start!263736 m!3116797))

(declare-fun m!3116799 () Bool)

(assert (=> start!263736 m!3116799))

(declare-fun m!3116801 () Bool)

(assert (=> start!263736 m!3116801))

(declare-fun m!3116803 () Bool)

(assert (=> start!263736 m!3116803))

(declare-fun m!3116805 () Bool)

(assert (=> b!2717779 m!3116805))

(declare-fun m!3116807 () Bool)

(assert (=> b!2717779 m!3116807))

(declare-fun m!3116809 () Bool)

(assert (=> b!2717764 m!3116809))

(assert (=> b!2717764 m!3116809))

(declare-fun m!3116811 () Bool)

(assert (=> b!2717764 m!3116811))

(declare-fun m!3116813 () Bool)

(assert (=> b!2717775 m!3116813))

(declare-fun m!3116815 () Bool)

(assert (=> b!2717777 m!3116815))

(declare-fun m!3116817 () Bool)

(assert (=> b!2717768 m!3116817))

(declare-fun m!3116819 () Bool)

(assert (=> b!2717769 m!3116819))

(assert (=> b!2717769 m!3116819))

(declare-fun m!3116821 () Bool)

(assert (=> b!2717769 m!3116821))

(declare-fun m!3116823 () Bool)

(assert (=> b!2717758 m!3116823))

(declare-fun m!3116825 () Bool)

(assert (=> b!2717758 m!3116825))

(declare-fun m!3116827 () Bool)

(assert (=> b!2717758 m!3116827))

(declare-fun m!3116829 () Bool)

(assert (=> b!2717758 m!3116829))

(declare-fun m!3116831 () Bool)

(assert (=> b!2717758 m!3116831))

(declare-fun m!3116833 () Bool)

(assert (=> b!2717758 m!3116833))

(declare-fun m!3116835 () Bool)

(assert (=> b!2717758 m!3116835))

(declare-fun m!3116837 () Bool)

(assert (=> b!2717758 m!3116837))

(declare-fun m!3116839 () Bool)

(assert (=> b!2717758 m!3116839))

(declare-fun m!3116841 () Bool)

(assert (=> b!2717758 m!3116841))

(declare-fun m!3116843 () Bool)

(assert (=> b!2717758 m!3116843))

(assert (=> b!2717758 m!3116843))

(declare-fun m!3116845 () Bool)

(assert (=> b!2717758 m!3116845))

(assert (=> b!2717758 m!3116823))

(declare-fun m!3116847 () Bool)

(assert (=> b!2717758 m!3116847))

(declare-fun m!3116849 () Bool)

(assert (=> b!2717758 m!3116849))

(declare-fun m!3116851 () Bool)

(assert (=> b!2717758 m!3116851))

(assert (=> b!2717758 m!3116839))

(declare-fun m!3116853 () Bool)

(assert (=> b!2717758 m!3116853))

(declare-fun m!3116855 () Bool)

(assert (=> b!2717758 m!3116855))

(declare-fun m!3116857 () Bool)

(assert (=> b!2717758 m!3116857))

(declare-fun m!3116859 () Bool)

(assert (=> b!2717758 m!3116859))

(declare-fun m!3116861 () Bool)

(assert (=> b!2717758 m!3116861))

(declare-fun m!3116863 () Bool)

(assert (=> b!2717758 m!3116863))

(assert (=> b!2717758 m!3116853))

(declare-fun m!3116865 () Bool)

(assert (=> b!2717758 m!3116865))

(declare-fun m!3116867 () Bool)

(assert (=> b!2717758 m!3116867))

(declare-fun m!3116869 () Bool)

(assert (=> b!2717758 m!3116869))

(declare-fun m!3116871 () Bool)

(assert (=> b!2717758 m!3116871))

(declare-fun m!3116873 () Bool)

(assert (=> b!2717773 m!3116873))

(declare-fun m!3116875 () Bool)

(assert (=> b!2717771 m!3116875))

(check-sat (not b!2717778) (not b!2717768) (not b!2717775) b_and!200321 (not b!2717776) b_and!200323 (not b!2717770) (not b!2717767) (not b!2717771) (not b!2717777) (not b!2717765) (not b!2717757) (not b!2717758) (not b_next!77273) (not b!2717769) (not b!2717773) (not b!2717764) (not b!2717766) (not b!2717762) (not b!2717759) (not start!263736) (not b_next!77275) (not b!2717779) (not b!2717763) (not b!2717774))
(check-sat b_and!200323 b_and!200321 (not b_next!77275) (not b_next!77273))
