; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119458 () Bool)

(assert start!119458)

(declare-fun b!1339729 () Bool)

(declare-fun b_free!32587 () Bool)

(declare-fun b_next!33291 () Bool)

(assert (=> b!1339729 (= b_free!32587 (not b_next!33291))))

(declare-fun tp!387882 () Bool)

(declare-fun b_and!89531 () Bool)

(assert (=> b!1339729 (= tp!387882 b_and!89531)))

(declare-fun b_free!32589 () Bool)

(declare-fun b_next!33293 () Bool)

(assert (=> b!1339729 (= b_free!32589 (not b_next!33293))))

(declare-fun tp!387884 () Bool)

(declare-fun b_and!89533 () Bool)

(assert (=> b!1339729 (= tp!387884 b_and!89533)))

(declare-fun b!1339738 () Bool)

(declare-fun b_free!32591 () Bool)

(declare-fun b_next!33295 () Bool)

(assert (=> b!1339738 (= b_free!32591 (not b_next!33295))))

(declare-fun tp!387877 () Bool)

(declare-fun b_and!89535 () Bool)

(assert (=> b!1339738 (= tp!387877 b_and!89535)))

(declare-fun b_free!32593 () Bool)

(declare-fun b_next!33297 () Bool)

(assert (=> b!1339738 (= b_free!32593 (not b_next!33297))))

(declare-fun tp!387886 () Bool)

(declare-fun b_and!89537 () Bool)

(assert (=> b!1339738 (= tp!387886 b_and!89537)))

(declare-fun b!1339734 () Bool)

(declare-fun b_free!32595 () Bool)

(declare-fun b_next!33299 () Bool)

(assert (=> b!1339734 (= b_free!32595 (not b_next!33299))))

(declare-fun tp!387875 () Bool)

(declare-fun b_and!89539 () Bool)

(assert (=> b!1339734 (= tp!387875 b_and!89539)))

(declare-fun b_free!32597 () Bool)

(declare-fun b_next!33301 () Bool)

(assert (=> b!1339734 (= b_free!32597 (not b_next!33301))))

(declare-fun tp!387880 () Bool)

(declare-fun b_and!89541 () Bool)

(assert (=> b!1339734 (= tp!387880 b_and!89541)))

(declare-fun b!1339727 () Bool)

(assert (=> b!1339727 true))

(assert (=> b!1339727 true))

(declare-fun b!1339718 () Bool)

(declare-fun res!603601 () Bool)

(declare-fun e!857927 () Bool)

(assert (=> b!1339718 (=> (not res!603601) (not e!857927))))

(declare-datatypes ((List!13730 0))(
  ( (Nil!13664) (Cons!13664 (h!19065 (_ BitVec 16)) (t!119375 List!13730)) )
))
(declare-datatypes ((TokenValue!2459 0))(
  ( (FloatLiteralValue!4918 (text!17658 List!13730)) (TokenValueExt!2458 (__x!8747 Int)) (Broken!12295 (value!77123 List!13730)) (Object!2524) (End!2459) (Def!2459) (Underscore!2459) (Match!2459) (Else!2459) (Error!2459) (Case!2459) (If!2459) (Extends!2459) (Abstract!2459) (Class!2459) (Val!2459) (DelimiterValue!4918 (del!2519 List!13730)) (KeywordValue!2465 (value!77124 List!13730)) (CommentValue!4918 (value!77125 List!13730)) (WhitespaceValue!4918 (value!77126 List!13730)) (IndentationValue!2459 (value!77127 List!13730)) (String!16530) (Int32!2459) (Broken!12296 (value!77128 List!13730)) (Boolean!2460) (Unit!19802) (OperatorValue!2462 (op!2519 List!13730)) (IdentifierValue!4918 (value!77129 List!13730)) (IdentifierValue!4919 (value!77130 List!13730)) (WhitespaceValue!4919 (value!77131 List!13730)) (True!4918) (False!4918) (Broken!12297 (value!77132 List!13730)) (Broken!12298 (value!77133 List!13730)) (True!4919) (RightBrace!2459) (RightBracket!2459) (Colon!2459) (Null!2459) (Comma!2459) (LeftBracket!2459) (False!4919) (LeftBrace!2459) (ImaginaryLiteralValue!2459 (text!17659 List!13730)) (StringLiteralValue!7377 (value!77134 List!13730)) (EOFValue!2459 (value!77135 List!13730)) (IdentValue!2459 (value!77136 List!13730)) (DelimiterValue!4919 (value!77137 List!13730)) (DedentValue!2459 (value!77138 List!13730)) (NewLineValue!2459 (value!77139 List!13730)) (IntegerValue!7377 (value!77140 (_ BitVec 32)) (text!17660 List!13730)) (IntegerValue!7378 (value!77141 Int) (text!17661 List!13730)) (Times!2459) (Or!2459) (Equal!2459) (Minus!2459) (Broken!12299 (value!77142 List!13730)) (And!2459) (Div!2459) (LessEqual!2459) (Mod!2459) (Concat!6142) (Not!2459) (Plus!2459) (SpaceValue!2459 (value!77143 List!13730)) (IntegerValue!7379 (value!77144 Int) (text!17662 List!13730)) (StringLiteralValue!7378 (text!17663 List!13730)) (FloatLiteralValue!4919 (text!17664 List!13730)) (BytesLiteralValue!2459 (value!77145 List!13730)) (CommentValue!4919 (value!77146 List!13730)) (StringLiteralValue!7379 (value!77147 List!13730)) (ErrorTokenValue!2459 (msg!2520 List!13730)) )
))
(declare-datatypes ((String!16531 0))(
  ( (String!16532 (value!77148 String)) )
))
(declare-datatypes ((C!7656 0))(
  ( (C!7657 (val!4388 Int)) )
))
(declare-datatypes ((List!13731 0))(
  ( (Nil!13665) (Cons!13665 (h!19066 C!7656) (t!119376 List!13731)) )
))
(declare-datatypes ((IArray!9011 0))(
  ( (IArray!9012 (innerList!4563 List!13731)) )
))
(declare-datatypes ((Conc!4503 0))(
  ( (Node!4503 (left!11725 Conc!4503) (right!12055 Conc!4503) (csize!9236 Int) (cheight!4714 Int)) (Leaf!6884 (xs!7222 IArray!9011) (csize!9237 Int)) (Empty!4503) )
))
(declare-datatypes ((BalanceConc!8946 0))(
  ( (BalanceConc!8947 (c!219497 Conc!4503)) )
))
(declare-datatypes ((Regex!3683 0))(
  ( (ElementMatch!3683 (c!219498 C!7656)) (Concat!6143 (regOne!7878 Regex!3683) (regTwo!7878 Regex!3683)) (EmptyExpr!3683) (Star!3683 (reg!4012 Regex!3683)) (EmptyLang!3683) (Union!3683 (regOne!7879 Regex!3683) (regTwo!7879 Regex!3683)) )
))
(declare-datatypes ((TokenValueInjection!4578 0))(
  ( (TokenValueInjection!4579 (toValue!3608 Int) (toChars!3467 Int)) )
))
(declare-datatypes ((Rule!4538 0))(
  ( (Rule!4539 (regex!2369 Regex!3683) (tag!2631 String!16531) (isSeparator!2369 Bool) (transformation!2369 TokenValueInjection!4578)) )
))
(declare-datatypes ((Token!4400 0))(
  ( (Token!4401 (value!77149 TokenValue!2459) (rule!4114 Rule!4538) (size!11133 Int) (originalCharacters!3231 List!13731)) )
))
(declare-fun t1!34 () Token!4400)

(declare-datatypes ((LexerInterface!2064 0))(
  ( (LexerInterfaceExt!2061 (__x!8748 Int)) (Lexer!2062) )
))
(declare-fun thiss!19762 () LexerInterface!2064)

(declare-datatypes ((List!13732 0))(
  ( (Nil!13666) (Cons!13666 (h!19067 Rule!4538) (t!119377 List!13732)) )
))
(declare-fun rules!2550 () List!13732)

(declare-fun t2!34 () Token!4400)

(declare-fun separableTokensPredicate!347 (LexerInterface!2064 Token!4400 Token!4400 List!13732) Bool)

(assert (=> b!1339718 (= res!603601 (not (separableTokensPredicate!347 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun res!603604 () Bool)

(declare-fun e!857930 () Bool)

(assert (=> start!119458 (=> (not res!603604) (not e!857930))))

(get-info :version)

(assert (=> start!119458 (= res!603604 ((_ is Lexer!2062) thiss!19762))))

(assert (=> start!119458 e!857930))

(assert (=> start!119458 true))

(declare-fun e!857925 () Bool)

(assert (=> start!119458 e!857925))

(declare-fun e!857926 () Bool)

(declare-fun inv!18004 (Token!4400) Bool)

(assert (=> start!119458 (and (inv!18004 t1!34) e!857926)))

(declare-fun e!857928 () Bool)

(assert (=> start!119458 (and (inv!18004 t2!34) e!857928)))

(declare-fun b!1339719 () Bool)

(declare-fun e!857919 () Bool)

(declare-fun e!857936 () Bool)

(assert (=> b!1339719 (= e!857919 e!857936)))

(declare-fun res!603606 () Bool)

(assert (=> b!1339719 (=> res!603606 e!857936)))

(declare-fun lt!443335 () List!13731)

(declare-fun lt!443336 () C!7656)

(declare-fun contains!2495 (List!13731 C!7656) Bool)

(assert (=> b!1339719 (= res!603606 (not (contains!2495 lt!443335 lt!443336)))))

(declare-fun lt!443333 () BalanceConc!8946)

(declare-fun apply!3211 (BalanceConc!8946 Int) C!7656)

(assert (=> b!1339719 (= lt!443336 (apply!3211 lt!443333 0))))

(declare-fun b!1339720 () Bool)

(declare-fun res!603610 () Bool)

(assert (=> b!1339720 (=> (not res!603610) (not e!857930))))

(declare-fun rulesProduceIndividualToken!1033 (LexerInterface!2064 List!13732 Token!4400) Bool)

(assert (=> b!1339720 (= res!603610 (rulesProduceIndividualToken!1033 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1339721 () Bool)

(declare-fun res!603599 () Bool)

(assert (=> b!1339721 (=> (not res!603599) (not e!857930))))

(declare-fun rulesInvariant!1934 (LexerInterface!2064 List!13732) Bool)

(assert (=> b!1339721 (= res!603599 (rulesInvariant!1934 thiss!19762 rules!2550))))

(declare-fun b!1339722 () Bool)

(declare-fun e!857918 () Bool)

(declare-fun tp!387883 () Bool)

(declare-fun e!857921 () Bool)

(declare-fun inv!18001 (String!16531) Bool)

(declare-fun inv!18005 (TokenValueInjection!4578) Bool)

(assert (=> b!1339722 (= e!857918 (and tp!387883 (inv!18001 (tag!2631 (rule!4114 t1!34))) (inv!18005 (transformation!2369 (rule!4114 t1!34))) e!857921))))

(declare-fun e!857935 () Bool)

(declare-fun tp!387879 () Bool)

(declare-fun e!857932 () Bool)

(declare-fun b!1339723 () Bool)

(assert (=> b!1339723 (= e!857932 (and tp!387879 (inv!18001 (tag!2631 (rule!4114 t2!34))) (inv!18005 (transformation!2369 (rule!4114 t2!34))) e!857935))))

(declare-fun b!1339724 () Bool)

(declare-fun tp!387876 () Bool)

(declare-fun inv!21 (TokenValue!2459) Bool)

(assert (=> b!1339724 (= e!857928 (and (inv!21 (value!77149 t2!34)) e!857932 tp!387876))))

(declare-fun b!1339725 () Bool)

(declare-fun lt!443332 () List!13731)

(assert (=> b!1339725 (= e!857936 (contains!2495 lt!443332 lt!443336))))

(declare-fun b!1339726 () Bool)

(declare-fun res!603611 () Bool)

(assert (=> b!1339726 (=> (not res!603611) (not e!857927))))

(declare-fun sepAndNonSepRulesDisjointChars!742 (List!13732 List!13732) Bool)

(assert (=> b!1339726 (= res!603611 (sepAndNonSepRulesDisjointChars!742 rules!2550 rules!2550))))

(declare-fun e!857933 () Bool)

(declare-fun e!857917 () Bool)

(assert (=> b!1339727 (= e!857933 (not e!857917))))

(declare-fun res!603605 () Bool)

(assert (=> b!1339727 (=> res!603605 e!857917)))

(declare-fun lambda!56109 () Int)

(declare-fun Exists!835 (Int) Bool)

(assert (=> b!1339727 (= res!603605 (not (Exists!835 lambda!56109)))))

(assert (=> b!1339727 (Exists!835 lambda!56109)))

(declare-datatypes ((Unit!19803 0))(
  ( (Unit!19804) )
))
(declare-fun lt!443338 () Unit!19803)

(declare-fun lt!443337 () Regex!3683)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!153 (Regex!3683 List!13731) Unit!19803)

(assert (=> b!1339727 (= lt!443338 (lemmaPrefixMatchThenExistsStringThatMatches!153 lt!443337 lt!443335))))

(declare-fun b!1339728 () Bool)

(declare-fun res!603603 () Bool)

(assert (=> b!1339728 (=> (not res!603603) (not e!857930))))

(declare-fun isEmpty!8157 (List!13732) Bool)

(assert (=> b!1339728 (= res!603603 (not (isEmpty!8157 rules!2550)))))

(declare-fun e!857924 () Bool)

(assert (=> b!1339729 (= e!857924 (and tp!387882 tp!387884))))

(declare-fun b!1339730 () Bool)

(assert (=> b!1339730 (= e!857927 e!857933)))

(declare-fun res!603600 () Bool)

(assert (=> b!1339730 (=> (not res!603600) (not e!857933))))

(declare-fun prefixMatch!192 (Regex!3683 List!13731) Bool)

(assert (=> b!1339730 (= res!603600 (prefixMatch!192 lt!443337 lt!443335))))

(declare-fun rulesRegex!252 (LexerInterface!2064 List!13732) Regex!3683)

(assert (=> b!1339730 (= lt!443337 (rulesRegex!252 thiss!19762 rules!2550))))

(declare-fun lt!443334 () BalanceConc!8946)

(declare-fun ++!3496 (List!13731 List!13731) List!13731)

(declare-fun list!5199 (BalanceConc!8946) List!13731)

(assert (=> b!1339730 (= lt!443335 (++!3496 (list!5199 lt!443333) (Cons!13665 (apply!3211 lt!443334 0) Nil!13665)))))

(declare-fun charsOf!1341 (Token!4400) BalanceConc!8946)

(assert (=> b!1339730 (= lt!443333 (charsOf!1341 t1!34))))

(declare-fun b!1339731 () Bool)

(assert (=> b!1339731 (= e!857917 e!857919)))

(declare-fun res!603602 () Bool)

(assert (=> b!1339731 (=> res!603602 e!857919)))

(declare-fun getSuffix!531 (List!13731 List!13731) List!13731)

(assert (=> b!1339731 (= res!603602 (not (= lt!443332 (++!3496 lt!443335 (getSuffix!531 lt!443332 lt!443335)))))))

(declare-fun pickWitness!138 (Int) List!13731)

(assert (=> b!1339731 (= lt!443332 (pickWitness!138 lambda!56109))))

(declare-fun tp!387881 () Bool)

(declare-fun e!857934 () Bool)

(declare-fun b!1339732 () Bool)

(assert (=> b!1339732 (= e!857934 (and tp!387881 (inv!18001 (tag!2631 (h!19067 rules!2550))) (inv!18005 (transformation!2369 (h!19067 rules!2550))) e!857924))))

(declare-fun b!1339733 () Bool)

(assert (=> b!1339733 (= e!857930 e!857927)))

(declare-fun res!603608 () Bool)

(assert (=> b!1339733 (=> (not res!603608) (not e!857927))))

(declare-fun size!11134 (BalanceConc!8946) Int)

(assert (=> b!1339733 (= res!603608 (> (size!11134 lt!443334) 0))))

(assert (=> b!1339733 (= lt!443334 (charsOf!1341 t2!34))))

(assert (=> b!1339734 (= e!857921 (and tp!387875 tp!387880))))

(declare-fun tp!387885 () Bool)

(declare-fun b!1339735 () Bool)

(assert (=> b!1339735 (= e!857926 (and (inv!21 (value!77149 t1!34)) e!857918 tp!387885))))

(declare-fun b!1339736 () Bool)

(declare-fun res!603607 () Bool)

(assert (=> b!1339736 (=> (not res!603607) (not e!857930))))

(assert (=> b!1339736 (= res!603607 (rulesProduceIndividualToken!1033 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1339737 () Bool)

(declare-fun tp!387878 () Bool)

(assert (=> b!1339737 (= e!857925 (and e!857934 tp!387878))))

(assert (=> b!1339738 (= e!857935 (and tp!387877 tp!387886))))

(declare-fun b!1339739 () Bool)

(declare-fun res!603609 () Bool)

(assert (=> b!1339739 (=> (not res!603609) (not e!857930))))

(assert (=> b!1339739 (= res!603609 (not (= (isSeparator!2369 (rule!4114 t1!34)) (isSeparator!2369 (rule!4114 t2!34)))))))

(assert (= (and start!119458 res!603604) b!1339728))

(assert (= (and b!1339728 res!603603) b!1339721))

(assert (= (and b!1339721 res!603599) b!1339720))

(assert (= (and b!1339720 res!603610) b!1339736))

(assert (= (and b!1339736 res!603607) b!1339739))

(assert (= (and b!1339739 res!603609) b!1339733))

(assert (= (and b!1339733 res!603608) b!1339726))

(assert (= (and b!1339726 res!603611) b!1339718))

(assert (= (and b!1339718 res!603601) b!1339730))

(assert (= (and b!1339730 res!603600) b!1339727))

(assert (= (and b!1339727 (not res!603605)) b!1339731))

(assert (= (and b!1339731 (not res!603602)) b!1339719))

(assert (= (and b!1339719 (not res!603606)) b!1339725))

(assert (= b!1339732 b!1339729))

(assert (= b!1339737 b!1339732))

(assert (= (and start!119458 ((_ is Cons!13666) rules!2550)) b!1339737))

(assert (= b!1339722 b!1339734))

(assert (= b!1339735 b!1339722))

(assert (= start!119458 b!1339735))

(assert (= b!1339723 b!1339738))

(assert (= b!1339724 b!1339723))

(assert (= start!119458 b!1339724))

(declare-fun m!1497875 () Bool)

(assert (=> b!1339727 m!1497875))

(assert (=> b!1339727 m!1497875))

(declare-fun m!1497877 () Bool)

(assert (=> b!1339727 m!1497877))

(declare-fun m!1497879 () Bool)

(assert (=> b!1339721 m!1497879))

(declare-fun m!1497881 () Bool)

(assert (=> b!1339723 m!1497881))

(declare-fun m!1497883 () Bool)

(assert (=> b!1339723 m!1497883))

(declare-fun m!1497885 () Bool)

(assert (=> b!1339732 m!1497885))

(declare-fun m!1497887 () Bool)

(assert (=> b!1339732 m!1497887))

(declare-fun m!1497889 () Bool)

(assert (=> b!1339731 m!1497889))

(assert (=> b!1339731 m!1497889))

(declare-fun m!1497891 () Bool)

(assert (=> b!1339731 m!1497891))

(declare-fun m!1497893 () Bool)

(assert (=> b!1339731 m!1497893))

(declare-fun m!1497895 () Bool)

(assert (=> b!1339728 m!1497895))

(declare-fun m!1497897 () Bool)

(assert (=> b!1339725 m!1497897))

(declare-fun m!1497899 () Bool)

(assert (=> b!1339733 m!1497899))

(declare-fun m!1497901 () Bool)

(assert (=> b!1339733 m!1497901))

(declare-fun m!1497903 () Bool)

(assert (=> b!1339736 m!1497903))

(declare-fun m!1497905 () Bool)

(assert (=> b!1339720 m!1497905))

(declare-fun m!1497907 () Bool)

(assert (=> b!1339722 m!1497907))

(declare-fun m!1497909 () Bool)

(assert (=> b!1339722 m!1497909))

(declare-fun m!1497911 () Bool)

(assert (=> b!1339735 m!1497911))

(declare-fun m!1497913 () Bool)

(assert (=> b!1339719 m!1497913))

(declare-fun m!1497915 () Bool)

(assert (=> b!1339719 m!1497915))

(declare-fun m!1497917 () Bool)

(assert (=> b!1339718 m!1497917))

(declare-fun m!1497919 () Bool)

(assert (=> b!1339726 m!1497919))

(declare-fun m!1497921 () Bool)

(assert (=> b!1339730 m!1497921))

(declare-fun m!1497923 () Bool)

(assert (=> b!1339730 m!1497923))

(declare-fun m!1497925 () Bool)

(assert (=> b!1339730 m!1497925))

(declare-fun m!1497927 () Bool)

(assert (=> b!1339730 m!1497927))

(declare-fun m!1497929 () Bool)

(assert (=> b!1339730 m!1497929))

(assert (=> b!1339730 m!1497925))

(declare-fun m!1497931 () Bool)

(assert (=> b!1339730 m!1497931))

(declare-fun m!1497933 () Bool)

(assert (=> b!1339724 m!1497933))

(declare-fun m!1497935 () Bool)

(assert (=> start!119458 m!1497935))

(declare-fun m!1497937 () Bool)

(assert (=> start!119458 m!1497937))

(check-sat (not b!1339735) b_and!89533 (not b!1339721) (not b!1339732) (not b!1339722) (not b_next!33297) (not b!1339727) (not b!1339736) (not b!1339720) b_and!89535 b_and!89531 (not b!1339723) (not b!1339737) b_and!89537 (not b!1339726) (not b!1339733) (not b_next!33295) (not b!1339719) (not b_next!33301) (not b_next!33293) b_and!89541 (not start!119458) (not b!1339724) (not b!1339731) (not b!1339730) (not b!1339728) (not b!1339718) b_and!89539 (not b!1339725) (not b_next!33299) (not b_next!33291))
(check-sat b_and!89537 (not b_next!33295) b_and!89533 (not b_next!33297) b_and!89535 b_and!89539 b_and!89531 (not b_next!33301) (not b_next!33293) b_and!89541 (not b_next!33299) (not b_next!33291))
(get-model)

(declare-fun d!377829 () Bool)

(declare-fun lt!443341 () Int)

(declare-fun size!11138 (List!13731) Int)

(assert (=> d!377829 (= lt!443341 (size!11138 (list!5199 lt!443334)))))

(declare-fun size!11139 (Conc!4503) Int)

(assert (=> d!377829 (= lt!443341 (size!11139 (c!219497 lt!443334)))))

(assert (=> d!377829 (= (size!11134 lt!443334) lt!443341)))

(declare-fun bs!332227 () Bool)

(assert (= bs!332227 d!377829))

(declare-fun m!1497939 () Bool)

(assert (=> bs!332227 m!1497939))

(assert (=> bs!332227 m!1497939))

(declare-fun m!1497941 () Bool)

(assert (=> bs!332227 m!1497941))

(declare-fun m!1497943 () Bool)

(assert (=> bs!332227 m!1497943))

(assert (=> b!1339733 d!377829))

(declare-fun d!377831 () Bool)

(declare-fun lt!443344 () BalanceConc!8946)

(assert (=> d!377831 (= (list!5199 lt!443344) (originalCharacters!3231 t2!34))))

(declare-fun dynLambda!6029 (Int TokenValue!2459) BalanceConc!8946)

(assert (=> d!377831 (= lt!443344 (dynLambda!6029 (toChars!3467 (transformation!2369 (rule!4114 t2!34))) (value!77149 t2!34)))))

(assert (=> d!377831 (= (charsOf!1341 t2!34) lt!443344)))

(declare-fun b_lambda!39543 () Bool)

(assert (=> (not b_lambda!39543) (not d!377831)))

(declare-fun t!119379 () Bool)

(declare-fun tb!70521 () Bool)

(assert (=> (and b!1339729 (= (toChars!3467 (transformation!2369 (h!19067 rules!2550))) (toChars!3467 (transformation!2369 (rule!4114 t2!34)))) t!119379) tb!70521))

(declare-fun b!1339748 () Bool)

(declare-fun e!857939 () Bool)

(declare-fun tp!387889 () Bool)

(declare-fun inv!18008 (Conc!4503) Bool)

(assert (=> b!1339748 (= e!857939 (and (inv!18008 (c!219497 (dynLambda!6029 (toChars!3467 (transformation!2369 (rule!4114 t2!34))) (value!77149 t2!34)))) tp!387889))))

(declare-fun result!85686 () Bool)

(declare-fun inv!18009 (BalanceConc!8946) Bool)

(assert (=> tb!70521 (= result!85686 (and (inv!18009 (dynLambda!6029 (toChars!3467 (transformation!2369 (rule!4114 t2!34))) (value!77149 t2!34))) e!857939))))

(assert (= tb!70521 b!1339748))

(declare-fun m!1497953 () Bool)

(assert (=> b!1339748 m!1497953))

(declare-fun m!1497955 () Bool)

(assert (=> tb!70521 m!1497955))

(assert (=> d!377831 t!119379))

(declare-fun b_and!89543 () Bool)

(assert (= b_and!89533 (and (=> t!119379 result!85686) b_and!89543)))

(declare-fun t!119381 () Bool)

(declare-fun tb!70523 () Bool)

(assert (=> (and b!1339738 (= (toChars!3467 (transformation!2369 (rule!4114 t2!34))) (toChars!3467 (transformation!2369 (rule!4114 t2!34)))) t!119381) tb!70523))

(declare-fun result!85690 () Bool)

(assert (= result!85690 result!85686))

(assert (=> d!377831 t!119381))

(declare-fun b_and!89545 () Bool)

(assert (= b_and!89537 (and (=> t!119381 result!85690) b_and!89545)))

(declare-fun tb!70525 () Bool)

(declare-fun t!119383 () Bool)

(assert (=> (and b!1339734 (= (toChars!3467 (transformation!2369 (rule!4114 t1!34))) (toChars!3467 (transformation!2369 (rule!4114 t2!34)))) t!119383) tb!70525))

(declare-fun result!85692 () Bool)

(assert (= result!85692 result!85686))

(assert (=> d!377831 t!119383))

(declare-fun b_and!89547 () Bool)

(assert (= b_and!89541 (and (=> t!119383 result!85692) b_and!89547)))

(declare-fun m!1497957 () Bool)

(assert (=> d!377831 m!1497957))

(declare-fun m!1497961 () Bool)

(assert (=> d!377831 m!1497961))

(assert (=> b!1339733 d!377831))

(declare-fun d!377839 () Bool)

(declare-fun res!603635 () Bool)

(declare-fun e!857953 () Bool)

(assert (=> d!377839 (=> (not res!603635) (not e!857953))))

(declare-fun isEmpty!8160 (List!13731) Bool)

(assert (=> d!377839 (= res!603635 (not (isEmpty!8160 (originalCharacters!3231 t1!34))))))

(assert (=> d!377839 (= (inv!18004 t1!34) e!857953)))

(declare-fun b!1339764 () Bool)

(declare-fun res!603636 () Bool)

(assert (=> b!1339764 (=> (not res!603636) (not e!857953))))

(assert (=> b!1339764 (= res!603636 (= (originalCharacters!3231 t1!34) (list!5199 (dynLambda!6029 (toChars!3467 (transformation!2369 (rule!4114 t1!34))) (value!77149 t1!34)))))))

(declare-fun b!1339765 () Bool)

(assert (=> b!1339765 (= e!857953 (= (size!11133 t1!34) (size!11138 (originalCharacters!3231 t1!34))))))

(assert (= (and d!377839 res!603635) b!1339764))

(assert (= (and b!1339764 res!603636) b!1339765))

(declare-fun b_lambda!39545 () Bool)

(assert (=> (not b_lambda!39545) (not b!1339764)))

(declare-fun t!119385 () Bool)

(declare-fun tb!70527 () Bool)

(assert (=> (and b!1339729 (= (toChars!3467 (transformation!2369 (h!19067 rules!2550))) (toChars!3467 (transformation!2369 (rule!4114 t1!34)))) t!119385) tb!70527))

(declare-fun b!1339767 () Bool)

(declare-fun e!857955 () Bool)

(declare-fun tp!387890 () Bool)

(assert (=> b!1339767 (= e!857955 (and (inv!18008 (c!219497 (dynLambda!6029 (toChars!3467 (transformation!2369 (rule!4114 t1!34))) (value!77149 t1!34)))) tp!387890))))

(declare-fun result!85694 () Bool)

(assert (=> tb!70527 (= result!85694 (and (inv!18009 (dynLambda!6029 (toChars!3467 (transformation!2369 (rule!4114 t1!34))) (value!77149 t1!34))) e!857955))))

(assert (= tb!70527 b!1339767))

(declare-fun m!1497981 () Bool)

(assert (=> b!1339767 m!1497981))

(declare-fun m!1497983 () Bool)

(assert (=> tb!70527 m!1497983))

(assert (=> b!1339764 t!119385))

(declare-fun b_and!89549 () Bool)

(assert (= b_and!89543 (and (=> t!119385 result!85694) b_and!89549)))

(declare-fun tb!70529 () Bool)

(declare-fun t!119387 () Bool)

(assert (=> (and b!1339738 (= (toChars!3467 (transformation!2369 (rule!4114 t2!34))) (toChars!3467 (transformation!2369 (rule!4114 t1!34)))) t!119387) tb!70529))

(declare-fun result!85696 () Bool)

(assert (= result!85696 result!85694))

(assert (=> b!1339764 t!119387))

(declare-fun b_and!89551 () Bool)

(assert (= b_and!89545 (and (=> t!119387 result!85696) b_and!89551)))

(declare-fun t!119389 () Bool)

(declare-fun tb!70531 () Bool)

(assert (=> (and b!1339734 (= (toChars!3467 (transformation!2369 (rule!4114 t1!34))) (toChars!3467 (transformation!2369 (rule!4114 t1!34)))) t!119389) tb!70531))

(declare-fun result!85698 () Bool)

(assert (= result!85698 result!85694))

(assert (=> b!1339764 t!119389))

(declare-fun b_and!89553 () Bool)

(assert (= b_and!89547 (and (=> t!119389 result!85698) b_and!89553)))

(declare-fun m!1497985 () Bool)

(assert (=> d!377839 m!1497985))

(declare-fun m!1497987 () Bool)

(assert (=> b!1339764 m!1497987))

(assert (=> b!1339764 m!1497987))

(declare-fun m!1497989 () Bool)

(assert (=> b!1339764 m!1497989))

(declare-fun m!1497991 () Bool)

(assert (=> b!1339765 m!1497991))

(assert (=> start!119458 d!377839))

(declare-fun d!377849 () Bool)

(declare-fun res!603639 () Bool)

(declare-fun e!857957 () Bool)

(assert (=> d!377849 (=> (not res!603639) (not e!857957))))

(assert (=> d!377849 (= res!603639 (not (isEmpty!8160 (originalCharacters!3231 t2!34))))))

(assert (=> d!377849 (= (inv!18004 t2!34) e!857957)))

(declare-fun b!1339769 () Bool)

(declare-fun res!603640 () Bool)

(assert (=> b!1339769 (=> (not res!603640) (not e!857957))))

(assert (=> b!1339769 (= res!603640 (= (originalCharacters!3231 t2!34) (list!5199 (dynLambda!6029 (toChars!3467 (transformation!2369 (rule!4114 t2!34))) (value!77149 t2!34)))))))

(declare-fun b!1339770 () Bool)

(assert (=> b!1339770 (= e!857957 (= (size!11133 t2!34) (size!11138 (originalCharacters!3231 t2!34))))))

(assert (= (and d!377849 res!603639) b!1339769))

(assert (= (and b!1339769 res!603640) b!1339770))

(declare-fun b_lambda!39547 () Bool)

(assert (=> (not b_lambda!39547) (not b!1339769)))

(assert (=> b!1339769 t!119379))

(declare-fun b_and!89555 () Bool)

(assert (= b_and!89549 (and (=> t!119379 result!85686) b_and!89555)))

(assert (=> b!1339769 t!119381))

(declare-fun b_and!89557 () Bool)

(assert (= b_and!89551 (and (=> t!119381 result!85690) b_and!89557)))

(assert (=> b!1339769 t!119383))

(declare-fun b_and!89559 () Bool)

(assert (= b_and!89553 (and (=> t!119383 result!85692) b_and!89559)))

(declare-fun m!1497993 () Bool)

(assert (=> d!377849 m!1497993))

(assert (=> b!1339769 m!1497961))

(assert (=> b!1339769 m!1497961))

(declare-fun m!1497995 () Bool)

(assert (=> b!1339769 m!1497995))

(declare-fun m!1497997 () Bool)

(assert (=> b!1339770 m!1497997))

(assert (=> start!119458 d!377849))

(declare-fun d!377851 () Bool)

(assert (=> d!377851 (= (inv!18001 (tag!2631 (rule!4114 t2!34))) (= (mod (str.len (value!77148 (tag!2631 (rule!4114 t2!34)))) 2) 0))))

(assert (=> b!1339723 d!377851))

(declare-fun d!377855 () Bool)

(declare-fun res!603650 () Bool)

(declare-fun e!857970 () Bool)

(assert (=> d!377855 (=> (not res!603650) (not e!857970))))

(declare-fun semiInverseModEq!896 (Int Int) Bool)

(assert (=> d!377855 (= res!603650 (semiInverseModEq!896 (toChars!3467 (transformation!2369 (rule!4114 t2!34))) (toValue!3608 (transformation!2369 (rule!4114 t2!34)))))))

(assert (=> d!377855 (= (inv!18005 (transformation!2369 (rule!4114 t2!34))) e!857970)))

(declare-fun b!1339792 () Bool)

(declare-fun equivClasses!855 (Int Int) Bool)

(assert (=> b!1339792 (= e!857970 (equivClasses!855 (toChars!3467 (transformation!2369 (rule!4114 t2!34))) (toValue!3608 (transformation!2369 (rule!4114 t2!34)))))))

(assert (= (and d!377855 res!603650) b!1339792))

(declare-fun m!1498033 () Bool)

(assert (=> d!377855 m!1498033))

(declare-fun m!1498035 () Bool)

(assert (=> b!1339792 m!1498035))

(assert (=> b!1339723 d!377855))

(declare-fun d!377863 () Bool)

(assert (=> d!377863 (= (inv!18001 (tag!2631 (h!19067 rules!2550))) (= (mod (str.len (value!77148 (tag!2631 (h!19067 rules!2550)))) 2) 0))))

(assert (=> b!1339732 d!377863))

(declare-fun d!377865 () Bool)

(declare-fun res!603651 () Bool)

(declare-fun e!857971 () Bool)

(assert (=> d!377865 (=> (not res!603651) (not e!857971))))

(assert (=> d!377865 (= res!603651 (semiInverseModEq!896 (toChars!3467 (transformation!2369 (h!19067 rules!2550))) (toValue!3608 (transformation!2369 (h!19067 rules!2550)))))))

(assert (=> d!377865 (= (inv!18005 (transformation!2369 (h!19067 rules!2550))) e!857971)))

(declare-fun b!1339793 () Bool)

(assert (=> b!1339793 (= e!857971 (equivClasses!855 (toChars!3467 (transformation!2369 (h!19067 rules!2550))) (toValue!3608 (transformation!2369 (h!19067 rules!2550)))))))

(assert (= (and d!377865 res!603651) b!1339793))

(declare-fun m!1498037 () Bool)

(assert (=> d!377865 m!1498037))

(declare-fun m!1498039 () Bool)

(assert (=> b!1339793 m!1498039))

(assert (=> b!1339732 d!377865))

(declare-fun d!377867 () Bool)

(declare-fun res!603654 () Bool)

(declare-fun e!857977 () Bool)

(assert (=> d!377867 (=> (not res!603654) (not e!857977))))

(declare-fun rulesValid!865 (LexerInterface!2064 List!13732) Bool)

(assert (=> d!377867 (= res!603654 (rulesValid!865 thiss!19762 rules!2550))))

(assert (=> d!377867 (= (rulesInvariant!1934 thiss!19762 rules!2550) e!857977)))

(declare-fun b!1339801 () Bool)

(declare-datatypes ((List!13736 0))(
  ( (Nil!13670) (Cons!13670 (h!19071 String!16531) (t!119415 List!13736)) )
))
(declare-fun noDuplicateTag!865 (LexerInterface!2064 List!13732 List!13736) Bool)

(assert (=> b!1339801 (= e!857977 (noDuplicateTag!865 thiss!19762 rules!2550 Nil!13670))))

(assert (= (and d!377867 res!603654) b!1339801))

(declare-fun m!1498055 () Bool)

(assert (=> d!377867 m!1498055))

(declare-fun m!1498057 () Bool)

(assert (=> b!1339801 m!1498057))

(assert (=> b!1339721 d!377867))

(declare-fun d!377873 () Bool)

(assert (=> d!377873 (= (inv!18001 (tag!2631 (rule!4114 t1!34))) (= (mod (str.len (value!77148 (tag!2631 (rule!4114 t1!34)))) 2) 0))))

(assert (=> b!1339722 d!377873))

(declare-fun d!377875 () Bool)

(declare-fun res!603655 () Bool)

(declare-fun e!857978 () Bool)

(assert (=> d!377875 (=> (not res!603655) (not e!857978))))

(assert (=> d!377875 (= res!603655 (semiInverseModEq!896 (toChars!3467 (transformation!2369 (rule!4114 t1!34))) (toValue!3608 (transformation!2369 (rule!4114 t1!34)))))))

(assert (=> d!377875 (= (inv!18005 (transformation!2369 (rule!4114 t1!34))) e!857978)))

(declare-fun b!1339802 () Bool)

(assert (=> b!1339802 (= e!857978 (equivClasses!855 (toChars!3467 (transformation!2369 (rule!4114 t1!34))) (toValue!3608 (transformation!2369 (rule!4114 t1!34)))))))

(assert (= (and d!377875 res!603655) b!1339802))

(declare-fun m!1498059 () Bool)

(assert (=> d!377875 m!1498059))

(declare-fun m!1498061 () Bool)

(assert (=> b!1339802 m!1498061))

(assert (=> b!1339722 d!377875))

(declare-fun d!377877 () Bool)

(declare-fun lt!443388 () Bool)

(declare-fun e!858049 () Bool)

(assert (=> d!377877 (= lt!443388 e!858049)))

(declare-fun res!603705 () Bool)

(assert (=> d!377877 (=> (not res!603705) (not e!858049))))

(declare-datatypes ((List!13737 0))(
  ( (Nil!13671) (Cons!13671 (h!19072 Token!4400) (t!119416 List!13737)) )
))
(declare-datatypes ((IArray!9015 0))(
  ( (IArray!9016 (innerList!4565 List!13737)) )
))
(declare-datatypes ((Conc!4505 0))(
  ( (Node!4505 (left!11727 Conc!4505) (right!12057 Conc!4505) (csize!9240 Int) (cheight!4716 Int)) (Leaf!6886 (xs!7224 IArray!9015) (csize!9241 Int)) (Empty!4505) )
))
(declare-datatypes ((BalanceConc!8950 0))(
  ( (BalanceConc!8951 (c!219536 Conc!4505)) )
))
(declare-fun list!5202 (BalanceConc!8950) List!13737)

(declare-datatypes ((tuple2!13290 0))(
  ( (tuple2!13291 (_1!7531 BalanceConc!8950) (_2!7531 BalanceConc!8946)) )
))
(declare-fun lex!895 (LexerInterface!2064 List!13732 BalanceConc!8946) tuple2!13290)

(declare-fun print!834 (LexerInterface!2064 BalanceConc!8950) BalanceConc!8946)

(declare-fun singletonSeq!973 (Token!4400) BalanceConc!8950)

(assert (=> d!377877 (= res!603705 (= (list!5202 (_1!7531 (lex!895 thiss!19762 rules!2550 (print!834 thiss!19762 (singletonSeq!973 t1!34))))) (list!5202 (singletonSeq!973 t1!34))))))

(declare-fun e!858050 () Bool)

(assert (=> d!377877 (= lt!443388 e!858050)))

(declare-fun res!603703 () Bool)

(assert (=> d!377877 (=> (not res!603703) (not e!858050))))

(declare-fun lt!443389 () tuple2!13290)

(declare-fun size!11140 (BalanceConc!8950) Int)

(assert (=> d!377877 (= res!603703 (= (size!11140 (_1!7531 lt!443389)) 1))))

(assert (=> d!377877 (= lt!443389 (lex!895 thiss!19762 rules!2550 (print!834 thiss!19762 (singletonSeq!973 t1!34))))))

(assert (=> d!377877 (not (isEmpty!8157 rules!2550))))

(assert (=> d!377877 (= (rulesProduceIndividualToken!1033 thiss!19762 rules!2550 t1!34) lt!443388)))

(declare-fun b!1339914 () Bool)

(declare-fun res!603704 () Bool)

(assert (=> b!1339914 (=> (not res!603704) (not e!858050))))

(declare-fun apply!3215 (BalanceConc!8950 Int) Token!4400)

(assert (=> b!1339914 (= res!603704 (= (apply!3215 (_1!7531 lt!443389) 0) t1!34))))

(declare-fun b!1339915 () Bool)

(declare-fun isEmpty!8161 (BalanceConc!8946) Bool)

(assert (=> b!1339915 (= e!858050 (isEmpty!8161 (_2!7531 lt!443389)))))

(declare-fun b!1339916 () Bool)

(assert (=> b!1339916 (= e!858049 (isEmpty!8161 (_2!7531 (lex!895 thiss!19762 rules!2550 (print!834 thiss!19762 (singletonSeq!973 t1!34))))))))

(assert (= (and d!377877 res!603703) b!1339914))

(assert (= (and b!1339914 res!603704) b!1339915))

(assert (= (and d!377877 res!603705) b!1339916))

(declare-fun m!1498193 () Bool)

(assert (=> d!377877 m!1498193))

(declare-fun m!1498195 () Bool)

(assert (=> d!377877 m!1498195))

(assert (=> d!377877 m!1497895))

(assert (=> d!377877 m!1498195))

(declare-fun m!1498197 () Bool)

(assert (=> d!377877 m!1498197))

(declare-fun m!1498199 () Bool)

(assert (=> d!377877 m!1498199))

(assert (=> d!377877 m!1498193))

(assert (=> d!377877 m!1498193))

(declare-fun m!1498201 () Bool)

(assert (=> d!377877 m!1498201))

(declare-fun m!1498203 () Bool)

(assert (=> d!377877 m!1498203))

(declare-fun m!1498205 () Bool)

(assert (=> b!1339914 m!1498205))

(declare-fun m!1498207 () Bool)

(assert (=> b!1339915 m!1498207))

(assert (=> b!1339916 m!1498193))

(assert (=> b!1339916 m!1498193))

(assert (=> b!1339916 m!1498195))

(assert (=> b!1339916 m!1498195))

(assert (=> b!1339916 m!1498197))

(declare-fun m!1498209 () Bool)

(assert (=> b!1339916 m!1498209))

(assert (=> b!1339720 d!377877))

(declare-fun b!1339925 () Bool)

(declare-fun e!858055 () List!13731)

(assert (=> b!1339925 (= e!858055 (getSuffix!531 lt!443332 lt!443335))))

(declare-fun d!377915 () Bool)

(declare-fun e!858056 () Bool)

(assert (=> d!377915 e!858056))

(declare-fun res!603710 () Bool)

(assert (=> d!377915 (=> (not res!603710) (not e!858056))))

(declare-fun lt!443392 () List!13731)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1943 (List!13731) (InoxSet C!7656))

(assert (=> d!377915 (= res!603710 (= (content!1943 lt!443392) ((_ map or) (content!1943 lt!443335) (content!1943 (getSuffix!531 lt!443332 lt!443335)))))))

(assert (=> d!377915 (= lt!443392 e!858055)))

(declare-fun c!219520 () Bool)

(assert (=> d!377915 (= c!219520 ((_ is Nil!13665) lt!443335))))

(assert (=> d!377915 (= (++!3496 lt!443335 (getSuffix!531 lt!443332 lt!443335)) lt!443392)))

(declare-fun b!1339928 () Bool)

(assert (=> b!1339928 (= e!858056 (or (not (= (getSuffix!531 lt!443332 lt!443335) Nil!13665)) (= lt!443392 lt!443335)))))

(declare-fun b!1339926 () Bool)

(assert (=> b!1339926 (= e!858055 (Cons!13665 (h!19066 lt!443335) (++!3496 (t!119376 lt!443335) (getSuffix!531 lt!443332 lt!443335))))))

(declare-fun b!1339927 () Bool)

(declare-fun res!603711 () Bool)

(assert (=> b!1339927 (=> (not res!603711) (not e!858056))))

(assert (=> b!1339927 (= res!603711 (= (size!11138 lt!443392) (+ (size!11138 lt!443335) (size!11138 (getSuffix!531 lt!443332 lt!443335)))))))

(assert (= (and d!377915 c!219520) b!1339925))

(assert (= (and d!377915 (not c!219520)) b!1339926))

(assert (= (and d!377915 res!603710) b!1339927))

(assert (= (and b!1339927 res!603711) b!1339928))

(declare-fun m!1498211 () Bool)

(assert (=> d!377915 m!1498211))

(declare-fun m!1498213 () Bool)

(assert (=> d!377915 m!1498213))

(assert (=> d!377915 m!1497889))

(declare-fun m!1498215 () Bool)

(assert (=> d!377915 m!1498215))

(assert (=> b!1339926 m!1497889))

(declare-fun m!1498217 () Bool)

(assert (=> b!1339926 m!1498217))

(declare-fun m!1498219 () Bool)

(assert (=> b!1339927 m!1498219))

(declare-fun m!1498221 () Bool)

(assert (=> b!1339927 m!1498221))

(assert (=> b!1339927 m!1497889))

(declare-fun m!1498223 () Bool)

(assert (=> b!1339927 m!1498223))

(assert (=> b!1339731 d!377915))

(declare-fun d!377917 () Bool)

(declare-fun lt!443395 () List!13731)

(assert (=> d!377917 (= (++!3496 lt!443335 lt!443395) lt!443332)))

(declare-fun e!858059 () List!13731)

(assert (=> d!377917 (= lt!443395 e!858059)))

(declare-fun c!219523 () Bool)

(assert (=> d!377917 (= c!219523 ((_ is Cons!13665) lt!443335))))

(assert (=> d!377917 (>= (size!11138 lt!443332) (size!11138 lt!443335))))

(assert (=> d!377917 (= (getSuffix!531 lt!443332 lt!443335) lt!443395)))

(declare-fun b!1339933 () Bool)

(declare-fun tail!1924 (List!13731) List!13731)

(assert (=> b!1339933 (= e!858059 (getSuffix!531 (tail!1924 lt!443332) (t!119376 lt!443335)))))

(declare-fun b!1339934 () Bool)

(assert (=> b!1339934 (= e!858059 lt!443332)))

(assert (= (and d!377917 c!219523) b!1339933))

(assert (= (and d!377917 (not c!219523)) b!1339934))

(declare-fun m!1498225 () Bool)

(assert (=> d!377917 m!1498225))

(declare-fun m!1498227 () Bool)

(assert (=> d!377917 m!1498227))

(assert (=> d!377917 m!1498221))

(declare-fun m!1498229 () Bool)

(assert (=> b!1339933 m!1498229))

(assert (=> b!1339933 m!1498229))

(declare-fun m!1498231 () Bool)

(assert (=> b!1339933 m!1498231))

(assert (=> b!1339731 d!377917))

(declare-fun d!377919 () Bool)

(declare-fun lt!443398 () List!13731)

(declare-fun dynLambda!6030 (Int List!13731) Bool)

(assert (=> d!377919 (dynLambda!6030 lambda!56109 lt!443398)))

(declare-fun choose!8215 (Int) List!13731)

(assert (=> d!377919 (= lt!443398 (choose!8215 lambda!56109))))

(assert (=> d!377919 (Exists!835 lambda!56109)))

(assert (=> d!377919 (= (pickWitness!138 lambda!56109) lt!443398)))

(declare-fun b_lambda!39569 () Bool)

(assert (=> (not b_lambda!39569) (not d!377919)))

(declare-fun bs!332237 () Bool)

(assert (= bs!332237 d!377919))

(declare-fun m!1498233 () Bool)

(assert (=> bs!332237 m!1498233))

(declare-fun m!1498235 () Bool)

(assert (=> bs!332237 m!1498235))

(assert (=> bs!332237 m!1497875))

(assert (=> b!1339731 d!377919))

(declare-fun d!377921 () Bool)

(declare-fun c!219526 () Bool)

(assert (=> d!377921 (= c!219526 (isEmpty!8160 lt!443335))))

(declare-fun e!858062 () Bool)

(assert (=> d!377921 (= (prefixMatch!192 lt!443337 lt!443335) e!858062)))

(declare-fun b!1339939 () Bool)

(declare-fun lostCause!301 (Regex!3683) Bool)

(assert (=> b!1339939 (= e!858062 (not (lostCause!301 lt!443337)))))

(declare-fun b!1339940 () Bool)

(declare-fun derivativeStep!925 (Regex!3683 C!7656) Regex!3683)

(declare-fun head!2375 (List!13731) C!7656)

(assert (=> b!1339940 (= e!858062 (prefixMatch!192 (derivativeStep!925 lt!443337 (head!2375 lt!443335)) (tail!1924 lt!443335)))))

(assert (= (and d!377921 c!219526) b!1339939))

(assert (= (and d!377921 (not c!219526)) b!1339940))

(declare-fun m!1498237 () Bool)

(assert (=> d!377921 m!1498237))

(declare-fun m!1498239 () Bool)

(assert (=> b!1339939 m!1498239))

(declare-fun m!1498241 () Bool)

(assert (=> b!1339940 m!1498241))

(assert (=> b!1339940 m!1498241))

(declare-fun m!1498243 () Bool)

(assert (=> b!1339940 m!1498243))

(declare-fun m!1498245 () Bool)

(assert (=> b!1339940 m!1498245))

(assert (=> b!1339940 m!1498243))

(assert (=> b!1339940 m!1498245))

(declare-fun m!1498247 () Bool)

(assert (=> b!1339940 m!1498247))

(assert (=> b!1339730 d!377921))

(declare-fun d!377923 () Bool)

(declare-fun lt!443401 () C!7656)

(declare-fun apply!3216 (List!13731 Int) C!7656)

(assert (=> d!377923 (= lt!443401 (apply!3216 (list!5199 lt!443334) 0))))

(declare-fun apply!3217 (Conc!4503 Int) C!7656)

(assert (=> d!377923 (= lt!443401 (apply!3217 (c!219497 lt!443334) 0))))

(declare-fun e!858065 () Bool)

(assert (=> d!377923 e!858065))

(declare-fun res!603714 () Bool)

(assert (=> d!377923 (=> (not res!603714) (not e!858065))))

(assert (=> d!377923 (= res!603714 (<= 0 0))))

(assert (=> d!377923 (= (apply!3211 lt!443334 0) lt!443401)))

(declare-fun b!1339943 () Bool)

(assert (=> b!1339943 (= e!858065 (< 0 (size!11134 lt!443334)))))

(assert (= (and d!377923 res!603714) b!1339943))

(assert (=> d!377923 m!1497939))

(assert (=> d!377923 m!1497939))

(declare-fun m!1498249 () Bool)

(assert (=> d!377923 m!1498249))

(declare-fun m!1498251 () Bool)

(assert (=> d!377923 m!1498251))

(assert (=> b!1339943 m!1497899))

(assert (=> b!1339730 d!377923))

(declare-fun d!377925 () Bool)

(declare-fun list!5203 (Conc!4503) List!13731)

(assert (=> d!377925 (= (list!5199 lt!443333) (list!5203 (c!219497 lt!443333)))))

(declare-fun bs!332238 () Bool)

(assert (= bs!332238 d!377925))

(declare-fun m!1498253 () Bool)

(assert (=> bs!332238 m!1498253))

(assert (=> b!1339730 d!377925))

(declare-fun d!377927 () Bool)

(declare-fun lt!443402 () BalanceConc!8946)

(assert (=> d!377927 (= (list!5199 lt!443402) (originalCharacters!3231 t1!34))))

(assert (=> d!377927 (= lt!443402 (dynLambda!6029 (toChars!3467 (transformation!2369 (rule!4114 t1!34))) (value!77149 t1!34)))))

(assert (=> d!377927 (= (charsOf!1341 t1!34) lt!443402)))

(declare-fun b_lambda!39571 () Bool)

(assert (=> (not b_lambda!39571) (not d!377927)))

(assert (=> d!377927 t!119385))

(declare-fun b_and!89589 () Bool)

(assert (= b_and!89555 (and (=> t!119385 result!85694) b_and!89589)))

(assert (=> d!377927 t!119387))

(declare-fun b_and!89591 () Bool)

(assert (= b_and!89557 (and (=> t!119387 result!85696) b_and!89591)))

(assert (=> d!377927 t!119389))

(declare-fun b_and!89593 () Bool)

(assert (= b_and!89559 (and (=> t!119389 result!85698) b_and!89593)))

(declare-fun m!1498255 () Bool)

(assert (=> d!377927 m!1498255))

(assert (=> d!377927 m!1497987))

(assert (=> b!1339730 d!377927))

(declare-fun b!1339944 () Bool)

(declare-fun e!858066 () List!13731)

(assert (=> b!1339944 (= e!858066 (Cons!13665 (apply!3211 lt!443334 0) Nil!13665))))

(declare-fun d!377929 () Bool)

(declare-fun e!858067 () Bool)

(assert (=> d!377929 e!858067))

(declare-fun res!603715 () Bool)

(assert (=> d!377929 (=> (not res!603715) (not e!858067))))

(declare-fun lt!443403 () List!13731)

(assert (=> d!377929 (= res!603715 (= (content!1943 lt!443403) ((_ map or) (content!1943 (list!5199 lt!443333)) (content!1943 (Cons!13665 (apply!3211 lt!443334 0) Nil!13665)))))))

(assert (=> d!377929 (= lt!443403 e!858066)))

(declare-fun c!219527 () Bool)

(assert (=> d!377929 (= c!219527 ((_ is Nil!13665) (list!5199 lt!443333)))))

(assert (=> d!377929 (= (++!3496 (list!5199 lt!443333) (Cons!13665 (apply!3211 lt!443334 0) Nil!13665)) lt!443403)))

(declare-fun b!1339947 () Bool)

(assert (=> b!1339947 (= e!858067 (or (not (= (Cons!13665 (apply!3211 lt!443334 0) Nil!13665) Nil!13665)) (= lt!443403 (list!5199 lt!443333))))))

(declare-fun b!1339945 () Bool)

(assert (=> b!1339945 (= e!858066 (Cons!13665 (h!19066 (list!5199 lt!443333)) (++!3496 (t!119376 (list!5199 lt!443333)) (Cons!13665 (apply!3211 lt!443334 0) Nil!13665))))))

(declare-fun b!1339946 () Bool)

(declare-fun res!603716 () Bool)

(assert (=> b!1339946 (=> (not res!603716) (not e!858067))))

(assert (=> b!1339946 (= res!603716 (= (size!11138 lt!443403) (+ (size!11138 (list!5199 lt!443333)) (size!11138 (Cons!13665 (apply!3211 lt!443334 0) Nil!13665)))))))

(assert (= (and d!377929 c!219527) b!1339944))

(assert (= (and d!377929 (not c!219527)) b!1339945))

(assert (= (and d!377929 res!603715) b!1339946))

(assert (= (and b!1339946 res!603716) b!1339947))

(declare-fun m!1498257 () Bool)

(assert (=> d!377929 m!1498257))

(assert (=> d!377929 m!1497925))

(declare-fun m!1498259 () Bool)

(assert (=> d!377929 m!1498259))

(declare-fun m!1498261 () Bool)

(assert (=> d!377929 m!1498261))

(declare-fun m!1498263 () Bool)

(assert (=> b!1339945 m!1498263))

(declare-fun m!1498265 () Bool)

(assert (=> b!1339946 m!1498265))

(assert (=> b!1339946 m!1497925))

(declare-fun m!1498267 () Bool)

(assert (=> b!1339946 m!1498267))

(declare-fun m!1498269 () Bool)

(assert (=> b!1339946 m!1498269))

(assert (=> b!1339730 d!377929))

(declare-fun d!377931 () Bool)

(declare-fun lt!443406 () Unit!19803)

(declare-fun lemma!95 (List!13732 LexerInterface!2064 List!13732) Unit!19803)

(assert (=> d!377931 (= lt!443406 (lemma!95 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!56118 () Int)

(declare-datatypes ((List!13738 0))(
  ( (Nil!13672) (Cons!13672 (h!19073 Regex!3683) (t!119417 List!13738)) )
))
(declare-fun generalisedUnion!103 (List!13738) Regex!3683)

(declare-fun map!3014 (List!13732 Int) List!13738)

(assert (=> d!377931 (= (rulesRegex!252 thiss!19762 rules!2550) (generalisedUnion!103 (map!3014 rules!2550 lambda!56118)))))

(declare-fun bs!332239 () Bool)

(assert (= bs!332239 d!377931))

(declare-fun m!1498271 () Bool)

(assert (=> bs!332239 m!1498271))

(declare-fun m!1498273 () Bool)

(assert (=> bs!332239 m!1498273))

(assert (=> bs!332239 m!1498273))

(declare-fun m!1498275 () Bool)

(assert (=> bs!332239 m!1498275))

(assert (=> b!1339730 d!377931))

(declare-fun d!377933 () Bool)

(declare-fun lt!443409 () Bool)

(assert (=> d!377933 (= lt!443409 (select (content!1943 lt!443335) lt!443336))))

(declare-fun e!858072 () Bool)

(assert (=> d!377933 (= lt!443409 e!858072)))

(declare-fun res!603722 () Bool)

(assert (=> d!377933 (=> (not res!603722) (not e!858072))))

(assert (=> d!377933 (= res!603722 ((_ is Cons!13665) lt!443335))))

(assert (=> d!377933 (= (contains!2495 lt!443335 lt!443336) lt!443409)))

(declare-fun b!1339952 () Bool)

(declare-fun e!858073 () Bool)

(assert (=> b!1339952 (= e!858072 e!858073)))

(declare-fun res!603721 () Bool)

(assert (=> b!1339952 (=> res!603721 e!858073)))

(assert (=> b!1339952 (= res!603721 (= (h!19066 lt!443335) lt!443336))))

(declare-fun b!1339953 () Bool)

(assert (=> b!1339953 (= e!858073 (contains!2495 (t!119376 lt!443335) lt!443336))))

(assert (= (and d!377933 res!603722) b!1339952))

(assert (= (and b!1339952 (not res!603721)) b!1339953))

(assert (=> d!377933 m!1498213))

(declare-fun m!1498277 () Bool)

(assert (=> d!377933 m!1498277))

(declare-fun m!1498279 () Bool)

(assert (=> b!1339953 m!1498279))

(assert (=> b!1339719 d!377933))

(declare-fun d!377935 () Bool)

(declare-fun lt!443410 () C!7656)

(assert (=> d!377935 (= lt!443410 (apply!3216 (list!5199 lt!443333) 0))))

(assert (=> d!377935 (= lt!443410 (apply!3217 (c!219497 lt!443333) 0))))

(declare-fun e!858074 () Bool)

(assert (=> d!377935 e!858074))

(declare-fun res!603723 () Bool)

(assert (=> d!377935 (=> (not res!603723) (not e!858074))))

(assert (=> d!377935 (= res!603723 (<= 0 0))))

(assert (=> d!377935 (= (apply!3211 lt!443333 0) lt!443410)))

(declare-fun b!1339954 () Bool)

(assert (=> b!1339954 (= e!858074 (< 0 (size!11134 lt!443333)))))

(assert (= (and d!377935 res!603723) b!1339954))

(assert (=> d!377935 m!1497925))

(assert (=> d!377935 m!1497925))

(declare-fun m!1498281 () Bool)

(assert (=> d!377935 m!1498281))

(declare-fun m!1498283 () Bool)

(assert (=> d!377935 m!1498283))

(declare-fun m!1498285 () Bool)

(assert (=> b!1339954 m!1498285))

(assert (=> b!1339719 d!377935))

(declare-fun d!377937 () Bool)

(assert (=> d!377937 (= (isEmpty!8157 rules!2550) ((_ is Nil!13666) rules!2550))))

(assert (=> b!1339728 d!377937))

(declare-fun d!377939 () Bool)

(declare-fun prefixMatchZipperSequence!212 (Regex!3683 BalanceConc!8946) Bool)

(declare-fun ++!3498 (BalanceConc!8946 BalanceConc!8946) BalanceConc!8946)

(declare-fun singletonSeq!974 (C!7656) BalanceConc!8946)

(assert (=> d!377939 (= (separableTokensPredicate!347 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!212 (rulesRegex!252 thiss!19762 rules!2550) (++!3498 (charsOf!1341 t1!34) (singletonSeq!974 (apply!3211 (charsOf!1341 t2!34) 0))))))))

(declare-fun bs!332240 () Bool)

(assert (= bs!332240 d!377939))

(declare-fun m!1498287 () Bool)

(assert (=> bs!332240 m!1498287))

(declare-fun m!1498289 () Bool)

(assert (=> bs!332240 m!1498289))

(assert (=> bs!332240 m!1497901))

(assert (=> bs!332240 m!1498287))

(assert (=> bs!332240 m!1497929))

(assert (=> bs!332240 m!1497921))

(assert (=> bs!332240 m!1497929))

(declare-fun m!1498291 () Bool)

(assert (=> bs!332240 m!1498291))

(declare-fun m!1498293 () Bool)

(assert (=> bs!332240 m!1498293))

(assert (=> bs!332240 m!1497921))

(assert (=> bs!332240 m!1498289))

(assert (=> bs!332240 m!1498291))

(assert (=> bs!332240 m!1497901))

(assert (=> b!1339718 d!377939))

(declare-fun d!377941 () Bool)

(declare-fun choose!8216 (Int) Bool)

(assert (=> d!377941 (= (Exists!835 lambda!56109) (choose!8216 lambda!56109))))

(declare-fun bs!332241 () Bool)

(assert (= bs!332241 d!377941))

(declare-fun m!1498295 () Bool)

(assert (=> bs!332241 m!1498295))

(assert (=> b!1339727 d!377941))

(declare-fun bs!332242 () Bool)

(declare-fun d!377943 () Bool)

(assert (= bs!332242 (and d!377943 b!1339727)))

(declare-fun lambda!56121 () Int)

(assert (=> bs!332242 (= lambda!56121 lambda!56109)))

(assert (=> d!377943 true))

(assert (=> d!377943 true))

(assert (=> d!377943 (Exists!835 lambda!56121)))

(declare-fun lt!443413 () Unit!19803)

(declare-fun choose!8217 (Regex!3683 List!13731) Unit!19803)

(assert (=> d!377943 (= lt!443413 (choose!8217 lt!443337 lt!443335))))

(declare-fun validRegex!1587 (Regex!3683) Bool)

(assert (=> d!377943 (validRegex!1587 lt!443337)))

(assert (=> d!377943 (= (lemmaPrefixMatchThenExistsStringThatMatches!153 lt!443337 lt!443335) lt!443413)))

(declare-fun bs!332243 () Bool)

(assert (= bs!332243 d!377943))

(declare-fun m!1498297 () Bool)

(assert (=> bs!332243 m!1498297))

(declare-fun m!1498299 () Bool)

(assert (=> bs!332243 m!1498299))

(declare-fun m!1498301 () Bool)

(assert (=> bs!332243 m!1498301))

(assert (=> b!1339727 d!377943))

(declare-fun d!377945 () Bool)

(declare-fun lt!443414 () Bool)

(declare-fun e!858077 () Bool)

(assert (=> d!377945 (= lt!443414 e!858077)))

(declare-fun res!603728 () Bool)

(assert (=> d!377945 (=> (not res!603728) (not e!858077))))

(assert (=> d!377945 (= res!603728 (= (list!5202 (_1!7531 (lex!895 thiss!19762 rules!2550 (print!834 thiss!19762 (singletonSeq!973 t2!34))))) (list!5202 (singletonSeq!973 t2!34))))))

(declare-fun e!858078 () Bool)

(assert (=> d!377945 (= lt!443414 e!858078)))

(declare-fun res!603726 () Bool)

(assert (=> d!377945 (=> (not res!603726) (not e!858078))))

(declare-fun lt!443415 () tuple2!13290)

(assert (=> d!377945 (= res!603726 (= (size!11140 (_1!7531 lt!443415)) 1))))

(assert (=> d!377945 (= lt!443415 (lex!895 thiss!19762 rules!2550 (print!834 thiss!19762 (singletonSeq!973 t2!34))))))

(assert (=> d!377945 (not (isEmpty!8157 rules!2550))))

(assert (=> d!377945 (= (rulesProduceIndividualToken!1033 thiss!19762 rules!2550 t2!34) lt!443414)))

(declare-fun b!1339957 () Bool)

(declare-fun res!603727 () Bool)

(assert (=> b!1339957 (=> (not res!603727) (not e!858078))))

(assert (=> b!1339957 (= res!603727 (= (apply!3215 (_1!7531 lt!443415) 0) t2!34))))

(declare-fun b!1339958 () Bool)

(assert (=> b!1339958 (= e!858078 (isEmpty!8161 (_2!7531 lt!443415)))))

(declare-fun b!1339959 () Bool)

(assert (=> b!1339959 (= e!858077 (isEmpty!8161 (_2!7531 (lex!895 thiss!19762 rules!2550 (print!834 thiss!19762 (singletonSeq!973 t2!34))))))))

(assert (= (and d!377945 res!603726) b!1339957))

(assert (= (and b!1339957 res!603727) b!1339958))

(assert (= (and d!377945 res!603728) b!1339959))

(declare-fun m!1498303 () Bool)

(assert (=> d!377945 m!1498303))

(declare-fun m!1498305 () Bool)

(assert (=> d!377945 m!1498305))

(assert (=> d!377945 m!1497895))

(assert (=> d!377945 m!1498305))

(declare-fun m!1498307 () Bool)

(assert (=> d!377945 m!1498307))

(declare-fun m!1498309 () Bool)

(assert (=> d!377945 m!1498309))

(assert (=> d!377945 m!1498303))

(assert (=> d!377945 m!1498303))

(declare-fun m!1498311 () Bool)

(assert (=> d!377945 m!1498311))

(declare-fun m!1498313 () Bool)

(assert (=> d!377945 m!1498313))

(declare-fun m!1498315 () Bool)

(assert (=> b!1339957 m!1498315))

(declare-fun m!1498317 () Bool)

(assert (=> b!1339958 m!1498317))

(assert (=> b!1339959 m!1498303))

(assert (=> b!1339959 m!1498303))

(assert (=> b!1339959 m!1498305))

(assert (=> b!1339959 m!1498305))

(assert (=> b!1339959 m!1498307))

(declare-fun m!1498319 () Bool)

(assert (=> b!1339959 m!1498319))

(assert (=> b!1339736 d!377945))

(declare-fun d!377947 () Bool)

(declare-fun lt!443416 () Bool)

(assert (=> d!377947 (= lt!443416 (select (content!1943 lt!443332) lt!443336))))

(declare-fun e!858079 () Bool)

(assert (=> d!377947 (= lt!443416 e!858079)))

(declare-fun res!603730 () Bool)

(assert (=> d!377947 (=> (not res!603730) (not e!858079))))

(assert (=> d!377947 (= res!603730 ((_ is Cons!13665) lt!443332))))

(assert (=> d!377947 (= (contains!2495 lt!443332 lt!443336) lt!443416)))

(declare-fun b!1339960 () Bool)

(declare-fun e!858080 () Bool)

(assert (=> b!1339960 (= e!858079 e!858080)))

(declare-fun res!603729 () Bool)

(assert (=> b!1339960 (=> res!603729 e!858080)))

(assert (=> b!1339960 (= res!603729 (= (h!19066 lt!443332) lt!443336))))

(declare-fun b!1339961 () Bool)

(assert (=> b!1339961 (= e!858080 (contains!2495 (t!119376 lt!443332) lt!443336))))

(assert (= (and d!377947 res!603730) b!1339960))

(assert (= (and b!1339960 (not res!603729)) b!1339961))

(declare-fun m!1498321 () Bool)

(assert (=> d!377947 m!1498321))

(declare-fun m!1498323 () Bool)

(assert (=> d!377947 m!1498323))

(declare-fun m!1498325 () Bool)

(assert (=> b!1339961 m!1498325))

(assert (=> b!1339725 d!377947))

(declare-fun d!377949 () Bool)

(declare-fun res!603735 () Bool)

(declare-fun e!858085 () Bool)

(assert (=> d!377949 (=> res!603735 e!858085)))

(assert (=> d!377949 (= res!603735 (not ((_ is Cons!13666) rules!2550)))))

(assert (=> d!377949 (= (sepAndNonSepRulesDisjointChars!742 rules!2550 rules!2550) e!858085)))

(declare-fun b!1339966 () Bool)

(declare-fun e!858086 () Bool)

(assert (=> b!1339966 (= e!858085 e!858086)))

(declare-fun res!603736 () Bool)

(assert (=> b!1339966 (=> (not res!603736) (not e!858086))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!338 (Rule!4538 List!13732) Bool)

(assert (=> b!1339966 (= res!603736 (ruleDisjointCharsFromAllFromOtherType!338 (h!19067 rules!2550) rules!2550))))

(declare-fun b!1339967 () Bool)

(assert (=> b!1339967 (= e!858086 (sepAndNonSepRulesDisjointChars!742 rules!2550 (t!119377 rules!2550)))))

(assert (= (and d!377949 (not res!603735)) b!1339966))

(assert (= (and b!1339966 res!603736) b!1339967))

(declare-fun m!1498327 () Bool)

(assert (=> b!1339966 m!1498327))

(declare-fun m!1498329 () Bool)

(assert (=> b!1339967 m!1498329))

(assert (=> b!1339726 d!377949))

(declare-fun b!1339978 () Bool)

(declare-fun e!858094 () Bool)

(declare-fun inv!16 (TokenValue!2459) Bool)

(assert (=> b!1339978 (= e!858094 (inv!16 (value!77149 t2!34)))))

(declare-fun b!1339979 () Bool)

(declare-fun e!858093 () Bool)

(declare-fun inv!17 (TokenValue!2459) Bool)

(assert (=> b!1339979 (= e!858093 (inv!17 (value!77149 t2!34)))))

(declare-fun b!1339980 () Bool)

(assert (=> b!1339980 (= e!858094 e!858093)))

(declare-fun c!219533 () Bool)

(assert (=> b!1339980 (= c!219533 ((_ is IntegerValue!7378) (value!77149 t2!34)))))

(declare-fun d!377951 () Bool)

(declare-fun c!219532 () Bool)

(assert (=> d!377951 (= c!219532 ((_ is IntegerValue!7377) (value!77149 t2!34)))))

(assert (=> d!377951 (= (inv!21 (value!77149 t2!34)) e!858094)))

(declare-fun b!1339981 () Bool)

(declare-fun res!603739 () Bool)

(declare-fun e!858095 () Bool)

(assert (=> b!1339981 (=> res!603739 e!858095)))

(assert (=> b!1339981 (= res!603739 (not ((_ is IntegerValue!7379) (value!77149 t2!34))))))

(assert (=> b!1339981 (= e!858093 e!858095)))

(declare-fun b!1339982 () Bool)

(declare-fun inv!15 (TokenValue!2459) Bool)

(assert (=> b!1339982 (= e!858095 (inv!15 (value!77149 t2!34)))))

(assert (= (and d!377951 c!219532) b!1339978))

(assert (= (and d!377951 (not c!219532)) b!1339980))

(assert (= (and b!1339980 c!219533) b!1339979))

(assert (= (and b!1339980 (not c!219533)) b!1339981))

(assert (= (and b!1339981 (not res!603739)) b!1339982))

(declare-fun m!1498331 () Bool)

(assert (=> b!1339978 m!1498331))

(declare-fun m!1498333 () Bool)

(assert (=> b!1339979 m!1498333))

(declare-fun m!1498335 () Bool)

(assert (=> b!1339982 m!1498335))

(assert (=> b!1339724 d!377951))

(declare-fun b!1339983 () Bool)

(declare-fun e!858097 () Bool)

(assert (=> b!1339983 (= e!858097 (inv!16 (value!77149 t1!34)))))

(declare-fun b!1339984 () Bool)

(declare-fun e!858096 () Bool)

(assert (=> b!1339984 (= e!858096 (inv!17 (value!77149 t1!34)))))

(declare-fun b!1339985 () Bool)

(assert (=> b!1339985 (= e!858097 e!858096)))

(declare-fun c!219535 () Bool)

(assert (=> b!1339985 (= c!219535 ((_ is IntegerValue!7378) (value!77149 t1!34)))))

(declare-fun d!377953 () Bool)

(declare-fun c!219534 () Bool)

(assert (=> d!377953 (= c!219534 ((_ is IntegerValue!7377) (value!77149 t1!34)))))

(assert (=> d!377953 (= (inv!21 (value!77149 t1!34)) e!858097)))

(declare-fun b!1339986 () Bool)

(declare-fun res!603740 () Bool)

(declare-fun e!858098 () Bool)

(assert (=> b!1339986 (=> res!603740 e!858098)))

(assert (=> b!1339986 (= res!603740 (not ((_ is IntegerValue!7379) (value!77149 t1!34))))))

(assert (=> b!1339986 (= e!858096 e!858098)))

(declare-fun b!1339987 () Bool)

(assert (=> b!1339987 (= e!858098 (inv!15 (value!77149 t1!34)))))

(assert (= (and d!377953 c!219534) b!1339983))

(assert (= (and d!377953 (not c!219534)) b!1339985))

(assert (= (and b!1339985 c!219535) b!1339984))

(assert (= (and b!1339985 (not c!219535)) b!1339986))

(assert (= (and b!1339986 (not res!603740)) b!1339987))

(declare-fun m!1498337 () Bool)

(assert (=> b!1339983 m!1498337))

(declare-fun m!1498339 () Bool)

(assert (=> b!1339984 m!1498339))

(declare-fun m!1498341 () Bool)

(assert (=> b!1339987 m!1498341))

(assert (=> b!1339735 d!377953))

(declare-fun b!1340001 () Bool)

(declare-fun e!858101 () Bool)

(declare-fun tp!387950 () Bool)

(declare-fun tp!387949 () Bool)

(assert (=> b!1340001 (= e!858101 (and tp!387950 tp!387949))))

(declare-fun b!1340000 () Bool)

(declare-fun tp!387946 () Bool)

(assert (=> b!1340000 (= e!858101 tp!387946)))

(declare-fun b!1339998 () Bool)

(declare-fun tp_is_empty!6683 () Bool)

(assert (=> b!1339998 (= e!858101 tp_is_empty!6683)))

(assert (=> b!1339723 (= tp!387879 e!858101)))

(declare-fun b!1339999 () Bool)

(declare-fun tp!387948 () Bool)

(declare-fun tp!387947 () Bool)

(assert (=> b!1339999 (= e!858101 (and tp!387948 tp!387947))))

(assert (= (and b!1339723 ((_ is ElementMatch!3683) (regex!2369 (rule!4114 t2!34)))) b!1339998))

(assert (= (and b!1339723 ((_ is Concat!6143) (regex!2369 (rule!4114 t2!34)))) b!1339999))

(assert (= (and b!1339723 ((_ is Star!3683) (regex!2369 (rule!4114 t2!34)))) b!1340000))

(assert (= (and b!1339723 ((_ is Union!3683) (regex!2369 (rule!4114 t2!34)))) b!1340001))

(declare-fun b!1340005 () Bool)

(declare-fun e!858102 () Bool)

(declare-fun tp!387955 () Bool)

(declare-fun tp!387954 () Bool)

(assert (=> b!1340005 (= e!858102 (and tp!387955 tp!387954))))

(declare-fun b!1340004 () Bool)

(declare-fun tp!387951 () Bool)

(assert (=> b!1340004 (= e!858102 tp!387951)))

(declare-fun b!1340002 () Bool)

(assert (=> b!1340002 (= e!858102 tp_is_empty!6683)))

(assert (=> b!1339732 (= tp!387881 e!858102)))

(declare-fun b!1340003 () Bool)

(declare-fun tp!387953 () Bool)

(declare-fun tp!387952 () Bool)

(assert (=> b!1340003 (= e!858102 (and tp!387953 tp!387952))))

(assert (= (and b!1339732 ((_ is ElementMatch!3683) (regex!2369 (h!19067 rules!2550)))) b!1340002))

(assert (= (and b!1339732 ((_ is Concat!6143) (regex!2369 (h!19067 rules!2550)))) b!1340003))

(assert (= (and b!1339732 ((_ is Star!3683) (regex!2369 (h!19067 rules!2550)))) b!1340004))

(assert (= (and b!1339732 ((_ is Union!3683) (regex!2369 (h!19067 rules!2550)))) b!1340005))

(declare-fun b!1340016 () Bool)

(declare-fun b_free!32603 () Bool)

(declare-fun b_next!33307 () Bool)

(assert (=> b!1340016 (= b_free!32603 (not b_next!33307))))

(declare-fun tp!387966 () Bool)

(declare-fun b_and!89595 () Bool)

(assert (=> b!1340016 (= tp!387966 b_and!89595)))

(declare-fun b_free!32605 () Bool)

(declare-fun b_next!33309 () Bool)

(assert (=> b!1340016 (= b_free!32605 (not b_next!33309))))

(declare-fun t!119411 () Bool)

(declare-fun tb!70549 () Bool)

(assert (=> (and b!1340016 (= (toChars!3467 (transformation!2369 (h!19067 (t!119377 rules!2550)))) (toChars!3467 (transformation!2369 (rule!4114 t2!34)))) t!119411) tb!70549))

(declare-fun result!85728 () Bool)

(assert (= result!85728 result!85686))

(assert (=> d!377831 t!119411))

(declare-fun tb!70551 () Bool)

(declare-fun t!119413 () Bool)

(assert (=> (and b!1340016 (= (toChars!3467 (transformation!2369 (h!19067 (t!119377 rules!2550)))) (toChars!3467 (transformation!2369 (rule!4114 t1!34)))) t!119413) tb!70551))

(declare-fun result!85730 () Bool)

(assert (= result!85730 result!85694))

(assert (=> b!1339764 t!119413))

(assert (=> b!1339769 t!119411))

(assert (=> d!377927 t!119413))

(declare-fun b_and!89597 () Bool)

(declare-fun tp!387967 () Bool)

(assert (=> b!1340016 (= tp!387967 (and (=> t!119411 result!85728) (=> t!119413 result!85730) b_and!89597))))

(declare-fun e!858112 () Bool)

(assert (=> b!1340016 (= e!858112 (and tp!387966 tp!387967))))

(declare-fun e!858113 () Bool)

(declare-fun tp!387964 () Bool)

(declare-fun b!1340015 () Bool)

(assert (=> b!1340015 (= e!858113 (and tp!387964 (inv!18001 (tag!2631 (h!19067 (t!119377 rules!2550)))) (inv!18005 (transformation!2369 (h!19067 (t!119377 rules!2550)))) e!858112))))

(declare-fun b!1340014 () Bool)

(declare-fun e!858111 () Bool)

(declare-fun tp!387965 () Bool)

(assert (=> b!1340014 (= e!858111 (and e!858113 tp!387965))))

(assert (=> b!1339737 (= tp!387878 e!858111)))

(assert (= b!1340015 b!1340016))

(assert (= b!1340014 b!1340015))

(assert (= (and b!1339737 ((_ is Cons!13666) (t!119377 rules!2550))) b!1340014))

(declare-fun m!1498343 () Bool)

(assert (=> b!1340015 m!1498343))

(declare-fun m!1498345 () Bool)

(assert (=> b!1340015 m!1498345))

(declare-fun b!1340020 () Bool)

(declare-fun e!858115 () Bool)

(declare-fun tp!387972 () Bool)

(declare-fun tp!387971 () Bool)

(assert (=> b!1340020 (= e!858115 (and tp!387972 tp!387971))))

(declare-fun b!1340019 () Bool)

(declare-fun tp!387968 () Bool)

(assert (=> b!1340019 (= e!858115 tp!387968)))

(declare-fun b!1340017 () Bool)

(assert (=> b!1340017 (= e!858115 tp_is_empty!6683)))

(assert (=> b!1339722 (= tp!387883 e!858115)))

(declare-fun b!1340018 () Bool)

(declare-fun tp!387970 () Bool)

(declare-fun tp!387969 () Bool)

(assert (=> b!1340018 (= e!858115 (and tp!387970 tp!387969))))

(assert (= (and b!1339722 ((_ is ElementMatch!3683) (regex!2369 (rule!4114 t1!34)))) b!1340017))

(assert (= (and b!1339722 ((_ is Concat!6143) (regex!2369 (rule!4114 t1!34)))) b!1340018))

(assert (= (and b!1339722 ((_ is Star!3683) (regex!2369 (rule!4114 t1!34)))) b!1340019))

(assert (= (and b!1339722 ((_ is Union!3683) (regex!2369 (rule!4114 t1!34)))) b!1340020))

(declare-fun b!1340025 () Bool)

(declare-fun e!858118 () Bool)

(declare-fun tp!387975 () Bool)

(assert (=> b!1340025 (= e!858118 (and tp_is_empty!6683 tp!387975))))

(assert (=> b!1339724 (= tp!387876 e!858118)))

(assert (= (and b!1339724 ((_ is Cons!13665) (originalCharacters!3231 t2!34))) b!1340025))

(declare-fun b!1340026 () Bool)

(declare-fun e!858119 () Bool)

(declare-fun tp!387976 () Bool)

(assert (=> b!1340026 (= e!858119 (and tp_is_empty!6683 tp!387976))))

(assert (=> b!1339735 (= tp!387885 e!858119)))

(assert (= (and b!1339735 ((_ is Cons!13665) (originalCharacters!3231 t1!34))) b!1340026))

(declare-fun b_lambda!39573 () Bool)

(assert (= b_lambda!39569 (or b!1339727 b_lambda!39573)))

(declare-fun bs!332244 () Bool)

(declare-fun d!377955 () Bool)

(assert (= bs!332244 (and d!377955 b!1339727)))

(declare-fun res!603741 () Bool)

(declare-fun e!858120 () Bool)

(assert (=> bs!332244 (=> (not res!603741) (not e!858120))))

(declare-fun matchR!1676 (Regex!3683 List!13731) Bool)

(assert (=> bs!332244 (= res!603741 (matchR!1676 lt!443337 lt!443398))))

(assert (=> bs!332244 (= (dynLambda!6030 lambda!56109 lt!443398) e!858120)))

(declare-fun b!1340027 () Bool)

(declare-fun isPrefix!1097 (List!13731 List!13731) Bool)

(assert (=> b!1340027 (= e!858120 (isPrefix!1097 lt!443335 lt!443398))))

(assert (= (and bs!332244 res!603741) b!1340027))

(declare-fun m!1498347 () Bool)

(assert (=> bs!332244 m!1498347))

(declare-fun m!1498349 () Bool)

(assert (=> b!1340027 m!1498349))

(assert (=> d!377919 d!377955))

(declare-fun b_lambda!39575 () Bool)

(assert (= b_lambda!39545 (or (and b!1339729 b_free!32589 (= (toChars!3467 (transformation!2369 (h!19067 rules!2550))) (toChars!3467 (transformation!2369 (rule!4114 t1!34))))) (and b!1339738 b_free!32593 (= (toChars!3467 (transformation!2369 (rule!4114 t2!34))) (toChars!3467 (transformation!2369 (rule!4114 t1!34))))) (and b!1339734 b_free!32597) (and b!1340016 b_free!32605 (= (toChars!3467 (transformation!2369 (h!19067 (t!119377 rules!2550)))) (toChars!3467 (transformation!2369 (rule!4114 t1!34))))) b_lambda!39575)))

(declare-fun b_lambda!39577 () Bool)

(assert (= b_lambda!39547 (or (and b!1339729 b_free!32589 (= (toChars!3467 (transformation!2369 (h!19067 rules!2550))) (toChars!3467 (transformation!2369 (rule!4114 t2!34))))) (and b!1339738 b_free!32593) (and b!1339734 b_free!32597 (= (toChars!3467 (transformation!2369 (rule!4114 t1!34))) (toChars!3467 (transformation!2369 (rule!4114 t2!34))))) (and b!1340016 b_free!32605 (= (toChars!3467 (transformation!2369 (h!19067 (t!119377 rules!2550)))) (toChars!3467 (transformation!2369 (rule!4114 t2!34))))) b_lambda!39577)))

(declare-fun b_lambda!39579 () Bool)

(assert (= b_lambda!39543 (or (and b!1339729 b_free!32589 (= (toChars!3467 (transformation!2369 (h!19067 rules!2550))) (toChars!3467 (transformation!2369 (rule!4114 t2!34))))) (and b!1339738 b_free!32593) (and b!1339734 b_free!32597 (= (toChars!3467 (transformation!2369 (rule!4114 t1!34))) (toChars!3467 (transformation!2369 (rule!4114 t2!34))))) (and b!1340016 b_free!32605 (= (toChars!3467 (transformation!2369 (h!19067 (t!119377 rules!2550)))) (toChars!3467 (transformation!2369 (rule!4114 t2!34))))) b_lambda!39579)))

(declare-fun b_lambda!39581 () Bool)

(assert (= b_lambda!39571 (or (and b!1339729 b_free!32589 (= (toChars!3467 (transformation!2369 (h!19067 rules!2550))) (toChars!3467 (transformation!2369 (rule!4114 t1!34))))) (and b!1339738 b_free!32593 (= (toChars!3467 (transformation!2369 (rule!4114 t2!34))) (toChars!3467 (transformation!2369 (rule!4114 t1!34))))) (and b!1339734 b_free!32597) (and b!1340016 b_free!32605 (= (toChars!3467 (transformation!2369 (h!19067 (t!119377 rules!2550)))) (toChars!3467 (transformation!2369 (rule!4114 t1!34))))) b_lambda!39581)))

(check-sat (not d!377829) (not tb!70521) (not b!1339984) (not d!377931) (not b!1339802) (not d!377865) (not b!1340004) (not b!1339957) (not d!377917) b_and!89591 (not b!1339978) b_and!89595 (not b!1339943) (not b!1339915) (not b_next!33295) (not b!1340014) (not b!1339982) (not b!1339765) (not b!1339987) b_and!89593 (not d!377839) (not b!1339748) (not b!1340026) (not b!1339927) (not b!1339764) (not b!1339933) (not b!1339967) (not b!1340018) (not b_lambda!39573) (not d!377935) b_and!89597 (not b!1339961) (not b_next!33301) (not b_next!33293) (not d!377929) (not b!1339769) (not b_lambda!39581) (not tb!70527) (not b_next!33309) (not b_next!33307) (not b!1339954) (not d!377921) (not d!377945) (not b!1340000) (not b!1339959) (not b!1340027) (not d!377877) (not b!1340003) (not d!377849) (not b_next!33297) (not b!1339801) (not d!377927) (not b!1339946) (not b!1340019) (not b!1339767) (not b!1339983) (not d!377915) (not d!377947) (not b!1339953) (not d!377923) (not b!1339958) (not b!1340020) (not d!377941) (not b!1339940) (not d!377867) (not b!1339916) (not b!1339792) tp_is_empty!6683 (not d!377919) (not b!1339926) (not d!377943) (not b!1340005) (not d!377933) b_and!89535 (not b_lambda!39577) (not b!1339939) (not b!1339979) (not b!1339770) (not b!1340025) (not b!1339966) (not b!1340001) b_and!89539 b_and!89589 (not d!377831) (not d!377925) (not bs!332244) (not b!1340015) b_and!89531 (not b_lambda!39575) (not d!377875) (not d!377855) (not d!377939) (not b!1339914) (not b_lambda!39579) (not b!1339793) (not b_next!33299) (not b!1339999) (not b!1339945) (not b_next!33291))
(check-sat (not b_next!33295) b_and!89593 b_and!89597 (not b_next!33297) b_and!89535 b_and!89531 b_and!89591 b_and!89595 (not b_next!33301) (not b_next!33293) (not b_next!33309) (not b_next!33307) b_and!89539 b_and!89589 (not b_next!33299) (not b_next!33291))
