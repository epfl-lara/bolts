; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!406978 () Bool)

(assert start!406978)

(declare-fun b!4250396 () Bool)

(declare-fun b_free!126339 () Bool)

(declare-fun b_next!127043 () Bool)

(assert (=> b!4250396 (= b_free!126339 (not b_next!127043))))

(declare-fun tp!1304191 () Bool)

(declare-fun b_and!336941 () Bool)

(assert (=> b!4250396 (= tp!1304191 b_and!336941)))

(declare-fun b_free!126341 () Bool)

(declare-fun b_next!127045 () Bool)

(assert (=> b!4250396 (= b_free!126341 (not b_next!127045))))

(declare-fun tp!1304201 () Bool)

(declare-fun b_and!336943 () Bool)

(assert (=> b!4250396 (= tp!1304201 b_and!336943)))

(declare-fun b!4250405 () Bool)

(declare-fun b_free!126343 () Bool)

(declare-fun b_next!127047 () Bool)

(assert (=> b!4250405 (= b_free!126343 (not b_next!127047))))

(declare-fun tp!1304195 () Bool)

(declare-fun b_and!336945 () Bool)

(assert (=> b!4250405 (= tp!1304195 b_and!336945)))

(declare-fun b_free!126345 () Bool)

(declare-fun b_next!127049 () Bool)

(assert (=> b!4250405 (= b_free!126345 (not b_next!127049))))

(declare-fun tp!1304194 () Bool)

(declare-fun b_and!336947 () Bool)

(assert (=> b!4250405 (= tp!1304194 b_and!336947)))

(declare-fun b!4250387 () Bool)

(declare-fun e!2639996 () Bool)

(declare-fun e!2639988 () Bool)

(assert (=> b!4250387 (= e!2639996 e!2639988)))

(declare-fun res!1747302 () Bool)

(assert (=> b!4250387 (=> (not res!1747302) (not e!2639988))))

(declare-datatypes ((List!47217 0))(
  ( (Nil!47093) (Cons!47093 (h!52513 (_ BitVec 16)) (t!352310 List!47217)) )
))
(declare-datatypes ((TokenValue!8202 0))(
  ( (FloatLiteralValue!16404 (text!57859 List!47217)) (TokenValueExt!8201 (__x!28627 Int)) (Broken!41010 (value!247712 List!47217)) (Object!8325) (End!8202) (Def!8202) (Underscore!8202) (Match!8202) (Else!8202) (Error!8202) (Case!8202) (If!8202) (Extends!8202) (Abstract!8202) (Class!8202) (Val!8202) (DelimiterValue!16404 (del!8262 List!47217)) (KeywordValue!8208 (value!247713 List!47217)) (CommentValue!16404 (value!247714 List!47217)) (WhitespaceValue!16404 (value!247715 List!47217)) (IndentationValue!8202 (value!247716 List!47217)) (String!54939) (Int32!8202) (Broken!41011 (value!247717 List!47217)) (Boolean!8203) (Unit!66064) (OperatorValue!8205 (op!8262 List!47217)) (IdentifierValue!16404 (value!247718 List!47217)) (IdentifierValue!16405 (value!247719 List!47217)) (WhitespaceValue!16405 (value!247720 List!47217)) (True!16404) (False!16404) (Broken!41012 (value!247721 List!47217)) (Broken!41013 (value!247722 List!47217)) (True!16405) (RightBrace!8202) (RightBracket!8202) (Colon!8202) (Null!8202) (Comma!8202) (LeftBracket!8202) (False!16405) (LeftBrace!8202) (ImaginaryLiteralValue!8202 (text!57860 List!47217)) (StringLiteralValue!24606 (value!247723 List!47217)) (EOFValue!8202 (value!247724 List!47217)) (IdentValue!8202 (value!247725 List!47217)) (DelimiterValue!16405 (value!247726 List!47217)) (DedentValue!8202 (value!247727 List!47217)) (NewLineValue!8202 (value!247728 List!47217)) (IntegerValue!24606 (value!247729 (_ BitVec 32)) (text!57861 List!47217)) (IntegerValue!24607 (value!247730 Int) (text!57862 List!47217)) (Times!8202) (Or!8202) (Equal!8202) (Minus!8202) (Broken!41014 (value!247731 List!47217)) (And!8202) (Div!8202) (LessEqual!8202) (Mod!8202) (Concat!21079) (Not!8202) (Plus!8202) (SpaceValue!8202 (value!247732 List!47217)) (IntegerValue!24608 (value!247733 Int) (text!57863 List!47217)) (StringLiteralValue!24607 (text!57864 List!47217)) (FloatLiteralValue!16405 (text!57865 List!47217)) (BytesLiteralValue!8202 (value!247734 List!47217)) (CommentValue!16405 (value!247735 List!47217)) (StringLiteralValue!24608 (value!247736 List!47217)) (ErrorTokenValue!8202 (msg!8263 List!47217)) )
))
(declare-datatypes ((C!25952 0))(
  ( (C!25953 (val!15166 Int)) )
))
(declare-datatypes ((List!47218 0))(
  ( (Nil!47094) (Cons!47094 (h!52514 C!25952) (t!352311 List!47218)) )
))
(declare-datatypes ((IArray!28371 0))(
  ( (IArray!28372 (innerList!14243 List!47218)) )
))
(declare-datatypes ((Conc!14183 0))(
  ( (Node!14183 (left!34931 Conc!14183) (right!35261 Conc!14183) (csize!28596 Int) (cheight!14394 Int)) (Leaf!21928 (xs!17489 IArray!28371) (csize!28597 Int)) (Empty!14183) )
))
(declare-datatypes ((BalanceConc!27960 0))(
  ( (BalanceConc!27961 (c!721774 Conc!14183)) )
))
(declare-datatypes ((Regex!12877 0))(
  ( (ElementMatch!12877 (c!721775 C!25952)) (Concat!21080 (regOne!26266 Regex!12877) (regTwo!26266 Regex!12877)) (EmptyExpr!12877) (Star!12877 (reg!13206 Regex!12877)) (EmptyLang!12877) (Union!12877 (regOne!26267 Regex!12877) (regTwo!26267 Regex!12877)) )
))
(declare-datatypes ((String!54940 0))(
  ( (String!54941 (value!247737 String)) )
))
(declare-datatypes ((TokenValueInjection!15832 0))(
  ( (TokenValueInjection!15833 (toValue!10744 Int) (toChars!10603 Int)) )
))
(declare-datatypes ((Rule!15744 0))(
  ( (Rule!15745 (regex!7972 Regex!12877) (tag!8836 String!54940) (isSeparator!7972 Bool) (transformation!7972 TokenValueInjection!15832)) )
))
(declare-datatypes ((Token!14570 0))(
  ( (Token!14571 (value!247738 TokenValue!8202) (rule!11106 Rule!15744) (size!34476 Int) (originalCharacters!8316 List!47218)) )
))
(declare-datatypes ((tuple2!44654 0))(
  ( (tuple2!44655 (_1!25461 Token!14570) (_2!25461 List!47218)) )
))
(declare-datatypes ((Option!10106 0))(
  ( (None!10105) (Some!10105 (v!41063 tuple2!44654)) )
))
(declare-fun lt!1508485 () Option!10106)

(declare-fun lt!1508486 () Option!10106)

(get-info :version)

(assert (=> b!4250387 (= res!1747302 (and ((_ is Some!10105) lt!1508485) ((_ is Some!10105) lt!1508486)))))

(declare-datatypes ((List!47219 0))(
  ( (Nil!47095) (Cons!47095 (h!52515 Rule!15744) (t!352312 List!47219)) )
))
(declare-fun rules!2971 () List!47219)

(declare-fun shorterInput!62 () List!47218)

(declare-datatypes ((LexerInterface!7567 0))(
  ( (LexerInterfaceExt!7564 (__x!28628 Int)) (Lexer!7565) )
))
(declare-fun thiss!21641 () LexerInterface!7567)

(declare-fun maxPrefix!4523 (LexerInterface!7567 List!47219 List!47218) Option!10106)

(assert (=> b!4250387 (= lt!1508486 (maxPrefix!4523 thiss!21641 rules!2971 shorterInput!62))))

(declare-fun longerInput!62 () List!47218)

(assert (=> b!4250387 (= lt!1508485 (maxPrefix!4523 thiss!21641 rules!2971 longerInput!62))))

(declare-fun e!2639999 () Bool)

(declare-datatypes ((List!47220 0))(
  ( (Nil!47096) (Cons!47096 (h!52516 Token!14570) (t!352313 List!47220)) )
))
(declare-fun tokens!592 () List!47220)

(declare-fun tp!1304197 () Bool)

(declare-fun b!4250388 () Bool)

(declare-fun e!2639986 () Bool)

(declare-fun inv!21 (TokenValue!8202) Bool)

(assert (=> b!4250388 (= e!2639999 (and (inv!21 (value!247738 (h!52516 tokens!592))) e!2639986 tp!1304197))))

(declare-fun b!4250389 () Bool)

(declare-fun e!2640000 () Bool)

(assert (=> b!4250389 (= e!2640000 false)))

(declare-fun lt!1508488 () Int)

(declare-fun size!34477 (List!47218) Int)

(assert (=> b!4250389 (= lt!1508488 (size!34477 (_2!25461 (v!41063 lt!1508486))))))

(declare-fun lt!1508484 () Int)

(assert (=> b!4250389 (= lt!1508484 (size!34477 (_2!25461 (v!41063 lt!1508485))))))

(declare-fun b!4250390 () Bool)

(declare-fun e!2639990 () Bool)

(declare-fun tp_is_empty!22745 () Bool)

(declare-fun tp!1304196 () Bool)

(assert (=> b!4250390 (= e!2639990 (and tp_is_empty!22745 tp!1304196))))

(declare-fun e!2639995 () Bool)

(declare-fun b!4250391 () Bool)

(declare-fun tp!1304199 () Bool)

(declare-fun e!2639991 () Bool)

(declare-fun inv!61866 (String!54940) Bool)

(declare-fun inv!61869 (TokenValueInjection!15832) Bool)

(assert (=> b!4250391 (= e!2639995 (and tp!1304199 (inv!61866 (tag!8836 (h!52515 rules!2971))) (inv!61869 (transformation!7972 (h!52515 rules!2971))) e!2639991))))

(declare-fun b!4250392 () Bool)

(declare-fun e!2639997 () Bool)

(declare-fun tp!1304202 () Bool)

(assert (=> b!4250392 (= e!2639997 (and tp_is_empty!22745 tp!1304202))))

(declare-fun b!4250393 () Bool)

(declare-fun res!1747293 () Bool)

(assert (=> b!4250393 (=> (not res!1747293) (not e!2639996))))

(assert (=> b!4250393 (= res!1747293 (> (size!34477 longerInput!62) (size!34477 shorterInput!62)))))

(declare-fun b!4250394 () Bool)

(declare-fun res!1747298 () Bool)

(assert (=> b!4250394 (=> (not res!1747298) (not e!2639996))))

(declare-fun isEmpty!27862 (List!47218) Bool)

(assert (=> b!4250394 (= res!1747298 (not (isEmpty!27862 longerInput!62)))))

(declare-fun b!4250395 () Bool)

(declare-fun e!2639993 () Bool)

(declare-fun tp!1304198 () Bool)

(assert (=> b!4250395 (= e!2639993 (and e!2639995 tp!1304198))))

(assert (=> b!4250396 (= e!2639991 (and tp!1304191 tp!1304201))))

(declare-fun b!4250397 () Bool)

(declare-fun e!2639989 () Bool)

(declare-fun tp!1304200 () Bool)

(declare-fun inv!61870 (Token!14570) Bool)

(assert (=> b!4250397 (= e!2639989 (and (inv!61870 (h!52516 tokens!592)) e!2639999 tp!1304200))))

(declare-fun b!4250398 () Bool)

(declare-fun res!1747301 () Bool)

(assert (=> b!4250398 (=> (not res!1747301) (not e!2639996))))

(declare-fun suffix!1284 () List!47218)

(declare-datatypes ((tuple2!44656 0))(
  ( (tuple2!44657 (_1!25462 List!47220) (_2!25462 List!47218)) )
))
(declare-fun lexList!2073 (LexerInterface!7567 List!47219 List!47218) tuple2!44656)

(assert (=> b!4250398 (= res!1747301 (= (lexList!2073 thiss!21641 rules!2971 longerInput!62) (tuple2!44657 tokens!592 suffix!1284)))))

(declare-fun b!4250400 () Bool)

(declare-fun res!1747294 () Bool)

(assert (=> b!4250400 (=> (not res!1747294) (not e!2639996))))

(declare-fun isEmpty!27863 (List!47219) Bool)

(assert (=> b!4250400 (= res!1747294 (not (isEmpty!27863 rules!2971)))))

(declare-fun b!4250401 () Bool)

(declare-fun e!2639992 () Bool)

(assert (=> b!4250401 (= e!2639992 e!2640000)))

(declare-fun res!1747300 () Bool)

(assert (=> b!4250401 (=> (not res!1747300) (not e!2640000))))

(declare-fun lt!1508483 () List!47218)

(declare-fun ++!11981 (List!47218 List!47218) List!47218)

(assert (=> b!4250401 (= res!1747300 (= (++!11981 lt!1508483 (_2!25461 (v!41063 lt!1508486))) shorterInput!62))))

(declare-fun list!16966 (BalanceConc!27960) List!47218)

(declare-fun charsOf!5312 (Token!14570) BalanceConc!27960)

(assert (=> b!4250401 (= lt!1508483 (list!16966 (charsOf!5312 (_1!25461 (v!41063 lt!1508486)))))))

(declare-fun b!4250402 () Bool)

(declare-fun res!1747299 () Bool)

(assert (=> b!4250402 (=> (not res!1747299) (not e!2639996))))

(declare-fun rulesInvariant!6678 (LexerInterface!7567 List!47219) Bool)

(assert (=> b!4250402 (= res!1747299 (rulesInvariant!6678 thiss!21641 rules!2971))))

(declare-fun b!4250403 () Bool)

(declare-fun res!1747296 () Bool)

(assert (=> b!4250403 (=> (not res!1747296) (not e!2640000))))

(declare-fun lt!1508487 () List!47218)

(assert (=> b!4250403 (= res!1747296 (and (= (_1!25461 (v!41063 lt!1508485)) (_1!25461 (v!41063 lt!1508486))) (= lt!1508487 lt!1508483)))))

(declare-fun tp!1304193 () Bool)

(declare-fun e!2640002 () Bool)

(declare-fun b!4250404 () Bool)

(assert (=> b!4250404 (= e!2639986 (and tp!1304193 (inv!61866 (tag!8836 (rule!11106 (h!52516 tokens!592)))) (inv!61869 (transformation!7972 (rule!11106 (h!52516 tokens!592)))) e!2640002))))

(assert (=> b!4250405 (= e!2640002 (and tp!1304195 tp!1304194))))

(declare-fun b!4250406 () Bool)

(assert (=> b!4250406 (= e!2639988 e!2639992)))

(declare-fun res!1747297 () Bool)

(assert (=> b!4250406 (=> (not res!1747297) (not e!2639992))))

(assert (=> b!4250406 (= res!1747297 (= (++!11981 lt!1508487 (_2!25461 (v!41063 lt!1508485))) longerInput!62))))

(assert (=> b!4250406 (= lt!1508487 (list!16966 (charsOf!5312 (_1!25461 (v!41063 lt!1508485)))))))

(declare-fun b!4250399 () Bool)

(declare-fun e!2640001 () Bool)

(declare-fun tp!1304192 () Bool)

(assert (=> b!4250399 (= e!2640001 (and tp_is_empty!22745 tp!1304192))))

(declare-fun res!1747295 () Bool)

(assert (=> start!406978 (=> (not res!1747295) (not e!2639996))))

(assert (=> start!406978 (= res!1747295 ((_ is Lexer!7565) thiss!21641))))

(assert (=> start!406978 e!2639996))

(assert (=> start!406978 true))

(assert (=> start!406978 e!2639997))

(assert (=> start!406978 e!2639990))

(assert (=> start!406978 e!2639989))

(assert (=> start!406978 e!2639993))

(assert (=> start!406978 e!2640001))

(assert (= (and start!406978 res!1747295) b!4250400))

(assert (= (and b!4250400 res!1747294) b!4250402))

(assert (= (and b!4250402 res!1747299) b!4250394))

(assert (= (and b!4250394 res!1747298) b!4250393))

(assert (= (and b!4250393 res!1747293) b!4250398))

(assert (= (and b!4250398 res!1747301) b!4250387))

(assert (= (and b!4250387 res!1747302) b!4250406))

(assert (= (and b!4250406 res!1747297) b!4250401))

(assert (= (and b!4250401 res!1747300) b!4250403))

(assert (= (and b!4250403 res!1747296) b!4250389))

(assert (= (and start!406978 ((_ is Cons!47094) suffix!1284)) b!4250392))

(assert (= (and start!406978 ((_ is Cons!47094) longerInput!62)) b!4250390))

(assert (= b!4250404 b!4250405))

(assert (= b!4250388 b!4250404))

(assert (= b!4250397 b!4250388))

(assert (= (and start!406978 ((_ is Cons!47096) tokens!592)) b!4250397))

(assert (= b!4250391 b!4250396))

(assert (= b!4250395 b!4250391))

(assert (= (and start!406978 ((_ is Cons!47095) rules!2971)) b!4250395))

(assert (= (and start!406978 ((_ is Cons!47094) shorterInput!62)) b!4250399))

(declare-fun m!4835171 () Bool)

(assert (=> b!4250389 m!4835171))

(declare-fun m!4835173 () Bool)

(assert (=> b!4250389 m!4835173))

(declare-fun m!4835175 () Bool)

(assert (=> b!4250387 m!4835175))

(declare-fun m!4835177 () Bool)

(assert (=> b!4250387 m!4835177))

(declare-fun m!4835179 () Bool)

(assert (=> b!4250398 m!4835179))

(declare-fun m!4835181 () Bool)

(assert (=> b!4250402 m!4835181))

(declare-fun m!4835183 () Bool)

(assert (=> b!4250388 m!4835183))

(declare-fun m!4835185 () Bool)

(assert (=> b!4250397 m!4835185))

(declare-fun m!4835187 () Bool)

(assert (=> b!4250401 m!4835187))

(declare-fun m!4835189 () Bool)

(assert (=> b!4250401 m!4835189))

(assert (=> b!4250401 m!4835189))

(declare-fun m!4835191 () Bool)

(assert (=> b!4250401 m!4835191))

(declare-fun m!4835193 () Bool)

(assert (=> b!4250391 m!4835193))

(declare-fun m!4835195 () Bool)

(assert (=> b!4250391 m!4835195))

(declare-fun m!4835197 () Bool)

(assert (=> b!4250400 m!4835197))

(declare-fun m!4835199 () Bool)

(assert (=> b!4250404 m!4835199))

(declare-fun m!4835201 () Bool)

(assert (=> b!4250404 m!4835201))

(declare-fun m!4835203 () Bool)

(assert (=> b!4250406 m!4835203))

(declare-fun m!4835205 () Bool)

(assert (=> b!4250406 m!4835205))

(assert (=> b!4250406 m!4835205))

(declare-fun m!4835207 () Bool)

(assert (=> b!4250406 m!4835207))

(declare-fun m!4835209 () Bool)

(assert (=> b!4250393 m!4835209))

(declare-fun m!4835211 () Bool)

(assert (=> b!4250393 m!4835211))

(declare-fun m!4835213 () Bool)

(assert (=> b!4250394 m!4835213))

(check-sat (not b!4250390) (not b!4250397) (not b!4250398) (not b!4250389) (not b!4250406) (not b!4250388) (not b_next!127049) (not b!4250394) (not b_next!127045) (not b!4250387) (not b!4250392) (not b_next!127043) b_and!336947 (not b_next!127047) (not b!4250404) (not b!4250393) (not b!4250402) b_and!336941 (not b!4250400) (not b!4250401) b_and!336943 (not b!4250399) b_and!336945 (not b!4250391) tp_is_empty!22745 (not b!4250395))
(check-sat (not b_next!127047) b_and!336941 (not b_next!127049) (not b_next!127045) (not b_next!127043) b_and!336947 b_and!336943 b_and!336945)
