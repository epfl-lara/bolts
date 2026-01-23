; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745324 () Bool)

(assert start!745324)

(declare-fun b!7901165 () Bool)

(declare-fun b_free!134711 () Bool)

(declare-fun b_next!135501 () Bool)

(assert (=> b!7901165 (= b_free!134711 (not b_next!135501))))

(declare-fun tp!2353967 () Bool)

(declare-fun b_and!352675 () Bool)

(assert (=> b!7901165 (= tp!2353967 b_and!352675)))

(declare-fun b_free!134713 () Bool)

(declare-fun b_next!135503 () Bool)

(assert (=> b!7901165 (= b_free!134713 (not b_next!135503))))

(declare-fun tp!2353969 () Bool)

(declare-fun b_and!352677 () Bool)

(assert (=> b!7901165 (= tp!2353969 b_and!352677)))

(declare-fun b!7901154 () Bool)

(declare-fun e!4663796 () Bool)

(assert (=> b!7901154 (= e!4663796 true)))

(declare-fun b!7901155 () Bool)

(declare-fun e!4663799 () Bool)

(declare-fun e!4663797 () Bool)

(assert (=> b!7901155 (= e!4663799 (not e!4663797))))

(declare-fun res!3134770 () Bool)

(assert (=> b!7901155 (=> res!3134770 e!4663797)))

(declare-datatypes ((List!74272 0))(
  ( (Nil!74148) (Cons!74148 (h!80596 (_ BitVec 16)) (t!389179 List!74272)) )
))
(declare-datatypes ((TokenValue!8900 0))(
  ( (FloatLiteralValue!17800 (text!62745 List!74272)) (TokenValueExt!8899 (__x!35087 Int)) (Broken!44500 (value!286599 List!74272)) (Object!9023) (End!8900) (Def!8900) (Underscore!8900) (Match!8900) (Else!8900) (Error!8900) (Case!8900) (If!8900) (Extends!8900) (Abstract!8900) (Class!8900) (Val!8900) (DelimiterValue!17800 (del!8960 List!74272)) (KeywordValue!8906 (value!286600 List!74272)) (CommentValue!17800 (value!286601 List!74272)) (WhitespaceValue!17800 (value!286602 List!74272)) (IndentationValue!8900 (value!286603 List!74272)) (String!82921) (Int32!8900) (Broken!44501 (value!286604 List!74272)) (Boolean!8901) (Unit!169172) (OperatorValue!8903 (op!8960 List!74272)) (IdentifierValue!17800 (value!286605 List!74272)) (IdentifierValue!17801 (value!286606 List!74272)) (WhitespaceValue!17801 (value!286607 List!74272)) (True!17800) (False!17800) (Broken!44502 (value!286608 List!74272)) (Broken!44503 (value!286609 List!74272)) (True!17801) (RightBrace!8900) (RightBracket!8900) (Colon!8900) (Null!8900) (Comma!8900) (LeftBracket!8900) (False!17801) (LeftBrace!8900) (ImaginaryLiteralValue!8900 (text!62746 List!74272)) (StringLiteralValue!26700 (value!286610 List!74272)) (EOFValue!8900 (value!286611 List!74272)) (IdentValue!8900 (value!286612 List!74272)) (DelimiterValue!17801 (value!286613 List!74272)) (DedentValue!8900 (value!286614 List!74272)) (NewLineValue!8900 (value!286615 List!74272)) (IntegerValue!26700 (value!286616 (_ BitVec 32)) (text!62747 List!74272)) (IntegerValue!26701 (value!286617 Int) (text!62748 List!74272)) (Times!8900) (Or!8900) (Equal!8900) (Minus!8900) (Broken!44504 (value!286618 List!74272)) (And!8900) (Div!8900) (LessEqual!8900) (Mod!8900) (Concat!30187) (Not!8900) (Plus!8900) (SpaceValue!8900 (value!286619 List!74272)) (IntegerValue!26702 (value!286620 Int) (text!62749 List!74272)) (StringLiteralValue!26701 (text!62750 List!74272)) (FloatLiteralValue!17801 (text!62751 List!74272)) (BytesLiteralValue!8900 (value!286621 List!74272)) (CommentValue!17801 (value!286622 List!74272)) (StringLiteralValue!26702 (value!286623 List!74272)) (ErrorTokenValue!8900 (msg!8961 List!74272)) )
))
(declare-datatypes ((C!42904 0))(
  ( (C!42905 (val!31916 Int)) )
))
(declare-datatypes ((List!74273 0))(
  ( (Nil!74149) (Cons!74149 (h!80597 C!42904) (t!389180 List!74273)) )
))
(declare-datatypes ((IArray!31577 0))(
  ( (IArray!31578 (innerList!15846 List!74273)) )
))
(declare-datatypes ((Conc!15758 0))(
  ( (Node!15758 (left!56569 Conc!15758) (right!56899 Conc!15758) (csize!31746 Int) (cheight!15969 Int)) (Leaf!30018 (xs!19140 IArray!31577) (csize!31747 Int)) (Empty!15758) )
))
(declare-datatypes ((BalanceConc!30634 0))(
  ( (BalanceConc!30635 (c!1450011 Conc!15758)) )
))
(declare-datatypes ((Regex!21287 0))(
  ( (ElementMatch!21287 (c!1450012 C!42904)) (Concat!30188 (regOne!43086 Regex!21287) (regTwo!43086 Regex!21287)) (EmptyExpr!21287) (Star!21287 (reg!21616 Regex!21287)) (EmptyLang!21287) (Union!21287 (regOne!43087 Regex!21287) (regTwo!43087 Regex!21287)) )
))
(declare-datatypes ((String!82922 0))(
  ( (String!82923 (value!286624 String)) )
))
(declare-datatypes ((TokenValueInjection!17108 0))(
  ( (TokenValueInjection!17109 (toValue!11629 Int) (toChars!11488 Int)) )
))
(declare-datatypes ((Rule!16968 0))(
  ( (Rule!16969 (regex!8584 Regex!21287) (tag!9448 String!82922) (isSeparator!8584 Bool) (transformation!8584 TokenValueInjection!17108)) )
))
(declare-datatypes ((List!74274 0))(
  ( (Nil!74150) (Cons!74150 (h!80598 Rule!16968) (t!389181 List!74274)) )
))
(declare-fun rulesArg!141 () List!74274)

(get-info :version)

(assert (=> b!7901155 (= res!3134770 (or (and ((_ is Cons!74150) rulesArg!141) ((_ is Nil!74150) (t!389181 rulesArg!141))) (not ((_ is Cons!74150) rulesArg!141))))))

(declare-fun input!1184 () List!74273)

(declare-fun isPrefix!6417 (List!74273 List!74273) Bool)

(assert (=> b!7901155 (isPrefix!6417 input!1184 input!1184)))

(declare-datatypes ((Unit!169173 0))(
  ( (Unit!169174) )
))
(declare-fun lt!2683297 () Unit!169173)

(declare-fun lemmaIsPrefixRefl!3928 (List!74273 List!74273) Unit!169173)

(assert (=> b!7901155 (= lt!2683297 (lemmaIsPrefixRefl!3928 input!1184 input!1184))))

(declare-fun b!7901156 () Bool)

(declare-fun res!3134772 () Bool)

(assert (=> b!7901156 (=> res!3134772 e!4663796)))

(declare-datatypes ((Token!15588 0))(
  ( (Token!15589 (value!286625 TokenValue!8900) (rule!11870 Rule!16968) (size!42960 Int) (originalCharacters!8825 List!74273)) )
))
(declare-datatypes ((tuple2!70190 0))(
  ( (tuple2!70191 (_1!38398 Token!15588) (_2!38398 List!74273)) )
))
(declare-fun lt!2683300 () tuple2!70190)

(declare-fun apply!14325 (TokenValueInjection!17108 BalanceConc!30634) TokenValue!8900)

(declare-fun seqFromList!6143 (List!74273) BalanceConc!30634)

(assert (=> b!7901156 (= res!3134772 (not (= (value!286625 (_1!38398 lt!2683300)) (apply!14325 (transformation!8584 (rule!11870 (_1!38398 lt!2683300))) (seqFromList!6143 (originalCharacters!8825 (_1!38398 lt!2683300)))))))))

(declare-fun b!7901157 () Bool)

(declare-fun e!4663793 () Bool)

(assert (=> b!7901157 (= e!4663797 e!4663793)))

(declare-fun res!3134768 () Bool)

(assert (=> b!7901157 (=> res!3134768 e!4663793)))

(declare-datatypes ((Option!17866 0))(
  ( (None!17865) (Some!17865 (v!55004 tuple2!70190)) )
))
(declare-fun lt!2683298 () Option!17866)

(declare-fun lt!2683296 () Option!17866)

(assert (=> b!7901157 (= res!3134768 (or (and ((_ is None!17865) lt!2683298) ((_ is None!17865) lt!2683296)) ((_ is None!17865) lt!2683296) (not ((_ is None!17865) lt!2683298))))))

(declare-datatypes ((LexerInterface!8176 0))(
  ( (LexerInterfaceExt!8173 (__x!35088 Int)) (Lexer!8174) )
))
(declare-fun thiss!14377 () LexerInterface!8176)

(declare-fun maxPrefix!4717 (LexerInterface!8176 List!74274 List!74273) Option!17866)

(assert (=> b!7901157 (= lt!2683296 (maxPrefix!4717 thiss!14377 (t!389181 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3764 (LexerInterface!8176 Rule!16968 List!74273) Option!17866)

(assert (=> b!7901157 (= lt!2683298 (maxPrefixOneRule!3764 thiss!14377 (h!80598 rulesArg!141) input!1184))))

(declare-fun b!7901158 () Bool)

(declare-fun res!3134776 () Bool)

(assert (=> b!7901158 (=> (not res!3134776) (not e!4663799))))

(declare-fun rulesValidInductive!3395 (LexerInterface!8176 List!74274) Bool)

(assert (=> b!7901158 (= res!3134776 (rulesValidInductive!3395 thiss!14377 rulesArg!141))))

(declare-fun b!7901159 () Bool)

(declare-fun res!3134774 () Bool)

(assert (=> b!7901159 (=> res!3134774 e!4663796)))

(declare-fun lt!2683299 () List!74273)

(declare-fun ++!18150 (List!74273 List!74273) List!74273)

(assert (=> b!7901159 (= res!3134774 (not (= (++!18150 lt!2683299 (_2!38398 lt!2683300)) input!1184)))))

(declare-fun b!7901160 () Bool)

(declare-fun res!3134766 () Bool)

(assert (=> b!7901160 (=> res!3134766 e!4663796)))

(declare-fun size!42961 (List!74273) Int)

(assert (=> b!7901160 (= res!3134766 (>= (size!42961 (_2!38398 lt!2683300)) (size!42961 input!1184)))))

(declare-fun b!7901162 () Bool)

(declare-fun res!3134775 () Bool)

(assert (=> b!7901162 (=> (not res!3134775) (not e!4663799))))

(declare-fun isEmpty!42534 (List!74274) Bool)

(assert (=> b!7901162 (= res!3134775 (not (isEmpty!42534 rulesArg!141)))))

(declare-fun b!7901163 () Bool)

(declare-fun e!4663794 () Bool)

(declare-fun e!4663795 () Bool)

(declare-fun tp!2353970 () Bool)

(assert (=> b!7901163 (= e!4663794 (and e!4663795 tp!2353970))))

(declare-fun b!7901164 () Bool)

(assert (=> b!7901164 (= e!4663793 e!4663796)))

(declare-fun res!3134773 () Bool)

(assert (=> b!7901164 (=> res!3134773 e!4663796)))

(assert (=> b!7901164 (= res!3134773 (not (= lt!2683299 (originalCharacters!8825 (_1!38398 lt!2683300)))))))

(declare-fun list!19207 (BalanceConc!30634) List!74273)

(declare-fun charsOf!5528 (Token!15588) BalanceConc!30634)

(assert (=> b!7901164 (= lt!2683299 (list!19207 (charsOf!5528 (_1!38398 lt!2683300))))))

(declare-fun get!26630 (Option!17866) tuple2!70190)

(assert (=> b!7901164 (= lt!2683300 (get!26630 lt!2683296))))

(declare-fun e!4663798 () Bool)

(assert (=> b!7901165 (= e!4663798 (and tp!2353967 tp!2353969))))

(declare-fun res!3134771 () Bool)

(assert (=> start!745324 (=> (not res!3134771) (not e!4663799))))

(assert (=> start!745324 (= res!3134771 ((_ is Lexer!8174) thiss!14377))))

(assert (=> start!745324 e!4663799))

(assert (=> start!745324 true))

(assert (=> start!745324 e!4663794))

(declare-fun e!4663792 () Bool)

(assert (=> start!745324 e!4663792))

(declare-fun b!7901161 () Bool)

(declare-fun tp_is_empty!52949 () Bool)

(declare-fun tp!2353966 () Bool)

(assert (=> b!7901161 (= e!4663792 (and tp_is_empty!52949 tp!2353966))))

(declare-fun tp!2353968 () Bool)

(declare-fun b!7901166 () Bool)

(declare-fun inv!95132 (String!82922) Bool)

(declare-fun inv!95134 (TokenValueInjection!17108) Bool)

(assert (=> b!7901166 (= e!4663795 (and tp!2353968 (inv!95132 (tag!9448 (h!80598 rulesArg!141))) (inv!95134 (transformation!8584 (h!80598 rulesArg!141))) e!4663798))))

(declare-fun b!7901167 () Bool)

(declare-fun res!3134767 () Bool)

(assert (=> b!7901167 (=> res!3134767 e!4663793)))

(declare-fun isDefined!14442 (Option!17866) Bool)

(assert (=> b!7901167 (= res!3134767 (not (isDefined!14442 lt!2683296)))))

(declare-fun b!7901168 () Bool)

(declare-fun res!3134769 () Bool)

(assert (=> b!7901168 (=> res!3134769 e!4663793)))

(declare-fun isEmpty!42535 (Option!17866) Bool)

(assert (=> b!7901168 (= res!3134769 (isEmpty!42535 lt!2683296))))

(assert (= (and start!745324 res!3134771) b!7901158))

(assert (= (and b!7901158 res!3134776) b!7901162))

(assert (= (and b!7901162 res!3134775) b!7901155))

(assert (= (and b!7901155 (not res!3134770)) b!7901157))

(assert (= (and b!7901157 (not res!3134768)) b!7901168))

(assert (= (and b!7901168 (not res!3134769)) b!7901167))

(assert (= (and b!7901167 (not res!3134767)) b!7901164))

(assert (= (and b!7901164 (not res!3134773)) b!7901160))

(assert (= (and b!7901160 (not res!3134766)) b!7901159))

(assert (= (and b!7901159 (not res!3134774)) b!7901156))

(assert (= (and b!7901156 (not res!3134772)) b!7901154))

(assert (= b!7901166 b!7901165))

(assert (= b!7901163 b!7901166))

(assert (= (and start!745324 ((_ is Cons!74150) rulesArg!141)) b!7901163))

(assert (= (and start!745324 ((_ is Cons!74149) input!1184)) b!7901161))

(declare-fun m!8275860 () Bool)

(assert (=> b!7901157 m!8275860))

(declare-fun m!8275862 () Bool)

(assert (=> b!7901157 m!8275862))

(declare-fun m!8275864 () Bool)

(assert (=> b!7901156 m!8275864))

(assert (=> b!7901156 m!8275864))

(declare-fun m!8275866 () Bool)

(assert (=> b!7901156 m!8275866))

(declare-fun m!8275868 () Bool)

(assert (=> b!7901162 m!8275868))

(declare-fun m!8275870 () Bool)

(assert (=> b!7901159 m!8275870))

(declare-fun m!8275872 () Bool)

(assert (=> b!7901167 m!8275872))

(declare-fun m!8275874 () Bool)

(assert (=> b!7901164 m!8275874))

(assert (=> b!7901164 m!8275874))

(declare-fun m!8275876 () Bool)

(assert (=> b!7901164 m!8275876))

(declare-fun m!8275878 () Bool)

(assert (=> b!7901164 m!8275878))

(declare-fun m!8275880 () Bool)

(assert (=> b!7901160 m!8275880))

(declare-fun m!8275882 () Bool)

(assert (=> b!7901160 m!8275882))

(declare-fun m!8275884 () Bool)

(assert (=> b!7901168 m!8275884))

(declare-fun m!8275886 () Bool)

(assert (=> b!7901158 m!8275886))

(declare-fun m!8275888 () Bool)

(assert (=> b!7901155 m!8275888))

(declare-fun m!8275890 () Bool)

(assert (=> b!7901155 m!8275890))

(declare-fun m!8275892 () Bool)

(assert (=> b!7901166 m!8275892))

(declare-fun m!8275894 () Bool)

(assert (=> b!7901166 m!8275894))

(check-sat (not b!7901160) (not b!7901155) (not b!7901159) tp_is_empty!52949 (not b!7901163) (not b_next!135503) b_and!352677 (not b!7901162) (not b!7901166) (not b!7901164) (not b!7901161) (not b!7901168) b_and!352675 (not b!7901158) (not b_next!135501) (not b!7901167) (not b!7901156) (not b!7901157))
(check-sat b_and!352677 b_and!352675 (not b_next!135503) (not b_next!135501))
