; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!172768 () Bool)

(assert start!172768)

(declare-fun b!1751935 () Bool)

(declare-fun b_free!48351 () Bool)

(declare-fun b_next!49055 () Bool)

(assert (=> b!1751935 (= b_free!48351 (not b_next!49055))))

(declare-fun tp!498255 () Bool)

(declare-fun b_and!131133 () Bool)

(assert (=> b!1751935 (= tp!498255 b_and!131133)))

(declare-fun b_free!48353 () Bool)

(declare-fun b_next!49057 () Bool)

(assert (=> b!1751935 (= b_free!48353 (not b_next!49057))))

(declare-fun tp!498256 () Bool)

(declare-fun b_and!131135 () Bool)

(assert (=> b!1751935 (= tp!498256 b_and!131135)))

(declare-fun b!1751931 () Bool)

(declare-fun b_free!48355 () Bool)

(declare-fun b_next!49059 () Bool)

(assert (=> b!1751931 (= b_free!48355 (not b_next!49059))))

(declare-fun tp!498252 () Bool)

(declare-fun b_and!131137 () Bool)

(assert (=> b!1751931 (= tp!498252 b_and!131137)))

(declare-fun b_free!48357 () Bool)

(declare-fun b_next!49061 () Bool)

(assert (=> b!1751931 (= b_free!48357 (not b_next!49061))))

(declare-fun tp!498251 () Bool)

(declare-fun b_and!131139 () Bool)

(assert (=> b!1751931 (= tp!498251 b_and!131139)))

(declare-fun b!1751925 () Bool)

(declare-fun b_free!48359 () Bool)

(declare-fun b_next!49063 () Bool)

(assert (=> b!1751925 (= b_free!48359 (not b_next!49063))))

(declare-fun tp!498261 () Bool)

(declare-fun b_and!131141 () Bool)

(assert (=> b!1751925 (= tp!498261 b_and!131141)))

(declare-fun b_free!48361 () Bool)

(declare-fun b_next!49065 () Bool)

(assert (=> b!1751925 (= b_free!48361 (not b_next!49065))))

(declare-fun tp!498259 () Bool)

(declare-fun b_and!131143 () Bool)

(assert (=> b!1751925 (= tp!498259 b_and!131143)))

(declare-fun res!788067 () Bool)

(declare-fun e!1121398 () Bool)

(assert (=> start!172768 (=> (not res!788067) (not e!1121398))))

(declare-datatypes ((LexerInterface!3071 0))(
  ( (LexerInterfaceExt!3068 (__x!12366 Int)) (Lexer!3069) )
))
(declare-fun thiss!24550 () LexerInterface!3071)

(assert (=> start!172768 (= res!788067 (is-Lexer!3069 thiss!24550))))

(assert (=> start!172768 e!1121398))

(assert (=> start!172768 true))

(declare-fun e!1121389 () Bool)

(assert (=> start!172768 e!1121389))

(declare-fun e!1121391 () Bool)

(assert (=> start!172768 e!1121391))

(declare-datatypes ((List!19345 0))(
  ( (Nil!19275) (Cons!19275 (h!24676 (_ BitVec 16)) (t!163036 List!19345)) )
))
(declare-datatypes ((TokenValue!3532 0))(
  ( (FloatLiteralValue!7064 (text!25169 List!19345)) (TokenValueExt!3531 (__x!12367 Int)) (Broken!17660 (value!107745 List!19345)) (Object!3601) (End!3532) (Def!3532) (Underscore!3532) (Match!3532) (Else!3532) (Error!3532) (Case!3532) (If!3532) (Extends!3532) (Abstract!3532) (Class!3532) (Val!3532) (DelimiterValue!7064 (del!3592 List!19345)) (KeywordValue!3538 (value!107746 List!19345)) (CommentValue!7064 (value!107747 List!19345)) (WhitespaceValue!7064 (value!107748 List!19345)) (IndentationValue!3532 (value!107749 List!19345)) (String!21993) (Int32!3532) (Broken!17661 (value!107750 List!19345)) (Boolean!3533) (Unit!33433) (OperatorValue!3535 (op!3592 List!19345)) (IdentifierValue!7064 (value!107751 List!19345)) (IdentifierValue!7065 (value!107752 List!19345)) (WhitespaceValue!7065 (value!107753 List!19345)) (True!7064) (False!7064) (Broken!17662 (value!107754 List!19345)) (Broken!17663 (value!107755 List!19345)) (True!7065) (RightBrace!3532) (RightBracket!3532) (Colon!3532) (Null!3532) (Comma!3532) (LeftBracket!3532) (False!7065) (LeftBrace!3532) (ImaginaryLiteralValue!3532 (text!25170 List!19345)) (StringLiteralValue!10596 (value!107756 List!19345)) (EOFValue!3532 (value!107757 List!19345)) (IdentValue!3532 (value!107758 List!19345)) (DelimiterValue!7065 (value!107759 List!19345)) (DedentValue!3532 (value!107760 List!19345)) (NewLineValue!3532 (value!107761 List!19345)) (IntegerValue!10596 (value!107762 (_ BitVec 32)) (text!25171 List!19345)) (IntegerValue!10597 (value!107763 Int) (text!25172 List!19345)) (Times!3532) (Or!3532) (Equal!3532) (Minus!3532) (Broken!17664 (value!107764 List!19345)) (And!3532) (Div!3532) (LessEqual!3532) (Mod!3532) (Concat!8302) (Not!3532) (Plus!3532) (SpaceValue!3532 (value!107765 List!19345)) (IntegerValue!10598 (value!107766 Int) (text!25173 List!19345)) (StringLiteralValue!10597 (text!25174 List!19345)) (FloatLiteralValue!7065 (text!25175 List!19345)) (BytesLiteralValue!3532 (value!107767 List!19345)) (CommentValue!7065 (value!107768 List!19345)) (StringLiteralValue!10598 (value!107769 List!19345)) (ErrorTokenValue!3532 (msg!3593 List!19345)) )
))
(declare-datatypes ((C!9714 0))(
  ( (C!9715 (val!5453 Int)) )
))
(declare-datatypes ((Regex!4770 0))(
  ( (ElementMatch!4770 (c!285637 C!9714)) (Concat!8303 (regOne!10052 Regex!4770) (regTwo!10052 Regex!4770)) (EmptyExpr!4770) (Star!4770 (reg!5099 Regex!4770)) (EmptyLang!4770) (Union!4770 (regOne!10053 Regex!4770) (regTwo!10053 Regex!4770)) )
))
(declare-datatypes ((String!21994 0))(
  ( (String!21995 (value!107770 String)) )
))
(declare-datatypes ((List!19346 0))(
  ( (Nil!19276) (Cons!19276 (h!24677 C!9714) (t!163037 List!19346)) )
))
(declare-datatypes ((IArray!12829 0))(
  ( (IArray!12830 (innerList!6472 List!19346)) )
))
(declare-datatypes ((Conc!6412 0))(
  ( (Node!6412 (left!15427 Conc!6412) (right!15757 Conc!6412) (csize!13054 Int) (cheight!6623 Int)) (Leaf!9354 (xs!9288 IArray!12829) (csize!13055 Int)) (Empty!6412) )
))
(declare-datatypes ((BalanceConc!12768 0))(
  ( (BalanceConc!12769 (c!285638 Conc!6412)) )
))
(declare-datatypes ((TokenValueInjection!6724 0))(
  ( (TokenValueInjection!6725 (toValue!4957 Int) (toChars!4816 Int)) )
))
(declare-datatypes ((Rule!6684 0))(
  ( (Rule!6685 (regex!3442 Regex!4770) (tag!3794 String!21994) (isSeparator!3442 Bool) (transformation!3442 TokenValueInjection!6724)) )
))
(declare-datatypes ((Token!6450 0))(
  ( (Token!6451 (value!107771 TokenValue!3532) (rule!5454 Rule!6684) (size!15315 Int) (originalCharacters!4256 List!19346)) )
))
(declare-fun token!523 () Token!6450)

(declare-fun e!1121396 () Bool)

(declare-fun inv!25015 (Token!6450) Bool)

(assert (=> start!172768 (and (inv!25015 token!523) e!1121396)))

(declare-fun e!1121393 () Bool)

(assert (=> b!1751925 (= e!1121393 (and tp!498261 tp!498259))))

(declare-fun b!1751926 () Bool)

(declare-fun res!788070 () Bool)

(declare-fun e!1121387 () Bool)

(assert (=> b!1751926 (=> (not res!788070) (not e!1121387))))

(declare-datatypes ((tuple2!18904 0))(
  ( (tuple2!18905 (_1!10854 Token!6450) (_2!10854 List!19346)) )
))
(declare-fun lt!676893 () tuple2!18904)

(declare-fun isEmpty!12149 (List!19346) Bool)

(assert (=> b!1751926 (= res!788070 (isEmpty!12149 (_2!10854 lt!676893)))))

(declare-fun b!1751927 () Bool)

(declare-fun rule!422 () Rule!6684)

(declare-fun tp!498254 () Bool)

(declare-fun inv!25012 (String!21994) Bool)

(declare-fun inv!25016 (TokenValueInjection!6724) Bool)

(assert (=> b!1751927 (= e!1121391 (and tp!498254 (inv!25012 (tag!3794 rule!422)) (inv!25016 (transformation!3442 rule!422)) e!1121393))))

(declare-fun b!1751928 () Bool)

(declare-fun res!788074 () Bool)

(assert (=> b!1751928 (=> (not res!788074) (not e!1121398))))

(declare-datatypes ((List!19347 0))(
  ( (Nil!19277) (Cons!19277 (h!24678 Rule!6684) (t!163038 List!19347)) )
))
(declare-fun rules!3447 () List!19347)

(declare-fun isEmpty!12150 (List!19347) Bool)

(assert (=> b!1751928 (= res!788074 (not (isEmpty!12150 rules!3447)))))

(declare-fun b!1751929 () Bool)

(declare-fun e!1121397 () Bool)

(declare-fun e!1121390 () Bool)

(declare-fun tp!498257 () Bool)

(assert (=> b!1751929 (= e!1121397 (and tp!498257 (inv!25012 (tag!3794 (rule!5454 token!523))) (inv!25016 (transformation!3442 (rule!5454 token!523))) e!1121390))))

(declare-fun e!1121386 () Bool)

(declare-fun e!1121395 () Bool)

(declare-fun tp!498260 () Bool)

(declare-fun b!1751930 () Bool)

(assert (=> b!1751930 (= e!1121386 (and tp!498260 (inv!25012 (tag!3794 (h!24678 rules!3447))) (inv!25016 (transformation!3442 (h!24678 rules!3447))) e!1121395))))

(assert (=> b!1751931 (= e!1121390 (and tp!498252 tp!498251))))

(declare-fun b!1751932 () Bool)

(declare-fun res!788073 () Bool)

(assert (=> b!1751932 (=> (not res!788073) (not e!1121387))))

(assert (=> b!1751932 (= res!788073 (= (rule!5454 token!523) rule!422))))

(declare-fun b!1751933 () Bool)

(declare-fun res!788072 () Bool)

(assert (=> b!1751933 (=> (not res!788072) (not e!1121398))))

(declare-fun rulesInvariant!2740 (LexerInterface!3071 List!19347) Bool)

(assert (=> b!1751933 (= res!788072 (rulesInvariant!2740 thiss!24550 rules!3447))))

(declare-fun b!1751934 () Bool)

(declare-fun tp!498253 () Bool)

(assert (=> b!1751934 (= e!1121389 (and e!1121386 tp!498253))))

(assert (=> b!1751935 (= e!1121395 (and tp!498255 tp!498256))))

(declare-fun b!1751936 () Bool)

(declare-fun e!1121394 () Bool)

(assert (=> b!1751936 (= e!1121398 e!1121394)))

(declare-fun res!788071 () Bool)

(assert (=> b!1751936 (=> (not res!788071) (not e!1121394))))

(declare-datatypes ((Option!3908 0))(
  ( (None!3907) (Some!3907 (v!25352 tuple2!18904)) )
))
(declare-fun lt!676894 () Option!3908)

(declare-fun isDefined!3251 (Option!3908) Bool)

(assert (=> b!1751936 (= res!788071 (isDefined!3251 lt!676894))))

(declare-fun maxPrefix!1625 (LexerInterface!3071 List!19347 List!19346) Option!3908)

(declare-fun list!7807 (BalanceConc!12768) List!19346)

(declare-fun charsOf!2091 (Token!6450) BalanceConc!12768)

(assert (=> b!1751936 (= lt!676894 (maxPrefix!1625 thiss!24550 rules!3447 (list!7807 (charsOf!2091 token!523))))))

(declare-fun b!1751937 () Bool)

(declare-fun rulesValidInductive!1149 (LexerInterface!3071 List!19347) Bool)

(assert (=> b!1751937 (= e!1121387 (not (rulesValidInductive!1149 thiss!24550 rules!3447)))))

(declare-fun b!1751938 () Bool)

(assert (=> b!1751938 (= e!1121394 e!1121387)))

(declare-fun res!788068 () Bool)

(assert (=> b!1751938 (=> (not res!788068) (not e!1121387))))

(assert (=> b!1751938 (= res!788068 (= (_1!10854 lt!676893) token!523))))

(declare-fun get!5847 (Option!3908) tuple2!18904)

(assert (=> b!1751938 (= lt!676893 (get!5847 lt!676894))))

(declare-fun b!1751939 () Bool)

(declare-fun tp!498258 () Bool)

(declare-fun inv!21 (TokenValue!3532) Bool)

(assert (=> b!1751939 (= e!1121396 (and (inv!21 (value!107771 token!523)) e!1121397 tp!498258))))

(declare-fun b!1751940 () Bool)

(declare-fun res!788069 () Bool)

(assert (=> b!1751940 (=> (not res!788069) (not e!1121398))))

(declare-fun contains!3468 (List!19347 Rule!6684) Bool)

(assert (=> b!1751940 (= res!788069 (contains!3468 rules!3447 rule!422))))

(assert (= (and start!172768 res!788067) b!1751928))

(assert (= (and b!1751928 res!788074) b!1751933))

(assert (= (and b!1751933 res!788072) b!1751940))

(assert (= (and b!1751940 res!788069) b!1751936))

(assert (= (and b!1751936 res!788071) b!1751938))

(assert (= (and b!1751938 res!788068) b!1751926))

(assert (= (and b!1751926 res!788070) b!1751932))

(assert (= (and b!1751932 res!788073) b!1751937))

(assert (= b!1751930 b!1751935))

(assert (= b!1751934 b!1751930))

(assert (= (and start!172768 (is-Cons!19277 rules!3447)) b!1751934))

(assert (= b!1751927 b!1751925))

(assert (= start!172768 b!1751927))

(assert (= b!1751929 b!1751931))

(assert (= b!1751939 b!1751929))

(assert (= start!172768 b!1751939))

(declare-fun m!2165745 () Bool)

(assert (=> b!1751938 m!2165745))

(declare-fun m!2165747 () Bool)

(assert (=> b!1751928 m!2165747))

(declare-fun m!2165749 () Bool)

(assert (=> b!1751933 m!2165749))

(declare-fun m!2165751 () Bool)

(assert (=> b!1751937 m!2165751))

(declare-fun m!2165753 () Bool)

(assert (=> b!1751940 m!2165753))

(declare-fun m!2165755 () Bool)

(assert (=> b!1751929 m!2165755))

(declare-fun m!2165757 () Bool)

(assert (=> b!1751929 m!2165757))

(declare-fun m!2165759 () Bool)

(assert (=> b!1751936 m!2165759))

(declare-fun m!2165761 () Bool)

(assert (=> b!1751936 m!2165761))

(assert (=> b!1751936 m!2165761))

(declare-fun m!2165763 () Bool)

(assert (=> b!1751936 m!2165763))

(assert (=> b!1751936 m!2165763))

(declare-fun m!2165765 () Bool)

(assert (=> b!1751936 m!2165765))

(declare-fun m!2165767 () Bool)

(assert (=> start!172768 m!2165767))

(declare-fun m!2165769 () Bool)

(assert (=> b!1751939 m!2165769))

(declare-fun m!2165771 () Bool)

(assert (=> b!1751927 m!2165771))

(declare-fun m!2165773 () Bool)

(assert (=> b!1751927 m!2165773))

(declare-fun m!2165775 () Bool)

(assert (=> b!1751926 m!2165775))

(declare-fun m!2165777 () Bool)

(assert (=> b!1751930 m!2165777))

(declare-fun m!2165779 () Bool)

(assert (=> b!1751930 m!2165779))

(push 1)

(assert (not b!1751928))

(assert (not b!1751927))

(assert (not b!1751939))

(assert (not b!1751934))

(assert (not b!1751940))

(assert b_and!131133)

(assert (not b_next!49055))

(assert (not b!1751937))

(assert (not b!1751933))

(assert (not b_next!49061))

(assert b_and!131137)

(assert (not b!1751926))

(assert b_and!131141)

(assert (not b_next!49057))

(assert (not b_next!49059))

(assert (not b_next!49065))

(assert (not b!1751930))

(assert (not b_next!49063))

(assert (not b!1751936))

(assert b_and!131139)

(assert (not b!1751929))

(assert (not start!172768))

(assert (not b!1751938))

(assert b_and!131135)

(assert b_and!131143)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!49061))

(assert b_and!131137)

(assert b_and!131133)

(assert (not b_next!49055))

(assert (not b_next!49065))

(assert (not b_next!49063))

(assert b_and!131139)

(assert b_and!131141)

(assert (not b_next!49057))

(assert (not b_next!49059))

(assert b_and!131135)

(assert b_and!131143)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!534992 () Bool)

(declare-fun isEmpty!12153 (Option!3908) Bool)

(assert (=> d!534992 (= (isDefined!3251 lt!676894) (not (isEmpty!12153 lt!676894)))))

(declare-fun bs!403562 () Bool)

(assert (= bs!403562 d!534992))

(declare-fun m!2165817 () Bool)

(assert (=> bs!403562 m!2165817))

(assert (=> b!1751936 d!534992))

(declare-fun d!534994 () Bool)

(declare-fun e!1121478 () Bool)

(assert (=> d!534994 e!1121478))

(declare-fun res!788138 () Bool)

(assert (=> d!534994 (=> res!788138 e!1121478)))

(declare-fun lt!676915 () Option!3908)

(assert (=> d!534994 (= res!788138 (isEmpty!12153 lt!676915))))

(declare-fun e!1121477 () Option!3908)

(assert (=> d!534994 (= lt!676915 e!1121477)))

(declare-fun c!285650 () Bool)

(assert (=> d!534994 (= c!285650 (and (is-Cons!19277 rules!3447) (is-Nil!19277 (t!163038 rules!3447))))))

(declare-datatypes ((Unit!33435 0))(
  ( (Unit!33436) )
))
(declare-fun lt!676917 () Unit!33435)

(declare-fun lt!676916 () Unit!33435)

(assert (=> d!534994 (= lt!676917 lt!676916)))

(declare-fun isPrefix!1683 (List!19346 List!19346) Bool)

(assert (=> d!534994 (isPrefix!1683 (list!7807 (charsOf!2091 token!523)) (list!7807 (charsOf!2091 token!523)))))

(declare-fun lemmaIsPrefixRefl!1112 (List!19346 List!19346) Unit!33435)

(assert (=> d!534994 (= lt!676916 (lemmaIsPrefixRefl!1112 (list!7807 (charsOf!2091 token!523)) (list!7807 (charsOf!2091 token!523))))))

(assert (=> d!534994 (rulesValidInductive!1149 thiss!24550 rules!3447)))

(assert (=> d!534994 (= (maxPrefix!1625 thiss!24550 rules!3447 (list!7807 (charsOf!2091 token!523))) lt!676915)))

(declare-fun b!1752043 () Bool)

(declare-fun e!1121476 () Bool)

(assert (=> b!1752043 (= e!1121476 (contains!3468 rules!3447 (rule!5454 (_1!10854 (get!5847 lt!676915)))))))

(declare-fun bm!110394 () Bool)

(declare-fun call!110399 () Option!3908)

(declare-fun maxPrefixOneRule!997 (LexerInterface!3071 Rule!6684 List!19346) Option!3908)

(assert (=> bm!110394 (= call!110399 (maxPrefixOneRule!997 thiss!24550 (h!24678 rules!3447) (list!7807 (charsOf!2091 token!523))))))

(declare-fun b!1752044 () Bool)

(declare-fun res!788141 () Bool)

(assert (=> b!1752044 (=> (not res!788141) (not e!1121476))))

(declare-fun apply!5243 (TokenValueInjection!6724 BalanceConc!12768) TokenValue!3532)

(declare-fun seqFromList!2412 (List!19346) BalanceConc!12768)

(assert (=> b!1752044 (= res!788141 (= (value!107771 (_1!10854 (get!5847 lt!676915))) (apply!5243 (transformation!3442 (rule!5454 (_1!10854 (get!5847 lt!676915)))) (seqFromList!2412 (originalCharacters!4256 (_1!10854 (get!5847 lt!676915)))))))))

(declare-fun b!1752045 () Bool)

(assert (=> b!1752045 (= e!1121477 call!110399)))

(declare-fun b!1752046 () Bool)

(assert (=> b!1752046 (= e!1121478 e!1121476)))

(declare-fun res!788140 () Bool)

(assert (=> b!1752046 (=> (not res!788140) (not e!1121476))))

(assert (=> b!1752046 (= res!788140 (isDefined!3251 lt!676915))))

(declare-fun b!1752047 () Bool)

(declare-fun res!788139 () Bool)

(assert (=> b!1752047 (=> (not res!788139) (not e!1121476))))

(declare-fun ++!5267 (List!19346 List!19346) List!19346)

(assert (=> b!1752047 (= res!788139 (= (++!5267 (list!7807 (charsOf!2091 (_1!10854 (get!5847 lt!676915)))) (_2!10854 (get!5847 lt!676915))) (list!7807 (charsOf!2091 token!523))))))

(declare-fun b!1752048 () Bool)

(declare-fun res!788142 () Bool)

(assert (=> b!1752048 (=> (not res!788142) (not e!1121476))))

(declare-fun size!15317 (List!19346) Int)

(assert (=> b!1752048 (= res!788142 (< (size!15317 (_2!10854 (get!5847 lt!676915))) (size!15317 (list!7807 (charsOf!2091 token!523)))))))

(declare-fun b!1752049 () Bool)

(declare-fun res!788136 () Bool)

(assert (=> b!1752049 (=> (not res!788136) (not e!1121476))))

(declare-fun matchR!2244 (Regex!4770 List!19346) Bool)

(assert (=> b!1752049 (= res!788136 (matchR!2244 (regex!3442 (rule!5454 (_1!10854 (get!5847 lt!676915)))) (list!7807 (charsOf!2091 (_1!10854 (get!5847 lt!676915))))))))

(declare-fun b!1752050 () Bool)

(declare-fun res!788137 () Bool)

(assert (=> b!1752050 (=> (not res!788137) (not e!1121476))))

(assert (=> b!1752050 (= res!788137 (= (list!7807 (charsOf!2091 (_1!10854 (get!5847 lt!676915)))) (originalCharacters!4256 (_1!10854 (get!5847 lt!676915)))))))

(declare-fun b!1752051 () Bool)

(declare-fun lt!676918 () Option!3908)

(declare-fun lt!676914 () Option!3908)

(assert (=> b!1752051 (= e!1121477 (ite (and (is-None!3907 lt!676918) (is-None!3907 lt!676914)) None!3907 (ite (is-None!3907 lt!676914) lt!676918 (ite (is-None!3907 lt!676918) lt!676914 (ite (>= (size!15315 (_1!10854 (v!25352 lt!676918))) (size!15315 (_1!10854 (v!25352 lt!676914)))) lt!676918 lt!676914)))))))

(assert (=> b!1752051 (= lt!676918 call!110399)))

(assert (=> b!1752051 (= lt!676914 (maxPrefix!1625 thiss!24550 (t!163038 rules!3447) (list!7807 (charsOf!2091 token!523))))))

(assert (= (and d!534994 c!285650) b!1752045))

(assert (= (and d!534994 (not c!285650)) b!1752051))

(assert (= (or b!1752045 b!1752051) bm!110394))

(assert (= (and d!534994 (not res!788138)) b!1752046))

(assert (= (and b!1752046 res!788140) b!1752050))

(assert (= (and b!1752050 res!788137) b!1752048))

(assert (= (and b!1752048 res!788142) b!1752047))

(assert (= (and b!1752047 res!788139) b!1752044))

(assert (= (and b!1752044 res!788141) b!1752049))

(assert (= (and b!1752049 res!788136) b!1752043))

(assert (=> bm!110394 m!2165763))

(declare-fun m!2165853 () Bool)

(assert (=> bm!110394 m!2165853))

(declare-fun m!2165855 () Bool)

(assert (=> d!534994 m!2165855))

(assert (=> d!534994 m!2165763))

(assert (=> d!534994 m!2165763))

(declare-fun m!2165857 () Bool)

(assert (=> d!534994 m!2165857))

(assert (=> d!534994 m!2165763))

(assert (=> d!534994 m!2165763))

(declare-fun m!2165859 () Bool)

(assert (=> d!534994 m!2165859))

(assert (=> d!534994 m!2165751))

(declare-fun m!2165861 () Bool)

(assert (=> b!1752043 m!2165861))

(declare-fun m!2165863 () Bool)

(assert (=> b!1752043 m!2165863))

(assert (=> b!1752049 m!2165861))

(declare-fun m!2165865 () Bool)

(assert (=> b!1752049 m!2165865))

(assert (=> b!1752049 m!2165865))

(declare-fun m!2165867 () Bool)

(assert (=> b!1752049 m!2165867))

(assert (=> b!1752049 m!2165867))

(declare-fun m!2165869 () Bool)

(assert (=> b!1752049 m!2165869))

(declare-fun m!2165871 () Bool)

(assert (=> b!1752046 m!2165871))

(assert (=> b!1752050 m!2165861))

(assert (=> b!1752050 m!2165865))

(assert (=> b!1752050 m!2165865))

(assert (=> b!1752050 m!2165867))

(assert (=> b!1752044 m!2165861))

(declare-fun m!2165873 () Bool)

(assert (=> b!1752044 m!2165873))

(assert (=> b!1752044 m!2165873))

(declare-fun m!2165875 () Bool)

(assert (=> b!1752044 m!2165875))

(assert (=> b!1752051 m!2165763))

(declare-fun m!2165877 () Bool)

(assert (=> b!1752051 m!2165877))

(assert (=> b!1752048 m!2165861))

(declare-fun m!2165879 () Bool)

(assert (=> b!1752048 m!2165879))

(assert (=> b!1752048 m!2165763))

(declare-fun m!2165881 () Bool)

(assert (=> b!1752048 m!2165881))

(assert (=> b!1752047 m!2165861))

(assert (=> b!1752047 m!2165865))

(assert (=> b!1752047 m!2165865))

(assert (=> b!1752047 m!2165867))

(assert (=> b!1752047 m!2165867))

(declare-fun m!2165883 () Bool)

(assert (=> b!1752047 m!2165883))

(assert (=> b!1751936 d!534994))

(declare-fun d!535018 () Bool)

(declare-fun list!7809 (Conc!6412) List!19346)

(assert (=> d!535018 (= (list!7807 (charsOf!2091 token!523)) (list!7809 (c!285638 (charsOf!2091 token!523))))))

(declare-fun bs!403564 () Bool)

(assert (= bs!403564 d!535018))

(declare-fun m!2165885 () Bool)

(assert (=> bs!403564 m!2165885))

(assert (=> b!1751936 d!535018))

(declare-fun d!535020 () Bool)

(declare-fun lt!676921 () BalanceConc!12768)

(assert (=> d!535020 (= (list!7807 lt!676921) (originalCharacters!4256 token!523))))

(declare-fun dynLambda!9213 (Int TokenValue!3532) BalanceConc!12768)

(assert (=> d!535020 (= lt!676921 (dynLambda!9213 (toChars!4816 (transformation!3442 (rule!5454 token!523))) (value!107771 token!523)))))

(assert (=> d!535020 (= (charsOf!2091 token!523) lt!676921)))

(declare-fun b_lambda!56339 () Bool)

(assert (=> (not b_lambda!56339) (not d!535020)))

(declare-fun tb!105125 () Bool)

(declare-fun t!163049 () Bool)

(assert (=> (and b!1751935 (= (toChars!4816 (transformation!3442 (h!24678 rules!3447))) (toChars!4816 (transformation!3442 (rule!5454 token!523)))) t!163049) tb!105125))

(declare-fun b!1752056 () Bool)

(declare-fun e!1121481 () Bool)

(declare-fun tp!498300 () Bool)

(declare-fun inv!25019 (Conc!6412) Bool)

(assert (=> b!1752056 (= e!1121481 (and (inv!25019 (c!285638 (dynLambda!9213 (toChars!4816 (transformation!3442 (rule!5454 token!523))) (value!107771 token!523)))) tp!498300))))

(declare-fun result!126462 () Bool)

(declare-fun inv!25020 (BalanceConc!12768) Bool)

(assert (=> tb!105125 (= result!126462 (and (inv!25020 (dynLambda!9213 (toChars!4816 (transformation!3442 (rule!5454 token!523))) (value!107771 token!523))) e!1121481))))

(assert (= tb!105125 b!1752056))

(declare-fun m!2165887 () Bool)

(assert (=> b!1752056 m!2165887))

(declare-fun m!2165889 () Bool)

(assert (=> tb!105125 m!2165889))

(assert (=> d!535020 t!163049))

(declare-fun b_and!131163 () Bool)

(assert (= b_and!131135 (and (=> t!163049 result!126462) b_and!131163)))

(declare-fun t!163051 () Bool)

(declare-fun tb!105127 () Bool)

(assert (=> (and b!1751931 (= (toChars!4816 (transformation!3442 (rule!5454 token!523))) (toChars!4816 (transformation!3442 (rule!5454 token!523)))) t!163051) tb!105127))

(declare-fun result!126466 () Bool)

(assert (= result!126466 result!126462))

(assert (=> d!535020 t!163051))

(declare-fun b_and!131165 () Bool)

(assert (= b_and!131139 (and (=> t!163051 result!126466) b_and!131165)))

(declare-fun t!163053 () Bool)

(declare-fun tb!105129 () Bool)

(assert (=> (and b!1751925 (= (toChars!4816 (transformation!3442 rule!422)) (toChars!4816 (transformation!3442 (rule!5454 token!523)))) t!163053) tb!105129))

(declare-fun result!126468 () Bool)

(assert (= result!126468 result!126462))

(assert (=> d!535020 t!163053))

(declare-fun b_and!131167 () Bool)

(assert (= b_and!131143 (and (=> t!163053 result!126468) b_and!131167)))

(declare-fun m!2165891 () Bool)

(assert (=> d!535020 m!2165891))

(declare-fun m!2165893 () Bool)

(assert (=> d!535020 m!2165893))

(assert (=> b!1751936 d!535020))

(declare-fun d!535022 () Bool)

(declare-fun res!788145 () Bool)

(declare-fun e!1121484 () Bool)

(assert (=> d!535022 (=> (not res!788145) (not e!1121484))))

(declare-fun rulesValid!1286 (LexerInterface!3071 List!19347) Bool)

(assert (=> d!535022 (= res!788145 (rulesValid!1286 thiss!24550 rules!3447))))

(assert (=> d!535022 (= (rulesInvariant!2740 thiss!24550 rules!3447) e!1121484)))

(declare-fun b!1752059 () Bool)

(declare-datatypes ((List!19351 0))(
  ( (Nil!19281) (Cons!19281 (h!24682 String!21994) (t!163056 List!19351)) )
))
(declare-fun noDuplicateTag!1286 (LexerInterface!3071 List!19347 List!19351) Bool)

(assert (=> b!1752059 (= e!1121484 (noDuplicateTag!1286 thiss!24550 rules!3447 Nil!19281))))

(assert (= (and d!535022 res!788145) b!1752059))

(declare-fun m!2165895 () Bool)

(assert (=> d!535022 m!2165895))

(declare-fun m!2165897 () Bool)

(assert (=> b!1752059 m!2165897))

(assert (=> b!1751933 d!535022))

(declare-fun d!535024 () Bool)

(declare-fun res!788150 () Bool)

(declare-fun e!1121487 () Bool)

(assert (=> d!535024 (=> (not res!788150) (not e!1121487))))

(assert (=> d!535024 (= res!788150 (not (isEmpty!12149 (originalCharacters!4256 token!523))))))

(assert (=> d!535024 (= (inv!25015 token!523) e!1121487)))

(declare-fun b!1752064 () Bool)

(declare-fun res!788151 () Bool)

(assert (=> b!1752064 (=> (not res!788151) (not e!1121487))))

(assert (=> b!1752064 (= res!788151 (= (originalCharacters!4256 token!523) (list!7807 (dynLambda!9213 (toChars!4816 (transformation!3442 (rule!5454 token!523))) (value!107771 token!523)))))))

(declare-fun b!1752065 () Bool)

(assert (=> b!1752065 (= e!1121487 (= (size!15315 token!523) (size!15317 (originalCharacters!4256 token!523))))))

(assert (= (and d!535024 res!788150) b!1752064))

(assert (= (and b!1752064 res!788151) b!1752065))

(declare-fun b_lambda!56341 () Bool)

(assert (=> (not b_lambda!56341) (not b!1752064)))

(assert (=> b!1752064 t!163049))

(declare-fun b_and!131169 () Bool)

(assert (= b_and!131163 (and (=> t!163049 result!126462) b_and!131169)))

(assert (=> b!1752064 t!163051))

(declare-fun b_and!131171 () Bool)

(assert (= b_and!131165 (and (=> t!163051 result!126466) b_and!131171)))

(assert (=> b!1752064 t!163053))

(declare-fun b_and!131173 () Bool)

(assert (= b_and!131167 (and (=> t!163053 result!126468) b_and!131173)))

(declare-fun m!2165899 () Bool)

(assert (=> d!535024 m!2165899))

(assert (=> b!1752064 m!2165893))

(assert (=> b!1752064 m!2165893))

(declare-fun m!2165901 () Bool)

(assert (=> b!1752064 m!2165901))

(declare-fun m!2165903 () Bool)

(assert (=> b!1752065 m!2165903))

(assert (=> start!172768 d!535024))

(declare-fun d!535026 () Bool)

(assert (=> d!535026 (= (inv!25012 (tag!3794 (h!24678 rules!3447))) (= (mod (str.len (value!107770 (tag!3794 (h!24678 rules!3447)))) 2) 0))))

(assert (=> b!1751930 d!535026))

(declare-fun d!535028 () Bool)

(declare-fun res!788154 () Bool)

(declare-fun e!1121490 () Bool)

(assert (=> d!535028 (=> (not res!788154) (not e!1121490))))

(declare-fun semiInverseModEq!1360 (Int Int) Bool)

(assert (=> d!535028 (= res!788154 (semiInverseModEq!1360 (toChars!4816 (transformation!3442 (h!24678 rules!3447))) (toValue!4957 (transformation!3442 (h!24678 rules!3447)))))))

(assert (=> d!535028 (= (inv!25016 (transformation!3442 (h!24678 rules!3447))) e!1121490)))

(declare-fun b!1752068 () Bool)

(declare-fun equivClasses!1301 (Int Int) Bool)

(assert (=> b!1752068 (= e!1121490 (equivClasses!1301 (toChars!4816 (transformation!3442 (h!24678 rules!3447))) (toValue!4957 (transformation!3442 (h!24678 rules!3447)))))))

(assert (= (and d!535028 res!788154) b!1752068))

(declare-fun m!2165905 () Bool)

(assert (=> d!535028 m!2165905))

(declare-fun m!2165907 () Bool)

(assert (=> b!1752068 m!2165907))

(assert (=> b!1751930 d!535028))

(declare-fun d!535030 () Bool)

(declare-fun lt!676924 () Bool)

(declare-fun content!2768 (List!19347) (Set Rule!6684))

(assert (=> d!535030 (= lt!676924 (set.member rule!422 (content!2768 rules!3447)))))

(declare-fun e!1121496 () Bool)

(assert (=> d!535030 (= lt!676924 e!1121496)))

(declare-fun res!788160 () Bool)

(assert (=> d!535030 (=> (not res!788160) (not e!1121496))))

(assert (=> d!535030 (= res!788160 (is-Cons!19277 rules!3447))))

(assert (=> d!535030 (= (contains!3468 rules!3447 rule!422) lt!676924)))

(declare-fun b!1752073 () Bool)

(declare-fun e!1121495 () Bool)

(assert (=> b!1752073 (= e!1121496 e!1121495)))

(declare-fun res!788159 () Bool)

(assert (=> b!1752073 (=> res!788159 e!1121495)))

(assert (=> b!1752073 (= res!788159 (= (h!24678 rules!3447) rule!422))))

(declare-fun b!1752074 () Bool)

(assert (=> b!1752074 (= e!1121495 (contains!3468 (t!163038 rules!3447) rule!422))))

(assert (= (and d!535030 res!788160) b!1752073))

(assert (= (and b!1752073 (not res!788159)) b!1752074))

(declare-fun m!2165909 () Bool)

(assert (=> d!535030 m!2165909))

(declare-fun m!2165911 () Bool)

(assert (=> d!535030 m!2165911))

(declare-fun m!2165913 () Bool)

(assert (=> b!1752074 m!2165913))

(assert (=> b!1751940 d!535030))

(declare-fun d!535032 () Bool)

(assert (=> d!535032 (= (inv!25012 (tag!3794 (rule!5454 token!523))) (= (mod (str.len (value!107770 (tag!3794 (rule!5454 token!523)))) 2) 0))))

(assert (=> b!1751929 d!535032))

(declare-fun d!535034 () Bool)

(declare-fun res!788161 () Bool)

(declare-fun e!1121497 () Bool)

(assert (=> d!535034 (=> (not res!788161) (not e!1121497))))

(assert (=> d!535034 (= res!788161 (semiInverseModEq!1360 (toChars!4816 (transformation!3442 (rule!5454 token!523))) (toValue!4957 (transformation!3442 (rule!5454 token!523)))))))

(assert (=> d!535034 (= (inv!25016 (transformation!3442 (rule!5454 token!523))) e!1121497)))

(declare-fun b!1752075 () Bool)

(assert (=> b!1752075 (= e!1121497 (equivClasses!1301 (toChars!4816 (transformation!3442 (rule!5454 token!523))) (toValue!4957 (transformation!3442 (rule!5454 token!523)))))))

(assert (= (and d!535034 res!788161) b!1752075))

(declare-fun m!2165915 () Bool)

(assert (=> d!535034 m!2165915))

(declare-fun m!2165917 () Bool)

(assert (=> b!1752075 m!2165917))

(assert (=> b!1751929 d!535034))

(declare-fun d!535036 () Bool)

(declare-fun c!285655 () Bool)

(assert (=> d!535036 (= c!285655 (is-IntegerValue!10596 (value!107771 token!523)))))

(declare-fun e!1121506 () Bool)

(assert (=> d!535036 (= (inv!21 (value!107771 token!523)) e!1121506)))

(declare-fun b!1752086 () Bool)

(declare-fun e!1121504 () Bool)

(assert (=> b!1752086 (= e!1121506 e!1121504)))

(declare-fun c!285656 () Bool)

(assert (=> b!1752086 (= c!285656 (is-IntegerValue!10597 (value!107771 token!523)))))

(declare-fun b!1752087 () Bool)

(declare-fun inv!17 (TokenValue!3532) Bool)

(assert (=> b!1752087 (= e!1121504 (inv!17 (value!107771 token!523)))))

(declare-fun b!1752088 () Bool)

(declare-fun inv!16 (TokenValue!3532) Bool)

(assert (=> b!1752088 (= e!1121506 (inv!16 (value!107771 token!523)))))

(declare-fun b!1752089 () Bool)

(declare-fun res!788164 () Bool)

(declare-fun e!1121505 () Bool)

(assert (=> b!1752089 (=> res!788164 e!1121505)))

(assert (=> b!1752089 (= res!788164 (not (is-IntegerValue!10598 (value!107771 token!523))))))

(assert (=> b!1752089 (= e!1121504 e!1121505)))

(declare-fun b!1752090 () Bool)

(declare-fun inv!15 (TokenValue!3532) Bool)

(assert (=> b!1752090 (= e!1121505 (inv!15 (value!107771 token!523)))))

(assert (= (and d!535036 c!285655) b!1752088))

(assert (= (and d!535036 (not c!285655)) b!1752086))

(assert (= (and b!1752086 c!285656) b!1752087))

(assert (= (and b!1752086 (not c!285656)) b!1752089))

(assert (= (and b!1752089 (not res!788164)) b!1752090))

(declare-fun m!2165919 () Bool)

(assert (=> b!1752087 m!2165919))

(declare-fun m!2165921 () Bool)

(assert (=> b!1752088 m!2165921))

(declare-fun m!2165923 () Bool)

(assert (=> b!1752090 m!2165923))

(assert (=> b!1751939 d!535036))

(declare-fun d!535038 () Bool)

(assert (=> d!535038 (= (isEmpty!12150 rules!3447) (is-Nil!19277 rules!3447))))

(assert (=> b!1751928 d!535038))

(declare-fun d!535040 () Bool)

(assert (=> d!535040 (= (get!5847 lt!676894) (v!25352 lt!676894))))

(assert (=> b!1751938 d!535040))

(declare-fun d!535042 () Bool)

(assert (=> d!535042 (= (inv!25012 (tag!3794 rule!422)) (= (mod (str.len (value!107770 (tag!3794 rule!422))) 2) 0))))

(assert (=> b!1751927 d!535042))

(declare-fun d!535044 () Bool)

(declare-fun res!788165 () Bool)

(declare-fun e!1121507 () Bool)

(assert (=> d!535044 (=> (not res!788165) (not e!1121507))))

(assert (=> d!535044 (= res!788165 (semiInverseModEq!1360 (toChars!4816 (transformation!3442 rule!422)) (toValue!4957 (transformation!3442 rule!422))))))

(assert (=> d!535044 (= (inv!25016 (transformation!3442 rule!422)) e!1121507)))

(declare-fun b!1752091 () Bool)

(assert (=> b!1752091 (= e!1121507 (equivClasses!1301 (toChars!4816 (transformation!3442 rule!422)) (toValue!4957 (transformation!3442 rule!422))))))

(assert (= (and d!535044 res!788165) b!1752091))

(declare-fun m!2165925 () Bool)

(assert (=> d!535044 m!2165925))

(declare-fun m!2165927 () Bool)

(assert (=> b!1752091 m!2165927))

(assert (=> b!1751927 d!535044))

(declare-fun d!535046 () Bool)

(assert (=> d!535046 true))

(declare-fun lt!676947 () Bool)

(declare-fun lambda!69887 () Int)

(declare-fun forall!4269 (List!19347 Int) Bool)

(assert (=> d!535046 (= lt!676947 (forall!4269 rules!3447 lambda!69887))))

(declare-fun e!1121530 () Bool)

(assert (=> d!535046 (= lt!676947 e!1121530)))

(declare-fun res!788199 () Bool)

(assert (=> d!535046 (=> res!788199 e!1121530)))

(assert (=> d!535046 (= res!788199 (not (is-Cons!19277 rules!3447)))))

(assert (=> d!535046 (= (rulesValidInductive!1149 thiss!24550 rules!3447) lt!676947)))

(declare-fun b!1752131 () Bool)

(declare-fun e!1121529 () Bool)

(assert (=> b!1752131 (= e!1121530 e!1121529)))

(declare-fun res!788200 () Bool)

(assert (=> b!1752131 (=> (not res!788200) (not e!1121529))))

(declare-fun ruleValid!941 (LexerInterface!3071 Rule!6684) Bool)

(assert (=> b!1752131 (= res!788200 (ruleValid!941 thiss!24550 (h!24678 rules!3447)))))

(declare-fun b!1752132 () Bool)

(assert (=> b!1752132 (= e!1121529 (rulesValidInductive!1149 thiss!24550 (t!163038 rules!3447)))))

(assert (= (and d!535046 (not res!788199)) b!1752131))

(assert (= (and b!1752131 res!788200) b!1752132))

(declare-fun m!2165973 () Bool)

(assert (=> d!535046 m!2165973))

(declare-fun m!2165975 () Bool)

(assert (=> b!1752131 m!2165975))

(declare-fun m!2165977 () Bool)

(assert (=> b!1752132 m!2165977))

(assert (=> b!1751937 d!535046))

(declare-fun d!535062 () Bool)

(assert (=> d!535062 (= (isEmpty!12149 (_2!10854 lt!676893)) (is-Nil!19276 (_2!10854 lt!676893)))))

(assert (=> b!1751926 d!535062))

(declare-fun b!1752148 () Bool)

(declare-fun e!1121533 () Bool)

(declare-fun tp!498313 () Bool)

(declare-fun tp!498315 () Bool)

(assert (=> b!1752148 (= e!1121533 (and tp!498313 tp!498315))))

(declare-fun b!1752145 () Bool)

(declare-fun tp_is_empty!7783 () Bool)

(assert (=> b!1752145 (= e!1121533 tp_is_empty!7783)))

(assert (=> b!1751930 (= tp!498260 e!1121533)))

(declare-fun b!1752147 () Bool)

(declare-fun tp!498312 () Bool)

(assert (=> b!1752147 (= e!1121533 tp!498312)))

(declare-fun b!1752146 () Bool)

(declare-fun tp!498311 () Bool)

(declare-fun tp!498314 () Bool)

(assert (=> b!1752146 (= e!1121533 (and tp!498311 tp!498314))))

(assert (= (and b!1751930 (is-ElementMatch!4770 (regex!3442 (h!24678 rules!3447)))) b!1752145))

(assert (= (and b!1751930 (is-Concat!8303 (regex!3442 (h!24678 rules!3447)))) b!1752146))

(assert (= (and b!1751930 (is-Star!4770 (regex!3442 (h!24678 rules!3447)))) b!1752147))

(assert (= (and b!1751930 (is-Union!4770 (regex!3442 (h!24678 rules!3447)))) b!1752148))

(declare-fun b!1752152 () Bool)

(declare-fun e!1121534 () Bool)

(declare-fun tp!498318 () Bool)

(declare-fun tp!498320 () Bool)

(assert (=> b!1752152 (= e!1121534 (and tp!498318 tp!498320))))

(declare-fun b!1752149 () Bool)

(assert (=> b!1752149 (= e!1121534 tp_is_empty!7783)))

(assert (=> b!1751929 (= tp!498257 e!1121534)))

(declare-fun b!1752151 () Bool)

(declare-fun tp!498317 () Bool)

(assert (=> b!1752151 (= e!1121534 tp!498317)))

(declare-fun b!1752150 () Bool)

(declare-fun tp!498316 () Bool)

(declare-fun tp!498319 () Bool)

(assert (=> b!1752150 (= e!1121534 (and tp!498316 tp!498319))))

(assert (= (and b!1751929 (is-ElementMatch!4770 (regex!3442 (rule!5454 token!523)))) b!1752149))

(assert (= (and b!1751929 (is-Concat!8303 (regex!3442 (rule!5454 token!523)))) b!1752150))

(assert (= (and b!1751929 (is-Star!4770 (regex!3442 (rule!5454 token!523)))) b!1752151))

(assert (= (and b!1751929 (is-Union!4770 (regex!3442 (rule!5454 token!523)))) b!1752152))

(declare-fun b!1752163 () Bool)

(declare-fun b_free!48375 () Bool)

(declare-fun b_next!49079 () Bool)

(assert (=> b!1752163 (= b_free!48375 (not b_next!49079))))

(declare-fun tp!498332 () Bool)

(declare-fun b_and!131181 () Bool)

(assert (=> b!1752163 (= tp!498332 b_and!131181)))

(declare-fun b_free!48377 () Bool)

(declare-fun b_next!49081 () Bool)

(assert (=> b!1752163 (= b_free!48377 (not b_next!49081))))

(declare-fun t!163055 () Bool)

(declare-fun tb!105131 () Bool)

(assert (=> (and b!1752163 (= (toChars!4816 (transformation!3442 (h!24678 (t!163038 rules!3447)))) (toChars!4816 (transformation!3442 (rule!5454 token!523)))) t!163055) tb!105131))

(declare-fun result!126474 () Bool)

(assert (= result!126474 result!126462))

(assert (=> d!535020 t!163055))

(assert (=> b!1752064 t!163055))

(declare-fun tp!498331 () Bool)

(declare-fun b_and!131183 () Bool)

(assert (=> b!1752163 (= tp!498331 (and (=> t!163055 result!126474) b_and!131183))))

(declare-fun e!1121545 () Bool)

(assert (=> b!1752163 (= e!1121545 (and tp!498332 tp!498331))))

(declare-fun tp!498330 () Bool)

(declare-fun b!1752162 () Bool)

(declare-fun e!1121546 () Bool)

(assert (=> b!1752162 (= e!1121546 (and tp!498330 (inv!25012 (tag!3794 (h!24678 (t!163038 rules!3447)))) (inv!25016 (transformation!3442 (h!24678 (t!163038 rules!3447)))) e!1121545))))

(declare-fun b!1752161 () Bool)

(declare-fun e!1121544 () Bool)

(declare-fun tp!498329 () Bool)

(assert (=> b!1752161 (= e!1121544 (and e!1121546 tp!498329))))

(assert (=> b!1751934 (= tp!498253 e!1121544)))

(assert (= b!1752162 b!1752163))

(assert (= b!1752161 b!1752162))

(assert (= (and b!1751934 (is-Cons!19277 (t!163038 rules!3447))) b!1752161))

(declare-fun m!2165979 () Bool)

(assert (=> b!1752162 m!2165979))

(declare-fun m!2165981 () Bool)

(assert (=> b!1752162 m!2165981))

(declare-fun b!1752168 () Bool)

(declare-fun e!1121549 () Bool)

(declare-fun tp!498335 () Bool)

(assert (=> b!1752168 (= e!1121549 (and tp_is_empty!7783 tp!498335))))

(assert (=> b!1751939 (= tp!498258 e!1121549)))

(assert (= (and b!1751939 (is-Cons!19276 (originalCharacters!4256 token!523))) b!1752168))

(declare-fun b!1752172 () Bool)

(declare-fun e!1121550 () Bool)

(declare-fun tp!498338 () Bool)

(declare-fun tp!498340 () Bool)

(assert (=> b!1752172 (= e!1121550 (and tp!498338 tp!498340))))

(declare-fun b!1752169 () Bool)

(assert (=> b!1752169 (= e!1121550 tp_is_empty!7783)))

(assert (=> b!1751927 (= tp!498254 e!1121550)))

(declare-fun b!1752171 () Bool)

(declare-fun tp!498337 () Bool)

(assert (=> b!1752171 (= e!1121550 tp!498337)))

(declare-fun b!1752170 () Bool)

(declare-fun tp!498336 () Bool)

(declare-fun tp!498339 () Bool)

(assert (=> b!1752170 (= e!1121550 (and tp!498336 tp!498339))))

(assert (= (and b!1751927 (is-ElementMatch!4770 (regex!3442 rule!422))) b!1752169))

(assert (= (and b!1751927 (is-Concat!8303 (regex!3442 rule!422))) b!1752170))

(assert (= (and b!1751927 (is-Star!4770 (regex!3442 rule!422))) b!1752171))

(assert (= (and b!1751927 (is-Union!4770 (regex!3442 rule!422))) b!1752172))

(declare-fun b_lambda!56345 () Bool)

(assert (= b_lambda!56339 (or (and b!1751935 b_free!48353 (= (toChars!4816 (transformation!3442 (h!24678 rules!3447))) (toChars!4816 (transformation!3442 (rule!5454 token!523))))) (and b!1751931 b_free!48357) (and b!1751925 b_free!48361 (= (toChars!4816 (transformation!3442 rule!422)) (toChars!4816 (transformation!3442 (rule!5454 token!523))))) (and b!1752163 b_free!48377 (= (toChars!4816 (transformation!3442 (h!24678 (t!163038 rules!3447)))) (toChars!4816 (transformation!3442 (rule!5454 token!523))))) b_lambda!56345)))

(declare-fun b_lambda!56347 () Bool)

(assert (= b_lambda!56341 (or (and b!1751935 b_free!48353 (= (toChars!4816 (transformation!3442 (h!24678 rules!3447))) (toChars!4816 (transformation!3442 (rule!5454 token!523))))) (and b!1751931 b_free!48357) (and b!1751925 b_free!48361 (= (toChars!4816 (transformation!3442 rule!422)) (toChars!4816 (transformation!3442 (rule!5454 token!523))))) (and b!1752163 b_free!48377 (= (toChars!4816 (transformation!3442 (h!24678 (t!163038 rules!3447)))) (toChars!4816 (transformation!3442 (rule!5454 token!523))))) b_lambda!56347)))

(push 1)

(assert (not b!1752056))

(assert (not b!1752148))

(assert b_and!131173)

(assert (not b!1752088))

(assert (not b!1752150))

(assert b_and!131183)

(assert b_and!131181)

(assert (not b!1752046))

(assert (not b!1752131))

(assert (not b_lambda!56345))

(assert (not b_next!49061))

(assert (not b!1752132))

(assert (not b!1752091))

(assert (not d!534992))

(assert b_and!131137)

(assert (not b!1752068))

(assert (not b!1752049))

(assert b_and!131171)

(assert (not b!1752064))

(assert (not d!535024))

(assert (not d!534994))

(assert (not b_next!49079))

(assert (not b!1752151))

(assert (not b!1752074))

(assert b_and!131141)

(assert (not b_next!49057))

(assert (not b_next!49059))

(assert (not d!535030))

(assert (not d!535028))

(assert (not b!1752161))

(assert (not b!1752044))

(assert (not b!1752172))

(assert (not d!535044))

(assert (not b_lambda!56347))

(assert (not b!1752059))

(assert (not d!535034))

(assert (not b!1752051))

(assert b_and!131133)

(assert (not b!1752146))

(assert (not bm!110394))

(assert (not b_next!49055))

(assert (not b_next!49065))

(assert (not b!1752171))

(assert (not b!1752152))

(assert (not b!1752087))

(assert (not b!1752168))

(assert (not b!1752162))

(assert (not b!1752170))

(assert (not b!1752147))

(assert (not b!1752065))

(assert (not b!1752075))

(assert (not b!1752047))

(assert (not b_next!49063))

(assert (not d!535022))

(assert b_and!131169)

(assert (not b!1752043))

(assert (not b!1752048))

(assert (not d!535020))

(assert (not b!1752090))

(assert (not d!535046))

(assert (not b!1752050))

(assert (not d!535018))

(assert (not tb!105125))

(assert (not b_next!49081))

(assert tp_is_empty!7783)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!49061))

(assert b_and!131137)

(assert b_and!131171)

(assert (not b_next!49079))

(assert b_and!131173)

(assert b_and!131133)

(assert (not b_next!49055))

(assert (not b_next!49065))

(assert (not b_next!49063))

(assert b_and!131183)

(assert b_and!131181)

(assert b_and!131169)

(assert (not b_next!49081))

(assert b_and!131141)

(assert (not b_next!49057))

(assert (not b_next!49059))

(check-sat)

(pop 1)

