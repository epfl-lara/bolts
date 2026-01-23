; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756984 () Bool)

(assert start!756984)

(declare-fun b!8040293 () Bool)

(declare-fun b_free!135539 () Bool)

(declare-fun b_next!136329 () Bool)

(assert (=> b!8040293 (= b_free!135539 (not b_next!136329))))

(declare-fun tp!2408579 () Bool)

(declare-fun b_and!353975 () Bool)

(assert (=> b!8040293 (= tp!2408579 b_and!353975)))

(declare-fun b_free!135541 () Bool)

(declare-fun b_next!136331 () Bool)

(assert (=> b!8040293 (= b_free!135541 (not b_next!136331))))

(declare-fun tp!2408581 () Bool)

(declare-fun b_and!353977 () Bool)

(assert (=> b!8040293 (= tp!2408581 b_and!353977)))

(declare-fun b!8040301 () Bool)

(declare-fun b_free!135543 () Bool)

(declare-fun b_next!136333 () Bool)

(assert (=> b!8040301 (= b_free!135543 (not b_next!136333))))

(declare-fun tp!2408585 () Bool)

(declare-fun b_and!353979 () Bool)

(assert (=> b!8040301 (= tp!2408585 b_and!353979)))

(declare-fun b_free!135545 () Bool)

(declare-fun b_next!136335 () Bool)

(assert (=> b!8040301 (= b_free!135545 (not b_next!136335))))

(declare-fun tp!2408576 () Bool)

(declare-fun b_and!353981 () Bool)

(assert (=> b!8040301 (= tp!2408576 b_and!353981)))

(declare-fun b!8040297 () Bool)

(declare-fun b_free!135547 () Bool)

(declare-fun b_next!136337 () Bool)

(assert (=> b!8040297 (= b_free!135547 (not b_next!136337))))

(declare-fun tp!2408574 () Bool)

(declare-fun b_and!353983 () Bool)

(assert (=> b!8040297 (= tp!2408574 b_and!353983)))

(declare-fun b_free!135549 () Bool)

(declare-fun b_next!136339 () Bool)

(assert (=> b!8040297 (= b_free!135549 (not b_next!136339))))

(declare-fun tp!2408573 () Bool)

(declare-fun b_and!353985 () Bool)

(assert (=> b!8040297 (= tp!2408573 b_and!353985)))

(declare-fun b!8040303 () Bool)

(declare-fun b_free!135551 () Bool)

(declare-fun b_next!136341 () Bool)

(assert (=> b!8040303 (= b_free!135551 (not b_next!136341))))

(declare-fun tp!2408575 () Bool)

(declare-fun b_and!353987 () Bool)

(assert (=> b!8040303 (= tp!2408575 b_and!353987)))

(declare-fun b_free!135553 () Bool)

(declare-fun b_next!136343 () Bool)

(assert (=> b!8040303 (= b_free!135553 (not b_next!136343))))

(declare-fun tp!2408583 () Bool)

(declare-fun b_and!353989 () Bool)

(assert (=> b!8040303 (= tp!2408583 b_and!353989)))

(declare-fun b!8040291 () Bool)

(declare-fun res!3178231 () Bool)

(declare-fun e!4735964 () Bool)

(assert (=> b!8040291 (=> (not res!3178231) (not e!4735964))))

(declare-datatypes ((List!75222 0))(
  ( (Nil!75096) (Cons!75096 (h!81544 (_ BitVec 16)) (t!390992 List!75222)) )
))
(declare-datatypes ((TokenValue!9016 0))(
  ( (FloatLiteralValue!18032 (text!63557 List!75222)) (TokenValueExt!9015 (__x!35313 Int)) (Broken!45080 (value!290906 List!75222)) (Object!9141) (End!9016) (Def!9016) (Underscore!9016) (Match!9016) (Else!9016) (Error!9016) (Case!9016) (If!9016) (Extends!9016) (Abstract!9016) (Class!9016) (Val!9016) (DelimiterValue!18032 (del!9076 List!75222)) (KeywordValue!9022 (value!290907 List!75222)) (CommentValue!18032 (value!290908 List!75222)) (WhitespaceValue!18032 (value!290909 List!75222)) (IndentationValue!9016 (value!290910 List!75222)) (String!84853) (Int32!9016) (Broken!45081 (value!290911 List!75222)) (Boolean!9017) (Unit!171023) (OperatorValue!9019 (op!9076 List!75222)) (IdentifierValue!18032 (value!290912 List!75222)) (IdentifierValue!18033 (value!290913 List!75222)) (WhitespaceValue!18033 (value!290914 List!75222)) (True!18032) (False!18032) (Broken!45082 (value!290915 List!75222)) (Broken!45083 (value!290916 List!75222)) (True!18033) (RightBrace!9016) (RightBracket!9016) (Colon!9016) (Null!9016) (Comma!9016) (LeftBracket!9016) (False!18033) (LeftBrace!9016) (ImaginaryLiteralValue!9016 (text!63558 List!75222)) (StringLiteralValue!27048 (value!290917 List!75222)) (EOFValue!9016 (value!290918 List!75222)) (IdentValue!9016 (value!290919 List!75222)) (DelimiterValue!18033 (value!290920 List!75222)) (DedentValue!9016 (value!290921 List!75222)) (NewLineValue!9016 (value!290922 List!75222)) (IntegerValue!27048 (value!290923 (_ BitVec 32)) (text!63559 List!75222)) (IntegerValue!27049 (value!290924 Int) (text!63560 List!75222)) (Times!9016) (Or!9016) (Equal!9016) (Minus!9016) (Broken!45084 (value!290925 List!75222)) (And!9016) (Div!9016) (LessEqual!9016) (Mod!9016) (Concat!30783) (Not!9016) (Plus!9016) (SpaceValue!9016 (value!290926 List!75222)) (IntegerValue!27050 (value!290927 Int) (text!63561 List!75222)) (StringLiteralValue!27049 (text!63562 List!75222)) (FloatLiteralValue!18033 (text!63563 List!75222)) (BytesLiteralValue!9016 (value!290928 List!75222)) (CommentValue!18033 (value!290929 List!75222)) (StringLiteralValue!27050 (value!290930 List!75222)) (ErrorTokenValue!9016 (msg!9077 List!75222)) )
))
(declare-datatypes ((C!43872 0))(
  ( (C!43873 (val!32712 Int)) )
))
(declare-datatypes ((List!75223 0))(
  ( (Nil!75097) (Cons!75097 (h!81545 C!43872) (t!390993 List!75223)) )
))
(declare-datatypes ((IArray!31989 0))(
  ( (IArray!31990 (innerList!16052 List!75223)) )
))
(declare-datatypes ((Conc!15964 0))(
  ( (Node!15964 (left!57261 Conc!15964) (right!57591 Conc!15964) (csize!32158 Int) (cheight!16175 Int)) (Leaf!30622 (xs!19362 IArray!31989) (csize!32159 Int)) (Empty!15964) )
))
(declare-datatypes ((BalanceConc!30884 0))(
  ( (BalanceConc!30885 (c!1474897 Conc!15964)) )
))
(declare-datatypes ((Regex!21767 0))(
  ( (ElementMatch!21767 (c!1474898 C!43872)) (Concat!30784 (regOne!44046 Regex!21767) (regTwo!44046 Regex!21767)) (EmptyExpr!21767) (Star!21767 (reg!22096 Regex!21767)) (EmptyLang!21767) (Union!21767 (regOne!44047 Regex!21767) (regTwo!44047 Regex!21767)) )
))
(declare-datatypes ((String!84854 0))(
  ( (String!84855 (value!290931 String)) )
))
(declare-datatypes ((TokenValueInjection!17340 0))(
  ( (TokenValueInjection!17341 (toValue!11767 Int) (toChars!11626 Int)) )
))
(declare-datatypes ((Rule!17192 0))(
  ( (Rule!17193 (regex!8696 Regex!21767) (tag!9560 String!84854) (isSeparator!8696 Bool) (transformation!8696 TokenValueInjection!17340)) )
))
(declare-datatypes ((List!75224 0))(
  ( (Nil!75098) (Cons!75098 (h!81546 Rule!17192) (t!390994 List!75224)) )
))
(declare-fun rulesRec!188 () List!75224)

(declare-fun rNSep!142 () Rule!17192)

(get-info :version)

(assert (=> b!8040291 (= res!3178231 (and (or (not ((_ is Cons!75098) rulesRec!188)) (not (= (h!81546 rulesRec!188) rNSep!142))) ((_ is Cons!75098) rulesRec!188)))))

(declare-fun b!8040292 () Bool)

(declare-fun res!3178237 () Bool)

(assert (=> b!8040292 (=> (not res!3178237) (not e!4735964))))

(declare-fun rules!4142 () List!75224)

(declare-fun contains!20975 (List!75224 Rule!17192) Bool)

(assert (=> b!8040292 (= res!3178237 (contains!20975 rules!4142 rNSep!142))))

(declare-fun e!4735967 () Bool)

(assert (=> b!8040293 (= e!4735967 (and tp!2408579 tp!2408581))))

(declare-fun b!8040294 () Bool)

(declare-fun res!3178232 () Bool)

(assert (=> b!8040294 (=> (not res!3178232) (not e!4735964))))

(declare-fun rSep!142 () Rule!17192)

(declare-fun c!6865 () C!43872)

(declare-fun contains!20976 (List!75223 C!43872) Bool)

(declare-fun usedCharacters!1274 (Regex!21767) List!75223)

(assert (=> b!8040294 (= res!3178232 (contains!20976 (usedCharacters!1274 (regex!8696 rSep!142)) c!6865))))

(declare-fun b!8040295 () Bool)

(declare-fun e!4735974 () Bool)

(declare-fun e!4735966 () Bool)

(declare-fun tp!2408580 () Bool)

(declare-fun inv!96907 (String!84854) Bool)

(declare-fun inv!96909 (TokenValueInjection!17340) Bool)

(assert (=> b!8040295 (= e!4735966 (and tp!2408580 (inv!96907 (tag!9560 (h!81546 rulesRec!188))) (inv!96909 (transformation!8696 (h!81546 rulesRec!188))) e!4735974))))

(declare-fun b!8040296 () Bool)

(assert (=> b!8040296 (= e!4735964 (not (contains!20975 (t!390994 rulesRec!188) rNSep!142)))))

(assert (=> b!8040297 (= e!4735974 (and tp!2408574 tp!2408573))))

(declare-fun b!8040298 () Bool)

(declare-fun res!3178230 () Bool)

(assert (=> b!8040298 (=> (not res!3178230) (not e!4735964))))

(declare-datatypes ((LexerInterface!8286 0))(
  ( (LexerInterfaceExt!8283 (__x!35314 Int)) (Lexer!8284) )
))
(declare-fun thiss!27054 () LexerInterface!8286)

(declare-fun rulesInvariant!6754 (LexerInterface!8286 List!75224) Bool)

(assert (=> b!8040298 (= res!3178230 (rulesInvariant!6754 thiss!27054 rules!4142))))

(declare-fun e!4735969 () Bool)

(declare-fun tp!2408584 () Bool)

(declare-fun b!8040299 () Bool)

(assert (=> b!8040299 (= e!4735969 (and tp!2408584 (inv!96907 (tag!9560 (h!81546 rules!4142))) (inv!96909 (transformation!8696 (h!81546 rules!4142))) e!4735967))))

(declare-fun b!8040300 () Bool)

(declare-fun e!4735971 () Bool)

(declare-fun tp!2408578 () Bool)

(assert (=> b!8040300 (= e!4735971 (and e!4735966 tp!2408578))))

(declare-fun e!4735962 () Bool)

(assert (=> b!8040301 (= e!4735962 (and tp!2408585 tp!2408576))))

(declare-fun b!8040302 () Bool)

(declare-fun res!3178229 () Bool)

(assert (=> b!8040302 (=> (not res!3178229) (not e!4735964))))

(assert (=> b!8040302 (= res!3178229 (and (not (isSeparator!8696 rNSep!142)) (isSeparator!8696 rSep!142)))))

(declare-fun e!4735973 () Bool)

(assert (=> b!8040303 (= e!4735973 (and tp!2408575 tp!2408583))))

(declare-fun b!8040304 () Bool)

(declare-fun res!3178234 () Bool)

(assert (=> b!8040304 (=> (not res!3178234) (not e!4735964))))

(declare-fun sepAndNonSepRulesDisjointChars!2056 (List!75224 List!75224) Bool)

(assert (=> b!8040304 (= res!3178234 (sepAndNonSepRulesDisjointChars!2056 rules!4142 rulesRec!188))))

(declare-fun b!8040305 () Bool)

(declare-fun tp!2408572 () Bool)

(declare-fun e!4735975 () Bool)

(assert (=> b!8040305 (= e!4735975 (and tp!2408572 (inv!96907 (tag!9560 rNSep!142)) (inv!96909 (transformation!8696 rNSep!142)) e!4735962))))

(declare-fun b!8040306 () Bool)

(declare-fun e!4735972 () Bool)

(declare-fun tp!2408577 () Bool)

(assert (=> b!8040306 (= e!4735972 (and tp!2408577 (inv!96907 (tag!9560 rSep!142)) (inv!96909 (transformation!8696 rSep!142)) e!4735973))))

(declare-fun b!8040307 () Bool)

(declare-fun res!3178235 () Bool)

(assert (=> b!8040307 (=> (not res!3178235) (not e!4735964))))

(assert (=> b!8040307 (= res!3178235 (contains!20975 rules!4142 rSep!142))))

(declare-fun b!8040308 () Bool)

(declare-fun res!3178233 () Bool)

(assert (=> b!8040308 (=> (not res!3178233) (not e!4735964))))

(assert (=> b!8040308 (= res!3178233 (contains!20975 rulesRec!188 rNSep!142))))

(declare-fun res!3178236 () Bool)

(assert (=> start!756984 (=> (not res!3178236) (not e!4735964))))

(assert (=> start!756984 (= res!3178236 ((_ is Lexer!8284) thiss!27054))))

(assert (=> start!756984 e!4735964))

(assert (=> start!756984 true))

(declare-fun e!4735970 () Bool)

(assert (=> start!756984 e!4735970))

(assert (=> start!756984 e!4735972))

(assert (=> start!756984 e!4735971))

(assert (=> start!756984 e!4735975))

(declare-fun tp_is_empty!54529 () Bool)

(assert (=> start!756984 tp_is_empty!54529))

(declare-fun b!8040309 () Bool)

(declare-fun tp!2408582 () Bool)

(assert (=> b!8040309 (= e!4735970 (and e!4735969 tp!2408582))))

(assert (= (and start!756984 res!3178236) b!8040298))

(assert (= (and b!8040298 res!3178230) b!8040307))

(assert (= (and b!8040307 res!3178235) b!8040308))

(assert (= (and b!8040308 res!3178233) b!8040292))

(assert (= (and b!8040292 res!3178237) b!8040302))

(assert (= (and b!8040302 res!3178229) b!8040294))

(assert (= (and b!8040294 res!3178232) b!8040304))

(assert (= (and b!8040304 res!3178234) b!8040291))

(assert (= (and b!8040291 res!3178231) b!8040296))

(assert (= b!8040299 b!8040293))

(assert (= b!8040309 b!8040299))

(assert (= (and start!756984 ((_ is Cons!75098) rules!4142)) b!8040309))

(assert (= b!8040306 b!8040303))

(assert (= start!756984 b!8040306))

(assert (= b!8040295 b!8040297))

(assert (= b!8040300 b!8040295))

(assert (= (and start!756984 ((_ is Cons!75098) rulesRec!188)) b!8040300))

(assert (= b!8040305 b!8040301))

(assert (= start!756984 b!8040305))

(declare-fun m!8394886 () Bool)

(assert (=> b!8040306 m!8394886))

(declare-fun m!8394888 () Bool)

(assert (=> b!8040306 m!8394888))

(declare-fun m!8394890 () Bool)

(assert (=> b!8040295 m!8394890))

(declare-fun m!8394892 () Bool)

(assert (=> b!8040295 m!8394892))

(declare-fun m!8394894 () Bool)

(assert (=> b!8040298 m!8394894))

(declare-fun m!8394896 () Bool)

(assert (=> b!8040299 m!8394896))

(declare-fun m!8394898 () Bool)

(assert (=> b!8040299 m!8394898))

(declare-fun m!8394900 () Bool)

(assert (=> b!8040292 m!8394900))

(declare-fun m!8394902 () Bool)

(assert (=> b!8040308 m!8394902))

(declare-fun m!8394904 () Bool)

(assert (=> b!8040305 m!8394904))

(declare-fun m!8394906 () Bool)

(assert (=> b!8040305 m!8394906))

(declare-fun m!8394908 () Bool)

(assert (=> b!8040296 m!8394908))

(declare-fun m!8394910 () Bool)

(assert (=> b!8040307 m!8394910))

(declare-fun m!8394912 () Bool)

(assert (=> b!8040304 m!8394912))

(declare-fun m!8394914 () Bool)

(assert (=> b!8040294 m!8394914))

(assert (=> b!8040294 m!8394914))

(declare-fun m!8394916 () Bool)

(assert (=> b!8040294 m!8394916))

(check-sat b_and!353979 (not b_next!136329) b_and!353987 b_and!353983 (not b!8040295) (not b_next!136339) (not b!8040309) (not b!8040307) (not b_next!136337) (not b!8040294) (not b_next!136333) (not b!8040300) (not b_next!136331) (not b!8040292) (not b!8040296) (not b_next!136343) b_and!353977 (not b!8040304) (not b!8040305) (not b_next!136335) (not b!8040299) b_and!353981 (not b_next!136341) b_and!353975 tp_is_empty!54529 b_and!353985 (not b!8040306) (not b!8040308) (not b!8040298) b_and!353989)
(check-sat (not b_next!136337) (not b_next!136333) b_and!353979 (not b_next!136331) (not b_next!136329) b_and!353987 b_and!353983 (not b_next!136335) b_and!353981 (not b_next!136339) b_and!353985 b_and!353989 (not b_next!136343) b_and!353977 (not b_next!136341) b_and!353975)
(get-model)

(declare-fun d!2395464 () Bool)

(declare-fun lt!2722239 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16029 (List!75224) (InoxSet Rule!17192))

(assert (=> d!2395464 (= lt!2722239 (select (content!16029 rules!4142) rNSep!142))))

(declare-fun e!4735991 () Bool)

(assert (=> d!2395464 (= lt!2722239 e!4735991)))

(declare-fun res!3178266 () Bool)

(assert (=> d!2395464 (=> (not res!3178266) (not e!4735991))))

(assert (=> d!2395464 (= res!3178266 ((_ is Cons!75098) rules!4142))))

(assert (=> d!2395464 (= (contains!20975 rules!4142 rNSep!142) lt!2722239)))

(declare-fun b!8040325 () Bool)

(declare-fun e!4735992 () Bool)

(assert (=> b!8040325 (= e!4735991 e!4735992)))

(declare-fun res!3178267 () Bool)

(assert (=> b!8040325 (=> res!3178267 e!4735992)))

(assert (=> b!8040325 (= res!3178267 (= (h!81546 rules!4142) rNSep!142))))

(declare-fun b!8040326 () Bool)

(assert (=> b!8040326 (= e!4735992 (contains!20975 (t!390994 rules!4142) rNSep!142))))

(assert (= (and d!2395464 res!3178266) b!8040325))

(assert (= (and b!8040325 (not res!3178267)) b!8040326))

(declare-fun m!8394932 () Bool)

(assert (=> d!2395464 m!8394932))

(declare-fun m!8394934 () Bool)

(assert (=> d!2395464 m!8394934))

(declare-fun m!8394936 () Bool)

(assert (=> b!8040326 m!8394936))

(assert (=> b!8040292 d!2395464))

(declare-fun d!2395472 () Bool)

(declare-fun lt!2722242 () Bool)

(declare-fun content!16031 (List!75223) (InoxSet C!43872))

(assert (=> d!2395472 (= lt!2722242 (select (content!16031 (usedCharacters!1274 (regex!8696 rSep!142))) c!6865))))

(declare-fun e!4736000 () Bool)

(assert (=> d!2395472 (= lt!2722242 e!4736000)))

(declare-fun res!3178276 () Bool)

(assert (=> d!2395472 (=> (not res!3178276) (not e!4736000))))

(assert (=> d!2395472 (= res!3178276 ((_ is Cons!75097) (usedCharacters!1274 (regex!8696 rSep!142))))))

(assert (=> d!2395472 (= (contains!20976 (usedCharacters!1274 (regex!8696 rSep!142)) c!6865) lt!2722242)))

(declare-fun b!8040334 () Bool)

(declare-fun e!4736001 () Bool)

(assert (=> b!8040334 (= e!4736000 e!4736001)))

(declare-fun res!3178275 () Bool)

(assert (=> b!8040334 (=> res!3178275 e!4736001)))

(assert (=> b!8040334 (= res!3178275 (= (h!81545 (usedCharacters!1274 (regex!8696 rSep!142))) c!6865))))

(declare-fun b!8040335 () Bool)

(assert (=> b!8040335 (= e!4736001 (contains!20976 (t!390993 (usedCharacters!1274 (regex!8696 rSep!142))) c!6865))))

(assert (= (and d!2395472 res!3178276) b!8040334))

(assert (= (and b!8040334 (not res!3178275)) b!8040335))

(assert (=> d!2395472 m!8394914))

(declare-fun m!8394942 () Bool)

(assert (=> d!2395472 m!8394942))

(declare-fun m!8394944 () Bool)

(assert (=> d!2395472 m!8394944))

(declare-fun m!8394946 () Bool)

(assert (=> b!8040335 m!8394946))

(assert (=> b!8040294 d!2395472))

(declare-fun b!8040374 () Bool)

(declare-fun e!4736024 () List!75223)

(declare-fun call!746368 () List!75223)

(assert (=> b!8040374 (= e!4736024 call!746368)))

(declare-fun b!8040375 () Bool)

(declare-fun e!4736027 () List!75223)

(declare-fun e!4736026 () List!75223)

(assert (=> b!8040375 (= e!4736027 e!4736026)))

(declare-fun c!1474915 () Bool)

(assert (=> b!8040375 (= c!1474915 ((_ is ElementMatch!21767) (regex!8696 rSep!142)))))

(declare-fun d!2395476 () Bool)

(declare-fun c!1474917 () Bool)

(assert (=> d!2395476 (= c!1474917 (or ((_ is EmptyExpr!21767) (regex!8696 rSep!142)) ((_ is EmptyLang!21767) (regex!8696 rSep!142))))))

(assert (=> d!2395476 (= (usedCharacters!1274 (regex!8696 rSep!142)) e!4736027)))

(declare-fun b!8040376 () Bool)

(assert (=> b!8040376 (= e!4736027 Nil!75097)))

(declare-fun b!8040377 () Bool)

(declare-fun e!4736025 () List!75223)

(declare-fun call!746365 () List!75223)

(assert (=> b!8040377 (= e!4736025 call!746365)))

(declare-fun bm!746360 () Bool)

(declare-fun call!746367 () List!75223)

(declare-fun call!746366 () List!75223)

(declare-fun ++!18619 (List!75223 List!75223) List!75223)

(assert (=> bm!746360 (= call!746368 (++!18619 call!746367 call!746366))))

(declare-fun c!1474916 () Bool)

(declare-fun c!1474918 () Bool)

(declare-fun bm!746361 () Bool)

(assert (=> bm!746361 (= call!746365 (usedCharacters!1274 (ite c!1474916 (reg!22096 (regex!8696 rSep!142)) (ite c!1474918 (regTwo!44047 (regex!8696 rSep!142)) (regTwo!44046 (regex!8696 rSep!142))))))))

(declare-fun b!8040378 () Bool)

(assert (=> b!8040378 (= e!4736025 e!4736024)))

(assert (=> b!8040378 (= c!1474918 ((_ is Union!21767) (regex!8696 rSep!142)))))

(declare-fun b!8040379 () Bool)

(assert (=> b!8040379 (= e!4736024 call!746368)))

(declare-fun b!8040380 () Bool)

(assert (=> b!8040380 (= e!4736026 (Cons!75097 (c!1474898 (regex!8696 rSep!142)) Nil!75097))))

(declare-fun b!8040381 () Bool)

(assert (=> b!8040381 (= c!1474916 ((_ is Star!21767) (regex!8696 rSep!142)))))

(assert (=> b!8040381 (= e!4736026 e!4736025)))

(declare-fun bm!746362 () Bool)

(assert (=> bm!746362 (= call!746367 (usedCharacters!1274 (ite c!1474918 (regOne!44047 (regex!8696 rSep!142)) (regOne!44046 (regex!8696 rSep!142)))))))

(declare-fun bm!746363 () Bool)

(assert (=> bm!746363 (= call!746366 call!746365)))

(assert (= (and d!2395476 c!1474917) b!8040376))

(assert (= (and d!2395476 (not c!1474917)) b!8040375))

(assert (= (and b!8040375 c!1474915) b!8040380))

(assert (= (and b!8040375 (not c!1474915)) b!8040381))

(assert (= (and b!8040381 c!1474916) b!8040377))

(assert (= (and b!8040381 (not c!1474916)) b!8040378))

(assert (= (and b!8040378 c!1474918) b!8040379))

(assert (= (and b!8040378 (not c!1474918)) b!8040374))

(assert (= (or b!8040379 b!8040374) bm!746363))

(assert (= (or b!8040379 b!8040374) bm!746362))

(assert (= (or b!8040379 b!8040374) bm!746360))

(assert (= (or b!8040377 bm!746363) bm!746361))

(declare-fun m!8394954 () Bool)

(assert (=> bm!746360 m!8394954))

(declare-fun m!8394956 () Bool)

(assert (=> bm!746361 m!8394956))

(declare-fun m!8394958 () Bool)

(assert (=> bm!746362 m!8394958))

(assert (=> b!8040294 d!2395476))

(declare-fun d!2395480 () Bool)

(assert (=> d!2395480 (= (inv!96907 (tag!9560 rNSep!142)) (= (mod (str.len (value!290931 (tag!9560 rNSep!142))) 2) 0))))

(assert (=> b!8040305 d!2395480))

(declare-fun d!2395482 () Bool)

(declare-fun res!3178287 () Bool)

(declare-fun e!4736036 () Bool)

(assert (=> d!2395482 (=> (not res!3178287) (not e!4736036))))

(declare-fun semiInverseModEq!3859 (Int Int) Bool)

(assert (=> d!2395482 (= res!3178287 (semiInverseModEq!3859 (toChars!11626 (transformation!8696 rNSep!142)) (toValue!11767 (transformation!8696 rNSep!142))))))

(assert (=> d!2395482 (= (inv!96909 (transformation!8696 rNSep!142)) e!4736036)))

(declare-fun b!8040394 () Bool)

(declare-fun equivClasses!3674 (Int Int) Bool)

(assert (=> b!8040394 (= e!4736036 (equivClasses!3674 (toChars!11626 (transformation!8696 rNSep!142)) (toValue!11767 (transformation!8696 rNSep!142))))))

(assert (= (and d!2395482 res!3178287) b!8040394))

(declare-fun m!8394972 () Bool)

(assert (=> d!2395482 m!8394972))

(declare-fun m!8394974 () Bool)

(assert (=> b!8040394 m!8394974))

(assert (=> b!8040305 d!2395482))

(declare-fun d!2395488 () Bool)

(declare-fun res!3178301 () Bool)

(declare-fun e!4736050 () Bool)

(assert (=> d!2395488 (=> res!3178301 e!4736050)))

(assert (=> d!2395488 (= res!3178301 (not ((_ is Cons!75098) rulesRec!188)))))

(assert (=> d!2395488 (= (sepAndNonSepRulesDisjointChars!2056 rules!4142 rulesRec!188) e!4736050)))

(declare-fun b!8040408 () Bool)

(declare-fun e!4736051 () Bool)

(assert (=> b!8040408 (= e!4736050 e!4736051)))

(declare-fun res!3178302 () Bool)

(assert (=> b!8040408 (=> (not res!3178302) (not e!4736051))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!975 (Rule!17192 List!75224) Bool)

(assert (=> b!8040408 (= res!3178302 (ruleDisjointCharsFromAllFromOtherType!975 (h!81546 rulesRec!188) rules!4142))))

(declare-fun b!8040409 () Bool)

(assert (=> b!8040409 (= e!4736051 (sepAndNonSepRulesDisjointChars!2056 rules!4142 (t!390994 rulesRec!188)))))

(assert (= (and d!2395488 (not res!3178301)) b!8040408))

(assert (= (and b!8040408 res!3178302) b!8040409))

(declare-fun m!8394992 () Bool)

(assert (=> b!8040408 m!8394992))

(declare-fun m!8394994 () Bool)

(assert (=> b!8040409 m!8394994))

(assert (=> b!8040304 d!2395488))

(declare-fun d!2395504 () Bool)

(declare-fun lt!2722248 () Bool)

(assert (=> d!2395504 (= lt!2722248 (select (content!16029 rules!4142) rSep!142))))

(declare-fun e!4736054 () Bool)

(assert (=> d!2395504 (= lt!2722248 e!4736054)))

(declare-fun res!3178305 () Bool)

(assert (=> d!2395504 (=> (not res!3178305) (not e!4736054))))

(assert (=> d!2395504 (= res!3178305 ((_ is Cons!75098) rules!4142))))

(assert (=> d!2395504 (= (contains!20975 rules!4142 rSep!142) lt!2722248)))

(declare-fun b!8040412 () Bool)

(declare-fun e!4736055 () Bool)

(assert (=> b!8040412 (= e!4736054 e!4736055)))

(declare-fun res!3178306 () Bool)

(assert (=> b!8040412 (=> res!3178306 e!4736055)))

(assert (=> b!8040412 (= res!3178306 (= (h!81546 rules!4142) rSep!142))))

(declare-fun b!8040413 () Bool)

(assert (=> b!8040413 (= e!4736055 (contains!20975 (t!390994 rules!4142) rSep!142))))

(assert (= (and d!2395504 res!3178305) b!8040412))

(assert (= (and b!8040412 (not res!3178306)) b!8040413))

(assert (=> d!2395504 m!8394932))

(declare-fun m!8395000 () Bool)

(assert (=> d!2395504 m!8395000))

(declare-fun m!8395002 () Bool)

(assert (=> b!8040413 m!8395002))

(assert (=> b!8040307 d!2395504))

(declare-fun d!2395506 () Bool)

(declare-fun lt!2722249 () Bool)

(assert (=> d!2395506 (= lt!2722249 (select (content!16029 rulesRec!188) rNSep!142))))

(declare-fun e!4736058 () Bool)

(assert (=> d!2395506 (= lt!2722249 e!4736058)))

(declare-fun res!3178307 () Bool)

(assert (=> d!2395506 (=> (not res!3178307) (not e!4736058))))

(assert (=> d!2395506 (= res!3178307 ((_ is Cons!75098) rulesRec!188))))

(assert (=> d!2395506 (= (contains!20975 rulesRec!188 rNSep!142) lt!2722249)))

(declare-fun b!8040418 () Bool)

(declare-fun e!4736059 () Bool)

(assert (=> b!8040418 (= e!4736058 e!4736059)))

(declare-fun res!3178308 () Bool)

(assert (=> b!8040418 (=> res!3178308 e!4736059)))

(assert (=> b!8040418 (= res!3178308 (= (h!81546 rulesRec!188) rNSep!142))))

(declare-fun b!8040419 () Bool)

(assert (=> b!8040419 (= e!4736059 (contains!20975 (t!390994 rulesRec!188) rNSep!142))))

(assert (= (and d!2395506 res!3178307) b!8040418))

(assert (= (and b!8040418 (not res!3178308)) b!8040419))

(declare-fun m!8395004 () Bool)

(assert (=> d!2395506 m!8395004))

(declare-fun m!8395006 () Bool)

(assert (=> d!2395506 m!8395006))

(assert (=> b!8040419 m!8394908))

(assert (=> b!8040308 d!2395506))

(declare-fun d!2395508 () Bool)

(assert (=> d!2395508 (= (inv!96907 (tag!9560 (h!81546 rulesRec!188))) (= (mod (str.len (value!290931 (tag!9560 (h!81546 rulesRec!188)))) 2) 0))))

(assert (=> b!8040295 d!2395508))

(declare-fun d!2395510 () Bool)

(declare-fun res!3178309 () Bool)

(declare-fun e!4736064 () Bool)

(assert (=> d!2395510 (=> (not res!3178309) (not e!4736064))))

(assert (=> d!2395510 (= res!3178309 (semiInverseModEq!3859 (toChars!11626 (transformation!8696 (h!81546 rulesRec!188))) (toValue!11767 (transformation!8696 (h!81546 rulesRec!188)))))))

(assert (=> d!2395510 (= (inv!96909 (transformation!8696 (h!81546 rulesRec!188))) e!4736064)))

(declare-fun b!8040422 () Bool)

(assert (=> b!8040422 (= e!4736064 (equivClasses!3674 (toChars!11626 (transformation!8696 (h!81546 rulesRec!188))) (toValue!11767 (transformation!8696 (h!81546 rulesRec!188)))))))

(assert (= (and d!2395510 res!3178309) b!8040422))

(declare-fun m!8395008 () Bool)

(assert (=> d!2395510 m!8395008))

(declare-fun m!8395010 () Bool)

(assert (=> b!8040422 m!8395010))

(assert (=> b!8040295 d!2395510))

(declare-fun d!2395512 () Bool)

(assert (=> d!2395512 (= (inv!96907 (tag!9560 rSep!142)) (= (mod (str.len (value!290931 (tag!9560 rSep!142))) 2) 0))))

(assert (=> b!8040306 d!2395512))

(declare-fun d!2395514 () Bool)

(declare-fun res!3178310 () Bool)

(declare-fun e!4736067 () Bool)

(assert (=> d!2395514 (=> (not res!3178310) (not e!4736067))))

(assert (=> d!2395514 (= res!3178310 (semiInverseModEq!3859 (toChars!11626 (transformation!8696 rSep!142)) (toValue!11767 (transformation!8696 rSep!142))))))

(assert (=> d!2395514 (= (inv!96909 (transformation!8696 rSep!142)) e!4736067)))

(declare-fun b!8040425 () Bool)

(assert (=> b!8040425 (= e!4736067 (equivClasses!3674 (toChars!11626 (transformation!8696 rSep!142)) (toValue!11767 (transformation!8696 rSep!142))))))

(assert (= (and d!2395514 res!3178310) b!8040425))

(declare-fun m!8395012 () Bool)

(assert (=> d!2395514 m!8395012))

(declare-fun m!8395014 () Bool)

(assert (=> b!8040425 m!8395014))

(assert (=> b!8040306 d!2395514))

(declare-fun d!2395516 () Bool)

(declare-fun lt!2722250 () Bool)

(assert (=> d!2395516 (= lt!2722250 (select (content!16029 (t!390994 rulesRec!188)) rNSep!142))))

(declare-fun e!4736068 () Bool)

(assert (=> d!2395516 (= lt!2722250 e!4736068)))

(declare-fun res!3178311 () Bool)

(assert (=> d!2395516 (=> (not res!3178311) (not e!4736068))))

(assert (=> d!2395516 (= res!3178311 ((_ is Cons!75098) (t!390994 rulesRec!188)))))

(assert (=> d!2395516 (= (contains!20975 (t!390994 rulesRec!188) rNSep!142) lt!2722250)))

(declare-fun b!8040426 () Bool)

(declare-fun e!4736069 () Bool)

(assert (=> b!8040426 (= e!4736068 e!4736069)))

(declare-fun res!3178312 () Bool)

(assert (=> b!8040426 (=> res!3178312 e!4736069)))

(assert (=> b!8040426 (= res!3178312 (= (h!81546 (t!390994 rulesRec!188)) rNSep!142))))

(declare-fun b!8040427 () Bool)

(assert (=> b!8040427 (= e!4736069 (contains!20975 (t!390994 (t!390994 rulesRec!188)) rNSep!142))))

(assert (= (and d!2395516 res!3178311) b!8040426))

(assert (= (and b!8040426 (not res!3178312)) b!8040427))

(declare-fun m!8395016 () Bool)

(assert (=> d!2395516 m!8395016))

(declare-fun m!8395018 () Bool)

(assert (=> d!2395516 m!8395018))

(declare-fun m!8395020 () Bool)

(assert (=> b!8040427 m!8395020))

(assert (=> b!8040296 d!2395516))

(declare-fun d!2395518 () Bool)

(assert (=> d!2395518 (= (inv!96907 (tag!9560 (h!81546 rules!4142))) (= (mod (str.len (value!290931 (tag!9560 (h!81546 rules!4142)))) 2) 0))))

(assert (=> b!8040299 d!2395518))

(declare-fun d!2395520 () Bool)

(declare-fun res!3178313 () Bool)

(declare-fun e!4736073 () Bool)

(assert (=> d!2395520 (=> (not res!3178313) (not e!4736073))))

(assert (=> d!2395520 (= res!3178313 (semiInverseModEq!3859 (toChars!11626 (transformation!8696 (h!81546 rules!4142))) (toValue!11767 (transformation!8696 (h!81546 rules!4142)))))))

(assert (=> d!2395520 (= (inv!96909 (transformation!8696 (h!81546 rules!4142))) e!4736073)))

(declare-fun b!8040429 () Bool)

(assert (=> b!8040429 (= e!4736073 (equivClasses!3674 (toChars!11626 (transformation!8696 (h!81546 rules!4142))) (toValue!11767 (transformation!8696 (h!81546 rules!4142)))))))

(assert (= (and d!2395520 res!3178313) b!8040429))

(declare-fun m!8395022 () Bool)

(assert (=> d!2395520 m!8395022))

(declare-fun m!8395024 () Bool)

(assert (=> b!8040429 m!8395024))

(assert (=> b!8040299 d!2395520))

(declare-fun d!2395522 () Bool)

(declare-fun res!3178316 () Bool)

(declare-fun e!4736087 () Bool)

(assert (=> d!2395522 (=> (not res!3178316) (not e!4736087))))

(declare-fun rulesValid!3136 (LexerInterface!8286 List!75224) Bool)

(assert (=> d!2395522 (= res!3178316 (rulesValid!3136 thiss!27054 rules!4142))))

(assert (=> d!2395522 (= (rulesInvariant!6754 thiss!27054 rules!4142) e!4736087)))

(declare-fun b!8040463 () Bool)

(declare-datatypes ((List!75226 0))(
  ( (Nil!75100) (Cons!75100 (h!81548 String!84854) (t!390996 List!75226)) )
))
(declare-fun noDuplicateTag!3297 (LexerInterface!8286 List!75224 List!75226) Bool)

(assert (=> b!8040463 (= e!4736087 (noDuplicateTag!3297 thiss!27054 rules!4142 Nil!75100))))

(assert (= (and d!2395522 res!3178316) b!8040463))

(declare-fun m!8395034 () Bool)

(assert (=> d!2395522 m!8395034))

(declare-fun m!8395036 () Bool)

(assert (=> b!8040463 m!8395036))

(assert (=> b!8040298 d!2395522))

(declare-fun b!8040474 () Bool)

(declare-fun e!4736090 () Bool)

(assert (=> b!8040474 (= e!4736090 tp_is_empty!54529)))

(declare-fun b!8040475 () Bool)

(declare-fun tp!2408645 () Bool)

(declare-fun tp!2408644 () Bool)

(assert (=> b!8040475 (= e!4736090 (and tp!2408645 tp!2408644))))

(assert (=> b!8040295 (= tp!2408580 e!4736090)))

(declare-fun b!8040476 () Bool)

(declare-fun tp!2408643 () Bool)

(assert (=> b!8040476 (= e!4736090 tp!2408643)))

(declare-fun b!8040477 () Bool)

(declare-fun tp!2408642 () Bool)

(declare-fun tp!2408646 () Bool)

(assert (=> b!8040477 (= e!4736090 (and tp!2408642 tp!2408646))))

(assert (= (and b!8040295 ((_ is ElementMatch!21767) (regex!8696 (h!81546 rulesRec!188)))) b!8040474))

(assert (= (and b!8040295 ((_ is Concat!30784) (regex!8696 (h!81546 rulesRec!188)))) b!8040475))

(assert (= (and b!8040295 ((_ is Star!21767) (regex!8696 (h!81546 rulesRec!188)))) b!8040476))

(assert (= (and b!8040295 ((_ is Union!21767) (regex!8696 (h!81546 rulesRec!188)))) b!8040477))

(declare-fun b!8040478 () Bool)

(declare-fun e!4736091 () Bool)

(assert (=> b!8040478 (= e!4736091 tp_is_empty!54529)))

(declare-fun b!8040479 () Bool)

(declare-fun tp!2408650 () Bool)

(declare-fun tp!2408649 () Bool)

(assert (=> b!8040479 (= e!4736091 (and tp!2408650 tp!2408649))))

(assert (=> b!8040306 (= tp!2408577 e!4736091)))

(declare-fun b!8040480 () Bool)

(declare-fun tp!2408648 () Bool)

(assert (=> b!8040480 (= e!4736091 tp!2408648)))

(declare-fun b!8040481 () Bool)

(declare-fun tp!2408647 () Bool)

(declare-fun tp!2408651 () Bool)

(assert (=> b!8040481 (= e!4736091 (and tp!2408647 tp!2408651))))

(assert (= (and b!8040306 ((_ is ElementMatch!21767) (regex!8696 rSep!142))) b!8040478))

(assert (= (and b!8040306 ((_ is Concat!30784) (regex!8696 rSep!142))) b!8040479))

(assert (= (and b!8040306 ((_ is Star!21767) (regex!8696 rSep!142))) b!8040480))

(assert (= (and b!8040306 ((_ is Union!21767) (regex!8696 rSep!142))) b!8040481))

(declare-fun b!8040482 () Bool)

(declare-fun e!4736092 () Bool)

(assert (=> b!8040482 (= e!4736092 tp_is_empty!54529)))

(declare-fun b!8040483 () Bool)

(declare-fun tp!2408655 () Bool)

(declare-fun tp!2408654 () Bool)

(assert (=> b!8040483 (= e!4736092 (and tp!2408655 tp!2408654))))

(assert (=> b!8040299 (= tp!2408584 e!4736092)))

(declare-fun b!8040484 () Bool)

(declare-fun tp!2408653 () Bool)

(assert (=> b!8040484 (= e!4736092 tp!2408653)))

(declare-fun b!8040485 () Bool)

(declare-fun tp!2408652 () Bool)

(declare-fun tp!2408656 () Bool)

(assert (=> b!8040485 (= e!4736092 (and tp!2408652 tp!2408656))))

(assert (= (and b!8040299 ((_ is ElementMatch!21767) (regex!8696 (h!81546 rules!4142)))) b!8040482))

(assert (= (and b!8040299 ((_ is Concat!30784) (regex!8696 (h!81546 rules!4142)))) b!8040483))

(assert (= (and b!8040299 ((_ is Star!21767) (regex!8696 (h!81546 rules!4142)))) b!8040484))

(assert (= (and b!8040299 ((_ is Union!21767) (regex!8696 (h!81546 rules!4142)))) b!8040485))

(declare-fun b!8040486 () Bool)

(declare-fun e!4736093 () Bool)

(assert (=> b!8040486 (= e!4736093 tp_is_empty!54529)))

(declare-fun b!8040487 () Bool)

(declare-fun tp!2408660 () Bool)

(declare-fun tp!2408659 () Bool)

(assert (=> b!8040487 (= e!4736093 (and tp!2408660 tp!2408659))))

(assert (=> b!8040305 (= tp!2408572 e!4736093)))

(declare-fun b!8040488 () Bool)

(declare-fun tp!2408658 () Bool)

(assert (=> b!8040488 (= e!4736093 tp!2408658)))

(declare-fun b!8040489 () Bool)

(declare-fun tp!2408657 () Bool)

(declare-fun tp!2408661 () Bool)

(assert (=> b!8040489 (= e!4736093 (and tp!2408657 tp!2408661))))

(assert (= (and b!8040305 ((_ is ElementMatch!21767) (regex!8696 rNSep!142))) b!8040486))

(assert (= (and b!8040305 ((_ is Concat!30784) (regex!8696 rNSep!142))) b!8040487))

(assert (= (and b!8040305 ((_ is Star!21767) (regex!8696 rNSep!142))) b!8040488))

(assert (= (and b!8040305 ((_ is Union!21767) (regex!8696 rNSep!142))) b!8040489))

(declare-fun b!8040500 () Bool)

(declare-fun b_free!135563 () Bool)

(declare-fun b_next!136353 () Bool)

(assert (=> b!8040500 (= b_free!135563 (not b_next!136353))))

(declare-fun tp!2408672 () Bool)

(declare-fun b_and!353999 () Bool)

(assert (=> b!8040500 (= tp!2408672 b_and!353999)))

(declare-fun b_free!135565 () Bool)

(declare-fun b_next!136355 () Bool)

(assert (=> b!8040500 (= b_free!135565 (not b_next!136355))))

(declare-fun tp!2408671 () Bool)

(declare-fun b_and!354001 () Bool)

(assert (=> b!8040500 (= tp!2408671 b_and!354001)))

(declare-fun e!4736103 () Bool)

(assert (=> b!8040500 (= e!4736103 (and tp!2408672 tp!2408671))))

(declare-fun tp!2408673 () Bool)

(declare-fun b!8040499 () Bool)

(declare-fun e!4736105 () Bool)

(assert (=> b!8040499 (= e!4736105 (and tp!2408673 (inv!96907 (tag!9560 (h!81546 (t!390994 rulesRec!188)))) (inv!96909 (transformation!8696 (h!81546 (t!390994 rulesRec!188)))) e!4736103))))

(declare-fun b!8040498 () Bool)

(declare-fun e!4736102 () Bool)

(declare-fun tp!2408670 () Bool)

(assert (=> b!8040498 (= e!4736102 (and e!4736105 tp!2408670))))

(assert (=> b!8040300 (= tp!2408578 e!4736102)))

(assert (= b!8040499 b!8040500))

(assert (= b!8040498 b!8040499))

(assert (= (and b!8040300 ((_ is Cons!75098) (t!390994 rulesRec!188))) b!8040498))

(declare-fun m!8395038 () Bool)

(assert (=> b!8040499 m!8395038))

(declare-fun m!8395040 () Bool)

(assert (=> b!8040499 m!8395040))

(declare-fun b!8040503 () Bool)

(declare-fun b_free!135567 () Bool)

(declare-fun b_next!136357 () Bool)

(assert (=> b!8040503 (= b_free!135567 (not b_next!136357))))

(declare-fun tp!2408676 () Bool)

(declare-fun b_and!354003 () Bool)

(assert (=> b!8040503 (= tp!2408676 b_and!354003)))

(declare-fun b_free!135569 () Bool)

(declare-fun b_next!136359 () Bool)

(assert (=> b!8040503 (= b_free!135569 (not b_next!136359))))

(declare-fun tp!2408675 () Bool)

(declare-fun b_and!354005 () Bool)

(assert (=> b!8040503 (= tp!2408675 b_and!354005)))

(declare-fun e!4736107 () Bool)

(assert (=> b!8040503 (= e!4736107 (and tp!2408676 tp!2408675))))

(declare-fun tp!2408677 () Bool)

(declare-fun e!4736109 () Bool)

(declare-fun b!8040502 () Bool)

(assert (=> b!8040502 (= e!4736109 (and tp!2408677 (inv!96907 (tag!9560 (h!81546 (t!390994 rules!4142)))) (inv!96909 (transformation!8696 (h!81546 (t!390994 rules!4142)))) e!4736107))))

(declare-fun b!8040501 () Bool)

(declare-fun e!4736106 () Bool)

(declare-fun tp!2408674 () Bool)

(assert (=> b!8040501 (= e!4736106 (and e!4736109 tp!2408674))))

(assert (=> b!8040309 (= tp!2408582 e!4736106)))

(assert (= b!8040502 b!8040503))

(assert (= b!8040501 b!8040502))

(assert (= (and b!8040309 ((_ is Cons!75098) (t!390994 rules!4142))) b!8040501))

(declare-fun m!8395042 () Bool)

(assert (=> b!8040502 m!8395042))

(declare-fun m!8395044 () Bool)

(assert (=> b!8040502 m!8395044))

(check-sat (not bm!746362) (not bm!746361) (not b_next!136353) b_and!353981 (not d!2395506) (not b!8040475) (not b!8040413) (not d!2395464) (not d!2395472) (not d!2395514) (not b!8040425) (not b_next!136337) (not b!8040476) (not b_next!136333) (not b!8040483) b_and!353979 (not b!8040419) (not b!8040484) (not b!8040499) (not b_next!136331) (not d!2395504) (not b!8040335) b_and!353999 (not d!2395482) (not b_next!136343) b_and!353977 (not b!8040488) (not b_next!136329) (not b_next!136357) b_and!353987 (not b!8040427) (not b!8040477) (not b!8040463) (not b!8040394) (not b!8040409) b_and!353983 (not d!2395520) b_and!354005 (not b_next!136359) (not b_next!136335) (not d!2395516) (not b_next!136339) (not b!8040487) (not b_next!136355) b_and!354001 (not b!8040479) (not b!8040498) (not b!8040481) (not b!8040422) (not bm!746360) (not b!8040326) (not b!8040408) (not b!8040502) (not b_next!136341) b_and!353975 (not b!8040485) tp_is_empty!54529 (not b!8040489) (not b!8040429) b_and!353985 (not b!8040480) (not b!8040501) b_and!354003 b_and!353989 (not d!2395522) (not d!2395510))
(check-sat (not b_next!136337) (not b_next!136333) b_and!353979 (not b_next!136331) b_and!353999 b_and!353987 (not b_next!136335) (not b_next!136353) b_and!353981 b_and!353985 (not b_next!136343) b_and!353977 (not b_next!136329) (not b_next!136357) b_and!353983 b_and!354005 (not b_next!136359) (not b_next!136339) (not b_next!136355) b_and!354001 (not b_next!136341) b_and!353975 b_and!354003 b_and!353989)
