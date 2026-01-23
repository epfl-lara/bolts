; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32770 () Bool)

(assert start!32770)

(declare-fun b!304875 () Bool)

(declare-fun b_free!10889 () Bool)

(declare-fun b_next!10889 () Bool)

(assert (=> b!304875 (= b_free!10889 (not b_next!10889))))

(declare-fun tp!108417 () Bool)

(declare-fun b_and!25741 () Bool)

(assert (=> b!304875 (= tp!108417 b_and!25741)))

(declare-fun b_free!10891 () Bool)

(declare-fun b_next!10891 () Bool)

(assert (=> b!304875 (= b_free!10891 (not b_next!10891))))

(declare-fun tp!108415 () Bool)

(declare-fun b_and!25743 () Bool)

(assert (=> b!304875 (= tp!108415 b_and!25743)))

(declare-fun b!304884 () Bool)

(declare-fun b_free!10893 () Bool)

(declare-fun b_next!10893 () Bool)

(assert (=> b!304884 (= b_free!10893 (not b_next!10893))))

(declare-fun tp!108410 () Bool)

(declare-fun b_and!25745 () Bool)

(assert (=> b!304884 (= tp!108410 b_and!25745)))

(declare-fun b_free!10895 () Bool)

(declare-fun b_next!10895 () Bool)

(assert (=> b!304884 (= b_free!10895 (not b_next!10895))))

(declare-fun tp!108408 () Bool)

(declare-fun b_and!25747 () Bool)

(assert (=> b!304884 (= tp!108408 b_and!25747)))

(declare-fun b!304877 () Bool)

(declare-fun b_free!10897 () Bool)

(declare-fun b_next!10897 () Bool)

(assert (=> b!304877 (= b_free!10897 (not b_next!10897))))

(declare-fun tp!108411 () Bool)

(declare-fun b_and!25749 () Bool)

(assert (=> b!304877 (= tp!108411 b_and!25749)))

(declare-fun b_free!10899 () Bool)

(declare-fun b_next!10899 () Bool)

(assert (=> b!304877 (= b_free!10899 (not b_next!10899))))

(declare-fun tp!108409 () Bool)

(declare-fun b_and!25751 () Bool)

(assert (=> b!304877 (= tp!108409 b_and!25751)))

(declare-fun bs!35272 () Bool)

(declare-fun b!304898 () Bool)

(declare-fun b!304897 () Bool)

(assert (= bs!35272 (and b!304898 b!304897)))

(declare-fun lambda!10376 () Int)

(declare-fun lambda!10375 () Int)

(assert (=> bs!35272 (not (= lambda!10376 lambda!10375))))

(declare-fun b!304916 () Bool)

(declare-fun e!189474 () Bool)

(assert (=> b!304916 (= e!189474 true)))

(declare-fun b!304915 () Bool)

(declare-fun e!189473 () Bool)

(assert (=> b!304915 (= e!189473 e!189474)))

(declare-fun b!304914 () Bool)

(declare-fun e!189472 () Bool)

(assert (=> b!304914 (= e!189472 e!189473)))

(assert (=> b!304898 e!189472))

(assert (= b!304915 b!304916))

(assert (= b!304914 b!304915))

(declare-datatypes ((List!4034 0))(
  ( (Nil!4024) (Cons!4024 (h!9421 (_ BitVec 16)) (t!43122 List!4034)) )
))
(declare-datatypes ((TokenValue!795 0))(
  ( (FloatLiteralValue!1590 (text!6010 List!4034)) (TokenValueExt!794 (__x!3077 Int)) (Broken!3975 (value!26320 List!4034)) (Object!804) (End!795) (Def!795) (Underscore!795) (Match!795) (Else!795) (Error!795) (Case!795) (If!795) (Extends!795) (Abstract!795) (Class!795) (Val!795) (DelimiterValue!1590 (del!855 List!4034)) (KeywordValue!801 (value!26321 List!4034)) (CommentValue!1590 (value!26322 List!4034)) (WhitespaceValue!1590 (value!26323 List!4034)) (IndentationValue!795 (value!26324 List!4034)) (String!5054) (Int32!795) (Broken!3976 (value!26325 List!4034)) (Boolean!796) (Unit!5627) (OperatorValue!798 (op!855 List!4034)) (IdentifierValue!1590 (value!26326 List!4034)) (IdentifierValue!1591 (value!26327 List!4034)) (WhitespaceValue!1591 (value!26328 List!4034)) (True!1590) (False!1590) (Broken!3977 (value!26329 List!4034)) (Broken!3978 (value!26330 List!4034)) (True!1591) (RightBrace!795) (RightBracket!795) (Colon!795) (Null!795) (Comma!795) (LeftBracket!795) (False!1591) (LeftBrace!795) (ImaginaryLiteralValue!795 (text!6011 List!4034)) (StringLiteralValue!2385 (value!26331 List!4034)) (EOFValue!795 (value!26332 List!4034)) (IdentValue!795 (value!26333 List!4034)) (DelimiterValue!1591 (value!26334 List!4034)) (DedentValue!795 (value!26335 List!4034)) (NewLineValue!795 (value!26336 List!4034)) (IntegerValue!2385 (value!26337 (_ BitVec 32)) (text!6012 List!4034)) (IntegerValue!2386 (value!26338 Int) (text!6013 List!4034)) (Times!795) (Or!795) (Equal!795) (Minus!795) (Broken!3979 (value!26339 List!4034)) (And!795) (Div!795) (LessEqual!795) (Mod!795) (Concat!1792) (Not!795) (Plus!795) (SpaceValue!795 (value!26340 List!4034)) (IntegerValue!2387 (value!26341 Int) (text!6014 List!4034)) (StringLiteralValue!2386 (text!6015 List!4034)) (FloatLiteralValue!1591 (text!6016 List!4034)) (BytesLiteralValue!795 (value!26342 List!4034)) (CommentValue!1591 (value!26343 List!4034)) (StringLiteralValue!2387 (value!26344 List!4034)) (ErrorTokenValue!795 (msg!856 List!4034)) )
))
(declare-datatypes ((C!2916 0))(
  ( (C!2917 (val!1344 Int)) )
))
(declare-datatypes ((List!4035 0))(
  ( (Nil!4025) (Cons!4025 (h!9422 C!2916) (t!43123 List!4035)) )
))
(declare-datatypes ((IArray!2737 0))(
  ( (IArray!2738 (innerList!1426 List!4035)) )
))
(declare-datatypes ((Conc!1368 0))(
  ( (Node!1368 (left!3341 Conc!1368) (right!3671 Conc!1368) (csize!2966 Int) (cheight!1579 Int)) (Leaf!2094 (xs!3971 IArray!2737) (csize!2967 Int)) (Empty!1368) )
))
(declare-datatypes ((BalanceConc!2744 0))(
  ( (BalanceConc!2745 (c!57948 Conc!1368)) )
))
(declare-datatypes ((TokenValueInjection!1362 0))(
  ( (TokenValueInjection!1363 (toValue!1532 Int) (toChars!1391 Int)) )
))
(declare-datatypes ((String!5055 0))(
  ( (String!5056 (value!26345 String)) )
))
(declare-datatypes ((Regex!997 0))(
  ( (ElementMatch!997 (c!57949 C!2916)) (Concat!1793 (regOne!2506 Regex!997) (regTwo!2506 Regex!997)) (EmptyExpr!997) (Star!997 (reg!1326 Regex!997)) (EmptyLang!997) (Union!997 (regOne!2507 Regex!997) (regTwo!2507 Regex!997)) )
))
(declare-datatypes ((Rule!1346 0))(
  ( (Rule!1347 (regex!773 Regex!997) (tag!991 String!5055) (isSeparator!773 Bool) (transformation!773 TokenValueInjection!1362)) )
))
(declare-datatypes ((List!4036 0))(
  ( (Nil!4026) (Cons!4026 (h!9423 Rule!1346) (t!43124 List!4036)) )
))
(declare-fun rules!1920 () List!4036)

(get-info :version)

(assert (= (and b!304898 ((_ is Cons!4026) rules!1920)) b!304914))

(declare-fun order!3249 () Int)

(declare-fun order!3251 () Int)

(declare-fun dynLambda!2187 (Int Int) Int)

(declare-fun dynLambda!2188 (Int Int) Int)

(assert (=> b!304916 (< (dynLambda!2187 order!3249 (toValue!1532 (transformation!773 (h!9423 rules!1920)))) (dynLambda!2188 order!3251 lambda!10376))))

(declare-fun order!3253 () Int)

(declare-fun dynLambda!2189 (Int Int) Int)

(assert (=> b!304916 (< (dynLambda!2189 order!3253 (toChars!1391 (transformation!773 (h!9423 rules!1920)))) (dynLambda!2188 order!3251 lambda!10376))))

(assert (=> b!304898 true))

(declare-fun b!304872 () Bool)

(declare-fun res!138463 () Bool)

(declare-fun e!189441 () Bool)

(assert (=> b!304872 (=> (not res!138463) (not e!189441))))

(declare-datatypes ((Token!1290 0))(
  ( (Token!1291 (value!26346 TokenValue!795) (rule!1386 Rule!1346) (size!3223 Int) (originalCharacters!816 List!4035)) )
))
(declare-fun separatorToken!170 () Token!1290)

(declare-datatypes ((LexerInterface!659 0))(
  ( (LexerInterfaceExt!656 (__x!3078 Int)) (Lexer!657) )
))
(declare-fun thiss!17480 () LexerInterface!659)

(declare-fun rulesProduceIndividualToken!408 (LexerInterface!659 List!4036 Token!1290) Bool)

(assert (=> b!304872 (= res!138463 (rulesProduceIndividualToken!408 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!304873 () Bool)

(declare-fun e!189443 () Bool)

(declare-fun e!189463 () Bool)

(assert (=> b!304873 (= e!189443 e!189463)))

(declare-fun res!138454 () Bool)

(assert (=> b!304873 (=> res!138454 e!189463)))

(declare-fun lt!129772 () Bool)

(assert (=> b!304873 (= res!138454 (not lt!129772))))

(declare-fun e!189458 () Bool)

(assert (=> b!304873 e!189458))

(declare-fun res!138461 () Bool)

(assert (=> b!304873 (=> (not res!138461) (not e!189458))))

(declare-datatypes ((tuple2!4634 0))(
  ( (tuple2!4635 (_1!2533 Token!1290) (_2!2533 List!4035)) )
))
(declare-fun lt!129770 () tuple2!4634)

(declare-datatypes ((List!4037 0))(
  ( (Nil!4027) (Cons!4027 (h!9424 Token!1290) (t!43125 List!4037)) )
))
(declare-fun tokens!465 () List!4037)

(assert (=> b!304873 (= res!138461 (= (_1!2533 lt!129770) (h!9424 tokens!465)))))

(declare-datatypes ((Option!912 0))(
  ( (None!911) (Some!911 (v!14904 tuple2!4634)) )
))
(declare-fun lt!129765 () Option!912)

(declare-fun get!1372 (Option!912) tuple2!4634)

(assert (=> b!304873 (= lt!129770 (get!1372 lt!129765))))

(declare-fun isDefined!751 (Option!912) Bool)

(assert (=> b!304873 (isDefined!751 lt!129765)))

(declare-fun lt!129766 () List!4035)

(declare-fun maxPrefix!375 (LexerInterface!659 List!4036 List!4035) Option!912)

(assert (=> b!304873 (= lt!129765 (maxPrefix!375 thiss!17480 rules!1920 lt!129766))))

(declare-fun b!304874 () Bool)

(declare-fun res!138458 () Bool)

(assert (=> b!304874 (=> (not res!138458) (not e!189458))))

(declare-fun isEmpty!2727 (List!4035) Bool)

(assert (=> b!304874 (= res!138458 (isEmpty!2727 (_2!2533 lt!129770)))))

(declare-fun e!189450 () Bool)

(assert (=> b!304875 (= e!189450 (and tp!108417 tp!108415))))

(declare-fun lt!129777 () List!4035)

(declare-fun e!189454 () Bool)

(declare-fun b!304876 () Bool)

(declare-fun lt!129783 () List!4035)

(declare-fun ++!1090 (List!4035 List!4035) List!4035)

(assert (=> b!304876 (= e!189454 (not (= lt!129777 (++!1090 lt!129766 lt!129783))))))

(declare-fun e!189439 () Bool)

(assert (=> b!304877 (= e!189439 (and tp!108411 tp!108409))))

(declare-fun tp!108413 () Bool)

(declare-fun e!189462 () Bool)

(declare-fun b!304878 () Bool)

(declare-fun inv!4976 (String!5055) Bool)

(declare-fun inv!4979 (TokenValueInjection!1362) Bool)

(assert (=> b!304878 (= e!189462 (and tp!108413 (inv!4976 (tag!991 (h!9423 rules!1920))) (inv!4979 (transformation!773 (h!9423 rules!1920))) e!189450))))

(declare-fun b!304879 () Bool)

(declare-fun e!189452 () Bool)

(declare-fun lt!129785 () List!4035)

(assert (=> b!304879 (= e!189452 (= lt!129785 lt!129777))))

(declare-fun b!304880 () Bool)

(declare-fun e!189440 () Bool)

(declare-fun tp!108414 () Bool)

(assert (=> b!304880 (= e!189440 (and e!189462 tp!108414))))

(declare-fun b!304881 () Bool)

(declare-fun res!138441 () Bool)

(assert (=> b!304881 (=> (not res!138441) (not e!189441))))

(assert (=> b!304881 (= res!138441 ((_ is Cons!4027) tokens!465))))

(declare-fun b!304882 () Bool)

(declare-fun res!138449 () Bool)

(declare-fun e!189448 () Bool)

(assert (=> b!304882 (=> res!138449 e!189448)))

(assert (=> b!304882 (= res!138449 (not (rulesProduceIndividualToken!408 thiss!17480 rules!1920 (h!9424 tokens!465))))))

(declare-fun res!138453 () Bool)

(declare-fun e!189456 () Bool)

(assert (=> start!32770 (=> (not res!138453) (not e!189456))))

(assert (=> start!32770 (= res!138453 ((_ is Lexer!657) thiss!17480))))

(assert (=> start!32770 e!189456))

(assert (=> start!32770 true))

(assert (=> start!32770 e!189440))

(declare-fun e!189449 () Bool)

(declare-fun inv!4980 (Token!1290) Bool)

(assert (=> start!32770 (and (inv!4980 separatorToken!170) e!189449)))

(declare-fun e!189465 () Bool)

(assert (=> start!32770 e!189465))

(declare-fun e!189451 () Bool)

(declare-fun tp!108405 () Bool)

(declare-fun b!304883 () Bool)

(assert (=> b!304883 (= e!189465 (and (inv!4980 (h!9424 tokens!465)) e!189451 tp!108405))))

(declare-fun e!189464 () Bool)

(assert (=> b!304884 (= e!189464 (and tp!108410 tp!108408))))

(declare-fun b!304885 () Bool)

(declare-fun e!189446 () Bool)

(assert (=> b!304885 (= e!189446 e!189448)))

(declare-fun res!138460 () Bool)

(assert (=> b!304885 (=> res!138460 e!189448)))

(declare-fun lt!129780 () List!4035)

(declare-fun lt!129775 () List!4035)

(assert (=> b!304885 (= res!138460 (or (not (= lt!129780 lt!129775)) (not (= lt!129775 lt!129766)) (not (= lt!129780 lt!129766))))))

(declare-fun printList!333 (LexerInterface!659 List!4037) List!4035)

(assert (=> b!304885 (= lt!129775 (printList!333 thiss!17480 (Cons!4027 (h!9424 tokens!465) Nil!4027)))))

(declare-fun lt!129786 () BalanceConc!2744)

(declare-fun list!1697 (BalanceConc!2744) List!4035)

(assert (=> b!304885 (= lt!129780 (list!1697 lt!129786))))

(declare-datatypes ((IArray!2739 0))(
  ( (IArray!2740 (innerList!1427 List!4037)) )
))
(declare-datatypes ((Conc!1369 0))(
  ( (Node!1369 (left!3342 Conc!1369) (right!3672 Conc!1369) (csize!2968 Int) (cheight!1580 Int)) (Leaf!2095 (xs!3972 IArray!2739) (csize!2969 Int)) (Empty!1369) )
))
(declare-datatypes ((BalanceConc!2746 0))(
  ( (BalanceConc!2747 (c!57950 Conc!1369)) )
))
(declare-fun lt!129781 () BalanceConc!2746)

(declare-fun printTailRec!345 (LexerInterface!659 BalanceConc!2746 Int BalanceConc!2744) BalanceConc!2744)

(assert (=> b!304885 (= lt!129786 (printTailRec!345 thiss!17480 lt!129781 0 (BalanceConc!2745 Empty!1368)))))

(declare-fun print!384 (LexerInterface!659 BalanceConc!2746) BalanceConc!2744)

(assert (=> b!304885 (= lt!129786 (print!384 thiss!17480 lt!129781))))

(declare-fun singletonSeq!319 (Token!1290) BalanceConc!2746)

(assert (=> b!304885 (= lt!129781 (singletonSeq!319 (h!9424 tokens!465)))))

(declare-fun b!304886 () Bool)

(declare-fun e!189459 () Bool)

(declare-fun e!189445 () Bool)

(assert (=> b!304886 (= e!189459 e!189445)))

(declare-fun res!138451 () Bool)

(assert (=> b!304886 (=> (not res!138451) (not e!189445))))

(declare-fun lt!129768 () Option!912)

(assert (=> b!304886 (= res!138451 (isDefined!751 lt!129768))))

(assert (=> b!304886 (= lt!129768 (maxPrefix!375 thiss!17480 rules!1920 lt!129777))))

(declare-fun b!304887 () Bool)

(declare-fun res!138446 () Bool)

(assert (=> b!304887 (=> (not res!138446) (not e!189456))))

(declare-fun rulesInvariant!625 (LexerInterface!659 List!4036) Bool)

(assert (=> b!304887 (= res!138446 (rulesInvariant!625 thiss!17480 rules!1920))))

(declare-fun b!304888 () Bool)

(assert (=> b!304888 (= e!189463 e!189452)))

(declare-fun res!138443 () Bool)

(assert (=> b!304888 (=> res!138443 e!189452)))

(declare-fun isPrefix!433 (List!4035 List!4035) Bool)

(assert (=> b!304888 (= res!138443 (not (isPrefix!433 lt!129766 lt!129777)))))

(declare-fun lt!129778 () Option!912)

(assert (=> b!304888 (= lt!129778 (maxPrefix!375 thiss!17480 rules!1920 lt!129777))))

(assert (=> b!304888 (isPrefix!433 lt!129766 lt!129785)))

(declare-datatypes ((Unit!5628 0))(
  ( (Unit!5629) )
))
(declare-fun lt!129771 () Unit!5628)

(declare-fun lt!129773 () List!4035)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!324 (List!4035 List!4035) Unit!5628)

(assert (=> b!304888 (= lt!129771 (lemmaConcatTwoListThenFirstIsPrefix!324 lt!129766 lt!129773))))

(assert (=> b!304888 e!189459))

(declare-fun res!138442 () Bool)

(assert (=> b!304888 (=> res!138442 e!189459)))

(declare-fun isEmpty!2728 (List!4037) Bool)

(assert (=> b!304888 (= res!138442 (isEmpty!2728 tokens!465))))

(declare-fun lt!129769 () Unit!5628)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!180 (LexerInterface!659 List!4036 List!4037 Token!1290) Unit!5628)

(assert (=> b!304888 (= lt!129769 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!180 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!304889 () Bool)

(declare-fun res!138448 () Bool)

(assert (=> b!304889 (=> (not res!138448) (not e!189441))))

(assert (=> b!304889 (= res!138448 (isSeparator!773 (rule!1386 separatorToken!170)))))

(declare-fun b!304890 () Bool)

(declare-fun e!189460 () Bool)

(assert (=> b!304890 (= e!189460 e!189446)))

(declare-fun res!138456 () Bool)

(assert (=> b!304890 (=> res!138456 e!189446)))

(assert (=> b!304890 (= res!138456 e!189454)))

(declare-fun res!138455 () Bool)

(assert (=> b!304890 (=> (not res!138455) (not e!189454))))

(assert (=> b!304890 (= res!138455 (not lt!129772))))

(assert (=> b!304890 (= lt!129772 (= lt!129777 lt!129785))))

(declare-fun b!304891 () Bool)

(declare-fun res!138457 () Bool)

(assert (=> b!304891 (=> res!138457 e!189448)))

(declare-fun isEmpty!2729 (BalanceConc!2746) Bool)

(declare-datatypes ((tuple2!4636 0))(
  ( (tuple2!4637 (_1!2534 BalanceConc!2746) (_2!2534 BalanceConc!2744)) )
))
(declare-fun lex!451 (LexerInterface!659 List!4036 BalanceConc!2744) tuple2!4636)

(declare-fun seqFromList!911 (List!4035) BalanceConc!2744)

(assert (=> b!304891 (= res!138457 (isEmpty!2729 (_1!2534 (lex!451 thiss!17480 rules!1920 (seqFromList!911 lt!129766)))))))

(declare-fun b!304892 () Bool)

(declare-fun e!189447 () Bool)

(assert (=> b!304892 (= e!189447 (not e!189460))))

(declare-fun res!138440 () Bool)

(assert (=> b!304892 (=> res!138440 e!189460)))

(declare-fun printWithSeparatorTokenWhenNeededRec!332 (LexerInterface!659 List!4036 BalanceConc!2746 Token!1290 Int) BalanceConc!2744)

(declare-fun seqFromList!912 (List!4037) BalanceConc!2746)

(assert (=> b!304892 (= res!138440 (not (= lt!129783 (list!1697 (printWithSeparatorTokenWhenNeededRec!332 thiss!17480 rules!1920 (seqFromList!912 (t!43125 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!129774 () List!4035)

(assert (=> b!304892 (= lt!129774 lt!129785)))

(assert (=> b!304892 (= lt!129785 (++!1090 lt!129766 lt!129773))))

(declare-fun lt!129776 () List!4035)

(assert (=> b!304892 (= lt!129774 (++!1090 (++!1090 lt!129766 lt!129776) lt!129783))))

(declare-fun lt!129784 () Unit!5628)

(declare-fun lemmaConcatAssociativity!480 (List!4035 List!4035 List!4035) Unit!5628)

(assert (=> b!304892 (= lt!129784 (lemmaConcatAssociativity!480 lt!129766 lt!129776 lt!129783))))

(declare-fun charsOf!416 (Token!1290) BalanceConc!2744)

(assert (=> b!304892 (= lt!129766 (list!1697 (charsOf!416 (h!9424 tokens!465))))))

(assert (=> b!304892 (= lt!129773 (++!1090 lt!129776 lt!129783))))

(declare-fun printWithSeparatorTokenWhenNeededList!340 (LexerInterface!659 List!4036 List!4037 Token!1290) List!4035)

(assert (=> b!304892 (= lt!129783 (printWithSeparatorTokenWhenNeededList!340 thiss!17480 rules!1920 (t!43125 tokens!465) separatorToken!170))))

(assert (=> b!304892 (= lt!129776 (list!1697 (charsOf!416 separatorToken!170)))))

(declare-fun b!304893 () Bool)

(assert (=> b!304893 (= e!189441 e!189447)))

(declare-fun res!138447 () Bool)

(assert (=> b!304893 (=> (not res!138447) (not e!189447))))

(declare-fun lt!129767 () List!4035)

(assert (=> b!304893 (= res!138447 (= lt!129777 lt!129767))))

(declare-fun lt!129779 () BalanceConc!2746)

(assert (=> b!304893 (= lt!129767 (list!1697 (printWithSeparatorTokenWhenNeededRec!332 thiss!17480 rules!1920 lt!129779 separatorToken!170 0)))))

(assert (=> b!304893 (= lt!129777 (printWithSeparatorTokenWhenNeededList!340 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!108406 () Bool)

(declare-fun e!189444 () Bool)

(declare-fun b!304894 () Bool)

(declare-fun inv!21 (TokenValue!795) Bool)

(assert (=> b!304894 (= e!189449 (and (inv!21 (value!26346 separatorToken!170)) e!189444 tp!108406))))

(declare-fun b!304895 () Bool)

(declare-fun res!138459 () Bool)

(assert (=> b!304895 (=> (not res!138459) (not e!189447))))

(assert (=> b!304895 (= res!138459 (= (list!1697 (seqFromList!911 lt!129777)) lt!129767))))

(declare-fun b!304896 () Bool)

(declare-fun res!138450 () Bool)

(assert (=> b!304896 (=> (not res!138450) (not e!189456))))

(declare-fun isEmpty!2730 (List!4036) Bool)

(assert (=> b!304896 (= res!138450 (not (isEmpty!2730 rules!1920)))))

(declare-fun res!138452 () Bool)

(assert (=> b!304897 (=> (not res!138452) (not e!189441))))

(declare-fun forall!1060 (List!4037 Int) Bool)

(assert (=> b!304897 (= res!138452 (forall!1060 tokens!465 lambda!10375))))

(assert (=> b!304898 (= e!189448 e!189443)))

(declare-fun res!138445 () Bool)

(assert (=> b!304898 (=> res!138445 e!189443)))

(declare-datatypes ((tuple2!4638 0))(
  ( (tuple2!4639 (_1!2535 Token!1290) (_2!2535 BalanceConc!2744)) )
))
(declare-datatypes ((Option!913 0))(
  ( (None!912) (Some!912 (v!14905 tuple2!4638)) )
))
(declare-fun isDefined!752 (Option!913) Bool)

(declare-fun maxPrefixZipperSequence!338 (LexerInterface!659 List!4036 BalanceConc!2744) Option!913)

(assert (=> b!304898 (= res!138445 (not (isDefined!752 (maxPrefixZipperSequence!338 thiss!17480 rules!1920 (seqFromList!911 (originalCharacters!816 (h!9424 tokens!465)))))))))

(declare-fun lt!129782 () Unit!5628)

(declare-fun forallContained!326 (List!4037 Int Token!1290) Unit!5628)

(assert (=> b!304898 (= lt!129782 (forallContained!326 tokens!465 lambda!10376 (h!9424 tokens!465)))))

(assert (=> b!304898 (= lt!129766 (originalCharacters!816 (h!9424 tokens!465)))))

(declare-fun b!304899 () Bool)

(declare-fun e!189453 () Bool)

(declare-fun tp!108416 () Bool)

(assert (=> b!304899 (= e!189451 (and (inv!21 (value!26346 (h!9424 tokens!465))) e!189453 tp!108416))))

(declare-fun b!304900 () Bool)

(declare-fun res!138444 () Bool)

(assert (=> b!304900 (=> (not res!138444) (not e!189441))))

(declare-fun sepAndNonSepRulesDisjointChars!362 (List!4036 List!4036) Bool)

(assert (=> b!304900 (= res!138444 (sepAndNonSepRulesDisjointChars!362 rules!1920 rules!1920))))

(declare-fun b!304901 () Bool)

(declare-fun matchR!315 (Regex!997 List!4035) Bool)

(assert (=> b!304901 (= e!189458 (matchR!315 (regex!773 (rule!1386 (h!9424 tokens!465))) lt!129766))))

(declare-fun b!304902 () Bool)

(assert (=> b!304902 (= e!189456 e!189441)))

(declare-fun res!138462 () Bool)

(assert (=> b!304902 (=> (not res!138462) (not e!189441))))

(declare-fun rulesProduceEachTokenIndividually!451 (LexerInterface!659 List!4036 BalanceConc!2746) Bool)

(assert (=> b!304902 (= res!138462 (rulesProduceEachTokenIndividually!451 thiss!17480 rules!1920 lt!129779))))

(assert (=> b!304902 (= lt!129779 (seqFromList!912 tokens!465))))

(declare-fun b!304903 () Bool)

(declare-fun head!954 (List!4037) Token!1290)

(assert (=> b!304903 (= e!189445 (= (_1!2533 (get!1372 lt!129768)) (head!954 tokens!465)))))

(declare-fun tp!108412 () Bool)

(declare-fun b!304904 () Bool)

(assert (=> b!304904 (= e!189453 (and tp!108412 (inv!4976 (tag!991 (rule!1386 (h!9424 tokens!465)))) (inv!4979 (transformation!773 (rule!1386 (h!9424 tokens!465)))) e!189439))))

(declare-fun b!304905 () Bool)

(declare-fun tp!108407 () Bool)

(assert (=> b!304905 (= e!189444 (and tp!108407 (inv!4976 (tag!991 (rule!1386 separatorToken!170))) (inv!4979 (transformation!773 (rule!1386 separatorToken!170))) e!189464))))

(assert (= (and start!32770 res!138453) b!304896))

(assert (= (and b!304896 res!138450) b!304887))

(assert (= (and b!304887 res!138446) b!304902))

(assert (= (and b!304902 res!138462) b!304872))

(assert (= (and b!304872 res!138463) b!304889))

(assert (= (and b!304889 res!138448) b!304897))

(assert (= (and b!304897 res!138452) b!304900))

(assert (= (and b!304900 res!138444) b!304881))

(assert (= (and b!304881 res!138441) b!304893))

(assert (= (and b!304893 res!138447) b!304895))

(assert (= (and b!304895 res!138459) b!304892))

(assert (= (and b!304892 (not res!138440)) b!304890))

(assert (= (and b!304890 res!138455) b!304876))

(assert (= (and b!304890 (not res!138456)) b!304885))

(assert (= (and b!304885 (not res!138460)) b!304882))

(assert (= (and b!304882 (not res!138449)) b!304891))

(assert (= (and b!304891 (not res!138457)) b!304898))

(assert (= (and b!304898 (not res!138445)) b!304873))

(assert (= (and b!304873 res!138461) b!304874))

(assert (= (and b!304874 res!138458) b!304901))

(assert (= (and b!304873 (not res!138454)) b!304888))

(assert (= (and b!304888 (not res!138442)) b!304886))

(assert (= (and b!304886 res!138451) b!304903))

(assert (= (and b!304888 (not res!138443)) b!304879))

(assert (= b!304878 b!304875))

(assert (= b!304880 b!304878))

(assert (= (and start!32770 ((_ is Cons!4026) rules!1920)) b!304880))

(assert (= b!304905 b!304884))

(assert (= b!304894 b!304905))

(assert (= start!32770 b!304894))

(assert (= b!304904 b!304877))

(assert (= b!304899 b!304904))

(assert (= b!304883 b!304899))

(assert (= (and start!32770 ((_ is Cons!4027) tokens!465)) b!304883))

(declare-fun m!406757 () Bool)

(assert (=> b!304897 m!406757))

(declare-fun m!406759 () Bool)

(assert (=> b!304898 m!406759))

(assert (=> b!304898 m!406759))

(declare-fun m!406761 () Bool)

(assert (=> b!304898 m!406761))

(assert (=> b!304898 m!406761))

(declare-fun m!406763 () Bool)

(assert (=> b!304898 m!406763))

(declare-fun m!406765 () Bool)

(assert (=> b!304898 m!406765))

(declare-fun m!406767 () Bool)

(assert (=> start!32770 m!406767))

(declare-fun m!406769 () Bool)

(assert (=> b!304885 m!406769))

(declare-fun m!406771 () Bool)

(assert (=> b!304885 m!406771))

(declare-fun m!406773 () Bool)

(assert (=> b!304885 m!406773))

(declare-fun m!406775 () Bool)

(assert (=> b!304885 m!406775))

(declare-fun m!406777 () Bool)

(assert (=> b!304885 m!406777))

(declare-fun m!406779 () Bool)

(assert (=> b!304892 m!406779))

(declare-fun m!406781 () Bool)

(assert (=> b!304892 m!406781))

(declare-fun m!406783 () Bool)

(assert (=> b!304892 m!406783))

(assert (=> b!304892 m!406781))

(declare-fun m!406785 () Bool)

(assert (=> b!304892 m!406785))

(declare-fun m!406787 () Bool)

(assert (=> b!304892 m!406787))

(declare-fun m!406789 () Bool)

(assert (=> b!304892 m!406789))

(declare-fun m!406791 () Bool)

(assert (=> b!304892 m!406791))

(declare-fun m!406793 () Bool)

(assert (=> b!304892 m!406793))

(declare-fun m!406795 () Bool)

(assert (=> b!304892 m!406795))

(declare-fun m!406797 () Bool)

(assert (=> b!304892 m!406797))

(declare-fun m!406799 () Bool)

(assert (=> b!304892 m!406799))

(assert (=> b!304892 m!406785))

(assert (=> b!304892 m!406791))

(assert (=> b!304892 m!406795))

(declare-fun m!406801 () Bool)

(assert (=> b!304892 m!406801))

(assert (=> b!304892 m!406793))

(declare-fun m!406803 () Bool)

(assert (=> b!304892 m!406803))

(declare-fun m!406805 () Bool)

(assert (=> b!304905 m!406805))

(declare-fun m!406807 () Bool)

(assert (=> b!304905 m!406807))

(declare-fun m!406809 () Bool)

(assert (=> b!304874 m!406809))

(declare-fun m!406811 () Bool)

(assert (=> b!304886 m!406811))

(declare-fun m!406813 () Bool)

(assert (=> b!304886 m!406813))

(declare-fun m!406815 () Bool)

(assert (=> b!304904 m!406815))

(declare-fun m!406817 () Bool)

(assert (=> b!304904 m!406817))

(declare-fun m!406819 () Bool)

(assert (=> b!304887 m!406819))

(declare-fun m!406821 () Bool)

(assert (=> b!304899 m!406821))

(declare-fun m!406823 () Bool)

(assert (=> b!304873 m!406823))

(declare-fun m!406825 () Bool)

(assert (=> b!304873 m!406825))

(declare-fun m!406827 () Bool)

(assert (=> b!304873 m!406827))

(declare-fun m!406829 () Bool)

(assert (=> b!304872 m!406829))

(declare-fun m!406831 () Bool)

(assert (=> b!304891 m!406831))

(assert (=> b!304891 m!406831))

(declare-fun m!406833 () Bool)

(assert (=> b!304891 m!406833))

(declare-fun m!406835 () Bool)

(assert (=> b!304891 m!406835))

(declare-fun m!406837 () Bool)

(assert (=> b!304876 m!406837))

(declare-fun m!406839 () Bool)

(assert (=> b!304882 m!406839))

(declare-fun m!406841 () Bool)

(assert (=> b!304903 m!406841))

(declare-fun m!406843 () Bool)

(assert (=> b!304903 m!406843))

(declare-fun m!406845 () Bool)

(assert (=> b!304902 m!406845))

(declare-fun m!406847 () Bool)

(assert (=> b!304902 m!406847))

(declare-fun m!406849 () Bool)

(assert (=> b!304893 m!406849))

(assert (=> b!304893 m!406849))

(declare-fun m!406851 () Bool)

(assert (=> b!304893 m!406851))

(declare-fun m!406853 () Bool)

(assert (=> b!304893 m!406853))

(declare-fun m!406855 () Bool)

(assert (=> b!304894 m!406855))

(declare-fun m!406857 () Bool)

(assert (=> b!304883 m!406857))

(declare-fun m!406859 () Bool)

(assert (=> b!304895 m!406859))

(assert (=> b!304895 m!406859))

(declare-fun m!406861 () Bool)

(assert (=> b!304895 m!406861))

(declare-fun m!406863 () Bool)

(assert (=> b!304901 m!406863))

(declare-fun m!406865 () Bool)

(assert (=> b!304888 m!406865))

(assert (=> b!304888 m!406813))

(declare-fun m!406867 () Bool)

(assert (=> b!304888 m!406867))

(declare-fun m!406869 () Bool)

(assert (=> b!304888 m!406869))

(declare-fun m!406871 () Bool)

(assert (=> b!304888 m!406871))

(declare-fun m!406873 () Bool)

(assert (=> b!304888 m!406873))

(declare-fun m!406875 () Bool)

(assert (=> b!304900 m!406875))

(declare-fun m!406877 () Bool)

(assert (=> b!304878 m!406877))

(declare-fun m!406879 () Bool)

(assert (=> b!304878 m!406879))

(declare-fun m!406881 () Bool)

(assert (=> b!304896 m!406881))

(check-sat (not b!304880) (not b!304902) (not b!304874) (not b!304891) b_and!25745 (not b!304895) (not b!304898) (not b!304901) (not b!304900) (not b!304873) (not start!32770) (not b!304883) (not b!304888) (not b!304905) (not b_next!10889) (not b!304892) b_and!25747 (not b!304914) (not b_next!10897) b_and!25743 (not b!304897) (not b!304899) (not b!304904) (not b!304886) (not b_next!10891) b_and!25749 (not b!304872) (not b!304887) (not b!304882) b_and!25741 (not b!304893) (not b!304885) b_and!25751 (not b!304876) (not b!304903) (not b_next!10895) (not b_next!10899) (not b_next!10893) (not b!304894) (not b!304896) (not b!304878))
(check-sat (not b_next!10889) b_and!25747 b_and!25741 b_and!25745 b_and!25751 (not b_next!10895) (not b_next!10897) b_and!25743 (not b_next!10891) b_and!25749 (not b_next!10893) (not b_next!10899))
