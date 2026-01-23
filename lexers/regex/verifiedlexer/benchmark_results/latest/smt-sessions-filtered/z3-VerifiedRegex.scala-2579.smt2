; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138018 () Bool)

(assert start!138018)

(declare-fun b!1473209 () Bool)

(declare-fun b_free!37455 () Bool)

(declare-fun b_next!38159 () Bool)

(assert (=> b!1473209 (= b_free!37455 (not b_next!38159))))

(declare-fun tp!416417 () Bool)

(declare-fun b_and!101309 () Bool)

(assert (=> b!1473209 (= tp!416417 b_and!101309)))

(declare-fun b_free!37457 () Bool)

(declare-fun b_next!38161 () Bool)

(assert (=> b!1473209 (= b_free!37457 (not b_next!38161))))

(declare-fun tp!416429 () Bool)

(declare-fun b_and!101311 () Bool)

(assert (=> b!1473209 (= tp!416429 b_and!101311)))

(declare-fun b!1473230 () Bool)

(declare-fun b_free!37459 () Bool)

(declare-fun b_next!38163 () Bool)

(assert (=> b!1473230 (= b_free!37459 (not b_next!38163))))

(declare-fun tp!416428 () Bool)

(declare-fun b_and!101313 () Bool)

(assert (=> b!1473230 (= tp!416428 b_and!101313)))

(declare-fun b_free!37461 () Bool)

(declare-fun b_next!38165 () Bool)

(assert (=> b!1473230 (= b_free!37461 (not b_next!38165))))

(declare-fun tp!416427 () Bool)

(declare-fun b_and!101315 () Bool)

(assert (=> b!1473230 (= tp!416427 b_and!101315)))

(declare-fun b!1473228 () Bool)

(declare-fun b_free!37463 () Bool)

(declare-fun b_next!38167 () Bool)

(assert (=> b!1473228 (= b_free!37463 (not b_next!38167))))

(declare-fun tp!416426 () Bool)

(declare-fun b_and!101317 () Bool)

(assert (=> b!1473228 (= tp!416426 b_and!101317)))

(declare-fun b_free!37465 () Bool)

(declare-fun b_next!38169 () Bool)

(assert (=> b!1473228 (= b_free!37465 (not b_next!38169))))

(declare-fun tp!416420 () Bool)

(declare-fun b_and!101319 () Bool)

(assert (=> b!1473228 (= tp!416420 b_and!101319)))

(declare-datatypes ((List!15556 0))(
  ( (Nil!15490) (Cons!15490 (h!20891 (_ BitVec 16)) (t!136001 List!15556)) )
))
(declare-datatypes ((TokenValue!2847 0))(
  ( (FloatLiteralValue!5694 (text!20374 List!15556)) (TokenValueExt!2846 (__x!9484 Int)) (Broken!14235 (value!88196 List!15556)) (Object!2912) (End!2847) (Def!2847) (Underscore!2847) (Match!2847) (Else!2847) (Error!2847) (Case!2847) (If!2847) (Extends!2847) (Abstract!2847) (Class!2847) (Val!2847) (DelimiterValue!5694 (del!2907 List!15556)) (KeywordValue!2853 (value!88197 List!15556)) (CommentValue!5694 (value!88198 List!15556)) (WhitespaceValue!5694 (value!88199 List!15556)) (IndentationValue!2847 (value!88200 List!15556)) (String!18490) (Int32!2847) (Broken!14236 (value!88201 List!15556)) (Boolean!2848) (Unit!25196) (OperatorValue!2850 (op!2907 List!15556)) (IdentifierValue!5694 (value!88202 List!15556)) (IdentifierValue!5695 (value!88203 List!15556)) (WhitespaceValue!5695 (value!88204 List!15556)) (True!5694) (False!5694) (Broken!14237 (value!88205 List!15556)) (Broken!14238 (value!88206 List!15556)) (True!5695) (RightBrace!2847) (RightBracket!2847) (Colon!2847) (Null!2847) (Comma!2847) (LeftBracket!2847) (False!5695) (LeftBrace!2847) (ImaginaryLiteralValue!2847 (text!20375 List!15556)) (StringLiteralValue!8541 (value!88207 List!15556)) (EOFValue!2847 (value!88208 List!15556)) (IdentValue!2847 (value!88209 List!15556)) (DelimiterValue!5695 (value!88210 List!15556)) (DedentValue!2847 (value!88211 List!15556)) (NewLineValue!2847 (value!88212 List!15556)) (IntegerValue!8541 (value!88213 (_ BitVec 32)) (text!20376 List!15556)) (IntegerValue!8542 (value!88214 Int) (text!20377 List!15556)) (Times!2847) (Or!2847) (Equal!2847) (Minus!2847) (Broken!14239 (value!88215 List!15556)) (And!2847) (Div!2847) (LessEqual!2847) (Mod!2847) (Concat!6918) (Not!2847) (Plus!2847) (SpaceValue!2847 (value!88216 List!15556)) (IntegerValue!8543 (value!88217 Int) (text!20378 List!15556)) (StringLiteralValue!8542 (text!20379 List!15556)) (FloatLiteralValue!5695 (text!20380 List!15556)) (BytesLiteralValue!2847 (value!88218 List!15556)) (CommentValue!5695 (value!88219 List!15556)) (StringLiteralValue!8543 (value!88220 List!15556)) (ErrorTokenValue!2847 (msg!2908 List!15556)) )
))
(declare-datatypes ((C!8320 0))(
  ( (C!8321 (val!4730 Int)) )
))
(declare-datatypes ((Regex!4071 0))(
  ( (ElementMatch!4071 (c!242383 C!8320)) (Concat!6919 (regOne!8654 Regex!4071) (regTwo!8654 Regex!4071)) (EmptyExpr!4071) (Star!4071 (reg!4400 Regex!4071)) (EmptyLang!4071) (Union!4071 (regOne!8655 Regex!4071) (regTwo!8655 Regex!4071)) )
))
(declare-datatypes ((String!18491 0))(
  ( (String!18492 (value!88221 String)) )
))
(declare-datatypes ((List!15557 0))(
  ( (Nil!15491) (Cons!15491 (h!20892 C!8320) (t!136002 List!15557)) )
))
(declare-datatypes ((IArray!10569 0))(
  ( (IArray!10570 (innerList!5342 List!15557)) )
))
(declare-datatypes ((Conc!5282 0))(
  ( (Node!5282 (left!13095 Conc!5282) (right!13425 Conc!5282) (csize!10794 Int) (cheight!5493 Int)) (Leaf!7862 (xs!8037 IArray!10569) (csize!10795 Int)) (Empty!5282) )
))
(declare-datatypes ((BalanceConc!10504 0))(
  ( (BalanceConc!10505 (c!242384 Conc!5282)) )
))
(declare-datatypes ((TokenValueInjection!5354 0))(
  ( (TokenValueInjection!5355 (toValue!4084 Int) (toChars!3943 Int)) )
))
(declare-datatypes ((Rule!5314 0))(
  ( (Rule!5315 (regex!2757 Regex!4071) (tag!3021 String!18491) (isSeparator!2757 Bool) (transformation!2757 TokenValueInjection!5354)) )
))
(declare-datatypes ((Token!5176 0))(
  ( (Token!5177 (value!88222 TokenValue!2847) (rule!4534 Rule!5314) (size!12569 Int) (originalCharacters!3619 List!15557)) )
))
(declare-datatypes ((List!15558 0))(
  ( (Nil!15492) (Cons!15492 (h!20893 Token!5176) (t!136003 List!15558)) )
))
(declare-fun l2!3105 () List!15558)

(declare-fun tp!416423 () Bool)

(declare-fun e!941034 () Bool)

(declare-fun b!1473205 () Bool)

(declare-fun e!941033 () Bool)

(declare-fun inv!20697 (String!18491) Bool)

(declare-fun inv!20700 (TokenValueInjection!5354) Bool)

(assert (=> b!1473205 (= e!941033 (and tp!416423 (inv!20697 (tag!3021 (rule!4534 (h!20893 l2!3105)))) (inv!20700 (transformation!2757 (rule!4534 (h!20893 l2!3105)))) e!941034))))

(declare-datatypes ((List!15559 0))(
  ( (Nil!15493) (Cons!15493 (h!20894 Rule!5314) (t!136004 List!15559)) )
))
(declare-fun rules!4290 () List!15559)

(declare-fun e!941036 () Bool)

(declare-fun lt!511953 () List!15558)

(declare-datatypes ((LexerInterface!2413 0))(
  ( (LexerInterfaceExt!2410 (__x!9485 Int)) (Lexer!2411) )
))
(declare-fun thiss!27374 () LexerInterface!2413)

(declare-fun b!1473206 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!273 (LexerInterface!2413 List!15558 List!15559) Bool)

(assert (=> b!1473206 (= e!941036 (tokensListTwoByTwoPredicateSeparableList!273 thiss!27374 lt!511953 rules!4290))))

(declare-fun e!941048 () Bool)

(declare-fun b!1473207 () Bool)

(declare-fun tp!416422 () Bool)

(declare-fun e!941041 () Bool)

(assert (=> b!1473207 (= e!941041 (and tp!416422 (inv!20697 (tag!3021 (h!20894 rules!4290))) (inv!20700 (transformation!2757 (h!20894 rules!4290))) e!941048))))

(declare-fun b!1473208 () Bool)

(declare-fun res!665864 () Bool)

(declare-fun e!941042 () Bool)

(assert (=> b!1473208 (=> (not res!665864) (not e!941042))))

(declare-fun l1!3136 () List!15558)

(declare-fun isEmpty!9677 (List!15558) Bool)

(assert (=> b!1473208 (= res!665864 (not (isEmpty!9677 l1!3136)))))

(declare-fun e!941052 () Bool)

(assert (=> b!1473209 (= e!941052 (and tp!416417 tp!416429))))

(declare-fun b!1473210 () Bool)

(declare-fun e!941049 () Bool)

(declare-fun tp!416425 () Bool)

(assert (=> b!1473210 (= e!941049 (and e!941041 tp!416425))))

(declare-fun e!941050 () Bool)

(declare-fun e!941039 () Bool)

(declare-fun tp!416421 () Bool)

(declare-fun b!1473211 () Bool)

(declare-fun inv!20701 (Token!5176) Bool)

(assert (=> b!1473211 (= e!941039 (and (inv!20701 (h!20893 l1!3136)) e!941050 tp!416421))))

(declare-fun b!1473213 () Bool)

(declare-fun res!665876 () Bool)

(declare-fun e!941045 () Bool)

(assert (=> b!1473213 (=> res!665876 e!941045)))

(assert (=> b!1473213 (= res!665876 (not (tokensListTwoByTwoPredicateSeparableList!273 thiss!27374 (t!136003 l1!3136) rules!4290)))))

(declare-fun b!1473214 () Bool)

(assert (=> b!1473214 (= e!941042 (not e!941045))))

(declare-fun res!665875 () Bool)

(assert (=> b!1473214 (=> res!665875 e!941045)))

(declare-fun lt!511950 () Token!5176)

(declare-fun lt!511949 () Token!5176)

(declare-fun separableTokensPredicate!556 (LexerInterface!2413 Token!5176 Token!5176 List!15559) Bool)

(assert (=> b!1473214 (= res!665875 (not (separableTokensPredicate!556 thiss!27374 lt!511950 lt!511949 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1272 (LexerInterface!2413 List!15559 Token!5176) Bool)

(assert (=> b!1473214 (rulesProduceIndividualToken!1272 thiss!27374 rules!4290 lt!511949)))

(declare-datatypes ((Unit!25197 0))(
  ( (Unit!25198) )
))
(declare-fun lt!511952 () Unit!25197)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!453 (LexerInterface!2413 List!15559 List!15558 Token!5176) Unit!25197)

(assert (=> b!1473214 (= lt!511952 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!453 thiss!27374 rules!4290 l2!3105 lt!511949))))

(declare-fun head!3051 (List!15558) Token!5176)

(assert (=> b!1473214 (= lt!511949 (head!3051 l2!3105))))

(assert (=> b!1473214 (rulesProduceIndividualToken!1272 thiss!27374 rules!4290 lt!511950)))

(declare-fun lt!511946 () Unit!25197)

(assert (=> b!1473214 (= lt!511946 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!453 thiss!27374 rules!4290 l1!3136 lt!511950))))

(declare-fun last!315 (List!15558) Token!5176)

(assert (=> b!1473214 (= lt!511950 (last!315 l1!3136))))

(declare-fun b!1473215 () Bool)

(declare-fun res!665873 () Bool)

(assert (=> b!1473215 (=> res!665873 e!941045)))

(declare-fun rulesProduceEachTokenIndividuallyList!780 (LexerInterface!2413 List!15559 List!15558) Bool)

(assert (=> b!1473215 (= res!665873 (not (rulesProduceEachTokenIndividuallyList!780 thiss!27374 rules!4290 (t!136003 l1!3136))))))

(declare-fun b!1473216 () Bool)

(declare-fun res!665865 () Bool)

(assert (=> b!1473216 (=> res!665865 e!941045)))

(assert (=> b!1473216 (= res!665865 (isEmpty!9677 (t!136003 l1!3136)))))

(declare-fun b!1473217 () Bool)

(declare-fun res!665879 () Bool)

(assert (=> b!1473217 (=> (not res!665879) (not e!941042))))

(assert (=> b!1473217 (= res!665879 (tokensListTwoByTwoPredicateSeparableList!273 thiss!27374 l1!3136 rules!4290))))

(declare-fun tp!416430 () Bool)

(declare-fun b!1473218 () Bool)

(declare-fun e!941043 () Bool)

(assert (=> b!1473218 (= e!941043 (and tp!416430 (inv!20697 (tag!3021 (rule!4534 (h!20893 l1!3136)))) (inv!20700 (transformation!2757 (rule!4534 (h!20893 l1!3136)))) e!941052))))

(declare-fun b!1473219 () Bool)

(declare-fun e!941047 () Bool)

(assert (=> b!1473219 (= e!941045 e!941047)))

(declare-fun res!665874 () Bool)

(assert (=> b!1473219 (=> res!665874 e!941047)))

(declare-fun lt!511951 () Token!5176)

(assert (=> b!1473219 (= res!665874 (not (separableTokensPredicate!556 thiss!27374 lt!511951 lt!511949 rules!4290)))))

(assert (=> b!1473219 (rulesProduceIndividualToken!1272 thiss!27374 rules!4290 lt!511951)))

(declare-fun lt!511945 () Unit!25197)

(assert (=> b!1473219 (= lt!511945 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!453 thiss!27374 rules!4290 (t!136003 l1!3136) lt!511951))))

(assert (=> b!1473219 (= lt!511951 (last!315 (t!136003 l1!3136)))))

(declare-fun e!941046 () Bool)

(declare-fun tp!416424 () Bool)

(declare-fun b!1473220 () Bool)

(declare-fun e!941035 () Bool)

(assert (=> b!1473220 (= e!941046 (and (inv!20701 (h!20893 l2!3105)) e!941035 tp!416424))))

(declare-fun b!1473221 () Bool)

(declare-fun res!665870 () Bool)

(assert (=> b!1473221 (=> (not res!665870) (not e!941042))))

(declare-fun isEmpty!9678 (List!15559) Bool)

(assert (=> b!1473221 (= res!665870 (not (isEmpty!9678 rules!4290)))))

(declare-fun b!1473222 () Bool)

(declare-fun res!665868 () Bool)

(assert (=> b!1473222 (=> (not res!665868) (not e!941042))))

(assert (=> b!1473222 (= res!665868 (not (isEmpty!9677 l2!3105)))))

(declare-fun b!1473212 () Bool)

(declare-fun tp!416419 () Bool)

(declare-fun inv!21 (TokenValue!2847) Bool)

(assert (=> b!1473212 (= e!941035 (and (inv!21 (value!88222 (h!20893 l2!3105))) e!941033 tp!416419))))

(declare-fun res!665867 () Bool)

(assert (=> start!138018 (=> (not res!665867) (not e!941042))))

(get-info :version)

(assert (=> start!138018 (= res!665867 ((_ is Lexer!2411) thiss!27374))))

(assert (=> start!138018 e!941042))

(assert (=> start!138018 true))

(assert (=> start!138018 e!941049))

(assert (=> start!138018 e!941039))

(assert (=> start!138018 e!941046))

(declare-fun b!1473223 () Bool)

(assert (=> b!1473223 (= e!941047 true)))

(assert (=> b!1473223 e!941036))

(declare-fun res!665866 () Bool)

(assert (=> b!1473223 (=> (not res!665866) (not e!941036))))

(assert (=> b!1473223 (= res!665866 (rulesProduceEachTokenIndividuallyList!780 thiss!27374 rules!4290 lt!511953))))

(declare-fun ++!4183 (List!15558 List!15558) List!15558)

(assert (=> b!1473223 (= lt!511953 (++!4183 (t!136003 l1!3136) l2!3105))))

(declare-fun lt!511948 () Unit!25197)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!60 (LexerInterface!2413 List!15559 List!15558 List!15558) Unit!25197)

(assert (=> b!1473223 (= lt!511948 (lemmaRulesProduceEachTokenIndividuallyConcat!60 thiss!27374 rules!4290 (t!136003 l1!3136) l2!3105))))

(declare-fun lt!511947 () Unit!25197)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!60 (LexerInterface!2413 List!15558 List!15558 List!15559) Unit!25197)

(assert (=> b!1473223 (= lt!511947 (tokensListTwoByTwoPredicateConcatSeparableTokensList!60 thiss!27374 (t!136003 l1!3136) l2!3105 rules!4290))))

(declare-fun b!1473224 () Bool)

(declare-fun res!665877 () Bool)

(assert (=> b!1473224 (=> (not res!665877) (not e!941042))))

(declare-fun rulesInvariant!2202 (LexerInterface!2413 List!15559) Bool)

(assert (=> b!1473224 (= res!665877 (rulesInvariant!2202 thiss!27374 rules!4290))))

(declare-fun tp!416418 () Bool)

(declare-fun b!1473225 () Bool)

(assert (=> b!1473225 (= e!941050 (and (inv!21 (value!88222 (h!20893 l1!3136))) e!941043 tp!416418))))

(declare-fun b!1473226 () Bool)

(declare-fun res!665871 () Bool)

(assert (=> b!1473226 (=> (not res!665871) (not e!941042))))

(assert (=> b!1473226 (= res!665871 (rulesProduceEachTokenIndividuallyList!780 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1473227 () Bool)

(declare-fun res!665878 () Bool)

(assert (=> b!1473227 (=> (not res!665878) (not e!941042))))

(assert (=> b!1473227 (= res!665878 (rulesProduceEachTokenIndividuallyList!780 thiss!27374 rules!4290 l1!3136))))

(assert (=> b!1473228 (= e!941048 (and tp!416426 tp!416420))))

(declare-fun b!1473229 () Bool)

(declare-fun res!665872 () Bool)

(assert (=> b!1473229 (=> res!665872 e!941045)))

(assert (=> b!1473229 (= res!665872 (not ((_ is Cons!15492) l1!3136)))))

(assert (=> b!1473230 (= e!941034 (and tp!416428 tp!416427))))

(declare-fun b!1473231 () Bool)

(declare-fun res!665869 () Bool)

(assert (=> b!1473231 (=> (not res!665869) (not e!941042))))

(assert (=> b!1473231 (= res!665869 (tokensListTwoByTwoPredicateSeparableList!273 thiss!27374 l2!3105 rules!4290))))

(assert (= (and start!138018 res!665867) b!1473221))

(assert (= (and b!1473221 res!665870) b!1473224))

(assert (= (and b!1473224 res!665877) b!1473227))

(assert (= (and b!1473227 res!665878) b!1473226))

(assert (= (and b!1473226 res!665871) b!1473217))

(assert (= (and b!1473217 res!665879) b!1473231))

(assert (= (and b!1473231 res!665869) b!1473208))

(assert (= (and b!1473208 res!665864) b!1473222))

(assert (= (and b!1473222 res!665868) b!1473214))

(assert (= (and b!1473214 (not res!665875)) b!1473229))

(assert (= (and b!1473229 (not res!665872)) b!1473216))

(assert (= (and b!1473216 (not res!665865)) b!1473215))

(assert (= (and b!1473215 (not res!665873)) b!1473213))

(assert (= (and b!1473213 (not res!665876)) b!1473219))

(assert (= (and b!1473219 (not res!665874)) b!1473223))

(assert (= (and b!1473223 res!665866) b!1473206))

(assert (= b!1473207 b!1473228))

(assert (= b!1473210 b!1473207))

(assert (= (and start!138018 ((_ is Cons!15493) rules!4290)) b!1473210))

(assert (= b!1473218 b!1473209))

(assert (= b!1473225 b!1473218))

(assert (= b!1473211 b!1473225))

(assert (= (and start!138018 ((_ is Cons!15492) l1!3136)) b!1473211))

(assert (= b!1473205 b!1473230))

(assert (= b!1473212 b!1473205))

(assert (= b!1473220 b!1473212))

(assert (= (and start!138018 ((_ is Cons!15492) l2!3105)) b!1473220))

(declare-fun m!1717199 () Bool)

(assert (=> b!1473219 m!1717199))

(declare-fun m!1717201 () Bool)

(assert (=> b!1473219 m!1717201))

(declare-fun m!1717203 () Bool)

(assert (=> b!1473219 m!1717203))

(declare-fun m!1717205 () Bool)

(assert (=> b!1473219 m!1717205))

(declare-fun m!1717207 () Bool)

(assert (=> b!1473226 m!1717207))

(declare-fun m!1717209 () Bool)

(assert (=> b!1473225 m!1717209))

(declare-fun m!1717211 () Bool)

(assert (=> b!1473205 m!1717211))

(declare-fun m!1717213 () Bool)

(assert (=> b!1473205 m!1717213))

(declare-fun m!1717215 () Bool)

(assert (=> b!1473206 m!1717215))

(declare-fun m!1717217 () Bool)

(assert (=> b!1473211 m!1717217))

(declare-fun m!1717219 () Bool)

(assert (=> b!1473221 m!1717219))

(declare-fun m!1717221 () Bool)

(assert (=> b!1473208 m!1717221))

(declare-fun m!1717223 () Bool)

(assert (=> b!1473218 m!1717223))

(declare-fun m!1717225 () Bool)

(assert (=> b!1473218 m!1717225))

(declare-fun m!1717227 () Bool)

(assert (=> b!1473216 m!1717227))

(declare-fun m!1717229 () Bool)

(assert (=> b!1473215 m!1717229))

(declare-fun m!1717231 () Bool)

(assert (=> b!1473222 m!1717231))

(declare-fun m!1717233 () Bool)

(assert (=> b!1473231 m!1717233))

(declare-fun m!1717235 () Bool)

(assert (=> b!1473224 m!1717235))

(declare-fun m!1717237 () Bool)

(assert (=> b!1473223 m!1717237))

(declare-fun m!1717239 () Bool)

(assert (=> b!1473223 m!1717239))

(declare-fun m!1717241 () Bool)

(assert (=> b!1473223 m!1717241))

(declare-fun m!1717243 () Bool)

(assert (=> b!1473223 m!1717243))

(declare-fun m!1717245 () Bool)

(assert (=> b!1473217 m!1717245))

(declare-fun m!1717247 () Bool)

(assert (=> b!1473227 m!1717247))

(declare-fun m!1717249 () Bool)

(assert (=> b!1473213 m!1717249))

(declare-fun m!1717251 () Bool)

(assert (=> b!1473207 m!1717251))

(declare-fun m!1717253 () Bool)

(assert (=> b!1473207 m!1717253))

(declare-fun m!1717255 () Bool)

(assert (=> b!1473214 m!1717255))

(declare-fun m!1717257 () Bool)

(assert (=> b!1473214 m!1717257))

(declare-fun m!1717259 () Bool)

(assert (=> b!1473214 m!1717259))

(declare-fun m!1717261 () Bool)

(assert (=> b!1473214 m!1717261))

(declare-fun m!1717263 () Bool)

(assert (=> b!1473214 m!1717263))

(declare-fun m!1717265 () Bool)

(assert (=> b!1473214 m!1717265))

(declare-fun m!1717267 () Bool)

(assert (=> b!1473214 m!1717267))

(declare-fun m!1717269 () Bool)

(assert (=> b!1473220 m!1717269))

(declare-fun m!1717271 () Bool)

(assert (=> b!1473212 m!1717271))

(check-sat (not b!1473220) (not b!1473215) (not b!1473216) (not b!1473227) (not b_next!38159) (not b!1473211) b_and!101317 (not b_next!38165) (not b!1473208) (not b!1473212) b_and!101311 (not b!1473223) (not b!1473221) (not b_next!38161) (not b!1473207) (not b!1473214) (not b!1473231) b_and!101319 (not b!1473226) (not b_next!38169) (not b!1473218) (not b!1473219) (not b!1473206) b_and!101315 (not b!1473225) (not b!1473213) b_and!101313 (not b!1473205) (not b!1473222) (not b!1473217) (not b!1473210) (not b!1473224) b_and!101309 (not b_next!38167) (not b_next!38163))
(check-sat (not b_next!38161) b_and!101315 b_and!101313 (not b_next!38159) b_and!101317 (not b_next!38165) b_and!101311 b_and!101319 (not b_next!38169) b_and!101309 (not b_next!38167) (not b_next!38163))
