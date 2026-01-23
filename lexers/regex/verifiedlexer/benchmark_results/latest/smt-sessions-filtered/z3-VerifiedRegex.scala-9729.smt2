; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!509272 () Bool)

(assert start!509272)

(declare-fun b!4870598 () Bool)

(declare-fun b_free!130707 () Bool)

(declare-fun b_next!131497 () Bool)

(assert (=> b!4870598 (= b_free!130707 (not b_next!131497))))

(declare-fun tp!1370423 () Bool)

(declare-fun b_and!342987 () Bool)

(assert (=> b!4870598 (= tp!1370423 b_and!342987)))

(declare-fun b_free!130709 () Bool)

(declare-fun b_next!131499 () Bool)

(assert (=> b!4870598 (= b_free!130709 (not b_next!131499))))

(declare-fun tp!1370422 () Bool)

(declare-fun b_and!342989 () Bool)

(assert (=> b!4870598 (= tp!1370422 b_and!342989)))

(declare-fun res!2079124 () Bool)

(declare-fun e!3044743 () Bool)

(assert (=> start!509272 (=> (not res!2079124) (not e!3044743))))

(declare-datatypes ((LexerInterface!7630 0))(
  ( (LexerInterfaceExt!7627 (__x!33989 Int)) (Lexer!7628) )
))
(declare-fun thiss!11460 () LexerInterface!7630)

(get-info :version)

(assert (=> start!509272 (= res!2079124 ((_ is Lexer!7628) thiss!11460))))

(assert (=> start!509272 e!3044743))

(assert (=> start!509272 true))

(declare-fun e!3044746 () Bool)

(assert (=> start!509272 e!3044746))

(declare-datatypes ((C!26424 0))(
  ( (C!26425 (val!22534 Int)) )
))
(declare-datatypes ((List!56088 0))(
  ( (Nil!55964) (Cons!55964 (h!62412 C!26424) (t!364158 List!56088)) )
))
(declare-datatypes ((IArray!29227 0))(
  ( (IArray!29228 (innerList!14671 List!56088)) )
))
(declare-datatypes ((Conc!14583 0))(
  ( (Node!14583 (left!40650 Conc!14583) (right!40980 Conc!14583) (csize!29396 Int) (cheight!14794 Int)) (Leaf!24313 (xs!17891 IArray!29227) (csize!29397 Int)) (Empty!14583) )
))
(declare-datatypes ((BalanceConc!28608 0))(
  ( (BalanceConc!28609 (c!828422 Conc!14583)) )
))
(declare-fun input!585 () BalanceConc!28608)

(declare-fun e!3044752 () Bool)

(declare-fun inv!71885 (BalanceConc!28608) Bool)

(assert (=> start!509272 (and (inv!71885 input!585) e!3044752)))

(declare-fun b!4870589 () Bool)

(declare-fun e!3044750 () Bool)

(declare-fun e!3044748 () Bool)

(assert (=> b!4870589 (= e!3044750 e!3044748)))

(declare-fun res!2079122 () Bool)

(declare-datatypes ((List!56089 0))(
  ( (Nil!55965) (Cons!55965 (h!62413 (_ BitVec 16)) (t!364159 List!56089)) )
))
(declare-datatypes ((TokenValue!8348 0))(
  ( (FloatLiteralValue!16696 (text!58881 List!56089)) (TokenValueExt!8347 (__x!33990 Int)) (Broken!41740 (value!258199 List!56089)) (Object!8471) (End!8348) (Def!8348) (Underscore!8348) (Match!8348) (Else!8348) (Error!8348) (Case!8348) (If!8348) (Extends!8348) (Abstract!8348) (Class!8348) (Val!8348) (DelimiterValue!16696 (del!8408 List!56089)) (KeywordValue!8354 (value!258200 List!56089)) (CommentValue!16696 (value!258201 List!56089)) (WhitespaceValue!16696 (value!258202 List!56089)) (IndentationValue!8348 (value!258203 List!56089)) (String!63157) (Int32!8348) (Broken!41741 (value!258204 List!56089)) (Boolean!8349) (Unit!145967) (OperatorValue!8351 (op!8408 List!56089)) (IdentifierValue!16696 (value!258205 List!56089)) (IdentifierValue!16697 (value!258206 List!56089)) (WhitespaceValue!16697 (value!258207 List!56089)) (True!16696) (False!16696) (Broken!41742 (value!258208 List!56089)) (Broken!41743 (value!258209 List!56089)) (True!16697) (RightBrace!8348) (RightBracket!8348) (Colon!8348) (Null!8348) (Comma!8348) (LeftBracket!8348) (False!16697) (LeftBrace!8348) (ImaginaryLiteralValue!8348 (text!58882 List!56089)) (StringLiteralValue!25044 (value!258210 List!56089)) (EOFValue!8348 (value!258211 List!56089)) (IdentValue!8348 (value!258212 List!56089)) (DelimiterValue!16697 (value!258213 List!56089)) (DedentValue!8348 (value!258214 List!56089)) (NewLineValue!8348 (value!258215 List!56089)) (IntegerValue!25044 (value!258216 (_ BitVec 32)) (text!58883 List!56089)) (IntegerValue!25045 (value!258217 Int) (text!58884 List!56089)) (Times!8348) (Or!8348) (Equal!8348) (Minus!8348) (Broken!41744 (value!258218 List!56089)) (And!8348) (Div!8348) (LessEqual!8348) (Mod!8348) (Concat!21461) (Not!8348) (Plus!8348) (SpaceValue!8348 (value!258219 List!56089)) (IntegerValue!25046 (value!258220 Int) (text!58885 List!56089)) (StringLiteralValue!25045 (text!58886 List!56089)) (FloatLiteralValue!16697 (text!58887 List!56089)) (BytesLiteralValue!8348 (value!258221 List!56089)) (CommentValue!16697 (value!258222 List!56089)) (StringLiteralValue!25046 (value!258223 List!56089)) (ErrorTokenValue!8348 (msg!8409 List!56089)) )
))
(declare-datatypes ((Regex!13113 0))(
  ( (ElementMatch!13113 (c!828423 C!26424)) (Concat!21462 (regOne!26738 Regex!13113) (regTwo!26738 Regex!13113)) (EmptyExpr!13113) (Star!13113 (reg!13442 Regex!13113)) (EmptyLang!13113) (Union!13113 (regOne!26739 Regex!13113) (regTwo!26739 Regex!13113)) )
))
(declare-datatypes ((String!63158 0))(
  ( (String!63159 (value!258224 String)) )
))
(declare-datatypes ((TokenValueInjection!16004 0))(
  ( (TokenValueInjection!16005 (toValue!10909 Int) (toChars!10768 Int)) )
))
(declare-datatypes ((Rule!15876 0))(
  ( (Rule!15877 (regex!8038 Regex!13113) (tag!8902 String!63158) (isSeparator!8038 Bool) (transformation!8038 TokenValueInjection!16004)) )
))
(declare-datatypes ((Token!14660 0))(
  ( (Token!14661 (value!258225 TokenValue!8348) (rule!11176 Rule!15876) (size!36890 Int) (originalCharacters!8361 List!56088)) )
))
(declare-datatypes ((List!56090 0))(
  ( (Nil!55966) (Cons!55966 (h!62414 Token!14660) (t!364160 List!56090)) )
))
(declare-datatypes ((IArray!29229 0))(
  ( (IArray!29230 (innerList!14672 List!56090)) )
))
(declare-datatypes ((Conc!14584 0))(
  ( (Node!14584 (left!40651 Conc!14584) (right!40981 Conc!14584) (csize!29398 Int) (cheight!14795 Int)) (Leaf!24314 (xs!17892 IArray!29229) (csize!29399 Int)) (Empty!14584) )
))
(declare-datatypes ((BalanceConc!28610 0))(
  ( (BalanceConc!28611 (c!828424 Conc!14584)) )
))
(declare-datatypes ((tuple2!59820 0))(
  ( (tuple2!59821 (_1!33213 BalanceConc!28610) (_2!33213 BalanceConc!28608)) )
))
(declare-fun lt!1995703 () tuple2!59820)

(declare-fun size!36891 (BalanceConc!28608) Int)

(assert (=> b!4870589 (= res!2079122 (< (size!36891 (_2!33213 lt!1995703)) (size!36891 input!585)))))

(assert (=> b!4870589 (=> (not res!2079122) (not e!3044748))))

(declare-fun b!4870590 () Bool)

(declare-fun e!3044751 () Bool)

(declare-fun e!3044753 () Bool)

(assert (=> b!4870590 (= e!3044751 e!3044753)))

(declare-fun res!2079119 () Bool)

(assert (=> b!4870590 (=> (not res!2079119) (not e!3044753))))

(assert (=> b!4870590 (= res!2079119 e!3044750)))

(declare-fun c!828421 () Bool)

(declare-fun lt!1995702 () BalanceConc!28610)

(declare-fun size!36892 (BalanceConc!28610) Int)

(assert (=> b!4870590 (= c!828421 (> (size!36892 lt!1995702) 0))))

(declare-datatypes ((tuple2!59822 0))(
  ( (tuple2!59823 (_1!33214 Token!14660) (_2!33214 BalanceConc!28608)) )
))
(declare-datatypes ((Option!13787 0))(
  ( (None!13786) (Some!13786 (v!49708 tuple2!59822)) )
))
(declare-fun lt!1995704 () Option!13787)

(declare-fun prepend!1398 (BalanceConc!28610 Token!14660) BalanceConc!28610)

(assert (=> b!4870590 (= lt!1995702 (prepend!1398 (_1!33213 lt!1995703) (_1!33214 (v!49708 lt!1995704))))))

(declare-fun b!4870591 () Bool)

(declare-fun res!2079125 () Bool)

(assert (=> b!4870591 (=> (not res!2079125) (not e!3044743))))

(declare-datatypes ((List!56091 0))(
  ( (Nil!55967) (Cons!55967 (h!62415 Rule!15876) (t!364161 List!56091)) )
))
(declare-fun rules!1164 () List!56091)

(declare-fun isEmpty!29952 (List!56091) Bool)

(assert (=> b!4870591 (= res!2079125 (not (isEmpty!29952 rules!1164)))))

(declare-fun tp!1370424 () Bool)

(declare-fun e!3044747 () Bool)

(declare-fun b!4870592 () Bool)

(declare-fun e!3044744 () Bool)

(declare-fun inv!71881 (String!63158) Bool)

(declare-fun inv!71886 (TokenValueInjection!16004) Bool)

(assert (=> b!4870592 (= e!3044747 (and tp!1370424 (inv!71881 (tag!8902 (h!62415 rules!1164))) (inv!71886 (transformation!8038 (h!62415 rules!1164))) e!3044744))))

(declare-fun b!4870593 () Bool)

(declare-fun tp!1370425 () Bool)

(assert (=> b!4870593 (= e!3044746 (and e!3044747 tp!1370425))))

(declare-fun b!4870594 () Bool)

(declare-fun isEmpty!29953 (BalanceConc!28610) Bool)

(assert (=> b!4870594 (= e!3044748 (not (isEmpty!29953 lt!1995702)))))

(declare-fun b!4870595 () Bool)

(assert (=> b!4870595 (= e!3044753 false)))

(declare-fun lt!1995706 () List!56090)

(declare-fun list!17505 (BalanceConc!28610) List!56090)

(assert (=> b!4870595 (= lt!1995706 (list!17505 lt!1995702))))

(declare-fun lt!1995708 () List!56088)

(declare-datatypes ((tuple2!59824 0))(
  ( (tuple2!59825 (_1!33215 List!56090) (_2!33215 List!56088)) )
))
(declare-fun lt!1995707 () tuple2!59824)

(declare-fun lexList!2105 (LexerInterface!7630 List!56091 List!56088) tuple2!59824)

(assert (=> b!4870595 (= lt!1995707 (lexList!2105 thiss!11460 rules!1164 lt!1995708))))

(declare-fun b!4870596 () Bool)

(declare-fun res!2079121 () Bool)

(assert (=> b!4870596 (=> (not res!2079121) (not e!3044743))))

(declare-fun rulesInvariant!6728 (LexerInterface!7630 List!56091) Bool)

(assert (=> b!4870596 (= res!2079121 (rulesInvariant!6728 thiss!11460 rules!1164))))

(declare-fun b!4870597 () Bool)

(declare-fun e!3044745 () Bool)

(assert (=> b!4870597 (= e!3044743 e!3044745)))

(declare-fun res!2079123 () Bool)

(assert (=> b!4870597 (=> (not res!2079123) (not e!3044745))))

(assert (=> b!4870597 (= res!2079123 ((_ is Some!13786) lt!1995704))))

(declare-fun maxPrefixZipperSequence!1229 (LexerInterface!7630 List!56091 BalanceConc!28608) Option!13787)

(assert (=> b!4870597 (= lt!1995704 (maxPrefixZipperSequence!1229 thiss!11460 rules!1164 input!585))))

(assert (=> b!4870598 (= e!3044744 (and tp!1370423 tp!1370422))))

(declare-fun b!4870599 () Bool)

(declare-fun tp!1370421 () Bool)

(declare-fun inv!71887 (Conc!14583) Bool)

(assert (=> b!4870599 (= e!3044752 (and (inv!71887 (c!828422 input!585)) tp!1370421))))

(declare-fun b!4870600 () Bool)

(declare-fun list!17506 (BalanceConc!28608) List!56088)

(assert (=> b!4870600 (= e!3044750 (= (list!17506 (_2!33213 lt!1995703)) lt!1995708))))

(declare-fun b!4870601 () Bool)

(assert (=> b!4870601 (= e!3044745 e!3044751)))

(declare-fun res!2079120 () Bool)

(assert (=> b!4870601 (=> (not res!2079120) (not e!3044751))))

(declare-fun lt!1995705 () List!56088)

(assert (=> b!4870601 (= res!2079120 (= lt!1995705 lt!1995708))))

(assert (=> b!4870601 (= lt!1995708 (list!17506 input!585))))

(declare-fun ++!12191 (List!56088 List!56088) List!56088)

(declare-fun charsOf!5341 (Token!14660) BalanceConc!28608)

(assert (=> b!4870601 (= lt!1995705 (++!12191 (list!17506 (charsOf!5341 (_1!33214 (v!49708 lt!1995704)))) (list!17506 (_2!33214 (v!49708 lt!1995704)))))))

(declare-fun lexRec!849 (LexerInterface!7630 List!56091 BalanceConc!28608) tuple2!59820)

(assert (=> b!4870601 (= lt!1995703 (lexRec!849 thiss!11460 rules!1164 (_2!33214 (v!49708 lt!1995704))))))

(assert (= (and start!509272 res!2079124) b!4870591))

(assert (= (and b!4870591 res!2079125) b!4870596))

(assert (= (and b!4870596 res!2079121) b!4870597))

(assert (= (and b!4870597 res!2079123) b!4870601))

(assert (= (and b!4870601 res!2079120) b!4870590))

(assert (= (and b!4870590 c!828421) b!4870589))

(assert (= (and b!4870590 (not c!828421)) b!4870600))

(assert (= (and b!4870589 res!2079122) b!4870594))

(assert (= (and b!4870590 res!2079119) b!4870595))

(assert (= b!4870592 b!4870598))

(assert (= b!4870593 b!4870592))

(assert (= (and start!509272 ((_ is Cons!55967) rules!1164)) b!4870593))

(assert (= start!509272 b!4870599))

(declare-fun m!5870854 () Bool)

(assert (=> b!4870590 m!5870854))

(declare-fun m!5870856 () Bool)

(assert (=> b!4870590 m!5870856))

(declare-fun m!5870858 () Bool)

(assert (=> b!4870595 m!5870858))

(declare-fun m!5870860 () Bool)

(assert (=> b!4870595 m!5870860))

(declare-fun m!5870862 () Bool)

(assert (=> b!4870589 m!5870862))

(declare-fun m!5870864 () Bool)

(assert (=> b!4870589 m!5870864))

(declare-fun m!5870866 () Bool)

(assert (=> b!4870600 m!5870866))

(declare-fun m!5870868 () Bool)

(assert (=> b!4870601 m!5870868))

(declare-fun m!5870870 () Bool)

(assert (=> b!4870601 m!5870870))

(declare-fun m!5870872 () Bool)

(assert (=> b!4870601 m!5870872))

(declare-fun m!5870874 () Bool)

(assert (=> b!4870601 m!5870874))

(declare-fun m!5870876 () Bool)

(assert (=> b!4870601 m!5870876))

(assert (=> b!4870601 m!5870868))

(assert (=> b!4870601 m!5870872))

(declare-fun m!5870878 () Bool)

(assert (=> b!4870601 m!5870878))

(assert (=> b!4870601 m!5870874))

(declare-fun m!5870880 () Bool)

(assert (=> b!4870596 m!5870880))

(declare-fun m!5870882 () Bool)

(assert (=> b!4870594 m!5870882))

(declare-fun m!5870884 () Bool)

(assert (=> b!4870599 m!5870884))

(declare-fun m!5870886 () Bool)

(assert (=> b!4870597 m!5870886))

(declare-fun m!5870888 () Bool)

(assert (=> start!509272 m!5870888))

(declare-fun m!5870890 () Bool)

(assert (=> b!4870591 m!5870890))

(declare-fun m!5870892 () Bool)

(assert (=> b!4870592 m!5870892))

(declare-fun m!5870894 () Bool)

(assert (=> b!4870592 m!5870894))

(check-sat (not b!4870593) b_and!342989 (not start!509272) (not b!4870596) (not b!4870600) (not b!4870590) (not b!4870597) b_and!342987 (not b!4870595) (not b!4870594) (not b!4870592) (not b_next!131499) (not b!4870589) (not b_next!131497) (not b!4870591) (not b!4870599) (not b!4870601))
(check-sat b_and!342989 b_and!342987 (not b_next!131497) (not b_next!131499))
