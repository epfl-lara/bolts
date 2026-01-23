; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511356 () Bool)

(assert start!511356)

(declare-fun b!4886022 () Bool)

(declare-fun b_free!131243 () Bool)

(declare-fun b_next!132033 () Bool)

(assert (=> b!4886022 (= b_free!131243 (not b_next!132033))))

(declare-fun tp!1375028 () Bool)

(declare-fun b_and!344075 () Bool)

(assert (=> b!4886022 (= tp!1375028 b_and!344075)))

(declare-fun b_free!131245 () Bool)

(declare-fun b_next!132035 () Bool)

(assert (=> b!4886022 (= b_free!131245 (not b_next!132035))))

(declare-fun tp!1375025 () Bool)

(declare-fun b_and!344077 () Bool)

(assert (=> b!4886022 (= tp!1375025 b_and!344077)))

(declare-fun res!2086324 () Bool)

(declare-fun e!3054190 () Bool)

(assert (=> start!511356 (=> (not res!2086324) (not e!3054190))))

(declare-datatypes ((LexerInterface!7722 0))(
  ( (LexerInterfaceExt!7719 (__x!34173 Int)) (Lexer!7720) )
))
(declare-fun thiss!14805 () LexerInterface!7722)

(get-info :version)

(assert (=> start!511356 (= res!2086324 ((_ is Lexer!7720) thiss!14805))))

(assert (=> start!511356 e!3054190))

(assert (=> start!511356 true))

(declare-fun e!3054194 () Bool)

(assert (=> start!511356 e!3054194))

(declare-datatypes ((C!26608 0))(
  ( (C!26609 (val!22638 Int)) )
))
(declare-datatypes ((List!56395 0))(
  ( (Nil!56271) (Cons!56271 (h!62719 C!26608) (t!365041 List!56395)) )
))
(declare-datatypes ((IArray!29457 0))(
  ( (IArray!29458 (innerList!14786 List!56395)) )
))
(declare-datatypes ((Conc!14698 0))(
  ( (Node!14698 (left!40873 Conc!14698) (right!41203 Conc!14698) (csize!29626 Int) (cheight!14909 Int)) (Leaf!24480 (xs!18014 IArray!29457) (csize!29627 Int)) (Empty!14698) )
))
(declare-datatypes ((BalanceConc!28826 0))(
  ( (BalanceConc!28827 (c!830691 Conc!14698)) )
))
(declare-fun input!1236 () BalanceConc!28826)

(declare-fun e!3054195 () Bool)

(declare-fun inv!72428 (BalanceConc!28826) Bool)

(assert (=> start!511356 (and (inv!72428 input!1236) e!3054195)))

(declare-fun b!4886016 () Bool)

(declare-fun e!3054191 () Bool)

(declare-fun lt!2002102 () Bool)

(assert (=> b!4886016 (= e!3054191 lt!2002102)))

(declare-fun b!4886017 () Bool)

(declare-fun e!3054193 () Bool)

(declare-fun tp!1375029 () Bool)

(assert (=> b!4886017 (= e!3054194 (and e!3054193 tp!1375029))))

(declare-fun b!4886018 () Bool)

(declare-fun e!3054192 () Bool)

(assert (=> b!4886018 (= e!3054190 (not e!3054192))))

(declare-fun res!2086321 () Bool)

(assert (=> b!4886018 (=> res!2086321 e!3054192)))

(declare-datatypes ((List!56396 0))(
  ( (Nil!56272) (Cons!56272 (h!62720 (_ BitVec 16)) (t!365042 List!56396)) )
))
(declare-datatypes ((TokenValue!8440 0))(
  ( (FloatLiteralValue!16880 (text!59525 List!56396)) (TokenValueExt!8439 (__x!34174 Int)) (Broken!42200 (value!260831 List!56396)) (Object!8563) (End!8440) (Def!8440) (Underscore!8440) (Match!8440) (Else!8440) (Error!8440) (Case!8440) (If!8440) (Extends!8440) (Abstract!8440) (Class!8440) (Val!8440) (DelimiterValue!16880 (del!8500 List!56396)) (KeywordValue!8446 (value!260832 List!56396)) (CommentValue!16880 (value!260833 List!56396)) (WhitespaceValue!16880 (value!260834 List!56396)) (IndentationValue!8440 (value!260835 List!56396)) (String!63641) (Int32!8440) (Broken!42201 (value!260836 List!56396)) (Boolean!8441) (Unit!146261) (OperatorValue!8443 (op!8500 List!56396)) (IdentifierValue!16880 (value!260837 List!56396)) (IdentifierValue!16881 (value!260838 List!56396)) (WhitespaceValue!16881 (value!260839 List!56396)) (True!16880) (False!16880) (Broken!42202 (value!260840 List!56396)) (Broken!42203 (value!260841 List!56396)) (True!16881) (RightBrace!8440) (RightBracket!8440) (Colon!8440) (Null!8440) (Comma!8440) (LeftBracket!8440) (False!16881) (LeftBrace!8440) (ImaginaryLiteralValue!8440 (text!59526 List!56396)) (StringLiteralValue!25320 (value!260842 List!56396)) (EOFValue!8440 (value!260843 List!56396)) (IdentValue!8440 (value!260844 List!56396)) (DelimiterValue!16881 (value!260845 List!56396)) (DedentValue!8440 (value!260846 List!56396)) (NewLineValue!8440 (value!260847 List!56396)) (IntegerValue!25320 (value!260848 (_ BitVec 32)) (text!59527 List!56396)) (IntegerValue!25321 (value!260849 Int) (text!59528 List!56396)) (Times!8440) (Or!8440) (Equal!8440) (Minus!8440) (Broken!42204 (value!260850 List!56396)) (And!8440) (Div!8440) (LessEqual!8440) (Mod!8440) (Concat!21645) (Not!8440) (Plus!8440) (SpaceValue!8440 (value!260851 List!56396)) (IntegerValue!25322 (value!260852 Int) (text!59529 List!56396)) (StringLiteralValue!25321 (text!59530 List!56396)) (FloatLiteralValue!16881 (text!59531 List!56396)) (BytesLiteralValue!8440 (value!260853 List!56396)) (CommentValue!16881 (value!260854 List!56396)) (StringLiteralValue!25322 (value!260855 List!56396)) (ErrorTokenValue!8440 (msg!8501 List!56396)) )
))
(declare-datatypes ((Regex!13205 0))(
  ( (ElementMatch!13205 (c!830692 C!26608)) (Concat!21646 (regOne!26922 Regex!13205) (regTwo!26922 Regex!13205)) (EmptyExpr!13205) (Star!13205 (reg!13534 Regex!13205)) (EmptyLang!13205) (Union!13205 (regOne!26923 Regex!13205) (regTwo!26923 Regex!13205)) )
))
(declare-datatypes ((String!63642 0))(
  ( (String!63643 (value!260856 String)) )
))
(declare-datatypes ((TokenValueInjection!16188 0))(
  ( (TokenValueInjection!16189 (toValue!11017 Int) (toChars!10876 Int)) )
))
(declare-datatypes ((Rule!16060 0))(
  ( (Rule!16061 (regex!8130 Regex!13205) (tag!8994 String!63642) (isSeparator!8130 Bool) (transformation!8130 TokenValueInjection!16188)) )
))
(declare-datatypes ((List!56397 0))(
  ( (Nil!56273) (Cons!56273 (h!62721 Rule!16060) (t!365043 List!56397)) )
))
(declare-fun rulesArg!165 () List!56397)

(assert (=> b!4886018 (= res!2086321 (or (and ((_ is Cons!56273) rulesArg!165) ((_ is Nil!56273) (t!365043 rulesArg!165))) (not ((_ is Cons!56273) rulesArg!165))))))

(declare-fun lt!2002096 () List!56395)

(declare-fun isPrefix!4852 (List!56395 List!56395) Bool)

(assert (=> b!4886018 (isPrefix!4852 lt!2002096 lt!2002096)))

(declare-datatypes ((Unit!146262 0))(
  ( (Unit!146263) )
))
(declare-fun lt!2002101 () Unit!146262)

(declare-fun lemmaIsPrefixRefl!3249 (List!56395 List!56395) Unit!146262)

(assert (=> b!4886018 (= lt!2002101 (lemmaIsPrefixRefl!3249 lt!2002096 lt!2002096))))

(declare-fun list!17663 (BalanceConc!28826) List!56395)

(assert (=> b!4886018 (= lt!2002096 (list!17663 input!1236))))

(declare-fun b!4886019 () Bool)

(declare-fun tp!1375026 () Bool)

(declare-fun e!3054196 () Bool)

(declare-fun inv!72424 (String!63642) Bool)

(declare-fun inv!72429 (TokenValueInjection!16188) Bool)

(assert (=> b!4886019 (= e!3054193 (and tp!1375026 (inv!72424 (tag!8994 (h!62721 rulesArg!165))) (inv!72429 (transformation!8130 (h!62721 rulesArg!165))) e!3054196))))

(declare-fun b!4886020 () Bool)

(declare-fun e!3054188 () Bool)

(assert (=> b!4886020 (= e!3054192 e!3054188)))

(declare-fun res!2086325 () Bool)

(assert (=> b!4886020 (=> res!2086325 e!3054188)))

(declare-datatypes ((Token!14828 0))(
  ( (Token!14829 (value!260857 TokenValue!8440) (rule!11300 Rule!16060) (size!37062 Int) (originalCharacters!8445 List!56395)) )
))
(declare-datatypes ((tuple2!60236 0))(
  ( (tuple2!60237 (_1!33421 Token!14828) (_2!33421 BalanceConc!28826)) )
))
(declare-datatypes ((Option!13943 0))(
  ( (None!13942) (Some!13942 (v!49892 tuple2!60236)) )
))
(declare-fun lt!2002100 () Option!13943)

(declare-fun lt!2002097 () Option!13943)

(assert (=> b!4886020 (= res!2086325 (or (and ((_ is None!13942) lt!2002100) ((_ is None!13942) lt!2002097)) ((_ is None!13942) lt!2002097) ((_ is None!13942) lt!2002100) (< (size!37062 (_1!33421 (v!49892 lt!2002100))) (size!37062 (_1!33421 (v!49892 lt!2002097))))))))

(declare-fun maxPrefixZipperSequence!1291 (LexerInterface!7722 List!56397 BalanceConc!28826) Option!13943)

(assert (=> b!4886020 (= lt!2002097 (maxPrefixZipperSequence!1291 thiss!14805 (t!365043 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!656 (LexerInterface!7722 Rule!16060 BalanceConc!28826) Option!13943)

(assert (=> b!4886020 (= lt!2002100 (maxPrefixOneRuleZipperSequence!656 thiss!14805 (h!62721 rulesArg!165) input!1236))))

(declare-fun b!4886021 () Bool)

(assert (=> b!4886021 (= e!3054188 e!3054191)))

(declare-fun res!2086323 () Bool)

(assert (=> b!4886021 (=> res!2086323 e!3054191)))

(declare-fun lt!2002099 () Bool)

(assert (=> b!4886021 (= res!2086323 (or (not (= lt!2002099 lt!2002102)) (not lt!2002099)))))

(declare-datatypes ((tuple2!60238 0))(
  ( (tuple2!60239 (_1!33422 Token!14828) (_2!33422 List!56395)) )
))
(declare-datatypes ((Option!13944 0))(
  ( (None!13943) (Some!13943 (v!49893 tuple2!60238)) )
))
(declare-fun lt!2002098 () Option!13944)

(declare-fun isDefined!10962 (Option!13944) Bool)

(assert (=> b!4886021 (= lt!2002102 (isDefined!10962 lt!2002098))))

(declare-fun isDefined!10963 (Option!13943) Bool)

(assert (=> b!4886021 (= lt!2002099 (isDefined!10963 lt!2002100))))

(declare-fun maxPrefixZipper!633 (LexerInterface!7722 List!56397 List!56395) Option!13944)

(assert (=> b!4886021 (= lt!2002098 (maxPrefixZipper!633 thiss!14805 rulesArg!165 lt!2002096))))

(assert (=> b!4886022 (= e!3054196 (and tp!1375028 tp!1375025))))

(declare-fun b!4886023 () Bool)

(declare-fun res!2086322 () Bool)

(assert (=> b!4886023 (=> (not res!2086322) (not e!3054190))))

(declare-fun rulesValidInductive!3109 (LexerInterface!7722 List!56397) Bool)

(assert (=> b!4886023 (= res!2086322 (rulesValidInductive!3109 thiss!14805 rulesArg!165))))

(declare-fun b!4886024 () Bool)

(declare-fun res!2086326 () Bool)

(assert (=> b!4886024 (=> (not res!2086326) (not e!3054190))))

(declare-fun isEmpty!30157 (List!56397) Bool)

(assert (=> b!4886024 (= res!2086326 (not (isEmpty!30157 rulesArg!165)))))

(declare-fun b!4886025 () Bool)

(declare-fun res!2086327 () Bool)

(assert (=> b!4886025 (=> res!2086327 e!3054191)))

(declare-fun get!19388 (Option!13943) tuple2!60236)

(declare-fun get!19389 (Option!13944) tuple2!60238)

(assert (=> b!4886025 (= res!2086327 (not (= (_1!33421 (get!19388 lt!2002100)) (_1!33422 (get!19389 lt!2002098)))))))

(declare-fun b!4886026 () Bool)

(declare-fun tp!1375027 () Bool)

(declare-fun inv!72430 (Conc!14698) Bool)

(assert (=> b!4886026 (= e!3054195 (and (inv!72430 (c!830691 input!1236)) tp!1375027))))

(assert (= (and start!511356 res!2086324) b!4886023))

(assert (= (and b!4886023 res!2086322) b!4886024))

(assert (= (and b!4886024 res!2086326) b!4886018))

(assert (= (and b!4886018 (not res!2086321)) b!4886020))

(assert (= (and b!4886020 (not res!2086325)) b!4886021))

(assert (= (and b!4886021 (not res!2086323)) b!4886025))

(assert (= (and b!4886025 (not res!2086327)) b!4886016))

(assert (= b!4886019 b!4886022))

(assert (= b!4886017 b!4886019))

(assert (= (and start!511356 ((_ is Cons!56273) rulesArg!165)) b!4886017))

(assert (= start!511356 b!4886026))

(declare-fun m!5889836 () Bool)

(assert (=> b!4886018 m!5889836))

(declare-fun m!5889838 () Bool)

(assert (=> b!4886018 m!5889838))

(declare-fun m!5889840 () Bool)

(assert (=> b!4886018 m!5889840))

(declare-fun m!5889842 () Bool)

(assert (=> b!4886024 m!5889842))

(declare-fun m!5889844 () Bool)

(assert (=> b!4886019 m!5889844))

(declare-fun m!5889846 () Bool)

(assert (=> b!4886019 m!5889846))

(declare-fun m!5889848 () Bool)

(assert (=> b!4886025 m!5889848))

(declare-fun m!5889850 () Bool)

(assert (=> b!4886025 m!5889850))

(declare-fun m!5889852 () Bool)

(assert (=> b!4886026 m!5889852))

(declare-fun m!5889854 () Bool)

(assert (=> start!511356 m!5889854))

(declare-fun m!5889856 () Bool)

(assert (=> b!4886023 m!5889856))

(declare-fun m!5889858 () Bool)

(assert (=> b!4886020 m!5889858))

(declare-fun m!5889860 () Bool)

(assert (=> b!4886020 m!5889860))

(declare-fun m!5889862 () Bool)

(assert (=> b!4886021 m!5889862))

(declare-fun m!5889864 () Bool)

(assert (=> b!4886021 m!5889864))

(declare-fun m!5889866 () Bool)

(assert (=> b!4886021 m!5889866))

(check-sat (not b!4886019) (not b!4886020) (not b_next!132035) (not b!4886024) (not b!4886023) (not b!4886021) (not b!4886025) b_and!344075 b_and!344077 (not b!4886017) (not b!4886026) (not b!4886018) (not start!511356) (not b_next!132033))
(check-sat b_and!344077 b_and!344075 (not b_next!132033) (not b_next!132035))
