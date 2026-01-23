; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119002 () Bool)

(assert start!119002)

(declare-fun b!1336191 () Bool)

(declare-fun b_free!32539 () Bool)

(declare-fun b_next!33243 () Bool)

(assert (=> b!1336191 (= b_free!32539 (not b_next!33243))))

(declare-fun tp!386666 () Bool)

(declare-fun b_and!89435 () Bool)

(assert (=> b!1336191 (= tp!386666 b_and!89435)))

(declare-fun b_free!32541 () Bool)

(declare-fun b_next!33245 () Bool)

(assert (=> b!1336191 (= b_free!32541 (not b_next!33245))))

(declare-fun tp!386660 () Bool)

(declare-fun b_and!89437 () Bool)

(assert (=> b!1336191 (= tp!386660 b_and!89437)))

(declare-fun b!1336183 () Bool)

(declare-fun b_free!32543 () Bool)

(declare-fun b_next!33247 () Bool)

(assert (=> b!1336183 (= b_free!32543 (not b_next!33247))))

(declare-fun tp!386670 () Bool)

(declare-fun b_and!89439 () Bool)

(assert (=> b!1336183 (= tp!386670 b_and!89439)))

(declare-fun b_free!32545 () Bool)

(declare-fun b_next!33249 () Bool)

(assert (=> b!1336183 (= b_free!32545 (not b_next!33249))))

(declare-fun tp!386662 () Bool)

(declare-fun b_and!89441 () Bool)

(assert (=> b!1336183 (= tp!386662 b_and!89441)))

(declare-fun b!1336188 () Bool)

(declare-fun b_free!32547 () Bool)

(declare-fun b_next!33251 () Bool)

(assert (=> b!1336188 (= b_free!32547 (not b_next!33251))))

(declare-fun tp!386663 () Bool)

(declare-fun b_and!89443 () Bool)

(assert (=> b!1336188 (= tp!386663 b_and!89443)))

(declare-fun b_free!32549 () Bool)

(declare-fun b_next!33253 () Bool)

(assert (=> b!1336188 (= b_free!32549 (not b_next!33253))))

(declare-fun tp!386661 () Bool)

(declare-fun b_and!89445 () Bool)

(assert (=> b!1336188 (= tp!386661 b_and!89445)))

(declare-fun b!1336176 () Bool)

(assert (=> b!1336176 true))

(assert (=> b!1336176 true))

(declare-fun b!1336173 () Bool)

(declare-fun res!602490 () Bool)

(declare-fun e!856011 () Bool)

(assert (=> b!1336173 (=> (not res!602490) (not e!856011))))

(declare-datatypes ((List!13716 0))(
  ( (Nil!13650) (Cons!13650 (h!19051 (_ BitVec 16)) (t!119281 List!13716)) )
))
(declare-datatypes ((TokenValue!2457 0))(
  ( (FloatLiteralValue!4914 (text!17644 List!13716)) (TokenValueExt!2456 (__x!8743 Int)) (Broken!12285 (value!77066 List!13716)) (Object!2522) (End!2457) (Def!2457) (Underscore!2457) (Match!2457) (Else!2457) (Error!2457) (Case!2457) (If!2457) (Extends!2457) (Abstract!2457) (Class!2457) (Val!2457) (DelimiterValue!4914 (del!2517 List!13716)) (KeywordValue!2463 (value!77067 List!13716)) (CommentValue!4914 (value!77068 List!13716)) (WhitespaceValue!4914 (value!77069 List!13716)) (IndentationValue!2457 (value!77070 List!13716)) (String!16520) (Int32!2457) (Broken!12286 (value!77071 List!13716)) (Boolean!2458) (Unit!19780) (OperatorValue!2460 (op!2517 List!13716)) (IdentifierValue!4914 (value!77072 List!13716)) (IdentifierValue!4915 (value!77073 List!13716)) (WhitespaceValue!4915 (value!77074 List!13716)) (True!4914) (False!4914) (Broken!12287 (value!77075 List!13716)) (Broken!12288 (value!77076 List!13716)) (True!4915) (RightBrace!2457) (RightBracket!2457) (Colon!2457) (Null!2457) (Comma!2457) (LeftBracket!2457) (False!4915) (LeftBrace!2457) (ImaginaryLiteralValue!2457 (text!17645 List!13716)) (StringLiteralValue!7371 (value!77077 List!13716)) (EOFValue!2457 (value!77078 List!13716)) (IdentValue!2457 (value!77079 List!13716)) (DelimiterValue!4915 (value!77080 List!13716)) (DedentValue!2457 (value!77081 List!13716)) (NewLineValue!2457 (value!77082 List!13716)) (IntegerValue!7371 (value!77083 (_ BitVec 32)) (text!17646 List!13716)) (IntegerValue!7372 (value!77084 Int) (text!17647 List!13716)) (Times!2457) (Or!2457) (Equal!2457) (Minus!2457) (Broken!12289 (value!77085 List!13716)) (And!2457) (Div!2457) (LessEqual!2457) (Mod!2457) (Concat!6138) (Not!2457) (Plus!2457) (SpaceValue!2457 (value!77086 List!13716)) (IntegerValue!7373 (value!77087 Int) (text!17648 List!13716)) (StringLiteralValue!7372 (text!17649 List!13716)) (FloatLiteralValue!4915 (text!17650 List!13716)) (BytesLiteralValue!2457 (value!77088 List!13716)) (CommentValue!4915 (value!77089 List!13716)) (StringLiteralValue!7373 (value!77090 List!13716)) (ErrorTokenValue!2457 (msg!2518 List!13716)) )
))
(declare-datatypes ((C!7652 0))(
  ( (C!7653 (val!4386 Int)) )
))
(declare-datatypes ((List!13717 0))(
  ( (Nil!13651) (Cons!13651 (h!19052 C!7652) (t!119282 List!13717)) )
))
(declare-datatypes ((IArray!9003 0))(
  ( (IArray!9004 (innerList!4559 List!13717)) )
))
(declare-datatypes ((String!16521 0))(
  ( (String!16522 (value!77091 String)) )
))
(declare-datatypes ((Conc!4499 0))(
  ( (Node!4499 (left!11716 Conc!4499) (right!12046 Conc!4499) (csize!9228 Int) (cheight!4710 Int)) (Leaf!6879 (xs!7214 IArray!9003) (csize!9229 Int)) (Empty!4499) )
))
(declare-datatypes ((BalanceConc!8938 0))(
  ( (BalanceConc!8939 (c!218765 Conc!4499)) )
))
(declare-datatypes ((Regex!3681 0))(
  ( (ElementMatch!3681 (c!218766 C!7652)) (Concat!6139 (regOne!7874 Regex!3681) (regTwo!7874 Regex!3681)) (EmptyExpr!3681) (Star!3681 (reg!4010 Regex!3681)) (EmptyLang!3681) (Union!3681 (regOne!7875 Regex!3681) (regTwo!7875 Regex!3681)) )
))
(declare-datatypes ((TokenValueInjection!4574 0))(
  ( (TokenValueInjection!4575 (toValue!3602 Int) (toChars!3461 Int)) )
))
(declare-datatypes ((Rule!4534 0))(
  ( (Rule!4535 (regex!2367 Regex!3681) (tag!2629 String!16521) (isSeparator!2367 Bool) (transformation!2367 TokenValueInjection!4574)) )
))
(declare-datatypes ((List!13718 0))(
  ( (Nil!13652) (Cons!13652 (h!19053 Rule!4534) (t!119283 List!13718)) )
))
(declare-fun rules!2550 () List!13718)

(declare-fun sepAndNonSepRulesDisjointChars!740 (List!13718 List!13718) Bool)

(assert (=> b!1336173 (= res!602490 (sepAndNonSepRulesDisjointChars!740 rules!2550 rules!2550))))

(declare-fun tp!386669 () Bool)

(declare-fun b!1336174 () Bool)

(declare-fun e!856008 () Bool)

(declare-datatypes ((Token!4396 0))(
  ( (Token!4397 (value!77092 TokenValue!2457) (rule!4112 Rule!4534) (size!11113 Int) (originalCharacters!3229 List!13717)) )
))
(declare-fun t1!34 () Token!4396)

(declare-fun e!856005 () Bool)

(declare-fun inv!21 (TokenValue!2457) Bool)

(assert (=> b!1336174 (= e!856005 (and (inv!21 (value!77092 t1!34)) e!856008 tp!386669))))

(declare-fun b!1336175 () Bool)

(declare-fun e!856016 () Bool)

(declare-fun e!856010 () Bool)

(declare-fun tp!386668 () Bool)

(assert (=> b!1336175 (= e!856016 (and e!856010 tp!386668))))

(declare-fun e!856015 () Bool)

(declare-fun e!856014 () Bool)

(assert (=> b!1336176 (= e!856015 (not e!856014))))

(declare-fun res!602488 () Bool)

(assert (=> b!1336176 (=> res!602488 e!856014)))

(declare-fun lambda!56007 () Int)

(declare-fun Exists!833 (Int) Bool)

(assert (=> b!1336176 (= res!602488 (not (Exists!833 lambda!56007)))))

(assert (=> b!1336176 (Exists!833 lambda!56007)))

(declare-datatypes ((Unit!19781 0))(
  ( (Unit!19782) )
))
(declare-fun lt!442340 () Unit!19781)

(declare-fun lt!442339 () Regex!3681)

(declare-fun lt!442344 () List!13717)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!151 (Regex!3681 List!13717) Unit!19781)

(assert (=> b!1336176 (= lt!442340 (lemmaPrefixMatchThenExistsStringThatMatches!151 lt!442339 lt!442344))))

(declare-fun b!1336177 () Bool)

(declare-fun res!602491 () Bool)

(declare-fun e!856006 () Bool)

(assert (=> b!1336177 (=> (not res!602491) (not e!856006))))

(declare-datatypes ((LexerInterface!2062 0))(
  ( (LexerInterfaceExt!2059 (__x!8744 Int)) (Lexer!2060) )
))
(declare-fun thiss!19762 () LexerInterface!2062)

(declare-fun rulesInvariant!1932 (LexerInterface!2062 List!13718) Bool)

(assert (=> b!1336177 (= res!602491 (rulesInvariant!1932 thiss!19762 rules!2550))))

(declare-fun b!1336178 () Bool)

(declare-fun e!856004 () Bool)

(declare-fun lt!442342 () BalanceConc!8938)

(declare-fun contains!2489 (List!13717 C!7652) Bool)

(declare-fun apply!3195 (BalanceConc!8938 Int) C!7652)

(assert (=> b!1336178 (= e!856004 (contains!2489 lt!442344 (apply!3195 lt!442342 0)))))

(declare-fun b!1336179 () Bool)

(declare-fun res!602495 () Bool)

(assert (=> b!1336179 (=> (not res!602495) (not e!856006))))

(declare-fun t2!34 () Token!4396)

(declare-fun rulesProduceIndividualToken!1031 (LexerInterface!2062 List!13718 Token!4396) Bool)

(assert (=> b!1336179 (= res!602495 (rulesProduceIndividualToken!1031 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1336180 () Bool)

(declare-fun res!602486 () Bool)

(assert (=> b!1336180 (=> (not res!602486) (not e!856006))))

(assert (=> b!1336180 (= res!602486 (rulesProduceIndividualToken!1031 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1336181 () Bool)

(declare-fun res!602485 () Bool)

(assert (=> b!1336181 (=> (not res!602485) (not e!856006))))

(assert (=> b!1336181 (= res!602485 (not (= (isSeparator!2367 (rule!4112 t1!34)) (isSeparator!2367 (rule!4112 t2!34)))))))

(declare-fun e!856017 () Bool)

(declare-fun b!1336182 () Bool)

(declare-fun tp!386664 () Bool)

(declare-fun e!856013 () Bool)

(assert (=> b!1336182 (= e!856017 (and (inv!21 (value!77092 t2!34)) e!856013 tp!386664))))

(declare-fun b!1336184 () Bool)

(declare-fun e!856002 () Bool)

(declare-fun tp!386665 () Bool)

(declare-fun inv!17984 (String!16521) Bool)

(declare-fun inv!17987 (TokenValueInjection!4574) Bool)

(assert (=> b!1336184 (= e!856010 (and tp!386665 (inv!17984 (tag!2629 (h!19053 rules!2550))) (inv!17987 (transformation!2367 (h!19053 rules!2550))) e!856002))))

(declare-fun b!1336185 () Bool)

(declare-fun e!856003 () Bool)

(declare-fun tp!386659 () Bool)

(assert (=> b!1336185 (= e!856013 (and tp!386659 (inv!17984 (tag!2629 (rule!4112 t2!34))) (inv!17987 (transformation!2367 (rule!4112 t2!34))) e!856003))))

(declare-fun b!1336186 () Bool)

(declare-fun res!602487 () Bool)

(assert (=> b!1336186 (=> (not res!602487) (not e!856006))))

(declare-fun isEmpty!8139 (List!13718) Bool)

(assert (=> b!1336186 (= res!602487 (not (isEmpty!8139 rules!2550)))))

(declare-fun b!1336187 () Bool)

(declare-fun res!602492 () Bool)

(assert (=> b!1336187 (=> (not res!602492) (not e!856011))))

(declare-fun separableTokensPredicate!345 (LexerInterface!2062 Token!4396 Token!4396 List!13718) Bool)

(assert (=> b!1336187 (= res!602492 (not (separableTokensPredicate!345 thiss!19762 t1!34 t2!34 rules!2550)))))

(assert (=> b!1336188 (= e!856003 (and tp!386663 tp!386661))))

(declare-fun b!1336189 () Bool)

(assert (=> b!1336189 (= e!856011 e!856015)))

(declare-fun res!602489 () Bool)

(assert (=> b!1336189 (=> (not res!602489) (not e!856015))))

(declare-fun prefixMatch!190 (Regex!3681 List!13717) Bool)

(assert (=> b!1336189 (= res!602489 (prefixMatch!190 lt!442339 lt!442344))))

(declare-fun rulesRegex!250 (LexerInterface!2062 List!13718) Regex!3681)

(assert (=> b!1336189 (= lt!442339 (rulesRegex!250 thiss!19762 rules!2550))))

(declare-fun lt!442341 () BalanceConc!8938)

(declare-fun ++!3488 (List!13717 List!13717) List!13717)

(declare-fun list!5187 (BalanceConc!8938) List!13717)

(assert (=> b!1336189 (= lt!442344 (++!3488 (list!5187 lt!442342) (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)))))

(declare-fun charsOf!1339 (Token!4396) BalanceConc!8938)

(assert (=> b!1336189 (= lt!442342 (charsOf!1339 t1!34))))

(declare-fun b!1336190 () Bool)

(declare-fun e!856000 () Bool)

(declare-fun tp!386667 () Bool)

(assert (=> b!1336190 (= e!856008 (and tp!386667 (inv!17984 (tag!2629 (rule!4112 t1!34))) (inv!17987 (transformation!2367 (rule!4112 t1!34))) e!856000))))

(assert (=> b!1336191 (= e!856000 (and tp!386666 tp!386660))))

(assert (=> b!1336183 (= e!856002 (and tp!386670 tp!386662))))

(declare-fun res!602494 () Bool)

(assert (=> start!119002 (=> (not res!602494) (not e!856006))))

(get-info :version)

(assert (=> start!119002 (= res!602494 ((_ is Lexer!2060) thiss!19762))))

(assert (=> start!119002 e!856006))

(assert (=> start!119002 true))

(assert (=> start!119002 e!856016))

(declare-fun inv!17988 (Token!4396) Bool)

(assert (=> start!119002 (and (inv!17988 t1!34) e!856005)))

(assert (=> start!119002 (and (inv!17988 t2!34) e!856017)))

(declare-fun b!1336192 () Bool)

(assert (=> b!1336192 (= e!856014 e!856004)))

(declare-fun res!602496 () Bool)

(assert (=> b!1336192 (=> res!602496 e!856004)))

(declare-fun lt!442343 () List!13717)

(declare-fun getSuffix!529 (List!13717 List!13717) List!13717)

(assert (=> b!1336192 (= res!602496 (not (= lt!442343 (++!3488 lt!442344 (getSuffix!529 lt!442343 lt!442344)))))))

(declare-fun pickWitness!136 (Int) List!13717)

(assert (=> b!1336192 (= lt!442343 (pickWitness!136 lambda!56007))))

(declare-fun b!1336193 () Bool)

(assert (=> b!1336193 (= e!856006 e!856011)))

(declare-fun res!602493 () Bool)

(assert (=> b!1336193 (=> (not res!602493) (not e!856011))))

(declare-fun size!11114 (BalanceConc!8938) Int)

(assert (=> b!1336193 (= res!602493 (> (size!11114 lt!442341) 0))))

(assert (=> b!1336193 (= lt!442341 (charsOf!1339 t2!34))))

(assert (= (and start!119002 res!602494) b!1336186))

(assert (= (and b!1336186 res!602487) b!1336177))

(assert (= (and b!1336177 res!602491) b!1336180))

(assert (= (and b!1336180 res!602486) b!1336179))

(assert (= (and b!1336179 res!602495) b!1336181))

(assert (= (and b!1336181 res!602485) b!1336193))

(assert (= (and b!1336193 res!602493) b!1336173))

(assert (= (and b!1336173 res!602490) b!1336187))

(assert (= (and b!1336187 res!602492) b!1336189))

(assert (= (and b!1336189 res!602489) b!1336176))

(assert (= (and b!1336176 (not res!602488)) b!1336192))

(assert (= (and b!1336192 (not res!602496)) b!1336178))

(assert (= b!1336184 b!1336183))

(assert (= b!1336175 b!1336184))

(assert (= (and start!119002 ((_ is Cons!13652) rules!2550)) b!1336175))

(assert (= b!1336190 b!1336191))

(assert (= b!1336174 b!1336190))

(assert (= start!119002 b!1336174))

(assert (= b!1336185 b!1336188))

(assert (= b!1336182 b!1336185))

(assert (= start!119002 b!1336182))

(declare-fun m!1493701 () Bool)

(assert (=> start!119002 m!1493701))

(declare-fun m!1493703 () Bool)

(assert (=> start!119002 m!1493703))

(declare-fun m!1493705 () Bool)

(assert (=> b!1336186 m!1493705))

(declare-fun m!1493707 () Bool)

(assert (=> b!1336190 m!1493707))

(declare-fun m!1493709 () Bool)

(assert (=> b!1336190 m!1493709))

(declare-fun m!1493711 () Bool)

(assert (=> b!1336180 m!1493711))

(declare-fun m!1493713 () Bool)

(assert (=> b!1336179 m!1493713))

(declare-fun m!1493715 () Bool)

(assert (=> b!1336174 m!1493715))

(declare-fun m!1493717 () Bool)

(assert (=> b!1336184 m!1493717))

(declare-fun m!1493719 () Bool)

(assert (=> b!1336184 m!1493719))

(declare-fun m!1493721 () Bool)

(assert (=> b!1336178 m!1493721))

(assert (=> b!1336178 m!1493721))

(declare-fun m!1493723 () Bool)

(assert (=> b!1336178 m!1493723))

(declare-fun m!1493725 () Bool)

(assert (=> b!1336192 m!1493725))

(assert (=> b!1336192 m!1493725))

(declare-fun m!1493727 () Bool)

(assert (=> b!1336192 m!1493727))

(declare-fun m!1493729 () Bool)

(assert (=> b!1336192 m!1493729))

(declare-fun m!1493731 () Bool)

(assert (=> b!1336173 m!1493731))

(declare-fun m!1493733 () Bool)

(assert (=> b!1336185 m!1493733))

(declare-fun m!1493735 () Bool)

(assert (=> b!1336185 m!1493735))

(declare-fun m!1493737 () Bool)

(assert (=> b!1336176 m!1493737))

(assert (=> b!1336176 m!1493737))

(declare-fun m!1493739 () Bool)

(assert (=> b!1336176 m!1493739))

(declare-fun m!1493741 () Bool)

(assert (=> b!1336187 m!1493741))

(declare-fun m!1493743 () Bool)

(assert (=> b!1336189 m!1493743))

(declare-fun m!1493745 () Bool)

(assert (=> b!1336189 m!1493745))

(declare-fun m!1493747 () Bool)

(assert (=> b!1336189 m!1493747))

(declare-fun m!1493749 () Bool)

(assert (=> b!1336189 m!1493749))

(assert (=> b!1336189 m!1493745))

(declare-fun m!1493751 () Bool)

(assert (=> b!1336189 m!1493751))

(declare-fun m!1493753 () Bool)

(assert (=> b!1336189 m!1493753))

(declare-fun m!1493755 () Bool)

(assert (=> b!1336193 m!1493755))

(declare-fun m!1493757 () Bool)

(assert (=> b!1336193 m!1493757))

(declare-fun m!1493759 () Bool)

(assert (=> b!1336182 m!1493759))

(declare-fun m!1493761 () Bool)

(assert (=> b!1336177 m!1493761))

(check-sat (not b!1336189) (not b!1336174) (not b!1336178) (not b_next!33245) (not b_next!33253) (not b!1336182) (not b!1336193) (not start!119002) (not b!1336177) (not b!1336175) b_and!89437 (not b!1336173) (not b!1336190) (not b_next!33243) b_and!89441 b_and!89443 (not b!1336176) (not b!1336184) (not b_next!33247) (not b_next!33251) (not b!1336180) (not b!1336185) (not b_next!33249) (not b!1336187) b_and!89439 (not b!1336192) b_and!89435 b_and!89445 (not b!1336186) (not b!1336179))
(check-sat b_and!89437 (not b_next!33243) (not b_next!33247) (not b_next!33251) (not b_next!33249) (not b_next!33245) (not b_next!33253) b_and!89439 b_and!89441 b_and!89443 b_and!89435 b_and!89445)
(get-model)

(declare-fun d!376372 () Bool)

(assert (=> d!376372 (= (inv!17984 (tag!2629 (rule!4112 t2!34))) (= (mod (str.len (value!77091 (tag!2629 (rule!4112 t2!34)))) 2) 0))))

(assert (=> b!1336185 d!376372))

(declare-fun d!376374 () Bool)

(declare-fun res!602524 () Bool)

(declare-fun e!856044 () Bool)

(assert (=> d!376374 (=> (not res!602524) (not e!856044))))

(declare-fun semiInverseModEq!894 (Int Int) Bool)

(assert (=> d!376374 (= res!602524 (semiInverseModEq!894 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (toValue!3602 (transformation!2367 (rule!4112 t2!34)))))))

(assert (=> d!376374 (= (inv!17987 (transformation!2367 (rule!4112 t2!34))) e!856044)))

(declare-fun b!1336235 () Bool)

(declare-fun equivClasses!853 (Int Int) Bool)

(assert (=> b!1336235 (= e!856044 (equivClasses!853 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (toValue!3602 (transformation!2367 (rule!4112 t2!34)))))))

(assert (= (and d!376374 res!602524) b!1336235))

(declare-fun m!1493799 () Bool)

(assert (=> d!376374 m!1493799))

(declare-fun m!1493803 () Bool)

(assert (=> b!1336235 m!1493803))

(assert (=> b!1336185 d!376374))

(declare-fun b!1336258 () Bool)

(declare-fun e!856058 () Bool)

(declare-fun inv!17 (TokenValue!2457) Bool)

(assert (=> b!1336258 (= e!856058 (inv!17 (value!77092 t1!34)))))

(declare-fun b!1336259 () Bool)

(declare-fun res!602533 () Bool)

(declare-fun e!856057 () Bool)

(assert (=> b!1336259 (=> res!602533 e!856057)))

(assert (=> b!1336259 (= res!602533 (not ((_ is IntegerValue!7373) (value!77092 t1!34))))))

(assert (=> b!1336259 (= e!856058 e!856057)))

(declare-fun d!376382 () Bool)

(declare-fun c!218780 () Bool)

(assert (=> d!376382 (= c!218780 ((_ is IntegerValue!7371) (value!77092 t1!34)))))

(declare-fun e!856059 () Bool)

(assert (=> d!376382 (= (inv!21 (value!77092 t1!34)) e!856059)))

(declare-fun b!1336260 () Bool)

(declare-fun inv!16 (TokenValue!2457) Bool)

(assert (=> b!1336260 (= e!856059 (inv!16 (value!77092 t1!34)))))

(declare-fun b!1336261 () Bool)

(declare-fun inv!15 (TokenValue!2457) Bool)

(assert (=> b!1336261 (= e!856057 (inv!15 (value!77092 t1!34)))))

(declare-fun b!1336262 () Bool)

(assert (=> b!1336262 (= e!856059 e!856058)))

(declare-fun c!218781 () Bool)

(assert (=> b!1336262 (= c!218781 ((_ is IntegerValue!7372) (value!77092 t1!34)))))

(assert (= (and d!376382 c!218780) b!1336260))

(assert (= (and d!376382 (not c!218780)) b!1336262))

(assert (= (and b!1336262 c!218781) b!1336258))

(assert (= (and b!1336262 (not c!218781)) b!1336259))

(assert (= (and b!1336259 (not res!602533)) b!1336261))

(declare-fun m!1493821 () Bool)

(assert (=> b!1336258 m!1493821))

(declare-fun m!1493823 () Bool)

(assert (=> b!1336260 m!1493823))

(declare-fun m!1493825 () Bool)

(assert (=> b!1336261 m!1493825))

(assert (=> b!1336174 d!376382))

(declare-fun d!376388 () Bool)

(assert (=> d!376388 (= (inv!17984 (tag!2629 (h!19053 rules!2550))) (= (mod (str.len (value!77091 (tag!2629 (h!19053 rules!2550)))) 2) 0))))

(assert (=> b!1336184 d!376388))

(declare-fun d!376390 () Bool)

(declare-fun res!602534 () Bool)

(declare-fun e!856062 () Bool)

(assert (=> d!376390 (=> (not res!602534) (not e!856062))))

(assert (=> d!376390 (= res!602534 (semiInverseModEq!894 (toChars!3461 (transformation!2367 (h!19053 rules!2550))) (toValue!3602 (transformation!2367 (h!19053 rules!2550)))))))

(assert (=> d!376390 (= (inv!17987 (transformation!2367 (h!19053 rules!2550))) e!856062)))

(declare-fun b!1336267 () Bool)

(assert (=> b!1336267 (= e!856062 (equivClasses!853 (toChars!3461 (transformation!2367 (h!19053 rules!2550))) (toValue!3602 (transformation!2367 (h!19053 rules!2550)))))))

(assert (= (and d!376390 res!602534) b!1336267))

(declare-fun m!1493827 () Bool)

(assert (=> d!376390 m!1493827))

(declare-fun m!1493829 () Bool)

(assert (=> b!1336267 m!1493829))

(assert (=> b!1336184 d!376390))

(declare-fun d!376392 () Bool)

(declare-fun res!602539 () Bool)

(declare-fun e!856068 () Bool)

(assert (=> d!376392 (=> res!602539 e!856068)))

(assert (=> d!376392 (= res!602539 (not ((_ is Cons!13652) rules!2550)))))

(assert (=> d!376392 (= (sepAndNonSepRulesDisjointChars!740 rules!2550 rules!2550) e!856068)))

(declare-fun b!1336274 () Bool)

(declare-fun e!856069 () Bool)

(assert (=> b!1336274 (= e!856068 e!856069)))

(declare-fun res!602540 () Bool)

(assert (=> b!1336274 (=> (not res!602540) (not e!856069))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!336 (Rule!4534 List!13718) Bool)

(assert (=> b!1336274 (= res!602540 (ruleDisjointCharsFromAllFromOtherType!336 (h!19053 rules!2550) rules!2550))))

(declare-fun b!1336275 () Bool)

(assert (=> b!1336275 (= e!856069 (sepAndNonSepRulesDisjointChars!740 rules!2550 (t!119283 rules!2550)))))

(assert (= (and d!376392 (not res!602539)) b!1336274))

(assert (= (and b!1336274 res!602540) b!1336275))

(declare-fun m!1493851 () Bool)

(assert (=> b!1336274 m!1493851))

(declare-fun m!1493853 () Bool)

(assert (=> b!1336275 m!1493853))

(assert (=> b!1336173 d!376392))

(declare-fun d!376400 () Bool)

(declare-fun lt!442359 () Int)

(declare-fun size!11118 (List!13717) Int)

(assert (=> d!376400 (= lt!442359 (size!11118 (list!5187 lt!442341)))))

(declare-fun size!11119 (Conc!4499) Int)

(assert (=> d!376400 (= lt!442359 (size!11119 (c!218765 lt!442341)))))

(assert (=> d!376400 (= (size!11114 lt!442341) lt!442359)))

(declare-fun bs!331951 () Bool)

(assert (= bs!331951 d!376400))

(declare-fun m!1493861 () Bool)

(assert (=> bs!331951 m!1493861))

(assert (=> bs!331951 m!1493861))

(declare-fun m!1493863 () Bool)

(assert (=> bs!331951 m!1493863))

(declare-fun m!1493865 () Bool)

(assert (=> bs!331951 m!1493865))

(assert (=> b!1336193 d!376400))

(declare-fun d!376404 () Bool)

(declare-fun lt!442362 () BalanceConc!8938)

(assert (=> d!376404 (= (list!5187 lt!442362) (originalCharacters!3229 t2!34))))

(declare-fun dynLambda!6009 (Int TokenValue!2457) BalanceConc!8938)

(assert (=> d!376404 (= lt!442362 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))

(assert (=> d!376404 (= (charsOf!1339 t2!34) lt!442362)))

(declare-fun b_lambda!39437 () Bool)

(assert (=> (not b_lambda!39437) (not d!376404)))

(declare-fun tb!70485 () Bool)

(declare-fun t!119297 () Bool)

(assert (=> (and b!1336191 (= (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (toChars!3461 (transformation!2367 (rule!4112 t2!34)))) t!119297) tb!70485))

(declare-fun b!1336283 () Bool)

(declare-fun e!856075 () Bool)

(declare-fun tp!386677 () Bool)

(declare-fun inv!17991 (Conc!4499) Bool)

(assert (=> b!1336283 (= e!856075 (and (inv!17991 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))) tp!386677))))

(declare-fun result!85632 () Bool)

(declare-fun inv!17992 (BalanceConc!8938) Bool)

(assert (=> tb!70485 (= result!85632 (and (inv!17992 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))) e!856075))))

(assert (= tb!70485 b!1336283))

(declare-fun m!1493867 () Bool)

(assert (=> b!1336283 m!1493867))

(declare-fun m!1493869 () Bool)

(assert (=> tb!70485 m!1493869))

(assert (=> d!376404 t!119297))

(declare-fun b_and!89465 () Bool)

(assert (= b_and!89437 (and (=> t!119297 result!85632) b_and!89465)))

(declare-fun t!119299 () Bool)

(declare-fun tb!70487 () Bool)

(assert (=> (and b!1336183 (= (toChars!3461 (transformation!2367 (h!19053 rules!2550))) (toChars!3461 (transformation!2367 (rule!4112 t2!34)))) t!119299) tb!70487))

(declare-fun result!85636 () Bool)

(assert (= result!85636 result!85632))

(assert (=> d!376404 t!119299))

(declare-fun b_and!89467 () Bool)

(assert (= b_and!89441 (and (=> t!119299 result!85636) b_and!89467)))

(declare-fun t!119301 () Bool)

(declare-fun tb!70489 () Bool)

(assert (=> (and b!1336188 (= (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (toChars!3461 (transformation!2367 (rule!4112 t2!34)))) t!119301) tb!70489))

(declare-fun result!85638 () Bool)

(assert (= result!85638 result!85632))

(assert (=> d!376404 t!119301))

(declare-fun b_and!89469 () Bool)

(assert (= b_and!89445 (and (=> t!119301 result!85638) b_and!89469)))

(declare-fun m!1493871 () Bool)

(assert (=> d!376404 m!1493871))

(declare-fun m!1493873 () Bool)

(assert (=> d!376404 m!1493873))

(assert (=> b!1336193 d!376404))

(declare-fun b!1336284 () Bool)

(declare-fun e!856077 () Bool)

(assert (=> b!1336284 (= e!856077 (inv!17 (value!77092 t2!34)))))

(declare-fun b!1336285 () Bool)

(declare-fun res!602544 () Bool)

(declare-fun e!856076 () Bool)

(assert (=> b!1336285 (=> res!602544 e!856076)))

(assert (=> b!1336285 (= res!602544 (not ((_ is IntegerValue!7373) (value!77092 t2!34))))))

(assert (=> b!1336285 (= e!856077 e!856076)))

(declare-fun d!376408 () Bool)

(declare-fun c!218785 () Bool)

(assert (=> d!376408 (= c!218785 ((_ is IntegerValue!7371) (value!77092 t2!34)))))

(declare-fun e!856078 () Bool)

(assert (=> d!376408 (= (inv!21 (value!77092 t2!34)) e!856078)))

(declare-fun b!1336286 () Bool)

(assert (=> b!1336286 (= e!856078 (inv!16 (value!77092 t2!34)))))

(declare-fun b!1336287 () Bool)

(assert (=> b!1336287 (= e!856076 (inv!15 (value!77092 t2!34)))))

(declare-fun b!1336288 () Bool)

(assert (=> b!1336288 (= e!856078 e!856077)))

(declare-fun c!218786 () Bool)

(assert (=> b!1336288 (= c!218786 ((_ is IntegerValue!7372) (value!77092 t2!34)))))

(assert (= (and d!376408 c!218785) b!1336286))

(assert (= (and d!376408 (not c!218785)) b!1336288))

(assert (= (and b!1336288 c!218786) b!1336284))

(assert (= (and b!1336288 (not c!218786)) b!1336285))

(assert (= (and b!1336285 (not res!602544)) b!1336287))

(declare-fun m!1493875 () Bool)

(assert (=> b!1336284 m!1493875))

(declare-fun m!1493877 () Bool)

(assert (=> b!1336286 m!1493877))

(declare-fun m!1493879 () Bool)

(assert (=> b!1336287 m!1493879))

(assert (=> b!1336182 d!376408))

(declare-fun e!856083 () Bool)

(declare-fun b!1336300 () Bool)

(declare-fun lt!442365 () List!13717)

(assert (=> b!1336300 (= e!856083 (or (not (= (getSuffix!529 lt!442343 lt!442344) Nil!13651)) (= lt!442365 lt!442344)))))

(declare-fun d!376410 () Bool)

(assert (=> d!376410 e!856083))

(declare-fun res!602550 () Bool)

(assert (=> d!376410 (=> (not res!602550) (not e!856083))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1937 (List!13717) (InoxSet C!7652))

(assert (=> d!376410 (= res!602550 (= (content!1937 lt!442365) ((_ map or) (content!1937 lt!442344) (content!1937 (getSuffix!529 lt!442343 lt!442344)))))))

(declare-fun e!856084 () List!13717)

(assert (=> d!376410 (= lt!442365 e!856084)))

(declare-fun c!218789 () Bool)

(assert (=> d!376410 (= c!218789 ((_ is Nil!13651) lt!442344))))

(assert (=> d!376410 (= (++!3488 lt!442344 (getSuffix!529 lt!442343 lt!442344)) lt!442365)))

(declare-fun b!1336299 () Bool)

(declare-fun res!602549 () Bool)

(assert (=> b!1336299 (=> (not res!602549) (not e!856083))))

(assert (=> b!1336299 (= res!602549 (= (size!11118 lt!442365) (+ (size!11118 lt!442344) (size!11118 (getSuffix!529 lt!442343 lt!442344)))))))

(declare-fun b!1336297 () Bool)

(assert (=> b!1336297 (= e!856084 (getSuffix!529 lt!442343 lt!442344))))

(declare-fun b!1336298 () Bool)

(assert (=> b!1336298 (= e!856084 (Cons!13651 (h!19052 lt!442344) (++!3488 (t!119282 lt!442344) (getSuffix!529 lt!442343 lt!442344))))))

(assert (= (and d!376410 c!218789) b!1336297))

(assert (= (and d!376410 (not c!218789)) b!1336298))

(assert (= (and d!376410 res!602550) b!1336299))

(assert (= (and b!1336299 res!602549) b!1336300))

(declare-fun m!1493881 () Bool)

(assert (=> d!376410 m!1493881))

(declare-fun m!1493883 () Bool)

(assert (=> d!376410 m!1493883))

(assert (=> d!376410 m!1493725))

(declare-fun m!1493885 () Bool)

(assert (=> d!376410 m!1493885))

(declare-fun m!1493887 () Bool)

(assert (=> b!1336299 m!1493887))

(declare-fun m!1493889 () Bool)

(assert (=> b!1336299 m!1493889))

(assert (=> b!1336299 m!1493725))

(declare-fun m!1493891 () Bool)

(assert (=> b!1336299 m!1493891))

(assert (=> b!1336298 m!1493725))

(declare-fun m!1493893 () Bool)

(assert (=> b!1336298 m!1493893))

(assert (=> b!1336192 d!376410))

(declare-fun d!376412 () Bool)

(declare-fun lt!442368 () List!13717)

(assert (=> d!376412 (= (++!3488 lt!442344 lt!442368) lt!442343)))

(declare-fun e!856087 () List!13717)

(assert (=> d!376412 (= lt!442368 e!856087)))

(declare-fun c!218792 () Bool)

(assert (=> d!376412 (= c!218792 ((_ is Cons!13651) lt!442344))))

(assert (=> d!376412 (>= (size!11118 lt!442343) (size!11118 lt!442344))))

(assert (=> d!376412 (= (getSuffix!529 lt!442343 lt!442344) lt!442368)))

(declare-fun b!1336305 () Bool)

(declare-fun tail!1918 (List!13717) List!13717)

(assert (=> b!1336305 (= e!856087 (getSuffix!529 (tail!1918 lt!442343) (t!119282 lt!442344)))))

(declare-fun b!1336306 () Bool)

(assert (=> b!1336306 (= e!856087 lt!442343)))

(assert (= (and d!376412 c!218792) b!1336305))

(assert (= (and d!376412 (not c!218792)) b!1336306))

(declare-fun m!1493895 () Bool)

(assert (=> d!376412 m!1493895))

(declare-fun m!1493897 () Bool)

(assert (=> d!376412 m!1493897))

(assert (=> d!376412 m!1493889))

(declare-fun m!1493899 () Bool)

(assert (=> b!1336305 m!1493899))

(assert (=> b!1336305 m!1493899))

(declare-fun m!1493901 () Bool)

(assert (=> b!1336305 m!1493901))

(assert (=> b!1336192 d!376412))

(declare-fun d!376414 () Bool)

(declare-fun lt!442371 () List!13717)

(declare-fun dynLambda!6010 (Int List!13717) Bool)

(assert (=> d!376414 (dynLambda!6010 lambda!56007 lt!442371)))

(declare-fun choose!8193 (Int) List!13717)

(assert (=> d!376414 (= lt!442371 (choose!8193 lambda!56007))))

(assert (=> d!376414 (Exists!833 lambda!56007)))

(assert (=> d!376414 (= (pickWitness!136 lambda!56007) lt!442371)))

(declare-fun b_lambda!39439 () Bool)

(assert (=> (not b_lambda!39439) (not d!376414)))

(declare-fun bs!331952 () Bool)

(assert (= bs!331952 d!376414))

(declare-fun m!1493903 () Bool)

(assert (=> bs!331952 m!1493903))

(declare-fun m!1493905 () Bool)

(assert (=> bs!331952 m!1493905))

(assert (=> bs!331952 m!1493737))

(assert (=> b!1336192 d!376414))

(declare-fun d!376416 () Bool)

(declare-fun lt!442403 () Bool)

(declare-fun e!856147 () Bool)

(assert (=> d!376416 (= lt!442403 e!856147)))

(declare-fun res!602591 () Bool)

(assert (=> d!376416 (=> (not res!602591) (not e!856147))))

(declare-datatypes ((List!13722 0))(
  ( (Nil!13656) (Cons!13656 (h!19057 Token!4396) (t!119321 List!13722)) )
))
(declare-datatypes ((IArray!9007 0))(
  ( (IArray!9008 (innerList!4561 List!13722)) )
))
(declare-datatypes ((Conc!4501 0))(
  ( (Node!4501 (left!11718 Conc!4501) (right!12048 Conc!4501) (csize!9232 Int) (cheight!4712 Int)) (Leaf!6881 (xs!7216 IArray!9007) (csize!9233 Int)) (Empty!4501) )
))
(declare-datatypes ((BalanceConc!8942 0))(
  ( (BalanceConc!8943 (c!218804 Conc!4501)) )
))
(declare-fun list!5190 (BalanceConc!8942) List!13722)

(declare-datatypes ((tuple2!13274 0))(
  ( (tuple2!13275 (_1!7523 BalanceConc!8942) (_2!7523 BalanceConc!8938)) )
))
(declare-fun lex!893 (LexerInterface!2062 List!13718 BalanceConc!8938) tuple2!13274)

(declare-fun print!832 (LexerInterface!2062 BalanceConc!8942) BalanceConc!8938)

(declare-fun singletonSeq!969 (Token!4396) BalanceConc!8942)

(assert (=> d!376416 (= res!602591 (= (list!5190 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34))))) (list!5190 (singletonSeq!969 t1!34))))))

(declare-fun e!856148 () Bool)

(assert (=> d!376416 (= lt!442403 e!856148)))

(declare-fun res!602590 () Bool)

(assert (=> d!376416 (=> (not res!602590) (not e!856148))))

(declare-fun lt!442402 () tuple2!13274)

(declare-fun size!11120 (BalanceConc!8942) Int)

(assert (=> d!376416 (= res!602590 (= (size!11120 (_1!7523 lt!442402)) 1))))

(assert (=> d!376416 (= lt!442402 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34))))))

(assert (=> d!376416 (not (isEmpty!8139 rules!2550))))

(assert (=> d!376416 (= (rulesProduceIndividualToken!1031 thiss!19762 rules!2550 t1!34) lt!442403)))

(declare-fun b!1336397 () Bool)

(declare-fun res!602592 () Bool)

(assert (=> b!1336397 (=> (not res!602592) (not e!856148))))

(declare-fun apply!3199 (BalanceConc!8942 Int) Token!4396)

(assert (=> b!1336397 (= res!602592 (= (apply!3199 (_1!7523 lt!442402) 0) t1!34))))

(declare-fun b!1336398 () Bool)

(declare-fun isEmpty!8142 (BalanceConc!8938) Bool)

(assert (=> b!1336398 (= e!856148 (isEmpty!8142 (_2!7523 lt!442402)))))

(declare-fun b!1336399 () Bool)

(assert (=> b!1336399 (= e!856147 (isEmpty!8142 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34))))))))

(assert (= (and d!376416 res!602590) b!1336397))

(assert (= (and b!1336397 res!602592) b!1336398))

(assert (= (and d!376416 res!602591) b!1336399))

(declare-fun m!1494027 () Bool)

(assert (=> d!376416 m!1494027))

(declare-fun m!1494029 () Bool)

(assert (=> d!376416 m!1494029))

(assert (=> d!376416 m!1494027))

(declare-fun m!1494031 () Bool)

(assert (=> d!376416 m!1494031))

(declare-fun m!1494033 () Bool)

(assert (=> d!376416 m!1494033))

(assert (=> d!376416 m!1494027))

(declare-fun m!1494035 () Bool)

(assert (=> d!376416 m!1494035))

(assert (=> d!376416 m!1493705))

(assert (=> d!376416 m!1494029))

(declare-fun m!1494037 () Bool)

(assert (=> d!376416 m!1494037))

(declare-fun m!1494039 () Bool)

(assert (=> b!1336397 m!1494039))

(declare-fun m!1494041 () Bool)

(assert (=> b!1336398 m!1494041))

(assert (=> b!1336399 m!1494027))

(assert (=> b!1336399 m!1494027))

(assert (=> b!1336399 m!1494029))

(assert (=> b!1336399 m!1494029))

(assert (=> b!1336399 m!1494037))

(declare-fun m!1494043 () Bool)

(assert (=> b!1336399 m!1494043))

(assert (=> b!1336180 d!376416))

(declare-fun d!376454 () Bool)

(assert (=> d!376454 (= (inv!17984 (tag!2629 (rule!4112 t1!34))) (= (mod (str.len (value!77091 (tag!2629 (rule!4112 t1!34)))) 2) 0))))

(assert (=> b!1336190 d!376454))

(declare-fun d!376456 () Bool)

(declare-fun res!602593 () Bool)

(declare-fun e!856149 () Bool)

(assert (=> d!376456 (=> (not res!602593) (not e!856149))))

(assert (=> d!376456 (= res!602593 (semiInverseModEq!894 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (toValue!3602 (transformation!2367 (rule!4112 t1!34)))))))

(assert (=> d!376456 (= (inv!17987 (transformation!2367 (rule!4112 t1!34))) e!856149)))

(declare-fun b!1336400 () Bool)

(assert (=> b!1336400 (= e!856149 (equivClasses!853 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (toValue!3602 (transformation!2367 (rule!4112 t1!34)))))))

(assert (= (and d!376456 res!602593) b!1336400))

(declare-fun m!1494045 () Bool)

(assert (=> d!376456 m!1494045))

(declare-fun m!1494047 () Bool)

(assert (=> b!1336400 m!1494047))

(assert (=> b!1336190 d!376456))

(declare-fun d!376458 () Bool)

(declare-fun lt!442405 () Bool)

(declare-fun e!856150 () Bool)

(assert (=> d!376458 (= lt!442405 e!856150)))

(declare-fun res!602595 () Bool)

(assert (=> d!376458 (=> (not res!602595) (not e!856150))))

(assert (=> d!376458 (= res!602595 (= (list!5190 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34))))) (list!5190 (singletonSeq!969 t2!34))))))

(declare-fun e!856151 () Bool)

(assert (=> d!376458 (= lt!442405 e!856151)))

(declare-fun res!602594 () Bool)

(assert (=> d!376458 (=> (not res!602594) (not e!856151))))

(declare-fun lt!442404 () tuple2!13274)

(assert (=> d!376458 (= res!602594 (= (size!11120 (_1!7523 lt!442404)) 1))))

(assert (=> d!376458 (= lt!442404 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34))))))

(assert (=> d!376458 (not (isEmpty!8139 rules!2550))))

(assert (=> d!376458 (= (rulesProduceIndividualToken!1031 thiss!19762 rules!2550 t2!34) lt!442405)))

(declare-fun b!1336401 () Bool)

(declare-fun res!602596 () Bool)

(assert (=> b!1336401 (=> (not res!602596) (not e!856151))))

(assert (=> b!1336401 (= res!602596 (= (apply!3199 (_1!7523 lt!442404) 0) t2!34))))

(declare-fun b!1336402 () Bool)

(assert (=> b!1336402 (= e!856151 (isEmpty!8142 (_2!7523 lt!442404)))))

(declare-fun b!1336403 () Bool)

(assert (=> b!1336403 (= e!856150 (isEmpty!8142 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34))))))))

(assert (= (and d!376458 res!602594) b!1336401))

(assert (= (and b!1336401 res!602596) b!1336402))

(assert (= (and d!376458 res!602595) b!1336403))

(declare-fun m!1494049 () Bool)

(assert (=> d!376458 m!1494049))

(declare-fun m!1494051 () Bool)

(assert (=> d!376458 m!1494051))

(assert (=> d!376458 m!1494049))

(declare-fun m!1494053 () Bool)

(assert (=> d!376458 m!1494053))

(declare-fun m!1494055 () Bool)

(assert (=> d!376458 m!1494055))

(assert (=> d!376458 m!1494049))

(declare-fun m!1494057 () Bool)

(assert (=> d!376458 m!1494057))

(assert (=> d!376458 m!1493705))

(assert (=> d!376458 m!1494051))

(declare-fun m!1494059 () Bool)

(assert (=> d!376458 m!1494059))

(declare-fun m!1494061 () Bool)

(assert (=> b!1336401 m!1494061))

(declare-fun m!1494063 () Bool)

(assert (=> b!1336402 m!1494063))

(assert (=> b!1336403 m!1494049))

(assert (=> b!1336403 m!1494049))

(assert (=> b!1336403 m!1494051))

(assert (=> b!1336403 m!1494051))

(assert (=> b!1336403 m!1494059))

(declare-fun m!1494065 () Bool)

(assert (=> b!1336403 m!1494065))

(assert (=> b!1336179 d!376458))

(declare-fun d!376460 () Bool)

(declare-fun lt!442408 () C!7652)

(declare-fun apply!3200 (List!13717 Int) C!7652)

(assert (=> d!376460 (= lt!442408 (apply!3200 (list!5187 lt!442341) 0))))

(declare-fun apply!3201 (Conc!4499 Int) C!7652)

(assert (=> d!376460 (= lt!442408 (apply!3201 (c!218765 lt!442341) 0))))

(declare-fun e!856154 () Bool)

(assert (=> d!376460 e!856154))

(declare-fun res!602599 () Bool)

(assert (=> d!376460 (=> (not res!602599) (not e!856154))))

(assert (=> d!376460 (= res!602599 (<= 0 0))))

(assert (=> d!376460 (= (apply!3195 lt!442341 0) lt!442408)))

(declare-fun b!1336406 () Bool)

(assert (=> b!1336406 (= e!856154 (< 0 (size!11114 lt!442341)))))

(assert (= (and d!376460 res!602599) b!1336406))

(assert (=> d!376460 m!1493861))

(assert (=> d!376460 m!1493861))

(declare-fun m!1494067 () Bool)

(assert (=> d!376460 m!1494067))

(declare-fun m!1494069 () Bool)

(assert (=> d!376460 m!1494069))

(assert (=> b!1336406 m!1493755))

(assert (=> b!1336189 d!376460))

(declare-fun d!376462 () Bool)

(declare-fun lt!442409 () BalanceConc!8938)

(assert (=> d!376462 (= (list!5187 lt!442409) (originalCharacters!3229 t1!34))))

(assert (=> d!376462 (= lt!442409 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))

(assert (=> d!376462 (= (charsOf!1339 t1!34) lt!442409)))

(declare-fun b_lambda!39455 () Bool)

(assert (=> (not b_lambda!39455) (not d!376462)))

(declare-fun t!119312 () Bool)

(declare-fun tb!70495 () Bool)

(assert (=> (and b!1336191 (= (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (toChars!3461 (transformation!2367 (rule!4112 t1!34)))) t!119312) tb!70495))

(declare-fun b!1336407 () Bool)

(declare-fun e!856155 () Bool)

(declare-fun tp!386719 () Bool)

(assert (=> b!1336407 (= e!856155 (and (inv!17991 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))) tp!386719))))

(declare-fun result!85650 () Bool)

(assert (=> tb!70495 (= result!85650 (and (inv!17992 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))) e!856155))))

(assert (= tb!70495 b!1336407))

(declare-fun m!1494071 () Bool)

(assert (=> b!1336407 m!1494071))

(declare-fun m!1494073 () Bool)

(assert (=> tb!70495 m!1494073))

(assert (=> d!376462 t!119312))

(declare-fun b_and!89481 () Bool)

(assert (= b_and!89465 (and (=> t!119312 result!85650) b_and!89481)))

(declare-fun tb!70497 () Bool)

(declare-fun t!119314 () Bool)

(assert (=> (and b!1336183 (= (toChars!3461 (transformation!2367 (h!19053 rules!2550))) (toChars!3461 (transformation!2367 (rule!4112 t1!34)))) t!119314) tb!70497))

(declare-fun result!85652 () Bool)

(assert (= result!85652 result!85650))

(assert (=> d!376462 t!119314))

(declare-fun b_and!89483 () Bool)

(assert (= b_and!89467 (and (=> t!119314 result!85652) b_and!89483)))

(declare-fun tb!70499 () Bool)

(declare-fun t!119316 () Bool)

(assert (=> (and b!1336188 (= (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (toChars!3461 (transformation!2367 (rule!4112 t1!34)))) t!119316) tb!70499))

(declare-fun result!85654 () Bool)

(assert (= result!85654 result!85650))

(assert (=> d!376462 t!119316))

(declare-fun b_and!89485 () Bool)

(assert (= b_and!89469 (and (=> t!119316 result!85654) b_and!89485)))

(declare-fun m!1494075 () Bool)

(assert (=> d!376462 m!1494075))

(declare-fun m!1494077 () Bool)

(assert (=> d!376462 m!1494077))

(assert (=> b!1336189 d!376462))

(declare-fun d!376464 () Bool)

(declare-fun list!5191 (Conc!4499) List!13717)

(assert (=> d!376464 (= (list!5187 lt!442342) (list!5191 (c!218765 lt!442342)))))

(declare-fun bs!331960 () Bool)

(assert (= bs!331960 d!376464))

(declare-fun m!1494079 () Bool)

(assert (=> bs!331960 m!1494079))

(assert (=> b!1336189 d!376464))

(declare-fun d!376466 () Bool)

(declare-fun lt!442412 () Unit!19781)

(declare-fun lemma!93 (List!13718 LexerInterface!2062 List!13718) Unit!19781)

(assert (=> d!376466 (= lt!442412 (lemma!93 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!56016 () Int)

(declare-datatypes ((List!13723 0))(
  ( (Nil!13657) (Cons!13657 (h!19058 Regex!3681) (t!119322 List!13723)) )
))
(declare-fun generalisedUnion!101 (List!13723) Regex!3681)

(declare-fun map!3011 (List!13718 Int) List!13723)

(assert (=> d!376466 (= (rulesRegex!250 thiss!19762 rules!2550) (generalisedUnion!101 (map!3011 rules!2550 lambda!56016)))))

(declare-fun bs!331961 () Bool)

(assert (= bs!331961 d!376466))

(declare-fun m!1494081 () Bool)

(assert (=> bs!331961 m!1494081))

(declare-fun m!1494083 () Bool)

(assert (=> bs!331961 m!1494083))

(assert (=> bs!331961 m!1494083))

(declare-fun m!1494085 () Bool)

(assert (=> bs!331961 m!1494085))

(assert (=> b!1336189 d!376466))

(declare-fun b!1336411 () Bool)

(declare-fun lt!442413 () List!13717)

(declare-fun e!856156 () Bool)

(assert (=> b!1336411 (= e!856156 (or (not (= (Cons!13651 (apply!3195 lt!442341 0) Nil!13651) Nil!13651)) (= lt!442413 (list!5187 lt!442342))))))

(declare-fun d!376468 () Bool)

(assert (=> d!376468 e!856156))

(declare-fun res!602601 () Bool)

(assert (=> d!376468 (=> (not res!602601) (not e!856156))))

(assert (=> d!376468 (= res!602601 (= (content!1937 lt!442413) ((_ map or) (content!1937 (list!5187 lt!442342)) (content!1937 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)))))))

(declare-fun e!856157 () List!13717)

(assert (=> d!376468 (= lt!442413 e!856157)))

(declare-fun c!218800 () Bool)

(assert (=> d!376468 (= c!218800 ((_ is Nil!13651) (list!5187 lt!442342)))))

(assert (=> d!376468 (= (++!3488 (list!5187 lt!442342) (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)) lt!442413)))

(declare-fun b!1336410 () Bool)

(declare-fun res!602600 () Bool)

(assert (=> b!1336410 (=> (not res!602600) (not e!856156))))

(assert (=> b!1336410 (= res!602600 (= (size!11118 lt!442413) (+ (size!11118 (list!5187 lt!442342)) (size!11118 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)))))))

(declare-fun b!1336408 () Bool)

(assert (=> b!1336408 (= e!856157 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651))))

(declare-fun b!1336409 () Bool)

(assert (=> b!1336409 (= e!856157 (Cons!13651 (h!19052 (list!5187 lt!442342)) (++!3488 (t!119282 (list!5187 lt!442342)) (Cons!13651 (apply!3195 lt!442341 0) Nil!13651))))))

(assert (= (and d!376468 c!218800) b!1336408))

(assert (= (and d!376468 (not c!218800)) b!1336409))

(assert (= (and d!376468 res!602601) b!1336410))

(assert (= (and b!1336410 res!602600) b!1336411))

(declare-fun m!1494087 () Bool)

(assert (=> d!376468 m!1494087))

(assert (=> d!376468 m!1493745))

(declare-fun m!1494089 () Bool)

(assert (=> d!376468 m!1494089))

(declare-fun m!1494091 () Bool)

(assert (=> d!376468 m!1494091))

(declare-fun m!1494093 () Bool)

(assert (=> b!1336410 m!1494093))

(assert (=> b!1336410 m!1493745))

(declare-fun m!1494095 () Bool)

(assert (=> b!1336410 m!1494095))

(declare-fun m!1494097 () Bool)

(assert (=> b!1336410 m!1494097))

(declare-fun m!1494099 () Bool)

(assert (=> b!1336409 m!1494099))

(assert (=> b!1336189 d!376468))

(declare-fun d!376470 () Bool)

(declare-fun c!218803 () Bool)

(declare-fun isEmpty!8143 (List!13717) Bool)

(assert (=> d!376470 (= c!218803 (isEmpty!8143 lt!442344))))

(declare-fun e!856160 () Bool)

(assert (=> d!376470 (= (prefixMatch!190 lt!442339 lt!442344) e!856160)))

(declare-fun b!1336416 () Bool)

(declare-fun lostCause!299 (Regex!3681) Bool)

(assert (=> b!1336416 (= e!856160 (not (lostCause!299 lt!442339)))))

(declare-fun b!1336417 () Bool)

(declare-fun derivativeStep!923 (Regex!3681 C!7652) Regex!3681)

(declare-fun head!2369 (List!13717) C!7652)

(assert (=> b!1336417 (= e!856160 (prefixMatch!190 (derivativeStep!923 lt!442339 (head!2369 lt!442344)) (tail!1918 lt!442344)))))

(assert (= (and d!376470 c!218803) b!1336416))

(assert (= (and d!376470 (not c!218803)) b!1336417))

(declare-fun m!1494101 () Bool)

(assert (=> d!376470 m!1494101))

(declare-fun m!1494103 () Bool)

(assert (=> b!1336416 m!1494103))

(declare-fun m!1494105 () Bool)

(assert (=> b!1336417 m!1494105))

(assert (=> b!1336417 m!1494105))

(declare-fun m!1494107 () Bool)

(assert (=> b!1336417 m!1494107))

(declare-fun m!1494109 () Bool)

(assert (=> b!1336417 m!1494109))

(assert (=> b!1336417 m!1494107))

(assert (=> b!1336417 m!1494109))

(declare-fun m!1494111 () Bool)

(assert (=> b!1336417 m!1494111))

(assert (=> b!1336189 d!376470))

(declare-fun d!376472 () Bool)

(declare-fun lt!442416 () Bool)

(assert (=> d!376472 (= lt!442416 (select (content!1937 lt!442344) (apply!3195 lt!442342 0)))))

(declare-fun e!856165 () Bool)

(assert (=> d!376472 (= lt!442416 e!856165)))

(declare-fun res!602606 () Bool)

(assert (=> d!376472 (=> (not res!602606) (not e!856165))))

(assert (=> d!376472 (= res!602606 ((_ is Cons!13651) lt!442344))))

(assert (=> d!376472 (= (contains!2489 lt!442344 (apply!3195 lt!442342 0)) lt!442416)))

(declare-fun b!1336422 () Bool)

(declare-fun e!856166 () Bool)

(assert (=> b!1336422 (= e!856165 e!856166)))

(declare-fun res!602607 () Bool)

(assert (=> b!1336422 (=> res!602607 e!856166)))

(assert (=> b!1336422 (= res!602607 (= (h!19052 lt!442344) (apply!3195 lt!442342 0)))))

(declare-fun b!1336423 () Bool)

(assert (=> b!1336423 (= e!856166 (contains!2489 (t!119282 lt!442344) (apply!3195 lt!442342 0)))))

(assert (= (and d!376472 res!602606) b!1336422))

(assert (= (and b!1336422 (not res!602607)) b!1336423))

(assert (=> d!376472 m!1493883))

(assert (=> d!376472 m!1493721))

(declare-fun m!1494113 () Bool)

(assert (=> d!376472 m!1494113))

(assert (=> b!1336423 m!1493721))

(declare-fun m!1494115 () Bool)

(assert (=> b!1336423 m!1494115))

(assert (=> b!1336178 d!376472))

(declare-fun d!376474 () Bool)

(declare-fun lt!442417 () C!7652)

(assert (=> d!376474 (= lt!442417 (apply!3200 (list!5187 lt!442342) 0))))

(assert (=> d!376474 (= lt!442417 (apply!3201 (c!218765 lt!442342) 0))))

(declare-fun e!856167 () Bool)

(assert (=> d!376474 e!856167))

(declare-fun res!602608 () Bool)

(assert (=> d!376474 (=> (not res!602608) (not e!856167))))

(assert (=> d!376474 (= res!602608 (<= 0 0))))

(assert (=> d!376474 (= (apply!3195 lt!442342 0) lt!442417)))

(declare-fun b!1336424 () Bool)

(assert (=> b!1336424 (= e!856167 (< 0 (size!11114 lt!442342)))))

(assert (= (and d!376474 res!602608) b!1336424))

(assert (=> d!376474 m!1493745))

(assert (=> d!376474 m!1493745))

(declare-fun m!1494117 () Bool)

(assert (=> d!376474 m!1494117))

(declare-fun m!1494119 () Bool)

(assert (=> d!376474 m!1494119))

(declare-fun m!1494121 () Bool)

(assert (=> b!1336424 m!1494121))

(assert (=> b!1336178 d!376474))

(declare-fun d!376476 () Bool)

(declare-fun res!602613 () Bool)

(declare-fun e!856170 () Bool)

(assert (=> d!376476 (=> (not res!602613) (not e!856170))))

(assert (=> d!376476 (= res!602613 (not (isEmpty!8143 (originalCharacters!3229 t1!34))))))

(assert (=> d!376476 (= (inv!17988 t1!34) e!856170)))

(declare-fun b!1336429 () Bool)

(declare-fun res!602614 () Bool)

(assert (=> b!1336429 (=> (not res!602614) (not e!856170))))

(assert (=> b!1336429 (= res!602614 (= (originalCharacters!3229 t1!34) (list!5187 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))))

(declare-fun b!1336430 () Bool)

(assert (=> b!1336430 (= e!856170 (= (size!11113 t1!34) (size!11118 (originalCharacters!3229 t1!34))))))

(assert (= (and d!376476 res!602613) b!1336429))

(assert (= (and b!1336429 res!602614) b!1336430))

(declare-fun b_lambda!39457 () Bool)

(assert (=> (not b_lambda!39457) (not b!1336429)))

(assert (=> b!1336429 t!119312))

(declare-fun b_and!89487 () Bool)

(assert (= b_and!89481 (and (=> t!119312 result!85650) b_and!89487)))

(assert (=> b!1336429 t!119314))

(declare-fun b_and!89489 () Bool)

(assert (= b_and!89483 (and (=> t!119314 result!85652) b_and!89489)))

(assert (=> b!1336429 t!119316))

(declare-fun b_and!89491 () Bool)

(assert (= b_and!89485 (and (=> t!119316 result!85654) b_and!89491)))

(declare-fun m!1494123 () Bool)

(assert (=> d!376476 m!1494123))

(assert (=> b!1336429 m!1494077))

(assert (=> b!1336429 m!1494077))

(declare-fun m!1494125 () Bool)

(assert (=> b!1336429 m!1494125))

(declare-fun m!1494127 () Bool)

(assert (=> b!1336430 m!1494127))

(assert (=> start!119002 d!376476))

(declare-fun d!376478 () Bool)

(declare-fun res!602615 () Bool)

(declare-fun e!856171 () Bool)

(assert (=> d!376478 (=> (not res!602615) (not e!856171))))

(assert (=> d!376478 (= res!602615 (not (isEmpty!8143 (originalCharacters!3229 t2!34))))))

(assert (=> d!376478 (= (inv!17988 t2!34) e!856171)))

(declare-fun b!1336431 () Bool)

(declare-fun res!602616 () Bool)

(assert (=> b!1336431 (=> (not res!602616) (not e!856171))))

(assert (=> b!1336431 (= res!602616 (= (originalCharacters!3229 t2!34) (list!5187 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))))

(declare-fun b!1336432 () Bool)

(assert (=> b!1336432 (= e!856171 (= (size!11113 t2!34) (size!11118 (originalCharacters!3229 t2!34))))))

(assert (= (and d!376478 res!602615) b!1336431))

(assert (= (and b!1336431 res!602616) b!1336432))

(declare-fun b_lambda!39459 () Bool)

(assert (=> (not b_lambda!39459) (not b!1336431)))

(assert (=> b!1336431 t!119297))

(declare-fun b_and!89493 () Bool)

(assert (= b_and!89487 (and (=> t!119297 result!85632) b_and!89493)))

(assert (=> b!1336431 t!119299))

(declare-fun b_and!89495 () Bool)

(assert (= b_and!89489 (and (=> t!119299 result!85636) b_and!89495)))

(assert (=> b!1336431 t!119301))

(declare-fun b_and!89497 () Bool)

(assert (= b_and!89491 (and (=> t!119301 result!85638) b_and!89497)))

(declare-fun m!1494129 () Bool)

(assert (=> d!376478 m!1494129))

(assert (=> b!1336431 m!1493873))

(assert (=> b!1336431 m!1493873))

(declare-fun m!1494131 () Bool)

(assert (=> b!1336431 m!1494131))

(declare-fun m!1494133 () Bool)

(assert (=> b!1336432 m!1494133))

(assert (=> start!119002 d!376478))

(declare-fun d!376480 () Bool)

(declare-fun res!602619 () Bool)

(declare-fun e!856174 () Bool)

(assert (=> d!376480 (=> (not res!602619) (not e!856174))))

(declare-fun rulesValid!863 (LexerInterface!2062 List!13718) Bool)

(assert (=> d!376480 (= res!602619 (rulesValid!863 thiss!19762 rules!2550))))

(assert (=> d!376480 (= (rulesInvariant!1932 thiss!19762 rules!2550) e!856174)))

(declare-fun b!1336435 () Bool)

(declare-datatypes ((List!13724 0))(
  ( (Nil!13658) (Cons!13658 (h!19059 String!16521) (t!119323 List!13724)) )
))
(declare-fun noDuplicateTag!863 (LexerInterface!2062 List!13718 List!13724) Bool)

(assert (=> b!1336435 (= e!856174 (noDuplicateTag!863 thiss!19762 rules!2550 Nil!13658))))

(assert (= (and d!376480 res!602619) b!1336435))

(declare-fun m!1494135 () Bool)

(assert (=> d!376480 m!1494135))

(declare-fun m!1494137 () Bool)

(assert (=> b!1336435 m!1494137))

(assert (=> b!1336177 d!376480))

(declare-fun d!376482 () Bool)

(declare-fun prefixMatchZipperSequence!208 (Regex!3681 BalanceConc!8938) Bool)

(declare-fun ++!3490 (BalanceConc!8938 BalanceConc!8938) BalanceConc!8938)

(declare-fun singletonSeq!970 (C!7652) BalanceConc!8938)

(assert (=> d!376482 (= (separableTokensPredicate!345 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!208 (rulesRegex!250 thiss!19762 rules!2550) (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))

(declare-fun bs!331962 () Bool)

(assert (= bs!331962 d!376482))

(assert (=> bs!331962 m!1493747))

(assert (=> bs!331962 m!1493757))

(assert (=> bs!331962 m!1493753))

(declare-fun m!1494139 () Bool)

(assert (=> bs!331962 m!1494139))

(declare-fun m!1494141 () Bool)

(assert (=> bs!331962 m!1494141))

(assert (=> bs!331962 m!1493747))

(declare-fun m!1494143 () Bool)

(assert (=> bs!331962 m!1494143))

(assert (=> bs!331962 m!1494139))

(assert (=> bs!331962 m!1493753))

(assert (=> bs!331962 m!1493757))

(declare-fun m!1494145 () Bool)

(assert (=> bs!331962 m!1494145))

(assert (=> bs!331962 m!1494145))

(assert (=> bs!331962 m!1494143))

(assert (=> b!1336187 d!376482))

(declare-fun d!376484 () Bool)

(declare-fun choose!8194 (Int) Bool)

(assert (=> d!376484 (= (Exists!833 lambda!56007) (choose!8194 lambda!56007))))

(declare-fun bs!331963 () Bool)

(assert (= bs!331963 d!376484))

(declare-fun m!1494147 () Bool)

(assert (=> bs!331963 m!1494147))

(assert (=> b!1336176 d!376484))

(declare-fun bs!331964 () Bool)

(declare-fun d!376486 () Bool)

(assert (= bs!331964 (and d!376486 b!1336176)))

(declare-fun lambda!56019 () Int)

(assert (=> bs!331964 (= lambda!56019 lambda!56007)))

(assert (=> d!376486 true))

(assert (=> d!376486 true))

(assert (=> d!376486 (Exists!833 lambda!56019)))

(declare-fun lt!442420 () Unit!19781)

(declare-fun choose!8195 (Regex!3681 List!13717) Unit!19781)

(assert (=> d!376486 (= lt!442420 (choose!8195 lt!442339 lt!442344))))

(declare-fun validRegex!1585 (Regex!3681) Bool)

(assert (=> d!376486 (validRegex!1585 lt!442339)))

(assert (=> d!376486 (= (lemmaPrefixMatchThenExistsStringThatMatches!151 lt!442339 lt!442344) lt!442420)))

(declare-fun bs!331965 () Bool)

(assert (= bs!331965 d!376486))

(declare-fun m!1494149 () Bool)

(assert (=> bs!331965 m!1494149))

(declare-fun m!1494151 () Bool)

(assert (=> bs!331965 m!1494151))

(declare-fun m!1494153 () Bool)

(assert (=> bs!331965 m!1494153))

(assert (=> b!1336176 d!376486))

(declare-fun d!376488 () Bool)

(assert (=> d!376488 (= (isEmpty!8139 rules!2550) ((_ is Nil!13652) rules!2550))))

(assert (=> b!1336186 d!376488))

(declare-fun b!1336449 () Bool)

(declare-fun e!856179 () Bool)

(declare-fun tp!386733 () Bool)

(declare-fun tp!386731 () Bool)

(assert (=> b!1336449 (= e!856179 (and tp!386733 tp!386731))))

(declare-fun b!1336451 () Bool)

(declare-fun tp!386732 () Bool)

(declare-fun tp!386730 () Bool)

(assert (=> b!1336451 (= e!856179 (and tp!386732 tp!386730))))

(assert (=> b!1336185 (= tp!386659 e!856179)))

(declare-fun b!1336448 () Bool)

(declare-fun tp_is_empty!6679 () Bool)

(assert (=> b!1336448 (= e!856179 tp_is_empty!6679)))

(declare-fun b!1336450 () Bool)

(declare-fun tp!386734 () Bool)

(assert (=> b!1336450 (= e!856179 tp!386734)))

(assert (= (and b!1336185 ((_ is ElementMatch!3681) (regex!2367 (rule!4112 t2!34)))) b!1336448))

(assert (= (and b!1336185 ((_ is Concat!6139) (regex!2367 (rule!4112 t2!34)))) b!1336449))

(assert (= (and b!1336185 ((_ is Star!3681) (regex!2367 (rule!4112 t2!34)))) b!1336450))

(assert (= (and b!1336185 ((_ is Union!3681) (regex!2367 (rule!4112 t2!34)))) b!1336451))

(declare-fun b!1336453 () Bool)

(declare-fun e!856180 () Bool)

(declare-fun tp!386738 () Bool)

(declare-fun tp!386736 () Bool)

(assert (=> b!1336453 (= e!856180 (and tp!386738 tp!386736))))

(declare-fun b!1336455 () Bool)

(declare-fun tp!386737 () Bool)

(declare-fun tp!386735 () Bool)

(assert (=> b!1336455 (= e!856180 (and tp!386737 tp!386735))))

(assert (=> b!1336190 (= tp!386667 e!856180)))

(declare-fun b!1336452 () Bool)

(assert (=> b!1336452 (= e!856180 tp_is_empty!6679)))

(declare-fun b!1336454 () Bool)

(declare-fun tp!386739 () Bool)

(assert (=> b!1336454 (= e!856180 tp!386739)))

(assert (= (and b!1336190 ((_ is ElementMatch!3681) (regex!2367 (rule!4112 t1!34)))) b!1336452))

(assert (= (and b!1336190 ((_ is Concat!6139) (regex!2367 (rule!4112 t1!34)))) b!1336453))

(assert (= (and b!1336190 ((_ is Star!3681) (regex!2367 (rule!4112 t1!34)))) b!1336454))

(assert (= (and b!1336190 ((_ is Union!3681) (regex!2367 (rule!4112 t1!34)))) b!1336455))

(declare-fun b!1336460 () Bool)

(declare-fun e!856183 () Bool)

(declare-fun tp!386742 () Bool)

(assert (=> b!1336460 (= e!856183 (and tp_is_empty!6679 tp!386742))))

(assert (=> b!1336174 (= tp!386669 e!856183)))

(assert (= (and b!1336174 ((_ is Cons!13651) (originalCharacters!3229 t1!34))) b!1336460))

(declare-fun b!1336462 () Bool)

(declare-fun e!856184 () Bool)

(declare-fun tp!386746 () Bool)

(declare-fun tp!386744 () Bool)

(assert (=> b!1336462 (= e!856184 (and tp!386746 tp!386744))))

(declare-fun b!1336464 () Bool)

(declare-fun tp!386745 () Bool)

(declare-fun tp!386743 () Bool)

(assert (=> b!1336464 (= e!856184 (and tp!386745 tp!386743))))

(assert (=> b!1336184 (= tp!386665 e!856184)))

(declare-fun b!1336461 () Bool)

(assert (=> b!1336461 (= e!856184 tp_is_empty!6679)))

(declare-fun b!1336463 () Bool)

(declare-fun tp!386747 () Bool)

(assert (=> b!1336463 (= e!856184 tp!386747)))

(assert (= (and b!1336184 ((_ is ElementMatch!3681) (regex!2367 (h!19053 rules!2550)))) b!1336461))

(assert (= (and b!1336184 ((_ is Concat!6139) (regex!2367 (h!19053 rules!2550)))) b!1336462))

(assert (= (and b!1336184 ((_ is Star!3681) (regex!2367 (h!19053 rules!2550)))) b!1336463))

(assert (= (and b!1336184 ((_ is Union!3681) (regex!2367 (h!19053 rules!2550)))) b!1336464))

(declare-fun b!1336465 () Bool)

(declare-fun e!856185 () Bool)

(declare-fun tp!386748 () Bool)

(assert (=> b!1336465 (= e!856185 (and tp_is_empty!6679 tp!386748))))

(assert (=> b!1336182 (= tp!386664 e!856185)))

(assert (= (and b!1336182 ((_ is Cons!13651) (originalCharacters!3229 t2!34))) b!1336465))

(declare-fun b!1336476 () Bool)

(declare-fun b_free!32555 () Bool)

(declare-fun b_next!33259 () Bool)

(assert (=> b!1336476 (= b_free!32555 (not b_next!33259))))

(declare-fun tp!386757 () Bool)

(declare-fun b_and!89499 () Bool)

(assert (=> b!1336476 (= tp!386757 b_and!89499)))

(declare-fun b_free!32557 () Bool)

(declare-fun b_next!33261 () Bool)

(assert (=> b!1336476 (= b_free!32557 (not b_next!33261))))

(declare-fun t!119318 () Bool)

(declare-fun tb!70501 () Bool)

(assert (=> (and b!1336476 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toChars!3461 (transformation!2367 (rule!4112 t2!34)))) t!119318) tb!70501))

(declare-fun result!85662 () Bool)

(assert (= result!85662 result!85632))

(assert (=> d!376404 t!119318))

(declare-fun t!119320 () Bool)

(declare-fun tb!70503 () Bool)

(assert (=> (and b!1336476 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toChars!3461 (transformation!2367 (rule!4112 t1!34)))) t!119320) tb!70503))

(declare-fun result!85664 () Bool)

(assert (= result!85664 result!85650))

(assert (=> d!376462 t!119320))

(assert (=> b!1336429 t!119320))

(assert (=> b!1336431 t!119318))

(declare-fun b_and!89501 () Bool)

(declare-fun tp!386759 () Bool)

(assert (=> b!1336476 (= tp!386759 (and (=> t!119318 result!85662) (=> t!119320 result!85664) b_and!89501))))

(declare-fun e!856196 () Bool)

(assert (=> b!1336476 (= e!856196 (and tp!386757 tp!386759))))

(declare-fun e!856195 () Bool)

(declare-fun b!1336475 () Bool)

(declare-fun tp!386758 () Bool)

(assert (=> b!1336475 (= e!856195 (and tp!386758 (inv!17984 (tag!2629 (h!19053 (t!119283 rules!2550)))) (inv!17987 (transformation!2367 (h!19053 (t!119283 rules!2550)))) e!856196))))

(declare-fun b!1336474 () Bool)

(declare-fun e!856197 () Bool)

(declare-fun tp!386760 () Bool)

(assert (=> b!1336474 (= e!856197 (and e!856195 tp!386760))))

(assert (=> b!1336175 (= tp!386668 e!856197)))

(assert (= b!1336475 b!1336476))

(assert (= b!1336474 b!1336475))

(assert (= (and b!1336175 ((_ is Cons!13652) (t!119283 rules!2550))) b!1336474))

(declare-fun m!1494155 () Bool)

(assert (=> b!1336475 m!1494155))

(declare-fun m!1494157 () Bool)

(assert (=> b!1336475 m!1494157))

(declare-fun b_lambda!39461 () Bool)

(assert (= b_lambda!39459 (or (and b!1336191 b_free!32541 (= (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (toChars!3461 (transformation!2367 (rule!4112 t2!34))))) (and b!1336183 b_free!32545 (= (toChars!3461 (transformation!2367 (h!19053 rules!2550))) (toChars!3461 (transformation!2367 (rule!4112 t2!34))))) (and b!1336188 b_free!32549) (and b!1336476 b_free!32557 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toChars!3461 (transformation!2367 (rule!4112 t2!34))))) b_lambda!39461)))

(declare-fun b_lambda!39463 () Bool)

(assert (= b_lambda!39457 (or (and b!1336191 b_free!32541) (and b!1336183 b_free!32545 (= (toChars!3461 (transformation!2367 (h!19053 rules!2550))) (toChars!3461 (transformation!2367 (rule!4112 t1!34))))) (and b!1336188 b_free!32549 (= (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (toChars!3461 (transformation!2367 (rule!4112 t1!34))))) (and b!1336476 b_free!32557 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toChars!3461 (transformation!2367 (rule!4112 t1!34))))) b_lambda!39463)))

(declare-fun b_lambda!39465 () Bool)

(assert (= b_lambda!39455 (or (and b!1336191 b_free!32541) (and b!1336183 b_free!32545 (= (toChars!3461 (transformation!2367 (h!19053 rules!2550))) (toChars!3461 (transformation!2367 (rule!4112 t1!34))))) (and b!1336188 b_free!32549 (= (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (toChars!3461 (transformation!2367 (rule!4112 t1!34))))) (and b!1336476 b_free!32557 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toChars!3461 (transformation!2367 (rule!4112 t1!34))))) b_lambda!39465)))

(declare-fun b_lambda!39467 () Bool)

(assert (= b_lambda!39439 (or b!1336176 b_lambda!39467)))

(declare-fun bs!331966 () Bool)

(declare-fun d!376490 () Bool)

(assert (= bs!331966 (and d!376490 b!1336176)))

(declare-fun res!602622 () Bool)

(declare-fun e!856198 () Bool)

(assert (=> bs!331966 (=> (not res!602622) (not e!856198))))

(declare-fun matchR!1674 (Regex!3681 List!13717) Bool)

(assert (=> bs!331966 (= res!602622 (matchR!1674 lt!442339 lt!442371))))

(assert (=> bs!331966 (= (dynLambda!6010 lambda!56007 lt!442371) e!856198)))

(declare-fun b!1336477 () Bool)

(declare-fun isPrefix!1095 (List!13717 List!13717) Bool)

(assert (=> b!1336477 (= e!856198 (isPrefix!1095 lt!442344 lt!442371))))

(assert (= (and bs!331966 res!602622) b!1336477))

(declare-fun m!1494159 () Bool)

(assert (=> bs!331966 m!1494159))

(declare-fun m!1494161 () Bool)

(assert (=> b!1336477 m!1494161))

(assert (=> d!376414 d!376490))

(declare-fun b_lambda!39469 () Bool)

(assert (= b_lambda!39437 (or (and b!1336191 b_free!32541 (= (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (toChars!3461 (transformation!2367 (rule!4112 t2!34))))) (and b!1336183 b_free!32545 (= (toChars!3461 (transformation!2367 (h!19053 rules!2550))) (toChars!3461 (transformation!2367 (rule!4112 t2!34))))) (and b!1336188 b_free!32549) (and b!1336476 b_free!32557 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toChars!3461 (transformation!2367 (rule!4112 t2!34))))) b_lambda!39469)))

(check-sat (not d!376462) (not d!376412) (not b!1336406) (not b!1336261) (not b!1336460) (not b!1336400) (not b!1336451) (not b!1336409) (not d!376410) (not d!376466) (not b!1336474) b_and!89495 (not bs!331966) (not b!1336299) (not b_next!33243) (not tb!70485) (not b!1336432) (not d!376464) (not d!376482) (not b!1336235) b_and!89501 (not b!1336275) (not d!376472) (not d!376416) b_and!89443 (not b!1336417) (not b!1336423) (not b_next!33247) (not tb!70495) (not d!376400) (not b_next!33251) (not b!1336449) (not b!1336305) (not d!376458) (not d!376486) (not d!376390) (not b!1336283) tp_is_empty!6679 b_and!89497 (not b!1336286) (not b!1336464) (not d!376456) (not b!1336287) (not b_next!33249) (not d!376404) (not b!1336260) (not b!1336462) (not b!1336465) (not b!1336398) (not b!1336407) (not b_lambda!39469) (not d!376484) (not b_next!33245) (not b!1336455) (not b!1336477) (not d!376414) (not d!376468) (not b!1336430) (not b!1336258) (not b!1336431) (not b_lambda!39465) (not d!376476) (not b!1336267) (not b_lambda!39463) (not b_next!33253) b_and!89493 (not b!1336403) (not b!1336399) (not b!1336463) (not d!376478) (not d!376474) b_and!89439 (not b!1336453) (not b!1336450) (not b!1336475) (not d!376470) (not b!1336424) (not b_next!33261) (not b!1336401) (not b_lambda!39467) (not b!1336435) (not b!1336416) b_and!89435 (not b!1336429) (not b!1336410) (not d!376480) (not d!376374) (not b!1336298) b_and!89499 (not b_lambda!39461) (not d!376460) (not b!1336284) (not b!1336454) (not b_next!33259) (not b!1336274) (not b!1336397) (not b!1336402))
(check-sat b_and!89495 (not b_next!33243) b_and!89501 b_and!89443 (not b_next!33247) (not b_next!33251) b_and!89497 (not b_next!33249) (not b_next!33245) b_and!89439 (not b_next!33261) b_and!89435 b_and!89499 (not b_next!33259) (not b_next!33253) b_and!89493)
(get-model)

(declare-fun d!376528 () Bool)

(declare-fun isBalanced!1305 (Conc!4499) Bool)

(assert (=> d!376528 (= (inv!17992 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))) (isBalanced!1305 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))))

(declare-fun bs!331974 () Bool)

(assert (= bs!331974 d!376528))

(declare-fun m!1494281 () Bool)

(assert (=> bs!331974 m!1494281))

(assert (=> tb!70495 d!376528))

(declare-fun bs!331975 () Bool)

(declare-fun d!376530 () Bool)

(assert (= bs!331975 (and d!376530 d!376466)))

(declare-fun lambda!56033 () Int)

(assert (=> bs!331975 (= lambda!56033 lambda!56016)))

(declare-fun lambda!56034 () Int)

(declare-fun forall!3336 (List!13723 Int) Bool)

(assert (=> d!376530 (forall!3336 (map!3011 rules!2550 lambda!56033) lambda!56034)))

(declare-fun lt!442461 () Unit!19781)

(declare-fun e!856253 () Unit!19781)

(assert (=> d!376530 (= lt!442461 e!856253)))

(declare-fun c!218843 () Bool)

(assert (=> d!376530 (= c!218843 ((_ is Nil!13652) rules!2550))))

(declare-fun rulesValidInductive!748 (LexerInterface!2062 List!13718) Bool)

(assert (=> d!376530 (rulesValidInductive!748 thiss!19762 rules!2550)))

(assert (=> d!376530 (= (lemma!93 rules!2550 thiss!19762 rules!2550) lt!442461)))

(declare-fun b!1336580 () Bool)

(declare-fun Unit!19785 () Unit!19781)

(assert (=> b!1336580 (= e!856253 Unit!19785)))

(declare-fun b!1336581 () Bool)

(declare-fun Unit!19786 () Unit!19781)

(assert (=> b!1336581 (= e!856253 Unit!19786)))

(declare-fun lt!442462 () Unit!19781)

(assert (=> b!1336581 (= lt!442462 (lemma!93 rules!2550 thiss!19762 (t!119283 rules!2550)))))

(assert (= (and d!376530 c!218843) b!1336580))

(assert (= (and d!376530 (not c!218843)) b!1336581))

(declare-fun m!1494305 () Bool)

(assert (=> d!376530 m!1494305))

(assert (=> d!376530 m!1494305))

(declare-fun m!1494307 () Bool)

(assert (=> d!376530 m!1494307))

(declare-fun m!1494309 () Bool)

(assert (=> d!376530 m!1494309))

(declare-fun m!1494311 () Bool)

(assert (=> b!1336581 m!1494311))

(assert (=> d!376466 d!376530))

(declare-fun bs!331976 () Bool)

(declare-fun d!376534 () Bool)

(assert (= bs!331976 (and d!376534 d!376530)))

(declare-fun lambda!56037 () Int)

(assert (=> bs!331976 (= lambda!56037 lambda!56034)))

(declare-fun b!1336602 () Bool)

(declare-fun e!856270 () Bool)

(declare-fun lt!442465 () Regex!3681)

(declare-fun isEmptyLang!29 (Regex!3681) Bool)

(assert (=> b!1336602 (= e!856270 (isEmptyLang!29 lt!442465))))

(declare-fun b!1336603 () Bool)

(declare-fun e!856268 () Bool)

(assert (=> b!1336603 (= e!856270 e!856268)))

(declare-fun c!218854 () Bool)

(declare-fun isEmpty!8147 (List!13723) Bool)

(declare-fun tail!1920 (List!13723) List!13723)

(assert (=> b!1336603 (= c!218854 (isEmpty!8147 (tail!1920 (map!3011 rules!2550 lambda!56016))))))

(declare-fun b!1336604 () Bool)

(declare-fun isUnion!29 (Regex!3681) Bool)

(assert (=> b!1336604 (= e!856268 (isUnion!29 lt!442465))))

(declare-fun b!1336605 () Bool)

(declare-fun e!856267 () Regex!3681)

(declare-fun e!856271 () Regex!3681)

(assert (=> b!1336605 (= e!856267 e!856271)))

(declare-fun c!218852 () Bool)

(assert (=> b!1336605 (= c!218852 ((_ is Cons!13657) (map!3011 rules!2550 lambda!56016)))))

(declare-fun b!1336606 () Bool)

(assert (=> b!1336606 (= e!856271 (Union!3681 (h!19058 (map!3011 rules!2550 lambda!56016)) (generalisedUnion!101 (t!119322 (map!3011 rules!2550 lambda!56016)))))))

(declare-fun b!1336607 () Bool)

(declare-fun head!2371 (List!13723) Regex!3681)

(assert (=> b!1336607 (= e!856268 (= lt!442465 (head!2371 (map!3011 rules!2550 lambda!56016))))))

(declare-fun b!1336608 () Bool)

(assert (=> b!1336608 (= e!856271 EmptyLang!3681)))

(declare-fun b!1336609 () Bool)

(declare-fun e!856269 () Bool)

(assert (=> b!1336609 (= e!856269 (isEmpty!8147 (t!119322 (map!3011 rules!2550 lambda!56016))))))

(declare-fun e!856266 () Bool)

(assert (=> d!376534 e!856266))

(declare-fun res!602667 () Bool)

(assert (=> d!376534 (=> (not res!602667) (not e!856266))))

(assert (=> d!376534 (= res!602667 (validRegex!1585 lt!442465))))

(assert (=> d!376534 (= lt!442465 e!856267)))

(declare-fun c!218853 () Bool)

(assert (=> d!376534 (= c!218853 e!856269)))

(declare-fun res!602666 () Bool)

(assert (=> d!376534 (=> (not res!602666) (not e!856269))))

(assert (=> d!376534 (= res!602666 ((_ is Cons!13657) (map!3011 rules!2550 lambda!56016)))))

(assert (=> d!376534 (forall!3336 (map!3011 rules!2550 lambda!56016) lambda!56037)))

(assert (=> d!376534 (= (generalisedUnion!101 (map!3011 rules!2550 lambda!56016)) lt!442465)))

(declare-fun b!1336610 () Bool)

(assert (=> b!1336610 (= e!856266 e!856270)))

(declare-fun c!218855 () Bool)

(assert (=> b!1336610 (= c!218855 (isEmpty!8147 (map!3011 rules!2550 lambda!56016)))))

(declare-fun b!1336611 () Bool)

(assert (=> b!1336611 (= e!856267 (h!19058 (map!3011 rules!2550 lambda!56016)))))

(assert (= (and d!376534 res!602666) b!1336609))

(assert (= (and d!376534 c!218853) b!1336611))

(assert (= (and d!376534 (not c!218853)) b!1336605))

(assert (= (and b!1336605 c!218852) b!1336606))

(assert (= (and b!1336605 (not c!218852)) b!1336608))

(assert (= (and d!376534 res!602667) b!1336610))

(assert (= (and b!1336610 c!218855) b!1336602))

(assert (= (and b!1336610 (not c!218855)) b!1336603))

(assert (= (and b!1336603 c!218854) b!1336607))

(assert (= (and b!1336603 (not c!218854)) b!1336604))

(assert (=> b!1336610 m!1494083))

(declare-fun m!1494313 () Bool)

(assert (=> b!1336610 m!1494313))

(declare-fun m!1494315 () Bool)

(assert (=> b!1336604 m!1494315))

(assert (=> b!1336603 m!1494083))

(declare-fun m!1494317 () Bool)

(assert (=> b!1336603 m!1494317))

(assert (=> b!1336603 m!1494317))

(declare-fun m!1494319 () Bool)

(assert (=> b!1336603 m!1494319))

(assert (=> b!1336607 m!1494083))

(declare-fun m!1494321 () Bool)

(assert (=> b!1336607 m!1494321))

(declare-fun m!1494323 () Bool)

(assert (=> b!1336602 m!1494323))

(declare-fun m!1494325 () Bool)

(assert (=> d!376534 m!1494325))

(assert (=> d!376534 m!1494083))

(declare-fun m!1494327 () Bool)

(assert (=> d!376534 m!1494327))

(declare-fun m!1494329 () Bool)

(assert (=> b!1336606 m!1494329))

(declare-fun m!1494331 () Bool)

(assert (=> b!1336609 m!1494331))

(assert (=> d!376466 d!376534))

(declare-fun d!376536 () Bool)

(declare-fun lt!442468 () List!13723)

(declare-fun size!11125 (List!13723) Int)

(declare-fun size!11126 (List!13718) Int)

(assert (=> d!376536 (= (size!11125 lt!442468) (size!11126 rules!2550))))

(declare-fun e!856274 () List!13723)

(assert (=> d!376536 (= lt!442468 e!856274)))

(declare-fun c!218858 () Bool)

(assert (=> d!376536 (= c!218858 ((_ is Nil!13652) rules!2550))))

(assert (=> d!376536 (= (map!3011 rules!2550 lambda!56016) lt!442468)))

(declare-fun b!1336616 () Bool)

(assert (=> b!1336616 (= e!856274 Nil!13657)))

(declare-fun b!1336617 () Bool)

(declare-fun $colon$colon!173 (List!13723 Regex!3681) List!13723)

(declare-fun dynLambda!6012 (Int Rule!4534) Regex!3681)

(assert (=> b!1336617 (= e!856274 ($colon$colon!173 (map!3011 (t!119283 rules!2550) lambda!56016) (dynLambda!6012 lambda!56016 (h!19053 rules!2550))))))

(assert (= (and d!376536 c!218858) b!1336616))

(assert (= (and d!376536 (not c!218858)) b!1336617))

(declare-fun b_lambda!39473 () Bool)

(assert (=> (not b_lambda!39473) (not b!1336617)))

(declare-fun m!1494333 () Bool)

(assert (=> d!376536 m!1494333))

(declare-fun m!1494335 () Bool)

(assert (=> d!376536 m!1494335))

(declare-fun m!1494337 () Bool)

(assert (=> b!1336617 m!1494337))

(declare-fun m!1494339 () Bool)

(assert (=> b!1336617 m!1494339))

(assert (=> b!1336617 m!1494337))

(assert (=> b!1336617 m!1494339))

(declare-fun m!1494341 () Bool)

(assert (=> b!1336617 m!1494341))

(assert (=> d!376466 d!376536))

(declare-fun d!376538 () Bool)

(declare-fun res!602668 () Bool)

(declare-fun e!856275 () Bool)

(assert (=> d!376538 (=> res!602668 e!856275)))

(assert (=> d!376538 (= res!602668 (not ((_ is Cons!13652) (t!119283 rules!2550))))))

(assert (=> d!376538 (= (sepAndNonSepRulesDisjointChars!740 rules!2550 (t!119283 rules!2550)) e!856275)))

(declare-fun b!1336618 () Bool)

(declare-fun e!856276 () Bool)

(assert (=> b!1336618 (= e!856275 e!856276)))

(declare-fun res!602669 () Bool)

(assert (=> b!1336618 (=> (not res!602669) (not e!856276))))

(assert (=> b!1336618 (= res!602669 (ruleDisjointCharsFromAllFromOtherType!336 (h!19053 (t!119283 rules!2550)) rules!2550))))

(declare-fun b!1336619 () Bool)

(assert (=> b!1336619 (= e!856276 (sepAndNonSepRulesDisjointChars!740 rules!2550 (t!119283 (t!119283 rules!2550))))))

(assert (= (and d!376538 (not res!602668)) b!1336618))

(assert (= (and b!1336618 res!602669) b!1336619))

(declare-fun m!1494343 () Bool)

(assert (=> b!1336618 m!1494343))

(declare-fun m!1494345 () Bool)

(assert (=> b!1336619 m!1494345))

(assert (=> b!1336275 d!376538))

(declare-fun d!376540 () Bool)

(declare-fun c!218861 () Bool)

(assert (=> d!376540 (= c!218861 ((_ is Nil!13651) lt!442344))))

(declare-fun e!856279 () (InoxSet C!7652))

(assert (=> d!376540 (= (content!1937 lt!442344) e!856279)))

(declare-fun b!1336624 () Bool)

(assert (=> b!1336624 (= e!856279 ((as const (Array C!7652 Bool)) false))))

(declare-fun b!1336625 () Bool)

(assert (=> b!1336625 (= e!856279 ((_ map or) (store ((as const (Array C!7652 Bool)) false) (h!19052 lt!442344) true) (content!1937 (t!119282 lt!442344))))))

(assert (= (and d!376540 c!218861) b!1336624))

(assert (= (and d!376540 (not c!218861)) b!1336625))

(declare-fun m!1494347 () Bool)

(assert (=> b!1336625 m!1494347))

(declare-fun m!1494349 () Bool)

(assert (=> b!1336625 m!1494349))

(assert (=> d!376472 d!376540))

(declare-fun d!376542 () Bool)

(declare-fun lt!442471 () Int)

(assert (=> d!376542 (>= lt!442471 0)))

(declare-fun e!856282 () Int)

(assert (=> d!376542 (= lt!442471 e!856282)))

(declare-fun c!218864 () Bool)

(assert (=> d!376542 (= c!218864 ((_ is Nil!13651) (originalCharacters!3229 t2!34)))))

(assert (=> d!376542 (= (size!11118 (originalCharacters!3229 t2!34)) lt!442471)))

(declare-fun b!1336630 () Bool)

(assert (=> b!1336630 (= e!856282 0)))

(declare-fun b!1336631 () Bool)

(assert (=> b!1336631 (= e!856282 (+ 1 (size!11118 (t!119282 (originalCharacters!3229 t2!34)))))))

(assert (= (and d!376542 c!218864) b!1336630))

(assert (= (and d!376542 (not c!218864)) b!1336631))

(declare-fun m!1494351 () Bool)

(assert (=> b!1336631 m!1494351))

(assert (=> b!1336432 d!376542))

(declare-fun d!376544 () Bool)

(declare-fun c!218865 () Bool)

(assert (=> d!376544 (= c!218865 ((_ is Nil!13651) lt!442365))))

(declare-fun e!856283 () (InoxSet C!7652))

(assert (=> d!376544 (= (content!1937 lt!442365) e!856283)))

(declare-fun b!1336632 () Bool)

(assert (=> b!1336632 (= e!856283 ((as const (Array C!7652 Bool)) false))))

(declare-fun b!1336633 () Bool)

(assert (=> b!1336633 (= e!856283 ((_ map or) (store ((as const (Array C!7652 Bool)) false) (h!19052 lt!442365) true) (content!1937 (t!119282 lt!442365))))))

(assert (= (and d!376544 c!218865) b!1336632))

(assert (= (and d!376544 (not c!218865)) b!1336633))

(declare-fun m!1494353 () Bool)

(assert (=> b!1336633 m!1494353))

(declare-fun m!1494355 () Bool)

(assert (=> b!1336633 m!1494355))

(assert (=> d!376410 d!376544))

(assert (=> d!376410 d!376540))

(declare-fun d!376546 () Bool)

(declare-fun c!218866 () Bool)

(assert (=> d!376546 (= c!218866 ((_ is Nil!13651) (getSuffix!529 lt!442343 lt!442344)))))

(declare-fun e!856284 () (InoxSet C!7652))

(assert (=> d!376546 (= (content!1937 (getSuffix!529 lt!442343 lt!442344)) e!856284)))

(declare-fun b!1336634 () Bool)

(assert (=> b!1336634 (= e!856284 ((as const (Array C!7652 Bool)) false))))

(declare-fun b!1336635 () Bool)

(assert (=> b!1336635 (= e!856284 ((_ map or) (store ((as const (Array C!7652 Bool)) false) (h!19052 (getSuffix!529 lt!442343 lt!442344)) true) (content!1937 (t!119282 (getSuffix!529 lt!442343 lt!442344)))))))

(assert (= (and d!376546 c!218866) b!1336634))

(assert (= (and d!376546 (not c!218866)) b!1336635))

(declare-fun m!1494357 () Bool)

(assert (=> b!1336635 m!1494357))

(declare-fun m!1494359 () Bool)

(assert (=> b!1336635 m!1494359))

(assert (=> d!376410 d!376546))

(declare-fun d!376548 () Bool)

(declare-fun lt!442472 () Int)

(assert (=> d!376548 (>= lt!442472 0)))

(declare-fun e!856285 () Int)

(assert (=> d!376548 (= lt!442472 e!856285)))

(declare-fun c!218867 () Bool)

(assert (=> d!376548 (= c!218867 ((_ is Nil!13651) (originalCharacters!3229 t1!34)))))

(assert (=> d!376548 (= (size!11118 (originalCharacters!3229 t1!34)) lt!442472)))

(declare-fun b!1336636 () Bool)

(assert (=> b!1336636 (= e!856285 0)))

(declare-fun b!1336637 () Bool)

(assert (=> b!1336637 (= e!856285 (+ 1 (size!11118 (t!119282 (originalCharacters!3229 t1!34)))))))

(assert (= (and d!376548 c!218867) b!1336636))

(assert (= (and d!376548 (not c!218867)) b!1336637))

(declare-fun m!1494361 () Bool)

(assert (=> b!1336637 m!1494361))

(assert (=> b!1336430 d!376548))

(declare-fun d!376550 () Bool)

(assert (=> d!376550 (= (Exists!833 lambda!56019) (choose!8194 lambda!56019))))

(declare-fun bs!331977 () Bool)

(assert (= bs!331977 d!376550))

(declare-fun m!1494363 () Bool)

(assert (=> bs!331977 m!1494363))

(assert (=> d!376486 d!376550))

(declare-fun bs!331978 () Bool)

(declare-fun d!376552 () Bool)

(assert (= bs!331978 (and d!376552 b!1336176)))

(declare-fun lambda!56040 () Int)

(assert (=> bs!331978 (= lambda!56040 lambda!56007)))

(declare-fun bs!331979 () Bool)

(assert (= bs!331979 (and d!376552 d!376486)))

(assert (=> bs!331979 (= lambda!56040 lambda!56019)))

(assert (=> d!376552 true))

(assert (=> d!376552 true))

(assert (=> d!376552 (Exists!833 lambda!56040)))

(assert (=> d!376552 true))

(declare-fun _$103!86 () Unit!19781)

(assert (=> d!376552 (= (choose!8195 lt!442339 lt!442344) _$103!86)))

(declare-fun bs!331980 () Bool)

(assert (= bs!331980 d!376552))

(declare-fun m!1494365 () Bool)

(assert (=> bs!331980 m!1494365))

(assert (=> d!376486 d!376552))

(declare-fun b!1336660 () Bool)

(declare-fun e!856309 () Bool)

(declare-fun e!856305 () Bool)

(assert (=> b!1336660 (= e!856309 e!856305)))

(declare-fun res!602686 () Bool)

(declare-fun nullable!1169 (Regex!3681) Bool)

(assert (=> b!1336660 (= res!602686 (not (nullable!1169 (reg!4010 lt!442339))))))

(assert (=> b!1336660 (=> (not res!602686) (not e!856305))))

(declare-fun b!1336661 () Bool)

(declare-fun res!602688 () Bool)

(declare-fun e!856307 () Bool)

(assert (=> b!1336661 (=> res!602688 e!856307)))

(assert (=> b!1336661 (= res!602688 (not ((_ is Concat!6139) lt!442339)))))

(declare-fun e!856306 () Bool)

(assert (=> b!1336661 (= e!856306 e!856307)))

(declare-fun b!1336662 () Bool)

(declare-fun e!856308 () Bool)

(assert (=> b!1336662 (= e!856307 e!856308)))

(declare-fun res!602684 () Bool)

(assert (=> b!1336662 (=> (not res!602684) (not e!856308))))

(declare-fun call!90178 () Bool)

(assert (=> b!1336662 (= res!602684 call!90178)))

(declare-fun c!218872 () Bool)

(declare-fun call!90177 () Bool)

(declare-fun c!218873 () Bool)

(declare-fun bm!90171 () Bool)

(assert (=> bm!90171 (= call!90177 (validRegex!1585 (ite c!218873 (reg!4010 lt!442339) (ite c!218872 (regOne!7875 lt!442339) (regOne!7874 lt!442339)))))))

(declare-fun d!376554 () Bool)

(declare-fun res!602685 () Bool)

(declare-fun e!856304 () Bool)

(assert (=> d!376554 (=> res!602685 e!856304)))

(assert (=> d!376554 (= res!602685 ((_ is ElementMatch!3681) lt!442339))))

(assert (=> d!376554 (= (validRegex!1585 lt!442339) e!856304)))

(declare-fun bm!90172 () Bool)

(assert (=> bm!90172 (= call!90178 call!90177)))

(declare-fun bm!90173 () Bool)

(declare-fun call!90176 () Bool)

(assert (=> bm!90173 (= call!90176 (validRegex!1585 (ite c!218872 (regTwo!7875 lt!442339) (regTwo!7874 lt!442339))))))

(declare-fun b!1336663 () Bool)

(assert (=> b!1336663 (= e!856305 call!90177)))

(declare-fun b!1336664 () Bool)

(assert (=> b!1336664 (= e!856309 e!856306)))

(assert (=> b!1336664 (= c!218872 ((_ is Union!3681) lt!442339))))

(declare-fun b!1336665 () Bool)

(declare-fun res!602687 () Bool)

(declare-fun e!856310 () Bool)

(assert (=> b!1336665 (=> (not res!602687) (not e!856310))))

(assert (=> b!1336665 (= res!602687 call!90178)))

(assert (=> b!1336665 (= e!856306 e!856310)))

(declare-fun b!1336666 () Bool)

(assert (=> b!1336666 (= e!856304 e!856309)))

(assert (=> b!1336666 (= c!218873 ((_ is Star!3681) lt!442339))))

(declare-fun b!1336667 () Bool)

(assert (=> b!1336667 (= e!856308 call!90176)))

(declare-fun b!1336668 () Bool)

(assert (=> b!1336668 (= e!856310 call!90176)))

(assert (= (and d!376554 (not res!602685)) b!1336666))

(assert (= (and b!1336666 c!218873) b!1336660))

(assert (= (and b!1336666 (not c!218873)) b!1336664))

(assert (= (and b!1336660 res!602686) b!1336663))

(assert (= (and b!1336664 c!218872) b!1336665))

(assert (= (and b!1336664 (not c!218872)) b!1336661))

(assert (= (and b!1336665 res!602687) b!1336668))

(assert (= (and b!1336661 (not res!602688)) b!1336662))

(assert (= (and b!1336662 res!602684) b!1336667))

(assert (= (or b!1336665 b!1336662) bm!90172))

(assert (= (or b!1336668 b!1336667) bm!90173))

(assert (= (or b!1336663 bm!90172) bm!90171))

(declare-fun m!1494399 () Bool)

(assert (=> b!1336660 m!1494399))

(declare-fun m!1494401 () Bool)

(assert (=> bm!90171 m!1494401))

(declare-fun m!1494403 () Bool)

(assert (=> bm!90173 m!1494403))

(assert (=> d!376486 d!376554))

(declare-fun lt!442507 () List!13717)

(declare-fun e!856313 () Bool)

(declare-fun b!1336674 () Bool)

(assert (=> b!1336674 (= e!856313 (or (not (= (Cons!13651 (apply!3195 lt!442341 0) Nil!13651) Nil!13651)) (= lt!442507 (t!119282 (list!5187 lt!442342)))))))

(declare-fun d!376560 () Bool)

(assert (=> d!376560 e!856313))

(declare-fun res!602692 () Bool)

(assert (=> d!376560 (=> (not res!602692) (not e!856313))))

(assert (=> d!376560 (= res!602692 (= (content!1937 lt!442507) ((_ map or) (content!1937 (t!119282 (list!5187 lt!442342))) (content!1937 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)))))))

(declare-fun e!856314 () List!13717)

(assert (=> d!376560 (= lt!442507 e!856314)))

(declare-fun c!218874 () Bool)

(assert (=> d!376560 (= c!218874 ((_ is Nil!13651) (t!119282 (list!5187 lt!442342))))))

(assert (=> d!376560 (= (++!3488 (t!119282 (list!5187 lt!442342)) (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)) lt!442507)))

(declare-fun b!1336673 () Bool)

(declare-fun res!602691 () Bool)

(assert (=> b!1336673 (=> (not res!602691) (not e!856313))))

(assert (=> b!1336673 (= res!602691 (= (size!11118 lt!442507) (+ (size!11118 (t!119282 (list!5187 lt!442342))) (size!11118 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)))))))

(declare-fun b!1336671 () Bool)

(assert (=> b!1336671 (= e!856314 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651))))

(declare-fun b!1336672 () Bool)

(assert (=> b!1336672 (= e!856314 (Cons!13651 (h!19052 (t!119282 (list!5187 lt!442342))) (++!3488 (t!119282 (t!119282 (list!5187 lt!442342))) (Cons!13651 (apply!3195 lt!442341 0) Nil!13651))))))

(assert (= (and d!376560 c!218874) b!1336671))

(assert (= (and d!376560 (not c!218874)) b!1336672))

(assert (= (and d!376560 res!602692) b!1336673))

(assert (= (and b!1336673 res!602691) b!1336674))

(declare-fun m!1494413 () Bool)

(assert (=> d!376560 m!1494413))

(declare-fun m!1494415 () Bool)

(assert (=> d!376560 m!1494415))

(assert (=> d!376560 m!1494091))

(declare-fun m!1494417 () Bool)

(assert (=> b!1336673 m!1494417))

(declare-fun m!1494419 () Bool)

(assert (=> b!1336673 m!1494419))

(assert (=> b!1336673 m!1494097))

(declare-fun m!1494421 () Bool)

(assert (=> b!1336672 m!1494421))

(assert (=> b!1336409 d!376560))

(declare-fun d!376564 () Bool)

(assert (=> d!376564 (= (inv!17984 (tag!2629 (h!19053 (t!119283 rules!2550)))) (= (mod (str.len (value!77091 (tag!2629 (h!19053 (t!119283 rules!2550))))) 2) 0))))

(assert (=> b!1336475 d!376564))

(declare-fun d!376566 () Bool)

(declare-fun res!602693 () Bool)

(declare-fun e!856315 () Bool)

(assert (=> d!376566 (=> (not res!602693) (not e!856315))))

(assert (=> d!376566 (= res!602693 (semiInverseModEq!894 (toChars!3461 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toValue!3602 (transformation!2367 (h!19053 (t!119283 rules!2550))))))))

(assert (=> d!376566 (= (inv!17987 (transformation!2367 (h!19053 (t!119283 rules!2550)))) e!856315)))

(declare-fun b!1336675 () Bool)

(assert (=> b!1336675 (= e!856315 (equivClasses!853 (toChars!3461 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toValue!3602 (transformation!2367 (h!19053 (t!119283 rules!2550))))))))

(assert (= (and d!376566 res!602693) b!1336675))

(declare-fun m!1494423 () Bool)

(assert (=> d!376566 m!1494423))

(declare-fun m!1494425 () Bool)

(assert (=> b!1336675 m!1494425))

(assert (=> b!1336475 d!376566))

(declare-fun d!376568 () Bool)

(assert (=> d!376568 true))

(declare-fun order!8187 () Int)

(declare-fun order!8189 () Int)

(declare-fun lambda!56043 () Int)

(declare-fun dynLambda!6015 (Int Int) Int)

(declare-fun dynLambda!6016 (Int Int) Int)

(assert (=> d!376568 (< (dynLambda!6015 order!8187 (toChars!3461 (transformation!2367 (h!19053 rules!2550)))) (dynLambda!6016 order!8189 lambda!56043))))

(assert (=> d!376568 true))

(declare-fun order!8191 () Int)

(declare-fun dynLambda!6017 (Int Int) Int)

(assert (=> d!376568 (< (dynLambda!6017 order!8191 (toValue!3602 (transformation!2367 (h!19053 rules!2550)))) (dynLambda!6016 order!8189 lambda!56043))))

(declare-fun Forall!522 (Int) Bool)

(assert (=> d!376568 (= (semiInverseModEq!894 (toChars!3461 (transformation!2367 (h!19053 rules!2550))) (toValue!3602 (transformation!2367 (h!19053 rules!2550)))) (Forall!522 lambda!56043))))

(declare-fun bs!331982 () Bool)

(assert (= bs!331982 d!376568))

(declare-fun m!1494427 () Bool)

(assert (=> bs!331982 m!1494427))

(assert (=> d!376390 d!376568))

(declare-fun bs!331983 () Bool)

(declare-fun d!376570 () Bool)

(assert (= bs!331983 (and d!376570 d!376568)))

(declare-fun lambda!56044 () Int)

(assert (=> bs!331983 (= (and (= (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (toChars!3461 (transformation!2367 (h!19053 rules!2550)))) (= (toValue!3602 (transformation!2367 (rule!4112 t1!34))) (toValue!3602 (transformation!2367 (h!19053 rules!2550))))) (= lambda!56044 lambda!56043))))

(assert (=> d!376570 true))

(assert (=> d!376570 (< (dynLambda!6015 order!8187 (toChars!3461 (transformation!2367 (rule!4112 t1!34)))) (dynLambda!6016 order!8189 lambda!56044))))

(assert (=> d!376570 true))

(assert (=> d!376570 (< (dynLambda!6017 order!8191 (toValue!3602 (transformation!2367 (rule!4112 t1!34)))) (dynLambda!6016 order!8189 lambda!56044))))

(assert (=> d!376570 (= (semiInverseModEq!894 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (toValue!3602 (transformation!2367 (rule!4112 t1!34)))) (Forall!522 lambda!56044))))

(declare-fun bs!331984 () Bool)

(assert (= bs!331984 d!376570))

(declare-fun m!1494429 () Bool)

(assert (=> bs!331984 m!1494429))

(assert (=> d!376456 d!376570))

(declare-fun d!376572 () Bool)

(declare-fun charsToBigInt!0 (List!13716 Int) Int)

(assert (=> d!376572 (= (inv!15 (value!77092 t1!34)) (= (charsToBigInt!0 (text!17648 (value!77092 t1!34)) 0) (value!77087 (value!77092 t1!34))))))

(declare-fun bs!331985 () Bool)

(assert (= bs!331985 d!376572))

(declare-fun m!1494431 () Bool)

(assert (=> bs!331985 m!1494431))

(assert (=> b!1336261 d!376572))

(declare-fun d!376574 () Bool)

(declare-fun e!856364 () Bool)

(assert (=> d!376574 e!856364))

(declare-fun c!218894 () Bool)

(assert (=> d!376574 (= c!218894 ((_ is EmptyExpr!3681) lt!442339))))

(declare-fun lt!442517 () Bool)

(declare-fun e!856362 () Bool)

(assert (=> d!376574 (= lt!442517 e!856362)))

(declare-fun c!218896 () Bool)

(assert (=> d!376574 (= c!218896 (isEmpty!8143 lt!442371))))

(assert (=> d!376574 (validRegex!1585 lt!442339)))

(assert (=> d!376574 (= (matchR!1674 lt!442339 lt!442371) lt!442517)))

(declare-fun b!1336761 () Bool)

(declare-fun res!602738 () Bool)

(declare-fun e!856360 () Bool)

(assert (=> b!1336761 (=> res!602738 e!856360)))

(declare-fun e!856363 () Bool)

(assert (=> b!1336761 (= res!602738 e!856363)))

(declare-fun res!602737 () Bool)

(assert (=> b!1336761 (=> (not res!602737) (not e!856363))))

(assert (=> b!1336761 (= res!602737 lt!442517)))

(declare-fun b!1336762 () Bool)

(assert (=> b!1336762 (= e!856363 (= (head!2369 lt!442371) (c!218766 lt!442339)))))

(declare-fun b!1336763 () Bool)

(declare-fun call!90184 () Bool)

(assert (=> b!1336763 (= e!856364 (= lt!442517 call!90184))))

(declare-fun bm!90179 () Bool)

(assert (=> bm!90179 (= call!90184 (isEmpty!8143 lt!442371))))

(declare-fun b!1336764 () Bool)

(declare-fun e!856361 () Bool)

(assert (=> b!1336764 (= e!856360 e!856361)))

(declare-fun res!602739 () Bool)

(assert (=> b!1336764 (=> (not res!602739) (not e!856361))))

(assert (=> b!1336764 (= res!602739 (not lt!442517))))

(declare-fun b!1336765 () Bool)

(declare-fun e!856358 () Bool)

(assert (=> b!1336765 (= e!856361 e!856358)))

(declare-fun res!602744 () Bool)

(assert (=> b!1336765 (=> res!602744 e!856358)))

(assert (=> b!1336765 (= res!602744 call!90184)))

(declare-fun b!1336766 () Bool)

(assert (=> b!1336766 (= e!856362 (nullable!1169 lt!442339))))

(declare-fun b!1336767 () Bool)

(assert (=> b!1336767 (= e!856358 (not (= (head!2369 lt!442371) (c!218766 lt!442339))))))

(declare-fun b!1336768 () Bool)

(assert (=> b!1336768 (= e!856362 (matchR!1674 (derivativeStep!923 lt!442339 (head!2369 lt!442371)) (tail!1918 lt!442371)))))

(declare-fun b!1336769 () Bool)

(declare-fun res!602740 () Bool)

(assert (=> b!1336769 (=> res!602740 e!856358)))

(assert (=> b!1336769 (= res!602740 (not (isEmpty!8143 (tail!1918 lt!442371))))))

(declare-fun b!1336770 () Bool)

(declare-fun res!602743 () Bool)

(assert (=> b!1336770 (=> (not res!602743) (not e!856363))))

(assert (=> b!1336770 (= res!602743 (not call!90184))))

(declare-fun b!1336771 () Bool)

(declare-fun res!602741 () Bool)

(assert (=> b!1336771 (=> res!602741 e!856360)))

(assert (=> b!1336771 (= res!602741 (not ((_ is ElementMatch!3681) lt!442339)))))

(declare-fun e!856359 () Bool)

(assert (=> b!1336771 (= e!856359 e!856360)))

(declare-fun b!1336772 () Bool)

(declare-fun res!602742 () Bool)

(assert (=> b!1336772 (=> (not res!602742) (not e!856363))))

(assert (=> b!1336772 (= res!602742 (isEmpty!8143 (tail!1918 lt!442371)))))

(declare-fun b!1336773 () Bool)

(assert (=> b!1336773 (= e!856364 e!856359)))

(declare-fun c!218895 () Bool)

(assert (=> b!1336773 (= c!218895 ((_ is EmptyLang!3681) lt!442339))))

(declare-fun b!1336774 () Bool)

(assert (=> b!1336774 (= e!856359 (not lt!442517))))

(assert (= (and d!376574 c!218896) b!1336766))

(assert (= (and d!376574 (not c!218896)) b!1336768))

(assert (= (and d!376574 c!218894) b!1336763))

(assert (= (and d!376574 (not c!218894)) b!1336773))

(assert (= (and b!1336773 c!218895) b!1336774))

(assert (= (and b!1336773 (not c!218895)) b!1336771))

(assert (= (and b!1336771 (not res!602741)) b!1336761))

(assert (= (and b!1336761 res!602737) b!1336770))

(assert (= (and b!1336770 res!602743) b!1336772))

(assert (= (and b!1336772 res!602742) b!1336762))

(assert (= (and b!1336761 (not res!602738)) b!1336764))

(assert (= (and b!1336764 res!602739) b!1336765))

(assert (= (and b!1336765 (not res!602744)) b!1336769))

(assert (= (and b!1336769 (not res!602740)) b!1336767))

(assert (= (or b!1336763 b!1336765 b!1336770) bm!90179))

(declare-fun m!1494459 () Bool)

(assert (=> b!1336769 m!1494459))

(assert (=> b!1336769 m!1494459))

(declare-fun m!1494461 () Bool)

(assert (=> b!1336769 m!1494461))

(declare-fun m!1494463 () Bool)

(assert (=> b!1336762 m!1494463))

(assert (=> b!1336772 m!1494459))

(assert (=> b!1336772 m!1494459))

(assert (=> b!1336772 m!1494461))

(declare-fun m!1494465 () Bool)

(assert (=> d!376574 m!1494465))

(assert (=> d!376574 m!1494153))

(declare-fun m!1494467 () Bool)

(assert (=> b!1336766 m!1494467))

(assert (=> b!1336767 m!1494463))

(assert (=> b!1336768 m!1494463))

(assert (=> b!1336768 m!1494463))

(declare-fun m!1494469 () Bool)

(assert (=> b!1336768 m!1494469))

(assert (=> b!1336768 m!1494459))

(assert (=> b!1336768 m!1494469))

(assert (=> b!1336768 m!1494459))

(declare-fun m!1494471 () Bool)

(assert (=> b!1336768 m!1494471))

(assert (=> bm!90179 m!1494465))

(assert (=> bs!331966 d!376574))

(declare-fun d!376584 () Bool)

(declare-fun charsToInt!0 (List!13716) (_ BitVec 32))

(assert (=> d!376584 (= (inv!16 (value!77092 t1!34)) (= (charsToInt!0 (text!17646 (value!77092 t1!34))) (value!77083 (value!77092 t1!34))))))

(declare-fun bs!331987 () Bool)

(assert (= bs!331987 d!376584))

(declare-fun m!1494473 () Bool)

(assert (=> bs!331987 m!1494473))

(assert (=> b!1336260 d!376584))

(declare-fun d!376586 () Bool)

(declare-fun lt!442524 () C!7652)

(assert (=> d!376586 (contains!2489 (list!5187 lt!442341) lt!442524)))

(declare-fun e!856378 () C!7652)

(assert (=> d!376586 (= lt!442524 e!856378)))

(declare-fun c!218905 () Bool)

(assert (=> d!376586 (= c!218905 (= 0 0))))

(declare-fun e!856377 () Bool)

(assert (=> d!376586 e!856377))

(declare-fun res!602749 () Bool)

(assert (=> d!376586 (=> (not res!602749) (not e!856377))))

(assert (=> d!376586 (= res!602749 (<= 0 0))))

(assert (=> d!376586 (= (apply!3200 (list!5187 lt!442341) 0) lt!442524)))

(declare-fun b!1336795 () Bool)

(assert (=> b!1336795 (= e!856377 (< 0 (size!11118 (list!5187 lt!442341))))))

(declare-fun b!1336796 () Bool)

(assert (=> b!1336796 (= e!856378 (head!2369 (list!5187 lt!442341)))))

(declare-fun b!1336797 () Bool)

(assert (=> b!1336797 (= e!856378 (apply!3200 (tail!1918 (list!5187 lt!442341)) (- 0 1)))))

(assert (= (and d!376586 res!602749) b!1336795))

(assert (= (and d!376586 c!218905) b!1336796))

(assert (= (and d!376586 (not c!218905)) b!1336797))

(assert (=> d!376586 m!1493861))

(declare-fun m!1494475 () Bool)

(assert (=> d!376586 m!1494475))

(assert (=> b!1336795 m!1493861))

(assert (=> b!1336795 m!1493863))

(assert (=> b!1336796 m!1493861))

(declare-fun m!1494477 () Bool)

(assert (=> b!1336796 m!1494477))

(assert (=> b!1336797 m!1493861))

(declare-fun m!1494479 () Bool)

(assert (=> b!1336797 m!1494479))

(assert (=> b!1336797 m!1494479))

(declare-fun m!1494481 () Bool)

(assert (=> b!1336797 m!1494481))

(assert (=> d!376460 d!376586))

(declare-fun d!376588 () Bool)

(assert (=> d!376588 (= (list!5187 lt!442341) (list!5191 (c!218765 lt!442341)))))

(declare-fun bs!331988 () Bool)

(assert (= bs!331988 d!376588))

(declare-fun m!1494483 () Bool)

(assert (=> bs!331988 m!1494483))

(assert (=> d!376460 d!376588))

(declare-fun b!1336831 () Bool)

(declare-fun e!856401 () Int)

(assert (=> b!1336831 (= e!856401 (- 0 (size!11119 (left!11716 (c!218765 lt!442341)))))))

(declare-fun b!1336832 () Bool)

(declare-fun e!856402 () C!7652)

(declare-fun e!856400 () C!7652)

(assert (=> b!1336832 (= e!856402 e!856400)))

(declare-fun lt!442531 () Bool)

(declare-fun appendIndex!147 (List!13717 List!13717 Int) Bool)

(assert (=> b!1336832 (= lt!442531 (appendIndex!147 (list!5191 (left!11716 (c!218765 lt!442341))) (list!5191 (right!12046 (c!218765 lt!442341))) 0))))

(declare-fun c!218920 () Bool)

(assert (=> b!1336832 (= c!218920 (< 0 (size!11119 (left!11716 (c!218765 lt!442341)))))))

(declare-fun b!1336833 () Bool)

(assert (=> b!1336833 (= e!856401 0)))

(declare-fun d!376590 () Bool)

(declare-fun lt!442532 () C!7652)

(assert (=> d!376590 (= lt!442532 (apply!3200 (list!5191 (c!218765 lt!442341)) 0))))

(assert (=> d!376590 (= lt!442532 e!856402)))

(declare-fun c!218919 () Bool)

(assert (=> d!376590 (= c!218919 ((_ is Leaf!6879) (c!218765 lt!442341)))))

(declare-fun e!856403 () Bool)

(assert (=> d!376590 e!856403))

(declare-fun res!602759 () Bool)

(assert (=> d!376590 (=> (not res!602759) (not e!856403))))

(assert (=> d!376590 (= res!602759 (<= 0 0))))

(assert (=> d!376590 (= (apply!3201 (c!218765 lt!442341) 0) lt!442532)))

(declare-fun b!1336834 () Bool)

(declare-fun apply!3205 (IArray!9003 Int) C!7652)

(assert (=> b!1336834 (= e!856402 (apply!3205 (xs!7214 (c!218765 lt!442341)) 0))))

(declare-fun b!1336835 () Bool)

(declare-fun call!90193 () C!7652)

(assert (=> b!1336835 (= e!856400 call!90193)))

(declare-fun bm!90188 () Bool)

(declare-fun c!218918 () Bool)

(assert (=> bm!90188 (= c!218918 c!218920)))

(assert (=> bm!90188 (= call!90193 (apply!3201 (ite c!218920 (left!11716 (c!218765 lt!442341)) (right!12046 (c!218765 lt!442341))) e!856401))))

(declare-fun b!1336836 () Bool)

(assert (=> b!1336836 (= e!856400 call!90193)))

(declare-fun b!1336837 () Bool)

(assert (=> b!1336837 (= e!856403 (< 0 (size!11119 (c!218765 lt!442341))))))

(assert (= (and d!376590 res!602759) b!1336837))

(assert (= (and d!376590 c!218919) b!1336834))

(assert (= (and d!376590 (not c!218919)) b!1336832))

(assert (= (and b!1336832 c!218920) b!1336836))

(assert (= (and b!1336832 (not c!218920)) b!1336835))

(assert (= (or b!1336836 b!1336835) bm!90188))

(assert (= (and bm!90188 c!218918) b!1336833))

(assert (= (and bm!90188 (not c!218918)) b!1336831))

(declare-fun m!1494507 () Bool)

(assert (=> b!1336832 m!1494507))

(declare-fun m!1494509 () Bool)

(assert (=> b!1336832 m!1494509))

(assert (=> b!1336832 m!1494507))

(assert (=> b!1336832 m!1494509))

(declare-fun m!1494513 () Bool)

(assert (=> b!1336832 m!1494513))

(declare-fun m!1494517 () Bool)

(assert (=> b!1336832 m!1494517))

(declare-fun m!1494519 () Bool)

(assert (=> b!1336834 m!1494519))

(declare-fun m!1494523 () Bool)

(assert (=> bm!90188 m!1494523))

(assert (=> b!1336837 m!1493865))

(assert (=> d!376590 m!1494483))

(assert (=> d!376590 m!1494483))

(declare-fun m!1494525 () Bool)

(assert (=> d!376590 m!1494525))

(assert (=> b!1336831 m!1494517))

(assert (=> d!376460 d!376590))

(declare-fun d!376604 () Bool)

(declare-fun lt!442539 () Bool)

(assert (=> d!376604 (= lt!442539 (isEmpty!8143 (list!5187 (_2!7523 lt!442402))))))

(declare-fun isEmpty!8148 (Conc!4499) Bool)

(assert (=> d!376604 (= lt!442539 (isEmpty!8148 (c!218765 (_2!7523 lt!442402))))))

(assert (=> d!376604 (= (isEmpty!8142 (_2!7523 lt!442402)) lt!442539)))

(declare-fun bs!331993 () Bool)

(assert (= bs!331993 d!376604))

(declare-fun m!1494553 () Bool)

(assert (=> bs!331993 m!1494553))

(assert (=> bs!331993 m!1494553))

(declare-fun m!1494555 () Bool)

(assert (=> bs!331993 m!1494555))

(declare-fun m!1494557 () Bool)

(assert (=> bs!331993 m!1494557))

(assert (=> b!1336398 d!376604))

(declare-fun d!376612 () Bool)

(assert (=> d!376612 (= (isEmpty!8143 lt!442344) ((_ is Nil!13651) lt!442344))))

(assert (=> d!376470 d!376612))

(declare-fun b!1336877 () Bool)

(declare-fun e!856425 () Bool)

(declare-fun lt!442549 () BalanceConc!8938)

(assert (=> b!1336877 (= e!856425 (= (list!5187 lt!442549) (++!3488 (list!5187 (charsOf!1339 t1!34)) (list!5187 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))

(declare-fun d!376614 () Bool)

(assert (=> d!376614 e!856425))

(declare-fun res!602781 () Bool)

(assert (=> d!376614 (=> (not res!602781) (not e!856425))))

(declare-fun appendAssocInst!265 (Conc!4499 Conc!4499) Bool)

(assert (=> d!376614 (= res!602781 (appendAssocInst!265 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))

(declare-fun ++!3492 (Conc!4499 Conc!4499) Conc!4499)

(assert (=> d!376614 (= lt!442549 (BalanceConc!8939 (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))

(assert (=> d!376614 (= (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) lt!442549)))

(declare-fun b!1336875 () Bool)

(declare-fun res!602780 () Bool)

(assert (=> b!1336875 (=> (not res!602780) (not e!856425))))

(declare-fun height!635 (Conc!4499) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1336875 (= res!602780 (<= (height!635 (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))) (+ (max!0 (height!635 (c!218765 (charsOf!1339 t1!34))) (height!635 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))) 1)))))

(declare-fun b!1336874 () Bool)

(declare-fun res!602783 () Bool)

(assert (=> b!1336874 (=> (not res!602783) (not e!856425))))

(assert (=> b!1336874 (= res!602783 (isBalanced!1305 (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))

(declare-fun b!1336876 () Bool)

(declare-fun res!602782 () Bool)

(assert (=> b!1336876 (=> (not res!602782) (not e!856425))))

(assert (=> b!1336876 (= res!602782 (>= (height!635 (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))) (max!0 (height!635 (c!218765 (charsOf!1339 t1!34))) (height!635 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))

(assert (= (and d!376614 res!602781) b!1336874))

(assert (= (and b!1336874 res!602783) b!1336875))

(assert (= (and b!1336875 res!602780) b!1336876))

(assert (= (and b!1336876 res!602782) b!1336877))

(declare-fun m!1494609 () Bool)

(assert (=> b!1336877 m!1494609))

(assert (=> b!1336877 m!1493747))

(declare-fun m!1494611 () Bool)

(assert (=> b!1336877 m!1494611))

(assert (=> b!1336877 m!1494143))

(declare-fun m!1494613 () Bool)

(assert (=> b!1336877 m!1494613))

(assert (=> b!1336877 m!1494611))

(assert (=> b!1336877 m!1494613))

(declare-fun m!1494615 () Bool)

(assert (=> b!1336877 m!1494615))

(declare-fun m!1494617 () Bool)

(assert (=> d!376614 m!1494617))

(declare-fun m!1494619 () Bool)

(assert (=> d!376614 m!1494619))

(assert (=> b!1336876 m!1494619))

(declare-fun m!1494621 () Bool)

(assert (=> b!1336876 m!1494621))

(declare-fun m!1494623 () Bool)

(assert (=> b!1336876 m!1494623))

(assert (=> b!1336876 m!1494619))

(declare-fun m!1494625 () Bool)

(assert (=> b!1336876 m!1494625))

(assert (=> b!1336876 m!1494623))

(assert (=> b!1336876 m!1494625))

(declare-fun m!1494627 () Bool)

(assert (=> b!1336876 m!1494627))

(assert (=> b!1336874 m!1494619))

(assert (=> b!1336874 m!1494619))

(declare-fun m!1494629 () Bool)

(assert (=> b!1336874 m!1494629))

(assert (=> b!1336875 m!1494619))

(assert (=> b!1336875 m!1494621))

(assert (=> b!1336875 m!1494623))

(assert (=> b!1336875 m!1494619))

(assert (=> b!1336875 m!1494625))

(assert (=> b!1336875 m!1494623))

(assert (=> b!1336875 m!1494625))

(assert (=> b!1336875 m!1494627))

(assert (=> d!376482 d!376614))

(declare-fun lt!442587 () Bool)

(declare-fun d!376634 () Bool)

(assert (=> d!376634 (= lt!442587 (prefixMatch!190 (rulesRegex!250 thiss!19762 rules!2550) (list!5187 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))

(declare-datatypes ((Context!1174 0))(
  ( (Context!1175 (exprs!1087 List!13723)) )
))
(declare-fun prefixMatchZipperSequence!210 ((InoxSet Context!1174) BalanceConc!8938 Int) Bool)

(declare-fun focus!78 (Regex!3681) (InoxSet Context!1174))

(assert (=> d!376634 (= lt!442587 (prefixMatchZipperSequence!210 (focus!78 (rulesRegex!250 thiss!19762 rules!2550)) (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) 0))))

(declare-fun lt!442590 () Unit!19781)

(declare-fun lt!442593 () Unit!19781)

(assert (=> d!376634 (= lt!442590 lt!442593)))

(declare-fun lt!442589 () List!13717)

(declare-fun lt!442592 () (InoxSet Context!1174))

(declare-fun prefixMatchZipper!58 ((InoxSet Context!1174) List!13717) Bool)

(assert (=> d!376634 (= (prefixMatch!190 (rulesRegex!250 thiss!19762 rules!2550) lt!442589) (prefixMatchZipper!58 lt!442592 lt!442589))))

(declare-datatypes ((List!13726 0))(
  ( (Nil!13660) (Cons!13660 (h!19061 Context!1174) (t!119343 List!13726)) )
))
(declare-fun lt!442595 () List!13726)

(declare-fun prefixMatchZipperRegexEquiv!58 ((InoxSet Context!1174) List!13726 Regex!3681 List!13717) Unit!19781)

(assert (=> d!376634 (= lt!442593 (prefixMatchZipperRegexEquiv!58 lt!442592 lt!442595 (rulesRegex!250 thiss!19762 rules!2550) lt!442589))))

(assert (=> d!376634 (= lt!442589 (list!5187 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))

(declare-fun toList!742 ((InoxSet Context!1174)) List!13726)

(assert (=> d!376634 (= lt!442595 (toList!742 (focus!78 (rulesRegex!250 thiss!19762 rules!2550))))))

(assert (=> d!376634 (= lt!442592 (focus!78 (rulesRegex!250 thiss!19762 rules!2550)))))

(declare-fun lt!442588 () Unit!19781)

(declare-fun lt!442594 () Unit!19781)

(assert (=> d!376634 (= lt!442588 lt!442594)))

(declare-fun lt!442591 () (InoxSet Context!1174))

(declare-fun lt!442586 () Int)

(declare-fun dropList!378 (BalanceConc!8938 Int) List!13717)

(assert (=> d!376634 (= (prefixMatchZipper!58 lt!442591 (dropList!378 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) lt!442586)) (prefixMatchZipperSequence!210 lt!442591 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) lt!442586))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!58 ((InoxSet Context!1174) BalanceConc!8938 Int) Unit!19781)

(assert (=> d!376634 (= lt!442594 (lemmaprefixMatchZipperSequenceEquivalent!58 lt!442591 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) lt!442586))))

(assert (=> d!376634 (= lt!442586 0)))

(assert (=> d!376634 (= lt!442591 (focus!78 (rulesRegex!250 thiss!19762 rules!2550)))))

(assert (=> d!376634 (validRegex!1585 (rulesRegex!250 thiss!19762 rules!2550))))

(assert (=> d!376634 (= (prefixMatchZipperSequence!208 (rulesRegex!250 thiss!19762 rules!2550) (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))) lt!442587)))

(declare-fun bs!332009 () Bool)

(assert (= bs!332009 d!376634))

(assert (=> bs!332009 m!1493753))

(declare-fun m!1494709 () Bool)

(assert (=> bs!332009 m!1494709))

(declare-fun m!1494711 () Bool)

(assert (=> bs!332009 m!1494711))

(assert (=> bs!332009 m!1494139))

(declare-fun m!1494713 () Bool)

(assert (=> bs!332009 m!1494713))

(assert (=> bs!332009 m!1493753))

(declare-fun m!1494715 () Bool)

(assert (=> bs!332009 m!1494715))

(assert (=> bs!332009 m!1494139))

(assert (=> bs!332009 m!1494709))

(assert (=> bs!332009 m!1494139))

(declare-fun m!1494717 () Bool)

(assert (=> bs!332009 m!1494717))

(declare-fun m!1494719 () Bool)

(assert (=> bs!332009 m!1494719))

(declare-fun m!1494721 () Bool)

(assert (=> bs!332009 m!1494721))

(assert (=> bs!332009 m!1493753))

(declare-fun m!1494723 () Bool)

(assert (=> bs!332009 m!1494723))

(assert (=> bs!332009 m!1493753))

(declare-fun m!1494725 () Bool)

(assert (=> bs!332009 m!1494725))

(declare-fun m!1494727 () Bool)

(assert (=> bs!332009 m!1494727))

(assert (=> bs!332009 m!1494723))

(assert (=> bs!332009 m!1494139))

(declare-fun m!1494729 () Bool)

(assert (=> bs!332009 m!1494729))

(assert (=> bs!332009 m!1493753))

(declare-fun m!1494731 () Bool)

(assert (=> bs!332009 m!1494731))

(assert (=> bs!332009 m!1494723))

(declare-fun m!1494733 () Bool)

(assert (=> bs!332009 m!1494733))

(assert (=> bs!332009 m!1494139))

(assert (=> bs!332009 m!1494719))

(assert (=> d!376482 d!376634))

(declare-fun d!376694 () Bool)

(declare-fun e!856472 () Bool)

(assert (=> d!376694 e!856472))

(declare-fun res!602819 () Bool)

(assert (=> d!376694 (=> (not res!602819) (not e!856472))))

(declare-fun lt!442599 () BalanceConc!8938)

(assert (=> d!376694 (= res!602819 (= (list!5187 lt!442599) (Cons!13651 (apply!3195 (charsOf!1339 t2!34) 0) Nil!13651)))))

(declare-fun singleton!411 (C!7652) BalanceConc!8938)

(assert (=> d!376694 (= lt!442599 (singleton!411 (apply!3195 (charsOf!1339 t2!34) 0)))))

(assert (=> d!376694 (= (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)) lt!442599)))

(declare-fun b!1336950 () Bool)

(assert (=> b!1336950 (= e!856472 (isBalanced!1305 (c!218765 lt!442599)))))

(assert (= (and d!376694 res!602819) b!1336950))

(declare-fun m!1494743 () Bool)

(assert (=> d!376694 m!1494743))

(assert (=> d!376694 m!1494145))

(declare-fun m!1494745 () Bool)

(assert (=> d!376694 m!1494745))

(declare-fun m!1494747 () Bool)

(assert (=> b!1336950 m!1494747))

(assert (=> d!376482 d!376694))

(assert (=> d!376482 d!376466))

(declare-fun d!376704 () Bool)

(declare-fun lt!442600 () C!7652)

(assert (=> d!376704 (= lt!442600 (apply!3200 (list!5187 (charsOf!1339 t2!34)) 0))))

(assert (=> d!376704 (= lt!442600 (apply!3201 (c!218765 (charsOf!1339 t2!34)) 0))))

(declare-fun e!856473 () Bool)

(assert (=> d!376704 e!856473))

(declare-fun res!602820 () Bool)

(assert (=> d!376704 (=> (not res!602820) (not e!856473))))

(assert (=> d!376704 (= res!602820 (<= 0 0))))

(assert (=> d!376704 (= (apply!3195 (charsOf!1339 t2!34) 0) lt!442600)))

(declare-fun b!1336951 () Bool)

(assert (=> b!1336951 (= e!856473 (< 0 (size!11114 (charsOf!1339 t2!34))))))

(assert (= (and d!376704 res!602820) b!1336951))

(assert (=> d!376704 m!1493757))

(declare-fun m!1494751 () Bool)

(assert (=> d!376704 m!1494751))

(assert (=> d!376704 m!1494751))

(declare-fun m!1494753 () Bool)

(assert (=> d!376704 m!1494753))

(declare-fun m!1494755 () Bool)

(assert (=> d!376704 m!1494755))

(assert (=> b!1336951 m!1493757))

(declare-fun m!1494757 () Bool)

(assert (=> b!1336951 m!1494757))

(assert (=> d!376482 d!376704))

(assert (=> d!376482 d!376462))

(assert (=> d!376482 d!376404))

(declare-fun d!376708 () Bool)

(declare-fun lt!442601 () Bool)

(assert (=> d!376708 (= lt!442601 (isEmpty!8143 (list!5187 (_2!7523 lt!442404))))))

(assert (=> d!376708 (= lt!442601 (isEmpty!8148 (c!218765 (_2!7523 lt!442404))))))

(assert (=> d!376708 (= (isEmpty!8142 (_2!7523 lt!442404)) lt!442601)))

(declare-fun bs!332014 () Bool)

(assert (= bs!332014 d!376708))

(declare-fun m!1494759 () Bool)

(assert (=> bs!332014 m!1494759))

(assert (=> bs!332014 m!1494759))

(declare-fun m!1494761 () Bool)

(assert (=> bs!332014 m!1494761))

(declare-fun m!1494763 () Bool)

(assert (=> bs!332014 m!1494763))

(assert (=> b!1336402 d!376708))

(assert (=> b!1336406 d!376400))

(declare-fun d!376710 () Bool)

(assert (=> d!376710 true))

(declare-fun order!8201 () Int)

(declare-fun lambda!56056 () Int)

(declare-fun dynLambda!6020 (Int Int) Int)

(assert (=> d!376710 (< (dynLambda!6017 order!8191 (toValue!3602 (transformation!2367 (rule!4112 t2!34)))) (dynLambda!6020 order!8201 lambda!56056))))

(declare-fun Forall2!425 (Int) Bool)

(assert (=> d!376710 (= (equivClasses!853 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (toValue!3602 (transformation!2367 (rule!4112 t2!34)))) (Forall2!425 lambda!56056))))

(declare-fun bs!332021 () Bool)

(assert (= bs!332021 d!376710))

(declare-fun m!1494781 () Bool)

(assert (=> bs!332021 m!1494781))

(assert (=> b!1336235 d!376710))

(declare-fun d!376724 () Bool)

(declare-fun charsToBigInt!1 (List!13716) Int)

(assert (=> d!376724 (= (inv!17 (value!77092 t1!34)) (= (charsToBigInt!1 (text!17647 (value!77092 t1!34))) (value!77084 (value!77092 t1!34))))))

(declare-fun bs!332022 () Bool)

(assert (= bs!332022 d!376724))

(declare-fun m!1494783 () Bool)

(assert (=> bs!332022 m!1494783))

(assert (=> b!1336258 d!376724))

(declare-fun d!376726 () Bool)

(assert (=> d!376726 (= (inv!15 (value!77092 t2!34)) (= (charsToBigInt!0 (text!17648 (value!77092 t2!34)) 0) (value!77087 (value!77092 t2!34))))))

(declare-fun bs!332023 () Bool)

(assert (= bs!332023 d!376726))

(declare-fun m!1494785 () Bool)

(assert (=> bs!332023 m!1494785))

(assert (=> b!1336287 d!376726))

(declare-fun d!376728 () Bool)

(declare-fun lt!442604 () Int)

(assert (=> d!376728 (>= lt!442604 0)))

(declare-fun e!856479 () Int)

(assert (=> d!376728 (= lt!442604 e!856479)))

(declare-fun c!218950 () Bool)

(assert (=> d!376728 (= c!218950 ((_ is Nil!13651) lt!442365))))

(assert (=> d!376728 (= (size!11118 lt!442365) lt!442604)))

(declare-fun b!1336960 () Bool)

(assert (=> b!1336960 (= e!856479 0)))

(declare-fun b!1336961 () Bool)

(assert (=> b!1336961 (= e!856479 (+ 1 (size!11118 (t!119282 lt!442365))))))

(assert (= (and d!376728 c!218950) b!1336960))

(assert (= (and d!376728 (not c!218950)) b!1336961))

(declare-fun m!1494787 () Bool)

(assert (=> b!1336961 m!1494787))

(assert (=> b!1336299 d!376728))

(declare-fun d!376730 () Bool)

(declare-fun lt!442605 () Int)

(assert (=> d!376730 (>= lt!442605 0)))

(declare-fun e!856480 () Int)

(assert (=> d!376730 (= lt!442605 e!856480)))

(declare-fun c!218951 () Bool)

(assert (=> d!376730 (= c!218951 ((_ is Nil!13651) lt!442344))))

(assert (=> d!376730 (= (size!11118 lt!442344) lt!442605)))

(declare-fun b!1336962 () Bool)

(assert (=> b!1336962 (= e!856480 0)))

(declare-fun b!1336963 () Bool)

(assert (=> b!1336963 (= e!856480 (+ 1 (size!11118 (t!119282 lt!442344))))))

(assert (= (and d!376730 c!218951) b!1336962))

(assert (= (and d!376730 (not c!218951)) b!1336963))

(declare-fun m!1494789 () Bool)

(assert (=> b!1336963 m!1494789))

(assert (=> b!1336299 d!376730))

(declare-fun d!376732 () Bool)

(declare-fun lt!442606 () Int)

(assert (=> d!376732 (>= lt!442606 0)))

(declare-fun e!856481 () Int)

(assert (=> d!376732 (= lt!442606 e!856481)))

(declare-fun c!218952 () Bool)

(assert (=> d!376732 (= c!218952 ((_ is Nil!13651) (getSuffix!529 lt!442343 lt!442344)))))

(assert (=> d!376732 (= (size!11118 (getSuffix!529 lt!442343 lt!442344)) lt!442606)))

(declare-fun b!1336964 () Bool)

(assert (=> b!1336964 (= e!856481 0)))

(declare-fun b!1336965 () Bool)

(assert (=> b!1336965 (= e!856481 (+ 1 (size!11118 (t!119282 (getSuffix!529 lt!442343 lt!442344)))))))

(assert (= (and d!376732 c!218952) b!1336964))

(assert (= (and d!376732 (not c!218952)) b!1336965))

(declare-fun m!1494791 () Bool)

(assert (=> b!1336965 m!1494791))

(assert (=> b!1336299 d!376732))

(declare-fun d!376734 () Bool)

(declare-fun lt!442607 () C!7652)

(assert (=> d!376734 (contains!2489 (list!5187 lt!442342) lt!442607)))

(declare-fun e!856483 () C!7652)

(assert (=> d!376734 (= lt!442607 e!856483)))

(declare-fun c!218953 () Bool)

(assert (=> d!376734 (= c!218953 (= 0 0))))

(declare-fun e!856482 () Bool)

(assert (=> d!376734 e!856482))

(declare-fun res!602825 () Bool)

(assert (=> d!376734 (=> (not res!602825) (not e!856482))))

(assert (=> d!376734 (= res!602825 (<= 0 0))))

(assert (=> d!376734 (= (apply!3200 (list!5187 lt!442342) 0) lt!442607)))

(declare-fun b!1336966 () Bool)

(assert (=> b!1336966 (= e!856482 (< 0 (size!11118 (list!5187 lt!442342))))))

(declare-fun b!1336967 () Bool)

(assert (=> b!1336967 (= e!856483 (head!2369 (list!5187 lt!442342)))))

(declare-fun b!1336968 () Bool)

(assert (=> b!1336968 (= e!856483 (apply!3200 (tail!1918 (list!5187 lt!442342)) (- 0 1)))))

(assert (= (and d!376734 res!602825) b!1336966))

(assert (= (and d!376734 c!218953) b!1336967))

(assert (= (and d!376734 (not c!218953)) b!1336968))

(assert (=> d!376734 m!1493745))

(declare-fun m!1494793 () Bool)

(assert (=> d!376734 m!1494793))

(assert (=> b!1336966 m!1493745))

(assert (=> b!1336966 m!1494095))

(assert (=> b!1336967 m!1493745))

(declare-fun m!1494795 () Bool)

(assert (=> b!1336967 m!1494795))

(assert (=> b!1336968 m!1493745))

(declare-fun m!1494797 () Bool)

(assert (=> b!1336968 m!1494797))

(assert (=> b!1336968 m!1494797))

(declare-fun m!1494801 () Bool)

(assert (=> b!1336968 m!1494801))

(assert (=> d!376474 d!376734))

(assert (=> d!376474 d!376464))

(declare-fun b!1336969 () Bool)

(declare-fun e!856485 () Int)

(assert (=> b!1336969 (= e!856485 (- 0 (size!11119 (left!11716 (c!218765 lt!442342)))))))

(declare-fun b!1336970 () Bool)

(declare-fun e!856486 () C!7652)

(declare-fun e!856484 () C!7652)

(assert (=> b!1336970 (= e!856486 e!856484)))

(declare-fun lt!442608 () Bool)

(assert (=> b!1336970 (= lt!442608 (appendIndex!147 (list!5191 (left!11716 (c!218765 lt!442342))) (list!5191 (right!12046 (c!218765 lt!442342))) 0))))

(declare-fun c!218956 () Bool)

(assert (=> b!1336970 (= c!218956 (< 0 (size!11119 (left!11716 (c!218765 lt!442342)))))))

(declare-fun b!1336971 () Bool)

(assert (=> b!1336971 (= e!856485 0)))

(declare-fun d!376738 () Bool)

(declare-fun lt!442609 () C!7652)

(assert (=> d!376738 (= lt!442609 (apply!3200 (list!5191 (c!218765 lt!442342)) 0))))

(assert (=> d!376738 (= lt!442609 e!856486)))

(declare-fun c!218955 () Bool)

(assert (=> d!376738 (= c!218955 ((_ is Leaf!6879) (c!218765 lt!442342)))))

(declare-fun e!856487 () Bool)

(assert (=> d!376738 e!856487))

(declare-fun res!602826 () Bool)

(assert (=> d!376738 (=> (not res!602826) (not e!856487))))

(assert (=> d!376738 (= res!602826 (<= 0 0))))

(assert (=> d!376738 (= (apply!3201 (c!218765 lt!442342) 0) lt!442609)))

(declare-fun b!1336972 () Bool)

(assert (=> b!1336972 (= e!856486 (apply!3205 (xs!7214 (c!218765 lt!442342)) 0))))

(declare-fun b!1336973 () Bool)

(declare-fun call!90195 () C!7652)

(assert (=> b!1336973 (= e!856484 call!90195)))

(declare-fun bm!90190 () Bool)

(declare-fun c!218954 () Bool)

(assert (=> bm!90190 (= c!218954 c!218956)))

(assert (=> bm!90190 (= call!90195 (apply!3201 (ite c!218956 (left!11716 (c!218765 lt!442342)) (right!12046 (c!218765 lt!442342))) e!856485))))

(declare-fun b!1336974 () Bool)

(assert (=> b!1336974 (= e!856484 call!90195)))

(declare-fun b!1336975 () Bool)

(assert (=> b!1336975 (= e!856487 (< 0 (size!11119 (c!218765 lt!442342))))))

(assert (= (and d!376738 res!602826) b!1336975))

(assert (= (and d!376738 c!218955) b!1336972))

(assert (= (and d!376738 (not c!218955)) b!1336970))

(assert (= (and b!1336970 c!218956) b!1336974))

(assert (= (and b!1336970 (not c!218956)) b!1336973))

(assert (= (or b!1336974 b!1336973) bm!90190))

(assert (= (and bm!90190 c!218954) b!1336971))

(assert (= (and bm!90190 (not c!218954)) b!1336969))

(declare-fun m!1494803 () Bool)

(assert (=> b!1336970 m!1494803))

(declare-fun m!1494805 () Bool)

(assert (=> b!1336970 m!1494805))

(assert (=> b!1336970 m!1494803))

(assert (=> b!1336970 m!1494805))

(declare-fun m!1494807 () Bool)

(assert (=> b!1336970 m!1494807))

(declare-fun m!1494809 () Bool)

(assert (=> b!1336970 m!1494809))

(declare-fun m!1494811 () Bool)

(assert (=> b!1336972 m!1494811))

(declare-fun m!1494813 () Bool)

(assert (=> bm!90190 m!1494813))

(declare-fun m!1494815 () Bool)

(assert (=> b!1336975 m!1494815))

(assert (=> d!376738 m!1494079))

(assert (=> d!376738 m!1494079))

(declare-fun m!1494817 () Bool)

(assert (=> d!376738 m!1494817))

(assert (=> b!1336969 m!1494809))

(assert (=> d!376474 d!376738))

(declare-fun b!1337135 () Bool)

(declare-fun res!602853 () Bool)

(declare-fun e!856564 () Bool)

(assert (=> b!1337135 (=> (not res!602853) (not e!856564))))

(declare-fun lt!442619 () tuple2!13274)

(declare-datatypes ((tuple2!13278 0))(
  ( (tuple2!13279 (_1!7525 List!13722) (_2!7525 List!13717)) )
))
(declare-fun lexList!592 (LexerInterface!2062 List!13718 List!13717) tuple2!13278)

(assert (=> b!1337135 (= res!602853 (= (list!5190 (_1!7523 lt!442619)) (_1!7525 (lexList!592 thiss!19762 rules!2550 (list!5187 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))))

(declare-fun b!1337136 () Bool)

(assert (=> b!1337136 (= e!856564 (= (list!5187 (_2!7523 lt!442619)) (_2!7525 (lexList!592 thiss!19762 rules!2550 (list!5187 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))))

(declare-fun b!1337137 () Bool)

(declare-fun e!856566 () Bool)

(declare-fun e!856565 () Bool)

(assert (=> b!1337137 (= e!856566 e!856565)))

(declare-fun res!602852 () Bool)

(assert (=> b!1337137 (= res!602852 (< (size!11114 (_2!7523 lt!442619)) (size!11114 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))

(assert (=> b!1337137 (=> (not res!602852) (not e!856565))))

(declare-fun d!376740 () Bool)

(assert (=> d!376740 e!856564))

(declare-fun res!602851 () Bool)

(assert (=> d!376740 (=> (not res!602851) (not e!856564))))

(assert (=> d!376740 (= res!602851 e!856566)))

(declare-fun c!218983 () Bool)

(assert (=> d!376740 (= c!218983 (> (size!11120 (_1!7523 lt!442619)) 0))))

(declare-fun lexTailRecV2!387 (LexerInterface!2062 List!13718 BalanceConc!8938 BalanceConc!8938 BalanceConc!8938 BalanceConc!8942) tuple2!13274)

(assert (=> d!376740 (= lt!442619 (lexTailRecV2!387 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)) (BalanceConc!8939 Empty!4499) (print!832 thiss!19762 (singletonSeq!969 t1!34)) (BalanceConc!8943 Empty!4501)))))

(assert (=> d!376740 (= (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34))) lt!442619)))

(declare-fun b!1337138 () Bool)

(declare-fun isEmpty!8149 (BalanceConc!8942) Bool)

(assert (=> b!1337138 (= e!856565 (not (isEmpty!8149 (_1!7523 lt!442619))))))

(declare-fun b!1337139 () Bool)

(assert (=> b!1337139 (= e!856566 (= (_2!7523 lt!442619) (print!832 thiss!19762 (singletonSeq!969 t1!34))))))

(assert (= (and d!376740 c!218983) b!1337137))

(assert (= (and d!376740 (not c!218983)) b!1337139))

(assert (= (and b!1337137 res!602852) b!1337138))

(assert (= (and d!376740 res!602851) b!1337135))

(assert (= (and b!1337135 res!602853) b!1337136))

(declare-fun m!1494881 () Bool)

(assert (=> b!1337137 m!1494881))

(assert (=> b!1337137 m!1494029))

(declare-fun m!1494883 () Bool)

(assert (=> b!1337137 m!1494883))

(declare-fun m!1494885 () Bool)

(assert (=> b!1337136 m!1494885))

(assert (=> b!1337136 m!1494029))

(declare-fun m!1494887 () Bool)

(assert (=> b!1337136 m!1494887))

(assert (=> b!1337136 m!1494887))

(declare-fun m!1494889 () Bool)

(assert (=> b!1337136 m!1494889))

(declare-fun m!1494891 () Bool)

(assert (=> d!376740 m!1494891))

(assert (=> d!376740 m!1494029))

(assert (=> d!376740 m!1494029))

(declare-fun m!1494893 () Bool)

(assert (=> d!376740 m!1494893))

(declare-fun m!1494895 () Bool)

(assert (=> b!1337138 m!1494895))

(declare-fun m!1494897 () Bool)

(assert (=> b!1337135 m!1494897))

(assert (=> b!1337135 m!1494029))

(assert (=> b!1337135 m!1494887))

(assert (=> b!1337135 m!1494887))

(assert (=> b!1337135 m!1494889))

(assert (=> d!376416 d!376740))

(declare-fun d!376768 () Bool)

(declare-fun lt!442622 () BalanceConc!8938)

(declare-fun printList!582 (LexerInterface!2062 List!13722) List!13717)

(assert (=> d!376768 (= (list!5187 lt!442622) (printList!582 thiss!19762 (list!5190 (singletonSeq!969 t1!34))))))

(declare-fun printTailRec!564 (LexerInterface!2062 BalanceConc!8942 Int BalanceConc!8938) BalanceConc!8938)

(assert (=> d!376768 (= lt!442622 (printTailRec!564 thiss!19762 (singletonSeq!969 t1!34) 0 (BalanceConc!8939 Empty!4499)))))

(assert (=> d!376768 (= (print!832 thiss!19762 (singletonSeq!969 t1!34)) lt!442622)))

(declare-fun bs!332036 () Bool)

(assert (= bs!332036 d!376768))

(declare-fun m!1494899 () Bool)

(assert (=> bs!332036 m!1494899))

(assert (=> bs!332036 m!1494027))

(assert (=> bs!332036 m!1494031))

(assert (=> bs!332036 m!1494031))

(declare-fun m!1494901 () Bool)

(assert (=> bs!332036 m!1494901))

(assert (=> bs!332036 m!1494027))

(declare-fun m!1494903 () Bool)

(assert (=> bs!332036 m!1494903))

(assert (=> d!376416 d!376768))

(declare-fun d!376770 () Bool)

(declare-fun e!856569 () Bool)

(assert (=> d!376770 e!856569))

(declare-fun res!602856 () Bool)

(assert (=> d!376770 (=> (not res!602856) (not e!856569))))

(declare-fun lt!442625 () BalanceConc!8942)

(assert (=> d!376770 (= res!602856 (= (list!5190 lt!442625) (Cons!13656 t1!34 Nil!13656)))))

(declare-fun singleton!412 (Token!4396) BalanceConc!8942)

(assert (=> d!376770 (= lt!442625 (singleton!412 t1!34))))

(assert (=> d!376770 (= (singletonSeq!969 t1!34) lt!442625)))

(declare-fun b!1337142 () Bool)

(declare-fun isBalanced!1306 (Conc!4501) Bool)

(assert (=> b!1337142 (= e!856569 (isBalanced!1306 (c!218804 lt!442625)))))

(assert (= (and d!376770 res!602856) b!1337142))

(declare-fun m!1494905 () Bool)

(assert (=> d!376770 m!1494905))

(declare-fun m!1494907 () Bool)

(assert (=> d!376770 m!1494907))

(declare-fun m!1494909 () Bool)

(assert (=> b!1337142 m!1494909))

(assert (=> d!376416 d!376770))

(declare-fun d!376772 () Bool)

(declare-fun list!5194 (Conc!4501) List!13722)

(assert (=> d!376772 (= (list!5190 (singletonSeq!969 t1!34)) (list!5194 (c!218804 (singletonSeq!969 t1!34))))))

(declare-fun bs!332037 () Bool)

(assert (= bs!332037 d!376772))

(declare-fun m!1494911 () Bool)

(assert (=> bs!332037 m!1494911))

(assert (=> d!376416 d!376772))

(assert (=> d!376416 d!376488))

(declare-fun d!376774 () Bool)

(declare-fun lt!442628 () Int)

(declare-fun size!11127 (List!13722) Int)

(assert (=> d!376774 (= lt!442628 (size!11127 (list!5190 (_1!7523 lt!442402))))))

(declare-fun size!11128 (Conc!4501) Int)

(assert (=> d!376774 (= lt!442628 (size!11128 (c!218804 (_1!7523 lt!442402))))))

(assert (=> d!376774 (= (size!11120 (_1!7523 lt!442402)) lt!442628)))

(declare-fun bs!332038 () Bool)

(assert (= bs!332038 d!376774))

(declare-fun m!1494913 () Bool)

(assert (=> bs!332038 m!1494913))

(assert (=> bs!332038 m!1494913))

(declare-fun m!1494915 () Bool)

(assert (=> bs!332038 m!1494915))

(declare-fun m!1494917 () Bool)

(assert (=> bs!332038 m!1494917))

(assert (=> d!376416 d!376774))

(declare-fun d!376776 () Bool)

(assert (=> d!376776 (= (list!5190 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34))))) (list!5194 (c!218804 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))))

(declare-fun bs!332039 () Bool)

(assert (= bs!332039 d!376776))

(declare-fun m!1494919 () Bool)

(assert (=> bs!332039 m!1494919))

(assert (=> d!376416 d!376776))

(declare-fun d!376778 () Bool)

(declare-fun lostCauseFct!118 (Regex!3681) Bool)

(assert (=> d!376778 (= (lostCause!299 lt!442339) (lostCauseFct!118 lt!442339))))

(declare-fun bs!332040 () Bool)

(assert (= bs!332040 d!376778))

(declare-fun m!1494921 () Bool)

(assert (=> bs!332040 m!1494921))

(assert (=> b!1336416 d!376778))

(declare-fun d!376780 () Bool)

(declare-fun res!602861 () Bool)

(declare-fun e!856574 () Bool)

(assert (=> d!376780 (=> res!602861 e!856574)))

(assert (=> d!376780 (= res!602861 ((_ is Nil!13652) rules!2550))))

(assert (=> d!376780 (= (noDuplicateTag!863 thiss!19762 rules!2550 Nil!13658) e!856574)))

(declare-fun b!1337147 () Bool)

(declare-fun e!856575 () Bool)

(assert (=> b!1337147 (= e!856574 e!856575)))

(declare-fun res!602862 () Bool)

(assert (=> b!1337147 (=> (not res!602862) (not e!856575))))

(declare-fun contains!2491 (List!13724 String!16521) Bool)

(assert (=> b!1337147 (= res!602862 (not (contains!2491 Nil!13658 (tag!2629 (h!19053 rules!2550)))))))

(declare-fun b!1337148 () Bool)

(assert (=> b!1337148 (= e!856575 (noDuplicateTag!863 thiss!19762 (t!119283 rules!2550) (Cons!13658 (tag!2629 (h!19053 rules!2550)) Nil!13658)))))

(assert (= (and d!376780 (not res!602861)) b!1337147))

(assert (= (and b!1337147 res!602862) b!1337148))

(declare-fun m!1494923 () Bool)

(assert (=> b!1337147 m!1494923))

(declare-fun m!1494925 () Bool)

(assert (=> b!1337148 m!1494925))

(assert (=> b!1336435 d!376780))

(declare-fun d!376782 () Bool)

(declare-fun lt!442629 () Int)

(assert (=> d!376782 (>= lt!442629 0)))

(declare-fun e!856576 () Int)

(assert (=> d!376782 (= lt!442629 e!856576)))

(declare-fun c!218984 () Bool)

(assert (=> d!376782 (= c!218984 ((_ is Nil!13651) (list!5187 lt!442341)))))

(assert (=> d!376782 (= (size!11118 (list!5187 lt!442341)) lt!442629)))

(declare-fun b!1337149 () Bool)

(assert (=> b!1337149 (= e!856576 0)))

(declare-fun b!1337150 () Bool)

(assert (=> b!1337150 (= e!856576 (+ 1 (size!11118 (t!119282 (list!5187 lt!442341)))))))

(assert (= (and d!376782 c!218984) b!1337149))

(assert (= (and d!376782 (not c!218984)) b!1337150))

(declare-fun m!1494927 () Bool)

(assert (=> b!1337150 m!1494927))

(assert (=> d!376400 d!376782))

(assert (=> d!376400 d!376588))

(declare-fun d!376784 () Bool)

(declare-fun lt!442632 () Int)

(assert (=> d!376784 (= lt!442632 (size!11118 (list!5191 (c!218765 lt!442341))))))

(assert (=> d!376784 (= lt!442632 (ite ((_ is Empty!4499) (c!218765 lt!442341)) 0 (ite ((_ is Leaf!6879) (c!218765 lt!442341)) (csize!9229 (c!218765 lt!442341)) (csize!9228 (c!218765 lt!442341)))))))

(assert (=> d!376784 (= (size!11119 (c!218765 lt!442341)) lt!442632)))

(declare-fun bs!332041 () Bool)

(assert (= bs!332041 d!376784))

(assert (=> bs!332041 m!1494483))

(assert (=> bs!332041 m!1494483))

(declare-fun m!1494929 () Bool)

(assert (=> bs!332041 m!1494929))

(assert (=> d!376400 d!376784))

(declare-fun d!376786 () Bool)

(assert (=> d!376786 (= (list!5187 lt!442362) (list!5191 (c!218765 lt!442362)))))

(declare-fun bs!332042 () Bool)

(assert (= bs!332042 d!376786))

(declare-fun m!1494931 () Bool)

(assert (=> bs!332042 m!1494931))

(assert (=> d!376404 d!376786))

(declare-fun e!856577 () Bool)

(declare-fun lt!442633 () List!13717)

(declare-fun b!1337154 () Bool)

(assert (=> b!1337154 (= e!856577 (or (not (= lt!442368 Nil!13651)) (= lt!442633 lt!442344)))))

(declare-fun d!376788 () Bool)

(assert (=> d!376788 e!856577))

(declare-fun res!602864 () Bool)

(assert (=> d!376788 (=> (not res!602864) (not e!856577))))

(assert (=> d!376788 (= res!602864 (= (content!1937 lt!442633) ((_ map or) (content!1937 lt!442344) (content!1937 lt!442368))))))

(declare-fun e!856578 () List!13717)

(assert (=> d!376788 (= lt!442633 e!856578)))

(declare-fun c!218985 () Bool)

(assert (=> d!376788 (= c!218985 ((_ is Nil!13651) lt!442344))))

(assert (=> d!376788 (= (++!3488 lt!442344 lt!442368) lt!442633)))

(declare-fun b!1337153 () Bool)

(declare-fun res!602863 () Bool)

(assert (=> b!1337153 (=> (not res!602863) (not e!856577))))

(assert (=> b!1337153 (= res!602863 (= (size!11118 lt!442633) (+ (size!11118 lt!442344) (size!11118 lt!442368))))))

(declare-fun b!1337151 () Bool)

(assert (=> b!1337151 (= e!856578 lt!442368)))

(declare-fun b!1337152 () Bool)

(assert (=> b!1337152 (= e!856578 (Cons!13651 (h!19052 lt!442344) (++!3488 (t!119282 lt!442344) lt!442368)))))

(assert (= (and d!376788 c!218985) b!1337151))

(assert (= (and d!376788 (not c!218985)) b!1337152))

(assert (= (and d!376788 res!602864) b!1337153))

(assert (= (and b!1337153 res!602863) b!1337154))

(declare-fun m!1494933 () Bool)

(assert (=> d!376788 m!1494933))

(assert (=> d!376788 m!1493883))

(declare-fun m!1494935 () Bool)

(assert (=> d!376788 m!1494935))

(declare-fun m!1494937 () Bool)

(assert (=> b!1337153 m!1494937))

(assert (=> b!1337153 m!1493889))

(declare-fun m!1494939 () Bool)

(assert (=> b!1337153 m!1494939))

(declare-fun m!1494941 () Bool)

(assert (=> b!1337152 m!1494941))

(assert (=> d!376412 d!376788))

(declare-fun d!376790 () Bool)

(declare-fun lt!442634 () Int)

(assert (=> d!376790 (>= lt!442634 0)))

(declare-fun e!856579 () Int)

(assert (=> d!376790 (= lt!442634 e!856579)))

(declare-fun c!218986 () Bool)

(assert (=> d!376790 (= c!218986 ((_ is Nil!13651) lt!442343))))

(assert (=> d!376790 (= (size!11118 lt!442343) lt!442634)))

(declare-fun b!1337155 () Bool)

(assert (=> b!1337155 (= e!856579 0)))

(declare-fun b!1337156 () Bool)

(assert (=> b!1337156 (= e!856579 (+ 1 (size!11118 (t!119282 lt!442343))))))

(assert (= (and d!376790 c!218986) b!1337155))

(assert (= (and d!376790 (not c!218986)) b!1337156))

(declare-fun m!1494943 () Bool)

(assert (=> b!1337156 m!1494943))

(assert (=> d!376412 d!376790))

(assert (=> d!376412 d!376730))

(declare-fun d!376792 () Bool)

(declare-fun lt!442635 () Bool)

(assert (=> d!376792 (= lt!442635 (select (content!1937 (t!119282 lt!442344)) (apply!3195 lt!442342 0)))))

(declare-fun e!856580 () Bool)

(assert (=> d!376792 (= lt!442635 e!856580)))

(declare-fun res!602865 () Bool)

(assert (=> d!376792 (=> (not res!602865) (not e!856580))))

(assert (=> d!376792 (= res!602865 ((_ is Cons!13651) (t!119282 lt!442344)))))

(assert (=> d!376792 (= (contains!2489 (t!119282 lt!442344) (apply!3195 lt!442342 0)) lt!442635)))

(declare-fun b!1337157 () Bool)

(declare-fun e!856581 () Bool)

(assert (=> b!1337157 (= e!856580 e!856581)))

(declare-fun res!602866 () Bool)

(assert (=> b!1337157 (=> res!602866 e!856581)))

(assert (=> b!1337157 (= res!602866 (= (h!19052 (t!119282 lt!442344)) (apply!3195 lt!442342 0)))))

(declare-fun b!1337158 () Bool)

(assert (=> b!1337158 (= e!856581 (contains!2489 (t!119282 (t!119282 lt!442344)) (apply!3195 lt!442342 0)))))

(assert (= (and d!376792 res!602865) b!1337157))

(assert (= (and b!1337157 (not res!602866)) b!1337158))

(assert (=> d!376792 m!1494349))

(assert (=> d!376792 m!1493721))

(declare-fun m!1494945 () Bool)

(assert (=> d!376792 m!1494945))

(assert (=> b!1337158 m!1493721))

(declare-fun m!1494947 () Bool)

(assert (=> b!1337158 m!1494947))

(assert (=> b!1336423 d!376792))

(declare-fun d!376794 () Bool)

(assert (=> d!376794 (= (list!5190 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34))))) (list!5194 (c!218804 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))))

(declare-fun bs!332043 () Bool)

(assert (= bs!332043 d!376794))

(declare-fun m!1494949 () Bool)

(assert (=> bs!332043 m!1494949))

(assert (=> d!376458 d!376794))

(declare-fun d!376796 () Bool)

(declare-fun lt!442636 () Int)

(assert (=> d!376796 (= lt!442636 (size!11127 (list!5190 (_1!7523 lt!442404))))))

(assert (=> d!376796 (= lt!442636 (size!11128 (c!218804 (_1!7523 lt!442404))))))

(assert (=> d!376796 (= (size!11120 (_1!7523 lt!442404)) lt!442636)))

(declare-fun bs!332044 () Bool)

(assert (= bs!332044 d!376796))

(declare-fun m!1494951 () Bool)

(assert (=> bs!332044 m!1494951))

(assert (=> bs!332044 m!1494951))

(declare-fun m!1494953 () Bool)

(assert (=> bs!332044 m!1494953))

(declare-fun m!1494955 () Bool)

(assert (=> bs!332044 m!1494955))

(assert (=> d!376458 d!376796))

(declare-fun d!376798 () Bool)

(declare-fun lt!442637 () BalanceConc!8938)

(assert (=> d!376798 (= (list!5187 lt!442637) (printList!582 thiss!19762 (list!5190 (singletonSeq!969 t2!34))))))

(assert (=> d!376798 (= lt!442637 (printTailRec!564 thiss!19762 (singletonSeq!969 t2!34) 0 (BalanceConc!8939 Empty!4499)))))

(assert (=> d!376798 (= (print!832 thiss!19762 (singletonSeq!969 t2!34)) lt!442637)))

(declare-fun bs!332045 () Bool)

(assert (= bs!332045 d!376798))

(declare-fun m!1494957 () Bool)

(assert (=> bs!332045 m!1494957))

(assert (=> bs!332045 m!1494049))

(assert (=> bs!332045 m!1494053))

(assert (=> bs!332045 m!1494053))

(declare-fun m!1494959 () Bool)

(assert (=> bs!332045 m!1494959))

(assert (=> bs!332045 m!1494049))

(declare-fun m!1494961 () Bool)

(assert (=> bs!332045 m!1494961))

(assert (=> d!376458 d!376798))

(declare-fun d!376800 () Bool)

(declare-fun e!856582 () Bool)

(assert (=> d!376800 e!856582))

(declare-fun res!602867 () Bool)

(assert (=> d!376800 (=> (not res!602867) (not e!856582))))

(declare-fun lt!442638 () BalanceConc!8942)

(assert (=> d!376800 (= res!602867 (= (list!5190 lt!442638) (Cons!13656 t2!34 Nil!13656)))))

(assert (=> d!376800 (= lt!442638 (singleton!412 t2!34))))

(assert (=> d!376800 (= (singletonSeq!969 t2!34) lt!442638)))

(declare-fun b!1337159 () Bool)

(assert (=> b!1337159 (= e!856582 (isBalanced!1306 (c!218804 lt!442638)))))

(assert (= (and d!376800 res!602867) b!1337159))

(declare-fun m!1494963 () Bool)

(assert (=> d!376800 m!1494963))

(declare-fun m!1494965 () Bool)

(assert (=> d!376800 m!1494965))

(declare-fun m!1494967 () Bool)

(assert (=> b!1337159 m!1494967))

(assert (=> d!376458 d!376800))

(assert (=> d!376458 d!376488))

(declare-fun b!1337160 () Bool)

(declare-fun res!602870 () Bool)

(declare-fun e!856583 () Bool)

(assert (=> b!1337160 (=> (not res!602870) (not e!856583))))

(declare-fun lt!442639 () tuple2!13274)

(assert (=> b!1337160 (= res!602870 (= (list!5190 (_1!7523 lt!442639)) (_1!7525 (lexList!592 thiss!19762 rules!2550 (list!5187 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))))

(declare-fun b!1337161 () Bool)

(assert (=> b!1337161 (= e!856583 (= (list!5187 (_2!7523 lt!442639)) (_2!7525 (lexList!592 thiss!19762 rules!2550 (list!5187 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))))

(declare-fun b!1337162 () Bool)

(declare-fun e!856585 () Bool)

(declare-fun e!856584 () Bool)

(assert (=> b!1337162 (= e!856585 e!856584)))

(declare-fun res!602869 () Bool)

(assert (=> b!1337162 (= res!602869 (< (size!11114 (_2!7523 lt!442639)) (size!11114 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))

(assert (=> b!1337162 (=> (not res!602869) (not e!856584))))

(declare-fun d!376802 () Bool)

(assert (=> d!376802 e!856583))

(declare-fun res!602868 () Bool)

(assert (=> d!376802 (=> (not res!602868) (not e!856583))))

(assert (=> d!376802 (= res!602868 e!856585)))

(declare-fun c!218987 () Bool)

(assert (=> d!376802 (= c!218987 (> (size!11120 (_1!7523 lt!442639)) 0))))

(assert (=> d!376802 (= lt!442639 (lexTailRecV2!387 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)) (BalanceConc!8939 Empty!4499) (print!832 thiss!19762 (singletonSeq!969 t2!34)) (BalanceConc!8943 Empty!4501)))))

(assert (=> d!376802 (= (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34))) lt!442639)))

(declare-fun b!1337163 () Bool)

(assert (=> b!1337163 (= e!856584 (not (isEmpty!8149 (_1!7523 lt!442639))))))

(declare-fun b!1337164 () Bool)

(assert (=> b!1337164 (= e!856585 (= (_2!7523 lt!442639) (print!832 thiss!19762 (singletonSeq!969 t2!34))))))

(assert (= (and d!376802 c!218987) b!1337162))

(assert (= (and d!376802 (not c!218987)) b!1337164))

(assert (= (and b!1337162 res!602869) b!1337163))

(assert (= (and d!376802 res!602868) b!1337160))

(assert (= (and b!1337160 res!602870) b!1337161))

(declare-fun m!1494969 () Bool)

(assert (=> b!1337162 m!1494969))

(assert (=> b!1337162 m!1494051))

(declare-fun m!1494971 () Bool)

(assert (=> b!1337162 m!1494971))

(declare-fun m!1494973 () Bool)

(assert (=> b!1337161 m!1494973))

(assert (=> b!1337161 m!1494051))

(declare-fun m!1494975 () Bool)

(assert (=> b!1337161 m!1494975))

(assert (=> b!1337161 m!1494975))

(declare-fun m!1494977 () Bool)

(assert (=> b!1337161 m!1494977))

(declare-fun m!1494979 () Bool)

(assert (=> d!376802 m!1494979))

(assert (=> d!376802 m!1494051))

(assert (=> d!376802 m!1494051))

(declare-fun m!1494981 () Bool)

(assert (=> d!376802 m!1494981))

(declare-fun m!1494983 () Bool)

(assert (=> b!1337163 m!1494983))

(declare-fun m!1494985 () Bool)

(assert (=> b!1337160 m!1494985))

(assert (=> b!1337160 m!1494051))

(assert (=> b!1337160 m!1494975))

(assert (=> b!1337160 m!1494975))

(assert (=> b!1337160 m!1494977))

(assert (=> d!376458 d!376802))

(declare-fun d!376804 () Bool)

(assert (=> d!376804 (= (list!5190 (singletonSeq!969 t2!34)) (list!5194 (c!218804 (singletonSeq!969 t2!34))))))

(declare-fun bs!332046 () Bool)

(assert (= bs!332046 d!376804))

(declare-fun m!1494987 () Bool)

(assert (=> bs!332046 m!1494987))

(assert (=> d!376458 d!376804))

(declare-fun d!376806 () Bool)

(assert (=> d!376806 (= (isEmpty!8143 (originalCharacters!3229 t1!34)) ((_ is Nil!13651) (originalCharacters!3229 t1!34)))))

(assert (=> d!376476 d!376806))

(declare-fun b!1337173 () Bool)

(declare-fun e!856594 () Bool)

(declare-fun e!856593 () Bool)

(assert (=> b!1337173 (= e!856594 e!856593)))

(declare-fun res!602876 () Bool)

(assert (=> b!1337173 (= res!602876 (not ((_ is Cons!13652) rules!2550)))))

(assert (=> b!1337173 (=> res!602876 e!856593)))

(declare-fun d!376808 () Bool)

(declare-fun c!218990 () Bool)

(assert (=> d!376808 (= c!218990 (and ((_ is Cons!13652) rules!2550) (not (= (isSeparator!2367 (h!19053 rules!2550)) (isSeparator!2367 (h!19053 rules!2550))))))))

(assert (=> d!376808 (= (ruleDisjointCharsFromAllFromOtherType!336 (h!19053 rules!2550) rules!2550) e!856594)))

(declare-fun bm!90214 () Bool)

(declare-fun call!90219 () Bool)

(assert (=> bm!90214 (= call!90219 (ruleDisjointCharsFromAllFromOtherType!336 (h!19053 rules!2550) (t!119283 rules!2550)))))

(declare-fun b!1337174 () Bool)

(declare-fun e!856592 () Bool)

(assert (=> b!1337174 (= e!856592 call!90219)))

(declare-fun b!1337175 () Bool)

(assert (=> b!1337175 (= e!856594 e!856592)))

(declare-fun res!602875 () Bool)

(declare-fun rulesUseDisjointChars!166 (Rule!4534 Rule!4534) Bool)

(assert (=> b!1337175 (= res!602875 (rulesUseDisjointChars!166 (h!19053 rules!2550) (h!19053 rules!2550)))))

(assert (=> b!1337175 (=> (not res!602875) (not e!856592))))

(declare-fun b!1337176 () Bool)

(assert (=> b!1337176 (= e!856593 call!90219)))

(assert (= (and d!376808 c!218990) b!1337175))

(assert (= (and d!376808 (not c!218990)) b!1337173))

(assert (= (and b!1337175 res!602875) b!1337174))

(assert (= (and b!1337173 (not res!602876)) b!1337176))

(assert (= (or b!1337174 b!1337176) bm!90214))

(declare-fun m!1494989 () Bool)

(assert (=> bm!90214 m!1494989))

(declare-fun m!1494991 () Bool)

(assert (=> b!1337175 m!1494991))

(assert (=> b!1336274 d!376808))

(declare-fun d!376810 () Bool)

(assert (=> d!376810 (= (inv!17992 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))) (isBalanced!1305 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))))

(declare-fun bs!332047 () Bool)

(assert (= bs!332047 d!376810))

(declare-fun m!1494993 () Bool)

(assert (=> bs!332047 m!1494993))

(assert (=> tb!70485 d!376810))

(declare-fun d!376812 () Bool)

(assert (=> d!376812 (= (list!5187 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))) (list!5191 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))))

(declare-fun bs!332048 () Bool)

(assert (= bs!332048 d!376812))

(declare-fun m!1494995 () Bool)

(assert (=> bs!332048 m!1494995))

(assert (=> b!1336429 d!376812))

(declare-fun bs!332049 () Bool)

(declare-fun d!376814 () Bool)

(assert (= bs!332049 (and d!376814 d!376568)))

(declare-fun lambda!56064 () Int)

(assert (=> bs!332049 (= (and (= (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (toChars!3461 (transformation!2367 (h!19053 rules!2550)))) (= (toValue!3602 (transformation!2367 (rule!4112 t2!34))) (toValue!3602 (transformation!2367 (h!19053 rules!2550))))) (= lambda!56064 lambda!56043))))

(declare-fun bs!332050 () Bool)

(assert (= bs!332050 (and d!376814 d!376570)))

(assert (=> bs!332050 (= (and (= (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (toChars!3461 (transformation!2367 (rule!4112 t1!34)))) (= (toValue!3602 (transformation!2367 (rule!4112 t2!34))) (toValue!3602 (transformation!2367 (rule!4112 t1!34))))) (= lambda!56064 lambda!56044))))

(assert (=> d!376814 true))

(assert (=> d!376814 (< (dynLambda!6015 order!8187 (toChars!3461 (transformation!2367 (rule!4112 t2!34)))) (dynLambda!6016 order!8189 lambda!56064))))

(assert (=> d!376814 true))

(assert (=> d!376814 (< (dynLambda!6017 order!8191 (toValue!3602 (transformation!2367 (rule!4112 t2!34)))) (dynLambda!6016 order!8189 lambda!56064))))

(assert (=> d!376814 (= (semiInverseModEq!894 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (toValue!3602 (transformation!2367 (rule!4112 t2!34)))) (Forall!522 lambda!56064))))

(declare-fun bs!332051 () Bool)

(assert (= bs!332051 d!376814))

(declare-fun m!1494997 () Bool)

(assert (=> bs!332051 m!1494997))

(assert (=> d!376374 d!376814))

(declare-fun d!376816 () Bool)

(assert (=> d!376816 (= (list!5187 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))) (list!5191 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))))

(declare-fun bs!332052 () Bool)

(assert (= bs!332052 d!376816))

(declare-fun m!1494999 () Bool)

(assert (=> bs!332052 m!1494999))

(assert (=> b!1336431 d!376816))

(declare-fun bs!332053 () Bool)

(declare-fun d!376818 () Bool)

(assert (= bs!332053 (and d!376818 d!376710)))

(declare-fun lambda!56065 () Int)

(assert (=> bs!332053 (= (= (toValue!3602 (transformation!2367 (h!19053 rules!2550))) (toValue!3602 (transformation!2367 (rule!4112 t2!34)))) (= lambda!56065 lambda!56056))))

(assert (=> d!376818 true))

(assert (=> d!376818 (< (dynLambda!6017 order!8191 (toValue!3602 (transformation!2367 (h!19053 rules!2550)))) (dynLambda!6020 order!8201 lambda!56065))))

(assert (=> d!376818 (= (equivClasses!853 (toChars!3461 (transformation!2367 (h!19053 rules!2550))) (toValue!3602 (transformation!2367 (h!19053 rules!2550)))) (Forall2!425 lambda!56065))))

(declare-fun bs!332054 () Bool)

(assert (= bs!332054 d!376818))

(declare-fun m!1495001 () Bool)

(assert (=> bs!332054 m!1495001))

(assert (=> b!1336267 d!376818))

(declare-fun b!1337187 () Bool)

(declare-fun e!856603 () Bool)

(assert (=> b!1337187 (= e!856603 (isPrefix!1095 (tail!1918 lt!442344) (tail!1918 lt!442371)))))

(declare-fun d!376820 () Bool)

(declare-fun e!856602 () Bool)

(assert (=> d!376820 e!856602))

(declare-fun res!602887 () Bool)

(assert (=> d!376820 (=> res!602887 e!856602)))

(declare-fun lt!442642 () Bool)

(assert (=> d!376820 (= res!602887 (not lt!442642))))

(declare-fun e!856601 () Bool)

(assert (=> d!376820 (= lt!442642 e!856601)))

(declare-fun res!602888 () Bool)

(assert (=> d!376820 (=> res!602888 e!856601)))

(assert (=> d!376820 (= res!602888 ((_ is Nil!13651) lt!442344))))

(assert (=> d!376820 (= (isPrefix!1095 lt!442344 lt!442371) lt!442642)))

(declare-fun b!1337188 () Bool)

(assert (=> b!1337188 (= e!856602 (>= (size!11118 lt!442371) (size!11118 lt!442344)))))

(declare-fun b!1337186 () Bool)

(declare-fun res!602886 () Bool)

(assert (=> b!1337186 (=> (not res!602886) (not e!856603))))

(assert (=> b!1337186 (= res!602886 (= (head!2369 lt!442344) (head!2369 lt!442371)))))

(declare-fun b!1337185 () Bool)

(assert (=> b!1337185 (= e!856601 e!856603)))

(declare-fun res!602885 () Bool)

(assert (=> b!1337185 (=> (not res!602885) (not e!856603))))

(assert (=> b!1337185 (= res!602885 (not ((_ is Nil!13651) lt!442371)))))

(assert (= (and d!376820 (not res!602888)) b!1337185))

(assert (= (and b!1337185 res!602885) b!1337186))

(assert (= (and b!1337186 res!602886) b!1337187))

(assert (= (and d!376820 (not res!602887)) b!1337188))

(assert (=> b!1337187 m!1494109))

(assert (=> b!1337187 m!1494459))

(assert (=> b!1337187 m!1494109))

(assert (=> b!1337187 m!1494459))

(declare-fun m!1495003 () Bool)

(assert (=> b!1337187 m!1495003))

(declare-fun m!1495005 () Bool)

(assert (=> b!1337188 m!1495005))

(assert (=> b!1337188 m!1493889))

(assert (=> b!1337186 m!1494105))

(assert (=> b!1337186 m!1494463))

(assert (=> b!1336477 d!376820))

(declare-fun d!376822 () Bool)

(declare-fun lt!442643 () Int)

(assert (=> d!376822 (>= lt!442643 0)))

(declare-fun e!856604 () Int)

(assert (=> d!376822 (= lt!442643 e!856604)))

(declare-fun c!218991 () Bool)

(assert (=> d!376822 (= c!218991 ((_ is Nil!13651) lt!442413))))

(assert (=> d!376822 (= (size!11118 lt!442413) lt!442643)))

(declare-fun b!1337189 () Bool)

(assert (=> b!1337189 (= e!856604 0)))

(declare-fun b!1337190 () Bool)

(assert (=> b!1337190 (= e!856604 (+ 1 (size!11118 (t!119282 lt!442413))))))

(assert (= (and d!376822 c!218991) b!1337189))

(assert (= (and d!376822 (not c!218991)) b!1337190))

(declare-fun m!1495007 () Bool)

(assert (=> b!1337190 m!1495007))

(assert (=> b!1336410 d!376822))

(declare-fun d!376824 () Bool)

(declare-fun lt!442644 () Int)

(assert (=> d!376824 (>= lt!442644 0)))

(declare-fun e!856605 () Int)

(assert (=> d!376824 (= lt!442644 e!856605)))

(declare-fun c!218992 () Bool)

(assert (=> d!376824 (= c!218992 ((_ is Nil!13651) (list!5187 lt!442342)))))

(assert (=> d!376824 (= (size!11118 (list!5187 lt!442342)) lt!442644)))

(declare-fun b!1337191 () Bool)

(assert (=> b!1337191 (= e!856605 0)))

(declare-fun b!1337192 () Bool)

(assert (=> b!1337192 (= e!856605 (+ 1 (size!11118 (t!119282 (list!5187 lt!442342)))))))

(assert (= (and d!376824 c!218992) b!1337191))

(assert (= (and d!376824 (not c!218992)) b!1337192))

(assert (=> b!1337192 m!1494419))

(assert (=> b!1336410 d!376824))

(declare-fun d!376826 () Bool)

(declare-fun lt!442645 () Int)

(assert (=> d!376826 (>= lt!442645 0)))

(declare-fun e!856606 () Int)

(assert (=> d!376826 (= lt!442645 e!856606)))

(declare-fun c!218993 () Bool)

(assert (=> d!376826 (= c!218993 ((_ is Nil!13651) (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)))))

(assert (=> d!376826 (= (size!11118 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)) lt!442645)))

(declare-fun b!1337193 () Bool)

(assert (=> b!1337193 (= e!856606 0)))

(declare-fun b!1337194 () Bool)

(assert (=> b!1337194 (= e!856606 (+ 1 (size!11118 (t!119282 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)))))))

(assert (= (and d!376826 c!218993) b!1337193))

(assert (= (and d!376826 (not c!218993)) b!1337194))

(declare-fun m!1495009 () Bool)

(assert (=> b!1337194 m!1495009))

(assert (=> b!1336410 d!376826))

(declare-fun bs!332055 () Bool)

(declare-fun d!376828 () Bool)

(assert (= bs!332055 (and d!376828 d!376710)))

(declare-fun lambda!56066 () Int)

(assert (=> bs!332055 (= (= (toValue!3602 (transformation!2367 (rule!4112 t1!34))) (toValue!3602 (transformation!2367 (rule!4112 t2!34)))) (= lambda!56066 lambda!56056))))

(declare-fun bs!332056 () Bool)

(assert (= bs!332056 (and d!376828 d!376818)))

(assert (=> bs!332056 (= (= (toValue!3602 (transformation!2367 (rule!4112 t1!34))) (toValue!3602 (transformation!2367 (h!19053 rules!2550)))) (= lambda!56066 lambda!56065))))

(assert (=> d!376828 true))

(assert (=> d!376828 (< (dynLambda!6017 order!8191 (toValue!3602 (transformation!2367 (rule!4112 t1!34)))) (dynLambda!6020 order!8201 lambda!56066))))

(assert (=> d!376828 (= (equivClasses!853 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (toValue!3602 (transformation!2367 (rule!4112 t1!34)))) (Forall2!425 lambda!56066))))

(declare-fun bs!332057 () Bool)

(assert (= bs!332057 d!376828))

(declare-fun m!1495011 () Bool)

(assert (=> bs!332057 m!1495011))

(assert (=> b!1336400 d!376828))

(declare-fun d!376830 () Bool)

(assert (=> d!376830 (= (list!5187 lt!442409) (list!5191 (c!218765 lt!442409)))))

(declare-fun bs!332058 () Bool)

(assert (= bs!332058 d!376830))

(declare-fun m!1495013 () Bool)

(assert (=> bs!332058 m!1495013))

(assert (=> d!376462 d!376830))

(declare-fun d!376832 () Bool)

(assert (=> d!376832 true))

(declare-fun lt!442648 () Bool)

(assert (=> d!376832 (= lt!442648 (rulesValidInductive!748 thiss!19762 rules!2550))))

(declare-fun lambda!56069 () Int)

(declare-fun forall!3338 (List!13718 Int) Bool)

(assert (=> d!376832 (= lt!442648 (forall!3338 rules!2550 lambda!56069))))

(assert (=> d!376832 (= (rulesValid!863 thiss!19762 rules!2550) lt!442648)))

(declare-fun bs!332059 () Bool)

(assert (= bs!332059 d!376832))

(assert (=> bs!332059 m!1494309))

(declare-fun m!1495015 () Bool)

(assert (=> bs!332059 m!1495015))

(assert (=> d!376480 d!376832))

(declare-fun d!376834 () Bool)

(declare-fun c!218996 () Bool)

(assert (=> d!376834 (= c!218996 ((_ is Node!4499) (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))))

(declare-fun e!856611 () Bool)

(assert (=> d!376834 (= (inv!17991 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))) e!856611)))

(declare-fun b!1337203 () Bool)

(declare-fun inv!17996 (Conc!4499) Bool)

(assert (=> b!1337203 (= e!856611 (inv!17996 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))))

(declare-fun b!1337204 () Bool)

(declare-fun e!856612 () Bool)

(assert (=> b!1337204 (= e!856611 e!856612)))

(declare-fun res!602891 () Bool)

(assert (=> b!1337204 (= res!602891 (not ((_ is Leaf!6879) (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))))))

(assert (=> b!1337204 (=> res!602891 e!856612)))

(declare-fun b!1337205 () Bool)

(declare-fun inv!17997 (Conc!4499) Bool)

(assert (=> b!1337205 (= e!856612 (inv!17997 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))))

(assert (= (and d!376834 c!218996) b!1337203))

(assert (= (and d!376834 (not c!218996)) b!1337204))

(assert (= (and b!1337204 (not res!602891)) b!1337205))

(declare-fun m!1495017 () Bool)

(assert (=> b!1337203 m!1495017))

(declare-fun m!1495019 () Bool)

(assert (=> b!1337205 m!1495019))

(assert (=> b!1336283 d!376834))

(declare-fun d!376836 () Bool)

(assert (=> d!376836 (= (isEmpty!8143 (originalCharacters!3229 t2!34)) ((_ is Nil!13651) (originalCharacters!3229 t2!34)))))

(assert (=> d!376478 d!376836))

(declare-fun b!1337215 () Bool)

(declare-fun e!856617 () List!13717)

(declare-fun e!856618 () List!13717)

(assert (=> b!1337215 (= e!856617 e!856618)))

(declare-fun c!219002 () Bool)

(assert (=> b!1337215 (= c!219002 ((_ is Leaf!6879) (c!218765 lt!442342)))))

(declare-fun b!1337216 () Bool)

(declare-fun list!5195 (IArray!9003) List!13717)

(assert (=> b!1337216 (= e!856618 (list!5195 (xs!7214 (c!218765 lt!442342))))))

(declare-fun d!376838 () Bool)

(declare-fun c!219001 () Bool)

(assert (=> d!376838 (= c!219001 ((_ is Empty!4499) (c!218765 lt!442342)))))

(assert (=> d!376838 (= (list!5191 (c!218765 lt!442342)) e!856617)))

(declare-fun b!1337214 () Bool)

(assert (=> b!1337214 (= e!856617 Nil!13651)))

(declare-fun b!1337217 () Bool)

(assert (=> b!1337217 (= e!856618 (++!3488 (list!5191 (left!11716 (c!218765 lt!442342))) (list!5191 (right!12046 (c!218765 lt!442342)))))))

(assert (= (and d!376838 c!219001) b!1337214))

(assert (= (and d!376838 (not c!219001)) b!1337215))

(assert (= (and b!1337215 c!219002) b!1337216))

(assert (= (and b!1337215 (not c!219002)) b!1337217))

(declare-fun m!1495021 () Bool)

(assert (=> b!1337216 m!1495021))

(assert (=> b!1337217 m!1494803))

(assert (=> b!1337217 m!1494805))

(assert (=> b!1337217 m!1494803))

(assert (=> b!1337217 m!1494805))

(declare-fun m!1495023 () Bool)

(assert (=> b!1337217 m!1495023))

(assert (=> d!376464 d!376838))

(declare-fun d!376840 () Bool)

(declare-fun res!602894 () List!13717)

(assert (=> d!376840 (dynLambda!6010 lambda!56007 res!602894)))

(declare-fun e!856621 () Bool)

(assert (=> d!376840 e!856621))

(assert (=> d!376840 (= (choose!8193 lambda!56007) res!602894)))

(declare-fun b!1337220 () Bool)

(declare-fun tp!386864 () Bool)

(assert (=> b!1337220 (= e!856621 (and tp_is_empty!6679 tp!386864))))

(assert (= (and d!376840 ((_ is Cons!13651) res!602894)) b!1337220))

(declare-fun b_lambda!39481 () Bool)

(assert (=> (not b_lambda!39481) (not d!376840)))

(declare-fun m!1495025 () Bool)

(assert (=> d!376840 m!1495025))

(assert (=> d!376414 d!376840))

(assert (=> d!376414 d!376484))

(declare-fun d!376842 () Bool)

(declare-fun lt!442649 () Int)

(assert (=> d!376842 (= lt!442649 (size!11118 (list!5187 lt!442342)))))

(assert (=> d!376842 (= lt!442649 (size!11119 (c!218765 lt!442342)))))

(assert (=> d!376842 (= (size!11114 lt!442342) lt!442649)))

(declare-fun bs!332060 () Bool)

(assert (= bs!332060 d!376842))

(assert (=> bs!332060 m!1493745))

(assert (=> bs!332060 m!1493745))

(assert (=> bs!332060 m!1494095))

(assert (=> bs!332060 m!1494815))

(assert (=> b!1336424 d!376842))

(declare-fun d!376844 () Bool)

(declare-fun lt!442650 () Bool)

(assert (=> d!376844 (= lt!442650 (isEmpty!8143 (list!5187 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))))

(assert (=> d!376844 (= lt!442650 (isEmpty!8148 (c!218765 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))))

(assert (=> d!376844 (= (isEmpty!8142 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34))))) lt!442650)))

(declare-fun bs!332061 () Bool)

(assert (= bs!332061 d!376844))

(declare-fun m!1495027 () Bool)

(assert (=> bs!332061 m!1495027))

(assert (=> bs!332061 m!1495027))

(declare-fun m!1495029 () Bool)

(assert (=> bs!332061 m!1495029))

(declare-fun m!1495031 () Bool)

(assert (=> bs!332061 m!1495031))

(assert (=> b!1336399 d!376844))

(assert (=> b!1336399 d!376740))

(assert (=> b!1336399 d!376768))

(assert (=> b!1336399 d!376770))

(declare-fun lt!442651 () Bool)

(declare-fun d!376846 () Bool)

(assert (=> d!376846 (= lt!442651 (isEmpty!8143 (list!5187 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))))

(assert (=> d!376846 (= lt!442651 (isEmpty!8148 (c!218765 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))))

(assert (=> d!376846 (= (isEmpty!8142 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34))))) lt!442651)))

(declare-fun bs!332062 () Bool)

(assert (= bs!332062 d!376846))

(declare-fun m!1495033 () Bool)

(assert (=> bs!332062 m!1495033))

(assert (=> bs!332062 m!1495033))

(declare-fun m!1495035 () Bool)

(assert (=> bs!332062 m!1495035))

(declare-fun m!1495037 () Bool)

(assert (=> bs!332062 m!1495037))

(assert (=> b!1336403 d!376846))

(assert (=> b!1336403 d!376802))

(assert (=> b!1336403 d!376798))

(assert (=> b!1336403 d!376800))

(declare-fun d!376848 () Bool)

(declare-fun lt!442654 () Token!4396)

(declare-fun apply!3206 (List!13722 Int) Token!4396)

(assert (=> d!376848 (= lt!442654 (apply!3206 (list!5190 (_1!7523 lt!442402)) 0))))

(declare-fun apply!3207 (Conc!4501 Int) Token!4396)

(assert (=> d!376848 (= lt!442654 (apply!3207 (c!218804 (_1!7523 lt!442402)) 0))))

(declare-fun e!856624 () Bool)

(assert (=> d!376848 e!856624))

(declare-fun res!602897 () Bool)

(assert (=> d!376848 (=> (not res!602897) (not e!856624))))

(assert (=> d!376848 (= res!602897 (<= 0 0))))

(assert (=> d!376848 (= (apply!3199 (_1!7523 lt!442402) 0) lt!442654)))

(declare-fun b!1337223 () Bool)

(assert (=> b!1337223 (= e!856624 (< 0 (size!11120 (_1!7523 lt!442402))))))

(assert (= (and d!376848 res!602897) b!1337223))

(assert (=> d!376848 m!1494913))

(assert (=> d!376848 m!1494913))

(declare-fun m!1495039 () Bool)

(assert (=> d!376848 m!1495039))

(declare-fun m!1495041 () Bool)

(assert (=> d!376848 m!1495041))

(assert (=> b!1337223 m!1494035))

(assert (=> b!1336397 d!376848))

(declare-fun d!376850 () Bool)

(assert (=> d!376850 (= (inv!16 (value!77092 t2!34)) (= (charsToInt!0 (text!17646 (value!77092 t2!34))) (value!77083 (value!77092 t2!34))))))

(declare-fun bs!332063 () Bool)

(assert (= bs!332063 d!376850))

(declare-fun m!1495043 () Bool)

(assert (=> bs!332063 m!1495043))

(assert (=> b!1336286 d!376850))

(declare-fun d!376852 () Bool)

(declare-fun lt!442655 () Token!4396)

(assert (=> d!376852 (= lt!442655 (apply!3206 (list!5190 (_1!7523 lt!442404)) 0))))

(assert (=> d!376852 (= lt!442655 (apply!3207 (c!218804 (_1!7523 lt!442404)) 0))))

(declare-fun e!856625 () Bool)

(assert (=> d!376852 e!856625))

(declare-fun res!602898 () Bool)

(assert (=> d!376852 (=> (not res!602898) (not e!856625))))

(assert (=> d!376852 (= res!602898 (<= 0 0))))

(assert (=> d!376852 (= (apply!3199 (_1!7523 lt!442404) 0) lt!442655)))

(declare-fun b!1337224 () Bool)

(assert (=> b!1337224 (= e!856625 (< 0 (size!11120 (_1!7523 lt!442404))))))

(assert (= (and d!376852 res!602898) b!1337224))

(assert (=> d!376852 m!1494951))

(assert (=> d!376852 m!1494951))

(declare-fun m!1495045 () Bool)

(assert (=> d!376852 m!1495045))

(declare-fun m!1495047 () Bool)

(assert (=> d!376852 m!1495047))

(assert (=> b!1337224 m!1494057))

(assert (=> b!1336401 d!376852))

(declare-fun d!376854 () Bool)

(assert (=> d!376854 true))

(assert (=> d!376854 true))

(declare-fun res!602901 () Bool)

(assert (=> d!376854 (= (choose!8194 lambda!56007) res!602901)))

(assert (=> d!376484 d!376854))

(declare-fun lt!442656 () List!13717)

(declare-fun e!856626 () Bool)

(declare-fun b!1337228 () Bool)

(assert (=> b!1337228 (= e!856626 (or (not (= (getSuffix!529 lt!442343 lt!442344) Nil!13651)) (= lt!442656 (t!119282 lt!442344))))))

(declare-fun d!376856 () Bool)

(assert (=> d!376856 e!856626))

(declare-fun res!602903 () Bool)

(assert (=> d!376856 (=> (not res!602903) (not e!856626))))

(assert (=> d!376856 (= res!602903 (= (content!1937 lt!442656) ((_ map or) (content!1937 (t!119282 lt!442344)) (content!1937 (getSuffix!529 lt!442343 lt!442344)))))))

(declare-fun e!856627 () List!13717)

(assert (=> d!376856 (= lt!442656 e!856627)))

(declare-fun c!219003 () Bool)

(assert (=> d!376856 (= c!219003 ((_ is Nil!13651) (t!119282 lt!442344)))))

(assert (=> d!376856 (= (++!3488 (t!119282 lt!442344) (getSuffix!529 lt!442343 lt!442344)) lt!442656)))

(declare-fun b!1337227 () Bool)

(declare-fun res!602902 () Bool)

(assert (=> b!1337227 (=> (not res!602902) (not e!856626))))

(assert (=> b!1337227 (= res!602902 (= (size!11118 lt!442656) (+ (size!11118 (t!119282 lt!442344)) (size!11118 (getSuffix!529 lt!442343 lt!442344)))))))

(declare-fun b!1337225 () Bool)

(assert (=> b!1337225 (= e!856627 (getSuffix!529 lt!442343 lt!442344))))

(declare-fun b!1337226 () Bool)

(assert (=> b!1337226 (= e!856627 (Cons!13651 (h!19052 (t!119282 lt!442344)) (++!3488 (t!119282 (t!119282 lt!442344)) (getSuffix!529 lt!442343 lt!442344))))))

(assert (= (and d!376856 c!219003) b!1337225))

(assert (= (and d!376856 (not c!219003)) b!1337226))

(assert (= (and d!376856 res!602903) b!1337227))

(assert (= (and b!1337227 res!602902) b!1337228))

(declare-fun m!1495049 () Bool)

(assert (=> d!376856 m!1495049))

(assert (=> d!376856 m!1494349))

(assert (=> d!376856 m!1493725))

(assert (=> d!376856 m!1493885))

(declare-fun m!1495051 () Bool)

(assert (=> b!1337227 m!1495051))

(assert (=> b!1337227 m!1494789))

(assert (=> b!1337227 m!1493725))

(assert (=> b!1337227 m!1493891))

(assert (=> b!1337226 m!1493725))

(declare-fun m!1495053 () Bool)

(assert (=> b!1337226 m!1495053))

(assert (=> b!1336298 d!376856))

(declare-fun d!376858 () Bool)

(assert (=> d!376858 (= (inv!17 (value!77092 t2!34)) (= (charsToBigInt!1 (text!17647 (value!77092 t2!34))) (value!77084 (value!77092 t2!34))))))

(declare-fun bs!332064 () Bool)

(assert (= bs!332064 d!376858))

(declare-fun m!1495055 () Bool)

(assert (=> bs!332064 m!1495055))

(assert (=> b!1336284 d!376858))

(declare-fun d!376860 () Bool)

(declare-fun c!219004 () Bool)

(assert (=> d!376860 (= c!219004 ((_ is Nil!13651) lt!442413))))

(declare-fun e!856628 () (InoxSet C!7652))

(assert (=> d!376860 (= (content!1937 lt!442413) e!856628)))

(declare-fun b!1337229 () Bool)

(assert (=> b!1337229 (= e!856628 ((as const (Array C!7652 Bool)) false))))

(declare-fun b!1337230 () Bool)

(assert (=> b!1337230 (= e!856628 ((_ map or) (store ((as const (Array C!7652 Bool)) false) (h!19052 lt!442413) true) (content!1937 (t!119282 lt!442413))))))

(assert (= (and d!376860 c!219004) b!1337229))

(assert (= (and d!376860 (not c!219004)) b!1337230))

(declare-fun m!1495057 () Bool)

(assert (=> b!1337230 m!1495057))

(declare-fun m!1495059 () Bool)

(assert (=> b!1337230 m!1495059))

(assert (=> d!376468 d!376860))

(declare-fun d!376862 () Bool)

(declare-fun c!219005 () Bool)

(assert (=> d!376862 (= c!219005 ((_ is Nil!13651) (list!5187 lt!442342)))))

(declare-fun e!856629 () (InoxSet C!7652))

(assert (=> d!376862 (= (content!1937 (list!5187 lt!442342)) e!856629)))

(declare-fun b!1337231 () Bool)

(assert (=> b!1337231 (= e!856629 ((as const (Array C!7652 Bool)) false))))

(declare-fun b!1337232 () Bool)

(assert (=> b!1337232 (= e!856629 ((_ map or) (store ((as const (Array C!7652 Bool)) false) (h!19052 (list!5187 lt!442342)) true) (content!1937 (t!119282 (list!5187 lt!442342)))))))

(assert (= (and d!376862 c!219005) b!1337231))

(assert (= (and d!376862 (not c!219005)) b!1337232))

(declare-fun m!1495061 () Bool)

(assert (=> b!1337232 m!1495061))

(assert (=> b!1337232 m!1494415))

(assert (=> d!376468 d!376862))

(declare-fun d!376864 () Bool)

(declare-fun c!219006 () Bool)

(assert (=> d!376864 (= c!219006 ((_ is Nil!13651) (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)))))

(declare-fun e!856630 () (InoxSet C!7652))

(assert (=> d!376864 (= (content!1937 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)) e!856630)))

(declare-fun b!1337233 () Bool)

(assert (=> b!1337233 (= e!856630 ((as const (Array C!7652 Bool)) false))))

(declare-fun b!1337234 () Bool)

(assert (=> b!1337234 (= e!856630 ((_ map or) (store ((as const (Array C!7652 Bool)) false) (h!19052 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)) true) (content!1937 (t!119282 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)))))))

(assert (= (and d!376864 c!219006) b!1337233))

(assert (= (and d!376864 (not c!219006)) b!1337234))

(declare-fun m!1495063 () Bool)

(assert (=> b!1337234 m!1495063))

(declare-fun m!1495065 () Bool)

(assert (=> b!1337234 m!1495065))

(assert (=> d!376468 d!376864))

(declare-fun d!376866 () Bool)

(declare-fun c!219007 () Bool)

(assert (=> d!376866 (= c!219007 ((_ is Node!4499) (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))))

(declare-fun e!856631 () Bool)

(assert (=> d!376866 (= (inv!17991 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))) e!856631)))

(declare-fun b!1337235 () Bool)

(assert (=> b!1337235 (= e!856631 (inv!17996 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))))

(declare-fun b!1337236 () Bool)

(declare-fun e!856632 () Bool)

(assert (=> b!1337236 (= e!856631 e!856632)))

(declare-fun res!602904 () Bool)

(assert (=> b!1337236 (= res!602904 (not ((_ is Leaf!6879) (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))))))

(assert (=> b!1337236 (=> res!602904 e!856632)))

(declare-fun b!1337237 () Bool)

(assert (=> b!1337237 (= e!856632 (inv!17997 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))))

(assert (= (and d!376866 c!219007) b!1337235))

(assert (= (and d!376866 (not c!219007)) b!1337236))

(assert (= (and b!1337236 (not res!602904)) b!1337237))

(declare-fun m!1495067 () Bool)

(assert (=> b!1337235 m!1495067))

(declare-fun m!1495069 () Bool)

(assert (=> b!1337237 m!1495069))

(assert (=> b!1336407 d!376866))

(declare-fun d!376868 () Bool)

(declare-fun c!219008 () Bool)

(assert (=> d!376868 (= c!219008 (isEmpty!8143 (tail!1918 lt!442344)))))

(declare-fun e!856633 () Bool)

(assert (=> d!376868 (= (prefixMatch!190 (derivativeStep!923 lt!442339 (head!2369 lt!442344)) (tail!1918 lt!442344)) e!856633)))

(declare-fun b!1337238 () Bool)

(assert (=> b!1337238 (= e!856633 (not (lostCause!299 (derivativeStep!923 lt!442339 (head!2369 lt!442344)))))))

(declare-fun b!1337239 () Bool)

(assert (=> b!1337239 (= e!856633 (prefixMatch!190 (derivativeStep!923 (derivativeStep!923 lt!442339 (head!2369 lt!442344)) (head!2369 (tail!1918 lt!442344))) (tail!1918 (tail!1918 lt!442344))))))

(assert (= (and d!376868 c!219008) b!1337238))

(assert (= (and d!376868 (not c!219008)) b!1337239))

(assert (=> d!376868 m!1494109))

(declare-fun m!1495071 () Bool)

(assert (=> d!376868 m!1495071))

(assert (=> b!1337238 m!1494107))

(declare-fun m!1495073 () Bool)

(assert (=> b!1337238 m!1495073))

(assert (=> b!1337239 m!1494109))

(declare-fun m!1495075 () Bool)

(assert (=> b!1337239 m!1495075))

(assert (=> b!1337239 m!1494107))

(assert (=> b!1337239 m!1495075))

(declare-fun m!1495077 () Bool)

(assert (=> b!1337239 m!1495077))

(assert (=> b!1337239 m!1494109))

(declare-fun m!1495079 () Bool)

(assert (=> b!1337239 m!1495079))

(assert (=> b!1337239 m!1495077))

(assert (=> b!1337239 m!1495079))

(declare-fun m!1495081 () Bool)

(assert (=> b!1337239 m!1495081))

(assert (=> b!1336417 d!376868))

(declare-fun b!1337260 () Bool)

(declare-fun e!856645 () Regex!3681)

(declare-fun e!856644 () Regex!3681)

(assert (=> b!1337260 (= e!856645 e!856644)))

(declare-fun c!219019 () Bool)

(assert (=> b!1337260 (= c!219019 ((_ is Star!3681) lt!442339))))

(declare-fun bm!90223 () Bool)

(declare-fun call!90229 () Regex!3681)

(declare-fun call!90231 () Regex!3681)

(assert (=> bm!90223 (= call!90229 call!90231)))

(declare-fun b!1337261 () Bool)

(assert (=> b!1337261 (= e!856644 (Concat!6139 call!90229 lt!442339))))

(declare-fun bm!90224 () Bool)

(declare-fun call!90228 () Regex!3681)

(declare-fun call!90230 () Regex!3681)

(assert (=> bm!90224 (= call!90228 call!90230)))

(declare-fun b!1337262 () Bool)

(declare-fun e!856648 () Regex!3681)

(declare-fun e!856647 () Regex!3681)

(assert (=> b!1337262 (= e!856648 e!856647)))

(declare-fun c!219023 () Bool)

(assert (=> b!1337262 (= c!219023 ((_ is ElementMatch!3681) lt!442339))))

(declare-fun b!1337263 () Bool)

(assert (=> b!1337263 (= e!856645 (Union!3681 call!90231 call!90230))))

(declare-fun b!1337264 () Bool)

(assert (=> b!1337264 (= e!856647 (ite (= (head!2369 lt!442344) (c!218766 lt!442339)) EmptyExpr!3681 EmptyLang!3681))))

(declare-fun c!219021 () Bool)

(declare-fun bm!90225 () Bool)

(declare-fun c!219022 () Bool)

(assert (=> bm!90225 (= call!90230 (derivativeStep!923 (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339))) (head!2369 lt!442344)))))

(declare-fun b!1337265 () Bool)

(declare-fun e!856646 () Regex!3681)

(assert (=> b!1337265 (= e!856646 (Union!3681 (Concat!6139 call!90228 (regTwo!7874 lt!442339)) EmptyLang!3681))))

(declare-fun d!376870 () Bool)

(declare-fun lt!442659 () Regex!3681)

(assert (=> d!376870 (validRegex!1585 lt!442659)))

(assert (=> d!376870 (= lt!442659 e!856648)))

(declare-fun c!219020 () Bool)

(assert (=> d!376870 (= c!219020 (or ((_ is EmptyExpr!3681) lt!442339) ((_ is EmptyLang!3681) lt!442339)))))

(assert (=> d!376870 (validRegex!1585 lt!442339)))

(assert (=> d!376870 (= (derivativeStep!923 lt!442339 (head!2369 lt!442344)) lt!442659)))

(declare-fun b!1337266 () Bool)

(assert (=> b!1337266 (= c!219022 (nullable!1169 (regOne!7874 lt!442339)))))

(assert (=> b!1337266 (= e!856644 e!856646)))

(declare-fun b!1337267 () Bool)

(assert (=> b!1337267 (= c!219021 ((_ is Union!3681) lt!442339))))

(assert (=> b!1337267 (= e!856647 e!856645)))

(declare-fun bm!90226 () Bool)

(assert (=> bm!90226 (= call!90231 (derivativeStep!923 (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339))) (head!2369 lt!442344)))))

(declare-fun b!1337268 () Bool)

(assert (=> b!1337268 (= e!856646 (Union!3681 (Concat!6139 call!90229 (regTwo!7874 lt!442339)) call!90228))))

(declare-fun b!1337269 () Bool)

(assert (=> b!1337269 (= e!856648 EmptyLang!3681)))

(assert (= (and d!376870 c!219020) b!1337269))

(assert (= (and d!376870 (not c!219020)) b!1337262))

(assert (= (and b!1337262 c!219023) b!1337264))

(assert (= (and b!1337262 (not c!219023)) b!1337267))

(assert (= (and b!1337267 c!219021) b!1337263))

(assert (= (and b!1337267 (not c!219021)) b!1337260))

(assert (= (and b!1337260 c!219019) b!1337261))

(assert (= (and b!1337260 (not c!219019)) b!1337266))

(assert (= (and b!1337266 c!219022) b!1337268))

(assert (= (and b!1337266 (not c!219022)) b!1337265))

(assert (= (or b!1337268 b!1337265) bm!90224))

(assert (= (or b!1337261 b!1337268) bm!90223))

(assert (= (or b!1337263 bm!90223) bm!90226))

(assert (= (or b!1337263 bm!90224) bm!90225))

(assert (=> bm!90225 m!1494105))

(declare-fun m!1495083 () Bool)

(assert (=> bm!90225 m!1495083))

(declare-fun m!1495085 () Bool)

(assert (=> d!376870 m!1495085))

(assert (=> d!376870 m!1494153))

(declare-fun m!1495087 () Bool)

(assert (=> b!1337266 m!1495087))

(assert (=> bm!90226 m!1494105))

(declare-fun m!1495089 () Bool)

(assert (=> bm!90226 m!1495089))

(assert (=> b!1336417 d!376870))

(declare-fun d!376872 () Bool)

(assert (=> d!376872 (= (head!2369 lt!442344) (h!19052 lt!442344))))

(assert (=> b!1336417 d!376872))

(declare-fun d!376874 () Bool)

(assert (=> d!376874 (= (tail!1918 lt!442344) (t!119282 lt!442344))))

(assert (=> b!1336417 d!376874))

(declare-fun d!376876 () Bool)

(declare-fun lt!442660 () List!13717)

(assert (=> d!376876 (= (++!3488 (t!119282 lt!442344) lt!442660) (tail!1918 lt!442343))))

(declare-fun e!856649 () List!13717)

(assert (=> d!376876 (= lt!442660 e!856649)))

(declare-fun c!219024 () Bool)

(assert (=> d!376876 (= c!219024 ((_ is Cons!13651) (t!119282 lt!442344)))))

(assert (=> d!376876 (>= (size!11118 (tail!1918 lt!442343)) (size!11118 (t!119282 lt!442344)))))

(assert (=> d!376876 (= (getSuffix!529 (tail!1918 lt!442343) (t!119282 lt!442344)) lt!442660)))

(declare-fun b!1337270 () Bool)

(assert (=> b!1337270 (= e!856649 (getSuffix!529 (tail!1918 (tail!1918 lt!442343)) (t!119282 (t!119282 lt!442344))))))

(declare-fun b!1337271 () Bool)

(assert (=> b!1337271 (= e!856649 (tail!1918 lt!442343))))

(assert (= (and d!376876 c!219024) b!1337270))

(assert (= (and d!376876 (not c!219024)) b!1337271))

(declare-fun m!1495091 () Bool)

(assert (=> d!376876 m!1495091))

(assert (=> d!376876 m!1493899))

(declare-fun m!1495093 () Bool)

(assert (=> d!376876 m!1495093))

(assert (=> d!376876 m!1494789))

(assert (=> b!1337270 m!1493899))

(declare-fun m!1495095 () Bool)

(assert (=> b!1337270 m!1495095))

(assert (=> b!1337270 m!1495095))

(declare-fun m!1495097 () Bool)

(assert (=> b!1337270 m!1495097))

(assert (=> b!1336305 d!376876))

(declare-fun d!376878 () Bool)

(assert (=> d!376878 (= (tail!1918 lt!442343) (t!119282 lt!442343))))

(assert (=> b!1336305 d!376878))

(declare-fun b!1337273 () Bool)

(declare-fun e!856650 () Bool)

(declare-fun tp!386868 () Bool)

(declare-fun tp!386866 () Bool)

(assert (=> b!1337273 (= e!856650 (and tp!386868 tp!386866))))

(declare-fun b!1337275 () Bool)

(declare-fun tp!386867 () Bool)

(declare-fun tp!386865 () Bool)

(assert (=> b!1337275 (= e!856650 (and tp!386867 tp!386865))))

(assert (=> b!1336454 (= tp!386739 e!856650)))

(declare-fun b!1337272 () Bool)

(assert (=> b!1337272 (= e!856650 tp_is_empty!6679)))

(declare-fun b!1337274 () Bool)

(declare-fun tp!386869 () Bool)

(assert (=> b!1337274 (= e!856650 tp!386869)))

(assert (= (and b!1336454 ((_ is ElementMatch!3681) (reg!4010 (regex!2367 (rule!4112 t1!34))))) b!1337272))

(assert (= (and b!1336454 ((_ is Concat!6139) (reg!4010 (regex!2367 (rule!4112 t1!34))))) b!1337273))

(assert (= (and b!1336454 ((_ is Star!3681) (reg!4010 (regex!2367 (rule!4112 t1!34))))) b!1337274))

(assert (= (and b!1336454 ((_ is Union!3681) (reg!4010 (regex!2367 (rule!4112 t1!34))))) b!1337275))

(declare-fun b!1337277 () Bool)

(declare-fun e!856651 () Bool)

(declare-fun tp!386873 () Bool)

(declare-fun tp!386871 () Bool)

(assert (=> b!1337277 (= e!856651 (and tp!386873 tp!386871))))

(declare-fun b!1337279 () Bool)

(declare-fun tp!386872 () Bool)

(declare-fun tp!386870 () Bool)

(assert (=> b!1337279 (= e!856651 (and tp!386872 tp!386870))))

(assert (=> b!1336455 (= tp!386737 e!856651)))

(declare-fun b!1337276 () Bool)

(assert (=> b!1337276 (= e!856651 tp_is_empty!6679)))

(declare-fun b!1337278 () Bool)

(declare-fun tp!386874 () Bool)

(assert (=> b!1337278 (= e!856651 tp!386874)))

(assert (= (and b!1336455 ((_ is ElementMatch!3681) (regOne!7875 (regex!2367 (rule!4112 t1!34))))) b!1337276))

(assert (= (and b!1336455 ((_ is Concat!6139) (regOne!7875 (regex!2367 (rule!4112 t1!34))))) b!1337277))

(assert (= (and b!1336455 ((_ is Star!3681) (regOne!7875 (regex!2367 (rule!4112 t1!34))))) b!1337278))

(assert (= (and b!1336455 ((_ is Union!3681) (regOne!7875 (regex!2367 (rule!4112 t1!34))))) b!1337279))

(declare-fun b!1337281 () Bool)

(declare-fun e!856652 () Bool)

(declare-fun tp!386878 () Bool)

(declare-fun tp!386876 () Bool)

(assert (=> b!1337281 (= e!856652 (and tp!386878 tp!386876))))

(declare-fun b!1337283 () Bool)

(declare-fun tp!386877 () Bool)

(declare-fun tp!386875 () Bool)

(assert (=> b!1337283 (= e!856652 (and tp!386877 tp!386875))))

(assert (=> b!1336455 (= tp!386735 e!856652)))

(declare-fun b!1337280 () Bool)

(assert (=> b!1337280 (= e!856652 tp_is_empty!6679)))

(declare-fun b!1337282 () Bool)

(declare-fun tp!386879 () Bool)

(assert (=> b!1337282 (= e!856652 tp!386879)))

(assert (= (and b!1336455 ((_ is ElementMatch!3681) (regTwo!7875 (regex!2367 (rule!4112 t1!34))))) b!1337280))

(assert (= (and b!1336455 ((_ is Concat!6139) (regTwo!7875 (regex!2367 (rule!4112 t1!34))))) b!1337281))

(assert (= (and b!1336455 ((_ is Star!3681) (regTwo!7875 (regex!2367 (rule!4112 t1!34))))) b!1337282))

(assert (= (and b!1336455 ((_ is Union!3681) (regTwo!7875 (regex!2367 (rule!4112 t1!34))))) b!1337283))

(declare-fun b!1337285 () Bool)

(declare-fun e!856653 () Bool)

(declare-fun tp!386883 () Bool)

(declare-fun tp!386881 () Bool)

(assert (=> b!1337285 (= e!856653 (and tp!386883 tp!386881))))

(declare-fun b!1337287 () Bool)

(declare-fun tp!386882 () Bool)

(declare-fun tp!386880 () Bool)

(assert (=> b!1337287 (= e!856653 (and tp!386882 tp!386880))))

(assert (=> b!1336450 (= tp!386734 e!856653)))

(declare-fun b!1337284 () Bool)

(assert (=> b!1337284 (= e!856653 tp_is_empty!6679)))

(declare-fun b!1337286 () Bool)

(declare-fun tp!386884 () Bool)

(assert (=> b!1337286 (= e!856653 tp!386884)))

(assert (= (and b!1336450 ((_ is ElementMatch!3681) (reg!4010 (regex!2367 (rule!4112 t2!34))))) b!1337284))

(assert (= (and b!1336450 ((_ is Concat!6139) (reg!4010 (regex!2367 (rule!4112 t2!34))))) b!1337285))

(assert (= (and b!1336450 ((_ is Star!3681) (reg!4010 (regex!2367 (rule!4112 t2!34))))) b!1337286))

(assert (= (and b!1336450 ((_ is Union!3681) (reg!4010 (regex!2367 (rule!4112 t2!34))))) b!1337287))

(declare-fun b!1337289 () Bool)

(declare-fun e!856654 () Bool)

(declare-fun tp!386888 () Bool)

(declare-fun tp!386886 () Bool)

(assert (=> b!1337289 (= e!856654 (and tp!386888 tp!386886))))

(declare-fun b!1337291 () Bool)

(declare-fun tp!386887 () Bool)

(declare-fun tp!386885 () Bool)

(assert (=> b!1337291 (= e!856654 (and tp!386887 tp!386885))))

(assert (=> b!1336453 (= tp!386738 e!856654)))

(declare-fun b!1337288 () Bool)

(assert (=> b!1337288 (= e!856654 tp_is_empty!6679)))

(declare-fun b!1337290 () Bool)

(declare-fun tp!386889 () Bool)

(assert (=> b!1337290 (= e!856654 tp!386889)))

(assert (= (and b!1336453 ((_ is ElementMatch!3681) (regOne!7874 (regex!2367 (rule!4112 t1!34))))) b!1337288))

(assert (= (and b!1336453 ((_ is Concat!6139) (regOne!7874 (regex!2367 (rule!4112 t1!34))))) b!1337289))

(assert (= (and b!1336453 ((_ is Star!3681) (regOne!7874 (regex!2367 (rule!4112 t1!34))))) b!1337290))

(assert (= (and b!1336453 ((_ is Union!3681) (regOne!7874 (regex!2367 (rule!4112 t1!34))))) b!1337291))

(declare-fun b!1337293 () Bool)

(declare-fun e!856655 () Bool)

(declare-fun tp!386893 () Bool)

(declare-fun tp!386891 () Bool)

(assert (=> b!1337293 (= e!856655 (and tp!386893 tp!386891))))

(declare-fun b!1337295 () Bool)

(declare-fun tp!386892 () Bool)

(declare-fun tp!386890 () Bool)

(assert (=> b!1337295 (= e!856655 (and tp!386892 tp!386890))))

(assert (=> b!1336453 (= tp!386736 e!856655)))

(declare-fun b!1337292 () Bool)

(assert (=> b!1337292 (= e!856655 tp_is_empty!6679)))

(declare-fun b!1337294 () Bool)

(declare-fun tp!386894 () Bool)

(assert (=> b!1337294 (= e!856655 tp!386894)))

(assert (= (and b!1336453 ((_ is ElementMatch!3681) (regTwo!7874 (regex!2367 (rule!4112 t1!34))))) b!1337292))

(assert (= (and b!1336453 ((_ is Concat!6139) (regTwo!7874 (regex!2367 (rule!4112 t1!34))))) b!1337293))

(assert (= (and b!1336453 ((_ is Star!3681) (regTwo!7874 (regex!2367 (rule!4112 t1!34))))) b!1337294))

(assert (= (and b!1336453 ((_ is Union!3681) (regTwo!7874 (regex!2367 (rule!4112 t1!34))))) b!1337295))

(declare-fun b!1337297 () Bool)

(declare-fun e!856656 () Bool)

(declare-fun tp!386898 () Bool)

(declare-fun tp!386896 () Bool)

(assert (=> b!1337297 (= e!856656 (and tp!386898 tp!386896))))

(declare-fun b!1337299 () Bool)

(declare-fun tp!386897 () Bool)

(declare-fun tp!386895 () Bool)

(assert (=> b!1337299 (= e!856656 (and tp!386897 tp!386895))))

(assert (=> b!1336449 (= tp!386733 e!856656)))

(declare-fun b!1337296 () Bool)

(assert (=> b!1337296 (= e!856656 tp_is_empty!6679)))

(declare-fun b!1337298 () Bool)

(declare-fun tp!386899 () Bool)

(assert (=> b!1337298 (= e!856656 tp!386899)))

(assert (= (and b!1336449 ((_ is ElementMatch!3681) (regOne!7874 (regex!2367 (rule!4112 t2!34))))) b!1337296))

(assert (= (and b!1336449 ((_ is Concat!6139) (regOne!7874 (regex!2367 (rule!4112 t2!34))))) b!1337297))

(assert (= (and b!1336449 ((_ is Star!3681) (regOne!7874 (regex!2367 (rule!4112 t2!34))))) b!1337298))

(assert (= (and b!1336449 ((_ is Union!3681) (regOne!7874 (regex!2367 (rule!4112 t2!34))))) b!1337299))

(declare-fun b!1337301 () Bool)

(declare-fun e!856657 () Bool)

(declare-fun tp!386903 () Bool)

(declare-fun tp!386901 () Bool)

(assert (=> b!1337301 (= e!856657 (and tp!386903 tp!386901))))

(declare-fun b!1337303 () Bool)

(declare-fun tp!386902 () Bool)

(declare-fun tp!386900 () Bool)

(assert (=> b!1337303 (= e!856657 (and tp!386902 tp!386900))))

(assert (=> b!1336449 (= tp!386731 e!856657)))

(declare-fun b!1337300 () Bool)

(assert (=> b!1337300 (= e!856657 tp_is_empty!6679)))

(declare-fun b!1337302 () Bool)

(declare-fun tp!386904 () Bool)

(assert (=> b!1337302 (= e!856657 tp!386904)))

(assert (= (and b!1336449 ((_ is ElementMatch!3681) (regTwo!7874 (regex!2367 (rule!4112 t2!34))))) b!1337300))

(assert (= (and b!1336449 ((_ is Concat!6139) (regTwo!7874 (regex!2367 (rule!4112 t2!34))))) b!1337301))

(assert (= (and b!1336449 ((_ is Star!3681) (regTwo!7874 (regex!2367 (rule!4112 t2!34))))) b!1337302))

(assert (= (and b!1336449 ((_ is Union!3681) (regTwo!7874 (regex!2367 (rule!4112 t2!34))))) b!1337303))

(declare-fun b!1337304 () Bool)

(declare-fun e!856658 () Bool)

(declare-fun tp!386905 () Bool)

(assert (=> b!1337304 (= e!856658 (and tp_is_empty!6679 tp!386905))))

(assert (=> b!1336465 (= tp!386748 e!856658)))

(assert (= (and b!1336465 ((_ is Cons!13651) (t!119282 (originalCharacters!3229 t2!34)))) b!1337304))

(declare-fun tp!386913 () Bool)

(declare-fun e!856664 () Bool)

(declare-fun tp!386912 () Bool)

(declare-fun b!1337313 () Bool)

(assert (=> b!1337313 (= e!856664 (and (inv!17991 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))) tp!386912 (inv!17991 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))) tp!386913))))

(declare-fun b!1337315 () Bool)

(declare-fun e!856663 () Bool)

(declare-fun tp!386914 () Bool)

(assert (=> b!1337315 (= e!856663 tp!386914)))

(declare-fun b!1337314 () Bool)

(declare-fun inv!17998 (IArray!9003) Bool)

(assert (=> b!1337314 (= e!856664 (and (inv!17998 (xs!7214 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))) e!856663))))

(assert (=> b!1336407 (= tp!386719 (and (inv!17991 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))) e!856664))))

(assert (= (and b!1336407 ((_ is Node!4499) (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))) b!1337313))

(assert (= b!1337314 b!1337315))

(assert (= (and b!1336407 ((_ is Leaf!6879) (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))) b!1337314))

(declare-fun m!1495099 () Bool)

(assert (=> b!1337313 m!1495099))

(declare-fun m!1495101 () Bool)

(assert (=> b!1337313 m!1495101))

(declare-fun m!1495103 () Bool)

(assert (=> b!1337314 m!1495103))

(assert (=> b!1336407 m!1494071))

(declare-fun b!1337316 () Bool)

(declare-fun e!856665 () Bool)

(declare-fun tp!386915 () Bool)

(assert (=> b!1337316 (= e!856665 (and tp_is_empty!6679 tp!386915))))

(assert (=> b!1336460 (= tp!386742 e!856665)))

(assert (= (and b!1336460 ((_ is Cons!13651) (t!119282 (originalCharacters!3229 t1!34)))) b!1337316))

(declare-fun b!1337318 () Bool)

(declare-fun e!856666 () Bool)

(declare-fun tp!386919 () Bool)

(declare-fun tp!386917 () Bool)

(assert (=> b!1337318 (= e!856666 (and tp!386919 tp!386917))))

(declare-fun b!1337320 () Bool)

(declare-fun tp!386918 () Bool)

(declare-fun tp!386916 () Bool)

(assert (=> b!1337320 (= e!856666 (and tp!386918 tp!386916))))

(assert (=> b!1336464 (= tp!386745 e!856666)))

(declare-fun b!1337317 () Bool)

(assert (=> b!1337317 (= e!856666 tp_is_empty!6679)))

(declare-fun b!1337319 () Bool)

(declare-fun tp!386920 () Bool)

(assert (=> b!1337319 (= e!856666 tp!386920)))

(assert (= (and b!1336464 ((_ is ElementMatch!3681) (regOne!7875 (regex!2367 (h!19053 rules!2550))))) b!1337317))

(assert (= (and b!1336464 ((_ is Concat!6139) (regOne!7875 (regex!2367 (h!19053 rules!2550))))) b!1337318))

(assert (= (and b!1336464 ((_ is Star!3681) (regOne!7875 (regex!2367 (h!19053 rules!2550))))) b!1337319))

(assert (= (and b!1336464 ((_ is Union!3681) (regOne!7875 (regex!2367 (h!19053 rules!2550))))) b!1337320))

(declare-fun b!1337322 () Bool)

(declare-fun e!856667 () Bool)

(declare-fun tp!386924 () Bool)

(declare-fun tp!386922 () Bool)

(assert (=> b!1337322 (= e!856667 (and tp!386924 tp!386922))))

(declare-fun b!1337324 () Bool)

(declare-fun tp!386923 () Bool)

(declare-fun tp!386921 () Bool)

(assert (=> b!1337324 (= e!856667 (and tp!386923 tp!386921))))

(assert (=> b!1336464 (= tp!386743 e!856667)))

(declare-fun b!1337321 () Bool)

(assert (=> b!1337321 (= e!856667 tp_is_empty!6679)))

(declare-fun b!1337323 () Bool)

(declare-fun tp!386925 () Bool)

(assert (=> b!1337323 (= e!856667 tp!386925)))

(assert (= (and b!1336464 ((_ is ElementMatch!3681) (regTwo!7875 (regex!2367 (h!19053 rules!2550))))) b!1337321))

(assert (= (and b!1336464 ((_ is Concat!6139) (regTwo!7875 (regex!2367 (h!19053 rules!2550))))) b!1337322))

(assert (= (and b!1336464 ((_ is Star!3681) (regTwo!7875 (regex!2367 (h!19053 rules!2550))))) b!1337323))

(assert (= (and b!1336464 ((_ is Union!3681) (regTwo!7875 (regex!2367 (h!19053 rules!2550))))) b!1337324))

(declare-fun b!1337326 () Bool)

(declare-fun e!856668 () Bool)

(declare-fun tp!386929 () Bool)

(declare-fun tp!386927 () Bool)

(assert (=> b!1337326 (= e!856668 (and tp!386929 tp!386927))))

(declare-fun b!1337328 () Bool)

(declare-fun tp!386928 () Bool)

(declare-fun tp!386926 () Bool)

(assert (=> b!1337328 (= e!856668 (and tp!386928 tp!386926))))

(assert (=> b!1336475 (= tp!386758 e!856668)))

(declare-fun b!1337325 () Bool)

(assert (=> b!1337325 (= e!856668 tp_is_empty!6679)))

(declare-fun b!1337327 () Bool)

(declare-fun tp!386930 () Bool)

(assert (=> b!1337327 (= e!856668 tp!386930)))

(assert (= (and b!1336475 ((_ is ElementMatch!3681) (regex!2367 (h!19053 (t!119283 rules!2550))))) b!1337325))

(assert (= (and b!1336475 ((_ is Concat!6139) (regex!2367 (h!19053 (t!119283 rules!2550))))) b!1337326))

(assert (= (and b!1336475 ((_ is Star!3681) (regex!2367 (h!19053 (t!119283 rules!2550))))) b!1337327))

(assert (= (and b!1336475 ((_ is Union!3681) (regex!2367 (h!19053 (t!119283 rules!2550))))) b!1337328))

(declare-fun b!1337329 () Bool)

(declare-fun e!856670 () Bool)

(declare-fun tp!386931 () Bool)

(declare-fun tp!386932 () Bool)

(assert (=> b!1337329 (= e!856670 (and (inv!17991 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))) tp!386931 (inv!17991 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))) tp!386932))))

(declare-fun b!1337331 () Bool)

(declare-fun e!856669 () Bool)

(declare-fun tp!386933 () Bool)

(assert (=> b!1337331 (= e!856669 tp!386933)))

(declare-fun b!1337330 () Bool)

(assert (=> b!1337330 (= e!856670 (and (inv!17998 (xs!7214 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))) e!856669))))

(assert (=> b!1336283 (= tp!386677 (and (inv!17991 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))) e!856670))))

(assert (= (and b!1336283 ((_ is Node!4499) (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))) b!1337329))

(assert (= b!1337330 b!1337331))

(assert (= (and b!1336283 ((_ is Leaf!6879) (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))) b!1337330))

(declare-fun m!1495105 () Bool)

(assert (=> b!1337329 m!1495105))

(declare-fun m!1495107 () Bool)

(assert (=> b!1337329 m!1495107))

(declare-fun m!1495109 () Bool)

(assert (=> b!1337330 m!1495109))

(assert (=> b!1336283 m!1493867))

(declare-fun b!1337333 () Bool)

(declare-fun e!856671 () Bool)

(declare-fun tp!386937 () Bool)

(declare-fun tp!386935 () Bool)

(assert (=> b!1337333 (= e!856671 (and tp!386937 tp!386935))))

(declare-fun b!1337335 () Bool)

(declare-fun tp!386936 () Bool)

(declare-fun tp!386934 () Bool)

(assert (=> b!1337335 (= e!856671 (and tp!386936 tp!386934))))

(assert (=> b!1336462 (= tp!386746 e!856671)))

(declare-fun b!1337332 () Bool)

(assert (=> b!1337332 (= e!856671 tp_is_empty!6679)))

(declare-fun b!1337334 () Bool)

(declare-fun tp!386938 () Bool)

(assert (=> b!1337334 (= e!856671 tp!386938)))

(assert (= (and b!1336462 ((_ is ElementMatch!3681) (regOne!7874 (regex!2367 (h!19053 rules!2550))))) b!1337332))

(assert (= (and b!1336462 ((_ is Concat!6139) (regOne!7874 (regex!2367 (h!19053 rules!2550))))) b!1337333))

(assert (= (and b!1336462 ((_ is Star!3681) (regOne!7874 (regex!2367 (h!19053 rules!2550))))) b!1337334))

(assert (= (and b!1336462 ((_ is Union!3681) (regOne!7874 (regex!2367 (h!19053 rules!2550))))) b!1337335))

(declare-fun b!1337337 () Bool)

(declare-fun e!856672 () Bool)

(declare-fun tp!386942 () Bool)

(declare-fun tp!386940 () Bool)

(assert (=> b!1337337 (= e!856672 (and tp!386942 tp!386940))))

(declare-fun b!1337339 () Bool)

(declare-fun tp!386941 () Bool)

(declare-fun tp!386939 () Bool)

(assert (=> b!1337339 (= e!856672 (and tp!386941 tp!386939))))

(assert (=> b!1336462 (= tp!386744 e!856672)))

(declare-fun b!1337336 () Bool)

(assert (=> b!1337336 (= e!856672 tp_is_empty!6679)))

(declare-fun b!1337338 () Bool)

(declare-fun tp!386943 () Bool)

(assert (=> b!1337338 (= e!856672 tp!386943)))

(assert (= (and b!1336462 ((_ is ElementMatch!3681) (regTwo!7874 (regex!2367 (h!19053 rules!2550))))) b!1337336))

(assert (= (and b!1336462 ((_ is Concat!6139) (regTwo!7874 (regex!2367 (h!19053 rules!2550))))) b!1337337))

(assert (= (and b!1336462 ((_ is Star!3681) (regTwo!7874 (regex!2367 (h!19053 rules!2550))))) b!1337338))

(assert (= (and b!1336462 ((_ is Union!3681) (regTwo!7874 (regex!2367 (h!19053 rules!2550))))) b!1337339))

(declare-fun b!1337341 () Bool)

(declare-fun e!856673 () Bool)

(declare-fun tp!386947 () Bool)

(declare-fun tp!386945 () Bool)

(assert (=> b!1337341 (= e!856673 (and tp!386947 tp!386945))))

(declare-fun b!1337343 () Bool)

(declare-fun tp!386946 () Bool)

(declare-fun tp!386944 () Bool)

(assert (=> b!1337343 (= e!856673 (and tp!386946 tp!386944))))

(assert (=> b!1336463 (= tp!386747 e!856673)))

(declare-fun b!1337340 () Bool)

(assert (=> b!1337340 (= e!856673 tp_is_empty!6679)))

(declare-fun b!1337342 () Bool)

(declare-fun tp!386948 () Bool)

(assert (=> b!1337342 (= e!856673 tp!386948)))

(assert (= (and b!1336463 ((_ is ElementMatch!3681) (reg!4010 (regex!2367 (h!19053 rules!2550))))) b!1337340))

(assert (= (and b!1336463 ((_ is Concat!6139) (reg!4010 (regex!2367 (h!19053 rules!2550))))) b!1337341))

(assert (= (and b!1336463 ((_ is Star!3681) (reg!4010 (regex!2367 (h!19053 rules!2550))))) b!1337342))

(assert (= (and b!1336463 ((_ is Union!3681) (reg!4010 (regex!2367 (h!19053 rules!2550))))) b!1337343))

(declare-fun b!1337345 () Bool)

(declare-fun e!856674 () Bool)

(declare-fun tp!386952 () Bool)

(declare-fun tp!386950 () Bool)

(assert (=> b!1337345 (= e!856674 (and tp!386952 tp!386950))))

(declare-fun b!1337347 () Bool)

(declare-fun tp!386951 () Bool)

(declare-fun tp!386949 () Bool)

(assert (=> b!1337347 (= e!856674 (and tp!386951 tp!386949))))

(assert (=> b!1336451 (= tp!386732 e!856674)))

(declare-fun b!1337344 () Bool)

(assert (=> b!1337344 (= e!856674 tp_is_empty!6679)))

(declare-fun b!1337346 () Bool)

(declare-fun tp!386953 () Bool)

(assert (=> b!1337346 (= e!856674 tp!386953)))

(assert (= (and b!1336451 ((_ is ElementMatch!3681) (regOne!7875 (regex!2367 (rule!4112 t2!34))))) b!1337344))

(assert (= (and b!1336451 ((_ is Concat!6139) (regOne!7875 (regex!2367 (rule!4112 t2!34))))) b!1337345))

(assert (= (and b!1336451 ((_ is Star!3681) (regOne!7875 (regex!2367 (rule!4112 t2!34))))) b!1337346))

(assert (= (and b!1336451 ((_ is Union!3681) (regOne!7875 (regex!2367 (rule!4112 t2!34))))) b!1337347))

(declare-fun b!1337349 () Bool)

(declare-fun e!856675 () Bool)

(declare-fun tp!386957 () Bool)

(declare-fun tp!386955 () Bool)

(assert (=> b!1337349 (= e!856675 (and tp!386957 tp!386955))))

(declare-fun b!1337351 () Bool)

(declare-fun tp!386956 () Bool)

(declare-fun tp!386954 () Bool)

(assert (=> b!1337351 (= e!856675 (and tp!386956 tp!386954))))

(assert (=> b!1336451 (= tp!386730 e!856675)))

(declare-fun b!1337348 () Bool)

(assert (=> b!1337348 (= e!856675 tp_is_empty!6679)))

(declare-fun b!1337350 () Bool)

(declare-fun tp!386958 () Bool)

(assert (=> b!1337350 (= e!856675 tp!386958)))

(assert (= (and b!1336451 ((_ is ElementMatch!3681) (regTwo!7875 (regex!2367 (rule!4112 t2!34))))) b!1337348))

(assert (= (and b!1336451 ((_ is Concat!6139) (regTwo!7875 (regex!2367 (rule!4112 t2!34))))) b!1337349))

(assert (= (and b!1336451 ((_ is Star!3681) (regTwo!7875 (regex!2367 (rule!4112 t2!34))))) b!1337350))

(assert (= (and b!1336451 ((_ is Union!3681) (regTwo!7875 (regex!2367 (rule!4112 t2!34))))) b!1337351))

(declare-fun b!1337354 () Bool)

(declare-fun b_free!32563 () Bool)

(declare-fun b_next!33267 () Bool)

(assert (=> b!1337354 (= b_free!32563 (not b_next!33267))))

(declare-fun tp!386959 () Bool)

(declare-fun b_and!89507 () Bool)

(assert (=> b!1337354 (= tp!386959 b_and!89507)))

(declare-fun b_free!32565 () Bool)

(declare-fun b_next!33269 () Bool)

(assert (=> b!1337354 (= b_free!32565 (not b_next!33269))))

(declare-fun tb!70509 () Bool)

(declare-fun t!119340 () Bool)

(assert (=> (and b!1337354 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 (t!119283 rules!2550))))) (toChars!3461 (transformation!2367 (rule!4112 t2!34)))) t!119340) tb!70509))

(declare-fun result!85674 () Bool)

(assert (= result!85674 result!85632))

(assert (=> d!376404 t!119340))

(declare-fun t!119342 () Bool)

(declare-fun tb!70511 () Bool)

(assert (=> (and b!1337354 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 (t!119283 rules!2550))))) (toChars!3461 (transformation!2367 (rule!4112 t1!34)))) t!119342) tb!70511))

(declare-fun result!85676 () Bool)

(assert (= result!85676 result!85650))

(assert (=> d!376462 t!119342))

(assert (=> b!1336429 t!119342))

(assert (=> b!1336431 t!119340))

(declare-fun b_and!89509 () Bool)

(declare-fun tp!386961 () Bool)

(assert (=> b!1337354 (= tp!386961 (and (=> t!119340 result!85674) (=> t!119342 result!85676) b_and!89509))))

(declare-fun e!856678 () Bool)

(assert (=> b!1337354 (= e!856678 (and tp!386959 tp!386961))))

(declare-fun tp!386960 () Bool)

(declare-fun e!856677 () Bool)

(declare-fun b!1337353 () Bool)

(assert (=> b!1337353 (= e!856677 (and tp!386960 (inv!17984 (tag!2629 (h!19053 (t!119283 (t!119283 rules!2550))))) (inv!17987 (transformation!2367 (h!19053 (t!119283 (t!119283 rules!2550))))) e!856678))))

(declare-fun b!1337352 () Bool)

(declare-fun e!856679 () Bool)

(declare-fun tp!386962 () Bool)

(assert (=> b!1337352 (= e!856679 (and e!856677 tp!386962))))

(assert (=> b!1336474 (= tp!386760 e!856679)))

(assert (= b!1337353 b!1337354))

(assert (= b!1337352 b!1337353))

(assert (= (and b!1336474 ((_ is Cons!13652) (t!119283 (t!119283 rules!2550)))) b!1337352))

(declare-fun m!1495111 () Bool)

(assert (=> b!1337353 m!1495111))

(declare-fun m!1495113 () Bool)

(assert (=> b!1337353 m!1495113))

(declare-fun b_lambda!39483 () Bool)

(assert (= b_lambda!39481 (or b!1336176 b_lambda!39483)))

(declare-fun bs!332065 () Bool)

(declare-fun d!376880 () Bool)

(assert (= bs!332065 (and d!376880 b!1336176)))

(declare-fun res!602905 () Bool)

(declare-fun e!856680 () Bool)

(assert (=> bs!332065 (=> (not res!602905) (not e!856680))))

(assert (=> bs!332065 (= res!602905 (matchR!1674 lt!442339 res!602894))))

(assert (=> bs!332065 (= (dynLambda!6010 lambda!56007 res!602894) e!856680)))

(declare-fun b!1337355 () Bool)

(assert (=> b!1337355 (= e!856680 (isPrefix!1095 lt!442344 res!602894))))

(assert (= (and bs!332065 res!602905) b!1337355))

(declare-fun m!1495115 () Bool)

(assert (=> bs!332065 m!1495115))

(declare-fun m!1495117 () Bool)

(assert (=> b!1337355 m!1495117))

(assert (=> d!376840 d!376880))

(declare-fun b_lambda!39485 () Bool)

(assert (= b_lambda!39473 (or d!376466 b_lambda!39485)))

(declare-fun bs!332066 () Bool)

(declare-fun d!376882 () Bool)

(assert (= bs!332066 (and d!376882 d!376466)))

(assert (=> bs!332066 (= (dynLambda!6012 lambda!56016 (h!19053 rules!2550)) (regex!2367 (h!19053 rules!2550)))))

(assert (=> b!1336617 d!376882))

(check-sat (not d!376786) (not b!1336975) (not b!1336619) (not b!1336625) (not b!1336631) (not d!376552) (not bm!90190) (not b!1337313) (not b!1337314) (not b!1336633) (not bm!90173) (not d!376570) (not d!376534) (not b!1337150) (not b!1337334) (not b!1336963) (not b!1336969) (not d!376844) (not d!376870) (not b!1337227) (not b!1337152) (not b!1336968) (not b!1336795) (not d!376774) (not b!1337175) (not b!1337286) (not b!1336834) (not d!376768) (not bs!332065) (not b!1337237) (not b!1337289) (not d!376846) (not b!1337297) (not b!1336966) (not d!376770) (not b!1337238) b_and!89495 (not d!376842) (not b!1336767) (not b!1337330) (not b!1337335) (not b!1337153) (not b!1337299) (not b!1337326) (not b!1336874) (not b!1337315) (not d!376798) (not b_next!33243) (not d!376694) (not b!1337293) (not b!1337147) (not b!1336609) (not b!1337266) (not b_next!33267) (not b!1337277) (not b!1337298) (not d!376856) b_and!89501 (not d!376726) (not b!1336660) (not b!1336617) (not b!1337239) (not d!376788) (not b!1336618) (not b!1336961) (not b!1337285) (not d!376704) (not b!1336797) (not b!1337324) (not b!1337352) (not d!376804) b_and!89443 (not b!1336967) (not b!1337301) (not d!376876) (not b_lambda!39485) (not b!1337303) (not b!1337341) (not b!1337163) (not b_next!33247) (not b!1337230) (not d!376738) (not b!1336832) (not b!1336610) (not b!1337158) (not d!376814) (not b!1337351) (not b!1336837) (not d!376586) (not b!1336762) (not b!1336675) (not b_next!33251) (not b!1337148) (not b!1337135) (not d!376794) (not b!1337329) (not b!1337282) (not d!376830) (not bm!90214) (not bm!90188) (not b!1337142) (not b!1337275) (not b!1336283) (not b!1337281) (not b!1337235) (not b!1336602) b_and!89509 tp_is_empty!6679 (not d!376734) (not b!1337186) (not d!376792) (not b!1337318) (not b!1337156) (not d!376868) (not b!1336950) (not b!1336875) (not b!1336768) (not b!1336604) (not b!1336635) b_and!89497 (not b!1337270) (not b!1337322) (not d!376810) (not b_next!33249) (not b!1337203) (not b!1336637) (not b!1337194) (not b!1337136) (not d!376566) (not d!376530) (not b!1337216) (not b!1336970) (not b!1336407) (not d!376828) (not b!1337161) (not b_next!33245) (not d!376858) (not d!376772) (not d!376802) (not d!376778) (not d!376852) (not b_lambda!39469) (not b!1336607) (not b!1337331) (not d!376724) (not bm!90179) (not d!376588) (not b_next!33269) (not b!1336876) (not d!376796) (not b!1336965) (not b!1337347) (not b!1336766) (not b!1337337) (not b!1336606) (not d!376574) (not b!1337273) (not b!1337223) (not b!1337349) b_and!89507 (not d!376572) (not b!1337187) (not b!1336769) (not d!376800) (not d!376740) (not d!376590) (not b!1337295) (not b_lambda!39465) (not d!376614) (not b!1337333) (not b_lambda!39463) (not b!1337205) (not b_next!33253) b_and!89493 (not d!376832) (not b!1336603) (not d!376584) (not bm!90226) (not b!1336831) (not b!1337291) b_and!89439 (not d!376848) (not b!1337338) (not bm!90171) (not d!376850) (not d!376816) (not b!1337294) (not b!1336772) (not d!376634) (not d!376776) (not b!1337283) (not b!1337160) (not b_next!33261) (not b_lambda!39467) (not b!1337278) (not b!1337323) (not d!376784) (not b!1336673) (not d!376536) (not b!1337159) (not b!1337319) b_and!89435 (not b_lambda!39483) (not b!1337304) (not b!1337162) (not b!1337217) (not d!376812) (not d!376560) (not d!376710) (not b!1337192) (not bm!90225) (not b!1337138) (not b!1337355) (not b!1337188) (not b!1336672) (not b!1337224) (not b!1337346) (not d!376708) (not b!1336972) (not b!1337316) (not b!1337226) b_and!89499 (not d!376550) (not b!1336796) (not b_lambda!39461) (not b!1336951) (not d!376818) (not b!1337343) (not b!1337345) (not b!1337302) (not b!1337234) (not b_next!33259) (not b!1337328) (not b!1337339) (not b!1336581) (not d!376528) (not b!1337279) (not b!1337320) (not b!1337327) (not b!1337353) (not b!1337350) (not b!1337274) (not b!1337190) (not b!1337137) (not d!376568) (not b!1337232) (not b!1337290) (not b!1336877) (not d!376604) (not b!1337287) (not b!1337342) (not b!1337220))
(check-sat b_and!89495 b_and!89501 b_and!89443 (not b_next!33247) (not b_next!33251) b_and!89509 b_and!89497 (not b_next!33249) (not b_next!33245) (not b_next!33269) b_and!89507 b_and!89439 (not b_next!33261) b_and!89435 b_and!89499 (not b_next!33259) (not b_next!33267) (not b_next!33243) (not b_next!33253) b_and!89493)
(get-model)

(declare-fun d!376918 () Bool)

(declare-fun lt!442678 () Int)

(assert (=> d!376918 (>= lt!442678 0)))

(declare-fun e!856716 () Int)

(assert (=> d!376918 (= lt!442678 e!856716)))

(declare-fun c!219046 () Bool)

(assert (=> d!376918 (= c!219046 ((_ is Nil!13651) lt!442507))))

(assert (=> d!376918 (= (size!11118 lt!442507) lt!442678)))

(declare-fun b!1337412 () Bool)

(assert (=> b!1337412 (= e!856716 0)))

(declare-fun b!1337413 () Bool)

(assert (=> b!1337413 (= e!856716 (+ 1 (size!11118 (t!119282 lt!442507))))))

(assert (= (and d!376918 c!219046) b!1337412))

(assert (= (and d!376918 (not c!219046)) b!1337413))

(declare-fun m!1495205 () Bool)

(assert (=> b!1337413 m!1495205))

(assert (=> b!1336673 d!376918))

(declare-fun d!376920 () Bool)

(declare-fun lt!442679 () Int)

(assert (=> d!376920 (>= lt!442679 0)))

(declare-fun e!856717 () Int)

(assert (=> d!376920 (= lt!442679 e!856717)))

(declare-fun c!219047 () Bool)

(assert (=> d!376920 (= c!219047 ((_ is Nil!13651) (t!119282 (list!5187 lt!442342))))))

(assert (=> d!376920 (= (size!11118 (t!119282 (list!5187 lt!442342))) lt!442679)))

(declare-fun b!1337414 () Bool)

(assert (=> b!1337414 (= e!856717 0)))

(declare-fun b!1337415 () Bool)

(assert (=> b!1337415 (= e!856717 (+ 1 (size!11118 (t!119282 (t!119282 (list!5187 lt!442342))))))))

(assert (= (and d!376920 c!219047) b!1337414))

(assert (= (and d!376920 (not c!219047)) b!1337415))

(declare-fun m!1495207 () Bool)

(assert (=> b!1337415 m!1495207))

(assert (=> b!1336673 d!376920))

(assert (=> b!1336673 d!376826))

(declare-fun d!376922 () Bool)

(assert (=> d!376922 (= (list!5187 lt!442599) (list!5191 (c!218765 lt!442599)))))

(declare-fun bs!332072 () Bool)

(assert (= bs!332072 d!376922))

(declare-fun m!1495209 () Bool)

(assert (=> bs!332072 m!1495209))

(assert (=> d!376694 d!376922))

(declare-fun d!376924 () Bool)

(declare-fun e!856722 () Bool)

(assert (=> d!376924 e!856722))

(declare-fun res!602928 () Bool)

(assert (=> d!376924 (=> (not res!602928) (not e!856722))))

(declare-fun lt!442684 () BalanceConc!8938)

(assert (=> d!376924 (= res!602928 (= (list!5187 lt!442684) (Cons!13651 (apply!3195 (charsOf!1339 t2!34) 0) Nil!13651)))))

(declare-fun choose!8197 (C!7652) BalanceConc!8938)

(assert (=> d!376924 (= lt!442684 (choose!8197 (apply!3195 (charsOf!1339 t2!34) 0)))))

(assert (=> d!376924 (= (singleton!411 (apply!3195 (charsOf!1339 t2!34) 0)) lt!442684)))

(declare-fun b!1337422 () Bool)

(assert (=> b!1337422 (= e!856722 (isBalanced!1305 (c!218765 lt!442684)))))

(assert (= (and d!376924 res!602928) b!1337422))

(declare-fun m!1495211 () Bool)

(assert (=> d!376924 m!1495211))

(assert (=> d!376924 m!1494145))

(declare-fun m!1495213 () Bool)

(assert (=> d!376924 m!1495213))

(declare-fun m!1495215 () Bool)

(assert (=> b!1337422 m!1495215))

(assert (=> d!376694 d!376924))

(declare-fun b!1337428 () Bool)

(declare-fun e!856725 () Bool)

(declare-fun lt!442685 () List!13717)

(assert (=> b!1337428 (= e!856725 (or (not (= (list!5191 (right!12046 (c!218765 lt!442342))) Nil!13651)) (= lt!442685 (list!5191 (left!11716 (c!218765 lt!442342))))))))

(declare-fun d!376926 () Bool)

(assert (=> d!376926 e!856725))

(declare-fun res!602930 () Bool)

(assert (=> d!376926 (=> (not res!602930) (not e!856725))))

(assert (=> d!376926 (= res!602930 (= (content!1937 lt!442685) ((_ map or) (content!1937 (list!5191 (left!11716 (c!218765 lt!442342)))) (content!1937 (list!5191 (right!12046 (c!218765 lt!442342)))))))))

(declare-fun e!856726 () List!13717)

(assert (=> d!376926 (= lt!442685 e!856726)))

(declare-fun c!219050 () Bool)

(assert (=> d!376926 (= c!219050 ((_ is Nil!13651) (list!5191 (left!11716 (c!218765 lt!442342)))))))

(assert (=> d!376926 (= (++!3488 (list!5191 (left!11716 (c!218765 lt!442342))) (list!5191 (right!12046 (c!218765 lt!442342)))) lt!442685)))

(declare-fun b!1337427 () Bool)

(declare-fun res!602929 () Bool)

(assert (=> b!1337427 (=> (not res!602929) (not e!856725))))

(assert (=> b!1337427 (= res!602929 (= (size!11118 lt!442685) (+ (size!11118 (list!5191 (left!11716 (c!218765 lt!442342)))) (size!11118 (list!5191 (right!12046 (c!218765 lt!442342)))))))))

(declare-fun b!1337425 () Bool)

(assert (=> b!1337425 (= e!856726 (list!5191 (right!12046 (c!218765 lt!442342))))))

(declare-fun b!1337426 () Bool)

(assert (=> b!1337426 (= e!856726 (Cons!13651 (h!19052 (list!5191 (left!11716 (c!218765 lt!442342)))) (++!3488 (t!119282 (list!5191 (left!11716 (c!218765 lt!442342)))) (list!5191 (right!12046 (c!218765 lt!442342))))))))

(assert (= (and d!376926 c!219050) b!1337425))

(assert (= (and d!376926 (not c!219050)) b!1337426))

(assert (= (and d!376926 res!602930) b!1337427))

(assert (= (and b!1337427 res!602929) b!1337428))

(declare-fun m!1495217 () Bool)

(assert (=> d!376926 m!1495217))

(assert (=> d!376926 m!1494803))

(declare-fun m!1495219 () Bool)

(assert (=> d!376926 m!1495219))

(assert (=> d!376926 m!1494805))

(declare-fun m!1495221 () Bool)

(assert (=> d!376926 m!1495221))

(declare-fun m!1495223 () Bool)

(assert (=> b!1337427 m!1495223))

(assert (=> b!1337427 m!1494803))

(declare-fun m!1495225 () Bool)

(assert (=> b!1337427 m!1495225))

(assert (=> b!1337427 m!1494805))

(declare-fun m!1495227 () Bool)

(assert (=> b!1337427 m!1495227))

(assert (=> b!1337426 m!1494805))

(declare-fun m!1495229 () Bool)

(assert (=> b!1337426 m!1495229))

(assert (=> b!1337217 d!376926))

(declare-fun b!1337434 () Bool)

(declare-fun e!856729 () List!13717)

(declare-fun e!856730 () List!13717)

(assert (=> b!1337434 (= e!856729 e!856730)))

(declare-fun c!219054 () Bool)

(assert (=> b!1337434 (= c!219054 ((_ is Leaf!6879) (left!11716 (c!218765 lt!442342))))))

(declare-fun b!1337435 () Bool)

(assert (=> b!1337435 (= e!856730 (list!5195 (xs!7214 (left!11716 (c!218765 lt!442342)))))))

(declare-fun d!376928 () Bool)

(declare-fun c!219053 () Bool)

(assert (=> d!376928 (= c!219053 ((_ is Empty!4499) (left!11716 (c!218765 lt!442342))))))

(assert (=> d!376928 (= (list!5191 (left!11716 (c!218765 lt!442342))) e!856729)))

(declare-fun b!1337433 () Bool)

(assert (=> b!1337433 (= e!856729 Nil!13651)))

(declare-fun b!1337436 () Bool)

(assert (=> b!1337436 (= e!856730 (++!3488 (list!5191 (left!11716 (left!11716 (c!218765 lt!442342)))) (list!5191 (right!12046 (left!11716 (c!218765 lt!442342))))))))

(assert (= (and d!376928 c!219053) b!1337433))

(assert (= (and d!376928 (not c!219053)) b!1337434))

(assert (= (and b!1337434 c!219054) b!1337435))

(assert (= (and b!1337434 (not c!219054)) b!1337436))

(declare-fun m!1495231 () Bool)

(assert (=> b!1337435 m!1495231))

(declare-fun m!1495233 () Bool)

(assert (=> b!1337436 m!1495233))

(declare-fun m!1495235 () Bool)

(assert (=> b!1337436 m!1495235))

(assert (=> b!1337436 m!1495233))

(assert (=> b!1337436 m!1495235))

(declare-fun m!1495237 () Bool)

(assert (=> b!1337436 m!1495237))

(assert (=> b!1337217 d!376928))

(declare-fun b!1337450 () Bool)

(declare-fun e!856737 () List!13717)

(declare-fun e!856738 () List!13717)

(assert (=> b!1337450 (= e!856737 e!856738)))

(declare-fun c!219062 () Bool)

(assert (=> b!1337450 (= c!219062 ((_ is Leaf!6879) (right!12046 (c!218765 lt!442342))))))

(declare-fun b!1337451 () Bool)

(assert (=> b!1337451 (= e!856738 (list!5195 (xs!7214 (right!12046 (c!218765 lt!442342)))))))

(declare-fun d!376930 () Bool)

(declare-fun c!219061 () Bool)

(assert (=> d!376930 (= c!219061 ((_ is Empty!4499) (right!12046 (c!218765 lt!442342))))))

(assert (=> d!376930 (= (list!5191 (right!12046 (c!218765 lt!442342))) e!856737)))

(declare-fun b!1337449 () Bool)

(assert (=> b!1337449 (= e!856737 Nil!13651)))

(declare-fun b!1337452 () Bool)

(assert (=> b!1337452 (= e!856738 (++!3488 (list!5191 (left!11716 (right!12046 (c!218765 lt!442342)))) (list!5191 (right!12046 (right!12046 (c!218765 lt!442342))))))))

(assert (= (and d!376930 c!219061) b!1337449))

(assert (= (and d!376930 (not c!219061)) b!1337450))

(assert (= (and b!1337450 c!219062) b!1337451))

(assert (= (and b!1337450 (not c!219062)) b!1337452))

(declare-fun m!1495239 () Bool)

(assert (=> b!1337451 m!1495239))

(declare-fun m!1495241 () Bool)

(assert (=> b!1337452 m!1495241))

(declare-fun m!1495243 () Bool)

(assert (=> b!1337452 m!1495243))

(assert (=> b!1337452 m!1495241))

(assert (=> b!1337452 m!1495243))

(declare-fun m!1495245 () Bool)

(assert (=> b!1337452 m!1495245))

(assert (=> b!1337217 d!376930))

(declare-fun d!376932 () Bool)

(declare-fun lt!442690 () Int)

(assert (=> d!376932 (>= lt!442690 0)))

(declare-fun e!856741 () Int)

(assert (=> d!376932 (= lt!442690 e!856741)))

(declare-fun c!219065 () Bool)

(assert (=> d!376932 (= c!219065 ((_ is Nil!13651) (t!119282 lt!442343)))))

(assert (=> d!376932 (= (size!11118 (t!119282 lt!442343)) lt!442690)))

(declare-fun b!1337457 () Bool)

(assert (=> b!1337457 (= e!856741 0)))

(declare-fun b!1337458 () Bool)

(assert (=> b!1337458 (= e!856741 (+ 1 (size!11118 (t!119282 (t!119282 lt!442343)))))))

(assert (= (and d!376932 c!219065) b!1337457))

(assert (= (and d!376932 (not c!219065)) b!1337458))

(declare-fun m!1495247 () Bool)

(assert (=> b!1337458 m!1495247))

(assert (=> b!1337156 d!376932))

(declare-fun d!376934 () Bool)

(assert (=> d!376934 (= (list!5190 (_1!7523 lt!442639)) (list!5194 (c!218804 (_1!7523 lt!442639))))))

(declare-fun bs!332073 () Bool)

(assert (= bs!332073 d!376934))

(declare-fun m!1495249 () Bool)

(assert (=> bs!332073 m!1495249))

(assert (=> b!1337160 d!376934))

(declare-fun d!376936 () Bool)

(declare-fun e!856756 () Bool)

(assert (=> d!376936 e!856756))

(declare-fun c!219075 () Bool)

(declare-fun lt!442699 () tuple2!13278)

(assert (=> d!376936 (= c!219075 (> (size!11127 (_1!7525 lt!442699)) 0))))

(declare-fun e!856754 () tuple2!13278)

(assert (=> d!376936 (= lt!442699 e!856754)))

(declare-fun c!219074 () Bool)

(declare-datatypes ((tuple2!13282 0))(
  ( (tuple2!13283 (_1!7527 Token!4396) (_2!7527 List!13717)) )
))
(declare-datatypes ((Option!2628 0))(
  ( (None!2627) (Some!2627 (v!21278 tuple2!13282)) )
))
(declare-fun lt!442701 () Option!2628)

(assert (=> d!376936 (= c!219074 ((_ is Some!2627) lt!442701))))

(declare-fun maxPrefix!1062 (LexerInterface!2062 List!13718 List!13717) Option!2628)

(assert (=> d!376936 (= lt!442701 (maxPrefix!1062 thiss!19762 rules!2550 (list!5187 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))

(assert (=> d!376936 (= (lexList!592 thiss!19762 rules!2550 (list!5187 (print!832 thiss!19762 (singletonSeq!969 t2!34)))) lt!442699)))

(declare-fun b!1337483 () Bool)

(assert (=> b!1337483 (= e!856754 (tuple2!13279 Nil!13656 (list!5187 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))

(declare-fun b!1337484 () Bool)

(declare-fun e!856755 () Bool)

(assert (=> b!1337484 (= e!856756 e!856755)))

(declare-fun res!602939 () Bool)

(assert (=> b!1337484 (= res!602939 (< (size!11118 (_2!7525 lt!442699)) (size!11118 (list!5187 (print!832 thiss!19762 (singletonSeq!969 t2!34))))))))

(assert (=> b!1337484 (=> (not res!602939) (not e!856755))))

(declare-fun b!1337485 () Bool)

(declare-fun isEmpty!8151 (List!13722) Bool)

(assert (=> b!1337485 (= e!856755 (not (isEmpty!8151 (_1!7525 lt!442699))))))

(declare-fun b!1337486 () Bool)

(assert (=> b!1337486 (= e!856756 (= (_2!7525 lt!442699) (list!5187 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))

(declare-fun b!1337487 () Bool)

(declare-fun lt!442700 () tuple2!13278)

(assert (=> b!1337487 (= e!856754 (tuple2!13279 (Cons!13656 (_1!7527 (v!21278 lt!442701)) (_1!7525 lt!442700)) (_2!7525 lt!442700)))))

(assert (=> b!1337487 (= lt!442700 (lexList!592 thiss!19762 rules!2550 (_2!7527 (v!21278 lt!442701))))))

(assert (= (and d!376936 c!219074) b!1337487))

(assert (= (and d!376936 (not c!219074)) b!1337483))

(assert (= (and d!376936 c!219075) b!1337484))

(assert (= (and d!376936 (not c!219075)) b!1337486))

(assert (= (and b!1337484 res!602939) b!1337485))

(declare-fun m!1495251 () Bool)

(assert (=> d!376936 m!1495251))

(assert (=> d!376936 m!1494975))

(declare-fun m!1495253 () Bool)

(assert (=> d!376936 m!1495253))

(declare-fun m!1495255 () Bool)

(assert (=> b!1337484 m!1495255))

(assert (=> b!1337484 m!1494975))

(declare-fun m!1495257 () Bool)

(assert (=> b!1337484 m!1495257))

(declare-fun m!1495259 () Bool)

(assert (=> b!1337485 m!1495259))

(declare-fun m!1495261 () Bool)

(assert (=> b!1337487 m!1495261))

(assert (=> b!1337160 d!376936))

(declare-fun d!376938 () Bool)

(assert (=> d!376938 (= (list!5187 (print!832 thiss!19762 (singletonSeq!969 t2!34))) (list!5191 (c!218765 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))

(declare-fun bs!332074 () Bool)

(assert (= bs!332074 d!376938))

(declare-fun m!1495263 () Bool)

(assert (=> bs!332074 m!1495263))

(assert (=> b!1337160 d!376938))

(declare-fun d!376940 () Bool)

(assert (=> d!376940 (= (list!5190 lt!442638) (list!5194 (c!218804 lt!442638)))))

(declare-fun bs!332075 () Bool)

(assert (= bs!332075 d!376940))

(declare-fun m!1495265 () Bool)

(assert (=> bs!332075 m!1495265))

(assert (=> d!376800 d!376940))

(declare-fun d!376942 () Bool)

(declare-fun e!856759 () Bool)

(assert (=> d!376942 e!856759))

(declare-fun res!602944 () Bool)

(assert (=> d!376942 (=> (not res!602944) (not e!856759))))

(declare-fun lt!442704 () BalanceConc!8942)

(assert (=> d!376942 (= res!602944 (= (list!5190 lt!442704) (Cons!13656 t2!34 Nil!13656)))))

(declare-fun choose!8198 (Token!4396) BalanceConc!8942)

(assert (=> d!376942 (= lt!442704 (choose!8198 t2!34))))

(assert (=> d!376942 (= (singleton!412 t2!34) lt!442704)))

(declare-fun b!1337492 () Bool)

(assert (=> b!1337492 (= e!856759 (isBalanced!1306 (c!218804 lt!442704)))))

(assert (= (and d!376942 res!602944) b!1337492))

(declare-fun m!1495267 () Bool)

(assert (=> d!376942 m!1495267))

(declare-fun m!1495269 () Bool)

(assert (=> d!376942 m!1495269))

(declare-fun m!1495271 () Bool)

(assert (=> b!1337492 m!1495271))

(assert (=> d!376800 d!376942))

(declare-fun b!1337502 () Bool)

(declare-fun e!856764 () List!13722)

(declare-fun e!856765 () List!13722)

(assert (=> b!1337502 (= e!856764 e!856765)))

(declare-fun c!219081 () Bool)

(assert (=> b!1337502 (= c!219081 ((_ is Leaf!6881) (c!218804 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))))

(declare-fun b!1337504 () Bool)

(declare-fun ++!3494 (List!13722 List!13722) List!13722)

(assert (=> b!1337504 (= e!856765 (++!3494 (list!5194 (left!11718 (c!218804 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34))))))) (list!5194 (right!12048 (c!218804 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))))))

(declare-fun d!376944 () Bool)

(declare-fun c!219080 () Bool)

(assert (=> d!376944 (= c!219080 ((_ is Empty!4501) (c!218804 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))))

(assert (=> d!376944 (= (list!5194 (c!218804 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))) e!856764)))

(declare-fun b!1337503 () Bool)

(declare-fun list!5197 (IArray!9007) List!13722)

(assert (=> b!1337503 (= e!856765 (list!5197 (xs!7216 (c!218804 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34))))))))))

(declare-fun b!1337501 () Bool)

(assert (=> b!1337501 (= e!856764 Nil!13656)))

(assert (= (and d!376944 c!219080) b!1337501))

(assert (= (and d!376944 (not c!219080)) b!1337502))

(assert (= (and b!1337502 c!219081) b!1337503))

(assert (= (and b!1337502 (not c!219081)) b!1337504))

(declare-fun m!1495273 () Bool)

(assert (=> b!1337504 m!1495273))

(declare-fun m!1495275 () Bool)

(assert (=> b!1337504 m!1495275))

(assert (=> b!1337504 m!1495273))

(assert (=> b!1337504 m!1495275))

(declare-fun m!1495277 () Bool)

(assert (=> b!1337504 m!1495277))

(declare-fun m!1495279 () Bool)

(assert (=> b!1337503 m!1495279))

(assert (=> d!376794 d!376944))

(declare-fun d!376946 () Bool)

(declare-fun lt!442705 () Bool)

(assert (=> d!376946 (= lt!442705 (select (content!1937 (list!5187 lt!442341)) lt!442524))))

(declare-fun e!856766 () Bool)

(assert (=> d!376946 (= lt!442705 e!856766)))

(declare-fun res!602945 () Bool)

(assert (=> d!376946 (=> (not res!602945) (not e!856766))))

(assert (=> d!376946 (= res!602945 ((_ is Cons!13651) (list!5187 lt!442341)))))

(assert (=> d!376946 (= (contains!2489 (list!5187 lt!442341) lt!442524) lt!442705)))

(declare-fun b!1337505 () Bool)

(declare-fun e!856767 () Bool)

(assert (=> b!1337505 (= e!856766 e!856767)))

(declare-fun res!602946 () Bool)

(assert (=> b!1337505 (=> res!602946 e!856767)))

(assert (=> b!1337505 (= res!602946 (= (h!19052 (list!5187 lt!442341)) lt!442524))))

(declare-fun b!1337506 () Bool)

(assert (=> b!1337506 (= e!856767 (contains!2489 (t!119282 (list!5187 lt!442341)) lt!442524))))

(assert (= (and d!376946 res!602945) b!1337505))

(assert (= (and b!1337505 (not res!602946)) b!1337506))

(assert (=> d!376946 m!1493861))

(declare-fun m!1495281 () Bool)

(assert (=> d!376946 m!1495281))

(declare-fun m!1495283 () Bool)

(assert (=> d!376946 m!1495283))

(declare-fun m!1495285 () Bool)

(assert (=> b!1337506 m!1495285))

(assert (=> d!376586 d!376946))

(declare-fun e!856768 () Bool)

(declare-fun b!1337510 () Bool)

(declare-fun lt!442706 () List!13717)

(assert (=> b!1337510 (= e!856768 (or (not (= (getSuffix!529 lt!442343 lt!442344) Nil!13651)) (= lt!442706 (t!119282 (t!119282 lt!442344)))))))

(declare-fun d!376948 () Bool)

(assert (=> d!376948 e!856768))

(declare-fun res!602948 () Bool)

(assert (=> d!376948 (=> (not res!602948) (not e!856768))))

(assert (=> d!376948 (= res!602948 (= (content!1937 lt!442706) ((_ map or) (content!1937 (t!119282 (t!119282 lt!442344))) (content!1937 (getSuffix!529 lt!442343 lt!442344)))))))

(declare-fun e!856769 () List!13717)

(assert (=> d!376948 (= lt!442706 e!856769)))

(declare-fun c!219082 () Bool)

(assert (=> d!376948 (= c!219082 ((_ is Nil!13651) (t!119282 (t!119282 lt!442344))))))

(assert (=> d!376948 (= (++!3488 (t!119282 (t!119282 lt!442344)) (getSuffix!529 lt!442343 lt!442344)) lt!442706)))

(declare-fun b!1337509 () Bool)

(declare-fun res!602947 () Bool)

(assert (=> b!1337509 (=> (not res!602947) (not e!856768))))

(assert (=> b!1337509 (= res!602947 (= (size!11118 lt!442706) (+ (size!11118 (t!119282 (t!119282 lt!442344))) (size!11118 (getSuffix!529 lt!442343 lt!442344)))))))

(declare-fun b!1337507 () Bool)

(assert (=> b!1337507 (= e!856769 (getSuffix!529 lt!442343 lt!442344))))

(declare-fun b!1337508 () Bool)

(assert (=> b!1337508 (= e!856769 (Cons!13651 (h!19052 (t!119282 (t!119282 lt!442344))) (++!3488 (t!119282 (t!119282 (t!119282 lt!442344))) (getSuffix!529 lt!442343 lt!442344))))))

(assert (= (and d!376948 c!219082) b!1337507))

(assert (= (and d!376948 (not c!219082)) b!1337508))

(assert (= (and d!376948 res!602948) b!1337509))

(assert (= (and b!1337509 res!602947) b!1337510))

(declare-fun m!1495287 () Bool)

(assert (=> d!376948 m!1495287))

(declare-fun m!1495289 () Bool)

(assert (=> d!376948 m!1495289))

(assert (=> d!376948 m!1493725))

(assert (=> d!376948 m!1493885))

(declare-fun m!1495291 () Bool)

(assert (=> b!1337509 m!1495291))

(declare-fun m!1495293 () Bool)

(assert (=> b!1337509 m!1495293))

(assert (=> b!1337509 m!1493725))

(assert (=> b!1337509 m!1493891))

(assert (=> b!1337508 m!1493725))

(declare-fun m!1495295 () Bool)

(assert (=> b!1337508 m!1495295))

(assert (=> b!1337226 d!376948))

(declare-fun d!376950 () Bool)

(declare-fun lt!442711 () C!7652)

(assert (=> d!376950 (contains!2489 (list!5191 (c!218765 lt!442342)) lt!442711)))

(declare-fun e!856781 () C!7652)

(assert (=> d!376950 (= lt!442711 e!856781)))

(declare-fun c!219091 () Bool)

(assert (=> d!376950 (= c!219091 (= 0 0))))

(declare-fun e!856780 () Bool)

(assert (=> d!376950 e!856780))

(declare-fun res!602954 () Bool)

(assert (=> d!376950 (=> (not res!602954) (not e!856780))))

(assert (=> d!376950 (= res!602954 (<= 0 0))))

(assert (=> d!376950 (= (apply!3200 (list!5191 (c!218765 lt!442342)) 0) lt!442711)))

(declare-fun b!1337532 () Bool)

(assert (=> b!1337532 (= e!856780 (< 0 (size!11118 (list!5191 (c!218765 lt!442342)))))))

(declare-fun b!1337533 () Bool)

(assert (=> b!1337533 (= e!856781 (head!2369 (list!5191 (c!218765 lt!442342))))))

(declare-fun b!1337534 () Bool)

(assert (=> b!1337534 (= e!856781 (apply!3200 (tail!1918 (list!5191 (c!218765 lt!442342))) (- 0 1)))))

(assert (= (and d!376950 res!602954) b!1337532))

(assert (= (and d!376950 c!219091) b!1337533))

(assert (= (and d!376950 (not c!219091)) b!1337534))

(assert (=> d!376950 m!1494079))

(declare-fun m!1495297 () Bool)

(assert (=> d!376950 m!1495297))

(assert (=> b!1337532 m!1494079))

(declare-fun m!1495299 () Bool)

(assert (=> b!1337532 m!1495299))

(assert (=> b!1337533 m!1494079))

(declare-fun m!1495301 () Bool)

(assert (=> b!1337533 m!1495301))

(assert (=> b!1337534 m!1494079))

(declare-fun m!1495303 () Bool)

(assert (=> b!1337534 m!1495303))

(assert (=> b!1337534 m!1495303))

(declare-fun m!1495305 () Bool)

(assert (=> b!1337534 m!1495305))

(assert (=> d!376738 d!376950))

(assert (=> d!376738 d!376838))

(declare-fun b!1337535 () Bool)

(declare-fun e!856783 () Int)

(assert (=> b!1337535 (= e!856783 (- e!856485 (size!11119 (left!11716 (ite c!218956 (left!11716 (c!218765 lt!442342)) (right!12046 (c!218765 lt!442342)))))))))

(declare-fun b!1337536 () Bool)

(declare-fun e!856784 () C!7652)

(declare-fun e!856782 () C!7652)

(assert (=> b!1337536 (= e!856784 e!856782)))

(declare-fun lt!442712 () Bool)

(assert (=> b!1337536 (= lt!442712 (appendIndex!147 (list!5191 (left!11716 (ite c!218956 (left!11716 (c!218765 lt!442342)) (right!12046 (c!218765 lt!442342))))) (list!5191 (right!12046 (ite c!218956 (left!11716 (c!218765 lt!442342)) (right!12046 (c!218765 lt!442342))))) e!856485))))

(declare-fun c!219094 () Bool)

(assert (=> b!1337536 (= c!219094 (< e!856485 (size!11119 (left!11716 (ite c!218956 (left!11716 (c!218765 lt!442342)) (right!12046 (c!218765 lt!442342)))))))))

(declare-fun b!1337537 () Bool)

(assert (=> b!1337537 (= e!856783 e!856485)))

(declare-fun lt!442713 () C!7652)

(declare-fun d!376952 () Bool)

(assert (=> d!376952 (= lt!442713 (apply!3200 (list!5191 (ite c!218956 (left!11716 (c!218765 lt!442342)) (right!12046 (c!218765 lt!442342)))) e!856485))))

(assert (=> d!376952 (= lt!442713 e!856784)))

(declare-fun c!219093 () Bool)

(assert (=> d!376952 (= c!219093 ((_ is Leaf!6879) (ite c!218956 (left!11716 (c!218765 lt!442342)) (right!12046 (c!218765 lt!442342)))))))

(declare-fun e!856785 () Bool)

(assert (=> d!376952 e!856785))

(declare-fun res!602955 () Bool)

(assert (=> d!376952 (=> (not res!602955) (not e!856785))))

(assert (=> d!376952 (= res!602955 (<= 0 e!856485))))

(assert (=> d!376952 (= (apply!3201 (ite c!218956 (left!11716 (c!218765 lt!442342)) (right!12046 (c!218765 lt!442342))) e!856485) lt!442713)))

(declare-fun b!1337538 () Bool)

(assert (=> b!1337538 (= e!856784 (apply!3205 (xs!7214 (ite c!218956 (left!11716 (c!218765 lt!442342)) (right!12046 (c!218765 lt!442342)))) e!856485))))

(declare-fun b!1337539 () Bool)

(declare-fun call!90285 () C!7652)

(assert (=> b!1337539 (= e!856782 call!90285)))

(declare-fun bm!90280 () Bool)

(declare-fun c!219092 () Bool)

(assert (=> bm!90280 (= c!219092 c!219094)))

(assert (=> bm!90280 (= call!90285 (apply!3201 (ite c!219094 (left!11716 (ite c!218956 (left!11716 (c!218765 lt!442342)) (right!12046 (c!218765 lt!442342)))) (right!12046 (ite c!218956 (left!11716 (c!218765 lt!442342)) (right!12046 (c!218765 lt!442342))))) e!856783))))

(declare-fun b!1337540 () Bool)

(assert (=> b!1337540 (= e!856782 call!90285)))

(declare-fun b!1337541 () Bool)

(assert (=> b!1337541 (= e!856785 (< e!856485 (size!11119 (ite c!218956 (left!11716 (c!218765 lt!442342)) (right!12046 (c!218765 lt!442342))))))))

(assert (= (and d!376952 res!602955) b!1337541))

(assert (= (and d!376952 c!219093) b!1337538))

(assert (= (and d!376952 (not c!219093)) b!1337536))

(assert (= (and b!1337536 c!219094) b!1337540))

(assert (= (and b!1337536 (not c!219094)) b!1337539))

(assert (= (or b!1337540 b!1337539) bm!90280))

(assert (= (and bm!90280 c!219092) b!1337537))

(assert (= (and bm!90280 (not c!219092)) b!1337535))

(declare-fun m!1495307 () Bool)

(assert (=> b!1337536 m!1495307))

(declare-fun m!1495309 () Bool)

(assert (=> b!1337536 m!1495309))

(assert (=> b!1337536 m!1495307))

(assert (=> b!1337536 m!1495309))

(declare-fun m!1495311 () Bool)

(assert (=> b!1337536 m!1495311))

(declare-fun m!1495313 () Bool)

(assert (=> b!1337536 m!1495313))

(declare-fun m!1495315 () Bool)

(assert (=> b!1337538 m!1495315))

(declare-fun m!1495317 () Bool)

(assert (=> bm!90280 m!1495317))

(declare-fun m!1495319 () Bool)

(assert (=> b!1337541 m!1495319))

(declare-fun m!1495321 () Bool)

(assert (=> d!376952 m!1495321))

(assert (=> d!376952 m!1495321))

(declare-fun m!1495323 () Bool)

(assert (=> d!376952 m!1495323))

(assert (=> b!1337535 m!1495313))

(assert (=> bm!90190 d!376952))

(declare-fun b!1337544 () Bool)

(declare-fun e!856788 () Bool)

(assert (=> b!1337544 (= e!856788 (isPrefix!1095 (tail!1918 lt!442344) (tail!1918 res!602894)))))

(declare-fun d!376954 () Bool)

(declare-fun e!856787 () Bool)

(assert (=> d!376954 e!856787))

(declare-fun res!602958 () Bool)

(assert (=> d!376954 (=> res!602958 e!856787)))

(declare-fun lt!442714 () Bool)

(assert (=> d!376954 (= res!602958 (not lt!442714))))

(declare-fun e!856786 () Bool)

(assert (=> d!376954 (= lt!442714 e!856786)))

(declare-fun res!602959 () Bool)

(assert (=> d!376954 (=> res!602959 e!856786)))

(assert (=> d!376954 (= res!602959 ((_ is Nil!13651) lt!442344))))

(assert (=> d!376954 (= (isPrefix!1095 lt!442344 res!602894) lt!442714)))

(declare-fun b!1337545 () Bool)

(assert (=> b!1337545 (= e!856787 (>= (size!11118 res!602894) (size!11118 lt!442344)))))

(declare-fun b!1337543 () Bool)

(declare-fun res!602957 () Bool)

(assert (=> b!1337543 (=> (not res!602957) (not e!856788))))

(assert (=> b!1337543 (= res!602957 (= (head!2369 lt!442344) (head!2369 res!602894)))))

(declare-fun b!1337542 () Bool)

(assert (=> b!1337542 (= e!856786 e!856788)))

(declare-fun res!602956 () Bool)

(assert (=> b!1337542 (=> (not res!602956) (not e!856788))))

(assert (=> b!1337542 (= res!602956 (not ((_ is Nil!13651) res!602894)))))

(assert (= (and d!376954 (not res!602959)) b!1337542))

(assert (= (and b!1337542 res!602956) b!1337543))

(assert (= (and b!1337543 res!602957) b!1337544))

(assert (= (and d!376954 (not res!602958)) b!1337545))

(assert (=> b!1337544 m!1494109))

(declare-fun m!1495325 () Bool)

(assert (=> b!1337544 m!1495325))

(assert (=> b!1337544 m!1494109))

(assert (=> b!1337544 m!1495325))

(declare-fun m!1495327 () Bool)

(assert (=> b!1337544 m!1495327))

(declare-fun m!1495329 () Bool)

(assert (=> b!1337545 m!1495329))

(assert (=> b!1337545 m!1493889))

(assert (=> b!1337543 m!1494105))

(declare-fun m!1495331 () Bool)

(assert (=> b!1337543 m!1495331))

(assert (=> b!1337355 d!376954))

(declare-fun d!376956 () Bool)

(assert (=> d!376956 (= ($colon$colon!173 (map!3011 (t!119283 rules!2550) lambda!56016) (dynLambda!6012 lambda!56016 (h!19053 rules!2550))) (Cons!13657 (dynLambda!6012 lambda!56016 (h!19053 rules!2550)) (map!3011 (t!119283 rules!2550) lambda!56016)))))

(assert (=> b!1336617 d!376956))

(declare-fun d!376958 () Bool)

(declare-fun lt!442715 () List!13723)

(assert (=> d!376958 (= (size!11125 lt!442715) (size!11126 (t!119283 rules!2550)))))

(declare-fun e!856789 () List!13723)

(assert (=> d!376958 (= lt!442715 e!856789)))

(declare-fun c!219095 () Bool)

(assert (=> d!376958 (= c!219095 ((_ is Nil!13652) (t!119283 rules!2550)))))

(assert (=> d!376958 (= (map!3011 (t!119283 rules!2550) lambda!56016) lt!442715)))

(declare-fun b!1337546 () Bool)

(assert (=> b!1337546 (= e!856789 Nil!13657)))

(declare-fun b!1337547 () Bool)

(assert (=> b!1337547 (= e!856789 ($colon$colon!173 (map!3011 (t!119283 (t!119283 rules!2550)) lambda!56016) (dynLambda!6012 lambda!56016 (h!19053 (t!119283 rules!2550)))))))

(assert (= (and d!376958 c!219095) b!1337546))

(assert (= (and d!376958 (not c!219095)) b!1337547))

(declare-fun b_lambda!39487 () Bool)

(assert (=> (not b_lambda!39487) (not b!1337547)))

(declare-fun m!1495357 () Bool)

(assert (=> d!376958 m!1495357))

(declare-fun m!1495359 () Bool)

(assert (=> d!376958 m!1495359))

(declare-fun m!1495361 () Bool)

(assert (=> b!1337547 m!1495361))

(declare-fun m!1495363 () Bool)

(assert (=> b!1337547 m!1495363))

(assert (=> b!1337547 m!1495361))

(assert (=> b!1337547 m!1495363))

(declare-fun m!1495365 () Bool)

(assert (=> b!1337547 m!1495365))

(assert (=> b!1336617 d!376958))

(declare-fun d!376960 () Bool)

(declare-fun lt!442718 () Int)

(assert (=> d!376960 (>= lt!442718 0)))

(declare-fun e!856792 () Int)

(assert (=> d!376960 (= lt!442718 e!856792)))

(declare-fun c!219098 () Bool)

(assert (=> d!376960 (= c!219098 ((_ is Nil!13656) (list!5190 (_1!7523 lt!442402))))))

(assert (=> d!376960 (= (size!11127 (list!5190 (_1!7523 lt!442402))) lt!442718)))

(declare-fun b!1337552 () Bool)

(assert (=> b!1337552 (= e!856792 0)))

(declare-fun b!1337553 () Bool)

(assert (=> b!1337553 (= e!856792 (+ 1 (size!11127 (t!119321 (list!5190 (_1!7523 lt!442402))))))))

(assert (= (and d!376960 c!219098) b!1337552))

(assert (= (and d!376960 (not c!219098)) b!1337553))

(declare-fun m!1495373 () Bool)

(assert (=> b!1337553 m!1495373))

(assert (=> d!376774 d!376960))

(declare-fun d!376968 () Bool)

(assert (=> d!376968 (= (list!5190 (_1!7523 lt!442402)) (list!5194 (c!218804 (_1!7523 lt!442402))))))

(declare-fun bs!332076 () Bool)

(assert (= bs!332076 d!376968))

(declare-fun m!1495375 () Bool)

(assert (=> bs!332076 m!1495375))

(assert (=> d!376774 d!376968))

(declare-fun d!376970 () Bool)

(declare-fun lt!442724 () Int)

(assert (=> d!376970 (= lt!442724 (size!11127 (list!5194 (c!218804 (_1!7523 lt!442402)))))))

(assert (=> d!376970 (= lt!442724 (ite ((_ is Empty!4501) (c!218804 (_1!7523 lt!442402))) 0 (ite ((_ is Leaf!6881) (c!218804 (_1!7523 lt!442402))) (csize!9233 (c!218804 (_1!7523 lt!442402))) (csize!9232 (c!218804 (_1!7523 lt!442402))))))))

(assert (=> d!376970 (= (size!11128 (c!218804 (_1!7523 lt!442402))) lt!442724)))

(declare-fun bs!332077 () Bool)

(assert (= bs!332077 d!376970))

(assert (=> bs!332077 m!1495375))

(assert (=> bs!332077 m!1495375))

(declare-fun m!1495385 () Bool)

(assert (=> bs!332077 m!1495385))

(assert (=> d!376774 d!376970))

(declare-fun d!376974 () Bool)

(declare-fun choose!8200 (Int) Bool)

(assert (=> d!376974 (= (Forall!522 lambda!56043) (choose!8200 lambda!56043))))

(declare-fun bs!332078 () Bool)

(assert (= bs!332078 d!376974))

(declare-fun m!1495387 () Bool)

(assert (=> bs!332078 m!1495387))

(assert (=> d!376568 d!376974))

(declare-fun b!1337557 () Bool)

(declare-fun e!856797 () Regex!3681)

(declare-fun e!856796 () Regex!3681)

(assert (=> b!1337557 (= e!856797 e!856796)))

(declare-fun c!219099 () Bool)

(assert (=> b!1337557 (= c!219099 ((_ is Star!3681) (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339)))))))

(declare-fun bm!90281 () Bool)

(declare-fun call!90287 () Regex!3681)

(declare-fun call!90289 () Regex!3681)

(assert (=> bm!90281 (= call!90287 call!90289)))

(declare-fun b!1337558 () Bool)

(assert (=> b!1337558 (= e!856796 (Concat!6139 call!90287 (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339)))))))

(declare-fun bm!90282 () Bool)

(declare-fun call!90286 () Regex!3681)

(declare-fun call!90288 () Regex!3681)

(assert (=> bm!90282 (= call!90286 call!90288)))

(declare-fun b!1337559 () Bool)

(declare-fun e!856800 () Regex!3681)

(declare-fun e!856799 () Regex!3681)

(assert (=> b!1337559 (= e!856800 e!856799)))

(declare-fun c!219103 () Bool)

(assert (=> b!1337559 (= c!219103 ((_ is ElementMatch!3681) (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339)))))))

(declare-fun b!1337560 () Bool)

(assert (=> b!1337560 (= e!856797 (Union!3681 call!90289 call!90288))))

(declare-fun b!1337561 () Bool)

(assert (=> b!1337561 (= e!856799 (ite (= (head!2369 lt!442344) (c!218766 (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339))))) EmptyExpr!3681 EmptyLang!3681))))

(declare-fun bm!90283 () Bool)

(declare-fun c!219102 () Bool)

(declare-fun c!219101 () Bool)

(assert (=> bm!90283 (= call!90288 (derivativeStep!923 (ite c!219101 (regTwo!7875 (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339)))) (ite c!219102 (regTwo!7874 (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339)))) (regOne!7874 (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339)))))) (head!2369 lt!442344)))))

(declare-fun b!1337562 () Bool)

(declare-fun e!856798 () Regex!3681)

(assert (=> b!1337562 (= e!856798 (Union!3681 (Concat!6139 call!90286 (regTwo!7874 (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339))))) EmptyLang!3681))))

(declare-fun d!376976 () Bool)

(declare-fun lt!442725 () Regex!3681)

(assert (=> d!376976 (validRegex!1585 lt!442725)))

(assert (=> d!376976 (= lt!442725 e!856800)))

(declare-fun c!219100 () Bool)

(assert (=> d!376976 (= c!219100 (or ((_ is EmptyExpr!3681) (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339)))) ((_ is EmptyLang!3681) (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339))))))))

(assert (=> d!376976 (validRegex!1585 (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339))))))

(assert (=> d!376976 (= (derivativeStep!923 (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339))) (head!2369 lt!442344)) lt!442725)))

(declare-fun b!1337563 () Bool)

(assert (=> b!1337563 (= c!219102 (nullable!1169 (regOne!7874 (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339))))))))

(assert (=> b!1337563 (= e!856796 e!856798)))

(declare-fun b!1337564 () Bool)

(assert (=> b!1337564 (= c!219101 ((_ is Union!3681) (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339)))))))

(assert (=> b!1337564 (= e!856799 e!856797)))

(declare-fun bm!90284 () Bool)

(assert (=> bm!90284 (= call!90289 (derivativeStep!923 (ite c!219101 (regOne!7875 (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339)))) (ite c!219099 (reg!4010 (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339)))) (regOne!7874 (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339)))))) (head!2369 lt!442344)))))

(declare-fun b!1337565 () Bool)

(assert (=> b!1337565 (= e!856798 (Union!3681 (Concat!6139 call!90287 (regTwo!7874 (ite c!219021 (regOne!7875 lt!442339) (ite c!219019 (reg!4010 lt!442339) (regOne!7874 lt!442339))))) call!90286))))

(declare-fun b!1337566 () Bool)

(assert (=> b!1337566 (= e!856800 EmptyLang!3681)))

(assert (= (and d!376976 c!219100) b!1337566))

(assert (= (and d!376976 (not c!219100)) b!1337559))

(assert (= (and b!1337559 c!219103) b!1337561))

(assert (= (and b!1337559 (not c!219103)) b!1337564))

(assert (= (and b!1337564 c!219101) b!1337560))

(assert (= (and b!1337564 (not c!219101)) b!1337557))

(assert (= (and b!1337557 c!219099) b!1337558))

(assert (= (and b!1337557 (not c!219099)) b!1337563))

(assert (= (and b!1337563 c!219102) b!1337565))

(assert (= (and b!1337563 (not c!219102)) b!1337562))

(assert (= (or b!1337565 b!1337562) bm!90282))

(assert (= (or b!1337558 b!1337565) bm!90281))

(assert (= (or b!1337560 bm!90281) bm!90284))

(assert (= (or b!1337560 bm!90282) bm!90283))

(assert (=> bm!90283 m!1494105))

(declare-fun m!1495389 () Bool)

(assert (=> bm!90283 m!1495389))

(declare-fun m!1495391 () Bool)

(assert (=> d!376976 m!1495391))

(declare-fun m!1495393 () Bool)

(assert (=> d!376976 m!1495393))

(declare-fun m!1495395 () Bool)

(assert (=> b!1337563 m!1495395))

(assert (=> bm!90284 m!1494105))

(declare-fun m!1495397 () Bool)

(assert (=> bm!90284 m!1495397))

(assert (=> bm!90226 d!376976))

(declare-fun b!1337568 () Bool)

(declare-fun e!856801 () List!13717)

(declare-fun e!856802 () List!13717)

(assert (=> b!1337568 (= e!856801 e!856802)))

(declare-fun c!219105 () Bool)

(assert (=> b!1337568 (= c!219105 ((_ is Leaf!6879) (c!218765 lt!442341)))))

(declare-fun b!1337569 () Bool)

(assert (=> b!1337569 (= e!856802 (list!5195 (xs!7214 (c!218765 lt!442341))))))

(declare-fun d!376978 () Bool)

(declare-fun c!219104 () Bool)

(assert (=> d!376978 (= c!219104 ((_ is Empty!4499) (c!218765 lt!442341)))))

(assert (=> d!376978 (= (list!5191 (c!218765 lt!442341)) e!856801)))

(declare-fun b!1337567 () Bool)

(assert (=> b!1337567 (= e!856801 Nil!13651)))

(declare-fun b!1337570 () Bool)

(assert (=> b!1337570 (= e!856802 (++!3488 (list!5191 (left!11716 (c!218765 lt!442341))) (list!5191 (right!12046 (c!218765 lt!442341)))))))

(assert (= (and d!376978 c!219104) b!1337567))

(assert (= (and d!376978 (not c!219104)) b!1337568))

(assert (= (and b!1337568 c!219105) b!1337569))

(assert (= (and b!1337568 (not c!219105)) b!1337570))

(declare-fun m!1495399 () Bool)

(assert (=> b!1337569 m!1495399))

(assert (=> b!1337570 m!1494507))

(assert (=> b!1337570 m!1494509))

(assert (=> b!1337570 m!1494507))

(assert (=> b!1337570 m!1494509))

(declare-fun m!1495401 () Bool)

(assert (=> b!1337570 m!1495401))

(assert (=> d!376588 d!376978))

(declare-fun d!376980 () Bool)

(assert (=> d!376980 (= (isEmpty!8143 (tail!1918 lt!442371)) ((_ is Nil!13651) (tail!1918 lt!442371)))))

(assert (=> b!1336769 d!376980))

(declare-fun d!376982 () Bool)

(assert (=> d!376982 (= (tail!1918 lt!442371) (t!119282 lt!442371))))

(assert (=> b!1336769 d!376982))

(declare-fun d!376984 () Bool)

(assert (=> d!376984 (= (lostCause!299 (derivativeStep!923 lt!442339 (head!2369 lt!442344))) (lostCauseFct!118 (derivativeStep!923 lt!442339 (head!2369 lt!442344))))))

(declare-fun bs!332079 () Bool)

(assert (= bs!332079 d!376984))

(assert (=> bs!332079 m!1494107))

(declare-fun m!1495403 () Bool)

(assert (=> bs!332079 m!1495403))

(assert (=> b!1337238 d!376984))

(declare-fun d!376986 () Bool)

(assert (=> d!376986 (= (head!2371 (map!3011 rules!2550 lambda!56016)) (h!19058 (map!3011 rules!2550 lambda!56016)))))

(assert (=> b!1336607 d!376986))

(declare-fun d!376988 () Bool)

(declare-fun e!856811 () Bool)

(assert (=> d!376988 e!856811))

(declare-fun c!219108 () Bool)

(assert (=> d!376988 (= c!219108 ((_ is EmptyExpr!3681) (derivativeStep!923 lt!442339 (head!2369 lt!442371))))))

(declare-fun lt!442726 () Bool)

(declare-fun e!856809 () Bool)

(assert (=> d!376988 (= lt!442726 e!856809)))

(declare-fun c!219110 () Bool)

(assert (=> d!376988 (= c!219110 (isEmpty!8143 (tail!1918 lt!442371)))))

(assert (=> d!376988 (validRegex!1585 (derivativeStep!923 lt!442339 (head!2369 lt!442371)))))

(assert (=> d!376988 (= (matchR!1674 (derivativeStep!923 lt!442339 (head!2369 lt!442371)) (tail!1918 lt!442371)) lt!442726)))

(declare-fun b!1337571 () Bool)

(declare-fun res!602966 () Bool)

(declare-fun e!856807 () Bool)

(assert (=> b!1337571 (=> res!602966 e!856807)))

(declare-fun e!856810 () Bool)

(assert (=> b!1337571 (= res!602966 e!856810)))

(declare-fun res!602965 () Bool)

(assert (=> b!1337571 (=> (not res!602965) (not e!856810))))

(assert (=> b!1337571 (= res!602965 lt!442726)))

(declare-fun b!1337572 () Bool)

(assert (=> b!1337572 (= e!856810 (= (head!2369 (tail!1918 lt!442371)) (c!218766 (derivativeStep!923 lt!442339 (head!2369 lt!442371)))))))

(declare-fun b!1337573 () Bool)

(declare-fun call!90290 () Bool)

(assert (=> b!1337573 (= e!856811 (= lt!442726 call!90290))))

(declare-fun bm!90285 () Bool)

(assert (=> bm!90285 (= call!90290 (isEmpty!8143 (tail!1918 lt!442371)))))

(declare-fun b!1337574 () Bool)

(declare-fun e!856808 () Bool)

(assert (=> b!1337574 (= e!856807 e!856808)))

(declare-fun res!602967 () Bool)

(assert (=> b!1337574 (=> (not res!602967) (not e!856808))))

(assert (=> b!1337574 (= res!602967 (not lt!442726))))

(declare-fun b!1337575 () Bool)

(declare-fun e!856805 () Bool)

(assert (=> b!1337575 (= e!856808 e!856805)))

(declare-fun res!602972 () Bool)

(assert (=> b!1337575 (=> res!602972 e!856805)))

(assert (=> b!1337575 (= res!602972 call!90290)))

(declare-fun b!1337576 () Bool)

(assert (=> b!1337576 (= e!856809 (nullable!1169 (derivativeStep!923 lt!442339 (head!2369 lt!442371))))))

(declare-fun b!1337577 () Bool)

(assert (=> b!1337577 (= e!856805 (not (= (head!2369 (tail!1918 lt!442371)) (c!218766 (derivativeStep!923 lt!442339 (head!2369 lt!442371))))))))

(declare-fun b!1337578 () Bool)

(assert (=> b!1337578 (= e!856809 (matchR!1674 (derivativeStep!923 (derivativeStep!923 lt!442339 (head!2369 lt!442371)) (head!2369 (tail!1918 lt!442371))) (tail!1918 (tail!1918 lt!442371))))))

(declare-fun b!1337579 () Bool)

(declare-fun res!602968 () Bool)

(assert (=> b!1337579 (=> res!602968 e!856805)))

(assert (=> b!1337579 (= res!602968 (not (isEmpty!8143 (tail!1918 (tail!1918 lt!442371)))))))

(declare-fun b!1337580 () Bool)

(declare-fun res!602971 () Bool)

(assert (=> b!1337580 (=> (not res!602971) (not e!856810))))

(assert (=> b!1337580 (= res!602971 (not call!90290))))

(declare-fun b!1337581 () Bool)

(declare-fun res!602969 () Bool)

(assert (=> b!1337581 (=> res!602969 e!856807)))

(assert (=> b!1337581 (= res!602969 (not ((_ is ElementMatch!3681) (derivativeStep!923 lt!442339 (head!2369 lt!442371)))))))

(declare-fun e!856806 () Bool)

(assert (=> b!1337581 (= e!856806 e!856807)))

(declare-fun b!1337582 () Bool)

(declare-fun res!602970 () Bool)

(assert (=> b!1337582 (=> (not res!602970) (not e!856810))))

(assert (=> b!1337582 (= res!602970 (isEmpty!8143 (tail!1918 (tail!1918 lt!442371))))))

(declare-fun b!1337583 () Bool)

(assert (=> b!1337583 (= e!856811 e!856806)))

(declare-fun c!219109 () Bool)

(assert (=> b!1337583 (= c!219109 ((_ is EmptyLang!3681) (derivativeStep!923 lt!442339 (head!2369 lt!442371))))))

(declare-fun b!1337584 () Bool)

(assert (=> b!1337584 (= e!856806 (not lt!442726))))

(assert (= (and d!376988 c!219110) b!1337576))

(assert (= (and d!376988 (not c!219110)) b!1337578))

(assert (= (and d!376988 c!219108) b!1337573))

(assert (= (and d!376988 (not c!219108)) b!1337583))

(assert (= (and b!1337583 c!219109) b!1337584))

(assert (= (and b!1337583 (not c!219109)) b!1337581))

(assert (= (and b!1337581 (not res!602969)) b!1337571))

(assert (= (and b!1337571 res!602965) b!1337580))

(assert (= (and b!1337580 res!602971) b!1337582))

(assert (= (and b!1337582 res!602970) b!1337572))

(assert (= (and b!1337571 (not res!602966)) b!1337574))

(assert (= (and b!1337574 res!602967) b!1337575))

(assert (= (and b!1337575 (not res!602972)) b!1337579))

(assert (= (and b!1337579 (not res!602968)) b!1337577))

(assert (= (or b!1337573 b!1337575 b!1337580) bm!90285))

(assert (=> b!1337579 m!1494459))

(declare-fun m!1495405 () Bool)

(assert (=> b!1337579 m!1495405))

(assert (=> b!1337579 m!1495405))

(declare-fun m!1495407 () Bool)

(assert (=> b!1337579 m!1495407))

(assert (=> b!1337572 m!1494459))

(declare-fun m!1495409 () Bool)

(assert (=> b!1337572 m!1495409))

(assert (=> b!1337582 m!1494459))

(assert (=> b!1337582 m!1495405))

(assert (=> b!1337582 m!1495405))

(assert (=> b!1337582 m!1495407))

(assert (=> d!376988 m!1494459))

(assert (=> d!376988 m!1494461))

(assert (=> d!376988 m!1494469))

(declare-fun m!1495411 () Bool)

(assert (=> d!376988 m!1495411))

(assert (=> b!1337576 m!1494469))

(declare-fun m!1495413 () Bool)

(assert (=> b!1337576 m!1495413))

(assert (=> b!1337577 m!1494459))

(assert (=> b!1337577 m!1495409))

(assert (=> b!1337578 m!1494459))

(assert (=> b!1337578 m!1495409))

(assert (=> b!1337578 m!1494469))

(assert (=> b!1337578 m!1495409))

(declare-fun m!1495415 () Bool)

(assert (=> b!1337578 m!1495415))

(assert (=> b!1337578 m!1494459))

(assert (=> b!1337578 m!1495405))

(assert (=> b!1337578 m!1495415))

(assert (=> b!1337578 m!1495405))

(declare-fun m!1495417 () Bool)

(assert (=> b!1337578 m!1495417))

(assert (=> bm!90285 m!1494459))

(assert (=> bm!90285 m!1494461))

(assert (=> b!1336768 d!376988))

(declare-fun b!1337587 () Bool)

(declare-fun e!856813 () Regex!3681)

(declare-fun e!856812 () Regex!3681)

(assert (=> b!1337587 (= e!856813 e!856812)))

(declare-fun c!219113 () Bool)

(assert (=> b!1337587 (= c!219113 ((_ is Star!3681) lt!442339))))

(declare-fun bm!90286 () Bool)

(declare-fun call!90292 () Regex!3681)

(declare-fun call!90294 () Regex!3681)

(assert (=> bm!90286 (= call!90292 call!90294)))

(declare-fun b!1337588 () Bool)

(assert (=> b!1337588 (= e!856812 (Concat!6139 call!90292 lt!442339))))

(declare-fun bm!90287 () Bool)

(declare-fun call!90291 () Regex!3681)

(declare-fun call!90293 () Regex!3681)

(assert (=> bm!90287 (= call!90291 call!90293)))

(declare-fun b!1337589 () Bool)

(declare-fun e!856816 () Regex!3681)

(declare-fun e!856815 () Regex!3681)

(assert (=> b!1337589 (= e!856816 e!856815)))

(declare-fun c!219117 () Bool)

(assert (=> b!1337589 (= c!219117 ((_ is ElementMatch!3681) lt!442339))))

(declare-fun b!1337590 () Bool)

(assert (=> b!1337590 (= e!856813 (Union!3681 call!90294 call!90293))))

(declare-fun b!1337591 () Bool)

(assert (=> b!1337591 (= e!856815 (ite (= (head!2369 lt!442371) (c!218766 lt!442339)) EmptyExpr!3681 EmptyLang!3681))))

(declare-fun c!219116 () Bool)

(declare-fun bm!90288 () Bool)

(declare-fun c!219115 () Bool)

(assert (=> bm!90288 (= call!90293 (derivativeStep!923 (ite c!219115 (regTwo!7875 lt!442339) (ite c!219116 (regTwo!7874 lt!442339) (regOne!7874 lt!442339))) (head!2369 lt!442371)))))

(declare-fun b!1337592 () Bool)

(declare-fun e!856814 () Regex!3681)

(assert (=> b!1337592 (= e!856814 (Union!3681 (Concat!6139 call!90291 (regTwo!7874 lt!442339)) EmptyLang!3681))))

(declare-fun d!376990 () Bool)

(declare-fun lt!442727 () Regex!3681)

(assert (=> d!376990 (validRegex!1585 lt!442727)))

(assert (=> d!376990 (= lt!442727 e!856816)))

(declare-fun c!219114 () Bool)

(assert (=> d!376990 (= c!219114 (or ((_ is EmptyExpr!3681) lt!442339) ((_ is EmptyLang!3681) lt!442339)))))

(assert (=> d!376990 (validRegex!1585 lt!442339)))

(assert (=> d!376990 (= (derivativeStep!923 lt!442339 (head!2369 lt!442371)) lt!442727)))

(declare-fun b!1337593 () Bool)

(assert (=> b!1337593 (= c!219116 (nullable!1169 (regOne!7874 lt!442339)))))

(assert (=> b!1337593 (= e!856812 e!856814)))

(declare-fun b!1337594 () Bool)

(assert (=> b!1337594 (= c!219115 ((_ is Union!3681) lt!442339))))

(assert (=> b!1337594 (= e!856815 e!856813)))

(declare-fun bm!90289 () Bool)

(assert (=> bm!90289 (= call!90294 (derivativeStep!923 (ite c!219115 (regOne!7875 lt!442339) (ite c!219113 (reg!4010 lt!442339) (regOne!7874 lt!442339))) (head!2369 lt!442371)))))

(declare-fun b!1337595 () Bool)

(assert (=> b!1337595 (= e!856814 (Union!3681 (Concat!6139 call!90292 (regTwo!7874 lt!442339)) call!90291))))

(declare-fun b!1337596 () Bool)

(assert (=> b!1337596 (= e!856816 EmptyLang!3681)))

(assert (= (and d!376990 c!219114) b!1337596))

(assert (= (and d!376990 (not c!219114)) b!1337589))

(assert (= (and b!1337589 c!219117) b!1337591))

(assert (= (and b!1337589 (not c!219117)) b!1337594))

(assert (= (and b!1337594 c!219115) b!1337590))

(assert (= (and b!1337594 (not c!219115)) b!1337587))

(assert (= (and b!1337587 c!219113) b!1337588))

(assert (= (and b!1337587 (not c!219113)) b!1337593))

(assert (= (and b!1337593 c!219116) b!1337595))

(assert (= (and b!1337593 (not c!219116)) b!1337592))

(assert (= (or b!1337595 b!1337592) bm!90287))

(assert (= (or b!1337588 b!1337595) bm!90286))

(assert (= (or b!1337590 bm!90286) bm!90289))

(assert (= (or b!1337590 bm!90287) bm!90288))

(assert (=> bm!90288 m!1494463))

(declare-fun m!1495419 () Bool)

(assert (=> bm!90288 m!1495419))

(declare-fun m!1495421 () Bool)

(assert (=> d!376990 m!1495421))

(assert (=> d!376990 m!1494153))

(assert (=> b!1337593 m!1495087))

(assert (=> bm!90289 m!1494463))

(declare-fun m!1495423 () Bool)

(assert (=> bm!90289 m!1495423))

(assert (=> b!1336768 d!376990))

(declare-fun d!376992 () Bool)

(assert (=> d!376992 (= (head!2369 lt!442371) (h!19052 lt!442371))))

(assert (=> b!1336768 d!376992))

(assert (=> b!1336768 d!376982))

(declare-fun d!376994 () Bool)

(declare-fun lt!442728 () Int)

(assert (=> d!376994 (= lt!442728 (size!11118 (list!5191 (left!11716 (c!218765 lt!442342)))))))

(assert (=> d!376994 (= lt!442728 (ite ((_ is Empty!4499) (left!11716 (c!218765 lt!442342))) 0 (ite ((_ is Leaf!6879) (left!11716 (c!218765 lt!442342))) (csize!9229 (left!11716 (c!218765 lt!442342))) (csize!9228 (left!11716 (c!218765 lt!442342))))))))

(assert (=> d!376994 (= (size!11119 (left!11716 (c!218765 lt!442342))) lt!442728)))

(declare-fun bs!332080 () Bool)

(assert (= bs!332080 d!376994))

(assert (=> bs!332080 m!1494803))

(assert (=> bs!332080 m!1494803))

(assert (=> bs!332080 m!1495225))

(assert (=> b!1336969 d!376994))

(declare-fun d!376996 () Bool)

(assert (=> d!376996 (= (isEmpty!8143 (list!5187 (_2!7523 lt!442404))) ((_ is Nil!13651) (list!5187 (_2!7523 lt!442404))))))

(assert (=> d!376708 d!376996))

(declare-fun d!376998 () Bool)

(assert (=> d!376998 (= (list!5187 (_2!7523 lt!442404)) (list!5191 (c!218765 (_2!7523 lt!442404))))))

(declare-fun bs!332081 () Bool)

(assert (= bs!332081 d!376998))

(declare-fun m!1495425 () Bool)

(assert (=> bs!332081 m!1495425))

(assert (=> d!376708 d!376998))

(declare-fun d!377000 () Bool)

(declare-fun lt!442731 () Bool)

(assert (=> d!377000 (= lt!442731 (isEmpty!8143 (list!5191 (c!218765 (_2!7523 lt!442404)))))))

(assert (=> d!377000 (= lt!442731 (= (size!11119 (c!218765 (_2!7523 lt!442404))) 0))))

(assert (=> d!377000 (= (isEmpty!8148 (c!218765 (_2!7523 lt!442404))) lt!442731)))

(declare-fun bs!332082 () Bool)

(assert (= bs!332082 d!377000))

(assert (=> bs!332082 m!1495425))

(assert (=> bs!332082 m!1495425))

(declare-fun m!1495431 () Bool)

(assert (=> bs!332082 m!1495431))

(declare-fun m!1495433 () Bool)

(assert (=> bs!332082 m!1495433))

(assert (=> d!376708 d!377000))

(declare-fun d!377004 () Bool)

(declare-fun lt!442732 () Int)

(assert (=> d!377004 (>= lt!442732 0)))

(declare-fun e!856824 () Int)

(assert (=> d!377004 (= lt!442732 e!856824)))

(declare-fun c!219118 () Bool)

(assert (=> d!377004 (= c!219118 ((_ is Nil!13651) (t!119282 (getSuffix!529 lt!442343 lt!442344))))))

(assert (=> d!377004 (= (size!11118 (t!119282 (getSuffix!529 lt!442343 lt!442344))) lt!442732)))

(declare-fun b!1337606 () Bool)

(assert (=> b!1337606 (= e!856824 0)))

(declare-fun b!1337607 () Bool)

(assert (=> b!1337607 (= e!856824 (+ 1 (size!11118 (t!119282 (t!119282 (getSuffix!529 lt!442343 lt!442344))))))))

(assert (= (and d!377004 c!219118) b!1337606))

(assert (= (and d!377004 (not c!219118)) b!1337607))

(declare-fun m!1495435 () Bool)

(assert (=> b!1337607 m!1495435))

(assert (=> b!1336965 d!377004))

(declare-fun b!1337646 () Bool)

(declare-fun e!856846 () Bool)

(assert (=> b!1337646 (= e!856846 true)))

(declare-fun b!1337645 () Bool)

(declare-fun e!856845 () Bool)

(assert (=> b!1337645 (= e!856845 e!856846)))

(declare-fun d!377006 () Bool)

(assert (=> d!377006 e!856845))

(assert (= b!1337645 b!1337646))

(assert (= d!377006 b!1337645))

(declare-fun lambda!56079 () Int)

(declare-fun order!8205 () Int)

(declare-fun dynLambda!6022 (Int Int) Int)

(assert (=> b!1337646 (< (dynLambda!6017 order!8191 (toValue!3602 (transformation!2367 (h!19053 rules!2550)))) (dynLambda!6022 order!8205 lambda!56079))))

(assert (=> b!1337646 (< (dynLambda!6015 order!8187 (toChars!3461 (transformation!2367 (h!19053 rules!2550)))) (dynLambda!6022 order!8205 lambda!56079))))

(declare-fun res!602994 () Bool)

(declare-fun e!856833 () Bool)

(assert (=> d!377006 (=> (not res!602994) (not e!856833))))

(declare-fun forall!3340 (List!13717 Int) Bool)

(declare-fun usedCharacters!222 (Regex!3681) List!13717)

(assert (=> d!377006 (= res!602994 (forall!3340 (usedCharacters!222 (regex!2367 (h!19053 rules!2550))) lambda!56079))))

(assert (=> d!377006 (= (rulesUseDisjointChars!166 (h!19053 rules!2550) (h!19053 rules!2550)) e!856833)))

(declare-fun b!1337628 () Bool)

(assert (=> b!1337628 (= e!856833 (forall!3340 (usedCharacters!222 (regex!2367 (h!19053 rules!2550))) lambda!56079))))

(assert (= (and d!377006 res!602994) b!1337628))

(declare-fun m!1495475 () Bool)

(assert (=> d!377006 m!1495475))

(assert (=> d!377006 m!1495475))

(declare-fun m!1495477 () Bool)

(assert (=> d!377006 m!1495477))

(assert (=> b!1337628 m!1495475))

(assert (=> b!1337628 m!1495475))

(assert (=> b!1337628 m!1495477))

(assert (=> b!1337175 d!377006))

(declare-fun d!377020 () Bool)

(assert (=> d!377020 (= (isEmpty!8147 (tail!1920 (map!3011 rules!2550 lambda!56016))) ((_ is Nil!13657) (tail!1920 (map!3011 rules!2550 lambda!56016))))))

(assert (=> b!1336603 d!377020))

(declare-fun d!377022 () Bool)

(assert (=> d!377022 (= (tail!1920 (map!3011 rules!2550 lambda!56016)) (t!119322 (map!3011 rules!2550 lambda!56016)))))

(assert (=> b!1336603 d!377022))

(declare-fun d!377024 () Bool)

(declare-fun c!219126 () Bool)

(assert (=> d!377024 (= c!219126 ((_ is Nil!13651) (t!119282 lt!442344)))))

(declare-fun e!856847 () (InoxSet C!7652))

(assert (=> d!377024 (= (content!1937 (t!119282 lt!442344)) e!856847)))

(declare-fun b!1337647 () Bool)

(assert (=> b!1337647 (= e!856847 ((as const (Array C!7652 Bool)) false))))

(declare-fun b!1337648 () Bool)

(assert (=> b!1337648 (= e!856847 ((_ map or) (store ((as const (Array C!7652 Bool)) false) (h!19052 (t!119282 lt!442344)) true) (content!1937 (t!119282 (t!119282 lt!442344)))))))

(assert (= (and d!377024 c!219126) b!1337647))

(assert (= (and d!377024 (not c!219126)) b!1337648))

(declare-fun m!1495479 () Bool)

(assert (=> b!1337648 m!1495479))

(assert (=> b!1337648 m!1495289))

(assert (=> d!376792 d!377024))

(declare-fun d!377026 () Bool)

(declare-fun lt!442737 () Bool)

(assert (=> d!377026 (= lt!442737 (isEmpty!8151 (list!5190 (_1!7523 lt!442619))))))

(declare-fun isEmpty!8153 (Conc!4501) Bool)

(assert (=> d!377026 (= lt!442737 (isEmpty!8153 (c!218804 (_1!7523 lt!442619))))))

(assert (=> d!377026 (= (isEmpty!8149 (_1!7523 lt!442619)) lt!442737)))

(declare-fun bs!332084 () Bool)

(assert (= bs!332084 d!377026))

(assert (=> bs!332084 m!1494897))

(assert (=> bs!332084 m!1494897))

(declare-fun m!1495481 () Bool)

(assert (=> bs!332084 m!1495481))

(declare-fun m!1495483 () Bool)

(assert (=> bs!332084 m!1495483))

(assert (=> b!1337138 d!377026))

(declare-fun d!377028 () Bool)

(declare-fun res!603007 () Bool)

(declare-fun e!856858 () Bool)

(assert (=> d!377028 (=> (not res!603007) (not e!856858))))

(assert (=> d!377028 (= res!603007 (<= (size!11118 (list!5195 (xs!7214 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))) 512))))

(assert (=> d!377028 (= (inv!17997 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))) e!856858)))

(declare-fun b!1337665 () Bool)

(declare-fun res!603008 () Bool)

(assert (=> b!1337665 (=> (not res!603008) (not e!856858))))

(assert (=> b!1337665 (= res!603008 (= (csize!9229 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))) (size!11118 (list!5195 (xs!7214 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))))))))

(declare-fun b!1337666 () Bool)

(assert (=> b!1337666 (= e!856858 (and (> (csize!9229 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))) 0) (<= (csize!9229 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))) 512)))))

(assert (= (and d!377028 res!603007) b!1337665))

(assert (= (and b!1337665 res!603008) b!1337666))

(declare-fun m!1495485 () Bool)

(assert (=> d!377028 m!1495485))

(assert (=> d!377028 m!1495485))

(declare-fun m!1495487 () Bool)

(assert (=> d!377028 m!1495487))

(assert (=> b!1337665 m!1495485))

(assert (=> b!1337665 m!1495485))

(assert (=> b!1337665 m!1495487))

(assert (=> b!1337237 d!377028))

(declare-fun b!1337697 () Bool)

(declare-fun res!603025 () Bool)

(declare-fun e!856874 () Bool)

(assert (=> b!1337697 (=> (not res!603025) (not e!856874))))

(assert (=> b!1337697 (= res!603025 (isBalanced!1306 (left!11718 (c!218804 lt!442638))))))

(declare-fun b!1337698 () Bool)

(declare-fun res!603028 () Bool)

(assert (=> b!1337698 (=> (not res!603028) (not e!856874))))

(assert (=> b!1337698 (= res!603028 (isBalanced!1306 (right!12048 (c!218804 lt!442638))))))

(declare-fun d!377030 () Bool)

(declare-fun res!603024 () Bool)

(declare-fun e!856873 () Bool)

(assert (=> d!377030 (=> res!603024 e!856873)))

(assert (=> d!377030 (= res!603024 (not ((_ is Node!4501) (c!218804 lt!442638))))))

(assert (=> d!377030 (= (isBalanced!1306 (c!218804 lt!442638)) e!856873)))

(declare-fun b!1337699 () Bool)

(assert (=> b!1337699 (= e!856873 e!856874)))

(declare-fun res!603026 () Bool)

(assert (=> b!1337699 (=> (not res!603026) (not e!856874))))

(declare-fun height!636 (Conc!4501) Int)

(assert (=> b!1337699 (= res!603026 (<= (- 1) (- (height!636 (left!11718 (c!218804 lt!442638))) (height!636 (right!12048 (c!218804 lt!442638))))))))

(declare-fun b!1337700 () Bool)

(declare-fun res!603023 () Bool)

(assert (=> b!1337700 (=> (not res!603023) (not e!856874))))

(assert (=> b!1337700 (= res!603023 (<= (- (height!636 (left!11718 (c!218804 lt!442638))) (height!636 (right!12048 (c!218804 lt!442638)))) 1))))

(declare-fun b!1337701 () Bool)

(assert (=> b!1337701 (= e!856874 (not (isEmpty!8153 (right!12048 (c!218804 lt!442638)))))))

(declare-fun b!1337702 () Bool)

(declare-fun res!603027 () Bool)

(assert (=> b!1337702 (=> (not res!603027) (not e!856874))))

(assert (=> b!1337702 (= res!603027 (not (isEmpty!8153 (left!11718 (c!218804 lt!442638)))))))

(assert (= (and d!377030 (not res!603024)) b!1337699))

(assert (= (and b!1337699 res!603026) b!1337700))

(assert (= (and b!1337700 res!603023) b!1337697))

(assert (= (and b!1337697 res!603025) b!1337698))

(assert (= (and b!1337698 res!603028) b!1337702))

(assert (= (and b!1337702 res!603027) b!1337701))

(declare-fun m!1495531 () Bool)

(assert (=> b!1337702 m!1495531))

(declare-fun m!1495533 () Bool)

(assert (=> b!1337698 m!1495533))

(declare-fun m!1495535 () Bool)

(assert (=> b!1337699 m!1495535))

(declare-fun m!1495537 () Bool)

(assert (=> b!1337699 m!1495537))

(declare-fun m!1495539 () Bool)

(assert (=> b!1337701 m!1495539))

(assert (=> b!1337700 m!1495535))

(assert (=> b!1337700 m!1495537))

(declare-fun m!1495541 () Bool)

(assert (=> b!1337697 m!1495541))

(assert (=> b!1337159 d!377030))

(declare-fun d!377046 () Bool)

(declare-fun lt!442749 () Bool)

(declare-fun content!1938 (List!13724) (InoxSet String!16521))

(assert (=> d!377046 (= lt!442749 (select (content!1938 Nil!13658) (tag!2629 (h!19053 rules!2550))))))

(declare-fun e!856884 () Bool)

(assert (=> d!377046 (= lt!442749 e!856884)))

(declare-fun res!603037 () Bool)

(assert (=> d!377046 (=> (not res!603037) (not e!856884))))

(assert (=> d!377046 (= res!603037 ((_ is Cons!13658) Nil!13658))))

(assert (=> d!377046 (= (contains!2491 Nil!13658 (tag!2629 (h!19053 rules!2550))) lt!442749)))

(declare-fun b!1337715 () Bool)

(declare-fun e!856883 () Bool)

(assert (=> b!1337715 (= e!856884 e!856883)))

(declare-fun res!603038 () Bool)

(assert (=> b!1337715 (=> res!603038 e!856883)))

(assert (=> b!1337715 (= res!603038 (= (h!19059 Nil!13658) (tag!2629 (h!19053 rules!2550))))))

(declare-fun b!1337716 () Bool)

(assert (=> b!1337716 (= e!856883 (contains!2491 (t!119323 Nil!13658) (tag!2629 (h!19053 rules!2550))))))

(assert (= (and d!377046 res!603037) b!1337715))

(assert (= (and b!1337715 (not res!603038)) b!1337716))

(declare-fun m!1495555 () Bool)

(assert (=> d!377046 m!1495555))

(declare-fun m!1495557 () Bool)

(assert (=> d!377046 m!1495557))

(declare-fun m!1495559 () Bool)

(assert (=> b!1337716 m!1495559))

(assert (=> b!1337147 d!377046))

(declare-fun bs!332089 () Bool)

(declare-fun d!377052 () Bool)

(assert (= bs!332089 (and d!377052 d!376568)))

(declare-fun lambda!56080 () Int)

(assert (=> bs!332089 (= (and (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toChars!3461 (transformation!2367 (h!19053 rules!2550)))) (= (toValue!3602 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toValue!3602 (transformation!2367 (h!19053 rules!2550))))) (= lambda!56080 lambda!56043))))

(declare-fun bs!332090 () Bool)

(assert (= bs!332090 (and d!377052 d!376570)))

(assert (=> bs!332090 (= (and (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toChars!3461 (transformation!2367 (rule!4112 t1!34)))) (= (toValue!3602 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toValue!3602 (transformation!2367 (rule!4112 t1!34))))) (= lambda!56080 lambda!56044))))

(declare-fun bs!332091 () Bool)

(assert (= bs!332091 (and d!377052 d!376814)))

(assert (=> bs!332091 (= (and (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toChars!3461 (transformation!2367 (rule!4112 t2!34)))) (= (toValue!3602 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toValue!3602 (transformation!2367 (rule!4112 t2!34))))) (= lambda!56080 lambda!56064))))

(assert (=> d!377052 true))

(assert (=> d!377052 (< (dynLambda!6015 order!8187 (toChars!3461 (transformation!2367 (h!19053 (t!119283 rules!2550))))) (dynLambda!6016 order!8189 lambda!56080))))

(assert (=> d!377052 true))

(assert (=> d!377052 (< (dynLambda!6017 order!8191 (toValue!3602 (transformation!2367 (h!19053 (t!119283 rules!2550))))) (dynLambda!6016 order!8189 lambda!56080))))

(assert (=> d!377052 (= (semiInverseModEq!894 (toChars!3461 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toValue!3602 (transformation!2367 (h!19053 (t!119283 rules!2550))))) (Forall!522 lambda!56080))))

(declare-fun bs!332093 () Bool)

(assert (= bs!332093 d!377052))

(declare-fun m!1495567 () Bool)

(assert (=> bs!332093 m!1495567))

(assert (=> d!376566 d!377052))

(declare-fun d!377056 () Bool)

(declare-fun c!219141 () Bool)

(assert (=> d!377056 (= c!219141 ((_ is Nil!13651) (t!119282 (list!5187 lt!442342))))))

(declare-fun e!856886 () (InoxSet C!7652))

(assert (=> d!377056 (= (content!1937 (t!119282 (list!5187 lt!442342))) e!856886)))

(declare-fun b!1337719 () Bool)

(assert (=> b!1337719 (= e!856886 ((as const (Array C!7652 Bool)) false))))

(declare-fun b!1337720 () Bool)

(assert (=> b!1337720 (= e!856886 ((_ map or) (store ((as const (Array C!7652 Bool)) false) (h!19052 (t!119282 (list!5187 lt!442342))) true) (content!1937 (t!119282 (t!119282 (list!5187 lt!442342))))))))

(assert (= (and d!377056 c!219141) b!1337719))

(assert (= (and d!377056 (not c!219141)) b!1337720))

(declare-fun m!1495571 () Bool)

(assert (=> b!1337720 m!1495571))

(declare-fun m!1495573 () Bool)

(assert (=> b!1337720 m!1495573))

(assert (=> b!1337232 d!377056))

(declare-fun d!377064 () Bool)

(assert (=> d!377064 (= (height!635 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))) (ite ((_ is Empty!4499) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))) 0 (ite ((_ is Leaf!6879) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))) 1 (cheight!4710 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))

(assert (=> b!1336875 d!377064))

(declare-fun d!377066 () Bool)

(assert (=> d!377066 (= (max!0 (height!635 (c!218765 (charsOf!1339 t1!34))) (height!635 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))) (ite (< (height!635 (c!218765 (charsOf!1339 t1!34))) (height!635 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))) (height!635 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))) (height!635 (c!218765 (charsOf!1339 t1!34)))))))

(assert (=> b!1336875 d!377066))

(declare-fun bm!90334 () Bool)

(declare-fun call!90346 () Conc!4499)

(declare-fun call!90349 () Conc!4499)

(assert (=> bm!90334 (= call!90346 call!90349)))

(declare-fun b!1337897 () Bool)

(declare-fun e!856984 () Bool)

(assert (=> b!1337897 (= e!856984 (isBalanced!1305 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))

(declare-fun b!1337898 () Bool)

(declare-fun e!856978 () Conc!4499)

(assert (=> b!1337898 (= e!856978 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))

(declare-fun b!1337899 () Bool)

(declare-fun e!856982 () Conc!4499)

(declare-fun call!90348 () Conc!4499)

(assert (=> b!1337899 (= e!856982 call!90348)))

(declare-fun b!1337900 () Bool)

(declare-fun e!856979 () Conc!4499)

(assert (=> b!1337900 (= e!856978 e!856979)))

(declare-fun c!219198 () Bool)

(assert (=> b!1337900 (= c!219198 (= (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) Empty!4499))))

(declare-fun b!1337901 () Bool)

(declare-fun e!856977 () Conc!4499)

(declare-fun e!856983 () Conc!4499)

(assert (=> b!1337901 (= e!856977 e!856983)))

(declare-fun lt!442782 () Conc!4499)

(declare-fun call!90351 () Conc!4499)

(assert (=> b!1337901 (= lt!442782 call!90351)))

(declare-fun c!219202 () Bool)

(declare-fun call!90343 () Int)

(declare-fun call!90339 () Int)

(assert (=> b!1337901 (= c!219202 (= call!90343 (- call!90339 3)))))

(declare-fun c!219197 () Bool)

(declare-fun call!90347 () Conc!4499)

(declare-fun c!219195 () Bool)

(declare-fun c!219200 () Bool)

(declare-fun bm!90335 () Bool)

(assert (=> bm!90335 (= call!90347 (++!3492 (ite c!219197 (ite c!219195 (right!12046 (c!218765 (charsOf!1339 t1!34))) (right!12046 (right!12046 (c!218765 (charsOf!1339 t1!34))))) (c!218765 (charsOf!1339 t1!34))) (ite c!219197 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) (ite c!219200 (left!11716 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))) (left!11716 (left!11716 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))))

(declare-fun b!1337902 () Bool)

(declare-fun e!856981 () Conc!4499)

(declare-fun call!90353 () Conc!4499)

(assert (=> b!1337902 (= e!856981 call!90353)))

(declare-fun bm!90336 () Bool)

(declare-fun call!90342 () Conc!4499)

(declare-fun call!90345 () Conc!4499)

(assert (=> bm!90336 (= call!90342 call!90345)))

(declare-fun b!1337903 () Bool)

(declare-fun lt!442784 () Conc!4499)

(declare-fun e!856985 () Bool)

(assert (=> b!1337903 (= e!856985 (= (list!5191 lt!442784) (++!3488 (list!5191 (c!218765 (charsOf!1339 t1!34))) (list!5191 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))

(declare-fun b!1337904 () Bool)

(declare-fun call!90354 () Conc!4499)

(assert (=> b!1337904 (= e!856977 call!90354)))

(declare-fun d!377068 () Bool)

(assert (=> d!377068 e!856985))

(declare-fun res!603114 () Bool)

(assert (=> d!377068 (=> (not res!603114) (not e!856985))))

(assert (=> d!377068 (= res!603114 (appendAssocInst!265 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))

(assert (=> d!377068 (= lt!442784 e!856978)))

(declare-fun c!219201 () Bool)

(assert (=> d!377068 (= c!219201 (= (c!218765 (charsOf!1339 t1!34)) Empty!4499))))

(assert (=> d!377068 e!856984))

(declare-fun res!603111 () Bool)

(assert (=> d!377068 (=> (not res!603111) (not e!856984))))

(assert (=> d!377068 (= res!603111 (isBalanced!1305 (c!218765 (charsOf!1339 t1!34))))))

(assert (=> d!377068 (= (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))) lt!442784)))

(declare-fun b!1337896 () Bool)

(declare-fun res!603112 () Bool)

(assert (=> b!1337896 (=> (not res!603112) (not e!856985))))

(assert (=> b!1337896 (= res!603112 (<= (height!635 lt!442784) (+ (max!0 (height!635 (c!218765 (charsOf!1339 t1!34))) (height!635 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))) 1)))))

(declare-fun b!1337905 () Bool)

(declare-fun res!603115 () Bool)

(assert (=> b!1337905 (=> (not res!603115) (not e!856985))))

(assert (=> b!1337905 (= res!603115 (isBalanced!1305 lt!442784))))

(declare-fun b!1337906 () Bool)

(declare-fun c!219199 () Bool)

(declare-fun lt!442783 () Int)

(assert (=> b!1337906 (= c!219199 (and (<= (- 1) lt!442783) (<= lt!442783 1)))))

(assert (=> b!1337906 (= lt!442783 (- (height!635 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))) (height!635 (c!218765 (charsOf!1339 t1!34)))))))

(assert (=> b!1337906 (= e!856979 e!856981)))

(declare-fun bm!90337 () Bool)

(declare-fun lt!442785 () Conc!4499)

(declare-fun call!90344 () Conc!4499)

(declare-fun c!219196 () Bool)

(declare-fun <>!89 (Conc!4499 Conc!4499) Conc!4499)

(assert (=> bm!90337 (= call!90353 (<>!89 (ite c!219199 (c!218765 (charsOf!1339 t1!34)) (ite c!219197 (ite c!219195 (left!11716 (c!218765 (charsOf!1339 t1!34))) (ite c!219196 (left!11716 (right!12046 (c!218765 (charsOf!1339 t1!34)))) (left!11716 (c!218765 (charsOf!1339 t1!34))))) (ite c!219202 lt!442782 (right!12046 (left!11716 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))) (ite c!219199 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) (ite c!219197 (ite c!219195 call!90344 (ite c!219196 lt!442785 (left!11716 (right!12046 (c!218765 (charsOf!1339 t1!34)))))) (ite c!219202 (right!12046 (left!11716 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))) (right!12046 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))))

(declare-fun b!1337907 () Bool)

(declare-fun e!856976 () Conc!4499)

(assert (=> b!1337907 (= e!856976 call!90346)))

(declare-fun bm!90338 () Bool)

(declare-fun call!90350 () Int)

(assert (=> bm!90338 (= call!90350 (height!635 (ite c!219197 (left!11716 (c!218765 (charsOf!1339 t1!34))) (left!11716 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))

(declare-fun bm!90339 () Bool)

(declare-fun call!90340 () Conc!4499)

(assert (=> bm!90339 (= call!90340 call!90354)))

(declare-fun bm!90340 () Bool)

(assert (=> bm!90340 (= call!90351 call!90347)))

(declare-fun bm!90341 () Bool)

(declare-fun call!90352 () Conc!4499)

(assert (=> bm!90341 (= call!90352 call!90348)))

(declare-fun b!1337908 () Bool)

(declare-fun call!90341 () Int)

(assert (=> b!1337908 (= c!219200 (>= call!90341 call!90350))))

(declare-fun e!856980 () Conc!4499)

(assert (=> b!1337908 (= e!856980 e!856977)))

(declare-fun b!1337909 () Bool)

(assert (=> b!1337909 (= e!856976 call!90346)))

(declare-fun bm!90342 () Bool)

(assert (=> bm!90342 (= call!90348 call!90345)))

(declare-fun bm!90343 () Bool)

(assert (=> bm!90343 (= call!90339 (height!635 (ite c!219197 lt!442785 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))

(declare-fun bm!90344 () Bool)

(assert (=> bm!90344 (= call!90345 call!90353)))

(declare-fun b!1337910 () Bool)

(assert (=> b!1337910 (= e!856982 e!856976)))

(assert (=> b!1337910 (= lt!442785 call!90344)))

(assert (=> b!1337910 (= c!219196 (= call!90339 (- call!90343 3)))))

(declare-fun bm!90345 () Bool)

(assert (=> bm!90345 (= call!90343 (height!635 (ite c!219197 (c!218765 (charsOf!1339 t1!34)) lt!442782)))))

(declare-fun b!1337911 () Bool)

(assert (=> b!1337911 (= e!856979 (c!218765 (charsOf!1339 t1!34)))))

(declare-fun b!1337912 () Bool)

(declare-fun res!603113 () Bool)

(assert (=> b!1337912 (=> (not res!603113) (not e!856985))))

(assert (=> b!1337912 (= res!603113 (>= (height!635 lt!442784) (max!0 (height!635 (c!218765 (charsOf!1339 t1!34))) (height!635 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))

(declare-fun bm!90346 () Bool)

(assert (=> bm!90346 (= call!90349 (<>!89 (ite c!219197 (ite c!219196 (left!11716 (c!218765 (charsOf!1339 t1!34))) call!90352) (ite c!219200 call!90351 (ite c!219202 call!90342 lt!442782))) (ite c!219197 (ite c!219196 call!90352 lt!442785) (ite (or c!219200 c!219202) (right!12046 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))) call!90342))))))

(declare-fun bm!90347 () Bool)

(assert (=> bm!90347 (= call!90344 call!90347)))

(declare-fun bm!90348 () Bool)

(assert (=> bm!90348 (= call!90354 call!90349)))

(declare-fun b!1337913 () Bool)

(assert (=> b!1337913 (= e!856983 call!90340)))

(declare-fun bm!90349 () Bool)

(assert (=> bm!90349 (= call!90341 (height!635 (ite c!219197 (right!12046 (c!218765 (charsOf!1339 t1!34))) (right!12046 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))

(declare-fun b!1337914 () Bool)

(assert (=> b!1337914 (= e!856983 call!90340)))

(declare-fun b!1337915 () Bool)

(assert (=> b!1337915 (= e!856981 e!856980)))

(assert (=> b!1337915 (= c!219197 (< lt!442783 (- 1)))))

(declare-fun b!1337916 () Bool)

(assert (=> b!1337916 (= c!219195 (>= call!90350 call!90341))))

(assert (=> b!1337916 (= e!856980 e!856982)))

(assert (= (and d!377068 res!603111) b!1337897))

(assert (= (and d!377068 c!219201) b!1337898))

(assert (= (and d!377068 (not c!219201)) b!1337900))

(assert (= (and b!1337900 c!219198) b!1337911))

(assert (= (and b!1337900 (not c!219198)) b!1337906))

(assert (= (and b!1337906 c!219199) b!1337902))

(assert (= (and b!1337906 (not c!219199)) b!1337915))

(assert (= (and b!1337915 c!219197) b!1337916))

(assert (= (and b!1337915 (not c!219197)) b!1337908))

(assert (= (and b!1337916 c!219195) b!1337899))

(assert (= (and b!1337916 (not c!219195)) b!1337910))

(assert (= (and b!1337910 c!219196) b!1337907))

(assert (= (and b!1337910 (not c!219196)) b!1337909))

(assert (= (or b!1337907 b!1337909) bm!90341))

(assert (= (or b!1337907 b!1337909) bm!90334))

(assert (= (or b!1337899 b!1337910) bm!90347))

(assert (= (or b!1337899 bm!90341) bm!90342))

(assert (= (and b!1337908 c!219200) b!1337904))

(assert (= (and b!1337908 (not c!219200)) b!1337901))

(assert (= (and b!1337901 c!219202) b!1337913))

(assert (= (and b!1337901 (not c!219202)) b!1337914))

(assert (= (or b!1337913 b!1337914) bm!90336))

(assert (= (or b!1337913 b!1337914) bm!90339))

(assert (= (or b!1337904 b!1337901) bm!90340))

(assert (= (or b!1337904 bm!90339) bm!90348))

(assert (= (or b!1337910 b!1337901) bm!90343))

(assert (= (or b!1337916 b!1337908) bm!90338))

(assert (= (or bm!90347 bm!90340) bm!90335))

(assert (= (or bm!90342 bm!90336) bm!90344))

(assert (= (or bm!90334 bm!90348) bm!90346))

(assert (= (or b!1337910 b!1337901) bm!90345))

(assert (= (or b!1337916 b!1337908) bm!90349))

(assert (= (or b!1337902 bm!90344) bm!90337))

(assert (= (and d!377068 res!603114) b!1337905))

(assert (= (and b!1337905 res!603115) b!1337896))

(assert (= (and b!1337896 res!603112) b!1337912))

(assert (= (and b!1337912 res!603113) b!1337903))

(declare-fun m!1495775 () Bool)

(assert (=> b!1337912 m!1495775))

(assert (=> b!1337912 m!1494623))

(assert (=> b!1337912 m!1494625))

(assert (=> b!1337912 m!1494623))

(assert (=> b!1337912 m!1494625))

(assert (=> b!1337912 m!1494627))

(assert (=> d!377068 m!1494617))

(declare-fun m!1495777 () Bool)

(assert (=> d!377068 m!1495777))

(declare-fun m!1495783 () Bool)

(assert (=> bm!90337 m!1495783))

(assert (=> b!1337906 m!1494625))

(assert (=> b!1337906 m!1494623))

(declare-fun m!1495791 () Bool)

(assert (=> bm!90335 m!1495791))

(assert (=> b!1337896 m!1495775))

(assert (=> b!1337896 m!1494623))

(assert (=> b!1337896 m!1494625))

(assert (=> b!1337896 m!1494623))

(assert (=> b!1337896 m!1494625))

(assert (=> b!1337896 m!1494627))

(declare-fun m!1495797 () Bool)

(assert (=> bm!90346 m!1495797))

(declare-fun m!1495799 () Bool)

(assert (=> bm!90345 m!1495799))

(declare-fun m!1495801 () Bool)

(assert (=> bm!90349 m!1495801))

(declare-fun m!1495803 () Bool)

(assert (=> b!1337903 m!1495803))

(declare-fun m!1495805 () Bool)

(assert (=> b!1337903 m!1495805))

(declare-fun m!1495807 () Bool)

(assert (=> b!1337903 m!1495807))

(assert (=> b!1337903 m!1495805))

(assert (=> b!1337903 m!1495807))

(declare-fun m!1495809 () Bool)

(assert (=> b!1337903 m!1495809))

(declare-fun m!1495811 () Bool)

(assert (=> b!1337897 m!1495811))

(declare-fun m!1495813 () Bool)

(assert (=> b!1337905 m!1495813))

(declare-fun m!1495815 () Bool)

(assert (=> bm!90343 m!1495815))

(declare-fun m!1495817 () Bool)

(assert (=> bm!90338 m!1495817))

(assert (=> b!1336875 d!377068))

(declare-fun d!377170 () Bool)

(assert (=> d!377170 (= (height!635 (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))) (ite ((_ is Empty!4499) (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))) 0 (ite ((_ is Leaf!6879) (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))) 1 (cheight!4710 (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))))

(assert (=> b!1336875 d!377170))

(declare-fun d!377172 () Bool)

(assert (=> d!377172 (= (height!635 (c!218765 (charsOf!1339 t1!34))) (ite ((_ is Empty!4499) (c!218765 (charsOf!1339 t1!34))) 0 (ite ((_ is Leaf!6879) (c!218765 (charsOf!1339 t1!34))) 1 (cheight!4710 (c!218765 (charsOf!1339 t1!34))))))))

(assert (=> b!1336875 d!377172))

(declare-fun b!1337947 () Bool)

(declare-fun e!857002 () Bool)

(assert (=> b!1337947 (= e!857002 (isPrefix!1095 (tail!1918 (tail!1918 lt!442344)) (tail!1918 (tail!1918 lt!442371))))))

(declare-fun d!377174 () Bool)

(declare-fun e!857001 () Bool)

(assert (=> d!377174 e!857001))

(declare-fun res!603126 () Bool)

(assert (=> d!377174 (=> res!603126 e!857001)))

(declare-fun lt!442791 () Bool)

(assert (=> d!377174 (= res!603126 (not lt!442791))))

(declare-fun e!857000 () Bool)

(assert (=> d!377174 (= lt!442791 e!857000)))

(declare-fun res!603127 () Bool)

(assert (=> d!377174 (=> res!603127 e!857000)))

(assert (=> d!377174 (= res!603127 ((_ is Nil!13651) (tail!1918 lt!442344)))))

(assert (=> d!377174 (= (isPrefix!1095 (tail!1918 lt!442344) (tail!1918 lt!442371)) lt!442791)))

(declare-fun b!1337948 () Bool)

(assert (=> b!1337948 (= e!857001 (>= (size!11118 (tail!1918 lt!442371)) (size!11118 (tail!1918 lt!442344))))))

(declare-fun b!1337946 () Bool)

(declare-fun res!603125 () Bool)

(assert (=> b!1337946 (=> (not res!603125) (not e!857002))))

(assert (=> b!1337946 (= res!603125 (= (head!2369 (tail!1918 lt!442344)) (head!2369 (tail!1918 lt!442371))))))

(declare-fun b!1337945 () Bool)

(assert (=> b!1337945 (= e!857000 e!857002)))

(declare-fun res!603124 () Bool)

(assert (=> b!1337945 (=> (not res!603124) (not e!857002))))

(assert (=> b!1337945 (= res!603124 (not ((_ is Nil!13651) (tail!1918 lt!442371))))))

(assert (= (and d!377174 (not res!603127)) b!1337945))

(assert (= (and b!1337945 res!603124) b!1337946))

(assert (= (and b!1337946 res!603125) b!1337947))

(assert (= (and d!377174 (not res!603126)) b!1337948))

(assert (=> b!1337947 m!1494109))

(assert (=> b!1337947 m!1495079))

(assert (=> b!1337947 m!1494459))

(assert (=> b!1337947 m!1495405))

(assert (=> b!1337947 m!1495079))

(assert (=> b!1337947 m!1495405))

(declare-fun m!1495827 () Bool)

(assert (=> b!1337947 m!1495827))

(assert (=> b!1337948 m!1494459))

(declare-fun m!1495829 () Bool)

(assert (=> b!1337948 m!1495829))

(assert (=> b!1337948 m!1494109))

(declare-fun m!1495831 () Bool)

(assert (=> b!1337948 m!1495831))

(assert (=> b!1337946 m!1494109))

(assert (=> b!1337946 m!1495075))

(assert (=> b!1337946 m!1494459))

(assert (=> b!1337946 m!1495409))

(assert (=> b!1337187 d!377174))

(assert (=> b!1337187 d!376874))

(assert (=> b!1337187 d!376982))

(assert (=> b!1337192 d!376920))

(declare-fun b!1337976 () Bool)

(declare-fun res!603146 () Bool)

(declare-fun e!857017 () Bool)

(assert (=> b!1337976 (=> (not res!603146) (not e!857017))))

(assert (=> b!1337976 (= res!603146 (not (isEmpty!8148 (left!11716 (c!218765 lt!442599)))))))

(declare-fun b!1337977 () Bool)

(declare-fun res!603147 () Bool)

(assert (=> b!1337977 (=> (not res!603147) (not e!857017))))

(assert (=> b!1337977 (= res!603147 (isBalanced!1305 (left!11716 (c!218765 lt!442599))))))

(declare-fun b!1337978 () Bool)

(declare-fun res!603148 () Bool)

(assert (=> b!1337978 (=> (not res!603148) (not e!857017))))

(assert (=> b!1337978 (= res!603148 (<= (- (height!635 (left!11716 (c!218765 lt!442599))) (height!635 (right!12046 (c!218765 lt!442599)))) 1))))

(declare-fun b!1337979 () Bool)

(declare-fun e!857016 () Bool)

(assert (=> b!1337979 (= e!857016 e!857017)))

(declare-fun res!603145 () Bool)

(assert (=> b!1337979 (=> (not res!603145) (not e!857017))))

(assert (=> b!1337979 (= res!603145 (<= (- 1) (- (height!635 (left!11716 (c!218765 lt!442599))) (height!635 (right!12046 (c!218765 lt!442599))))))))

(declare-fun d!377180 () Bool)

(declare-fun res!603150 () Bool)

(assert (=> d!377180 (=> res!603150 e!857016)))

(assert (=> d!377180 (= res!603150 (not ((_ is Node!4499) (c!218765 lt!442599))))))

(assert (=> d!377180 (= (isBalanced!1305 (c!218765 lt!442599)) e!857016)))

(declare-fun b!1337980 () Bool)

(declare-fun res!603149 () Bool)

(assert (=> b!1337980 (=> (not res!603149) (not e!857017))))

(assert (=> b!1337980 (= res!603149 (isBalanced!1305 (right!12046 (c!218765 lt!442599))))))

(declare-fun b!1337981 () Bool)

(assert (=> b!1337981 (= e!857017 (not (isEmpty!8148 (right!12046 (c!218765 lt!442599)))))))

(assert (= (and d!377180 (not res!603150)) b!1337979))

(assert (= (and b!1337979 res!603145) b!1337978))

(assert (= (and b!1337978 res!603148) b!1337977))

(assert (= (and b!1337977 res!603147) b!1337980))

(assert (= (and b!1337980 res!603149) b!1337976))

(assert (= (and b!1337976 res!603146) b!1337981))

(declare-fun m!1495861 () Bool)

(assert (=> b!1337981 m!1495861))

(declare-fun m!1495863 () Bool)

(assert (=> b!1337977 m!1495863))

(declare-fun m!1495865 () Bool)

(assert (=> b!1337979 m!1495865))

(declare-fun m!1495867 () Bool)

(assert (=> b!1337979 m!1495867))

(declare-fun m!1495869 () Bool)

(assert (=> b!1337976 m!1495869))

(assert (=> b!1337978 m!1495865))

(assert (=> b!1337978 m!1495867))

(declare-fun m!1495871 () Bool)

(assert (=> b!1337980 m!1495871))

(assert (=> b!1336950 d!377180))

(declare-fun d!377200 () Bool)

(declare-fun c!219226 () Bool)

(assert (=> d!377200 (= c!219226 ((_ is Nil!13650) (text!17648 (value!77092 t2!34))))))

(declare-fun e!857026 () Int)

(assert (=> d!377200 (= (charsToBigInt!0 (text!17648 (value!77092 t2!34)) 0) e!857026)))

(declare-fun b!1337998 () Bool)

(assert (=> b!1337998 (= e!857026 0)))

(declare-fun b!1337999 () Bool)

(declare-fun charToBigInt!0 ((_ BitVec 16)) Int)

(assert (=> b!1337999 (= e!857026 (charsToBigInt!0 (t!119281 (text!17648 (value!77092 t2!34))) (+ (* 0 10) (charToBigInt!0 (h!19051 (text!17648 (value!77092 t2!34)))))))))

(assert (= (and d!377200 c!219226) b!1337998))

(assert (= (and d!377200 (not c!219226)) b!1337999))

(declare-fun m!1495889 () Bool)

(assert (=> b!1337999 m!1495889))

(declare-fun m!1495891 () Bool)

(assert (=> b!1337999 m!1495891))

(assert (=> d!376726 d!377200))

(declare-fun d!377214 () Bool)

(declare-fun lt!442799 () C!7652)

(assert (=> d!377214 (contains!2489 (tail!1918 (list!5187 lt!442342)) lt!442799)))

(declare-fun e!857028 () C!7652)

(assert (=> d!377214 (= lt!442799 e!857028)))

(declare-fun c!219227 () Bool)

(assert (=> d!377214 (= c!219227 (= (- 0 1) 0))))

(declare-fun e!857027 () Bool)

(assert (=> d!377214 e!857027))

(declare-fun res!603151 () Bool)

(assert (=> d!377214 (=> (not res!603151) (not e!857027))))

(assert (=> d!377214 (= res!603151 (<= 0 (- 0 1)))))

(assert (=> d!377214 (= (apply!3200 (tail!1918 (list!5187 lt!442342)) (- 0 1)) lt!442799)))

(declare-fun b!1338000 () Bool)

(assert (=> b!1338000 (= e!857027 (< (- 0 1) (size!11118 (tail!1918 (list!5187 lt!442342)))))))

(declare-fun b!1338001 () Bool)

(assert (=> b!1338001 (= e!857028 (head!2369 (tail!1918 (list!5187 lt!442342))))))

(declare-fun b!1338002 () Bool)

(assert (=> b!1338002 (= e!857028 (apply!3200 (tail!1918 (tail!1918 (list!5187 lt!442342))) (- (- 0 1) 1)))))

(assert (= (and d!377214 res!603151) b!1338000))

(assert (= (and d!377214 c!219227) b!1338001))

(assert (= (and d!377214 (not c!219227)) b!1338002))

(assert (=> d!377214 m!1494797))

(declare-fun m!1495893 () Bool)

(assert (=> d!377214 m!1495893))

(assert (=> b!1338000 m!1494797))

(declare-fun m!1495895 () Bool)

(assert (=> b!1338000 m!1495895))

(assert (=> b!1338001 m!1494797))

(declare-fun m!1495897 () Bool)

(assert (=> b!1338001 m!1495897))

(assert (=> b!1338002 m!1494797))

(declare-fun m!1495899 () Bool)

(assert (=> b!1338002 m!1495899))

(assert (=> b!1338002 m!1495899))

(declare-fun m!1495901 () Bool)

(assert (=> b!1338002 m!1495901))

(assert (=> b!1336968 d!377214))

(declare-fun d!377216 () Bool)

(assert (=> d!377216 (= (tail!1918 (list!5187 lt!442342)) (t!119282 (list!5187 lt!442342)))))

(assert (=> b!1336968 d!377216))

(declare-fun d!377218 () Bool)

(declare-fun lt!442804 () C!7652)

(assert (=> d!377218 (= lt!442804 (apply!3200 (list!5195 (xs!7214 (c!218765 lt!442341))) 0))))

(declare-fun choose!8202 (IArray!9003 Int) C!7652)

(assert (=> d!377218 (= lt!442804 (choose!8202 (xs!7214 (c!218765 lt!442341)) 0))))

(declare-fun e!857043 () Bool)

(assert (=> d!377218 e!857043))

(declare-fun res!603164 () Bool)

(assert (=> d!377218 (=> (not res!603164) (not e!857043))))

(assert (=> d!377218 (= res!603164 (<= 0 0))))

(assert (=> d!377218 (= (apply!3205 (xs!7214 (c!218765 lt!442341)) 0) lt!442804)))

(declare-fun b!1338019 () Bool)

(declare-fun size!11130 (IArray!9003) Int)

(assert (=> b!1338019 (= e!857043 (< 0 (size!11130 (xs!7214 (c!218765 lt!442341)))))))

(assert (= (and d!377218 res!603164) b!1338019))

(assert (=> d!377218 m!1495399))

(assert (=> d!377218 m!1495399))

(declare-fun m!1495903 () Bool)

(assert (=> d!377218 m!1495903))

(declare-fun m!1495905 () Bool)

(assert (=> d!377218 m!1495905))

(declare-fun m!1495907 () Bool)

(assert (=> b!1338019 m!1495907))

(assert (=> b!1336834 d!377218))

(declare-fun b!1338021 () Bool)

(declare-fun e!857044 () List!13717)

(declare-fun e!857045 () List!13717)

(assert (=> b!1338021 (= e!857044 e!857045)))

(declare-fun c!219231 () Bool)

(assert (=> b!1338021 (= c!219231 ((_ is Leaf!6879) (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))))

(declare-fun b!1338022 () Bool)

(assert (=> b!1338022 (= e!857045 (list!5195 (xs!7214 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))))))

(declare-fun d!377220 () Bool)

(declare-fun c!219230 () Bool)

(assert (=> d!377220 (= c!219230 ((_ is Empty!4499) (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))))

(assert (=> d!377220 (= (list!5191 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))) e!857044)))

(declare-fun b!1338020 () Bool)

(assert (=> b!1338020 (= e!857044 Nil!13651)))

(declare-fun b!1338023 () Bool)

(assert (=> b!1338023 (= e!857045 (++!3488 (list!5191 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))) (list!5191 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))))))

(assert (= (and d!377220 c!219230) b!1338020))

(assert (= (and d!377220 (not c!219230)) b!1338021))

(assert (= (and b!1338021 c!219231) b!1338022))

(assert (= (and b!1338021 (not c!219231)) b!1338023))

(assert (=> b!1338022 m!1495485))

(declare-fun m!1495909 () Bool)

(assert (=> b!1338023 m!1495909))

(declare-fun m!1495911 () Bool)

(assert (=> b!1338023 m!1495911))

(assert (=> b!1338023 m!1495909))

(assert (=> b!1338023 m!1495911))

(declare-fun m!1495913 () Bool)

(assert (=> b!1338023 m!1495913))

(assert (=> d!376812 d!377220))

(declare-fun d!377222 () Bool)

(declare-fun lt!442805 () Int)

(assert (=> d!377222 (>= lt!442805 0)))

(declare-fun e!857046 () Int)

(assert (=> d!377222 (= lt!442805 e!857046)))

(declare-fun c!219232 () Bool)

(assert (=> d!377222 (= c!219232 ((_ is Nil!13651) lt!442656))))

(assert (=> d!377222 (= (size!11118 lt!442656) lt!442805)))

(declare-fun b!1338024 () Bool)

(assert (=> b!1338024 (= e!857046 0)))

(declare-fun b!1338025 () Bool)

(assert (=> b!1338025 (= e!857046 (+ 1 (size!11118 (t!119282 lt!442656))))))

(assert (= (and d!377222 c!219232) b!1338024))

(assert (= (and d!377222 (not c!219232)) b!1338025))

(declare-fun m!1495915 () Bool)

(assert (=> b!1338025 m!1495915))

(assert (=> b!1337227 d!377222))

(declare-fun d!377224 () Bool)

(declare-fun lt!442806 () Int)

(assert (=> d!377224 (>= lt!442806 0)))

(declare-fun e!857047 () Int)

(assert (=> d!377224 (= lt!442806 e!857047)))

(declare-fun c!219233 () Bool)

(assert (=> d!377224 (= c!219233 ((_ is Nil!13651) (t!119282 lt!442344)))))

(assert (=> d!377224 (= (size!11118 (t!119282 lt!442344)) lt!442806)))

(declare-fun b!1338026 () Bool)

(assert (=> b!1338026 (= e!857047 0)))

(declare-fun b!1338027 () Bool)

(assert (=> b!1338027 (= e!857047 (+ 1 (size!11118 (t!119282 (t!119282 lt!442344)))))))

(assert (= (and d!377224 c!219233) b!1338026))

(assert (= (and d!377224 (not c!219233)) b!1338027))

(assert (=> b!1338027 m!1495293))

(assert (=> b!1337227 d!377224))

(assert (=> b!1337227 d!376732))

(declare-fun c!219242 () Bool)

(declare-fun d!377226 () Bool)

(assert (=> d!377226 (= c!219242 (= lt!442586 (size!11114 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))

(declare-fun e!857064 () Bool)

(assert (=> d!377226 (= (prefixMatchZipperSequence!210 lt!442591 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) lt!442586) e!857064)))

(declare-fun b!1338053 () Bool)

(declare-fun lostCauseZipper!14 ((InoxSet Context!1174)) Bool)

(assert (=> b!1338053 (= e!857064 (not (lostCauseZipper!14 lt!442591)))))

(declare-fun b!1338054 () Bool)

(declare-fun derivationStepZipper!38 ((InoxSet Context!1174) C!7652) (InoxSet Context!1174))

(assert (=> b!1338054 (= e!857064 (prefixMatchZipperSequence!210 (derivationStepZipper!38 lt!442591 (apply!3195 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) lt!442586)) (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) (+ lt!442586 1)))))

(assert (= (and d!377226 c!219242) b!1338053))

(assert (= (and d!377226 (not c!219242)) b!1338054))

(assert (=> d!377226 m!1494139))

(declare-fun m!1495943 () Bool)

(assert (=> d!377226 m!1495943))

(declare-fun m!1495945 () Bool)

(assert (=> b!1338053 m!1495945))

(assert (=> b!1338054 m!1494139))

(declare-fun m!1495947 () Bool)

(assert (=> b!1338054 m!1495947))

(assert (=> b!1338054 m!1495947))

(declare-fun m!1495949 () Bool)

(assert (=> b!1338054 m!1495949))

(assert (=> b!1338054 m!1495949))

(assert (=> b!1338054 m!1494139))

(declare-fun m!1495951 () Bool)

(assert (=> b!1338054 m!1495951))

(assert (=> d!376634 d!377226))

(declare-fun d!377234 () Bool)

(assert (=> d!377234 (= (prefixMatchZipper!58 lt!442591 (dropList!378 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) lt!442586)) (prefixMatchZipperSequence!210 lt!442591 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) lt!442586))))

(declare-fun lt!442815 () Unit!19781)

(declare-fun choose!8203 ((InoxSet Context!1174) BalanceConc!8938 Int) Unit!19781)

(assert (=> d!377234 (= lt!442815 (choose!8203 lt!442591 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) lt!442586))))

(declare-fun e!857100 () Bool)

(assert (=> d!377234 e!857100))

(declare-fun res!603207 () Bool)

(assert (=> d!377234 (=> (not res!603207) (not e!857100))))

(assert (=> d!377234 (= res!603207 (>= lt!442586 0))))

(assert (=> d!377234 (= (lemmaprefixMatchZipperSequenceEquivalent!58 lt!442591 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) lt!442586) lt!442815)))

(declare-fun b!1338092 () Bool)

(assert (=> b!1338092 (= e!857100 (<= lt!442586 (size!11114 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))

(assert (= (and d!377234 res!603207) b!1338092))

(assert (=> d!377234 m!1494139))

(assert (=> d!377234 m!1494719))

(assert (=> d!377234 m!1494719))

(assert (=> d!377234 m!1494721))

(assert (=> d!377234 m!1494139))

(assert (=> d!377234 m!1494713))

(assert (=> d!377234 m!1494139))

(declare-fun m!1496003 () Bool)

(assert (=> d!377234 m!1496003))

(assert (=> b!1338092 m!1494139))

(assert (=> b!1338092 m!1495943))

(assert (=> d!376634 d!377234))

(declare-fun d!377248 () Bool)

(declare-fun c!219247 () Bool)

(assert (=> d!377248 (= c!219247 (= 0 (size!11114 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))

(declare-fun e!857105 () Bool)

(assert (=> d!377248 (= (prefixMatchZipperSequence!210 (focus!78 (rulesRegex!250 thiss!19762 rules!2550)) (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) 0) e!857105)))

(declare-fun b!1338099 () Bool)

(assert (=> b!1338099 (= e!857105 (not (lostCauseZipper!14 (focus!78 (rulesRegex!250 thiss!19762 rules!2550)))))))

(declare-fun b!1338100 () Bool)

(assert (=> b!1338100 (= e!857105 (prefixMatchZipperSequence!210 (derivationStepZipper!38 (focus!78 (rulesRegex!250 thiss!19762 rules!2550)) (apply!3195 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) 0)) (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) (+ 0 1)))))

(assert (= (and d!377248 c!219247) b!1338099))

(assert (= (and d!377248 (not c!219247)) b!1338100))

(assert (=> d!377248 m!1494139))

(assert (=> d!377248 m!1495943))

(assert (=> b!1338099 m!1494723))

(declare-fun m!1496011 () Bool)

(assert (=> b!1338099 m!1496011))

(assert (=> b!1338100 m!1494139))

(declare-fun m!1496013 () Bool)

(assert (=> b!1338100 m!1496013))

(assert (=> b!1338100 m!1494723))

(assert (=> b!1338100 m!1496013))

(declare-fun m!1496019 () Bool)

(assert (=> b!1338100 m!1496019))

(assert (=> b!1338100 m!1496019))

(assert (=> b!1338100 m!1494139))

(declare-fun m!1496031 () Bool)

(assert (=> b!1338100 m!1496031))

(assert (=> d!376634 d!377248))

(declare-fun d!377256 () Bool)

(declare-fun c!219249 () Bool)

(assert (=> d!377256 (= c!219249 (isEmpty!8143 (list!5187 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))

(declare-fun e!857108 () Bool)

(assert (=> d!377256 (= (prefixMatch!190 (rulesRegex!250 thiss!19762 rules!2550) (list!5187 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))) e!857108)))

(declare-fun b!1338105 () Bool)

(assert (=> b!1338105 (= e!857108 (not (lostCause!299 (rulesRegex!250 thiss!19762 rules!2550))))))

(declare-fun b!1338106 () Bool)

(assert (=> b!1338106 (= e!857108 (prefixMatch!190 (derivativeStep!923 (rulesRegex!250 thiss!19762 rules!2550) (head!2369 (list!5187 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))) (tail!1918 (list!5187 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))

(assert (= (and d!377256 c!219249) b!1338105))

(assert (= (and d!377256 (not c!219249)) b!1338106))

(assert (=> d!377256 m!1494709))

(declare-fun m!1496033 () Bool)

(assert (=> d!377256 m!1496033))

(assert (=> b!1338105 m!1493753))

(declare-fun m!1496035 () Bool)

(assert (=> b!1338105 m!1496035))

(assert (=> b!1338106 m!1494709))

(declare-fun m!1496037 () Bool)

(assert (=> b!1338106 m!1496037))

(assert (=> b!1338106 m!1493753))

(assert (=> b!1338106 m!1496037))

(declare-fun m!1496039 () Bool)

(assert (=> b!1338106 m!1496039))

(assert (=> b!1338106 m!1494709))

(declare-fun m!1496041 () Bool)

(assert (=> b!1338106 m!1496041))

(assert (=> b!1338106 m!1496039))

(assert (=> b!1338106 m!1496041))

(declare-fun m!1496043 () Bool)

(assert (=> b!1338106 m!1496043))

(assert (=> d!376634 d!377256))

(declare-fun d!377262 () Bool)

(declare-fun e!857122 () Bool)

(assert (=> d!377262 e!857122))

(declare-fun res!603220 () Bool)

(assert (=> d!377262 (=> (not res!603220) (not e!857122))))

(assert (=> d!377262 (= res!603220 (validRegex!1585 (rulesRegex!250 thiss!19762 rules!2550)))))

(assert (=> d!377262 (= (focus!78 (rulesRegex!250 thiss!19762 rules!2550)) (store ((as const (Array Context!1174 Bool)) false) (Context!1175 (Cons!13657 (rulesRegex!250 thiss!19762 rules!2550) Nil!13657)) true))))

(declare-fun b!1338130 () Bool)

(declare-fun unfocusZipper!14 (List!13726) Regex!3681)

(assert (=> b!1338130 (= e!857122 (= (unfocusZipper!14 (toList!742 (store ((as const (Array Context!1174 Bool)) false) (Context!1175 (Cons!13657 (rulesRegex!250 thiss!19762 rules!2550) Nil!13657)) true))) (rulesRegex!250 thiss!19762 rules!2550)))))

(assert (= (and d!377262 res!603220) b!1338130))

(assert (=> d!377262 m!1493753))

(assert (=> d!377262 m!1494715))

(declare-fun m!1496095 () Bool)

(assert (=> d!377262 m!1496095))

(assert (=> b!1338130 m!1496095))

(assert (=> b!1338130 m!1496095))

(declare-fun m!1496097 () Bool)

(assert (=> b!1338130 m!1496097))

(assert (=> b!1338130 m!1496097))

(declare-fun m!1496101 () Bool)

(assert (=> b!1338130 m!1496101))

(assert (=> d!376634 d!377262))

(declare-fun b!1338132 () Bool)

(declare-fun e!857129 () Bool)

(declare-fun e!857125 () Bool)

(assert (=> b!1338132 (= e!857129 e!857125)))

(declare-fun res!603224 () Bool)

(assert (=> b!1338132 (= res!603224 (not (nullable!1169 (reg!4010 (rulesRegex!250 thiss!19762 rules!2550)))))))

(assert (=> b!1338132 (=> (not res!603224) (not e!857125))))

(declare-fun b!1338133 () Bool)

(declare-fun res!603226 () Bool)

(declare-fun e!857127 () Bool)

(assert (=> b!1338133 (=> res!603226 e!857127)))

(assert (=> b!1338133 (= res!603226 (not ((_ is Concat!6139) (rulesRegex!250 thiss!19762 rules!2550))))))

(declare-fun e!857126 () Bool)

(assert (=> b!1338133 (= e!857126 e!857127)))

(declare-fun b!1338134 () Bool)

(declare-fun e!857128 () Bool)

(assert (=> b!1338134 (= e!857127 e!857128)))

(declare-fun res!603222 () Bool)

(assert (=> b!1338134 (=> (not res!603222) (not e!857128))))

(declare-fun call!90374 () Bool)

(assert (=> b!1338134 (= res!603222 call!90374)))

(declare-fun call!90373 () Bool)

(declare-fun c!219259 () Bool)

(declare-fun c!219258 () Bool)

(declare-fun bm!90367 () Bool)

(assert (=> bm!90367 (= call!90373 (validRegex!1585 (ite c!219259 (reg!4010 (rulesRegex!250 thiss!19762 rules!2550)) (ite c!219258 (regOne!7875 (rulesRegex!250 thiss!19762 rules!2550)) (regOne!7874 (rulesRegex!250 thiss!19762 rules!2550))))))))

(declare-fun d!377280 () Bool)

(declare-fun res!603223 () Bool)

(declare-fun e!857124 () Bool)

(assert (=> d!377280 (=> res!603223 e!857124)))

(assert (=> d!377280 (= res!603223 ((_ is ElementMatch!3681) (rulesRegex!250 thiss!19762 rules!2550)))))

(assert (=> d!377280 (= (validRegex!1585 (rulesRegex!250 thiss!19762 rules!2550)) e!857124)))

(declare-fun bm!90368 () Bool)

(assert (=> bm!90368 (= call!90374 call!90373)))

(declare-fun call!90372 () Bool)

(declare-fun bm!90369 () Bool)

(assert (=> bm!90369 (= call!90372 (validRegex!1585 (ite c!219258 (regTwo!7875 (rulesRegex!250 thiss!19762 rules!2550)) (regTwo!7874 (rulesRegex!250 thiss!19762 rules!2550)))))))

(declare-fun b!1338135 () Bool)

(assert (=> b!1338135 (= e!857125 call!90373)))

(declare-fun b!1338136 () Bool)

(assert (=> b!1338136 (= e!857129 e!857126)))

(assert (=> b!1338136 (= c!219258 ((_ is Union!3681) (rulesRegex!250 thiss!19762 rules!2550)))))

(declare-fun b!1338137 () Bool)

(declare-fun res!603225 () Bool)

(declare-fun e!857130 () Bool)

(assert (=> b!1338137 (=> (not res!603225) (not e!857130))))

(assert (=> b!1338137 (= res!603225 call!90374)))

(assert (=> b!1338137 (= e!857126 e!857130)))

(declare-fun b!1338138 () Bool)

(assert (=> b!1338138 (= e!857124 e!857129)))

(assert (=> b!1338138 (= c!219259 ((_ is Star!3681) (rulesRegex!250 thiss!19762 rules!2550)))))

(declare-fun b!1338139 () Bool)

(assert (=> b!1338139 (= e!857128 call!90372)))

(declare-fun b!1338140 () Bool)

(assert (=> b!1338140 (= e!857130 call!90372)))

(assert (= (and d!377280 (not res!603223)) b!1338138))

(assert (= (and b!1338138 c!219259) b!1338132))

(assert (= (and b!1338138 (not c!219259)) b!1338136))

(assert (= (and b!1338132 res!603224) b!1338135))

(assert (= (and b!1338136 c!219258) b!1338137))

(assert (= (and b!1338136 (not c!219258)) b!1338133))

(assert (= (and b!1338137 res!603225) b!1338140))

(assert (= (and b!1338133 (not res!603226)) b!1338134))

(assert (= (and b!1338134 res!603222) b!1338139))

(assert (= (or b!1338137 b!1338134) bm!90368))

(assert (= (or b!1338140 b!1338139) bm!90369))

(assert (= (or b!1338135 bm!90368) bm!90367))

(declare-fun m!1496107 () Bool)

(assert (=> b!1338132 m!1496107))

(declare-fun m!1496109 () Bool)

(assert (=> bm!90367 m!1496109))

(declare-fun m!1496111 () Bool)

(assert (=> bm!90369 m!1496111))

(assert (=> d!376634 d!377280))

(declare-fun d!377284 () Bool)

(declare-fun c!219260 () Bool)

(assert (=> d!377284 (= c!219260 (isEmpty!8143 lt!442589))))

(declare-fun e!857131 () Bool)

(assert (=> d!377284 (= (prefixMatch!190 (rulesRegex!250 thiss!19762 rules!2550) lt!442589) e!857131)))

(declare-fun b!1338141 () Bool)

(assert (=> b!1338141 (= e!857131 (not (lostCause!299 (rulesRegex!250 thiss!19762 rules!2550))))))

(declare-fun b!1338142 () Bool)

(assert (=> b!1338142 (= e!857131 (prefixMatch!190 (derivativeStep!923 (rulesRegex!250 thiss!19762 rules!2550) (head!2369 lt!442589)) (tail!1918 lt!442589)))))

(assert (= (and d!377284 c!219260) b!1338141))

(assert (= (and d!377284 (not c!219260)) b!1338142))

(declare-fun m!1496113 () Bool)

(assert (=> d!377284 m!1496113))

(assert (=> b!1338141 m!1493753))

(assert (=> b!1338141 m!1496035))

(declare-fun m!1496115 () Bool)

(assert (=> b!1338142 m!1496115))

(assert (=> b!1338142 m!1493753))

(assert (=> b!1338142 m!1496115))

(declare-fun m!1496117 () Bool)

(assert (=> b!1338142 m!1496117))

(declare-fun m!1496119 () Bool)

(assert (=> b!1338142 m!1496119))

(assert (=> b!1338142 m!1496117))

(assert (=> b!1338142 m!1496119))

(declare-fun m!1496121 () Bool)

(assert (=> b!1338142 m!1496121))

(assert (=> d!376634 d!377284))

(declare-fun d!377286 () Bool)

(declare-fun e!857141 () Bool)

(assert (=> d!377286 e!857141))

(declare-fun res!603236 () Bool)

(assert (=> d!377286 (=> (not res!603236) (not e!857141))))

(declare-fun lt!442830 () List!13726)

(declare-fun noDuplicate!217 (List!13726) Bool)

(assert (=> d!377286 (= res!603236 (noDuplicate!217 lt!442830))))

(declare-fun choose!8204 ((InoxSet Context!1174)) List!13726)

(assert (=> d!377286 (= lt!442830 (choose!8204 (focus!78 (rulesRegex!250 thiss!19762 rules!2550))))))

(assert (=> d!377286 (= (toList!742 (focus!78 (rulesRegex!250 thiss!19762 rules!2550))) lt!442830)))

(declare-fun b!1338152 () Bool)

(declare-fun content!1939 (List!13726) (InoxSet Context!1174))

(assert (=> b!1338152 (= e!857141 (= (content!1939 lt!442830) (focus!78 (rulesRegex!250 thiss!19762 rules!2550))))))

(assert (= (and d!377286 res!603236) b!1338152))

(declare-fun m!1496133 () Bool)

(assert (=> d!377286 m!1496133))

(assert (=> d!377286 m!1494723))

(declare-fun m!1496135 () Bool)

(assert (=> d!377286 m!1496135))

(declare-fun m!1496137 () Bool)

(assert (=> b!1338152 m!1496137))

(assert (=> d!376634 d!377286))

(declare-fun d!377294 () Bool)

(assert (=> d!377294 (= (prefixMatch!190 (rulesRegex!250 thiss!19762 rules!2550) lt!442589) (prefixMatchZipper!58 lt!442592 lt!442589))))

(declare-fun lt!442838 () Unit!19781)

(declare-fun choose!8205 ((InoxSet Context!1174) List!13726 Regex!3681 List!13717) Unit!19781)

(assert (=> d!377294 (= lt!442838 (choose!8205 lt!442592 lt!442595 (rulesRegex!250 thiss!19762 rules!2550) lt!442589))))

(assert (=> d!377294 (validRegex!1585 (rulesRegex!250 thiss!19762 rules!2550))))

(assert (=> d!377294 (= (prefixMatchZipperRegexEquiv!58 lt!442592 lt!442595 (rulesRegex!250 thiss!19762 rules!2550) lt!442589) lt!442838)))

(declare-fun bs!332122 () Bool)

(assert (= bs!332122 d!377294))

(assert (=> bs!332122 m!1493753))

(assert (=> bs!332122 m!1494731))

(assert (=> bs!332122 m!1494727))

(assert (=> bs!332122 m!1493753))

(declare-fun m!1496175 () Bool)

(assert (=> bs!332122 m!1496175))

(assert (=> bs!332122 m!1493753))

(assert (=> bs!332122 m!1494715))

(assert (=> d!376634 d!377294))

(declare-fun d!377308 () Bool)

(assert (=> d!377308 (= (list!5187 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))) (list!5191 (c!218765 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))

(declare-fun bs!332123 () Bool)

(assert (= bs!332123 d!377308))

(declare-fun m!1496177 () Bool)

(assert (=> bs!332123 m!1496177))

(assert (=> d!376634 d!377308))

(declare-fun c!219278 () Bool)

(declare-fun d!377310 () Bool)

(assert (=> d!377310 (= c!219278 (isEmpty!8143 (dropList!378 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) lt!442586)))))

(declare-fun e!857166 () Bool)

(assert (=> d!377310 (= (prefixMatchZipper!58 lt!442591 (dropList!378 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) lt!442586)) e!857166)))

(declare-fun b!1338194 () Bool)

(assert (=> b!1338194 (= e!857166 (not (lostCauseZipper!14 lt!442591)))))

(declare-fun b!1338195 () Bool)

(assert (=> b!1338195 (= e!857166 (prefixMatchZipper!58 (derivationStepZipper!38 lt!442591 (head!2369 (dropList!378 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) lt!442586))) (tail!1918 (dropList!378 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) lt!442586))))))

(assert (= (and d!377310 c!219278) b!1338194))

(assert (= (and d!377310 (not c!219278)) b!1338195))

(assert (=> d!377310 m!1494719))

(declare-fun m!1496179 () Bool)

(assert (=> d!377310 m!1496179))

(assert (=> b!1338194 m!1495945))

(assert (=> b!1338195 m!1494719))

(declare-fun m!1496181 () Bool)

(assert (=> b!1338195 m!1496181))

(assert (=> b!1338195 m!1496181))

(declare-fun m!1496183 () Bool)

(assert (=> b!1338195 m!1496183))

(assert (=> b!1338195 m!1494719))

(declare-fun m!1496185 () Bool)

(assert (=> b!1338195 m!1496185))

(assert (=> b!1338195 m!1496183))

(assert (=> b!1338195 m!1496185))

(declare-fun m!1496187 () Bool)

(assert (=> b!1338195 m!1496187))

(assert (=> d!376634 d!377310))

(declare-fun d!377312 () Bool)

(declare-fun c!219279 () Bool)

(assert (=> d!377312 (= c!219279 (isEmpty!8143 lt!442589))))

(declare-fun e!857167 () Bool)

(assert (=> d!377312 (= (prefixMatchZipper!58 lt!442592 lt!442589) e!857167)))

(declare-fun b!1338196 () Bool)

(assert (=> b!1338196 (= e!857167 (not (lostCauseZipper!14 lt!442592)))))

(declare-fun b!1338197 () Bool)

(assert (=> b!1338197 (= e!857167 (prefixMatchZipper!58 (derivationStepZipper!38 lt!442592 (head!2369 lt!442589)) (tail!1918 lt!442589)))))

(assert (= (and d!377312 c!219279) b!1338196))

(assert (= (and d!377312 (not c!219279)) b!1338197))

(assert (=> d!377312 m!1496113))

(declare-fun m!1496189 () Bool)

(assert (=> b!1338196 m!1496189))

(assert (=> b!1338197 m!1496115))

(assert (=> b!1338197 m!1496115))

(declare-fun m!1496191 () Bool)

(assert (=> b!1338197 m!1496191))

(assert (=> b!1338197 m!1496119))

(assert (=> b!1338197 m!1496191))

(assert (=> b!1338197 m!1496119))

(declare-fun m!1496193 () Bool)

(assert (=> b!1338197 m!1496193))

(assert (=> d!376634 d!377312))

(declare-fun d!377314 () Bool)

(declare-fun drop!666 (List!13717 Int) List!13717)

(assert (=> d!377314 (= (dropList!378 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) lt!442586) (drop!666 (list!5191 (c!218765 (++!3490 (charsOf!1339 t1!34) (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))) lt!442586))))

(declare-fun bs!332124 () Bool)

(assert (= bs!332124 d!377314))

(assert (=> bs!332124 m!1496177))

(assert (=> bs!332124 m!1496177))

(declare-fun m!1496209 () Bool)

(assert (=> bs!332124 m!1496209))

(assert (=> d!376634 d!377314))

(declare-fun d!377320 () Bool)

(assert (=> d!377320 (= (list!5190 (_1!7523 lt!442619)) (list!5194 (c!218804 (_1!7523 lt!442619))))))

(declare-fun bs!332125 () Bool)

(assert (= bs!332125 d!377320))

(declare-fun m!1496211 () Bool)

(assert (=> bs!332125 m!1496211))

(assert (=> b!1337135 d!377320))

(declare-fun d!377322 () Bool)

(declare-fun e!857177 () Bool)

(assert (=> d!377322 e!857177))

(declare-fun c!219287 () Bool)

(declare-fun lt!442847 () tuple2!13278)

(assert (=> d!377322 (= c!219287 (> (size!11127 (_1!7525 lt!442847)) 0))))

(declare-fun e!857174 () tuple2!13278)

(assert (=> d!377322 (= lt!442847 e!857174)))

(declare-fun c!219286 () Bool)

(declare-fun lt!442850 () Option!2628)

(assert (=> d!377322 (= c!219286 ((_ is Some!2627) lt!442850))))

(assert (=> d!377322 (= lt!442850 (maxPrefix!1062 thiss!19762 rules!2550 (list!5187 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))

(assert (=> d!377322 (= (lexList!592 thiss!19762 rules!2550 (list!5187 (print!832 thiss!19762 (singletonSeq!969 t1!34)))) lt!442847)))

(declare-fun b!1338211 () Bool)

(assert (=> b!1338211 (= e!857174 (tuple2!13279 Nil!13656 (list!5187 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))

(declare-fun b!1338212 () Bool)

(declare-fun e!857176 () Bool)

(assert (=> b!1338212 (= e!857177 e!857176)))

(declare-fun res!603245 () Bool)

(assert (=> b!1338212 (= res!603245 (< (size!11118 (_2!7525 lt!442847)) (size!11118 (list!5187 (print!832 thiss!19762 (singletonSeq!969 t1!34))))))))

(assert (=> b!1338212 (=> (not res!603245) (not e!857176))))

(declare-fun b!1338213 () Bool)

(assert (=> b!1338213 (= e!857176 (not (isEmpty!8151 (_1!7525 lt!442847))))))

(declare-fun b!1338214 () Bool)

(assert (=> b!1338214 (= e!857177 (= (_2!7525 lt!442847) (list!5187 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))

(declare-fun b!1338215 () Bool)

(declare-fun lt!442849 () tuple2!13278)

(assert (=> b!1338215 (= e!857174 (tuple2!13279 (Cons!13656 (_1!7527 (v!21278 lt!442850)) (_1!7525 lt!442849)) (_2!7525 lt!442849)))))

(assert (=> b!1338215 (= lt!442849 (lexList!592 thiss!19762 rules!2550 (_2!7527 (v!21278 lt!442850))))))

(assert (= (and d!377322 c!219286) b!1338215))

(assert (= (and d!377322 (not c!219286)) b!1338211))

(assert (= (and d!377322 c!219287) b!1338212))

(assert (= (and d!377322 (not c!219287)) b!1338214))

(assert (= (and b!1338212 res!603245) b!1338213))

(declare-fun m!1496215 () Bool)

(assert (=> d!377322 m!1496215))

(assert (=> d!377322 m!1494887))

(declare-fun m!1496217 () Bool)

(assert (=> d!377322 m!1496217))

(declare-fun m!1496219 () Bool)

(assert (=> b!1338212 m!1496219))

(assert (=> b!1338212 m!1494887))

(declare-fun m!1496221 () Bool)

(assert (=> b!1338212 m!1496221))

(declare-fun m!1496223 () Bool)

(assert (=> b!1338213 m!1496223))

(declare-fun m!1496225 () Bool)

(assert (=> b!1338215 m!1496225))

(assert (=> b!1337135 d!377322))

(declare-fun d!377326 () Bool)

(assert (=> d!377326 (= (list!5187 (print!832 thiss!19762 (singletonSeq!969 t1!34))) (list!5191 (c!218765 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))

(declare-fun bs!332126 () Bool)

(assert (= bs!332126 d!377326))

(declare-fun m!1496227 () Bool)

(assert (=> bs!332126 m!1496227))

(assert (=> b!1337135 d!377326))

(declare-fun d!377328 () Bool)

(assert (=> d!377328 (= (list!5187 (_2!7523 lt!442639)) (list!5191 (c!218765 (_2!7523 lt!442639))))))

(declare-fun bs!332127 () Bool)

(assert (= bs!332127 d!377328))

(declare-fun m!1496229 () Bool)

(assert (=> bs!332127 m!1496229))

(assert (=> b!1337161 d!377328))

(assert (=> b!1337161 d!376936))

(assert (=> b!1337161 d!376938))

(declare-fun b!1338216 () Bool)

(declare-fun res!603248 () Bool)

(declare-fun e!857179 () Bool)

(assert (=> b!1338216 (=> (not res!603248) (not e!857179))))

(assert (=> b!1338216 (= res!603248 (isBalanced!1306 (left!11718 (c!218804 lt!442625))))))

(declare-fun b!1338217 () Bool)

(declare-fun res!603251 () Bool)

(assert (=> b!1338217 (=> (not res!603251) (not e!857179))))

(assert (=> b!1338217 (= res!603251 (isBalanced!1306 (right!12048 (c!218804 lt!442625))))))

(declare-fun d!377330 () Bool)

(declare-fun res!603247 () Bool)

(declare-fun e!857178 () Bool)

(assert (=> d!377330 (=> res!603247 e!857178)))

(assert (=> d!377330 (= res!603247 (not ((_ is Node!4501) (c!218804 lt!442625))))))

(assert (=> d!377330 (= (isBalanced!1306 (c!218804 lt!442625)) e!857178)))

(declare-fun b!1338218 () Bool)

(assert (=> b!1338218 (= e!857178 e!857179)))

(declare-fun res!603249 () Bool)

(assert (=> b!1338218 (=> (not res!603249) (not e!857179))))

(assert (=> b!1338218 (= res!603249 (<= (- 1) (- (height!636 (left!11718 (c!218804 lt!442625))) (height!636 (right!12048 (c!218804 lt!442625))))))))

(declare-fun b!1338219 () Bool)

(declare-fun res!603246 () Bool)

(assert (=> b!1338219 (=> (not res!603246) (not e!857179))))

(assert (=> b!1338219 (= res!603246 (<= (- (height!636 (left!11718 (c!218804 lt!442625))) (height!636 (right!12048 (c!218804 lt!442625)))) 1))))

(declare-fun b!1338220 () Bool)

(assert (=> b!1338220 (= e!857179 (not (isEmpty!8153 (right!12048 (c!218804 lt!442625)))))))

(declare-fun b!1338221 () Bool)

(declare-fun res!603250 () Bool)

(assert (=> b!1338221 (=> (not res!603250) (not e!857179))))

(assert (=> b!1338221 (= res!603250 (not (isEmpty!8153 (left!11718 (c!218804 lt!442625)))))))

(assert (= (and d!377330 (not res!603247)) b!1338218))

(assert (= (and b!1338218 res!603249) b!1338219))

(assert (= (and b!1338219 res!603246) b!1338216))

(assert (= (and b!1338216 res!603248) b!1338217))

(assert (= (and b!1338217 res!603251) b!1338221))

(assert (= (and b!1338221 res!603250) b!1338220))

(declare-fun m!1496231 () Bool)

(assert (=> b!1338221 m!1496231))

(declare-fun m!1496233 () Bool)

(assert (=> b!1338217 m!1496233))

(declare-fun m!1496235 () Bool)

(assert (=> b!1338218 m!1496235))

(declare-fun m!1496237 () Bool)

(assert (=> b!1338218 m!1496237))

(declare-fun m!1496239 () Bool)

(assert (=> b!1338220 m!1496239))

(assert (=> b!1338219 m!1496235))

(assert (=> b!1338219 m!1496237))

(declare-fun m!1496241 () Bool)

(assert (=> b!1338216 m!1496241))

(assert (=> b!1337142 d!377330))

(declare-fun d!377332 () Bool)

(declare-fun lt!442854 () C!7652)

(assert (=> d!377332 (contains!2489 (list!5191 (c!218765 lt!442341)) lt!442854)))

(declare-fun e!857181 () C!7652)

(assert (=> d!377332 (= lt!442854 e!857181)))

(declare-fun c!219288 () Bool)

(assert (=> d!377332 (= c!219288 (= 0 0))))

(declare-fun e!857180 () Bool)

(assert (=> d!377332 e!857180))

(declare-fun res!603252 () Bool)

(assert (=> d!377332 (=> (not res!603252) (not e!857180))))

(assert (=> d!377332 (= res!603252 (<= 0 0))))

(assert (=> d!377332 (= (apply!3200 (list!5191 (c!218765 lt!442341)) 0) lt!442854)))

(declare-fun b!1338222 () Bool)

(assert (=> b!1338222 (= e!857180 (< 0 (size!11118 (list!5191 (c!218765 lt!442341)))))))

(declare-fun b!1338223 () Bool)

(assert (=> b!1338223 (= e!857181 (head!2369 (list!5191 (c!218765 lt!442341))))))

(declare-fun b!1338224 () Bool)

(assert (=> b!1338224 (= e!857181 (apply!3200 (tail!1918 (list!5191 (c!218765 lt!442341))) (- 0 1)))))

(assert (= (and d!377332 res!603252) b!1338222))

(assert (= (and d!377332 c!219288) b!1338223))

(assert (= (and d!377332 (not c!219288)) b!1338224))

(assert (=> d!377332 m!1494483))

(declare-fun m!1496245 () Bool)

(assert (=> d!377332 m!1496245))

(assert (=> b!1338222 m!1494483))

(assert (=> b!1338222 m!1494929))

(assert (=> b!1338223 m!1494483))

(declare-fun m!1496249 () Bool)

(assert (=> b!1338223 m!1496249))

(assert (=> b!1338224 m!1494483))

(declare-fun m!1496251 () Bool)

(assert (=> b!1338224 m!1496251))

(assert (=> b!1338224 m!1496251))

(declare-fun m!1496253 () Bool)

(assert (=> b!1338224 m!1496253))

(assert (=> d!376590 d!377332))

(assert (=> d!376590 d!376978))

(declare-fun d!377338 () Bool)

(declare-fun choose!8206 (Int) Bool)

(assert (=> d!377338 (= (Forall2!425 lambda!56056) (choose!8206 lambda!56056))))

(declare-fun bs!332130 () Bool)

(assert (= bs!332130 d!377338))

(declare-fun m!1496257 () Bool)

(assert (=> bs!332130 m!1496257))

(assert (=> d!376710 d!377338))

(declare-fun d!377342 () Bool)

(declare-fun c!219291 () Bool)

(assert (=> d!377342 (= c!219291 (isEmpty!8143 (tail!1918 (tail!1918 lt!442344))))))

(declare-fun e!857185 () Bool)

(assert (=> d!377342 (= (prefixMatch!190 (derivativeStep!923 (derivativeStep!923 lt!442339 (head!2369 lt!442344)) (head!2369 (tail!1918 lt!442344))) (tail!1918 (tail!1918 lt!442344))) e!857185)))

(declare-fun b!1338230 () Bool)

(assert (=> b!1338230 (= e!857185 (not (lostCause!299 (derivativeStep!923 (derivativeStep!923 lt!442339 (head!2369 lt!442344)) (head!2369 (tail!1918 lt!442344))))))))

(declare-fun b!1338231 () Bool)

(assert (=> b!1338231 (= e!857185 (prefixMatch!190 (derivativeStep!923 (derivativeStep!923 (derivativeStep!923 lt!442339 (head!2369 lt!442344)) (head!2369 (tail!1918 lt!442344))) (head!2369 (tail!1918 (tail!1918 lt!442344)))) (tail!1918 (tail!1918 (tail!1918 lt!442344)))))))

(assert (= (and d!377342 c!219291) b!1338230))

(assert (= (and d!377342 (not c!219291)) b!1338231))

(assert (=> d!377342 m!1495079))

(declare-fun m!1496269 () Bool)

(assert (=> d!377342 m!1496269))

(assert (=> b!1338230 m!1495077))

(declare-fun m!1496271 () Bool)

(assert (=> b!1338230 m!1496271))

(assert (=> b!1338231 m!1495079))

(declare-fun m!1496277 () Bool)

(assert (=> b!1338231 m!1496277))

(assert (=> b!1338231 m!1495077))

(assert (=> b!1338231 m!1496277))

(declare-fun m!1496279 () Bool)

(assert (=> b!1338231 m!1496279))

(assert (=> b!1338231 m!1495079))

(declare-fun m!1496281 () Bool)

(assert (=> b!1338231 m!1496281))

(assert (=> b!1338231 m!1496279))

(assert (=> b!1338231 m!1496281))

(declare-fun m!1496283 () Bool)

(assert (=> b!1338231 m!1496283))

(assert (=> b!1337239 d!377342))

(declare-fun b!1338243 () Bool)

(declare-fun e!857195 () Regex!3681)

(declare-fun e!857194 () Regex!3681)

(assert (=> b!1338243 (= e!857195 e!857194)))

(declare-fun c!219295 () Bool)

(assert (=> b!1338243 (= c!219295 ((_ is Star!3681) (derivativeStep!923 lt!442339 (head!2369 lt!442344))))))

(declare-fun bm!90377 () Bool)

(declare-fun call!90383 () Regex!3681)

(declare-fun call!90385 () Regex!3681)

(assert (=> bm!90377 (= call!90383 call!90385)))

(declare-fun b!1338244 () Bool)

(assert (=> b!1338244 (= e!857194 (Concat!6139 call!90383 (derivativeStep!923 lt!442339 (head!2369 lt!442344))))))

(declare-fun bm!90378 () Bool)

(declare-fun call!90382 () Regex!3681)

(declare-fun call!90384 () Regex!3681)

(assert (=> bm!90378 (= call!90382 call!90384)))

(declare-fun b!1338245 () Bool)

(declare-fun e!857198 () Regex!3681)

(declare-fun e!857197 () Regex!3681)

(assert (=> b!1338245 (= e!857198 e!857197)))

(declare-fun c!219299 () Bool)

(assert (=> b!1338245 (= c!219299 ((_ is ElementMatch!3681) (derivativeStep!923 lt!442339 (head!2369 lt!442344))))))

(declare-fun b!1338246 () Bool)

(assert (=> b!1338246 (= e!857195 (Union!3681 call!90385 call!90384))))

(declare-fun b!1338247 () Bool)

(assert (=> b!1338247 (= e!857197 (ite (= (head!2369 (tail!1918 lt!442344)) (c!218766 (derivativeStep!923 lt!442339 (head!2369 lt!442344)))) EmptyExpr!3681 EmptyLang!3681))))

(declare-fun c!219298 () Bool)

(declare-fun bm!90379 () Bool)

(declare-fun c!219297 () Bool)

(assert (=> bm!90379 (= call!90384 (derivativeStep!923 (ite c!219297 (regTwo!7875 (derivativeStep!923 lt!442339 (head!2369 lt!442344))) (ite c!219298 (regTwo!7874 (derivativeStep!923 lt!442339 (head!2369 lt!442344))) (regOne!7874 (derivativeStep!923 lt!442339 (head!2369 lt!442344))))) (head!2369 (tail!1918 lt!442344))))))

(declare-fun b!1338248 () Bool)

(declare-fun e!857196 () Regex!3681)

(assert (=> b!1338248 (= e!857196 (Union!3681 (Concat!6139 call!90382 (regTwo!7874 (derivativeStep!923 lt!442339 (head!2369 lt!442344)))) EmptyLang!3681))))

(declare-fun d!377350 () Bool)

(declare-fun lt!442856 () Regex!3681)

(assert (=> d!377350 (validRegex!1585 lt!442856)))

(assert (=> d!377350 (= lt!442856 e!857198)))

(declare-fun c!219296 () Bool)

(assert (=> d!377350 (= c!219296 (or ((_ is EmptyExpr!3681) (derivativeStep!923 lt!442339 (head!2369 lt!442344))) ((_ is EmptyLang!3681) (derivativeStep!923 lt!442339 (head!2369 lt!442344)))))))

(assert (=> d!377350 (validRegex!1585 (derivativeStep!923 lt!442339 (head!2369 lt!442344)))))

(assert (=> d!377350 (= (derivativeStep!923 (derivativeStep!923 lt!442339 (head!2369 lt!442344)) (head!2369 (tail!1918 lt!442344))) lt!442856)))

(declare-fun b!1338249 () Bool)

(assert (=> b!1338249 (= c!219298 (nullable!1169 (regOne!7874 (derivativeStep!923 lt!442339 (head!2369 lt!442344)))))))

(assert (=> b!1338249 (= e!857194 e!857196)))

(declare-fun b!1338250 () Bool)

(assert (=> b!1338250 (= c!219297 ((_ is Union!3681) (derivativeStep!923 lt!442339 (head!2369 lt!442344))))))

(assert (=> b!1338250 (= e!857197 e!857195)))

(declare-fun bm!90380 () Bool)

(assert (=> bm!90380 (= call!90385 (derivativeStep!923 (ite c!219297 (regOne!7875 (derivativeStep!923 lt!442339 (head!2369 lt!442344))) (ite c!219295 (reg!4010 (derivativeStep!923 lt!442339 (head!2369 lt!442344))) (regOne!7874 (derivativeStep!923 lt!442339 (head!2369 lt!442344))))) (head!2369 (tail!1918 lt!442344))))))

(declare-fun b!1338251 () Bool)

(assert (=> b!1338251 (= e!857196 (Union!3681 (Concat!6139 call!90383 (regTwo!7874 (derivativeStep!923 lt!442339 (head!2369 lt!442344)))) call!90382))))

(declare-fun b!1338252 () Bool)

(assert (=> b!1338252 (= e!857198 EmptyLang!3681)))

(assert (= (and d!377350 c!219296) b!1338252))

(assert (= (and d!377350 (not c!219296)) b!1338245))

(assert (= (and b!1338245 c!219299) b!1338247))

(assert (= (and b!1338245 (not c!219299)) b!1338250))

(assert (= (and b!1338250 c!219297) b!1338246))

(assert (= (and b!1338250 (not c!219297)) b!1338243))

(assert (= (and b!1338243 c!219295) b!1338244))

(assert (= (and b!1338243 (not c!219295)) b!1338249))

(assert (= (and b!1338249 c!219298) b!1338251))

(assert (= (and b!1338249 (not c!219298)) b!1338248))

(assert (= (or b!1338251 b!1338248) bm!90378))

(assert (= (or b!1338244 b!1338251) bm!90377))

(assert (= (or b!1338246 bm!90377) bm!90380))

(assert (= (or b!1338246 bm!90378) bm!90379))

(assert (=> bm!90379 m!1495075))

(declare-fun m!1496293 () Bool)

(assert (=> bm!90379 m!1496293))

(declare-fun m!1496295 () Bool)

(assert (=> d!377350 m!1496295))

(assert (=> d!377350 m!1494107))

(declare-fun m!1496297 () Bool)

(assert (=> d!377350 m!1496297))

(declare-fun m!1496299 () Bool)

(assert (=> b!1338249 m!1496299))

(assert (=> bm!90380 m!1495075))

(declare-fun m!1496301 () Bool)

(assert (=> bm!90380 m!1496301))

(assert (=> b!1337239 d!377350))

(declare-fun d!377356 () Bool)

(assert (=> d!377356 (= (head!2369 (tail!1918 lt!442344)) (h!19052 (tail!1918 lt!442344)))))

(assert (=> b!1337239 d!377356))

(declare-fun d!377358 () Bool)

(assert (=> d!377358 (= (tail!1918 (tail!1918 lt!442344)) (t!119282 (tail!1918 lt!442344)))))

(assert (=> b!1337239 d!377358))

(declare-fun bm!90385 () Bool)

(declare-fun call!90391 () Bool)

(declare-fun c!219305 () Bool)

(assert (=> bm!90385 (= call!90391 (lostCause!299 (ite c!219305 (regOne!7875 lt!442339) (regOne!7874 lt!442339))))))

(declare-fun bm!90386 () Bool)

(declare-fun call!90390 () Bool)

(assert (=> bm!90386 (= call!90390 (lostCause!299 (ite c!219305 (regTwo!7875 lt!442339) (regTwo!7874 lt!442339))))))

(declare-fun d!377360 () Bool)

(declare-fun lt!442859 () Bool)

(declare-datatypes ((Option!2629 0))(
  ( (None!2628) (Some!2628 (v!21279 List!13717)) )
))
(declare-fun isEmpty!8154 (Option!2629) Bool)

(declare-fun getLanguageWitness!70 (Regex!3681) Option!2629)

(assert (=> d!377360 (= lt!442859 (isEmpty!8154 (getLanguageWitness!70 lt!442339)))))

(declare-fun e!857214 () Bool)

(assert (=> d!377360 (= lt!442859 e!857214)))

(declare-fun res!603272 () Bool)

(assert (=> d!377360 (=> (not res!603272) (not e!857214))))

(assert (=> d!377360 (= res!603272 (not ((_ is EmptyExpr!3681) lt!442339)))))

(assert (=> d!377360 (= (lostCauseFct!118 lt!442339) lt!442859)))

(declare-fun b!1338273 () Bool)

(declare-fun e!857215 () Bool)

(assert (=> b!1338273 (= e!857215 call!90390)))

(declare-fun b!1338274 () Bool)

(declare-fun e!857217 () Bool)

(assert (=> b!1338274 (= e!857214 e!857217)))

(declare-fun res!603273 () Bool)

(assert (=> b!1338274 (=> res!603273 e!857217)))

(assert (=> b!1338274 (= res!603273 ((_ is EmptyLang!3681) lt!442339))))

(declare-fun b!1338275 () Bool)

(declare-fun e!857218 () Bool)

(assert (=> b!1338275 (= e!857218 e!857215)))

(declare-fun res!603270 () Bool)

(assert (=> b!1338275 (= res!603270 call!90391)))

(assert (=> b!1338275 (=> (not res!603270) (not e!857215))))

(declare-fun b!1338276 () Bool)

(declare-fun e!857216 () Bool)

(assert (=> b!1338276 (= e!857216 e!857218)))

(assert (=> b!1338276 (= c!219305 ((_ is Union!3681) lt!442339))))

(declare-fun b!1338277 () Bool)

(declare-fun e!857219 () Bool)

(assert (=> b!1338277 (= e!857218 e!857219)))

(declare-fun res!603269 () Bool)

(assert (=> b!1338277 (= res!603269 call!90391)))

(assert (=> b!1338277 (=> res!603269 e!857219)))

(declare-fun b!1338278 () Bool)

(assert (=> b!1338278 (= e!857217 e!857216)))

(declare-fun res!603271 () Bool)

(assert (=> b!1338278 (=> (not res!603271) (not e!857216))))

(assert (=> b!1338278 (= res!603271 (and (not ((_ is ElementMatch!3681) lt!442339)) (not ((_ is Star!3681) lt!442339))))))

(declare-fun b!1338279 () Bool)

(assert (=> b!1338279 (= e!857219 call!90390)))

(assert (= (and d!377360 res!603272) b!1338274))

(assert (= (and b!1338274 (not res!603273)) b!1338278))

(assert (= (and b!1338278 res!603271) b!1338276))

(assert (= (and b!1338276 c!219305) b!1338275))

(assert (= (and b!1338276 (not c!219305)) b!1338277))

(assert (= (and b!1338275 res!603270) b!1338273))

(assert (= (and b!1338277 (not res!603269)) b!1338279))

(assert (= (or b!1338273 b!1338279) bm!90386))

(assert (= (or b!1338275 b!1338277) bm!90385))

(declare-fun m!1496311 () Bool)

(assert (=> bm!90385 m!1496311))

(declare-fun m!1496313 () Bool)

(assert (=> bm!90386 m!1496313))

(declare-fun m!1496315 () Bool)

(assert (=> d!377360 m!1496315))

(assert (=> d!377360 m!1496315))

(declare-fun m!1496317 () Bool)

(assert (=> d!377360 m!1496317))

(assert (=> d!376778 d!377360))

(declare-fun d!377364 () Bool)

(assert (=> d!377364 (= (isEmpty!8143 (list!5187 (_2!7523 lt!442402))) ((_ is Nil!13651) (list!5187 (_2!7523 lt!442402))))))

(assert (=> d!376604 d!377364))

(declare-fun d!377366 () Bool)

(assert (=> d!377366 (= (list!5187 (_2!7523 lt!442402)) (list!5191 (c!218765 (_2!7523 lt!442402))))))

(declare-fun bs!332132 () Bool)

(assert (= bs!332132 d!377366))

(declare-fun m!1496319 () Bool)

(assert (=> bs!332132 m!1496319))

(assert (=> d!376604 d!377366))

(declare-fun d!377368 () Bool)

(declare-fun lt!442860 () Bool)

(assert (=> d!377368 (= lt!442860 (isEmpty!8143 (list!5191 (c!218765 (_2!7523 lt!442402)))))))

(assert (=> d!377368 (= lt!442860 (= (size!11119 (c!218765 (_2!7523 lt!442402))) 0))))

(assert (=> d!377368 (= (isEmpty!8148 (c!218765 (_2!7523 lt!442402))) lt!442860)))

(declare-fun bs!332133 () Bool)

(assert (= bs!332133 d!377368))

(assert (=> bs!332133 m!1496319))

(assert (=> bs!332133 m!1496319))

(declare-fun m!1496321 () Bool)

(assert (=> bs!332133 m!1496321))

(declare-fun m!1496323 () Bool)

(assert (=> bs!332133 m!1496323))

(assert (=> d!376604 d!377368))

(declare-fun d!377370 () Bool)

(declare-fun lt!442861 () List!13717)

(assert (=> d!377370 (= (++!3488 (t!119282 (t!119282 lt!442344)) lt!442861) (tail!1918 (tail!1918 lt!442343)))))

(declare-fun e!857220 () List!13717)

(assert (=> d!377370 (= lt!442861 e!857220)))

(declare-fun c!219306 () Bool)

(assert (=> d!377370 (= c!219306 ((_ is Cons!13651) (t!119282 (t!119282 lt!442344))))))

(assert (=> d!377370 (>= (size!11118 (tail!1918 (tail!1918 lt!442343))) (size!11118 (t!119282 (t!119282 lt!442344))))))

(assert (=> d!377370 (= (getSuffix!529 (tail!1918 (tail!1918 lt!442343)) (t!119282 (t!119282 lt!442344))) lt!442861)))

(declare-fun b!1338280 () Bool)

(assert (=> b!1338280 (= e!857220 (getSuffix!529 (tail!1918 (tail!1918 (tail!1918 lt!442343))) (t!119282 (t!119282 (t!119282 lt!442344)))))))

(declare-fun b!1338281 () Bool)

(assert (=> b!1338281 (= e!857220 (tail!1918 (tail!1918 lt!442343)))))

(assert (= (and d!377370 c!219306) b!1338280))

(assert (= (and d!377370 (not c!219306)) b!1338281))

(declare-fun m!1496325 () Bool)

(assert (=> d!377370 m!1496325))

(assert (=> d!377370 m!1495095))

(declare-fun m!1496327 () Bool)

(assert (=> d!377370 m!1496327))

(assert (=> d!377370 m!1495293))

(assert (=> b!1338280 m!1495095))

(declare-fun m!1496329 () Bool)

(assert (=> b!1338280 m!1496329))

(assert (=> b!1338280 m!1496329))

(declare-fun m!1496331 () Bool)

(assert (=> b!1338280 m!1496331))

(assert (=> b!1337270 d!377370))

(declare-fun d!377372 () Bool)

(assert (=> d!377372 (= (tail!1918 (tail!1918 lt!442343)) (t!119282 (tail!1918 lt!442343)))))

(assert (=> b!1337270 d!377372))

(assert (=> b!1336283 d!376834))

(declare-fun lt!442862 () List!13717)

(declare-fun e!857221 () Bool)

(declare-fun b!1338285 () Bool)

(assert (=> b!1338285 (= e!857221 (or (not (= lt!442660 Nil!13651)) (= lt!442862 (t!119282 lt!442344))))))

(declare-fun d!377374 () Bool)

(assert (=> d!377374 e!857221))

(declare-fun res!603275 () Bool)

(assert (=> d!377374 (=> (not res!603275) (not e!857221))))

(assert (=> d!377374 (= res!603275 (= (content!1937 lt!442862) ((_ map or) (content!1937 (t!119282 lt!442344)) (content!1937 lt!442660))))))

(declare-fun e!857222 () List!13717)

(assert (=> d!377374 (= lt!442862 e!857222)))

(declare-fun c!219307 () Bool)

(assert (=> d!377374 (= c!219307 ((_ is Nil!13651) (t!119282 lt!442344)))))

(assert (=> d!377374 (= (++!3488 (t!119282 lt!442344) lt!442660) lt!442862)))

(declare-fun b!1338284 () Bool)

(declare-fun res!603274 () Bool)

(assert (=> b!1338284 (=> (not res!603274) (not e!857221))))

(assert (=> b!1338284 (= res!603274 (= (size!11118 lt!442862) (+ (size!11118 (t!119282 lt!442344)) (size!11118 lt!442660))))))

(declare-fun b!1338282 () Bool)

(assert (=> b!1338282 (= e!857222 lt!442660)))

(declare-fun b!1338283 () Bool)

(assert (=> b!1338283 (= e!857222 (Cons!13651 (h!19052 (t!119282 lt!442344)) (++!3488 (t!119282 (t!119282 lt!442344)) lt!442660)))))

(assert (= (and d!377374 c!219307) b!1338282))

(assert (= (and d!377374 (not c!219307)) b!1338283))

(assert (= (and d!377374 res!603275) b!1338284))

(assert (= (and b!1338284 res!603274) b!1338285))

(declare-fun m!1496333 () Bool)

(assert (=> d!377374 m!1496333))

(assert (=> d!377374 m!1494349))

(declare-fun m!1496335 () Bool)

(assert (=> d!377374 m!1496335))

(declare-fun m!1496337 () Bool)

(assert (=> b!1338284 m!1496337))

(assert (=> b!1338284 m!1494789))

(declare-fun m!1496339 () Bool)

(assert (=> b!1338284 m!1496339))

(declare-fun m!1496341 () Bool)

(assert (=> b!1338283 m!1496341))

(assert (=> d!376876 d!377374))

(declare-fun d!377376 () Bool)

(declare-fun lt!442863 () Int)

(assert (=> d!377376 (>= lt!442863 0)))

(declare-fun e!857223 () Int)

(assert (=> d!377376 (= lt!442863 e!857223)))

(declare-fun c!219308 () Bool)

(assert (=> d!377376 (= c!219308 ((_ is Nil!13651) (tail!1918 lt!442343)))))

(assert (=> d!377376 (= (size!11118 (tail!1918 lt!442343)) lt!442863)))

(declare-fun b!1338286 () Bool)

(assert (=> b!1338286 (= e!857223 0)))

(declare-fun b!1338287 () Bool)

(assert (=> b!1338287 (= e!857223 (+ 1 (size!11118 (t!119282 (tail!1918 lt!442343)))))))

(assert (= (and d!377376 c!219308) b!1338286))

(assert (= (and d!377376 (not c!219308)) b!1338287))

(declare-fun m!1496343 () Bool)

(assert (=> b!1338287 m!1496343))

(assert (=> d!376876 d!377376))

(assert (=> d!376876 d!377224))

(declare-fun d!377378 () Bool)

(declare-fun e!857230 () Bool)

(assert (=> d!377378 e!857230))

(declare-fun c!219309 () Bool)

(assert (=> d!377378 (= c!219309 ((_ is EmptyExpr!3681) lt!442339))))

(declare-fun lt!442864 () Bool)

(declare-fun e!857228 () Bool)

(assert (=> d!377378 (= lt!442864 e!857228)))

(declare-fun c!219311 () Bool)

(assert (=> d!377378 (= c!219311 (isEmpty!8143 res!602894))))

(assert (=> d!377378 (validRegex!1585 lt!442339)))

(assert (=> d!377378 (= (matchR!1674 lt!442339 res!602894) lt!442864)))

(declare-fun b!1338288 () Bool)

(declare-fun res!603277 () Bool)

(declare-fun e!857226 () Bool)

(assert (=> b!1338288 (=> res!603277 e!857226)))

(declare-fun e!857229 () Bool)

(assert (=> b!1338288 (= res!603277 e!857229)))

(declare-fun res!603276 () Bool)

(assert (=> b!1338288 (=> (not res!603276) (not e!857229))))

(assert (=> b!1338288 (= res!603276 lt!442864)))

(declare-fun b!1338289 () Bool)

(assert (=> b!1338289 (= e!857229 (= (head!2369 res!602894) (c!218766 lt!442339)))))

(declare-fun b!1338290 () Bool)

(declare-fun call!90392 () Bool)

(assert (=> b!1338290 (= e!857230 (= lt!442864 call!90392))))

(declare-fun bm!90387 () Bool)

(assert (=> bm!90387 (= call!90392 (isEmpty!8143 res!602894))))

(declare-fun b!1338291 () Bool)

(declare-fun e!857227 () Bool)

(assert (=> b!1338291 (= e!857226 e!857227)))

(declare-fun res!603278 () Bool)

(assert (=> b!1338291 (=> (not res!603278) (not e!857227))))

(assert (=> b!1338291 (= res!603278 (not lt!442864))))

(declare-fun b!1338292 () Bool)

(declare-fun e!857224 () Bool)

(assert (=> b!1338292 (= e!857227 e!857224)))

(declare-fun res!603283 () Bool)

(assert (=> b!1338292 (=> res!603283 e!857224)))

(assert (=> b!1338292 (= res!603283 call!90392)))

(declare-fun b!1338293 () Bool)

(assert (=> b!1338293 (= e!857228 (nullable!1169 lt!442339))))

(declare-fun b!1338294 () Bool)

(assert (=> b!1338294 (= e!857224 (not (= (head!2369 res!602894) (c!218766 lt!442339))))))

(declare-fun b!1338295 () Bool)

(assert (=> b!1338295 (= e!857228 (matchR!1674 (derivativeStep!923 lt!442339 (head!2369 res!602894)) (tail!1918 res!602894)))))

(declare-fun b!1338296 () Bool)

(declare-fun res!603279 () Bool)

(assert (=> b!1338296 (=> res!603279 e!857224)))

(assert (=> b!1338296 (= res!603279 (not (isEmpty!8143 (tail!1918 res!602894))))))

(declare-fun b!1338297 () Bool)

(declare-fun res!603282 () Bool)

(assert (=> b!1338297 (=> (not res!603282) (not e!857229))))

(assert (=> b!1338297 (= res!603282 (not call!90392))))

(declare-fun b!1338298 () Bool)

(declare-fun res!603280 () Bool)

(assert (=> b!1338298 (=> res!603280 e!857226)))

(assert (=> b!1338298 (= res!603280 (not ((_ is ElementMatch!3681) lt!442339)))))

(declare-fun e!857225 () Bool)

(assert (=> b!1338298 (= e!857225 e!857226)))

(declare-fun b!1338299 () Bool)

(declare-fun res!603281 () Bool)

(assert (=> b!1338299 (=> (not res!603281) (not e!857229))))

(assert (=> b!1338299 (= res!603281 (isEmpty!8143 (tail!1918 res!602894)))))

(declare-fun b!1338300 () Bool)

(assert (=> b!1338300 (= e!857230 e!857225)))

(declare-fun c!219310 () Bool)

(assert (=> b!1338300 (= c!219310 ((_ is EmptyLang!3681) lt!442339))))

(declare-fun b!1338301 () Bool)

(assert (=> b!1338301 (= e!857225 (not lt!442864))))

(assert (= (and d!377378 c!219311) b!1338293))

(assert (= (and d!377378 (not c!219311)) b!1338295))

(assert (= (and d!377378 c!219309) b!1338290))

(assert (= (and d!377378 (not c!219309)) b!1338300))

(assert (= (and b!1338300 c!219310) b!1338301))

(assert (= (and b!1338300 (not c!219310)) b!1338298))

(assert (= (and b!1338298 (not res!603280)) b!1338288))

(assert (= (and b!1338288 res!603276) b!1338297))

(assert (= (and b!1338297 res!603282) b!1338299))

(assert (= (and b!1338299 res!603281) b!1338289))

(assert (= (and b!1338288 (not res!603277)) b!1338291))

(assert (= (and b!1338291 res!603278) b!1338292))

(assert (= (and b!1338292 (not res!603283)) b!1338296))

(assert (= (and b!1338296 (not res!603279)) b!1338294))

(assert (= (or b!1338290 b!1338292 b!1338297) bm!90387))

(assert (=> b!1338296 m!1495325))

(assert (=> b!1338296 m!1495325))

(declare-fun m!1496345 () Bool)

(assert (=> b!1338296 m!1496345))

(assert (=> b!1338289 m!1495331))

(assert (=> b!1338299 m!1495325))

(assert (=> b!1338299 m!1495325))

(assert (=> b!1338299 m!1496345))

(declare-fun m!1496347 () Bool)

(assert (=> d!377378 m!1496347))

(assert (=> d!377378 m!1494153))

(assert (=> b!1338293 m!1494467))

(assert (=> b!1338294 m!1495331))

(assert (=> b!1338295 m!1495331))

(assert (=> b!1338295 m!1495331))

(declare-fun m!1496349 () Bool)

(assert (=> b!1338295 m!1496349))

(assert (=> b!1338295 m!1495325))

(assert (=> b!1338295 m!1496349))

(assert (=> b!1338295 m!1495325))

(declare-fun m!1496351 () Bool)

(assert (=> b!1338295 m!1496351))

(assert (=> bm!90387 m!1496347))

(assert (=> bs!332065 d!377378))

(declare-fun d!377380 () Bool)

(assert (=> d!377380 (= (isEmpty!8147 (t!119322 (map!3011 rules!2550 lambda!56016))) ((_ is Nil!13657) (t!119322 (map!3011 rules!2550 lambda!56016))))))

(assert (=> b!1336609 d!377380))

(declare-fun d!377382 () Bool)

(declare-fun lt!442865 () Int)

(assert (=> d!377382 (>= lt!442865 0)))

(declare-fun e!857231 () Int)

(assert (=> d!377382 (= lt!442865 e!857231)))

(declare-fun c!219312 () Bool)

(assert (=> d!377382 (= c!219312 ((_ is Nil!13651) (t!119282 lt!442365)))))

(assert (=> d!377382 (= (size!11118 (t!119282 lt!442365)) lt!442865)))

(declare-fun b!1338302 () Bool)

(assert (=> b!1338302 (= e!857231 0)))

(declare-fun b!1338303 () Bool)

(assert (=> b!1338303 (= e!857231 (+ 1 (size!11118 (t!119282 (t!119282 lt!442365)))))))

(assert (= (and d!377382 c!219312) b!1338302))

(assert (= (and d!377382 (not c!219312)) b!1338303))

(declare-fun m!1496353 () Bool)

(assert (=> b!1338303 m!1496353))

(assert (=> b!1336961 d!377382))

(declare-fun d!377384 () Bool)

(declare-fun choose!625 (List!13716) (_ BitVec 32))

(assert (=> d!377384 (= (charsToInt!0 (text!17646 (value!77092 t1!34))) (choose!625 (text!17646 (value!77092 t1!34))))))

(declare-fun bs!332134 () Bool)

(assert (= bs!332134 d!377384))

(declare-fun m!1496355 () Bool)

(assert (=> bs!332134 m!1496355))

(assert (=> d!376584 d!377384))

(declare-fun b!1338316 () Bool)

(declare-fun e!857241 () C!7652)

(declare-fun call!90395 () C!7652)

(assert (=> b!1338316 (= e!857241 call!90395)))

(declare-fun b!1338317 () Bool)

(declare-fun e!857243 () Int)

(assert (=> b!1338317 (= e!857243 0)))

(declare-fun b!1338318 () Bool)

(declare-fun e!857242 () Bool)

(assert (=> b!1338318 (= e!857242 (appendIndex!147 (t!119282 (list!5191 (left!11716 (c!218765 lt!442342)))) (list!5191 (right!12046 (c!218765 lt!442342))) (- 0 1)))))

(declare-fun bm!90390 () Bool)

(declare-fun c!219317 () Bool)

(assert (=> bm!90390 (= call!90395 (apply!3200 (ite c!219317 (list!5191 (left!11716 (c!218765 lt!442342))) (list!5191 (right!12046 (c!218765 lt!442342)))) e!857243))))

(declare-fun c!219318 () Bool)

(assert (=> bm!90390 (= c!219318 c!219317)))

(declare-fun d!377386 () Bool)

(assert (=> d!377386 (= (apply!3200 (++!3488 (list!5191 (left!11716 (c!218765 lt!442342))) (list!5191 (right!12046 (c!218765 lt!442342)))) 0) e!857241)))

(assert (=> d!377386 (= c!219317 (< 0 (size!11118 (list!5191 (left!11716 (c!218765 lt!442342))))))))

(declare-fun lt!442868 () Bool)

(assert (=> d!377386 (= lt!442868 e!857242)))

(declare-fun res!603289 () Bool)

(assert (=> d!377386 (=> res!603289 e!857242)))

(assert (=> d!377386 (= res!603289 (or ((_ is Nil!13651) (list!5191 (left!11716 (c!218765 lt!442342)))) (= 0 0)))))

(declare-fun e!857240 () Bool)

(assert (=> d!377386 e!857240))

(declare-fun res!603288 () Bool)

(assert (=> d!377386 (=> (not res!603288) (not e!857240))))

(assert (=> d!377386 (= res!603288 (<= 0 0))))

(assert (=> d!377386 (= (appendIndex!147 (list!5191 (left!11716 (c!218765 lt!442342))) (list!5191 (right!12046 (c!218765 lt!442342))) 0) true)))

(declare-fun b!1338319 () Bool)

(assert (=> b!1338319 (= e!857240 (< 0 (+ (size!11118 (list!5191 (left!11716 (c!218765 lt!442342)))) (size!11118 (list!5191 (right!12046 (c!218765 lt!442342)))))))))

(declare-fun b!1338320 () Bool)

(assert (=> b!1338320 (= e!857243 (- 0 (size!11118 (list!5191 (left!11716 (c!218765 lt!442342))))))))

(declare-fun b!1338321 () Bool)

(assert (=> b!1338321 (= e!857241 call!90395)))

(assert (= (and d!377386 res!603288) b!1338319))

(assert (= (and d!377386 (not res!603289)) b!1338318))

(assert (= (and d!377386 c!219317) b!1338316))

(assert (= (and d!377386 (not c!219317)) b!1338321))

(assert (= (or b!1338316 b!1338321) bm!90390))

(assert (= (and bm!90390 c!219318) b!1338317))

(assert (= (and bm!90390 (not c!219318)) b!1338320))

(assert (=> d!377386 m!1494803))

(assert (=> d!377386 m!1494805))

(assert (=> d!377386 m!1495023))

(assert (=> d!377386 m!1495023))

(declare-fun m!1496357 () Bool)

(assert (=> d!377386 m!1496357))

(assert (=> d!377386 m!1494803))

(assert (=> d!377386 m!1495225))

(declare-fun m!1496359 () Bool)

(assert (=> bm!90390 m!1496359))

(assert (=> b!1338320 m!1494803))

(assert (=> b!1338320 m!1495225))

(assert (=> b!1338319 m!1494803))

(assert (=> b!1338319 m!1495225))

(assert (=> b!1338319 m!1494805))

(assert (=> b!1338319 m!1495227))

(assert (=> b!1338318 m!1494805))

(declare-fun m!1496361 () Bool)

(assert (=> b!1338318 m!1496361))

(assert (=> b!1336970 d!377386))

(assert (=> b!1336970 d!376928))

(assert (=> b!1336970 d!376930))

(assert (=> b!1336970 d!376994))

(declare-fun d!377388 () Bool)

(declare-fun c!219319 () Bool)

(assert (=> d!377388 (= c!219319 ((_ is Nil!13651) lt!442656))))

(declare-fun e!857244 () (InoxSet C!7652))

(assert (=> d!377388 (= (content!1937 lt!442656) e!857244)))

(declare-fun b!1338322 () Bool)

(assert (=> b!1338322 (= e!857244 ((as const (Array C!7652 Bool)) false))))

(declare-fun b!1338323 () Bool)

(assert (=> b!1338323 (= e!857244 ((_ map or) (store ((as const (Array C!7652 Bool)) false) (h!19052 lt!442656) true) (content!1937 (t!119282 lt!442656))))))

(assert (= (and d!377388 c!219319) b!1338322))

(assert (= (and d!377388 (not c!219319)) b!1338323))

(declare-fun m!1496363 () Bool)

(assert (=> b!1338323 m!1496363))

(declare-fun m!1496365 () Bool)

(assert (=> b!1338323 m!1496365))

(assert (=> d!376856 d!377388))

(assert (=> d!376856 d!377024))

(assert (=> d!376856 d!376546))

(declare-fun b!1338325 () Bool)

(declare-fun e!857245 () List!13722)

(declare-fun e!857246 () List!13722)

(assert (=> b!1338325 (= e!857245 e!857246)))

(declare-fun c!219321 () Bool)

(assert (=> b!1338325 (= c!219321 ((_ is Leaf!6881) (c!218804 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))))

(declare-fun b!1338327 () Bool)

(assert (=> b!1338327 (= e!857246 (++!3494 (list!5194 (left!11718 (c!218804 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34))))))) (list!5194 (right!12048 (c!218804 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))))))

(declare-fun c!219320 () Bool)

(declare-fun d!377390 () Bool)

(assert (=> d!377390 (= c!219320 ((_ is Empty!4501) (c!218804 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))))

(assert (=> d!377390 (= (list!5194 (c!218804 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))) e!857245)))

(declare-fun b!1338326 () Bool)

(assert (=> b!1338326 (= e!857246 (list!5197 (xs!7216 (c!218804 (_1!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34))))))))))

(declare-fun b!1338324 () Bool)

(assert (=> b!1338324 (= e!857245 Nil!13656)))

(assert (= (and d!377390 c!219320) b!1338324))

(assert (= (and d!377390 (not c!219320)) b!1338325))

(assert (= (and b!1338325 c!219321) b!1338326))

(assert (= (and b!1338325 (not c!219321)) b!1338327))

(declare-fun m!1496367 () Bool)

(assert (=> b!1338327 m!1496367))

(declare-fun m!1496369 () Bool)

(assert (=> b!1338327 m!1496369))

(assert (=> b!1338327 m!1496367))

(assert (=> b!1338327 m!1496369))

(declare-fun m!1496371 () Bool)

(assert (=> b!1338327 m!1496371))

(declare-fun m!1496373 () Bool)

(assert (=> b!1338326 m!1496373))

(assert (=> d!376776 d!377390))

(declare-fun d!377392 () Bool)

(declare-fun lt!442892 () Token!4396)

(declare-fun contains!2492 (List!13722 Token!4396) Bool)

(assert (=> d!377392 (contains!2492 (list!5190 (_1!7523 lt!442402)) lt!442892)))

(declare-fun e!857258 () Token!4396)

(assert (=> d!377392 (= lt!442892 e!857258)))

(declare-fun c!219327 () Bool)

(assert (=> d!377392 (= c!219327 (= 0 0))))

(declare-fun e!857257 () Bool)

(assert (=> d!377392 e!857257))

(declare-fun res!603295 () Bool)

(assert (=> d!377392 (=> (not res!603295) (not e!857257))))

(assert (=> d!377392 (= res!603295 (<= 0 0))))

(assert (=> d!377392 (= (apply!3206 (list!5190 (_1!7523 lt!442402)) 0) lt!442892)))

(declare-fun b!1338343 () Bool)

(assert (=> b!1338343 (= e!857257 (< 0 (size!11127 (list!5190 (_1!7523 lt!442402)))))))

(declare-fun b!1338344 () Bool)

(declare-fun head!2372 (List!13722) Token!4396)

(assert (=> b!1338344 (= e!857258 (head!2372 (list!5190 (_1!7523 lt!442402))))))

(declare-fun b!1338345 () Bool)

(declare-fun tail!1921 (List!13722) List!13722)

(assert (=> b!1338345 (= e!857258 (apply!3206 (tail!1921 (list!5190 (_1!7523 lt!442402))) (- 0 1)))))

(assert (= (and d!377392 res!603295) b!1338343))

(assert (= (and d!377392 c!219327) b!1338344))

(assert (= (and d!377392 (not c!219327)) b!1338345))

(assert (=> d!377392 m!1494913))

(declare-fun m!1496385 () Bool)

(assert (=> d!377392 m!1496385))

(assert (=> b!1338343 m!1494913))

(assert (=> b!1338343 m!1494915))

(assert (=> b!1338344 m!1494913))

(declare-fun m!1496391 () Bool)

(assert (=> b!1338344 m!1496391))

(assert (=> b!1338345 m!1494913))

(declare-fun m!1496395 () Bool)

(assert (=> b!1338345 m!1496395))

(assert (=> b!1338345 m!1496395))

(declare-fun m!1496401 () Bool)

(assert (=> b!1338345 m!1496401))

(assert (=> d!376848 d!377392))

(assert (=> d!376848 d!376968))

(declare-fun b!1338390 () Bool)

(declare-fun e!857286 () Token!4396)

(declare-fun call!90398 () Token!4396)

(assert (=> b!1338390 (= e!857286 call!90398)))

(declare-fun b!1338391 () Bool)

(declare-fun e!857288 () Int)

(assert (=> b!1338391 (= e!857288 (- 0 (size!11128 (left!11718 (c!218804 (_1!7523 lt!442402))))))))

(declare-fun b!1338393 () Bool)

(declare-fun e!857289 () Token!4396)

(declare-fun apply!3208 (IArray!9007 Int) Token!4396)

(assert (=> b!1338393 (= e!857289 (apply!3208 (xs!7216 (c!218804 (_1!7523 lt!442402))) 0))))

(declare-fun b!1338394 () Bool)

(assert (=> b!1338394 (= e!857288 0)))

(declare-fun b!1338395 () Bool)

(declare-fun e!857287 () Bool)

(assert (=> b!1338395 (= e!857287 (< 0 (size!11128 (c!218804 (_1!7523 lt!442402)))))))

(declare-fun bm!90393 () Bool)

(declare-fun c!219343 () Bool)

(declare-fun c!219342 () Bool)

(assert (=> bm!90393 (= c!219343 c!219342)))

(assert (=> bm!90393 (= call!90398 (apply!3207 (ite c!219342 (left!11718 (c!218804 (_1!7523 lt!442402))) (right!12048 (c!218804 (_1!7523 lt!442402)))) e!857288))))

(declare-fun b!1338396 () Bool)

(assert (=> b!1338396 (= e!857286 call!90398)))

(declare-fun b!1338392 () Bool)

(assert (=> b!1338392 (= e!857289 e!857286)))

(declare-fun lt!442903 () Bool)

(declare-fun appendIndex!148 (List!13722 List!13722 Int) Bool)

(assert (=> b!1338392 (= lt!442903 (appendIndex!148 (list!5194 (left!11718 (c!218804 (_1!7523 lt!442402)))) (list!5194 (right!12048 (c!218804 (_1!7523 lt!442402)))) 0))))

(assert (=> b!1338392 (= c!219342 (< 0 (size!11128 (left!11718 (c!218804 (_1!7523 lt!442402))))))))

(declare-fun d!377394 () Bool)

(declare-fun lt!442904 () Token!4396)

(assert (=> d!377394 (= lt!442904 (apply!3206 (list!5194 (c!218804 (_1!7523 lt!442402))) 0))))

(assert (=> d!377394 (= lt!442904 e!857289)))

(declare-fun c!219344 () Bool)

(assert (=> d!377394 (= c!219344 ((_ is Leaf!6881) (c!218804 (_1!7523 lt!442402))))))

(assert (=> d!377394 e!857287))

(declare-fun res!603312 () Bool)

(assert (=> d!377394 (=> (not res!603312) (not e!857287))))

(assert (=> d!377394 (= res!603312 (<= 0 0))))

(assert (=> d!377394 (= (apply!3207 (c!218804 (_1!7523 lt!442402)) 0) lt!442904)))

(assert (= (and d!377394 res!603312) b!1338395))

(assert (= (and d!377394 c!219344) b!1338393))

(assert (= (and d!377394 (not c!219344)) b!1338392))

(assert (= (and b!1338392 c!219342) b!1338390))

(assert (= (and b!1338392 (not c!219342)) b!1338396))

(assert (= (or b!1338390 b!1338396) bm!90393))

(assert (= (and bm!90393 c!219343) b!1338394))

(assert (= (and bm!90393 (not c!219343)) b!1338391))

(assert (=> d!377394 m!1495375))

(assert (=> d!377394 m!1495375))

(declare-fun m!1496487 () Bool)

(assert (=> d!377394 m!1496487))

(declare-fun m!1496491 () Bool)

(assert (=> b!1338391 m!1496491))

(declare-fun m!1496495 () Bool)

(assert (=> b!1338393 m!1496495))

(assert (=> b!1338395 m!1494917))

(declare-fun m!1496497 () Bool)

(assert (=> b!1338392 m!1496497))

(declare-fun m!1496499 () Bool)

(assert (=> b!1338392 m!1496499))

(assert (=> b!1338392 m!1496497))

(assert (=> b!1338392 m!1496499))

(declare-fun m!1496501 () Bool)

(assert (=> b!1338392 m!1496501))

(assert (=> b!1338392 m!1496491))

(declare-fun m!1496503 () Bool)

(assert (=> bm!90393 m!1496503))

(assert (=> d!376848 d!377394))

(declare-fun d!377432 () Bool)

(declare-fun res!603313 () Bool)

(declare-fun e!857291 () Bool)

(assert (=> d!377432 (=> res!603313 e!857291)))

(assert (=> d!377432 (= res!603313 ((_ is Nil!13652) (t!119283 rules!2550)))))

(assert (=> d!377432 (= (noDuplicateTag!863 thiss!19762 (t!119283 rules!2550) (Cons!13658 (tag!2629 (h!19053 rules!2550)) Nil!13658)) e!857291)))

(declare-fun b!1338399 () Bool)

(declare-fun e!857292 () Bool)

(assert (=> b!1338399 (= e!857291 e!857292)))

(declare-fun res!603314 () Bool)

(assert (=> b!1338399 (=> (not res!603314) (not e!857292))))

(assert (=> b!1338399 (= res!603314 (not (contains!2491 (Cons!13658 (tag!2629 (h!19053 rules!2550)) Nil!13658) (tag!2629 (h!19053 (t!119283 rules!2550))))))))

(declare-fun b!1338400 () Bool)

(assert (=> b!1338400 (= e!857292 (noDuplicateTag!863 thiss!19762 (t!119283 (t!119283 rules!2550)) (Cons!13658 (tag!2629 (h!19053 (t!119283 rules!2550))) (Cons!13658 (tag!2629 (h!19053 rules!2550)) Nil!13658))))))

(assert (= (and d!377432 (not res!603313)) b!1338399))

(assert (= (and b!1338399 res!603314) b!1338400))

(declare-fun m!1496505 () Bool)

(assert (=> b!1338399 m!1496505))

(declare-fun m!1496507 () Bool)

(assert (=> b!1338400 m!1496507))

(assert (=> b!1337148 d!377432))

(declare-fun b!1338401 () Bool)

(declare-fun e!857294 () Regex!3681)

(declare-fun e!857293 () Regex!3681)

(assert (=> b!1338401 (= e!857294 e!857293)))

(declare-fun c!219346 () Bool)

(assert (=> b!1338401 (= c!219346 ((_ is Star!3681) (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339)))))))

(declare-fun bm!90394 () Bool)

(declare-fun call!90400 () Regex!3681)

(declare-fun call!90402 () Regex!3681)

(assert (=> bm!90394 (= call!90400 call!90402)))

(declare-fun b!1338402 () Bool)

(assert (=> b!1338402 (= e!857293 (Concat!6139 call!90400 (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339)))))))

(declare-fun bm!90395 () Bool)

(declare-fun call!90399 () Regex!3681)

(declare-fun call!90401 () Regex!3681)

(assert (=> bm!90395 (= call!90399 call!90401)))

(declare-fun b!1338403 () Bool)

(declare-fun e!857297 () Regex!3681)

(declare-fun e!857296 () Regex!3681)

(assert (=> b!1338403 (= e!857297 e!857296)))

(declare-fun c!219350 () Bool)

(assert (=> b!1338403 (= c!219350 ((_ is ElementMatch!3681) (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339)))))))

(declare-fun b!1338404 () Bool)

(assert (=> b!1338404 (= e!857294 (Union!3681 call!90402 call!90401))))

(declare-fun b!1338405 () Bool)

(assert (=> b!1338405 (= e!857296 (ite (= (head!2369 lt!442344) (c!218766 (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339))))) EmptyExpr!3681 EmptyLang!3681))))

(declare-fun c!219348 () Bool)

(declare-fun c!219349 () Bool)

(declare-fun bm!90396 () Bool)

(assert (=> bm!90396 (= call!90401 (derivativeStep!923 (ite c!219348 (regTwo!7875 (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339)))) (ite c!219349 (regTwo!7874 (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339)))) (regOne!7874 (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339)))))) (head!2369 lt!442344)))))

(declare-fun b!1338406 () Bool)

(declare-fun e!857295 () Regex!3681)

(assert (=> b!1338406 (= e!857295 (Union!3681 (Concat!6139 call!90399 (regTwo!7874 (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339))))) EmptyLang!3681))))

(declare-fun d!377434 () Bool)

(declare-fun lt!442908 () Regex!3681)

(assert (=> d!377434 (validRegex!1585 lt!442908)))

(assert (=> d!377434 (= lt!442908 e!857297)))

(declare-fun c!219347 () Bool)

(assert (=> d!377434 (= c!219347 (or ((_ is EmptyExpr!3681) (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339)))) ((_ is EmptyLang!3681) (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339))))))))

(assert (=> d!377434 (validRegex!1585 (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339))))))

(assert (=> d!377434 (= (derivativeStep!923 (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339))) (head!2369 lt!442344)) lt!442908)))

(declare-fun b!1338407 () Bool)

(assert (=> b!1338407 (= c!219349 (nullable!1169 (regOne!7874 (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339))))))))

(assert (=> b!1338407 (= e!857293 e!857295)))

(declare-fun b!1338408 () Bool)

(assert (=> b!1338408 (= c!219348 ((_ is Union!3681) (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339)))))))

(assert (=> b!1338408 (= e!857296 e!857294)))

(declare-fun bm!90397 () Bool)

(assert (=> bm!90397 (= call!90402 (derivativeStep!923 (ite c!219348 (regOne!7875 (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339)))) (ite c!219346 (reg!4010 (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339)))) (regOne!7874 (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339)))))) (head!2369 lt!442344)))))

(declare-fun b!1338409 () Bool)

(assert (=> b!1338409 (= e!857295 (Union!3681 (Concat!6139 call!90400 (regTwo!7874 (ite c!219021 (regTwo!7875 lt!442339) (ite c!219022 (regTwo!7874 lt!442339) (regOne!7874 lt!442339))))) call!90399))))

(declare-fun b!1338410 () Bool)

(assert (=> b!1338410 (= e!857297 EmptyLang!3681)))

(assert (= (and d!377434 c!219347) b!1338410))

(assert (= (and d!377434 (not c!219347)) b!1338403))

(assert (= (and b!1338403 c!219350) b!1338405))

(assert (= (and b!1338403 (not c!219350)) b!1338408))

(assert (= (and b!1338408 c!219348) b!1338404))

(assert (= (and b!1338408 (not c!219348)) b!1338401))

(assert (= (and b!1338401 c!219346) b!1338402))

(assert (= (and b!1338401 (not c!219346)) b!1338407))

(assert (= (and b!1338407 c!219349) b!1338409))

(assert (= (and b!1338407 (not c!219349)) b!1338406))

(assert (= (or b!1338409 b!1338406) bm!90395))

(assert (= (or b!1338402 b!1338409) bm!90394))

(assert (= (or b!1338404 bm!90394) bm!90397))

(assert (= (or b!1338404 bm!90395) bm!90396))

(assert (=> bm!90396 m!1494105))

(declare-fun m!1496509 () Bool)

(assert (=> bm!90396 m!1496509))

(declare-fun m!1496511 () Bool)

(assert (=> d!377434 m!1496511))

(declare-fun m!1496513 () Bool)

(assert (=> d!377434 m!1496513))

(declare-fun m!1496515 () Bool)

(assert (=> b!1338407 m!1496515))

(assert (=> bm!90397 m!1494105))

(declare-fun m!1496517 () Bool)

(assert (=> bm!90397 m!1496517))

(assert (=> bm!90225 d!377434))

(declare-fun b!1338412 () Bool)

(declare-fun e!857298 () List!13722)

(declare-fun e!857299 () List!13722)

(assert (=> b!1338412 (= e!857298 e!857299)))

(declare-fun c!219352 () Bool)

(assert (=> b!1338412 (= c!219352 ((_ is Leaf!6881) (c!218804 (singletonSeq!969 t1!34))))))

(declare-fun b!1338414 () Bool)

(assert (=> b!1338414 (= e!857299 (++!3494 (list!5194 (left!11718 (c!218804 (singletonSeq!969 t1!34)))) (list!5194 (right!12048 (c!218804 (singletonSeq!969 t1!34))))))))

(declare-fun d!377436 () Bool)

(declare-fun c!219351 () Bool)

(assert (=> d!377436 (= c!219351 ((_ is Empty!4501) (c!218804 (singletonSeq!969 t1!34))))))

(assert (=> d!377436 (= (list!5194 (c!218804 (singletonSeq!969 t1!34))) e!857298)))

(declare-fun b!1338413 () Bool)

(assert (=> b!1338413 (= e!857299 (list!5197 (xs!7216 (c!218804 (singletonSeq!969 t1!34)))))))

(declare-fun b!1338411 () Bool)

(assert (=> b!1338411 (= e!857298 Nil!13656)))

(assert (= (and d!377436 c!219351) b!1338411))

(assert (= (and d!377436 (not c!219351)) b!1338412))

(assert (= (and b!1338412 c!219352) b!1338413))

(assert (= (and b!1338412 (not c!219352)) b!1338414))

(declare-fun m!1496519 () Bool)

(assert (=> b!1338414 m!1496519))

(declare-fun m!1496521 () Bool)

(assert (=> b!1338414 m!1496521))

(assert (=> b!1338414 m!1496519))

(assert (=> b!1338414 m!1496521))

(declare-fun m!1496523 () Bool)

(assert (=> b!1338414 m!1496523))

(declare-fun m!1496525 () Bool)

(assert (=> b!1338413 m!1496525))

(assert (=> d!376772 d!377436))

(declare-fun d!377438 () Bool)

(assert (=> d!377438 (= (isUnion!29 lt!442465) ((_ is Union!3681) lt!442465))))

(assert (=> b!1336604 d!377438))

(declare-fun d!377440 () Bool)

(assert (=> d!377440 (= (list!5187 lt!442622) (list!5191 (c!218765 lt!442622)))))

(declare-fun bs!332149 () Bool)

(assert (= bs!332149 d!377440))

(declare-fun m!1496527 () Bool)

(assert (=> bs!332149 m!1496527))

(assert (=> d!376768 d!377440))

(declare-fun d!377442 () Bool)

(declare-fun c!219355 () Bool)

(assert (=> d!377442 (= c!219355 ((_ is Cons!13656) (list!5190 (singletonSeq!969 t1!34))))))

(declare-fun e!857302 () List!13717)

(assert (=> d!377442 (= (printList!582 thiss!19762 (list!5190 (singletonSeq!969 t1!34))) e!857302)))

(declare-fun b!1338419 () Bool)

(assert (=> b!1338419 (= e!857302 (++!3488 (list!5187 (charsOf!1339 (h!19057 (list!5190 (singletonSeq!969 t1!34))))) (printList!582 thiss!19762 (t!119321 (list!5190 (singletonSeq!969 t1!34))))))))

(declare-fun b!1338420 () Bool)

(assert (=> b!1338420 (= e!857302 Nil!13651)))

(assert (= (and d!377442 c!219355) b!1338419))

(assert (= (and d!377442 (not c!219355)) b!1338420))

(declare-fun m!1496529 () Bool)

(assert (=> b!1338419 m!1496529))

(assert (=> b!1338419 m!1496529))

(declare-fun m!1496531 () Bool)

(assert (=> b!1338419 m!1496531))

(declare-fun m!1496533 () Bool)

(assert (=> b!1338419 m!1496533))

(assert (=> b!1338419 m!1496531))

(assert (=> b!1338419 m!1496533))

(declare-fun m!1496535 () Bool)

(assert (=> b!1338419 m!1496535))

(assert (=> d!376768 d!377442))

(assert (=> d!376768 d!376772))

(declare-fun d!377444 () Bool)

(declare-fun lt!442926 () BalanceConc!8938)

(declare-fun printListTailRec!236 (LexerInterface!2062 List!13722 List!13717) List!13717)

(declare-fun dropList!379 (BalanceConc!8942 Int) List!13722)

(assert (=> d!377444 (= (list!5187 lt!442926) (printListTailRec!236 thiss!19762 (dropList!379 (singletonSeq!969 t1!34) 0) (list!5187 (BalanceConc!8939 Empty!4499))))))

(declare-fun e!857308 () BalanceConc!8938)

(assert (=> d!377444 (= lt!442926 e!857308)))

(declare-fun c!219358 () Bool)

(assert (=> d!377444 (= c!219358 (>= 0 (size!11120 (singletonSeq!969 t1!34))))))

(declare-fun e!857307 () Bool)

(assert (=> d!377444 e!857307))

(declare-fun res!603317 () Bool)

(assert (=> d!377444 (=> (not res!603317) (not e!857307))))

(assert (=> d!377444 (= res!603317 (>= 0 0))))

(assert (=> d!377444 (= (printTailRec!564 thiss!19762 (singletonSeq!969 t1!34) 0 (BalanceConc!8939 Empty!4499)) lt!442926)))

(declare-fun b!1338427 () Bool)

(assert (=> b!1338427 (= e!857307 (<= 0 (size!11120 (singletonSeq!969 t1!34))))))

(declare-fun b!1338428 () Bool)

(assert (=> b!1338428 (= e!857308 (BalanceConc!8939 Empty!4499))))

(declare-fun b!1338429 () Bool)

(assert (=> b!1338429 (= e!857308 (printTailRec!564 thiss!19762 (singletonSeq!969 t1!34) (+ 0 1) (++!3490 (BalanceConc!8939 Empty!4499) (charsOf!1339 (apply!3199 (singletonSeq!969 t1!34) 0)))))))

(declare-fun lt!442927 () List!13722)

(assert (=> b!1338429 (= lt!442927 (list!5190 (singletonSeq!969 t1!34)))))

(declare-fun lt!442928 () Unit!19781)

(declare-fun lemmaDropApply!427 (List!13722 Int) Unit!19781)

(assert (=> b!1338429 (= lt!442928 (lemmaDropApply!427 lt!442927 0))))

(declare-fun drop!667 (List!13722 Int) List!13722)

(assert (=> b!1338429 (= (head!2372 (drop!667 lt!442927 0)) (apply!3206 lt!442927 0))))

(declare-fun lt!442923 () Unit!19781)

(assert (=> b!1338429 (= lt!442923 lt!442928)))

(declare-fun lt!442924 () List!13722)

(assert (=> b!1338429 (= lt!442924 (list!5190 (singletonSeq!969 t1!34)))))

(declare-fun lt!442925 () Unit!19781)

(declare-fun lemmaDropTail!407 (List!13722 Int) Unit!19781)

(assert (=> b!1338429 (= lt!442925 (lemmaDropTail!407 lt!442924 0))))

(assert (=> b!1338429 (= (tail!1921 (drop!667 lt!442924 0)) (drop!667 lt!442924 (+ 0 1)))))

(declare-fun lt!442929 () Unit!19781)

(assert (=> b!1338429 (= lt!442929 lt!442925)))

(assert (= (and d!377444 res!603317) b!1338427))

(assert (= (and d!377444 c!219358) b!1338428))

(assert (= (and d!377444 (not c!219358)) b!1338429))

(declare-fun m!1496537 () Bool)

(assert (=> d!377444 m!1496537))

(declare-fun m!1496539 () Bool)

(assert (=> d!377444 m!1496539))

(declare-fun m!1496541 () Bool)

(assert (=> d!377444 m!1496541))

(declare-fun m!1496543 () Bool)

(assert (=> d!377444 m!1496543))

(assert (=> d!377444 m!1494027))

(assert (=> d!377444 m!1496539))

(assert (=> d!377444 m!1494027))

(declare-fun m!1496545 () Bool)

(assert (=> d!377444 m!1496545))

(assert (=> d!377444 m!1496541))

(assert (=> b!1338427 m!1494027))

(assert (=> b!1338427 m!1496545))

(declare-fun m!1496547 () Bool)

(assert (=> b!1338429 m!1496547))

(declare-fun m!1496549 () Bool)

(assert (=> b!1338429 m!1496549))

(declare-fun m!1496551 () Bool)

(assert (=> b!1338429 m!1496551))

(declare-fun m!1496553 () Bool)

(assert (=> b!1338429 m!1496553))

(assert (=> b!1338429 m!1494027))

(assert (=> b!1338429 m!1494031))

(declare-fun m!1496555 () Bool)

(assert (=> b!1338429 m!1496555))

(assert (=> b!1338429 m!1496555))

(declare-fun m!1496557 () Bool)

(assert (=> b!1338429 m!1496557))

(declare-fun m!1496559 () Bool)

(assert (=> b!1338429 m!1496559))

(declare-fun m!1496561 () Bool)

(assert (=> b!1338429 m!1496561))

(assert (=> b!1338429 m!1496549))

(declare-fun m!1496563 () Bool)

(assert (=> b!1338429 m!1496563))

(declare-fun m!1496565 () Bool)

(assert (=> b!1338429 m!1496565))

(assert (=> b!1338429 m!1494027))

(assert (=> b!1338429 m!1496561))

(assert (=> b!1338429 m!1496559))

(declare-fun m!1496567 () Bool)

(assert (=> b!1338429 m!1496567))

(assert (=> b!1338429 m!1494027))

(assert (=> b!1338429 m!1496551))

(declare-fun m!1496569 () Bool)

(assert (=> b!1338429 m!1496569))

(assert (=> d!376768 d!377444))

(declare-fun d!377446 () Bool)

(declare-fun res!603318 () Bool)

(declare-fun e!857309 () Bool)

(assert (=> d!377446 (=> (not res!603318) (not e!857309))))

(assert (=> d!377446 (= res!603318 (<= (size!11118 (list!5195 (xs!7214 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))) 512))))

(assert (=> d!377446 (= (inv!17997 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))) e!857309)))

(declare-fun b!1338430 () Bool)

(declare-fun res!603319 () Bool)

(assert (=> b!1338430 (=> (not res!603319) (not e!857309))))

(assert (=> b!1338430 (= res!603319 (= (csize!9229 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))) (size!11118 (list!5195 (xs!7214 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))))))))

(declare-fun b!1338431 () Bool)

(assert (=> b!1338431 (= e!857309 (and (> (csize!9229 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))) 0) (<= (csize!9229 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))) 512)))))

(assert (= (and d!377446 res!603318) b!1338430))

(assert (= (and b!1338430 res!603319) b!1338431))

(declare-fun m!1496571 () Bool)

(assert (=> d!377446 m!1496571))

(assert (=> d!377446 m!1496571))

(declare-fun m!1496573 () Bool)

(assert (=> d!377446 m!1496573))

(assert (=> b!1338430 m!1496571))

(assert (=> b!1338430 m!1496571))

(assert (=> b!1338430 m!1496573))

(assert (=> b!1337205 d!377446))

(declare-fun d!377448 () Bool)

(declare-fun res!603324 () Bool)

(declare-fun e!857314 () Bool)

(assert (=> d!377448 (=> res!603324 e!857314)))

(assert (=> d!377448 (= res!603324 ((_ is Nil!13657) (map!3011 rules!2550 lambda!56033)))))

(assert (=> d!377448 (= (forall!3336 (map!3011 rules!2550 lambda!56033) lambda!56034) e!857314)))

(declare-fun b!1338436 () Bool)

(declare-fun e!857315 () Bool)

(assert (=> b!1338436 (= e!857314 e!857315)))

(declare-fun res!603325 () Bool)

(assert (=> b!1338436 (=> (not res!603325) (not e!857315))))

(declare-fun dynLambda!6024 (Int Regex!3681) Bool)

(assert (=> b!1338436 (= res!603325 (dynLambda!6024 lambda!56034 (h!19058 (map!3011 rules!2550 lambda!56033))))))

(declare-fun b!1338437 () Bool)

(assert (=> b!1338437 (= e!857315 (forall!3336 (t!119322 (map!3011 rules!2550 lambda!56033)) lambda!56034))))

(assert (= (and d!377448 (not res!603324)) b!1338436))

(assert (= (and b!1338436 res!603325) b!1338437))

(declare-fun b_lambda!39497 () Bool)

(assert (=> (not b_lambda!39497) (not b!1338436)))

(declare-fun m!1496575 () Bool)

(assert (=> b!1338436 m!1496575))

(declare-fun m!1496577 () Bool)

(assert (=> b!1338437 m!1496577))

(assert (=> d!376530 d!377448))

(declare-fun d!377450 () Bool)

(declare-fun lt!442930 () List!13723)

(assert (=> d!377450 (= (size!11125 lt!442930) (size!11126 rules!2550))))

(declare-fun e!857316 () List!13723)

(assert (=> d!377450 (= lt!442930 e!857316)))

(declare-fun c!219359 () Bool)

(assert (=> d!377450 (= c!219359 ((_ is Nil!13652) rules!2550))))

(assert (=> d!377450 (= (map!3011 rules!2550 lambda!56033) lt!442930)))

(declare-fun b!1338438 () Bool)

(assert (=> b!1338438 (= e!857316 Nil!13657)))

(declare-fun b!1338439 () Bool)

(assert (=> b!1338439 (= e!857316 ($colon$colon!173 (map!3011 (t!119283 rules!2550) lambda!56033) (dynLambda!6012 lambda!56033 (h!19053 rules!2550))))))

(assert (= (and d!377450 c!219359) b!1338438))

(assert (= (and d!377450 (not c!219359)) b!1338439))

(declare-fun b_lambda!39499 () Bool)

(assert (=> (not b_lambda!39499) (not b!1338439)))

(declare-fun m!1496579 () Bool)

(assert (=> d!377450 m!1496579))

(assert (=> d!377450 m!1494335))

(declare-fun m!1496581 () Bool)

(assert (=> b!1338439 m!1496581))

(declare-fun m!1496583 () Bool)

(assert (=> b!1338439 m!1496583))

(assert (=> b!1338439 m!1496581))

(assert (=> b!1338439 m!1496583))

(declare-fun m!1496585 () Bool)

(assert (=> b!1338439 m!1496585))

(assert (=> d!376530 d!377450))

(declare-fun bs!332150 () Bool)

(declare-fun d!377452 () Bool)

(assert (= bs!332150 (and d!377452 d!376832)))

(declare-fun lambda!56091 () Int)

(assert (=> bs!332150 (= lambda!56091 lambda!56069)))

(assert (=> d!377452 true))

(declare-fun lt!442933 () Bool)

(assert (=> d!377452 (= lt!442933 (forall!3338 rules!2550 lambda!56091))))

(declare-fun e!857322 () Bool)

(assert (=> d!377452 (= lt!442933 e!857322)))

(declare-fun res!603330 () Bool)

(assert (=> d!377452 (=> res!603330 e!857322)))

(assert (=> d!377452 (= res!603330 (not ((_ is Cons!13652) rules!2550)))))

(assert (=> d!377452 (= (rulesValidInductive!748 thiss!19762 rules!2550) lt!442933)))

(declare-fun b!1338444 () Bool)

(declare-fun e!857321 () Bool)

(assert (=> b!1338444 (= e!857322 e!857321)))

(declare-fun res!603331 () Bool)

(assert (=> b!1338444 (=> (not res!603331) (not e!857321))))

(declare-fun ruleValid!580 (LexerInterface!2062 Rule!4534) Bool)

(assert (=> b!1338444 (= res!603331 (ruleValid!580 thiss!19762 (h!19053 rules!2550)))))

(declare-fun b!1338445 () Bool)

(assert (=> b!1338445 (= e!857321 (rulesValidInductive!748 thiss!19762 (t!119283 rules!2550)))))

(assert (= (and d!377452 (not res!603330)) b!1338444))

(assert (= (and b!1338444 res!603331) b!1338445))

(declare-fun m!1496587 () Bool)

(assert (=> d!377452 m!1496587))

(declare-fun m!1496589 () Bool)

(assert (=> b!1338444 m!1496589))

(declare-fun m!1496591 () Bool)

(assert (=> b!1338445 m!1496591))

(assert (=> d!376530 d!377452))

(declare-fun d!377454 () Bool)

(assert (=> d!377454 (= (list!5190 lt!442625) (list!5194 (c!218804 lt!442625)))))

(declare-fun bs!332151 () Bool)

(assert (= bs!332151 d!377454))

(declare-fun m!1496593 () Bool)

(assert (=> bs!332151 m!1496593))

(assert (=> d!376770 d!377454))

(declare-fun d!377456 () Bool)

(declare-fun e!857323 () Bool)

(assert (=> d!377456 e!857323))

(declare-fun res!603332 () Bool)

(assert (=> d!377456 (=> (not res!603332) (not e!857323))))

(declare-fun lt!442934 () BalanceConc!8942)

(assert (=> d!377456 (= res!603332 (= (list!5190 lt!442934) (Cons!13656 t1!34 Nil!13656)))))

(assert (=> d!377456 (= lt!442934 (choose!8198 t1!34))))

(assert (=> d!377456 (= (singleton!412 t1!34) lt!442934)))

(declare-fun b!1338446 () Bool)

(assert (=> b!1338446 (= e!857323 (isBalanced!1306 (c!218804 lt!442934)))))

(assert (= (and d!377456 res!603332) b!1338446))

(declare-fun m!1496595 () Bool)

(assert (=> d!377456 m!1496595))

(declare-fun m!1496597 () Bool)

(assert (=> d!377456 m!1496597))

(declare-fun m!1496599 () Bool)

(assert (=> b!1338446 m!1496599))

(assert (=> d!376770 d!377456))

(assert (=> b!1336762 d!376992))

(declare-fun d!377458 () Bool)

(declare-fun lt!442935 () Int)

(assert (=> d!377458 (>= lt!442935 0)))

(declare-fun e!857324 () Int)

(assert (=> d!377458 (= lt!442935 e!857324)))

(declare-fun c!219360 () Bool)

(assert (=> d!377458 (= c!219360 ((_ is Nil!13656) (list!5190 (_1!7523 lt!442404))))))

(assert (=> d!377458 (= (size!11127 (list!5190 (_1!7523 lt!442404))) lt!442935)))

(declare-fun b!1338447 () Bool)

(assert (=> b!1338447 (= e!857324 0)))

(declare-fun b!1338448 () Bool)

(assert (=> b!1338448 (= e!857324 (+ 1 (size!11127 (t!119321 (list!5190 (_1!7523 lt!442404))))))))

(assert (= (and d!377458 c!219360) b!1338447))

(assert (= (and d!377458 (not c!219360)) b!1338448))

(declare-fun m!1496601 () Bool)

(assert (=> b!1338448 m!1496601))

(assert (=> d!376796 d!377458))

(declare-fun d!377460 () Bool)

(assert (=> d!377460 (= (list!5190 (_1!7523 lt!442404)) (list!5194 (c!218804 (_1!7523 lt!442404))))))

(declare-fun bs!332152 () Bool)

(assert (= bs!332152 d!377460))

(declare-fun m!1496603 () Bool)

(assert (=> bs!332152 m!1496603))

(assert (=> d!376796 d!377460))

(declare-fun d!377462 () Bool)

(declare-fun lt!442936 () Int)

(assert (=> d!377462 (= lt!442936 (size!11127 (list!5194 (c!218804 (_1!7523 lt!442404)))))))

(assert (=> d!377462 (= lt!442936 (ite ((_ is Empty!4501) (c!218804 (_1!7523 lt!442404))) 0 (ite ((_ is Leaf!6881) (c!218804 (_1!7523 lt!442404))) (csize!9233 (c!218804 (_1!7523 lt!442404))) (csize!9232 (c!218804 (_1!7523 lt!442404))))))))

(assert (=> d!377462 (= (size!11128 (c!218804 (_1!7523 lt!442404))) lt!442936)))

(declare-fun bs!332153 () Bool)

(assert (= bs!332153 d!377462))

(assert (=> bs!332153 m!1496603))

(assert (=> bs!332153 m!1496603))

(declare-fun m!1496605 () Bool)

(assert (=> bs!332153 m!1496605))

(assert (=> d!376796 d!377462))

(assert (=> b!1336837 d!376784))

(assert (=> b!1336876 d!377064))

(assert (=> b!1336876 d!377066))

(assert (=> b!1336876 d!377068))

(assert (=> b!1336876 d!377170))

(assert (=> b!1336876 d!377172))

(declare-fun d!377464 () Bool)

(declare-fun lt!442937 () Int)

(assert (=> d!377464 (>= lt!442937 0)))

(declare-fun e!857325 () Int)

(assert (=> d!377464 (= lt!442937 e!857325)))

(declare-fun c!219361 () Bool)

(assert (=> d!377464 (= c!219361 ((_ is Nil!13651) lt!442371))))

(assert (=> d!377464 (= (size!11118 lt!442371) lt!442937)))

(declare-fun b!1338449 () Bool)

(assert (=> b!1338449 (= e!857325 0)))

(declare-fun b!1338450 () Bool)

(assert (=> b!1338450 (= e!857325 (+ 1 (size!11118 (t!119282 lt!442371))))))

(assert (= (and d!377464 c!219361) b!1338449))

(assert (= (and d!377464 (not c!219361)) b!1338450))

(declare-fun m!1496607 () Bool)

(assert (=> b!1338450 m!1496607))

(assert (=> b!1337188 d!377464))

(assert (=> b!1337188 d!376730))

(declare-fun b!1338451 () Bool)

(declare-fun e!857331 () Bool)

(declare-fun e!857327 () Bool)

(assert (=> b!1338451 (= e!857331 e!857327)))

(declare-fun res!603335 () Bool)

(assert (=> b!1338451 (= res!603335 (not (nullable!1169 (reg!4010 (ite c!218873 (reg!4010 lt!442339) (ite c!218872 (regOne!7875 lt!442339) (regOne!7874 lt!442339)))))))))

(assert (=> b!1338451 (=> (not res!603335) (not e!857327))))

(declare-fun b!1338452 () Bool)

(declare-fun res!603337 () Bool)

(declare-fun e!857329 () Bool)

(assert (=> b!1338452 (=> res!603337 e!857329)))

(assert (=> b!1338452 (= res!603337 (not ((_ is Concat!6139) (ite c!218873 (reg!4010 lt!442339) (ite c!218872 (regOne!7875 lt!442339) (regOne!7874 lt!442339))))))))

(declare-fun e!857328 () Bool)

(assert (=> b!1338452 (= e!857328 e!857329)))

(declare-fun b!1338453 () Bool)

(declare-fun e!857330 () Bool)

(assert (=> b!1338453 (= e!857329 e!857330)))

(declare-fun res!603333 () Bool)

(assert (=> b!1338453 (=> (not res!603333) (not e!857330))))

(declare-fun call!90405 () Bool)

(assert (=> b!1338453 (= res!603333 call!90405)))

(declare-fun call!90404 () Bool)

(declare-fun c!219363 () Bool)

(declare-fun c!219362 () Bool)

(declare-fun bm!90398 () Bool)

(assert (=> bm!90398 (= call!90404 (validRegex!1585 (ite c!219363 (reg!4010 (ite c!218873 (reg!4010 lt!442339) (ite c!218872 (regOne!7875 lt!442339) (regOne!7874 lt!442339)))) (ite c!219362 (regOne!7875 (ite c!218873 (reg!4010 lt!442339) (ite c!218872 (regOne!7875 lt!442339) (regOne!7874 lt!442339)))) (regOne!7874 (ite c!218873 (reg!4010 lt!442339) (ite c!218872 (regOne!7875 lt!442339) (regOne!7874 lt!442339))))))))))

(declare-fun d!377466 () Bool)

(declare-fun res!603334 () Bool)

(declare-fun e!857326 () Bool)

(assert (=> d!377466 (=> res!603334 e!857326)))

(assert (=> d!377466 (= res!603334 ((_ is ElementMatch!3681) (ite c!218873 (reg!4010 lt!442339) (ite c!218872 (regOne!7875 lt!442339) (regOne!7874 lt!442339)))))))

(assert (=> d!377466 (= (validRegex!1585 (ite c!218873 (reg!4010 lt!442339) (ite c!218872 (regOne!7875 lt!442339) (regOne!7874 lt!442339)))) e!857326)))

(declare-fun bm!90399 () Bool)

(assert (=> bm!90399 (= call!90405 call!90404)))

(declare-fun bm!90400 () Bool)

(declare-fun call!90403 () Bool)

(assert (=> bm!90400 (= call!90403 (validRegex!1585 (ite c!219362 (regTwo!7875 (ite c!218873 (reg!4010 lt!442339) (ite c!218872 (regOne!7875 lt!442339) (regOne!7874 lt!442339)))) (regTwo!7874 (ite c!218873 (reg!4010 lt!442339) (ite c!218872 (regOne!7875 lt!442339) (regOne!7874 lt!442339)))))))))

(declare-fun b!1338454 () Bool)

(assert (=> b!1338454 (= e!857327 call!90404)))

(declare-fun b!1338455 () Bool)

(assert (=> b!1338455 (= e!857331 e!857328)))

(assert (=> b!1338455 (= c!219362 ((_ is Union!3681) (ite c!218873 (reg!4010 lt!442339) (ite c!218872 (regOne!7875 lt!442339) (regOne!7874 lt!442339)))))))

(declare-fun b!1338456 () Bool)

(declare-fun res!603336 () Bool)

(declare-fun e!857332 () Bool)

(assert (=> b!1338456 (=> (not res!603336) (not e!857332))))

(assert (=> b!1338456 (= res!603336 call!90405)))

(assert (=> b!1338456 (= e!857328 e!857332)))

(declare-fun b!1338457 () Bool)

(assert (=> b!1338457 (= e!857326 e!857331)))

(assert (=> b!1338457 (= c!219363 ((_ is Star!3681) (ite c!218873 (reg!4010 lt!442339) (ite c!218872 (regOne!7875 lt!442339) (regOne!7874 lt!442339)))))))

(declare-fun b!1338458 () Bool)

(assert (=> b!1338458 (= e!857330 call!90403)))

(declare-fun b!1338459 () Bool)

(assert (=> b!1338459 (= e!857332 call!90403)))

(assert (= (and d!377466 (not res!603334)) b!1338457))

(assert (= (and b!1338457 c!219363) b!1338451))

(assert (= (and b!1338457 (not c!219363)) b!1338455))

(assert (= (and b!1338451 res!603335) b!1338454))

(assert (= (and b!1338455 c!219362) b!1338456))

(assert (= (and b!1338455 (not c!219362)) b!1338452))

(assert (= (and b!1338456 res!603336) b!1338459))

(assert (= (and b!1338452 (not res!603337)) b!1338453))

(assert (= (and b!1338453 res!603333) b!1338458))

(assert (= (or b!1338456 b!1338453) bm!90399))

(assert (= (or b!1338459 b!1338458) bm!90400))

(assert (= (or b!1338454 bm!90399) bm!90398))

(declare-fun m!1496609 () Bool)

(assert (=> b!1338451 m!1496609))

(declare-fun m!1496611 () Bool)

(assert (=> bm!90398 m!1496611))

(declare-fun m!1496613 () Bool)

(assert (=> bm!90400 m!1496613))

(assert (=> bm!90171 d!377466))

(assert (=> b!1336795 d!376782))

(assert (=> b!1337223 d!376774))

(declare-fun b!1338461 () Bool)

(declare-fun e!857333 () List!13717)

(declare-fun e!857334 () List!13717)

(assert (=> b!1338461 (= e!857333 e!857334)))

(declare-fun c!219365 () Bool)

(assert (=> b!1338461 (= c!219365 ((_ is Leaf!6879) (c!218765 lt!442409)))))

(declare-fun b!1338462 () Bool)

(assert (=> b!1338462 (= e!857334 (list!5195 (xs!7214 (c!218765 lt!442409))))))

(declare-fun d!377468 () Bool)

(declare-fun c!219364 () Bool)

(assert (=> d!377468 (= c!219364 ((_ is Empty!4499) (c!218765 lt!442409)))))

(assert (=> d!377468 (= (list!5191 (c!218765 lt!442409)) e!857333)))

(declare-fun b!1338460 () Bool)

(assert (=> b!1338460 (= e!857333 Nil!13651)))

(declare-fun b!1338463 () Bool)

(assert (=> b!1338463 (= e!857334 (++!3488 (list!5191 (left!11716 (c!218765 lt!442409))) (list!5191 (right!12046 (c!218765 lt!442409)))))))

(assert (= (and d!377468 c!219364) b!1338460))

(assert (= (and d!377468 (not c!219364)) b!1338461))

(assert (= (and b!1338461 c!219365) b!1338462))

(assert (= (and b!1338461 (not c!219365)) b!1338463))

(declare-fun m!1496615 () Bool)

(assert (=> b!1338462 m!1496615))

(declare-fun m!1496617 () Bool)

(assert (=> b!1338463 m!1496617))

(declare-fun m!1496619 () Bool)

(assert (=> b!1338463 m!1496619))

(assert (=> b!1338463 m!1496617))

(assert (=> b!1338463 m!1496619))

(declare-fun m!1496621 () Bool)

(assert (=> b!1338463 m!1496621))

(assert (=> d!376830 d!377468))

(declare-fun d!377470 () Bool)

(declare-fun lt!442938 () Int)

(assert (=> d!377470 (= lt!442938 (size!11118 (list!5187 (charsOf!1339 t2!34))))))

(assert (=> d!377470 (= lt!442938 (size!11119 (c!218765 (charsOf!1339 t2!34))))))

(assert (=> d!377470 (= (size!11114 (charsOf!1339 t2!34)) lt!442938)))

(declare-fun bs!332154 () Bool)

(assert (= bs!332154 d!377470))

(assert (=> bs!332154 m!1493757))

(assert (=> bs!332154 m!1494751))

(assert (=> bs!332154 m!1494751))

(declare-fun m!1496623 () Bool)

(assert (=> bs!332154 m!1496623))

(declare-fun m!1496625 () Bool)

(assert (=> bs!332154 m!1496625))

(assert (=> b!1336951 d!377470))

(assert (=> b!1336966 d!376824))

(assert (=> b!1336963 d!377224))

(declare-fun d!377472 () Bool)

(declare-fun nullableFct!267 (Regex!3681) Bool)

(assert (=> d!377472 (= (nullable!1169 (reg!4010 lt!442339)) (nullableFct!267 (reg!4010 lt!442339)))))

(declare-fun bs!332155 () Bool)

(assert (= bs!332155 d!377472))

(declare-fun m!1496627 () Bool)

(assert (=> bs!332155 m!1496627))

(assert (=> b!1336660 d!377472))

(declare-fun d!377474 () Bool)

(declare-fun lt!442939 () Int)

(assert (=> d!377474 (= lt!442939 (size!11118 (list!5191 (left!11716 (c!218765 lt!442341)))))))

(assert (=> d!377474 (= lt!442939 (ite ((_ is Empty!4499) (left!11716 (c!218765 lt!442341))) 0 (ite ((_ is Leaf!6879) (left!11716 (c!218765 lt!442341))) (csize!9229 (left!11716 (c!218765 lt!442341))) (csize!9228 (left!11716 (c!218765 lt!442341))))))))

(assert (=> d!377474 (= (size!11119 (left!11716 (c!218765 lt!442341))) lt!442939)))

(declare-fun bs!332156 () Bool)

(assert (= bs!332156 d!377474))

(assert (=> bs!332156 m!1494507))

(assert (=> bs!332156 m!1494507))

(declare-fun m!1496629 () Bool)

(assert (=> bs!332156 m!1496629))

(assert (=> b!1336831 d!377474))

(declare-fun d!377476 () Bool)

(declare-fun lt!442940 () Int)

(assert (=> d!377476 (= lt!442940 (size!11118 (list!5191 (c!218765 lt!442342))))))

(assert (=> d!377476 (= lt!442940 (ite ((_ is Empty!4499) (c!218765 lt!442342)) 0 (ite ((_ is Leaf!6879) (c!218765 lt!442342)) (csize!9229 (c!218765 lt!442342)) (csize!9228 (c!218765 lt!442342)))))))

(assert (=> d!377476 (= (size!11119 (c!218765 lt!442342)) lt!442940)))

(declare-fun bs!332157 () Bool)

(assert (= bs!332157 d!377476))

(assert (=> bs!332157 m!1494079))

(assert (=> bs!332157 m!1494079))

(assert (=> bs!332157 m!1495299))

(assert (=> b!1336975 d!377476))

(declare-fun d!377478 () Bool)

(declare-fun lt!442943 () Int)

(assert (=> d!377478 (>= lt!442943 0)))

(declare-fun e!857337 () Int)

(assert (=> d!377478 (= lt!442943 e!857337)))

(declare-fun c!219368 () Bool)

(assert (=> d!377478 (= c!219368 ((_ is Nil!13657) lt!442468))))

(assert (=> d!377478 (= (size!11125 lt!442468) lt!442943)))

(declare-fun b!1338468 () Bool)

(assert (=> b!1338468 (= e!857337 0)))

(declare-fun b!1338469 () Bool)

(assert (=> b!1338469 (= e!857337 (+ 1 (size!11125 (t!119322 lt!442468))))))

(assert (= (and d!377478 c!219368) b!1338468))

(assert (= (and d!377478 (not c!219368)) b!1338469))

(declare-fun m!1496631 () Bool)

(assert (=> b!1338469 m!1496631))

(assert (=> d!376536 d!377478))

(declare-fun d!377480 () Bool)

(declare-fun lt!442946 () Int)

(assert (=> d!377480 (>= lt!442946 0)))

(declare-fun e!857340 () Int)

(assert (=> d!377480 (= lt!442946 e!857340)))

(declare-fun c!219371 () Bool)

(assert (=> d!377480 (= c!219371 ((_ is Nil!13652) rules!2550))))

(assert (=> d!377480 (= (size!11126 rules!2550) lt!442946)))

(declare-fun b!1338474 () Bool)

(assert (=> b!1338474 (= e!857340 0)))

(declare-fun b!1338475 () Bool)

(assert (=> b!1338475 (= e!857340 (+ 1 (size!11126 (t!119283 rules!2550))))))

(assert (= (and d!377480 c!219371) b!1338474))

(assert (= (and d!377480 (not c!219371)) b!1338475))

(assert (=> b!1338475 m!1495359))

(assert (=> d!376536 d!377480))

(declare-fun d!377482 () Bool)

(declare-fun lt!442947 () Int)

(assert (=> d!377482 (>= lt!442947 0)))

(declare-fun e!857341 () Int)

(assert (=> d!377482 (= lt!442947 e!857341)))

(declare-fun c!219372 () Bool)

(assert (=> d!377482 (= c!219372 ((_ is Nil!13651) (t!119282 (originalCharacters!3229 t2!34))))))

(assert (=> d!377482 (= (size!11118 (t!119282 (originalCharacters!3229 t2!34))) lt!442947)))

(declare-fun b!1338476 () Bool)

(assert (=> b!1338476 (= e!857341 0)))

(declare-fun b!1338477 () Bool)

(assert (=> b!1338477 (= e!857341 (+ 1 (size!11118 (t!119282 (t!119282 (originalCharacters!3229 t2!34))))))))

(assert (= (and d!377482 c!219372) b!1338476))

(assert (= (and d!377482 (not c!219372)) b!1338477))

(declare-fun m!1496633 () Bool)

(assert (=> b!1338477 m!1496633))

(assert (=> b!1336631 d!377482))

(declare-fun b!1338478 () Bool)

(declare-fun res!603339 () Bool)

(declare-fun e!857343 () Bool)

(assert (=> b!1338478 (=> (not res!603339) (not e!857343))))

(assert (=> b!1338478 (= res!603339 (not (isEmpty!8148 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))))))

(declare-fun b!1338479 () Bool)

(declare-fun res!603340 () Bool)

(assert (=> b!1338479 (=> (not res!603340) (not e!857343))))

(assert (=> b!1338479 (= res!603340 (isBalanced!1305 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))))))

(declare-fun b!1338480 () Bool)

(declare-fun res!603341 () Bool)

(assert (=> b!1338480 (=> (not res!603341) (not e!857343))))

(assert (=> b!1338480 (= res!603341 (<= (- (height!635 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))) (height!635 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))) 1))))

(declare-fun b!1338481 () Bool)

(declare-fun e!857342 () Bool)

(assert (=> b!1338481 (= e!857342 e!857343)))

(declare-fun res!603338 () Bool)

(assert (=> b!1338481 (=> (not res!603338) (not e!857343))))

(assert (=> b!1338481 (= res!603338 (<= (- 1) (- (height!635 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))) (height!635 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))))))))

(declare-fun d!377484 () Bool)

(declare-fun res!603343 () Bool)

(assert (=> d!377484 (=> res!603343 e!857342)))

(assert (=> d!377484 (= res!603343 (not ((_ is Node!4499) (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))))))

(assert (=> d!377484 (= (isBalanced!1305 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))) e!857342)))

(declare-fun b!1338482 () Bool)

(declare-fun res!603342 () Bool)

(assert (=> b!1338482 (=> (not res!603342) (not e!857343))))

(assert (=> b!1338482 (= res!603342 (isBalanced!1305 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))))))

(declare-fun b!1338483 () Bool)

(assert (=> b!1338483 (= e!857343 (not (isEmpty!8148 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))))))

(assert (= (and d!377484 (not res!603343)) b!1338481))

(assert (= (and b!1338481 res!603338) b!1338480))

(assert (= (and b!1338480 res!603341) b!1338479))

(assert (= (and b!1338479 res!603340) b!1338482))

(assert (= (and b!1338482 res!603342) b!1338478))

(assert (= (and b!1338478 res!603339) b!1338483))

(declare-fun m!1496635 () Bool)

(assert (=> b!1338483 m!1496635))

(declare-fun m!1496637 () Bool)

(assert (=> b!1338479 m!1496637))

(declare-fun m!1496639 () Bool)

(assert (=> b!1338481 m!1496639))

(declare-fun m!1496641 () Bool)

(assert (=> b!1338481 m!1496641))

(declare-fun m!1496643 () Bool)

(assert (=> b!1338478 m!1496643))

(assert (=> b!1338480 m!1496639))

(assert (=> b!1338480 m!1496641))

(declare-fun m!1496645 () Bool)

(assert (=> b!1338482 m!1496645))

(assert (=> d!376528 d!377484))

(declare-fun d!377486 () Bool)

(declare-fun c!219373 () Bool)

(assert (=> d!377486 (= c!219373 ((_ is Node!4499) (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))))))

(declare-fun e!857344 () Bool)

(assert (=> d!377486 (= (inv!17991 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))) e!857344)))

(declare-fun b!1338484 () Bool)

(assert (=> b!1338484 (= e!857344 (inv!17996 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))))))

(declare-fun b!1338485 () Bool)

(declare-fun e!857345 () Bool)

(assert (=> b!1338485 (= e!857344 e!857345)))

(declare-fun res!603344 () Bool)

(assert (=> b!1338485 (= res!603344 (not ((_ is Leaf!6879) (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))))))

(assert (=> b!1338485 (=> res!603344 e!857345)))

(declare-fun b!1338486 () Bool)

(assert (=> b!1338486 (= e!857345 (inv!17997 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))))))

(assert (= (and d!377486 c!219373) b!1338484))

(assert (= (and d!377486 (not c!219373)) b!1338485))

(assert (= (and b!1338485 (not res!603344)) b!1338486))

(declare-fun m!1496647 () Bool)

(assert (=> b!1338484 m!1496647))

(declare-fun m!1496649 () Bool)

(assert (=> b!1338486 m!1496649))

(assert (=> b!1337329 d!377486))

(declare-fun d!377488 () Bool)

(declare-fun c!219374 () Bool)

(assert (=> d!377488 (= c!219374 ((_ is Node!4499) (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))))))

(declare-fun e!857346 () Bool)

(assert (=> d!377488 (= (inv!17991 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))) e!857346)))

(declare-fun b!1338487 () Bool)

(assert (=> b!1338487 (= e!857346 (inv!17996 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))))))

(declare-fun b!1338488 () Bool)

(declare-fun e!857347 () Bool)

(assert (=> b!1338488 (= e!857346 e!857347)))

(declare-fun res!603345 () Bool)

(assert (=> b!1338488 (= res!603345 (not ((_ is Leaf!6879) (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))))))

(assert (=> b!1338488 (=> res!603345 e!857347)))

(declare-fun b!1338489 () Bool)

(assert (=> b!1338489 (= e!857347 (inv!17997 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))))))

(assert (= (and d!377488 c!219374) b!1338487))

(assert (= (and d!377488 (not c!219374)) b!1338488))

(assert (= (and b!1338488 (not res!603345)) b!1338489))

(declare-fun m!1496651 () Bool)

(assert (=> b!1338487 m!1496651))

(declare-fun m!1496653 () Bool)

(assert (=> b!1338489 m!1496653))

(assert (=> b!1337329 d!377488))

(declare-fun d!377490 () Bool)

(assert (=> d!377490 (= (Forall!522 lambda!56044) (choose!8200 lambda!56044))))

(declare-fun bs!332158 () Bool)

(assert (= bs!332158 d!377490))

(declare-fun m!1496655 () Bool)

(assert (=> bs!332158 m!1496655))

(assert (=> d!376570 d!377490))

(declare-fun d!377492 () Bool)

(declare-fun c!219375 () Bool)

(assert (=> d!377492 (= c!219375 ((_ is Nil!13651) lt!442633))))

(declare-fun e!857348 () (InoxSet C!7652))

(assert (=> d!377492 (= (content!1937 lt!442633) e!857348)))

(declare-fun b!1338490 () Bool)

(assert (=> b!1338490 (= e!857348 ((as const (Array C!7652 Bool)) false))))

(declare-fun b!1338491 () Bool)

(assert (=> b!1338491 (= e!857348 ((_ map or) (store ((as const (Array C!7652 Bool)) false) (h!19052 lt!442633) true) (content!1937 (t!119282 lt!442633))))))

(assert (= (and d!377492 c!219375) b!1338490))

(assert (= (and d!377492 (not c!219375)) b!1338491))

(declare-fun m!1496657 () Bool)

(assert (=> b!1338491 m!1496657))

(declare-fun m!1496659 () Bool)

(assert (=> b!1338491 m!1496659))

(assert (=> d!376788 d!377492))

(assert (=> d!376788 d!376540))

(declare-fun d!377494 () Bool)

(declare-fun c!219376 () Bool)

(assert (=> d!377494 (= c!219376 ((_ is Nil!13651) lt!442368))))

(declare-fun e!857349 () (InoxSet C!7652))

(assert (=> d!377494 (= (content!1937 lt!442368) e!857349)))

(declare-fun b!1338492 () Bool)

(assert (=> b!1338492 (= e!857349 ((as const (Array C!7652 Bool)) false))))

(declare-fun b!1338493 () Bool)

(assert (=> b!1338493 (= e!857349 ((_ map or) (store ((as const (Array C!7652 Bool)) false) (h!19052 lt!442368) true) (content!1937 (t!119282 lt!442368))))))

(assert (= (and d!377494 c!219376) b!1338492))

(assert (= (and d!377494 (not c!219376)) b!1338493))

(declare-fun m!1496661 () Bool)

(assert (=> b!1338493 m!1496661))

(declare-fun m!1496663 () Bool)

(assert (=> b!1338493 m!1496663))

(assert (=> d!376788 d!377494))

(declare-fun d!377496 () Bool)

(declare-fun c!219377 () Bool)

(assert (=> d!377496 (= c!219377 ((_ is Nil!13651) (t!119282 lt!442413)))))

(declare-fun e!857350 () (InoxSet C!7652))

(assert (=> d!377496 (= (content!1937 (t!119282 lt!442413)) e!857350)))

(declare-fun b!1338494 () Bool)

(assert (=> b!1338494 (= e!857350 ((as const (Array C!7652 Bool)) false))))

(declare-fun b!1338495 () Bool)

(assert (=> b!1338495 (= e!857350 ((_ map or) (store ((as const (Array C!7652 Bool)) false) (h!19052 (t!119282 lt!442413)) true) (content!1937 (t!119282 (t!119282 lt!442413)))))))

(assert (= (and d!377496 c!219377) b!1338494))

(assert (= (and d!377496 (not c!219377)) b!1338495))

(declare-fun m!1496665 () Bool)

(assert (=> b!1338495 m!1496665))

(declare-fun m!1496667 () Bool)

(assert (=> b!1338495 m!1496667))

(assert (=> b!1337230 d!377496))

(declare-fun d!377498 () Bool)

(assert (=> d!377498 (= (Forall2!425 lambda!56066) (choose!8206 lambda!56066))))

(declare-fun bs!332159 () Bool)

(assert (= bs!332159 d!377498))

(declare-fun m!1496669 () Bool)

(assert (=> bs!332159 m!1496669))

(assert (=> d!376828 d!377498))

(declare-fun d!377500 () Bool)

(assert (=> d!377500 (= (isEmpty!8147 (map!3011 rules!2550 lambda!56016)) ((_ is Nil!13657) (map!3011 rules!2550 lambda!56016)))))

(assert (=> b!1336610 d!377500))

(declare-fun d!377502 () Bool)

(assert (=> d!377502 (= (inv!17998 (xs!7214 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))) (<= (size!11118 (innerList!4559 (xs!7214 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))) 2147483647))))

(declare-fun bs!332160 () Bool)

(assert (= bs!332160 d!377502))

(declare-fun m!1496671 () Bool)

(assert (=> bs!332160 m!1496671))

(assert (=> b!1337314 d!377502))

(declare-fun d!377504 () Bool)

(declare-fun lt!442948 () Bool)

(assert (=> d!377504 (= lt!442948 (select (content!1937 (t!119282 (t!119282 lt!442344))) (apply!3195 lt!442342 0)))))

(declare-fun e!857351 () Bool)

(assert (=> d!377504 (= lt!442948 e!857351)))

(declare-fun res!603346 () Bool)

(assert (=> d!377504 (=> (not res!603346) (not e!857351))))

(assert (=> d!377504 (= res!603346 ((_ is Cons!13651) (t!119282 (t!119282 lt!442344))))))

(assert (=> d!377504 (= (contains!2489 (t!119282 (t!119282 lt!442344)) (apply!3195 lt!442342 0)) lt!442948)))

(declare-fun b!1338496 () Bool)

(declare-fun e!857352 () Bool)

(assert (=> b!1338496 (= e!857351 e!857352)))

(declare-fun res!603347 () Bool)

(assert (=> b!1338496 (=> res!603347 e!857352)))

(assert (=> b!1338496 (= res!603347 (= (h!19052 (t!119282 (t!119282 lt!442344))) (apply!3195 lt!442342 0)))))

(declare-fun b!1338497 () Bool)

(assert (=> b!1338497 (= e!857352 (contains!2489 (t!119282 (t!119282 (t!119282 lt!442344))) (apply!3195 lt!442342 0)))))

(assert (= (and d!377504 res!603346) b!1338496))

(assert (= (and b!1338496 (not res!603347)) b!1338497))

(assert (=> d!377504 m!1495289))

(assert (=> d!377504 m!1493721))

(declare-fun m!1496673 () Bool)

(assert (=> d!377504 m!1496673))

(assert (=> b!1338497 m!1493721))

(declare-fun m!1496675 () Bool)

(assert (=> b!1338497 m!1496675))

(assert (=> b!1337158 d!377504))

(declare-fun d!377506 () Bool)

(declare-fun c!219378 () Bool)

(assert (=> d!377506 (= c!219378 ((_ is Nil!13650) (text!17648 (value!77092 t1!34))))))

(declare-fun e!857353 () Int)

(assert (=> d!377506 (= (charsToBigInt!0 (text!17648 (value!77092 t1!34)) 0) e!857353)))

(declare-fun b!1338498 () Bool)

(assert (=> b!1338498 (= e!857353 0)))

(declare-fun b!1338499 () Bool)

(assert (=> b!1338499 (= e!857353 (charsToBigInt!0 (t!119281 (text!17648 (value!77092 t1!34))) (+ (* 0 10) (charToBigInt!0 (h!19051 (text!17648 (value!77092 t1!34)))))))))

(assert (= (and d!377506 c!219378) b!1338498))

(assert (= (and d!377506 (not c!219378)) b!1338499))

(declare-fun m!1496677 () Bool)

(assert (=> b!1338499 m!1496677))

(declare-fun m!1496679 () Bool)

(assert (=> b!1338499 m!1496679))

(assert (=> d!376572 d!377506))

(declare-fun b!1338500 () Bool)

(declare-fun e!857356 () Bool)

(declare-fun e!857355 () Bool)

(assert (=> b!1338500 (= e!857356 e!857355)))

(declare-fun res!603349 () Bool)

(assert (=> b!1338500 (= res!603349 (not ((_ is Cons!13652) rules!2550)))))

(assert (=> b!1338500 (=> res!603349 e!857355)))

(declare-fun d!377508 () Bool)

(declare-fun c!219379 () Bool)

(assert (=> d!377508 (= c!219379 (and ((_ is Cons!13652) rules!2550) (not (= (isSeparator!2367 (h!19053 rules!2550)) (isSeparator!2367 (h!19053 (t!119283 rules!2550)))))))))

(assert (=> d!377508 (= (ruleDisjointCharsFromAllFromOtherType!336 (h!19053 (t!119283 rules!2550)) rules!2550) e!857356)))

(declare-fun bm!90401 () Bool)

(declare-fun call!90406 () Bool)

(assert (=> bm!90401 (= call!90406 (ruleDisjointCharsFromAllFromOtherType!336 (h!19053 (t!119283 rules!2550)) (t!119283 rules!2550)))))

(declare-fun b!1338501 () Bool)

(declare-fun e!857354 () Bool)

(assert (=> b!1338501 (= e!857354 call!90406)))

(declare-fun b!1338502 () Bool)

(assert (=> b!1338502 (= e!857356 e!857354)))

(declare-fun res!603348 () Bool)

(assert (=> b!1338502 (= res!603348 (rulesUseDisjointChars!166 (h!19053 (t!119283 rules!2550)) (h!19053 rules!2550)))))

(assert (=> b!1338502 (=> (not res!603348) (not e!857354))))

(declare-fun b!1338503 () Bool)

(assert (=> b!1338503 (= e!857355 call!90406)))

(assert (= (and d!377508 c!219379) b!1338502))

(assert (= (and d!377508 (not c!219379)) b!1338500))

(assert (= (and b!1338502 res!603348) b!1338501))

(assert (= (and b!1338500 (not res!603349)) b!1338503))

(assert (= (or b!1338501 b!1338503) bm!90401))

(declare-fun m!1496681 () Bool)

(assert (=> bm!90401 m!1496681))

(declare-fun m!1496683 () Bool)

(assert (=> b!1338502 m!1496683))

(assert (=> b!1336618 d!377508))

(declare-fun d!377510 () Bool)

(declare-fun lt!442949 () C!7652)

(assert (=> d!377510 (= lt!442949 (apply!3200 (list!5195 (xs!7214 (c!218765 lt!442342))) 0))))

(assert (=> d!377510 (= lt!442949 (choose!8202 (xs!7214 (c!218765 lt!442342)) 0))))

(declare-fun e!857357 () Bool)

(assert (=> d!377510 e!857357))

(declare-fun res!603350 () Bool)

(assert (=> d!377510 (=> (not res!603350) (not e!857357))))

(assert (=> d!377510 (= res!603350 (<= 0 0))))

(assert (=> d!377510 (= (apply!3205 (xs!7214 (c!218765 lt!442342)) 0) lt!442949)))

(declare-fun b!1338504 () Bool)

(assert (=> b!1338504 (= e!857357 (< 0 (size!11130 (xs!7214 (c!218765 lt!442342)))))))

(assert (= (and d!377510 res!603350) b!1338504))

(assert (=> d!377510 m!1495021))

(assert (=> d!377510 m!1495021))

(declare-fun m!1496685 () Bool)

(assert (=> d!377510 m!1496685))

(declare-fun m!1496687 () Bool)

(assert (=> d!377510 m!1496687))

(declare-fun m!1496689 () Bool)

(assert (=> b!1338504 m!1496689))

(assert (=> b!1336972 d!377510))

(declare-fun b!1338506 () Bool)

(declare-fun e!857358 () List!13717)

(declare-fun e!857359 () List!13717)

(assert (=> b!1338506 (= e!857358 e!857359)))

(declare-fun c!219381 () Bool)

(assert (=> b!1338506 (= c!219381 ((_ is Leaf!6879) (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))))

(declare-fun b!1338507 () Bool)

(assert (=> b!1338507 (= e!857359 (list!5195 (xs!7214 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))))))

(declare-fun d!377512 () Bool)

(declare-fun c!219380 () Bool)

(assert (=> d!377512 (= c!219380 ((_ is Empty!4499) (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))))

(assert (=> d!377512 (= (list!5191 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))) e!857358)))

(declare-fun b!1338505 () Bool)

(assert (=> b!1338505 (= e!857358 Nil!13651)))

(declare-fun b!1338508 () Bool)

(assert (=> b!1338508 (= e!857359 (++!3488 (list!5191 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))) (list!5191 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))))))

(assert (= (and d!377512 c!219380) b!1338505))

(assert (= (and d!377512 (not c!219380)) b!1338506))

(assert (= (and b!1338506 c!219381) b!1338507))

(assert (= (and b!1338506 (not c!219381)) b!1338508))

(assert (=> b!1338507 m!1496571))

(declare-fun m!1496691 () Bool)

(assert (=> b!1338508 m!1496691))

(declare-fun m!1496693 () Bool)

(assert (=> b!1338508 m!1496693))

(assert (=> b!1338508 m!1496691))

(assert (=> b!1338508 m!1496693))

(declare-fun m!1496695 () Bool)

(assert (=> b!1338508 m!1496695))

(assert (=> d!376816 d!377512))

(declare-fun d!377514 () Bool)

(declare-fun lt!442950 () C!7652)

(assert (=> d!377514 (contains!2489 (list!5187 (charsOf!1339 t2!34)) lt!442950)))

(declare-fun e!857361 () C!7652)

(assert (=> d!377514 (= lt!442950 e!857361)))

(declare-fun c!219382 () Bool)

(assert (=> d!377514 (= c!219382 (= 0 0))))

(declare-fun e!857360 () Bool)

(assert (=> d!377514 e!857360))

(declare-fun res!603351 () Bool)

(assert (=> d!377514 (=> (not res!603351) (not e!857360))))

(assert (=> d!377514 (= res!603351 (<= 0 0))))

(assert (=> d!377514 (= (apply!3200 (list!5187 (charsOf!1339 t2!34)) 0) lt!442950)))

(declare-fun b!1338509 () Bool)

(assert (=> b!1338509 (= e!857360 (< 0 (size!11118 (list!5187 (charsOf!1339 t2!34)))))))

(declare-fun b!1338510 () Bool)

(assert (=> b!1338510 (= e!857361 (head!2369 (list!5187 (charsOf!1339 t2!34))))))

(declare-fun b!1338511 () Bool)

(assert (=> b!1338511 (= e!857361 (apply!3200 (tail!1918 (list!5187 (charsOf!1339 t2!34))) (- 0 1)))))

(assert (= (and d!377514 res!603351) b!1338509))

(assert (= (and d!377514 c!219382) b!1338510))

(assert (= (and d!377514 (not c!219382)) b!1338511))

(assert (=> d!377514 m!1494751))

(declare-fun m!1496697 () Bool)

(assert (=> d!377514 m!1496697))

(assert (=> b!1338509 m!1494751))

(assert (=> b!1338509 m!1496623))

(assert (=> b!1338510 m!1494751))

(declare-fun m!1496699 () Bool)

(assert (=> b!1338510 m!1496699))

(assert (=> b!1338511 m!1494751))

(declare-fun m!1496701 () Bool)

(assert (=> b!1338511 m!1496701))

(assert (=> b!1338511 m!1496701))

(declare-fun m!1496703 () Bool)

(assert (=> b!1338511 m!1496703))

(assert (=> d!376704 d!377514))

(declare-fun d!377516 () Bool)

(assert (=> d!377516 (= (list!5187 (charsOf!1339 t2!34)) (list!5191 (c!218765 (charsOf!1339 t2!34))))))

(declare-fun bs!332161 () Bool)

(assert (= bs!332161 d!377516))

(declare-fun m!1496705 () Bool)

(assert (=> bs!332161 m!1496705))

(assert (=> d!376704 d!377516))

(declare-fun b!1338512 () Bool)

(declare-fun e!857363 () Int)

(assert (=> b!1338512 (= e!857363 (- 0 (size!11119 (left!11716 (c!218765 (charsOf!1339 t2!34))))))))

(declare-fun b!1338513 () Bool)

(declare-fun e!857364 () C!7652)

(declare-fun e!857362 () C!7652)

(assert (=> b!1338513 (= e!857364 e!857362)))

(declare-fun lt!442951 () Bool)

(assert (=> b!1338513 (= lt!442951 (appendIndex!147 (list!5191 (left!11716 (c!218765 (charsOf!1339 t2!34)))) (list!5191 (right!12046 (c!218765 (charsOf!1339 t2!34)))) 0))))

(declare-fun c!219385 () Bool)

(assert (=> b!1338513 (= c!219385 (< 0 (size!11119 (left!11716 (c!218765 (charsOf!1339 t2!34))))))))

(declare-fun b!1338514 () Bool)

(assert (=> b!1338514 (= e!857363 0)))

(declare-fun d!377518 () Bool)

(declare-fun lt!442952 () C!7652)

(assert (=> d!377518 (= lt!442952 (apply!3200 (list!5191 (c!218765 (charsOf!1339 t2!34))) 0))))

(assert (=> d!377518 (= lt!442952 e!857364)))

(declare-fun c!219384 () Bool)

(assert (=> d!377518 (= c!219384 ((_ is Leaf!6879) (c!218765 (charsOf!1339 t2!34))))))

(declare-fun e!857365 () Bool)

(assert (=> d!377518 e!857365))

(declare-fun res!603352 () Bool)

(assert (=> d!377518 (=> (not res!603352) (not e!857365))))

(assert (=> d!377518 (= res!603352 (<= 0 0))))

(assert (=> d!377518 (= (apply!3201 (c!218765 (charsOf!1339 t2!34)) 0) lt!442952)))

(declare-fun b!1338515 () Bool)

(assert (=> b!1338515 (= e!857364 (apply!3205 (xs!7214 (c!218765 (charsOf!1339 t2!34))) 0))))

(declare-fun b!1338516 () Bool)

(declare-fun call!90407 () C!7652)

(assert (=> b!1338516 (= e!857362 call!90407)))

(declare-fun bm!90402 () Bool)

(declare-fun c!219383 () Bool)

(assert (=> bm!90402 (= c!219383 c!219385)))

(assert (=> bm!90402 (= call!90407 (apply!3201 (ite c!219385 (left!11716 (c!218765 (charsOf!1339 t2!34))) (right!12046 (c!218765 (charsOf!1339 t2!34)))) e!857363))))

(declare-fun b!1338517 () Bool)

(assert (=> b!1338517 (= e!857362 call!90407)))

(declare-fun b!1338518 () Bool)

(assert (=> b!1338518 (= e!857365 (< 0 (size!11119 (c!218765 (charsOf!1339 t2!34)))))))

(assert (= (and d!377518 res!603352) b!1338518))

(assert (= (and d!377518 c!219384) b!1338515))

(assert (= (and d!377518 (not c!219384)) b!1338513))

(assert (= (and b!1338513 c!219385) b!1338517))

(assert (= (and b!1338513 (not c!219385)) b!1338516))

(assert (= (or b!1338517 b!1338516) bm!90402))

(assert (= (and bm!90402 c!219383) b!1338514))

(assert (= (and bm!90402 (not c!219383)) b!1338512))

(declare-fun m!1496707 () Bool)

(assert (=> b!1338513 m!1496707))

(declare-fun m!1496709 () Bool)

(assert (=> b!1338513 m!1496709))

(assert (=> b!1338513 m!1496707))

(assert (=> b!1338513 m!1496709))

(declare-fun m!1496711 () Bool)

(assert (=> b!1338513 m!1496711))

(declare-fun m!1496713 () Bool)

(assert (=> b!1338513 m!1496713))

(declare-fun m!1496715 () Bool)

(assert (=> b!1338515 m!1496715))

(declare-fun m!1496717 () Bool)

(assert (=> bm!90402 m!1496717))

(assert (=> b!1338518 m!1496625))

(assert (=> d!377518 m!1496705))

(assert (=> d!377518 m!1496705))

(declare-fun m!1496719 () Bool)

(assert (=> d!377518 m!1496719))

(assert (=> b!1338512 m!1496713))

(assert (=> d!376704 d!377518))

(declare-fun d!377520 () Bool)

(assert (=> d!377520 (= (isEmpty!8143 (tail!1918 lt!442344)) ((_ is Nil!13651) (tail!1918 lt!442344)))))

(assert (=> d!376868 d!377520))

(declare-fun d!377522 () Bool)

(declare-fun c!219386 () Bool)

(assert (=> d!377522 (= c!219386 ((_ is Node!4499) (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))))))

(declare-fun e!857366 () Bool)

(assert (=> d!377522 (= (inv!17991 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))) e!857366)))

(declare-fun b!1338519 () Bool)

(assert (=> b!1338519 (= e!857366 (inv!17996 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))))))

(declare-fun b!1338520 () Bool)

(declare-fun e!857367 () Bool)

(assert (=> b!1338520 (= e!857366 e!857367)))

(declare-fun res!603353 () Bool)

(assert (=> b!1338520 (= res!603353 (not ((_ is Leaf!6879) (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))))))

(assert (=> b!1338520 (=> res!603353 e!857367)))

(declare-fun b!1338521 () Bool)

(assert (=> b!1338521 (= e!857367 (inv!17997 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))))))

(assert (= (and d!377522 c!219386) b!1338519))

(assert (= (and d!377522 (not c!219386)) b!1338520))

(assert (= (and b!1338520 (not res!603353)) b!1338521))

(declare-fun m!1496721 () Bool)

(assert (=> b!1338519 m!1496721))

(declare-fun m!1496723 () Bool)

(assert (=> b!1338521 m!1496723))

(assert (=> b!1337313 d!377522))

(declare-fun d!377524 () Bool)

(declare-fun c!219387 () Bool)

(assert (=> d!377524 (= c!219387 ((_ is Node!4499) (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))))))

(declare-fun e!857368 () Bool)

(assert (=> d!377524 (= (inv!17991 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))) e!857368)))

(declare-fun b!1338522 () Bool)

(assert (=> b!1338522 (= e!857368 (inv!17996 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))))))

(declare-fun b!1338523 () Bool)

(declare-fun e!857369 () Bool)

(assert (=> b!1338523 (= e!857368 e!857369)))

(declare-fun res!603354 () Bool)

(assert (=> b!1338523 (= res!603354 (not ((_ is Leaf!6879) (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))))))

(assert (=> b!1338523 (=> res!603354 e!857369)))

(declare-fun b!1338524 () Bool)

(assert (=> b!1338524 (= e!857369 (inv!17997 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))))))

(assert (= (and d!377524 c!219387) b!1338522))

(assert (= (and d!377524 (not c!219387)) b!1338523))

(assert (= (and b!1338523 (not res!603354)) b!1338524))

(declare-fun m!1496725 () Bool)

(assert (=> b!1338522 m!1496725))

(declare-fun m!1496727 () Bool)

(assert (=> b!1338524 m!1496727))

(assert (=> b!1337313 d!377524))

(declare-fun b!1338526 () Bool)

(declare-fun e!857370 () List!13717)

(declare-fun e!857371 () List!13717)

(assert (=> b!1338526 (= e!857370 e!857371)))

(declare-fun c!219389 () Bool)

(assert (=> b!1338526 (= c!219389 ((_ is Leaf!6879) (c!218765 lt!442362)))))

(declare-fun b!1338527 () Bool)

(assert (=> b!1338527 (= e!857371 (list!5195 (xs!7214 (c!218765 lt!442362))))))

(declare-fun d!377526 () Bool)

(declare-fun c!219388 () Bool)

(assert (=> d!377526 (= c!219388 ((_ is Empty!4499) (c!218765 lt!442362)))))

(assert (=> d!377526 (= (list!5191 (c!218765 lt!442362)) e!857370)))

(declare-fun b!1338525 () Bool)

(assert (=> b!1338525 (= e!857370 Nil!13651)))

(declare-fun b!1338528 () Bool)

(assert (=> b!1338528 (= e!857371 (++!3488 (list!5191 (left!11716 (c!218765 lt!442362))) (list!5191 (right!12046 (c!218765 lt!442362)))))))

(assert (= (and d!377526 c!219388) b!1338525))

(assert (= (and d!377526 (not c!219388)) b!1338526))

(assert (= (and b!1338526 c!219389) b!1338527))

(assert (= (and b!1338526 (not c!219389)) b!1338528))

(declare-fun m!1496729 () Bool)

(assert (=> b!1338527 m!1496729))

(declare-fun m!1496731 () Bool)

(assert (=> b!1338528 m!1496731))

(declare-fun m!1496733 () Bool)

(assert (=> b!1338528 m!1496733))

(assert (=> b!1338528 m!1496731))

(assert (=> b!1338528 m!1496733))

(declare-fun m!1496735 () Bool)

(assert (=> b!1338528 m!1496735))

(assert (=> d!376786 d!377526))

(declare-fun b!1338547 () Bool)

(declare-fun e!857395 () Bool)

(declare-fun appendAssoc!62 (List!13717 List!13717 List!13717) Bool)

(assert (=> b!1338547 (= e!857395 (appendAssoc!62 (list!5191 (left!11716 (c!218765 (charsOf!1339 t1!34)))) (list!5191 (left!11716 (right!12046 (c!218765 (charsOf!1339 t1!34))))) (++!3488 (list!5191 (right!12046 (right!12046 (c!218765 (charsOf!1339 t1!34))))) (list!5191 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))

(declare-fun b!1338548 () Bool)

(declare-fun e!857391 () Bool)

(declare-fun e!857390 () Bool)

(assert (=> b!1338548 (= e!857391 e!857390)))

(declare-fun res!603373 () Bool)

(assert (=> b!1338548 (=> (not res!603373) (not e!857390))))

(assert (=> b!1338548 (= res!603373 (appendAssoc!62 (list!5191 (c!218765 (charsOf!1339 t1!34))) (list!5191 (left!11716 (left!11716 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))) (list!5191 (right!12046 (left!11716 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))))

(declare-fun b!1338549 () Bool)

(declare-fun e!857398 () Bool)

(declare-fun e!857392 () Bool)

(assert (=> b!1338549 (= e!857398 e!857392)))

(declare-fun res!603379 () Bool)

(assert (=> b!1338549 (=> res!603379 e!857392)))

(assert (=> b!1338549 (= res!603379 (not ((_ is Node!4499) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))

(declare-fun b!1338550 () Bool)

(declare-fun e!857393 () Bool)

(declare-fun e!857397 () Bool)

(assert (=> b!1338550 (= e!857393 e!857397)))

(declare-fun res!603375 () Bool)

(assert (=> b!1338550 (=> (not res!603375) (not e!857397))))

(assert (=> b!1338550 (= res!603375 (appendAssoc!62 (list!5191 (left!11716 (c!218765 (charsOf!1339 t1!34)))) (list!5191 (right!12046 (c!218765 (charsOf!1339 t1!34)))) (list!5191 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))

(declare-fun b!1338551 () Bool)

(declare-fun e!857396 () Bool)

(assert (=> b!1338551 (= e!857396 e!857391)))

(declare-fun res!603374 () Bool)

(assert (=> b!1338551 (=> res!603374 e!857391)))

(assert (=> b!1338551 (= res!603374 (not ((_ is Node!4499) (left!11716 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))

(declare-fun b!1338552 () Bool)

(assert (=> b!1338552 (= e!857392 e!857396)))

(declare-fun res!603377 () Bool)

(assert (=> b!1338552 (=> (not res!603377) (not e!857396))))

(assert (=> b!1338552 (= res!603377 (appendAssoc!62 (list!5191 (c!218765 (charsOf!1339 t1!34))) (list!5191 (left!11716 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))) (list!5191 (right!12046 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))

(declare-fun b!1338553 () Bool)

(declare-fun e!857394 () Bool)

(assert (=> b!1338553 (= e!857394 e!857395)))

(declare-fun res!603376 () Bool)

(assert (=> b!1338553 (=> (not res!603376) (not e!857395))))

(assert (=> b!1338553 (= res!603376 (appendAssoc!62 (list!5191 (left!11716 (right!12046 (c!218765 (charsOf!1339 t1!34))))) (list!5191 (right!12046 (right!12046 (c!218765 (charsOf!1339 t1!34))))) (list!5191 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))

(declare-fun b!1338554 () Bool)

(assert (=> b!1338554 (= e!857397 e!857394)))

(declare-fun res!603378 () Bool)

(assert (=> b!1338554 (=> res!603378 e!857394)))

(assert (=> b!1338554 (= res!603378 (not ((_ is Node!4499) (right!12046 (c!218765 (charsOf!1339 t1!34))))))))

(declare-fun b!1338555 () Bool)

(assert (=> b!1338555 (= e!857390 (appendAssoc!62 (++!3488 (list!5191 (c!218765 (charsOf!1339 t1!34))) (list!5191 (left!11716 (left!11716 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))) (list!5191 (right!12046 (left!11716 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))) (list!5191 (right!12046 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))

(declare-fun d!377528 () Bool)

(assert (=> d!377528 e!857398))

(declare-fun res!603380 () Bool)

(assert (=> d!377528 (=> (not res!603380) (not e!857398))))

(assert (=> d!377528 (= res!603380 e!857393)))

(declare-fun res!603381 () Bool)

(assert (=> d!377528 (=> res!603381 e!857393)))

(assert (=> d!377528 (= res!603381 (not ((_ is Node!4499) (c!218765 (charsOf!1339 t1!34)))))))

(assert (=> d!377528 (= (appendAssocInst!265 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))) true)))

(assert (= (and d!377528 (not res!603381)) b!1338550))

(assert (= (and b!1338550 res!603375) b!1338554))

(assert (= (and b!1338554 (not res!603378)) b!1338553))

(assert (= (and b!1338553 res!603376) b!1338547))

(assert (= (and d!377528 res!603380) b!1338549))

(assert (= (and b!1338549 (not res!603379)) b!1338552))

(assert (= (and b!1338552 res!603377) b!1338551))

(assert (= (and b!1338551 (not res!603374)) b!1338548))

(assert (= (and b!1338548 res!603373) b!1338555))

(declare-fun m!1496737 () Bool)

(assert (=> b!1338550 m!1496737))

(declare-fun m!1496739 () Bool)

(assert (=> b!1338550 m!1496739))

(assert (=> b!1338550 m!1495807))

(assert (=> b!1338550 m!1496737))

(assert (=> b!1338550 m!1496739))

(assert (=> b!1338550 m!1495807))

(declare-fun m!1496741 () Bool)

(assert (=> b!1338550 m!1496741))

(assert (=> b!1338548 m!1495805))

(declare-fun m!1496743 () Bool)

(assert (=> b!1338548 m!1496743))

(declare-fun m!1496745 () Bool)

(assert (=> b!1338548 m!1496745))

(assert (=> b!1338548 m!1495805))

(assert (=> b!1338548 m!1496743))

(assert (=> b!1338548 m!1496745))

(declare-fun m!1496747 () Bool)

(assert (=> b!1338548 m!1496747))

(declare-fun m!1496749 () Bool)

(assert (=> b!1338553 m!1496749))

(declare-fun m!1496751 () Bool)

(assert (=> b!1338553 m!1496751))

(assert (=> b!1338553 m!1495807))

(assert (=> b!1338553 m!1496749))

(assert (=> b!1338553 m!1496751))

(assert (=> b!1338553 m!1495807))

(declare-fun m!1496753 () Bool)

(assert (=> b!1338553 m!1496753))

(assert (=> b!1338547 m!1496749))

(assert (=> b!1338547 m!1495807))

(assert (=> b!1338547 m!1496751))

(assert (=> b!1338547 m!1495807))

(declare-fun m!1496755 () Bool)

(assert (=> b!1338547 m!1496755))

(assert (=> b!1338547 m!1496737))

(assert (=> b!1338547 m!1496737))

(assert (=> b!1338547 m!1496749))

(assert (=> b!1338547 m!1496755))

(declare-fun m!1496757 () Bool)

(assert (=> b!1338547 m!1496757))

(assert (=> b!1338547 m!1496751))

(assert (=> b!1338555 m!1496743))

(declare-fun m!1496759 () Bool)

(assert (=> b!1338555 m!1496759))

(declare-fun m!1496761 () Bool)

(assert (=> b!1338555 m!1496761))

(assert (=> b!1338555 m!1496745))

(assert (=> b!1338555 m!1496759))

(declare-fun m!1496763 () Bool)

(assert (=> b!1338555 m!1496763))

(assert (=> b!1338555 m!1495805))

(assert (=> b!1338555 m!1496743))

(assert (=> b!1338555 m!1496761))

(assert (=> b!1338555 m!1495805))

(assert (=> b!1338555 m!1496745))

(assert (=> b!1338552 m!1495805))

(declare-fun m!1496765 () Bool)

(assert (=> b!1338552 m!1496765))

(assert (=> b!1338552 m!1496759))

(assert (=> b!1338552 m!1495805))

(assert (=> b!1338552 m!1496765))

(assert (=> b!1338552 m!1496759))

(declare-fun m!1496767 () Bool)

(assert (=> b!1338552 m!1496767))

(assert (=> d!376614 d!377528))

(assert (=> d!376614 d!377068))

(declare-fun d!377530 () Bool)

(declare-fun choose!644 (List!13716) Int)

(assert (=> d!377530 (= (charsToBigInt!1 (text!17647 (value!77092 t2!34))) (choose!644 (text!17647 (value!77092 t2!34))))))

(declare-fun bs!332162 () Bool)

(assert (= bs!332162 d!377530))

(declare-fun m!1496769 () Bool)

(assert (=> bs!332162 m!1496769))

(assert (=> d!376858 d!377530))

(declare-fun d!377532 () Bool)

(assert (=> d!377532 (= (nullable!1169 lt!442339) (nullableFct!267 lt!442339))))

(declare-fun bs!332163 () Bool)

(assert (= bs!332163 d!377532))

(declare-fun m!1496771 () Bool)

(assert (=> bs!332163 m!1496771))

(assert (=> b!1336766 d!377532))

(declare-fun d!377534 () Bool)

(assert (=> d!377534 (= (isEmpty!8143 (list!5187 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))) ((_ is Nil!13651) (list!5187 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))))

(assert (=> d!376844 d!377534))

(declare-fun d!377536 () Bool)

(assert (=> d!377536 (= (list!5187 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34))))) (list!5191 (c!218765 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))))

(declare-fun bs!332164 () Bool)

(assert (= bs!332164 d!377536))

(declare-fun m!1496773 () Bool)

(assert (=> bs!332164 m!1496773))

(assert (=> d!376844 d!377536))

(declare-fun lt!442953 () Bool)

(declare-fun d!377538 () Bool)

(assert (=> d!377538 (= lt!442953 (isEmpty!8143 (list!5191 (c!218765 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34))))))))))

(assert (=> d!377538 (= lt!442953 (= (size!11119 (c!218765 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))) 0))))

(assert (=> d!377538 (= (isEmpty!8148 (c!218765 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))) lt!442953)))

(declare-fun bs!332165 () Bool)

(assert (= bs!332165 d!377538))

(assert (=> bs!332165 m!1496773))

(assert (=> bs!332165 m!1496773))

(declare-fun m!1496775 () Bool)

(assert (=> bs!332165 m!1496775))

(declare-fun m!1496777 () Bool)

(assert (=> bs!332165 m!1496777))

(assert (=> d!376844 d!377538))

(declare-fun d!377540 () Bool)

(assert (=> d!377540 (= (Forall!522 lambda!56064) (choose!8200 lambda!56064))))

(declare-fun bs!332166 () Bool)

(assert (= bs!332166 d!377540))

(declare-fun m!1496779 () Bool)

(assert (=> bs!332166 m!1496779))

(assert (=> d!376814 d!377540))

(declare-fun b!1338556 () Bool)

(declare-fun e!857401 () Bool)

(declare-fun e!857400 () Bool)

(assert (=> b!1338556 (= e!857401 e!857400)))

(declare-fun res!603383 () Bool)

(assert (=> b!1338556 (= res!603383 (not ((_ is Cons!13652) (t!119283 rules!2550))))))

(assert (=> b!1338556 (=> res!603383 e!857400)))

(declare-fun d!377542 () Bool)

(declare-fun c!219390 () Bool)

(assert (=> d!377542 (= c!219390 (and ((_ is Cons!13652) (t!119283 rules!2550)) (not (= (isSeparator!2367 (h!19053 (t!119283 rules!2550))) (isSeparator!2367 (h!19053 rules!2550))))))))

(assert (=> d!377542 (= (ruleDisjointCharsFromAllFromOtherType!336 (h!19053 rules!2550) (t!119283 rules!2550)) e!857401)))

(declare-fun bm!90403 () Bool)

(declare-fun call!90408 () Bool)

(assert (=> bm!90403 (= call!90408 (ruleDisjointCharsFromAllFromOtherType!336 (h!19053 rules!2550) (t!119283 (t!119283 rules!2550))))))

(declare-fun b!1338557 () Bool)

(declare-fun e!857399 () Bool)

(assert (=> b!1338557 (= e!857399 call!90408)))

(declare-fun b!1338558 () Bool)

(assert (=> b!1338558 (= e!857401 e!857399)))

(declare-fun res!603382 () Bool)

(assert (=> b!1338558 (= res!603382 (rulesUseDisjointChars!166 (h!19053 rules!2550) (h!19053 (t!119283 rules!2550))))))

(assert (=> b!1338558 (=> (not res!603382) (not e!857399))))

(declare-fun b!1338559 () Bool)

(assert (=> b!1338559 (= e!857400 call!90408)))

(assert (= (and d!377542 c!219390) b!1338558))

(assert (= (and d!377542 (not c!219390)) b!1338556))

(assert (= (and b!1338558 res!603382) b!1338557))

(assert (= (and b!1338556 (not res!603383)) b!1338559))

(assert (= (or b!1338557 b!1338559) bm!90403))

(declare-fun m!1496781 () Bool)

(assert (=> bm!90403 m!1496781))

(declare-fun m!1496783 () Bool)

(assert (=> b!1338558 m!1496783))

(assert (=> bm!90214 d!377542))

(declare-fun d!377544 () Bool)

(assert (=> d!377544 (= (list!5187 lt!442549) (list!5191 (c!218765 lt!442549)))))

(declare-fun bs!332167 () Bool)

(assert (= bs!332167 d!377544))

(declare-fun m!1496785 () Bool)

(assert (=> bs!332167 m!1496785))

(assert (=> b!1336877 d!377544))

(declare-fun lt!442954 () List!13717)

(declare-fun b!1338563 () Bool)

(declare-fun e!857402 () Bool)

(assert (=> b!1338563 (= e!857402 (or (not (= (list!5187 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) Nil!13651)) (= lt!442954 (list!5187 (charsOf!1339 t1!34)))))))

(declare-fun d!377546 () Bool)

(assert (=> d!377546 e!857402))

(declare-fun res!603385 () Bool)

(assert (=> d!377546 (=> (not res!603385) (not e!857402))))

(assert (=> d!377546 (= res!603385 (= (content!1937 lt!442954) ((_ map or) (content!1937 (list!5187 (charsOf!1339 t1!34))) (content!1937 (list!5187 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))

(declare-fun e!857403 () List!13717)

(assert (=> d!377546 (= lt!442954 e!857403)))

(declare-fun c!219391 () Bool)

(assert (=> d!377546 (= c!219391 ((_ is Nil!13651) (list!5187 (charsOf!1339 t1!34))))))

(assert (=> d!377546 (= (++!3488 (list!5187 (charsOf!1339 t1!34)) (list!5187 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))) lt!442954)))

(declare-fun b!1338562 () Bool)

(declare-fun res!603384 () Bool)

(assert (=> b!1338562 (=> (not res!603384) (not e!857402))))

(assert (=> b!1338562 (= res!603384 (= (size!11118 lt!442954) (+ (size!11118 (list!5187 (charsOf!1339 t1!34))) (size!11118 (list!5187 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))

(declare-fun b!1338560 () Bool)

(assert (=> b!1338560 (= e!857403 (list!5187 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))

(declare-fun b!1338561 () Bool)

(assert (=> b!1338561 (= e!857403 (Cons!13651 (h!19052 (list!5187 (charsOf!1339 t1!34))) (++!3488 (t!119282 (list!5187 (charsOf!1339 t1!34))) (list!5187 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))

(assert (= (and d!377546 c!219391) b!1338560))

(assert (= (and d!377546 (not c!219391)) b!1338561))

(assert (= (and d!377546 res!603385) b!1338562))

(assert (= (and b!1338562 res!603384) b!1338563))

(declare-fun m!1496787 () Bool)

(assert (=> d!377546 m!1496787))

(assert (=> d!377546 m!1494611))

(declare-fun m!1496789 () Bool)

(assert (=> d!377546 m!1496789))

(assert (=> d!377546 m!1494613))

(declare-fun m!1496791 () Bool)

(assert (=> d!377546 m!1496791))

(declare-fun m!1496793 () Bool)

(assert (=> b!1338562 m!1496793))

(assert (=> b!1338562 m!1494611))

(declare-fun m!1496795 () Bool)

(assert (=> b!1338562 m!1496795))

(assert (=> b!1338562 m!1494613))

(declare-fun m!1496797 () Bool)

(assert (=> b!1338562 m!1496797))

(assert (=> b!1338561 m!1494613))

(declare-fun m!1496799 () Bool)

(assert (=> b!1338561 m!1496799))

(assert (=> b!1336877 d!377546))

(declare-fun d!377548 () Bool)

(assert (=> d!377548 (= (list!5187 (charsOf!1339 t1!34)) (list!5191 (c!218765 (charsOf!1339 t1!34))))))

(declare-fun bs!332168 () Bool)

(assert (= bs!332168 d!377548))

(assert (=> bs!332168 m!1495805))

(assert (=> b!1336877 d!377548))

(declare-fun d!377550 () Bool)

(assert (=> d!377550 (= (list!5187 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))) (list!5191 (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))

(declare-fun bs!332169 () Bool)

(assert (= bs!332169 d!377550))

(assert (=> bs!332169 m!1495807))

(assert (=> b!1336877 d!377550))

(assert (=> d!376842 d!376824))

(assert (=> d!376842 d!376464))

(assert (=> d!376842 d!377476))

(declare-fun d!377552 () Bool)

(assert (=> d!377552 true))

(assert (=> d!377552 true))

(declare-fun res!603386 () Bool)

(assert (=> d!377552 (= (choose!8194 lambda!56019) res!603386)))

(assert (=> d!376550 d!377552))

(declare-fun d!377554 () Bool)

(declare-fun c!219392 () Bool)

(assert (=> d!377554 (= c!219392 ((_ is Nil!13651) (t!119282 lt!442365)))))

(declare-fun e!857404 () (InoxSet C!7652))

(assert (=> d!377554 (= (content!1937 (t!119282 lt!442365)) e!857404)))

(declare-fun b!1338564 () Bool)

(assert (=> b!1338564 (= e!857404 ((as const (Array C!7652 Bool)) false))))

(declare-fun b!1338565 () Bool)

(assert (=> b!1338565 (= e!857404 ((_ map or) (store ((as const (Array C!7652 Bool)) false) (h!19052 (t!119282 lt!442365)) true) (content!1937 (t!119282 (t!119282 lt!442365)))))))

(assert (= (and d!377554 c!219392) b!1338564))

(assert (= (and d!377554 (not c!219392)) b!1338565))

(declare-fun m!1496801 () Bool)

(assert (=> b!1338565 m!1496801))

(declare-fun m!1496803 () Bool)

(assert (=> b!1338565 m!1496803))

(assert (=> b!1336633 d!377554))

(declare-fun d!377556 () Bool)

(assert (=> d!377556 (= (list!5187 (_2!7523 lt!442619)) (list!5191 (c!218765 (_2!7523 lt!442619))))))

(declare-fun bs!332170 () Bool)

(assert (= bs!332170 d!377556))

(declare-fun m!1496805 () Bool)

(assert (=> bs!332170 m!1496805))

(assert (=> b!1337136 d!377556))

(assert (=> b!1337136 d!377322))

(assert (=> b!1337136 d!377326))

(declare-fun d!377558 () Bool)

(declare-fun lt!442955 () Int)

(assert (=> d!377558 (= lt!442955 (size!11118 (list!5187 (_2!7523 lt!442639))))))

(assert (=> d!377558 (= lt!442955 (size!11119 (c!218765 (_2!7523 lt!442639))))))

(assert (=> d!377558 (= (size!11114 (_2!7523 lt!442639)) lt!442955)))

(declare-fun bs!332171 () Bool)

(assert (= bs!332171 d!377558))

(assert (=> bs!332171 m!1494973))

(assert (=> bs!332171 m!1494973))

(declare-fun m!1496807 () Bool)

(assert (=> bs!332171 m!1496807))

(declare-fun m!1496809 () Bool)

(assert (=> bs!332171 m!1496809))

(assert (=> b!1337162 d!377558))

(declare-fun d!377560 () Bool)

(declare-fun lt!442956 () Int)

(assert (=> d!377560 (= lt!442956 (size!11118 (list!5187 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))

(assert (=> d!377560 (= lt!442956 (size!11119 (c!218765 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))

(assert (=> d!377560 (= (size!11114 (print!832 thiss!19762 (singletonSeq!969 t2!34))) lt!442956)))

(declare-fun bs!332172 () Bool)

(assert (= bs!332172 d!377560))

(assert (=> bs!332172 m!1494051))

(assert (=> bs!332172 m!1494975))

(assert (=> bs!332172 m!1494975))

(assert (=> bs!332172 m!1495257))

(declare-fun m!1496811 () Bool)

(assert (=> bs!332172 m!1496811))

(assert (=> b!1337162 d!377560))

(declare-fun d!377562 () Bool)

(assert (=> d!377562 (= (head!2369 (list!5187 lt!442341)) (h!19052 (list!5187 lt!442341)))))

(assert (=> b!1336796 d!377562))

(declare-fun e!857405 () Bool)

(declare-fun lt!442957 () List!13717)

(declare-fun b!1338569 () Bool)

(assert (=> b!1338569 (= e!857405 (or (not (= lt!442368 Nil!13651)) (= lt!442957 (t!119282 lt!442344))))))

(declare-fun d!377564 () Bool)

(assert (=> d!377564 e!857405))

(declare-fun res!603388 () Bool)

(assert (=> d!377564 (=> (not res!603388) (not e!857405))))

(assert (=> d!377564 (= res!603388 (= (content!1937 lt!442957) ((_ map or) (content!1937 (t!119282 lt!442344)) (content!1937 lt!442368))))))

(declare-fun e!857406 () List!13717)

(assert (=> d!377564 (= lt!442957 e!857406)))

(declare-fun c!219393 () Bool)

(assert (=> d!377564 (= c!219393 ((_ is Nil!13651) (t!119282 lt!442344)))))

(assert (=> d!377564 (= (++!3488 (t!119282 lt!442344) lt!442368) lt!442957)))

(declare-fun b!1338568 () Bool)

(declare-fun res!603387 () Bool)

(assert (=> b!1338568 (=> (not res!603387) (not e!857405))))

(assert (=> b!1338568 (= res!603387 (= (size!11118 lt!442957) (+ (size!11118 (t!119282 lt!442344)) (size!11118 lt!442368))))))

(declare-fun b!1338566 () Bool)

(assert (=> b!1338566 (= e!857406 lt!442368)))

(declare-fun b!1338567 () Bool)

(assert (=> b!1338567 (= e!857406 (Cons!13651 (h!19052 (t!119282 lt!442344)) (++!3488 (t!119282 (t!119282 lt!442344)) lt!442368)))))

(assert (= (and d!377564 c!219393) b!1338566))

(assert (= (and d!377564 (not c!219393)) b!1338567))

(assert (= (and d!377564 res!603388) b!1338568))

(assert (= (and b!1338568 res!603387) b!1338569))

(declare-fun m!1496813 () Bool)

(assert (=> d!377564 m!1496813))

(assert (=> d!377564 m!1494349))

(assert (=> d!377564 m!1494935))

(declare-fun m!1496815 () Bool)

(assert (=> b!1338568 m!1496815))

(assert (=> b!1338568 m!1494789))

(assert (=> b!1338568 m!1494939))

(declare-fun m!1496817 () Bool)

(assert (=> b!1338567 m!1496817))

(assert (=> b!1337152 d!377564))

(declare-fun d!377566 () Bool)

(declare-fun res!603395 () Bool)

(declare-fun e!857409 () Bool)

(assert (=> d!377566 (=> (not res!603395) (not e!857409))))

(assert (=> d!377566 (= res!603395 (= (csize!9228 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))) (+ (size!11119 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))) (size!11119 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))))))))

(assert (=> d!377566 (= (inv!17996 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))) e!857409)))

(declare-fun b!1338576 () Bool)

(declare-fun res!603396 () Bool)

(assert (=> b!1338576 (=> (not res!603396) (not e!857409))))

(assert (=> b!1338576 (= res!603396 (and (not (= (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))) Empty!4499)) (not (= (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))) Empty!4499))))))

(declare-fun b!1338577 () Bool)

(declare-fun res!603397 () Bool)

(assert (=> b!1338577 (=> (not res!603397) (not e!857409))))

(assert (=> b!1338577 (= res!603397 (= (cheight!4710 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))) (+ (max!0 (height!635 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))) (height!635 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))) 1)))))

(declare-fun b!1338578 () Bool)

(assert (=> b!1338578 (= e!857409 (<= 0 (cheight!4710 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))))))

(assert (= (and d!377566 res!603395) b!1338576))

(assert (= (and b!1338576 res!603396) b!1338577))

(assert (= (and b!1338577 res!603397) b!1338578))

(declare-fun m!1496819 () Bool)

(assert (=> d!377566 m!1496819))

(declare-fun m!1496821 () Bool)

(assert (=> d!377566 m!1496821))

(assert (=> b!1338577 m!1496639))

(assert (=> b!1338577 m!1496641))

(assert (=> b!1338577 m!1496639))

(assert (=> b!1338577 m!1496641))

(declare-fun m!1496823 () Bool)

(assert (=> b!1338577 m!1496823))

(assert (=> b!1337235 d!377566))

(declare-fun d!377568 () Bool)

(declare-fun lt!442958 () Int)

(assert (=> d!377568 (>= lt!442958 0)))

(declare-fun e!857410 () Int)

(assert (=> d!377568 (= lt!442958 e!857410)))

(declare-fun c!219394 () Bool)

(assert (=> d!377568 (= c!219394 ((_ is Nil!13651) (t!119282 (originalCharacters!3229 t1!34))))))

(assert (=> d!377568 (= (size!11118 (t!119282 (originalCharacters!3229 t1!34))) lt!442958)))

(declare-fun b!1338579 () Bool)

(assert (=> b!1338579 (= e!857410 0)))

(declare-fun b!1338580 () Bool)

(assert (=> b!1338580 (= e!857410 (+ 1 (size!11118 (t!119282 (t!119282 (originalCharacters!3229 t1!34))))))))

(assert (= (and d!377568 c!219394) b!1338579))

(assert (= (and d!377568 (not c!219394)) b!1338580))

(declare-fun m!1496825 () Bool)

(assert (=> b!1338580 m!1496825))

(assert (=> b!1336637 d!377568))

(declare-fun d!377570 () Bool)

(assert (=> d!377570 (= (charsToBigInt!1 (text!17647 (value!77092 t1!34))) (choose!644 (text!17647 (value!77092 t1!34))))))

(declare-fun bs!332173 () Bool)

(assert (= bs!332173 d!377570))

(declare-fun m!1496827 () Bool)

(assert (=> bs!332173 m!1496827))

(assert (=> d!376724 d!377570))

(declare-fun d!377572 () Bool)

(declare-fun lt!442959 () Int)

(assert (=> d!377572 (>= lt!442959 0)))

(declare-fun e!857411 () Int)

(assert (=> d!377572 (= lt!442959 e!857411)))

(declare-fun c!219395 () Bool)

(assert (=> d!377572 (= c!219395 ((_ is Nil!13651) (list!5191 (c!218765 lt!442341))))))

(assert (=> d!377572 (= (size!11118 (list!5191 (c!218765 lt!442341))) lt!442959)))

(declare-fun b!1338581 () Bool)

(assert (=> b!1338581 (= e!857411 0)))

(declare-fun b!1338582 () Bool)

(assert (=> b!1338582 (= e!857411 (+ 1 (size!11118 (t!119282 (list!5191 (c!218765 lt!442341))))))))

(assert (= (and d!377572 c!219395) b!1338581))

(assert (= (and d!377572 (not c!219395)) b!1338582))

(declare-fun m!1496829 () Bool)

(assert (=> b!1338582 m!1496829))

(assert (=> d!376784 d!377572))

(assert (=> d!376784 d!376978))

(declare-fun e!857412 () Bool)

(declare-fun lt!442960 () List!13717)

(declare-fun b!1338586 () Bool)

(assert (=> b!1338586 (= e!857412 (or (not (= (Cons!13651 (apply!3195 lt!442341 0) Nil!13651) Nil!13651)) (= lt!442960 (t!119282 (t!119282 (list!5187 lt!442342))))))))

(declare-fun d!377574 () Bool)

(assert (=> d!377574 e!857412))

(declare-fun res!603399 () Bool)

(assert (=> d!377574 (=> (not res!603399) (not e!857412))))

(assert (=> d!377574 (= res!603399 (= (content!1937 lt!442960) ((_ map or) (content!1937 (t!119282 (t!119282 (list!5187 lt!442342)))) (content!1937 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)))))))

(declare-fun e!857413 () List!13717)

(assert (=> d!377574 (= lt!442960 e!857413)))

(declare-fun c!219396 () Bool)

(assert (=> d!377574 (= c!219396 ((_ is Nil!13651) (t!119282 (t!119282 (list!5187 lt!442342)))))))

(assert (=> d!377574 (= (++!3488 (t!119282 (t!119282 (list!5187 lt!442342))) (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)) lt!442960)))

(declare-fun b!1338585 () Bool)

(declare-fun res!603398 () Bool)

(assert (=> b!1338585 (=> (not res!603398) (not e!857412))))

(assert (=> b!1338585 (= res!603398 (= (size!11118 lt!442960) (+ (size!11118 (t!119282 (t!119282 (list!5187 lt!442342)))) (size!11118 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651)))))))

(declare-fun b!1338583 () Bool)

(assert (=> b!1338583 (= e!857413 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651))))

(declare-fun b!1338584 () Bool)

(assert (=> b!1338584 (= e!857413 (Cons!13651 (h!19052 (t!119282 (t!119282 (list!5187 lt!442342)))) (++!3488 (t!119282 (t!119282 (t!119282 (list!5187 lt!442342)))) (Cons!13651 (apply!3195 lt!442341 0) Nil!13651))))))

(assert (= (and d!377574 c!219396) b!1338583))

(assert (= (and d!377574 (not c!219396)) b!1338584))

(assert (= (and d!377574 res!603399) b!1338585))

(assert (= (and b!1338585 res!603398) b!1338586))

(declare-fun m!1496831 () Bool)

(assert (=> d!377574 m!1496831))

(assert (=> d!377574 m!1495573))

(assert (=> d!377574 m!1494091))

(declare-fun m!1496833 () Bool)

(assert (=> b!1338585 m!1496833))

(assert (=> b!1338585 m!1495207))

(assert (=> b!1338585 m!1494097))

(declare-fun m!1496835 () Bool)

(assert (=> b!1338584 m!1496835))

(assert (=> b!1336672 d!377574))

(assert (=> b!1337186 d!376872))

(assert (=> b!1337186 d!376992))

(declare-fun d!377576 () Bool)

(declare-fun lt!442961 () Int)

(assert (=> d!377576 (>= lt!442961 0)))

(declare-fun e!857414 () Int)

(assert (=> d!377576 (= lt!442961 e!857414)))

(declare-fun c!219397 () Bool)

(assert (=> d!377576 (= c!219397 ((_ is Nil!13651) (t!119282 (list!5187 lt!442341))))))

(assert (=> d!377576 (= (size!11118 (t!119282 (list!5187 lt!442341))) lt!442961)))

(declare-fun b!1338587 () Bool)

(assert (=> b!1338587 (= e!857414 0)))

(declare-fun b!1338588 () Bool)

(assert (=> b!1338588 (= e!857414 (+ 1 (size!11118 (t!119282 (t!119282 (list!5187 lt!442341))))))))

(assert (= (and d!377576 c!219397) b!1338587))

(assert (= (and d!377576 (not c!219397)) b!1338588))

(declare-fun m!1496837 () Bool)

(assert (=> b!1338588 m!1496837))

(assert (=> b!1337150 d!377576))

(assert (=> b!1337224 d!376796))

(declare-fun d!377578 () Bool)

(assert (=> d!377578 (= (isEmpty!8143 (list!5187 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))) ((_ is Nil!13651) (list!5187 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))))

(assert (=> d!376846 d!377578))

(declare-fun d!377580 () Bool)

(assert (=> d!377580 (= (list!5187 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34))))) (list!5191 (c!218765 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))))

(declare-fun bs!332174 () Bool)

(assert (= bs!332174 d!377580))

(declare-fun m!1496839 () Bool)

(assert (=> bs!332174 m!1496839))

(assert (=> d!376846 d!377580))

(declare-fun lt!442962 () Bool)

(declare-fun d!377582 () Bool)

(assert (=> d!377582 (= lt!442962 (isEmpty!8143 (list!5191 (c!218765 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34))))))))))

(assert (=> d!377582 (= lt!442962 (= (size!11119 (c!218765 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))) 0))))

(assert (=> d!377582 (= (isEmpty!8148 (c!218765 (_2!7523 (lex!893 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))) lt!442962)))

(declare-fun bs!332175 () Bool)

(assert (= bs!332175 d!377582))

(assert (=> bs!332175 m!1496839))

(assert (=> bs!332175 m!1496839))

(declare-fun m!1496841 () Bool)

(assert (=> bs!332175 m!1496841))

(declare-fun m!1496843 () Bool)

(assert (=> bs!332175 m!1496843))

(assert (=> d!376846 d!377582))

(declare-fun d!377584 () Bool)

(assert (=> d!377584 (= (Forall2!425 lambda!56065) (choose!8206 lambda!56065))))

(declare-fun bs!332176 () Bool)

(assert (= bs!332176 d!377584))

(declare-fun m!1496845 () Bool)

(assert (=> bs!332176 m!1496845))

(assert (=> d!376818 d!377584))

(declare-fun b!1338589 () Bool)

(declare-fun e!857416 () C!7652)

(declare-fun call!90409 () C!7652)

(assert (=> b!1338589 (= e!857416 call!90409)))

(declare-fun b!1338590 () Bool)

(declare-fun e!857418 () Int)

(assert (=> b!1338590 (= e!857418 0)))

(declare-fun b!1338591 () Bool)

(declare-fun e!857417 () Bool)

(assert (=> b!1338591 (= e!857417 (appendIndex!147 (t!119282 (list!5191 (left!11716 (c!218765 lt!442341)))) (list!5191 (right!12046 (c!218765 lt!442341))) (- 0 1)))))

(declare-fun c!219398 () Bool)

(declare-fun bm!90404 () Bool)

(assert (=> bm!90404 (= call!90409 (apply!3200 (ite c!219398 (list!5191 (left!11716 (c!218765 lt!442341))) (list!5191 (right!12046 (c!218765 lt!442341)))) e!857418))))

(declare-fun c!219399 () Bool)

(assert (=> bm!90404 (= c!219399 c!219398)))

(declare-fun d!377586 () Bool)

(assert (=> d!377586 (= (apply!3200 (++!3488 (list!5191 (left!11716 (c!218765 lt!442341))) (list!5191 (right!12046 (c!218765 lt!442341)))) 0) e!857416)))

(assert (=> d!377586 (= c!219398 (< 0 (size!11118 (list!5191 (left!11716 (c!218765 lt!442341))))))))

(declare-fun lt!442963 () Bool)

(assert (=> d!377586 (= lt!442963 e!857417)))

(declare-fun res!603401 () Bool)

(assert (=> d!377586 (=> res!603401 e!857417)))

(assert (=> d!377586 (= res!603401 (or ((_ is Nil!13651) (list!5191 (left!11716 (c!218765 lt!442341)))) (= 0 0)))))

(declare-fun e!857415 () Bool)

(assert (=> d!377586 e!857415))

(declare-fun res!603400 () Bool)

(assert (=> d!377586 (=> (not res!603400) (not e!857415))))

(assert (=> d!377586 (= res!603400 (<= 0 0))))

(assert (=> d!377586 (= (appendIndex!147 (list!5191 (left!11716 (c!218765 lt!442341))) (list!5191 (right!12046 (c!218765 lt!442341))) 0) true)))

(declare-fun b!1338592 () Bool)

(assert (=> b!1338592 (= e!857415 (< 0 (+ (size!11118 (list!5191 (left!11716 (c!218765 lt!442341)))) (size!11118 (list!5191 (right!12046 (c!218765 lt!442341)))))))))

(declare-fun b!1338593 () Bool)

(assert (=> b!1338593 (= e!857418 (- 0 (size!11118 (list!5191 (left!11716 (c!218765 lt!442341))))))))

(declare-fun b!1338594 () Bool)

(assert (=> b!1338594 (= e!857416 call!90409)))

(assert (= (and d!377586 res!603400) b!1338592))

(assert (= (and d!377586 (not res!603401)) b!1338591))

(assert (= (and d!377586 c!219398) b!1338589))

(assert (= (and d!377586 (not c!219398)) b!1338594))

(assert (= (or b!1338589 b!1338594) bm!90404))

(assert (= (and bm!90404 c!219399) b!1338590))

(assert (= (and bm!90404 (not c!219399)) b!1338593))

(assert (=> d!377586 m!1494507))

(assert (=> d!377586 m!1494509))

(assert (=> d!377586 m!1495401))

(assert (=> d!377586 m!1495401))

(declare-fun m!1496847 () Bool)

(assert (=> d!377586 m!1496847))

(assert (=> d!377586 m!1494507))

(assert (=> d!377586 m!1496629))

(declare-fun m!1496849 () Bool)

(assert (=> bm!90404 m!1496849))

(assert (=> b!1338593 m!1494507))

(assert (=> b!1338593 m!1496629))

(assert (=> b!1338592 m!1494507))

(assert (=> b!1338592 m!1496629))

(assert (=> b!1338592 m!1494509))

(declare-fun m!1496851 () Bool)

(assert (=> b!1338592 m!1496851))

(assert (=> b!1338591 m!1494509))

(declare-fun m!1496853 () Bool)

(assert (=> b!1338591 m!1496853))

(assert (=> b!1336832 d!377586))

(declare-fun b!1338596 () Bool)

(declare-fun e!857419 () List!13717)

(declare-fun e!857420 () List!13717)

(assert (=> b!1338596 (= e!857419 e!857420)))

(declare-fun c!219401 () Bool)

(assert (=> b!1338596 (= c!219401 ((_ is Leaf!6879) (left!11716 (c!218765 lt!442341))))))

(declare-fun b!1338597 () Bool)

(assert (=> b!1338597 (= e!857420 (list!5195 (xs!7214 (left!11716 (c!218765 lt!442341)))))))

(declare-fun d!377588 () Bool)

(declare-fun c!219400 () Bool)

(assert (=> d!377588 (= c!219400 ((_ is Empty!4499) (left!11716 (c!218765 lt!442341))))))

(assert (=> d!377588 (= (list!5191 (left!11716 (c!218765 lt!442341))) e!857419)))

(declare-fun b!1338595 () Bool)

(assert (=> b!1338595 (= e!857419 Nil!13651)))

(declare-fun b!1338598 () Bool)

(assert (=> b!1338598 (= e!857420 (++!3488 (list!5191 (left!11716 (left!11716 (c!218765 lt!442341)))) (list!5191 (right!12046 (left!11716 (c!218765 lt!442341))))))))

(assert (= (and d!377588 c!219400) b!1338595))

(assert (= (and d!377588 (not c!219400)) b!1338596))

(assert (= (and b!1338596 c!219401) b!1338597))

(assert (= (and b!1338596 (not c!219401)) b!1338598))

(declare-fun m!1496855 () Bool)

(assert (=> b!1338597 m!1496855))

(declare-fun m!1496857 () Bool)

(assert (=> b!1338598 m!1496857))

(declare-fun m!1496859 () Bool)

(assert (=> b!1338598 m!1496859))

(assert (=> b!1338598 m!1496857))

(assert (=> b!1338598 m!1496859))

(declare-fun m!1496861 () Bool)

(assert (=> b!1338598 m!1496861))

(assert (=> b!1336832 d!377588))

(declare-fun b!1338600 () Bool)

(declare-fun e!857421 () List!13717)

(declare-fun e!857422 () List!13717)

(assert (=> b!1338600 (= e!857421 e!857422)))

(declare-fun c!219403 () Bool)

(assert (=> b!1338600 (= c!219403 ((_ is Leaf!6879) (right!12046 (c!218765 lt!442341))))))

(declare-fun b!1338601 () Bool)

(assert (=> b!1338601 (= e!857422 (list!5195 (xs!7214 (right!12046 (c!218765 lt!442341)))))))

(declare-fun d!377590 () Bool)

(declare-fun c!219402 () Bool)

(assert (=> d!377590 (= c!219402 ((_ is Empty!4499) (right!12046 (c!218765 lt!442341))))))

(assert (=> d!377590 (= (list!5191 (right!12046 (c!218765 lt!442341))) e!857421)))

(declare-fun b!1338599 () Bool)

(assert (=> b!1338599 (= e!857421 Nil!13651)))

(declare-fun b!1338602 () Bool)

(assert (=> b!1338602 (= e!857422 (++!3488 (list!5191 (left!11716 (right!12046 (c!218765 lt!442341)))) (list!5191 (right!12046 (right!12046 (c!218765 lt!442341))))))))

(assert (= (and d!377590 c!219402) b!1338599))

(assert (= (and d!377590 (not c!219402)) b!1338600))

(assert (= (and b!1338600 c!219403) b!1338601))

(assert (= (and b!1338600 (not c!219403)) b!1338602))

(declare-fun m!1496863 () Bool)

(assert (=> b!1338601 m!1496863))

(declare-fun m!1496865 () Bool)

(assert (=> b!1338602 m!1496865))

(declare-fun m!1496867 () Bool)

(assert (=> b!1338602 m!1496867))

(assert (=> b!1338602 m!1496865))

(assert (=> b!1338602 m!1496867))

(declare-fun m!1496869 () Bool)

(assert (=> b!1338602 m!1496869))

(assert (=> b!1336832 d!377590))

(assert (=> b!1336832 d!377474))

(declare-fun d!377592 () Bool)

(assert (=> d!377592 (= (list!5195 (xs!7214 (c!218765 lt!442342))) (innerList!4559 (xs!7214 (c!218765 lt!442342))))))

(assert (=> b!1337216 d!377592))

(declare-fun d!377594 () Bool)

(assert (=> d!377594 (= (isEmpty!8143 lt!442371) ((_ is Nil!13651) lt!442371))))

(assert (=> d!376574 d!377594))

(assert (=> d!376574 d!376554))

(declare-fun d!377596 () Bool)

(assert (=> d!377596 (= (inv!17984 (tag!2629 (h!19053 (t!119283 (t!119283 rules!2550))))) (= (mod (str.len (value!77091 (tag!2629 (h!19053 (t!119283 (t!119283 rules!2550)))))) 2) 0))))

(assert (=> b!1337353 d!377596))

(declare-fun d!377598 () Bool)

(declare-fun res!603402 () Bool)

(declare-fun e!857423 () Bool)

(assert (=> d!377598 (=> (not res!603402) (not e!857423))))

(assert (=> d!377598 (= res!603402 (semiInverseModEq!894 (toChars!3461 (transformation!2367 (h!19053 (t!119283 (t!119283 rules!2550))))) (toValue!3602 (transformation!2367 (h!19053 (t!119283 (t!119283 rules!2550)))))))))

(assert (=> d!377598 (= (inv!17987 (transformation!2367 (h!19053 (t!119283 (t!119283 rules!2550))))) e!857423)))

(declare-fun b!1338603 () Bool)

(assert (=> b!1338603 (= e!857423 (equivClasses!853 (toChars!3461 (transformation!2367 (h!19053 (t!119283 (t!119283 rules!2550))))) (toValue!3602 (transformation!2367 (h!19053 (t!119283 (t!119283 rules!2550)))))))))

(assert (= (and d!377598 res!603402) b!1338603))

(declare-fun m!1496871 () Bool)

(assert (=> d!377598 m!1496871))

(declare-fun m!1496873 () Bool)

(assert (=> b!1338603 m!1496873))

(assert (=> b!1337353 d!377598))

(declare-fun d!377600 () Bool)

(declare-fun lt!442964 () Bool)

(assert (=> d!377600 (= lt!442964 (select (content!1937 (list!5187 lt!442342)) lt!442607))))

(declare-fun e!857424 () Bool)

(assert (=> d!377600 (= lt!442964 e!857424)))

(declare-fun res!603403 () Bool)

(assert (=> d!377600 (=> (not res!603403) (not e!857424))))

(assert (=> d!377600 (= res!603403 ((_ is Cons!13651) (list!5187 lt!442342)))))

(assert (=> d!377600 (= (contains!2489 (list!5187 lt!442342) lt!442607) lt!442964)))

(declare-fun b!1338604 () Bool)

(declare-fun e!857425 () Bool)

(assert (=> b!1338604 (= e!857424 e!857425)))

(declare-fun res!603404 () Bool)

(assert (=> b!1338604 (=> res!603404 e!857425)))

(assert (=> b!1338604 (= res!603404 (= (h!19052 (list!5187 lt!442342)) lt!442607))))

(declare-fun b!1338605 () Bool)

(assert (=> b!1338605 (= e!857425 (contains!2489 (t!119282 (list!5187 lt!442342)) lt!442607))))

(assert (= (and d!377600 res!603403) b!1338604))

(assert (= (and b!1338604 (not res!603404)) b!1338605))

(assert (=> d!377600 m!1493745))

(assert (=> d!377600 m!1494089))

(declare-fun m!1496875 () Bool)

(assert (=> d!377600 m!1496875))

(declare-fun m!1496877 () Bool)

(assert (=> b!1338605 m!1496877))

(assert (=> d!376734 d!377600))

(declare-fun b!1338606 () Bool)

(declare-fun res!603406 () Bool)

(declare-fun e!857427 () Bool)

(assert (=> b!1338606 (=> (not res!603406) (not e!857427))))

(assert (=> b!1338606 (= res!603406 (not (isEmpty!8148 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))))))

(declare-fun b!1338607 () Bool)

(declare-fun res!603407 () Bool)

(assert (=> b!1338607 (=> (not res!603407) (not e!857427))))

(assert (=> b!1338607 (= res!603407 (isBalanced!1305 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))))))

(declare-fun b!1338608 () Bool)

(declare-fun res!603408 () Bool)

(assert (=> b!1338608 (=> (not res!603408) (not e!857427))))

(assert (=> b!1338608 (= res!603408 (<= (- (height!635 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))) (height!635 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))) 1))))

(declare-fun b!1338609 () Bool)

(declare-fun e!857426 () Bool)

(assert (=> b!1338609 (= e!857426 e!857427)))

(declare-fun res!603405 () Bool)

(assert (=> b!1338609 (=> (not res!603405) (not e!857427))))

(assert (=> b!1338609 (= res!603405 (<= (- 1) (- (height!635 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))) (height!635 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))))))))

(declare-fun d!377602 () Bool)

(declare-fun res!603410 () Bool)

(assert (=> d!377602 (=> res!603410 e!857426)))

(assert (=> d!377602 (= res!603410 (not ((_ is Node!4499) (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))))))

(assert (=> d!377602 (= (isBalanced!1305 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))) e!857426)))

(declare-fun b!1338610 () Bool)

(declare-fun res!603409 () Bool)

(assert (=> b!1338610 (=> (not res!603409) (not e!857427))))

(assert (=> b!1338610 (= res!603409 (isBalanced!1305 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))))))

(declare-fun b!1338611 () Bool)

(assert (=> b!1338611 (= e!857427 (not (isEmpty!8148 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))))))

(assert (= (and d!377602 (not res!603410)) b!1338609))

(assert (= (and b!1338609 res!603405) b!1338608))

(assert (= (and b!1338608 res!603408) b!1338607))

(assert (= (and b!1338607 res!603407) b!1338610))

(assert (= (and b!1338610 res!603409) b!1338606))

(assert (= (and b!1338606 res!603406) b!1338611))

(declare-fun m!1496879 () Bool)

(assert (=> b!1338611 m!1496879))

(declare-fun m!1496881 () Bool)

(assert (=> b!1338607 m!1496881))

(declare-fun m!1496883 () Bool)

(assert (=> b!1338609 m!1496883))

(declare-fun m!1496885 () Bool)

(assert (=> b!1338609 m!1496885))

(declare-fun m!1496887 () Bool)

(assert (=> b!1338606 m!1496887))

(assert (=> b!1338608 m!1496883))

(assert (=> b!1338608 m!1496885))

(declare-fun m!1496889 () Bool)

(assert (=> b!1338610 m!1496889))

(assert (=> d!376810 d!377602))

(declare-fun d!377604 () Bool)

(assert (=> d!377604 (= (inv!17998 (xs!7214 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))) (<= (size!11118 (innerList!4559 (xs!7214 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))) 2147483647))))

(declare-fun bs!332177 () Bool)

(assert (= bs!332177 d!377604))

(declare-fun m!1496891 () Bool)

(assert (=> bs!332177 m!1496891))

(assert (=> b!1337330 d!377604))

(assert (=> b!1336772 d!376980))

(assert (=> b!1336772 d!376982))

(assert (=> b!1336625 d!377024))

(declare-fun d!377606 () Bool)

(declare-fun res!603411 () Bool)

(declare-fun e!857428 () Bool)

(assert (=> d!377606 (=> res!603411 e!857428)))

(assert (=> d!377606 (= res!603411 (not ((_ is Cons!13652) (t!119283 (t!119283 rules!2550)))))))

(assert (=> d!377606 (= (sepAndNonSepRulesDisjointChars!740 rules!2550 (t!119283 (t!119283 rules!2550))) e!857428)))

(declare-fun b!1338612 () Bool)

(declare-fun e!857429 () Bool)

(assert (=> b!1338612 (= e!857428 e!857429)))

(declare-fun res!603412 () Bool)

(assert (=> b!1338612 (=> (not res!603412) (not e!857429))))

(assert (=> b!1338612 (= res!603412 (ruleDisjointCharsFromAllFromOtherType!336 (h!19053 (t!119283 (t!119283 rules!2550))) rules!2550))))

(declare-fun b!1338613 () Bool)

(assert (=> b!1338613 (= e!857429 (sepAndNonSepRulesDisjointChars!740 rules!2550 (t!119283 (t!119283 (t!119283 rules!2550)))))))

(assert (= (and d!377606 (not res!603411)) b!1338612))

(assert (= (and b!1338612 res!603412) b!1338613))

(declare-fun m!1496893 () Bool)

(assert (=> b!1338612 m!1496893))

(declare-fun m!1496895 () Bool)

(assert (=> b!1338613 m!1496895))

(assert (=> b!1336619 d!377606))

(declare-fun d!377608 () Bool)

(declare-fun lt!442965 () Int)

(assert (=> d!377608 (= lt!442965 (size!11127 (list!5190 (_1!7523 lt!442639))))))

(assert (=> d!377608 (= lt!442965 (size!11128 (c!218804 (_1!7523 lt!442639))))))

(assert (=> d!377608 (= (size!11120 (_1!7523 lt!442639)) lt!442965)))

(declare-fun bs!332178 () Bool)

(assert (= bs!332178 d!377608))

(assert (=> bs!332178 m!1494985))

(assert (=> bs!332178 m!1494985))

(declare-fun m!1496897 () Bool)

(assert (=> bs!332178 m!1496897))

(declare-fun m!1496899 () Bool)

(assert (=> bs!332178 m!1496899))

(assert (=> d!376802 d!377608))

(declare-fun b!1338894 () Bool)

(declare-fun e!857570 () tuple2!13274)

(assert (=> b!1338894 (= e!857570 (tuple2!13275 (BalanceConc!8943 Empty!4501) (print!832 thiss!19762 (singletonSeq!969 t2!34))))))

(declare-fun b!1338895 () Bool)

(declare-datatypes ((tuple2!13284 0))(
  ( (tuple2!13285 (_1!7528 Token!4396) (_2!7528 BalanceConc!8938)) )
))
(declare-datatypes ((Option!2631 0))(
  ( (None!2630) (Some!2630 (v!21281 tuple2!13284)) )
))
(declare-fun lt!443225 () Option!2631)

(declare-fun lt!443237 () tuple2!13274)

(declare-fun lexRec!266 (LexerInterface!2062 List!13718 BalanceConc!8938) tuple2!13274)

(assert (=> b!1338895 (= lt!443237 (lexRec!266 thiss!19762 rules!2550 (_2!7528 (v!21281 lt!443225))))))

(declare-fun e!857569 () tuple2!13274)

(declare-fun prepend!351 (BalanceConc!8942 Token!4396) BalanceConc!8942)

(assert (=> b!1338895 (= e!857569 (tuple2!13275 (prepend!351 (_1!7523 lt!443237) (_1!7528 (v!21281 lt!443225))) (_2!7523 lt!443237)))))

(declare-fun b!1338896 () Bool)

(declare-fun e!857568 () tuple2!13274)

(assert (=> b!1338896 (= e!857568 (tuple2!13275 (BalanceConc!8943 Empty!4501) (print!832 thiss!19762 (singletonSeq!969 t2!34))))))

(declare-fun b!1338897 () Bool)

(declare-fun lt!443214 () BalanceConc!8938)

(assert (=> b!1338897 (= e!857569 (tuple2!13275 (BalanceConc!8943 Empty!4501) lt!443214))))

(declare-fun e!857567 () Bool)

(declare-fun lt!443220 () tuple2!13274)

(declare-fun b!1338898 () Bool)

(assert (=> b!1338898 (= e!857567 (= (list!5187 (_2!7523 lt!443220)) (list!5187 (_2!7523 (lexRec!266 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))))

(declare-fun b!1338899 () Bool)

(declare-fun lt!443205 () Option!2631)

(declare-fun lt!443219 () tuple2!13274)

(assert (=> b!1338899 (= lt!443219 (lexRec!266 thiss!19762 rules!2550 (_2!7528 (v!21281 lt!443205))))))

(assert (=> b!1338899 (= e!857570 (tuple2!13275 (prepend!351 (_1!7523 lt!443219) (_1!7528 (v!21281 lt!443205))) (_2!7523 lt!443219)))))

(declare-fun lt!443238 () BalanceConc!8938)

(declare-fun b!1338900 () Bool)

(declare-fun lt!443224 () Option!2631)

(declare-fun append!387 (BalanceConc!8942 Token!4396) BalanceConc!8942)

(assert (=> b!1338900 (= e!857568 (lexTailRecV2!387 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)) lt!443238 (_2!7528 (v!21281 lt!443224)) (append!387 (BalanceConc!8943 Empty!4501) (_1!7528 (v!21281 lt!443224)))))))

(declare-fun lt!443226 () tuple2!13274)

(assert (=> b!1338900 (= lt!443226 (lexRec!266 thiss!19762 rules!2550 (_2!7528 (v!21281 lt!443224))))))

(declare-fun lt!443207 () List!13717)

(assert (=> b!1338900 (= lt!443207 (list!5187 (BalanceConc!8939 Empty!4499)))))

(declare-fun lt!443213 () List!13717)

(assert (=> b!1338900 (= lt!443213 (list!5187 (charsOf!1339 (_1!7528 (v!21281 lt!443224)))))))

(declare-fun lt!443235 () List!13717)

(assert (=> b!1338900 (= lt!443235 (list!5187 (_2!7528 (v!21281 lt!443224))))))

(declare-fun lt!443222 () Unit!19781)

(declare-fun lemmaConcatAssociativity!831 (List!13717 List!13717 List!13717) Unit!19781)

(assert (=> b!1338900 (= lt!443222 (lemmaConcatAssociativity!831 lt!443207 lt!443213 lt!443235))))

(assert (=> b!1338900 (= (++!3488 (++!3488 lt!443207 lt!443213) lt!443235) (++!3488 lt!443207 (++!3488 lt!443213 lt!443235)))))

(declare-fun lt!443212 () Unit!19781)

(assert (=> b!1338900 (= lt!443212 lt!443222)))

(declare-fun maxPrefixZipperSequence!539 (LexerInterface!2062 List!13718 BalanceConc!8938) Option!2631)

(assert (=> b!1338900 (= lt!443205 (maxPrefixZipperSequence!539 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34))))))

(declare-fun c!219459 () Bool)

(assert (=> b!1338900 (= c!219459 ((_ is Some!2630) lt!443205))))

(assert (=> b!1338900 (= (lexRec!266 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34))) e!857570)))

(declare-fun lt!443227 () Unit!19781)

(declare-fun Unit!19789 () Unit!19781)

(assert (=> b!1338900 (= lt!443227 Unit!19789)))

(declare-fun lt!443228 () List!13722)

(assert (=> b!1338900 (= lt!443228 (list!5190 (BalanceConc!8943 Empty!4501)))))

(declare-fun lt!443215 () List!13722)

(assert (=> b!1338900 (= lt!443215 (Cons!13656 (_1!7528 (v!21281 lt!443224)) Nil!13656))))

(declare-fun lt!443218 () List!13722)

(assert (=> b!1338900 (= lt!443218 (list!5190 (_1!7523 lt!443226)))))

(declare-fun lt!443211 () Unit!19781)

(declare-fun lemmaConcatAssociativity!832 (List!13722 List!13722 List!13722) Unit!19781)

(assert (=> b!1338900 (= lt!443211 (lemmaConcatAssociativity!832 lt!443228 lt!443215 lt!443218))))

(assert (=> b!1338900 (= (++!3494 (++!3494 lt!443228 lt!443215) lt!443218) (++!3494 lt!443228 (++!3494 lt!443215 lt!443218)))))

(declare-fun lt!443234 () Unit!19781)

(assert (=> b!1338900 (= lt!443234 lt!443211)))

(declare-fun lt!443208 () List!13717)

(assert (=> b!1338900 (= lt!443208 (++!3488 (list!5187 (BalanceConc!8939 Empty!4499)) (list!5187 (charsOf!1339 (_1!7528 (v!21281 lt!443224))))))))

(declare-fun lt!443223 () List!13717)

(assert (=> b!1338900 (= lt!443223 (list!5187 (_2!7528 (v!21281 lt!443224))))))

(declare-fun lt!443209 () List!13722)

(assert (=> b!1338900 (= lt!443209 (list!5190 (append!387 (BalanceConc!8943 Empty!4501) (_1!7528 (v!21281 lt!443224)))))))

(declare-fun lt!443229 () Unit!19781)

(declare-fun lemmaLexThenLexPrefix!181 (LexerInterface!2062 List!13718 List!13717 List!13717 List!13722 List!13722 List!13717) Unit!19781)

(assert (=> b!1338900 (= lt!443229 (lemmaLexThenLexPrefix!181 thiss!19762 rules!2550 lt!443208 lt!443223 lt!443209 (list!5190 (_1!7523 lt!443226)) (list!5187 (_2!7523 lt!443226))))))

(assert (=> b!1338900 (= (lexList!592 thiss!19762 rules!2550 lt!443208) (tuple2!13279 lt!443209 Nil!13651))))

(declare-fun lt!443236 () Unit!19781)

(assert (=> b!1338900 (= lt!443236 lt!443229)))

(assert (=> b!1338900 (= lt!443214 (++!3490 (BalanceConc!8939 Empty!4499) (charsOf!1339 (_1!7528 (v!21281 lt!443224)))))))

(assert (=> b!1338900 (= lt!443225 (maxPrefixZipperSequence!539 thiss!19762 rules!2550 lt!443214))))

(declare-fun c!219460 () Bool)

(assert (=> b!1338900 (= c!219460 ((_ is Some!2630) lt!443225))))

(assert (=> b!1338900 (= (lexRec!266 thiss!19762 rules!2550 (++!3490 (BalanceConc!8939 Empty!4499) (charsOf!1339 (_1!7528 (v!21281 lt!443224))))) e!857569)))

(declare-fun lt!443210 () Unit!19781)

(declare-fun Unit!19790 () Unit!19781)

(assert (=> b!1338900 (= lt!443210 Unit!19790)))

(assert (=> b!1338900 (= lt!443238 (++!3490 (BalanceConc!8939 Empty!4499) (charsOf!1339 (_1!7528 (v!21281 lt!443224)))))))

(declare-fun lt!443231 () List!13717)

(assert (=> b!1338900 (= lt!443231 (list!5187 lt!443238))))

(declare-fun lt!443233 () List!13717)

(assert (=> b!1338900 (= lt!443233 (list!5187 (_2!7528 (v!21281 lt!443224))))))

(declare-fun lt!443232 () Unit!19781)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!222 (List!13717 List!13717) Unit!19781)

(assert (=> b!1338900 (= lt!443232 (lemmaConcatTwoListThenFSndIsSuffix!222 lt!443231 lt!443233))))

(declare-fun isSuffix!244 (List!13717 List!13717) Bool)

(assert (=> b!1338900 (isSuffix!244 lt!443233 (++!3488 lt!443231 lt!443233))))

(declare-fun lt!443230 () Unit!19781)

(assert (=> b!1338900 (= lt!443230 lt!443232)))

(declare-fun d!377610 () Bool)

(assert (=> d!377610 e!857567))

(declare-fun res!603481 () Bool)

(assert (=> d!377610 (=> (not res!603481) (not e!857567))))

(assert (=> d!377610 (= res!603481 (= (list!5190 (_1!7523 lt!443220)) (list!5190 (_1!7523 (lexRec!266 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)))))))))

(assert (=> d!377610 (= lt!443220 e!857568)))

(declare-fun c!219461 () Bool)

(assert (=> d!377610 (= c!219461 ((_ is Some!2630) lt!443224))))

(declare-fun maxPrefixZipperSequenceV2!211 (LexerInterface!2062 List!13718 BalanceConc!8938 BalanceConc!8938) Option!2631)

(assert (=> d!377610 (= lt!443224 (maxPrefixZipperSequenceV2!211 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)) (print!832 thiss!19762 (singletonSeq!969 t2!34))))))

(declare-fun lt!443217 () Unit!19781)

(declare-fun lt!443216 () Unit!19781)

(assert (=> d!377610 (= lt!443217 lt!443216)))

(declare-fun lt!443206 () List!13717)

(declare-fun lt!443221 () List!13717)

(assert (=> d!377610 (isSuffix!244 lt!443206 (++!3488 lt!443221 lt!443206))))

(assert (=> d!377610 (= lt!443216 (lemmaConcatTwoListThenFSndIsSuffix!222 lt!443221 lt!443206))))

(assert (=> d!377610 (= lt!443206 (list!5187 (print!832 thiss!19762 (singletonSeq!969 t2!34))))))

(assert (=> d!377610 (= lt!443221 (list!5187 (BalanceConc!8939 Empty!4499)))))

(assert (=> d!377610 (= (lexTailRecV2!387 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t2!34)) (BalanceConc!8939 Empty!4499) (print!832 thiss!19762 (singletonSeq!969 t2!34)) (BalanceConc!8943 Empty!4501)) lt!443220)))

(assert (= (and d!377610 c!219461) b!1338900))

(assert (= (and d!377610 (not c!219461)) b!1338896))

(assert (= (and b!1338900 c!219459) b!1338899))

(assert (= (and b!1338900 (not c!219459)) b!1338894))

(assert (= (and b!1338900 c!219460) b!1338895))

(assert (= (and b!1338900 (not c!219460)) b!1338897))

(assert (= (and d!377610 res!603481) b!1338898))

(declare-fun m!1497375 () Bool)

(assert (=> b!1338898 m!1497375))

(assert (=> b!1338898 m!1494051))

(declare-fun m!1497377 () Bool)

(assert (=> b!1338898 m!1497377))

(declare-fun m!1497379 () Bool)

(assert (=> b!1338898 m!1497379))

(declare-fun m!1497381 () Bool)

(assert (=> b!1338900 m!1497381))

(declare-fun m!1497383 () Bool)

(assert (=> b!1338900 m!1497383))

(declare-fun m!1497385 () Bool)

(assert (=> b!1338900 m!1497385))

(declare-fun m!1497387 () Bool)

(assert (=> b!1338900 m!1497387))

(assert (=> b!1338900 m!1496541))

(declare-fun m!1497389 () Bool)

(assert (=> b!1338900 m!1497389))

(declare-fun m!1497391 () Bool)

(assert (=> b!1338900 m!1497391))

(declare-fun m!1497393 () Bool)

(assert (=> b!1338900 m!1497393))

(assert (=> b!1338900 m!1497387))

(declare-fun m!1497395 () Bool)

(assert (=> b!1338900 m!1497395))

(declare-fun m!1497397 () Bool)

(assert (=> b!1338900 m!1497397))

(declare-fun m!1497399 () Bool)

(assert (=> b!1338900 m!1497399))

(declare-fun m!1497401 () Bool)

(assert (=> b!1338900 m!1497401))

(declare-fun m!1497403 () Bool)

(assert (=> b!1338900 m!1497403))

(assert (=> b!1338900 m!1497389))

(assert (=> b!1338900 m!1494051))

(declare-fun m!1497405 () Bool)

(assert (=> b!1338900 m!1497405))

(declare-fun m!1497407 () Bool)

(assert (=> b!1338900 m!1497407))

(declare-fun m!1497409 () Bool)

(assert (=> b!1338900 m!1497409))

(assert (=> b!1338900 m!1497381))

(declare-fun m!1497411 () Bool)

(assert (=> b!1338900 m!1497411))

(declare-fun m!1497413 () Bool)

(assert (=> b!1338900 m!1497413))

(declare-fun m!1497415 () Bool)

(assert (=> b!1338900 m!1497415))

(declare-fun m!1497417 () Bool)

(assert (=> b!1338900 m!1497417))

(declare-fun m!1497419 () Bool)

(assert (=> b!1338900 m!1497419))

(assert (=> b!1338900 m!1497397))

(assert (=> b!1338900 m!1494051))

(assert (=> b!1338900 m!1497377))

(declare-fun m!1497421 () Bool)

(assert (=> b!1338900 m!1497421))

(declare-fun m!1497423 () Bool)

(assert (=> b!1338900 m!1497423))

(declare-fun m!1497425 () Bool)

(assert (=> b!1338900 m!1497425))

(declare-fun m!1497427 () Bool)

(assert (=> b!1338900 m!1497427))

(assert (=> b!1338900 m!1497405))

(assert (=> b!1338900 m!1496541))

(assert (=> b!1338900 m!1494051))

(declare-fun m!1497429 () Bool)

(assert (=> b!1338900 m!1497429))

(assert (=> b!1338900 m!1497383))

(assert (=> b!1338900 m!1497393))

(declare-fun m!1497431 () Bool)

(assert (=> b!1338900 m!1497431))

(assert (=> b!1338900 m!1497403))

(declare-fun m!1497433 () Bool)

(assert (=> b!1338900 m!1497433))

(assert (=> b!1338900 m!1497403))

(assert (=> b!1338900 m!1497415))

(assert (=> b!1338900 m!1497399))

(declare-fun m!1497435 () Bool)

(assert (=> b!1338900 m!1497435))

(assert (=> b!1338900 m!1497405))

(declare-fun m!1497437 () Bool)

(assert (=> b!1338900 m!1497437))

(assert (=> b!1338900 m!1497419))

(declare-fun m!1497441 () Bool)

(assert (=> b!1338900 m!1497441))

(declare-fun m!1497445 () Bool)

(assert (=> b!1338900 m!1497445))

(declare-fun m!1497449 () Bool)

(assert (=> b!1338899 m!1497449))

(declare-fun m!1497451 () Bool)

(assert (=> b!1338899 m!1497451))

(declare-fun m!1497453 () Bool)

(assert (=> b!1338895 m!1497453))

(declare-fun m!1497455 () Bool)

(assert (=> b!1338895 m!1497455))

(declare-fun m!1497457 () Bool)

(assert (=> d!377610 m!1497457))

(assert (=> d!377610 m!1494051))

(assert (=> d!377610 m!1494051))

(declare-fun m!1497463 () Bool)

(assert (=> d!377610 m!1497463))

(declare-fun m!1497467 () Bool)

(assert (=> d!377610 m!1497467))

(assert (=> d!377610 m!1494051))

(assert (=> d!377610 m!1497377))

(assert (=> d!377610 m!1496541))

(declare-fun m!1497469 () Bool)

(assert (=> d!377610 m!1497469))

(declare-fun m!1497471 () Bool)

(assert (=> d!377610 m!1497471))

(declare-fun m!1497473 () Bool)

(assert (=> d!377610 m!1497473))

(assert (=> d!377610 m!1494051))

(assert (=> d!377610 m!1494975))

(assert (=> d!377610 m!1497471))

(assert (=> d!376802 d!377610))

(declare-fun d!377732 () Bool)

(declare-fun lt!443239 () Int)

(assert (=> d!377732 (= lt!443239 (size!11127 (list!5190 (_1!7523 lt!442619))))))

(assert (=> d!377732 (= lt!443239 (size!11128 (c!218804 (_1!7523 lt!442619))))))

(assert (=> d!377732 (= (size!11120 (_1!7523 lt!442619)) lt!443239)))

(declare-fun bs!332197 () Bool)

(assert (= bs!332197 d!377732))

(assert (=> bs!332197 m!1494897))

(assert (=> bs!332197 m!1494897))

(declare-fun m!1497475 () Bool)

(assert (=> bs!332197 m!1497475))

(declare-fun m!1497477 () Bool)

(assert (=> bs!332197 m!1497477))

(assert (=> d!376740 d!377732))

(declare-fun b!1339018 () Bool)

(declare-fun e!857612 () tuple2!13274)

(assert (=> b!1339018 (= e!857612 (tuple2!13275 (BalanceConc!8943 Empty!4501) (print!832 thiss!19762 (singletonSeq!969 t1!34))))))

(declare-fun lt!443272 () tuple2!13274)

(declare-fun lt!443260 () Option!2631)

(declare-fun b!1339019 () Bool)

(assert (=> b!1339019 (= lt!443272 (lexRec!266 thiss!19762 rules!2550 (_2!7528 (v!21281 lt!443260))))))

(declare-fun e!857611 () tuple2!13274)

(assert (=> b!1339019 (= e!857611 (tuple2!13275 (prepend!351 (_1!7523 lt!443272) (_1!7528 (v!21281 lt!443260))) (_2!7523 lt!443272)))))

(declare-fun b!1339020 () Bool)

(declare-fun e!857610 () tuple2!13274)

(assert (=> b!1339020 (= e!857610 (tuple2!13275 (BalanceConc!8943 Empty!4501) (print!832 thiss!19762 (singletonSeq!969 t1!34))))))

(declare-fun b!1339021 () Bool)

(declare-fun lt!443249 () BalanceConc!8938)

(assert (=> b!1339021 (= e!857611 (tuple2!13275 (BalanceConc!8943 Empty!4501) lt!443249))))

(declare-fun lt!443255 () tuple2!13274)

(declare-fun e!857609 () Bool)

(declare-fun b!1339022 () Bool)

(assert (=> b!1339022 (= e!857609 (= (list!5187 (_2!7523 lt!443255)) (list!5187 (_2!7523 (lexRec!266 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))))

(declare-fun b!1339023 () Bool)

(declare-fun lt!443254 () tuple2!13274)

(declare-fun lt!443240 () Option!2631)

(assert (=> b!1339023 (= lt!443254 (lexRec!266 thiss!19762 rules!2550 (_2!7528 (v!21281 lt!443240))))))

(assert (=> b!1339023 (= e!857612 (tuple2!13275 (prepend!351 (_1!7523 lt!443254) (_1!7528 (v!21281 lt!443240))) (_2!7523 lt!443254)))))

(declare-fun b!1339024 () Bool)

(declare-fun lt!443273 () BalanceConc!8938)

(declare-fun lt!443259 () Option!2631)

(assert (=> b!1339024 (= e!857610 (lexTailRecV2!387 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)) lt!443273 (_2!7528 (v!21281 lt!443259)) (append!387 (BalanceConc!8943 Empty!4501) (_1!7528 (v!21281 lt!443259)))))))

(declare-fun lt!443261 () tuple2!13274)

(assert (=> b!1339024 (= lt!443261 (lexRec!266 thiss!19762 rules!2550 (_2!7528 (v!21281 lt!443259))))))

(declare-fun lt!443242 () List!13717)

(assert (=> b!1339024 (= lt!443242 (list!5187 (BalanceConc!8939 Empty!4499)))))

(declare-fun lt!443248 () List!13717)

(assert (=> b!1339024 (= lt!443248 (list!5187 (charsOf!1339 (_1!7528 (v!21281 lt!443259)))))))

(declare-fun lt!443270 () List!13717)

(assert (=> b!1339024 (= lt!443270 (list!5187 (_2!7528 (v!21281 lt!443259))))))

(declare-fun lt!443257 () Unit!19781)

(assert (=> b!1339024 (= lt!443257 (lemmaConcatAssociativity!831 lt!443242 lt!443248 lt!443270))))

(assert (=> b!1339024 (= (++!3488 (++!3488 lt!443242 lt!443248) lt!443270) (++!3488 lt!443242 (++!3488 lt!443248 lt!443270)))))

(declare-fun lt!443247 () Unit!19781)

(assert (=> b!1339024 (= lt!443247 lt!443257)))

(assert (=> b!1339024 (= lt!443240 (maxPrefixZipperSequence!539 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34))))))

(declare-fun c!219462 () Bool)

(assert (=> b!1339024 (= c!219462 ((_ is Some!2630) lt!443240))))

(assert (=> b!1339024 (= (lexRec!266 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34))) e!857612)))

(declare-fun lt!443262 () Unit!19781)

(declare-fun Unit!19791 () Unit!19781)

(assert (=> b!1339024 (= lt!443262 Unit!19791)))

(declare-fun lt!443263 () List!13722)

(assert (=> b!1339024 (= lt!443263 (list!5190 (BalanceConc!8943 Empty!4501)))))

(declare-fun lt!443250 () List!13722)

(assert (=> b!1339024 (= lt!443250 (Cons!13656 (_1!7528 (v!21281 lt!443259)) Nil!13656))))

(declare-fun lt!443253 () List!13722)

(assert (=> b!1339024 (= lt!443253 (list!5190 (_1!7523 lt!443261)))))

(declare-fun lt!443246 () Unit!19781)

(assert (=> b!1339024 (= lt!443246 (lemmaConcatAssociativity!832 lt!443263 lt!443250 lt!443253))))

(assert (=> b!1339024 (= (++!3494 (++!3494 lt!443263 lt!443250) lt!443253) (++!3494 lt!443263 (++!3494 lt!443250 lt!443253)))))

(declare-fun lt!443269 () Unit!19781)

(assert (=> b!1339024 (= lt!443269 lt!443246)))

(declare-fun lt!443243 () List!13717)

(assert (=> b!1339024 (= lt!443243 (++!3488 (list!5187 (BalanceConc!8939 Empty!4499)) (list!5187 (charsOf!1339 (_1!7528 (v!21281 lt!443259))))))))

(declare-fun lt!443258 () List!13717)

(assert (=> b!1339024 (= lt!443258 (list!5187 (_2!7528 (v!21281 lt!443259))))))

(declare-fun lt!443244 () List!13722)

(assert (=> b!1339024 (= lt!443244 (list!5190 (append!387 (BalanceConc!8943 Empty!4501) (_1!7528 (v!21281 lt!443259)))))))

(declare-fun lt!443264 () Unit!19781)

(assert (=> b!1339024 (= lt!443264 (lemmaLexThenLexPrefix!181 thiss!19762 rules!2550 lt!443243 lt!443258 lt!443244 (list!5190 (_1!7523 lt!443261)) (list!5187 (_2!7523 lt!443261))))))

(assert (=> b!1339024 (= (lexList!592 thiss!19762 rules!2550 lt!443243) (tuple2!13279 lt!443244 Nil!13651))))

(declare-fun lt!443271 () Unit!19781)

(assert (=> b!1339024 (= lt!443271 lt!443264)))

(assert (=> b!1339024 (= lt!443249 (++!3490 (BalanceConc!8939 Empty!4499) (charsOf!1339 (_1!7528 (v!21281 lt!443259)))))))

(assert (=> b!1339024 (= lt!443260 (maxPrefixZipperSequence!539 thiss!19762 rules!2550 lt!443249))))

(declare-fun c!219463 () Bool)

(assert (=> b!1339024 (= c!219463 ((_ is Some!2630) lt!443260))))

(assert (=> b!1339024 (= (lexRec!266 thiss!19762 rules!2550 (++!3490 (BalanceConc!8939 Empty!4499) (charsOf!1339 (_1!7528 (v!21281 lt!443259))))) e!857611)))

(declare-fun lt!443245 () Unit!19781)

(declare-fun Unit!19792 () Unit!19781)

(assert (=> b!1339024 (= lt!443245 Unit!19792)))

(assert (=> b!1339024 (= lt!443273 (++!3490 (BalanceConc!8939 Empty!4499) (charsOf!1339 (_1!7528 (v!21281 lt!443259)))))))

(declare-fun lt!443266 () List!13717)

(assert (=> b!1339024 (= lt!443266 (list!5187 lt!443273))))

(declare-fun lt!443268 () List!13717)

(assert (=> b!1339024 (= lt!443268 (list!5187 (_2!7528 (v!21281 lt!443259))))))

(declare-fun lt!443267 () Unit!19781)

(assert (=> b!1339024 (= lt!443267 (lemmaConcatTwoListThenFSndIsSuffix!222 lt!443266 lt!443268))))

(assert (=> b!1339024 (isSuffix!244 lt!443268 (++!3488 lt!443266 lt!443268))))

(declare-fun lt!443265 () Unit!19781)

(assert (=> b!1339024 (= lt!443265 lt!443267)))

(declare-fun d!377734 () Bool)

(assert (=> d!377734 e!857609))

(declare-fun res!603482 () Bool)

(assert (=> d!377734 (=> (not res!603482) (not e!857609))))

(assert (=> d!377734 (= res!603482 (= (list!5190 (_1!7523 lt!443255)) (list!5190 (_1!7523 (lexRec!266 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))))

(assert (=> d!377734 (= lt!443255 e!857610)))

(declare-fun c!219464 () Bool)

(assert (=> d!377734 (= c!219464 ((_ is Some!2630) lt!443259))))

(assert (=> d!377734 (= lt!443259 (maxPrefixZipperSequenceV2!211 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)) (print!832 thiss!19762 (singletonSeq!969 t1!34))))))

(declare-fun lt!443252 () Unit!19781)

(declare-fun lt!443251 () Unit!19781)

(assert (=> d!377734 (= lt!443252 lt!443251)))

(declare-fun lt!443241 () List!13717)

(declare-fun lt!443256 () List!13717)

(assert (=> d!377734 (isSuffix!244 lt!443241 (++!3488 lt!443256 lt!443241))))

(assert (=> d!377734 (= lt!443251 (lemmaConcatTwoListThenFSndIsSuffix!222 lt!443256 lt!443241))))

(assert (=> d!377734 (= lt!443241 (list!5187 (print!832 thiss!19762 (singletonSeq!969 t1!34))))))

(assert (=> d!377734 (= lt!443256 (list!5187 (BalanceConc!8939 Empty!4499)))))

(assert (=> d!377734 (= (lexTailRecV2!387 thiss!19762 rules!2550 (print!832 thiss!19762 (singletonSeq!969 t1!34)) (BalanceConc!8939 Empty!4499) (print!832 thiss!19762 (singletonSeq!969 t1!34)) (BalanceConc!8943 Empty!4501)) lt!443255)))

(assert (= (and d!377734 c!219464) b!1339024))

(assert (= (and d!377734 (not c!219464)) b!1339020))

(assert (= (and b!1339024 c!219462) b!1339023))

(assert (= (and b!1339024 (not c!219462)) b!1339018))

(assert (= (and b!1339024 c!219463) b!1339019))

(assert (= (and b!1339024 (not c!219463)) b!1339021))

(assert (= (and d!377734 res!603482) b!1339022))

(declare-fun m!1497483 () Bool)

(assert (=> b!1339022 m!1497483))

(assert (=> b!1339022 m!1494029))

(declare-fun m!1497485 () Bool)

(assert (=> b!1339022 m!1497485))

(declare-fun m!1497487 () Bool)

(assert (=> b!1339022 m!1497487))

(declare-fun m!1497489 () Bool)

(assert (=> b!1339024 m!1497489))

(declare-fun m!1497491 () Bool)

(assert (=> b!1339024 m!1497491))

(declare-fun m!1497493 () Bool)

(assert (=> b!1339024 m!1497493))

(declare-fun m!1497495 () Bool)

(assert (=> b!1339024 m!1497495))

(assert (=> b!1339024 m!1496541))

(declare-fun m!1497497 () Bool)

(assert (=> b!1339024 m!1497497))

(declare-fun m!1497499 () Bool)

(assert (=> b!1339024 m!1497499))

(declare-fun m!1497501 () Bool)

(assert (=> b!1339024 m!1497501))

(assert (=> b!1339024 m!1497495))

(declare-fun m!1497503 () Bool)

(assert (=> b!1339024 m!1497503))

(declare-fun m!1497505 () Bool)

(assert (=> b!1339024 m!1497505))

(declare-fun m!1497507 () Bool)

(assert (=> b!1339024 m!1497507))

(declare-fun m!1497509 () Bool)

(assert (=> b!1339024 m!1497509))

(declare-fun m!1497511 () Bool)

(assert (=> b!1339024 m!1497511))

(assert (=> b!1339024 m!1497497))

(assert (=> b!1339024 m!1494029))

(declare-fun m!1497513 () Bool)

(assert (=> b!1339024 m!1497513))

(declare-fun m!1497515 () Bool)

(assert (=> b!1339024 m!1497515))

(declare-fun m!1497517 () Bool)

(assert (=> b!1339024 m!1497517))

(assert (=> b!1339024 m!1497489))

(declare-fun m!1497519 () Bool)

(assert (=> b!1339024 m!1497519))

(declare-fun m!1497521 () Bool)

(assert (=> b!1339024 m!1497521))

(declare-fun m!1497523 () Bool)

(assert (=> b!1339024 m!1497523))

(declare-fun m!1497525 () Bool)

(assert (=> b!1339024 m!1497525))

(declare-fun m!1497527 () Bool)

(assert (=> b!1339024 m!1497527))

(assert (=> b!1339024 m!1497505))

(assert (=> b!1339024 m!1494029))

(assert (=> b!1339024 m!1497485))

(assert (=> b!1339024 m!1497421))

(declare-fun m!1497529 () Bool)

(assert (=> b!1339024 m!1497529))

(declare-fun m!1497531 () Bool)

(assert (=> b!1339024 m!1497531))

(declare-fun m!1497533 () Bool)

(assert (=> b!1339024 m!1497533))

(assert (=> b!1339024 m!1497513))

(assert (=> b!1339024 m!1496541))

(assert (=> b!1339024 m!1494029))

(declare-fun m!1497535 () Bool)

(assert (=> b!1339024 m!1497535))

(assert (=> b!1339024 m!1497491))

(assert (=> b!1339024 m!1497501))

(declare-fun m!1497537 () Bool)

(assert (=> b!1339024 m!1497537))

(assert (=> b!1339024 m!1497511))

(declare-fun m!1497539 () Bool)

(assert (=> b!1339024 m!1497539))

(assert (=> b!1339024 m!1497511))

(assert (=> b!1339024 m!1497523))

(assert (=> b!1339024 m!1497507))

(declare-fun m!1497541 () Bool)

(assert (=> b!1339024 m!1497541))

(assert (=> b!1339024 m!1497513))

(declare-fun m!1497543 () Bool)

(assert (=> b!1339024 m!1497543))

(assert (=> b!1339024 m!1497527))

(declare-fun m!1497545 () Bool)

(assert (=> b!1339024 m!1497545))

(declare-fun m!1497547 () Bool)

(assert (=> b!1339024 m!1497547))

(declare-fun m!1497549 () Bool)

(assert (=> b!1339023 m!1497549))

(declare-fun m!1497551 () Bool)

(assert (=> b!1339023 m!1497551))

(declare-fun m!1497553 () Bool)

(assert (=> b!1339019 m!1497553))

(declare-fun m!1497555 () Bool)

(assert (=> b!1339019 m!1497555))

(declare-fun m!1497557 () Bool)

(assert (=> d!377734 m!1497557))

(assert (=> d!377734 m!1494029))

(assert (=> d!377734 m!1494029))

(declare-fun m!1497559 () Bool)

(assert (=> d!377734 m!1497559))

(declare-fun m!1497561 () Bool)

(assert (=> d!377734 m!1497561))

(assert (=> d!377734 m!1494029))

(assert (=> d!377734 m!1497485))

(assert (=> d!377734 m!1496541))

(declare-fun m!1497563 () Bool)

(assert (=> d!377734 m!1497563))

(declare-fun m!1497565 () Bool)

(assert (=> d!377734 m!1497565))

(declare-fun m!1497567 () Bool)

(assert (=> d!377734 m!1497567))

(assert (=> d!377734 m!1494029))

(assert (=> d!377734 m!1494887))

(assert (=> d!377734 m!1497565))

(assert (=> d!376740 d!377734))

(declare-fun d!377736 () Bool)

(declare-fun lt!443274 () Int)

(assert (=> d!377736 (>= lt!443274 0)))

(declare-fun e!857635 () Int)

(assert (=> d!377736 (= lt!443274 e!857635)))

(declare-fun c!219465 () Bool)

(assert (=> d!377736 (= c!219465 ((_ is Nil!13651) (t!119282 lt!442413)))))

(assert (=> d!377736 (= (size!11118 (t!119282 lt!442413)) lt!443274)))

(declare-fun b!1339112 () Bool)

(assert (=> b!1339112 (= e!857635 0)))

(declare-fun b!1339114 () Bool)

(assert (=> b!1339114 (= e!857635 (+ 1 (size!11118 (t!119282 (t!119282 lt!442413)))))))

(assert (= (and d!377736 c!219465) b!1339112))

(assert (= (and d!377736 (not c!219465)) b!1339114))

(declare-fun m!1497569 () Bool)

(assert (=> b!1339114 m!1497569))

(assert (=> b!1337190 d!377736))

(declare-fun d!377738 () Bool)

(declare-fun c!219466 () Bool)

(assert (=> d!377738 (= c!219466 ((_ is Nil!13651) (t!119282 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651))))))

(declare-fun e!857637 () (InoxSet C!7652))

(assert (=> d!377738 (= (content!1937 (t!119282 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651))) e!857637)))

(declare-fun b!1339119 () Bool)

(assert (=> b!1339119 (= e!857637 ((as const (Array C!7652 Bool)) false))))

(declare-fun b!1339120 () Bool)

(assert (=> b!1339120 (= e!857637 ((_ map or) (store ((as const (Array C!7652 Bool)) false) (h!19052 (t!119282 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651))) true) (content!1937 (t!119282 (t!119282 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651))))))))

(assert (= (and d!377738 c!219466) b!1339119))

(assert (= (and d!377738 (not c!219466)) b!1339120))

(declare-fun m!1497571 () Bool)

(assert (=> b!1339120 m!1497571))

(declare-fun m!1497573 () Bool)

(assert (=> b!1339120 m!1497573))

(assert (=> b!1337234 d!377738))

(declare-fun d!377740 () Bool)

(declare-fun c!219467 () Bool)

(assert (=> d!377740 (= c!219467 ((_ is Nil!13651) (t!119282 (getSuffix!529 lt!442343 lt!442344))))))

(declare-fun e!857640 () (InoxSet C!7652))

(assert (=> d!377740 (= (content!1937 (t!119282 (getSuffix!529 lt!442343 lt!442344))) e!857640)))

(declare-fun b!1339129 () Bool)

(assert (=> b!1339129 (= e!857640 ((as const (Array C!7652 Bool)) false))))

(declare-fun b!1339130 () Bool)

(assert (=> b!1339130 (= e!857640 ((_ map or) (store ((as const (Array C!7652 Bool)) false) (h!19052 (t!119282 (getSuffix!529 lt!442343 lt!442344))) true) (content!1937 (t!119282 (t!119282 (getSuffix!529 lt!442343 lt!442344))))))))

(assert (= (and d!377740 c!219467) b!1339129))

(assert (= (and d!377740 (not c!219467)) b!1339130))

(declare-fun m!1497575 () Bool)

(assert (=> b!1339130 m!1497575))

(declare-fun m!1497577 () Bool)

(assert (=> b!1339130 m!1497577))

(assert (=> b!1336635 d!377740))

(declare-fun d!377742 () Bool)

(declare-fun lt!443275 () Token!4396)

(assert (=> d!377742 (contains!2492 (list!5190 (_1!7523 lt!442404)) lt!443275)))

(declare-fun e!857644 () Token!4396)

(assert (=> d!377742 (= lt!443275 e!857644)))

(declare-fun c!219468 () Bool)

(assert (=> d!377742 (= c!219468 (= 0 0))))

(declare-fun e!857643 () Bool)

(assert (=> d!377742 e!857643))

(declare-fun res!603483 () Bool)

(assert (=> d!377742 (=> (not res!603483) (not e!857643))))

(assert (=> d!377742 (= res!603483 (<= 0 0))))

(assert (=> d!377742 (= (apply!3206 (list!5190 (_1!7523 lt!442404)) 0) lt!443275)))

(declare-fun b!1339139 () Bool)

(assert (=> b!1339139 (= e!857643 (< 0 (size!11127 (list!5190 (_1!7523 lt!442404)))))))

(declare-fun b!1339140 () Bool)

(assert (=> b!1339140 (= e!857644 (head!2372 (list!5190 (_1!7523 lt!442404))))))

(declare-fun b!1339141 () Bool)

(assert (=> b!1339141 (= e!857644 (apply!3206 (tail!1921 (list!5190 (_1!7523 lt!442404))) (- 0 1)))))

(assert (= (and d!377742 res!603483) b!1339139))

(assert (= (and d!377742 c!219468) b!1339140))

(assert (= (and d!377742 (not c!219468)) b!1339141))

(assert (=> d!377742 m!1494951))

(declare-fun m!1497579 () Bool)

(assert (=> d!377742 m!1497579))

(assert (=> b!1339139 m!1494951))

(assert (=> b!1339139 m!1494953))

(assert (=> b!1339140 m!1494951))

(declare-fun m!1497581 () Bool)

(assert (=> b!1339140 m!1497581))

(assert (=> b!1339141 m!1494951))

(declare-fun m!1497583 () Bool)

(assert (=> b!1339141 m!1497583))

(assert (=> b!1339141 m!1497583))

(declare-fun m!1497585 () Bool)

(assert (=> b!1339141 m!1497585))

(assert (=> d!376852 d!377742))

(assert (=> d!376852 d!377460))

(declare-fun b!1339158 () Bool)

(declare-fun e!857649 () Token!4396)

(declare-fun call!90421 () Token!4396)

(assert (=> b!1339158 (= e!857649 call!90421)))

(declare-fun b!1339159 () Bool)

(declare-fun e!857651 () Int)

(assert (=> b!1339159 (= e!857651 (- 0 (size!11128 (left!11718 (c!218804 (_1!7523 lt!442404))))))))

(declare-fun b!1339161 () Bool)

(declare-fun e!857652 () Token!4396)

(assert (=> b!1339161 (= e!857652 (apply!3208 (xs!7216 (c!218804 (_1!7523 lt!442404))) 0))))

(declare-fun b!1339162 () Bool)

(assert (=> b!1339162 (= e!857651 0)))

(declare-fun b!1339163 () Bool)

(declare-fun e!857650 () Bool)

(assert (=> b!1339163 (= e!857650 (< 0 (size!11128 (c!218804 (_1!7523 lt!442404)))))))

(declare-fun bm!90416 () Bool)

(declare-fun c!219470 () Bool)

(declare-fun c!219469 () Bool)

(assert (=> bm!90416 (= c!219470 c!219469)))

(assert (=> bm!90416 (= call!90421 (apply!3207 (ite c!219469 (left!11718 (c!218804 (_1!7523 lt!442404))) (right!12048 (c!218804 (_1!7523 lt!442404)))) e!857651))))

(declare-fun b!1339164 () Bool)

(assert (=> b!1339164 (= e!857649 call!90421)))

(declare-fun b!1339160 () Bool)

(assert (=> b!1339160 (= e!857652 e!857649)))

(declare-fun lt!443276 () Bool)

(assert (=> b!1339160 (= lt!443276 (appendIndex!148 (list!5194 (left!11718 (c!218804 (_1!7523 lt!442404)))) (list!5194 (right!12048 (c!218804 (_1!7523 lt!442404)))) 0))))

(assert (=> b!1339160 (= c!219469 (< 0 (size!11128 (left!11718 (c!218804 (_1!7523 lt!442404))))))))

(declare-fun d!377744 () Bool)

(declare-fun lt!443277 () Token!4396)

(assert (=> d!377744 (= lt!443277 (apply!3206 (list!5194 (c!218804 (_1!7523 lt!442404))) 0))))

(assert (=> d!377744 (= lt!443277 e!857652)))

(declare-fun c!219471 () Bool)

(assert (=> d!377744 (= c!219471 ((_ is Leaf!6881) (c!218804 (_1!7523 lt!442404))))))

(assert (=> d!377744 e!857650))

(declare-fun res!603484 () Bool)

(assert (=> d!377744 (=> (not res!603484) (not e!857650))))

(assert (=> d!377744 (= res!603484 (<= 0 0))))

(assert (=> d!377744 (= (apply!3207 (c!218804 (_1!7523 lt!442404)) 0) lt!443277)))

(assert (= (and d!377744 res!603484) b!1339163))

(assert (= (and d!377744 c!219471) b!1339161))

(assert (= (and d!377744 (not c!219471)) b!1339160))

(assert (= (and b!1339160 c!219469) b!1339158))

(assert (= (and b!1339160 (not c!219469)) b!1339164))

(assert (= (or b!1339158 b!1339164) bm!90416))

(assert (= (and bm!90416 c!219470) b!1339162))

(assert (= (and bm!90416 (not c!219470)) b!1339159))

(assert (=> d!377744 m!1496603))

(assert (=> d!377744 m!1496603))

(declare-fun m!1497587 () Bool)

(assert (=> d!377744 m!1497587))

(declare-fun m!1497589 () Bool)

(assert (=> b!1339159 m!1497589))

(declare-fun m!1497591 () Bool)

(assert (=> b!1339161 m!1497591))

(assert (=> b!1339163 m!1494955))

(declare-fun m!1497593 () Bool)

(assert (=> b!1339160 m!1497593))

(declare-fun m!1497595 () Bool)

(assert (=> b!1339160 m!1497595))

(assert (=> b!1339160 m!1497593))

(assert (=> b!1339160 m!1497595))

(declare-fun m!1497599 () Bool)

(assert (=> b!1339160 m!1497599))

(assert (=> b!1339160 m!1497589))

(declare-fun m!1497601 () Bool)

(assert (=> bm!90416 m!1497601))

(assert (=> d!376852 d!377744))

(declare-fun d!377752 () Bool)

(declare-fun c!219472 () Bool)

(assert (=> d!377752 (= c!219472 ((_ is Nil!13651) lt!442507))))

(declare-fun e!857653 () (InoxSet C!7652))

(assert (=> d!377752 (= (content!1937 lt!442507) e!857653)))

(declare-fun b!1339165 () Bool)

(assert (=> b!1339165 (= e!857653 ((as const (Array C!7652 Bool)) false))))

(declare-fun b!1339166 () Bool)

(assert (=> b!1339166 (= e!857653 ((_ map or) (store ((as const (Array C!7652 Bool)) false) (h!19052 lt!442507) true) (content!1937 (t!119282 lt!442507))))))

(assert (= (and d!377752 c!219472) b!1339165))

(assert (= (and d!377752 (not c!219472)) b!1339166))

(declare-fun m!1497605 () Bool)

(assert (=> b!1339166 m!1497605))

(declare-fun m!1497607 () Bool)

(assert (=> b!1339166 m!1497607))

(assert (=> d!376560 d!377752))

(assert (=> d!376560 d!377056))

(assert (=> d!376560 d!376864))

(declare-fun bs!332203 () Bool)

(declare-fun d!377758 () Bool)

(assert (= bs!332203 (and d!377758 d!376466)))

(declare-fun lambda!56092 () Int)

(assert (=> bs!332203 (= lambda!56092 lambda!56016)))

(declare-fun bs!332204 () Bool)

(assert (= bs!332204 (and d!377758 d!376530)))

(assert (=> bs!332204 (= lambda!56092 lambda!56033)))

(declare-fun lambda!56093 () Int)

(assert (=> bs!332204 (= lambda!56093 lambda!56034)))

(declare-fun bs!332205 () Bool)

(assert (= bs!332205 (and d!377758 d!376534)))

(assert (=> bs!332205 (= lambda!56093 lambda!56037)))

(assert (=> d!377758 (forall!3336 (map!3011 (t!119283 rules!2550) lambda!56092) lambda!56093)))

(declare-fun lt!443278 () Unit!19781)

(declare-fun e!857654 () Unit!19781)

(assert (=> d!377758 (= lt!443278 e!857654)))

(declare-fun c!219473 () Bool)

(assert (=> d!377758 (= c!219473 ((_ is Nil!13652) (t!119283 rules!2550)))))

(assert (=> d!377758 (rulesValidInductive!748 thiss!19762 (t!119283 rules!2550))))

(assert (=> d!377758 (= (lemma!93 rules!2550 thiss!19762 (t!119283 rules!2550)) lt!443278)))

(declare-fun b!1339167 () Bool)

(declare-fun Unit!19795 () Unit!19781)

(assert (=> b!1339167 (= e!857654 Unit!19795)))

(declare-fun b!1339168 () Bool)

(declare-fun Unit!19796 () Unit!19781)

(assert (=> b!1339168 (= e!857654 Unit!19796)))

(declare-fun lt!443279 () Unit!19781)

(assert (=> b!1339168 (= lt!443279 (lemma!93 rules!2550 thiss!19762 (t!119283 (t!119283 rules!2550))))))

(assert (= (and d!377758 c!219473) b!1339167))

(assert (= (and d!377758 (not c!219473)) b!1339168))

(declare-fun m!1497609 () Bool)

(assert (=> d!377758 m!1497609))

(assert (=> d!377758 m!1497609))

(declare-fun m!1497611 () Bool)

(assert (=> d!377758 m!1497611))

(assert (=> d!377758 m!1496591))

(declare-fun m!1497613 () Bool)

(assert (=> b!1339168 m!1497613))

(assert (=> b!1336581 d!377758))

(declare-fun d!377760 () Bool)

(assert (=> d!377760 (= (charsToInt!0 (text!17646 (value!77092 t2!34))) (choose!625 (text!17646 (value!77092 t2!34))))))

(declare-fun bs!332206 () Bool)

(assert (= bs!332206 d!377760))

(declare-fun m!1497615 () Bool)

(assert (=> bs!332206 m!1497615))

(assert (=> d!376850 d!377760))

(declare-fun d!377762 () Bool)

(assert (=> d!377762 (= (Exists!833 lambda!56040) (choose!8194 lambda!56040))))

(declare-fun bs!332207 () Bool)

(assert (= bs!332207 d!377762))

(declare-fun m!1497617 () Bool)

(assert (=> bs!332207 m!1497617))

(assert (=> d!376552 d!377762))

(declare-fun d!377764 () Bool)

(assert (=> d!377764 (= (nullable!1169 (regOne!7874 lt!442339)) (nullableFct!267 (regOne!7874 lt!442339)))))

(declare-fun bs!332208 () Bool)

(assert (= bs!332208 d!377764))

(declare-fun m!1497619 () Bool)

(assert (=> bs!332208 m!1497619))

(assert (=> b!1337266 d!377764))

(declare-fun bs!332209 () Bool)

(declare-fun d!377766 () Bool)

(assert (= bs!332209 (and d!377766 d!376530)))

(declare-fun lambda!56094 () Int)

(assert (=> bs!332209 (= lambda!56094 lambda!56034)))

(declare-fun bs!332210 () Bool)

(assert (= bs!332210 (and d!377766 d!376534)))

(assert (=> bs!332210 (= lambda!56094 lambda!56037)))

(declare-fun bs!332211 () Bool)

(assert (= bs!332211 (and d!377766 d!377758)))

(assert (=> bs!332211 (= lambda!56094 lambda!56093)))

(declare-fun b!1339169 () Bool)

(declare-fun e!857659 () Bool)

(declare-fun lt!443280 () Regex!3681)

(assert (=> b!1339169 (= e!857659 (isEmptyLang!29 lt!443280))))

(declare-fun b!1339170 () Bool)

(declare-fun e!857657 () Bool)

(assert (=> b!1339170 (= e!857659 e!857657)))

(declare-fun c!219476 () Bool)

(assert (=> b!1339170 (= c!219476 (isEmpty!8147 (tail!1920 (t!119322 (map!3011 rules!2550 lambda!56016)))))))

(declare-fun b!1339171 () Bool)

(assert (=> b!1339171 (= e!857657 (isUnion!29 lt!443280))))

(declare-fun b!1339172 () Bool)

(declare-fun e!857656 () Regex!3681)

(declare-fun e!857660 () Regex!3681)

(assert (=> b!1339172 (= e!857656 e!857660)))

(declare-fun c!219474 () Bool)

(assert (=> b!1339172 (= c!219474 ((_ is Cons!13657) (t!119322 (map!3011 rules!2550 lambda!56016))))))

(declare-fun b!1339173 () Bool)

(assert (=> b!1339173 (= e!857660 (Union!3681 (h!19058 (t!119322 (map!3011 rules!2550 lambda!56016))) (generalisedUnion!101 (t!119322 (t!119322 (map!3011 rules!2550 lambda!56016))))))))

(declare-fun b!1339174 () Bool)

(assert (=> b!1339174 (= e!857657 (= lt!443280 (head!2371 (t!119322 (map!3011 rules!2550 lambda!56016)))))))

(declare-fun b!1339175 () Bool)

(assert (=> b!1339175 (= e!857660 EmptyLang!3681)))

(declare-fun b!1339176 () Bool)

(declare-fun e!857658 () Bool)

(assert (=> b!1339176 (= e!857658 (isEmpty!8147 (t!119322 (t!119322 (map!3011 rules!2550 lambda!56016)))))))

(declare-fun e!857655 () Bool)

(assert (=> d!377766 e!857655))

(declare-fun res!603486 () Bool)

(assert (=> d!377766 (=> (not res!603486) (not e!857655))))

(assert (=> d!377766 (= res!603486 (validRegex!1585 lt!443280))))

(assert (=> d!377766 (= lt!443280 e!857656)))

(declare-fun c!219475 () Bool)

(assert (=> d!377766 (= c!219475 e!857658)))

(declare-fun res!603485 () Bool)

(assert (=> d!377766 (=> (not res!603485) (not e!857658))))

(assert (=> d!377766 (= res!603485 ((_ is Cons!13657) (t!119322 (map!3011 rules!2550 lambda!56016))))))

(assert (=> d!377766 (forall!3336 (t!119322 (map!3011 rules!2550 lambda!56016)) lambda!56094)))

(assert (=> d!377766 (= (generalisedUnion!101 (t!119322 (map!3011 rules!2550 lambda!56016))) lt!443280)))

(declare-fun b!1339177 () Bool)

(assert (=> b!1339177 (= e!857655 e!857659)))

(declare-fun c!219477 () Bool)

(assert (=> b!1339177 (= c!219477 (isEmpty!8147 (t!119322 (map!3011 rules!2550 lambda!56016))))))

(declare-fun b!1339178 () Bool)

(assert (=> b!1339178 (= e!857656 (h!19058 (t!119322 (map!3011 rules!2550 lambda!56016))))))

(assert (= (and d!377766 res!603485) b!1339176))

(assert (= (and d!377766 c!219475) b!1339178))

(assert (= (and d!377766 (not c!219475)) b!1339172))

(assert (= (and b!1339172 c!219474) b!1339173))

(assert (= (and b!1339172 (not c!219474)) b!1339175))

(assert (= (and d!377766 res!603486) b!1339177))

(assert (= (and b!1339177 c!219477) b!1339169))

(assert (= (and b!1339177 (not c!219477)) b!1339170))

(assert (= (and b!1339170 c!219476) b!1339174))

(assert (= (and b!1339170 (not c!219476)) b!1339171))

(assert (=> b!1339177 m!1494331))

(declare-fun m!1497621 () Bool)

(assert (=> b!1339171 m!1497621))

(declare-fun m!1497623 () Bool)

(assert (=> b!1339170 m!1497623))

(assert (=> b!1339170 m!1497623))

(declare-fun m!1497625 () Bool)

(assert (=> b!1339170 m!1497625))

(declare-fun m!1497627 () Bool)

(assert (=> b!1339174 m!1497627))

(declare-fun m!1497629 () Bool)

(assert (=> b!1339169 m!1497629))

(declare-fun m!1497631 () Bool)

(assert (=> d!377766 m!1497631))

(declare-fun m!1497633 () Bool)

(assert (=> d!377766 m!1497633))

(declare-fun m!1497635 () Bool)

(assert (=> b!1339173 m!1497635))

(declare-fun m!1497637 () Bool)

(assert (=> b!1339176 m!1497637))

(assert (=> b!1336606 d!377766))

(declare-fun d!377768 () Bool)

(assert (=> d!377768 (= (list!5187 lt!442637) (list!5191 (c!218765 lt!442637)))))

(declare-fun bs!332212 () Bool)

(assert (= bs!332212 d!377768))

(declare-fun m!1497639 () Bool)

(assert (=> bs!332212 m!1497639))

(assert (=> d!376798 d!377768))

(declare-fun d!377770 () Bool)

(declare-fun c!219478 () Bool)

(assert (=> d!377770 (= c!219478 ((_ is Cons!13656) (list!5190 (singletonSeq!969 t2!34))))))

(declare-fun e!857661 () List!13717)

(assert (=> d!377770 (= (printList!582 thiss!19762 (list!5190 (singletonSeq!969 t2!34))) e!857661)))

(declare-fun b!1339179 () Bool)

(assert (=> b!1339179 (= e!857661 (++!3488 (list!5187 (charsOf!1339 (h!19057 (list!5190 (singletonSeq!969 t2!34))))) (printList!582 thiss!19762 (t!119321 (list!5190 (singletonSeq!969 t2!34))))))))

(declare-fun b!1339180 () Bool)

(assert (=> b!1339180 (= e!857661 Nil!13651)))

(assert (= (and d!377770 c!219478) b!1339179))

(assert (= (and d!377770 (not c!219478)) b!1339180))

(declare-fun m!1497641 () Bool)

(assert (=> b!1339179 m!1497641))

(assert (=> b!1339179 m!1497641))

(declare-fun m!1497643 () Bool)

(assert (=> b!1339179 m!1497643))

(declare-fun m!1497645 () Bool)

(assert (=> b!1339179 m!1497645))

(assert (=> b!1339179 m!1497643))

(assert (=> b!1339179 m!1497645))

(declare-fun m!1497647 () Bool)

(assert (=> b!1339179 m!1497647))

(assert (=> d!376798 d!377770))

(assert (=> d!376798 d!376804))

(declare-fun d!377772 () Bool)

(declare-fun lt!443284 () BalanceConc!8938)

(assert (=> d!377772 (= (list!5187 lt!443284) (printListTailRec!236 thiss!19762 (dropList!379 (singletonSeq!969 t2!34) 0) (list!5187 (BalanceConc!8939 Empty!4499))))))

(declare-fun e!857663 () BalanceConc!8938)

(assert (=> d!377772 (= lt!443284 e!857663)))

(declare-fun c!219479 () Bool)

(assert (=> d!377772 (= c!219479 (>= 0 (size!11120 (singletonSeq!969 t2!34))))))

(declare-fun e!857662 () Bool)

(assert (=> d!377772 e!857662))

(declare-fun res!603487 () Bool)

(assert (=> d!377772 (=> (not res!603487) (not e!857662))))

(assert (=> d!377772 (= res!603487 (>= 0 0))))

(assert (=> d!377772 (= (printTailRec!564 thiss!19762 (singletonSeq!969 t2!34) 0 (BalanceConc!8939 Empty!4499)) lt!443284)))

(declare-fun b!1339181 () Bool)

(assert (=> b!1339181 (= e!857662 (<= 0 (size!11120 (singletonSeq!969 t2!34))))))

(declare-fun b!1339182 () Bool)

(assert (=> b!1339182 (= e!857663 (BalanceConc!8939 Empty!4499))))

(declare-fun b!1339183 () Bool)

(assert (=> b!1339183 (= e!857663 (printTailRec!564 thiss!19762 (singletonSeq!969 t2!34) (+ 0 1) (++!3490 (BalanceConc!8939 Empty!4499) (charsOf!1339 (apply!3199 (singletonSeq!969 t2!34) 0)))))))

(declare-fun lt!443285 () List!13722)

(assert (=> b!1339183 (= lt!443285 (list!5190 (singletonSeq!969 t2!34)))))

(declare-fun lt!443286 () Unit!19781)

(assert (=> b!1339183 (= lt!443286 (lemmaDropApply!427 lt!443285 0))))

(assert (=> b!1339183 (= (head!2372 (drop!667 lt!443285 0)) (apply!3206 lt!443285 0))))

(declare-fun lt!443281 () Unit!19781)

(assert (=> b!1339183 (= lt!443281 lt!443286)))

(declare-fun lt!443282 () List!13722)

(assert (=> b!1339183 (= lt!443282 (list!5190 (singletonSeq!969 t2!34)))))

(declare-fun lt!443283 () Unit!19781)

(assert (=> b!1339183 (= lt!443283 (lemmaDropTail!407 lt!443282 0))))

(assert (=> b!1339183 (= (tail!1921 (drop!667 lt!443282 0)) (drop!667 lt!443282 (+ 0 1)))))

(declare-fun lt!443287 () Unit!19781)

(assert (=> b!1339183 (= lt!443287 lt!443283)))

(assert (= (and d!377772 res!603487) b!1339181))

(assert (= (and d!377772 c!219479) b!1339182))

(assert (= (and d!377772 (not c!219479)) b!1339183))

(declare-fun m!1497649 () Bool)

(assert (=> d!377772 m!1497649))

(declare-fun m!1497651 () Bool)

(assert (=> d!377772 m!1497651))

(assert (=> d!377772 m!1496541))

(declare-fun m!1497653 () Bool)

(assert (=> d!377772 m!1497653))

(assert (=> d!377772 m!1494049))

(assert (=> d!377772 m!1497651))

(assert (=> d!377772 m!1494049))

(declare-fun m!1497655 () Bool)

(assert (=> d!377772 m!1497655))

(assert (=> d!377772 m!1496541))

(assert (=> b!1339181 m!1494049))

(assert (=> b!1339181 m!1497655))

(declare-fun m!1497657 () Bool)

(assert (=> b!1339183 m!1497657))

(declare-fun m!1497659 () Bool)

(assert (=> b!1339183 m!1497659))

(declare-fun m!1497661 () Bool)

(assert (=> b!1339183 m!1497661))

(declare-fun m!1497663 () Bool)

(assert (=> b!1339183 m!1497663))

(assert (=> b!1339183 m!1494049))

(assert (=> b!1339183 m!1494053))

(declare-fun m!1497665 () Bool)

(assert (=> b!1339183 m!1497665))

(assert (=> b!1339183 m!1497665))

(declare-fun m!1497667 () Bool)

(assert (=> b!1339183 m!1497667))

(declare-fun m!1497669 () Bool)

(assert (=> b!1339183 m!1497669))

(declare-fun m!1497671 () Bool)

(assert (=> b!1339183 m!1497671))

(assert (=> b!1339183 m!1497659))

(declare-fun m!1497673 () Bool)

(assert (=> b!1339183 m!1497673))

(declare-fun m!1497675 () Bool)

(assert (=> b!1339183 m!1497675))

(assert (=> b!1339183 m!1494049))

(assert (=> b!1339183 m!1497671))

(assert (=> b!1339183 m!1497669))

(declare-fun m!1497677 () Bool)

(assert (=> b!1339183 m!1497677))

(assert (=> b!1339183 m!1494049))

(assert (=> b!1339183 m!1497661))

(declare-fun m!1497679 () Bool)

(assert (=> b!1339183 m!1497679))

(assert (=> d!376798 d!377772))

(assert (=> b!1336767 d!376992))

(declare-fun b!1339184 () Bool)

(declare-fun e!857669 () Bool)

(declare-fun e!857665 () Bool)

(assert (=> b!1339184 (= e!857669 e!857665)))

(declare-fun res!603490 () Bool)

(assert (=> b!1339184 (= res!603490 (not (nullable!1169 (reg!4010 lt!442659))))))

(assert (=> b!1339184 (=> (not res!603490) (not e!857665))))

(declare-fun b!1339185 () Bool)

(declare-fun res!603492 () Bool)

(declare-fun e!857667 () Bool)

(assert (=> b!1339185 (=> res!603492 e!857667)))

(assert (=> b!1339185 (= res!603492 (not ((_ is Concat!6139) lt!442659)))))

(declare-fun e!857666 () Bool)

(assert (=> b!1339185 (= e!857666 e!857667)))

(declare-fun b!1339186 () Bool)

(declare-fun e!857668 () Bool)

(assert (=> b!1339186 (= e!857667 e!857668)))

(declare-fun res!603488 () Bool)

(assert (=> b!1339186 (=> (not res!603488) (not e!857668))))

(declare-fun call!90424 () Bool)

(assert (=> b!1339186 (= res!603488 call!90424)))

(declare-fun bm!90417 () Bool)

(declare-fun c!219480 () Bool)

(declare-fun c!219481 () Bool)

(declare-fun call!90423 () Bool)

(assert (=> bm!90417 (= call!90423 (validRegex!1585 (ite c!219481 (reg!4010 lt!442659) (ite c!219480 (regOne!7875 lt!442659) (regOne!7874 lt!442659)))))))

(declare-fun d!377774 () Bool)

(declare-fun res!603489 () Bool)

(declare-fun e!857664 () Bool)

(assert (=> d!377774 (=> res!603489 e!857664)))

(assert (=> d!377774 (= res!603489 ((_ is ElementMatch!3681) lt!442659))))

(assert (=> d!377774 (= (validRegex!1585 lt!442659) e!857664)))

(declare-fun bm!90418 () Bool)

(assert (=> bm!90418 (= call!90424 call!90423)))

(declare-fun bm!90419 () Bool)

(declare-fun call!90422 () Bool)

(assert (=> bm!90419 (= call!90422 (validRegex!1585 (ite c!219480 (regTwo!7875 lt!442659) (regTwo!7874 lt!442659))))))

(declare-fun b!1339187 () Bool)

(assert (=> b!1339187 (= e!857665 call!90423)))

(declare-fun b!1339188 () Bool)

(assert (=> b!1339188 (= e!857669 e!857666)))

(assert (=> b!1339188 (= c!219480 ((_ is Union!3681) lt!442659))))

(declare-fun b!1339189 () Bool)

(declare-fun res!603491 () Bool)

(declare-fun e!857670 () Bool)

(assert (=> b!1339189 (=> (not res!603491) (not e!857670))))

(assert (=> b!1339189 (= res!603491 call!90424)))

(assert (=> b!1339189 (= e!857666 e!857670)))

(declare-fun b!1339190 () Bool)

(assert (=> b!1339190 (= e!857664 e!857669)))

(assert (=> b!1339190 (= c!219481 ((_ is Star!3681) lt!442659))))

(declare-fun b!1339191 () Bool)

(assert (=> b!1339191 (= e!857668 call!90422)))

(declare-fun b!1339192 () Bool)

(assert (=> b!1339192 (= e!857670 call!90422)))

(assert (= (and d!377774 (not res!603489)) b!1339190))

(assert (= (and b!1339190 c!219481) b!1339184))

(assert (= (and b!1339190 (not c!219481)) b!1339188))

(assert (= (and b!1339184 res!603490) b!1339187))

(assert (= (and b!1339188 c!219480) b!1339189))

(assert (= (and b!1339188 (not c!219480)) b!1339185))

(assert (= (and b!1339189 res!603491) b!1339192))

(assert (= (and b!1339185 (not res!603492)) b!1339186))

(assert (= (and b!1339186 res!603488) b!1339191))

(assert (= (or b!1339189 b!1339186) bm!90418))

(assert (= (or b!1339192 b!1339191) bm!90419))

(assert (= (or b!1339187 bm!90418) bm!90417))

(declare-fun m!1497681 () Bool)

(assert (=> b!1339184 m!1497681))

(declare-fun m!1497683 () Bool)

(assert (=> bm!90417 m!1497683))

(declare-fun m!1497685 () Bool)

(assert (=> bm!90419 m!1497685))

(assert (=> d!376870 d!377774))

(assert (=> d!376870 d!376554))

(declare-fun d!377776 () Bool)

(declare-fun lt!443288 () Int)

(assert (=> d!377776 (>= lt!443288 0)))

(declare-fun e!857671 () Int)

(assert (=> d!377776 (= lt!443288 e!857671)))

(declare-fun c!219482 () Bool)

(assert (=> d!377776 (= c!219482 ((_ is Nil!13651) (t!119282 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651))))))

(assert (=> d!377776 (= (size!11118 (t!119282 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651))) lt!443288)))

(declare-fun b!1339193 () Bool)

(assert (=> b!1339193 (= e!857671 0)))

(declare-fun b!1339194 () Bool)

(assert (=> b!1339194 (= e!857671 (+ 1 (size!11118 (t!119282 (t!119282 (Cons!13651 (apply!3195 lt!442341 0) Nil!13651))))))))

(assert (= (and d!377776 c!219482) b!1339193))

(assert (= (and d!377776 (not c!219482)) b!1339194))

(declare-fun m!1497687 () Bool)

(assert (=> b!1339194 m!1497687))

(assert (=> b!1337194 d!377776))

(declare-fun bs!332213 () Bool)

(declare-fun d!377778 () Bool)

(assert (= bs!332213 (and d!377778 d!376710)))

(declare-fun lambda!56095 () Int)

(assert (=> bs!332213 (= (= (toValue!3602 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toValue!3602 (transformation!2367 (rule!4112 t2!34)))) (= lambda!56095 lambda!56056))))

(declare-fun bs!332214 () Bool)

(assert (= bs!332214 (and d!377778 d!376818)))

(assert (=> bs!332214 (= (= (toValue!3602 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toValue!3602 (transformation!2367 (h!19053 rules!2550)))) (= lambda!56095 lambda!56065))))

(declare-fun bs!332215 () Bool)

(assert (= bs!332215 (and d!377778 d!376828)))

(assert (=> bs!332215 (= (= (toValue!3602 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toValue!3602 (transformation!2367 (rule!4112 t1!34)))) (= lambda!56095 lambda!56066))))

(assert (=> d!377778 true))

(assert (=> d!377778 (< (dynLambda!6017 order!8191 (toValue!3602 (transformation!2367 (h!19053 (t!119283 rules!2550))))) (dynLambda!6020 order!8201 lambda!56095))))

(assert (=> d!377778 (= (equivClasses!853 (toChars!3461 (transformation!2367 (h!19053 (t!119283 rules!2550)))) (toValue!3602 (transformation!2367 (h!19053 (t!119283 rules!2550))))) (Forall2!425 lambda!56095))))

(declare-fun bs!332216 () Bool)

(assert (= bs!332216 d!377778))

(declare-fun m!1497689 () Bool)

(assert (=> bs!332216 m!1497689))

(assert (=> b!1336675 d!377778))

(assert (=> b!1336407 d!376866))

(declare-fun d!377780 () Bool)

(assert (=> d!377780 (= (isEmptyLang!29 lt!442465) ((_ is EmptyLang!3681) lt!442465))))

(assert (=> b!1336602 d!377780))

(assert (=> d!376832 d!377452))

(declare-fun d!377782 () Bool)

(declare-fun res!603497 () Bool)

(declare-fun e!857676 () Bool)

(assert (=> d!377782 (=> res!603497 e!857676)))

(assert (=> d!377782 (= res!603497 ((_ is Nil!13652) rules!2550))))

(assert (=> d!377782 (= (forall!3338 rules!2550 lambda!56069) e!857676)))

(declare-fun b!1339199 () Bool)

(declare-fun e!857677 () Bool)

(assert (=> b!1339199 (= e!857676 e!857677)))

(declare-fun res!603498 () Bool)

(assert (=> b!1339199 (=> (not res!603498) (not e!857677))))

(declare-fun dynLambda!6026 (Int Rule!4534) Bool)

(assert (=> b!1339199 (= res!603498 (dynLambda!6026 lambda!56069 (h!19053 rules!2550)))))

(declare-fun b!1339200 () Bool)

(assert (=> b!1339200 (= e!857677 (forall!3338 (t!119283 rules!2550) lambda!56069))))

(assert (= (and d!377782 (not res!603497)) b!1339199))

(assert (= (and b!1339199 res!603498) b!1339200))

(declare-fun b_lambda!39521 () Bool)

(assert (=> (not b_lambda!39521) (not b!1339199)))

(declare-fun m!1497691 () Bool)

(assert (=> b!1339199 m!1497691))

(declare-fun m!1497693 () Bool)

(assert (=> b!1339200 m!1497693))

(assert (=> d!376832 d!377782))

(assert (=> bm!90179 d!377594))

(declare-fun d!377784 () Bool)

(declare-fun lt!443289 () Int)

(assert (=> d!377784 (>= lt!443289 0)))

(declare-fun e!857678 () Int)

(assert (=> d!377784 (= lt!443289 e!857678)))

(declare-fun c!219483 () Bool)

(assert (=> d!377784 (= c!219483 ((_ is Nil!13651) lt!442633))))

(assert (=> d!377784 (= (size!11118 lt!442633) lt!443289)))

(declare-fun b!1339201 () Bool)

(assert (=> b!1339201 (= e!857678 0)))

(declare-fun b!1339202 () Bool)

(assert (=> b!1339202 (= e!857678 (+ 1 (size!11118 (t!119282 lt!442633))))))

(assert (= (and d!377784 c!219483) b!1339201))

(assert (= (and d!377784 (not c!219483)) b!1339202))

(declare-fun m!1497695 () Bool)

(assert (=> b!1339202 m!1497695))

(assert (=> b!1337153 d!377784))

(assert (=> b!1337153 d!376730))

(declare-fun d!377786 () Bool)

(declare-fun lt!443290 () Int)

(assert (=> d!377786 (>= lt!443290 0)))

(declare-fun e!857679 () Int)

(assert (=> d!377786 (= lt!443290 e!857679)))

(declare-fun c!219484 () Bool)

(assert (=> d!377786 (= c!219484 ((_ is Nil!13651) lt!442368))))

(assert (=> d!377786 (= (size!11118 lt!442368) lt!443290)))

(declare-fun b!1339203 () Bool)

(assert (=> b!1339203 (= e!857679 0)))

(declare-fun b!1339204 () Bool)

(assert (=> b!1339204 (= e!857679 (+ 1 (size!11118 (t!119282 lt!442368))))))

(assert (= (and d!377786 c!219484) b!1339203))

(assert (= (and d!377786 (not c!219484)) b!1339204))

(declare-fun m!1497697 () Bool)

(assert (=> b!1339204 m!1497697))

(assert (=> b!1337153 d!377786))

(declare-fun b!1339205 () Bool)

(declare-fun e!857685 () Bool)

(declare-fun e!857681 () Bool)

(assert (=> b!1339205 (= e!857685 e!857681)))

(declare-fun res!603501 () Bool)

(assert (=> b!1339205 (= res!603501 (not (nullable!1169 (reg!4010 (ite c!218872 (regTwo!7875 lt!442339) (regTwo!7874 lt!442339))))))))

(assert (=> b!1339205 (=> (not res!603501) (not e!857681))))

(declare-fun b!1339206 () Bool)

(declare-fun res!603503 () Bool)

(declare-fun e!857683 () Bool)

(assert (=> b!1339206 (=> res!603503 e!857683)))

(assert (=> b!1339206 (= res!603503 (not ((_ is Concat!6139) (ite c!218872 (regTwo!7875 lt!442339) (regTwo!7874 lt!442339)))))))

(declare-fun e!857682 () Bool)

(assert (=> b!1339206 (= e!857682 e!857683)))

(declare-fun b!1339207 () Bool)

(declare-fun e!857684 () Bool)

(assert (=> b!1339207 (= e!857683 e!857684)))

(declare-fun res!603499 () Bool)

(assert (=> b!1339207 (=> (not res!603499) (not e!857684))))

(declare-fun call!90427 () Bool)

(assert (=> b!1339207 (= res!603499 call!90427)))

(declare-fun bm!90420 () Bool)

(declare-fun c!219485 () Bool)

(declare-fun call!90426 () Bool)

(declare-fun c!219486 () Bool)

(assert (=> bm!90420 (= call!90426 (validRegex!1585 (ite c!219486 (reg!4010 (ite c!218872 (regTwo!7875 lt!442339) (regTwo!7874 lt!442339))) (ite c!219485 (regOne!7875 (ite c!218872 (regTwo!7875 lt!442339) (regTwo!7874 lt!442339))) (regOne!7874 (ite c!218872 (regTwo!7875 lt!442339) (regTwo!7874 lt!442339)))))))))

(declare-fun d!377788 () Bool)

(declare-fun res!603500 () Bool)

(declare-fun e!857680 () Bool)

(assert (=> d!377788 (=> res!603500 e!857680)))

(assert (=> d!377788 (= res!603500 ((_ is ElementMatch!3681) (ite c!218872 (regTwo!7875 lt!442339) (regTwo!7874 lt!442339))))))

(assert (=> d!377788 (= (validRegex!1585 (ite c!218872 (regTwo!7875 lt!442339) (regTwo!7874 lt!442339))) e!857680)))

(declare-fun bm!90421 () Bool)

(assert (=> bm!90421 (= call!90427 call!90426)))

(declare-fun bm!90422 () Bool)

(declare-fun call!90425 () Bool)

(assert (=> bm!90422 (= call!90425 (validRegex!1585 (ite c!219485 (regTwo!7875 (ite c!218872 (regTwo!7875 lt!442339) (regTwo!7874 lt!442339))) (regTwo!7874 (ite c!218872 (regTwo!7875 lt!442339) (regTwo!7874 lt!442339))))))))

(declare-fun b!1339208 () Bool)

(assert (=> b!1339208 (= e!857681 call!90426)))

(declare-fun b!1339209 () Bool)

(assert (=> b!1339209 (= e!857685 e!857682)))

(assert (=> b!1339209 (= c!219485 ((_ is Union!3681) (ite c!218872 (regTwo!7875 lt!442339) (regTwo!7874 lt!442339))))))

(declare-fun b!1339210 () Bool)

(declare-fun res!603502 () Bool)

(declare-fun e!857686 () Bool)

(assert (=> b!1339210 (=> (not res!603502) (not e!857686))))

(assert (=> b!1339210 (= res!603502 call!90427)))

(assert (=> b!1339210 (= e!857682 e!857686)))

(declare-fun b!1339211 () Bool)

(assert (=> b!1339211 (= e!857680 e!857685)))

(assert (=> b!1339211 (= c!219486 ((_ is Star!3681) (ite c!218872 (regTwo!7875 lt!442339) (regTwo!7874 lt!442339))))))

(declare-fun b!1339212 () Bool)

(assert (=> b!1339212 (= e!857684 call!90425)))

(declare-fun b!1339213 () Bool)

(assert (=> b!1339213 (= e!857686 call!90425)))

(assert (= (and d!377788 (not res!603500)) b!1339211))

(assert (= (and b!1339211 c!219486) b!1339205))

(assert (= (and b!1339211 (not c!219486)) b!1339209))

(assert (= (and b!1339205 res!603501) b!1339208))

(assert (= (and b!1339209 c!219485) b!1339210))

(assert (= (and b!1339209 (not c!219485)) b!1339206))

(assert (= (and b!1339210 res!603502) b!1339213))

(assert (= (and b!1339206 (not res!603503)) b!1339207))

(assert (= (and b!1339207 res!603499) b!1339212))

(assert (= (or b!1339210 b!1339207) bm!90421))

(assert (= (or b!1339213 b!1339212) bm!90422))

(assert (= (or b!1339208 bm!90421) bm!90420))

(declare-fun m!1497699 () Bool)

(assert (=> b!1339205 m!1497699))

(declare-fun m!1497701 () Bool)

(assert (=> bm!90420 m!1497701))

(declare-fun m!1497703 () Bool)

(assert (=> bm!90422 m!1497703))

(assert (=> bm!90173 d!377788))

(declare-fun d!377790 () Bool)

(declare-fun lt!443291 () C!7652)

(assert (=> d!377790 (contains!2489 (tail!1918 (list!5187 lt!442341)) lt!443291)))

(declare-fun e!857688 () C!7652)

(assert (=> d!377790 (= lt!443291 e!857688)))

(declare-fun c!219487 () Bool)

(assert (=> d!377790 (= c!219487 (= (- 0 1) 0))))

(declare-fun e!857687 () Bool)

(assert (=> d!377790 e!857687))

(declare-fun res!603504 () Bool)

(assert (=> d!377790 (=> (not res!603504) (not e!857687))))

(assert (=> d!377790 (= res!603504 (<= 0 (- 0 1)))))

(assert (=> d!377790 (= (apply!3200 (tail!1918 (list!5187 lt!442341)) (- 0 1)) lt!443291)))

(declare-fun b!1339214 () Bool)

(assert (=> b!1339214 (= e!857687 (< (- 0 1) (size!11118 (tail!1918 (list!5187 lt!442341)))))))

(declare-fun b!1339215 () Bool)

(assert (=> b!1339215 (= e!857688 (head!2369 (tail!1918 (list!5187 lt!442341))))))

(declare-fun b!1339216 () Bool)

(assert (=> b!1339216 (= e!857688 (apply!3200 (tail!1918 (tail!1918 (list!5187 lt!442341))) (- (- 0 1) 1)))))

(assert (= (and d!377790 res!603504) b!1339214))

(assert (= (and d!377790 c!219487) b!1339215))

(assert (= (and d!377790 (not c!219487)) b!1339216))

(assert (=> d!377790 m!1494479))

(declare-fun m!1497705 () Bool)

(assert (=> d!377790 m!1497705))

(assert (=> b!1339214 m!1494479))

(declare-fun m!1497707 () Bool)

(assert (=> b!1339214 m!1497707))

(assert (=> b!1339215 m!1494479))

(declare-fun m!1497709 () Bool)

(assert (=> b!1339215 m!1497709))

(assert (=> b!1339216 m!1494479))

(declare-fun m!1497711 () Bool)

(assert (=> b!1339216 m!1497711))

(assert (=> b!1339216 m!1497711))

(declare-fun m!1497713 () Bool)

(assert (=> b!1339216 m!1497713))

(assert (=> b!1336797 d!377790))

(declare-fun d!377792 () Bool)

(assert (=> d!377792 (= (tail!1918 (list!5187 lt!442341)) (t!119282 (list!5187 lt!442341)))))

(assert (=> b!1336797 d!377792))

(declare-fun b!1339217 () Bool)

(declare-fun e!857694 () Bool)

(declare-fun e!857690 () Bool)

(assert (=> b!1339217 (= e!857694 e!857690)))

(declare-fun res!603507 () Bool)

(assert (=> b!1339217 (= res!603507 (not (nullable!1169 (reg!4010 lt!442465))))))

(assert (=> b!1339217 (=> (not res!603507) (not e!857690))))

(declare-fun b!1339218 () Bool)

(declare-fun res!603509 () Bool)

(declare-fun e!857692 () Bool)

(assert (=> b!1339218 (=> res!603509 e!857692)))

(assert (=> b!1339218 (= res!603509 (not ((_ is Concat!6139) lt!442465)))))

(declare-fun e!857691 () Bool)

(assert (=> b!1339218 (= e!857691 e!857692)))

(declare-fun b!1339219 () Bool)

(declare-fun e!857693 () Bool)

(assert (=> b!1339219 (= e!857692 e!857693)))

(declare-fun res!603505 () Bool)

(assert (=> b!1339219 (=> (not res!603505) (not e!857693))))

(declare-fun call!90430 () Bool)

(assert (=> b!1339219 (= res!603505 call!90430)))

(declare-fun c!219488 () Bool)

(declare-fun c!219489 () Bool)

(declare-fun call!90429 () Bool)

(declare-fun bm!90423 () Bool)

(assert (=> bm!90423 (= call!90429 (validRegex!1585 (ite c!219489 (reg!4010 lt!442465) (ite c!219488 (regOne!7875 lt!442465) (regOne!7874 lt!442465)))))))

(declare-fun d!377794 () Bool)

(declare-fun res!603506 () Bool)

(declare-fun e!857689 () Bool)

(assert (=> d!377794 (=> res!603506 e!857689)))

(assert (=> d!377794 (= res!603506 ((_ is ElementMatch!3681) lt!442465))))

(assert (=> d!377794 (= (validRegex!1585 lt!442465) e!857689)))

(declare-fun bm!90424 () Bool)

(assert (=> bm!90424 (= call!90430 call!90429)))

(declare-fun bm!90425 () Bool)

(declare-fun call!90428 () Bool)

(assert (=> bm!90425 (= call!90428 (validRegex!1585 (ite c!219488 (regTwo!7875 lt!442465) (regTwo!7874 lt!442465))))))

(declare-fun b!1339220 () Bool)

(assert (=> b!1339220 (= e!857690 call!90429)))

(declare-fun b!1339221 () Bool)

(assert (=> b!1339221 (= e!857694 e!857691)))

(assert (=> b!1339221 (= c!219488 ((_ is Union!3681) lt!442465))))

(declare-fun b!1339222 () Bool)

(declare-fun res!603508 () Bool)

(declare-fun e!857695 () Bool)

(assert (=> b!1339222 (=> (not res!603508) (not e!857695))))

(assert (=> b!1339222 (= res!603508 call!90430)))

(assert (=> b!1339222 (= e!857691 e!857695)))

(declare-fun b!1339223 () Bool)

(assert (=> b!1339223 (= e!857689 e!857694)))

(assert (=> b!1339223 (= c!219489 ((_ is Star!3681) lt!442465))))

(declare-fun b!1339224 () Bool)

(assert (=> b!1339224 (= e!857693 call!90428)))

(declare-fun b!1339225 () Bool)

(assert (=> b!1339225 (= e!857695 call!90428)))

(assert (= (and d!377794 (not res!603506)) b!1339223))

(assert (= (and b!1339223 c!219489) b!1339217))

(assert (= (and b!1339223 (not c!219489)) b!1339221))

(assert (= (and b!1339217 res!603507) b!1339220))

(assert (= (and b!1339221 c!219488) b!1339222))

(assert (= (and b!1339221 (not c!219488)) b!1339218))

(assert (= (and b!1339222 res!603508) b!1339225))

(assert (= (and b!1339218 (not res!603509)) b!1339219))

(assert (= (and b!1339219 res!603505) b!1339224))

(assert (= (or b!1339222 b!1339219) bm!90424))

(assert (= (or b!1339225 b!1339224) bm!90425))

(assert (= (or b!1339220 bm!90424) bm!90423))

(declare-fun m!1497715 () Bool)

(assert (=> b!1339217 m!1497715))

(declare-fun m!1497717 () Bool)

(assert (=> bm!90423 m!1497717))

(declare-fun m!1497719 () Bool)

(assert (=> bm!90425 m!1497719))

(assert (=> d!376534 d!377794))

(declare-fun d!377796 () Bool)

(declare-fun res!603510 () Bool)

(declare-fun e!857696 () Bool)

(assert (=> d!377796 (=> res!603510 e!857696)))

(assert (=> d!377796 (= res!603510 ((_ is Nil!13657) (map!3011 rules!2550 lambda!56016)))))

(assert (=> d!377796 (= (forall!3336 (map!3011 rules!2550 lambda!56016) lambda!56037) e!857696)))

(declare-fun b!1339226 () Bool)

(declare-fun e!857697 () Bool)

(assert (=> b!1339226 (= e!857696 e!857697)))

(declare-fun res!603511 () Bool)

(assert (=> b!1339226 (=> (not res!603511) (not e!857697))))

(assert (=> b!1339226 (= res!603511 (dynLambda!6024 lambda!56037 (h!19058 (map!3011 rules!2550 lambda!56016))))))

(declare-fun b!1339227 () Bool)

(assert (=> b!1339227 (= e!857697 (forall!3336 (t!119322 (map!3011 rules!2550 lambda!56016)) lambda!56037))))

(assert (= (and d!377796 (not res!603510)) b!1339226))

(assert (= (and b!1339226 res!603511) b!1339227))

(declare-fun b_lambda!39523 () Bool)

(assert (=> (not b_lambda!39523) (not b!1339226)))

(declare-fun m!1497721 () Bool)

(assert (=> b!1339226 m!1497721))

(declare-fun m!1497723 () Bool)

(assert (=> b!1339227 m!1497723))

(assert (=> d!376534 d!377796))

(declare-fun e!857699 () Int)

(declare-fun b!1339228 () Bool)

(assert (=> b!1339228 (= e!857699 (- e!856401 (size!11119 (left!11716 (ite c!218920 (left!11716 (c!218765 lt!442341)) (right!12046 (c!218765 lt!442341)))))))))

(declare-fun b!1339229 () Bool)

(declare-fun e!857700 () C!7652)

(declare-fun e!857698 () C!7652)

(assert (=> b!1339229 (= e!857700 e!857698)))

(declare-fun lt!443292 () Bool)

(assert (=> b!1339229 (= lt!443292 (appendIndex!147 (list!5191 (left!11716 (ite c!218920 (left!11716 (c!218765 lt!442341)) (right!12046 (c!218765 lt!442341))))) (list!5191 (right!12046 (ite c!218920 (left!11716 (c!218765 lt!442341)) (right!12046 (c!218765 lt!442341))))) e!856401))))

(declare-fun c!219492 () Bool)

(assert (=> b!1339229 (= c!219492 (< e!856401 (size!11119 (left!11716 (ite c!218920 (left!11716 (c!218765 lt!442341)) (right!12046 (c!218765 lt!442341)))))))))

(declare-fun b!1339230 () Bool)

(assert (=> b!1339230 (= e!857699 e!856401)))

(declare-fun d!377798 () Bool)

(declare-fun lt!443293 () C!7652)

(assert (=> d!377798 (= lt!443293 (apply!3200 (list!5191 (ite c!218920 (left!11716 (c!218765 lt!442341)) (right!12046 (c!218765 lt!442341)))) e!856401))))

(assert (=> d!377798 (= lt!443293 e!857700)))

(declare-fun c!219491 () Bool)

(assert (=> d!377798 (= c!219491 ((_ is Leaf!6879) (ite c!218920 (left!11716 (c!218765 lt!442341)) (right!12046 (c!218765 lt!442341)))))))

(declare-fun e!857701 () Bool)

(assert (=> d!377798 e!857701))

(declare-fun res!603512 () Bool)

(assert (=> d!377798 (=> (not res!603512) (not e!857701))))

(assert (=> d!377798 (= res!603512 (<= 0 e!856401))))

(assert (=> d!377798 (= (apply!3201 (ite c!218920 (left!11716 (c!218765 lt!442341)) (right!12046 (c!218765 lt!442341))) e!856401) lt!443293)))

(declare-fun b!1339231 () Bool)

(assert (=> b!1339231 (= e!857700 (apply!3205 (xs!7214 (ite c!218920 (left!11716 (c!218765 lt!442341)) (right!12046 (c!218765 lt!442341)))) e!856401))))

(declare-fun b!1339232 () Bool)

(declare-fun call!90431 () C!7652)

(assert (=> b!1339232 (= e!857698 call!90431)))

(declare-fun bm!90426 () Bool)

(declare-fun c!219490 () Bool)

(assert (=> bm!90426 (= c!219490 c!219492)))

(assert (=> bm!90426 (= call!90431 (apply!3201 (ite c!219492 (left!11716 (ite c!218920 (left!11716 (c!218765 lt!442341)) (right!12046 (c!218765 lt!442341)))) (right!12046 (ite c!218920 (left!11716 (c!218765 lt!442341)) (right!12046 (c!218765 lt!442341))))) e!857699))))

(declare-fun b!1339233 () Bool)

(assert (=> b!1339233 (= e!857698 call!90431)))

(declare-fun b!1339234 () Bool)

(assert (=> b!1339234 (= e!857701 (< e!856401 (size!11119 (ite c!218920 (left!11716 (c!218765 lt!442341)) (right!12046 (c!218765 lt!442341))))))))

(assert (= (and d!377798 res!603512) b!1339234))

(assert (= (and d!377798 c!219491) b!1339231))

(assert (= (and d!377798 (not c!219491)) b!1339229))

(assert (= (and b!1339229 c!219492) b!1339233))

(assert (= (and b!1339229 (not c!219492)) b!1339232))

(assert (= (or b!1339233 b!1339232) bm!90426))

(assert (= (and bm!90426 c!219490) b!1339230))

(assert (= (and bm!90426 (not c!219490)) b!1339228))

(declare-fun m!1497725 () Bool)

(assert (=> b!1339229 m!1497725))

(declare-fun m!1497727 () Bool)

(assert (=> b!1339229 m!1497727))

(assert (=> b!1339229 m!1497725))

(assert (=> b!1339229 m!1497727))

(declare-fun m!1497729 () Bool)

(assert (=> b!1339229 m!1497729))

(declare-fun m!1497731 () Bool)

(assert (=> b!1339229 m!1497731))

(declare-fun m!1497733 () Bool)

(assert (=> b!1339231 m!1497733))

(declare-fun m!1497735 () Bool)

(assert (=> bm!90426 m!1497735))

(declare-fun m!1497737 () Bool)

(assert (=> b!1339234 m!1497737))

(declare-fun m!1497739 () Bool)

(assert (=> d!377798 m!1497739))

(assert (=> d!377798 m!1497739))

(declare-fun m!1497741 () Bool)

(assert (=> d!377798 m!1497741))

(assert (=> b!1339228 m!1497731))

(assert (=> bm!90188 d!377798))

(declare-fun b!1339235 () Bool)

(declare-fun res!603514 () Bool)

(declare-fun e!857703 () Bool)

(assert (=> b!1339235 (=> (not res!603514) (not e!857703))))

(assert (=> b!1339235 (= res!603514 (not (isEmpty!8148 (left!11716 (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))))

(declare-fun b!1339236 () Bool)

(declare-fun res!603515 () Bool)

(assert (=> b!1339236 (=> (not res!603515) (not e!857703))))

(assert (=> b!1339236 (= res!603515 (isBalanced!1305 (left!11716 (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))

(declare-fun b!1339237 () Bool)

(declare-fun res!603516 () Bool)

(assert (=> b!1339237 (=> (not res!603516) (not e!857703))))

(assert (=> b!1339237 (= res!603516 (<= (- (height!635 (left!11716 (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))) (height!635 (right!12046 (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))) 1))))

(declare-fun b!1339238 () Bool)

(declare-fun e!857702 () Bool)

(assert (=> b!1339238 (= e!857702 e!857703)))

(declare-fun res!603513 () Bool)

(assert (=> b!1339238 (=> (not res!603513) (not e!857703))))

(assert (=> b!1339238 (= res!603513 (<= (- 1) (- (height!635 (left!11716 (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))) (height!635 (right!12046 (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))))

(declare-fun d!377800 () Bool)

(declare-fun res!603518 () Bool)

(assert (=> d!377800 (=> res!603518 e!857702)))

(assert (=> d!377800 (= res!603518 (not ((_ is Node!4499) (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))

(assert (=> d!377800 (= (isBalanced!1305 (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))) e!857702)))

(declare-fun b!1339239 () Bool)

(declare-fun res!603517 () Bool)

(assert (=> b!1339239 (=> (not res!603517) (not e!857703))))

(assert (=> b!1339239 (= res!603517 (isBalanced!1305 (right!12046 (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0)))))))))

(declare-fun b!1339240 () Bool)

(assert (=> b!1339240 (= e!857703 (not (isEmpty!8148 (right!12046 (++!3492 (c!218765 (charsOf!1339 t1!34)) (c!218765 (singletonSeq!970 (apply!3195 (charsOf!1339 t2!34) 0))))))))))

(assert (= (and d!377800 (not res!603518)) b!1339238))

(assert (= (and b!1339238 res!603513) b!1339237))

(assert (= (and b!1339237 res!603516) b!1339236))

(assert (= (and b!1339236 res!603515) b!1339239))

(assert (= (and b!1339239 res!603517) b!1339235))

(assert (= (and b!1339235 res!603514) b!1339240))

(declare-fun m!1497743 () Bool)

(assert (=> b!1339240 m!1497743))

(declare-fun m!1497745 () Bool)

(assert (=> b!1339236 m!1497745))

(declare-fun m!1497747 () Bool)

(assert (=> b!1339238 m!1497747))

(declare-fun m!1497749 () Bool)

(assert (=> b!1339238 m!1497749))

(declare-fun m!1497751 () Bool)

(assert (=> b!1339235 m!1497751))

(assert (=> b!1339237 m!1497747))

(assert (=> b!1339237 m!1497749))

(declare-fun m!1497753 () Bool)

(assert (=> b!1339239 m!1497753))

(assert (=> b!1336874 d!377800))

(assert (=> b!1336874 d!377068))

(declare-fun d!377802 () Bool)

(assert (=> d!377802 (= (head!2369 (list!5187 lt!442342)) (h!19052 (list!5187 lt!442342)))))

(assert (=> b!1336967 d!377802))

(declare-fun d!377804 () Bool)

(declare-fun res!603519 () Bool)

(declare-fun e!857704 () Bool)

(assert (=> d!377804 (=> (not res!603519) (not e!857704))))

(assert (=> d!377804 (= res!603519 (= (csize!9228 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))) (+ (size!11119 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))) (size!11119 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))))))))

(assert (=> d!377804 (= (inv!17996 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))) e!857704)))

(declare-fun b!1339241 () Bool)

(declare-fun res!603520 () Bool)

(assert (=> b!1339241 (=> (not res!603520) (not e!857704))))

(assert (=> b!1339241 (= res!603520 (and (not (= (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))) Empty!4499)) (not (= (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))) Empty!4499))))))

(declare-fun b!1339242 () Bool)

(declare-fun res!603521 () Bool)

(assert (=> b!1339242 (=> (not res!603521) (not e!857704))))

(assert (=> b!1339242 (= res!603521 (= (cheight!4710 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))) (+ (max!0 (height!635 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))) (height!635 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))) 1)))))

(declare-fun b!1339243 () Bool)

(assert (=> b!1339243 (= e!857704 (<= 0 (cheight!4710 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))))))

(assert (= (and d!377804 res!603519) b!1339241))

(assert (= (and b!1339241 res!603520) b!1339242))

(assert (= (and b!1339242 res!603521) b!1339243))

(declare-fun m!1497755 () Bool)

(assert (=> d!377804 m!1497755))

(declare-fun m!1497757 () Bool)

(assert (=> d!377804 m!1497757))

(assert (=> b!1339242 m!1496883))

(assert (=> b!1339242 m!1496885))

(assert (=> b!1339242 m!1496883))

(assert (=> b!1339242 m!1496885))

(declare-fun m!1497759 () Bool)

(assert (=> b!1339242 m!1497759))

(assert (=> b!1337203 d!377804))

(declare-fun b!1339245 () Bool)

(declare-fun e!857705 () List!13722)

(declare-fun e!857706 () List!13722)

(assert (=> b!1339245 (= e!857705 e!857706)))

(declare-fun c!219494 () Bool)

(assert (=> b!1339245 (= c!219494 ((_ is Leaf!6881) (c!218804 (singletonSeq!969 t2!34))))))

(declare-fun b!1339247 () Bool)

(assert (=> b!1339247 (= e!857706 (++!3494 (list!5194 (left!11718 (c!218804 (singletonSeq!969 t2!34)))) (list!5194 (right!12048 (c!218804 (singletonSeq!969 t2!34))))))))

(declare-fun d!377806 () Bool)

(declare-fun c!219493 () Bool)

(assert (=> d!377806 (= c!219493 ((_ is Empty!4501) (c!218804 (singletonSeq!969 t2!34))))))

(assert (=> d!377806 (= (list!5194 (c!218804 (singletonSeq!969 t2!34))) e!857705)))

(declare-fun b!1339246 () Bool)

(assert (=> b!1339246 (= e!857706 (list!5197 (xs!7216 (c!218804 (singletonSeq!969 t2!34)))))))

(declare-fun b!1339244 () Bool)

(assert (=> b!1339244 (= e!857705 Nil!13656)))

(assert (= (and d!377806 c!219493) b!1339244))

(assert (= (and d!377806 (not c!219493)) b!1339245))

(assert (= (and b!1339245 c!219494) b!1339246))

(assert (= (and b!1339245 (not c!219494)) b!1339247))

(declare-fun m!1497761 () Bool)

(assert (=> b!1339247 m!1497761))

(declare-fun m!1497763 () Bool)

(assert (=> b!1339247 m!1497763))

(assert (=> b!1339247 m!1497761))

(assert (=> b!1339247 m!1497763))

(declare-fun m!1497765 () Bool)

(assert (=> b!1339247 m!1497765))

(declare-fun m!1497767 () Bool)

(assert (=> b!1339246 m!1497767))

(assert (=> d!376804 d!377806))

(declare-fun d!377808 () Bool)

(declare-fun lt!443294 () Int)

(assert (=> d!377808 (= lt!443294 (size!11118 (list!5187 (_2!7523 lt!442619))))))

(assert (=> d!377808 (= lt!443294 (size!11119 (c!218765 (_2!7523 lt!442619))))))

(assert (=> d!377808 (= (size!11114 (_2!7523 lt!442619)) lt!443294)))

(declare-fun bs!332217 () Bool)

(assert (= bs!332217 d!377808))

(assert (=> bs!332217 m!1494885))

(assert (=> bs!332217 m!1494885))

(declare-fun m!1497769 () Bool)

(assert (=> bs!332217 m!1497769))

(declare-fun m!1497771 () Bool)

(assert (=> bs!332217 m!1497771))

(assert (=> b!1337137 d!377808))

(declare-fun d!377810 () Bool)

(declare-fun lt!443295 () Int)

(assert (=> d!377810 (= lt!443295 (size!11118 (list!5187 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))

(assert (=> d!377810 (= lt!443295 (size!11119 (c!218765 (print!832 thiss!19762 (singletonSeq!969 t1!34)))))))

(assert (=> d!377810 (= (size!11114 (print!832 thiss!19762 (singletonSeq!969 t1!34))) lt!443295)))

(declare-fun bs!332218 () Bool)

(assert (= bs!332218 d!377810))

(assert (=> bs!332218 m!1494029))

(assert (=> bs!332218 m!1494887))

(assert (=> bs!332218 m!1494887))

(assert (=> bs!332218 m!1496221))

(declare-fun m!1497773 () Bool)

(assert (=> bs!332218 m!1497773))

(assert (=> b!1337137 d!377810))

(declare-fun d!377812 () Bool)

(declare-fun lt!443296 () Bool)

(assert (=> d!377812 (= lt!443296 (isEmpty!8151 (list!5190 (_1!7523 lt!442639))))))

(assert (=> d!377812 (= lt!443296 (isEmpty!8153 (c!218804 (_1!7523 lt!442639))))))

(assert (=> d!377812 (= (isEmpty!8149 (_1!7523 lt!442639)) lt!443296)))

(declare-fun bs!332219 () Bool)

(assert (= bs!332219 d!377812))

(assert (=> bs!332219 m!1494985))

(assert (=> bs!332219 m!1494985))

(declare-fun m!1497775 () Bool)

(assert (=> bs!332219 m!1497775))

(declare-fun m!1497777 () Bool)

(assert (=> bs!332219 m!1497777))

(assert (=> b!1337163 d!377812))

(declare-fun b!1339248 () Bool)

(declare-fun e!857707 () Bool)

(declare-fun tp!387389 () Bool)

(assert (=> b!1339248 (= e!857707 (and tp_is_empty!6679 tp!387389))))

(assert (=> b!1337220 (= tp!386864 e!857707)))

(assert (= (and b!1337220 ((_ is Cons!13651) (t!119282 res!602894))) b!1339248))

(declare-fun b!1339250 () Bool)

(declare-fun e!857708 () Bool)

(declare-fun tp!387393 () Bool)

(declare-fun tp!387391 () Bool)

(assert (=> b!1339250 (= e!857708 (and tp!387393 tp!387391))))

(declare-fun b!1339252 () Bool)

(declare-fun tp!387392 () Bool)

(declare-fun tp!387390 () Bool)

(assert (=> b!1339252 (= e!857708 (and tp!387392 tp!387390))))

(assert (=> b!1337338 (= tp!386943 e!857708)))

(declare-fun b!1339249 () Bool)

(assert (=> b!1339249 (= e!857708 tp_is_empty!6679)))

(declare-fun b!1339251 () Bool)

(declare-fun tp!387394 () Bool)

(assert (=> b!1339251 (= e!857708 tp!387394)))

(assert (= (and b!1337338 ((_ is ElementMatch!3681) (reg!4010 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339249))

(assert (= (and b!1337338 ((_ is Concat!6139) (reg!4010 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339250))

(assert (= (and b!1337338 ((_ is Star!3681) (reg!4010 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339251))

(assert (= (and b!1337338 ((_ is Union!3681) (reg!4010 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339252))

(declare-fun b!1339254 () Bool)

(declare-fun e!857709 () Bool)

(declare-fun tp!387398 () Bool)

(declare-fun tp!387396 () Bool)

(assert (=> b!1339254 (= e!857709 (and tp!387398 tp!387396))))

(declare-fun b!1339256 () Bool)

(declare-fun tp!387397 () Bool)

(declare-fun tp!387395 () Bool)

(assert (=> b!1339256 (= e!857709 (and tp!387397 tp!387395))))

(assert (=> b!1337301 (= tp!386903 e!857709)))

(declare-fun b!1339253 () Bool)

(assert (=> b!1339253 (= e!857709 tp_is_empty!6679)))

(declare-fun b!1339255 () Bool)

(declare-fun tp!387399 () Bool)

(assert (=> b!1339255 (= e!857709 tp!387399)))

(assert (= (and b!1337301 ((_ is ElementMatch!3681) (regOne!7874 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339253))

(assert (= (and b!1337301 ((_ is Concat!6139) (regOne!7874 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339254))

(assert (= (and b!1337301 ((_ is Star!3681) (regOne!7874 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339255))

(assert (= (and b!1337301 ((_ is Union!3681) (regOne!7874 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339256))

(declare-fun b!1339258 () Bool)

(declare-fun e!857710 () Bool)

(declare-fun tp!387403 () Bool)

(declare-fun tp!387401 () Bool)

(assert (=> b!1339258 (= e!857710 (and tp!387403 tp!387401))))

(declare-fun b!1339260 () Bool)

(declare-fun tp!387402 () Bool)

(declare-fun tp!387400 () Bool)

(assert (=> b!1339260 (= e!857710 (and tp!387402 tp!387400))))

(assert (=> b!1337301 (= tp!386901 e!857710)))

(declare-fun b!1339257 () Bool)

(assert (=> b!1339257 (= e!857710 tp_is_empty!6679)))

(declare-fun b!1339259 () Bool)

(declare-fun tp!387404 () Bool)

(assert (=> b!1339259 (= e!857710 tp!387404)))

(assert (= (and b!1337301 ((_ is ElementMatch!3681) (regTwo!7874 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339257))

(assert (= (and b!1337301 ((_ is Concat!6139) (regTwo!7874 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339258))

(assert (= (and b!1337301 ((_ is Star!3681) (regTwo!7874 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339259))

(assert (= (and b!1337301 ((_ is Union!3681) (regTwo!7874 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339260))

(declare-fun b!1339262 () Bool)

(declare-fun e!857711 () Bool)

(declare-fun tp!387408 () Bool)

(declare-fun tp!387406 () Bool)

(assert (=> b!1339262 (= e!857711 (and tp!387408 tp!387406))))

(declare-fun b!1339264 () Bool)

(declare-fun tp!387407 () Bool)

(declare-fun tp!387405 () Bool)

(assert (=> b!1339264 (= e!857711 (and tp!387407 tp!387405))))

(assert (=> b!1337347 (= tp!386951 e!857711)))

(declare-fun b!1339261 () Bool)

(assert (=> b!1339261 (= e!857711 tp_is_empty!6679)))

(declare-fun b!1339263 () Bool)

(declare-fun tp!387409 () Bool)

(assert (=> b!1339263 (= e!857711 tp!387409)))

(assert (= (and b!1337347 ((_ is ElementMatch!3681) (regOne!7875 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339261))

(assert (= (and b!1337347 ((_ is Concat!6139) (regOne!7875 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339262))

(assert (= (and b!1337347 ((_ is Star!3681) (regOne!7875 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339263))

(assert (= (and b!1337347 ((_ is Union!3681) (regOne!7875 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339264))

(declare-fun b!1339266 () Bool)

(declare-fun e!857712 () Bool)

(declare-fun tp!387413 () Bool)

(declare-fun tp!387411 () Bool)

(assert (=> b!1339266 (= e!857712 (and tp!387413 tp!387411))))

(declare-fun b!1339268 () Bool)

(declare-fun tp!387412 () Bool)

(declare-fun tp!387410 () Bool)

(assert (=> b!1339268 (= e!857712 (and tp!387412 tp!387410))))

(assert (=> b!1337347 (= tp!386949 e!857712)))

(declare-fun b!1339265 () Bool)

(assert (=> b!1339265 (= e!857712 tp_is_empty!6679)))

(declare-fun b!1339267 () Bool)

(declare-fun tp!387414 () Bool)

(assert (=> b!1339267 (= e!857712 tp!387414)))

(assert (= (and b!1337347 ((_ is ElementMatch!3681) (regTwo!7875 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339265))

(assert (= (and b!1337347 ((_ is Concat!6139) (regTwo!7875 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339266))

(assert (= (and b!1337347 ((_ is Star!3681) (regTwo!7875 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339267))

(assert (= (and b!1337347 ((_ is Union!3681) (regTwo!7875 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339268))

(declare-fun b!1339269 () Bool)

(declare-fun e!857713 () Bool)

(declare-fun tp!387415 () Bool)

(assert (=> b!1339269 (= e!857713 (and tp_is_empty!6679 tp!387415))))

(assert (=> b!1337316 (= tp!386915 e!857713)))

(assert (= (and b!1337316 ((_ is Cons!13651) (t!119282 (t!119282 (originalCharacters!3229 t1!34))))) b!1339269))

(declare-fun b!1339270 () Bool)

(declare-fun e!857714 () Bool)

(declare-fun tp!387416 () Bool)

(assert (=> b!1339270 (= e!857714 (and tp_is_empty!6679 tp!387416))))

(assert (=> b!1337331 (= tp!386933 e!857714)))

(assert (= (and b!1337331 ((_ is Cons!13651) (innerList!4559 (xs!7214 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))))) b!1339270))

(declare-fun b!1339273 () Bool)

(declare-fun b_free!32571 () Bool)

(declare-fun b_next!33275 () Bool)

(assert (=> b!1339273 (= b_free!32571 (not b_next!33275))))

(declare-fun tp!387417 () Bool)

(declare-fun b_and!89515 () Bool)

(assert (=> b!1339273 (= tp!387417 b_and!89515)))

(declare-fun b_free!32573 () Bool)

(declare-fun b_next!33277 () Bool)

(assert (=> b!1339273 (= b_free!32573 (not b_next!33277))))

(declare-fun tb!70517 () Bool)

(declare-fun t!119369 () Bool)

(assert (=> (and b!1339273 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 (t!119283 (t!119283 rules!2550)))))) (toChars!3461 (transformation!2367 (rule!4112 t2!34)))) t!119369) tb!70517))

(declare-fun result!85682 () Bool)

(assert (= result!85682 result!85632))

(assert (=> d!376404 t!119369))

(declare-fun tb!70519 () Bool)

(declare-fun t!119371 () Bool)

(assert (=> (and b!1339273 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 (t!119283 (t!119283 rules!2550)))))) (toChars!3461 (transformation!2367 (rule!4112 t1!34)))) t!119371) tb!70519))

(declare-fun result!85684 () Bool)

(assert (= result!85684 result!85650))

(assert (=> d!376462 t!119371))

(assert (=> b!1336429 t!119371))

(assert (=> b!1336431 t!119369))

(declare-fun b_and!89517 () Bool)

(declare-fun tp!387419 () Bool)

(assert (=> b!1339273 (= tp!387419 (and (=> t!119369 result!85682) (=> t!119371 result!85684) b_and!89517))))

(declare-fun e!857717 () Bool)

(assert (=> b!1339273 (= e!857717 (and tp!387417 tp!387419))))

(declare-fun tp!387418 () Bool)

(declare-fun e!857716 () Bool)

(declare-fun b!1339272 () Bool)

(assert (=> b!1339272 (= e!857716 (and tp!387418 (inv!17984 (tag!2629 (h!19053 (t!119283 (t!119283 (t!119283 rules!2550)))))) (inv!17987 (transformation!2367 (h!19053 (t!119283 (t!119283 (t!119283 rules!2550)))))) e!857717))))

(declare-fun b!1339271 () Bool)

(declare-fun e!857718 () Bool)

(declare-fun tp!387420 () Bool)

(assert (=> b!1339271 (= e!857718 (and e!857716 tp!387420))))

(assert (=> b!1337352 (= tp!386962 e!857718)))

(assert (= b!1339272 b!1339273))

(assert (= b!1339271 b!1339272))

(assert (= (and b!1337352 ((_ is Cons!13652) (t!119283 (t!119283 (t!119283 rules!2550))))) b!1339271))

(declare-fun m!1497779 () Bool)

(assert (=> b!1339272 m!1497779))

(declare-fun m!1497781 () Bool)

(assert (=> b!1339272 m!1497781))

(declare-fun b!1339275 () Bool)

(declare-fun e!857719 () Bool)

(declare-fun tp!387424 () Bool)

(declare-fun tp!387422 () Bool)

(assert (=> b!1339275 (= e!857719 (and tp!387424 tp!387422))))

(declare-fun b!1339277 () Bool)

(declare-fun tp!387423 () Bool)

(declare-fun tp!387421 () Bool)

(assert (=> b!1339277 (= e!857719 (and tp!387423 tp!387421))))

(assert (=> b!1337345 (= tp!386952 e!857719)))

(declare-fun b!1339274 () Bool)

(assert (=> b!1339274 (= e!857719 tp_is_empty!6679)))

(declare-fun b!1339276 () Bool)

(declare-fun tp!387425 () Bool)

(assert (=> b!1339276 (= e!857719 tp!387425)))

(assert (= (and b!1337345 ((_ is ElementMatch!3681) (regOne!7874 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339274))

(assert (= (and b!1337345 ((_ is Concat!6139) (regOne!7874 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339275))

(assert (= (and b!1337345 ((_ is Star!3681) (regOne!7874 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339276))

(assert (= (and b!1337345 ((_ is Union!3681) (regOne!7874 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339277))

(declare-fun b!1339279 () Bool)

(declare-fun e!857720 () Bool)

(declare-fun tp!387429 () Bool)

(declare-fun tp!387427 () Bool)

(assert (=> b!1339279 (= e!857720 (and tp!387429 tp!387427))))

(declare-fun b!1339281 () Bool)

(declare-fun tp!387428 () Bool)

(declare-fun tp!387426 () Bool)

(assert (=> b!1339281 (= e!857720 (and tp!387428 tp!387426))))

(assert (=> b!1337345 (= tp!386950 e!857720)))

(declare-fun b!1339278 () Bool)

(assert (=> b!1339278 (= e!857720 tp_is_empty!6679)))

(declare-fun b!1339280 () Bool)

(declare-fun tp!387430 () Bool)

(assert (=> b!1339280 (= e!857720 tp!387430)))

(assert (= (and b!1337345 ((_ is ElementMatch!3681) (regTwo!7874 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339278))

(assert (= (and b!1337345 ((_ is Concat!6139) (regTwo!7874 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339279))

(assert (= (and b!1337345 ((_ is Star!3681) (regTwo!7874 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339280))

(assert (= (and b!1337345 ((_ is Union!3681) (regTwo!7874 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339281))

(declare-fun b!1339283 () Bool)

(declare-fun e!857721 () Bool)

(declare-fun tp!387434 () Bool)

(declare-fun tp!387432 () Bool)

(assert (=> b!1339283 (= e!857721 (and tp!387434 tp!387432))))

(declare-fun b!1339285 () Bool)

(declare-fun tp!387433 () Bool)

(declare-fun tp!387431 () Bool)

(assert (=> b!1339285 (= e!857721 (and tp!387433 tp!387431))))

(assert (=> b!1337323 (= tp!386925 e!857721)))

(declare-fun b!1339282 () Bool)

(assert (=> b!1339282 (= e!857721 tp_is_empty!6679)))

(declare-fun b!1339284 () Bool)

(declare-fun tp!387435 () Bool)

(assert (=> b!1339284 (= e!857721 tp!387435)))

(assert (= (and b!1337323 ((_ is ElementMatch!3681) (reg!4010 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339282))

(assert (= (and b!1337323 ((_ is Concat!6139) (reg!4010 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339283))

(assert (= (and b!1337323 ((_ is Star!3681) (reg!4010 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339284))

(assert (= (and b!1337323 ((_ is Union!3681) (reg!4010 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339285))

(declare-fun b!1339287 () Bool)

(declare-fun e!857722 () Bool)

(declare-fun tp!387439 () Bool)

(declare-fun tp!387437 () Bool)

(assert (=> b!1339287 (= e!857722 (and tp!387439 tp!387437))))

(declare-fun b!1339289 () Bool)

(declare-fun tp!387438 () Bool)

(declare-fun tp!387436 () Bool)

(assert (=> b!1339289 (= e!857722 (and tp!387438 tp!387436))))

(assert (=> b!1337274 (= tp!386869 e!857722)))

(declare-fun b!1339286 () Bool)

(assert (=> b!1339286 (= e!857722 tp_is_empty!6679)))

(declare-fun b!1339288 () Bool)

(declare-fun tp!387440 () Bool)

(assert (=> b!1339288 (= e!857722 tp!387440)))

(assert (= (and b!1337274 ((_ is ElementMatch!3681) (reg!4010 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339286))

(assert (= (and b!1337274 ((_ is Concat!6139) (reg!4010 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339287))

(assert (= (and b!1337274 ((_ is Star!3681) (reg!4010 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339288))

(assert (= (and b!1337274 ((_ is Union!3681) (reg!4010 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339289))

(declare-fun b!1339291 () Bool)

(declare-fun e!857723 () Bool)

(declare-fun tp!387444 () Bool)

(declare-fun tp!387442 () Bool)

(assert (=> b!1339291 (= e!857723 (and tp!387444 tp!387442))))

(declare-fun b!1339293 () Bool)

(declare-fun tp!387443 () Bool)

(declare-fun tp!387441 () Bool)

(assert (=> b!1339293 (= e!857723 (and tp!387443 tp!387441))))

(assert (=> b!1337283 (= tp!386877 e!857723)))

(declare-fun b!1339290 () Bool)

(assert (=> b!1339290 (= e!857723 tp_is_empty!6679)))

(declare-fun b!1339292 () Bool)

(declare-fun tp!387445 () Bool)

(assert (=> b!1339292 (= e!857723 tp!387445)))

(assert (= (and b!1337283 ((_ is ElementMatch!3681) (regOne!7875 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339290))

(assert (= (and b!1337283 ((_ is Concat!6139) (regOne!7875 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339291))

(assert (= (and b!1337283 ((_ is Star!3681) (regOne!7875 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339292))

(assert (= (and b!1337283 ((_ is Union!3681) (regOne!7875 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339293))

(declare-fun b!1339295 () Bool)

(declare-fun e!857724 () Bool)

(declare-fun tp!387449 () Bool)

(declare-fun tp!387447 () Bool)

(assert (=> b!1339295 (= e!857724 (and tp!387449 tp!387447))))

(declare-fun b!1339297 () Bool)

(declare-fun tp!387448 () Bool)

(declare-fun tp!387446 () Bool)

(assert (=> b!1339297 (= e!857724 (and tp!387448 tp!387446))))

(assert (=> b!1337283 (= tp!386875 e!857724)))

(declare-fun b!1339294 () Bool)

(assert (=> b!1339294 (= e!857724 tp_is_empty!6679)))

(declare-fun b!1339296 () Bool)

(declare-fun tp!387450 () Bool)

(assert (=> b!1339296 (= e!857724 tp!387450)))

(assert (= (and b!1337283 ((_ is ElementMatch!3681) (regTwo!7875 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339294))

(assert (= (and b!1337283 ((_ is Concat!6139) (regTwo!7875 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339295))

(assert (= (and b!1337283 ((_ is Star!3681) (regTwo!7875 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339296))

(assert (= (and b!1337283 ((_ is Union!3681) (regTwo!7875 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339297))

(declare-fun tp!387451 () Bool)

(declare-fun b!1339298 () Bool)

(declare-fun e!857726 () Bool)

(declare-fun tp!387452 () Bool)

(assert (=> b!1339298 (= e!857726 (and (inv!17991 (left!11716 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))) tp!387451 (inv!17991 (right!12046 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))) tp!387452))))

(declare-fun b!1339300 () Bool)

(declare-fun e!857725 () Bool)

(declare-fun tp!387453 () Bool)

(assert (=> b!1339300 (= e!857725 tp!387453)))

(declare-fun b!1339299 () Bool)

(assert (=> b!1339299 (= e!857726 (and (inv!17998 (xs!7214 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))) e!857725))))

(assert (=> b!1337329 (= tp!386931 (and (inv!17991 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))) e!857726))))

(assert (= (and b!1337329 ((_ is Node!4499) (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))) b!1339298))

(assert (= b!1339299 b!1339300))

(assert (= (and b!1337329 ((_ is Leaf!6879) (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))) b!1339299))

(declare-fun m!1497783 () Bool)

(assert (=> b!1339298 m!1497783))

(declare-fun m!1497785 () Bool)

(assert (=> b!1339298 m!1497785))

(declare-fun m!1497787 () Bool)

(assert (=> b!1339299 m!1497787))

(assert (=> b!1337329 m!1495105))

(declare-fun b!1339301 () Bool)

(declare-fun e!857728 () Bool)

(declare-fun tp!387455 () Bool)

(declare-fun tp!387454 () Bool)

(assert (=> b!1339301 (= e!857728 (and (inv!17991 (left!11716 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))) tp!387454 (inv!17991 (right!12046 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))) tp!387455))))

(declare-fun b!1339303 () Bool)

(declare-fun e!857727 () Bool)

(declare-fun tp!387456 () Bool)

(assert (=> b!1339303 (= e!857727 tp!387456)))

(declare-fun b!1339302 () Bool)

(assert (=> b!1339302 (= e!857728 (and (inv!17998 (xs!7214 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))) e!857727))))

(assert (=> b!1337329 (= tp!386932 (and (inv!17991 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34))))) e!857728))))

(assert (= (and b!1337329 ((_ is Node!4499) (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))) b!1339301))

(assert (= b!1339302 b!1339303))

(assert (= (and b!1337329 ((_ is Leaf!6879) (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t2!34))) (value!77092 t2!34)))))) b!1339302))

(declare-fun m!1497789 () Bool)

(assert (=> b!1339301 m!1497789))

(declare-fun m!1497791 () Bool)

(assert (=> b!1339301 m!1497791))

(declare-fun m!1497793 () Bool)

(assert (=> b!1339302 m!1497793))

(assert (=> b!1337329 m!1495107))

(declare-fun b!1339305 () Bool)

(declare-fun e!857729 () Bool)

(declare-fun tp!387460 () Bool)

(declare-fun tp!387458 () Bool)

(assert (=> b!1339305 (= e!857729 (and tp!387460 tp!387458))))

(declare-fun b!1339307 () Bool)

(declare-fun tp!387459 () Bool)

(declare-fun tp!387457 () Bool)

(assert (=> b!1339307 (= e!857729 (and tp!387459 tp!387457))))

(assert (=> b!1337290 (= tp!386889 e!857729)))

(declare-fun b!1339304 () Bool)

(assert (=> b!1339304 (= e!857729 tp_is_empty!6679)))

(declare-fun b!1339306 () Bool)

(declare-fun tp!387461 () Bool)

(assert (=> b!1339306 (= e!857729 tp!387461)))

(assert (= (and b!1337290 ((_ is ElementMatch!3681) (reg!4010 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339304))

(assert (= (and b!1337290 ((_ is Concat!6139) (reg!4010 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339305))

(assert (= (and b!1337290 ((_ is Star!3681) (reg!4010 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339306))

(assert (= (and b!1337290 ((_ is Union!3681) (reg!4010 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339307))

(declare-fun b!1339309 () Bool)

(declare-fun e!857730 () Bool)

(declare-fun tp!387465 () Bool)

(declare-fun tp!387463 () Bool)

(assert (=> b!1339309 (= e!857730 (and tp!387465 tp!387463))))

(declare-fun b!1339311 () Bool)

(declare-fun tp!387464 () Bool)

(declare-fun tp!387462 () Bool)

(assert (=> b!1339311 (= e!857730 (and tp!387464 tp!387462))))

(assert (=> b!1337299 (= tp!386897 e!857730)))

(declare-fun b!1339308 () Bool)

(assert (=> b!1339308 (= e!857730 tp_is_empty!6679)))

(declare-fun b!1339310 () Bool)

(declare-fun tp!387466 () Bool)

(assert (=> b!1339310 (= e!857730 tp!387466)))

(assert (= (and b!1337299 ((_ is ElementMatch!3681) (regOne!7875 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339308))

(assert (= (and b!1337299 ((_ is Concat!6139) (regOne!7875 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339309))

(assert (= (and b!1337299 ((_ is Star!3681) (regOne!7875 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339310))

(assert (= (and b!1337299 ((_ is Union!3681) (regOne!7875 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339311))

(declare-fun b!1339313 () Bool)

(declare-fun e!857731 () Bool)

(declare-fun tp!387470 () Bool)

(declare-fun tp!387468 () Bool)

(assert (=> b!1339313 (= e!857731 (and tp!387470 tp!387468))))

(declare-fun b!1339315 () Bool)

(declare-fun tp!387469 () Bool)

(declare-fun tp!387467 () Bool)

(assert (=> b!1339315 (= e!857731 (and tp!387469 tp!387467))))

(assert (=> b!1337299 (= tp!386895 e!857731)))

(declare-fun b!1339312 () Bool)

(assert (=> b!1339312 (= e!857731 tp_is_empty!6679)))

(declare-fun b!1339314 () Bool)

(declare-fun tp!387471 () Bool)

(assert (=> b!1339314 (= e!857731 tp!387471)))

(assert (= (and b!1337299 ((_ is ElementMatch!3681) (regTwo!7875 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339312))

(assert (= (and b!1337299 ((_ is Concat!6139) (regTwo!7875 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339313))

(assert (= (and b!1337299 ((_ is Star!3681) (regTwo!7875 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339314))

(assert (= (and b!1337299 ((_ is Union!3681) (regTwo!7875 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339315))

(declare-fun b!1339317 () Bool)

(declare-fun e!857732 () Bool)

(declare-fun tp!387475 () Bool)

(declare-fun tp!387473 () Bool)

(assert (=> b!1339317 (= e!857732 (and tp!387475 tp!387473))))

(declare-fun b!1339319 () Bool)

(declare-fun tp!387474 () Bool)

(declare-fun tp!387472 () Bool)

(assert (=> b!1339319 (= e!857732 (and tp!387474 tp!387472))))

(assert (=> b!1337281 (= tp!386878 e!857732)))

(declare-fun b!1339316 () Bool)

(assert (=> b!1339316 (= e!857732 tp_is_empty!6679)))

(declare-fun b!1339318 () Bool)

(declare-fun tp!387476 () Bool)

(assert (=> b!1339318 (= e!857732 tp!387476)))

(assert (= (and b!1337281 ((_ is ElementMatch!3681) (regOne!7874 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339316))

(assert (= (and b!1337281 ((_ is Concat!6139) (regOne!7874 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339317))

(assert (= (and b!1337281 ((_ is Star!3681) (regOne!7874 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339318))

(assert (= (and b!1337281 ((_ is Union!3681) (regOne!7874 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339319))

(declare-fun b!1339321 () Bool)

(declare-fun e!857733 () Bool)

(declare-fun tp!387480 () Bool)

(declare-fun tp!387478 () Bool)

(assert (=> b!1339321 (= e!857733 (and tp!387480 tp!387478))))

(declare-fun b!1339323 () Bool)

(declare-fun tp!387479 () Bool)

(declare-fun tp!387477 () Bool)

(assert (=> b!1339323 (= e!857733 (and tp!387479 tp!387477))))

(assert (=> b!1337281 (= tp!386876 e!857733)))

(declare-fun b!1339320 () Bool)

(assert (=> b!1339320 (= e!857733 tp_is_empty!6679)))

(declare-fun b!1339322 () Bool)

(declare-fun tp!387481 () Bool)

(assert (=> b!1339322 (= e!857733 tp!387481)))

(assert (= (and b!1337281 ((_ is ElementMatch!3681) (regTwo!7874 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339320))

(assert (= (and b!1337281 ((_ is Concat!6139) (regTwo!7874 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339321))

(assert (= (and b!1337281 ((_ is Star!3681) (regTwo!7874 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339322))

(assert (= (and b!1337281 ((_ is Union!3681) (regTwo!7874 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339323))

(declare-fun b!1339325 () Bool)

(declare-fun e!857734 () Bool)

(declare-fun tp!387485 () Bool)

(declare-fun tp!387483 () Bool)

(assert (=> b!1339325 (= e!857734 (and tp!387485 tp!387483))))

(declare-fun b!1339327 () Bool)

(declare-fun tp!387484 () Bool)

(declare-fun tp!387482 () Bool)

(assert (=> b!1339327 (= e!857734 (and tp!387484 tp!387482))))

(assert (=> b!1337342 (= tp!386948 e!857734)))

(declare-fun b!1339324 () Bool)

(assert (=> b!1339324 (= e!857734 tp_is_empty!6679)))

(declare-fun b!1339326 () Bool)

(declare-fun tp!387486 () Bool)

(assert (=> b!1339326 (= e!857734 tp!387486)))

(assert (= (and b!1337342 ((_ is ElementMatch!3681) (reg!4010 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339324))

(assert (= (and b!1337342 ((_ is Concat!6139) (reg!4010 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339325))

(assert (= (and b!1337342 ((_ is Star!3681) (reg!4010 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339326))

(assert (= (and b!1337342 ((_ is Union!3681) (reg!4010 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339327))

(declare-fun b!1339329 () Bool)

(declare-fun e!857735 () Bool)

(declare-fun tp!387490 () Bool)

(declare-fun tp!387488 () Bool)

(assert (=> b!1339329 (= e!857735 (and tp!387490 tp!387488))))

(declare-fun b!1339331 () Bool)

(declare-fun tp!387489 () Bool)

(declare-fun tp!387487 () Bool)

(assert (=> b!1339331 (= e!857735 (and tp!387489 tp!387487))))

(assert (=> b!1337351 (= tp!386956 e!857735)))

(declare-fun b!1339328 () Bool)

(assert (=> b!1339328 (= e!857735 tp_is_empty!6679)))

(declare-fun b!1339330 () Bool)

(declare-fun tp!387491 () Bool)

(assert (=> b!1339330 (= e!857735 tp!387491)))

(assert (= (and b!1337351 ((_ is ElementMatch!3681) (regOne!7875 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339328))

(assert (= (and b!1337351 ((_ is Concat!6139) (regOne!7875 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339329))

(assert (= (and b!1337351 ((_ is Star!3681) (regOne!7875 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339330))

(assert (= (and b!1337351 ((_ is Union!3681) (regOne!7875 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339331))

(declare-fun b!1339333 () Bool)

(declare-fun e!857736 () Bool)

(declare-fun tp!387495 () Bool)

(declare-fun tp!387493 () Bool)

(assert (=> b!1339333 (= e!857736 (and tp!387495 tp!387493))))

(declare-fun b!1339335 () Bool)

(declare-fun tp!387494 () Bool)

(declare-fun tp!387492 () Bool)

(assert (=> b!1339335 (= e!857736 (and tp!387494 tp!387492))))

(assert (=> b!1337351 (= tp!386954 e!857736)))

(declare-fun b!1339332 () Bool)

(assert (=> b!1339332 (= e!857736 tp_is_empty!6679)))

(declare-fun b!1339334 () Bool)

(declare-fun tp!387496 () Bool)

(assert (=> b!1339334 (= e!857736 tp!387496)))

(assert (= (and b!1337351 ((_ is ElementMatch!3681) (regTwo!7875 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339332))

(assert (= (and b!1337351 ((_ is Concat!6139) (regTwo!7875 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339333))

(assert (= (and b!1337351 ((_ is Star!3681) (regTwo!7875 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339334))

(assert (= (and b!1337351 ((_ is Union!3681) (regTwo!7875 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339335))

(declare-fun b!1339337 () Bool)

(declare-fun e!857737 () Bool)

(declare-fun tp!387500 () Bool)

(declare-fun tp!387498 () Bool)

(assert (=> b!1339337 (= e!857737 (and tp!387500 tp!387498))))

(declare-fun b!1339339 () Bool)

(declare-fun tp!387499 () Bool)

(declare-fun tp!387497 () Bool)

(assert (=> b!1339339 (= e!857737 (and tp!387499 tp!387497))))

(assert (=> b!1337333 (= tp!386937 e!857737)))

(declare-fun b!1339336 () Bool)

(assert (=> b!1339336 (= e!857737 tp_is_empty!6679)))

(declare-fun b!1339338 () Bool)

(declare-fun tp!387501 () Bool)

(assert (=> b!1339338 (= e!857737 tp!387501)))

(assert (= (and b!1337333 ((_ is ElementMatch!3681) (regOne!7874 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339336))

(assert (= (and b!1337333 ((_ is Concat!6139) (regOne!7874 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339337))

(assert (= (and b!1337333 ((_ is Star!3681) (regOne!7874 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339338))

(assert (= (and b!1337333 ((_ is Union!3681) (regOne!7874 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339339))

(declare-fun b!1339341 () Bool)

(declare-fun e!857738 () Bool)

(declare-fun tp!387505 () Bool)

(declare-fun tp!387503 () Bool)

(assert (=> b!1339341 (= e!857738 (and tp!387505 tp!387503))))

(declare-fun b!1339343 () Bool)

(declare-fun tp!387504 () Bool)

(declare-fun tp!387502 () Bool)

(assert (=> b!1339343 (= e!857738 (and tp!387504 tp!387502))))

(assert (=> b!1337333 (= tp!386935 e!857738)))

(declare-fun b!1339340 () Bool)

(assert (=> b!1339340 (= e!857738 tp_is_empty!6679)))

(declare-fun b!1339342 () Bool)

(declare-fun tp!387506 () Bool)

(assert (=> b!1339342 (= e!857738 tp!387506)))

(assert (= (and b!1337333 ((_ is ElementMatch!3681) (regTwo!7874 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339340))

(assert (= (and b!1337333 ((_ is Concat!6139) (regTwo!7874 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339341))

(assert (= (and b!1337333 ((_ is Star!3681) (regTwo!7874 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339342))

(assert (= (and b!1337333 ((_ is Union!3681) (regTwo!7874 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339343))

(declare-fun e!857740 () Bool)

(declare-fun tp!387508 () Bool)

(declare-fun tp!387507 () Bool)

(declare-fun b!1339344 () Bool)

(assert (=> b!1339344 (= e!857740 (and (inv!17991 (left!11716 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))) tp!387507 (inv!17991 (right!12046 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))) tp!387508))))

(declare-fun b!1339346 () Bool)

(declare-fun e!857739 () Bool)

(declare-fun tp!387509 () Bool)

(assert (=> b!1339346 (= e!857739 tp!387509)))

(declare-fun b!1339345 () Bool)

(assert (=> b!1339345 (= e!857740 (and (inv!17998 (xs!7214 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))) e!857739))))

(assert (=> b!1337313 (= tp!386912 (and (inv!17991 (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))) e!857740))))

(assert (= (and b!1337313 ((_ is Node!4499) (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))) b!1339344))

(assert (= b!1339345 b!1339346))

(assert (= (and b!1337313 ((_ is Leaf!6879) (left!11716 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))) b!1339345))

(declare-fun m!1497795 () Bool)

(assert (=> b!1339344 m!1497795))

(declare-fun m!1497797 () Bool)

(assert (=> b!1339344 m!1497797))

(declare-fun m!1497799 () Bool)

(assert (=> b!1339345 m!1497799))

(assert (=> b!1337313 m!1495099))

(declare-fun e!857742 () Bool)

(declare-fun tp!387510 () Bool)

(declare-fun b!1339347 () Bool)

(declare-fun tp!387511 () Bool)

(assert (=> b!1339347 (= e!857742 (and (inv!17991 (left!11716 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))) tp!387510 (inv!17991 (right!12046 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))) tp!387511))))

(declare-fun b!1339349 () Bool)

(declare-fun e!857741 () Bool)

(declare-fun tp!387512 () Bool)

(assert (=> b!1339349 (= e!857741 tp!387512)))

(declare-fun b!1339348 () Bool)

(assert (=> b!1339348 (= e!857742 (and (inv!17998 (xs!7214 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))) e!857741))))

(assert (=> b!1337313 (= tp!386913 (and (inv!17991 (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))) e!857742))))

(assert (= (and b!1337313 ((_ is Node!4499) (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))) b!1339347))

(assert (= b!1339348 b!1339349))

(assert (= (and b!1337313 ((_ is Leaf!6879) (right!12046 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34)))))) b!1339348))

(declare-fun m!1497801 () Bool)

(assert (=> b!1339347 m!1497801))

(declare-fun m!1497803 () Bool)

(assert (=> b!1339347 m!1497803))

(declare-fun m!1497805 () Bool)

(assert (=> b!1339348 m!1497805))

(assert (=> b!1337313 m!1495101))

(declare-fun b!1339351 () Bool)

(declare-fun e!857743 () Bool)

(declare-fun tp!387516 () Bool)

(declare-fun tp!387514 () Bool)

(assert (=> b!1339351 (= e!857743 (and tp!387516 tp!387514))))

(declare-fun b!1339353 () Bool)

(declare-fun tp!387515 () Bool)

(declare-fun tp!387513 () Bool)

(assert (=> b!1339353 (= e!857743 (and tp!387515 tp!387513))))

(assert (=> b!1337320 (= tp!386918 e!857743)))

(declare-fun b!1339350 () Bool)

(assert (=> b!1339350 (= e!857743 tp_is_empty!6679)))

(declare-fun b!1339352 () Bool)

(declare-fun tp!387517 () Bool)

(assert (=> b!1339352 (= e!857743 tp!387517)))

(assert (= (and b!1337320 ((_ is ElementMatch!3681) (regOne!7875 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339350))

(assert (= (and b!1337320 ((_ is Concat!6139) (regOne!7875 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339351))

(assert (= (and b!1337320 ((_ is Star!3681) (regOne!7875 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339352))

(assert (= (and b!1337320 ((_ is Union!3681) (regOne!7875 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339353))

(declare-fun b!1339355 () Bool)

(declare-fun e!857744 () Bool)

(declare-fun tp!387521 () Bool)

(declare-fun tp!387519 () Bool)

(assert (=> b!1339355 (= e!857744 (and tp!387521 tp!387519))))

(declare-fun b!1339357 () Bool)

(declare-fun tp!387520 () Bool)

(declare-fun tp!387518 () Bool)

(assert (=> b!1339357 (= e!857744 (and tp!387520 tp!387518))))

(assert (=> b!1337320 (= tp!386916 e!857744)))

(declare-fun b!1339354 () Bool)

(assert (=> b!1339354 (= e!857744 tp_is_empty!6679)))

(declare-fun b!1339356 () Bool)

(declare-fun tp!387522 () Bool)

(assert (=> b!1339356 (= e!857744 tp!387522)))

(assert (= (and b!1337320 ((_ is ElementMatch!3681) (regTwo!7875 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339354))

(assert (= (and b!1337320 ((_ is Concat!6139) (regTwo!7875 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339355))

(assert (= (and b!1337320 ((_ is Star!3681) (regTwo!7875 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339356))

(assert (= (and b!1337320 ((_ is Union!3681) (regTwo!7875 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339357))

(declare-fun b!1339359 () Bool)

(declare-fun e!857745 () Bool)

(declare-fun tp!387526 () Bool)

(declare-fun tp!387524 () Bool)

(assert (=> b!1339359 (= e!857745 (and tp!387526 tp!387524))))

(declare-fun b!1339361 () Bool)

(declare-fun tp!387525 () Bool)

(declare-fun tp!387523 () Bool)

(assert (=> b!1339361 (= e!857745 (and tp!387525 tp!387523))))

(assert (=> b!1337298 (= tp!386899 e!857745)))

(declare-fun b!1339358 () Bool)

(assert (=> b!1339358 (= e!857745 tp_is_empty!6679)))

(declare-fun b!1339360 () Bool)

(declare-fun tp!387527 () Bool)

(assert (=> b!1339360 (= e!857745 tp!387527)))

(assert (= (and b!1337298 ((_ is ElementMatch!3681) (reg!4010 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339358))

(assert (= (and b!1337298 ((_ is Concat!6139) (reg!4010 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339359))

(assert (= (and b!1337298 ((_ is Star!3681) (reg!4010 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339360))

(assert (= (and b!1337298 ((_ is Union!3681) (reg!4010 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339361))

(declare-fun b!1339363 () Bool)

(declare-fun e!857746 () Bool)

(declare-fun tp!387531 () Bool)

(declare-fun tp!387529 () Bool)

(assert (=> b!1339363 (= e!857746 (and tp!387531 tp!387529))))

(declare-fun b!1339365 () Bool)

(declare-fun tp!387530 () Bool)

(declare-fun tp!387528 () Bool)

(assert (=> b!1339365 (= e!857746 (and tp!387530 tp!387528))))

(assert (=> b!1337349 (= tp!386957 e!857746)))

(declare-fun b!1339362 () Bool)

(assert (=> b!1339362 (= e!857746 tp_is_empty!6679)))

(declare-fun b!1339364 () Bool)

(declare-fun tp!387532 () Bool)

(assert (=> b!1339364 (= e!857746 tp!387532)))

(assert (= (and b!1337349 ((_ is ElementMatch!3681) (regOne!7874 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339362))

(assert (= (and b!1337349 ((_ is Concat!6139) (regOne!7874 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339363))

(assert (= (and b!1337349 ((_ is Star!3681) (regOne!7874 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339364))

(assert (= (and b!1337349 ((_ is Union!3681) (regOne!7874 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339365))

(declare-fun b!1339367 () Bool)

(declare-fun e!857747 () Bool)

(declare-fun tp!387536 () Bool)

(declare-fun tp!387534 () Bool)

(assert (=> b!1339367 (= e!857747 (and tp!387536 tp!387534))))

(declare-fun b!1339369 () Bool)

(declare-fun tp!387535 () Bool)

(declare-fun tp!387533 () Bool)

(assert (=> b!1339369 (= e!857747 (and tp!387535 tp!387533))))

(assert (=> b!1337349 (= tp!386955 e!857747)))

(declare-fun b!1339366 () Bool)

(assert (=> b!1339366 (= e!857747 tp_is_empty!6679)))

(declare-fun b!1339368 () Bool)

(declare-fun tp!387537 () Bool)

(assert (=> b!1339368 (= e!857747 tp!387537)))

(assert (= (and b!1337349 ((_ is ElementMatch!3681) (regTwo!7874 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339366))

(assert (= (and b!1337349 ((_ is Concat!6139) (regTwo!7874 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339367))

(assert (= (and b!1337349 ((_ is Star!3681) (regTwo!7874 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339368))

(assert (= (and b!1337349 ((_ is Union!3681) (regTwo!7874 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339369))

(declare-fun b!1339371 () Bool)

(declare-fun e!857748 () Bool)

(declare-fun tp!387541 () Bool)

(declare-fun tp!387539 () Bool)

(assert (=> b!1339371 (= e!857748 (and tp!387541 tp!387539))))

(declare-fun b!1339373 () Bool)

(declare-fun tp!387540 () Bool)

(declare-fun tp!387538 () Bool)

(assert (=> b!1339373 (= e!857748 (and tp!387540 tp!387538))))

(assert (=> b!1337327 (= tp!386930 e!857748)))

(declare-fun b!1339370 () Bool)

(assert (=> b!1339370 (= e!857748 tp_is_empty!6679)))

(declare-fun b!1339372 () Bool)

(declare-fun tp!387542 () Bool)

(assert (=> b!1339372 (= e!857748 tp!387542)))

(assert (= (and b!1337327 ((_ is ElementMatch!3681) (reg!4010 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339370))

(assert (= (and b!1337327 ((_ is Concat!6139) (reg!4010 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339371))

(assert (= (and b!1337327 ((_ is Star!3681) (reg!4010 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339372))

(assert (= (and b!1337327 ((_ is Union!3681) (reg!4010 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339373))

(declare-fun b!1339375 () Bool)

(declare-fun e!857749 () Bool)

(declare-fun tp!387546 () Bool)

(declare-fun tp!387544 () Bool)

(assert (=> b!1339375 (= e!857749 (and tp!387546 tp!387544))))

(declare-fun b!1339377 () Bool)

(declare-fun tp!387545 () Bool)

(declare-fun tp!387543 () Bool)

(assert (=> b!1339377 (= e!857749 (and tp!387545 tp!387543))))

(assert (=> b!1337318 (= tp!386919 e!857749)))

(declare-fun b!1339374 () Bool)

(assert (=> b!1339374 (= e!857749 tp_is_empty!6679)))

(declare-fun b!1339376 () Bool)

(declare-fun tp!387547 () Bool)

(assert (=> b!1339376 (= e!857749 tp!387547)))

(assert (= (and b!1337318 ((_ is ElementMatch!3681) (regOne!7874 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339374))

(assert (= (and b!1337318 ((_ is Concat!6139) (regOne!7874 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339375))

(assert (= (and b!1337318 ((_ is Star!3681) (regOne!7874 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339376))

(assert (= (and b!1337318 ((_ is Union!3681) (regOne!7874 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339377))

(declare-fun b!1339379 () Bool)

(declare-fun e!857750 () Bool)

(declare-fun tp!387551 () Bool)

(declare-fun tp!387549 () Bool)

(assert (=> b!1339379 (= e!857750 (and tp!387551 tp!387549))))

(declare-fun b!1339381 () Bool)

(declare-fun tp!387550 () Bool)

(declare-fun tp!387548 () Bool)

(assert (=> b!1339381 (= e!857750 (and tp!387550 tp!387548))))

(assert (=> b!1337318 (= tp!386917 e!857750)))

(declare-fun b!1339378 () Bool)

(assert (=> b!1339378 (= e!857750 tp_is_empty!6679)))

(declare-fun b!1339380 () Bool)

(declare-fun tp!387552 () Bool)

(assert (=> b!1339380 (= e!857750 tp!387552)))

(assert (= (and b!1337318 ((_ is ElementMatch!3681) (regTwo!7874 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339378))

(assert (= (and b!1337318 ((_ is Concat!6139) (regTwo!7874 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339379))

(assert (= (and b!1337318 ((_ is Star!3681) (regTwo!7874 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339380))

(assert (= (and b!1337318 ((_ is Union!3681) (regTwo!7874 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339381))

(declare-fun b!1339383 () Bool)

(declare-fun e!857751 () Bool)

(declare-fun tp!387556 () Bool)

(declare-fun tp!387554 () Bool)

(assert (=> b!1339383 (= e!857751 (and tp!387556 tp!387554))))

(declare-fun b!1339385 () Bool)

(declare-fun tp!387555 () Bool)

(declare-fun tp!387553 () Bool)

(assert (=> b!1339385 (= e!857751 (and tp!387555 tp!387553))))

(assert (=> b!1337278 (= tp!386874 e!857751)))

(declare-fun b!1339382 () Bool)

(assert (=> b!1339382 (= e!857751 tp_is_empty!6679)))

(declare-fun b!1339384 () Bool)

(declare-fun tp!387557 () Bool)

(assert (=> b!1339384 (= e!857751 tp!387557)))

(assert (= (and b!1337278 ((_ is ElementMatch!3681) (reg!4010 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339382))

(assert (= (and b!1337278 ((_ is Concat!6139) (reg!4010 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339383))

(assert (= (and b!1337278 ((_ is Star!3681) (reg!4010 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339384))

(assert (= (and b!1337278 ((_ is Union!3681) (reg!4010 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339385))

(declare-fun b!1339387 () Bool)

(declare-fun e!857752 () Bool)

(declare-fun tp!387561 () Bool)

(declare-fun tp!387559 () Bool)

(assert (=> b!1339387 (= e!857752 (and tp!387561 tp!387559))))

(declare-fun b!1339389 () Bool)

(declare-fun tp!387560 () Bool)

(declare-fun tp!387558 () Bool)

(assert (=> b!1339389 (= e!857752 (and tp!387560 tp!387558))))

(assert (=> b!1337287 (= tp!386882 e!857752)))

(declare-fun b!1339386 () Bool)

(assert (=> b!1339386 (= e!857752 tp_is_empty!6679)))

(declare-fun b!1339388 () Bool)

(declare-fun tp!387562 () Bool)

(assert (=> b!1339388 (= e!857752 tp!387562)))

(assert (= (and b!1337287 ((_ is ElementMatch!3681) (regOne!7875 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339386))

(assert (= (and b!1337287 ((_ is Concat!6139) (regOne!7875 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339387))

(assert (= (and b!1337287 ((_ is Star!3681) (regOne!7875 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339388))

(assert (= (and b!1337287 ((_ is Union!3681) (regOne!7875 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339389))

(declare-fun b!1339391 () Bool)

(declare-fun e!857753 () Bool)

(declare-fun tp!387566 () Bool)

(declare-fun tp!387564 () Bool)

(assert (=> b!1339391 (= e!857753 (and tp!387566 tp!387564))))

(declare-fun b!1339393 () Bool)

(declare-fun tp!387565 () Bool)

(declare-fun tp!387563 () Bool)

(assert (=> b!1339393 (= e!857753 (and tp!387565 tp!387563))))

(assert (=> b!1337287 (= tp!386880 e!857753)))

(declare-fun b!1339390 () Bool)

(assert (=> b!1339390 (= e!857753 tp_is_empty!6679)))

(declare-fun b!1339392 () Bool)

(declare-fun tp!387567 () Bool)

(assert (=> b!1339392 (= e!857753 tp!387567)))

(assert (= (and b!1337287 ((_ is ElementMatch!3681) (regTwo!7875 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339390))

(assert (= (and b!1337287 ((_ is Concat!6139) (regTwo!7875 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339391))

(assert (= (and b!1337287 ((_ is Star!3681) (regTwo!7875 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339392))

(assert (= (and b!1337287 ((_ is Union!3681) (regTwo!7875 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339393))

(declare-fun b!1339395 () Bool)

(declare-fun e!857754 () Bool)

(declare-fun tp!387571 () Bool)

(declare-fun tp!387569 () Bool)

(assert (=> b!1339395 (= e!857754 (and tp!387571 tp!387569))))

(declare-fun b!1339397 () Bool)

(declare-fun tp!387570 () Bool)

(declare-fun tp!387568 () Bool)

(assert (=> b!1339397 (= e!857754 (and tp!387570 tp!387568))))

(assert (=> b!1337294 (= tp!386894 e!857754)))

(declare-fun b!1339394 () Bool)

(assert (=> b!1339394 (= e!857754 tp_is_empty!6679)))

(declare-fun b!1339396 () Bool)

(declare-fun tp!387572 () Bool)

(assert (=> b!1339396 (= e!857754 tp!387572)))

(assert (= (and b!1337294 ((_ is ElementMatch!3681) (reg!4010 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339394))

(assert (= (and b!1337294 ((_ is Concat!6139) (reg!4010 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339395))

(assert (= (and b!1337294 ((_ is Star!3681) (reg!4010 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339396))

(assert (= (and b!1337294 ((_ is Union!3681) (reg!4010 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339397))

(declare-fun b!1339399 () Bool)

(declare-fun e!857755 () Bool)

(declare-fun tp!387576 () Bool)

(declare-fun tp!387574 () Bool)

(assert (=> b!1339399 (= e!857755 (and tp!387576 tp!387574))))

(declare-fun b!1339401 () Bool)

(declare-fun tp!387575 () Bool)

(declare-fun tp!387573 () Bool)

(assert (=> b!1339401 (= e!857755 (and tp!387575 tp!387573))))

(assert (=> b!1337303 (= tp!386902 e!857755)))

(declare-fun b!1339398 () Bool)

(assert (=> b!1339398 (= e!857755 tp_is_empty!6679)))

(declare-fun b!1339400 () Bool)

(declare-fun tp!387577 () Bool)

(assert (=> b!1339400 (= e!857755 tp!387577)))

(assert (= (and b!1337303 ((_ is ElementMatch!3681) (regOne!7875 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339398))

(assert (= (and b!1337303 ((_ is Concat!6139) (regOne!7875 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339399))

(assert (= (and b!1337303 ((_ is Star!3681) (regOne!7875 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339400))

(assert (= (and b!1337303 ((_ is Union!3681) (regOne!7875 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339401))

(declare-fun b!1339403 () Bool)

(declare-fun e!857756 () Bool)

(declare-fun tp!387581 () Bool)

(declare-fun tp!387579 () Bool)

(assert (=> b!1339403 (= e!857756 (and tp!387581 tp!387579))))

(declare-fun b!1339405 () Bool)

(declare-fun tp!387580 () Bool)

(declare-fun tp!387578 () Bool)

(assert (=> b!1339405 (= e!857756 (and tp!387580 tp!387578))))

(assert (=> b!1337303 (= tp!386900 e!857756)))

(declare-fun b!1339402 () Bool)

(assert (=> b!1339402 (= e!857756 tp_is_empty!6679)))

(declare-fun b!1339404 () Bool)

(declare-fun tp!387582 () Bool)

(assert (=> b!1339404 (= e!857756 tp!387582)))

(assert (= (and b!1337303 ((_ is ElementMatch!3681) (regTwo!7875 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339402))

(assert (= (and b!1337303 ((_ is Concat!6139) (regTwo!7875 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339403))

(assert (= (and b!1337303 ((_ is Star!3681) (regTwo!7875 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339404))

(assert (= (and b!1337303 ((_ is Union!3681) (regTwo!7875 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339405))

(declare-fun b!1339407 () Bool)

(declare-fun e!857757 () Bool)

(declare-fun tp!387586 () Bool)

(declare-fun tp!387584 () Bool)

(assert (=> b!1339407 (= e!857757 (and tp!387586 tp!387584))))

(declare-fun b!1339409 () Bool)

(declare-fun tp!387585 () Bool)

(declare-fun tp!387583 () Bool)

(assert (=> b!1339409 (= e!857757 (and tp!387585 tp!387583))))

(assert (=> b!1337285 (= tp!386883 e!857757)))

(declare-fun b!1339406 () Bool)

(assert (=> b!1339406 (= e!857757 tp_is_empty!6679)))

(declare-fun b!1339408 () Bool)

(declare-fun tp!387587 () Bool)

(assert (=> b!1339408 (= e!857757 tp!387587)))

(assert (= (and b!1337285 ((_ is ElementMatch!3681) (regOne!7874 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339406))

(assert (= (and b!1337285 ((_ is Concat!6139) (regOne!7874 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339407))

(assert (= (and b!1337285 ((_ is Star!3681) (regOne!7874 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339408))

(assert (= (and b!1337285 ((_ is Union!3681) (regOne!7874 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339409))

(declare-fun b!1339411 () Bool)

(declare-fun e!857758 () Bool)

(declare-fun tp!387591 () Bool)

(declare-fun tp!387589 () Bool)

(assert (=> b!1339411 (= e!857758 (and tp!387591 tp!387589))))

(declare-fun b!1339413 () Bool)

(declare-fun tp!387590 () Bool)

(declare-fun tp!387588 () Bool)

(assert (=> b!1339413 (= e!857758 (and tp!387590 tp!387588))))

(assert (=> b!1337285 (= tp!386881 e!857758)))

(declare-fun b!1339410 () Bool)

(assert (=> b!1339410 (= e!857758 tp_is_empty!6679)))

(declare-fun b!1339412 () Bool)

(declare-fun tp!387592 () Bool)

(assert (=> b!1339412 (= e!857758 tp!387592)))

(assert (= (and b!1337285 ((_ is ElementMatch!3681) (regTwo!7874 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339410))

(assert (= (and b!1337285 ((_ is Concat!6139) (regTwo!7874 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339411))

(assert (= (and b!1337285 ((_ is Star!3681) (regTwo!7874 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339412))

(assert (= (and b!1337285 ((_ is Union!3681) (regTwo!7874 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339413))

(declare-fun b!1339415 () Bool)

(declare-fun e!857759 () Bool)

(declare-fun tp!387596 () Bool)

(declare-fun tp!387594 () Bool)

(assert (=> b!1339415 (= e!857759 (and tp!387596 tp!387594))))

(declare-fun b!1339417 () Bool)

(declare-fun tp!387595 () Bool)

(declare-fun tp!387593 () Bool)

(assert (=> b!1339417 (= e!857759 (and tp!387595 tp!387593))))

(assert (=> b!1337337 (= tp!386942 e!857759)))

(declare-fun b!1339414 () Bool)

(assert (=> b!1339414 (= e!857759 tp_is_empty!6679)))

(declare-fun b!1339416 () Bool)

(declare-fun tp!387597 () Bool)

(assert (=> b!1339416 (= e!857759 tp!387597)))

(assert (= (and b!1337337 ((_ is ElementMatch!3681) (regOne!7874 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339414))

(assert (= (and b!1337337 ((_ is Concat!6139) (regOne!7874 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339415))

(assert (= (and b!1337337 ((_ is Star!3681) (regOne!7874 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339416))

(assert (= (and b!1337337 ((_ is Union!3681) (regOne!7874 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339417))

(declare-fun b!1339419 () Bool)

(declare-fun e!857760 () Bool)

(declare-fun tp!387601 () Bool)

(declare-fun tp!387599 () Bool)

(assert (=> b!1339419 (= e!857760 (and tp!387601 tp!387599))))

(declare-fun b!1339421 () Bool)

(declare-fun tp!387600 () Bool)

(declare-fun tp!387598 () Bool)

(assert (=> b!1339421 (= e!857760 (and tp!387600 tp!387598))))

(assert (=> b!1337337 (= tp!386940 e!857760)))

(declare-fun b!1339418 () Bool)

(assert (=> b!1339418 (= e!857760 tp_is_empty!6679)))

(declare-fun b!1339420 () Bool)

(declare-fun tp!387602 () Bool)

(assert (=> b!1339420 (= e!857760 tp!387602)))

(assert (= (and b!1337337 ((_ is ElementMatch!3681) (regTwo!7874 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339418))

(assert (= (and b!1337337 ((_ is Concat!6139) (regTwo!7874 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339419))

(assert (= (and b!1337337 ((_ is Star!3681) (regTwo!7874 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339420))

(assert (= (and b!1337337 ((_ is Union!3681) (regTwo!7874 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339421))

(declare-fun b!1339423 () Bool)

(declare-fun e!857761 () Bool)

(declare-fun tp!387606 () Bool)

(declare-fun tp!387604 () Bool)

(assert (=> b!1339423 (= e!857761 (and tp!387606 tp!387604))))

(declare-fun b!1339425 () Bool)

(declare-fun tp!387605 () Bool)

(declare-fun tp!387603 () Bool)

(assert (=> b!1339425 (= e!857761 (and tp!387605 tp!387603))))

(assert (=> b!1337324 (= tp!386923 e!857761)))

(declare-fun b!1339422 () Bool)

(assert (=> b!1339422 (= e!857761 tp_is_empty!6679)))

(declare-fun b!1339424 () Bool)

(declare-fun tp!387607 () Bool)

(assert (=> b!1339424 (= e!857761 tp!387607)))

(assert (= (and b!1337324 ((_ is ElementMatch!3681) (regOne!7875 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339422))

(assert (= (and b!1337324 ((_ is Concat!6139) (regOne!7875 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339423))

(assert (= (and b!1337324 ((_ is Star!3681) (regOne!7875 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339424))

(assert (= (and b!1337324 ((_ is Union!3681) (regOne!7875 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339425))

(declare-fun b!1339427 () Bool)

(declare-fun e!857762 () Bool)

(declare-fun tp!387611 () Bool)

(declare-fun tp!387609 () Bool)

(assert (=> b!1339427 (= e!857762 (and tp!387611 tp!387609))))

(declare-fun b!1339429 () Bool)

(declare-fun tp!387610 () Bool)

(declare-fun tp!387608 () Bool)

(assert (=> b!1339429 (= e!857762 (and tp!387610 tp!387608))))

(assert (=> b!1337324 (= tp!386921 e!857762)))

(declare-fun b!1339426 () Bool)

(assert (=> b!1339426 (= e!857762 tp_is_empty!6679)))

(declare-fun b!1339428 () Bool)

(declare-fun tp!387612 () Bool)

(assert (=> b!1339428 (= e!857762 tp!387612)))

(assert (= (and b!1337324 ((_ is ElementMatch!3681) (regTwo!7875 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339426))

(assert (= (and b!1337324 ((_ is Concat!6139) (regTwo!7875 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339427))

(assert (= (and b!1337324 ((_ is Star!3681) (regTwo!7875 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339428))

(assert (= (and b!1337324 ((_ is Union!3681) (regTwo!7875 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339429))

(declare-fun b!1339431 () Bool)

(declare-fun e!857763 () Bool)

(declare-fun tp!387616 () Bool)

(declare-fun tp!387614 () Bool)

(assert (=> b!1339431 (= e!857763 (and tp!387616 tp!387614))))

(declare-fun b!1339433 () Bool)

(declare-fun tp!387615 () Bool)

(declare-fun tp!387613 () Bool)

(assert (=> b!1339433 (= e!857763 (and tp!387615 tp!387613))))

(assert (=> b!1337302 (= tp!386904 e!857763)))

(declare-fun b!1339430 () Bool)

(assert (=> b!1339430 (= e!857763 tp_is_empty!6679)))

(declare-fun b!1339432 () Bool)

(declare-fun tp!387617 () Bool)

(assert (=> b!1339432 (= e!857763 tp!387617)))

(assert (= (and b!1337302 ((_ is ElementMatch!3681) (reg!4010 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339430))

(assert (= (and b!1337302 ((_ is Concat!6139) (reg!4010 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339431))

(assert (= (and b!1337302 ((_ is Star!3681) (reg!4010 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339432))

(assert (= (and b!1337302 ((_ is Union!3681) (reg!4010 (regTwo!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339433))

(declare-fun b!1339435 () Bool)

(declare-fun e!857764 () Bool)

(declare-fun tp!387621 () Bool)

(declare-fun tp!387619 () Bool)

(assert (=> b!1339435 (= e!857764 (and tp!387621 tp!387619))))

(declare-fun b!1339437 () Bool)

(declare-fun tp!387620 () Bool)

(declare-fun tp!387618 () Bool)

(assert (=> b!1339437 (= e!857764 (and tp!387620 tp!387618))))

(assert (=> b!1337293 (= tp!386893 e!857764)))

(declare-fun b!1339434 () Bool)

(assert (=> b!1339434 (= e!857764 tp_is_empty!6679)))

(declare-fun b!1339436 () Bool)

(declare-fun tp!387622 () Bool)

(assert (=> b!1339436 (= e!857764 tp!387622)))

(assert (= (and b!1337293 ((_ is ElementMatch!3681) (regOne!7874 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339434))

(assert (= (and b!1337293 ((_ is Concat!6139) (regOne!7874 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339435))

(assert (= (and b!1337293 ((_ is Star!3681) (regOne!7874 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339436))

(assert (= (and b!1337293 ((_ is Union!3681) (regOne!7874 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339437))

(declare-fun b!1339439 () Bool)

(declare-fun e!857765 () Bool)

(declare-fun tp!387626 () Bool)

(declare-fun tp!387624 () Bool)

(assert (=> b!1339439 (= e!857765 (and tp!387626 tp!387624))))

(declare-fun b!1339441 () Bool)

(declare-fun tp!387625 () Bool)

(declare-fun tp!387623 () Bool)

(assert (=> b!1339441 (= e!857765 (and tp!387625 tp!387623))))

(assert (=> b!1337293 (= tp!386891 e!857765)))

(declare-fun b!1339438 () Bool)

(assert (=> b!1339438 (= e!857765 tp_is_empty!6679)))

(declare-fun b!1339440 () Bool)

(declare-fun tp!387627 () Bool)

(assert (=> b!1339440 (= e!857765 tp!387627)))

(assert (= (and b!1337293 ((_ is ElementMatch!3681) (regTwo!7874 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339438))

(assert (= (and b!1337293 ((_ is Concat!6139) (regTwo!7874 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339439))

(assert (= (and b!1337293 ((_ is Star!3681) (regTwo!7874 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339440))

(assert (= (and b!1337293 ((_ is Union!3681) (regTwo!7874 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339441))

(declare-fun b!1339443 () Bool)

(declare-fun e!857766 () Bool)

(declare-fun tp!387631 () Bool)

(declare-fun tp!387629 () Bool)

(assert (=> b!1339443 (= e!857766 (and tp!387631 tp!387629))))

(declare-fun b!1339445 () Bool)

(declare-fun tp!387630 () Bool)

(declare-fun tp!387628 () Bool)

(assert (=> b!1339445 (= e!857766 (and tp!387630 tp!387628))))

(assert (=> b!1337339 (= tp!386941 e!857766)))

(declare-fun b!1339442 () Bool)

(assert (=> b!1339442 (= e!857766 tp_is_empty!6679)))

(declare-fun b!1339444 () Bool)

(declare-fun tp!387632 () Bool)

(assert (=> b!1339444 (= e!857766 tp!387632)))

(assert (= (and b!1337339 ((_ is ElementMatch!3681) (regOne!7875 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339442))

(assert (= (and b!1337339 ((_ is Concat!6139) (regOne!7875 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339443))

(assert (= (and b!1337339 ((_ is Star!3681) (regOne!7875 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339444))

(assert (= (and b!1337339 ((_ is Union!3681) (regOne!7875 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339445))

(declare-fun b!1339447 () Bool)

(declare-fun e!857767 () Bool)

(declare-fun tp!387636 () Bool)

(declare-fun tp!387634 () Bool)

(assert (=> b!1339447 (= e!857767 (and tp!387636 tp!387634))))

(declare-fun b!1339449 () Bool)

(declare-fun tp!387635 () Bool)

(declare-fun tp!387633 () Bool)

(assert (=> b!1339449 (= e!857767 (and tp!387635 tp!387633))))

(assert (=> b!1337339 (= tp!386939 e!857767)))

(declare-fun b!1339446 () Bool)

(assert (=> b!1339446 (= e!857767 tp_is_empty!6679)))

(declare-fun b!1339448 () Bool)

(declare-fun tp!387637 () Bool)

(assert (=> b!1339448 (= e!857767 tp!387637)))

(assert (= (and b!1337339 ((_ is ElementMatch!3681) (regTwo!7875 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339446))

(assert (= (and b!1337339 ((_ is Concat!6139) (regTwo!7875 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339447))

(assert (= (and b!1337339 ((_ is Star!3681) (regTwo!7875 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339448))

(assert (= (and b!1337339 ((_ is Union!3681) (regTwo!7875 (regTwo!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339449))

(declare-fun b!1339451 () Bool)

(declare-fun e!857768 () Bool)

(declare-fun tp!387641 () Bool)

(declare-fun tp!387639 () Bool)

(assert (=> b!1339451 (= e!857768 (and tp!387641 tp!387639))))

(declare-fun b!1339453 () Bool)

(declare-fun tp!387640 () Bool)

(declare-fun tp!387638 () Bool)

(assert (=> b!1339453 (= e!857768 (and tp!387640 tp!387638))))

(assert (=> b!1337322 (= tp!386924 e!857768)))

(declare-fun b!1339450 () Bool)

(assert (=> b!1339450 (= e!857768 tp_is_empty!6679)))

(declare-fun b!1339452 () Bool)

(declare-fun tp!387642 () Bool)

(assert (=> b!1339452 (= e!857768 tp!387642)))

(assert (= (and b!1337322 ((_ is ElementMatch!3681) (regOne!7874 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339450))

(assert (= (and b!1337322 ((_ is Concat!6139) (regOne!7874 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339451))

(assert (= (and b!1337322 ((_ is Star!3681) (regOne!7874 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339452))

(assert (= (and b!1337322 ((_ is Union!3681) (regOne!7874 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339453))

(declare-fun b!1339455 () Bool)

(declare-fun e!857769 () Bool)

(declare-fun tp!387646 () Bool)

(declare-fun tp!387644 () Bool)

(assert (=> b!1339455 (= e!857769 (and tp!387646 tp!387644))))

(declare-fun b!1339457 () Bool)

(declare-fun tp!387645 () Bool)

(declare-fun tp!387643 () Bool)

(assert (=> b!1339457 (= e!857769 (and tp!387645 tp!387643))))

(assert (=> b!1337322 (= tp!386922 e!857769)))

(declare-fun b!1339454 () Bool)

(assert (=> b!1339454 (= e!857769 tp_is_empty!6679)))

(declare-fun b!1339456 () Bool)

(declare-fun tp!387647 () Bool)

(assert (=> b!1339456 (= e!857769 tp!387647)))

(assert (= (and b!1337322 ((_ is ElementMatch!3681) (regTwo!7874 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339454))

(assert (= (and b!1337322 ((_ is Concat!6139) (regTwo!7874 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339455))

(assert (= (and b!1337322 ((_ is Star!3681) (regTwo!7874 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339456))

(assert (= (and b!1337322 ((_ is Union!3681) (regTwo!7874 (regTwo!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339457))

(declare-fun b!1339459 () Bool)

(declare-fun e!857770 () Bool)

(declare-fun tp!387651 () Bool)

(declare-fun tp!387649 () Bool)

(assert (=> b!1339459 (= e!857770 (and tp!387651 tp!387649))))

(declare-fun b!1339461 () Bool)

(declare-fun tp!387650 () Bool)

(declare-fun tp!387648 () Bool)

(assert (=> b!1339461 (= e!857770 (and tp!387650 tp!387648))))

(assert (=> b!1337346 (= tp!386953 e!857770)))

(declare-fun b!1339458 () Bool)

(assert (=> b!1339458 (= e!857770 tp_is_empty!6679)))

(declare-fun b!1339460 () Bool)

(declare-fun tp!387652 () Bool)

(assert (=> b!1339460 (= e!857770 tp!387652)))

(assert (= (and b!1337346 ((_ is ElementMatch!3681) (reg!4010 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339458))

(assert (= (and b!1337346 ((_ is Concat!6139) (reg!4010 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339459))

(assert (= (and b!1337346 ((_ is Star!3681) (reg!4010 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339460))

(assert (= (and b!1337346 ((_ is Union!3681) (reg!4010 (regOne!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339461))

(declare-fun b!1339463 () Bool)

(declare-fun e!857771 () Bool)

(declare-fun tp!387656 () Bool)

(declare-fun tp!387654 () Bool)

(assert (=> b!1339463 (= e!857771 (and tp!387656 tp!387654))))

(declare-fun b!1339465 () Bool)

(declare-fun tp!387655 () Bool)

(declare-fun tp!387653 () Bool)

(assert (=> b!1339465 (= e!857771 (and tp!387655 tp!387653))))

(assert (=> b!1337353 (= tp!386960 e!857771)))

(declare-fun b!1339462 () Bool)

(assert (=> b!1339462 (= e!857771 tp_is_empty!6679)))

(declare-fun b!1339464 () Bool)

(declare-fun tp!387657 () Bool)

(assert (=> b!1339464 (= e!857771 tp!387657)))

(assert (= (and b!1337353 ((_ is ElementMatch!3681) (regex!2367 (h!19053 (t!119283 (t!119283 rules!2550)))))) b!1339462))

(assert (= (and b!1337353 ((_ is Concat!6139) (regex!2367 (h!19053 (t!119283 (t!119283 rules!2550)))))) b!1339463))

(assert (= (and b!1337353 ((_ is Star!3681) (regex!2367 (h!19053 (t!119283 (t!119283 rules!2550)))))) b!1339464))

(assert (= (and b!1337353 ((_ is Union!3681) (regex!2367 (h!19053 (t!119283 (t!119283 rules!2550)))))) b!1339465))

(declare-fun b!1339467 () Bool)

(declare-fun e!857772 () Bool)

(declare-fun tp!387661 () Bool)

(declare-fun tp!387659 () Bool)

(assert (=> b!1339467 (= e!857772 (and tp!387661 tp!387659))))

(declare-fun b!1339469 () Bool)

(declare-fun tp!387660 () Bool)

(declare-fun tp!387658 () Bool)

(assert (=> b!1339469 (= e!857772 (and tp!387660 tp!387658))))

(assert (=> b!1337273 (= tp!386868 e!857772)))

(declare-fun b!1339466 () Bool)

(assert (=> b!1339466 (= e!857772 tp_is_empty!6679)))

(declare-fun b!1339468 () Bool)

(declare-fun tp!387662 () Bool)

(assert (=> b!1339468 (= e!857772 tp!387662)))

(assert (= (and b!1337273 ((_ is ElementMatch!3681) (regOne!7874 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339466))

(assert (= (and b!1337273 ((_ is Concat!6139) (regOne!7874 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339467))

(assert (= (and b!1337273 ((_ is Star!3681) (regOne!7874 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339468))

(assert (= (and b!1337273 ((_ is Union!3681) (regOne!7874 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339469))

(declare-fun b!1339471 () Bool)

(declare-fun e!857773 () Bool)

(declare-fun tp!387666 () Bool)

(declare-fun tp!387664 () Bool)

(assert (=> b!1339471 (= e!857773 (and tp!387666 tp!387664))))

(declare-fun b!1339473 () Bool)

(declare-fun tp!387665 () Bool)

(declare-fun tp!387663 () Bool)

(assert (=> b!1339473 (= e!857773 (and tp!387665 tp!387663))))

(assert (=> b!1337273 (= tp!386866 e!857773)))

(declare-fun b!1339470 () Bool)

(assert (=> b!1339470 (= e!857773 tp_is_empty!6679)))

(declare-fun b!1339472 () Bool)

(declare-fun tp!387667 () Bool)

(assert (=> b!1339472 (= e!857773 tp!387667)))

(assert (= (and b!1337273 ((_ is ElementMatch!3681) (regTwo!7874 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339470))

(assert (= (and b!1337273 ((_ is Concat!6139) (regTwo!7874 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339471))

(assert (= (and b!1337273 ((_ is Star!3681) (regTwo!7874 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339472))

(assert (= (and b!1337273 ((_ is Union!3681) (regTwo!7874 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339473))

(declare-fun b!1339475 () Bool)

(declare-fun e!857774 () Bool)

(declare-fun tp!387671 () Bool)

(declare-fun tp!387669 () Bool)

(assert (=> b!1339475 (= e!857774 (and tp!387671 tp!387669))))

(declare-fun b!1339477 () Bool)

(declare-fun tp!387670 () Bool)

(declare-fun tp!387668 () Bool)

(assert (=> b!1339477 (= e!857774 (and tp!387670 tp!387668))))

(assert (=> b!1337275 (= tp!386867 e!857774)))

(declare-fun b!1339474 () Bool)

(assert (=> b!1339474 (= e!857774 tp_is_empty!6679)))

(declare-fun b!1339476 () Bool)

(declare-fun tp!387672 () Bool)

(assert (=> b!1339476 (= e!857774 tp!387672)))

(assert (= (and b!1337275 ((_ is ElementMatch!3681) (regOne!7875 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339474))

(assert (= (and b!1337275 ((_ is Concat!6139) (regOne!7875 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339475))

(assert (= (and b!1337275 ((_ is Star!3681) (regOne!7875 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339476))

(assert (= (and b!1337275 ((_ is Union!3681) (regOne!7875 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339477))

(declare-fun b!1339479 () Bool)

(declare-fun e!857775 () Bool)

(declare-fun tp!387676 () Bool)

(declare-fun tp!387674 () Bool)

(assert (=> b!1339479 (= e!857775 (and tp!387676 tp!387674))))

(declare-fun b!1339481 () Bool)

(declare-fun tp!387675 () Bool)

(declare-fun tp!387673 () Bool)

(assert (=> b!1339481 (= e!857775 (and tp!387675 tp!387673))))

(assert (=> b!1337275 (= tp!386865 e!857775)))

(declare-fun b!1339478 () Bool)

(assert (=> b!1339478 (= e!857775 tp_is_empty!6679)))

(declare-fun b!1339480 () Bool)

(declare-fun tp!387677 () Bool)

(assert (=> b!1339480 (= e!857775 tp!387677)))

(assert (= (and b!1337275 ((_ is ElementMatch!3681) (regTwo!7875 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339478))

(assert (= (and b!1337275 ((_ is Concat!6139) (regTwo!7875 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339479))

(assert (= (and b!1337275 ((_ is Star!3681) (regTwo!7875 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339480))

(assert (= (and b!1337275 ((_ is Union!3681) (regTwo!7875 (reg!4010 (regex!2367 (rule!4112 t1!34)))))) b!1339481))

(declare-fun b!1339483 () Bool)

(declare-fun e!857776 () Bool)

(declare-fun tp!387681 () Bool)

(declare-fun tp!387679 () Bool)

(assert (=> b!1339483 (= e!857776 (and tp!387681 tp!387679))))

(declare-fun b!1339485 () Bool)

(declare-fun tp!387680 () Bool)

(declare-fun tp!387678 () Bool)

(assert (=> b!1339485 (= e!857776 (and tp!387680 tp!387678))))

(assert (=> b!1337289 (= tp!386888 e!857776)))

(declare-fun b!1339482 () Bool)

(assert (=> b!1339482 (= e!857776 tp_is_empty!6679)))

(declare-fun b!1339484 () Bool)

(declare-fun tp!387682 () Bool)

(assert (=> b!1339484 (= e!857776 tp!387682)))

(assert (= (and b!1337289 ((_ is ElementMatch!3681) (regOne!7874 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339482))

(assert (= (and b!1337289 ((_ is Concat!6139) (regOne!7874 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339483))

(assert (= (and b!1337289 ((_ is Star!3681) (regOne!7874 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339484))

(assert (= (and b!1337289 ((_ is Union!3681) (regOne!7874 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339485))

(declare-fun b!1339487 () Bool)

(declare-fun e!857777 () Bool)

(declare-fun tp!387686 () Bool)

(declare-fun tp!387684 () Bool)

(assert (=> b!1339487 (= e!857777 (and tp!387686 tp!387684))))

(declare-fun b!1339489 () Bool)

(declare-fun tp!387685 () Bool)

(declare-fun tp!387683 () Bool)

(assert (=> b!1339489 (= e!857777 (and tp!387685 tp!387683))))

(assert (=> b!1337289 (= tp!386886 e!857777)))

(declare-fun b!1339486 () Bool)

(assert (=> b!1339486 (= e!857777 tp_is_empty!6679)))

(declare-fun b!1339488 () Bool)

(declare-fun tp!387687 () Bool)

(assert (=> b!1339488 (= e!857777 tp!387687)))

(assert (= (and b!1337289 ((_ is ElementMatch!3681) (regTwo!7874 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339486))

(assert (= (and b!1337289 ((_ is Concat!6139) (regTwo!7874 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339487))

(assert (= (and b!1337289 ((_ is Star!3681) (regTwo!7874 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339488))

(assert (= (and b!1337289 ((_ is Union!3681) (regTwo!7874 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339489))

(declare-fun b!1339491 () Bool)

(declare-fun e!857778 () Bool)

(declare-fun tp!387691 () Bool)

(declare-fun tp!387689 () Bool)

(assert (=> b!1339491 (= e!857778 (and tp!387691 tp!387689))))

(declare-fun b!1339493 () Bool)

(declare-fun tp!387690 () Bool)

(declare-fun tp!387688 () Bool)

(assert (=> b!1339493 (= e!857778 (and tp!387690 tp!387688))))

(assert (=> b!1337335 (= tp!386936 e!857778)))

(declare-fun b!1339490 () Bool)

(assert (=> b!1339490 (= e!857778 tp_is_empty!6679)))

(declare-fun b!1339492 () Bool)

(declare-fun tp!387692 () Bool)

(assert (=> b!1339492 (= e!857778 tp!387692)))

(assert (= (and b!1337335 ((_ is ElementMatch!3681) (regOne!7875 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339490))

(assert (= (and b!1337335 ((_ is Concat!6139) (regOne!7875 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339491))

(assert (= (and b!1337335 ((_ is Star!3681) (regOne!7875 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339492))

(assert (= (and b!1337335 ((_ is Union!3681) (regOne!7875 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339493))

(declare-fun b!1339495 () Bool)

(declare-fun e!857779 () Bool)

(declare-fun tp!387696 () Bool)

(declare-fun tp!387694 () Bool)

(assert (=> b!1339495 (= e!857779 (and tp!387696 tp!387694))))

(declare-fun b!1339497 () Bool)

(declare-fun tp!387695 () Bool)

(declare-fun tp!387693 () Bool)

(assert (=> b!1339497 (= e!857779 (and tp!387695 tp!387693))))

(assert (=> b!1337335 (= tp!386934 e!857779)))

(declare-fun b!1339494 () Bool)

(assert (=> b!1339494 (= e!857779 tp_is_empty!6679)))

(declare-fun b!1339496 () Bool)

(declare-fun tp!387697 () Bool)

(assert (=> b!1339496 (= e!857779 tp!387697)))

(assert (= (and b!1337335 ((_ is ElementMatch!3681) (regTwo!7875 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339494))

(assert (= (and b!1337335 ((_ is Concat!6139) (regTwo!7875 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339495))

(assert (= (and b!1337335 ((_ is Star!3681) (regTwo!7875 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339496))

(assert (= (and b!1337335 ((_ is Union!3681) (regTwo!7875 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339497))

(declare-fun b!1339498 () Bool)

(declare-fun e!857780 () Bool)

(declare-fun tp!387698 () Bool)

(assert (=> b!1339498 (= e!857780 (and tp_is_empty!6679 tp!387698))))

(assert (=> b!1337315 (= tp!386914 e!857780)))

(assert (= (and b!1337315 ((_ is Cons!13651) (innerList!4559 (xs!7214 (c!218765 (dynLambda!6009 (toChars!3461 (transformation!2367 (rule!4112 t1!34))) (value!77092 t1!34))))))) b!1339498))

(declare-fun b!1339500 () Bool)

(declare-fun e!857781 () Bool)

(declare-fun tp!387702 () Bool)

(declare-fun tp!387700 () Bool)

(assert (=> b!1339500 (= e!857781 (and tp!387702 tp!387700))))

(declare-fun b!1339502 () Bool)

(declare-fun tp!387701 () Bool)

(declare-fun tp!387699 () Bool)

(assert (=> b!1339502 (= e!857781 (and tp!387701 tp!387699))))

(assert (=> b!1337282 (= tp!386879 e!857781)))

(declare-fun b!1339499 () Bool)

(assert (=> b!1339499 (= e!857781 tp_is_empty!6679)))

(declare-fun b!1339501 () Bool)

(declare-fun tp!387703 () Bool)

(assert (=> b!1339501 (= e!857781 tp!387703)))

(assert (= (and b!1337282 ((_ is ElementMatch!3681) (reg!4010 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339499))

(assert (= (and b!1337282 ((_ is Concat!6139) (reg!4010 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339500))

(assert (= (and b!1337282 ((_ is Star!3681) (reg!4010 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339501))

(assert (= (and b!1337282 ((_ is Union!3681) (reg!4010 (regTwo!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339502))

(declare-fun b!1339504 () Bool)

(declare-fun e!857782 () Bool)

(declare-fun tp!387707 () Bool)

(declare-fun tp!387705 () Bool)

(assert (=> b!1339504 (= e!857782 (and tp!387707 tp!387705))))

(declare-fun b!1339506 () Bool)

(declare-fun tp!387706 () Bool)

(declare-fun tp!387704 () Bool)

(assert (=> b!1339506 (= e!857782 (and tp!387706 tp!387704))))

(assert (=> b!1337291 (= tp!386887 e!857782)))

(declare-fun b!1339503 () Bool)

(assert (=> b!1339503 (= e!857782 tp_is_empty!6679)))

(declare-fun b!1339505 () Bool)

(declare-fun tp!387708 () Bool)

(assert (=> b!1339505 (= e!857782 tp!387708)))

(assert (= (and b!1337291 ((_ is ElementMatch!3681) (regOne!7875 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339503))

(assert (= (and b!1337291 ((_ is Concat!6139) (regOne!7875 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339504))

(assert (= (and b!1337291 ((_ is Star!3681) (regOne!7875 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339505))

(assert (= (and b!1337291 ((_ is Union!3681) (regOne!7875 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339506))

(declare-fun b!1339508 () Bool)

(declare-fun e!857783 () Bool)

(declare-fun tp!387712 () Bool)

(declare-fun tp!387710 () Bool)

(assert (=> b!1339508 (= e!857783 (and tp!387712 tp!387710))))

(declare-fun b!1339510 () Bool)

(declare-fun tp!387711 () Bool)

(declare-fun tp!387709 () Bool)

(assert (=> b!1339510 (= e!857783 (and tp!387711 tp!387709))))

(assert (=> b!1337291 (= tp!386885 e!857783)))

(declare-fun b!1339507 () Bool)

(assert (=> b!1339507 (= e!857783 tp_is_empty!6679)))

(declare-fun b!1339509 () Bool)

(declare-fun tp!387713 () Bool)

(assert (=> b!1339509 (= e!857783 tp!387713)))

(assert (= (and b!1337291 ((_ is ElementMatch!3681) (regTwo!7875 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339507))

(assert (= (and b!1337291 ((_ is Concat!6139) (regTwo!7875 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339508))

(assert (= (and b!1337291 ((_ is Star!3681) (regTwo!7875 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339509))

(assert (= (and b!1337291 ((_ is Union!3681) (regTwo!7875 (regOne!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339510))

(declare-fun b!1339512 () Bool)

(declare-fun e!857784 () Bool)

(declare-fun tp!387717 () Bool)

(declare-fun tp!387715 () Bool)

(assert (=> b!1339512 (= e!857784 (and tp!387717 tp!387715))))

(declare-fun b!1339514 () Bool)

(declare-fun tp!387716 () Bool)

(declare-fun tp!387714 () Bool)

(assert (=> b!1339514 (= e!857784 (and tp!387716 tp!387714))))

(assert (=> b!1337319 (= tp!386920 e!857784)))

(declare-fun b!1339511 () Bool)

(assert (=> b!1339511 (= e!857784 tp_is_empty!6679)))

(declare-fun b!1339513 () Bool)

(declare-fun tp!387718 () Bool)

(assert (=> b!1339513 (= e!857784 tp!387718)))

(assert (= (and b!1337319 ((_ is ElementMatch!3681) (reg!4010 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339511))

(assert (= (and b!1337319 ((_ is Concat!6139) (reg!4010 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339512))

(assert (= (and b!1337319 ((_ is Star!3681) (reg!4010 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339513))

(assert (= (and b!1337319 ((_ is Union!3681) (reg!4010 (regOne!7875 (regex!2367 (h!19053 rules!2550)))))) b!1339514))

(declare-fun b!1339516 () Bool)

(declare-fun e!857785 () Bool)

(declare-fun tp!387722 () Bool)

(declare-fun tp!387720 () Bool)

(assert (=> b!1339516 (= e!857785 (and tp!387722 tp!387720))))

(declare-fun b!1339518 () Bool)

(declare-fun tp!387721 () Bool)

(declare-fun tp!387719 () Bool)

(assert (=> b!1339518 (= e!857785 (and tp!387721 tp!387719))))

(assert (=> b!1337328 (= tp!386928 e!857785)))

(declare-fun b!1339515 () Bool)

(assert (=> b!1339515 (= e!857785 tp_is_empty!6679)))

(declare-fun b!1339517 () Bool)

(declare-fun tp!387723 () Bool)

(assert (=> b!1339517 (= e!857785 tp!387723)))

(assert (= (and b!1337328 ((_ is ElementMatch!3681) (regOne!7875 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339515))

(assert (= (and b!1337328 ((_ is Concat!6139) (regOne!7875 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339516))

(assert (= (and b!1337328 ((_ is Star!3681) (regOne!7875 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339517))

(assert (= (and b!1337328 ((_ is Union!3681) (regOne!7875 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339518))

(declare-fun b!1339520 () Bool)

(declare-fun e!857786 () Bool)

(declare-fun tp!387727 () Bool)

(declare-fun tp!387725 () Bool)

(assert (=> b!1339520 (= e!857786 (and tp!387727 tp!387725))))

(declare-fun b!1339522 () Bool)

(declare-fun tp!387726 () Bool)

(declare-fun tp!387724 () Bool)

(assert (=> b!1339522 (= e!857786 (and tp!387726 tp!387724))))

(assert (=> b!1337328 (= tp!386926 e!857786)))

(declare-fun b!1339519 () Bool)

(assert (=> b!1339519 (= e!857786 tp_is_empty!6679)))

(declare-fun b!1339521 () Bool)

(declare-fun tp!387728 () Bool)

(assert (=> b!1339521 (= e!857786 tp!387728)))

(assert (= (and b!1337328 ((_ is ElementMatch!3681) (regTwo!7875 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339519))

(assert (= (and b!1337328 ((_ is Concat!6139) (regTwo!7875 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339520))

(assert (= (and b!1337328 ((_ is Star!3681) (regTwo!7875 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339521))

(assert (= (and b!1337328 ((_ is Union!3681) (regTwo!7875 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339522))

(declare-fun b!1339524 () Bool)

(declare-fun e!857787 () Bool)

(declare-fun tp!387732 () Bool)

(declare-fun tp!387730 () Bool)

(assert (=> b!1339524 (= e!857787 (and tp!387732 tp!387730))))

(declare-fun b!1339526 () Bool)

(declare-fun tp!387731 () Bool)

(declare-fun tp!387729 () Bool)

(assert (=> b!1339526 (= e!857787 (and tp!387731 tp!387729))))

(assert (=> b!1337334 (= tp!386938 e!857787)))

(declare-fun b!1339523 () Bool)

(assert (=> b!1339523 (= e!857787 tp_is_empty!6679)))

(declare-fun b!1339525 () Bool)

(declare-fun tp!387733 () Bool)

(assert (=> b!1339525 (= e!857787 tp!387733)))

(assert (= (and b!1337334 ((_ is ElementMatch!3681) (reg!4010 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339523))

(assert (= (and b!1337334 ((_ is Concat!6139) (reg!4010 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339524))

(assert (= (and b!1337334 ((_ is Star!3681) (reg!4010 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339525))

(assert (= (and b!1337334 ((_ is Union!3681) (reg!4010 (regOne!7874 (regex!2367 (h!19053 rules!2550)))))) b!1339526))

(declare-fun b!1339528 () Bool)

(declare-fun e!857788 () Bool)

(declare-fun tp!387737 () Bool)

(declare-fun tp!387735 () Bool)

(assert (=> b!1339528 (= e!857788 (and tp!387737 tp!387735))))

(declare-fun b!1339530 () Bool)

(declare-fun tp!387736 () Bool)

(declare-fun tp!387734 () Bool)

(assert (=> b!1339530 (= e!857788 (and tp!387736 tp!387734))))

(assert (=> b!1337297 (= tp!386898 e!857788)))

(declare-fun b!1339527 () Bool)

(assert (=> b!1339527 (= e!857788 tp_is_empty!6679)))

(declare-fun b!1339529 () Bool)

(declare-fun tp!387738 () Bool)

(assert (=> b!1339529 (= e!857788 tp!387738)))

(assert (= (and b!1337297 ((_ is ElementMatch!3681) (regOne!7874 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339527))

(assert (= (and b!1337297 ((_ is Concat!6139) (regOne!7874 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339528))

(assert (= (and b!1337297 ((_ is Star!3681) (regOne!7874 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339529))

(assert (= (and b!1337297 ((_ is Union!3681) (regOne!7874 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339530))

(declare-fun b!1339532 () Bool)

(declare-fun e!857789 () Bool)

(declare-fun tp!387742 () Bool)

(declare-fun tp!387740 () Bool)

(assert (=> b!1339532 (= e!857789 (and tp!387742 tp!387740))))

(declare-fun b!1339534 () Bool)

(declare-fun tp!387741 () Bool)

(declare-fun tp!387739 () Bool)

(assert (=> b!1339534 (= e!857789 (and tp!387741 tp!387739))))

(assert (=> b!1337297 (= tp!386896 e!857789)))

(declare-fun b!1339531 () Bool)

(assert (=> b!1339531 (= e!857789 tp_is_empty!6679)))

(declare-fun b!1339533 () Bool)

(declare-fun tp!387743 () Bool)

(assert (=> b!1339533 (= e!857789 tp!387743)))

(assert (= (and b!1337297 ((_ is ElementMatch!3681) (regTwo!7874 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339531))

(assert (= (and b!1337297 ((_ is Concat!6139) (regTwo!7874 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339532))

(assert (= (and b!1337297 ((_ is Star!3681) (regTwo!7874 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339533))

(assert (= (and b!1337297 ((_ is Union!3681) (regTwo!7874 (regOne!7874 (regex!2367 (rule!4112 t2!34)))))) b!1339534))

(declare-fun b!1339536 () Bool)

(declare-fun e!857790 () Bool)

(declare-fun tp!387747 () Bool)

(declare-fun tp!387745 () Bool)

(assert (=> b!1339536 (= e!857790 (and tp!387747 tp!387745))))

(declare-fun b!1339538 () Bool)

(declare-fun tp!387746 () Bool)

(declare-fun tp!387744 () Bool)

(assert (=> b!1339538 (= e!857790 (and tp!387746 tp!387744))))

(assert (=> b!1337343 (= tp!386946 e!857790)))

(declare-fun b!1339535 () Bool)

(assert (=> b!1339535 (= e!857790 tp_is_empty!6679)))

(declare-fun b!1339537 () Bool)

(declare-fun tp!387748 () Bool)

(assert (=> b!1339537 (= e!857790 tp!387748)))

(assert (= (and b!1337343 ((_ is ElementMatch!3681) (regOne!7875 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339535))

(assert (= (and b!1337343 ((_ is Concat!6139) (regOne!7875 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339536))

(assert (= (and b!1337343 ((_ is Star!3681) (regOne!7875 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339537))

(assert (= (and b!1337343 ((_ is Union!3681) (regOne!7875 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339538))

(declare-fun b!1339540 () Bool)

(declare-fun e!857791 () Bool)

(declare-fun tp!387752 () Bool)

(declare-fun tp!387750 () Bool)

(assert (=> b!1339540 (= e!857791 (and tp!387752 tp!387750))))

(declare-fun b!1339542 () Bool)

(declare-fun tp!387751 () Bool)

(declare-fun tp!387749 () Bool)

(assert (=> b!1339542 (= e!857791 (and tp!387751 tp!387749))))

(assert (=> b!1337343 (= tp!386944 e!857791)))

(declare-fun b!1339539 () Bool)

(assert (=> b!1339539 (= e!857791 tp_is_empty!6679)))

(declare-fun b!1339541 () Bool)

(declare-fun tp!387753 () Bool)

(assert (=> b!1339541 (= e!857791 tp!387753)))

(assert (= (and b!1337343 ((_ is ElementMatch!3681) (regTwo!7875 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339539))

(assert (= (and b!1337343 ((_ is Concat!6139) (regTwo!7875 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339540))

(assert (= (and b!1337343 ((_ is Star!3681) (regTwo!7875 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339541))

(assert (= (and b!1337343 ((_ is Union!3681) (regTwo!7875 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339542))

(declare-fun b!1339544 () Bool)

(declare-fun e!857792 () Bool)

(declare-fun tp!387757 () Bool)

(declare-fun tp!387755 () Bool)

(assert (=> b!1339544 (= e!857792 (and tp!387757 tp!387755))))

(declare-fun b!1339546 () Bool)

(declare-fun tp!387756 () Bool)

(declare-fun tp!387754 () Bool)

(assert (=> b!1339546 (= e!857792 (and tp!387756 tp!387754))))

(assert (=> b!1337326 (= tp!386929 e!857792)))

(declare-fun b!1339543 () Bool)

(assert (=> b!1339543 (= e!857792 tp_is_empty!6679)))

(declare-fun b!1339545 () Bool)

(declare-fun tp!387758 () Bool)

(assert (=> b!1339545 (= e!857792 tp!387758)))

(assert (= (and b!1337326 ((_ is ElementMatch!3681) (regOne!7874 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339543))

(assert (= (and b!1337326 ((_ is Concat!6139) (regOne!7874 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339544))

(assert (= (and b!1337326 ((_ is Star!3681) (regOne!7874 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339545))

(assert (= (and b!1337326 ((_ is Union!3681) (regOne!7874 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339546))

(declare-fun b!1339548 () Bool)

(declare-fun e!857793 () Bool)

(declare-fun tp!387762 () Bool)

(declare-fun tp!387760 () Bool)

(assert (=> b!1339548 (= e!857793 (and tp!387762 tp!387760))))

(declare-fun b!1339550 () Bool)

(declare-fun tp!387761 () Bool)

(declare-fun tp!387759 () Bool)

(assert (=> b!1339550 (= e!857793 (and tp!387761 tp!387759))))

(assert (=> b!1337326 (= tp!386927 e!857793)))

(declare-fun b!1339547 () Bool)

(assert (=> b!1339547 (= e!857793 tp_is_empty!6679)))

(declare-fun b!1339549 () Bool)

(declare-fun tp!387763 () Bool)

(assert (=> b!1339549 (= e!857793 tp!387763)))

(assert (= (and b!1337326 ((_ is ElementMatch!3681) (regTwo!7874 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339547))

(assert (= (and b!1337326 ((_ is Concat!6139) (regTwo!7874 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339548))

(assert (= (and b!1337326 ((_ is Star!3681) (regTwo!7874 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339549))

(assert (= (and b!1337326 ((_ is Union!3681) (regTwo!7874 (regex!2367 (h!19053 (t!119283 rules!2550)))))) b!1339550))

(declare-fun b!1339552 () Bool)

(declare-fun e!857794 () Bool)

(declare-fun tp!387767 () Bool)

(declare-fun tp!387765 () Bool)

(assert (=> b!1339552 (= e!857794 (and tp!387767 tp!387765))))

(declare-fun b!1339554 () Bool)

(declare-fun tp!387766 () Bool)

(declare-fun tp!387764 () Bool)

(assert (=> b!1339554 (= e!857794 (and tp!387766 tp!387764))))

(assert (=> b!1337350 (= tp!386958 e!857794)))

(declare-fun b!1339551 () Bool)

(assert (=> b!1339551 (= e!857794 tp_is_empty!6679)))

(declare-fun b!1339553 () Bool)

(declare-fun tp!387768 () Bool)

(assert (=> b!1339553 (= e!857794 tp!387768)))

(assert (= (and b!1337350 ((_ is ElementMatch!3681) (reg!4010 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339551))

(assert (= (and b!1337350 ((_ is Concat!6139) (reg!4010 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339552))

(assert (= (and b!1337350 ((_ is Star!3681) (reg!4010 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339553))

(assert (= (and b!1337350 ((_ is Union!3681) (reg!4010 (regTwo!7875 (regex!2367 (rule!4112 t2!34)))))) b!1339554))

(declare-fun b!1339556 () Bool)

(declare-fun e!857795 () Bool)

(declare-fun tp!387772 () Bool)

(declare-fun tp!387770 () Bool)

(assert (=> b!1339556 (= e!857795 (and tp!387772 tp!387770))))

(declare-fun b!1339558 () Bool)

(declare-fun tp!387771 () Bool)

(declare-fun tp!387769 () Bool)

(assert (=> b!1339558 (= e!857795 (and tp!387771 tp!387769))))

(assert (=> b!1337341 (= tp!386947 e!857795)))

(declare-fun b!1339555 () Bool)

(assert (=> b!1339555 (= e!857795 tp_is_empty!6679)))

(declare-fun b!1339557 () Bool)

(declare-fun tp!387773 () Bool)

(assert (=> b!1339557 (= e!857795 tp!387773)))

(assert (= (and b!1337341 ((_ is ElementMatch!3681) (regOne!7874 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339555))

(assert (= (and b!1337341 ((_ is Concat!6139) (regOne!7874 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339556))

(assert (= (and b!1337341 ((_ is Star!3681) (regOne!7874 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339557))

(assert (= (and b!1337341 ((_ is Union!3681) (regOne!7874 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339558))

(declare-fun b!1339560 () Bool)

(declare-fun e!857796 () Bool)

(declare-fun tp!387777 () Bool)

(declare-fun tp!387775 () Bool)

(assert (=> b!1339560 (= e!857796 (and tp!387777 tp!387775))))

(declare-fun b!1339562 () Bool)

(declare-fun tp!387776 () Bool)

(declare-fun tp!387774 () Bool)

(assert (=> b!1339562 (= e!857796 (and tp!387776 tp!387774))))

(assert (=> b!1337341 (= tp!386945 e!857796)))

(declare-fun b!1339559 () Bool)

(assert (=> b!1339559 (= e!857796 tp_is_empty!6679)))

(declare-fun b!1339561 () Bool)

(declare-fun tp!387778 () Bool)

(assert (=> b!1339561 (= e!857796 tp!387778)))

(assert (= (and b!1337341 ((_ is ElementMatch!3681) (regTwo!7874 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339559))

(assert (= (and b!1337341 ((_ is Concat!6139) (regTwo!7874 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339560))

(assert (= (and b!1337341 ((_ is Star!3681) (regTwo!7874 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339561))

(assert (= (and b!1337341 ((_ is Union!3681) (regTwo!7874 (reg!4010 (regex!2367 (h!19053 rules!2550)))))) b!1339562))

(declare-fun b!1339563 () Bool)

(declare-fun e!857797 () Bool)

(declare-fun tp!387779 () Bool)

(assert (=> b!1339563 (= e!857797 (and tp_is_empty!6679 tp!387779))))

(assert (=> b!1337304 (= tp!386905 e!857797)))

(assert (= (and b!1337304 ((_ is Cons!13651) (t!119282 (t!119282 (originalCharacters!3229 t2!34))))) b!1339563))

(declare-fun b!1339565 () Bool)

(declare-fun e!857798 () Bool)

(declare-fun tp!387783 () Bool)

(declare-fun tp!387781 () Bool)

(assert (=> b!1339565 (= e!857798 (and tp!387783 tp!387781))))

(declare-fun b!1339567 () Bool)

(declare-fun tp!387782 () Bool)

(declare-fun tp!387780 () Bool)

(assert (=> b!1339567 (= e!857798 (and tp!387782 tp!387780))))

(assert (=> b!1337279 (= tp!386872 e!857798)))

(declare-fun b!1339564 () Bool)

(assert (=> b!1339564 (= e!857798 tp_is_empty!6679)))

(declare-fun b!1339566 () Bool)

(declare-fun tp!387784 () Bool)

(assert (=> b!1339566 (= e!857798 tp!387784)))

(assert (= (and b!1337279 ((_ is ElementMatch!3681) (regOne!7875 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339564))

(assert (= (and b!1337279 ((_ is Concat!6139) (regOne!7875 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339565))

(assert (= (and b!1337279 ((_ is Star!3681) (regOne!7875 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339566))

(assert (= (and b!1337279 ((_ is Union!3681) (regOne!7875 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339567))

(declare-fun b!1339569 () Bool)

(declare-fun e!857799 () Bool)

(declare-fun tp!387788 () Bool)

(declare-fun tp!387786 () Bool)

(assert (=> b!1339569 (= e!857799 (and tp!387788 tp!387786))))

(declare-fun b!1339571 () Bool)

(declare-fun tp!387787 () Bool)

(declare-fun tp!387785 () Bool)

(assert (=> b!1339571 (= e!857799 (and tp!387787 tp!387785))))

(assert (=> b!1337279 (= tp!386870 e!857799)))

(declare-fun b!1339568 () Bool)

(assert (=> b!1339568 (= e!857799 tp_is_empty!6679)))

(declare-fun b!1339570 () Bool)

(declare-fun tp!387789 () Bool)

(assert (=> b!1339570 (= e!857799 tp!387789)))

(assert (= (and b!1337279 ((_ is ElementMatch!3681) (regTwo!7875 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339568))

(assert (= (and b!1337279 ((_ is Concat!6139) (regTwo!7875 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339569))

(assert (= (and b!1337279 ((_ is Star!3681) (regTwo!7875 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339570))

(assert (= (and b!1337279 ((_ is Union!3681) (regTwo!7875 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339571))

(declare-fun b!1339573 () Bool)

(declare-fun e!857800 () Bool)

(declare-fun tp!387793 () Bool)

(declare-fun tp!387791 () Bool)

(assert (=> b!1339573 (= e!857800 (and tp!387793 tp!387791))))

(declare-fun b!1339575 () Bool)

(declare-fun tp!387792 () Bool)

(declare-fun tp!387790 () Bool)

(assert (=> b!1339575 (= e!857800 (and tp!387792 tp!387790))))

(assert (=> b!1337286 (= tp!386884 e!857800)))

(declare-fun b!1339572 () Bool)

(assert (=> b!1339572 (= e!857800 tp_is_empty!6679)))

(declare-fun b!1339574 () Bool)

(declare-fun tp!387794 () Bool)

(assert (=> b!1339574 (= e!857800 tp!387794)))

(assert (= (and b!1337286 ((_ is ElementMatch!3681) (reg!4010 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339572))

(assert (= (and b!1337286 ((_ is Concat!6139) (reg!4010 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339573))

(assert (= (and b!1337286 ((_ is Star!3681) (reg!4010 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339574))

(assert (= (and b!1337286 ((_ is Union!3681) (reg!4010 (reg!4010 (regex!2367 (rule!4112 t2!34)))))) b!1339575))

(declare-fun b!1339577 () Bool)

(declare-fun e!857801 () Bool)

(declare-fun tp!387798 () Bool)

(declare-fun tp!387796 () Bool)

(assert (=> b!1339577 (= e!857801 (and tp!387798 tp!387796))))

(declare-fun b!1339579 () Bool)

(declare-fun tp!387797 () Bool)

(declare-fun tp!387795 () Bool)

(assert (=> b!1339579 (= e!857801 (and tp!387797 tp!387795))))

(assert (=> b!1337295 (= tp!386892 e!857801)))

(declare-fun b!1339576 () Bool)

(assert (=> b!1339576 (= e!857801 tp_is_empty!6679)))

(declare-fun b!1339578 () Bool)

(declare-fun tp!387799 () Bool)

(assert (=> b!1339578 (= e!857801 tp!387799)))

(assert (= (and b!1337295 ((_ is ElementMatch!3681) (regOne!7875 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339576))

(assert (= (and b!1337295 ((_ is Concat!6139) (regOne!7875 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339577))

(assert (= (and b!1337295 ((_ is Star!3681) (regOne!7875 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339578))

(assert (= (and b!1337295 ((_ is Union!3681) (regOne!7875 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339579))

(declare-fun b!1339581 () Bool)

(declare-fun e!857802 () Bool)

(declare-fun tp!387803 () Bool)

(declare-fun tp!387801 () Bool)

(assert (=> b!1339581 (= e!857802 (and tp!387803 tp!387801))))

(declare-fun b!1339583 () Bool)

(declare-fun tp!387802 () Bool)

(declare-fun tp!387800 () Bool)

(assert (=> b!1339583 (= e!857802 (and tp!387802 tp!387800))))

(assert (=> b!1337295 (= tp!386890 e!857802)))

(declare-fun b!1339580 () Bool)

(assert (=> b!1339580 (= e!857802 tp_is_empty!6679)))

(declare-fun b!1339582 () Bool)

(declare-fun tp!387804 () Bool)

(assert (=> b!1339582 (= e!857802 tp!387804)))

(assert (= (and b!1337295 ((_ is ElementMatch!3681) (regTwo!7875 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339580))

(assert (= (and b!1337295 ((_ is Concat!6139) (regTwo!7875 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339581))

(assert (= (and b!1337295 ((_ is Star!3681) (regTwo!7875 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339582))

(assert (= (and b!1337295 ((_ is Union!3681) (regTwo!7875 (regTwo!7874 (regex!2367 (rule!4112 t1!34)))))) b!1339583))

(declare-fun b!1339585 () Bool)

(declare-fun e!857803 () Bool)

(declare-fun tp!387808 () Bool)

(declare-fun tp!387806 () Bool)

(assert (=> b!1339585 (= e!857803 (and tp!387808 tp!387806))))

(declare-fun b!1339587 () Bool)

(declare-fun tp!387807 () Bool)

(declare-fun tp!387805 () Bool)

(assert (=> b!1339587 (= e!857803 (and tp!387807 tp!387805))))

(assert (=> b!1337277 (= tp!386873 e!857803)))

(declare-fun b!1339584 () Bool)

(assert (=> b!1339584 (= e!857803 tp_is_empty!6679)))

(declare-fun b!1339586 () Bool)

(declare-fun tp!387809 () Bool)

(assert (=> b!1339586 (= e!857803 tp!387809)))

(assert (= (and b!1337277 ((_ is ElementMatch!3681) (regOne!7874 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339584))

(assert (= (and b!1337277 ((_ is Concat!6139) (regOne!7874 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339585))

(assert (= (and b!1337277 ((_ is Star!3681) (regOne!7874 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339586))

(assert (= (and b!1337277 ((_ is Union!3681) (regOne!7874 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339587))

(declare-fun b!1339589 () Bool)

(declare-fun e!857804 () Bool)

(declare-fun tp!387813 () Bool)

(declare-fun tp!387811 () Bool)

(assert (=> b!1339589 (= e!857804 (and tp!387813 tp!387811))))

(declare-fun b!1339591 () Bool)

(declare-fun tp!387812 () Bool)

(declare-fun tp!387810 () Bool)

(assert (=> b!1339591 (= e!857804 (and tp!387812 tp!387810))))

(assert (=> b!1337277 (= tp!386871 e!857804)))

(declare-fun b!1339588 () Bool)

(assert (=> b!1339588 (= e!857804 tp_is_empty!6679)))

(declare-fun b!1339590 () Bool)

(declare-fun tp!387814 () Bool)

(assert (=> b!1339590 (= e!857804 tp!387814)))

(assert (= (and b!1337277 ((_ is ElementMatch!3681) (regTwo!7874 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339588))

(assert (= (and b!1337277 ((_ is Concat!6139) (regTwo!7874 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339589))

(assert (= (and b!1337277 ((_ is Star!3681) (regTwo!7874 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339590))

(assert (= (and b!1337277 ((_ is Union!3681) (regTwo!7874 (regOne!7875 (regex!2367 (rule!4112 t1!34)))))) b!1339591))

(declare-fun b_lambda!39525 () Bool)

(assert (= b_lambda!39523 (or d!376534 b_lambda!39525)))

(declare-fun bs!332220 () Bool)

(declare-fun d!377814 () Bool)

(assert (= bs!332220 (and d!377814 d!376534)))

(assert (=> bs!332220 (= (dynLambda!6024 lambda!56037 (h!19058 (map!3011 rules!2550 lambda!56016))) (validRegex!1585 (h!19058 (map!3011 rules!2550 lambda!56016))))))

(declare-fun m!1497807 () Bool)

(assert (=> bs!332220 m!1497807))

(assert (=> b!1339226 d!377814))

(declare-fun b_lambda!39527 () Bool)

(assert (= b_lambda!39487 (or d!376466 b_lambda!39527)))

(declare-fun bs!332221 () Bool)

(declare-fun d!377816 () Bool)

(assert (= bs!332221 (and d!377816 d!376466)))

(assert (=> bs!332221 (= (dynLambda!6012 lambda!56016 (h!19053 (t!119283 rules!2550))) (regex!2367 (h!19053 (t!119283 rules!2550))))))

(assert (=> b!1337547 d!377816))

(declare-fun b_lambda!39529 () Bool)

(assert (= b_lambda!39497 (or d!376530 b_lambda!39529)))

(declare-fun bs!332222 () Bool)

(declare-fun d!377818 () Bool)

(assert (= bs!332222 (and d!377818 d!376530)))

(assert (=> bs!332222 (= (dynLambda!6024 lambda!56034 (h!19058 (map!3011 rules!2550 lambda!56033))) (validRegex!1585 (h!19058 (map!3011 rules!2550 lambda!56033))))))

(declare-fun m!1497809 () Bool)

(assert (=> bs!332222 m!1497809))

(assert (=> b!1338436 d!377818))

(declare-fun b_lambda!39531 () Bool)

(assert (= b_lambda!39461 (or (and b!1337354 b_free!32565 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 (t!119283 rules!2550))))) (toChars!3461 (transformation!2367 (rule!4112 t2!34))))) (and b!1339273 b_free!32573 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 (t!119283 (t!119283 rules!2550)))))) (toChars!3461 (transformation!2367 (rule!4112 t2!34))))) b_lambda!39531)))

(declare-fun b_lambda!39533 () Bool)

(assert (= b_lambda!39463 (or (and b!1337354 b_free!32565 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 (t!119283 rules!2550))))) (toChars!3461 (transformation!2367 (rule!4112 t1!34))))) (and b!1339273 b_free!32573 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 (t!119283 (t!119283 rules!2550)))))) (toChars!3461 (transformation!2367 (rule!4112 t1!34))))) b_lambda!39533)))

(declare-fun b_lambda!39535 () Bool)

(assert (= b_lambda!39465 (or (and b!1337354 b_free!32565 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 (t!119283 rules!2550))))) (toChars!3461 (transformation!2367 (rule!4112 t1!34))))) (and b!1339273 b_free!32573 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 (t!119283 (t!119283 rules!2550)))))) (toChars!3461 (transformation!2367 (rule!4112 t1!34))))) b_lambda!39535)))

(declare-fun b_lambda!39537 () Bool)

(assert (= b_lambda!39499 (or d!376530 b_lambda!39537)))

(declare-fun bs!332223 () Bool)

(declare-fun d!377820 () Bool)

(assert (= bs!332223 (and d!377820 d!376530)))

(assert (=> bs!332223 (= (dynLambda!6012 lambda!56033 (h!19053 rules!2550)) (regex!2367 (h!19053 rules!2550)))))

(assert (=> b!1338439 d!377820))

(declare-fun b_lambda!39539 () Bool)

(assert (= b_lambda!39521 (or d!376832 b_lambda!39539)))

(declare-fun bs!332224 () Bool)

(declare-fun d!377822 () Bool)

(assert (= bs!332224 (and d!377822 d!376832)))

(assert (=> bs!332224 (= (dynLambda!6026 lambda!56069 (h!19053 rules!2550)) (ruleValid!580 thiss!19762 (h!19053 rules!2550)))))

(assert (=> bs!332224 m!1496589))

(assert (=> b!1339199 d!377822))

(declare-fun b_lambda!39541 () Bool)

(assert (= b_lambda!39469 (or (and b!1337354 b_free!32565 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 (t!119283 rules!2550))))) (toChars!3461 (transformation!2367 (rule!4112 t2!34))))) (and b!1339273 b_free!32573 (= (toChars!3461 (transformation!2367 (h!19053 (t!119283 (t!119283 (t!119283 rules!2550)))))) (toChars!3461 (transformation!2367 (rule!4112 t2!34))))) b_lambda!39541)))

(check-sat (not b!1339411) (not b!1338558) (not b!1339468) (not b!1339337) (not b!1338609) (not b!1339343) (not b!1339557) (not d!377744) (not b!1338548) (not d!377000) (not b!1337313) (not b!1338591) (not b!1339428) (not d!377790) (not b!1339267) (not bm!90283) (not d!377028) (not b!1339399) (not b!1337541) (not d!377608) (not d!377476) (not b!1339407) (not b!1339510) (not b!1339563) (not d!376970) (not b!1339161) (not b!1338491) (not b!1338511) (not b!1339194) (not b!1337607) (not b!1339498) (not b!1339579) (not b!1339270) (not b!1339160) (not b!1339432) (not bm!90416) (not b!1339518) (not bs!332222) (not b!1338319) (not b!1337533) (not b!1339467) (not b!1338326) (not bm!90338) (not b!1339395) (not b!1338521) (not b!1339307) (not d!377308) (not b!1339263) (not d!377360) (not b!1339183) (not b!1339441) (not b!1339365) (not b!1339140) (not d!377462) (not b!1339495) (not b!1339484) (not b!1338608) (not b!1338582) (not b!1339227) (not d!377532) (not bm!90404) (not b!1339314) (not d!377514) (not b!1337435) (not b!1339541) (not b!1339444) (not b!1337535) (not bm!90402) (not bm!90335) (not b!1339585) (not b!1339436) (not b!1339479) (not d!377392) (not b!1339393) (not d!377328) (not b!1339022) (not b!1339475) (not b!1339342) (not d!377604) (not b!1337508) (not b!1338130) (not b!1338213) (not b!1339526) (not b!1338395) (not b!1339300) (not b!1339392) (not b!1337897) (not b!1339504) (not b!1339215) (not d!377374) (not b!1339335) (not b!1338196) (not d!377440) (not b!1339512) (not b!1339562) (not b!1339204) (not d!377540) (not b!1338413) (not b!1337451) (not b!1338611) (not b!1339346) (not b!1339582) (not d!377470) (not d!377772) (not b!1339421) (not b!1338605) (not b!1339400) (not b!1339550) (not b!1338296) (not d!377734) (not b!1338565) (not b!1338444) (not b!1339339) (not b!1337543) (not bm!90386) (not b!1338427) (not b!1338414) (not b!1339388) (not b!1339318) (not b!1337572) (not d!376922) (not b!1339295) (not b!1339536) (not b!1338475) (not b!1339236) (not b!1337905) (not b!1337980) b_and!89495 (not d!377598) (not b!1338025) (not d!377560) (not b!1339293) (not b!1337582) (not b!1337978) (not b!1337569) (not b!1338100) (not b!1337532) (not b!1339439) b_and!89515 (not b!1339281) (not b!1339493) (not d!377610) (not b!1339277) (not b!1337699) (not b!1338194) (not b!1338391) (not b!1339309) (not b!1339419) (not bm!90403) (not d!377368) (not b!1338489) (not d!377452) (not b!1339325) (not b_next!33243) (not d!377742) (not d!377350) (not b!1339449) (not b!1338393) (not b!1339583) (not b!1337452) (not b!1338001) (not b!1339566) (not b!1338493) (not d!377338) (not b!1339471) (not b!1338519) (not b!1339181) (not b_next!33267) (not b!1339163) (not b!1339239) (not b!1339280) (not b!1339409) (not b!1339389) (not d!377758) (not b!1338105) (not d!377546) (not b!1338480) (not b!1339581) (not d!377798) (not b!1339573) (not b!1339315) b_and!89501 (not b!1339538) (not bm!90423) (not d!376990) (not b!1339480) (not b!1339260) (not d!376950) (not b!1337487) (not d!377764) (not b!1339424) (not b!1339255) (not b!1339363) (not d!377504) (not b!1339355) (not b!1339469) (not bm!90337) (not b!1339589) (not b!1339359) (not b!1339364) (not b!1339397) (not b!1338561) (not b!1337999) (not b!1339558) (not b!1337422) (not d!377456) (not bs!332224) (not b!1338487) (not b!1339560) (not bm!90349) (not b!1338552) (not b!1339351) (not d!377454) (not d!377332) (not b!1339578) (not b!1337593) (not b!1338592) (not d!377558) (not b!1338562) (not b!1339323) (not d!377294) b_and!89443 (not b!1338323) (not b!1338522) (not d!377248) (not b!1339513) (not b!1337436) (not b!1339141) (not b!1339228) (not b!1337700) (not b!1339570) (not b_lambda!39485) (not b!1339413) (not b!1339497) (not b!1338099) (not b!1338400) (not bm!90396) (not b!1338479) (not b!1339485) (not d!377384) (not d!377046) (not bm!90420) (not bm!90422) (not b!1337577) (not b!1338320) (not b_next!33247) (not d!377804) (not b!1339502) (not b!1337503) (not b!1338499) (not d!376940) (not b!1339552) (not b!1339171) (not bm!90387) (not d!377262) (not d!377570) (not b!1338092) (not b!1339301) (not bm!90400) (not b!1339481) (not b!1339330) (not b!1339533) (not b!1338610) (not b!1338606) (not d!377574) (not b!1338550) (not b!1339334) (not b!1339349) (not d!377286) (not b!1339372) (not b!1339272) (not bm!90346) (not b!1338567) (not b!1338553) (not b!1339166) (not b!1339276) (not b!1339357) (not b!1339590) (not b!1339391) (not bm!90380) (not b!1338585) (not bm!90398) (not b!1339546) (not b_next!33251) (not b!1338217) (not b!1338446) (not b!1338019) (not b!1339569) (not b!1339524) (not b!1339383) (not d!377564) (not b!1338510) (not d!377472) (not b!1338215) (not b!1339235) (not b!1339545) (not b!1337977) (not b!1338469) (not b!1337492) (not b!1337426) b_and!89509 (not b!1338593) (not b!1339586) (not b!1339368) (not b!1337578) (not d!377386) (not b!1339311) (not b!1339575) (not b!1338195) (not b!1337545) (not d!377370) (not b!1339534) (not b!1338448) (not b!1337947) (not b!1339310) (not b!1339375) (not b!1339460) (not d!377310) (not b!1339229) (not b!1337329) (not d!376924) (not b!1339376) (not b!1339561) (not d!377762) (not b!1339288) (not bm!90285) (not b!1338224) (not b_lambda!39529) (not d!376974) (not b!1337538) (not b!1339571) (not d!377536) (not d!376936) tp_is_empty!6679 (not bm!90369) (not d!376952) (not b!1338607) (not b!1338027) b_and!89497 (not d!377226) (not d!377600) (not d!377538) (not b!1339423) (not d!377366) (not b!1338555) (not d!377556) (not b!1339491) (not b!1339412) (not bm!90385) (not b!1338580) (not b!1337903) (not b!1339489) (not b!1339248) (not b!1339289) (not b!1337697) (not b!1338407) (not b!1338601) (not b!1337534) (not b!1338450) (not b!1338484) (not d!377812) (not b!1338430) (not b!1338598) (not b!1339463) (not b!1338152) (not b!1339456) (not b!1339574) (not b!1337648) (not b_next!33249) (not b!1339269) (not b!1337716) (not d!377026) (not b!1339425) (not b!1339250) (not b_lambda!39527) (not b!1337981) (not b!1339488) (not b!1339379) (not b!1339139) (not b!1339461) (not b!1339259) (not b!1339356) (not b!1339242) (not b!1339401) (not b!1339522) (not b!1338054) (not b!1338451) (not b!1339445) (not d!377214) (not d!377444) (not b_next!33245) (not b!1339302) (not d!377068) (not d!377778) (not b!1339177) (not b!1338142) (not b!1337628) (not b!1337576) (not b!1337506) (not b!1338518) (not b!1338299) (not b!1339567) (not b!1338345) (not b!1339427) (not b!1339521) (not b!1338218) (not b!1338231) (not d!377256) (not b!1339384) (not b!1339532) (not b!1339447) (not b!1339266) (not d!377584) (not b!1339380) (not b!1339403) (not d!376934) (not b!1339416) (not b!1339023) (not d!377518) (not b_next!33269) (not b!1339120) (not b!1339299) (not b!1339453) (not bm!90401) (not b!1339528) (not b!1339429) (not b!1339487) (not b!1337946) (not b!1339287) (not b!1338515) (not b!1339506) (not b!1338463) (not b!1338602) (not d!376976) (not b_lambda!39541) (not b!1338898) (not b!1338216) (not b!1339517) (not d!377760) (not b!1339525) (not d!377586) b_and!89507 (not d!377550) (not b!1339176) (not b_lambda!39535) (not b!1339319) (not b!1338509) (not b!1338486) (not b!1339459) (not b!1339275) (not d!377474) (not bs!332220) (not b!1339443) (not b!1339415) (not b!1337563) (not b!1337912) (not b!1339268) (not b!1339514) (not b!1338478) (not d!377320) (not b!1338439) (not b!1339404) (not b!1338295) (not d!377810) (not b!1339529) (not b!1339284) (not b!1338504) (not b!1338462) (not bm!90393) (not b!1338512) (not b!1339179) (not b!1339246) (not b!1339353) (not b_next!33275) (not b!1339549) (not b!1339477) (not b!1339476) (not b!1338588) (not b!1339553) (not b_next!33253) b_and!89493 (not b!1337504) (not b!1339159) (not b!1338002) (not b!1339341) (not b!1337979) (not d!377766) (not d!377314) (not b!1338249) (not d!377460) (not b!1339344) (not b!1339554) (not b!1338141) (not b!1338220) (not d!377394) (not bm!90289) (not b!1338508) (not b!1339508) (not b!1338106) (not b!1339435) (not b!1338612) (not b!1337579) (not b!1337948) (not b!1339540) (not b!1339262) (not d!377284) (not b!1339264) (not d!377450) (not b!1338343) (not b!1338284) (not b!1339451) (not b!1338502) (not b!1338022) (not b!1339347) (not d!376958) b_and!89439 (not bm!90390) (not bm!90288) (not b!1338318) (not d!376988) (not d!377544) (not b!1338895) (not d!377218) (not b!1339168) (not b!1338197) (not b!1339371) (not b!1338547) (not b!1339437) (not b!1338507) (not b!1338280) (not b!1339505) (not b!1338513) (not b!1339321) (not b!1339483) (not d!377582) (not bm!90379) (not b!1338000) (not b!1337976) (not bm!90426) (not b!1339279) (not b!1337484) (not b!1338212) (not b!1339303) (not b!1339433) (not b!1339202) (not d!377530) (not b!1337702) (not b!1338483) (not b!1337698) (not b!1338481) (not b!1337485) (not b_next!33261) (not d!377502) (not b!1339247) (not bm!90417) (not b!1339431) (not b!1338344) (not b!1339387) (not b!1338419) (not b!1338053) (not d!377580) (not d!377510) (not b!1339285) (not b!1339283) (not b_lambda!39467) (not b!1338495) (not d!376998) (not b!1337665) (not d!377326) (not d!377498) (not b!1339291) (not b_lambda!39525) (not b!1338497) (not b!1338293) (not b!1339587) (not d!376938) (not b!1339298) (not b!1339417) (not b!1339296) (not d!377434) (not b!1339565) b_and!89435 (not b!1339173) (not bm!90419) (not b_lambda!39483) (not b!1339361) (not bm!90280) (not b!1339174) (not d!377490) (not b_next!33277) (not b!1339216) (not b!1338445) (not b!1339345) (not d!376942) (not d!377808) (not b!1339237) (not b!1339258) (not d!377322) (not b!1339271) (not d!377732) (not b!1339251) (not b!1338577) (not b!1337536) (not d!376926) (not b!1337906) (not d!377566) (not b!1339297) (not b!1339348) (not d!377446) b_and!89499 (not b!1338613) (not b!1337547) (not b!1339329) (not b!1338289) (not b!1339306) (not b!1338283) (not d!376994) (not b!1338287) (not b!1339256) (not b!1339238) (not d!377516) (not b!1339496) (not b!1339548) (not b!1339169) (not b!1338482) (not b!1339500) (not b!1339327) (not b!1338528) (not b!1338437) (not b!1339472) (not b!1339338) (not b!1339377) (not b!1338223) (not b!1339333) (not b!1337553) (not b!1337720) (not b!1339542) (not b!1337701) (not b!1338222) (not b!1339217) (not bm!90425) (not d!377548) (not d!376984) (not b!1339530) (not b!1338221) (not b!1339591) (not b!1338603) (not b!1339024) (not d!377768) (not b!1339205) b_and!89517 (not b!1339114) (not b!1339326) (not b!1339420) (not bm!90343) (not d!376948) (not b!1339492) (not b!1339254) (not d!377378) (not b!1338524) (not b!1339509) (not b!1339457) (not b!1338477) (not b!1339305) (not b!1338327) (not b!1337570) (not b!1338230) (not b!1339516) (not b!1338132) (not b!1339331) (not b!1339130) (not b!1339455) (not b!1339292) (not b!1339231) (not b!1339240) (not d!377234) (not b!1339440) (not b_next!33259) (not d!376946) (not b!1339448) (not b!1337544) (not bm!90367) (not b!1337413) (not b!1338584) (not d!377312) (not b!1338303) (not b_lambda!39539) (not b!1338023) (not b!1339464) (not b!1338294) (not b!1339501) (not b!1338399) (not bm!90284) (not b!1339405) (not b!1339408) (not b!1339019) (not b!1339465) (not b!1337415) (not b!1339556) (not b!1338568) (not b!1339360) (not d!376968) (not b_lambda!39531) (not b!1339396) (not b!1337896) (not b!1339184) (not b!1339373) (not b!1338527) (not b!1339385) (not b!1339367) (not b!1337427) (not b!1339317) (not b_lambda!39533) (not b!1339170) (not b!1339537) (not b!1339520) (not b!1338899) (not b!1339577) (not d!377006) (not b!1337509) (not b!1339214) (not d!377052) (not b!1339322) (not b!1338597) (not b_lambda!39537) (not b!1338900) (not b!1339352) (not b!1339234) (not b!1339544) (not b!1338219) (not b!1338429) (not b!1339252) (not b!1339313) (not b!1339381) (not b!1339200) (not bm!90345) (not b!1337458) (not b!1339452) (not b!1339369) (not b!1338392) (not bm!90397) (not d!377342) (not b!1339473))
(check-sat b_and!89501 b_and!89443 (not b_next!33247) (not b_next!33251) b_and!89509 b_and!89497 (not b_next!33249) (not b_next!33245) (not b_next!33269) b_and!89507 b_and!89439 (not b_next!33261) b_and!89435 (not b_next!33277) b_and!89499 b_and!89517 (not b_next!33259) b_and!89495 b_and!89515 (not b_next!33267) (not b_next!33243) (not b_next!33275) (not b_next!33253) b_and!89493)
