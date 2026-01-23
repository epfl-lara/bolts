; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59112 () Bool)

(assert start!59112)

(declare-fun b!616706 () Bool)

(declare-fun b_free!17685 () Bool)

(declare-fun b_next!17701 () Bool)

(assert (=> b!616706 (= b_free!17685 (not b_next!17701))))

(declare-fun tp!190640 () Bool)

(declare-fun b_and!61199 () Bool)

(assert (=> b!616706 (= tp!190640 b_and!61199)))

(declare-fun b_free!17687 () Bool)

(declare-fun b_next!17703 () Bool)

(assert (=> b!616706 (= b_free!17687 (not b_next!17703))))

(declare-fun tp!190645 () Bool)

(declare-fun b_and!61201 () Bool)

(assert (=> b!616706 (= tp!190645 b_and!61201)))

(declare-fun b!616708 () Bool)

(declare-fun b_free!17689 () Bool)

(declare-fun b_next!17705 () Bool)

(assert (=> b!616708 (= b_free!17689 (not b_next!17705))))

(declare-fun tp!190646 () Bool)

(declare-fun b_and!61203 () Bool)

(assert (=> b!616708 (= tp!190646 b_and!61203)))

(declare-fun b_free!17691 () Bool)

(declare-fun b_next!17707 () Bool)

(assert (=> b!616708 (= b_free!17691 (not b_next!17707))))

(declare-fun tp!190643 () Bool)

(declare-fun b_and!61205 () Bool)

(assert (=> b!616708 (= tp!190643 b_and!61205)))

(declare-fun b!616698 () Bool)

(declare-fun e!373969 () Bool)

(declare-datatypes ((LexerInterface!1139 0))(
  ( (LexerInterfaceExt!1136 (__x!4450 Int)) (Lexer!1137) )
))
(declare-fun thiss!25598 () LexerInterface!1139)

(declare-datatypes ((List!6215 0))(
  ( (Nil!6205) (Cons!6205 (h!11606 (_ BitVec 16)) (t!81454 List!6215)) )
))
(declare-datatypes ((TokenValue!1275 0))(
  ( (FloatLiteralValue!2550 (text!9370 List!6215)) (TokenValueExt!1274 (__x!4451 Int)) (Broken!6375 (value!40494 List!6215)) (Object!1284) (End!1275) (Def!1275) (Underscore!1275) (Match!1275) (Else!1275) (Error!1275) (Case!1275) (If!1275) (Extends!1275) (Abstract!1275) (Class!1275) (Val!1275) (DelimiterValue!2550 (del!1335 List!6215)) (KeywordValue!1281 (value!40495 List!6215)) (CommentValue!2550 (value!40496 List!6215)) (WhitespaceValue!2550 (value!40497 List!6215)) (IndentationValue!1275 (value!40498 List!6215)) (String!8122) (Int32!1275) (Broken!6376 (value!40499 List!6215)) (Boolean!1276) (Unit!11365) (OperatorValue!1278 (op!1335 List!6215)) (IdentifierValue!2550 (value!40500 List!6215)) (IdentifierValue!2551 (value!40501 List!6215)) (WhitespaceValue!2551 (value!40502 List!6215)) (True!2550) (False!2550) (Broken!6377 (value!40503 List!6215)) (Broken!6378 (value!40504 List!6215)) (True!2551) (RightBrace!1275) (RightBracket!1275) (Colon!1275) (Null!1275) (Comma!1275) (LeftBracket!1275) (False!2551) (LeftBrace!1275) (ImaginaryLiteralValue!1275 (text!9371 List!6215)) (StringLiteralValue!3825 (value!40505 List!6215)) (EOFValue!1275 (value!40506 List!6215)) (IdentValue!1275 (value!40507 List!6215)) (DelimiterValue!2551 (value!40508 List!6215)) (DedentValue!1275 (value!40509 List!6215)) (NewLineValue!1275 (value!40510 List!6215)) (IntegerValue!3825 (value!40511 (_ BitVec 32)) (text!9372 List!6215)) (IntegerValue!3826 (value!40512 Int) (text!9373 List!6215)) (Times!1275) (Or!1275) (Equal!1275) (Minus!1275) (Broken!6379 (value!40513 List!6215)) (And!1275) (Div!1275) (LessEqual!1275) (Mod!1275) (Concat!2860) (Not!1275) (Plus!1275) (SpaceValue!1275 (value!40514 List!6215)) (IntegerValue!3827 (value!40515 Int) (text!9374 List!6215)) (StringLiteralValue!3826 (text!9375 List!6215)) (FloatLiteralValue!2551 (text!9376 List!6215)) (BytesLiteralValue!1275 (value!40516 List!6215)) (CommentValue!2551 (value!40517 List!6215)) (StringLiteralValue!3827 (value!40518 List!6215)) (ErrorTokenValue!1275 (msg!1336 List!6215)) )
))
(declare-datatypes ((C!4096 0))(
  ( (C!4097 (val!2274 Int)) )
))
(declare-datatypes ((Regex!1585 0))(
  ( (ElementMatch!1585 (c!113751 C!4096)) (Concat!2861 (regOne!3682 Regex!1585) (regTwo!3682 Regex!1585)) (EmptyExpr!1585) (Star!1585 (reg!1914 Regex!1585)) (EmptyLang!1585) (Union!1585 (regOne!3683 Regex!1585) (regTwo!3683 Regex!1585)) )
))
(declare-datatypes ((String!8123 0))(
  ( (String!8124 (value!40519 String)) )
))
(declare-datatypes ((List!6216 0))(
  ( (Nil!6206) (Cons!6206 (h!11607 C!4096) (t!81455 List!6216)) )
))
(declare-datatypes ((IArray!3937 0))(
  ( (IArray!3938 (innerList!2026 List!6216)) )
))
(declare-datatypes ((Conc!1968 0))(
  ( (Node!1968 (left!4943 Conc!1968) (right!5273 Conc!1968) (csize!4166 Int) (cheight!2179 Int)) (Leaf!3102 (xs!4605 IArray!3937) (csize!4167 Int)) (Empty!1968) )
))
(declare-datatypes ((BalanceConc!3944 0))(
  ( (BalanceConc!3945 (c!113752 Conc!1968)) )
))
(declare-datatypes ((TokenValueInjection!2318 0))(
  ( (TokenValueInjection!2319 (toValue!2162 Int) (toChars!2021 Int)) )
))
(declare-datatypes ((Rule!2302 0))(
  ( (Rule!2303 (regex!1251 Regex!1585) (tag!1513 String!8123) (isSeparator!1251 Bool) (transformation!1251 TokenValueInjection!2318)) )
))
(declare-datatypes ((List!6217 0))(
  ( (Nil!6207) (Cons!6207 (h!11608 Rule!2302) (t!81456 List!6217)) )
))
(declare-fun rules!3744 () List!6217)

(declare-fun rulesValidInductive!474 (LexerInterface!1139 List!6217) Bool)

(assert (=> b!616698 (= e!373969 (not (rulesValidInductive!474 thiss!25598 rules!3744)))))

(declare-fun b!616699 () Bool)

(declare-fun res!268474 () Bool)

(assert (=> b!616699 (=> (not res!268474) (not e!373969))))

(declare-fun isEmpty!4474 (List!6217) Bool)

(assert (=> b!616699 (= res!268474 (not (isEmpty!4474 rules!3744)))))

(declare-fun res!268477 () Bool)

(assert (=> start!59112 (=> (not res!268477) (not e!373969))))

(get-info :version)

(assert (=> start!59112 (= res!268477 ((_ is Lexer!1137) thiss!25598))))

(assert (=> start!59112 e!373969))

(declare-fun e!373971 () Bool)

(assert (=> start!59112 e!373971))

(declare-fun e!373970 () Bool)

(assert (=> start!59112 e!373970))

(declare-fun e!373974 () Bool)

(assert (=> start!59112 e!373974))

(assert (=> start!59112 true))

(declare-fun e!373972 () Bool)

(assert (=> start!59112 e!373972))

(declare-fun b!616700 () Bool)

(declare-fun tp_is_empty!3529 () Bool)

(declare-fun tp!190644 () Bool)

(assert (=> b!616700 (= e!373970 (and tp_is_empty!3529 tp!190644))))

(declare-fun b!616701 () Bool)

(declare-fun res!268478 () Bool)

(assert (=> b!616701 (=> (not res!268478) (not e!373969))))

(declare-fun p!2908 () List!6216)

(declare-fun input!3215 () List!6216)

(declare-fun isPrefix!881 (List!6216 List!6216) Bool)

(assert (=> b!616701 (= res!268478 (isPrefix!881 p!2908 input!3215))))

(declare-fun b!616702 () Bool)

(declare-fun res!268476 () Bool)

(assert (=> b!616702 (=> (not res!268476) (not e!373969))))

(declare-fun r!3983 () Rule!2302)

(declare-fun contains!1467 (List!6217 Rule!2302) Bool)

(assert (=> b!616702 (= res!268476 (contains!1467 rules!3744 r!3983))))

(declare-fun tp!190642 () Bool)

(declare-fun e!373977 () Bool)

(declare-fun b!616703 () Bool)

(declare-fun inv!7897 (String!8123) Bool)

(declare-fun inv!7899 (TokenValueInjection!2318) Bool)

(assert (=> b!616703 (= e!373971 (and tp!190642 (inv!7897 (tag!1513 r!3983)) (inv!7899 (transformation!1251 r!3983)) e!373977))))

(declare-fun b!616704 () Bool)

(declare-fun e!373968 () Bool)

(declare-fun tp!190641 () Bool)

(declare-fun e!373975 () Bool)

(assert (=> b!616704 (= e!373968 (and tp!190641 (inv!7897 (tag!1513 (h!11608 rules!3744))) (inv!7899 (transformation!1251 (h!11608 rules!3744))) e!373975))))

(declare-fun b!616705 () Bool)

(declare-fun res!268475 () Bool)

(assert (=> b!616705 (=> (not res!268475) (not e!373969))))

(declare-fun rulesInvariant!1100 (LexerInterface!1139 List!6217) Bool)

(assert (=> b!616705 (= res!268475 (rulesInvariant!1100 thiss!25598 rules!3744))))

(assert (=> b!616706 (= e!373975 (and tp!190640 tp!190645))))

(declare-fun b!616707 () Bool)

(declare-fun tp!190648 () Bool)

(assert (=> b!616707 (= e!373974 (and e!373968 tp!190648))))

(assert (=> b!616708 (= e!373977 (and tp!190646 tp!190643))))

(declare-fun b!616709 () Bool)

(declare-fun tp!190647 () Bool)

(assert (=> b!616709 (= e!373972 (and tp_is_empty!3529 tp!190647))))

(assert (= (and start!59112 res!268477) b!616701))

(assert (= (and b!616701 res!268478) b!616699))

(assert (= (and b!616699 res!268474) b!616705))

(assert (= (and b!616705 res!268475) b!616702))

(assert (= (and b!616702 res!268476) b!616698))

(assert (= b!616703 b!616708))

(assert (= start!59112 b!616703))

(assert (= (and start!59112 ((_ is Cons!6206) p!2908)) b!616700))

(assert (= b!616704 b!616706))

(assert (= b!616707 b!616704))

(assert (= (and start!59112 ((_ is Cons!6207) rules!3744)) b!616707))

(assert (= (and start!59112 ((_ is Cons!6206) input!3215)) b!616709))

(declare-fun m!885275 () Bool)

(assert (=> b!616699 m!885275))

(declare-fun m!885277 () Bool)

(assert (=> b!616705 m!885277))

(declare-fun m!885279 () Bool)

(assert (=> b!616703 m!885279))

(declare-fun m!885281 () Bool)

(assert (=> b!616703 m!885281))

(declare-fun m!885283 () Bool)

(assert (=> b!616702 m!885283))

(declare-fun m!885285 () Bool)

(assert (=> b!616704 m!885285))

(declare-fun m!885287 () Bool)

(assert (=> b!616704 m!885287))

(declare-fun m!885289 () Bool)

(assert (=> b!616698 m!885289))

(declare-fun m!885291 () Bool)

(assert (=> b!616701 m!885291))

(check-sat (not b!616703) (not b!616709) (not b!616704) (not b!616705) tp_is_empty!3529 (not b!616701) (not b_next!17701) (not b!616698) (not b_next!17705) (not b_next!17703) (not b!616699) (not b!616702) (not b!616707) (not b!616700) b_and!61205 b_and!61201 (not b_next!17707) b_and!61199 b_and!61203)
(check-sat (not b_next!17701) (not b_next!17705) (not b_next!17703) b_and!61205 b_and!61201 (not b_next!17707) b_and!61199 b_and!61203)
(get-model)

(declare-fun d!216602 () Bool)

(assert (=> d!216602 (= (inv!7897 (tag!1513 (h!11608 rules!3744))) (= (mod (str.len (value!40519 (tag!1513 (h!11608 rules!3744)))) 2) 0))))

(assert (=> b!616704 d!216602))

(declare-fun d!216604 () Bool)

(declare-fun res!268483 () Bool)

(declare-fun e!373980 () Bool)

(assert (=> d!216604 (=> (not res!268483) (not e!373980))))

(declare-fun semiInverseModEq!504 (Int Int) Bool)

(assert (=> d!216604 (= res!268483 (semiInverseModEq!504 (toChars!2021 (transformation!1251 (h!11608 rules!3744))) (toValue!2162 (transformation!1251 (h!11608 rules!3744)))))))

(assert (=> d!216604 (= (inv!7899 (transformation!1251 (h!11608 rules!3744))) e!373980)))

(declare-fun b!616712 () Bool)

(declare-fun equivClasses!487 (Int Int) Bool)

(assert (=> b!616712 (= e!373980 (equivClasses!487 (toChars!2021 (transformation!1251 (h!11608 rules!3744))) (toValue!2162 (transformation!1251 (h!11608 rules!3744)))))))

(assert (= (and d!216604 res!268483) b!616712))

(declare-fun m!885293 () Bool)

(assert (=> d!216604 m!885293))

(declare-fun m!885295 () Bool)

(assert (=> b!616712 m!885295))

(assert (=> b!616704 d!216604))

(declare-fun d!216606 () Bool)

(assert (=> d!216606 (= (isEmpty!4474 rules!3744) ((_ is Nil!6207) rules!3744))))

(assert (=> b!616699 d!216606))

(declare-fun d!216608 () Bool)

(assert (=> d!216608 (= (inv!7897 (tag!1513 r!3983)) (= (mod (str.len (value!40519 (tag!1513 r!3983))) 2) 0))))

(assert (=> b!616703 d!216608))

(declare-fun d!216610 () Bool)

(declare-fun res!268484 () Bool)

(declare-fun e!373981 () Bool)

(assert (=> d!216610 (=> (not res!268484) (not e!373981))))

(assert (=> d!216610 (= res!268484 (semiInverseModEq!504 (toChars!2021 (transformation!1251 r!3983)) (toValue!2162 (transformation!1251 r!3983))))))

(assert (=> d!216610 (= (inv!7899 (transformation!1251 r!3983)) e!373981)))

(declare-fun b!616713 () Bool)

(assert (=> b!616713 (= e!373981 (equivClasses!487 (toChars!2021 (transformation!1251 r!3983)) (toValue!2162 (transformation!1251 r!3983))))))

(assert (= (and d!216610 res!268484) b!616713))

(declare-fun m!885297 () Bool)

(assert (=> d!216610 m!885297))

(declare-fun m!885299 () Bool)

(assert (=> b!616713 m!885299))

(assert (=> b!616703 d!216610))

(declare-fun d!216612 () Bool)

(assert (=> d!216612 true))

(declare-fun lt!264436 () Bool)

(declare-fun lambda!16221 () Int)

(declare-fun forall!1565 (List!6217 Int) Bool)

(assert (=> d!216612 (= lt!264436 (forall!1565 rules!3744 lambda!16221))))

(declare-fun e!373999 () Bool)

(assert (=> d!216612 (= lt!264436 e!373999)))

(declare-fun res!268504 () Bool)

(assert (=> d!216612 (=> res!268504 e!373999)))

(assert (=> d!216612 (= res!268504 (not ((_ is Cons!6207) rules!3744)))))

(assert (=> d!216612 (= (rulesValidInductive!474 thiss!25598 rules!3744) lt!264436)))

(declare-fun b!616731 () Bool)

(declare-fun e!374000 () Bool)

(assert (=> b!616731 (= e!373999 e!374000)))

(declare-fun res!268505 () Bool)

(assert (=> b!616731 (=> (not res!268505) (not e!374000))))

(declare-fun ruleValid!436 (LexerInterface!1139 Rule!2302) Bool)

(assert (=> b!616731 (= res!268505 (ruleValid!436 thiss!25598 (h!11608 rules!3744)))))

(declare-fun b!616732 () Bool)

(assert (=> b!616732 (= e!374000 (rulesValidInductive!474 thiss!25598 (t!81456 rules!3744)))))

(assert (= (and d!216612 (not res!268504)) b!616731))

(assert (= (and b!616731 res!268505) b!616732))

(declare-fun m!885311 () Bool)

(assert (=> d!216612 m!885311))

(declare-fun m!885313 () Bool)

(assert (=> b!616731 m!885313))

(declare-fun m!885315 () Bool)

(assert (=> b!616732 m!885315))

(assert (=> b!616698 d!216612))

(declare-fun b!616743 () Bool)

(declare-fun e!374007 () Bool)

(declare-fun e!374009 () Bool)

(assert (=> b!616743 (= e!374007 e!374009)))

(declare-fun res!268516 () Bool)

(assert (=> b!616743 (=> (not res!268516) (not e!374009))))

(assert (=> b!616743 (= res!268516 (not ((_ is Nil!6206) input!3215)))))

(declare-fun b!616744 () Bool)

(declare-fun res!268514 () Bool)

(assert (=> b!616744 (=> (not res!268514) (not e!374009))))

(declare-fun head!1303 (List!6216) C!4096)

(assert (=> b!616744 (= res!268514 (= (head!1303 p!2908) (head!1303 input!3215)))))

(declare-fun b!616746 () Bool)

(declare-fun e!374008 () Bool)

(declare-fun size!4857 (List!6216) Int)

(assert (=> b!616746 (= e!374008 (>= (size!4857 input!3215) (size!4857 p!2908)))))

(declare-fun d!216622 () Bool)

(assert (=> d!216622 e!374008))

(declare-fun res!268517 () Bool)

(assert (=> d!216622 (=> res!268517 e!374008)))

(declare-fun lt!264439 () Bool)

(assert (=> d!216622 (= res!268517 (not lt!264439))))

(assert (=> d!216622 (= lt!264439 e!374007)))

(declare-fun res!268515 () Bool)

(assert (=> d!216622 (=> res!268515 e!374007)))

(assert (=> d!216622 (= res!268515 ((_ is Nil!6206) p!2908))))

(assert (=> d!216622 (= (isPrefix!881 p!2908 input!3215) lt!264439)))

(declare-fun b!616745 () Bool)

(declare-fun tail!832 (List!6216) List!6216)

(assert (=> b!616745 (= e!374009 (isPrefix!881 (tail!832 p!2908) (tail!832 input!3215)))))

(assert (= (and d!216622 (not res!268515)) b!616743))

(assert (= (and b!616743 res!268516) b!616744))

(assert (= (and b!616744 res!268514) b!616745))

(assert (= (and d!216622 (not res!268517)) b!616746))

(declare-fun m!885317 () Bool)

(assert (=> b!616744 m!885317))

(declare-fun m!885319 () Bool)

(assert (=> b!616744 m!885319))

(declare-fun m!885321 () Bool)

(assert (=> b!616746 m!885321))

(declare-fun m!885323 () Bool)

(assert (=> b!616746 m!885323))

(declare-fun m!885325 () Bool)

(assert (=> b!616745 m!885325))

(declare-fun m!885327 () Bool)

(assert (=> b!616745 m!885327))

(assert (=> b!616745 m!885325))

(assert (=> b!616745 m!885327))

(declare-fun m!885329 () Bool)

(assert (=> b!616745 m!885329))

(assert (=> b!616701 d!216622))

(declare-fun d!216624 () Bool)

(declare-fun lt!264442 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1135 (List!6217) (InoxSet Rule!2302))

(assert (=> d!216624 (= lt!264442 (select (content!1135 rules!3744) r!3983))))

(declare-fun e!374015 () Bool)

(assert (=> d!216624 (= lt!264442 e!374015)))

(declare-fun res!268522 () Bool)

(assert (=> d!216624 (=> (not res!268522) (not e!374015))))

(assert (=> d!216624 (= res!268522 ((_ is Cons!6207) rules!3744))))

(assert (=> d!216624 (= (contains!1467 rules!3744 r!3983) lt!264442)))

(declare-fun b!616751 () Bool)

(declare-fun e!374014 () Bool)

(assert (=> b!616751 (= e!374015 e!374014)))

(declare-fun res!268523 () Bool)

(assert (=> b!616751 (=> res!268523 e!374014)))

(assert (=> b!616751 (= res!268523 (= (h!11608 rules!3744) r!3983))))

(declare-fun b!616752 () Bool)

(assert (=> b!616752 (= e!374014 (contains!1467 (t!81456 rules!3744) r!3983))))

(assert (= (and d!216624 res!268522) b!616751))

(assert (= (and b!616751 (not res!268523)) b!616752))

(declare-fun m!885331 () Bool)

(assert (=> d!216624 m!885331))

(declare-fun m!885333 () Bool)

(assert (=> d!216624 m!885333))

(declare-fun m!885335 () Bool)

(assert (=> b!616752 m!885335))

(assert (=> b!616702 d!216624))

(declare-fun d!216626 () Bool)

(declare-fun res!268526 () Bool)

(declare-fun e!374018 () Bool)

(assert (=> d!216626 (=> (not res!268526) (not e!374018))))

(declare-fun rulesValid!467 (LexerInterface!1139 List!6217) Bool)

(assert (=> d!216626 (= res!268526 (rulesValid!467 thiss!25598 rules!3744))))

(assert (=> d!216626 (= (rulesInvariant!1100 thiss!25598 rules!3744) e!374018)))

(declare-fun b!616755 () Bool)

(declare-datatypes ((List!6218 0))(
  ( (Nil!6208) (Cons!6208 (h!11609 String!8123) (t!81457 List!6218)) )
))
(declare-fun noDuplicateTag!467 (LexerInterface!1139 List!6217 List!6218) Bool)

(assert (=> b!616755 (= e!374018 (noDuplicateTag!467 thiss!25598 rules!3744 Nil!6208))))

(assert (= (and d!216626 res!268526) b!616755))

(declare-fun m!885337 () Bool)

(assert (=> d!216626 m!885337))

(declare-fun m!885339 () Bool)

(assert (=> b!616755 m!885339))

(assert (=> b!616705 d!216626))

(declare-fun b!616760 () Bool)

(declare-fun e!374021 () Bool)

(declare-fun tp!190651 () Bool)

(assert (=> b!616760 (= e!374021 (and tp_is_empty!3529 tp!190651))))

(assert (=> b!616709 (= tp!190647 e!374021)))

(assert (= (and b!616709 ((_ is Cons!6206) (t!81455 input!3215))) b!616760))

(declare-fun b!616772 () Bool)

(declare-fun e!374024 () Bool)

(declare-fun tp!190665 () Bool)

(declare-fun tp!190666 () Bool)

(assert (=> b!616772 (= e!374024 (and tp!190665 tp!190666))))

(declare-fun b!616773 () Bool)

(declare-fun tp!190664 () Bool)

(assert (=> b!616773 (= e!374024 tp!190664)))

(assert (=> b!616704 (= tp!190641 e!374024)))

(declare-fun b!616771 () Bool)

(assert (=> b!616771 (= e!374024 tp_is_empty!3529)))

(declare-fun b!616774 () Bool)

(declare-fun tp!190662 () Bool)

(declare-fun tp!190663 () Bool)

(assert (=> b!616774 (= e!374024 (and tp!190662 tp!190663))))

(assert (= (and b!616704 ((_ is ElementMatch!1585) (regex!1251 (h!11608 rules!3744)))) b!616771))

(assert (= (and b!616704 ((_ is Concat!2861) (regex!1251 (h!11608 rules!3744)))) b!616772))

(assert (= (and b!616704 ((_ is Star!1585) (regex!1251 (h!11608 rules!3744)))) b!616773))

(assert (= (and b!616704 ((_ is Union!1585) (regex!1251 (h!11608 rules!3744)))) b!616774))

(declare-fun b!616776 () Bool)

(declare-fun e!374025 () Bool)

(declare-fun tp!190670 () Bool)

(declare-fun tp!190671 () Bool)

(assert (=> b!616776 (= e!374025 (and tp!190670 tp!190671))))

(declare-fun b!616777 () Bool)

(declare-fun tp!190669 () Bool)

(assert (=> b!616777 (= e!374025 tp!190669)))

(assert (=> b!616703 (= tp!190642 e!374025)))

(declare-fun b!616775 () Bool)

(assert (=> b!616775 (= e!374025 tp_is_empty!3529)))

(declare-fun b!616778 () Bool)

(declare-fun tp!190667 () Bool)

(declare-fun tp!190668 () Bool)

(assert (=> b!616778 (= e!374025 (and tp!190667 tp!190668))))

(assert (= (and b!616703 ((_ is ElementMatch!1585) (regex!1251 r!3983))) b!616775))

(assert (= (and b!616703 ((_ is Concat!2861) (regex!1251 r!3983))) b!616776))

(assert (= (and b!616703 ((_ is Star!1585) (regex!1251 r!3983))) b!616777))

(assert (= (and b!616703 ((_ is Union!1585) (regex!1251 r!3983))) b!616778))

(declare-fun b!616789 () Bool)

(declare-fun b_free!17693 () Bool)

(declare-fun b_next!17709 () Bool)

(assert (=> b!616789 (= b_free!17693 (not b_next!17709))))

(declare-fun tp!190681 () Bool)

(declare-fun b_and!61207 () Bool)

(assert (=> b!616789 (= tp!190681 b_and!61207)))

(declare-fun b_free!17695 () Bool)

(declare-fun b_next!17711 () Bool)

(assert (=> b!616789 (= b_free!17695 (not b_next!17711))))

(declare-fun tp!190680 () Bool)

(declare-fun b_and!61209 () Bool)

(assert (=> b!616789 (= tp!190680 b_and!61209)))

(declare-fun e!374035 () Bool)

(assert (=> b!616789 (= e!374035 (and tp!190681 tp!190680))))

(declare-fun b!616788 () Bool)

(declare-fun e!374036 () Bool)

(declare-fun tp!190683 () Bool)

(assert (=> b!616788 (= e!374036 (and tp!190683 (inv!7897 (tag!1513 (h!11608 (t!81456 rules!3744)))) (inv!7899 (transformation!1251 (h!11608 (t!81456 rules!3744)))) e!374035))))

(declare-fun b!616787 () Bool)

(declare-fun e!374037 () Bool)

(declare-fun tp!190682 () Bool)

(assert (=> b!616787 (= e!374037 (and e!374036 tp!190682))))

(assert (=> b!616707 (= tp!190648 e!374037)))

(assert (= b!616788 b!616789))

(assert (= b!616787 b!616788))

(assert (= (and b!616707 ((_ is Cons!6207) (t!81456 rules!3744))) b!616787))

(declare-fun m!885341 () Bool)

(assert (=> b!616788 m!885341))

(declare-fun m!885343 () Bool)

(assert (=> b!616788 m!885343))

(declare-fun b!616790 () Bool)

(declare-fun e!374038 () Bool)

(declare-fun tp!190684 () Bool)

(assert (=> b!616790 (= e!374038 (and tp_is_empty!3529 tp!190684))))

(assert (=> b!616700 (= tp!190644 e!374038)))

(assert (= (and b!616700 ((_ is Cons!6206) (t!81455 p!2908))) b!616790))

(check-sat (not b!616755) (not b!616773) (not b!616752) (not b!616731) (not b_next!17701) (not d!216612) (not d!216624) (not b!616760) (not b!616732) (not b!616776) b_and!61207 (not b!616788) (not d!216610) (not b!616774) b_and!61205 b_and!61201 (not b_next!17707) (not b!616746) (not b!616787) tp_is_empty!3529 (not d!216604) (not b_next!17709) (not b!616790) (not b!616777) (not b!616772) (not b!616744) (not b_next!17705) (not b!616713) b_and!61209 b_and!61199 b_and!61203 (not b!616778) (not b_next!17703) (not d!216626) (not b!616745) (not b!616712) (not b_next!17711))
(check-sat b_and!61207 (not b_next!17709) (not b_next!17701) (not b_next!17703) (not b_next!17711) b_and!61205 b_and!61201 (not b_next!17707) (not b_next!17705) b_and!61209 b_and!61199 b_and!61203)
(get-model)

(declare-fun bs!71832 () Bool)

(declare-fun d!216628 () Bool)

(assert (= bs!71832 (and d!216628 d!216612)))

(declare-fun lambda!16222 () Int)

(assert (=> bs!71832 (= lambda!16222 lambda!16221)))

(assert (=> d!216628 true))

(declare-fun lt!264443 () Bool)

(assert (=> d!216628 (= lt!264443 (forall!1565 (t!81456 rules!3744) lambda!16222))))

(declare-fun e!374039 () Bool)

(assert (=> d!216628 (= lt!264443 e!374039)))

(declare-fun res!268531 () Bool)

(assert (=> d!216628 (=> res!268531 e!374039)))

(assert (=> d!216628 (= res!268531 (not ((_ is Cons!6207) (t!81456 rules!3744))))))

(assert (=> d!216628 (= (rulesValidInductive!474 thiss!25598 (t!81456 rules!3744)) lt!264443)))

(declare-fun b!616791 () Bool)

(declare-fun e!374040 () Bool)

(assert (=> b!616791 (= e!374039 e!374040)))

(declare-fun res!268532 () Bool)

(assert (=> b!616791 (=> (not res!268532) (not e!374040))))

(assert (=> b!616791 (= res!268532 (ruleValid!436 thiss!25598 (h!11608 (t!81456 rules!3744))))))

(declare-fun b!616792 () Bool)

(assert (=> b!616792 (= e!374040 (rulesValidInductive!474 thiss!25598 (t!81456 (t!81456 rules!3744))))))

(assert (= (and d!216628 (not res!268531)) b!616791))

(assert (= (and b!616791 res!268532) b!616792))

(declare-fun m!885345 () Bool)

(assert (=> d!216628 m!885345))

(declare-fun m!885347 () Bool)

(assert (=> b!616791 m!885347))

(declare-fun m!885349 () Bool)

(assert (=> b!616792 m!885349))

(assert (=> b!616732 d!216628))

(declare-fun d!216630 () Bool)

(assert (=> d!216630 true))

(declare-fun lambda!16225 () Int)

(declare-fun order!4901 () Int)

(declare-fun order!4899 () Int)

(declare-fun dynLambda!3579 (Int Int) Int)

(declare-fun dynLambda!3580 (Int Int) Int)

(assert (=> d!216630 (< (dynLambda!3579 order!4899 (toValue!2162 (transformation!1251 r!3983))) (dynLambda!3580 order!4901 lambda!16225))))

(declare-fun Forall2!235 (Int) Bool)

(assert (=> d!216630 (= (equivClasses!487 (toChars!2021 (transformation!1251 r!3983)) (toValue!2162 (transformation!1251 r!3983))) (Forall2!235 lambda!16225))))

(declare-fun bs!71833 () Bool)

(assert (= bs!71833 d!216630))

(declare-fun m!885351 () Bool)

(assert (=> bs!71833 m!885351))

(assert (=> b!616713 d!216630))

(declare-fun d!216632 () Bool)

(declare-fun c!113755 () Bool)

(assert (=> d!216632 (= c!113755 ((_ is Nil!6207) rules!3744))))

(declare-fun e!374045 () (InoxSet Rule!2302))

(assert (=> d!216632 (= (content!1135 rules!3744) e!374045)))

(declare-fun b!616801 () Bool)

(assert (=> b!616801 (= e!374045 ((as const (Array Rule!2302 Bool)) false))))

(declare-fun b!616802 () Bool)

(assert (=> b!616802 (= e!374045 ((_ map or) (store ((as const (Array Rule!2302 Bool)) false) (h!11608 rules!3744) true) (content!1135 (t!81456 rules!3744))))))

(assert (= (and d!216632 c!113755) b!616801))

(assert (= (and d!216632 (not c!113755)) b!616802))

(declare-fun m!885353 () Bool)

(assert (=> b!616802 m!885353))

(declare-fun m!885355 () Bool)

(assert (=> b!616802 m!885355))

(assert (=> d!216624 d!216632))

(declare-fun d!216634 () Bool)

(assert (=> d!216634 (= (inv!7897 (tag!1513 (h!11608 (t!81456 rules!3744)))) (= (mod (str.len (value!40519 (tag!1513 (h!11608 (t!81456 rules!3744))))) 2) 0))))

(assert (=> b!616788 d!216634))

(declare-fun d!216636 () Bool)

(declare-fun res!268535 () Bool)

(declare-fun e!374046 () Bool)

(assert (=> d!216636 (=> (not res!268535) (not e!374046))))

(assert (=> d!216636 (= res!268535 (semiInverseModEq!504 (toChars!2021 (transformation!1251 (h!11608 (t!81456 rules!3744)))) (toValue!2162 (transformation!1251 (h!11608 (t!81456 rules!3744))))))))

(assert (=> d!216636 (= (inv!7899 (transformation!1251 (h!11608 (t!81456 rules!3744)))) e!374046)))

(declare-fun b!616803 () Bool)

(assert (=> b!616803 (= e!374046 (equivClasses!487 (toChars!2021 (transformation!1251 (h!11608 (t!81456 rules!3744)))) (toValue!2162 (transformation!1251 (h!11608 (t!81456 rules!3744))))))))

(assert (= (and d!216636 res!268535) b!616803))

(declare-fun m!885357 () Bool)

(assert (=> d!216636 m!885357))

(declare-fun m!885359 () Bool)

(assert (=> b!616803 m!885359))

(assert (=> b!616788 d!216636))

(declare-fun d!216638 () Bool)

(declare-fun res!268542 () Bool)

(declare-fun e!374051 () Bool)

(assert (=> d!216638 (=> (not res!268542) (not e!374051))))

(declare-fun validRegex!551 (Regex!1585) Bool)

(assert (=> d!216638 (= res!268542 (validRegex!551 (regex!1251 (h!11608 rules!3744))))))

(assert (=> d!216638 (= (ruleValid!436 thiss!25598 (h!11608 rules!3744)) e!374051)))

(declare-fun b!616812 () Bool)

(declare-fun res!268543 () Bool)

(assert (=> b!616812 (=> (not res!268543) (not e!374051))))

(declare-fun nullable!456 (Regex!1585) Bool)

(assert (=> b!616812 (= res!268543 (not (nullable!456 (regex!1251 (h!11608 rules!3744)))))))

(declare-fun b!616813 () Bool)

(assert (=> b!616813 (= e!374051 (not (= (tag!1513 (h!11608 rules!3744)) (String!8124 ""))))))

(assert (= (and d!216638 res!268542) b!616812))

(assert (= (and b!616812 res!268543) b!616813))

(declare-fun m!885367 () Bool)

(assert (=> d!216638 m!885367))

(declare-fun m!885369 () Bool)

(assert (=> b!616812 m!885369))

(assert (=> b!616731 d!216638))

(declare-fun d!216642 () Bool)

(declare-fun lt!264447 () Bool)

(assert (=> d!216642 (= lt!264447 (select (content!1135 (t!81456 rules!3744)) r!3983))))

(declare-fun e!374055 () Bool)

(assert (=> d!216642 (= lt!264447 e!374055)))

(declare-fun res!268546 () Bool)

(assert (=> d!216642 (=> (not res!268546) (not e!374055))))

(assert (=> d!216642 (= res!268546 ((_ is Cons!6207) (t!81456 rules!3744)))))

(assert (=> d!216642 (= (contains!1467 (t!81456 rules!3744) r!3983) lt!264447)))

(declare-fun b!616816 () Bool)

(declare-fun e!374054 () Bool)

(assert (=> b!616816 (= e!374055 e!374054)))

(declare-fun res!268547 () Bool)

(assert (=> b!616816 (=> res!268547 e!374054)))

(assert (=> b!616816 (= res!268547 (= (h!11608 (t!81456 rules!3744)) r!3983))))

(declare-fun b!616817 () Bool)

(assert (=> b!616817 (= e!374054 (contains!1467 (t!81456 (t!81456 rules!3744)) r!3983))))

(assert (= (and d!216642 res!268546) b!616816))

(assert (= (and b!616816 (not res!268547)) b!616817))

(assert (=> d!216642 m!885355))

(declare-fun m!885371 () Bool)

(assert (=> d!216642 m!885371))

(declare-fun m!885373 () Bool)

(assert (=> b!616817 m!885373))

(assert (=> b!616752 d!216642))

(declare-fun d!216644 () Bool)

(declare-fun res!268562 () Bool)

(declare-fun e!374067 () Bool)

(assert (=> d!216644 (=> res!268562 e!374067)))

(assert (=> d!216644 (= res!268562 ((_ is Nil!6207) rules!3744))))

(assert (=> d!216644 (= (noDuplicateTag!467 thiss!25598 rules!3744 Nil!6208) e!374067)))

(declare-fun b!616832 () Bool)

(declare-fun e!374068 () Bool)

(assert (=> b!616832 (= e!374067 e!374068)))

(declare-fun res!268563 () Bool)

(assert (=> b!616832 (=> (not res!268563) (not e!374068))))

(declare-fun contains!1468 (List!6218 String!8123) Bool)

(assert (=> b!616832 (= res!268563 (not (contains!1468 Nil!6208 (tag!1513 (h!11608 rules!3744)))))))

(declare-fun b!616833 () Bool)

(assert (=> b!616833 (= e!374068 (noDuplicateTag!467 thiss!25598 (t!81456 rules!3744) (Cons!6208 (tag!1513 (h!11608 rules!3744)) Nil!6208)))))

(assert (= (and d!216644 (not res!268562)) b!616832))

(assert (= (and b!616832 res!268563) b!616833))

(declare-fun m!885389 () Bool)

(assert (=> b!616832 m!885389))

(declare-fun m!885391 () Bool)

(assert (=> b!616833 m!885391))

(assert (=> b!616755 d!216644))

(declare-fun d!216648 () Bool)

(assert (=> d!216648 (= (head!1303 p!2908) (h!11607 p!2908))))

(assert (=> b!616744 d!216648))

(declare-fun d!216650 () Bool)

(assert (=> d!216650 (= (head!1303 input!3215) (h!11607 input!3215))))

(assert (=> b!616744 d!216650))

(declare-fun d!216652 () Bool)

(assert (=> d!216652 true))

(declare-fun order!4903 () Int)

(declare-fun lambda!16231 () Int)

(declare-fun order!4905 () Int)

(declare-fun dynLambda!3581 (Int Int) Int)

(declare-fun dynLambda!3582 (Int Int) Int)

(assert (=> d!216652 (< (dynLambda!3581 order!4903 (toChars!2021 (transformation!1251 r!3983))) (dynLambda!3582 order!4905 lambda!16231))))

(assert (=> d!216652 true))

(assert (=> d!216652 (< (dynLambda!3579 order!4899 (toValue!2162 (transformation!1251 r!3983))) (dynLambda!3582 order!4905 lambda!16231))))

(declare-fun Forall!309 (Int) Bool)

(assert (=> d!216652 (= (semiInverseModEq!504 (toChars!2021 (transformation!1251 r!3983)) (toValue!2162 (transformation!1251 r!3983))) (Forall!309 lambda!16231))))

(declare-fun bs!71834 () Bool)

(assert (= bs!71834 d!216652))

(declare-fun m!885401 () Bool)

(assert (=> bs!71834 m!885401))

(assert (=> d!216610 d!216652))

(declare-fun bs!71835 () Bool)

(declare-fun d!216660 () Bool)

(assert (= bs!71835 (and d!216660 d!216630)))

(declare-fun lambda!16232 () Int)

(assert (=> bs!71835 (= (= (toValue!2162 (transformation!1251 (h!11608 rules!3744))) (toValue!2162 (transformation!1251 r!3983))) (= lambda!16232 lambda!16225))))

(assert (=> d!216660 true))

(assert (=> d!216660 (< (dynLambda!3579 order!4899 (toValue!2162 (transformation!1251 (h!11608 rules!3744)))) (dynLambda!3580 order!4901 lambda!16232))))

(assert (=> d!216660 (= (equivClasses!487 (toChars!2021 (transformation!1251 (h!11608 rules!3744))) (toValue!2162 (transformation!1251 (h!11608 rules!3744)))) (Forall2!235 lambda!16232))))

(declare-fun bs!71836 () Bool)

(assert (= bs!71836 d!216660))

(declare-fun m!885403 () Bool)

(assert (=> bs!71836 m!885403))

(assert (=> b!616712 d!216660))

(declare-fun d!216662 () Bool)

(declare-fun lt!264451 () Int)

(assert (=> d!216662 (>= lt!264451 0)))

(declare-fun e!374095 () Int)

(assert (=> d!216662 (= lt!264451 e!374095)))

(declare-fun c!113758 () Bool)

(assert (=> d!216662 (= c!113758 ((_ is Nil!6206) input!3215))))

(assert (=> d!216662 (= (size!4857 input!3215) lt!264451)))

(declare-fun b!616881 () Bool)

(assert (=> b!616881 (= e!374095 0)))

(declare-fun b!616882 () Bool)

(assert (=> b!616882 (= e!374095 (+ 1 (size!4857 (t!81455 input!3215))))))

(assert (= (and d!216662 c!113758) b!616881))

(assert (= (and d!216662 (not c!113758)) b!616882))

(declare-fun m!885409 () Bool)

(assert (=> b!616882 m!885409))

(assert (=> b!616746 d!216662))

(declare-fun d!216664 () Bool)

(declare-fun lt!264452 () Int)

(assert (=> d!216664 (>= lt!264452 0)))

(declare-fun e!374096 () Int)

(assert (=> d!216664 (= lt!264452 e!374096)))

(declare-fun c!113759 () Bool)

(assert (=> d!216664 (= c!113759 ((_ is Nil!6206) p!2908))))

(assert (=> d!216664 (= (size!4857 p!2908) lt!264452)))

(declare-fun b!616883 () Bool)

(assert (=> b!616883 (= e!374096 0)))

(declare-fun b!616884 () Bool)

(assert (=> b!616884 (= e!374096 (+ 1 (size!4857 (t!81455 p!2908))))))

(assert (= (and d!216664 c!113759) b!616883))

(assert (= (and d!216664 (not c!113759)) b!616884))

(declare-fun m!885411 () Bool)

(assert (=> b!616884 m!885411))

(assert (=> b!616746 d!216664))

(declare-fun d!216666 () Bool)

(declare-fun res!268572 () Bool)

(declare-fun e!374101 () Bool)

(assert (=> d!216666 (=> res!268572 e!374101)))

(assert (=> d!216666 (= res!268572 ((_ is Nil!6207) rules!3744))))

(assert (=> d!216666 (= (forall!1565 rules!3744 lambda!16221) e!374101)))

(declare-fun b!616889 () Bool)

(declare-fun e!374102 () Bool)

(assert (=> b!616889 (= e!374101 e!374102)))

(declare-fun res!268573 () Bool)

(assert (=> b!616889 (=> (not res!268573) (not e!374102))))

(declare-fun dynLambda!3583 (Int Rule!2302) Bool)

(assert (=> b!616889 (= res!268573 (dynLambda!3583 lambda!16221 (h!11608 rules!3744)))))

(declare-fun b!616890 () Bool)

(assert (=> b!616890 (= e!374102 (forall!1565 (t!81456 rules!3744) lambda!16221))))

(assert (= (and d!216666 (not res!268572)) b!616889))

(assert (= (and b!616889 res!268573) b!616890))

(declare-fun b_lambda!24517 () Bool)

(assert (=> (not b_lambda!24517) (not b!616889)))

(declare-fun m!885413 () Bool)

(assert (=> b!616889 m!885413))

(declare-fun m!885415 () Bool)

(assert (=> b!616890 m!885415))

(assert (=> d!216612 d!216666))

(declare-fun b!616891 () Bool)

(declare-fun e!374103 () Bool)

(declare-fun e!374105 () Bool)

(assert (=> b!616891 (= e!374103 e!374105)))

(declare-fun res!268576 () Bool)

(assert (=> b!616891 (=> (not res!268576) (not e!374105))))

(assert (=> b!616891 (= res!268576 (not ((_ is Nil!6206) (tail!832 input!3215))))))

(declare-fun b!616892 () Bool)

(declare-fun res!268574 () Bool)

(assert (=> b!616892 (=> (not res!268574) (not e!374105))))

(assert (=> b!616892 (= res!268574 (= (head!1303 (tail!832 p!2908)) (head!1303 (tail!832 input!3215))))))

(declare-fun b!616894 () Bool)

(declare-fun e!374104 () Bool)

(assert (=> b!616894 (= e!374104 (>= (size!4857 (tail!832 input!3215)) (size!4857 (tail!832 p!2908))))))

(declare-fun d!216668 () Bool)

(assert (=> d!216668 e!374104))

(declare-fun res!268577 () Bool)

(assert (=> d!216668 (=> res!268577 e!374104)))

(declare-fun lt!264453 () Bool)

(assert (=> d!216668 (= res!268577 (not lt!264453))))

(assert (=> d!216668 (= lt!264453 e!374103)))

(declare-fun res!268575 () Bool)

(assert (=> d!216668 (=> res!268575 e!374103)))

(assert (=> d!216668 (= res!268575 ((_ is Nil!6206) (tail!832 p!2908)))))

(assert (=> d!216668 (= (isPrefix!881 (tail!832 p!2908) (tail!832 input!3215)) lt!264453)))

(declare-fun b!616893 () Bool)

(assert (=> b!616893 (= e!374105 (isPrefix!881 (tail!832 (tail!832 p!2908)) (tail!832 (tail!832 input!3215))))))

(assert (= (and d!216668 (not res!268575)) b!616891))

(assert (= (and b!616891 res!268576) b!616892))

(assert (= (and b!616892 res!268574) b!616893))

(assert (= (and d!216668 (not res!268577)) b!616894))

(assert (=> b!616892 m!885325))

(declare-fun m!885417 () Bool)

(assert (=> b!616892 m!885417))

(assert (=> b!616892 m!885327))

(declare-fun m!885419 () Bool)

(assert (=> b!616892 m!885419))

(assert (=> b!616894 m!885327))

(declare-fun m!885421 () Bool)

(assert (=> b!616894 m!885421))

(assert (=> b!616894 m!885325))

(declare-fun m!885423 () Bool)

(assert (=> b!616894 m!885423))

(assert (=> b!616893 m!885325))

(declare-fun m!885425 () Bool)

(assert (=> b!616893 m!885425))

(assert (=> b!616893 m!885327))

(declare-fun m!885427 () Bool)

(assert (=> b!616893 m!885427))

(assert (=> b!616893 m!885425))

(assert (=> b!616893 m!885427))

(declare-fun m!885429 () Bool)

(assert (=> b!616893 m!885429))

(assert (=> b!616745 d!216668))

(declare-fun d!216670 () Bool)

(assert (=> d!216670 (= (tail!832 p!2908) (t!81455 p!2908))))

(assert (=> b!616745 d!216670))

(declare-fun d!216672 () Bool)

(assert (=> d!216672 (= (tail!832 input!3215) (t!81455 input!3215))))

(assert (=> b!616745 d!216672))

(declare-fun bs!71837 () Bool)

(declare-fun d!216674 () Bool)

(assert (= bs!71837 (and d!216674 d!216652)))

(declare-fun lambda!16233 () Int)

(assert (=> bs!71837 (= (and (= (toChars!2021 (transformation!1251 (h!11608 rules!3744))) (toChars!2021 (transformation!1251 r!3983))) (= (toValue!2162 (transformation!1251 (h!11608 rules!3744))) (toValue!2162 (transformation!1251 r!3983)))) (= lambda!16233 lambda!16231))))

(assert (=> d!216674 true))

(assert (=> d!216674 (< (dynLambda!3581 order!4903 (toChars!2021 (transformation!1251 (h!11608 rules!3744)))) (dynLambda!3582 order!4905 lambda!16233))))

(assert (=> d!216674 true))

(assert (=> d!216674 (< (dynLambda!3579 order!4899 (toValue!2162 (transformation!1251 (h!11608 rules!3744)))) (dynLambda!3582 order!4905 lambda!16233))))

(assert (=> d!216674 (= (semiInverseModEq!504 (toChars!2021 (transformation!1251 (h!11608 rules!3744))) (toValue!2162 (transformation!1251 (h!11608 rules!3744)))) (Forall!309 lambda!16233))))

(declare-fun bs!71838 () Bool)

(assert (= bs!71838 d!216674))

(declare-fun m!885431 () Bool)

(assert (=> bs!71838 m!885431))

(assert (=> d!216604 d!216674))

(declare-fun bs!71839 () Bool)

(declare-fun d!216676 () Bool)

(assert (= bs!71839 (and d!216676 d!216612)))

(declare-fun lambda!16236 () Int)

(assert (=> bs!71839 (= lambda!16236 lambda!16221)))

(declare-fun bs!71840 () Bool)

(assert (= bs!71840 (and d!216676 d!216628)))

(assert (=> bs!71840 (= lambda!16236 lambda!16222)))

(assert (=> d!216676 true))

(declare-fun lt!264456 () Bool)

(assert (=> d!216676 (= lt!264456 (rulesValidInductive!474 thiss!25598 rules!3744))))

(assert (=> d!216676 (= lt!264456 (forall!1565 rules!3744 lambda!16236))))

(assert (=> d!216676 (= (rulesValid!467 thiss!25598 rules!3744) lt!264456)))

(declare-fun bs!71841 () Bool)

(assert (= bs!71841 d!216676))

(assert (=> bs!71841 m!885289))

(declare-fun m!885433 () Bool)

(assert (=> bs!71841 m!885433))

(assert (=> d!216626 d!216676))

(declare-fun b!616897 () Bool)

(declare-fun b_free!17701 () Bool)

(declare-fun b_next!17717 () Bool)

(assert (=> b!616897 (= b_free!17701 (not b_next!17717))))

(declare-fun tp!190722 () Bool)

(declare-fun b_and!61215 () Bool)

(assert (=> b!616897 (= tp!190722 b_and!61215)))

(declare-fun b_free!17703 () Bool)

(declare-fun b_next!17719 () Bool)

(assert (=> b!616897 (= b_free!17703 (not b_next!17719))))

(declare-fun tp!190721 () Bool)

(declare-fun b_and!61217 () Bool)

(assert (=> b!616897 (= tp!190721 b_and!61217)))

(declare-fun e!374107 () Bool)

(assert (=> b!616897 (= e!374107 (and tp!190722 tp!190721))))

(declare-fun b!616896 () Bool)

(declare-fun tp!190724 () Bool)

(declare-fun e!374108 () Bool)

(assert (=> b!616896 (= e!374108 (and tp!190724 (inv!7897 (tag!1513 (h!11608 (t!81456 (t!81456 rules!3744))))) (inv!7899 (transformation!1251 (h!11608 (t!81456 (t!81456 rules!3744))))) e!374107))))

(declare-fun b!616895 () Bool)

(declare-fun e!374109 () Bool)

(declare-fun tp!190723 () Bool)

(assert (=> b!616895 (= e!374109 (and e!374108 tp!190723))))

(assert (=> b!616787 (= tp!190682 e!374109)))

(assert (= b!616896 b!616897))

(assert (= b!616895 b!616896))

(assert (= (and b!616787 ((_ is Cons!6207) (t!81456 (t!81456 rules!3744)))) b!616895))

(declare-fun m!885435 () Bool)

(assert (=> b!616896 m!885435))

(declare-fun m!885437 () Bool)

(assert (=> b!616896 m!885437))

(declare-fun b!616899 () Bool)

(declare-fun e!374110 () Bool)

(declare-fun tp!190728 () Bool)

(declare-fun tp!190729 () Bool)

(assert (=> b!616899 (= e!374110 (and tp!190728 tp!190729))))

(declare-fun b!616900 () Bool)

(declare-fun tp!190727 () Bool)

(assert (=> b!616900 (= e!374110 tp!190727)))

(assert (=> b!616773 (= tp!190664 e!374110)))

(declare-fun b!616898 () Bool)

(assert (=> b!616898 (= e!374110 tp_is_empty!3529)))

(declare-fun b!616901 () Bool)

(declare-fun tp!190725 () Bool)

(declare-fun tp!190726 () Bool)

(assert (=> b!616901 (= e!374110 (and tp!190725 tp!190726))))

(assert (= (and b!616773 ((_ is ElementMatch!1585) (reg!1914 (regex!1251 (h!11608 rules!3744))))) b!616898))

(assert (= (and b!616773 ((_ is Concat!2861) (reg!1914 (regex!1251 (h!11608 rules!3744))))) b!616899))

(assert (= (and b!616773 ((_ is Star!1585) (reg!1914 (regex!1251 (h!11608 rules!3744))))) b!616900))

(assert (= (and b!616773 ((_ is Union!1585) (reg!1914 (regex!1251 (h!11608 rules!3744))))) b!616901))

(declare-fun b!616902 () Bool)

(declare-fun e!374111 () Bool)

(declare-fun tp!190730 () Bool)

(assert (=> b!616902 (= e!374111 (and tp_is_empty!3529 tp!190730))))

(assert (=> b!616790 (= tp!190684 e!374111)))

(assert (= (and b!616790 ((_ is Cons!6206) (t!81455 (t!81455 p!2908)))) b!616902))

(declare-fun b!616904 () Bool)

(declare-fun e!374112 () Bool)

(declare-fun tp!190734 () Bool)

(declare-fun tp!190735 () Bool)

(assert (=> b!616904 (= e!374112 (and tp!190734 tp!190735))))

(declare-fun b!616905 () Bool)

(declare-fun tp!190733 () Bool)

(assert (=> b!616905 (= e!374112 tp!190733)))

(assert (=> b!616777 (= tp!190669 e!374112)))

(declare-fun b!616903 () Bool)

(assert (=> b!616903 (= e!374112 tp_is_empty!3529)))

(declare-fun b!616906 () Bool)

(declare-fun tp!190731 () Bool)

(declare-fun tp!190732 () Bool)

(assert (=> b!616906 (= e!374112 (and tp!190731 tp!190732))))

(assert (= (and b!616777 ((_ is ElementMatch!1585) (reg!1914 (regex!1251 r!3983)))) b!616903))

(assert (= (and b!616777 ((_ is Concat!2861) (reg!1914 (regex!1251 r!3983)))) b!616904))

(assert (= (and b!616777 ((_ is Star!1585) (reg!1914 (regex!1251 r!3983)))) b!616905))

(assert (= (and b!616777 ((_ is Union!1585) (reg!1914 (regex!1251 r!3983)))) b!616906))

(declare-fun b!616908 () Bool)

(declare-fun e!374113 () Bool)

(declare-fun tp!190739 () Bool)

(declare-fun tp!190740 () Bool)

(assert (=> b!616908 (= e!374113 (and tp!190739 tp!190740))))

(declare-fun b!616909 () Bool)

(declare-fun tp!190738 () Bool)

(assert (=> b!616909 (= e!374113 tp!190738)))

(assert (=> b!616772 (= tp!190665 e!374113)))

(declare-fun b!616907 () Bool)

(assert (=> b!616907 (= e!374113 tp_is_empty!3529)))

(declare-fun b!616910 () Bool)

(declare-fun tp!190736 () Bool)

(declare-fun tp!190737 () Bool)

(assert (=> b!616910 (= e!374113 (and tp!190736 tp!190737))))

(assert (= (and b!616772 ((_ is ElementMatch!1585) (regOne!3682 (regex!1251 (h!11608 rules!3744))))) b!616907))

(assert (= (and b!616772 ((_ is Concat!2861) (regOne!3682 (regex!1251 (h!11608 rules!3744))))) b!616908))

(assert (= (and b!616772 ((_ is Star!1585) (regOne!3682 (regex!1251 (h!11608 rules!3744))))) b!616909))

(assert (= (and b!616772 ((_ is Union!1585) (regOne!3682 (regex!1251 (h!11608 rules!3744))))) b!616910))

(declare-fun b!616912 () Bool)

(declare-fun e!374114 () Bool)

(declare-fun tp!190744 () Bool)

(declare-fun tp!190745 () Bool)

(assert (=> b!616912 (= e!374114 (and tp!190744 tp!190745))))

(declare-fun b!616913 () Bool)

(declare-fun tp!190743 () Bool)

(assert (=> b!616913 (= e!374114 tp!190743)))

(assert (=> b!616772 (= tp!190666 e!374114)))

(declare-fun b!616911 () Bool)

(assert (=> b!616911 (= e!374114 tp_is_empty!3529)))

(declare-fun b!616914 () Bool)

(declare-fun tp!190741 () Bool)

(declare-fun tp!190742 () Bool)

(assert (=> b!616914 (= e!374114 (and tp!190741 tp!190742))))

(assert (= (and b!616772 ((_ is ElementMatch!1585) (regTwo!3682 (regex!1251 (h!11608 rules!3744))))) b!616911))

(assert (= (and b!616772 ((_ is Concat!2861) (regTwo!3682 (regex!1251 (h!11608 rules!3744))))) b!616912))

(assert (= (and b!616772 ((_ is Star!1585) (regTwo!3682 (regex!1251 (h!11608 rules!3744))))) b!616913))

(assert (= (and b!616772 ((_ is Union!1585) (regTwo!3682 (regex!1251 (h!11608 rules!3744))))) b!616914))

(declare-fun b!616916 () Bool)

(declare-fun e!374115 () Bool)

(declare-fun tp!190749 () Bool)

(declare-fun tp!190750 () Bool)

(assert (=> b!616916 (= e!374115 (and tp!190749 tp!190750))))

(declare-fun b!616917 () Bool)

(declare-fun tp!190748 () Bool)

(assert (=> b!616917 (= e!374115 tp!190748)))

(assert (=> b!616788 (= tp!190683 e!374115)))

(declare-fun b!616915 () Bool)

(assert (=> b!616915 (= e!374115 tp_is_empty!3529)))

(declare-fun b!616918 () Bool)

(declare-fun tp!190746 () Bool)

(declare-fun tp!190747 () Bool)

(assert (=> b!616918 (= e!374115 (and tp!190746 tp!190747))))

(assert (= (and b!616788 ((_ is ElementMatch!1585) (regex!1251 (h!11608 (t!81456 rules!3744))))) b!616915))

(assert (= (and b!616788 ((_ is Concat!2861) (regex!1251 (h!11608 (t!81456 rules!3744))))) b!616916))

(assert (= (and b!616788 ((_ is Star!1585) (regex!1251 (h!11608 (t!81456 rules!3744))))) b!616917))

(assert (= (and b!616788 ((_ is Union!1585) (regex!1251 (h!11608 (t!81456 rules!3744))))) b!616918))

(declare-fun b!616920 () Bool)

(declare-fun e!374116 () Bool)

(declare-fun tp!190754 () Bool)

(declare-fun tp!190755 () Bool)

(assert (=> b!616920 (= e!374116 (and tp!190754 tp!190755))))

(declare-fun b!616921 () Bool)

(declare-fun tp!190753 () Bool)

(assert (=> b!616921 (= e!374116 tp!190753)))

(assert (=> b!616774 (= tp!190662 e!374116)))

(declare-fun b!616919 () Bool)

(assert (=> b!616919 (= e!374116 tp_is_empty!3529)))

(declare-fun b!616922 () Bool)

(declare-fun tp!190751 () Bool)

(declare-fun tp!190752 () Bool)

(assert (=> b!616922 (= e!374116 (and tp!190751 tp!190752))))

(assert (= (and b!616774 ((_ is ElementMatch!1585) (regOne!3683 (regex!1251 (h!11608 rules!3744))))) b!616919))

(assert (= (and b!616774 ((_ is Concat!2861) (regOne!3683 (regex!1251 (h!11608 rules!3744))))) b!616920))

(assert (= (and b!616774 ((_ is Star!1585) (regOne!3683 (regex!1251 (h!11608 rules!3744))))) b!616921))

(assert (= (and b!616774 ((_ is Union!1585) (regOne!3683 (regex!1251 (h!11608 rules!3744))))) b!616922))

(declare-fun b!616924 () Bool)

(declare-fun e!374117 () Bool)

(declare-fun tp!190759 () Bool)

(declare-fun tp!190760 () Bool)

(assert (=> b!616924 (= e!374117 (and tp!190759 tp!190760))))

(declare-fun b!616925 () Bool)

(declare-fun tp!190758 () Bool)

(assert (=> b!616925 (= e!374117 tp!190758)))

(assert (=> b!616774 (= tp!190663 e!374117)))

(declare-fun b!616923 () Bool)

(assert (=> b!616923 (= e!374117 tp_is_empty!3529)))

(declare-fun b!616926 () Bool)

(declare-fun tp!190756 () Bool)

(declare-fun tp!190757 () Bool)

(assert (=> b!616926 (= e!374117 (and tp!190756 tp!190757))))

(assert (= (and b!616774 ((_ is ElementMatch!1585) (regTwo!3683 (regex!1251 (h!11608 rules!3744))))) b!616923))

(assert (= (and b!616774 ((_ is Concat!2861) (regTwo!3683 (regex!1251 (h!11608 rules!3744))))) b!616924))

(assert (= (and b!616774 ((_ is Star!1585) (regTwo!3683 (regex!1251 (h!11608 rules!3744))))) b!616925))

(assert (= (and b!616774 ((_ is Union!1585) (regTwo!3683 (regex!1251 (h!11608 rules!3744))))) b!616926))

(declare-fun b!616928 () Bool)

(declare-fun e!374118 () Bool)

(declare-fun tp!190764 () Bool)

(declare-fun tp!190765 () Bool)

(assert (=> b!616928 (= e!374118 (and tp!190764 tp!190765))))

(declare-fun b!616929 () Bool)

(declare-fun tp!190763 () Bool)

(assert (=> b!616929 (= e!374118 tp!190763)))

(assert (=> b!616778 (= tp!190667 e!374118)))

(declare-fun b!616927 () Bool)

(assert (=> b!616927 (= e!374118 tp_is_empty!3529)))

(declare-fun b!616930 () Bool)

(declare-fun tp!190761 () Bool)

(declare-fun tp!190762 () Bool)

(assert (=> b!616930 (= e!374118 (and tp!190761 tp!190762))))

(assert (= (and b!616778 ((_ is ElementMatch!1585) (regOne!3683 (regex!1251 r!3983)))) b!616927))

(assert (= (and b!616778 ((_ is Concat!2861) (regOne!3683 (regex!1251 r!3983)))) b!616928))

(assert (= (and b!616778 ((_ is Star!1585) (regOne!3683 (regex!1251 r!3983)))) b!616929))

(assert (= (and b!616778 ((_ is Union!1585) (regOne!3683 (regex!1251 r!3983)))) b!616930))

(declare-fun b!616932 () Bool)

(declare-fun e!374119 () Bool)

(declare-fun tp!190769 () Bool)

(declare-fun tp!190770 () Bool)

(assert (=> b!616932 (= e!374119 (and tp!190769 tp!190770))))

(declare-fun b!616933 () Bool)

(declare-fun tp!190768 () Bool)

(assert (=> b!616933 (= e!374119 tp!190768)))

(assert (=> b!616778 (= tp!190668 e!374119)))

(declare-fun b!616931 () Bool)

(assert (=> b!616931 (= e!374119 tp_is_empty!3529)))

(declare-fun b!616934 () Bool)

(declare-fun tp!190766 () Bool)

(declare-fun tp!190767 () Bool)

(assert (=> b!616934 (= e!374119 (and tp!190766 tp!190767))))

(assert (= (and b!616778 ((_ is ElementMatch!1585) (regTwo!3683 (regex!1251 r!3983)))) b!616931))

(assert (= (and b!616778 ((_ is Concat!2861) (regTwo!3683 (regex!1251 r!3983)))) b!616932))

(assert (= (and b!616778 ((_ is Star!1585) (regTwo!3683 (regex!1251 r!3983)))) b!616933))

(assert (= (and b!616778 ((_ is Union!1585) (regTwo!3683 (regex!1251 r!3983)))) b!616934))

(declare-fun b!616935 () Bool)

(declare-fun e!374120 () Bool)

(declare-fun tp!190771 () Bool)

(assert (=> b!616935 (= e!374120 (and tp_is_empty!3529 tp!190771))))

(assert (=> b!616760 (= tp!190651 e!374120)))

(assert (= (and b!616760 ((_ is Cons!6206) (t!81455 (t!81455 input!3215)))) b!616935))

(declare-fun b!616937 () Bool)

(declare-fun e!374121 () Bool)

(declare-fun tp!190775 () Bool)

(declare-fun tp!190776 () Bool)

(assert (=> b!616937 (= e!374121 (and tp!190775 tp!190776))))

(declare-fun b!616938 () Bool)

(declare-fun tp!190774 () Bool)

(assert (=> b!616938 (= e!374121 tp!190774)))

(assert (=> b!616776 (= tp!190670 e!374121)))

(declare-fun b!616936 () Bool)

(assert (=> b!616936 (= e!374121 tp_is_empty!3529)))

(declare-fun b!616939 () Bool)

(declare-fun tp!190772 () Bool)

(declare-fun tp!190773 () Bool)

(assert (=> b!616939 (= e!374121 (and tp!190772 tp!190773))))

(assert (= (and b!616776 ((_ is ElementMatch!1585) (regOne!3682 (regex!1251 r!3983)))) b!616936))

(assert (= (and b!616776 ((_ is Concat!2861) (regOne!3682 (regex!1251 r!3983)))) b!616937))

(assert (= (and b!616776 ((_ is Star!1585) (regOne!3682 (regex!1251 r!3983)))) b!616938))

(assert (= (and b!616776 ((_ is Union!1585) (regOne!3682 (regex!1251 r!3983)))) b!616939))

(declare-fun b!616941 () Bool)

(declare-fun e!374122 () Bool)

(declare-fun tp!190780 () Bool)

(declare-fun tp!190781 () Bool)

(assert (=> b!616941 (= e!374122 (and tp!190780 tp!190781))))

(declare-fun b!616942 () Bool)

(declare-fun tp!190779 () Bool)

(assert (=> b!616942 (= e!374122 tp!190779)))

(assert (=> b!616776 (= tp!190671 e!374122)))

(declare-fun b!616940 () Bool)

(assert (=> b!616940 (= e!374122 tp_is_empty!3529)))

(declare-fun b!616943 () Bool)

(declare-fun tp!190777 () Bool)

(declare-fun tp!190778 () Bool)

(assert (=> b!616943 (= e!374122 (and tp!190777 tp!190778))))

(assert (= (and b!616776 ((_ is ElementMatch!1585) (regTwo!3682 (regex!1251 r!3983)))) b!616940))

(assert (= (and b!616776 ((_ is Concat!2861) (regTwo!3682 (regex!1251 r!3983)))) b!616941))

(assert (= (and b!616776 ((_ is Star!1585) (regTwo!3682 (regex!1251 r!3983)))) b!616942))

(assert (= (and b!616776 ((_ is Union!1585) (regTwo!3682 (regex!1251 r!3983)))) b!616943))

(declare-fun b_lambda!24519 () Bool)

(assert (= b_lambda!24517 (or d!216612 b_lambda!24519)))

(declare-fun bs!71842 () Bool)

(declare-fun d!216678 () Bool)

(assert (= bs!71842 (and d!216678 d!216612)))

(assert (=> bs!71842 (= (dynLambda!3583 lambda!16221 (h!11608 rules!3744)) (ruleValid!436 thiss!25598 (h!11608 rules!3744)))))

(assert (=> bs!71842 m!885313))

(assert (=> b!616889 d!216678))

(check-sat (not b!616817) (not b!616913) (not b!616933) (not d!216652) (not b_lambda!24519) (not b!616904) (not b!616912) (not b!616895) b_and!61207 (not b!616939) (not b!616925) (not b!616938) (not b!616914) (not d!216642) (not b_next!17717) (not b!616922) b_and!61205 (not b!616899) b_and!61215 b_and!61201 (not b!616905) (not b_next!17707) (not b!616908) (not b!616792) (not b!616884) (not b!616921) (not b!616832) (not b!616833) (not d!216638) (not d!216674) (not b!616930) (not b!616917) (not b!616935) (not d!216628) (not b!616937) (not b!616812) (not d!216676) (not b!616943) (not b!616928) (not b!616926) (not b!616900) tp_is_empty!3529 (not b_next!17709) (not b!616893) (not b!616882) (not b!616920) (not b!616802) (not b_next!17701) (not b!616941) (not b!616924) (not b!616929) (not b_next!17719) (not b!616894) (not b_next!17705) b_and!61209 (not b!616918) (not b!616791) b_and!61199 (not d!216636) b_and!61203 (not bs!71842) (not d!216660) (not b!616934) (not b!616902) (not b!616916) (not b_next!17703) (not d!216630) b_and!61217 (not b!616892) (not b!616932) (not b!616890) (not b!616942) (not b!616909) (not b!616901) (not b!616803) (not b!616910) (not b!616896) (not b!616906) (not b_next!17711))
(check-sat b_and!61207 (not b_next!17717) (not b_next!17709) (not b_next!17701) (not b_next!17719) (not b_next!17703) b_and!61217 (not b_next!17711) b_and!61205 b_and!61215 b_and!61201 (not b_next!17707) (not b_next!17705) b_and!61209 b_and!61199 b_and!61203)
