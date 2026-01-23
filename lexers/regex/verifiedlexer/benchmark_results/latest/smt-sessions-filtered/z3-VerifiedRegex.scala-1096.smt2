; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56468 () Bool)

(assert start!56468)

(declare-fun b!597206 () Bool)

(declare-fun b_free!16925 () Bool)

(declare-fun b_next!16941 () Bool)

(assert (=> b!597206 (= b_free!16925 (not b_next!16941))))

(declare-fun tp!186185 () Bool)

(declare-fun b_and!58947 () Bool)

(assert (=> b!597206 (= tp!186185 b_and!58947)))

(declare-fun b_free!16927 () Bool)

(declare-fun b_next!16943 () Bool)

(assert (=> b!597206 (= b_free!16927 (not b_next!16943))))

(declare-fun tp!186183 () Bool)

(declare-fun b_and!58949 () Bool)

(assert (=> b!597206 (= tp!186183 b_and!58949)))

(declare-fun b!597189 () Bool)

(declare-fun b_free!16929 () Bool)

(declare-fun b_next!16945 () Bool)

(assert (=> b!597189 (= b_free!16929 (not b_next!16945))))

(declare-fun tp!186189 () Bool)

(declare-fun b_and!58951 () Bool)

(assert (=> b!597189 (= tp!186189 b_and!58951)))

(declare-fun b_free!16931 () Bool)

(declare-fun b_next!16947 () Bool)

(assert (=> b!597189 (= b_free!16931 (not b_next!16947))))

(declare-fun tp!186186 () Bool)

(declare-fun b_and!58953 () Bool)

(assert (=> b!597189 (= tp!186186 b_and!58953)))

(declare-fun b!597188 () Bool)

(declare-fun e!361577 () Bool)

(declare-fun e!361569 () Bool)

(assert (=> b!597188 (= e!361577 e!361569)))

(declare-fun res!257974 () Bool)

(assert (=> b!597188 (=> (not res!257974) (not e!361569))))

(declare-datatypes ((C!3948 0))(
  ( (C!3949 (val!2200 Int)) )
))
(declare-datatypes ((List!5962 0))(
  ( (Nil!5952) (Cons!5952 (h!11353 C!3948) (t!79543 List!5962)) )
))
(declare-fun lt!253928 () List!5962)

(declare-fun lt!253927 () List!5962)

(assert (=> b!597188 (= res!257974 (= lt!253928 lt!253927))))

(declare-fun lt!253925 () List!5962)

(declare-fun suffix!1342 () List!5962)

(declare-fun ++!1667 (List!5962 List!5962) List!5962)

(assert (=> b!597188 (= lt!253928 (++!1667 lt!253925 suffix!1342))))

(declare-fun e!361567 () Bool)

(assert (=> b!597189 (= e!361567 (and tp!186189 tp!186186))))

(declare-fun e!361571 () Bool)

(declare-fun lt!253936 () Int)

(declare-datatypes ((List!5963 0))(
  ( (Nil!5953) (Cons!5953 (h!11354 (_ BitVec 16)) (t!79544 List!5963)) )
))
(declare-datatypes ((TokenValue!1203 0))(
  ( (FloatLiteralValue!2406 (text!8866 List!5963)) (TokenValueExt!1202 (__x!4304 Int)) (Broken!6015 (value!38442 List!5963)) (Object!1212) (End!1203) (Def!1203) (Underscore!1203) (Match!1203) (Else!1203) (Error!1203) (Case!1203) (If!1203) (Extends!1203) (Abstract!1203) (Class!1203) (Val!1203) (DelimiterValue!2406 (del!1263 List!5963)) (KeywordValue!1209 (value!38443 List!5963)) (CommentValue!2406 (value!38444 List!5963)) (WhitespaceValue!2406 (value!38445 List!5963)) (IndentationValue!1203 (value!38446 List!5963)) (String!7758) (Int32!1203) (Broken!6016 (value!38447 List!5963)) (Boolean!1204) (Unit!10830) (OperatorValue!1206 (op!1263 List!5963)) (IdentifierValue!2406 (value!38448 List!5963)) (IdentifierValue!2407 (value!38449 List!5963)) (WhitespaceValue!2407 (value!38450 List!5963)) (True!2406) (False!2406) (Broken!6017 (value!38451 List!5963)) (Broken!6018 (value!38452 List!5963)) (True!2407) (RightBrace!1203) (RightBracket!1203) (Colon!1203) (Null!1203) (Comma!1203) (LeftBracket!1203) (False!2407) (LeftBrace!1203) (ImaginaryLiteralValue!1203 (text!8867 List!5963)) (StringLiteralValue!3609 (value!38453 List!5963)) (EOFValue!1203 (value!38454 List!5963)) (IdentValue!1203 (value!38455 List!5963)) (DelimiterValue!2407 (value!38456 List!5963)) (DedentValue!1203 (value!38457 List!5963)) (NewLineValue!1203 (value!38458 List!5963)) (IntegerValue!3609 (value!38459 (_ BitVec 32)) (text!8868 List!5963)) (IntegerValue!3610 (value!38460 Int) (text!8869 List!5963)) (Times!1203) (Or!1203) (Equal!1203) (Minus!1203) (Broken!6019 (value!38461 List!5963)) (And!1203) (Div!1203) (LessEqual!1203) (Mod!1203) (Concat!2716) (Not!1203) (Plus!1203) (SpaceValue!1203 (value!38462 List!5963)) (IntegerValue!3611 (value!38463 Int) (text!8870 List!5963)) (StringLiteralValue!3610 (text!8871 List!5963)) (FloatLiteralValue!2407 (text!8872 List!5963)) (BytesLiteralValue!1203 (value!38464 List!5963)) (CommentValue!2407 (value!38465 List!5963)) (StringLiteralValue!3611 (value!38466 List!5963)) (ErrorTokenValue!1203 (msg!1264 List!5963)) )
))
(declare-fun lt!253934 () TokenValue!1203)

(declare-datatypes ((Regex!1513 0))(
  ( (ElementMatch!1513 (c!111041 C!3948)) (Concat!2717 (regOne!3538 Regex!1513) (regTwo!3538 Regex!1513)) (EmptyExpr!1513) (Star!1513 (reg!1842 Regex!1513)) (EmptyLang!1513) (Union!1513 (regOne!3539 Regex!1513) (regTwo!3539 Regex!1513)) )
))
(declare-datatypes ((IArray!3793 0))(
  ( (IArray!3794 (innerList!1954 List!5962)) )
))
(declare-datatypes ((Conc!1896 0))(
  ( (Node!1896 (left!4798 Conc!1896) (right!5128 Conc!1896) (csize!4022 Int) (cheight!2107 Int)) (Leaf!2993 (xs!4533 IArray!3793) (csize!4023 Int)) (Empty!1896) )
))
(declare-datatypes ((BalanceConc!3800 0))(
  ( (BalanceConc!3801 (c!111042 Conc!1896)) )
))
(declare-datatypes ((String!7759 0))(
  ( (String!7760 (value!38467 String)) )
))
(declare-datatypes ((TokenValueInjection!2174 0))(
  ( (TokenValueInjection!2175 (toValue!2070 Int) (toChars!1929 Int)) )
))
(declare-datatypes ((Rule!2158 0))(
  ( (Rule!2159 (regex!1179 Regex!1513) (tag!1441 String!7759) (isSeparator!1179 Bool) (transformation!1179 TokenValueInjection!2174)) )
))
(declare-datatypes ((Token!2094 0))(
  ( (Token!2095 (value!38468 TokenValue!1203) (rule!1949 Rule!2158) (size!4692 Int) (originalCharacters!1218 List!5962)) )
))
(declare-datatypes ((tuple2!6852 0))(
  ( (tuple2!6853 (_1!3690 Token!2094) (_2!3690 List!5962)) )
))
(declare-datatypes ((Option!1530 0))(
  ( (None!1529) (Some!1529 (v!16416 tuple2!6852)) )
))
(declare-fun lt!253942 () Option!1530)

(declare-fun b!597190 () Bool)

(declare-fun lt!253937 () List!5962)

(declare-fun lt!253930 () List!5962)

(assert (=> b!597190 (= e!361571 (and (= (size!4692 (_1!3690 (v!16416 lt!253942))) lt!253936) (= (originalCharacters!1218 (_1!3690 (v!16416 lt!253942))) lt!253937) (= (v!16416 lt!253942) (tuple2!6853 (Token!2095 lt!253934 (rule!1949 (_1!3690 (v!16416 lt!253942))) lt!253936 lt!253937) lt!253930))))))

(declare-fun b!597192 () Bool)

(declare-fun e!361563 () Bool)

(declare-fun e!361570 () Bool)

(declare-fun tp!186192 () Bool)

(assert (=> b!597192 (= e!361563 (and e!361570 tp!186192))))

(declare-fun b!597193 () Bool)

(declare-fun res!257962 () Bool)

(declare-fun e!361572 () Bool)

(assert (=> b!597193 (=> (not res!257962) (not e!361572))))

(declare-datatypes ((LexerInterface!1065 0))(
  ( (LexerInterfaceExt!1062 (__x!4305 Int)) (Lexer!1063) )
))
(declare-fun thiss!22590 () LexerInterface!1065)

(declare-datatypes ((List!5964 0))(
  ( (Nil!5954) (Cons!5954 (h!11355 Rule!2158) (t!79545 List!5964)) )
))
(declare-fun rules!3103 () List!5964)

(declare-fun rulesInvariant!1028 (LexerInterface!1065 List!5964) Bool)

(assert (=> b!597193 (= res!257962 (rulesInvariant!1028 thiss!22590 rules!3103))))

(declare-fun tp!186187 () Bool)

(declare-fun e!361560 () Bool)

(declare-fun b!597194 () Bool)

(declare-fun token!491 () Token!2094)

(declare-fun e!361566 () Bool)

(declare-fun inv!7542 (String!7759) Bool)

(declare-fun inv!7545 (TokenValueInjection!2174) Bool)

(assert (=> b!597194 (= e!361566 (and tp!186187 (inv!7542 (tag!1441 (rule!1949 token!491))) (inv!7545 (transformation!1179 (rule!1949 token!491))) e!361560))))

(declare-fun b!597195 () Bool)

(declare-fun res!257970 () Bool)

(assert (=> b!597195 (=> (not res!257970) (not e!361571))))

(declare-fun size!4693 (List!5962) Int)

(assert (=> b!597195 (= res!257970 (= (size!4692 (_1!3690 (v!16416 lt!253942))) (size!4693 (originalCharacters!1218 (_1!3690 (v!16416 lt!253942))))))))

(declare-fun b!597196 () Bool)

(declare-fun e!361564 () Bool)

(assert (=> b!597196 (= e!361564 e!361577)))

(declare-fun res!257963 () Bool)

(assert (=> b!597196 (=> (not res!257963) (not e!361577))))

(get-info :version)

(assert (=> b!597196 (= res!257963 ((_ is Some!1529) lt!253942))))

(declare-fun input!2705 () List!5962)

(declare-fun maxPrefix!763 (LexerInterface!1065 List!5964 List!5962) Option!1530)

(assert (=> b!597196 (= lt!253942 (maxPrefix!763 thiss!22590 rules!3103 input!2705))))

(declare-fun e!361561 () Bool)

(declare-fun lt!253924 () Int)

(declare-fun b!597197 () Bool)

(assert (=> b!597197 (= e!361561 (and (= (size!4692 token!491) lt!253924) (= (originalCharacters!1218 token!491) lt!253925)))))

(declare-fun b!597198 () Bool)

(declare-fun e!361568 () Bool)

(assert (=> b!597198 (= e!361569 (not e!361568))))

(declare-fun res!257972 () Bool)

(assert (=> b!597198 (=> res!257972 e!361568)))

(declare-fun isPrefix!807 (List!5962 List!5962) Bool)

(assert (=> b!597198 (= res!257972 (not (isPrefix!807 input!2705 lt!253928)))))

(assert (=> b!597198 (isPrefix!807 lt!253925 lt!253928)))

(declare-datatypes ((Unit!10831 0))(
  ( (Unit!10832) )
))
(declare-fun lt!253929 () Unit!10831)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!652 (List!5962 List!5962) Unit!10831)

(assert (=> b!597198 (= lt!253929 (lemmaConcatTwoListThenFirstIsPrefix!652 lt!253925 suffix!1342))))

(assert (=> b!597198 (isPrefix!807 input!2705 lt!253927)))

(declare-fun lt!253943 () Unit!10831)

(assert (=> b!597198 (= lt!253943 (lemmaConcatTwoListThenFirstIsPrefix!652 input!2705 suffix!1342))))

(assert (=> b!597198 e!361571))

(declare-fun res!257966 () Bool)

(assert (=> b!597198 (=> (not res!257966) (not e!361571))))

(assert (=> b!597198 (= res!257966 (= (value!38468 (_1!3690 (v!16416 lt!253942))) lt!253934))))

(declare-fun apply!1432 (TokenValueInjection!2174 BalanceConc!3800) TokenValue!1203)

(declare-fun seqFromList!1355 (List!5962) BalanceConc!3800)

(assert (=> b!597198 (= lt!253934 (apply!1432 (transformation!1179 (rule!1949 (_1!3690 (v!16416 lt!253942)))) (seqFromList!1355 lt!253937)))))

(declare-fun lt!253948 () Unit!10831)

(declare-fun lemmaInv!287 (TokenValueInjection!2174) Unit!10831)

(assert (=> b!597198 (= lt!253948 (lemmaInv!287 (transformation!1179 (rule!1949 token!491))))))

(declare-fun lt!253940 () Unit!10831)

(assert (=> b!597198 (= lt!253940 (lemmaInv!287 (transformation!1179 (rule!1949 (_1!3690 (v!16416 lt!253942))))))))

(declare-fun ruleValid!377 (LexerInterface!1065 Rule!2158) Bool)

(assert (=> b!597198 (ruleValid!377 thiss!22590 (rule!1949 token!491))))

(declare-fun lt!253922 () Unit!10831)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!224 (LexerInterface!1065 Rule!2158 List!5964) Unit!10831)

(assert (=> b!597198 (= lt!253922 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!224 thiss!22590 (rule!1949 token!491) rules!3103))))

(assert (=> b!597198 (ruleValid!377 thiss!22590 (rule!1949 (_1!3690 (v!16416 lt!253942))))))

(declare-fun lt!253932 () Unit!10831)

(assert (=> b!597198 (= lt!253932 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!224 thiss!22590 (rule!1949 (_1!3690 (v!16416 lt!253942))) rules!3103))))

(assert (=> b!597198 (isPrefix!807 input!2705 input!2705)))

(declare-fun lt!253941 () Unit!10831)

(declare-fun lemmaIsPrefixRefl!543 (List!5962 List!5962) Unit!10831)

(assert (=> b!597198 (= lt!253941 (lemmaIsPrefixRefl!543 input!2705 input!2705))))

(assert (=> b!597198 (= (_2!3690 (v!16416 lt!253942)) lt!253930)))

(declare-fun lt!253946 () Unit!10831)

(declare-fun lemmaSamePrefixThenSameSuffix!520 (List!5962 List!5962 List!5962 List!5962 List!5962) Unit!10831)

(assert (=> b!597198 (= lt!253946 (lemmaSamePrefixThenSameSuffix!520 lt!253937 (_2!3690 (v!16416 lt!253942)) lt!253937 lt!253930 input!2705))))

(declare-fun getSuffix!324 (List!5962 List!5962) List!5962)

(assert (=> b!597198 (= lt!253930 (getSuffix!324 input!2705 lt!253937))))

(assert (=> b!597198 (isPrefix!807 lt!253937 (++!1667 lt!253937 (_2!3690 (v!16416 lt!253942))))))

(declare-fun lt!253933 () Unit!10831)

(assert (=> b!597198 (= lt!253933 (lemmaConcatTwoListThenFirstIsPrefix!652 lt!253937 (_2!3690 (v!16416 lt!253942))))))

(declare-fun lt!253926 () Unit!10831)

(declare-fun lemmaCharactersSize!238 (Token!2094) Unit!10831)

(assert (=> b!597198 (= lt!253926 (lemmaCharactersSize!238 token!491))))

(declare-fun lt!253923 () Unit!10831)

(assert (=> b!597198 (= lt!253923 (lemmaCharactersSize!238 (_1!3690 (v!16416 lt!253942))))))

(declare-fun lt!253947 () Unit!10831)

(declare-fun e!361559 () Unit!10831)

(assert (=> b!597198 (= lt!253947 e!361559)))

(declare-fun c!111040 () Bool)

(assert (=> b!597198 (= c!111040 (> lt!253936 lt!253924))))

(assert (=> b!597198 (= lt!253924 (size!4693 lt!253925))))

(assert (=> b!597198 (= lt!253936 (size!4693 lt!253937))))

(declare-fun list!2494 (BalanceConc!3800) List!5962)

(declare-fun charsOf!808 (Token!2094) BalanceConc!3800)

(assert (=> b!597198 (= lt!253937 (list!2494 (charsOf!808 (_1!3690 (v!16416 lt!253942)))))))

(assert (=> b!597198 (= lt!253942 (Some!1529 (v!16416 lt!253942)))))

(declare-fun lt!253939 () Unit!10831)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!252 (List!5962 List!5962 List!5962 List!5962) Unit!10831)

(assert (=> b!597198 (= lt!253939 (lemmaConcatSameAndSameSizesThenSameLists!252 lt!253925 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!597199 () Bool)

(declare-fun lt!253935 () TokenValue!1203)

(declare-fun inv!7546 (Token!2094) Bool)

(assert (=> b!597199 (= e!361568 (inv!7546 (Token!2095 lt!253935 (rule!1949 token!491) lt!253924 lt!253925)))))

(assert (=> b!597199 e!361561))

(declare-fun res!257968 () Bool)

(assert (=> b!597199 (=> (not res!257968) (not e!361561))))

(assert (=> b!597199 (= res!257968 (= (value!38468 token!491) lt!253935))))

(assert (=> b!597199 (= lt!253935 (apply!1432 (transformation!1179 (rule!1949 token!491)) (seqFromList!1355 lt!253925)))))

(declare-fun lt!253944 () List!5962)

(assert (=> b!597199 (= suffix!1342 lt!253944)))

(declare-fun lt!253945 () Unit!10831)

(assert (=> b!597199 (= lt!253945 (lemmaSamePrefixThenSameSuffix!520 lt!253925 suffix!1342 lt!253925 lt!253944 lt!253927))))

(assert (=> b!597199 (= lt!253944 (getSuffix!324 lt!253927 lt!253925))))

(declare-fun b!597200 () Bool)

(declare-fun e!361575 () Bool)

(assert (=> b!597200 (= e!361572 e!361575)))

(declare-fun res!257964 () Bool)

(assert (=> b!597200 (=> (not res!257964) (not e!361575))))

(assert (=> b!597200 (= res!257964 (= lt!253925 input!2705))))

(assert (=> b!597200 (= lt!253925 (list!2494 (charsOf!808 token!491)))))

(declare-fun res!257967 () Bool)

(assert (=> start!56468 (=> (not res!257967) (not e!361572))))

(assert (=> start!56468 (= res!257967 ((_ is Lexer!1063) thiss!22590))))

(assert (=> start!56468 e!361572))

(declare-fun e!361562 () Bool)

(assert (=> start!56468 e!361562))

(assert (=> start!56468 e!361563))

(declare-fun e!361574 () Bool)

(assert (=> start!56468 (and (inv!7546 token!491) e!361574)))

(assert (=> start!56468 true))

(declare-fun e!361579 () Bool)

(assert (=> start!56468 e!361579))

(declare-fun b!597191 () Bool)

(declare-fun Unit!10833 () Unit!10831)

(assert (=> b!597191 (= e!361559 Unit!10833)))

(assert (=> b!597191 false))

(declare-fun b!597201 () Bool)

(declare-fun e!361578 () Bool)

(assert (=> b!597201 (= e!361578 e!361564)))

(declare-fun res!257971 () Bool)

(assert (=> b!597201 (=> (not res!257971) (not e!361564))))

(declare-fun lt!253931 () tuple2!6852)

(assert (=> b!597201 (= res!257971 (and (= (_1!3690 lt!253931) token!491) (= (_2!3690 lt!253931) suffix!1342)))))

(declare-fun lt!253938 () Option!1530)

(declare-fun get!2283 (Option!1530) tuple2!6852)

(assert (=> b!597201 (= lt!253931 (get!2283 lt!253938))))

(declare-fun b!597202 () Bool)

(declare-fun res!257965 () Bool)

(assert (=> b!597202 (=> (not res!257965) (not e!361572))))

(declare-fun isEmpty!4297 (List!5962) Bool)

(assert (=> b!597202 (= res!257965 (not (isEmpty!4297 input!2705)))))

(declare-fun tp!186190 () Bool)

(declare-fun b!597203 () Bool)

(declare-fun inv!21 (TokenValue!1203) Bool)

(assert (=> b!597203 (= e!361574 (and (inv!21 (value!38468 token!491)) e!361566 tp!186190))))

(declare-fun b!597204 () Bool)

(declare-fun tp_is_empty!3381 () Bool)

(declare-fun tp!186191 () Bool)

(assert (=> b!597204 (= e!361562 (and tp_is_empty!3381 tp!186191))))

(declare-fun b!597205 () Bool)

(declare-fun res!257973 () Bool)

(assert (=> b!597205 (=> (not res!257973) (not e!361561))))

(assert (=> b!597205 (= res!257973 (= (size!4692 token!491) (size!4693 (originalCharacters!1218 token!491))))))

(assert (=> b!597206 (= e!361560 (and tp!186185 tp!186183))))

(declare-fun b!597207 () Bool)

(declare-fun tp!186188 () Bool)

(assert (=> b!597207 (= e!361579 (and tp_is_empty!3381 tp!186188))))

(declare-fun b!597208 () Bool)

(declare-fun Unit!10834 () Unit!10831)

(assert (=> b!597208 (= e!361559 Unit!10834)))

(declare-fun b!597209 () Bool)

(assert (=> b!597209 (= e!361575 e!361578)))

(declare-fun res!257969 () Bool)

(assert (=> b!597209 (=> (not res!257969) (not e!361578))))

(declare-fun isDefined!1341 (Option!1530) Bool)

(assert (=> b!597209 (= res!257969 (isDefined!1341 lt!253938))))

(assert (=> b!597209 (= lt!253938 (maxPrefix!763 thiss!22590 rules!3103 lt!253927))))

(assert (=> b!597209 (= lt!253927 (++!1667 input!2705 suffix!1342))))

(declare-fun b!597210 () Bool)

(declare-fun res!257961 () Bool)

(assert (=> b!597210 (=> (not res!257961) (not e!361572))))

(declare-fun isEmpty!4298 (List!5964) Bool)

(assert (=> b!597210 (= res!257961 (not (isEmpty!4298 rules!3103)))))

(declare-fun b!597211 () Bool)

(declare-fun tp!186184 () Bool)

(assert (=> b!597211 (= e!361570 (and tp!186184 (inv!7542 (tag!1441 (h!11355 rules!3103))) (inv!7545 (transformation!1179 (h!11355 rules!3103))) e!361567))))

(assert (= (and start!56468 res!257967) b!597210))

(assert (= (and b!597210 res!257961) b!597193))

(assert (= (and b!597193 res!257962) b!597202))

(assert (= (and b!597202 res!257965) b!597200))

(assert (= (and b!597200 res!257964) b!597209))

(assert (= (and b!597209 res!257969) b!597201))

(assert (= (and b!597201 res!257971) b!597196))

(assert (= (and b!597196 res!257963) b!597188))

(assert (= (and b!597188 res!257974) b!597198))

(assert (= (and b!597198 c!111040) b!597191))

(assert (= (and b!597198 (not c!111040)) b!597208))

(assert (= (and b!597198 res!257966) b!597195))

(assert (= (and b!597195 res!257970) b!597190))

(assert (= (and b!597198 (not res!257972)) b!597199))

(assert (= (and b!597199 res!257968) b!597205))

(assert (= (and b!597205 res!257973) b!597197))

(assert (= (and start!56468 ((_ is Cons!5952) suffix!1342)) b!597204))

(assert (= b!597211 b!597189))

(assert (= b!597192 b!597211))

(assert (= (and start!56468 ((_ is Cons!5954) rules!3103)) b!597192))

(assert (= b!597194 b!597206))

(assert (= b!597203 b!597194))

(assert (= start!56468 b!597203))

(assert (= (and start!56468 ((_ is Cons!5952) input!2705)) b!597207))

(declare-fun m!860299 () Bool)

(assert (=> b!597205 m!860299))

(declare-fun m!860301 () Bool)

(assert (=> b!597200 m!860301))

(assert (=> b!597200 m!860301))

(declare-fun m!860303 () Bool)

(assert (=> b!597200 m!860303))

(declare-fun m!860305 () Bool)

(assert (=> b!597198 m!860305))

(declare-fun m!860307 () Bool)

(assert (=> b!597198 m!860307))

(declare-fun m!860309 () Bool)

(assert (=> b!597198 m!860309))

(declare-fun m!860311 () Bool)

(assert (=> b!597198 m!860311))

(declare-fun m!860313 () Bool)

(assert (=> b!597198 m!860313))

(declare-fun m!860315 () Bool)

(assert (=> b!597198 m!860315))

(declare-fun m!860317 () Bool)

(assert (=> b!597198 m!860317))

(declare-fun m!860319 () Bool)

(assert (=> b!597198 m!860319))

(declare-fun m!860321 () Bool)

(assert (=> b!597198 m!860321))

(declare-fun m!860323 () Bool)

(assert (=> b!597198 m!860323))

(declare-fun m!860325 () Bool)

(assert (=> b!597198 m!860325))

(declare-fun m!860327 () Bool)

(assert (=> b!597198 m!860327))

(declare-fun m!860329 () Bool)

(assert (=> b!597198 m!860329))

(declare-fun m!860331 () Bool)

(assert (=> b!597198 m!860331))

(declare-fun m!860333 () Bool)

(assert (=> b!597198 m!860333))

(declare-fun m!860335 () Bool)

(assert (=> b!597198 m!860335))

(assert (=> b!597198 m!860323))

(declare-fun m!860337 () Bool)

(assert (=> b!597198 m!860337))

(declare-fun m!860339 () Bool)

(assert (=> b!597198 m!860339))

(declare-fun m!860341 () Bool)

(assert (=> b!597198 m!860341))

(declare-fun m!860343 () Bool)

(assert (=> b!597198 m!860343))

(declare-fun m!860345 () Bool)

(assert (=> b!597198 m!860345))

(declare-fun m!860347 () Bool)

(assert (=> b!597198 m!860347))

(assert (=> b!597198 m!860345))

(declare-fun m!860349 () Bool)

(assert (=> b!597198 m!860349))

(declare-fun m!860351 () Bool)

(assert (=> b!597198 m!860351))

(assert (=> b!597198 m!860341))

(declare-fun m!860353 () Bool)

(assert (=> b!597198 m!860353))

(declare-fun m!860355 () Bool)

(assert (=> b!597198 m!860355))

(declare-fun m!860357 () Bool)

(assert (=> b!597198 m!860357))

(declare-fun m!860359 () Bool)

(assert (=> b!597188 m!860359))

(declare-fun m!860361 () Bool)

(assert (=> start!56468 m!860361))

(declare-fun m!860363 () Bool)

(assert (=> b!597195 m!860363))

(declare-fun m!860365 () Bool)

(assert (=> b!597199 m!860365))

(declare-fun m!860367 () Bool)

(assert (=> b!597199 m!860367))

(declare-fun m!860369 () Bool)

(assert (=> b!597199 m!860369))

(assert (=> b!597199 m!860369))

(declare-fun m!860371 () Bool)

(assert (=> b!597199 m!860371))

(declare-fun m!860373 () Bool)

(assert (=> b!597199 m!860373))

(declare-fun m!860375 () Bool)

(assert (=> b!597201 m!860375))

(declare-fun m!860377 () Bool)

(assert (=> b!597196 m!860377))

(declare-fun m!860379 () Bool)

(assert (=> b!597193 m!860379))

(declare-fun m!860381 () Bool)

(assert (=> b!597211 m!860381))

(declare-fun m!860383 () Bool)

(assert (=> b!597211 m!860383))

(declare-fun m!860385 () Bool)

(assert (=> b!597194 m!860385))

(declare-fun m!860387 () Bool)

(assert (=> b!597194 m!860387))

(declare-fun m!860389 () Bool)

(assert (=> b!597209 m!860389))

(declare-fun m!860391 () Bool)

(assert (=> b!597209 m!860391))

(declare-fun m!860393 () Bool)

(assert (=> b!597209 m!860393))

(declare-fun m!860395 () Bool)

(assert (=> b!597210 m!860395))

(declare-fun m!860397 () Bool)

(assert (=> b!597202 m!860397))

(declare-fun m!860399 () Bool)

(assert (=> b!597203 m!860399))

(check-sat (not b!597210) (not b!597209) (not b!597192) (not b!597195) (not b_next!16945) (not b!597202) b_and!58951 (not b!597198) (not b!597211) tp_is_empty!3381 (not b!597204) b_and!58947 (not b!597203) (not b_next!16947) (not b_next!16941) (not b!597188) (not b!597193) b_and!58953 (not b!597205) (not b!597201) (not b!597196) (not start!56468) (not b!597200) b_and!58949 (not b!597207) (not b!597199) (not b_next!16943) (not b!597194))
(check-sat b_and!58953 (not b_next!16945) b_and!58951 b_and!58949 (not b_next!16943) b_and!58947 (not b_next!16947) (not b_next!16941))
