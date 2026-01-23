; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!365032 () Bool)

(assert start!365032)

(declare-fun b!3898210 () Bool)

(declare-fun b_free!105545 () Bool)

(declare-fun b_next!106249 () Bool)

(assert (=> b!3898210 (= b_free!105545 (not b_next!106249))))

(declare-fun tp!1186224 () Bool)

(declare-fun b_and!294359 () Bool)

(assert (=> b!3898210 (= tp!1186224 b_and!294359)))

(declare-fun b_free!105547 () Bool)

(declare-fun b_next!106251 () Bool)

(assert (=> b!3898210 (= b_free!105547 (not b_next!106251))))

(declare-fun tp!1186209 () Bool)

(declare-fun b_and!294361 () Bool)

(assert (=> b!3898210 (= tp!1186209 b_and!294361)))

(declare-fun b!3898228 () Bool)

(declare-fun b_free!105549 () Bool)

(declare-fun b_next!106253 () Bool)

(assert (=> b!3898228 (= b_free!105549 (not b_next!106253))))

(declare-fun tp!1186222 () Bool)

(declare-fun b_and!294363 () Bool)

(assert (=> b!3898228 (= tp!1186222 b_and!294363)))

(declare-fun b_free!105551 () Bool)

(declare-fun b_next!106255 () Bool)

(assert (=> b!3898228 (= b_free!105551 (not b_next!106255))))

(declare-fun tp!1186216 () Bool)

(declare-fun b_and!294365 () Bool)

(assert (=> b!3898228 (= tp!1186216 b_and!294365)))

(declare-fun b!3898224 () Bool)

(declare-fun b_free!105553 () Bool)

(declare-fun b_next!106257 () Bool)

(assert (=> b!3898224 (= b_free!105553 (not b_next!106257))))

(declare-fun tp!1186213 () Bool)

(declare-fun b_and!294367 () Bool)

(assert (=> b!3898224 (= tp!1186213 b_and!294367)))

(declare-fun b_free!105555 () Bool)

(declare-fun b_next!106259 () Bool)

(assert (=> b!3898224 (= b_free!105555 (not b_next!106259))))

(declare-fun tp!1186230 () Bool)

(declare-fun b_and!294369 () Bool)

(assert (=> b!3898224 (= tp!1186230 b_and!294369)))

(declare-fun b!3898205 () Bool)

(declare-fun b_free!105557 () Bool)

(declare-fun b_next!106261 () Bool)

(assert (=> b!3898205 (= b_free!105557 (not b_next!106261))))

(declare-fun tp!1186220 () Bool)

(declare-fun b_and!294371 () Bool)

(assert (=> b!3898205 (= tp!1186220 b_and!294371)))

(declare-fun b_free!105559 () Bool)

(declare-fun b_next!106263 () Bool)

(assert (=> b!3898205 (= b_free!105559 (not b_next!106263))))

(declare-fun tp!1186225 () Bool)

(declare-fun b_and!294373 () Bool)

(assert (=> b!3898205 (= tp!1186225 b_and!294373)))

(declare-fun tp!1186218 () Bool)

(declare-fun b!3898198 () Bool)

(declare-fun e!2410254 () Bool)

(declare-datatypes ((List!41480 0))(
  ( (Nil!41356) (Cons!41356 (h!46776 (_ BitVec 16)) (t!319147 List!41480)) )
))
(declare-datatypes ((TokenValue!6662 0))(
  ( (FloatLiteralValue!13324 (text!47079 List!41480)) (TokenValueExt!6661 (__x!25541 Int)) (Broken!33310 (value!203920 List!41480)) (Object!6785) (End!6662) (Def!6662) (Underscore!6662) (Match!6662) (Else!6662) (Error!6662) (Case!6662) (If!6662) (Extends!6662) (Abstract!6662) (Class!6662) (Val!6662) (DelimiterValue!13324 (del!6722 List!41480)) (KeywordValue!6668 (value!203921 List!41480)) (CommentValue!13324 (value!203922 List!41480)) (WhitespaceValue!13324 (value!203923 List!41480)) (IndentationValue!6662 (value!203924 List!41480)) (String!47027) (Int32!6662) (Broken!33311 (value!203925 List!41480)) (Boolean!6663) (Unit!59475) (OperatorValue!6665 (op!6722 List!41480)) (IdentifierValue!13324 (value!203926 List!41480)) (IdentifierValue!13325 (value!203927 List!41480)) (WhitespaceValue!13325 (value!203928 List!41480)) (True!13324) (False!13324) (Broken!33312 (value!203929 List!41480)) (Broken!33313 (value!203930 List!41480)) (True!13325) (RightBrace!6662) (RightBracket!6662) (Colon!6662) (Null!6662) (Comma!6662) (LeftBracket!6662) (False!13325) (LeftBrace!6662) (ImaginaryLiteralValue!6662 (text!47080 List!41480)) (StringLiteralValue!19986 (value!203931 List!41480)) (EOFValue!6662 (value!203932 List!41480)) (IdentValue!6662 (value!203933 List!41480)) (DelimiterValue!13325 (value!203934 List!41480)) (DedentValue!6662 (value!203935 List!41480)) (NewLineValue!6662 (value!203936 List!41480)) (IntegerValue!19986 (value!203937 (_ BitVec 32)) (text!47081 List!41480)) (IntegerValue!19987 (value!203938 Int) (text!47082 List!41480)) (Times!6662) (Or!6662) (Equal!6662) (Minus!6662) (Broken!33314 (value!203939 List!41480)) (And!6662) (Div!6662) (LessEqual!6662) (Mod!6662) (Concat!17999) (Not!6662) (Plus!6662) (SpaceValue!6662 (value!203940 List!41480)) (IntegerValue!19988 (value!203941 Int) (text!47083 List!41480)) (StringLiteralValue!19987 (text!47084 List!41480)) (FloatLiteralValue!13325 (text!47085 List!41480)) (BytesLiteralValue!6662 (value!203942 List!41480)) (CommentValue!13325 (value!203943 List!41480)) (StringLiteralValue!19988 (value!203944 List!41480)) (ErrorTokenValue!6662 (msg!6723 List!41480)) )
))
(declare-datatypes ((C!22860 0))(
  ( (C!22861 (val!13524 Int)) )
))
(declare-datatypes ((Regex!11337 0))(
  ( (ElementMatch!11337 (c!677654 C!22860)) (Concat!18000 (regOne!23186 Regex!11337) (regTwo!23186 Regex!11337)) (EmptyExpr!11337) (Star!11337 (reg!11666 Regex!11337)) (EmptyLang!11337) (Union!11337 (regOne!23187 Regex!11337) (regTwo!23187 Regex!11337)) )
))
(declare-datatypes ((String!47028 0))(
  ( (String!47029 (value!203945 String)) )
))
(declare-datatypes ((List!41481 0))(
  ( (Nil!41357) (Cons!41357 (h!46777 C!22860) (t!319148 List!41481)) )
))
(declare-datatypes ((IArray!25291 0))(
  ( (IArray!25292 (innerList!12703 List!41481)) )
))
(declare-datatypes ((Conc!12643 0))(
  ( (Node!12643 (left!31693 Conc!12643) (right!32023 Conc!12643) (csize!25516 Int) (cheight!12854 Int)) (Leaf!19566 (xs!15949 IArray!25291) (csize!25517 Int)) (Empty!12643) )
))
(declare-datatypes ((BalanceConc!24880 0))(
  ( (BalanceConc!24881 (c!677655 Conc!12643)) )
))
(declare-datatypes ((TokenValueInjection!12752 0))(
  ( (TokenValueInjection!12753 (toValue!8868 Int) (toChars!8727 Int)) )
))
(declare-datatypes ((Rule!12664 0))(
  ( (Rule!12665 (regex!6432 Regex!11337) (tag!7292 String!47028) (isSeparator!6432 Bool) (transformation!6432 TokenValueInjection!12752)) )
))
(declare-datatypes ((Token!12002 0))(
  ( (Token!12003 (value!203946 TokenValue!6662) (rule!9336 Rule!12664) (size!31049 Int) (originalCharacters!7032 List!41481)) )
))
(declare-datatypes ((List!41482 0))(
  ( (Nil!41358) (Cons!41358 (h!46778 Token!12002) (t!319149 List!41482)) )
))
(declare-fun suffixTokens!72 () List!41482)

(declare-fun e!2410238 () Bool)

(declare-fun inv!55520 (Token!12002) Bool)

(assert (=> b!3898198 (= e!2410254 (and (inv!55520 (h!46778 suffixTokens!72)) e!2410238 tp!1186218))))

(declare-fun b!3898199 () Bool)

(declare-fun e!2410265 () Bool)

(declare-fun e!2410256 () Bool)

(assert (=> b!3898199 (= e!2410265 e!2410256)))

(declare-fun res!1576995 () Bool)

(assert (=> b!3898199 (=> (not res!1576995) (not e!2410256))))

(declare-datatypes ((tuple2!40594 0))(
  ( (tuple2!40595 (_1!23431 Token!12002) (_2!23431 List!41481)) )
))
(declare-datatypes ((Option!8852 0))(
  ( (None!8851) (Some!8851 (v!39163 tuple2!40594)) )
))
(declare-fun lt!1357935 () Option!8852)

(get-info :version)

(assert (=> b!3898199 (= res!1576995 ((_ is Some!8851) lt!1357935))))

(declare-datatypes ((List!41483 0))(
  ( (Nil!41359) (Cons!41359 (h!46779 Rule!12664) (t!319150 List!41483)) )
))
(declare-fun rules!2768 () List!41483)

(declare-fun lt!1357946 () List!41481)

(declare-datatypes ((LexerInterface!6021 0))(
  ( (LexerInterfaceExt!6018 (__x!25542 Int)) (Lexer!6019) )
))
(declare-fun thiss!20629 () LexerInterface!6021)

(declare-fun maxPrefix!3325 (LexerInterface!6021 List!41483 List!41481) Option!8852)

(assert (=> b!3898199 (= lt!1357935 (maxPrefix!3325 thiss!20629 rules!2768 lt!1357946))))

(declare-fun b!3898200 () Bool)

(declare-fun res!1577005 () Bool)

(declare-fun e!2410263 () Bool)

(assert (=> b!3898200 (=> (not res!1577005) (not e!2410263))))

(declare-fun prefix!426 () List!41481)

(declare-fun isEmpty!24580 (List!41481) Bool)

(assert (=> b!3898200 (= res!1577005 (not (isEmpty!24580 prefix!426)))))

(declare-fun b!3898201 () Bool)

(declare-fun e!2410257 () Bool)

(assert (=> b!3898201 (= e!2410256 (not e!2410257))))

(declare-fun res!1576997 () Bool)

(assert (=> b!3898201 (=> res!1576997 e!2410257)))

(declare-fun lt!1357950 () List!41481)

(assert (=> b!3898201 (= res!1576997 (not (= lt!1357950 lt!1357946)))))

(declare-datatypes ((tuple2!40596 0))(
  ( (tuple2!40597 (_1!23432 List!41482) (_2!23432 List!41481)) )
))
(declare-fun lt!1357936 () tuple2!40596)

(declare-fun lexList!1789 (LexerInterface!6021 List!41483 List!41481) tuple2!40596)

(assert (=> b!3898201 (= lt!1357936 (lexList!1789 thiss!20629 rules!2768 (_2!23431 (v!39163 lt!1357935))))))

(declare-fun lt!1357943 () TokenValue!6662)

(declare-fun lt!1357945 () Int)

(declare-fun lt!1357938 () List!41481)

(declare-fun lt!1357942 () List!41481)

(assert (=> b!3898201 (and (= (size!31049 (_1!23431 (v!39163 lt!1357935))) lt!1357945) (= (originalCharacters!7032 (_1!23431 (v!39163 lt!1357935))) lt!1357938) (= (tuple2!40595 (_1!23431 (v!39163 lt!1357935)) (_2!23431 (v!39163 lt!1357935))) (tuple2!40595 (Token!12003 lt!1357943 (rule!9336 (_1!23431 (v!39163 lt!1357935))) lt!1357945 lt!1357938) lt!1357942)))))

(declare-fun size!31050 (List!41481) Int)

(assert (=> b!3898201 (= lt!1357945 (size!31050 lt!1357938))))

(declare-fun e!2410242 () Bool)

(assert (=> b!3898201 e!2410242))

(declare-fun res!1577003 () Bool)

(assert (=> b!3898201 (=> (not res!1577003) (not e!2410242))))

(assert (=> b!3898201 (= res!1577003 (= (value!203946 (_1!23431 (v!39163 lt!1357935))) lt!1357943))))

(declare-fun apply!9671 (TokenValueInjection!12752 BalanceConc!24880) TokenValue!6662)

(declare-fun seqFromList!4699 (List!41481) BalanceConc!24880)

(assert (=> b!3898201 (= lt!1357943 (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))) (seqFromList!4699 lt!1357938)))))

(assert (=> b!3898201 (= (_2!23431 (v!39163 lt!1357935)) lt!1357942)))

(declare-datatypes ((Unit!59476 0))(
  ( (Unit!59477) )
))
(declare-fun lt!1357941 () Unit!59476)

(declare-fun lemmaSamePrefixThenSameSuffix!1748 (List!41481 List!41481 List!41481 List!41481 List!41481) Unit!59476)

(assert (=> b!3898201 (= lt!1357941 (lemmaSamePrefixThenSameSuffix!1748 lt!1357938 (_2!23431 (v!39163 lt!1357935)) lt!1357938 lt!1357942 lt!1357946))))

(declare-fun getSuffix!1982 (List!41481 List!41481) List!41481)

(assert (=> b!3898201 (= lt!1357942 (getSuffix!1982 lt!1357946 lt!1357938))))

(declare-fun isPrefix!3527 (List!41481 List!41481) Bool)

(assert (=> b!3898201 (isPrefix!3527 lt!1357938 lt!1357950)))

(declare-fun ++!10621 (List!41481 List!41481) List!41481)

(assert (=> b!3898201 (= lt!1357950 (++!10621 lt!1357938 (_2!23431 (v!39163 lt!1357935))))))

(declare-fun lt!1357955 () Unit!59476)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2390 (List!41481 List!41481) Unit!59476)

(assert (=> b!3898201 (= lt!1357955 (lemmaConcatTwoListThenFirstIsPrefix!2390 lt!1357938 (_2!23431 (v!39163 lt!1357935))))))

(declare-fun list!15370 (BalanceConc!24880) List!41481)

(declare-fun charsOf!4256 (Token!12002) BalanceConc!24880)

(assert (=> b!3898201 (= lt!1357938 (list!15370 (charsOf!4256 (_1!23431 (v!39163 lt!1357935)))))))

(declare-fun ruleValid!2380 (LexerInterface!6021 Rule!12664) Bool)

(assert (=> b!3898201 (ruleValid!2380 thiss!20629 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))

(declare-fun lt!1357952 () Unit!59476)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1460 (LexerInterface!6021 Rule!12664 List!41483) Unit!59476)

(assert (=> b!3898201 (= lt!1357952 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1460 thiss!20629 (rule!9336 (_1!23431 (v!39163 lt!1357935))) rules!2768))))

(declare-fun lt!1357940 () Unit!59476)

(declare-fun lemmaCharactersSize!1089 (Token!12002) Unit!59476)

(assert (=> b!3898201 (= lt!1357940 (lemmaCharactersSize!1089 (_1!23431 (v!39163 lt!1357935))))))

(declare-fun tp!1186214 () Bool)

(declare-fun e!2410237 () Bool)

(declare-fun err!4377 () Option!8852)

(declare-fun e!2410252 () Bool)

(declare-fun b!3898202 () Bool)

(declare-fun inv!55517 (String!47028) Bool)

(declare-fun inv!55521 (TokenValueInjection!12752) Bool)

(assert (=> b!3898202 (= e!2410252 (and tp!1186214 (inv!55517 (tag!7292 (rule!9336 (_1!23431 (v!39163 err!4377))))) (inv!55521 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) e!2410237))))

(declare-fun b!3898203 () Bool)

(declare-fun e!2410272 () Option!8852)

(declare-fun e!2410267 () Option!8852)

(assert (=> b!3898203 (= e!2410272 e!2410267)))

(declare-fun c!677652 () Bool)

(assert (=> b!3898203 (= c!677652 ((_ is Cons!41359) rules!2768))))

(declare-fun b!3898204 () Bool)

(assert (=> b!3898204 (= e!2410242 (= (size!31049 (_1!23431 (v!39163 lt!1357935))) (size!31050 (originalCharacters!7032 (_1!23431 (v!39163 lt!1357935))))))))

(assert (=> b!3898205 (= e!2410237 (and tp!1186220 tp!1186225))))

(declare-fun tp!1186217 () Bool)

(declare-fun e!2410259 () Bool)

(declare-fun e!2410241 () Bool)

(declare-fun b!3898206 () Bool)

(assert (=> b!3898206 (= e!2410259 (and tp!1186217 (inv!55517 (tag!7292 (rule!9336 (h!46778 suffixTokens!72)))) (inv!55521 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) e!2410241))))

(declare-fun e!2410270 () Bool)

(declare-fun tp!1186226 () Bool)

(declare-fun e!2410240 () Bool)

(declare-fun b!3898207 () Bool)

(assert (=> b!3898207 (= e!2410270 (and tp!1186226 (inv!55517 (tag!7292 (h!46779 rules!2768))) (inv!55521 (transformation!6432 (h!46779 rules!2768))) e!2410240))))

(declare-fun b!3898208 () Bool)

(assert (=> b!3898208 (= e!2410263 e!2410265)))

(declare-fun res!1577002 () Bool)

(assert (=> b!3898208 (=> (not res!1577002) (not e!2410265))))

(declare-fun suffixResult!91 () List!41481)

(declare-fun lt!1357944 () List!41482)

(declare-fun lt!1357937 () tuple2!40596)

(assert (=> b!3898208 (= res!1577002 (= lt!1357937 (tuple2!40597 lt!1357944 suffixResult!91)))))

(assert (=> b!3898208 (= lt!1357937 (lexList!1789 thiss!20629 rules!2768 lt!1357946))))

(declare-fun prefixTokens!80 () List!41482)

(declare-fun ++!10622 (List!41482 List!41482) List!41482)

(assert (=> b!3898208 (= lt!1357944 (++!10622 prefixTokens!80 suffixTokens!72))))

(declare-fun suffix!1176 () List!41481)

(assert (=> b!3898208 (= lt!1357946 (++!10621 prefix!426 suffix!1176))))

(declare-fun e!2410271 () Bool)

(declare-fun b!3898209 () Bool)

(declare-fun tp!1186210 () Bool)

(declare-fun e!2410247 () Bool)

(assert (=> b!3898209 (= e!2410247 (and (inv!55520 (h!46778 prefixTokens!80)) e!2410271 tp!1186210))))

(assert (=> b!3898210 (= e!2410241 (and tp!1186224 tp!1186209))))

(declare-fun b!3898211 () Bool)

(declare-fun e!2410269 () Bool)

(assert (=> b!3898211 (= e!2410257 e!2410269)))

(declare-fun res!1576993 () Bool)

(assert (=> b!3898211 (=> res!1576993 e!2410269)))

(declare-fun lt!1357951 () List!41482)

(assert (=> b!3898211 (= res!1576993 (or (not (= lt!1357937 (tuple2!40597 lt!1357951 (_2!23432 lt!1357936)))) (not (= lt!1357936 (tuple2!40597 (_1!23432 lt!1357936) (_2!23432 lt!1357936)))) (not (= (_2!23431 (v!39163 lt!1357935)) suffix!1176))))))

(declare-fun lt!1357949 () List!41482)

(assert (=> b!3898211 (= lt!1357951 (++!10622 lt!1357949 (_1!23432 lt!1357936)))))

(assert (=> b!3898211 (= lt!1357949 (Cons!41358 (_1!23431 (v!39163 lt!1357935)) Nil!41358))))

(declare-fun b!3898212 () Bool)

(declare-fun e!2410251 () Bool)

(declare-fun tp_is_empty!19645 () Bool)

(declare-fun tp!1186219 () Bool)

(assert (=> b!3898212 (= e!2410251 (and tp_is_empty!19645 tp!1186219))))

(declare-fun b!3898213 () Bool)

(declare-fun e!2410266 () Bool)

(declare-fun e!2410249 () Bool)

(assert (=> b!3898213 (= e!2410266 e!2410249)))

(declare-fun res!1576994 () Bool)

(assert (=> b!3898213 (=> res!1576994 e!2410249)))

(assert (=> b!3898213 (= res!1576994 (or (not (= lt!1357944 (_1!23432 lt!1357937))) (not (= lt!1357944 lt!1357951)) (not (= prefixTokens!80 lt!1357949)) (not (= prefix!426 lt!1357938))))))

(assert (=> b!3898213 (= lt!1357938 prefix!426)))

(declare-fun lt!1357954 () Unit!59476)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!504 (List!41481 List!41481 List!41481 List!41481) Unit!59476)

(assert (=> b!3898213 (= lt!1357954 (lemmaConcatSameAndSameSizesThenSameLists!504 lt!1357938 (_2!23431 (v!39163 lt!1357935)) prefix!426 suffix!1176))))

(declare-fun b!3898214 () Bool)

(declare-fun res!1576998 () Bool)

(assert (=> b!3898214 (=> (not res!1576998) (not e!2410263))))

(declare-fun isEmpty!24581 (List!41482) Bool)

(assert (=> b!3898214 (= res!1576998 (not (isEmpty!24581 prefixTokens!80)))))

(declare-fun e!2410248 () Bool)

(declare-fun b!3898215 () Bool)

(declare-fun e!2410255 () Bool)

(declare-fun tp!1186227 () Bool)

(assert (=> b!3898215 (= e!2410248 (and tp!1186227 (inv!55517 (tag!7292 (rule!9336 (h!46778 prefixTokens!80)))) (inv!55521 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) e!2410255))))

(declare-fun b!3898216 () Bool)

(declare-fun e!2410261 () Bool)

(declare-fun tp!1186211 () Bool)

(assert (=> b!3898216 (= e!2410261 (and tp_is_empty!19645 tp!1186211))))

(declare-fun b!3898217 () Bool)

(assert (=> b!3898217 (= e!2410269 e!2410266)))

(declare-fun res!1576999 () Bool)

(assert (=> b!3898217 (=> res!1576999 e!2410266)))

(assert (=> b!3898217 (= res!1576999 (not (= lt!1357935 (Some!8851 (tuple2!40595 (_1!23431 (v!39163 lt!1357935)) (_2!23431 (v!39163 lt!1357935)))))))))

(declare-fun e!2410250 () Bool)

(assert (=> b!3898217 e!2410250))

(declare-fun res!1577006 () Bool)

(assert (=> b!3898217 (=> (not res!1577006) (not e!2410250))))

(assert (=> b!3898217 (= res!1577006 (isPrefix!3527 lt!1357946 lt!1357946))))

(declare-fun lt!1357953 () Unit!59476)

(declare-fun lemmaIsPrefixRefl!2234 (List!41481 List!41481) Unit!59476)

(assert (=> b!3898217 (= lt!1357953 (lemmaIsPrefixRefl!2234 lt!1357946 lt!1357946))))

(assert (=> b!3898217 (= lt!1357937 (tuple2!40597 (Cons!41358 (_1!23431 (v!39163 lt!1357935)) (_1!23432 lt!1357936)) (_2!23432 lt!1357936)))))

(declare-fun e!2410258 () Bool)

(declare-fun tp!1186228 () Bool)

(declare-fun b!3898218 () Bool)

(declare-fun inv!21 (TokenValue!6662) Bool)

(assert (=> b!3898218 (= e!2410258 (and (inv!21 (value!203946 (_1!23431 (v!39163 err!4377)))) e!2410252 tp!1186228))))

(declare-fun call!283734 () Option!8852)

(declare-fun bm!283729 () Bool)

(declare-fun maxPrefixOneRule!2401 (LexerInterface!6021 Rule!12664 List!41481) Option!8852)

(assert (=> bm!283729 (= call!283734 (maxPrefixOneRule!2401 thiss!20629 (h!46779 rules!2768) lt!1357946))))

(declare-fun b!3898219 () Bool)

(declare-fun e!2410253 () Bool)

(declare-fun tp!1186229 () Bool)

(assert (=> b!3898219 (= e!2410253 (and e!2410270 tp!1186229))))

(declare-fun res!1577004 () Bool)

(assert (=> start!365032 (=> (not res!1577004) (not e!2410263))))

(assert (=> start!365032 (= res!1577004 ((_ is Lexer!6019) thiss!20629))))

(assert (=> start!365032 e!2410263))

(declare-fun e!2410245 () Bool)

(assert (=> start!365032 e!2410245))

(assert (=> start!365032 true))

(assert (=> start!365032 e!2410251))

(assert (=> start!365032 e!2410253))

(assert (=> start!365032 e!2410247))

(assert (=> start!365032 e!2410254))

(assert (=> start!365032 e!2410261))

(declare-fun b!3898220 () Bool)

(declare-fun lt!1357939 () Option!8852)

(assert (=> b!3898220 (= lt!1357939 (maxPrefix!3325 thiss!20629 (t!319150 rules!2768) lt!1357946))))

(declare-fun lt!1357948 () Option!8852)

(assert (=> b!3898220 (= lt!1357948 call!283734)))

(assert (=> b!3898220 (= e!2410267 (ite (and ((_ is None!8851) lt!1357948) ((_ is None!8851) lt!1357939)) None!8851 (ite ((_ is None!8851) lt!1357939) lt!1357948 (ite ((_ is None!8851) lt!1357948) lt!1357939 (ite (>= (size!31049 (_1!23431 (v!39163 lt!1357948))) (size!31049 (_1!23431 (v!39163 lt!1357939)))) (Some!8851 (v!39163 lt!1357948)) lt!1357939)))))))

(declare-fun b!3898221 () Bool)

(assert (=> b!3898221 true))

(declare-fun e!2410260 () Bool)

(assert (=> b!3898221 e!2410260))

(assert (=> b!3898221 (= e!2410267 err!4377)))

(declare-fun b!3898222 () Bool)

(declare-fun res!1576996 () Bool)

(assert (=> b!3898222 (=> (not res!1576996) (not e!2410263))))

(declare-fun rulesInvariant!5364 (LexerInterface!6021 List!41483) Bool)

(assert (=> b!3898222 (= res!1576996 (rulesInvariant!5364 thiss!20629 rules!2768))))

(declare-fun b!3898223 () Bool)

(declare-fun res!1577000 () Bool)

(assert (=> b!3898223 (=> (not res!1577000) (not e!2410265))))

(assert (=> b!3898223 (= res!1577000 (= (lexList!1789 thiss!20629 rules!2768 suffix!1176) (tuple2!40597 suffixTokens!72 suffixResult!91)))))

(assert (=> b!3898224 (= e!2410255 (and tp!1186213 tp!1186230))))

(declare-fun b!3898225 () Bool)

(declare-fun res!1576992 () Bool)

(assert (=> b!3898225 (=> res!1576992 e!2410249)))

(assert (=> b!3898225 (= res!1576992 (not (isPrefix!3527 Nil!41357 suffix!1176)))))

(declare-fun b!3898226 () Bool)

(declare-fun tp!1186223 () Bool)

(assert (=> b!3898226 (= e!2410245 (and tp_is_empty!19645 tp!1186223))))

(declare-fun b!3898227 () Bool)

(assert (=> b!3898227 (= e!2410250 (= lt!1357935 e!2410272))))

(declare-fun c!677653 () Bool)

(assert (=> b!3898227 (= c!677653 (and ((_ is Cons!41359) rules!2768) ((_ is Nil!41359) (t!319150 rules!2768))))))

(assert (=> b!3898228 (= e!2410240 (and tp!1186222 tp!1186216))))

(declare-fun b!3898229 () Bool)

(declare-fun res!1577001 () Bool)

(assert (=> b!3898229 (=> (not res!1577001) (not e!2410263))))

(declare-fun isEmpty!24582 (List!41483) Bool)

(assert (=> b!3898229 (= res!1577001 (not (isEmpty!24582 rules!2768)))))

(declare-fun b!3898230 () Bool)

(declare-fun tp!1186212 () Bool)

(assert (=> b!3898230 (= e!2410271 (and (inv!21 (value!203946 (h!46778 prefixTokens!80))) e!2410248 tp!1186212))))

(declare-fun b!3898231 () Bool)

(declare-fun isDefined!6903 (Option!8852) Bool)

(assert (=> b!3898231 (= e!2410249 (isDefined!6903 (maxPrefix!3325 thiss!20629 rules!2768 prefix!426)))))

(assert (=> b!3898231 (= (maxPrefix!3325 thiss!20629 rules!2768 (++!10621 prefix!426 Nil!41357)) (Some!8851 (tuple2!40595 (_1!23431 (v!39163 lt!1357935)) Nil!41357)))))

(declare-fun lt!1357947 () Unit!59476)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!34 (LexerInterface!6021 List!41483 List!41481 List!41481 List!41481 Token!12002 List!41481 List!41481) Unit!59476)

(assert (=> b!3898231 (= lt!1357947 (lemmaMaxPrefixThenWithShorterSuffix!34 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41357 (_1!23431 (v!39163 lt!1357935)) suffix!1176 Nil!41357))))

(declare-fun b!3898232 () Bool)

(declare-fun tp!1186215 () Bool)

(assert (=> b!3898232 (= e!2410260 (and (inv!55520 (_1!23431 (v!39163 err!4377))) e!2410258 tp!1186215))))

(declare-fun tp!1186221 () Bool)

(declare-fun b!3898233 () Bool)

(assert (=> b!3898233 (= e!2410238 (and (inv!21 (value!203946 (h!46778 suffixTokens!72))) e!2410259 tp!1186221))))

(declare-fun b!3898234 () Bool)

(assert (=> b!3898234 (= e!2410272 call!283734)))

(assert (= (and start!365032 res!1577004) b!3898229))

(assert (= (and b!3898229 res!1577001) b!3898222))

(assert (= (and b!3898222 res!1576996) b!3898214))

(assert (= (and b!3898214 res!1576998) b!3898200))

(assert (= (and b!3898200 res!1577005) b!3898208))

(assert (= (and b!3898208 res!1577002) b!3898223))

(assert (= (and b!3898223 res!1577000) b!3898199))

(assert (= (and b!3898199 res!1576995) b!3898201))

(assert (= (and b!3898201 res!1577003) b!3898204))

(assert (= (and b!3898201 (not res!1576997)) b!3898211))

(assert (= (and b!3898211 (not res!1576993)) b!3898217))

(assert (= (and b!3898217 res!1577006) b!3898227))

(assert (= (and b!3898227 c!677653) b!3898234))

(assert (= (and b!3898227 (not c!677653)) b!3898203))

(assert (= (and b!3898203 c!677652) b!3898220))

(assert (= (and b!3898203 (not c!677652)) b!3898221))

(assert (= b!3898202 b!3898205))

(assert (= b!3898218 b!3898202))

(assert (= b!3898232 b!3898218))

(assert (= (and b!3898221 ((_ is Some!8851) err!4377)) b!3898232))

(assert (= (or b!3898234 b!3898220) bm!283729))

(assert (= (and b!3898217 (not res!1576999)) b!3898213))

(assert (= (and b!3898213 (not res!1576994)) b!3898225))

(assert (= (and b!3898225 (not res!1576992)) b!3898231))

(assert (= (and start!365032 ((_ is Cons!41357) suffixResult!91)) b!3898226))

(assert (= (and start!365032 ((_ is Cons!41357) suffix!1176)) b!3898212))

(assert (= b!3898207 b!3898228))

(assert (= b!3898219 b!3898207))

(assert (= (and start!365032 ((_ is Cons!41359) rules!2768)) b!3898219))

(assert (= b!3898215 b!3898224))

(assert (= b!3898230 b!3898215))

(assert (= b!3898209 b!3898230))

(assert (= (and start!365032 ((_ is Cons!41358) prefixTokens!80)) b!3898209))

(assert (= b!3898206 b!3898210))

(assert (= b!3898233 b!3898206))

(assert (= b!3898198 b!3898233))

(assert (= (and start!365032 ((_ is Cons!41358) suffixTokens!72)) b!3898198))

(assert (= (and start!365032 ((_ is Cons!41357) prefix!426)) b!3898216))

(declare-fun m!4457233 () Bool)

(assert (=> b!3898230 m!4457233))

(declare-fun m!4457235 () Bool)

(assert (=> b!3898208 m!4457235))

(declare-fun m!4457237 () Bool)

(assert (=> b!3898208 m!4457237))

(declare-fun m!4457239 () Bool)

(assert (=> b!3898208 m!4457239))

(declare-fun m!4457241 () Bool)

(assert (=> b!3898204 m!4457241))

(declare-fun m!4457243 () Bool)

(assert (=> b!3898214 m!4457243))

(declare-fun m!4457245 () Bool)

(assert (=> b!3898229 m!4457245))

(declare-fun m!4457247 () Bool)

(assert (=> b!3898213 m!4457247))

(declare-fun m!4457249 () Bool)

(assert (=> b!3898232 m!4457249))

(declare-fun m!4457251 () Bool)

(assert (=> b!3898211 m!4457251))

(declare-fun m!4457253 () Bool)

(assert (=> b!3898202 m!4457253))

(declare-fun m!4457255 () Bool)

(assert (=> b!3898202 m!4457255))

(declare-fun m!4457257 () Bool)

(assert (=> b!3898198 m!4457257))

(declare-fun m!4457259 () Bool)

(assert (=> bm!283729 m!4457259))

(declare-fun m!4457261 () Bool)

(assert (=> b!3898201 m!4457261))

(declare-fun m!4457263 () Bool)

(assert (=> b!3898201 m!4457263))

(declare-fun m!4457265 () Bool)

(assert (=> b!3898201 m!4457265))

(declare-fun m!4457267 () Bool)

(assert (=> b!3898201 m!4457267))

(assert (=> b!3898201 m!4457261))

(declare-fun m!4457269 () Bool)

(assert (=> b!3898201 m!4457269))

(declare-fun m!4457271 () Bool)

(assert (=> b!3898201 m!4457271))

(declare-fun m!4457273 () Bool)

(assert (=> b!3898201 m!4457273))

(declare-fun m!4457275 () Bool)

(assert (=> b!3898201 m!4457275))

(declare-fun m!4457277 () Bool)

(assert (=> b!3898201 m!4457277))

(declare-fun m!4457279 () Bool)

(assert (=> b!3898201 m!4457279))

(declare-fun m!4457281 () Bool)

(assert (=> b!3898201 m!4457281))

(declare-fun m!4457283 () Bool)

(assert (=> b!3898201 m!4457283))

(assert (=> b!3898201 m!4457275))

(declare-fun m!4457285 () Bool)

(assert (=> b!3898201 m!4457285))

(declare-fun m!4457287 () Bool)

(assert (=> b!3898201 m!4457287))

(declare-fun m!4457289 () Bool)

(assert (=> b!3898207 m!4457289))

(declare-fun m!4457291 () Bool)

(assert (=> b!3898207 m!4457291))

(declare-fun m!4457293 () Bool)

(assert (=> b!3898215 m!4457293))

(declare-fun m!4457295 () Bool)

(assert (=> b!3898215 m!4457295))

(declare-fun m!4457297 () Bool)

(assert (=> b!3898199 m!4457297))

(declare-fun m!4457299 () Bool)

(assert (=> b!3898200 m!4457299))

(declare-fun m!4457301 () Bool)

(assert (=> b!3898225 m!4457301))

(declare-fun m!4457303 () Bool)

(assert (=> b!3898217 m!4457303))

(declare-fun m!4457305 () Bool)

(assert (=> b!3898217 m!4457305))

(declare-fun m!4457307 () Bool)

(assert (=> b!3898233 m!4457307))

(declare-fun m!4457309 () Bool)

(assert (=> b!3898231 m!4457309))

(declare-fun m!4457311 () Bool)

(assert (=> b!3898231 m!4457311))

(declare-fun m!4457313 () Bool)

(assert (=> b!3898231 m!4457313))

(assert (=> b!3898231 m!4457313))

(declare-fun m!4457315 () Bool)

(assert (=> b!3898231 m!4457315))

(assert (=> b!3898231 m!4457311))

(declare-fun m!4457317 () Bool)

(assert (=> b!3898231 m!4457317))

(declare-fun m!4457319 () Bool)

(assert (=> b!3898220 m!4457319))

(declare-fun m!4457321 () Bool)

(assert (=> b!3898223 m!4457321))

(declare-fun m!4457323 () Bool)

(assert (=> b!3898222 m!4457323))

(declare-fun m!4457325 () Bool)

(assert (=> b!3898206 m!4457325))

(declare-fun m!4457327 () Bool)

(assert (=> b!3898206 m!4457327))

(declare-fun m!4457329 () Bool)

(assert (=> b!3898218 m!4457329))

(declare-fun m!4457331 () Bool)

(assert (=> b!3898209 m!4457331))

(check-sat (not b!3898220) (not b!3898233) (not b_next!106257) (not b!3898230) (not b!3898232) (not b!3898201) (not b!3898223) b_and!294363 (not b!3898229) b_and!294367 b_and!294359 b_and!294365 (not b!3898198) (not b_next!106253) (not b!3898218) (not b!3898217) (not b!3898208) (not b_next!106249) (not b!3898200) b_and!294369 b_and!294371 (not b!3898222) (not b!3898215) (not b!3898226) (not b!3898216) (not b!3898225) (not bm!283729) (not b_next!106251) (not b!3898219) (not b!3898212) (not b!3898199) (not b!3898207) (not b!3898211) (not b!3898213) (not b!3898209) (not b_next!106259) (not b!3898204) (not b!3898202) (not b_next!106263) b_and!294373 b_and!294361 (not b!3898231) (not b!3898214) (not b_next!106255) (not b_next!106261) (not b!3898206) tp_is_empty!19645)
(check-sat (not b_next!106257) (not b_next!106251) b_and!294363 b_and!294367 b_and!294359 b_and!294365 (not b_next!106253) (not b_next!106259) (not b_next!106249) b_and!294369 b_and!294371 (not b_next!106263) b_and!294373 b_and!294361 (not b_next!106255) (not b_next!106261))
(get-model)

(declare-fun d!1155003 () Bool)

(assert (=> d!1155003 (= (inv!55517 (tag!7292 (rule!9336 (h!46778 suffixTokens!72)))) (= (mod (str.len (value!203945 (tag!7292 (rule!9336 (h!46778 suffixTokens!72))))) 2) 0))))

(assert (=> b!3898206 d!1155003))

(declare-fun d!1155007 () Bool)

(declare-fun res!1577021 () Bool)

(declare-fun e!2410281 () Bool)

(assert (=> d!1155007 (=> (not res!1577021) (not e!2410281))))

(declare-fun semiInverseModEq!2755 (Int Int) Bool)

(assert (=> d!1155007 (= res!1577021 (semiInverseModEq!2755 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))))))

(assert (=> d!1155007 (= (inv!55521 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) e!2410281)))

(declare-fun b!3898248 () Bool)

(declare-fun equivClasses!2654 (Int Int) Bool)

(assert (=> b!3898248 (= e!2410281 (equivClasses!2654 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))))))

(assert (= (and d!1155007 res!1577021) b!3898248))

(declare-fun m!4457347 () Bool)

(assert (=> d!1155007 m!4457347))

(declare-fun m!4457349 () Bool)

(assert (=> b!3898248 m!4457349))

(assert (=> b!3898206 d!1155007))

(declare-fun d!1155013 () Bool)

(assert (=> d!1155013 (= (inv!55517 (tag!7292 (h!46779 rules!2768))) (= (mod (str.len (value!203945 (tag!7292 (h!46779 rules!2768)))) 2) 0))))

(assert (=> b!3898207 d!1155013))

(declare-fun d!1155015 () Bool)

(declare-fun res!1577022 () Bool)

(declare-fun e!2410282 () Bool)

(assert (=> d!1155015 (=> (not res!1577022) (not e!2410282))))

(assert (=> d!1155015 (= res!1577022 (semiInverseModEq!2755 (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toValue!8868 (transformation!6432 (h!46779 rules!2768)))))))

(assert (=> d!1155015 (= (inv!55521 (transformation!6432 (h!46779 rules!2768))) e!2410282)))

(declare-fun b!3898249 () Bool)

(assert (=> b!3898249 (= e!2410282 (equivClasses!2654 (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toValue!8868 (transformation!6432 (h!46779 rules!2768)))))))

(assert (= (and d!1155015 res!1577022) b!3898249))

(declare-fun m!4457351 () Bool)

(assert (=> d!1155015 m!4457351))

(declare-fun m!4457353 () Bool)

(assert (=> b!3898249 m!4457353))

(assert (=> b!3898207 d!1155015))

(declare-fun b!3898321 () Bool)

(declare-fun e!2410330 () Bool)

(declare-fun lt!1357985 () tuple2!40596)

(assert (=> b!3898321 (= e!2410330 (not (isEmpty!24581 (_1!23432 lt!1357985))))))

(declare-fun b!3898322 () Bool)

(declare-fun e!2410332 () Bool)

(assert (=> b!3898322 (= e!2410332 e!2410330)))

(declare-fun res!1577055 () Bool)

(assert (=> b!3898322 (= res!1577055 (< (size!31050 (_2!23432 lt!1357985)) (size!31050 suffix!1176)))))

(assert (=> b!3898322 (=> (not res!1577055) (not e!2410330))))

(declare-fun b!3898323 () Bool)

(declare-fun e!2410331 () tuple2!40596)

(assert (=> b!3898323 (= e!2410331 (tuple2!40597 Nil!41358 suffix!1176))))

(declare-fun b!3898324 () Bool)

(assert (=> b!3898324 (= e!2410332 (= (_2!23432 lt!1357985) suffix!1176))))

(declare-fun d!1155017 () Bool)

(assert (=> d!1155017 e!2410332))

(declare-fun c!677675 () Bool)

(declare-fun size!31052 (List!41482) Int)

(assert (=> d!1155017 (= c!677675 (> (size!31052 (_1!23432 lt!1357985)) 0))))

(assert (=> d!1155017 (= lt!1357985 e!2410331)))

(declare-fun c!677676 () Bool)

(declare-fun lt!1357984 () Option!8852)

(assert (=> d!1155017 (= c!677676 ((_ is Some!8851) lt!1357984))))

(assert (=> d!1155017 (= lt!1357984 (maxPrefix!3325 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1155017 (= (lexList!1789 thiss!20629 rules!2768 suffix!1176) lt!1357985)))

(declare-fun b!3898325 () Bool)

(declare-fun lt!1357986 () tuple2!40596)

(assert (=> b!3898325 (= e!2410331 (tuple2!40597 (Cons!41358 (_1!23431 (v!39163 lt!1357984)) (_1!23432 lt!1357986)) (_2!23432 lt!1357986)))))

(assert (=> b!3898325 (= lt!1357986 (lexList!1789 thiss!20629 rules!2768 (_2!23431 (v!39163 lt!1357984))))))

(assert (= (and d!1155017 c!677676) b!3898325))

(assert (= (and d!1155017 (not c!677676)) b!3898323))

(assert (= (and d!1155017 c!677675) b!3898322))

(assert (= (and d!1155017 (not c!677675)) b!3898324))

(assert (= (and b!3898322 res!1577055) b!3898321))

(declare-fun m!4457425 () Bool)

(assert (=> b!3898321 m!4457425))

(declare-fun m!4457427 () Bool)

(assert (=> b!3898322 m!4457427))

(declare-fun m!4457429 () Bool)

(assert (=> b!3898322 m!4457429))

(declare-fun m!4457431 () Bool)

(assert (=> d!1155017 m!4457431))

(declare-fun m!4457433 () Bool)

(assert (=> d!1155017 m!4457433))

(declare-fun m!4457435 () Bool)

(assert (=> b!3898325 m!4457435))

(assert (=> b!3898223 d!1155017))

(declare-fun b!3898341 () Bool)

(declare-fun e!2410342 () Bool)

(assert (=> b!3898341 (= e!2410342 (>= (size!31050 suffix!1176) (size!31050 Nil!41357)))))

(declare-fun b!3898340 () Bool)

(declare-fun e!2410341 () Bool)

(declare-fun tail!5963 (List!41481) List!41481)

(assert (=> b!3898340 (= e!2410341 (isPrefix!3527 (tail!5963 Nil!41357) (tail!5963 suffix!1176)))))

(declare-fun b!3898338 () Bool)

(declare-fun e!2410343 () Bool)

(assert (=> b!3898338 (= e!2410343 e!2410341)))

(declare-fun res!1577065 () Bool)

(assert (=> b!3898338 (=> (not res!1577065) (not e!2410341))))

(assert (=> b!3898338 (= res!1577065 (not ((_ is Nil!41357) suffix!1176)))))

(declare-fun b!3898339 () Bool)

(declare-fun res!1577067 () Bool)

(assert (=> b!3898339 (=> (not res!1577067) (not e!2410341))))

(declare-fun head!8246 (List!41481) C!22860)

(assert (=> b!3898339 (= res!1577067 (= (head!8246 Nil!41357) (head!8246 suffix!1176)))))

(declare-fun d!1155055 () Bool)

(assert (=> d!1155055 e!2410342))

(declare-fun res!1577066 () Bool)

(assert (=> d!1155055 (=> res!1577066 e!2410342)))

(declare-fun lt!1357999 () Bool)

(assert (=> d!1155055 (= res!1577066 (not lt!1357999))))

(assert (=> d!1155055 (= lt!1357999 e!2410343)))

(declare-fun res!1577064 () Bool)

(assert (=> d!1155055 (=> res!1577064 e!2410343)))

(assert (=> d!1155055 (= res!1577064 ((_ is Nil!41357) Nil!41357))))

(assert (=> d!1155055 (= (isPrefix!3527 Nil!41357 suffix!1176) lt!1357999)))

(assert (= (and d!1155055 (not res!1577064)) b!3898338))

(assert (= (and b!3898338 res!1577065) b!3898339))

(assert (= (and b!3898339 res!1577067) b!3898340))

(assert (= (and d!1155055 (not res!1577066)) b!3898341))

(assert (=> b!3898341 m!4457429))

(declare-fun m!4457437 () Bool)

(assert (=> b!3898341 m!4457437))

(declare-fun m!4457439 () Bool)

(assert (=> b!3898340 m!4457439))

(declare-fun m!4457441 () Bool)

(assert (=> b!3898340 m!4457441))

(assert (=> b!3898340 m!4457439))

(assert (=> b!3898340 m!4457441))

(declare-fun m!4457443 () Bool)

(assert (=> b!3898340 m!4457443))

(declare-fun m!4457445 () Bool)

(assert (=> b!3898339 m!4457445))

(declare-fun m!4457447 () Bool)

(assert (=> b!3898339 m!4457447))

(assert (=> b!3898225 d!1155055))

(declare-fun d!1155057 () Bool)

(declare-fun lt!1358007 () Int)

(assert (=> d!1155057 (>= lt!1358007 0)))

(declare-fun e!2410353 () Int)

(assert (=> d!1155057 (= lt!1358007 e!2410353)))

(declare-fun c!677682 () Bool)

(assert (=> d!1155057 (= c!677682 ((_ is Nil!41357) (originalCharacters!7032 (_1!23431 (v!39163 lt!1357935)))))))

(assert (=> d!1155057 (= (size!31050 (originalCharacters!7032 (_1!23431 (v!39163 lt!1357935)))) lt!1358007)))

(declare-fun b!3898369 () Bool)

(assert (=> b!3898369 (= e!2410353 0)))

(declare-fun b!3898370 () Bool)

(assert (=> b!3898370 (= e!2410353 (+ 1 (size!31050 (t!319148 (originalCharacters!7032 (_1!23431 (v!39163 lt!1357935)))))))))

(assert (= (and d!1155057 c!677682) b!3898369))

(assert (= (and d!1155057 (not c!677682)) b!3898370))

(declare-fun m!4457449 () Bool)

(assert (=> b!3898370 m!4457449))

(assert (=> b!3898204 d!1155057))

(declare-fun b!3898425 () Bool)

(declare-fun e!2410380 () Bool)

(declare-fun lt!1358032 () Option!8852)

(declare-fun contains!8311 (List!41483 Rule!12664) Bool)

(declare-fun get!13674 (Option!8852) tuple2!40594)

(assert (=> b!3898425 (= e!2410380 (contains!8311 (t!319150 rules!2768) (rule!9336 (_1!23431 (get!13674 lt!1358032)))))))

(declare-fun b!3898426 () Bool)

(declare-fun e!2410382 () Option!8852)

(declare-fun lt!1358028 () Option!8852)

(declare-fun lt!1358031 () Option!8852)

(assert (=> b!3898426 (= e!2410382 (ite (and ((_ is None!8851) lt!1358028) ((_ is None!8851) lt!1358031)) None!8851 (ite ((_ is None!8851) lt!1358031) lt!1358028 (ite ((_ is None!8851) lt!1358028) lt!1358031 (ite (>= (size!31049 (_1!23431 (v!39163 lt!1358028))) (size!31049 (_1!23431 (v!39163 lt!1358031)))) lt!1358028 lt!1358031)))))))

(declare-fun call!283740 () Option!8852)

(assert (=> b!3898426 (= lt!1358028 call!283740)))

(assert (=> b!3898426 (= lt!1358031 (maxPrefix!3325 thiss!20629 (t!319150 (t!319150 rules!2768)) lt!1357946))))

(declare-fun b!3898427 () Bool)

(declare-fun res!1577124 () Bool)

(assert (=> b!3898427 (=> (not res!1577124) (not e!2410380))))

(assert (=> b!3898427 (= res!1577124 (< (size!31050 (_2!23431 (get!13674 lt!1358032))) (size!31050 lt!1357946)))))

(declare-fun b!3898428 () Bool)

(declare-fun res!1577125 () Bool)

(assert (=> b!3898428 (=> (not res!1577125) (not e!2410380))))

(assert (=> b!3898428 (= res!1577125 (= (value!203946 (_1!23431 (get!13674 lt!1358032))) (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358032)))))))))

(declare-fun b!3898429 () Bool)

(assert (=> b!3898429 (= e!2410382 call!283740)))

(declare-fun b!3898430 () Bool)

(declare-fun res!1577121 () Bool)

(assert (=> b!3898430 (=> (not res!1577121) (not e!2410380))))

(assert (=> b!3898430 (= res!1577121 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032)))) (_2!23431 (get!13674 lt!1358032))) lt!1357946))))

(declare-fun bm!283735 () Bool)

(assert (=> bm!283735 (= call!283740 (maxPrefixOneRule!2401 thiss!20629 (h!46779 (t!319150 rules!2768)) lt!1357946))))

(declare-fun b!3898432 () Bool)

(declare-fun res!1577127 () Bool)

(assert (=> b!3898432 (=> (not res!1577127) (not e!2410380))))

(assert (=> b!3898432 (= res!1577127 (= (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032)))) (originalCharacters!7032 (_1!23431 (get!13674 lt!1358032)))))))

(declare-fun b!3898433 () Bool)

(declare-fun res!1577126 () Bool)

(assert (=> b!3898433 (=> (not res!1577126) (not e!2410380))))

(declare-fun matchR!5432 (Regex!11337 List!41481) Bool)

(assert (=> b!3898433 (= res!1577126 (matchR!5432 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032))))))))

(declare-fun d!1155059 () Bool)

(declare-fun e!2410381 () Bool)

(assert (=> d!1155059 e!2410381))

(declare-fun res!1577123 () Bool)

(assert (=> d!1155059 (=> res!1577123 e!2410381)))

(declare-fun isEmpty!24584 (Option!8852) Bool)

(assert (=> d!1155059 (= res!1577123 (isEmpty!24584 lt!1358032))))

(assert (=> d!1155059 (= lt!1358032 e!2410382)))

(declare-fun c!677694 () Bool)

(assert (=> d!1155059 (= c!677694 (and ((_ is Cons!41359) (t!319150 rules!2768)) ((_ is Nil!41359) (t!319150 (t!319150 rules!2768)))))))

(declare-fun lt!1358029 () Unit!59476)

(declare-fun lt!1358030 () Unit!59476)

(assert (=> d!1155059 (= lt!1358029 lt!1358030)))

(assert (=> d!1155059 (isPrefix!3527 lt!1357946 lt!1357946)))

(assert (=> d!1155059 (= lt!1358030 (lemmaIsPrefixRefl!2234 lt!1357946 lt!1357946))))

(declare-fun rulesValidInductive!2304 (LexerInterface!6021 List!41483) Bool)

(assert (=> d!1155059 (rulesValidInductive!2304 thiss!20629 (t!319150 rules!2768))))

(assert (=> d!1155059 (= (maxPrefix!3325 thiss!20629 (t!319150 rules!2768) lt!1357946) lt!1358032)))

(declare-fun b!3898431 () Bool)

(assert (=> b!3898431 (= e!2410381 e!2410380)))

(declare-fun res!1577122 () Bool)

(assert (=> b!3898431 (=> (not res!1577122) (not e!2410380))))

(assert (=> b!3898431 (= res!1577122 (isDefined!6903 lt!1358032))))

(assert (= (and d!1155059 c!677694) b!3898429))

(assert (= (and d!1155059 (not c!677694)) b!3898426))

(assert (= (or b!3898429 b!3898426) bm!283735))

(assert (= (and d!1155059 (not res!1577123)) b!3898431))

(assert (= (and b!3898431 res!1577122) b!3898432))

(assert (= (and b!3898432 res!1577127) b!3898427))

(assert (= (and b!3898427 res!1577124) b!3898430))

(assert (= (and b!3898430 res!1577121) b!3898428))

(assert (= (and b!3898428 res!1577125) b!3898433))

(assert (= (and b!3898433 res!1577126) b!3898425))

(declare-fun m!4457527 () Bool)

(assert (=> d!1155059 m!4457527))

(assert (=> d!1155059 m!4457303))

(assert (=> d!1155059 m!4457305))

(declare-fun m!4457529 () Bool)

(assert (=> d!1155059 m!4457529))

(declare-fun m!4457531 () Bool)

(assert (=> bm!283735 m!4457531))

(declare-fun m!4457533 () Bool)

(assert (=> b!3898427 m!4457533))

(declare-fun m!4457535 () Bool)

(assert (=> b!3898427 m!4457535))

(declare-fun m!4457537 () Bool)

(assert (=> b!3898427 m!4457537))

(assert (=> b!3898433 m!4457533))

(declare-fun m!4457539 () Bool)

(assert (=> b!3898433 m!4457539))

(assert (=> b!3898433 m!4457539))

(declare-fun m!4457541 () Bool)

(assert (=> b!3898433 m!4457541))

(assert (=> b!3898433 m!4457541))

(declare-fun m!4457543 () Bool)

(assert (=> b!3898433 m!4457543))

(declare-fun m!4457545 () Bool)

(assert (=> b!3898431 m!4457545))

(declare-fun m!4457547 () Bool)

(assert (=> b!3898426 m!4457547))

(assert (=> b!3898428 m!4457533))

(declare-fun m!4457549 () Bool)

(assert (=> b!3898428 m!4457549))

(assert (=> b!3898428 m!4457549))

(declare-fun m!4457551 () Bool)

(assert (=> b!3898428 m!4457551))

(assert (=> b!3898425 m!4457533))

(declare-fun m!4457553 () Bool)

(assert (=> b!3898425 m!4457553))

(assert (=> b!3898432 m!4457533))

(assert (=> b!3898432 m!4457539))

(assert (=> b!3898432 m!4457539))

(assert (=> b!3898432 m!4457541))

(assert (=> b!3898430 m!4457533))

(assert (=> b!3898430 m!4457539))

(assert (=> b!3898430 m!4457539))

(assert (=> b!3898430 m!4457541))

(assert (=> b!3898430 m!4457541))

(declare-fun m!4457555 () Bool)

(assert (=> b!3898430 m!4457555))

(assert (=> b!3898220 d!1155059))

(declare-fun d!1155073 () Bool)

(assert (=> d!1155073 (= (isEmpty!24580 prefix!426) ((_ is Nil!41357) prefix!426))))

(assert (=> b!3898200 d!1155073))

(declare-fun d!1155075 () Bool)

(declare-fun res!1577151 () Bool)

(declare-fun e!2410397 () Bool)

(assert (=> d!1155075 (=> (not res!1577151) (not e!2410397))))

(declare-fun rulesValid!2490 (LexerInterface!6021 List!41483) Bool)

(assert (=> d!1155075 (= res!1577151 (rulesValid!2490 thiss!20629 rules!2768))))

(assert (=> d!1155075 (= (rulesInvariant!5364 thiss!20629 rules!2768) e!2410397)))

(declare-fun b!3898463 () Bool)

(declare-datatypes ((List!41485 0))(
  ( (Nil!41361) (Cons!41361 (h!46781 String!47028) (t!319292 List!41485)) )
))
(declare-fun noDuplicateTag!2491 (LexerInterface!6021 List!41483 List!41485) Bool)

(assert (=> b!3898463 (= e!2410397 (noDuplicateTag!2491 thiss!20629 rules!2768 Nil!41361))))

(assert (= (and d!1155075 res!1577151) b!3898463))

(declare-fun m!4457557 () Bool)

(assert (=> d!1155075 m!4457557))

(declare-fun m!4457559 () Bool)

(assert (=> b!3898463 m!4457559))

(assert (=> b!3898222 d!1155075))

(declare-fun d!1155077 () Bool)

(assert (=> d!1155077 (= (inv!55517 (tag!7292 (rule!9336 (_1!23431 (v!39163 err!4377))))) (= (mod (str.len (value!203945 (tag!7292 (rule!9336 (_1!23431 (v!39163 err!4377)))))) 2) 0))))

(assert (=> b!3898202 d!1155077))

(declare-fun d!1155079 () Bool)

(declare-fun res!1577152 () Bool)

(declare-fun e!2410398 () Bool)

(assert (=> d!1155079 (=> (not res!1577152) (not e!2410398))))

(assert (=> d!1155079 (= res!1577152 (semiInverseModEq!2755 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))))))

(assert (=> d!1155079 (= (inv!55521 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) e!2410398)))

(declare-fun b!3898464 () Bool)

(assert (=> b!3898464 (= e!2410398 (equivClasses!2654 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))))))

(assert (= (and d!1155079 res!1577152) b!3898464))

(declare-fun m!4457579 () Bool)

(assert (=> d!1155079 m!4457579))

(declare-fun m!4457585 () Bool)

(assert (=> b!3898464 m!4457585))

(assert (=> b!3898202 d!1155079))

(declare-fun d!1155081 () Bool)

(declare-fun res!1577164 () Bool)

(declare-fun e!2410404 () Bool)

(assert (=> d!1155081 (=> (not res!1577164) (not e!2410404))))

(declare-fun validRegex!5153 (Regex!11337) Bool)

(assert (=> d!1155081 (= res!1577164 (validRegex!5153 (regex!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))))

(assert (=> d!1155081 (= (ruleValid!2380 thiss!20629 (rule!9336 (_1!23431 (v!39163 lt!1357935)))) e!2410404)))

(declare-fun b!3898478 () Bool)

(declare-fun res!1577165 () Bool)

(assert (=> b!3898478 (=> (not res!1577165) (not e!2410404))))

(declare-fun nullable!3954 (Regex!11337) Bool)

(assert (=> b!3898478 (= res!1577165 (not (nullable!3954 (regex!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))))))

(declare-fun b!3898479 () Bool)

(assert (=> b!3898479 (= e!2410404 (not (= (tag!7292 (rule!9336 (_1!23431 (v!39163 lt!1357935)))) (String!47029 ""))))))

(assert (= (and d!1155081 res!1577164) b!3898478))

(assert (= (and b!3898478 res!1577165) b!3898479))

(declare-fun m!4457639 () Bool)

(assert (=> d!1155081 m!4457639))

(declare-fun m!4457641 () Bool)

(assert (=> b!3898478 m!4457641))

(assert (=> b!3898201 d!1155081))

(declare-fun b!3898480 () Bool)

(declare-fun e!2410405 () Bool)

(declare-fun lt!1358054 () tuple2!40596)

(assert (=> b!3898480 (= e!2410405 (not (isEmpty!24581 (_1!23432 lt!1358054))))))

(declare-fun b!3898481 () Bool)

(declare-fun e!2410407 () Bool)

(assert (=> b!3898481 (= e!2410407 e!2410405)))

(declare-fun res!1577166 () Bool)

(assert (=> b!3898481 (= res!1577166 (< (size!31050 (_2!23432 lt!1358054)) (size!31050 (_2!23431 (v!39163 lt!1357935)))))))

(assert (=> b!3898481 (=> (not res!1577166) (not e!2410405))))

(declare-fun b!3898482 () Bool)

(declare-fun e!2410406 () tuple2!40596)

(assert (=> b!3898482 (= e!2410406 (tuple2!40597 Nil!41358 (_2!23431 (v!39163 lt!1357935))))))

(declare-fun b!3898483 () Bool)

(assert (=> b!3898483 (= e!2410407 (= (_2!23432 lt!1358054) (_2!23431 (v!39163 lt!1357935))))))

(declare-fun d!1155087 () Bool)

(assert (=> d!1155087 e!2410407))

(declare-fun c!677699 () Bool)

(assert (=> d!1155087 (= c!677699 (> (size!31052 (_1!23432 lt!1358054)) 0))))

(assert (=> d!1155087 (= lt!1358054 e!2410406)))

(declare-fun c!677700 () Bool)

(declare-fun lt!1358053 () Option!8852)

(assert (=> d!1155087 (= c!677700 ((_ is Some!8851) lt!1358053))))

(assert (=> d!1155087 (= lt!1358053 (maxPrefix!3325 thiss!20629 rules!2768 (_2!23431 (v!39163 lt!1357935))))))

(assert (=> d!1155087 (= (lexList!1789 thiss!20629 rules!2768 (_2!23431 (v!39163 lt!1357935))) lt!1358054)))

(declare-fun b!3898484 () Bool)

(declare-fun lt!1358055 () tuple2!40596)

(assert (=> b!3898484 (= e!2410406 (tuple2!40597 (Cons!41358 (_1!23431 (v!39163 lt!1358053)) (_1!23432 lt!1358055)) (_2!23432 lt!1358055)))))

(assert (=> b!3898484 (= lt!1358055 (lexList!1789 thiss!20629 rules!2768 (_2!23431 (v!39163 lt!1358053))))))

(assert (= (and d!1155087 c!677700) b!3898484))

(assert (= (and d!1155087 (not c!677700)) b!3898482))

(assert (= (and d!1155087 c!677699) b!3898481))

(assert (= (and d!1155087 (not c!677699)) b!3898483))

(assert (= (and b!3898481 res!1577166) b!3898480))

(declare-fun m!4457643 () Bool)

(assert (=> b!3898480 m!4457643))

(declare-fun m!4457645 () Bool)

(assert (=> b!3898481 m!4457645))

(declare-fun m!4457647 () Bool)

(assert (=> b!3898481 m!4457647))

(declare-fun m!4457649 () Bool)

(assert (=> d!1155087 m!4457649))

(declare-fun m!4457651 () Bool)

(assert (=> d!1155087 m!4457651))

(declare-fun m!4457653 () Bool)

(assert (=> b!3898484 m!4457653))

(assert (=> b!3898201 d!1155087))

(declare-fun d!1155089 () Bool)

(declare-fun fromListB!2164 (List!41481) BalanceConc!24880)

(assert (=> d!1155089 (= (seqFromList!4699 lt!1357938) (fromListB!2164 lt!1357938))))

(declare-fun bs!584779 () Bool)

(assert (= bs!584779 d!1155089))

(declare-fun m!4457655 () Bool)

(assert (=> bs!584779 m!4457655))

(assert (=> b!3898201 d!1155089))

(declare-fun b!3898488 () Bool)

(declare-fun e!2410409 () Bool)

(assert (=> b!3898488 (= e!2410409 (>= (size!31050 lt!1357950) (size!31050 lt!1357938)))))

(declare-fun b!3898487 () Bool)

(declare-fun e!2410408 () Bool)

(assert (=> b!3898487 (= e!2410408 (isPrefix!3527 (tail!5963 lt!1357938) (tail!5963 lt!1357950)))))

(declare-fun b!3898485 () Bool)

(declare-fun e!2410410 () Bool)

(assert (=> b!3898485 (= e!2410410 e!2410408)))

(declare-fun res!1577168 () Bool)

(assert (=> b!3898485 (=> (not res!1577168) (not e!2410408))))

(assert (=> b!3898485 (= res!1577168 (not ((_ is Nil!41357) lt!1357950)))))

(declare-fun b!3898486 () Bool)

(declare-fun res!1577170 () Bool)

(assert (=> b!3898486 (=> (not res!1577170) (not e!2410408))))

(assert (=> b!3898486 (= res!1577170 (= (head!8246 lt!1357938) (head!8246 lt!1357950)))))

(declare-fun d!1155091 () Bool)

(assert (=> d!1155091 e!2410409))

(declare-fun res!1577169 () Bool)

(assert (=> d!1155091 (=> res!1577169 e!2410409)))

(declare-fun lt!1358056 () Bool)

(assert (=> d!1155091 (= res!1577169 (not lt!1358056))))

(assert (=> d!1155091 (= lt!1358056 e!2410410)))

(declare-fun res!1577167 () Bool)

(assert (=> d!1155091 (=> res!1577167 e!2410410)))

(assert (=> d!1155091 (= res!1577167 ((_ is Nil!41357) lt!1357938))))

(assert (=> d!1155091 (= (isPrefix!3527 lt!1357938 lt!1357950) lt!1358056)))

(assert (= (and d!1155091 (not res!1577167)) b!3898485))

(assert (= (and b!3898485 res!1577168) b!3898486))

(assert (= (and b!3898486 res!1577170) b!3898487))

(assert (= (and d!1155091 (not res!1577169)) b!3898488))

(declare-fun m!4457657 () Bool)

(assert (=> b!3898488 m!4457657))

(assert (=> b!3898488 m!4457273))

(declare-fun m!4457659 () Bool)

(assert (=> b!3898487 m!4457659))

(declare-fun m!4457661 () Bool)

(assert (=> b!3898487 m!4457661))

(assert (=> b!3898487 m!4457659))

(assert (=> b!3898487 m!4457661))

(declare-fun m!4457663 () Bool)

(assert (=> b!3898487 m!4457663))

(declare-fun m!4457665 () Bool)

(assert (=> b!3898486 m!4457665))

(declare-fun m!4457667 () Bool)

(assert (=> b!3898486 m!4457667))

(assert (=> b!3898201 d!1155091))

(declare-fun d!1155093 () Bool)

(declare-fun dynLambda!17752 (Int BalanceConc!24880) TokenValue!6662)

(assert (=> d!1155093 (= (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))) (seqFromList!4699 lt!1357938)) (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (seqFromList!4699 lt!1357938)))))

(declare-fun b_lambda!113851 () Bool)

(assert (=> (not b_lambda!113851) (not d!1155093)))

(declare-fun tb!228973 () Bool)

(declare-fun t!319168 () Bool)

(assert (=> (and b!3898210 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319168) tb!228973))

(declare-fun result!278152 () Bool)

(assert (=> tb!228973 (= result!278152 (inv!21 (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (seqFromList!4699 lt!1357938))))))

(declare-fun m!4457669 () Bool)

(assert (=> tb!228973 m!4457669))

(assert (=> d!1155093 t!319168))

(declare-fun b_and!294391 () Bool)

(assert (= b_and!294359 (and (=> t!319168 result!278152) b_and!294391)))

(declare-fun t!319170 () Bool)

(declare-fun tb!228975 () Bool)

(assert (=> (and b!3898228 (= (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319170) tb!228975))

(declare-fun result!278156 () Bool)

(assert (= result!278156 result!278152))

(assert (=> d!1155093 t!319170))

(declare-fun b_and!294393 () Bool)

(assert (= b_and!294363 (and (=> t!319170 result!278156) b_and!294393)))

(declare-fun tb!228977 () Bool)

(declare-fun t!319172 () Bool)

(assert (=> (and b!3898224 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319172) tb!228977))

(declare-fun result!278158 () Bool)

(assert (= result!278158 result!278152))

(assert (=> d!1155093 t!319172))

(declare-fun b_and!294395 () Bool)

(assert (= b_and!294367 (and (=> t!319172 result!278158) b_and!294395)))

(declare-fun tb!228979 () Bool)

(declare-fun t!319174 () Bool)

(assert (=> (and b!3898205 (= (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319174) tb!228979))

(declare-fun result!278160 () Bool)

(assert (= result!278160 result!278152))

(assert (=> d!1155093 t!319174))

(declare-fun b_and!294397 () Bool)

(assert (= b_and!294371 (and (=> t!319174 result!278160) b_and!294397)))

(assert (=> d!1155093 m!4457261))

(declare-fun m!4457671 () Bool)

(assert (=> d!1155093 m!4457671))

(assert (=> b!3898201 d!1155093))

(declare-fun d!1155095 () Bool)

(declare-fun lt!1358059 () List!41481)

(assert (=> d!1155095 (= (++!10621 lt!1357938 lt!1358059) lt!1357946)))

(declare-fun e!2410416 () List!41481)

(assert (=> d!1155095 (= lt!1358059 e!2410416)))

(declare-fun c!677703 () Bool)

(assert (=> d!1155095 (= c!677703 ((_ is Cons!41357) lt!1357938))))

(assert (=> d!1155095 (>= (size!31050 lt!1357946) (size!31050 lt!1357938))))

(assert (=> d!1155095 (= (getSuffix!1982 lt!1357946 lt!1357938) lt!1358059)))

(declare-fun b!3898495 () Bool)

(assert (=> b!3898495 (= e!2410416 (getSuffix!1982 (tail!5963 lt!1357946) (t!319148 lt!1357938)))))

(declare-fun b!3898496 () Bool)

(assert (=> b!3898496 (= e!2410416 lt!1357946)))

(assert (= (and d!1155095 c!677703) b!3898495))

(assert (= (and d!1155095 (not c!677703)) b!3898496))

(declare-fun m!4457673 () Bool)

(assert (=> d!1155095 m!4457673))

(assert (=> d!1155095 m!4457537))

(assert (=> d!1155095 m!4457273))

(declare-fun m!4457675 () Bool)

(assert (=> b!3898495 m!4457675))

(assert (=> b!3898495 m!4457675))

(declare-fun m!4457677 () Bool)

(assert (=> b!3898495 m!4457677))

(assert (=> b!3898201 d!1155095))

(declare-fun d!1155097 () Bool)

(declare-fun lt!1358060 () Int)

(assert (=> d!1155097 (>= lt!1358060 0)))

(declare-fun e!2410417 () Int)

(assert (=> d!1155097 (= lt!1358060 e!2410417)))

(declare-fun c!677704 () Bool)

(assert (=> d!1155097 (= c!677704 ((_ is Nil!41357) lt!1357938))))

(assert (=> d!1155097 (= (size!31050 lt!1357938) lt!1358060)))

(declare-fun b!3898497 () Bool)

(assert (=> b!3898497 (= e!2410417 0)))

(declare-fun b!3898498 () Bool)

(assert (=> b!3898498 (= e!2410417 (+ 1 (size!31050 (t!319148 lt!1357938))))))

(assert (= (and d!1155097 c!677704) b!3898497))

(assert (= (and d!1155097 (not c!677704)) b!3898498))

(declare-fun m!4457679 () Bool)

(assert (=> b!3898498 m!4457679))

(assert (=> b!3898201 d!1155097))

(declare-fun d!1155099 () Bool)

(declare-fun lt!1358063 () BalanceConc!24880)

(assert (=> d!1155099 (= (list!15370 lt!1358063) (originalCharacters!7032 (_1!23431 (v!39163 lt!1357935))))))

(declare-fun dynLambda!17753 (Int TokenValue!6662) BalanceConc!24880)

(assert (=> d!1155099 (= lt!1358063 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (value!203946 (_1!23431 (v!39163 lt!1357935)))))))

(assert (=> d!1155099 (= (charsOf!4256 (_1!23431 (v!39163 lt!1357935))) lt!1358063)))

(declare-fun b_lambda!113853 () Bool)

(assert (=> (not b_lambda!113853) (not d!1155099)))

(declare-fun t!319176 () Bool)

(declare-fun tb!228981 () Bool)

(assert (=> (and b!3898210 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319176) tb!228981))

(declare-fun b!3898503 () Bool)

(declare-fun e!2410420 () Bool)

(declare-fun tp!1186237 () Bool)

(declare-fun inv!55524 (Conc!12643) Bool)

(assert (=> b!3898503 (= e!2410420 (and (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (value!203946 (_1!23431 (v!39163 lt!1357935)))))) tp!1186237))))

(declare-fun result!278162 () Bool)

(declare-fun inv!55525 (BalanceConc!24880) Bool)

(assert (=> tb!228981 (= result!278162 (and (inv!55525 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (value!203946 (_1!23431 (v!39163 lt!1357935))))) e!2410420))))

(assert (= tb!228981 b!3898503))

(declare-fun m!4457681 () Bool)

(assert (=> b!3898503 m!4457681))

(declare-fun m!4457683 () Bool)

(assert (=> tb!228981 m!4457683))

(assert (=> d!1155099 t!319176))

(declare-fun b_and!294399 () Bool)

(assert (= b_and!294361 (and (=> t!319176 result!278162) b_and!294399)))

(declare-fun t!319178 () Bool)

(declare-fun tb!228983 () Bool)

(assert (=> (and b!3898228 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319178) tb!228983))

(declare-fun result!278166 () Bool)

(assert (= result!278166 result!278162))

(assert (=> d!1155099 t!319178))

(declare-fun b_and!294401 () Bool)

(assert (= b_and!294365 (and (=> t!319178 result!278166) b_and!294401)))

(declare-fun t!319180 () Bool)

(declare-fun tb!228985 () Bool)

(assert (=> (and b!3898224 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319180) tb!228985))

(declare-fun result!278168 () Bool)

(assert (= result!278168 result!278162))

(assert (=> d!1155099 t!319180))

(declare-fun b_and!294403 () Bool)

(assert (= b_and!294369 (and (=> t!319180 result!278168) b_and!294403)))

(declare-fun t!319182 () Bool)

(declare-fun tb!228987 () Bool)

(assert (=> (and b!3898205 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319182) tb!228987))

(declare-fun result!278170 () Bool)

(assert (= result!278170 result!278162))

(assert (=> d!1155099 t!319182))

(declare-fun b_and!294405 () Bool)

(assert (= b_and!294373 (and (=> t!319182 result!278170) b_and!294405)))

(declare-fun m!4457685 () Bool)

(assert (=> d!1155099 m!4457685))

(declare-fun m!4457687 () Bool)

(assert (=> d!1155099 m!4457687))

(assert (=> b!3898201 d!1155099))

(declare-fun d!1155101 () Bool)

(assert (=> d!1155101 (= (_2!23431 (v!39163 lt!1357935)) lt!1357942)))

(declare-fun lt!1358075 () Unit!59476)

(declare-fun choose!23059 (List!41481 List!41481 List!41481 List!41481 List!41481) Unit!59476)

(assert (=> d!1155101 (= lt!1358075 (choose!23059 lt!1357938 (_2!23431 (v!39163 lt!1357935)) lt!1357938 lt!1357942 lt!1357946))))

(assert (=> d!1155101 (isPrefix!3527 lt!1357938 lt!1357946)))

(assert (=> d!1155101 (= (lemmaSamePrefixThenSameSuffix!1748 lt!1357938 (_2!23431 (v!39163 lt!1357935)) lt!1357938 lt!1357942 lt!1357946) lt!1358075)))

(declare-fun bs!584781 () Bool)

(assert (= bs!584781 d!1155101))

(declare-fun m!4457699 () Bool)

(assert (=> bs!584781 m!4457699))

(declare-fun m!4457703 () Bool)

(assert (=> bs!584781 m!4457703))

(assert (=> b!3898201 d!1155101))

(declare-fun d!1155107 () Bool)

(declare-fun list!15371 (Conc!12643) List!41481)

(assert (=> d!1155107 (= (list!15370 (charsOf!4256 (_1!23431 (v!39163 lt!1357935)))) (list!15371 (c!677655 (charsOf!4256 (_1!23431 (v!39163 lt!1357935))))))))

(declare-fun bs!584782 () Bool)

(assert (= bs!584782 d!1155107))

(declare-fun m!4457731 () Bool)

(assert (=> bs!584782 m!4457731))

(assert (=> b!3898201 d!1155107))

(declare-fun b!3898529 () Bool)

(declare-fun e!2410433 () List!41481)

(assert (=> b!3898529 (= e!2410433 (_2!23431 (v!39163 lt!1357935)))))

(declare-fun b!3898530 () Bool)

(assert (=> b!3898530 (= e!2410433 (Cons!41357 (h!46777 lt!1357938) (++!10621 (t!319148 lt!1357938) (_2!23431 (v!39163 lt!1357935)))))))

(declare-fun d!1155109 () Bool)

(declare-fun e!2410432 () Bool)

(assert (=> d!1155109 e!2410432))

(declare-fun res!1577185 () Bool)

(assert (=> d!1155109 (=> (not res!1577185) (not e!2410432))))

(declare-fun lt!1358080 () List!41481)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6186 (List!41481) (InoxSet C!22860))

(assert (=> d!1155109 (= res!1577185 (= (content!6186 lt!1358080) ((_ map or) (content!6186 lt!1357938) (content!6186 (_2!23431 (v!39163 lt!1357935))))))))

(assert (=> d!1155109 (= lt!1358080 e!2410433)))

(declare-fun c!677711 () Bool)

(assert (=> d!1155109 (= c!677711 ((_ is Nil!41357) lt!1357938))))

(assert (=> d!1155109 (= (++!10621 lt!1357938 (_2!23431 (v!39163 lt!1357935))) lt!1358080)))

(declare-fun b!3898531 () Bool)

(declare-fun res!1577184 () Bool)

(assert (=> b!3898531 (=> (not res!1577184) (not e!2410432))))

(assert (=> b!3898531 (= res!1577184 (= (size!31050 lt!1358080) (+ (size!31050 lt!1357938) (size!31050 (_2!23431 (v!39163 lt!1357935))))))))

(declare-fun b!3898532 () Bool)

(assert (=> b!3898532 (= e!2410432 (or (not (= (_2!23431 (v!39163 lt!1357935)) Nil!41357)) (= lt!1358080 lt!1357938)))))

(assert (= (and d!1155109 c!677711) b!3898529))

(assert (= (and d!1155109 (not c!677711)) b!3898530))

(assert (= (and d!1155109 res!1577185) b!3898531))

(assert (= (and b!3898531 res!1577184) b!3898532))

(declare-fun m!4457739 () Bool)

(assert (=> b!3898530 m!4457739))

(declare-fun m!4457741 () Bool)

(assert (=> d!1155109 m!4457741))

(declare-fun m!4457743 () Bool)

(assert (=> d!1155109 m!4457743))

(declare-fun m!4457745 () Bool)

(assert (=> d!1155109 m!4457745))

(declare-fun m!4457747 () Bool)

(assert (=> b!3898531 m!4457747))

(assert (=> b!3898531 m!4457273))

(assert (=> b!3898531 m!4457647))

(assert (=> b!3898201 d!1155109))

(declare-fun d!1155117 () Bool)

(assert (=> d!1155117 (isPrefix!3527 lt!1357938 (++!10621 lt!1357938 (_2!23431 (v!39163 lt!1357935))))))

(declare-fun lt!1358086 () Unit!59476)

(declare-fun choose!23060 (List!41481 List!41481) Unit!59476)

(assert (=> d!1155117 (= lt!1358086 (choose!23060 lt!1357938 (_2!23431 (v!39163 lt!1357935))))))

(assert (=> d!1155117 (= (lemmaConcatTwoListThenFirstIsPrefix!2390 lt!1357938 (_2!23431 (v!39163 lt!1357935))) lt!1358086)))

(declare-fun bs!584785 () Bool)

(assert (= bs!584785 d!1155117))

(assert (=> bs!584785 m!4457265))

(assert (=> bs!584785 m!4457265))

(declare-fun m!4457767 () Bool)

(assert (=> bs!584785 m!4457767))

(declare-fun m!4457769 () Bool)

(assert (=> bs!584785 m!4457769))

(assert (=> b!3898201 d!1155117))

(declare-fun d!1155125 () Bool)

(assert (=> d!1155125 (ruleValid!2380 thiss!20629 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))

(declare-fun lt!1358089 () Unit!59476)

(declare-fun choose!23061 (LexerInterface!6021 Rule!12664 List!41483) Unit!59476)

(assert (=> d!1155125 (= lt!1358089 (choose!23061 thiss!20629 (rule!9336 (_1!23431 (v!39163 lt!1357935))) rules!2768))))

(assert (=> d!1155125 (contains!8311 rules!2768 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))

(assert (=> d!1155125 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1460 thiss!20629 (rule!9336 (_1!23431 (v!39163 lt!1357935))) rules!2768) lt!1358089)))

(declare-fun bs!584786 () Bool)

(assert (= bs!584786 d!1155125))

(assert (=> bs!584786 m!4457271))

(declare-fun m!4457775 () Bool)

(assert (=> bs!584786 m!4457775))

(declare-fun m!4457777 () Bool)

(assert (=> bs!584786 m!4457777))

(assert (=> b!3898201 d!1155125))

(declare-fun d!1155129 () Bool)

(assert (=> d!1155129 (= (size!31049 (_1!23431 (v!39163 lt!1357935))) (size!31050 (originalCharacters!7032 (_1!23431 (v!39163 lt!1357935)))))))

(declare-fun Unit!59478 () Unit!59476)

(assert (=> d!1155129 (= (lemmaCharactersSize!1089 (_1!23431 (v!39163 lt!1357935))) Unit!59478)))

(declare-fun bs!584787 () Bool)

(assert (= bs!584787 d!1155129))

(assert (=> bs!584787 m!4457241))

(assert (=> b!3898201 d!1155129))

(declare-fun b!3898665 () Bool)

(declare-fun res!1577227 () Bool)

(declare-fun e!2410521 () Bool)

(assert (=> b!3898665 (=> (not res!1577227) (not e!2410521))))

(declare-fun lt!1358123 () Option!8852)

(assert (=> b!3898665 (= res!1577227 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123)))) (_2!23431 (get!13674 lt!1358123))) lt!1357946))))

(declare-fun b!3898666 () Bool)

(assert (=> b!3898666 (= e!2410521 (= (size!31049 (_1!23431 (get!13674 lt!1358123))) (size!31050 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358123))))))))

(declare-fun b!3898667 () Bool)

(declare-fun e!2410522 () Option!8852)

(assert (=> b!3898667 (= e!2410522 None!8851)))

(declare-fun b!3898668 () Bool)

(declare-fun e!2410523 () Bool)

(declare-datatypes ((tuple2!40600 0))(
  ( (tuple2!40601 (_1!23434 List!41481) (_2!23434 List!41481)) )
))
(declare-fun findLongestMatchInner!1220 (Regex!11337 List!41481 Int List!41481 List!41481 Int) tuple2!40600)

(assert (=> b!3898668 (= e!2410523 (matchR!5432 (regex!6432 (h!46779 rules!2768)) (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946)))))))

(declare-fun b!3898669 () Bool)

(declare-fun res!1577228 () Bool)

(assert (=> b!3898669 (=> (not res!1577228) (not e!2410521))))

(assert (=> b!3898669 (= res!1577228 (= (rule!9336 (_1!23431 (get!13674 lt!1358123))) (h!46779 rules!2768)))))

(declare-fun b!3898670 () Bool)

(declare-fun lt!1358121 () tuple2!40600)

(declare-fun size!31054 (BalanceConc!24880) Int)

(assert (=> b!3898670 (= e!2410522 (Some!8851 (tuple2!40595 (Token!12003 (apply!9671 (transformation!6432 (h!46779 rules!2768)) (seqFromList!4699 (_1!23434 lt!1358121))) (h!46779 rules!2768) (size!31054 (seqFromList!4699 (_1!23434 lt!1358121))) (_1!23434 lt!1358121)) (_2!23434 lt!1358121))))))

(declare-fun lt!1358124 () Unit!59476)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1193 (Regex!11337 List!41481) Unit!59476)

(assert (=> b!3898670 (= lt!1358124 (longestMatchIsAcceptedByMatchOrIsEmpty!1193 (regex!6432 (h!46779 rules!2768)) lt!1357946))))

(declare-fun res!1577230 () Bool)

(assert (=> b!3898670 (= res!1577230 (isEmpty!24580 (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946)))))))

(assert (=> b!3898670 (=> res!1577230 e!2410523)))

(assert (=> b!3898670 e!2410523))

(declare-fun lt!1358122 () Unit!59476)

(assert (=> b!3898670 (= lt!1358122 lt!1358124)))

(declare-fun lt!1358125 () Unit!59476)

(declare-fun lemmaSemiInverse!1726 (TokenValueInjection!12752 BalanceConc!24880) Unit!59476)

(assert (=> b!3898670 (= lt!1358125 (lemmaSemiInverse!1726 (transformation!6432 (h!46779 rules!2768)) (seqFromList!4699 (_1!23434 lt!1358121))))))

(declare-fun b!3898671 () Bool)

(declare-fun e!2410524 () Bool)

(assert (=> b!3898671 (= e!2410524 e!2410521)))

(declare-fun res!1577224 () Bool)

(assert (=> b!3898671 (=> (not res!1577224) (not e!2410521))))

(assert (=> b!3898671 (= res!1577224 (matchR!5432 (regex!6432 (h!46779 rules!2768)) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123))))))))

(declare-fun b!3898672 () Bool)

(declare-fun res!1577229 () Bool)

(assert (=> b!3898672 (=> (not res!1577229) (not e!2410521))))

(assert (=> b!3898672 (= res!1577229 (= (value!203946 (_1!23431 (get!13674 lt!1358123))) (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358123)))))))))

(declare-fun d!1155133 () Bool)

(assert (=> d!1155133 e!2410524))

(declare-fun res!1577225 () Bool)

(assert (=> d!1155133 (=> res!1577225 e!2410524)))

(assert (=> d!1155133 (= res!1577225 (isEmpty!24584 lt!1358123))))

(assert (=> d!1155133 (= lt!1358123 e!2410522)))

(declare-fun c!677724 () Bool)

(assert (=> d!1155133 (= c!677724 (isEmpty!24580 (_1!23434 lt!1358121)))))

(declare-fun findLongestMatch!1133 (Regex!11337 List!41481) tuple2!40600)

(assert (=> d!1155133 (= lt!1358121 (findLongestMatch!1133 (regex!6432 (h!46779 rules!2768)) lt!1357946))))

(assert (=> d!1155133 (ruleValid!2380 thiss!20629 (h!46779 rules!2768))))

(assert (=> d!1155133 (= (maxPrefixOneRule!2401 thiss!20629 (h!46779 rules!2768) lt!1357946) lt!1358123)))

(declare-fun b!3898673 () Bool)

(declare-fun res!1577226 () Bool)

(assert (=> b!3898673 (=> (not res!1577226) (not e!2410521))))

(assert (=> b!3898673 (= res!1577226 (< (size!31050 (_2!23431 (get!13674 lt!1358123))) (size!31050 lt!1357946)))))

(assert (= (and d!1155133 c!677724) b!3898667))

(assert (= (and d!1155133 (not c!677724)) b!3898670))

(assert (= (and b!3898670 (not res!1577230)) b!3898668))

(assert (= (and d!1155133 (not res!1577225)) b!3898671))

(assert (= (and b!3898671 res!1577224) b!3898665))

(assert (= (and b!3898665 res!1577227) b!3898673))

(assert (= (and b!3898673 res!1577226) b!3898669))

(assert (= (and b!3898669 res!1577228) b!3898672))

(assert (= (and b!3898672 res!1577229) b!3898666))

(declare-fun m!4457899 () Bool)

(assert (=> b!3898665 m!4457899))

(declare-fun m!4457901 () Bool)

(assert (=> b!3898665 m!4457901))

(assert (=> b!3898665 m!4457901))

(declare-fun m!4457903 () Bool)

(assert (=> b!3898665 m!4457903))

(assert (=> b!3898665 m!4457903))

(declare-fun m!4457905 () Bool)

(assert (=> b!3898665 m!4457905))

(assert (=> b!3898671 m!4457899))

(assert (=> b!3898671 m!4457901))

(assert (=> b!3898671 m!4457901))

(assert (=> b!3898671 m!4457903))

(assert (=> b!3898671 m!4457903))

(declare-fun m!4457907 () Bool)

(assert (=> b!3898671 m!4457907))

(declare-fun m!4457909 () Bool)

(assert (=> d!1155133 m!4457909))

(declare-fun m!4457911 () Bool)

(assert (=> d!1155133 m!4457911))

(declare-fun m!4457913 () Bool)

(assert (=> d!1155133 m!4457913))

(declare-fun m!4457915 () Bool)

(assert (=> d!1155133 m!4457915))

(assert (=> b!3898673 m!4457899))

(declare-fun m!4457917 () Bool)

(assert (=> b!3898673 m!4457917))

(assert (=> b!3898673 m!4457537))

(assert (=> b!3898666 m!4457899))

(declare-fun m!4457919 () Bool)

(assert (=> b!3898666 m!4457919))

(assert (=> b!3898669 m!4457899))

(declare-fun m!4457921 () Bool)

(assert (=> b!3898670 m!4457921))

(declare-fun m!4457923 () Bool)

(assert (=> b!3898670 m!4457923))

(assert (=> b!3898670 m!4457921))

(declare-fun m!4457925 () Bool)

(assert (=> b!3898670 m!4457925))

(assert (=> b!3898670 m!4457437))

(assert (=> b!3898670 m!4457537))

(assert (=> b!3898670 m!4457437))

(assert (=> b!3898670 m!4457537))

(declare-fun m!4457927 () Bool)

(assert (=> b!3898670 m!4457927))

(assert (=> b!3898670 m!4457921))

(declare-fun m!4457929 () Bool)

(assert (=> b!3898670 m!4457929))

(declare-fun m!4457931 () Bool)

(assert (=> b!3898670 m!4457931))

(assert (=> b!3898670 m!4457921))

(declare-fun m!4457933 () Bool)

(assert (=> b!3898670 m!4457933))

(assert (=> b!3898672 m!4457899))

(declare-fun m!4457935 () Bool)

(assert (=> b!3898672 m!4457935))

(assert (=> b!3898672 m!4457935))

(declare-fun m!4457937 () Bool)

(assert (=> b!3898672 m!4457937))

(assert (=> b!3898668 m!4457437))

(assert (=> b!3898668 m!4457537))

(assert (=> b!3898668 m!4457437))

(assert (=> b!3898668 m!4457537))

(assert (=> b!3898668 m!4457927))

(declare-fun m!4457939 () Bool)

(assert (=> b!3898668 m!4457939))

(assert (=> bm!283729 d!1155133))

(declare-fun d!1155157 () Bool)

(declare-fun res!1577235 () Bool)

(declare-fun e!2410527 () Bool)

(assert (=> d!1155157 (=> (not res!1577235) (not e!2410527))))

(assert (=> d!1155157 (= res!1577235 (not (isEmpty!24580 (originalCharacters!7032 (h!46778 suffixTokens!72)))))))

(assert (=> d!1155157 (= (inv!55520 (h!46778 suffixTokens!72)) e!2410527)))

(declare-fun b!3898678 () Bool)

(declare-fun res!1577236 () Bool)

(assert (=> b!3898678 (=> (not res!1577236) (not e!2410527))))

(assert (=> b!3898678 (= res!1577236 (= (originalCharacters!7032 (h!46778 suffixTokens!72)) (list!15370 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72))))))))

(declare-fun b!3898679 () Bool)

(assert (=> b!3898679 (= e!2410527 (= (size!31049 (h!46778 suffixTokens!72)) (size!31050 (originalCharacters!7032 (h!46778 suffixTokens!72)))))))

(assert (= (and d!1155157 res!1577235) b!3898678))

(assert (= (and b!3898678 res!1577236) b!3898679))

(declare-fun b_lambda!113867 () Bool)

(assert (=> (not b_lambda!113867) (not b!3898678)))

(declare-fun t!319238 () Bool)

(declare-fun tb!229043 () Bool)

(assert (=> (and b!3898210 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) t!319238) tb!229043))

(declare-fun b!3898680 () Bool)

(declare-fun e!2410528 () Bool)

(declare-fun tp!1186311 () Bool)

(assert (=> b!3898680 (= e!2410528 (and (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72))))) tp!1186311))))

(declare-fun result!278236 () Bool)

(assert (=> tb!229043 (= result!278236 (and (inv!55525 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72)))) e!2410528))))

(assert (= tb!229043 b!3898680))

(declare-fun m!4457941 () Bool)

(assert (=> b!3898680 m!4457941))

(declare-fun m!4457943 () Bool)

(assert (=> tb!229043 m!4457943))

(assert (=> b!3898678 t!319238))

(declare-fun b_and!294443 () Bool)

(assert (= b_and!294399 (and (=> t!319238 result!278236) b_and!294443)))

(declare-fun tb!229045 () Bool)

(declare-fun t!319240 () Bool)

(assert (=> (and b!3898228 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) t!319240) tb!229045))

(declare-fun result!278238 () Bool)

(assert (= result!278238 result!278236))

(assert (=> b!3898678 t!319240))

(declare-fun b_and!294445 () Bool)

(assert (= b_and!294401 (and (=> t!319240 result!278238) b_and!294445)))

(declare-fun tb!229047 () Bool)

(declare-fun t!319242 () Bool)

(assert (=> (and b!3898224 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) t!319242) tb!229047))

(declare-fun result!278240 () Bool)

(assert (= result!278240 result!278236))

(assert (=> b!3898678 t!319242))

(declare-fun b_and!294447 () Bool)

(assert (= b_and!294403 (and (=> t!319242 result!278240) b_and!294447)))

(declare-fun t!319244 () Bool)

(declare-fun tb!229049 () Bool)

(assert (=> (and b!3898205 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) t!319244) tb!229049))

(declare-fun result!278242 () Bool)

(assert (= result!278242 result!278236))

(assert (=> b!3898678 t!319244))

(declare-fun b_and!294449 () Bool)

(assert (= b_and!294405 (and (=> t!319244 result!278242) b_and!294449)))

(declare-fun m!4457945 () Bool)

(assert (=> d!1155157 m!4457945))

(declare-fun m!4457947 () Bool)

(assert (=> b!3898678 m!4457947))

(assert (=> b!3898678 m!4457947))

(declare-fun m!4457949 () Bool)

(assert (=> b!3898678 m!4457949))

(declare-fun m!4457951 () Bool)

(assert (=> b!3898679 m!4457951))

(assert (=> b!3898198 d!1155157))

(declare-fun b!3898681 () Bool)

(declare-fun e!2410529 () Bool)

(declare-fun lt!1358130 () Option!8852)

(assert (=> b!3898681 (= e!2410529 (contains!8311 rules!2768 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))))

(declare-fun b!3898682 () Bool)

(declare-fun e!2410531 () Option!8852)

(declare-fun lt!1358126 () Option!8852)

(declare-fun lt!1358129 () Option!8852)

(assert (=> b!3898682 (= e!2410531 (ite (and ((_ is None!8851) lt!1358126) ((_ is None!8851) lt!1358129)) None!8851 (ite ((_ is None!8851) lt!1358129) lt!1358126 (ite ((_ is None!8851) lt!1358126) lt!1358129 (ite (>= (size!31049 (_1!23431 (v!39163 lt!1358126))) (size!31049 (_1!23431 (v!39163 lt!1358129)))) lt!1358126 lt!1358129)))))))

(declare-fun call!283744 () Option!8852)

(assert (=> b!3898682 (= lt!1358126 call!283744)))

(assert (=> b!3898682 (= lt!1358129 (maxPrefix!3325 thiss!20629 (t!319150 rules!2768) lt!1357946))))

(declare-fun b!3898683 () Bool)

(declare-fun res!1577240 () Bool)

(assert (=> b!3898683 (=> (not res!1577240) (not e!2410529))))

(assert (=> b!3898683 (= res!1577240 (< (size!31050 (_2!23431 (get!13674 lt!1358130))) (size!31050 lt!1357946)))))

(declare-fun b!3898684 () Bool)

(declare-fun res!1577241 () Bool)

(assert (=> b!3898684 (=> (not res!1577241) (not e!2410529))))

(assert (=> b!3898684 (= res!1577241 (= (value!203946 (_1!23431 (get!13674 lt!1358130))) (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358130)))))))))

(declare-fun b!3898685 () Bool)

(assert (=> b!3898685 (= e!2410531 call!283744)))

(declare-fun b!3898686 () Bool)

(declare-fun res!1577237 () Bool)

(assert (=> b!3898686 (=> (not res!1577237) (not e!2410529))))

(assert (=> b!3898686 (= res!1577237 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130)))) (_2!23431 (get!13674 lt!1358130))) lt!1357946))))

(declare-fun bm!283739 () Bool)

(assert (=> bm!283739 (= call!283744 (maxPrefixOneRule!2401 thiss!20629 (h!46779 rules!2768) lt!1357946))))

(declare-fun b!3898688 () Bool)

(declare-fun res!1577243 () Bool)

(assert (=> b!3898688 (=> (not res!1577243) (not e!2410529))))

(assert (=> b!3898688 (= res!1577243 (= (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130)))) (originalCharacters!7032 (_1!23431 (get!13674 lt!1358130)))))))

(declare-fun b!3898689 () Bool)

(declare-fun res!1577242 () Bool)

(assert (=> b!3898689 (=> (not res!1577242) (not e!2410529))))

(assert (=> b!3898689 (= res!1577242 (matchR!5432 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130))))))))

(declare-fun d!1155159 () Bool)

(declare-fun e!2410530 () Bool)

(assert (=> d!1155159 e!2410530))

(declare-fun res!1577239 () Bool)

(assert (=> d!1155159 (=> res!1577239 e!2410530)))

(assert (=> d!1155159 (= res!1577239 (isEmpty!24584 lt!1358130))))

(assert (=> d!1155159 (= lt!1358130 e!2410531)))

(declare-fun c!677725 () Bool)

(assert (=> d!1155159 (= c!677725 (and ((_ is Cons!41359) rules!2768) ((_ is Nil!41359) (t!319150 rules!2768))))))

(declare-fun lt!1358127 () Unit!59476)

(declare-fun lt!1358128 () Unit!59476)

(assert (=> d!1155159 (= lt!1358127 lt!1358128)))

(assert (=> d!1155159 (isPrefix!3527 lt!1357946 lt!1357946)))

(assert (=> d!1155159 (= lt!1358128 (lemmaIsPrefixRefl!2234 lt!1357946 lt!1357946))))

(assert (=> d!1155159 (rulesValidInductive!2304 thiss!20629 rules!2768)))

(assert (=> d!1155159 (= (maxPrefix!3325 thiss!20629 rules!2768 lt!1357946) lt!1358130)))

(declare-fun b!3898687 () Bool)

(assert (=> b!3898687 (= e!2410530 e!2410529)))

(declare-fun res!1577238 () Bool)

(assert (=> b!3898687 (=> (not res!1577238) (not e!2410529))))

(assert (=> b!3898687 (= res!1577238 (isDefined!6903 lt!1358130))))

(assert (= (and d!1155159 c!677725) b!3898685))

(assert (= (and d!1155159 (not c!677725)) b!3898682))

(assert (= (or b!3898685 b!3898682) bm!283739))

(assert (= (and d!1155159 (not res!1577239)) b!3898687))

(assert (= (and b!3898687 res!1577238) b!3898688))

(assert (= (and b!3898688 res!1577243) b!3898683))

(assert (= (and b!3898683 res!1577240) b!3898686))

(assert (= (and b!3898686 res!1577237) b!3898684))

(assert (= (and b!3898684 res!1577241) b!3898689))

(assert (= (and b!3898689 res!1577242) b!3898681))

(declare-fun m!4457953 () Bool)

(assert (=> d!1155159 m!4457953))

(assert (=> d!1155159 m!4457303))

(assert (=> d!1155159 m!4457305))

(declare-fun m!4457955 () Bool)

(assert (=> d!1155159 m!4457955))

(assert (=> bm!283739 m!4457259))

(declare-fun m!4457957 () Bool)

(assert (=> b!3898683 m!4457957))

(declare-fun m!4457959 () Bool)

(assert (=> b!3898683 m!4457959))

(assert (=> b!3898683 m!4457537))

(assert (=> b!3898689 m!4457957))

(declare-fun m!4457961 () Bool)

(assert (=> b!3898689 m!4457961))

(assert (=> b!3898689 m!4457961))

(declare-fun m!4457963 () Bool)

(assert (=> b!3898689 m!4457963))

(assert (=> b!3898689 m!4457963))

(declare-fun m!4457965 () Bool)

(assert (=> b!3898689 m!4457965))

(declare-fun m!4457967 () Bool)

(assert (=> b!3898687 m!4457967))

(assert (=> b!3898682 m!4457319))

(assert (=> b!3898684 m!4457957))

(declare-fun m!4457969 () Bool)

(assert (=> b!3898684 m!4457969))

(assert (=> b!3898684 m!4457969))

(declare-fun m!4457971 () Bool)

(assert (=> b!3898684 m!4457971))

(assert (=> b!3898681 m!4457957))

(declare-fun m!4457973 () Bool)

(assert (=> b!3898681 m!4457973))

(assert (=> b!3898688 m!4457957))

(assert (=> b!3898688 m!4457961))

(assert (=> b!3898688 m!4457961))

(assert (=> b!3898688 m!4457963))

(assert (=> b!3898686 m!4457957))

(assert (=> b!3898686 m!4457961))

(assert (=> b!3898686 m!4457961))

(assert (=> b!3898686 m!4457963))

(assert (=> b!3898686 m!4457963))

(declare-fun m!4457975 () Bool)

(assert (=> b!3898686 m!4457975))

(assert (=> b!3898199 d!1155159))

(declare-fun d!1155161 () Bool)

(declare-fun c!677731 () Bool)

(assert (=> d!1155161 (= c!677731 ((_ is IntegerValue!19986) (value!203946 (_1!23431 (v!39163 err!4377)))))))

(declare-fun e!2410540 () Bool)

(assert (=> d!1155161 (= (inv!21 (value!203946 (_1!23431 (v!39163 err!4377)))) e!2410540)))

(declare-fun b!3898700 () Bool)

(declare-fun inv!16 (TokenValue!6662) Bool)

(assert (=> b!3898700 (= e!2410540 (inv!16 (value!203946 (_1!23431 (v!39163 err!4377)))))))

(declare-fun b!3898701 () Bool)

(declare-fun e!2410538 () Bool)

(assert (=> b!3898701 (= e!2410540 e!2410538)))

(declare-fun c!677730 () Bool)

(assert (=> b!3898701 (= c!677730 ((_ is IntegerValue!19987) (value!203946 (_1!23431 (v!39163 err!4377)))))))

(declare-fun b!3898702 () Bool)

(declare-fun e!2410539 () Bool)

(declare-fun inv!15 (TokenValue!6662) Bool)

(assert (=> b!3898702 (= e!2410539 (inv!15 (value!203946 (_1!23431 (v!39163 err!4377)))))))

(declare-fun b!3898703 () Bool)

(declare-fun res!1577246 () Bool)

(assert (=> b!3898703 (=> res!1577246 e!2410539)))

(assert (=> b!3898703 (= res!1577246 (not ((_ is IntegerValue!19988) (value!203946 (_1!23431 (v!39163 err!4377))))))))

(assert (=> b!3898703 (= e!2410538 e!2410539)))

(declare-fun b!3898704 () Bool)

(declare-fun inv!17 (TokenValue!6662) Bool)

(assert (=> b!3898704 (= e!2410538 (inv!17 (value!203946 (_1!23431 (v!39163 err!4377)))))))

(assert (= (and d!1155161 c!677731) b!3898700))

(assert (= (and d!1155161 (not c!677731)) b!3898701))

(assert (= (and b!3898701 c!677730) b!3898704))

(assert (= (and b!3898701 (not c!677730)) b!3898703))

(assert (= (and b!3898703 (not res!1577246)) b!3898702))

(declare-fun m!4457977 () Bool)

(assert (=> b!3898700 m!4457977))

(declare-fun m!4457979 () Bool)

(assert (=> b!3898702 m!4457979))

(declare-fun m!4457981 () Bool)

(assert (=> b!3898704 m!4457981))

(assert (=> b!3898218 d!1155161))

(declare-fun b!3898708 () Bool)

(declare-fun e!2410542 () Bool)

(assert (=> b!3898708 (= e!2410542 (>= (size!31050 lt!1357946) (size!31050 lt!1357946)))))

(declare-fun b!3898707 () Bool)

(declare-fun e!2410541 () Bool)

(assert (=> b!3898707 (= e!2410541 (isPrefix!3527 (tail!5963 lt!1357946) (tail!5963 lt!1357946)))))

(declare-fun b!3898705 () Bool)

(declare-fun e!2410543 () Bool)

(assert (=> b!3898705 (= e!2410543 e!2410541)))

(declare-fun res!1577248 () Bool)

(assert (=> b!3898705 (=> (not res!1577248) (not e!2410541))))

(assert (=> b!3898705 (= res!1577248 (not ((_ is Nil!41357) lt!1357946)))))

(declare-fun b!3898706 () Bool)

(declare-fun res!1577250 () Bool)

(assert (=> b!3898706 (=> (not res!1577250) (not e!2410541))))

(assert (=> b!3898706 (= res!1577250 (= (head!8246 lt!1357946) (head!8246 lt!1357946)))))

(declare-fun d!1155163 () Bool)

(assert (=> d!1155163 e!2410542))

(declare-fun res!1577249 () Bool)

(assert (=> d!1155163 (=> res!1577249 e!2410542)))

(declare-fun lt!1358131 () Bool)

(assert (=> d!1155163 (= res!1577249 (not lt!1358131))))

(assert (=> d!1155163 (= lt!1358131 e!2410543)))

(declare-fun res!1577247 () Bool)

(assert (=> d!1155163 (=> res!1577247 e!2410543)))

(assert (=> d!1155163 (= res!1577247 ((_ is Nil!41357) lt!1357946))))

(assert (=> d!1155163 (= (isPrefix!3527 lt!1357946 lt!1357946) lt!1358131)))

(assert (= (and d!1155163 (not res!1577247)) b!3898705))

(assert (= (and b!3898705 res!1577248) b!3898706))

(assert (= (and b!3898706 res!1577250) b!3898707))

(assert (= (and d!1155163 (not res!1577249)) b!3898708))

(assert (=> b!3898708 m!4457537))

(assert (=> b!3898708 m!4457537))

(assert (=> b!3898707 m!4457675))

(assert (=> b!3898707 m!4457675))

(assert (=> b!3898707 m!4457675))

(assert (=> b!3898707 m!4457675))

(declare-fun m!4457983 () Bool)

(assert (=> b!3898707 m!4457983))

(declare-fun m!4457985 () Bool)

(assert (=> b!3898706 m!4457985))

(assert (=> b!3898706 m!4457985))

(assert (=> b!3898217 d!1155163))

(declare-fun d!1155165 () Bool)

(assert (=> d!1155165 (isPrefix!3527 lt!1357946 lt!1357946)))

(declare-fun lt!1358134 () Unit!59476)

(declare-fun choose!23065 (List!41481 List!41481) Unit!59476)

(assert (=> d!1155165 (= lt!1358134 (choose!23065 lt!1357946 lt!1357946))))

(assert (=> d!1155165 (= (lemmaIsPrefixRefl!2234 lt!1357946 lt!1357946) lt!1358134)))

(declare-fun bs!584793 () Bool)

(assert (= bs!584793 d!1155165))

(assert (=> bs!584793 m!4457303))

(declare-fun m!4457987 () Bool)

(assert (=> bs!584793 m!4457987))

(assert (=> b!3898217 d!1155165))

(declare-fun d!1155167 () Bool)

(assert (=> d!1155167 (= (isEmpty!24581 prefixTokens!80) ((_ is Nil!41358) prefixTokens!80))))

(assert (=> b!3898214 d!1155167))

(declare-fun d!1155169 () Bool)

(assert (=> d!1155169 (and (= lt!1357938 prefix!426) (= (_2!23431 (v!39163 lt!1357935)) suffix!1176))))

(declare-fun lt!1358137 () Unit!59476)

(declare-fun choose!23066 (List!41481 List!41481 List!41481 List!41481) Unit!59476)

(assert (=> d!1155169 (= lt!1358137 (choose!23066 lt!1357938 (_2!23431 (v!39163 lt!1357935)) prefix!426 suffix!1176))))

(assert (=> d!1155169 (= (++!10621 lt!1357938 (_2!23431 (v!39163 lt!1357935))) (++!10621 prefix!426 suffix!1176))))

(assert (=> d!1155169 (= (lemmaConcatSameAndSameSizesThenSameLists!504 lt!1357938 (_2!23431 (v!39163 lt!1357935)) prefix!426 suffix!1176) lt!1358137)))

(declare-fun bs!584794 () Bool)

(assert (= bs!584794 d!1155169))

(declare-fun m!4457989 () Bool)

(assert (=> bs!584794 m!4457989))

(assert (=> bs!584794 m!4457265))

(assert (=> bs!584794 m!4457239))

(assert (=> b!3898213 d!1155169))

(declare-fun d!1155171 () Bool)

(assert (=> d!1155171 (= (inv!55517 (tag!7292 (rule!9336 (h!46778 prefixTokens!80)))) (= (mod (str.len (value!203945 (tag!7292 (rule!9336 (h!46778 prefixTokens!80))))) 2) 0))))

(assert (=> b!3898215 d!1155171))

(declare-fun d!1155173 () Bool)

(declare-fun res!1577251 () Bool)

(declare-fun e!2410544 () Bool)

(assert (=> d!1155173 (=> (not res!1577251) (not e!2410544))))

(assert (=> d!1155173 (= res!1577251 (semiInverseModEq!2755 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))))))

(assert (=> d!1155173 (= (inv!55521 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) e!2410544)))

(declare-fun b!3898709 () Bool)

(assert (=> b!3898709 (= e!2410544 (equivClasses!2654 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))))))

(assert (= (and d!1155173 res!1577251) b!3898709))

(declare-fun m!4457991 () Bool)

(assert (=> d!1155173 m!4457991))

(declare-fun m!4457993 () Bool)

(assert (=> b!3898709 m!4457993))

(assert (=> b!3898215 d!1155173))

(declare-fun b!3898718 () Bool)

(declare-fun e!2410550 () List!41482)

(assert (=> b!3898718 (= e!2410550 (_1!23432 lt!1357936))))

(declare-fun d!1155175 () Bool)

(declare-fun e!2410549 () Bool)

(assert (=> d!1155175 e!2410549))

(declare-fun res!1577256 () Bool)

(assert (=> d!1155175 (=> (not res!1577256) (not e!2410549))))

(declare-fun lt!1358140 () List!41482)

(declare-fun content!6187 (List!41482) (InoxSet Token!12002))

(assert (=> d!1155175 (= res!1577256 (= (content!6187 lt!1358140) ((_ map or) (content!6187 lt!1357949) (content!6187 (_1!23432 lt!1357936)))))))

(assert (=> d!1155175 (= lt!1358140 e!2410550)))

(declare-fun c!677734 () Bool)

(assert (=> d!1155175 (= c!677734 ((_ is Nil!41358) lt!1357949))))

(assert (=> d!1155175 (= (++!10622 lt!1357949 (_1!23432 lt!1357936)) lt!1358140)))

(declare-fun b!3898719 () Bool)

(assert (=> b!3898719 (= e!2410550 (Cons!41358 (h!46778 lt!1357949) (++!10622 (t!319149 lt!1357949) (_1!23432 lt!1357936))))))

(declare-fun b!3898720 () Bool)

(declare-fun res!1577257 () Bool)

(assert (=> b!3898720 (=> (not res!1577257) (not e!2410549))))

(assert (=> b!3898720 (= res!1577257 (= (size!31052 lt!1358140) (+ (size!31052 lt!1357949) (size!31052 (_1!23432 lt!1357936)))))))

(declare-fun b!3898721 () Bool)

(assert (=> b!3898721 (= e!2410549 (or (not (= (_1!23432 lt!1357936) Nil!41358)) (= lt!1358140 lt!1357949)))))

(assert (= (and d!1155175 c!677734) b!3898718))

(assert (= (and d!1155175 (not c!677734)) b!3898719))

(assert (= (and d!1155175 res!1577256) b!3898720))

(assert (= (and b!3898720 res!1577257) b!3898721))

(declare-fun m!4457995 () Bool)

(assert (=> d!1155175 m!4457995))

(declare-fun m!4457997 () Bool)

(assert (=> d!1155175 m!4457997))

(declare-fun m!4457999 () Bool)

(assert (=> d!1155175 m!4457999))

(declare-fun m!4458001 () Bool)

(assert (=> b!3898719 m!4458001))

(declare-fun m!4458003 () Bool)

(assert (=> b!3898720 m!4458003))

(declare-fun m!4458005 () Bool)

(assert (=> b!3898720 m!4458005))

(declare-fun m!4458007 () Bool)

(assert (=> b!3898720 m!4458007))

(assert (=> b!3898211 d!1155175))

(declare-fun b!3898722 () Bool)

(declare-fun e!2410551 () Bool)

(declare-fun lt!1358145 () Option!8852)

(assert (=> b!3898722 (= e!2410551 (contains!8311 rules!2768 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))))

(declare-fun b!3898723 () Bool)

(declare-fun e!2410553 () Option!8852)

(declare-fun lt!1358141 () Option!8852)

(declare-fun lt!1358144 () Option!8852)

(assert (=> b!3898723 (= e!2410553 (ite (and ((_ is None!8851) lt!1358141) ((_ is None!8851) lt!1358144)) None!8851 (ite ((_ is None!8851) lt!1358144) lt!1358141 (ite ((_ is None!8851) lt!1358141) lt!1358144 (ite (>= (size!31049 (_1!23431 (v!39163 lt!1358141))) (size!31049 (_1!23431 (v!39163 lt!1358144)))) lt!1358141 lt!1358144)))))))

(declare-fun call!283745 () Option!8852)

(assert (=> b!3898723 (= lt!1358141 call!283745)))

(assert (=> b!3898723 (= lt!1358144 (maxPrefix!3325 thiss!20629 (t!319150 rules!2768) (++!10621 prefix!426 Nil!41357)))))

(declare-fun b!3898724 () Bool)

(declare-fun res!1577261 () Bool)

(assert (=> b!3898724 (=> (not res!1577261) (not e!2410551))))

(assert (=> b!3898724 (= res!1577261 (< (size!31050 (_2!23431 (get!13674 lt!1358145))) (size!31050 (++!10621 prefix!426 Nil!41357))))))

(declare-fun b!3898725 () Bool)

(declare-fun res!1577262 () Bool)

(assert (=> b!3898725 (=> (not res!1577262) (not e!2410551))))

(assert (=> b!3898725 (= res!1577262 (= (value!203946 (_1!23431 (get!13674 lt!1358145))) (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358145)))))))))

(declare-fun b!3898726 () Bool)

(assert (=> b!3898726 (= e!2410553 call!283745)))

(declare-fun b!3898727 () Bool)

(declare-fun res!1577258 () Bool)

(assert (=> b!3898727 (=> (not res!1577258) (not e!2410551))))

(assert (=> b!3898727 (= res!1577258 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145)))) (_2!23431 (get!13674 lt!1358145))) (++!10621 prefix!426 Nil!41357)))))

(declare-fun bm!283740 () Bool)

(assert (=> bm!283740 (= call!283745 (maxPrefixOneRule!2401 thiss!20629 (h!46779 rules!2768) (++!10621 prefix!426 Nil!41357)))))

(declare-fun b!3898729 () Bool)

(declare-fun res!1577264 () Bool)

(assert (=> b!3898729 (=> (not res!1577264) (not e!2410551))))

(assert (=> b!3898729 (= res!1577264 (= (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145)))) (originalCharacters!7032 (_1!23431 (get!13674 lt!1358145)))))))

(declare-fun b!3898730 () Bool)

(declare-fun res!1577263 () Bool)

(assert (=> b!3898730 (=> (not res!1577263) (not e!2410551))))

(assert (=> b!3898730 (= res!1577263 (matchR!5432 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145))))))))

(declare-fun d!1155177 () Bool)

(declare-fun e!2410552 () Bool)

(assert (=> d!1155177 e!2410552))

(declare-fun res!1577260 () Bool)

(assert (=> d!1155177 (=> res!1577260 e!2410552)))

(assert (=> d!1155177 (= res!1577260 (isEmpty!24584 lt!1358145))))

(assert (=> d!1155177 (= lt!1358145 e!2410553)))

(declare-fun c!677735 () Bool)

(assert (=> d!1155177 (= c!677735 (and ((_ is Cons!41359) rules!2768) ((_ is Nil!41359) (t!319150 rules!2768))))))

(declare-fun lt!1358142 () Unit!59476)

(declare-fun lt!1358143 () Unit!59476)

(assert (=> d!1155177 (= lt!1358142 lt!1358143)))

(assert (=> d!1155177 (isPrefix!3527 (++!10621 prefix!426 Nil!41357) (++!10621 prefix!426 Nil!41357))))

(assert (=> d!1155177 (= lt!1358143 (lemmaIsPrefixRefl!2234 (++!10621 prefix!426 Nil!41357) (++!10621 prefix!426 Nil!41357)))))

(assert (=> d!1155177 (rulesValidInductive!2304 thiss!20629 rules!2768)))

(assert (=> d!1155177 (= (maxPrefix!3325 thiss!20629 rules!2768 (++!10621 prefix!426 Nil!41357)) lt!1358145)))

(declare-fun b!3898728 () Bool)

(assert (=> b!3898728 (= e!2410552 e!2410551)))

(declare-fun res!1577259 () Bool)

(assert (=> b!3898728 (=> (not res!1577259) (not e!2410551))))

(assert (=> b!3898728 (= res!1577259 (isDefined!6903 lt!1358145))))

(assert (= (and d!1155177 c!677735) b!3898726))

(assert (= (and d!1155177 (not c!677735)) b!3898723))

(assert (= (or b!3898726 b!3898723) bm!283740))

(assert (= (and d!1155177 (not res!1577260)) b!3898728))

(assert (= (and b!3898728 res!1577259) b!3898729))

(assert (= (and b!3898729 res!1577264) b!3898724))

(assert (= (and b!3898724 res!1577261) b!3898727))

(assert (= (and b!3898727 res!1577258) b!3898725))

(assert (= (and b!3898725 res!1577262) b!3898730))

(assert (= (and b!3898730 res!1577263) b!3898722))

(declare-fun m!4458009 () Bool)

(assert (=> d!1155177 m!4458009))

(assert (=> d!1155177 m!4457313))

(assert (=> d!1155177 m!4457313))

(declare-fun m!4458011 () Bool)

(assert (=> d!1155177 m!4458011))

(assert (=> d!1155177 m!4457313))

(assert (=> d!1155177 m!4457313))

(declare-fun m!4458013 () Bool)

(assert (=> d!1155177 m!4458013))

(assert (=> d!1155177 m!4457955))

(assert (=> bm!283740 m!4457313))

(declare-fun m!4458015 () Bool)

(assert (=> bm!283740 m!4458015))

(declare-fun m!4458017 () Bool)

(assert (=> b!3898724 m!4458017))

(declare-fun m!4458019 () Bool)

(assert (=> b!3898724 m!4458019))

(assert (=> b!3898724 m!4457313))

(declare-fun m!4458021 () Bool)

(assert (=> b!3898724 m!4458021))

(assert (=> b!3898730 m!4458017))

(declare-fun m!4458023 () Bool)

(assert (=> b!3898730 m!4458023))

(assert (=> b!3898730 m!4458023))

(declare-fun m!4458025 () Bool)

(assert (=> b!3898730 m!4458025))

(assert (=> b!3898730 m!4458025))

(declare-fun m!4458027 () Bool)

(assert (=> b!3898730 m!4458027))

(declare-fun m!4458029 () Bool)

(assert (=> b!3898728 m!4458029))

(assert (=> b!3898723 m!4457313))

(declare-fun m!4458031 () Bool)

(assert (=> b!3898723 m!4458031))

(assert (=> b!3898725 m!4458017))

(declare-fun m!4458033 () Bool)

(assert (=> b!3898725 m!4458033))

(assert (=> b!3898725 m!4458033))

(declare-fun m!4458035 () Bool)

(assert (=> b!3898725 m!4458035))

(assert (=> b!3898722 m!4458017))

(declare-fun m!4458037 () Bool)

(assert (=> b!3898722 m!4458037))

(assert (=> b!3898729 m!4458017))

(assert (=> b!3898729 m!4458023))

(assert (=> b!3898729 m!4458023))

(assert (=> b!3898729 m!4458025))

(assert (=> b!3898727 m!4458017))

(assert (=> b!3898727 m!4458023))

(assert (=> b!3898727 m!4458023))

(assert (=> b!3898727 m!4458025))

(assert (=> b!3898727 m!4458025))

(declare-fun m!4458039 () Bool)

(assert (=> b!3898727 m!4458039))

(assert (=> b!3898231 d!1155177))

(declare-fun b!3898731 () Bool)

(declare-fun e!2410555 () List!41481)

(assert (=> b!3898731 (= e!2410555 Nil!41357)))

(declare-fun b!3898732 () Bool)

(assert (=> b!3898732 (= e!2410555 (Cons!41357 (h!46777 prefix!426) (++!10621 (t!319148 prefix!426) Nil!41357)))))

(declare-fun d!1155179 () Bool)

(declare-fun e!2410554 () Bool)

(assert (=> d!1155179 e!2410554))

(declare-fun res!1577266 () Bool)

(assert (=> d!1155179 (=> (not res!1577266) (not e!2410554))))

(declare-fun lt!1358146 () List!41481)

(assert (=> d!1155179 (= res!1577266 (= (content!6186 lt!1358146) ((_ map or) (content!6186 prefix!426) (content!6186 Nil!41357))))))

(assert (=> d!1155179 (= lt!1358146 e!2410555)))

(declare-fun c!677736 () Bool)

(assert (=> d!1155179 (= c!677736 ((_ is Nil!41357) prefix!426))))

(assert (=> d!1155179 (= (++!10621 prefix!426 Nil!41357) lt!1358146)))

(declare-fun b!3898733 () Bool)

(declare-fun res!1577265 () Bool)

(assert (=> b!3898733 (=> (not res!1577265) (not e!2410554))))

(assert (=> b!3898733 (= res!1577265 (= (size!31050 lt!1358146) (+ (size!31050 prefix!426) (size!31050 Nil!41357))))))

(declare-fun b!3898734 () Bool)

(assert (=> b!3898734 (= e!2410554 (or (not (= Nil!41357 Nil!41357)) (= lt!1358146 prefix!426)))))

(assert (= (and d!1155179 c!677736) b!3898731))

(assert (= (and d!1155179 (not c!677736)) b!3898732))

(assert (= (and d!1155179 res!1577266) b!3898733))

(assert (= (and b!3898733 res!1577265) b!3898734))

(declare-fun m!4458041 () Bool)

(assert (=> b!3898732 m!4458041))

(declare-fun m!4458043 () Bool)

(assert (=> d!1155179 m!4458043))

(declare-fun m!4458045 () Bool)

(assert (=> d!1155179 m!4458045))

(declare-fun m!4458047 () Bool)

(assert (=> d!1155179 m!4458047))

(declare-fun m!4458049 () Bool)

(assert (=> b!3898733 m!4458049))

(declare-fun m!4458051 () Bool)

(assert (=> b!3898733 m!4458051))

(assert (=> b!3898733 m!4457437))

(assert (=> b!3898231 d!1155179))

(declare-fun b!3898735 () Bool)

(declare-fun e!2410556 () Bool)

(declare-fun lt!1358151 () Option!8852)

(assert (=> b!3898735 (= e!2410556 (contains!8311 rules!2768 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))))

(declare-fun b!3898736 () Bool)

(declare-fun e!2410558 () Option!8852)

(declare-fun lt!1358147 () Option!8852)

(declare-fun lt!1358150 () Option!8852)

(assert (=> b!3898736 (= e!2410558 (ite (and ((_ is None!8851) lt!1358147) ((_ is None!8851) lt!1358150)) None!8851 (ite ((_ is None!8851) lt!1358150) lt!1358147 (ite ((_ is None!8851) lt!1358147) lt!1358150 (ite (>= (size!31049 (_1!23431 (v!39163 lt!1358147))) (size!31049 (_1!23431 (v!39163 lt!1358150)))) lt!1358147 lt!1358150)))))))

(declare-fun call!283746 () Option!8852)

(assert (=> b!3898736 (= lt!1358147 call!283746)))

(assert (=> b!3898736 (= lt!1358150 (maxPrefix!3325 thiss!20629 (t!319150 rules!2768) prefix!426))))

(declare-fun b!3898737 () Bool)

(declare-fun res!1577270 () Bool)

(assert (=> b!3898737 (=> (not res!1577270) (not e!2410556))))

(assert (=> b!3898737 (= res!1577270 (< (size!31050 (_2!23431 (get!13674 lt!1358151))) (size!31050 prefix!426)))))

(declare-fun b!3898738 () Bool)

(declare-fun res!1577271 () Bool)

(assert (=> b!3898738 (=> (not res!1577271) (not e!2410556))))

(assert (=> b!3898738 (= res!1577271 (= (value!203946 (_1!23431 (get!13674 lt!1358151))) (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358151)))))))))

(declare-fun b!3898739 () Bool)

(assert (=> b!3898739 (= e!2410558 call!283746)))

(declare-fun b!3898740 () Bool)

(declare-fun res!1577267 () Bool)

(assert (=> b!3898740 (=> (not res!1577267) (not e!2410556))))

(assert (=> b!3898740 (= res!1577267 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151)))) (_2!23431 (get!13674 lt!1358151))) prefix!426))))

(declare-fun bm!283741 () Bool)

(assert (=> bm!283741 (= call!283746 (maxPrefixOneRule!2401 thiss!20629 (h!46779 rules!2768) prefix!426))))

(declare-fun b!3898742 () Bool)

(declare-fun res!1577273 () Bool)

(assert (=> b!3898742 (=> (not res!1577273) (not e!2410556))))

(assert (=> b!3898742 (= res!1577273 (= (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151)))) (originalCharacters!7032 (_1!23431 (get!13674 lt!1358151)))))))

(declare-fun b!3898743 () Bool)

(declare-fun res!1577272 () Bool)

(assert (=> b!3898743 (=> (not res!1577272) (not e!2410556))))

(assert (=> b!3898743 (= res!1577272 (matchR!5432 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151))))))))

(declare-fun d!1155181 () Bool)

(declare-fun e!2410557 () Bool)

(assert (=> d!1155181 e!2410557))

(declare-fun res!1577269 () Bool)

(assert (=> d!1155181 (=> res!1577269 e!2410557)))

(assert (=> d!1155181 (= res!1577269 (isEmpty!24584 lt!1358151))))

(assert (=> d!1155181 (= lt!1358151 e!2410558)))

(declare-fun c!677737 () Bool)

(assert (=> d!1155181 (= c!677737 (and ((_ is Cons!41359) rules!2768) ((_ is Nil!41359) (t!319150 rules!2768))))))

(declare-fun lt!1358148 () Unit!59476)

(declare-fun lt!1358149 () Unit!59476)

(assert (=> d!1155181 (= lt!1358148 lt!1358149)))

(assert (=> d!1155181 (isPrefix!3527 prefix!426 prefix!426)))

(assert (=> d!1155181 (= lt!1358149 (lemmaIsPrefixRefl!2234 prefix!426 prefix!426))))

(assert (=> d!1155181 (rulesValidInductive!2304 thiss!20629 rules!2768)))

(assert (=> d!1155181 (= (maxPrefix!3325 thiss!20629 rules!2768 prefix!426) lt!1358151)))

(declare-fun b!3898741 () Bool)

(assert (=> b!3898741 (= e!2410557 e!2410556)))

(declare-fun res!1577268 () Bool)

(assert (=> b!3898741 (=> (not res!1577268) (not e!2410556))))

(assert (=> b!3898741 (= res!1577268 (isDefined!6903 lt!1358151))))

(assert (= (and d!1155181 c!677737) b!3898739))

(assert (= (and d!1155181 (not c!677737)) b!3898736))

(assert (= (or b!3898739 b!3898736) bm!283741))

(assert (= (and d!1155181 (not res!1577269)) b!3898741))

(assert (= (and b!3898741 res!1577268) b!3898742))

(assert (= (and b!3898742 res!1577273) b!3898737))

(assert (= (and b!3898737 res!1577270) b!3898740))

(assert (= (and b!3898740 res!1577267) b!3898738))

(assert (= (and b!3898738 res!1577271) b!3898743))

(assert (= (and b!3898743 res!1577272) b!3898735))

(declare-fun m!4458053 () Bool)

(assert (=> d!1155181 m!4458053))

(declare-fun m!4458055 () Bool)

(assert (=> d!1155181 m!4458055))

(declare-fun m!4458057 () Bool)

(assert (=> d!1155181 m!4458057))

(assert (=> d!1155181 m!4457955))

(declare-fun m!4458059 () Bool)

(assert (=> bm!283741 m!4458059))

(declare-fun m!4458061 () Bool)

(assert (=> b!3898737 m!4458061))

(declare-fun m!4458063 () Bool)

(assert (=> b!3898737 m!4458063))

(assert (=> b!3898737 m!4458051))

(assert (=> b!3898743 m!4458061))

(declare-fun m!4458065 () Bool)

(assert (=> b!3898743 m!4458065))

(assert (=> b!3898743 m!4458065))

(declare-fun m!4458067 () Bool)

(assert (=> b!3898743 m!4458067))

(assert (=> b!3898743 m!4458067))

(declare-fun m!4458069 () Bool)

(assert (=> b!3898743 m!4458069))

(declare-fun m!4458071 () Bool)

(assert (=> b!3898741 m!4458071))

(declare-fun m!4458073 () Bool)

(assert (=> b!3898736 m!4458073))

(assert (=> b!3898738 m!4458061))

(declare-fun m!4458075 () Bool)

(assert (=> b!3898738 m!4458075))

(assert (=> b!3898738 m!4458075))

(declare-fun m!4458077 () Bool)

(assert (=> b!3898738 m!4458077))

(assert (=> b!3898735 m!4458061))

(declare-fun m!4458079 () Bool)

(assert (=> b!3898735 m!4458079))

(assert (=> b!3898742 m!4458061))

(assert (=> b!3898742 m!4458065))

(assert (=> b!3898742 m!4458065))

(assert (=> b!3898742 m!4458067))

(assert (=> b!3898740 m!4458061))

(assert (=> b!3898740 m!4458065))

(assert (=> b!3898740 m!4458065))

(assert (=> b!3898740 m!4458067))

(assert (=> b!3898740 m!4458067))

(declare-fun m!4458081 () Bool)

(assert (=> b!3898740 m!4458081))

(assert (=> b!3898231 d!1155181))

(declare-fun d!1155183 () Bool)

(assert (=> d!1155183 (= (isDefined!6903 (maxPrefix!3325 thiss!20629 rules!2768 prefix!426)) (not (isEmpty!24584 (maxPrefix!3325 thiss!20629 rules!2768 prefix!426))))))

(declare-fun bs!584795 () Bool)

(assert (= bs!584795 d!1155183))

(assert (=> bs!584795 m!4457311))

(declare-fun m!4458083 () Bool)

(assert (=> bs!584795 m!4458083))

(assert (=> b!3898231 d!1155183))

(declare-fun d!1155185 () Bool)

(assert (=> d!1155185 (= (maxPrefix!3325 thiss!20629 rules!2768 (++!10621 prefix!426 Nil!41357)) (Some!8851 (tuple2!40595 (_1!23431 (v!39163 lt!1357935)) Nil!41357)))))

(declare-fun lt!1358154 () Unit!59476)

(declare-fun choose!23067 (LexerInterface!6021 List!41483 List!41481 List!41481 List!41481 Token!12002 List!41481 List!41481) Unit!59476)

(assert (=> d!1155185 (= lt!1358154 (choose!23067 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41357 (_1!23431 (v!39163 lt!1357935)) suffix!1176 Nil!41357))))

(assert (=> d!1155185 (not (isEmpty!24582 rules!2768))))

(assert (=> d!1155185 (= (lemmaMaxPrefixThenWithShorterSuffix!34 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41357 (_1!23431 (v!39163 lt!1357935)) suffix!1176 Nil!41357) lt!1358154)))

(declare-fun bs!584796 () Bool)

(assert (= bs!584796 d!1155185))

(assert (=> bs!584796 m!4457313))

(assert (=> bs!584796 m!4457313))

(assert (=> bs!584796 m!4457315))

(declare-fun m!4458085 () Bool)

(assert (=> bs!584796 m!4458085))

(assert (=> bs!584796 m!4457245))

(assert (=> b!3898231 d!1155185))

(declare-fun d!1155187 () Bool)

(declare-fun c!677739 () Bool)

(assert (=> d!1155187 (= c!677739 ((_ is IntegerValue!19986) (value!203946 (h!46778 suffixTokens!72))))))

(declare-fun e!2410561 () Bool)

(assert (=> d!1155187 (= (inv!21 (value!203946 (h!46778 suffixTokens!72))) e!2410561)))

(declare-fun b!3898744 () Bool)

(assert (=> b!3898744 (= e!2410561 (inv!16 (value!203946 (h!46778 suffixTokens!72))))))

(declare-fun b!3898745 () Bool)

(declare-fun e!2410559 () Bool)

(assert (=> b!3898745 (= e!2410561 e!2410559)))

(declare-fun c!677738 () Bool)

(assert (=> b!3898745 (= c!677738 ((_ is IntegerValue!19987) (value!203946 (h!46778 suffixTokens!72))))))

(declare-fun b!3898746 () Bool)

(declare-fun e!2410560 () Bool)

(assert (=> b!3898746 (= e!2410560 (inv!15 (value!203946 (h!46778 suffixTokens!72))))))

(declare-fun b!3898747 () Bool)

(declare-fun res!1577274 () Bool)

(assert (=> b!3898747 (=> res!1577274 e!2410560)))

(assert (=> b!3898747 (= res!1577274 (not ((_ is IntegerValue!19988) (value!203946 (h!46778 suffixTokens!72)))))))

(assert (=> b!3898747 (= e!2410559 e!2410560)))

(declare-fun b!3898748 () Bool)

(assert (=> b!3898748 (= e!2410559 (inv!17 (value!203946 (h!46778 suffixTokens!72))))))

(assert (= (and d!1155187 c!677739) b!3898744))

(assert (= (and d!1155187 (not c!677739)) b!3898745))

(assert (= (and b!3898745 c!677738) b!3898748))

(assert (= (and b!3898745 (not c!677738)) b!3898747))

(assert (= (and b!3898747 (not res!1577274)) b!3898746))

(declare-fun m!4458087 () Bool)

(assert (=> b!3898744 m!4458087))

(declare-fun m!4458089 () Bool)

(assert (=> b!3898746 m!4458089))

(declare-fun m!4458091 () Bool)

(assert (=> b!3898748 m!4458091))

(assert (=> b!3898233 d!1155187))

(declare-fun d!1155189 () Bool)

(declare-fun res!1577275 () Bool)

(declare-fun e!2410562 () Bool)

(assert (=> d!1155189 (=> (not res!1577275) (not e!2410562))))

(assert (=> d!1155189 (= res!1577275 (not (isEmpty!24580 (originalCharacters!7032 (_1!23431 (v!39163 err!4377))))))))

(assert (=> d!1155189 (= (inv!55520 (_1!23431 (v!39163 err!4377))) e!2410562)))

(declare-fun b!3898749 () Bool)

(declare-fun res!1577276 () Bool)

(assert (=> b!3898749 (=> (not res!1577276) (not e!2410562))))

(assert (=> b!3898749 (= res!1577276 (= (originalCharacters!7032 (_1!23431 (v!39163 err!4377))) (list!15370 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377)))))))))

(declare-fun b!3898750 () Bool)

(assert (=> b!3898750 (= e!2410562 (= (size!31049 (_1!23431 (v!39163 err!4377))) (size!31050 (originalCharacters!7032 (_1!23431 (v!39163 err!4377))))))))

(assert (= (and d!1155189 res!1577275) b!3898749))

(assert (= (and b!3898749 res!1577276) b!3898750))

(declare-fun b_lambda!113869 () Bool)

(assert (=> (not b_lambda!113869) (not b!3898749)))

(declare-fun tb!229051 () Bool)

(declare-fun t!319246 () Bool)

(assert (=> (and b!3898210 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) t!319246) tb!229051))

(declare-fun b!3898751 () Bool)

(declare-fun e!2410563 () Bool)

(declare-fun tp!1186312 () Bool)

(assert (=> b!3898751 (= e!2410563 (and (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377)))))) tp!1186312))))

(declare-fun result!278244 () Bool)

(assert (=> tb!229051 (= result!278244 (and (inv!55525 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377))))) e!2410563))))

(assert (= tb!229051 b!3898751))

(declare-fun m!4458093 () Bool)

(assert (=> b!3898751 m!4458093))

(declare-fun m!4458095 () Bool)

(assert (=> tb!229051 m!4458095))

(assert (=> b!3898749 t!319246))

(declare-fun b_and!294451 () Bool)

(assert (= b_and!294443 (and (=> t!319246 result!278244) b_and!294451)))

(declare-fun tb!229053 () Bool)

(declare-fun t!319248 () Bool)

(assert (=> (and b!3898228 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) t!319248) tb!229053))

(declare-fun result!278246 () Bool)

(assert (= result!278246 result!278244))

(assert (=> b!3898749 t!319248))

(declare-fun b_and!294453 () Bool)

(assert (= b_and!294445 (and (=> t!319248 result!278246) b_and!294453)))

(declare-fun tb!229055 () Bool)

(declare-fun t!319250 () Bool)

(assert (=> (and b!3898224 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) t!319250) tb!229055))

(declare-fun result!278248 () Bool)

(assert (= result!278248 result!278244))

(assert (=> b!3898749 t!319250))

(declare-fun b_and!294455 () Bool)

(assert (= b_and!294447 (and (=> t!319250 result!278248) b_and!294455)))

(declare-fun t!319252 () Bool)

(declare-fun tb!229057 () Bool)

(assert (=> (and b!3898205 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) t!319252) tb!229057))

(declare-fun result!278250 () Bool)

(assert (= result!278250 result!278244))

(assert (=> b!3898749 t!319252))

(declare-fun b_and!294457 () Bool)

(assert (= b_and!294449 (and (=> t!319252 result!278250) b_and!294457)))

(declare-fun m!4458097 () Bool)

(assert (=> d!1155189 m!4458097))

(declare-fun m!4458099 () Bool)

(assert (=> b!3898749 m!4458099))

(assert (=> b!3898749 m!4458099))

(declare-fun m!4458101 () Bool)

(assert (=> b!3898749 m!4458101))

(declare-fun m!4458103 () Bool)

(assert (=> b!3898750 m!4458103))

(assert (=> b!3898232 d!1155189))

(declare-fun d!1155191 () Bool)

(assert (=> d!1155191 (= (isEmpty!24582 rules!2768) ((_ is Nil!41359) rules!2768))))

(assert (=> b!3898229 d!1155191))

(declare-fun b!3898752 () Bool)

(declare-fun e!2410564 () Bool)

(declare-fun lt!1358156 () tuple2!40596)

(assert (=> b!3898752 (= e!2410564 (not (isEmpty!24581 (_1!23432 lt!1358156))))))

(declare-fun b!3898753 () Bool)

(declare-fun e!2410566 () Bool)

(assert (=> b!3898753 (= e!2410566 e!2410564)))

(declare-fun res!1577277 () Bool)

(assert (=> b!3898753 (= res!1577277 (< (size!31050 (_2!23432 lt!1358156)) (size!31050 lt!1357946)))))

(assert (=> b!3898753 (=> (not res!1577277) (not e!2410564))))

(declare-fun b!3898754 () Bool)

(declare-fun e!2410565 () tuple2!40596)

(assert (=> b!3898754 (= e!2410565 (tuple2!40597 Nil!41358 lt!1357946))))

(declare-fun b!3898755 () Bool)

(assert (=> b!3898755 (= e!2410566 (= (_2!23432 lt!1358156) lt!1357946))))

(declare-fun d!1155193 () Bool)

(assert (=> d!1155193 e!2410566))

(declare-fun c!677740 () Bool)

(assert (=> d!1155193 (= c!677740 (> (size!31052 (_1!23432 lt!1358156)) 0))))

(assert (=> d!1155193 (= lt!1358156 e!2410565)))

(declare-fun c!677741 () Bool)

(declare-fun lt!1358155 () Option!8852)

(assert (=> d!1155193 (= c!677741 ((_ is Some!8851) lt!1358155))))

(assert (=> d!1155193 (= lt!1358155 (maxPrefix!3325 thiss!20629 rules!2768 lt!1357946))))

(assert (=> d!1155193 (= (lexList!1789 thiss!20629 rules!2768 lt!1357946) lt!1358156)))

(declare-fun b!3898756 () Bool)

(declare-fun lt!1358157 () tuple2!40596)

(assert (=> b!3898756 (= e!2410565 (tuple2!40597 (Cons!41358 (_1!23431 (v!39163 lt!1358155)) (_1!23432 lt!1358157)) (_2!23432 lt!1358157)))))

(assert (=> b!3898756 (= lt!1358157 (lexList!1789 thiss!20629 rules!2768 (_2!23431 (v!39163 lt!1358155))))))

(assert (= (and d!1155193 c!677741) b!3898756))

(assert (= (and d!1155193 (not c!677741)) b!3898754))

(assert (= (and d!1155193 c!677740) b!3898753))

(assert (= (and d!1155193 (not c!677740)) b!3898755))

(assert (= (and b!3898753 res!1577277) b!3898752))

(declare-fun m!4458105 () Bool)

(assert (=> b!3898752 m!4458105))

(declare-fun m!4458107 () Bool)

(assert (=> b!3898753 m!4458107))

(assert (=> b!3898753 m!4457537))

(declare-fun m!4458109 () Bool)

(assert (=> d!1155193 m!4458109))

(assert (=> d!1155193 m!4457297))

(declare-fun m!4458111 () Bool)

(assert (=> b!3898756 m!4458111))

(assert (=> b!3898208 d!1155193))

(declare-fun b!3898757 () Bool)

(declare-fun e!2410568 () List!41482)

(assert (=> b!3898757 (= e!2410568 suffixTokens!72)))

(declare-fun d!1155195 () Bool)

(declare-fun e!2410567 () Bool)

(assert (=> d!1155195 e!2410567))

(declare-fun res!1577278 () Bool)

(assert (=> d!1155195 (=> (not res!1577278) (not e!2410567))))

(declare-fun lt!1358158 () List!41482)

(assert (=> d!1155195 (= res!1577278 (= (content!6187 lt!1358158) ((_ map or) (content!6187 prefixTokens!80) (content!6187 suffixTokens!72))))))

(assert (=> d!1155195 (= lt!1358158 e!2410568)))

(declare-fun c!677742 () Bool)

(assert (=> d!1155195 (= c!677742 ((_ is Nil!41358) prefixTokens!80))))

(assert (=> d!1155195 (= (++!10622 prefixTokens!80 suffixTokens!72) lt!1358158)))

(declare-fun b!3898758 () Bool)

(assert (=> b!3898758 (= e!2410568 (Cons!41358 (h!46778 prefixTokens!80) (++!10622 (t!319149 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3898759 () Bool)

(declare-fun res!1577279 () Bool)

(assert (=> b!3898759 (=> (not res!1577279) (not e!2410567))))

(assert (=> b!3898759 (= res!1577279 (= (size!31052 lt!1358158) (+ (size!31052 prefixTokens!80) (size!31052 suffixTokens!72))))))

(declare-fun b!3898760 () Bool)

(assert (=> b!3898760 (= e!2410567 (or (not (= suffixTokens!72 Nil!41358)) (= lt!1358158 prefixTokens!80)))))

(assert (= (and d!1155195 c!677742) b!3898757))

(assert (= (and d!1155195 (not c!677742)) b!3898758))

(assert (= (and d!1155195 res!1577278) b!3898759))

(assert (= (and b!3898759 res!1577279) b!3898760))

(declare-fun m!4458113 () Bool)

(assert (=> d!1155195 m!4458113))

(declare-fun m!4458115 () Bool)

(assert (=> d!1155195 m!4458115))

(declare-fun m!4458117 () Bool)

(assert (=> d!1155195 m!4458117))

(declare-fun m!4458119 () Bool)

(assert (=> b!3898758 m!4458119))

(declare-fun m!4458121 () Bool)

(assert (=> b!3898759 m!4458121))

(declare-fun m!4458123 () Bool)

(assert (=> b!3898759 m!4458123))

(declare-fun m!4458125 () Bool)

(assert (=> b!3898759 m!4458125))

(assert (=> b!3898208 d!1155195))

(declare-fun b!3898761 () Bool)

(declare-fun e!2410570 () List!41481)

(assert (=> b!3898761 (= e!2410570 suffix!1176)))

(declare-fun b!3898762 () Bool)

(assert (=> b!3898762 (= e!2410570 (Cons!41357 (h!46777 prefix!426) (++!10621 (t!319148 prefix!426) suffix!1176)))))

(declare-fun d!1155197 () Bool)

(declare-fun e!2410569 () Bool)

(assert (=> d!1155197 e!2410569))

(declare-fun res!1577281 () Bool)

(assert (=> d!1155197 (=> (not res!1577281) (not e!2410569))))

(declare-fun lt!1358159 () List!41481)

(assert (=> d!1155197 (= res!1577281 (= (content!6186 lt!1358159) ((_ map or) (content!6186 prefix!426) (content!6186 suffix!1176))))))

(assert (=> d!1155197 (= lt!1358159 e!2410570)))

(declare-fun c!677743 () Bool)

(assert (=> d!1155197 (= c!677743 ((_ is Nil!41357) prefix!426))))

(assert (=> d!1155197 (= (++!10621 prefix!426 suffix!1176) lt!1358159)))

(declare-fun b!3898763 () Bool)

(declare-fun res!1577280 () Bool)

(assert (=> b!3898763 (=> (not res!1577280) (not e!2410569))))

(assert (=> b!3898763 (= res!1577280 (= (size!31050 lt!1358159) (+ (size!31050 prefix!426) (size!31050 suffix!1176))))))

(declare-fun b!3898764 () Bool)

(assert (=> b!3898764 (= e!2410569 (or (not (= suffix!1176 Nil!41357)) (= lt!1358159 prefix!426)))))

(assert (= (and d!1155197 c!677743) b!3898761))

(assert (= (and d!1155197 (not c!677743)) b!3898762))

(assert (= (and d!1155197 res!1577281) b!3898763))

(assert (= (and b!3898763 res!1577280) b!3898764))

(declare-fun m!4458127 () Bool)

(assert (=> b!3898762 m!4458127))

(declare-fun m!4458129 () Bool)

(assert (=> d!1155197 m!4458129))

(assert (=> d!1155197 m!4458045))

(declare-fun m!4458131 () Bool)

(assert (=> d!1155197 m!4458131))

(declare-fun m!4458133 () Bool)

(assert (=> b!3898763 m!4458133))

(assert (=> b!3898763 m!4458051))

(assert (=> b!3898763 m!4457429))

(assert (=> b!3898208 d!1155197))

(declare-fun d!1155199 () Bool)

(declare-fun c!677745 () Bool)

(assert (=> d!1155199 (= c!677745 ((_ is IntegerValue!19986) (value!203946 (h!46778 prefixTokens!80))))))

(declare-fun e!2410573 () Bool)

(assert (=> d!1155199 (= (inv!21 (value!203946 (h!46778 prefixTokens!80))) e!2410573)))

(declare-fun b!3898765 () Bool)

(assert (=> b!3898765 (= e!2410573 (inv!16 (value!203946 (h!46778 prefixTokens!80))))))

(declare-fun b!3898766 () Bool)

(declare-fun e!2410571 () Bool)

(assert (=> b!3898766 (= e!2410573 e!2410571)))

(declare-fun c!677744 () Bool)

(assert (=> b!3898766 (= c!677744 ((_ is IntegerValue!19987) (value!203946 (h!46778 prefixTokens!80))))))

(declare-fun b!3898767 () Bool)

(declare-fun e!2410572 () Bool)

(assert (=> b!3898767 (= e!2410572 (inv!15 (value!203946 (h!46778 prefixTokens!80))))))

(declare-fun b!3898768 () Bool)

(declare-fun res!1577282 () Bool)

(assert (=> b!3898768 (=> res!1577282 e!2410572)))

(assert (=> b!3898768 (= res!1577282 (not ((_ is IntegerValue!19988) (value!203946 (h!46778 prefixTokens!80)))))))

(assert (=> b!3898768 (= e!2410571 e!2410572)))

(declare-fun b!3898769 () Bool)

(assert (=> b!3898769 (= e!2410571 (inv!17 (value!203946 (h!46778 prefixTokens!80))))))

(assert (= (and d!1155199 c!677745) b!3898765))

(assert (= (and d!1155199 (not c!677745)) b!3898766))

(assert (= (and b!3898766 c!677744) b!3898769))

(assert (= (and b!3898766 (not c!677744)) b!3898768))

(assert (= (and b!3898768 (not res!1577282)) b!3898767))

(declare-fun m!4458135 () Bool)

(assert (=> b!3898765 m!4458135))

(declare-fun m!4458137 () Bool)

(assert (=> b!3898767 m!4458137))

(declare-fun m!4458139 () Bool)

(assert (=> b!3898769 m!4458139))

(assert (=> b!3898230 d!1155199))

(declare-fun d!1155201 () Bool)

(declare-fun res!1577283 () Bool)

(declare-fun e!2410574 () Bool)

(assert (=> d!1155201 (=> (not res!1577283) (not e!2410574))))

(assert (=> d!1155201 (= res!1577283 (not (isEmpty!24580 (originalCharacters!7032 (h!46778 prefixTokens!80)))))))

(assert (=> d!1155201 (= (inv!55520 (h!46778 prefixTokens!80)) e!2410574)))

(declare-fun b!3898770 () Bool)

(declare-fun res!1577284 () Bool)

(assert (=> b!3898770 (=> (not res!1577284) (not e!2410574))))

(assert (=> b!3898770 (= res!1577284 (= (originalCharacters!7032 (h!46778 prefixTokens!80)) (list!15370 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80))))))))

(declare-fun b!3898771 () Bool)

(assert (=> b!3898771 (= e!2410574 (= (size!31049 (h!46778 prefixTokens!80)) (size!31050 (originalCharacters!7032 (h!46778 prefixTokens!80)))))))

(assert (= (and d!1155201 res!1577283) b!3898770))

(assert (= (and b!3898770 res!1577284) b!3898771))

(declare-fun b_lambda!113871 () Bool)

(assert (=> (not b_lambda!113871) (not b!3898770)))

(declare-fun t!319254 () Bool)

(declare-fun tb!229059 () Bool)

(assert (=> (and b!3898210 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) t!319254) tb!229059))

(declare-fun b!3898772 () Bool)

(declare-fun e!2410575 () Bool)

(declare-fun tp!1186313 () Bool)

(assert (=> b!3898772 (= e!2410575 (and (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80))))) tp!1186313))))

(declare-fun result!278252 () Bool)

(assert (=> tb!229059 (= result!278252 (and (inv!55525 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80)))) e!2410575))))

(assert (= tb!229059 b!3898772))

(declare-fun m!4458141 () Bool)

(assert (=> b!3898772 m!4458141))

(declare-fun m!4458143 () Bool)

(assert (=> tb!229059 m!4458143))

(assert (=> b!3898770 t!319254))

(declare-fun b_and!294459 () Bool)

(assert (= b_and!294451 (and (=> t!319254 result!278252) b_and!294459)))

(declare-fun t!319256 () Bool)

(declare-fun tb!229061 () Bool)

(assert (=> (and b!3898228 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) t!319256) tb!229061))

(declare-fun result!278254 () Bool)

(assert (= result!278254 result!278252))

(assert (=> b!3898770 t!319256))

(declare-fun b_and!294461 () Bool)

(assert (= b_and!294453 (and (=> t!319256 result!278254) b_and!294461)))

(declare-fun t!319258 () Bool)

(declare-fun tb!229063 () Bool)

(assert (=> (and b!3898224 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) t!319258) tb!229063))

(declare-fun result!278256 () Bool)

(assert (= result!278256 result!278252))

(assert (=> b!3898770 t!319258))

(declare-fun b_and!294463 () Bool)

(assert (= b_and!294455 (and (=> t!319258 result!278256) b_and!294463)))

(declare-fun t!319260 () Bool)

(declare-fun tb!229065 () Bool)

(assert (=> (and b!3898205 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) t!319260) tb!229065))

(declare-fun result!278258 () Bool)

(assert (= result!278258 result!278252))

(assert (=> b!3898770 t!319260))

(declare-fun b_and!294465 () Bool)

(assert (= b_and!294457 (and (=> t!319260 result!278258) b_and!294465)))

(declare-fun m!4458145 () Bool)

(assert (=> d!1155201 m!4458145))

(declare-fun m!4458147 () Bool)

(assert (=> b!3898770 m!4458147))

(assert (=> b!3898770 m!4458147))

(declare-fun m!4458149 () Bool)

(assert (=> b!3898770 m!4458149))

(declare-fun m!4458151 () Bool)

(assert (=> b!3898771 m!4458151))

(assert (=> b!3898209 d!1155201))

(declare-fun b!3898777 () Bool)

(declare-fun e!2410578 () Bool)

(declare-fun tp!1186316 () Bool)

(assert (=> b!3898777 (= e!2410578 (and tp_is_empty!19645 tp!1186316))))

(assert (=> b!3898226 (= tp!1186223 e!2410578)))

(assert (= (and b!3898226 ((_ is Cons!41357) (t!319148 suffixResult!91))) b!3898777))

(declare-fun b!3898791 () Bool)

(declare-fun e!2410581 () Bool)

(declare-fun tp!1186329 () Bool)

(declare-fun tp!1186327 () Bool)

(assert (=> b!3898791 (= e!2410581 (and tp!1186329 tp!1186327))))

(assert (=> b!3898206 (= tp!1186217 e!2410581)))

(declare-fun b!3898790 () Bool)

(declare-fun tp!1186331 () Bool)

(assert (=> b!3898790 (= e!2410581 tp!1186331)))

(declare-fun b!3898789 () Bool)

(declare-fun tp!1186330 () Bool)

(declare-fun tp!1186328 () Bool)

(assert (=> b!3898789 (= e!2410581 (and tp!1186330 tp!1186328))))

(declare-fun b!3898788 () Bool)

(assert (=> b!3898788 (= e!2410581 tp_is_empty!19645)))

(assert (= (and b!3898206 ((_ is ElementMatch!11337) (regex!6432 (rule!9336 (h!46778 suffixTokens!72))))) b!3898788))

(assert (= (and b!3898206 ((_ is Concat!18000) (regex!6432 (rule!9336 (h!46778 suffixTokens!72))))) b!3898789))

(assert (= (and b!3898206 ((_ is Star!11337) (regex!6432 (rule!9336 (h!46778 suffixTokens!72))))) b!3898790))

(assert (= (and b!3898206 ((_ is Union!11337) (regex!6432 (rule!9336 (h!46778 suffixTokens!72))))) b!3898791))

(declare-fun b!3898792 () Bool)

(declare-fun e!2410582 () Bool)

(declare-fun tp!1186332 () Bool)

(assert (=> b!3898792 (= e!2410582 (and tp_is_empty!19645 tp!1186332))))

(assert (=> b!3898216 (= tp!1186211 e!2410582)))

(assert (= (and b!3898216 ((_ is Cons!41357) (t!319148 prefix!426))) b!3898792))

(declare-fun b!3898796 () Bool)

(declare-fun e!2410583 () Bool)

(declare-fun tp!1186335 () Bool)

(declare-fun tp!1186333 () Bool)

(assert (=> b!3898796 (= e!2410583 (and tp!1186335 tp!1186333))))

(assert (=> b!3898207 (= tp!1186226 e!2410583)))

(declare-fun b!3898795 () Bool)

(declare-fun tp!1186337 () Bool)

(assert (=> b!3898795 (= e!2410583 tp!1186337)))

(declare-fun b!3898794 () Bool)

(declare-fun tp!1186336 () Bool)

(declare-fun tp!1186334 () Bool)

(assert (=> b!3898794 (= e!2410583 (and tp!1186336 tp!1186334))))

(declare-fun b!3898793 () Bool)

(assert (=> b!3898793 (= e!2410583 tp_is_empty!19645)))

(assert (= (and b!3898207 ((_ is ElementMatch!11337) (regex!6432 (h!46779 rules!2768)))) b!3898793))

(assert (= (and b!3898207 ((_ is Concat!18000) (regex!6432 (h!46779 rules!2768)))) b!3898794))

(assert (= (and b!3898207 ((_ is Star!11337) (regex!6432 (h!46779 rules!2768)))) b!3898795))

(assert (= (and b!3898207 ((_ is Union!11337) (regex!6432 (h!46779 rules!2768)))) b!3898796))

(declare-fun b!3898797 () Bool)

(declare-fun e!2410584 () Bool)

(declare-fun tp!1186338 () Bool)

(assert (=> b!3898797 (= e!2410584 (and tp_is_empty!19645 tp!1186338))))

(assert (=> b!3898218 (= tp!1186228 e!2410584)))

(assert (= (and b!3898218 ((_ is Cons!41357) (originalCharacters!7032 (_1!23431 (v!39163 err!4377))))) b!3898797))

(declare-fun b!3898801 () Bool)

(declare-fun e!2410585 () Bool)

(declare-fun tp!1186341 () Bool)

(declare-fun tp!1186339 () Bool)

(assert (=> b!3898801 (= e!2410585 (and tp!1186341 tp!1186339))))

(assert (=> b!3898215 (= tp!1186227 e!2410585)))

(declare-fun b!3898800 () Bool)

(declare-fun tp!1186343 () Bool)

(assert (=> b!3898800 (= e!2410585 tp!1186343)))

(declare-fun b!3898799 () Bool)

(declare-fun tp!1186342 () Bool)

(declare-fun tp!1186340 () Bool)

(assert (=> b!3898799 (= e!2410585 (and tp!1186342 tp!1186340))))

(declare-fun b!3898798 () Bool)

(assert (=> b!3898798 (= e!2410585 tp_is_empty!19645)))

(assert (= (and b!3898215 ((_ is ElementMatch!11337) (regex!6432 (rule!9336 (h!46778 prefixTokens!80))))) b!3898798))

(assert (= (and b!3898215 ((_ is Concat!18000) (regex!6432 (rule!9336 (h!46778 prefixTokens!80))))) b!3898799))

(assert (= (and b!3898215 ((_ is Star!11337) (regex!6432 (rule!9336 (h!46778 prefixTokens!80))))) b!3898800))

(assert (= (and b!3898215 ((_ is Union!11337) (regex!6432 (rule!9336 (h!46778 prefixTokens!80))))) b!3898801))

(declare-fun b!3898805 () Bool)

(declare-fun e!2410586 () Bool)

(declare-fun tp!1186346 () Bool)

(declare-fun tp!1186344 () Bool)

(assert (=> b!3898805 (= e!2410586 (and tp!1186346 tp!1186344))))

(assert (=> b!3898202 (= tp!1186214 e!2410586)))

(declare-fun b!3898804 () Bool)

(declare-fun tp!1186348 () Bool)

(assert (=> b!3898804 (= e!2410586 tp!1186348)))

(declare-fun b!3898803 () Bool)

(declare-fun tp!1186347 () Bool)

(declare-fun tp!1186345 () Bool)

(assert (=> b!3898803 (= e!2410586 (and tp!1186347 tp!1186345))))

(declare-fun b!3898802 () Bool)

(assert (=> b!3898802 (= e!2410586 tp_is_empty!19645)))

(assert (= (and b!3898202 ((_ is ElementMatch!11337) (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) b!3898802))

(assert (= (and b!3898202 ((_ is Concat!18000) (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) b!3898803))

(assert (= (and b!3898202 ((_ is Star!11337) (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) b!3898804))

(assert (= (and b!3898202 ((_ is Union!11337) (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) b!3898805))

(declare-fun b!3898806 () Bool)

(declare-fun e!2410587 () Bool)

(declare-fun tp!1186349 () Bool)

(assert (=> b!3898806 (= e!2410587 (and tp_is_empty!19645 tp!1186349))))

(assert (=> b!3898233 (= tp!1186221 e!2410587)))

(assert (= (and b!3898233 ((_ is Cons!41357) (originalCharacters!7032 (h!46778 suffixTokens!72)))) b!3898806))

(declare-fun b!3898807 () Bool)

(declare-fun e!2410588 () Bool)

(declare-fun tp!1186350 () Bool)

(assert (=> b!3898807 (= e!2410588 (and tp_is_empty!19645 tp!1186350))))

(assert (=> b!3898232 (= tp!1186215 e!2410588)))

(assert (= (and b!3898232 ((_ is Cons!41357) (_2!23431 (v!39163 err!4377)))) b!3898807))

(declare-fun b!3898808 () Bool)

(declare-fun e!2410589 () Bool)

(declare-fun tp!1186351 () Bool)

(assert (=> b!3898808 (= e!2410589 (and tp_is_empty!19645 tp!1186351))))

(assert (=> b!3898212 (= tp!1186219 e!2410589)))

(assert (= (and b!3898212 ((_ is Cons!41357) (t!319148 suffix!1176))) b!3898808))

(declare-fun b!3898822 () Bool)

(declare-fun b_free!105573 () Bool)

(declare-fun b_next!106277 () Bool)

(assert (=> b!3898822 (= b_free!105573 (not b_next!106277))))

(declare-fun tb!229067 () Bool)

(declare-fun t!319262 () Bool)

(assert (=> (and b!3898822 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319262) tb!229067))

(declare-fun result!278266 () Bool)

(assert (= result!278266 result!278152))

(assert (=> d!1155093 t!319262))

(declare-fun b_and!294467 () Bool)

(declare-fun tp!1186366 () Bool)

(assert (=> b!3898822 (= tp!1186366 (and (=> t!319262 result!278266) b_and!294467))))

(declare-fun b_free!105575 () Bool)

(declare-fun b_next!106279 () Bool)

(assert (=> b!3898822 (= b_free!105575 (not b_next!106279))))

(declare-fun tb!229069 () Bool)

(declare-fun t!319264 () Bool)

(assert (=> (and b!3898822 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319264) tb!229069))

(declare-fun result!278268 () Bool)

(assert (= result!278268 result!278162))

(assert (=> d!1155099 t!319264))

(declare-fun t!319266 () Bool)

(declare-fun tb!229071 () Bool)

(assert (=> (and b!3898822 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) t!319266) tb!229071))

(declare-fun result!278270 () Bool)

(assert (= result!278270 result!278236))

(assert (=> b!3898678 t!319266))

(declare-fun tb!229073 () Bool)

(declare-fun t!319268 () Bool)

(assert (=> (and b!3898822 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) t!319268) tb!229073))

(declare-fun result!278272 () Bool)

(assert (= result!278272 result!278244))

(assert (=> b!3898749 t!319268))

(declare-fun t!319270 () Bool)

(declare-fun tb!229075 () Bool)

(assert (=> (and b!3898822 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) t!319270) tb!229075))

(declare-fun result!278274 () Bool)

(assert (= result!278274 result!278252))

(assert (=> b!3898770 t!319270))

(declare-fun tp!1186365 () Bool)

(declare-fun b_and!294469 () Bool)

(assert (=> b!3898822 (= tp!1186365 (and (=> t!319264 result!278268) (=> t!319266 result!278270) (=> t!319268 result!278272) (=> t!319270 result!278274) b_and!294469))))

(declare-fun e!2410606 () Bool)

(assert (=> b!3898198 (= tp!1186218 e!2410606)))

(declare-fun e!2410605 () Bool)

(assert (=> b!3898822 (= e!2410605 (and tp!1186366 tp!1186365))))

(declare-fun b!3898819 () Bool)

(declare-fun e!2410602 () Bool)

(declare-fun tp!1186362 () Bool)

(assert (=> b!3898819 (= e!2410606 (and (inv!55520 (h!46778 (t!319149 suffixTokens!72))) e!2410602 tp!1186362))))

(declare-fun tp!1186364 () Bool)

(declare-fun b!3898820 () Bool)

(declare-fun e!2410607 () Bool)

(assert (=> b!3898820 (= e!2410602 (and (inv!21 (value!203946 (h!46778 (t!319149 suffixTokens!72)))) e!2410607 tp!1186364))))

(declare-fun tp!1186363 () Bool)

(declare-fun b!3898821 () Bool)

(assert (=> b!3898821 (= e!2410607 (and tp!1186363 (inv!55517 (tag!7292 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (inv!55521 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) e!2410605))))

(assert (= b!3898821 b!3898822))

(assert (= b!3898820 b!3898821))

(assert (= b!3898819 b!3898820))

(assert (= (and b!3898198 ((_ is Cons!41358) (t!319149 suffixTokens!72))) b!3898819))

(declare-fun m!4458153 () Bool)

(assert (=> b!3898819 m!4458153))

(declare-fun m!4458155 () Bool)

(assert (=> b!3898820 m!4458155))

(declare-fun m!4458157 () Bool)

(assert (=> b!3898821 m!4458157))

(declare-fun m!4458159 () Bool)

(assert (=> b!3898821 m!4458159))

(declare-fun b!3898823 () Bool)

(declare-fun e!2410608 () Bool)

(declare-fun tp!1186367 () Bool)

(assert (=> b!3898823 (= e!2410608 (and tp_is_empty!19645 tp!1186367))))

(assert (=> b!3898230 (= tp!1186212 e!2410608)))

(assert (= (and b!3898230 ((_ is Cons!41357) (originalCharacters!7032 (h!46778 prefixTokens!80)))) b!3898823))

(declare-fun b!3898827 () Bool)

(declare-fun b_free!105577 () Bool)

(declare-fun b_next!106281 () Bool)

(assert (=> b!3898827 (= b_free!105577 (not b_next!106281))))

(declare-fun t!319272 () Bool)

(declare-fun tb!229077 () Bool)

(assert (=> (and b!3898827 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319272) tb!229077))

(declare-fun result!278276 () Bool)

(assert (= result!278276 result!278152))

(assert (=> d!1155093 t!319272))

(declare-fun tp!1186372 () Bool)

(declare-fun b_and!294471 () Bool)

(assert (=> b!3898827 (= tp!1186372 (and (=> t!319272 result!278276) b_and!294471))))

(declare-fun b_free!105579 () Bool)

(declare-fun b_next!106283 () Bool)

(assert (=> b!3898827 (= b_free!105579 (not b_next!106283))))

(declare-fun tb!229079 () Bool)

(declare-fun t!319274 () Bool)

(assert (=> (and b!3898827 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319274) tb!229079))

(declare-fun result!278278 () Bool)

(assert (= result!278278 result!278162))

(assert (=> d!1155099 t!319274))

(declare-fun tb!229081 () Bool)

(declare-fun t!319276 () Bool)

(assert (=> (and b!3898827 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) t!319276) tb!229081))

(declare-fun result!278280 () Bool)

(assert (= result!278280 result!278236))

(assert (=> b!3898678 t!319276))

(declare-fun tb!229083 () Bool)

(declare-fun t!319278 () Bool)

(assert (=> (and b!3898827 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) t!319278) tb!229083))

(declare-fun result!278282 () Bool)

(assert (= result!278282 result!278244))

(assert (=> b!3898749 t!319278))

(declare-fun t!319280 () Bool)

(declare-fun tb!229085 () Bool)

(assert (=> (and b!3898827 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) t!319280) tb!229085))

(declare-fun result!278284 () Bool)

(assert (= result!278284 result!278252))

(assert (=> b!3898770 t!319280))

(declare-fun tp!1186371 () Bool)

(declare-fun b_and!294473 () Bool)

(assert (=> b!3898827 (= tp!1186371 (and (=> t!319274 result!278278) (=> t!319276 result!278280) (=> t!319278 result!278282) (=> t!319280 result!278284) b_and!294473))))

(declare-fun e!2410613 () Bool)

(assert (=> b!3898209 (= tp!1186210 e!2410613)))

(declare-fun e!2410612 () Bool)

(assert (=> b!3898827 (= e!2410612 (and tp!1186372 tp!1186371))))

(declare-fun e!2410609 () Bool)

(declare-fun b!3898824 () Bool)

(declare-fun tp!1186368 () Bool)

(assert (=> b!3898824 (= e!2410613 (and (inv!55520 (h!46778 (t!319149 prefixTokens!80))) e!2410609 tp!1186368))))

(declare-fun b!3898825 () Bool)

(declare-fun tp!1186370 () Bool)

(declare-fun e!2410614 () Bool)

(assert (=> b!3898825 (= e!2410609 (and (inv!21 (value!203946 (h!46778 (t!319149 prefixTokens!80)))) e!2410614 tp!1186370))))

(declare-fun b!3898826 () Bool)

(declare-fun tp!1186369 () Bool)

(assert (=> b!3898826 (= e!2410614 (and tp!1186369 (inv!55517 (tag!7292 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (inv!55521 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) e!2410612))))

(assert (= b!3898826 b!3898827))

(assert (= b!3898825 b!3898826))

(assert (= b!3898824 b!3898825))

(assert (= (and b!3898209 ((_ is Cons!41358) (t!319149 prefixTokens!80))) b!3898824))

(declare-fun m!4458161 () Bool)

(assert (=> b!3898824 m!4458161))

(declare-fun m!4458163 () Bool)

(assert (=> b!3898825 m!4458163))

(declare-fun m!4458165 () Bool)

(assert (=> b!3898826 m!4458165))

(declare-fun m!4458167 () Bool)

(assert (=> b!3898826 m!4458167))

(declare-fun b!3898838 () Bool)

(declare-fun b_free!105581 () Bool)

(declare-fun b_next!106285 () Bool)

(assert (=> b!3898838 (= b_free!105581 (not b_next!106285))))

(declare-fun tb!229087 () Bool)

(declare-fun t!319282 () Bool)

(assert (=> (and b!3898838 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319282) tb!229087))

(declare-fun result!278288 () Bool)

(assert (= result!278288 result!278152))

(assert (=> d!1155093 t!319282))

(declare-fun b_and!294475 () Bool)

(declare-fun tp!1186381 () Bool)

(assert (=> b!3898838 (= tp!1186381 (and (=> t!319282 result!278288) b_and!294475))))

(declare-fun b_free!105583 () Bool)

(declare-fun b_next!106287 () Bool)

(assert (=> b!3898838 (= b_free!105583 (not b_next!106287))))

(declare-fun tb!229089 () Bool)

(declare-fun t!319284 () Bool)

(assert (=> (and b!3898838 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319284) tb!229089))

(declare-fun result!278290 () Bool)

(assert (= result!278290 result!278162))

(assert (=> d!1155099 t!319284))

(declare-fun tb!229091 () Bool)

(declare-fun t!319286 () Bool)

(assert (=> (and b!3898838 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) t!319286) tb!229091))

(declare-fun result!278292 () Bool)

(assert (= result!278292 result!278236))

(assert (=> b!3898678 t!319286))

(declare-fun t!319288 () Bool)

(declare-fun tb!229093 () Bool)

(assert (=> (and b!3898838 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) t!319288) tb!229093))

(declare-fun result!278294 () Bool)

(assert (= result!278294 result!278244))

(assert (=> b!3898749 t!319288))

(declare-fun tb!229095 () Bool)

(declare-fun t!319290 () Bool)

(assert (=> (and b!3898838 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) t!319290) tb!229095))

(declare-fun result!278296 () Bool)

(assert (= result!278296 result!278252))

(assert (=> b!3898770 t!319290))

(declare-fun b_and!294477 () Bool)

(declare-fun tp!1186383 () Bool)

(assert (=> b!3898838 (= tp!1186383 (and (=> t!319284 result!278290) (=> t!319286 result!278292) (=> t!319288 result!278294) (=> t!319290 result!278296) b_and!294477))))

(declare-fun e!2410623 () Bool)

(assert (=> b!3898838 (= e!2410623 (and tp!1186381 tp!1186383))))

(declare-fun tp!1186382 () Bool)

(declare-fun b!3898837 () Bool)

(declare-fun e!2410624 () Bool)

(assert (=> b!3898837 (= e!2410624 (and tp!1186382 (inv!55517 (tag!7292 (h!46779 (t!319150 rules!2768)))) (inv!55521 (transformation!6432 (h!46779 (t!319150 rules!2768)))) e!2410623))))

(declare-fun b!3898836 () Bool)

(declare-fun e!2410625 () Bool)

(declare-fun tp!1186384 () Bool)

(assert (=> b!3898836 (= e!2410625 (and e!2410624 tp!1186384))))

(assert (=> b!3898219 (= tp!1186229 e!2410625)))

(assert (= b!3898837 b!3898838))

(assert (= b!3898836 b!3898837))

(assert (= (and b!3898219 ((_ is Cons!41359) (t!319150 rules!2768))) b!3898836))

(declare-fun m!4458169 () Bool)

(assert (=> b!3898837 m!4458169))

(declare-fun m!4458171 () Bool)

(assert (=> b!3898837 m!4458171))

(declare-fun b_lambda!113873 () Bool)

(assert (= b_lambda!113871 (or (and b!3898210 b_free!105547 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))))) (and b!3898228 b_free!105551 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))))) (and b!3898838 b_free!105583 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))))) (and b!3898822 b_free!105575 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))))) (and b!3898205 b_free!105559 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))))) (and b!3898827 b_free!105579 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))))) (and b!3898224 b_free!105555) b_lambda!113873)))

(declare-fun b_lambda!113875 () Bool)

(assert (= b_lambda!113867 (or (and b!3898827 b_free!105579 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))))) (and b!3898210 b_free!105547) (and b!3898822 b_free!105575 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))))) (and b!3898228 b_free!105551 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))))) (and b!3898205 b_free!105559 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))))) (and b!3898838 b_free!105583 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))))) (and b!3898224 b_free!105555 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b_lambda!113875)))

(declare-fun b_lambda!113877 () Bool)

(assert (= b_lambda!113869 (or (and b!3898205 b_free!105559) (and b!3898827 b_free!105579 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) (and b!3898228 b_free!105551 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) (and b!3898210 b_free!105547 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) (and b!3898224 b_free!105555 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) (and b!3898822 b_free!105575 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) (and b!3898838 b_free!105583 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b_lambda!113877)))

(check-sat (not b!3898341) (not b_next!106249) (not b!3898748) (not b!3898737) (not b!3898789) (not b!3898481) (not d!1155165) (not b!3898321) (not b!3898725) (not b_lambda!113853) (not b!3898804) (not b!3898325) (not b!3898753) (not bm!283739) (not d!1155185) (not b!3898736) (not d!1155189) (not d!1155195) (not b!3898767) (not d!1155193) (not b!3898723) (not d!1155179) (not d!1155159) (not b!3898681) (not d!1155157) (not tb!229059) (not b!3898672) (not b!3898478) (not b_next!106257) (not b!3898746) (not b!3898791) b_and!294461 (not b!3898249) (not b!3898837) (not b!3898759) (not b!3898742) b_and!294475 (not d!1155175) (not b!3898498) (not b!3898805) (not b_lambda!113851) (not b!3898425) (not b!3898738) (not b!3898688) (not b_next!106283) (not d!1155183) (not b!3898732) (not d!1155201) (not b!3898807) (not b!3898751) (not b!3898749) (not b!3898707) (not b!3898480) (not b_next!106251) (not d!1155101) (not b!3898825) (not b!3898790) (not b_next!106279) (not b_next!106277) (not b!3898709) (not d!1155089) (not b!3898763) (not b!3898687) (not b!3898771) (not b!3898427) (not b!3898801) (not b!3898824) (not b!3898735) (not bm!283735) (not b_next!106287) b_and!294467 (not b!3898750) (not b!3898668) (not b!3898796) (not b!3898678) (not b!3898428) (not b!3898728) (not b!3898762) (not b!3898488) (not d!1155015) (not b!3898683) (not d!1155007) (not b!3898758) (not b!3898772) (not b!3898752) (not tb!229043) (not d!1155075) (not b!3898794) (not b!3898370) (not b!3898708) (not b!3898719) (not b!3898800) (not b!3898671) (not b_next!106285) (not b!3898826) (not b!3898679) (not b!3898495) (not b!3898744) (not b!3898431) (not tb!229051) (not b!3898682) (not b!3898730) (not b!3898248) (not b!3898792) (not b!3898702) (not b!3898797) (not b!3898700) (not b!3898795) (not b!3898704) (not b!3898322) (not b!3898722) (not b!3898684) (not b!3898503) (not d!1155087) (not b!3898808) (not b!3898741) (not b!3898426) (not b!3898756) b_and!294395 (not b!3898803) (not b_lambda!113875) (not b!3898340) (not b!3898339) (not b!3898484) (not b!3898487) (not d!1155107) (not b_next!106253) (not b!3898433) (not b!3898724) (not bm!283740) (not b!3898765) (not d!1155081) (not b!3898530) (not b!3898743) (not b!3898486) (not b!3898799) (not b!3898777) (not b_lambda!113877) (not b!3898432) (not b!3898729) (not b!3898820) (not b!3898686) (not b!3898727) (not d!1155169) (not b_next!106281) b_and!294471 (not b!3898689) (not b!3898769) (not b!3898673) b_and!294459 (not tb!228981) b_and!294397 (not d!1155181) (not b!3898464) b_and!294477 (not d!1155059) (not d!1155017) (not b!3898430) (not b!3898669) (not d!1155129) (not b!3898806) b_and!294469 (not b!3898821) (not b!3898770) (not b!3898819) (not b!3898531) (not d!1155177) (not b_next!106259) (not b!3898666) (not d!1155173) (not d!1155079) b_and!294463 (not d!1155099) b_and!294393 (not b!3898463) (not b!3898680) (not b_next!106263) (not b_lambda!113873) (not tb!228973) (not d!1155133) b_and!294473 (not b!3898706) (not b_next!106255) (not d!1155125) (not b!3898720) (not bm!283741) b_and!294465 (not d!1155109) (not b!3898823) (not b_next!106261) (not d!1155095) (not b!3898733) (not b!3898836) (not b!3898670) tp_is_empty!19645 (not b!3898740) (not d!1155197) (not b!3898665) (not d!1155117) b_and!294391)
(check-sat (not b_next!106249) (not b_next!106257) b_and!294461 b_and!294475 (not b_next!106283) (not b_next!106251) (not b_next!106285) b_and!294395 (not b_next!106253) b_and!294477 (not b_next!106263) b_and!294391 (not b_next!106279) (not b_next!106277) (not b_next!106287) b_and!294467 (not b_next!106281) b_and!294471 b_and!294459 b_and!294397 (not b_next!106259) b_and!294469 b_and!294463 b_and!294393 b_and!294465 b_and!294473 (not b_next!106255) (not b_next!106261))
(get-model)

(declare-fun b!3898862 () Bool)

(declare-fun e!2410640 () List!41481)

(assert (=> b!3898862 (= e!2410640 (_2!23431 (v!39163 lt!1357935)))))

(declare-fun b!3898863 () Bool)

(assert (=> b!3898863 (= e!2410640 (Cons!41357 (h!46777 (t!319148 lt!1357938)) (++!10621 (t!319148 (t!319148 lt!1357938)) (_2!23431 (v!39163 lt!1357935)))))))

(declare-fun d!1155225 () Bool)

(declare-fun e!2410639 () Bool)

(assert (=> d!1155225 e!2410639))

(declare-fun res!1577298 () Bool)

(assert (=> d!1155225 (=> (not res!1577298) (not e!2410639))))

(declare-fun lt!1358167 () List!41481)

(assert (=> d!1155225 (= res!1577298 (= (content!6186 lt!1358167) ((_ map or) (content!6186 (t!319148 lt!1357938)) (content!6186 (_2!23431 (v!39163 lt!1357935))))))))

(assert (=> d!1155225 (= lt!1358167 e!2410640)))

(declare-fun c!677751 () Bool)

(assert (=> d!1155225 (= c!677751 ((_ is Nil!41357) (t!319148 lt!1357938)))))

(assert (=> d!1155225 (= (++!10621 (t!319148 lt!1357938) (_2!23431 (v!39163 lt!1357935))) lt!1358167)))

(declare-fun b!3898864 () Bool)

(declare-fun res!1577297 () Bool)

(assert (=> b!3898864 (=> (not res!1577297) (not e!2410639))))

(assert (=> b!3898864 (= res!1577297 (= (size!31050 lt!1358167) (+ (size!31050 (t!319148 lt!1357938)) (size!31050 (_2!23431 (v!39163 lt!1357935))))))))

(declare-fun b!3898865 () Bool)

(assert (=> b!3898865 (= e!2410639 (or (not (= (_2!23431 (v!39163 lt!1357935)) Nil!41357)) (= lt!1358167 (t!319148 lt!1357938))))))

(assert (= (and d!1155225 c!677751) b!3898862))

(assert (= (and d!1155225 (not c!677751)) b!3898863))

(assert (= (and d!1155225 res!1577298) b!3898864))

(assert (= (and b!3898864 res!1577297) b!3898865))

(declare-fun m!4458229 () Bool)

(assert (=> b!3898863 m!4458229))

(declare-fun m!4458231 () Bool)

(assert (=> d!1155225 m!4458231))

(declare-fun m!4458233 () Bool)

(assert (=> d!1155225 m!4458233))

(assert (=> d!1155225 m!4457745))

(declare-fun m!4458235 () Bool)

(assert (=> b!3898864 m!4458235))

(assert (=> b!3898864 m!4457679))

(assert (=> b!3898864 m!4457647))

(assert (=> b!3898530 d!1155225))

(declare-fun b!3898866 () Bool)

(declare-fun e!2410642 () List!41481)

(assert (=> b!3898866 (= e!2410642 Nil!41357)))

(declare-fun b!3898867 () Bool)

(assert (=> b!3898867 (= e!2410642 (Cons!41357 (h!46777 (t!319148 prefix!426)) (++!10621 (t!319148 (t!319148 prefix!426)) Nil!41357)))))

(declare-fun d!1155227 () Bool)

(declare-fun e!2410641 () Bool)

(assert (=> d!1155227 e!2410641))

(declare-fun res!1577300 () Bool)

(assert (=> d!1155227 (=> (not res!1577300) (not e!2410641))))

(declare-fun lt!1358168 () List!41481)

(assert (=> d!1155227 (= res!1577300 (= (content!6186 lt!1358168) ((_ map or) (content!6186 (t!319148 prefix!426)) (content!6186 Nil!41357))))))

(assert (=> d!1155227 (= lt!1358168 e!2410642)))

(declare-fun c!677752 () Bool)

(assert (=> d!1155227 (= c!677752 ((_ is Nil!41357) (t!319148 prefix!426)))))

(assert (=> d!1155227 (= (++!10621 (t!319148 prefix!426) Nil!41357) lt!1358168)))

(declare-fun b!3898868 () Bool)

(declare-fun res!1577299 () Bool)

(assert (=> b!3898868 (=> (not res!1577299) (not e!2410641))))

(assert (=> b!3898868 (= res!1577299 (= (size!31050 lt!1358168) (+ (size!31050 (t!319148 prefix!426)) (size!31050 Nil!41357))))))

(declare-fun b!3898869 () Bool)

(assert (=> b!3898869 (= e!2410641 (or (not (= Nil!41357 Nil!41357)) (= lt!1358168 (t!319148 prefix!426))))))

(assert (= (and d!1155227 c!677752) b!3898866))

(assert (= (and d!1155227 (not c!677752)) b!3898867))

(assert (= (and d!1155227 res!1577300) b!3898868))

(assert (= (and b!3898868 res!1577299) b!3898869))

(declare-fun m!4458237 () Bool)

(assert (=> b!3898867 m!4458237))

(declare-fun m!4458239 () Bool)

(assert (=> d!1155227 m!4458239))

(declare-fun m!4458241 () Bool)

(assert (=> d!1155227 m!4458241))

(assert (=> d!1155227 m!4458047))

(declare-fun m!4458243 () Bool)

(assert (=> b!3898868 m!4458243))

(declare-fun m!4458245 () Bool)

(assert (=> b!3898868 m!4458245))

(assert (=> b!3898868 m!4457437))

(assert (=> b!3898732 d!1155227))

(declare-fun d!1155229 () Bool)

(declare-fun lt!1358169 () Int)

(assert (=> d!1155229 (>= lt!1358169 0)))

(declare-fun e!2410643 () Int)

(assert (=> d!1155229 (= lt!1358169 e!2410643)))

(declare-fun c!677753 () Bool)

(assert (=> d!1155229 (= c!677753 ((_ is Nil!41357) (_2!23431 (get!13674 lt!1358130))))))

(assert (=> d!1155229 (= (size!31050 (_2!23431 (get!13674 lt!1358130))) lt!1358169)))

(declare-fun b!3898870 () Bool)

(assert (=> b!3898870 (= e!2410643 0)))

(declare-fun b!3898871 () Bool)

(assert (=> b!3898871 (= e!2410643 (+ 1 (size!31050 (t!319148 (_2!23431 (get!13674 lt!1358130))))))))

(assert (= (and d!1155229 c!677753) b!3898870))

(assert (= (and d!1155229 (not c!677753)) b!3898871))

(declare-fun m!4458247 () Bool)

(assert (=> b!3898871 m!4458247))

(assert (=> b!3898683 d!1155229))

(declare-fun d!1155231 () Bool)

(assert (=> d!1155231 (= (get!13674 lt!1358130) (v!39163 lt!1358130))))

(assert (=> b!3898683 d!1155231))

(declare-fun d!1155233 () Bool)

(declare-fun lt!1358170 () Int)

(assert (=> d!1155233 (>= lt!1358170 0)))

(declare-fun e!2410644 () Int)

(assert (=> d!1155233 (= lt!1358170 e!2410644)))

(declare-fun c!677754 () Bool)

(assert (=> d!1155233 (= c!677754 ((_ is Nil!41357) lt!1357946))))

(assert (=> d!1155233 (= (size!31050 lt!1357946) lt!1358170)))

(declare-fun b!3898872 () Bool)

(assert (=> b!3898872 (= e!2410644 0)))

(declare-fun b!3898873 () Bool)

(assert (=> b!3898873 (= e!2410644 (+ 1 (size!31050 (t!319148 lt!1357946))))))

(assert (= (and d!1155233 c!677754) b!3898872))

(assert (= (and d!1155233 (not c!677754)) b!3898873))

(declare-fun m!4458249 () Bool)

(assert (=> b!3898873 m!4458249))

(assert (=> b!3898683 d!1155233))

(declare-fun d!1155235 () Bool)

(assert (=> d!1155235 (= (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151)))) (list!15371 (c!677655 (charsOf!4256 (_1!23431 (get!13674 lt!1358151))))))))

(declare-fun bs!584801 () Bool)

(assert (= bs!584801 d!1155235))

(declare-fun m!4458251 () Bool)

(assert (=> bs!584801 m!4458251))

(assert (=> b!3898742 d!1155235))

(declare-fun d!1155237 () Bool)

(declare-fun lt!1358171 () BalanceConc!24880)

(assert (=> d!1155237 (= (list!15370 lt!1358171) (originalCharacters!7032 (_1!23431 (get!13674 lt!1358151))))))

(assert (=> d!1155237 (= lt!1358171 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151))))) (value!203946 (_1!23431 (get!13674 lt!1358151)))))))

(assert (=> d!1155237 (= (charsOf!4256 (_1!23431 (get!13674 lt!1358151))) lt!1358171)))

(declare-fun b_lambda!113881 () Bool)

(assert (=> (not b_lambda!113881) (not d!1155237)))

(declare-fun t!319308 () Bool)

(declare-fun tb!229111 () Bool)

(assert (=> (and b!3898224 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319308) tb!229111))

(declare-fun b!3898874 () Bool)

(declare-fun e!2410645 () Bool)

(declare-fun tp!1186386 () Bool)

(assert (=> b!3898874 (= e!2410645 (and (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151))))) (value!203946 (_1!23431 (get!13674 lt!1358151)))))) tp!1186386))))

(declare-fun result!278312 () Bool)

(assert (=> tb!229111 (= result!278312 (and (inv!55525 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151))))) (value!203946 (_1!23431 (get!13674 lt!1358151))))) e!2410645))))

(assert (= tb!229111 b!3898874))

(declare-fun m!4458253 () Bool)

(assert (=> b!3898874 m!4458253))

(declare-fun m!4458255 () Bool)

(assert (=> tb!229111 m!4458255))

(assert (=> d!1155237 t!319308))

(declare-fun b_and!294493 () Bool)

(assert (= b_and!294463 (and (=> t!319308 result!278312) b_and!294493)))

(declare-fun tb!229113 () Bool)

(declare-fun t!319310 () Bool)

(assert (=> (and b!3898228 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319310) tb!229113))

(declare-fun result!278314 () Bool)

(assert (= result!278314 result!278312))

(assert (=> d!1155237 t!319310))

(declare-fun b_and!294495 () Bool)

(assert (= b_and!294461 (and (=> t!319310 result!278314) b_and!294495)))

(declare-fun t!319312 () Bool)

(declare-fun tb!229115 () Bool)

(assert (=> (and b!3898838 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319312) tb!229115))

(declare-fun result!278316 () Bool)

(assert (= result!278316 result!278312))

(assert (=> d!1155237 t!319312))

(declare-fun b_and!294497 () Bool)

(assert (= b_and!294477 (and (=> t!319312 result!278316) b_and!294497)))

(declare-fun tb!229117 () Bool)

(declare-fun t!319314 () Bool)

(assert (=> (and b!3898822 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319314) tb!229117))

(declare-fun result!278318 () Bool)

(assert (= result!278318 result!278312))

(assert (=> d!1155237 t!319314))

(declare-fun b_and!294499 () Bool)

(assert (= b_and!294469 (and (=> t!319314 result!278318) b_and!294499)))

(declare-fun tb!229119 () Bool)

(declare-fun t!319316 () Bool)

(assert (=> (and b!3898827 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319316) tb!229119))

(declare-fun result!278320 () Bool)

(assert (= result!278320 result!278312))

(assert (=> d!1155237 t!319316))

(declare-fun b_and!294501 () Bool)

(assert (= b_and!294473 (and (=> t!319316 result!278320) b_and!294501)))

(declare-fun t!319318 () Bool)

(declare-fun tb!229121 () Bool)

(assert (=> (and b!3898210 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319318) tb!229121))

(declare-fun result!278322 () Bool)

(assert (= result!278322 result!278312))

(assert (=> d!1155237 t!319318))

(declare-fun b_and!294503 () Bool)

(assert (= b_and!294459 (and (=> t!319318 result!278322) b_and!294503)))

(declare-fun t!319320 () Bool)

(declare-fun tb!229123 () Bool)

(assert (=> (and b!3898205 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319320) tb!229123))

(declare-fun result!278324 () Bool)

(assert (= result!278324 result!278312))

(assert (=> d!1155237 t!319320))

(declare-fun b_and!294505 () Bool)

(assert (= b_and!294465 (and (=> t!319320 result!278324) b_and!294505)))

(declare-fun m!4458257 () Bool)

(assert (=> d!1155237 m!4458257))

(declare-fun m!4458259 () Bool)

(assert (=> d!1155237 m!4458259))

(assert (=> b!3898742 d!1155237))

(declare-fun d!1155239 () Bool)

(assert (=> d!1155239 (= (get!13674 lt!1358151) (v!39163 lt!1358151))))

(assert (=> b!3898742 d!1155239))

(declare-fun d!1155241 () Bool)

(declare-fun lt!1358172 () Int)

(assert (=> d!1155241 (>= lt!1358172 0)))

(declare-fun e!2410646 () Int)

(assert (=> d!1155241 (= lt!1358172 e!2410646)))

(declare-fun c!677755 () Bool)

(assert (=> d!1155241 (= c!677755 ((_ is Nil!41357) (originalCharacters!7032 (_1!23431 (v!39163 err!4377)))))))

(assert (=> d!1155241 (= (size!31050 (originalCharacters!7032 (_1!23431 (v!39163 err!4377)))) lt!1358172)))

(declare-fun b!3898875 () Bool)

(assert (=> b!3898875 (= e!2410646 0)))

(declare-fun b!3898876 () Bool)

(assert (=> b!3898876 (= e!2410646 (+ 1 (size!31050 (t!319148 (originalCharacters!7032 (_1!23431 (v!39163 err!4377)))))))))

(assert (= (and d!1155241 c!677755) b!3898875))

(assert (= (and d!1155241 (not c!677755)) b!3898876))

(declare-fun m!4458261 () Bool)

(assert (=> b!3898876 m!4458261))

(assert (=> b!3898750 d!1155241))

(declare-fun d!1155243 () Bool)

(declare-fun charsToBigInt!0 (List!41480 Int) Int)

(assert (=> d!1155243 (= (inv!15 (value!203946 (_1!23431 (v!39163 err!4377)))) (= (charsToBigInt!0 (text!47083 (value!203946 (_1!23431 (v!39163 err!4377)))) 0) (value!203941 (value!203946 (_1!23431 (v!39163 err!4377))))))))

(declare-fun bs!584802 () Bool)

(assert (= bs!584802 d!1155243))

(declare-fun m!4458263 () Bool)

(assert (=> bs!584802 m!4458263))

(assert (=> b!3898702 d!1155243))

(declare-fun b!3898880 () Bool)

(declare-fun e!2410648 () Bool)

(assert (=> b!3898880 (= e!2410648 (>= (size!31050 (tail!5963 lt!1357946)) (size!31050 (tail!5963 lt!1357946))))))

(declare-fun b!3898879 () Bool)

(declare-fun e!2410647 () Bool)

(assert (=> b!3898879 (= e!2410647 (isPrefix!3527 (tail!5963 (tail!5963 lt!1357946)) (tail!5963 (tail!5963 lt!1357946))))))

(declare-fun b!3898877 () Bool)

(declare-fun e!2410649 () Bool)

(assert (=> b!3898877 (= e!2410649 e!2410647)))

(declare-fun res!1577302 () Bool)

(assert (=> b!3898877 (=> (not res!1577302) (not e!2410647))))

(assert (=> b!3898877 (= res!1577302 (not ((_ is Nil!41357) (tail!5963 lt!1357946))))))

(declare-fun b!3898878 () Bool)

(declare-fun res!1577304 () Bool)

(assert (=> b!3898878 (=> (not res!1577304) (not e!2410647))))

(assert (=> b!3898878 (= res!1577304 (= (head!8246 (tail!5963 lt!1357946)) (head!8246 (tail!5963 lt!1357946))))))

(declare-fun d!1155245 () Bool)

(assert (=> d!1155245 e!2410648))

(declare-fun res!1577303 () Bool)

(assert (=> d!1155245 (=> res!1577303 e!2410648)))

(declare-fun lt!1358173 () Bool)

(assert (=> d!1155245 (= res!1577303 (not lt!1358173))))

(assert (=> d!1155245 (= lt!1358173 e!2410649)))

(declare-fun res!1577301 () Bool)

(assert (=> d!1155245 (=> res!1577301 e!2410649)))

(assert (=> d!1155245 (= res!1577301 ((_ is Nil!41357) (tail!5963 lt!1357946)))))

(assert (=> d!1155245 (= (isPrefix!3527 (tail!5963 lt!1357946) (tail!5963 lt!1357946)) lt!1358173)))

(assert (= (and d!1155245 (not res!1577301)) b!3898877))

(assert (= (and b!3898877 res!1577302) b!3898878))

(assert (= (and b!3898878 res!1577304) b!3898879))

(assert (= (and d!1155245 (not res!1577303)) b!3898880))

(assert (=> b!3898880 m!4457675))

(declare-fun m!4458265 () Bool)

(assert (=> b!3898880 m!4458265))

(assert (=> b!3898880 m!4457675))

(assert (=> b!3898880 m!4458265))

(assert (=> b!3898879 m!4457675))

(declare-fun m!4458267 () Bool)

(assert (=> b!3898879 m!4458267))

(assert (=> b!3898879 m!4457675))

(assert (=> b!3898879 m!4458267))

(assert (=> b!3898879 m!4458267))

(assert (=> b!3898879 m!4458267))

(declare-fun m!4458269 () Bool)

(assert (=> b!3898879 m!4458269))

(assert (=> b!3898878 m!4457675))

(declare-fun m!4458271 () Bool)

(assert (=> b!3898878 m!4458271))

(assert (=> b!3898878 m!4457675))

(assert (=> b!3898878 m!4458271))

(assert (=> b!3898707 d!1155245))

(declare-fun d!1155247 () Bool)

(assert (=> d!1155247 (= (tail!5963 lt!1357946) (t!319148 lt!1357946))))

(assert (=> b!3898707 d!1155247))

(declare-fun d!1155249 () Bool)

(declare-fun charsToInt!0 (List!41480) (_ BitVec 32))

(assert (=> d!1155249 (= (inv!16 (value!203946 (h!46778 suffixTokens!72))) (= (charsToInt!0 (text!47081 (value!203946 (h!46778 suffixTokens!72)))) (value!203937 (value!203946 (h!46778 suffixTokens!72)))))))

(declare-fun bs!584803 () Bool)

(assert (= bs!584803 d!1155249))

(declare-fun m!4458273 () Bool)

(assert (=> bs!584803 m!4458273))

(assert (=> b!3898744 d!1155249))

(declare-fun b!3898881 () Bool)

(declare-fun e!2410650 () Bool)

(declare-fun lt!1358175 () tuple2!40596)

(assert (=> b!3898881 (= e!2410650 (not (isEmpty!24581 (_1!23432 lt!1358175))))))

(declare-fun b!3898882 () Bool)

(declare-fun e!2410652 () Bool)

(assert (=> b!3898882 (= e!2410652 e!2410650)))

(declare-fun res!1577305 () Bool)

(assert (=> b!3898882 (= res!1577305 (< (size!31050 (_2!23432 lt!1358175)) (size!31050 (_2!23431 (v!39163 lt!1358053)))))))

(assert (=> b!3898882 (=> (not res!1577305) (not e!2410650))))

(declare-fun b!3898883 () Bool)

(declare-fun e!2410651 () tuple2!40596)

(assert (=> b!3898883 (= e!2410651 (tuple2!40597 Nil!41358 (_2!23431 (v!39163 lt!1358053))))))

(declare-fun b!3898884 () Bool)

(assert (=> b!3898884 (= e!2410652 (= (_2!23432 lt!1358175) (_2!23431 (v!39163 lt!1358053))))))

(declare-fun d!1155251 () Bool)

(assert (=> d!1155251 e!2410652))

(declare-fun c!677756 () Bool)

(assert (=> d!1155251 (= c!677756 (> (size!31052 (_1!23432 lt!1358175)) 0))))

(assert (=> d!1155251 (= lt!1358175 e!2410651)))

(declare-fun c!677757 () Bool)

(declare-fun lt!1358174 () Option!8852)

(assert (=> d!1155251 (= c!677757 ((_ is Some!8851) lt!1358174))))

(assert (=> d!1155251 (= lt!1358174 (maxPrefix!3325 thiss!20629 rules!2768 (_2!23431 (v!39163 lt!1358053))))))

(assert (=> d!1155251 (= (lexList!1789 thiss!20629 rules!2768 (_2!23431 (v!39163 lt!1358053))) lt!1358175)))

(declare-fun b!3898885 () Bool)

(declare-fun lt!1358176 () tuple2!40596)

(assert (=> b!3898885 (= e!2410651 (tuple2!40597 (Cons!41358 (_1!23431 (v!39163 lt!1358174)) (_1!23432 lt!1358176)) (_2!23432 lt!1358176)))))

(assert (=> b!3898885 (= lt!1358176 (lexList!1789 thiss!20629 rules!2768 (_2!23431 (v!39163 lt!1358174))))))

(assert (= (and d!1155251 c!677757) b!3898885))

(assert (= (and d!1155251 (not c!677757)) b!3898883))

(assert (= (and d!1155251 c!677756) b!3898882))

(assert (= (and d!1155251 (not c!677756)) b!3898884))

(assert (= (and b!3898882 res!1577305) b!3898881))

(declare-fun m!4458275 () Bool)

(assert (=> b!3898881 m!4458275))

(declare-fun m!4458277 () Bool)

(assert (=> b!3898882 m!4458277))

(declare-fun m!4458279 () Bool)

(assert (=> b!3898882 m!4458279))

(declare-fun m!4458281 () Bool)

(assert (=> d!1155251 m!4458281))

(declare-fun m!4458283 () Bool)

(assert (=> d!1155251 m!4458283))

(declare-fun m!4458285 () Bool)

(assert (=> b!3898885 m!4458285))

(assert (=> b!3898484 d!1155251))

(declare-fun b!3898886 () Bool)

(declare-fun e!2410654 () List!41481)

(assert (=> b!3898886 (= e!2410654 (_2!23431 (get!13674 lt!1358032)))))

(declare-fun b!3898887 () Bool)

(assert (=> b!3898887 (= e!2410654 (Cons!41357 (h!46777 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032))))) (++!10621 (t!319148 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032))))) (_2!23431 (get!13674 lt!1358032)))))))

(declare-fun d!1155253 () Bool)

(declare-fun e!2410653 () Bool)

(assert (=> d!1155253 e!2410653))

(declare-fun res!1577307 () Bool)

(assert (=> d!1155253 (=> (not res!1577307) (not e!2410653))))

(declare-fun lt!1358177 () List!41481)

(assert (=> d!1155253 (= res!1577307 (= (content!6186 lt!1358177) ((_ map or) (content!6186 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032))))) (content!6186 (_2!23431 (get!13674 lt!1358032))))))))

(assert (=> d!1155253 (= lt!1358177 e!2410654)))

(declare-fun c!677758 () Bool)

(assert (=> d!1155253 (= c!677758 ((_ is Nil!41357) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032))))))))

(assert (=> d!1155253 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032)))) (_2!23431 (get!13674 lt!1358032))) lt!1358177)))

(declare-fun b!3898888 () Bool)

(declare-fun res!1577306 () Bool)

(assert (=> b!3898888 (=> (not res!1577306) (not e!2410653))))

(assert (=> b!3898888 (= res!1577306 (= (size!31050 lt!1358177) (+ (size!31050 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032))))) (size!31050 (_2!23431 (get!13674 lt!1358032))))))))

(declare-fun b!3898889 () Bool)

(assert (=> b!3898889 (= e!2410653 (or (not (= (_2!23431 (get!13674 lt!1358032)) Nil!41357)) (= lt!1358177 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032)))))))))

(assert (= (and d!1155253 c!677758) b!3898886))

(assert (= (and d!1155253 (not c!677758)) b!3898887))

(assert (= (and d!1155253 res!1577307) b!3898888))

(assert (= (and b!3898888 res!1577306) b!3898889))

(declare-fun m!4458287 () Bool)

(assert (=> b!3898887 m!4458287))

(declare-fun m!4458289 () Bool)

(assert (=> d!1155253 m!4458289))

(assert (=> d!1155253 m!4457541))

(declare-fun m!4458291 () Bool)

(assert (=> d!1155253 m!4458291))

(declare-fun m!4458293 () Bool)

(assert (=> d!1155253 m!4458293))

(declare-fun m!4458295 () Bool)

(assert (=> b!3898888 m!4458295))

(assert (=> b!3898888 m!4457541))

(declare-fun m!4458297 () Bool)

(assert (=> b!3898888 m!4458297))

(assert (=> b!3898888 m!4457535))

(assert (=> b!3898430 d!1155253))

(declare-fun d!1155255 () Bool)

(assert (=> d!1155255 (= (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032)))) (list!15371 (c!677655 (charsOf!4256 (_1!23431 (get!13674 lt!1358032))))))))

(declare-fun bs!584804 () Bool)

(assert (= bs!584804 d!1155255))

(declare-fun m!4458299 () Bool)

(assert (=> bs!584804 m!4458299))

(assert (=> b!3898430 d!1155255))

(declare-fun d!1155257 () Bool)

(declare-fun lt!1358178 () BalanceConc!24880)

(assert (=> d!1155257 (= (list!15370 lt!1358178) (originalCharacters!7032 (_1!23431 (get!13674 lt!1358032))))))

(assert (=> d!1155257 (= lt!1358178 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032))))) (value!203946 (_1!23431 (get!13674 lt!1358032)))))))

(assert (=> d!1155257 (= (charsOf!4256 (_1!23431 (get!13674 lt!1358032))) lt!1358178)))

(declare-fun b_lambda!113883 () Bool)

(assert (=> (not b_lambda!113883) (not d!1155257)))

(declare-fun t!319322 () Bool)

(declare-fun tb!229125 () Bool)

(assert (=> (and b!3898224 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319322) tb!229125))

(declare-fun b!3898890 () Bool)

(declare-fun e!2410655 () Bool)

(declare-fun tp!1186387 () Bool)

(assert (=> b!3898890 (= e!2410655 (and (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032))))) (value!203946 (_1!23431 (get!13674 lt!1358032)))))) tp!1186387))))

(declare-fun result!278326 () Bool)

(assert (=> tb!229125 (= result!278326 (and (inv!55525 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032))))) (value!203946 (_1!23431 (get!13674 lt!1358032))))) e!2410655))))

(assert (= tb!229125 b!3898890))

(declare-fun m!4458301 () Bool)

(assert (=> b!3898890 m!4458301))

(declare-fun m!4458303 () Bool)

(assert (=> tb!229125 m!4458303))

(assert (=> d!1155257 t!319322))

(declare-fun b_and!294507 () Bool)

(assert (= b_and!294493 (and (=> t!319322 result!278326) b_and!294507)))

(declare-fun t!319324 () Bool)

(declare-fun tb!229127 () Bool)

(assert (=> (and b!3898827 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319324) tb!229127))

(declare-fun result!278328 () Bool)

(assert (= result!278328 result!278326))

(assert (=> d!1155257 t!319324))

(declare-fun b_and!294509 () Bool)

(assert (= b_and!294501 (and (=> t!319324 result!278328) b_and!294509)))

(declare-fun t!319326 () Bool)

(declare-fun tb!229129 () Bool)

(assert (=> (and b!3898205 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319326) tb!229129))

(declare-fun result!278330 () Bool)

(assert (= result!278330 result!278326))

(assert (=> d!1155257 t!319326))

(declare-fun b_and!294511 () Bool)

(assert (= b_and!294505 (and (=> t!319326 result!278330) b_and!294511)))

(declare-fun t!319328 () Bool)

(declare-fun tb!229131 () Bool)

(assert (=> (and b!3898210 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319328) tb!229131))

(declare-fun result!278332 () Bool)

(assert (= result!278332 result!278326))

(assert (=> d!1155257 t!319328))

(declare-fun b_and!294513 () Bool)

(assert (= b_and!294503 (and (=> t!319328 result!278332) b_and!294513)))

(declare-fun tb!229133 () Bool)

(declare-fun t!319330 () Bool)

(assert (=> (and b!3898228 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319330) tb!229133))

(declare-fun result!278334 () Bool)

(assert (= result!278334 result!278326))

(assert (=> d!1155257 t!319330))

(declare-fun b_and!294515 () Bool)

(assert (= b_and!294495 (and (=> t!319330 result!278334) b_and!294515)))

(declare-fun t!319332 () Bool)

(declare-fun tb!229135 () Bool)

(assert (=> (and b!3898822 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319332) tb!229135))

(declare-fun result!278336 () Bool)

(assert (= result!278336 result!278326))

(assert (=> d!1155257 t!319332))

(declare-fun b_and!294517 () Bool)

(assert (= b_and!294499 (and (=> t!319332 result!278336) b_and!294517)))

(declare-fun tb!229137 () Bool)

(declare-fun t!319334 () Bool)

(assert (=> (and b!3898838 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319334) tb!229137))

(declare-fun result!278338 () Bool)

(assert (= result!278338 result!278326))

(assert (=> d!1155257 t!319334))

(declare-fun b_and!294519 () Bool)

(assert (= b_and!294497 (and (=> t!319334 result!278338) b_and!294519)))

(declare-fun m!4458305 () Bool)

(assert (=> d!1155257 m!4458305))

(declare-fun m!4458307 () Bool)

(assert (=> d!1155257 m!4458307))

(assert (=> b!3898430 d!1155257))

(declare-fun d!1155259 () Bool)

(assert (=> d!1155259 (= (get!13674 lt!1358032) (v!39163 lt!1358032))))

(assert (=> b!3898430 d!1155259))

(declare-fun d!1155261 () Bool)

(declare-fun lt!1358179 () Int)

(assert (=> d!1155261 (>= lt!1358179 0)))

(declare-fun e!2410656 () Int)

(assert (=> d!1155261 (= lt!1358179 e!2410656)))

(declare-fun c!677759 () Bool)

(assert (=> d!1155261 (= c!677759 ((_ is Nil!41357) (_2!23432 lt!1358156)))))

(assert (=> d!1155261 (= (size!31050 (_2!23432 lt!1358156)) lt!1358179)))

(declare-fun b!3898891 () Bool)

(assert (=> b!3898891 (= e!2410656 0)))

(declare-fun b!3898892 () Bool)

(assert (=> b!3898892 (= e!2410656 (+ 1 (size!31050 (t!319148 (_2!23432 lt!1358156)))))))

(assert (= (and d!1155261 c!677759) b!3898891))

(assert (= (and d!1155261 (not c!677759)) b!3898892))

(declare-fun m!4458309 () Bool)

(assert (=> b!3898892 m!4458309))

(assert (=> b!3898753 d!1155261))

(assert (=> b!3898753 d!1155233))

(declare-fun b!3898921 () Bool)

(declare-fun res!1577329 () Bool)

(declare-fun e!2410675 () Bool)

(assert (=> b!3898921 (=> res!1577329 e!2410675)))

(assert (=> b!3898921 (= res!1577329 (not (isEmpty!24580 (tail!5963 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145))))))))))

(declare-fun b!3898922 () Bool)

(assert (=> b!3898922 (= e!2410675 (not (= (head!8246 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145))))) (c!677654 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145))))))))))

(declare-fun b!3898923 () Bool)

(declare-fun res!1577324 () Bool)

(declare-fun e!2410672 () Bool)

(assert (=> b!3898923 (=> res!1577324 e!2410672)))

(declare-fun e!2410677 () Bool)

(assert (=> b!3898923 (= res!1577324 e!2410677)))

(declare-fun res!1577327 () Bool)

(assert (=> b!3898923 (=> (not res!1577327) (not e!2410677))))

(declare-fun lt!1358182 () Bool)

(assert (=> b!3898923 (= res!1577327 lt!1358182)))

(declare-fun b!3898924 () Bool)

(declare-fun res!1577328 () Bool)

(assert (=> b!3898924 (=> res!1577328 e!2410672)))

(assert (=> b!3898924 (= res!1577328 (not ((_ is ElementMatch!11337) (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))))))

(declare-fun e!2410673 () Bool)

(assert (=> b!3898924 (= e!2410673 e!2410672)))

(declare-fun b!3898925 () Bool)

(declare-fun e!2410671 () Bool)

(assert (=> b!3898925 (= e!2410672 e!2410671)))

(declare-fun res!1577326 () Bool)

(assert (=> b!3898925 (=> (not res!1577326) (not e!2410671))))

(assert (=> b!3898925 (= res!1577326 (not lt!1358182))))

(declare-fun b!3898926 () Bool)

(declare-fun e!2410674 () Bool)

(assert (=> b!3898926 (= e!2410674 e!2410673)))

(declare-fun c!677766 () Bool)

(assert (=> b!3898926 (= c!677766 ((_ is EmptyLang!11337) (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145))))))))

(declare-fun b!3898927 () Bool)

(declare-fun res!1577325 () Bool)

(assert (=> b!3898927 (=> (not res!1577325) (not e!2410677))))

(assert (=> b!3898927 (= res!1577325 (isEmpty!24580 (tail!5963 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145)))))))))

(declare-fun b!3898928 () Bool)

(declare-fun call!283750 () Bool)

(assert (=> b!3898928 (= e!2410674 (= lt!1358182 call!283750))))

(declare-fun b!3898929 () Bool)

(assert (=> b!3898929 (= e!2410677 (= (head!8246 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145))))) (c!677654 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))))))

(declare-fun bm!283745 () Bool)

(assert (=> bm!283745 (= call!283750 (isEmpty!24580 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145))))))))

(declare-fun b!3898930 () Bool)

(declare-fun e!2410676 () Bool)

(declare-fun derivativeStep!3430 (Regex!11337 C!22860) Regex!11337)

(assert (=> b!3898930 (= e!2410676 (matchR!5432 (derivativeStep!3430 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))) (head!8246 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145)))))) (tail!5963 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145)))))))))

(declare-fun b!3898931 () Bool)

(declare-fun res!1577331 () Bool)

(assert (=> b!3898931 (=> (not res!1577331) (not e!2410677))))

(assert (=> b!3898931 (= res!1577331 (not call!283750))))

(declare-fun b!3898932 () Bool)

(assert (=> b!3898932 (= e!2410673 (not lt!1358182))))

(declare-fun b!3898933 () Bool)

(assert (=> b!3898933 (= e!2410671 e!2410675)))

(declare-fun res!1577330 () Bool)

(assert (=> b!3898933 (=> res!1577330 e!2410675)))

(assert (=> b!3898933 (= res!1577330 call!283750)))

(declare-fun d!1155263 () Bool)

(assert (=> d!1155263 e!2410674))

(declare-fun c!677767 () Bool)

(assert (=> d!1155263 (= c!677767 ((_ is EmptyExpr!11337) (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145))))))))

(assert (=> d!1155263 (= lt!1358182 e!2410676)))

(declare-fun c!677768 () Bool)

(assert (=> d!1155263 (= c!677768 (isEmpty!24580 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145))))))))

(assert (=> d!1155263 (validRegex!5153 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))))

(assert (=> d!1155263 (= (matchR!5432 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145))))) lt!1358182)))

(declare-fun b!3898934 () Bool)

(assert (=> b!3898934 (= e!2410676 (nullable!3954 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145))))))))

(assert (= (and d!1155263 c!677768) b!3898934))

(assert (= (and d!1155263 (not c!677768)) b!3898930))

(assert (= (and d!1155263 c!677767) b!3898928))

(assert (= (and d!1155263 (not c!677767)) b!3898926))

(assert (= (and b!3898926 c!677766) b!3898932))

(assert (= (and b!3898926 (not c!677766)) b!3898924))

(assert (= (and b!3898924 (not res!1577328)) b!3898923))

(assert (= (and b!3898923 res!1577327) b!3898931))

(assert (= (and b!3898931 res!1577331) b!3898927))

(assert (= (and b!3898927 res!1577325) b!3898929))

(assert (= (and b!3898923 (not res!1577324)) b!3898925))

(assert (= (and b!3898925 res!1577326) b!3898933))

(assert (= (and b!3898933 (not res!1577330)) b!3898921))

(assert (= (and b!3898921 (not res!1577329)) b!3898922))

(assert (= (or b!3898928 b!3898933 b!3898931) bm!283745))

(assert (=> d!1155263 m!4458025))

(declare-fun m!4458311 () Bool)

(assert (=> d!1155263 m!4458311))

(declare-fun m!4458313 () Bool)

(assert (=> d!1155263 m!4458313))

(declare-fun m!4458315 () Bool)

(assert (=> b!3898934 m!4458315))

(assert (=> b!3898921 m!4458025))

(declare-fun m!4458317 () Bool)

(assert (=> b!3898921 m!4458317))

(assert (=> b!3898921 m!4458317))

(declare-fun m!4458319 () Bool)

(assert (=> b!3898921 m!4458319))

(assert (=> b!3898927 m!4458025))

(assert (=> b!3898927 m!4458317))

(assert (=> b!3898927 m!4458317))

(assert (=> b!3898927 m!4458319))

(assert (=> bm!283745 m!4458025))

(assert (=> bm!283745 m!4458311))

(assert (=> b!3898929 m!4458025))

(declare-fun m!4458321 () Bool)

(assert (=> b!3898929 m!4458321))

(assert (=> b!3898930 m!4458025))

(assert (=> b!3898930 m!4458321))

(assert (=> b!3898930 m!4458321))

(declare-fun m!4458323 () Bool)

(assert (=> b!3898930 m!4458323))

(assert (=> b!3898930 m!4458025))

(assert (=> b!3898930 m!4458317))

(assert (=> b!3898930 m!4458323))

(assert (=> b!3898930 m!4458317))

(declare-fun m!4458325 () Bool)

(assert (=> b!3898930 m!4458325))

(assert (=> b!3898922 m!4458025))

(assert (=> b!3898922 m!4458321))

(assert (=> b!3898730 d!1155263))

(declare-fun d!1155265 () Bool)

(assert (=> d!1155265 (= (get!13674 lt!1358145) (v!39163 lt!1358145))))

(assert (=> b!3898730 d!1155265))

(declare-fun d!1155267 () Bool)

(assert (=> d!1155267 (= (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145)))) (list!15371 (c!677655 (charsOf!4256 (_1!23431 (get!13674 lt!1358145))))))))

(declare-fun bs!584805 () Bool)

(assert (= bs!584805 d!1155267))

(declare-fun m!4458327 () Bool)

(assert (=> bs!584805 m!4458327))

(assert (=> b!3898730 d!1155267))

(declare-fun d!1155269 () Bool)

(declare-fun lt!1358183 () BalanceConc!24880)

(assert (=> d!1155269 (= (list!15370 lt!1358183) (originalCharacters!7032 (_1!23431 (get!13674 lt!1358145))))))

(assert (=> d!1155269 (= lt!1358183 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145))))) (value!203946 (_1!23431 (get!13674 lt!1358145)))))))

(assert (=> d!1155269 (= (charsOf!4256 (_1!23431 (get!13674 lt!1358145))) lt!1358183)))

(declare-fun b_lambda!113885 () Bool)

(assert (=> (not b_lambda!113885) (not d!1155269)))

(declare-fun t!319336 () Bool)

(declare-fun tb!229139 () Bool)

(assert (=> (and b!3898838 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319336) tb!229139))

(declare-fun b!3898935 () Bool)

(declare-fun e!2410678 () Bool)

(declare-fun tp!1186388 () Bool)

(assert (=> b!3898935 (= e!2410678 (and (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145))))) (value!203946 (_1!23431 (get!13674 lt!1358145)))))) tp!1186388))))

(declare-fun result!278340 () Bool)

(assert (=> tb!229139 (= result!278340 (and (inv!55525 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145))))) (value!203946 (_1!23431 (get!13674 lt!1358145))))) e!2410678))))

(assert (= tb!229139 b!3898935))

(declare-fun m!4458329 () Bool)

(assert (=> b!3898935 m!4458329))

(declare-fun m!4458331 () Bool)

(assert (=> tb!229139 m!4458331))

(assert (=> d!1155269 t!319336))

(declare-fun b_and!294521 () Bool)

(assert (= b_and!294519 (and (=> t!319336 result!278340) b_and!294521)))

(declare-fun t!319338 () Bool)

(declare-fun tb!229141 () Bool)

(assert (=> (and b!3898205 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319338) tb!229141))

(declare-fun result!278342 () Bool)

(assert (= result!278342 result!278340))

(assert (=> d!1155269 t!319338))

(declare-fun b_and!294523 () Bool)

(assert (= b_and!294511 (and (=> t!319338 result!278342) b_and!294523)))

(declare-fun tb!229143 () Bool)

(declare-fun t!319340 () Bool)

(assert (=> (and b!3898822 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319340) tb!229143))

(declare-fun result!278344 () Bool)

(assert (= result!278344 result!278340))

(assert (=> d!1155269 t!319340))

(declare-fun b_and!294525 () Bool)

(assert (= b_and!294517 (and (=> t!319340 result!278344) b_and!294525)))

(declare-fun t!319342 () Bool)

(declare-fun tb!229145 () Bool)

(assert (=> (and b!3898210 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319342) tb!229145))

(declare-fun result!278346 () Bool)

(assert (= result!278346 result!278340))

(assert (=> d!1155269 t!319342))

(declare-fun b_and!294527 () Bool)

(assert (= b_and!294513 (and (=> t!319342 result!278346) b_and!294527)))

(declare-fun t!319344 () Bool)

(declare-fun tb!229147 () Bool)

(assert (=> (and b!3898224 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319344) tb!229147))

(declare-fun result!278348 () Bool)

(assert (= result!278348 result!278340))

(assert (=> d!1155269 t!319344))

(declare-fun b_and!294529 () Bool)

(assert (= b_and!294507 (and (=> t!319344 result!278348) b_and!294529)))

(declare-fun t!319346 () Bool)

(declare-fun tb!229149 () Bool)

(assert (=> (and b!3898228 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319346) tb!229149))

(declare-fun result!278350 () Bool)

(assert (= result!278350 result!278340))

(assert (=> d!1155269 t!319346))

(declare-fun b_and!294531 () Bool)

(assert (= b_and!294515 (and (=> t!319346 result!278350) b_and!294531)))

(declare-fun tb!229151 () Bool)

(declare-fun t!319348 () Bool)

(assert (=> (and b!3898827 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319348) tb!229151))

(declare-fun result!278352 () Bool)

(assert (= result!278352 result!278340))

(assert (=> d!1155269 t!319348))

(declare-fun b_and!294533 () Bool)

(assert (= b_and!294509 (and (=> t!319348 result!278352) b_and!294533)))

(declare-fun m!4458333 () Bool)

(assert (=> d!1155269 m!4458333))

(declare-fun m!4458335 () Bool)

(assert (=> d!1155269 m!4458335))

(assert (=> b!3898730 d!1155269))

(declare-fun d!1155271 () Bool)

(declare-fun res!1577332 () Bool)

(declare-fun e!2410679 () Bool)

(assert (=> d!1155271 (=> (not res!1577332) (not e!2410679))))

(assert (=> d!1155271 (= res!1577332 (not (isEmpty!24580 (originalCharacters!7032 (h!46778 (t!319149 suffixTokens!72))))))))

(assert (=> d!1155271 (= (inv!55520 (h!46778 (t!319149 suffixTokens!72))) e!2410679)))

(declare-fun b!3898936 () Bool)

(declare-fun res!1577333 () Bool)

(assert (=> b!3898936 (=> (not res!1577333) (not e!2410679))))

(assert (=> b!3898936 (= res!1577333 (= (originalCharacters!7032 (h!46778 (t!319149 suffixTokens!72))) (list!15370 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (value!203946 (h!46778 (t!319149 suffixTokens!72)))))))))

(declare-fun b!3898937 () Bool)

(assert (=> b!3898937 (= e!2410679 (= (size!31049 (h!46778 (t!319149 suffixTokens!72))) (size!31050 (originalCharacters!7032 (h!46778 (t!319149 suffixTokens!72))))))))

(assert (= (and d!1155271 res!1577332) b!3898936))

(assert (= (and b!3898936 res!1577333) b!3898937))

(declare-fun b_lambda!113887 () Bool)

(assert (=> (not b_lambda!113887) (not b!3898936)))

(declare-fun t!319350 () Bool)

(declare-fun tb!229153 () Bool)

(assert (=> (and b!3898210 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))) t!319350) tb!229153))

(declare-fun b!3898938 () Bool)

(declare-fun e!2410680 () Bool)

(declare-fun tp!1186389 () Bool)

(assert (=> b!3898938 (= e!2410680 (and (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (value!203946 (h!46778 (t!319149 suffixTokens!72)))))) tp!1186389))))

(declare-fun result!278354 () Bool)

(assert (=> tb!229153 (= result!278354 (and (inv!55525 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (value!203946 (h!46778 (t!319149 suffixTokens!72))))) e!2410680))))

(assert (= tb!229153 b!3898938))

(declare-fun m!4458337 () Bool)

(assert (=> b!3898938 m!4458337))

(declare-fun m!4458339 () Bool)

(assert (=> tb!229153 m!4458339))

(assert (=> b!3898936 t!319350))

(declare-fun b_and!294535 () Bool)

(assert (= b_and!294527 (and (=> t!319350 result!278354) b_and!294535)))

(declare-fun tb!229155 () Bool)

(declare-fun t!319352 () Bool)

(assert (=> (and b!3898228 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))) t!319352) tb!229155))

(declare-fun result!278356 () Bool)

(assert (= result!278356 result!278354))

(assert (=> b!3898936 t!319352))

(declare-fun b_and!294537 () Bool)

(assert (= b_and!294531 (and (=> t!319352 result!278356) b_and!294537)))

(declare-fun t!319354 () Bool)

(declare-fun tb!229157 () Bool)

(assert (=> (and b!3898205 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))) t!319354) tb!229157))

(declare-fun result!278358 () Bool)

(assert (= result!278358 result!278354))

(assert (=> b!3898936 t!319354))

(declare-fun b_and!294539 () Bool)

(assert (= b_and!294523 (and (=> t!319354 result!278358) b_and!294539)))

(declare-fun t!319356 () Bool)

(declare-fun tb!229159 () Bool)

(assert (=> (and b!3898224 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))) t!319356) tb!229159))

(declare-fun result!278360 () Bool)

(assert (= result!278360 result!278354))

(assert (=> b!3898936 t!319356))

(declare-fun b_and!294541 () Bool)

(assert (= b_and!294529 (and (=> t!319356 result!278360) b_and!294541)))

(declare-fun t!319358 () Bool)

(declare-fun tb!229161 () Bool)

(assert (=> (and b!3898822 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))) t!319358) tb!229161))

(declare-fun result!278362 () Bool)

(assert (= result!278362 result!278354))

(assert (=> b!3898936 t!319358))

(declare-fun b_and!294543 () Bool)

(assert (= b_and!294525 (and (=> t!319358 result!278362) b_and!294543)))

(declare-fun tb!229163 () Bool)

(declare-fun t!319360 () Bool)

(assert (=> (and b!3898838 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))) t!319360) tb!229163))

(declare-fun result!278364 () Bool)

(assert (= result!278364 result!278354))

(assert (=> b!3898936 t!319360))

(declare-fun b_and!294545 () Bool)

(assert (= b_and!294521 (and (=> t!319360 result!278364) b_and!294545)))

(declare-fun tb!229165 () Bool)

(declare-fun t!319362 () Bool)

(assert (=> (and b!3898827 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))) t!319362) tb!229165))

(declare-fun result!278366 () Bool)

(assert (= result!278366 result!278354))

(assert (=> b!3898936 t!319362))

(declare-fun b_and!294547 () Bool)

(assert (= b_and!294533 (and (=> t!319362 result!278366) b_and!294547)))

(declare-fun m!4458341 () Bool)

(assert (=> d!1155271 m!4458341))

(declare-fun m!4458343 () Bool)

(assert (=> b!3898936 m!4458343))

(assert (=> b!3898936 m!4458343))

(declare-fun m!4458345 () Bool)

(assert (=> b!3898936 m!4458345))

(declare-fun m!4458347 () Bool)

(assert (=> b!3898937 m!4458347))

(assert (=> b!3898819 d!1155271))

(declare-fun b!3898939 () Bool)

(declare-fun e!2410682 () List!41482)

(assert (=> b!3898939 (= e!2410682 suffixTokens!72)))

(declare-fun d!1155273 () Bool)

(declare-fun e!2410681 () Bool)

(assert (=> d!1155273 e!2410681))

(declare-fun res!1577334 () Bool)

(assert (=> d!1155273 (=> (not res!1577334) (not e!2410681))))

(declare-fun lt!1358184 () List!41482)

(assert (=> d!1155273 (= res!1577334 (= (content!6187 lt!1358184) ((_ map or) (content!6187 (t!319149 prefixTokens!80)) (content!6187 suffixTokens!72))))))

(assert (=> d!1155273 (= lt!1358184 e!2410682)))

(declare-fun c!677769 () Bool)

(assert (=> d!1155273 (= c!677769 ((_ is Nil!41358) (t!319149 prefixTokens!80)))))

(assert (=> d!1155273 (= (++!10622 (t!319149 prefixTokens!80) suffixTokens!72) lt!1358184)))

(declare-fun b!3898940 () Bool)

(assert (=> b!3898940 (= e!2410682 (Cons!41358 (h!46778 (t!319149 prefixTokens!80)) (++!10622 (t!319149 (t!319149 prefixTokens!80)) suffixTokens!72)))))

(declare-fun b!3898941 () Bool)

(declare-fun res!1577335 () Bool)

(assert (=> b!3898941 (=> (not res!1577335) (not e!2410681))))

(assert (=> b!3898941 (= res!1577335 (= (size!31052 lt!1358184) (+ (size!31052 (t!319149 prefixTokens!80)) (size!31052 suffixTokens!72))))))

(declare-fun b!3898942 () Bool)

(assert (=> b!3898942 (= e!2410681 (or (not (= suffixTokens!72 Nil!41358)) (= lt!1358184 (t!319149 prefixTokens!80))))))

(assert (= (and d!1155273 c!677769) b!3898939))

(assert (= (and d!1155273 (not c!677769)) b!3898940))

(assert (= (and d!1155273 res!1577334) b!3898941))

(assert (= (and b!3898941 res!1577335) b!3898942))

(declare-fun m!4458349 () Bool)

(assert (=> d!1155273 m!4458349))

(declare-fun m!4458351 () Bool)

(assert (=> d!1155273 m!4458351))

(assert (=> d!1155273 m!4458117))

(declare-fun m!4458353 () Bool)

(assert (=> b!3898940 m!4458353))

(declare-fun m!4458355 () Bool)

(assert (=> b!3898941 m!4458355))

(declare-fun m!4458357 () Bool)

(assert (=> b!3898941 m!4458357))

(assert (=> b!3898941 m!4458125))

(assert (=> b!3898758 d!1155273))

(declare-fun b!3898943 () Bool)

(declare-fun e!2410683 () Bool)

(declare-fun lt!1358189 () Option!8852)

(assert (=> b!3898943 (= e!2410683 (contains!8311 (t!319150 (t!319150 rules!2768)) (rule!9336 (_1!23431 (get!13674 lt!1358189)))))))

(declare-fun b!3898944 () Bool)

(declare-fun e!2410685 () Option!8852)

(declare-fun lt!1358185 () Option!8852)

(declare-fun lt!1358188 () Option!8852)

(assert (=> b!3898944 (= e!2410685 (ite (and ((_ is None!8851) lt!1358185) ((_ is None!8851) lt!1358188)) None!8851 (ite ((_ is None!8851) lt!1358188) lt!1358185 (ite ((_ is None!8851) lt!1358185) lt!1358188 (ite (>= (size!31049 (_1!23431 (v!39163 lt!1358185))) (size!31049 (_1!23431 (v!39163 lt!1358188)))) lt!1358185 lt!1358188)))))))

(declare-fun call!283751 () Option!8852)

(assert (=> b!3898944 (= lt!1358185 call!283751)))

(assert (=> b!3898944 (= lt!1358188 (maxPrefix!3325 thiss!20629 (t!319150 (t!319150 (t!319150 rules!2768))) lt!1357946))))

(declare-fun b!3898945 () Bool)

(declare-fun res!1577339 () Bool)

(assert (=> b!3898945 (=> (not res!1577339) (not e!2410683))))

(assert (=> b!3898945 (= res!1577339 (< (size!31050 (_2!23431 (get!13674 lt!1358189))) (size!31050 lt!1357946)))))

(declare-fun b!3898946 () Bool)

(declare-fun res!1577340 () Bool)

(assert (=> b!3898946 (=> (not res!1577340) (not e!2410683))))

(assert (=> b!3898946 (= res!1577340 (= (value!203946 (_1!23431 (get!13674 lt!1358189))) (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358189)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358189)))))))))

(declare-fun b!3898947 () Bool)

(assert (=> b!3898947 (= e!2410685 call!283751)))

(declare-fun b!3898948 () Bool)

(declare-fun res!1577336 () Bool)

(assert (=> b!3898948 (=> (not res!1577336) (not e!2410683))))

(assert (=> b!3898948 (= res!1577336 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358189)))) (_2!23431 (get!13674 lt!1358189))) lt!1357946))))

(declare-fun bm!283746 () Bool)

(assert (=> bm!283746 (= call!283751 (maxPrefixOneRule!2401 thiss!20629 (h!46779 (t!319150 (t!319150 rules!2768))) lt!1357946))))

(declare-fun b!3898950 () Bool)

(declare-fun res!1577342 () Bool)

(assert (=> b!3898950 (=> (not res!1577342) (not e!2410683))))

(assert (=> b!3898950 (= res!1577342 (= (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358189)))) (originalCharacters!7032 (_1!23431 (get!13674 lt!1358189)))))))

(declare-fun b!3898951 () Bool)

(declare-fun res!1577341 () Bool)

(assert (=> b!3898951 (=> (not res!1577341) (not e!2410683))))

(assert (=> b!3898951 (= res!1577341 (matchR!5432 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358189)))) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358189))))))))

(declare-fun d!1155275 () Bool)

(declare-fun e!2410684 () Bool)

(assert (=> d!1155275 e!2410684))

(declare-fun res!1577338 () Bool)

(assert (=> d!1155275 (=> res!1577338 e!2410684)))

(assert (=> d!1155275 (= res!1577338 (isEmpty!24584 lt!1358189))))

(assert (=> d!1155275 (= lt!1358189 e!2410685)))

(declare-fun c!677770 () Bool)

(assert (=> d!1155275 (= c!677770 (and ((_ is Cons!41359) (t!319150 (t!319150 rules!2768))) ((_ is Nil!41359) (t!319150 (t!319150 (t!319150 rules!2768))))))))

(declare-fun lt!1358186 () Unit!59476)

(declare-fun lt!1358187 () Unit!59476)

(assert (=> d!1155275 (= lt!1358186 lt!1358187)))

(assert (=> d!1155275 (isPrefix!3527 lt!1357946 lt!1357946)))

(assert (=> d!1155275 (= lt!1358187 (lemmaIsPrefixRefl!2234 lt!1357946 lt!1357946))))

(assert (=> d!1155275 (rulesValidInductive!2304 thiss!20629 (t!319150 (t!319150 rules!2768)))))

(assert (=> d!1155275 (= (maxPrefix!3325 thiss!20629 (t!319150 (t!319150 rules!2768)) lt!1357946) lt!1358189)))

(declare-fun b!3898949 () Bool)

(assert (=> b!3898949 (= e!2410684 e!2410683)))

(declare-fun res!1577337 () Bool)

(assert (=> b!3898949 (=> (not res!1577337) (not e!2410683))))

(assert (=> b!3898949 (= res!1577337 (isDefined!6903 lt!1358189))))

(assert (= (and d!1155275 c!677770) b!3898947))

(assert (= (and d!1155275 (not c!677770)) b!3898944))

(assert (= (or b!3898947 b!3898944) bm!283746))

(assert (= (and d!1155275 (not res!1577338)) b!3898949))

(assert (= (and b!3898949 res!1577337) b!3898950))

(assert (= (and b!3898950 res!1577342) b!3898945))

(assert (= (and b!3898945 res!1577339) b!3898948))

(assert (= (and b!3898948 res!1577336) b!3898946))

(assert (= (and b!3898946 res!1577340) b!3898951))

(assert (= (and b!3898951 res!1577341) b!3898943))

(declare-fun m!4458359 () Bool)

(assert (=> d!1155275 m!4458359))

(assert (=> d!1155275 m!4457303))

(assert (=> d!1155275 m!4457305))

(declare-fun m!4458361 () Bool)

(assert (=> d!1155275 m!4458361))

(declare-fun m!4458363 () Bool)

(assert (=> bm!283746 m!4458363))

(declare-fun m!4458365 () Bool)

(assert (=> b!3898945 m!4458365))

(declare-fun m!4458367 () Bool)

(assert (=> b!3898945 m!4458367))

(assert (=> b!3898945 m!4457537))

(assert (=> b!3898951 m!4458365))

(declare-fun m!4458369 () Bool)

(assert (=> b!3898951 m!4458369))

(assert (=> b!3898951 m!4458369))

(declare-fun m!4458371 () Bool)

(assert (=> b!3898951 m!4458371))

(assert (=> b!3898951 m!4458371))

(declare-fun m!4458373 () Bool)

(assert (=> b!3898951 m!4458373))

(declare-fun m!4458375 () Bool)

(assert (=> b!3898949 m!4458375))

(declare-fun m!4458377 () Bool)

(assert (=> b!3898944 m!4458377))

(assert (=> b!3898946 m!4458365))

(declare-fun m!4458379 () Bool)

(assert (=> b!3898946 m!4458379))

(assert (=> b!3898946 m!4458379))

(declare-fun m!4458381 () Bool)

(assert (=> b!3898946 m!4458381))

(assert (=> b!3898943 m!4458365))

(declare-fun m!4458383 () Bool)

(assert (=> b!3898943 m!4458383))

(assert (=> b!3898950 m!4458365))

(assert (=> b!3898950 m!4458369))

(assert (=> b!3898950 m!4458369))

(assert (=> b!3898950 m!4458371))

(assert (=> b!3898948 m!4458365))

(assert (=> b!3898948 m!4458369))

(assert (=> b!3898948 m!4458369))

(assert (=> b!3898948 m!4458371))

(assert (=> b!3898948 m!4458371))

(declare-fun m!4458385 () Bool)

(assert (=> b!3898948 m!4458385))

(assert (=> b!3898426 d!1155275))

(declare-fun b!3898952 () Bool)

(declare-fun e!2410686 () Bool)

(declare-fun lt!1358194 () Option!8852)

(assert (=> b!3898952 (= e!2410686 (contains!8311 (t!319150 rules!2768) (rule!9336 (_1!23431 (get!13674 lt!1358194)))))))

(declare-fun b!3898953 () Bool)

(declare-fun e!2410688 () Option!8852)

(declare-fun lt!1358190 () Option!8852)

(declare-fun lt!1358193 () Option!8852)

(assert (=> b!3898953 (= e!2410688 (ite (and ((_ is None!8851) lt!1358190) ((_ is None!8851) lt!1358193)) None!8851 (ite ((_ is None!8851) lt!1358193) lt!1358190 (ite ((_ is None!8851) lt!1358190) lt!1358193 (ite (>= (size!31049 (_1!23431 (v!39163 lt!1358190))) (size!31049 (_1!23431 (v!39163 lt!1358193)))) lt!1358190 lt!1358193)))))))

(declare-fun call!283752 () Option!8852)

(assert (=> b!3898953 (= lt!1358190 call!283752)))

(assert (=> b!3898953 (= lt!1358193 (maxPrefix!3325 thiss!20629 (t!319150 (t!319150 rules!2768)) (++!10621 prefix!426 Nil!41357)))))

(declare-fun b!3898954 () Bool)

(declare-fun res!1577346 () Bool)

(assert (=> b!3898954 (=> (not res!1577346) (not e!2410686))))

(assert (=> b!3898954 (= res!1577346 (< (size!31050 (_2!23431 (get!13674 lt!1358194))) (size!31050 (++!10621 prefix!426 Nil!41357))))))

(declare-fun b!3898955 () Bool)

(declare-fun res!1577347 () Bool)

(assert (=> b!3898955 (=> (not res!1577347) (not e!2410686))))

(assert (=> b!3898955 (= res!1577347 (= (value!203946 (_1!23431 (get!13674 lt!1358194))) (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358194)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358194)))))))))

(declare-fun b!3898956 () Bool)

(assert (=> b!3898956 (= e!2410688 call!283752)))

(declare-fun b!3898957 () Bool)

(declare-fun res!1577343 () Bool)

(assert (=> b!3898957 (=> (not res!1577343) (not e!2410686))))

(assert (=> b!3898957 (= res!1577343 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358194)))) (_2!23431 (get!13674 lt!1358194))) (++!10621 prefix!426 Nil!41357)))))

(declare-fun bm!283747 () Bool)

(assert (=> bm!283747 (= call!283752 (maxPrefixOneRule!2401 thiss!20629 (h!46779 (t!319150 rules!2768)) (++!10621 prefix!426 Nil!41357)))))

(declare-fun b!3898959 () Bool)

(declare-fun res!1577349 () Bool)

(assert (=> b!3898959 (=> (not res!1577349) (not e!2410686))))

(assert (=> b!3898959 (= res!1577349 (= (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358194)))) (originalCharacters!7032 (_1!23431 (get!13674 lt!1358194)))))))

(declare-fun b!3898960 () Bool)

(declare-fun res!1577348 () Bool)

(assert (=> b!3898960 (=> (not res!1577348) (not e!2410686))))

(assert (=> b!3898960 (= res!1577348 (matchR!5432 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358194)))) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358194))))))))

(declare-fun d!1155277 () Bool)

(declare-fun e!2410687 () Bool)

(assert (=> d!1155277 e!2410687))

(declare-fun res!1577345 () Bool)

(assert (=> d!1155277 (=> res!1577345 e!2410687)))

(assert (=> d!1155277 (= res!1577345 (isEmpty!24584 lt!1358194))))

(assert (=> d!1155277 (= lt!1358194 e!2410688)))

(declare-fun c!677771 () Bool)

(assert (=> d!1155277 (= c!677771 (and ((_ is Cons!41359) (t!319150 rules!2768)) ((_ is Nil!41359) (t!319150 (t!319150 rules!2768)))))))

(declare-fun lt!1358191 () Unit!59476)

(declare-fun lt!1358192 () Unit!59476)

(assert (=> d!1155277 (= lt!1358191 lt!1358192)))

(assert (=> d!1155277 (isPrefix!3527 (++!10621 prefix!426 Nil!41357) (++!10621 prefix!426 Nil!41357))))

(assert (=> d!1155277 (= lt!1358192 (lemmaIsPrefixRefl!2234 (++!10621 prefix!426 Nil!41357) (++!10621 prefix!426 Nil!41357)))))

(assert (=> d!1155277 (rulesValidInductive!2304 thiss!20629 (t!319150 rules!2768))))

(assert (=> d!1155277 (= (maxPrefix!3325 thiss!20629 (t!319150 rules!2768) (++!10621 prefix!426 Nil!41357)) lt!1358194)))

(declare-fun b!3898958 () Bool)

(assert (=> b!3898958 (= e!2410687 e!2410686)))

(declare-fun res!1577344 () Bool)

(assert (=> b!3898958 (=> (not res!1577344) (not e!2410686))))

(assert (=> b!3898958 (= res!1577344 (isDefined!6903 lt!1358194))))

(assert (= (and d!1155277 c!677771) b!3898956))

(assert (= (and d!1155277 (not c!677771)) b!3898953))

(assert (= (or b!3898956 b!3898953) bm!283747))

(assert (= (and d!1155277 (not res!1577345)) b!3898958))

(assert (= (and b!3898958 res!1577344) b!3898959))

(assert (= (and b!3898959 res!1577349) b!3898954))

(assert (= (and b!3898954 res!1577346) b!3898957))

(assert (= (and b!3898957 res!1577343) b!3898955))

(assert (= (and b!3898955 res!1577347) b!3898960))

(assert (= (and b!3898960 res!1577348) b!3898952))

(declare-fun m!4458387 () Bool)

(assert (=> d!1155277 m!4458387))

(assert (=> d!1155277 m!4457313))

(assert (=> d!1155277 m!4457313))

(assert (=> d!1155277 m!4458011))

(assert (=> d!1155277 m!4457313))

(assert (=> d!1155277 m!4457313))

(assert (=> d!1155277 m!4458013))

(assert (=> d!1155277 m!4457529))

(assert (=> bm!283747 m!4457313))

(declare-fun m!4458389 () Bool)

(assert (=> bm!283747 m!4458389))

(declare-fun m!4458391 () Bool)

(assert (=> b!3898954 m!4458391))

(declare-fun m!4458393 () Bool)

(assert (=> b!3898954 m!4458393))

(assert (=> b!3898954 m!4457313))

(assert (=> b!3898954 m!4458021))

(assert (=> b!3898960 m!4458391))

(declare-fun m!4458395 () Bool)

(assert (=> b!3898960 m!4458395))

(assert (=> b!3898960 m!4458395))

(declare-fun m!4458397 () Bool)

(assert (=> b!3898960 m!4458397))

(assert (=> b!3898960 m!4458397))

(declare-fun m!4458399 () Bool)

(assert (=> b!3898960 m!4458399))

(declare-fun m!4458401 () Bool)

(assert (=> b!3898958 m!4458401))

(assert (=> b!3898953 m!4457313))

(declare-fun m!4458403 () Bool)

(assert (=> b!3898953 m!4458403))

(assert (=> b!3898955 m!4458391))

(declare-fun m!4458405 () Bool)

(assert (=> b!3898955 m!4458405))

(assert (=> b!3898955 m!4458405))

(declare-fun m!4458407 () Bool)

(assert (=> b!3898955 m!4458407))

(assert (=> b!3898952 m!4458391))

(declare-fun m!4458409 () Bool)

(assert (=> b!3898952 m!4458409))

(assert (=> b!3898959 m!4458391))

(assert (=> b!3898959 m!4458395))

(assert (=> b!3898959 m!4458395))

(assert (=> b!3898959 m!4458397))

(assert (=> b!3898957 m!4458391))

(assert (=> b!3898957 m!4458395))

(assert (=> b!3898957 m!4458395))

(assert (=> b!3898957 m!4458397))

(assert (=> b!3898957 m!4458397))

(declare-fun m!4458411 () Bool)

(assert (=> b!3898957 m!4458411))

(assert (=> b!3898723 d!1155277))

(declare-fun d!1155279 () Bool)

(declare-fun c!677774 () Bool)

(assert (=> d!1155279 (= c!677774 ((_ is Nil!41358) lt!1358158))))

(declare-fun e!2410691 () (InoxSet Token!12002))

(assert (=> d!1155279 (= (content!6187 lt!1358158) e!2410691)))

(declare-fun b!3898965 () Bool)

(assert (=> b!3898965 (= e!2410691 ((as const (Array Token!12002 Bool)) false))))

(declare-fun b!3898966 () Bool)

(assert (=> b!3898966 (= e!2410691 ((_ map or) (store ((as const (Array Token!12002 Bool)) false) (h!46778 lt!1358158) true) (content!6187 (t!319149 lt!1358158))))))

(assert (= (and d!1155279 c!677774) b!3898965))

(assert (= (and d!1155279 (not c!677774)) b!3898966))

(declare-fun m!4458413 () Bool)

(assert (=> b!3898966 m!4458413))

(declare-fun m!4458415 () Bool)

(assert (=> b!3898966 m!4458415))

(assert (=> d!1155195 d!1155279))

(declare-fun d!1155281 () Bool)

(declare-fun c!677775 () Bool)

(assert (=> d!1155281 (= c!677775 ((_ is Nil!41358) prefixTokens!80))))

(declare-fun e!2410692 () (InoxSet Token!12002))

(assert (=> d!1155281 (= (content!6187 prefixTokens!80) e!2410692)))

(declare-fun b!3898967 () Bool)

(assert (=> b!3898967 (= e!2410692 ((as const (Array Token!12002 Bool)) false))))

(declare-fun b!3898968 () Bool)

(assert (=> b!3898968 (= e!2410692 ((_ map or) (store ((as const (Array Token!12002 Bool)) false) (h!46778 prefixTokens!80) true) (content!6187 (t!319149 prefixTokens!80))))))

(assert (= (and d!1155281 c!677775) b!3898967))

(assert (= (and d!1155281 (not c!677775)) b!3898968))

(declare-fun m!4458417 () Bool)

(assert (=> b!3898968 m!4458417))

(assert (=> b!3898968 m!4458351))

(assert (=> d!1155195 d!1155281))

(declare-fun d!1155283 () Bool)

(declare-fun c!677776 () Bool)

(assert (=> d!1155283 (= c!677776 ((_ is Nil!41358) suffixTokens!72))))

(declare-fun e!2410693 () (InoxSet Token!12002))

(assert (=> d!1155283 (= (content!6187 suffixTokens!72) e!2410693)))

(declare-fun b!3898969 () Bool)

(assert (=> b!3898969 (= e!2410693 ((as const (Array Token!12002 Bool)) false))))

(declare-fun b!3898970 () Bool)

(assert (=> b!3898970 (= e!2410693 ((_ map or) (store ((as const (Array Token!12002 Bool)) false) (h!46778 suffixTokens!72) true) (content!6187 (t!319149 suffixTokens!72))))))

(assert (= (and d!1155283 c!677776) b!3898969))

(assert (= (and d!1155283 (not c!677776)) b!3898970))

(declare-fun m!4458419 () Bool)

(assert (=> b!3898970 m!4458419))

(declare-fun m!4458421 () Bool)

(assert (=> b!3898970 m!4458421))

(assert (=> d!1155195 d!1155283))

(declare-fun b!3898971 () Bool)

(declare-fun e!2410695 () List!41481)

(assert (=> b!3898971 (= e!2410695 lt!1358059)))

(declare-fun b!3898972 () Bool)

(assert (=> b!3898972 (= e!2410695 (Cons!41357 (h!46777 lt!1357938) (++!10621 (t!319148 lt!1357938) lt!1358059)))))

(declare-fun d!1155285 () Bool)

(declare-fun e!2410694 () Bool)

(assert (=> d!1155285 e!2410694))

(declare-fun res!1577351 () Bool)

(assert (=> d!1155285 (=> (not res!1577351) (not e!2410694))))

(declare-fun lt!1358195 () List!41481)

(assert (=> d!1155285 (= res!1577351 (= (content!6186 lt!1358195) ((_ map or) (content!6186 lt!1357938) (content!6186 lt!1358059))))))

(assert (=> d!1155285 (= lt!1358195 e!2410695)))

(declare-fun c!677777 () Bool)

(assert (=> d!1155285 (= c!677777 ((_ is Nil!41357) lt!1357938))))

(assert (=> d!1155285 (= (++!10621 lt!1357938 lt!1358059) lt!1358195)))

(declare-fun b!3898973 () Bool)

(declare-fun res!1577350 () Bool)

(assert (=> b!3898973 (=> (not res!1577350) (not e!2410694))))

(assert (=> b!3898973 (= res!1577350 (= (size!31050 lt!1358195) (+ (size!31050 lt!1357938) (size!31050 lt!1358059))))))

(declare-fun b!3898974 () Bool)

(assert (=> b!3898974 (= e!2410694 (or (not (= lt!1358059 Nil!41357)) (= lt!1358195 lt!1357938)))))

(assert (= (and d!1155285 c!677777) b!3898971))

(assert (= (and d!1155285 (not c!677777)) b!3898972))

(assert (= (and d!1155285 res!1577351) b!3898973))

(assert (= (and b!3898973 res!1577350) b!3898974))

(declare-fun m!4458423 () Bool)

(assert (=> b!3898972 m!4458423))

(declare-fun m!4458425 () Bool)

(assert (=> d!1155285 m!4458425))

(assert (=> d!1155285 m!4457743))

(declare-fun m!4458427 () Bool)

(assert (=> d!1155285 m!4458427))

(declare-fun m!4458429 () Bool)

(assert (=> b!3898973 m!4458429))

(assert (=> b!3898973 m!4457273))

(declare-fun m!4458431 () Bool)

(assert (=> b!3898973 m!4458431))

(assert (=> d!1155095 d!1155285))

(assert (=> d!1155095 d!1155233))

(assert (=> d!1155095 d!1155097))

(declare-fun b!3898975 () Bool)

(declare-fun e!2410697 () List!41481)

(assert (=> b!3898975 (= e!2410697 (_2!23431 (get!13674 lt!1358145)))))

(declare-fun b!3898976 () Bool)

(assert (=> b!3898976 (= e!2410697 (Cons!41357 (h!46777 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145))))) (++!10621 (t!319148 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145))))) (_2!23431 (get!13674 lt!1358145)))))))

(declare-fun d!1155287 () Bool)

(declare-fun e!2410696 () Bool)

(assert (=> d!1155287 e!2410696))

(declare-fun res!1577353 () Bool)

(assert (=> d!1155287 (=> (not res!1577353) (not e!2410696))))

(declare-fun lt!1358196 () List!41481)

(assert (=> d!1155287 (= res!1577353 (= (content!6186 lt!1358196) ((_ map or) (content!6186 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145))))) (content!6186 (_2!23431 (get!13674 lt!1358145))))))))

(assert (=> d!1155287 (= lt!1358196 e!2410697)))

(declare-fun c!677778 () Bool)

(assert (=> d!1155287 (= c!677778 ((_ is Nil!41357) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145))))))))

(assert (=> d!1155287 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145)))) (_2!23431 (get!13674 lt!1358145))) lt!1358196)))

(declare-fun b!3898977 () Bool)

(declare-fun res!1577352 () Bool)

(assert (=> b!3898977 (=> (not res!1577352) (not e!2410696))))

(assert (=> b!3898977 (= res!1577352 (= (size!31050 lt!1358196) (+ (size!31050 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145))))) (size!31050 (_2!23431 (get!13674 lt!1358145))))))))

(declare-fun b!3898978 () Bool)

(assert (=> b!3898978 (= e!2410696 (or (not (= (_2!23431 (get!13674 lt!1358145)) Nil!41357)) (= lt!1358196 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358145)))))))))

(assert (= (and d!1155287 c!677778) b!3898975))

(assert (= (and d!1155287 (not c!677778)) b!3898976))

(assert (= (and d!1155287 res!1577353) b!3898977))

(assert (= (and b!3898977 res!1577352) b!3898978))

(declare-fun m!4458433 () Bool)

(assert (=> b!3898976 m!4458433))

(declare-fun m!4458435 () Bool)

(assert (=> d!1155287 m!4458435))

(assert (=> d!1155287 m!4458025))

(declare-fun m!4458437 () Bool)

(assert (=> d!1155287 m!4458437))

(declare-fun m!4458439 () Bool)

(assert (=> d!1155287 m!4458439))

(declare-fun m!4458441 () Bool)

(assert (=> b!3898977 m!4458441))

(assert (=> b!3898977 m!4458025))

(declare-fun m!4458443 () Bool)

(assert (=> b!3898977 m!4458443))

(assert (=> b!3898977 m!4458019))

(assert (=> b!3898727 d!1155287))

(assert (=> b!3898727 d!1155267))

(assert (=> b!3898727 d!1155269))

(assert (=> b!3898727 d!1155265))

(declare-fun d!1155289 () Bool)

(assert (=> d!1155289 (= (isEmpty!24581 (_1!23432 lt!1358054)) ((_ is Nil!41358) (_1!23432 lt!1358054)))))

(assert (=> b!3898480 d!1155289))

(declare-fun d!1155291 () Bool)

(declare-fun lt!1358197 () Int)

(assert (=> d!1155291 (>= lt!1358197 0)))

(declare-fun e!2410698 () Int)

(assert (=> d!1155291 (= lt!1358197 e!2410698)))

(declare-fun c!677779 () Bool)

(assert (=> d!1155291 (= c!677779 ((_ is Nil!41357) lt!1357950))))

(assert (=> d!1155291 (= (size!31050 lt!1357950) lt!1358197)))

(declare-fun b!3898979 () Bool)

(assert (=> b!3898979 (= e!2410698 0)))

(declare-fun b!3898980 () Bool)

(assert (=> b!3898980 (= e!2410698 (+ 1 (size!31050 (t!319148 lt!1357950))))))

(assert (= (and d!1155291 c!677779) b!3898979))

(assert (= (and d!1155291 (not c!677779)) b!3898980))

(declare-fun m!4458445 () Bool)

(assert (=> b!3898980 m!4458445))

(assert (=> b!3898488 d!1155291))

(assert (=> b!3898488 d!1155097))

(declare-fun d!1155293 () Bool)

(declare-fun nullableFct!1121 (Regex!11337) Bool)

(assert (=> d!1155293 (= (nullable!3954 (regex!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (nullableFct!1121 (regex!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))))

(declare-fun bs!584806 () Bool)

(assert (= bs!584806 d!1155293))

(declare-fun m!4458447 () Bool)

(assert (=> bs!584806 m!4458447))

(assert (=> b!3898478 d!1155293))

(declare-fun d!1155295 () Bool)

(declare-fun c!677782 () Bool)

(assert (=> d!1155295 (= c!677782 ((_ is Nil!41357) lt!1358146))))

(declare-fun e!2410701 () (InoxSet C!22860))

(assert (=> d!1155295 (= (content!6186 lt!1358146) e!2410701)))

(declare-fun b!3898989 () Bool)

(assert (=> b!3898989 (= e!2410701 ((as const (Array C!22860 Bool)) false))))

(declare-fun b!3898990 () Bool)

(assert (=> b!3898990 (= e!2410701 ((_ map or) (store ((as const (Array C!22860 Bool)) false) (h!46777 lt!1358146) true) (content!6186 (t!319148 lt!1358146))))))

(assert (= (and d!1155295 c!677782) b!3898989))

(assert (= (and d!1155295 (not c!677782)) b!3898990))

(declare-fun m!4458451 () Bool)

(assert (=> b!3898990 m!4458451))

(declare-fun m!4458453 () Bool)

(assert (=> b!3898990 m!4458453))

(assert (=> d!1155179 d!1155295))

(declare-fun d!1155299 () Bool)

(declare-fun c!677784 () Bool)

(assert (=> d!1155299 (= c!677784 ((_ is Nil!41357) prefix!426))))

(declare-fun e!2410703 () (InoxSet C!22860))

(assert (=> d!1155299 (= (content!6186 prefix!426) e!2410703)))

(declare-fun b!3898993 () Bool)

(assert (=> b!3898993 (= e!2410703 ((as const (Array C!22860 Bool)) false))))

(declare-fun b!3898994 () Bool)

(assert (=> b!3898994 (= e!2410703 ((_ map or) (store ((as const (Array C!22860 Bool)) false) (h!46777 prefix!426) true) (content!6186 (t!319148 prefix!426))))))

(assert (= (and d!1155299 c!677784) b!3898993))

(assert (= (and d!1155299 (not c!677784)) b!3898994))

(declare-fun m!4458457 () Bool)

(assert (=> b!3898994 m!4458457))

(assert (=> b!3898994 m!4458241))

(assert (=> d!1155179 d!1155299))

(declare-fun d!1155303 () Bool)

(assert (=> d!1155303 (= (content!6186 Nil!41357) ((as const (Array C!22860 Bool)) false))))

(assert (=> d!1155179 d!1155303))

(declare-fun d!1155307 () Bool)

(declare-fun lt!1358202 () Bool)

(declare-fun content!6189 (List!41483) (InoxSet Rule!12664))

(assert (=> d!1155307 (= lt!1358202 (select (content!6189 rules!2768) (rule!9336 (_1!23431 (get!13674 lt!1358151)))))))

(declare-fun e!2410710 () Bool)

(assert (=> d!1155307 (= lt!1358202 e!2410710)))

(declare-fun res!1577359 () Bool)

(assert (=> d!1155307 (=> (not res!1577359) (not e!2410710))))

(assert (=> d!1155307 (= res!1577359 ((_ is Cons!41359) rules!2768))))

(assert (=> d!1155307 (= (contains!8311 rules!2768 (rule!9336 (_1!23431 (get!13674 lt!1358151)))) lt!1358202)))

(declare-fun b!3899001 () Bool)

(declare-fun e!2410709 () Bool)

(assert (=> b!3899001 (= e!2410710 e!2410709)))

(declare-fun res!1577358 () Bool)

(assert (=> b!3899001 (=> res!1577358 e!2410709)))

(assert (=> b!3899001 (= res!1577358 (= (h!46779 rules!2768) (rule!9336 (_1!23431 (get!13674 lt!1358151)))))))

(declare-fun b!3899002 () Bool)

(assert (=> b!3899002 (= e!2410709 (contains!8311 (t!319150 rules!2768) (rule!9336 (_1!23431 (get!13674 lt!1358151)))))))

(assert (= (and d!1155307 res!1577359) b!3899001))

(assert (= (and b!3899001 (not res!1577358)) b!3899002))

(declare-fun m!4458461 () Bool)

(assert (=> d!1155307 m!4458461))

(declare-fun m!4458463 () Bool)

(assert (=> d!1155307 m!4458463))

(declare-fun m!4458465 () Bool)

(assert (=> b!3899002 m!4458465))

(assert (=> b!3898735 d!1155307))

(assert (=> b!3898735 d!1155239))

(declare-fun b!3899007 () Bool)

(declare-fun res!1577369 () Bool)

(declare-fun e!2410719 () Bool)

(assert (=> b!3899007 (=> res!1577369 e!2410719)))

(assert (=> b!3899007 (= res!1577369 (not (isEmpty!24580 (tail!5963 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123))))))))))

(declare-fun b!3899008 () Bool)

(assert (=> b!3899008 (= e!2410719 (not (= (head!8246 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123))))) (c!677654 (regex!6432 (h!46779 rules!2768))))))))

(declare-fun b!3899009 () Bool)

(declare-fun res!1577364 () Bool)

(declare-fun e!2410716 () Bool)

(assert (=> b!3899009 (=> res!1577364 e!2410716)))

(declare-fun e!2410721 () Bool)

(assert (=> b!3899009 (= res!1577364 e!2410721)))

(declare-fun res!1577367 () Bool)

(assert (=> b!3899009 (=> (not res!1577367) (not e!2410721))))

(declare-fun lt!1358205 () Bool)

(assert (=> b!3899009 (= res!1577367 lt!1358205)))

(declare-fun b!3899010 () Bool)

(declare-fun res!1577368 () Bool)

(assert (=> b!3899010 (=> res!1577368 e!2410716)))

(assert (=> b!3899010 (= res!1577368 (not ((_ is ElementMatch!11337) (regex!6432 (h!46779 rules!2768)))))))

(declare-fun e!2410717 () Bool)

(assert (=> b!3899010 (= e!2410717 e!2410716)))

(declare-fun b!3899011 () Bool)

(declare-fun e!2410715 () Bool)

(assert (=> b!3899011 (= e!2410716 e!2410715)))

(declare-fun res!1577366 () Bool)

(assert (=> b!3899011 (=> (not res!1577366) (not e!2410715))))

(assert (=> b!3899011 (= res!1577366 (not lt!1358205))))

(declare-fun b!3899012 () Bool)

(declare-fun e!2410718 () Bool)

(assert (=> b!3899012 (= e!2410718 e!2410717)))

(declare-fun c!677786 () Bool)

(assert (=> b!3899012 (= c!677786 ((_ is EmptyLang!11337) (regex!6432 (h!46779 rules!2768))))))

(declare-fun b!3899013 () Bool)

(declare-fun res!1577365 () Bool)

(assert (=> b!3899013 (=> (not res!1577365) (not e!2410721))))

(assert (=> b!3899013 (= res!1577365 (isEmpty!24580 (tail!5963 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123)))))))))

(declare-fun b!3899014 () Bool)

(declare-fun call!283753 () Bool)

(assert (=> b!3899014 (= e!2410718 (= lt!1358205 call!283753))))

(declare-fun b!3899015 () Bool)

(assert (=> b!3899015 (= e!2410721 (= (head!8246 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123))))) (c!677654 (regex!6432 (h!46779 rules!2768)))))))

(declare-fun bm!283748 () Bool)

(assert (=> bm!283748 (= call!283753 (isEmpty!24580 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123))))))))

(declare-fun b!3899016 () Bool)

(declare-fun e!2410720 () Bool)

(assert (=> b!3899016 (= e!2410720 (matchR!5432 (derivativeStep!3430 (regex!6432 (h!46779 rules!2768)) (head!8246 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123)))))) (tail!5963 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123)))))))))

(declare-fun b!3899017 () Bool)

(declare-fun res!1577371 () Bool)

(assert (=> b!3899017 (=> (not res!1577371) (not e!2410721))))

(assert (=> b!3899017 (= res!1577371 (not call!283753))))

(declare-fun b!3899018 () Bool)

(assert (=> b!3899018 (= e!2410717 (not lt!1358205))))

(declare-fun b!3899019 () Bool)

(assert (=> b!3899019 (= e!2410715 e!2410719)))

(declare-fun res!1577370 () Bool)

(assert (=> b!3899019 (=> res!1577370 e!2410719)))

(assert (=> b!3899019 (= res!1577370 call!283753)))

(declare-fun d!1155311 () Bool)

(assert (=> d!1155311 e!2410718))

(declare-fun c!677787 () Bool)

(assert (=> d!1155311 (= c!677787 ((_ is EmptyExpr!11337) (regex!6432 (h!46779 rules!2768))))))

(assert (=> d!1155311 (= lt!1358205 e!2410720)))

(declare-fun c!677788 () Bool)

(assert (=> d!1155311 (= c!677788 (isEmpty!24580 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123))))))))

(assert (=> d!1155311 (validRegex!5153 (regex!6432 (h!46779 rules!2768)))))

(assert (=> d!1155311 (= (matchR!5432 (regex!6432 (h!46779 rules!2768)) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123))))) lt!1358205)))

(declare-fun b!3899020 () Bool)

(assert (=> b!3899020 (= e!2410720 (nullable!3954 (regex!6432 (h!46779 rules!2768))))))

(assert (= (and d!1155311 c!677788) b!3899020))

(assert (= (and d!1155311 (not c!677788)) b!3899016))

(assert (= (and d!1155311 c!677787) b!3899014))

(assert (= (and d!1155311 (not c!677787)) b!3899012))

(assert (= (and b!3899012 c!677786) b!3899018))

(assert (= (and b!3899012 (not c!677786)) b!3899010))

(assert (= (and b!3899010 (not res!1577368)) b!3899009))

(assert (= (and b!3899009 res!1577367) b!3899017))

(assert (= (and b!3899017 res!1577371) b!3899013))

(assert (= (and b!3899013 res!1577365) b!3899015))

(assert (= (and b!3899009 (not res!1577364)) b!3899011))

(assert (= (and b!3899011 res!1577366) b!3899019))

(assert (= (and b!3899019 (not res!1577370)) b!3899007))

(assert (= (and b!3899007 (not res!1577369)) b!3899008))

(assert (= (or b!3899014 b!3899019 b!3899017) bm!283748))

(assert (=> d!1155311 m!4457903))

(declare-fun m!4458467 () Bool)

(assert (=> d!1155311 m!4458467))

(declare-fun m!4458469 () Bool)

(assert (=> d!1155311 m!4458469))

(declare-fun m!4458471 () Bool)

(assert (=> b!3899020 m!4458471))

(assert (=> b!3899007 m!4457903))

(declare-fun m!4458473 () Bool)

(assert (=> b!3899007 m!4458473))

(assert (=> b!3899007 m!4458473))

(declare-fun m!4458475 () Bool)

(assert (=> b!3899007 m!4458475))

(assert (=> b!3899013 m!4457903))

(assert (=> b!3899013 m!4458473))

(assert (=> b!3899013 m!4458473))

(assert (=> b!3899013 m!4458475))

(assert (=> bm!283748 m!4457903))

(assert (=> bm!283748 m!4458467))

(assert (=> b!3899015 m!4457903))

(declare-fun m!4458477 () Bool)

(assert (=> b!3899015 m!4458477))

(assert (=> b!3899016 m!4457903))

(assert (=> b!3899016 m!4458477))

(assert (=> b!3899016 m!4458477))

(declare-fun m!4458479 () Bool)

(assert (=> b!3899016 m!4458479))

(assert (=> b!3899016 m!4457903))

(assert (=> b!3899016 m!4458473))

(assert (=> b!3899016 m!4458479))

(assert (=> b!3899016 m!4458473))

(declare-fun m!4458481 () Bool)

(assert (=> b!3899016 m!4458481))

(assert (=> b!3899008 m!4457903))

(assert (=> b!3899008 m!4458477))

(assert (=> b!3898671 d!1155311))

(declare-fun d!1155313 () Bool)

(assert (=> d!1155313 (= (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123)))) (list!15371 (c!677655 (charsOf!4256 (_1!23431 (get!13674 lt!1358123))))))))

(declare-fun bs!584808 () Bool)

(assert (= bs!584808 d!1155313))

(declare-fun m!4458483 () Bool)

(assert (=> bs!584808 m!4458483))

(assert (=> b!3898671 d!1155313))

(declare-fun d!1155315 () Bool)

(declare-fun lt!1358207 () BalanceConc!24880)

(assert (=> d!1155315 (= (list!15370 lt!1358207) (originalCharacters!7032 (_1!23431 (get!13674 lt!1358123))))))

(assert (=> d!1155315 (= lt!1358207 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123))))) (value!203946 (_1!23431 (get!13674 lt!1358123)))))))

(assert (=> d!1155315 (= (charsOf!4256 (_1!23431 (get!13674 lt!1358123))) lt!1358207)))

(declare-fun b_lambda!113889 () Bool)

(assert (=> (not b_lambda!113889) (not d!1155315)))

(declare-fun t!319364 () Bool)

(declare-fun tb!229167 () Bool)

(assert (=> (and b!3898822 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319364) tb!229167))

(declare-fun b!3899026 () Bool)

(declare-fun e!2410725 () Bool)

(declare-fun tp!1186390 () Bool)

(assert (=> b!3899026 (= e!2410725 (and (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123))))) (value!203946 (_1!23431 (get!13674 lt!1358123)))))) tp!1186390))))

(declare-fun result!278368 () Bool)

(assert (=> tb!229167 (= result!278368 (and (inv!55525 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123))))) (value!203946 (_1!23431 (get!13674 lt!1358123))))) e!2410725))))

(assert (= tb!229167 b!3899026))

(declare-fun m!4458493 () Bool)

(assert (=> b!3899026 m!4458493))

(declare-fun m!4458497 () Bool)

(assert (=> tb!229167 m!4458497))

(assert (=> d!1155315 t!319364))

(declare-fun b_and!294549 () Bool)

(assert (= b_and!294543 (and (=> t!319364 result!278368) b_and!294549)))

(declare-fun t!319366 () Bool)

(declare-fun tb!229169 () Bool)

(assert (=> (and b!3898205 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319366) tb!229169))

(declare-fun result!278370 () Bool)

(assert (= result!278370 result!278368))

(assert (=> d!1155315 t!319366))

(declare-fun b_and!294551 () Bool)

(assert (= b_and!294539 (and (=> t!319366 result!278370) b_and!294551)))

(declare-fun tb!229171 () Bool)

(declare-fun t!319368 () Bool)

(assert (=> (and b!3898210 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319368) tb!229171))

(declare-fun result!278372 () Bool)

(assert (= result!278372 result!278368))

(assert (=> d!1155315 t!319368))

(declare-fun b_and!294553 () Bool)

(assert (= b_and!294535 (and (=> t!319368 result!278372) b_and!294553)))

(declare-fun tb!229173 () Bool)

(declare-fun t!319370 () Bool)

(assert (=> (and b!3898838 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319370) tb!229173))

(declare-fun result!278374 () Bool)

(assert (= result!278374 result!278368))

(assert (=> d!1155315 t!319370))

(declare-fun b_and!294555 () Bool)

(assert (= b_and!294545 (and (=> t!319370 result!278374) b_and!294555)))

(declare-fun t!319372 () Bool)

(declare-fun tb!229175 () Bool)

(assert (=> (and b!3898224 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319372) tb!229175))

(declare-fun result!278376 () Bool)

(assert (= result!278376 result!278368))

(assert (=> d!1155315 t!319372))

(declare-fun b_and!294557 () Bool)

(assert (= b_and!294541 (and (=> t!319372 result!278376) b_and!294557)))

(declare-fun tb!229177 () Bool)

(declare-fun t!319374 () Bool)

(assert (=> (and b!3898827 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319374) tb!229177))

(declare-fun result!278378 () Bool)

(assert (= result!278378 result!278368))

(assert (=> d!1155315 t!319374))

(declare-fun b_and!294559 () Bool)

(assert (= b_and!294547 (and (=> t!319374 result!278378) b_and!294559)))

(declare-fun t!319376 () Bool)

(declare-fun tb!229179 () Bool)

(assert (=> (and b!3898228 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319376) tb!229179))

(declare-fun result!278380 () Bool)

(assert (= result!278380 result!278368))

(assert (=> d!1155315 t!319376))

(declare-fun b_and!294561 () Bool)

(assert (= b_and!294537 (and (=> t!319376 result!278380) b_and!294561)))

(declare-fun m!4458499 () Bool)

(assert (=> d!1155315 m!4458499))

(declare-fun m!4458501 () Bool)

(assert (=> d!1155315 m!4458501))

(assert (=> b!3898671 d!1155315))

(declare-fun d!1155323 () Bool)

(assert (=> d!1155323 (= (get!13674 lt!1358123) (v!39163 lt!1358123))))

(assert (=> b!3898671 d!1155323))

(declare-fun d!1155325 () Bool)

(assert (=> d!1155325 true))

(declare-fun order!22231 () Int)

(declare-fun lambda!126386 () Int)

(declare-fun order!22233 () Int)

(declare-fun dynLambda!17759 (Int Int) Int)

(declare-fun dynLambda!17760 (Int Int) Int)

(assert (=> d!1155325 (< (dynLambda!17759 order!22231 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) (dynLambda!17760 order!22233 lambda!126386))))

(declare-fun Forall2!1040 (Int) Bool)

(assert (=> d!1155325 (= (equivClasses!2654 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) (Forall2!1040 lambda!126386))))

(declare-fun bs!584839 () Bool)

(assert (= bs!584839 d!1155325))

(declare-fun m!4458985 () Bool)

(assert (=> bs!584839 m!4458985))

(assert (=> b!3898464 d!1155325))

(declare-fun b!3899333 () Bool)

(declare-fun e!2410910 () List!41481)

(assert (=> b!3899333 (= e!2410910 suffix!1176)))

(declare-fun b!3899334 () Bool)

(assert (=> b!3899334 (= e!2410910 (Cons!41357 (h!46777 (t!319148 prefix!426)) (++!10621 (t!319148 (t!319148 prefix!426)) suffix!1176)))))

(declare-fun d!1155527 () Bool)

(declare-fun e!2410909 () Bool)

(assert (=> d!1155527 e!2410909))

(declare-fun res!1577519 () Bool)

(assert (=> d!1155527 (=> (not res!1577519) (not e!2410909))))

(declare-fun lt!1358360 () List!41481)

(assert (=> d!1155527 (= res!1577519 (= (content!6186 lt!1358360) ((_ map or) (content!6186 (t!319148 prefix!426)) (content!6186 suffix!1176))))))

(assert (=> d!1155527 (= lt!1358360 e!2410910)))

(declare-fun c!677867 () Bool)

(assert (=> d!1155527 (= c!677867 ((_ is Nil!41357) (t!319148 prefix!426)))))

(assert (=> d!1155527 (= (++!10621 (t!319148 prefix!426) suffix!1176) lt!1358360)))

(declare-fun b!3899335 () Bool)

(declare-fun res!1577518 () Bool)

(assert (=> b!3899335 (=> (not res!1577518) (not e!2410909))))

(assert (=> b!3899335 (= res!1577518 (= (size!31050 lt!1358360) (+ (size!31050 (t!319148 prefix!426)) (size!31050 suffix!1176))))))

(declare-fun b!3899336 () Bool)

(assert (=> b!3899336 (= e!2410909 (or (not (= suffix!1176 Nil!41357)) (= lt!1358360 (t!319148 prefix!426))))))

(assert (= (and d!1155527 c!677867) b!3899333))

(assert (= (and d!1155527 (not c!677867)) b!3899334))

(assert (= (and d!1155527 res!1577519) b!3899335))

(assert (= (and b!3899335 res!1577518) b!3899336))

(declare-fun m!4458987 () Bool)

(assert (=> b!3899334 m!4458987))

(declare-fun m!4458989 () Bool)

(assert (=> d!1155527 m!4458989))

(assert (=> d!1155527 m!4458241))

(assert (=> d!1155527 m!4458131))

(declare-fun m!4458991 () Bool)

(assert (=> b!3899335 m!4458991))

(assert (=> b!3899335 m!4458245))

(assert (=> b!3899335 m!4457429))

(assert (=> b!3898762 d!1155527))

(assert (=> bm!283739 d!1155133))

(declare-fun d!1155529 () Bool)

(assert (=> d!1155529 (= (inv!15 (value!203946 (h!46778 prefixTokens!80))) (= (charsToBigInt!0 (text!47083 (value!203946 (h!46778 prefixTokens!80))) 0) (value!203941 (value!203946 (h!46778 prefixTokens!80)))))))

(declare-fun bs!584840 () Bool)

(assert (= bs!584840 d!1155529))

(declare-fun m!4458993 () Bool)

(assert (=> bs!584840 m!4458993))

(assert (=> b!3898767 d!1155529))

(declare-fun d!1155531 () Bool)

(declare-fun isBalanced!3632 (Conc!12643) Bool)

(assert (=> d!1155531 (= (inv!55525 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80)))) (isBalanced!3632 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80))))))))

(declare-fun bs!584841 () Bool)

(assert (= bs!584841 d!1155531))

(declare-fun m!4458995 () Bool)

(assert (=> bs!584841 m!4458995))

(assert (=> tb!229059 d!1155531))

(declare-fun b!3899361 () Bool)

(declare-fun e!2410924 () List!41481)

(assert (=> b!3899361 (= e!2410924 Nil!41357)))

(declare-fun b!3899364 () Bool)

(declare-fun e!2410925 () List!41481)

(assert (=> b!3899364 (= e!2410925 (++!10621 (list!15371 (left!31693 (c!677655 (charsOf!4256 (_1!23431 (v!39163 lt!1357935)))))) (list!15371 (right!32023 (c!677655 (charsOf!4256 (_1!23431 (v!39163 lt!1357935))))))))))

(declare-fun d!1155533 () Bool)

(declare-fun c!677879 () Bool)

(assert (=> d!1155533 (= c!677879 ((_ is Empty!12643) (c!677655 (charsOf!4256 (_1!23431 (v!39163 lt!1357935))))))))

(assert (=> d!1155533 (= (list!15371 (c!677655 (charsOf!4256 (_1!23431 (v!39163 lt!1357935))))) e!2410924)))

(declare-fun b!3899362 () Bool)

(assert (=> b!3899362 (= e!2410924 e!2410925)))

(declare-fun c!677880 () Bool)

(assert (=> b!3899362 (= c!677880 ((_ is Leaf!19566) (c!677655 (charsOf!4256 (_1!23431 (v!39163 lt!1357935))))))))

(declare-fun b!3899363 () Bool)

(declare-fun list!15374 (IArray!25291) List!41481)

(assert (=> b!3899363 (= e!2410925 (list!15374 (xs!15949 (c!677655 (charsOf!4256 (_1!23431 (v!39163 lt!1357935)))))))))

(assert (= (and d!1155533 c!677879) b!3899361))

(assert (= (and d!1155533 (not c!677879)) b!3899362))

(assert (= (and b!3899362 c!677880) b!3899363))

(assert (= (and b!3899362 (not c!677880)) b!3899364))

(declare-fun m!4459043 () Bool)

(assert (=> b!3899364 m!4459043))

(declare-fun m!4459045 () Bool)

(assert (=> b!3899364 m!4459045))

(assert (=> b!3899364 m!4459043))

(assert (=> b!3899364 m!4459045))

(declare-fun m!4459047 () Bool)

(assert (=> b!3899364 m!4459047))

(declare-fun m!4459049 () Bool)

(assert (=> b!3899363 m!4459049))

(assert (=> d!1155107 d!1155533))

(assert (=> d!1155129 d!1155057))

(assert (=> b!3898708 d!1155233))

(declare-fun d!1155539 () Bool)

(assert (=> d!1155539 (= (isEmpty!24581 (_1!23432 lt!1358156)) ((_ is Nil!41358) (_1!23432 lt!1358156)))))

(assert (=> b!3898752 d!1155539))

(assert (=> b!3898729 d!1155267))

(assert (=> b!3898729 d!1155269))

(assert (=> b!3898729 d!1155265))

(assert (=> b!3898432 d!1155255))

(assert (=> b!3898432 d!1155257))

(assert (=> b!3898432 d!1155259))

(assert (=> b!3898682 d!1155059))

(declare-fun d!1155541 () Bool)

(declare-fun lt!1358390 () Int)

(assert (=> d!1155541 (>= lt!1358390 0)))

(declare-fun e!2410926 () Int)

(assert (=> d!1155541 (= lt!1358390 e!2410926)))

(declare-fun c!677881 () Bool)

(assert (=> d!1155541 (= c!677881 ((_ is Nil!41357) (originalCharacters!7032 (h!46778 prefixTokens!80))))))

(assert (=> d!1155541 (= (size!31050 (originalCharacters!7032 (h!46778 prefixTokens!80))) lt!1358390)))

(declare-fun b!3899365 () Bool)

(assert (=> b!3899365 (= e!2410926 0)))

(declare-fun b!3899366 () Bool)

(assert (=> b!3899366 (= e!2410926 (+ 1 (size!31050 (t!319148 (originalCharacters!7032 (h!46778 prefixTokens!80))))))))

(assert (= (and d!1155541 c!677881) b!3899365))

(assert (= (and d!1155541 (not c!677881)) b!3899366))

(declare-fun m!4459053 () Bool)

(assert (=> b!3899366 m!4459053))

(assert (=> b!3898771 d!1155541))

(declare-fun b!3899372 () Bool)

(declare-fun res!1577526 () Bool)

(declare-fun e!2410930 () Bool)

(assert (=> b!3899372 (=> (not res!1577526) (not e!2410930))))

(declare-fun lt!1358396 () Option!8852)

(assert (=> b!3899372 (= res!1577526 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358396)))) (_2!23431 (get!13674 lt!1358396))) prefix!426))))

(declare-fun b!3899373 () Bool)

(assert (=> b!3899373 (= e!2410930 (= (size!31049 (_1!23431 (get!13674 lt!1358396))) (size!31050 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358396))))))))

(declare-fun b!3899374 () Bool)

(declare-fun e!2410931 () Option!8852)

(assert (=> b!3899374 (= e!2410931 None!8851)))

(declare-fun b!3899375 () Bool)

(declare-fun e!2410932 () Bool)

(assert (=> b!3899375 (= e!2410932 (matchR!5432 (regex!6432 (h!46779 rules!2768)) (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) prefix!426 prefix!426 (size!31050 prefix!426)))))))

(declare-fun b!3899376 () Bool)

(declare-fun res!1577527 () Bool)

(assert (=> b!3899376 (=> (not res!1577527) (not e!2410930))))

(assert (=> b!3899376 (= res!1577527 (= (rule!9336 (_1!23431 (get!13674 lt!1358396))) (h!46779 rules!2768)))))

(declare-fun b!3899377 () Bool)

(declare-fun lt!1358394 () tuple2!40600)

(assert (=> b!3899377 (= e!2410931 (Some!8851 (tuple2!40595 (Token!12003 (apply!9671 (transformation!6432 (h!46779 rules!2768)) (seqFromList!4699 (_1!23434 lt!1358394))) (h!46779 rules!2768) (size!31054 (seqFromList!4699 (_1!23434 lt!1358394))) (_1!23434 lt!1358394)) (_2!23434 lt!1358394))))))

(declare-fun lt!1358397 () Unit!59476)

(assert (=> b!3899377 (= lt!1358397 (longestMatchIsAcceptedByMatchOrIsEmpty!1193 (regex!6432 (h!46779 rules!2768)) prefix!426))))

(declare-fun res!1577529 () Bool)

(assert (=> b!3899377 (= res!1577529 (isEmpty!24580 (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) prefix!426 prefix!426 (size!31050 prefix!426)))))))

(assert (=> b!3899377 (=> res!1577529 e!2410932)))

(assert (=> b!3899377 e!2410932))

(declare-fun lt!1358395 () Unit!59476)

(assert (=> b!3899377 (= lt!1358395 lt!1358397)))

(declare-fun lt!1358398 () Unit!59476)

(assert (=> b!3899377 (= lt!1358398 (lemmaSemiInverse!1726 (transformation!6432 (h!46779 rules!2768)) (seqFromList!4699 (_1!23434 lt!1358394))))))

(declare-fun b!3899378 () Bool)

(declare-fun e!2410933 () Bool)

(assert (=> b!3899378 (= e!2410933 e!2410930)))

(declare-fun res!1577523 () Bool)

(assert (=> b!3899378 (=> (not res!1577523) (not e!2410930))))

(assert (=> b!3899378 (= res!1577523 (matchR!5432 (regex!6432 (h!46779 rules!2768)) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358396))))))))

(declare-fun b!3899379 () Bool)

(declare-fun res!1577528 () Bool)

(assert (=> b!3899379 (=> (not res!1577528) (not e!2410930))))

(assert (=> b!3899379 (= res!1577528 (= (value!203946 (_1!23431 (get!13674 lt!1358396))) (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358396)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358396)))))))))

(declare-fun d!1155545 () Bool)

(assert (=> d!1155545 e!2410933))

(declare-fun res!1577524 () Bool)

(assert (=> d!1155545 (=> res!1577524 e!2410933)))

(assert (=> d!1155545 (= res!1577524 (isEmpty!24584 lt!1358396))))

(assert (=> d!1155545 (= lt!1358396 e!2410931)))

(declare-fun c!677884 () Bool)

(assert (=> d!1155545 (= c!677884 (isEmpty!24580 (_1!23434 lt!1358394)))))

(assert (=> d!1155545 (= lt!1358394 (findLongestMatch!1133 (regex!6432 (h!46779 rules!2768)) prefix!426))))

(assert (=> d!1155545 (ruleValid!2380 thiss!20629 (h!46779 rules!2768))))

(assert (=> d!1155545 (= (maxPrefixOneRule!2401 thiss!20629 (h!46779 rules!2768) prefix!426) lt!1358396)))

(declare-fun b!3899380 () Bool)

(declare-fun res!1577525 () Bool)

(assert (=> b!3899380 (=> (not res!1577525) (not e!2410930))))

(assert (=> b!3899380 (= res!1577525 (< (size!31050 (_2!23431 (get!13674 lt!1358396))) (size!31050 prefix!426)))))

(assert (= (and d!1155545 c!677884) b!3899374))

(assert (= (and d!1155545 (not c!677884)) b!3899377))

(assert (= (and b!3899377 (not res!1577529)) b!3899375))

(assert (= (and d!1155545 (not res!1577524)) b!3899378))

(assert (= (and b!3899378 res!1577523) b!3899372))

(assert (= (and b!3899372 res!1577526) b!3899380))

(assert (= (and b!3899380 res!1577525) b!3899376))

(assert (= (and b!3899376 res!1577527) b!3899379))

(assert (= (and b!3899379 res!1577528) b!3899373))

(declare-fun m!4459071 () Bool)

(assert (=> b!3899372 m!4459071))

(declare-fun m!4459073 () Bool)

(assert (=> b!3899372 m!4459073))

(assert (=> b!3899372 m!4459073))

(declare-fun m!4459075 () Bool)

(assert (=> b!3899372 m!4459075))

(assert (=> b!3899372 m!4459075))

(declare-fun m!4459077 () Bool)

(assert (=> b!3899372 m!4459077))

(assert (=> b!3899378 m!4459071))

(assert (=> b!3899378 m!4459073))

(assert (=> b!3899378 m!4459073))

(assert (=> b!3899378 m!4459075))

(assert (=> b!3899378 m!4459075))

(declare-fun m!4459081 () Bool)

(assert (=> b!3899378 m!4459081))

(declare-fun m!4459083 () Bool)

(assert (=> d!1155545 m!4459083))

(declare-fun m!4459085 () Bool)

(assert (=> d!1155545 m!4459085))

(declare-fun m!4459087 () Bool)

(assert (=> d!1155545 m!4459087))

(assert (=> d!1155545 m!4457915))

(assert (=> b!3899380 m!4459071))

(declare-fun m!4459089 () Bool)

(assert (=> b!3899380 m!4459089))

(assert (=> b!3899380 m!4458051))

(assert (=> b!3899373 m!4459071))

(declare-fun m!4459091 () Bool)

(assert (=> b!3899373 m!4459091))

(assert (=> b!3899376 m!4459071))

(declare-fun m!4459093 () Bool)

(assert (=> b!3899377 m!4459093))

(declare-fun m!4459095 () Bool)

(assert (=> b!3899377 m!4459095))

(assert (=> b!3899377 m!4459093))

(declare-fun m!4459097 () Bool)

(assert (=> b!3899377 m!4459097))

(assert (=> b!3899377 m!4457437))

(assert (=> b!3899377 m!4458051))

(assert (=> b!3899377 m!4457437))

(assert (=> b!3899377 m!4458051))

(declare-fun m!4459099 () Bool)

(assert (=> b!3899377 m!4459099))

(assert (=> b!3899377 m!4459093))

(declare-fun m!4459101 () Bool)

(assert (=> b!3899377 m!4459101))

(declare-fun m!4459103 () Bool)

(assert (=> b!3899377 m!4459103))

(assert (=> b!3899377 m!4459093))

(declare-fun m!4459105 () Bool)

(assert (=> b!3899377 m!4459105))

(assert (=> b!3899379 m!4459071))

(declare-fun m!4459107 () Bool)

(assert (=> b!3899379 m!4459107))

(assert (=> b!3899379 m!4459107))

(declare-fun m!4459109 () Bool)

(assert (=> b!3899379 m!4459109))

(assert (=> b!3899375 m!4457437))

(assert (=> b!3899375 m!4458051))

(assert (=> b!3899375 m!4457437))

(assert (=> b!3899375 m!4458051))

(assert (=> b!3899375 m!4459099))

(declare-fun m!4459111 () Bool)

(assert (=> b!3899375 m!4459111))

(assert (=> bm!283741 d!1155545))

(declare-fun b!3899389 () Bool)

(declare-fun e!2410940 () List!41481)

(assert (=> b!3899389 (= e!2410940 (_2!23431 (get!13674 lt!1358130)))))

(declare-fun b!3899390 () Bool)

(assert (=> b!3899390 (= e!2410940 (Cons!41357 (h!46777 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130))))) (++!10621 (t!319148 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130))))) (_2!23431 (get!13674 lt!1358130)))))))

(declare-fun d!1155563 () Bool)

(declare-fun e!2410939 () Bool)

(assert (=> d!1155563 e!2410939))

(declare-fun res!1577535 () Bool)

(assert (=> d!1155563 (=> (not res!1577535) (not e!2410939))))

(declare-fun lt!1358402 () List!41481)

(assert (=> d!1155563 (= res!1577535 (= (content!6186 lt!1358402) ((_ map or) (content!6186 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130))))) (content!6186 (_2!23431 (get!13674 lt!1358130))))))))

(assert (=> d!1155563 (= lt!1358402 e!2410940)))

(declare-fun c!677887 () Bool)

(assert (=> d!1155563 (= c!677887 ((_ is Nil!41357) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130))))))))

(assert (=> d!1155563 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130)))) (_2!23431 (get!13674 lt!1358130))) lt!1358402)))

(declare-fun b!3899391 () Bool)

(declare-fun res!1577534 () Bool)

(assert (=> b!3899391 (=> (not res!1577534) (not e!2410939))))

(assert (=> b!3899391 (= res!1577534 (= (size!31050 lt!1358402) (+ (size!31050 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130))))) (size!31050 (_2!23431 (get!13674 lt!1358130))))))))

(declare-fun b!3899392 () Bool)

(assert (=> b!3899392 (= e!2410939 (or (not (= (_2!23431 (get!13674 lt!1358130)) Nil!41357)) (= lt!1358402 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130)))))))))

(assert (= (and d!1155563 c!677887) b!3899389))

(assert (= (and d!1155563 (not c!677887)) b!3899390))

(assert (= (and d!1155563 res!1577535) b!3899391))

(assert (= (and b!3899391 res!1577534) b!3899392))

(declare-fun m!4459123 () Bool)

(assert (=> b!3899390 m!4459123))

(declare-fun m!4459127 () Bool)

(assert (=> d!1155563 m!4459127))

(assert (=> d!1155563 m!4457963))

(declare-fun m!4459133 () Bool)

(assert (=> d!1155563 m!4459133))

(declare-fun m!4459135 () Bool)

(assert (=> d!1155563 m!4459135))

(declare-fun m!4459137 () Bool)

(assert (=> b!3899391 m!4459137))

(assert (=> b!3899391 m!4457963))

(declare-fun m!4459139 () Bool)

(assert (=> b!3899391 m!4459139))

(assert (=> b!3899391 m!4457959))

(assert (=> b!3898686 d!1155563))

(declare-fun d!1155571 () Bool)

(assert (=> d!1155571 (= (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130)))) (list!15371 (c!677655 (charsOf!4256 (_1!23431 (get!13674 lt!1358130))))))))

(declare-fun bs!584848 () Bool)

(assert (= bs!584848 d!1155571))

(declare-fun m!4459141 () Bool)

(assert (=> bs!584848 m!4459141))

(assert (=> b!3898686 d!1155571))

(declare-fun d!1155573 () Bool)

(declare-fun lt!1358403 () BalanceConc!24880)

(assert (=> d!1155573 (= (list!15370 lt!1358403) (originalCharacters!7032 (_1!23431 (get!13674 lt!1358130))))))

(assert (=> d!1155573 (= lt!1358403 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130))))) (value!203946 (_1!23431 (get!13674 lt!1358130)))))))

(assert (=> d!1155573 (= (charsOf!4256 (_1!23431 (get!13674 lt!1358130))) lt!1358403)))

(declare-fun b_lambda!113913 () Bool)

(assert (=> (not b_lambda!113913) (not d!1155573)))

(declare-fun t!319522 () Bool)

(declare-fun tb!229323 () Bool)

(assert (=> (and b!3898822 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319522) tb!229323))

(declare-fun b!3899396 () Bool)

(declare-fun e!2410943 () Bool)

(declare-fun tp!1186397 () Bool)

(assert (=> b!3899396 (= e!2410943 (and (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130))))) (value!203946 (_1!23431 (get!13674 lt!1358130)))))) tp!1186397))))

(declare-fun result!278524 () Bool)

(assert (=> tb!229323 (= result!278524 (and (inv!55525 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130))))) (value!203946 (_1!23431 (get!13674 lt!1358130))))) e!2410943))))

(assert (= tb!229323 b!3899396))

(declare-fun m!4459147 () Bool)

(assert (=> b!3899396 m!4459147))

(declare-fun m!4459149 () Bool)

(assert (=> tb!229323 m!4459149))

(assert (=> d!1155573 t!319522))

(declare-fun b_and!294711 () Bool)

(assert (= b_and!294549 (and (=> t!319522 result!278524) b_and!294711)))

(declare-fun tb!229333 () Bool)

(declare-fun t!319532 () Bool)

(assert (=> (and b!3898838 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319532) tb!229333))

(declare-fun result!278534 () Bool)

(assert (= result!278534 result!278524))

(assert (=> d!1155573 t!319532))

(declare-fun b_and!294715 () Bool)

(assert (= b_and!294555 (and (=> t!319532 result!278534) b_and!294715)))

(declare-fun tb!229337 () Bool)

(declare-fun t!319536 () Bool)

(assert (=> (and b!3898205 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319536) tb!229337))

(declare-fun result!278538 () Bool)

(assert (= result!278538 result!278524))

(assert (=> d!1155573 t!319536))

(declare-fun b_and!294719 () Bool)

(assert (= b_and!294551 (and (=> t!319536 result!278538) b_and!294719)))

(declare-fun t!319540 () Bool)

(declare-fun tb!229341 () Bool)

(assert (=> (and b!3898210 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319540) tb!229341))

(declare-fun result!278542 () Bool)

(assert (= result!278542 result!278524))

(assert (=> d!1155573 t!319540))

(declare-fun b_and!294723 () Bool)

(assert (= b_and!294553 (and (=> t!319540 result!278542) b_and!294723)))

(declare-fun t!319542 () Bool)

(declare-fun tb!229343 () Bool)

(assert (=> (and b!3898228 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319542) tb!229343))

(declare-fun result!278544 () Bool)

(assert (= result!278544 result!278524))

(assert (=> d!1155573 t!319542))

(declare-fun b_and!294725 () Bool)

(assert (= b_and!294561 (and (=> t!319542 result!278544) b_and!294725)))

(declare-fun t!319544 () Bool)

(declare-fun tb!229345 () Bool)

(assert (=> (and b!3898224 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319544) tb!229345))

(declare-fun result!278546 () Bool)

(assert (= result!278546 result!278524))

(assert (=> d!1155573 t!319544))

(declare-fun b_and!294727 () Bool)

(assert (= b_and!294557 (and (=> t!319544 result!278546) b_and!294727)))

(declare-fun tb!229347 () Bool)

(declare-fun t!319546 () Bool)

(assert (=> (and b!3898827 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319546) tb!229347))

(declare-fun result!278548 () Bool)

(assert (= result!278548 result!278524))

(assert (=> d!1155573 t!319546))

(declare-fun b_and!294729 () Bool)

(assert (= b_and!294559 (and (=> t!319546 result!278548) b_and!294729)))

(declare-fun m!4459159 () Bool)

(assert (=> d!1155573 m!4459159))

(declare-fun m!4459161 () Bool)

(assert (=> d!1155573 m!4459161))

(assert (=> b!3898686 d!1155573))

(assert (=> b!3898686 d!1155231))

(declare-fun d!1155579 () Bool)

(assert (=> d!1155579 (= (inv!16 (value!203946 (h!46778 prefixTokens!80))) (= (charsToInt!0 (text!47081 (value!203946 (h!46778 prefixTokens!80)))) (value!203937 (value!203946 (h!46778 prefixTokens!80)))))))

(declare-fun bs!584849 () Bool)

(assert (= bs!584849 d!1155579))

(declare-fun m!4459163 () Bool)

(assert (=> bs!584849 m!4459163))

(assert (=> b!3898765 d!1155579))

(declare-fun d!1155583 () Bool)

(assert (=> d!1155583 (= (head!8246 lt!1357946) (h!46777 lt!1357946))))

(assert (=> b!3898706 d!1155583))

(declare-fun d!1155585 () Bool)

(assert (=> d!1155585 (= (isEmpty!24584 lt!1358151) (not ((_ is Some!8851) lt!1358151)))))

(assert (=> d!1155181 d!1155585))

(declare-fun b!3899411 () Bool)

(declare-fun e!2410949 () Bool)

(assert (=> b!3899411 (= e!2410949 (>= (size!31050 prefix!426) (size!31050 prefix!426)))))

(declare-fun b!3899410 () Bool)

(declare-fun e!2410948 () Bool)

(assert (=> b!3899410 (= e!2410948 (isPrefix!3527 (tail!5963 prefix!426) (tail!5963 prefix!426)))))

(declare-fun b!3899408 () Bool)

(declare-fun e!2410950 () Bool)

(assert (=> b!3899408 (= e!2410950 e!2410948)))

(declare-fun res!1577546 () Bool)

(assert (=> b!3899408 (=> (not res!1577546) (not e!2410948))))

(assert (=> b!3899408 (= res!1577546 (not ((_ is Nil!41357) prefix!426)))))

(declare-fun b!3899409 () Bool)

(declare-fun res!1577548 () Bool)

(assert (=> b!3899409 (=> (not res!1577548) (not e!2410948))))

(assert (=> b!3899409 (= res!1577548 (= (head!8246 prefix!426) (head!8246 prefix!426)))))

(declare-fun d!1155587 () Bool)

(assert (=> d!1155587 e!2410949))

(declare-fun res!1577547 () Bool)

(assert (=> d!1155587 (=> res!1577547 e!2410949)))

(declare-fun lt!1358410 () Bool)

(assert (=> d!1155587 (= res!1577547 (not lt!1358410))))

(assert (=> d!1155587 (= lt!1358410 e!2410950)))

(declare-fun res!1577545 () Bool)

(assert (=> d!1155587 (=> res!1577545 e!2410950)))

(assert (=> d!1155587 (= res!1577545 ((_ is Nil!41357) prefix!426))))

(assert (=> d!1155587 (= (isPrefix!3527 prefix!426 prefix!426) lt!1358410)))

(assert (= (and d!1155587 (not res!1577545)) b!3899408))

(assert (= (and b!3899408 res!1577546) b!3899409))

(assert (= (and b!3899409 res!1577548) b!3899410))

(assert (= (and d!1155587 (not res!1577547)) b!3899411))

(assert (=> b!3899411 m!4458051))

(assert (=> b!3899411 m!4458051))

(declare-fun m!4459167 () Bool)

(assert (=> b!3899410 m!4459167))

(assert (=> b!3899410 m!4459167))

(assert (=> b!3899410 m!4459167))

(assert (=> b!3899410 m!4459167))

(declare-fun m!4459169 () Bool)

(assert (=> b!3899410 m!4459169))

(declare-fun m!4459171 () Bool)

(assert (=> b!3899409 m!4459171))

(assert (=> b!3899409 m!4459171))

(assert (=> d!1155181 d!1155587))

(declare-fun d!1155589 () Bool)

(assert (=> d!1155589 (isPrefix!3527 prefix!426 prefix!426)))

(declare-fun lt!1358411 () Unit!59476)

(assert (=> d!1155589 (= lt!1358411 (choose!23065 prefix!426 prefix!426))))

(assert (=> d!1155589 (= (lemmaIsPrefixRefl!2234 prefix!426 prefix!426) lt!1358411)))

(declare-fun bs!584850 () Bool)

(assert (= bs!584850 d!1155589))

(assert (=> bs!584850 m!4458055))

(declare-fun m!4459177 () Bool)

(assert (=> bs!584850 m!4459177))

(assert (=> d!1155181 d!1155589))

(declare-fun d!1155591 () Bool)

(assert (=> d!1155591 true))

(declare-fun lt!1358416 () Bool)

(declare-fun lambda!126390 () Int)

(declare-fun forall!8306 (List!41483 Int) Bool)

(assert (=> d!1155591 (= lt!1358416 (forall!8306 rules!2768 lambda!126390))))

(declare-fun e!2410964 () Bool)

(assert (=> d!1155591 (= lt!1358416 e!2410964)))

(declare-fun res!1577562 () Bool)

(assert (=> d!1155591 (=> res!1577562 e!2410964)))

(assert (=> d!1155591 (= res!1577562 (not ((_ is Cons!41359) rules!2768)))))

(assert (=> d!1155591 (= (rulesValidInductive!2304 thiss!20629 rules!2768) lt!1358416)))

(declare-fun b!3899432 () Bool)

(declare-fun e!2410963 () Bool)

(assert (=> b!3899432 (= e!2410964 e!2410963)))

(declare-fun res!1577561 () Bool)

(assert (=> b!3899432 (=> (not res!1577561) (not e!2410963))))

(assert (=> b!3899432 (= res!1577561 (ruleValid!2380 thiss!20629 (h!46779 rules!2768)))))

(declare-fun b!3899433 () Bool)

(assert (=> b!3899433 (= e!2410963 (rulesValidInductive!2304 thiss!20629 (t!319150 rules!2768)))))

(assert (= (and d!1155591 (not res!1577562)) b!3899432))

(assert (= (and b!3899432 res!1577561) b!3899433))

(declare-fun m!4459221 () Bool)

(assert (=> d!1155591 m!4459221))

(assert (=> b!3899432 m!4457915))

(assert (=> b!3899433 m!4457529))

(assert (=> d!1155181 d!1155591))

(assert (=> b!3898738 d!1155239))

(declare-fun d!1155603 () Bool)

(assert (=> d!1155603 (= (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358151))))) (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151))))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358151))))))))

(declare-fun b_lambda!113915 () Bool)

(assert (=> (not b_lambda!113915) (not d!1155603)))

(declare-fun tb!229349 () Bool)

(declare-fun t!319548 () Bool)

(assert (=> (and b!3898210 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319548) tb!229349))

(declare-fun result!278550 () Bool)

(assert (=> tb!229349 (= result!278550 (inv!21 (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151))))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358151)))))))))

(declare-fun m!4459233 () Bool)

(assert (=> tb!229349 m!4459233))

(assert (=> d!1155603 t!319548))

(declare-fun b_and!294731 () Bool)

(assert (= b_and!294391 (and (=> t!319548 result!278550) b_and!294731)))

(declare-fun t!319550 () Bool)

(declare-fun tb!229351 () Bool)

(assert (=> (and b!3898205 (= (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319550) tb!229351))

(declare-fun result!278552 () Bool)

(assert (= result!278552 result!278550))

(assert (=> d!1155603 t!319550))

(declare-fun b_and!294733 () Bool)

(assert (= b_and!294397 (and (=> t!319550 result!278552) b_and!294733)))

(declare-fun t!319552 () Bool)

(declare-fun tb!229353 () Bool)

(assert (=> (and b!3898838 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319552) tb!229353))

(declare-fun result!278554 () Bool)

(assert (= result!278554 result!278550))

(assert (=> d!1155603 t!319552))

(declare-fun b_and!294735 () Bool)

(assert (= b_and!294475 (and (=> t!319552 result!278554) b_and!294735)))

(declare-fun tb!229355 () Bool)

(declare-fun t!319554 () Bool)

(assert (=> (and b!3898827 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319554) tb!229355))

(declare-fun result!278556 () Bool)

(assert (= result!278556 result!278550))

(assert (=> d!1155603 t!319554))

(declare-fun b_and!294737 () Bool)

(assert (= b_and!294471 (and (=> t!319554 result!278556) b_and!294737)))

(declare-fun tb!229357 () Bool)

(declare-fun t!319556 () Bool)

(assert (=> (and b!3898224 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319556) tb!229357))

(declare-fun result!278558 () Bool)

(assert (= result!278558 result!278550))

(assert (=> d!1155603 t!319556))

(declare-fun b_and!294739 () Bool)

(assert (= b_and!294395 (and (=> t!319556 result!278558) b_and!294739)))

(declare-fun tb!229359 () Bool)

(declare-fun t!319558 () Bool)

(assert (=> (and b!3898228 (= (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319558) tb!229359))

(declare-fun result!278560 () Bool)

(assert (= result!278560 result!278550))

(assert (=> d!1155603 t!319558))

(declare-fun b_and!294741 () Bool)

(assert (= b_and!294393 (and (=> t!319558 result!278560) b_and!294741)))

(declare-fun t!319560 () Bool)

(declare-fun tb!229361 () Bool)

(assert (=> (and b!3898822 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319560) tb!229361))

(declare-fun result!278562 () Bool)

(assert (= result!278562 result!278550))

(assert (=> d!1155603 t!319560))

(declare-fun b_and!294743 () Bool)

(assert (= b_and!294467 (and (=> t!319560 result!278562) b_and!294743)))

(assert (=> d!1155603 m!4458075))

(declare-fun m!4459235 () Bool)

(assert (=> d!1155603 m!4459235))

(assert (=> b!3898738 d!1155603))

(declare-fun d!1155609 () Bool)

(assert (=> d!1155609 (= (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358151)))) (fromListB!2164 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358151)))))))

(declare-fun bs!584853 () Bool)

(assert (= bs!584853 d!1155609))

(declare-fun m!4459243 () Bool)

(assert (=> bs!584853 m!4459243))

(assert (=> b!3898738 d!1155609))

(declare-fun bs!584854 () Bool)

(declare-fun d!1155611 () Bool)

(assert (= bs!584854 (and d!1155611 d!1155325)))

(declare-fun lambda!126391 () Int)

(assert (=> bs!584854 (= (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) (= lambda!126391 lambda!126386))))

(assert (=> d!1155611 true))

(assert (=> d!1155611 (< (dynLambda!17759 order!22231 (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) (dynLambda!17760 order!22233 lambda!126391))))

(assert (=> d!1155611 (= (equivClasses!2654 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) (Forall2!1040 lambda!126391))))

(declare-fun bs!584855 () Bool)

(assert (= bs!584855 d!1155611))

(declare-fun m!4459265 () Bool)

(assert (=> bs!584855 m!4459265))

(assert (=> b!3898248 d!1155611))

(declare-fun d!1155613 () Bool)

(assert (=> d!1155613 (= (isEmpty!24580 (originalCharacters!7032 (_1!23431 (v!39163 err!4377)))) ((_ is Nil!41357) (originalCharacters!7032 (_1!23431 (v!39163 err!4377)))))))

(assert (=> d!1155189 d!1155613))

(assert (=> d!1155185 d!1155177))

(assert (=> d!1155185 d!1155179))

(declare-fun d!1155615 () Bool)

(assert (=> d!1155615 (= (maxPrefix!3325 thiss!20629 rules!2768 (++!10621 prefix!426 Nil!41357)) (Some!8851 (tuple2!40595 (_1!23431 (v!39163 lt!1357935)) Nil!41357)))))

(assert (=> d!1155615 true))

(declare-fun _$45!1921 () Unit!59476)

(assert (=> d!1155615 (= (choose!23067 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41357 (_1!23431 (v!39163 lt!1357935)) suffix!1176 Nil!41357) _$45!1921)))

(declare-fun bs!584864 () Bool)

(assert (= bs!584864 d!1155615))

(assert (=> bs!584864 m!4457313))

(assert (=> bs!584864 m!4457313))

(assert (=> bs!584864 m!4457315))

(assert (=> d!1155185 d!1155615))

(assert (=> d!1155185 d!1155191))

(declare-fun d!1155665 () Bool)

(declare-fun c!677917 () Bool)

(assert (=> d!1155665 (= c!677917 ((_ is IntegerValue!19986) (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (seqFromList!4699 lt!1357938))))))

(declare-fun e!2411004 () Bool)

(assert (=> d!1155665 (= (inv!21 (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (seqFromList!4699 lt!1357938))) e!2411004)))

(declare-fun b!3899508 () Bool)

(assert (=> b!3899508 (= e!2411004 (inv!16 (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (seqFromList!4699 lt!1357938))))))

(declare-fun b!3899509 () Bool)

(declare-fun e!2411002 () Bool)

(assert (=> b!3899509 (= e!2411004 e!2411002)))

(declare-fun c!677916 () Bool)

(assert (=> b!3899509 (= c!677916 ((_ is IntegerValue!19987) (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (seqFromList!4699 lt!1357938))))))

(declare-fun b!3899510 () Bool)

(declare-fun e!2411003 () Bool)

(assert (=> b!3899510 (= e!2411003 (inv!15 (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (seqFromList!4699 lt!1357938))))))

(declare-fun b!3899511 () Bool)

(declare-fun res!1577591 () Bool)

(assert (=> b!3899511 (=> res!1577591 e!2411003)))

(assert (=> b!3899511 (= res!1577591 (not ((_ is IntegerValue!19988) (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (seqFromList!4699 lt!1357938)))))))

(assert (=> b!3899511 (= e!2411002 e!2411003)))

(declare-fun b!3899512 () Bool)

(assert (=> b!3899512 (= e!2411002 (inv!17 (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (seqFromList!4699 lt!1357938))))))

(assert (= (and d!1155665 c!677917) b!3899508))

(assert (= (and d!1155665 (not c!677917)) b!3899509))

(assert (= (and b!3899509 c!677916) b!3899512))

(assert (= (and b!3899509 (not c!677916)) b!3899511))

(assert (= (and b!3899511 (not res!1577591)) b!3899510))

(declare-fun m!4459369 () Bool)

(assert (=> b!3899508 m!4459369))

(declare-fun m!4459371 () Bool)

(assert (=> b!3899510 m!4459371))

(declare-fun m!4459373 () Bool)

(assert (=> b!3899512 m!4459373))

(assert (=> tb!228973 d!1155665))

(declare-fun d!1155667 () Bool)

(assert (=> d!1155667 (= (list!15370 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377))))) (list!15371 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377)))))))))

(declare-fun bs!584865 () Bool)

(assert (= bs!584865 d!1155667))

(declare-fun m!4459375 () Bool)

(assert (=> bs!584865 m!4459375))

(assert (=> b!3898749 d!1155667))

(declare-fun d!1155669 () Bool)

(declare-fun lt!1358439 () Int)

(assert (=> d!1155669 (>= lt!1358439 0)))

(declare-fun e!2411005 () Int)

(assert (=> d!1155669 (= lt!1358439 e!2411005)))

(declare-fun c!677918 () Bool)

(assert (=> d!1155669 (= c!677918 ((_ is Nil!41357) (_2!23432 lt!1357985)))))

(assert (=> d!1155669 (= (size!31050 (_2!23432 lt!1357985)) lt!1358439)))

(declare-fun b!3899513 () Bool)

(assert (=> b!3899513 (= e!2411005 0)))

(declare-fun b!3899514 () Bool)

(assert (=> b!3899514 (= e!2411005 (+ 1 (size!31050 (t!319148 (_2!23432 lt!1357985)))))))

(assert (= (and d!1155669 c!677918) b!3899513))

(assert (= (and d!1155669 (not c!677918)) b!3899514))

(declare-fun m!4459385 () Bool)

(assert (=> b!3899514 m!4459385))

(assert (=> b!3898322 d!1155669))

(declare-fun d!1155671 () Bool)

(declare-fun lt!1358440 () Int)

(assert (=> d!1155671 (>= lt!1358440 0)))

(declare-fun e!2411006 () Int)

(assert (=> d!1155671 (= lt!1358440 e!2411006)))

(declare-fun c!677919 () Bool)

(assert (=> d!1155671 (= c!677919 ((_ is Nil!41357) suffix!1176))))

(assert (=> d!1155671 (= (size!31050 suffix!1176) lt!1358440)))

(declare-fun b!3899515 () Bool)

(assert (=> b!3899515 (= e!2411006 0)))

(declare-fun b!3899516 () Bool)

(assert (=> b!3899516 (= e!2411006 (+ 1 (size!31050 (t!319148 suffix!1176))))))

(assert (= (and d!1155671 c!677919) b!3899515))

(assert (= (and d!1155671 (not c!677919)) b!3899516))

(declare-fun m!4459391 () Bool)

(assert (=> b!3899516 m!4459391))

(assert (=> b!3898322 d!1155671))

(declare-fun d!1155673 () Bool)

(declare-fun lt!1358441 () Bool)

(assert (=> d!1155673 (= lt!1358441 (select (content!6189 (t!319150 rules!2768)) (rule!9336 (_1!23431 (get!13674 lt!1358032)))))))

(declare-fun e!2411008 () Bool)

(assert (=> d!1155673 (= lt!1358441 e!2411008)))

(declare-fun res!1577593 () Bool)

(assert (=> d!1155673 (=> (not res!1577593) (not e!2411008))))

(assert (=> d!1155673 (= res!1577593 ((_ is Cons!41359) (t!319150 rules!2768)))))

(assert (=> d!1155673 (= (contains!8311 (t!319150 rules!2768) (rule!9336 (_1!23431 (get!13674 lt!1358032)))) lt!1358441)))

(declare-fun b!3899517 () Bool)

(declare-fun e!2411007 () Bool)

(assert (=> b!3899517 (= e!2411008 e!2411007)))

(declare-fun res!1577592 () Bool)

(assert (=> b!3899517 (=> res!1577592 e!2411007)))

(assert (=> b!3899517 (= res!1577592 (= (h!46779 (t!319150 rules!2768)) (rule!9336 (_1!23431 (get!13674 lt!1358032)))))))

(declare-fun b!3899518 () Bool)

(assert (=> b!3899518 (= e!2411007 (contains!8311 (t!319150 (t!319150 rules!2768)) (rule!9336 (_1!23431 (get!13674 lt!1358032)))))))

(assert (= (and d!1155673 res!1577593) b!3899517))

(assert (= (and b!3899517 (not res!1577592)) b!3899518))

(declare-fun m!4459397 () Bool)

(assert (=> d!1155673 m!4459397))

(declare-fun m!4459399 () Bool)

(assert (=> d!1155673 m!4459399))

(declare-fun m!4459401 () Bool)

(assert (=> b!3899518 m!4459401))

(assert (=> b!3898425 d!1155673))

(assert (=> b!3898425 d!1155259))

(declare-fun d!1155677 () Bool)

(assert (=> d!1155677 (= (isEmpty!24584 (maxPrefix!3325 thiss!20629 rules!2768 prefix!426)) (not ((_ is Some!8851) (maxPrefix!3325 thiss!20629 rules!2768 prefix!426))))))

(assert (=> d!1155183 d!1155677))

(declare-fun d!1155679 () Bool)

(declare-fun lt!1358442 () Int)

(assert (=> d!1155679 (>= lt!1358442 0)))

(declare-fun e!2411009 () Int)

(assert (=> d!1155679 (= lt!1358442 e!2411009)))

(declare-fun c!677920 () Bool)

(assert (=> d!1155679 (= c!677920 ((_ is Nil!41357) Nil!41357))))

(assert (=> d!1155679 (= (size!31050 Nil!41357) lt!1358442)))

(declare-fun b!3899519 () Bool)

(assert (=> b!3899519 (= e!2411009 0)))

(declare-fun b!3899520 () Bool)

(assert (=> b!3899520 (= e!2411009 (+ 1 (size!31050 (t!319148 Nil!41357))))))

(assert (= (and d!1155679 c!677920) b!3899519))

(assert (= (and d!1155679 (not c!677920)) b!3899520))

(declare-fun m!4459403 () Bool)

(assert (=> b!3899520 m!4459403))

(assert (=> b!3898670 d!1155679))

(declare-fun b!3899761 () Bool)

(declare-fun e!2411133 () tuple2!40600)

(assert (=> b!3899761 (= e!2411133 (tuple2!40601 Nil!41357 lt!1357946))))

(declare-fun b!3899763 () Bool)

(declare-fun e!2411138 () Bool)

(declare-fun e!2411139 () Bool)

(assert (=> b!3899763 (= e!2411138 e!2411139)))

(declare-fun res!1577631 () Bool)

(assert (=> b!3899763 (=> res!1577631 e!2411139)))

(declare-fun lt!1358528 () tuple2!40600)

(assert (=> b!3899763 (= res!1577631 (isEmpty!24580 (_1!23434 lt!1358528)))))

(declare-fun b!3899764 () Bool)

(declare-fun c!677958 () Bool)

(declare-fun call!283819 () Bool)

(assert (=> b!3899764 (= c!677958 call!283819)))

(declare-fun lt!1358523 () Unit!59476)

(declare-fun lt!1358544 () Unit!59476)

(assert (=> b!3899764 (= lt!1358523 lt!1358544)))

(declare-fun lt!1358545 () C!22860)

(declare-fun lt!1358548 () List!41481)

(assert (=> b!3899764 (= (++!10621 (++!10621 Nil!41357 (Cons!41357 lt!1358545 Nil!41357)) lt!1358548) lt!1357946)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1223 (List!41481 C!22860 List!41481 List!41481) Unit!59476)

(assert (=> b!3899764 (= lt!1358544 (lemmaMoveElementToOtherListKeepsConcatEq!1223 Nil!41357 lt!1358545 lt!1358548 lt!1357946))))

(assert (=> b!3899764 (= lt!1358548 (tail!5963 lt!1357946))))

(assert (=> b!3899764 (= lt!1358545 (head!8246 lt!1357946))))

(declare-fun lt!1358525 () Unit!59476)

(declare-fun lt!1358536 () Unit!59476)

(assert (=> b!3899764 (= lt!1358525 lt!1358536)))

(assert (=> b!3899764 (isPrefix!3527 (++!10621 Nil!41357 (Cons!41357 (head!8246 (getSuffix!1982 lt!1357946 Nil!41357)) Nil!41357)) lt!1357946)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!605 (List!41481 List!41481) Unit!59476)

(assert (=> b!3899764 (= lt!1358536 (lemmaAddHeadSuffixToPrefixStillPrefix!605 Nil!41357 lt!1357946))))

(declare-fun lt!1358522 () Unit!59476)

(declare-fun lt!1358547 () Unit!59476)

(assert (=> b!3899764 (= lt!1358522 lt!1358547)))

(assert (=> b!3899764 (= lt!1358547 (lemmaAddHeadSuffixToPrefixStillPrefix!605 Nil!41357 lt!1357946))))

(declare-fun lt!1358532 () List!41481)

(assert (=> b!3899764 (= lt!1358532 (++!10621 Nil!41357 (Cons!41357 (head!8246 lt!1357946) Nil!41357)))))

(declare-fun lt!1358526 () Unit!59476)

(declare-fun e!2411135 () Unit!59476)

(assert (=> b!3899764 (= lt!1358526 e!2411135)))

(declare-fun c!677959 () Bool)

(assert (=> b!3899764 (= c!677959 (= (size!31050 Nil!41357) (size!31050 lt!1357946)))))

(declare-fun lt!1358541 () Unit!59476)

(declare-fun lt!1358531 () Unit!59476)

(assert (=> b!3899764 (= lt!1358541 lt!1358531)))

(assert (=> b!3899764 (<= (size!31050 Nil!41357) (size!31050 lt!1357946))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!413 (List!41481 List!41481) Unit!59476)

(assert (=> b!3899764 (= lt!1358531 (lemmaIsPrefixThenSmallerEqSize!413 Nil!41357 lt!1357946))))

(declare-fun e!2411134 () tuple2!40600)

(declare-fun e!2411140 () tuple2!40600)

(assert (=> b!3899764 (= e!2411134 e!2411140)))

(declare-fun b!3899765 () Bool)

(declare-fun Unit!59480 () Unit!59476)

(assert (=> b!3899765 (= e!2411135 Unit!59480)))

(declare-fun b!3899766 () Bool)

(declare-fun c!677957 () Bool)

(assert (=> b!3899766 (= c!677957 call!283819)))

(declare-fun lt!1358534 () Unit!59476)

(declare-fun lt!1358538 () Unit!59476)

(assert (=> b!3899766 (= lt!1358534 lt!1358538)))

(assert (=> b!3899766 (= lt!1357946 Nil!41357)))

(declare-fun call!283820 () Unit!59476)

(assert (=> b!3899766 (= lt!1358538 call!283820)))

(declare-fun lt!1358543 () Unit!59476)

(declare-fun lt!1358521 () Unit!59476)

(assert (=> b!3899766 (= lt!1358543 lt!1358521)))

(declare-fun call!283817 () Bool)

(assert (=> b!3899766 call!283817))

(declare-fun call!283822 () Unit!59476)

(assert (=> b!3899766 (= lt!1358521 call!283822)))

(declare-fun e!2411137 () tuple2!40600)

(assert (=> b!3899766 (= e!2411134 e!2411137)))

(declare-fun bm!283810 () Bool)

(declare-fun call!283821 () List!41481)

(assert (=> bm!283810 (= call!283821 (tail!5963 lt!1357946))))

(declare-fun b!3899767 () Bool)

(declare-fun e!2411136 () tuple2!40600)

(assert (=> b!3899767 (= e!2411136 (tuple2!40601 Nil!41357 lt!1357946))))

(declare-fun bm!283811 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!762 (List!41481 List!41481 List!41481) Unit!59476)

(assert (=> bm!283811 (= call!283820 (lemmaIsPrefixSameLengthThenSameList!762 lt!1357946 Nil!41357 lt!1357946))))

(declare-fun bm!283812 () Bool)

(assert (=> bm!283812 (= call!283819 (nullable!3954 (regex!6432 (h!46779 rules!2768))))))

(declare-fun bm!283813 () Bool)

(assert (=> bm!283813 (= call!283817 (isPrefix!3527 lt!1357946 lt!1357946))))

(declare-fun bm!283814 () Bool)

(declare-fun call!283815 () C!22860)

(assert (=> bm!283814 (= call!283815 (head!8246 lt!1357946))))

(declare-fun b!3899768 () Bool)

(assert (=> b!3899768 (= e!2411137 (tuple2!40601 Nil!41357 Nil!41357))))

(declare-fun d!1155681 () Bool)

(assert (=> d!1155681 e!2411138))

(declare-fun res!1577630 () Bool)

(assert (=> d!1155681 (=> (not res!1577630) (not e!2411138))))

(assert (=> d!1155681 (= res!1577630 (= (++!10621 (_1!23434 lt!1358528) (_2!23434 lt!1358528)) lt!1357946))))

(assert (=> d!1155681 (= lt!1358528 e!2411133)))

(declare-fun c!677955 () Bool)

(declare-fun lostCause!979 (Regex!11337) Bool)

(assert (=> d!1155681 (= c!677955 (lostCause!979 (regex!6432 (h!46779 rules!2768))))))

(declare-fun lt!1358535 () Unit!59476)

(declare-fun Unit!59481 () Unit!59476)

(assert (=> d!1155681 (= lt!1358535 Unit!59481)))

(assert (=> d!1155681 (= (getSuffix!1982 lt!1357946 Nil!41357) lt!1357946)))

(declare-fun lt!1358533 () Unit!59476)

(declare-fun lt!1358524 () Unit!59476)

(assert (=> d!1155681 (= lt!1358533 lt!1358524)))

(declare-fun lt!1358542 () List!41481)

(assert (=> d!1155681 (= lt!1357946 lt!1358542)))

(assert (=> d!1155681 (= lt!1358524 (lemmaSamePrefixThenSameSuffix!1748 Nil!41357 lt!1357946 Nil!41357 lt!1358542 lt!1357946))))

(assert (=> d!1155681 (= lt!1358542 (getSuffix!1982 lt!1357946 Nil!41357))))

(declare-fun lt!1358530 () Unit!59476)

(declare-fun lt!1358540 () Unit!59476)

(assert (=> d!1155681 (= lt!1358530 lt!1358540)))

(assert (=> d!1155681 (isPrefix!3527 Nil!41357 (++!10621 Nil!41357 lt!1357946))))

(assert (=> d!1155681 (= lt!1358540 (lemmaConcatTwoListThenFirstIsPrefix!2390 Nil!41357 lt!1357946))))

(assert (=> d!1155681 (validRegex!5153 (regex!6432 (h!46779 rules!2768)))))

(assert (=> d!1155681 (= (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946)) lt!1358528)))

(declare-fun b!3899762 () Bool)

(assert (=> b!3899762 (= e!2411140 e!2411136)))

(declare-fun lt!1358537 () tuple2!40600)

(declare-fun call!283818 () tuple2!40600)

(assert (=> b!3899762 (= lt!1358537 call!283818)))

(declare-fun c!677956 () Bool)

(assert (=> b!3899762 (= c!677956 (isEmpty!24580 (_1!23434 lt!1358537)))))

(declare-fun b!3899769 () Bool)

(assert (=> b!3899769 (= e!2411139 (>= (size!31050 (_1!23434 lt!1358528)) (size!31050 Nil!41357)))))

(declare-fun b!3899770 () Bool)

(assert (=> b!3899770 (= e!2411140 call!283818)))

(declare-fun b!3899771 () Bool)

(assert (=> b!3899771 (= e!2411137 (tuple2!40601 Nil!41357 lt!1357946))))

(declare-fun b!3899772 () Bool)

(assert (=> b!3899772 (= e!2411133 e!2411134)))

(declare-fun c!677960 () Bool)

(assert (=> b!3899772 (= c!677960 (= (size!31050 Nil!41357) (size!31050 lt!1357946)))))

(declare-fun bm!283815 () Bool)

(declare-fun call!283816 () Regex!11337)

(assert (=> bm!283815 (= call!283818 (findLongestMatchInner!1220 call!283816 lt!1358532 (+ (size!31050 Nil!41357) 1) call!283821 lt!1357946 (size!31050 lt!1357946)))))

(declare-fun b!3899773 () Bool)

(declare-fun Unit!59482 () Unit!59476)

(assert (=> b!3899773 (= e!2411135 Unit!59482)))

(declare-fun lt!1358539 () Unit!59476)

(assert (=> b!3899773 (= lt!1358539 call!283822)))

(assert (=> b!3899773 call!283817))

(declare-fun lt!1358546 () Unit!59476)

(assert (=> b!3899773 (= lt!1358546 lt!1358539)))

(declare-fun lt!1358527 () Unit!59476)

(assert (=> b!3899773 (= lt!1358527 call!283820)))

(assert (=> b!3899773 (= lt!1357946 Nil!41357)))

(declare-fun lt!1358529 () Unit!59476)

(assert (=> b!3899773 (= lt!1358529 lt!1358527)))

(assert (=> b!3899773 false))

(declare-fun b!3899774 () Bool)

(assert (=> b!3899774 (= e!2411136 lt!1358537)))

(declare-fun bm!283816 () Bool)

(assert (=> bm!283816 (= call!283822 (lemmaIsPrefixRefl!2234 lt!1357946 lt!1357946))))

(declare-fun bm!283817 () Bool)

(assert (=> bm!283817 (= call!283816 (derivativeStep!3430 (regex!6432 (h!46779 rules!2768)) call!283815))))

(assert (= (and d!1155681 c!677955) b!3899761))

(assert (= (and d!1155681 (not c!677955)) b!3899772))

(assert (= (and b!3899772 c!677960) b!3899766))

(assert (= (and b!3899772 (not c!677960)) b!3899764))

(assert (= (and b!3899766 c!677957) b!3899768))

(assert (= (and b!3899766 (not c!677957)) b!3899771))

(assert (= (and b!3899764 c!677959) b!3899773))

(assert (= (and b!3899764 (not c!677959)) b!3899765))

(assert (= (and b!3899764 c!677958) b!3899762))

(assert (= (and b!3899764 (not c!677958)) b!3899770))

(assert (= (and b!3899762 c!677956) b!3899767))

(assert (= (and b!3899762 (not c!677956)) b!3899774))

(assert (= (or b!3899762 b!3899770) bm!283814))

(assert (= (or b!3899762 b!3899770) bm!283810))

(assert (= (or b!3899762 b!3899770) bm!283817))

(assert (= (or b!3899762 b!3899770) bm!283815))

(assert (= (or b!3899766 b!3899773) bm!283811))

(assert (= (or b!3899766 b!3899764) bm!283812))

(assert (= (or b!3899766 b!3899773) bm!283813))

(assert (= (or b!3899766 b!3899773) bm!283816))

(assert (= (and d!1155681 res!1577630) b!3899763))

(assert (= (and b!3899763 (not res!1577631)) b!3899769))

(assert (=> bm!283815 m!4457537))

(declare-fun m!4459597 () Bool)

(assert (=> bm!283815 m!4459597))

(assert (=> bm!283812 m!4458471))

(declare-fun m!4459599 () Bool)

(assert (=> b!3899769 m!4459599))

(assert (=> b!3899769 m!4457437))

(assert (=> bm!283816 m!4457305))

(declare-fun m!4459601 () Bool)

(assert (=> b!3899764 m!4459601))

(declare-fun m!4459603 () Bool)

(assert (=> b!3899764 m!4459603))

(declare-fun m!4459605 () Bool)

(assert (=> b!3899764 m!4459605))

(declare-fun m!4459607 () Bool)

(assert (=> b!3899764 m!4459607))

(assert (=> b!3899764 m!4457437))

(declare-fun m!4459609 () Bool)

(assert (=> b!3899764 m!4459609))

(declare-fun m!4459611 () Bool)

(assert (=> b!3899764 m!4459611))

(assert (=> b!3899764 m!4457537))

(assert (=> b!3899764 m!4457985))

(declare-fun m!4459613 () Bool)

(assert (=> b!3899764 m!4459613))

(declare-fun m!4459615 () Bool)

(assert (=> b!3899764 m!4459615))

(assert (=> b!3899764 m!4457675))

(assert (=> b!3899764 m!4459601))

(declare-fun m!4459617 () Bool)

(assert (=> b!3899764 m!4459617))

(assert (=> b!3899764 m!4459611))

(declare-fun m!4459619 () Bool)

(assert (=> b!3899764 m!4459619))

(assert (=> b!3899764 m!4459603))

(declare-fun m!4459621 () Bool)

(assert (=> bm!283811 m!4459621))

(assert (=> bm!283810 m!4457675))

(declare-fun m!4459623 () Bool)

(assert (=> b!3899762 m!4459623))

(assert (=> bm!283814 m!4457985))

(assert (=> bm!283813 m!4457303))

(declare-fun m!4459625 () Bool)

(assert (=> b!3899763 m!4459625))

(declare-fun m!4459627 () Bool)

(assert (=> bm!283817 m!4459627))

(assert (=> d!1155681 m!4459601))

(declare-fun m!4459629 () Bool)

(assert (=> d!1155681 m!4459629))

(assert (=> d!1155681 m!4458469))

(declare-fun m!4459631 () Bool)

(assert (=> d!1155681 m!4459631))

(declare-fun m!4459633 () Bool)

(assert (=> d!1155681 m!4459633))

(declare-fun m!4459635 () Bool)

(assert (=> d!1155681 m!4459635))

(assert (=> d!1155681 m!4459629))

(declare-fun m!4459637 () Bool)

(assert (=> d!1155681 m!4459637))

(declare-fun m!4459639 () Bool)

(assert (=> d!1155681 m!4459639))

(assert (=> b!3898670 d!1155681))

(declare-fun d!1155759 () Bool)

(declare-fun e!2411143 () Bool)

(assert (=> d!1155759 e!2411143))

(declare-fun res!1577634 () Bool)

(assert (=> d!1155759 (=> res!1577634 e!2411143)))

(assert (=> d!1155759 (= res!1577634 (isEmpty!24580 (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946)))))))

(declare-fun lt!1358551 () Unit!59476)

(declare-fun choose!23068 (Regex!11337 List!41481) Unit!59476)

(assert (=> d!1155759 (= lt!1358551 (choose!23068 (regex!6432 (h!46779 rules!2768)) lt!1357946))))

(assert (=> d!1155759 (validRegex!5153 (regex!6432 (h!46779 rules!2768)))))

(assert (=> d!1155759 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1193 (regex!6432 (h!46779 rules!2768)) lt!1357946) lt!1358551)))

(declare-fun b!3899777 () Bool)

(assert (=> b!3899777 (= e!2411143 (matchR!5432 (regex!6432 (h!46779 rules!2768)) (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946)))))))

(assert (= (and d!1155759 (not res!1577634)) b!3899777))

(assert (=> d!1155759 m!4458469))

(assert (=> d!1155759 m!4457437))

(assert (=> d!1155759 m!4457437))

(assert (=> d!1155759 m!4457537))

(assert (=> d!1155759 m!4457927))

(assert (=> d!1155759 m!4457931))

(declare-fun m!4459641 () Bool)

(assert (=> d!1155759 m!4459641))

(assert (=> d!1155759 m!4457537))

(assert (=> b!3899777 m!4457437))

(assert (=> b!3899777 m!4457537))

(assert (=> b!3899777 m!4457437))

(assert (=> b!3899777 m!4457537))

(assert (=> b!3899777 m!4457927))

(assert (=> b!3899777 m!4457939))

(assert (=> b!3898670 d!1155759))

(declare-fun d!1155761 () Bool)

(assert (=> d!1155761 (= (isEmpty!24580 (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946)))) ((_ is Nil!41357) (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946)))))))

(assert (=> b!3898670 d!1155761))

(assert (=> b!3898670 d!1155233))

(declare-fun b!3899782 () Bool)

(declare-fun e!2411146 () Bool)

(assert (=> b!3899782 (= e!2411146 true)))

(declare-fun d!1155763 () Bool)

(assert (=> d!1155763 e!2411146))

(assert (= d!1155763 b!3899782))

(declare-fun order!22235 () Int)

(declare-fun lambda!126401 () Int)

(declare-fun dynLambda!17761 (Int Int) Int)

(assert (=> b!3899782 (< (dynLambda!17759 order!22231 (toValue!8868 (transformation!6432 (h!46779 rules!2768)))) (dynLambda!17761 order!22235 lambda!126401))))

(declare-fun order!22237 () Int)

(declare-fun dynLambda!17762 (Int Int) Int)

(assert (=> b!3899782 (< (dynLambda!17762 order!22237 (toChars!8727 (transformation!6432 (h!46779 rules!2768)))) (dynLambda!17761 order!22235 lambda!126401))))

(assert (=> d!1155763 (= (list!15370 (dynLambda!17753 (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (dynLambda!17752 (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (seqFromList!4699 (_1!23434 lt!1358121))))) (list!15370 (seqFromList!4699 (_1!23434 lt!1358121))))))

(declare-fun lt!1358554 () Unit!59476)

(declare-fun ForallOf!787 (Int BalanceConc!24880) Unit!59476)

(assert (=> d!1155763 (= lt!1358554 (ForallOf!787 lambda!126401 (seqFromList!4699 (_1!23434 lt!1358121))))))

(assert (=> d!1155763 (= (lemmaSemiInverse!1726 (transformation!6432 (h!46779 rules!2768)) (seqFromList!4699 (_1!23434 lt!1358121))) lt!1358554)))

(declare-fun b_lambda!113937 () Bool)

(assert (=> (not b_lambda!113937) (not d!1155763)))

(declare-fun tb!229505 () Bool)

(declare-fun t!319704 () Bool)

(assert (=> (and b!3898822 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (h!46779 rules!2768)))) t!319704) tb!229505))

(declare-fun tp!1186555 () Bool)

(declare-fun b!3899783 () Bool)

(declare-fun e!2411147 () Bool)

(assert (=> b!3899783 (= e!2411147 (and (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (dynLambda!17752 (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (seqFromList!4699 (_1!23434 lt!1358121)))))) tp!1186555))))

(declare-fun result!278708 () Bool)

(assert (=> tb!229505 (= result!278708 (and (inv!55525 (dynLambda!17753 (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (dynLambda!17752 (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (seqFromList!4699 (_1!23434 lt!1358121))))) e!2411147))))

(assert (= tb!229505 b!3899783))

(declare-fun m!4459643 () Bool)

(assert (=> b!3899783 m!4459643))

(declare-fun m!4459645 () Bool)

(assert (=> tb!229505 m!4459645))

(assert (=> d!1155763 t!319704))

(declare-fun b_and!294799 () Bool)

(assert (= b_and!294711 (and (=> t!319704 result!278708) b_and!294799)))

(declare-fun tb!229507 () Bool)

(declare-fun t!319706 () Bool)

(assert (=> (and b!3898224 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (h!46779 rules!2768)))) t!319706) tb!229507))

(declare-fun result!278710 () Bool)

(assert (= result!278710 result!278708))

(assert (=> d!1155763 t!319706))

(declare-fun b_and!294801 () Bool)

(assert (= b_and!294727 (and (=> t!319706 result!278710) b_and!294801)))

(declare-fun t!319708 () Bool)

(declare-fun tb!229509 () Bool)

(assert (=> (and b!3898228 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (h!46779 rules!2768)))) t!319708) tb!229509))

(declare-fun result!278712 () Bool)

(assert (= result!278712 result!278708))

(assert (=> d!1155763 t!319708))

(declare-fun b_and!294803 () Bool)

(assert (= b_and!294725 (and (=> t!319708 result!278712) b_and!294803)))

(declare-fun t!319710 () Bool)

(declare-fun tb!229511 () Bool)

(assert (=> (and b!3898838 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (h!46779 rules!2768)))) t!319710) tb!229511))

(declare-fun result!278714 () Bool)

(assert (= result!278714 result!278708))

(assert (=> d!1155763 t!319710))

(declare-fun b_and!294805 () Bool)

(assert (= b_and!294715 (and (=> t!319710 result!278714) b_and!294805)))

(declare-fun tb!229513 () Bool)

(declare-fun t!319712 () Bool)

(assert (=> (and b!3898205 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (h!46779 rules!2768)))) t!319712) tb!229513))

(declare-fun result!278716 () Bool)

(assert (= result!278716 result!278708))

(assert (=> d!1155763 t!319712))

(declare-fun b_and!294807 () Bool)

(assert (= b_and!294719 (and (=> t!319712 result!278716) b_and!294807)))

(declare-fun t!319714 () Bool)

(declare-fun tb!229515 () Bool)

(assert (=> (and b!3898827 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (h!46779 rules!2768)))) t!319714) tb!229515))

(declare-fun result!278718 () Bool)

(assert (= result!278718 result!278708))

(assert (=> d!1155763 t!319714))

(declare-fun b_and!294809 () Bool)

(assert (= b_and!294729 (and (=> t!319714 result!278718) b_and!294809)))

(declare-fun tb!229517 () Bool)

(declare-fun t!319716 () Bool)

(assert (=> (and b!3898210 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (h!46779 rules!2768)))) t!319716) tb!229517))

(declare-fun result!278720 () Bool)

(assert (= result!278720 result!278708))

(assert (=> d!1155763 t!319716))

(declare-fun b_and!294811 () Bool)

(assert (= b_and!294723 (and (=> t!319716 result!278720) b_and!294811)))

(declare-fun b_lambda!113939 () Bool)

(assert (=> (not b_lambda!113939) (not d!1155763)))

(declare-fun tb!229519 () Bool)

(declare-fun t!319718 () Bool)

(assert (=> (and b!3898827 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768)))) t!319718) tb!229519))

(declare-fun result!278722 () Bool)

(assert (=> tb!229519 (= result!278722 (inv!21 (dynLambda!17752 (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (seqFromList!4699 (_1!23434 lt!1358121)))))))

(declare-fun m!4459647 () Bool)

(assert (=> tb!229519 m!4459647))

(assert (=> d!1155763 t!319718))

(declare-fun b_and!294813 () Bool)

(assert (= b_and!294737 (and (=> t!319718 result!278722) b_and!294813)))

(declare-fun t!319720 () Bool)

(declare-fun tb!229521 () Bool)

(assert (=> (and b!3898205 (= (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768)))) t!319720) tb!229521))

(declare-fun result!278724 () Bool)

(assert (= result!278724 result!278722))

(assert (=> d!1155763 t!319720))

(declare-fun b_and!294815 () Bool)

(assert (= b_and!294733 (and (=> t!319720 result!278724) b_and!294815)))

(declare-fun t!319722 () Bool)

(declare-fun tb!229523 () Bool)

(assert (=> (and b!3898210 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (h!46779 rules!2768)))) t!319722) tb!229523))

(declare-fun result!278726 () Bool)

(assert (= result!278726 result!278722))

(assert (=> d!1155763 t!319722))

(declare-fun b_and!294817 () Bool)

(assert (= b_and!294731 (and (=> t!319722 result!278726) b_and!294817)))

(declare-fun tb!229525 () Bool)

(declare-fun t!319724 () Bool)

(assert (=> (and b!3898822 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768)))) t!319724) tb!229525))

(declare-fun result!278728 () Bool)

(assert (= result!278728 result!278722))

(assert (=> d!1155763 t!319724))

(declare-fun b_and!294819 () Bool)

(assert (= b_and!294743 (and (=> t!319724 result!278728) b_and!294819)))

(declare-fun t!319726 () Bool)

(declare-fun tb!229527 () Bool)

(assert (=> (and b!3898228 (= (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (toValue!8868 (transformation!6432 (h!46779 rules!2768)))) t!319726) tb!229527))

(declare-fun result!278730 () Bool)

(assert (= result!278730 result!278722))

(assert (=> d!1155763 t!319726))

(declare-fun b_and!294821 () Bool)

(assert (= b_and!294741 (and (=> t!319726 result!278730) b_and!294821)))

(declare-fun t!319728 () Bool)

(declare-fun tb!229529 () Bool)

(assert (=> (and b!3898838 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toValue!8868 (transformation!6432 (h!46779 rules!2768)))) t!319728) tb!229529))

(declare-fun result!278732 () Bool)

(assert (= result!278732 result!278722))

(assert (=> d!1155763 t!319728))

(declare-fun b_and!294823 () Bool)

(assert (= b_and!294735 (and (=> t!319728 result!278732) b_and!294823)))

(declare-fun t!319730 () Bool)

(declare-fun tb!229531 () Bool)

(assert (=> (and b!3898224 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (h!46779 rules!2768)))) t!319730) tb!229531))

(declare-fun result!278734 () Bool)

(assert (= result!278734 result!278722))

(assert (=> d!1155763 t!319730))

(declare-fun b_and!294825 () Bool)

(assert (= b_and!294739 (and (=> t!319730 result!278734) b_and!294825)))

(assert (=> d!1155763 m!4457921))

(declare-fun m!4459649 () Bool)

(assert (=> d!1155763 m!4459649))

(assert (=> d!1155763 m!4457921))

(declare-fun m!4459651 () Bool)

(assert (=> d!1155763 m!4459651))

(declare-fun m!4459653 () Bool)

(assert (=> d!1155763 m!4459653))

(declare-fun m!4459655 () Bool)

(assert (=> d!1155763 m!4459655))

(assert (=> d!1155763 m!4457921))

(assert (=> d!1155763 m!4459653))

(assert (=> d!1155763 m!4459655))

(declare-fun m!4459657 () Bool)

(assert (=> d!1155763 m!4459657))

(assert (=> b!3898670 d!1155763))

(declare-fun d!1155765 () Bool)

(assert (=> d!1155765 (= (seqFromList!4699 (_1!23434 lt!1358121)) (fromListB!2164 (_1!23434 lt!1358121)))))

(declare-fun bs!584884 () Bool)

(assert (= bs!584884 d!1155765))

(declare-fun m!4459659 () Bool)

(assert (=> bs!584884 m!4459659))

(assert (=> b!3898670 d!1155765))

(declare-fun d!1155767 () Bool)

(assert (=> d!1155767 (= (apply!9671 (transformation!6432 (h!46779 rules!2768)) (seqFromList!4699 (_1!23434 lt!1358121))) (dynLambda!17752 (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (seqFromList!4699 (_1!23434 lt!1358121))))))

(declare-fun b_lambda!113941 () Bool)

(assert (=> (not b_lambda!113941) (not d!1155767)))

(assert (=> d!1155767 t!319724))

(declare-fun b_and!294827 () Bool)

(assert (= b_and!294819 (and (=> t!319724 result!278728) b_and!294827)))

(assert (=> d!1155767 t!319726))

(declare-fun b_and!294829 () Bool)

(assert (= b_and!294821 (and (=> t!319726 result!278730) b_and!294829)))

(assert (=> d!1155767 t!319718))

(declare-fun b_and!294831 () Bool)

(assert (= b_and!294813 (and (=> t!319718 result!278722) b_and!294831)))

(assert (=> d!1155767 t!319730))

(declare-fun b_and!294833 () Bool)

(assert (= b_and!294825 (and (=> t!319730 result!278734) b_and!294833)))

(assert (=> d!1155767 t!319722))

(declare-fun b_and!294835 () Bool)

(assert (= b_and!294817 (and (=> t!319722 result!278726) b_and!294835)))

(assert (=> d!1155767 t!319720))

(declare-fun b_and!294837 () Bool)

(assert (= b_and!294815 (and (=> t!319720 result!278724) b_and!294837)))

(assert (=> d!1155767 t!319728))

(declare-fun b_and!294839 () Bool)

(assert (= b_and!294823 (and (=> t!319728 result!278732) b_and!294839)))

(assert (=> d!1155767 m!4457921))

(assert (=> d!1155767 m!4459653))

(assert (=> b!3898670 d!1155767))

(declare-fun d!1155769 () Bool)

(declare-fun lt!1358557 () Int)

(assert (=> d!1155769 (= lt!1358557 (size!31050 (list!15370 (seqFromList!4699 (_1!23434 lt!1358121)))))))

(declare-fun size!31055 (Conc!12643) Int)

(assert (=> d!1155769 (= lt!1358557 (size!31055 (c!677655 (seqFromList!4699 (_1!23434 lt!1358121)))))))

(assert (=> d!1155769 (= (size!31054 (seqFromList!4699 (_1!23434 lt!1358121))) lt!1358557)))

(declare-fun bs!584885 () Bool)

(assert (= bs!584885 d!1155769))

(assert (=> bs!584885 m!4457921))

(assert (=> bs!584885 m!4459651))

(assert (=> bs!584885 m!4459651))

(declare-fun m!4459661 () Bool)

(assert (=> bs!584885 m!4459661))

(declare-fun m!4459663 () Bool)

(assert (=> bs!584885 m!4459663))

(assert (=> b!3898670 d!1155769))

(assert (=> b!3898341 d!1155671))

(assert (=> b!3898341 d!1155679))

(declare-fun d!1155771 () Bool)

(declare-fun lt!1358558 () Int)

(assert (=> d!1155771 (>= lt!1358558 0)))

(declare-fun e!2411149 () Int)

(assert (=> d!1155771 (= lt!1358558 e!2411149)))

(declare-fun c!677962 () Bool)

(assert (=> d!1155771 (= c!677962 ((_ is Nil!41357) (originalCharacters!7032 (h!46778 suffixTokens!72))))))

(assert (=> d!1155771 (= (size!31050 (originalCharacters!7032 (h!46778 suffixTokens!72))) lt!1358558)))

(declare-fun b!3899784 () Bool)

(assert (=> b!3899784 (= e!2411149 0)))

(declare-fun b!3899785 () Bool)

(assert (=> b!3899785 (= e!2411149 (+ 1 (size!31050 (t!319148 (originalCharacters!7032 (h!46778 suffixTokens!72))))))))

(assert (= (and d!1155771 c!677962) b!3899784))

(assert (= (and d!1155771 (not c!677962)) b!3899785))

(declare-fun m!4459665 () Bool)

(assert (=> b!3899785 m!4459665))

(assert (=> b!3898679 d!1155771))

(declare-fun d!1155773 () Bool)

(declare-fun lt!1358559 () Bool)

(assert (=> d!1155773 (= lt!1358559 (select (content!6189 rules!2768) (rule!9336 (_1!23431 (get!13674 lt!1358145)))))))

(declare-fun e!2411151 () Bool)

(assert (=> d!1155773 (= lt!1358559 e!2411151)))

(declare-fun res!1577636 () Bool)

(assert (=> d!1155773 (=> (not res!1577636) (not e!2411151))))

(assert (=> d!1155773 (= res!1577636 ((_ is Cons!41359) rules!2768))))

(assert (=> d!1155773 (= (contains!8311 rules!2768 (rule!9336 (_1!23431 (get!13674 lt!1358145)))) lt!1358559)))

(declare-fun b!3899786 () Bool)

(declare-fun e!2411150 () Bool)

(assert (=> b!3899786 (= e!2411151 e!2411150)))

(declare-fun res!1577635 () Bool)

(assert (=> b!3899786 (=> res!1577635 e!2411150)))

(assert (=> b!3899786 (= res!1577635 (= (h!46779 rules!2768) (rule!9336 (_1!23431 (get!13674 lt!1358145)))))))

(declare-fun b!3899787 () Bool)

(assert (=> b!3899787 (= e!2411150 (contains!8311 (t!319150 rules!2768) (rule!9336 (_1!23431 (get!13674 lt!1358145)))))))

(assert (= (and d!1155773 res!1577636) b!3899786))

(assert (= (and b!3899786 (not res!1577635)) b!3899787))

(assert (=> d!1155773 m!4458461))

(declare-fun m!4459667 () Bool)

(assert (=> d!1155773 m!4459667))

(declare-fun m!4459669 () Bool)

(assert (=> b!3899787 m!4459669))

(assert (=> b!3898722 d!1155773))

(assert (=> b!3898722 d!1155265))

(declare-fun b!3899791 () Bool)

(declare-fun e!2411153 () Bool)

(assert (=> b!3899791 (= e!2411153 (>= (size!31050 (tail!5963 lt!1357950)) (size!31050 (tail!5963 lt!1357938))))))

(declare-fun b!3899790 () Bool)

(declare-fun e!2411152 () Bool)

(assert (=> b!3899790 (= e!2411152 (isPrefix!3527 (tail!5963 (tail!5963 lt!1357938)) (tail!5963 (tail!5963 lt!1357950))))))

(declare-fun b!3899788 () Bool)

(declare-fun e!2411154 () Bool)

(assert (=> b!3899788 (= e!2411154 e!2411152)))

(declare-fun res!1577638 () Bool)

(assert (=> b!3899788 (=> (not res!1577638) (not e!2411152))))

(assert (=> b!3899788 (= res!1577638 (not ((_ is Nil!41357) (tail!5963 lt!1357950))))))

(declare-fun b!3899789 () Bool)

(declare-fun res!1577640 () Bool)

(assert (=> b!3899789 (=> (not res!1577640) (not e!2411152))))

(assert (=> b!3899789 (= res!1577640 (= (head!8246 (tail!5963 lt!1357938)) (head!8246 (tail!5963 lt!1357950))))))

(declare-fun d!1155775 () Bool)

(assert (=> d!1155775 e!2411153))

(declare-fun res!1577639 () Bool)

(assert (=> d!1155775 (=> res!1577639 e!2411153)))

(declare-fun lt!1358560 () Bool)

(assert (=> d!1155775 (= res!1577639 (not lt!1358560))))

(assert (=> d!1155775 (= lt!1358560 e!2411154)))

(declare-fun res!1577637 () Bool)

(assert (=> d!1155775 (=> res!1577637 e!2411154)))

(assert (=> d!1155775 (= res!1577637 ((_ is Nil!41357) (tail!5963 lt!1357938)))))

(assert (=> d!1155775 (= (isPrefix!3527 (tail!5963 lt!1357938) (tail!5963 lt!1357950)) lt!1358560)))

(assert (= (and d!1155775 (not res!1577637)) b!3899788))

(assert (= (and b!3899788 res!1577638) b!3899789))

(assert (= (and b!3899789 res!1577640) b!3899790))

(assert (= (and d!1155775 (not res!1577639)) b!3899791))

(assert (=> b!3899791 m!4457661))

(declare-fun m!4459671 () Bool)

(assert (=> b!3899791 m!4459671))

(assert (=> b!3899791 m!4457659))

(declare-fun m!4459673 () Bool)

(assert (=> b!3899791 m!4459673))

(assert (=> b!3899790 m!4457659))

(declare-fun m!4459675 () Bool)

(assert (=> b!3899790 m!4459675))

(assert (=> b!3899790 m!4457661))

(declare-fun m!4459677 () Bool)

(assert (=> b!3899790 m!4459677))

(assert (=> b!3899790 m!4459675))

(assert (=> b!3899790 m!4459677))

(declare-fun m!4459679 () Bool)

(assert (=> b!3899790 m!4459679))

(assert (=> b!3899789 m!4457659))

(declare-fun m!4459681 () Bool)

(assert (=> b!3899789 m!4459681))

(assert (=> b!3899789 m!4457661))

(declare-fun m!4459683 () Bool)

(assert (=> b!3899789 m!4459683))

(assert (=> b!3898487 d!1155775))

(declare-fun d!1155777 () Bool)

(assert (=> d!1155777 (= (tail!5963 lt!1357938) (t!319148 lt!1357938))))

(assert (=> b!3898487 d!1155777))

(declare-fun d!1155779 () Bool)

(assert (=> d!1155779 (= (tail!5963 lt!1357950) (t!319148 lt!1357950))))

(assert (=> b!3898487 d!1155779))

(declare-fun d!1155781 () Bool)

(assert (=> d!1155781 (= (isDefined!6903 lt!1358130) (not (isEmpty!24584 lt!1358130)))))

(declare-fun bs!584886 () Bool)

(assert (= bs!584886 d!1155781))

(assert (=> bs!584886 m!4457953))

(assert (=> b!3898687 d!1155781))

(declare-fun d!1155783 () Bool)

(assert (=> d!1155783 (= (_2!23431 (v!39163 lt!1357935)) lt!1357942)))

(assert (=> d!1155783 true))

(declare-fun _$63!965 () Unit!59476)

(assert (=> d!1155783 (= (choose!23059 lt!1357938 (_2!23431 (v!39163 lt!1357935)) lt!1357938 lt!1357942 lt!1357946) _$63!965)))

(assert (=> d!1155101 d!1155783))

(declare-fun b!3899795 () Bool)

(declare-fun e!2411156 () Bool)

(assert (=> b!3899795 (= e!2411156 (>= (size!31050 lt!1357946) (size!31050 lt!1357938)))))

(declare-fun b!3899794 () Bool)

(declare-fun e!2411155 () Bool)

(assert (=> b!3899794 (= e!2411155 (isPrefix!3527 (tail!5963 lt!1357938) (tail!5963 lt!1357946)))))

(declare-fun b!3899792 () Bool)

(declare-fun e!2411157 () Bool)

(assert (=> b!3899792 (= e!2411157 e!2411155)))

(declare-fun res!1577642 () Bool)

(assert (=> b!3899792 (=> (not res!1577642) (not e!2411155))))

(assert (=> b!3899792 (= res!1577642 (not ((_ is Nil!41357) lt!1357946)))))

(declare-fun b!3899793 () Bool)

(declare-fun res!1577644 () Bool)

(assert (=> b!3899793 (=> (not res!1577644) (not e!2411155))))

(assert (=> b!3899793 (= res!1577644 (= (head!8246 lt!1357938) (head!8246 lt!1357946)))))

(declare-fun d!1155785 () Bool)

(assert (=> d!1155785 e!2411156))

(declare-fun res!1577643 () Bool)

(assert (=> d!1155785 (=> res!1577643 e!2411156)))

(declare-fun lt!1358561 () Bool)

(assert (=> d!1155785 (= res!1577643 (not lt!1358561))))

(assert (=> d!1155785 (= lt!1358561 e!2411157)))

(declare-fun res!1577641 () Bool)

(assert (=> d!1155785 (=> res!1577641 e!2411157)))

(assert (=> d!1155785 (= res!1577641 ((_ is Nil!41357) lt!1357938))))

(assert (=> d!1155785 (= (isPrefix!3527 lt!1357938 lt!1357946) lt!1358561)))

(assert (= (and d!1155785 (not res!1577641)) b!3899792))

(assert (= (and b!3899792 res!1577642) b!3899793))

(assert (= (and b!3899793 res!1577644) b!3899794))

(assert (= (and d!1155785 (not res!1577643)) b!3899795))

(assert (=> b!3899795 m!4457537))

(assert (=> b!3899795 m!4457273))

(assert (=> b!3899794 m!4457659))

(assert (=> b!3899794 m!4457675))

(assert (=> b!3899794 m!4457659))

(assert (=> b!3899794 m!4457675))

(declare-fun m!4459685 () Bool)

(assert (=> b!3899794 m!4459685))

(assert (=> b!3899793 m!4457665))

(assert (=> b!3899793 m!4457985))

(assert (=> d!1155101 d!1155785))

(declare-fun b!3899796 () Bool)

(declare-fun res!1577650 () Bool)

(declare-fun e!2411162 () Bool)

(assert (=> b!3899796 (=> res!1577650 e!2411162)))

(assert (=> b!3899796 (= res!1577650 (not (isEmpty!24580 (tail!5963 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032))))))))))

(declare-fun b!3899797 () Bool)

(assert (=> b!3899797 (= e!2411162 (not (= (head!8246 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032))))) (c!677654 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032))))))))))

(declare-fun b!3899798 () Bool)

(declare-fun res!1577645 () Bool)

(declare-fun e!2411159 () Bool)

(assert (=> b!3899798 (=> res!1577645 e!2411159)))

(declare-fun e!2411164 () Bool)

(assert (=> b!3899798 (= res!1577645 e!2411164)))

(declare-fun res!1577648 () Bool)

(assert (=> b!3899798 (=> (not res!1577648) (not e!2411164))))

(declare-fun lt!1358562 () Bool)

(assert (=> b!3899798 (= res!1577648 lt!1358562)))

(declare-fun b!3899799 () Bool)

(declare-fun res!1577649 () Bool)

(assert (=> b!3899799 (=> res!1577649 e!2411159)))

(assert (=> b!3899799 (= res!1577649 (not ((_ is ElementMatch!11337) (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))))))

(declare-fun e!2411160 () Bool)

(assert (=> b!3899799 (= e!2411160 e!2411159)))

(declare-fun b!3899800 () Bool)

(declare-fun e!2411158 () Bool)

(assert (=> b!3899800 (= e!2411159 e!2411158)))

(declare-fun res!1577647 () Bool)

(assert (=> b!3899800 (=> (not res!1577647) (not e!2411158))))

(assert (=> b!3899800 (= res!1577647 (not lt!1358562))))

(declare-fun b!3899801 () Bool)

(declare-fun e!2411161 () Bool)

(assert (=> b!3899801 (= e!2411161 e!2411160)))

(declare-fun c!677963 () Bool)

(assert (=> b!3899801 (= c!677963 ((_ is EmptyLang!11337) (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032))))))))

(declare-fun b!3899802 () Bool)

(declare-fun res!1577646 () Bool)

(assert (=> b!3899802 (=> (not res!1577646) (not e!2411164))))

(assert (=> b!3899802 (= res!1577646 (isEmpty!24580 (tail!5963 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032)))))))))

(declare-fun b!3899803 () Bool)

(declare-fun call!283823 () Bool)

(assert (=> b!3899803 (= e!2411161 (= lt!1358562 call!283823))))

(declare-fun b!3899804 () Bool)

(assert (=> b!3899804 (= e!2411164 (= (head!8246 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032))))) (c!677654 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))))))

(declare-fun bm!283818 () Bool)

(assert (=> bm!283818 (= call!283823 (isEmpty!24580 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032))))))))

(declare-fun b!3899805 () Bool)

(declare-fun e!2411163 () Bool)

(assert (=> b!3899805 (= e!2411163 (matchR!5432 (derivativeStep!3430 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))) (head!8246 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032)))))) (tail!5963 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032)))))))))

(declare-fun b!3899806 () Bool)

(declare-fun res!1577652 () Bool)

(assert (=> b!3899806 (=> (not res!1577652) (not e!2411164))))

(assert (=> b!3899806 (= res!1577652 (not call!283823))))

(declare-fun b!3899807 () Bool)

(assert (=> b!3899807 (= e!2411160 (not lt!1358562))))

(declare-fun b!3899808 () Bool)

(assert (=> b!3899808 (= e!2411158 e!2411162)))

(declare-fun res!1577651 () Bool)

(assert (=> b!3899808 (=> res!1577651 e!2411162)))

(assert (=> b!3899808 (= res!1577651 call!283823)))

(declare-fun d!1155787 () Bool)

(assert (=> d!1155787 e!2411161))

(declare-fun c!677964 () Bool)

(assert (=> d!1155787 (= c!677964 ((_ is EmptyExpr!11337) (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032))))))))

(assert (=> d!1155787 (= lt!1358562 e!2411163)))

(declare-fun c!677965 () Bool)

(assert (=> d!1155787 (= c!677965 (isEmpty!24580 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032))))))))

(assert (=> d!1155787 (validRegex!5153 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))))

(assert (=> d!1155787 (= (matchR!5432 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358032))))) lt!1358562)))

(declare-fun b!3899809 () Bool)

(assert (=> b!3899809 (= e!2411163 (nullable!3954 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032))))))))

(assert (= (and d!1155787 c!677965) b!3899809))

(assert (= (and d!1155787 (not c!677965)) b!3899805))

(assert (= (and d!1155787 c!677964) b!3899803))

(assert (= (and d!1155787 (not c!677964)) b!3899801))

(assert (= (and b!3899801 c!677963) b!3899807))

(assert (= (and b!3899801 (not c!677963)) b!3899799))

(assert (= (and b!3899799 (not res!1577649)) b!3899798))

(assert (= (and b!3899798 res!1577648) b!3899806))

(assert (= (and b!3899806 res!1577652) b!3899802))

(assert (= (and b!3899802 res!1577646) b!3899804))

(assert (= (and b!3899798 (not res!1577645)) b!3899800))

(assert (= (and b!3899800 res!1577647) b!3899808))

(assert (= (and b!3899808 (not res!1577651)) b!3899796))

(assert (= (and b!3899796 (not res!1577650)) b!3899797))

(assert (= (or b!3899803 b!3899808 b!3899806) bm!283818))

(assert (=> d!1155787 m!4457541))

(declare-fun m!4459687 () Bool)

(assert (=> d!1155787 m!4459687))

(declare-fun m!4459689 () Bool)

(assert (=> d!1155787 m!4459689))

(declare-fun m!4459691 () Bool)

(assert (=> b!3899809 m!4459691))

(assert (=> b!3899796 m!4457541))

(declare-fun m!4459693 () Bool)

(assert (=> b!3899796 m!4459693))

(assert (=> b!3899796 m!4459693))

(declare-fun m!4459695 () Bool)

(assert (=> b!3899796 m!4459695))

(assert (=> b!3899802 m!4457541))

(assert (=> b!3899802 m!4459693))

(assert (=> b!3899802 m!4459693))

(assert (=> b!3899802 m!4459695))

(assert (=> bm!283818 m!4457541))

(assert (=> bm!283818 m!4459687))

(assert (=> b!3899804 m!4457541))

(declare-fun m!4459697 () Bool)

(assert (=> b!3899804 m!4459697))

(assert (=> b!3899805 m!4457541))

(assert (=> b!3899805 m!4459697))

(assert (=> b!3899805 m!4459697))

(declare-fun m!4459699 () Bool)

(assert (=> b!3899805 m!4459699))

(assert (=> b!3899805 m!4457541))

(assert (=> b!3899805 m!4459693))

(assert (=> b!3899805 m!4459699))

(assert (=> b!3899805 m!4459693))

(declare-fun m!4459701 () Bool)

(assert (=> b!3899805 m!4459701))

(assert (=> b!3899797 m!4457541))

(assert (=> b!3899797 m!4459697))

(assert (=> b!3898433 d!1155787))

(assert (=> b!3898433 d!1155259))

(assert (=> b!3898433 d!1155255))

(assert (=> b!3898433 d!1155257))

(declare-fun d!1155789 () Bool)

(assert (=> d!1155789 (= (inv!55517 (tag!7292 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (= (mod (str.len (value!203945 (tag!7292 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3898826 d!1155789))

(declare-fun d!1155791 () Bool)

(declare-fun res!1577653 () Bool)

(declare-fun e!2411165 () Bool)

(assert (=> d!1155791 (=> (not res!1577653) (not e!2411165))))

(assert (=> d!1155791 (= res!1577653 (semiInverseModEq!2755 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))))))

(assert (=> d!1155791 (= (inv!55521 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) e!2411165)))

(declare-fun b!3899810 () Bool)

(assert (=> b!3899810 (= e!2411165 (equivClasses!2654 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))))))

(assert (= (and d!1155791 res!1577653) b!3899810))

(declare-fun m!4459703 () Bool)

(assert (=> d!1155791 m!4459703))

(declare-fun m!4459705 () Bool)

(assert (=> b!3899810 m!4459705))

(assert (=> b!3898826 d!1155791))

(declare-fun c!677970 () Bool)

(declare-fun c!677971 () Bool)

(declare-fun bm!283825 () Bool)

(declare-fun call!283830 () Bool)

(assert (=> bm!283825 (= call!283830 (validRegex!5153 (ite c!677970 (reg!11666 (regex!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (ite c!677971 (regTwo!23187 (regex!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (regOne!23186 (regex!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))))))))

(declare-fun b!3899829 () Bool)

(declare-fun e!2411182 () Bool)

(assert (=> b!3899829 (= e!2411182 call!283830)))

(declare-fun b!3899830 () Bool)

(declare-fun e!2411186 () Bool)

(declare-fun call!283831 () Bool)

(assert (=> b!3899830 (= e!2411186 call!283831)))

(declare-fun b!3899831 () Bool)

(declare-fun e!2411185 () Bool)

(assert (=> b!3899831 (= e!2411185 e!2411182)))

(declare-fun res!1577667 () Bool)

(assert (=> b!3899831 (= res!1577667 (not (nullable!3954 (reg!11666 (regex!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))))))

(assert (=> b!3899831 (=> (not res!1577667) (not e!2411182))))

(declare-fun b!3899832 () Bool)

(declare-fun e!2411181 () Bool)

(declare-fun call!283832 () Bool)

(assert (=> b!3899832 (= e!2411181 call!283832)))

(declare-fun b!3899833 () Bool)

(declare-fun e!2411183 () Bool)

(assert (=> b!3899833 (= e!2411183 e!2411185)))

(assert (=> b!3899833 (= c!677970 ((_ is Star!11337) (regex!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))))

(declare-fun b!3899834 () Bool)

(declare-fun res!1577668 () Bool)

(declare-fun e!2411184 () Bool)

(assert (=> b!3899834 (=> res!1577668 e!2411184)))

(assert (=> b!3899834 (= res!1577668 (not ((_ is Concat!18000) (regex!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))))))

(declare-fun e!2411180 () Bool)

(assert (=> b!3899834 (= e!2411180 e!2411184)))

(declare-fun b!3899835 () Bool)

(declare-fun res!1577666 () Bool)

(assert (=> b!3899835 (=> (not res!1577666) (not e!2411186))))

(assert (=> b!3899835 (= res!1577666 call!283832)))

(assert (=> b!3899835 (= e!2411180 e!2411186)))

(declare-fun b!3899836 () Bool)

(assert (=> b!3899836 (= e!2411184 e!2411181)))

(declare-fun res!1577665 () Bool)

(assert (=> b!3899836 (=> (not res!1577665) (not e!2411181))))

(assert (=> b!3899836 (= res!1577665 call!283831)))

(declare-fun b!3899837 () Bool)

(assert (=> b!3899837 (= e!2411185 e!2411180)))

(assert (=> b!3899837 (= c!677971 ((_ is Union!11337) (regex!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))))

(declare-fun bm!283827 () Bool)

(assert (=> bm!283827 (= call!283831 call!283830)))

(declare-fun d!1155793 () Bool)

(declare-fun res!1577664 () Bool)

(assert (=> d!1155793 (=> res!1577664 e!2411183)))

(assert (=> d!1155793 (= res!1577664 ((_ is ElementMatch!11337) (regex!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))))

(assert (=> d!1155793 (= (validRegex!5153 (regex!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) e!2411183)))

(declare-fun bm!283826 () Bool)

(assert (=> bm!283826 (= call!283832 (validRegex!5153 (ite c!677971 (regOne!23187 (regex!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (regTwo!23186 (regex!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))))))

(assert (= (and d!1155793 (not res!1577664)) b!3899833))

(assert (= (and b!3899833 c!677970) b!3899831))

(assert (= (and b!3899833 (not c!677970)) b!3899837))

(assert (= (and b!3899831 res!1577667) b!3899829))

(assert (= (and b!3899837 c!677971) b!3899835))

(assert (= (and b!3899837 (not c!677971)) b!3899834))

(assert (= (and b!3899835 res!1577666) b!3899830))

(assert (= (and b!3899834 (not res!1577668)) b!3899836))

(assert (= (and b!3899836 res!1577665) b!3899832))

(assert (= (or b!3899830 b!3899836) bm!283827))

(assert (= (or b!3899835 b!3899832) bm!283826))

(assert (= (or b!3899829 bm!283827) bm!283825))

(declare-fun m!4459707 () Bool)

(assert (=> bm!283825 m!4459707))

(declare-fun m!4459709 () Bool)

(assert (=> b!3899831 m!4459709))

(declare-fun m!4459711 () Bool)

(assert (=> bm!283826 m!4459711))

(assert (=> d!1155081 d!1155793))

(assert (=> b!3898666 d!1155323))

(declare-fun d!1155795 () Bool)

(declare-fun lt!1358563 () Int)

(assert (=> d!1155795 (>= lt!1358563 0)))

(declare-fun e!2411187 () Int)

(assert (=> d!1155795 (= lt!1358563 e!2411187)))

(declare-fun c!677972 () Bool)

(assert (=> d!1155795 (= c!677972 ((_ is Nil!41357) (originalCharacters!7032 (_1!23431 (get!13674 lt!1358123)))))))

(assert (=> d!1155795 (= (size!31050 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358123)))) lt!1358563)))

(declare-fun b!3899838 () Bool)

(assert (=> b!3899838 (= e!2411187 0)))

(declare-fun b!3899839 () Bool)

(assert (=> b!3899839 (= e!2411187 (+ 1 (size!31050 (t!319148 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358123)))))))))

(assert (= (and d!1155795 c!677972) b!3899838))

(assert (= (and d!1155795 (not c!677972)) b!3899839))

(declare-fun m!4459713 () Bool)

(assert (=> b!3899839 m!4459713))

(assert (=> b!3898666 d!1155795))

(declare-fun d!1155797 () Bool)

(declare-fun charsToBigInt!1 (List!41480) Int)

(assert (=> d!1155797 (= (inv!17 (value!203946 (h!46778 suffixTokens!72))) (= (charsToBigInt!1 (text!47082 (value!203946 (h!46778 suffixTokens!72)))) (value!203938 (value!203946 (h!46778 suffixTokens!72)))))))

(declare-fun bs!584887 () Bool)

(assert (= bs!584887 d!1155797))

(declare-fun m!4459715 () Bool)

(assert (=> bs!584887 m!4459715))

(assert (=> b!3898748 d!1155797))

(declare-fun bs!584888 () Bool)

(declare-fun d!1155799 () Bool)

(assert (= bs!584888 (and d!1155799 d!1155763)))

(declare-fun lambda!126404 () Int)

(assert (=> bs!584888 (= (and (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (h!46779 rules!2768)))) (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (= lambda!126404 lambda!126401))))

(assert (=> d!1155799 true))

(assert (=> d!1155799 (< (dynLambda!17762 order!22237 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) (dynLambda!17761 order!22235 lambda!126404))))

(assert (=> d!1155799 true))

(assert (=> d!1155799 (< (dynLambda!17759 order!22231 (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) (dynLambda!17761 order!22235 lambda!126404))))

(declare-fun Forall!1442 (Int) Bool)

(assert (=> d!1155799 (= (semiInverseModEq!2755 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) (Forall!1442 lambda!126404))))

(declare-fun bs!584889 () Bool)

(assert (= bs!584889 d!1155799))

(declare-fun m!4459717 () Bool)

(assert (=> bs!584889 m!4459717))

(assert (=> d!1155173 d!1155799))

(declare-fun d!1155801 () Bool)

(assert (=> d!1155801 (= (isEmpty!24584 lt!1358032) (not ((_ is Some!8851) lt!1358032)))))

(assert (=> d!1155059 d!1155801))

(assert (=> d!1155059 d!1155163))

(assert (=> d!1155059 d!1155165))

(declare-fun bs!584890 () Bool)

(declare-fun d!1155803 () Bool)

(assert (= bs!584890 (and d!1155803 d!1155591)))

(declare-fun lambda!126405 () Int)

(assert (=> bs!584890 (= lambda!126405 lambda!126390)))

(assert (=> d!1155803 true))

(declare-fun lt!1358564 () Bool)

(assert (=> d!1155803 (= lt!1358564 (forall!8306 (t!319150 rules!2768) lambda!126405))))

(declare-fun e!2411189 () Bool)

(assert (=> d!1155803 (= lt!1358564 e!2411189)))

(declare-fun res!1577670 () Bool)

(assert (=> d!1155803 (=> res!1577670 e!2411189)))

(assert (=> d!1155803 (= res!1577670 (not ((_ is Cons!41359) (t!319150 rules!2768))))))

(assert (=> d!1155803 (= (rulesValidInductive!2304 thiss!20629 (t!319150 rules!2768)) lt!1358564)))

(declare-fun b!3899844 () Bool)

(declare-fun e!2411188 () Bool)

(assert (=> b!3899844 (= e!2411189 e!2411188)))

(declare-fun res!1577669 () Bool)

(assert (=> b!3899844 (=> (not res!1577669) (not e!2411188))))

(assert (=> b!3899844 (= res!1577669 (ruleValid!2380 thiss!20629 (h!46779 (t!319150 rules!2768))))))

(declare-fun b!3899845 () Bool)

(assert (=> b!3899845 (= e!2411188 (rulesValidInductive!2304 thiss!20629 (t!319150 (t!319150 rules!2768))))))

(assert (= (and d!1155803 (not res!1577670)) b!3899844))

(assert (= (and b!3899844 res!1577669) b!3899845))

(declare-fun m!4459719 () Bool)

(assert (=> d!1155803 m!4459719))

(declare-fun m!4459721 () Bool)

(assert (=> b!3899844 m!4459721))

(assert (=> b!3899845 m!4458361))

(assert (=> d!1155059 d!1155803))

(declare-fun b!3899846 () Bool)

(declare-fun res!1577674 () Bool)

(declare-fun e!2411190 () Bool)

(assert (=> b!3899846 (=> (not res!1577674) (not e!2411190))))

(declare-fun lt!1358567 () Option!8852)

(assert (=> b!3899846 (= res!1577674 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358567)))) (_2!23431 (get!13674 lt!1358567))) lt!1357946))))

(declare-fun b!3899847 () Bool)

(assert (=> b!3899847 (= e!2411190 (= (size!31049 (_1!23431 (get!13674 lt!1358567))) (size!31050 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358567))))))))

(declare-fun b!3899848 () Bool)

(declare-fun e!2411191 () Option!8852)

(assert (=> b!3899848 (= e!2411191 None!8851)))

(declare-fun b!3899849 () Bool)

(declare-fun e!2411192 () Bool)

(assert (=> b!3899849 (= e!2411192 (matchR!5432 (regex!6432 (h!46779 (t!319150 rules!2768))) (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 (t!319150 rules!2768))) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946)))))))

(declare-fun b!3899850 () Bool)

(declare-fun res!1577675 () Bool)

(assert (=> b!3899850 (=> (not res!1577675) (not e!2411190))))

(assert (=> b!3899850 (= res!1577675 (= (rule!9336 (_1!23431 (get!13674 lt!1358567))) (h!46779 (t!319150 rules!2768))))))

(declare-fun b!3899851 () Bool)

(declare-fun lt!1358565 () tuple2!40600)

(assert (=> b!3899851 (= e!2411191 (Some!8851 (tuple2!40595 (Token!12003 (apply!9671 (transformation!6432 (h!46779 (t!319150 rules!2768))) (seqFromList!4699 (_1!23434 lt!1358565))) (h!46779 (t!319150 rules!2768)) (size!31054 (seqFromList!4699 (_1!23434 lt!1358565))) (_1!23434 lt!1358565)) (_2!23434 lt!1358565))))))

(declare-fun lt!1358568 () Unit!59476)

(assert (=> b!3899851 (= lt!1358568 (longestMatchIsAcceptedByMatchOrIsEmpty!1193 (regex!6432 (h!46779 (t!319150 rules!2768))) lt!1357946))))

(declare-fun res!1577677 () Bool)

(assert (=> b!3899851 (= res!1577677 (isEmpty!24580 (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 (t!319150 rules!2768))) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946)))))))

(assert (=> b!3899851 (=> res!1577677 e!2411192)))

(assert (=> b!3899851 e!2411192))

(declare-fun lt!1358566 () Unit!59476)

(assert (=> b!3899851 (= lt!1358566 lt!1358568)))

(declare-fun lt!1358569 () Unit!59476)

(assert (=> b!3899851 (= lt!1358569 (lemmaSemiInverse!1726 (transformation!6432 (h!46779 (t!319150 rules!2768))) (seqFromList!4699 (_1!23434 lt!1358565))))))

(declare-fun b!3899852 () Bool)

(declare-fun e!2411193 () Bool)

(assert (=> b!3899852 (= e!2411193 e!2411190)))

(declare-fun res!1577671 () Bool)

(assert (=> b!3899852 (=> (not res!1577671) (not e!2411190))))

(assert (=> b!3899852 (= res!1577671 (matchR!5432 (regex!6432 (h!46779 (t!319150 rules!2768))) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358567))))))))

(declare-fun b!3899853 () Bool)

(declare-fun res!1577676 () Bool)

(assert (=> b!3899853 (=> (not res!1577676) (not e!2411190))))

(assert (=> b!3899853 (= res!1577676 (= (value!203946 (_1!23431 (get!13674 lt!1358567))) (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358567)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358567)))))))))

(declare-fun d!1155805 () Bool)

(assert (=> d!1155805 e!2411193))

(declare-fun res!1577672 () Bool)

(assert (=> d!1155805 (=> res!1577672 e!2411193)))

(assert (=> d!1155805 (= res!1577672 (isEmpty!24584 lt!1358567))))

(assert (=> d!1155805 (= lt!1358567 e!2411191)))

(declare-fun c!677973 () Bool)

(assert (=> d!1155805 (= c!677973 (isEmpty!24580 (_1!23434 lt!1358565)))))

(assert (=> d!1155805 (= lt!1358565 (findLongestMatch!1133 (regex!6432 (h!46779 (t!319150 rules!2768))) lt!1357946))))

(assert (=> d!1155805 (ruleValid!2380 thiss!20629 (h!46779 (t!319150 rules!2768)))))

(assert (=> d!1155805 (= (maxPrefixOneRule!2401 thiss!20629 (h!46779 (t!319150 rules!2768)) lt!1357946) lt!1358567)))

(declare-fun b!3899854 () Bool)

(declare-fun res!1577673 () Bool)

(assert (=> b!3899854 (=> (not res!1577673) (not e!2411190))))

(assert (=> b!3899854 (= res!1577673 (< (size!31050 (_2!23431 (get!13674 lt!1358567))) (size!31050 lt!1357946)))))

(assert (= (and d!1155805 c!677973) b!3899848))

(assert (= (and d!1155805 (not c!677973)) b!3899851))

(assert (= (and b!3899851 (not res!1577677)) b!3899849))

(assert (= (and d!1155805 (not res!1577672)) b!3899852))

(assert (= (and b!3899852 res!1577671) b!3899846))

(assert (= (and b!3899846 res!1577674) b!3899854))

(assert (= (and b!3899854 res!1577673) b!3899850))

(assert (= (and b!3899850 res!1577675) b!3899853))

(assert (= (and b!3899853 res!1577676) b!3899847))

(declare-fun m!4459723 () Bool)

(assert (=> b!3899846 m!4459723))

(declare-fun m!4459725 () Bool)

(assert (=> b!3899846 m!4459725))

(assert (=> b!3899846 m!4459725))

(declare-fun m!4459727 () Bool)

(assert (=> b!3899846 m!4459727))

(assert (=> b!3899846 m!4459727))

(declare-fun m!4459729 () Bool)

(assert (=> b!3899846 m!4459729))

(assert (=> b!3899852 m!4459723))

(assert (=> b!3899852 m!4459725))

(assert (=> b!3899852 m!4459725))

(assert (=> b!3899852 m!4459727))

(assert (=> b!3899852 m!4459727))

(declare-fun m!4459731 () Bool)

(assert (=> b!3899852 m!4459731))

(declare-fun m!4459733 () Bool)

(assert (=> d!1155805 m!4459733))

(declare-fun m!4459735 () Bool)

(assert (=> d!1155805 m!4459735))

(declare-fun m!4459737 () Bool)

(assert (=> d!1155805 m!4459737))

(assert (=> d!1155805 m!4459721))

(assert (=> b!3899854 m!4459723))

(declare-fun m!4459739 () Bool)

(assert (=> b!3899854 m!4459739))

(assert (=> b!3899854 m!4457537))

(assert (=> b!3899847 m!4459723))

(declare-fun m!4459741 () Bool)

(assert (=> b!3899847 m!4459741))

(assert (=> b!3899850 m!4459723))

(declare-fun m!4459743 () Bool)

(assert (=> b!3899851 m!4459743))

(declare-fun m!4459745 () Bool)

(assert (=> b!3899851 m!4459745))

(assert (=> b!3899851 m!4459743))

(declare-fun m!4459747 () Bool)

(assert (=> b!3899851 m!4459747))

(assert (=> b!3899851 m!4457437))

(assert (=> b!3899851 m!4457537))

(assert (=> b!3899851 m!4457437))

(assert (=> b!3899851 m!4457537))

(declare-fun m!4459749 () Bool)

(assert (=> b!3899851 m!4459749))

(assert (=> b!3899851 m!4459743))

(declare-fun m!4459751 () Bool)

(assert (=> b!3899851 m!4459751))

(declare-fun m!4459753 () Bool)

(assert (=> b!3899851 m!4459753))

(assert (=> b!3899851 m!4459743))

(declare-fun m!4459755 () Bool)

(assert (=> b!3899851 m!4459755))

(assert (=> b!3899853 m!4459723))

(declare-fun m!4459757 () Bool)

(assert (=> b!3899853 m!4459757))

(assert (=> b!3899853 m!4459757))

(declare-fun m!4459759 () Bool)

(assert (=> b!3899853 m!4459759))

(assert (=> b!3899849 m!4457437))

(assert (=> b!3899849 m!4457537))

(assert (=> b!3899849 m!4457437))

(assert (=> b!3899849 m!4457537))

(assert (=> b!3899849 m!4459749))

(declare-fun m!4459761 () Bool)

(assert (=> b!3899849 m!4459761))

(assert (=> bm!283735 d!1155805))

(declare-fun d!1155807 () Bool)

(declare-fun lt!1358572 () Int)

(assert (=> d!1155807 (>= lt!1358572 0)))

(declare-fun e!2411196 () Int)

(assert (=> d!1155807 (= lt!1358572 e!2411196)))

(declare-fun c!677976 () Bool)

(assert (=> d!1155807 (= c!677976 ((_ is Nil!41358) lt!1358140))))

(assert (=> d!1155807 (= (size!31052 lt!1358140) lt!1358572)))

(declare-fun b!3899859 () Bool)

(assert (=> b!3899859 (= e!2411196 0)))

(declare-fun b!3899860 () Bool)

(assert (=> b!3899860 (= e!2411196 (+ 1 (size!31052 (t!319149 lt!1358140))))))

(assert (= (and d!1155807 c!677976) b!3899859))

(assert (= (and d!1155807 (not c!677976)) b!3899860))

(declare-fun m!4459763 () Bool)

(assert (=> b!3899860 m!4459763))

(assert (=> b!3898720 d!1155807))

(declare-fun d!1155809 () Bool)

(declare-fun lt!1358573 () Int)

(assert (=> d!1155809 (>= lt!1358573 0)))

(declare-fun e!2411197 () Int)

(assert (=> d!1155809 (= lt!1358573 e!2411197)))

(declare-fun c!677977 () Bool)

(assert (=> d!1155809 (= c!677977 ((_ is Nil!41358) lt!1357949))))

(assert (=> d!1155809 (= (size!31052 lt!1357949) lt!1358573)))

(declare-fun b!3899861 () Bool)

(assert (=> b!3899861 (= e!2411197 0)))

(declare-fun b!3899862 () Bool)

(assert (=> b!3899862 (= e!2411197 (+ 1 (size!31052 (t!319149 lt!1357949))))))

(assert (= (and d!1155809 c!677977) b!3899861))

(assert (= (and d!1155809 (not c!677977)) b!3899862))

(declare-fun m!4459765 () Bool)

(assert (=> b!3899862 m!4459765))

(assert (=> b!3898720 d!1155809))

(declare-fun d!1155811 () Bool)

(declare-fun lt!1358574 () Int)

(assert (=> d!1155811 (>= lt!1358574 0)))

(declare-fun e!2411198 () Int)

(assert (=> d!1155811 (= lt!1358574 e!2411198)))

(declare-fun c!677978 () Bool)

(assert (=> d!1155811 (= c!677978 ((_ is Nil!41358) (_1!23432 lt!1357936)))))

(assert (=> d!1155811 (= (size!31052 (_1!23432 lt!1357936)) lt!1358574)))

(declare-fun b!3899863 () Bool)

(assert (=> b!3899863 (= e!2411198 0)))

(declare-fun b!3899864 () Bool)

(assert (=> b!3899864 (= e!2411198 (+ 1 (size!31052 (t!319149 (_1!23432 lt!1357936)))))))

(assert (= (and d!1155811 c!677978) b!3899863))

(assert (= (and d!1155811 (not c!677978)) b!3899864))

(declare-fun m!4459767 () Bool)

(assert (=> b!3899864 m!4459767))

(assert (=> b!3898720 d!1155811))

(declare-fun b!3899865 () Bool)

(declare-fun res!1577681 () Bool)

(declare-fun e!2411199 () Bool)

(assert (=> b!3899865 (=> (not res!1577681) (not e!2411199))))

(declare-fun lt!1358577 () Option!8852)

(assert (=> b!3899865 (= res!1577681 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358577)))) (_2!23431 (get!13674 lt!1358577))) (++!10621 prefix!426 Nil!41357)))))

(declare-fun b!3899866 () Bool)

(assert (=> b!3899866 (= e!2411199 (= (size!31049 (_1!23431 (get!13674 lt!1358577))) (size!31050 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358577))))))))

(declare-fun b!3899867 () Bool)

(declare-fun e!2411200 () Option!8852)

(assert (=> b!3899867 (= e!2411200 None!8851)))

(declare-fun b!3899868 () Bool)

(declare-fun e!2411201 () Bool)

(assert (=> b!3899868 (= e!2411201 (matchR!5432 (regex!6432 (h!46779 rules!2768)) (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) (++!10621 prefix!426 Nil!41357) (++!10621 prefix!426 Nil!41357) (size!31050 (++!10621 prefix!426 Nil!41357))))))))

(declare-fun b!3899869 () Bool)

(declare-fun res!1577682 () Bool)

(assert (=> b!3899869 (=> (not res!1577682) (not e!2411199))))

(assert (=> b!3899869 (= res!1577682 (= (rule!9336 (_1!23431 (get!13674 lt!1358577))) (h!46779 rules!2768)))))

(declare-fun b!3899870 () Bool)

(declare-fun lt!1358575 () tuple2!40600)

(assert (=> b!3899870 (= e!2411200 (Some!8851 (tuple2!40595 (Token!12003 (apply!9671 (transformation!6432 (h!46779 rules!2768)) (seqFromList!4699 (_1!23434 lt!1358575))) (h!46779 rules!2768) (size!31054 (seqFromList!4699 (_1!23434 lt!1358575))) (_1!23434 lt!1358575)) (_2!23434 lt!1358575))))))

(declare-fun lt!1358578 () Unit!59476)

(assert (=> b!3899870 (= lt!1358578 (longestMatchIsAcceptedByMatchOrIsEmpty!1193 (regex!6432 (h!46779 rules!2768)) (++!10621 prefix!426 Nil!41357)))))

(declare-fun res!1577684 () Bool)

(assert (=> b!3899870 (= res!1577684 (isEmpty!24580 (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) (++!10621 prefix!426 Nil!41357) (++!10621 prefix!426 Nil!41357) (size!31050 (++!10621 prefix!426 Nil!41357))))))))

(assert (=> b!3899870 (=> res!1577684 e!2411201)))

(assert (=> b!3899870 e!2411201))

(declare-fun lt!1358576 () Unit!59476)

(assert (=> b!3899870 (= lt!1358576 lt!1358578)))

(declare-fun lt!1358579 () Unit!59476)

(assert (=> b!3899870 (= lt!1358579 (lemmaSemiInverse!1726 (transformation!6432 (h!46779 rules!2768)) (seqFromList!4699 (_1!23434 lt!1358575))))))

(declare-fun b!3899871 () Bool)

(declare-fun e!2411202 () Bool)

(assert (=> b!3899871 (= e!2411202 e!2411199)))

(declare-fun res!1577678 () Bool)

(assert (=> b!3899871 (=> (not res!1577678) (not e!2411199))))

(assert (=> b!3899871 (= res!1577678 (matchR!5432 (regex!6432 (h!46779 rules!2768)) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358577))))))))

(declare-fun b!3899872 () Bool)

(declare-fun res!1577683 () Bool)

(assert (=> b!3899872 (=> (not res!1577683) (not e!2411199))))

(assert (=> b!3899872 (= res!1577683 (= (value!203946 (_1!23431 (get!13674 lt!1358577))) (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358577)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358577)))))))))

(declare-fun d!1155813 () Bool)

(assert (=> d!1155813 e!2411202))

(declare-fun res!1577679 () Bool)

(assert (=> d!1155813 (=> res!1577679 e!2411202)))

(assert (=> d!1155813 (= res!1577679 (isEmpty!24584 lt!1358577))))

(assert (=> d!1155813 (= lt!1358577 e!2411200)))

(declare-fun c!677979 () Bool)

(assert (=> d!1155813 (= c!677979 (isEmpty!24580 (_1!23434 lt!1358575)))))

(assert (=> d!1155813 (= lt!1358575 (findLongestMatch!1133 (regex!6432 (h!46779 rules!2768)) (++!10621 prefix!426 Nil!41357)))))

(assert (=> d!1155813 (ruleValid!2380 thiss!20629 (h!46779 rules!2768))))

(assert (=> d!1155813 (= (maxPrefixOneRule!2401 thiss!20629 (h!46779 rules!2768) (++!10621 prefix!426 Nil!41357)) lt!1358577)))

(declare-fun b!3899873 () Bool)

(declare-fun res!1577680 () Bool)

(assert (=> b!3899873 (=> (not res!1577680) (not e!2411199))))

(assert (=> b!3899873 (= res!1577680 (< (size!31050 (_2!23431 (get!13674 lt!1358577))) (size!31050 (++!10621 prefix!426 Nil!41357))))))

(assert (= (and d!1155813 c!677979) b!3899867))

(assert (= (and d!1155813 (not c!677979)) b!3899870))

(assert (= (and b!3899870 (not res!1577684)) b!3899868))

(assert (= (and d!1155813 (not res!1577679)) b!3899871))

(assert (= (and b!3899871 res!1577678) b!3899865))

(assert (= (and b!3899865 res!1577681) b!3899873))

(assert (= (and b!3899873 res!1577680) b!3899869))

(assert (= (and b!3899869 res!1577682) b!3899872))

(assert (= (and b!3899872 res!1577683) b!3899866))

(declare-fun m!4459769 () Bool)

(assert (=> b!3899865 m!4459769))

(declare-fun m!4459771 () Bool)

(assert (=> b!3899865 m!4459771))

(assert (=> b!3899865 m!4459771))

(declare-fun m!4459773 () Bool)

(assert (=> b!3899865 m!4459773))

(assert (=> b!3899865 m!4459773))

(declare-fun m!4459775 () Bool)

(assert (=> b!3899865 m!4459775))

(assert (=> b!3899871 m!4459769))

(assert (=> b!3899871 m!4459771))

(assert (=> b!3899871 m!4459771))

(assert (=> b!3899871 m!4459773))

(assert (=> b!3899871 m!4459773))

(declare-fun m!4459777 () Bool)

(assert (=> b!3899871 m!4459777))

(declare-fun m!4459779 () Bool)

(assert (=> d!1155813 m!4459779))

(declare-fun m!4459781 () Bool)

(assert (=> d!1155813 m!4459781))

(assert (=> d!1155813 m!4457313))

(declare-fun m!4459783 () Bool)

(assert (=> d!1155813 m!4459783))

(assert (=> d!1155813 m!4457915))

(assert (=> b!3899873 m!4459769))

(declare-fun m!4459785 () Bool)

(assert (=> b!3899873 m!4459785))

(assert (=> b!3899873 m!4457313))

(assert (=> b!3899873 m!4458021))

(assert (=> b!3899866 m!4459769))

(declare-fun m!4459787 () Bool)

(assert (=> b!3899866 m!4459787))

(assert (=> b!3899869 m!4459769))

(declare-fun m!4459789 () Bool)

(assert (=> b!3899870 m!4459789))

(declare-fun m!4459791 () Bool)

(assert (=> b!3899870 m!4459791))

(assert (=> b!3899870 m!4459789))

(declare-fun m!4459793 () Bool)

(assert (=> b!3899870 m!4459793))

(assert (=> b!3899870 m!4457437))

(assert (=> b!3899870 m!4457313))

(assert (=> b!3899870 m!4458021))

(assert (=> b!3899870 m!4457437))

(assert (=> b!3899870 m!4457313))

(assert (=> b!3899870 m!4457313))

(assert (=> b!3899870 m!4458021))

(declare-fun m!4459795 () Bool)

(assert (=> b!3899870 m!4459795))

(assert (=> b!3899870 m!4459789))

(declare-fun m!4459797 () Bool)

(assert (=> b!3899870 m!4459797))

(declare-fun m!4459799 () Bool)

(assert (=> b!3899870 m!4459799))

(assert (=> b!3899870 m!4459789))

(assert (=> b!3899870 m!4457313))

(declare-fun m!4459801 () Bool)

(assert (=> b!3899870 m!4459801))

(assert (=> b!3899872 m!4459769))

(declare-fun m!4459803 () Bool)

(assert (=> b!3899872 m!4459803))

(assert (=> b!3899872 m!4459803))

(declare-fun m!4459805 () Bool)

(assert (=> b!3899872 m!4459805))

(assert (=> b!3899868 m!4457437))

(assert (=> b!3899868 m!4457313))

(assert (=> b!3899868 m!4458021))

(assert (=> b!3899868 m!4457437))

(assert (=> b!3899868 m!4457313))

(assert (=> b!3899868 m!4457313))

(assert (=> b!3899868 m!4458021))

(assert (=> b!3899868 m!4459795))

(declare-fun m!4459807 () Bool)

(assert (=> b!3899868 m!4459807))

(assert (=> bm!283740 d!1155813))

(declare-fun bs!584891 () Bool)

(declare-fun d!1155815 () Bool)

(assert (= bs!584891 (and d!1155815 d!1155763)))

(declare-fun lambda!126406 () Int)

(assert (=> bs!584891 (= (and (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (h!46779 rules!2768)))) (= (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (= lambda!126406 lambda!126401))))

(declare-fun bs!584892 () Bool)

(assert (= bs!584892 (and d!1155815 d!1155799)))

(assert (=> bs!584892 (= (and (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) (= (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))))) (= lambda!126406 lambda!126404))))

(assert (=> d!1155815 true))

(assert (=> d!1155815 (< (dynLambda!17762 order!22237 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) (dynLambda!17761 order!22235 lambda!126406))))

(assert (=> d!1155815 true))

(assert (=> d!1155815 (< (dynLambda!17759 order!22231 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) (dynLambda!17761 order!22235 lambda!126406))))

(assert (=> d!1155815 (= (semiInverseModEq!2755 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) (Forall!1442 lambda!126406))))

(declare-fun bs!584893 () Bool)

(assert (= bs!584893 d!1155815))

(declare-fun m!4459809 () Bool)

(assert (=> bs!584893 m!4459809))

(assert (=> d!1155079 d!1155815))

(declare-fun d!1155817 () Bool)

(declare-fun lt!1358580 () Bool)

(assert (=> d!1155817 (= lt!1358580 (select (content!6189 rules!2768) (rule!9336 (_1!23431 (get!13674 lt!1358130)))))))

(declare-fun e!2411204 () Bool)

(assert (=> d!1155817 (= lt!1358580 e!2411204)))

(declare-fun res!1577686 () Bool)

(assert (=> d!1155817 (=> (not res!1577686) (not e!2411204))))

(assert (=> d!1155817 (= res!1577686 ((_ is Cons!41359) rules!2768))))

(assert (=> d!1155817 (= (contains!8311 rules!2768 (rule!9336 (_1!23431 (get!13674 lt!1358130)))) lt!1358580)))

(declare-fun b!3899874 () Bool)

(declare-fun e!2411203 () Bool)

(assert (=> b!3899874 (= e!2411204 e!2411203)))

(declare-fun res!1577685 () Bool)

(assert (=> b!3899874 (=> res!1577685 e!2411203)))

(assert (=> b!3899874 (= res!1577685 (= (h!46779 rules!2768) (rule!9336 (_1!23431 (get!13674 lt!1358130)))))))

(declare-fun b!3899875 () Bool)

(assert (=> b!3899875 (= e!2411203 (contains!8311 (t!319150 rules!2768) (rule!9336 (_1!23431 (get!13674 lt!1358130)))))))

(assert (= (and d!1155817 res!1577686) b!3899874))

(assert (= (and b!3899874 (not res!1577685)) b!3899875))

(assert (=> d!1155817 m!4458461))

(declare-fun m!4459811 () Bool)

(assert (=> d!1155817 m!4459811))

(declare-fun m!4459813 () Bool)

(assert (=> b!3899875 m!4459813))

(assert (=> b!3898681 d!1155817))

(assert (=> b!3898681 d!1155231))

(declare-fun d!1155819 () Bool)

(assert (=> d!1155819 (= (inv!55525 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (value!203946 (_1!23431 (v!39163 lt!1357935))))) (isBalanced!3632 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (value!203946 (_1!23431 (v!39163 lt!1357935)))))))))

(declare-fun bs!584894 () Bool)

(assert (= bs!584894 d!1155819))

(declare-fun m!4459815 () Bool)

(assert (=> bs!584894 m!4459815))

(assert (=> tb!228981 d!1155819))

(declare-fun d!1155821 () Bool)

(declare-fun c!677982 () Bool)

(assert (=> d!1155821 (= c!677982 ((_ is Node!12643) (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72))))))))

(declare-fun e!2411209 () Bool)

(assert (=> d!1155821 (= (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72))))) e!2411209)))

(declare-fun b!3899882 () Bool)

(declare-fun inv!55528 (Conc!12643) Bool)

(assert (=> b!3899882 (= e!2411209 (inv!55528 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72))))))))

(declare-fun b!3899883 () Bool)

(declare-fun e!2411210 () Bool)

(assert (=> b!3899883 (= e!2411209 e!2411210)))

(declare-fun res!1577689 () Bool)

(assert (=> b!3899883 (= res!1577689 (not ((_ is Leaf!19566) (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72)))))))))

(assert (=> b!3899883 (=> res!1577689 e!2411210)))

(declare-fun b!3899884 () Bool)

(declare-fun inv!55529 (Conc!12643) Bool)

(assert (=> b!3899884 (= e!2411210 (inv!55529 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72))))))))

(assert (= (and d!1155821 c!677982) b!3899882))

(assert (= (and d!1155821 (not c!677982)) b!3899883))

(assert (= (and b!3899883 (not res!1577689)) b!3899884))

(declare-fun m!4459817 () Bool)

(assert (=> b!3899882 m!4459817))

(declare-fun m!4459819 () Bool)

(assert (=> b!3899884 m!4459819))

(assert (=> b!3898680 d!1155821))

(declare-fun d!1155823 () Bool)

(assert (=> d!1155823 (= (inv!55517 (tag!7292 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (= (mod (str.len (value!203945 (tag!7292 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3898821 d!1155823))

(declare-fun d!1155825 () Bool)

(declare-fun res!1577690 () Bool)

(declare-fun e!2411211 () Bool)

(assert (=> d!1155825 (=> (not res!1577690) (not e!2411211))))

(assert (=> d!1155825 (= res!1577690 (semiInverseModEq!2755 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))))))

(assert (=> d!1155825 (= (inv!55521 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) e!2411211)))

(declare-fun b!3899885 () Bool)

(assert (=> b!3899885 (= e!2411211 (equivClasses!2654 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))))))

(assert (= (and d!1155825 res!1577690) b!3899885))

(declare-fun m!4459821 () Bool)

(assert (=> d!1155825 m!4459821))

(declare-fun m!4459823 () Bool)

(assert (=> b!3899885 m!4459823))

(assert (=> b!3898821 d!1155825))

(declare-fun d!1155827 () Bool)

(declare-fun lt!1358581 () Int)

(assert (=> d!1155827 (>= lt!1358581 0)))

(declare-fun e!2411212 () Int)

(assert (=> d!1155827 (= lt!1358581 e!2411212)))

(declare-fun c!677983 () Bool)

(assert (=> d!1155827 (= c!677983 ((_ is Nil!41358) (_1!23432 lt!1357985)))))

(assert (=> d!1155827 (= (size!31052 (_1!23432 lt!1357985)) lt!1358581)))

(declare-fun b!3899886 () Bool)

(assert (=> b!3899886 (= e!2411212 0)))

(declare-fun b!3899887 () Bool)

(assert (=> b!3899887 (= e!2411212 (+ 1 (size!31052 (t!319149 (_1!23432 lt!1357985)))))))

(assert (= (and d!1155827 c!677983) b!3899886))

(assert (= (and d!1155827 (not c!677983)) b!3899887))

(declare-fun m!4459825 () Bool)

(assert (=> b!3899887 m!4459825))

(assert (=> d!1155017 d!1155827))

(declare-fun b!3899888 () Bool)

(declare-fun e!2411213 () Bool)

(declare-fun lt!1358586 () Option!8852)

(assert (=> b!3899888 (= e!2411213 (contains!8311 rules!2768 (rule!9336 (_1!23431 (get!13674 lt!1358586)))))))

(declare-fun b!3899889 () Bool)

(declare-fun e!2411215 () Option!8852)

(declare-fun lt!1358582 () Option!8852)

(declare-fun lt!1358585 () Option!8852)

(assert (=> b!3899889 (= e!2411215 (ite (and ((_ is None!8851) lt!1358582) ((_ is None!8851) lt!1358585)) None!8851 (ite ((_ is None!8851) lt!1358585) lt!1358582 (ite ((_ is None!8851) lt!1358582) lt!1358585 (ite (>= (size!31049 (_1!23431 (v!39163 lt!1358582))) (size!31049 (_1!23431 (v!39163 lt!1358585)))) lt!1358582 lt!1358585)))))))

(declare-fun call!283833 () Option!8852)

(assert (=> b!3899889 (= lt!1358582 call!283833)))

(assert (=> b!3899889 (= lt!1358585 (maxPrefix!3325 thiss!20629 (t!319150 rules!2768) suffix!1176))))

(declare-fun b!3899890 () Bool)

(declare-fun res!1577694 () Bool)

(assert (=> b!3899890 (=> (not res!1577694) (not e!2411213))))

(assert (=> b!3899890 (= res!1577694 (< (size!31050 (_2!23431 (get!13674 lt!1358586))) (size!31050 suffix!1176)))))

(declare-fun b!3899891 () Bool)

(declare-fun res!1577695 () Bool)

(assert (=> b!3899891 (=> (not res!1577695) (not e!2411213))))

(assert (=> b!3899891 (= res!1577695 (= (value!203946 (_1!23431 (get!13674 lt!1358586))) (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358586)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358586)))))))))

(declare-fun b!3899892 () Bool)

(assert (=> b!3899892 (= e!2411215 call!283833)))

(declare-fun b!3899893 () Bool)

(declare-fun res!1577691 () Bool)

(assert (=> b!3899893 (=> (not res!1577691) (not e!2411213))))

(assert (=> b!3899893 (= res!1577691 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358586)))) (_2!23431 (get!13674 lt!1358586))) suffix!1176))))

(declare-fun bm!283828 () Bool)

(assert (=> bm!283828 (= call!283833 (maxPrefixOneRule!2401 thiss!20629 (h!46779 rules!2768) suffix!1176))))

(declare-fun b!3899895 () Bool)

(declare-fun res!1577697 () Bool)

(assert (=> b!3899895 (=> (not res!1577697) (not e!2411213))))

(assert (=> b!3899895 (= res!1577697 (= (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358586)))) (originalCharacters!7032 (_1!23431 (get!13674 lt!1358586)))))))

(declare-fun b!3899896 () Bool)

(declare-fun res!1577696 () Bool)

(assert (=> b!3899896 (=> (not res!1577696) (not e!2411213))))

(assert (=> b!3899896 (= res!1577696 (matchR!5432 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358586)))) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358586))))))))

(declare-fun d!1155829 () Bool)

(declare-fun e!2411214 () Bool)

(assert (=> d!1155829 e!2411214))

(declare-fun res!1577693 () Bool)

(assert (=> d!1155829 (=> res!1577693 e!2411214)))

(assert (=> d!1155829 (= res!1577693 (isEmpty!24584 lt!1358586))))

(assert (=> d!1155829 (= lt!1358586 e!2411215)))

(declare-fun c!677984 () Bool)

(assert (=> d!1155829 (= c!677984 (and ((_ is Cons!41359) rules!2768) ((_ is Nil!41359) (t!319150 rules!2768))))))

(declare-fun lt!1358583 () Unit!59476)

(declare-fun lt!1358584 () Unit!59476)

(assert (=> d!1155829 (= lt!1358583 lt!1358584)))

(assert (=> d!1155829 (isPrefix!3527 suffix!1176 suffix!1176)))

(assert (=> d!1155829 (= lt!1358584 (lemmaIsPrefixRefl!2234 suffix!1176 suffix!1176))))

(assert (=> d!1155829 (rulesValidInductive!2304 thiss!20629 rules!2768)))

(assert (=> d!1155829 (= (maxPrefix!3325 thiss!20629 rules!2768 suffix!1176) lt!1358586)))

(declare-fun b!3899894 () Bool)

(assert (=> b!3899894 (= e!2411214 e!2411213)))

(declare-fun res!1577692 () Bool)

(assert (=> b!3899894 (=> (not res!1577692) (not e!2411213))))

(assert (=> b!3899894 (= res!1577692 (isDefined!6903 lt!1358586))))

(assert (= (and d!1155829 c!677984) b!3899892))

(assert (= (and d!1155829 (not c!677984)) b!3899889))

(assert (= (or b!3899892 b!3899889) bm!283828))

(assert (= (and d!1155829 (not res!1577693)) b!3899894))

(assert (= (and b!3899894 res!1577692) b!3899895))

(assert (= (and b!3899895 res!1577697) b!3899890))

(assert (= (and b!3899890 res!1577694) b!3899893))

(assert (= (and b!3899893 res!1577691) b!3899891))

(assert (= (and b!3899891 res!1577695) b!3899896))

(assert (= (and b!3899896 res!1577696) b!3899888))

(declare-fun m!4459827 () Bool)

(assert (=> d!1155829 m!4459827))

(declare-fun m!4459829 () Bool)

(assert (=> d!1155829 m!4459829))

(declare-fun m!4459831 () Bool)

(assert (=> d!1155829 m!4459831))

(assert (=> d!1155829 m!4457955))

(declare-fun m!4459833 () Bool)

(assert (=> bm!283828 m!4459833))

(declare-fun m!4459835 () Bool)

(assert (=> b!3899890 m!4459835))

(declare-fun m!4459837 () Bool)

(assert (=> b!3899890 m!4459837))

(assert (=> b!3899890 m!4457429))

(assert (=> b!3899896 m!4459835))

(declare-fun m!4459839 () Bool)

(assert (=> b!3899896 m!4459839))

(assert (=> b!3899896 m!4459839))

(declare-fun m!4459841 () Bool)

(assert (=> b!3899896 m!4459841))

(assert (=> b!3899896 m!4459841))

(declare-fun m!4459843 () Bool)

(assert (=> b!3899896 m!4459843))

(declare-fun m!4459845 () Bool)

(assert (=> b!3899894 m!4459845))

(declare-fun m!4459847 () Bool)

(assert (=> b!3899889 m!4459847))

(assert (=> b!3899891 m!4459835))

(declare-fun m!4459849 () Bool)

(assert (=> b!3899891 m!4459849))

(assert (=> b!3899891 m!4459849))

(declare-fun m!4459851 () Bool)

(assert (=> b!3899891 m!4459851))

(assert (=> b!3899888 m!4459835))

(declare-fun m!4459853 () Bool)

(assert (=> b!3899888 m!4459853))

(assert (=> b!3899895 m!4459835))

(assert (=> b!3899895 m!4459839))

(assert (=> b!3899895 m!4459839))

(assert (=> b!3899895 m!4459841))

(assert (=> b!3899893 m!4459835))

(assert (=> b!3899893 m!4459839))

(assert (=> b!3899893 m!4459839))

(assert (=> b!3899893 m!4459841))

(assert (=> b!3899893 m!4459841))

(declare-fun m!4459855 () Bool)

(assert (=> b!3899893 m!4459855))

(assert (=> d!1155017 d!1155829))

(declare-fun d!1155831 () Bool)

(assert (=> d!1155831 (= (inv!16 (value!203946 (_1!23431 (v!39163 err!4377)))) (= (charsToInt!0 (text!47081 (value!203946 (_1!23431 (v!39163 err!4377))))) (value!203937 (value!203946 (_1!23431 (v!39163 err!4377))))))))

(declare-fun bs!584895 () Bool)

(assert (= bs!584895 d!1155831))

(declare-fun m!4459857 () Bool)

(assert (=> bs!584895 m!4459857))

(assert (=> b!3898700 d!1155831))

(declare-fun d!1155833 () Bool)

(assert (=> d!1155833 (= (isEmpty!24584 lt!1358145) (not ((_ is Some!8851) lt!1358145)))))

(assert (=> d!1155177 d!1155833))

(declare-fun b!3899900 () Bool)

(declare-fun e!2411217 () Bool)

(assert (=> b!3899900 (= e!2411217 (>= (size!31050 (++!10621 prefix!426 Nil!41357)) (size!31050 (++!10621 prefix!426 Nil!41357))))))

(declare-fun b!3899899 () Bool)

(declare-fun e!2411216 () Bool)

(assert (=> b!3899899 (= e!2411216 (isPrefix!3527 (tail!5963 (++!10621 prefix!426 Nil!41357)) (tail!5963 (++!10621 prefix!426 Nil!41357))))))

(declare-fun b!3899897 () Bool)

(declare-fun e!2411218 () Bool)

(assert (=> b!3899897 (= e!2411218 e!2411216)))

(declare-fun res!1577699 () Bool)

(assert (=> b!3899897 (=> (not res!1577699) (not e!2411216))))

(assert (=> b!3899897 (= res!1577699 (not ((_ is Nil!41357) (++!10621 prefix!426 Nil!41357))))))

(declare-fun b!3899898 () Bool)

(declare-fun res!1577701 () Bool)

(assert (=> b!3899898 (=> (not res!1577701) (not e!2411216))))

(assert (=> b!3899898 (= res!1577701 (= (head!8246 (++!10621 prefix!426 Nil!41357)) (head!8246 (++!10621 prefix!426 Nil!41357))))))

(declare-fun d!1155835 () Bool)

(assert (=> d!1155835 e!2411217))

(declare-fun res!1577700 () Bool)

(assert (=> d!1155835 (=> res!1577700 e!2411217)))

(declare-fun lt!1358587 () Bool)

(assert (=> d!1155835 (= res!1577700 (not lt!1358587))))

(assert (=> d!1155835 (= lt!1358587 e!2411218)))

(declare-fun res!1577698 () Bool)

(assert (=> d!1155835 (=> res!1577698 e!2411218)))

(assert (=> d!1155835 (= res!1577698 ((_ is Nil!41357) (++!10621 prefix!426 Nil!41357)))))

(assert (=> d!1155835 (= (isPrefix!3527 (++!10621 prefix!426 Nil!41357) (++!10621 prefix!426 Nil!41357)) lt!1358587)))

(assert (= (and d!1155835 (not res!1577698)) b!3899897))

(assert (= (and b!3899897 res!1577699) b!3899898))

(assert (= (and b!3899898 res!1577701) b!3899899))

(assert (= (and d!1155835 (not res!1577700)) b!3899900))

(assert (=> b!3899900 m!4457313))

(assert (=> b!3899900 m!4458021))

(assert (=> b!3899900 m!4457313))

(assert (=> b!3899900 m!4458021))

(assert (=> b!3899899 m!4457313))

(declare-fun m!4459859 () Bool)

(assert (=> b!3899899 m!4459859))

(assert (=> b!3899899 m!4457313))

(assert (=> b!3899899 m!4459859))

(assert (=> b!3899899 m!4459859))

(assert (=> b!3899899 m!4459859))

(declare-fun m!4459861 () Bool)

(assert (=> b!3899899 m!4459861))

(assert (=> b!3899898 m!4457313))

(declare-fun m!4459863 () Bool)

(assert (=> b!3899898 m!4459863))

(assert (=> b!3899898 m!4457313))

(assert (=> b!3899898 m!4459863))

(assert (=> d!1155177 d!1155835))

(declare-fun d!1155837 () Bool)

(assert (=> d!1155837 (isPrefix!3527 (++!10621 prefix!426 Nil!41357) (++!10621 prefix!426 Nil!41357))))

(declare-fun lt!1358588 () Unit!59476)

(assert (=> d!1155837 (= lt!1358588 (choose!23065 (++!10621 prefix!426 Nil!41357) (++!10621 prefix!426 Nil!41357)))))

(assert (=> d!1155837 (= (lemmaIsPrefixRefl!2234 (++!10621 prefix!426 Nil!41357) (++!10621 prefix!426 Nil!41357)) lt!1358588)))

(declare-fun bs!584896 () Bool)

(assert (= bs!584896 d!1155837))

(assert (=> bs!584896 m!4457313))

(assert (=> bs!584896 m!4457313))

(assert (=> bs!584896 m!4458011))

(assert (=> bs!584896 m!4457313))

(assert (=> bs!584896 m!4457313))

(declare-fun m!4459865 () Bool)

(assert (=> bs!584896 m!4459865))

(assert (=> d!1155177 d!1155837))

(assert (=> d!1155177 d!1155591))

(assert (=> b!3898725 d!1155265))

(declare-fun d!1155839 () Bool)

(assert (=> d!1155839 (= (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358145))))) (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145))))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358145))))))))

(declare-fun b_lambda!113943 () Bool)

(assert (=> (not b_lambda!113943) (not d!1155839)))

(declare-fun tb!229533 () Bool)

(declare-fun t!319732 () Bool)

(assert (=> (and b!3898205 (= (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319732) tb!229533))

(declare-fun result!278736 () Bool)

(assert (=> tb!229533 (= result!278736 (inv!21 (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145))))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358145)))))))))

(declare-fun m!4459867 () Bool)

(assert (=> tb!229533 m!4459867))

(assert (=> d!1155839 t!319732))

(declare-fun b_and!294841 () Bool)

(assert (= b_and!294837 (and (=> t!319732 result!278736) b_and!294841)))

(declare-fun t!319734 () Bool)

(declare-fun tb!229535 () Bool)

(assert (=> (and b!3898822 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319734) tb!229535))

(declare-fun result!278738 () Bool)

(assert (= result!278738 result!278736))

(assert (=> d!1155839 t!319734))

(declare-fun b_and!294843 () Bool)

(assert (= b_and!294827 (and (=> t!319734 result!278738) b_and!294843)))

(declare-fun t!319736 () Bool)

(declare-fun tb!229537 () Bool)

(assert (=> (and b!3898838 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319736) tb!229537))

(declare-fun result!278740 () Bool)

(assert (= result!278740 result!278736))

(assert (=> d!1155839 t!319736))

(declare-fun b_and!294845 () Bool)

(assert (= b_and!294839 (and (=> t!319736 result!278740) b_and!294845)))

(declare-fun tb!229539 () Bool)

(declare-fun t!319738 () Bool)

(assert (=> (and b!3898210 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319738) tb!229539))

(declare-fun result!278742 () Bool)

(assert (= result!278742 result!278736))

(assert (=> d!1155839 t!319738))

(declare-fun b_and!294847 () Bool)

(assert (= b_and!294835 (and (=> t!319738 result!278742) b_and!294847)))

(declare-fun t!319740 () Bool)

(declare-fun tb!229541 () Bool)

(assert (=> (and b!3898228 (= (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319740) tb!229541))

(declare-fun result!278744 () Bool)

(assert (= result!278744 result!278736))

(assert (=> d!1155839 t!319740))

(declare-fun b_and!294849 () Bool)

(assert (= b_and!294829 (and (=> t!319740 result!278744) b_and!294849)))

(declare-fun tb!229543 () Bool)

(declare-fun t!319742 () Bool)

(assert (=> (and b!3898827 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319742) tb!229543))

(declare-fun result!278746 () Bool)

(assert (= result!278746 result!278736))

(assert (=> d!1155839 t!319742))

(declare-fun b_and!294851 () Bool)

(assert (= b_and!294831 (and (=> t!319742 result!278746) b_and!294851)))

(declare-fun tb!229545 () Bool)

(declare-fun t!319744 () Bool)

(assert (=> (and b!3898224 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319744) tb!229545))

(declare-fun result!278748 () Bool)

(assert (= result!278748 result!278736))

(assert (=> d!1155839 t!319744))

(declare-fun b_and!294853 () Bool)

(assert (= b_and!294833 (and (=> t!319744 result!278748) b_and!294853)))

(assert (=> d!1155839 m!4458033))

(declare-fun m!4459869 () Bool)

(assert (=> d!1155839 m!4459869))

(assert (=> b!3898725 d!1155839))

(declare-fun d!1155841 () Bool)

(assert (=> d!1155841 (= (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358145)))) (fromListB!2164 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358145)))))))

(declare-fun bs!584897 () Bool)

(assert (= bs!584897 d!1155841))

(declare-fun m!4459871 () Bool)

(assert (=> bs!584897 m!4459871))

(assert (=> b!3898725 d!1155841))

(declare-fun b!3899901 () Bool)

(declare-fun e!2411220 () Bool)

(declare-fun lt!1358590 () tuple2!40596)

(assert (=> b!3899901 (= e!2411220 (not (isEmpty!24581 (_1!23432 lt!1358590))))))

(declare-fun b!3899902 () Bool)

(declare-fun e!2411222 () Bool)

(assert (=> b!3899902 (= e!2411222 e!2411220)))

(declare-fun res!1577702 () Bool)

(assert (=> b!3899902 (= res!1577702 (< (size!31050 (_2!23432 lt!1358590)) (size!31050 (_2!23431 (v!39163 lt!1357984)))))))

(assert (=> b!3899902 (=> (not res!1577702) (not e!2411220))))

(declare-fun b!3899903 () Bool)

(declare-fun e!2411221 () tuple2!40596)

(assert (=> b!3899903 (= e!2411221 (tuple2!40597 Nil!41358 (_2!23431 (v!39163 lt!1357984))))))

(declare-fun b!3899904 () Bool)

(assert (=> b!3899904 (= e!2411222 (= (_2!23432 lt!1358590) (_2!23431 (v!39163 lt!1357984))))))

(declare-fun d!1155843 () Bool)

(assert (=> d!1155843 e!2411222))

(declare-fun c!677985 () Bool)

(assert (=> d!1155843 (= c!677985 (> (size!31052 (_1!23432 lt!1358590)) 0))))

(assert (=> d!1155843 (= lt!1358590 e!2411221)))

(declare-fun c!677986 () Bool)

(declare-fun lt!1358589 () Option!8852)

(assert (=> d!1155843 (= c!677986 ((_ is Some!8851) lt!1358589))))

(assert (=> d!1155843 (= lt!1358589 (maxPrefix!3325 thiss!20629 rules!2768 (_2!23431 (v!39163 lt!1357984))))))

(assert (=> d!1155843 (= (lexList!1789 thiss!20629 rules!2768 (_2!23431 (v!39163 lt!1357984))) lt!1358590)))

(declare-fun b!3899905 () Bool)

(declare-fun lt!1358591 () tuple2!40596)

(assert (=> b!3899905 (= e!2411221 (tuple2!40597 (Cons!41358 (_1!23431 (v!39163 lt!1358589)) (_1!23432 lt!1358591)) (_2!23432 lt!1358591)))))

(assert (=> b!3899905 (= lt!1358591 (lexList!1789 thiss!20629 rules!2768 (_2!23431 (v!39163 lt!1358589))))))

(assert (= (and d!1155843 c!677986) b!3899905))

(assert (= (and d!1155843 (not c!677986)) b!3899903))

(assert (= (and d!1155843 c!677985) b!3899902))

(assert (= (and d!1155843 (not c!677985)) b!3899904))

(assert (= (and b!3899902 res!1577702) b!3899901))

(declare-fun m!4459873 () Bool)

(assert (=> b!3899901 m!4459873))

(declare-fun m!4459875 () Bool)

(assert (=> b!3899902 m!4459875))

(declare-fun m!4459877 () Bool)

(assert (=> b!3899902 m!4459877))

(declare-fun m!4459879 () Bool)

(assert (=> d!1155843 m!4459879))

(declare-fun m!4459881 () Bool)

(assert (=> d!1155843 m!4459881))

(declare-fun m!4459883 () Bool)

(assert (=> b!3899905 m!4459883))

(assert (=> b!3898325 d!1155843))

(declare-fun d!1155845 () Bool)

(assert (=> d!1155845 (= (isEmpty!24580 (originalCharacters!7032 (h!46778 prefixTokens!80))) ((_ is Nil!41357) (originalCharacters!7032 (h!46778 prefixTokens!80))))))

(assert (=> d!1155201 d!1155845))

(declare-fun d!1155847 () Bool)

(declare-fun lt!1358592 () Int)

(assert (=> d!1155847 (>= lt!1358592 0)))

(declare-fun e!2411223 () Int)

(assert (=> d!1155847 (= lt!1358592 e!2411223)))

(declare-fun c!677987 () Bool)

(assert (=> d!1155847 (= c!677987 ((_ is Nil!41357) (_2!23431 (get!13674 lt!1358151))))))

(assert (=> d!1155847 (= (size!31050 (_2!23431 (get!13674 lt!1358151))) lt!1358592)))

(declare-fun b!3899906 () Bool)

(assert (=> b!3899906 (= e!2411223 0)))

(declare-fun b!3899907 () Bool)

(assert (=> b!3899907 (= e!2411223 (+ 1 (size!31050 (t!319148 (_2!23431 (get!13674 lt!1358151))))))))

(assert (= (and d!1155847 c!677987) b!3899906))

(assert (= (and d!1155847 (not c!677987)) b!3899907))

(declare-fun m!4459885 () Bool)

(assert (=> b!3899907 m!4459885))

(assert (=> b!3898737 d!1155847))

(assert (=> b!3898737 d!1155239))

(declare-fun d!1155849 () Bool)

(declare-fun lt!1358593 () Int)

(assert (=> d!1155849 (>= lt!1358593 0)))

(declare-fun e!2411224 () Int)

(assert (=> d!1155849 (= lt!1358593 e!2411224)))

(declare-fun c!677988 () Bool)

(assert (=> d!1155849 (= c!677988 ((_ is Nil!41357) prefix!426))))

(assert (=> d!1155849 (= (size!31050 prefix!426) lt!1358593)))

(declare-fun b!3899908 () Bool)

(assert (=> b!3899908 (= e!2411224 0)))

(declare-fun b!3899909 () Bool)

(assert (=> b!3899909 (= e!2411224 (+ 1 (size!31050 (t!319148 prefix!426))))))

(assert (= (and d!1155849 c!677988) b!3899908))

(assert (= (and d!1155849 (not c!677988)) b!3899909))

(assert (=> b!3899909 m!4458245))

(assert (=> b!3898737 d!1155849))

(declare-fun d!1155851 () Bool)

(declare-fun lt!1358594 () Int)

(assert (=> d!1155851 (>= lt!1358594 0)))

(declare-fun e!2411225 () Int)

(assert (=> d!1155851 (= lt!1358594 e!2411225)))

(declare-fun c!677989 () Bool)

(assert (=> d!1155851 (= c!677989 ((_ is Nil!41357) (t!319148 (originalCharacters!7032 (_1!23431 (v!39163 lt!1357935))))))))

(assert (=> d!1155851 (= (size!31050 (t!319148 (originalCharacters!7032 (_1!23431 (v!39163 lt!1357935))))) lt!1358594)))

(declare-fun b!3899910 () Bool)

(assert (=> b!3899910 (= e!2411225 0)))

(declare-fun b!3899911 () Bool)

(assert (=> b!3899911 (= e!2411225 (+ 1 (size!31050 (t!319148 (t!319148 (originalCharacters!7032 (_1!23431 (v!39163 lt!1357935))))))))))

(assert (= (and d!1155851 c!677989) b!3899910))

(assert (= (and d!1155851 (not c!677989)) b!3899911))

(declare-fun m!4459887 () Bool)

(assert (=> b!3899911 m!4459887))

(assert (=> b!3898370 d!1155851))

(assert (=> b!3898428 d!1155259))

(declare-fun d!1155853 () Bool)

(assert (=> d!1155853 (= (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358032))))) (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032))))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358032))))))))

(declare-fun b_lambda!113945 () Bool)

(assert (=> (not b_lambda!113945) (not d!1155853)))

(declare-fun tb!229547 () Bool)

(declare-fun t!319746 () Bool)

(assert (=> (and b!3898224 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319746) tb!229547))

(declare-fun result!278750 () Bool)

(assert (=> tb!229547 (= result!278750 (inv!21 (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032))))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358032)))))))))

(declare-fun m!4459889 () Bool)

(assert (=> tb!229547 m!4459889))

(assert (=> d!1155853 t!319746))

(declare-fun b_and!294855 () Bool)

(assert (= b_and!294853 (and (=> t!319746 result!278750) b_and!294855)))

(declare-fun t!319748 () Bool)

(declare-fun tb!229549 () Bool)

(assert (=> (and b!3898838 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319748) tb!229549))

(declare-fun result!278752 () Bool)

(assert (= result!278752 result!278750))

(assert (=> d!1155853 t!319748))

(declare-fun b_and!294857 () Bool)

(assert (= b_and!294845 (and (=> t!319748 result!278752) b_and!294857)))

(declare-fun t!319750 () Bool)

(declare-fun tb!229551 () Bool)

(assert (=> (and b!3898228 (= (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319750) tb!229551))

(declare-fun result!278754 () Bool)

(assert (= result!278754 result!278750))

(assert (=> d!1155853 t!319750))

(declare-fun b_and!294859 () Bool)

(assert (= b_and!294849 (and (=> t!319750 result!278754) b_and!294859)))

(declare-fun t!319752 () Bool)

(declare-fun tb!229553 () Bool)

(assert (=> (and b!3898205 (= (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319752) tb!229553))

(declare-fun result!278756 () Bool)

(assert (= result!278756 result!278750))

(assert (=> d!1155853 t!319752))

(declare-fun b_and!294861 () Bool)

(assert (= b_and!294841 (and (=> t!319752 result!278756) b_and!294861)))

(declare-fun t!319754 () Bool)

(declare-fun tb!229555 () Bool)

(assert (=> (and b!3898822 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319754) tb!229555))

(declare-fun result!278758 () Bool)

(assert (= result!278758 result!278750))

(assert (=> d!1155853 t!319754))

(declare-fun b_and!294863 () Bool)

(assert (= b_and!294843 (and (=> t!319754 result!278758) b_and!294863)))

(declare-fun t!319756 () Bool)

(declare-fun tb!229557 () Bool)

(assert (=> (and b!3898210 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319756) tb!229557))

(declare-fun result!278760 () Bool)

(assert (= result!278760 result!278750))

(assert (=> d!1155853 t!319756))

(declare-fun b_and!294865 () Bool)

(assert (= b_and!294847 (and (=> t!319756 result!278760) b_and!294865)))

(declare-fun tb!229559 () Bool)

(declare-fun t!319758 () Bool)

(assert (=> (and b!3898827 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319758) tb!229559))

(declare-fun result!278762 () Bool)

(assert (= result!278762 result!278750))

(assert (=> d!1155853 t!319758))

(declare-fun b_and!294867 () Bool)

(assert (= b_and!294851 (and (=> t!319758 result!278762) b_and!294867)))

(assert (=> d!1155853 m!4457549))

(declare-fun m!4459891 () Bool)

(assert (=> d!1155853 m!4459891))

(assert (=> b!3898428 d!1155853))

(declare-fun d!1155855 () Bool)

(assert (=> d!1155855 (= (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358032)))) (fromListB!2164 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358032)))))))

(declare-fun bs!584898 () Bool)

(assert (= bs!584898 d!1155855))

(declare-fun m!4459893 () Bool)

(assert (=> bs!584898 m!4459893))

(assert (=> b!3898428 d!1155855))

(declare-fun d!1155857 () Bool)

(assert (=> d!1155857 (= (list!15370 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80)))) (list!15371 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80))))))))

(declare-fun bs!584899 () Bool)

(assert (= bs!584899 d!1155857))

(declare-fun m!4459895 () Bool)

(assert (=> bs!584899 m!4459895))

(assert (=> b!3898770 d!1155857))

(declare-fun d!1155859 () Bool)

(assert (=> d!1155859 (= (isDefined!6903 lt!1358151) (not (isEmpty!24584 lt!1358151)))))

(declare-fun bs!584900 () Bool)

(assert (= bs!584900 d!1155859))

(assert (=> bs!584900 m!4458053))

(assert (=> b!3898741 d!1155859))

(declare-fun d!1155861 () Bool)

(assert (not d!1155861))

(assert (=> b!3898340 d!1155861))

(declare-fun d!1155863 () Bool)

(assert (not d!1155863))

(assert (=> b!3898340 d!1155863))

(declare-fun d!1155865 () Bool)

(assert (=> d!1155865 (= (tail!5963 suffix!1176) (t!319148 suffix!1176))))

(assert (=> b!3898340 d!1155865))

(declare-fun bs!584901 () Bool)

(declare-fun d!1155867 () Bool)

(assert (= bs!584901 (and d!1155867 d!1155325)))

(declare-fun lambda!126407 () Int)

(assert (=> bs!584901 (= (= (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) (= lambda!126407 lambda!126386))))

(declare-fun bs!584902 () Bool)

(assert (= bs!584902 (and d!1155867 d!1155611)))

(assert (=> bs!584902 (= (= (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) (= lambda!126407 lambda!126391))))

(assert (=> d!1155867 true))

(assert (=> d!1155867 (< (dynLambda!17759 order!22231 (toValue!8868 (transformation!6432 (h!46779 rules!2768)))) (dynLambda!17760 order!22233 lambda!126407))))

(assert (=> d!1155867 (= (equivClasses!2654 (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toValue!8868 (transformation!6432 (h!46779 rules!2768)))) (Forall2!1040 lambda!126407))))

(declare-fun bs!584903 () Bool)

(assert (= bs!584903 d!1155867))

(declare-fun m!4459897 () Bool)

(assert (=> bs!584903 m!4459897))

(assert (=> b!3898249 d!1155867))

(assert (=> d!1155165 d!1155163))

(declare-fun d!1155869 () Bool)

(assert (=> d!1155869 (isPrefix!3527 lt!1357946 lt!1357946)))

(assert (=> d!1155869 true))

(declare-fun _$45!1927 () Unit!59476)

(assert (=> d!1155869 (= (choose!23065 lt!1357946 lt!1357946) _$45!1927)))

(declare-fun bs!584904 () Bool)

(assert (= bs!584904 d!1155869))

(assert (=> bs!584904 m!4457303))

(assert (=> d!1155165 d!1155869))

(assert (=> b!3898669 d!1155323))

(declare-fun d!1155871 () Bool)

(assert (=> d!1155871 (= (isEmpty!24581 (_1!23432 lt!1357985)) ((_ is Nil!41358) (_1!23432 lt!1357985)))))

(assert (=> b!3898321 d!1155871))

(declare-fun d!1155873 () Bool)

(declare-fun c!677990 () Bool)

(assert (=> d!1155873 (= c!677990 ((_ is Nil!41358) lt!1358140))))

(declare-fun e!2411227 () (InoxSet Token!12002))

(assert (=> d!1155873 (= (content!6187 lt!1358140) e!2411227)))

(declare-fun b!3899912 () Bool)

(assert (=> b!3899912 (= e!2411227 ((as const (Array Token!12002 Bool)) false))))

(declare-fun b!3899913 () Bool)

(assert (=> b!3899913 (= e!2411227 ((_ map or) (store ((as const (Array Token!12002 Bool)) false) (h!46778 lt!1358140) true) (content!6187 (t!319149 lt!1358140))))))

(assert (= (and d!1155873 c!677990) b!3899912))

(assert (= (and d!1155873 (not c!677990)) b!3899913))

(declare-fun m!4459899 () Bool)

(assert (=> b!3899913 m!4459899))

(declare-fun m!4459901 () Bool)

(assert (=> b!3899913 m!4459901))

(assert (=> d!1155175 d!1155873))

(declare-fun d!1155875 () Bool)

(declare-fun c!677991 () Bool)

(assert (=> d!1155875 (= c!677991 ((_ is Nil!41358) lt!1357949))))

(declare-fun e!2411228 () (InoxSet Token!12002))

(assert (=> d!1155875 (= (content!6187 lt!1357949) e!2411228)))

(declare-fun b!3899914 () Bool)

(assert (=> b!3899914 (= e!2411228 ((as const (Array Token!12002 Bool)) false))))

(declare-fun b!3899915 () Bool)

(assert (=> b!3899915 (= e!2411228 ((_ map or) (store ((as const (Array Token!12002 Bool)) false) (h!46778 lt!1357949) true) (content!6187 (t!319149 lt!1357949))))))

(assert (= (and d!1155875 c!677991) b!3899914))

(assert (= (and d!1155875 (not c!677991)) b!3899915))

(declare-fun m!4459903 () Bool)

(assert (=> b!3899915 m!4459903))

(declare-fun m!4459905 () Bool)

(assert (=> b!3899915 m!4459905))

(assert (=> d!1155175 d!1155875))

(declare-fun d!1155877 () Bool)

(declare-fun c!677992 () Bool)

(assert (=> d!1155877 (= c!677992 ((_ is Nil!41358) (_1!23432 lt!1357936)))))

(declare-fun e!2411229 () (InoxSet Token!12002))

(assert (=> d!1155877 (= (content!6187 (_1!23432 lt!1357936)) e!2411229)))

(declare-fun b!3899916 () Bool)

(assert (=> b!3899916 (= e!2411229 ((as const (Array Token!12002 Bool)) false))))

(declare-fun b!3899917 () Bool)

(assert (=> b!3899917 (= e!2411229 ((_ map or) (store ((as const (Array Token!12002 Bool)) false) (h!46778 (_1!23432 lt!1357936)) true) (content!6187 (t!319149 (_1!23432 lt!1357936)))))))

(assert (= (and d!1155877 c!677992) b!3899916))

(assert (= (and d!1155877 (not c!677992)) b!3899917))

(declare-fun m!4459907 () Bool)

(assert (=> b!3899917 m!4459907))

(declare-fun m!4459909 () Bool)

(assert (=> b!3899917 m!4459909))

(assert (=> d!1155175 d!1155877))

(declare-fun d!1155879 () Bool)

(declare-fun c!677993 () Bool)

(assert (=> d!1155879 (= c!677993 ((_ is Node!12643) (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377)))))))))

(declare-fun e!2411230 () Bool)

(assert (=> d!1155879 (= (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377)))))) e!2411230)))

(declare-fun b!3899918 () Bool)

(assert (=> b!3899918 (= e!2411230 (inv!55528 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377)))))))))

(declare-fun b!3899919 () Bool)

(declare-fun e!2411231 () Bool)

(assert (=> b!3899919 (= e!2411230 e!2411231)))

(declare-fun res!1577703 () Bool)

(assert (=> b!3899919 (= res!1577703 (not ((_ is Leaf!19566) (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377))))))))))

(assert (=> b!3899919 (=> res!1577703 e!2411231)))

(declare-fun b!3899920 () Bool)

(assert (=> b!3899920 (= e!2411231 (inv!55529 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377)))))))))

(assert (= (and d!1155879 c!677993) b!3899918))

(assert (= (and d!1155879 (not c!677993)) b!3899919))

(assert (= (and b!3899919 (not res!1577703)) b!3899920))

(declare-fun m!4459911 () Bool)

(assert (=> b!3899918 m!4459911))

(declare-fun m!4459913 () Bool)

(assert (=> b!3899920 m!4459913))

(assert (=> b!3898751 d!1155879))

(declare-fun d!1155881 () Bool)

(declare-fun lt!1358595 () Int)

(assert (=> d!1155881 (>= lt!1358595 0)))

(declare-fun e!2411232 () Int)

(assert (=> d!1155881 (= lt!1358595 e!2411232)))

(declare-fun c!677994 () Bool)

(assert (=> d!1155881 (= c!677994 ((_ is Nil!41357) (_2!23431 (get!13674 lt!1358123))))))

(assert (=> d!1155881 (= (size!31050 (_2!23431 (get!13674 lt!1358123))) lt!1358595)))

(declare-fun b!3899921 () Bool)

(assert (=> b!3899921 (= e!2411232 0)))

(declare-fun b!3899922 () Bool)

(assert (=> b!3899922 (= e!2411232 (+ 1 (size!31050 (t!319148 (_2!23431 (get!13674 lt!1358123))))))))

(assert (= (and d!1155881 c!677994) b!3899921))

(assert (= (and d!1155881 (not c!677994)) b!3899922))

(declare-fun m!4459915 () Bool)

(assert (=> b!3899922 m!4459915))

(assert (=> b!3898673 d!1155881))

(assert (=> b!3898673 d!1155323))

(assert (=> b!3898673 d!1155233))

(declare-fun d!1155883 () Bool)

(assert (=> d!1155883 (= (head!8246 lt!1357938) (h!46777 lt!1357938))))

(assert (=> b!3898486 d!1155883))

(declare-fun d!1155885 () Bool)

(assert (=> d!1155885 (= (head!8246 lt!1357950) (h!46777 lt!1357950))))

(assert (=> b!3898486 d!1155885))

(declare-fun d!1155887 () Bool)

(assert (=> d!1155887 (= (list!15370 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72)))) (list!15371 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72))))))))

(declare-fun bs!584905 () Bool)

(assert (= bs!584905 d!1155887))

(declare-fun m!4459917 () Bool)

(assert (=> bs!584905 m!4459917))

(assert (=> b!3898678 d!1155887))

(assert (=> d!1155125 d!1155081))

(declare-fun d!1155889 () Bool)

(assert (=> d!1155889 (ruleValid!2380 thiss!20629 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))

(assert (=> d!1155889 true))

(declare-fun _$65!1356 () Unit!59476)

(assert (=> d!1155889 (= (choose!23061 thiss!20629 (rule!9336 (_1!23431 (v!39163 lt!1357935))) rules!2768) _$65!1356)))

(declare-fun bs!584906 () Bool)

(assert (= bs!584906 d!1155889))

(assert (=> bs!584906 m!4457271))

(assert (=> d!1155125 d!1155889))

(declare-fun d!1155891 () Bool)

(declare-fun lt!1358596 () Bool)

(assert (=> d!1155891 (= lt!1358596 (select (content!6189 rules!2768) (rule!9336 (_1!23431 (v!39163 lt!1357935)))))))

(declare-fun e!2411234 () Bool)

(assert (=> d!1155891 (= lt!1358596 e!2411234)))

(declare-fun res!1577705 () Bool)

(assert (=> d!1155891 (=> (not res!1577705) (not e!2411234))))

(assert (=> d!1155891 (= res!1577705 ((_ is Cons!41359) rules!2768))))

(assert (=> d!1155891 (= (contains!8311 rules!2768 (rule!9336 (_1!23431 (v!39163 lt!1357935)))) lt!1358596)))

(declare-fun b!3899923 () Bool)

(declare-fun e!2411233 () Bool)

(assert (=> b!3899923 (= e!2411234 e!2411233)))

(declare-fun res!1577704 () Bool)

(assert (=> b!3899923 (=> res!1577704 e!2411233)))

(assert (=> b!3899923 (= res!1577704 (= (h!46779 rules!2768) (rule!9336 (_1!23431 (v!39163 lt!1357935)))))))

(declare-fun b!3899924 () Bool)

(assert (=> b!3899924 (= e!2411233 (contains!8311 (t!319150 rules!2768) (rule!9336 (_1!23431 (v!39163 lt!1357935)))))))

(assert (= (and d!1155891 res!1577705) b!3899923))

(assert (= (and b!3899923 (not res!1577704)) b!3899924))

(assert (=> d!1155891 m!4458461))

(declare-fun m!4459919 () Bool)

(assert (=> d!1155891 m!4459919))

(declare-fun m!4459921 () Bool)

(assert (=> b!3899924 m!4459921))

(assert (=> d!1155125 d!1155891))

(declare-fun d!1155893 () Bool)

(declare-fun lt!1358597 () Int)

(assert (=> d!1155893 (>= lt!1358597 0)))

(declare-fun e!2411235 () Int)

(assert (=> d!1155893 (= lt!1358597 e!2411235)))

(declare-fun c!677995 () Bool)

(assert (=> d!1155893 (= c!677995 ((_ is Nil!41358) (_1!23432 lt!1358054)))))

(assert (=> d!1155893 (= (size!31052 (_1!23432 lt!1358054)) lt!1358597)))

(declare-fun b!3899925 () Bool)

(assert (=> b!3899925 (= e!2411235 0)))

(declare-fun b!3899926 () Bool)

(assert (=> b!3899926 (= e!2411235 (+ 1 (size!31052 (t!319149 (_1!23432 lt!1358054)))))))

(assert (= (and d!1155893 c!677995) b!3899925))

(assert (= (and d!1155893 (not c!677995)) b!3899926))

(declare-fun m!4459923 () Bool)

(assert (=> b!3899926 m!4459923))

(assert (=> d!1155087 d!1155893))

(declare-fun b!3899927 () Bool)

(declare-fun e!2411236 () Bool)

(declare-fun lt!1358602 () Option!8852)

(assert (=> b!3899927 (= e!2411236 (contains!8311 rules!2768 (rule!9336 (_1!23431 (get!13674 lt!1358602)))))))

(declare-fun b!3899928 () Bool)

(declare-fun e!2411238 () Option!8852)

(declare-fun lt!1358598 () Option!8852)

(declare-fun lt!1358601 () Option!8852)

(assert (=> b!3899928 (= e!2411238 (ite (and ((_ is None!8851) lt!1358598) ((_ is None!8851) lt!1358601)) None!8851 (ite ((_ is None!8851) lt!1358601) lt!1358598 (ite ((_ is None!8851) lt!1358598) lt!1358601 (ite (>= (size!31049 (_1!23431 (v!39163 lt!1358598))) (size!31049 (_1!23431 (v!39163 lt!1358601)))) lt!1358598 lt!1358601)))))))

(declare-fun call!283834 () Option!8852)

(assert (=> b!3899928 (= lt!1358598 call!283834)))

(assert (=> b!3899928 (= lt!1358601 (maxPrefix!3325 thiss!20629 (t!319150 rules!2768) (_2!23431 (v!39163 lt!1357935))))))

(declare-fun b!3899929 () Bool)

(declare-fun res!1577709 () Bool)

(assert (=> b!3899929 (=> (not res!1577709) (not e!2411236))))

(assert (=> b!3899929 (= res!1577709 (< (size!31050 (_2!23431 (get!13674 lt!1358602))) (size!31050 (_2!23431 (v!39163 lt!1357935)))))))

(declare-fun b!3899930 () Bool)

(declare-fun res!1577710 () Bool)

(assert (=> b!3899930 (=> (not res!1577710) (not e!2411236))))

(assert (=> b!3899930 (= res!1577710 (= (value!203946 (_1!23431 (get!13674 lt!1358602))) (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358602)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358602)))))))))

(declare-fun b!3899931 () Bool)

(assert (=> b!3899931 (= e!2411238 call!283834)))

(declare-fun b!3899932 () Bool)

(declare-fun res!1577706 () Bool)

(assert (=> b!3899932 (=> (not res!1577706) (not e!2411236))))

(assert (=> b!3899932 (= res!1577706 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358602)))) (_2!23431 (get!13674 lt!1358602))) (_2!23431 (v!39163 lt!1357935))))))

(declare-fun bm!283829 () Bool)

(assert (=> bm!283829 (= call!283834 (maxPrefixOneRule!2401 thiss!20629 (h!46779 rules!2768) (_2!23431 (v!39163 lt!1357935))))))

(declare-fun b!3899934 () Bool)

(declare-fun res!1577712 () Bool)

(assert (=> b!3899934 (=> (not res!1577712) (not e!2411236))))

(assert (=> b!3899934 (= res!1577712 (= (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358602)))) (originalCharacters!7032 (_1!23431 (get!13674 lt!1358602)))))))

(declare-fun b!3899935 () Bool)

(declare-fun res!1577711 () Bool)

(assert (=> b!3899935 (=> (not res!1577711) (not e!2411236))))

(assert (=> b!3899935 (= res!1577711 (matchR!5432 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358602)))) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358602))))))))

(declare-fun d!1155895 () Bool)

(declare-fun e!2411237 () Bool)

(assert (=> d!1155895 e!2411237))

(declare-fun res!1577708 () Bool)

(assert (=> d!1155895 (=> res!1577708 e!2411237)))

(assert (=> d!1155895 (= res!1577708 (isEmpty!24584 lt!1358602))))

(assert (=> d!1155895 (= lt!1358602 e!2411238)))

(declare-fun c!677996 () Bool)

(assert (=> d!1155895 (= c!677996 (and ((_ is Cons!41359) rules!2768) ((_ is Nil!41359) (t!319150 rules!2768))))))

(declare-fun lt!1358599 () Unit!59476)

(declare-fun lt!1358600 () Unit!59476)

(assert (=> d!1155895 (= lt!1358599 lt!1358600)))

(assert (=> d!1155895 (isPrefix!3527 (_2!23431 (v!39163 lt!1357935)) (_2!23431 (v!39163 lt!1357935)))))

(assert (=> d!1155895 (= lt!1358600 (lemmaIsPrefixRefl!2234 (_2!23431 (v!39163 lt!1357935)) (_2!23431 (v!39163 lt!1357935))))))

(assert (=> d!1155895 (rulesValidInductive!2304 thiss!20629 rules!2768)))

(assert (=> d!1155895 (= (maxPrefix!3325 thiss!20629 rules!2768 (_2!23431 (v!39163 lt!1357935))) lt!1358602)))

(declare-fun b!3899933 () Bool)

(assert (=> b!3899933 (= e!2411237 e!2411236)))

(declare-fun res!1577707 () Bool)

(assert (=> b!3899933 (=> (not res!1577707) (not e!2411236))))

(assert (=> b!3899933 (= res!1577707 (isDefined!6903 lt!1358602))))

(assert (= (and d!1155895 c!677996) b!3899931))

(assert (= (and d!1155895 (not c!677996)) b!3899928))

(assert (= (or b!3899931 b!3899928) bm!283829))

(assert (= (and d!1155895 (not res!1577708)) b!3899933))

(assert (= (and b!3899933 res!1577707) b!3899934))

(assert (= (and b!3899934 res!1577712) b!3899929))

(assert (= (and b!3899929 res!1577709) b!3899932))

(assert (= (and b!3899932 res!1577706) b!3899930))

(assert (= (and b!3899930 res!1577710) b!3899935))

(assert (= (and b!3899935 res!1577711) b!3899927))

(declare-fun m!4459925 () Bool)

(assert (=> d!1155895 m!4459925))

(declare-fun m!4459927 () Bool)

(assert (=> d!1155895 m!4459927))

(declare-fun m!4459929 () Bool)

(assert (=> d!1155895 m!4459929))

(assert (=> d!1155895 m!4457955))

(declare-fun m!4459931 () Bool)

(assert (=> bm!283829 m!4459931))

(declare-fun m!4459933 () Bool)

(assert (=> b!3899929 m!4459933))

(declare-fun m!4459935 () Bool)

(assert (=> b!3899929 m!4459935))

(assert (=> b!3899929 m!4457647))

(assert (=> b!3899935 m!4459933))

(declare-fun m!4459937 () Bool)

(assert (=> b!3899935 m!4459937))

(assert (=> b!3899935 m!4459937))

(declare-fun m!4459939 () Bool)

(assert (=> b!3899935 m!4459939))

(assert (=> b!3899935 m!4459939))

(declare-fun m!4459941 () Bool)

(assert (=> b!3899935 m!4459941))

(declare-fun m!4459943 () Bool)

(assert (=> b!3899933 m!4459943))

(declare-fun m!4459945 () Bool)

(assert (=> b!3899928 m!4459945))

(assert (=> b!3899930 m!4459933))

(declare-fun m!4459947 () Bool)

(assert (=> b!3899930 m!4459947))

(assert (=> b!3899930 m!4459947))

(declare-fun m!4459949 () Bool)

(assert (=> b!3899930 m!4459949))

(assert (=> b!3899927 m!4459933))

(declare-fun m!4459951 () Bool)

(assert (=> b!3899927 m!4459951))

(assert (=> b!3899934 m!4459933))

(assert (=> b!3899934 m!4459937))

(assert (=> b!3899934 m!4459937))

(assert (=> b!3899934 m!4459939))

(assert (=> b!3899932 m!4459933))

(assert (=> b!3899932 m!4459937))

(assert (=> b!3899932 m!4459937))

(assert (=> b!3899932 m!4459939))

(assert (=> b!3899932 m!4459939))

(declare-fun m!4459953 () Bool)

(assert (=> b!3899932 m!4459953))

(assert (=> d!1155087 d!1155895))

(declare-fun d!1155897 () Bool)

(assert (=> d!1155897 (and (= lt!1357938 prefix!426) (= (_2!23431 (v!39163 lt!1357935)) suffix!1176))))

(assert (=> d!1155897 true))

(declare-fun _$50!352 () Unit!59476)

(assert (=> d!1155897 (= (choose!23066 lt!1357938 (_2!23431 (v!39163 lt!1357935)) prefix!426 suffix!1176) _$50!352)))

(assert (=> d!1155169 d!1155897))

(assert (=> d!1155169 d!1155109))

(assert (=> d!1155169 d!1155197))

(declare-fun b!3899936 () Bool)

(declare-fun e!2411240 () List!41481)

(assert (=> b!3899936 (= e!2411240 (_2!23431 (get!13674 lt!1358123)))))

(declare-fun b!3899937 () Bool)

(assert (=> b!3899937 (= e!2411240 (Cons!41357 (h!46777 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123))))) (++!10621 (t!319148 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123))))) (_2!23431 (get!13674 lt!1358123)))))))

(declare-fun d!1155899 () Bool)

(declare-fun e!2411239 () Bool)

(assert (=> d!1155899 e!2411239))

(declare-fun res!1577714 () Bool)

(assert (=> d!1155899 (=> (not res!1577714) (not e!2411239))))

(declare-fun lt!1358603 () List!41481)

(assert (=> d!1155899 (= res!1577714 (= (content!6186 lt!1358603) ((_ map or) (content!6186 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123))))) (content!6186 (_2!23431 (get!13674 lt!1358123))))))))

(assert (=> d!1155899 (= lt!1358603 e!2411240)))

(declare-fun c!677997 () Bool)

(assert (=> d!1155899 (= c!677997 ((_ is Nil!41357) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123))))))))

(assert (=> d!1155899 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123)))) (_2!23431 (get!13674 lt!1358123))) lt!1358603)))

(declare-fun b!3899938 () Bool)

(declare-fun res!1577713 () Bool)

(assert (=> b!3899938 (=> (not res!1577713) (not e!2411239))))

(assert (=> b!3899938 (= res!1577713 (= (size!31050 lt!1358603) (+ (size!31050 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123))))) (size!31050 (_2!23431 (get!13674 lt!1358123))))))))

(declare-fun b!3899939 () Bool)

(assert (=> b!3899939 (= e!2411239 (or (not (= (_2!23431 (get!13674 lt!1358123)) Nil!41357)) (= lt!1358603 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358123)))))))))

(assert (= (and d!1155899 c!677997) b!3899936))

(assert (= (and d!1155899 (not c!677997)) b!3899937))

(assert (= (and d!1155899 res!1577714) b!3899938))

(assert (= (and b!3899938 res!1577713) b!3899939))

(declare-fun m!4459955 () Bool)

(assert (=> b!3899937 m!4459955))

(declare-fun m!4459957 () Bool)

(assert (=> d!1155899 m!4459957))

(assert (=> d!1155899 m!4457903))

(declare-fun m!4459959 () Bool)

(assert (=> d!1155899 m!4459959))

(declare-fun m!4459961 () Bool)

(assert (=> d!1155899 m!4459961))

(declare-fun m!4459963 () Bool)

(assert (=> b!3899938 m!4459963))

(assert (=> b!3899938 m!4457903))

(declare-fun m!4459965 () Bool)

(assert (=> b!3899938 m!4459965))

(assert (=> b!3899938 m!4457917))

(assert (=> b!3898665 d!1155899))

(assert (=> b!3898665 d!1155313))

(assert (=> b!3898665 d!1155315))

(assert (=> b!3898665 d!1155323))

(declare-fun d!1155901 () Bool)

(assert (=> d!1155901 (= (list!15370 lt!1358063) (list!15371 (c!677655 lt!1358063)))))

(declare-fun bs!584907 () Bool)

(assert (= bs!584907 d!1155901))

(declare-fun m!4459967 () Bool)

(assert (=> bs!584907 m!4459967))

(assert (=> d!1155099 d!1155901))

(declare-fun b!3899940 () Bool)

(declare-fun e!2411241 () Bool)

(declare-fun lt!1358605 () tuple2!40596)

(assert (=> b!3899940 (= e!2411241 (not (isEmpty!24581 (_1!23432 lt!1358605))))))

(declare-fun b!3899941 () Bool)

(declare-fun e!2411243 () Bool)

(assert (=> b!3899941 (= e!2411243 e!2411241)))

(declare-fun res!1577715 () Bool)

(assert (=> b!3899941 (= res!1577715 (< (size!31050 (_2!23432 lt!1358605)) (size!31050 (_2!23431 (v!39163 lt!1358155)))))))

(assert (=> b!3899941 (=> (not res!1577715) (not e!2411241))))

(declare-fun b!3899942 () Bool)

(declare-fun e!2411242 () tuple2!40596)

(assert (=> b!3899942 (= e!2411242 (tuple2!40597 Nil!41358 (_2!23431 (v!39163 lt!1358155))))))

(declare-fun b!3899943 () Bool)

(assert (=> b!3899943 (= e!2411243 (= (_2!23432 lt!1358605) (_2!23431 (v!39163 lt!1358155))))))

(declare-fun d!1155903 () Bool)

(assert (=> d!1155903 e!2411243))

(declare-fun c!677998 () Bool)

(assert (=> d!1155903 (= c!677998 (> (size!31052 (_1!23432 lt!1358605)) 0))))

(assert (=> d!1155903 (= lt!1358605 e!2411242)))

(declare-fun c!677999 () Bool)

(declare-fun lt!1358604 () Option!8852)

(assert (=> d!1155903 (= c!677999 ((_ is Some!8851) lt!1358604))))

(assert (=> d!1155903 (= lt!1358604 (maxPrefix!3325 thiss!20629 rules!2768 (_2!23431 (v!39163 lt!1358155))))))

(assert (=> d!1155903 (= (lexList!1789 thiss!20629 rules!2768 (_2!23431 (v!39163 lt!1358155))) lt!1358605)))

(declare-fun b!3899944 () Bool)

(declare-fun lt!1358606 () tuple2!40596)

(assert (=> b!3899944 (= e!2411242 (tuple2!40597 (Cons!41358 (_1!23431 (v!39163 lt!1358604)) (_1!23432 lt!1358606)) (_2!23432 lt!1358606)))))

(assert (=> b!3899944 (= lt!1358606 (lexList!1789 thiss!20629 rules!2768 (_2!23431 (v!39163 lt!1358604))))))

(assert (= (and d!1155903 c!677999) b!3899944))

(assert (= (and d!1155903 (not c!677999)) b!3899942))

(assert (= (and d!1155903 c!677998) b!3899941))

(assert (= (and d!1155903 (not c!677998)) b!3899943))

(assert (= (and b!3899941 res!1577715) b!3899940))

(declare-fun m!4459969 () Bool)

(assert (=> b!3899940 m!4459969))

(declare-fun m!4459971 () Bool)

(assert (=> b!3899941 m!4459971))

(declare-fun m!4459973 () Bool)

(assert (=> b!3899941 m!4459973))

(declare-fun m!4459975 () Bool)

(assert (=> d!1155903 m!4459975))

(declare-fun m!4459977 () Bool)

(assert (=> d!1155903 m!4459977))

(declare-fun m!4459979 () Bool)

(assert (=> b!3899944 m!4459979))

(assert (=> b!3898756 d!1155903))

(declare-fun d!1155905 () Bool)

(declare-fun res!1577720 () Bool)

(declare-fun e!2411248 () Bool)

(assert (=> d!1155905 (=> res!1577720 e!2411248)))

(assert (=> d!1155905 (= res!1577720 ((_ is Nil!41359) rules!2768))))

(assert (=> d!1155905 (= (noDuplicateTag!2491 thiss!20629 rules!2768 Nil!41361) e!2411248)))

(declare-fun b!3899949 () Bool)

(declare-fun e!2411249 () Bool)

(assert (=> b!3899949 (= e!2411248 e!2411249)))

(declare-fun res!1577721 () Bool)

(assert (=> b!3899949 (=> (not res!1577721) (not e!2411249))))

(declare-fun contains!8313 (List!41485 String!47028) Bool)

(assert (=> b!3899949 (= res!1577721 (not (contains!8313 Nil!41361 (tag!7292 (h!46779 rules!2768)))))))

(declare-fun b!3899950 () Bool)

(assert (=> b!3899950 (= e!2411249 (noDuplicateTag!2491 thiss!20629 (t!319150 rules!2768) (Cons!41361 (tag!7292 (h!46779 rules!2768)) Nil!41361)))))

(assert (= (and d!1155905 (not res!1577720)) b!3899949))

(assert (= (and b!3899949 res!1577721) b!3899950))

(declare-fun m!4459981 () Bool)

(assert (=> b!3899949 m!4459981))

(declare-fun m!4459983 () Bool)

(assert (=> b!3899950 m!4459983))

(assert (=> b!3898463 d!1155905))

(declare-fun d!1155907 () Bool)

(declare-fun lt!1358607 () Int)

(assert (=> d!1155907 (>= lt!1358607 0)))

(declare-fun e!2411250 () Int)

(assert (=> d!1155907 (= lt!1358607 e!2411250)))

(declare-fun c!678000 () Bool)

(assert (=> d!1155907 (= c!678000 ((_ is Nil!41357) (t!319148 lt!1357938)))))

(assert (=> d!1155907 (= (size!31050 (t!319148 lt!1357938)) lt!1358607)))

(declare-fun b!3899951 () Bool)

(assert (=> b!3899951 (= e!2411250 0)))

(declare-fun b!3899952 () Bool)

(assert (=> b!3899952 (= e!2411250 (+ 1 (size!31050 (t!319148 (t!319148 lt!1357938)))))))

(assert (= (and d!1155907 c!678000) b!3899951))

(assert (= (and d!1155907 (not c!678000)) b!3899952))

(declare-fun m!4459985 () Bool)

(assert (=> b!3899952 m!4459985))

(assert (=> b!3898498 d!1155907))

(declare-fun bs!584908 () Bool)

(declare-fun d!1155909 () Bool)

(assert (= bs!584908 (and d!1155909 d!1155763)))

(declare-fun lambda!126408 () Int)

(assert (=> bs!584908 (= lambda!126408 lambda!126401)))

(declare-fun bs!584909 () Bool)

(assert (= bs!584909 (and d!1155909 d!1155799)))

(assert (=> bs!584909 (= (and (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) (= (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))))) (= lambda!126408 lambda!126404))))

(declare-fun bs!584910 () Bool)

(assert (= bs!584910 (and d!1155909 d!1155815)))

(assert (=> bs!584910 (= (and (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) (= (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) (= lambda!126408 lambda!126406))))

(assert (=> d!1155909 true))

(assert (=> d!1155909 (< (dynLambda!17762 order!22237 (toChars!8727 (transformation!6432 (h!46779 rules!2768)))) (dynLambda!17761 order!22235 lambda!126408))))

(assert (=> d!1155909 true))

(assert (=> d!1155909 (< (dynLambda!17759 order!22231 (toValue!8868 (transformation!6432 (h!46779 rules!2768)))) (dynLambda!17761 order!22235 lambda!126408))))

(assert (=> d!1155909 (= (semiInverseModEq!2755 (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toValue!8868 (transformation!6432 (h!46779 rules!2768)))) (Forall!1442 lambda!126408))))

(declare-fun bs!584911 () Bool)

(assert (= bs!584911 d!1155909))

(declare-fun m!4459987 () Bool)

(assert (=> bs!584911 m!4459987))

(assert (=> d!1155015 d!1155909))

(declare-fun b!3899953 () Bool)

(declare-fun res!1577727 () Bool)

(declare-fun e!2411255 () Bool)

(assert (=> b!3899953 (=> res!1577727 e!2411255)))

(assert (=> b!3899953 (= res!1577727 (not (isEmpty!24580 (tail!5963 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130))))))))))

(declare-fun b!3899954 () Bool)

(assert (=> b!3899954 (= e!2411255 (not (= (head!8246 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130))))) (c!677654 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130))))))))))

(declare-fun b!3899955 () Bool)

(declare-fun res!1577722 () Bool)

(declare-fun e!2411252 () Bool)

(assert (=> b!3899955 (=> res!1577722 e!2411252)))

(declare-fun e!2411257 () Bool)

(assert (=> b!3899955 (= res!1577722 e!2411257)))

(declare-fun res!1577725 () Bool)

(assert (=> b!3899955 (=> (not res!1577725) (not e!2411257))))

(declare-fun lt!1358608 () Bool)

(assert (=> b!3899955 (= res!1577725 lt!1358608)))

(declare-fun b!3899956 () Bool)

(declare-fun res!1577726 () Bool)

(assert (=> b!3899956 (=> res!1577726 e!2411252)))

(assert (=> b!3899956 (= res!1577726 (not ((_ is ElementMatch!11337) (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))))))

(declare-fun e!2411253 () Bool)

(assert (=> b!3899956 (= e!2411253 e!2411252)))

(declare-fun b!3899957 () Bool)

(declare-fun e!2411251 () Bool)

(assert (=> b!3899957 (= e!2411252 e!2411251)))

(declare-fun res!1577724 () Bool)

(assert (=> b!3899957 (=> (not res!1577724) (not e!2411251))))

(assert (=> b!3899957 (= res!1577724 (not lt!1358608))))

(declare-fun b!3899958 () Bool)

(declare-fun e!2411254 () Bool)

(assert (=> b!3899958 (= e!2411254 e!2411253)))

(declare-fun c!678001 () Bool)

(assert (=> b!3899958 (= c!678001 ((_ is EmptyLang!11337) (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130))))))))

(declare-fun b!3899959 () Bool)

(declare-fun res!1577723 () Bool)

(assert (=> b!3899959 (=> (not res!1577723) (not e!2411257))))

(assert (=> b!3899959 (= res!1577723 (isEmpty!24580 (tail!5963 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130)))))))))

(declare-fun b!3899960 () Bool)

(declare-fun call!283835 () Bool)

(assert (=> b!3899960 (= e!2411254 (= lt!1358608 call!283835))))

(declare-fun b!3899961 () Bool)

(assert (=> b!3899961 (= e!2411257 (= (head!8246 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130))))) (c!677654 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))))))

(declare-fun bm!283830 () Bool)

(assert (=> bm!283830 (= call!283835 (isEmpty!24580 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130))))))))

(declare-fun b!3899962 () Bool)

(declare-fun e!2411256 () Bool)

(assert (=> b!3899962 (= e!2411256 (matchR!5432 (derivativeStep!3430 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))) (head!8246 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130)))))) (tail!5963 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130)))))))))

(declare-fun b!3899963 () Bool)

(declare-fun res!1577729 () Bool)

(assert (=> b!3899963 (=> (not res!1577729) (not e!2411257))))

(assert (=> b!3899963 (= res!1577729 (not call!283835))))

(declare-fun b!3899964 () Bool)

(assert (=> b!3899964 (= e!2411253 (not lt!1358608))))

(declare-fun b!3899965 () Bool)

(assert (=> b!3899965 (= e!2411251 e!2411255)))

(declare-fun res!1577728 () Bool)

(assert (=> b!3899965 (=> res!1577728 e!2411255)))

(assert (=> b!3899965 (= res!1577728 call!283835)))

(declare-fun d!1155911 () Bool)

(assert (=> d!1155911 e!2411254))

(declare-fun c!678002 () Bool)

(assert (=> d!1155911 (= c!678002 ((_ is EmptyExpr!11337) (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130))))))))

(assert (=> d!1155911 (= lt!1358608 e!2411256)))

(declare-fun c!678003 () Bool)

(assert (=> d!1155911 (= c!678003 (isEmpty!24580 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130))))))))

(assert (=> d!1155911 (validRegex!5153 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))))

(assert (=> d!1155911 (= (matchR!5432 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358130))))) lt!1358608)))

(declare-fun b!3899966 () Bool)

(assert (=> b!3899966 (= e!2411256 (nullable!3954 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130))))))))

(assert (= (and d!1155911 c!678003) b!3899966))

(assert (= (and d!1155911 (not c!678003)) b!3899962))

(assert (= (and d!1155911 c!678002) b!3899960))

(assert (= (and d!1155911 (not c!678002)) b!3899958))

(assert (= (and b!3899958 c!678001) b!3899964))

(assert (= (and b!3899958 (not c!678001)) b!3899956))

(assert (= (and b!3899956 (not res!1577726)) b!3899955))

(assert (= (and b!3899955 res!1577725) b!3899963))

(assert (= (and b!3899963 res!1577729) b!3899959))

(assert (= (and b!3899959 res!1577723) b!3899961))

(assert (= (and b!3899955 (not res!1577722)) b!3899957))

(assert (= (and b!3899957 res!1577724) b!3899965))

(assert (= (and b!3899965 (not res!1577728)) b!3899953))

(assert (= (and b!3899953 (not res!1577727)) b!3899954))

(assert (= (or b!3899960 b!3899965 b!3899963) bm!283830))

(assert (=> d!1155911 m!4457963))

(declare-fun m!4459989 () Bool)

(assert (=> d!1155911 m!4459989))

(declare-fun m!4459991 () Bool)

(assert (=> d!1155911 m!4459991))

(declare-fun m!4459993 () Bool)

(assert (=> b!3899966 m!4459993))

(assert (=> b!3899953 m!4457963))

(declare-fun m!4459995 () Bool)

(assert (=> b!3899953 m!4459995))

(assert (=> b!3899953 m!4459995))

(declare-fun m!4459997 () Bool)

(assert (=> b!3899953 m!4459997))

(assert (=> b!3899959 m!4457963))

(assert (=> b!3899959 m!4459995))

(assert (=> b!3899959 m!4459995))

(assert (=> b!3899959 m!4459997))

(assert (=> bm!283830 m!4457963))

(assert (=> bm!283830 m!4459989))

(assert (=> b!3899961 m!4457963))

(declare-fun m!4459999 () Bool)

(assert (=> b!3899961 m!4459999))

(assert (=> b!3899962 m!4457963))

(assert (=> b!3899962 m!4459999))

(assert (=> b!3899962 m!4459999))

(declare-fun m!4460001 () Bool)

(assert (=> b!3899962 m!4460001))

(assert (=> b!3899962 m!4457963))

(assert (=> b!3899962 m!4459995))

(assert (=> b!3899962 m!4460001))

(assert (=> b!3899962 m!4459995))

(declare-fun m!4460003 () Bool)

(assert (=> b!3899962 m!4460003))

(assert (=> b!3899954 m!4457963))

(assert (=> b!3899954 m!4459999))

(assert (=> b!3898689 d!1155911))

(assert (=> b!3898689 d!1155231))

(assert (=> b!3898689 d!1155571))

(assert (=> b!3898689 d!1155573))

(declare-fun d!1155913 () Bool)

(assert (=> d!1155913 (= (inv!17 (value!203946 (h!46778 prefixTokens!80))) (= (charsToBigInt!1 (text!47082 (value!203946 (h!46778 prefixTokens!80)))) (value!203938 (value!203946 (h!46778 prefixTokens!80)))))))

(declare-fun bs!584912 () Bool)

(assert (= bs!584912 d!1155913))

(declare-fun m!4460005 () Bool)

(assert (=> bs!584912 m!4460005))

(assert (=> b!3898769 d!1155913))

(declare-fun d!1155915 () Bool)

(declare-fun c!678005 () Bool)

(assert (=> d!1155915 (= c!678005 ((_ is IntegerValue!19986) (value!203946 (h!46778 (t!319149 prefixTokens!80)))))))

(declare-fun e!2411260 () Bool)

(assert (=> d!1155915 (= (inv!21 (value!203946 (h!46778 (t!319149 prefixTokens!80)))) e!2411260)))

(declare-fun b!3899967 () Bool)

(assert (=> b!3899967 (= e!2411260 (inv!16 (value!203946 (h!46778 (t!319149 prefixTokens!80)))))))

(declare-fun b!3899968 () Bool)

(declare-fun e!2411258 () Bool)

(assert (=> b!3899968 (= e!2411260 e!2411258)))

(declare-fun c!678004 () Bool)

(assert (=> b!3899968 (= c!678004 ((_ is IntegerValue!19987) (value!203946 (h!46778 (t!319149 prefixTokens!80)))))))

(declare-fun b!3899969 () Bool)

(declare-fun e!2411259 () Bool)

(assert (=> b!3899969 (= e!2411259 (inv!15 (value!203946 (h!46778 (t!319149 prefixTokens!80)))))))

(declare-fun b!3899970 () Bool)

(declare-fun res!1577730 () Bool)

(assert (=> b!3899970 (=> res!1577730 e!2411259)))

(assert (=> b!3899970 (= res!1577730 (not ((_ is IntegerValue!19988) (value!203946 (h!46778 (t!319149 prefixTokens!80))))))))

(assert (=> b!3899970 (= e!2411258 e!2411259)))

(declare-fun b!3899971 () Bool)

(assert (=> b!3899971 (= e!2411258 (inv!17 (value!203946 (h!46778 (t!319149 prefixTokens!80)))))))

(assert (= (and d!1155915 c!678005) b!3899967))

(assert (= (and d!1155915 (not c!678005)) b!3899968))

(assert (= (and b!3899968 c!678004) b!3899971))

(assert (= (and b!3899968 (not c!678004)) b!3899970))

(assert (= (and b!3899970 (not res!1577730)) b!3899969))

(declare-fun m!4460007 () Bool)

(assert (=> b!3899967 m!4460007))

(declare-fun m!4460009 () Bool)

(assert (=> b!3899969 m!4460009))

(declare-fun m!4460011 () Bool)

(assert (=> b!3899971 m!4460011))

(assert (=> b!3898825 d!1155915))

(declare-fun b!3899972 () Bool)

(declare-fun res!1577736 () Bool)

(declare-fun e!2411265 () Bool)

(assert (=> b!3899972 (=> res!1577736 e!2411265)))

(assert (=> b!3899972 (= res!1577736 (not (isEmpty!24580 (tail!5963 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151))))))))))

(declare-fun b!3899973 () Bool)

(assert (=> b!3899973 (= e!2411265 (not (= (head!8246 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151))))) (c!677654 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151))))))))))

(declare-fun b!3899974 () Bool)

(declare-fun res!1577731 () Bool)

(declare-fun e!2411262 () Bool)

(assert (=> b!3899974 (=> res!1577731 e!2411262)))

(declare-fun e!2411267 () Bool)

(assert (=> b!3899974 (= res!1577731 e!2411267)))

(declare-fun res!1577734 () Bool)

(assert (=> b!3899974 (=> (not res!1577734) (not e!2411267))))

(declare-fun lt!1358609 () Bool)

(assert (=> b!3899974 (= res!1577734 lt!1358609)))

(declare-fun b!3899975 () Bool)

(declare-fun res!1577735 () Bool)

(assert (=> b!3899975 (=> res!1577735 e!2411262)))

(assert (=> b!3899975 (= res!1577735 (not ((_ is ElementMatch!11337) (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))))))

(declare-fun e!2411263 () Bool)

(assert (=> b!3899975 (= e!2411263 e!2411262)))

(declare-fun b!3899976 () Bool)

(declare-fun e!2411261 () Bool)

(assert (=> b!3899976 (= e!2411262 e!2411261)))

(declare-fun res!1577733 () Bool)

(assert (=> b!3899976 (=> (not res!1577733) (not e!2411261))))

(assert (=> b!3899976 (= res!1577733 (not lt!1358609))))

(declare-fun b!3899977 () Bool)

(declare-fun e!2411264 () Bool)

(assert (=> b!3899977 (= e!2411264 e!2411263)))

(declare-fun c!678006 () Bool)

(assert (=> b!3899977 (= c!678006 ((_ is EmptyLang!11337) (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151))))))))

(declare-fun b!3899978 () Bool)

(declare-fun res!1577732 () Bool)

(assert (=> b!3899978 (=> (not res!1577732) (not e!2411267))))

(assert (=> b!3899978 (= res!1577732 (isEmpty!24580 (tail!5963 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151)))))))))

(declare-fun b!3899979 () Bool)

(declare-fun call!283836 () Bool)

(assert (=> b!3899979 (= e!2411264 (= lt!1358609 call!283836))))

(declare-fun b!3899980 () Bool)

(assert (=> b!3899980 (= e!2411267 (= (head!8246 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151))))) (c!677654 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))))))

(declare-fun bm!283831 () Bool)

(assert (=> bm!283831 (= call!283836 (isEmpty!24580 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151))))))))

(declare-fun b!3899981 () Bool)

(declare-fun e!2411266 () Bool)

(assert (=> b!3899981 (= e!2411266 (matchR!5432 (derivativeStep!3430 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))) (head!8246 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151)))))) (tail!5963 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151)))))))))

(declare-fun b!3899982 () Bool)

(declare-fun res!1577738 () Bool)

(assert (=> b!3899982 (=> (not res!1577738) (not e!2411267))))

(assert (=> b!3899982 (= res!1577738 (not call!283836))))

(declare-fun b!3899983 () Bool)

(assert (=> b!3899983 (= e!2411263 (not lt!1358609))))

(declare-fun b!3899984 () Bool)

(assert (=> b!3899984 (= e!2411261 e!2411265)))

(declare-fun res!1577737 () Bool)

(assert (=> b!3899984 (=> res!1577737 e!2411265)))

(assert (=> b!3899984 (= res!1577737 call!283836)))

(declare-fun d!1155917 () Bool)

(assert (=> d!1155917 e!2411264))

(declare-fun c!678007 () Bool)

(assert (=> d!1155917 (= c!678007 ((_ is EmptyExpr!11337) (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151))))))))

(assert (=> d!1155917 (= lt!1358609 e!2411266)))

(declare-fun c!678008 () Bool)

(assert (=> d!1155917 (= c!678008 (isEmpty!24580 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151))))))))

(assert (=> d!1155917 (validRegex!5153 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))))

(assert (=> d!1155917 (= (matchR!5432 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151))))) lt!1358609)))

(declare-fun b!3899985 () Bool)

(assert (=> b!3899985 (= e!2411266 (nullable!3954 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151))))))))

(assert (= (and d!1155917 c!678008) b!3899985))

(assert (= (and d!1155917 (not c!678008)) b!3899981))

(assert (= (and d!1155917 c!678007) b!3899979))

(assert (= (and d!1155917 (not c!678007)) b!3899977))

(assert (= (and b!3899977 c!678006) b!3899983))

(assert (= (and b!3899977 (not c!678006)) b!3899975))

(assert (= (and b!3899975 (not res!1577735)) b!3899974))

(assert (= (and b!3899974 res!1577734) b!3899982))

(assert (= (and b!3899982 res!1577738) b!3899978))

(assert (= (and b!3899978 res!1577732) b!3899980))

(assert (= (and b!3899974 (not res!1577731)) b!3899976))

(assert (= (and b!3899976 res!1577733) b!3899984))

(assert (= (and b!3899984 (not res!1577737)) b!3899972))

(assert (= (and b!3899972 (not res!1577736)) b!3899973))

(assert (= (or b!3899979 b!3899984 b!3899982) bm!283831))

(assert (=> d!1155917 m!4458067))

(declare-fun m!4460013 () Bool)

(assert (=> d!1155917 m!4460013))

(declare-fun m!4460015 () Bool)

(assert (=> d!1155917 m!4460015))

(declare-fun m!4460017 () Bool)

(assert (=> b!3899985 m!4460017))

(assert (=> b!3899972 m!4458067))

(declare-fun m!4460019 () Bool)

(assert (=> b!3899972 m!4460019))

(assert (=> b!3899972 m!4460019))

(declare-fun m!4460021 () Bool)

(assert (=> b!3899972 m!4460021))

(assert (=> b!3899978 m!4458067))

(assert (=> b!3899978 m!4460019))

(assert (=> b!3899978 m!4460019))

(assert (=> b!3899978 m!4460021))

(assert (=> bm!283831 m!4458067))

(assert (=> bm!283831 m!4460013))

(assert (=> b!3899980 m!4458067))

(declare-fun m!4460023 () Bool)

(assert (=> b!3899980 m!4460023))

(assert (=> b!3899981 m!4458067))

(assert (=> b!3899981 m!4460023))

(assert (=> b!3899981 m!4460023))

(declare-fun m!4460025 () Bool)

(assert (=> b!3899981 m!4460025))

(assert (=> b!3899981 m!4458067))

(assert (=> b!3899981 m!4460019))

(assert (=> b!3899981 m!4460025))

(assert (=> b!3899981 m!4460019))

(declare-fun m!4460027 () Bool)

(assert (=> b!3899981 m!4460027))

(assert (=> b!3899973 m!4458067))

(assert (=> b!3899973 m!4460023))

(assert (=> b!3898743 d!1155917))

(assert (=> b!3898743 d!1155239))

(assert (=> b!3898743 d!1155235))

(assert (=> b!3898743 d!1155237))

(declare-fun d!1155919 () Bool)

(declare-fun lt!1358610 () Int)

(assert (=> d!1155919 (>= lt!1358610 0)))

(declare-fun e!2411268 () Int)

(assert (=> d!1155919 (= lt!1358610 e!2411268)))

(declare-fun c!678009 () Bool)

(assert (=> d!1155919 (= c!678009 ((_ is Nil!41357) lt!1358080))))

(assert (=> d!1155919 (= (size!31050 lt!1358080) lt!1358610)))

(declare-fun b!3899986 () Bool)

(assert (=> b!3899986 (= e!2411268 0)))

(declare-fun b!3899987 () Bool)

(assert (=> b!3899987 (= e!2411268 (+ 1 (size!31050 (t!319148 lt!1358080))))))

(assert (= (and d!1155919 c!678009) b!3899986))

(assert (= (and d!1155919 (not c!678009)) b!3899987))

(declare-fun m!4460029 () Bool)

(assert (=> b!3899987 m!4460029))

(assert (=> b!3898531 d!1155919))

(assert (=> b!3898531 d!1155097))

(declare-fun d!1155921 () Bool)

(declare-fun lt!1358611 () Int)

(assert (=> d!1155921 (>= lt!1358611 0)))

(declare-fun e!2411269 () Int)

(assert (=> d!1155921 (= lt!1358611 e!2411269)))

(declare-fun c!678010 () Bool)

(assert (=> d!1155921 (= c!678010 ((_ is Nil!41357) (_2!23431 (v!39163 lt!1357935))))))

(assert (=> d!1155921 (= (size!31050 (_2!23431 (v!39163 lt!1357935))) lt!1358611)))

(declare-fun b!3899988 () Bool)

(assert (=> b!3899988 (= e!2411269 0)))

(declare-fun b!3899989 () Bool)

(assert (=> b!3899989 (= e!2411269 (+ 1 (size!31050 (t!319148 (_2!23431 (v!39163 lt!1357935))))))))

(assert (= (and d!1155921 c!678010) b!3899988))

(assert (= (and d!1155921 (not c!678010)) b!3899989))

(declare-fun m!4460031 () Bool)

(assert (=> b!3899989 m!4460031))

(assert (=> b!3898531 d!1155921))

(declare-fun b!3899990 () Bool)

(declare-fun e!2411271 () List!41482)

(assert (=> b!3899990 (= e!2411271 (_1!23432 lt!1357936))))

(declare-fun d!1155923 () Bool)

(declare-fun e!2411270 () Bool)

(assert (=> d!1155923 e!2411270))

(declare-fun res!1577739 () Bool)

(assert (=> d!1155923 (=> (not res!1577739) (not e!2411270))))

(declare-fun lt!1358612 () List!41482)

(assert (=> d!1155923 (= res!1577739 (= (content!6187 lt!1358612) ((_ map or) (content!6187 (t!319149 lt!1357949)) (content!6187 (_1!23432 lt!1357936)))))))

(assert (=> d!1155923 (= lt!1358612 e!2411271)))

(declare-fun c!678011 () Bool)

(assert (=> d!1155923 (= c!678011 ((_ is Nil!41358) (t!319149 lt!1357949)))))

(assert (=> d!1155923 (= (++!10622 (t!319149 lt!1357949) (_1!23432 lt!1357936)) lt!1358612)))

(declare-fun b!3899991 () Bool)

(assert (=> b!3899991 (= e!2411271 (Cons!41358 (h!46778 (t!319149 lt!1357949)) (++!10622 (t!319149 (t!319149 lt!1357949)) (_1!23432 lt!1357936))))))

(declare-fun b!3899992 () Bool)

(declare-fun res!1577740 () Bool)

(assert (=> b!3899992 (=> (not res!1577740) (not e!2411270))))

(assert (=> b!3899992 (= res!1577740 (= (size!31052 lt!1358612) (+ (size!31052 (t!319149 lt!1357949)) (size!31052 (_1!23432 lt!1357936)))))))

(declare-fun b!3899993 () Bool)

(assert (=> b!3899993 (= e!2411270 (or (not (= (_1!23432 lt!1357936) Nil!41358)) (= lt!1358612 (t!319149 lt!1357949))))))

(assert (= (and d!1155923 c!678011) b!3899990))

(assert (= (and d!1155923 (not c!678011)) b!3899991))

(assert (= (and d!1155923 res!1577739) b!3899992))

(assert (= (and b!3899992 res!1577740) b!3899993))

(declare-fun m!4460033 () Bool)

(assert (=> d!1155923 m!4460033))

(assert (=> d!1155923 m!4459905))

(assert (=> d!1155923 m!4457999))

(declare-fun m!4460035 () Bool)

(assert (=> b!3899991 m!4460035))

(declare-fun m!4460037 () Bool)

(assert (=> b!3899992 m!4460037))

(assert (=> b!3899992 m!4459765))

(assert (=> b!3899992 m!4458007))

(assert (=> b!3898719 d!1155923))

(declare-fun d!1155925 () Bool)

(assert (=> d!1155925 (= (inv!55525 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72)))) (isBalanced!3632 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72))))))))

(declare-fun bs!584913 () Bool)

(assert (= bs!584913 d!1155925))

(declare-fun m!4460039 () Bool)

(assert (=> bs!584913 m!4460039))

(assert (=> tb!229043 d!1155925))

(declare-fun bs!584914 () Bool)

(declare-fun d!1155927 () Bool)

(assert (= bs!584914 (and d!1155927 d!1155325)))

(declare-fun lambda!126409 () Int)

(assert (=> bs!584914 (= (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) (= lambda!126409 lambda!126386))))

(declare-fun bs!584915 () Bool)

(assert (= bs!584915 (and d!1155927 d!1155611)))

(assert (=> bs!584915 (= (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) (= lambda!126409 lambda!126391))))

(declare-fun bs!584916 () Bool)

(assert (= bs!584916 (and d!1155927 d!1155867)))

(assert (=> bs!584916 (= (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (h!46779 rules!2768)))) (= lambda!126409 lambda!126407))))

(assert (=> d!1155927 true))

(assert (=> d!1155927 (< (dynLambda!17759 order!22231 (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) (dynLambda!17760 order!22233 lambda!126409))))

(assert (=> d!1155927 (= (equivClasses!2654 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) (Forall2!1040 lambda!126409))))

(declare-fun bs!584917 () Bool)

(assert (= bs!584917 d!1155927))

(declare-fun m!4460041 () Bool)

(assert (=> bs!584917 m!4460041))

(assert (=> b!3898709 d!1155927))

(declare-fun d!1155929 () Bool)

(declare-fun c!678012 () Bool)

(assert (=> d!1155929 (= c!678012 ((_ is Nil!41357) lt!1358080))))

(declare-fun e!2411272 () (InoxSet C!22860))

(assert (=> d!1155929 (= (content!6186 lt!1358080) e!2411272)))

(declare-fun b!3899994 () Bool)

(assert (=> b!3899994 (= e!2411272 ((as const (Array C!22860 Bool)) false))))

(declare-fun b!3899995 () Bool)

(assert (=> b!3899995 (= e!2411272 ((_ map or) (store ((as const (Array C!22860 Bool)) false) (h!46777 lt!1358080) true) (content!6186 (t!319148 lt!1358080))))))

(assert (= (and d!1155929 c!678012) b!3899994))

(assert (= (and d!1155929 (not c!678012)) b!3899995))

(declare-fun m!4460043 () Bool)

(assert (=> b!3899995 m!4460043))

(declare-fun m!4460045 () Bool)

(assert (=> b!3899995 m!4460045))

(assert (=> d!1155109 d!1155929))

(declare-fun d!1155931 () Bool)

(declare-fun c!678013 () Bool)

(assert (=> d!1155931 (= c!678013 ((_ is Nil!41357) lt!1357938))))

(declare-fun e!2411273 () (InoxSet C!22860))

(assert (=> d!1155931 (= (content!6186 lt!1357938) e!2411273)))

(declare-fun b!3899996 () Bool)

(assert (=> b!3899996 (= e!2411273 ((as const (Array C!22860 Bool)) false))))

(declare-fun b!3899997 () Bool)

(assert (=> b!3899997 (= e!2411273 ((_ map or) (store ((as const (Array C!22860 Bool)) false) (h!46777 lt!1357938) true) (content!6186 (t!319148 lt!1357938))))))

(assert (= (and d!1155931 c!678013) b!3899996))

(assert (= (and d!1155931 (not c!678013)) b!3899997))

(declare-fun m!4460047 () Bool)

(assert (=> b!3899997 m!4460047))

(assert (=> b!3899997 m!4458233))

(assert (=> d!1155109 d!1155931))

(declare-fun d!1155933 () Bool)

(declare-fun c!678014 () Bool)

(assert (=> d!1155933 (= c!678014 ((_ is Nil!41357) (_2!23431 (v!39163 lt!1357935))))))

(declare-fun e!2411274 () (InoxSet C!22860))

(assert (=> d!1155933 (= (content!6186 (_2!23431 (v!39163 lt!1357935))) e!2411274)))

(declare-fun b!3899998 () Bool)

(assert (=> b!3899998 (= e!2411274 ((as const (Array C!22860 Bool)) false))))

(declare-fun b!3899999 () Bool)

(assert (=> b!3899999 (= e!2411274 ((_ map or) (store ((as const (Array C!22860 Bool)) false) (h!46777 (_2!23431 (v!39163 lt!1357935))) true) (content!6186 (t!319148 (_2!23431 (v!39163 lt!1357935))))))))

(assert (= (and d!1155933 c!678014) b!3899998))

(assert (= (and d!1155933 (not c!678014)) b!3899999))

(declare-fun m!4460049 () Bool)

(assert (=> b!3899999 m!4460049))

(declare-fun m!4460051 () Bool)

(assert (=> b!3899999 m!4460051))

(assert (=> d!1155109 d!1155933))

(declare-fun d!1155935 () Bool)

(assert (=> d!1155935 (= (isEmpty!24584 lt!1358123) (not ((_ is Some!8851) lt!1358123)))))

(assert (=> d!1155133 d!1155935))

(declare-fun d!1155937 () Bool)

(assert (=> d!1155937 (= (isEmpty!24580 (_1!23434 lt!1358121)) ((_ is Nil!41357) (_1!23434 lt!1358121)))))

(assert (=> d!1155133 d!1155937))

(declare-fun d!1155939 () Bool)

(declare-fun lt!1358631 () tuple2!40600)

(assert (=> d!1155939 (= (++!10621 (_1!23434 lt!1358631) (_2!23434 lt!1358631)) lt!1357946)))

(declare-fun sizeTr!243 (List!41481 Int) Int)

(assert (=> d!1155939 (= lt!1358631 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 0 lt!1357946 lt!1357946 (sizeTr!243 lt!1357946 0)))))

(declare-fun lt!1358634 () Unit!59476)

(declare-fun lt!1358632 () Unit!59476)

(assert (=> d!1155939 (= lt!1358634 lt!1358632)))

(declare-fun lt!1358635 () List!41481)

(declare-fun lt!1358636 () Int)

(assert (=> d!1155939 (= (sizeTr!243 lt!1358635 lt!1358636) (+ (size!31050 lt!1358635) lt!1358636))))

(declare-fun lemmaSizeTrEqualsSize!242 (List!41481 Int) Unit!59476)

(assert (=> d!1155939 (= lt!1358632 (lemmaSizeTrEqualsSize!242 lt!1358635 lt!1358636))))

(assert (=> d!1155939 (= lt!1358636 0)))

(assert (=> d!1155939 (= lt!1358635 Nil!41357)))

(declare-fun lt!1358629 () Unit!59476)

(declare-fun lt!1358633 () Unit!59476)

(assert (=> d!1155939 (= lt!1358629 lt!1358633)))

(declare-fun lt!1358630 () Int)

(assert (=> d!1155939 (= (sizeTr!243 lt!1357946 lt!1358630) (+ (size!31050 lt!1357946) lt!1358630))))

(assert (=> d!1155939 (= lt!1358633 (lemmaSizeTrEqualsSize!242 lt!1357946 lt!1358630))))

(assert (=> d!1155939 (= lt!1358630 0)))

(assert (=> d!1155939 (validRegex!5153 (regex!6432 (h!46779 rules!2768)))))

(assert (=> d!1155939 (= (findLongestMatch!1133 (regex!6432 (h!46779 rules!2768)) lt!1357946) lt!1358631)))

(declare-fun bs!584918 () Bool)

(assert (= bs!584918 d!1155939))

(declare-fun m!4460053 () Bool)

(assert (=> bs!584918 m!4460053))

(declare-fun m!4460055 () Bool)

(assert (=> bs!584918 m!4460055))

(declare-fun m!4460057 () Bool)

(assert (=> bs!584918 m!4460057))

(declare-fun m!4460059 () Bool)

(assert (=> bs!584918 m!4460059))

(declare-fun m!4460061 () Bool)

(assert (=> bs!584918 m!4460061))

(assert (=> bs!584918 m!4460059))

(declare-fun m!4460063 () Bool)

(assert (=> bs!584918 m!4460063))

(declare-fun m!4460065 () Bool)

(assert (=> bs!584918 m!4460065))

(declare-fun m!4460067 () Bool)

(assert (=> bs!584918 m!4460067))

(assert (=> bs!584918 m!4457537))

(assert (=> bs!584918 m!4458469))

(assert (=> d!1155133 d!1155939))

(declare-fun d!1155941 () Bool)

(declare-fun res!1577741 () Bool)

(declare-fun e!2411275 () Bool)

(assert (=> d!1155941 (=> (not res!1577741) (not e!2411275))))

(assert (=> d!1155941 (= res!1577741 (validRegex!5153 (regex!6432 (h!46779 rules!2768))))))

(assert (=> d!1155941 (= (ruleValid!2380 thiss!20629 (h!46779 rules!2768)) e!2411275)))

(declare-fun b!3900000 () Bool)

(declare-fun res!1577742 () Bool)

(assert (=> b!3900000 (=> (not res!1577742) (not e!2411275))))

(assert (=> b!3900000 (= res!1577742 (not (nullable!3954 (regex!6432 (h!46779 rules!2768)))))))

(declare-fun b!3900001 () Bool)

(assert (=> b!3900001 (= e!2411275 (not (= (tag!7292 (h!46779 rules!2768)) (String!47029 ""))))))

(assert (= (and d!1155941 res!1577741) b!3900000))

(assert (= (and b!3900000 res!1577742) b!3900001))

(assert (=> d!1155941 m!4458469))

(assert (=> b!3900000 m!4458471))

(assert (=> d!1155133 d!1155941))

(declare-fun d!1155943 () Bool)

(declare-fun c!678016 () Bool)

(assert (=> d!1155943 (= c!678016 ((_ is IntegerValue!19986) (value!203946 (h!46778 (t!319149 suffixTokens!72)))))))

(declare-fun e!2411278 () Bool)

(assert (=> d!1155943 (= (inv!21 (value!203946 (h!46778 (t!319149 suffixTokens!72)))) e!2411278)))

(declare-fun b!3900002 () Bool)

(assert (=> b!3900002 (= e!2411278 (inv!16 (value!203946 (h!46778 (t!319149 suffixTokens!72)))))))

(declare-fun b!3900003 () Bool)

(declare-fun e!2411276 () Bool)

(assert (=> b!3900003 (= e!2411278 e!2411276)))

(declare-fun c!678015 () Bool)

(assert (=> b!3900003 (= c!678015 ((_ is IntegerValue!19987) (value!203946 (h!46778 (t!319149 suffixTokens!72)))))))

(declare-fun b!3900004 () Bool)

(declare-fun e!2411277 () Bool)

(assert (=> b!3900004 (= e!2411277 (inv!15 (value!203946 (h!46778 (t!319149 suffixTokens!72)))))))

(declare-fun b!3900005 () Bool)

(declare-fun res!1577743 () Bool)

(assert (=> b!3900005 (=> res!1577743 e!2411277)))

(assert (=> b!3900005 (= res!1577743 (not ((_ is IntegerValue!19988) (value!203946 (h!46778 (t!319149 suffixTokens!72))))))))

(assert (=> b!3900005 (= e!2411276 e!2411277)))

(declare-fun b!3900006 () Bool)

(assert (=> b!3900006 (= e!2411276 (inv!17 (value!203946 (h!46778 (t!319149 suffixTokens!72)))))))

(assert (= (and d!1155943 c!678016) b!3900002))

(assert (= (and d!1155943 (not c!678016)) b!3900003))

(assert (= (and b!3900003 c!678015) b!3900006))

(assert (= (and b!3900003 (not c!678015)) b!3900005))

(assert (= (and b!3900005 (not res!1577743)) b!3900004))

(declare-fun m!4460069 () Bool)

(assert (=> b!3900002 m!4460069))

(declare-fun m!4460071 () Bool)

(assert (=> b!3900004 m!4460071))

(declare-fun m!4460073 () Bool)

(assert (=> b!3900006 m!4460073))

(assert (=> b!3898820 d!1155943))

(declare-fun d!1155945 () Bool)

(declare-fun lt!1358637 () Int)

(assert (=> d!1155945 (>= lt!1358637 0)))

(declare-fun e!2411279 () Int)

(assert (=> d!1155945 (= lt!1358637 e!2411279)))

(declare-fun c!678017 () Bool)

(assert (=> d!1155945 (= c!678017 ((_ is Nil!41358) lt!1358158))))

(assert (=> d!1155945 (= (size!31052 lt!1358158) lt!1358637)))

(declare-fun b!3900007 () Bool)

(assert (=> b!3900007 (= e!2411279 0)))

(declare-fun b!3900008 () Bool)

(assert (=> b!3900008 (= e!2411279 (+ 1 (size!31052 (t!319149 lt!1358158))))))

(assert (= (and d!1155945 c!678017) b!3900007))

(assert (= (and d!1155945 (not c!678017)) b!3900008))

(declare-fun m!4460075 () Bool)

(assert (=> b!3900008 m!4460075))

(assert (=> b!3898759 d!1155945))

(declare-fun d!1155947 () Bool)

(declare-fun lt!1358638 () Int)

(assert (=> d!1155947 (>= lt!1358638 0)))

(declare-fun e!2411280 () Int)

(assert (=> d!1155947 (= lt!1358638 e!2411280)))

(declare-fun c!678018 () Bool)

(assert (=> d!1155947 (= c!678018 ((_ is Nil!41358) prefixTokens!80))))

(assert (=> d!1155947 (= (size!31052 prefixTokens!80) lt!1358638)))

(declare-fun b!3900009 () Bool)

(assert (=> b!3900009 (= e!2411280 0)))

(declare-fun b!3900010 () Bool)

(assert (=> b!3900010 (= e!2411280 (+ 1 (size!31052 (t!319149 prefixTokens!80))))))

(assert (= (and d!1155947 c!678018) b!3900009))

(assert (= (and d!1155947 (not c!678018)) b!3900010))

(assert (=> b!3900010 m!4458357))

(assert (=> b!3898759 d!1155947))

(declare-fun d!1155949 () Bool)

(declare-fun lt!1358639 () Int)

(assert (=> d!1155949 (>= lt!1358639 0)))

(declare-fun e!2411281 () Int)

(assert (=> d!1155949 (= lt!1358639 e!2411281)))

(declare-fun c!678019 () Bool)

(assert (=> d!1155949 (= c!678019 ((_ is Nil!41358) suffixTokens!72))))

(assert (=> d!1155949 (= (size!31052 suffixTokens!72) lt!1358639)))

(declare-fun b!3900011 () Bool)

(assert (=> b!3900011 (= e!2411281 0)))

(declare-fun b!3900012 () Bool)

(assert (=> b!3900012 (= e!2411281 (+ 1 (size!31052 (t!319149 suffixTokens!72))))))

(assert (= (and d!1155949 c!678019) b!3900011))

(assert (= (and d!1155949 (not c!678019)) b!3900012))

(declare-fun m!4460077 () Bool)

(assert (=> b!3900012 m!4460077))

(assert (=> b!3898759 d!1155949))

(declare-fun d!1155951 () Bool)

(assert (=> d!1155951 (= (isEmpty!24584 lt!1358130) (not ((_ is Some!8851) lt!1358130)))))

(assert (=> d!1155159 d!1155951))

(assert (=> d!1155159 d!1155163))

(assert (=> d!1155159 d!1155165))

(assert (=> d!1155159 d!1155591))

(declare-fun d!1155953 () Bool)

(assert (=> d!1155953 (= (isDefined!6903 lt!1358032) (not (isEmpty!24584 lt!1358032)))))

(declare-fun bs!584919 () Bool)

(assert (= bs!584919 d!1155953))

(assert (=> bs!584919 m!4457527))

(assert (=> b!3898431 d!1155953))

(declare-fun d!1155955 () Bool)

(declare-fun lt!1358640 () Int)

(assert (=> d!1155955 (>= lt!1358640 0)))

(declare-fun e!2411282 () Int)

(assert (=> d!1155955 (= lt!1358640 e!2411282)))

(declare-fun c!678020 () Bool)

(assert (=> d!1155955 (= c!678020 ((_ is Nil!41357) lt!1358146))))

(assert (=> d!1155955 (= (size!31050 lt!1358146) lt!1358640)))

(declare-fun b!3900013 () Bool)

(assert (=> b!3900013 (= e!2411282 0)))

(declare-fun b!3900014 () Bool)

(assert (=> b!3900014 (= e!2411282 (+ 1 (size!31050 (t!319148 lt!1358146))))))

(assert (= (and d!1155955 c!678020) b!3900013))

(assert (= (and d!1155955 (not c!678020)) b!3900014))

(declare-fun m!4460079 () Bool)

(assert (=> b!3900014 m!4460079))

(assert (=> b!3898733 d!1155955))

(assert (=> b!3898733 d!1155849))

(assert (=> b!3898733 d!1155679))

(assert (=> b!3898684 d!1155231))

(declare-fun d!1155957 () Bool)

(assert (=> d!1155957 (= (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358130))))) (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130))))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358130))))))))

(declare-fun b_lambda!113947 () Bool)

(assert (=> (not b_lambda!113947) (not d!1155957)))

(declare-fun t!319760 () Bool)

(declare-fun tb!229561 () Bool)

(assert (=> (and b!3898827 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319760) tb!229561))

(declare-fun result!278764 () Bool)

(assert (=> tb!229561 (= result!278764 (inv!21 (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130))))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358130)))))))))

(declare-fun m!4460081 () Bool)

(assert (=> tb!229561 m!4460081))

(assert (=> d!1155957 t!319760))

(declare-fun b_and!294869 () Bool)

(assert (= b_and!294867 (and (=> t!319760 result!278764) b_and!294869)))

(declare-fun t!319762 () Bool)

(declare-fun tb!229563 () Bool)

(assert (=> (and b!3898228 (= (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319762) tb!229563))

(declare-fun result!278766 () Bool)

(assert (= result!278766 result!278764))

(assert (=> d!1155957 t!319762))

(declare-fun b_and!294871 () Bool)

(assert (= b_and!294859 (and (=> t!319762 result!278766) b_and!294871)))

(declare-fun tb!229565 () Bool)

(declare-fun t!319764 () Bool)

(assert (=> (and b!3898224 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319764) tb!229565))

(declare-fun result!278768 () Bool)

(assert (= result!278768 result!278764))

(assert (=> d!1155957 t!319764))

(declare-fun b_and!294873 () Bool)

(assert (= b_and!294855 (and (=> t!319764 result!278768) b_and!294873)))

(declare-fun tb!229567 () Bool)

(declare-fun t!319766 () Bool)

(assert (=> (and b!3898210 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319766) tb!229567))

(declare-fun result!278770 () Bool)

(assert (= result!278770 result!278764))

(assert (=> d!1155957 t!319766))

(declare-fun b_and!294875 () Bool)

(assert (= b_and!294865 (and (=> t!319766 result!278770) b_and!294875)))

(declare-fun t!319768 () Bool)

(declare-fun tb!229569 () Bool)

(assert (=> (and b!3898205 (= (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319768) tb!229569))

(declare-fun result!278772 () Bool)

(assert (= result!278772 result!278764))

(assert (=> d!1155957 t!319768))

(declare-fun b_and!294877 () Bool)

(assert (= b_and!294861 (and (=> t!319768 result!278772) b_and!294877)))

(declare-fun tb!229571 () Bool)

(declare-fun t!319770 () Bool)

(assert (=> (and b!3898822 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319770) tb!229571))

(declare-fun result!278774 () Bool)

(assert (= result!278774 result!278764))

(assert (=> d!1155957 t!319770))

(declare-fun b_and!294879 () Bool)

(assert (= b_and!294863 (and (=> t!319770 result!278774) b_and!294879)))

(declare-fun t!319772 () Bool)

(declare-fun tb!229573 () Bool)

(assert (=> (and b!3898838 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319772) tb!229573))

(declare-fun result!278776 () Bool)

(assert (= result!278776 result!278764))

(assert (=> d!1155957 t!319772))

(declare-fun b_and!294881 () Bool)

(assert (= b_and!294857 (and (=> t!319772 result!278776) b_and!294881)))

(assert (=> d!1155957 m!4457969))

(declare-fun m!4460083 () Bool)

(assert (=> d!1155957 m!4460083))

(assert (=> b!3898684 d!1155957))

(declare-fun d!1155959 () Bool)

(assert (=> d!1155959 (= (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358130)))) (fromListB!2164 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358130)))))))

(declare-fun bs!584920 () Bool)

(assert (= bs!584920 d!1155959))

(declare-fun m!4460085 () Bool)

(assert (=> bs!584920 m!4460085))

(assert (=> b!3898684 d!1155959))

(declare-fun d!1155961 () Bool)

(declare-fun lt!1358641 () Int)

(assert (=> d!1155961 (>= lt!1358641 0)))

(declare-fun e!2411284 () Int)

(assert (=> d!1155961 (= lt!1358641 e!2411284)))

(declare-fun c!678021 () Bool)

(assert (=> d!1155961 (= c!678021 ((_ is Nil!41357) (_2!23432 lt!1358054)))))

(assert (=> d!1155961 (= (size!31050 (_2!23432 lt!1358054)) lt!1358641)))

(declare-fun b!3900015 () Bool)

(assert (=> b!3900015 (= e!2411284 0)))

(declare-fun b!3900016 () Bool)

(assert (=> b!3900016 (= e!2411284 (+ 1 (size!31050 (t!319148 (_2!23432 lt!1358054)))))))

(assert (= (and d!1155961 c!678021) b!3900015))

(assert (= (and d!1155961 (not c!678021)) b!3900016))

(declare-fun m!4460087 () Bool)

(assert (=> b!3900016 m!4460087))

(assert (=> b!3898481 d!1155961))

(assert (=> b!3898481 d!1155921))

(declare-fun bs!584921 () Bool)

(declare-fun d!1155963 () Bool)

(assert (= bs!584921 (and d!1155963 d!1155763)))

(declare-fun lambda!126410 () Int)

(assert (=> bs!584921 (= (and (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (h!46779 rules!2768)))) (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (= lambda!126410 lambda!126401))))

(declare-fun bs!584922 () Bool)

(assert (= bs!584922 (and d!1155963 d!1155799)))

(assert (=> bs!584922 (= (and (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))))) (= lambda!126410 lambda!126404))))

(declare-fun bs!584923 () Bool)

(assert (= bs!584923 (and d!1155963 d!1155815)))

(assert (=> bs!584923 (= (and (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) (= lambda!126410 lambda!126406))))

(declare-fun bs!584924 () Bool)

(assert (= bs!584924 (and d!1155963 d!1155909)))

(assert (=> bs!584924 (= (and (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (h!46779 rules!2768)))) (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (= lambda!126410 lambda!126408))))

(assert (=> d!1155963 true))

(assert (=> d!1155963 (< (dynLambda!17762 order!22237 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) (dynLambda!17761 order!22235 lambda!126410))))

(assert (=> d!1155963 true))

(assert (=> d!1155963 (< (dynLambda!17759 order!22231 (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) (dynLambda!17761 order!22235 lambda!126410))))

(assert (=> d!1155963 (= (semiInverseModEq!2755 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) (Forall!1442 lambda!126410))))

(declare-fun bs!584925 () Bool)

(assert (= bs!584925 d!1155963))

(declare-fun m!4460089 () Bool)

(assert (=> bs!584925 m!4460089))

(assert (=> d!1155007 d!1155963))

(declare-fun d!1155965 () Bool)

(declare-fun lt!1358642 () Int)

(assert (=> d!1155965 (>= lt!1358642 0)))

(declare-fun e!2411285 () Int)

(assert (=> d!1155965 (= lt!1358642 e!2411285)))

(declare-fun c!678022 () Bool)

(assert (=> d!1155965 (= c!678022 ((_ is Nil!41357) (_2!23431 (get!13674 lt!1358032))))))

(assert (=> d!1155965 (= (size!31050 (_2!23431 (get!13674 lt!1358032))) lt!1358642)))

(declare-fun b!3900017 () Bool)

(assert (=> b!3900017 (= e!2411285 0)))

(declare-fun b!3900018 () Bool)

(assert (=> b!3900018 (= e!2411285 (+ 1 (size!31050 (t!319148 (_2!23431 (get!13674 lt!1358032))))))))

(assert (= (and d!1155965 c!678022) b!3900017))

(assert (= (and d!1155965 (not c!678022)) b!3900018))

(declare-fun m!4460091 () Bool)

(assert (=> b!3900018 m!4460091))

(assert (=> b!3898427 d!1155965))

(assert (=> b!3898427 d!1155259))

(assert (=> b!3898427 d!1155233))

(declare-fun d!1155967 () Bool)

(assert (=> d!1155967 (= (isEmpty!24580 (originalCharacters!7032 (h!46778 suffixTokens!72))) ((_ is Nil!41357) (originalCharacters!7032 (h!46778 suffixTokens!72))))))

(assert (=> d!1155157 d!1155967))

(declare-fun d!1155969 () Bool)

(declare-fun lt!1358643 () Int)

(assert (=> d!1155969 (>= lt!1358643 0)))

(declare-fun e!2411286 () Int)

(assert (=> d!1155969 (= lt!1358643 e!2411286)))

(declare-fun c!678023 () Bool)

(assert (=> d!1155969 (= c!678023 ((_ is Nil!41357) (_2!23431 (get!13674 lt!1358145))))))

(assert (=> d!1155969 (= (size!31050 (_2!23431 (get!13674 lt!1358145))) lt!1358643)))

(declare-fun b!3900019 () Bool)

(assert (=> b!3900019 (= e!2411286 0)))

(declare-fun b!3900020 () Bool)

(assert (=> b!3900020 (= e!2411286 (+ 1 (size!31050 (t!319148 (_2!23431 (get!13674 lt!1358145))))))))

(assert (= (and d!1155969 c!678023) b!3900019))

(assert (= (and d!1155969 (not c!678023)) b!3900020))

(declare-fun m!4460093 () Bool)

(assert (=> b!3900020 m!4460093))

(assert (=> b!3898724 d!1155969))

(assert (=> b!3898724 d!1155265))

(declare-fun d!1155971 () Bool)

(declare-fun lt!1358644 () Int)

(assert (=> d!1155971 (>= lt!1358644 0)))

(declare-fun e!2411287 () Int)

(assert (=> d!1155971 (= lt!1358644 e!2411287)))

(declare-fun c!678024 () Bool)

(assert (=> d!1155971 (= c!678024 ((_ is Nil!41357) (++!10621 prefix!426 Nil!41357)))))

(assert (=> d!1155971 (= (size!31050 (++!10621 prefix!426 Nil!41357)) lt!1358644)))

(declare-fun b!3900021 () Bool)

(assert (=> b!3900021 (= e!2411287 0)))

(declare-fun b!3900022 () Bool)

(assert (=> b!3900022 (= e!2411287 (+ 1 (size!31050 (t!319148 (++!10621 prefix!426 Nil!41357)))))))

(assert (= (and d!1155971 c!678024) b!3900021))

(assert (= (and d!1155971 (not c!678024)) b!3900022))

(declare-fun m!4460095 () Bool)

(assert (=> b!3900022 m!4460095))

(assert (=> b!3898724 d!1155971))

(declare-fun d!1155973 () Bool)

(assert (=> d!1155973 (= (isDefined!6903 lt!1358145) (not (isEmpty!24584 lt!1358145)))))

(declare-fun bs!584926 () Bool)

(assert (= bs!584926 d!1155973))

(assert (=> bs!584926 m!4458009))

(assert (=> b!3898728 d!1155973))

(declare-fun d!1155975 () Bool)

(declare-fun c!678025 () Bool)

(assert (=> d!1155975 (= c!678025 ((_ is Nil!41357) lt!1358159))))

(declare-fun e!2411288 () (InoxSet C!22860))

(assert (=> d!1155975 (= (content!6186 lt!1358159) e!2411288)))

(declare-fun b!3900023 () Bool)

(assert (=> b!3900023 (= e!2411288 ((as const (Array C!22860 Bool)) false))))

(declare-fun b!3900024 () Bool)

(assert (=> b!3900024 (= e!2411288 ((_ map or) (store ((as const (Array C!22860 Bool)) false) (h!46777 lt!1358159) true) (content!6186 (t!319148 lt!1358159))))))

(assert (= (and d!1155975 c!678025) b!3900023))

(assert (= (and d!1155975 (not c!678025)) b!3900024))

(declare-fun m!4460097 () Bool)

(assert (=> b!3900024 m!4460097))

(declare-fun m!4460099 () Bool)

(assert (=> b!3900024 m!4460099))

(assert (=> d!1155197 d!1155975))

(assert (=> d!1155197 d!1155299))

(declare-fun d!1155977 () Bool)

(declare-fun c!678026 () Bool)

(assert (=> d!1155977 (= c!678026 ((_ is Nil!41357) suffix!1176))))

(declare-fun e!2411289 () (InoxSet C!22860))

(assert (=> d!1155977 (= (content!6186 suffix!1176) e!2411289)))

(declare-fun b!3900025 () Bool)

(assert (=> b!3900025 (= e!2411289 ((as const (Array C!22860 Bool)) false))))

(declare-fun b!3900026 () Bool)

(assert (=> b!3900026 (= e!2411289 ((_ map or) (store ((as const (Array C!22860 Bool)) false) (h!46777 suffix!1176) true) (content!6186 (t!319148 suffix!1176))))))

(assert (= (and d!1155977 c!678026) b!3900025))

(assert (= (and d!1155977 (not c!678026)) b!3900026))

(declare-fun m!4460101 () Bool)

(assert (=> b!3900026 m!4460101))

(declare-fun m!4460103 () Bool)

(assert (=> b!3900026 m!4460103))

(assert (=> d!1155197 d!1155977))

(declare-fun b!3900030 () Bool)

(declare-fun e!2411291 () Bool)

(assert (=> b!3900030 (= e!2411291 (>= (size!31050 (++!10621 lt!1357938 (_2!23431 (v!39163 lt!1357935)))) (size!31050 lt!1357938)))))

(declare-fun b!3900029 () Bool)

(declare-fun e!2411290 () Bool)

(assert (=> b!3900029 (= e!2411290 (isPrefix!3527 (tail!5963 lt!1357938) (tail!5963 (++!10621 lt!1357938 (_2!23431 (v!39163 lt!1357935))))))))

(declare-fun b!3900027 () Bool)

(declare-fun e!2411292 () Bool)

(assert (=> b!3900027 (= e!2411292 e!2411290)))

(declare-fun res!1577745 () Bool)

(assert (=> b!3900027 (=> (not res!1577745) (not e!2411290))))

(assert (=> b!3900027 (= res!1577745 (not ((_ is Nil!41357) (++!10621 lt!1357938 (_2!23431 (v!39163 lt!1357935))))))))

(declare-fun b!3900028 () Bool)

(declare-fun res!1577747 () Bool)

(assert (=> b!3900028 (=> (not res!1577747) (not e!2411290))))

(assert (=> b!3900028 (= res!1577747 (= (head!8246 lt!1357938) (head!8246 (++!10621 lt!1357938 (_2!23431 (v!39163 lt!1357935))))))))

(declare-fun d!1155979 () Bool)

(assert (=> d!1155979 e!2411291))

(declare-fun res!1577746 () Bool)

(assert (=> d!1155979 (=> res!1577746 e!2411291)))

(declare-fun lt!1358645 () Bool)

(assert (=> d!1155979 (= res!1577746 (not lt!1358645))))

(assert (=> d!1155979 (= lt!1358645 e!2411292)))

(declare-fun res!1577744 () Bool)

(assert (=> d!1155979 (=> res!1577744 e!2411292)))

(assert (=> d!1155979 (= res!1577744 ((_ is Nil!41357) lt!1357938))))

(assert (=> d!1155979 (= (isPrefix!3527 lt!1357938 (++!10621 lt!1357938 (_2!23431 (v!39163 lt!1357935)))) lt!1358645)))

(assert (= (and d!1155979 (not res!1577744)) b!3900027))

(assert (= (and b!3900027 res!1577745) b!3900028))

(assert (= (and b!3900028 res!1577747) b!3900029))

(assert (= (and d!1155979 (not res!1577746)) b!3900030))

(assert (=> b!3900030 m!4457265))

(declare-fun m!4460105 () Bool)

(assert (=> b!3900030 m!4460105))

(assert (=> b!3900030 m!4457273))

(assert (=> b!3900029 m!4457659))

(assert (=> b!3900029 m!4457265))

(declare-fun m!4460107 () Bool)

(assert (=> b!3900029 m!4460107))

(assert (=> b!3900029 m!4457659))

(assert (=> b!3900029 m!4460107))

(declare-fun m!4460109 () Bool)

(assert (=> b!3900029 m!4460109))

(assert (=> b!3900028 m!4457665))

(assert (=> b!3900028 m!4457265))

(declare-fun m!4460111 () Bool)

(assert (=> b!3900028 m!4460111))

(assert (=> d!1155117 d!1155979))

(assert (=> d!1155117 d!1155109))

(declare-fun d!1155981 () Bool)

(assert (=> d!1155981 (isPrefix!3527 lt!1357938 (++!10621 lt!1357938 (_2!23431 (v!39163 lt!1357935))))))

(assert (=> d!1155981 true))

(declare-fun _$46!1543 () Unit!59476)

(assert (=> d!1155981 (= (choose!23060 lt!1357938 (_2!23431 (v!39163 lt!1357935))) _$46!1543)))

(declare-fun bs!584927 () Bool)

(assert (= bs!584927 d!1155981))

(assert (=> bs!584927 m!4457265))

(assert (=> bs!584927 m!4457265))

(assert (=> bs!584927 m!4457767))

(assert (=> d!1155117 d!1155981))

(declare-fun b!3900031 () Bool)

(declare-fun e!2411294 () List!41481)

(assert (=> b!3900031 (= e!2411294 (_2!23431 (get!13674 lt!1358151)))))

(declare-fun b!3900032 () Bool)

(assert (=> b!3900032 (= e!2411294 (Cons!41357 (h!46777 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151))))) (++!10621 (t!319148 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151))))) (_2!23431 (get!13674 lt!1358151)))))))

(declare-fun d!1155983 () Bool)

(declare-fun e!2411293 () Bool)

(assert (=> d!1155983 e!2411293))

(declare-fun res!1577749 () Bool)

(assert (=> d!1155983 (=> (not res!1577749) (not e!2411293))))

(declare-fun lt!1358646 () List!41481)

(assert (=> d!1155983 (= res!1577749 (= (content!6186 lt!1358646) ((_ map or) (content!6186 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151))))) (content!6186 (_2!23431 (get!13674 lt!1358151))))))))

(assert (=> d!1155983 (= lt!1358646 e!2411294)))

(declare-fun c!678027 () Bool)

(assert (=> d!1155983 (= c!678027 ((_ is Nil!41357) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151))))))))

(assert (=> d!1155983 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151)))) (_2!23431 (get!13674 lt!1358151))) lt!1358646)))

(declare-fun b!3900033 () Bool)

(declare-fun res!1577748 () Bool)

(assert (=> b!3900033 (=> (not res!1577748) (not e!2411293))))

(assert (=> b!3900033 (= res!1577748 (= (size!31050 lt!1358646) (+ (size!31050 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151))))) (size!31050 (_2!23431 (get!13674 lt!1358151))))))))

(declare-fun b!3900034 () Bool)

(assert (=> b!3900034 (= e!2411293 (or (not (= (_2!23431 (get!13674 lt!1358151)) Nil!41357)) (= lt!1358646 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358151)))))))))

(assert (= (and d!1155983 c!678027) b!3900031))

(assert (= (and d!1155983 (not c!678027)) b!3900032))

(assert (= (and d!1155983 res!1577749) b!3900033))

(assert (= (and b!3900033 res!1577748) b!3900034))

(declare-fun m!4460113 () Bool)

(assert (=> b!3900032 m!4460113))

(declare-fun m!4460115 () Bool)

(assert (=> d!1155983 m!4460115))

(assert (=> d!1155983 m!4458067))

(declare-fun m!4460117 () Bool)

(assert (=> d!1155983 m!4460117))

(declare-fun m!4460119 () Bool)

(assert (=> d!1155983 m!4460119))

(declare-fun m!4460121 () Bool)

(assert (=> b!3900033 m!4460121))

(assert (=> b!3900033 m!4458067))

(declare-fun m!4460123 () Bool)

(assert (=> b!3900033 m!4460123))

(assert (=> b!3900033 m!4458063))

(assert (=> b!3898740 d!1155983))

(assert (=> b!3898740 d!1155235))

(assert (=> b!3898740 d!1155237))

(assert (=> b!3898740 d!1155239))

(declare-fun d!1155985 () Bool)

(assert (not d!1155985))

(assert (=> b!3898339 d!1155985))

(declare-fun d!1155987 () Bool)

(assert (=> d!1155987 (= (head!8246 suffix!1176) (h!46777 suffix!1176))))

(assert (=> b!3898339 d!1155987))

(declare-fun bs!584928 () Bool)

(declare-fun d!1155989 () Bool)

(assert (= bs!584928 (and d!1155989 d!1155591)))

(declare-fun lambda!126413 () Int)

(assert (=> bs!584928 (= lambda!126413 lambda!126390)))

(declare-fun bs!584929 () Bool)

(assert (= bs!584929 (and d!1155989 d!1155803)))

(assert (=> bs!584929 (= lambda!126413 lambda!126405)))

(assert (=> d!1155989 true))

(declare-fun lt!1358649 () Bool)

(assert (=> d!1155989 (= lt!1358649 (rulesValidInductive!2304 thiss!20629 rules!2768))))

(assert (=> d!1155989 (= lt!1358649 (forall!8306 rules!2768 lambda!126413))))

(assert (=> d!1155989 (= (rulesValid!2490 thiss!20629 rules!2768) lt!1358649)))

(declare-fun bs!584930 () Bool)

(assert (= bs!584930 d!1155989))

(assert (=> bs!584930 m!4457955))

(declare-fun m!4460125 () Bool)

(assert (=> bs!584930 m!4460125))

(assert (=> d!1155075 d!1155989))

(declare-fun d!1155991 () Bool)

(declare-fun c!678028 () Bool)

(assert (=> d!1155991 (= c!678028 ((_ is Node!12643) (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80))))))))

(declare-fun e!2411295 () Bool)

(assert (=> d!1155991 (= (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80))))) e!2411295)))

(declare-fun b!3900035 () Bool)

(assert (=> b!3900035 (= e!2411295 (inv!55528 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80))))))))

(declare-fun b!3900036 () Bool)

(declare-fun e!2411296 () Bool)

(assert (=> b!3900036 (= e!2411295 e!2411296)))

(declare-fun res!1577750 () Bool)

(assert (=> b!3900036 (= res!1577750 (not ((_ is Leaf!19566) (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80)))))))))

(assert (=> b!3900036 (=> res!1577750 e!2411296)))

(declare-fun b!3900037 () Bool)

(assert (=> b!3900037 (= e!2411296 (inv!55529 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80))))))))

(assert (= (and d!1155991 c!678028) b!3900035))

(assert (= (and d!1155991 (not c!678028)) b!3900036))

(assert (= (and b!3900036 (not res!1577750)) b!3900037))

(declare-fun m!4460127 () Bool)

(assert (=> b!3900035 m!4460127))

(declare-fun m!4460129 () Bool)

(assert (=> b!3900037 m!4460129))

(assert (=> b!3898772 d!1155991))

(declare-fun d!1155993 () Bool)

(declare-fun e!2411299 () Bool)

(assert (=> d!1155993 e!2411299))

(declare-fun res!1577753 () Bool)

(assert (=> d!1155993 (=> (not res!1577753) (not e!2411299))))

(declare-fun lt!1358652 () BalanceConc!24880)

(assert (=> d!1155993 (= res!1577753 (= (list!15370 lt!1358652) lt!1357938))))

(declare-fun fromList!822 (List!41481) Conc!12643)

(assert (=> d!1155993 (= lt!1358652 (BalanceConc!24881 (fromList!822 lt!1357938)))))

(assert (=> d!1155993 (= (fromListB!2164 lt!1357938) lt!1358652)))

(declare-fun b!3900040 () Bool)

(assert (=> b!3900040 (= e!2411299 (isBalanced!3632 (fromList!822 lt!1357938)))))

(assert (= (and d!1155993 res!1577753) b!3900040))

(declare-fun m!4460131 () Bool)

(assert (=> d!1155993 m!4460131))

(declare-fun m!4460133 () Bool)

(assert (=> d!1155993 m!4460133))

(assert (=> b!3900040 m!4460133))

(assert (=> b!3900040 m!4460133))

(declare-fun m!4460135 () Bool)

(assert (=> b!3900040 m!4460135))

(assert (=> d!1155089 d!1155993))

(declare-fun b!3900041 () Bool)

(declare-fun e!2411300 () Bool)

(declare-fun lt!1358657 () Option!8852)

(assert (=> b!3900041 (= e!2411300 (contains!8311 (t!319150 rules!2768) (rule!9336 (_1!23431 (get!13674 lt!1358657)))))))

(declare-fun b!3900042 () Bool)

(declare-fun e!2411302 () Option!8852)

(declare-fun lt!1358653 () Option!8852)

(declare-fun lt!1358656 () Option!8852)

(assert (=> b!3900042 (= e!2411302 (ite (and ((_ is None!8851) lt!1358653) ((_ is None!8851) lt!1358656)) None!8851 (ite ((_ is None!8851) lt!1358656) lt!1358653 (ite ((_ is None!8851) lt!1358653) lt!1358656 (ite (>= (size!31049 (_1!23431 (v!39163 lt!1358653))) (size!31049 (_1!23431 (v!39163 lt!1358656)))) lt!1358653 lt!1358656)))))))

(declare-fun call!283837 () Option!8852)

(assert (=> b!3900042 (= lt!1358653 call!283837)))

(assert (=> b!3900042 (= lt!1358656 (maxPrefix!3325 thiss!20629 (t!319150 (t!319150 rules!2768)) prefix!426))))

(declare-fun b!3900043 () Bool)

(declare-fun res!1577757 () Bool)

(assert (=> b!3900043 (=> (not res!1577757) (not e!2411300))))

(assert (=> b!3900043 (= res!1577757 (< (size!31050 (_2!23431 (get!13674 lt!1358657))) (size!31050 prefix!426)))))

(declare-fun b!3900044 () Bool)

(declare-fun res!1577758 () Bool)

(assert (=> b!3900044 (=> (not res!1577758) (not e!2411300))))

(assert (=> b!3900044 (= res!1577758 (= (value!203946 (_1!23431 (get!13674 lt!1358657))) (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358657)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358657)))))))))

(declare-fun b!3900045 () Bool)

(assert (=> b!3900045 (= e!2411302 call!283837)))

(declare-fun b!3900046 () Bool)

(declare-fun res!1577754 () Bool)

(assert (=> b!3900046 (=> (not res!1577754) (not e!2411300))))

(assert (=> b!3900046 (= res!1577754 (= (++!10621 (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358657)))) (_2!23431 (get!13674 lt!1358657))) prefix!426))))

(declare-fun bm!283832 () Bool)

(assert (=> bm!283832 (= call!283837 (maxPrefixOneRule!2401 thiss!20629 (h!46779 (t!319150 rules!2768)) prefix!426))))

(declare-fun b!3900048 () Bool)

(declare-fun res!1577760 () Bool)

(assert (=> b!3900048 (=> (not res!1577760) (not e!2411300))))

(assert (=> b!3900048 (= res!1577760 (= (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358657)))) (originalCharacters!7032 (_1!23431 (get!13674 lt!1358657)))))))

(declare-fun b!3900049 () Bool)

(declare-fun res!1577759 () Bool)

(assert (=> b!3900049 (=> (not res!1577759) (not e!2411300))))

(assert (=> b!3900049 (= res!1577759 (matchR!5432 (regex!6432 (rule!9336 (_1!23431 (get!13674 lt!1358657)))) (list!15370 (charsOf!4256 (_1!23431 (get!13674 lt!1358657))))))))

(declare-fun d!1155995 () Bool)

(declare-fun e!2411301 () Bool)

(assert (=> d!1155995 e!2411301))

(declare-fun res!1577756 () Bool)

(assert (=> d!1155995 (=> res!1577756 e!2411301)))

(assert (=> d!1155995 (= res!1577756 (isEmpty!24584 lt!1358657))))

(assert (=> d!1155995 (= lt!1358657 e!2411302)))

(declare-fun c!678030 () Bool)

(assert (=> d!1155995 (= c!678030 (and ((_ is Cons!41359) (t!319150 rules!2768)) ((_ is Nil!41359) (t!319150 (t!319150 rules!2768)))))))

(declare-fun lt!1358654 () Unit!59476)

(declare-fun lt!1358655 () Unit!59476)

(assert (=> d!1155995 (= lt!1358654 lt!1358655)))

(assert (=> d!1155995 (isPrefix!3527 prefix!426 prefix!426)))

(assert (=> d!1155995 (= lt!1358655 (lemmaIsPrefixRefl!2234 prefix!426 prefix!426))))

(assert (=> d!1155995 (rulesValidInductive!2304 thiss!20629 (t!319150 rules!2768))))

(assert (=> d!1155995 (= (maxPrefix!3325 thiss!20629 (t!319150 rules!2768) prefix!426) lt!1358657)))

(declare-fun b!3900047 () Bool)

(assert (=> b!3900047 (= e!2411301 e!2411300)))

(declare-fun res!1577755 () Bool)

(assert (=> b!3900047 (=> (not res!1577755) (not e!2411300))))

(assert (=> b!3900047 (= res!1577755 (isDefined!6903 lt!1358657))))

(assert (= (and d!1155995 c!678030) b!3900045))

(assert (= (and d!1155995 (not c!678030)) b!3900042))

(assert (= (or b!3900045 b!3900042) bm!283832))

(assert (= (and d!1155995 (not res!1577756)) b!3900047))

(assert (= (and b!3900047 res!1577755) b!3900048))

(assert (= (and b!3900048 res!1577760) b!3900043))

(assert (= (and b!3900043 res!1577757) b!3900046))

(assert (= (and b!3900046 res!1577754) b!3900044))

(assert (= (and b!3900044 res!1577758) b!3900049))

(assert (= (and b!3900049 res!1577759) b!3900041))

(declare-fun m!4460137 () Bool)

(assert (=> d!1155995 m!4460137))

(assert (=> d!1155995 m!4458055))

(assert (=> d!1155995 m!4458057))

(assert (=> d!1155995 m!4457529))

(declare-fun m!4460139 () Bool)

(assert (=> bm!283832 m!4460139))

(declare-fun m!4460141 () Bool)

(assert (=> b!3900043 m!4460141))

(declare-fun m!4460143 () Bool)

(assert (=> b!3900043 m!4460143))

(assert (=> b!3900043 m!4458051))

(assert (=> b!3900049 m!4460141))

(declare-fun m!4460145 () Bool)

(assert (=> b!3900049 m!4460145))

(assert (=> b!3900049 m!4460145))

(declare-fun m!4460147 () Bool)

(assert (=> b!3900049 m!4460147))

(assert (=> b!3900049 m!4460147))

(declare-fun m!4460149 () Bool)

(assert (=> b!3900049 m!4460149))

(declare-fun m!4460151 () Bool)

(assert (=> b!3900047 m!4460151))

(declare-fun m!4460153 () Bool)

(assert (=> b!3900042 m!4460153))

(assert (=> b!3900044 m!4460141))

(declare-fun m!4460155 () Bool)

(assert (=> b!3900044 m!4460155))

(assert (=> b!3900044 m!4460155))

(declare-fun m!4460157 () Bool)

(assert (=> b!3900044 m!4460157))

(assert (=> b!3900041 m!4460141))

(declare-fun m!4460159 () Bool)

(assert (=> b!3900041 m!4460159))

(assert (=> b!3900048 m!4460141))

(assert (=> b!3900048 m!4460145))

(assert (=> b!3900048 m!4460145))

(assert (=> b!3900048 m!4460147))

(assert (=> b!3900046 m!4460141))

(assert (=> b!3900046 m!4460145))

(assert (=> b!3900046 m!4460145))

(assert (=> b!3900046 m!4460147))

(assert (=> b!3900046 m!4460147))

(declare-fun m!4460161 () Bool)

(assert (=> b!3900046 m!4460161))

(assert (=> b!3898736 d!1155995))

(assert (=> b!3898672 d!1155323))

(declare-fun d!1155997 () Bool)

(assert (=> d!1155997 (= (apply!9671 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358123))))) (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123))))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358123))))))))

(declare-fun b_lambda!113949 () Bool)

(assert (=> (not b_lambda!113949) (not d!1155997)))

(declare-fun t!319774 () Bool)

(declare-fun tb!229575 () Bool)

(assert (=> (and b!3898210 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319774) tb!229575))

(declare-fun result!278778 () Bool)

(assert (=> tb!229575 (= result!278778 (inv!21 (dynLambda!17752 (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123))))) (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358123)))))))))

(declare-fun m!4460163 () Bool)

(assert (=> tb!229575 m!4460163))

(assert (=> d!1155997 t!319774))

(declare-fun b_and!294883 () Bool)

(assert (= b_and!294875 (and (=> t!319774 result!278778) b_and!294883)))

(declare-fun t!319776 () Bool)

(declare-fun tb!229577 () Bool)

(assert (=> (and b!3898822 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319776) tb!229577))

(declare-fun result!278780 () Bool)

(assert (= result!278780 result!278778))

(assert (=> d!1155997 t!319776))

(declare-fun b_and!294885 () Bool)

(assert (= b_and!294879 (and (=> t!319776 result!278780) b_and!294885)))

(declare-fun t!319778 () Bool)

(declare-fun tb!229579 () Bool)

(assert (=> (and b!3898827 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319778) tb!229579))

(declare-fun result!278782 () Bool)

(assert (= result!278782 result!278778))

(assert (=> d!1155997 t!319778))

(declare-fun b_and!294887 () Bool)

(assert (= b_and!294869 (and (=> t!319778 result!278782) b_and!294887)))

(declare-fun tb!229581 () Bool)

(declare-fun t!319780 () Bool)

(assert (=> (and b!3898228 (= (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319780) tb!229581))

(declare-fun result!278784 () Bool)

(assert (= result!278784 result!278778))

(assert (=> d!1155997 t!319780))

(declare-fun b_and!294889 () Bool)

(assert (= b_and!294871 (and (=> t!319780 result!278784) b_and!294889)))

(declare-fun t!319782 () Bool)

(declare-fun tb!229583 () Bool)

(assert (=> (and b!3898224 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319782) tb!229583))

(declare-fun result!278786 () Bool)

(assert (= result!278786 result!278778))

(assert (=> d!1155997 t!319782))

(declare-fun b_and!294891 () Bool)

(assert (= b_and!294873 (and (=> t!319782 result!278786) b_and!294891)))

(declare-fun tb!229585 () Bool)

(declare-fun t!319784 () Bool)

(assert (=> (and b!3898205 (= (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319784) tb!229585))

(declare-fun result!278788 () Bool)

(assert (= result!278788 result!278778))

(assert (=> d!1155997 t!319784))

(declare-fun b_and!294893 () Bool)

(assert (= b_and!294877 (and (=> t!319784 result!278788) b_and!294893)))

(declare-fun tb!229587 () Bool)

(declare-fun t!319786 () Bool)

(assert (=> (and b!3898838 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319786) tb!229587))

(declare-fun result!278790 () Bool)

(assert (= result!278790 result!278778))

(assert (=> d!1155997 t!319786))

(declare-fun b_and!294895 () Bool)

(assert (= b_and!294881 (and (=> t!319786 result!278790) b_and!294895)))

(assert (=> d!1155997 m!4457935))

(declare-fun m!4460165 () Bool)

(assert (=> d!1155997 m!4460165))

(assert (=> b!3898672 d!1155997))

(declare-fun d!1155999 () Bool)

(assert (=> d!1155999 (= (seqFromList!4699 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358123)))) (fromListB!2164 (originalCharacters!7032 (_1!23431 (get!13674 lt!1358123)))))))

(declare-fun bs!584931 () Bool)

(assert (= bs!584931 d!1155999))

(declare-fun m!4460167 () Bool)

(assert (=> bs!584931 m!4460167))

(assert (=> b!3898672 d!1155999))

(declare-fun d!1156001 () Bool)

(assert (=> d!1156001 (= (inv!55517 (tag!7292 (h!46779 (t!319150 rules!2768)))) (= (mod (str.len (value!203945 (tag!7292 (h!46779 (t!319150 rules!2768))))) 2) 0))))

(assert (=> b!3898837 d!1156001))

(declare-fun d!1156003 () Bool)

(declare-fun res!1577761 () Bool)

(declare-fun e!2411304 () Bool)

(assert (=> d!1156003 (=> (not res!1577761) (not e!2411304))))

(assert (=> d!1156003 (= res!1577761 (semiInverseModEq!2755 (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toValue!8868 (transformation!6432 (h!46779 (t!319150 rules!2768))))))))

(assert (=> d!1156003 (= (inv!55521 (transformation!6432 (h!46779 (t!319150 rules!2768)))) e!2411304)))

(declare-fun b!3900050 () Bool)

(assert (=> b!3900050 (= e!2411304 (equivClasses!2654 (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toValue!8868 (transformation!6432 (h!46779 (t!319150 rules!2768))))))))

(assert (= (and d!1156003 res!1577761) b!3900050))

(declare-fun m!4460169 () Bool)

(assert (=> d!1156003 m!4460169))

(declare-fun m!4460171 () Bool)

(assert (=> b!3900050 m!4460171))

(assert (=> b!3898837 d!1156003))

(declare-fun d!1156005 () Bool)

(declare-fun lt!1358658 () List!41481)

(assert (=> d!1156005 (= (++!10621 (t!319148 lt!1357938) lt!1358658) (tail!5963 lt!1357946))))

(declare-fun e!2411305 () List!41481)

(assert (=> d!1156005 (= lt!1358658 e!2411305)))

(declare-fun c!678031 () Bool)

(assert (=> d!1156005 (= c!678031 ((_ is Cons!41357) (t!319148 lt!1357938)))))

(assert (=> d!1156005 (>= (size!31050 (tail!5963 lt!1357946)) (size!31050 (t!319148 lt!1357938)))))

(assert (=> d!1156005 (= (getSuffix!1982 (tail!5963 lt!1357946) (t!319148 lt!1357938)) lt!1358658)))

(declare-fun b!3900051 () Bool)

(assert (=> b!3900051 (= e!2411305 (getSuffix!1982 (tail!5963 (tail!5963 lt!1357946)) (t!319148 (t!319148 lt!1357938))))))

(declare-fun b!3900052 () Bool)

(assert (=> b!3900052 (= e!2411305 (tail!5963 lt!1357946))))

(assert (= (and d!1156005 c!678031) b!3900051))

(assert (= (and d!1156005 (not c!678031)) b!3900052))

(declare-fun m!4460173 () Bool)

(assert (=> d!1156005 m!4460173))

(assert (=> d!1156005 m!4457675))

(assert (=> d!1156005 m!4458265))

(assert (=> d!1156005 m!4457679))

(assert (=> b!3900051 m!4457675))

(assert (=> b!3900051 m!4458267))

(assert (=> b!3900051 m!4458267))

(declare-fun m!4460175 () Bool)

(assert (=> b!3900051 m!4460175))

(assert (=> b!3898495 d!1156005))

(assert (=> b!3898495 d!1155247))

(declare-fun d!1156007 () Bool)

(declare-fun lt!1358659 () Int)

(assert (=> d!1156007 (>= lt!1358659 0)))

(declare-fun e!2411306 () Int)

(assert (=> d!1156007 (= lt!1358659 e!2411306)))

(declare-fun c!678032 () Bool)

(assert (=> d!1156007 (= c!678032 ((_ is Nil!41358) (_1!23432 lt!1358156)))))

(assert (=> d!1156007 (= (size!31052 (_1!23432 lt!1358156)) lt!1358659)))

(declare-fun b!3900053 () Bool)

(assert (=> b!3900053 (= e!2411306 0)))

(declare-fun b!3900054 () Bool)

(assert (=> b!3900054 (= e!2411306 (+ 1 (size!31052 (t!319149 (_1!23432 lt!1358156)))))))

(assert (= (and d!1156007 c!678032) b!3900053))

(assert (= (and d!1156007 (not c!678032)) b!3900054))

(declare-fun m!4460177 () Bool)

(assert (=> b!3900054 m!4460177))

(assert (=> d!1155193 d!1156007))

(assert (=> d!1155193 d!1155159))

(declare-fun d!1156009 () Bool)

(declare-fun c!678033 () Bool)

(assert (=> d!1156009 (= c!678033 ((_ is Node!12643) (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (value!203946 (_1!23431 (v!39163 lt!1357935)))))))))

(declare-fun e!2411307 () Bool)

(assert (=> d!1156009 (= (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (value!203946 (_1!23431 (v!39163 lt!1357935)))))) e!2411307)))

(declare-fun b!3900055 () Bool)

(assert (=> b!3900055 (= e!2411307 (inv!55528 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (value!203946 (_1!23431 (v!39163 lt!1357935)))))))))

(declare-fun b!3900056 () Bool)

(declare-fun e!2411308 () Bool)

(assert (=> b!3900056 (= e!2411307 e!2411308)))

(declare-fun res!1577762 () Bool)

(assert (=> b!3900056 (= res!1577762 (not ((_ is Leaf!19566) (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (value!203946 (_1!23431 (v!39163 lt!1357935))))))))))

(assert (=> b!3900056 (=> res!1577762 e!2411308)))

(declare-fun b!3900057 () Bool)

(assert (=> b!3900057 (= e!2411308 (inv!55529 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (value!203946 (_1!23431 (v!39163 lt!1357935)))))))))

(assert (= (and d!1156009 c!678033) b!3900055))

(assert (= (and d!1156009 (not c!678033)) b!3900056))

(assert (= (and b!3900056 (not res!1577762)) b!3900057))

(declare-fun m!4460179 () Bool)

(assert (=> b!3900055 m!4460179))

(declare-fun m!4460181 () Bool)

(assert (=> b!3900057 m!4460181))

(assert (=> b!3898503 d!1156009))

(declare-fun d!1156011 () Bool)

(declare-fun res!1577763 () Bool)

(declare-fun e!2411309 () Bool)

(assert (=> d!1156011 (=> (not res!1577763) (not e!2411309))))

(assert (=> d!1156011 (= res!1577763 (not (isEmpty!24580 (originalCharacters!7032 (h!46778 (t!319149 prefixTokens!80))))))))

(assert (=> d!1156011 (= (inv!55520 (h!46778 (t!319149 prefixTokens!80))) e!2411309)))

(declare-fun b!3900058 () Bool)

(declare-fun res!1577764 () Bool)

(assert (=> b!3900058 (=> (not res!1577764) (not e!2411309))))

(assert (=> b!3900058 (= res!1577764 (= (originalCharacters!7032 (h!46778 (t!319149 prefixTokens!80))) (list!15370 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (value!203946 (h!46778 (t!319149 prefixTokens!80)))))))))

(declare-fun b!3900059 () Bool)

(assert (=> b!3900059 (= e!2411309 (= (size!31049 (h!46778 (t!319149 prefixTokens!80))) (size!31050 (originalCharacters!7032 (h!46778 (t!319149 prefixTokens!80))))))))

(assert (= (and d!1156011 res!1577763) b!3900058))

(assert (= (and b!3900058 res!1577764) b!3900059))

(declare-fun b_lambda!113951 () Bool)

(assert (=> (not b_lambda!113951) (not b!3900058)))

(declare-fun t!319788 () Bool)

(declare-fun tb!229589 () Bool)

(assert (=> (and b!3898228 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))) t!319788) tb!229589))

(declare-fun b!3900060 () Bool)

(declare-fun e!2411310 () Bool)

(declare-fun tp!1186556 () Bool)

(assert (=> b!3900060 (= e!2411310 (and (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (value!203946 (h!46778 (t!319149 prefixTokens!80)))))) tp!1186556))))

(declare-fun result!278792 () Bool)

(assert (=> tb!229589 (= result!278792 (and (inv!55525 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (value!203946 (h!46778 (t!319149 prefixTokens!80))))) e!2411310))))

(assert (= tb!229589 b!3900060))

(declare-fun m!4460183 () Bool)

(assert (=> b!3900060 m!4460183))

(declare-fun m!4460185 () Bool)

(assert (=> tb!229589 m!4460185))

(assert (=> b!3900058 t!319788))

(declare-fun b_and!294897 () Bool)

(assert (= b_and!294803 (and (=> t!319788 result!278792) b_and!294897)))

(declare-fun t!319790 () Bool)

(declare-fun tb!229591 () Bool)

(assert (=> (and b!3898210 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))) t!319790) tb!229591))

(declare-fun result!278794 () Bool)

(assert (= result!278794 result!278792))

(assert (=> b!3900058 t!319790))

(declare-fun b_and!294899 () Bool)

(assert (= b_and!294811 (and (=> t!319790 result!278794) b_and!294899)))

(declare-fun tb!229593 () Bool)

(declare-fun t!319792 () Bool)

(assert (=> (and b!3898838 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))) t!319792) tb!229593))

(declare-fun result!278796 () Bool)

(assert (= result!278796 result!278792))

(assert (=> b!3900058 t!319792))

(declare-fun b_and!294901 () Bool)

(assert (= b_and!294805 (and (=> t!319792 result!278796) b_and!294901)))

(declare-fun tb!229595 () Bool)

(declare-fun t!319794 () Bool)

(assert (=> (and b!3898205 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))) t!319794) tb!229595))

(declare-fun result!278798 () Bool)

(assert (= result!278798 result!278792))

(assert (=> b!3900058 t!319794))

(declare-fun b_and!294903 () Bool)

(assert (= b_and!294807 (and (=> t!319794 result!278798) b_and!294903)))

(declare-fun t!319796 () Bool)

(declare-fun tb!229597 () Bool)

(assert (=> (and b!3898822 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))) t!319796) tb!229597))

(declare-fun result!278800 () Bool)

(assert (= result!278800 result!278792))

(assert (=> b!3900058 t!319796))

(declare-fun b_and!294905 () Bool)

(assert (= b_and!294799 (and (=> t!319796 result!278800) b_and!294905)))

(declare-fun t!319798 () Bool)

(declare-fun tb!229599 () Bool)

(assert (=> (and b!3898224 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))) t!319798) tb!229599))

(declare-fun result!278802 () Bool)

(assert (= result!278802 result!278792))

(assert (=> b!3900058 t!319798))

(declare-fun b_and!294907 () Bool)

(assert (= b_and!294801 (and (=> t!319798 result!278802) b_and!294907)))

(declare-fun t!319800 () Bool)

(declare-fun tb!229601 () Bool)

(assert (=> (and b!3898827 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))) t!319800) tb!229601))

(declare-fun result!278804 () Bool)

(assert (= result!278804 result!278792))

(assert (=> b!3900058 t!319800))

(declare-fun b_and!294909 () Bool)

(assert (= b_and!294809 (and (=> t!319800 result!278804) b_and!294909)))

(declare-fun m!4460187 () Bool)

(assert (=> d!1156011 m!4460187))

(declare-fun m!4460189 () Bool)

(assert (=> b!3900058 m!4460189))

(assert (=> b!3900058 m!4460189))

(declare-fun m!4460191 () Bool)

(assert (=> b!3900058 m!4460191))

(declare-fun m!4460193 () Bool)

(assert (=> b!3900059 m!4460193))

(assert (=> b!3898824 d!1156011))

(declare-fun d!1156013 () Bool)

(assert (=> d!1156013 (= (inv!17 (value!203946 (_1!23431 (v!39163 err!4377)))) (= (charsToBigInt!1 (text!47082 (value!203946 (_1!23431 (v!39163 err!4377))))) (value!203938 (value!203946 (_1!23431 (v!39163 err!4377))))))))

(declare-fun bs!584932 () Bool)

(assert (= bs!584932 d!1156013))

(declare-fun m!4460195 () Bool)

(assert (=> bs!584932 m!4460195))

(assert (=> b!3898704 d!1156013))

(declare-fun d!1156015 () Bool)

(assert (=> d!1156015 (= (inv!15 (value!203946 (h!46778 suffixTokens!72))) (= (charsToBigInt!0 (text!47083 (value!203946 (h!46778 suffixTokens!72))) 0) (value!203941 (value!203946 (h!46778 suffixTokens!72)))))))

(declare-fun bs!584933 () Bool)

(assert (= bs!584933 d!1156015))

(declare-fun m!4460197 () Bool)

(assert (=> bs!584933 m!4460197))

(assert (=> b!3898746 d!1156015))

(declare-fun d!1156017 () Bool)

(assert (=> d!1156017 (= (inv!55525 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377))))) (isBalanced!3632 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377)))))))))

(declare-fun bs!584934 () Bool)

(assert (= bs!584934 d!1156017))

(declare-fun m!4460199 () Bool)

(assert (=> bs!584934 m!4460199))

(assert (=> tb!229051 d!1156017))

(declare-fun b!3900061 () Bool)

(declare-fun res!1577770 () Bool)

(declare-fun e!2411315 () Bool)

(assert (=> b!3900061 (=> res!1577770 e!2411315)))

(assert (=> b!3900061 (= res!1577770 (not (isEmpty!24580 (tail!5963 (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946)))))))))

(declare-fun b!3900062 () Bool)

(assert (=> b!3900062 (= e!2411315 (not (= (head!8246 (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946)))) (c!677654 (regex!6432 (h!46779 rules!2768))))))))

(declare-fun b!3900063 () Bool)

(declare-fun res!1577765 () Bool)

(declare-fun e!2411312 () Bool)

(assert (=> b!3900063 (=> res!1577765 e!2411312)))

(declare-fun e!2411317 () Bool)

(assert (=> b!3900063 (= res!1577765 e!2411317)))

(declare-fun res!1577768 () Bool)

(assert (=> b!3900063 (=> (not res!1577768) (not e!2411317))))

(declare-fun lt!1358660 () Bool)

(assert (=> b!3900063 (= res!1577768 lt!1358660)))

(declare-fun b!3900064 () Bool)

(declare-fun res!1577769 () Bool)

(assert (=> b!3900064 (=> res!1577769 e!2411312)))

(assert (=> b!3900064 (= res!1577769 (not ((_ is ElementMatch!11337) (regex!6432 (h!46779 rules!2768)))))))

(declare-fun e!2411313 () Bool)

(assert (=> b!3900064 (= e!2411313 e!2411312)))

(declare-fun b!3900065 () Bool)

(declare-fun e!2411311 () Bool)

(assert (=> b!3900065 (= e!2411312 e!2411311)))

(declare-fun res!1577767 () Bool)

(assert (=> b!3900065 (=> (not res!1577767) (not e!2411311))))

(assert (=> b!3900065 (= res!1577767 (not lt!1358660))))

(declare-fun b!3900066 () Bool)

(declare-fun e!2411314 () Bool)

(assert (=> b!3900066 (= e!2411314 e!2411313)))

(declare-fun c!678034 () Bool)

(assert (=> b!3900066 (= c!678034 ((_ is EmptyLang!11337) (regex!6432 (h!46779 rules!2768))))))

(declare-fun b!3900067 () Bool)

(declare-fun res!1577766 () Bool)

(assert (=> b!3900067 (=> (not res!1577766) (not e!2411317))))

(assert (=> b!3900067 (= res!1577766 (isEmpty!24580 (tail!5963 (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946))))))))

(declare-fun b!3900068 () Bool)

(declare-fun call!283838 () Bool)

(assert (=> b!3900068 (= e!2411314 (= lt!1358660 call!283838))))

(declare-fun b!3900069 () Bool)

(assert (=> b!3900069 (= e!2411317 (= (head!8246 (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946)))) (c!677654 (regex!6432 (h!46779 rules!2768)))))))

(declare-fun bm!283833 () Bool)

(assert (=> bm!283833 (= call!283838 (isEmpty!24580 (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946)))))))

(declare-fun b!3900070 () Bool)

(declare-fun e!2411316 () Bool)

(assert (=> b!3900070 (= e!2411316 (matchR!5432 (derivativeStep!3430 (regex!6432 (h!46779 rules!2768)) (head!8246 (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946))))) (tail!5963 (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946))))))))

(declare-fun b!3900071 () Bool)

(declare-fun res!1577772 () Bool)

(assert (=> b!3900071 (=> (not res!1577772) (not e!2411317))))

(assert (=> b!3900071 (= res!1577772 (not call!283838))))

(declare-fun b!3900072 () Bool)

(assert (=> b!3900072 (= e!2411313 (not lt!1358660))))

(declare-fun b!3900073 () Bool)

(assert (=> b!3900073 (= e!2411311 e!2411315)))

(declare-fun res!1577771 () Bool)

(assert (=> b!3900073 (=> res!1577771 e!2411315)))

(assert (=> b!3900073 (= res!1577771 call!283838)))

(declare-fun d!1156019 () Bool)

(assert (=> d!1156019 e!2411314))

(declare-fun c!678035 () Bool)

(assert (=> d!1156019 (= c!678035 ((_ is EmptyExpr!11337) (regex!6432 (h!46779 rules!2768))))))

(assert (=> d!1156019 (= lt!1358660 e!2411316)))

(declare-fun c!678036 () Bool)

(assert (=> d!1156019 (= c!678036 (isEmpty!24580 (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946)))))))

(assert (=> d!1156019 (validRegex!5153 (regex!6432 (h!46779 rules!2768)))))

(assert (=> d!1156019 (= (matchR!5432 (regex!6432 (h!46779 rules!2768)) (_1!23434 (findLongestMatchInner!1220 (regex!6432 (h!46779 rules!2768)) Nil!41357 (size!31050 Nil!41357) lt!1357946 lt!1357946 (size!31050 lt!1357946)))) lt!1358660)))

(declare-fun b!3900074 () Bool)

(assert (=> b!3900074 (= e!2411316 (nullable!3954 (regex!6432 (h!46779 rules!2768))))))

(assert (= (and d!1156019 c!678036) b!3900074))

(assert (= (and d!1156019 (not c!678036)) b!3900070))

(assert (= (and d!1156019 c!678035) b!3900068))

(assert (= (and d!1156019 (not c!678035)) b!3900066))

(assert (= (and b!3900066 c!678034) b!3900072))

(assert (= (and b!3900066 (not c!678034)) b!3900064))

(assert (= (and b!3900064 (not res!1577769)) b!3900063))

(assert (= (and b!3900063 res!1577768) b!3900071))

(assert (= (and b!3900071 res!1577772) b!3900067))

(assert (= (and b!3900067 res!1577766) b!3900069))

(assert (= (and b!3900063 (not res!1577765)) b!3900065))

(assert (= (and b!3900065 res!1577767) b!3900073))

(assert (= (and b!3900073 (not res!1577771)) b!3900061))

(assert (= (and b!3900061 (not res!1577770)) b!3900062))

(assert (= (or b!3900068 b!3900073 b!3900071) bm!283833))

(assert (=> d!1156019 m!4457931))

(assert (=> d!1156019 m!4458469))

(assert (=> b!3900074 m!4458471))

(declare-fun m!4460201 () Bool)

(assert (=> b!3900061 m!4460201))

(assert (=> b!3900061 m!4460201))

(declare-fun m!4460203 () Bool)

(assert (=> b!3900061 m!4460203))

(assert (=> b!3900067 m!4460201))

(assert (=> b!3900067 m!4460201))

(assert (=> b!3900067 m!4460203))

(assert (=> bm!283833 m!4457931))

(declare-fun m!4460205 () Bool)

(assert (=> b!3900069 m!4460205))

(assert (=> b!3900070 m!4460205))

(assert (=> b!3900070 m!4460205))

(declare-fun m!4460207 () Bool)

(assert (=> b!3900070 m!4460207))

(assert (=> b!3900070 m!4460201))

(assert (=> b!3900070 m!4460207))

(assert (=> b!3900070 m!4460201))

(declare-fun m!4460209 () Bool)

(assert (=> b!3900070 m!4460209))

(assert (=> b!3900062 m!4460205))

(assert (=> b!3898668 d!1156019))

(assert (=> b!3898668 d!1155681))

(assert (=> b!3898668 d!1155679))

(assert (=> b!3898668 d!1155233))

(declare-fun d!1156021 () Bool)

(declare-fun lt!1358661 () Int)

(assert (=> d!1156021 (>= lt!1358661 0)))

(declare-fun e!2411318 () Int)

(assert (=> d!1156021 (= lt!1358661 e!2411318)))

(declare-fun c!678037 () Bool)

(assert (=> d!1156021 (= c!678037 ((_ is Nil!41357) lt!1358159))))

(assert (=> d!1156021 (= (size!31050 lt!1358159) lt!1358661)))

(declare-fun b!3900075 () Bool)

(assert (=> b!3900075 (= e!2411318 0)))

(declare-fun b!3900076 () Bool)

(assert (=> b!3900076 (= e!2411318 (+ 1 (size!31050 (t!319148 lt!1358159))))))

(assert (= (and d!1156021 c!678037) b!3900075))

(assert (= (and d!1156021 (not c!678037)) b!3900076))

(declare-fun m!4460211 () Bool)

(assert (=> b!3900076 m!4460211))

(assert (=> b!3898763 d!1156021))

(assert (=> b!3898763 d!1155849))

(assert (=> b!3898763 d!1155671))

(assert (=> b!3898688 d!1155571))

(assert (=> b!3898688 d!1155573))

(assert (=> b!3898688 d!1155231))

(declare-fun b!3900077 () Bool)

(declare-fun e!2411319 () Bool)

(declare-fun tp!1186557 () Bool)

(assert (=> b!3900077 (= e!2411319 (and tp_is_empty!19645 tp!1186557))))

(assert (=> b!3898777 (= tp!1186316 e!2411319)))

(assert (= (and b!3898777 ((_ is Cons!41357) (t!319148 (t!319148 suffixResult!91)))) b!3900077))

(declare-fun b!3900086 () Bool)

(declare-fun tp!1186566 () Bool)

(declare-fun tp!1186564 () Bool)

(declare-fun e!2411325 () Bool)

(assert (=> b!3900086 (= e!2411325 (and (inv!55524 (left!31693 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72)))))) tp!1186566 (inv!55524 (right!32023 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72)))))) tp!1186564))))

(declare-fun b!3900088 () Bool)

(declare-fun e!2411324 () Bool)

(declare-fun tp!1186565 () Bool)

(assert (=> b!3900088 (= e!2411324 tp!1186565)))

(declare-fun b!3900087 () Bool)

(declare-fun inv!55531 (IArray!25291) Bool)

(assert (=> b!3900087 (= e!2411325 (and (inv!55531 (xs!15949 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72)))))) e!2411324))))

(assert (=> b!3898680 (= tp!1186311 (and (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72))))) e!2411325))))

(assert (= (and b!3898680 ((_ is Node!12643) (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72)))))) b!3900086))

(assert (= b!3900087 b!3900088))

(assert (= (and b!3898680 ((_ is Leaf!19566) (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (value!203946 (h!46778 suffixTokens!72)))))) b!3900087))

(declare-fun m!4460213 () Bool)

(assert (=> b!3900086 m!4460213))

(declare-fun m!4460215 () Bool)

(assert (=> b!3900086 m!4460215))

(declare-fun m!4460217 () Bool)

(assert (=> b!3900087 m!4460217))

(assert (=> b!3898680 m!4457941))

(declare-fun b!3900092 () Bool)

(declare-fun e!2411326 () Bool)

(declare-fun tp!1186569 () Bool)

(declare-fun tp!1186567 () Bool)

(assert (=> b!3900092 (= e!2411326 (and tp!1186569 tp!1186567))))

(assert (=> b!3898794 (= tp!1186336 e!2411326)))

(declare-fun b!3900091 () Bool)

(declare-fun tp!1186571 () Bool)

(assert (=> b!3900091 (= e!2411326 tp!1186571)))

(declare-fun b!3900090 () Bool)

(declare-fun tp!1186570 () Bool)

(declare-fun tp!1186568 () Bool)

(assert (=> b!3900090 (= e!2411326 (and tp!1186570 tp!1186568))))

(declare-fun b!3900089 () Bool)

(assert (=> b!3900089 (= e!2411326 tp_is_empty!19645)))

(assert (= (and b!3898794 ((_ is ElementMatch!11337) (regOne!23186 (regex!6432 (h!46779 rules!2768))))) b!3900089))

(assert (= (and b!3898794 ((_ is Concat!18000) (regOne!23186 (regex!6432 (h!46779 rules!2768))))) b!3900090))

(assert (= (and b!3898794 ((_ is Star!11337) (regOne!23186 (regex!6432 (h!46779 rules!2768))))) b!3900091))

(assert (= (and b!3898794 ((_ is Union!11337) (regOne!23186 (regex!6432 (h!46779 rules!2768))))) b!3900092))

(declare-fun b!3900096 () Bool)

(declare-fun e!2411327 () Bool)

(declare-fun tp!1186574 () Bool)

(declare-fun tp!1186572 () Bool)

(assert (=> b!3900096 (= e!2411327 (and tp!1186574 tp!1186572))))

(assert (=> b!3898794 (= tp!1186334 e!2411327)))

(declare-fun b!3900095 () Bool)

(declare-fun tp!1186576 () Bool)

(assert (=> b!3900095 (= e!2411327 tp!1186576)))

(declare-fun b!3900094 () Bool)

(declare-fun tp!1186575 () Bool)

(declare-fun tp!1186573 () Bool)

(assert (=> b!3900094 (= e!2411327 (and tp!1186575 tp!1186573))))

(declare-fun b!3900093 () Bool)

(assert (=> b!3900093 (= e!2411327 tp_is_empty!19645)))

(assert (= (and b!3898794 ((_ is ElementMatch!11337) (regTwo!23186 (regex!6432 (h!46779 rules!2768))))) b!3900093))

(assert (= (and b!3898794 ((_ is Concat!18000) (regTwo!23186 (regex!6432 (h!46779 rules!2768))))) b!3900094))

(assert (= (and b!3898794 ((_ is Star!11337) (regTwo!23186 (regex!6432 (h!46779 rules!2768))))) b!3900095))

(assert (= (and b!3898794 ((_ is Union!11337) (regTwo!23186 (regex!6432 (h!46779 rules!2768))))) b!3900096))

(declare-fun b!3900100 () Bool)

(declare-fun e!2411328 () Bool)

(declare-fun tp!1186579 () Bool)

(declare-fun tp!1186577 () Bool)

(assert (=> b!3900100 (= e!2411328 (and tp!1186579 tp!1186577))))

(assert (=> b!3898821 (= tp!1186363 e!2411328)))

(declare-fun b!3900099 () Bool)

(declare-fun tp!1186581 () Bool)

(assert (=> b!3900099 (= e!2411328 tp!1186581)))

(declare-fun b!3900098 () Bool)

(declare-fun tp!1186580 () Bool)

(declare-fun tp!1186578 () Bool)

(assert (=> b!3900098 (= e!2411328 (and tp!1186580 tp!1186578))))

(declare-fun b!3900097 () Bool)

(assert (=> b!3900097 (= e!2411328 tp_is_empty!19645)))

(assert (= (and b!3898821 ((_ is ElementMatch!11337) (regex!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))) b!3900097))

(assert (= (and b!3898821 ((_ is Concat!18000) (regex!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))) b!3900098))

(assert (= (and b!3898821 ((_ is Star!11337) (regex!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))) b!3900099))

(assert (= (and b!3898821 ((_ is Union!11337) (regex!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))) b!3900100))

(declare-fun b!3900101 () Bool)

(declare-fun e!2411329 () Bool)

(declare-fun tp!1186582 () Bool)

(assert (=> b!3900101 (= e!2411329 (and tp_is_empty!19645 tp!1186582))))

(assert (=> b!3898820 (= tp!1186364 e!2411329)))

(assert (= (and b!3898820 ((_ is Cons!41357) (originalCharacters!7032 (h!46778 (t!319149 suffixTokens!72))))) b!3900101))

(declare-fun b!3900105 () Bool)

(declare-fun b_free!105597 () Bool)

(declare-fun b_next!106301 () Bool)

(assert (=> b!3900105 (= b_free!105597 (not b_next!106301))))

(declare-fun t!319802 () Bool)

(declare-fun tb!229603 () Bool)

(assert (=> (and b!3900105 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319802) tb!229603))

(declare-fun result!278808 () Bool)

(assert (= result!278808 result!278750))

(assert (=> d!1155853 t!319802))

(declare-fun tb!229605 () Bool)

(declare-fun t!319804 () Bool)

(assert (=> (and b!3900105 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319804) tb!229605))

(declare-fun result!278810 () Bool)

(assert (= result!278810 result!278764))

(assert (=> d!1155957 t!319804))

(declare-fun t!319806 () Bool)

(declare-fun tb!229607 () Bool)

(assert (=> (and b!3900105 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319806) tb!229607))

(declare-fun result!278812 () Bool)

(assert (= result!278812 result!278736))

(assert (=> d!1155839 t!319806))

(declare-fun tb!229609 () Bool)

(declare-fun t!319808 () Bool)

(assert (=> (and b!3900105 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319808) tb!229609))

(declare-fun result!278814 () Bool)

(assert (= result!278814 result!278152))

(assert (=> d!1155093 t!319808))

(declare-fun t!319810 () Bool)

(declare-fun tb!229611 () Bool)

(assert (=> (and b!3900105 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319810) tb!229611))

(declare-fun result!278816 () Bool)

(assert (= result!278816 result!278778))

(assert (=> d!1155997 t!319810))

(declare-fun t!319812 () Bool)

(declare-fun tb!229613 () Bool)

(assert (=> (and b!3900105 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768)))) t!319812) tb!229613))

(declare-fun result!278818 () Bool)

(assert (= result!278818 result!278722))

(assert (=> d!1155763 t!319812))

(declare-fun t!319814 () Bool)

(declare-fun tb!229615 () Bool)

(assert (=> (and b!3900105 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319814) tb!229615))

(declare-fun result!278820 () Bool)

(assert (= result!278820 result!278550))

(assert (=> d!1155603 t!319814))

(assert (=> d!1155767 t!319812))

(declare-fun b_and!294911 () Bool)

(declare-fun tp!1186587 () Bool)

(assert (=> b!3900105 (= tp!1186587 (and (=> t!319808 result!278814) (=> t!319810 result!278816) (=> t!319812 result!278818) (=> t!319802 result!278808) (=> t!319806 result!278812) (=> t!319804 result!278810) (=> t!319814 result!278820) b_and!294911))))

(declare-fun b_free!105599 () Bool)

(declare-fun b_next!106303 () Bool)

(assert (=> b!3900105 (= b_free!105599 (not b_next!106303))))

(declare-fun t!319816 () Bool)

(declare-fun tb!229617 () Bool)

(assert (=> (and b!3900105 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) t!319816) tb!229617))

(declare-fun result!278822 () Bool)

(assert (= result!278822 result!278244))

(assert (=> b!3898749 t!319816))

(declare-fun tb!229619 () Bool)

(declare-fun t!319818 () Bool)

(assert (=> (and b!3900105 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319818) tb!229619))

(declare-fun result!278824 () Bool)

(assert (= result!278824 result!278162))

(assert (=> d!1155099 t!319818))

(declare-fun t!319820 () Bool)

(declare-fun tb!229621 () Bool)

(assert (=> (and b!3900105 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319820) tb!229621))

(declare-fun result!278826 () Bool)

(assert (= result!278826 result!278312))

(assert (=> d!1155237 t!319820))

(declare-fun t!319822 () Bool)

(declare-fun tb!229623 () Bool)

(assert (=> (and b!3900105 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))) t!319822) tb!229623))

(declare-fun result!278828 () Bool)

(assert (= result!278828 result!278792))

(assert (=> b!3900058 t!319822))

(declare-fun t!319824 () Bool)

(declare-fun tb!229625 () Bool)

(assert (=> (and b!3900105 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319824) tb!229625))

(declare-fun result!278830 () Bool)

(assert (= result!278830 result!278368))

(assert (=> d!1155315 t!319824))

(declare-fun t!319826 () Bool)

(declare-fun tb!229627 () Bool)

(assert (=> (and b!3900105 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) t!319826) tb!229627))

(declare-fun result!278832 () Bool)

(assert (= result!278832 result!278252))

(assert (=> b!3898770 t!319826))

(declare-fun t!319828 () Bool)

(declare-fun tb!229629 () Bool)

(assert (=> (and b!3900105 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) t!319828) tb!229629))

(declare-fun result!278834 () Bool)

(assert (= result!278834 result!278236))

(assert (=> b!3898678 t!319828))

(declare-fun t!319830 () Bool)

(declare-fun tb!229631 () Bool)

(assert (=> (and b!3900105 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319830) tb!229631))

(declare-fun result!278836 () Bool)

(assert (= result!278836 result!278524))

(assert (=> d!1155573 t!319830))

(declare-fun t!319832 () Bool)

(declare-fun tb!229633 () Bool)

(assert (=> (and b!3900105 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))) t!319832) tb!229633))

(declare-fun result!278838 () Bool)

(assert (= result!278838 result!278354))

(assert (=> b!3898936 t!319832))

(declare-fun t!319834 () Bool)

(declare-fun tb!229635 () Bool)

(assert (=> (and b!3900105 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319834) tb!229635))

(declare-fun result!278840 () Bool)

(assert (= result!278840 result!278326))

(assert (=> d!1155257 t!319834))

(declare-fun t!319836 () Bool)

(declare-fun tb!229637 () Bool)

(assert (=> (and b!3900105 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319836) tb!229637))

(declare-fun result!278842 () Bool)

(assert (= result!278842 result!278340))

(assert (=> d!1155269 t!319836))

(declare-fun t!319838 () Bool)

(declare-fun tb!229639 () Bool)

(assert (=> (and b!3900105 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toChars!8727 (transformation!6432 (h!46779 rules!2768)))) t!319838) tb!229639))

(declare-fun result!278844 () Bool)

(assert (= result!278844 result!278708))

(assert (=> d!1155763 t!319838))

(declare-fun tp!1186586 () Bool)

(declare-fun b_and!294913 () Bool)

(assert (=> b!3900105 (= tp!1186586 (and (=> t!319830 result!278836) (=> t!319816 result!278822) (=> t!319832 result!278838) (=> t!319824 result!278830) (=> t!319838 result!278844) (=> t!319836 result!278842) (=> t!319834 result!278840) (=> t!319822 result!278828) (=> t!319828 result!278834) (=> t!319818 result!278824) (=> t!319826 result!278832) (=> t!319820 result!278826) b_and!294913))))

(declare-fun e!2411334 () Bool)

(assert (=> b!3898819 (= tp!1186362 e!2411334)))

(declare-fun e!2411333 () Bool)

(assert (=> b!3900105 (= e!2411333 (and tp!1186587 tp!1186586))))

(declare-fun b!3900102 () Bool)

(declare-fun e!2411330 () Bool)

(declare-fun tp!1186583 () Bool)

(assert (=> b!3900102 (= e!2411334 (and (inv!55520 (h!46778 (t!319149 (t!319149 suffixTokens!72)))) e!2411330 tp!1186583))))

(declare-fun b!3900103 () Bool)

(declare-fun e!2411335 () Bool)

(declare-fun tp!1186585 () Bool)

(assert (=> b!3900103 (= e!2411330 (and (inv!21 (value!203946 (h!46778 (t!319149 (t!319149 suffixTokens!72))))) e!2411335 tp!1186585))))

(declare-fun tp!1186584 () Bool)

(declare-fun b!3900104 () Bool)

(assert (=> b!3900104 (= e!2411335 (and tp!1186584 (inv!55517 (tag!7292 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (inv!55521 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) e!2411333))))

(assert (= b!3900104 b!3900105))

(assert (= b!3900103 b!3900104))

(assert (= b!3900102 b!3900103))

(assert (= (and b!3898819 ((_ is Cons!41358) (t!319149 (t!319149 suffixTokens!72)))) b!3900102))

(declare-fun m!4460219 () Bool)

(assert (=> b!3900102 m!4460219))

(declare-fun m!4460221 () Bool)

(assert (=> b!3900103 m!4460221))

(declare-fun m!4460223 () Bool)

(assert (=> b!3900104 m!4460223))

(declare-fun m!4460225 () Bool)

(assert (=> b!3900104 m!4460225))

(declare-fun b!3900106 () Bool)

(declare-fun e!2411336 () Bool)

(declare-fun tp!1186588 () Bool)

(assert (=> b!3900106 (= e!2411336 (and tp_is_empty!19645 tp!1186588))))

(assert (=> b!3898792 (= tp!1186332 e!2411336)))

(assert (= (and b!3898792 ((_ is Cons!41357) (t!319148 (t!319148 prefix!426)))) b!3900106))

(declare-fun b!3900110 () Bool)

(declare-fun e!2411337 () Bool)

(declare-fun tp!1186591 () Bool)

(declare-fun tp!1186589 () Bool)

(assert (=> b!3900110 (= e!2411337 (and tp!1186591 tp!1186589))))

(assert (=> b!3898799 (= tp!1186342 e!2411337)))

(declare-fun b!3900109 () Bool)

(declare-fun tp!1186593 () Bool)

(assert (=> b!3900109 (= e!2411337 tp!1186593)))

(declare-fun b!3900108 () Bool)

(declare-fun tp!1186592 () Bool)

(declare-fun tp!1186590 () Bool)

(assert (=> b!3900108 (= e!2411337 (and tp!1186592 tp!1186590))))

(declare-fun b!3900107 () Bool)

(assert (=> b!3900107 (= e!2411337 tp_is_empty!19645)))

(assert (= (and b!3898799 ((_ is ElementMatch!11337) (regOne!23186 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900107))

(assert (= (and b!3898799 ((_ is Concat!18000) (regOne!23186 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900108))

(assert (= (and b!3898799 ((_ is Star!11337) (regOne!23186 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900109))

(assert (= (and b!3898799 ((_ is Union!11337) (regOne!23186 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900110))

(declare-fun b!3900114 () Bool)

(declare-fun e!2411338 () Bool)

(declare-fun tp!1186596 () Bool)

(declare-fun tp!1186594 () Bool)

(assert (=> b!3900114 (= e!2411338 (and tp!1186596 tp!1186594))))

(assert (=> b!3898799 (= tp!1186340 e!2411338)))

(declare-fun b!3900113 () Bool)

(declare-fun tp!1186598 () Bool)

(assert (=> b!3900113 (= e!2411338 tp!1186598)))

(declare-fun b!3900112 () Bool)

(declare-fun tp!1186597 () Bool)

(declare-fun tp!1186595 () Bool)

(assert (=> b!3900112 (= e!2411338 (and tp!1186597 tp!1186595))))

(declare-fun b!3900111 () Bool)

(assert (=> b!3900111 (= e!2411338 tp_is_empty!19645)))

(assert (= (and b!3898799 ((_ is ElementMatch!11337) (regTwo!23186 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900111))

(assert (= (and b!3898799 ((_ is Concat!18000) (regTwo!23186 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900112))

(assert (= (and b!3898799 ((_ is Star!11337) (regTwo!23186 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900113))

(assert (= (and b!3898799 ((_ is Union!11337) (regTwo!23186 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900114))

(declare-fun b!3900115 () Bool)

(declare-fun e!2411339 () Bool)

(declare-fun tp!1186599 () Bool)

(assert (=> b!3900115 (= e!2411339 (and tp_is_empty!19645 tp!1186599))))

(assert (=> b!3898808 (= tp!1186351 e!2411339)))

(assert (= (and b!3898808 ((_ is Cons!41357) (t!319148 (t!319148 suffix!1176)))) b!3900115))

(declare-fun b!3900116 () Bool)

(declare-fun e!2411340 () Bool)

(declare-fun tp!1186600 () Bool)

(assert (=> b!3900116 (= e!2411340 (and tp_is_empty!19645 tp!1186600))))

(assert (=> b!3898823 (= tp!1186367 e!2411340)))

(assert (= (and b!3898823 ((_ is Cons!41357) (t!319148 (originalCharacters!7032 (h!46778 prefixTokens!80))))) b!3900116))

(declare-fun b!3900120 () Bool)

(declare-fun e!2411341 () Bool)

(declare-fun tp!1186603 () Bool)

(declare-fun tp!1186601 () Bool)

(assert (=> b!3900120 (= e!2411341 (and tp!1186603 tp!1186601))))

(assert (=> b!3898801 (= tp!1186341 e!2411341)))

(declare-fun b!3900119 () Bool)

(declare-fun tp!1186605 () Bool)

(assert (=> b!3900119 (= e!2411341 tp!1186605)))

(declare-fun b!3900118 () Bool)

(declare-fun tp!1186604 () Bool)

(declare-fun tp!1186602 () Bool)

(assert (=> b!3900118 (= e!2411341 (and tp!1186604 tp!1186602))))

(declare-fun b!3900117 () Bool)

(assert (=> b!3900117 (= e!2411341 tp_is_empty!19645)))

(assert (= (and b!3898801 ((_ is ElementMatch!11337) (regOne!23187 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900117))

(assert (= (and b!3898801 ((_ is Concat!18000) (regOne!23187 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900118))

(assert (= (and b!3898801 ((_ is Star!11337) (regOne!23187 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900119))

(assert (= (and b!3898801 ((_ is Union!11337) (regOne!23187 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900120))

(declare-fun b!3900124 () Bool)

(declare-fun e!2411342 () Bool)

(declare-fun tp!1186608 () Bool)

(declare-fun tp!1186606 () Bool)

(assert (=> b!3900124 (= e!2411342 (and tp!1186608 tp!1186606))))

(assert (=> b!3898801 (= tp!1186339 e!2411342)))

(declare-fun b!3900123 () Bool)

(declare-fun tp!1186610 () Bool)

(assert (=> b!3900123 (= e!2411342 tp!1186610)))

(declare-fun b!3900122 () Bool)

(declare-fun tp!1186609 () Bool)

(declare-fun tp!1186607 () Bool)

(assert (=> b!3900122 (= e!2411342 (and tp!1186609 tp!1186607))))

(declare-fun b!3900121 () Bool)

(assert (=> b!3900121 (= e!2411342 tp_is_empty!19645)))

(assert (= (and b!3898801 ((_ is ElementMatch!11337) (regTwo!23187 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900121))

(assert (= (and b!3898801 ((_ is Concat!18000) (regTwo!23187 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900122))

(assert (= (and b!3898801 ((_ is Star!11337) (regTwo!23187 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900123))

(assert (= (and b!3898801 ((_ is Union!11337) (regTwo!23187 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900124))

(declare-fun b!3900128 () Bool)

(declare-fun e!2411343 () Bool)

(declare-fun tp!1186613 () Bool)

(declare-fun tp!1186611 () Bool)

(assert (=> b!3900128 (= e!2411343 (and tp!1186613 tp!1186611))))

(assert (=> b!3898800 (= tp!1186343 e!2411343)))

(declare-fun b!3900127 () Bool)

(declare-fun tp!1186615 () Bool)

(assert (=> b!3900127 (= e!2411343 tp!1186615)))

(declare-fun b!3900126 () Bool)

(declare-fun tp!1186614 () Bool)

(declare-fun tp!1186612 () Bool)

(assert (=> b!3900126 (= e!2411343 (and tp!1186614 tp!1186612))))

(declare-fun b!3900125 () Bool)

(assert (=> b!3900125 (= e!2411343 tp_is_empty!19645)))

(assert (= (and b!3898800 ((_ is ElementMatch!11337) (reg!11666 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900125))

(assert (= (and b!3898800 ((_ is Concat!18000) (reg!11666 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900126))

(assert (= (and b!3898800 ((_ is Star!11337) (reg!11666 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900127))

(assert (= (and b!3898800 ((_ is Union!11337) (reg!11666 (regex!6432 (rule!9336 (h!46778 prefixTokens!80)))))) b!3900128))

(declare-fun b!3900129 () Bool)

(declare-fun e!2411344 () Bool)

(declare-fun tp!1186616 () Bool)

(assert (=> b!3900129 (= e!2411344 (and tp_is_empty!19645 tp!1186616))))

(assert (=> b!3898806 (= tp!1186349 e!2411344)))

(assert (= (and b!3898806 ((_ is Cons!41357) (t!319148 (originalCharacters!7032 (h!46778 suffixTokens!72))))) b!3900129))

(declare-fun tp!1186617 () Bool)

(declare-fun b!3900130 () Bool)

(declare-fun e!2411346 () Bool)

(declare-fun tp!1186619 () Bool)

(assert (=> b!3900130 (= e!2411346 (and (inv!55524 (left!31693 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80)))))) tp!1186619 (inv!55524 (right!32023 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80)))))) tp!1186617))))

(declare-fun b!3900132 () Bool)

(declare-fun e!2411345 () Bool)

(declare-fun tp!1186618 () Bool)

(assert (=> b!3900132 (= e!2411345 tp!1186618)))

(declare-fun b!3900131 () Bool)

(assert (=> b!3900131 (= e!2411346 (and (inv!55531 (xs!15949 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80)))))) e!2411345))))

(assert (=> b!3898772 (= tp!1186313 (and (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80))))) e!2411346))))

(assert (= (and b!3898772 ((_ is Node!12643) (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80)))))) b!3900130))

(assert (= b!3900131 b!3900132))

(assert (= (and b!3898772 ((_ is Leaf!19566) (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (value!203946 (h!46778 prefixTokens!80)))))) b!3900131))

(declare-fun m!4460227 () Bool)

(assert (=> b!3900130 m!4460227))

(declare-fun m!4460229 () Bool)

(assert (=> b!3900130 m!4460229))

(declare-fun m!4460231 () Bool)

(assert (=> b!3900131 m!4460231))

(assert (=> b!3898772 m!4458141))

(declare-fun tp!1186622 () Bool)

(declare-fun e!2411348 () Bool)

(declare-fun b!3900133 () Bool)

(declare-fun tp!1186620 () Bool)

(assert (=> b!3900133 (= e!2411348 (and (inv!55524 (left!31693 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377))))))) tp!1186622 (inv!55524 (right!32023 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377))))))) tp!1186620))))

(declare-fun b!3900135 () Bool)

(declare-fun e!2411347 () Bool)

(declare-fun tp!1186621 () Bool)

(assert (=> b!3900135 (= e!2411347 tp!1186621)))

(declare-fun b!3900134 () Bool)

(assert (=> b!3900134 (= e!2411348 (and (inv!55531 (xs!15949 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377))))))) e!2411347))))

(assert (=> b!3898751 (= tp!1186312 (and (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377)))))) e!2411348))))

(assert (= (and b!3898751 ((_ is Node!12643) (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377))))))) b!3900133))

(assert (= b!3900134 b!3900135))

(assert (= (and b!3898751 ((_ is Leaf!19566) (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (value!203946 (_1!23431 (v!39163 err!4377))))))) b!3900134))

(declare-fun m!4460233 () Bool)

(assert (=> b!3900133 m!4460233))

(declare-fun m!4460235 () Bool)

(assert (=> b!3900133 m!4460235))

(declare-fun m!4460237 () Bool)

(assert (=> b!3900134 m!4460237))

(assert (=> b!3898751 m!4458093))

(declare-fun b!3900139 () Bool)

(declare-fun e!2411349 () Bool)

(declare-fun tp!1186625 () Bool)

(declare-fun tp!1186623 () Bool)

(assert (=> b!3900139 (= e!2411349 (and tp!1186625 tp!1186623))))

(assert (=> b!3898791 (= tp!1186329 e!2411349)))

(declare-fun b!3900138 () Bool)

(declare-fun tp!1186627 () Bool)

(assert (=> b!3900138 (= e!2411349 tp!1186627)))

(declare-fun b!3900137 () Bool)

(declare-fun tp!1186626 () Bool)

(declare-fun tp!1186624 () Bool)

(assert (=> b!3900137 (= e!2411349 (and tp!1186626 tp!1186624))))

(declare-fun b!3900136 () Bool)

(assert (=> b!3900136 (= e!2411349 tp_is_empty!19645)))

(assert (= (and b!3898791 ((_ is ElementMatch!11337) (regOne!23187 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900136))

(assert (= (and b!3898791 ((_ is Concat!18000) (regOne!23187 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900137))

(assert (= (and b!3898791 ((_ is Star!11337) (regOne!23187 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900138))

(assert (= (and b!3898791 ((_ is Union!11337) (regOne!23187 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900139))

(declare-fun b!3900143 () Bool)

(declare-fun e!2411350 () Bool)

(declare-fun tp!1186630 () Bool)

(declare-fun tp!1186628 () Bool)

(assert (=> b!3900143 (= e!2411350 (and tp!1186630 tp!1186628))))

(assert (=> b!3898791 (= tp!1186327 e!2411350)))

(declare-fun b!3900142 () Bool)

(declare-fun tp!1186632 () Bool)

(assert (=> b!3900142 (= e!2411350 tp!1186632)))

(declare-fun b!3900141 () Bool)

(declare-fun tp!1186631 () Bool)

(declare-fun tp!1186629 () Bool)

(assert (=> b!3900141 (= e!2411350 (and tp!1186631 tp!1186629))))

(declare-fun b!3900140 () Bool)

(assert (=> b!3900140 (= e!2411350 tp_is_empty!19645)))

(assert (= (and b!3898791 ((_ is ElementMatch!11337) (regTwo!23187 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900140))

(assert (= (and b!3898791 ((_ is Concat!18000) (regTwo!23187 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900141))

(assert (= (and b!3898791 ((_ is Star!11337) (regTwo!23187 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900142))

(assert (= (and b!3898791 ((_ is Union!11337) (regTwo!23187 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900143))

(declare-fun b!3900144 () Bool)

(declare-fun e!2411351 () Bool)

(declare-fun tp!1186633 () Bool)

(assert (=> b!3900144 (= e!2411351 (and tp_is_empty!19645 tp!1186633))))

(assert (=> b!3898807 (= tp!1186350 e!2411351)))

(assert (= (and b!3898807 ((_ is Cons!41357) (t!319148 (_2!23431 (v!39163 err!4377))))) b!3900144))

(declare-fun b!3900148 () Bool)

(declare-fun e!2411352 () Bool)

(declare-fun tp!1186636 () Bool)

(declare-fun tp!1186634 () Bool)

(assert (=> b!3900148 (= e!2411352 (and tp!1186636 tp!1186634))))

(assert (=> b!3898790 (= tp!1186331 e!2411352)))

(declare-fun b!3900147 () Bool)

(declare-fun tp!1186638 () Bool)

(assert (=> b!3900147 (= e!2411352 tp!1186638)))

(declare-fun b!3900146 () Bool)

(declare-fun tp!1186637 () Bool)

(declare-fun tp!1186635 () Bool)

(assert (=> b!3900146 (= e!2411352 (and tp!1186637 tp!1186635))))

(declare-fun b!3900145 () Bool)

(assert (=> b!3900145 (= e!2411352 tp_is_empty!19645)))

(assert (= (and b!3898790 ((_ is ElementMatch!11337) (reg!11666 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900145))

(assert (= (and b!3898790 ((_ is Concat!18000) (reg!11666 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900146))

(assert (= (and b!3898790 ((_ is Star!11337) (reg!11666 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900147))

(assert (= (and b!3898790 ((_ is Union!11337) (reg!11666 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900148))

(declare-fun b!3900152 () Bool)

(declare-fun e!2411353 () Bool)

(declare-fun tp!1186641 () Bool)

(declare-fun tp!1186639 () Bool)

(assert (=> b!3900152 (= e!2411353 (and tp!1186641 tp!1186639))))

(assert (=> b!3898837 (= tp!1186382 e!2411353)))

(declare-fun b!3900151 () Bool)

(declare-fun tp!1186643 () Bool)

(assert (=> b!3900151 (= e!2411353 tp!1186643)))

(declare-fun b!3900150 () Bool)

(declare-fun tp!1186642 () Bool)

(declare-fun tp!1186640 () Bool)

(assert (=> b!3900150 (= e!2411353 (and tp!1186642 tp!1186640))))

(declare-fun b!3900149 () Bool)

(assert (=> b!3900149 (= e!2411353 tp_is_empty!19645)))

(assert (= (and b!3898837 ((_ is ElementMatch!11337) (regex!6432 (h!46779 (t!319150 rules!2768))))) b!3900149))

(assert (= (and b!3898837 ((_ is Concat!18000) (regex!6432 (h!46779 (t!319150 rules!2768))))) b!3900150))

(assert (= (and b!3898837 ((_ is Star!11337) (regex!6432 (h!46779 (t!319150 rules!2768))))) b!3900151))

(assert (= (and b!3898837 ((_ is Union!11337) (regex!6432 (h!46779 (t!319150 rules!2768))))) b!3900152))

(declare-fun b!3900155 () Bool)

(declare-fun b_free!105601 () Bool)

(declare-fun b_next!106305 () Bool)

(assert (=> b!3900155 (= b_free!105601 (not b_next!106305))))

(declare-fun t!319840 () Bool)

(declare-fun tb!229641 () Bool)

(assert (=> (and b!3900155 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319840) tb!229641))

(declare-fun result!278846 () Bool)

(assert (= result!278846 result!278750))

(assert (=> d!1155853 t!319840))

(declare-fun tb!229643 () Bool)

(declare-fun t!319842 () Bool)

(assert (=> (and b!3900155 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319842) tb!229643))

(declare-fun result!278848 () Bool)

(assert (= result!278848 result!278764))

(assert (=> d!1155957 t!319842))

(declare-fun tb!229645 () Bool)

(declare-fun t!319844 () Bool)

(assert (=> (and b!3900155 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319844) tb!229645))

(declare-fun result!278850 () Bool)

(assert (= result!278850 result!278736))

(assert (=> d!1155839 t!319844))

(declare-fun tb!229647 () Bool)

(declare-fun t!319846 () Bool)

(assert (=> (and b!3900155 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319846) tb!229647))

(declare-fun result!278852 () Bool)

(assert (= result!278852 result!278152))

(assert (=> d!1155093 t!319846))

(declare-fun tb!229649 () Bool)

(declare-fun t!319848 () Bool)

(assert (=> (and b!3900155 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319848) tb!229649))

(declare-fun result!278854 () Bool)

(assert (= result!278854 result!278778))

(assert (=> d!1155997 t!319848))

(declare-fun t!319850 () Bool)

(declare-fun tb!229651 () Bool)

(assert (=> (and b!3900155 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768)))) t!319850) tb!229651))

(declare-fun result!278856 () Bool)

(assert (= result!278856 result!278722))

(assert (=> d!1155763 t!319850))

(declare-fun tb!229653 () Bool)

(declare-fun t!319852 () Bool)

(assert (=> (and b!3900155 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319852) tb!229653))

(declare-fun result!278858 () Bool)

(assert (= result!278858 result!278550))

(assert (=> d!1155603 t!319852))

(assert (=> d!1155767 t!319850))

(declare-fun b_and!294915 () Bool)

(declare-fun tp!1186644 () Bool)

(assert (=> b!3900155 (= tp!1186644 (and (=> t!319848 result!278854) (=> t!319844 result!278850) (=> t!319842 result!278848) (=> t!319850 result!278856) (=> t!319846 result!278852) (=> t!319852 result!278858) (=> t!319840 result!278846) b_and!294915))))

(declare-fun b_free!105603 () Bool)

(declare-fun b_next!106307 () Bool)

(assert (=> b!3900155 (= b_free!105603 (not b_next!106307))))

(declare-fun t!319854 () Bool)

(declare-fun tb!229655 () Bool)

(assert (=> (and b!3900155 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) t!319854) tb!229655))

(declare-fun result!278860 () Bool)

(assert (= result!278860 result!278244))

(assert (=> b!3898749 t!319854))

(declare-fun tb!229657 () Bool)

(declare-fun t!319856 () Bool)

(assert (=> (and b!3900155 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319856) tb!229657))

(declare-fun result!278862 () Bool)

(assert (= result!278862 result!278162))

(assert (=> d!1155099 t!319856))

(declare-fun tb!229659 () Bool)

(declare-fun t!319858 () Bool)

(assert (=> (and b!3900155 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319858) tb!229659))

(declare-fun result!278864 () Bool)

(assert (= result!278864 result!278312))

(assert (=> d!1155237 t!319858))

(declare-fun t!319860 () Bool)

(declare-fun tb!229661 () Bool)

(assert (=> (and b!3900155 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))) t!319860) tb!229661))

(declare-fun result!278866 () Bool)

(assert (= result!278866 result!278792))

(assert (=> b!3900058 t!319860))

(declare-fun t!319862 () Bool)

(declare-fun tb!229663 () Bool)

(assert (=> (and b!3900155 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319862) tb!229663))

(declare-fun result!278868 () Bool)

(assert (= result!278868 result!278368))

(assert (=> d!1155315 t!319862))

(declare-fun t!319864 () Bool)

(declare-fun tb!229665 () Bool)

(assert (=> (and b!3900155 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) t!319864) tb!229665))

(declare-fun result!278870 () Bool)

(assert (= result!278870 result!278252))

(assert (=> b!3898770 t!319864))

(declare-fun t!319866 () Bool)

(declare-fun tb!229667 () Bool)

(assert (=> (and b!3900155 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) t!319866) tb!229667))

(declare-fun result!278872 () Bool)

(assert (= result!278872 result!278236))

(assert (=> b!3898678 t!319866))

(declare-fun t!319868 () Bool)

(declare-fun tb!229669 () Bool)

(assert (=> (and b!3900155 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319868) tb!229669))

(declare-fun result!278874 () Bool)

(assert (= result!278874 result!278524))

(assert (=> d!1155573 t!319868))

(declare-fun t!319870 () Bool)

(declare-fun tb!229671 () Bool)

(assert (=> (and b!3900155 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))) t!319870) tb!229671))

(declare-fun result!278876 () Bool)

(assert (= result!278876 result!278354))

(assert (=> b!3898936 t!319870))

(declare-fun tb!229673 () Bool)

(declare-fun t!319872 () Bool)

(assert (=> (and b!3900155 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319872) tb!229673))

(declare-fun result!278878 () Bool)

(assert (= result!278878 result!278326))

(assert (=> d!1155257 t!319872))

(declare-fun t!319874 () Bool)

(declare-fun tb!229675 () Bool)

(assert (=> (and b!3900155 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319874) tb!229675))

(declare-fun result!278880 () Bool)

(assert (= result!278880 result!278340))

(assert (=> d!1155269 t!319874))

(declare-fun t!319876 () Bool)

(declare-fun tb!229677 () Bool)

(assert (=> (and b!3900155 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toChars!8727 (transformation!6432 (h!46779 rules!2768)))) t!319876) tb!229677))

(declare-fun result!278882 () Bool)

(assert (= result!278882 result!278708))

(assert (=> d!1155763 t!319876))

(declare-fun b_and!294917 () Bool)

(declare-fun tp!1186646 () Bool)

(assert (=> b!3900155 (= tp!1186646 (and (=> t!319862 result!278868) (=> t!319854 result!278860) (=> t!319856 result!278862) (=> t!319874 result!278880) (=> t!319876 result!278882) (=> t!319860 result!278866) (=> t!319870 result!278876) (=> t!319866 result!278872) (=> t!319864 result!278870) (=> t!319858 result!278864) (=> t!319872 result!278878) (=> t!319868 result!278874) b_and!294917))))

(declare-fun e!2411354 () Bool)

(assert (=> b!3900155 (= e!2411354 (and tp!1186644 tp!1186646))))

(declare-fun tp!1186645 () Bool)

(declare-fun b!3900154 () Bool)

(declare-fun e!2411355 () Bool)

(assert (=> b!3900154 (= e!2411355 (and tp!1186645 (inv!55517 (tag!7292 (h!46779 (t!319150 (t!319150 rules!2768))))) (inv!55521 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) e!2411354))))

(declare-fun b!3900153 () Bool)

(declare-fun e!2411356 () Bool)

(declare-fun tp!1186647 () Bool)

(assert (=> b!3900153 (= e!2411356 (and e!2411355 tp!1186647))))

(assert (=> b!3898836 (= tp!1186384 e!2411356)))

(assert (= b!3900154 b!3900155))

(assert (= b!3900153 b!3900154))

(assert (= (and b!3898836 ((_ is Cons!41359) (t!319150 (t!319150 rules!2768)))) b!3900153))

(declare-fun m!4460239 () Bool)

(assert (=> b!3900154 m!4460239))

(declare-fun m!4460241 () Bool)

(assert (=> b!3900154 m!4460241))

(declare-fun b!3900159 () Bool)

(declare-fun e!2411358 () Bool)

(declare-fun tp!1186650 () Bool)

(declare-fun tp!1186648 () Bool)

(assert (=> b!3900159 (= e!2411358 (and tp!1186650 tp!1186648))))

(assert (=> b!3898789 (= tp!1186330 e!2411358)))

(declare-fun b!3900158 () Bool)

(declare-fun tp!1186652 () Bool)

(assert (=> b!3900158 (= e!2411358 tp!1186652)))

(declare-fun b!3900157 () Bool)

(declare-fun tp!1186651 () Bool)

(declare-fun tp!1186649 () Bool)

(assert (=> b!3900157 (= e!2411358 (and tp!1186651 tp!1186649))))

(declare-fun b!3900156 () Bool)

(assert (=> b!3900156 (= e!2411358 tp_is_empty!19645)))

(assert (= (and b!3898789 ((_ is ElementMatch!11337) (regOne!23186 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900156))

(assert (= (and b!3898789 ((_ is Concat!18000) (regOne!23186 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900157))

(assert (= (and b!3898789 ((_ is Star!11337) (regOne!23186 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900158))

(assert (= (and b!3898789 ((_ is Union!11337) (regOne!23186 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900159))

(declare-fun b!3900163 () Bool)

(declare-fun e!2411359 () Bool)

(declare-fun tp!1186655 () Bool)

(declare-fun tp!1186653 () Bool)

(assert (=> b!3900163 (= e!2411359 (and tp!1186655 tp!1186653))))

(assert (=> b!3898789 (= tp!1186328 e!2411359)))

(declare-fun b!3900162 () Bool)

(declare-fun tp!1186657 () Bool)

(assert (=> b!3900162 (= e!2411359 tp!1186657)))

(declare-fun b!3900161 () Bool)

(declare-fun tp!1186656 () Bool)

(declare-fun tp!1186654 () Bool)

(assert (=> b!3900161 (= e!2411359 (and tp!1186656 tp!1186654))))

(declare-fun b!3900160 () Bool)

(assert (=> b!3900160 (= e!2411359 tp_is_empty!19645)))

(assert (= (and b!3898789 ((_ is ElementMatch!11337) (regTwo!23186 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900160))

(assert (= (and b!3898789 ((_ is Concat!18000) (regTwo!23186 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900161))

(assert (= (and b!3898789 ((_ is Star!11337) (regTwo!23186 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900162))

(assert (= (and b!3898789 ((_ is Union!11337) (regTwo!23186 (regex!6432 (rule!9336 (h!46778 suffixTokens!72)))))) b!3900163))

(declare-fun e!2411361 () Bool)

(declare-fun b!3900164 () Bool)

(declare-fun tp!1186660 () Bool)

(declare-fun tp!1186658 () Bool)

(assert (=> b!3900164 (= e!2411361 (and (inv!55524 (left!31693 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (value!203946 (_1!23431 (v!39163 lt!1357935))))))) tp!1186660 (inv!55524 (right!32023 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (value!203946 (_1!23431 (v!39163 lt!1357935))))))) tp!1186658))))

(declare-fun b!3900166 () Bool)

(declare-fun e!2411360 () Bool)

(declare-fun tp!1186659 () Bool)

(assert (=> b!3900166 (= e!2411360 tp!1186659)))

(declare-fun b!3900165 () Bool)

(assert (=> b!3900165 (= e!2411361 (and (inv!55531 (xs!15949 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (value!203946 (_1!23431 (v!39163 lt!1357935))))))) e!2411360))))

(assert (=> b!3898503 (= tp!1186237 (and (inv!55524 (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (value!203946 (_1!23431 (v!39163 lt!1357935)))))) e!2411361))))

(assert (= (and b!3898503 ((_ is Node!12643) (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (value!203946 (_1!23431 (v!39163 lt!1357935))))))) b!3900164))

(assert (= b!3900165 b!3900166))

(assert (= (and b!3898503 ((_ is Leaf!19566) (c!677655 (dynLambda!17753 (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))) (value!203946 (_1!23431 (v!39163 lt!1357935))))))) b!3900165))

(declare-fun m!4460243 () Bool)

(assert (=> b!3900164 m!4460243))

(declare-fun m!4460245 () Bool)

(assert (=> b!3900164 m!4460245))

(declare-fun m!4460247 () Bool)

(assert (=> b!3900165 m!4460247))

(assert (=> b!3898503 m!4457681))

(declare-fun b!3900170 () Bool)

(declare-fun e!2411362 () Bool)

(declare-fun tp!1186663 () Bool)

(declare-fun tp!1186661 () Bool)

(assert (=> b!3900170 (= e!2411362 (and tp!1186663 tp!1186661))))

(assert (=> b!3898804 (= tp!1186348 e!2411362)))

(declare-fun b!3900169 () Bool)

(declare-fun tp!1186665 () Bool)

(assert (=> b!3900169 (= e!2411362 tp!1186665)))

(declare-fun b!3900168 () Bool)

(declare-fun tp!1186664 () Bool)

(declare-fun tp!1186662 () Bool)

(assert (=> b!3900168 (= e!2411362 (and tp!1186664 tp!1186662))))

(declare-fun b!3900167 () Bool)

(assert (=> b!3900167 (= e!2411362 tp_is_empty!19645)))

(assert (= (and b!3898804 ((_ is ElementMatch!11337) (reg!11666 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900167))

(assert (= (and b!3898804 ((_ is Concat!18000) (reg!11666 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900168))

(assert (= (and b!3898804 ((_ is Star!11337) (reg!11666 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900169))

(assert (= (and b!3898804 ((_ is Union!11337) (reg!11666 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900170))

(declare-fun b!3900174 () Bool)

(declare-fun b_free!105605 () Bool)

(declare-fun b_next!106309 () Bool)

(assert (=> b!3900174 (= b_free!105605 (not b_next!106309))))

(declare-fun t!319878 () Bool)

(declare-fun tb!229679 () Bool)

(assert (=> (and b!3900174 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319878) tb!229679))

(declare-fun result!278884 () Bool)

(assert (= result!278884 result!278750))

(assert (=> d!1155853 t!319878))

(declare-fun t!319880 () Bool)

(declare-fun tb!229681 () Bool)

(assert (=> (and b!3900174 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319880) tb!229681))

(declare-fun result!278886 () Bool)

(assert (= result!278886 result!278764))

(assert (=> d!1155957 t!319880))

(declare-fun t!319882 () Bool)

(declare-fun tb!229683 () Bool)

(assert (=> (and b!3900174 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319882) tb!229683))

(declare-fun result!278888 () Bool)

(assert (= result!278888 result!278736))

(assert (=> d!1155839 t!319882))

(declare-fun t!319884 () Bool)

(declare-fun tb!229685 () Bool)

(assert (=> (and b!3900174 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319884) tb!229685))

(declare-fun result!278890 () Bool)

(assert (= result!278890 result!278152))

(assert (=> d!1155093 t!319884))

(declare-fun tb!229687 () Bool)

(declare-fun t!319886 () Bool)

(assert (=> (and b!3900174 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319886) tb!229687))

(declare-fun result!278892 () Bool)

(assert (= result!278892 result!278778))

(assert (=> d!1155997 t!319886))

(declare-fun tb!229689 () Bool)

(declare-fun t!319888 () Bool)

(assert (=> (and b!3900174 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768)))) t!319888) tb!229689))

(declare-fun result!278894 () Bool)

(assert (= result!278894 result!278722))

(assert (=> d!1155763 t!319888))

(declare-fun t!319890 () Bool)

(declare-fun tb!229691 () Bool)

(assert (=> (and b!3900174 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319890) tb!229691))

(declare-fun result!278896 () Bool)

(assert (= result!278896 result!278550))

(assert (=> d!1155603 t!319890))

(assert (=> d!1155767 t!319888))

(declare-fun b_and!294919 () Bool)

(declare-fun tp!1186670 () Bool)

(assert (=> b!3900174 (= tp!1186670 (and (=> t!319878 result!278884) (=> t!319882 result!278888) (=> t!319884 result!278890) (=> t!319886 result!278892) (=> t!319890 result!278896) (=> t!319888 result!278894) (=> t!319880 result!278886) b_and!294919))))

(declare-fun b_free!105607 () Bool)

(declare-fun b_next!106311 () Bool)

(assert (=> b!3900174 (= b_free!105607 (not b_next!106311))))

(declare-fun t!319892 () Bool)

(declare-fun tb!229693 () Bool)

(assert (=> (and b!3900174 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377)))))) t!319892) tb!229693))

(declare-fun result!278898 () Bool)

(assert (= result!278898 result!278244))

(assert (=> b!3898749 t!319892))

(declare-fun t!319894 () Bool)

(declare-fun tb!229695 () Bool)

(assert (=> (and b!3900174 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935)))))) t!319894) tb!229695))

(declare-fun result!278900 () Bool)

(assert (= result!278900 result!278162))

(assert (=> d!1155099 t!319894))

(declare-fun t!319896 () Bool)

(declare-fun tb!229697 () Bool)

(assert (=> (and b!3900174 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358151)))))) t!319896) tb!229697))

(declare-fun result!278902 () Bool)

(assert (= result!278902 result!278312))

(assert (=> d!1155237 t!319896))

(declare-fun t!319898 () Bool)

(declare-fun tb!229699 () Bool)

(assert (=> (and b!3900174 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))) t!319898) tb!229699))

(declare-fun result!278904 () Bool)

(assert (= result!278904 result!278792))

(assert (=> b!3900058 t!319898))

(declare-fun t!319900 () Bool)

(declare-fun tb!229701 () Bool)

(assert (=> (and b!3900174 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358123)))))) t!319900) tb!229701))

(declare-fun result!278906 () Bool)

(assert (= result!278906 result!278368))

(assert (=> d!1155315 t!319900))

(declare-fun t!319902 () Bool)

(declare-fun tb!229703 () Bool)

(assert (=> (and b!3900174 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80))))) t!319902) tb!229703))

(declare-fun result!278908 () Bool)

(assert (= result!278908 result!278252))

(assert (=> b!3898770 t!319902))

(declare-fun t!319904 () Bool)

(declare-fun tb!229705 () Bool)

(assert (=> (and b!3900174 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72))))) t!319904) tb!229705))

(declare-fun result!278910 () Bool)

(assert (= result!278910 result!278236))

(assert (=> b!3898678 t!319904))

(declare-fun tb!229707 () Bool)

(declare-fun t!319906 () Bool)

(assert (=> (and b!3900174 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358130)))))) t!319906) tb!229707))

(declare-fun result!278912 () Bool)

(assert (= result!278912 result!278524))

(assert (=> d!1155573 t!319906))

(declare-fun t!319908 () Bool)

(declare-fun tb!229709 () Bool)

(assert (=> (and b!3900174 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72)))))) t!319908) tb!229709))

(declare-fun result!278914 () Bool)

(assert (= result!278914 result!278354))

(assert (=> b!3898936 t!319908))

(declare-fun t!319910 () Bool)

(declare-fun tb!229711 () Bool)

(assert (=> (and b!3900174 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358032)))))) t!319910) tb!229711))

(declare-fun result!278916 () Bool)

(assert (= result!278916 result!278326))

(assert (=> d!1155257 t!319910))

(declare-fun tb!229713 () Bool)

(declare-fun t!319912 () Bool)

(assert (=> (and b!3900174 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (get!13674 lt!1358145)))))) t!319912) tb!229713))

(declare-fun result!278918 () Bool)

(assert (= result!278918 result!278340))

(assert (=> d!1155269 t!319912))

(declare-fun tb!229715 () Bool)

(declare-fun t!319914 () Bool)

(assert (=> (and b!3900174 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toChars!8727 (transformation!6432 (h!46779 rules!2768)))) t!319914) tb!229715))

(declare-fun result!278920 () Bool)

(assert (= result!278920 result!278708))

(assert (=> d!1155763 t!319914))

(declare-fun b_and!294921 () Bool)

(declare-fun tp!1186669 () Bool)

(assert (=> b!3900174 (= tp!1186669 (and (=> t!319900 result!278906) (=> t!319914 result!278920) (=> t!319902 result!278908) (=> t!319904 result!278910) (=> t!319912 result!278918) (=> t!319906 result!278912) (=> t!319898 result!278904) (=> t!319908 result!278914) (=> t!319910 result!278916) (=> t!319892 result!278898) (=> t!319894 result!278900) (=> t!319896 result!278902) b_and!294921))))

(declare-fun e!2411367 () Bool)

(assert (=> b!3898824 (= tp!1186368 e!2411367)))

(declare-fun e!2411366 () Bool)

(assert (=> b!3900174 (= e!2411366 (and tp!1186670 tp!1186669))))

(declare-fun b!3900171 () Bool)

(declare-fun e!2411363 () Bool)

(declare-fun tp!1186666 () Bool)

(assert (=> b!3900171 (= e!2411367 (and (inv!55520 (h!46778 (t!319149 (t!319149 prefixTokens!80)))) e!2411363 tp!1186666))))

(declare-fun b!3900172 () Bool)

(declare-fun tp!1186668 () Bool)

(declare-fun e!2411368 () Bool)

(assert (=> b!3900172 (= e!2411363 (and (inv!21 (value!203946 (h!46778 (t!319149 (t!319149 prefixTokens!80))))) e!2411368 tp!1186668))))

(declare-fun b!3900173 () Bool)

(declare-fun tp!1186667 () Bool)

(assert (=> b!3900173 (= e!2411368 (and tp!1186667 (inv!55517 (tag!7292 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (inv!55521 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) e!2411366))))

(assert (= b!3900173 b!3900174))

(assert (= b!3900172 b!3900173))

(assert (= b!3900171 b!3900172))

(assert (= (and b!3898824 ((_ is Cons!41358) (t!319149 (t!319149 prefixTokens!80)))) b!3900171))

(declare-fun m!4460249 () Bool)

(assert (=> b!3900171 m!4460249))

(declare-fun m!4460251 () Bool)

(assert (=> b!3900172 m!4460251))

(declare-fun m!4460253 () Bool)

(assert (=> b!3900173 m!4460253))

(declare-fun m!4460255 () Bool)

(assert (=> b!3900173 m!4460255))

(declare-fun b!3900178 () Bool)

(declare-fun e!2411369 () Bool)

(declare-fun tp!1186673 () Bool)

(declare-fun tp!1186671 () Bool)

(assert (=> b!3900178 (= e!2411369 (and tp!1186673 tp!1186671))))

(assert (=> b!3898796 (= tp!1186335 e!2411369)))

(declare-fun b!3900177 () Bool)

(declare-fun tp!1186675 () Bool)

(assert (=> b!3900177 (= e!2411369 tp!1186675)))

(declare-fun b!3900176 () Bool)

(declare-fun tp!1186674 () Bool)

(declare-fun tp!1186672 () Bool)

(assert (=> b!3900176 (= e!2411369 (and tp!1186674 tp!1186672))))

(declare-fun b!3900175 () Bool)

(assert (=> b!3900175 (= e!2411369 tp_is_empty!19645)))

(assert (= (and b!3898796 ((_ is ElementMatch!11337) (regOne!23187 (regex!6432 (h!46779 rules!2768))))) b!3900175))

(assert (= (and b!3898796 ((_ is Concat!18000) (regOne!23187 (regex!6432 (h!46779 rules!2768))))) b!3900176))

(assert (= (and b!3898796 ((_ is Star!11337) (regOne!23187 (regex!6432 (h!46779 rules!2768))))) b!3900177))

(assert (= (and b!3898796 ((_ is Union!11337) (regOne!23187 (regex!6432 (h!46779 rules!2768))))) b!3900178))

(declare-fun b!3900182 () Bool)

(declare-fun e!2411370 () Bool)

(declare-fun tp!1186678 () Bool)

(declare-fun tp!1186676 () Bool)

(assert (=> b!3900182 (= e!2411370 (and tp!1186678 tp!1186676))))

(assert (=> b!3898796 (= tp!1186333 e!2411370)))

(declare-fun b!3900181 () Bool)

(declare-fun tp!1186680 () Bool)

(assert (=> b!3900181 (= e!2411370 tp!1186680)))

(declare-fun b!3900180 () Bool)

(declare-fun tp!1186679 () Bool)

(declare-fun tp!1186677 () Bool)

(assert (=> b!3900180 (= e!2411370 (and tp!1186679 tp!1186677))))

(declare-fun b!3900179 () Bool)

(assert (=> b!3900179 (= e!2411370 tp_is_empty!19645)))

(assert (= (and b!3898796 ((_ is ElementMatch!11337) (regTwo!23187 (regex!6432 (h!46779 rules!2768))))) b!3900179))

(assert (= (and b!3898796 ((_ is Concat!18000) (regTwo!23187 (regex!6432 (h!46779 rules!2768))))) b!3900180))

(assert (= (and b!3898796 ((_ is Star!11337) (regTwo!23187 (regex!6432 (h!46779 rules!2768))))) b!3900181))

(assert (= (and b!3898796 ((_ is Union!11337) (regTwo!23187 (regex!6432 (h!46779 rules!2768))))) b!3900182))

(declare-fun b!3900186 () Bool)

(declare-fun e!2411371 () Bool)

(declare-fun tp!1186683 () Bool)

(declare-fun tp!1186681 () Bool)

(assert (=> b!3900186 (= e!2411371 (and tp!1186683 tp!1186681))))

(assert (=> b!3898803 (= tp!1186347 e!2411371)))

(declare-fun b!3900185 () Bool)

(declare-fun tp!1186685 () Bool)

(assert (=> b!3900185 (= e!2411371 tp!1186685)))

(declare-fun b!3900184 () Bool)

(declare-fun tp!1186684 () Bool)

(declare-fun tp!1186682 () Bool)

(assert (=> b!3900184 (= e!2411371 (and tp!1186684 tp!1186682))))

(declare-fun b!3900183 () Bool)

(assert (=> b!3900183 (= e!2411371 tp_is_empty!19645)))

(assert (= (and b!3898803 ((_ is ElementMatch!11337) (regOne!23186 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900183))

(assert (= (and b!3898803 ((_ is Concat!18000) (regOne!23186 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900184))

(assert (= (and b!3898803 ((_ is Star!11337) (regOne!23186 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900185))

(assert (= (and b!3898803 ((_ is Union!11337) (regOne!23186 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900186))

(declare-fun b!3900190 () Bool)

(declare-fun e!2411372 () Bool)

(declare-fun tp!1186688 () Bool)

(declare-fun tp!1186686 () Bool)

(assert (=> b!3900190 (= e!2411372 (and tp!1186688 tp!1186686))))

(assert (=> b!3898803 (= tp!1186345 e!2411372)))

(declare-fun b!3900189 () Bool)

(declare-fun tp!1186690 () Bool)

(assert (=> b!3900189 (= e!2411372 tp!1186690)))

(declare-fun b!3900188 () Bool)

(declare-fun tp!1186689 () Bool)

(declare-fun tp!1186687 () Bool)

(assert (=> b!3900188 (= e!2411372 (and tp!1186689 tp!1186687))))

(declare-fun b!3900187 () Bool)

(assert (=> b!3900187 (= e!2411372 tp_is_empty!19645)))

(assert (= (and b!3898803 ((_ is ElementMatch!11337) (regTwo!23186 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900187))

(assert (= (and b!3898803 ((_ is Concat!18000) (regTwo!23186 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900188))

(assert (= (and b!3898803 ((_ is Star!11337) (regTwo!23186 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900189))

(assert (= (and b!3898803 ((_ is Union!11337) (regTwo!23186 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900190))

(declare-fun b!3900194 () Bool)

(declare-fun e!2411373 () Bool)

(declare-fun tp!1186693 () Bool)

(declare-fun tp!1186691 () Bool)

(assert (=> b!3900194 (= e!2411373 (and tp!1186693 tp!1186691))))

(assert (=> b!3898795 (= tp!1186337 e!2411373)))

(declare-fun b!3900193 () Bool)

(declare-fun tp!1186695 () Bool)

(assert (=> b!3900193 (= e!2411373 tp!1186695)))

(declare-fun b!3900192 () Bool)

(declare-fun tp!1186694 () Bool)

(declare-fun tp!1186692 () Bool)

(assert (=> b!3900192 (= e!2411373 (and tp!1186694 tp!1186692))))

(declare-fun b!3900191 () Bool)

(assert (=> b!3900191 (= e!2411373 tp_is_empty!19645)))

(assert (= (and b!3898795 ((_ is ElementMatch!11337) (reg!11666 (regex!6432 (h!46779 rules!2768))))) b!3900191))

(assert (= (and b!3898795 ((_ is Concat!18000) (reg!11666 (regex!6432 (h!46779 rules!2768))))) b!3900192))

(assert (= (and b!3898795 ((_ is Star!11337) (reg!11666 (regex!6432 (h!46779 rules!2768))))) b!3900193))

(assert (= (and b!3898795 ((_ is Union!11337) (reg!11666 (regex!6432 (h!46779 rules!2768))))) b!3900194))

(declare-fun b!3900195 () Bool)

(declare-fun e!2411374 () Bool)

(declare-fun tp!1186696 () Bool)

(assert (=> b!3900195 (= e!2411374 (and tp_is_empty!19645 tp!1186696))))

(assert (=> b!3898797 (= tp!1186338 e!2411374)))

(assert (= (and b!3898797 ((_ is Cons!41357) (t!319148 (originalCharacters!7032 (_1!23431 (v!39163 err!4377)))))) b!3900195))

(declare-fun b!3900199 () Bool)

(declare-fun e!2411375 () Bool)

(declare-fun tp!1186699 () Bool)

(declare-fun tp!1186697 () Bool)

(assert (=> b!3900199 (= e!2411375 (and tp!1186699 tp!1186697))))

(assert (=> b!3898826 (= tp!1186369 e!2411375)))

(declare-fun b!3900198 () Bool)

(declare-fun tp!1186701 () Bool)

(assert (=> b!3900198 (= e!2411375 tp!1186701)))

(declare-fun b!3900197 () Bool)

(declare-fun tp!1186700 () Bool)

(declare-fun tp!1186698 () Bool)

(assert (=> b!3900197 (= e!2411375 (and tp!1186700 tp!1186698))))

(declare-fun b!3900196 () Bool)

(assert (=> b!3900196 (= e!2411375 tp_is_empty!19645)))

(assert (= (and b!3898826 ((_ is ElementMatch!11337) (regex!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))) b!3900196))

(assert (= (and b!3898826 ((_ is Concat!18000) (regex!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))) b!3900197))

(assert (= (and b!3898826 ((_ is Star!11337) (regex!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))) b!3900198))

(assert (= (and b!3898826 ((_ is Union!11337) (regex!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80)))))) b!3900199))

(declare-fun b!3900203 () Bool)

(declare-fun e!2411376 () Bool)

(declare-fun tp!1186704 () Bool)

(declare-fun tp!1186702 () Bool)

(assert (=> b!3900203 (= e!2411376 (and tp!1186704 tp!1186702))))

(assert (=> b!3898805 (= tp!1186346 e!2411376)))

(declare-fun b!3900202 () Bool)

(declare-fun tp!1186706 () Bool)

(assert (=> b!3900202 (= e!2411376 tp!1186706)))

(declare-fun b!3900201 () Bool)

(declare-fun tp!1186705 () Bool)

(declare-fun tp!1186703 () Bool)

(assert (=> b!3900201 (= e!2411376 (and tp!1186705 tp!1186703))))

(declare-fun b!3900200 () Bool)

(assert (=> b!3900200 (= e!2411376 tp_is_empty!19645)))

(assert (= (and b!3898805 ((_ is ElementMatch!11337) (regOne!23187 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900200))

(assert (= (and b!3898805 ((_ is Concat!18000) (regOne!23187 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900201))

(assert (= (and b!3898805 ((_ is Star!11337) (regOne!23187 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900202))

(assert (= (and b!3898805 ((_ is Union!11337) (regOne!23187 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900203))

(declare-fun b!3900207 () Bool)

(declare-fun e!2411377 () Bool)

(declare-fun tp!1186709 () Bool)

(declare-fun tp!1186707 () Bool)

(assert (=> b!3900207 (= e!2411377 (and tp!1186709 tp!1186707))))

(assert (=> b!3898805 (= tp!1186344 e!2411377)))

(declare-fun b!3900206 () Bool)

(declare-fun tp!1186711 () Bool)

(assert (=> b!3900206 (= e!2411377 tp!1186711)))

(declare-fun b!3900205 () Bool)

(declare-fun tp!1186710 () Bool)

(declare-fun tp!1186708 () Bool)

(assert (=> b!3900205 (= e!2411377 (and tp!1186710 tp!1186708))))

(declare-fun b!3900204 () Bool)

(assert (=> b!3900204 (= e!2411377 tp_is_empty!19645)))

(assert (= (and b!3898805 ((_ is ElementMatch!11337) (regTwo!23187 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900204))

(assert (= (and b!3898805 ((_ is Concat!18000) (regTwo!23187 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900205))

(assert (= (and b!3898805 ((_ is Star!11337) (regTwo!23187 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900206))

(assert (= (and b!3898805 ((_ is Union!11337) (regTwo!23187 (regex!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))))) b!3900207))

(declare-fun b!3900208 () Bool)

(declare-fun e!2411378 () Bool)

(declare-fun tp!1186712 () Bool)

(assert (=> b!3900208 (= e!2411378 (and tp_is_empty!19645 tp!1186712))))

(assert (=> b!3898825 (= tp!1186370 e!2411378)))

(assert (= (and b!3898825 ((_ is Cons!41357) (originalCharacters!7032 (h!46778 (t!319149 prefixTokens!80))))) b!3900208))

(declare-fun b_lambda!113953 () Bool)

(assert (= b_lambda!113851 (or (and b!3900174 b_free!105605 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3898224 b_free!105553 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3898228 b_free!105549 (= (toValue!8868 (transformation!6432 (h!46779 rules!2768))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3898210 b_free!105545 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3900105 b_free!105597 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3898205 b_free!105557 (= (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3898822 b_free!105573 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3898827 b_free!105577 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3898838 b_free!105581 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3900155 b_free!105601 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) b_lambda!113953)))

(declare-fun b_lambda!113955 () Bool)

(assert (= b_lambda!113937 (or (and b!3898827 b_free!105579 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (h!46779 rules!2768))))) (and b!3898205 b_free!105559 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (h!46779 rules!2768))))) (and b!3900174 b_free!105607 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toChars!8727 (transformation!6432 (h!46779 rules!2768))))) (and b!3900105 b_free!105599 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toChars!8727 (transformation!6432 (h!46779 rules!2768))))) (and b!3898210 b_free!105547 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (h!46779 rules!2768))))) (and b!3898224 b_free!105555 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (h!46779 rules!2768))))) (and b!3900155 b_free!105603 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toChars!8727 (transformation!6432 (h!46779 rules!2768))))) (and b!3898228 b_free!105551) (and b!3898838 b_free!105583 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (h!46779 rules!2768))))) (and b!3898822 b_free!105575 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (h!46779 rules!2768))))) b_lambda!113955)))

(declare-fun b_lambda!113957 () Bool)

(assert (= b_lambda!113853 (or (and b!3898210 b_free!105547 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3898822 b_free!105575 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3900105 b_free!105599 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3898827 b_free!105579 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3898205 b_free!105559 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3900155 b_free!105603 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3898224 b_free!105555 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3898838 b_free!105583 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3900174 b_free!105607 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) (and b!3898228 b_free!105551 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 lt!1357935))))))) b_lambda!113957)))

(declare-fun b_lambda!113959 () Bool)

(assert (= b_lambda!113941 (or (and b!3900105 b_free!105597 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (and b!3900174 b_free!105605 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (and b!3898224 b_free!105553 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (and b!3898205 b_free!105557 (= (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (and b!3898228 b_free!105549) (and b!3898210 b_free!105545 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (and b!3900155 b_free!105601 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (and b!3898827 b_free!105577 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (and b!3898838 b_free!105581 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (and b!3898822 b_free!105573 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) b_lambda!113959)))

(declare-fun b_lambda!113961 () Bool)

(assert (= b_lambda!113887 (or (and b!3900155 b_free!105603 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))))) (and b!3898228 b_free!105551 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))))) (and b!3898838 b_free!105583 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))))) (and b!3898224 b_free!105555 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))))) (and b!3900174 b_free!105607 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))))) (and b!3898827 b_free!105579 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))))) (and b!3898822 b_free!105575) (and b!3900105 b_free!105599 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))))) (and b!3898205 b_free!105559 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))))) (and b!3898210 b_free!105547 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))))) b_lambda!113961)))

(declare-fun b_lambda!113963 () Bool)

(assert (= b_lambda!113951 (or (and b!3898838 b_free!105583 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))))) (and b!3898228 b_free!105551 (= (toChars!8727 (transformation!6432 (h!46779 rules!2768))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))))) (and b!3898210 b_free!105547 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))))) (and b!3898822 b_free!105575 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))))) (and b!3898205 b_free!105559 (= (toChars!8727 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))))) (and b!3900155 b_free!105603 (= (toChars!8727 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))))) (and b!3900105 b_free!105599 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))))) (and b!3900174 b_free!105607 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))))) (and b!3898827 b_free!105579) (and b!3898224 b_free!105555 (= (toChars!8727 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toChars!8727 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))))) b_lambda!113963)))

(declare-fun b_lambda!113965 () Bool)

(assert (= b_lambda!113939 (or (and b!3900105 b_free!105597 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 suffixTokens!72)))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (and b!3900174 b_free!105605 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 (t!319149 prefixTokens!80)))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (and b!3898224 b_free!105553 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 prefixTokens!80)))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (and b!3898205 b_free!105557 (= (toValue!8868 (transformation!6432 (rule!9336 (_1!23431 (v!39163 err!4377))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (and b!3898228 b_free!105549) (and b!3898210 b_free!105545 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 suffixTokens!72)))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (and b!3900155 b_free!105601 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 (t!319150 rules!2768))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (and b!3898827 b_free!105577 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 prefixTokens!80))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (and b!3898838 b_free!105581 (= (toValue!8868 (transformation!6432 (h!46779 (t!319150 rules!2768)))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) (and b!3898822 b_free!105573 (= (toValue!8868 (transformation!6432 (rule!9336 (h!46778 (t!319149 suffixTokens!72))))) (toValue!8868 (transformation!6432 (h!46779 rules!2768))))) b_lambda!113965)))

(check-sat (not b_next!106249) (not b!3899793) (not b!3899794) (not b!3900096) (not d!1155769) (not b!3898863) (not b!3900162) (not b!3898970) (not d!1155267) (not b!3899764) (not d!1155911) (not d!1155531) (not b!3900124) (not b!3900182) (not d!1155819) (not b!3899769) (not b!3898953) (not b!3900143) (not b!3898927) (not b_lambda!113949) (not b!3899952) (not b_lambda!113881) (not b!3899777) (not b!3899907) (not b!3900104) (not b!3899015) (not b!3900192) (not b!3900102) (not d!1156013) (not d!1155611) (not d!1155249) (not b_next!106301) (not d!1155759) (not b!3900099) (not b!3900170) (not b!3899334) (not b!3900116) (not b_lambda!113965) b_and!294889 (not b!3900199) (not b!3900070) (not d!1155591) (not b!3899411) (not bm!283833) (not b!3900208) (not b!3900095) (not b!3899937) (not b!3898876) (not tb!229349) (not b!3899909) (not b!3899804) (not b!3900186) (not bm!283746) (not b!3899929) (not b!3899971) (not b!3899933) (not b!3899926) (not b!3899795) (not b!3900028) (not d!1155813) (not b!3899839) (not b!3900126) (not b!3900131) (not b!3900159) (not b!3900171) (not b!3900059) (not b!3898879) b_and!294921 (not d!1156005) b_and!294883 (not b!3898880) (not b!3900173) (not d!1155791) (not b!3900130) (not bm!283817) b_and!294919 (not b!3899928) (not b!3900006) (not b!3900000) (not b_lambda!113953) (not b!3899941) (not b!3899905) (not b!3899871) (not b!3898957) (not b!3899363) (not b!3900092) (not b_next!106257) (not b!3898868) (not b!3900205) (not b!3899938) (not tb!229589) (not b!3899978) (not b!3899932) (not b!3899809) (not bm!283815) (not b!3899872) (not b!3898887) (not b!3900044) (not b!3899913) (not b!3900108) (not b!3899901) (not b!3899508) (not b!3900002) (not d!1155909) (not b!3900010) (not b!3898976) (not b!3900094) (not d!1155313) (not b_next!106311) (not b!3898951) (not b!3899409) (not d!1155829) (not b!3899961) (not tb!229125) (not b!3900058) (not d!1155981) (not b!3899875) (not b!3899516) (not d!1155887) (not d!1155837) (not b!3900201) (not d!1155243) (not b!3900202) (not b!3900041) (not b!3900057) (not b!3899026) (not b!3899787) (not b!3899512) (not b_next!106309) (not d!1155797) (not tb!229575) (not b!3900180) (not b!3899884) (not d!1155895) (not d!1155963) (not d!1155825) (not d!1155953) (not b_lambda!113963) (not b!3899850) (not d!1155983) (not d!1155927) (not b!3898980) (not b!3898936) (not b!3899845) (not b!3900090) (not b!3899865) (not b!3900018) (not b!3899846) (not b_next!106307) (not d!1155859) (not b!3899013) (not b_next!106283) (not b!3900119) (not b!3900197) (not b!3898943) (not b!3900178) (not b!3898885) (not d!1155235) (not b!3898950) b_and!294897 (not b!3900012) (not d!1155857) (not b!3899935) (not b!3898944) (not b!3898751) b_and!294917 (not b!3898873) (not b_next!106251) (not d!1155271) (not b!3899991) (not b!3899002) (not d!1156015) (not b!3899915) (not b!3899016) (not b_next!106279) (not b_next!106277) (not tb!229533) (not b!3899999) (not b!3900048) (not b!3900177) (not d!1155867) b_and!294887 (not b!3899898) (not b!3900032) (not b!3899902) (not d!1155999) (not b!3899008) (not b!3900040) (not b!3899372) (not d!1155765) b_and!294907 (not b_next!106303) (not d!1155615) (not b!3899007) (not b_lambda!113885) (not d!1155609) (not b!3899972) (not d!1155817) (not b!3900030) (not bm!283826) (not d!1155589) (not b!3900118) (not b!3900134) (not b!3898881) (not b!3899377) (not bm!283828) (not b_lambda!113913) (not b!3899366) (not b_next!106287) (not b!3900033) (not b!3899873) (not d!1155901) (not d!1155889) (not b!3900103) (not b!3899989) (not b!3899796) b_and!294905 (not b!3899785) (not b!3900168) (not d!1155277) (not b!3899396) (not d!1155989) (not d!1155941) (not b!3898864) (not b!3898954) (not b!3899410) (not b!3899844) (not d!1155973) (not b!3899940) (not b!3900151) (not b!3899985) (not b!3900161) (not b!3899992) (not b!3900207) (not d!1155315) b_and!294911 (not b!3899783) (not b!3899917) (not b!3899869) (not tb!229519) (not b!3900148) (not d!1155307) (not b!3900147) (not b!3899432) (not d!1155227) (not b!3900051) (not b!3898772) (not b!3900181) (not b!3900050) (not d!1156011) (not b!3900138) (not bm!283748) (not d!1155841) (not b!3900142) (not b!3899810) (not b!3899854) (not b!3898930) (not b!3900110) (not b!3899934) (not b!3899020) b_and!294893 (not b!3900172) (not b!3898882) (not d!1155995) (not b!3899791) (not d!1155831) (not b!3899924) (not b!3898935) (not b!3899981) (not d!1155681) (not b!3900067) (not b!3899995) b_and!294903 (not b_next!106285) (not b!3898929) (not b!3899790) (not d!1155803) (not b!3900135) (not b!3899762) (not d!1156019) (not b!3900165) (not b!3900101) (not b!3898878) (not b_lambda!113957) (not bm!283747) (not d!1155799) (not b!3900077) (not d!1155923) (not b!3899953) (not b!3900129) (not b!3899918) (not b!3900133) (not b!3900088) (not d!1155773) (not b!3899797) (not tb!229139) b_and!294895 (not b!3900115) (not b!3900152) (not b!3900122) (not b!3898958) (not b!3899959) (not b!3899380) (not b!3898955) (not d!1155563) (not b!3899805) (not b!3900112) (not b!3899891) (not b!3899379) (not b!3899868) (not b!3899391) (not tb!229561) (not d!1155527) (not d!1155787) (not d!1155899) (not tb!229111) (not b!3898937) (not d!1155571) (not b!3900166) (not d!1155843) (not d!1155667) (not bm!283814) (not b!3899375) (not b!3899882) (not b_lambda!113883) (not d!1156003) (not d!1155225) (not b!3900042) (not b!3899900) (not b!3900195) (not d!1155903) (not d!1155763) (not b!3899896) (not b!3900203) (not b!3899966) (not b!3900022) (not b!3898503) (not b!3899518) (not d!1155275) (not b!3900184) (not b_next!106305) (not b_lambda!113875) (not d!1155273) (not b!3899962) (not b!3900020) (not b!3899889) (not b!3899911) (not d!1155287) (not b!3899514) (not bm!283818) b_and!294915 b_and!294901 (not b!3899997) (not b!3899373) (not b!3899851) (not bm!283745) (not b!3898946) (not b!3900190) (not b!3899893) (not b!3899920) (not b_lambda!113961) (not b!3900026) (not b!3898977) (not b!3900069) (not b!3900206) (not tb!229505) (not b!3900144) (not b_next!106253) (not b!3899335) (not b!3900091) (not d!1155579) (not b!3900176) (not b!3900014) (not b!3900047) (not b!3899364) b_and!294885 (not b!3898934) (not b!3900154) (not d!1155285) (not d!1155869) (not b!3898938) (not b!3898952) (not b!3900004) (not b!3898973) (not bm!283830) (not b!3899954) (not b!3899890) (not b!3898892) (not b!3898945) (not b!3900114) (not b!3899763) (not b_lambda!113877) b_and!294909 (not b!3900128) (not b!3899895) (not b!3900008) (not b!3900157) (not b!3900100) (not b_lambda!113889) (not b!3900150) (not b!3898888) (not b!3899378) (not b!3898941) (not b!3898949) (not b!3898874) (not b!3900037) (not b!3899949) b_and!294913 (not b!3900132) (not b!3899987) (not b!3899853) (not b!3900194) (not b!3898968) (not b!3899789) (not b!3900035) (not bm!283811) (not b!3900043) (not b!3899969) (not b_lambda!113915) (not b!3899870) (not b!3899980) (not b_next!106281) (not b!3898940) (not tb!229167) (not b!3900185) (not d!1155257) (not b!3900189) (not b!3900106) (not b!3898867) (not b!3900127) (not b!3898890) (not d!1155255) (not d!1155263) (not bm!283825) (not b!3898922) (not b!3900076) (not b!3899950) (not b_lambda!113943) (not b!3900120) (not bm!283832) (not b!3899887) (not b!3899866) (not b!3899376) (not b!3899802) (not b!3898960) (not d!1155855) (not b!3900198) (not b!3900054) (not tb!229153) (not b!3899922) (not b!3900098) (not d!1155237) (not b!3899944) (not d!1156017) (not bm!283813) (not bm!283829) (not b!3899899) (not bm!283816) (not d!1155573) (not b!3899888) (not b!3900193) (not b!3899510) (not b!3900141) (not b_next!106259) (not b!3900046) (not tb!229547) (not b_lambda!113959) (not d!1155925) (not d!1155253) (not b!3899967) (not d!1155293) (not b!3900188) (not b!3900158) (not d!1155913) (not b!3900029) (not b!3898972) (not b!3900123) (not b!3900153) (not d!1155251) (not b!3900113) (not b!3899864) (not b!3900016) (not b!3900024) b_and!294891 (not b!3899860) (not d!1155269) (not b!3898871) (not d!1155993) (not d!1155325) (not b!3900086) (not d!1155805) (not b!3898990) (not b!3900055) (not d!1155529) (not b!3900062) (not bm!283810) (not b!3899973) b_and!294899 (not b!3899433) (not b!3899862) (not b_next!106263) (not b!3899390) (not b!3900163) (not b!3899831) (not b!3900109) (not d!1155891) (not b!3900061) (not d!1155917) (not b!3898680) (not b!3900049) (not bm!283812) (not b_lambda!113947) (not b!3899847) (not b_lambda!113873) (not b_lambda!113945) (not b!3900164) (not b!3898959) (not d!1155815) (not b!3900137) (not tb!229323) (not b!3898994) (not bm!283831) (not b!3899927) (not b!3900146) (not d!1155959) (not b!3899930) (not b!3899894) (not b_next!106261) (not d!1155311) (not d!1155545) (not b_lambda!113955) (not d!1155781) (not b!3898948) (not b!3899520) (not b_next!106255) (not b!3900169) (not b!3899849) (not b!3900139) (not b!3900074) (not b!3900060) (not b!3898966) (not b!3899885) (not d!1155939) (not d!1155673) tp_is_empty!19645 (not b!3898921) (not b!3900087) (not b!3899852))
(check-sat (not b_next!106249) (not b_next!106301) b_and!294889 (not b_next!106257) (not b_next!106311) (not b_next!106309) b_and!294911 b_and!294893 b_and!294895 (not b_next!106253) b_and!294885 b_and!294909 (not b_next!106259) b_and!294891 b_and!294883 b_and!294921 b_and!294919 (not b_next!106307) (not b_next!106283) b_and!294897 b_and!294917 (not b_next!106251) (not b_next!106279) (not b_next!106277) b_and!294887 b_and!294907 (not b_next!106303) (not b_next!106287) b_and!294905 b_and!294903 (not b_next!106285) (not b_next!106305) b_and!294915 b_and!294901 b_and!294913 (not b_next!106281) b_and!294899 (not b_next!106263) (not b_next!106255) (not b_next!106261))
