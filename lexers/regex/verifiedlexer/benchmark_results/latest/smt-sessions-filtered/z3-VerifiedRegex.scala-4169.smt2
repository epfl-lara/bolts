; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!225176 () Bool)

(assert start!225176)

(declare-fun b!2293179 () Bool)

(declare-fun b_free!68941 () Bool)

(declare-fun b_next!69645 () Bool)

(assert (=> b!2293179 (= b_free!68941 (not b_next!69645))))

(declare-fun tp!727028 () Bool)

(declare-fun b_and!182313 () Bool)

(assert (=> b!2293179 (= tp!727028 b_and!182313)))

(declare-fun b_free!68943 () Bool)

(declare-fun b_next!69647 () Bool)

(assert (=> b!2293179 (= b_free!68943 (not b_next!69647))))

(declare-fun tp!727016 () Bool)

(declare-fun b_and!182315 () Bool)

(assert (=> b!2293179 (= tp!727016 b_and!182315)))

(declare-fun b!2293172 () Bool)

(declare-fun b_free!68945 () Bool)

(declare-fun b_next!69649 () Bool)

(assert (=> b!2293172 (= b_free!68945 (not b_next!69649))))

(declare-fun tp!727015 () Bool)

(declare-fun b_and!182317 () Bool)

(assert (=> b!2293172 (= tp!727015 b_and!182317)))

(declare-fun b_free!68947 () Bool)

(declare-fun b_next!69651 () Bool)

(assert (=> b!2293172 (= b_free!68947 (not b_next!69651))))

(declare-fun tp!727020 () Bool)

(declare-fun b_and!182319 () Bool)

(assert (=> b!2293172 (= tp!727020 b_and!182319)))

(declare-fun b!2293166 () Bool)

(declare-fun b_free!68949 () Bool)

(declare-fun b_next!69653 () Bool)

(assert (=> b!2293166 (= b_free!68949 (not b_next!69653))))

(declare-fun tp!727024 () Bool)

(declare-fun b_and!182321 () Bool)

(assert (=> b!2293166 (= tp!727024 b_and!182321)))

(declare-fun b_free!68951 () Bool)

(declare-fun b_next!69655 () Bool)

(assert (=> b!2293166 (= b_free!68951 (not b_next!69655))))

(declare-fun tp!727025 () Bool)

(declare-fun b_and!182323 () Bool)

(assert (=> b!2293166 (= tp!727025 b_and!182323)))

(declare-fun b!2293173 () Bool)

(declare-fun b_free!68953 () Bool)

(declare-fun b_next!69657 () Bool)

(assert (=> b!2293173 (= b_free!68953 (not b_next!69657))))

(declare-fun tp!727030 () Bool)

(declare-fun b_and!182325 () Bool)

(assert (=> b!2293173 (= tp!727030 b_and!182325)))

(declare-fun b_free!68955 () Bool)

(declare-fun b_next!69659 () Bool)

(assert (=> b!2293173 (= b_free!68955 (not b_next!69659))))

(declare-fun tp!727031 () Bool)

(declare-fun b_and!182327 () Bool)

(assert (=> b!2293173 (= tp!727031 b_and!182327)))

(declare-fun b!2293159 () Bool)

(declare-fun res!980576 () Bool)

(declare-fun e!1469379 () Bool)

(assert (=> b!2293159 (=> (not res!980576) (not e!1469379))))

(declare-datatypes ((List!27389 0))(
  ( (Nil!27295) (Cons!27295 (h!32696 (_ BitVec 16)) (t!205071 List!27389)) )
))
(declare-datatypes ((TokenValue!4531 0))(
  ( (FloatLiteralValue!9062 (text!32162 List!27389)) (TokenValueExt!4530 (__x!18122 Int)) (Broken!22655 (value!138310 List!27389)) (Object!4624) (End!4531) (Def!4531) (Underscore!4531) (Match!4531) (Else!4531) (Error!4531) (Case!4531) (If!4531) (Extends!4531) (Abstract!4531) (Class!4531) (Val!4531) (DelimiterValue!9062 (del!4591 List!27389)) (KeywordValue!4537 (value!138311 List!27389)) (CommentValue!9062 (value!138312 List!27389)) (WhitespaceValue!9062 (value!138313 List!27389)) (IndentationValue!4531 (value!138314 List!27389)) (String!29758) (Int32!4531) (Broken!22656 (value!138315 List!27389)) (Boolean!4532) (Unit!40179) (OperatorValue!4534 (op!4591 List!27389)) (IdentifierValue!9062 (value!138316 List!27389)) (IdentifierValue!9063 (value!138317 List!27389)) (WhitespaceValue!9063 (value!138318 List!27389)) (True!9062) (False!9062) (Broken!22657 (value!138319 List!27389)) (Broken!22658 (value!138320 List!27389)) (True!9063) (RightBrace!4531) (RightBracket!4531) (Colon!4531) (Null!4531) (Comma!4531) (LeftBracket!4531) (False!9063) (LeftBrace!4531) (ImaginaryLiteralValue!4531 (text!32163 List!27389)) (StringLiteralValue!13593 (value!138321 List!27389)) (EOFValue!4531 (value!138322 List!27389)) (IdentValue!4531 (value!138323 List!27389)) (DelimiterValue!9063 (value!138324 List!27389)) (DedentValue!4531 (value!138325 List!27389)) (NewLineValue!4531 (value!138326 List!27389)) (IntegerValue!13593 (value!138327 (_ BitVec 32)) (text!32164 List!27389)) (IntegerValue!13594 (value!138328 Int) (text!32165 List!27389)) (Times!4531) (Or!4531) (Equal!4531) (Minus!4531) (Broken!22659 (value!138329 List!27389)) (And!4531) (Div!4531) (LessEqual!4531) (Mod!4531) (Concat!11248) (Not!4531) (Plus!4531) (SpaceValue!4531 (value!138330 List!27389)) (IntegerValue!13595 (value!138331 Int) (text!32166 List!27389)) (StringLiteralValue!13594 (text!32167 List!27389)) (FloatLiteralValue!9063 (text!32168 List!27389)) (BytesLiteralValue!4531 (value!138332 List!27389)) (CommentValue!9063 (value!138333 List!27389)) (StringLiteralValue!13595 (value!138334 List!27389)) (ErrorTokenValue!4531 (msg!4592 List!27389)) )
))
(declare-datatypes ((C!13580 0))(
  ( (C!13581 (val!7838 Int)) )
))
(declare-datatypes ((List!27390 0))(
  ( (Nil!27296) (Cons!27296 (h!32697 C!13580) (t!205072 List!27390)) )
))
(declare-datatypes ((IArray!17777 0))(
  ( (IArray!17778 (innerList!8946 List!27390)) )
))
(declare-datatypes ((Conc!8886 0))(
  ( (Node!8886 (left!20691 Conc!8886) (right!21021 Conc!8886) (csize!18002 Int) (cheight!9097 Int)) (Leaf!13056 (xs!11828 IArray!17777) (csize!18003 Int)) (Empty!8886) )
))
(declare-datatypes ((BalanceConc!17500 0))(
  ( (BalanceConc!17501 (c!363628 Conc!8886)) )
))
(declare-datatypes ((String!29759 0))(
  ( (String!29760 (value!138335 String)) )
))
(declare-datatypes ((Regex!6717 0))(
  ( (ElementMatch!6717 (c!363629 C!13580)) (Concat!11249 (regOne!13946 Regex!6717) (regTwo!13946 Regex!6717)) (EmptyExpr!6717) (Star!6717 (reg!7046 Regex!6717)) (EmptyLang!6717) (Union!6717 (regOne!13947 Regex!6717) (regTwo!13947 Regex!6717)) )
))
(declare-datatypes ((TokenValueInjection!8602 0))(
  ( (TokenValueInjection!8603 (toValue!6163 Int) (toChars!6022 Int)) )
))
(declare-datatypes ((Rule!8538 0))(
  ( (Rule!8539 (regex!4369 Regex!6717) (tag!4859 String!29759) (isSeparator!4369 Bool) (transformation!4369 TokenValueInjection!8602)) )
))
(declare-datatypes ((List!27391 0))(
  ( (Nil!27297) (Cons!27297 (h!32698 Rule!8538) (t!205073 List!27391)) )
))
(declare-fun rules!1750 () List!27391)

(declare-fun otherR!12 () Rule!8538)

(declare-fun contains!4747 (List!27391 Rule!8538) Bool)

(assert (=> b!2293159 (= res!980576 (contains!4747 rules!1750 otherR!12))))

(declare-fun tp!727026 () Bool)

(declare-fun e!1469369 () Bool)

(declare-fun e!1469362 () Bool)

(declare-fun b!2293160 () Bool)

(declare-fun inv!36899 (String!29759) Bool)

(declare-fun inv!36902 (TokenValueInjection!8602) Bool)

(assert (=> b!2293160 (= e!1469369 (and tp!727026 (inv!36899 (tag!4859 otherR!12)) (inv!36902 (transformation!4369 otherR!12)) e!1469362))))

(declare-fun b!2293161 () Bool)

(declare-fun e!1469393 () Bool)

(declare-datatypes ((Token!8216 0))(
  ( (Token!8217 (value!138336 TokenValue!4531) (rule!6707 Rule!8538) (size!21495 Int) (originalCharacters!5139 List!27390)) )
))
(declare-datatypes ((List!27392 0))(
  ( (Nil!27298) (Cons!27298 (h!32699 Token!8216) (t!205074 List!27392)) )
))
(declare-fun tokens!456 () List!27392)

(declare-fun otherP!12 () List!27390)

(declare-fun size!21496 (BalanceConc!17500) Int)

(declare-fun charsOf!2757 (Token!8216) BalanceConc!17500)

(declare-fun head!5000 (List!27392) Token!8216)

(declare-fun size!21497 (List!27390) Int)

(assert (=> b!2293161 (= e!1469393 (<= (size!21496 (charsOf!2757 (head!5000 tokens!456))) (size!21497 otherP!12)))))

(declare-fun b!2293162 () Bool)

(declare-fun res!980583 () Bool)

(assert (=> b!2293162 (=> (not res!980583) (not e!1469379))))

(declare-datatypes ((LexerInterface!3966 0))(
  ( (LexerInterfaceExt!3963 (__x!18123 Int)) (Lexer!3964) )
))
(declare-fun thiss!16613 () LexerInterface!3966)

(declare-fun rulesInvariant!3468 (LexerInterface!3966 List!27391) Bool)

(assert (=> b!2293162 (= res!980583 (rulesInvariant!3468 thiss!16613 rules!1750))))

(declare-fun tp!727021 () Bool)

(declare-fun b!2293164 () Bool)

(declare-fun e!1469384 () Bool)

(declare-fun e!1469387 () Bool)

(assert (=> b!2293164 (= e!1469387 (and tp!727021 (inv!36899 (tag!4859 (h!32698 rules!1750))) (inv!36902 (transformation!4369 (h!32698 rules!1750))) e!1469384))))

(declare-fun b!2293165 () Bool)

(declare-fun e!1469373 () Bool)

(declare-fun e!1469390 () Bool)

(declare-fun r!2363 () Rule!8538)

(declare-fun tp!727018 () Bool)

(assert (=> b!2293165 (= e!1469390 (and tp!727018 (inv!36899 (tag!4859 r!2363)) (inv!36902 (transformation!4369 r!2363)) e!1469373))))

(assert (=> b!2293166 (= e!1469373 (and tp!727024 tp!727025))))

(declare-fun b!2293167 () Bool)

(declare-fun res!980574 () Bool)

(declare-fun e!1469389 () Bool)

(assert (=> b!2293167 (=> res!980574 e!1469389)))

(declare-fun lt!850966 () List!27390)

(declare-fun matchR!2974 (Regex!6717 List!27390) Bool)

(assert (=> b!2293167 (= res!980574 (not (matchR!2974 (regex!4369 r!2363) lt!850966)))))

(declare-fun b!2293168 () Bool)

(declare-fun e!1469383 () Bool)

(declare-fun e!1469381 () Bool)

(declare-fun tp!727023 () Bool)

(assert (=> b!2293168 (= e!1469383 (and tp!727023 (inv!36899 (tag!4859 (rule!6707 (h!32699 tokens!456)))) (inv!36902 (transformation!4369 (rule!6707 (h!32699 tokens!456)))) e!1469381))))

(declare-fun b!2293169 () Bool)

(declare-fun e!1469370 () Bool)

(assert (=> b!2293169 (= e!1469370 true)))

(declare-fun lt!850961 () Bool)

(declare-fun e!1469380 () Bool)

(assert (=> b!2293169 (= lt!850961 e!1469380)))

(declare-fun res!980578 () Bool)

(assert (=> b!2293169 (=> res!980578 e!1469380)))

(declare-fun size!21498 (List!27392) Int)

(assert (=> b!2293169 (= res!980578 (<= (size!21498 tokens!456) 0))))

(declare-fun b!2293170 () Bool)

(declare-fun res!980570 () Bool)

(declare-fun e!1469375 () Bool)

(assert (=> b!2293170 (=> (not res!980570) (not e!1469375))))

(assert (=> b!2293170 (= res!980570 (not (= r!2363 otherR!12)))))

(declare-fun b!2293171 () Bool)

(declare-fun e!1469363 () Bool)

(declare-fun tp_is_empty!10655 () Bool)

(declare-fun tp!727027 () Bool)

(assert (=> b!2293171 (= e!1469363 (and tp_is_empty!10655 tp!727027))))

(assert (=> b!2293172 (= e!1469384 (and tp!727015 tp!727020))))

(assert (=> b!2293173 (= e!1469381 (and tp!727030 tp!727031))))

(declare-fun b!2293174 () Bool)

(declare-fun res!980580 () Bool)

(assert (=> b!2293174 (=> (not res!980580) (not e!1469375))))

(declare-fun input!1722 () List!27390)

(declare-fun isPrefix!2359 (List!27390 List!27390) Bool)

(assert (=> b!2293174 (= res!980580 (isPrefix!2359 otherP!12 input!1722))))

(declare-fun b!2293175 () Bool)

(declare-fun res!980572 () Bool)

(assert (=> b!2293175 (=> (not res!980572) (not e!1469379))))

(assert (=> b!2293175 (= res!980572 (contains!4747 rules!1750 r!2363))))

(declare-fun b!2293176 () Bool)

(declare-fun res!980565 () Bool)

(assert (=> b!2293176 (=> (not res!980565) (not e!1469375))))

(declare-fun e!1469361 () Bool)

(assert (=> b!2293176 (= res!980565 e!1469361)))

(declare-fun res!980584 () Bool)

(assert (=> b!2293176 (=> res!980584 e!1469361)))

(declare-fun lt!850956 () Bool)

(assert (=> b!2293176 (= res!980584 lt!850956)))

(declare-fun b!2293177 () Bool)

(declare-fun e!1469386 () Bool)

(declare-fun e!1469364 () Bool)

(assert (=> b!2293177 (= e!1469386 e!1469364)))

(declare-fun res!980568 () Bool)

(assert (=> b!2293177 (=> res!980568 e!1469364)))

(declare-datatypes ((tuple2!27122 0))(
  ( (tuple2!27123 (_1!16071 Token!8216) (_2!16071 List!27390)) )
))
(declare-fun lt!850958 () tuple2!27122)

(assert (=> b!2293177 (= res!980568 (not (= (h!32699 tokens!456) (_1!16071 lt!850958))))))

(declare-datatypes ((Option!5361 0))(
  ( (None!5360) (Some!5360 (v!30444 tuple2!27122)) )
))
(declare-fun lt!850969 () Option!5361)

(declare-fun get!8233 (Option!5361) tuple2!27122)

(assert (=> b!2293177 (= lt!850958 (get!8233 lt!850969))))

(declare-fun maxPrefix!2230 (LexerInterface!3966 List!27391 List!27390) Option!5361)

(assert (=> b!2293177 (= lt!850969 (maxPrefix!2230 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2293178 () Bool)

(declare-fun e!1469385 () Bool)

(assert (=> b!2293178 (= e!1469385 e!1469386)))

(declare-fun res!980564 () Bool)

(assert (=> b!2293178 (=> res!980564 e!1469386)))

(declare-fun lt!850960 () Int)

(declare-fun lt!850953 () Int)

(get-info :version)

(assert (=> b!2293178 (= res!980564 (or (<= lt!850953 lt!850960) ((_ is Nil!27298) tokens!456)))))

(declare-fun getIndex!382 (List!27391 Rule!8538) Int)

(assert (=> b!2293178 (= lt!850960 (getIndex!382 rules!1750 otherR!12))))

(assert (=> b!2293178 (= lt!850953 (getIndex!382 rules!1750 r!2363))))

(declare-fun ruleValid!1459 (LexerInterface!3966 Rule!8538) Bool)

(assert (=> b!2293178 (ruleValid!1459 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!40180 0))(
  ( (Unit!40181) )
))
(declare-fun lt!850954 () Unit!40180)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!864 (LexerInterface!3966 Rule!8538 List!27391) Unit!40180)

(assert (=> b!2293178 (= lt!850954 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!864 thiss!16613 otherR!12 rules!1750))))

(assert (=> b!2293179 (= e!1469362 (and tp!727028 tp!727016))))

(declare-fun b!2293180 () Bool)

(declare-fun e!1469365 () Bool)

(assert (=> b!2293180 (= e!1469365 e!1469389)))

(declare-fun res!980577 () Bool)

(assert (=> b!2293180 (=> res!980577 e!1469389)))

(assert (=> b!2293180 (= res!980577 (not (isPrefix!2359 lt!850966 input!1722)))))

(declare-fun lt!850972 () Option!5361)

(declare-fun lt!850964 () Token!8216)

(assert (=> b!2293180 (= lt!850972 (Some!5360 (tuple2!27123 lt!850964 (_2!16071 lt!850958))))))

(declare-fun maxPrefixOneRule!1400 (LexerInterface!3966 Rule!8538 List!27390) Option!5361)

(assert (=> b!2293180 (= lt!850972 (maxPrefixOneRule!1400 thiss!16613 r!2363 input!1722))))

(declare-fun lt!850963 () BalanceConc!17500)

(declare-fun lt!850959 () Int)

(declare-fun apply!6641 (TokenValueInjection!8602 BalanceConc!17500) TokenValue!4531)

(assert (=> b!2293180 (= lt!850964 (Token!8217 (apply!6641 (transformation!4369 r!2363) lt!850963) r!2363 lt!850959 lt!850966))))

(declare-fun seqFromList!3073 (List!27390) BalanceConc!17500)

(assert (=> b!2293180 (= lt!850963 (seqFromList!3073 lt!850966))))

(declare-fun lt!850952 () Unit!40180)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!593 (LexerInterface!3966 List!27391 List!27390 List!27390 List!27390 Rule!8538) Unit!40180)

(assert (=> b!2293180 (= lt!850952 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!593 thiss!16613 rules!1750 lt!850966 input!1722 (_2!16071 lt!850958) r!2363))))

(declare-fun b!2293181 () Bool)

(declare-fun e!1469377 () Bool)

(assert (=> b!2293181 (= e!1469379 e!1469377)))

(declare-fun res!980585 () Bool)

(assert (=> b!2293181 (=> (not res!980585) (not e!1469377))))

(declare-datatypes ((IArray!17779 0))(
  ( (IArray!17780 (innerList!8947 List!27392)) )
))
(declare-datatypes ((Conc!8887 0))(
  ( (Node!8887 (left!20692 Conc!8887) (right!21022 Conc!8887) (csize!18004 Int) (cheight!9098 Int)) (Leaf!13057 (xs!11829 IArray!17779) (csize!18005 Int)) (Empty!8887) )
))
(declare-datatypes ((BalanceConc!17502 0))(
  ( (BalanceConc!17503 (c!363630 Conc!8887)) )
))
(declare-datatypes ((tuple2!27124 0))(
  ( (tuple2!27125 (_1!16072 BalanceConc!17502) (_2!16072 BalanceConc!17500)) )
))
(declare-fun lt!850965 () tuple2!27124)

(declare-fun suffix!886 () List!27390)

(declare-datatypes ((tuple2!27126 0))(
  ( (tuple2!27127 (_1!16073 List!27392) (_2!16073 List!27390)) )
))
(declare-fun list!10700 (BalanceConc!17502) List!27392)

(declare-fun list!10701 (BalanceConc!17500) List!27390)

(assert (=> b!2293181 (= res!980585 (= (tuple2!27127 (list!10700 (_1!16072 lt!850965)) (list!10701 (_2!16072 lt!850965))) (tuple2!27127 tokens!456 suffix!886)))))

(declare-fun lex!1805 (LexerInterface!3966 List!27391 BalanceConc!17500) tuple2!27124)

(assert (=> b!2293181 (= lt!850965 (lex!1805 thiss!16613 rules!1750 (seqFromList!3073 input!1722)))))

(declare-fun b!2293182 () Bool)

(assert (=> b!2293182 (= e!1469377 e!1469375)))

(declare-fun res!980569 () Bool)

(assert (=> b!2293182 (=> (not res!980569) (not e!1469375))))

(assert (=> b!2293182 (= res!980569 e!1469393)))

(declare-fun res!980567 () Bool)

(assert (=> b!2293182 (=> res!980567 e!1469393)))

(assert (=> b!2293182 (= res!980567 lt!850956)))

(declare-fun isEmpty!15551 (List!27392) Bool)

(assert (=> b!2293182 (= lt!850956 (isEmpty!15551 tokens!456))))

(declare-fun b!2293163 () Bool)

(declare-fun e!1469371 () Bool)

(declare-fun tp!727014 () Bool)

(declare-fun inv!21 (TokenValue!4531) Bool)

(assert (=> b!2293163 (= e!1469371 (and (inv!21 (value!138336 (h!32699 tokens!456))) e!1469383 tp!727014))))

(declare-fun res!980573 () Bool)

(assert (=> start!225176 (=> (not res!980573) (not e!1469379))))

(assert (=> start!225176 (= res!980573 ((_ is Lexer!3964) thiss!16613))))

(assert (=> start!225176 e!1469379))

(assert (=> start!225176 true))

(declare-fun e!1469391 () Bool)

(assert (=> start!225176 e!1469391))

(assert (=> start!225176 e!1469369))

(assert (=> start!225176 e!1469363))

(declare-fun e!1469366 () Bool)

(assert (=> start!225176 e!1469366))

(declare-fun e!1469392 () Bool)

(assert (=> start!225176 e!1469392))

(assert (=> start!225176 e!1469390))

(declare-fun e!1469382 () Bool)

(assert (=> start!225176 e!1469382))

(declare-fun tp!727017 () Bool)

(declare-fun b!2293183 () Bool)

(declare-fun inv!36903 (Token!8216) Bool)

(assert (=> b!2293183 (= e!1469382 (and (inv!36903 (h!32699 tokens!456)) e!1469371 tp!727017))))

(declare-fun b!2293184 () Bool)

(declare-fun tp!727029 () Bool)

(assert (=> b!2293184 (= e!1469392 (and e!1469387 tp!727029))))

(declare-fun b!2293185 () Bool)

(declare-fun e!1469378 () Bool)

(assert (=> b!2293185 (= e!1469389 e!1469378)))

(declare-fun res!980571 () Bool)

(assert (=> b!2293185 (=> res!980571 e!1469378)))

(declare-fun lt!850957 () Int)

(declare-fun lt!850955 () Option!5361)

(assert (=> b!2293185 (= res!980571 (or (not (= lt!850972 lt!850955)) (<= lt!850957 lt!850959) (not (= lt!850969 lt!850955))))))

(declare-fun lt!850968 () List!27390)

(assert (=> b!2293185 (= lt!850955 (Some!5360 (tuple2!27123 lt!850964 lt!850968)))))

(assert (=> b!2293185 (isPrefix!2359 input!1722 input!1722)))

(declare-fun lt!850970 () Unit!40180)

(declare-fun lemmaIsPrefixRefl!1501 (List!27390 List!27390) Unit!40180)

(assert (=> b!2293185 (= lt!850970 (lemmaIsPrefixRefl!1501 input!1722 input!1722))))

(declare-fun lt!850971 () Unit!40180)

(declare-fun lemmaSemiInverse!1068 (TokenValueInjection!8602 BalanceConc!17500) Unit!40180)

(assert (=> b!2293185 (= lt!850971 (lemmaSemiInverse!1068 (transformation!4369 r!2363) lt!850963))))

(declare-fun b!2293186 () Bool)

(assert (=> b!2293186 (= e!1469364 e!1469365)))

(declare-fun res!980566 () Bool)

(assert (=> b!2293186 (=> res!980566 e!1469365)))

(assert (=> b!2293186 (= res!980566 (= lt!850957 lt!850959))))

(assert (=> b!2293186 (= lt!850959 (size!21497 lt!850966))))

(assert (=> b!2293186 (= lt!850957 (size!21497 otherP!12))))

(assert (=> b!2293186 (= (_2!16071 lt!850958) lt!850968)))

(declare-fun lt!850974 () Unit!40180)

(declare-fun lemmaSamePrefixThenSameSuffix!1060 (List!27390 List!27390 List!27390 List!27390 List!27390) Unit!40180)

(assert (=> b!2293186 (= lt!850974 (lemmaSamePrefixThenSameSuffix!1060 lt!850966 (_2!16071 lt!850958) lt!850966 lt!850968 input!1722))))

(declare-fun getSuffix!1150 (List!27390 List!27390) List!27390)

(assert (=> b!2293186 (= lt!850968 (getSuffix!1150 input!1722 lt!850966))))

(declare-fun ++!6673 (List!27390 List!27390) List!27390)

(assert (=> b!2293186 (isPrefix!2359 lt!850966 (++!6673 lt!850966 (_2!16071 lt!850958)))))

(declare-fun lt!850973 () Unit!40180)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1564 (List!27390 List!27390) Unit!40180)

(assert (=> b!2293186 (= lt!850973 (lemmaConcatTwoListThenFirstIsPrefix!1564 lt!850966 (_2!16071 lt!850958)))))

(assert (=> b!2293186 (= lt!850966 (list!10701 (charsOf!2757 (h!32699 tokens!456))))))

(declare-fun b!2293187 () Bool)

(assert (=> b!2293187 (= e!1469378 e!1469370)))

(declare-fun res!980579 () Bool)

(assert (=> b!2293187 (=> res!980579 e!1469370)))

(assert (=> b!2293187 (= res!980579 (< lt!850960 lt!850953))))

(assert (=> b!2293187 (not (matchR!2974 (regex!4369 otherR!12) otherP!12))))

(declare-fun lt!850967 () Unit!40180)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!286 (LexerInterface!3966 List!27391 Rule!8538 List!27390 List!27390 List!27390 Rule!8538) Unit!40180)

(assert (=> b!2293187 (= lt!850967 (lemmaMaxPrefixOutputsMaxPrefix!286 thiss!16613 rules!1750 r!2363 lt!850966 input!1722 otherP!12 otherR!12))))

(declare-fun b!2293188 () Bool)

(assert (=> b!2293188 (= e!1469380 (> lt!850957 (size!21496 (charsOf!2757 (head!5000 tokens!456)))))))

(declare-fun b!2293189 () Bool)

(assert (=> b!2293189 (= e!1469375 (not e!1469385))))

(declare-fun res!980575 () Bool)

(assert (=> b!2293189 (=> res!980575 e!1469385)))

(declare-fun e!1469368 () Bool)

(assert (=> b!2293189 (= res!980575 e!1469368)))

(declare-fun res!980581 () Bool)

(assert (=> b!2293189 (=> (not res!980581) (not e!1469368))))

(assert (=> b!2293189 (= res!980581 (not lt!850956))))

(assert (=> b!2293189 (ruleValid!1459 thiss!16613 r!2363)))

(declare-fun lt!850962 () Unit!40180)

(assert (=> b!2293189 (= lt!850962 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!864 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2293190 () Bool)

(declare-fun res!980582 () Bool)

(assert (=> b!2293190 (=> (not res!980582) (not e!1469379))))

(declare-fun isEmpty!15552 (List!27391) Bool)

(assert (=> b!2293190 (= res!980582 (not (isEmpty!15552 rules!1750)))))

(declare-fun b!2293191 () Bool)

(declare-fun tp!727022 () Bool)

(assert (=> b!2293191 (= e!1469391 (and tp_is_empty!10655 tp!727022))))

(declare-fun b!2293192 () Bool)

(declare-fun tp!727019 () Bool)

(assert (=> b!2293192 (= e!1469366 (and tp_is_empty!10655 tp!727019))))

(declare-fun b!2293193 () Bool)

(assert (=> b!2293193 (= e!1469361 (= (rule!6707 (head!5000 tokens!456)) r!2363))))

(declare-fun b!2293194 () Bool)

(assert (=> b!2293194 (= e!1469368 (not (matchR!2974 (regex!4369 r!2363) (list!10701 (charsOf!2757 (head!5000 tokens!456))))))))

(assert (= (and start!225176 res!980573) b!2293190))

(assert (= (and b!2293190 res!980582) b!2293162))

(assert (= (and b!2293162 res!980583) b!2293175))

(assert (= (and b!2293175 res!980572) b!2293159))

(assert (= (and b!2293159 res!980576) b!2293181))

(assert (= (and b!2293181 res!980585) b!2293182))

(assert (= (and b!2293182 (not res!980567)) b!2293161))

(assert (= (and b!2293182 res!980569) b!2293176))

(assert (= (and b!2293176 (not res!980584)) b!2293193))

(assert (= (and b!2293176 res!980565) b!2293174))

(assert (= (and b!2293174 res!980580) b!2293170))

(assert (= (and b!2293170 res!980570) b!2293189))

(assert (= (and b!2293189 res!980581) b!2293194))

(assert (= (and b!2293189 (not res!980575)) b!2293178))

(assert (= (and b!2293178 (not res!980564)) b!2293177))

(assert (= (and b!2293177 (not res!980568)) b!2293186))

(assert (= (and b!2293186 (not res!980566)) b!2293180))

(assert (= (and b!2293180 (not res!980577)) b!2293167))

(assert (= (and b!2293167 (not res!980574)) b!2293185))

(assert (= (and b!2293185 (not res!980571)) b!2293187))

(assert (= (and b!2293187 (not res!980579)) b!2293169))

(assert (= (and b!2293169 (not res!980578)) b!2293188))

(assert (= (and start!225176 ((_ is Cons!27296) input!1722)) b!2293191))

(assert (= b!2293160 b!2293179))

(assert (= start!225176 b!2293160))

(assert (= (and start!225176 ((_ is Cons!27296) suffix!886)) b!2293171))

(assert (= (and start!225176 ((_ is Cons!27296) otherP!12)) b!2293192))

(assert (= b!2293164 b!2293172))

(assert (= b!2293184 b!2293164))

(assert (= (and start!225176 ((_ is Cons!27297) rules!1750)) b!2293184))

(assert (= b!2293165 b!2293166))

(assert (= start!225176 b!2293165))

(assert (= b!2293168 b!2293173))

(assert (= b!2293163 b!2293168))

(assert (= b!2293183 b!2293163))

(assert (= (and start!225176 ((_ is Cons!27298) tokens!456)) b!2293183))

(declare-fun m!2720999 () Bool)

(assert (=> b!2293167 m!2720999))

(declare-fun m!2721001 () Bool)

(assert (=> b!2293163 m!2721001))

(declare-fun m!2721003 () Bool)

(assert (=> b!2293160 m!2721003))

(declare-fun m!2721005 () Bool)

(assert (=> b!2293160 m!2721005))

(declare-fun m!2721007 () Bool)

(assert (=> b!2293161 m!2721007))

(assert (=> b!2293161 m!2721007))

(declare-fun m!2721009 () Bool)

(assert (=> b!2293161 m!2721009))

(assert (=> b!2293161 m!2721009))

(declare-fun m!2721011 () Bool)

(assert (=> b!2293161 m!2721011))

(declare-fun m!2721013 () Bool)

(assert (=> b!2293161 m!2721013))

(declare-fun m!2721015 () Bool)

(assert (=> b!2293164 m!2721015))

(declare-fun m!2721017 () Bool)

(assert (=> b!2293164 m!2721017))

(declare-fun m!2721019 () Bool)

(assert (=> b!2293159 m!2721019))

(declare-fun m!2721021 () Bool)

(assert (=> b!2293162 m!2721021))

(assert (=> b!2293193 m!2721007))

(assert (=> b!2293188 m!2721007))

(assert (=> b!2293188 m!2721007))

(assert (=> b!2293188 m!2721009))

(assert (=> b!2293188 m!2721009))

(assert (=> b!2293188 m!2721011))

(declare-fun m!2721023 () Bool)

(assert (=> b!2293175 m!2721023))

(declare-fun m!2721025 () Bool)

(assert (=> b!2293177 m!2721025))

(declare-fun m!2721027 () Bool)

(assert (=> b!2293177 m!2721027))

(declare-fun m!2721029 () Bool)

(assert (=> b!2293183 m!2721029))

(declare-fun m!2721031 () Bool)

(assert (=> b!2293168 m!2721031))

(declare-fun m!2721033 () Bool)

(assert (=> b!2293168 m!2721033))

(assert (=> b!2293194 m!2721007))

(assert (=> b!2293194 m!2721007))

(assert (=> b!2293194 m!2721009))

(assert (=> b!2293194 m!2721009))

(declare-fun m!2721035 () Bool)

(assert (=> b!2293194 m!2721035))

(assert (=> b!2293194 m!2721035))

(declare-fun m!2721037 () Bool)

(assert (=> b!2293194 m!2721037))

(declare-fun m!2721039 () Bool)

(assert (=> b!2293187 m!2721039))

(declare-fun m!2721041 () Bool)

(assert (=> b!2293187 m!2721041))

(declare-fun m!2721043 () Bool)

(assert (=> b!2293174 m!2721043))

(declare-fun m!2721045 () Bool)

(assert (=> b!2293189 m!2721045))

(declare-fun m!2721047 () Bool)

(assert (=> b!2293189 m!2721047))

(declare-fun m!2721049 () Bool)

(assert (=> b!2293178 m!2721049))

(declare-fun m!2721051 () Bool)

(assert (=> b!2293178 m!2721051))

(declare-fun m!2721053 () Bool)

(assert (=> b!2293178 m!2721053))

(declare-fun m!2721055 () Bool)

(assert (=> b!2293178 m!2721055))

(declare-fun m!2721057 () Bool)

(assert (=> b!2293180 m!2721057))

(declare-fun m!2721059 () Bool)

(assert (=> b!2293180 m!2721059))

(declare-fun m!2721061 () Bool)

(assert (=> b!2293180 m!2721061))

(declare-fun m!2721063 () Bool)

(assert (=> b!2293180 m!2721063))

(declare-fun m!2721065 () Bool)

(assert (=> b!2293180 m!2721065))

(declare-fun m!2721067 () Bool)

(assert (=> b!2293182 m!2721067))

(declare-fun m!2721069 () Bool)

(assert (=> b!2293181 m!2721069))

(declare-fun m!2721071 () Bool)

(assert (=> b!2293181 m!2721071))

(declare-fun m!2721073 () Bool)

(assert (=> b!2293181 m!2721073))

(assert (=> b!2293181 m!2721073))

(declare-fun m!2721075 () Bool)

(assert (=> b!2293181 m!2721075))

(declare-fun m!2721077 () Bool)

(assert (=> b!2293186 m!2721077))

(declare-fun m!2721079 () Bool)

(assert (=> b!2293186 m!2721079))

(declare-fun m!2721081 () Bool)

(assert (=> b!2293186 m!2721081))

(assert (=> b!2293186 m!2721081))

(declare-fun m!2721083 () Bool)

(assert (=> b!2293186 m!2721083))

(declare-fun m!2721085 () Bool)

(assert (=> b!2293186 m!2721085))

(declare-fun m!2721087 () Bool)

(assert (=> b!2293186 m!2721087))

(declare-fun m!2721089 () Bool)

(assert (=> b!2293186 m!2721089))

(assert (=> b!2293186 m!2721087))

(declare-fun m!2721091 () Bool)

(assert (=> b!2293186 m!2721091))

(assert (=> b!2293186 m!2721013))

(declare-fun m!2721093 () Bool)

(assert (=> b!2293169 m!2721093))

(declare-fun m!2721095 () Bool)

(assert (=> b!2293190 m!2721095))

(declare-fun m!2721097 () Bool)

(assert (=> b!2293185 m!2721097))

(declare-fun m!2721099 () Bool)

(assert (=> b!2293185 m!2721099))

(declare-fun m!2721101 () Bool)

(assert (=> b!2293185 m!2721101))

(declare-fun m!2721103 () Bool)

(assert (=> b!2293165 m!2721103))

(declare-fun m!2721105 () Bool)

(assert (=> b!2293165 m!2721105))

(check-sat (not b_next!69657) (not b!2293184) (not b_next!69649) (not b!2293188) b_and!182323 b_and!182321 (not b_next!69653) (not b!2293165) b_and!182325 (not b!2293189) (not b!2293159) tp_is_empty!10655 (not b!2293169) (not b!2293194) (not b!2293164) b_and!182327 b_and!182317 (not b!2293177) (not b!2293182) (not b!2293187) (not b!2293167) (not b!2293192) b_and!182315 (not b_next!69659) (not b!2293163) (not b!2293178) (not b!2293190) (not b!2293186) (not b!2293191) (not b_next!69647) (not b!2293183) (not b!2293162) (not b!2293181) (not b!2293168) (not b!2293171) (not b_next!69645) (not b!2293160) (not b!2293180) (not b!2293175) (not b_next!69655) b_and!182319 (not b!2293193) (not b_next!69651) b_and!182313 (not b!2293185) (not b!2293161) (not b!2293174))
(check-sat (not b_next!69657) b_and!182325 (not b_next!69649) b_and!182327 b_and!182317 (not b_next!69647) (not b_next!69645) b_and!182323 b_and!182321 (not b_next!69653) b_and!182315 (not b_next!69659) (not b_next!69655) b_and!182319 (not b_next!69651) b_and!182313)
