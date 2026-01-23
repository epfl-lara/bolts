; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353752 () Bool)

(assert start!353752)

(declare-fun b!3766171 () Bool)

(declare-fun b_free!100909 () Bool)

(declare-fun b_next!101613 () Bool)

(assert (=> b!3766171 (= b_free!100909 (not b_next!101613))))

(declare-fun tp!1150651 () Bool)

(declare-fun b_and!279723 () Bool)

(assert (=> b!3766171 (= tp!1150651 b_and!279723)))

(declare-fun b_free!100911 () Bool)

(declare-fun b_next!101615 () Bool)

(assert (=> b!3766171 (= b_free!100911 (not b_next!101615))))

(declare-fun tp!1150650 () Bool)

(declare-fun b_and!279725 () Bool)

(assert (=> b!3766171 (= tp!1150650 b_and!279725)))

(declare-fun b!3766163 () Bool)

(declare-fun res!1524659 () Bool)

(declare-fun e!2329360 () Bool)

(assert (=> b!3766163 (=> (not res!1524659) (not e!2329360))))

(declare-datatypes ((List!40326 0))(
  ( (Nil!40202) (Cons!40202 (h!45622 (_ BitVec 16)) (t!304353 List!40326)) )
))
(declare-datatypes ((TokenValue!6406 0))(
  ( (FloatLiteralValue!12812 (text!45287 List!40326)) (TokenValueExt!6405 (__x!25029 Int)) (Broken!32030 (value!196597 List!40326)) (Object!6529) (End!6406) (Def!6406) (Underscore!6406) (Match!6406) (Else!6406) (Error!6406) (Case!6406) (If!6406) (Extends!6406) (Abstract!6406) (Class!6406) (Val!6406) (DelimiterValue!12812 (del!6466 List!40326)) (KeywordValue!6412 (value!196598 List!40326)) (CommentValue!12812 (value!196599 List!40326)) (WhitespaceValue!12812 (value!196600 List!40326)) (IndentationValue!6406 (value!196601 List!40326)) (String!45711) (Int32!6406) (Broken!32031 (value!196602 List!40326)) (Boolean!6407) (Unit!57915) (OperatorValue!6409 (op!6466 List!40326)) (IdentifierValue!12812 (value!196603 List!40326)) (IdentifierValue!12813 (value!196604 List!40326)) (WhitespaceValue!12813 (value!196605 List!40326)) (True!12812) (False!12812) (Broken!32032 (value!196606 List!40326)) (Broken!32033 (value!196607 List!40326)) (True!12813) (RightBrace!6406) (RightBracket!6406) (Colon!6406) (Null!6406) (Comma!6406) (LeftBracket!6406) (False!12813) (LeftBrace!6406) (ImaginaryLiteralValue!6406 (text!45288 List!40326)) (StringLiteralValue!19218 (value!196608 List!40326)) (EOFValue!6406 (value!196609 List!40326)) (IdentValue!6406 (value!196610 List!40326)) (DelimiterValue!12813 (value!196611 List!40326)) (DedentValue!6406 (value!196612 List!40326)) (NewLineValue!6406 (value!196613 List!40326)) (IntegerValue!19218 (value!196614 (_ BitVec 32)) (text!45289 List!40326)) (IntegerValue!19219 (value!196615 Int) (text!45290 List!40326)) (Times!6406) (Or!6406) (Equal!6406) (Minus!6406) (Broken!32034 (value!196616 List!40326)) (And!6406) (Div!6406) (LessEqual!6406) (Mod!6406) (Concat!17487) (Not!6406) (Plus!6406) (SpaceValue!6406 (value!196617 List!40326)) (IntegerValue!19220 (value!196618 Int) (text!45291 List!40326)) (StringLiteralValue!19219 (text!45292 List!40326)) (FloatLiteralValue!12813 (text!45293 List!40326)) (BytesLiteralValue!6406 (value!196619 List!40326)) (CommentValue!12813 (value!196620 List!40326)) (StringLiteralValue!19220 (value!196621 List!40326)) (ErrorTokenValue!6406 (msg!6467 List!40326)) )
))
(declare-datatypes ((C!22348 0))(
  ( (C!22349 (val!13250 Int)) )
))
(declare-datatypes ((Regex!11081 0))(
  ( (ElementMatch!11081 (c!652407 C!22348)) (Concat!17488 (regOne!22674 Regex!11081) (regTwo!22674 Regex!11081)) (EmptyExpr!11081) (Star!11081 (reg!11410 Regex!11081)) (EmptyLang!11081) (Union!11081 (regOne!22675 Regex!11081) (regTwo!22675 Regex!11081)) )
))
(declare-datatypes ((String!45712 0))(
  ( (String!45713 (value!196622 String)) )
))
(declare-datatypes ((List!40327 0))(
  ( (Nil!40203) (Cons!40203 (h!45623 C!22348) (t!304354 List!40327)) )
))
(declare-datatypes ((IArray!24657 0))(
  ( (IArray!24658 (innerList!12386 List!40327)) )
))
(declare-datatypes ((Conc!12326 0))(
  ( (Node!12326 (left!31115 Conc!12326) (right!31445 Conc!12326) (csize!24882 Int) (cheight!12537 Int)) (Leaf!19112 (xs!15536 IArray!24657) (csize!24883 Int)) (Empty!12326) )
))
(declare-datatypes ((BalanceConc!24246 0))(
  ( (BalanceConc!24247 (c!652408 Conc!12326)) )
))
(declare-datatypes ((TokenValueInjection!12240 0))(
  ( (TokenValueInjection!12241 (toValue!8536 Int) (toChars!8395 Int)) )
))
(declare-datatypes ((Rule!12152 0))(
  ( (Rule!12153 (regex!6176 Regex!11081) (tag!7036 String!45712) (isSeparator!6176 Bool) (transformation!6176 TokenValueInjection!12240)) )
))
(declare-datatypes ((Token!11490 0))(
  ( (Token!11491 (value!196623 TokenValue!6406) (rule!8940 Rule!12152) (size!30253 Int) (originalCharacters!6776 List!40327)) )
))
(declare-datatypes ((List!40328 0))(
  ( (Nil!40204) (Cons!40204 (h!45624 Token!11490) (t!304355 List!40328)) )
))
(declare-datatypes ((IArray!24659 0))(
  ( (IArray!24660 (innerList!12387 List!40328)) )
))
(declare-datatypes ((Conc!12327 0))(
  ( (Node!12327 (left!31116 Conc!12327) (right!31446 Conc!12327) (csize!24884 Int) (cheight!12538 Int)) (Leaf!19113 (xs!15537 IArray!24659) (csize!24885 Int)) (Empty!12327) )
))
(declare-datatypes ((BalanceConc!24248 0))(
  ( (BalanceConc!24249 (c!652409 Conc!12327)) )
))
(declare-datatypes ((tuple2!39240 0))(
  ( (tuple2!39241 (_1!22754 BalanceConc!24248) (_2!22754 BalanceConc!24246)) )
))
(declare-fun lt!1303114 () tuple2!39240)

(declare-fun isEmpty!23607 (List!40327) Bool)

(declare-fun list!14863 (BalanceConc!24246) List!40327)

(assert (=> b!3766163 (= res!1524659 (isEmpty!23607 (list!14863 (_2!22754 lt!1303114))))))

(declare-fun b!3766164 () Bool)

(declare-fun e!2329362 () Bool)

(declare-fun acc!335 () BalanceConc!24248)

(declare-fun tp!1150655 () Bool)

(declare-fun inv!53984 (Conc!12327) Bool)

(assert (=> b!3766164 (= e!2329362 (and (inv!53984 (c!652409 acc!335)) tp!1150655))))

(declare-fun b!3766165 () Bool)

(declare-fun e!2329368 () Bool)

(declare-fun input!678 () BalanceConc!24246)

(declare-fun tp!1150652 () Bool)

(declare-fun inv!53985 (Conc!12326) Bool)

(assert (=> b!3766165 (= e!2329368 (and (inv!53985 (c!652408 input!678)) tp!1150652))))

(declare-fun b!3766166 () Bool)

(declare-fun e!2329359 () Bool)

(declare-datatypes ((LexerInterface!5765 0))(
  ( (LexerInterfaceExt!5762 (__x!25030 Int)) (Lexer!5763) )
))
(declare-fun thiss!11876 () LexerInterface!5765)

(declare-datatypes ((List!40329 0))(
  ( (Nil!40205) (Cons!40205 (h!45625 Rule!12152) (t!304356 List!40329)) )
))
(declare-fun rules!1265 () List!40329)

(declare-fun rulesValidInductive!2162 (LexerInterface!5765 List!40329) Bool)

(assert (=> b!3766166 (= e!2329359 (rulesValidInductive!2162 thiss!11876 rules!1265))))

(declare-fun b!3766167 () Bool)

(declare-fun e!2329356 () Bool)

(assert (=> b!3766167 (= e!2329356 (not e!2329359))))

(declare-fun res!1524657 () Bool)

(assert (=> b!3766167 (=> res!1524657 e!2329359)))

(declare-fun lt!1303117 () List!40327)

(declare-fun lt!1303119 () List!40327)

(declare-fun isSuffix!950 (List!40327 List!40327) Bool)

(assert (=> b!3766167 (= res!1524657 (not (isSuffix!950 lt!1303117 lt!1303119)))))

(declare-fun lt!1303115 () List!40327)

(assert (=> b!3766167 (isSuffix!950 lt!1303117 lt!1303115)))

(declare-datatypes ((Unit!57916 0))(
  ( (Unit!57917) )
))
(declare-fun lt!1303116 () Unit!57916)

(declare-fun lt!1303118 () List!40327)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!635 (List!40327 List!40327) Unit!57916)

(assert (=> b!3766167 (= lt!1303116 (lemmaConcatTwoListThenFSndIsSuffix!635 lt!1303118 lt!1303117))))

(declare-fun b!3766168 () Bool)

(declare-fun e!2329361 () Bool)

(declare-fun treated!13 () BalanceConc!24246)

(declare-fun tp!1150654 () Bool)

(assert (=> b!3766168 (= e!2329361 (and (inv!53985 (c!652408 treated!13)) tp!1150654))))

(declare-fun b!3766169 () Bool)

(declare-fun res!1524661 () Bool)

(assert (=> b!3766169 (=> (not res!1524661) (not e!2329356))))

(declare-fun lt!1303113 () tuple2!39240)

(declare-fun lt!1303112 () tuple2!39240)

(assert (=> b!3766169 (= res!1524661 (= (list!14863 (_2!22754 lt!1303113)) (list!14863 (_2!22754 lt!1303112))))))

(declare-fun b!3766170 () Bool)

(declare-fun res!1524662 () Bool)

(declare-fun e!2329367 () Bool)

(assert (=> b!3766170 (=> (not res!1524662) (not e!2329367))))

(declare-fun rulesInvariant!5108 (LexerInterface!5765 List!40329) Bool)

(assert (=> b!3766170 (= res!1524662 (rulesInvariant!5108 thiss!11876 rules!1265))))

(declare-fun e!2329364 () Bool)

(assert (=> b!3766171 (= e!2329364 (and tp!1150651 tp!1150650))))

(declare-fun res!1524664 () Bool)

(assert (=> start!353752 (=> (not res!1524664) (not e!2329367))))

(get-info :version)

(assert (=> start!353752 (= res!1524664 ((_ is Lexer!5763) thiss!11876))))

(assert (=> start!353752 e!2329367))

(declare-fun inv!53986 (BalanceConc!24246) Bool)

(assert (=> start!353752 (and (inv!53986 input!678) e!2329368)))

(declare-fun inv!53987 (BalanceConc!24248) Bool)

(assert (=> start!353752 (and (inv!53987 acc!335) e!2329362)))

(assert (=> start!353752 (and (inv!53986 treated!13) e!2329361)))

(declare-fun e!2329366 () Bool)

(assert (=> start!353752 e!2329366))

(assert (=> start!353752 true))

(declare-fun totalInput!335 () BalanceConc!24246)

(declare-fun e!2329358 () Bool)

(assert (=> start!353752 (and (inv!53986 totalInput!335) e!2329358)))

(declare-fun b!3766172 () Bool)

(declare-fun e!2329363 () Bool)

(declare-fun tp!1150649 () Bool)

(assert (=> b!3766172 (= e!2329366 (and e!2329363 tp!1150649))))

(declare-fun b!3766173 () Bool)

(declare-fun e!2329365 () Bool)

(assert (=> b!3766173 (= e!2329365 e!2329360)))

(declare-fun res!1524660 () Bool)

(assert (=> b!3766173 (=> (not res!1524660) (not e!2329360))))

(declare-fun list!14864 (BalanceConc!24248) List!40328)

(assert (=> b!3766173 (= res!1524660 (= (list!14864 (_1!22754 lt!1303114)) (list!14864 acc!335)))))

(declare-fun lexRec!789 (LexerInterface!5765 List!40329 BalanceConc!24246) tuple2!39240)

(assert (=> b!3766173 (= lt!1303114 (lexRec!789 thiss!11876 rules!1265 treated!13))))

(declare-fun b!3766174 () Bool)

(assert (=> b!3766174 (= e!2329367 e!2329365)))

(declare-fun res!1524656 () Bool)

(assert (=> b!3766174 (=> (not res!1524656) (not e!2329365))))

(assert (=> b!3766174 (= res!1524656 (= lt!1303119 lt!1303115))))

(declare-fun ++!9983 (List!40327 List!40327) List!40327)

(assert (=> b!3766174 (= lt!1303115 (++!9983 lt!1303118 lt!1303117))))

(assert (=> b!3766174 (= lt!1303119 (list!14863 totalInput!335))))

(assert (=> b!3766174 (= lt!1303117 (list!14863 input!678))))

(assert (=> b!3766174 (= lt!1303118 (list!14863 treated!13))))

(declare-fun b!3766175 () Bool)

(assert (=> b!3766175 (= e!2329360 e!2329356)))

(declare-fun res!1524663 () Bool)

(assert (=> b!3766175 (=> (not res!1524663) (not e!2329356))))

(declare-fun ++!9984 (BalanceConc!24248 BalanceConc!24248) BalanceConc!24248)

(assert (=> b!3766175 (= res!1524663 (= (list!14864 (_1!22754 lt!1303113)) (list!14864 (++!9984 acc!335 (_1!22754 lt!1303112)))))))

(assert (=> b!3766175 (= lt!1303112 (lexRec!789 thiss!11876 rules!1265 input!678))))

(assert (=> b!3766175 (= lt!1303113 (lexRec!789 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3766176 () Bool)

(declare-fun res!1524658 () Bool)

(assert (=> b!3766176 (=> (not res!1524658) (not e!2329367))))

(declare-fun isEmpty!23608 (List!40329) Bool)

(assert (=> b!3766176 (= res!1524658 (not (isEmpty!23608 rules!1265)))))

(declare-fun b!3766177 () Bool)

(declare-fun tp!1150656 () Bool)

(declare-fun inv!53978 (String!45712) Bool)

(declare-fun inv!53988 (TokenValueInjection!12240) Bool)

(assert (=> b!3766177 (= e!2329363 (and tp!1150656 (inv!53978 (tag!7036 (h!45625 rules!1265))) (inv!53988 (transformation!6176 (h!45625 rules!1265))) e!2329364))))

(declare-fun b!3766178 () Bool)

(declare-fun tp!1150653 () Bool)

(assert (=> b!3766178 (= e!2329358 (and (inv!53985 (c!652408 totalInput!335)) tp!1150653))))

(assert (= (and start!353752 res!1524664) b!3766176))

(assert (= (and b!3766176 res!1524658) b!3766170))

(assert (= (and b!3766170 res!1524662) b!3766174))

(assert (= (and b!3766174 res!1524656) b!3766173))

(assert (= (and b!3766173 res!1524660) b!3766163))

(assert (= (and b!3766163 res!1524659) b!3766175))

(assert (= (and b!3766175 res!1524663) b!3766169))

(assert (= (and b!3766169 res!1524661) b!3766167))

(assert (= (and b!3766167 (not res!1524657)) b!3766166))

(assert (= start!353752 b!3766165))

(assert (= start!353752 b!3766164))

(assert (= start!353752 b!3766168))

(assert (= b!3766177 b!3766171))

(assert (= b!3766172 b!3766177))

(assert (= (and start!353752 ((_ is Cons!40205) rules!1265)) b!3766172))

(assert (= start!353752 b!3766178))

(declare-fun m!4262241 () Bool)

(assert (=> b!3766163 m!4262241))

(assert (=> b!3766163 m!4262241))

(declare-fun m!4262243 () Bool)

(assert (=> b!3766163 m!4262243))

(declare-fun m!4262245 () Bool)

(assert (=> b!3766174 m!4262245))

(declare-fun m!4262247 () Bool)

(assert (=> b!3766174 m!4262247))

(declare-fun m!4262249 () Bool)

(assert (=> b!3766174 m!4262249))

(declare-fun m!4262251 () Bool)

(assert (=> b!3766174 m!4262251))

(declare-fun m!4262253 () Bool)

(assert (=> b!3766177 m!4262253))

(declare-fun m!4262255 () Bool)

(assert (=> b!3766177 m!4262255))

(declare-fun m!4262257 () Bool)

(assert (=> b!3766175 m!4262257))

(declare-fun m!4262259 () Bool)

(assert (=> b!3766175 m!4262259))

(declare-fun m!4262261 () Bool)

(assert (=> b!3766175 m!4262261))

(declare-fun m!4262263 () Bool)

(assert (=> b!3766175 m!4262263))

(assert (=> b!3766175 m!4262259))

(declare-fun m!4262265 () Bool)

(assert (=> b!3766175 m!4262265))

(declare-fun m!4262267 () Bool)

(assert (=> b!3766176 m!4262267))

(declare-fun m!4262269 () Bool)

(assert (=> b!3766169 m!4262269))

(declare-fun m!4262271 () Bool)

(assert (=> b!3766169 m!4262271))

(declare-fun m!4262273 () Bool)

(assert (=> b!3766178 m!4262273))

(declare-fun m!4262275 () Bool)

(assert (=> b!3766164 m!4262275))

(declare-fun m!4262277 () Bool)

(assert (=> b!3766166 m!4262277))

(declare-fun m!4262279 () Bool)

(assert (=> b!3766173 m!4262279))

(declare-fun m!4262281 () Bool)

(assert (=> b!3766173 m!4262281))

(declare-fun m!4262283 () Bool)

(assert (=> b!3766173 m!4262283))

(declare-fun m!4262285 () Bool)

(assert (=> b!3766168 m!4262285))

(declare-fun m!4262287 () Bool)

(assert (=> b!3766170 m!4262287))

(declare-fun m!4262289 () Bool)

(assert (=> start!353752 m!4262289))

(declare-fun m!4262291 () Bool)

(assert (=> start!353752 m!4262291))

(declare-fun m!4262293 () Bool)

(assert (=> start!353752 m!4262293))

(declare-fun m!4262295 () Bool)

(assert (=> start!353752 m!4262295))

(declare-fun m!4262297 () Bool)

(assert (=> b!3766165 m!4262297))

(declare-fun m!4262299 () Bool)

(assert (=> b!3766167 m!4262299))

(declare-fun m!4262301 () Bool)

(assert (=> b!3766167 m!4262301))

(declare-fun m!4262303 () Bool)

(assert (=> b!3766167 m!4262303))

(check-sat (not b!3766176) (not b!3766169) b_and!279723 (not b!3766165) (not b!3766174) b_and!279725 (not b!3766164) (not b!3766163) (not b!3766177) (not b_next!101613) (not b!3766166) (not b!3766170) (not b!3766172) (not b_next!101615) (not b!3766175) (not start!353752) (not b!3766168) (not b!3766173) (not b!3766178) (not b!3766167))
(check-sat b_and!279723 b_and!279725 (not b_next!101613) (not b_next!101615))
(get-model)

(declare-fun d!1100902 () Bool)

(declare-fun list!14867 (Conc!12327) List!40328)

(assert (=> d!1100902 (= (list!14864 (_1!22754 lt!1303114)) (list!14867 (c!652409 (_1!22754 lt!1303114))))))

(declare-fun bs!576010 () Bool)

(assert (= bs!576010 d!1100902))

(declare-fun m!4262321 () Bool)

(assert (=> bs!576010 m!4262321))

(assert (=> b!3766173 d!1100902))

(declare-fun d!1100908 () Bool)

(assert (=> d!1100908 (= (list!14864 acc!335) (list!14867 (c!652409 acc!335)))))

(declare-fun bs!576011 () Bool)

(assert (= bs!576011 d!1100908))

(declare-fun m!4262323 () Bool)

(assert (=> bs!576011 m!4262323))

(assert (=> b!3766173 d!1100908))

(declare-fun b!3766278 () Bool)

(declare-fun e!2329430 () Bool)

(declare-fun e!2329427 () Bool)

(assert (=> b!3766278 (= e!2329430 e!2329427)))

(declare-fun res!1524720 () Bool)

(declare-fun lt!1303158 () tuple2!39240)

(declare-fun size!30257 (BalanceConc!24246) Int)

(assert (=> b!3766278 (= res!1524720 (< (size!30257 (_2!22754 lt!1303158)) (size!30257 treated!13)))))

(assert (=> b!3766278 (=> (not res!1524720) (not e!2329427))))

(declare-fun b!3766279 () Bool)

(declare-fun e!2329428 () tuple2!39240)

(assert (=> b!3766279 (= e!2329428 (tuple2!39241 (BalanceConc!24249 Empty!12327) treated!13))))

(declare-fun b!3766280 () Bool)

(declare-fun isEmpty!23610 (BalanceConc!24248) Bool)

(assert (=> b!3766280 (= e!2329427 (not (isEmpty!23610 (_1!22754 lt!1303158))))))

(declare-fun b!3766281 () Bool)

(declare-fun e!2329429 () Bool)

(declare-datatypes ((tuple2!39246 0))(
  ( (tuple2!39247 (_1!22757 List!40328) (_2!22757 List!40327)) )
))
(declare-fun lexList!1545 (LexerInterface!5765 List!40329 List!40327) tuple2!39246)

(assert (=> b!3766281 (= e!2329429 (= (list!14863 (_2!22754 lt!1303158)) (_2!22757 (lexList!1545 thiss!11876 rules!1265 (list!14863 treated!13)))))))

(declare-fun b!3766282 () Bool)

(declare-fun lt!1303157 () tuple2!39240)

(declare-datatypes ((tuple2!39248 0))(
  ( (tuple2!39249 (_1!22758 Token!11490) (_2!22758 BalanceConc!24246)) )
))
(declare-datatypes ((Option!8576 0))(
  ( (None!8575) (Some!8575 (v!38739 tuple2!39248)) )
))
(declare-fun lt!1303156 () Option!8576)

(declare-fun prepend!1312 (BalanceConc!24248 Token!11490) BalanceConc!24248)

(assert (=> b!3766282 (= e!2329428 (tuple2!39241 (prepend!1312 (_1!22754 lt!1303157) (_1!22758 (v!38739 lt!1303156))) (_2!22754 lt!1303157)))))

(assert (=> b!3766282 (= lt!1303157 (lexRec!789 thiss!11876 rules!1265 (_2!22758 (v!38739 lt!1303156))))))

(declare-fun d!1100910 () Bool)

(assert (=> d!1100910 e!2329429))

(declare-fun res!1524722 () Bool)

(assert (=> d!1100910 (=> (not res!1524722) (not e!2329429))))

(assert (=> d!1100910 (= res!1524722 e!2329430)))

(declare-fun c!652438 () Bool)

(declare-fun size!30258 (BalanceConc!24248) Int)

(assert (=> d!1100910 (= c!652438 (> (size!30258 (_1!22754 lt!1303158)) 0))))

(assert (=> d!1100910 (= lt!1303158 e!2329428)))

(declare-fun c!652437 () Bool)

(assert (=> d!1100910 (= c!652437 ((_ is Some!8575) lt!1303156))))

(declare-fun maxPrefixZipperSequence!1179 (LexerInterface!5765 List!40329 BalanceConc!24246) Option!8576)

(assert (=> d!1100910 (= lt!1303156 (maxPrefixZipperSequence!1179 thiss!11876 rules!1265 treated!13))))

(assert (=> d!1100910 (= (lexRec!789 thiss!11876 rules!1265 treated!13) lt!1303158)))

(declare-fun b!3766283 () Bool)

(declare-fun res!1524721 () Bool)

(assert (=> b!3766283 (=> (not res!1524721) (not e!2329429))))

(assert (=> b!3766283 (= res!1524721 (= (list!14864 (_1!22754 lt!1303158)) (_1!22757 (lexList!1545 thiss!11876 rules!1265 (list!14863 treated!13)))))))

(declare-fun b!3766284 () Bool)

(assert (=> b!3766284 (= e!2329430 (= (list!14863 (_2!22754 lt!1303158)) (list!14863 treated!13)))))

(assert (= (and d!1100910 c!652437) b!3766282))

(assert (= (and d!1100910 (not c!652437)) b!3766279))

(assert (= (and d!1100910 c!652438) b!3766278))

(assert (= (and d!1100910 (not c!652438)) b!3766284))

(assert (= (and b!3766278 res!1524720) b!3766280))

(assert (= (and d!1100910 res!1524722) b!3766283))

(assert (= (and b!3766283 res!1524721) b!3766281))

(declare-fun m!4262459 () Bool)

(assert (=> d!1100910 m!4262459))

(declare-fun m!4262461 () Bool)

(assert (=> d!1100910 m!4262461))

(declare-fun m!4262463 () Bool)

(assert (=> b!3766283 m!4262463))

(assert (=> b!3766283 m!4262251))

(assert (=> b!3766283 m!4262251))

(declare-fun m!4262465 () Bool)

(assert (=> b!3766283 m!4262465))

(declare-fun m!4262467 () Bool)

(assert (=> b!3766284 m!4262467))

(assert (=> b!3766284 m!4262251))

(declare-fun m!4262469 () Bool)

(assert (=> b!3766280 m!4262469))

(declare-fun m!4262471 () Bool)

(assert (=> b!3766278 m!4262471))

(declare-fun m!4262473 () Bool)

(assert (=> b!3766278 m!4262473))

(declare-fun m!4262475 () Bool)

(assert (=> b!3766282 m!4262475))

(declare-fun m!4262477 () Bool)

(assert (=> b!3766282 m!4262477))

(assert (=> b!3766281 m!4262467))

(assert (=> b!3766281 m!4262251))

(assert (=> b!3766281 m!4262251))

(assert (=> b!3766281 m!4262465))

(assert (=> b!3766173 d!1100910))

(declare-fun d!1100958 () Bool)

(assert (=> d!1100958 (= (isEmpty!23607 (list!14863 (_2!22754 lt!1303114))) ((_ is Nil!40203) (list!14863 (_2!22754 lt!1303114))))))

(assert (=> b!3766163 d!1100958))

(declare-fun d!1100960 () Bool)

(declare-fun list!14868 (Conc!12326) List!40327)

(assert (=> d!1100960 (= (list!14863 (_2!22754 lt!1303114)) (list!14868 (c!652408 (_2!22754 lt!1303114))))))

(declare-fun bs!576024 () Bool)

(assert (= bs!576024 d!1100960))

(declare-fun m!4262479 () Bool)

(assert (=> bs!576024 m!4262479))

(assert (=> b!3766163 d!1100960))

(declare-fun b!3766294 () Bool)

(declare-fun e!2329435 () List!40327)

(assert (=> b!3766294 (= e!2329435 (Cons!40203 (h!45623 lt!1303118) (++!9983 (t!304354 lt!1303118) lt!1303117)))))

(declare-fun b!3766295 () Bool)

(declare-fun res!1524727 () Bool)

(declare-fun e!2329436 () Bool)

(assert (=> b!3766295 (=> (not res!1524727) (not e!2329436))))

(declare-fun lt!1303161 () List!40327)

(declare-fun size!30259 (List!40327) Int)

(assert (=> b!3766295 (= res!1524727 (= (size!30259 lt!1303161) (+ (size!30259 lt!1303118) (size!30259 lt!1303117))))))

(declare-fun b!3766296 () Bool)

(assert (=> b!3766296 (= e!2329436 (or (not (= lt!1303117 Nil!40203)) (= lt!1303161 lt!1303118)))))

(declare-fun b!3766293 () Bool)

(assert (=> b!3766293 (= e!2329435 lt!1303117)))

(declare-fun d!1100962 () Bool)

(assert (=> d!1100962 e!2329436))

(declare-fun res!1524728 () Bool)

(assert (=> d!1100962 (=> (not res!1524728) (not e!2329436))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5906 (List!40327) (InoxSet C!22348))

(assert (=> d!1100962 (= res!1524728 (= (content!5906 lt!1303161) ((_ map or) (content!5906 lt!1303118) (content!5906 lt!1303117))))))

(assert (=> d!1100962 (= lt!1303161 e!2329435)))

(declare-fun c!652441 () Bool)

(assert (=> d!1100962 (= c!652441 ((_ is Nil!40203) lt!1303118))))

(assert (=> d!1100962 (= (++!9983 lt!1303118 lt!1303117) lt!1303161)))

(assert (= (and d!1100962 c!652441) b!3766293))

(assert (= (and d!1100962 (not c!652441)) b!3766294))

(assert (= (and d!1100962 res!1524728) b!3766295))

(assert (= (and b!3766295 res!1524727) b!3766296))

(declare-fun m!4262481 () Bool)

(assert (=> b!3766294 m!4262481))

(declare-fun m!4262483 () Bool)

(assert (=> b!3766295 m!4262483))

(declare-fun m!4262485 () Bool)

(assert (=> b!3766295 m!4262485))

(declare-fun m!4262487 () Bool)

(assert (=> b!3766295 m!4262487))

(declare-fun m!4262489 () Bool)

(assert (=> d!1100962 m!4262489))

(declare-fun m!4262491 () Bool)

(assert (=> d!1100962 m!4262491))

(declare-fun m!4262493 () Bool)

(assert (=> d!1100962 m!4262493))

(assert (=> b!3766174 d!1100962))

(declare-fun d!1100964 () Bool)

(assert (=> d!1100964 (= (list!14863 totalInput!335) (list!14868 (c!652408 totalInput!335)))))

(declare-fun bs!576025 () Bool)

(assert (= bs!576025 d!1100964))

(declare-fun m!4262495 () Bool)

(assert (=> bs!576025 m!4262495))

(assert (=> b!3766174 d!1100964))

(declare-fun d!1100966 () Bool)

(assert (=> d!1100966 (= (list!14863 input!678) (list!14868 (c!652408 input!678)))))

(declare-fun bs!576026 () Bool)

(assert (= bs!576026 d!1100966))

(declare-fun m!4262497 () Bool)

(assert (=> bs!576026 m!4262497))

(assert (=> b!3766174 d!1100966))

(declare-fun d!1100968 () Bool)

(assert (=> d!1100968 (= (list!14863 treated!13) (list!14868 (c!652408 treated!13)))))

(declare-fun bs!576027 () Bool)

(assert (= bs!576027 d!1100968))

(declare-fun m!4262499 () Bool)

(assert (=> bs!576027 m!4262499))

(assert (=> b!3766174 d!1100968))

(declare-fun b!3766297 () Bool)

(declare-fun e!2329440 () Bool)

(declare-fun e!2329437 () Bool)

(assert (=> b!3766297 (= e!2329440 e!2329437)))

(declare-fun res!1524729 () Bool)

(declare-fun lt!1303164 () tuple2!39240)

(assert (=> b!3766297 (= res!1524729 (< (size!30257 (_2!22754 lt!1303164)) (size!30257 totalInput!335)))))

(assert (=> b!3766297 (=> (not res!1524729) (not e!2329437))))

(declare-fun b!3766298 () Bool)

(declare-fun e!2329438 () tuple2!39240)

(assert (=> b!3766298 (= e!2329438 (tuple2!39241 (BalanceConc!24249 Empty!12327) totalInput!335))))

(declare-fun b!3766299 () Bool)

(assert (=> b!3766299 (= e!2329437 (not (isEmpty!23610 (_1!22754 lt!1303164))))))

(declare-fun b!3766300 () Bool)

(declare-fun e!2329439 () Bool)

(assert (=> b!3766300 (= e!2329439 (= (list!14863 (_2!22754 lt!1303164)) (_2!22757 (lexList!1545 thiss!11876 rules!1265 (list!14863 totalInput!335)))))))

(declare-fun b!3766301 () Bool)

(declare-fun lt!1303163 () tuple2!39240)

(declare-fun lt!1303162 () Option!8576)

(assert (=> b!3766301 (= e!2329438 (tuple2!39241 (prepend!1312 (_1!22754 lt!1303163) (_1!22758 (v!38739 lt!1303162))) (_2!22754 lt!1303163)))))

(assert (=> b!3766301 (= lt!1303163 (lexRec!789 thiss!11876 rules!1265 (_2!22758 (v!38739 lt!1303162))))))

(declare-fun d!1100970 () Bool)

(assert (=> d!1100970 e!2329439))

(declare-fun res!1524731 () Bool)

(assert (=> d!1100970 (=> (not res!1524731) (not e!2329439))))

(assert (=> d!1100970 (= res!1524731 e!2329440)))

(declare-fun c!652443 () Bool)

(assert (=> d!1100970 (= c!652443 (> (size!30258 (_1!22754 lt!1303164)) 0))))

(assert (=> d!1100970 (= lt!1303164 e!2329438)))

(declare-fun c!652442 () Bool)

(assert (=> d!1100970 (= c!652442 ((_ is Some!8575) lt!1303162))))

(assert (=> d!1100970 (= lt!1303162 (maxPrefixZipperSequence!1179 thiss!11876 rules!1265 totalInput!335))))

(assert (=> d!1100970 (= (lexRec!789 thiss!11876 rules!1265 totalInput!335) lt!1303164)))

(declare-fun b!3766302 () Bool)

(declare-fun res!1524730 () Bool)

(assert (=> b!3766302 (=> (not res!1524730) (not e!2329439))))

(assert (=> b!3766302 (= res!1524730 (= (list!14864 (_1!22754 lt!1303164)) (_1!22757 (lexList!1545 thiss!11876 rules!1265 (list!14863 totalInput!335)))))))

(declare-fun b!3766303 () Bool)

(assert (=> b!3766303 (= e!2329440 (= (list!14863 (_2!22754 lt!1303164)) (list!14863 totalInput!335)))))

(assert (= (and d!1100970 c!652442) b!3766301))

(assert (= (and d!1100970 (not c!652442)) b!3766298))

(assert (= (and d!1100970 c!652443) b!3766297))

(assert (= (and d!1100970 (not c!652443)) b!3766303))

(assert (= (and b!3766297 res!1524729) b!3766299))

(assert (= (and d!1100970 res!1524731) b!3766302))

(assert (= (and b!3766302 res!1524730) b!3766300))

(declare-fun m!4262501 () Bool)

(assert (=> d!1100970 m!4262501))

(declare-fun m!4262503 () Bool)

(assert (=> d!1100970 m!4262503))

(declare-fun m!4262505 () Bool)

(assert (=> b!3766302 m!4262505))

(assert (=> b!3766302 m!4262247))

(assert (=> b!3766302 m!4262247))

(declare-fun m!4262507 () Bool)

(assert (=> b!3766302 m!4262507))

(declare-fun m!4262509 () Bool)

(assert (=> b!3766303 m!4262509))

(assert (=> b!3766303 m!4262247))

(declare-fun m!4262511 () Bool)

(assert (=> b!3766299 m!4262511))

(declare-fun m!4262513 () Bool)

(assert (=> b!3766297 m!4262513))

(declare-fun m!4262515 () Bool)

(assert (=> b!3766297 m!4262515))

(declare-fun m!4262517 () Bool)

(assert (=> b!3766301 m!4262517))

(declare-fun m!4262519 () Bool)

(assert (=> b!3766301 m!4262519))

(assert (=> b!3766300 m!4262509))

(assert (=> b!3766300 m!4262247))

(assert (=> b!3766300 m!4262247))

(assert (=> b!3766300 m!4262507))

(assert (=> b!3766175 d!1100970))

(declare-fun d!1100972 () Bool)

(assert (=> d!1100972 (= (list!14864 (_1!22754 lt!1303113)) (list!14867 (c!652409 (_1!22754 lt!1303113))))))

(declare-fun bs!576028 () Bool)

(assert (= bs!576028 d!1100972))

(declare-fun m!4262521 () Bool)

(assert (=> bs!576028 m!4262521))

(assert (=> b!3766175 d!1100972))

(declare-fun d!1100974 () Bool)

(assert (=> d!1100974 (= (list!14864 (++!9984 acc!335 (_1!22754 lt!1303112))) (list!14867 (c!652409 (++!9984 acc!335 (_1!22754 lt!1303112)))))))

(declare-fun bs!576029 () Bool)

(assert (= bs!576029 d!1100974))

(declare-fun m!4262523 () Bool)

(assert (=> bs!576029 m!4262523))

(assert (=> b!3766175 d!1100974))

(declare-fun b!3766315 () Bool)

(declare-fun e!2329443 () Bool)

(declare-fun lt!1303167 () BalanceConc!24248)

(declare-fun ++!9987 (List!40328 List!40328) List!40328)

(assert (=> b!3766315 (= e!2329443 (= (list!14864 lt!1303167) (++!9987 (list!14864 acc!335) (list!14864 (_1!22754 lt!1303112)))))))

(declare-fun b!3766314 () Bool)

(declare-fun res!1524741 () Bool)

(assert (=> b!3766314 (=> (not res!1524741) (not e!2329443))))

(declare-fun height!1762 (Conc!12327) Int)

(declare-fun ++!9988 (Conc!12327 Conc!12327) Conc!12327)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3766314 (= res!1524741 (>= (height!1762 (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112)))) (max!0 (height!1762 (c!652409 acc!335)) (height!1762 (c!652409 (_1!22754 lt!1303112))))))))

(declare-fun b!3766312 () Bool)

(declare-fun res!1524743 () Bool)

(assert (=> b!3766312 (=> (not res!1524743) (not e!2329443))))

(declare-fun isBalanced!3545 (Conc!12327) Bool)

(assert (=> b!3766312 (= res!1524743 (isBalanced!3545 (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112)))))))

(declare-fun b!3766313 () Bool)

(declare-fun res!1524740 () Bool)

(assert (=> b!3766313 (=> (not res!1524740) (not e!2329443))))

(assert (=> b!3766313 (= res!1524740 (<= (height!1762 (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112)))) (+ (max!0 (height!1762 (c!652409 acc!335)) (height!1762 (c!652409 (_1!22754 lt!1303112)))) 1)))))

(declare-fun d!1100976 () Bool)

(assert (=> d!1100976 e!2329443))

(declare-fun res!1524742 () Bool)

(assert (=> d!1100976 (=> (not res!1524742) (not e!2329443))))

(declare-fun appendAssocInst!831 (Conc!12327 Conc!12327) Bool)

(assert (=> d!1100976 (= res!1524742 (appendAssocInst!831 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112))))))

(assert (=> d!1100976 (= lt!1303167 (BalanceConc!24249 (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112)))))))

(assert (=> d!1100976 (= (++!9984 acc!335 (_1!22754 lt!1303112)) lt!1303167)))

(assert (= (and d!1100976 res!1524742) b!3766312))

(assert (= (and b!3766312 res!1524743) b!3766313))

(assert (= (and b!3766313 res!1524740) b!3766314))

(assert (= (and b!3766314 res!1524741) b!3766315))

(declare-fun m!4262525 () Bool)

(assert (=> d!1100976 m!4262525))

(declare-fun m!4262527 () Bool)

(assert (=> d!1100976 m!4262527))

(assert (=> b!3766313 m!4262527))

(declare-fun m!4262529 () Bool)

(assert (=> b!3766313 m!4262529))

(declare-fun m!4262531 () Bool)

(assert (=> b!3766313 m!4262531))

(declare-fun m!4262533 () Bool)

(assert (=> b!3766313 m!4262533))

(assert (=> b!3766313 m!4262527))

(declare-fun m!4262535 () Bool)

(assert (=> b!3766313 m!4262535))

(assert (=> b!3766313 m!4262531))

(assert (=> b!3766313 m!4262529))

(declare-fun m!4262537 () Bool)

(assert (=> b!3766315 m!4262537))

(assert (=> b!3766315 m!4262281))

(declare-fun m!4262539 () Bool)

(assert (=> b!3766315 m!4262539))

(assert (=> b!3766315 m!4262281))

(assert (=> b!3766315 m!4262539))

(declare-fun m!4262541 () Bool)

(assert (=> b!3766315 m!4262541))

(assert (=> b!3766314 m!4262527))

(assert (=> b!3766314 m!4262529))

(assert (=> b!3766314 m!4262531))

(assert (=> b!3766314 m!4262533))

(assert (=> b!3766314 m!4262527))

(assert (=> b!3766314 m!4262535))

(assert (=> b!3766314 m!4262531))

(assert (=> b!3766314 m!4262529))

(assert (=> b!3766312 m!4262527))

(assert (=> b!3766312 m!4262527))

(declare-fun m!4262543 () Bool)

(assert (=> b!3766312 m!4262543))

(assert (=> b!3766175 d!1100976))

(declare-fun b!3766316 () Bool)

(declare-fun e!2329447 () Bool)

(declare-fun e!2329444 () Bool)

(assert (=> b!3766316 (= e!2329447 e!2329444)))

(declare-fun res!1524744 () Bool)

(declare-fun lt!1303170 () tuple2!39240)

(assert (=> b!3766316 (= res!1524744 (< (size!30257 (_2!22754 lt!1303170)) (size!30257 input!678)))))

(assert (=> b!3766316 (=> (not res!1524744) (not e!2329444))))

(declare-fun b!3766317 () Bool)

(declare-fun e!2329445 () tuple2!39240)

(assert (=> b!3766317 (= e!2329445 (tuple2!39241 (BalanceConc!24249 Empty!12327) input!678))))

(declare-fun b!3766318 () Bool)

(assert (=> b!3766318 (= e!2329444 (not (isEmpty!23610 (_1!22754 lt!1303170))))))

(declare-fun e!2329446 () Bool)

(declare-fun b!3766319 () Bool)

(assert (=> b!3766319 (= e!2329446 (= (list!14863 (_2!22754 lt!1303170)) (_2!22757 (lexList!1545 thiss!11876 rules!1265 (list!14863 input!678)))))))

(declare-fun b!3766320 () Bool)

(declare-fun lt!1303169 () tuple2!39240)

(declare-fun lt!1303168 () Option!8576)

(assert (=> b!3766320 (= e!2329445 (tuple2!39241 (prepend!1312 (_1!22754 lt!1303169) (_1!22758 (v!38739 lt!1303168))) (_2!22754 lt!1303169)))))

(assert (=> b!3766320 (= lt!1303169 (lexRec!789 thiss!11876 rules!1265 (_2!22758 (v!38739 lt!1303168))))))

(declare-fun d!1100978 () Bool)

(assert (=> d!1100978 e!2329446))

(declare-fun res!1524746 () Bool)

(assert (=> d!1100978 (=> (not res!1524746) (not e!2329446))))

(assert (=> d!1100978 (= res!1524746 e!2329447)))

(declare-fun c!652448 () Bool)

(assert (=> d!1100978 (= c!652448 (> (size!30258 (_1!22754 lt!1303170)) 0))))

(assert (=> d!1100978 (= lt!1303170 e!2329445)))

(declare-fun c!652447 () Bool)

(assert (=> d!1100978 (= c!652447 ((_ is Some!8575) lt!1303168))))

(assert (=> d!1100978 (= lt!1303168 (maxPrefixZipperSequence!1179 thiss!11876 rules!1265 input!678))))

(assert (=> d!1100978 (= (lexRec!789 thiss!11876 rules!1265 input!678) lt!1303170)))

(declare-fun b!3766321 () Bool)

(declare-fun res!1524745 () Bool)

(assert (=> b!3766321 (=> (not res!1524745) (not e!2329446))))

(assert (=> b!3766321 (= res!1524745 (= (list!14864 (_1!22754 lt!1303170)) (_1!22757 (lexList!1545 thiss!11876 rules!1265 (list!14863 input!678)))))))

(declare-fun b!3766322 () Bool)

(assert (=> b!3766322 (= e!2329447 (= (list!14863 (_2!22754 lt!1303170)) (list!14863 input!678)))))

(assert (= (and d!1100978 c!652447) b!3766320))

(assert (= (and d!1100978 (not c!652447)) b!3766317))

(assert (= (and d!1100978 c!652448) b!3766316))

(assert (= (and d!1100978 (not c!652448)) b!3766322))

(assert (= (and b!3766316 res!1524744) b!3766318))

(assert (= (and d!1100978 res!1524746) b!3766321))

(assert (= (and b!3766321 res!1524745) b!3766319))

(declare-fun m!4262545 () Bool)

(assert (=> d!1100978 m!4262545))

(declare-fun m!4262547 () Bool)

(assert (=> d!1100978 m!4262547))

(declare-fun m!4262549 () Bool)

(assert (=> b!3766321 m!4262549))

(assert (=> b!3766321 m!4262249))

(assert (=> b!3766321 m!4262249))

(declare-fun m!4262551 () Bool)

(assert (=> b!3766321 m!4262551))

(declare-fun m!4262553 () Bool)

(assert (=> b!3766322 m!4262553))

(assert (=> b!3766322 m!4262249))

(declare-fun m!4262555 () Bool)

(assert (=> b!3766318 m!4262555))

(declare-fun m!4262557 () Bool)

(assert (=> b!3766316 m!4262557))

(declare-fun m!4262559 () Bool)

(assert (=> b!3766316 m!4262559))

(declare-fun m!4262561 () Bool)

(assert (=> b!3766320 m!4262561))

(declare-fun m!4262563 () Bool)

(assert (=> b!3766320 m!4262563))

(assert (=> b!3766319 m!4262553))

(assert (=> b!3766319 m!4262249))

(assert (=> b!3766319 m!4262249))

(assert (=> b!3766319 m!4262551))

(assert (=> b!3766175 d!1100978))

(declare-fun d!1100980 () Bool)

(declare-fun c!652451 () Bool)

(assert (=> d!1100980 (= c!652451 ((_ is Node!12327) (c!652409 acc!335)))))

(declare-fun e!2329452 () Bool)

(assert (=> d!1100980 (= (inv!53984 (c!652409 acc!335)) e!2329452)))

(declare-fun b!3766329 () Bool)

(declare-fun inv!53995 (Conc!12327) Bool)

(assert (=> b!3766329 (= e!2329452 (inv!53995 (c!652409 acc!335)))))

(declare-fun b!3766330 () Bool)

(declare-fun e!2329453 () Bool)

(assert (=> b!3766330 (= e!2329452 e!2329453)))

(declare-fun res!1524749 () Bool)

(assert (=> b!3766330 (= res!1524749 (not ((_ is Leaf!19113) (c!652409 acc!335))))))

(assert (=> b!3766330 (=> res!1524749 e!2329453)))

(declare-fun b!3766331 () Bool)

(declare-fun inv!53996 (Conc!12327) Bool)

(assert (=> b!3766331 (= e!2329453 (inv!53996 (c!652409 acc!335)))))

(assert (= (and d!1100980 c!652451) b!3766329))

(assert (= (and d!1100980 (not c!652451)) b!3766330))

(assert (= (and b!3766330 (not res!1524749)) b!3766331))

(declare-fun m!4262565 () Bool)

(assert (=> b!3766329 m!4262565))

(declare-fun m!4262567 () Bool)

(assert (=> b!3766331 m!4262567))

(assert (=> b!3766164 d!1100980))

(declare-fun d!1100982 () Bool)

(declare-fun isBalanced!3546 (Conc!12326) Bool)

(assert (=> d!1100982 (= (inv!53986 input!678) (isBalanced!3546 (c!652408 input!678)))))

(declare-fun bs!576030 () Bool)

(assert (= bs!576030 d!1100982))

(declare-fun m!4262569 () Bool)

(assert (=> bs!576030 m!4262569))

(assert (=> start!353752 d!1100982))

(declare-fun d!1100984 () Bool)

(assert (=> d!1100984 (= (inv!53987 acc!335) (isBalanced!3545 (c!652409 acc!335)))))

(declare-fun bs!576031 () Bool)

(assert (= bs!576031 d!1100984))

(declare-fun m!4262571 () Bool)

(assert (=> bs!576031 m!4262571))

(assert (=> start!353752 d!1100984))

(declare-fun d!1100986 () Bool)

(assert (=> d!1100986 (= (inv!53986 treated!13) (isBalanced!3546 (c!652408 treated!13)))))

(declare-fun bs!576032 () Bool)

(assert (= bs!576032 d!1100986))

(declare-fun m!4262573 () Bool)

(assert (=> bs!576032 m!4262573))

(assert (=> start!353752 d!1100986))

(declare-fun d!1100988 () Bool)

(assert (=> d!1100988 (= (inv!53986 totalInput!335) (isBalanced!3546 (c!652408 totalInput!335)))))

(declare-fun bs!576033 () Bool)

(assert (= bs!576033 d!1100988))

(declare-fun m!4262575 () Bool)

(assert (=> bs!576033 m!4262575))

(assert (=> start!353752 d!1100988))

(declare-fun d!1100990 () Bool)

(declare-fun c!652454 () Bool)

(assert (=> d!1100990 (= c!652454 ((_ is Node!12326) (c!652408 input!678)))))

(declare-fun e!2329458 () Bool)

(assert (=> d!1100990 (= (inv!53985 (c!652408 input!678)) e!2329458)))

(declare-fun b!3766338 () Bool)

(declare-fun inv!53997 (Conc!12326) Bool)

(assert (=> b!3766338 (= e!2329458 (inv!53997 (c!652408 input!678)))))

(declare-fun b!3766339 () Bool)

(declare-fun e!2329459 () Bool)

(assert (=> b!3766339 (= e!2329458 e!2329459)))

(declare-fun res!1524752 () Bool)

(assert (=> b!3766339 (= res!1524752 (not ((_ is Leaf!19112) (c!652408 input!678))))))

(assert (=> b!3766339 (=> res!1524752 e!2329459)))

(declare-fun b!3766340 () Bool)

(declare-fun inv!53998 (Conc!12326) Bool)

(assert (=> b!3766340 (= e!2329459 (inv!53998 (c!652408 input!678)))))

(assert (= (and d!1100990 c!652454) b!3766338))

(assert (= (and d!1100990 (not c!652454)) b!3766339))

(assert (= (and b!3766339 (not res!1524752)) b!3766340))

(declare-fun m!4262577 () Bool)

(assert (=> b!3766338 m!4262577))

(declare-fun m!4262579 () Bool)

(assert (=> b!3766340 m!4262579))

(assert (=> b!3766165 d!1100990))

(declare-fun d!1100992 () Bool)

(assert (=> d!1100992 (= (isEmpty!23608 rules!1265) ((_ is Nil!40205) rules!1265))))

(assert (=> b!3766176 d!1100992))

(declare-fun d!1100994 () Bool)

(assert (=> d!1100994 (= (inv!53978 (tag!7036 (h!45625 rules!1265))) (= (mod (str.len (value!196622 (tag!7036 (h!45625 rules!1265)))) 2) 0))))

(assert (=> b!3766177 d!1100994))

(declare-fun d!1100996 () Bool)

(declare-fun res!1524755 () Bool)

(declare-fun e!2329462 () Bool)

(assert (=> d!1100996 (=> (not res!1524755) (not e!2329462))))

(declare-fun semiInverseModEq!2643 (Int Int) Bool)

(assert (=> d!1100996 (= res!1524755 (semiInverseModEq!2643 (toChars!8395 (transformation!6176 (h!45625 rules!1265))) (toValue!8536 (transformation!6176 (h!45625 rules!1265)))))))

(assert (=> d!1100996 (= (inv!53988 (transformation!6176 (h!45625 rules!1265))) e!2329462)))

(declare-fun b!3766343 () Bool)

(declare-fun equivClasses!2542 (Int Int) Bool)

(assert (=> b!3766343 (= e!2329462 (equivClasses!2542 (toChars!8395 (transformation!6176 (h!45625 rules!1265))) (toValue!8536 (transformation!6176 (h!45625 rules!1265)))))))

(assert (= (and d!1100996 res!1524755) b!3766343))

(declare-fun m!4262581 () Bool)

(assert (=> d!1100996 m!4262581))

(declare-fun m!4262583 () Bool)

(assert (=> b!3766343 m!4262583))

(assert (=> b!3766177 d!1100996))

(declare-fun d!1100998 () Bool)

(assert (=> d!1100998 true))

(declare-fun lt!1303174 () Bool)

(declare-fun lambda!125299 () Int)

(declare-fun forall!8245 (List!40329 Int) Bool)

(assert (=> d!1100998 (= lt!1303174 (forall!8245 rules!1265 lambda!125299))))

(declare-fun e!2329509 () Bool)

(assert (=> d!1100998 (= lt!1303174 e!2329509)))

(declare-fun res!1524769 () Bool)

(assert (=> d!1100998 (=> res!1524769 e!2329509)))

(assert (=> d!1100998 (= res!1524769 (not ((_ is Cons!40205) rules!1265)))))

(assert (=> d!1100998 (= (rulesValidInductive!2162 thiss!11876 rules!1265) lt!1303174)))

(declare-fun b!3766417 () Bool)

(declare-fun e!2329510 () Bool)

(assert (=> b!3766417 (= e!2329509 e!2329510)))

(declare-fun res!1524768 () Bool)

(assert (=> b!3766417 (=> (not res!1524768) (not e!2329510))))

(declare-fun ruleValid!2168 (LexerInterface!5765 Rule!12152) Bool)

(assert (=> b!3766417 (= res!1524768 (ruleValid!2168 thiss!11876 (h!45625 rules!1265)))))

(declare-fun b!3766418 () Bool)

(assert (=> b!3766418 (= e!2329510 (rulesValidInductive!2162 thiss!11876 (t!304356 rules!1265)))))

(assert (= (and d!1100998 (not res!1524769)) b!3766417))

(assert (= (and b!3766417 res!1524768) b!3766418))

(declare-fun m!4262627 () Bool)

(assert (=> d!1100998 m!4262627))

(declare-fun m!4262629 () Bool)

(assert (=> b!3766417 m!4262629))

(declare-fun m!4262631 () Bool)

(assert (=> b!3766418 m!4262631))

(assert (=> b!3766166 d!1100998))

(declare-fun d!1101004 () Bool)

(declare-fun e!2329513 () Bool)

(assert (=> d!1101004 e!2329513))

(declare-fun res!1524772 () Bool)

(assert (=> d!1101004 (=> res!1524772 e!2329513)))

(declare-fun lt!1303177 () Bool)

(assert (=> d!1101004 (= res!1524772 (not lt!1303177))))

(declare-fun drop!2107 (List!40327 Int) List!40327)

(assert (=> d!1101004 (= lt!1303177 (= lt!1303117 (drop!2107 lt!1303119 (- (size!30259 lt!1303119) (size!30259 lt!1303117)))))))

(assert (=> d!1101004 (= (isSuffix!950 lt!1303117 lt!1303119) lt!1303177)))

(declare-fun b!3766423 () Bool)

(assert (=> b!3766423 (= e!2329513 (>= (size!30259 lt!1303119) (size!30259 lt!1303117)))))

(assert (= (and d!1101004 (not res!1524772)) b!3766423))

(declare-fun m!4262633 () Bool)

(assert (=> d!1101004 m!4262633))

(assert (=> d!1101004 m!4262487))

(declare-fun m!4262635 () Bool)

(assert (=> d!1101004 m!4262635))

(assert (=> b!3766423 m!4262633))

(assert (=> b!3766423 m!4262487))

(assert (=> b!3766167 d!1101004))

(declare-fun d!1101006 () Bool)

(declare-fun e!2329514 () Bool)

(assert (=> d!1101006 e!2329514))

(declare-fun res!1524773 () Bool)

(assert (=> d!1101006 (=> res!1524773 e!2329514)))

(declare-fun lt!1303178 () Bool)

(assert (=> d!1101006 (= res!1524773 (not lt!1303178))))

(assert (=> d!1101006 (= lt!1303178 (= lt!1303117 (drop!2107 lt!1303115 (- (size!30259 lt!1303115) (size!30259 lt!1303117)))))))

(assert (=> d!1101006 (= (isSuffix!950 lt!1303117 lt!1303115) lt!1303178)))

(declare-fun b!3766424 () Bool)

(assert (=> b!3766424 (= e!2329514 (>= (size!30259 lt!1303115) (size!30259 lt!1303117)))))

(assert (= (and d!1101006 (not res!1524773)) b!3766424))

(declare-fun m!4262637 () Bool)

(assert (=> d!1101006 m!4262637))

(assert (=> d!1101006 m!4262487))

(declare-fun m!4262639 () Bool)

(assert (=> d!1101006 m!4262639))

(assert (=> b!3766424 m!4262637))

(assert (=> b!3766424 m!4262487))

(assert (=> b!3766167 d!1101006))

(declare-fun d!1101008 () Bool)

(assert (=> d!1101008 (isSuffix!950 lt!1303117 (++!9983 lt!1303118 lt!1303117))))

(declare-fun lt!1303181 () Unit!57916)

(declare-fun choose!22299 (List!40327 List!40327) Unit!57916)

(assert (=> d!1101008 (= lt!1303181 (choose!22299 lt!1303118 lt!1303117))))

(assert (=> d!1101008 (= (lemmaConcatTwoListThenFSndIsSuffix!635 lt!1303118 lt!1303117) lt!1303181)))

(declare-fun bs!576034 () Bool)

(assert (= bs!576034 d!1101008))

(assert (=> bs!576034 m!4262245))

(assert (=> bs!576034 m!4262245))

(declare-fun m!4262641 () Bool)

(assert (=> bs!576034 m!4262641))

(declare-fun m!4262643 () Bool)

(assert (=> bs!576034 m!4262643))

(assert (=> b!3766167 d!1101008))

(declare-fun d!1101010 () Bool)

(declare-fun c!652458 () Bool)

(assert (=> d!1101010 (= c!652458 ((_ is Node!12326) (c!652408 totalInput!335)))))

(declare-fun e!2329515 () Bool)

(assert (=> d!1101010 (= (inv!53985 (c!652408 totalInput!335)) e!2329515)))

(declare-fun b!3766425 () Bool)

(assert (=> b!3766425 (= e!2329515 (inv!53997 (c!652408 totalInput!335)))))

(declare-fun b!3766426 () Bool)

(declare-fun e!2329516 () Bool)

(assert (=> b!3766426 (= e!2329515 e!2329516)))

(declare-fun res!1524774 () Bool)

(assert (=> b!3766426 (= res!1524774 (not ((_ is Leaf!19112) (c!652408 totalInput!335))))))

(assert (=> b!3766426 (=> res!1524774 e!2329516)))

(declare-fun b!3766427 () Bool)

(assert (=> b!3766427 (= e!2329516 (inv!53998 (c!652408 totalInput!335)))))

(assert (= (and d!1101010 c!652458) b!3766425))

(assert (= (and d!1101010 (not c!652458)) b!3766426))

(assert (= (and b!3766426 (not res!1524774)) b!3766427))

(declare-fun m!4262645 () Bool)

(assert (=> b!3766425 m!4262645))

(declare-fun m!4262647 () Bool)

(assert (=> b!3766427 m!4262647))

(assert (=> b!3766178 d!1101010))

(declare-fun d!1101012 () Bool)

(declare-fun c!652459 () Bool)

(assert (=> d!1101012 (= c!652459 ((_ is Node!12326) (c!652408 treated!13)))))

(declare-fun e!2329517 () Bool)

(assert (=> d!1101012 (= (inv!53985 (c!652408 treated!13)) e!2329517)))

(declare-fun b!3766428 () Bool)

(assert (=> b!3766428 (= e!2329517 (inv!53997 (c!652408 treated!13)))))

(declare-fun b!3766429 () Bool)

(declare-fun e!2329518 () Bool)

(assert (=> b!3766429 (= e!2329517 e!2329518)))

(declare-fun res!1524775 () Bool)

(assert (=> b!3766429 (= res!1524775 (not ((_ is Leaf!19112) (c!652408 treated!13))))))

(assert (=> b!3766429 (=> res!1524775 e!2329518)))

(declare-fun b!3766430 () Bool)

(assert (=> b!3766430 (= e!2329518 (inv!53998 (c!652408 treated!13)))))

(assert (= (and d!1101012 c!652459) b!3766428))

(assert (= (and d!1101012 (not c!652459)) b!3766429))

(assert (= (and b!3766429 (not res!1524775)) b!3766430))

(declare-fun m!4262649 () Bool)

(assert (=> b!3766428 m!4262649))

(declare-fun m!4262651 () Bool)

(assert (=> b!3766430 m!4262651))

(assert (=> b!3766168 d!1101012))

(declare-fun d!1101014 () Bool)

(assert (=> d!1101014 (= (list!14863 (_2!22754 lt!1303113)) (list!14868 (c!652408 (_2!22754 lt!1303113))))))

(declare-fun bs!576035 () Bool)

(assert (= bs!576035 d!1101014))

(declare-fun m!4262653 () Bool)

(assert (=> bs!576035 m!4262653))

(assert (=> b!3766169 d!1101014))

(declare-fun d!1101016 () Bool)

(assert (=> d!1101016 (= (list!14863 (_2!22754 lt!1303112)) (list!14868 (c!652408 (_2!22754 lt!1303112))))))

(declare-fun bs!576036 () Bool)

(assert (= bs!576036 d!1101016))

(declare-fun m!4262655 () Bool)

(assert (=> bs!576036 m!4262655))

(assert (=> b!3766169 d!1101016))

(declare-fun d!1101018 () Bool)

(declare-fun res!1524778 () Bool)

(declare-fun e!2329521 () Bool)

(assert (=> d!1101018 (=> (not res!1524778) (not e!2329521))))

(declare-fun rulesValid!2378 (LexerInterface!5765 List!40329) Bool)

(assert (=> d!1101018 (= res!1524778 (rulesValid!2378 thiss!11876 rules!1265))))

(assert (=> d!1101018 (= (rulesInvariant!5108 thiss!11876 rules!1265) e!2329521)))

(declare-fun b!3766433 () Bool)

(declare-datatypes ((List!40331 0))(
  ( (Nil!40207) (Cons!40207 (h!45627 String!45712) (t!304359 List!40331)) )
))
(declare-fun noDuplicateTag!2379 (LexerInterface!5765 List!40329 List!40331) Bool)

(assert (=> b!3766433 (= e!2329521 (noDuplicateTag!2379 thiss!11876 rules!1265 Nil!40207))))

(assert (= (and d!1101018 res!1524778) b!3766433))

(declare-fun m!4262657 () Bool)

(assert (=> d!1101018 m!4262657))

(declare-fun m!4262659 () Bool)

(assert (=> b!3766433 m!4262659))

(assert (=> b!3766170 d!1101018))

(declare-fun b!3766445 () Bool)

(declare-fun e!2329524 () Bool)

(declare-fun tp!1150719 () Bool)

(declare-fun tp!1150718 () Bool)

(assert (=> b!3766445 (= e!2329524 (and tp!1150719 tp!1150718))))

(declare-fun b!3766446 () Bool)

(declare-fun tp!1150722 () Bool)

(assert (=> b!3766446 (= e!2329524 tp!1150722)))

(declare-fun b!3766444 () Bool)

(declare-fun tp_is_empty!19153 () Bool)

(assert (=> b!3766444 (= e!2329524 tp_is_empty!19153)))

(declare-fun b!3766447 () Bool)

(declare-fun tp!1150720 () Bool)

(declare-fun tp!1150721 () Bool)

(assert (=> b!3766447 (= e!2329524 (and tp!1150720 tp!1150721))))

(assert (=> b!3766177 (= tp!1150656 e!2329524)))

(assert (= (and b!3766177 ((_ is ElementMatch!11081) (regex!6176 (h!45625 rules!1265)))) b!3766444))

(assert (= (and b!3766177 ((_ is Concat!17488) (regex!6176 (h!45625 rules!1265)))) b!3766445))

(assert (= (and b!3766177 ((_ is Star!11081) (regex!6176 (h!45625 rules!1265)))) b!3766446))

(assert (= (and b!3766177 ((_ is Union!11081) (regex!6176 (h!45625 rules!1265)))) b!3766447))

(declare-fun b!3766458 () Bool)

(declare-fun b_free!100917 () Bool)

(declare-fun b_next!101621 () Bool)

(assert (=> b!3766458 (= b_free!100917 (not b_next!101621))))

(declare-fun tp!1150733 () Bool)

(declare-fun b_and!279731 () Bool)

(assert (=> b!3766458 (= tp!1150733 b_and!279731)))

(declare-fun b_free!100919 () Bool)

(declare-fun b_next!101623 () Bool)

(assert (=> b!3766458 (= b_free!100919 (not b_next!101623))))

(declare-fun tp!1150731 () Bool)

(declare-fun b_and!279733 () Bool)

(assert (=> b!3766458 (= tp!1150731 b_and!279733)))

(declare-fun e!2329535 () Bool)

(assert (=> b!3766458 (= e!2329535 (and tp!1150733 tp!1150731))))

(declare-fun b!3766457 () Bool)

(declare-fun tp!1150734 () Bool)

(declare-fun e!2329533 () Bool)

(assert (=> b!3766457 (= e!2329533 (and tp!1150734 (inv!53978 (tag!7036 (h!45625 (t!304356 rules!1265)))) (inv!53988 (transformation!6176 (h!45625 (t!304356 rules!1265)))) e!2329535))))

(declare-fun b!3766456 () Bool)

(declare-fun e!2329534 () Bool)

(declare-fun tp!1150732 () Bool)

(assert (=> b!3766456 (= e!2329534 (and e!2329533 tp!1150732))))

(assert (=> b!3766172 (= tp!1150649 e!2329534)))

(assert (= b!3766457 b!3766458))

(assert (= b!3766456 b!3766457))

(assert (= (and b!3766172 ((_ is Cons!40205) (t!304356 rules!1265))) b!3766456))

(declare-fun m!4262661 () Bool)

(assert (=> b!3766457 m!4262661))

(declare-fun m!4262663 () Bool)

(assert (=> b!3766457 m!4262663))

(declare-fun e!2329542 () Bool)

(declare-fun tp!1150743 () Bool)

(declare-fun tp!1150742 () Bool)

(declare-fun b!3766467 () Bool)

(assert (=> b!3766467 (= e!2329542 (and (inv!53985 (left!31115 (c!652408 totalInput!335))) tp!1150743 (inv!53985 (right!31445 (c!652408 totalInput!335))) tp!1150742))))

(declare-fun b!3766469 () Bool)

(declare-fun e!2329541 () Bool)

(declare-fun tp!1150741 () Bool)

(assert (=> b!3766469 (= e!2329541 tp!1150741)))

(declare-fun b!3766468 () Bool)

(declare-fun inv!53999 (IArray!24657) Bool)

(assert (=> b!3766468 (= e!2329542 (and (inv!53999 (xs!15536 (c!652408 totalInput!335))) e!2329541))))

(assert (=> b!3766178 (= tp!1150653 (and (inv!53985 (c!652408 totalInput!335)) e!2329542))))

(assert (= (and b!3766178 ((_ is Node!12326) (c!652408 totalInput!335))) b!3766467))

(assert (= b!3766468 b!3766469))

(assert (= (and b!3766178 ((_ is Leaf!19112) (c!652408 totalInput!335))) b!3766468))

(declare-fun m!4262665 () Bool)

(assert (=> b!3766467 m!4262665))

(declare-fun m!4262667 () Bool)

(assert (=> b!3766467 m!4262667))

(declare-fun m!4262669 () Bool)

(assert (=> b!3766468 m!4262669))

(assert (=> b!3766178 m!4262273))

(declare-fun tp!1150746 () Bool)

(declare-fun b!3766470 () Bool)

(declare-fun tp!1150745 () Bool)

(declare-fun e!2329544 () Bool)

(assert (=> b!3766470 (= e!2329544 (and (inv!53985 (left!31115 (c!652408 treated!13))) tp!1150746 (inv!53985 (right!31445 (c!652408 treated!13))) tp!1150745))))

(declare-fun b!3766472 () Bool)

(declare-fun e!2329543 () Bool)

(declare-fun tp!1150744 () Bool)

(assert (=> b!3766472 (= e!2329543 tp!1150744)))

(declare-fun b!3766471 () Bool)

(assert (=> b!3766471 (= e!2329544 (and (inv!53999 (xs!15536 (c!652408 treated!13))) e!2329543))))

(assert (=> b!3766168 (= tp!1150654 (and (inv!53985 (c!652408 treated!13)) e!2329544))))

(assert (= (and b!3766168 ((_ is Node!12326) (c!652408 treated!13))) b!3766470))

(assert (= b!3766471 b!3766472))

(assert (= (and b!3766168 ((_ is Leaf!19112) (c!652408 treated!13))) b!3766471))

(declare-fun m!4262671 () Bool)

(assert (=> b!3766470 m!4262671))

(declare-fun m!4262673 () Bool)

(assert (=> b!3766470 m!4262673))

(declare-fun m!4262675 () Bool)

(assert (=> b!3766471 m!4262675))

(assert (=> b!3766168 m!4262285))

(declare-fun tp!1150753 () Bool)

(declare-fun e!2329550 () Bool)

(declare-fun tp!1150755 () Bool)

(declare-fun b!3766481 () Bool)

(assert (=> b!3766481 (= e!2329550 (and (inv!53984 (left!31116 (c!652409 acc!335))) tp!1150753 (inv!53984 (right!31446 (c!652409 acc!335))) tp!1150755))))

(declare-fun b!3766483 () Bool)

(declare-fun e!2329549 () Bool)

(declare-fun tp!1150754 () Bool)

(assert (=> b!3766483 (= e!2329549 tp!1150754)))

(declare-fun b!3766482 () Bool)

(declare-fun inv!54000 (IArray!24659) Bool)

(assert (=> b!3766482 (= e!2329550 (and (inv!54000 (xs!15537 (c!652409 acc!335))) e!2329549))))

(assert (=> b!3766164 (= tp!1150655 (and (inv!53984 (c!652409 acc!335)) e!2329550))))

(assert (= (and b!3766164 ((_ is Node!12327) (c!652409 acc!335))) b!3766481))

(assert (= b!3766482 b!3766483))

(assert (= (and b!3766164 ((_ is Leaf!19113) (c!652409 acc!335))) b!3766482))

(declare-fun m!4262677 () Bool)

(assert (=> b!3766481 m!4262677))

(declare-fun m!4262679 () Bool)

(assert (=> b!3766481 m!4262679))

(declare-fun m!4262681 () Bool)

(assert (=> b!3766482 m!4262681))

(assert (=> b!3766164 m!4262275))

(declare-fun tp!1150757 () Bool)

(declare-fun b!3766484 () Bool)

(declare-fun e!2329552 () Bool)

(declare-fun tp!1150758 () Bool)

(assert (=> b!3766484 (= e!2329552 (and (inv!53985 (left!31115 (c!652408 input!678))) tp!1150758 (inv!53985 (right!31445 (c!652408 input!678))) tp!1150757))))

(declare-fun b!3766486 () Bool)

(declare-fun e!2329551 () Bool)

(declare-fun tp!1150756 () Bool)

(assert (=> b!3766486 (= e!2329551 tp!1150756)))

(declare-fun b!3766485 () Bool)

(assert (=> b!3766485 (= e!2329552 (and (inv!53999 (xs!15536 (c!652408 input!678))) e!2329551))))

(assert (=> b!3766165 (= tp!1150652 (and (inv!53985 (c!652408 input!678)) e!2329552))))

(assert (= (and b!3766165 ((_ is Node!12326) (c!652408 input!678))) b!3766484))

(assert (= b!3766485 b!3766486))

(assert (= (and b!3766165 ((_ is Leaf!19112) (c!652408 input!678))) b!3766485))

(declare-fun m!4262683 () Bool)

(assert (=> b!3766484 m!4262683))

(declare-fun m!4262685 () Bool)

(assert (=> b!3766484 m!4262685))

(declare-fun m!4262687 () Bool)

(assert (=> b!3766485 m!4262687))

(assert (=> b!3766165 m!4262297))

(check-sat (not b!3766295) (not d!1101018) (not b!3766316) (not b!3766300) (not b!3766430) (not b!3766457) (not b!3766486) (not b!3766417) (not d!1100968) (not b!3766425) (not b_next!101615) (not d!1100902) (not b!3766447) (not b!3766329) (not b!3766318) (not b!3766301) (not d!1100964) (not b_next!101623) (not d!1100982) (not b!3766470) (not b!3766484) (not d!1100998) (not b!3766446) (not b!3766331) b_and!279723 (not b!3766320) (not d!1100970) (not b!3766469) (not b!3766281) (not b!3766284) (not b!3766165) (not b!3766312) (not d!1100910) (not b!3766303) (not d!1100966) (not b!3766428) (not b!3766294) (not d!1100988) (not b!3766423) (not d!1100960) (not b!3766427) (not d!1101006) (not b!3766278) b_and!279725 (not b!3766297) (not b!3766280) (not b_next!101621) (not b!3766313) (not d!1100978) (not b!3766319) (not b!3766467) (not b!3766315) (not b!3766164) (not b!3766485) (not b!3766338) (not d!1101014) tp_is_empty!19153 (not b!3766314) (not d!1100976) (not d!1100984) (not d!1100996) (not b!3766418) (not d!1100974) b_and!279731 (not b!3766456) (not d!1100972) (not b_next!101613) (not d!1101016) (not b!3766483) b_and!279733 (not b!3766343) (not b!3766282) (not b!3766445) (not b!3766424) (not b!3766299) (not b!3766321) (not b!3766283) (not b!3766302) (not b!3766481) (not b!3766322) (not b!3766168) (not d!1100962) (not b!3766471) (not b!3766482) (not b!3766433) (not d!1101004) (not d!1100986) (not b!3766468) (not d!1100908) (not b!3766340) (not b!3766178) (not b!3766472) (not d!1101008))
(check-sat (not b_next!101615) (not b_next!101623) b_and!279723 b_and!279725 (not b_next!101621) b_and!279731 (not b_next!101613) b_and!279733)
(get-model)

(declare-fun d!1101088 () Bool)

(declare-fun lt!1303236 () Int)

(declare-fun size!30262 (List!40328) Int)

(assert (=> d!1101088 (= lt!1303236 (size!30262 (list!14864 (_1!22754 lt!1303158))))))

(declare-fun size!30263 (Conc!12327) Int)

(assert (=> d!1101088 (= lt!1303236 (size!30263 (c!652409 (_1!22754 lt!1303158))))))

(assert (=> d!1101088 (= (size!30258 (_1!22754 lt!1303158)) lt!1303236)))

(declare-fun bs!576049 () Bool)

(assert (= bs!576049 d!1101088))

(assert (=> bs!576049 m!4262463))

(assert (=> bs!576049 m!4262463))

(declare-fun m!4262911 () Bool)

(assert (=> bs!576049 m!4262911))

(declare-fun m!4262913 () Bool)

(assert (=> bs!576049 m!4262913))

(assert (=> d!1100910 d!1101088))

(declare-fun e!2329765 () Bool)

(declare-fun lt!1303275 () Option!8576)

(declare-fun b!3766843 () Bool)

(declare-fun get!13330 (Option!8576) tuple2!39248)

(declare-datatypes ((tuple2!39252 0))(
  ( (tuple2!39253 (_1!22760 Token!11490) (_2!22760 List!40327)) )
))
(declare-datatypes ((Option!8578 0))(
  ( (None!8577) (Some!8577 (v!38743 tuple2!39252)) )
))
(declare-fun get!13331 (Option!8578) tuple2!39252)

(declare-fun maxPrefixZipper!528 (LexerInterface!5765 List!40329 List!40327) Option!8578)

(assert (=> b!3766843 (= e!2329765 (= (list!14863 (_2!22758 (get!13330 lt!1303275))) (_2!22760 (get!13331 (maxPrefixZipper!528 thiss!11876 rules!1265 (list!14863 treated!13))))))))

(declare-fun d!1101090 () Bool)

(declare-fun e!2329762 () Bool)

(assert (=> d!1101090 e!2329762))

(declare-fun res!1524956 () Bool)

(assert (=> d!1101090 (=> (not res!1524956) (not e!2329762))))

(declare-fun isDefined!6752 (Option!8576) Bool)

(declare-fun isDefined!6753 (Option!8578) Bool)

(assert (=> d!1101090 (= res!1524956 (= (isDefined!6752 lt!1303275) (isDefined!6753 (maxPrefixZipper!528 thiss!11876 rules!1265 (list!14863 treated!13)))))))

(declare-fun e!2329764 () Option!8576)

(assert (=> d!1101090 (= lt!1303275 e!2329764)))

(declare-fun c!652553 () Bool)

(assert (=> d!1101090 (= c!652553 (and ((_ is Cons!40205) rules!1265) ((_ is Nil!40205) (t!304356 rules!1265))))))

(declare-fun lt!1303281 () Unit!57916)

(declare-fun lt!1303277 () Unit!57916)

(assert (=> d!1101090 (= lt!1303281 lt!1303277)))

(declare-fun lt!1303278 () List!40327)

(declare-fun lt!1303276 () List!40327)

(declare-fun isPrefix!3304 (List!40327 List!40327) Bool)

(assert (=> d!1101090 (isPrefix!3304 lt!1303278 lt!1303276)))

(declare-fun lemmaIsPrefixRefl!2089 (List!40327 List!40327) Unit!57916)

(assert (=> d!1101090 (= lt!1303277 (lemmaIsPrefixRefl!2089 lt!1303278 lt!1303276))))

(assert (=> d!1101090 (= lt!1303276 (list!14863 treated!13))))

(assert (=> d!1101090 (= lt!1303278 (list!14863 treated!13))))

(assert (=> d!1101090 (rulesValidInductive!2162 thiss!11876 rules!1265)))

(assert (=> d!1101090 (= (maxPrefixZipperSequence!1179 thiss!11876 rules!1265 treated!13) lt!1303275)))

(declare-fun b!3766844 () Bool)

(declare-fun lt!1303280 () Option!8576)

(declare-fun lt!1303279 () Option!8576)

(assert (=> b!3766844 (= e!2329764 (ite (and ((_ is None!8575) lt!1303280) ((_ is None!8575) lt!1303279)) None!8575 (ite ((_ is None!8575) lt!1303279) lt!1303280 (ite ((_ is None!8575) lt!1303280) lt!1303279 (ite (>= (size!30253 (_1!22758 (v!38739 lt!1303280))) (size!30253 (_1!22758 (v!38739 lt!1303279)))) lt!1303280 lt!1303279)))))))

(declare-fun call!275612 () Option!8576)

(assert (=> b!3766844 (= lt!1303280 call!275612)))

(assert (=> b!3766844 (= lt!1303279 (maxPrefixZipperSequence!1179 thiss!11876 (t!304356 rules!1265) treated!13))))

(declare-fun bm!275607 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!543 (LexerInterface!5765 Rule!12152 BalanceConc!24246) Option!8576)

(assert (=> bm!275607 (= call!275612 (maxPrefixOneRuleZipperSequence!543 thiss!11876 (h!45625 rules!1265) treated!13))))

(declare-fun b!3766845 () Bool)

(declare-fun e!2329766 () Bool)

(assert (=> b!3766845 (= e!2329762 e!2329766)))

(declare-fun res!1524957 () Bool)

(assert (=> b!3766845 (=> res!1524957 e!2329766)))

(assert (=> b!3766845 (= res!1524957 (not (isDefined!6752 lt!1303275)))))

(declare-fun b!3766846 () Bool)

(declare-fun e!2329767 () Bool)

(assert (=> b!3766846 (= e!2329766 e!2329767)))

(declare-fun res!1524958 () Bool)

(assert (=> b!3766846 (=> (not res!1524958) (not e!2329767))))

(declare-fun maxPrefix!3097 (LexerInterface!5765 List!40329 List!40327) Option!8578)

(assert (=> b!3766846 (= res!1524958 (= (_1!22758 (get!13330 lt!1303275)) (_1!22760 (get!13331 (maxPrefix!3097 thiss!11876 rules!1265 (list!14863 treated!13))))))))

(declare-fun b!3766847 () Bool)

(declare-fun res!1524955 () Bool)

(assert (=> b!3766847 (=> (not res!1524955) (not e!2329762))))

(declare-fun e!2329763 () Bool)

(assert (=> b!3766847 (= res!1524955 e!2329763)))

(declare-fun res!1524953 () Bool)

(assert (=> b!3766847 (=> res!1524953 e!2329763)))

(assert (=> b!3766847 (= res!1524953 (not (isDefined!6752 lt!1303275)))))

(declare-fun b!3766848 () Bool)

(assert (=> b!3766848 (= e!2329764 call!275612)))

(declare-fun b!3766849 () Bool)

(assert (=> b!3766849 (= e!2329763 e!2329765)))

(declare-fun res!1524954 () Bool)

(assert (=> b!3766849 (=> (not res!1524954) (not e!2329765))))

(assert (=> b!3766849 (= res!1524954 (= (_1!22758 (get!13330 lt!1303275)) (_1!22760 (get!13331 (maxPrefixZipper!528 thiss!11876 rules!1265 (list!14863 treated!13))))))))

(declare-fun b!3766850 () Bool)

(assert (=> b!3766850 (= e!2329767 (= (list!14863 (_2!22758 (get!13330 lt!1303275))) (_2!22760 (get!13331 (maxPrefix!3097 thiss!11876 rules!1265 (list!14863 treated!13))))))))

(assert (= (and d!1101090 c!652553) b!3766848))

(assert (= (and d!1101090 (not c!652553)) b!3766844))

(assert (= (or b!3766848 b!3766844) bm!275607))

(assert (= (and d!1101090 res!1524956) b!3766847))

(assert (= (and b!3766847 (not res!1524953)) b!3766849))

(assert (= (and b!3766849 res!1524954) b!3766843))

(assert (= (and b!3766847 res!1524955) b!3766845))

(assert (= (and b!3766845 (not res!1524957)) b!3766846))

(assert (= (and b!3766846 res!1524958) b!3766850))

(assert (=> d!1101090 m!4262277))

(declare-fun m!4263031 () Bool)

(assert (=> d!1101090 m!4263031))

(assert (=> d!1101090 m!4262251))

(declare-fun m!4263033 () Bool)

(assert (=> d!1101090 m!4263033))

(declare-fun m!4263035 () Bool)

(assert (=> d!1101090 m!4263035))

(declare-fun m!4263037 () Bool)

(assert (=> d!1101090 m!4263037))

(assert (=> d!1101090 m!4262251))

(assert (=> d!1101090 m!4263033))

(declare-fun m!4263039 () Bool)

(assert (=> d!1101090 m!4263039))

(declare-fun m!4263041 () Bool)

(assert (=> b!3766843 m!4263041))

(assert (=> b!3766843 m!4262251))

(declare-fun m!4263043 () Bool)

(assert (=> b!3766843 m!4263043))

(assert (=> b!3766843 m!4262251))

(assert (=> b!3766843 m!4263033))

(assert (=> b!3766843 m!4263033))

(declare-fun m!4263045 () Bool)

(assert (=> b!3766843 m!4263045))

(declare-fun m!4263047 () Bool)

(assert (=> bm!275607 m!4263047))

(assert (=> b!3766847 m!4263037))

(assert (=> b!3766850 m!4263041))

(declare-fun m!4263049 () Bool)

(assert (=> b!3766850 m!4263049))

(declare-fun m!4263051 () Bool)

(assert (=> b!3766850 m!4263051))

(assert (=> b!3766850 m!4262251))

(assert (=> b!3766850 m!4263043))

(assert (=> b!3766850 m!4262251))

(assert (=> b!3766850 m!4263049))

(assert (=> b!3766845 m!4263037))

(assert (=> b!3766846 m!4263043))

(assert (=> b!3766846 m!4262251))

(assert (=> b!3766846 m!4262251))

(assert (=> b!3766846 m!4263049))

(assert (=> b!3766846 m!4263049))

(assert (=> b!3766846 m!4263051))

(assert (=> b!3766849 m!4263043))

(assert (=> b!3766849 m!4262251))

(assert (=> b!3766849 m!4262251))

(assert (=> b!3766849 m!4263033))

(assert (=> b!3766849 m!4263033))

(assert (=> b!3766849 m!4263045))

(declare-fun m!4263053 () Bool)

(assert (=> b!3766844 m!4263053))

(assert (=> d!1100910 d!1101090))

(declare-fun d!1101128 () Bool)

(assert (=> d!1101128 (= (list!14864 lt!1303167) (list!14867 (c!652409 lt!1303167)))))

(declare-fun bs!576050 () Bool)

(assert (= bs!576050 d!1101128))

(declare-fun m!4263055 () Bool)

(assert (=> bs!576050 m!4263055))

(assert (=> b!3766315 d!1101128))

(declare-fun e!2329775 () Bool)

(declare-fun b!3766872 () Bool)

(declare-fun lt!1303284 () List!40328)

(assert (=> b!3766872 (= e!2329775 (or (not (= (list!14864 (_1!22754 lt!1303112)) Nil!40204)) (= lt!1303284 (list!14864 acc!335))))))

(declare-fun b!3766870 () Bool)

(declare-fun e!2329776 () List!40328)

(assert (=> b!3766870 (= e!2329776 (Cons!40204 (h!45624 (list!14864 acc!335)) (++!9987 (t!304355 (list!14864 acc!335)) (list!14864 (_1!22754 lt!1303112)))))))

(declare-fun b!3766869 () Bool)

(assert (=> b!3766869 (= e!2329776 (list!14864 (_1!22754 lt!1303112)))))

(declare-fun d!1101130 () Bool)

(assert (=> d!1101130 e!2329775))

(declare-fun res!1524970 () Bool)

(assert (=> d!1101130 (=> (not res!1524970) (not e!2329775))))

(declare-fun content!5907 (List!40328) (InoxSet Token!11490))

(assert (=> d!1101130 (= res!1524970 (= (content!5907 lt!1303284) ((_ map or) (content!5907 (list!14864 acc!335)) (content!5907 (list!14864 (_1!22754 lt!1303112))))))))

(assert (=> d!1101130 (= lt!1303284 e!2329776)))

(declare-fun c!652556 () Bool)

(assert (=> d!1101130 (= c!652556 ((_ is Nil!40204) (list!14864 acc!335)))))

(assert (=> d!1101130 (= (++!9987 (list!14864 acc!335) (list!14864 (_1!22754 lt!1303112))) lt!1303284)))

(declare-fun b!3766871 () Bool)

(declare-fun res!1524969 () Bool)

(assert (=> b!3766871 (=> (not res!1524969) (not e!2329775))))

(assert (=> b!3766871 (= res!1524969 (= (size!30262 lt!1303284) (+ (size!30262 (list!14864 acc!335)) (size!30262 (list!14864 (_1!22754 lt!1303112))))))))

(assert (= (and d!1101130 c!652556) b!3766869))

(assert (= (and d!1101130 (not c!652556)) b!3766870))

(assert (= (and d!1101130 res!1524970) b!3766871))

(assert (= (and b!3766871 res!1524969) b!3766872))

(assert (=> b!3766870 m!4262539))

(declare-fun m!4263063 () Bool)

(assert (=> b!3766870 m!4263063))

(declare-fun m!4263065 () Bool)

(assert (=> d!1101130 m!4263065))

(assert (=> d!1101130 m!4262281))

(declare-fun m!4263067 () Bool)

(assert (=> d!1101130 m!4263067))

(assert (=> d!1101130 m!4262539))

(declare-fun m!4263069 () Bool)

(assert (=> d!1101130 m!4263069))

(declare-fun m!4263071 () Bool)

(assert (=> b!3766871 m!4263071))

(assert (=> b!3766871 m!4262281))

(declare-fun m!4263073 () Bool)

(assert (=> b!3766871 m!4263073))

(assert (=> b!3766871 m!4262539))

(declare-fun m!4263075 () Bool)

(assert (=> b!3766871 m!4263075))

(assert (=> b!3766315 d!1101130))

(assert (=> b!3766315 d!1100908))

(declare-fun d!1101136 () Bool)

(assert (=> d!1101136 (= (list!14864 (_1!22754 lt!1303112)) (list!14867 (c!652409 (_1!22754 lt!1303112))))))

(declare-fun bs!576052 () Bool)

(assert (= bs!576052 d!1101136))

(declare-fun m!4263077 () Bool)

(assert (=> bs!576052 m!4263077))

(assert (=> b!3766315 d!1101136))

(declare-fun b!3766892 () Bool)

(declare-fun e!2329785 () List!40328)

(declare-fun list!14871 (IArray!24659) List!40328)

(assert (=> b!3766892 (= e!2329785 (list!14871 (xs!15537 (c!652409 (++!9984 acc!335 (_1!22754 lt!1303112))))))))

(declare-fun d!1101138 () Bool)

(declare-fun c!652561 () Bool)

(assert (=> d!1101138 (= c!652561 ((_ is Empty!12327) (c!652409 (++!9984 acc!335 (_1!22754 lt!1303112)))))))

(declare-fun e!2329784 () List!40328)

(assert (=> d!1101138 (= (list!14867 (c!652409 (++!9984 acc!335 (_1!22754 lt!1303112)))) e!2329784)))

(declare-fun b!3766890 () Bool)

(assert (=> b!3766890 (= e!2329784 Nil!40204)))

(declare-fun b!3766891 () Bool)

(assert (=> b!3766891 (= e!2329784 e!2329785)))

(declare-fun c!652562 () Bool)

(assert (=> b!3766891 (= c!652562 ((_ is Leaf!19113) (c!652409 (++!9984 acc!335 (_1!22754 lt!1303112)))))))

(declare-fun b!3766893 () Bool)

(assert (=> b!3766893 (= e!2329785 (++!9987 (list!14867 (left!31116 (c!652409 (++!9984 acc!335 (_1!22754 lt!1303112))))) (list!14867 (right!31446 (c!652409 (++!9984 acc!335 (_1!22754 lt!1303112)))))))))

(assert (= (and d!1101138 c!652561) b!3766890))

(assert (= (and d!1101138 (not c!652561)) b!3766891))

(assert (= (and b!3766891 c!652562) b!3766892))

(assert (= (and b!3766891 (not c!652562)) b!3766893))

(declare-fun m!4263085 () Bool)

(assert (=> b!3766892 m!4263085))

(declare-fun m!4263087 () Bool)

(assert (=> b!3766893 m!4263087))

(declare-fun m!4263089 () Bool)

(assert (=> b!3766893 m!4263089))

(assert (=> b!3766893 m!4263087))

(assert (=> b!3766893 m!4263089))

(declare-fun m!4263091 () Bool)

(assert (=> b!3766893 m!4263091))

(assert (=> d!1100974 d!1101138))

(declare-fun d!1101144 () Bool)

(assert (=> d!1101144 (= (list!14863 (_2!22754 lt!1303158)) (list!14868 (c!652408 (_2!22754 lt!1303158))))))

(declare-fun bs!576053 () Bool)

(assert (= bs!576053 d!1101144))

(declare-fun m!4263093 () Bool)

(assert (=> bs!576053 m!4263093))

(assert (=> b!3766281 d!1101144))

(declare-fun b!3766978 () Bool)

(declare-fun e!2329830 () Bool)

(declare-fun lt!1303323 () tuple2!39246)

(declare-fun isEmpty!23614 (List!40328) Bool)

(assert (=> b!3766978 (= e!2329830 (not (isEmpty!23614 (_1!22757 lt!1303323))))))

(declare-fun d!1101146 () Bool)

(declare-fun e!2329832 () Bool)

(assert (=> d!1101146 e!2329832))

(declare-fun c!652583 () Bool)

(assert (=> d!1101146 (= c!652583 (> (size!30262 (_1!22757 lt!1303323)) 0))))

(declare-fun e!2329831 () tuple2!39246)

(assert (=> d!1101146 (= lt!1303323 e!2329831)))

(declare-fun c!652584 () Bool)

(declare-fun lt!1303322 () Option!8578)

(assert (=> d!1101146 (= c!652584 ((_ is Some!8577) lt!1303322))))

(assert (=> d!1101146 (= lt!1303322 (maxPrefix!3097 thiss!11876 rules!1265 (list!14863 treated!13)))))

(assert (=> d!1101146 (= (lexList!1545 thiss!11876 rules!1265 (list!14863 treated!13)) lt!1303323)))

(declare-fun b!3766979 () Bool)

(assert (=> b!3766979 (= e!2329832 e!2329830)))

(declare-fun res!1525024 () Bool)

(assert (=> b!3766979 (= res!1525024 (< (size!30259 (_2!22757 lt!1303323)) (size!30259 (list!14863 treated!13))))))

(assert (=> b!3766979 (=> (not res!1525024) (not e!2329830))))

(declare-fun b!3766980 () Bool)

(declare-fun lt!1303321 () tuple2!39246)

(assert (=> b!3766980 (= e!2329831 (tuple2!39247 (Cons!40204 (_1!22760 (v!38743 lt!1303322)) (_1!22757 lt!1303321)) (_2!22757 lt!1303321)))))

(assert (=> b!3766980 (= lt!1303321 (lexList!1545 thiss!11876 rules!1265 (_2!22760 (v!38743 lt!1303322))))))

(declare-fun b!3766981 () Bool)

(assert (=> b!3766981 (= e!2329832 (= (_2!22757 lt!1303323) (list!14863 treated!13)))))

(declare-fun b!3766982 () Bool)

(assert (=> b!3766982 (= e!2329831 (tuple2!39247 Nil!40204 (list!14863 treated!13)))))

(assert (= (and d!1101146 c!652584) b!3766980))

(assert (= (and d!1101146 (not c!652584)) b!3766982))

(assert (= (and d!1101146 c!652583) b!3766979))

(assert (= (and d!1101146 (not c!652583)) b!3766981))

(assert (= (and b!3766979 res!1525024) b!3766978))

(declare-fun m!4263289 () Bool)

(assert (=> b!3766978 m!4263289))

(declare-fun m!4263291 () Bool)

(assert (=> d!1101146 m!4263291))

(assert (=> d!1101146 m!4262251))

(assert (=> d!1101146 m!4263049))

(declare-fun m!4263297 () Bool)

(assert (=> b!3766979 m!4263297))

(assert (=> b!3766979 m!4262251))

(declare-fun m!4263301 () Bool)

(assert (=> b!3766979 m!4263301))

(declare-fun m!4263305 () Bool)

(assert (=> b!3766980 m!4263305))

(assert (=> b!3766281 d!1101146))

(assert (=> b!3766281 d!1100968))

(declare-fun d!1101216 () Bool)

(declare-fun c!652587 () Bool)

(assert (=> d!1101216 (= c!652587 ((_ is Node!12326) (left!31115 (c!652408 totalInput!335))))))

(declare-fun e!2329838 () Bool)

(assert (=> d!1101216 (= (inv!53985 (left!31115 (c!652408 totalInput!335))) e!2329838)))

(declare-fun b!3766991 () Bool)

(assert (=> b!3766991 (= e!2329838 (inv!53997 (left!31115 (c!652408 totalInput!335))))))

(declare-fun b!3766992 () Bool)

(declare-fun e!2329839 () Bool)

(assert (=> b!3766992 (= e!2329838 e!2329839)))

(declare-fun res!1525029 () Bool)

(assert (=> b!3766992 (= res!1525029 (not ((_ is Leaf!19112) (left!31115 (c!652408 totalInput!335)))))))

(assert (=> b!3766992 (=> res!1525029 e!2329839)))

(declare-fun b!3766993 () Bool)

(assert (=> b!3766993 (= e!2329839 (inv!53998 (left!31115 (c!652408 totalInput!335))))))

(assert (= (and d!1101216 c!652587) b!3766991))

(assert (= (and d!1101216 (not c!652587)) b!3766992))

(assert (= (and b!3766992 (not res!1525029)) b!3766993))

(declare-fun m!4263307 () Bool)

(assert (=> b!3766991 m!4263307))

(declare-fun m!4263309 () Bool)

(assert (=> b!3766993 m!4263309))

(assert (=> b!3766467 d!1101216))

(declare-fun d!1101218 () Bool)

(declare-fun c!652588 () Bool)

(assert (=> d!1101218 (= c!652588 ((_ is Node!12326) (right!31445 (c!652408 totalInput!335))))))

(declare-fun e!2329840 () Bool)

(assert (=> d!1101218 (= (inv!53985 (right!31445 (c!652408 totalInput!335))) e!2329840)))

(declare-fun b!3766994 () Bool)

(assert (=> b!3766994 (= e!2329840 (inv!53997 (right!31445 (c!652408 totalInput!335))))))

(declare-fun b!3766995 () Bool)

(declare-fun e!2329841 () Bool)

(assert (=> b!3766995 (= e!2329840 e!2329841)))

(declare-fun res!1525030 () Bool)

(assert (=> b!3766995 (= res!1525030 (not ((_ is Leaf!19112) (right!31445 (c!652408 totalInput!335)))))))

(assert (=> b!3766995 (=> res!1525030 e!2329841)))

(declare-fun b!3766996 () Bool)

(assert (=> b!3766996 (= e!2329841 (inv!53998 (right!31445 (c!652408 totalInput!335))))))

(assert (= (and d!1101218 c!652588) b!3766994))

(assert (= (and d!1101218 (not c!652588)) b!3766995))

(assert (= (and b!3766995 (not res!1525030)) b!3766996))

(declare-fun m!4263311 () Bool)

(assert (=> b!3766994 m!4263311))

(declare-fun m!4263313 () Bool)

(assert (=> b!3766996 m!4263313))

(assert (=> b!3766467 d!1101218))

(declare-fun b!3767023 () Bool)

(declare-fun res!1525054 () Bool)

(declare-fun e!2329855 () Bool)

(assert (=> b!3767023 (=> (not res!1525054) (not e!2329855))))

(assert (=> b!3767023 (= res!1525054 (isBalanced!3546 (left!31115 (c!652408 treated!13))))))

(declare-fun b!3767024 () Bool)

(declare-fun res!1525052 () Bool)

(assert (=> b!3767024 (=> (not res!1525052) (not e!2329855))))

(declare-fun isEmpty!23615 (Conc!12326) Bool)

(assert (=> b!3767024 (= res!1525052 (not (isEmpty!23615 (left!31115 (c!652408 treated!13)))))))

(declare-fun d!1101220 () Bool)

(declare-fun res!1525049 () Bool)

(declare-fun e!2329854 () Bool)

(assert (=> d!1101220 (=> res!1525049 e!2329854)))

(assert (=> d!1101220 (= res!1525049 (not ((_ is Node!12326) (c!652408 treated!13))))))

(assert (=> d!1101220 (= (isBalanced!3546 (c!652408 treated!13)) e!2329854)))

(declare-fun b!3767025 () Bool)

(assert (=> b!3767025 (= e!2329855 (not (isEmpty!23615 (right!31445 (c!652408 treated!13)))))))

(declare-fun b!3767026 () Bool)

(declare-fun res!1525050 () Bool)

(assert (=> b!3767026 (=> (not res!1525050) (not e!2329855))))

(assert (=> b!3767026 (= res!1525050 (isBalanced!3546 (right!31445 (c!652408 treated!13))))))

(declare-fun b!3767027 () Bool)

(assert (=> b!3767027 (= e!2329854 e!2329855)))

(declare-fun res!1525051 () Bool)

(assert (=> b!3767027 (=> (not res!1525051) (not e!2329855))))

(declare-fun height!1764 (Conc!12326) Int)

(assert (=> b!3767027 (= res!1525051 (<= (- 1) (- (height!1764 (left!31115 (c!652408 treated!13))) (height!1764 (right!31445 (c!652408 treated!13))))))))

(declare-fun b!3767028 () Bool)

(declare-fun res!1525053 () Bool)

(assert (=> b!3767028 (=> (not res!1525053) (not e!2329855))))

(assert (=> b!3767028 (= res!1525053 (<= (- (height!1764 (left!31115 (c!652408 treated!13))) (height!1764 (right!31445 (c!652408 treated!13)))) 1))))

(assert (= (and d!1101220 (not res!1525049)) b!3767027))

(assert (= (and b!3767027 res!1525051) b!3767028))

(assert (= (and b!3767028 res!1525053) b!3767023))

(assert (= (and b!3767023 res!1525054) b!3767026))

(assert (= (and b!3767026 res!1525050) b!3767024))

(assert (= (and b!3767024 res!1525052) b!3767025))

(declare-fun m!4263347 () Bool)

(assert (=> b!3767025 m!4263347))

(declare-fun m!4263349 () Bool)

(assert (=> b!3767023 m!4263349))

(declare-fun m!4263351 () Bool)

(assert (=> b!3767028 m!4263351))

(declare-fun m!4263353 () Bool)

(assert (=> b!3767028 m!4263353))

(assert (=> b!3767027 m!4263351))

(assert (=> b!3767027 m!4263353))

(declare-fun m!4263355 () Bool)

(assert (=> b!3767026 m!4263355))

(declare-fun m!4263357 () Bool)

(assert (=> b!3767024 m!4263357))

(assert (=> d!1100986 d!1101220))

(declare-fun d!1101230 () Bool)

(assert (=> d!1101230 (= (inv!53999 (xs!15536 (c!652408 input!678))) (<= (size!30259 (innerList!12386 (xs!15536 (c!652408 input!678)))) 2147483647))))

(declare-fun bs!576070 () Bool)

(assert (= bs!576070 d!1101230))

(declare-fun m!4263373 () Bool)

(assert (=> bs!576070 m!4263373))

(assert (=> b!3766485 d!1101230))

(declare-fun d!1101236 () Bool)

(assert (=> d!1101236 (= (list!14864 (_1!22754 lt!1303158)) (list!14867 (c!652409 (_1!22754 lt!1303158))))))

(declare-fun bs!576071 () Bool)

(assert (= bs!576071 d!1101236))

(declare-fun m!4263375 () Bool)

(assert (=> bs!576071 m!4263375))

(assert (=> b!3766283 d!1101236))

(assert (=> b!3766283 d!1101146))

(assert (=> b!3766283 d!1100968))

(declare-fun b!3767060 () Bool)

(declare-fun e!2329875 () List!40327)

(assert (=> b!3767060 (= e!2329875 Nil!40203)))

(declare-fun b!3767063 () Bool)

(declare-fun e!2329876 () List!40327)

(assert (=> b!3767063 (= e!2329876 (++!9983 (list!14868 (left!31115 (c!652408 totalInput!335))) (list!14868 (right!31445 (c!652408 totalInput!335)))))))

(declare-fun b!3767062 () Bool)

(declare-fun list!14872 (IArray!24657) List!40327)

(assert (=> b!3767062 (= e!2329876 (list!14872 (xs!15536 (c!652408 totalInput!335))))))

(declare-fun b!3767061 () Bool)

(assert (=> b!3767061 (= e!2329875 e!2329876)))

(declare-fun c!652599 () Bool)

(assert (=> b!3767061 (= c!652599 ((_ is Leaf!19112) (c!652408 totalInput!335)))))

(declare-fun d!1101238 () Bool)

(declare-fun c!652598 () Bool)

(assert (=> d!1101238 (= c!652598 ((_ is Empty!12326) (c!652408 totalInput!335)))))

(assert (=> d!1101238 (= (list!14868 (c!652408 totalInput!335)) e!2329875)))

(assert (= (and d!1101238 c!652598) b!3767060))

(assert (= (and d!1101238 (not c!652598)) b!3767061))

(assert (= (and b!3767061 c!652599) b!3767062))

(assert (= (and b!3767061 (not c!652599)) b!3767063))

(declare-fun m!4263407 () Bool)

(assert (=> b!3767063 m!4263407))

(declare-fun m!4263409 () Bool)

(assert (=> b!3767063 m!4263409))

(assert (=> b!3767063 m!4263407))

(assert (=> b!3767063 m!4263409))

(declare-fun m!4263411 () Bool)

(assert (=> b!3767063 m!4263411))

(declare-fun m!4263413 () Bool)

(assert (=> b!3767062 m!4263413))

(assert (=> d!1100964 d!1101238))

(assert (=> b!3766178 d!1101010))

(declare-fun d!1101240 () Bool)

(declare-fun lt!1303334 () Int)

(assert (=> d!1101240 (>= lt!1303334 0)))

(declare-fun e!2329894 () Int)

(assert (=> d!1101240 (= lt!1303334 e!2329894)))

(declare-fun c!652602 () Bool)

(assert (=> d!1101240 (= c!652602 ((_ is Nil!40203) lt!1303161))))

(assert (=> d!1101240 (= (size!30259 lt!1303161) lt!1303334)))

(declare-fun b!3767099 () Bool)

(assert (=> b!3767099 (= e!2329894 0)))

(declare-fun b!3767100 () Bool)

(assert (=> b!3767100 (= e!2329894 (+ 1 (size!30259 (t!304354 lt!1303161))))))

(assert (= (and d!1101240 c!652602) b!3767099))

(assert (= (and d!1101240 (not c!652602)) b!3767100))

(declare-fun m!4263431 () Bool)

(assert (=> b!3767100 m!4263431))

(assert (=> b!3766295 d!1101240))

(declare-fun d!1101242 () Bool)

(declare-fun lt!1303335 () Int)

(assert (=> d!1101242 (>= lt!1303335 0)))

(declare-fun e!2329897 () Int)

(assert (=> d!1101242 (= lt!1303335 e!2329897)))

(declare-fun c!652603 () Bool)

(assert (=> d!1101242 (= c!652603 ((_ is Nil!40203) lt!1303118))))

(assert (=> d!1101242 (= (size!30259 lt!1303118) lt!1303335)))

(declare-fun b!3767105 () Bool)

(assert (=> b!3767105 (= e!2329897 0)))

(declare-fun b!3767106 () Bool)

(assert (=> b!3767106 (= e!2329897 (+ 1 (size!30259 (t!304354 lt!1303118))))))

(assert (= (and d!1101242 c!652603) b!3767105))

(assert (= (and d!1101242 (not c!652603)) b!3767106))

(declare-fun m!4263433 () Bool)

(assert (=> b!3767106 m!4263433))

(assert (=> b!3766295 d!1101242))

(declare-fun d!1101244 () Bool)

(declare-fun lt!1303336 () Int)

(assert (=> d!1101244 (>= lt!1303336 0)))

(declare-fun e!2329898 () Int)

(assert (=> d!1101244 (= lt!1303336 e!2329898)))

(declare-fun c!652604 () Bool)

(assert (=> d!1101244 (= c!652604 ((_ is Nil!40203) lt!1303117))))

(assert (=> d!1101244 (= (size!30259 lt!1303117) lt!1303336)))

(declare-fun b!3767107 () Bool)

(assert (=> b!3767107 (= e!2329898 0)))

(declare-fun b!3767108 () Bool)

(assert (=> b!3767108 (= e!2329898 (+ 1 (size!30259 (t!304354 lt!1303117))))))

(assert (= (and d!1101244 c!652604) b!3767107))

(assert (= (and d!1101244 (not c!652604)) b!3767108))

(declare-fun m!4263435 () Bool)

(assert (=> b!3767108 m!4263435))

(assert (=> b!3766295 d!1101244))

(declare-fun b!3767109 () Bool)

(declare-fun e!2329899 () List!40327)

(assert (=> b!3767109 (= e!2329899 Nil!40203)))

(declare-fun b!3767112 () Bool)

(declare-fun e!2329900 () List!40327)

(assert (=> b!3767112 (= e!2329900 (++!9983 (list!14868 (left!31115 (c!652408 (_2!22754 lt!1303112)))) (list!14868 (right!31445 (c!652408 (_2!22754 lt!1303112))))))))

(declare-fun b!3767111 () Bool)

(assert (=> b!3767111 (= e!2329900 (list!14872 (xs!15536 (c!652408 (_2!22754 lt!1303112)))))))

(declare-fun b!3767110 () Bool)

(assert (=> b!3767110 (= e!2329899 e!2329900)))

(declare-fun c!652606 () Bool)

(assert (=> b!3767110 (= c!652606 ((_ is Leaf!19112) (c!652408 (_2!22754 lt!1303112))))))

(declare-fun d!1101246 () Bool)

(declare-fun c!652605 () Bool)

(assert (=> d!1101246 (= c!652605 ((_ is Empty!12326) (c!652408 (_2!22754 lt!1303112))))))

(assert (=> d!1101246 (= (list!14868 (c!652408 (_2!22754 lt!1303112))) e!2329899)))

(assert (= (and d!1101246 c!652605) b!3767109))

(assert (= (and d!1101246 (not c!652605)) b!3767110))

(assert (= (and b!3767110 c!652606) b!3767111))

(assert (= (and b!3767110 (not c!652606)) b!3767112))

(declare-fun m!4263437 () Bool)

(assert (=> b!3767112 m!4263437))

(declare-fun m!4263439 () Bool)

(assert (=> b!3767112 m!4263439))

(assert (=> b!3767112 m!4263437))

(assert (=> b!3767112 m!4263439))

(declare-fun m!4263441 () Bool)

(assert (=> b!3767112 m!4263441))

(declare-fun m!4263443 () Bool)

(assert (=> b!3767111 m!4263443))

(assert (=> d!1101016 d!1101246))

(declare-fun b!3767113 () Bool)

(declare-fun e!2329901 () List!40327)

(assert (=> b!3767113 (= e!2329901 Nil!40203)))

(declare-fun b!3767116 () Bool)

(declare-fun e!2329902 () List!40327)

(assert (=> b!3767116 (= e!2329902 (++!9983 (list!14868 (left!31115 (c!652408 (_2!22754 lt!1303114)))) (list!14868 (right!31445 (c!652408 (_2!22754 lt!1303114))))))))

(declare-fun b!3767115 () Bool)

(assert (=> b!3767115 (= e!2329902 (list!14872 (xs!15536 (c!652408 (_2!22754 lt!1303114)))))))

(declare-fun b!3767114 () Bool)

(assert (=> b!3767114 (= e!2329901 e!2329902)))

(declare-fun c!652608 () Bool)

(assert (=> b!3767114 (= c!652608 ((_ is Leaf!19112) (c!652408 (_2!22754 lt!1303114))))))

(declare-fun d!1101248 () Bool)

(declare-fun c!652607 () Bool)

(assert (=> d!1101248 (= c!652607 ((_ is Empty!12326) (c!652408 (_2!22754 lt!1303114))))))

(assert (=> d!1101248 (= (list!14868 (c!652408 (_2!22754 lt!1303114))) e!2329901)))

(assert (= (and d!1101248 c!652607) b!3767113))

(assert (= (and d!1101248 (not c!652607)) b!3767114))

(assert (= (and b!3767114 c!652608) b!3767115))

(assert (= (and b!3767114 (not c!652608)) b!3767116))

(declare-fun m!4263445 () Bool)

(assert (=> b!3767116 m!4263445))

(declare-fun m!4263447 () Bool)

(assert (=> b!3767116 m!4263447))

(assert (=> b!3767116 m!4263445))

(assert (=> b!3767116 m!4263447))

(declare-fun m!4263449 () Bool)

(assert (=> b!3767116 m!4263449))

(declare-fun m!4263451 () Bool)

(assert (=> b!3767115 m!4263451))

(assert (=> d!1100960 d!1101248))

(declare-fun d!1101250 () Bool)

(assert (=> d!1101250 (= (inv!54000 (xs!15537 (c!652409 acc!335))) (<= (size!30262 (innerList!12387 (xs!15537 (c!652409 acc!335)))) 2147483647))))

(declare-fun bs!576074 () Bool)

(assert (= bs!576074 d!1101250))

(declare-fun m!4263453 () Bool)

(assert (=> bs!576074 m!4263453))

(assert (=> b!3766482 d!1101250))

(declare-fun d!1101252 () Bool)

(declare-fun lt!1303339 () Int)

(assert (=> d!1101252 (= lt!1303339 (size!30259 (list!14863 (_2!22754 lt!1303164))))))

(declare-fun size!30265 (Conc!12326) Int)

(assert (=> d!1101252 (= lt!1303339 (size!30265 (c!652408 (_2!22754 lt!1303164))))))

(assert (=> d!1101252 (= (size!30257 (_2!22754 lt!1303164)) lt!1303339)))

(declare-fun bs!576075 () Bool)

(assert (= bs!576075 d!1101252))

(assert (=> bs!576075 m!4262509))

(assert (=> bs!576075 m!4262509))

(declare-fun m!4263463 () Bool)

(assert (=> bs!576075 m!4263463))

(declare-fun m!4263465 () Bool)

(assert (=> bs!576075 m!4263465))

(assert (=> b!3766297 d!1101252))

(declare-fun d!1101254 () Bool)

(declare-fun lt!1303340 () Int)

(assert (=> d!1101254 (= lt!1303340 (size!30259 (list!14863 totalInput!335)))))

(assert (=> d!1101254 (= lt!1303340 (size!30265 (c!652408 totalInput!335)))))

(assert (=> d!1101254 (= (size!30257 totalInput!335) lt!1303340)))

(declare-fun bs!576076 () Bool)

(assert (= bs!576076 d!1101254))

(assert (=> bs!576076 m!4262247))

(assert (=> bs!576076 m!4262247))

(declare-fun m!4263467 () Bool)

(assert (=> bs!576076 m!4263467))

(declare-fun m!4263469 () Bool)

(assert (=> bs!576076 m!4263469))

(assert (=> b!3766297 d!1101254))

(assert (=> b!3766164 d!1100980))

(declare-fun d!1101256 () Bool)

(declare-fun lt!1303343 () Bool)

(assert (=> d!1101256 (= lt!1303343 (isEmpty!23614 (list!14864 (_1!22754 lt!1303164))))))

(declare-fun isEmpty!23616 (Conc!12327) Bool)

(assert (=> d!1101256 (= lt!1303343 (isEmpty!23616 (c!652409 (_1!22754 lt!1303164))))))

(assert (=> d!1101256 (= (isEmpty!23610 (_1!22754 lt!1303164)) lt!1303343)))

(declare-fun bs!576078 () Bool)

(assert (= bs!576078 d!1101256))

(assert (=> bs!576078 m!4262505))

(assert (=> bs!576078 m!4262505))

(declare-fun m!4263483 () Bool)

(assert (=> bs!576078 m!4263483))

(declare-fun m!4263485 () Bool)

(assert (=> bs!576078 m!4263485))

(assert (=> b!3766299 d!1101256))

(declare-fun d!1101260 () Bool)

(declare-fun res!1525065 () Bool)

(declare-fun e!2329926 () Bool)

(assert (=> d!1101260 (=> (not res!1525065) (not e!2329926))))

(assert (=> d!1101260 (= res!1525065 (= (csize!24882 (c!652408 input!678)) (+ (size!30265 (left!31115 (c!652408 input!678))) (size!30265 (right!31445 (c!652408 input!678))))))))

(assert (=> d!1101260 (= (inv!53997 (c!652408 input!678)) e!2329926)))

(declare-fun b!3767143 () Bool)

(declare-fun res!1525066 () Bool)

(assert (=> b!3767143 (=> (not res!1525066) (not e!2329926))))

(assert (=> b!3767143 (= res!1525066 (and (not (= (left!31115 (c!652408 input!678)) Empty!12326)) (not (= (right!31445 (c!652408 input!678)) Empty!12326))))))

(declare-fun b!3767144 () Bool)

(declare-fun res!1525067 () Bool)

(assert (=> b!3767144 (=> (not res!1525067) (not e!2329926))))

(assert (=> b!3767144 (= res!1525067 (= (cheight!12537 (c!652408 input!678)) (+ (max!0 (height!1764 (left!31115 (c!652408 input!678))) (height!1764 (right!31445 (c!652408 input!678)))) 1)))))

(declare-fun b!3767145 () Bool)

(assert (=> b!3767145 (= e!2329926 (<= 0 (cheight!12537 (c!652408 input!678))))))

(assert (= (and d!1101260 res!1525065) b!3767143))

(assert (= (and b!3767143 res!1525066) b!3767144))

(assert (= (and b!3767144 res!1525067) b!3767145))

(declare-fun m!4263487 () Bool)

(assert (=> d!1101260 m!4263487))

(declare-fun m!4263489 () Bool)

(assert (=> d!1101260 m!4263489))

(declare-fun m!4263491 () Bool)

(assert (=> b!3767144 m!4263491))

(declare-fun m!4263493 () Bool)

(assert (=> b!3767144 m!4263493))

(assert (=> b!3767144 m!4263491))

(assert (=> b!3767144 m!4263493))

(declare-fun m!4263495 () Bool)

(assert (=> b!3767144 m!4263495))

(assert (=> b!3766338 d!1101260))

(declare-fun bs!576079 () Bool)

(declare-fun d!1101262 () Bool)

(assert (= bs!576079 (and d!1101262 d!1100998)))

(declare-fun lambda!125312 () Int)

(assert (=> bs!576079 (= lambda!125312 lambda!125299)))

(assert (=> d!1101262 true))

(declare-fun lt!1303346 () Bool)

(assert (=> d!1101262 (= lt!1303346 (rulesValidInductive!2162 thiss!11876 rules!1265))))

(assert (=> d!1101262 (= lt!1303346 (forall!8245 rules!1265 lambda!125312))))

(assert (=> d!1101262 (= (rulesValid!2378 thiss!11876 rules!1265) lt!1303346)))

(declare-fun bs!576080 () Bool)

(assert (= bs!576080 d!1101262))

(assert (=> bs!576080 m!4262277))

(declare-fun m!4263497 () Bool)

(assert (=> bs!576080 m!4263497))

(assert (=> d!1101018 d!1101262))

(declare-fun d!1101264 () Bool)

(declare-fun e!2329929 () Bool)

(assert (=> d!1101264 e!2329929))

(declare-fun res!1525070 () Bool)

(assert (=> d!1101264 (=> (not res!1525070) (not e!2329929))))

(declare-fun prepend!1314 (Conc!12327 Token!11490) Conc!12327)

(assert (=> d!1101264 (= res!1525070 (isBalanced!3545 (prepend!1314 (c!652409 (_1!22754 lt!1303163)) (_1!22758 (v!38739 lt!1303162)))))))

(declare-fun lt!1303349 () BalanceConc!24248)

(assert (=> d!1101264 (= lt!1303349 (BalanceConc!24249 (prepend!1314 (c!652409 (_1!22754 lt!1303163)) (_1!22758 (v!38739 lt!1303162)))))))

(assert (=> d!1101264 (= (prepend!1312 (_1!22754 lt!1303163) (_1!22758 (v!38739 lt!1303162))) lt!1303349)))

(declare-fun b!3767148 () Bool)

(assert (=> b!3767148 (= e!2329929 (= (list!14864 lt!1303349) (Cons!40204 (_1!22758 (v!38739 lt!1303162)) (list!14864 (_1!22754 lt!1303163)))))))

(assert (= (and d!1101264 res!1525070) b!3767148))

(declare-fun m!4263499 () Bool)

(assert (=> d!1101264 m!4263499))

(assert (=> d!1101264 m!4263499))

(declare-fun m!4263501 () Bool)

(assert (=> d!1101264 m!4263501))

(declare-fun m!4263503 () Bool)

(assert (=> b!3767148 m!4263503))

(declare-fun m!4263505 () Bool)

(assert (=> b!3767148 m!4263505))

(assert (=> b!3766301 d!1101264))

(declare-fun b!3767149 () Bool)

(declare-fun e!2329933 () Bool)

(declare-fun e!2329930 () Bool)

(assert (=> b!3767149 (= e!2329933 e!2329930)))

(declare-fun res!1525071 () Bool)

(declare-fun lt!1303352 () tuple2!39240)

(assert (=> b!3767149 (= res!1525071 (< (size!30257 (_2!22754 lt!1303352)) (size!30257 (_2!22758 (v!38739 lt!1303162)))))))

(assert (=> b!3767149 (=> (not res!1525071) (not e!2329930))))

(declare-fun b!3767150 () Bool)

(declare-fun e!2329931 () tuple2!39240)

(assert (=> b!3767150 (= e!2329931 (tuple2!39241 (BalanceConc!24249 Empty!12327) (_2!22758 (v!38739 lt!1303162))))))

(declare-fun b!3767151 () Bool)

(assert (=> b!3767151 (= e!2329930 (not (isEmpty!23610 (_1!22754 lt!1303352))))))

(declare-fun b!3767152 () Bool)

(declare-fun e!2329932 () Bool)

(assert (=> b!3767152 (= e!2329932 (= (list!14863 (_2!22754 lt!1303352)) (_2!22757 (lexList!1545 thiss!11876 rules!1265 (list!14863 (_2!22758 (v!38739 lt!1303162)))))))))

(declare-fun b!3767153 () Bool)

(declare-fun lt!1303351 () tuple2!39240)

(declare-fun lt!1303350 () Option!8576)

(assert (=> b!3767153 (= e!2329931 (tuple2!39241 (prepend!1312 (_1!22754 lt!1303351) (_1!22758 (v!38739 lt!1303350))) (_2!22754 lt!1303351)))))

(assert (=> b!3767153 (= lt!1303351 (lexRec!789 thiss!11876 rules!1265 (_2!22758 (v!38739 lt!1303350))))))

(declare-fun d!1101266 () Bool)

(assert (=> d!1101266 e!2329932))

(declare-fun res!1525073 () Bool)

(assert (=> d!1101266 (=> (not res!1525073) (not e!2329932))))

(assert (=> d!1101266 (= res!1525073 e!2329933)))

(declare-fun c!652611 () Bool)

(assert (=> d!1101266 (= c!652611 (> (size!30258 (_1!22754 lt!1303352)) 0))))

(assert (=> d!1101266 (= lt!1303352 e!2329931)))

(declare-fun c!652610 () Bool)

(assert (=> d!1101266 (= c!652610 ((_ is Some!8575) lt!1303350))))

(assert (=> d!1101266 (= lt!1303350 (maxPrefixZipperSequence!1179 thiss!11876 rules!1265 (_2!22758 (v!38739 lt!1303162))))))

(assert (=> d!1101266 (= (lexRec!789 thiss!11876 rules!1265 (_2!22758 (v!38739 lt!1303162))) lt!1303352)))

(declare-fun b!3767154 () Bool)

(declare-fun res!1525072 () Bool)

(assert (=> b!3767154 (=> (not res!1525072) (not e!2329932))))

(assert (=> b!3767154 (= res!1525072 (= (list!14864 (_1!22754 lt!1303352)) (_1!22757 (lexList!1545 thiss!11876 rules!1265 (list!14863 (_2!22758 (v!38739 lt!1303162)))))))))

(declare-fun b!3767155 () Bool)

(assert (=> b!3767155 (= e!2329933 (= (list!14863 (_2!22754 lt!1303352)) (list!14863 (_2!22758 (v!38739 lt!1303162)))))))

(assert (= (and d!1101266 c!652610) b!3767153))

(assert (= (and d!1101266 (not c!652610)) b!3767150))

(assert (= (and d!1101266 c!652611) b!3767149))

(assert (= (and d!1101266 (not c!652611)) b!3767155))

(assert (= (and b!3767149 res!1525071) b!3767151))

(assert (= (and d!1101266 res!1525073) b!3767154))

(assert (= (and b!3767154 res!1525072) b!3767152))

(declare-fun m!4263507 () Bool)

(assert (=> d!1101266 m!4263507))

(declare-fun m!4263509 () Bool)

(assert (=> d!1101266 m!4263509))

(declare-fun m!4263511 () Bool)

(assert (=> b!3767154 m!4263511))

(declare-fun m!4263513 () Bool)

(assert (=> b!3767154 m!4263513))

(assert (=> b!3767154 m!4263513))

(declare-fun m!4263515 () Bool)

(assert (=> b!3767154 m!4263515))

(declare-fun m!4263517 () Bool)

(assert (=> b!3767155 m!4263517))

(assert (=> b!3767155 m!4263513))

(declare-fun m!4263519 () Bool)

(assert (=> b!3767151 m!4263519))

(declare-fun m!4263521 () Bool)

(assert (=> b!3767149 m!4263521))

(declare-fun m!4263523 () Bool)

(assert (=> b!3767149 m!4263523))

(declare-fun m!4263525 () Bool)

(assert (=> b!3767153 m!4263525))

(declare-fun m!4263527 () Bool)

(assert (=> b!3767153 m!4263527))

(assert (=> b!3767152 m!4263517))

(assert (=> b!3767152 m!4263513))

(assert (=> b!3767152 m!4263513))

(assert (=> b!3767152 m!4263515))

(assert (=> b!3766301 d!1101266))

(declare-fun d!1101268 () Bool)

(declare-fun res!1525078 () Bool)

(declare-fun e!2329936 () Bool)

(assert (=> d!1101268 (=> (not res!1525078) (not e!2329936))))

(assert (=> d!1101268 (= res!1525078 (<= (size!30259 (list!14872 (xs!15536 (c!652408 input!678)))) 512))))

(assert (=> d!1101268 (= (inv!53998 (c!652408 input!678)) e!2329936)))

(declare-fun b!3767160 () Bool)

(declare-fun res!1525079 () Bool)

(assert (=> b!3767160 (=> (not res!1525079) (not e!2329936))))

(assert (=> b!3767160 (= res!1525079 (= (csize!24883 (c!652408 input!678)) (size!30259 (list!14872 (xs!15536 (c!652408 input!678))))))))

(declare-fun b!3767161 () Bool)

(assert (=> b!3767161 (= e!2329936 (and (> (csize!24883 (c!652408 input!678)) 0) (<= (csize!24883 (c!652408 input!678)) 512)))))

(assert (= (and d!1101268 res!1525078) b!3767160))

(assert (= (and b!3767160 res!1525079) b!3767161))

(declare-fun m!4263529 () Bool)

(assert (=> d!1101268 m!4263529))

(assert (=> d!1101268 m!4263529))

(declare-fun m!4263531 () Bool)

(assert (=> d!1101268 m!4263531))

(assert (=> b!3767160 m!4263529))

(assert (=> b!3767160 m!4263529))

(assert (=> b!3767160 m!4263531))

(assert (=> b!3766340 d!1101268))

(declare-fun b!3767174 () Bool)

(declare-fun res!1525092 () Bool)

(declare-fun e!2329942 () Bool)

(assert (=> b!3767174 (=> (not res!1525092) (not e!2329942))))

(assert (=> b!3767174 (= res!1525092 (isBalanced!3545 (left!31116 (c!652409 acc!335))))))

(declare-fun b!3767175 () Bool)

(declare-fun res!1525096 () Bool)

(assert (=> b!3767175 (=> (not res!1525096) (not e!2329942))))

(assert (=> b!3767175 (= res!1525096 (not (isEmpty!23616 (left!31116 (c!652409 acc!335)))))))

(declare-fun b!3767176 () Bool)

(declare-fun e!2329941 () Bool)

(assert (=> b!3767176 (= e!2329941 e!2329942)))

(declare-fun res!1525094 () Bool)

(assert (=> b!3767176 (=> (not res!1525094) (not e!2329942))))

(assert (=> b!3767176 (= res!1525094 (<= (- 1) (- (height!1762 (left!31116 (c!652409 acc!335))) (height!1762 (right!31446 (c!652409 acc!335))))))))

(declare-fun b!3767177 () Bool)

(assert (=> b!3767177 (= e!2329942 (not (isEmpty!23616 (right!31446 (c!652409 acc!335)))))))

(declare-fun b!3767178 () Bool)

(declare-fun res!1525093 () Bool)

(assert (=> b!3767178 (=> (not res!1525093) (not e!2329942))))

(assert (=> b!3767178 (= res!1525093 (isBalanced!3545 (right!31446 (c!652409 acc!335))))))

(declare-fun b!3767179 () Bool)

(declare-fun res!1525095 () Bool)

(assert (=> b!3767179 (=> (not res!1525095) (not e!2329942))))

(assert (=> b!3767179 (= res!1525095 (<= (- (height!1762 (left!31116 (c!652409 acc!335))) (height!1762 (right!31446 (c!652409 acc!335)))) 1))))

(declare-fun d!1101270 () Bool)

(declare-fun res!1525097 () Bool)

(assert (=> d!1101270 (=> res!1525097 e!2329941)))

(assert (=> d!1101270 (= res!1525097 (not ((_ is Node!12327) (c!652409 acc!335))))))

(assert (=> d!1101270 (= (isBalanced!3545 (c!652409 acc!335)) e!2329941)))

(assert (= (and d!1101270 (not res!1525097)) b!3767176))

(assert (= (and b!3767176 res!1525094) b!3767179))

(assert (= (and b!3767179 res!1525095) b!3767174))

(assert (= (and b!3767174 res!1525092) b!3767178))

(assert (= (and b!3767178 res!1525093) b!3767175))

(assert (= (and b!3767175 res!1525096) b!3767177))

(declare-fun m!4263533 () Bool)

(assert (=> b!3767175 m!4263533))

(declare-fun m!4263535 () Bool)

(assert (=> b!3767174 m!4263535))

(declare-fun m!4263537 () Bool)

(assert (=> b!3767179 m!4263537))

(declare-fun m!4263539 () Bool)

(assert (=> b!3767179 m!4263539))

(assert (=> b!3767176 m!4263537))

(assert (=> b!3767176 m!4263539))

(declare-fun m!4263541 () Bool)

(assert (=> b!3767178 m!4263541))

(declare-fun m!4263543 () Bool)

(assert (=> b!3767177 m!4263543))

(assert (=> d!1100984 d!1101270))

(assert (=> b!3766168 d!1101012))

(declare-fun d!1101272 () Bool)

(assert (=> d!1101272 (= (list!14863 (_2!22754 lt!1303164)) (list!14868 (c!652408 (_2!22754 lt!1303164))))))

(declare-fun bs!576081 () Bool)

(assert (= bs!576081 d!1101272))

(declare-fun m!4263545 () Bool)

(assert (=> bs!576081 m!4263545))

(assert (=> b!3766303 d!1101272))

(assert (=> b!3766303 d!1100964))

(declare-fun d!1101274 () Bool)

(assert (=> d!1101274 (= (list!14863 (_2!22754 lt!1303170)) (list!14868 (c!652408 (_2!22754 lt!1303170))))))

(declare-fun bs!576082 () Bool)

(assert (= bs!576082 d!1101274))

(declare-fun m!4263547 () Bool)

(assert (=> bs!576082 m!4263547))

(assert (=> b!3766319 d!1101274))

(declare-fun b!3767180 () Bool)

(declare-fun e!2329943 () Bool)

(declare-fun lt!1303355 () tuple2!39246)

(assert (=> b!3767180 (= e!2329943 (not (isEmpty!23614 (_1!22757 lt!1303355))))))

(declare-fun d!1101276 () Bool)

(declare-fun e!2329945 () Bool)

(assert (=> d!1101276 e!2329945))

(declare-fun c!652612 () Bool)

(assert (=> d!1101276 (= c!652612 (> (size!30262 (_1!22757 lt!1303355)) 0))))

(declare-fun e!2329944 () tuple2!39246)

(assert (=> d!1101276 (= lt!1303355 e!2329944)))

(declare-fun c!652613 () Bool)

(declare-fun lt!1303354 () Option!8578)

(assert (=> d!1101276 (= c!652613 ((_ is Some!8577) lt!1303354))))

(assert (=> d!1101276 (= lt!1303354 (maxPrefix!3097 thiss!11876 rules!1265 (list!14863 input!678)))))

(assert (=> d!1101276 (= (lexList!1545 thiss!11876 rules!1265 (list!14863 input!678)) lt!1303355)))

(declare-fun b!3767181 () Bool)

(assert (=> b!3767181 (= e!2329945 e!2329943)))

(declare-fun res!1525098 () Bool)

(assert (=> b!3767181 (= res!1525098 (< (size!30259 (_2!22757 lt!1303355)) (size!30259 (list!14863 input!678))))))

(assert (=> b!3767181 (=> (not res!1525098) (not e!2329943))))

(declare-fun b!3767182 () Bool)

(declare-fun lt!1303353 () tuple2!39246)

(assert (=> b!3767182 (= e!2329944 (tuple2!39247 (Cons!40204 (_1!22760 (v!38743 lt!1303354)) (_1!22757 lt!1303353)) (_2!22757 lt!1303353)))))

(assert (=> b!3767182 (= lt!1303353 (lexList!1545 thiss!11876 rules!1265 (_2!22760 (v!38743 lt!1303354))))))

(declare-fun b!3767183 () Bool)

(assert (=> b!3767183 (= e!2329945 (= (_2!22757 lt!1303355) (list!14863 input!678)))))

(declare-fun b!3767184 () Bool)

(assert (=> b!3767184 (= e!2329944 (tuple2!39247 Nil!40204 (list!14863 input!678)))))

(assert (= (and d!1101276 c!652613) b!3767182))

(assert (= (and d!1101276 (not c!652613)) b!3767184))

(assert (= (and d!1101276 c!652612) b!3767181))

(assert (= (and d!1101276 (not c!652612)) b!3767183))

(assert (= (and b!3767181 res!1525098) b!3767180))

(declare-fun m!4263549 () Bool)

(assert (=> b!3767180 m!4263549))

(declare-fun m!4263551 () Bool)

(assert (=> d!1101276 m!4263551))

(assert (=> d!1101276 m!4262249))

(declare-fun m!4263553 () Bool)

(assert (=> d!1101276 m!4263553))

(declare-fun m!4263555 () Bool)

(assert (=> b!3767181 m!4263555))

(assert (=> b!3767181 m!4262249))

(declare-fun m!4263557 () Bool)

(assert (=> b!3767181 m!4263557))

(declare-fun m!4263559 () Bool)

(assert (=> b!3767182 m!4263559))

(assert (=> b!3766319 d!1101276))

(assert (=> b!3766319 d!1100966))

(declare-fun b!3767203 () Bool)

(declare-fun e!2329956 () Int)

(declare-fun e!2329958 () Int)

(assert (=> b!3767203 (= e!2329956 e!2329958)))

(declare-fun c!652622 () Bool)

(declare-fun call!275617 () Int)

(assert (=> b!3767203 (= c!652622 (>= (- (size!30259 lt!1303119) (size!30259 lt!1303117)) call!275617))))

(declare-fun bm!275612 () Bool)

(assert (=> bm!275612 (= call!275617 (size!30259 lt!1303119))))

(declare-fun b!3767204 () Bool)

(declare-fun e!2329957 () List!40327)

(assert (=> b!3767204 (= e!2329957 Nil!40203)))

(declare-fun b!3767205 () Bool)

(declare-fun e!2329959 () List!40327)

(assert (=> b!3767205 (= e!2329959 (drop!2107 (t!304354 lt!1303119) (- (- (size!30259 lt!1303119) (size!30259 lt!1303117)) 1)))))

(declare-fun b!3767206 () Bool)

(assert (=> b!3767206 (= e!2329958 (- call!275617 (- (size!30259 lt!1303119) (size!30259 lt!1303117))))))

(declare-fun b!3767207 () Bool)

(assert (=> b!3767207 (= e!2329956 call!275617)))

(declare-fun b!3767208 () Bool)

(assert (=> b!3767208 (= e!2329959 lt!1303119)))

(declare-fun d!1101278 () Bool)

(declare-fun e!2329960 () Bool)

(assert (=> d!1101278 e!2329960))

(declare-fun res!1525101 () Bool)

(assert (=> d!1101278 (=> (not res!1525101) (not e!2329960))))

(declare-fun lt!1303358 () List!40327)

(assert (=> d!1101278 (= res!1525101 (= ((_ map implies) (content!5906 lt!1303358) (content!5906 lt!1303119)) ((as const (InoxSet C!22348)) true)))))

(assert (=> d!1101278 (= lt!1303358 e!2329957)))

(declare-fun c!652625 () Bool)

(assert (=> d!1101278 (= c!652625 ((_ is Nil!40203) lt!1303119))))

(assert (=> d!1101278 (= (drop!2107 lt!1303119 (- (size!30259 lt!1303119) (size!30259 lt!1303117))) lt!1303358)))

(declare-fun b!3767209 () Bool)

(assert (=> b!3767209 (= e!2329960 (= (size!30259 lt!1303358) e!2329956))))

(declare-fun c!652623 () Bool)

(assert (=> b!3767209 (= c!652623 (<= (- (size!30259 lt!1303119) (size!30259 lt!1303117)) 0))))

(declare-fun b!3767210 () Bool)

(assert (=> b!3767210 (= e!2329957 e!2329959)))

(declare-fun c!652624 () Bool)

(assert (=> b!3767210 (= c!652624 (<= (- (size!30259 lt!1303119) (size!30259 lt!1303117)) 0))))

(declare-fun b!3767211 () Bool)

(assert (=> b!3767211 (= e!2329958 0)))

(assert (= (and d!1101278 c!652625) b!3767204))

(assert (= (and d!1101278 (not c!652625)) b!3767210))

(assert (= (and b!3767210 c!652624) b!3767208))

(assert (= (and b!3767210 (not c!652624)) b!3767205))

(assert (= (and d!1101278 res!1525101) b!3767209))

(assert (= (and b!3767209 c!652623) b!3767207))

(assert (= (and b!3767209 (not c!652623)) b!3767203))

(assert (= (and b!3767203 c!652622) b!3767211))

(assert (= (and b!3767203 (not c!652622)) b!3767206))

(assert (= (or b!3767207 b!3767203 b!3767206) bm!275612))

(assert (=> bm!275612 m!4262633))

(declare-fun m!4263561 () Bool)

(assert (=> b!3767205 m!4263561))

(declare-fun m!4263563 () Bool)

(assert (=> d!1101278 m!4263563))

(declare-fun m!4263565 () Bool)

(assert (=> d!1101278 m!4263565))

(declare-fun m!4263567 () Bool)

(assert (=> b!3767209 m!4263567))

(assert (=> d!1101004 d!1101278))

(declare-fun d!1101280 () Bool)

(declare-fun lt!1303359 () Int)

(assert (=> d!1101280 (>= lt!1303359 0)))

(declare-fun e!2329961 () Int)

(assert (=> d!1101280 (= lt!1303359 e!2329961)))

(declare-fun c!652626 () Bool)

(assert (=> d!1101280 (= c!652626 ((_ is Nil!40203) lt!1303119))))

(assert (=> d!1101280 (= (size!30259 lt!1303119) lt!1303359)))

(declare-fun b!3767212 () Bool)

(assert (=> b!3767212 (= e!2329961 0)))

(declare-fun b!3767213 () Bool)

(assert (=> b!3767213 (= e!2329961 (+ 1 (size!30259 (t!304354 lt!1303119))))))

(assert (= (and d!1101280 c!652626) b!3767212))

(assert (= (and d!1101280 (not c!652626)) b!3767213))

(declare-fun m!4263569 () Bool)

(assert (=> b!3767213 m!4263569))

(assert (=> d!1101004 d!1101280))

(assert (=> d!1101004 d!1101244))

(declare-fun d!1101282 () Bool)

(assert (=> d!1101282 (= (inv!53999 (xs!15536 (c!652408 treated!13))) (<= (size!30259 (innerList!12386 (xs!15536 (c!652408 treated!13)))) 2147483647))))

(declare-fun bs!576083 () Bool)

(assert (= bs!576083 d!1101282))

(declare-fun m!4263571 () Bool)

(assert (=> bs!576083 m!4263571))

(assert (=> b!3766471 d!1101282))

(declare-fun d!1101284 () Bool)

(declare-fun c!652629 () Bool)

(assert (=> d!1101284 (= c!652629 ((_ is Nil!40203) lt!1303161))))

(declare-fun e!2329964 () (InoxSet C!22348))

(assert (=> d!1101284 (= (content!5906 lt!1303161) e!2329964)))

(declare-fun b!3767218 () Bool)

(assert (=> b!3767218 (= e!2329964 ((as const (Array C!22348 Bool)) false))))

(declare-fun b!3767219 () Bool)

(assert (=> b!3767219 (= e!2329964 ((_ map or) (store ((as const (Array C!22348 Bool)) false) (h!45623 lt!1303161) true) (content!5906 (t!304354 lt!1303161))))))

(assert (= (and d!1101284 c!652629) b!3767218))

(assert (= (and d!1101284 (not c!652629)) b!3767219))

(declare-fun m!4263573 () Bool)

(assert (=> b!3767219 m!4263573))

(declare-fun m!4263575 () Bool)

(assert (=> b!3767219 m!4263575))

(assert (=> d!1100962 d!1101284))

(declare-fun d!1101286 () Bool)

(declare-fun c!652630 () Bool)

(assert (=> d!1101286 (= c!652630 ((_ is Nil!40203) lt!1303118))))

(declare-fun e!2329965 () (InoxSet C!22348))

(assert (=> d!1101286 (= (content!5906 lt!1303118) e!2329965)))

(declare-fun b!3767220 () Bool)

(assert (=> b!3767220 (= e!2329965 ((as const (Array C!22348 Bool)) false))))

(declare-fun b!3767221 () Bool)

(assert (=> b!3767221 (= e!2329965 ((_ map or) (store ((as const (Array C!22348 Bool)) false) (h!45623 lt!1303118) true) (content!5906 (t!304354 lt!1303118))))))

(assert (= (and d!1101286 c!652630) b!3767220))

(assert (= (and d!1101286 (not c!652630)) b!3767221))

(declare-fun m!4263577 () Bool)

(assert (=> b!3767221 m!4263577))

(declare-fun m!4263579 () Bool)

(assert (=> b!3767221 m!4263579))

(assert (=> d!1100962 d!1101286))

(declare-fun d!1101288 () Bool)

(declare-fun c!652631 () Bool)

(assert (=> d!1101288 (= c!652631 ((_ is Nil!40203) lt!1303117))))

(declare-fun e!2329966 () (InoxSet C!22348))

(assert (=> d!1101288 (= (content!5906 lt!1303117) e!2329966)))

(declare-fun b!3767222 () Bool)

(assert (=> b!3767222 (= e!2329966 ((as const (Array C!22348 Bool)) false))))

(declare-fun b!3767223 () Bool)

(assert (=> b!3767223 (= e!2329966 ((_ map or) (store ((as const (Array C!22348 Bool)) false) (h!45623 lt!1303117) true) (content!5906 (t!304354 lt!1303117))))))

(assert (= (and d!1101288 c!652631) b!3767222))

(assert (= (and d!1101288 (not c!652631)) b!3767223))

(declare-fun m!4263581 () Bool)

(assert (=> b!3767223 m!4263581))

(declare-fun m!4263583 () Bool)

(assert (=> b!3767223 m!4263583))

(assert (=> d!1100962 d!1101288))

(declare-fun d!1101290 () Bool)

(declare-fun lt!1303360 () Int)

(assert (=> d!1101290 (= lt!1303360 (size!30262 (list!14864 (_1!22754 lt!1303164))))))

(assert (=> d!1101290 (= lt!1303360 (size!30263 (c!652409 (_1!22754 lt!1303164))))))

(assert (=> d!1101290 (= (size!30258 (_1!22754 lt!1303164)) lt!1303360)))

(declare-fun bs!576084 () Bool)

(assert (= bs!576084 d!1101290))

(assert (=> bs!576084 m!4262505))

(assert (=> bs!576084 m!4262505))

(declare-fun m!4263585 () Bool)

(assert (=> bs!576084 m!4263585))

(declare-fun m!4263587 () Bool)

(assert (=> bs!576084 m!4263587))

(assert (=> d!1100970 d!1101290))

(declare-fun b!3767224 () Bool)

(declare-fun lt!1303361 () Option!8576)

(declare-fun e!2329970 () Bool)

(assert (=> b!3767224 (= e!2329970 (= (list!14863 (_2!22758 (get!13330 lt!1303361))) (_2!22760 (get!13331 (maxPrefixZipper!528 thiss!11876 rules!1265 (list!14863 totalInput!335))))))))

(declare-fun d!1101292 () Bool)

(declare-fun e!2329967 () Bool)

(assert (=> d!1101292 e!2329967))

(declare-fun res!1525105 () Bool)

(assert (=> d!1101292 (=> (not res!1525105) (not e!2329967))))

(assert (=> d!1101292 (= res!1525105 (= (isDefined!6752 lt!1303361) (isDefined!6753 (maxPrefixZipper!528 thiss!11876 rules!1265 (list!14863 totalInput!335)))))))

(declare-fun e!2329969 () Option!8576)

(assert (=> d!1101292 (= lt!1303361 e!2329969)))

(declare-fun c!652632 () Bool)

(assert (=> d!1101292 (= c!652632 (and ((_ is Cons!40205) rules!1265) ((_ is Nil!40205) (t!304356 rules!1265))))))

(declare-fun lt!1303367 () Unit!57916)

(declare-fun lt!1303363 () Unit!57916)

(assert (=> d!1101292 (= lt!1303367 lt!1303363)))

(declare-fun lt!1303364 () List!40327)

(declare-fun lt!1303362 () List!40327)

(assert (=> d!1101292 (isPrefix!3304 lt!1303364 lt!1303362)))

(assert (=> d!1101292 (= lt!1303363 (lemmaIsPrefixRefl!2089 lt!1303364 lt!1303362))))

(assert (=> d!1101292 (= lt!1303362 (list!14863 totalInput!335))))

(assert (=> d!1101292 (= lt!1303364 (list!14863 totalInput!335))))

(assert (=> d!1101292 (rulesValidInductive!2162 thiss!11876 rules!1265)))

(assert (=> d!1101292 (= (maxPrefixZipperSequence!1179 thiss!11876 rules!1265 totalInput!335) lt!1303361)))

(declare-fun b!3767225 () Bool)

(declare-fun lt!1303366 () Option!8576)

(declare-fun lt!1303365 () Option!8576)

(assert (=> b!3767225 (= e!2329969 (ite (and ((_ is None!8575) lt!1303366) ((_ is None!8575) lt!1303365)) None!8575 (ite ((_ is None!8575) lt!1303365) lt!1303366 (ite ((_ is None!8575) lt!1303366) lt!1303365 (ite (>= (size!30253 (_1!22758 (v!38739 lt!1303366))) (size!30253 (_1!22758 (v!38739 lt!1303365)))) lt!1303366 lt!1303365)))))))

(declare-fun call!275618 () Option!8576)

(assert (=> b!3767225 (= lt!1303366 call!275618)))

(assert (=> b!3767225 (= lt!1303365 (maxPrefixZipperSequence!1179 thiss!11876 (t!304356 rules!1265) totalInput!335))))

(declare-fun bm!275613 () Bool)

(assert (=> bm!275613 (= call!275618 (maxPrefixOneRuleZipperSequence!543 thiss!11876 (h!45625 rules!1265) totalInput!335))))

(declare-fun b!3767226 () Bool)

(declare-fun e!2329971 () Bool)

(assert (=> b!3767226 (= e!2329967 e!2329971)))

(declare-fun res!1525106 () Bool)

(assert (=> b!3767226 (=> res!1525106 e!2329971)))

(assert (=> b!3767226 (= res!1525106 (not (isDefined!6752 lt!1303361)))))

(declare-fun b!3767227 () Bool)

(declare-fun e!2329972 () Bool)

(assert (=> b!3767227 (= e!2329971 e!2329972)))

(declare-fun res!1525107 () Bool)

(assert (=> b!3767227 (=> (not res!1525107) (not e!2329972))))

(assert (=> b!3767227 (= res!1525107 (= (_1!22758 (get!13330 lt!1303361)) (_1!22760 (get!13331 (maxPrefix!3097 thiss!11876 rules!1265 (list!14863 totalInput!335))))))))

(declare-fun b!3767228 () Bool)

(declare-fun res!1525104 () Bool)

(assert (=> b!3767228 (=> (not res!1525104) (not e!2329967))))

(declare-fun e!2329968 () Bool)

(assert (=> b!3767228 (= res!1525104 e!2329968)))

(declare-fun res!1525102 () Bool)

(assert (=> b!3767228 (=> res!1525102 e!2329968)))

(assert (=> b!3767228 (= res!1525102 (not (isDefined!6752 lt!1303361)))))

(declare-fun b!3767229 () Bool)

(assert (=> b!3767229 (= e!2329969 call!275618)))

(declare-fun b!3767230 () Bool)

(assert (=> b!3767230 (= e!2329968 e!2329970)))

(declare-fun res!1525103 () Bool)

(assert (=> b!3767230 (=> (not res!1525103) (not e!2329970))))

(assert (=> b!3767230 (= res!1525103 (= (_1!22758 (get!13330 lt!1303361)) (_1!22760 (get!13331 (maxPrefixZipper!528 thiss!11876 rules!1265 (list!14863 totalInput!335))))))))

(declare-fun b!3767231 () Bool)

(assert (=> b!3767231 (= e!2329972 (= (list!14863 (_2!22758 (get!13330 lt!1303361))) (_2!22760 (get!13331 (maxPrefix!3097 thiss!11876 rules!1265 (list!14863 totalInput!335))))))))

(assert (= (and d!1101292 c!652632) b!3767229))

(assert (= (and d!1101292 (not c!652632)) b!3767225))

(assert (= (or b!3767229 b!3767225) bm!275613))

(assert (= (and d!1101292 res!1525105) b!3767228))

(assert (= (and b!3767228 (not res!1525102)) b!3767230))

(assert (= (and b!3767230 res!1525103) b!3767224))

(assert (= (and b!3767228 res!1525104) b!3767226))

(assert (= (and b!3767226 (not res!1525106)) b!3767227))

(assert (= (and b!3767227 res!1525107) b!3767231))

(assert (=> d!1101292 m!4262277))

(declare-fun m!4263589 () Bool)

(assert (=> d!1101292 m!4263589))

(assert (=> d!1101292 m!4262247))

(declare-fun m!4263591 () Bool)

(assert (=> d!1101292 m!4263591))

(declare-fun m!4263593 () Bool)

(assert (=> d!1101292 m!4263593))

(declare-fun m!4263595 () Bool)

(assert (=> d!1101292 m!4263595))

(assert (=> d!1101292 m!4262247))

(assert (=> d!1101292 m!4263591))

(declare-fun m!4263597 () Bool)

(assert (=> d!1101292 m!4263597))

(declare-fun m!4263599 () Bool)

(assert (=> b!3767224 m!4263599))

(assert (=> b!3767224 m!4262247))

(declare-fun m!4263601 () Bool)

(assert (=> b!3767224 m!4263601))

(assert (=> b!3767224 m!4262247))

(assert (=> b!3767224 m!4263591))

(assert (=> b!3767224 m!4263591))

(declare-fun m!4263603 () Bool)

(assert (=> b!3767224 m!4263603))

(declare-fun m!4263605 () Bool)

(assert (=> bm!275613 m!4263605))

(assert (=> b!3767228 m!4263595))

(assert (=> b!3767231 m!4263599))

(declare-fun m!4263607 () Bool)

(assert (=> b!3767231 m!4263607))

(declare-fun m!4263609 () Bool)

(assert (=> b!3767231 m!4263609))

(assert (=> b!3767231 m!4262247))

(assert (=> b!3767231 m!4263601))

(assert (=> b!3767231 m!4262247))

(assert (=> b!3767231 m!4263607))

(assert (=> b!3767226 m!4263595))

(assert (=> b!3767227 m!4263601))

(assert (=> b!3767227 m!4262247))

(assert (=> b!3767227 m!4262247))

(assert (=> b!3767227 m!4263607))

(assert (=> b!3767227 m!4263607))

(assert (=> b!3767227 m!4263609))

(assert (=> b!3767230 m!4263601))

(assert (=> b!3767230 m!4262247))

(assert (=> b!3767230 m!4262247))

(assert (=> b!3767230 m!4263591))

(assert (=> b!3767230 m!4263591))

(assert (=> b!3767230 m!4263603))

(declare-fun m!4263611 () Bool)

(assert (=> b!3767225 m!4263611))

(assert (=> d!1100970 d!1101292))

(declare-fun d!1101294 () Bool)

(assert (=> d!1101294 (= (list!14864 (_1!22754 lt!1303170)) (list!14867 (c!652409 (_1!22754 lt!1303170))))))

(declare-fun bs!576085 () Bool)

(assert (= bs!576085 d!1101294))

(declare-fun m!4263613 () Bool)

(assert (=> bs!576085 m!4263613))

(assert (=> b!3766321 d!1101294))

(assert (=> b!3766321 d!1101276))

(assert (=> b!3766321 d!1100966))

(declare-fun bs!576086 () Bool)

(declare-fun d!1101296 () Bool)

(assert (= bs!576086 (and d!1101296 d!1100998)))

(declare-fun lambda!125313 () Int)

(assert (=> bs!576086 (= lambda!125313 lambda!125299)))

(declare-fun bs!576087 () Bool)

(assert (= bs!576087 (and d!1101296 d!1101262)))

(assert (=> bs!576087 (= lambda!125313 lambda!125312)))

(assert (=> d!1101296 true))

(declare-fun lt!1303368 () Bool)

(assert (=> d!1101296 (= lt!1303368 (forall!8245 (t!304356 rules!1265) lambda!125313))))

(declare-fun e!2329973 () Bool)

(assert (=> d!1101296 (= lt!1303368 e!2329973)))

(declare-fun res!1525109 () Bool)

(assert (=> d!1101296 (=> res!1525109 e!2329973)))

(assert (=> d!1101296 (= res!1525109 (not ((_ is Cons!40205) (t!304356 rules!1265))))))

(assert (=> d!1101296 (= (rulesValidInductive!2162 thiss!11876 (t!304356 rules!1265)) lt!1303368)))

(declare-fun b!3767232 () Bool)

(declare-fun e!2329974 () Bool)

(assert (=> b!3767232 (= e!2329973 e!2329974)))

(declare-fun res!1525108 () Bool)

(assert (=> b!3767232 (=> (not res!1525108) (not e!2329974))))

(assert (=> b!3767232 (= res!1525108 (ruleValid!2168 thiss!11876 (h!45625 (t!304356 rules!1265))))))

(declare-fun b!3767233 () Bool)

(assert (=> b!3767233 (= e!2329974 (rulesValidInductive!2162 thiss!11876 (t!304356 (t!304356 rules!1265))))))

(assert (= (and d!1101296 (not res!1525109)) b!3767232))

(assert (= (and b!3767232 res!1525108) b!3767233))

(declare-fun m!4263615 () Bool)

(assert (=> d!1101296 m!4263615))

(declare-fun m!4263617 () Bool)

(assert (=> b!3767232 m!4263617))

(declare-fun m!4263619 () Bool)

(assert (=> b!3767233 m!4263619))

(assert (=> b!3766418 d!1101296))

(declare-fun d!1101298 () Bool)

(assert (=> d!1101298 (= (height!1762 (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112)))) (ite ((_ is Empty!12327) (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112)))) 0 (ite ((_ is Leaf!19113) (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112)))) 1 (cheight!12538 (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112)))))))))

(assert (=> b!3766313 d!1101298))

(declare-fun d!1101300 () Bool)

(assert (=> d!1101300 (= (height!1762 (c!652409 (_1!22754 lt!1303112))) (ite ((_ is Empty!12327) (c!652409 (_1!22754 lt!1303112))) 0 (ite ((_ is Leaf!19113) (c!652409 (_1!22754 lt!1303112))) 1 (cheight!12538 (c!652409 (_1!22754 lt!1303112))))))))

(assert (=> b!3766313 d!1101300))

(declare-fun d!1101302 () Bool)

(assert (=> d!1101302 (= (max!0 (height!1762 (c!652409 acc!335)) (height!1762 (c!652409 (_1!22754 lt!1303112)))) (ite (< (height!1762 (c!652409 acc!335)) (height!1762 (c!652409 (_1!22754 lt!1303112)))) (height!1762 (c!652409 (_1!22754 lt!1303112))) (height!1762 (c!652409 acc!335))))))

(assert (=> b!3766313 d!1101302))

(declare-fun d!1101304 () Bool)

(assert (=> d!1101304 (= (height!1762 (c!652409 acc!335)) (ite ((_ is Empty!12327) (c!652409 acc!335)) 0 (ite ((_ is Leaf!19113) (c!652409 acc!335)) 1 (cheight!12538 (c!652409 acc!335)))))))

(assert (=> b!3766313 d!1101304))

(declare-fun bm!275646 () Bool)

(declare-fun call!275665 () Conc!12327)

(declare-fun call!275653 () Conc!12327)

(assert (=> bm!275646 (= call!275665 call!275653)))

(declare-fun bm!275647 () Bool)

(declare-fun call!275654 () Conc!12327)

(declare-fun call!275655 () Conc!12327)

(assert (=> bm!275647 (= call!275654 call!275655)))

(declare-fun bm!275648 () Bool)

(declare-fun c!652656 () Bool)

(declare-fun call!275652 () Int)

(assert (=> bm!275648 (= call!275652 (height!1762 (ite c!652656 (left!31116 (c!652409 acc!335)) (c!652409 (_1!22754 lt!1303112)))))))

(declare-fun bm!275649 () Bool)

(declare-fun call!275663 () Conc!12327)

(assert (=> bm!275649 (= call!275663 call!275653)))

(declare-fun b!3767276 () Bool)

(declare-fun e!2330003 () Bool)

(assert (=> b!3767276 (= e!2330003 (isBalanced!3545 (c!652409 (_1!22754 lt!1303112))))))

(declare-fun bm!275650 () Bool)

(declare-fun call!275656 () Conc!12327)

(assert (=> bm!275650 (= call!275656 call!275655)))

(declare-fun b!3767277 () Bool)

(declare-fun e!2330004 () Conc!12327)

(assert (=> b!3767277 (= e!2330004 call!275654)))

(declare-fun b!3767278 () Bool)

(declare-fun c!652651 () Bool)

(declare-fun call!275661 () Int)

(declare-fun call!275660 () Int)

(assert (=> b!3767278 (= c!652651 (>= call!275661 call!275660))))

(declare-fun e!2330002 () Conc!12327)

(declare-fun e!2329995 () Conc!12327)

(assert (=> b!3767278 (= e!2330002 e!2329995)))

(declare-fun b!3767279 () Bool)

(declare-fun e!2330001 () Conc!12327)

(assert (=> b!3767279 (= e!2330001 (c!652409 acc!335))))

(declare-fun b!3767280 () Bool)

(declare-fun e!2330000 () Conc!12327)

(assert (=> b!3767280 (= e!2330000 call!275656)))

(declare-fun b!3767281 () Bool)

(declare-fun res!1525122 () Bool)

(declare-fun e!2329997 () Bool)

(assert (=> b!3767281 (=> (not res!1525122) (not e!2329997))))

(declare-fun lt!1303377 () Conc!12327)

(assert (=> b!3767281 (= res!1525122 (>= (height!1762 lt!1303377) (max!0 (height!1762 (c!652409 acc!335)) (height!1762 (c!652409 (_1!22754 lt!1303112))))))))

(declare-fun bm!275651 () Bool)

(declare-fun call!275662 () Conc!12327)

(declare-fun call!275658 () Conc!12327)

(assert (=> bm!275651 (= call!275662 call!275658)))

(declare-fun d!1101306 () Bool)

(assert (=> d!1101306 e!2329997))

(declare-fun res!1525121 () Bool)

(assert (=> d!1101306 (=> (not res!1525121) (not e!2329997))))

(assert (=> d!1101306 (= res!1525121 (appendAssocInst!831 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112))))))

(declare-fun e!2329996 () Conc!12327)

(assert (=> d!1101306 (= lt!1303377 e!2329996)))

(declare-fun c!652653 () Bool)

(assert (=> d!1101306 (= c!652653 (= (c!652409 acc!335) Empty!12327))))

(assert (=> d!1101306 e!2330003))

(declare-fun res!1525124 () Bool)

(assert (=> d!1101306 (=> (not res!1525124) (not e!2330003))))

(assert (=> d!1101306 (= res!1525124 (isBalanced!3545 (c!652409 acc!335)))))

(assert (=> d!1101306 (= (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112))) lt!1303377)))

(declare-fun bm!275652 () Bool)

(declare-fun call!275659 () Conc!12327)

(assert (=> bm!275652 (= call!275659 call!275658)))

(declare-fun bm!275653 () Bool)

(declare-fun call!275651 () Conc!12327)

(assert (=> bm!275653 (= call!275651 call!275663)))

(declare-fun b!3767282 () Bool)

(declare-fun e!2329998 () Conc!12327)

(assert (=> b!3767282 (= e!2329998 e!2330002)))

(declare-fun lt!1303379 () Int)

(assert (=> b!3767282 (= c!652656 (< lt!1303379 (- 1)))))

(declare-fun b!3767283 () Bool)

(declare-fun call!275666 () Conc!12327)

(assert (=> b!3767283 (= e!2329998 call!275666)))

(declare-fun bm!275654 () Bool)

(declare-fun c!652654 () Bool)

(assert (=> bm!275654 (= call!275658 (++!9988 (ite c!652656 (ite c!652654 (right!31446 (c!652409 acc!335)) (right!31446 (right!31446 (c!652409 acc!335)))) (c!652409 acc!335)) (ite c!652656 (c!652409 (_1!22754 lt!1303112)) (ite c!652651 (left!31116 (c!652409 (_1!22754 lt!1303112))) (left!31116 (left!31116 (c!652409 (_1!22754 lt!1303112))))))))))

(declare-fun bm!275655 () Bool)

(declare-fun c!652655 () Bool)

(declare-fun c!652649 () Bool)

(declare-fun lt!1303378 () Conc!12327)

(declare-fun call!275664 () Conc!12327)

(declare-fun lt!1303380 () Conc!12327)

(declare-fun <>!331 (Conc!12327 Conc!12327) Conc!12327)

(assert (=> bm!275655 (= call!275655 (<>!331 (ite c!652656 (ite c!652655 (left!31116 (c!652409 acc!335)) call!275664) (ite c!652649 call!275651 lt!1303380)) (ite c!652656 (ite c!652655 call!275664 lt!1303378) (ite c!652649 (right!31446 (c!652409 (_1!22754 lt!1303112))) call!275651))))))

(declare-fun b!3767284 () Bool)

(declare-fun c!652652 () Bool)

(assert (=> b!3767284 (= c!652652 (and (<= (- 1) lt!1303379) (<= lt!1303379 1)))))

(assert (=> b!3767284 (= lt!1303379 (- (height!1762 (c!652409 (_1!22754 lt!1303112))) (height!1762 (c!652409 acc!335))))))

(assert (=> b!3767284 (= e!2330001 e!2329998)))

(declare-fun b!3767285 () Bool)

(declare-fun e!2329999 () Conc!12327)

(assert (=> b!3767285 (= e!2329999 call!275665)))

(declare-fun bm!275656 () Bool)

(assert (=> bm!275656 (= call!275660 (height!1762 (ite c!652656 (c!652409 acc!335) (left!31116 (c!652409 (_1!22754 lt!1303112))))))))

(declare-fun b!3767286 () Bool)

(assert (=> b!3767286 (= e!2329995 call!275663)))

(declare-fun b!3767287 () Bool)

(declare-fun res!1525120 () Bool)

(assert (=> b!3767287 (=> (not res!1525120) (not e!2329997))))

(assert (=> b!3767287 (= res!1525120 (isBalanced!3545 lt!1303377))))

(declare-fun b!3767288 () Bool)

(assert (=> b!3767288 (= e!2329995 e!2330004)))

(assert (=> b!3767288 (= lt!1303380 call!275659)))

(declare-fun call!275657 () Int)

(assert (=> b!3767288 (= c!652649 (= call!275657 (- call!275652 3)))))

(declare-fun b!3767289 () Bool)

(declare-fun res!1525123 () Bool)

(assert (=> b!3767289 (=> (not res!1525123) (not e!2329997))))

(assert (=> b!3767289 (= res!1525123 (<= (height!1762 lt!1303377) (+ (max!0 (height!1762 (c!652409 acc!335)) (height!1762 (c!652409 (_1!22754 lt!1303112)))) 1)))))

(declare-fun b!3767290 () Bool)

(assert (=> b!3767290 (= e!2330004 call!275654)))

(declare-fun bm!275657 () Bool)

(assert (=> bm!275657 (= call!275666 (<>!331 (ite c!652652 (c!652409 acc!335) (ite c!652656 (ite c!652654 (left!31116 (c!652409 acc!335)) (ite c!652655 (left!31116 (right!31446 (c!652409 acc!335))) (left!31116 (c!652409 acc!335)))) (ite c!652651 call!275659 (ite c!652649 lt!1303380 (right!31446 (left!31116 (c!652409 (_1!22754 lt!1303112)))))))) (ite c!652652 (c!652409 (_1!22754 lt!1303112)) (ite c!652656 (ite c!652654 call!275662 (ite c!652655 lt!1303378 (left!31116 (right!31446 (c!652409 acc!335))))) (ite c!652651 (right!31446 (c!652409 (_1!22754 lt!1303112))) (ite c!652649 (right!31446 (left!31116 (c!652409 (_1!22754 lt!1303112)))) (right!31446 (c!652409 (_1!22754 lt!1303112)))))))))))

(declare-fun bm!275658 () Bool)

(assert (=> bm!275658 (= call!275661 (height!1762 (ite c!652656 (right!31446 (c!652409 acc!335)) (right!31446 (c!652409 (_1!22754 lt!1303112))))))))

(declare-fun bm!275659 () Bool)

(assert (=> bm!275659 (= call!275653 call!275666)))

(declare-fun b!3767291 () Bool)

(assert (=> b!3767291 (= e!2329996 (c!652409 (_1!22754 lt!1303112)))))

(declare-fun bm!275660 () Bool)

(assert (=> bm!275660 (= call!275657 (height!1762 (ite c!652656 lt!1303378 lt!1303380)))))

(declare-fun b!3767292 () Bool)

(assert (=> b!3767292 (= e!2329999 e!2330000)))

(assert (=> b!3767292 (= lt!1303378 call!275662)))

(assert (=> b!3767292 (= c!652655 (= call!275657 (- call!275660 3)))))

(declare-fun b!3767293 () Bool)

(assert (=> b!3767293 (= e!2330000 call!275656)))

(declare-fun b!3767294 () Bool)

(assert (=> b!3767294 (= c!652654 (>= call!275652 call!275661))))

(assert (=> b!3767294 (= e!2330002 e!2329999)))

(declare-fun b!3767295 () Bool)

(assert (=> b!3767295 (= e!2329996 e!2330001)))

(declare-fun c!652650 () Bool)

(assert (=> b!3767295 (= c!652650 (= (c!652409 (_1!22754 lt!1303112)) Empty!12327))))

(declare-fun b!3767296 () Bool)

(assert (=> b!3767296 (= e!2329997 (= (list!14867 lt!1303377) (++!9987 (list!14867 (c!652409 acc!335)) (list!14867 (c!652409 (_1!22754 lt!1303112))))))))

(declare-fun bm!275661 () Bool)

(assert (=> bm!275661 (= call!275664 call!275665)))

(assert (= (and d!1101306 res!1525124) b!3767276))

(assert (= (and d!1101306 c!652653) b!3767291))

(assert (= (and d!1101306 (not c!652653)) b!3767295))

(assert (= (and b!3767295 c!652650) b!3767279))

(assert (= (and b!3767295 (not c!652650)) b!3767284))

(assert (= (and b!3767284 c!652652) b!3767283))

(assert (= (and b!3767284 (not c!652652)) b!3767282))

(assert (= (and b!3767282 c!652656) b!3767294))

(assert (= (and b!3767282 (not c!652656)) b!3767278))

(assert (= (and b!3767294 c!652654) b!3767285))

(assert (= (and b!3767294 (not c!652654)) b!3767292))

(assert (= (and b!3767292 c!652655) b!3767293))

(assert (= (and b!3767292 (not c!652655)) b!3767280))

(assert (= (or b!3767293 b!3767280) bm!275661))

(assert (= (or b!3767293 b!3767280) bm!275650))

(assert (= (or b!3767285 b!3767292) bm!275651))

(assert (= (or b!3767285 bm!275661) bm!275646))

(assert (= (and b!3767278 c!652651) b!3767286))

(assert (= (and b!3767278 (not c!652651)) b!3767288))

(assert (= (and b!3767288 c!652649) b!3767277))

(assert (= (and b!3767288 (not c!652649)) b!3767290))

(assert (= (or b!3767277 b!3767290) bm!275653))

(assert (= (or b!3767277 b!3767290) bm!275647))

(assert (= (or b!3767286 b!3767288) bm!275652))

(assert (= (or b!3767286 bm!275653) bm!275649))

(assert (= (or b!3767294 b!3767278) bm!275658))

(assert (= (or bm!275651 bm!275652) bm!275654))

(assert (= (or b!3767292 b!3767288) bm!275660))

(assert (= (or bm!275650 bm!275647) bm!275655))

(assert (= (or b!3767292 b!3767278) bm!275656))

(assert (= (or b!3767294 b!3767288) bm!275648))

(assert (= (or bm!275646 bm!275649) bm!275659))

(assert (= (or b!3767283 bm!275659) bm!275657))

(assert (= (and d!1101306 res!1525121) b!3767287))

(assert (= (and b!3767287 res!1525120) b!3767289))

(assert (= (and b!3767289 res!1525123) b!3767281))

(assert (= (and b!3767281 res!1525122) b!3767296))

(declare-fun m!4263621 () Bool)

(assert (=> bm!275660 m!4263621))

(declare-fun m!4263623 () Bool)

(assert (=> bm!275655 m!4263623))

(declare-fun m!4263625 () Bool)

(assert (=> b!3767276 m!4263625))

(assert (=> b!3767284 m!4262531))

(assert (=> b!3767284 m!4262529))

(declare-fun m!4263627 () Bool)

(assert (=> bm!275657 m!4263627))

(declare-fun m!4263629 () Bool)

(assert (=> bm!275656 m!4263629))

(assert (=> d!1101306 m!4262525))

(assert (=> d!1101306 m!4262571))

(declare-fun m!4263631 () Bool)

(assert (=> b!3767296 m!4263631))

(assert (=> b!3767296 m!4262323))

(assert (=> b!3767296 m!4263077))

(assert (=> b!3767296 m!4262323))

(assert (=> b!3767296 m!4263077))

(declare-fun m!4263633 () Bool)

(assert (=> b!3767296 m!4263633))

(declare-fun m!4263635 () Bool)

(assert (=> bm!275654 m!4263635))

(declare-fun m!4263637 () Bool)

(assert (=> b!3767289 m!4263637))

(assert (=> b!3767289 m!4262529))

(assert (=> b!3767289 m!4262531))

(assert (=> b!3767289 m!4262529))

(assert (=> b!3767289 m!4262531))

(assert (=> b!3767289 m!4262533))

(declare-fun m!4263639 () Bool)

(assert (=> bm!275658 m!4263639))

(declare-fun m!4263641 () Bool)

(assert (=> bm!275648 m!4263641))

(assert (=> b!3767281 m!4263637))

(assert (=> b!3767281 m!4262529))

(assert (=> b!3767281 m!4262531))

(assert (=> b!3767281 m!4262529))

(assert (=> b!3767281 m!4262531))

(assert (=> b!3767281 m!4262533))

(declare-fun m!4263643 () Bool)

(assert (=> b!3767287 m!4263643))

(assert (=> b!3766313 d!1101306))

(assert (=> b!3766322 d!1101274))

(assert (=> b!3766322 d!1100966))

(assert (=> b!3766314 d!1101298))

(assert (=> b!3766314 d!1101300))

(assert (=> b!3766314 d!1101302))

(assert (=> b!3766314 d!1101304))

(assert (=> b!3766314 d!1101306))

(declare-fun d!1101308 () Bool)

(declare-fun lt!1303381 () Bool)

(assert (=> d!1101308 (= lt!1303381 (isEmpty!23614 (list!14864 (_1!22754 lt!1303158))))))

(assert (=> d!1101308 (= lt!1303381 (isEmpty!23616 (c!652409 (_1!22754 lt!1303158))))))

(assert (=> d!1101308 (= (isEmpty!23610 (_1!22754 lt!1303158)) lt!1303381)))

(declare-fun bs!576088 () Bool)

(assert (= bs!576088 d!1101308))

(assert (=> bs!576088 m!4262463))

(assert (=> bs!576088 m!4262463))

(declare-fun m!4263645 () Bool)

(assert (=> bs!576088 m!4263645))

(declare-fun m!4263647 () Bool)

(assert (=> bs!576088 m!4263647))

(assert (=> b!3766280 d!1101308))

(declare-fun d!1101310 () Bool)

(declare-fun res!1525131 () Bool)

(declare-fun e!2330007 () Bool)

(assert (=> d!1101310 (=> (not res!1525131) (not e!2330007))))

(assert (=> d!1101310 (= res!1525131 (= (csize!24884 (c!652409 acc!335)) (+ (size!30263 (left!31116 (c!652409 acc!335))) (size!30263 (right!31446 (c!652409 acc!335))))))))

(assert (=> d!1101310 (= (inv!53995 (c!652409 acc!335)) e!2330007)))

(declare-fun b!3767303 () Bool)

(declare-fun res!1525132 () Bool)

(assert (=> b!3767303 (=> (not res!1525132) (not e!2330007))))

(assert (=> b!3767303 (= res!1525132 (and (not (= (left!31116 (c!652409 acc!335)) Empty!12327)) (not (= (right!31446 (c!652409 acc!335)) Empty!12327))))))

(declare-fun b!3767304 () Bool)

(declare-fun res!1525133 () Bool)

(assert (=> b!3767304 (=> (not res!1525133) (not e!2330007))))

(assert (=> b!3767304 (= res!1525133 (= (cheight!12538 (c!652409 acc!335)) (+ (max!0 (height!1762 (left!31116 (c!652409 acc!335))) (height!1762 (right!31446 (c!652409 acc!335)))) 1)))))

(declare-fun b!3767305 () Bool)

(assert (=> b!3767305 (= e!2330007 (<= 0 (cheight!12538 (c!652409 acc!335))))))

(assert (= (and d!1101310 res!1525131) b!3767303))

(assert (= (and b!3767303 res!1525132) b!3767304))

(assert (= (and b!3767304 res!1525133) b!3767305))

(declare-fun m!4263649 () Bool)

(assert (=> d!1101310 m!4263649))

(declare-fun m!4263651 () Bool)

(assert (=> d!1101310 m!4263651))

(assert (=> b!3767304 m!4263537))

(assert (=> b!3767304 m!4263539))

(assert (=> b!3767304 m!4263537))

(assert (=> b!3767304 m!4263539))

(declare-fun m!4263653 () Bool)

(assert (=> b!3767304 m!4263653))

(assert (=> b!3766329 d!1101310))

(declare-fun d!1101312 () Bool)

(assert (=> d!1101312 (= (inv!53978 (tag!7036 (h!45625 (t!304356 rules!1265)))) (= (mod (str.len (value!196622 (tag!7036 (h!45625 (t!304356 rules!1265))))) 2) 0))))

(assert (=> b!3766457 d!1101312))

(declare-fun d!1101314 () Bool)

(declare-fun res!1525134 () Bool)

(declare-fun e!2330008 () Bool)

(assert (=> d!1101314 (=> (not res!1525134) (not e!2330008))))

(assert (=> d!1101314 (= res!1525134 (semiInverseModEq!2643 (toChars!8395 (transformation!6176 (h!45625 (t!304356 rules!1265)))) (toValue!8536 (transformation!6176 (h!45625 (t!304356 rules!1265))))))))

(assert (=> d!1101314 (= (inv!53988 (transformation!6176 (h!45625 (t!304356 rules!1265)))) e!2330008)))

(declare-fun b!3767306 () Bool)

(assert (=> b!3767306 (= e!2330008 (equivClasses!2542 (toChars!8395 (transformation!6176 (h!45625 (t!304356 rules!1265)))) (toValue!8536 (transformation!6176 (h!45625 (t!304356 rules!1265))))))))

(assert (= (and d!1101314 res!1525134) b!3767306))

(declare-fun m!4263655 () Bool)

(assert (=> d!1101314 m!4263655))

(declare-fun m!4263657 () Bool)

(assert (=> b!3767306 m!4263657))

(assert (=> b!3766457 d!1101314))

(declare-fun d!1101316 () Bool)

(declare-fun lt!1303382 () Int)

(assert (=> d!1101316 (>= lt!1303382 0)))

(declare-fun e!2330009 () Int)

(assert (=> d!1101316 (= lt!1303382 e!2330009)))

(declare-fun c!652657 () Bool)

(assert (=> d!1101316 (= c!652657 ((_ is Nil!40203) lt!1303115))))

(assert (=> d!1101316 (= (size!30259 lt!1303115) lt!1303382)))

(declare-fun b!3767307 () Bool)

(assert (=> b!3767307 (= e!2330009 0)))

(declare-fun b!3767308 () Bool)

(assert (=> b!3767308 (= e!2330009 (+ 1 (size!30259 (t!304354 lt!1303115))))))

(assert (= (and d!1101316 c!652657) b!3767307))

(assert (= (and d!1101316 (not c!652657)) b!3767308))

(declare-fun m!4263659 () Bool)

(assert (=> b!3767308 m!4263659))

(assert (=> b!3766424 d!1101316))

(assert (=> b!3766424 d!1101244))

(declare-fun b!3767311 () Bool)

(declare-fun e!2330011 () List!40328)

(assert (=> b!3767311 (= e!2330011 (list!14871 (xs!15537 (c!652409 (_1!22754 lt!1303114)))))))

(declare-fun d!1101318 () Bool)

(declare-fun c!652658 () Bool)

(assert (=> d!1101318 (= c!652658 ((_ is Empty!12327) (c!652409 (_1!22754 lt!1303114))))))

(declare-fun e!2330010 () List!40328)

(assert (=> d!1101318 (= (list!14867 (c!652409 (_1!22754 lt!1303114))) e!2330010)))

(declare-fun b!3767309 () Bool)

(assert (=> b!3767309 (= e!2330010 Nil!40204)))

(declare-fun b!3767310 () Bool)

(assert (=> b!3767310 (= e!2330010 e!2330011)))

(declare-fun c!652659 () Bool)

(assert (=> b!3767310 (= c!652659 ((_ is Leaf!19113) (c!652409 (_1!22754 lt!1303114))))))

(declare-fun b!3767312 () Bool)

(assert (=> b!3767312 (= e!2330011 (++!9987 (list!14867 (left!31116 (c!652409 (_1!22754 lt!1303114)))) (list!14867 (right!31446 (c!652409 (_1!22754 lt!1303114))))))))

(assert (= (and d!1101318 c!652658) b!3767309))

(assert (= (and d!1101318 (not c!652658)) b!3767310))

(assert (= (and b!3767310 c!652659) b!3767311))

(assert (= (and b!3767310 (not c!652659)) b!3767312))

(declare-fun m!4263661 () Bool)

(assert (=> b!3767311 m!4263661))

(declare-fun m!4263663 () Bool)

(assert (=> b!3767312 m!4263663))

(declare-fun m!4263665 () Bool)

(assert (=> b!3767312 m!4263665))

(assert (=> b!3767312 m!4263663))

(assert (=> b!3767312 m!4263665))

(declare-fun m!4263667 () Bool)

(assert (=> b!3767312 m!4263667))

(assert (=> d!1100902 d!1101318))

(declare-fun d!1101320 () Bool)

(assert (=> d!1101320 true))

(declare-fun order!21927 () Int)

(declare-fun order!21929 () Int)

(declare-fun lambda!125316 () Int)

(declare-fun dynLambda!17360 (Int Int) Int)

(declare-fun dynLambda!17361 (Int Int) Int)

(assert (=> d!1101320 (< (dynLambda!17360 order!21927 (toValue!8536 (transformation!6176 (h!45625 rules!1265)))) (dynLambda!17361 order!21929 lambda!125316))))

(declare-fun Forall2!1002 (Int) Bool)

(assert (=> d!1101320 (= (equivClasses!2542 (toChars!8395 (transformation!6176 (h!45625 rules!1265))) (toValue!8536 (transformation!6176 (h!45625 rules!1265)))) (Forall2!1002 lambda!125316))))

(declare-fun bs!576089 () Bool)

(assert (= bs!576089 d!1101320))

(declare-fun m!4263669 () Bool)

(assert (=> bs!576089 m!4263669))

(assert (=> b!3766343 d!1101320))

(declare-fun d!1101322 () Bool)

(declare-fun lt!1303383 () Int)

(assert (=> d!1101322 (= lt!1303383 (size!30262 (list!14864 (_1!22754 lt!1303170))))))

(assert (=> d!1101322 (= lt!1303383 (size!30263 (c!652409 (_1!22754 lt!1303170))))))

(assert (=> d!1101322 (= (size!30258 (_1!22754 lt!1303170)) lt!1303383)))

(declare-fun bs!576090 () Bool)

(assert (= bs!576090 d!1101322))

(assert (=> bs!576090 m!4262549))

(assert (=> bs!576090 m!4262549))

(declare-fun m!4263671 () Bool)

(assert (=> bs!576090 m!4263671))

(declare-fun m!4263673 () Bool)

(assert (=> bs!576090 m!4263673))

(assert (=> d!1100978 d!1101322))

(declare-fun lt!1303384 () Option!8576)

(declare-fun e!2330017 () Bool)

(declare-fun b!3767317 () Bool)

(assert (=> b!3767317 (= e!2330017 (= (list!14863 (_2!22758 (get!13330 lt!1303384))) (_2!22760 (get!13331 (maxPrefixZipper!528 thiss!11876 rules!1265 (list!14863 input!678))))))))

(declare-fun d!1101324 () Bool)

(declare-fun e!2330014 () Bool)

(assert (=> d!1101324 e!2330014))

(declare-fun res!1525140 () Bool)

(assert (=> d!1101324 (=> (not res!1525140) (not e!2330014))))

(assert (=> d!1101324 (= res!1525140 (= (isDefined!6752 lt!1303384) (isDefined!6753 (maxPrefixZipper!528 thiss!11876 rules!1265 (list!14863 input!678)))))))

(declare-fun e!2330016 () Option!8576)

(assert (=> d!1101324 (= lt!1303384 e!2330016)))

(declare-fun c!652660 () Bool)

(assert (=> d!1101324 (= c!652660 (and ((_ is Cons!40205) rules!1265) ((_ is Nil!40205) (t!304356 rules!1265))))))

(declare-fun lt!1303390 () Unit!57916)

(declare-fun lt!1303386 () Unit!57916)

(assert (=> d!1101324 (= lt!1303390 lt!1303386)))

(declare-fun lt!1303387 () List!40327)

(declare-fun lt!1303385 () List!40327)

(assert (=> d!1101324 (isPrefix!3304 lt!1303387 lt!1303385)))

(assert (=> d!1101324 (= lt!1303386 (lemmaIsPrefixRefl!2089 lt!1303387 lt!1303385))))

(assert (=> d!1101324 (= lt!1303385 (list!14863 input!678))))

(assert (=> d!1101324 (= lt!1303387 (list!14863 input!678))))

(assert (=> d!1101324 (rulesValidInductive!2162 thiss!11876 rules!1265)))

(assert (=> d!1101324 (= (maxPrefixZipperSequence!1179 thiss!11876 rules!1265 input!678) lt!1303384)))

(declare-fun b!3767318 () Bool)

(declare-fun lt!1303389 () Option!8576)

(declare-fun lt!1303388 () Option!8576)

(assert (=> b!3767318 (= e!2330016 (ite (and ((_ is None!8575) lt!1303389) ((_ is None!8575) lt!1303388)) None!8575 (ite ((_ is None!8575) lt!1303388) lt!1303389 (ite ((_ is None!8575) lt!1303389) lt!1303388 (ite (>= (size!30253 (_1!22758 (v!38739 lt!1303389))) (size!30253 (_1!22758 (v!38739 lt!1303388)))) lt!1303389 lt!1303388)))))))

(declare-fun call!275667 () Option!8576)

(assert (=> b!3767318 (= lt!1303389 call!275667)))

(assert (=> b!3767318 (= lt!1303388 (maxPrefixZipperSequence!1179 thiss!11876 (t!304356 rules!1265) input!678))))

(declare-fun bm!275662 () Bool)

(assert (=> bm!275662 (= call!275667 (maxPrefixOneRuleZipperSequence!543 thiss!11876 (h!45625 rules!1265) input!678))))

(declare-fun b!3767319 () Bool)

(declare-fun e!2330018 () Bool)

(assert (=> b!3767319 (= e!2330014 e!2330018)))

(declare-fun res!1525141 () Bool)

(assert (=> b!3767319 (=> res!1525141 e!2330018)))

(assert (=> b!3767319 (= res!1525141 (not (isDefined!6752 lt!1303384)))))

(declare-fun b!3767320 () Bool)

(declare-fun e!2330019 () Bool)

(assert (=> b!3767320 (= e!2330018 e!2330019)))

(declare-fun res!1525142 () Bool)

(assert (=> b!3767320 (=> (not res!1525142) (not e!2330019))))

(assert (=> b!3767320 (= res!1525142 (= (_1!22758 (get!13330 lt!1303384)) (_1!22760 (get!13331 (maxPrefix!3097 thiss!11876 rules!1265 (list!14863 input!678))))))))

(declare-fun b!3767321 () Bool)

(declare-fun res!1525139 () Bool)

(assert (=> b!3767321 (=> (not res!1525139) (not e!2330014))))

(declare-fun e!2330015 () Bool)

(assert (=> b!3767321 (= res!1525139 e!2330015)))

(declare-fun res!1525137 () Bool)

(assert (=> b!3767321 (=> res!1525137 e!2330015)))

(assert (=> b!3767321 (= res!1525137 (not (isDefined!6752 lt!1303384)))))

(declare-fun b!3767322 () Bool)

(assert (=> b!3767322 (= e!2330016 call!275667)))

(declare-fun b!3767323 () Bool)

(assert (=> b!3767323 (= e!2330015 e!2330017)))

(declare-fun res!1525138 () Bool)

(assert (=> b!3767323 (=> (not res!1525138) (not e!2330017))))

(assert (=> b!3767323 (= res!1525138 (= (_1!22758 (get!13330 lt!1303384)) (_1!22760 (get!13331 (maxPrefixZipper!528 thiss!11876 rules!1265 (list!14863 input!678))))))))

(declare-fun b!3767324 () Bool)

(assert (=> b!3767324 (= e!2330019 (= (list!14863 (_2!22758 (get!13330 lt!1303384))) (_2!22760 (get!13331 (maxPrefix!3097 thiss!11876 rules!1265 (list!14863 input!678))))))))

(assert (= (and d!1101324 c!652660) b!3767322))

(assert (= (and d!1101324 (not c!652660)) b!3767318))

(assert (= (or b!3767322 b!3767318) bm!275662))

(assert (= (and d!1101324 res!1525140) b!3767321))

(assert (= (and b!3767321 (not res!1525137)) b!3767323))

(assert (= (and b!3767323 res!1525138) b!3767317))

(assert (= (and b!3767321 res!1525139) b!3767319))

(assert (= (and b!3767319 (not res!1525141)) b!3767320))

(assert (= (and b!3767320 res!1525142) b!3767324))

(assert (=> d!1101324 m!4262277))

(declare-fun m!4263675 () Bool)

(assert (=> d!1101324 m!4263675))

(assert (=> d!1101324 m!4262249))

(declare-fun m!4263677 () Bool)

(assert (=> d!1101324 m!4263677))

(declare-fun m!4263679 () Bool)

(assert (=> d!1101324 m!4263679))

(declare-fun m!4263681 () Bool)

(assert (=> d!1101324 m!4263681))

(assert (=> d!1101324 m!4262249))

(assert (=> d!1101324 m!4263677))

(declare-fun m!4263683 () Bool)

(assert (=> d!1101324 m!4263683))

(declare-fun m!4263685 () Bool)

(assert (=> b!3767317 m!4263685))

(assert (=> b!3767317 m!4262249))

(declare-fun m!4263687 () Bool)

(assert (=> b!3767317 m!4263687))

(assert (=> b!3767317 m!4262249))

(assert (=> b!3767317 m!4263677))

(assert (=> b!3767317 m!4263677))

(declare-fun m!4263689 () Bool)

(assert (=> b!3767317 m!4263689))

(declare-fun m!4263691 () Bool)

(assert (=> bm!275662 m!4263691))

(assert (=> b!3767321 m!4263681))

(assert (=> b!3767324 m!4263685))

(assert (=> b!3767324 m!4263553))

(declare-fun m!4263693 () Bool)

(assert (=> b!3767324 m!4263693))

(assert (=> b!3767324 m!4262249))

(assert (=> b!3767324 m!4263687))

(assert (=> b!3767324 m!4262249))

(assert (=> b!3767324 m!4263553))

(assert (=> b!3767319 m!4263681))

(assert (=> b!3767320 m!4263687))

(assert (=> b!3767320 m!4262249))

(assert (=> b!3767320 m!4262249))

(assert (=> b!3767320 m!4263553))

(assert (=> b!3767320 m!4263553))

(assert (=> b!3767320 m!4263693))

(assert (=> b!3767323 m!4263687))

(assert (=> b!3767323 m!4262249))

(assert (=> b!3767323 m!4262249))

(assert (=> b!3767323 m!4263677))

(assert (=> b!3767323 m!4263677))

(assert (=> b!3767323 m!4263689))

(declare-fun m!4263695 () Bool)

(assert (=> b!3767318 m!4263695))

(assert (=> d!1100978 d!1101324))

(declare-fun d!1101326 () Bool)

(declare-fun e!2330020 () Bool)

(assert (=> d!1101326 e!2330020))

(declare-fun res!1525143 () Bool)

(assert (=> d!1101326 (=> (not res!1525143) (not e!2330020))))

(assert (=> d!1101326 (= res!1525143 (isBalanced!3545 (prepend!1314 (c!652409 (_1!22754 lt!1303157)) (_1!22758 (v!38739 lt!1303156)))))))

(declare-fun lt!1303391 () BalanceConc!24248)

(assert (=> d!1101326 (= lt!1303391 (BalanceConc!24249 (prepend!1314 (c!652409 (_1!22754 lt!1303157)) (_1!22758 (v!38739 lt!1303156)))))))

(assert (=> d!1101326 (= (prepend!1312 (_1!22754 lt!1303157) (_1!22758 (v!38739 lt!1303156))) lt!1303391)))

(declare-fun b!3767325 () Bool)

(assert (=> b!3767325 (= e!2330020 (= (list!14864 lt!1303391) (Cons!40204 (_1!22758 (v!38739 lt!1303156)) (list!14864 (_1!22754 lt!1303157)))))))

(assert (= (and d!1101326 res!1525143) b!3767325))

(declare-fun m!4263697 () Bool)

(assert (=> d!1101326 m!4263697))

(assert (=> d!1101326 m!4263697))

(declare-fun m!4263699 () Bool)

(assert (=> d!1101326 m!4263699))

(declare-fun m!4263701 () Bool)

(assert (=> b!3767325 m!4263701))

(declare-fun m!4263703 () Bool)

(assert (=> b!3767325 m!4263703))

(assert (=> b!3766282 d!1101326))

(declare-fun b!3767326 () Bool)

(declare-fun e!2330024 () Bool)

(declare-fun e!2330021 () Bool)

(assert (=> b!3767326 (= e!2330024 e!2330021)))

(declare-fun res!1525144 () Bool)

(declare-fun lt!1303394 () tuple2!39240)

(assert (=> b!3767326 (= res!1525144 (< (size!30257 (_2!22754 lt!1303394)) (size!30257 (_2!22758 (v!38739 lt!1303156)))))))

(assert (=> b!3767326 (=> (not res!1525144) (not e!2330021))))

(declare-fun b!3767327 () Bool)

(declare-fun e!2330022 () tuple2!39240)

(assert (=> b!3767327 (= e!2330022 (tuple2!39241 (BalanceConc!24249 Empty!12327) (_2!22758 (v!38739 lt!1303156))))))

(declare-fun b!3767328 () Bool)

(assert (=> b!3767328 (= e!2330021 (not (isEmpty!23610 (_1!22754 lt!1303394))))))

(declare-fun b!3767329 () Bool)

(declare-fun e!2330023 () Bool)

(assert (=> b!3767329 (= e!2330023 (= (list!14863 (_2!22754 lt!1303394)) (_2!22757 (lexList!1545 thiss!11876 rules!1265 (list!14863 (_2!22758 (v!38739 lt!1303156)))))))))

(declare-fun b!3767330 () Bool)

(declare-fun lt!1303393 () tuple2!39240)

(declare-fun lt!1303392 () Option!8576)

(assert (=> b!3767330 (= e!2330022 (tuple2!39241 (prepend!1312 (_1!22754 lt!1303393) (_1!22758 (v!38739 lt!1303392))) (_2!22754 lt!1303393)))))

(assert (=> b!3767330 (= lt!1303393 (lexRec!789 thiss!11876 rules!1265 (_2!22758 (v!38739 lt!1303392))))))

(declare-fun d!1101328 () Bool)

(assert (=> d!1101328 e!2330023))

(declare-fun res!1525146 () Bool)

(assert (=> d!1101328 (=> (not res!1525146) (not e!2330023))))

(assert (=> d!1101328 (= res!1525146 e!2330024)))

(declare-fun c!652662 () Bool)

(assert (=> d!1101328 (= c!652662 (> (size!30258 (_1!22754 lt!1303394)) 0))))

(assert (=> d!1101328 (= lt!1303394 e!2330022)))

(declare-fun c!652661 () Bool)

(assert (=> d!1101328 (= c!652661 ((_ is Some!8575) lt!1303392))))

(assert (=> d!1101328 (= lt!1303392 (maxPrefixZipperSequence!1179 thiss!11876 rules!1265 (_2!22758 (v!38739 lt!1303156))))))

(assert (=> d!1101328 (= (lexRec!789 thiss!11876 rules!1265 (_2!22758 (v!38739 lt!1303156))) lt!1303394)))

(declare-fun b!3767331 () Bool)

(declare-fun res!1525145 () Bool)

(assert (=> b!3767331 (=> (not res!1525145) (not e!2330023))))

(assert (=> b!3767331 (= res!1525145 (= (list!14864 (_1!22754 lt!1303394)) (_1!22757 (lexList!1545 thiss!11876 rules!1265 (list!14863 (_2!22758 (v!38739 lt!1303156)))))))))

(declare-fun b!3767332 () Bool)

(assert (=> b!3767332 (= e!2330024 (= (list!14863 (_2!22754 lt!1303394)) (list!14863 (_2!22758 (v!38739 lt!1303156)))))))

(assert (= (and d!1101328 c!652661) b!3767330))

(assert (= (and d!1101328 (not c!652661)) b!3767327))

(assert (= (and d!1101328 c!652662) b!3767326))

(assert (= (and d!1101328 (not c!652662)) b!3767332))

(assert (= (and b!3767326 res!1525144) b!3767328))

(assert (= (and d!1101328 res!1525146) b!3767331))

(assert (= (and b!3767331 res!1525145) b!3767329))

(declare-fun m!4263705 () Bool)

(assert (=> d!1101328 m!4263705))

(declare-fun m!4263707 () Bool)

(assert (=> d!1101328 m!4263707))

(declare-fun m!4263709 () Bool)

(assert (=> b!3767331 m!4263709))

(declare-fun m!4263711 () Bool)

(assert (=> b!3767331 m!4263711))

(assert (=> b!3767331 m!4263711))

(declare-fun m!4263713 () Bool)

(assert (=> b!3767331 m!4263713))

(declare-fun m!4263715 () Bool)

(assert (=> b!3767332 m!4263715))

(assert (=> b!3767332 m!4263711))

(declare-fun m!4263717 () Bool)

(assert (=> b!3767328 m!4263717))

(declare-fun m!4263719 () Bool)

(assert (=> b!3767326 m!4263719))

(declare-fun m!4263721 () Bool)

(assert (=> b!3767326 m!4263721))

(declare-fun m!4263723 () Bool)

(assert (=> b!3767330 m!4263723))

(declare-fun m!4263725 () Bool)

(assert (=> b!3767330 m!4263725))

(assert (=> b!3767329 m!4263715))

(assert (=> b!3767329 m!4263711))

(assert (=> b!3767329 m!4263711))

(assert (=> b!3767329 m!4263713))

(assert (=> b!3766282 d!1101328))

(declare-fun d!1101330 () Bool)

(declare-fun res!1525151 () Bool)

(declare-fun e!2330027 () Bool)

(assert (=> d!1101330 (=> (not res!1525151) (not e!2330027))))

(assert (=> d!1101330 (= res!1525151 (<= (size!30262 (list!14871 (xs!15537 (c!652409 acc!335)))) 512))))

(assert (=> d!1101330 (= (inv!53996 (c!652409 acc!335)) e!2330027)))

(declare-fun b!3767337 () Bool)

(declare-fun res!1525152 () Bool)

(assert (=> b!3767337 (=> (not res!1525152) (not e!2330027))))

(assert (=> b!3767337 (= res!1525152 (= (csize!24885 (c!652409 acc!335)) (size!30262 (list!14871 (xs!15537 (c!652409 acc!335))))))))

(declare-fun b!3767338 () Bool)

(assert (=> b!3767338 (= e!2330027 (and (> (csize!24885 (c!652409 acc!335)) 0) (<= (csize!24885 (c!652409 acc!335)) 512)))))

(assert (= (and d!1101330 res!1525151) b!3767337))

(assert (= (and b!3767337 res!1525152) b!3767338))

(declare-fun m!4263727 () Bool)

(assert (=> d!1101330 m!4263727))

(assert (=> d!1101330 m!4263727))

(declare-fun m!4263729 () Bool)

(assert (=> d!1101330 m!4263729))

(assert (=> b!3767337 m!4263727))

(assert (=> b!3767337 m!4263727))

(assert (=> b!3767337 m!4263729))

(assert (=> b!3766331 d!1101330))

(declare-fun d!1101332 () Bool)

(declare-fun c!652663 () Bool)

(assert (=> d!1101332 (= c!652663 ((_ is Node!12326) (left!31115 (c!652408 input!678))))))

(declare-fun e!2330028 () Bool)

(assert (=> d!1101332 (= (inv!53985 (left!31115 (c!652408 input!678))) e!2330028)))

(declare-fun b!3767339 () Bool)

(assert (=> b!3767339 (= e!2330028 (inv!53997 (left!31115 (c!652408 input!678))))))

(declare-fun b!3767340 () Bool)

(declare-fun e!2330029 () Bool)

(assert (=> b!3767340 (= e!2330028 e!2330029)))

(declare-fun res!1525153 () Bool)

(assert (=> b!3767340 (= res!1525153 (not ((_ is Leaf!19112) (left!31115 (c!652408 input!678)))))))

(assert (=> b!3767340 (=> res!1525153 e!2330029)))

(declare-fun b!3767341 () Bool)

(assert (=> b!3767341 (= e!2330029 (inv!53998 (left!31115 (c!652408 input!678))))))

(assert (= (and d!1101332 c!652663) b!3767339))

(assert (= (and d!1101332 (not c!652663)) b!3767340))

(assert (= (and b!3767340 (not res!1525153)) b!3767341))

(declare-fun m!4263731 () Bool)

(assert (=> b!3767339 m!4263731))

(declare-fun m!4263733 () Bool)

(assert (=> b!3767341 m!4263733))

(assert (=> b!3766484 d!1101332))

(declare-fun d!1101334 () Bool)

(declare-fun c!652664 () Bool)

(assert (=> d!1101334 (= c!652664 ((_ is Node!12326) (right!31445 (c!652408 input!678))))))

(declare-fun e!2330030 () Bool)

(assert (=> d!1101334 (= (inv!53985 (right!31445 (c!652408 input!678))) e!2330030)))

(declare-fun b!3767342 () Bool)

(assert (=> b!3767342 (= e!2330030 (inv!53997 (right!31445 (c!652408 input!678))))))

(declare-fun b!3767343 () Bool)

(declare-fun e!2330031 () Bool)

(assert (=> b!3767343 (= e!2330030 e!2330031)))

(declare-fun res!1525154 () Bool)

(assert (=> b!3767343 (= res!1525154 (not ((_ is Leaf!19112) (right!31445 (c!652408 input!678)))))))

(assert (=> b!3767343 (=> res!1525154 e!2330031)))

(declare-fun b!3767344 () Bool)

(assert (=> b!3767344 (= e!2330031 (inv!53998 (right!31445 (c!652408 input!678))))))

(assert (= (and d!1101334 c!652664) b!3767342))

(assert (= (and d!1101334 (not c!652664)) b!3767343))

(assert (= (and b!3767343 (not res!1525154)) b!3767344))

(declare-fun m!4263735 () Bool)

(assert (=> b!3767342 m!4263735))

(declare-fun m!4263737 () Bool)

(assert (=> b!3767344 m!4263737))

(assert (=> b!3766484 d!1101334))

(declare-fun d!1101336 () Bool)

(assert (=> d!1101336 (= (inv!53999 (xs!15536 (c!652408 totalInput!335))) (<= (size!30259 (innerList!12386 (xs!15536 (c!652408 totalInput!335)))) 2147483647))))

(declare-fun bs!576091 () Bool)

(assert (= bs!576091 d!1101336))

(declare-fun m!4263739 () Bool)

(assert (=> bs!576091 m!4263739))

(assert (=> b!3766468 d!1101336))

(declare-fun b!3767345 () Bool)

(declare-fun e!2330032 () List!40327)

(assert (=> b!3767345 (= e!2330032 Nil!40203)))

(declare-fun b!3767348 () Bool)

(declare-fun e!2330033 () List!40327)

(assert (=> b!3767348 (= e!2330033 (++!9983 (list!14868 (left!31115 (c!652408 (_2!22754 lt!1303113)))) (list!14868 (right!31445 (c!652408 (_2!22754 lt!1303113))))))))

(declare-fun b!3767347 () Bool)

(assert (=> b!3767347 (= e!2330033 (list!14872 (xs!15536 (c!652408 (_2!22754 lt!1303113)))))))

(declare-fun b!3767346 () Bool)

(assert (=> b!3767346 (= e!2330032 e!2330033)))

(declare-fun c!652666 () Bool)

(assert (=> b!3767346 (= c!652666 ((_ is Leaf!19112) (c!652408 (_2!22754 lt!1303113))))))

(declare-fun d!1101338 () Bool)

(declare-fun c!652665 () Bool)

(assert (=> d!1101338 (= c!652665 ((_ is Empty!12326) (c!652408 (_2!22754 lt!1303113))))))

(assert (=> d!1101338 (= (list!14868 (c!652408 (_2!22754 lt!1303113))) e!2330032)))

(assert (= (and d!1101338 c!652665) b!3767345))

(assert (= (and d!1101338 (not c!652665)) b!3767346))

(assert (= (and b!3767346 c!652666) b!3767347))

(assert (= (and b!3767346 (not c!652666)) b!3767348))

(declare-fun m!4263741 () Bool)

(assert (=> b!3767348 m!4263741))

(declare-fun m!4263743 () Bool)

(assert (=> b!3767348 m!4263743))

(assert (=> b!3767348 m!4263741))

(assert (=> b!3767348 m!4263743))

(declare-fun m!4263745 () Bool)

(assert (=> b!3767348 m!4263745))

(declare-fun m!4263747 () Bool)

(assert (=> b!3767347 m!4263747))

(assert (=> d!1101014 d!1101338))

(assert (=> b!3766284 d!1101144))

(assert (=> b!3766284 d!1100968))

(declare-fun d!1101340 () Bool)

(declare-fun res!1525155 () Bool)

(declare-fun e!2330034 () Bool)

(assert (=> d!1101340 (=> (not res!1525155) (not e!2330034))))

(assert (=> d!1101340 (= res!1525155 (= (csize!24882 (c!652408 totalInput!335)) (+ (size!30265 (left!31115 (c!652408 totalInput!335))) (size!30265 (right!31445 (c!652408 totalInput!335))))))))

(assert (=> d!1101340 (= (inv!53997 (c!652408 totalInput!335)) e!2330034)))

(declare-fun b!3767349 () Bool)

(declare-fun res!1525156 () Bool)

(assert (=> b!3767349 (=> (not res!1525156) (not e!2330034))))

(assert (=> b!3767349 (= res!1525156 (and (not (= (left!31115 (c!652408 totalInput!335)) Empty!12326)) (not (= (right!31445 (c!652408 totalInput!335)) Empty!12326))))))

(declare-fun b!3767350 () Bool)

(declare-fun res!1525157 () Bool)

(assert (=> b!3767350 (=> (not res!1525157) (not e!2330034))))

(assert (=> b!3767350 (= res!1525157 (= (cheight!12537 (c!652408 totalInput!335)) (+ (max!0 (height!1764 (left!31115 (c!652408 totalInput!335))) (height!1764 (right!31445 (c!652408 totalInput!335)))) 1)))))

(declare-fun b!3767351 () Bool)

(assert (=> b!3767351 (= e!2330034 (<= 0 (cheight!12537 (c!652408 totalInput!335))))))

(assert (= (and d!1101340 res!1525155) b!3767349))

(assert (= (and b!3767349 res!1525156) b!3767350))

(assert (= (and b!3767350 res!1525157) b!3767351))

(declare-fun m!4263749 () Bool)

(assert (=> d!1101340 m!4263749))

(declare-fun m!4263751 () Bool)

(assert (=> d!1101340 m!4263751))

(declare-fun m!4263753 () Bool)

(assert (=> b!3767350 m!4263753))

(declare-fun m!4263755 () Bool)

(assert (=> b!3767350 m!4263755))

(assert (=> b!3767350 m!4263753))

(assert (=> b!3767350 m!4263755))

(declare-fun m!4263757 () Bool)

(assert (=> b!3767350 m!4263757))

(assert (=> b!3766425 d!1101340))

(declare-fun d!1101342 () Bool)

(declare-fun res!1525162 () Bool)

(declare-fun e!2330039 () Bool)

(assert (=> d!1101342 (=> res!1525162 e!2330039)))

(assert (=> d!1101342 (= res!1525162 ((_ is Nil!40205) rules!1265))))

(assert (=> d!1101342 (= (noDuplicateTag!2379 thiss!11876 rules!1265 Nil!40207) e!2330039)))

(declare-fun b!3767356 () Bool)

(declare-fun e!2330040 () Bool)

(assert (=> b!3767356 (= e!2330039 e!2330040)))

(declare-fun res!1525163 () Bool)

(assert (=> b!3767356 (=> (not res!1525163) (not e!2330040))))

(declare-fun contains!8170 (List!40331 String!45712) Bool)

(assert (=> b!3767356 (= res!1525163 (not (contains!8170 Nil!40207 (tag!7036 (h!45625 rules!1265)))))))

(declare-fun b!3767357 () Bool)

(assert (=> b!3767357 (= e!2330040 (noDuplicateTag!2379 thiss!11876 (t!304356 rules!1265) (Cons!40207 (tag!7036 (h!45625 rules!1265)) Nil!40207)))))

(assert (= (and d!1101342 (not res!1525162)) b!3767356))

(assert (= (and b!3767356 res!1525163) b!3767357))

(declare-fun m!4263759 () Bool)

(assert (=> b!3767356 m!4263759))

(declare-fun m!4263761 () Bool)

(assert (=> b!3767357 m!4263761))

(assert (=> b!3766433 d!1101342))

(declare-fun d!1101344 () Bool)

(declare-fun res!1525164 () Bool)

(declare-fun e!2330041 () Bool)

(assert (=> d!1101344 (=> (not res!1525164) (not e!2330041))))

(assert (=> d!1101344 (= res!1525164 (<= (size!30259 (list!14872 (xs!15536 (c!652408 totalInput!335)))) 512))))

(assert (=> d!1101344 (= (inv!53998 (c!652408 totalInput!335)) e!2330041)))

(declare-fun b!3767358 () Bool)

(declare-fun res!1525165 () Bool)

(assert (=> b!3767358 (=> (not res!1525165) (not e!2330041))))

(assert (=> b!3767358 (= res!1525165 (= (csize!24883 (c!652408 totalInput!335)) (size!30259 (list!14872 (xs!15536 (c!652408 totalInput!335))))))))

(declare-fun b!3767359 () Bool)

(assert (=> b!3767359 (= e!2330041 (and (> (csize!24883 (c!652408 totalInput!335)) 0) (<= (csize!24883 (c!652408 totalInput!335)) 512)))))

(assert (= (and d!1101344 res!1525164) b!3767358))

(assert (= (and b!3767358 res!1525165) b!3767359))

(assert (=> d!1101344 m!4263413))

(assert (=> d!1101344 m!4263413))

(declare-fun m!4263763 () Bool)

(assert (=> d!1101344 m!4263763))

(assert (=> b!3767358 m!4263413))

(assert (=> b!3767358 m!4263413))

(assert (=> b!3767358 m!4263763))

(assert (=> b!3766427 d!1101344))

(declare-fun b!3767378 () Bool)

(declare-fun e!2330062 () Bool)

(declare-fun appendAssoc!256 (List!40328 List!40328 List!40328) Bool)

(assert (=> b!3767378 (= e!2330062 (appendAssoc!256 (list!14867 (left!31116 (c!652409 acc!335))) (list!14867 (left!31116 (right!31446 (c!652409 acc!335)))) (++!9987 (list!14867 (right!31446 (right!31446 (c!652409 acc!335)))) (list!14867 (c!652409 (_1!22754 lt!1303112))))))))

(declare-fun b!3767379 () Bool)

(declare-fun e!2330061 () Bool)

(assert (=> b!3767379 (= e!2330061 (appendAssoc!256 (++!9987 (list!14867 (c!652409 acc!335)) (list!14867 (left!31116 (left!31116 (c!652409 (_1!22754 lt!1303112)))))) (list!14867 (right!31446 (left!31116 (c!652409 (_1!22754 lt!1303112))))) (list!14867 (right!31446 (c!652409 (_1!22754 lt!1303112))))))))

(declare-fun b!3767380 () Bool)

(declare-fun e!2330067 () Bool)

(declare-fun e!2330066 () Bool)

(assert (=> b!3767380 (= e!2330067 e!2330066)))

(declare-fun res!1525186 () Bool)

(assert (=> b!3767380 (=> res!1525186 e!2330066)))

(assert (=> b!3767380 (= res!1525186 (not ((_ is Node!12327) (c!652409 (_1!22754 lt!1303112)))))))

(declare-fun b!3767381 () Bool)

(declare-fun e!2330068 () Bool)

(declare-fun e!2330065 () Bool)

(assert (=> b!3767381 (= e!2330068 e!2330065)))

(declare-fun res!1525189 () Bool)

(assert (=> b!3767381 (=> res!1525189 e!2330065)))

(assert (=> b!3767381 (= res!1525189 (not ((_ is Node!12327) (right!31446 (c!652409 acc!335)))))))

(declare-fun b!3767382 () Bool)

(declare-fun e!2330063 () Bool)

(assert (=> b!3767382 (= e!2330063 e!2330068)))

(declare-fun res!1525191 () Bool)

(assert (=> b!3767382 (=> (not res!1525191) (not e!2330068))))

(assert (=> b!3767382 (= res!1525191 (appendAssoc!256 (list!14867 (left!31116 (c!652409 acc!335))) (list!14867 (right!31446 (c!652409 acc!335))) (list!14867 (c!652409 (_1!22754 lt!1303112)))))))

(declare-fun d!1101346 () Bool)

(assert (=> d!1101346 e!2330067))

(declare-fun res!1525188 () Bool)

(assert (=> d!1101346 (=> (not res!1525188) (not e!2330067))))

(assert (=> d!1101346 (= res!1525188 e!2330063)))

(declare-fun res!1525187 () Bool)

(assert (=> d!1101346 (=> res!1525187 e!2330063)))

(assert (=> d!1101346 (= res!1525187 (not ((_ is Node!12327) (c!652409 acc!335))))))

(assert (=> d!1101346 (= (appendAssocInst!831 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112))) true)))

(declare-fun b!3767383 () Bool)

(declare-fun e!2330060 () Bool)

(assert (=> b!3767383 (= e!2330066 e!2330060)))

(declare-fun res!1525190 () Bool)

(assert (=> b!3767383 (=> (not res!1525190) (not e!2330060))))

(assert (=> b!3767383 (= res!1525190 (appendAssoc!256 (list!14867 (c!652409 acc!335)) (list!14867 (left!31116 (c!652409 (_1!22754 lt!1303112)))) (list!14867 (right!31446 (c!652409 (_1!22754 lt!1303112))))))))

(declare-fun b!3767384 () Bool)

(assert (=> b!3767384 (= e!2330065 e!2330062)))

(declare-fun res!1525184 () Bool)

(assert (=> b!3767384 (=> (not res!1525184) (not e!2330062))))

(assert (=> b!3767384 (= res!1525184 (appendAssoc!256 (list!14867 (left!31116 (right!31446 (c!652409 acc!335)))) (list!14867 (right!31446 (right!31446 (c!652409 acc!335)))) (list!14867 (c!652409 (_1!22754 lt!1303112)))))))

(declare-fun b!3767385 () Bool)

(declare-fun e!2330064 () Bool)

(assert (=> b!3767385 (= e!2330064 e!2330061)))

(declare-fun res!1525192 () Bool)

(assert (=> b!3767385 (=> (not res!1525192) (not e!2330061))))

(assert (=> b!3767385 (= res!1525192 (appendAssoc!256 (list!14867 (c!652409 acc!335)) (list!14867 (left!31116 (left!31116 (c!652409 (_1!22754 lt!1303112))))) (list!14867 (right!31446 (left!31116 (c!652409 (_1!22754 lt!1303112)))))))))

(declare-fun b!3767386 () Bool)

(assert (=> b!3767386 (= e!2330060 e!2330064)))

(declare-fun res!1525185 () Bool)

(assert (=> b!3767386 (=> res!1525185 e!2330064)))

(assert (=> b!3767386 (= res!1525185 (not ((_ is Node!12327) (left!31116 (c!652409 (_1!22754 lt!1303112))))))))

(assert (= (and d!1101346 (not res!1525187)) b!3767382))

(assert (= (and b!3767382 res!1525191) b!3767381))

(assert (= (and b!3767381 (not res!1525189)) b!3767384))

(assert (= (and b!3767384 res!1525184) b!3767378))

(assert (= (and d!1101346 res!1525188) b!3767380))

(assert (= (and b!3767380 (not res!1525186)) b!3767383))

(assert (= (and b!3767383 res!1525190) b!3767386))

(assert (= (and b!3767386 (not res!1525185)) b!3767385))

(assert (= (and b!3767385 res!1525192) b!3767379))

(assert (=> b!3767385 m!4262323))

(declare-fun m!4263765 () Bool)

(assert (=> b!3767385 m!4263765))

(declare-fun m!4263767 () Bool)

(assert (=> b!3767385 m!4263767))

(assert (=> b!3767385 m!4262323))

(assert (=> b!3767385 m!4263765))

(assert (=> b!3767385 m!4263767))

(declare-fun m!4263769 () Bool)

(assert (=> b!3767385 m!4263769))

(declare-fun m!4263771 () Bool)

(assert (=> b!3767382 m!4263771))

(declare-fun m!4263773 () Bool)

(assert (=> b!3767382 m!4263773))

(assert (=> b!3767382 m!4263077))

(assert (=> b!3767382 m!4263771))

(assert (=> b!3767382 m!4263773))

(assert (=> b!3767382 m!4263077))

(declare-fun m!4263775 () Bool)

(assert (=> b!3767382 m!4263775))

(declare-fun m!4263777 () Bool)

(assert (=> b!3767378 m!4263777))

(assert (=> b!3767378 m!4263077))

(declare-fun m!4263779 () Bool)

(assert (=> b!3767378 m!4263779))

(declare-fun m!4263781 () Bool)

(assert (=> b!3767378 m!4263781))

(assert (=> b!3767378 m!4263077))

(assert (=> b!3767378 m!4263771))

(assert (=> b!3767378 m!4263777))

(assert (=> b!3767378 m!4263771))

(assert (=> b!3767378 m!4263781))

(assert (=> b!3767378 m!4263779))

(declare-fun m!4263783 () Bool)

(assert (=> b!3767378 m!4263783))

(declare-fun m!4263785 () Bool)

(assert (=> b!3767379 m!4263785))

(assert (=> b!3767379 m!4263767))

(declare-fun m!4263787 () Bool)

(assert (=> b!3767379 m!4263787))

(declare-fun m!4263789 () Bool)

(assert (=> b!3767379 m!4263789))

(assert (=> b!3767379 m!4262323))

(assert (=> b!3767379 m!4263765))

(assert (=> b!3767379 m!4263785))

(assert (=> b!3767379 m!4263767))

(assert (=> b!3767379 m!4263787))

(assert (=> b!3767379 m!4263765))

(assert (=> b!3767379 m!4262323))

(assert (=> b!3767384 m!4263781))

(assert (=> b!3767384 m!4263777))

(assert (=> b!3767384 m!4263077))

(assert (=> b!3767384 m!4263781))

(assert (=> b!3767384 m!4263777))

(assert (=> b!3767384 m!4263077))

(declare-fun m!4263791 () Bool)

(assert (=> b!3767384 m!4263791))

(assert (=> b!3767383 m!4262323))

(declare-fun m!4263793 () Bool)

(assert (=> b!3767383 m!4263793))

(assert (=> b!3767383 m!4263787))

(assert (=> b!3767383 m!4262323))

(assert (=> b!3767383 m!4263793))

(assert (=> b!3767383 m!4263787))

(declare-fun m!4263795 () Bool)

(assert (=> b!3767383 m!4263795))

(assert (=> d!1100976 d!1101346))

(assert (=> d!1100976 d!1101306))

(declare-fun d!1101348 () Bool)

(declare-fun e!2330069 () Bool)

(assert (=> d!1101348 e!2330069))

(declare-fun res!1525193 () Bool)

(assert (=> d!1101348 (=> res!1525193 e!2330069)))

(declare-fun lt!1303395 () Bool)

(assert (=> d!1101348 (= res!1525193 (not lt!1303395))))

(assert (=> d!1101348 (= lt!1303395 (= lt!1303117 (drop!2107 (++!9983 lt!1303118 lt!1303117) (- (size!30259 (++!9983 lt!1303118 lt!1303117)) (size!30259 lt!1303117)))))))

(assert (=> d!1101348 (= (isSuffix!950 lt!1303117 (++!9983 lt!1303118 lt!1303117)) lt!1303395)))

(declare-fun b!3767387 () Bool)

(assert (=> b!3767387 (= e!2330069 (>= (size!30259 (++!9983 lt!1303118 lt!1303117)) (size!30259 lt!1303117)))))

(assert (= (and d!1101348 (not res!1525193)) b!3767387))

(assert (=> d!1101348 m!4262245))

(declare-fun m!4263797 () Bool)

(assert (=> d!1101348 m!4263797))

(assert (=> d!1101348 m!4262487))

(assert (=> d!1101348 m!4262245))

(declare-fun m!4263799 () Bool)

(assert (=> d!1101348 m!4263799))

(assert (=> b!3767387 m!4262245))

(assert (=> b!3767387 m!4263797))

(assert (=> b!3767387 m!4262487))

(assert (=> d!1101008 d!1101348))

(assert (=> d!1101008 d!1100962))

(declare-fun d!1101350 () Bool)

(assert (=> d!1101350 (isSuffix!950 lt!1303117 (++!9983 lt!1303118 lt!1303117))))

(assert (=> d!1101350 true))

(declare-fun _$47!876 () Unit!57916)

(assert (=> d!1101350 (= (choose!22299 lt!1303118 lt!1303117) _$47!876)))

(declare-fun bs!576092 () Bool)

(assert (= bs!576092 d!1101350))

(assert (=> bs!576092 m!4262245))

(assert (=> bs!576092 m!4262245))

(assert (=> bs!576092 m!4262641))

(assert (=> d!1101008 d!1101350))

(declare-fun d!1101352 () Bool)

(declare-fun res!1525198 () Bool)

(declare-fun e!2330074 () Bool)

(assert (=> d!1101352 (=> res!1525198 e!2330074)))

(assert (=> d!1101352 (= res!1525198 ((_ is Nil!40205) rules!1265))))

(assert (=> d!1101352 (= (forall!8245 rules!1265 lambda!125299) e!2330074)))

(declare-fun b!3767392 () Bool)

(declare-fun e!2330075 () Bool)

(assert (=> b!3767392 (= e!2330074 e!2330075)))

(declare-fun res!1525199 () Bool)

(assert (=> b!3767392 (=> (not res!1525199) (not e!2330075))))

(declare-fun dynLambda!17362 (Int Rule!12152) Bool)

(assert (=> b!3767392 (= res!1525199 (dynLambda!17362 lambda!125299 (h!45625 rules!1265)))))

(declare-fun b!3767393 () Bool)

(assert (=> b!3767393 (= e!2330075 (forall!8245 (t!304356 rules!1265) lambda!125299))))

(assert (= (and d!1101352 (not res!1525198)) b!3767392))

(assert (= (and b!3767392 res!1525199) b!3767393))

(declare-fun b_lambda!110503 () Bool)

(assert (=> (not b_lambda!110503) (not b!3767392)))

(declare-fun m!4263801 () Bool)

(assert (=> b!3767392 m!4263801))

(declare-fun m!4263803 () Bool)

(assert (=> b!3767393 m!4263803))

(assert (=> d!1100998 d!1101352))

(declare-fun b!3767395 () Bool)

(declare-fun e!2330076 () List!40327)

(assert (=> b!3767395 (= e!2330076 (Cons!40203 (h!45623 (t!304354 lt!1303118)) (++!9983 (t!304354 (t!304354 lt!1303118)) lt!1303117)))))

(declare-fun b!3767396 () Bool)

(declare-fun res!1525200 () Bool)

(declare-fun e!2330077 () Bool)

(assert (=> b!3767396 (=> (not res!1525200) (not e!2330077))))

(declare-fun lt!1303396 () List!40327)

(assert (=> b!3767396 (= res!1525200 (= (size!30259 lt!1303396) (+ (size!30259 (t!304354 lt!1303118)) (size!30259 lt!1303117))))))

(declare-fun b!3767397 () Bool)

(assert (=> b!3767397 (= e!2330077 (or (not (= lt!1303117 Nil!40203)) (= lt!1303396 (t!304354 lt!1303118))))))

(declare-fun b!3767394 () Bool)

(assert (=> b!3767394 (= e!2330076 lt!1303117)))

(declare-fun d!1101354 () Bool)

(assert (=> d!1101354 e!2330077))

(declare-fun res!1525201 () Bool)

(assert (=> d!1101354 (=> (not res!1525201) (not e!2330077))))

(assert (=> d!1101354 (= res!1525201 (= (content!5906 lt!1303396) ((_ map or) (content!5906 (t!304354 lt!1303118)) (content!5906 lt!1303117))))))

(assert (=> d!1101354 (= lt!1303396 e!2330076)))

(declare-fun c!652667 () Bool)

(assert (=> d!1101354 (= c!652667 ((_ is Nil!40203) (t!304354 lt!1303118)))))

(assert (=> d!1101354 (= (++!9983 (t!304354 lt!1303118) lt!1303117) lt!1303396)))

(assert (= (and d!1101354 c!652667) b!3767394))

(assert (= (and d!1101354 (not c!652667)) b!3767395))

(assert (= (and d!1101354 res!1525201) b!3767396))

(assert (= (and b!3767396 res!1525200) b!3767397))

(declare-fun m!4263805 () Bool)

(assert (=> b!3767395 m!4263805))

(declare-fun m!4263807 () Bool)

(assert (=> b!3767396 m!4263807))

(assert (=> b!3767396 m!4263433))

(assert (=> b!3767396 m!4262487))

(declare-fun m!4263809 () Bool)

(assert (=> d!1101354 m!4263809))

(assert (=> d!1101354 m!4263579))

(assert (=> d!1101354 m!4262493))

(assert (=> b!3766294 d!1101354))

(declare-fun b!3767398 () Bool)

(declare-fun res!1525207 () Bool)

(declare-fun e!2330079 () Bool)

(assert (=> b!3767398 (=> (not res!1525207) (not e!2330079))))

(assert (=> b!3767398 (= res!1525207 (isBalanced!3546 (left!31115 (c!652408 totalInput!335))))))

(declare-fun b!3767399 () Bool)

(declare-fun res!1525205 () Bool)

(assert (=> b!3767399 (=> (not res!1525205) (not e!2330079))))

(assert (=> b!3767399 (= res!1525205 (not (isEmpty!23615 (left!31115 (c!652408 totalInput!335)))))))

(declare-fun d!1101356 () Bool)

(declare-fun res!1525202 () Bool)

(declare-fun e!2330078 () Bool)

(assert (=> d!1101356 (=> res!1525202 e!2330078)))

(assert (=> d!1101356 (= res!1525202 (not ((_ is Node!12326) (c!652408 totalInput!335))))))

(assert (=> d!1101356 (= (isBalanced!3546 (c!652408 totalInput!335)) e!2330078)))

(declare-fun b!3767400 () Bool)

(assert (=> b!3767400 (= e!2330079 (not (isEmpty!23615 (right!31445 (c!652408 totalInput!335)))))))

(declare-fun b!3767401 () Bool)

(declare-fun res!1525203 () Bool)

(assert (=> b!3767401 (=> (not res!1525203) (not e!2330079))))

(assert (=> b!3767401 (= res!1525203 (isBalanced!3546 (right!31445 (c!652408 totalInput!335))))))

(declare-fun b!3767402 () Bool)

(assert (=> b!3767402 (= e!2330078 e!2330079)))

(declare-fun res!1525204 () Bool)

(assert (=> b!3767402 (=> (not res!1525204) (not e!2330079))))

(assert (=> b!3767402 (= res!1525204 (<= (- 1) (- (height!1764 (left!31115 (c!652408 totalInput!335))) (height!1764 (right!31445 (c!652408 totalInput!335))))))))

(declare-fun b!3767403 () Bool)

(declare-fun res!1525206 () Bool)

(assert (=> b!3767403 (=> (not res!1525206) (not e!2330079))))

(assert (=> b!3767403 (= res!1525206 (<= (- (height!1764 (left!31115 (c!652408 totalInput!335))) (height!1764 (right!31445 (c!652408 totalInput!335)))) 1))))

(assert (= (and d!1101356 (not res!1525202)) b!3767402))

(assert (= (and b!3767402 res!1525204) b!3767403))

(assert (= (and b!3767403 res!1525206) b!3767398))

(assert (= (and b!3767398 res!1525207) b!3767401))

(assert (= (and b!3767401 res!1525203) b!3767399))

(assert (= (and b!3767399 res!1525205) b!3767400))

(declare-fun m!4263811 () Bool)

(assert (=> b!3767400 m!4263811))

(declare-fun m!4263813 () Bool)

(assert (=> b!3767398 m!4263813))

(assert (=> b!3767403 m!4263753))

(assert (=> b!3767403 m!4263755))

(assert (=> b!3767402 m!4263753))

(assert (=> b!3767402 m!4263755))

(declare-fun m!4263815 () Bool)

(assert (=> b!3767401 m!4263815))

(declare-fun m!4263817 () Bool)

(assert (=> b!3767399 m!4263817))

(assert (=> d!1100988 d!1101356))

(declare-fun b!3767404 () Bool)

(declare-fun res!1525213 () Bool)

(declare-fun e!2330081 () Bool)

(assert (=> b!3767404 (=> (not res!1525213) (not e!2330081))))

(assert (=> b!3767404 (= res!1525213 (isBalanced!3546 (left!31115 (c!652408 input!678))))))

(declare-fun b!3767405 () Bool)

(declare-fun res!1525211 () Bool)

(assert (=> b!3767405 (=> (not res!1525211) (not e!2330081))))

(assert (=> b!3767405 (= res!1525211 (not (isEmpty!23615 (left!31115 (c!652408 input!678)))))))

(declare-fun d!1101358 () Bool)

(declare-fun res!1525208 () Bool)

(declare-fun e!2330080 () Bool)

(assert (=> d!1101358 (=> res!1525208 e!2330080)))

(assert (=> d!1101358 (= res!1525208 (not ((_ is Node!12326) (c!652408 input!678))))))

(assert (=> d!1101358 (= (isBalanced!3546 (c!652408 input!678)) e!2330080)))

(declare-fun b!3767406 () Bool)

(assert (=> b!3767406 (= e!2330081 (not (isEmpty!23615 (right!31445 (c!652408 input!678)))))))

(declare-fun b!3767407 () Bool)

(declare-fun res!1525209 () Bool)

(assert (=> b!3767407 (=> (not res!1525209) (not e!2330081))))

(assert (=> b!3767407 (= res!1525209 (isBalanced!3546 (right!31445 (c!652408 input!678))))))

(declare-fun b!3767408 () Bool)

(assert (=> b!3767408 (= e!2330080 e!2330081)))

(declare-fun res!1525210 () Bool)

(assert (=> b!3767408 (=> (not res!1525210) (not e!2330081))))

(assert (=> b!3767408 (= res!1525210 (<= (- 1) (- (height!1764 (left!31115 (c!652408 input!678))) (height!1764 (right!31445 (c!652408 input!678))))))))

(declare-fun b!3767409 () Bool)

(declare-fun res!1525212 () Bool)

(assert (=> b!3767409 (=> (not res!1525212) (not e!2330081))))

(assert (=> b!3767409 (= res!1525212 (<= (- (height!1764 (left!31115 (c!652408 input!678))) (height!1764 (right!31445 (c!652408 input!678)))) 1))))

(assert (= (and d!1101358 (not res!1525208)) b!3767408))

(assert (= (and b!3767408 res!1525210) b!3767409))

(assert (= (and b!3767409 res!1525212) b!3767404))

(assert (= (and b!3767404 res!1525213) b!3767407))

(assert (= (and b!3767407 res!1525209) b!3767405))

(assert (= (and b!3767405 res!1525211) b!3767406))

(declare-fun m!4263819 () Bool)

(assert (=> b!3767406 m!4263819))

(declare-fun m!4263821 () Bool)

(assert (=> b!3767404 m!4263821))

(assert (=> b!3767409 m!4263491))

(assert (=> b!3767409 m!4263493))

(assert (=> b!3767408 m!4263491))

(assert (=> b!3767408 m!4263493))

(declare-fun m!4263823 () Bool)

(assert (=> b!3767407 m!4263823))

(declare-fun m!4263825 () Bool)

(assert (=> b!3767405 m!4263825))

(assert (=> d!1100982 d!1101358))

(declare-fun b!3767410 () Bool)

(declare-fun e!2330082 () List!40327)

(assert (=> b!3767410 (= e!2330082 Nil!40203)))

(declare-fun b!3767413 () Bool)

(declare-fun e!2330083 () List!40327)

(assert (=> b!3767413 (= e!2330083 (++!9983 (list!14868 (left!31115 (c!652408 input!678))) (list!14868 (right!31445 (c!652408 input!678)))))))

(declare-fun b!3767412 () Bool)

(assert (=> b!3767412 (= e!2330083 (list!14872 (xs!15536 (c!652408 input!678))))))

(declare-fun b!3767411 () Bool)

(assert (=> b!3767411 (= e!2330082 e!2330083)))

(declare-fun c!652669 () Bool)

(assert (=> b!3767411 (= c!652669 ((_ is Leaf!19112) (c!652408 input!678)))))

(declare-fun d!1101360 () Bool)

(declare-fun c!652668 () Bool)

(assert (=> d!1101360 (= c!652668 ((_ is Empty!12326) (c!652408 input!678)))))

(assert (=> d!1101360 (= (list!14868 (c!652408 input!678)) e!2330082)))

(assert (= (and d!1101360 c!652668) b!3767410))

(assert (= (and d!1101360 (not c!652668)) b!3767411))

(assert (= (and b!3767411 c!652669) b!3767412))

(assert (= (and b!3767411 (not c!652669)) b!3767413))

(declare-fun m!4263827 () Bool)

(assert (=> b!3767413 m!4263827))

(declare-fun m!4263829 () Bool)

(assert (=> b!3767413 m!4263829))

(assert (=> b!3767413 m!4263827))

(assert (=> b!3767413 m!4263829))

(declare-fun m!4263831 () Bool)

(assert (=> b!3767413 m!4263831))

(assert (=> b!3767412 m!4263529))

(assert (=> d!1100966 d!1101360))

(declare-fun b!3767416 () Bool)

(declare-fun e!2330085 () List!40328)

(assert (=> b!3767416 (= e!2330085 (list!14871 (xs!15537 (c!652409 acc!335))))))

(declare-fun d!1101362 () Bool)

(declare-fun c!652670 () Bool)

(assert (=> d!1101362 (= c!652670 ((_ is Empty!12327) (c!652409 acc!335)))))

(declare-fun e!2330084 () List!40328)

(assert (=> d!1101362 (= (list!14867 (c!652409 acc!335)) e!2330084)))

(declare-fun b!3767414 () Bool)

(assert (=> b!3767414 (= e!2330084 Nil!40204)))

(declare-fun b!3767415 () Bool)

(assert (=> b!3767415 (= e!2330084 e!2330085)))

(declare-fun c!652671 () Bool)

(assert (=> b!3767415 (= c!652671 ((_ is Leaf!19113) (c!652409 acc!335)))))

(declare-fun b!3767417 () Bool)

(assert (=> b!3767417 (= e!2330085 (++!9987 (list!14867 (left!31116 (c!652409 acc!335))) (list!14867 (right!31446 (c!652409 acc!335)))))))

(assert (= (and d!1101362 c!652670) b!3767414))

(assert (= (and d!1101362 (not c!652670)) b!3767415))

(assert (= (and b!3767415 c!652671) b!3767416))

(assert (= (and b!3767415 (not c!652671)) b!3767417))

(assert (=> b!3767416 m!4263727))

(assert (=> b!3767417 m!4263771))

(assert (=> b!3767417 m!4263773))

(assert (=> b!3767417 m!4263771))

(assert (=> b!3767417 m!4263773))

(declare-fun m!4263833 () Bool)

(assert (=> b!3767417 m!4263833))

(assert (=> d!1100908 d!1101362))

(declare-fun d!1101364 () Bool)

(declare-fun c!652672 () Bool)

(assert (=> d!1101364 (= c!652672 ((_ is Node!12327) (left!31116 (c!652409 acc!335))))))

(declare-fun e!2330086 () Bool)

(assert (=> d!1101364 (= (inv!53984 (left!31116 (c!652409 acc!335))) e!2330086)))

(declare-fun b!3767418 () Bool)

(assert (=> b!3767418 (= e!2330086 (inv!53995 (left!31116 (c!652409 acc!335))))))

(declare-fun b!3767419 () Bool)

(declare-fun e!2330087 () Bool)

(assert (=> b!3767419 (= e!2330086 e!2330087)))

(declare-fun res!1525214 () Bool)

(assert (=> b!3767419 (= res!1525214 (not ((_ is Leaf!19113) (left!31116 (c!652409 acc!335)))))))

(assert (=> b!3767419 (=> res!1525214 e!2330087)))

(declare-fun b!3767420 () Bool)

(assert (=> b!3767420 (= e!2330087 (inv!53996 (left!31116 (c!652409 acc!335))))))

(assert (= (and d!1101364 c!652672) b!3767418))

(assert (= (and d!1101364 (not c!652672)) b!3767419))

(assert (= (and b!3767419 (not res!1525214)) b!3767420))

(declare-fun m!4263835 () Bool)

(assert (=> b!3767418 m!4263835))

(declare-fun m!4263837 () Bool)

(assert (=> b!3767420 m!4263837))

(assert (=> b!3766481 d!1101364))

(declare-fun d!1101366 () Bool)

(declare-fun c!652673 () Bool)

(assert (=> d!1101366 (= c!652673 ((_ is Node!12327) (right!31446 (c!652409 acc!335))))))

(declare-fun e!2330088 () Bool)

(assert (=> d!1101366 (= (inv!53984 (right!31446 (c!652409 acc!335))) e!2330088)))

(declare-fun b!3767421 () Bool)

(assert (=> b!3767421 (= e!2330088 (inv!53995 (right!31446 (c!652409 acc!335))))))

(declare-fun b!3767422 () Bool)

(declare-fun e!2330089 () Bool)

(assert (=> b!3767422 (= e!2330088 e!2330089)))

(declare-fun res!1525215 () Bool)

(assert (=> b!3767422 (= res!1525215 (not ((_ is Leaf!19113) (right!31446 (c!652409 acc!335)))))))

(assert (=> b!3767422 (=> res!1525215 e!2330089)))

(declare-fun b!3767423 () Bool)

(assert (=> b!3767423 (= e!2330089 (inv!53996 (right!31446 (c!652409 acc!335))))))

(assert (= (and d!1101366 c!652673) b!3767421))

(assert (= (and d!1101366 (not c!652673)) b!3767422))

(assert (= (and b!3767422 (not res!1525215)) b!3767423))

(declare-fun m!4263839 () Bool)

(assert (=> b!3767421 m!4263839))

(declare-fun m!4263841 () Bool)

(assert (=> b!3767423 m!4263841))

(assert (=> b!3766481 d!1101366))

(declare-fun d!1101368 () Bool)

(assert (=> d!1101368 true))

(declare-fun lambda!125319 () Int)

(declare-fun order!21931 () Int)

(declare-fun order!21933 () Int)

(declare-fun dynLambda!17363 (Int Int) Int)

(declare-fun dynLambda!17364 (Int Int) Int)

(assert (=> d!1101368 (< (dynLambda!17363 order!21931 (toChars!8395 (transformation!6176 (h!45625 rules!1265)))) (dynLambda!17364 order!21933 lambda!125319))))

(assert (=> d!1101368 true))

(assert (=> d!1101368 (< (dynLambda!17360 order!21927 (toValue!8536 (transformation!6176 (h!45625 rules!1265)))) (dynLambda!17364 order!21933 lambda!125319))))

(declare-fun Forall!1404 (Int) Bool)

(assert (=> d!1101368 (= (semiInverseModEq!2643 (toChars!8395 (transformation!6176 (h!45625 rules!1265))) (toValue!8536 (transformation!6176 (h!45625 rules!1265)))) (Forall!1404 lambda!125319))))

(declare-fun bs!576093 () Bool)

(assert (= bs!576093 d!1101368))

(declare-fun m!4263843 () Bool)

(assert (=> bs!576093 m!4263843))

(assert (=> d!1100996 d!1101368))

(assert (=> b!3766423 d!1101280))

(assert (=> b!3766423 d!1101244))

(assert (=> b!3766165 d!1100990))

(assert (=> b!3766300 d!1101272))

(declare-fun b!3767428 () Bool)

(declare-fun e!2330090 () Bool)

(declare-fun lt!1303399 () tuple2!39246)

(assert (=> b!3767428 (= e!2330090 (not (isEmpty!23614 (_1!22757 lt!1303399))))))

(declare-fun d!1101370 () Bool)

(declare-fun e!2330092 () Bool)

(assert (=> d!1101370 e!2330092))

(declare-fun c!652674 () Bool)

(assert (=> d!1101370 (= c!652674 (> (size!30262 (_1!22757 lt!1303399)) 0))))

(declare-fun e!2330091 () tuple2!39246)

(assert (=> d!1101370 (= lt!1303399 e!2330091)))

(declare-fun c!652675 () Bool)

(declare-fun lt!1303398 () Option!8578)

(assert (=> d!1101370 (= c!652675 ((_ is Some!8577) lt!1303398))))

(assert (=> d!1101370 (= lt!1303398 (maxPrefix!3097 thiss!11876 rules!1265 (list!14863 totalInput!335)))))

(assert (=> d!1101370 (= (lexList!1545 thiss!11876 rules!1265 (list!14863 totalInput!335)) lt!1303399)))

(declare-fun b!3767429 () Bool)

(assert (=> b!3767429 (= e!2330092 e!2330090)))

(declare-fun res!1525216 () Bool)

(assert (=> b!3767429 (= res!1525216 (< (size!30259 (_2!22757 lt!1303399)) (size!30259 (list!14863 totalInput!335))))))

(assert (=> b!3767429 (=> (not res!1525216) (not e!2330090))))

(declare-fun b!3767430 () Bool)

(declare-fun lt!1303397 () tuple2!39246)

(assert (=> b!3767430 (= e!2330091 (tuple2!39247 (Cons!40204 (_1!22760 (v!38743 lt!1303398)) (_1!22757 lt!1303397)) (_2!22757 lt!1303397)))))

(assert (=> b!3767430 (= lt!1303397 (lexList!1545 thiss!11876 rules!1265 (_2!22760 (v!38743 lt!1303398))))))

(declare-fun b!3767431 () Bool)

(assert (=> b!3767431 (= e!2330092 (= (_2!22757 lt!1303399) (list!14863 totalInput!335)))))

(declare-fun b!3767432 () Bool)

(assert (=> b!3767432 (= e!2330091 (tuple2!39247 Nil!40204 (list!14863 totalInput!335)))))

(assert (= (and d!1101370 c!652675) b!3767430))

(assert (= (and d!1101370 (not c!652675)) b!3767432))

(assert (= (and d!1101370 c!652674) b!3767429))

(assert (= (and d!1101370 (not c!652674)) b!3767431))

(assert (= (and b!3767429 res!1525216) b!3767428))

(declare-fun m!4263845 () Bool)

(assert (=> b!3767428 m!4263845))

(declare-fun m!4263847 () Bool)

(assert (=> d!1101370 m!4263847))

(assert (=> d!1101370 m!4262247))

(assert (=> d!1101370 m!4263607))

(declare-fun m!4263849 () Bool)

(assert (=> b!3767429 m!4263849))

(assert (=> b!3767429 m!4262247))

(assert (=> b!3767429 m!4263467))

(declare-fun m!4263851 () Bool)

(assert (=> b!3767430 m!4263851))

(assert (=> b!3766300 d!1101370))

(assert (=> b!3766300 d!1100964))

(declare-fun d!1101372 () Bool)

(declare-fun lt!1303400 () Int)

(assert (=> d!1101372 (= lt!1303400 (size!30259 (list!14863 (_2!22754 lt!1303170))))))

(assert (=> d!1101372 (= lt!1303400 (size!30265 (c!652408 (_2!22754 lt!1303170))))))

(assert (=> d!1101372 (= (size!30257 (_2!22754 lt!1303170)) lt!1303400)))

(declare-fun bs!576094 () Bool)

(assert (= bs!576094 d!1101372))

(assert (=> bs!576094 m!4262553))

(assert (=> bs!576094 m!4262553))

(declare-fun m!4263853 () Bool)

(assert (=> bs!576094 m!4263853))

(declare-fun m!4263855 () Bool)

(assert (=> bs!576094 m!4263855))

(assert (=> b!3766316 d!1101372))

(declare-fun d!1101374 () Bool)

(declare-fun lt!1303401 () Int)

(assert (=> d!1101374 (= lt!1303401 (size!30259 (list!14863 input!678)))))

(assert (=> d!1101374 (= lt!1303401 (size!30265 (c!652408 input!678)))))

(assert (=> d!1101374 (= (size!30257 input!678) lt!1303401)))

(declare-fun bs!576095 () Bool)

(assert (= bs!576095 d!1101374))

(assert (=> bs!576095 m!4262249))

(assert (=> bs!576095 m!4262249))

(assert (=> bs!576095 m!4263557))

(declare-fun m!4263857 () Bool)

(assert (=> bs!576095 m!4263857))

(assert (=> b!3766316 d!1101374))

(declare-fun b!3767433 () Bool)

(declare-fun e!2330093 () List!40327)

(assert (=> b!3767433 (= e!2330093 Nil!40203)))

(declare-fun b!3767436 () Bool)

(declare-fun e!2330094 () List!40327)

(assert (=> b!3767436 (= e!2330094 (++!9983 (list!14868 (left!31115 (c!652408 treated!13))) (list!14868 (right!31445 (c!652408 treated!13)))))))

(declare-fun b!3767435 () Bool)

(assert (=> b!3767435 (= e!2330094 (list!14872 (xs!15536 (c!652408 treated!13))))))

(declare-fun b!3767434 () Bool)

(assert (=> b!3767434 (= e!2330093 e!2330094)))

(declare-fun c!652677 () Bool)

(assert (=> b!3767434 (= c!652677 ((_ is Leaf!19112) (c!652408 treated!13)))))

(declare-fun d!1101376 () Bool)

(declare-fun c!652676 () Bool)

(assert (=> d!1101376 (= c!652676 ((_ is Empty!12326) (c!652408 treated!13)))))

(assert (=> d!1101376 (= (list!14868 (c!652408 treated!13)) e!2330093)))

(assert (= (and d!1101376 c!652676) b!3767433))

(assert (= (and d!1101376 (not c!652676)) b!3767434))

(assert (= (and b!3767434 c!652677) b!3767435))

(assert (= (and b!3767434 (not c!652677)) b!3767436))

(declare-fun m!4263859 () Bool)

(assert (=> b!3767436 m!4263859))

(declare-fun m!4263861 () Bool)

(assert (=> b!3767436 m!4263861))

(assert (=> b!3767436 m!4263859))

(assert (=> b!3767436 m!4263861))

(declare-fun m!4263863 () Bool)

(assert (=> b!3767436 m!4263863))

(declare-fun m!4263865 () Bool)

(assert (=> b!3767435 m!4263865))

(assert (=> d!1100968 d!1101376))

(declare-fun d!1101378 () Bool)

(assert (=> d!1101378 (= (list!14864 (_1!22754 lt!1303164)) (list!14867 (c!652409 (_1!22754 lt!1303164))))))

(declare-fun bs!576096 () Bool)

(assert (= bs!576096 d!1101378))

(declare-fun m!4263867 () Bool)

(assert (=> bs!576096 m!4263867))

(assert (=> b!3766302 d!1101378))

(assert (=> b!3766302 d!1101370))

(assert (=> b!3766302 d!1100964))

(declare-fun d!1101380 () Bool)

(declare-fun lt!1303402 () Bool)

(assert (=> d!1101380 (= lt!1303402 (isEmpty!23614 (list!14864 (_1!22754 lt!1303170))))))

(assert (=> d!1101380 (= lt!1303402 (isEmpty!23616 (c!652409 (_1!22754 lt!1303170))))))

(assert (=> d!1101380 (= (isEmpty!23610 (_1!22754 lt!1303170)) lt!1303402)))

(declare-fun bs!576097 () Bool)

(assert (= bs!576097 d!1101380))

(assert (=> bs!576097 m!4262549))

(assert (=> bs!576097 m!4262549))

(declare-fun m!4263869 () Bool)

(assert (=> bs!576097 m!4263869))

(declare-fun m!4263871 () Bool)

(assert (=> bs!576097 m!4263871))

(assert (=> b!3766318 d!1101380))

(declare-fun d!1101382 () Bool)

(declare-fun c!652678 () Bool)

(assert (=> d!1101382 (= c!652678 ((_ is Node!12326) (left!31115 (c!652408 treated!13))))))

(declare-fun e!2330095 () Bool)

(assert (=> d!1101382 (= (inv!53985 (left!31115 (c!652408 treated!13))) e!2330095)))

(declare-fun b!3767437 () Bool)

(assert (=> b!3767437 (= e!2330095 (inv!53997 (left!31115 (c!652408 treated!13))))))

(declare-fun b!3767438 () Bool)

(declare-fun e!2330096 () Bool)

(assert (=> b!3767438 (= e!2330095 e!2330096)))

(declare-fun res!1525217 () Bool)

(assert (=> b!3767438 (= res!1525217 (not ((_ is Leaf!19112) (left!31115 (c!652408 treated!13)))))))

(assert (=> b!3767438 (=> res!1525217 e!2330096)))

(declare-fun b!3767439 () Bool)

(assert (=> b!3767439 (= e!2330096 (inv!53998 (left!31115 (c!652408 treated!13))))))

(assert (= (and d!1101382 c!652678) b!3767437))

(assert (= (and d!1101382 (not c!652678)) b!3767438))

(assert (= (and b!3767438 (not res!1525217)) b!3767439))

(declare-fun m!4263873 () Bool)

(assert (=> b!3767437 m!4263873))

(declare-fun m!4263875 () Bool)

(assert (=> b!3767439 m!4263875))

(assert (=> b!3766470 d!1101382))

(declare-fun d!1101384 () Bool)

(declare-fun c!652679 () Bool)

(assert (=> d!1101384 (= c!652679 ((_ is Node!12326) (right!31445 (c!652408 treated!13))))))

(declare-fun e!2330097 () Bool)

(assert (=> d!1101384 (= (inv!53985 (right!31445 (c!652408 treated!13))) e!2330097)))

(declare-fun b!3767440 () Bool)

(assert (=> b!3767440 (= e!2330097 (inv!53997 (right!31445 (c!652408 treated!13))))))

(declare-fun b!3767441 () Bool)

(declare-fun e!2330098 () Bool)

(assert (=> b!3767441 (= e!2330097 e!2330098)))

(declare-fun res!1525218 () Bool)

(assert (=> b!3767441 (= res!1525218 (not ((_ is Leaf!19112) (right!31445 (c!652408 treated!13)))))))

(assert (=> b!3767441 (=> res!1525218 e!2330098)))

(declare-fun b!3767442 () Bool)

(assert (=> b!3767442 (= e!2330098 (inv!53998 (right!31445 (c!652408 treated!13))))))

(assert (= (and d!1101384 c!652679) b!3767440))

(assert (= (and d!1101384 (not c!652679)) b!3767441))

(assert (= (and b!3767441 (not res!1525218)) b!3767442))

(declare-fun m!4263877 () Bool)

(assert (=> b!3767440 m!4263877))

(declare-fun m!4263879 () Bool)

(assert (=> b!3767442 m!4263879))

(assert (=> b!3766470 d!1101384))

(declare-fun d!1101386 () Bool)

(declare-fun res!1525219 () Bool)

(declare-fun e!2330099 () Bool)

(assert (=> d!1101386 (=> (not res!1525219) (not e!2330099))))

(assert (=> d!1101386 (= res!1525219 (= (csize!24882 (c!652408 treated!13)) (+ (size!30265 (left!31115 (c!652408 treated!13))) (size!30265 (right!31445 (c!652408 treated!13))))))))

(assert (=> d!1101386 (= (inv!53997 (c!652408 treated!13)) e!2330099)))

(declare-fun b!3767443 () Bool)

(declare-fun res!1525220 () Bool)

(assert (=> b!3767443 (=> (not res!1525220) (not e!2330099))))

(assert (=> b!3767443 (= res!1525220 (and (not (= (left!31115 (c!652408 treated!13)) Empty!12326)) (not (= (right!31445 (c!652408 treated!13)) Empty!12326))))))

(declare-fun b!3767444 () Bool)

(declare-fun res!1525221 () Bool)

(assert (=> b!3767444 (=> (not res!1525221) (not e!2330099))))

(assert (=> b!3767444 (= res!1525221 (= (cheight!12537 (c!652408 treated!13)) (+ (max!0 (height!1764 (left!31115 (c!652408 treated!13))) (height!1764 (right!31445 (c!652408 treated!13)))) 1)))))

(declare-fun b!3767445 () Bool)

(assert (=> b!3767445 (= e!2330099 (<= 0 (cheight!12537 (c!652408 treated!13))))))

(assert (= (and d!1101386 res!1525219) b!3767443))

(assert (= (and b!3767443 res!1525220) b!3767444))

(assert (= (and b!3767444 res!1525221) b!3767445))

(declare-fun m!4263881 () Bool)

(assert (=> d!1101386 m!4263881))

(declare-fun m!4263883 () Bool)

(assert (=> d!1101386 m!4263883))

(assert (=> b!3767444 m!4263351))

(assert (=> b!3767444 m!4263353))

(assert (=> b!3767444 m!4263351))

(assert (=> b!3767444 m!4263353))

(declare-fun m!4263885 () Bool)

(assert (=> b!3767444 m!4263885))

(assert (=> b!3766428 d!1101386))

(declare-fun b!3767448 () Bool)

(declare-fun e!2330101 () List!40328)

(assert (=> b!3767448 (= e!2330101 (list!14871 (xs!15537 (c!652409 (_1!22754 lt!1303113)))))))

(declare-fun d!1101388 () Bool)

(declare-fun c!652680 () Bool)

(assert (=> d!1101388 (= c!652680 ((_ is Empty!12327) (c!652409 (_1!22754 lt!1303113))))))

(declare-fun e!2330100 () List!40328)

(assert (=> d!1101388 (= (list!14867 (c!652409 (_1!22754 lt!1303113))) e!2330100)))

(declare-fun b!3767446 () Bool)

(assert (=> b!3767446 (= e!2330100 Nil!40204)))

(declare-fun b!3767447 () Bool)

(assert (=> b!3767447 (= e!2330100 e!2330101)))

(declare-fun c!652681 () Bool)

(assert (=> b!3767447 (= c!652681 ((_ is Leaf!19113) (c!652409 (_1!22754 lt!1303113))))))

(declare-fun b!3767449 () Bool)

(assert (=> b!3767449 (= e!2330101 (++!9987 (list!14867 (left!31116 (c!652409 (_1!22754 lt!1303113)))) (list!14867 (right!31446 (c!652409 (_1!22754 lt!1303113))))))))

(assert (= (and d!1101388 c!652680) b!3767446))

(assert (= (and d!1101388 (not c!652680)) b!3767447))

(assert (= (and b!3767447 c!652681) b!3767448))

(assert (= (and b!3767447 (not c!652681)) b!3767449))

(declare-fun m!4263887 () Bool)

(assert (=> b!3767448 m!4263887))

(declare-fun m!4263889 () Bool)

(assert (=> b!3767449 m!4263889))

(declare-fun m!4263891 () Bool)

(assert (=> b!3767449 m!4263891))

(assert (=> b!3767449 m!4263889))

(assert (=> b!3767449 m!4263891))

(declare-fun m!4263893 () Bool)

(assert (=> b!3767449 m!4263893))

(assert (=> d!1100972 d!1101388))

(declare-fun b!3767450 () Bool)

(declare-fun e!2330102 () Int)

(declare-fun e!2330104 () Int)

(assert (=> b!3767450 (= e!2330102 e!2330104)))

(declare-fun call!275668 () Int)

(declare-fun c!652682 () Bool)

(assert (=> b!3767450 (= c!652682 (>= (- (size!30259 lt!1303115) (size!30259 lt!1303117)) call!275668))))

(declare-fun bm!275663 () Bool)

(assert (=> bm!275663 (= call!275668 (size!30259 lt!1303115))))

(declare-fun b!3767451 () Bool)

(declare-fun e!2330103 () List!40327)

(assert (=> b!3767451 (= e!2330103 Nil!40203)))

(declare-fun b!3767452 () Bool)

(declare-fun e!2330105 () List!40327)

(assert (=> b!3767452 (= e!2330105 (drop!2107 (t!304354 lt!1303115) (- (- (size!30259 lt!1303115) (size!30259 lt!1303117)) 1)))))

(declare-fun b!3767453 () Bool)

(assert (=> b!3767453 (= e!2330104 (- call!275668 (- (size!30259 lt!1303115) (size!30259 lt!1303117))))))

(declare-fun b!3767454 () Bool)

(assert (=> b!3767454 (= e!2330102 call!275668)))

(declare-fun b!3767455 () Bool)

(assert (=> b!3767455 (= e!2330105 lt!1303115)))

(declare-fun d!1101390 () Bool)

(declare-fun e!2330106 () Bool)

(assert (=> d!1101390 e!2330106))

(declare-fun res!1525222 () Bool)

(assert (=> d!1101390 (=> (not res!1525222) (not e!2330106))))

(declare-fun lt!1303403 () List!40327)

(assert (=> d!1101390 (= res!1525222 (= ((_ map implies) (content!5906 lt!1303403) (content!5906 lt!1303115)) ((as const (InoxSet C!22348)) true)))))

(assert (=> d!1101390 (= lt!1303403 e!2330103)))

(declare-fun c!652685 () Bool)

(assert (=> d!1101390 (= c!652685 ((_ is Nil!40203) lt!1303115))))

(assert (=> d!1101390 (= (drop!2107 lt!1303115 (- (size!30259 lt!1303115) (size!30259 lt!1303117))) lt!1303403)))

(declare-fun b!3767456 () Bool)

(assert (=> b!3767456 (= e!2330106 (= (size!30259 lt!1303403) e!2330102))))

(declare-fun c!652683 () Bool)

(assert (=> b!3767456 (= c!652683 (<= (- (size!30259 lt!1303115) (size!30259 lt!1303117)) 0))))

(declare-fun b!3767457 () Bool)

(assert (=> b!3767457 (= e!2330103 e!2330105)))

(declare-fun c!652684 () Bool)

(assert (=> b!3767457 (= c!652684 (<= (- (size!30259 lt!1303115) (size!30259 lt!1303117)) 0))))

(declare-fun b!3767458 () Bool)

(assert (=> b!3767458 (= e!2330104 0)))

(assert (= (and d!1101390 c!652685) b!3767451))

(assert (= (and d!1101390 (not c!652685)) b!3767457))

(assert (= (and b!3767457 c!652684) b!3767455))

(assert (= (and b!3767457 (not c!652684)) b!3767452))

(assert (= (and d!1101390 res!1525222) b!3767456))

(assert (= (and b!3767456 c!652683) b!3767454))

(assert (= (and b!3767456 (not c!652683)) b!3767450))

(assert (= (and b!3767450 c!652682) b!3767458))

(assert (= (and b!3767450 (not c!652682)) b!3767453))

(assert (= (or b!3767454 b!3767450 b!3767453) bm!275663))

(assert (=> bm!275663 m!4262637))

(declare-fun m!4263895 () Bool)

(assert (=> b!3767452 m!4263895))

(declare-fun m!4263897 () Bool)

(assert (=> d!1101390 m!4263897))

(declare-fun m!4263899 () Bool)

(assert (=> d!1101390 m!4263899))

(declare-fun m!4263901 () Bool)

(assert (=> b!3767456 m!4263901))

(assert (=> d!1101006 d!1101390))

(assert (=> d!1101006 d!1101316))

(assert (=> d!1101006 d!1101244))

(declare-fun d!1101392 () Bool)

(declare-fun e!2330107 () Bool)

(assert (=> d!1101392 e!2330107))

(declare-fun res!1525223 () Bool)

(assert (=> d!1101392 (=> (not res!1525223) (not e!2330107))))

(assert (=> d!1101392 (= res!1525223 (isBalanced!3545 (prepend!1314 (c!652409 (_1!22754 lt!1303169)) (_1!22758 (v!38739 lt!1303168)))))))

(declare-fun lt!1303404 () BalanceConc!24248)

(assert (=> d!1101392 (= lt!1303404 (BalanceConc!24249 (prepend!1314 (c!652409 (_1!22754 lt!1303169)) (_1!22758 (v!38739 lt!1303168)))))))

(assert (=> d!1101392 (= (prepend!1312 (_1!22754 lt!1303169) (_1!22758 (v!38739 lt!1303168))) lt!1303404)))

(declare-fun b!3767459 () Bool)

(assert (=> b!3767459 (= e!2330107 (= (list!14864 lt!1303404) (Cons!40204 (_1!22758 (v!38739 lt!1303168)) (list!14864 (_1!22754 lt!1303169)))))))

(assert (= (and d!1101392 res!1525223) b!3767459))

(declare-fun m!4263903 () Bool)

(assert (=> d!1101392 m!4263903))

(assert (=> d!1101392 m!4263903))

(declare-fun m!4263905 () Bool)

(assert (=> d!1101392 m!4263905))

(declare-fun m!4263907 () Bool)

(assert (=> b!3767459 m!4263907))

(declare-fun m!4263909 () Bool)

(assert (=> b!3767459 m!4263909))

(assert (=> b!3766320 d!1101392))

(declare-fun b!3767460 () Bool)

(declare-fun e!2330111 () Bool)

(declare-fun e!2330108 () Bool)

(assert (=> b!3767460 (= e!2330111 e!2330108)))

(declare-fun res!1525224 () Bool)

(declare-fun lt!1303407 () tuple2!39240)

(assert (=> b!3767460 (= res!1525224 (< (size!30257 (_2!22754 lt!1303407)) (size!30257 (_2!22758 (v!38739 lt!1303168)))))))

(assert (=> b!3767460 (=> (not res!1525224) (not e!2330108))))

(declare-fun b!3767461 () Bool)

(declare-fun e!2330109 () tuple2!39240)

(assert (=> b!3767461 (= e!2330109 (tuple2!39241 (BalanceConc!24249 Empty!12327) (_2!22758 (v!38739 lt!1303168))))))

(declare-fun b!3767462 () Bool)

(assert (=> b!3767462 (= e!2330108 (not (isEmpty!23610 (_1!22754 lt!1303407))))))

(declare-fun e!2330110 () Bool)

(declare-fun b!3767463 () Bool)

(assert (=> b!3767463 (= e!2330110 (= (list!14863 (_2!22754 lt!1303407)) (_2!22757 (lexList!1545 thiss!11876 rules!1265 (list!14863 (_2!22758 (v!38739 lt!1303168)))))))))

(declare-fun b!3767464 () Bool)

(declare-fun lt!1303406 () tuple2!39240)

(declare-fun lt!1303405 () Option!8576)

(assert (=> b!3767464 (= e!2330109 (tuple2!39241 (prepend!1312 (_1!22754 lt!1303406) (_1!22758 (v!38739 lt!1303405))) (_2!22754 lt!1303406)))))

(assert (=> b!3767464 (= lt!1303406 (lexRec!789 thiss!11876 rules!1265 (_2!22758 (v!38739 lt!1303405))))))

(declare-fun d!1101394 () Bool)

(assert (=> d!1101394 e!2330110))

(declare-fun res!1525226 () Bool)

(assert (=> d!1101394 (=> (not res!1525226) (not e!2330110))))

(assert (=> d!1101394 (= res!1525226 e!2330111)))

(declare-fun c!652687 () Bool)

(assert (=> d!1101394 (= c!652687 (> (size!30258 (_1!22754 lt!1303407)) 0))))

(assert (=> d!1101394 (= lt!1303407 e!2330109)))

(declare-fun c!652686 () Bool)

(assert (=> d!1101394 (= c!652686 ((_ is Some!8575) lt!1303405))))

(assert (=> d!1101394 (= lt!1303405 (maxPrefixZipperSequence!1179 thiss!11876 rules!1265 (_2!22758 (v!38739 lt!1303168))))))

(assert (=> d!1101394 (= (lexRec!789 thiss!11876 rules!1265 (_2!22758 (v!38739 lt!1303168))) lt!1303407)))

(declare-fun b!3767465 () Bool)

(declare-fun res!1525225 () Bool)

(assert (=> b!3767465 (=> (not res!1525225) (not e!2330110))))

(assert (=> b!3767465 (= res!1525225 (= (list!14864 (_1!22754 lt!1303407)) (_1!22757 (lexList!1545 thiss!11876 rules!1265 (list!14863 (_2!22758 (v!38739 lt!1303168)))))))))

(declare-fun b!3767466 () Bool)

(assert (=> b!3767466 (= e!2330111 (= (list!14863 (_2!22754 lt!1303407)) (list!14863 (_2!22758 (v!38739 lt!1303168)))))))

(assert (= (and d!1101394 c!652686) b!3767464))

(assert (= (and d!1101394 (not c!652686)) b!3767461))

(assert (= (and d!1101394 c!652687) b!3767460))

(assert (= (and d!1101394 (not c!652687)) b!3767466))

(assert (= (and b!3767460 res!1525224) b!3767462))

(assert (= (and d!1101394 res!1525226) b!3767465))

(assert (= (and b!3767465 res!1525225) b!3767463))

(declare-fun m!4263911 () Bool)

(assert (=> d!1101394 m!4263911))

(declare-fun m!4263913 () Bool)

(assert (=> d!1101394 m!4263913))

(declare-fun m!4263915 () Bool)

(assert (=> b!3767465 m!4263915))

(declare-fun m!4263917 () Bool)

(assert (=> b!3767465 m!4263917))

(assert (=> b!3767465 m!4263917))

(declare-fun m!4263919 () Bool)

(assert (=> b!3767465 m!4263919))

(declare-fun m!4263921 () Bool)

(assert (=> b!3767466 m!4263921))

(assert (=> b!3767466 m!4263917))

(declare-fun m!4263923 () Bool)

(assert (=> b!3767462 m!4263923))

(declare-fun m!4263925 () Bool)

(assert (=> b!3767460 m!4263925))

(declare-fun m!4263927 () Bool)

(assert (=> b!3767460 m!4263927))

(declare-fun m!4263929 () Bool)

(assert (=> b!3767464 m!4263929))

(declare-fun m!4263931 () Bool)

(assert (=> b!3767464 m!4263931))

(assert (=> b!3767463 m!4263921))

(assert (=> b!3767463 m!4263917))

(assert (=> b!3767463 m!4263917))

(assert (=> b!3767463 m!4263919))

(assert (=> b!3766320 d!1101394))

(declare-fun d!1101396 () Bool)

(declare-fun res!1525231 () Bool)

(declare-fun e!2330114 () Bool)

(assert (=> d!1101396 (=> (not res!1525231) (not e!2330114))))

(declare-fun validRegex!5054 (Regex!11081) Bool)

(assert (=> d!1101396 (= res!1525231 (validRegex!5054 (regex!6176 (h!45625 rules!1265))))))

(assert (=> d!1101396 (= (ruleValid!2168 thiss!11876 (h!45625 rules!1265)) e!2330114)))

(declare-fun b!3767471 () Bool)

(declare-fun res!1525232 () Bool)

(assert (=> b!3767471 (=> (not res!1525232) (not e!2330114))))

(declare-fun nullable!3855 (Regex!11081) Bool)

(assert (=> b!3767471 (= res!1525232 (not (nullable!3855 (regex!6176 (h!45625 rules!1265)))))))

(declare-fun b!3767472 () Bool)

(assert (=> b!3767472 (= e!2330114 (not (= (tag!7036 (h!45625 rules!1265)) (String!45713 ""))))))

(assert (= (and d!1101396 res!1525231) b!3767471))

(assert (= (and b!3767471 res!1525232) b!3767472))

(declare-fun m!4263933 () Bool)

(assert (=> d!1101396 m!4263933))

(declare-fun m!4263935 () Bool)

(assert (=> b!3767471 m!4263935))

(assert (=> b!3766417 d!1101396))

(declare-fun b!3767473 () Bool)

(declare-fun res!1525233 () Bool)

(declare-fun e!2330116 () Bool)

(assert (=> b!3767473 (=> (not res!1525233) (not e!2330116))))

(assert (=> b!3767473 (= res!1525233 (isBalanced!3545 (left!31116 (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112))))))))

(declare-fun b!3767474 () Bool)

(declare-fun res!1525237 () Bool)

(assert (=> b!3767474 (=> (not res!1525237) (not e!2330116))))

(assert (=> b!3767474 (= res!1525237 (not (isEmpty!23616 (left!31116 (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112)))))))))

(declare-fun b!3767475 () Bool)

(declare-fun e!2330115 () Bool)

(assert (=> b!3767475 (= e!2330115 e!2330116)))

(declare-fun res!1525235 () Bool)

(assert (=> b!3767475 (=> (not res!1525235) (not e!2330116))))

(assert (=> b!3767475 (= res!1525235 (<= (- 1) (- (height!1762 (left!31116 (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112))))) (height!1762 (right!31446 (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112))))))))))

(declare-fun b!3767476 () Bool)

(assert (=> b!3767476 (= e!2330116 (not (isEmpty!23616 (right!31446 (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112)))))))))

(declare-fun b!3767477 () Bool)

(declare-fun res!1525234 () Bool)

(assert (=> b!3767477 (=> (not res!1525234) (not e!2330116))))

(assert (=> b!3767477 (= res!1525234 (isBalanced!3545 (right!31446 (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112))))))))

(declare-fun b!3767478 () Bool)

(declare-fun res!1525236 () Bool)

(assert (=> b!3767478 (=> (not res!1525236) (not e!2330116))))

(assert (=> b!3767478 (= res!1525236 (<= (- (height!1762 (left!31116 (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112))))) (height!1762 (right!31446 (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112)))))) 1))))

(declare-fun d!1101398 () Bool)

(declare-fun res!1525238 () Bool)

(assert (=> d!1101398 (=> res!1525238 e!2330115)))

(assert (=> d!1101398 (= res!1525238 (not ((_ is Node!12327) (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112))))))))

(assert (=> d!1101398 (= (isBalanced!3545 (++!9988 (c!652409 acc!335) (c!652409 (_1!22754 lt!1303112)))) e!2330115)))

(assert (= (and d!1101398 (not res!1525238)) b!3767475))

(assert (= (and b!3767475 res!1525235) b!3767478))

(assert (= (and b!3767478 res!1525236) b!3767473))

(assert (= (and b!3767473 res!1525233) b!3767477))

(assert (= (and b!3767477 res!1525234) b!3767474))

(assert (= (and b!3767474 res!1525237) b!3767476))

(declare-fun m!4263937 () Bool)

(assert (=> b!3767474 m!4263937))

(declare-fun m!4263939 () Bool)

(assert (=> b!3767473 m!4263939))

(declare-fun m!4263941 () Bool)

(assert (=> b!3767478 m!4263941))

(declare-fun m!4263943 () Bool)

(assert (=> b!3767478 m!4263943))

(assert (=> b!3767475 m!4263941))

(assert (=> b!3767475 m!4263943))

(declare-fun m!4263945 () Bool)

(assert (=> b!3767477 m!4263945))

(declare-fun m!4263947 () Bool)

(assert (=> b!3767476 m!4263947))

(assert (=> b!3766312 d!1101398))

(assert (=> b!3766312 d!1101306))

(declare-fun d!1101400 () Bool)

(declare-fun res!1525239 () Bool)

(declare-fun e!2330117 () Bool)

(assert (=> d!1101400 (=> (not res!1525239) (not e!2330117))))

(assert (=> d!1101400 (= res!1525239 (<= (size!30259 (list!14872 (xs!15536 (c!652408 treated!13)))) 512))))

(assert (=> d!1101400 (= (inv!53998 (c!652408 treated!13)) e!2330117)))

(declare-fun b!3767479 () Bool)

(declare-fun res!1525240 () Bool)

(assert (=> b!3767479 (=> (not res!1525240) (not e!2330117))))

(assert (=> b!3767479 (= res!1525240 (= (csize!24883 (c!652408 treated!13)) (size!30259 (list!14872 (xs!15536 (c!652408 treated!13))))))))

(declare-fun b!3767480 () Bool)

(assert (=> b!3767480 (= e!2330117 (and (> (csize!24883 (c!652408 treated!13)) 0) (<= (csize!24883 (c!652408 treated!13)) 512)))))

(assert (= (and d!1101400 res!1525239) b!3767479))

(assert (= (and b!3767479 res!1525240) b!3767480))

(assert (=> d!1101400 m!4263865))

(assert (=> d!1101400 m!4263865))

(declare-fun m!4263949 () Bool)

(assert (=> d!1101400 m!4263949))

(assert (=> b!3767479 m!4263865))

(assert (=> b!3767479 m!4263865))

(assert (=> b!3767479 m!4263949))

(assert (=> b!3766430 d!1101400))

(declare-fun d!1101402 () Bool)

(declare-fun lt!1303408 () Int)

(assert (=> d!1101402 (= lt!1303408 (size!30259 (list!14863 (_2!22754 lt!1303158))))))

(assert (=> d!1101402 (= lt!1303408 (size!30265 (c!652408 (_2!22754 lt!1303158))))))

(assert (=> d!1101402 (= (size!30257 (_2!22754 lt!1303158)) lt!1303408)))

(declare-fun bs!576098 () Bool)

(assert (= bs!576098 d!1101402))

(assert (=> bs!576098 m!4262467))

(assert (=> bs!576098 m!4262467))

(declare-fun m!4263951 () Bool)

(assert (=> bs!576098 m!4263951))

(declare-fun m!4263953 () Bool)

(assert (=> bs!576098 m!4263953))

(assert (=> b!3766278 d!1101402))

(declare-fun d!1101404 () Bool)

(declare-fun lt!1303409 () Int)

(assert (=> d!1101404 (= lt!1303409 (size!30259 (list!14863 treated!13)))))

(assert (=> d!1101404 (= lt!1303409 (size!30265 (c!652408 treated!13)))))

(assert (=> d!1101404 (= (size!30257 treated!13) lt!1303409)))

(declare-fun bs!576099 () Bool)

(assert (= bs!576099 d!1101404))

(assert (=> bs!576099 m!4262251))

(assert (=> bs!576099 m!4262251))

(assert (=> bs!576099 m!4263301))

(declare-fun m!4263955 () Bool)

(assert (=> bs!576099 m!4263955))

(assert (=> b!3766278 d!1101404))

(declare-fun tp!1150839 () Bool)

(declare-fun b!3767481 () Bool)

(declare-fun e!2330119 () Bool)

(declare-fun tp!1150837 () Bool)

(assert (=> b!3767481 (= e!2330119 (and (inv!53984 (left!31116 (left!31116 (c!652409 acc!335)))) tp!1150837 (inv!53984 (right!31446 (left!31116 (c!652409 acc!335)))) tp!1150839))))

(declare-fun b!3767483 () Bool)

(declare-fun e!2330118 () Bool)

(declare-fun tp!1150838 () Bool)

(assert (=> b!3767483 (= e!2330118 tp!1150838)))

(declare-fun b!3767482 () Bool)

(assert (=> b!3767482 (= e!2330119 (and (inv!54000 (xs!15537 (left!31116 (c!652409 acc!335)))) e!2330118))))

(assert (=> b!3766481 (= tp!1150753 (and (inv!53984 (left!31116 (c!652409 acc!335))) e!2330119))))

(assert (= (and b!3766481 ((_ is Node!12327) (left!31116 (c!652409 acc!335)))) b!3767481))

(assert (= b!3767482 b!3767483))

(assert (= (and b!3766481 ((_ is Leaf!19113) (left!31116 (c!652409 acc!335)))) b!3767482))

(declare-fun m!4263957 () Bool)

(assert (=> b!3767481 m!4263957))

(declare-fun m!4263959 () Bool)

(assert (=> b!3767481 m!4263959))

(declare-fun m!4263961 () Bool)

(assert (=> b!3767482 m!4263961))

(assert (=> b!3766481 m!4262677))

(declare-fun b!3767484 () Bool)

(declare-fun e!2330121 () Bool)

(declare-fun tp!1150842 () Bool)

(declare-fun tp!1150840 () Bool)

(assert (=> b!3767484 (= e!2330121 (and (inv!53984 (left!31116 (right!31446 (c!652409 acc!335)))) tp!1150840 (inv!53984 (right!31446 (right!31446 (c!652409 acc!335)))) tp!1150842))))

(declare-fun b!3767486 () Bool)

(declare-fun e!2330120 () Bool)

(declare-fun tp!1150841 () Bool)

(assert (=> b!3767486 (= e!2330120 tp!1150841)))

(declare-fun b!3767485 () Bool)

(assert (=> b!3767485 (= e!2330121 (and (inv!54000 (xs!15537 (right!31446 (c!652409 acc!335)))) e!2330120))))

(assert (=> b!3766481 (= tp!1150755 (and (inv!53984 (right!31446 (c!652409 acc!335))) e!2330121))))

(assert (= (and b!3766481 ((_ is Node!12327) (right!31446 (c!652409 acc!335)))) b!3767484))

(assert (= b!3767485 b!3767486))

(assert (= (and b!3766481 ((_ is Leaf!19113) (right!31446 (c!652409 acc!335)))) b!3767485))

(declare-fun m!4263963 () Bool)

(assert (=> b!3767484 m!4263963))

(declare-fun m!4263965 () Bool)

(assert (=> b!3767484 m!4263965))

(declare-fun m!4263967 () Bool)

(assert (=> b!3767485 m!4263967))

(assert (=> b!3766481 m!4262679))

(declare-fun b!3767489 () Bool)

(declare-fun b_free!100929 () Bool)

(declare-fun b_next!101633 () Bool)

(assert (=> b!3767489 (= b_free!100929 (not b_next!101633))))

(declare-fun tp!1150845 () Bool)

(declare-fun b_and!279743 () Bool)

(assert (=> b!3767489 (= tp!1150845 b_and!279743)))

(declare-fun b_free!100931 () Bool)

(declare-fun b_next!101635 () Bool)

(assert (=> b!3767489 (= b_free!100931 (not b_next!101635))))

(declare-fun tp!1150843 () Bool)

(declare-fun b_and!279745 () Bool)

(assert (=> b!3767489 (= tp!1150843 b_and!279745)))

(declare-fun e!2330124 () Bool)

(assert (=> b!3767489 (= e!2330124 (and tp!1150845 tp!1150843))))

(declare-fun e!2330122 () Bool)

(declare-fun tp!1150846 () Bool)

(declare-fun b!3767488 () Bool)

(assert (=> b!3767488 (= e!2330122 (and tp!1150846 (inv!53978 (tag!7036 (h!45625 (t!304356 (t!304356 rules!1265))))) (inv!53988 (transformation!6176 (h!45625 (t!304356 (t!304356 rules!1265))))) e!2330124))))

(declare-fun b!3767487 () Bool)

(declare-fun e!2330123 () Bool)

(declare-fun tp!1150844 () Bool)

(assert (=> b!3767487 (= e!2330123 (and e!2330122 tp!1150844))))

(assert (=> b!3766456 (= tp!1150732 e!2330123)))

(assert (= b!3767488 b!3767489))

(assert (= b!3767487 b!3767488))

(assert (= (and b!3766456 ((_ is Cons!40205) (t!304356 (t!304356 rules!1265)))) b!3767487))

(declare-fun m!4263969 () Bool)

(assert (=> b!3767488 m!4263969))

(declare-fun m!4263971 () Bool)

(assert (=> b!3767488 m!4263971))

(declare-fun b!3767491 () Bool)

(declare-fun e!2330126 () Bool)

(declare-fun tp!1150848 () Bool)

(declare-fun tp!1150847 () Bool)

(assert (=> b!3767491 (= e!2330126 (and tp!1150848 tp!1150847))))

(declare-fun b!3767492 () Bool)

(declare-fun tp!1150851 () Bool)

(assert (=> b!3767492 (= e!2330126 tp!1150851)))

(declare-fun b!3767490 () Bool)

(assert (=> b!3767490 (= e!2330126 tp_is_empty!19153)))

(declare-fun b!3767493 () Bool)

(declare-fun tp!1150849 () Bool)

(declare-fun tp!1150850 () Bool)

(assert (=> b!3767493 (= e!2330126 (and tp!1150849 tp!1150850))))

(assert (=> b!3766457 (= tp!1150734 e!2330126)))

(assert (= (and b!3766457 ((_ is ElementMatch!11081) (regex!6176 (h!45625 (t!304356 rules!1265))))) b!3767490))

(assert (= (and b!3766457 ((_ is Concat!17488) (regex!6176 (h!45625 (t!304356 rules!1265))))) b!3767491))

(assert (= (and b!3766457 ((_ is Star!11081) (regex!6176 (h!45625 (t!304356 rules!1265))))) b!3767492))

(assert (= (and b!3766457 ((_ is Union!11081) (regex!6176 (h!45625 (t!304356 rules!1265))))) b!3767493))

(declare-fun b!3767507 () Bool)

(declare-fun b_free!100933 () Bool)

(declare-fun b_next!101637 () Bool)

(assert (=> b!3767507 (= b_free!100933 (not b_next!101637))))

(declare-fun tp!1150866 () Bool)

(declare-fun b_and!279747 () Bool)

(assert (=> b!3767507 (= tp!1150866 b_and!279747)))

(declare-fun b_free!100935 () Bool)

(declare-fun b_next!101639 () Bool)

(assert (=> b!3767507 (= b_free!100935 (not b_next!101639))))

(declare-fun tp!1150864 () Bool)

(declare-fun b_and!279749 () Bool)

(assert (=> b!3767507 (= tp!1150864 b_and!279749)))

(declare-fun e!2330143 () Bool)

(assert (=> b!3767507 (= e!2330143 (and tp!1150866 tp!1150864))))

(declare-fun e!2330142 () Bool)

(declare-fun b!3767504 () Bool)

(declare-fun e!2330141 () Bool)

(declare-fun tp!1150862 () Bool)

(declare-fun inv!54002 (Token!11490) Bool)

(assert (=> b!3767504 (= e!2330142 (and (inv!54002 (h!45624 (innerList!12387 (xs!15537 (c!652409 acc!335))))) e!2330141 tp!1150862))))

(declare-fun b!3767506 () Bool)

(declare-fun e!2330144 () Bool)

(declare-fun tp!1150863 () Bool)

(assert (=> b!3767506 (= e!2330144 (and tp!1150863 (inv!53978 (tag!7036 (rule!8940 (h!45624 (innerList!12387 (xs!15537 (c!652409 acc!335))))))) (inv!53988 (transformation!6176 (rule!8940 (h!45624 (innerList!12387 (xs!15537 (c!652409 acc!335))))))) e!2330143))))

(assert (=> b!3766483 (= tp!1150754 e!2330142)))

(declare-fun b!3767505 () Bool)

(declare-fun tp!1150865 () Bool)

(declare-fun inv!21 (TokenValue!6406) Bool)

(assert (=> b!3767505 (= e!2330141 (and (inv!21 (value!196623 (h!45624 (innerList!12387 (xs!15537 (c!652409 acc!335)))))) e!2330144 tp!1150865))))

(assert (= b!3767506 b!3767507))

(assert (= b!3767505 b!3767506))

(assert (= b!3767504 b!3767505))

(assert (= (and b!3766483 ((_ is Cons!40204) (innerList!12387 (xs!15537 (c!652409 acc!335))))) b!3767504))

(declare-fun m!4263973 () Bool)

(assert (=> b!3767504 m!4263973))

(declare-fun m!4263975 () Bool)

(assert (=> b!3767506 m!4263975))

(declare-fun m!4263977 () Bool)

(assert (=> b!3767506 m!4263977))

(declare-fun m!4263979 () Bool)

(assert (=> b!3767505 m!4263979))

(declare-fun b!3767508 () Bool)

(declare-fun tp!1150868 () Bool)

(declare-fun e!2330146 () Bool)

(declare-fun tp!1150869 () Bool)

(assert (=> b!3767508 (= e!2330146 (and (inv!53985 (left!31115 (left!31115 (c!652408 input!678)))) tp!1150869 (inv!53985 (right!31445 (left!31115 (c!652408 input!678)))) tp!1150868))))

(declare-fun b!3767510 () Bool)

(declare-fun e!2330145 () Bool)

(declare-fun tp!1150867 () Bool)

(assert (=> b!3767510 (= e!2330145 tp!1150867)))

(declare-fun b!3767509 () Bool)

(assert (=> b!3767509 (= e!2330146 (and (inv!53999 (xs!15536 (left!31115 (c!652408 input!678)))) e!2330145))))

(assert (=> b!3766484 (= tp!1150758 (and (inv!53985 (left!31115 (c!652408 input!678))) e!2330146))))

(assert (= (and b!3766484 ((_ is Node!12326) (left!31115 (c!652408 input!678)))) b!3767508))

(assert (= b!3767509 b!3767510))

(assert (= (and b!3766484 ((_ is Leaf!19112) (left!31115 (c!652408 input!678)))) b!3767509))

(declare-fun m!4263981 () Bool)

(assert (=> b!3767508 m!4263981))

(declare-fun m!4263983 () Bool)

(assert (=> b!3767508 m!4263983))

(declare-fun m!4263985 () Bool)

(assert (=> b!3767509 m!4263985))

(assert (=> b!3766484 m!4262683))

(declare-fun e!2330148 () Bool)

(declare-fun tp!1150872 () Bool)

(declare-fun tp!1150871 () Bool)

(declare-fun b!3767511 () Bool)

(assert (=> b!3767511 (= e!2330148 (and (inv!53985 (left!31115 (right!31445 (c!652408 input!678)))) tp!1150872 (inv!53985 (right!31445 (right!31445 (c!652408 input!678)))) tp!1150871))))

(declare-fun b!3767513 () Bool)

(declare-fun e!2330147 () Bool)

(declare-fun tp!1150870 () Bool)

(assert (=> b!3767513 (= e!2330147 tp!1150870)))

(declare-fun b!3767512 () Bool)

(assert (=> b!3767512 (= e!2330148 (and (inv!53999 (xs!15536 (right!31445 (c!652408 input!678)))) e!2330147))))

(assert (=> b!3766484 (= tp!1150757 (and (inv!53985 (right!31445 (c!652408 input!678))) e!2330148))))

(assert (= (and b!3766484 ((_ is Node!12326) (right!31445 (c!652408 input!678)))) b!3767511))

(assert (= b!3767512 b!3767513))

(assert (= (and b!3766484 ((_ is Leaf!19112) (right!31445 (c!652408 input!678)))) b!3767512))

(declare-fun m!4263987 () Bool)

(assert (=> b!3767511 m!4263987))

(declare-fun m!4263989 () Bool)

(assert (=> b!3767511 m!4263989))

(declare-fun m!4263991 () Bool)

(assert (=> b!3767512 m!4263991))

(assert (=> b!3766484 m!4262685))

(declare-fun e!2330150 () Bool)

(declare-fun tp!1150874 () Bool)

(declare-fun b!3767514 () Bool)

(declare-fun tp!1150875 () Bool)

(assert (=> b!3767514 (= e!2330150 (and (inv!53985 (left!31115 (left!31115 (c!652408 totalInput!335)))) tp!1150875 (inv!53985 (right!31445 (left!31115 (c!652408 totalInput!335)))) tp!1150874))))

(declare-fun b!3767516 () Bool)

(declare-fun e!2330149 () Bool)

(declare-fun tp!1150873 () Bool)

(assert (=> b!3767516 (= e!2330149 tp!1150873)))

(declare-fun b!3767515 () Bool)

(assert (=> b!3767515 (= e!2330150 (and (inv!53999 (xs!15536 (left!31115 (c!652408 totalInput!335)))) e!2330149))))

(assert (=> b!3766467 (= tp!1150743 (and (inv!53985 (left!31115 (c!652408 totalInput!335))) e!2330150))))

(assert (= (and b!3766467 ((_ is Node!12326) (left!31115 (c!652408 totalInput!335)))) b!3767514))

(assert (= b!3767515 b!3767516))

(assert (= (and b!3766467 ((_ is Leaf!19112) (left!31115 (c!652408 totalInput!335)))) b!3767515))

(declare-fun m!4263993 () Bool)

(assert (=> b!3767514 m!4263993))

(declare-fun m!4263995 () Bool)

(assert (=> b!3767514 m!4263995))

(declare-fun m!4263997 () Bool)

(assert (=> b!3767515 m!4263997))

(assert (=> b!3766467 m!4262665))

(declare-fun b!3767517 () Bool)

(declare-fun tp!1150877 () Bool)

(declare-fun tp!1150878 () Bool)

(declare-fun e!2330152 () Bool)

(assert (=> b!3767517 (= e!2330152 (and (inv!53985 (left!31115 (right!31445 (c!652408 totalInput!335)))) tp!1150878 (inv!53985 (right!31445 (right!31445 (c!652408 totalInput!335)))) tp!1150877))))

(declare-fun b!3767519 () Bool)

(declare-fun e!2330151 () Bool)

(declare-fun tp!1150876 () Bool)

(assert (=> b!3767519 (= e!2330151 tp!1150876)))

(declare-fun b!3767518 () Bool)

(assert (=> b!3767518 (= e!2330152 (and (inv!53999 (xs!15536 (right!31445 (c!652408 totalInput!335)))) e!2330151))))

(assert (=> b!3766467 (= tp!1150742 (and (inv!53985 (right!31445 (c!652408 totalInput!335))) e!2330152))))

(assert (= (and b!3766467 ((_ is Node!12326) (right!31445 (c!652408 totalInput!335)))) b!3767517))

(assert (= b!3767518 b!3767519))

(assert (= (and b!3766467 ((_ is Leaf!19112) (right!31445 (c!652408 totalInput!335)))) b!3767518))

(declare-fun m!4263999 () Bool)

(assert (=> b!3767517 m!4263999))

(declare-fun m!4264001 () Bool)

(assert (=> b!3767517 m!4264001))

(declare-fun m!4264003 () Bool)

(assert (=> b!3767518 m!4264003))

(assert (=> b!3766467 m!4262667))

(declare-fun b!3767521 () Bool)

(declare-fun e!2330153 () Bool)

(declare-fun tp!1150880 () Bool)

(declare-fun tp!1150879 () Bool)

(assert (=> b!3767521 (= e!2330153 (and tp!1150880 tp!1150879))))

(declare-fun b!3767522 () Bool)

(declare-fun tp!1150883 () Bool)

(assert (=> b!3767522 (= e!2330153 tp!1150883)))

(declare-fun b!3767520 () Bool)

(assert (=> b!3767520 (= e!2330153 tp_is_empty!19153)))

(declare-fun b!3767523 () Bool)

(declare-fun tp!1150881 () Bool)

(declare-fun tp!1150882 () Bool)

(assert (=> b!3767523 (= e!2330153 (and tp!1150881 tp!1150882))))

(assert (=> b!3766445 (= tp!1150719 e!2330153)))

(assert (= (and b!3766445 ((_ is ElementMatch!11081) (regOne!22674 (regex!6176 (h!45625 rules!1265))))) b!3767520))

(assert (= (and b!3766445 ((_ is Concat!17488) (regOne!22674 (regex!6176 (h!45625 rules!1265))))) b!3767521))

(assert (= (and b!3766445 ((_ is Star!11081) (regOne!22674 (regex!6176 (h!45625 rules!1265))))) b!3767522))

(assert (= (and b!3766445 ((_ is Union!11081) (regOne!22674 (regex!6176 (h!45625 rules!1265))))) b!3767523))

(declare-fun b!3767525 () Bool)

(declare-fun e!2330154 () Bool)

(declare-fun tp!1150885 () Bool)

(declare-fun tp!1150884 () Bool)

(assert (=> b!3767525 (= e!2330154 (and tp!1150885 tp!1150884))))

(declare-fun b!3767526 () Bool)

(declare-fun tp!1150888 () Bool)

(assert (=> b!3767526 (= e!2330154 tp!1150888)))

(declare-fun b!3767524 () Bool)

(assert (=> b!3767524 (= e!2330154 tp_is_empty!19153)))

(declare-fun b!3767527 () Bool)

(declare-fun tp!1150886 () Bool)

(declare-fun tp!1150887 () Bool)

(assert (=> b!3767527 (= e!2330154 (and tp!1150886 tp!1150887))))

(assert (=> b!3766445 (= tp!1150718 e!2330154)))

(assert (= (and b!3766445 ((_ is ElementMatch!11081) (regTwo!22674 (regex!6176 (h!45625 rules!1265))))) b!3767524))

(assert (= (and b!3766445 ((_ is Concat!17488) (regTwo!22674 (regex!6176 (h!45625 rules!1265))))) b!3767525))

(assert (= (and b!3766445 ((_ is Star!11081) (regTwo!22674 (regex!6176 (h!45625 rules!1265))))) b!3767526))

(assert (= (and b!3766445 ((_ is Union!11081) (regTwo!22674 (regex!6176 (h!45625 rules!1265))))) b!3767527))

(declare-fun b!3767529 () Bool)

(declare-fun e!2330155 () Bool)

(declare-fun tp!1150890 () Bool)

(declare-fun tp!1150889 () Bool)

(assert (=> b!3767529 (= e!2330155 (and tp!1150890 tp!1150889))))

(declare-fun b!3767530 () Bool)

(declare-fun tp!1150893 () Bool)

(assert (=> b!3767530 (= e!2330155 tp!1150893)))

(declare-fun b!3767528 () Bool)

(assert (=> b!3767528 (= e!2330155 tp_is_empty!19153)))

(declare-fun b!3767531 () Bool)

(declare-fun tp!1150891 () Bool)

(declare-fun tp!1150892 () Bool)

(assert (=> b!3767531 (= e!2330155 (and tp!1150891 tp!1150892))))

(assert (=> b!3766446 (= tp!1150722 e!2330155)))

(assert (= (and b!3766446 ((_ is ElementMatch!11081) (reg!11410 (regex!6176 (h!45625 rules!1265))))) b!3767528))

(assert (= (and b!3766446 ((_ is Concat!17488) (reg!11410 (regex!6176 (h!45625 rules!1265))))) b!3767529))

(assert (= (and b!3766446 ((_ is Star!11081) (reg!11410 (regex!6176 (h!45625 rules!1265))))) b!3767530))

(assert (= (and b!3766446 ((_ is Union!11081) (reg!11410 (regex!6176 (h!45625 rules!1265))))) b!3767531))

(declare-fun b!3767536 () Bool)

(declare-fun e!2330158 () Bool)

(declare-fun tp!1150896 () Bool)

(assert (=> b!3767536 (= e!2330158 (and tp_is_empty!19153 tp!1150896))))

(assert (=> b!3766486 (= tp!1150756 e!2330158)))

(assert (= (and b!3766486 ((_ is Cons!40203) (innerList!12386 (xs!15536 (c!652408 input!678))))) b!3767536))

(declare-fun b!3767537 () Bool)

(declare-fun e!2330159 () Bool)

(declare-fun tp!1150897 () Bool)

(assert (=> b!3767537 (= e!2330159 (and tp_is_empty!19153 tp!1150897))))

(assert (=> b!3766469 (= tp!1150741 e!2330159)))

(assert (= (and b!3766469 ((_ is Cons!40203) (innerList!12386 (xs!15536 (c!652408 totalInput!335))))) b!3767537))

(declare-fun b!3767539 () Bool)

(declare-fun e!2330160 () Bool)

(declare-fun tp!1150899 () Bool)

(declare-fun tp!1150898 () Bool)

(assert (=> b!3767539 (= e!2330160 (and tp!1150899 tp!1150898))))

(declare-fun b!3767540 () Bool)

(declare-fun tp!1150902 () Bool)

(assert (=> b!3767540 (= e!2330160 tp!1150902)))

(declare-fun b!3767538 () Bool)

(assert (=> b!3767538 (= e!2330160 tp_is_empty!19153)))

(declare-fun b!3767541 () Bool)

(declare-fun tp!1150900 () Bool)

(declare-fun tp!1150901 () Bool)

(assert (=> b!3767541 (= e!2330160 (and tp!1150900 tp!1150901))))

(assert (=> b!3766447 (= tp!1150720 e!2330160)))

(assert (= (and b!3766447 ((_ is ElementMatch!11081) (regOne!22675 (regex!6176 (h!45625 rules!1265))))) b!3767538))

(assert (= (and b!3766447 ((_ is Concat!17488) (regOne!22675 (regex!6176 (h!45625 rules!1265))))) b!3767539))

(assert (= (and b!3766447 ((_ is Star!11081) (regOne!22675 (regex!6176 (h!45625 rules!1265))))) b!3767540))

(assert (= (and b!3766447 ((_ is Union!11081) (regOne!22675 (regex!6176 (h!45625 rules!1265))))) b!3767541))

(declare-fun b!3767543 () Bool)

(declare-fun e!2330161 () Bool)

(declare-fun tp!1150904 () Bool)

(declare-fun tp!1150903 () Bool)

(assert (=> b!3767543 (= e!2330161 (and tp!1150904 tp!1150903))))

(declare-fun b!3767544 () Bool)

(declare-fun tp!1150907 () Bool)

(assert (=> b!3767544 (= e!2330161 tp!1150907)))

(declare-fun b!3767542 () Bool)

(assert (=> b!3767542 (= e!2330161 tp_is_empty!19153)))

(declare-fun b!3767545 () Bool)

(declare-fun tp!1150905 () Bool)

(declare-fun tp!1150906 () Bool)

(assert (=> b!3767545 (= e!2330161 (and tp!1150905 tp!1150906))))

(assert (=> b!3766447 (= tp!1150721 e!2330161)))

(assert (= (and b!3766447 ((_ is ElementMatch!11081) (regTwo!22675 (regex!6176 (h!45625 rules!1265))))) b!3767542))

(assert (= (and b!3766447 ((_ is Concat!17488) (regTwo!22675 (regex!6176 (h!45625 rules!1265))))) b!3767543))

(assert (= (and b!3766447 ((_ is Star!11081) (regTwo!22675 (regex!6176 (h!45625 rules!1265))))) b!3767544))

(assert (= (and b!3766447 ((_ is Union!11081) (regTwo!22675 (regex!6176 (h!45625 rules!1265))))) b!3767545))

(declare-fun tp!1150910 () Bool)

(declare-fun b!3767546 () Bool)

(declare-fun tp!1150909 () Bool)

(declare-fun e!2330163 () Bool)

(assert (=> b!3767546 (= e!2330163 (and (inv!53985 (left!31115 (left!31115 (c!652408 treated!13)))) tp!1150910 (inv!53985 (right!31445 (left!31115 (c!652408 treated!13)))) tp!1150909))))

(declare-fun b!3767548 () Bool)

(declare-fun e!2330162 () Bool)

(declare-fun tp!1150908 () Bool)

(assert (=> b!3767548 (= e!2330162 tp!1150908)))

(declare-fun b!3767547 () Bool)

(assert (=> b!3767547 (= e!2330163 (and (inv!53999 (xs!15536 (left!31115 (c!652408 treated!13)))) e!2330162))))

(assert (=> b!3766470 (= tp!1150746 (and (inv!53985 (left!31115 (c!652408 treated!13))) e!2330163))))

(assert (= (and b!3766470 ((_ is Node!12326) (left!31115 (c!652408 treated!13)))) b!3767546))

(assert (= b!3767547 b!3767548))

(assert (= (and b!3766470 ((_ is Leaf!19112) (left!31115 (c!652408 treated!13)))) b!3767547))

(declare-fun m!4264005 () Bool)

(assert (=> b!3767546 m!4264005))

(declare-fun m!4264007 () Bool)

(assert (=> b!3767546 m!4264007))

(declare-fun m!4264009 () Bool)

(assert (=> b!3767547 m!4264009))

(assert (=> b!3766470 m!4262671))

(declare-fun tp!1150912 () Bool)

(declare-fun e!2330165 () Bool)

(declare-fun tp!1150913 () Bool)

(declare-fun b!3767549 () Bool)

(assert (=> b!3767549 (= e!2330165 (and (inv!53985 (left!31115 (right!31445 (c!652408 treated!13)))) tp!1150913 (inv!53985 (right!31445 (right!31445 (c!652408 treated!13)))) tp!1150912))))

(declare-fun b!3767551 () Bool)

(declare-fun e!2330164 () Bool)

(declare-fun tp!1150911 () Bool)

(assert (=> b!3767551 (= e!2330164 tp!1150911)))

(declare-fun b!3767550 () Bool)

(assert (=> b!3767550 (= e!2330165 (and (inv!53999 (xs!15536 (right!31445 (c!652408 treated!13)))) e!2330164))))

(assert (=> b!3766470 (= tp!1150745 (and (inv!53985 (right!31445 (c!652408 treated!13))) e!2330165))))

(assert (= (and b!3766470 ((_ is Node!12326) (right!31445 (c!652408 treated!13)))) b!3767549))

(assert (= b!3767550 b!3767551))

(assert (= (and b!3766470 ((_ is Leaf!19112) (right!31445 (c!652408 treated!13)))) b!3767550))

(declare-fun m!4264011 () Bool)

(assert (=> b!3767549 m!4264011))

(declare-fun m!4264013 () Bool)

(assert (=> b!3767549 m!4264013))

(declare-fun m!4264015 () Bool)

(assert (=> b!3767550 m!4264015))

(assert (=> b!3766470 m!4262673))

(declare-fun b!3767552 () Bool)

(declare-fun e!2330166 () Bool)

(declare-fun tp!1150914 () Bool)

(assert (=> b!3767552 (= e!2330166 (and tp_is_empty!19153 tp!1150914))))

(assert (=> b!3766472 (= tp!1150744 e!2330166)))

(assert (= (and b!3766472 ((_ is Cons!40203) (innerList!12386 (xs!15536 (c!652408 treated!13))))) b!3767552))

(declare-fun b_lambda!110505 () Bool)

(assert (= b_lambda!110503 (or d!1100998 b_lambda!110505)))

(declare-fun bs!576100 () Bool)

(declare-fun d!1101406 () Bool)

(assert (= bs!576100 (and d!1101406 d!1100998)))

(assert (=> bs!576100 (= (dynLambda!17362 lambda!125299 (h!45625 rules!1265)) (ruleValid!2168 thiss!11876 (h!45625 rules!1265)))))

(assert (=> bs!576100 m!4262629))

(assert (=> b!3767392 d!1101406))

(check-sat b_and!279731 (not d!1101374) (not bm!275613) (not b!3767339) (not b!3767405) (not b!3767547) (not b!3767460) (not b!3767423) (not b!3767224) (not d!1101260) (not d!1101340) (not d!1101276) (not b!3767429) b_and!279745 (not b!3767442) (not d!1101328) (not b!3766845) (not d!1101230) (not b!3767319) (not d!1101368) (not b!3767228) (not b!3767518) (not b!3767331) (not b!3767323) (not b!3767378) (not bm!275612) (not b!3767515) (not b_next!101615) (not b!3767400) (not b!3767537) (not b!3767399) (not d!1101146) (not b!3766996) (not b!3767155) (not b!3767552) (not d!1101396) (not b!3767487) (not b!3767545) (not b_next!101633) (not b!3767504) (not b!3767148) (not b!3767231) (not b!3767510) (not b!3767508) (not b!3767179) (not d!1101390) (not b!3767406) (not b!3767475) (not b!3767330) (not b!3767176) (not d!1101404) (not b!3767221) (not d!1101370) (not b!3767213) (not d!1101272) (not b!3767512) (not b!3767177) (not b!3767430) (not b!3767178) (not b!3767550) (not bm!275654) (not b!3767306) (not b_next!101623) (not bm!275607) (not b!3767522) (not b!3767100) b_and!279743 (not b!3767276) (not b!3767153) (not b!3767223) (not b!3767435) (not b!3767418) (not b!3766893) (not b_next!101637) (not bm!275655) (not b!3767337) (not b!3767225) (not b!3767385) (not b!3767416) (not b!3767546) (not b!3767529) (not b!3766844) (not d!1101394) (not b!3766850) (not b!3767509) (not b!3767304) (not b!3767151) (not b!3767481) (not b!3766978) (not b!3766470) (not b!3766846) (not b!3766484) (not b!3767395) (not b!3766892) (not b!3767456) (not bm!275656) (not b!3767219) (not b!3767477) (not b!3767382) (not b!3767421) (not b!3767506) (not b!3767513) b_and!279723 (not b!3767358) (not b!3767530) (not b!3767308) (not b!3767398) b_and!279747 (not bs!576100) (not b!3767407) (not b!3767459) (not b!3767324) (not bm!275648) (not d!1101354) (not b!3767341) (not b!3767396) (not b!3767519) (not d!1101324) (not b!3767387) (not b!3767486) (not d!1101088) (not d!1101278) (not b!3767492) (not b!3767025) (not d!1101314) (not b!3767379) (not b!3767175) (not b!3767540) (not b!3767115) (not b!3767144) (not b!3767505) (not b_next!101639) (not b!3767473) (not b_next!101635) (not b!3767531) (not b!3767106) (not b!3767111) (not b!3767325) (not b!3767063) (not b!3767417) (not b!3767226) (not b!3767317) (not b!3767523) (not d!1101350) (not d!1101250) (not d!1101330) (not b!3767326) (not d!1101322) (not d!1101254) (not b!3767474) (not d!1101262) (not b!3767180) (not b!3767514) (not b!3767281) (not b!3767536) (not b!3767116) (not b!3767413) (not d!1101400) (not d!1101144) b_and!279749 (not b!3767527) (not b!3767439) (not bm!275662) (not b!3767181) (not b!3767463) (not bm!275657) (not b!3767521) (not b!3766994) (not b!3767318) (not b!3767485) (not b!3767526) (not b!3767471) b_and!279725 (not b!3767344) (not b!3767541) (not b!3767448) (not b!3767348) (not d!1101252) (not b!3767476) (not d!1101372) (not d!1101268) (not b!3767227) (not b!3767312) (not d!1101348) (not b!3767436) (not b_next!101621) (not d!1101386) (not b!3766993) (not b!3767478) (not d!1101296) (not b!3767412) (not b!3766467) (not d!1101402) (not b!3767284) (not b!3766870) (not b!3767205) (not b!3767428) (not b!3767296) (not b!3767311) (not d!1101130) (not b!3767112) (not b!3767437) (not d!1101292) tp_is_empty!19153 (not b!3767347) (not b!3767452) (not b!3767493) (not b_lambda!110505) (not b!3767357) (not b!3767409) (not d!1101294) (not b!3767233) (not d!1101266) (not b!3767482) (not d!1101306) (not b!3767420) (not b!3767384) (not b!3767108) (not b!3767160) (not d!1101264) (not b!3767152) (not b!3767350) (not b!3767023) (not b!3767544) (not b!3767230) (not b!3767464) (not b!3767028) (not d!1101308) (not b!3767342) (not d!1101310) (not d!1101136) (not b!3767484) (not d!1101290) (not b!3767287) (not b!3766979) (not b!3767332) (not b!3767149) (not b!3767525) (not b!3767516) (not b!3767402) (not b!3766849) (not b_next!101613) (not b!3767404) b_and!279733 (not d!1101256) (not d!1101336) (not b!3767483) (not b!3767543) (not bm!275660) (not b!3767209) (not d!1101128) (not b!3766871) (not b!3766980) (not b!3767479) (not b!3767289) (not b!3767551) (not bm!275663) (not d!1101274) (not b!3766481) (not b!3767548) (not b!3767062) (not d!1101344) (not b!3767488) (not b!3767517) (not b!3767383) (not b!3767440) (not b!3766843) (not b!3767328) (not d!1101378) (not b!3767408) (not b!3767444) (not d!1101326) (not b!3767449) (not b!3767511) (not b!3767465) (not b!3767329) (not b!3767320) (not d!1101380) (not b!3767462) (not b!3767232) (not b!3767466) (not b!3767539) (not b!3767182) (not b!3767026) (not d!1101392) (not b!3767549) (not d!1101090) (not b!3767356) (not d!1101282) (not b!3767491) (not b!3767401) (not bm!275658) (not b!3767321) (not b!3767154) (not b!3767027) (not d!1101320) (not b!3766847) (not b!3766991) (not b!3767393) (not d!1101236) (not b!3767024) (not b!3767403) (not b!3767174))
(check-sat b_and!279745 (not b_next!101615) (not b_next!101633) (not b_next!101623) (not b_next!101639) (not b_next!101635) b_and!279749 b_and!279725 (not b_next!101621) b_and!279731 b_and!279743 (not b_next!101637) b_and!279723 b_and!279747 (not b_next!101613) b_and!279733)
