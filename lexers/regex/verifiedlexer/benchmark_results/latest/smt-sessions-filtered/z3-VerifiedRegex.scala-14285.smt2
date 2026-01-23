; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!746236 () Bool)

(assert start!746236)

(declare-fun b!7907768 () Bool)

(declare-fun b_free!135055 () Bool)

(declare-fun b_next!135845 () Bool)

(assert (=> b!7907768 (= b_free!135055 (not b_next!135845))))

(declare-fun tp!2355747 () Bool)

(declare-fun b_and!353259 () Bool)

(assert (=> b!7907768 (= tp!2355747 b_and!353259)))

(declare-fun b_free!135057 () Bool)

(declare-fun b_next!135847 () Bool)

(assert (=> b!7907768 (= b_free!135057 (not b_next!135847))))

(declare-fun tp!2355749 () Bool)

(declare-fun b_and!353261 () Bool)

(assert (=> b!7907768 (= tp!2355749 b_and!353261)))

(declare-fun b!7907757 () Bool)

(declare-fun res!3138313 () Bool)

(declare-fun e!4667892 () Bool)

(assert (=> b!7907757 (=> (not res!3138313) (not e!4667892))))

(declare-datatypes ((List!74428 0))(
  ( (Nil!74304) (Cons!74304 (h!80752 (_ BitVec 16)) (t!389713 List!74428)) )
))
(declare-datatypes ((TokenValue!8952 0))(
  ( (FloatLiteralValue!17904 (text!63109 List!74428)) (TokenValueExt!8951 (__x!35191 Int)) (Broken!44760 (value!288081 List!74428)) (Object!9075) (End!8952) (Def!8952) (Underscore!8952) (Match!8952) (Else!8952) (Error!8952) (Case!8952) (If!8952) (Extends!8952) (Abstract!8952) (Class!8952) (Val!8952) (DelimiterValue!17904 (del!9012 List!74428)) (KeywordValue!8958 (value!288082 List!74428)) (CommentValue!17904 (value!288083 List!74428)) (WhitespaceValue!17904 (value!288084 List!74428)) (IndentationValue!8952 (value!288085 List!74428)) (String!83181) (Int32!8952) (Broken!44761 (value!288086 List!74428)) (Boolean!8953) (Unit!169346) (OperatorValue!8955 (op!9012 List!74428)) (IdentifierValue!17904 (value!288087 List!74428)) (IdentifierValue!17905 (value!288088 List!74428)) (WhitespaceValue!17905 (value!288089 List!74428)) (True!17904) (False!17904) (Broken!44762 (value!288090 List!74428)) (Broken!44763 (value!288091 List!74428)) (True!17905) (RightBrace!8952) (RightBracket!8952) (Colon!8952) (Null!8952) (Comma!8952) (LeftBracket!8952) (False!17905) (LeftBrace!8952) (ImaginaryLiteralValue!8952 (text!63110 List!74428)) (StringLiteralValue!26856 (value!288092 List!74428)) (EOFValue!8952 (value!288093 List!74428)) (IdentValue!8952 (value!288094 List!74428)) (DelimiterValue!17905 (value!288095 List!74428)) (DedentValue!8952 (value!288096 List!74428)) (NewLineValue!8952 (value!288097 List!74428)) (IntegerValue!26856 (value!288098 (_ BitVec 32)) (text!63111 List!74428)) (IntegerValue!26857 (value!288099 Int) (text!63112 List!74428)) (Times!8952) (Or!8952) (Equal!8952) (Minus!8952) (Broken!44764 (value!288100 List!74428)) (And!8952) (Div!8952) (LessEqual!8952) (Mod!8952) (Concat!30291) (Not!8952) (Plus!8952) (SpaceValue!8952 (value!288101 List!74428)) (IntegerValue!26858 (value!288102 Int) (text!63113 List!74428)) (StringLiteralValue!26857 (text!63114 List!74428)) (FloatLiteralValue!17905 (text!63115 List!74428)) (BytesLiteralValue!8952 (value!288103 List!74428)) (CommentValue!17905 (value!288104 List!74428)) (StringLiteralValue!26858 (value!288105 List!74428)) (ErrorTokenValue!8952 (msg!9013 List!74428)) )
))
(declare-datatypes ((C!43008 0))(
  ( (C!43009 (val!31968 Int)) )
))
(declare-datatypes ((List!74429 0))(
  ( (Nil!74305) (Cons!74305 (h!80753 C!43008) (t!389714 List!74429)) )
))
(declare-datatypes ((IArray!31681 0))(
  ( (IArray!31682 (innerList!15898 List!74429)) )
))
(declare-datatypes ((Conc!15810 0))(
  ( (Node!15810 (left!56679 Conc!15810) (right!57009 Conc!15810) (csize!31850 Int) (cheight!16021 Int)) (Leaf!30096 (xs!19192 IArray!31681) (csize!31851 Int)) (Empty!15810) )
))
(declare-datatypes ((BalanceConc!30738 0))(
  ( (BalanceConc!30739 (c!1450885 Conc!15810)) )
))
(declare-datatypes ((Regex!21339 0))(
  ( (ElementMatch!21339 (c!1450886 C!43008)) (Concat!30292 (regOne!43190 Regex!21339) (regTwo!43190 Regex!21339)) (EmptyExpr!21339) (Star!21339 (reg!21668 Regex!21339)) (EmptyLang!21339) (Union!21339 (regOne!43191 Regex!21339) (regTwo!43191 Regex!21339)) )
))
(declare-datatypes ((String!83182 0))(
  ( (String!83183 (value!288106 String)) )
))
(declare-datatypes ((TokenValueInjection!17212 0))(
  ( (TokenValueInjection!17213 (toValue!11693 Int) (toChars!11552 Int)) )
))
(declare-datatypes ((Rule!17072 0))(
  ( (Rule!17073 (regex!8636 Regex!21339) (tag!9500 String!83182) (isSeparator!8636 Bool) (transformation!8636 TokenValueInjection!17212)) )
))
(declare-datatypes ((Token!15692 0))(
  ( (Token!15693 (value!288107 TokenValue!8952) (rule!11936 Rule!17072) (size!43079 Int) (originalCharacters!8877 List!74429)) )
))
(declare-datatypes ((tuple2!70320 0))(
  ( (tuple2!70321 (_1!38463 Token!15692) (_2!38463 List!74429)) )
))
(declare-fun lt!2685626 () tuple2!70320)

(declare-fun lt!2685623 () List!74429)

(declare-fun matchR!10666 (Regex!21339 List!74429) Bool)

(assert (=> b!7907757 (= res!3138313 (matchR!10666 (regex!8636 (rule!11936 (_1!38463 lt!2685626))) lt!2685623))))

(declare-fun b!7907758 () Bool)

(declare-fun res!3138312 () Bool)

(assert (=> b!7907758 (=> (not res!3138312) (not e!4667892))))

(declare-fun input!1184 () List!74429)

(declare-fun size!43080 (List!74429) Int)

(assert (=> b!7907758 (= res!3138312 (< (size!43080 (_2!38463 lt!2685626)) (size!43080 input!1184)))))

(declare-fun b!7907759 () Bool)

(declare-fun res!3138318 () Bool)

(assert (=> b!7907759 (=> (not res!3138318) (not e!4667892))))

(declare-fun apply!14359 (TokenValueInjection!17212 BalanceConc!30738) TokenValue!8952)

(declare-fun seqFromList!6177 (List!74429) BalanceConc!30738)

(assert (=> b!7907759 (= res!3138318 (= (value!288107 (_1!38463 lt!2685626)) (apply!14359 (transformation!8636 (rule!11936 (_1!38463 lt!2685626))) (seqFromList!6177 (originalCharacters!8877 (_1!38463 lt!2685626))))))))

(declare-fun b!7907760 () Bool)

(declare-fun e!4667894 () Bool)

(declare-fun e!4667896 () Bool)

(declare-fun tp!2355746 () Bool)

(assert (=> b!7907760 (= e!4667894 (and e!4667896 tp!2355746))))

(declare-fun b!7907761 () Bool)

(declare-fun e!4667891 () Bool)

(declare-fun tp_is_empty!53053 () Bool)

(declare-fun tp!2355748 () Bool)

(assert (=> b!7907761 (= e!4667891 (and tp_is_empty!53053 tp!2355748))))

(declare-fun b!7907762 () Bool)

(declare-fun res!3138319 () Bool)

(declare-fun e!4667900 () Bool)

(assert (=> b!7907762 (=> (not res!3138319) (not e!4667900))))

(declare-datatypes ((List!74430 0))(
  ( (Nil!74306) (Cons!74306 (h!80754 Rule!17072) (t!389715 List!74430)) )
))
(declare-fun rulesArg!141 () List!74430)

(declare-fun isEmpty!42652 (List!74430) Bool)

(assert (=> b!7907762 (= res!3138319 (not (isEmpty!42652 rulesArg!141)))))

(declare-fun b!7907763 () Bool)

(declare-fun res!3138321 () Bool)

(declare-fun e!4667895 () Bool)

(assert (=> b!7907763 (=> res!3138321 e!4667895)))

(declare-datatypes ((Option!17918 0))(
  ( (None!17917) (Some!17917 (v!55068 tuple2!70320)) )
))
(declare-fun lt!2685625 () Option!17918)

(declare-fun isEmpty!42653 (Option!17918) Bool)

(assert (=> b!7907763 (= res!3138321 (isEmpty!42653 lt!2685625))))

(declare-fun b!7907764 () Bool)

(declare-fun contains!20900 (List!74430 Rule!17072) Bool)

(assert (=> b!7907764 (= e!4667892 (contains!20900 rulesArg!141 (rule!11936 (_1!38463 lt!2685626))))))

(declare-fun res!3138322 () Bool)

(assert (=> start!746236 (=> (not res!3138322) (not e!4667900))))

(declare-datatypes ((LexerInterface!8228 0))(
  ( (LexerInterfaceExt!8225 (__x!35192 Int)) (Lexer!8226) )
))
(declare-fun thiss!14377 () LexerInterface!8228)

(get-info :version)

(assert (=> start!746236 (= res!3138322 ((_ is Lexer!8226) thiss!14377))))

(assert (=> start!746236 e!4667900))

(assert (=> start!746236 true))

(assert (=> start!746236 e!4667894))

(assert (=> start!746236 e!4667891))

(declare-fun b!7907765 () Bool)

(declare-fun res!3138314 () Bool)

(assert (=> b!7907765 (=> (not res!3138314) (not e!4667900))))

(declare-fun rulesValidInductive!3447 (LexerInterface!8228 List!74430) Bool)

(assert (=> b!7907765 (= res!3138314 (rulesValidInductive!3447 thiss!14377 rulesArg!141))))

(declare-fun b!7907766 () Bool)

(declare-fun e!4667899 () Bool)

(assert (=> b!7907766 (= e!4667899 e!4667892)))

(declare-fun res!3138317 () Bool)

(assert (=> b!7907766 (=> (not res!3138317) (not e!4667892))))

(assert (=> b!7907766 (= res!3138317 (= lt!2685623 (originalCharacters!8877 (_1!38463 lt!2685626))))))

(declare-fun list!19278 (BalanceConc!30738) List!74429)

(declare-fun charsOf!5580 (Token!15692) BalanceConc!30738)

(assert (=> b!7907766 (= lt!2685623 (list!19278 (charsOf!5580 (_1!38463 lt!2685626))))))

(declare-fun get!26708 (Option!17918) tuple2!70320)

(assert (=> b!7907766 (= lt!2685626 (get!26708 lt!2685625))))

(declare-fun b!7907767 () Bool)

(assert (=> b!7907767 (= e!4667895 e!4667899)))

(declare-fun res!3138315 () Bool)

(assert (=> b!7907767 (=> (not res!3138315) (not e!4667899))))

(declare-fun isDefined!14490 (Option!17918) Bool)

(assert (=> b!7907767 (= res!3138315 (isDefined!14490 lt!2685625))))

(declare-fun e!4667898 () Bool)

(assert (=> b!7907768 (= e!4667898 (and tp!2355747 tp!2355749))))

(declare-fun b!7907769 () Bool)

(declare-fun res!3138311 () Bool)

(assert (=> b!7907769 (=> (not res!3138311) (not e!4667892))))

(declare-fun ++!18190 (List!74429 List!74429) List!74429)

(assert (=> b!7907769 (= res!3138311 (= (++!18190 lt!2685623 (_2!38463 lt!2685626)) input!1184))))

(declare-fun tp!2355750 () Bool)

(declare-fun b!7907770 () Bool)

(declare-fun inv!95318 (String!83182) Bool)

(declare-fun inv!95320 (TokenValueInjection!17212) Bool)

(assert (=> b!7907770 (= e!4667896 (and tp!2355750 (inv!95318 (tag!9500 (h!80754 rulesArg!141))) (inv!95320 (transformation!8636 (h!80754 rulesArg!141))) e!4667898))))

(declare-fun b!7907771 () Bool)

(declare-fun e!4667897 () Bool)

(assert (=> b!7907771 (= e!4667897 e!4667895)))

(declare-fun res!3138316 () Bool)

(assert (=> b!7907771 (=> res!3138316 e!4667895)))

(declare-fun lt!2685622 () Option!17918)

(assert (=> b!7907771 (= res!3138316 (or (and ((_ is None!17917) lt!2685625) ((_ is None!17917) lt!2685622)) ((_ is None!17917) lt!2685622) ((_ is None!17917) lt!2685625) (< (size!43079 (_1!38463 (v!55068 lt!2685625))) (size!43079 (_1!38463 (v!55068 lt!2685622))))))))

(declare-fun maxPrefix!4753 (LexerInterface!8228 List!74430 List!74429) Option!17918)

(assert (=> b!7907771 (= lt!2685622 (maxPrefix!4753 thiss!14377 (t!389715 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3804 (LexerInterface!8228 Rule!17072 List!74429) Option!17918)

(assert (=> b!7907771 (= lt!2685625 (maxPrefixOneRule!3804 thiss!14377 (h!80754 rulesArg!141) input!1184))))

(declare-fun b!7907772 () Bool)

(assert (=> b!7907772 (= e!4667900 (not e!4667897))))

(declare-fun res!3138320 () Bool)

(assert (=> b!7907772 (=> res!3138320 e!4667897)))

(assert (=> b!7907772 (= res!3138320 (or (and ((_ is Cons!74306) rulesArg!141) ((_ is Nil!74306) (t!389715 rulesArg!141))) (not ((_ is Cons!74306) rulesArg!141))))))

(declare-fun isPrefix!6469 (List!74429 List!74429) Bool)

(assert (=> b!7907772 (isPrefix!6469 input!1184 input!1184)))

(declare-datatypes ((Unit!169347 0))(
  ( (Unit!169348) )
))
(declare-fun lt!2685624 () Unit!169347)

(declare-fun lemmaIsPrefixRefl!3980 (List!74429 List!74429) Unit!169347)

(assert (=> b!7907772 (= lt!2685624 (lemmaIsPrefixRefl!3980 input!1184 input!1184))))

(assert (= (and start!746236 res!3138322) b!7907765))

(assert (= (and b!7907765 res!3138314) b!7907762))

(assert (= (and b!7907762 res!3138319) b!7907772))

(assert (= (and b!7907772 (not res!3138320)) b!7907771))

(assert (= (and b!7907771 (not res!3138316)) b!7907763))

(assert (= (and b!7907763 (not res!3138321)) b!7907767))

(assert (= (and b!7907767 res!3138315) b!7907766))

(assert (= (and b!7907766 res!3138317) b!7907758))

(assert (= (and b!7907758 res!3138312) b!7907769))

(assert (= (and b!7907769 res!3138311) b!7907759))

(assert (= (and b!7907759 res!3138318) b!7907757))

(assert (= (and b!7907757 res!3138313) b!7907764))

(assert (= b!7907770 b!7907768))

(assert (= b!7907760 b!7907770))

(assert (= (and start!746236 ((_ is Cons!74306) rulesArg!141)) b!7907760))

(assert (= (and start!746236 ((_ is Cons!74305) input!1184)) b!7907761))

(declare-fun m!8281756 () Bool)

(assert (=> b!7907763 m!8281756))

(declare-fun m!8281758 () Bool)

(assert (=> b!7907759 m!8281758))

(assert (=> b!7907759 m!8281758))

(declare-fun m!8281760 () Bool)

(assert (=> b!7907759 m!8281760))

(declare-fun m!8281762 () Bool)

(assert (=> b!7907771 m!8281762))

(declare-fun m!8281764 () Bool)

(assert (=> b!7907771 m!8281764))

(declare-fun m!8281766 () Bool)

(assert (=> b!7907762 m!8281766))

(declare-fun m!8281768 () Bool)

(assert (=> b!7907764 m!8281768))

(declare-fun m!8281770 () Bool)

(assert (=> b!7907765 m!8281770))

(declare-fun m!8281772 () Bool)

(assert (=> b!7907772 m!8281772))

(declare-fun m!8281774 () Bool)

(assert (=> b!7907772 m!8281774))

(declare-fun m!8281776 () Bool)

(assert (=> b!7907757 m!8281776))

(declare-fun m!8281778 () Bool)

(assert (=> b!7907770 m!8281778))

(declare-fun m!8281780 () Bool)

(assert (=> b!7907770 m!8281780))

(declare-fun m!8281782 () Bool)

(assert (=> b!7907766 m!8281782))

(assert (=> b!7907766 m!8281782))

(declare-fun m!8281784 () Bool)

(assert (=> b!7907766 m!8281784))

(declare-fun m!8281786 () Bool)

(assert (=> b!7907766 m!8281786))

(declare-fun m!8281788 () Bool)

(assert (=> b!7907769 m!8281788))

(declare-fun m!8281790 () Bool)

(assert (=> b!7907767 m!8281790))

(declare-fun m!8281792 () Bool)

(assert (=> b!7907758 m!8281792))

(declare-fun m!8281794 () Bool)

(assert (=> b!7907758 m!8281794))

(check-sat (not b_next!135845) (not b!7907763) (not b!7907762) (not b!7907759) b_and!353259 (not b!7907772) b_and!353261 (not b!7907767) (not b!7907758) (not b!7907770) (not b!7907760) (not b_next!135847) (not b!7907761) tp_is_empty!53053 (not b!7907757) (not b!7907764) (not b!7907766) (not b!7907771) (not b!7907769) (not b!7907765))
(check-sat b_and!353261 b_and!353259 (not b_next!135847) (not b_next!135845))
(get-model)

(declare-fun d!2359624 () Bool)

(assert (=> d!2359624 (= (isDefined!14490 lt!2685625) (not (isEmpty!42653 lt!2685625)))))

(declare-fun bs!1968163 () Bool)

(assert (= bs!1968163 d!2359624))

(assert (=> bs!1968163 m!8281756))

(assert (=> b!7907767 d!2359624))

(declare-fun bm!733472 () Bool)

(declare-fun call!733477 () Bool)

(declare-fun isEmpty!42655 (List!74429) Bool)

(assert (=> bm!733472 (= call!733477 (isEmpty!42655 lt!2685623))))

(declare-fun b!7907817 () Bool)

(declare-fun res!3138371 () Bool)

(declare-fun e!4667930 () Bool)

(assert (=> b!7907817 (=> res!3138371 e!4667930)))

(declare-fun e!4667934 () Bool)

(assert (=> b!7907817 (= res!3138371 e!4667934)))

(declare-fun res!3138372 () Bool)

(assert (=> b!7907817 (=> (not res!3138372) (not e!4667934))))

(declare-fun lt!2685637 () Bool)

(assert (=> b!7907817 (= res!3138372 lt!2685637)))

(declare-fun b!7907818 () Bool)

(declare-fun e!4667928 () Bool)

(declare-fun derivativeStep!6438 (Regex!21339 C!43008) Regex!21339)

(declare-fun head!16159 (List!74429) C!43008)

(declare-fun tail!15702 (List!74429) List!74429)

(assert (=> b!7907818 (= e!4667928 (matchR!10666 (derivativeStep!6438 (regex!8636 (rule!11936 (_1!38463 lt!2685626))) (head!16159 lt!2685623)) (tail!15702 lt!2685623)))))

(declare-fun b!7907819 () Bool)

(declare-fun e!4667932 () Bool)

(assert (=> b!7907819 (= e!4667932 (not lt!2685637))))

(declare-fun b!7907820 () Bool)

(declare-fun e!4667933 () Bool)

(assert (=> b!7907820 (= e!4667933 (= lt!2685637 call!733477))))

(declare-fun d!2359626 () Bool)

(assert (=> d!2359626 e!4667933))

(declare-fun c!1450894 () Bool)

(assert (=> d!2359626 (= c!1450894 ((_ is EmptyExpr!21339) (regex!8636 (rule!11936 (_1!38463 lt!2685626)))))))

(assert (=> d!2359626 (= lt!2685637 e!4667928)))

(declare-fun c!1450893 () Bool)

(assert (=> d!2359626 (= c!1450893 (isEmpty!42655 lt!2685623))))

(declare-fun validRegex!11659 (Regex!21339) Bool)

(assert (=> d!2359626 (validRegex!11659 (regex!8636 (rule!11936 (_1!38463 lt!2685626))))))

(assert (=> d!2359626 (= (matchR!10666 (regex!8636 (rule!11936 (_1!38463 lt!2685626))) lt!2685623) lt!2685637)))

(declare-fun b!7907821 () Bool)

(assert (=> b!7907821 (= e!4667933 e!4667932)))

(declare-fun c!1450895 () Bool)

(assert (=> b!7907821 (= c!1450895 ((_ is EmptyLang!21339) (regex!8636 (rule!11936 (_1!38463 lt!2685626)))))))

(declare-fun b!7907822 () Bool)

(declare-fun nullable!9496 (Regex!21339) Bool)

(assert (=> b!7907822 (= e!4667928 (nullable!9496 (regex!8636 (rule!11936 (_1!38463 lt!2685626)))))))

(declare-fun b!7907823 () Bool)

(declare-fun res!3138373 () Bool)

(assert (=> b!7907823 (=> res!3138373 e!4667930)))

(assert (=> b!7907823 (= res!3138373 (not ((_ is ElementMatch!21339) (regex!8636 (rule!11936 (_1!38463 lt!2685626))))))))

(assert (=> b!7907823 (= e!4667932 e!4667930)))

(declare-fun b!7907824 () Bool)

(declare-fun res!3138368 () Bool)

(declare-fun e!4667931 () Bool)

(assert (=> b!7907824 (=> res!3138368 e!4667931)))

(assert (=> b!7907824 (= res!3138368 (not (isEmpty!42655 (tail!15702 lt!2685623))))))

(declare-fun b!7907825 () Bool)

(assert (=> b!7907825 (= e!4667931 (not (= (head!16159 lt!2685623) (c!1450886 (regex!8636 (rule!11936 (_1!38463 lt!2685626)))))))))

(declare-fun b!7907826 () Bool)

(declare-fun e!4667929 () Bool)

(assert (=> b!7907826 (= e!4667929 e!4667931)))

(declare-fun res!3138369 () Bool)

(assert (=> b!7907826 (=> res!3138369 e!4667931)))

(assert (=> b!7907826 (= res!3138369 call!733477)))

(declare-fun b!7907827 () Bool)

(declare-fun res!3138375 () Bool)

(assert (=> b!7907827 (=> (not res!3138375) (not e!4667934))))

(assert (=> b!7907827 (= res!3138375 (not call!733477))))

(declare-fun b!7907828 () Bool)

(assert (=> b!7907828 (= e!4667930 e!4667929)))

(declare-fun res!3138374 () Bool)

(assert (=> b!7907828 (=> (not res!3138374) (not e!4667929))))

(assert (=> b!7907828 (= res!3138374 (not lt!2685637))))

(declare-fun b!7907829 () Bool)

(declare-fun res!3138370 () Bool)

(assert (=> b!7907829 (=> (not res!3138370) (not e!4667934))))

(assert (=> b!7907829 (= res!3138370 (isEmpty!42655 (tail!15702 lt!2685623)))))

(declare-fun b!7907830 () Bool)

(assert (=> b!7907830 (= e!4667934 (= (head!16159 lt!2685623) (c!1450886 (regex!8636 (rule!11936 (_1!38463 lt!2685626))))))))

(assert (= (and d!2359626 c!1450893) b!7907822))

(assert (= (and d!2359626 (not c!1450893)) b!7907818))

(assert (= (and d!2359626 c!1450894) b!7907820))

(assert (= (and d!2359626 (not c!1450894)) b!7907821))

(assert (= (and b!7907821 c!1450895) b!7907819))

(assert (= (and b!7907821 (not c!1450895)) b!7907823))

(assert (= (and b!7907823 (not res!3138373)) b!7907817))

(assert (= (and b!7907817 res!3138372) b!7907827))

(assert (= (and b!7907827 res!3138375) b!7907829))

(assert (= (and b!7907829 res!3138370) b!7907830))

(assert (= (and b!7907817 (not res!3138371)) b!7907828))

(assert (= (and b!7907828 res!3138374) b!7907826))

(assert (= (and b!7907826 (not res!3138369)) b!7907824))

(assert (= (and b!7907824 (not res!3138368)) b!7907825))

(assert (= (or b!7907820 b!7907826 b!7907827) bm!733472))

(declare-fun m!8281804 () Bool)

(assert (=> d!2359626 m!8281804))

(declare-fun m!8281806 () Bool)

(assert (=> d!2359626 m!8281806))

(assert (=> bm!733472 m!8281804))

(declare-fun m!8281808 () Bool)

(assert (=> b!7907829 m!8281808))

(assert (=> b!7907829 m!8281808))

(declare-fun m!8281810 () Bool)

(assert (=> b!7907829 m!8281810))

(declare-fun m!8281812 () Bool)

(assert (=> b!7907822 m!8281812))

(assert (=> b!7907824 m!8281808))

(assert (=> b!7907824 m!8281808))

(assert (=> b!7907824 m!8281810))

(declare-fun m!8281814 () Bool)

(assert (=> b!7907825 m!8281814))

(assert (=> b!7907830 m!8281814))

(assert (=> b!7907818 m!8281814))

(assert (=> b!7907818 m!8281814))

(declare-fun m!8281816 () Bool)

(assert (=> b!7907818 m!8281816))

(assert (=> b!7907818 m!8281808))

(assert (=> b!7907818 m!8281816))

(assert (=> b!7907818 m!8281808))

(declare-fun m!8281818 () Bool)

(assert (=> b!7907818 m!8281818))

(assert (=> b!7907757 d!2359626))

(declare-fun d!2359628 () Bool)

(declare-fun lt!2685640 () Int)

(assert (=> d!2359628 (>= lt!2685640 0)))

(declare-fun e!4667937 () Int)

(assert (=> d!2359628 (= lt!2685640 e!4667937)))

(declare-fun c!1450898 () Bool)

(assert (=> d!2359628 (= c!1450898 ((_ is Nil!74305) (_2!38463 lt!2685626)))))

(assert (=> d!2359628 (= (size!43080 (_2!38463 lt!2685626)) lt!2685640)))

(declare-fun b!7907835 () Bool)

(assert (=> b!7907835 (= e!4667937 0)))

(declare-fun b!7907836 () Bool)

(assert (=> b!7907836 (= e!4667937 (+ 1 (size!43080 (t!389714 (_2!38463 lt!2685626)))))))

(assert (= (and d!2359628 c!1450898) b!7907835))

(assert (= (and d!2359628 (not c!1450898)) b!7907836))

(declare-fun m!8281820 () Bool)

(assert (=> b!7907836 m!8281820))

(assert (=> b!7907758 d!2359628))

(declare-fun d!2359630 () Bool)

(declare-fun lt!2685641 () Int)

(assert (=> d!2359630 (>= lt!2685641 0)))

(declare-fun e!4667938 () Int)

(assert (=> d!2359630 (= lt!2685641 e!4667938)))

(declare-fun c!1450899 () Bool)

(assert (=> d!2359630 (= c!1450899 ((_ is Nil!74305) input!1184))))

(assert (=> d!2359630 (= (size!43080 input!1184) lt!2685641)))

(declare-fun b!7907837 () Bool)

(assert (=> b!7907837 (= e!4667938 0)))

(declare-fun b!7907838 () Bool)

(assert (=> b!7907838 (= e!4667938 (+ 1 (size!43080 (t!389714 input!1184))))))

(assert (= (and d!2359630 c!1450899) b!7907837))

(assert (= (and d!2359630 (not c!1450899)) b!7907838))

(declare-fun m!8281822 () Bool)

(assert (=> b!7907838 m!8281822))

(assert (=> b!7907758 d!2359630))

(declare-fun b!7907848 () Bool)

(declare-fun e!4667944 () List!74429)

(assert (=> b!7907848 (= e!4667944 (Cons!74305 (h!80753 lt!2685623) (++!18190 (t!389714 lt!2685623) (_2!38463 lt!2685626))))))

(declare-fun b!7907850 () Bool)

(declare-fun lt!2685644 () List!74429)

(declare-fun e!4667943 () Bool)

(assert (=> b!7907850 (= e!4667943 (or (not (= (_2!38463 lt!2685626) Nil!74305)) (= lt!2685644 lt!2685623)))))

(declare-fun d!2359632 () Bool)

(assert (=> d!2359632 e!4667943))

(declare-fun res!3138380 () Bool)

(assert (=> d!2359632 (=> (not res!3138380) (not e!4667943))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15735 (List!74429) (InoxSet C!43008))

(assert (=> d!2359632 (= res!3138380 (= (content!15735 lt!2685644) ((_ map or) (content!15735 lt!2685623) (content!15735 (_2!38463 lt!2685626)))))))

(assert (=> d!2359632 (= lt!2685644 e!4667944)))

(declare-fun c!1450902 () Bool)

(assert (=> d!2359632 (= c!1450902 ((_ is Nil!74305) lt!2685623))))

(assert (=> d!2359632 (= (++!18190 lt!2685623 (_2!38463 lt!2685626)) lt!2685644)))

(declare-fun b!7907847 () Bool)

(assert (=> b!7907847 (= e!4667944 (_2!38463 lt!2685626))))

(declare-fun b!7907849 () Bool)

(declare-fun res!3138381 () Bool)

(assert (=> b!7907849 (=> (not res!3138381) (not e!4667943))))

(assert (=> b!7907849 (= res!3138381 (= (size!43080 lt!2685644) (+ (size!43080 lt!2685623) (size!43080 (_2!38463 lt!2685626)))))))

(assert (= (and d!2359632 c!1450902) b!7907847))

(assert (= (and d!2359632 (not c!1450902)) b!7907848))

(assert (= (and d!2359632 res!3138380) b!7907849))

(assert (= (and b!7907849 res!3138381) b!7907850))

(declare-fun m!8281824 () Bool)

(assert (=> b!7907848 m!8281824))

(declare-fun m!8281826 () Bool)

(assert (=> d!2359632 m!8281826))

(declare-fun m!8281828 () Bool)

(assert (=> d!2359632 m!8281828))

(declare-fun m!8281830 () Bool)

(assert (=> d!2359632 m!8281830))

(declare-fun m!8281832 () Bool)

(assert (=> b!7907849 m!8281832))

(declare-fun m!8281834 () Bool)

(assert (=> b!7907849 m!8281834))

(assert (=> b!7907849 m!8281792))

(assert (=> b!7907769 d!2359632))

(declare-fun d!2359634 () Bool)

(assert (=> d!2359634 true))

(declare-fun lt!2685672 () Bool)

(declare-fun lambda!472527 () Int)

(declare-fun forall!18456 (List!74430 Int) Bool)

(assert (=> d!2359634 (= lt!2685672 (forall!18456 rulesArg!141 lambda!472527))))

(declare-fun e!4667991 () Bool)

(assert (=> d!2359634 (= lt!2685672 e!4667991)))

(declare-fun res!3138440 () Bool)

(assert (=> d!2359634 (=> res!3138440 e!4667991)))

(assert (=> d!2359634 (= res!3138440 (not ((_ is Cons!74306) rulesArg!141)))))

(assert (=> d!2359634 (= (rulesValidInductive!3447 thiss!14377 rulesArg!141) lt!2685672)))

(declare-fun b!7907945 () Bool)

(declare-fun e!4667990 () Bool)

(assert (=> b!7907945 (= e!4667991 e!4667990)))

(declare-fun res!3138439 () Bool)

(assert (=> b!7907945 (=> (not res!3138439) (not e!4667990))))

(declare-fun ruleValid!3947 (LexerInterface!8228 Rule!17072) Bool)

(assert (=> b!7907945 (= res!3138439 (ruleValid!3947 thiss!14377 (h!80754 rulesArg!141)))))

(declare-fun b!7907946 () Bool)

(assert (=> b!7907946 (= e!4667990 (rulesValidInductive!3447 thiss!14377 (t!389715 rulesArg!141)))))

(assert (= (and d!2359634 (not res!3138440)) b!7907945))

(assert (= (and b!7907945 res!3138439) b!7907946))

(declare-fun m!8281906 () Bool)

(assert (=> d!2359634 m!8281906))

(declare-fun m!8281908 () Bool)

(assert (=> b!7907945 m!8281908))

(declare-fun m!8281910 () Bool)

(assert (=> b!7907946 m!8281910))

(assert (=> b!7907765 d!2359634))

(declare-fun d!2359654 () Bool)

(declare-fun list!19280 (Conc!15810) List!74429)

(assert (=> d!2359654 (= (list!19278 (charsOf!5580 (_1!38463 lt!2685626))) (list!19280 (c!1450885 (charsOf!5580 (_1!38463 lt!2685626)))))))

(declare-fun bs!1968165 () Bool)

(assert (= bs!1968165 d!2359654))

(declare-fun m!8281912 () Bool)

(assert (=> bs!1968165 m!8281912))

(assert (=> b!7907766 d!2359654))

(declare-fun d!2359656 () Bool)

(declare-fun lt!2685675 () BalanceConc!30738)

(assert (=> d!2359656 (= (list!19278 lt!2685675) (originalCharacters!8877 (_1!38463 lt!2685626)))))

(declare-fun dynLambda!30098 (Int TokenValue!8952) BalanceConc!30738)

(assert (=> d!2359656 (= lt!2685675 (dynLambda!30098 (toChars!11552 (transformation!8636 (rule!11936 (_1!38463 lt!2685626)))) (value!288107 (_1!38463 lt!2685626))))))

(assert (=> d!2359656 (= (charsOf!5580 (_1!38463 lt!2685626)) lt!2685675)))

(declare-fun b_lambda!289901 () Bool)

(assert (=> (not b_lambda!289901) (not d!2359656)))

(declare-fun t!389719 () Bool)

(declare-fun tb!263125 () Bool)

(assert (=> (and b!7907768 (= (toChars!11552 (transformation!8636 (h!80754 rulesArg!141))) (toChars!11552 (transformation!8636 (rule!11936 (_1!38463 lt!2685626))))) t!389719) tb!263125))

(declare-fun b!7907953 () Bool)

(declare-fun e!4667994 () Bool)

(declare-fun tp!2355756 () Bool)

(declare-fun inv!95323 (Conc!15810) Bool)

(assert (=> b!7907953 (= e!4667994 (and (inv!95323 (c!1450885 (dynLambda!30098 (toChars!11552 (transformation!8636 (rule!11936 (_1!38463 lt!2685626)))) (value!288107 (_1!38463 lt!2685626))))) tp!2355756))))

(declare-fun result!360330 () Bool)

(declare-fun inv!95324 (BalanceConc!30738) Bool)

(assert (=> tb!263125 (= result!360330 (and (inv!95324 (dynLambda!30098 (toChars!11552 (transformation!8636 (rule!11936 (_1!38463 lt!2685626)))) (value!288107 (_1!38463 lt!2685626)))) e!4667994))))

(assert (= tb!263125 b!7907953))

(declare-fun m!8281914 () Bool)

(assert (=> b!7907953 m!8281914))

(declare-fun m!8281916 () Bool)

(assert (=> tb!263125 m!8281916))

(assert (=> d!2359656 t!389719))

(declare-fun b_and!353265 () Bool)

(assert (= b_and!353261 (and (=> t!389719 result!360330) b_and!353265)))

(declare-fun m!8281918 () Bool)

(assert (=> d!2359656 m!8281918))

(declare-fun m!8281920 () Bool)

(assert (=> d!2359656 m!8281920))

(assert (=> b!7907766 d!2359656))

(declare-fun d!2359658 () Bool)

(assert (=> d!2359658 (= (get!26708 lt!2685625) (v!55068 lt!2685625))))

(assert (=> b!7907766 d!2359658))

(declare-fun d!2359660 () Bool)

(assert (=> d!2359660 (= (isEmpty!42652 rulesArg!141) ((_ is Nil!74306) rulesArg!141))))

(assert (=> b!7907762 d!2359660))

(declare-fun d!2359662 () Bool)

(assert (=> d!2359662 (= (isEmpty!42653 lt!2685625) (not ((_ is Some!17917) lt!2685625)))))

(assert (=> b!7907763 d!2359662))

(declare-fun d!2359664 () Bool)

(declare-fun lt!2685678 () Bool)

(declare-fun content!15737 (List!74430) (InoxSet Rule!17072))

(assert (=> d!2359664 (= lt!2685678 (select (content!15737 rulesArg!141) (rule!11936 (_1!38463 lt!2685626))))))

(declare-fun e!4668000 () Bool)

(assert (=> d!2359664 (= lt!2685678 e!4668000)))

(declare-fun res!3138446 () Bool)

(assert (=> d!2359664 (=> (not res!3138446) (not e!4668000))))

(assert (=> d!2359664 (= res!3138446 ((_ is Cons!74306) rulesArg!141))))

(assert (=> d!2359664 (= (contains!20900 rulesArg!141 (rule!11936 (_1!38463 lt!2685626))) lt!2685678)))

(declare-fun b!7907958 () Bool)

(declare-fun e!4667999 () Bool)

(assert (=> b!7907958 (= e!4668000 e!4667999)))

(declare-fun res!3138445 () Bool)

(assert (=> b!7907958 (=> res!3138445 e!4667999)))

(assert (=> b!7907958 (= res!3138445 (= (h!80754 rulesArg!141) (rule!11936 (_1!38463 lt!2685626))))))

(declare-fun b!7907959 () Bool)

(assert (=> b!7907959 (= e!4667999 (contains!20900 (t!389715 rulesArg!141) (rule!11936 (_1!38463 lt!2685626))))))

(assert (= (and d!2359664 res!3138446) b!7907958))

(assert (= (and b!7907958 (not res!3138445)) b!7907959))

(declare-fun m!8281922 () Bool)

(assert (=> d!2359664 m!8281922))

(declare-fun m!8281924 () Bool)

(assert (=> d!2359664 m!8281924))

(declare-fun m!8281926 () Bool)

(assert (=> b!7907959 m!8281926))

(assert (=> b!7907764 d!2359664))

(declare-fun d!2359666 () Bool)

(declare-fun dynLambda!30099 (Int BalanceConc!30738) TokenValue!8952)

(assert (=> d!2359666 (= (apply!14359 (transformation!8636 (rule!11936 (_1!38463 lt!2685626))) (seqFromList!6177 (originalCharacters!8877 (_1!38463 lt!2685626)))) (dynLambda!30099 (toValue!11693 (transformation!8636 (rule!11936 (_1!38463 lt!2685626)))) (seqFromList!6177 (originalCharacters!8877 (_1!38463 lt!2685626)))))))

(declare-fun b_lambda!289903 () Bool)

(assert (=> (not b_lambda!289903) (not d!2359666)))

(declare-fun tb!263127 () Bool)

(declare-fun t!389721 () Bool)

(assert (=> (and b!7907768 (= (toValue!11693 (transformation!8636 (h!80754 rulesArg!141))) (toValue!11693 (transformation!8636 (rule!11936 (_1!38463 lt!2685626))))) t!389721) tb!263127))

(declare-fun result!360334 () Bool)

(declare-fun inv!21 (TokenValue!8952) Bool)

(assert (=> tb!263127 (= result!360334 (inv!21 (dynLambda!30099 (toValue!11693 (transformation!8636 (rule!11936 (_1!38463 lt!2685626)))) (seqFromList!6177 (originalCharacters!8877 (_1!38463 lt!2685626))))))))

(declare-fun m!8281928 () Bool)

(assert (=> tb!263127 m!8281928))

(assert (=> d!2359666 t!389721))

(declare-fun b_and!353267 () Bool)

(assert (= b_and!353259 (and (=> t!389721 result!360334) b_and!353267)))

(assert (=> d!2359666 m!8281758))

(declare-fun m!8281930 () Bool)

(assert (=> d!2359666 m!8281930))

(assert (=> b!7907759 d!2359666))

(declare-fun d!2359668 () Bool)

(declare-fun fromListB!2787 (List!74429) BalanceConc!30738)

(assert (=> d!2359668 (= (seqFromList!6177 (originalCharacters!8877 (_1!38463 lt!2685626))) (fromListB!2787 (originalCharacters!8877 (_1!38463 lt!2685626))))))

(declare-fun bs!1968166 () Bool)

(assert (= bs!1968166 d!2359668))

(declare-fun m!8281932 () Bool)

(assert (=> bs!1968166 m!8281932))

(assert (=> b!7907759 d!2359668))

(declare-fun d!2359670 () Bool)

(assert (=> d!2359670 (= (inv!95318 (tag!9500 (h!80754 rulesArg!141))) (= (mod (str.len (value!288106 (tag!9500 (h!80754 rulesArg!141)))) 2) 0))))

(assert (=> b!7907770 d!2359670))

(declare-fun d!2359672 () Bool)

(declare-fun res!3138449 () Bool)

(declare-fun e!4668006 () Bool)

(assert (=> d!2359672 (=> (not res!3138449) (not e!4668006))))

(declare-fun semiInverseModEq!3827 (Int Int) Bool)

(assert (=> d!2359672 (= res!3138449 (semiInverseModEq!3827 (toChars!11552 (transformation!8636 (h!80754 rulesArg!141))) (toValue!11693 (transformation!8636 (h!80754 rulesArg!141)))))))

(assert (=> d!2359672 (= (inv!95320 (transformation!8636 (h!80754 rulesArg!141))) e!4668006)))

(declare-fun b!7907964 () Bool)

(declare-fun equivClasses!3642 (Int Int) Bool)

(assert (=> b!7907964 (= e!4668006 (equivClasses!3642 (toChars!11552 (transformation!8636 (h!80754 rulesArg!141))) (toValue!11693 (transformation!8636 (h!80754 rulesArg!141)))))))

(assert (= (and d!2359672 res!3138449) b!7907964))

(declare-fun m!8281934 () Bool)

(assert (=> d!2359672 m!8281934))

(declare-fun m!8281936 () Bool)

(assert (=> b!7907964 m!8281936))

(assert (=> b!7907770 d!2359672))

(declare-fun b!7908020 () Bool)

(declare-fun e!4668037 () Bool)

(declare-fun e!4668038 () Bool)

(assert (=> b!7908020 (= e!4668037 e!4668038)))

(declare-fun res!3138499 () Bool)

(assert (=> b!7908020 (=> (not res!3138499) (not e!4668038))))

(declare-fun lt!2685710 () Option!17918)

(assert (=> b!7908020 (= res!3138499 (isDefined!14490 lt!2685710))))

(declare-fun call!733486 () Option!17918)

(declare-fun bm!733481 () Bool)

(assert (=> bm!733481 (= call!733486 (maxPrefixOneRule!3804 thiss!14377 (h!80754 (t!389715 rulesArg!141)) input!1184))))

(declare-fun b!7908021 () Bool)

(assert (=> b!7908021 (= e!4668038 (contains!20900 (t!389715 rulesArg!141) (rule!11936 (_1!38463 (get!26708 lt!2685710)))))))

(declare-fun b!7908022 () Bool)

(declare-fun res!3138497 () Bool)

(assert (=> b!7908022 (=> (not res!3138497) (not e!4668038))))

(assert (=> b!7908022 (= res!3138497 (= (++!18190 (list!19278 (charsOf!5580 (_1!38463 (get!26708 lt!2685710)))) (_2!38463 (get!26708 lt!2685710))) input!1184))))

(declare-fun b!7908023 () Bool)

(declare-fun res!3138498 () Bool)

(assert (=> b!7908023 (=> (not res!3138498) (not e!4668038))))

(assert (=> b!7908023 (= res!3138498 (< (size!43080 (_2!38463 (get!26708 lt!2685710))) (size!43080 input!1184)))))

(declare-fun b!7908024 () Bool)

(declare-fun e!4668036 () Option!17918)

(declare-fun lt!2685708 () Option!17918)

(declare-fun lt!2685711 () Option!17918)

(assert (=> b!7908024 (= e!4668036 (ite (and ((_ is None!17917) lt!2685708) ((_ is None!17917) lt!2685711)) None!17917 (ite ((_ is None!17917) lt!2685711) lt!2685708 (ite ((_ is None!17917) lt!2685708) lt!2685711 (ite (>= (size!43079 (_1!38463 (v!55068 lt!2685708))) (size!43079 (_1!38463 (v!55068 lt!2685711)))) lt!2685708 lt!2685711)))))))

(assert (=> b!7908024 (= lt!2685708 call!733486)))

(assert (=> b!7908024 (= lt!2685711 (maxPrefix!4753 thiss!14377 (t!389715 (t!389715 rulesArg!141)) input!1184))))

(declare-fun b!7908025 () Bool)

(declare-fun res!3138493 () Bool)

(assert (=> b!7908025 (=> (not res!3138493) (not e!4668038))))

(assert (=> b!7908025 (= res!3138493 (matchR!10666 (regex!8636 (rule!11936 (_1!38463 (get!26708 lt!2685710)))) (list!19278 (charsOf!5580 (_1!38463 (get!26708 lt!2685710))))))))

(declare-fun b!7908026 () Bool)

(assert (=> b!7908026 (= e!4668036 call!733486)))

(declare-fun d!2359674 () Bool)

(assert (=> d!2359674 e!4668037))

(declare-fun res!3138494 () Bool)

(assert (=> d!2359674 (=> res!3138494 e!4668037)))

(assert (=> d!2359674 (= res!3138494 (isEmpty!42653 lt!2685710))))

(assert (=> d!2359674 (= lt!2685710 e!4668036)))

(declare-fun c!1450923 () Bool)

(assert (=> d!2359674 (= c!1450923 (and ((_ is Cons!74306) (t!389715 rulesArg!141)) ((_ is Nil!74306) (t!389715 (t!389715 rulesArg!141)))))))

(declare-fun lt!2685709 () Unit!169347)

(declare-fun lt!2685707 () Unit!169347)

(assert (=> d!2359674 (= lt!2685709 lt!2685707)))

(assert (=> d!2359674 (isPrefix!6469 input!1184 input!1184)))

(assert (=> d!2359674 (= lt!2685707 (lemmaIsPrefixRefl!3980 input!1184 input!1184))))

(assert (=> d!2359674 (rulesValidInductive!3447 thiss!14377 (t!389715 rulesArg!141))))

(assert (=> d!2359674 (= (maxPrefix!4753 thiss!14377 (t!389715 rulesArg!141) input!1184) lt!2685710)))

(declare-fun b!7908027 () Bool)

(declare-fun res!3138495 () Bool)

(assert (=> b!7908027 (=> (not res!3138495) (not e!4668038))))

(assert (=> b!7908027 (= res!3138495 (= (list!19278 (charsOf!5580 (_1!38463 (get!26708 lt!2685710)))) (originalCharacters!8877 (_1!38463 (get!26708 lt!2685710)))))))

(declare-fun b!7908028 () Bool)

(declare-fun res!3138496 () Bool)

(assert (=> b!7908028 (=> (not res!3138496) (not e!4668038))))

(assert (=> b!7908028 (= res!3138496 (= (value!288107 (_1!38463 (get!26708 lt!2685710))) (apply!14359 (transformation!8636 (rule!11936 (_1!38463 (get!26708 lt!2685710)))) (seqFromList!6177 (originalCharacters!8877 (_1!38463 (get!26708 lt!2685710)))))))))

(assert (= (and d!2359674 c!1450923) b!7908026))

(assert (= (and d!2359674 (not c!1450923)) b!7908024))

(assert (= (or b!7908026 b!7908024) bm!733481))

(assert (= (and d!2359674 (not res!3138494)) b!7908020))

(assert (= (and b!7908020 res!3138499) b!7908027))

(assert (= (and b!7908027 res!3138495) b!7908023))

(assert (= (and b!7908023 res!3138498) b!7908022))

(assert (= (and b!7908022 res!3138497) b!7908028))

(assert (= (and b!7908028 res!3138496) b!7908025))

(assert (= (and b!7908025 res!3138493) b!7908021))

(declare-fun m!8281996 () Bool)

(assert (=> b!7908022 m!8281996))

(declare-fun m!8281998 () Bool)

(assert (=> b!7908022 m!8281998))

(assert (=> b!7908022 m!8281998))

(declare-fun m!8282000 () Bool)

(assert (=> b!7908022 m!8282000))

(assert (=> b!7908022 m!8282000))

(declare-fun m!8282002 () Bool)

(assert (=> b!7908022 m!8282002))

(declare-fun m!8282004 () Bool)

(assert (=> bm!733481 m!8282004))

(declare-fun m!8282006 () Bool)

(assert (=> b!7908020 m!8282006))

(assert (=> b!7908023 m!8281996))

(declare-fun m!8282008 () Bool)

(assert (=> b!7908023 m!8282008))

(assert (=> b!7908023 m!8281794))

(declare-fun m!8282010 () Bool)

(assert (=> d!2359674 m!8282010))

(assert (=> d!2359674 m!8281772))

(assert (=> d!2359674 m!8281774))

(assert (=> d!2359674 m!8281910))

(assert (=> b!7908028 m!8281996))

(declare-fun m!8282012 () Bool)

(assert (=> b!7908028 m!8282012))

(assert (=> b!7908028 m!8282012))

(declare-fun m!8282014 () Bool)

(assert (=> b!7908028 m!8282014))

(assert (=> b!7908027 m!8281996))

(assert (=> b!7908027 m!8281998))

(assert (=> b!7908027 m!8281998))

(assert (=> b!7908027 m!8282000))

(declare-fun m!8282016 () Bool)

(assert (=> b!7908024 m!8282016))

(assert (=> b!7908025 m!8281996))

(assert (=> b!7908025 m!8281998))

(assert (=> b!7908025 m!8281998))

(assert (=> b!7908025 m!8282000))

(assert (=> b!7908025 m!8282000))

(declare-fun m!8282020 () Bool)

(assert (=> b!7908025 m!8282020))

(assert (=> b!7908021 m!8281996))

(declare-fun m!8282022 () Bool)

(assert (=> b!7908021 m!8282022))

(assert (=> b!7907771 d!2359674))

(declare-fun b!7908086 () Bool)

(declare-fun res!3138517 () Bool)

(declare-fun e!4668072 () Bool)

(assert (=> b!7908086 (=> (not res!3138517) (not e!4668072))))

(declare-fun lt!2685728 () Option!17918)

(assert (=> b!7908086 (= res!3138517 (< (size!43080 (_2!38463 (get!26708 lt!2685728))) (size!43080 input!1184)))))

(declare-fun b!7908087 () Bool)

(declare-fun e!4668071 () Option!17918)

(declare-datatypes ((tuple2!70324 0))(
  ( (tuple2!70325 (_1!38465 List!74429) (_2!38465 List!74429)) )
))
(declare-fun lt!2685727 () tuple2!70324)

(declare-fun size!43082 (BalanceConc!30738) Int)

(assert (=> b!7908087 (= e!4668071 (Some!17917 (tuple2!70321 (Token!15693 (apply!14359 (transformation!8636 (h!80754 rulesArg!141)) (seqFromList!6177 (_1!38465 lt!2685727))) (h!80754 rulesArg!141) (size!43082 (seqFromList!6177 (_1!38465 lt!2685727))) (_1!38465 lt!2685727)) (_2!38465 lt!2685727))))))

(declare-fun lt!2685726 () Unit!169347)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2127 (Regex!21339 List!74429) Unit!169347)

(assert (=> b!7908087 (= lt!2685726 (longestMatchIsAcceptedByMatchOrIsEmpty!2127 (regex!8636 (h!80754 rulesArg!141)) input!1184))))

(declare-fun res!3138519 () Bool)

(declare-fun findLongestMatchInner!2164 (Regex!21339 List!74429 Int List!74429 List!74429 Int) tuple2!70324)

(assert (=> b!7908087 (= res!3138519 (isEmpty!42655 (_1!38465 (findLongestMatchInner!2164 (regex!8636 (h!80754 rulesArg!141)) Nil!74305 (size!43080 Nil!74305) input!1184 input!1184 (size!43080 input!1184)))))))

(declare-fun e!4668073 () Bool)

(assert (=> b!7908087 (=> res!3138519 e!4668073)))

(assert (=> b!7908087 e!4668073))

(declare-fun lt!2685729 () Unit!169347)

(assert (=> b!7908087 (= lt!2685729 lt!2685726)))

(declare-fun lt!2685730 () Unit!169347)

(declare-fun lemmaSemiInverse!2674 (TokenValueInjection!17212 BalanceConc!30738) Unit!169347)

(assert (=> b!7908087 (= lt!2685730 (lemmaSemiInverse!2674 (transformation!8636 (h!80754 rulesArg!141)) (seqFromList!6177 (_1!38465 lt!2685727))))))

(declare-fun b!7908088 () Bool)

(declare-fun res!3138521 () Bool)

(assert (=> b!7908088 (=> (not res!3138521) (not e!4668072))))

(assert (=> b!7908088 (= res!3138521 (= (rule!11936 (_1!38463 (get!26708 lt!2685728))) (h!80754 rulesArg!141)))))

(declare-fun b!7908089 () Bool)

(assert (=> b!7908089 (= e!4668072 (= (size!43079 (_1!38463 (get!26708 lt!2685728))) (size!43080 (originalCharacters!8877 (_1!38463 (get!26708 lt!2685728))))))))

(declare-fun d!2359692 () Bool)

(declare-fun e!4668070 () Bool)

(assert (=> d!2359692 e!4668070))

(declare-fun res!3138515 () Bool)

(assert (=> d!2359692 (=> res!3138515 e!4668070)))

(assert (=> d!2359692 (= res!3138515 (isEmpty!42653 lt!2685728))))

(assert (=> d!2359692 (= lt!2685728 e!4668071)))

(declare-fun c!1450930 () Bool)

(assert (=> d!2359692 (= c!1450930 (isEmpty!42655 (_1!38465 lt!2685727)))))

(declare-fun findLongestMatch!1931 (Regex!21339 List!74429) tuple2!70324)

(assert (=> d!2359692 (= lt!2685727 (findLongestMatch!1931 (regex!8636 (h!80754 rulesArg!141)) input!1184))))

(assert (=> d!2359692 (ruleValid!3947 thiss!14377 (h!80754 rulesArg!141))))

(assert (=> d!2359692 (= (maxPrefixOneRule!3804 thiss!14377 (h!80754 rulesArg!141) input!1184) lt!2685728)))

(declare-fun b!7908090 () Bool)

(assert (=> b!7908090 (= e!4668071 None!17917)))

(declare-fun b!7908091 () Bool)

(declare-fun res!3138516 () Bool)

(assert (=> b!7908091 (=> (not res!3138516) (not e!4668072))))

(assert (=> b!7908091 (= res!3138516 (= (++!18190 (list!19278 (charsOf!5580 (_1!38463 (get!26708 lt!2685728)))) (_2!38463 (get!26708 lt!2685728))) input!1184))))

(declare-fun b!7908092 () Bool)

(assert (=> b!7908092 (= e!4668070 e!4668072)))

(declare-fun res!3138520 () Bool)

(assert (=> b!7908092 (=> (not res!3138520) (not e!4668072))))

(assert (=> b!7908092 (= res!3138520 (matchR!10666 (regex!8636 (h!80754 rulesArg!141)) (list!19278 (charsOf!5580 (_1!38463 (get!26708 lt!2685728))))))))

(declare-fun b!7908093 () Bool)

(declare-fun res!3138518 () Bool)

(assert (=> b!7908093 (=> (not res!3138518) (not e!4668072))))

(assert (=> b!7908093 (= res!3138518 (= (value!288107 (_1!38463 (get!26708 lt!2685728))) (apply!14359 (transformation!8636 (rule!11936 (_1!38463 (get!26708 lt!2685728)))) (seqFromList!6177 (originalCharacters!8877 (_1!38463 (get!26708 lt!2685728)))))))))

(declare-fun b!7908094 () Bool)

(assert (=> b!7908094 (= e!4668073 (matchR!10666 (regex!8636 (h!80754 rulesArg!141)) (_1!38465 (findLongestMatchInner!2164 (regex!8636 (h!80754 rulesArg!141)) Nil!74305 (size!43080 Nil!74305) input!1184 input!1184 (size!43080 input!1184)))))))

(assert (= (and d!2359692 c!1450930) b!7908090))

(assert (= (and d!2359692 (not c!1450930)) b!7908087))

(assert (= (and b!7908087 (not res!3138519)) b!7908094))

(assert (= (and d!2359692 (not res!3138515)) b!7908092))

(assert (= (and b!7908092 res!3138520) b!7908091))

(assert (= (and b!7908091 res!3138516) b!7908086))

(assert (= (and b!7908086 res!3138517) b!7908088))

(assert (= (and b!7908088 res!3138521) b!7908093))

(assert (= (and b!7908093 res!3138518) b!7908089))

(declare-fun m!8282030 () Bool)

(assert (=> b!7908091 m!8282030))

(declare-fun m!8282032 () Bool)

(assert (=> b!7908091 m!8282032))

(assert (=> b!7908091 m!8282032))

(declare-fun m!8282034 () Bool)

(assert (=> b!7908091 m!8282034))

(assert (=> b!7908091 m!8282034))

(declare-fun m!8282036 () Bool)

(assert (=> b!7908091 m!8282036))

(assert (=> b!7908086 m!8282030))

(declare-fun m!8282038 () Bool)

(assert (=> b!7908086 m!8282038))

(assert (=> b!7908086 m!8281794))

(declare-fun m!8282040 () Bool)

(assert (=> d!2359692 m!8282040))

(declare-fun m!8282042 () Bool)

(assert (=> d!2359692 m!8282042))

(declare-fun m!8282044 () Bool)

(assert (=> d!2359692 m!8282044))

(assert (=> d!2359692 m!8281908))

(declare-fun m!8282046 () Bool)

(assert (=> b!7908087 m!8282046))

(declare-fun m!8282048 () Bool)

(assert (=> b!7908087 m!8282048))

(declare-fun m!8282050 () Bool)

(assert (=> b!7908087 m!8282050))

(declare-fun m!8282052 () Bool)

(assert (=> b!7908087 m!8282052))

(assert (=> b!7908087 m!8281794))

(declare-fun m!8282054 () Bool)

(assert (=> b!7908087 m!8282054))

(assert (=> b!7908087 m!8282048))

(declare-fun m!8282056 () Bool)

(assert (=> b!7908087 m!8282056))

(declare-fun m!8282058 () Bool)

(assert (=> b!7908087 m!8282058))

(assert (=> b!7908087 m!8282052))

(assert (=> b!7908087 m!8282048))

(assert (=> b!7908087 m!8281794))

(assert (=> b!7908087 m!8282048))

(declare-fun m!8282060 () Bool)

(assert (=> b!7908087 m!8282060))

(assert (=> b!7908094 m!8282052))

(assert (=> b!7908094 m!8281794))

(assert (=> b!7908094 m!8282052))

(assert (=> b!7908094 m!8281794))

(assert (=> b!7908094 m!8282054))

(declare-fun m!8282062 () Bool)

(assert (=> b!7908094 m!8282062))

(assert (=> b!7908088 m!8282030))

(assert (=> b!7908092 m!8282030))

(assert (=> b!7908092 m!8282032))

(assert (=> b!7908092 m!8282032))

(assert (=> b!7908092 m!8282034))

(assert (=> b!7908092 m!8282034))

(declare-fun m!8282064 () Bool)

(assert (=> b!7908092 m!8282064))

(assert (=> b!7908093 m!8282030))

(declare-fun m!8282066 () Bool)

(assert (=> b!7908093 m!8282066))

(assert (=> b!7908093 m!8282066))

(declare-fun m!8282068 () Bool)

(assert (=> b!7908093 m!8282068))

(assert (=> b!7908089 m!8282030))

(declare-fun m!8282070 () Bool)

(assert (=> b!7908089 m!8282070))

(assert (=> b!7907771 d!2359692))

(declare-fun b!7908103 () Bool)

(declare-fun e!4668082 () Bool)

(declare-fun e!4668080 () Bool)

(assert (=> b!7908103 (= e!4668082 e!4668080)))

(declare-fun res!3138530 () Bool)

(assert (=> b!7908103 (=> (not res!3138530) (not e!4668080))))

(assert (=> b!7908103 (= res!3138530 (not ((_ is Nil!74305) input!1184)))))

(declare-fun b!7908105 () Bool)

(assert (=> b!7908105 (= e!4668080 (isPrefix!6469 (tail!15702 input!1184) (tail!15702 input!1184)))))

(declare-fun b!7908106 () Bool)

(declare-fun e!4668081 () Bool)

(assert (=> b!7908106 (= e!4668081 (>= (size!43080 input!1184) (size!43080 input!1184)))))

(declare-fun d!2359694 () Bool)

(assert (=> d!2359694 e!4668081))

(declare-fun res!3138531 () Bool)

(assert (=> d!2359694 (=> res!3138531 e!4668081)))

(declare-fun lt!2685733 () Bool)

(assert (=> d!2359694 (= res!3138531 (not lt!2685733))))

(assert (=> d!2359694 (= lt!2685733 e!4668082)))

(declare-fun res!3138532 () Bool)

(assert (=> d!2359694 (=> res!3138532 e!4668082)))

(assert (=> d!2359694 (= res!3138532 ((_ is Nil!74305) input!1184))))

(assert (=> d!2359694 (= (isPrefix!6469 input!1184 input!1184) lt!2685733)))

(declare-fun b!7908104 () Bool)

(declare-fun res!3138533 () Bool)

(assert (=> b!7908104 (=> (not res!3138533) (not e!4668080))))

(assert (=> b!7908104 (= res!3138533 (= (head!16159 input!1184) (head!16159 input!1184)))))

(assert (= (and d!2359694 (not res!3138532)) b!7908103))

(assert (= (and b!7908103 res!3138530) b!7908104))

(assert (= (and b!7908104 res!3138533) b!7908105))

(assert (= (and d!2359694 (not res!3138531)) b!7908106))

(declare-fun m!8282072 () Bool)

(assert (=> b!7908105 m!8282072))

(assert (=> b!7908105 m!8282072))

(assert (=> b!7908105 m!8282072))

(assert (=> b!7908105 m!8282072))

(declare-fun m!8282074 () Bool)

(assert (=> b!7908105 m!8282074))

(assert (=> b!7908106 m!8281794))

(assert (=> b!7908106 m!8281794))

(declare-fun m!8282076 () Bool)

(assert (=> b!7908104 m!8282076))

(assert (=> b!7908104 m!8282076))

(assert (=> b!7907772 d!2359694))

(declare-fun d!2359696 () Bool)

(assert (=> d!2359696 (isPrefix!6469 input!1184 input!1184)))

(declare-fun lt!2685736 () Unit!169347)

(declare-fun choose!59734 (List!74429 List!74429) Unit!169347)

(assert (=> d!2359696 (= lt!2685736 (choose!59734 input!1184 input!1184))))

(assert (=> d!2359696 (= (lemmaIsPrefixRefl!3980 input!1184 input!1184) lt!2685736)))

(declare-fun bs!1968169 () Bool)

(assert (= bs!1968169 d!2359696))

(assert (=> bs!1968169 m!8281772))

(declare-fun m!8282078 () Bool)

(assert (=> bs!1968169 m!8282078))

(assert (=> b!7907772 d!2359696))

(declare-fun e!4668085 () Bool)

(assert (=> b!7907770 (= tp!2355750 e!4668085)))

(declare-fun b!7908120 () Bool)

(declare-fun tp!2355801 () Bool)

(declare-fun tp!2355800 () Bool)

(assert (=> b!7908120 (= e!4668085 (and tp!2355801 tp!2355800))))

(declare-fun b!7908117 () Bool)

(assert (=> b!7908117 (= e!4668085 tp_is_empty!53053)))

(declare-fun b!7908119 () Bool)

(declare-fun tp!2355798 () Bool)

(assert (=> b!7908119 (= e!4668085 tp!2355798)))

(declare-fun b!7908118 () Bool)

(declare-fun tp!2355799 () Bool)

(declare-fun tp!2355797 () Bool)

(assert (=> b!7908118 (= e!4668085 (and tp!2355799 tp!2355797))))

(assert (= (and b!7907770 ((_ is ElementMatch!21339) (regex!8636 (h!80754 rulesArg!141)))) b!7908117))

(assert (= (and b!7907770 ((_ is Concat!30292) (regex!8636 (h!80754 rulesArg!141)))) b!7908118))

(assert (= (and b!7907770 ((_ is Star!21339) (regex!8636 (h!80754 rulesArg!141)))) b!7908119))

(assert (= (and b!7907770 ((_ is Union!21339) (regex!8636 (h!80754 rulesArg!141)))) b!7908120))

(declare-fun b!7908131 () Bool)

(declare-fun b_free!135063 () Bool)

(declare-fun b_next!135853 () Bool)

(assert (=> b!7908131 (= b_free!135063 (not b_next!135853))))

(declare-fun tb!263135 () Bool)

(declare-fun t!389729 () Bool)

(assert (=> (and b!7908131 (= (toValue!11693 (transformation!8636 (h!80754 (t!389715 rulesArg!141)))) (toValue!11693 (transformation!8636 (rule!11936 (_1!38463 lt!2685626))))) t!389729) tb!263135))

(declare-fun result!360356 () Bool)

(assert (= result!360356 result!360334))

(assert (=> d!2359666 t!389729))

(declare-fun b_and!353275 () Bool)

(declare-fun tp!2355811 () Bool)

(assert (=> b!7908131 (= tp!2355811 (and (=> t!389729 result!360356) b_and!353275))))

(declare-fun b_free!135065 () Bool)

(declare-fun b_next!135855 () Bool)

(assert (=> b!7908131 (= b_free!135065 (not b_next!135855))))

(declare-fun t!389731 () Bool)

(declare-fun tb!263137 () Bool)

(assert (=> (and b!7908131 (= (toChars!11552 (transformation!8636 (h!80754 (t!389715 rulesArg!141)))) (toChars!11552 (transformation!8636 (rule!11936 (_1!38463 lt!2685626))))) t!389731) tb!263137))

(declare-fun result!360358 () Bool)

(assert (= result!360358 result!360330))

(assert (=> d!2359656 t!389731))

(declare-fun tp!2355810 () Bool)

(declare-fun b_and!353277 () Bool)

(assert (=> b!7908131 (= tp!2355810 (and (=> t!389731 result!360358) b_and!353277))))

(declare-fun e!4668097 () Bool)

(assert (=> b!7908131 (= e!4668097 (and tp!2355811 tp!2355810))))

(declare-fun e!4668095 () Bool)

(declare-fun b!7908130 () Bool)

(declare-fun tp!2355812 () Bool)

(assert (=> b!7908130 (= e!4668095 (and tp!2355812 (inv!95318 (tag!9500 (h!80754 (t!389715 rulesArg!141)))) (inv!95320 (transformation!8636 (h!80754 (t!389715 rulesArg!141)))) e!4668097))))

(declare-fun b!7908129 () Bool)

(declare-fun e!4668094 () Bool)

(declare-fun tp!2355813 () Bool)

(assert (=> b!7908129 (= e!4668094 (and e!4668095 tp!2355813))))

(assert (=> b!7907760 (= tp!2355746 e!4668094)))

(assert (= b!7908130 b!7908131))

(assert (= b!7908129 b!7908130))

(assert (= (and b!7907760 ((_ is Cons!74306) (t!389715 rulesArg!141))) b!7908129))

(declare-fun m!8282080 () Bool)

(assert (=> b!7908130 m!8282080))

(declare-fun m!8282082 () Bool)

(assert (=> b!7908130 m!8282082))

(declare-fun b!7908136 () Bool)

(declare-fun e!4668100 () Bool)

(declare-fun tp!2355816 () Bool)

(assert (=> b!7908136 (= e!4668100 (and tp_is_empty!53053 tp!2355816))))

(assert (=> b!7907761 (= tp!2355748 e!4668100)))

(assert (= (and b!7907761 ((_ is Cons!74305) (t!389714 input!1184))) b!7908136))

(check-sat (not d!2359624) (not b!7908120) (not b_lambda!289903) (not b!7908104) b_and!353265 (not tb!263127) (not d!2359634) (not b!7907953) (not b_next!135845) (not b!7908089) (not b!7908024) (not b!7907848) (not d!2359674) (not d!2359672) (not d!2359668) b_and!353277 (not b!7908021) (not b!7907825) (not b!7907830) (not b!7907822) (not b!7908088) (not d!2359632) (not b!7908087) (not b_next!135855) (not b!7907829) (not b!7908027) (not d!2359626) (not b!7907945) (not b!7907959) tp_is_empty!53053 (not d!2359692) b_and!353275 (not tb!263125) (not b!7908094) (not b!7908136) (not d!2359664) (not b!7908086) (not b!7908022) b_and!353267 (not b!7908091) (not b!7908023) (not b!7908025) (not b!7908105) (not b!7907838) (not b!7907946) (not d!2359696) (not d!2359654) (not b!7908119) (not b!7907836) (not b!7908093) (not b_next!135853) (not b!7907849) (not b!7908118) (not b_lambda!289901) (not b!7907824) (not b!7908130) (not b_next!135847) (not bm!733481) (not b!7908129) (not b!7908028) (not b!7907964) (not b!7908020) (not b!7908106) (not bm!733472) (not d!2359656) (not b!7907818) (not b!7908092))
(check-sat (not b_next!135845) b_and!353277 (not b_next!135855) b_and!353275 b_and!353267 b_and!353265 (not b_next!135853) (not b_next!135847))
