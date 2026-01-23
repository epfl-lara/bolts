; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54072 () Bool)

(assert start!54072)

(declare-fun b!583107 () Bool)

(declare-fun b_free!16253 () Bool)

(declare-fun b_next!16269 () Bool)

(assert (=> b!583107 (= b_free!16253 (not b_next!16269))))

(declare-fun tp!181991 () Bool)

(declare-fun b_and!57435 () Bool)

(assert (=> b!583107 (= tp!181991 b_and!57435)))

(declare-fun b_free!16255 () Bool)

(declare-fun b_next!16271 () Bool)

(assert (=> b!583107 (= b_free!16255 (not b_next!16271))))

(declare-fun tp!181994 () Bool)

(declare-fun b_and!57437 () Bool)

(assert (=> b!583107 (= tp!181994 b_and!57437)))

(declare-fun b!583106 () Bool)

(declare-fun b_free!16257 () Bool)

(declare-fun b_next!16273 () Bool)

(assert (=> b!583106 (= b_free!16257 (not b_next!16273))))

(declare-fun tp!181996 () Bool)

(declare-fun b_and!57439 () Bool)

(assert (=> b!583106 (= tp!181996 b_and!57439)))

(declare-fun b_free!16259 () Bool)

(declare-fun b_next!16275 () Bool)

(assert (=> b!583106 (= b_free!16259 (not b_next!16275))))

(declare-fun tp!181988 () Bool)

(declare-fun b_and!57441 () Bool)

(assert (=> b!583106 (= tp!181988 b_and!57441)))

(declare-fun b!583097 () Bool)

(declare-fun e!352530 () Bool)

(declare-fun e!352534 () Bool)

(assert (=> b!583097 (= e!352530 e!352534)))

(declare-fun res!251179 () Bool)

(assert (=> b!583097 (=> (not res!251179) (not e!352534))))

(declare-datatypes ((C!3828 0))(
  ( (C!3829 (val!2140 Int)) )
))
(declare-datatypes ((Regex!1453 0))(
  ( (ElementMatch!1453 (c!109077 C!3828)) (Concat!2596 (regOne!3418 Regex!1453) (regTwo!3418 Regex!1453)) (EmptyExpr!1453) (Star!1453 (reg!1782 Regex!1453)) (EmptyLang!1453) (Union!1453 (regOne!3419 Regex!1453) (regTwo!3419 Regex!1453)) )
))
(declare-datatypes ((List!5746 0))(
  ( (Nil!5736) (Cons!5736 (h!11137 (_ BitVec 16)) (t!78259 List!5746)) )
))
(declare-datatypes ((List!5747 0))(
  ( (Nil!5737) (Cons!5737 (h!11138 C!3828) (t!78260 List!5747)) )
))
(declare-datatypes ((IArray!3673 0))(
  ( (IArray!3674 (innerList!1894 List!5747)) )
))
(declare-datatypes ((String!7458 0))(
  ( (String!7459 (value!36732 String)) )
))
(declare-datatypes ((Conc!1836 0))(
  ( (Node!1836 (left!4676 Conc!1836) (right!5006 Conc!1836) (csize!3902 Int) (cheight!2047 Int)) (Leaf!2903 (xs!4473 IArray!3673) (csize!3903 Int)) (Empty!1836) )
))
(declare-datatypes ((BalanceConc!3680 0))(
  ( (BalanceConc!3681 (c!109078 Conc!1836)) )
))
(declare-datatypes ((TokenValue!1143 0))(
  ( (FloatLiteralValue!2286 (text!8446 List!5746)) (TokenValueExt!1142 (__x!4184 Int)) (Broken!5715 (value!36733 List!5746)) (Object!1152) (End!1143) (Def!1143) (Underscore!1143) (Match!1143) (Else!1143) (Error!1143) (Case!1143) (If!1143) (Extends!1143) (Abstract!1143) (Class!1143) (Val!1143) (DelimiterValue!2286 (del!1203 List!5746)) (KeywordValue!1149 (value!36734 List!5746)) (CommentValue!2286 (value!36735 List!5746)) (WhitespaceValue!2286 (value!36736 List!5746)) (IndentationValue!1143 (value!36737 List!5746)) (String!7460) (Int32!1143) (Broken!5716 (value!36738 List!5746)) (Boolean!1144) (Unit!10426) (OperatorValue!1146 (op!1203 List!5746)) (IdentifierValue!2286 (value!36739 List!5746)) (IdentifierValue!2287 (value!36740 List!5746)) (WhitespaceValue!2287 (value!36741 List!5746)) (True!2286) (False!2286) (Broken!5717 (value!36742 List!5746)) (Broken!5718 (value!36743 List!5746)) (True!2287) (RightBrace!1143) (RightBracket!1143) (Colon!1143) (Null!1143) (Comma!1143) (LeftBracket!1143) (False!2287) (LeftBrace!1143) (ImaginaryLiteralValue!1143 (text!8447 List!5746)) (StringLiteralValue!3429 (value!36744 List!5746)) (EOFValue!1143 (value!36745 List!5746)) (IdentValue!1143 (value!36746 List!5746)) (DelimiterValue!2287 (value!36747 List!5746)) (DedentValue!1143 (value!36748 List!5746)) (NewLineValue!1143 (value!36749 List!5746)) (IntegerValue!3429 (value!36750 (_ BitVec 32)) (text!8448 List!5746)) (IntegerValue!3430 (value!36751 Int) (text!8449 List!5746)) (Times!1143) (Or!1143) (Equal!1143) (Minus!1143) (Broken!5719 (value!36752 List!5746)) (And!1143) (Div!1143) (LessEqual!1143) (Mod!1143) (Concat!2597) (Not!1143) (Plus!1143) (SpaceValue!1143 (value!36753 List!5746)) (IntegerValue!3431 (value!36754 Int) (text!8450 List!5746)) (StringLiteralValue!3430 (text!8451 List!5746)) (FloatLiteralValue!2287 (text!8452 List!5746)) (BytesLiteralValue!1143 (value!36755 List!5746)) (CommentValue!2287 (value!36756 List!5746)) (StringLiteralValue!3431 (value!36757 List!5746)) (ErrorTokenValue!1143 (msg!1204 List!5746)) )
))
(declare-datatypes ((TokenValueInjection!2054 0))(
  ( (TokenValueInjection!2055 (toValue!1986 Int) (toChars!1845 Int)) )
))
(declare-datatypes ((Rule!2038 0))(
  ( (Rule!2039 (regex!1119 Regex!1453) (tag!1381 String!7458) (isSeparator!1119 Bool) (transformation!1119 TokenValueInjection!2054)) )
))
(declare-datatypes ((Token!1974 0))(
  ( (Token!1975 (value!36758 TokenValue!1143) (rule!1877 Rule!2038) (size!4560 Int) (originalCharacters!1158 List!5747)) )
))
(declare-datatypes ((tuple2!6708 0))(
  ( (tuple2!6709 (_1!3618 Token!1974) (_2!3618 List!5747)) )
))
(declare-datatypes ((Option!1470 0))(
  ( (None!1469) (Some!1469 (v!16338 tuple2!6708)) )
))
(declare-fun lt!247505 () Option!1470)

(declare-fun isDefined!1281 (Option!1470) Bool)

(assert (=> b!583097 (= res!251179 (isDefined!1281 lt!247505))))

(declare-datatypes ((List!5748 0))(
  ( (Nil!5738) (Cons!5738 (h!11139 Rule!2038) (t!78261 List!5748)) )
))
(declare-fun rules!3103 () List!5748)

(declare-datatypes ((LexerInterface!1005 0))(
  ( (LexerInterfaceExt!1002 (__x!4185 Int)) (Lexer!1003) )
))
(declare-fun thiss!22590 () LexerInterface!1005)

(declare-fun lt!247503 () List!5747)

(declare-fun maxPrefix!703 (LexerInterface!1005 List!5748 List!5747) Option!1470)

(assert (=> b!583097 (= lt!247505 (maxPrefix!703 thiss!22590 rules!3103 lt!247503))))

(declare-fun input!2705 () List!5747)

(declare-fun suffix!1342 () List!5747)

(declare-fun ++!1607 (List!5747 List!5747) List!5747)

(assert (=> b!583097 (= lt!247503 (++!1607 input!2705 suffix!1342))))

(declare-fun b!583098 () Bool)

(declare-fun res!251182 () Bool)

(declare-fun e!352533 () Bool)

(assert (=> b!583098 (=> res!251182 e!352533)))

(declare-fun lt!247508 () Option!1470)

(declare-fun lt!247510 () List!5747)

(assert (=> b!583098 (= res!251182 (not (= (++!1607 lt!247510 (_2!3618 (v!16338 lt!247508))) input!2705)))))

(declare-fun b!583099 () Bool)

(declare-fun res!251180 () Bool)

(declare-fun e!352525 () Bool)

(assert (=> b!583099 (=> (not res!251180) (not e!352525))))

(declare-fun isEmpty!4141 (List!5748) Bool)

(assert (=> b!583099 (= res!251180 (not (isEmpty!4141 rules!3103)))))

(declare-fun b!583101 () Bool)

(declare-fun e!352527 () Bool)

(assert (=> b!583101 (= e!352534 e!352527)))

(declare-fun res!251175 () Bool)

(assert (=> b!583101 (=> (not res!251175) (not e!352527))))

(declare-fun token!491 () Token!1974)

(declare-fun lt!247504 () tuple2!6708)

(assert (=> b!583101 (= res!251175 (and (= (_1!3618 lt!247504) token!491) (= (_2!3618 lt!247504) suffix!1342)))))

(declare-fun get!2193 (Option!1470) tuple2!6708)

(assert (=> b!583101 (= lt!247504 (get!2193 lt!247505))))

(declare-fun b!583102 () Bool)

(declare-fun lt!247507 () Int)

(declare-fun size!4561 (List!5747) Int)

(assert (=> b!583102 (= e!352533 (<= lt!247507 (size!4561 input!2705)))))

(declare-fun b!583103 () Bool)

(declare-fun e!352523 () Bool)

(declare-fun tp_is_empty!3261 () Bool)

(declare-fun tp!181987 () Bool)

(assert (=> b!583103 (= e!352523 (and tp_is_empty!3261 tp!181987))))

(declare-fun b!583104 () Bool)

(declare-fun e!352529 () Bool)

(assert (=> b!583104 (= e!352529 (not e!352533))))

(declare-fun res!251174 () Bool)

(assert (=> b!583104 (=> res!251174 e!352533)))

(declare-fun lt!247506 () List!5747)

(assert (=> b!583104 (= res!251174 (<= lt!247507 (size!4561 lt!247506)))))

(assert (=> b!583104 (= lt!247507 (size!4561 lt!247510))))

(declare-fun list!2386 (BalanceConc!3680) List!5747)

(declare-fun charsOf!748 (Token!1974) BalanceConc!3680)

(assert (=> b!583104 (= lt!247510 (list!2386 (charsOf!748 (_1!3618 (v!16338 lt!247508)))))))

(assert (=> b!583104 (= lt!247508 (Some!1469 (v!16338 lt!247508)))))

(declare-datatypes ((Unit!10427 0))(
  ( (Unit!10428) )
))
(declare-fun lt!247509 () Unit!10427)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!192 (List!5747 List!5747 List!5747 List!5747) Unit!10427)

(assert (=> b!583104 (= lt!247509 (lemmaConcatSameAndSameSizesThenSameLists!192 lt!247506 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!583105 () Bool)

(assert (=> b!583105 (= e!352527 e!352529)))

(declare-fun res!251181 () Bool)

(assert (=> b!583105 (=> (not res!251181) (not e!352529))))

(get-info :version)

(assert (=> b!583105 (= res!251181 ((_ is Some!1469) lt!247508))))

(assert (=> b!583105 (= lt!247508 (maxPrefix!703 thiss!22590 rules!3103 input!2705))))

(declare-fun e!352521 () Bool)

(assert (=> b!583106 (= e!352521 (and tp!181996 tp!181988))))

(declare-fun e!352528 () Bool)

(assert (=> b!583107 (= e!352528 (and tp!181991 tp!181994))))

(declare-fun b!583108 () Bool)

(declare-fun tp!181990 () Bool)

(declare-fun e!352531 () Bool)

(declare-fun inv!7226 (String!7458) Bool)

(declare-fun inv!7229 (TokenValueInjection!2054) Bool)

(assert (=> b!583108 (= e!352531 (and tp!181990 (inv!7226 (tag!1381 (rule!1877 token!491))) (inv!7229 (transformation!1119 (rule!1877 token!491))) e!352521))))

(declare-fun b!583109 () Bool)

(declare-fun res!251177 () Bool)

(assert (=> b!583109 (=> (not res!251177) (not e!352525))))

(declare-fun rulesInvariant!968 (LexerInterface!1005 List!5748) Bool)

(assert (=> b!583109 (= res!251177 (rulesInvariant!968 thiss!22590 rules!3103))))

(declare-fun res!251172 () Bool)

(assert (=> start!54072 (=> (not res!251172) (not e!352525))))

(assert (=> start!54072 (= res!251172 ((_ is Lexer!1003) thiss!22590))))

(assert (=> start!54072 e!352525))

(declare-fun e!352526 () Bool)

(assert (=> start!54072 e!352526))

(declare-fun e!352524 () Bool)

(assert (=> start!54072 e!352524))

(declare-fun e!352535 () Bool)

(declare-fun inv!7230 (Token!1974) Bool)

(assert (=> start!54072 (and (inv!7230 token!491) e!352535)))

(assert (=> start!54072 true))

(assert (=> start!54072 e!352523))

(declare-fun b!583100 () Bool)

(declare-fun res!251176 () Bool)

(assert (=> b!583100 (=> (not res!251176) (not e!352529))))

(assert (=> b!583100 (= res!251176 (= (++!1607 lt!247506 suffix!1342) lt!247503))))

(declare-fun tp!181992 () Bool)

(declare-fun b!583110 () Bool)

(declare-fun inv!21 (TokenValue!1143) Bool)

(assert (=> b!583110 (= e!352535 (and (inv!21 (value!36758 token!491)) e!352531 tp!181992))))

(declare-fun b!583111 () Bool)

(declare-fun e!352522 () Bool)

(declare-fun tp!181995 () Bool)

(assert (=> b!583111 (= e!352524 (and e!352522 tp!181995))))

(declare-fun tp!181989 () Bool)

(declare-fun b!583112 () Bool)

(assert (=> b!583112 (= e!352522 (and tp!181989 (inv!7226 (tag!1381 (h!11139 rules!3103))) (inv!7229 (transformation!1119 (h!11139 rules!3103))) e!352528))))

(declare-fun b!583113 () Bool)

(declare-fun tp!181993 () Bool)

(assert (=> b!583113 (= e!352526 (and tp_is_empty!3261 tp!181993))))

(declare-fun b!583114 () Bool)

(declare-fun res!251173 () Bool)

(assert (=> b!583114 (=> (not res!251173) (not e!352525))))

(declare-fun isEmpty!4142 (List!5747) Bool)

(assert (=> b!583114 (= res!251173 (not (isEmpty!4142 input!2705)))))

(declare-fun b!583115 () Bool)

(assert (=> b!583115 (= e!352525 e!352530)))

(declare-fun res!251178 () Bool)

(assert (=> b!583115 (=> (not res!251178) (not e!352530))))

(assert (=> b!583115 (= res!251178 (= lt!247506 input!2705))))

(assert (=> b!583115 (= lt!247506 (list!2386 (charsOf!748 token!491)))))

(assert (= (and start!54072 res!251172) b!583099))

(assert (= (and b!583099 res!251180) b!583109))

(assert (= (and b!583109 res!251177) b!583114))

(assert (= (and b!583114 res!251173) b!583115))

(assert (= (and b!583115 res!251178) b!583097))

(assert (= (and b!583097 res!251179) b!583101))

(assert (= (and b!583101 res!251175) b!583105))

(assert (= (and b!583105 res!251181) b!583100))

(assert (= (and b!583100 res!251176) b!583104))

(assert (= (and b!583104 (not res!251174)) b!583098))

(assert (= (and b!583098 (not res!251182)) b!583102))

(assert (= (and start!54072 ((_ is Cons!5737) suffix!1342)) b!583113))

(assert (= b!583112 b!583107))

(assert (= b!583111 b!583112))

(assert (= (and start!54072 ((_ is Cons!5738) rules!3103)) b!583111))

(assert (= b!583108 b!583106))

(assert (= b!583110 b!583108))

(assert (= start!54072 b!583110))

(assert (= (and start!54072 ((_ is Cons!5737) input!2705)) b!583103))

(declare-fun m!842525 () Bool)

(assert (=> start!54072 m!842525))

(declare-fun m!842527 () Bool)

(assert (=> b!583100 m!842527))

(declare-fun m!842529 () Bool)

(assert (=> b!583112 m!842529))

(declare-fun m!842531 () Bool)

(assert (=> b!583112 m!842531))

(declare-fun m!842533 () Bool)

(assert (=> b!583102 m!842533))

(declare-fun m!842535 () Bool)

(assert (=> b!583115 m!842535))

(assert (=> b!583115 m!842535))

(declare-fun m!842537 () Bool)

(assert (=> b!583115 m!842537))

(declare-fun m!842539 () Bool)

(assert (=> b!583097 m!842539))

(declare-fun m!842541 () Bool)

(assert (=> b!583097 m!842541))

(declare-fun m!842543 () Bool)

(assert (=> b!583097 m!842543))

(declare-fun m!842545 () Bool)

(assert (=> b!583110 m!842545))

(declare-fun m!842547 () Bool)

(assert (=> b!583108 m!842547))

(declare-fun m!842549 () Bool)

(assert (=> b!583108 m!842549))

(declare-fun m!842551 () Bool)

(assert (=> b!583099 m!842551))

(declare-fun m!842553 () Bool)

(assert (=> b!583101 m!842553))

(declare-fun m!842555 () Bool)

(assert (=> b!583104 m!842555))

(declare-fun m!842557 () Bool)

(assert (=> b!583104 m!842557))

(assert (=> b!583104 m!842557))

(declare-fun m!842559 () Bool)

(assert (=> b!583104 m!842559))

(declare-fun m!842561 () Bool)

(assert (=> b!583104 m!842561))

(declare-fun m!842563 () Bool)

(assert (=> b!583104 m!842563))

(declare-fun m!842565 () Bool)

(assert (=> b!583109 m!842565))

(declare-fun m!842567 () Bool)

(assert (=> b!583098 m!842567))

(declare-fun m!842569 () Bool)

(assert (=> b!583105 m!842569))

(declare-fun m!842571 () Bool)

(assert (=> b!583114 m!842571))

(check-sat (not b!583103) (not b_next!16269) (not b!583100) (not b!583104) (not b!583109) (not b!583101) (not b!583115) b_and!57441 (not b!583098) (not b!583108) (not b!583113) (not b_next!16275) (not b!583105) (not start!54072) (not b!583097) b_and!57435 (not b_next!16273) b_and!57437 (not b!583099) (not b_next!16271) (not b!583102) (not b!583112) tp_is_empty!3261 (not b!583111) (not b!583114) (not b!583110) b_and!57439)
(check-sat (not b_next!16269) b_and!57437 (not b_next!16271) b_and!57441 (not b_next!16275) b_and!57439 b_and!57435 (not b_next!16273))
(get-model)

(declare-fun b!583164 () Bool)

(declare-fun e!352555 () List!5747)

(assert (=> b!583164 (= e!352555 (Cons!5737 (h!11138 lt!247506) (++!1607 (t!78260 lt!247506) suffix!1342)))))

(declare-fun b!583165 () Bool)

(declare-fun res!251221 () Bool)

(declare-fun e!352556 () Bool)

(assert (=> b!583165 (=> (not res!251221) (not e!352556))))

(declare-fun lt!247531 () List!5747)

(assert (=> b!583165 (= res!251221 (= (size!4561 lt!247531) (+ (size!4561 lt!247506) (size!4561 suffix!1342))))))

(declare-fun b!583166 () Bool)

(assert (=> b!583166 (= e!352556 (or (not (= suffix!1342 Nil!5737)) (= lt!247531 lt!247506)))))

(declare-fun b!583163 () Bool)

(assert (=> b!583163 (= e!352555 suffix!1342)))

(declare-fun d!204949 () Bool)

(assert (=> d!204949 e!352556))

(declare-fun res!251222 () Bool)

(assert (=> d!204949 (=> (not res!251222) (not e!352556))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1017 (List!5747) (InoxSet C!3828))

(assert (=> d!204949 (= res!251222 (= (content!1017 lt!247531) ((_ map or) (content!1017 lt!247506) (content!1017 suffix!1342))))))

(assert (=> d!204949 (= lt!247531 e!352555)))

(declare-fun c!109087 () Bool)

(assert (=> d!204949 (= c!109087 ((_ is Nil!5737) lt!247506))))

(assert (=> d!204949 (= (++!1607 lt!247506 suffix!1342) lt!247531)))

(assert (= (and d!204949 c!109087) b!583163))

(assert (= (and d!204949 (not c!109087)) b!583164))

(assert (= (and d!204949 res!251222) b!583165))

(assert (= (and b!583165 res!251221) b!583166))

(declare-fun m!842617 () Bool)

(assert (=> b!583164 m!842617))

(declare-fun m!842619 () Bool)

(assert (=> b!583165 m!842619))

(assert (=> b!583165 m!842555))

(declare-fun m!842621 () Bool)

(assert (=> b!583165 m!842621))

(declare-fun m!842623 () Bool)

(assert (=> d!204949 m!842623))

(declare-fun m!842625 () Bool)

(assert (=> d!204949 m!842625))

(declare-fun m!842627 () Bool)

(assert (=> d!204949 m!842627))

(assert (=> b!583100 d!204949))

(declare-fun b!583204 () Bool)

(declare-fun res!251238 () Bool)

(declare-fun e!352579 () Bool)

(assert (=> b!583204 (=> res!251238 e!352579)))

(assert (=> b!583204 (= res!251238 (not ((_ is IntegerValue!3431) (value!36758 token!491))))))

(declare-fun e!352578 () Bool)

(assert (=> b!583204 (= e!352578 e!352579)))

(declare-fun b!583205 () Bool)

(declare-fun e!352580 () Bool)

(declare-fun inv!16 (TokenValue!1143) Bool)

(assert (=> b!583205 (= e!352580 (inv!16 (value!36758 token!491)))))

(declare-fun b!583206 () Bool)

(assert (=> b!583206 (= e!352580 e!352578)))

(declare-fun c!109099 () Bool)

(assert (=> b!583206 (= c!109099 ((_ is IntegerValue!3430) (value!36758 token!491)))))

(declare-fun d!204955 () Bool)

(declare-fun c!109100 () Bool)

(assert (=> d!204955 (= c!109100 ((_ is IntegerValue!3429) (value!36758 token!491)))))

(assert (=> d!204955 (= (inv!21 (value!36758 token!491)) e!352580)))

(declare-fun b!583207 () Bool)

(declare-fun inv!15 (TokenValue!1143) Bool)

(assert (=> b!583207 (= e!352579 (inv!15 (value!36758 token!491)))))

(declare-fun b!583208 () Bool)

(declare-fun inv!17 (TokenValue!1143) Bool)

(assert (=> b!583208 (= e!352578 (inv!17 (value!36758 token!491)))))

(assert (= (and d!204955 c!109100) b!583205))

(assert (= (and d!204955 (not c!109100)) b!583206))

(assert (= (and b!583206 c!109099) b!583208))

(assert (= (and b!583206 (not c!109099)) b!583204))

(assert (= (and b!583204 (not res!251238)) b!583207))

(declare-fun m!842641 () Bool)

(assert (=> b!583205 m!842641))

(declare-fun m!842643 () Bool)

(assert (=> b!583207 m!842643))

(declare-fun m!842645 () Bool)

(assert (=> b!583208 m!842645))

(assert (=> b!583110 d!204955))

(declare-fun d!204965 () Bool)

(assert (=> d!204965 (= (isEmpty!4141 rules!3103) ((_ is Nil!5738) rules!3103))))

(assert (=> b!583099 d!204965))

(declare-fun d!204967 () Bool)

(declare-fun res!251249 () Bool)

(declare-fun e!352591 () Bool)

(assert (=> d!204967 (=> (not res!251249) (not e!352591))))

(declare-fun rulesValid!397 (LexerInterface!1005 List!5748) Bool)

(assert (=> d!204967 (= res!251249 (rulesValid!397 thiss!22590 rules!3103))))

(assert (=> d!204967 (= (rulesInvariant!968 thiss!22590 rules!3103) e!352591)))

(declare-fun b!583226 () Bool)

(declare-datatypes ((List!5750 0))(
  ( (Nil!5740) (Cons!5740 (h!11141 String!7458) (t!78287 List!5750)) )
))
(declare-fun noDuplicateTag!397 (LexerInterface!1005 List!5748 List!5750) Bool)

(assert (=> b!583226 (= e!352591 (noDuplicateTag!397 thiss!22590 rules!3103 Nil!5740))))

(assert (= (and d!204967 res!251249) b!583226))

(declare-fun m!842703 () Bool)

(assert (=> d!204967 m!842703))

(declare-fun m!842705 () Bool)

(assert (=> b!583226 m!842705))

(assert (=> b!583109 d!204967))

(declare-fun d!204975 () Bool)

(declare-fun res!251257 () Bool)

(declare-fun e!352600 () Bool)

(assert (=> d!204975 (=> (not res!251257) (not e!352600))))

(assert (=> d!204975 (= res!251257 (not (isEmpty!4142 (originalCharacters!1158 token!491))))))

(assert (=> d!204975 (= (inv!7230 token!491) e!352600)))

(declare-fun b!583242 () Bool)

(declare-fun res!251258 () Bool)

(assert (=> b!583242 (=> (not res!251258) (not e!352600))))

(declare-fun dynLambda!3335 (Int TokenValue!1143) BalanceConc!3680)

(assert (=> b!583242 (= res!251258 (= (originalCharacters!1158 token!491) (list!2386 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491)))))))

(declare-fun b!583243 () Bool)

(assert (=> b!583243 (= e!352600 (= (size!4560 token!491) (size!4561 (originalCharacters!1158 token!491))))))

(assert (= (and d!204975 res!251257) b!583242))

(assert (= (and b!583242 res!251258) b!583243))

(declare-fun b_lambda!22981 () Bool)

(assert (=> (not b_lambda!22981) (not b!583242)))

(declare-fun t!78267 () Bool)

(declare-fun tb!51067 () Bool)

(assert (=> (and b!583107 (= (toChars!1845 (transformation!1119 (h!11139 rules!3103))) (toChars!1845 (transformation!1119 (rule!1877 token!491)))) t!78267) tb!51067))

(declare-fun b!583250 () Bool)

(declare-fun e!352604 () Bool)

(declare-fun tp!182002 () Bool)

(declare-fun inv!7233 (Conc!1836) Bool)

(assert (=> b!583250 (= e!352604 (and (inv!7233 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491)))) tp!182002))))

(declare-fun result!57164 () Bool)

(declare-fun inv!7234 (BalanceConc!3680) Bool)

(assert (=> tb!51067 (= result!57164 (and (inv!7234 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491))) e!352604))))

(assert (= tb!51067 b!583250))

(declare-fun m!842729 () Bool)

(assert (=> b!583250 m!842729))

(declare-fun m!842731 () Bool)

(assert (=> tb!51067 m!842731))

(assert (=> b!583242 t!78267))

(declare-fun b_and!57451 () Bool)

(assert (= b_and!57437 (and (=> t!78267 result!57164) b_and!57451)))

(declare-fun t!78271 () Bool)

(declare-fun tb!51071 () Bool)

(assert (=> (and b!583106 (= (toChars!1845 (transformation!1119 (rule!1877 token!491))) (toChars!1845 (transformation!1119 (rule!1877 token!491)))) t!78271) tb!51071))

(declare-fun result!57170 () Bool)

(assert (= result!57170 result!57164))

(assert (=> b!583242 t!78271))

(declare-fun b_and!57453 () Bool)

(assert (= b_and!57441 (and (=> t!78271 result!57170) b_and!57453)))

(declare-fun m!842735 () Bool)

(assert (=> d!204975 m!842735))

(declare-fun m!842739 () Bool)

(assert (=> b!583242 m!842739))

(assert (=> b!583242 m!842739))

(declare-fun m!842745 () Bool)

(assert (=> b!583242 m!842745))

(declare-fun m!842749 () Bool)

(assert (=> b!583243 m!842749))

(assert (=> start!54072 d!204975))

(declare-fun b!583255 () Bool)

(declare-fun e!352607 () List!5747)

(assert (=> b!583255 (= e!352607 (Cons!5737 (h!11138 lt!247510) (++!1607 (t!78260 lt!247510) (_2!3618 (v!16338 lt!247508)))))))

(declare-fun b!583256 () Bool)

(declare-fun res!251259 () Bool)

(declare-fun e!352608 () Bool)

(assert (=> b!583256 (=> (not res!251259) (not e!352608))))

(declare-fun lt!247551 () List!5747)

(assert (=> b!583256 (= res!251259 (= (size!4561 lt!247551) (+ (size!4561 lt!247510) (size!4561 (_2!3618 (v!16338 lt!247508))))))))

(declare-fun b!583257 () Bool)

(assert (=> b!583257 (= e!352608 (or (not (= (_2!3618 (v!16338 lt!247508)) Nil!5737)) (= lt!247551 lt!247510)))))

(declare-fun b!583254 () Bool)

(assert (=> b!583254 (= e!352607 (_2!3618 (v!16338 lt!247508)))))

(declare-fun d!204999 () Bool)

(assert (=> d!204999 e!352608))

(declare-fun res!251260 () Bool)

(assert (=> d!204999 (=> (not res!251260) (not e!352608))))

(assert (=> d!204999 (= res!251260 (= (content!1017 lt!247551) ((_ map or) (content!1017 lt!247510) (content!1017 (_2!3618 (v!16338 lt!247508))))))))

(assert (=> d!204999 (= lt!247551 e!352607)))

(declare-fun c!109108 () Bool)

(assert (=> d!204999 (= c!109108 ((_ is Nil!5737) lt!247510))))

(assert (=> d!204999 (= (++!1607 lt!247510 (_2!3618 (v!16338 lt!247508))) lt!247551)))

(assert (= (and d!204999 c!109108) b!583254))

(assert (= (and d!204999 (not c!109108)) b!583255))

(assert (= (and d!204999 res!251260) b!583256))

(assert (= (and b!583256 res!251259) b!583257))

(declare-fun m!842753 () Bool)

(assert (=> b!583255 m!842753))

(declare-fun m!842755 () Bool)

(assert (=> b!583256 m!842755))

(assert (=> b!583256 m!842561))

(declare-fun m!842757 () Bool)

(assert (=> b!583256 m!842757))

(declare-fun m!842759 () Bool)

(assert (=> d!204999 m!842759))

(declare-fun m!842761 () Bool)

(assert (=> d!204999 m!842761))

(declare-fun m!842763 () Bool)

(assert (=> d!204999 m!842763))

(assert (=> b!583098 d!204999))

(declare-fun d!205003 () Bool)

(declare-fun lt!247554 () Int)

(assert (=> d!205003 (>= lt!247554 0)))

(declare-fun e!352631 () Int)

(assert (=> d!205003 (= lt!247554 e!352631)))

(declare-fun c!109111 () Bool)

(assert (=> d!205003 (= c!109111 ((_ is Nil!5737) input!2705))))

(assert (=> d!205003 (= (size!4561 input!2705) lt!247554)))

(declare-fun b!583298 () Bool)

(assert (=> b!583298 (= e!352631 0)))

(declare-fun b!583299 () Bool)

(assert (=> b!583299 (= e!352631 (+ 1 (size!4561 (t!78260 input!2705))))))

(assert (= (and d!205003 c!109111) b!583298))

(assert (= (and d!205003 (not c!109111)) b!583299))

(declare-fun m!842769 () Bool)

(assert (=> b!583299 m!842769))

(assert (=> b!583102 d!205003))

(declare-fun d!205005 () Bool)

(assert (=> d!205005 (= (inv!7226 (tag!1381 (h!11139 rules!3103))) (= (mod (str.len (value!36732 (tag!1381 (h!11139 rules!3103)))) 2) 0))))

(assert (=> b!583112 d!205005))

(declare-fun d!205007 () Bool)

(declare-fun res!251266 () Bool)

(declare-fun e!352638 () Bool)

(assert (=> d!205007 (=> (not res!251266) (not e!352638))))

(declare-fun semiInverseModEq!433 (Int Int) Bool)

(assert (=> d!205007 (= res!251266 (semiInverseModEq!433 (toChars!1845 (transformation!1119 (h!11139 rules!3103))) (toValue!1986 (transformation!1119 (h!11139 rules!3103)))))))

(assert (=> d!205007 (= (inv!7229 (transformation!1119 (h!11139 rules!3103))) e!352638)))

(declare-fun b!583305 () Bool)

(declare-fun equivClasses!416 (Int Int) Bool)

(assert (=> b!583305 (= e!352638 (equivClasses!416 (toChars!1845 (transformation!1119 (h!11139 rules!3103))) (toValue!1986 (transformation!1119 (h!11139 rules!3103)))))))

(assert (= (and d!205007 res!251266) b!583305))

(declare-fun m!842775 () Bool)

(assert (=> d!205007 m!842775))

(declare-fun m!842777 () Bool)

(assert (=> b!583305 m!842777))

(assert (=> b!583112 d!205007))

(declare-fun d!205009 () Bool)

(assert (=> d!205009 (= (get!2193 lt!247505) (v!16338 lt!247505))))

(assert (=> b!583101 d!205009))

(declare-fun b!583324 () Bool)

(declare-fun e!352646 () Option!1470)

(declare-fun lt!247568 () Option!1470)

(declare-fun lt!247569 () Option!1470)

(assert (=> b!583324 (= e!352646 (ite (and ((_ is None!1469) lt!247568) ((_ is None!1469) lt!247569)) None!1469 (ite ((_ is None!1469) lt!247569) lt!247568 (ite ((_ is None!1469) lt!247568) lt!247569 (ite (>= (size!4560 (_1!3618 (v!16338 lt!247568))) (size!4560 (_1!3618 (v!16338 lt!247569)))) lt!247568 lt!247569)))))))

(declare-fun call!40164 () Option!1470)

(assert (=> b!583324 (= lt!247568 call!40164)))

(assert (=> b!583324 (= lt!247569 (maxPrefix!703 thiss!22590 (t!78261 rules!3103) input!2705))))

(declare-fun b!583325 () Bool)

(declare-fun res!251281 () Bool)

(declare-fun e!352645 () Bool)

(assert (=> b!583325 (=> (not res!251281) (not e!352645))))

(declare-fun lt!247567 () Option!1470)

(declare-fun apply!1378 (TokenValueInjection!2054 BalanceConc!3680) TokenValue!1143)

(declare-fun seqFromList!1301 (List!5747) BalanceConc!3680)

(assert (=> b!583325 (= res!251281 (= (value!36758 (_1!3618 (get!2193 lt!247567))) (apply!1378 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247567)))) (seqFromList!1301 (originalCharacters!1158 (_1!3618 (get!2193 lt!247567)))))))))

(declare-fun b!583326 () Bool)

(declare-fun res!251287 () Bool)

(assert (=> b!583326 (=> (not res!251287) (not e!352645))))

(assert (=> b!583326 (= res!251287 (= (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567)))) (originalCharacters!1158 (_1!3618 (get!2193 lt!247567)))))))

(declare-fun b!583327 () Bool)

(declare-fun contains!1347 (List!5748 Rule!2038) Bool)

(assert (=> b!583327 (= e!352645 (contains!1347 rules!3103 (rule!1877 (_1!3618 (get!2193 lt!247567)))))))

(declare-fun b!583328 () Bool)

(assert (=> b!583328 (= e!352646 call!40164)))

(declare-fun d!205011 () Bool)

(declare-fun e!352647 () Bool)

(assert (=> d!205011 e!352647))

(declare-fun res!251285 () Bool)

(assert (=> d!205011 (=> res!251285 e!352647)))

(declare-fun isEmpty!4144 (Option!1470) Bool)

(assert (=> d!205011 (= res!251285 (isEmpty!4144 lt!247567))))

(assert (=> d!205011 (= lt!247567 e!352646)))

(declare-fun c!109114 () Bool)

(assert (=> d!205011 (= c!109114 (and ((_ is Cons!5738) rules!3103) ((_ is Nil!5738) (t!78261 rules!3103))))))

(declare-fun lt!247566 () Unit!10427)

(declare-fun lt!247565 () Unit!10427)

(assert (=> d!205011 (= lt!247566 lt!247565)))

(declare-fun isPrefix!747 (List!5747 List!5747) Bool)

(assert (=> d!205011 (isPrefix!747 input!2705 input!2705)))

(declare-fun lemmaIsPrefixRefl!485 (List!5747 List!5747) Unit!10427)

(assert (=> d!205011 (= lt!247565 (lemmaIsPrefixRefl!485 input!2705 input!2705))))

(declare-fun rulesValidInductive!402 (LexerInterface!1005 List!5748) Bool)

(assert (=> d!205011 (rulesValidInductive!402 thiss!22590 rules!3103)))

(assert (=> d!205011 (= (maxPrefix!703 thiss!22590 rules!3103 input!2705) lt!247567)))

(declare-fun b!583329 () Bool)

(declare-fun res!251284 () Bool)

(assert (=> b!583329 (=> (not res!251284) (not e!352645))))

(declare-fun matchR!594 (Regex!1453 List!5747) Bool)

(assert (=> b!583329 (= res!251284 (matchR!594 (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247567)))) (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567))))))))

(declare-fun b!583330 () Bool)

(declare-fun res!251283 () Bool)

(assert (=> b!583330 (=> (not res!251283) (not e!352645))))

(assert (=> b!583330 (= res!251283 (= (++!1607 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567)))) (_2!3618 (get!2193 lt!247567))) input!2705))))

(declare-fun b!583331 () Bool)

(assert (=> b!583331 (= e!352647 e!352645)))

(declare-fun res!251282 () Bool)

(assert (=> b!583331 (=> (not res!251282) (not e!352645))))

(assert (=> b!583331 (= res!251282 (isDefined!1281 lt!247567))))

(declare-fun bm!40159 () Bool)

(declare-fun maxPrefixOneRule!398 (LexerInterface!1005 Rule!2038 List!5747) Option!1470)

(assert (=> bm!40159 (= call!40164 (maxPrefixOneRule!398 thiss!22590 (h!11139 rules!3103) input!2705))))

(declare-fun b!583332 () Bool)

(declare-fun res!251286 () Bool)

(assert (=> b!583332 (=> (not res!251286) (not e!352645))))

(assert (=> b!583332 (= res!251286 (< (size!4561 (_2!3618 (get!2193 lt!247567))) (size!4561 input!2705)))))

(assert (= (and d!205011 c!109114) b!583328))

(assert (= (and d!205011 (not c!109114)) b!583324))

(assert (= (or b!583328 b!583324) bm!40159))

(assert (= (and d!205011 (not res!251285)) b!583331))

(assert (= (and b!583331 res!251282) b!583326))

(assert (= (and b!583326 res!251287) b!583332))

(assert (= (and b!583332 res!251286) b!583330))

(assert (= (and b!583330 res!251283) b!583325))

(assert (= (and b!583325 res!251281) b!583329))

(assert (= (and b!583329 res!251284) b!583327))

(declare-fun m!842779 () Bool)

(assert (=> b!583324 m!842779))

(declare-fun m!842781 () Bool)

(assert (=> b!583331 m!842781))

(declare-fun m!842783 () Bool)

(assert (=> b!583327 m!842783))

(declare-fun m!842785 () Bool)

(assert (=> b!583327 m!842785))

(declare-fun m!842787 () Bool)

(assert (=> d!205011 m!842787))

(declare-fun m!842789 () Bool)

(assert (=> d!205011 m!842789))

(declare-fun m!842791 () Bool)

(assert (=> d!205011 m!842791))

(declare-fun m!842793 () Bool)

(assert (=> d!205011 m!842793))

(assert (=> b!583325 m!842783))

(declare-fun m!842795 () Bool)

(assert (=> b!583325 m!842795))

(assert (=> b!583325 m!842795))

(declare-fun m!842797 () Bool)

(assert (=> b!583325 m!842797))

(assert (=> b!583329 m!842783))

(declare-fun m!842799 () Bool)

(assert (=> b!583329 m!842799))

(assert (=> b!583329 m!842799))

(declare-fun m!842801 () Bool)

(assert (=> b!583329 m!842801))

(assert (=> b!583329 m!842801))

(declare-fun m!842803 () Bool)

(assert (=> b!583329 m!842803))

(assert (=> b!583330 m!842783))

(assert (=> b!583330 m!842799))

(assert (=> b!583330 m!842799))

(assert (=> b!583330 m!842801))

(assert (=> b!583330 m!842801))

(declare-fun m!842805 () Bool)

(assert (=> b!583330 m!842805))

(declare-fun m!842807 () Bool)

(assert (=> bm!40159 m!842807))

(assert (=> b!583332 m!842783))

(declare-fun m!842809 () Bool)

(assert (=> b!583332 m!842809))

(assert (=> b!583332 m!842533))

(assert (=> b!583326 m!842783))

(assert (=> b!583326 m!842799))

(assert (=> b!583326 m!842799))

(assert (=> b!583326 m!842801))

(assert (=> b!583105 d!205011))

(declare-fun d!205013 () Bool)

(declare-fun list!2388 (Conc!1836) List!5747)

(assert (=> d!205013 (= (list!2386 (charsOf!748 token!491)) (list!2388 (c!109078 (charsOf!748 token!491))))))

(declare-fun bs!69886 () Bool)

(assert (= bs!69886 d!205013))

(declare-fun m!842811 () Bool)

(assert (=> bs!69886 m!842811))

(assert (=> b!583115 d!205013))

(declare-fun d!205015 () Bool)

(declare-fun lt!247572 () BalanceConc!3680)

(assert (=> d!205015 (= (list!2386 lt!247572) (originalCharacters!1158 token!491))))

(assert (=> d!205015 (= lt!247572 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491)))))

(assert (=> d!205015 (= (charsOf!748 token!491) lt!247572)))

(declare-fun b_lambda!22989 () Bool)

(assert (=> (not b_lambda!22989) (not d!205015)))

(assert (=> d!205015 t!78267))

(declare-fun b_and!57463 () Bool)

(assert (= b_and!57451 (and (=> t!78267 result!57164) b_and!57463)))

(assert (=> d!205015 t!78271))

(declare-fun b_and!57465 () Bool)

(assert (= b_and!57453 (and (=> t!78271 result!57170) b_and!57465)))

(declare-fun m!842813 () Bool)

(assert (=> d!205015 m!842813))

(assert (=> d!205015 m!842739))

(assert (=> b!583115 d!205015))

(declare-fun d!205017 () Bool)

(assert (=> d!205017 (and (= lt!247506 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!247575 () Unit!10427)

(declare-fun choose!4193 (List!5747 List!5747 List!5747 List!5747) Unit!10427)

(assert (=> d!205017 (= lt!247575 (choose!4193 lt!247506 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!205017 (= (++!1607 lt!247506 suffix!1342) (++!1607 input!2705 suffix!1342))))

(assert (=> d!205017 (= (lemmaConcatSameAndSameSizesThenSameLists!192 lt!247506 suffix!1342 input!2705 suffix!1342) lt!247575)))

(declare-fun bs!69887 () Bool)

(assert (= bs!69887 d!205017))

(declare-fun m!842815 () Bool)

(assert (=> bs!69887 m!842815))

(assert (=> bs!69887 m!842527))

(assert (=> bs!69887 m!842543))

(assert (=> b!583104 d!205017))

(declare-fun d!205019 () Bool)

(declare-fun lt!247576 () Int)

(assert (=> d!205019 (>= lt!247576 0)))

(declare-fun e!352648 () Int)

(assert (=> d!205019 (= lt!247576 e!352648)))

(declare-fun c!109115 () Bool)

(assert (=> d!205019 (= c!109115 ((_ is Nil!5737) lt!247510))))

(assert (=> d!205019 (= (size!4561 lt!247510) lt!247576)))

(declare-fun b!583333 () Bool)

(assert (=> b!583333 (= e!352648 0)))

(declare-fun b!583334 () Bool)

(assert (=> b!583334 (= e!352648 (+ 1 (size!4561 (t!78260 lt!247510))))))

(assert (= (and d!205019 c!109115) b!583333))

(assert (= (and d!205019 (not c!109115)) b!583334))

(declare-fun m!842817 () Bool)

(assert (=> b!583334 m!842817))

(assert (=> b!583104 d!205019))

(declare-fun d!205021 () Bool)

(declare-fun lt!247577 () Int)

(assert (=> d!205021 (>= lt!247577 0)))

(declare-fun e!352649 () Int)

(assert (=> d!205021 (= lt!247577 e!352649)))

(declare-fun c!109116 () Bool)

(assert (=> d!205021 (= c!109116 ((_ is Nil!5737) lt!247506))))

(assert (=> d!205021 (= (size!4561 lt!247506) lt!247577)))

(declare-fun b!583335 () Bool)

(assert (=> b!583335 (= e!352649 0)))

(declare-fun b!583336 () Bool)

(assert (=> b!583336 (= e!352649 (+ 1 (size!4561 (t!78260 lt!247506))))))

(assert (= (and d!205021 c!109116) b!583335))

(assert (= (and d!205021 (not c!109116)) b!583336))

(declare-fun m!842819 () Bool)

(assert (=> b!583336 m!842819))

(assert (=> b!583104 d!205021))

(declare-fun d!205023 () Bool)

(assert (=> d!205023 (= (list!2386 (charsOf!748 (_1!3618 (v!16338 lt!247508)))) (list!2388 (c!109078 (charsOf!748 (_1!3618 (v!16338 lt!247508))))))))

(declare-fun bs!69888 () Bool)

(assert (= bs!69888 d!205023))

(declare-fun m!842821 () Bool)

(assert (=> bs!69888 m!842821))

(assert (=> b!583104 d!205023))

(declare-fun d!205025 () Bool)

(declare-fun lt!247578 () BalanceConc!3680)

(assert (=> d!205025 (= (list!2386 lt!247578) (originalCharacters!1158 (_1!3618 (v!16338 lt!247508))))))

(assert (=> d!205025 (= lt!247578 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))) (value!36758 (_1!3618 (v!16338 lt!247508)))))))

(assert (=> d!205025 (= (charsOf!748 (_1!3618 (v!16338 lt!247508))) lt!247578)))

(declare-fun b_lambda!22991 () Bool)

(assert (=> (not b_lambda!22991) (not d!205025)))

(declare-fun t!78279 () Bool)

(declare-fun tb!51079 () Bool)

(assert (=> (and b!583107 (= (toChars!1845 (transformation!1119 (h!11139 rules!3103))) (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508)))))) t!78279) tb!51079))

(declare-fun b!583337 () Bool)

(declare-fun e!352650 () Bool)

(declare-fun tp!182041 () Bool)

(assert (=> b!583337 (= e!352650 (and (inv!7233 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))) (value!36758 (_1!3618 (v!16338 lt!247508)))))) tp!182041))))

(declare-fun result!57184 () Bool)

(assert (=> tb!51079 (= result!57184 (and (inv!7234 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))) (value!36758 (_1!3618 (v!16338 lt!247508))))) e!352650))))

(assert (= tb!51079 b!583337))

(declare-fun m!842823 () Bool)

(assert (=> b!583337 m!842823))

(declare-fun m!842825 () Bool)

(assert (=> tb!51079 m!842825))

(assert (=> d!205025 t!78279))

(declare-fun b_and!57467 () Bool)

(assert (= b_and!57463 (and (=> t!78279 result!57184) b_and!57467)))

(declare-fun t!78281 () Bool)

(declare-fun tb!51081 () Bool)

(assert (=> (and b!583106 (= (toChars!1845 (transformation!1119 (rule!1877 token!491))) (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508)))))) t!78281) tb!51081))

(declare-fun result!57186 () Bool)

(assert (= result!57186 result!57184))

(assert (=> d!205025 t!78281))

(declare-fun b_and!57469 () Bool)

(assert (= b_and!57465 (and (=> t!78281 result!57186) b_and!57469)))

(declare-fun m!842827 () Bool)

(assert (=> d!205025 m!842827))

(declare-fun m!842829 () Bool)

(assert (=> d!205025 m!842829))

(assert (=> b!583104 d!205025))

(declare-fun d!205027 () Bool)

(assert (=> d!205027 (= (isEmpty!4142 input!2705) ((_ is Nil!5737) input!2705))))

(assert (=> b!583114 d!205027))

(declare-fun d!205029 () Bool)

(assert (=> d!205029 (= (inv!7226 (tag!1381 (rule!1877 token!491))) (= (mod (str.len (value!36732 (tag!1381 (rule!1877 token!491)))) 2) 0))))

(assert (=> b!583108 d!205029))

(declare-fun d!205031 () Bool)

(declare-fun res!251288 () Bool)

(declare-fun e!352651 () Bool)

(assert (=> d!205031 (=> (not res!251288) (not e!352651))))

(assert (=> d!205031 (= res!251288 (semiInverseModEq!433 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (toValue!1986 (transformation!1119 (rule!1877 token!491)))))))

(assert (=> d!205031 (= (inv!7229 (transformation!1119 (rule!1877 token!491))) e!352651)))

(declare-fun b!583338 () Bool)

(assert (=> b!583338 (= e!352651 (equivClasses!416 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (toValue!1986 (transformation!1119 (rule!1877 token!491)))))))

(assert (= (and d!205031 res!251288) b!583338))

(declare-fun m!842831 () Bool)

(assert (=> d!205031 m!842831))

(declare-fun m!842833 () Bool)

(assert (=> b!583338 m!842833))

(assert (=> b!583108 d!205031))

(declare-fun d!205033 () Bool)

(assert (=> d!205033 (= (isDefined!1281 lt!247505) (not (isEmpty!4144 lt!247505)))))

(declare-fun bs!69889 () Bool)

(assert (= bs!69889 d!205033))

(declare-fun m!842835 () Bool)

(assert (=> bs!69889 m!842835))

(assert (=> b!583097 d!205033))

(declare-fun b!583339 () Bool)

(declare-fun e!352653 () Option!1470)

(declare-fun lt!247582 () Option!1470)

(declare-fun lt!247583 () Option!1470)

(assert (=> b!583339 (= e!352653 (ite (and ((_ is None!1469) lt!247582) ((_ is None!1469) lt!247583)) None!1469 (ite ((_ is None!1469) lt!247583) lt!247582 (ite ((_ is None!1469) lt!247582) lt!247583 (ite (>= (size!4560 (_1!3618 (v!16338 lt!247582))) (size!4560 (_1!3618 (v!16338 lt!247583)))) lt!247582 lt!247583)))))))

(declare-fun call!40165 () Option!1470)

(assert (=> b!583339 (= lt!247582 call!40165)))

(assert (=> b!583339 (= lt!247583 (maxPrefix!703 thiss!22590 (t!78261 rules!3103) lt!247503))))

(declare-fun b!583340 () Bool)

(declare-fun res!251289 () Bool)

(declare-fun e!352652 () Bool)

(assert (=> b!583340 (=> (not res!251289) (not e!352652))))

(declare-fun lt!247581 () Option!1470)

(assert (=> b!583340 (= res!251289 (= (value!36758 (_1!3618 (get!2193 lt!247581))) (apply!1378 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247581)))) (seqFromList!1301 (originalCharacters!1158 (_1!3618 (get!2193 lt!247581)))))))))

(declare-fun b!583341 () Bool)

(declare-fun res!251295 () Bool)

(assert (=> b!583341 (=> (not res!251295) (not e!352652))))

(assert (=> b!583341 (= res!251295 (= (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581)))) (originalCharacters!1158 (_1!3618 (get!2193 lt!247581)))))))

(declare-fun b!583342 () Bool)

(assert (=> b!583342 (= e!352652 (contains!1347 rules!3103 (rule!1877 (_1!3618 (get!2193 lt!247581)))))))

(declare-fun b!583343 () Bool)

(assert (=> b!583343 (= e!352653 call!40165)))

(declare-fun d!205035 () Bool)

(declare-fun e!352654 () Bool)

(assert (=> d!205035 e!352654))

(declare-fun res!251293 () Bool)

(assert (=> d!205035 (=> res!251293 e!352654)))

(assert (=> d!205035 (= res!251293 (isEmpty!4144 lt!247581))))

(assert (=> d!205035 (= lt!247581 e!352653)))

(declare-fun c!109117 () Bool)

(assert (=> d!205035 (= c!109117 (and ((_ is Cons!5738) rules!3103) ((_ is Nil!5738) (t!78261 rules!3103))))))

(declare-fun lt!247580 () Unit!10427)

(declare-fun lt!247579 () Unit!10427)

(assert (=> d!205035 (= lt!247580 lt!247579)))

(assert (=> d!205035 (isPrefix!747 lt!247503 lt!247503)))

(assert (=> d!205035 (= lt!247579 (lemmaIsPrefixRefl!485 lt!247503 lt!247503))))

(assert (=> d!205035 (rulesValidInductive!402 thiss!22590 rules!3103)))

(assert (=> d!205035 (= (maxPrefix!703 thiss!22590 rules!3103 lt!247503) lt!247581)))

(declare-fun b!583344 () Bool)

(declare-fun res!251292 () Bool)

(assert (=> b!583344 (=> (not res!251292) (not e!352652))))

(assert (=> b!583344 (= res!251292 (matchR!594 (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247581)))) (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581))))))))

(declare-fun b!583345 () Bool)

(declare-fun res!251291 () Bool)

(assert (=> b!583345 (=> (not res!251291) (not e!352652))))

(assert (=> b!583345 (= res!251291 (= (++!1607 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581)))) (_2!3618 (get!2193 lt!247581))) lt!247503))))

(declare-fun b!583346 () Bool)

(assert (=> b!583346 (= e!352654 e!352652)))

(declare-fun res!251290 () Bool)

(assert (=> b!583346 (=> (not res!251290) (not e!352652))))

(assert (=> b!583346 (= res!251290 (isDefined!1281 lt!247581))))

(declare-fun bm!40160 () Bool)

(assert (=> bm!40160 (= call!40165 (maxPrefixOneRule!398 thiss!22590 (h!11139 rules!3103) lt!247503))))

(declare-fun b!583347 () Bool)

(declare-fun res!251294 () Bool)

(assert (=> b!583347 (=> (not res!251294) (not e!352652))))

(assert (=> b!583347 (= res!251294 (< (size!4561 (_2!3618 (get!2193 lt!247581))) (size!4561 lt!247503)))))

(assert (= (and d!205035 c!109117) b!583343))

(assert (= (and d!205035 (not c!109117)) b!583339))

(assert (= (or b!583343 b!583339) bm!40160))

(assert (= (and d!205035 (not res!251293)) b!583346))

(assert (= (and b!583346 res!251290) b!583341))

(assert (= (and b!583341 res!251295) b!583347))

(assert (= (and b!583347 res!251294) b!583345))

(assert (= (and b!583345 res!251291) b!583340))

(assert (= (and b!583340 res!251289) b!583344))

(assert (= (and b!583344 res!251292) b!583342))

(declare-fun m!842837 () Bool)

(assert (=> b!583339 m!842837))

(declare-fun m!842839 () Bool)

(assert (=> b!583346 m!842839))

(declare-fun m!842841 () Bool)

(assert (=> b!583342 m!842841))

(declare-fun m!842843 () Bool)

(assert (=> b!583342 m!842843))

(declare-fun m!842845 () Bool)

(assert (=> d!205035 m!842845))

(declare-fun m!842847 () Bool)

(assert (=> d!205035 m!842847))

(declare-fun m!842849 () Bool)

(assert (=> d!205035 m!842849))

(assert (=> d!205035 m!842793))

(assert (=> b!583340 m!842841))

(declare-fun m!842851 () Bool)

(assert (=> b!583340 m!842851))

(assert (=> b!583340 m!842851))

(declare-fun m!842853 () Bool)

(assert (=> b!583340 m!842853))

(assert (=> b!583344 m!842841))

(declare-fun m!842855 () Bool)

(assert (=> b!583344 m!842855))

(assert (=> b!583344 m!842855))

(declare-fun m!842857 () Bool)

(assert (=> b!583344 m!842857))

(assert (=> b!583344 m!842857))

(declare-fun m!842859 () Bool)

(assert (=> b!583344 m!842859))

(assert (=> b!583345 m!842841))

(assert (=> b!583345 m!842855))

(assert (=> b!583345 m!842855))

(assert (=> b!583345 m!842857))

(assert (=> b!583345 m!842857))

(declare-fun m!842861 () Bool)

(assert (=> b!583345 m!842861))

(declare-fun m!842863 () Bool)

(assert (=> bm!40160 m!842863))

(assert (=> b!583347 m!842841))

(declare-fun m!842865 () Bool)

(assert (=> b!583347 m!842865))

(declare-fun m!842867 () Bool)

(assert (=> b!583347 m!842867))

(assert (=> b!583341 m!842841))

(assert (=> b!583341 m!842855))

(assert (=> b!583341 m!842855))

(assert (=> b!583341 m!842857))

(assert (=> b!583097 d!205035))

(declare-fun b!583349 () Bool)

(declare-fun e!352655 () List!5747)

(assert (=> b!583349 (= e!352655 (Cons!5737 (h!11138 input!2705) (++!1607 (t!78260 input!2705) suffix!1342)))))

(declare-fun b!583350 () Bool)

(declare-fun res!251296 () Bool)

(declare-fun e!352656 () Bool)

(assert (=> b!583350 (=> (not res!251296) (not e!352656))))

(declare-fun lt!247584 () List!5747)

(assert (=> b!583350 (= res!251296 (= (size!4561 lt!247584) (+ (size!4561 input!2705) (size!4561 suffix!1342))))))

(declare-fun b!583351 () Bool)

(assert (=> b!583351 (= e!352656 (or (not (= suffix!1342 Nil!5737)) (= lt!247584 input!2705)))))

(declare-fun b!583348 () Bool)

(assert (=> b!583348 (= e!352655 suffix!1342)))

(declare-fun d!205037 () Bool)

(assert (=> d!205037 e!352656))

(declare-fun res!251297 () Bool)

(assert (=> d!205037 (=> (not res!251297) (not e!352656))))

(assert (=> d!205037 (= res!251297 (= (content!1017 lt!247584) ((_ map or) (content!1017 input!2705) (content!1017 suffix!1342))))))

(assert (=> d!205037 (= lt!247584 e!352655)))

(declare-fun c!109118 () Bool)

(assert (=> d!205037 (= c!109118 ((_ is Nil!5737) input!2705))))

(assert (=> d!205037 (= (++!1607 input!2705 suffix!1342) lt!247584)))

(assert (= (and d!205037 c!109118) b!583348))

(assert (= (and d!205037 (not c!109118)) b!583349))

(assert (= (and d!205037 res!251297) b!583350))

(assert (= (and b!583350 res!251296) b!583351))

(declare-fun m!842869 () Bool)

(assert (=> b!583349 m!842869))

(declare-fun m!842871 () Bool)

(assert (=> b!583350 m!842871))

(assert (=> b!583350 m!842533))

(assert (=> b!583350 m!842621))

(declare-fun m!842873 () Bool)

(assert (=> d!205037 m!842873))

(declare-fun m!842875 () Bool)

(assert (=> d!205037 m!842875))

(assert (=> d!205037 m!842627))

(assert (=> b!583097 d!205037))

(declare-fun b!583362 () Bool)

(declare-fun b_free!16265 () Bool)

(declare-fun b_next!16281 () Bool)

(assert (=> b!583362 (= b_free!16265 (not b_next!16281))))

(declare-fun tp!182051 () Bool)

(declare-fun b_and!57471 () Bool)

(assert (=> b!583362 (= tp!182051 b_and!57471)))

(declare-fun b_free!16267 () Bool)

(declare-fun b_next!16283 () Bool)

(assert (=> b!583362 (= b_free!16267 (not b_next!16283))))

(declare-fun tb!51083 () Bool)

(declare-fun t!78284 () Bool)

(assert (=> (and b!583362 (= (toChars!1845 (transformation!1119 (h!11139 (t!78261 rules!3103)))) (toChars!1845 (transformation!1119 (rule!1877 token!491)))) t!78284) tb!51083))

(declare-fun result!57190 () Bool)

(assert (= result!57190 result!57164))

(assert (=> b!583242 t!78284))

(assert (=> d!205015 t!78284))

(declare-fun tb!51085 () Bool)

(declare-fun t!78286 () Bool)

(assert (=> (and b!583362 (= (toChars!1845 (transformation!1119 (h!11139 (t!78261 rules!3103)))) (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508)))))) t!78286) tb!51085))

(declare-fun result!57192 () Bool)

(assert (= result!57192 result!57184))

(assert (=> d!205025 t!78286))

(declare-fun b_and!57473 () Bool)

(declare-fun tp!182050 () Bool)

(assert (=> b!583362 (= tp!182050 (and (=> t!78284 result!57190) (=> t!78286 result!57192) b_and!57473))))

(declare-fun e!352665 () Bool)

(assert (=> b!583362 (= e!352665 (and tp!182051 tp!182050))))

(declare-fun e!352667 () Bool)

(declare-fun tp!182052 () Bool)

(declare-fun b!583361 () Bool)

(assert (=> b!583361 (= e!352667 (and tp!182052 (inv!7226 (tag!1381 (h!11139 (t!78261 rules!3103)))) (inv!7229 (transformation!1119 (h!11139 (t!78261 rules!3103)))) e!352665))))

(declare-fun b!583360 () Bool)

(declare-fun e!352666 () Bool)

(declare-fun tp!182053 () Bool)

(assert (=> b!583360 (= e!352666 (and e!352667 tp!182053))))

(assert (=> b!583111 (= tp!181995 e!352666)))

(assert (= b!583361 b!583362))

(assert (= b!583360 b!583361))

(assert (= (and b!583111 ((_ is Cons!5738) (t!78261 rules!3103))) b!583360))

(declare-fun m!842877 () Bool)

(assert (=> b!583361 m!842877))

(declare-fun m!842879 () Bool)

(assert (=> b!583361 m!842879))

(declare-fun b!583367 () Bool)

(declare-fun e!352671 () Bool)

(declare-fun tp!182056 () Bool)

(assert (=> b!583367 (= e!352671 (and tp_is_empty!3261 tp!182056))))

(assert (=> b!583110 (= tp!181992 e!352671)))

(assert (= (and b!583110 ((_ is Cons!5737) (originalCharacters!1158 token!491))) b!583367))

(declare-fun b!583368 () Bool)

(declare-fun e!352672 () Bool)

(declare-fun tp!182057 () Bool)

(assert (=> b!583368 (= e!352672 (and tp_is_empty!3261 tp!182057))))

(assert (=> b!583103 (= tp!181987 e!352672)))

(assert (= (and b!583103 ((_ is Cons!5737) (t!78260 input!2705))) b!583368))

(declare-fun b!583380 () Bool)

(declare-fun e!352675 () Bool)

(declare-fun tp!182071 () Bool)

(declare-fun tp!182069 () Bool)

(assert (=> b!583380 (= e!352675 (and tp!182071 tp!182069))))

(declare-fun b!583381 () Bool)

(declare-fun tp!182070 () Bool)

(assert (=> b!583381 (= e!352675 tp!182070)))

(declare-fun b!583379 () Bool)

(assert (=> b!583379 (= e!352675 tp_is_empty!3261)))

(declare-fun b!583382 () Bool)

(declare-fun tp!182068 () Bool)

(declare-fun tp!182072 () Bool)

(assert (=> b!583382 (= e!352675 (and tp!182068 tp!182072))))

(assert (=> b!583108 (= tp!181990 e!352675)))

(assert (= (and b!583108 ((_ is ElementMatch!1453) (regex!1119 (rule!1877 token!491)))) b!583379))

(assert (= (and b!583108 ((_ is Concat!2596) (regex!1119 (rule!1877 token!491)))) b!583380))

(assert (= (and b!583108 ((_ is Star!1453) (regex!1119 (rule!1877 token!491)))) b!583381))

(assert (= (and b!583108 ((_ is Union!1453) (regex!1119 (rule!1877 token!491)))) b!583382))

(declare-fun b!583383 () Bool)

(declare-fun e!352676 () Bool)

(declare-fun tp!182073 () Bool)

(assert (=> b!583383 (= e!352676 (and tp_is_empty!3261 tp!182073))))

(assert (=> b!583113 (= tp!181993 e!352676)))

(assert (= (and b!583113 ((_ is Cons!5737) (t!78260 suffix!1342))) b!583383))

(declare-fun b!583385 () Bool)

(declare-fun e!352677 () Bool)

(declare-fun tp!182077 () Bool)

(declare-fun tp!182075 () Bool)

(assert (=> b!583385 (= e!352677 (and tp!182077 tp!182075))))

(declare-fun b!583386 () Bool)

(declare-fun tp!182076 () Bool)

(assert (=> b!583386 (= e!352677 tp!182076)))

(declare-fun b!583384 () Bool)

(assert (=> b!583384 (= e!352677 tp_is_empty!3261)))

(declare-fun b!583387 () Bool)

(declare-fun tp!182074 () Bool)

(declare-fun tp!182078 () Bool)

(assert (=> b!583387 (= e!352677 (and tp!182074 tp!182078))))

(assert (=> b!583112 (= tp!181989 e!352677)))

(assert (= (and b!583112 ((_ is ElementMatch!1453) (regex!1119 (h!11139 rules!3103)))) b!583384))

(assert (= (and b!583112 ((_ is Concat!2596) (regex!1119 (h!11139 rules!3103)))) b!583385))

(assert (= (and b!583112 ((_ is Star!1453) (regex!1119 (h!11139 rules!3103)))) b!583386))

(assert (= (and b!583112 ((_ is Union!1453) (regex!1119 (h!11139 rules!3103)))) b!583387))

(declare-fun b_lambda!22993 () Bool)

(assert (= b_lambda!22989 (or (and b!583107 b_free!16255 (= (toChars!1845 (transformation!1119 (h!11139 rules!3103))) (toChars!1845 (transformation!1119 (rule!1877 token!491))))) (and b!583106 b_free!16259) (and b!583362 b_free!16267 (= (toChars!1845 (transformation!1119 (h!11139 (t!78261 rules!3103)))) (toChars!1845 (transformation!1119 (rule!1877 token!491))))) b_lambda!22993)))

(declare-fun b_lambda!22995 () Bool)

(assert (= b_lambda!22981 (or (and b!583107 b_free!16255 (= (toChars!1845 (transformation!1119 (h!11139 rules!3103))) (toChars!1845 (transformation!1119 (rule!1877 token!491))))) (and b!583106 b_free!16259) (and b!583362 b_free!16267 (= (toChars!1845 (transformation!1119 (h!11139 (t!78261 rules!3103)))) (toChars!1845 (transformation!1119 (rule!1877 token!491))))) b_lambda!22995)))

(check-sat (not d!205011) (not b!583380) (not b!583340) (not b_next!16271) (not b!583344) (not b!583381) (not b!583360) (not b!583386) (not b!583299) (not b!583324) b_and!57435 (not b_next!16273) (not d!205013) (not b!583341) (not b!583332) (not b_lambda!22995) (not b_next!16269) (not b!583207) (not b!583326) (not b!583387) (not b!583382) b_and!57473 b_and!57469 (not b!583255) (not b!583331) (not b!583361) (not d!205015) (not b!583337) (not d!205023) (not b!583367) b_and!57467 (not b_next!16281) (not d!205007) (not bm!40160) (not d!205035) (not d!205017) b_and!57471 (not b!583336) (not b!583342) (not b!583346) (not b!583205) (not tb!51067) (not b!583338) (not b!583243) (not d!205025) (not b!583164) (not d!204949) (not b_next!16283) (not d!204967) (not b_lambda!22993) (not b!583226) (not b!583339) (not tb!51079) (not d!204999) (not d!205033) (not b!583350) (not b!583242) (not b!583208) tp_is_empty!3261 (not bm!40159) (not b!583327) (not d!205031) (not b!583385) (not b!583334) (not b!583165) (not d!205037) (not b!583349) (not b_next!16275) (not b!583330) (not b!583345) (not b!583383) (not b!583329) (not b!583256) (not b!583325) (not b_lambda!22991) b_and!57439 (not d!204975) (not b!583347) (not b!583368) (not b!583305) (not b!583250))
(check-sat (not b_next!16269) b_and!57473 b_and!57469 b_and!57467 (not b_next!16281) (not b_next!16271) b_and!57471 (not b_next!16283) (not b_next!16275) b_and!57439 b_and!57435 (not b_next!16273))
(get-model)

(declare-fun d!205055 () Bool)

(declare-fun lt!247602 () Int)

(assert (=> d!205055 (>= lt!247602 0)))

(declare-fun e!352697 () Int)

(assert (=> d!205055 (= lt!247602 e!352697)))

(declare-fun c!109129 () Bool)

(assert (=> d!205055 (= c!109129 ((_ is Nil!5737) lt!247531))))

(assert (=> d!205055 (= (size!4561 lt!247531) lt!247602)))

(declare-fun b!583429 () Bool)

(assert (=> b!583429 (= e!352697 0)))

(declare-fun b!583430 () Bool)

(assert (=> b!583430 (= e!352697 (+ 1 (size!4561 (t!78260 lt!247531))))))

(assert (= (and d!205055 c!109129) b!583429))

(assert (= (and d!205055 (not c!109129)) b!583430))

(declare-fun m!842943 () Bool)

(assert (=> b!583430 m!842943))

(assert (=> b!583165 d!205055))

(assert (=> b!583165 d!205021))

(declare-fun d!205057 () Bool)

(declare-fun lt!247603 () Int)

(assert (=> d!205057 (>= lt!247603 0)))

(declare-fun e!352698 () Int)

(assert (=> d!205057 (= lt!247603 e!352698)))

(declare-fun c!109130 () Bool)

(assert (=> d!205057 (= c!109130 ((_ is Nil!5737) suffix!1342))))

(assert (=> d!205057 (= (size!4561 suffix!1342) lt!247603)))

(declare-fun b!583431 () Bool)

(assert (=> b!583431 (= e!352698 0)))

(declare-fun b!583432 () Bool)

(assert (=> b!583432 (= e!352698 (+ 1 (size!4561 (t!78260 suffix!1342))))))

(assert (= (and d!205057 c!109130) b!583431))

(assert (= (and d!205057 (not c!109130)) b!583432))

(declare-fun m!842945 () Bool)

(assert (=> b!583432 m!842945))

(assert (=> b!583165 d!205057))

(declare-fun d!205059 () Bool)

(assert (=> d!205059 (= (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567)))) (list!2388 (c!109078 (charsOf!748 (_1!3618 (get!2193 lt!247567))))))))

(declare-fun bs!69891 () Bool)

(assert (= bs!69891 d!205059))

(declare-fun m!842947 () Bool)

(assert (=> bs!69891 m!842947))

(assert (=> b!583326 d!205059))

(declare-fun d!205061 () Bool)

(declare-fun lt!247604 () BalanceConc!3680)

(assert (=> d!205061 (= (list!2386 lt!247604) (originalCharacters!1158 (_1!3618 (get!2193 lt!247567))))))

(assert (=> d!205061 (= lt!247604 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247567))))) (value!36758 (_1!3618 (get!2193 lt!247567)))))))

(assert (=> d!205061 (= (charsOf!748 (_1!3618 (get!2193 lt!247567))) lt!247604)))

(declare-fun b_lambda!22997 () Bool)

(assert (=> (not b_lambda!22997) (not d!205061)))

(declare-fun tb!51087 () Bool)

(declare-fun t!78289 () Bool)

(assert (=> (and b!583107 (= (toChars!1845 (transformation!1119 (h!11139 rules!3103))) (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247567)))))) t!78289) tb!51087))

(declare-fun b!583433 () Bool)

(declare-fun e!352699 () Bool)

(declare-fun tp!182079 () Bool)

(assert (=> b!583433 (= e!352699 (and (inv!7233 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247567))))) (value!36758 (_1!3618 (get!2193 lt!247567)))))) tp!182079))))

(declare-fun result!57198 () Bool)

(assert (=> tb!51087 (= result!57198 (and (inv!7234 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247567))))) (value!36758 (_1!3618 (get!2193 lt!247567))))) e!352699))))

(assert (= tb!51087 b!583433))

(declare-fun m!842949 () Bool)

(assert (=> b!583433 m!842949))

(declare-fun m!842951 () Bool)

(assert (=> tb!51087 m!842951))

(assert (=> d!205061 t!78289))

(declare-fun b_and!57475 () Bool)

(assert (= b_and!57467 (and (=> t!78289 result!57198) b_and!57475)))

(declare-fun tb!51089 () Bool)

(declare-fun t!78291 () Bool)

(assert (=> (and b!583106 (= (toChars!1845 (transformation!1119 (rule!1877 token!491))) (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247567)))))) t!78291) tb!51089))

(declare-fun result!57200 () Bool)

(assert (= result!57200 result!57198))

(assert (=> d!205061 t!78291))

(declare-fun b_and!57477 () Bool)

(assert (= b_and!57469 (and (=> t!78291 result!57200) b_and!57477)))

(declare-fun t!78293 () Bool)

(declare-fun tb!51091 () Bool)

(assert (=> (and b!583362 (= (toChars!1845 (transformation!1119 (h!11139 (t!78261 rules!3103)))) (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247567)))))) t!78293) tb!51091))

(declare-fun result!57202 () Bool)

(assert (= result!57202 result!57198))

(assert (=> d!205061 t!78293))

(declare-fun b_and!57479 () Bool)

(assert (= b_and!57473 (and (=> t!78293 result!57202) b_and!57479)))

(declare-fun m!842953 () Bool)

(assert (=> d!205061 m!842953))

(declare-fun m!842955 () Bool)

(assert (=> d!205061 m!842955))

(assert (=> b!583326 d!205061))

(declare-fun d!205063 () Bool)

(assert (=> d!205063 (= (get!2193 lt!247567) (v!16338 lt!247567))))

(assert (=> b!583326 d!205063))

(declare-fun d!205065 () Bool)

(declare-fun lt!247605 () Int)

(assert (=> d!205065 (>= lt!247605 0)))

(declare-fun e!352700 () Int)

(assert (=> d!205065 (= lt!247605 e!352700)))

(declare-fun c!109131 () Bool)

(assert (=> d!205065 (= c!109131 ((_ is Nil!5737) (t!78260 lt!247510)))))

(assert (=> d!205065 (= (size!4561 (t!78260 lt!247510)) lt!247605)))

(declare-fun b!583434 () Bool)

(assert (=> b!583434 (= e!352700 0)))

(declare-fun b!583435 () Bool)

(assert (=> b!583435 (= e!352700 (+ 1 (size!4561 (t!78260 (t!78260 lt!247510)))))))

(assert (= (and d!205065 c!109131) b!583434))

(assert (= (and d!205065 (not c!109131)) b!583435))

(declare-fun m!842957 () Bool)

(assert (=> b!583435 m!842957))

(assert (=> b!583334 d!205065))

(declare-fun b!583437 () Bool)

(declare-fun e!352701 () List!5747)

(assert (=> b!583437 (= e!352701 (Cons!5737 (h!11138 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567))))) (++!1607 (t!78260 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567))))) (_2!3618 (get!2193 lt!247567)))))))

(declare-fun b!583438 () Bool)

(declare-fun res!251327 () Bool)

(declare-fun e!352702 () Bool)

(assert (=> b!583438 (=> (not res!251327) (not e!352702))))

(declare-fun lt!247606 () List!5747)

(assert (=> b!583438 (= res!251327 (= (size!4561 lt!247606) (+ (size!4561 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567))))) (size!4561 (_2!3618 (get!2193 lt!247567))))))))

(declare-fun b!583439 () Bool)

(assert (=> b!583439 (= e!352702 (or (not (= (_2!3618 (get!2193 lt!247567)) Nil!5737)) (= lt!247606 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567)))))))))

(declare-fun b!583436 () Bool)

(assert (=> b!583436 (= e!352701 (_2!3618 (get!2193 lt!247567)))))

(declare-fun d!205067 () Bool)

(assert (=> d!205067 e!352702))

(declare-fun res!251328 () Bool)

(assert (=> d!205067 (=> (not res!251328) (not e!352702))))

(assert (=> d!205067 (= res!251328 (= (content!1017 lt!247606) ((_ map or) (content!1017 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567))))) (content!1017 (_2!3618 (get!2193 lt!247567))))))))

(assert (=> d!205067 (= lt!247606 e!352701)))

(declare-fun c!109132 () Bool)

(assert (=> d!205067 (= c!109132 ((_ is Nil!5737) (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567))))))))

(assert (=> d!205067 (= (++!1607 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567)))) (_2!3618 (get!2193 lt!247567))) lt!247606)))

(assert (= (and d!205067 c!109132) b!583436))

(assert (= (and d!205067 (not c!109132)) b!583437))

(assert (= (and d!205067 res!251328) b!583438))

(assert (= (and b!583438 res!251327) b!583439))

(declare-fun m!842959 () Bool)

(assert (=> b!583437 m!842959))

(declare-fun m!842961 () Bool)

(assert (=> b!583438 m!842961))

(assert (=> b!583438 m!842801))

(declare-fun m!842963 () Bool)

(assert (=> b!583438 m!842963))

(assert (=> b!583438 m!842809))

(declare-fun m!842965 () Bool)

(assert (=> d!205067 m!842965))

(assert (=> d!205067 m!842801))

(declare-fun m!842967 () Bool)

(assert (=> d!205067 m!842967))

(declare-fun m!842969 () Bool)

(assert (=> d!205067 m!842969))

(assert (=> b!583330 d!205067))

(assert (=> b!583330 d!205059))

(assert (=> b!583330 d!205061))

(assert (=> b!583330 d!205063))

(declare-fun d!205069 () Bool)

(declare-fun isBalanced!514 (Conc!1836) Bool)

(assert (=> d!205069 (= (inv!7234 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))) (value!36758 (_1!3618 (v!16338 lt!247508))))) (isBalanced!514 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))) (value!36758 (_1!3618 (v!16338 lt!247508)))))))))

(declare-fun bs!69892 () Bool)

(assert (= bs!69892 d!205069))

(declare-fun m!842971 () Bool)

(assert (=> bs!69892 m!842971))

(assert (=> tb!51079 d!205069))

(declare-fun b!583441 () Bool)

(declare-fun e!352703 () List!5747)

(assert (=> b!583441 (= e!352703 (Cons!5737 (h!11138 (t!78260 lt!247510)) (++!1607 (t!78260 (t!78260 lt!247510)) (_2!3618 (v!16338 lt!247508)))))))

(declare-fun b!583442 () Bool)

(declare-fun res!251329 () Bool)

(declare-fun e!352704 () Bool)

(assert (=> b!583442 (=> (not res!251329) (not e!352704))))

(declare-fun lt!247607 () List!5747)

(assert (=> b!583442 (= res!251329 (= (size!4561 lt!247607) (+ (size!4561 (t!78260 lt!247510)) (size!4561 (_2!3618 (v!16338 lt!247508))))))))

(declare-fun b!583443 () Bool)

(assert (=> b!583443 (= e!352704 (or (not (= (_2!3618 (v!16338 lt!247508)) Nil!5737)) (= lt!247607 (t!78260 lt!247510))))))

(declare-fun b!583440 () Bool)

(assert (=> b!583440 (= e!352703 (_2!3618 (v!16338 lt!247508)))))

(declare-fun d!205071 () Bool)

(assert (=> d!205071 e!352704))

(declare-fun res!251330 () Bool)

(assert (=> d!205071 (=> (not res!251330) (not e!352704))))

(assert (=> d!205071 (= res!251330 (= (content!1017 lt!247607) ((_ map or) (content!1017 (t!78260 lt!247510)) (content!1017 (_2!3618 (v!16338 lt!247508))))))))

(assert (=> d!205071 (= lt!247607 e!352703)))

(declare-fun c!109133 () Bool)

(assert (=> d!205071 (= c!109133 ((_ is Nil!5737) (t!78260 lt!247510)))))

(assert (=> d!205071 (= (++!1607 (t!78260 lt!247510) (_2!3618 (v!16338 lt!247508))) lt!247607)))

(assert (= (and d!205071 c!109133) b!583440))

(assert (= (and d!205071 (not c!109133)) b!583441))

(assert (= (and d!205071 res!251330) b!583442))

(assert (= (and b!583442 res!251329) b!583443))

(declare-fun m!842973 () Bool)

(assert (=> b!583441 m!842973))

(declare-fun m!842975 () Bool)

(assert (=> b!583442 m!842975))

(assert (=> b!583442 m!842817))

(assert (=> b!583442 m!842757))

(declare-fun m!842977 () Bool)

(assert (=> d!205071 m!842977))

(declare-fun m!842979 () Bool)

(assert (=> d!205071 m!842979))

(assert (=> d!205071 m!842763))

(assert (=> b!583255 d!205071))

(declare-fun d!205073 () Bool)

(declare-fun lt!247608 () Int)

(assert (=> d!205073 (>= lt!247608 0)))

(declare-fun e!352705 () Int)

(assert (=> d!205073 (= lt!247608 e!352705)))

(declare-fun c!109134 () Bool)

(assert (=> d!205073 (= c!109134 ((_ is Nil!5737) lt!247584))))

(assert (=> d!205073 (= (size!4561 lt!247584) lt!247608)))

(declare-fun b!583444 () Bool)

(assert (=> b!583444 (= e!352705 0)))

(declare-fun b!583445 () Bool)

(assert (=> b!583445 (= e!352705 (+ 1 (size!4561 (t!78260 lt!247584))))))

(assert (= (and d!205073 c!109134) b!583444))

(assert (= (and d!205073 (not c!109134)) b!583445))

(declare-fun m!842981 () Bool)

(assert (=> b!583445 m!842981))

(assert (=> b!583350 d!205073))

(assert (=> b!583350 d!205003))

(assert (=> b!583350 d!205057))

(declare-fun d!205075 () Bool)

(assert (=> d!205075 (= (inv!7234 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491))) (isBalanced!514 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491)))))))

(declare-fun bs!69893 () Bool)

(assert (= bs!69893 d!205075))

(declare-fun m!842983 () Bool)

(assert (=> bs!69893 m!842983))

(assert (=> tb!51067 d!205075))

(declare-fun d!205077 () Bool)

(declare-fun lt!247609 () Int)

(assert (=> d!205077 (>= lt!247609 0)))

(declare-fun e!352706 () Int)

(assert (=> d!205077 (= lt!247609 e!352706)))

(declare-fun c!109135 () Bool)

(assert (=> d!205077 (= c!109135 ((_ is Nil!5737) (_2!3618 (get!2193 lt!247581))))))

(assert (=> d!205077 (= (size!4561 (_2!3618 (get!2193 lt!247581))) lt!247609)))

(declare-fun b!583446 () Bool)

(assert (=> b!583446 (= e!352706 0)))

(declare-fun b!583447 () Bool)

(assert (=> b!583447 (= e!352706 (+ 1 (size!4561 (t!78260 (_2!3618 (get!2193 lt!247581))))))))

(assert (= (and d!205077 c!109135) b!583446))

(assert (= (and d!205077 (not c!109135)) b!583447))

(declare-fun m!842985 () Bool)

(assert (=> b!583447 m!842985))

(assert (=> b!583347 d!205077))

(declare-fun d!205079 () Bool)

(assert (=> d!205079 (= (get!2193 lt!247581) (v!16338 lt!247581))))

(assert (=> b!583347 d!205079))

(declare-fun d!205081 () Bool)

(declare-fun lt!247610 () Int)

(assert (=> d!205081 (>= lt!247610 0)))

(declare-fun e!352707 () Int)

(assert (=> d!205081 (= lt!247610 e!352707)))

(declare-fun c!109136 () Bool)

(assert (=> d!205081 (= c!109136 ((_ is Nil!5737) lt!247503))))

(assert (=> d!205081 (= (size!4561 lt!247503) lt!247610)))

(declare-fun b!583448 () Bool)

(assert (=> b!583448 (= e!352707 0)))

(declare-fun b!583449 () Bool)

(assert (=> b!583449 (= e!352707 (+ 1 (size!4561 (t!78260 lt!247503))))))

(assert (= (and d!205081 c!109136) b!583448))

(assert (= (and d!205081 (not c!109136)) b!583449))

(declare-fun m!842987 () Bool)

(assert (=> b!583449 m!842987))

(assert (=> b!583347 d!205081))

(declare-fun b!583460 () Bool)

(declare-fun e!352713 () List!5747)

(declare-fun list!2389 (IArray!3673) List!5747)

(assert (=> b!583460 (= e!352713 (list!2389 (xs!4473 (c!109078 (charsOf!748 token!491)))))))

(declare-fun d!205083 () Bool)

(declare-fun c!109141 () Bool)

(assert (=> d!205083 (= c!109141 ((_ is Empty!1836) (c!109078 (charsOf!748 token!491))))))

(declare-fun e!352712 () List!5747)

(assert (=> d!205083 (= (list!2388 (c!109078 (charsOf!748 token!491))) e!352712)))

(declare-fun b!583458 () Bool)

(assert (=> b!583458 (= e!352712 Nil!5737)))

(declare-fun b!583459 () Bool)

(assert (=> b!583459 (= e!352712 e!352713)))

(declare-fun c!109142 () Bool)

(assert (=> b!583459 (= c!109142 ((_ is Leaf!2903) (c!109078 (charsOf!748 token!491))))))

(declare-fun b!583461 () Bool)

(assert (=> b!583461 (= e!352713 (++!1607 (list!2388 (left!4676 (c!109078 (charsOf!748 token!491)))) (list!2388 (right!5006 (c!109078 (charsOf!748 token!491))))))))

(assert (= (and d!205083 c!109141) b!583458))

(assert (= (and d!205083 (not c!109141)) b!583459))

(assert (= (and b!583459 c!109142) b!583460))

(assert (= (and b!583459 (not c!109142)) b!583461))

(declare-fun m!842989 () Bool)

(assert (=> b!583460 m!842989))

(declare-fun m!842991 () Bool)

(assert (=> b!583461 m!842991))

(declare-fun m!842993 () Bool)

(assert (=> b!583461 m!842993))

(assert (=> b!583461 m!842991))

(assert (=> b!583461 m!842993))

(declare-fun m!842995 () Bool)

(assert (=> b!583461 m!842995))

(assert (=> d!205013 d!205083))

(declare-fun d!205085 () Bool)

(declare-fun c!109145 () Bool)

(assert (=> d!205085 (= c!109145 ((_ is Nil!5737) lt!247531))))

(declare-fun e!352716 () (InoxSet C!3828))

(assert (=> d!205085 (= (content!1017 lt!247531) e!352716)))

(declare-fun b!583466 () Bool)

(assert (=> b!583466 (= e!352716 ((as const (Array C!3828 Bool)) false))))

(declare-fun b!583467 () Bool)

(assert (=> b!583467 (= e!352716 ((_ map or) (store ((as const (Array C!3828 Bool)) false) (h!11138 lt!247531) true) (content!1017 (t!78260 lt!247531))))))

(assert (= (and d!205085 c!109145) b!583466))

(assert (= (and d!205085 (not c!109145)) b!583467))

(declare-fun m!842997 () Bool)

(assert (=> b!583467 m!842997))

(declare-fun m!842999 () Bool)

(assert (=> b!583467 m!842999))

(assert (=> d!204949 d!205085))

(declare-fun d!205087 () Bool)

(declare-fun c!109146 () Bool)

(assert (=> d!205087 (= c!109146 ((_ is Nil!5737) lt!247506))))

(declare-fun e!352717 () (InoxSet C!3828))

(assert (=> d!205087 (= (content!1017 lt!247506) e!352717)))

(declare-fun b!583468 () Bool)

(assert (=> b!583468 (= e!352717 ((as const (Array C!3828 Bool)) false))))

(declare-fun b!583469 () Bool)

(assert (=> b!583469 (= e!352717 ((_ map or) (store ((as const (Array C!3828 Bool)) false) (h!11138 lt!247506) true) (content!1017 (t!78260 lt!247506))))))

(assert (= (and d!205087 c!109146) b!583468))

(assert (= (and d!205087 (not c!109146)) b!583469))

(declare-fun m!843001 () Bool)

(assert (=> b!583469 m!843001))

(declare-fun m!843003 () Bool)

(assert (=> b!583469 m!843003))

(assert (=> d!204949 d!205087))

(declare-fun d!205089 () Bool)

(declare-fun c!109147 () Bool)

(assert (=> d!205089 (= c!109147 ((_ is Nil!5737) suffix!1342))))

(declare-fun e!352718 () (InoxSet C!3828))

(assert (=> d!205089 (= (content!1017 suffix!1342) e!352718)))

(declare-fun b!583470 () Bool)

(assert (=> b!583470 (= e!352718 ((as const (Array C!3828 Bool)) false))))

(declare-fun b!583471 () Bool)

(assert (=> b!583471 (= e!352718 ((_ map or) (store ((as const (Array C!3828 Bool)) false) (h!11138 suffix!1342) true) (content!1017 (t!78260 suffix!1342))))))

(assert (= (and d!205089 c!109147) b!583470))

(assert (= (and d!205089 (not c!109147)) b!583471))

(declare-fun m!843005 () Bool)

(assert (=> b!583471 m!843005))

(declare-fun m!843007 () Bool)

(assert (=> b!583471 m!843007))

(assert (=> d!204949 d!205089))

(declare-fun b!583472 () Bool)

(declare-fun e!352720 () Option!1470)

(declare-fun lt!247614 () Option!1470)

(declare-fun lt!247615 () Option!1470)

(assert (=> b!583472 (= e!352720 (ite (and ((_ is None!1469) lt!247614) ((_ is None!1469) lt!247615)) None!1469 (ite ((_ is None!1469) lt!247615) lt!247614 (ite ((_ is None!1469) lt!247614) lt!247615 (ite (>= (size!4560 (_1!3618 (v!16338 lt!247614))) (size!4560 (_1!3618 (v!16338 lt!247615)))) lt!247614 lt!247615)))))))

(declare-fun call!40166 () Option!1470)

(assert (=> b!583472 (= lt!247614 call!40166)))

(assert (=> b!583472 (= lt!247615 (maxPrefix!703 thiss!22590 (t!78261 (t!78261 rules!3103)) input!2705))))

(declare-fun b!583473 () Bool)

(declare-fun res!251331 () Bool)

(declare-fun e!352719 () Bool)

(assert (=> b!583473 (=> (not res!251331) (not e!352719))))

(declare-fun lt!247613 () Option!1470)

(assert (=> b!583473 (= res!251331 (= (value!36758 (_1!3618 (get!2193 lt!247613))) (apply!1378 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247613)))) (seqFromList!1301 (originalCharacters!1158 (_1!3618 (get!2193 lt!247613)))))))))

(declare-fun b!583474 () Bool)

(declare-fun res!251337 () Bool)

(assert (=> b!583474 (=> (not res!251337) (not e!352719))))

(assert (=> b!583474 (= res!251337 (= (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247613)))) (originalCharacters!1158 (_1!3618 (get!2193 lt!247613)))))))

(declare-fun b!583475 () Bool)

(assert (=> b!583475 (= e!352719 (contains!1347 (t!78261 rules!3103) (rule!1877 (_1!3618 (get!2193 lt!247613)))))))

(declare-fun b!583476 () Bool)

(assert (=> b!583476 (= e!352720 call!40166)))

(declare-fun d!205091 () Bool)

(declare-fun e!352721 () Bool)

(assert (=> d!205091 e!352721))

(declare-fun res!251335 () Bool)

(assert (=> d!205091 (=> res!251335 e!352721)))

(assert (=> d!205091 (= res!251335 (isEmpty!4144 lt!247613))))

(assert (=> d!205091 (= lt!247613 e!352720)))

(declare-fun c!109148 () Bool)

(assert (=> d!205091 (= c!109148 (and ((_ is Cons!5738) (t!78261 rules!3103)) ((_ is Nil!5738) (t!78261 (t!78261 rules!3103)))))))

(declare-fun lt!247612 () Unit!10427)

(declare-fun lt!247611 () Unit!10427)

(assert (=> d!205091 (= lt!247612 lt!247611)))

(assert (=> d!205091 (isPrefix!747 input!2705 input!2705)))

(assert (=> d!205091 (= lt!247611 (lemmaIsPrefixRefl!485 input!2705 input!2705))))

(assert (=> d!205091 (rulesValidInductive!402 thiss!22590 (t!78261 rules!3103))))

(assert (=> d!205091 (= (maxPrefix!703 thiss!22590 (t!78261 rules!3103) input!2705) lt!247613)))

(declare-fun b!583477 () Bool)

(declare-fun res!251334 () Bool)

(assert (=> b!583477 (=> (not res!251334) (not e!352719))))

(assert (=> b!583477 (= res!251334 (matchR!594 (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247613)))) (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247613))))))))

(declare-fun b!583478 () Bool)

(declare-fun res!251333 () Bool)

(assert (=> b!583478 (=> (not res!251333) (not e!352719))))

(assert (=> b!583478 (= res!251333 (= (++!1607 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247613)))) (_2!3618 (get!2193 lt!247613))) input!2705))))

(declare-fun b!583479 () Bool)

(assert (=> b!583479 (= e!352721 e!352719)))

(declare-fun res!251332 () Bool)

(assert (=> b!583479 (=> (not res!251332) (not e!352719))))

(assert (=> b!583479 (= res!251332 (isDefined!1281 lt!247613))))

(declare-fun bm!40161 () Bool)

(assert (=> bm!40161 (= call!40166 (maxPrefixOneRule!398 thiss!22590 (h!11139 (t!78261 rules!3103)) input!2705))))

(declare-fun b!583480 () Bool)

(declare-fun res!251336 () Bool)

(assert (=> b!583480 (=> (not res!251336) (not e!352719))))

(assert (=> b!583480 (= res!251336 (< (size!4561 (_2!3618 (get!2193 lt!247613))) (size!4561 input!2705)))))

(assert (= (and d!205091 c!109148) b!583476))

(assert (= (and d!205091 (not c!109148)) b!583472))

(assert (= (or b!583476 b!583472) bm!40161))

(assert (= (and d!205091 (not res!251335)) b!583479))

(assert (= (and b!583479 res!251332) b!583474))

(assert (= (and b!583474 res!251337) b!583480))

(assert (= (and b!583480 res!251336) b!583478))

(assert (= (and b!583478 res!251333) b!583473))

(assert (= (and b!583473 res!251331) b!583477))

(assert (= (and b!583477 res!251334) b!583475))

(declare-fun m!843009 () Bool)

(assert (=> b!583472 m!843009))

(declare-fun m!843011 () Bool)

(assert (=> b!583479 m!843011))

(declare-fun m!843013 () Bool)

(assert (=> b!583475 m!843013))

(declare-fun m!843015 () Bool)

(assert (=> b!583475 m!843015))

(declare-fun m!843017 () Bool)

(assert (=> d!205091 m!843017))

(assert (=> d!205091 m!842789))

(assert (=> d!205091 m!842791))

(declare-fun m!843019 () Bool)

(assert (=> d!205091 m!843019))

(assert (=> b!583473 m!843013))

(declare-fun m!843021 () Bool)

(assert (=> b!583473 m!843021))

(assert (=> b!583473 m!843021))

(declare-fun m!843023 () Bool)

(assert (=> b!583473 m!843023))

(assert (=> b!583477 m!843013))

(declare-fun m!843025 () Bool)

(assert (=> b!583477 m!843025))

(assert (=> b!583477 m!843025))

(declare-fun m!843027 () Bool)

(assert (=> b!583477 m!843027))

(assert (=> b!583477 m!843027))

(declare-fun m!843029 () Bool)

(assert (=> b!583477 m!843029))

(assert (=> b!583478 m!843013))

(assert (=> b!583478 m!843025))

(assert (=> b!583478 m!843025))

(assert (=> b!583478 m!843027))

(assert (=> b!583478 m!843027))

(declare-fun m!843031 () Bool)

(assert (=> b!583478 m!843031))

(declare-fun m!843033 () Bool)

(assert (=> bm!40161 m!843033))

(assert (=> b!583480 m!843013))

(declare-fun m!843035 () Bool)

(assert (=> b!583480 m!843035))

(assert (=> b!583480 m!842533))

(assert (=> b!583474 m!843013))

(assert (=> b!583474 m!843025))

(assert (=> b!583474 m!843025))

(assert (=> b!583474 m!843027))

(assert (=> b!583324 d!205091))

(declare-fun b!583509 () Bool)

(declare-fun res!251358 () Bool)

(declare-fun e!352738 () Bool)

(assert (=> b!583509 (=> res!251358 e!352738)))

(assert (=> b!583509 (= res!251358 (not ((_ is ElementMatch!1453) (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247581)))))))))

(declare-fun e!352742 () Bool)

(assert (=> b!583509 (= e!352742 e!352738)))

(declare-fun b!583510 () Bool)

(declare-fun e!352741 () Bool)

(assert (=> b!583510 (= e!352741 e!352742)))

(declare-fun c!109156 () Bool)

(assert (=> b!583510 (= c!109156 ((_ is EmptyLang!1453) (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247581))))))))

(declare-fun b!583511 () Bool)

(declare-fun res!251355 () Bool)

(declare-fun e!352739 () Bool)

(assert (=> b!583511 (=> res!251355 e!352739)))

(declare-fun tail!761 (List!5747) List!5747)

(assert (=> b!583511 (= res!251355 (not (isEmpty!4142 (tail!761 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581))))))))))

(declare-fun b!583512 () Bool)

(declare-fun lt!247618 () Bool)

(assert (=> b!583512 (= e!352742 (not lt!247618))))

(declare-fun b!583513 () Bool)

(declare-fun e!352737 () Bool)

(assert (=> b!583513 (= e!352737 e!352739)))

(declare-fun res!251357 () Bool)

(assert (=> b!583513 (=> res!251357 e!352739)))

(declare-fun call!40169 () Bool)

(assert (=> b!583513 (= res!251357 call!40169)))

(declare-fun d!205093 () Bool)

(assert (=> d!205093 e!352741))

(declare-fun c!109155 () Bool)

(assert (=> d!205093 (= c!109155 ((_ is EmptyExpr!1453) (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247581))))))))

(declare-fun e!352740 () Bool)

(assert (=> d!205093 (= lt!247618 e!352740)))

(declare-fun c!109157 () Bool)

(assert (=> d!205093 (= c!109157 (isEmpty!4142 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581))))))))

(declare-fun validRegex!490 (Regex!1453) Bool)

(assert (=> d!205093 (validRegex!490 (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247581)))))))

(assert (=> d!205093 (= (matchR!594 (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247581)))) (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581))))) lt!247618)))

(declare-fun b!583514 () Bool)

(assert (=> b!583514 (= e!352738 e!352737)))

(declare-fun res!251360 () Bool)

(assert (=> b!583514 (=> (not res!251360) (not e!352737))))

(assert (=> b!583514 (= res!251360 (not lt!247618))))

(declare-fun b!583515 () Bool)

(declare-fun derivativeStep!308 (Regex!1453 C!3828) Regex!1453)

(declare-fun head!1232 (List!5747) C!3828)

(assert (=> b!583515 (= e!352740 (matchR!594 (derivativeStep!308 (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247581)))) (head!1232 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581)))))) (tail!761 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581)))))))))

(declare-fun bm!40164 () Bool)

(assert (=> bm!40164 (= call!40169 (isEmpty!4142 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581))))))))

(declare-fun b!583516 () Bool)

(assert (=> b!583516 (= e!352741 (= lt!247618 call!40169))))

(declare-fun b!583517 () Bool)

(declare-fun res!251359 () Bool)

(declare-fun e!352736 () Bool)

(assert (=> b!583517 (=> (not res!251359) (not e!352736))))

(assert (=> b!583517 (= res!251359 (isEmpty!4142 (tail!761 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581)))))))))

(declare-fun b!583518 () Bool)

(assert (=> b!583518 (= e!352739 (not (= (head!1232 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581))))) (c!109077 (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247581))))))))))

(declare-fun b!583519 () Bool)

(declare-fun res!251356 () Bool)

(assert (=> b!583519 (=> res!251356 e!352738)))

(assert (=> b!583519 (= res!251356 e!352736)))

(declare-fun res!251354 () Bool)

(assert (=> b!583519 (=> (not res!251354) (not e!352736))))

(assert (=> b!583519 (= res!251354 lt!247618)))

(declare-fun b!583520 () Bool)

(declare-fun nullable!395 (Regex!1453) Bool)

(assert (=> b!583520 (= e!352740 (nullable!395 (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247581))))))))

(declare-fun b!583521 () Bool)

(declare-fun res!251361 () Bool)

(assert (=> b!583521 (=> (not res!251361) (not e!352736))))

(assert (=> b!583521 (= res!251361 (not call!40169))))

(declare-fun b!583522 () Bool)

(assert (=> b!583522 (= e!352736 (= (head!1232 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581))))) (c!109077 (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247581)))))))))

(assert (= (and d!205093 c!109157) b!583520))

(assert (= (and d!205093 (not c!109157)) b!583515))

(assert (= (and d!205093 c!109155) b!583516))

(assert (= (and d!205093 (not c!109155)) b!583510))

(assert (= (and b!583510 c!109156) b!583512))

(assert (= (and b!583510 (not c!109156)) b!583509))

(assert (= (and b!583509 (not res!251358)) b!583519))

(assert (= (and b!583519 res!251354) b!583521))

(assert (= (and b!583521 res!251361) b!583517))

(assert (= (and b!583517 res!251359) b!583522))

(assert (= (and b!583519 (not res!251356)) b!583514))

(assert (= (and b!583514 res!251360) b!583513))

(assert (= (and b!583513 (not res!251357)) b!583511))

(assert (= (and b!583511 (not res!251355)) b!583518))

(assert (= (or b!583516 b!583513 b!583521) bm!40164))

(assert (=> b!583518 m!842857))

(declare-fun m!843037 () Bool)

(assert (=> b!583518 m!843037))

(assert (=> b!583515 m!842857))

(assert (=> b!583515 m!843037))

(assert (=> b!583515 m!843037))

(declare-fun m!843039 () Bool)

(assert (=> b!583515 m!843039))

(assert (=> b!583515 m!842857))

(declare-fun m!843041 () Bool)

(assert (=> b!583515 m!843041))

(assert (=> b!583515 m!843039))

(assert (=> b!583515 m!843041))

(declare-fun m!843043 () Bool)

(assert (=> b!583515 m!843043))

(assert (=> b!583511 m!842857))

(assert (=> b!583511 m!843041))

(assert (=> b!583511 m!843041))

(declare-fun m!843045 () Bool)

(assert (=> b!583511 m!843045))

(assert (=> bm!40164 m!842857))

(declare-fun m!843047 () Bool)

(assert (=> bm!40164 m!843047))

(assert (=> b!583522 m!842857))

(assert (=> b!583522 m!843037))

(declare-fun m!843049 () Bool)

(assert (=> b!583520 m!843049))

(assert (=> d!205093 m!842857))

(assert (=> d!205093 m!843047))

(declare-fun m!843051 () Bool)

(assert (=> d!205093 m!843051))

(assert (=> b!583517 m!842857))

(assert (=> b!583517 m!843041))

(assert (=> b!583517 m!843041))

(assert (=> b!583517 m!843045))

(assert (=> b!583344 d!205093))

(assert (=> b!583344 d!205079))

(declare-fun d!205095 () Bool)

(assert (=> d!205095 (= (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581)))) (list!2388 (c!109078 (charsOf!748 (_1!3618 (get!2193 lt!247581))))))))

(declare-fun bs!69894 () Bool)

(assert (= bs!69894 d!205095))

(declare-fun m!843053 () Bool)

(assert (=> bs!69894 m!843053))

(assert (=> b!583344 d!205095))

(declare-fun d!205097 () Bool)

(declare-fun lt!247619 () BalanceConc!3680)

(assert (=> d!205097 (= (list!2386 lt!247619) (originalCharacters!1158 (_1!3618 (get!2193 lt!247581))))))

(assert (=> d!205097 (= lt!247619 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247581))))) (value!36758 (_1!3618 (get!2193 lt!247581)))))))

(assert (=> d!205097 (= (charsOf!748 (_1!3618 (get!2193 lt!247581))) lt!247619)))

(declare-fun b_lambda!22999 () Bool)

(assert (=> (not b_lambda!22999) (not d!205097)))

(declare-fun t!78296 () Bool)

(declare-fun tb!51093 () Bool)

(assert (=> (and b!583107 (= (toChars!1845 (transformation!1119 (h!11139 rules!3103))) (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247581)))))) t!78296) tb!51093))

(declare-fun b!583523 () Bool)

(declare-fun e!352743 () Bool)

(declare-fun tp!182080 () Bool)

(assert (=> b!583523 (= e!352743 (and (inv!7233 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247581))))) (value!36758 (_1!3618 (get!2193 lt!247581)))))) tp!182080))))

(declare-fun result!57204 () Bool)

(assert (=> tb!51093 (= result!57204 (and (inv!7234 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247581))))) (value!36758 (_1!3618 (get!2193 lt!247581))))) e!352743))))

(assert (= tb!51093 b!583523))

(declare-fun m!843055 () Bool)

(assert (=> b!583523 m!843055))

(declare-fun m!843057 () Bool)

(assert (=> tb!51093 m!843057))

(assert (=> d!205097 t!78296))

(declare-fun b_and!57481 () Bool)

(assert (= b_and!57475 (and (=> t!78296 result!57204) b_and!57481)))

(declare-fun t!78298 () Bool)

(declare-fun tb!51095 () Bool)

(assert (=> (and b!583106 (= (toChars!1845 (transformation!1119 (rule!1877 token!491))) (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247581)))))) t!78298) tb!51095))

(declare-fun result!57206 () Bool)

(assert (= result!57206 result!57204))

(assert (=> d!205097 t!78298))

(declare-fun b_and!57483 () Bool)

(assert (= b_and!57477 (and (=> t!78298 result!57206) b_and!57483)))

(declare-fun t!78300 () Bool)

(declare-fun tb!51097 () Bool)

(assert (=> (and b!583362 (= (toChars!1845 (transformation!1119 (h!11139 (t!78261 rules!3103)))) (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247581)))))) t!78300) tb!51097))

(declare-fun result!57208 () Bool)

(assert (= result!57208 result!57204))

(assert (=> d!205097 t!78300))

(declare-fun b_and!57485 () Bool)

(assert (= b_and!57479 (and (=> t!78300 result!57208) b_and!57485)))

(declare-fun m!843059 () Bool)

(assert (=> d!205097 m!843059))

(declare-fun m!843061 () Bool)

(assert (=> d!205097 m!843061))

(assert (=> b!583344 d!205097))

(declare-fun d!205099 () Bool)

(assert (=> d!205099 (= (isEmpty!4144 lt!247581) (not ((_ is Some!1469) lt!247581)))))

(assert (=> d!205035 d!205099))

(declare-fun d!205101 () Bool)

(declare-fun e!352752 () Bool)

(assert (=> d!205101 e!352752))

(declare-fun res!251373 () Bool)

(assert (=> d!205101 (=> res!251373 e!352752)))

(declare-fun lt!247622 () Bool)

(assert (=> d!205101 (= res!251373 (not lt!247622))))

(declare-fun e!352751 () Bool)

(assert (=> d!205101 (= lt!247622 e!352751)))

(declare-fun res!251371 () Bool)

(assert (=> d!205101 (=> res!251371 e!352751)))

(assert (=> d!205101 (= res!251371 ((_ is Nil!5737) lt!247503))))

(assert (=> d!205101 (= (isPrefix!747 lt!247503 lt!247503) lt!247622)))

(declare-fun b!583535 () Bool)

(assert (=> b!583535 (= e!352752 (>= (size!4561 lt!247503) (size!4561 lt!247503)))))

(declare-fun b!583534 () Bool)

(declare-fun e!352750 () Bool)

(assert (=> b!583534 (= e!352750 (isPrefix!747 (tail!761 lt!247503) (tail!761 lt!247503)))))

(declare-fun b!583532 () Bool)

(assert (=> b!583532 (= e!352751 e!352750)))

(declare-fun res!251370 () Bool)

(assert (=> b!583532 (=> (not res!251370) (not e!352750))))

(assert (=> b!583532 (= res!251370 (not ((_ is Nil!5737) lt!247503)))))

(declare-fun b!583533 () Bool)

(declare-fun res!251372 () Bool)

(assert (=> b!583533 (=> (not res!251372) (not e!352750))))

(assert (=> b!583533 (= res!251372 (= (head!1232 lt!247503) (head!1232 lt!247503)))))

(assert (= (and d!205101 (not res!251371)) b!583532))

(assert (= (and b!583532 res!251370) b!583533))

(assert (= (and b!583533 res!251372) b!583534))

(assert (= (and d!205101 (not res!251373)) b!583535))

(assert (=> b!583535 m!842867))

(assert (=> b!583535 m!842867))

(declare-fun m!843063 () Bool)

(assert (=> b!583534 m!843063))

(assert (=> b!583534 m!843063))

(assert (=> b!583534 m!843063))

(assert (=> b!583534 m!843063))

(declare-fun m!843065 () Bool)

(assert (=> b!583534 m!843065))

(declare-fun m!843067 () Bool)

(assert (=> b!583533 m!843067))

(assert (=> b!583533 m!843067))

(assert (=> d!205035 d!205101))

(declare-fun d!205103 () Bool)

(assert (=> d!205103 (isPrefix!747 lt!247503 lt!247503)))

(declare-fun lt!247625 () Unit!10427)

(declare-fun choose!4195 (List!5747 List!5747) Unit!10427)

(assert (=> d!205103 (= lt!247625 (choose!4195 lt!247503 lt!247503))))

(assert (=> d!205103 (= (lemmaIsPrefixRefl!485 lt!247503 lt!247503) lt!247625)))

(declare-fun bs!69895 () Bool)

(assert (= bs!69895 d!205103))

(assert (=> bs!69895 m!842847))

(declare-fun m!843069 () Bool)

(assert (=> bs!69895 m!843069))

(assert (=> d!205035 d!205103))

(declare-fun d!205105 () Bool)

(assert (=> d!205105 true))

(declare-fun lt!247682 () Bool)

(declare-fun lambda!15827 () Int)

(declare-fun forall!1540 (List!5748 Int) Bool)

(assert (=> d!205105 (= lt!247682 (forall!1540 rules!3103 lambda!15827))))

(declare-fun e!352904 () Bool)

(assert (=> d!205105 (= lt!247682 e!352904)))

(declare-fun res!251485 () Bool)

(assert (=> d!205105 (=> res!251485 e!352904)))

(assert (=> d!205105 (= res!251485 (not ((_ is Cons!5738) rules!3103)))))

(assert (=> d!205105 (= (rulesValidInductive!402 thiss!22590 rules!3103) lt!247682)))

(declare-fun b!583816 () Bool)

(declare-fun e!352903 () Bool)

(assert (=> b!583816 (= e!352904 e!352903)))

(declare-fun res!251484 () Bool)

(assert (=> b!583816 (=> (not res!251484) (not e!352903))))

(declare-fun ruleValid!323 (LexerInterface!1005 Rule!2038) Bool)

(assert (=> b!583816 (= res!251484 (ruleValid!323 thiss!22590 (h!11139 rules!3103)))))

(declare-fun b!583817 () Bool)

(assert (=> b!583817 (= e!352903 (rulesValidInductive!402 thiss!22590 (t!78261 rules!3103)))))

(assert (= (and d!205105 (not res!251485)) b!583816))

(assert (= (and b!583816 res!251484) b!583817))

(declare-fun m!843411 () Bool)

(assert (=> d!205105 m!843411))

(declare-fun m!843413 () Bool)

(assert (=> b!583816 m!843413))

(assert (=> b!583817 m!843019))

(assert (=> d!205035 d!205105))

(declare-fun d!205241 () Bool)

(declare-fun lt!247685 () Bool)

(declare-fun content!1019 (List!5748) (InoxSet Rule!2038))

(assert (=> d!205241 (= lt!247685 (select (content!1019 rules!3103) (rule!1877 (_1!3618 (get!2193 lt!247581)))))))

(declare-fun e!352909 () Bool)

(assert (=> d!205241 (= lt!247685 e!352909)))

(declare-fun res!251491 () Bool)

(assert (=> d!205241 (=> (not res!251491) (not e!352909))))

(assert (=> d!205241 (= res!251491 ((_ is Cons!5738) rules!3103))))

(assert (=> d!205241 (= (contains!1347 rules!3103 (rule!1877 (_1!3618 (get!2193 lt!247581)))) lt!247685)))

(declare-fun b!583824 () Bool)

(declare-fun e!352910 () Bool)

(assert (=> b!583824 (= e!352909 e!352910)))

(declare-fun res!251490 () Bool)

(assert (=> b!583824 (=> res!251490 e!352910)))

(assert (=> b!583824 (= res!251490 (= (h!11139 rules!3103) (rule!1877 (_1!3618 (get!2193 lt!247581)))))))

(declare-fun b!583825 () Bool)

(assert (=> b!583825 (= e!352910 (contains!1347 (t!78261 rules!3103) (rule!1877 (_1!3618 (get!2193 lt!247581)))))))

(assert (= (and d!205241 res!251491) b!583824))

(assert (= (and b!583824 (not res!251490)) b!583825))

(declare-fun m!843415 () Bool)

(assert (=> d!205241 m!843415))

(declare-fun m!843417 () Bool)

(assert (=> d!205241 m!843417))

(declare-fun m!843419 () Bool)

(assert (=> b!583825 m!843419))

(assert (=> b!583342 d!205241))

(assert (=> b!583342 d!205079))

(declare-fun d!205243 () Bool)

(assert (=> d!205243 true))

(declare-fun lambda!15830 () Int)

(declare-fun order!4685 () Int)

(declare-fun order!4683 () Int)

(declare-fun dynLambda!3341 (Int Int) Int)

(declare-fun dynLambda!3342 (Int Int) Int)

(assert (=> d!205243 (< (dynLambda!3341 order!4683 (toChars!1845 (transformation!1119 (h!11139 rules!3103)))) (dynLambda!3342 order!4685 lambda!15830))))

(assert (=> d!205243 true))

(declare-fun order!4687 () Int)

(declare-fun dynLambda!3343 (Int Int) Int)

(assert (=> d!205243 (< (dynLambda!3343 order!4687 (toValue!1986 (transformation!1119 (h!11139 rules!3103)))) (dynLambda!3342 order!4685 lambda!15830))))

(declare-fun Forall!288 (Int) Bool)

(assert (=> d!205243 (= (semiInverseModEq!433 (toChars!1845 (transformation!1119 (h!11139 rules!3103))) (toValue!1986 (transformation!1119 (h!11139 rules!3103)))) (Forall!288 lambda!15830))))

(declare-fun bs!69919 () Bool)

(assert (= bs!69919 d!205243))

(declare-fun m!843421 () Bool)

(assert (=> bs!69919 m!843421))

(assert (=> d!205007 d!205243))

(declare-fun d!205245 () Bool)

(assert (=> d!205245 (= (isDefined!1281 lt!247581) (not (isEmpty!4144 lt!247581)))))

(declare-fun bs!69920 () Bool)

(assert (= bs!69920 d!205245))

(assert (=> bs!69920 m!842845))

(assert (=> b!583346 d!205245))

(declare-fun d!205247 () Bool)

(declare-fun c!109205 () Bool)

(assert (=> d!205247 (= c!109205 ((_ is Nil!5737) lt!247551))))

(declare-fun e!352911 () (InoxSet C!3828))

(assert (=> d!205247 (= (content!1017 lt!247551) e!352911)))

(declare-fun b!583830 () Bool)

(assert (=> b!583830 (= e!352911 ((as const (Array C!3828 Bool)) false))))

(declare-fun b!583831 () Bool)

(assert (=> b!583831 (= e!352911 ((_ map or) (store ((as const (Array C!3828 Bool)) false) (h!11138 lt!247551) true) (content!1017 (t!78260 lt!247551))))))

(assert (= (and d!205247 c!109205) b!583830))

(assert (= (and d!205247 (not c!109205)) b!583831))

(declare-fun m!843423 () Bool)

(assert (=> b!583831 m!843423))

(declare-fun m!843425 () Bool)

(assert (=> b!583831 m!843425))

(assert (=> d!204999 d!205247))

(declare-fun d!205249 () Bool)

(declare-fun c!109206 () Bool)

(assert (=> d!205249 (= c!109206 ((_ is Nil!5737) lt!247510))))

(declare-fun e!352912 () (InoxSet C!3828))

(assert (=> d!205249 (= (content!1017 lt!247510) e!352912)))

(declare-fun b!583832 () Bool)

(assert (=> b!583832 (= e!352912 ((as const (Array C!3828 Bool)) false))))

(declare-fun b!583833 () Bool)

(assert (=> b!583833 (= e!352912 ((_ map or) (store ((as const (Array C!3828 Bool)) false) (h!11138 lt!247510) true) (content!1017 (t!78260 lt!247510))))))

(assert (= (and d!205249 c!109206) b!583832))

(assert (= (and d!205249 (not c!109206)) b!583833))

(declare-fun m!843427 () Bool)

(assert (=> b!583833 m!843427))

(assert (=> b!583833 m!842979))

(assert (=> d!204999 d!205249))

(declare-fun d!205251 () Bool)

(declare-fun c!109207 () Bool)

(assert (=> d!205251 (= c!109207 ((_ is Nil!5737) (_2!3618 (v!16338 lt!247508))))))

(declare-fun e!352913 () (InoxSet C!3828))

(assert (=> d!205251 (= (content!1017 (_2!3618 (v!16338 lt!247508))) e!352913)))

(declare-fun b!583834 () Bool)

(assert (=> b!583834 (= e!352913 ((as const (Array C!3828 Bool)) false))))

(declare-fun b!583835 () Bool)

(assert (=> b!583835 (= e!352913 ((_ map or) (store ((as const (Array C!3828 Bool)) false) (h!11138 (_2!3618 (v!16338 lt!247508))) true) (content!1017 (t!78260 (_2!3618 (v!16338 lt!247508))))))))

(assert (= (and d!205251 c!109207) b!583834))

(assert (= (and d!205251 (not c!109207)) b!583835))

(declare-fun m!843429 () Bool)

(assert (=> b!583835 m!843429))

(declare-fun m!843431 () Bool)

(assert (=> b!583835 m!843431))

(assert (=> d!204999 d!205251))

(declare-fun bs!69921 () Bool)

(declare-fun d!205253 () Bool)

(assert (= bs!69921 (and d!205253 d!205243)))

(declare-fun lambda!15831 () Int)

(assert (=> bs!69921 (= (and (= (toChars!1845 (transformation!1119 (rule!1877 token!491))) (toChars!1845 (transformation!1119 (h!11139 rules!3103)))) (= (toValue!1986 (transformation!1119 (rule!1877 token!491))) (toValue!1986 (transformation!1119 (h!11139 rules!3103))))) (= lambda!15831 lambda!15830))))

(assert (=> d!205253 true))

(assert (=> d!205253 (< (dynLambda!3341 order!4683 (toChars!1845 (transformation!1119 (rule!1877 token!491)))) (dynLambda!3342 order!4685 lambda!15831))))

(assert (=> d!205253 true))

(assert (=> d!205253 (< (dynLambda!3343 order!4687 (toValue!1986 (transformation!1119 (rule!1877 token!491)))) (dynLambda!3342 order!4685 lambda!15831))))

(assert (=> d!205253 (= (semiInverseModEq!433 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (toValue!1986 (transformation!1119 (rule!1877 token!491)))) (Forall!288 lambda!15831))))

(declare-fun bs!69922 () Bool)

(assert (= bs!69922 d!205253))

(declare-fun m!843433 () Bool)

(assert (=> bs!69922 m!843433))

(assert (=> d!205031 d!205253))

(declare-fun b!583838 () Bool)

(declare-fun e!352915 () List!5747)

(assert (=> b!583838 (= e!352915 (list!2389 (xs!4473 (c!109078 (charsOf!748 (_1!3618 (v!16338 lt!247508)))))))))

(declare-fun d!205255 () Bool)

(declare-fun c!109208 () Bool)

(assert (=> d!205255 (= c!109208 ((_ is Empty!1836) (c!109078 (charsOf!748 (_1!3618 (v!16338 lt!247508))))))))

(declare-fun e!352914 () List!5747)

(assert (=> d!205255 (= (list!2388 (c!109078 (charsOf!748 (_1!3618 (v!16338 lt!247508))))) e!352914)))

(declare-fun b!583836 () Bool)

(assert (=> b!583836 (= e!352914 Nil!5737)))

(declare-fun b!583837 () Bool)

(assert (=> b!583837 (= e!352914 e!352915)))

(declare-fun c!109209 () Bool)

(assert (=> b!583837 (= c!109209 ((_ is Leaf!2903) (c!109078 (charsOf!748 (_1!3618 (v!16338 lt!247508))))))))

(declare-fun b!583839 () Bool)

(assert (=> b!583839 (= e!352915 (++!1607 (list!2388 (left!4676 (c!109078 (charsOf!748 (_1!3618 (v!16338 lt!247508)))))) (list!2388 (right!5006 (c!109078 (charsOf!748 (_1!3618 (v!16338 lt!247508))))))))))

(assert (= (and d!205255 c!109208) b!583836))

(assert (= (and d!205255 (not c!109208)) b!583837))

(assert (= (and b!583837 c!109209) b!583838))

(assert (= (and b!583837 (not c!109209)) b!583839))

(declare-fun m!843435 () Bool)

(assert (=> b!583838 m!843435))

(declare-fun m!843437 () Bool)

(assert (=> b!583839 m!843437))

(declare-fun m!843439 () Bool)

(assert (=> b!583839 m!843439))

(assert (=> b!583839 m!843437))

(assert (=> b!583839 m!843439))

(declare-fun m!843441 () Bool)

(assert (=> b!583839 m!843441))

(assert (=> d!205023 d!205255))

(declare-fun d!205257 () Bool)

(assert (=> d!205257 (= (inv!7226 (tag!1381 (h!11139 (t!78261 rules!3103)))) (= (mod (str.len (value!36732 (tag!1381 (h!11139 (t!78261 rules!3103))))) 2) 0))))

(assert (=> b!583361 d!205257))

(declare-fun d!205259 () Bool)

(declare-fun res!251492 () Bool)

(declare-fun e!352916 () Bool)

(assert (=> d!205259 (=> (not res!251492) (not e!352916))))

(assert (=> d!205259 (= res!251492 (semiInverseModEq!433 (toChars!1845 (transformation!1119 (h!11139 (t!78261 rules!3103)))) (toValue!1986 (transformation!1119 (h!11139 (t!78261 rules!3103))))))))

(assert (=> d!205259 (= (inv!7229 (transformation!1119 (h!11139 (t!78261 rules!3103)))) e!352916)))

(declare-fun b!583840 () Bool)

(assert (=> b!583840 (= e!352916 (equivClasses!416 (toChars!1845 (transformation!1119 (h!11139 (t!78261 rules!3103)))) (toValue!1986 (transformation!1119 (h!11139 (t!78261 rules!3103))))))))

(assert (= (and d!205259 res!251492) b!583840))

(declare-fun m!843443 () Bool)

(assert (=> d!205259 m!843443))

(declare-fun m!843445 () Bool)

(assert (=> b!583840 m!843445))

(assert (=> b!583361 d!205259))

(declare-fun d!205261 () Bool)

(declare-fun c!109212 () Bool)

(assert (=> d!205261 (= c!109212 ((_ is Node!1836) (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491)))))))

(declare-fun e!352921 () Bool)

(assert (=> d!205261 (= (inv!7233 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491)))) e!352921)))

(declare-fun b!583847 () Bool)

(declare-fun inv!7237 (Conc!1836) Bool)

(assert (=> b!583847 (= e!352921 (inv!7237 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491)))))))

(declare-fun b!583848 () Bool)

(declare-fun e!352922 () Bool)

(assert (=> b!583848 (= e!352921 e!352922)))

(declare-fun res!251495 () Bool)

(assert (=> b!583848 (= res!251495 (not ((_ is Leaf!2903) (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491))))))))

(assert (=> b!583848 (=> res!251495 e!352922)))

(declare-fun b!583849 () Bool)

(declare-fun inv!7238 (Conc!1836) Bool)

(assert (=> b!583849 (= e!352922 (inv!7238 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491)))))))

(assert (= (and d!205261 c!109212) b!583847))

(assert (= (and d!205261 (not c!109212)) b!583848))

(assert (= (and b!583848 (not res!251495)) b!583849))

(declare-fun m!843447 () Bool)

(assert (=> b!583847 m!843447))

(declare-fun m!843449 () Bool)

(assert (=> b!583849 m!843449))

(assert (=> b!583250 d!205261))

(declare-fun d!205263 () Bool)

(declare-fun lt!247686 () Int)

(assert (=> d!205263 (>= lt!247686 0)))

(declare-fun e!352923 () Int)

(assert (=> d!205263 (= lt!247686 e!352923)))

(declare-fun c!109213 () Bool)

(assert (=> d!205263 (= c!109213 ((_ is Nil!5737) (_2!3618 (get!2193 lt!247567))))))

(assert (=> d!205263 (= (size!4561 (_2!3618 (get!2193 lt!247567))) lt!247686)))

(declare-fun b!583850 () Bool)

(assert (=> b!583850 (= e!352923 0)))

(declare-fun b!583851 () Bool)

(assert (=> b!583851 (= e!352923 (+ 1 (size!4561 (t!78260 (_2!3618 (get!2193 lt!247567))))))))

(assert (= (and d!205263 c!109213) b!583850))

(assert (= (and d!205263 (not c!109213)) b!583851))

(declare-fun m!843451 () Bool)

(assert (=> b!583851 m!843451))

(assert (=> b!583332 d!205263))

(assert (=> b!583332 d!205063))

(assert (=> b!583332 d!205003))

(declare-fun d!205265 () Bool)

(declare-fun lt!247687 () Int)

(assert (=> d!205265 (>= lt!247687 0)))

(declare-fun e!352924 () Int)

(assert (=> d!205265 (= lt!247687 e!352924)))

(declare-fun c!109214 () Bool)

(assert (=> d!205265 (= c!109214 ((_ is Nil!5737) lt!247551))))

(assert (=> d!205265 (= (size!4561 lt!247551) lt!247687)))

(declare-fun b!583852 () Bool)

(assert (=> b!583852 (= e!352924 0)))

(declare-fun b!583853 () Bool)

(assert (=> b!583853 (= e!352924 (+ 1 (size!4561 (t!78260 lt!247551))))))

(assert (= (and d!205265 c!109214) b!583852))

(assert (= (and d!205265 (not c!109214)) b!583853))

(declare-fun m!843453 () Bool)

(assert (=> b!583853 m!843453))

(assert (=> b!583256 d!205265))

(assert (=> b!583256 d!205019))

(declare-fun d!205267 () Bool)

(declare-fun lt!247688 () Int)

(assert (=> d!205267 (>= lt!247688 0)))

(declare-fun e!352925 () Int)

(assert (=> d!205267 (= lt!247688 e!352925)))

(declare-fun c!109215 () Bool)

(assert (=> d!205267 (= c!109215 ((_ is Nil!5737) (_2!3618 (v!16338 lt!247508))))))

(assert (=> d!205267 (= (size!4561 (_2!3618 (v!16338 lt!247508))) lt!247688)))

(declare-fun b!583854 () Bool)

(assert (=> b!583854 (= e!352925 0)))

(declare-fun b!583855 () Bool)

(assert (=> b!583855 (= e!352925 (+ 1 (size!4561 (t!78260 (_2!3618 (v!16338 lt!247508))))))))

(assert (= (and d!205267 c!109215) b!583854))

(assert (= (and d!205267 (not c!109215)) b!583855))

(declare-fun m!843455 () Bool)

(assert (=> b!583855 m!843455))

(assert (=> b!583256 d!205267))

(declare-fun d!205269 () Bool)

(assert (=> d!205269 (= (list!2386 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491))) (list!2388 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491)))))))

(declare-fun bs!69923 () Bool)

(assert (= bs!69923 d!205269))

(declare-fun m!843457 () Bool)

(assert (=> bs!69923 m!843457))

(assert (=> b!583242 d!205269))

(declare-fun d!205271 () Bool)

(assert (=> d!205271 (= (isDefined!1281 lt!247567) (not (isEmpty!4144 lt!247567)))))

(declare-fun bs!69924 () Bool)

(assert (= bs!69924 d!205271))

(assert (=> bs!69924 m!842787))

(assert (=> b!583331 d!205271))

(declare-fun d!205273 () Bool)

(declare-fun c!109216 () Bool)

(assert (=> d!205273 (= c!109216 ((_ is Node!1836) (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))) (value!36758 (_1!3618 (v!16338 lt!247508)))))))))

(declare-fun e!352926 () Bool)

(assert (=> d!205273 (= (inv!7233 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))) (value!36758 (_1!3618 (v!16338 lt!247508)))))) e!352926)))

(declare-fun b!583856 () Bool)

(assert (=> b!583856 (= e!352926 (inv!7237 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))) (value!36758 (_1!3618 (v!16338 lt!247508)))))))))

(declare-fun b!583857 () Bool)

(declare-fun e!352927 () Bool)

(assert (=> b!583857 (= e!352926 e!352927)))

(declare-fun res!251496 () Bool)

(assert (=> b!583857 (= res!251496 (not ((_ is Leaf!2903) (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))) (value!36758 (_1!3618 (v!16338 lt!247508))))))))))

(assert (=> b!583857 (=> res!251496 e!352927)))

(declare-fun b!583858 () Bool)

(assert (=> b!583858 (= e!352927 (inv!7238 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))) (value!36758 (_1!3618 (v!16338 lt!247508)))))))))

(assert (= (and d!205273 c!109216) b!583856))

(assert (= (and d!205273 (not c!109216)) b!583857))

(assert (= (and b!583857 (not res!251496)) b!583858))

(declare-fun m!843459 () Bool)

(assert (=> b!583856 m!843459))

(declare-fun m!843461 () Bool)

(assert (=> b!583858 m!843461))

(assert (=> b!583337 d!205273))

(declare-fun d!205275 () Bool)

(declare-fun charsToBigInt!1 (List!5746) Int)

(assert (=> d!205275 (= (inv!17 (value!36758 token!491)) (= (charsToBigInt!1 (text!8449 (value!36758 token!491))) (value!36751 (value!36758 token!491))))))

(declare-fun bs!69925 () Bool)

(assert (= bs!69925 d!205275))

(declare-fun m!843463 () Bool)

(assert (=> bs!69925 m!843463))

(assert (=> b!583208 d!205275))

(declare-fun d!205277 () Bool)

(declare-fun lt!247689 () Int)

(assert (=> d!205277 (>= lt!247689 0)))

(declare-fun e!352928 () Int)

(assert (=> d!205277 (= lt!247689 e!352928)))

(declare-fun c!109217 () Bool)

(assert (=> d!205277 (= c!109217 ((_ is Nil!5737) (t!78260 lt!247506)))))

(assert (=> d!205277 (= (size!4561 (t!78260 lt!247506)) lt!247689)))

(declare-fun b!583859 () Bool)

(assert (=> b!583859 (= e!352928 0)))

(declare-fun b!583860 () Bool)

(assert (=> b!583860 (= e!352928 (+ 1 (size!4561 (t!78260 (t!78260 lt!247506)))))))

(assert (= (and d!205277 c!109217) b!583859))

(assert (= (and d!205277 (not c!109217)) b!583860))

(declare-fun m!843465 () Bool)

(assert (=> b!583860 m!843465))

(assert (=> b!583336 d!205277))

(assert (=> b!583340 d!205079))

(declare-fun d!205279 () Bool)

(declare-fun dynLambda!3344 (Int BalanceConc!3680) TokenValue!1143)

(assert (=> d!205279 (= (apply!1378 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247581)))) (seqFromList!1301 (originalCharacters!1158 (_1!3618 (get!2193 lt!247581))))) (dynLambda!3344 (toValue!1986 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247581))))) (seqFromList!1301 (originalCharacters!1158 (_1!3618 (get!2193 lt!247581))))))))

(declare-fun b_lambda!23011 () Bool)

(assert (=> (not b_lambda!23011) (not d!205279)))

(declare-fun t!78339 () Bool)

(declare-fun tb!51135 () Bool)

(assert (=> (and b!583107 (= (toValue!1986 (transformation!1119 (h!11139 rules!3103))) (toValue!1986 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247581)))))) t!78339) tb!51135))

(declare-fun result!57250 () Bool)

(assert (=> tb!51135 (= result!57250 (inv!21 (dynLambda!3344 (toValue!1986 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247581))))) (seqFromList!1301 (originalCharacters!1158 (_1!3618 (get!2193 lt!247581)))))))))

(declare-fun m!843467 () Bool)

(assert (=> tb!51135 m!843467))

(assert (=> d!205279 t!78339))

(declare-fun b_and!57515 () Bool)

(assert (= b_and!57435 (and (=> t!78339 result!57250) b_and!57515)))

(declare-fun t!78341 () Bool)

(declare-fun tb!51137 () Bool)

(assert (=> (and b!583106 (= (toValue!1986 (transformation!1119 (rule!1877 token!491))) (toValue!1986 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247581)))))) t!78341) tb!51137))

(declare-fun result!57254 () Bool)

(assert (= result!57254 result!57250))

(assert (=> d!205279 t!78341))

(declare-fun b_and!57517 () Bool)

(assert (= b_and!57439 (and (=> t!78341 result!57254) b_and!57517)))

(declare-fun tb!51139 () Bool)

(declare-fun t!78343 () Bool)

(assert (=> (and b!583362 (= (toValue!1986 (transformation!1119 (h!11139 (t!78261 rules!3103)))) (toValue!1986 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247581)))))) t!78343) tb!51139))

(declare-fun result!57256 () Bool)

(assert (= result!57256 result!57250))

(assert (=> d!205279 t!78343))

(declare-fun b_and!57519 () Bool)

(assert (= b_and!57471 (and (=> t!78343 result!57256) b_and!57519)))

(assert (=> d!205279 m!842851))

(declare-fun m!843469 () Bool)

(assert (=> d!205279 m!843469))

(assert (=> b!583340 d!205279))

(declare-fun d!205281 () Bool)

(declare-fun fromListB!569 (List!5747) BalanceConc!3680)

(assert (=> d!205281 (= (seqFromList!1301 (originalCharacters!1158 (_1!3618 (get!2193 lt!247581)))) (fromListB!569 (originalCharacters!1158 (_1!3618 (get!2193 lt!247581)))))))

(declare-fun bs!69926 () Bool)

(assert (= bs!69926 d!205281))

(declare-fun m!843471 () Bool)

(assert (=> bs!69926 m!843471))

(assert (=> b!583340 d!205281))

(declare-fun b!583864 () Bool)

(declare-fun e!352932 () List!5747)

(assert (=> b!583864 (= e!352932 (Cons!5737 (h!11138 (t!78260 input!2705)) (++!1607 (t!78260 (t!78260 input!2705)) suffix!1342)))))

(declare-fun b!583865 () Bool)

(declare-fun res!251497 () Bool)

(declare-fun e!352933 () Bool)

(assert (=> b!583865 (=> (not res!251497) (not e!352933))))

(declare-fun lt!247690 () List!5747)

(assert (=> b!583865 (= res!251497 (= (size!4561 lt!247690) (+ (size!4561 (t!78260 input!2705)) (size!4561 suffix!1342))))))

(declare-fun b!583866 () Bool)

(assert (=> b!583866 (= e!352933 (or (not (= suffix!1342 Nil!5737)) (= lt!247690 (t!78260 input!2705))))))

(declare-fun b!583863 () Bool)

(assert (=> b!583863 (= e!352932 suffix!1342)))

(declare-fun d!205283 () Bool)

(assert (=> d!205283 e!352933))

(declare-fun res!251498 () Bool)

(assert (=> d!205283 (=> (not res!251498) (not e!352933))))

(assert (=> d!205283 (= res!251498 (= (content!1017 lt!247690) ((_ map or) (content!1017 (t!78260 input!2705)) (content!1017 suffix!1342))))))

(assert (=> d!205283 (= lt!247690 e!352932)))

(declare-fun c!109218 () Bool)

(assert (=> d!205283 (= c!109218 ((_ is Nil!5737) (t!78260 input!2705)))))

(assert (=> d!205283 (= (++!1607 (t!78260 input!2705) suffix!1342) lt!247690)))

(assert (= (and d!205283 c!109218) b!583863))

(assert (= (and d!205283 (not c!109218)) b!583864))

(assert (= (and d!205283 res!251498) b!583865))

(assert (= (and b!583865 res!251497) b!583866))

(declare-fun m!843473 () Bool)

(assert (=> b!583864 m!843473))

(declare-fun m!843475 () Bool)

(assert (=> b!583865 m!843475))

(assert (=> b!583865 m!842769))

(assert (=> b!583865 m!842621))

(declare-fun m!843477 () Bool)

(assert (=> d!205283 m!843477))

(declare-fun m!843479 () Bool)

(assert (=> d!205283 m!843479))

(assert (=> d!205283 m!842627))

(assert (=> b!583349 d!205283))

(declare-fun d!205285 () Bool)

(declare-fun lt!247691 () Bool)

(assert (=> d!205285 (= lt!247691 (select (content!1019 rules!3103) (rule!1877 (_1!3618 (get!2193 lt!247567)))))))

(declare-fun e!352934 () Bool)

(assert (=> d!205285 (= lt!247691 e!352934)))

(declare-fun res!251500 () Bool)

(assert (=> d!205285 (=> (not res!251500) (not e!352934))))

(assert (=> d!205285 (= res!251500 ((_ is Cons!5738) rules!3103))))

(assert (=> d!205285 (= (contains!1347 rules!3103 (rule!1877 (_1!3618 (get!2193 lt!247567)))) lt!247691)))

(declare-fun b!583867 () Bool)

(declare-fun e!352935 () Bool)

(assert (=> b!583867 (= e!352934 e!352935)))

(declare-fun res!251499 () Bool)

(assert (=> b!583867 (=> res!251499 e!352935)))

(assert (=> b!583867 (= res!251499 (= (h!11139 rules!3103) (rule!1877 (_1!3618 (get!2193 lt!247567)))))))

(declare-fun b!583868 () Bool)

(assert (=> b!583868 (= e!352935 (contains!1347 (t!78261 rules!3103) (rule!1877 (_1!3618 (get!2193 lt!247567)))))))

(assert (= (and d!205285 res!251500) b!583867))

(assert (= (and b!583867 (not res!251499)) b!583868))

(assert (=> d!205285 m!843415))

(declare-fun m!843481 () Bool)

(assert (=> d!205285 m!843481))

(declare-fun m!843483 () Bool)

(assert (=> b!583868 m!843483))

(assert (=> b!583327 d!205285))

(assert (=> b!583327 d!205063))

(declare-fun d!205287 () Bool)

(assert (=> d!205287 (and (= lt!247506 input!2705) (= suffix!1342 suffix!1342))))

(assert (=> d!205287 true))

(declare-fun _$50!238 () Unit!10427)

(assert (=> d!205287 (= (choose!4193 lt!247506 suffix!1342 input!2705 suffix!1342) _$50!238)))

(assert (=> d!205017 d!205287))

(assert (=> d!205017 d!204949))

(assert (=> d!205017 d!205037))

(declare-fun b!583870 () Bool)

(declare-fun e!352936 () List!5747)

(assert (=> b!583870 (= e!352936 (Cons!5737 (h!11138 (t!78260 lt!247506)) (++!1607 (t!78260 (t!78260 lt!247506)) suffix!1342)))))

(declare-fun b!583871 () Bool)

(declare-fun res!251501 () Bool)

(declare-fun e!352937 () Bool)

(assert (=> b!583871 (=> (not res!251501) (not e!352937))))

(declare-fun lt!247692 () List!5747)

(assert (=> b!583871 (= res!251501 (= (size!4561 lt!247692) (+ (size!4561 (t!78260 lt!247506)) (size!4561 suffix!1342))))))

(declare-fun b!583872 () Bool)

(assert (=> b!583872 (= e!352937 (or (not (= suffix!1342 Nil!5737)) (= lt!247692 (t!78260 lt!247506))))))

(declare-fun b!583869 () Bool)

(assert (=> b!583869 (= e!352936 suffix!1342)))

(declare-fun d!205289 () Bool)

(assert (=> d!205289 e!352937))

(declare-fun res!251502 () Bool)

(assert (=> d!205289 (=> (not res!251502) (not e!352937))))

(assert (=> d!205289 (= res!251502 (= (content!1017 lt!247692) ((_ map or) (content!1017 (t!78260 lt!247506)) (content!1017 suffix!1342))))))

(assert (=> d!205289 (= lt!247692 e!352936)))

(declare-fun c!109219 () Bool)

(assert (=> d!205289 (= c!109219 ((_ is Nil!5737) (t!78260 lt!247506)))))

(assert (=> d!205289 (= (++!1607 (t!78260 lt!247506) suffix!1342) lt!247692)))

(assert (= (and d!205289 c!109219) b!583869))

(assert (= (and d!205289 (not c!109219)) b!583870))

(assert (= (and d!205289 res!251502) b!583871))

(assert (= (and b!583871 res!251501) b!583872))

(declare-fun m!843485 () Bool)

(assert (=> b!583870 m!843485))

(declare-fun m!843487 () Bool)

(assert (=> b!583871 m!843487))

(assert (=> b!583871 m!842819))

(assert (=> b!583871 m!842621))

(declare-fun m!843489 () Bool)

(assert (=> d!205289 m!843489))

(assert (=> d!205289 m!843003))

(assert (=> d!205289 m!842627))

(assert (=> b!583164 d!205289))

(declare-fun d!205291 () Bool)

(declare-fun lt!247693 () Int)

(assert (=> d!205291 (>= lt!247693 0)))

(declare-fun e!352938 () Int)

(assert (=> d!205291 (= lt!247693 e!352938)))

(declare-fun c!109220 () Bool)

(assert (=> d!205291 (= c!109220 ((_ is Nil!5737) (t!78260 input!2705)))))

(assert (=> d!205291 (= (size!4561 (t!78260 input!2705)) lt!247693)))

(declare-fun b!583873 () Bool)

(assert (=> b!583873 (= e!352938 0)))

(declare-fun b!583874 () Bool)

(assert (=> b!583874 (= e!352938 (+ 1 (size!4561 (t!78260 (t!78260 input!2705)))))))

(assert (= (and d!205291 c!109220) b!583873))

(assert (= (and d!205291 (not c!109220)) b!583874))

(declare-fun m!843491 () Bool)

(assert (=> b!583874 m!843491))

(assert (=> b!583299 d!205291))

(declare-fun d!205293 () Bool)

(declare-fun res!251507 () Bool)

(declare-fun e!352943 () Bool)

(assert (=> d!205293 (=> res!251507 e!352943)))

(assert (=> d!205293 (= res!251507 ((_ is Nil!5738) rules!3103))))

(assert (=> d!205293 (= (noDuplicateTag!397 thiss!22590 rules!3103 Nil!5740) e!352943)))

(declare-fun b!583879 () Bool)

(declare-fun e!352944 () Bool)

(assert (=> b!583879 (= e!352943 e!352944)))

(declare-fun res!251508 () Bool)

(assert (=> b!583879 (=> (not res!251508) (not e!352944))))

(declare-fun contains!1349 (List!5750 String!7458) Bool)

(assert (=> b!583879 (= res!251508 (not (contains!1349 Nil!5740 (tag!1381 (h!11139 rules!3103)))))))

(declare-fun b!583880 () Bool)

(assert (=> b!583880 (= e!352944 (noDuplicateTag!397 thiss!22590 (t!78261 rules!3103) (Cons!5740 (tag!1381 (h!11139 rules!3103)) Nil!5740)))))

(assert (= (and d!205293 (not res!251507)) b!583879))

(assert (= (and b!583879 res!251508) b!583880))

(declare-fun m!843493 () Bool)

(assert (=> b!583879 m!843493))

(declare-fun m!843495 () Bool)

(assert (=> b!583880 m!843495))

(assert (=> b!583226 d!205293))

(declare-fun d!205295 () Bool)

(assert (=> d!205295 (= (isEmpty!4144 lt!247505) (not ((_ is Some!1469) lt!247505)))))

(assert (=> d!205033 d!205295))

(declare-fun d!205297 () Bool)

(assert (=> d!205297 true))

(declare-fun order!4689 () Int)

(declare-fun lambda!15834 () Int)

(declare-fun dynLambda!3345 (Int Int) Int)

(assert (=> d!205297 (< (dynLambda!3343 order!4687 (toValue!1986 (transformation!1119 (h!11139 rules!3103)))) (dynLambda!3345 order!4689 lambda!15834))))

(declare-fun Forall2!214 (Int) Bool)

(assert (=> d!205297 (= (equivClasses!416 (toChars!1845 (transformation!1119 (h!11139 rules!3103))) (toValue!1986 (transformation!1119 (h!11139 rules!3103)))) (Forall2!214 lambda!15834))))

(declare-fun bs!69927 () Bool)

(assert (= bs!69927 d!205297))

(declare-fun m!843497 () Bool)

(assert (=> bs!69927 m!843497))

(assert (=> b!583305 d!205297))

(declare-fun b!583885 () Bool)

(declare-fun res!251515 () Bool)

(declare-fun e!352949 () Bool)

(assert (=> b!583885 (=> res!251515 e!352949)))

(assert (=> b!583885 (= res!251515 (not ((_ is ElementMatch!1453) (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247567)))))))))

(declare-fun e!352953 () Bool)

(assert (=> b!583885 (= e!352953 e!352949)))

(declare-fun b!583886 () Bool)

(declare-fun e!352952 () Bool)

(assert (=> b!583886 (= e!352952 e!352953)))

(declare-fun c!109222 () Bool)

(assert (=> b!583886 (= c!109222 ((_ is EmptyLang!1453) (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247567))))))))

(declare-fun b!583887 () Bool)

(declare-fun res!251512 () Bool)

(declare-fun e!352950 () Bool)

(assert (=> b!583887 (=> res!251512 e!352950)))

(assert (=> b!583887 (= res!251512 (not (isEmpty!4142 (tail!761 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567))))))))))

(declare-fun b!583888 () Bool)

(declare-fun lt!247694 () Bool)

(assert (=> b!583888 (= e!352953 (not lt!247694))))

(declare-fun b!583889 () Bool)

(declare-fun e!352948 () Bool)

(assert (=> b!583889 (= e!352948 e!352950)))

(declare-fun res!251514 () Bool)

(assert (=> b!583889 (=> res!251514 e!352950)))

(declare-fun call!40176 () Bool)

(assert (=> b!583889 (= res!251514 call!40176)))

(declare-fun d!205299 () Bool)

(assert (=> d!205299 e!352952))

(declare-fun c!109221 () Bool)

(assert (=> d!205299 (= c!109221 ((_ is EmptyExpr!1453) (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247567))))))))

(declare-fun e!352951 () Bool)

(assert (=> d!205299 (= lt!247694 e!352951)))

(declare-fun c!109223 () Bool)

(assert (=> d!205299 (= c!109223 (isEmpty!4142 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567))))))))

(assert (=> d!205299 (validRegex!490 (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247567)))))))

(assert (=> d!205299 (= (matchR!594 (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247567)))) (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567))))) lt!247694)))

(declare-fun b!583890 () Bool)

(assert (=> b!583890 (= e!352949 e!352948)))

(declare-fun res!251517 () Bool)

(assert (=> b!583890 (=> (not res!251517) (not e!352948))))

(assert (=> b!583890 (= res!251517 (not lt!247694))))

(declare-fun b!583891 () Bool)

(assert (=> b!583891 (= e!352951 (matchR!594 (derivativeStep!308 (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247567)))) (head!1232 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567)))))) (tail!761 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567)))))))))

(declare-fun bm!40171 () Bool)

(assert (=> bm!40171 (= call!40176 (isEmpty!4142 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567))))))))

(declare-fun b!583892 () Bool)

(assert (=> b!583892 (= e!352952 (= lt!247694 call!40176))))

(declare-fun b!583893 () Bool)

(declare-fun res!251516 () Bool)

(declare-fun e!352947 () Bool)

(assert (=> b!583893 (=> (not res!251516) (not e!352947))))

(assert (=> b!583893 (= res!251516 (isEmpty!4142 (tail!761 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567)))))))))

(declare-fun b!583894 () Bool)

(assert (=> b!583894 (= e!352950 (not (= (head!1232 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567))))) (c!109077 (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247567))))))))))

(declare-fun b!583895 () Bool)

(declare-fun res!251513 () Bool)

(assert (=> b!583895 (=> res!251513 e!352949)))

(assert (=> b!583895 (= res!251513 e!352947)))

(declare-fun res!251511 () Bool)

(assert (=> b!583895 (=> (not res!251511) (not e!352947))))

(assert (=> b!583895 (= res!251511 lt!247694)))

(declare-fun b!583896 () Bool)

(assert (=> b!583896 (= e!352951 (nullable!395 (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247567))))))))

(declare-fun b!583897 () Bool)

(declare-fun res!251518 () Bool)

(assert (=> b!583897 (=> (not res!251518) (not e!352947))))

(assert (=> b!583897 (= res!251518 (not call!40176))))

(declare-fun b!583898 () Bool)

(assert (=> b!583898 (= e!352947 (= (head!1232 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247567))))) (c!109077 (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247567)))))))))

(assert (= (and d!205299 c!109223) b!583896))

(assert (= (and d!205299 (not c!109223)) b!583891))

(assert (= (and d!205299 c!109221) b!583892))

(assert (= (and d!205299 (not c!109221)) b!583886))

(assert (= (and b!583886 c!109222) b!583888))

(assert (= (and b!583886 (not c!109222)) b!583885))

(assert (= (and b!583885 (not res!251515)) b!583895))

(assert (= (and b!583895 res!251511) b!583897))

(assert (= (and b!583897 res!251518) b!583893))

(assert (= (and b!583893 res!251516) b!583898))

(assert (= (and b!583895 (not res!251513)) b!583890))

(assert (= (and b!583890 res!251517) b!583889))

(assert (= (and b!583889 (not res!251514)) b!583887))

(assert (= (and b!583887 (not res!251512)) b!583894))

(assert (= (or b!583892 b!583889 b!583897) bm!40171))

(assert (=> b!583894 m!842801))

(declare-fun m!843499 () Bool)

(assert (=> b!583894 m!843499))

(assert (=> b!583891 m!842801))

(assert (=> b!583891 m!843499))

(assert (=> b!583891 m!843499))

(declare-fun m!843501 () Bool)

(assert (=> b!583891 m!843501))

(assert (=> b!583891 m!842801))

(declare-fun m!843503 () Bool)

(assert (=> b!583891 m!843503))

(assert (=> b!583891 m!843501))

(assert (=> b!583891 m!843503))

(declare-fun m!843505 () Bool)

(assert (=> b!583891 m!843505))

(assert (=> b!583887 m!842801))

(assert (=> b!583887 m!843503))

(assert (=> b!583887 m!843503))

(declare-fun m!843507 () Bool)

(assert (=> b!583887 m!843507))

(assert (=> bm!40171 m!842801))

(declare-fun m!843509 () Bool)

(assert (=> bm!40171 m!843509))

(assert (=> b!583898 m!842801))

(assert (=> b!583898 m!843499))

(declare-fun m!843511 () Bool)

(assert (=> b!583896 m!843511))

(assert (=> d!205299 m!842801))

(assert (=> d!205299 m!843509))

(declare-fun m!843513 () Bool)

(assert (=> d!205299 m!843513))

(assert (=> b!583893 m!842801))

(assert (=> b!583893 m!843503))

(assert (=> b!583893 m!843503))

(assert (=> b!583893 m!843507))

(assert (=> b!583329 d!205299))

(assert (=> b!583329 d!205063))

(assert (=> b!583329 d!205059))

(assert (=> b!583329 d!205061))

(declare-fun bs!69928 () Bool)

(declare-fun d!205301 () Bool)

(assert (= bs!69928 (and d!205301 d!205297)))

(declare-fun lambda!15835 () Int)

(assert (=> bs!69928 (= (= (toValue!1986 (transformation!1119 (rule!1877 token!491))) (toValue!1986 (transformation!1119 (h!11139 rules!3103)))) (= lambda!15835 lambda!15834))))

(assert (=> d!205301 true))

(assert (=> d!205301 (< (dynLambda!3343 order!4687 (toValue!1986 (transformation!1119 (rule!1877 token!491)))) (dynLambda!3345 order!4689 lambda!15835))))

(assert (=> d!205301 (= (equivClasses!416 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (toValue!1986 (transformation!1119 (rule!1877 token!491)))) (Forall2!214 lambda!15835))))

(declare-fun bs!69929 () Bool)

(assert (= bs!69929 d!205301))

(declare-fun m!843515 () Bool)

(assert (=> bs!69929 m!843515))

(assert (=> b!583338 d!205301))

(declare-fun d!205303 () Bool)

(assert (=> d!205303 (= (isEmpty!4144 lt!247567) (not ((_ is Some!1469) lt!247567)))))

(assert (=> d!205011 d!205303))

(declare-fun d!205305 () Bool)

(declare-fun e!352956 () Bool)

(assert (=> d!205305 e!352956))

(declare-fun res!251522 () Bool)

(assert (=> d!205305 (=> res!251522 e!352956)))

(declare-fun lt!247695 () Bool)

(assert (=> d!205305 (= res!251522 (not lt!247695))))

(declare-fun e!352955 () Bool)

(assert (=> d!205305 (= lt!247695 e!352955)))

(declare-fun res!251520 () Bool)

(assert (=> d!205305 (=> res!251520 e!352955)))

(assert (=> d!205305 (= res!251520 ((_ is Nil!5737) input!2705))))

(assert (=> d!205305 (= (isPrefix!747 input!2705 input!2705) lt!247695)))

(declare-fun b!583902 () Bool)

(assert (=> b!583902 (= e!352956 (>= (size!4561 input!2705) (size!4561 input!2705)))))

(declare-fun b!583901 () Bool)

(declare-fun e!352954 () Bool)

(assert (=> b!583901 (= e!352954 (isPrefix!747 (tail!761 input!2705) (tail!761 input!2705)))))

(declare-fun b!583899 () Bool)

(assert (=> b!583899 (= e!352955 e!352954)))

(declare-fun res!251519 () Bool)

(assert (=> b!583899 (=> (not res!251519) (not e!352954))))

(assert (=> b!583899 (= res!251519 (not ((_ is Nil!5737) input!2705)))))

(declare-fun b!583900 () Bool)

(declare-fun res!251521 () Bool)

(assert (=> b!583900 (=> (not res!251521) (not e!352954))))

(assert (=> b!583900 (= res!251521 (= (head!1232 input!2705) (head!1232 input!2705)))))

(assert (= (and d!205305 (not res!251520)) b!583899))

(assert (= (and b!583899 res!251519) b!583900))

(assert (= (and b!583900 res!251521) b!583901))

(assert (= (and d!205305 (not res!251522)) b!583902))

(assert (=> b!583902 m!842533))

(assert (=> b!583902 m!842533))

(declare-fun m!843517 () Bool)

(assert (=> b!583901 m!843517))

(assert (=> b!583901 m!843517))

(assert (=> b!583901 m!843517))

(assert (=> b!583901 m!843517))

(declare-fun m!843519 () Bool)

(assert (=> b!583901 m!843519))

(declare-fun m!843521 () Bool)

(assert (=> b!583900 m!843521))

(assert (=> b!583900 m!843521))

(assert (=> d!205011 d!205305))

(declare-fun d!205307 () Bool)

(assert (=> d!205307 (isPrefix!747 input!2705 input!2705)))

(declare-fun lt!247696 () Unit!10427)

(assert (=> d!205307 (= lt!247696 (choose!4195 input!2705 input!2705))))

(assert (=> d!205307 (= (lemmaIsPrefixRefl!485 input!2705 input!2705) lt!247696)))

(declare-fun bs!69930 () Bool)

(assert (= bs!69930 d!205307))

(assert (=> bs!69930 m!842789))

(declare-fun m!843523 () Bool)

(assert (=> bs!69930 m!843523))

(assert (=> d!205011 d!205307))

(assert (=> d!205011 d!205105))

(assert (=> b!583325 d!205063))

(declare-fun d!205309 () Bool)

(assert (=> d!205309 (= (apply!1378 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247567)))) (seqFromList!1301 (originalCharacters!1158 (_1!3618 (get!2193 lt!247567))))) (dynLambda!3344 (toValue!1986 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247567))))) (seqFromList!1301 (originalCharacters!1158 (_1!3618 (get!2193 lt!247567))))))))

(declare-fun b_lambda!23013 () Bool)

(assert (=> (not b_lambda!23013) (not d!205309)))

(declare-fun t!78345 () Bool)

(declare-fun tb!51141 () Bool)

(assert (=> (and b!583107 (= (toValue!1986 (transformation!1119 (h!11139 rules!3103))) (toValue!1986 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247567)))))) t!78345) tb!51141))

(declare-fun result!57258 () Bool)

(assert (=> tb!51141 (= result!57258 (inv!21 (dynLambda!3344 (toValue!1986 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247567))))) (seqFromList!1301 (originalCharacters!1158 (_1!3618 (get!2193 lt!247567)))))))))

(declare-fun m!843525 () Bool)

(assert (=> tb!51141 m!843525))

(assert (=> d!205309 t!78345))

(declare-fun b_and!57521 () Bool)

(assert (= b_and!57515 (and (=> t!78345 result!57258) b_and!57521)))

(declare-fun t!78347 () Bool)

(declare-fun tb!51143 () Bool)

(assert (=> (and b!583106 (= (toValue!1986 (transformation!1119 (rule!1877 token!491))) (toValue!1986 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247567)))))) t!78347) tb!51143))

(declare-fun result!57260 () Bool)

(assert (= result!57260 result!57258))

(assert (=> d!205309 t!78347))

(declare-fun b_and!57523 () Bool)

(assert (= b_and!57517 (and (=> t!78347 result!57260) b_and!57523)))

(declare-fun tb!51145 () Bool)

(declare-fun t!78349 () Bool)

(assert (=> (and b!583362 (= (toValue!1986 (transformation!1119 (h!11139 (t!78261 rules!3103)))) (toValue!1986 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247567)))))) t!78349) tb!51145))

(declare-fun result!57262 () Bool)

(assert (= result!57262 result!57258))

(assert (=> d!205309 t!78349))

(declare-fun b_and!57525 () Bool)

(assert (= b_and!57519 (and (=> t!78349 result!57262) b_and!57525)))

(assert (=> d!205309 m!842795))

(declare-fun m!843527 () Bool)

(assert (=> d!205309 m!843527))

(assert (=> b!583325 d!205309))

(declare-fun d!205311 () Bool)

(assert (=> d!205311 (= (seqFromList!1301 (originalCharacters!1158 (_1!3618 (get!2193 lt!247567)))) (fromListB!569 (originalCharacters!1158 (_1!3618 (get!2193 lt!247567)))))))

(declare-fun bs!69931 () Bool)

(assert (= bs!69931 d!205311))

(declare-fun m!843529 () Bool)

(assert (=> bs!69931 m!843529))

(assert (=> b!583325 d!205311))

(declare-fun d!205313 () Bool)

(assert (=> d!205313 (= (list!2386 lt!247578) (list!2388 (c!109078 lt!247578)))))

(declare-fun bs!69932 () Bool)

(assert (= bs!69932 d!205313))

(declare-fun m!843531 () Bool)

(assert (=> bs!69932 m!843531))

(assert (=> d!205025 d!205313))

(declare-fun d!205315 () Bool)

(assert (=> d!205315 (= (isEmpty!4142 (originalCharacters!1158 token!491)) ((_ is Nil!5737) (originalCharacters!1158 token!491)))))

(assert (=> d!204975 d!205315))

(declare-fun d!205317 () Bool)

(declare-fun c!109224 () Bool)

(assert (=> d!205317 (= c!109224 ((_ is Nil!5737) lt!247584))))

(declare-fun e!352958 () (InoxSet C!3828))

(assert (=> d!205317 (= (content!1017 lt!247584) e!352958)))

(declare-fun b!583903 () Bool)

(assert (=> b!583903 (= e!352958 ((as const (Array C!3828 Bool)) false))))

(declare-fun b!583904 () Bool)

(assert (=> b!583904 (= e!352958 ((_ map or) (store ((as const (Array C!3828 Bool)) false) (h!11138 lt!247584) true) (content!1017 (t!78260 lt!247584))))))

(assert (= (and d!205317 c!109224) b!583903))

(assert (= (and d!205317 (not c!109224)) b!583904))

(declare-fun m!843533 () Bool)

(assert (=> b!583904 m!843533))

(declare-fun m!843535 () Bool)

(assert (=> b!583904 m!843535))

(assert (=> d!205037 d!205317))

(declare-fun d!205319 () Bool)

(declare-fun c!109225 () Bool)

(assert (=> d!205319 (= c!109225 ((_ is Nil!5737) input!2705))))

(declare-fun e!352959 () (InoxSet C!3828))

(assert (=> d!205319 (= (content!1017 input!2705) e!352959)))

(declare-fun b!583905 () Bool)

(assert (=> b!583905 (= e!352959 ((as const (Array C!3828 Bool)) false))))

(declare-fun b!583906 () Bool)

(assert (=> b!583906 (= e!352959 ((_ map or) (store ((as const (Array C!3828 Bool)) false) (h!11138 input!2705) true) (content!1017 (t!78260 input!2705))))))

(assert (= (and d!205319 c!109225) b!583905))

(assert (= (and d!205319 (not c!109225)) b!583906))

(declare-fun m!843537 () Bool)

(assert (=> b!583906 m!843537))

(assert (=> b!583906 m!843479))

(assert (=> d!205037 d!205319))

(assert (=> d!205037 d!205089))

(declare-fun b!583925 () Bool)

(declare-fun res!251542 () Bool)

(declare-fun e!352969 () Bool)

(assert (=> b!583925 (=> (not res!251542) (not e!352969))))

(declare-fun lt!247708 () Option!1470)

(assert (=> b!583925 (= res!251542 (= (++!1607 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247708)))) (_2!3618 (get!2193 lt!247708))) lt!247503))))

(declare-fun b!583926 () Bool)

(declare-fun res!251538 () Bool)

(assert (=> b!583926 (=> (not res!251538) (not e!352969))))

(assert (=> b!583926 (= res!251538 (= (rule!1877 (_1!3618 (get!2193 lt!247708))) (h!11139 rules!3103)))))

(declare-fun b!583927 () Bool)

(declare-fun res!251543 () Bool)

(assert (=> b!583927 (=> (not res!251543) (not e!352969))))

(assert (=> b!583927 (= res!251543 (< (size!4561 (_2!3618 (get!2193 lt!247708))) (size!4561 lt!247503)))))

(declare-fun d!205321 () Bool)

(declare-fun e!352970 () Bool)

(assert (=> d!205321 e!352970))

(declare-fun res!251537 () Bool)

(assert (=> d!205321 (=> res!251537 e!352970)))

(assert (=> d!205321 (= res!251537 (isEmpty!4144 lt!247708))))

(declare-fun e!352968 () Option!1470)

(assert (=> d!205321 (= lt!247708 e!352968)))

(declare-fun c!109228 () Bool)

(declare-datatypes ((tuple2!6712 0))(
  ( (tuple2!6713 (_1!3620 List!5747) (_2!3620 List!5747)) )
))
(declare-fun lt!247709 () tuple2!6712)

(assert (=> d!205321 (= c!109228 (isEmpty!4142 (_1!3620 lt!247709)))))

(declare-fun findLongestMatch!158 (Regex!1453 List!5747) tuple2!6712)

(assert (=> d!205321 (= lt!247709 (findLongestMatch!158 (regex!1119 (h!11139 rules!3103)) lt!247503))))

(assert (=> d!205321 (ruleValid!323 thiss!22590 (h!11139 rules!3103))))

(assert (=> d!205321 (= (maxPrefixOneRule!398 thiss!22590 (h!11139 rules!3103) lt!247503) lt!247708)))

(declare-fun b!583928 () Bool)

(declare-fun res!251539 () Bool)

(assert (=> b!583928 (=> (not res!251539) (not e!352969))))

(assert (=> b!583928 (= res!251539 (= (value!36758 (_1!3618 (get!2193 lt!247708))) (apply!1378 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247708)))) (seqFromList!1301 (originalCharacters!1158 (_1!3618 (get!2193 lt!247708)))))))))

(declare-fun b!583929 () Bool)

(declare-fun size!4563 (BalanceConc!3680) Int)

(assert (=> b!583929 (= e!352968 (Some!1469 (tuple2!6709 (Token!1975 (apply!1378 (transformation!1119 (h!11139 rules!3103)) (seqFromList!1301 (_1!3620 lt!247709))) (h!11139 rules!3103) (size!4563 (seqFromList!1301 (_1!3620 lt!247709))) (_1!3620 lt!247709)) (_2!3620 lt!247709))))))

(declare-fun lt!247707 () Unit!10427)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!163 (Regex!1453 List!5747) Unit!10427)

(assert (=> b!583929 (= lt!247707 (longestMatchIsAcceptedByMatchOrIsEmpty!163 (regex!1119 (h!11139 rules!3103)) lt!247503))))

(declare-fun res!251540 () Bool)

(declare-fun findLongestMatchInner!179 (Regex!1453 List!5747 Int List!5747 List!5747 Int) tuple2!6712)

(assert (=> b!583929 (= res!251540 (isEmpty!4142 (_1!3620 (findLongestMatchInner!179 (regex!1119 (h!11139 rules!3103)) Nil!5737 (size!4561 Nil!5737) lt!247503 lt!247503 (size!4561 lt!247503)))))))

(declare-fun e!352971 () Bool)

(assert (=> b!583929 (=> res!251540 e!352971)))

(assert (=> b!583929 e!352971))

(declare-fun lt!247710 () Unit!10427)

(assert (=> b!583929 (= lt!247710 lt!247707)))

(declare-fun lt!247711 () Unit!10427)

(declare-fun lemmaSemiInverse!216 (TokenValueInjection!2054 BalanceConc!3680) Unit!10427)

(assert (=> b!583929 (= lt!247711 (lemmaSemiInverse!216 (transformation!1119 (h!11139 rules!3103)) (seqFromList!1301 (_1!3620 lt!247709))))))

(declare-fun b!583930 () Bool)

(assert (=> b!583930 (= e!352971 (matchR!594 (regex!1119 (h!11139 rules!3103)) (_1!3620 (findLongestMatchInner!179 (regex!1119 (h!11139 rules!3103)) Nil!5737 (size!4561 Nil!5737) lt!247503 lt!247503 (size!4561 lt!247503)))))))

(declare-fun b!583931 () Bool)

(assert (=> b!583931 (= e!352970 e!352969)))

(declare-fun res!251541 () Bool)

(assert (=> b!583931 (=> (not res!251541) (not e!352969))))

(assert (=> b!583931 (= res!251541 (matchR!594 (regex!1119 (h!11139 rules!3103)) (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247708))))))))

(declare-fun b!583932 () Bool)

(assert (=> b!583932 (= e!352969 (= (size!4560 (_1!3618 (get!2193 lt!247708))) (size!4561 (originalCharacters!1158 (_1!3618 (get!2193 lt!247708))))))))

(declare-fun b!583933 () Bool)

(assert (=> b!583933 (= e!352968 None!1469)))

(assert (= (and d!205321 c!109228) b!583933))

(assert (= (and d!205321 (not c!109228)) b!583929))

(assert (= (and b!583929 (not res!251540)) b!583930))

(assert (= (and d!205321 (not res!251537)) b!583931))

(assert (= (and b!583931 res!251541) b!583925))

(assert (= (and b!583925 res!251542) b!583927))

(assert (= (and b!583927 res!251543) b!583926))

(assert (= (and b!583926 res!251538) b!583928))

(assert (= (and b!583928 res!251539) b!583932))

(declare-fun m!843539 () Bool)

(assert (=> b!583929 m!843539))

(declare-fun m!843541 () Bool)

(assert (=> b!583929 m!843541))

(declare-fun m!843543 () Bool)

(assert (=> b!583929 m!843543))

(assert (=> b!583929 m!843539))

(declare-fun m!843545 () Bool)

(assert (=> b!583929 m!843545))

(declare-fun m!843547 () Bool)

(assert (=> b!583929 m!843547))

(assert (=> b!583929 m!843539))

(assert (=> b!583929 m!842867))

(declare-fun m!843549 () Bool)

(assert (=> b!583929 m!843549))

(assert (=> b!583929 m!842867))

(declare-fun m!843551 () Bool)

(assert (=> b!583929 m!843551))

(assert (=> b!583929 m!843549))

(assert (=> b!583929 m!843539))

(declare-fun m!843553 () Bool)

(assert (=> b!583929 m!843553))

(assert (=> b!583930 m!843549))

(assert (=> b!583930 m!842867))

(assert (=> b!583930 m!843549))

(assert (=> b!583930 m!842867))

(assert (=> b!583930 m!843551))

(declare-fun m!843555 () Bool)

(assert (=> b!583930 m!843555))

(declare-fun m!843557 () Bool)

(assert (=> d!205321 m!843557))

(declare-fun m!843559 () Bool)

(assert (=> d!205321 m!843559))

(declare-fun m!843561 () Bool)

(assert (=> d!205321 m!843561))

(assert (=> d!205321 m!843413))

(declare-fun m!843563 () Bool)

(assert (=> b!583927 m!843563))

(declare-fun m!843565 () Bool)

(assert (=> b!583927 m!843565))

(assert (=> b!583927 m!842867))

(assert (=> b!583932 m!843563))

(declare-fun m!843567 () Bool)

(assert (=> b!583932 m!843567))

(assert (=> b!583926 m!843563))

(assert (=> b!583925 m!843563))

(declare-fun m!843569 () Bool)

(assert (=> b!583925 m!843569))

(assert (=> b!583925 m!843569))

(declare-fun m!843571 () Bool)

(assert (=> b!583925 m!843571))

(assert (=> b!583925 m!843571))

(declare-fun m!843573 () Bool)

(assert (=> b!583925 m!843573))

(assert (=> b!583931 m!843563))

(assert (=> b!583931 m!843569))

(assert (=> b!583931 m!843569))

(assert (=> b!583931 m!843571))

(assert (=> b!583931 m!843571))

(declare-fun m!843575 () Bool)

(assert (=> b!583931 m!843575))

(assert (=> b!583928 m!843563))

(declare-fun m!843577 () Bool)

(assert (=> b!583928 m!843577))

(assert (=> b!583928 m!843577))

(declare-fun m!843579 () Bool)

(assert (=> b!583928 m!843579))

(assert (=> bm!40160 d!205321))

(declare-fun b!583935 () Bool)

(declare-fun e!352972 () List!5747)

(assert (=> b!583935 (= e!352972 (Cons!5737 (h!11138 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581))))) (++!1607 (t!78260 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581))))) (_2!3618 (get!2193 lt!247581)))))))

(declare-fun b!583936 () Bool)

(declare-fun res!251544 () Bool)

(declare-fun e!352973 () Bool)

(assert (=> b!583936 (=> (not res!251544) (not e!352973))))

(declare-fun lt!247712 () List!5747)

(assert (=> b!583936 (= res!251544 (= (size!4561 lt!247712) (+ (size!4561 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581))))) (size!4561 (_2!3618 (get!2193 lt!247581))))))))

(declare-fun b!583937 () Bool)

(assert (=> b!583937 (= e!352973 (or (not (= (_2!3618 (get!2193 lt!247581)) Nil!5737)) (= lt!247712 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581)))))))))

(declare-fun b!583934 () Bool)

(assert (=> b!583934 (= e!352972 (_2!3618 (get!2193 lt!247581)))))

(declare-fun d!205323 () Bool)

(assert (=> d!205323 e!352973))

(declare-fun res!251545 () Bool)

(assert (=> d!205323 (=> (not res!251545) (not e!352973))))

(assert (=> d!205323 (= res!251545 (= (content!1017 lt!247712) ((_ map or) (content!1017 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581))))) (content!1017 (_2!3618 (get!2193 lt!247581))))))))

(assert (=> d!205323 (= lt!247712 e!352972)))

(declare-fun c!109229 () Bool)

(assert (=> d!205323 (= c!109229 ((_ is Nil!5737) (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581))))))))

(assert (=> d!205323 (= (++!1607 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247581)))) (_2!3618 (get!2193 lt!247581))) lt!247712)))

(assert (= (and d!205323 c!109229) b!583934))

(assert (= (and d!205323 (not c!109229)) b!583935))

(assert (= (and d!205323 res!251545) b!583936))

(assert (= (and b!583936 res!251544) b!583937))

(declare-fun m!843581 () Bool)

(assert (=> b!583935 m!843581))

(declare-fun m!843583 () Bool)

(assert (=> b!583936 m!843583))

(assert (=> b!583936 m!842857))

(declare-fun m!843585 () Bool)

(assert (=> b!583936 m!843585))

(assert (=> b!583936 m!842865))

(declare-fun m!843587 () Bool)

(assert (=> d!205323 m!843587))

(assert (=> d!205323 m!842857))

(declare-fun m!843589 () Bool)

(assert (=> d!205323 m!843589))

(declare-fun m!843591 () Bool)

(assert (=> d!205323 m!843591))

(assert (=> b!583345 d!205323))

(assert (=> b!583345 d!205095))

(assert (=> b!583345 d!205097))

(assert (=> b!583345 d!205079))

(declare-fun d!205325 () Bool)

(declare-fun lt!247713 () Int)

(assert (=> d!205325 (>= lt!247713 0)))

(declare-fun e!352974 () Int)

(assert (=> d!205325 (= lt!247713 e!352974)))

(declare-fun c!109230 () Bool)

(assert (=> d!205325 (= c!109230 ((_ is Nil!5737) (originalCharacters!1158 token!491)))))

(assert (=> d!205325 (= (size!4561 (originalCharacters!1158 token!491)) lt!247713)))

(declare-fun b!583938 () Bool)

(assert (=> b!583938 (= e!352974 0)))

(declare-fun b!583939 () Bool)

(assert (=> b!583939 (= e!352974 (+ 1 (size!4561 (t!78260 (originalCharacters!1158 token!491)))))))

(assert (= (and d!205325 c!109230) b!583938))

(assert (= (and d!205325 (not c!109230)) b!583939))

(declare-fun m!843593 () Bool)

(assert (=> b!583939 m!843593))

(assert (=> b!583243 d!205325))

(declare-fun d!205327 () Bool)

(declare-fun charsToInt!0 (List!5746) (_ BitVec 32))

(assert (=> d!205327 (= (inv!16 (value!36758 token!491)) (= (charsToInt!0 (text!8448 (value!36758 token!491))) (value!36750 (value!36758 token!491))))))

(declare-fun bs!69933 () Bool)

(assert (= bs!69933 d!205327))

(declare-fun m!843595 () Bool)

(assert (=> bs!69933 m!843595))

(assert (=> b!583205 d!205327))

(declare-fun b!583940 () Bool)

(declare-fun e!352976 () Option!1470)

(declare-fun lt!247717 () Option!1470)

(declare-fun lt!247718 () Option!1470)

(assert (=> b!583940 (= e!352976 (ite (and ((_ is None!1469) lt!247717) ((_ is None!1469) lt!247718)) None!1469 (ite ((_ is None!1469) lt!247718) lt!247717 (ite ((_ is None!1469) lt!247717) lt!247718 (ite (>= (size!4560 (_1!3618 (v!16338 lt!247717))) (size!4560 (_1!3618 (v!16338 lt!247718)))) lt!247717 lt!247718)))))))

(declare-fun call!40177 () Option!1470)

(assert (=> b!583940 (= lt!247717 call!40177)))

(assert (=> b!583940 (= lt!247718 (maxPrefix!703 thiss!22590 (t!78261 (t!78261 rules!3103)) lt!247503))))

(declare-fun b!583941 () Bool)

(declare-fun res!251546 () Bool)

(declare-fun e!352975 () Bool)

(assert (=> b!583941 (=> (not res!251546) (not e!352975))))

(declare-fun lt!247716 () Option!1470)

(assert (=> b!583941 (= res!251546 (= (value!36758 (_1!3618 (get!2193 lt!247716))) (apply!1378 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247716)))) (seqFromList!1301 (originalCharacters!1158 (_1!3618 (get!2193 lt!247716)))))))))

(declare-fun b!583942 () Bool)

(declare-fun res!251552 () Bool)

(assert (=> b!583942 (=> (not res!251552) (not e!352975))))

(assert (=> b!583942 (= res!251552 (= (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247716)))) (originalCharacters!1158 (_1!3618 (get!2193 lt!247716)))))))

(declare-fun b!583943 () Bool)

(assert (=> b!583943 (= e!352975 (contains!1347 (t!78261 rules!3103) (rule!1877 (_1!3618 (get!2193 lt!247716)))))))

(declare-fun b!583944 () Bool)

(assert (=> b!583944 (= e!352976 call!40177)))

(declare-fun d!205329 () Bool)

(declare-fun e!352977 () Bool)

(assert (=> d!205329 e!352977))

(declare-fun res!251550 () Bool)

(assert (=> d!205329 (=> res!251550 e!352977)))

(assert (=> d!205329 (= res!251550 (isEmpty!4144 lt!247716))))

(assert (=> d!205329 (= lt!247716 e!352976)))

(declare-fun c!109231 () Bool)

(assert (=> d!205329 (= c!109231 (and ((_ is Cons!5738) (t!78261 rules!3103)) ((_ is Nil!5738) (t!78261 (t!78261 rules!3103)))))))

(declare-fun lt!247715 () Unit!10427)

(declare-fun lt!247714 () Unit!10427)

(assert (=> d!205329 (= lt!247715 lt!247714)))

(assert (=> d!205329 (isPrefix!747 lt!247503 lt!247503)))

(assert (=> d!205329 (= lt!247714 (lemmaIsPrefixRefl!485 lt!247503 lt!247503))))

(assert (=> d!205329 (rulesValidInductive!402 thiss!22590 (t!78261 rules!3103))))

(assert (=> d!205329 (= (maxPrefix!703 thiss!22590 (t!78261 rules!3103) lt!247503) lt!247716)))

(declare-fun b!583945 () Bool)

(declare-fun res!251549 () Bool)

(assert (=> b!583945 (=> (not res!251549) (not e!352975))))

(assert (=> b!583945 (= res!251549 (matchR!594 (regex!1119 (rule!1877 (_1!3618 (get!2193 lt!247716)))) (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247716))))))))

(declare-fun b!583946 () Bool)

(declare-fun res!251548 () Bool)

(assert (=> b!583946 (=> (not res!251548) (not e!352975))))

(assert (=> b!583946 (= res!251548 (= (++!1607 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247716)))) (_2!3618 (get!2193 lt!247716))) lt!247503))))

(declare-fun b!583947 () Bool)

(assert (=> b!583947 (= e!352977 e!352975)))

(declare-fun res!251547 () Bool)

(assert (=> b!583947 (=> (not res!251547) (not e!352975))))

(assert (=> b!583947 (= res!251547 (isDefined!1281 lt!247716))))

(declare-fun bm!40172 () Bool)

(assert (=> bm!40172 (= call!40177 (maxPrefixOneRule!398 thiss!22590 (h!11139 (t!78261 rules!3103)) lt!247503))))

(declare-fun b!583948 () Bool)

(declare-fun res!251551 () Bool)

(assert (=> b!583948 (=> (not res!251551) (not e!352975))))

(assert (=> b!583948 (= res!251551 (< (size!4561 (_2!3618 (get!2193 lt!247716))) (size!4561 lt!247503)))))

(assert (= (and d!205329 c!109231) b!583944))

(assert (= (and d!205329 (not c!109231)) b!583940))

(assert (= (or b!583944 b!583940) bm!40172))

(assert (= (and d!205329 (not res!251550)) b!583947))

(assert (= (and b!583947 res!251547) b!583942))

(assert (= (and b!583942 res!251552) b!583948))

(assert (= (and b!583948 res!251551) b!583946))

(assert (= (and b!583946 res!251548) b!583941))

(assert (= (and b!583941 res!251546) b!583945))

(assert (= (and b!583945 res!251549) b!583943))

(declare-fun m!843597 () Bool)

(assert (=> b!583940 m!843597))

(declare-fun m!843599 () Bool)

(assert (=> b!583947 m!843599))

(declare-fun m!843601 () Bool)

(assert (=> b!583943 m!843601))

(declare-fun m!843603 () Bool)

(assert (=> b!583943 m!843603))

(declare-fun m!843605 () Bool)

(assert (=> d!205329 m!843605))

(assert (=> d!205329 m!842847))

(assert (=> d!205329 m!842849))

(assert (=> d!205329 m!843019))

(assert (=> b!583941 m!843601))

(declare-fun m!843607 () Bool)

(assert (=> b!583941 m!843607))

(assert (=> b!583941 m!843607))

(declare-fun m!843609 () Bool)

(assert (=> b!583941 m!843609))

(assert (=> b!583945 m!843601))

(declare-fun m!843611 () Bool)

(assert (=> b!583945 m!843611))

(assert (=> b!583945 m!843611))

(declare-fun m!843613 () Bool)

(assert (=> b!583945 m!843613))

(assert (=> b!583945 m!843613))

(declare-fun m!843615 () Bool)

(assert (=> b!583945 m!843615))

(assert (=> b!583946 m!843601))

(assert (=> b!583946 m!843611))

(assert (=> b!583946 m!843611))

(assert (=> b!583946 m!843613))

(assert (=> b!583946 m!843613))

(declare-fun m!843617 () Bool)

(assert (=> b!583946 m!843617))

(declare-fun m!843619 () Bool)

(assert (=> bm!40172 m!843619))

(assert (=> b!583948 m!843601))

(declare-fun m!843621 () Bool)

(assert (=> b!583948 m!843621))

(assert (=> b!583948 m!842867))

(assert (=> b!583942 m!843601))

(assert (=> b!583942 m!843611))

(assert (=> b!583942 m!843611))

(assert (=> b!583942 m!843613))

(assert (=> b!583339 d!205329))

(declare-fun d!205331 () Bool)

(assert (=> d!205331 (= (list!2386 lt!247572) (list!2388 (c!109078 lt!247572)))))

(declare-fun bs!69934 () Bool)

(assert (= bs!69934 d!205331))

(declare-fun m!843623 () Bool)

(assert (=> bs!69934 m!843623))

(assert (=> d!205015 d!205331))

(declare-fun b!583949 () Bool)

(declare-fun res!251558 () Bool)

(declare-fun e!352979 () Bool)

(assert (=> b!583949 (=> (not res!251558) (not e!352979))))

(declare-fun lt!247720 () Option!1470)

(assert (=> b!583949 (= res!251558 (= (++!1607 (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247720)))) (_2!3618 (get!2193 lt!247720))) input!2705))))

(declare-fun b!583950 () Bool)

(declare-fun res!251554 () Bool)

(assert (=> b!583950 (=> (not res!251554) (not e!352979))))

(assert (=> b!583950 (= res!251554 (= (rule!1877 (_1!3618 (get!2193 lt!247720))) (h!11139 rules!3103)))))

(declare-fun b!583951 () Bool)

(declare-fun res!251559 () Bool)

(assert (=> b!583951 (=> (not res!251559) (not e!352979))))

(assert (=> b!583951 (= res!251559 (< (size!4561 (_2!3618 (get!2193 lt!247720))) (size!4561 input!2705)))))

(declare-fun d!205333 () Bool)

(declare-fun e!352980 () Bool)

(assert (=> d!205333 e!352980))

(declare-fun res!251553 () Bool)

(assert (=> d!205333 (=> res!251553 e!352980)))

(assert (=> d!205333 (= res!251553 (isEmpty!4144 lt!247720))))

(declare-fun e!352978 () Option!1470)

(assert (=> d!205333 (= lt!247720 e!352978)))

(declare-fun c!109232 () Bool)

(declare-fun lt!247721 () tuple2!6712)

(assert (=> d!205333 (= c!109232 (isEmpty!4142 (_1!3620 lt!247721)))))

(assert (=> d!205333 (= lt!247721 (findLongestMatch!158 (regex!1119 (h!11139 rules!3103)) input!2705))))

(assert (=> d!205333 (ruleValid!323 thiss!22590 (h!11139 rules!3103))))

(assert (=> d!205333 (= (maxPrefixOneRule!398 thiss!22590 (h!11139 rules!3103) input!2705) lt!247720)))

(declare-fun b!583952 () Bool)

(declare-fun res!251555 () Bool)

(assert (=> b!583952 (=> (not res!251555) (not e!352979))))

(assert (=> b!583952 (= res!251555 (= (value!36758 (_1!3618 (get!2193 lt!247720))) (apply!1378 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247720)))) (seqFromList!1301 (originalCharacters!1158 (_1!3618 (get!2193 lt!247720)))))))))

(declare-fun b!583953 () Bool)

(assert (=> b!583953 (= e!352978 (Some!1469 (tuple2!6709 (Token!1975 (apply!1378 (transformation!1119 (h!11139 rules!3103)) (seqFromList!1301 (_1!3620 lt!247721))) (h!11139 rules!3103) (size!4563 (seqFromList!1301 (_1!3620 lt!247721))) (_1!3620 lt!247721)) (_2!3620 lt!247721))))))

(declare-fun lt!247719 () Unit!10427)

(assert (=> b!583953 (= lt!247719 (longestMatchIsAcceptedByMatchOrIsEmpty!163 (regex!1119 (h!11139 rules!3103)) input!2705))))

(declare-fun res!251556 () Bool)

(assert (=> b!583953 (= res!251556 (isEmpty!4142 (_1!3620 (findLongestMatchInner!179 (regex!1119 (h!11139 rules!3103)) Nil!5737 (size!4561 Nil!5737) input!2705 input!2705 (size!4561 input!2705)))))))

(declare-fun e!352981 () Bool)

(assert (=> b!583953 (=> res!251556 e!352981)))

(assert (=> b!583953 e!352981))

(declare-fun lt!247722 () Unit!10427)

(assert (=> b!583953 (= lt!247722 lt!247719)))

(declare-fun lt!247723 () Unit!10427)

(assert (=> b!583953 (= lt!247723 (lemmaSemiInverse!216 (transformation!1119 (h!11139 rules!3103)) (seqFromList!1301 (_1!3620 lt!247721))))))

(declare-fun b!583954 () Bool)

(assert (=> b!583954 (= e!352981 (matchR!594 (regex!1119 (h!11139 rules!3103)) (_1!3620 (findLongestMatchInner!179 (regex!1119 (h!11139 rules!3103)) Nil!5737 (size!4561 Nil!5737) input!2705 input!2705 (size!4561 input!2705)))))))

(declare-fun b!583955 () Bool)

(assert (=> b!583955 (= e!352980 e!352979)))

(declare-fun res!251557 () Bool)

(assert (=> b!583955 (=> (not res!251557) (not e!352979))))

(assert (=> b!583955 (= res!251557 (matchR!594 (regex!1119 (h!11139 rules!3103)) (list!2386 (charsOf!748 (_1!3618 (get!2193 lt!247720))))))))

(declare-fun b!583956 () Bool)

(assert (=> b!583956 (= e!352979 (= (size!4560 (_1!3618 (get!2193 lt!247720))) (size!4561 (originalCharacters!1158 (_1!3618 (get!2193 lt!247720))))))))

(declare-fun b!583957 () Bool)

(assert (=> b!583957 (= e!352978 None!1469)))

(assert (= (and d!205333 c!109232) b!583957))

(assert (= (and d!205333 (not c!109232)) b!583953))

(assert (= (and b!583953 (not res!251556)) b!583954))

(assert (= (and d!205333 (not res!251553)) b!583955))

(assert (= (and b!583955 res!251557) b!583949))

(assert (= (and b!583949 res!251558) b!583951))

(assert (= (and b!583951 res!251559) b!583950))

(assert (= (and b!583950 res!251554) b!583952))

(assert (= (and b!583952 res!251555) b!583956))

(declare-fun m!843625 () Bool)

(assert (=> b!583953 m!843625))

(declare-fun m!843627 () Bool)

(assert (=> b!583953 m!843627))

(declare-fun m!843629 () Bool)

(assert (=> b!583953 m!843629))

(assert (=> b!583953 m!843625))

(declare-fun m!843631 () Bool)

(assert (=> b!583953 m!843631))

(declare-fun m!843633 () Bool)

(assert (=> b!583953 m!843633))

(assert (=> b!583953 m!843625))

(assert (=> b!583953 m!842533))

(assert (=> b!583953 m!843549))

(assert (=> b!583953 m!842533))

(declare-fun m!843635 () Bool)

(assert (=> b!583953 m!843635))

(assert (=> b!583953 m!843549))

(assert (=> b!583953 m!843625))

(declare-fun m!843637 () Bool)

(assert (=> b!583953 m!843637))

(assert (=> b!583954 m!843549))

(assert (=> b!583954 m!842533))

(assert (=> b!583954 m!843549))

(assert (=> b!583954 m!842533))

(assert (=> b!583954 m!843635))

(declare-fun m!843639 () Bool)

(assert (=> b!583954 m!843639))

(declare-fun m!843641 () Bool)

(assert (=> d!205333 m!843641))

(declare-fun m!843643 () Bool)

(assert (=> d!205333 m!843643))

(declare-fun m!843645 () Bool)

(assert (=> d!205333 m!843645))

(assert (=> d!205333 m!843413))

(declare-fun m!843647 () Bool)

(assert (=> b!583951 m!843647))

(declare-fun m!843649 () Bool)

(assert (=> b!583951 m!843649))

(assert (=> b!583951 m!842533))

(assert (=> b!583956 m!843647))

(declare-fun m!843651 () Bool)

(assert (=> b!583956 m!843651))

(assert (=> b!583950 m!843647))

(assert (=> b!583949 m!843647))

(declare-fun m!843653 () Bool)

(assert (=> b!583949 m!843653))

(assert (=> b!583949 m!843653))

(declare-fun m!843655 () Bool)

(assert (=> b!583949 m!843655))

(assert (=> b!583949 m!843655))

(declare-fun m!843657 () Bool)

(assert (=> b!583949 m!843657))

(assert (=> b!583955 m!843647))

(assert (=> b!583955 m!843653))

(assert (=> b!583955 m!843653))

(assert (=> b!583955 m!843655))

(assert (=> b!583955 m!843655))

(declare-fun m!843659 () Bool)

(assert (=> b!583955 m!843659))

(assert (=> b!583952 m!843647))

(declare-fun m!843661 () Bool)

(assert (=> b!583952 m!843661))

(assert (=> b!583952 m!843661))

(declare-fun m!843663 () Bool)

(assert (=> b!583952 m!843663))

(assert (=> bm!40159 d!205333))

(assert (=> b!583341 d!205095))

(assert (=> b!583341 d!205097))

(assert (=> b!583341 d!205079))

(declare-fun d!205335 () Bool)

(declare-fun charsToBigInt!0 (List!5746 Int) Int)

(assert (=> d!205335 (= (inv!15 (value!36758 token!491)) (= (charsToBigInt!0 (text!8450 (value!36758 token!491)) 0) (value!36754 (value!36758 token!491))))))

(declare-fun bs!69935 () Bool)

(assert (= bs!69935 d!205335))

(declare-fun m!843665 () Bool)

(assert (=> bs!69935 m!843665))

(assert (=> b!583207 d!205335))

(declare-fun bs!69936 () Bool)

(declare-fun d!205337 () Bool)

(assert (= bs!69936 (and d!205337 d!205105)))

(declare-fun lambda!15838 () Int)

(assert (=> bs!69936 (= lambda!15838 lambda!15827)))

(assert (=> d!205337 true))

(declare-fun lt!247726 () Bool)

(assert (=> d!205337 (= lt!247726 (rulesValidInductive!402 thiss!22590 rules!3103))))

(assert (=> d!205337 (= lt!247726 (forall!1540 rules!3103 lambda!15838))))

(assert (=> d!205337 (= (rulesValid!397 thiss!22590 rules!3103) lt!247726)))

(declare-fun bs!69937 () Bool)

(assert (= bs!69937 d!205337))

(assert (=> bs!69937 m!842793))

(declare-fun m!843667 () Bool)

(assert (=> bs!69937 m!843667))

(assert (=> d!204967 d!205337))

(declare-fun b!583958 () Bool)

(declare-fun e!352982 () Bool)

(declare-fun tp!182157 () Bool)

(assert (=> b!583958 (= e!352982 (and tp_is_empty!3261 tp!182157))))

(assert (=> b!583368 (= tp!182057 e!352982)))

(assert (= (and b!583368 ((_ is Cons!5737) (t!78260 (t!78260 input!2705)))) b!583958))

(declare-fun b!583960 () Bool)

(declare-fun e!352983 () Bool)

(declare-fun tp!182161 () Bool)

(declare-fun tp!182159 () Bool)

(assert (=> b!583960 (= e!352983 (and tp!182161 tp!182159))))

(declare-fun b!583961 () Bool)

(declare-fun tp!182160 () Bool)

(assert (=> b!583961 (= e!352983 tp!182160)))

(declare-fun b!583959 () Bool)

(assert (=> b!583959 (= e!352983 tp_is_empty!3261)))

(declare-fun b!583962 () Bool)

(declare-fun tp!182158 () Bool)

(declare-fun tp!182162 () Bool)

(assert (=> b!583962 (= e!352983 (and tp!182158 tp!182162))))

(assert (=> b!583385 (= tp!182077 e!352983)))

(assert (= (and b!583385 ((_ is ElementMatch!1453) (regOne!3418 (regex!1119 (h!11139 rules!3103))))) b!583959))

(assert (= (and b!583385 ((_ is Concat!2596) (regOne!3418 (regex!1119 (h!11139 rules!3103))))) b!583960))

(assert (= (and b!583385 ((_ is Star!1453) (regOne!3418 (regex!1119 (h!11139 rules!3103))))) b!583961))

(assert (= (and b!583385 ((_ is Union!1453) (regOne!3418 (regex!1119 (h!11139 rules!3103))))) b!583962))

(declare-fun b!583964 () Bool)

(declare-fun e!352984 () Bool)

(declare-fun tp!182166 () Bool)

(declare-fun tp!182164 () Bool)

(assert (=> b!583964 (= e!352984 (and tp!182166 tp!182164))))

(declare-fun b!583965 () Bool)

(declare-fun tp!182165 () Bool)

(assert (=> b!583965 (= e!352984 tp!182165)))

(declare-fun b!583963 () Bool)

(assert (=> b!583963 (= e!352984 tp_is_empty!3261)))

(declare-fun b!583966 () Bool)

(declare-fun tp!182163 () Bool)

(declare-fun tp!182167 () Bool)

(assert (=> b!583966 (= e!352984 (and tp!182163 tp!182167))))

(assert (=> b!583385 (= tp!182075 e!352984)))

(assert (= (and b!583385 ((_ is ElementMatch!1453) (regTwo!3418 (regex!1119 (h!11139 rules!3103))))) b!583963))

(assert (= (and b!583385 ((_ is Concat!2596) (regTwo!3418 (regex!1119 (h!11139 rules!3103))))) b!583964))

(assert (= (and b!583385 ((_ is Star!1453) (regTwo!3418 (regex!1119 (h!11139 rules!3103))))) b!583965))

(assert (= (and b!583385 ((_ is Union!1453) (regTwo!3418 (regex!1119 (h!11139 rules!3103))))) b!583966))

(declare-fun b!583968 () Bool)

(declare-fun e!352985 () Bool)

(declare-fun tp!182171 () Bool)

(declare-fun tp!182169 () Bool)

(assert (=> b!583968 (= e!352985 (and tp!182171 tp!182169))))

(declare-fun b!583969 () Bool)

(declare-fun tp!182170 () Bool)

(assert (=> b!583969 (= e!352985 tp!182170)))

(declare-fun b!583967 () Bool)

(assert (=> b!583967 (= e!352985 tp_is_empty!3261)))

(declare-fun b!583970 () Bool)

(declare-fun tp!182168 () Bool)

(declare-fun tp!182172 () Bool)

(assert (=> b!583970 (= e!352985 (and tp!182168 tp!182172))))

(assert (=> b!583382 (= tp!182068 e!352985)))

(assert (= (and b!583382 ((_ is ElementMatch!1453) (regOne!3419 (regex!1119 (rule!1877 token!491))))) b!583967))

(assert (= (and b!583382 ((_ is Concat!2596) (regOne!3419 (regex!1119 (rule!1877 token!491))))) b!583968))

(assert (= (and b!583382 ((_ is Star!1453) (regOne!3419 (regex!1119 (rule!1877 token!491))))) b!583969))

(assert (= (and b!583382 ((_ is Union!1453) (regOne!3419 (regex!1119 (rule!1877 token!491))))) b!583970))

(declare-fun b!583972 () Bool)

(declare-fun e!352986 () Bool)

(declare-fun tp!182176 () Bool)

(declare-fun tp!182174 () Bool)

(assert (=> b!583972 (= e!352986 (and tp!182176 tp!182174))))

(declare-fun b!583973 () Bool)

(declare-fun tp!182175 () Bool)

(assert (=> b!583973 (= e!352986 tp!182175)))

(declare-fun b!583971 () Bool)

(assert (=> b!583971 (= e!352986 tp_is_empty!3261)))

(declare-fun b!583974 () Bool)

(declare-fun tp!182173 () Bool)

(declare-fun tp!182177 () Bool)

(assert (=> b!583974 (= e!352986 (and tp!182173 tp!182177))))

(assert (=> b!583382 (= tp!182072 e!352986)))

(assert (= (and b!583382 ((_ is ElementMatch!1453) (regTwo!3419 (regex!1119 (rule!1877 token!491))))) b!583971))

(assert (= (and b!583382 ((_ is Concat!2596) (regTwo!3419 (regex!1119 (rule!1877 token!491))))) b!583972))

(assert (= (and b!583382 ((_ is Star!1453) (regTwo!3419 (regex!1119 (rule!1877 token!491))))) b!583973))

(assert (= (and b!583382 ((_ is Union!1453) (regTwo!3419 (regex!1119 (rule!1877 token!491))))) b!583974))

(declare-fun b!583976 () Bool)

(declare-fun e!352987 () Bool)

(declare-fun tp!182181 () Bool)

(declare-fun tp!182179 () Bool)

(assert (=> b!583976 (= e!352987 (and tp!182181 tp!182179))))

(declare-fun b!583977 () Bool)

(declare-fun tp!182180 () Bool)

(assert (=> b!583977 (= e!352987 tp!182180)))

(declare-fun b!583975 () Bool)

(assert (=> b!583975 (= e!352987 tp_is_empty!3261)))

(declare-fun b!583978 () Bool)

(declare-fun tp!182178 () Bool)

(declare-fun tp!182182 () Bool)

(assert (=> b!583978 (= e!352987 (and tp!182178 tp!182182))))

(assert (=> b!583380 (= tp!182071 e!352987)))

(assert (= (and b!583380 ((_ is ElementMatch!1453) (regOne!3418 (regex!1119 (rule!1877 token!491))))) b!583975))

(assert (= (and b!583380 ((_ is Concat!2596) (regOne!3418 (regex!1119 (rule!1877 token!491))))) b!583976))

(assert (= (and b!583380 ((_ is Star!1453) (regOne!3418 (regex!1119 (rule!1877 token!491))))) b!583977))

(assert (= (and b!583380 ((_ is Union!1453) (regOne!3418 (regex!1119 (rule!1877 token!491))))) b!583978))

(declare-fun b!583980 () Bool)

(declare-fun e!352988 () Bool)

(declare-fun tp!182186 () Bool)

(declare-fun tp!182184 () Bool)

(assert (=> b!583980 (= e!352988 (and tp!182186 tp!182184))))

(declare-fun b!583981 () Bool)

(declare-fun tp!182185 () Bool)

(assert (=> b!583981 (= e!352988 tp!182185)))

(declare-fun b!583979 () Bool)

(assert (=> b!583979 (= e!352988 tp_is_empty!3261)))

(declare-fun b!583982 () Bool)

(declare-fun tp!182183 () Bool)

(declare-fun tp!182187 () Bool)

(assert (=> b!583982 (= e!352988 (and tp!182183 tp!182187))))

(assert (=> b!583380 (= tp!182069 e!352988)))

(assert (= (and b!583380 ((_ is ElementMatch!1453) (regTwo!3418 (regex!1119 (rule!1877 token!491))))) b!583979))

(assert (= (and b!583380 ((_ is Concat!2596) (regTwo!3418 (regex!1119 (rule!1877 token!491))))) b!583980))

(assert (= (and b!583380 ((_ is Star!1453) (regTwo!3418 (regex!1119 (rule!1877 token!491))))) b!583981))

(assert (= (and b!583380 ((_ is Union!1453) (regTwo!3418 (regex!1119 (rule!1877 token!491))))) b!583982))

(declare-fun b!583984 () Bool)

(declare-fun e!352989 () Bool)

(declare-fun tp!182191 () Bool)

(declare-fun tp!182189 () Bool)

(assert (=> b!583984 (= e!352989 (and tp!182191 tp!182189))))

(declare-fun b!583985 () Bool)

(declare-fun tp!182190 () Bool)

(assert (=> b!583985 (= e!352989 tp!182190)))

(declare-fun b!583983 () Bool)

(assert (=> b!583983 (= e!352989 tp_is_empty!3261)))

(declare-fun b!583986 () Bool)

(declare-fun tp!182188 () Bool)

(declare-fun tp!182192 () Bool)

(assert (=> b!583986 (= e!352989 (and tp!182188 tp!182192))))

(assert (=> b!583381 (= tp!182070 e!352989)))

(assert (= (and b!583381 ((_ is ElementMatch!1453) (reg!1782 (regex!1119 (rule!1877 token!491))))) b!583983))

(assert (= (and b!583381 ((_ is Concat!2596) (reg!1782 (regex!1119 (rule!1877 token!491))))) b!583984))

(assert (= (and b!583381 ((_ is Star!1453) (reg!1782 (regex!1119 (rule!1877 token!491))))) b!583985))

(assert (= (and b!583381 ((_ is Union!1453) (reg!1782 (regex!1119 (rule!1877 token!491))))) b!583986))

(declare-fun b!583988 () Bool)

(declare-fun e!352990 () Bool)

(declare-fun tp!182196 () Bool)

(declare-fun tp!182194 () Bool)

(assert (=> b!583988 (= e!352990 (and tp!182196 tp!182194))))

(declare-fun b!583989 () Bool)

(declare-fun tp!182195 () Bool)

(assert (=> b!583989 (= e!352990 tp!182195)))

(declare-fun b!583987 () Bool)

(assert (=> b!583987 (= e!352990 tp_is_empty!3261)))

(declare-fun b!583990 () Bool)

(declare-fun tp!182193 () Bool)

(declare-fun tp!182197 () Bool)

(assert (=> b!583990 (= e!352990 (and tp!182193 tp!182197))))

(assert (=> b!583387 (= tp!182074 e!352990)))

(assert (= (and b!583387 ((_ is ElementMatch!1453) (regOne!3419 (regex!1119 (h!11139 rules!3103))))) b!583987))

(assert (= (and b!583387 ((_ is Concat!2596) (regOne!3419 (regex!1119 (h!11139 rules!3103))))) b!583988))

(assert (= (and b!583387 ((_ is Star!1453) (regOne!3419 (regex!1119 (h!11139 rules!3103))))) b!583989))

(assert (= (and b!583387 ((_ is Union!1453) (regOne!3419 (regex!1119 (h!11139 rules!3103))))) b!583990))

(declare-fun b!583992 () Bool)

(declare-fun e!352991 () Bool)

(declare-fun tp!182201 () Bool)

(declare-fun tp!182199 () Bool)

(assert (=> b!583992 (= e!352991 (and tp!182201 tp!182199))))

(declare-fun b!583993 () Bool)

(declare-fun tp!182200 () Bool)

(assert (=> b!583993 (= e!352991 tp!182200)))

(declare-fun b!583991 () Bool)

(assert (=> b!583991 (= e!352991 tp_is_empty!3261)))

(declare-fun b!583994 () Bool)

(declare-fun tp!182198 () Bool)

(declare-fun tp!182202 () Bool)

(assert (=> b!583994 (= e!352991 (and tp!182198 tp!182202))))

(assert (=> b!583387 (= tp!182078 e!352991)))

(assert (= (and b!583387 ((_ is ElementMatch!1453) (regTwo!3419 (regex!1119 (h!11139 rules!3103))))) b!583991))

(assert (= (and b!583387 ((_ is Concat!2596) (regTwo!3419 (regex!1119 (h!11139 rules!3103))))) b!583992))

(assert (= (and b!583387 ((_ is Star!1453) (regTwo!3419 (regex!1119 (h!11139 rules!3103))))) b!583993))

(assert (= (and b!583387 ((_ is Union!1453) (regTwo!3419 (regex!1119 (h!11139 rules!3103))))) b!583994))

(declare-fun b!583996 () Bool)

(declare-fun e!352992 () Bool)

(declare-fun tp!182206 () Bool)

(declare-fun tp!182204 () Bool)

(assert (=> b!583996 (= e!352992 (and tp!182206 tp!182204))))

(declare-fun b!583997 () Bool)

(declare-fun tp!182205 () Bool)

(assert (=> b!583997 (= e!352992 tp!182205)))

(declare-fun b!583995 () Bool)

(assert (=> b!583995 (= e!352992 tp_is_empty!3261)))

(declare-fun b!583998 () Bool)

(declare-fun tp!182203 () Bool)

(declare-fun tp!182207 () Bool)

(assert (=> b!583998 (= e!352992 (and tp!182203 tp!182207))))

(assert (=> b!583361 (= tp!182052 e!352992)))

(assert (= (and b!583361 ((_ is ElementMatch!1453) (regex!1119 (h!11139 (t!78261 rules!3103))))) b!583995))

(assert (= (and b!583361 ((_ is Concat!2596) (regex!1119 (h!11139 (t!78261 rules!3103))))) b!583996))

(assert (= (and b!583361 ((_ is Star!1453) (regex!1119 (h!11139 (t!78261 rules!3103))))) b!583997))

(assert (= (and b!583361 ((_ is Union!1453) (regex!1119 (h!11139 (t!78261 rules!3103))))) b!583998))

(declare-fun b!584007 () Bool)

(declare-fun e!352998 () Bool)

(declare-fun tp!182215 () Bool)

(declare-fun tp!182214 () Bool)

(assert (=> b!584007 (= e!352998 (and (inv!7233 (left!4676 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491))))) tp!182214 (inv!7233 (right!5006 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491))))) tp!182215))))

(declare-fun b!584009 () Bool)

(declare-fun e!352997 () Bool)

(declare-fun tp!182216 () Bool)

(assert (=> b!584009 (= e!352997 tp!182216)))

(declare-fun b!584008 () Bool)

(declare-fun inv!7240 (IArray!3673) Bool)

(assert (=> b!584008 (= e!352998 (and (inv!7240 (xs!4473 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491))))) e!352997))))

(assert (=> b!583250 (= tp!182002 (and (inv!7233 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491)))) e!352998))))

(assert (= (and b!583250 ((_ is Node!1836) (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491))))) b!584007))

(assert (= b!584008 b!584009))

(assert (= (and b!583250 ((_ is Leaf!2903) (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 token!491))) (value!36758 token!491))))) b!584008))

(declare-fun m!843669 () Bool)

(assert (=> b!584007 m!843669))

(declare-fun m!843671 () Bool)

(assert (=> b!584007 m!843671))

(declare-fun m!843673 () Bool)

(assert (=> b!584008 m!843673))

(assert (=> b!583250 m!842729))

(declare-fun b!584010 () Bool)

(declare-fun e!352999 () Bool)

(declare-fun tp!182217 () Bool)

(assert (=> b!584010 (= e!352999 (and tp_is_empty!3261 tp!182217))))

(assert (=> b!583383 (= tp!182073 e!352999)))

(assert (= (and b!583383 ((_ is Cons!5737) (t!78260 (t!78260 suffix!1342)))) b!584010))

(declare-fun b!584012 () Bool)

(declare-fun e!353000 () Bool)

(declare-fun tp!182221 () Bool)

(declare-fun tp!182219 () Bool)

(assert (=> b!584012 (= e!353000 (and tp!182221 tp!182219))))

(declare-fun b!584013 () Bool)

(declare-fun tp!182220 () Bool)

(assert (=> b!584013 (= e!353000 tp!182220)))

(declare-fun b!584011 () Bool)

(assert (=> b!584011 (= e!353000 tp_is_empty!3261)))

(declare-fun b!584014 () Bool)

(declare-fun tp!182218 () Bool)

(declare-fun tp!182222 () Bool)

(assert (=> b!584014 (= e!353000 (and tp!182218 tp!182222))))

(assert (=> b!583386 (= tp!182076 e!353000)))

(assert (= (and b!583386 ((_ is ElementMatch!1453) (reg!1782 (regex!1119 (h!11139 rules!3103))))) b!584011))

(assert (= (and b!583386 ((_ is Concat!2596) (reg!1782 (regex!1119 (h!11139 rules!3103))))) b!584012))

(assert (= (and b!583386 ((_ is Star!1453) (reg!1782 (regex!1119 (h!11139 rules!3103))))) b!584013))

(assert (= (and b!583386 ((_ is Union!1453) (reg!1782 (regex!1119 (h!11139 rules!3103))))) b!584014))

(declare-fun b!584017 () Bool)

(declare-fun b_free!16273 () Bool)

(declare-fun b_next!16289 () Bool)

(assert (=> b!584017 (= b_free!16273 (not b_next!16289))))

(declare-fun t!78351 () Bool)

(declare-fun tb!51147 () Bool)

(assert (=> (and b!584017 (= (toValue!1986 (transformation!1119 (h!11139 (t!78261 (t!78261 rules!3103))))) (toValue!1986 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247581)))))) t!78351) tb!51147))

(declare-fun result!57266 () Bool)

(assert (= result!57266 result!57250))

(assert (=> d!205279 t!78351))

(declare-fun t!78353 () Bool)

(declare-fun tb!51149 () Bool)

(assert (=> (and b!584017 (= (toValue!1986 (transformation!1119 (h!11139 (t!78261 (t!78261 rules!3103))))) (toValue!1986 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247567)))))) t!78353) tb!51149))

(declare-fun result!57268 () Bool)

(assert (= result!57268 result!57258))

(assert (=> d!205309 t!78353))

(declare-fun b_and!57527 () Bool)

(declare-fun tp!182224 () Bool)

(assert (=> b!584017 (= tp!182224 (and (=> t!78351 result!57266) (=> t!78353 result!57268) b_and!57527))))

(declare-fun b_free!16275 () Bool)

(declare-fun b_next!16291 () Bool)

(assert (=> b!584017 (= b_free!16275 (not b_next!16291))))

(declare-fun tb!51151 () Bool)

(declare-fun t!78355 () Bool)

(assert (=> (and b!584017 (= (toChars!1845 (transformation!1119 (h!11139 (t!78261 (t!78261 rules!3103))))) (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247581)))))) t!78355) tb!51151))

(declare-fun result!57270 () Bool)

(assert (= result!57270 result!57204))

(assert (=> d!205097 t!78355))

(declare-fun tb!51153 () Bool)

(declare-fun t!78357 () Bool)

(assert (=> (and b!584017 (= (toChars!1845 (transformation!1119 (h!11139 (t!78261 (t!78261 rules!3103))))) (toChars!1845 (transformation!1119 (rule!1877 token!491)))) t!78357) tb!51153))

(declare-fun result!57272 () Bool)

(assert (= result!57272 result!57164))

(assert (=> b!583242 t!78357))

(declare-fun tb!51155 () Bool)

(declare-fun t!78359 () Bool)

(assert (=> (and b!584017 (= (toChars!1845 (transformation!1119 (h!11139 (t!78261 (t!78261 rules!3103))))) (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508)))))) t!78359) tb!51155))

(declare-fun result!57274 () Bool)

(assert (= result!57274 result!57184))

(assert (=> d!205025 t!78359))

(declare-fun tb!51157 () Bool)

(declare-fun t!78361 () Bool)

(assert (=> (and b!584017 (= (toChars!1845 (transformation!1119 (h!11139 (t!78261 (t!78261 rules!3103))))) (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (get!2193 lt!247567)))))) t!78361) tb!51157))

(declare-fun result!57276 () Bool)

(assert (= result!57276 result!57198))

(assert (=> d!205061 t!78361))

(assert (=> d!205015 t!78357))

(declare-fun tp!182223 () Bool)

(declare-fun b_and!57529 () Bool)

(assert (=> b!584017 (= tp!182223 (and (=> t!78355 result!57270) (=> t!78361 result!57276) (=> t!78357 result!57272) (=> t!78359 result!57274) b_and!57529))))

(declare-fun e!353001 () Bool)

(assert (=> b!584017 (= e!353001 (and tp!182224 tp!182223))))

(declare-fun tp!182225 () Bool)

(declare-fun b!584016 () Bool)

(declare-fun e!353003 () Bool)

(assert (=> b!584016 (= e!353003 (and tp!182225 (inv!7226 (tag!1381 (h!11139 (t!78261 (t!78261 rules!3103))))) (inv!7229 (transformation!1119 (h!11139 (t!78261 (t!78261 rules!3103))))) e!353001))))

(declare-fun b!584015 () Bool)

(declare-fun e!353002 () Bool)

(declare-fun tp!182226 () Bool)

(assert (=> b!584015 (= e!353002 (and e!353003 tp!182226))))

(assert (=> b!583360 (= tp!182053 e!353002)))

(assert (= b!584016 b!584017))

(assert (= b!584015 b!584016))

(assert (= (and b!583360 ((_ is Cons!5738) (t!78261 (t!78261 rules!3103)))) b!584015))

(declare-fun m!843675 () Bool)

(assert (=> b!584016 m!843675))

(declare-fun m!843677 () Bool)

(assert (=> b!584016 m!843677))

(declare-fun tp!182228 () Bool)

(declare-fun e!353006 () Bool)

(declare-fun tp!182227 () Bool)

(declare-fun b!584018 () Bool)

(assert (=> b!584018 (= e!353006 (and (inv!7233 (left!4676 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))) (value!36758 (_1!3618 (v!16338 lt!247508))))))) tp!182227 (inv!7233 (right!5006 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))) (value!36758 (_1!3618 (v!16338 lt!247508))))))) tp!182228))))

(declare-fun b!584020 () Bool)

(declare-fun e!353005 () Bool)

(declare-fun tp!182229 () Bool)

(assert (=> b!584020 (= e!353005 tp!182229)))

(declare-fun b!584019 () Bool)

(assert (=> b!584019 (= e!353006 (and (inv!7240 (xs!4473 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))) (value!36758 (_1!3618 (v!16338 lt!247508))))))) e!353005))))

(assert (=> b!583337 (= tp!182041 (and (inv!7233 (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))) (value!36758 (_1!3618 (v!16338 lt!247508)))))) e!353006))))

(assert (= (and b!583337 ((_ is Node!1836) (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))) (value!36758 (_1!3618 (v!16338 lt!247508))))))) b!584018))

(assert (= b!584019 b!584020))

(assert (= (and b!583337 ((_ is Leaf!2903) (c!109078 (dynLambda!3335 (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))) (value!36758 (_1!3618 (v!16338 lt!247508))))))) b!584019))

(declare-fun m!843679 () Bool)

(assert (=> b!584018 m!843679))

(declare-fun m!843681 () Bool)

(assert (=> b!584018 m!843681))

(declare-fun m!843683 () Bool)

(assert (=> b!584019 m!843683))

(assert (=> b!583337 m!842823))

(declare-fun b!584021 () Bool)

(declare-fun e!353007 () Bool)

(declare-fun tp!182230 () Bool)

(assert (=> b!584021 (= e!353007 (and tp_is_empty!3261 tp!182230))))

(assert (=> b!583367 (= tp!182056 e!353007)))

(assert (= (and b!583367 ((_ is Cons!5737) (t!78260 (originalCharacters!1158 token!491)))) b!584021))

(declare-fun b_lambda!23015 () Bool)

(assert (= b_lambda!22991 (or (and b!583107 b_free!16255 (= (toChars!1845 (transformation!1119 (h!11139 rules!3103))) (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))))) (and b!583106 b_free!16259 (= (toChars!1845 (transformation!1119 (rule!1877 token!491))) (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))))) (and b!583362 b_free!16267 (= (toChars!1845 (transformation!1119 (h!11139 (t!78261 rules!3103)))) (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))))) (and b!584017 b_free!16275 (= (toChars!1845 (transformation!1119 (h!11139 (t!78261 (t!78261 rules!3103))))) (toChars!1845 (transformation!1119 (rule!1877 (_1!3618 (v!16338 lt!247508))))))) b_lambda!23015)))

(check-sat (not b!583985) (not d!205253) (not b!583984) (not b!584008) (not b!583925) (not b!583978) (not b!584021) (not b!583948) (not b!583860) b_and!57481 (not d!205091) (not b_next!16289) (not b!583940) (not b!583817) (not b!583998) (not b_next!16273) (not b!583518) (not b!583974) (not b!583479) (not d!205301) (not b!583986) (not b!583893) (not b_lambda!22995) (not b_next!16269) (not b!583472) (not bm!40171) (not b!583929) (not b!583471) (not b!583522) (not b!583825) (not b!583970) (not d!205283) (not b!583945) (not b!583906) (not bm!40164) (not b!583816) (not d!205313) (not d!205259) (not b!583870) (not b!583517) (not b!583894) (not b!583438) (not d!205271) (not b!584012) (not b!584009) (not b!583926) (not b!583437) (not b!583939) (not b!583477) (not b!583953) (not b!583847) (not b_lambda!22999) (not b!583943) (not b!583441) (not b!583982) (not b!583337) (not b!583994) (not b!583990) (not b!583435) (not d!205269) (not b!583880) (not b!583936) (not d!205285) (not b!583962) (not b!583432) (not b_next!16281) (not tb!51093) (not d!205067) (not b!583858) b_and!57523 (not b!583520) (not b!583868) (not b!583941) (not d!205299) (not b!583950) (not b!583946) (not b_next!16271) (not b!583449) (not b!583960) (not b!583981) (not b!583947) (not b!584013) (not b!583461) (not d!205323) (not b!583965) (not b!583988) (not b!583475) (not d!205289) (not b_lambda!23011) (not d!205333) (not b!583871) (not b!583898) (not b!583942) b_and!57485 (not d!205075) (not b!583478) (not b!583972) (not b!583928) (not b!583474) (not b_next!16283) (not b!584018) (not b!583473) (not b!583980) (not b_lambda!22993) (not d!205321) (not d!205337) (not b!583469) (not b!583523) (not b!583433) (not d!205059) (not b!583853) (not b!583839) (not b!583511) (not b!583901) (not b!583927) (not b!583956) (not b!583966) (not b!583955) (not b!583856) (not d!205069) (not b!583949) (not b!583900) (not b!583904) (not b_lambda!22997) (not tb!51087) (not d!205327) (not b!584020) (not d!205241) (not b!583430) (not b!583533) (not b!583964) (not d!205095) (not bm!40172) (not b!583976) (not b!583992) (not d!205311) (not b!583969) (not b!583831) (not b!583968) (not b!583961) (not b!584010) (not b!583989) (not b!583997) (not b!584016) tp_is_empty!3261 b_and!57527 (not b!583447) b_and!57483 (not b!583879) b_and!57521 (not b!583480) (not b_next!16291) (not b!583973) (not b!583935) (not b!583864) (not b!583896) (not b_next!16275) (not b!584019) (not b!583891) (not b!584014) (not d!205097) (not b!583445) (not b!583874) (not d!205329) (not b!583931) (not tb!51141) (not b!583887) (not d!205281) (not d!205331) (not b!583951) (not b!583467) (not d!205307) (not b_lambda!23013) (not d!205061) (not d!205105) (not b!583534) (not tb!51135) (not b!584007) (not b!583932) (not b!583855) (not b!583515) (not b!583996) (not b!583930) b_and!57529 (not b!583958) (not d!205093) (not b!583833) (not b!583993) (not b!583977) (not b!583954) (not d!205243) (not b!583952) (not b!583835) (not b!583840) (not b!583442) (not d!205103) (not b!583838) (not d!205245) (not b!583865) b_and!57525 (not b!583460) (not b!583902) (not b_lambda!23015) (not b!583851) (not d!205071) (not d!205275) (not d!205297) (not b!583250) (not b!583849) (not b!583535) (not b!584015) (not bm!40161) (not d!205335))
(check-sat (not b_next!16273) (not b_next!16269) (not b_next!16281) b_and!57485 (not b_next!16283) b_and!57527 (not b_next!16275) b_and!57529 b_and!57525 b_and!57481 (not b_next!16289) b_and!57523 (not b_next!16271) b_and!57483 b_and!57521 (not b_next!16291))
