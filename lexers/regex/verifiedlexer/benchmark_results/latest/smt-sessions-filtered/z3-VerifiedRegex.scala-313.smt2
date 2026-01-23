; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!9754 () Bool)

(assert start!9754)

(declare-fun b!101051 () Bool)

(declare-fun b_free!3025 () Bool)

(declare-fun b_next!3025 () Bool)

(assert (=> b!101051 (= b_free!3025 (not b_next!3025))))

(declare-fun tp!57006 () Bool)

(declare-fun b_and!4543 () Bool)

(assert (=> b!101051 (= tp!57006 b_and!4543)))

(declare-fun b_free!3027 () Bool)

(declare-fun b_next!3027 () Bool)

(assert (=> b!101051 (= b_free!3027 (not b_next!3027))))

(declare-fun tp!57004 () Bool)

(declare-fun b_and!4545 () Bool)

(assert (=> b!101051 (= tp!57004 b_and!4545)))

(declare-fun b!101050 () Bool)

(declare-fun res!49001 () Bool)

(declare-fun e!56053 () Bool)

(assert (=> b!101050 (=> (not res!49001) (not e!56053))))

(declare-datatypes ((List!1639 0))(
  ( (Nil!1633) (Cons!1633 (h!7030 (_ BitVec 16)) (t!21284 List!1639)) )
))
(declare-datatypes ((TokenValue!347 0))(
  ( (FloatLiteralValue!694 (text!2874 List!1639)) (TokenValueExt!346 (__x!1789 Int)) (Broken!1735 (value!13039 List!1639)) (Object!352) (End!347) (Def!347) (Underscore!347) (Match!347) (Else!347) (Error!347) (Case!347) (If!347) (Extends!347) (Abstract!347) (Class!347) (Val!347) (DelimiterValue!694 (del!407 List!1639)) (KeywordValue!353 (value!13040 List!1639)) (CommentValue!694 (value!13041 List!1639)) (WhitespaceValue!694 (value!13042 List!1639)) (IndentationValue!347 (value!13043 List!1639)) (String!2126) (Int32!347) (Broken!1736 (value!13044 List!1639)) (Boolean!348) (Unit!1091) (OperatorValue!350 (op!407 List!1639)) (IdentifierValue!694 (value!13045 List!1639)) (IdentifierValue!695 (value!13046 List!1639)) (WhitespaceValue!695 (value!13047 List!1639)) (True!694) (False!694) (Broken!1737 (value!13048 List!1639)) (Broken!1738 (value!13049 List!1639)) (True!695) (RightBrace!347) (RightBracket!347) (Colon!347) (Null!347) (Comma!347) (LeftBracket!347) (False!695) (LeftBrace!347) (ImaginaryLiteralValue!347 (text!2875 List!1639)) (StringLiteralValue!1041 (value!13050 List!1639)) (EOFValue!347 (value!13051 List!1639)) (IdentValue!347 (value!13052 List!1639)) (DelimiterValue!695 (value!13053 List!1639)) (DedentValue!347 (value!13054 List!1639)) (NewLineValue!347 (value!13055 List!1639)) (IntegerValue!1041 (value!13056 (_ BitVec 32)) (text!2876 List!1639)) (IntegerValue!1042 (value!13057 Int) (text!2877 List!1639)) (Times!347) (Or!347) (Equal!347) (Minus!347) (Broken!1739 (value!13058 List!1639)) (And!347) (Div!347) (LessEqual!347) (Mod!347) (Concat!772) (Not!347) (Plus!347) (SpaceValue!347 (value!13059 List!1639)) (IntegerValue!1043 (value!13060 Int) (text!2878 List!1639)) (StringLiteralValue!1042 (text!2879 List!1639)) (FloatLiteralValue!695 (text!2880 List!1639)) (BytesLiteralValue!347 (value!13061 List!1639)) (CommentValue!695 (value!13062 List!1639)) (StringLiteralValue!1043 (value!13063 List!1639)) (ErrorTokenValue!347 (msg!408 List!1639)) )
))
(declare-datatypes ((C!1772 0))(
  ( (C!1773 (val!493 Int)) )
))
(declare-datatypes ((List!1640 0))(
  ( (Nil!1634) (Cons!1634 (h!7031 C!1772) (t!21285 List!1640)) )
))
(declare-datatypes ((IArray!1023 0))(
  ( (IArray!1024 (innerList!569 List!1640)) )
))
(declare-datatypes ((Conc!511 0))(
  ( (Node!511 (left!1246 Conc!511) (right!1576 Conc!511) (csize!1252 Int) (cheight!722 Int)) (Leaf!825 (xs!3098 IArray!1023) (csize!1253 Int)) (Empty!511) )
))
(declare-datatypes ((BalanceConc!1026 0))(
  ( (BalanceConc!1027 (c!24635 Conc!511)) )
))
(declare-datatypes ((Regex!425 0))(
  ( (ElementMatch!425 (c!24636 C!1772)) (Concat!773 (regOne!1362 Regex!425) (regTwo!1362 Regex!425)) (EmptyExpr!425) (Star!425 (reg!754 Regex!425)) (EmptyLang!425) (Union!425 (regOne!1363 Regex!425) (regTwo!1363 Regex!425)) )
))
(declare-datatypes ((String!2127 0))(
  ( (String!2128 (value!13064 String)) )
))
(declare-datatypes ((TokenValueInjection!518 0))(
  ( (TokenValueInjection!519 (toValue!924 Int) (toChars!783 Int)) )
))
(declare-datatypes ((Rule!514 0))(
  ( (Rule!515 (regex!357 Regex!425) (tag!535 String!2127) (isSeparator!357 Bool) (transformation!357 TokenValueInjection!518)) )
))
(declare-datatypes ((List!1641 0))(
  ( (Nil!1635) (Cons!1635 (h!7032 Rule!514) (t!21286 List!1641)) )
))
(declare-fun rules!1152 () List!1641)

(declare-fun isEmpty!730 (List!1641) Bool)

(assert (=> b!101050 (= res!49001 (not (isEmpty!730 rules!1152)))))

(declare-fun e!56051 () Bool)

(assert (=> b!101051 (= e!56051 (and tp!57006 tp!57004))))

(declare-fun b!101052 () Bool)

(declare-fun e!56056 () Bool)

(declare-fun input!576 () BalanceConc!1026)

(declare-fun tp!57005 () Bool)

(declare-fun inv!1976 (Conc!511) Bool)

(assert (=> b!101052 (= e!56056 (and (inv!1976 (c!24635 input!576)) tp!57005))))

(declare-fun b!101053 () Bool)

(declare-fun lt!28152 () List!1640)

(declare-fun lt!28151 () List!1640)

(declare-fun ++!256 (List!1640 List!1640) List!1640)

(assert (=> b!101053 (= e!56053 (not (= lt!28152 (++!256 lt!28151 lt!28152))))))

(declare-fun list!665 (BalanceConc!1026) List!1640)

(assert (=> b!101053 (= lt!28152 (list!665 input!576))))

(assert (=> b!101053 (= lt!28151 (list!665 (BalanceConc!1027 Empty!511)))))

(declare-fun b!101055 () Bool)

(declare-fun res!49003 () Bool)

(assert (=> b!101055 (=> (not res!49003) (not e!56053))))

(declare-datatypes ((LexerInterface!249 0))(
  ( (LexerInterfaceExt!246 (__x!1790 Int)) (Lexer!247) )
))
(declare-fun thiss!11428 () LexerInterface!249)

(declare-fun rulesInvariant!243 (LexerInterface!249 List!1641) Bool)

(assert (=> b!101055 (= res!49003 (rulesInvariant!243 thiss!11428 rules!1152))))

(declare-fun b!101056 () Bool)

(declare-fun e!56052 () Bool)

(declare-fun e!56055 () Bool)

(declare-fun tp!57007 () Bool)

(assert (=> b!101056 (= e!56052 (and e!56055 tp!57007))))

(declare-fun b!101054 () Bool)

(declare-fun tp!57008 () Bool)

(declare-fun inv!1972 (String!2127) Bool)

(declare-fun inv!1977 (TokenValueInjection!518) Bool)

(assert (=> b!101054 (= e!56055 (and tp!57008 (inv!1972 (tag!535 (h!7032 rules!1152))) (inv!1977 (transformation!357 (h!7032 rules!1152))) e!56051))))

(declare-fun res!49002 () Bool)

(assert (=> start!9754 (=> (not res!49002) (not e!56053))))

(get-info :version)

(assert (=> start!9754 (= res!49002 ((_ is Lexer!247) thiss!11428))))

(assert (=> start!9754 e!56053))

(assert (=> start!9754 true))

(assert (=> start!9754 e!56052))

(declare-fun inv!1978 (BalanceConc!1026) Bool)

(assert (=> start!9754 (and (inv!1978 input!576) e!56056)))

(assert (= (and start!9754 res!49002) b!101050))

(assert (= (and b!101050 res!49001) b!101055))

(assert (= (and b!101055 res!49003) b!101053))

(assert (= b!101054 b!101051))

(assert (= b!101056 b!101054))

(assert (= (and start!9754 ((_ is Cons!1635) rules!1152)) b!101056))

(assert (= start!9754 b!101052))

(declare-fun m!87472 () Bool)

(assert (=> b!101055 m!87472))

(declare-fun m!87474 () Bool)

(assert (=> b!101052 m!87474))

(declare-fun m!87476 () Bool)

(assert (=> b!101053 m!87476))

(declare-fun m!87478 () Bool)

(assert (=> b!101053 m!87478))

(declare-fun m!87480 () Bool)

(assert (=> b!101053 m!87480))

(declare-fun m!87482 () Bool)

(assert (=> b!101054 m!87482))

(declare-fun m!87484 () Bool)

(assert (=> b!101054 m!87484))

(declare-fun m!87486 () Bool)

(assert (=> b!101050 m!87486))

(declare-fun m!87488 () Bool)

(assert (=> start!9754 m!87488))

(check-sat b_and!4545 (not b!101052) (not b_next!3027) (not b!101055) (not b!101054) (not b!101050) (not start!9754) (not b_next!3025) (not b!101053) b_and!4543 (not b!101056))
(check-sat b_and!4545 b_and!4543 (not b_next!3027) (not b_next!3025))
(get-model)

(declare-fun d!23958 () Bool)

(assert (=> d!23958 (= (isEmpty!730 rules!1152) ((_ is Nil!1635) rules!1152))))

(assert (=> b!101050 d!23958))

(declare-fun d!23962 () Bool)

(declare-fun res!49008 () Bool)

(declare-fun e!56061 () Bool)

(assert (=> d!23962 (=> (not res!49008) (not e!56061))))

(declare-fun rulesValid!96 (LexerInterface!249 List!1641) Bool)

(assert (=> d!23962 (= res!49008 (rulesValid!96 thiss!11428 rules!1152))))

(assert (=> d!23962 (= (rulesInvariant!243 thiss!11428 rules!1152) e!56061)))

(declare-fun b!101061 () Bool)

(declare-datatypes ((List!1642 0))(
  ( (Nil!1636) (Cons!1636 (h!7033 String!2127) (t!21287 List!1642)) )
))
(declare-fun noDuplicateTag!96 (LexerInterface!249 List!1641 List!1642) Bool)

(assert (=> b!101061 (= e!56061 (noDuplicateTag!96 thiss!11428 rules!1152 Nil!1636))))

(assert (= (and d!23962 res!49008) b!101061))

(declare-fun m!87490 () Bool)

(assert (=> d!23962 m!87490))

(declare-fun m!87492 () Bool)

(assert (=> b!101061 m!87492))

(assert (=> b!101055 d!23962))

(declare-fun d!23966 () Bool)

(declare-fun isBalanced!133 (Conc!511) Bool)

(assert (=> d!23966 (= (inv!1978 input!576) (isBalanced!133 (c!24635 input!576)))))

(declare-fun bs!9909 () Bool)

(assert (= bs!9909 d!23966))

(declare-fun m!87498 () Bool)

(assert (=> bs!9909 m!87498))

(assert (=> start!9754 d!23966))

(declare-fun d!23972 () Bool)

(assert (=> d!23972 (= (inv!1972 (tag!535 (h!7032 rules!1152))) (= (mod (str.len (value!13064 (tag!535 (h!7032 rules!1152)))) 2) 0))))

(assert (=> b!101054 d!23972))

(declare-fun d!23974 () Bool)

(declare-fun res!49015 () Bool)

(declare-fun e!56068 () Bool)

(assert (=> d!23974 (=> (not res!49015) (not e!56068))))

(declare-fun semiInverseModEq!89 (Int Int) Bool)

(assert (=> d!23974 (= res!49015 (semiInverseModEq!89 (toChars!783 (transformation!357 (h!7032 rules!1152))) (toValue!924 (transformation!357 (h!7032 rules!1152)))))))

(assert (=> d!23974 (= (inv!1977 (transformation!357 (h!7032 rules!1152))) e!56068)))

(declare-fun b!101068 () Bool)

(declare-fun equivClasses!84 (Int Int) Bool)

(assert (=> b!101068 (= e!56068 (equivClasses!84 (toChars!783 (transformation!357 (h!7032 rules!1152))) (toValue!924 (transformation!357 (h!7032 rules!1152)))))))

(assert (= (and d!23974 res!49015) b!101068))

(declare-fun m!87506 () Bool)

(assert (=> d!23974 m!87506))

(declare-fun m!87508 () Bool)

(assert (=> b!101068 m!87508))

(assert (=> b!101054 d!23974))

(declare-fun lt!28155 () List!1640)

(declare-fun e!56079 () Bool)

(declare-fun b!101089 () Bool)

(assert (=> b!101089 (= e!56079 (or (not (= lt!28152 Nil!1634)) (= lt!28155 lt!28151)))))

(declare-fun d!23980 () Bool)

(assert (=> d!23980 e!56079))

(declare-fun res!49024 () Bool)

(assert (=> d!23980 (=> (not res!49024) (not e!56079))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!129 (List!1640) (InoxSet C!1772))

(assert (=> d!23980 (= res!49024 (= (content!129 lt!28155) ((_ map or) (content!129 lt!28151) (content!129 lt!28152))))))

(declare-fun e!56080 () List!1640)

(assert (=> d!23980 (= lt!28155 e!56080)))

(declare-fun c!24642 () Bool)

(assert (=> d!23980 (= c!24642 ((_ is Nil!1634) lt!28151))))

(assert (=> d!23980 (= (++!256 lt!28151 lt!28152) lt!28155)))

(declare-fun b!101087 () Bool)

(assert (=> b!101087 (= e!56080 (Cons!1634 (h!7031 lt!28151) (++!256 (t!21285 lt!28151) lt!28152)))))

(declare-fun b!101086 () Bool)

(assert (=> b!101086 (= e!56080 lt!28152)))

(declare-fun b!101088 () Bool)

(declare-fun res!49023 () Bool)

(assert (=> b!101088 (=> (not res!49023) (not e!56079))))

(declare-fun size!1443 (List!1640) Int)

(assert (=> b!101088 (= res!49023 (= (size!1443 lt!28155) (+ (size!1443 lt!28151) (size!1443 lt!28152))))))

(assert (= (and d!23980 c!24642) b!101086))

(assert (= (and d!23980 (not c!24642)) b!101087))

(assert (= (and d!23980 res!49024) b!101088))

(assert (= (and b!101088 res!49023) b!101089))

(declare-fun m!87514 () Bool)

(assert (=> d!23980 m!87514))

(declare-fun m!87516 () Bool)

(assert (=> d!23980 m!87516))

(declare-fun m!87518 () Bool)

(assert (=> d!23980 m!87518))

(declare-fun m!87520 () Bool)

(assert (=> b!101087 m!87520))

(declare-fun m!87522 () Bool)

(assert (=> b!101088 m!87522))

(declare-fun m!87524 () Bool)

(assert (=> b!101088 m!87524))

(declare-fun m!87526 () Bool)

(assert (=> b!101088 m!87526))

(assert (=> b!101053 d!23980))

(declare-fun d!23984 () Bool)

(declare-fun list!666 (Conc!511) List!1640)

(assert (=> d!23984 (= (list!665 input!576) (list!666 (c!24635 input!576)))))

(declare-fun bs!9911 () Bool)

(assert (= bs!9911 d!23984))

(declare-fun m!87528 () Bool)

(assert (=> bs!9911 m!87528))

(assert (=> b!101053 d!23984))

(declare-fun d!23986 () Bool)

(assert (=> d!23986 (= (list!665 (BalanceConc!1027 Empty!511)) (list!666 (c!24635 (BalanceConc!1027 Empty!511))))))

(declare-fun bs!9912 () Bool)

(assert (= bs!9912 d!23986))

(declare-fun m!87530 () Bool)

(assert (=> bs!9912 m!87530))

(assert (=> b!101053 d!23986))

(declare-fun d!23988 () Bool)

(declare-fun c!24648 () Bool)

(assert (=> d!23988 (= c!24648 ((_ is Node!511) (c!24635 input!576)))))

(declare-fun e!56091 () Bool)

(assert (=> d!23988 (= (inv!1976 (c!24635 input!576)) e!56091)))

(declare-fun b!101108 () Bool)

(declare-fun inv!1981 (Conc!511) Bool)

(assert (=> b!101108 (= e!56091 (inv!1981 (c!24635 input!576)))))

(declare-fun b!101109 () Bool)

(declare-fun e!56092 () Bool)

(assert (=> b!101109 (= e!56091 e!56092)))

(declare-fun res!49033 () Bool)

(assert (=> b!101109 (= res!49033 (not ((_ is Leaf!825) (c!24635 input!576))))))

(assert (=> b!101109 (=> res!49033 e!56092)))

(declare-fun b!101110 () Bool)

(declare-fun inv!1982 (Conc!511) Bool)

(assert (=> b!101110 (= e!56092 (inv!1982 (c!24635 input!576)))))

(assert (= (and d!23988 c!24648) b!101108))

(assert (= (and d!23988 (not c!24648)) b!101109))

(assert (= (and b!101109 (not res!49033)) b!101110))

(declare-fun m!87550 () Bool)

(assert (=> b!101108 m!87550))

(declare-fun m!87552 () Bool)

(assert (=> b!101110 m!87552))

(assert (=> b!101052 d!23988))

(declare-fun b!101135 () Bool)

(declare-fun e!56098 () Bool)

(declare-fun tp_is_empty!769 () Bool)

(assert (=> b!101135 (= e!56098 tp_is_empty!769)))

(declare-fun b!101138 () Bool)

(declare-fun tp!57037 () Bool)

(declare-fun tp!57038 () Bool)

(assert (=> b!101138 (= e!56098 (and tp!57037 tp!57038))))

(assert (=> b!101054 (= tp!57008 e!56098)))

(declare-fun b!101136 () Bool)

(declare-fun tp!57035 () Bool)

(declare-fun tp!57036 () Bool)

(assert (=> b!101136 (= e!56098 (and tp!57035 tp!57036))))

(declare-fun b!101137 () Bool)

(declare-fun tp!57034 () Bool)

(assert (=> b!101137 (= e!56098 tp!57034)))

(assert (= (and b!101054 ((_ is ElementMatch!425) (regex!357 (h!7032 rules!1152)))) b!101135))

(assert (= (and b!101054 ((_ is Concat!773) (regex!357 (h!7032 rules!1152)))) b!101136))

(assert (= (and b!101054 ((_ is Star!425) (regex!357 (h!7032 rules!1152)))) b!101137))

(assert (= (and b!101054 ((_ is Union!425) (regex!357 (h!7032 rules!1152)))) b!101138))

(declare-fun tp!57056 () Bool)

(declare-fun tp!57055 () Bool)

(declare-fun b!101158 () Bool)

(declare-fun e!56110 () Bool)

(assert (=> b!101158 (= e!56110 (and (inv!1976 (left!1246 (c!24635 input!576))) tp!57055 (inv!1976 (right!1576 (c!24635 input!576))) tp!57056))))

(declare-fun b!101160 () Bool)

(declare-fun e!56109 () Bool)

(declare-fun tp!57054 () Bool)

(assert (=> b!101160 (= e!56109 tp!57054)))

(declare-fun b!101159 () Bool)

(declare-fun inv!1984 (IArray!1023) Bool)

(assert (=> b!101159 (= e!56110 (and (inv!1984 (xs!3098 (c!24635 input!576))) e!56109))))

(assert (=> b!101052 (= tp!57005 (and (inv!1976 (c!24635 input!576)) e!56110))))

(assert (= (and b!101052 ((_ is Node!511) (c!24635 input!576))) b!101158))

(assert (= b!101159 b!101160))

(assert (= (and b!101052 ((_ is Leaf!825) (c!24635 input!576))) b!101159))

(declare-fun m!87560 () Bool)

(assert (=> b!101158 m!87560))

(declare-fun m!87562 () Bool)

(assert (=> b!101158 m!87562))

(declare-fun m!87564 () Bool)

(assert (=> b!101159 m!87564))

(assert (=> b!101052 m!87474))

(declare-fun b!101182 () Bool)

(declare-fun b_free!3033 () Bool)

(declare-fun b_next!3033 () Bool)

(assert (=> b!101182 (= b_free!3033 (not b_next!3033))))

(declare-fun tp!57078 () Bool)

(declare-fun b_and!4551 () Bool)

(assert (=> b!101182 (= tp!57078 b_and!4551)))

(declare-fun b_free!3035 () Bool)

(declare-fun b_next!3035 () Bool)

(assert (=> b!101182 (= b_free!3035 (not b_next!3035))))

(declare-fun tp!57077 () Bool)

(declare-fun b_and!4553 () Bool)

(assert (=> b!101182 (= tp!57077 b_and!4553)))

(declare-fun e!56132 () Bool)

(assert (=> b!101182 (= e!56132 (and tp!57078 tp!57077))))

(declare-fun b!101181 () Bool)

(declare-fun e!56131 () Bool)

(declare-fun tp!57079 () Bool)

(assert (=> b!101181 (= e!56131 (and tp!57079 (inv!1972 (tag!535 (h!7032 (t!21286 rules!1152)))) (inv!1977 (transformation!357 (h!7032 (t!21286 rules!1152)))) e!56132))))

(declare-fun b!101180 () Bool)

(declare-fun e!56133 () Bool)

(declare-fun tp!57080 () Bool)

(assert (=> b!101180 (= e!56133 (and e!56131 tp!57080))))

(assert (=> b!101056 (= tp!57007 e!56133)))

(assert (= b!101181 b!101182))

(assert (= b!101180 b!101181))

(assert (= (and b!101056 ((_ is Cons!1635) (t!21286 rules!1152))) b!101180))

(declare-fun m!87570 () Bool)

(assert (=> b!101181 m!87570))

(declare-fun m!87572 () Bool)

(assert (=> b!101181 m!87572))

(check-sat (not d!23984) (not b!101136) (not b!101180) (not b!101181) b_and!4551 (not d!23974) (not b!101052) b_and!4543 (not b!101068) (not d!23966) (not b_next!3033) (not b!101087) (not b_next!3025) tp_is_empty!769 b_and!4545 (not b_next!3035) (not b!101110) (not b!101160) (not d!23980) (not b_next!3027) (not b!101158) (not d!23962) (not b!101108) (not b!101138) (not b!101088) (not d!23986) (not b!101159) (not b!101137) b_and!4553 (not b!101061))
(check-sat (not b_next!3025) b_and!4551 (not b_next!3027) b_and!4543 (not b_next!3033) b_and!4553 b_and!4545 (not b_next!3035))
(get-model)

(declare-fun b!101194 () Bool)

(declare-fun e!56140 () List!1640)

(assert (=> b!101194 (= e!56140 (++!256 (list!666 (left!1246 (c!24635 input!576))) (list!666 (right!1576 (c!24635 input!576)))))))

(declare-fun b!101191 () Bool)

(declare-fun e!56139 () List!1640)

(assert (=> b!101191 (= e!56139 Nil!1634)))

(declare-fun b!101192 () Bool)

(assert (=> b!101192 (= e!56139 e!56140)))

(declare-fun c!24654 () Bool)

(assert (=> b!101192 (= c!24654 ((_ is Leaf!825) (c!24635 input!576)))))

(declare-fun b!101193 () Bool)

(declare-fun list!668 (IArray!1023) List!1640)

(assert (=> b!101193 (= e!56140 (list!668 (xs!3098 (c!24635 input!576))))))

(declare-fun d!23994 () Bool)

(declare-fun c!24653 () Bool)

(assert (=> d!23994 (= c!24653 ((_ is Empty!511) (c!24635 input!576)))))

(assert (=> d!23994 (= (list!666 (c!24635 input!576)) e!56139)))

(assert (= (and d!23994 c!24653) b!101191))

(assert (= (and d!23994 (not c!24653)) b!101192))

(assert (= (and b!101192 c!24654) b!101193))

(assert (= (and b!101192 (not c!24654)) b!101194))

(declare-fun m!87574 () Bool)

(assert (=> b!101194 m!87574))

(declare-fun m!87576 () Bool)

(assert (=> b!101194 m!87576))

(assert (=> b!101194 m!87574))

(assert (=> b!101194 m!87576))

(declare-fun m!87578 () Bool)

(assert (=> b!101194 m!87578))

(declare-fun m!87580 () Bool)

(assert (=> b!101193 m!87580))

(assert (=> d!23984 d!23994))

(declare-fun d!23996 () Bool)

(assert (=> d!23996 true))

(declare-fun lt!28164 () Bool)

(declare-fun rulesValidInductive!74 (LexerInterface!249 List!1641) Bool)

(assert (=> d!23996 (= lt!28164 (rulesValidInductive!74 thiss!11428 rules!1152))))

(declare-fun lambda!1840 () Int)

(declare-fun forall!218 (List!1641 Int) Bool)

(assert (=> d!23996 (= lt!28164 (forall!218 rules!1152 lambda!1840))))

(assert (=> d!23996 (= (rulesValid!96 thiss!11428 rules!1152) lt!28164)))

(declare-fun bs!9917 () Bool)

(assert (= bs!9917 d!23996))

(declare-fun m!87588 () Bool)

(assert (=> bs!9917 m!87588))

(declare-fun m!87590 () Bool)

(assert (=> bs!9917 m!87590))

(assert (=> d!23962 d!23996))

(declare-fun d!24004 () Bool)

(declare-fun res!49071 () Bool)

(declare-fun e!56155 () Bool)

(assert (=> d!24004 (=> (not res!49071) (not e!56155))))

(declare-fun size!1445 (Conc!511) Int)

(assert (=> d!24004 (= res!49071 (= (csize!1252 (c!24635 input!576)) (+ (size!1445 (left!1246 (c!24635 input!576))) (size!1445 (right!1576 (c!24635 input!576))))))))

(assert (=> d!24004 (= (inv!1981 (c!24635 input!576)) e!56155)))

(declare-fun b!101234 () Bool)

(declare-fun res!49072 () Bool)

(assert (=> b!101234 (=> (not res!49072) (not e!56155))))

(assert (=> b!101234 (= res!49072 (and (not (= (left!1246 (c!24635 input!576)) Empty!511)) (not (= (right!1576 (c!24635 input!576)) Empty!511))))))

(declare-fun b!101235 () Bool)

(declare-fun res!49073 () Bool)

(assert (=> b!101235 (=> (not res!49073) (not e!56155))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!50 (Conc!511) Int)

(assert (=> b!101235 (= res!49073 (= (cheight!722 (c!24635 input!576)) (+ (max!0 (height!50 (left!1246 (c!24635 input!576))) (height!50 (right!1576 (c!24635 input!576)))) 1)))))

(declare-fun b!101236 () Bool)

(assert (=> b!101236 (= e!56155 (<= 0 (cheight!722 (c!24635 input!576))))))

(assert (= (and d!24004 res!49071) b!101234))

(assert (= (and b!101234 res!49072) b!101235))

(assert (= (and b!101235 res!49073) b!101236))

(declare-fun m!87614 () Bool)

(assert (=> d!24004 m!87614))

(declare-fun m!87616 () Bool)

(assert (=> d!24004 m!87616))

(declare-fun m!87618 () Bool)

(assert (=> b!101235 m!87618))

(declare-fun m!87620 () Bool)

(assert (=> b!101235 m!87620))

(assert (=> b!101235 m!87618))

(assert (=> b!101235 m!87620))

(declare-fun m!87622 () Bool)

(assert (=> b!101235 m!87622))

(assert (=> b!101108 d!24004))

(declare-fun d!24016 () Bool)

(assert (=> d!24016 true))

(declare-fun order!755 () Int)

(declare-fun lambda!1843 () Int)

(declare-fun order!753 () Int)

(declare-fun dynLambda!493 (Int Int) Int)

(declare-fun dynLambda!494 (Int Int) Int)

(assert (=> d!24016 (< (dynLambda!493 order!753 (toChars!783 (transformation!357 (h!7032 rules!1152)))) (dynLambda!494 order!755 lambda!1843))))

(assert (=> d!24016 true))

(declare-fun order!757 () Int)

(declare-fun dynLambda!495 (Int Int) Int)

(assert (=> d!24016 (< (dynLambda!495 order!757 (toValue!924 (transformation!357 (h!7032 rules!1152)))) (dynLambda!494 order!755 lambda!1843))))

(declare-fun Forall!67 (Int) Bool)

(assert (=> d!24016 (= (semiInverseModEq!89 (toChars!783 (transformation!357 (h!7032 rules!1152))) (toValue!924 (transformation!357 (h!7032 rules!1152)))) (Forall!67 lambda!1843))))

(declare-fun bs!9919 () Bool)

(assert (= bs!9919 d!24016))

(declare-fun m!87630 () Bool)

(assert (=> bs!9919 m!87630))

(assert (=> d!23974 d!24016))

(declare-fun e!56166 () Bool)

(declare-fun lt!28165 () List!1640)

(declare-fun b!101260 () Bool)

(assert (=> b!101260 (= e!56166 (or (not (= lt!28152 Nil!1634)) (= lt!28165 (t!21285 lt!28151))))))

(declare-fun d!24020 () Bool)

(assert (=> d!24020 e!56166))

(declare-fun res!49079 () Bool)

(assert (=> d!24020 (=> (not res!49079) (not e!56166))))

(assert (=> d!24020 (= res!49079 (= (content!129 lt!28165) ((_ map or) (content!129 (t!21285 lt!28151)) (content!129 lt!28152))))))

(declare-fun e!56167 () List!1640)

(assert (=> d!24020 (= lt!28165 e!56167)))

(declare-fun c!24661 () Bool)

(assert (=> d!24020 (= c!24661 ((_ is Nil!1634) (t!21285 lt!28151)))))

(assert (=> d!24020 (= (++!256 (t!21285 lt!28151) lt!28152) lt!28165)))

(declare-fun b!101258 () Bool)

(assert (=> b!101258 (= e!56167 (Cons!1634 (h!7031 (t!21285 lt!28151)) (++!256 (t!21285 (t!21285 lt!28151)) lt!28152)))))

(declare-fun b!101257 () Bool)

(assert (=> b!101257 (= e!56167 lt!28152)))

(declare-fun b!101259 () Bool)

(declare-fun res!49078 () Bool)

(assert (=> b!101259 (=> (not res!49078) (not e!56166))))

(assert (=> b!101259 (= res!49078 (= (size!1443 lt!28165) (+ (size!1443 (t!21285 lt!28151)) (size!1443 lt!28152))))))

(assert (= (and d!24020 c!24661) b!101257))

(assert (= (and d!24020 (not c!24661)) b!101258))

(assert (= (and d!24020 res!49079) b!101259))

(assert (= (and b!101259 res!49078) b!101260))

(declare-fun m!87632 () Bool)

(assert (=> d!24020 m!87632))

(declare-fun m!87634 () Bool)

(assert (=> d!24020 m!87634))

(assert (=> d!24020 m!87518))

(declare-fun m!87636 () Bool)

(assert (=> b!101258 m!87636))

(declare-fun m!87638 () Bool)

(assert (=> b!101259 m!87638))

(declare-fun m!87640 () Bool)

(assert (=> b!101259 m!87640))

(assert (=> b!101259 m!87526))

(assert (=> b!101087 d!24020))

(declare-fun d!24022 () Bool)

(assert (=> d!24022 (= (inv!1972 (tag!535 (h!7032 (t!21286 rules!1152)))) (= (mod (str.len (value!13064 (tag!535 (h!7032 (t!21286 rules!1152))))) 2) 0))))

(assert (=> b!101181 d!24022))

(declare-fun d!24024 () Bool)

(declare-fun res!49080 () Bool)

(declare-fun e!56168 () Bool)

(assert (=> d!24024 (=> (not res!49080) (not e!56168))))

(assert (=> d!24024 (= res!49080 (semiInverseModEq!89 (toChars!783 (transformation!357 (h!7032 (t!21286 rules!1152)))) (toValue!924 (transformation!357 (h!7032 (t!21286 rules!1152))))))))

(assert (=> d!24024 (= (inv!1977 (transformation!357 (h!7032 (t!21286 rules!1152)))) e!56168)))

(declare-fun b!101261 () Bool)

(assert (=> b!101261 (= e!56168 (equivClasses!84 (toChars!783 (transformation!357 (h!7032 (t!21286 rules!1152)))) (toValue!924 (transformation!357 (h!7032 (t!21286 rules!1152))))))))

(assert (= (and d!24024 res!49080) b!101261))

(declare-fun m!87642 () Bool)

(assert (=> d!24024 m!87642))

(declare-fun m!87644 () Bool)

(assert (=> b!101261 m!87644))

(assert (=> b!101181 d!24024))

(declare-fun d!24026 () Bool)

(declare-fun res!49087 () Bool)

(declare-fun e!56175 () Bool)

(assert (=> d!24026 (=> res!49087 e!56175)))

(assert (=> d!24026 (= res!49087 ((_ is Nil!1635) rules!1152))))

(assert (=> d!24026 (= (noDuplicateTag!96 thiss!11428 rules!1152 Nil!1636) e!56175)))

(declare-fun b!101268 () Bool)

(declare-fun e!56176 () Bool)

(assert (=> b!101268 (= e!56175 e!56176)))

(declare-fun res!49088 () Bool)

(assert (=> b!101268 (=> (not res!49088) (not e!56176))))

(declare-fun contains!265 (List!1642 String!2127) Bool)

(assert (=> b!101268 (= res!49088 (not (contains!265 Nil!1636 (tag!535 (h!7032 rules!1152)))))))

(declare-fun b!101269 () Bool)

(assert (=> b!101269 (= e!56176 (noDuplicateTag!96 thiss!11428 (t!21286 rules!1152) (Cons!1636 (tag!535 (h!7032 rules!1152)) Nil!1636)))))

(assert (= (and d!24026 (not res!49087)) b!101268))

(assert (= (and b!101268 res!49088) b!101269))

(declare-fun m!87650 () Bool)

(assert (=> b!101268 m!87650))

(declare-fun m!87652 () Bool)

(assert (=> b!101269 m!87652))

(assert (=> b!101061 d!24026))

(declare-fun d!24030 () Bool)

(declare-fun res!49093 () Bool)

(declare-fun e!56181 () Bool)

(assert (=> d!24030 (=> (not res!49093) (not e!56181))))

(assert (=> d!24030 (= res!49093 (<= (size!1443 (list!668 (xs!3098 (c!24635 input!576)))) 512))))

(assert (=> d!24030 (= (inv!1982 (c!24635 input!576)) e!56181)))

(declare-fun b!101282 () Bool)

(declare-fun res!49094 () Bool)

(assert (=> b!101282 (=> (not res!49094) (not e!56181))))

(assert (=> b!101282 (= res!49094 (= (csize!1253 (c!24635 input!576)) (size!1443 (list!668 (xs!3098 (c!24635 input!576))))))))

(declare-fun b!101283 () Bool)

(assert (=> b!101283 (= e!56181 (and (> (csize!1253 (c!24635 input!576)) 0) (<= (csize!1253 (c!24635 input!576)) 512)))))

(assert (= (and d!24030 res!49093) b!101282))

(assert (= (and b!101282 res!49094) b!101283))

(assert (=> d!24030 m!87580))

(assert (=> d!24030 m!87580))

(declare-fun m!87656 () Bool)

(assert (=> d!24030 m!87656))

(assert (=> b!101282 m!87580))

(assert (=> b!101282 m!87580))

(assert (=> b!101282 m!87656))

(assert (=> b!101110 d!24030))

(declare-fun d!24034 () Bool)

(declare-fun c!24664 () Bool)

(assert (=> d!24034 (= c!24664 ((_ is Node!511) (left!1246 (c!24635 input!576))))))

(declare-fun e!56182 () Bool)

(assert (=> d!24034 (= (inv!1976 (left!1246 (c!24635 input!576))) e!56182)))

(declare-fun b!101284 () Bool)

(assert (=> b!101284 (= e!56182 (inv!1981 (left!1246 (c!24635 input!576))))))

(declare-fun b!101285 () Bool)

(declare-fun e!56183 () Bool)

(assert (=> b!101285 (= e!56182 e!56183)))

(declare-fun res!49095 () Bool)

(assert (=> b!101285 (= res!49095 (not ((_ is Leaf!825) (left!1246 (c!24635 input!576)))))))

(assert (=> b!101285 (=> res!49095 e!56183)))

(declare-fun b!101286 () Bool)

(assert (=> b!101286 (= e!56183 (inv!1982 (left!1246 (c!24635 input!576))))))

(assert (= (and d!24034 c!24664) b!101284))

(assert (= (and d!24034 (not c!24664)) b!101285))

(assert (= (and b!101285 (not res!49095)) b!101286))

(declare-fun m!87658 () Bool)

(assert (=> b!101284 m!87658))

(declare-fun m!87660 () Bool)

(assert (=> b!101286 m!87660))

(assert (=> b!101158 d!24034))

(declare-fun d!24036 () Bool)

(declare-fun c!24665 () Bool)

(assert (=> d!24036 (= c!24665 ((_ is Node!511) (right!1576 (c!24635 input!576))))))

(declare-fun e!56184 () Bool)

(assert (=> d!24036 (= (inv!1976 (right!1576 (c!24635 input!576))) e!56184)))

(declare-fun b!101287 () Bool)

(assert (=> b!101287 (= e!56184 (inv!1981 (right!1576 (c!24635 input!576))))))

(declare-fun b!101288 () Bool)

(declare-fun e!56185 () Bool)

(assert (=> b!101288 (= e!56184 e!56185)))

(declare-fun res!49096 () Bool)

(assert (=> b!101288 (= res!49096 (not ((_ is Leaf!825) (right!1576 (c!24635 input!576)))))))

(assert (=> b!101288 (=> res!49096 e!56185)))

(declare-fun b!101289 () Bool)

(assert (=> b!101289 (= e!56185 (inv!1982 (right!1576 (c!24635 input!576))))))

(assert (= (and d!24036 c!24665) b!101287))

(assert (= (and d!24036 (not c!24665)) b!101288))

(assert (= (and b!101288 (not res!49096)) b!101289))

(declare-fun m!87662 () Bool)

(assert (=> b!101287 m!87662))

(declare-fun m!87664 () Bool)

(assert (=> b!101289 m!87664))

(assert (=> b!101158 d!24036))

(declare-fun d!24038 () Bool)

(declare-fun c!24673 () Bool)

(assert (=> d!24038 (= c!24673 ((_ is Nil!1634) lt!28155))))

(declare-fun e!56193 () (InoxSet C!1772))

(assert (=> d!24038 (= (content!129 lt!28155) e!56193)))

(declare-fun b!101304 () Bool)

(assert (=> b!101304 (= e!56193 ((as const (Array C!1772 Bool)) false))))

(declare-fun b!101305 () Bool)

(assert (=> b!101305 (= e!56193 ((_ map or) (store ((as const (Array C!1772 Bool)) false) (h!7031 lt!28155) true) (content!129 (t!21285 lt!28155))))))

(assert (= (and d!24038 c!24673) b!101304))

(assert (= (and d!24038 (not c!24673)) b!101305))

(declare-fun m!87678 () Bool)

(assert (=> b!101305 m!87678))

(declare-fun m!87680 () Bool)

(assert (=> b!101305 m!87680))

(assert (=> d!23980 d!24038))

(declare-fun d!24046 () Bool)

(declare-fun c!24674 () Bool)

(assert (=> d!24046 (= c!24674 ((_ is Nil!1634) lt!28151))))

(declare-fun e!56194 () (InoxSet C!1772))

(assert (=> d!24046 (= (content!129 lt!28151) e!56194)))

(declare-fun b!101306 () Bool)

(assert (=> b!101306 (= e!56194 ((as const (Array C!1772 Bool)) false))))

(declare-fun b!101307 () Bool)

(assert (=> b!101307 (= e!56194 ((_ map or) (store ((as const (Array C!1772 Bool)) false) (h!7031 lt!28151) true) (content!129 (t!21285 lt!28151))))))

(assert (= (and d!24046 c!24674) b!101306))

(assert (= (and d!24046 (not c!24674)) b!101307))

(declare-fun m!87682 () Bool)

(assert (=> b!101307 m!87682))

(assert (=> b!101307 m!87634))

(assert (=> d!23980 d!24046))

(declare-fun d!24048 () Bool)

(declare-fun c!24675 () Bool)

(assert (=> d!24048 (= c!24675 ((_ is Nil!1634) lt!28152))))

(declare-fun e!56195 () (InoxSet C!1772))

(assert (=> d!24048 (= (content!129 lt!28152) e!56195)))

(declare-fun b!101308 () Bool)

(assert (=> b!101308 (= e!56195 ((as const (Array C!1772 Bool)) false))))

(declare-fun b!101309 () Bool)

(assert (=> b!101309 (= e!56195 ((_ map or) (store ((as const (Array C!1772 Bool)) false) (h!7031 lt!28152) true) (content!129 (t!21285 lt!28152))))))

(assert (= (and d!24048 c!24675) b!101308))

(assert (= (and d!24048 (not c!24675)) b!101309))

(declare-fun m!87684 () Bool)

(assert (=> b!101309 m!87684))

(declare-fun m!87686 () Bool)

(assert (=> b!101309 m!87686))

(assert (=> d!23980 d!24048))

(declare-fun d!24050 () Bool)

(declare-fun lt!28174 () Int)

(assert (=> d!24050 (>= lt!28174 0)))

(declare-fun e!56205 () Int)

(assert (=> d!24050 (= lt!28174 e!56205)))

(declare-fun c!24684 () Bool)

(assert (=> d!24050 (= c!24684 ((_ is Nil!1634) lt!28155))))

(assert (=> d!24050 (= (size!1443 lt!28155) lt!28174)))

(declare-fun b!101328 () Bool)

(assert (=> b!101328 (= e!56205 0)))

(declare-fun b!101329 () Bool)

(assert (=> b!101329 (= e!56205 (+ 1 (size!1443 (t!21285 lt!28155))))))

(assert (= (and d!24050 c!24684) b!101328))

(assert (= (and d!24050 (not c!24684)) b!101329))

(declare-fun m!87700 () Bool)

(assert (=> b!101329 m!87700))

(assert (=> b!101088 d!24050))

(declare-fun d!24060 () Bool)

(declare-fun lt!28175 () Int)

(assert (=> d!24060 (>= lt!28175 0)))

(declare-fun e!56206 () Int)

(assert (=> d!24060 (= lt!28175 e!56206)))

(declare-fun c!24685 () Bool)

(assert (=> d!24060 (= c!24685 ((_ is Nil!1634) lt!28151))))

(assert (=> d!24060 (= (size!1443 lt!28151) lt!28175)))

(declare-fun b!101330 () Bool)

(assert (=> b!101330 (= e!56206 0)))

(declare-fun b!101331 () Bool)

(assert (=> b!101331 (= e!56206 (+ 1 (size!1443 (t!21285 lt!28151))))))

(assert (= (and d!24060 c!24685) b!101330))

(assert (= (and d!24060 (not c!24685)) b!101331))

(assert (=> b!101331 m!87640))

(assert (=> b!101088 d!24060))

(declare-fun d!24064 () Bool)

(declare-fun lt!28176 () Int)

(assert (=> d!24064 (>= lt!28176 0)))

(declare-fun e!56207 () Int)

(assert (=> d!24064 (= lt!28176 e!56207)))

(declare-fun c!24686 () Bool)

(assert (=> d!24064 (= c!24686 ((_ is Nil!1634) lt!28152))))

(assert (=> d!24064 (= (size!1443 lt!28152) lt!28176)))

(declare-fun b!101332 () Bool)

(assert (=> b!101332 (= e!56207 0)))

(declare-fun b!101333 () Bool)

(assert (=> b!101333 (= e!56207 (+ 1 (size!1443 (t!21285 lt!28152))))))

(assert (= (and d!24064 c!24686) b!101332))

(assert (= (and d!24064 (not c!24686)) b!101333))

(declare-fun m!87710 () Bool)

(assert (=> b!101333 m!87710))

(assert (=> b!101088 d!24064))

(declare-fun d!24066 () Bool)

(assert (=> d!24066 true))

(declare-fun lambda!1849 () Int)

(declare-fun order!763 () Int)

(declare-fun dynLambda!498 (Int Int) Int)

(assert (=> d!24066 (< (dynLambda!495 order!757 (toValue!924 (transformation!357 (h!7032 rules!1152)))) (dynLambda!498 order!763 lambda!1849))))

(declare-fun Forall2!57 (Int) Bool)

(assert (=> d!24066 (= (equivClasses!84 (toChars!783 (transformation!357 (h!7032 rules!1152))) (toValue!924 (transformation!357 (h!7032 rules!1152)))) (Forall2!57 lambda!1849))))

(declare-fun bs!9921 () Bool)

(assert (= bs!9921 d!24066))

(declare-fun m!87722 () Bool)

(assert (=> bs!9921 m!87722))

(assert (=> b!101068 d!24066))

(assert (=> b!101052 d!23988))

(declare-fun b!101403 () Bool)

(declare-fun res!49129 () Bool)

(declare-fun e!56238 () Bool)

(assert (=> b!101403 (=> (not res!49129) (not e!56238))))

(assert (=> b!101403 (= res!49129 (isBalanced!133 (right!1576 (c!24635 input!576))))))

(declare-fun d!24072 () Bool)

(declare-fun res!49124 () Bool)

(declare-fun e!56239 () Bool)

(assert (=> d!24072 (=> res!49124 e!56239)))

(assert (=> d!24072 (= res!49124 (not ((_ is Node!511) (c!24635 input!576))))))

(assert (=> d!24072 (= (isBalanced!133 (c!24635 input!576)) e!56239)))

(declare-fun b!101404 () Bool)

(declare-fun isEmpty!732 (Conc!511) Bool)

(assert (=> b!101404 (= e!56238 (not (isEmpty!732 (right!1576 (c!24635 input!576)))))))

(declare-fun b!101405 () Bool)

(declare-fun res!49125 () Bool)

(assert (=> b!101405 (=> (not res!49125) (not e!56238))))

(assert (=> b!101405 (= res!49125 (not (isEmpty!732 (left!1246 (c!24635 input!576)))))))

(declare-fun b!101406 () Bool)

(declare-fun res!49127 () Bool)

(assert (=> b!101406 (=> (not res!49127) (not e!56238))))

(assert (=> b!101406 (= res!49127 (isBalanced!133 (left!1246 (c!24635 input!576))))))

(declare-fun b!101407 () Bool)

(declare-fun res!49126 () Bool)

(assert (=> b!101407 (=> (not res!49126) (not e!56238))))

(assert (=> b!101407 (= res!49126 (<= (- (height!50 (left!1246 (c!24635 input!576))) (height!50 (right!1576 (c!24635 input!576)))) 1))))

(declare-fun b!101408 () Bool)

(assert (=> b!101408 (= e!56239 e!56238)))

(declare-fun res!49128 () Bool)

(assert (=> b!101408 (=> (not res!49128) (not e!56238))))

(assert (=> b!101408 (= res!49128 (<= (- 1) (- (height!50 (left!1246 (c!24635 input!576))) (height!50 (right!1576 (c!24635 input!576))))))))

(assert (= (and d!24072 (not res!49124)) b!101408))

(assert (= (and b!101408 res!49128) b!101407))

(assert (= (and b!101407 res!49126) b!101406))

(assert (= (and b!101406 res!49127) b!101403))

(assert (= (and b!101403 res!49129) b!101405))

(assert (= (and b!101405 res!49125) b!101404))

(declare-fun m!87744 () Bool)

(assert (=> b!101404 m!87744))

(declare-fun m!87746 () Bool)

(assert (=> b!101403 m!87746))

(assert (=> b!101407 m!87618))

(assert (=> b!101407 m!87620))

(declare-fun m!87748 () Bool)

(assert (=> b!101406 m!87748))

(declare-fun m!87750 () Bool)

(assert (=> b!101405 m!87750))

(assert (=> b!101408 m!87618))

(assert (=> b!101408 m!87620))

(assert (=> d!23966 d!24072))

(declare-fun d!24074 () Bool)

(assert (=> d!24074 (= (inv!1984 (xs!3098 (c!24635 input!576))) (<= (size!1443 (innerList!569 (xs!3098 (c!24635 input!576)))) 2147483647))))

(declare-fun bs!9922 () Bool)

(assert (= bs!9922 d!24074))

(declare-fun m!87752 () Bool)

(assert (=> bs!9922 m!87752))

(assert (=> b!101159 d!24074))

(declare-fun b!101412 () Bool)

(declare-fun e!56241 () List!1640)

(assert (=> b!101412 (= e!56241 (++!256 (list!666 (left!1246 (c!24635 (BalanceConc!1027 Empty!511)))) (list!666 (right!1576 (c!24635 (BalanceConc!1027 Empty!511))))))))

(declare-fun b!101409 () Bool)

(declare-fun e!56240 () List!1640)

(assert (=> b!101409 (= e!56240 Nil!1634)))

(declare-fun b!101410 () Bool)

(assert (=> b!101410 (= e!56240 e!56241)))

(declare-fun c!24690 () Bool)

(assert (=> b!101410 (= c!24690 ((_ is Leaf!825) (c!24635 (BalanceConc!1027 Empty!511))))))

(declare-fun b!101411 () Bool)

(assert (=> b!101411 (= e!56241 (list!668 (xs!3098 (c!24635 (BalanceConc!1027 Empty!511)))))))

(declare-fun d!24076 () Bool)

(declare-fun c!24689 () Bool)

(assert (=> d!24076 (= c!24689 ((_ is Empty!511) (c!24635 (BalanceConc!1027 Empty!511))))))

(assert (=> d!24076 (= (list!666 (c!24635 (BalanceConc!1027 Empty!511))) e!56240)))

(assert (= (and d!24076 c!24689) b!101409))

(assert (= (and d!24076 (not c!24689)) b!101410))

(assert (= (and b!101410 c!24690) b!101411))

(assert (= (and b!101410 (not c!24690)) b!101412))

(declare-fun m!87754 () Bool)

(assert (=> b!101412 m!87754))

(declare-fun m!87756 () Bool)

(assert (=> b!101412 m!87756))

(assert (=> b!101412 m!87754))

(assert (=> b!101412 m!87756))

(declare-fun m!87758 () Bool)

(assert (=> b!101412 m!87758))

(declare-fun m!87760 () Bool)

(assert (=> b!101411 m!87760))

(assert (=> d!23986 d!24076))

(declare-fun b!101415 () Bool)

(declare-fun b_free!3041 () Bool)

(declare-fun b_next!3041 () Bool)

(assert (=> b!101415 (= b_free!3041 (not b_next!3041))))

(declare-fun tp!57125 () Bool)

(declare-fun b_and!4559 () Bool)

(assert (=> b!101415 (= tp!57125 b_and!4559)))

(declare-fun b_free!3043 () Bool)

(declare-fun b_next!3043 () Bool)

(assert (=> b!101415 (= b_free!3043 (not b_next!3043))))

(declare-fun tp!57124 () Bool)

(declare-fun b_and!4561 () Bool)

(assert (=> b!101415 (= tp!57124 b_and!4561)))

(declare-fun e!56243 () Bool)

(assert (=> b!101415 (= e!56243 (and tp!57125 tp!57124))))

(declare-fun tp!57126 () Bool)

(declare-fun e!56242 () Bool)

(declare-fun b!101414 () Bool)

(assert (=> b!101414 (= e!56242 (and tp!57126 (inv!1972 (tag!535 (h!7032 (t!21286 (t!21286 rules!1152))))) (inv!1977 (transformation!357 (h!7032 (t!21286 (t!21286 rules!1152))))) e!56243))))

(declare-fun b!101413 () Bool)

(declare-fun e!56244 () Bool)

(declare-fun tp!57127 () Bool)

(assert (=> b!101413 (= e!56244 (and e!56242 tp!57127))))

(assert (=> b!101180 (= tp!57080 e!56244)))

(assert (= b!101414 b!101415))

(assert (= b!101413 b!101414))

(assert (= (and b!101180 ((_ is Cons!1635) (t!21286 (t!21286 rules!1152)))) b!101413))

(declare-fun m!87762 () Bool)

(assert (=> b!101414 m!87762))

(declare-fun m!87764 () Bool)

(assert (=> b!101414 m!87764))

(declare-fun b!101416 () Bool)

(declare-fun e!56246 () Bool)

(assert (=> b!101416 (= e!56246 tp_is_empty!769)))

(declare-fun b!101419 () Bool)

(declare-fun tp!57131 () Bool)

(declare-fun tp!57132 () Bool)

(assert (=> b!101419 (= e!56246 (and tp!57131 tp!57132))))

(assert (=> b!101138 (= tp!57037 e!56246)))

(declare-fun b!101417 () Bool)

(declare-fun tp!57129 () Bool)

(declare-fun tp!57130 () Bool)

(assert (=> b!101417 (= e!56246 (and tp!57129 tp!57130))))

(declare-fun b!101418 () Bool)

(declare-fun tp!57128 () Bool)

(assert (=> b!101418 (= e!56246 tp!57128)))

(assert (= (and b!101138 ((_ is ElementMatch!425) (regOne!1363 (regex!357 (h!7032 rules!1152))))) b!101416))

(assert (= (and b!101138 ((_ is Concat!773) (regOne!1363 (regex!357 (h!7032 rules!1152))))) b!101417))

(assert (= (and b!101138 ((_ is Star!425) (regOne!1363 (regex!357 (h!7032 rules!1152))))) b!101418))

(assert (= (and b!101138 ((_ is Union!425) (regOne!1363 (regex!357 (h!7032 rules!1152))))) b!101419))

(declare-fun b!101420 () Bool)

(declare-fun e!56247 () Bool)

(assert (=> b!101420 (= e!56247 tp_is_empty!769)))

(declare-fun b!101423 () Bool)

(declare-fun tp!57136 () Bool)

(declare-fun tp!57137 () Bool)

(assert (=> b!101423 (= e!56247 (and tp!57136 tp!57137))))

(assert (=> b!101138 (= tp!57038 e!56247)))

(declare-fun b!101421 () Bool)

(declare-fun tp!57134 () Bool)

(declare-fun tp!57135 () Bool)

(assert (=> b!101421 (= e!56247 (and tp!57134 tp!57135))))

(declare-fun b!101422 () Bool)

(declare-fun tp!57133 () Bool)

(assert (=> b!101422 (= e!56247 tp!57133)))

(assert (= (and b!101138 ((_ is ElementMatch!425) (regTwo!1363 (regex!357 (h!7032 rules!1152))))) b!101420))

(assert (= (and b!101138 ((_ is Concat!773) (regTwo!1363 (regex!357 (h!7032 rules!1152))))) b!101421))

(assert (= (and b!101138 ((_ is Star!425) (regTwo!1363 (regex!357 (h!7032 rules!1152))))) b!101422))

(assert (= (and b!101138 ((_ is Union!425) (regTwo!1363 (regex!357 (h!7032 rules!1152))))) b!101423))

(declare-fun b!101424 () Bool)

(declare-fun e!56248 () Bool)

(assert (=> b!101424 (= e!56248 tp_is_empty!769)))

(declare-fun b!101427 () Bool)

(declare-fun tp!57141 () Bool)

(declare-fun tp!57142 () Bool)

(assert (=> b!101427 (= e!56248 (and tp!57141 tp!57142))))

(assert (=> b!101137 (= tp!57034 e!56248)))

(declare-fun b!101425 () Bool)

(declare-fun tp!57139 () Bool)

(declare-fun tp!57140 () Bool)

(assert (=> b!101425 (= e!56248 (and tp!57139 tp!57140))))

(declare-fun b!101426 () Bool)

(declare-fun tp!57138 () Bool)

(assert (=> b!101426 (= e!56248 tp!57138)))

(assert (= (and b!101137 ((_ is ElementMatch!425) (reg!754 (regex!357 (h!7032 rules!1152))))) b!101424))

(assert (= (and b!101137 ((_ is Concat!773) (reg!754 (regex!357 (h!7032 rules!1152))))) b!101425))

(assert (= (and b!101137 ((_ is Star!425) (reg!754 (regex!357 (h!7032 rules!1152))))) b!101426))

(assert (= (and b!101137 ((_ is Union!425) (reg!754 (regex!357 (h!7032 rules!1152))))) b!101427))

(declare-fun b!101428 () Bool)

(declare-fun tp!57145 () Bool)

(declare-fun e!56250 () Bool)

(declare-fun tp!57144 () Bool)

(assert (=> b!101428 (= e!56250 (and (inv!1976 (left!1246 (left!1246 (c!24635 input!576)))) tp!57144 (inv!1976 (right!1576 (left!1246 (c!24635 input!576)))) tp!57145))))

(declare-fun b!101430 () Bool)

(declare-fun e!56249 () Bool)

(declare-fun tp!57143 () Bool)

(assert (=> b!101430 (= e!56249 tp!57143)))

(declare-fun b!101429 () Bool)

(assert (=> b!101429 (= e!56250 (and (inv!1984 (xs!3098 (left!1246 (c!24635 input!576)))) e!56249))))

(assert (=> b!101158 (= tp!57055 (and (inv!1976 (left!1246 (c!24635 input!576))) e!56250))))

(assert (= (and b!101158 ((_ is Node!511) (left!1246 (c!24635 input!576)))) b!101428))

(assert (= b!101429 b!101430))

(assert (= (and b!101158 ((_ is Leaf!825) (left!1246 (c!24635 input!576)))) b!101429))

(declare-fun m!87766 () Bool)

(assert (=> b!101428 m!87766))

(declare-fun m!87768 () Bool)

(assert (=> b!101428 m!87768))

(declare-fun m!87770 () Bool)

(assert (=> b!101429 m!87770))

(assert (=> b!101158 m!87560))

(declare-fun e!56252 () Bool)

(declare-fun tp!57148 () Bool)

(declare-fun b!101431 () Bool)

(declare-fun tp!57147 () Bool)

(assert (=> b!101431 (= e!56252 (and (inv!1976 (left!1246 (right!1576 (c!24635 input!576)))) tp!57147 (inv!1976 (right!1576 (right!1576 (c!24635 input!576)))) tp!57148))))

(declare-fun b!101433 () Bool)

(declare-fun e!56251 () Bool)

(declare-fun tp!57146 () Bool)

(assert (=> b!101433 (= e!56251 tp!57146)))

(declare-fun b!101432 () Bool)

(assert (=> b!101432 (= e!56252 (and (inv!1984 (xs!3098 (right!1576 (c!24635 input!576)))) e!56251))))

(assert (=> b!101158 (= tp!57056 (and (inv!1976 (right!1576 (c!24635 input!576))) e!56252))))

(assert (= (and b!101158 ((_ is Node!511) (right!1576 (c!24635 input!576)))) b!101431))

(assert (= b!101432 b!101433))

(assert (= (and b!101158 ((_ is Leaf!825) (right!1576 (c!24635 input!576)))) b!101432))

(declare-fun m!87772 () Bool)

(assert (=> b!101431 m!87772))

(declare-fun m!87774 () Bool)

(assert (=> b!101431 m!87774))

(declare-fun m!87776 () Bool)

(assert (=> b!101432 m!87776))

(assert (=> b!101158 m!87562))

(declare-fun b!101434 () Bool)

(declare-fun e!56253 () Bool)

(assert (=> b!101434 (= e!56253 tp_is_empty!769)))

(declare-fun b!101437 () Bool)

(declare-fun tp!57152 () Bool)

(declare-fun tp!57153 () Bool)

(assert (=> b!101437 (= e!56253 (and tp!57152 tp!57153))))

(assert (=> b!101136 (= tp!57035 e!56253)))

(declare-fun b!101435 () Bool)

(declare-fun tp!57150 () Bool)

(declare-fun tp!57151 () Bool)

(assert (=> b!101435 (= e!56253 (and tp!57150 tp!57151))))

(declare-fun b!101436 () Bool)

(declare-fun tp!57149 () Bool)

(assert (=> b!101436 (= e!56253 tp!57149)))

(assert (= (and b!101136 ((_ is ElementMatch!425) (regOne!1362 (regex!357 (h!7032 rules!1152))))) b!101434))

(assert (= (and b!101136 ((_ is Concat!773) (regOne!1362 (regex!357 (h!7032 rules!1152))))) b!101435))

(assert (= (and b!101136 ((_ is Star!425) (regOne!1362 (regex!357 (h!7032 rules!1152))))) b!101436))

(assert (= (and b!101136 ((_ is Union!425) (regOne!1362 (regex!357 (h!7032 rules!1152))))) b!101437))

(declare-fun b!101438 () Bool)

(declare-fun e!56254 () Bool)

(assert (=> b!101438 (= e!56254 tp_is_empty!769)))

(declare-fun b!101441 () Bool)

(declare-fun tp!57157 () Bool)

(declare-fun tp!57158 () Bool)

(assert (=> b!101441 (= e!56254 (and tp!57157 tp!57158))))

(assert (=> b!101136 (= tp!57036 e!56254)))

(declare-fun b!101439 () Bool)

(declare-fun tp!57155 () Bool)

(declare-fun tp!57156 () Bool)

(assert (=> b!101439 (= e!56254 (and tp!57155 tp!57156))))

(declare-fun b!101440 () Bool)

(declare-fun tp!57154 () Bool)

(assert (=> b!101440 (= e!56254 tp!57154)))

(assert (= (and b!101136 ((_ is ElementMatch!425) (regTwo!1362 (regex!357 (h!7032 rules!1152))))) b!101438))

(assert (= (and b!101136 ((_ is Concat!773) (regTwo!1362 (regex!357 (h!7032 rules!1152))))) b!101439))

(assert (= (and b!101136 ((_ is Star!425) (regTwo!1362 (regex!357 (h!7032 rules!1152))))) b!101440))

(assert (= (and b!101136 ((_ is Union!425) (regTwo!1362 (regex!357 (h!7032 rules!1152))))) b!101441))

(declare-fun b!101442 () Bool)

(declare-fun e!56255 () Bool)

(assert (=> b!101442 (= e!56255 tp_is_empty!769)))

(declare-fun b!101445 () Bool)

(declare-fun tp!57162 () Bool)

(declare-fun tp!57163 () Bool)

(assert (=> b!101445 (= e!56255 (and tp!57162 tp!57163))))

(assert (=> b!101181 (= tp!57079 e!56255)))

(declare-fun b!101443 () Bool)

(declare-fun tp!57160 () Bool)

(declare-fun tp!57161 () Bool)

(assert (=> b!101443 (= e!56255 (and tp!57160 tp!57161))))

(declare-fun b!101444 () Bool)

(declare-fun tp!57159 () Bool)

(assert (=> b!101444 (= e!56255 tp!57159)))

(assert (= (and b!101181 ((_ is ElementMatch!425) (regex!357 (h!7032 (t!21286 rules!1152))))) b!101442))

(assert (= (and b!101181 ((_ is Concat!773) (regex!357 (h!7032 (t!21286 rules!1152))))) b!101443))

(assert (= (and b!101181 ((_ is Star!425) (regex!357 (h!7032 (t!21286 rules!1152))))) b!101444))

(assert (= (and b!101181 ((_ is Union!425) (regex!357 (h!7032 (t!21286 rules!1152))))) b!101445))

(declare-fun b!101450 () Bool)

(declare-fun e!56258 () Bool)

(declare-fun tp!57166 () Bool)

(assert (=> b!101450 (= e!56258 (and tp_is_empty!769 tp!57166))))

(assert (=> b!101160 (= tp!57054 e!56258)))

(assert (= (and b!101160 ((_ is Cons!1634) (innerList!569 (xs!3098 (c!24635 input!576))))) b!101450))

(check-sat (not b!101194) (not b!101430) (not b!101425) (not b!101193) (not b!101426) (not b_next!3025) tp_is_empty!769 (not b!101437) (not d!24074) (not b!101258) (not b!101289) (not b!101259) (not b!101450) b_and!4561 b_and!4545 (not b!101435) (not b_next!3035) (not b!101421) b_and!4559 (not b!101406) (not d!24016) (not b!101282) (not b!101419) b_and!4551 (not b!101422) (not b!101417) (not b!101403) (not d!24030) (not b!101333) (not b!101268) (not b!101440) (not b!101414) (not b!101433) (not b_next!3027) (not d!24066) (not b!101158) (not b!101429) (not b!101305) (not b!101331) b_and!4543 (not b!101404) (not b_next!3043) (not b!101309) (not b!101408) (not b!101427) (not d!24020) (not b!101329) (not b!101407) (not b!101445) (not b!101436) (not b!101444) (not b!101235) (not b!101284) (not b!101261) (not b!101443) (not b!101286) (not b!101428) (not b!101439) (not b!101411) (not b!101269) (not b!101307) (not b!101418) (not b!101423) (not b!101405) (not d!24024) (not b!101413) (not b_next!3041) (not d!23996) (not b!101432) (not b!101287) (not b_next!3033) b_and!4553 (not b!101441) (not d!24004) (not b!101431) (not b!101412))
(check-sat (not b_next!3025) b_and!4561 b_and!4559 b_and!4551 (not b_next!3027) b_and!4543 (not b_next!3043) (not b_next!3041) (not b_next!3033) b_and!4553 b_and!4545 (not b_next!3035))
