; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!406980 () Bool)

(assert start!406980)

(declare-fun b!4250468 () Bool)

(declare-fun b_free!126347 () Bool)

(declare-fun b_next!127051 () Bool)

(assert (=> b!4250468 (= b_free!126347 (not b_next!127051))))

(declare-fun tp!1304235 () Bool)

(declare-fun b_and!336949 () Bool)

(assert (=> b!4250468 (= tp!1304235 b_and!336949)))

(declare-fun b_free!126349 () Bool)

(declare-fun b_next!127053 () Bool)

(assert (=> b!4250468 (= b_free!126349 (not b_next!127053))))

(declare-fun tp!1304231 () Bool)

(declare-fun b_and!336951 () Bool)

(assert (=> b!4250468 (= tp!1304231 b_and!336951)))

(declare-fun b!4250449 () Bool)

(declare-fun b_free!126351 () Bool)

(declare-fun b_next!127055 () Bool)

(assert (=> b!4250449 (= b_free!126351 (not b_next!127055))))

(declare-fun tp!1304227 () Bool)

(declare-fun b_and!336953 () Bool)

(assert (=> b!4250449 (= tp!1304227 b_and!336953)))

(declare-fun b_free!126353 () Bool)

(declare-fun b_next!127057 () Bool)

(assert (=> b!4250449 (= b_free!126353 (not b_next!127057))))

(declare-fun tp!1304237 () Bool)

(declare-fun b_and!336955 () Bool)

(assert (=> b!4250449 (= tp!1304237 b_and!336955)))

(declare-fun e!2640040 () Bool)

(assert (=> b!4250449 (= e!2640040 (and tp!1304227 tp!1304237))))

(declare-fun b!4250450 () Bool)

(declare-fun e!2640048 () Bool)

(declare-fun e!2640044 () Bool)

(assert (=> b!4250450 (= e!2640048 e!2640044)))

(declare-fun res!1747332 () Bool)

(assert (=> b!4250450 (=> (not res!1747332) (not e!2640044))))

(declare-datatypes ((List!47221 0))(
  ( (Nil!47097) (Cons!47097 (h!52517 (_ BitVec 16)) (t!352314 List!47221)) )
))
(declare-datatypes ((TokenValue!8203 0))(
  ( (FloatLiteralValue!16406 (text!57866 List!47221)) (TokenValueExt!8202 (__x!28629 Int)) (Broken!41015 (value!247742 List!47221)) (Object!8326) (End!8203) (Def!8203) (Underscore!8203) (Match!8203) (Else!8203) (Error!8203) (Case!8203) (If!8203) (Extends!8203) (Abstract!8203) (Class!8203) (Val!8203) (DelimiterValue!16406 (del!8263 List!47221)) (KeywordValue!8209 (value!247743 List!47221)) (CommentValue!16406 (value!247744 List!47221)) (WhitespaceValue!16406 (value!247745 List!47221)) (IndentationValue!8203 (value!247746 List!47221)) (String!54946) (Int32!8203) (Broken!41016 (value!247747 List!47221)) (Boolean!8204) (Unit!66065) (OperatorValue!8206 (op!8263 List!47221)) (IdentifierValue!16406 (value!247748 List!47221)) (IdentifierValue!16407 (value!247749 List!47221)) (WhitespaceValue!16407 (value!247750 List!47221)) (True!16406) (False!16406) (Broken!41017 (value!247751 List!47221)) (Broken!41018 (value!247752 List!47221)) (True!16407) (RightBrace!8203) (RightBracket!8203) (Colon!8203) (Null!8203) (Comma!8203) (LeftBracket!8203) (False!16407) (LeftBrace!8203) (ImaginaryLiteralValue!8203 (text!57867 List!47221)) (StringLiteralValue!24609 (value!247753 List!47221)) (EOFValue!8203 (value!247754 List!47221)) (IdentValue!8203 (value!247755 List!47221)) (DelimiterValue!16407 (value!247756 List!47221)) (DedentValue!8203 (value!247757 List!47221)) (NewLineValue!8203 (value!247758 List!47221)) (IntegerValue!24609 (value!247759 (_ BitVec 32)) (text!57868 List!47221)) (IntegerValue!24610 (value!247760 Int) (text!57869 List!47221)) (Times!8203) (Or!8203) (Equal!8203) (Minus!8203) (Broken!41019 (value!247761 List!47221)) (And!8203) (Div!8203) (LessEqual!8203) (Mod!8203) (Concat!21081) (Not!8203) (Plus!8203) (SpaceValue!8203 (value!247762 List!47221)) (IntegerValue!24611 (value!247763 Int) (text!57870 List!47221)) (StringLiteralValue!24610 (text!57871 List!47221)) (FloatLiteralValue!16407 (text!57872 List!47221)) (BytesLiteralValue!8203 (value!247764 List!47221)) (CommentValue!16407 (value!247765 List!47221)) (StringLiteralValue!24611 (value!247766 List!47221)) (ErrorTokenValue!8203 (msg!8264 List!47221)) )
))
(declare-datatypes ((C!25954 0))(
  ( (C!25955 (val!15167 Int)) )
))
(declare-datatypes ((List!47222 0))(
  ( (Nil!47098) (Cons!47098 (h!52518 C!25954) (t!352315 List!47222)) )
))
(declare-datatypes ((IArray!28373 0))(
  ( (IArray!28374 (innerList!14244 List!47222)) )
))
(declare-datatypes ((Conc!14184 0))(
  ( (Node!14184 (left!34933 Conc!14184) (right!35263 Conc!14184) (csize!28598 Int) (cheight!14395 Int)) (Leaf!21930 (xs!17490 IArray!28373) (csize!28599 Int)) (Empty!14184) )
))
(declare-datatypes ((BalanceConc!27962 0))(
  ( (BalanceConc!27963 (c!721777 Conc!14184)) )
))
(declare-datatypes ((TokenValueInjection!15834 0))(
  ( (TokenValueInjection!15835 (toValue!10745 Int) (toChars!10604 Int)) )
))
(declare-datatypes ((Regex!12878 0))(
  ( (ElementMatch!12878 (c!721778 C!25954)) (Concat!21082 (regOne!26268 Regex!12878) (regTwo!26268 Regex!12878)) (EmptyExpr!12878) (Star!12878 (reg!13207 Regex!12878)) (EmptyLang!12878) (Union!12878 (regOne!26269 Regex!12878) (regTwo!26269 Regex!12878)) )
))
(declare-datatypes ((String!54947 0))(
  ( (String!54948 (value!247767 String)) )
))
(declare-datatypes ((Rule!15746 0))(
  ( (Rule!15747 (regex!7973 Regex!12878) (tag!8837 String!54947) (isSeparator!7973 Bool) (transformation!7973 TokenValueInjection!15834)) )
))
(declare-datatypes ((Token!14572 0))(
  ( (Token!14573 (value!247768 TokenValue!8203) (rule!11107 Rule!15746) (size!34478 Int) (originalCharacters!8317 List!47222)) )
))
(declare-datatypes ((tuple2!44658 0))(
  ( (tuple2!44659 (_1!25463 Token!14572) (_2!25463 List!47222)) )
))
(declare-datatypes ((Option!10107 0))(
  ( (None!10106) (Some!10106 (v!41064 tuple2!44658)) )
))
(declare-fun lt!1508499 () Option!10107)

(declare-fun lt!1508500 () Option!10107)

(assert (=> b!4250450 (= res!1747332 (and (is-Some!10106 lt!1508499) (is-Some!10106 lt!1508500)))))

(declare-datatypes ((LexerInterface!7568 0))(
  ( (LexerInterfaceExt!7565 (__x!28630 Int)) (Lexer!7566) )
))
(declare-fun thiss!21641 () LexerInterface!7568)

(declare-datatypes ((List!47223 0))(
  ( (Nil!47099) (Cons!47099 (h!52519 Rule!15746) (t!352316 List!47223)) )
))
(declare-fun rules!2971 () List!47223)

(declare-fun shorterInput!62 () List!47222)

(declare-fun maxPrefix!4524 (LexerInterface!7568 List!47223 List!47222) Option!10107)

(assert (=> b!4250450 (= lt!1508500 (maxPrefix!4524 thiss!21641 rules!2971 shorterInput!62))))

(declare-fun longerInput!62 () List!47222)

(assert (=> b!4250450 (= lt!1508499 (maxPrefix!4524 thiss!21641 rules!2971 longerInput!62))))

(declare-fun b!4250451 () Bool)

(declare-fun res!1747334 () Bool)

(assert (=> b!4250451 (=> (not res!1747334) (not e!2640048))))

(declare-fun isEmpty!27864 (List!47223) Bool)

(assert (=> b!4250451 (= res!1747334 (not (isEmpty!27864 rules!2971)))))

(declare-fun b!4250452 () Bool)

(declare-fun res!1747335 () Bool)

(declare-fun e!2640045 () Bool)

(assert (=> b!4250452 (=> (not res!1747335) (not e!2640045))))

(declare-fun lt!1508497 () List!47222)

(declare-fun lt!1508498 () List!47222)

(assert (=> b!4250452 (= res!1747335 (and (= (_1!25463 (v!41064 lt!1508499)) (_1!25463 (v!41064 lt!1508500))) (= lt!1508497 lt!1508498)))))

(declare-fun b!4250453 () Bool)

(declare-fun res!1747330 () Bool)

(assert (=> b!4250453 (=> (not res!1747330) (not e!2640048))))

(declare-fun isEmpty!27865 (List!47222) Bool)

(assert (=> b!4250453 (= res!1747330 (not (isEmpty!27865 longerInput!62)))))

(declare-fun b!4250455 () Bool)

(declare-fun e!2640052 () Bool)

(declare-fun tp_is_empty!22747 () Bool)

(declare-fun tp!1304236 () Bool)

(assert (=> b!4250455 (= e!2640052 (and tp_is_empty!22747 tp!1304236))))

(declare-fun e!2640037 () Bool)

(declare-fun b!4250456 () Bool)

(declare-datatypes ((List!47224 0))(
  ( (Nil!47100) (Cons!47100 (h!52520 Token!14572) (t!352317 List!47224)) )
))
(declare-fun tokens!592 () List!47224)

(declare-fun tp!1304229 () Bool)

(declare-fun e!2640038 () Bool)

(declare-fun inv!21 (TokenValue!8203) Bool)

(assert (=> b!4250456 (= e!2640038 (and (inv!21 (value!247768 (h!52520 tokens!592))) e!2640037 tp!1304229))))

(declare-fun b!4250457 () Bool)

(declare-fun e!2640049 () Bool)

(declare-fun tp!1304234 () Bool)

(assert (=> b!4250457 (= e!2640049 (and tp_is_empty!22747 tp!1304234))))

(declare-fun b!4250458 () Bool)

(declare-fun res!1747328 () Bool)

(assert (=> b!4250458 (=> (not res!1747328) (not e!2640045))))

(declare-fun size!34479 (List!47222) Int)

(assert (=> b!4250458 (= res!1747328 (> (size!34479 (_2!25463 (v!41064 lt!1508499))) (size!34479 (_2!25463 (v!41064 lt!1508500)))))))

(declare-fun b!4250459 () Bool)

(declare-fun e!2640046 () Bool)

(assert (=> b!4250459 (= e!2640044 e!2640046)))

(declare-fun res!1747326 () Bool)

(assert (=> b!4250459 (=> (not res!1747326) (not e!2640046))))

(declare-fun ++!11982 (List!47222 List!47222) List!47222)

(assert (=> b!4250459 (= res!1747326 (= (++!11982 lt!1508497 (_2!25463 (v!41064 lt!1508499))) longerInput!62))))

(declare-fun list!16967 (BalanceConc!27962) List!47222)

(declare-fun charsOf!5313 (Token!14572) BalanceConc!27962)

(assert (=> b!4250459 (= lt!1508497 (list!16967 (charsOf!5313 (_1!25463 (v!41064 lt!1508499)))))))

(declare-fun b!4250460 () Bool)

(declare-fun res!1747327 () Bool)

(assert (=> b!4250460 (=> (not res!1747327) (not e!2640048))))

(declare-fun rulesInvariant!6679 (LexerInterface!7568 List!47223) Bool)

(assert (=> b!4250460 (= res!1747327 (rulesInvariant!6679 thiss!21641 rules!2971))))

(declare-fun e!2640039 () Bool)

(declare-fun tp!1304233 () Bool)

(declare-fun b!4250461 () Bool)

(declare-fun inv!61874 (Token!14572) Bool)

(assert (=> b!4250461 (= e!2640039 (and (inv!61874 (h!52520 tokens!592)) e!2640038 tp!1304233))))

(declare-fun tp!1304232 () Bool)

(declare-fun b!4250462 () Bool)

(declare-fun inv!61871 (String!54947) Bool)

(declare-fun inv!61875 (TokenValueInjection!15834) Bool)

(assert (=> b!4250462 (= e!2640037 (and tp!1304232 (inv!61871 (tag!8837 (rule!11107 (h!52520 tokens!592)))) (inv!61875 (transformation!7973 (rule!11107 (h!52520 tokens!592)))) e!2640040))))

(declare-fun b!4250463 () Bool)

(declare-fun res!1747333 () Bool)

(assert (=> b!4250463 (=> (not res!1747333) (not e!2640048))))

(declare-fun suffix!1284 () List!47222)

(declare-datatypes ((tuple2!44660 0))(
  ( (tuple2!44661 (_1!25464 List!47224) (_2!25464 List!47222)) )
))
(declare-fun lexList!2074 (LexerInterface!7568 List!47223 List!47222) tuple2!44660)

(assert (=> b!4250463 (= res!1747333 (= (lexList!2074 thiss!21641 rules!2971 longerInput!62) (tuple2!44661 tokens!592 suffix!1284)))))

(declare-fun b!4250464 () Bool)

(assert (=> b!4250464 (= e!2640045 (isEmpty!27865 (_2!25463 (v!41064 lt!1508499))))))

(declare-fun b!4250465 () Bool)

(assert (=> b!4250465 (= e!2640046 e!2640045)))

(declare-fun res!1747329 () Bool)

(assert (=> b!4250465 (=> (not res!1747329) (not e!2640045))))

(assert (=> b!4250465 (= res!1747329 (= (++!11982 lt!1508498 (_2!25463 (v!41064 lt!1508500))) shorterInput!62))))

(assert (=> b!4250465 (= lt!1508498 (list!16967 (charsOf!5313 (_1!25463 (v!41064 lt!1508500)))))))

(declare-fun tp!1304230 () Bool)

(declare-fun e!2640051 () Bool)

(declare-fun e!2640053 () Bool)

(declare-fun b!4250466 () Bool)

(assert (=> b!4250466 (= e!2640051 (and tp!1304230 (inv!61871 (tag!8837 (h!52519 rules!2971))) (inv!61875 (transformation!7973 (h!52519 rules!2971))) e!2640053))))

(declare-fun b!4250467 () Bool)

(declare-fun res!1747325 () Bool)

(assert (=> b!4250467 (=> (not res!1747325) (not e!2640048))))

(assert (=> b!4250467 (= res!1747325 (> (size!34479 longerInput!62) (size!34479 shorterInput!62)))))

(assert (=> b!4250468 (= e!2640053 (and tp!1304235 tp!1304231))))

(declare-fun b!4250469 () Bool)

(declare-fun e!2640047 () Bool)

(declare-fun tp!1304238 () Bool)

(assert (=> b!4250469 (= e!2640047 (and e!2640051 tp!1304238))))

(declare-fun b!4250454 () Bool)

(declare-fun e!2640050 () Bool)

(declare-fun tp!1304228 () Bool)

(assert (=> b!4250454 (= e!2640050 (and tp_is_empty!22747 tp!1304228))))

(declare-fun res!1747331 () Bool)

(assert (=> start!406980 (=> (not res!1747331) (not e!2640048))))

(assert (=> start!406980 (= res!1747331 (is-Lexer!7566 thiss!21641))))

(assert (=> start!406980 e!2640048))

(assert (=> start!406980 true))

(assert (=> start!406980 e!2640052))

(assert (=> start!406980 e!2640050))

(assert (=> start!406980 e!2640039))

(assert (=> start!406980 e!2640047))

(assert (=> start!406980 e!2640049))

(assert (= (and start!406980 res!1747331) b!4250451))

(assert (= (and b!4250451 res!1747334) b!4250460))

(assert (= (and b!4250460 res!1747327) b!4250453))

(assert (= (and b!4250453 res!1747330) b!4250467))

(assert (= (and b!4250467 res!1747325) b!4250463))

(assert (= (and b!4250463 res!1747333) b!4250450))

(assert (= (and b!4250450 res!1747332) b!4250459))

(assert (= (and b!4250459 res!1747326) b!4250465))

(assert (= (and b!4250465 res!1747329) b!4250452))

(assert (= (and b!4250452 res!1747335) b!4250458))

(assert (= (and b!4250458 res!1747328) b!4250464))

(assert (= (and start!406980 (is-Cons!47098 suffix!1284)) b!4250455))

(assert (= (and start!406980 (is-Cons!47098 longerInput!62)) b!4250454))

(assert (= b!4250462 b!4250449))

(assert (= b!4250456 b!4250462))

(assert (= b!4250461 b!4250456))

(assert (= (and start!406980 (is-Cons!47100 tokens!592)) b!4250461))

(assert (= b!4250466 b!4250468))

(assert (= b!4250469 b!4250466))

(assert (= (and start!406980 (is-Cons!47099 rules!2971)) b!4250469))

(assert (= (and start!406980 (is-Cons!47098 shorterInput!62)) b!4250457))

(declare-fun m!4835215 () Bool)

(assert (=> b!4250462 m!4835215))

(declare-fun m!4835217 () Bool)

(assert (=> b!4250462 m!4835217))

(declare-fun m!4835219 () Bool)

(assert (=> b!4250450 m!4835219))

(declare-fun m!4835221 () Bool)

(assert (=> b!4250450 m!4835221))

(declare-fun m!4835223 () Bool)

(assert (=> b!4250459 m!4835223))

(declare-fun m!4835225 () Bool)

(assert (=> b!4250459 m!4835225))

(assert (=> b!4250459 m!4835225))

(declare-fun m!4835227 () Bool)

(assert (=> b!4250459 m!4835227))

(declare-fun m!4835229 () Bool)

(assert (=> b!4250466 m!4835229))

(declare-fun m!4835231 () Bool)

(assert (=> b!4250466 m!4835231))

(declare-fun m!4835233 () Bool)

(assert (=> b!4250464 m!4835233))

(declare-fun m!4835235 () Bool)

(assert (=> b!4250451 m!4835235))

(declare-fun m!4835237 () Bool)

(assert (=> b!4250460 m!4835237))

(declare-fun m!4835239 () Bool)

(assert (=> b!4250456 m!4835239))

(declare-fun m!4835241 () Bool)

(assert (=> b!4250458 m!4835241))

(declare-fun m!4835243 () Bool)

(assert (=> b!4250458 m!4835243))

(declare-fun m!4835245 () Bool)

(assert (=> b!4250467 m!4835245))

(declare-fun m!4835247 () Bool)

(assert (=> b!4250467 m!4835247))

(declare-fun m!4835249 () Bool)

(assert (=> b!4250461 m!4835249))

(declare-fun m!4835251 () Bool)

(assert (=> b!4250453 m!4835251))

(declare-fun m!4835253 () Bool)

(assert (=> b!4250463 m!4835253))

(declare-fun m!4835255 () Bool)

(assert (=> b!4250465 m!4835255))

(declare-fun m!4835257 () Bool)

(assert (=> b!4250465 m!4835257))

(assert (=> b!4250465 m!4835257))

(declare-fun m!4835259 () Bool)

(assert (=> b!4250465 m!4835259))

(push 1)

(assert (not b!4250457))

(assert (not b!4250463))

(assert (not b!4250461))

(assert (not b!4250459))

(assert (not b!4250464))

(assert (not b!4250455))

(assert (not b!4250466))

(assert (not b_next!127053))

(assert b_and!336949)

(assert (not b!4250456))

(assert (not b!4250451))

(assert (not b_next!127051))

(assert (not b!4250462))

(assert (not b!4250465))

(assert (not b!4250454))

(assert tp_is_empty!22747)

(assert (not b!4250450))

(assert (not b!4250458))

(assert b_and!336955)

(assert b_and!336951)

(assert (not b_next!127057))

(assert b_and!336953)

(assert (not b!4250469))

(assert (not b!4250467))

(assert (not b_next!127055))

(assert (not b!4250460))

(assert (not b!4250453))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!127053))

(assert b_and!336949)

(assert (not b_next!127051))

(assert (not b_next!127055))

(assert b_and!336955)

(assert b_and!336951)

(assert (not b_next!127057))

(assert b_and!336953)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1249932 () Bool)

(assert (=> d!1249932 (= (isEmpty!27865 longerInput!62) (is-Nil!47098 longerInput!62))))

(assert (=> b!4250453 d!1249932))

(declare-fun d!1249934 () Bool)

(assert (=> d!1249934 (= (isEmpty!27865 (_2!25463 (v!41064 lt!1508499))) (is-Nil!47098 (_2!25463 (v!41064 lt!1508499))))))

(assert (=> b!4250464 d!1249934))

(declare-fun d!1249936 () Bool)

(declare-fun e!2640109 () Bool)

(assert (=> d!1249936 e!2640109))

(declare-fun res!1747377 () Bool)

(assert (=> d!1249936 (=> (not res!1747377) (not e!2640109))))

(declare-fun lt!1508515 () List!47222)

(declare-fun content!7401 (List!47222) (Set C!25954))

(assert (=> d!1249936 (= res!1747377 (= (content!7401 lt!1508515) (set.union (content!7401 lt!1508498) (content!7401 (_2!25463 (v!41064 lt!1508500))))))))

(declare-fun e!2640110 () List!47222)

(assert (=> d!1249936 (= lt!1508515 e!2640110)))

(declare-fun c!721784 () Bool)

(assert (=> d!1249936 (= c!721784 (is-Nil!47098 lt!1508498))))

(assert (=> d!1249936 (= (++!11982 lt!1508498 (_2!25463 (v!41064 lt!1508500))) lt!1508515)))

(declare-fun b!4250544 () Bool)

(assert (=> b!4250544 (= e!2640109 (or (not (= (_2!25463 (v!41064 lt!1508500)) Nil!47098)) (= lt!1508515 lt!1508498)))))

(declare-fun b!4250543 () Bool)

(declare-fun res!1747378 () Bool)

(assert (=> b!4250543 (=> (not res!1747378) (not e!2640109))))

(assert (=> b!4250543 (= res!1747378 (= (size!34479 lt!1508515) (+ (size!34479 lt!1508498) (size!34479 (_2!25463 (v!41064 lt!1508500))))))))

(declare-fun b!4250541 () Bool)

(assert (=> b!4250541 (= e!2640110 (_2!25463 (v!41064 lt!1508500)))))

(declare-fun b!4250542 () Bool)

(assert (=> b!4250542 (= e!2640110 (Cons!47098 (h!52518 lt!1508498) (++!11982 (t!352315 lt!1508498) (_2!25463 (v!41064 lt!1508500)))))))

(assert (= (and d!1249936 c!721784) b!4250541))

(assert (= (and d!1249936 (not c!721784)) b!4250542))

(assert (= (and d!1249936 res!1747377) b!4250543))

(assert (= (and b!4250543 res!1747378) b!4250544))

(declare-fun m!4835307 () Bool)

(assert (=> d!1249936 m!4835307))

(declare-fun m!4835309 () Bool)

(assert (=> d!1249936 m!4835309))

(declare-fun m!4835311 () Bool)

(assert (=> d!1249936 m!4835311))

(declare-fun m!4835313 () Bool)

(assert (=> b!4250543 m!4835313))

(declare-fun m!4835315 () Bool)

(assert (=> b!4250543 m!4835315))

(assert (=> b!4250543 m!4835243))

(declare-fun m!4835317 () Bool)

(assert (=> b!4250542 m!4835317))

(assert (=> b!4250465 d!1249936))

(declare-fun d!1249938 () Bool)

(declare-fun list!16969 (Conc!14184) List!47222)

(assert (=> d!1249938 (= (list!16967 (charsOf!5313 (_1!25463 (v!41064 lt!1508500)))) (list!16969 (c!721777 (charsOf!5313 (_1!25463 (v!41064 lt!1508500))))))))

(declare-fun bs!598642 () Bool)

(assert (= bs!598642 d!1249938))

(declare-fun m!4835319 () Bool)

(assert (=> bs!598642 m!4835319))

(assert (=> b!4250465 d!1249938))

(declare-fun d!1249940 () Bool)

(declare-fun lt!1508518 () BalanceConc!27962)

(assert (=> d!1249940 (= (list!16967 lt!1508518) (originalCharacters!8317 (_1!25463 (v!41064 lt!1508500))))))

(declare-fun dynLambda!20177 (Int TokenValue!8203) BalanceConc!27962)

(assert (=> d!1249940 (= lt!1508518 (dynLambda!20177 (toChars!10604 (transformation!7973 (rule!11107 (_1!25463 (v!41064 lt!1508500))))) (value!247768 (_1!25463 (v!41064 lt!1508500)))))))

(assert (=> d!1249940 (= (charsOf!5313 (_1!25463 (v!41064 lt!1508500))) lt!1508518)))

(declare-fun b_lambda!125203 () Bool)

(assert (=> (not b_lambda!125203) (not d!1249940)))

(declare-fun tb!256275 () Bool)

(declare-fun t!352323 () Bool)

(assert (=> (and b!4250468 (= (toChars!10604 (transformation!7973 (h!52519 rules!2971))) (toChars!10604 (transformation!7973 (rule!11107 (_1!25463 (v!41064 lt!1508500)))))) t!352323) tb!256275))

(declare-fun b!4250549 () Bool)

(declare-fun e!2640113 () Bool)

(declare-fun tp!1304277 () Bool)

(declare-fun inv!61878 (Conc!14184) Bool)

(assert (=> b!4250549 (= e!2640113 (and (inv!61878 (c!721777 (dynLambda!20177 (toChars!10604 (transformation!7973 (rule!11107 (_1!25463 (v!41064 lt!1508500))))) (value!247768 (_1!25463 (v!41064 lt!1508500)))))) tp!1304277))))

(declare-fun result!312536 () Bool)

(declare-fun inv!61879 (BalanceConc!27962) Bool)

(assert (=> tb!256275 (= result!312536 (and (inv!61879 (dynLambda!20177 (toChars!10604 (transformation!7973 (rule!11107 (_1!25463 (v!41064 lt!1508500))))) (value!247768 (_1!25463 (v!41064 lt!1508500))))) e!2640113))))

(assert (= tb!256275 b!4250549))

(declare-fun m!4835321 () Bool)

(assert (=> b!4250549 m!4835321))

(declare-fun m!4835323 () Bool)

(assert (=> tb!256275 m!4835323))

(assert (=> d!1249940 t!352323))

(declare-fun b_and!336965 () Bool)

(assert (= b_and!336951 (and (=> t!352323 result!312536) b_and!336965)))

(declare-fun tb!256277 () Bool)

(declare-fun t!352325 () Bool)

(assert (=> (and b!4250449 (= (toChars!10604 (transformation!7973 (rule!11107 (h!52520 tokens!592)))) (toChars!10604 (transformation!7973 (rule!11107 (_1!25463 (v!41064 lt!1508500)))))) t!352325) tb!256277))

(declare-fun result!312540 () Bool)

(assert (= result!312540 result!312536))

(assert (=> d!1249940 t!352325))

(declare-fun b_and!336967 () Bool)

(assert (= b_and!336955 (and (=> t!352325 result!312540) b_and!336967)))

(declare-fun m!4835325 () Bool)

(assert (=> d!1249940 m!4835325))

(declare-fun m!4835327 () Bool)

(assert (=> d!1249940 m!4835327))

(assert (=> b!4250465 d!1249940))

(declare-fun d!1249942 () Bool)

(assert (=> d!1249942 (= (inv!61871 (tag!8837 (h!52519 rules!2971))) (= (mod (str.len (value!247767 (tag!8837 (h!52519 rules!2971)))) 2) 0))))

(assert (=> b!4250466 d!1249942))

(declare-fun d!1249944 () Bool)

(declare-fun res!1747383 () Bool)

(declare-fun e!2640122 () Bool)

(assert (=> d!1249944 (=> (not res!1747383) (not e!2640122))))

(declare-fun semiInverseModEq!3476 (Int Int) Bool)

(assert (=> d!1249944 (= res!1747383 (semiInverseModEq!3476 (toChars!10604 (transformation!7973 (h!52519 rules!2971))) (toValue!10745 (transformation!7973 (h!52519 rules!2971)))))))

(assert (=> d!1249944 (= (inv!61875 (transformation!7973 (h!52519 rules!2971))) e!2640122)))

(declare-fun b!4250562 () Bool)

(declare-fun equivClasses!3375 (Int Int) Bool)

(assert (=> b!4250562 (= e!2640122 (equivClasses!3375 (toChars!10604 (transformation!7973 (h!52519 rules!2971))) (toValue!10745 (transformation!7973 (h!52519 rules!2971)))))))

(assert (= (and d!1249944 res!1747383) b!4250562))

(declare-fun m!4835329 () Bool)

(assert (=> d!1249944 m!4835329))

(declare-fun m!4835331 () Bool)

(assert (=> b!4250562 m!4835331))

(assert (=> b!4250466 d!1249944))

(declare-fun b!4250578 () Bool)

(declare-fun e!2640133 () Bool)

(declare-fun inv!16 (TokenValue!8203) Bool)

(assert (=> b!4250578 (= e!2640133 (inv!16 (value!247768 (h!52520 tokens!592))))))

(declare-fun b!4250580 () Bool)

(declare-fun e!2640132 () Bool)

(declare-fun inv!17 (TokenValue!8203) Bool)

(assert (=> b!4250580 (= e!2640132 (inv!17 (value!247768 (h!52520 tokens!592))))))

(declare-fun b!4250581 () Bool)

(declare-fun res!1747387 () Bool)

(declare-fun e!2640134 () Bool)

(assert (=> b!4250581 (=> res!1747387 e!2640134)))

(assert (=> b!4250581 (= res!1747387 (not (is-IntegerValue!24611 (value!247768 (h!52520 tokens!592)))))))

(assert (=> b!4250581 (= e!2640132 e!2640134)))

(declare-fun b!4250582 () Bool)

(assert (=> b!4250582 (= e!2640133 e!2640132)))

(declare-fun c!721795 () Bool)

(assert (=> b!4250582 (= c!721795 (is-IntegerValue!24610 (value!247768 (h!52520 tokens!592))))))

(declare-fun b!4250579 () Bool)

(declare-fun inv!15 (TokenValue!8203) Bool)

(assert (=> b!4250579 (= e!2640134 (inv!15 (value!247768 (h!52520 tokens!592))))))

(declare-fun d!1249946 () Bool)

(declare-fun c!721796 () Bool)

(assert (=> d!1249946 (= c!721796 (is-IntegerValue!24609 (value!247768 (h!52520 tokens!592))))))

(assert (=> d!1249946 (= (inv!21 (value!247768 (h!52520 tokens!592))) e!2640133)))

(assert (= (and d!1249946 c!721796) b!4250578))

(assert (= (and d!1249946 (not c!721796)) b!4250582))

(assert (= (and b!4250582 c!721795) b!4250580))

(assert (= (and b!4250582 (not c!721795)) b!4250581))

(assert (= (and b!4250581 (not res!1747387)) b!4250579))

(declare-fun m!4835341 () Bool)

(assert (=> b!4250578 m!4835341))

(declare-fun m!4835343 () Bool)

(assert (=> b!4250580 m!4835343))

(declare-fun m!4835345 () Bool)

(assert (=> b!4250579 m!4835345))

(assert (=> b!4250456 d!1249946))

(declare-fun d!1249952 () Bool)

(declare-fun lt!1508530 () Int)

(assert (=> d!1249952 (>= lt!1508530 0)))

(declare-fun e!2640137 () Int)

(assert (=> d!1249952 (= lt!1508530 e!2640137)))

(declare-fun c!721799 () Bool)

(assert (=> d!1249952 (= c!721799 (is-Nil!47098 longerInput!62))))

(assert (=> d!1249952 (= (size!34479 longerInput!62) lt!1508530)))

(declare-fun b!4250587 () Bool)

(assert (=> b!4250587 (= e!2640137 0)))

(declare-fun b!4250588 () Bool)

(assert (=> b!4250588 (= e!2640137 (+ 1 (size!34479 (t!352315 longerInput!62))))))

(assert (= (and d!1249952 c!721799) b!4250587))

(assert (= (and d!1249952 (not c!721799)) b!4250588))

(declare-fun m!4835347 () Bool)

(assert (=> b!4250588 m!4835347))

(assert (=> b!4250467 d!1249952))

(declare-fun d!1249954 () Bool)

(declare-fun lt!1508531 () Int)

(assert (=> d!1249954 (>= lt!1508531 0)))

(declare-fun e!2640138 () Int)

(assert (=> d!1249954 (= lt!1508531 e!2640138)))

(declare-fun c!721800 () Bool)

(assert (=> d!1249954 (= c!721800 (is-Nil!47098 shorterInput!62))))

(assert (=> d!1249954 (= (size!34479 shorterInput!62) lt!1508531)))

(declare-fun b!4250589 () Bool)

(assert (=> b!4250589 (= e!2640138 0)))

(declare-fun b!4250590 () Bool)

(assert (=> b!4250590 (= e!2640138 (+ 1 (size!34479 (t!352315 shorterInput!62))))))

(assert (= (and d!1249954 c!721800) b!4250589))

(assert (= (and d!1249954 (not c!721800)) b!4250590))

(declare-fun m!4835349 () Bool)

(assert (=> b!4250590 m!4835349))

(assert (=> b!4250467 d!1249954))

(declare-fun d!1249956 () Bool)

(declare-fun lt!1508532 () Int)

(assert (=> d!1249956 (>= lt!1508532 0)))

(declare-fun e!2640139 () Int)

(assert (=> d!1249956 (= lt!1508532 e!2640139)))

(declare-fun c!721801 () Bool)

(assert (=> d!1249956 (= c!721801 (is-Nil!47098 (_2!25463 (v!41064 lt!1508499))))))

(assert (=> d!1249956 (= (size!34479 (_2!25463 (v!41064 lt!1508499))) lt!1508532)))

(declare-fun b!4250591 () Bool)

(assert (=> b!4250591 (= e!2640139 0)))

(declare-fun b!4250592 () Bool)

(assert (=> b!4250592 (= e!2640139 (+ 1 (size!34479 (t!352315 (_2!25463 (v!41064 lt!1508499))))))))

(assert (= (and d!1249956 c!721801) b!4250591))

(assert (= (and d!1249956 (not c!721801)) b!4250592))

(declare-fun m!4835351 () Bool)

(assert (=> b!4250592 m!4835351))

(assert (=> b!4250458 d!1249956))

(declare-fun d!1249958 () Bool)

(declare-fun lt!1508533 () Int)

(assert (=> d!1249958 (>= lt!1508533 0)))

(declare-fun e!2640140 () Int)

(assert (=> d!1249958 (= lt!1508533 e!2640140)))

(declare-fun c!721802 () Bool)

(assert (=> d!1249958 (= c!721802 (is-Nil!47098 (_2!25463 (v!41064 lt!1508500))))))

(assert (=> d!1249958 (= (size!34479 (_2!25463 (v!41064 lt!1508500))) lt!1508533)))

(declare-fun b!4250593 () Bool)

(assert (=> b!4250593 (= e!2640140 0)))

(declare-fun b!4250594 () Bool)

(assert (=> b!4250594 (= e!2640140 (+ 1 (size!34479 (t!352315 (_2!25463 (v!41064 lt!1508500))))))))

(assert (= (and d!1249958 c!721802) b!4250593))

(assert (= (and d!1249958 (not c!721802)) b!4250594))

(declare-fun m!4835353 () Bool)

(assert (=> b!4250594 m!4835353))

(assert (=> b!4250458 d!1249958))

(declare-fun d!1249960 () Bool)

(declare-fun e!2640141 () Bool)

(assert (=> d!1249960 e!2640141))

(declare-fun res!1747388 () Bool)

(assert (=> d!1249960 (=> (not res!1747388) (not e!2640141))))

(declare-fun lt!1508534 () List!47222)

(assert (=> d!1249960 (= res!1747388 (= (content!7401 lt!1508534) (set.union (content!7401 lt!1508497) (content!7401 (_2!25463 (v!41064 lt!1508499))))))))

(declare-fun e!2640142 () List!47222)

(assert (=> d!1249960 (= lt!1508534 e!2640142)))

(declare-fun c!721803 () Bool)

(assert (=> d!1249960 (= c!721803 (is-Nil!47098 lt!1508497))))

(assert (=> d!1249960 (= (++!11982 lt!1508497 (_2!25463 (v!41064 lt!1508499))) lt!1508534)))

(declare-fun b!4250598 () Bool)

(assert (=> b!4250598 (= e!2640141 (or (not (= (_2!25463 (v!41064 lt!1508499)) Nil!47098)) (= lt!1508534 lt!1508497)))))

(declare-fun b!4250597 () Bool)

(declare-fun res!1747389 () Bool)

(assert (=> b!4250597 (=> (not res!1747389) (not e!2640141))))

(assert (=> b!4250597 (= res!1747389 (= (size!34479 lt!1508534) (+ (size!34479 lt!1508497) (size!34479 (_2!25463 (v!41064 lt!1508499))))))))

(declare-fun b!4250595 () Bool)

(assert (=> b!4250595 (= e!2640142 (_2!25463 (v!41064 lt!1508499)))))

(declare-fun b!4250596 () Bool)

(assert (=> b!4250596 (= e!2640142 (Cons!47098 (h!52518 lt!1508497) (++!11982 (t!352315 lt!1508497) (_2!25463 (v!41064 lt!1508499)))))))

(assert (= (and d!1249960 c!721803) b!4250595))

(assert (= (and d!1249960 (not c!721803)) b!4250596))

(assert (= (and d!1249960 res!1747388) b!4250597))

(assert (= (and b!4250597 res!1747389) b!4250598))

(declare-fun m!4835355 () Bool)

(assert (=> d!1249960 m!4835355))

(declare-fun m!4835357 () Bool)

(assert (=> d!1249960 m!4835357))

(declare-fun m!4835359 () Bool)

(assert (=> d!1249960 m!4835359))

(declare-fun m!4835361 () Bool)

(assert (=> b!4250597 m!4835361))

(declare-fun m!4835363 () Bool)

(assert (=> b!4250597 m!4835363))

(assert (=> b!4250597 m!4835241))

(declare-fun m!4835365 () Bool)

(assert (=> b!4250596 m!4835365))

(assert (=> b!4250459 d!1249960))

(declare-fun d!1249962 () Bool)

(assert (=> d!1249962 (= (list!16967 (charsOf!5313 (_1!25463 (v!41064 lt!1508499)))) (list!16969 (c!721777 (charsOf!5313 (_1!25463 (v!41064 lt!1508499))))))))

(declare-fun bs!598643 () Bool)

(assert (= bs!598643 d!1249962))

(declare-fun m!4835367 () Bool)

(assert (=> bs!598643 m!4835367))

(assert (=> b!4250459 d!1249962))

(declare-fun d!1249964 () Bool)

(declare-fun lt!1508535 () BalanceConc!27962)

(assert (=> d!1249964 (= (list!16967 lt!1508535) (originalCharacters!8317 (_1!25463 (v!41064 lt!1508499))))))

(assert (=> d!1249964 (= lt!1508535 (dynLambda!20177 (toChars!10604 (transformation!7973 (rule!11107 (_1!25463 (v!41064 lt!1508499))))) (value!247768 (_1!25463 (v!41064 lt!1508499)))))))

(assert (=> d!1249964 (= (charsOf!5313 (_1!25463 (v!41064 lt!1508499))) lt!1508535)))

(declare-fun b_lambda!125205 () Bool)

(assert (=> (not b_lambda!125205) (not d!1249964)))

(declare-fun tb!256279 () Bool)

(declare-fun t!352327 () Bool)

(assert (=> (and b!4250468 (= (toChars!10604 (transformation!7973 (h!52519 rules!2971))) (toChars!10604 (transformation!7973 (rule!11107 (_1!25463 (v!41064 lt!1508499)))))) t!352327) tb!256279))

(declare-fun b!4250599 () Bool)

(declare-fun e!2640143 () Bool)

(declare-fun tp!1304278 () Bool)

(assert (=> b!4250599 (= e!2640143 (and (inv!61878 (c!721777 (dynLambda!20177 (toChars!10604 (transformation!7973 (rule!11107 (_1!25463 (v!41064 lt!1508499))))) (value!247768 (_1!25463 (v!41064 lt!1508499)))))) tp!1304278))))

(declare-fun result!312542 () Bool)

(assert (=> tb!256279 (= result!312542 (and (inv!61879 (dynLambda!20177 (toChars!10604 (transformation!7973 (rule!11107 (_1!25463 (v!41064 lt!1508499))))) (value!247768 (_1!25463 (v!41064 lt!1508499))))) e!2640143))))

(assert (= tb!256279 b!4250599))

(declare-fun m!4835369 () Bool)

(assert (=> b!4250599 m!4835369))

(declare-fun m!4835371 () Bool)

(assert (=> tb!256279 m!4835371))

(assert (=> d!1249964 t!352327))

(declare-fun b_and!336969 () Bool)

(assert (= b_and!336965 (and (=> t!352327 result!312542) b_and!336969)))

(declare-fun tb!256281 () Bool)

(declare-fun t!352329 () Bool)

(assert (=> (and b!4250449 (= (toChars!10604 (transformation!7973 (rule!11107 (h!52520 tokens!592)))) (toChars!10604 (transformation!7973 (rule!11107 (_1!25463 (v!41064 lt!1508499)))))) t!352329) tb!256281))

(declare-fun result!312544 () Bool)

(assert (= result!312544 result!312542))

(assert (=> d!1249964 t!352329))

(declare-fun b_and!336971 () Bool)

(assert (= b_and!336967 (and (=> t!352329 result!312544) b_and!336971)))

(declare-fun m!4835373 () Bool)

(assert (=> d!1249964 m!4835373))

(declare-fun m!4835375 () Bool)

(assert (=> d!1249964 m!4835375))

(assert (=> b!4250459 d!1249964))

(declare-fun d!1249966 () Bool)

(declare-fun res!1747392 () Bool)

(declare-fun e!2640146 () Bool)

(assert (=> d!1249966 (=> (not res!1747392) (not e!2640146))))

(declare-fun rulesValid!3098 (LexerInterface!7568 List!47223) Bool)

(assert (=> d!1249966 (= res!1747392 (rulesValid!3098 thiss!21641 rules!2971))))

(assert (=> d!1249966 (= (rulesInvariant!6679 thiss!21641 rules!2971) e!2640146)))

(declare-fun b!4250602 () Bool)

(declare-datatypes ((List!47229 0))(
  ( (Nil!47105) (Cons!47105 (h!52525 String!54947) (t!352370 List!47229)) )
))
(declare-fun noDuplicateTag!3259 (LexerInterface!7568 List!47223 List!47229) Bool)

(assert (=> b!4250602 (= e!2640146 (noDuplicateTag!3259 thiss!21641 rules!2971 Nil!47105))))

(assert (= (and d!1249966 res!1747392) b!4250602))

(declare-fun m!4835377 () Bool)

(assert (=> d!1249966 m!4835377))

(declare-fun m!4835379 () Bool)

(assert (=> b!4250602 m!4835379))

(assert (=> b!4250460 d!1249966))

(declare-fun b!4250627 () Bool)

(declare-fun e!2640159 () Option!10107)

(declare-fun lt!1508556 () Option!10107)

(declare-fun lt!1508557 () Option!10107)

(assert (=> b!4250627 (= e!2640159 (ite (and (is-None!10106 lt!1508556) (is-None!10106 lt!1508557)) None!10106 (ite (is-None!10106 lt!1508557) lt!1508556 (ite (is-None!10106 lt!1508556) lt!1508557 (ite (>= (size!34478 (_1!25463 (v!41064 lt!1508556))) (size!34478 (_1!25463 (v!41064 lt!1508557)))) lt!1508556 lt!1508557)))))))

(declare-fun call!293965 () Option!10107)

(assert (=> b!4250627 (= lt!1508556 call!293965)))

(assert (=> b!4250627 (= lt!1508557 (maxPrefix!4524 thiss!21641 (t!352316 rules!2971) shorterInput!62))))

(declare-fun b!4250628 () Bool)

(declare-fun res!1747410 () Bool)

(declare-fun e!2640157 () Bool)

(assert (=> b!4250628 (=> (not res!1747410) (not e!2640157))))

(declare-fun lt!1508560 () Option!10107)

(declare-fun get!15290 (Option!10107) tuple2!44658)

(assert (=> b!4250628 (= res!1747410 (< (size!34479 (_2!25463 (get!15290 lt!1508560))) (size!34479 shorterInput!62)))))

(declare-fun b!4250629 () Bool)

(assert (=> b!4250629 (= e!2640159 call!293965)))

(declare-fun b!4250630 () Bool)

(declare-fun contains!9758 (List!47223 Rule!15746) Bool)

(assert (=> b!4250630 (= e!2640157 (contains!9758 rules!2971 (rule!11107 (_1!25463 (get!15290 lt!1508560)))))))

(declare-fun b!4250631 () Bool)

(declare-fun e!2640158 () Bool)

(assert (=> b!4250631 (= e!2640158 e!2640157)))

(declare-fun res!1747409 () Bool)

(assert (=> b!4250631 (=> (not res!1747409) (not e!2640157))))

(declare-fun isDefined!7461 (Option!10107) Bool)

(assert (=> b!4250631 (= res!1747409 (isDefined!7461 lt!1508560))))

(declare-fun b!4250632 () Bool)

(declare-fun res!1747415 () Bool)

(assert (=> b!4250632 (=> (not res!1747415) (not e!2640157))))

(assert (=> b!4250632 (= res!1747415 (= (++!11982 (list!16967 (charsOf!5313 (_1!25463 (get!15290 lt!1508560)))) (_2!25463 (get!15290 lt!1508560))) shorterInput!62))))

(declare-fun d!1249968 () Bool)

(assert (=> d!1249968 e!2640158))

(declare-fun res!1747414 () Bool)

(assert (=> d!1249968 (=> res!1747414 e!2640158)))

(declare-fun isEmpty!27869 (Option!10107) Bool)

(assert (=> d!1249968 (= res!1747414 (isEmpty!27869 lt!1508560))))

(assert (=> d!1249968 (= lt!1508560 e!2640159)))

(declare-fun c!721808 () Bool)

(assert (=> d!1249968 (= c!721808 (and (is-Cons!47099 rules!2971) (is-Nil!47099 (t!352316 rules!2971))))))

(declare-datatypes ((Unit!66067 0))(
  ( (Unit!66068) )
))
(declare-fun lt!1508558 () Unit!66067)

(declare-fun lt!1508559 () Unit!66067)

(assert (=> d!1249968 (= lt!1508558 lt!1508559)))

(declare-fun isPrefix!4746 (List!47222 List!47222) Bool)

(assert (=> d!1249968 (isPrefix!4746 shorterInput!62 shorterInput!62)))

(declare-fun lemmaIsPrefixRefl!3143 (List!47222 List!47222) Unit!66067)

(assert (=> d!1249968 (= lt!1508559 (lemmaIsPrefixRefl!3143 shorterInput!62 shorterInput!62))))

(declare-fun rulesValidInductive!2997 (LexerInterface!7568 List!47223) Bool)

(assert (=> d!1249968 (rulesValidInductive!2997 thiss!21641 rules!2971)))

(assert (=> d!1249968 (= (maxPrefix!4524 thiss!21641 rules!2971 shorterInput!62) lt!1508560)))

(declare-fun bm!293960 () Bool)

(declare-fun maxPrefixOneRule!3471 (LexerInterface!7568 Rule!15746 List!47222) Option!10107)

(assert (=> bm!293960 (= call!293965 (maxPrefixOneRule!3471 thiss!21641 (h!52519 rules!2971) shorterInput!62))))

(declare-fun b!4250633 () Bool)

(declare-fun res!1747413 () Bool)

(assert (=> b!4250633 (=> (not res!1747413) (not e!2640157))))

(declare-fun matchR!6468 (Regex!12878 List!47222) Bool)

(assert (=> b!4250633 (= res!1747413 (matchR!6468 (regex!7973 (rule!11107 (_1!25463 (get!15290 lt!1508560)))) (list!16967 (charsOf!5313 (_1!25463 (get!15290 lt!1508560))))))))

(declare-fun b!4250634 () Bool)

(declare-fun res!1747411 () Bool)

(assert (=> b!4250634 (=> (not res!1747411) (not e!2640157))))

(assert (=> b!4250634 (= res!1747411 (= (list!16967 (charsOf!5313 (_1!25463 (get!15290 lt!1508560)))) (originalCharacters!8317 (_1!25463 (get!15290 lt!1508560)))))))

(declare-fun b!4250635 () Bool)

(declare-fun res!1747412 () Bool)

(assert (=> b!4250635 (=> (not res!1747412) (not e!2640157))))

(declare-fun apply!10773 (TokenValueInjection!15834 BalanceConc!27962) TokenValue!8203)

(declare-fun seqFromList!5833 (List!47222) BalanceConc!27962)

(assert (=> b!4250635 (= res!1747412 (= (value!247768 (_1!25463 (get!15290 lt!1508560))) (apply!10773 (transformation!7973 (rule!11107 (_1!25463 (get!15290 lt!1508560)))) (seqFromList!5833 (originalCharacters!8317 (_1!25463 (get!15290 lt!1508560)))))))))

(assert (= (and d!1249968 c!721808) b!4250629))

(assert (= (and d!1249968 (not c!721808)) b!4250627))

(assert (= (or b!4250629 b!4250627) bm!293960))

(assert (= (and d!1249968 (not res!1747414)) b!4250631))

(assert (= (and b!4250631 res!1747409) b!4250634))

(assert (= (and b!4250634 res!1747411) b!4250628))

(assert (= (and b!4250628 res!1747410) b!4250632))

(assert (= (and b!4250632 res!1747415) b!4250635))

(assert (= (and b!4250635 res!1747412) b!4250633))

(assert (= (and b!4250633 res!1747413) b!4250630))

(declare-fun m!4835381 () Bool)

(assert (=> d!1249968 m!4835381))

(declare-fun m!4835383 () Bool)

(assert (=> d!1249968 m!4835383))

(declare-fun m!4835385 () Bool)

(assert (=> d!1249968 m!4835385))

(declare-fun m!4835387 () Bool)

(assert (=> d!1249968 m!4835387))

(declare-fun m!4835389 () Bool)

(assert (=> b!4250631 m!4835389))

(declare-fun m!4835391 () Bool)

(assert (=> b!4250634 m!4835391))

(declare-fun m!4835393 () Bool)

(assert (=> b!4250634 m!4835393))

(assert (=> b!4250634 m!4835393))

(declare-fun m!4835395 () Bool)

(assert (=> b!4250634 m!4835395))

(declare-fun m!4835397 () Bool)

(assert (=> bm!293960 m!4835397))

(assert (=> b!4250630 m!4835391))

(declare-fun m!4835399 () Bool)

(assert (=> b!4250630 m!4835399))

(assert (=> b!4250628 m!4835391))

(declare-fun m!4835401 () Bool)

(assert (=> b!4250628 m!4835401))

(assert (=> b!4250628 m!4835247))

(assert (=> b!4250633 m!4835391))

(assert (=> b!4250633 m!4835393))

(assert (=> b!4250633 m!4835393))

(assert (=> b!4250633 m!4835395))

(assert (=> b!4250633 m!4835395))

(declare-fun m!4835403 () Bool)

(assert (=> b!4250633 m!4835403))

(assert (=> b!4250635 m!4835391))

(declare-fun m!4835405 () Bool)

(assert (=> b!4250635 m!4835405))

(assert (=> b!4250635 m!4835405))

(declare-fun m!4835407 () Bool)

(assert (=> b!4250635 m!4835407))

(assert (=> b!4250632 m!4835391))

(assert (=> b!4250632 m!4835393))

(assert (=> b!4250632 m!4835393))

(assert (=> b!4250632 m!4835395))

(assert (=> b!4250632 m!4835395))

(declare-fun m!4835409 () Bool)

(assert (=> b!4250632 m!4835409))

(declare-fun m!4835411 () Bool)

(assert (=> b!4250627 m!4835411))

(assert (=> b!4250450 d!1249968))

(declare-fun b!4250648 () Bool)

(declare-fun e!2640164 () Option!10107)

(declare-fun lt!1508561 () Option!10107)

(declare-fun lt!1508562 () Option!10107)

(assert (=> b!4250648 (= e!2640164 (ite (and (is-None!10106 lt!1508561) (is-None!10106 lt!1508562)) None!10106 (ite (is-None!10106 lt!1508562) lt!1508561 (ite (is-None!10106 lt!1508561) lt!1508562 (ite (>= (size!34478 (_1!25463 (v!41064 lt!1508561))) (size!34478 (_1!25463 (v!41064 lt!1508562)))) lt!1508561 lt!1508562)))))))

(declare-fun call!293966 () Option!10107)

(assert (=> b!4250648 (= lt!1508561 call!293966)))

(assert (=> b!4250648 (= lt!1508562 (maxPrefix!4524 thiss!21641 (t!352316 rules!2971) longerInput!62))))

(declare-fun b!4250649 () Bool)

(declare-fun res!1747429 () Bool)

(declare-fun e!2640162 () Bool)

(assert (=> b!4250649 (=> (not res!1747429) (not e!2640162))))

(declare-fun lt!1508565 () Option!10107)

(assert (=> b!4250649 (= res!1747429 (< (size!34479 (_2!25463 (get!15290 lt!1508565))) (size!34479 longerInput!62)))))

(declare-fun b!4250650 () Bool)

(assert (=> b!4250650 (= e!2640164 call!293966)))

(declare-fun b!4250651 () Bool)

(assert (=> b!4250651 (= e!2640162 (contains!9758 rules!2971 (rule!11107 (_1!25463 (get!15290 lt!1508565)))))))

(declare-fun b!4250652 () Bool)

(declare-fun e!2640163 () Bool)

(assert (=> b!4250652 (= e!2640163 e!2640162)))

(declare-fun res!1747428 () Bool)

(assert (=> b!4250652 (=> (not res!1747428) (not e!2640162))))

(assert (=> b!4250652 (= res!1747428 (isDefined!7461 lt!1508565))))

(declare-fun b!4250653 () Bool)

(declare-fun res!1747434 () Bool)

(assert (=> b!4250653 (=> (not res!1747434) (not e!2640162))))

(assert (=> b!4250653 (= res!1747434 (= (++!11982 (list!16967 (charsOf!5313 (_1!25463 (get!15290 lt!1508565)))) (_2!25463 (get!15290 lt!1508565))) longerInput!62))))

(declare-fun d!1249970 () Bool)

(assert (=> d!1249970 e!2640163))

(declare-fun res!1747433 () Bool)

(assert (=> d!1249970 (=> res!1747433 e!2640163)))

(assert (=> d!1249970 (= res!1747433 (isEmpty!27869 lt!1508565))))

(assert (=> d!1249970 (= lt!1508565 e!2640164)))

(declare-fun c!721809 () Bool)

(assert (=> d!1249970 (= c!721809 (and (is-Cons!47099 rules!2971) (is-Nil!47099 (t!352316 rules!2971))))))

(declare-fun lt!1508563 () Unit!66067)

(declare-fun lt!1508564 () Unit!66067)

(assert (=> d!1249970 (= lt!1508563 lt!1508564)))

(assert (=> d!1249970 (isPrefix!4746 longerInput!62 longerInput!62)))

(assert (=> d!1249970 (= lt!1508564 (lemmaIsPrefixRefl!3143 longerInput!62 longerInput!62))))

(assert (=> d!1249970 (rulesValidInductive!2997 thiss!21641 rules!2971)))

(assert (=> d!1249970 (= (maxPrefix!4524 thiss!21641 rules!2971 longerInput!62) lt!1508565)))

(declare-fun bm!293961 () Bool)

(assert (=> bm!293961 (= call!293966 (maxPrefixOneRule!3471 thiss!21641 (h!52519 rules!2971) longerInput!62))))

(declare-fun b!4250654 () Bool)

(declare-fun res!1747432 () Bool)

(assert (=> b!4250654 (=> (not res!1747432) (not e!2640162))))

(assert (=> b!4250654 (= res!1747432 (matchR!6468 (regex!7973 (rule!11107 (_1!25463 (get!15290 lt!1508565)))) (list!16967 (charsOf!5313 (_1!25463 (get!15290 lt!1508565))))))))

(declare-fun b!4250655 () Bool)

(declare-fun res!1747430 () Bool)

(assert (=> b!4250655 (=> (not res!1747430) (not e!2640162))))

(assert (=> b!4250655 (= res!1747430 (= (list!16967 (charsOf!5313 (_1!25463 (get!15290 lt!1508565)))) (originalCharacters!8317 (_1!25463 (get!15290 lt!1508565)))))))

(declare-fun b!4250656 () Bool)

(declare-fun res!1747431 () Bool)

(assert (=> b!4250656 (=> (not res!1747431) (not e!2640162))))

(assert (=> b!4250656 (= res!1747431 (= (value!247768 (_1!25463 (get!15290 lt!1508565))) (apply!10773 (transformation!7973 (rule!11107 (_1!25463 (get!15290 lt!1508565)))) (seqFromList!5833 (originalCharacters!8317 (_1!25463 (get!15290 lt!1508565)))))))))

(assert (= (and d!1249970 c!721809) b!4250650))

(assert (= (and d!1249970 (not c!721809)) b!4250648))

(assert (= (or b!4250650 b!4250648) bm!293961))

(assert (= (and d!1249970 (not res!1747433)) b!4250652))

(assert (= (and b!4250652 res!1747428) b!4250655))

(assert (= (and b!4250655 res!1747430) b!4250649))

(assert (= (and b!4250649 res!1747429) b!4250653))

(assert (= (and b!4250653 res!1747434) b!4250656))

(assert (= (and b!4250656 res!1747431) b!4250654))

(assert (= (and b!4250654 res!1747432) b!4250651))

(declare-fun m!4835413 () Bool)

(assert (=> d!1249970 m!4835413))

(declare-fun m!4835415 () Bool)

(assert (=> d!1249970 m!4835415))

(declare-fun m!4835417 () Bool)

(assert (=> d!1249970 m!4835417))

(assert (=> d!1249970 m!4835387))

(declare-fun m!4835419 () Bool)

(assert (=> b!4250652 m!4835419))

(declare-fun m!4835421 () Bool)

(assert (=> b!4250655 m!4835421))

(declare-fun m!4835423 () Bool)

(assert (=> b!4250655 m!4835423))

(assert (=> b!4250655 m!4835423))

(declare-fun m!4835425 () Bool)

(assert (=> b!4250655 m!4835425))

(declare-fun m!4835427 () Bool)

(assert (=> bm!293961 m!4835427))

(assert (=> b!4250651 m!4835421))

(declare-fun m!4835429 () Bool)

(assert (=> b!4250651 m!4835429))

(assert (=> b!4250649 m!4835421))

(declare-fun m!4835431 () Bool)

(assert (=> b!4250649 m!4835431))

(assert (=> b!4250649 m!4835245))

(assert (=> b!4250654 m!4835421))

(assert (=> b!4250654 m!4835423))

(assert (=> b!4250654 m!4835423))

(assert (=> b!4250654 m!4835425))

(assert (=> b!4250654 m!4835425))

(declare-fun m!4835433 () Bool)

(assert (=> b!4250654 m!4835433))

(assert (=> b!4250656 m!4835421))

(declare-fun m!4835435 () Bool)

(assert (=> b!4250656 m!4835435))

(assert (=> b!4250656 m!4835435))

(declare-fun m!4835437 () Bool)

(assert (=> b!4250656 m!4835437))

(assert (=> b!4250653 m!4835421))

(assert (=> b!4250653 m!4835423))

(assert (=> b!4250653 m!4835423))

(assert (=> b!4250653 m!4835425))

(assert (=> b!4250653 m!4835425))

(declare-fun m!4835439 () Bool)

(assert (=> b!4250653 m!4835439))

(declare-fun m!4835441 () Bool)

(assert (=> b!4250648 m!4835441))

(assert (=> b!4250450 d!1249970))

(declare-fun d!1249972 () Bool)

(declare-fun res!1747439 () Bool)

(declare-fun e!2640167 () Bool)

(assert (=> d!1249972 (=> (not res!1747439) (not e!2640167))))

(assert (=> d!1249972 (= res!1747439 (not (isEmpty!27865 (originalCharacters!8317 (h!52520 tokens!592)))))))

(assert (=> d!1249972 (= (inv!61874 (h!52520 tokens!592)) e!2640167)))

(declare-fun b!4250661 () Bool)

(declare-fun res!1747440 () Bool)

(assert (=> b!4250661 (=> (not res!1747440) (not e!2640167))))

(assert (=> b!4250661 (= res!1747440 (= (originalCharacters!8317 (h!52520 tokens!592)) (list!16967 (dynLambda!20177 (toChars!10604 (transformation!7973 (rule!11107 (h!52520 tokens!592)))) (value!247768 (h!52520 tokens!592))))))))

(declare-fun b!4250662 () Bool)

(assert (=> b!4250662 (= e!2640167 (= (size!34478 (h!52520 tokens!592)) (size!34479 (originalCharacters!8317 (h!52520 tokens!592)))))))

(assert (= (and d!1249972 res!1747439) b!4250661))

(assert (= (and b!4250661 res!1747440) b!4250662))

(declare-fun b_lambda!125207 () Bool)

(assert (=> (not b_lambda!125207) (not b!4250661)))

(declare-fun tb!256283 () Bool)

(declare-fun t!352331 () Bool)

(assert (=> (and b!4250468 (= (toChars!10604 (transformation!7973 (h!52519 rules!2971))) (toChars!10604 (transformation!7973 (rule!11107 (h!52520 tokens!592))))) t!352331) tb!256283))

(declare-fun b!4250663 () Bool)

(declare-fun e!2640168 () Bool)

(declare-fun tp!1304279 () Bool)

(assert (=> b!4250663 (= e!2640168 (and (inv!61878 (c!721777 (dynLambda!20177 (toChars!10604 (transformation!7973 (rule!11107 (h!52520 tokens!592)))) (value!247768 (h!52520 tokens!592))))) tp!1304279))))

(declare-fun result!312546 () Bool)

(assert (=> tb!256283 (= result!312546 (and (inv!61879 (dynLambda!20177 (toChars!10604 (transformation!7973 (rule!11107 (h!52520 tokens!592)))) (value!247768 (h!52520 tokens!592)))) e!2640168))))

(assert (= tb!256283 b!4250663))

(declare-fun m!4835443 () Bool)

(assert (=> b!4250663 m!4835443))

(declare-fun m!4835445 () Bool)

(assert (=> tb!256283 m!4835445))

(assert (=> b!4250661 t!352331))

(declare-fun b_and!336973 () Bool)

(assert (= b_and!336969 (and (=> t!352331 result!312546) b_and!336973)))

(declare-fun t!352333 () Bool)

(declare-fun tb!256285 () Bool)

(assert (=> (and b!4250449 (= (toChars!10604 (transformation!7973 (rule!11107 (h!52520 tokens!592)))) (toChars!10604 (transformation!7973 (rule!11107 (h!52520 tokens!592))))) t!352333) tb!256285))

(declare-fun result!312548 () Bool)

(assert (= result!312548 result!312546))

(assert (=> b!4250661 t!352333))

(declare-fun b_and!336975 () Bool)

(assert (= b_and!336971 (and (=> t!352333 result!312548) b_and!336975)))

(declare-fun m!4835447 () Bool)

(assert (=> d!1249972 m!4835447))

(declare-fun m!4835449 () Bool)

(assert (=> b!4250661 m!4835449))

(assert (=> b!4250661 m!4835449))

(declare-fun m!4835451 () Bool)

(assert (=> b!4250661 m!4835451))

(declare-fun m!4835453 () Bool)

(assert (=> b!4250662 m!4835453))

(assert (=> b!4250461 d!1249972))

(declare-fun d!1249974 () Bool)

(assert (=> d!1249974 (= (isEmpty!27864 rules!2971) (is-Nil!47099 rules!2971))))

(assert (=> b!4250451 d!1249974))

(declare-fun d!1249976 () Bool)

(assert (=> d!1249976 (= (inv!61871 (tag!8837 (rule!11107 (h!52520 tokens!592)))) (= (mod (str.len (value!247767 (tag!8837 (rule!11107 (h!52520 tokens!592))))) 2) 0))))

(assert (=> b!4250462 d!1249976))

(declare-fun d!1249978 () Bool)

(declare-fun res!1747441 () Bool)

(declare-fun e!2640169 () Bool)

(assert (=> d!1249978 (=> (not res!1747441) (not e!2640169))))

(assert (=> d!1249978 (= res!1747441 (semiInverseModEq!3476 (toChars!10604 (transformation!7973 (rule!11107 (h!52520 tokens!592)))) (toValue!10745 (transformation!7973 (rule!11107 (h!52520 tokens!592))))))))

(assert (=> d!1249978 (= (inv!61875 (transformation!7973 (rule!11107 (h!52520 tokens!592)))) e!2640169)))

(declare-fun b!4250664 () Bool)

(assert (=> b!4250664 (= e!2640169 (equivClasses!3375 (toChars!10604 (transformation!7973 (rule!11107 (h!52520 tokens!592)))) (toValue!10745 (transformation!7973 (rule!11107 (h!52520 tokens!592))))))))

(assert (= (and d!1249978 res!1747441) b!4250664))

(declare-fun m!4835455 () Bool)

(assert (=> d!1249978 m!4835455))

(declare-fun m!4835457 () Bool)

(assert (=> b!4250664 m!4835457))

(assert (=> b!4250462 d!1249978))

(declare-fun b!4250693 () Bool)

(declare-fun e!2640183 () Bool)

(declare-fun lt!1508583 () tuple2!44660)

(assert (=> b!4250693 (= e!2640183 (= (_2!25464 lt!1508583) longerInput!62))))

(declare-fun b!4250694 () Bool)

(declare-fun e!2640184 () Bool)

(declare-fun isEmpty!27871 (List!47224) Bool)

(assert (=> b!4250694 (= e!2640184 (not (isEmpty!27871 (_1!25464 lt!1508583))))))

(declare-fun b!4250696 () Bool)

(declare-fun e!2640182 () tuple2!44660)

(declare-fun lt!1508582 () Option!10107)

(declare-fun lt!1508584 () tuple2!44660)

(assert (=> b!4250696 (= e!2640182 (tuple2!44661 (Cons!47100 (_1!25463 (v!41064 lt!1508582)) (_1!25464 lt!1508584)) (_2!25464 lt!1508584)))))

(assert (=> b!4250696 (= lt!1508584 (lexList!2074 thiss!21641 rules!2971 (_2!25463 (v!41064 lt!1508582))))))

(declare-fun b!4250697 () Bool)

(assert (=> b!4250697 (= e!2640183 e!2640184)))

(declare-fun res!1747458 () Bool)

(assert (=> b!4250697 (= res!1747458 (< (size!34479 (_2!25464 lt!1508583)) (size!34479 longerInput!62)))))

(assert (=> b!4250697 (=> (not res!1747458) (not e!2640184))))

(declare-fun b!4250695 () Bool)

(assert (=> b!4250695 (= e!2640182 (tuple2!44661 Nil!47100 longerInput!62))))

(declare-fun d!1249980 () Bool)

(assert (=> d!1249980 e!2640183))

(declare-fun c!721816 () Bool)

(declare-fun size!34483 (List!47224) Int)

(assert (=> d!1249980 (= c!721816 (> (size!34483 (_1!25464 lt!1508583)) 0))))

(assert (=> d!1249980 (= lt!1508583 e!2640182)))

(declare-fun c!721817 () Bool)

(assert (=> d!1249980 (= c!721817 (is-Some!10106 lt!1508582))))

(assert (=> d!1249980 (= lt!1508582 (maxPrefix!4524 thiss!21641 rules!2971 longerInput!62))))

(assert (=> d!1249980 (= (lexList!2074 thiss!21641 rules!2971 longerInput!62) lt!1508583)))

(assert (= (and d!1249980 c!721817) b!4250696))

(assert (= (and d!1249980 (not c!721817)) b!4250695))

(assert (= (and d!1249980 c!721816) b!4250697))

(assert (= (and d!1249980 (not c!721816)) b!4250693))

(assert (= (and b!4250697 res!1747458) b!4250694))

(declare-fun m!4835521 () Bool)

(assert (=> b!4250694 m!4835521))

(declare-fun m!4835523 () Bool)

(assert (=> b!4250696 m!4835523))

(declare-fun m!4835525 () Bool)

(assert (=> b!4250697 m!4835525))

(assert (=> b!4250697 m!4835245))

(declare-fun m!4835527 () Bool)

(assert (=> d!1249980 m!4835527))

(assert (=> d!1249980 m!4835221))

(assert (=> b!4250463 d!1249980))

(declare-fun b!4250712 () Bool)

(declare-fun b_free!126363 () Bool)

(declare-fun b_next!127067 () Bool)

(assert (=> b!4250712 (= b_free!126363 (not b_next!127067))))

(declare-fun tp!1304291 () Bool)

(declare-fun b_and!336977 () Bool)

(assert (=> b!4250712 (= tp!1304291 b_and!336977)))

(declare-fun b_free!126365 () Bool)

(declare-fun b_next!127069 () Bool)

(assert (=> b!4250712 (= b_free!126365 (not b_next!127069))))

(declare-fun tb!256287 () Bool)

(declare-fun t!352335 () Bool)

(assert (=> (and b!4250712 (= (toChars!10604 (transformation!7973 (h!52519 (t!352316 rules!2971)))) (toChars!10604 (transformation!7973 (rule!11107 (_1!25463 (v!41064 lt!1508500)))))) t!352335) tb!256287))

(declare-fun result!312552 () Bool)

(assert (= result!312552 result!312536))

(assert (=> d!1249940 t!352335))

(declare-fun tb!256289 () Bool)

(declare-fun t!352337 () Bool)

(assert (=> (and b!4250712 (= (toChars!10604 (transformation!7973 (h!52519 (t!352316 rules!2971)))) (toChars!10604 (transformation!7973 (rule!11107 (_1!25463 (v!41064 lt!1508499)))))) t!352337) tb!256289))

(declare-fun result!312554 () Bool)

(assert (= result!312554 result!312542))

(assert (=> d!1249964 t!352337))

(declare-fun tb!256291 () Bool)

(declare-fun t!352339 () Bool)

(assert (=> (and b!4250712 (= (toChars!10604 (transformation!7973 (h!52519 (t!352316 rules!2971)))) (toChars!10604 (transformation!7973 (rule!11107 (h!52520 tokens!592))))) t!352339) tb!256291))

(declare-fun result!312556 () Bool)

(assert (= result!312556 result!312546))

(assert (=> b!4250661 t!352339))

(declare-fun b_and!336979 () Bool)

(declare-fun tp!1304290 () Bool)

(assert (=> b!4250712 (= tp!1304290 (and (=> t!352335 result!312552) (=> t!352337 result!312554) (=> t!352339 result!312556) b_and!336979))))

(declare-fun e!2640197 () Bool)

(assert (=> b!4250712 (= e!2640197 (and tp!1304291 tp!1304290))))

(declare-fun tp!1304289 () Bool)

(declare-fun e!2640196 () Bool)

(declare-fun b!4250711 () Bool)

(assert (=> b!4250711 (= e!2640196 (and tp!1304289 (inv!61871 (tag!8837 (h!52519 (t!352316 rules!2971)))) (inv!61875 (transformation!7973 (h!52519 (t!352316 rules!2971)))) e!2640197))))

(declare-fun b!4250710 () Bool)

(declare-fun e!2640198 () Bool)

(declare-fun tp!1304288 () Bool)

(assert (=> b!4250710 (= e!2640198 (and e!2640196 tp!1304288))))

(assert (=> b!4250469 (= tp!1304238 e!2640198)))

(assert (= b!4250711 b!4250712))

(assert (= b!4250710 b!4250711))

(assert (= (and b!4250469 (is-Cons!47099 (t!352316 rules!2971))) b!4250710))

(declare-fun m!4835529 () Bool)

(assert (=> b!4250711 m!4835529))

(declare-fun m!4835531 () Bool)

(assert (=> b!4250711 m!4835531))

(declare-fun b!4250719 () Bool)

(declare-fun e!2640202 () Bool)

(declare-fun tp!1304294 () Bool)

(assert (=> b!4250719 (= e!2640202 (and tp_is_empty!22747 tp!1304294))))

(assert (=> b!4250454 (= tp!1304228 e!2640202)))

(assert (= (and b!4250454 (is-Cons!47098 (t!352315 longerInput!62))) b!4250719))

(declare-fun b!4250720 () Bool)

(declare-fun e!2640204 () Bool)

(declare-fun tp!1304295 () Bool)

(assert (=> b!4250720 (= e!2640204 (and tp_is_empty!22747 tp!1304295))))

(assert (=> b!4250455 (= tp!1304236 e!2640204)))

(assert (= (and b!4250455 (is-Cons!47098 (t!352315 suffix!1284))) b!4250720))

(declare-fun e!2640207 () Bool)

(assert (=> b!4250466 (= tp!1304230 e!2640207)))

(declare-fun b!4250734 () Bool)

(declare-fun tp!1304308 () Bool)

(declare-fun tp!1304310 () Bool)

(assert (=> b!4250734 (= e!2640207 (and tp!1304308 tp!1304310))))

(declare-fun b!4250733 () Bool)

(assert (=> b!4250733 (= e!2640207 tp_is_empty!22747)))

(declare-fun b!4250735 () Bool)

(declare-fun tp!1304309 () Bool)

(assert (=> b!4250735 (= e!2640207 tp!1304309)))

(declare-fun b!4250736 () Bool)

(declare-fun tp!1304307 () Bool)

(declare-fun tp!1304306 () Bool)

(assert (=> b!4250736 (= e!2640207 (and tp!1304307 tp!1304306))))

(assert (= (and b!4250466 (is-ElementMatch!12878 (regex!7973 (h!52519 rules!2971)))) b!4250733))

(assert (= (and b!4250466 (is-Concat!21082 (regex!7973 (h!52519 rules!2971)))) b!4250734))

(assert (= (and b!4250466 (is-Star!12878 (regex!7973 (h!52519 rules!2971)))) b!4250735))

(assert (= (and b!4250466 (is-Union!12878 (regex!7973 (h!52519 rules!2971)))) b!4250736))

(declare-fun b!4250750 () Bool)

(declare-fun b_free!126367 () Bool)

(declare-fun b_next!127071 () Bool)

(assert (=> b!4250750 (= b_free!126367 (not b_next!127071))))

(declare-fun tp!1304323 () Bool)

(declare-fun b_and!336981 () Bool)

(assert (=> b!4250750 (= tp!1304323 b_and!336981)))

(declare-fun b_free!126369 () Bool)

(declare-fun b_next!127073 () Bool)

(assert (=> b!4250750 (= b_free!126369 (not b_next!127073))))

(declare-fun tb!256293 () Bool)

(declare-fun t!352341 () Bool)

(assert (=> (and b!4250750 (= (toChars!10604 (transformation!7973 (rule!11107 (h!52520 (t!352317 tokens!592))))) (toChars!10604 (transformation!7973 (rule!11107 (_1!25463 (v!41064 lt!1508500)))))) t!352341) tb!256293))

(declare-fun result!312564 () Bool)

(assert (= result!312564 result!312536))

(assert (=> d!1249940 t!352341))

(declare-fun tb!256295 () Bool)

(declare-fun t!352343 () Bool)

(assert (=> (and b!4250750 (= (toChars!10604 (transformation!7973 (rule!11107 (h!52520 (t!352317 tokens!592))))) (toChars!10604 (transformation!7973 (rule!11107 (_1!25463 (v!41064 lt!1508499)))))) t!352343) tb!256295))

(declare-fun result!312566 () Bool)

(assert (= result!312566 result!312542))

(assert (=> d!1249964 t!352343))

(declare-fun t!352345 () Bool)

(declare-fun tb!256297 () Bool)

(assert (=> (and b!4250750 (= (toChars!10604 (transformation!7973 (rule!11107 (h!52520 (t!352317 tokens!592))))) (toChars!10604 (transformation!7973 (rule!11107 (h!52520 tokens!592))))) t!352345) tb!256297))

(declare-fun result!312568 () Bool)

(assert (= result!312568 result!312546))

(assert (=> b!4250661 t!352345))

(declare-fun b_and!336983 () Bool)

(declare-fun tp!1304325 () Bool)

(assert (=> b!4250750 (= tp!1304325 (and (=> t!352341 result!312564) (=> t!352343 result!312566) (=> t!352345 result!312568) b_and!336983))))

(declare-fun tp!1304321 () Bool)

(declare-fun e!2640225 () Bool)

(declare-fun b!4250748 () Bool)

(declare-fun e!2640222 () Bool)

(assert (=> b!4250748 (= e!2640225 (and (inv!21 (value!247768 (h!52520 (t!352317 tokens!592)))) e!2640222 tp!1304321))))

(declare-fun e!2640223 () Bool)

(assert (=> b!4250461 (= tp!1304233 e!2640223)))

(declare-fun e!2640221 () Bool)

(assert (=> b!4250750 (= e!2640221 (and tp!1304323 tp!1304325))))

(declare-fun tp!1304324 () Bool)

(declare-fun b!4250747 () Bool)

(assert (=> b!4250747 (= e!2640223 (and (inv!61874 (h!52520 (t!352317 tokens!592))) e!2640225 tp!1304324))))

(declare-fun tp!1304322 () Bool)

(declare-fun b!4250749 () Bool)

(assert (=> b!4250749 (= e!2640222 (and tp!1304322 (inv!61871 (tag!8837 (rule!11107 (h!52520 (t!352317 tokens!592))))) (inv!61875 (transformation!7973 (rule!11107 (h!52520 (t!352317 tokens!592))))) e!2640221))))

(assert (= b!4250749 b!4250750))

(assert (= b!4250748 b!4250749))

(assert (= b!4250747 b!4250748))

(assert (= (and b!4250461 (is-Cons!47100 (t!352317 tokens!592))) b!4250747))

(declare-fun m!4835537 () Bool)

(assert (=> b!4250748 m!4835537))

(declare-fun m!4835539 () Bool)

(assert (=> b!4250747 m!4835539))

(declare-fun m!4835541 () Bool)

(assert (=> b!4250749 m!4835541))

(declare-fun m!4835543 () Bool)

(assert (=> b!4250749 m!4835543))

(declare-fun b!4250755 () Bool)

(declare-fun e!2640228 () Bool)

(declare-fun tp!1304326 () Bool)

(assert (=> b!4250755 (= e!2640228 (and tp_is_empty!22747 tp!1304326))))

(assert (=> b!4250456 (= tp!1304229 e!2640228)))

(assert (= (and b!4250456 (is-Cons!47098 (originalCharacters!8317 (h!52520 tokens!592)))) b!4250755))

(declare-fun e!2640229 () Bool)

(assert (=> b!4250462 (= tp!1304232 e!2640229)))

(declare-fun b!4250757 () Bool)

(declare-fun tp!1304329 () Bool)

(declare-fun tp!1304331 () Bool)

(assert (=> b!4250757 (= e!2640229 (and tp!1304329 tp!1304331))))

(declare-fun b!4250756 () Bool)

(assert (=> b!4250756 (= e!2640229 tp_is_empty!22747)))

(declare-fun b!4250758 () Bool)

(declare-fun tp!1304330 () Bool)

(assert (=> b!4250758 (= e!2640229 tp!1304330)))

(declare-fun b!4250759 () Bool)

(declare-fun tp!1304328 () Bool)

(declare-fun tp!1304327 () Bool)

(assert (=> b!4250759 (= e!2640229 (and tp!1304328 tp!1304327))))

(assert (= (and b!4250462 (is-ElementMatch!12878 (regex!7973 (rule!11107 (h!52520 tokens!592))))) b!4250756))

(assert (= (and b!4250462 (is-Concat!21082 (regex!7973 (rule!11107 (h!52520 tokens!592))))) b!4250757))

(assert (= (and b!4250462 (is-Star!12878 (regex!7973 (rule!11107 (h!52520 tokens!592))))) b!4250758))

(assert (= (and b!4250462 (is-Union!12878 (regex!7973 (rule!11107 (h!52520 tokens!592))))) b!4250759))

(declare-fun b!4250760 () Bool)

(declare-fun e!2640232 () Bool)

(declare-fun tp!1304332 () Bool)

(assert (=> b!4250760 (= e!2640232 (and tp_is_empty!22747 tp!1304332))))

(assert (=> b!4250457 (= tp!1304234 e!2640232)))

(assert (= (and b!4250457 (is-Cons!47098 (t!352315 shorterInput!62))) b!4250760))

(declare-fun b_lambda!125209 () Bool)

(assert (= b_lambda!125207 (or (and b!4250468 b_free!126349 (= (toChars!10604 (transformation!7973 (h!52519 rules!2971))) (toChars!10604 (transformation!7973 (rule!11107 (h!52520 tokens!592)))))) (and b!4250449 b_free!126353) (and b!4250712 b_free!126365 (= (toChars!10604 (transformation!7973 (h!52519 (t!352316 rules!2971)))) (toChars!10604 (transformation!7973 (rule!11107 (h!52520 tokens!592)))))) (and b!4250750 b_free!126369 (= (toChars!10604 (transformation!7973 (rule!11107 (h!52520 (t!352317 tokens!592))))) (toChars!10604 (transformation!7973 (rule!11107 (h!52520 tokens!592)))))) b_lambda!125209)))

(push 1)

(assert (not b!4250652))

(assert (not b!4250578))

(assert (not b!4250654))

(assert (not b!4250628))

(assert (not b!4250759))

(assert (not b!4250662))

(assert (not b!4250562))

(assert (not d!1249936))

(assert (not b_lambda!125209))

(assert (not b_next!127071))

(assert b_and!336977)

(assert (not b!4250632))

(assert (not b!4250592))

(assert (not b!4250696))

(assert tp_is_empty!22747)

(assert (not b!4250580))

(assert (not b_lambda!125205))

(assert (not d!1249980))

(assert (not b!4250627))

(assert (not b!4250590))

(assert (not b!4250748))

(assert (not b_next!127073))

(assert (not b!4250579))

(assert (not b!4250635))

(assert (not b!4250599))

(assert (not bm!293961))

(assert b_and!336981)

(assert (not b!4250663))

(assert (not d!1249940))

(assert (not b!4250634))

(assert (not b!4250749))

(assert b_and!336983)

(assert (not b!4250735))

(assert (not d!1249964))

(assert (not tb!256275))

(assert (not b!4250719))

(assert (not b!4250661))

(assert (not d!1249962))

(assert (not b!4250651))

(assert (not b!4250656))

(assert (not b!4250757))

(assert (not b!4250736))

(assert (not b!4250630))

(assert (not b_next!127067))

(assert (not b!4250596))

(assert (not b!4250710))

(assert (not b!4250755))

(assert (not b!4250694))

(assert (not b!4250697))

(assert (not b!4250549))

(assert (not b!4250542))

(assert (not bm!293960))

(assert (not b_next!127069))

(assert (not b_next!127053))

(assert b_and!336979)

(assert (not b!4250760))

(assert (not b!4250653))

(assert (not b!4250597))

(assert (not b_lambda!125203))

(assert (not d!1249966))

(assert b_and!336975)

(assert (not b!4250664))

(assert b_and!336949)

(assert (not b!4250594))

(assert (not b!4250631))

(assert (not b!4250633))

(assert (not d!1249944))

(assert (not b!4250747))

(assert (not b!4250711))

(assert (not b!4250720))

(assert b_and!336973)

(assert (not b_next!127057))

(assert (not d!1249968))

(assert (not b!4250649))

(assert b_and!336953)

(assert (not b!4250734))

(assert (not b!4250543))

(assert (not b!4250648))

(assert (not b_next!127051))

(assert (not d!1249978))

(assert (not d!1249938))

(assert (not b!4250602))

(assert (not d!1249970))

(assert (not tb!256283))

(assert (not tb!256279))

(assert (not b!4250758))

(assert (not d!1249972))

(assert (not b_next!127055))

(assert (not b!4250655))

(assert (not b!4250588))

(assert (not d!1249960))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!127071))

(assert b_and!336977)

(assert (not b_next!127073))

(assert b_and!336981)

(assert b_and!336983)

(assert (not b_next!127067))

(assert (not b_next!127069))

(assert b_and!336949)

(assert b_and!336973)

(assert (not b_next!127051))

(assert (not b_next!127055))

(assert (not b_next!127053))

(assert b_and!336975)

(assert b_and!336979)

(assert (not b_next!127057))

(assert b_and!336953)

(check-sat)

(pop 1)

