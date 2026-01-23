; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108430 () Bool)

(assert start!108430)

(declare-fun b!1214171 () Bool)

(declare-fun b_free!29049 () Bool)

(declare-fun b_next!29753 () Bool)

(assert (=> b!1214171 (= b_free!29049 (not b_next!29753))))

(declare-fun tp!344354 () Bool)

(declare-fun b_and!82353 () Bool)

(assert (=> b!1214171 (= tp!344354 b_and!82353)))

(declare-fun b_free!29051 () Bool)

(declare-fun b_next!29755 () Bool)

(assert (=> b!1214171 (= b_free!29051 (not b_next!29755))))

(declare-fun tp!344357 () Bool)

(declare-fun b_and!82355 () Bool)

(assert (=> b!1214171 (= tp!344357 b_and!82355)))

(declare-fun b!1214188 () Bool)

(declare-fun b_free!29053 () Bool)

(declare-fun b_next!29757 () Bool)

(assert (=> b!1214188 (= b_free!29053 (not b_next!29757))))

(declare-fun tp!344363 () Bool)

(declare-fun b_and!82357 () Bool)

(assert (=> b!1214188 (= tp!344363 b_and!82357)))

(declare-fun b_free!29055 () Bool)

(declare-fun b_next!29759 () Bool)

(assert (=> b!1214188 (= b_free!29055 (not b_next!29759))))

(declare-fun tp!344362 () Bool)

(declare-fun b_and!82359 () Bool)

(assert (=> b!1214188 (= tp!344362 b_and!82359)))

(declare-fun b!1214170 () Bool)

(declare-fun e!779126 () Bool)

(declare-fun e!779136 () Bool)

(assert (=> b!1214170 (= e!779126 e!779136)))

(declare-fun res!546010 () Bool)

(assert (=> b!1214170 (=> (not res!546010) (not e!779136))))

(declare-datatypes ((C!7100 0))(
  ( (C!7101 (val!4080 Int)) )
))
(declare-datatypes ((List!12402 0))(
  ( (Nil!12344) (Cons!12344 (h!17745 C!7100) (t!112972 List!12402)) )
))
(declare-fun lt!415157 () List!12402)

(declare-fun lt!415158 () List!12402)

(assert (=> b!1214170 (= res!546010 (= lt!415157 lt!415158))))

(declare-datatypes ((IArray!8097 0))(
  ( (IArray!8098 (innerList!4106 List!12402)) )
))
(declare-datatypes ((Conc!4046 0))(
  ( (Node!4046 (left!10690 Conc!4046) (right!11020 Conc!4046) (csize!8322 Int) (cheight!4257 Int)) (Leaf!6255 (xs!6757 IArray!8097) (csize!8323 Int)) (Empty!4046) )
))
(declare-datatypes ((BalanceConc!8024 0))(
  ( (BalanceConc!8025 (c!203208 Conc!4046)) )
))
(declare-fun lt!415160 () BalanceConc!8024)

(declare-fun list!4559 (BalanceConc!8024) List!12402)

(assert (=> b!1214170 (= lt!415158 (list!4559 lt!415160))))

(declare-fun lt!415165 () BalanceConc!8024)

(assert (=> b!1214170 (= lt!415157 (list!4559 lt!415165))))

(declare-fun e!779128 () Bool)

(assert (=> b!1214171 (= e!779128 (and tp!344354 tp!344357))))

(declare-fun b!1214172 () Bool)

(declare-fun res!546009 () Bool)

(declare-fun e!779131 () Bool)

(assert (=> b!1214172 (=> (not res!546009) (not e!779131))))

(declare-datatypes ((List!12403 0))(
  ( (Nil!12345) (Cons!12345 (h!17746 (_ BitVec 16)) (t!112973 List!12403)) )
))
(declare-datatypes ((TokenValue!2189 0))(
  ( (FloatLiteralValue!4378 (text!15768 List!12403)) (TokenValueExt!2188 (__x!8093 Int)) (Broken!10945 (value!69019 List!12403)) (Object!2246) (End!2189) (Def!2189) (Underscore!2189) (Match!2189) (Else!2189) (Error!2189) (Case!2189) (If!2189) (Extends!2189) (Abstract!2189) (Class!2189) (Val!2189) (DelimiterValue!4378 (del!2249 List!12403)) (KeywordValue!2195 (value!69020 List!12403)) (CommentValue!4378 (value!69021 List!12403)) (WhitespaceValue!4378 (value!69022 List!12403)) (IndentationValue!2189 (value!69023 List!12403)) (String!15076) (Int32!2189) (Broken!10946 (value!69024 List!12403)) (Boolean!2190) (Unit!18641) (OperatorValue!2192 (op!2249 List!12403)) (IdentifierValue!4378 (value!69025 List!12403)) (IdentifierValue!4379 (value!69026 List!12403)) (WhitespaceValue!4379 (value!69027 List!12403)) (True!4378) (False!4378) (Broken!10947 (value!69028 List!12403)) (Broken!10948 (value!69029 List!12403)) (True!4379) (RightBrace!2189) (RightBracket!2189) (Colon!2189) (Null!2189) (Comma!2189) (LeftBracket!2189) (False!4379) (LeftBrace!2189) (ImaginaryLiteralValue!2189 (text!15769 List!12403)) (StringLiteralValue!6567 (value!69030 List!12403)) (EOFValue!2189 (value!69031 List!12403)) (IdentValue!2189 (value!69032 List!12403)) (DelimiterValue!4379 (value!69033 List!12403)) (DedentValue!2189 (value!69034 List!12403)) (NewLineValue!2189 (value!69035 List!12403)) (IntegerValue!6567 (value!69036 (_ BitVec 32)) (text!15770 List!12403)) (IntegerValue!6568 (value!69037 Int) (text!15771 List!12403)) (Times!2189) (Or!2189) (Equal!2189) (Minus!2189) (Broken!10949 (value!69038 List!12403)) (And!2189) (Div!2189) (LessEqual!2189) (Mod!2189) (Concat!5580) (Not!2189) (Plus!2189) (SpaceValue!2189 (value!69039 List!12403)) (IntegerValue!6569 (value!69040 Int) (text!15772 List!12403)) (StringLiteralValue!6568 (text!15773 List!12403)) (FloatLiteralValue!4379 (text!15774 List!12403)) (BytesLiteralValue!2189 (value!69041 List!12403)) (CommentValue!4379 (value!69042 List!12403)) (StringLiteralValue!6569 (value!69043 List!12403)) (ErrorTokenValue!2189 (msg!2250 List!12403)) )
))
(declare-datatypes ((Regex!3391 0))(
  ( (ElementMatch!3391 (c!203209 C!7100)) (Concat!5581 (regOne!7294 Regex!3391) (regTwo!7294 Regex!3391)) (EmptyExpr!3391) (Star!3391 (reg!3720 Regex!3391)) (EmptyLang!3391) (Union!3391 (regOne!7295 Regex!3391) (regTwo!7295 Regex!3391)) )
))
(declare-datatypes ((String!15077 0))(
  ( (String!15078 (value!69044 String)) )
))
(declare-datatypes ((TokenValueInjection!4074 0))(
  ( (TokenValueInjection!4075 (toValue!3246 Int) (toChars!3105 Int)) )
))
(declare-datatypes ((Rule!4042 0))(
  ( (Rule!4043 (regex!2121 Regex!3391) (tag!2383 String!15077) (isSeparator!2121 Bool) (transformation!2121 TokenValueInjection!4074)) )
))
(declare-datatypes ((List!12404 0))(
  ( (Nil!12346) (Cons!12346 (h!17747 Rule!4042) (t!112974 List!12404)) )
))
(declare-fun rules!2728 () List!12404)

(declare-fun isEmpty!7347 (List!12404) Bool)

(assert (=> b!1214172 (= res!546009 (not (isEmpty!7347 rules!2728)))))

(declare-fun e!779132 () Bool)

(declare-datatypes ((Token!3904 0))(
  ( (Token!3905 (value!69045 TokenValue!2189) (rule!3544 Rule!4042) (size!9789 Int) (originalCharacters!2675 List!12402)) )
))
(declare-datatypes ((List!12405 0))(
  ( (Nil!12347) (Cons!12347 (h!17748 Token!3904) (t!112975 List!12405)) )
))
(declare-fun tokens!556 () List!12405)

(declare-fun b!1214173 () Bool)

(declare-fun e!779134 () Bool)

(declare-fun tp!344361 () Bool)

(declare-fun inv!16531 (String!15077) Bool)

(declare-fun inv!16534 (TokenValueInjection!4074) Bool)

(assert (=> b!1214173 (= e!779132 (and tp!344361 (inv!16531 (tag!2383 (rule!3544 (h!17748 tokens!556)))) (inv!16534 (transformation!2121 (rule!3544 (h!17748 tokens!556)))) e!779134))))

(declare-fun b!1214174 () Bool)

(declare-fun res!546007 () Bool)

(declare-fun e!779122 () Bool)

(assert (=> b!1214174 (=> (not res!546007) (not e!779122))))

(declare-fun isEmpty!7348 (List!12402) Bool)

(assert (=> b!1214174 (= res!546007 (not (isEmpty!7348 lt!415158)))))

(declare-fun e!779125 () Bool)

(declare-fun tp!344359 () Bool)

(declare-fun b!1214175 () Bool)

(declare-fun inv!21 (TokenValue!2189) Bool)

(assert (=> b!1214175 (= e!779125 (and (inv!21 (value!69045 (h!17748 tokens!556))) e!779132 tp!344359))))

(declare-fun b!1214176 () Bool)

(declare-fun e!779137 () Bool)

(declare-fun e!779130 () Bool)

(assert (=> b!1214176 (= e!779137 e!779130)))

(declare-fun res!546001 () Bool)

(assert (=> b!1214176 (=> (not res!546001) (not e!779130))))

(declare-datatypes ((tuple2!12214 0))(
  ( (tuple2!12215 (_1!6954 Token!3904) (_2!6954 List!12402)) )
))
(declare-fun lt!415161 () tuple2!12214)

(assert (=> b!1214176 (= res!546001 (= (_1!6954 lt!415161) (h!17748 tokens!556)))))

(declare-datatypes ((Option!2483 0))(
  ( (None!2482) (Some!2482 (v!20611 tuple2!12214)) )
))
(declare-fun lt!415163 () Option!2483)

(declare-fun get!4061 (Option!2483) tuple2!12214)

(assert (=> b!1214176 (= lt!415161 (get!4061 lt!415163))))

(declare-fun b!1214177 () Bool)

(declare-fun res!546000 () Bool)

(assert (=> b!1214177 (=> (not res!546000) (not e!779131))))

(declare-datatypes ((LexerInterface!1816 0))(
  ( (LexerInterfaceExt!1813 (__x!8094 Int)) (Lexer!1814) )
))
(declare-fun thiss!20528 () LexerInterface!1816)

(declare-fun input!2346 () List!12402)

(declare-datatypes ((tuple2!12216 0))(
  ( (tuple2!12217 (_1!6955 List!12405) (_2!6955 List!12402)) )
))
(declare-fun lexList!446 (LexerInterface!1816 List!12404 List!12402) tuple2!12216)

(assert (=> b!1214177 (= res!546000 (= (_1!6955 (lexList!446 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun res!546006 () Bool)

(assert (=> start!108430 (=> (not res!546006) (not e!779131))))

(get-info :version)

(assert (=> start!108430 (= res!546006 ((_ is Lexer!1814) thiss!20528))))

(assert (=> start!108430 e!779131))

(assert (=> start!108430 true))

(declare-fun e!779135 () Bool)

(assert (=> start!108430 e!779135))

(declare-fun e!779133 () Bool)

(assert (=> start!108430 e!779133))

(declare-fun e!779124 () Bool)

(assert (=> start!108430 e!779124))

(declare-fun b!1214178 () Bool)

(assert (=> b!1214178 (= e!779122 false)))

(declare-fun lt!415159 () tuple2!12216)

(declare-fun lt!415167 () List!12402)

(assert (=> b!1214178 (= lt!415159 (lexList!446 thiss!20528 rules!2728 lt!415167))))

(declare-fun lt!415164 () List!12405)

(declare-fun lt!415166 () List!12405)

(declare-fun lt!415162 () tuple2!12216)

(declare-fun ++!3160 (List!12405 List!12405) List!12405)

(assert (=> b!1214178 (= lt!415164 (++!3160 lt!415166 (_1!6955 lt!415162)))))

(declare-fun b!1214179 () Bool)

(declare-fun e!779129 () Bool)

(assert (=> b!1214179 (= e!779129 e!779122)))

(declare-fun res!546011 () Bool)

(assert (=> b!1214179 (=> (not res!546011) (not e!779122))))

(declare-fun isEmpty!7349 (List!12405) Bool)

(assert (=> b!1214179 (= res!546011 (not (isEmpty!7349 lt!415166)))))

(assert (=> b!1214179 (= lt!415162 (lexList!446 thiss!20528 rules!2728 (_2!6954 lt!415161)))))

(assert (=> b!1214179 (= lt!415166 (Cons!12347 (h!17748 tokens!556) Nil!12347))))

(declare-fun b!1214180 () Bool)

(declare-fun res!546003 () Bool)

(assert (=> b!1214180 (=> (not res!546003) (not e!779131))))

(declare-fun rulesInvariant!1690 (LexerInterface!1816 List!12404) Bool)

(assert (=> b!1214180 (= res!546003 (rulesInvariant!1690 thiss!20528 rules!2728))))

(declare-fun e!779123 () Bool)

(declare-fun tp!344356 () Bool)

(declare-fun b!1214181 () Bool)

(assert (=> b!1214181 (= e!779123 (and tp!344356 (inv!16531 (tag!2383 (h!17747 rules!2728))) (inv!16534 (transformation!2121 (h!17747 rules!2728))) e!779128))))

(declare-fun b!1214182 () Bool)

(declare-fun tp_is_empty!6303 () Bool)

(declare-fun tp!344358 () Bool)

(assert (=> b!1214182 (= e!779133 (and tp_is_empty!6303 tp!344358))))

(declare-fun b!1214183 () Bool)

(assert (=> b!1214183 (= e!779136 e!779129)))

(declare-fun res!546002 () Bool)

(assert (=> b!1214183 (=> (not res!546002) (not e!779129))))

(assert (=> b!1214183 (= res!546002 (= lt!415167 input!2346))))

(declare-fun ++!3161 (List!12402 List!12402) List!12402)

(assert (=> b!1214183 (= lt!415167 (++!3161 lt!415158 (_2!6954 lt!415161)))))

(declare-fun b!1214184 () Bool)

(assert (=> b!1214184 (= e!779130 e!779126)))

(declare-fun res!545999 () Bool)

(assert (=> b!1214184 (=> (not res!545999) (not e!779126))))

(assert (=> b!1214184 (= res!545999 (= lt!415165 lt!415160))))

(declare-fun charsOf!1127 (Token!3904) BalanceConc!8024)

(assert (=> b!1214184 (= lt!415160 (charsOf!1127 (h!17748 tokens!556)))))

(assert (=> b!1214184 (= lt!415165 (charsOf!1127 (_1!6954 lt!415161)))))

(declare-fun b!1214185 () Bool)

(declare-fun res!546005 () Bool)

(assert (=> b!1214185 (=> (not res!546005) (not e!779129))))

(declare-fun matchR!1513 (Regex!3391 List!12402) Bool)

(assert (=> b!1214185 (= res!546005 (matchR!1513 (regex!2121 (rule!3544 (_1!6954 lt!415161))) lt!415157))))

(declare-fun b!1214186 () Bool)

(declare-fun res!546012 () Bool)

(assert (=> b!1214186 (=> (not res!546012) (not e!779131))))

(assert (=> b!1214186 (= res!546012 (not ((_ is Nil!12347) tokens!556)))))

(declare-fun b!1214187 () Bool)

(declare-fun tp!344360 () Bool)

(assert (=> b!1214187 (= e!779135 (and e!779123 tp!344360))))

(assert (=> b!1214188 (= e!779134 (and tp!344363 tp!344362))))

(declare-fun b!1214189 () Bool)

(declare-fun res!546008 () Bool)

(assert (=> b!1214189 (=> (not res!546008) (not e!779129))))

(declare-fun rulesProduceIndividualToken!824 (LexerInterface!1816 List!12404 Token!3904) Bool)

(assert (=> b!1214189 (= res!546008 (not (rulesProduceIndividualToken!824 thiss!20528 rules!2728 (h!17748 tokens!556))))))

(declare-fun b!1214190 () Bool)

(assert (=> b!1214190 (= e!779131 e!779137)))

(declare-fun res!546004 () Bool)

(assert (=> b!1214190 (=> (not res!546004) (not e!779137))))

(declare-fun isDefined!2121 (Option!2483) Bool)

(assert (=> b!1214190 (= res!546004 (isDefined!2121 lt!415163))))

(declare-fun maxPrefix!938 (LexerInterface!1816 List!12404 List!12402) Option!2483)

(assert (=> b!1214190 (= lt!415163 (maxPrefix!938 thiss!20528 rules!2728 input!2346))))

(declare-fun tp!344355 () Bool)

(declare-fun b!1214191 () Bool)

(declare-fun inv!16535 (Token!3904) Bool)

(assert (=> b!1214191 (= e!779124 (and (inv!16535 (h!17748 tokens!556)) e!779125 tp!344355))))

(assert (= (and start!108430 res!546006) b!1214172))

(assert (= (and b!1214172 res!546009) b!1214180))

(assert (= (and b!1214180 res!546003) b!1214177))

(assert (= (and b!1214177 res!546000) b!1214186))

(assert (= (and b!1214186 res!546012) b!1214190))

(assert (= (and b!1214190 res!546004) b!1214176))

(assert (= (and b!1214176 res!546001) b!1214184))

(assert (= (and b!1214184 res!545999) b!1214170))

(assert (= (and b!1214170 res!546010) b!1214183))

(assert (= (and b!1214183 res!546002) b!1214185))

(assert (= (and b!1214185 res!546005) b!1214189))

(assert (= (and b!1214189 res!546008) b!1214179))

(assert (= (and b!1214179 res!546011) b!1214174))

(assert (= (and b!1214174 res!546007) b!1214178))

(assert (= b!1214181 b!1214171))

(assert (= b!1214187 b!1214181))

(assert (= (and start!108430 ((_ is Cons!12346) rules!2728)) b!1214187))

(assert (= (and start!108430 ((_ is Cons!12344) input!2346)) b!1214182))

(assert (= b!1214173 b!1214188))

(assert (= b!1214175 b!1214173))

(assert (= b!1214191 b!1214175))

(assert (= (and start!108430 ((_ is Cons!12347) tokens!556)) b!1214191))

(declare-fun m!1389071 () Bool)

(assert (=> b!1214185 m!1389071))

(declare-fun m!1389073 () Bool)

(assert (=> b!1214173 m!1389073))

(declare-fun m!1389075 () Bool)

(assert (=> b!1214173 m!1389075))

(declare-fun m!1389077 () Bool)

(assert (=> b!1214179 m!1389077))

(declare-fun m!1389079 () Bool)

(assert (=> b!1214179 m!1389079))

(declare-fun m!1389081 () Bool)

(assert (=> b!1214184 m!1389081))

(declare-fun m!1389083 () Bool)

(assert (=> b!1214184 m!1389083))

(declare-fun m!1389085 () Bool)

(assert (=> b!1214180 m!1389085))

(declare-fun m!1389087 () Bool)

(assert (=> b!1214177 m!1389087))

(declare-fun m!1389089 () Bool)

(assert (=> b!1214181 m!1389089))

(declare-fun m!1389091 () Bool)

(assert (=> b!1214181 m!1389091))

(declare-fun m!1389093 () Bool)

(assert (=> b!1214175 m!1389093))

(declare-fun m!1389095 () Bool)

(assert (=> b!1214170 m!1389095))

(declare-fun m!1389097 () Bool)

(assert (=> b!1214170 m!1389097))

(declare-fun m!1389099 () Bool)

(assert (=> b!1214190 m!1389099))

(declare-fun m!1389101 () Bool)

(assert (=> b!1214190 m!1389101))

(declare-fun m!1389103 () Bool)

(assert (=> b!1214189 m!1389103))

(declare-fun m!1389105 () Bool)

(assert (=> b!1214176 m!1389105))

(declare-fun m!1389107 () Bool)

(assert (=> b!1214174 m!1389107))

(declare-fun m!1389109 () Bool)

(assert (=> b!1214191 m!1389109))

(declare-fun m!1389111 () Bool)

(assert (=> b!1214172 m!1389111))

(declare-fun m!1389113 () Bool)

(assert (=> b!1214183 m!1389113))

(declare-fun m!1389115 () Bool)

(assert (=> b!1214178 m!1389115))

(declare-fun m!1389117 () Bool)

(assert (=> b!1214178 m!1389117))

(check-sat (not b_next!29755) (not b_next!29759) (not b!1214173) (not b!1214191) (not b!1214181) (not b!1214180) b_and!82357 (not b_next!29753) (not b!1214185) (not b!1214184) tp_is_empty!6303 (not b!1214182) b_and!82355 (not b!1214175) (not b!1214183) (not b!1214174) (not b!1214189) b_and!82359 b_and!82353 (not b!1214187) (not b_next!29757) (not b!1214170) (not b!1214179) (not b!1214177) (not b!1214172) (not b!1214178) (not b!1214190) (not b!1214176))
(check-sat (not b_next!29755) (not b_next!29759) b_and!82355 b_and!82357 (not b_next!29753) (not b_next!29757) b_and!82359 b_and!82353)
