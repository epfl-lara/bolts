; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!361932 () Bool)

(assert start!361932)

(declare-fun b!3860358 () Bool)

(declare-fun b_free!103789 () Bool)

(declare-fun b_next!104493 () Bool)

(assert (=> b!3860358 (= b_free!103789 (not b_next!104493))))

(declare-fun tp!1170272 () Bool)

(declare-fun b_and!288963 () Bool)

(assert (=> b!3860358 (= tp!1170272 b_and!288963)))

(declare-fun b_free!103791 () Bool)

(declare-fun b_next!104495 () Bool)

(assert (=> b!3860358 (= b_free!103791 (not b_next!104495))))

(declare-fun tp!1170261 () Bool)

(declare-fun b_and!288965 () Bool)

(assert (=> b!3860358 (= tp!1170261 b_and!288965)))

(declare-fun b!3860347 () Bool)

(declare-fun b_free!103793 () Bool)

(declare-fun b_next!104497 () Bool)

(assert (=> b!3860347 (= b_free!103793 (not b_next!104497))))

(declare-fun tp!1170263 () Bool)

(declare-fun b_and!288967 () Bool)

(assert (=> b!3860347 (= tp!1170263 b_and!288967)))

(declare-fun b_free!103795 () Bool)

(declare-fun b_next!104499 () Bool)

(assert (=> b!3860347 (= b_free!103795 (not b_next!104499))))

(declare-fun tp!1170265 () Bool)

(declare-fun b_and!288969 () Bool)

(assert (=> b!3860347 (= tp!1170265 b_and!288969)))

(declare-fun b!3860352 () Bool)

(declare-fun b_free!103797 () Bool)

(declare-fun b_next!104501 () Bool)

(assert (=> b!3860352 (= b_free!103797 (not b_next!104501))))

(declare-fun tp!1170273 () Bool)

(declare-fun b_and!288971 () Bool)

(assert (=> b!3860352 (= tp!1170273 b_and!288971)))

(declare-fun b_free!103799 () Bool)

(declare-fun b_next!104503 () Bool)

(assert (=> b!3860352 (= b_free!103799 (not b_next!104503))))

(declare-fun tp!1170271 () Bool)

(declare-fun b_and!288973 () Bool)

(assert (=> b!3860352 (= tp!1170271 b_and!288973)))

(declare-datatypes ((List!41058 0))(
  ( (Nil!40934) (Cons!40934 (h!46354 (_ BitVec 16)) (t!313357 List!41058)) )
))
(declare-datatypes ((TokenValue!6566 0))(
  ( (FloatLiteralValue!13132 (text!46407 List!41058)) (TokenValueExt!6565 (__x!25349 Int)) (Broken!32830 (value!201184 List!41058)) (Object!6689) (End!6566) (Def!6566) (Underscore!6566) (Match!6566) (Else!6566) (Error!6566) (Case!6566) (If!6566) (Extends!6566) (Abstract!6566) (Class!6566) (Val!6566) (DelimiterValue!13132 (del!6626 List!41058)) (KeywordValue!6572 (value!201185 List!41058)) (CommentValue!13132 (value!201186 List!41058)) (WhitespaceValue!13132 (value!201187 List!41058)) (IndentationValue!6566 (value!201188 List!41058)) (String!46547) (Int32!6566) (Broken!32831 (value!201189 List!41058)) (Boolean!6567) (Unit!58591) (OperatorValue!6569 (op!6626 List!41058)) (IdentifierValue!13132 (value!201190 List!41058)) (IdentifierValue!13133 (value!201191 List!41058)) (WhitespaceValue!13133 (value!201192 List!41058)) (True!13132) (False!13132) (Broken!32832 (value!201193 List!41058)) (Broken!32833 (value!201194 List!41058)) (True!13133) (RightBrace!6566) (RightBracket!6566) (Colon!6566) (Null!6566) (Comma!6566) (LeftBracket!6566) (False!13133) (LeftBrace!6566) (ImaginaryLiteralValue!6566 (text!46408 List!41058)) (StringLiteralValue!19698 (value!201195 List!41058)) (EOFValue!6566 (value!201196 List!41058)) (IdentValue!6566 (value!201197 List!41058)) (DelimiterValue!13133 (value!201198 List!41058)) (DedentValue!6566 (value!201199 List!41058)) (NewLineValue!6566 (value!201200 List!41058)) (IntegerValue!19698 (value!201201 (_ BitVec 32)) (text!46409 List!41058)) (IntegerValue!19699 (value!201202 Int) (text!46410 List!41058)) (Times!6566) (Or!6566) (Equal!6566) (Minus!6566) (Broken!32834 (value!201203 List!41058)) (And!6566) (Div!6566) (LessEqual!6566) (Mod!6566) (Concat!17807) (Not!6566) (Plus!6566) (SpaceValue!6566 (value!201204 List!41058)) (IntegerValue!19700 (value!201205 Int) (text!46411 List!41058)) (StringLiteralValue!19699 (text!46412 List!41058)) (FloatLiteralValue!13133 (text!46413 List!41058)) (BytesLiteralValue!6566 (value!201206 List!41058)) (CommentValue!13133 (value!201207 List!41058)) (StringLiteralValue!19700 (value!201208 List!41058)) (ErrorTokenValue!6566 (msg!6627 List!41058)) )
))
(declare-datatypes ((C!22668 0))(
  ( (C!22669 (val!13428 Int)) )
))
(declare-datatypes ((Regex!11241 0))(
  ( (ElementMatch!11241 (c!672088 C!22668)) (Concat!17808 (regOne!22994 Regex!11241) (regTwo!22994 Regex!11241)) (EmptyExpr!11241) (Star!11241 (reg!11570 Regex!11241)) (EmptyLang!11241) (Union!11241 (regOne!22995 Regex!11241) (regTwo!22995 Regex!11241)) )
))
(declare-datatypes ((String!46548 0))(
  ( (String!46549 (value!201209 String)) )
))
(declare-datatypes ((List!41059 0))(
  ( (Nil!40935) (Cons!40935 (h!46355 C!22668) (t!313358 List!41059)) )
))
(declare-datatypes ((IArray!25099 0))(
  ( (IArray!25100 (innerList!12607 List!41059)) )
))
(declare-datatypes ((Conc!12547 0))(
  ( (Node!12547 (left!31529 Conc!12547) (right!31859 Conc!12547) (csize!25324 Int) (cheight!12758 Int)) (Leaf!19422 (xs!15853 IArray!25099) (csize!25325 Int)) (Empty!12547) )
))
(declare-datatypes ((BalanceConc!24688 0))(
  ( (BalanceConc!24689 (c!672089 Conc!12547)) )
))
(declare-datatypes ((TokenValueInjection!12560 0))(
  ( (TokenValueInjection!12561 (toValue!8764 Int) (toChars!8623 Int)) )
))
(declare-datatypes ((Rule!12472 0))(
  ( (Rule!12473 (regex!6336 Regex!11241) (tag!7196 String!46548) (isSeparator!6336 Bool) (transformation!6336 TokenValueInjection!12560)) )
))
(declare-datatypes ((Token!11810 0))(
  ( (Token!11811 (value!201210 TokenValue!6566) (rule!9204 Rule!12472) (size!30785 Int) (originalCharacters!6936 List!41059)) )
))
(declare-datatypes ((tuple2!40138 0))(
  ( (tuple2!40139 (_1!23203 Token!11810) (_2!23203 List!41059)) )
))
(declare-datatypes ((Option!8754 0))(
  ( (None!8753) (Some!8753 (v!39051 tuple2!40138)) )
))
(declare-fun lt!1341405 () Option!8754)

(declare-fun e!2386579 () Bool)

(declare-datatypes ((List!41060 0))(
  ( (Nil!40936) (Cons!40936 (h!46356 Token!11810) (t!313359 List!41060)) )
))
(declare-fun prefixTokens!80 () List!41060)

(declare-fun lt!1341389 () Token!11810)

(declare-fun b!3860341 () Bool)

(assert (=> b!3860341 (= e!2386579 (or (not (= (_1!23203 (v!39051 lt!1341405)) lt!1341389)) (not (= prefixTokens!80 Nil!40936))))))

(declare-fun tp!1170270 () Bool)

(declare-fun e!2386586 () Bool)

(declare-fun b!3860342 () Bool)

(declare-fun suffixTokens!72 () List!41060)

(declare-fun e!2386576 () Bool)

(declare-fun inv!55093 (String!46548) Bool)

(declare-fun inv!55096 (TokenValueInjection!12560) Bool)

(assert (=> b!3860342 (= e!2386586 (and tp!1170270 (inv!55093 (tag!7196 (rule!9204 (h!46356 suffixTokens!72)))) (inv!55096 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))) e!2386576))))

(declare-fun tp!1170264 () Bool)

(declare-fun e!2386567 () Bool)

(declare-fun b!3860343 () Bool)

(declare-fun e!2386587 () Bool)

(declare-fun inv!55097 (Token!11810) Bool)

(assert (=> b!3860343 (= e!2386567 (and (inv!55097 (h!46356 prefixTokens!80)) e!2386587 tp!1170264))))

(declare-fun e!2386566 () Bool)

(declare-datatypes ((List!41061 0))(
  ( (Nil!40937) (Cons!40937 (h!46357 Rule!12472) (t!313360 List!41061)) )
))
(declare-fun rules!2768 () List!41061)

(declare-fun e!2386577 () Bool)

(declare-fun b!3860344 () Bool)

(declare-fun tp!1170276 () Bool)

(assert (=> b!3860344 (= e!2386566 (and tp!1170276 (inv!55093 (tag!7196 (h!46357 rules!2768))) (inv!55096 (transformation!6336 (h!46357 rules!2768))) e!2386577))))

(declare-fun b!3860345 () Bool)

(declare-fun res!1563080 () Bool)

(declare-fun e!2386562 () Bool)

(assert (=> b!3860345 (=> res!1563080 e!2386562)))

(declare-fun suffix!1176 () List!41059)

(declare-datatypes ((tuple2!40140 0))(
  ( (tuple2!40141 (_1!23204 List!41060) (_2!23204 List!41059)) )
))
(declare-fun lt!1341392 () tuple2!40140)

(assert (=> b!3860345 (= res!1563080 (or (not (= lt!1341392 (tuple2!40141 (_1!23204 lt!1341392) (_2!23204 lt!1341392)))) (= (_2!23203 (v!39051 lt!1341405)) suffix!1176)))))

(declare-fun b!3860346 () Bool)

(declare-fun e!2386580 () Bool)

(declare-fun tp!1170275 () Bool)

(assert (=> b!3860346 (= e!2386580 (and e!2386566 tp!1170275))))

(declare-fun e!2386563 () Bool)

(assert (=> b!3860347 (= e!2386563 (and tp!1170263 tp!1170265))))

(declare-fun b!3860348 () Bool)

(declare-fun res!1563088 () Bool)

(declare-fun e!2386568 () Bool)

(assert (=> b!3860348 (=> (not res!1563088) (not e!2386568))))

(declare-fun isEmpty!24250 (List!41060) Bool)

(assert (=> b!3860348 (= res!1563088 (not (isEmpty!24250 prefixTokens!80)))))

(declare-fun b!3860349 () Bool)

(declare-fun e!2386569 () Bool)

(declare-fun e!2386572 () Bool)

(assert (=> b!3860349 (= e!2386569 e!2386572)))

(declare-fun res!1563083 () Bool)

(assert (=> b!3860349 (=> (not res!1563083) (not e!2386572))))

(get-info :version)

(assert (=> b!3860349 (= res!1563083 ((_ is Some!8753) lt!1341405))))

(declare-datatypes ((LexerInterface!5925 0))(
  ( (LexerInterfaceExt!5922 (__x!25350 Int)) (Lexer!5923) )
))
(declare-fun thiss!20629 () LexerInterface!5925)

(declare-fun lt!1341402 () List!41059)

(declare-fun maxPrefix!3229 (LexerInterface!5925 List!41061 List!41059) Option!8754)

(assert (=> b!3860349 (= lt!1341405 (maxPrefix!3229 thiss!20629 rules!2768 lt!1341402))))

(declare-fun tp!1170267 () Bool)

(declare-fun e!2386575 () Bool)

(declare-fun b!3860350 () Bool)

(assert (=> b!3860350 (= e!2386575 (and tp!1170267 (inv!55093 (tag!7196 (rule!9204 (h!46356 prefixTokens!80)))) (inv!55096 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))) e!2386563))))

(declare-fun res!1563086 () Bool)

(assert (=> start!361932 (=> (not res!1563086) (not e!2386568))))

(assert (=> start!361932 (= res!1563086 ((_ is Lexer!5923) thiss!20629))))

(assert (=> start!361932 e!2386568))

(declare-fun e!2386565 () Bool)

(assert (=> start!361932 e!2386565))

(assert (=> start!361932 true))

(declare-fun e!2386589 () Bool)

(assert (=> start!361932 e!2386589))

(assert (=> start!361932 e!2386580))

(assert (=> start!361932 e!2386567))

(declare-fun e!2386584 () Bool)

(assert (=> start!361932 e!2386584))

(declare-fun e!2386588 () Bool)

(assert (=> start!361932 e!2386588))

(declare-fun b!3860340 () Bool)

(declare-fun res!1563078 () Bool)

(assert (=> b!3860340 (=> (not res!1563078) (not e!2386568))))

(declare-fun isEmpty!24251 (List!41061) Bool)

(assert (=> b!3860340 (= res!1563078 (not (isEmpty!24251 rules!2768)))))

(declare-fun tp!1170274 () Bool)

(declare-fun b!3860351 () Bool)

(declare-fun e!2386590 () Bool)

(assert (=> b!3860351 (= e!2386584 (and (inv!55097 (h!46356 suffixTokens!72)) e!2386590 tp!1170274))))

(assert (=> b!3860352 (= e!2386576 (and tp!1170273 tp!1170271))))

(declare-fun b!3860353 () Bool)

(declare-fun res!1563073 () Bool)

(assert (=> b!3860353 (=> (not res!1563073) (not e!2386569))))

(declare-fun suffixResult!91 () List!41059)

(declare-fun lexList!1693 (LexerInterface!5925 List!41061 List!41059) tuple2!40140)

(assert (=> b!3860353 (= res!1563073 (= (lexList!1693 thiss!20629 rules!2768 suffix!1176) (tuple2!40141 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3860354 () Bool)

(declare-fun e!2386582 () Bool)

(declare-fun e!2386583 () Bool)

(assert (=> b!3860354 (= e!2386582 e!2386583)))

(declare-fun res!1563076 () Bool)

(assert (=> b!3860354 (=> res!1563076 e!2386583)))

(declare-fun lt!1341400 () Int)

(declare-fun lt!1341397 () Int)

(declare-fun lt!1341401 () Int)

(declare-fun lt!1341404 () Int)

(assert (=> b!3860354 (= res!1563076 (or (not (= (+ lt!1341404 lt!1341397) lt!1341400)) (<= lt!1341401 lt!1341404)))))

(declare-fun prefix!426 () List!41059)

(declare-fun size!30786 (List!41059) Int)

(assert (=> b!3860354 (= lt!1341404 (size!30786 prefix!426))))

(declare-fun tp!1170269 () Bool)

(declare-fun b!3860355 () Bool)

(declare-fun inv!21 (TokenValue!6566) Bool)

(assert (=> b!3860355 (= e!2386587 (and (inv!21 (value!201210 (h!46356 prefixTokens!80))) e!2386575 tp!1170269))))

(declare-fun b!3860356 () Bool)

(declare-fun res!1563072 () Bool)

(assert (=> b!3860356 (=> (not res!1563072) (not e!2386568))))

(declare-fun rulesInvariant!5268 (LexerInterface!5925 List!41061) Bool)

(assert (=> b!3860356 (= res!1563072 (rulesInvariant!5268 thiss!20629 rules!2768))))

(declare-fun b!3860357 () Bool)

(declare-fun tp_is_empty!19453 () Bool)

(declare-fun tp!1170262 () Bool)

(assert (=> b!3860357 (= e!2386589 (and tp_is_empty!19453 tp!1170262))))

(assert (=> b!3860358 (= e!2386577 (and tp!1170272 tp!1170261))))

(declare-fun b!3860359 () Bool)

(declare-fun res!1563079 () Bool)

(assert (=> b!3860359 (=> (not res!1563079) (not e!2386568))))

(declare-fun isEmpty!24252 (List!41059) Bool)

(assert (=> b!3860359 (= res!1563079 (not (isEmpty!24252 prefix!426)))))

(declare-fun b!3860360 () Bool)

(declare-fun e!2386574 () Bool)

(assert (=> b!3860360 (= e!2386583 e!2386574)))

(declare-fun res!1563084 () Bool)

(assert (=> b!3860360 (=> res!1563084 e!2386574)))

(declare-fun lt!1341406 () List!41059)

(declare-fun matchR!5388 (Regex!11241 List!41059) Bool)

(assert (=> b!3860360 (= res!1563084 (not (matchR!5388 (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))) lt!1341406)))))

(declare-fun lt!1341394 () TokenValue!6566)

(declare-fun maxPrefixOneRule!2311 (LexerInterface!5925 Rule!12472 List!41059) Option!8754)

(assert (=> b!3860360 (= (maxPrefixOneRule!2311 thiss!20629 (rule!9204 (_1!23203 (v!39051 lt!1341405))) lt!1341402) (Some!8753 (tuple2!40139 (Token!11811 lt!1341394 (rule!9204 (_1!23203 (v!39051 lt!1341405))) lt!1341401 lt!1341406) (_2!23203 (v!39051 lt!1341405)))))))

(declare-datatypes ((Unit!58592 0))(
  ( (Unit!58593) )
))
(declare-fun lt!1341396 () Unit!58592)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1209 (LexerInterface!5925 List!41061 List!41059 List!41059 List!41059 Rule!12472) Unit!58592)

(assert (=> b!3860360 (= lt!1341396 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1209 thiss!20629 rules!2768 lt!1341406 lt!1341402 (_2!23203 (v!39051 lt!1341405)) (rule!9204 (_1!23203 (v!39051 lt!1341405)))))))

(declare-fun b!3860361 () Bool)

(declare-fun tp!1170266 () Bool)

(assert (=> b!3860361 (= e!2386588 (and tp_is_empty!19453 tp!1170266))))

(declare-fun b!3860362 () Bool)

(declare-fun res!1563077 () Bool)

(assert (=> b!3860362 (=> res!1563077 e!2386579)))

(declare-fun tail!5851 (List!41060) List!41060)

(assert (=> b!3860362 (= res!1563077 (isEmpty!24250 (tail!5851 prefixTokens!80)))))

(declare-fun b!3860363 () Bool)

(declare-fun res!1563082 () Bool)

(assert (=> b!3860363 (=> res!1563082 e!2386562)))

(declare-fun lt!1341393 () tuple2!40140)

(declare-fun ++!10429 (List!41060 List!41060) List!41060)

(assert (=> b!3860363 (= res!1563082 (not (= lt!1341393 (tuple2!40141 (++!10429 (Cons!40936 (_1!23203 (v!39051 lt!1341405)) Nil!40936) (_1!23204 lt!1341392)) (_2!23204 lt!1341392)))))))

(declare-fun tp!1170260 () Bool)

(declare-fun b!3860364 () Bool)

(assert (=> b!3860364 (= e!2386590 (and (inv!21 (value!201210 (h!46356 suffixTokens!72))) e!2386586 tp!1170260))))

(declare-fun b!3860365 () Bool)

(assert (=> b!3860365 (= e!2386572 (not e!2386562))))

(declare-fun res!1563085 () Bool)

(assert (=> b!3860365 (=> res!1563085 e!2386562)))

(declare-fun lt!1341395 () List!41059)

(assert (=> b!3860365 (= res!1563085 (not (= lt!1341395 lt!1341402)))))

(assert (=> b!3860365 (= lt!1341392 (lexList!1693 thiss!20629 rules!2768 (_2!23203 (v!39051 lt!1341405))))))

(declare-fun lt!1341391 () List!41059)

(assert (=> b!3860365 (and (= (size!30785 (_1!23203 (v!39051 lt!1341405))) lt!1341401) (= (originalCharacters!6936 (_1!23203 (v!39051 lt!1341405))) lt!1341406) (= (v!39051 lt!1341405) (tuple2!40139 (Token!11811 lt!1341394 (rule!9204 (_1!23203 (v!39051 lt!1341405))) lt!1341401 lt!1341406) lt!1341391)))))

(assert (=> b!3860365 (= lt!1341401 (size!30786 lt!1341406))))

(declare-fun e!2386585 () Bool)

(assert (=> b!3860365 e!2386585))

(declare-fun res!1563075 () Bool)

(assert (=> b!3860365 (=> (not res!1563075) (not e!2386585))))

(assert (=> b!3860365 (= res!1563075 (= (value!201210 (_1!23203 (v!39051 lt!1341405))) lt!1341394))))

(declare-fun apply!9579 (TokenValueInjection!12560 BalanceConc!24688) TokenValue!6566)

(declare-fun seqFromList!4607 (List!41059) BalanceConc!24688)

(assert (=> b!3860365 (= lt!1341394 (apply!9579 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))) (seqFromList!4607 lt!1341406)))))

(assert (=> b!3860365 (= (_2!23203 (v!39051 lt!1341405)) lt!1341391)))

(declare-fun lt!1341388 () Unit!58592)

(declare-fun lemmaSamePrefixThenSameSuffix!1656 (List!41059 List!41059 List!41059 List!41059 List!41059) Unit!58592)

(assert (=> b!3860365 (= lt!1341388 (lemmaSamePrefixThenSameSuffix!1656 lt!1341406 (_2!23203 (v!39051 lt!1341405)) lt!1341406 lt!1341391 lt!1341402))))

(declare-fun getSuffix!1890 (List!41059 List!41059) List!41059)

(assert (=> b!3860365 (= lt!1341391 (getSuffix!1890 lt!1341402 lt!1341406))))

(declare-fun isPrefix!3435 (List!41059 List!41059) Bool)

(assert (=> b!3860365 (isPrefix!3435 lt!1341406 lt!1341395)))

(declare-fun ++!10430 (List!41059 List!41059) List!41059)

(assert (=> b!3860365 (= lt!1341395 (++!10430 lt!1341406 (_2!23203 (v!39051 lt!1341405))))))

(declare-fun lt!1341399 () Unit!58592)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2298 (List!41059 List!41059) Unit!58592)

(assert (=> b!3860365 (= lt!1341399 (lemmaConcatTwoListThenFirstIsPrefix!2298 lt!1341406 (_2!23203 (v!39051 lt!1341405))))))

(declare-fun list!15236 (BalanceConc!24688) List!41059)

(declare-fun charsOf!4164 (Token!11810) BalanceConc!24688)

(assert (=> b!3860365 (= lt!1341406 (list!15236 (charsOf!4164 (_1!23203 (v!39051 lt!1341405)))))))

(declare-fun ruleValid!2288 (LexerInterface!5925 Rule!12472) Bool)

(assert (=> b!3860365 (ruleValid!2288 thiss!20629 (rule!9204 (_1!23203 (v!39051 lt!1341405))))))

(declare-fun lt!1341390 () Unit!58592)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1368 (LexerInterface!5925 Rule!12472 List!41061) Unit!58592)

(assert (=> b!3860365 (= lt!1341390 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1368 thiss!20629 (rule!9204 (_1!23203 (v!39051 lt!1341405))) rules!2768))))

(declare-fun lt!1341403 () Unit!58592)

(declare-fun lemmaCharactersSize!997 (Token!11810) Unit!58592)

(assert (=> b!3860365 (= lt!1341403 (lemmaCharactersSize!997 (_1!23203 (v!39051 lt!1341405))))))

(declare-fun b!3860366 () Bool)

(declare-fun res!1563071 () Bool)

(assert (=> b!3860366 (=> res!1563071 e!2386579)))

(declare-fun lt!1341398 () tuple2!40138)

(assert (=> b!3860366 (= res!1563071 (>= (size!30786 (_2!23203 lt!1341398)) lt!1341397))))

(declare-fun b!3860367 () Bool)

(assert (=> b!3860367 (= e!2386568 e!2386569)))

(declare-fun res!1563074 () Bool)

(assert (=> b!3860367 (=> (not res!1563074) (not e!2386569))))

(declare-fun lt!1341407 () List!41060)

(assert (=> b!3860367 (= res!1563074 (= lt!1341393 (tuple2!40141 lt!1341407 suffixResult!91)))))

(assert (=> b!3860367 (= lt!1341393 (lexList!1693 thiss!20629 rules!2768 lt!1341402))))

(assert (=> b!3860367 (= lt!1341407 (++!10429 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3860367 (= lt!1341402 (++!10430 prefix!426 suffix!1176))))

(declare-fun b!3860368 () Bool)

(assert (=> b!3860368 (= e!2386574 e!2386579)))

(declare-fun res!1563081 () Bool)

(assert (=> b!3860368 (=> res!1563081 e!2386579)))

(assert (=> b!3860368 (= res!1563081 (not (= (_1!23203 lt!1341398) lt!1341389)))))

(declare-fun head!8140 (List!41060) Token!11810)

(assert (=> b!3860368 (= lt!1341389 (head!8140 prefixTokens!80))))

(declare-fun get!13544 (Option!8754) tuple2!40138)

(assert (=> b!3860368 (= lt!1341398 (get!13544 lt!1341405))))

(declare-fun b!3860369 () Bool)

(declare-fun e!2386570 () Bool)

(assert (=> b!3860369 (= e!2386570 e!2386582)))

(declare-fun res!1563087 () Bool)

(assert (=> b!3860369 (=> res!1563087 e!2386582)))

(declare-fun lt!1341387 () Int)

(assert (=> b!3860369 (= res!1563087 (not (= (+ lt!1341401 lt!1341387) lt!1341400)))))

(assert (=> b!3860369 (= lt!1341400 (size!30786 lt!1341402))))

(declare-fun b!3860370 () Bool)

(assert (=> b!3860370 (= e!2386585 (= (size!30785 (_1!23203 (v!39051 lt!1341405))) (size!30786 (originalCharacters!6936 (_1!23203 (v!39051 lt!1341405))))))))

(declare-fun b!3860371 () Bool)

(assert (=> b!3860371 (= e!2386562 e!2386570)))

(declare-fun res!1563089 () Bool)

(assert (=> b!3860371 (=> res!1563089 e!2386570)))

(assert (=> b!3860371 (= res!1563089 (>= lt!1341387 lt!1341397))))

(assert (=> b!3860371 (= lt!1341397 (size!30786 suffix!1176))))

(assert (=> b!3860371 (= lt!1341387 (size!30786 (_2!23203 (v!39051 lt!1341405))))))

(declare-fun b!3860372 () Bool)

(declare-fun tp!1170268 () Bool)

(assert (=> b!3860372 (= e!2386565 (and tp_is_empty!19453 tp!1170268))))

(assert (= (and start!361932 res!1563086) b!3860340))

(assert (= (and b!3860340 res!1563078) b!3860356))

(assert (= (and b!3860356 res!1563072) b!3860348))

(assert (= (and b!3860348 res!1563088) b!3860359))

(assert (= (and b!3860359 res!1563079) b!3860367))

(assert (= (and b!3860367 res!1563074) b!3860353))

(assert (= (and b!3860353 res!1563073) b!3860349))

(assert (= (and b!3860349 res!1563083) b!3860365))

(assert (= (and b!3860365 res!1563075) b!3860370))

(assert (= (and b!3860365 (not res!1563085)) b!3860363))

(assert (= (and b!3860363 (not res!1563082)) b!3860345))

(assert (= (and b!3860345 (not res!1563080)) b!3860371))

(assert (= (and b!3860371 (not res!1563089)) b!3860369))

(assert (= (and b!3860369 (not res!1563087)) b!3860354))

(assert (= (and b!3860354 (not res!1563076)) b!3860360))

(assert (= (and b!3860360 (not res!1563084)) b!3860368))

(assert (= (and b!3860368 (not res!1563081)) b!3860366))

(assert (= (and b!3860366 (not res!1563071)) b!3860362))

(assert (= (and b!3860362 (not res!1563077)) b!3860341))

(assert (= (and start!361932 ((_ is Cons!40935) suffixResult!91)) b!3860372))

(assert (= (and start!361932 ((_ is Cons!40935) suffix!1176)) b!3860357))

(assert (= b!3860344 b!3860358))

(assert (= b!3860346 b!3860344))

(assert (= (and start!361932 ((_ is Cons!40937) rules!2768)) b!3860346))

(assert (= b!3860350 b!3860347))

(assert (= b!3860355 b!3860350))

(assert (= b!3860343 b!3860355))

(assert (= (and start!361932 ((_ is Cons!40936) prefixTokens!80)) b!3860343))

(assert (= b!3860342 b!3860352))

(assert (= b!3860364 b!3860342))

(assert (= b!3860351 b!3860364))

(assert (= (and start!361932 ((_ is Cons!40936) suffixTokens!72)) b!3860351))

(assert (= (and start!361932 ((_ is Cons!40935) prefix!426)) b!3860361))

(declare-fun m!4415811 () Bool)

(assert (=> b!3860342 m!4415811))

(declare-fun m!4415813 () Bool)

(assert (=> b!3860342 m!4415813))

(declare-fun m!4415815 () Bool)

(assert (=> b!3860367 m!4415815))

(declare-fun m!4415817 () Bool)

(assert (=> b!3860367 m!4415817))

(declare-fun m!4415819 () Bool)

(assert (=> b!3860367 m!4415819))

(declare-fun m!4415821 () Bool)

(assert (=> b!3860369 m!4415821))

(declare-fun m!4415823 () Bool)

(assert (=> b!3860348 m!4415823))

(declare-fun m!4415825 () Bool)

(assert (=> b!3860349 m!4415825))

(declare-fun m!4415827 () Bool)

(assert (=> b!3860370 m!4415827))

(declare-fun m!4415829 () Bool)

(assert (=> b!3860363 m!4415829))

(declare-fun m!4415831 () Bool)

(assert (=> b!3860359 m!4415831))

(declare-fun m!4415833 () Bool)

(assert (=> b!3860353 m!4415833))

(declare-fun m!4415835 () Bool)

(assert (=> b!3860350 m!4415835))

(declare-fun m!4415837 () Bool)

(assert (=> b!3860350 m!4415837))

(declare-fun m!4415839 () Bool)

(assert (=> b!3860344 m!4415839))

(declare-fun m!4415841 () Bool)

(assert (=> b!3860344 m!4415841))

(declare-fun m!4415843 () Bool)

(assert (=> b!3860351 m!4415843))

(declare-fun m!4415845 () Bool)

(assert (=> b!3860362 m!4415845))

(assert (=> b!3860362 m!4415845))

(declare-fun m!4415847 () Bool)

(assert (=> b!3860362 m!4415847))

(declare-fun m!4415849 () Bool)

(assert (=> b!3860364 m!4415849))

(declare-fun m!4415851 () Bool)

(assert (=> b!3860360 m!4415851))

(declare-fun m!4415853 () Bool)

(assert (=> b!3860360 m!4415853))

(declare-fun m!4415855 () Bool)

(assert (=> b!3860360 m!4415855))

(declare-fun m!4415857 () Bool)

(assert (=> b!3860365 m!4415857))

(declare-fun m!4415859 () Bool)

(assert (=> b!3860365 m!4415859))

(declare-fun m!4415861 () Bool)

(assert (=> b!3860365 m!4415861))

(declare-fun m!4415863 () Bool)

(assert (=> b!3860365 m!4415863))

(declare-fun m!4415865 () Bool)

(assert (=> b!3860365 m!4415865))

(declare-fun m!4415867 () Bool)

(assert (=> b!3860365 m!4415867))

(declare-fun m!4415869 () Bool)

(assert (=> b!3860365 m!4415869))

(assert (=> b!3860365 m!4415863))

(declare-fun m!4415871 () Bool)

(assert (=> b!3860365 m!4415871))

(declare-fun m!4415873 () Bool)

(assert (=> b!3860365 m!4415873))

(declare-fun m!4415875 () Bool)

(assert (=> b!3860365 m!4415875))

(declare-fun m!4415877 () Bool)

(assert (=> b!3860365 m!4415877))

(declare-fun m!4415879 () Bool)

(assert (=> b!3860365 m!4415879))

(declare-fun m!4415881 () Bool)

(assert (=> b!3860365 m!4415881))

(declare-fun m!4415883 () Bool)

(assert (=> b!3860365 m!4415883))

(assert (=> b!3860365 m!4415875))

(declare-fun m!4415885 () Bool)

(assert (=> b!3860368 m!4415885))

(declare-fun m!4415887 () Bool)

(assert (=> b!3860368 m!4415887))

(declare-fun m!4415889 () Bool)

(assert (=> b!3860355 m!4415889))

(declare-fun m!4415891 () Bool)

(assert (=> b!3860371 m!4415891))

(declare-fun m!4415893 () Bool)

(assert (=> b!3860371 m!4415893))

(declare-fun m!4415895 () Bool)

(assert (=> b!3860366 m!4415895))

(declare-fun m!4415897 () Bool)

(assert (=> b!3860340 m!4415897))

(declare-fun m!4415899 () Bool)

(assert (=> b!3860343 m!4415899))

(declare-fun m!4415901 () Bool)

(assert (=> b!3860356 m!4415901))

(declare-fun m!4415903 () Bool)

(assert (=> b!3860354 m!4415903))

(check-sat (not b!3860361) b_and!288969 (not b!3860342) (not b!3860370) (not b!3860363) (not b!3860364) (not b!3860349) (not b!3860359) b_and!288967 (not b_next!104493) (not b!3860360) (not b!3860369) (not b!3860346) (not b!3860355) (not b_next!104501) (not b!3860372) (not b_next!104503) (not b_next!104497) (not b!3860365) (not b!3860351) (not b!3860371) (not b!3860343) (not b!3860348) (not b!3860368) b_and!288973 tp_is_empty!19453 b_and!288971 (not b_next!104499) (not b!3860356) (not b_next!104495) (not b!3860354) (not b!3860366) (not b!3860357) (not b!3860353) b_and!288963 (not b!3860367) b_and!288965 (not b!3860340) (not b!3860362) (not b!3860350) (not b!3860344))
(check-sat b_and!288969 b_and!288967 b_and!288973 (not b_next!104493) (not b_next!104495) b_and!288963 b_and!288965 (not b_next!104501) (not b_next!104503) (not b_next!104497) b_and!288971 (not b_next!104499))
(get-model)

(declare-fun d!1144231 () Bool)

(declare-fun lt!1341410 () Int)

(assert (=> d!1144231 (>= lt!1341410 0)))

(declare-fun e!2386593 () Int)

(assert (=> d!1144231 (= lt!1341410 e!2386593)))

(declare-fun c!672092 () Bool)

(assert (=> d!1144231 (= c!672092 ((_ is Nil!40935) prefix!426))))

(assert (=> d!1144231 (= (size!30786 prefix!426) lt!1341410)))

(declare-fun b!3860377 () Bool)

(assert (=> b!3860377 (= e!2386593 0)))

(declare-fun b!3860378 () Bool)

(assert (=> b!3860378 (= e!2386593 (+ 1 (size!30786 (t!313358 prefix!426))))))

(assert (= (and d!1144231 c!672092) b!3860377))

(assert (= (and d!1144231 (not c!672092)) b!3860378))

(declare-fun m!4415905 () Bool)

(assert (=> b!3860378 m!4415905))

(assert (=> b!3860354 d!1144231))

(declare-fun d!1144233 () Bool)

(declare-fun e!2386620 () Bool)

(assert (=> d!1144233 e!2386620))

(declare-fun c!672103 () Bool)

(declare-fun lt!1341433 () tuple2!40140)

(declare-fun size!30788 (List!41060) Int)

(assert (=> d!1144233 (= c!672103 (> (size!30788 (_1!23204 lt!1341433)) 0))))

(declare-fun e!2386618 () tuple2!40140)

(assert (=> d!1144233 (= lt!1341433 e!2386618)))

(declare-fun c!672104 () Bool)

(declare-fun lt!1341434 () Option!8754)

(assert (=> d!1144233 (= c!672104 ((_ is Some!8753) lt!1341434))))

(assert (=> d!1144233 (= lt!1341434 (maxPrefix!3229 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1144233 (= (lexList!1693 thiss!20629 rules!2768 suffix!1176) lt!1341433)))

(declare-fun b!3860419 () Bool)

(assert (=> b!3860419 (= e!2386620 (= (_2!23204 lt!1341433) suffix!1176))))

(declare-fun b!3860420 () Bool)

(declare-fun lt!1341432 () tuple2!40140)

(assert (=> b!3860420 (= e!2386618 (tuple2!40141 (Cons!40936 (_1!23203 (v!39051 lt!1341434)) (_1!23204 lt!1341432)) (_2!23204 lt!1341432)))))

(assert (=> b!3860420 (= lt!1341432 (lexList!1693 thiss!20629 rules!2768 (_2!23203 (v!39051 lt!1341434))))))

(declare-fun b!3860421 () Bool)

(declare-fun e!2386619 () Bool)

(assert (=> b!3860421 (= e!2386619 (not (isEmpty!24250 (_1!23204 lt!1341433))))))

(declare-fun b!3860422 () Bool)

(assert (=> b!3860422 (= e!2386620 e!2386619)))

(declare-fun res!1563115 () Bool)

(assert (=> b!3860422 (= res!1563115 (< (size!30786 (_2!23204 lt!1341433)) (size!30786 suffix!1176)))))

(assert (=> b!3860422 (=> (not res!1563115) (not e!2386619))))

(declare-fun b!3860423 () Bool)

(assert (=> b!3860423 (= e!2386618 (tuple2!40141 Nil!40936 suffix!1176))))

(assert (= (and d!1144233 c!672104) b!3860420))

(assert (= (and d!1144233 (not c!672104)) b!3860423))

(assert (= (and d!1144233 c!672103) b!3860422))

(assert (= (and d!1144233 (not c!672103)) b!3860419))

(assert (= (and b!3860422 res!1563115) b!3860421))

(declare-fun m!4415943 () Bool)

(assert (=> d!1144233 m!4415943))

(declare-fun m!4415945 () Bool)

(assert (=> d!1144233 m!4415945))

(declare-fun m!4415947 () Bool)

(assert (=> b!3860420 m!4415947))

(declare-fun m!4415949 () Bool)

(assert (=> b!3860421 m!4415949))

(declare-fun m!4415951 () Bool)

(assert (=> b!3860422 m!4415951))

(assert (=> b!3860422 m!4415891))

(assert (=> b!3860353 d!1144233))

(declare-fun d!1144249 () Bool)

(declare-fun res!1563120 () Bool)

(declare-fun e!2386623 () Bool)

(assert (=> d!1144249 (=> (not res!1563120) (not e!2386623))))

(assert (=> d!1144249 (= res!1563120 (not (isEmpty!24252 (originalCharacters!6936 (h!46356 suffixTokens!72)))))))

(assert (=> d!1144249 (= (inv!55097 (h!46356 suffixTokens!72)) e!2386623)))

(declare-fun b!3860428 () Bool)

(declare-fun res!1563121 () Bool)

(assert (=> b!3860428 (=> (not res!1563121) (not e!2386623))))

(declare-fun dynLambda!17657 (Int TokenValue!6566) BalanceConc!24688)

(assert (=> b!3860428 (= res!1563121 (= (originalCharacters!6936 (h!46356 suffixTokens!72)) (list!15236 (dynLambda!17657 (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))) (value!201210 (h!46356 suffixTokens!72))))))))

(declare-fun b!3860429 () Bool)

(assert (=> b!3860429 (= e!2386623 (= (size!30785 (h!46356 suffixTokens!72)) (size!30786 (originalCharacters!6936 (h!46356 suffixTokens!72)))))))

(assert (= (and d!1144249 res!1563120) b!3860428))

(assert (= (and b!3860428 res!1563121) b!3860429))

(declare-fun b_lambda!112839 () Bool)

(assert (=> (not b_lambda!112839) (not b!3860428)))

(declare-fun t!313362 () Bool)

(declare-fun tb!223601 () Bool)

(assert (=> (and b!3860358 (= (toChars!8623 (transformation!6336 (h!46357 rules!2768))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72))))) t!313362) tb!223601))

(declare-fun b!3860434 () Bool)

(declare-fun e!2386626 () Bool)

(declare-fun tp!1170279 () Bool)

(declare-fun inv!55100 (Conc!12547) Bool)

(assert (=> b!3860434 (= e!2386626 (and (inv!55100 (c!672089 (dynLambda!17657 (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))) (value!201210 (h!46356 suffixTokens!72))))) tp!1170279))))

(declare-fun result!272314 () Bool)

(declare-fun inv!55101 (BalanceConc!24688) Bool)

(assert (=> tb!223601 (= result!272314 (and (inv!55101 (dynLambda!17657 (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))) (value!201210 (h!46356 suffixTokens!72)))) e!2386626))))

(assert (= tb!223601 b!3860434))

(declare-fun m!4415953 () Bool)

(assert (=> b!3860434 m!4415953))

(declare-fun m!4415955 () Bool)

(assert (=> tb!223601 m!4415955))

(assert (=> b!3860428 t!313362))

(declare-fun b_and!288975 () Bool)

(assert (= b_and!288965 (and (=> t!313362 result!272314) b_and!288975)))

(declare-fun tb!223603 () Bool)

(declare-fun t!313364 () Bool)

(assert (=> (and b!3860347 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72))))) t!313364) tb!223603))

(declare-fun result!272318 () Bool)

(assert (= result!272318 result!272314))

(assert (=> b!3860428 t!313364))

(declare-fun b_and!288977 () Bool)

(assert (= b_and!288969 (and (=> t!313364 result!272318) b_and!288977)))

(declare-fun t!313366 () Bool)

(declare-fun tb!223605 () Bool)

(assert (=> (and b!3860352 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72))))) t!313366) tb!223605))

(declare-fun result!272320 () Bool)

(assert (= result!272320 result!272314))

(assert (=> b!3860428 t!313366))

(declare-fun b_and!288979 () Bool)

(assert (= b_and!288973 (and (=> t!313366 result!272320) b_and!288979)))

(declare-fun m!4415957 () Bool)

(assert (=> d!1144249 m!4415957))

(declare-fun m!4415959 () Bool)

(assert (=> b!3860428 m!4415959))

(assert (=> b!3860428 m!4415959))

(declare-fun m!4415961 () Bool)

(assert (=> b!3860428 m!4415961))

(declare-fun m!4415963 () Bool)

(assert (=> b!3860429 m!4415963))

(assert (=> b!3860351 d!1144249))

(declare-fun d!1144251 () Bool)

(declare-fun lt!1341435 () Int)

(assert (=> d!1144251 (>= lt!1341435 0)))

(declare-fun e!2386627 () Int)

(assert (=> d!1144251 (= lt!1341435 e!2386627)))

(declare-fun c!672105 () Bool)

(assert (=> d!1144251 (= c!672105 ((_ is Nil!40935) suffix!1176))))

(assert (=> d!1144251 (= (size!30786 suffix!1176) lt!1341435)))

(declare-fun b!3860435 () Bool)

(assert (=> b!3860435 (= e!2386627 0)))

(declare-fun b!3860436 () Bool)

(assert (=> b!3860436 (= e!2386627 (+ 1 (size!30786 (t!313358 suffix!1176))))))

(assert (= (and d!1144251 c!672105) b!3860435))

(assert (= (and d!1144251 (not c!672105)) b!3860436))

(declare-fun m!4415965 () Bool)

(assert (=> b!3860436 m!4415965))

(assert (=> b!3860371 d!1144251))

(declare-fun d!1144253 () Bool)

(declare-fun lt!1341436 () Int)

(assert (=> d!1144253 (>= lt!1341436 0)))

(declare-fun e!2386628 () Int)

(assert (=> d!1144253 (= lt!1341436 e!2386628)))

(declare-fun c!672106 () Bool)

(assert (=> d!1144253 (= c!672106 ((_ is Nil!40935) (_2!23203 (v!39051 lt!1341405))))))

(assert (=> d!1144253 (= (size!30786 (_2!23203 (v!39051 lt!1341405))) lt!1341436)))

(declare-fun b!3860437 () Bool)

(assert (=> b!3860437 (= e!2386628 0)))

(declare-fun b!3860438 () Bool)

(assert (=> b!3860438 (= e!2386628 (+ 1 (size!30786 (t!313358 (_2!23203 (v!39051 lt!1341405))))))))

(assert (= (and d!1144253 c!672106) b!3860437))

(assert (= (and d!1144253 (not c!672106)) b!3860438))

(declare-fun m!4415967 () Bool)

(assert (=> b!3860438 m!4415967))

(assert (=> b!3860371 d!1144253))

(declare-fun d!1144255 () Bool)

(assert (=> d!1144255 (= (inv!55093 (tag!7196 (rule!9204 (h!46356 prefixTokens!80)))) (= (mod (str.len (value!201209 (tag!7196 (rule!9204 (h!46356 prefixTokens!80))))) 2) 0))))

(assert (=> b!3860350 d!1144255))

(declare-fun d!1144257 () Bool)

(declare-fun res!1563127 () Bool)

(declare-fun e!2386646 () Bool)

(assert (=> d!1144257 (=> (not res!1563127) (not e!2386646))))

(declare-fun semiInverseModEq!2716 (Int Int) Bool)

(assert (=> d!1144257 (= res!1563127 (semiInverseModEq!2716 (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))) (toValue!8764 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80))))))))

(assert (=> d!1144257 (= (inv!55096 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))) e!2386646)))

(declare-fun b!3860464 () Bool)

(declare-fun equivClasses!2615 (Int Int) Bool)

(assert (=> b!3860464 (= e!2386646 (equivClasses!2615 (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))) (toValue!8764 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80))))))))

(assert (= (and d!1144257 res!1563127) b!3860464))

(declare-fun m!4415985 () Bool)

(assert (=> d!1144257 m!4415985))

(declare-fun m!4415987 () Bool)

(assert (=> b!3860464 m!4415987))

(assert (=> b!3860350 d!1144257))

(declare-fun b!3860594 () Bool)

(declare-fun res!1563195 () Bool)

(declare-fun e!2386714 () Bool)

(assert (=> b!3860594 (=> (not res!1563195) (not e!2386714))))

(declare-fun lt!1341478 () Option!8754)

(assert (=> b!3860594 (= res!1563195 (= (list!15236 (charsOf!4164 (_1!23203 (get!13544 lt!1341478)))) (originalCharacters!6936 (_1!23203 (get!13544 lt!1341478)))))))

(declare-fun b!3860595 () Bool)

(declare-fun e!2386716 () Option!8754)

(declare-fun call!282534 () Option!8754)

(assert (=> b!3860595 (= e!2386716 call!282534)))

(declare-fun b!3860596 () Bool)

(declare-fun res!1563196 () Bool)

(assert (=> b!3860596 (=> (not res!1563196) (not e!2386714))))

(assert (=> b!3860596 (= res!1563196 (= (++!10430 (list!15236 (charsOf!4164 (_1!23203 (get!13544 lt!1341478)))) (_2!23203 (get!13544 lt!1341478))) lt!1341402))))

(declare-fun b!3860597 () Bool)

(declare-fun res!1563197 () Bool)

(assert (=> b!3860597 (=> (not res!1563197) (not e!2386714))))

(assert (=> b!3860597 (= res!1563197 (< (size!30786 (_2!23203 (get!13544 lt!1341478))) (size!30786 lt!1341402)))))

(declare-fun b!3860598 () Bool)

(declare-fun e!2386715 () Bool)

(assert (=> b!3860598 (= e!2386715 e!2386714)))

(declare-fun res!1563199 () Bool)

(assert (=> b!3860598 (=> (not res!1563199) (not e!2386714))))

(declare-fun isDefined!6864 (Option!8754) Bool)

(assert (=> b!3860598 (= res!1563199 (isDefined!6864 lt!1341478))))

(declare-fun d!1144265 () Bool)

(assert (=> d!1144265 e!2386715))

(declare-fun res!1563194 () Bool)

(assert (=> d!1144265 (=> res!1563194 e!2386715)))

(declare-fun isEmpty!24253 (Option!8754) Bool)

(assert (=> d!1144265 (= res!1563194 (isEmpty!24253 lt!1341478))))

(assert (=> d!1144265 (= lt!1341478 e!2386716)))

(declare-fun c!672144 () Bool)

(assert (=> d!1144265 (= c!672144 (and ((_ is Cons!40937) rules!2768) ((_ is Nil!40937) (t!313360 rules!2768))))))

(declare-fun lt!1341481 () Unit!58592)

(declare-fun lt!1341480 () Unit!58592)

(assert (=> d!1144265 (= lt!1341481 lt!1341480)))

(assert (=> d!1144265 (isPrefix!3435 lt!1341402 lt!1341402)))

(declare-fun lemmaIsPrefixRefl!2187 (List!41059 List!41059) Unit!58592)

(assert (=> d!1144265 (= lt!1341480 (lemmaIsPrefixRefl!2187 lt!1341402 lt!1341402))))

(declare-fun rulesValidInductive!2259 (LexerInterface!5925 List!41061) Bool)

(assert (=> d!1144265 (rulesValidInductive!2259 thiss!20629 rules!2768)))

(assert (=> d!1144265 (= (maxPrefix!3229 thiss!20629 rules!2768 lt!1341402) lt!1341478)))

(declare-fun b!3860599 () Bool)

(declare-fun lt!1341479 () Option!8754)

(declare-fun lt!1341482 () Option!8754)

(assert (=> b!3860599 (= e!2386716 (ite (and ((_ is None!8753) lt!1341479) ((_ is None!8753) lt!1341482)) None!8753 (ite ((_ is None!8753) lt!1341482) lt!1341479 (ite ((_ is None!8753) lt!1341479) lt!1341482 (ite (>= (size!30785 (_1!23203 (v!39051 lt!1341479))) (size!30785 (_1!23203 (v!39051 lt!1341482)))) lt!1341479 lt!1341482)))))))

(assert (=> b!3860599 (= lt!1341479 call!282534)))

(assert (=> b!3860599 (= lt!1341482 (maxPrefix!3229 thiss!20629 (t!313360 rules!2768) lt!1341402))))

(declare-fun bm!282529 () Bool)

(assert (=> bm!282529 (= call!282534 (maxPrefixOneRule!2311 thiss!20629 (h!46357 rules!2768) lt!1341402))))

(declare-fun b!3860600 () Bool)

(declare-fun res!1563198 () Bool)

(assert (=> b!3860600 (=> (not res!1563198) (not e!2386714))))

(assert (=> b!3860600 (= res!1563198 (= (value!201210 (_1!23203 (get!13544 lt!1341478))) (apply!9579 (transformation!6336 (rule!9204 (_1!23203 (get!13544 lt!1341478)))) (seqFromList!4607 (originalCharacters!6936 (_1!23203 (get!13544 lt!1341478)))))))))

(declare-fun b!3860601 () Bool)

(declare-fun res!1563200 () Bool)

(assert (=> b!3860601 (=> (not res!1563200) (not e!2386714))))

(assert (=> b!3860601 (= res!1563200 (matchR!5388 (regex!6336 (rule!9204 (_1!23203 (get!13544 lt!1341478)))) (list!15236 (charsOf!4164 (_1!23203 (get!13544 lt!1341478))))))))

(declare-fun b!3860602 () Bool)

(declare-fun contains!8269 (List!41061 Rule!12472) Bool)

(assert (=> b!3860602 (= e!2386714 (contains!8269 rules!2768 (rule!9204 (_1!23203 (get!13544 lt!1341478)))))))

(assert (= (and d!1144265 c!672144) b!3860595))

(assert (= (and d!1144265 (not c!672144)) b!3860599))

(assert (= (or b!3860595 b!3860599) bm!282529))

(assert (= (and d!1144265 (not res!1563194)) b!3860598))

(assert (= (and b!3860598 res!1563199) b!3860594))

(assert (= (and b!3860594 res!1563195) b!3860597))

(assert (= (and b!3860597 res!1563197) b!3860596))

(assert (= (and b!3860596 res!1563196) b!3860600))

(assert (= (and b!3860600 res!1563198) b!3860601))

(assert (= (and b!3860601 res!1563200) b!3860602))

(declare-fun m!4416089 () Bool)

(assert (=> b!3860597 m!4416089))

(declare-fun m!4416091 () Bool)

(assert (=> b!3860597 m!4416091))

(assert (=> b!3860597 m!4415821))

(assert (=> b!3860602 m!4416089))

(declare-fun m!4416093 () Bool)

(assert (=> b!3860602 m!4416093))

(assert (=> b!3860596 m!4416089))

(declare-fun m!4416095 () Bool)

(assert (=> b!3860596 m!4416095))

(assert (=> b!3860596 m!4416095))

(declare-fun m!4416097 () Bool)

(assert (=> b!3860596 m!4416097))

(assert (=> b!3860596 m!4416097))

(declare-fun m!4416099 () Bool)

(assert (=> b!3860596 m!4416099))

(declare-fun m!4416101 () Bool)

(assert (=> b!3860598 m!4416101))

(assert (=> b!3860594 m!4416089))

(assert (=> b!3860594 m!4416095))

(assert (=> b!3860594 m!4416095))

(assert (=> b!3860594 m!4416097))

(assert (=> b!3860600 m!4416089))

(declare-fun m!4416103 () Bool)

(assert (=> b!3860600 m!4416103))

(assert (=> b!3860600 m!4416103))

(declare-fun m!4416105 () Bool)

(assert (=> b!3860600 m!4416105))

(assert (=> b!3860601 m!4416089))

(assert (=> b!3860601 m!4416095))

(assert (=> b!3860601 m!4416095))

(assert (=> b!3860601 m!4416097))

(assert (=> b!3860601 m!4416097))

(declare-fun m!4416107 () Bool)

(assert (=> b!3860601 m!4416107))

(declare-fun m!4416109 () Bool)

(assert (=> b!3860599 m!4416109))

(declare-fun m!4416111 () Bool)

(assert (=> bm!282529 m!4416111))

(declare-fun m!4416113 () Bool)

(assert (=> d!1144265 m!4416113))

(declare-fun m!4416115 () Bool)

(assert (=> d!1144265 m!4416115))

(declare-fun m!4416117 () Bool)

(assert (=> d!1144265 m!4416117))

(declare-fun m!4416119 () Bool)

(assert (=> d!1144265 m!4416119))

(assert (=> b!3860349 d!1144265))

(declare-fun d!1144309 () Bool)

(declare-fun lt!1341483 () Int)

(assert (=> d!1144309 (>= lt!1341483 0)))

(declare-fun e!2386717 () Int)

(assert (=> d!1144309 (= lt!1341483 e!2386717)))

(declare-fun c!672145 () Bool)

(assert (=> d!1144309 (= c!672145 ((_ is Nil!40935) (originalCharacters!6936 (_1!23203 (v!39051 lt!1341405)))))))

(assert (=> d!1144309 (= (size!30786 (originalCharacters!6936 (_1!23203 (v!39051 lt!1341405)))) lt!1341483)))

(declare-fun b!3860603 () Bool)

(assert (=> b!3860603 (= e!2386717 0)))

(declare-fun b!3860604 () Bool)

(assert (=> b!3860604 (= e!2386717 (+ 1 (size!30786 (t!313358 (originalCharacters!6936 (_1!23203 (v!39051 lt!1341405)))))))))

(assert (= (and d!1144309 c!672145) b!3860603))

(assert (= (and d!1144309 (not c!672145)) b!3860604))

(declare-fun m!4416121 () Bool)

(assert (=> b!3860604 m!4416121))

(assert (=> b!3860370 d!1144309))

(declare-fun d!1144311 () Bool)

(declare-fun lt!1341484 () Int)

(assert (=> d!1144311 (>= lt!1341484 0)))

(declare-fun e!2386718 () Int)

(assert (=> d!1144311 (= lt!1341484 e!2386718)))

(declare-fun c!672146 () Bool)

(assert (=> d!1144311 (= c!672146 ((_ is Nil!40935) lt!1341402))))

(assert (=> d!1144311 (= (size!30786 lt!1341402) lt!1341484)))

(declare-fun b!3860605 () Bool)

(assert (=> b!3860605 (= e!2386718 0)))

(declare-fun b!3860606 () Bool)

(assert (=> b!3860606 (= e!2386718 (+ 1 (size!30786 (t!313358 lt!1341402))))))

(assert (= (and d!1144311 c!672146) b!3860605))

(assert (= (and d!1144311 (not c!672146)) b!3860606))

(declare-fun m!4416123 () Bool)

(assert (=> b!3860606 m!4416123))

(assert (=> b!3860369 d!1144311))

(declare-fun d!1144313 () Bool)

(assert (=> d!1144313 (= (isEmpty!24250 prefixTokens!80) ((_ is Nil!40936) prefixTokens!80))))

(assert (=> b!3860348 d!1144313))

(declare-fun d!1144315 () Bool)

(assert (=> d!1144315 (= (head!8140 prefixTokens!80) (h!46356 prefixTokens!80))))

(assert (=> b!3860368 d!1144315))

(declare-fun d!1144317 () Bool)

(assert (=> d!1144317 (= (get!13544 lt!1341405) (v!39051 lt!1341405))))

(assert (=> b!3860368 d!1144317))

(declare-fun d!1144319 () Bool)

(declare-fun e!2386721 () Bool)

(assert (=> d!1144319 e!2386721))

(declare-fun c!672147 () Bool)

(declare-fun lt!1341486 () tuple2!40140)

(assert (=> d!1144319 (= c!672147 (> (size!30788 (_1!23204 lt!1341486)) 0))))

(declare-fun e!2386719 () tuple2!40140)

(assert (=> d!1144319 (= lt!1341486 e!2386719)))

(declare-fun c!672148 () Bool)

(declare-fun lt!1341487 () Option!8754)

(assert (=> d!1144319 (= c!672148 ((_ is Some!8753) lt!1341487))))

(assert (=> d!1144319 (= lt!1341487 (maxPrefix!3229 thiss!20629 rules!2768 lt!1341402))))

(assert (=> d!1144319 (= (lexList!1693 thiss!20629 rules!2768 lt!1341402) lt!1341486)))

(declare-fun b!3860607 () Bool)

(assert (=> b!3860607 (= e!2386721 (= (_2!23204 lt!1341486) lt!1341402))))

(declare-fun b!3860608 () Bool)

(declare-fun lt!1341485 () tuple2!40140)

(assert (=> b!3860608 (= e!2386719 (tuple2!40141 (Cons!40936 (_1!23203 (v!39051 lt!1341487)) (_1!23204 lt!1341485)) (_2!23204 lt!1341485)))))

(assert (=> b!3860608 (= lt!1341485 (lexList!1693 thiss!20629 rules!2768 (_2!23203 (v!39051 lt!1341487))))))

(declare-fun b!3860609 () Bool)

(declare-fun e!2386720 () Bool)

(assert (=> b!3860609 (= e!2386720 (not (isEmpty!24250 (_1!23204 lt!1341486))))))

(declare-fun b!3860610 () Bool)

(assert (=> b!3860610 (= e!2386721 e!2386720)))

(declare-fun res!1563201 () Bool)

(assert (=> b!3860610 (= res!1563201 (< (size!30786 (_2!23204 lt!1341486)) (size!30786 lt!1341402)))))

(assert (=> b!3860610 (=> (not res!1563201) (not e!2386720))))

(declare-fun b!3860611 () Bool)

(assert (=> b!3860611 (= e!2386719 (tuple2!40141 Nil!40936 lt!1341402))))

(assert (= (and d!1144319 c!672148) b!3860608))

(assert (= (and d!1144319 (not c!672148)) b!3860611))

(assert (= (and d!1144319 c!672147) b!3860610))

(assert (= (and d!1144319 (not c!672147)) b!3860607))

(assert (= (and b!3860610 res!1563201) b!3860609))

(declare-fun m!4416125 () Bool)

(assert (=> d!1144319 m!4416125))

(assert (=> d!1144319 m!4415825))

(declare-fun m!4416127 () Bool)

(assert (=> b!3860608 m!4416127))

(declare-fun m!4416129 () Bool)

(assert (=> b!3860609 m!4416129))

(declare-fun m!4416131 () Bool)

(assert (=> b!3860610 m!4416131))

(assert (=> b!3860610 m!4415821))

(assert (=> b!3860367 d!1144319))

(declare-fun e!2386727 () Bool)

(declare-fun b!3860623 () Bool)

(declare-fun lt!1341490 () List!41060)

(assert (=> b!3860623 (= e!2386727 (or (not (= suffixTokens!72 Nil!40936)) (= lt!1341490 prefixTokens!80)))))

(declare-fun b!3860621 () Bool)

(declare-fun e!2386726 () List!41060)

(assert (=> b!3860621 (= e!2386726 (Cons!40936 (h!46356 prefixTokens!80) (++!10429 (t!313359 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3860622 () Bool)

(declare-fun res!1563206 () Bool)

(assert (=> b!3860622 (=> (not res!1563206) (not e!2386727))))

(assert (=> b!3860622 (= res!1563206 (= (size!30788 lt!1341490) (+ (size!30788 prefixTokens!80) (size!30788 suffixTokens!72))))))

(declare-fun b!3860620 () Bool)

(assert (=> b!3860620 (= e!2386726 suffixTokens!72)))

(declare-fun d!1144321 () Bool)

(assert (=> d!1144321 e!2386727))

(declare-fun res!1563207 () Bool)

(assert (=> d!1144321 (=> (not res!1563207) (not e!2386727))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6104 (List!41060) (InoxSet Token!11810))

(assert (=> d!1144321 (= res!1563207 (= (content!6104 lt!1341490) ((_ map or) (content!6104 prefixTokens!80) (content!6104 suffixTokens!72))))))

(assert (=> d!1144321 (= lt!1341490 e!2386726)))

(declare-fun c!672151 () Bool)

(assert (=> d!1144321 (= c!672151 ((_ is Nil!40936) prefixTokens!80))))

(assert (=> d!1144321 (= (++!10429 prefixTokens!80 suffixTokens!72) lt!1341490)))

(assert (= (and d!1144321 c!672151) b!3860620))

(assert (= (and d!1144321 (not c!672151)) b!3860621))

(assert (= (and d!1144321 res!1563207) b!3860622))

(assert (= (and b!3860622 res!1563206) b!3860623))

(declare-fun m!4416133 () Bool)

(assert (=> b!3860621 m!4416133))

(declare-fun m!4416135 () Bool)

(assert (=> b!3860622 m!4416135))

(declare-fun m!4416137 () Bool)

(assert (=> b!3860622 m!4416137))

(declare-fun m!4416139 () Bool)

(assert (=> b!3860622 m!4416139))

(declare-fun m!4416141 () Bool)

(assert (=> d!1144321 m!4416141))

(declare-fun m!4416143 () Bool)

(assert (=> d!1144321 m!4416143))

(declare-fun m!4416145 () Bool)

(assert (=> d!1144321 m!4416145))

(assert (=> b!3860367 d!1144321))

(declare-fun b!3860651 () Bool)

(declare-fun e!2386741 () List!41059)

(assert (=> b!3860651 (= e!2386741 (Cons!40935 (h!46355 prefix!426) (++!10430 (t!313358 prefix!426) suffix!1176)))))

(declare-fun b!3860652 () Bool)

(declare-fun res!1563227 () Bool)

(declare-fun e!2386740 () Bool)

(assert (=> b!3860652 (=> (not res!1563227) (not e!2386740))))

(declare-fun lt!1341503 () List!41059)

(assert (=> b!3860652 (= res!1563227 (= (size!30786 lt!1341503) (+ (size!30786 prefix!426) (size!30786 suffix!1176))))))

(declare-fun d!1144323 () Bool)

(assert (=> d!1144323 e!2386740))

(declare-fun res!1563226 () Bool)

(assert (=> d!1144323 (=> (not res!1563226) (not e!2386740))))

(declare-fun content!6105 (List!41059) (InoxSet C!22668))

(assert (=> d!1144323 (= res!1563226 (= (content!6105 lt!1341503) ((_ map or) (content!6105 prefix!426) (content!6105 suffix!1176))))))

(assert (=> d!1144323 (= lt!1341503 e!2386741)))

(declare-fun c!672156 () Bool)

(assert (=> d!1144323 (= c!672156 ((_ is Nil!40935) prefix!426))))

(assert (=> d!1144323 (= (++!10430 prefix!426 suffix!1176) lt!1341503)))

(declare-fun b!3860650 () Bool)

(assert (=> b!3860650 (= e!2386741 suffix!1176)))

(declare-fun b!3860653 () Bool)

(assert (=> b!3860653 (= e!2386740 (or (not (= suffix!1176 Nil!40935)) (= lt!1341503 prefix!426)))))

(assert (= (and d!1144323 c!672156) b!3860650))

(assert (= (and d!1144323 (not c!672156)) b!3860651))

(assert (= (and d!1144323 res!1563226) b!3860652))

(assert (= (and b!3860652 res!1563227) b!3860653))

(declare-fun m!4416147 () Bool)

(assert (=> b!3860651 m!4416147))

(declare-fun m!4416149 () Bool)

(assert (=> b!3860652 m!4416149))

(assert (=> b!3860652 m!4415903))

(assert (=> b!3860652 m!4415891))

(declare-fun m!4416151 () Bool)

(assert (=> d!1144323 m!4416151))

(declare-fun m!4416153 () Bool)

(assert (=> d!1144323 m!4416153))

(declare-fun m!4416155 () Bool)

(assert (=> d!1144323 m!4416155))

(assert (=> b!3860367 d!1144323))

(declare-fun d!1144325 () Bool)

(declare-fun lt!1341504 () Int)

(assert (=> d!1144325 (>= lt!1341504 0)))

(declare-fun e!2386742 () Int)

(assert (=> d!1144325 (= lt!1341504 e!2386742)))

(declare-fun c!672157 () Bool)

(assert (=> d!1144325 (= c!672157 ((_ is Nil!40935) (_2!23203 lt!1341398)))))

(assert (=> d!1144325 (= (size!30786 (_2!23203 lt!1341398)) lt!1341504)))

(declare-fun b!3860654 () Bool)

(assert (=> b!3860654 (= e!2386742 0)))

(declare-fun b!3860655 () Bool)

(assert (=> b!3860655 (= e!2386742 (+ 1 (size!30786 (t!313358 (_2!23203 lt!1341398)))))))

(assert (= (and d!1144325 c!672157) b!3860654))

(assert (= (and d!1144325 (not c!672157)) b!3860655))

(declare-fun m!4416157 () Bool)

(assert (=> b!3860655 m!4416157))

(assert (=> b!3860366 d!1144325))

(declare-fun d!1144327 () Bool)

(declare-fun res!1563239 () Bool)

(declare-fun e!2386749 () Bool)

(assert (=> d!1144327 (=> (not res!1563239) (not e!2386749))))

(declare-fun validRegex!5116 (Regex!11241) Bool)

(assert (=> d!1144327 (= res!1563239 (validRegex!5116 (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405))))))))

(assert (=> d!1144327 (= (ruleValid!2288 thiss!20629 (rule!9204 (_1!23203 (v!39051 lt!1341405)))) e!2386749)))

(declare-fun b!3860669 () Bool)

(declare-fun res!1563240 () Bool)

(assert (=> b!3860669 (=> (not res!1563240) (not e!2386749))))

(declare-fun nullable!3917 (Regex!11241) Bool)

(assert (=> b!3860669 (= res!1563240 (not (nullable!3917 (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))))))))

(declare-fun b!3860670 () Bool)

(assert (=> b!3860670 (= e!2386749 (not (= (tag!7196 (rule!9204 (_1!23203 (v!39051 lt!1341405)))) (String!46549 ""))))))

(assert (= (and d!1144327 res!1563239) b!3860669))

(assert (= (and b!3860669 res!1563240) b!3860670))

(declare-fun m!4416159 () Bool)

(assert (=> d!1144327 m!4416159))

(declare-fun m!4416161 () Bool)

(assert (=> b!3860669 m!4416161))

(assert (=> b!3860365 d!1144327))

(declare-fun d!1144329 () Bool)

(assert (=> d!1144329 (= (_2!23203 (v!39051 lt!1341405)) lt!1341391)))

(declare-fun lt!1341512 () Unit!58592)

(declare-fun choose!22732 (List!41059 List!41059 List!41059 List!41059 List!41059) Unit!58592)

(assert (=> d!1144329 (= lt!1341512 (choose!22732 lt!1341406 (_2!23203 (v!39051 lt!1341405)) lt!1341406 lt!1341391 lt!1341402))))

(assert (=> d!1144329 (isPrefix!3435 lt!1341406 lt!1341402)))

(assert (=> d!1144329 (= (lemmaSamePrefixThenSameSuffix!1656 lt!1341406 (_2!23203 (v!39051 lt!1341405)) lt!1341406 lt!1341391 lt!1341402) lt!1341512)))

(declare-fun bs!583177 () Bool)

(assert (= bs!583177 d!1144329))

(declare-fun m!4416205 () Bool)

(assert (=> bs!583177 m!4416205))

(declare-fun m!4416207 () Bool)

(assert (=> bs!583177 m!4416207))

(assert (=> b!3860365 d!1144329))

(declare-fun d!1144333 () Bool)

(assert (=> d!1144333 (isPrefix!3435 lt!1341406 (++!10430 lt!1341406 (_2!23203 (v!39051 lt!1341405))))))

(declare-fun lt!1341515 () Unit!58592)

(declare-fun choose!22733 (List!41059 List!41059) Unit!58592)

(assert (=> d!1144333 (= lt!1341515 (choose!22733 lt!1341406 (_2!23203 (v!39051 lt!1341405))))))

(assert (=> d!1144333 (= (lemmaConcatTwoListThenFirstIsPrefix!2298 lt!1341406 (_2!23203 (v!39051 lt!1341405))) lt!1341515)))

(declare-fun bs!583178 () Bool)

(assert (= bs!583178 d!1144333))

(assert (=> bs!583178 m!4415881))

(assert (=> bs!583178 m!4415881))

(declare-fun m!4416209 () Bool)

(assert (=> bs!583178 m!4416209))

(declare-fun m!4416211 () Bool)

(assert (=> bs!583178 m!4416211))

(assert (=> b!3860365 d!1144333))

(declare-fun b!3860672 () Bool)

(declare-fun e!2386751 () List!41059)

(assert (=> b!3860672 (= e!2386751 (Cons!40935 (h!46355 lt!1341406) (++!10430 (t!313358 lt!1341406) (_2!23203 (v!39051 lt!1341405)))))))

(declare-fun b!3860673 () Bool)

(declare-fun res!1563242 () Bool)

(declare-fun e!2386750 () Bool)

(assert (=> b!3860673 (=> (not res!1563242) (not e!2386750))))

(declare-fun lt!1341516 () List!41059)

(assert (=> b!3860673 (= res!1563242 (= (size!30786 lt!1341516) (+ (size!30786 lt!1341406) (size!30786 (_2!23203 (v!39051 lt!1341405))))))))

(declare-fun d!1144335 () Bool)

(assert (=> d!1144335 e!2386750))

(declare-fun res!1563241 () Bool)

(assert (=> d!1144335 (=> (not res!1563241) (not e!2386750))))

(assert (=> d!1144335 (= res!1563241 (= (content!6105 lt!1341516) ((_ map or) (content!6105 lt!1341406) (content!6105 (_2!23203 (v!39051 lt!1341405))))))))

(assert (=> d!1144335 (= lt!1341516 e!2386751)))

(declare-fun c!672159 () Bool)

(assert (=> d!1144335 (= c!672159 ((_ is Nil!40935) lt!1341406))))

(assert (=> d!1144335 (= (++!10430 lt!1341406 (_2!23203 (v!39051 lt!1341405))) lt!1341516)))

(declare-fun b!3860671 () Bool)

(assert (=> b!3860671 (= e!2386751 (_2!23203 (v!39051 lt!1341405)))))

(declare-fun b!3860674 () Bool)

(assert (=> b!3860674 (= e!2386750 (or (not (= (_2!23203 (v!39051 lt!1341405)) Nil!40935)) (= lt!1341516 lt!1341406)))))

(assert (= (and d!1144335 c!672159) b!3860671))

(assert (= (and d!1144335 (not c!672159)) b!3860672))

(assert (= (and d!1144335 res!1563241) b!3860673))

(assert (= (and b!3860673 res!1563242) b!3860674))

(declare-fun m!4416213 () Bool)

(assert (=> b!3860672 m!4416213))

(declare-fun m!4416215 () Bool)

(assert (=> b!3860673 m!4416215))

(assert (=> b!3860673 m!4415879))

(assert (=> b!3860673 m!4415893))

(declare-fun m!4416217 () Bool)

(assert (=> d!1144335 m!4416217))

(declare-fun m!4416219 () Bool)

(assert (=> d!1144335 m!4416219))

(declare-fun m!4416221 () Bool)

(assert (=> d!1144335 m!4416221))

(assert (=> b!3860365 d!1144335))

(declare-fun d!1144337 () Bool)

(declare-fun lt!1341519 () List!41059)

(assert (=> d!1144337 (= (++!10430 lt!1341406 lt!1341519) lt!1341402)))

(declare-fun e!2386754 () List!41059)

(assert (=> d!1144337 (= lt!1341519 e!2386754)))

(declare-fun c!672162 () Bool)

(assert (=> d!1144337 (= c!672162 ((_ is Cons!40935) lt!1341406))))

(assert (=> d!1144337 (>= (size!30786 lt!1341402) (size!30786 lt!1341406))))

(assert (=> d!1144337 (= (getSuffix!1890 lt!1341402 lt!1341406) lt!1341519)))

(declare-fun b!3860679 () Bool)

(declare-fun tail!5853 (List!41059) List!41059)

(assert (=> b!3860679 (= e!2386754 (getSuffix!1890 (tail!5853 lt!1341402) (t!313358 lt!1341406)))))

(declare-fun b!3860680 () Bool)

(assert (=> b!3860680 (= e!2386754 lt!1341402)))

(assert (= (and d!1144337 c!672162) b!3860679))

(assert (= (and d!1144337 (not c!672162)) b!3860680))

(declare-fun m!4416223 () Bool)

(assert (=> d!1144337 m!4416223))

(assert (=> d!1144337 m!4415821))

(assert (=> d!1144337 m!4415879))

(declare-fun m!4416225 () Bool)

(assert (=> b!3860679 m!4416225))

(assert (=> b!3860679 m!4416225))

(declare-fun m!4416227 () Bool)

(assert (=> b!3860679 m!4416227))

(assert (=> b!3860365 d!1144337))

(declare-fun d!1144339 () Bool)

(assert (=> d!1144339 (ruleValid!2288 thiss!20629 (rule!9204 (_1!23203 (v!39051 lt!1341405))))))

(declare-fun lt!1341522 () Unit!58592)

(declare-fun choose!22734 (LexerInterface!5925 Rule!12472 List!41061) Unit!58592)

(assert (=> d!1144339 (= lt!1341522 (choose!22734 thiss!20629 (rule!9204 (_1!23203 (v!39051 lt!1341405))) rules!2768))))

(assert (=> d!1144339 (contains!8269 rules!2768 (rule!9204 (_1!23203 (v!39051 lt!1341405))))))

(assert (=> d!1144339 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1368 thiss!20629 (rule!9204 (_1!23203 (v!39051 lt!1341405))) rules!2768) lt!1341522)))

(declare-fun bs!583179 () Bool)

(assert (= bs!583179 d!1144339))

(assert (=> bs!583179 m!4415883))

(declare-fun m!4416229 () Bool)

(assert (=> bs!583179 m!4416229))

(declare-fun m!4416231 () Bool)

(assert (=> bs!583179 m!4416231))

(assert (=> b!3860365 d!1144339))

(declare-fun d!1144341 () Bool)

(declare-fun fromListB!2127 (List!41059) BalanceConc!24688)

(assert (=> d!1144341 (= (seqFromList!4607 lt!1341406) (fromListB!2127 lt!1341406))))

(declare-fun bs!583180 () Bool)

(assert (= bs!583180 d!1144341))

(declare-fun m!4416233 () Bool)

(assert (=> bs!583180 m!4416233))

(assert (=> b!3860365 d!1144341))

(declare-fun d!1144343 () Bool)

(declare-fun e!2386757 () Bool)

(assert (=> d!1144343 e!2386757))

(declare-fun c!672163 () Bool)

(declare-fun lt!1341524 () tuple2!40140)

(assert (=> d!1144343 (= c!672163 (> (size!30788 (_1!23204 lt!1341524)) 0))))

(declare-fun e!2386755 () tuple2!40140)

(assert (=> d!1144343 (= lt!1341524 e!2386755)))

(declare-fun c!672164 () Bool)

(declare-fun lt!1341525 () Option!8754)

(assert (=> d!1144343 (= c!672164 ((_ is Some!8753) lt!1341525))))

(assert (=> d!1144343 (= lt!1341525 (maxPrefix!3229 thiss!20629 rules!2768 (_2!23203 (v!39051 lt!1341405))))))

(assert (=> d!1144343 (= (lexList!1693 thiss!20629 rules!2768 (_2!23203 (v!39051 lt!1341405))) lt!1341524)))

(declare-fun b!3860681 () Bool)

(assert (=> b!3860681 (= e!2386757 (= (_2!23204 lt!1341524) (_2!23203 (v!39051 lt!1341405))))))

(declare-fun b!3860682 () Bool)

(declare-fun lt!1341523 () tuple2!40140)

(assert (=> b!3860682 (= e!2386755 (tuple2!40141 (Cons!40936 (_1!23203 (v!39051 lt!1341525)) (_1!23204 lt!1341523)) (_2!23204 lt!1341523)))))

(assert (=> b!3860682 (= lt!1341523 (lexList!1693 thiss!20629 rules!2768 (_2!23203 (v!39051 lt!1341525))))))

(declare-fun b!3860683 () Bool)

(declare-fun e!2386756 () Bool)

(assert (=> b!3860683 (= e!2386756 (not (isEmpty!24250 (_1!23204 lt!1341524))))))

(declare-fun b!3860684 () Bool)

(assert (=> b!3860684 (= e!2386757 e!2386756)))

(declare-fun res!1563243 () Bool)

(assert (=> b!3860684 (= res!1563243 (< (size!30786 (_2!23204 lt!1341524)) (size!30786 (_2!23203 (v!39051 lt!1341405)))))))

(assert (=> b!3860684 (=> (not res!1563243) (not e!2386756))))

(declare-fun b!3860685 () Bool)

(assert (=> b!3860685 (= e!2386755 (tuple2!40141 Nil!40936 (_2!23203 (v!39051 lt!1341405))))))

(assert (= (and d!1144343 c!672164) b!3860682))

(assert (= (and d!1144343 (not c!672164)) b!3860685))

(assert (= (and d!1144343 c!672163) b!3860684))

(assert (= (and d!1144343 (not c!672163)) b!3860681))

(assert (= (and b!3860684 res!1563243) b!3860683))

(declare-fun m!4416235 () Bool)

(assert (=> d!1144343 m!4416235))

(declare-fun m!4416237 () Bool)

(assert (=> d!1144343 m!4416237))

(declare-fun m!4416239 () Bool)

(assert (=> b!3860682 m!4416239))

(declare-fun m!4416241 () Bool)

(assert (=> b!3860683 m!4416241))

(declare-fun m!4416243 () Bool)

(assert (=> b!3860684 m!4416243))

(assert (=> b!3860684 m!4415893))

(assert (=> b!3860365 d!1144343))

(declare-fun d!1144345 () Bool)

(declare-fun dynLambda!17658 (Int BalanceConc!24688) TokenValue!6566)

(assert (=> d!1144345 (= (apply!9579 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))) (seqFromList!4607 lt!1341406)) (dynLambda!17658 (toValue!8764 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405))))) (seqFromList!4607 lt!1341406)))))

(declare-fun b_lambda!112849 () Bool)

(assert (=> (not b_lambda!112849) (not d!1144345)))

(declare-fun t!313392 () Bool)

(declare-fun tb!223631 () Bool)

(assert (=> (and b!3860358 (= (toValue!8764 (transformation!6336 (h!46357 rules!2768))) (toValue!8764 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))))) t!313392) tb!223631))

(declare-fun result!272350 () Bool)

(assert (=> tb!223631 (= result!272350 (inv!21 (dynLambda!17658 (toValue!8764 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405))))) (seqFromList!4607 lt!1341406))))))

(declare-fun m!4416247 () Bool)

(assert (=> tb!223631 m!4416247))

(assert (=> d!1144345 t!313392))

(declare-fun b_and!289005 () Bool)

(assert (= b_and!288963 (and (=> t!313392 result!272350) b_and!289005)))

(declare-fun tb!223633 () Bool)

(declare-fun t!313394 () Bool)

(assert (=> (and b!3860347 (= (toValue!8764 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))) (toValue!8764 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))))) t!313394) tb!223633))

(declare-fun result!272354 () Bool)

(assert (= result!272354 result!272350))

(assert (=> d!1144345 t!313394))

(declare-fun b_and!289007 () Bool)

(assert (= b_and!288967 (and (=> t!313394 result!272354) b_and!289007)))

(declare-fun t!313396 () Bool)

(declare-fun tb!223635 () Bool)

(assert (=> (and b!3860352 (= (toValue!8764 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))) (toValue!8764 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))))) t!313396) tb!223635))

(declare-fun result!272356 () Bool)

(assert (= result!272356 result!272350))

(assert (=> d!1144345 t!313396))

(declare-fun b_and!289009 () Bool)

(assert (= b_and!288971 (and (=> t!313396 result!272356) b_and!289009)))

(assert (=> d!1144345 m!4415863))

(declare-fun m!4416249 () Bool)

(assert (=> d!1144345 m!4416249))

(assert (=> b!3860365 d!1144345))

(declare-fun d!1144349 () Bool)

(declare-fun lt!1341531 () BalanceConc!24688)

(assert (=> d!1144349 (= (list!15236 lt!1341531) (originalCharacters!6936 (_1!23203 (v!39051 lt!1341405))))))

(assert (=> d!1144349 (= lt!1341531 (dynLambda!17657 (toChars!8623 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405))))) (value!201210 (_1!23203 (v!39051 lt!1341405)))))))

(assert (=> d!1144349 (= (charsOf!4164 (_1!23203 (v!39051 lt!1341405))) lt!1341531)))

(declare-fun b_lambda!112851 () Bool)

(assert (=> (not b_lambda!112851) (not d!1144349)))

(declare-fun t!313398 () Bool)

(declare-fun tb!223637 () Bool)

(assert (=> (and b!3860358 (= (toChars!8623 (transformation!6336 (h!46357 rules!2768))) (toChars!8623 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))))) t!313398) tb!223637))

(declare-fun b!3860688 () Bool)

(declare-fun e!2386761 () Bool)

(declare-fun tp!1170285 () Bool)

(assert (=> b!3860688 (= e!2386761 (and (inv!55100 (c!672089 (dynLambda!17657 (toChars!8623 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405))))) (value!201210 (_1!23203 (v!39051 lt!1341405)))))) tp!1170285))))

(declare-fun result!272358 () Bool)

(assert (=> tb!223637 (= result!272358 (and (inv!55101 (dynLambda!17657 (toChars!8623 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405))))) (value!201210 (_1!23203 (v!39051 lt!1341405))))) e!2386761))))

(assert (= tb!223637 b!3860688))

(declare-fun m!4416251 () Bool)

(assert (=> b!3860688 m!4416251))

(declare-fun m!4416253 () Bool)

(assert (=> tb!223637 m!4416253))

(assert (=> d!1144349 t!313398))

(declare-fun b_and!289011 () Bool)

(assert (= b_and!288975 (and (=> t!313398 result!272358) b_and!289011)))

(declare-fun t!313400 () Bool)

(declare-fun tb!223639 () Bool)

(assert (=> (and b!3860347 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))) (toChars!8623 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))))) t!313400) tb!223639))

(declare-fun result!272360 () Bool)

(assert (= result!272360 result!272358))

(assert (=> d!1144349 t!313400))

(declare-fun b_and!289013 () Bool)

(assert (= b_and!288977 (and (=> t!313400 result!272360) b_and!289013)))

(declare-fun t!313402 () Bool)

(declare-fun tb!223641 () Bool)

(assert (=> (and b!3860352 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))) (toChars!8623 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))))) t!313402) tb!223641))

(declare-fun result!272362 () Bool)

(assert (= result!272362 result!272358))

(assert (=> d!1144349 t!313402))

(declare-fun b_and!289015 () Bool)

(assert (= b_and!288979 (and (=> t!313402 result!272362) b_and!289015)))

(declare-fun m!4416255 () Bool)

(assert (=> d!1144349 m!4416255))

(declare-fun m!4416257 () Bool)

(assert (=> d!1144349 m!4416257))

(assert (=> b!3860365 d!1144349))

(declare-fun d!1144353 () Bool)

(assert (=> d!1144353 (= (size!30785 (_1!23203 (v!39051 lt!1341405))) (size!30786 (originalCharacters!6936 (_1!23203 (v!39051 lt!1341405)))))))

(declare-fun Unit!58595 () Unit!58592)

(assert (=> d!1144353 (= (lemmaCharactersSize!997 (_1!23203 (v!39051 lt!1341405))) Unit!58595)))

(declare-fun bs!583182 () Bool)

(assert (= bs!583182 d!1144353))

(assert (=> bs!583182 m!4415827))

(assert (=> b!3860365 d!1144353))

(declare-fun d!1144361 () Bool)

(declare-fun lt!1341532 () Int)

(assert (=> d!1144361 (>= lt!1341532 0)))

(declare-fun e!2386766 () Int)

(assert (=> d!1144361 (= lt!1341532 e!2386766)))

(declare-fun c!672165 () Bool)

(assert (=> d!1144361 (= c!672165 ((_ is Nil!40935) lt!1341406))))

(assert (=> d!1144361 (= (size!30786 lt!1341406) lt!1341532)))

(declare-fun b!3860693 () Bool)

(assert (=> b!3860693 (= e!2386766 0)))

(declare-fun b!3860694 () Bool)

(assert (=> b!3860694 (= e!2386766 (+ 1 (size!30786 (t!313358 lt!1341406))))))

(assert (= (and d!1144361 c!672165) b!3860693))

(assert (= (and d!1144361 (not c!672165)) b!3860694))

(declare-fun m!4416267 () Bool)

(assert (=> b!3860694 m!4416267))

(assert (=> b!3860365 d!1144361))

(declare-fun b!3860721 () Bool)

(declare-fun e!2386781 () Bool)

(assert (=> b!3860721 (= e!2386781 (>= (size!30786 lt!1341395) (size!30786 lt!1341406)))))

(declare-fun b!3860718 () Bool)

(declare-fun e!2386783 () Bool)

(declare-fun e!2386782 () Bool)

(assert (=> b!3860718 (= e!2386783 e!2386782)))

(declare-fun res!1563263 () Bool)

(assert (=> b!3860718 (=> (not res!1563263) (not e!2386782))))

(assert (=> b!3860718 (= res!1563263 (not ((_ is Nil!40935) lt!1341395)))))

(declare-fun b!3860719 () Bool)

(declare-fun res!1563261 () Bool)

(assert (=> b!3860719 (=> (not res!1563261) (not e!2386782))))

(declare-fun head!8142 (List!41059) C!22668)

(assert (=> b!3860719 (= res!1563261 (= (head!8142 lt!1341406) (head!8142 lt!1341395)))))

(declare-fun b!3860720 () Bool)

(assert (=> b!3860720 (= e!2386782 (isPrefix!3435 (tail!5853 lt!1341406) (tail!5853 lt!1341395)))))

(declare-fun d!1144363 () Bool)

(assert (=> d!1144363 e!2386781))

(declare-fun res!1563262 () Bool)

(assert (=> d!1144363 (=> res!1563262 e!2386781)))

(declare-fun lt!1341541 () Bool)

(assert (=> d!1144363 (= res!1563262 (not lt!1341541))))

(assert (=> d!1144363 (= lt!1341541 e!2386783)))

(declare-fun res!1563264 () Bool)

(assert (=> d!1144363 (=> res!1563264 e!2386783)))

(assert (=> d!1144363 (= res!1563264 ((_ is Nil!40935) lt!1341406))))

(assert (=> d!1144363 (= (isPrefix!3435 lt!1341406 lt!1341395) lt!1341541)))

(assert (= (and d!1144363 (not res!1563264)) b!3860718))

(assert (= (and b!3860718 res!1563263) b!3860719))

(assert (= (and b!3860719 res!1563261) b!3860720))

(assert (= (and d!1144363 (not res!1563262)) b!3860721))

(declare-fun m!4416303 () Bool)

(assert (=> b!3860721 m!4416303))

(assert (=> b!3860721 m!4415879))

(declare-fun m!4416305 () Bool)

(assert (=> b!3860719 m!4416305))

(declare-fun m!4416307 () Bool)

(assert (=> b!3860719 m!4416307))

(declare-fun m!4416309 () Bool)

(assert (=> b!3860720 m!4416309))

(declare-fun m!4416311 () Bool)

(assert (=> b!3860720 m!4416311))

(assert (=> b!3860720 m!4416309))

(assert (=> b!3860720 m!4416311))

(declare-fun m!4416313 () Bool)

(assert (=> b!3860720 m!4416313))

(assert (=> b!3860365 d!1144363))

(declare-fun d!1144379 () Bool)

(declare-fun list!15238 (Conc!12547) List!41059)

(assert (=> d!1144379 (= (list!15236 (charsOf!4164 (_1!23203 (v!39051 lt!1341405)))) (list!15238 (c!672089 (charsOf!4164 (_1!23203 (v!39051 lt!1341405))))))))

(declare-fun bs!583183 () Bool)

(assert (= bs!583183 d!1144379))

(declare-fun m!4416315 () Bool)

(assert (=> bs!583183 m!4416315))

(assert (=> b!3860365 d!1144379))

(declare-fun d!1144381 () Bool)

(assert (=> d!1144381 (= (inv!55093 (tag!7196 (h!46357 rules!2768))) (= (mod (str.len (value!201209 (tag!7196 (h!46357 rules!2768)))) 2) 0))))

(assert (=> b!3860344 d!1144381))

(declare-fun d!1144383 () Bool)

(declare-fun res!1563265 () Bool)

(declare-fun e!2386784 () Bool)

(assert (=> d!1144383 (=> (not res!1563265) (not e!2386784))))

(assert (=> d!1144383 (= res!1563265 (semiInverseModEq!2716 (toChars!8623 (transformation!6336 (h!46357 rules!2768))) (toValue!8764 (transformation!6336 (h!46357 rules!2768)))))))

(assert (=> d!1144383 (= (inv!55096 (transformation!6336 (h!46357 rules!2768))) e!2386784)))

(declare-fun b!3860722 () Bool)

(assert (=> b!3860722 (= e!2386784 (equivClasses!2615 (toChars!8623 (transformation!6336 (h!46357 rules!2768))) (toValue!8764 (transformation!6336 (h!46357 rules!2768)))))))

(assert (= (and d!1144383 res!1563265) b!3860722))

(declare-fun m!4416317 () Bool)

(assert (=> d!1144383 m!4416317))

(declare-fun m!4416319 () Bool)

(assert (=> b!3860722 m!4416319))

(assert (=> b!3860344 d!1144383))

(declare-fun d!1144385 () Bool)

(declare-fun res!1563266 () Bool)

(declare-fun e!2386785 () Bool)

(assert (=> d!1144385 (=> (not res!1563266) (not e!2386785))))

(assert (=> d!1144385 (= res!1563266 (not (isEmpty!24252 (originalCharacters!6936 (h!46356 prefixTokens!80)))))))

(assert (=> d!1144385 (= (inv!55097 (h!46356 prefixTokens!80)) e!2386785)))

(declare-fun b!3860723 () Bool)

(declare-fun res!1563267 () Bool)

(assert (=> b!3860723 (=> (not res!1563267) (not e!2386785))))

(assert (=> b!3860723 (= res!1563267 (= (originalCharacters!6936 (h!46356 prefixTokens!80)) (list!15236 (dynLambda!17657 (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))) (value!201210 (h!46356 prefixTokens!80))))))))

(declare-fun b!3860724 () Bool)

(assert (=> b!3860724 (= e!2386785 (= (size!30785 (h!46356 prefixTokens!80)) (size!30786 (originalCharacters!6936 (h!46356 prefixTokens!80)))))))

(assert (= (and d!1144385 res!1563266) b!3860723))

(assert (= (and b!3860723 res!1563267) b!3860724))

(declare-fun b_lambda!112853 () Bool)

(assert (=> (not b_lambda!112853) (not b!3860723)))

(declare-fun t!313404 () Bool)

(declare-fun tb!223643 () Bool)

(assert (=> (and b!3860358 (= (toChars!8623 (transformation!6336 (h!46357 rules!2768))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80))))) t!313404) tb!223643))

(declare-fun b!3860725 () Bool)

(declare-fun e!2386786 () Bool)

(declare-fun tp!1170286 () Bool)

(assert (=> b!3860725 (= e!2386786 (and (inv!55100 (c!672089 (dynLambda!17657 (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))) (value!201210 (h!46356 prefixTokens!80))))) tp!1170286))))

(declare-fun result!272364 () Bool)

(assert (=> tb!223643 (= result!272364 (and (inv!55101 (dynLambda!17657 (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))) (value!201210 (h!46356 prefixTokens!80)))) e!2386786))))

(assert (= tb!223643 b!3860725))

(declare-fun m!4416321 () Bool)

(assert (=> b!3860725 m!4416321))

(declare-fun m!4416323 () Bool)

(assert (=> tb!223643 m!4416323))

(assert (=> b!3860723 t!313404))

(declare-fun b_and!289017 () Bool)

(assert (= b_and!289011 (and (=> t!313404 result!272364) b_and!289017)))

(declare-fun t!313406 () Bool)

(declare-fun tb!223645 () Bool)

(assert (=> (and b!3860347 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80))))) t!313406) tb!223645))

(declare-fun result!272366 () Bool)

(assert (= result!272366 result!272364))

(assert (=> b!3860723 t!313406))

(declare-fun b_and!289019 () Bool)

(assert (= b_and!289013 (and (=> t!313406 result!272366) b_and!289019)))

(declare-fun tb!223647 () Bool)

(declare-fun t!313408 () Bool)

(assert (=> (and b!3860352 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80))))) t!313408) tb!223647))

(declare-fun result!272368 () Bool)

(assert (= result!272368 result!272364))

(assert (=> b!3860723 t!313408))

(declare-fun b_and!289021 () Bool)

(assert (= b_and!289015 (and (=> t!313408 result!272368) b_and!289021)))

(declare-fun m!4416325 () Bool)

(assert (=> d!1144385 m!4416325))

(declare-fun m!4416327 () Bool)

(assert (=> b!3860723 m!4416327))

(assert (=> b!3860723 m!4416327))

(declare-fun m!4416329 () Bool)

(assert (=> b!3860723 m!4416329))

(declare-fun m!4416331 () Bool)

(assert (=> b!3860724 m!4416331))

(assert (=> b!3860343 d!1144385))

(declare-fun b!3860737 () Bool)

(declare-fun res!1563270 () Bool)

(declare-fun e!2386795 () Bool)

(assert (=> b!3860737 (=> res!1563270 e!2386795)))

(assert (=> b!3860737 (= res!1563270 (not ((_ is IntegerValue!19700) (value!201210 (h!46356 suffixTokens!72)))))))

(declare-fun e!2386794 () Bool)

(assert (=> b!3860737 (= e!2386794 e!2386795)))

(declare-fun b!3860738 () Bool)

(declare-fun inv!17 (TokenValue!6566) Bool)

(assert (=> b!3860738 (= e!2386794 (inv!17 (value!201210 (h!46356 suffixTokens!72))))))

(declare-fun b!3860739 () Bool)

(declare-fun e!2386793 () Bool)

(assert (=> b!3860739 (= e!2386793 e!2386794)))

(declare-fun c!672175 () Bool)

(assert (=> b!3860739 (= c!672175 ((_ is IntegerValue!19699) (value!201210 (h!46356 suffixTokens!72))))))

(declare-fun b!3860740 () Bool)

(declare-fun inv!15 (TokenValue!6566) Bool)

(assert (=> b!3860740 (= e!2386795 (inv!15 (value!201210 (h!46356 suffixTokens!72))))))

(declare-fun d!1144387 () Bool)

(declare-fun c!672176 () Bool)

(assert (=> d!1144387 (= c!672176 ((_ is IntegerValue!19698) (value!201210 (h!46356 suffixTokens!72))))))

(assert (=> d!1144387 (= (inv!21 (value!201210 (h!46356 suffixTokens!72))) e!2386793)))

(declare-fun b!3860736 () Bool)

(declare-fun inv!16 (TokenValue!6566) Bool)

(assert (=> b!3860736 (= e!2386793 (inv!16 (value!201210 (h!46356 suffixTokens!72))))))

(assert (= (and d!1144387 c!672176) b!3860736))

(assert (= (and d!1144387 (not c!672176)) b!3860739))

(assert (= (and b!3860739 c!672175) b!3860738))

(assert (= (and b!3860739 (not c!672175)) b!3860737))

(assert (= (and b!3860737 (not res!1563270)) b!3860740))

(declare-fun m!4416333 () Bool)

(assert (=> b!3860738 m!4416333))

(declare-fun m!4416335 () Bool)

(assert (=> b!3860740 m!4416335))

(declare-fun m!4416337 () Bool)

(assert (=> b!3860736 m!4416337))

(assert (=> b!3860364 d!1144387))

(declare-fun lt!1341542 () List!41060)

(declare-fun b!3860744 () Bool)

(declare-fun e!2386797 () Bool)

(assert (=> b!3860744 (= e!2386797 (or (not (= (_1!23204 lt!1341392) Nil!40936)) (= lt!1341542 (Cons!40936 (_1!23203 (v!39051 lt!1341405)) Nil!40936))))))

(declare-fun b!3860742 () Bool)

(declare-fun e!2386796 () List!41060)

(assert (=> b!3860742 (= e!2386796 (Cons!40936 (h!46356 (Cons!40936 (_1!23203 (v!39051 lt!1341405)) Nil!40936)) (++!10429 (t!313359 (Cons!40936 (_1!23203 (v!39051 lt!1341405)) Nil!40936)) (_1!23204 lt!1341392))))))

(declare-fun b!3860743 () Bool)

(declare-fun res!1563271 () Bool)

(assert (=> b!3860743 (=> (not res!1563271) (not e!2386797))))

(assert (=> b!3860743 (= res!1563271 (= (size!30788 lt!1341542) (+ (size!30788 (Cons!40936 (_1!23203 (v!39051 lt!1341405)) Nil!40936)) (size!30788 (_1!23204 lt!1341392)))))))

(declare-fun b!3860741 () Bool)

(assert (=> b!3860741 (= e!2386796 (_1!23204 lt!1341392))))

(declare-fun d!1144389 () Bool)

(assert (=> d!1144389 e!2386797))

(declare-fun res!1563272 () Bool)

(assert (=> d!1144389 (=> (not res!1563272) (not e!2386797))))

(assert (=> d!1144389 (= res!1563272 (= (content!6104 lt!1341542) ((_ map or) (content!6104 (Cons!40936 (_1!23203 (v!39051 lt!1341405)) Nil!40936)) (content!6104 (_1!23204 lt!1341392)))))))

(assert (=> d!1144389 (= lt!1341542 e!2386796)))

(declare-fun c!672177 () Bool)

(assert (=> d!1144389 (= c!672177 ((_ is Nil!40936) (Cons!40936 (_1!23203 (v!39051 lt!1341405)) Nil!40936)))))

(assert (=> d!1144389 (= (++!10429 (Cons!40936 (_1!23203 (v!39051 lt!1341405)) Nil!40936) (_1!23204 lt!1341392)) lt!1341542)))

(assert (= (and d!1144389 c!672177) b!3860741))

(assert (= (and d!1144389 (not c!672177)) b!3860742))

(assert (= (and d!1144389 res!1563272) b!3860743))

(assert (= (and b!3860743 res!1563271) b!3860744))

(declare-fun m!4416339 () Bool)

(assert (=> b!3860742 m!4416339))

(declare-fun m!4416341 () Bool)

(assert (=> b!3860743 m!4416341))

(declare-fun m!4416343 () Bool)

(assert (=> b!3860743 m!4416343))

(declare-fun m!4416345 () Bool)

(assert (=> b!3860743 m!4416345))

(declare-fun m!4416347 () Bool)

(assert (=> d!1144389 m!4416347))

(declare-fun m!4416349 () Bool)

(assert (=> d!1144389 m!4416349))

(declare-fun m!4416351 () Bool)

(assert (=> d!1144389 m!4416351))

(assert (=> b!3860363 d!1144389))

(declare-fun d!1144391 () Bool)

(assert (=> d!1144391 (= (inv!55093 (tag!7196 (rule!9204 (h!46356 suffixTokens!72)))) (= (mod (str.len (value!201209 (tag!7196 (rule!9204 (h!46356 suffixTokens!72))))) 2) 0))))

(assert (=> b!3860342 d!1144391))

(declare-fun d!1144393 () Bool)

(declare-fun res!1563273 () Bool)

(declare-fun e!2386798 () Bool)

(assert (=> d!1144393 (=> (not res!1563273) (not e!2386798))))

(assert (=> d!1144393 (= res!1563273 (semiInverseModEq!2716 (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))) (toValue!8764 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72))))))))

(assert (=> d!1144393 (= (inv!55096 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))) e!2386798)))

(declare-fun b!3860745 () Bool)

(assert (=> b!3860745 (= e!2386798 (equivClasses!2615 (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))) (toValue!8764 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72))))))))

(assert (= (and d!1144393 res!1563273) b!3860745))

(declare-fun m!4416353 () Bool)

(assert (=> d!1144393 m!4416353))

(declare-fun m!4416355 () Bool)

(assert (=> b!3860745 m!4416355))

(assert (=> b!3860342 d!1144393))

(declare-fun d!1144395 () Bool)

(assert (=> d!1144395 (= (isEmpty!24250 (tail!5851 prefixTokens!80)) ((_ is Nil!40936) (tail!5851 prefixTokens!80)))))

(assert (=> b!3860362 d!1144395))

(declare-fun d!1144397 () Bool)

(assert (=> d!1144397 (= (tail!5851 prefixTokens!80) (t!313359 prefixTokens!80))))

(assert (=> b!3860362 d!1144397))

(declare-fun d!1144399 () Bool)

(assert (=> d!1144399 (= (isEmpty!24251 rules!2768) ((_ is Nil!40937) rules!2768))))

(assert (=> b!3860340 d!1144399))

(declare-fun b!3860774 () Bool)

(declare-fun e!2386819 () Bool)

(assert (=> b!3860774 (= e!2386819 (= (head!8142 lt!1341406) (c!672088 (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))))))))

(declare-fun b!3860775 () Bool)

(declare-fun res!1563291 () Bool)

(declare-fun e!2386813 () Bool)

(assert (=> b!3860775 (=> res!1563291 e!2386813)))

(assert (=> b!3860775 (= res!1563291 (not (isEmpty!24252 (tail!5853 lt!1341406))))))

(declare-fun bm!282532 () Bool)

(declare-fun call!282537 () Bool)

(assert (=> bm!282532 (= call!282537 (isEmpty!24252 lt!1341406))))

(declare-fun b!3860776 () Bool)

(declare-fun e!2386814 () Bool)

(declare-fun lt!1341545 () Bool)

(assert (=> b!3860776 (= e!2386814 (not lt!1341545))))

(declare-fun b!3860777 () Bool)

(declare-fun e!2386818 () Bool)

(declare-fun derivativeStep!3416 (Regex!11241 C!22668) Regex!11241)

(assert (=> b!3860777 (= e!2386818 (matchR!5388 (derivativeStep!3416 (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))) (head!8142 lt!1341406)) (tail!5853 lt!1341406)))))

(declare-fun d!1144401 () Bool)

(declare-fun e!2386817 () Bool)

(assert (=> d!1144401 e!2386817))

(declare-fun c!672184 () Bool)

(assert (=> d!1144401 (= c!672184 ((_ is EmptyExpr!11241) (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405))))))))

(assert (=> d!1144401 (= lt!1341545 e!2386818)))

(declare-fun c!672186 () Bool)

(assert (=> d!1144401 (= c!672186 (isEmpty!24252 lt!1341406))))

(assert (=> d!1144401 (validRegex!5116 (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))))))

(assert (=> d!1144401 (= (matchR!5388 (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))) lt!1341406) lt!1341545)))

(declare-fun b!3860778 () Bool)

(declare-fun e!2386816 () Bool)

(assert (=> b!3860778 (= e!2386816 e!2386813)))

(declare-fun res!1563297 () Bool)

(assert (=> b!3860778 (=> res!1563297 e!2386813)))

(assert (=> b!3860778 (= res!1563297 call!282537)))

(declare-fun b!3860779 () Bool)

(declare-fun res!1563293 () Bool)

(assert (=> b!3860779 (=> (not res!1563293) (not e!2386819))))

(assert (=> b!3860779 (= res!1563293 (isEmpty!24252 (tail!5853 lt!1341406)))))

(declare-fun b!3860780 () Bool)

(assert (=> b!3860780 (= e!2386813 (not (= (head!8142 lt!1341406) (c!672088 (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405))))))))))

(declare-fun b!3860781 () Bool)

(declare-fun res!1563292 () Bool)

(declare-fun e!2386815 () Bool)

(assert (=> b!3860781 (=> res!1563292 e!2386815)))

(assert (=> b!3860781 (= res!1563292 (not ((_ is ElementMatch!11241) (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))))))))

(assert (=> b!3860781 (= e!2386814 e!2386815)))

(declare-fun b!3860782 () Bool)

(assert (=> b!3860782 (= e!2386817 (= lt!1341545 call!282537))))

(declare-fun b!3860783 () Bool)

(assert (=> b!3860783 (= e!2386817 e!2386814)))

(declare-fun c!672185 () Bool)

(assert (=> b!3860783 (= c!672185 ((_ is EmptyLang!11241) (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405))))))))

(declare-fun b!3860784 () Bool)

(assert (=> b!3860784 (= e!2386815 e!2386816)))

(declare-fun res!1563296 () Bool)

(assert (=> b!3860784 (=> (not res!1563296) (not e!2386816))))

(assert (=> b!3860784 (= res!1563296 (not lt!1341545))))

(declare-fun b!3860785 () Bool)

(declare-fun res!1563294 () Bool)

(assert (=> b!3860785 (=> res!1563294 e!2386815)))

(assert (=> b!3860785 (= res!1563294 e!2386819)))

(declare-fun res!1563295 () Bool)

(assert (=> b!3860785 (=> (not res!1563295) (not e!2386819))))

(assert (=> b!3860785 (= res!1563295 lt!1341545)))

(declare-fun b!3860786 () Bool)

(assert (=> b!3860786 (= e!2386818 (nullable!3917 (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405))))))))

(declare-fun b!3860787 () Bool)

(declare-fun res!1563290 () Bool)

(assert (=> b!3860787 (=> (not res!1563290) (not e!2386819))))

(assert (=> b!3860787 (= res!1563290 (not call!282537))))

(assert (= (and d!1144401 c!672186) b!3860786))

(assert (= (and d!1144401 (not c!672186)) b!3860777))

(assert (= (and d!1144401 c!672184) b!3860782))

(assert (= (and d!1144401 (not c!672184)) b!3860783))

(assert (= (and b!3860783 c!672185) b!3860776))

(assert (= (and b!3860783 (not c!672185)) b!3860781))

(assert (= (and b!3860781 (not res!1563292)) b!3860785))

(assert (= (and b!3860785 res!1563295) b!3860787))

(assert (= (and b!3860787 res!1563290) b!3860779))

(assert (= (and b!3860779 res!1563293) b!3860774))

(assert (= (and b!3860785 (not res!1563294)) b!3860784))

(assert (= (and b!3860784 res!1563296) b!3860778))

(assert (= (and b!3860778 (not res!1563297)) b!3860775))

(assert (= (and b!3860775 (not res!1563291)) b!3860780))

(assert (= (or b!3860782 b!3860787 b!3860778) bm!282532))

(assert (=> b!3860775 m!4416309))

(assert (=> b!3860775 m!4416309))

(declare-fun m!4416357 () Bool)

(assert (=> b!3860775 m!4416357))

(assert (=> b!3860774 m!4416305))

(assert (=> b!3860780 m!4416305))

(declare-fun m!4416359 () Bool)

(assert (=> bm!282532 m!4416359))

(assert (=> d!1144401 m!4416359))

(assert (=> d!1144401 m!4416159))

(assert (=> b!3860786 m!4416161))

(assert (=> b!3860779 m!4416309))

(assert (=> b!3860779 m!4416309))

(assert (=> b!3860779 m!4416357))

(assert (=> b!3860777 m!4416305))

(assert (=> b!3860777 m!4416305))

(declare-fun m!4416361 () Bool)

(assert (=> b!3860777 m!4416361))

(assert (=> b!3860777 m!4416309))

(assert (=> b!3860777 m!4416361))

(assert (=> b!3860777 m!4416309))

(declare-fun m!4416363 () Bool)

(assert (=> b!3860777 m!4416363))

(assert (=> b!3860360 d!1144401))

(declare-fun d!1144403 () Bool)

(declare-fun e!2386887 () Bool)

(assert (=> d!1144403 e!2386887))

(declare-fun res!1563338 () Bool)

(assert (=> d!1144403 (=> res!1563338 e!2386887)))

(declare-fun lt!1341576 () Option!8754)

(assert (=> d!1144403 (= res!1563338 (isEmpty!24253 lt!1341576))))

(declare-fun e!2386890 () Option!8754)

(assert (=> d!1144403 (= lt!1341576 e!2386890)))

(declare-fun c!672193 () Bool)

(declare-datatypes ((tuple2!40144 0))(
  ( (tuple2!40145 (_1!23206 List!41059) (_2!23206 List!41059)) )
))
(declare-fun lt!1341573 () tuple2!40144)

(assert (=> d!1144403 (= c!672193 (isEmpty!24252 (_1!23206 lt!1341573)))))

(declare-fun findLongestMatch!1097 (Regex!11241 List!41059) tuple2!40144)

(assert (=> d!1144403 (= lt!1341573 (findLongestMatch!1097 (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))) lt!1341402))))

(assert (=> d!1144403 (ruleValid!2288 thiss!20629 (rule!9204 (_1!23203 (v!39051 lt!1341405))))))

(assert (=> d!1144403 (= (maxPrefixOneRule!2311 thiss!20629 (rule!9204 (_1!23203 (v!39051 lt!1341405))) lt!1341402) lt!1341576)))

(declare-fun b!3860896 () Bool)

(declare-fun e!2386889 () Bool)

(assert (=> b!3860896 (= e!2386887 e!2386889)))

(declare-fun res!1563340 () Bool)

(assert (=> b!3860896 (=> (not res!1563340) (not e!2386889))))

(assert (=> b!3860896 (= res!1563340 (matchR!5388 (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))) (list!15236 (charsOf!4164 (_1!23203 (get!13544 lt!1341576))))))))

(declare-fun b!3860897 () Bool)

(declare-fun size!30790 (BalanceConc!24688) Int)

(assert (=> b!3860897 (= e!2386890 (Some!8753 (tuple2!40139 (Token!11811 (apply!9579 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))) (seqFromList!4607 (_1!23206 lt!1341573))) (rule!9204 (_1!23203 (v!39051 lt!1341405))) (size!30790 (seqFromList!4607 (_1!23206 lt!1341573))) (_1!23206 lt!1341573)) (_2!23206 lt!1341573))))))

(declare-fun lt!1341574 () Unit!58592)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1157 (Regex!11241 List!41059) Unit!58592)

(assert (=> b!3860897 (= lt!1341574 (longestMatchIsAcceptedByMatchOrIsEmpty!1157 (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))) lt!1341402))))

(declare-fun res!1563336 () Bool)

(declare-fun findLongestMatchInner!1184 (Regex!11241 List!41059 Int List!41059 List!41059 Int) tuple2!40144)

(assert (=> b!3860897 (= res!1563336 (isEmpty!24252 (_1!23206 (findLongestMatchInner!1184 (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))) Nil!40935 (size!30786 Nil!40935) lt!1341402 lt!1341402 (size!30786 lt!1341402)))))))

(declare-fun e!2386888 () Bool)

(assert (=> b!3860897 (=> res!1563336 e!2386888)))

(assert (=> b!3860897 e!2386888))

(declare-fun lt!1341575 () Unit!58592)

(assert (=> b!3860897 (= lt!1341575 lt!1341574)))

(declare-fun lt!1341572 () Unit!58592)

(declare-fun lemmaSemiInverse!1690 (TokenValueInjection!12560 BalanceConc!24688) Unit!58592)

(assert (=> b!3860897 (= lt!1341572 (lemmaSemiInverse!1690 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))) (seqFromList!4607 (_1!23206 lt!1341573))))))

(declare-fun b!3860898 () Bool)

(assert (=> b!3860898 (= e!2386889 (= (size!30785 (_1!23203 (get!13544 lt!1341576))) (size!30786 (originalCharacters!6936 (_1!23203 (get!13544 lt!1341576))))))))

(declare-fun b!3860899 () Bool)

(assert (=> b!3860899 (= e!2386888 (matchR!5388 (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))) (_1!23206 (findLongestMatchInner!1184 (regex!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))) Nil!40935 (size!30786 Nil!40935) lt!1341402 lt!1341402 (size!30786 lt!1341402)))))))

(declare-fun b!3860900 () Bool)

(assert (=> b!3860900 (= e!2386890 None!8753)))

(declare-fun b!3860901 () Bool)

(declare-fun res!1563334 () Bool)

(assert (=> b!3860901 (=> (not res!1563334) (not e!2386889))))

(assert (=> b!3860901 (= res!1563334 (= (rule!9204 (_1!23203 (get!13544 lt!1341576))) (rule!9204 (_1!23203 (v!39051 lt!1341405)))))))

(declare-fun b!3860902 () Bool)

(declare-fun res!1563337 () Bool)

(assert (=> b!3860902 (=> (not res!1563337) (not e!2386889))))

(assert (=> b!3860902 (= res!1563337 (= (value!201210 (_1!23203 (get!13544 lt!1341576))) (apply!9579 (transformation!6336 (rule!9204 (_1!23203 (get!13544 lt!1341576)))) (seqFromList!4607 (originalCharacters!6936 (_1!23203 (get!13544 lt!1341576)))))))))

(declare-fun b!3860903 () Bool)

(declare-fun res!1563339 () Bool)

(assert (=> b!3860903 (=> (not res!1563339) (not e!2386889))))

(assert (=> b!3860903 (= res!1563339 (< (size!30786 (_2!23203 (get!13544 lt!1341576))) (size!30786 lt!1341402)))))

(declare-fun b!3860904 () Bool)

(declare-fun res!1563335 () Bool)

(assert (=> b!3860904 (=> (not res!1563335) (not e!2386889))))

(assert (=> b!3860904 (= res!1563335 (= (++!10430 (list!15236 (charsOf!4164 (_1!23203 (get!13544 lt!1341576)))) (_2!23203 (get!13544 lt!1341576))) lt!1341402))))

(assert (= (and d!1144403 c!672193) b!3860900))

(assert (= (and d!1144403 (not c!672193)) b!3860897))

(assert (= (and b!3860897 (not res!1563336)) b!3860899))

(assert (= (and d!1144403 (not res!1563338)) b!3860896))

(assert (= (and b!3860896 res!1563340) b!3860904))

(assert (= (and b!3860904 res!1563335) b!3860903))

(assert (= (and b!3860903 res!1563339) b!3860901))

(assert (= (and b!3860901 res!1563334) b!3860902))

(assert (= (and b!3860902 res!1563337) b!3860898))

(declare-fun m!4416423 () Bool)

(assert (=> b!3860904 m!4416423))

(declare-fun m!4416425 () Bool)

(assert (=> b!3860904 m!4416425))

(assert (=> b!3860904 m!4416425))

(declare-fun m!4416427 () Bool)

(assert (=> b!3860904 m!4416427))

(assert (=> b!3860904 m!4416427))

(declare-fun m!4416429 () Bool)

(assert (=> b!3860904 m!4416429))

(assert (=> b!3860896 m!4416423))

(assert (=> b!3860896 m!4416425))

(assert (=> b!3860896 m!4416425))

(assert (=> b!3860896 m!4416427))

(assert (=> b!3860896 m!4416427))

(declare-fun m!4416431 () Bool)

(assert (=> b!3860896 m!4416431))

(assert (=> b!3860903 m!4416423))

(declare-fun m!4416433 () Bool)

(assert (=> b!3860903 m!4416433))

(assert (=> b!3860903 m!4415821))

(declare-fun m!4416435 () Bool)

(assert (=> d!1144403 m!4416435))

(declare-fun m!4416437 () Bool)

(assert (=> d!1144403 m!4416437))

(declare-fun m!4416439 () Bool)

(assert (=> d!1144403 m!4416439))

(assert (=> d!1144403 m!4415883))

(assert (=> b!3860901 m!4416423))

(assert (=> b!3860897 m!4415821))

(declare-fun m!4416441 () Bool)

(assert (=> b!3860897 m!4416441))

(assert (=> b!3860897 m!4415821))

(declare-fun m!4416443 () Bool)

(assert (=> b!3860897 m!4416443))

(declare-fun m!4416445 () Bool)

(assert (=> b!3860897 m!4416445))

(declare-fun m!4416447 () Bool)

(assert (=> b!3860897 m!4416447))

(declare-fun m!4416449 () Bool)

(assert (=> b!3860897 m!4416449))

(assert (=> b!3860897 m!4416441))

(assert (=> b!3860897 m!4416447))

(assert (=> b!3860897 m!4416447))

(declare-fun m!4416451 () Bool)

(assert (=> b!3860897 m!4416451))

(declare-fun m!4416453 () Bool)

(assert (=> b!3860897 m!4416453))

(assert (=> b!3860897 m!4416447))

(declare-fun m!4416455 () Bool)

(assert (=> b!3860897 m!4416455))

(assert (=> b!3860899 m!4416441))

(assert (=> b!3860899 m!4415821))

(assert (=> b!3860899 m!4416441))

(assert (=> b!3860899 m!4415821))

(assert (=> b!3860899 m!4416443))

(declare-fun m!4416457 () Bool)

(assert (=> b!3860899 m!4416457))

(assert (=> b!3860898 m!4416423))

(declare-fun m!4416459 () Bool)

(assert (=> b!3860898 m!4416459))

(assert (=> b!3860902 m!4416423))

(declare-fun m!4416461 () Bool)

(assert (=> b!3860902 m!4416461))

(assert (=> b!3860902 m!4416461))

(declare-fun m!4416463 () Bool)

(assert (=> b!3860902 m!4416463))

(assert (=> b!3860360 d!1144403))

(declare-fun d!1144411 () Bool)

(assert (=> d!1144411 (= (maxPrefixOneRule!2311 thiss!20629 (rule!9204 (_1!23203 (v!39051 lt!1341405))) lt!1341402) (Some!8753 (tuple2!40139 (Token!11811 (apply!9579 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))) (seqFromList!4607 lt!1341406)) (rule!9204 (_1!23203 (v!39051 lt!1341405))) (size!30786 lt!1341406) lt!1341406) (_2!23203 (v!39051 lt!1341405)))))))

(declare-fun lt!1341579 () Unit!58592)

(declare-fun choose!22736 (LexerInterface!5925 List!41061 List!41059 List!41059 List!41059 Rule!12472) Unit!58592)

(assert (=> d!1144411 (= lt!1341579 (choose!22736 thiss!20629 rules!2768 lt!1341406 lt!1341402 (_2!23203 (v!39051 lt!1341405)) (rule!9204 (_1!23203 (v!39051 lt!1341405)))))))

(assert (=> d!1144411 (not (isEmpty!24251 rules!2768))))

(assert (=> d!1144411 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1209 thiss!20629 rules!2768 lt!1341406 lt!1341402 (_2!23203 (v!39051 lt!1341405)) (rule!9204 (_1!23203 (v!39051 lt!1341405)))) lt!1341579)))

(declare-fun bs!583184 () Bool)

(assert (= bs!583184 d!1144411))

(declare-fun m!4416465 () Bool)

(assert (=> bs!583184 m!4416465))

(assert (=> bs!583184 m!4415863))

(assert (=> bs!583184 m!4415865))

(assert (=> bs!583184 m!4415879))

(assert (=> bs!583184 m!4415863))

(assert (=> bs!583184 m!4415853))

(assert (=> bs!583184 m!4415897))

(assert (=> b!3860360 d!1144411))

(declare-fun d!1144413 () Bool)

(assert (=> d!1144413 (= (isEmpty!24252 prefix!426) ((_ is Nil!40935) prefix!426))))

(assert (=> b!3860359 d!1144413))

(declare-fun d!1144415 () Bool)

(declare-fun res!1563343 () Bool)

(declare-fun e!2386893 () Bool)

(assert (=> d!1144415 (=> (not res!1563343) (not e!2386893))))

(declare-fun rulesValid!2452 (LexerInterface!5925 List!41061) Bool)

(assert (=> d!1144415 (= res!1563343 (rulesValid!2452 thiss!20629 rules!2768))))

(assert (=> d!1144415 (= (rulesInvariant!5268 thiss!20629 rules!2768) e!2386893)))

(declare-fun b!3860907 () Bool)

(declare-datatypes ((List!41063 0))(
  ( (Nil!40939) (Cons!40939 (h!46359 String!46548) (t!313458 List!41063)) )
))
(declare-fun noDuplicateTag!2453 (LexerInterface!5925 List!41061 List!41063) Bool)

(assert (=> b!3860907 (= e!2386893 (noDuplicateTag!2453 thiss!20629 rules!2768 Nil!40939))))

(assert (= (and d!1144415 res!1563343) b!3860907))

(declare-fun m!4416467 () Bool)

(assert (=> d!1144415 m!4416467))

(declare-fun m!4416469 () Bool)

(assert (=> b!3860907 m!4416469))

(assert (=> b!3860356 d!1144415))

(declare-fun b!3860909 () Bool)

(declare-fun res!1563344 () Bool)

(declare-fun e!2386896 () Bool)

(assert (=> b!3860909 (=> res!1563344 e!2386896)))

(assert (=> b!3860909 (= res!1563344 (not ((_ is IntegerValue!19700) (value!201210 (h!46356 prefixTokens!80)))))))

(declare-fun e!2386895 () Bool)

(assert (=> b!3860909 (= e!2386895 e!2386896)))

(declare-fun b!3860910 () Bool)

(assert (=> b!3860910 (= e!2386895 (inv!17 (value!201210 (h!46356 prefixTokens!80))))))

(declare-fun b!3860911 () Bool)

(declare-fun e!2386894 () Bool)

(assert (=> b!3860911 (= e!2386894 e!2386895)))

(declare-fun c!672194 () Bool)

(assert (=> b!3860911 (= c!672194 ((_ is IntegerValue!19699) (value!201210 (h!46356 prefixTokens!80))))))

(declare-fun b!3860912 () Bool)

(assert (=> b!3860912 (= e!2386896 (inv!15 (value!201210 (h!46356 prefixTokens!80))))))

(declare-fun d!1144417 () Bool)

(declare-fun c!672195 () Bool)

(assert (=> d!1144417 (= c!672195 ((_ is IntegerValue!19698) (value!201210 (h!46356 prefixTokens!80))))))

(assert (=> d!1144417 (= (inv!21 (value!201210 (h!46356 prefixTokens!80))) e!2386894)))

(declare-fun b!3860908 () Bool)

(assert (=> b!3860908 (= e!2386894 (inv!16 (value!201210 (h!46356 prefixTokens!80))))))

(assert (= (and d!1144417 c!672195) b!3860908))

(assert (= (and d!1144417 (not c!672195)) b!3860911))

(assert (= (and b!3860911 c!672194) b!3860910))

(assert (= (and b!3860911 (not c!672194)) b!3860909))

(assert (= (and b!3860909 (not res!1563344)) b!3860912))

(declare-fun m!4416471 () Bool)

(assert (=> b!3860910 m!4416471))

(declare-fun m!4416473 () Bool)

(assert (=> b!3860912 m!4416473))

(declare-fun m!4416475 () Bool)

(assert (=> b!3860908 m!4416475))

(assert (=> b!3860355 d!1144417))

(declare-fun b!3860926 () Bool)

(declare-fun b_free!103813 () Bool)

(declare-fun b_next!104517 () Bool)

(assert (=> b!3860926 (= b_free!103813 (not b_next!104517))))

(declare-fun tb!223673 () Bool)

(declare-fun t!313434 () Bool)

(assert (=> (and b!3860926 (= (toValue!8764 (transformation!6336 (rule!9204 (h!46356 (t!313359 prefixTokens!80))))) (toValue!8764 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))))) t!313434) tb!223673))

(declare-fun result!272404 () Bool)

(assert (= result!272404 result!272350))

(assert (=> d!1144345 t!313434))

(declare-fun tp!1170361 () Bool)

(declare-fun b_and!289035 () Bool)

(assert (=> b!3860926 (= tp!1170361 (and (=> t!313434 result!272404) b_and!289035))))

(declare-fun b_free!103815 () Bool)

(declare-fun b_next!104519 () Bool)

(assert (=> b!3860926 (= b_free!103815 (not b_next!104519))))

(declare-fun tb!223675 () Bool)

(declare-fun t!313436 () Bool)

(assert (=> (and b!3860926 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 (t!313359 prefixTokens!80))))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72))))) t!313436) tb!223675))

(declare-fun result!272406 () Bool)

(assert (= result!272406 result!272314))

(assert (=> b!3860428 t!313436))

(declare-fun tb!223677 () Bool)

(declare-fun t!313438 () Bool)

(assert (=> (and b!3860926 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 (t!313359 prefixTokens!80))))) (toChars!8623 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))))) t!313438) tb!223677))

(declare-fun result!272408 () Bool)

(assert (= result!272408 result!272358))

(assert (=> d!1144349 t!313438))

(declare-fun t!313440 () Bool)

(declare-fun tb!223679 () Bool)

(assert (=> (and b!3860926 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 (t!313359 prefixTokens!80))))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80))))) t!313440) tb!223679))

(declare-fun result!272410 () Bool)

(assert (= result!272410 result!272364))

(assert (=> b!3860723 t!313440))

(declare-fun b_and!289037 () Bool)

(declare-fun tp!1170362 () Bool)

(assert (=> b!3860926 (= tp!1170362 (and (=> t!313436 result!272406) (=> t!313438 result!272408) (=> t!313440 result!272410) b_and!289037))))

(declare-fun e!2386909 () Bool)

(assert (=> b!3860343 (= tp!1170264 e!2386909)))

(declare-fun e!2386911 () Bool)

(declare-fun tp!1170364 () Bool)

(declare-fun e!2386913 () Bool)

(declare-fun b!3860924 () Bool)

(assert (=> b!3860924 (= e!2386911 (and (inv!21 (value!201210 (h!46356 (t!313359 prefixTokens!80)))) e!2386913 tp!1170364))))

(declare-fun e!2386910 () Bool)

(declare-fun b!3860925 () Bool)

(declare-fun tp!1170365 () Bool)

(assert (=> b!3860925 (= e!2386913 (and tp!1170365 (inv!55093 (tag!7196 (rule!9204 (h!46356 (t!313359 prefixTokens!80))))) (inv!55096 (transformation!6336 (rule!9204 (h!46356 (t!313359 prefixTokens!80))))) e!2386910))))

(declare-fun tp!1170363 () Bool)

(declare-fun b!3860923 () Bool)

(assert (=> b!3860923 (= e!2386909 (and (inv!55097 (h!46356 (t!313359 prefixTokens!80))) e!2386911 tp!1170363))))

(assert (=> b!3860926 (= e!2386910 (and tp!1170361 tp!1170362))))

(assert (= b!3860925 b!3860926))

(assert (= b!3860924 b!3860925))

(assert (= b!3860923 b!3860924))

(assert (= (and b!3860343 ((_ is Cons!40936) (t!313359 prefixTokens!80))) b!3860923))

(declare-fun m!4416477 () Bool)

(assert (=> b!3860924 m!4416477))

(declare-fun m!4416479 () Bool)

(assert (=> b!3860925 m!4416479))

(declare-fun m!4416481 () Bool)

(assert (=> b!3860925 m!4416481))

(declare-fun m!4416483 () Bool)

(assert (=> b!3860923 m!4416483))

(declare-fun b!3860931 () Bool)

(declare-fun e!2386917 () Bool)

(declare-fun tp!1170368 () Bool)

(assert (=> b!3860931 (= e!2386917 (and tp_is_empty!19453 tp!1170368))))

(assert (=> b!3860364 (= tp!1170260 e!2386917)))

(assert (= (and b!3860364 ((_ is Cons!40935) (originalCharacters!6936 (h!46356 suffixTokens!72)))) b!3860931))

(declare-fun b!3860942 () Bool)

(declare-fun e!2386920 () Bool)

(assert (=> b!3860942 (= e!2386920 tp_is_empty!19453)))

(assert (=> b!3860342 (= tp!1170270 e!2386920)))

(declare-fun b!3860943 () Bool)

(declare-fun tp!1170382 () Bool)

(declare-fun tp!1170379 () Bool)

(assert (=> b!3860943 (= e!2386920 (and tp!1170382 tp!1170379))))

(declare-fun b!3860945 () Bool)

(declare-fun tp!1170381 () Bool)

(declare-fun tp!1170380 () Bool)

(assert (=> b!3860945 (= e!2386920 (and tp!1170381 tp!1170380))))

(declare-fun b!3860944 () Bool)

(declare-fun tp!1170383 () Bool)

(assert (=> b!3860944 (= e!2386920 tp!1170383)))

(assert (= (and b!3860342 ((_ is ElementMatch!11241) (regex!6336 (rule!9204 (h!46356 suffixTokens!72))))) b!3860942))

(assert (= (and b!3860342 ((_ is Concat!17808) (regex!6336 (rule!9204 (h!46356 suffixTokens!72))))) b!3860943))

(assert (= (and b!3860342 ((_ is Star!11241) (regex!6336 (rule!9204 (h!46356 suffixTokens!72))))) b!3860944))

(assert (= (and b!3860342 ((_ is Union!11241) (regex!6336 (rule!9204 (h!46356 suffixTokens!72))))) b!3860945))

(declare-fun b!3860949 () Bool)

(declare-fun b_free!103817 () Bool)

(declare-fun b_next!104521 () Bool)

(assert (=> b!3860949 (= b_free!103817 (not b_next!104521))))

(declare-fun t!313442 () Bool)

(declare-fun tb!223681 () Bool)

(assert (=> (and b!3860949 (= (toValue!8764 (transformation!6336 (rule!9204 (h!46356 (t!313359 suffixTokens!72))))) (toValue!8764 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))))) t!313442) tb!223681))

(declare-fun result!272416 () Bool)

(assert (= result!272416 result!272350))

(assert (=> d!1144345 t!313442))

(declare-fun b_and!289039 () Bool)

(declare-fun tp!1170384 () Bool)

(assert (=> b!3860949 (= tp!1170384 (and (=> t!313442 result!272416) b_and!289039))))

(declare-fun b_free!103819 () Bool)

(declare-fun b_next!104523 () Bool)

(assert (=> b!3860949 (= b_free!103819 (not b_next!104523))))

(declare-fun t!313444 () Bool)

(declare-fun tb!223683 () Bool)

(assert (=> (and b!3860949 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 (t!313359 suffixTokens!72))))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72))))) t!313444) tb!223683))

(declare-fun result!272418 () Bool)

(assert (= result!272418 result!272314))

(assert (=> b!3860428 t!313444))

(declare-fun t!313446 () Bool)

(declare-fun tb!223685 () Bool)

(assert (=> (and b!3860949 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 (t!313359 suffixTokens!72))))) (toChars!8623 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))))) t!313446) tb!223685))

(declare-fun result!272420 () Bool)

(assert (= result!272420 result!272358))

(assert (=> d!1144349 t!313446))

(declare-fun t!313448 () Bool)

(declare-fun tb!223687 () Bool)

(assert (=> (and b!3860949 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 (t!313359 suffixTokens!72))))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80))))) t!313448) tb!223687))

(declare-fun result!272422 () Bool)

(assert (= result!272422 result!272364))

(assert (=> b!3860723 t!313448))

(declare-fun b_and!289041 () Bool)

(declare-fun tp!1170385 () Bool)

(assert (=> b!3860949 (= tp!1170385 (and (=> t!313444 result!272418) (=> t!313446 result!272420) (=> t!313448 result!272422) b_and!289041))))

(declare-fun e!2386921 () Bool)

(assert (=> b!3860351 (= tp!1170274 e!2386921)))

(declare-fun e!2386923 () Bool)

(declare-fun tp!1170387 () Bool)

(declare-fun b!3860947 () Bool)

(declare-fun e!2386925 () Bool)

(assert (=> b!3860947 (= e!2386923 (and (inv!21 (value!201210 (h!46356 (t!313359 suffixTokens!72)))) e!2386925 tp!1170387))))

(declare-fun tp!1170388 () Bool)

(declare-fun b!3860948 () Bool)

(declare-fun e!2386922 () Bool)

(assert (=> b!3860948 (= e!2386925 (and tp!1170388 (inv!55093 (tag!7196 (rule!9204 (h!46356 (t!313359 suffixTokens!72))))) (inv!55096 (transformation!6336 (rule!9204 (h!46356 (t!313359 suffixTokens!72))))) e!2386922))))

(declare-fun tp!1170386 () Bool)

(declare-fun b!3860946 () Bool)

(assert (=> b!3860946 (= e!2386921 (and (inv!55097 (h!46356 (t!313359 suffixTokens!72))) e!2386923 tp!1170386))))

(assert (=> b!3860949 (= e!2386922 (and tp!1170384 tp!1170385))))

(assert (= b!3860948 b!3860949))

(assert (= b!3860947 b!3860948))

(assert (= b!3860946 b!3860947))

(assert (= (and b!3860351 ((_ is Cons!40936) (t!313359 suffixTokens!72))) b!3860946))

(declare-fun m!4416485 () Bool)

(assert (=> b!3860947 m!4416485))

(declare-fun m!4416487 () Bool)

(assert (=> b!3860948 m!4416487))

(declare-fun m!4416489 () Bool)

(assert (=> b!3860948 m!4416489))

(declare-fun m!4416491 () Bool)

(assert (=> b!3860946 m!4416491))

(declare-fun b!3860950 () Bool)

(declare-fun e!2386927 () Bool)

(declare-fun tp!1170389 () Bool)

(assert (=> b!3860950 (= e!2386927 (and tp_is_empty!19453 tp!1170389))))

(assert (=> b!3860372 (= tp!1170268 e!2386927)))

(assert (= (and b!3860372 ((_ is Cons!40935) (t!313358 suffixResult!91))) b!3860950))

(declare-fun b!3860951 () Bool)

(declare-fun e!2386928 () Bool)

(declare-fun tp!1170390 () Bool)

(assert (=> b!3860951 (= e!2386928 (and tp_is_empty!19453 tp!1170390))))

(assert (=> b!3860361 (= tp!1170266 e!2386928)))

(assert (= (and b!3860361 ((_ is Cons!40935) (t!313358 prefix!426))) b!3860951))

(declare-fun b!3860952 () Bool)

(declare-fun e!2386929 () Bool)

(assert (=> b!3860952 (= e!2386929 tp_is_empty!19453)))

(assert (=> b!3860350 (= tp!1170267 e!2386929)))

(declare-fun b!3860953 () Bool)

(declare-fun tp!1170394 () Bool)

(declare-fun tp!1170391 () Bool)

(assert (=> b!3860953 (= e!2386929 (and tp!1170394 tp!1170391))))

(declare-fun b!3860955 () Bool)

(declare-fun tp!1170393 () Bool)

(declare-fun tp!1170392 () Bool)

(assert (=> b!3860955 (= e!2386929 (and tp!1170393 tp!1170392))))

(declare-fun b!3860954 () Bool)

(declare-fun tp!1170395 () Bool)

(assert (=> b!3860954 (= e!2386929 tp!1170395)))

(assert (= (and b!3860350 ((_ is ElementMatch!11241) (regex!6336 (rule!9204 (h!46356 prefixTokens!80))))) b!3860952))

(assert (= (and b!3860350 ((_ is Concat!17808) (regex!6336 (rule!9204 (h!46356 prefixTokens!80))))) b!3860953))

(assert (= (and b!3860350 ((_ is Star!11241) (regex!6336 (rule!9204 (h!46356 prefixTokens!80))))) b!3860954))

(assert (= (and b!3860350 ((_ is Union!11241) (regex!6336 (rule!9204 (h!46356 prefixTokens!80))))) b!3860955))

(declare-fun b!3860956 () Bool)

(declare-fun e!2386930 () Bool)

(declare-fun tp!1170396 () Bool)

(assert (=> b!3860956 (= e!2386930 (and tp_is_empty!19453 tp!1170396))))

(assert (=> b!3860357 (= tp!1170262 e!2386930)))

(assert (= (and b!3860357 ((_ is Cons!40935) (t!313358 suffix!1176))) b!3860956))

(declare-fun b!3860967 () Bool)

(declare-fun b_free!103821 () Bool)

(declare-fun b_next!104525 () Bool)

(assert (=> b!3860967 (= b_free!103821 (not b_next!104525))))

(declare-fun tb!223689 () Bool)

(declare-fun t!313450 () Bool)

(assert (=> (and b!3860967 (= (toValue!8764 (transformation!6336 (h!46357 (t!313360 rules!2768)))) (toValue!8764 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))))) t!313450) tb!223689))

(declare-fun result!272426 () Bool)

(assert (= result!272426 result!272350))

(assert (=> d!1144345 t!313450))

(declare-fun tp!1170408 () Bool)

(declare-fun b_and!289043 () Bool)

(assert (=> b!3860967 (= tp!1170408 (and (=> t!313450 result!272426) b_and!289043))))

(declare-fun b_free!103823 () Bool)

(declare-fun b_next!104527 () Bool)

(assert (=> b!3860967 (= b_free!103823 (not b_next!104527))))

(declare-fun t!313452 () Bool)

(declare-fun tb!223691 () Bool)

(assert (=> (and b!3860967 (= (toChars!8623 (transformation!6336 (h!46357 (t!313360 rules!2768)))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72))))) t!313452) tb!223691))

(declare-fun result!272428 () Bool)

(assert (= result!272428 result!272314))

(assert (=> b!3860428 t!313452))

(declare-fun t!313454 () Bool)

(declare-fun tb!223693 () Bool)

(assert (=> (and b!3860967 (= (toChars!8623 (transformation!6336 (h!46357 (t!313360 rules!2768)))) (toChars!8623 (transformation!6336 (rule!9204 (_1!23203 (v!39051 lt!1341405)))))) t!313454) tb!223693))

(declare-fun result!272430 () Bool)

(assert (= result!272430 result!272358))

(assert (=> d!1144349 t!313454))

(declare-fun t!313456 () Bool)

(declare-fun tb!223695 () Bool)

(assert (=> (and b!3860967 (= (toChars!8623 (transformation!6336 (h!46357 (t!313360 rules!2768)))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80))))) t!313456) tb!223695))

(declare-fun result!272432 () Bool)

(assert (= result!272432 result!272364))

(assert (=> b!3860723 t!313456))

(declare-fun b_and!289045 () Bool)

(declare-fun tp!1170405 () Bool)

(assert (=> b!3860967 (= tp!1170405 (and (=> t!313452 result!272428) (=> t!313454 result!272430) (=> t!313456 result!272432) b_and!289045))))

(declare-fun e!2386939 () Bool)

(assert (=> b!3860967 (= e!2386939 (and tp!1170408 tp!1170405))))

(declare-fun tp!1170407 () Bool)

(declare-fun e!2386942 () Bool)

(declare-fun b!3860966 () Bool)

(assert (=> b!3860966 (= e!2386942 (and tp!1170407 (inv!55093 (tag!7196 (h!46357 (t!313360 rules!2768)))) (inv!55096 (transformation!6336 (h!46357 (t!313360 rules!2768)))) e!2386939))))

(declare-fun b!3860965 () Bool)

(declare-fun e!2386940 () Bool)

(declare-fun tp!1170406 () Bool)

(assert (=> b!3860965 (= e!2386940 (and e!2386942 tp!1170406))))

(assert (=> b!3860346 (= tp!1170275 e!2386940)))

(assert (= b!3860966 b!3860967))

(assert (= b!3860965 b!3860966))

(assert (= (and b!3860346 ((_ is Cons!40937) (t!313360 rules!2768))) b!3860965))

(declare-fun m!4416493 () Bool)

(assert (=> b!3860966 m!4416493))

(declare-fun m!4416495 () Bool)

(assert (=> b!3860966 m!4416495))

(declare-fun b!3860968 () Bool)

(declare-fun e!2386943 () Bool)

(declare-fun tp!1170409 () Bool)

(assert (=> b!3860968 (= e!2386943 (and tp_is_empty!19453 tp!1170409))))

(assert (=> b!3860355 (= tp!1170269 e!2386943)))

(assert (= (and b!3860355 ((_ is Cons!40935) (originalCharacters!6936 (h!46356 prefixTokens!80)))) b!3860968))

(declare-fun b!3860969 () Bool)

(declare-fun e!2386944 () Bool)

(assert (=> b!3860969 (= e!2386944 tp_is_empty!19453)))

(assert (=> b!3860344 (= tp!1170276 e!2386944)))

(declare-fun b!3860970 () Bool)

(declare-fun tp!1170413 () Bool)

(declare-fun tp!1170410 () Bool)

(assert (=> b!3860970 (= e!2386944 (and tp!1170413 tp!1170410))))

(declare-fun b!3860972 () Bool)

(declare-fun tp!1170412 () Bool)

(declare-fun tp!1170411 () Bool)

(assert (=> b!3860972 (= e!2386944 (and tp!1170412 tp!1170411))))

(declare-fun b!3860971 () Bool)

(declare-fun tp!1170414 () Bool)

(assert (=> b!3860971 (= e!2386944 tp!1170414)))

(assert (= (and b!3860344 ((_ is ElementMatch!11241) (regex!6336 (h!46357 rules!2768)))) b!3860969))

(assert (= (and b!3860344 ((_ is Concat!17808) (regex!6336 (h!46357 rules!2768)))) b!3860970))

(assert (= (and b!3860344 ((_ is Star!11241) (regex!6336 (h!46357 rules!2768)))) b!3860971))

(assert (= (and b!3860344 ((_ is Union!11241) (regex!6336 (h!46357 rules!2768)))) b!3860972))

(declare-fun b_lambda!112859 () Bool)

(assert (= b_lambda!112853 (or (and b!3860352 b_free!103799 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))))) (and b!3860926 b_free!103815 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 (t!313359 prefixTokens!80))))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))))) (and b!3860967 b_free!103823 (= (toChars!8623 (transformation!6336 (h!46357 (t!313360 rules!2768)))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))))) (and b!3860347 b_free!103795) (and b!3860949 b_free!103819 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 (t!313359 suffixTokens!72))))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))))) (and b!3860358 b_free!103791 (= (toChars!8623 (transformation!6336 (h!46357 rules!2768))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))))) b_lambda!112859)))

(declare-fun b_lambda!112861 () Bool)

(assert (= b_lambda!112839 (or (and b!3860358 b_free!103791 (= (toChars!8623 (transformation!6336 (h!46357 rules!2768))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))))) (and b!3860352 b_free!103799) (and b!3860926 b_free!103815 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 (t!313359 prefixTokens!80))))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))))) (and b!3860949 b_free!103819 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 (t!313359 suffixTokens!72))))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))))) (and b!3860347 b_free!103795 (= (toChars!8623 (transformation!6336 (rule!9204 (h!46356 prefixTokens!80)))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))))) (and b!3860967 b_free!103823 (= (toChars!8623 (transformation!6336 (h!46357 (t!313360 rules!2768)))) (toChars!8623 (transformation!6336 (rule!9204 (h!46356 suffixTokens!72)))))) b_lambda!112861)))

(check-sat (not d!1144385) (not b!3860725) (not b!3860669) b_and!289045 (not b!3860652) (not tb!223601) b_and!289007 (not b!3860694) (not b!3860947) b_and!289017 (not bm!282532) (not b!3860464) (not b!3860951) (not d!1144265) (not d!1144257) (not b!3860945) (not b!3860682) (not b!3860944) (not b!3860651) (not d!1144403) (not b!3860436) b_and!289041 (not b!3860953) (not b!3860965) (not d!1144401) (not b_next!104525) (not b!3860723) (not b!3860908) (not d!1144335) (not d!1144383) (not b!3860943) (not b_lambda!112851) (not b!3860601) (not d!1144323) (not b!3860600) (not b!3860421) (not b!3860742) (not b!3860598) (not b!3860596) (not b!3860610) (not b!3860777) (not b!3860673) b_and!289037 b_and!289009 (not b!3860924) (not tb!223643) (not b!3860950) (not d!1144321) (not b!3860604) (not b!3860429) (not tb!223631) (not b!3860899) (not b!3860679) (not b!3860971) (not b_next!104501) (not b!3860621) (not b_next!104503) (not d!1144343) (not b!3860972) (not b_next!104523) (not b!3860902) (not d!1144411) (not b!3860736) (not b_next!104497) (not b!3860622) b_and!289019 (not b!3860599) (not b!3860655) (not b!3860966) (not b!3860901) (not b!3860774) (not b!3860968) (not b!3860955) (not b!3860910) (not b!3860896) (not b!3860602) (not bm!282529) (not b!3860970) (not b!3860898) b_and!289039 (not b_lambda!112861) (not b!3860428) (not b!3860422) (not b!3860738) (not b!3860743) (not b!3860683) (not d!1144379) (not b!3860438) (not d!1144349) (not d!1144353) (not b_lambda!112849) (not d!1144249) (not b!3860684) (not b!3860948) b_and!289021 (not b_next!104517) (not d!1144319) (not b!3860946) (not b!3860931) b_and!289035 (not b!3860609) (not b!3860956) (not b!3860721) (not b!3860597) (not b_next!104519) (not b!3860434) (not d!1144415) (not d!1144333) (not b!3860780) tp_is_empty!19453 (not b!3860722) (not b_next!104499) (not d!1144339) (not b!3860594) (not b_next!104527) (not b!3860608) (not b_next!104493) (not b!3860740) (not b!3860378) (not b!3860779) b_and!289043 (not b_lambda!112859) b_and!289005 (not b!3860786) (not d!1144233) (not b_next!104495) (not b!3860688) (not d!1144341) (not b!3860745) (not b!3860720) (not b!3860925) (not b!3860606) (not tb!223637) (not b!3860775) (not b!3860907) (not b_next!104521) (not b!3860923) (not d!1144393) (not b!3860912) (not b!3860904) (not d!1144337) (not b!3860672) (not b!3860954) (not d!1144329) (not b!3860724) (not d!1144327) (not b!3860903) (not b!3860420) (not b!3860897) (not d!1144389) (not b!3860719))
(check-sat b_and!289017 b_and!289019 b_and!289039 b_and!289021 (not b_next!104517) (not b_next!104499) (not b_next!104495) (not b_next!104521) b_and!289045 b_and!289007 b_and!289041 (not b_next!104525) b_and!289037 b_and!289009 (not b_next!104501) (not b_next!104503) (not b_next!104523) (not b_next!104497) b_and!289035 (not b_next!104519) (not b_next!104527) (not b_next!104493) b_and!289043 b_and!289005)
