; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!358668 () Bool)

(assert start!358668)

(declare-fun b!3832972 () Bool)

(declare-fun b_free!101733 () Bool)

(declare-fun b_next!102437 () Bool)

(assert (=> b!3832972 (= b_free!101733 (not b_next!102437))))

(declare-fun tp!1159780 () Bool)

(declare-fun b_and!284851 () Bool)

(assert (=> b!3832972 (= tp!1159780 b_and!284851)))

(declare-fun b_free!101735 () Bool)

(declare-fun b_next!102439 () Bool)

(assert (=> b!3832972 (= b_free!101735 (not b_next!102439))))

(declare-fun tp!1159796 () Bool)

(declare-fun b_and!284853 () Bool)

(assert (=> b!3832972 (= tp!1159796 b_and!284853)))

(declare-fun b!3832955 () Bool)

(declare-fun b_free!101737 () Bool)

(declare-fun b_next!102441 () Bool)

(assert (=> b!3832955 (= b_free!101737 (not b_next!102441))))

(declare-fun tp!1159793 () Bool)

(declare-fun b_and!284855 () Bool)

(assert (=> b!3832955 (= tp!1159793 b_and!284855)))

(declare-fun b_free!101739 () Bool)

(declare-fun b_next!102443 () Bool)

(assert (=> b!3832955 (= b_free!101739 (not b_next!102443))))

(declare-fun tp!1159787 () Bool)

(declare-fun b_and!284857 () Bool)

(assert (=> b!3832955 (= tp!1159787 b_and!284857)))

(declare-fun b!3832973 () Bool)

(declare-fun b_free!101741 () Bool)

(declare-fun b_next!102445 () Bool)

(assert (=> b!3832973 (= b_free!101741 (not b_next!102445))))

(declare-fun tp!1159783 () Bool)

(declare-fun b_and!284859 () Bool)

(assert (=> b!3832973 (= tp!1159783 b_and!284859)))

(declare-fun b_free!101743 () Bool)

(declare-fun b_next!102447 () Bool)

(assert (=> b!3832973 (= b_free!101743 (not b_next!102447))))

(declare-fun tp!1159794 () Bool)

(declare-fun b_and!284861 () Bool)

(assert (=> b!3832973 (= tp!1159794 b_and!284861)))

(declare-fun b!3832954 () Bool)

(declare-fun res!1551606 () Bool)

(declare-fun e!2367092 () Bool)

(assert (=> b!3832954 (=> (not res!1551606) (not e!2367092))))

(declare-datatypes ((C!22460 0))(
  ( (C!22461 (val!13324 Int)) )
))
(declare-datatypes ((List!40598 0))(
  ( (Nil!40474) (Cons!40474 (h!45894 C!22460) (t!309187 List!40598)) )
))
(declare-fun suffixResult!91 () List!40598)

(declare-datatypes ((LexerInterface!5821 0))(
  ( (LexerInterfaceExt!5818 (__x!25141 Int)) (Lexer!5819) )
))
(declare-fun thiss!20629 () LexerInterface!5821)

(declare-fun suffix!1176 () List!40598)

(declare-datatypes ((IArray!24891 0))(
  ( (IArray!24892 (innerList!12503 List!40598)) )
))
(declare-datatypes ((Conc!12443 0))(
  ( (Node!12443 (left!31313 Conc!12443) (right!31643 Conc!12443) (csize!25116 Int) (cheight!12654 Int)) (Leaf!19266 (xs!15749 IArray!24891) (csize!25117 Int)) (Empty!12443) )
))
(declare-datatypes ((BalanceConc!24480 0))(
  ( (BalanceConc!24481 (c!668412 Conc!12443)) )
))
(declare-datatypes ((List!40599 0))(
  ( (Nil!40475) (Cons!40475 (h!45895 (_ BitVec 16)) (t!309188 List!40599)) )
))
(declare-datatypes ((TokenValue!6462 0))(
  ( (FloatLiteralValue!12924 (text!45679 List!40599)) (TokenValueExt!6461 (__x!25142 Int)) (Broken!32310 (value!198220 List!40599)) (Object!6585) (End!6462) (Def!6462) (Underscore!6462) (Match!6462) (Else!6462) (Error!6462) (Case!6462) (If!6462) (Extends!6462) (Abstract!6462) (Class!6462) (Val!6462) (DelimiterValue!12924 (del!6522 List!40599)) (KeywordValue!6468 (value!198221 List!40599)) (CommentValue!12924 (value!198222 List!40599)) (WhitespaceValue!12924 (value!198223 List!40599)) (IndentationValue!6462 (value!198224 List!40599)) (String!46027) (Int32!6462) (Broken!32311 (value!198225 List!40599)) (Boolean!6463) (Unit!58221) (OperatorValue!6465 (op!6522 List!40599)) (IdentifierValue!12924 (value!198226 List!40599)) (IdentifierValue!12925 (value!198227 List!40599)) (WhitespaceValue!12925 (value!198228 List!40599)) (True!12924) (False!12924) (Broken!32312 (value!198229 List!40599)) (Broken!32313 (value!198230 List!40599)) (True!12925) (RightBrace!6462) (RightBracket!6462) (Colon!6462) (Null!6462) (Comma!6462) (LeftBracket!6462) (False!12925) (LeftBrace!6462) (ImaginaryLiteralValue!6462 (text!45680 List!40599)) (StringLiteralValue!19386 (value!198231 List!40599)) (EOFValue!6462 (value!198232 List!40599)) (IdentValue!6462 (value!198233 List!40599)) (DelimiterValue!12925 (value!198234 List!40599)) (DedentValue!6462 (value!198235 List!40599)) (NewLineValue!6462 (value!198236 List!40599)) (IntegerValue!19386 (value!198237 (_ BitVec 32)) (text!45681 List!40599)) (IntegerValue!19387 (value!198238 Int) (text!45682 List!40599)) (Times!6462) (Or!6462) (Equal!6462) (Minus!6462) (Broken!32314 (value!198239 List!40599)) (And!6462) (Div!6462) (LessEqual!6462) (Mod!6462) (Concat!17599) (Not!6462) (Plus!6462) (SpaceValue!6462 (value!198240 List!40599)) (IntegerValue!19388 (value!198241 Int) (text!45683 List!40599)) (StringLiteralValue!19387 (text!45684 List!40599)) (FloatLiteralValue!12925 (text!45685 List!40599)) (BytesLiteralValue!6462 (value!198242 List!40599)) (CommentValue!12925 (value!198243 List!40599)) (StringLiteralValue!19388 (value!198244 List!40599)) (ErrorTokenValue!6462 (msg!6523 List!40599)) )
))
(declare-datatypes ((Regex!11137 0))(
  ( (ElementMatch!11137 (c!668413 C!22460)) (Concat!17600 (regOne!22786 Regex!11137) (regTwo!22786 Regex!11137)) (EmptyExpr!11137) (Star!11137 (reg!11466 Regex!11137)) (EmptyLang!11137) (Union!11137 (regOne!22787 Regex!11137) (regTwo!22787 Regex!11137)) )
))
(declare-datatypes ((String!46028 0))(
  ( (String!46029 (value!198245 String)) )
))
(declare-datatypes ((TokenValueInjection!12352 0))(
  ( (TokenValueInjection!12353 (toValue!8636 Int) (toChars!8495 Int)) )
))
(declare-datatypes ((Rule!12264 0))(
  ( (Rule!12265 (regex!6232 Regex!11137) (tag!7092 String!46028) (isSeparator!6232 Bool) (transformation!6232 TokenValueInjection!12352)) )
))
(declare-datatypes ((List!40600 0))(
  ( (Nil!40476) (Cons!40476 (h!45896 Rule!12264) (t!309189 List!40600)) )
))
(declare-fun rules!2768 () List!40600)

(declare-datatypes ((Token!11602 0))(
  ( (Token!11603 (value!198246 TokenValue!6462) (rule!9064 Rule!12264) (size!30496 Int) (originalCharacters!6832 List!40598)) )
))
(declare-datatypes ((List!40601 0))(
  ( (Nil!40477) (Cons!40477 (h!45897 Token!11602) (t!309190 List!40601)) )
))
(declare-fun prefixTokens!80 () List!40601)

(declare-fun suffixTokens!72 () List!40601)

(declare-fun prefix!426 () List!40598)

(declare-datatypes ((tuple2!39652 0))(
  ( (tuple2!39653 (_1!22960 List!40601) (_2!22960 List!40598)) )
))
(declare-fun lexList!1589 (LexerInterface!5821 List!40600 List!40598) tuple2!39652)

(declare-fun ++!10221 (List!40598 List!40598) List!40598)

(declare-fun ++!10222 (List!40601 List!40601) List!40601)

(assert (=> b!3832954 (= res!1551606 (= (lexList!1589 thiss!20629 rules!2768 (++!10221 prefix!426 suffix!1176)) (tuple2!39653 (++!10222 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun e!2367104 () Bool)

(assert (=> b!3832955 (= e!2367104 (and tp!1159793 tp!1159787))))

(declare-fun b!3832956 () Bool)

(declare-fun e!2367099 () Bool)

(declare-fun tp_is_empty!19245 () Bool)

(declare-fun tp!1159781 () Bool)

(assert (=> b!3832956 (= e!2367099 (and tp_is_empty!19245 tp!1159781))))

(declare-fun b!3832957 () Bool)

(declare-fun e!2367093 () Bool)

(declare-fun e!2367087 () Bool)

(declare-fun tp!1159789 () Bool)

(assert (=> b!3832957 (= e!2367093 (and e!2367087 tp!1159789))))

(declare-fun tp!1159784 () Bool)

(declare-fun e!2367097 () Bool)

(declare-fun b!3832958 () Bool)

(declare-fun inv!54606 (String!46028) Bool)

(declare-fun inv!54609 (TokenValueInjection!12352) Bool)

(assert (=> b!3832958 (= e!2367087 (and tp!1159784 (inv!54606 (tag!7092 (h!45896 rules!2768))) (inv!54609 (transformation!6232 (h!45896 rules!2768))) e!2367097))))

(declare-fun tp!1159792 () Bool)

(declare-fun b!3832959 () Bool)

(declare-fun e!2367091 () Bool)

(declare-fun e!2367095 () Bool)

(declare-fun inv!54610 (Token!11602) Bool)

(assert (=> b!3832959 (= e!2367091 (and (inv!54610 (h!45897 suffixTokens!72)) e!2367095 tp!1159792))))

(declare-fun tp!1159786 () Bool)

(declare-fun e!2367094 () Bool)

(declare-fun b!3832960 () Bool)

(declare-fun inv!21 (TokenValue!6462) Bool)

(assert (=> b!3832960 (= e!2367095 (and (inv!21 (value!198246 (h!45897 suffixTokens!72))) e!2367094 tp!1159786))))

(declare-fun b!3832961 () Bool)

(declare-fun res!1551601 () Bool)

(assert (=> b!3832961 (=> (not res!1551601) (not e!2367092))))

(declare-fun rulesInvariant!5164 (LexerInterface!5821 List!40600) Bool)

(assert (=> b!3832961 (= res!1551601 (rulesInvariant!5164 thiss!20629 rules!2768))))

(declare-fun e!2367100 () Bool)

(declare-fun tp!1159791 () Bool)

(declare-fun b!3832962 () Bool)

(declare-fun e!2367098 () Bool)

(assert (=> b!3832962 (= e!2367098 (and (inv!54610 (h!45897 prefixTokens!80)) e!2367100 tp!1159791))))

(declare-fun res!1551605 () Bool)

(assert (=> start!358668 (=> (not res!1551605) (not e!2367092))))

(get-info :version)

(assert (=> start!358668 (= res!1551605 ((_ is Lexer!5819) thiss!20629))))

(assert (=> start!358668 e!2367092))

(assert (=> start!358668 e!2367099))

(assert (=> start!358668 true))

(declare-fun e!2367101 () Bool)

(assert (=> start!358668 e!2367101))

(assert (=> start!358668 e!2367093))

(assert (=> start!358668 e!2367098))

(assert (=> start!358668 e!2367091))

(declare-fun e!2367106 () Bool)

(assert (=> start!358668 e!2367106))

(declare-fun b!3832963 () Bool)

(declare-fun e!2367096 () Bool)

(declare-fun tp!1159788 () Bool)

(assert (=> b!3832963 (= e!2367094 (and tp!1159788 (inv!54606 (tag!7092 (rule!9064 (h!45897 suffixTokens!72)))) (inv!54609 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) e!2367096))))

(declare-fun tp!1159782 () Bool)

(declare-fun b!3832964 () Bool)

(declare-fun e!2367103 () Bool)

(assert (=> b!3832964 (= e!2367103 (and tp!1159782 (inv!54606 (tag!7092 (rule!9064 (h!45897 prefixTokens!80)))) (inv!54609 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) e!2367104))))

(declare-fun b!3832965 () Bool)

(declare-fun res!1551604 () Bool)

(assert (=> b!3832965 (=> (not res!1551604) (not e!2367092))))

(assert (=> b!3832965 (= res!1551604 (= (lexList!1589 thiss!20629 rules!2768 suffix!1176) (tuple2!39653 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3832966 () Bool)

(declare-fun rulesValidInductive!2194 (LexerInterface!5821 List!40600) Bool)

(assert (=> b!3832966 (= e!2367092 (not (rulesValidInductive!2194 thiss!20629 rules!2768)))))

(declare-fun b!3832967 () Bool)

(declare-fun res!1551600 () Bool)

(assert (=> b!3832967 (=> (not res!1551600) (not e!2367092))))

(declare-fun isEmpty!23894 (List!40598) Bool)

(assert (=> b!3832967 (= res!1551600 (not (isEmpty!23894 prefix!426)))))

(declare-fun b!3832968 () Bool)

(declare-fun res!1551602 () Bool)

(assert (=> b!3832968 (=> (not res!1551602) (not e!2367092))))

(declare-fun isEmpty!23895 (List!40600) Bool)

(assert (=> b!3832968 (= res!1551602 (not (isEmpty!23895 rules!2768)))))

(declare-fun tp!1159795 () Bool)

(declare-fun b!3832969 () Bool)

(assert (=> b!3832969 (= e!2367100 (and (inv!21 (value!198246 (h!45897 prefixTokens!80))) e!2367103 tp!1159795))))

(declare-fun b!3832970 () Bool)

(declare-fun res!1551603 () Bool)

(assert (=> b!3832970 (=> (not res!1551603) (not e!2367092))))

(declare-fun isEmpty!23896 (List!40601) Bool)

(assert (=> b!3832970 (= res!1551603 (not (isEmpty!23896 prefixTokens!80)))))

(declare-fun b!3832971 () Bool)

(declare-fun tp!1159790 () Bool)

(assert (=> b!3832971 (= e!2367106 (and tp_is_empty!19245 tp!1159790))))

(assert (=> b!3832972 (= e!2367096 (and tp!1159780 tp!1159796))))

(assert (=> b!3832973 (= e!2367097 (and tp!1159783 tp!1159794))))

(declare-fun b!3832974 () Bool)

(declare-fun tp!1159785 () Bool)

(assert (=> b!3832974 (= e!2367101 (and tp_is_empty!19245 tp!1159785))))

(assert (= (and start!358668 res!1551605) b!3832968))

(assert (= (and b!3832968 res!1551602) b!3832961))

(assert (= (and b!3832961 res!1551601) b!3832970))

(assert (= (and b!3832970 res!1551603) b!3832967))

(assert (= (and b!3832967 res!1551600) b!3832954))

(assert (= (and b!3832954 res!1551606) b!3832965))

(assert (= (and b!3832965 res!1551604) b!3832966))

(assert (= (and start!358668 ((_ is Cons!40474) suffixResult!91)) b!3832956))

(assert (= (and start!358668 ((_ is Cons!40474) suffix!1176)) b!3832974))

(assert (= b!3832958 b!3832973))

(assert (= b!3832957 b!3832958))

(assert (= (and start!358668 ((_ is Cons!40476) rules!2768)) b!3832957))

(assert (= b!3832964 b!3832955))

(assert (= b!3832969 b!3832964))

(assert (= b!3832962 b!3832969))

(assert (= (and start!358668 ((_ is Cons!40477) prefixTokens!80)) b!3832962))

(assert (= b!3832963 b!3832972))

(assert (= b!3832960 b!3832963))

(assert (= b!3832959 b!3832960))

(assert (= (and start!358668 ((_ is Cons!40477) suffixTokens!72)) b!3832959))

(assert (= (and start!358668 ((_ is Cons!40474) prefix!426)) b!3832971))

(declare-fun m!4387339 () Bool)

(assert (=> b!3832966 m!4387339))

(declare-fun m!4387341 () Bool)

(assert (=> b!3832958 m!4387341))

(declare-fun m!4387343 () Bool)

(assert (=> b!3832958 m!4387343))

(declare-fun m!4387345 () Bool)

(assert (=> b!3832954 m!4387345))

(assert (=> b!3832954 m!4387345))

(declare-fun m!4387347 () Bool)

(assert (=> b!3832954 m!4387347))

(declare-fun m!4387349 () Bool)

(assert (=> b!3832954 m!4387349))

(declare-fun m!4387351 () Bool)

(assert (=> b!3832967 m!4387351))

(declare-fun m!4387353 () Bool)

(assert (=> b!3832960 m!4387353))

(declare-fun m!4387355 () Bool)

(assert (=> b!3832968 m!4387355))

(declare-fun m!4387357 () Bool)

(assert (=> b!3832970 m!4387357))

(declare-fun m!4387359 () Bool)

(assert (=> b!3832962 m!4387359))

(declare-fun m!4387361 () Bool)

(assert (=> b!3832963 m!4387361))

(declare-fun m!4387363 () Bool)

(assert (=> b!3832963 m!4387363))

(declare-fun m!4387365 () Bool)

(assert (=> b!3832964 m!4387365))

(declare-fun m!4387367 () Bool)

(assert (=> b!3832964 m!4387367))

(declare-fun m!4387369 () Bool)

(assert (=> b!3832965 m!4387369))

(declare-fun m!4387371 () Bool)

(assert (=> b!3832959 m!4387371))

(declare-fun m!4387373 () Bool)

(assert (=> b!3832969 m!4387373))

(declare-fun m!4387375 () Bool)

(assert (=> b!3832961 m!4387375))

(check-sat b_and!284859 (not b!3832965) b_and!284853 (not b!3832970) b_and!284861 (not b_next!102437) (not b_next!102445) (not b!3832966) (not b_next!102443) (not b!3832956) (not b_next!102441) b_and!284851 (not b!3832961) b_and!284855 (not b!3832954) b_and!284857 (not b_next!102439) (not b!3832967) (not b!3832960) (not b!3832971) (not b_next!102447) (not b!3832962) tp_is_empty!19245 (not b!3832974) (not b!3832959) (not b!3832958) (not b!3832957) (not b!3832963) (not b!3832964) (not b!3832969) (not b!3832968))
(check-sat b_and!284859 b_and!284853 b_and!284861 (not b_next!102447) (not b_next!102437) (not b_next!102445) (not b_next!102443) (not b_next!102441) b_and!284851 b_and!284855 b_and!284857 (not b_next!102439))
(get-model)

(declare-fun d!1137715 () Bool)

(assert (=> d!1137715 (= (inv!54606 (tag!7092 (rule!9064 (h!45897 prefixTokens!80)))) (= (mod (str.len (value!198245 (tag!7092 (rule!9064 (h!45897 prefixTokens!80))))) 2) 0))))

(assert (=> b!3832964 d!1137715))

(declare-fun d!1137717 () Bool)

(declare-fun res!1551609 () Bool)

(declare-fun e!2367109 () Bool)

(assert (=> d!1137717 (=> (not res!1551609) (not e!2367109))))

(declare-fun semiInverseModEq!2672 (Int Int) Bool)

(assert (=> d!1137717 (= res!1551609 (semiInverseModEq!2672 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (toValue!8636 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))))))

(assert (=> d!1137717 (= (inv!54609 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) e!2367109)))

(declare-fun b!3832977 () Bool)

(declare-fun equivClasses!2571 (Int Int) Bool)

(assert (=> b!3832977 (= e!2367109 (equivClasses!2571 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (toValue!8636 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))))))

(assert (= (and d!1137717 res!1551609) b!3832977))

(declare-fun m!4387377 () Bool)

(assert (=> d!1137717 m!4387377))

(declare-fun m!4387379 () Bool)

(assert (=> b!3832977 m!4387379))

(assert (=> b!3832964 d!1137717))

(declare-fun b!3833014 () Bool)

(declare-fun e!2367131 () tuple2!39652)

(assert (=> b!3833014 (= e!2367131 (tuple2!39653 Nil!40477 suffix!1176))))

(declare-fun b!3833015 () Bool)

(declare-fun e!2367132 () Bool)

(declare-fun e!2367133 () Bool)

(assert (=> b!3833015 (= e!2367132 e!2367133)))

(declare-fun res!1551621 () Bool)

(declare-fun lt!1330701 () tuple2!39652)

(declare-fun size!30499 (List!40598) Int)

(assert (=> b!3833015 (= res!1551621 (< (size!30499 (_2!22960 lt!1330701)) (size!30499 suffix!1176)))))

(assert (=> b!3833015 (=> (not res!1551621) (not e!2367133))))

(declare-fun b!3833016 () Bool)

(assert (=> b!3833016 (= e!2367133 (not (isEmpty!23896 (_1!22960 lt!1330701))))))

(declare-fun d!1137719 () Bool)

(assert (=> d!1137719 e!2367132))

(declare-fun c!668424 () Bool)

(declare-fun size!30500 (List!40601) Int)

(assert (=> d!1137719 (= c!668424 (> (size!30500 (_1!22960 lt!1330701)) 0))))

(assert (=> d!1137719 (= lt!1330701 e!2367131)))

(declare-fun c!668425 () Bool)

(declare-datatypes ((tuple2!39656 0))(
  ( (tuple2!39657 (_1!22962 Token!11602) (_2!22962 List!40598)) )
))
(declare-datatypes ((Option!8652 0))(
  ( (None!8651) (Some!8651 (v!38939 tuple2!39656)) )
))
(declare-fun lt!1330700 () Option!8652)

(assert (=> d!1137719 (= c!668425 ((_ is Some!8651) lt!1330700))))

(declare-fun maxPrefix!3127 (LexerInterface!5821 List!40600 List!40598) Option!8652)

(assert (=> d!1137719 (= lt!1330700 (maxPrefix!3127 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1137719 (= (lexList!1589 thiss!20629 rules!2768 suffix!1176) lt!1330701)))

(declare-fun b!3833017 () Bool)

(assert (=> b!3833017 (= e!2367132 (= (_2!22960 lt!1330701) suffix!1176))))

(declare-fun b!3833018 () Bool)

(declare-fun lt!1330702 () tuple2!39652)

(assert (=> b!3833018 (= e!2367131 (tuple2!39653 (Cons!40477 (_1!22962 (v!38939 lt!1330700)) (_1!22960 lt!1330702)) (_2!22960 lt!1330702)))))

(assert (=> b!3833018 (= lt!1330702 (lexList!1589 thiss!20629 rules!2768 (_2!22962 (v!38939 lt!1330700))))))

(assert (= (and d!1137719 c!668425) b!3833018))

(assert (= (and d!1137719 (not c!668425)) b!3833014))

(assert (= (and d!1137719 c!668424) b!3833015))

(assert (= (and d!1137719 (not c!668424)) b!3833017))

(assert (= (and b!3833015 res!1551621) b!3833016))

(declare-fun m!4387399 () Bool)

(assert (=> b!3833015 m!4387399))

(declare-fun m!4387401 () Bool)

(assert (=> b!3833015 m!4387401))

(declare-fun m!4387403 () Bool)

(assert (=> b!3833016 m!4387403))

(declare-fun m!4387405 () Bool)

(assert (=> d!1137719 m!4387405))

(declare-fun m!4387407 () Bool)

(assert (=> d!1137719 m!4387407))

(declare-fun m!4387409 () Bool)

(assert (=> b!3833018 m!4387409))

(assert (=> b!3832965 d!1137719))

(declare-fun b!3833019 () Bool)

(declare-fun e!2367134 () tuple2!39652)

(assert (=> b!3833019 (= e!2367134 (tuple2!39653 Nil!40477 (++!10221 prefix!426 suffix!1176)))))

(declare-fun b!3833020 () Bool)

(declare-fun e!2367135 () Bool)

(declare-fun e!2367136 () Bool)

(assert (=> b!3833020 (= e!2367135 e!2367136)))

(declare-fun res!1551622 () Bool)

(declare-fun lt!1330704 () tuple2!39652)

(assert (=> b!3833020 (= res!1551622 (< (size!30499 (_2!22960 lt!1330704)) (size!30499 (++!10221 prefix!426 suffix!1176))))))

(assert (=> b!3833020 (=> (not res!1551622) (not e!2367136))))

(declare-fun b!3833021 () Bool)

(assert (=> b!3833021 (= e!2367136 (not (isEmpty!23896 (_1!22960 lt!1330704))))))

(declare-fun d!1137727 () Bool)

(assert (=> d!1137727 e!2367135))

(declare-fun c!668426 () Bool)

(assert (=> d!1137727 (= c!668426 (> (size!30500 (_1!22960 lt!1330704)) 0))))

(assert (=> d!1137727 (= lt!1330704 e!2367134)))

(declare-fun c!668427 () Bool)

(declare-fun lt!1330703 () Option!8652)

(assert (=> d!1137727 (= c!668427 ((_ is Some!8651) lt!1330703))))

(assert (=> d!1137727 (= lt!1330703 (maxPrefix!3127 thiss!20629 rules!2768 (++!10221 prefix!426 suffix!1176)))))

(assert (=> d!1137727 (= (lexList!1589 thiss!20629 rules!2768 (++!10221 prefix!426 suffix!1176)) lt!1330704)))

(declare-fun b!3833022 () Bool)

(assert (=> b!3833022 (= e!2367135 (= (_2!22960 lt!1330704) (++!10221 prefix!426 suffix!1176)))))

(declare-fun b!3833023 () Bool)

(declare-fun lt!1330705 () tuple2!39652)

(assert (=> b!3833023 (= e!2367134 (tuple2!39653 (Cons!40477 (_1!22962 (v!38939 lt!1330703)) (_1!22960 lt!1330705)) (_2!22960 lt!1330705)))))

(assert (=> b!3833023 (= lt!1330705 (lexList!1589 thiss!20629 rules!2768 (_2!22962 (v!38939 lt!1330703))))))

(assert (= (and d!1137727 c!668427) b!3833023))

(assert (= (and d!1137727 (not c!668427)) b!3833019))

(assert (= (and d!1137727 c!668426) b!3833020))

(assert (= (and d!1137727 (not c!668426)) b!3833022))

(assert (= (and b!3833020 res!1551622) b!3833021))

(declare-fun m!4387411 () Bool)

(assert (=> b!3833020 m!4387411))

(assert (=> b!3833020 m!4387345))

(declare-fun m!4387413 () Bool)

(assert (=> b!3833020 m!4387413))

(declare-fun m!4387415 () Bool)

(assert (=> b!3833021 m!4387415))

(declare-fun m!4387417 () Bool)

(assert (=> d!1137727 m!4387417))

(assert (=> d!1137727 m!4387345))

(declare-fun m!4387419 () Bool)

(assert (=> d!1137727 m!4387419))

(declare-fun m!4387421 () Bool)

(assert (=> b!3833023 m!4387421))

(assert (=> b!3832954 d!1137727))

(declare-fun b!3833033 () Bool)

(declare-fun e!2367141 () List!40598)

(assert (=> b!3833033 (= e!2367141 (Cons!40474 (h!45894 prefix!426) (++!10221 (t!309187 prefix!426) suffix!1176)))))

(declare-fun b!3833032 () Bool)

(assert (=> b!3833032 (= e!2367141 suffix!1176)))

(declare-fun d!1137729 () Bool)

(declare-fun e!2367142 () Bool)

(assert (=> d!1137729 e!2367142))

(declare-fun res!1551628 () Bool)

(assert (=> d!1137729 (=> (not res!1551628) (not e!2367142))))

(declare-fun lt!1330708 () List!40598)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6007 (List!40598) (InoxSet C!22460))

(assert (=> d!1137729 (= res!1551628 (= (content!6007 lt!1330708) ((_ map or) (content!6007 prefix!426) (content!6007 suffix!1176))))))

(assert (=> d!1137729 (= lt!1330708 e!2367141)))

(declare-fun c!668430 () Bool)

(assert (=> d!1137729 (= c!668430 ((_ is Nil!40474) prefix!426))))

(assert (=> d!1137729 (= (++!10221 prefix!426 suffix!1176) lt!1330708)))

(declare-fun b!3833035 () Bool)

(assert (=> b!3833035 (= e!2367142 (or (not (= suffix!1176 Nil!40474)) (= lt!1330708 prefix!426)))))

(declare-fun b!3833034 () Bool)

(declare-fun res!1551627 () Bool)

(assert (=> b!3833034 (=> (not res!1551627) (not e!2367142))))

(assert (=> b!3833034 (= res!1551627 (= (size!30499 lt!1330708) (+ (size!30499 prefix!426) (size!30499 suffix!1176))))))

(assert (= (and d!1137729 c!668430) b!3833032))

(assert (= (and d!1137729 (not c!668430)) b!3833033))

(assert (= (and d!1137729 res!1551628) b!3833034))

(assert (= (and b!3833034 res!1551627) b!3833035))

(declare-fun m!4387423 () Bool)

(assert (=> b!3833033 m!4387423))

(declare-fun m!4387425 () Bool)

(assert (=> d!1137729 m!4387425))

(declare-fun m!4387427 () Bool)

(assert (=> d!1137729 m!4387427))

(declare-fun m!4387429 () Bool)

(assert (=> d!1137729 m!4387429))

(declare-fun m!4387431 () Bool)

(assert (=> b!3833034 m!4387431))

(declare-fun m!4387433 () Bool)

(assert (=> b!3833034 m!4387433))

(assert (=> b!3833034 m!4387401))

(assert (=> b!3832954 d!1137729))

(declare-fun b!3833050 () Bool)

(declare-fun res!1551634 () Bool)

(declare-fun e!2367149 () Bool)

(assert (=> b!3833050 (=> (not res!1551634) (not e!2367149))))

(declare-fun lt!1330715 () List!40601)

(assert (=> b!3833050 (= res!1551634 (= (size!30500 lt!1330715) (+ (size!30500 prefixTokens!80) (size!30500 suffixTokens!72))))))

(declare-fun b!3833051 () Bool)

(assert (=> b!3833051 (= e!2367149 (or (not (= suffixTokens!72 Nil!40477)) (= lt!1330715 prefixTokens!80)))))

(declare-fun d!1137731 () Bool)

(assert (=> d!1137731 e!2367149))

(declare-fun res!1551633 () Bool)

(assert (=> d!1137731 (=> (not res!1551633) (not e!2367149))))

(declare-fun content!6008 (List!40601) (InoxSet Token!11602))

(assert (=> d!1137731 (= res!1551633 (= (content!6008 lt!1330715) ((_ map or) (content!6008 prefixTokens!80) (content!6008 suffixTokens!72))))))

(declare-fun e!2367150 () List!40601)

(assert (=> d!1137731 (= lt!1330715 e!2367150)))

(declare-fun c!668435 () Bool)

(assert (=> d!1137731 (= c!668435 ((_ is Nil!40477) prefixTokens!80))))

(assert (=> d!1137731 (= (++!10222 prefixTokens!80 suffixTokens!72) lt!1330715)))

(declare-fun b!3833049 () Bool)

(assert (=> b!3833049 (= e!2367150 (Cons!40477 (h!45897 prefixTokens!80) (++!10222 (t!309190 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3833048 () Bool)

(assert (=> b!3833048 (= e!2367150 suffixTokens!72)))

(assert (= (and d!1137731 c!668435) b!3833048))

(assert (= (and d!1137731 (not c!668435)) b!3833049))

(assert (= (and d!1137731 res!1551633) b!3833050))

(assert (= (and b!3833050 res!1551634) b!3833051))

(declare-fun m!4387435 () Bool)

(assert (=> b!3833050 m!4387435))

(declare-fun m!4387437 () Bool)

(assert (=> b!3833050 m!4387437))

(declare-fun m!4387439 () Bool)

(assert (=> b!3833050 m!4387439))

(declare-fun m!4387441 () Bool)

(assert (=> d!1137731 m!4387441))

(declare-fun m!4387443 () Bool)

(assert (=> d!1137731 m!4387443))

(declare-fun m!4387445 () Bool)

(assert (=> d!1137731 m!4387445))

(declare-fun m!4387447 () Bool)

(assert (=> b!3833049 m!4387447))

(assert (=> b!3832954 d!1137731))

(declare-fun d!1137733 () Bool)

(assert (=> d!1137733 true))

(declare-fun lt!1330735 () Bool)

(declare-fun lambda!125979 () Int)

(declare-fun forall!8266 (List!40600 Int) Bool)

(assert (=> d!1137733 (= lt!1330735 (forall!8266 rules!2768 lambda!125979))))

(declare-fun e!2367245 () Bool)

(assert (=> d!1137733 (= lt!1330735 e!2367245)))

(declare-fun res!1551672 () Bool)

(assert (=> d!1137733 (=> res!1551672 e!2367245)))

(assert (=> d!1137733 (= res!1551672 (not ((_ is Cons!40476) rules!2768)))))

(assert (=> d!1137733 (= (rulesValidInductive!2194 thiss!20629 rules!2768) lt!1330735)))

(declare-fun b!3833180 () Bool)

(declare-fun e!2367244 () Bool)

(assert (=> b!3833180 (= e!2367245 e!2367244)))

(declare-fun res!1551673 () Bool)

(assert (=> b!3833180 (=> (not res!1551673) (not e!2367244))))

(declare-fun ruleValid!2187 (LexerInterface!5821 Rule!12264) Bool)

(assert (=> b!3833180 (= res!1551673 (ruleValid!2187 thiss!20629 (h!45896 rules!2768)))))

(declare-fun b!3833181 () Bool)

(assert (=> b!3833181 (= e!2367244 (rulesValidInductive!2194 thiss!20629 (t!309189 rules!2768)))))

(assert (= (and d!1137733 (not res!1551672)) b!3833180))

(assert (= (and b!3833180 res!1551673) b!3833181))

(declare-fun m!4387559 () Bool)

(assert (=> d!1137733 m!4387559))

(declare-fun m!4387561 () Bool)

(assert (=> b!3833180 m!4387561))

(declare-fun m!4387563 () Bool)

(assert (=> b!3833181 m!4387563))

(assert (=> b!3832966 d!1137733))

(declare-fun d!1137767 () Bool)

(declare-fun res!1551678 () Bool)

(declare-fun e!2367248 () Bool)

(assert (=> d!1137767 (=> (not res!1551678) (not e!2367248))))

(assert (=> d!1137767 (= res!1551678 (not (isEmpty!23894 (originalCharacters!6832 (h!45897 prefixTokens!80)))))))

(assert (=> d!1137767 (= (inv!54610 (h!45897 prefixTokens!80)) e!2367248)))

(declare-fun b!3833188 () Bool)

(declare-fun res!1551679 () Bool)

(assert (=> b!3833188 (=> (not res!1551679) (not e!2367248))))

(declare-fun list!15082 (BalanceConc!24480) List!40598)

(declare-fun dynLambda!17520 (Int TokenValue!6462) BalanceConc!24480)

(assert (=> b!3833188 (= res!1551679 (= (originalCharacters!6832 (h!45897 prefixTokens!80)) (list!15082 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80))))))))

(declare-fun b!3833189 () Bool)

(assert (=> b!3833189 (= e!2367248 (= (size!30496 (h!45897 prefixTokens!80)) (size!30499 (originalCharacters!6832 (h!45897 prefixTokens!80)))))))

(assert (= (and d!1137767 res!1551678) b!3833188))

(assert (= (and b!3833188 res!1551679) b!3833189))

(declare-fun b_lambda!112059 () Bool)

(assert (=> (not b_lambda!112059) (not b!3833188)))

(declare-fun t!309216 () Bool)

(declare-fun tb!219925 () Bool)

(assert (=> (and b!3832972 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))) t!309216) tb!219925))

(declare-fun b!3833194 () Bool)

(declare-fun e!2367251 () Bool)

(declare-fun tp!1159867 () Bool)

(declare-fun inv!54613 (Conc!12443) Bool)

(assert (=> b!3833194 (= e!2367251 (and (inv!54613 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80))))) tp!1159867))))

(declare-fun result!268100 () Bool)

(declare-fun inv!54614 (BalanceConc!24480) Bool)

(assert (=> tb!219925 (= result!268100 (and (inv!54614 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80)))) e!2367251))))

(assert (= tb!219925 b!3833194))

(declare-fun m!4387565 () Bool)

(assert (=> b!3833194 m!4387565))

(declare-fun m!4387567 () Bool)

(assert (=> tb!219925 m!4387567))

(assert (=> b!3833188 t!309216))

(declare-fun b_and!284887 () Bool)

(assert (= b_and!284853 (and (=> t!309216 result!268100) b_and!284887)))

(declare-fun t!309218 () Bool)

(declare-fun tb!219927 () Bool)

(assert (=> (and b!3832955 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))) t!309218) tb!219927))

(declare-fun result!268104 () Bool)

(assert (= result!268104 result!268100))

(assert (=> b!3833188 t!309218))

(declare-fun b_and!284889 () Bool)

(assert (= b_and!284857 (and (=> t!309218 result!268104) b_and!284889)))

(declare-fun tb!219929 () Bool)

(declare-fun t!309220 () Bool)

(assert (=> (and b!3832973 (= (toChars!8495 (transformation!6232 (h!45896 rules!2768))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))) t!309220) tb!219929))

(declare-fun result!268106 () Bool)

(assert (= result!268106 result!268100))

(assert (=> b!3833188 t!309220))

(declare-fun b_and!284891 () Bool)

(assert (= b_and!284861 (and (=> t!309220 result!268106) b_and!284891)))

(declare-fun m!4387569 () Bool)

(assert (=> d!1137767 m!4387569))

(declare-fun m!4387571 () Bool)

(assert (=> b!3833188 m!4387571))

(assert (=> b!3833188 m!4387571))

(declare-fun m!4387573 () Bool)

(assert (=> b!3833188 m!4387573))

(declare-fun m!4387575 () Bool)

(assert (=> b!3833189 m!4387575))

(assert (=> b!3832962 d!1137767))

(declare-fun d!1137769 () Bool)

(assert (=> d!1137769 (= (inv!54606 (tag!7092 (rule!9064 (h!45897 suffixTokens!72)))) (= (mod (str.len (value!198245 (tag!7092 (rule!9064 (h!45897 suffixTokens!72))))) 2) 0))))

(assert (=> b!3832963 d!1137769))

(declare-fun d!1137771 () Bool)

(declare-fun res!1551680 () Bool)

(declare-fun e!2367252 () Bool)

(assert (=> d!1137771 (=> (not res!1551680) (not e!2367252))))

(assert (=> d!1137771 (= res!1551680 (semiInverseModEq!2672 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (toValue!8636 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))))))

(assert (=> d!1137771 (= (inv!54609 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) e!2367252)))

(declare-fun b!3833195 () Bool)

(assert (=> b!3833195 (= e!2367252 (equivClasses!2571 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (toValue!8636 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))))))

(assert (= (and d!1137771 res!1551680) b!3833195))

(declare-fun m!4387577 () Bool)

(assert (=> d!1137771 m!4387577))

(declare-fun m!4387579 () Bool)

(assert (=> b!3833195 m!4387579))

(assert (=> b!3832963 d!1137771))

(declare-fun d!1137773 () Bool)

(declare-fun res!1551681 () Bool)

(declare-fun e!2367253 () Bool)

(assert (=> d!1137773 (=> (not res!1551681) (not e!2367253))))

(assert (=> d!1137773 (= res!1551681 (not (isEmpty!23894 (originalCharacters!6832 (h!45897 suffixTokens!72)))))))

(assert (=> d!1137773 (= (inv!54610 (h!45897 suffixTokens!72)) e!2367253)))

(declare-fun b!3833196 () Bool)

(declare-fun res!1551682 () Bool)

(assert (=> b!3833196 (=> (not res!1551682) (not e!2367253))))

(assert (=> b!3833196 (= res!1551682 (= (originalCharacters!6832 (h!45897 suffixTokens!72)) (list!15082 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72))))))))

(declare-fun b!3833197 () Bool)

(assert (=> b!3833197 (= e!2367253 (= (size!30496 (h!45897 suffixTokens!72)) (size!30499 (originalCharacters!6832 (h!45897 suffixTokens!72)))))))

(assert (= (and d!1137773 res!1551681) b!3833196))

(assert (= (and b!3833196 res!1551682) b!3833197))

(declare-fun b_lambda!112061 () Bool)

(assert (=> (not b_lambda!112061) (not b!3833196)))

(declare-fun t!309222 () Bool)

(declare-fun tb!219931 () Bool)

(assert (=> (and b!3832972 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))) t!309222) tb!219931))

(declare-fun b!3833198 () Bool)

(declare-fun e!2367254 () Bool)

(declare-fun tp!1159868 () Bool)

(assert (=> b!3833198 (= e!2367254 (and (inv!54613 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72))))) tp!1159868))))

(declare-fun result!268108 () Bool)

(assert (=> tb!219931 (= result!268108 (and (inv!54614 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72)))) e!2367254))))

(assert (= tb!219931 b!3833198))

(declare-fun m!4387581 () Bool)

(assert (=> b!3833198 m!4387581))

(declare-fun m!4387583 () Bool)

(assert (=> tb!219931 m!4387583))

(assert (=> b!3833196 t!309222))

(declare-fun b_and!284893 () Bool)

(assert (= b_and!284887 (and (=> t!309222 result!268108) b_and!284893)))

(declare-fun t!309224 () Bool)

(declare-fun tb!219933 () Bool)

(assert (=> (and b!3832955 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))) t!309224) tb!219933))

(declare-fun result!268110 () Bool)

(assert (= result!268110 result!268108))

(assert (=> b!3833196 t!309224))

(declare-fun b_and!284895 () Bool)

(assert (= b_and!284889 (and (=> t!309224 result!268110) b_and!284895)))

(declare-fun tb!219935 () Bool)

(declare-fun t!309226 () Bool)

(assert (=> (and b!3832973 (= (toChars!8495 (transformation!6232 (h!45896 rules!2768))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))) t!309226) tb!219935))

(declare-fun result!268112 () Bool)

(assert (= result!268112 result!268108))

(assert (=> b!3833196 t!309226))

(declare-fun b_and!284897 () Bool)

(assert (= b_and!284891 (and (=> t!309226 result!268112) b_and!284897)))

(declare-fun m!4387585 () Bool)

(assert (=> d!1137773 m!4387585))

(declare-fun m!4387587 () Bool)

(assert (=> b!3833196 m!4387587))

(assert (=> b!3833196 m!4387587))

(declare-fun m!4387589 () Bool)

(assert (=> b!3833196 m!4387589))

(declare-fun m!4387591 () Bool)

(assert (=> b!3833197 m!4387591))

(assert (=> b!3832959 d!1137773))

(declare-fun d!1137775 () Bool)

(assert (=> d!1137775 (= (isEmpty!23896 prefixTokens!80) ((_ is Nil!40477) prefixTokens!80))))

(assert (=> b!3832970 d!1137775))

(declare-fun b!3833209 () Bool)

(declare-fun e!2367262 () Bool)

(declare-fun inv!16 (TokenValue!6462) Bool)

(assert (=> b!3833209 (= e!2367262 (inv!16 (value!198246 (h!45897 suffixTokens!72))))))

(declare-fun b!3833210 () Bool)

(declare-fun e!2367263 () Bool)

(declare-fun inv!17 (TokenValue!6462) Bool)

(assert (=> b!3833210 (= e!2367263 (inv!17 (value!198246 (h!45897 suffixTokens!72))))))

(declare-fun d!1137777 () Bool)

(declare-fun c!668454 () Bool)

(assert (=> d!1137777 (= c!668454 ((_ is IntegerValue!19386) (value!198246 (h!45897 suffixTokens!72))))))

(assert (=> d!1137777 (= (inv!21 (value!198246 (h!45897 suffixTokens!72))) e!2367262)))

(declare-fun b!3833211 () Bool)

(assert (=> b!3833211 (= e!2367262 e!2367263)))

(declare-fun c!668455 () Bool)

(assert (=> b!3833211 (= c!668455 ((_ is IntegerValue!19387) (value!198246 (h!45897 suffixTokens!72))))))

(declare-fun b!3833212 () Bool)

(declare-fun res!1551685 () Bool)

(declare-fun e!2367261 () Bool)

(assert (=> b!3833212 (=> res!1551685 e!2367261)))

(assert (=> b!3833212 (= res!1551685 (not ((_ is IntegerValue!19388) (value!198246 (h!45897 suffixTokens!72)))))))

(assert (=> b!3833212 (= e!2367263 e!2367261)))

(declare-fun b!3833213 () Bool)

(declare-fun inv!15 (TokenValue!6462) Bool)

(assert (=> b!3833213 (= e!2367261 (inv!15 (value!198246 (h!45897 suffixTokens!72))))))

(assert (= (and d!1137777 c!668454) b!3833209))

(assert (= (and d!1137777 (not c!668454)) b!3833211))

(assert (= (and b!3833211 c!668455) b!3833210))

(assert (= (and b!3833211 (not c!668455)) b!3833212))

(assert (= (and b!3833212 (not res!1551685)) b!3833213))

(declare-fun m!4387593 () Bool)

(assert (=> b!3833209 m!4387593))

(declare-fun m!4387595 () Bool)

(assert (=> b!3833210 m!4387595))

(declare-fun m!4387597 () Bool)

(assert (=> b!3833213 m!4387597))

(assert (=> b!3832960 d!1137777))

(declare-fun d!1137779 () Bool)

(declare-fun res!1551688 () Bool)

(declare-fun e!2367266 () Bool)

(assert (=> d!1137779 (=> (not res!1551688) (not e!2367266))))

(declare-fun rulesValid!2408 (LexerInterface!5821 List!40600) Bool)

(assert (=> d!1137779 (= res!1551688 (rulesValid!2408 thiss!20629 rules!2768))))

(assert (=> d!1137779 (= (rulesInvariant!5164 thiss!20629 rules!2768) e!2367266)))

(declare-fun b!3833216 () Bool)

(declare-datatypes ((List!40603 0))(
  ( (Nil!40479) (Cons!40479 (h!45899 String!46028) (t!309240 List!40603)) )
))
(declare-fun noDuplicateTag!2409 (LexerInterface!5821 List!40600 List!40603) Bool)

(assert (=> b!3833216 (= e!2367266 (noDuplicateTag!2409 thiss!20629 rules!2768 Nil!40479))))

(assert (= (and d!1137779 res!1551688) b!3833216))

(declare-fun m!4387599 () Bool)

(assert (=> d!1137779 m!4387599))

(declare-fun m!4387601 () Bool)

(assert (=> b!3833216 m!4387601))

(assert (=> b!3832961 d!1137779))

(declare-fun d!1137781 () Bool)

(assert (=> d!1137781 (= (isEmpty!23894 prefix!426) ((_ is Nil!40474) prefix!426))))

(assert (=> b!3832967 d!1137781))

(declare-fun d!1137783 () Bool)

(assert (=> d!1137783 (= (isEmpty!23895 rules!2768) ((_ is Nil!40476) rules!2768))))

(assert (=> b!3832968 d!1137783))

(declare-fun b!3833217 () Bool)

(declare-fun e!2367268 () Bool)

(assert (=> b!3833217 (= e!2367268 (inv!16 (value!198246 (h!45897 prefixTokens!80))))))

(declare-fun b!3833218 () Bool)

(declare-fun e!2367269 () Bool)

(assert (=> b!3833218 (= e!2367269 (inv!17 (value!198246 (h!45897 prefixTokens!80))))))

(declare-fun d!1137785 () Bool)

(declare-fun c!668456 () Bool)

(assert (=> d!1137785 (= c!668456 ((_ is IntegerValue!19386) (value!198246 (h!45897 prefixTokens!80))))))

(assert (=> d!1137785 (= (inv!21 (value!198246 (h!45897 prefixTokens!80))) e!2367268)))

(declare-fun b!3833219 () Bool)

(assert (=> b!3833219 (= e!2367268 e!2367269)))

(declare-fun c!668457 () Bool)

(assert (=> b!3833219 (= c!668457 ((_ is IntegerValue!19387) (value!198246 (h!45897 prefixTokens!80))))))

(declare-fun b!3833220 () Bool)

(declare-fun res!1551689 () Bool)

(declare-fun e!2367267 () Bool)

(assert (=> b!3833220 (=> res!1551689 e!2367267)))

(assert (=> b!3833220 (= res!1551689 (not ((_ is IntegerValue!19388) (value!198246 (h!45897 prefixTokens!80)))))))

(assert (=> b!3833220 (= e!2367269 e!2367267)))

(declare-fun b!3833221 () Bool)

(assert (=> b!3833221 (= e!2367267 (inv!15 (value!198246 (h!45897 prefixTokens!80))))))

(assert (= (and d!1137785 c!668456) b!3833217))

(assert (= (and d!1137785 (not c!668456)) b!3833219))

(assert (= (and b!3833219 c!668457) b!3833218))

(assert (= (and b!3833219 (not c!668457)) b!3833220))

(assert (= (and b!3833220 (not res!1551689)) b!3833221))

(declare-fun m!4387603 () Bool)

(assert (=> b!3833217 m!4387603))

(declare-fun m!4387605 () Bool)

(assert (=> b!3833218 m!4387605))

(declare-fun m!4387607 () Bool)

(assert (=> b!3833221 m!4387607))

(assert (=> b!3832969 d!1137785))

(declare-fun d!1137787 () Bool)

(assert (=> d!1137787 (= (inv!54606 (tag!7092 (h!45896 rules!2768))) (= (mod (str.len (value!198245 (tag!7092 (h!45896 rules!2768)))) 2) 0))))

(assert (=> b!3832958 d!1137787))

(declare-fun d!1137789 () Bool)

(declare-fun res!1551690 () Bool)

(declare-fun e!2367270 () Bool)

(assert (=> d!1137789 (=> (not res!1551690) (not e!2367270))))

(assert (=> d!1137789 (= res!1551690 (semiInverseModEq!2672 (toChars!8495 (transformation!6232 (h!45896 rules!2768))) (toValue!8636 (transformation!6232 (h!45896 rules!2768)))))))

(assert (=> d!1137789 (= (inv!54609 (transformation!6232 (h!45896 rules!2768))) e!2367270)))

(declare-fun b!3833222 () Bool)

(assert (=> b!3833222 (= e!2367270 (equivClasses!2571 (toChars!8495 (transformation!6232 (h!45896 rules!2768))) (toValue!8636 (transformation!6232 (h!45896 rules!2768)))))))

(assert (= (and d!1137789 res!1551690) b!3833222))

(declare-fun m!4387609 () Bool)

(assert (=> d!1137789 m!4387609))

(declare-fun m!4387611 () Bool)

(assert (=> b!3833222 m!4387611))

(assert (=> b!3832958 d!1137789))

(declare-fun b!3833236 () Bool)

(declare-fun e!2367273 () Bool)

(declare-fun tp!1159882 () Bool)

(declare-fun tp!1159883 () Bool)

(assert (=> b!3833236 (= e!2367273 (and tp!1159882 tp!1159883))))

(declare-fun b!3833233 () Bool)

(assert (=> b!3833233 (= e!2367273 tp_is_empty!19245)))

(declare-fun b!3833235 () Bool)

(declare-fun tp!1159880 () Bool)

(assert (=> b!3833235 (= e!2367273 tp!1159880)))

(assert (=> b!3832964 (= tp!1159782 e!2367273)))

(declare-fun b!3833234 () Bool)

(declare-fun tp!1159881 () Bool)

(declare-fun tp!1159879 () Bool)

(assert (=> b!3833234 (= e!2367273 (and tp!1159881 tp!1159879))))

(assert (= (and b!3832964 ((_ is ElementMatch!11137) (regex!6232 (rule!9064 (h!45897 prefixTokens!80))))) b!3833233))

(assert (= (and b!3832964 ((_ is Concat!17600) (regex!6232 (rule!9064 (h!45897 prefixTokens!80))))) b!3833234))

(assert (= (and b!3832964 ((_ is Star!11137) (regex!6232 (rule!9064 (h!45897 prefixTokens!80))))) b!3833235))

(assert (= (and b!3832964 ((_ is Union!11137) (regex!6232 (rule!9064 (h!45897 prefixTokens!80))))) b!3833236))

(declare-fun b!3833250 () Bool)

(declare-fun b_free!101757 () Bool)

(declare-fun b_next!102461 () Bool)

(assert (=> b!3833250 (= b_free!101757 (not b_next!102461))))

(declare-fun tp!1159897 () Bool)

(declare-fun b_and!284899 () Bool)

(assert (=> b!3833250 (= tp!1159897 b_and!284899)))

(declare-fun b_free!101759 () Bool)

(declare-fun b_next!102463 () Bool)

(assert (=> b!3833250 (= b_free!101759 (not b_next!102463))))

(declare-fun t!309228 () Bool)

(declare-fun tb!219937 () Bool)

(assert (=> (and b!3833250 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))) t!309228) tb!219937))

(declare-fun result!268118 () Bool)

(assert (= result!268118 result!268100))

(assert (=> b!3833188 t!309228))

(declare-fun tb!219939 () Bool)

(declare-fun t!309230 () Bool)

(assert (=> (and b!3833250 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))) t!309230) tb!219939))

(declare-fun result!268120 () Bool)

(assert (= result!268120 result!268108))

(assert (=> b!3833196 t!309230))

(declare-fun b_and!284901 () Bool)

(declare-fun tp!1159898 () Bool)

(assert (=> b!3833250 (= tp!1159898 (and (=> t!309228 result!268118) (=> t!309230 result!268120) b_and!284901))))

(declare-fun e!2367287 () Bool)

(declare-fun b!3833249 () Bool)

(declare-fun tp!1159896 () Bool)

(declare-fun e!2367286 () Bool)

(assert (=> b!3833249 (= e!2367287 (and tp!1159896 (inv!54606 (tag!7092 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))) (inv!54609 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))) e!2367286))))

(declare-fun e!2367290 () Bool)

(assert (=> b!3832962 (= tp!1159791 e!2367290)))

(declare-fun b!3833248 () Bool)

(declare-fun e!2367289 () Bool)

(declare-fun tp!1159895 () Bool)

(assert (=> b!3833248 (= e!2367289 (and (inv!21 (value!198246 (h!45897 (t!309190 prefixTokens!80)))) e!2367287 tp!1159895))))

(declare-fun tp!1159894 () Bool)

(declare-fun b!3833247 () Bool)

(assert (=> b!3833247 (= e!2367290 (and (inv!54610 (h!45897 (t!309190 prefixTokens!80))) e!2367289 tp!1159894))))

(assert (=> b!3833250 (= e!2367286 (and tp!1159897 tp!1159898))))

(assert (= b!3833249 b!3833250))

(assert (= b!3833248 b!3833249))

(assert (= b!3833247 b!3833248))

(assert (= (and b!3832962 ((_ is Cons!40477) (t!309190 prefixTokens!80))) b!3833247))

(declare-fun m!4387613 () Bool)

(assert (=> b!3833249 m!4387613))

(declare-fun m!4387615 () Bool)

(assert (=> b!3833249 m!4387615))

(declare-fun m!4387617 () Bool)

(assert (=> b!3833248 m!4387617))

(declare-fun m!4387619 () Bool)

(assert (=> b!3833247 m!4387619))

(declare-fun b!3833254 () Bool)

(declare-fun e!2367292 () Bool)

(declare-fun tp!1159902 () Bool)

(declare-fun tp!1159903 () Bool)

(assert (=> b!3833254 (= e!2367292 (and tp!1159902 tp!1159903))))

(declare-fun b!3833251 () Bool)

(assert (=> b!3833251 (= e!2367292 tp_is_empty!19245)))

(declare-fun b!3833253 () Bool)

(declare-fun tp!1159900 () Bool)

(assert (=> b!3833253 (= e!2367292 tp!1159900)))

(assert (=> b!3832963 (= tp!1159788 e!2367292)))

(declare-fun b!3833252 () Bool)

(declare-fun tp!1159901 () Bool)

(declare-fun tp!1159899 () Bool)

(assert (=> b!3833252 (= e!2367292 (and tp!1159901 tp!1159899))))

(assert (= (and b!3832963 ((_ is ElementMatch!11137) (regex!6232 (rule!9064 (h!45897 suffixTokens!72))))) b!3833251))

(assert (= (and b!3832963 ((_ is Concat!17600) (regex!6232 (rule!9064 (h!45897 suffixTokens!72))))) b!3833252))

(assert (= (and b!3832963 ((_ is Star!11137) (regex!6232 (rule!9064 (h!45897 suffixTokens!72))))) b!3833253))

(assert (= (and b!3832963 ((_ is Union!11137) (regex!6232 (rule!9064 (h!45897 suffixTokens!72))))) b!3833254))

(declare-fun b!3833259 () Bool)

(declare-fun e!2367295 () Bool)

(declare-fun tp!1159906 () Bool)

(assert (=> b!3833259 (= e!2367295 (and tp_is_empty!19245 tp!1159906))))

(assert (=> b!3832974 (= tp!1159785 e!2367295)))

(assert (= (and b!3832974 ((_ is Cons!40474) (t!309187 suffix!1176))) b!3833259))

(declare-fun b!3833263 () Bool)

(declare-fun b_free!101761 () Bool)

(declare-fun b_next!102465 () Bool)

(assert (=> b!3833263 (= b_free!101761 (not b_next!102465))))

(declare-fun tp!1159910 () Bool)

(declare-fun b_and!284903 () Bool)

(assert (=> b!3833263 (= tp!1159910 b_and!284903)))

(declare-fun b_free!101763 () Bool)

(declare-fun b_next!102467 () Bool)

(assert (=> b!3833263 (= b_free!101763 (not b_next!102467))))

(declare-fun tb!219941 () Bool)

(declare-fun t!309232 () Bool)

(assert (=> (and b!3833263 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))) t!309232) tb!219941))

(declare-fun result!268124 () Bool)

(assert (= result!268124 result!268100))

(assert (=> b!3833188 t!309232))

(declare-fun t!309234 () Bool)

(declare-fun tb!219943 () Bool)

(assert (=> (and b!3833263 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))) t!309234) tb!219943))

(declare-fun result!268126 () Bool)

(assert (= result!268126 result!268108))

(assert (=> b!3833196 t!309234))

(declare-fun tp!1159911 () Bool)

(declare-fun b_and!284905 () Bool)

(assert (=> b!3833263 (= tp!1159911 (and (=> t!309232 result!268124) (=> t!309234 result!268126) b_and!284905))))

(declare-fun e!2367297 () Bool)

(declare-fun tp!1159909 () Bool)

(declare-fun e!2367296 () Bool)

(declare-fun b!3833262 () Bool)

(assert (=> b!3833262 (= e!2367297 (and tp!1159909 (inv!54606 (tag!7092 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))) (inv!54609 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))) e!2367296))))

(declare-fun e!2367300 () Bool)

(assert (=> b!3832959 (= tp!1159792 e!2367300)))

(declare-fun e!2367299 () Bool)

(declare-fun tp!1159908 () Bool)

(declare-fun b!3833261 () Bool)

(assert (=> b!3833261 (= e!2367299 (and (inv!21 (value!198246 (h!45897 (t!309190 suffixTokens!72)))) e!2367297 tp!1159908))))

(declare-fun b!3833260 () Bool)

(declare-fun tp!1159907 () Bool)

(assert (=> b!3833260 (= e!2367300 (and (inv!54610 (h!45897 (t!309190 suffixTokens!72))) e!2367299 tp!1159907))))

(assert (=> b!3833263 (= e!2367296 (and tp!1159910 tp!1159911))))

(assert (= b!3833262 b!3833263))

(assert (= b!3833261 b!3833262))

(assert (= b!3833260 b!3833261))

(assert (= (and b!3832959 ((_ is Cons!40477) (t!309190 suffixTokens!72))) b!3833260))

(declare-fun m!4387621 () Bool)

(assert (=> b!3833262 m!4387621))

(declare-fun m!4387623 () Bool)

(assert (=> b!3833262 m!4387623))

(declare-fun m!4387625 () Bool)

(assert (=> b!3833261 m!4387625))

(declare-fun m!4387627 () Bool)

(assert (=> b!3833260 m!4387627))

(declare-fun b!3833264 () Bool)

(declare-fun e!2367302 () Bool)

(declare-fun tp!1159912 () Bool)

(assert (=> b!3833264 (= e!2367302 (and tp_is_empty!19245 tp!1159912))))

(assert (=> b!3832971 (= tp!1159790 e!2367302)))

(assert (= (and b!3832971 ((_ is Cons!40474) (t!309187 prefix!426))) b!3833264))

(declare-fun b!3833265 () Bool)

(declare-fun e!2367303 () Bool)

(declare-fun tp!1159913 () Bool)

(assert (=> b!3833265 (= e!2367303 (and tp_is_empty!19245 tp!1159913))))

(assert (=> b!3832960 (= tp!1159786 e!2367303)))

(assert (= (and b!3832960 ((_ is Cons!40474) (originalCharacters!6832 (h!45897 suffixTokens!72)))) b!3833265))

(declare-fun b!3833266 () Bool)

(declare-fun e!2367304 () Bool)

(declare-fun tp!1159914 () Bool)

(assert (=> b!3833266 (= e!2367304 (and tp_is_empty!19245 tp!1159914))))

(assert (=> b!3832956 (= tp!1159781 e!2367304)))

(assert (= (and b!3832956 ((_ is Cons!40474) (t!309187 suffixResult!91))) b!3833266))

(declare-fun b!3833277 () Bool)

(declare-fun b_free!101765 () Bool)

(declare-fun b_next!102469 () Bool)

(assert (=> b!3833277 (= b_free!101765 (not b_next!102469))))

(declare-fun tp!1159925 () Bool)

(declare-fun b_and!284907 () Bool)

(assert (=> b!3833277 (= tp!1159925 b_and!284907)))

(declare-fun b_free!101767 () Bool)

(declare-fun b_next!102471 () Bool)

(assert (=> b!3833277 (= b_free!101767 (not b_next!102471))))

(declare-fun t!309236 () Bool)

(declare-fun tb!219945 () Bool)

(assert (=> (and b!3833277 (= (toChars!8495 (transformation!6232 (h!45896 (t!309189 rules!2768)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))) t!309236) tb!219945))

(declare-fun result!268130 () Bool)

(assert (= result!268130 result!268100))

(assert (=> b!3833188 t!309236))

(declare-fun t!309238 () Bool)

(declare-fun tb!219947 () Bool)

(assert (=> (and b!3833277 (= (toChars!8495 (transformation!6232 (h!45896 (t!309189 rules!2768)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))) t!309238) tb!219947))

(declare-fun result!268132 () Bool)

(assert (= result!268132 result!268108))

(assert (=> b!3833196 t!309238))

(declare-fun b_and!284909 () Bool)

(declare-fun tp!1159926 () Bool)

(assert (=> b!3833277 (= tp!1159926 (and (=> t!309236 result!268130) (=> t!309238 result!268132) b_and!284909))))

(declare-fun e!2367315 () Bool)

(assert (=> b!3833277 (= e!2367315 (and tp!1159925 tp!1159926))))

(declare-fun b!3833276 () Bool)

(declare-fun e!2367316 () Bool)

(declare-fun tp!1159924 () Bool)

(assert (=> b!3833276 (= e!2367316 (and tp!1159924 (inv!54606 (tag!7092 (h!45896 (t!309189 rules!2768)))) (inv!54609 (transformation!6232 (h!45896 (t!309189 rules!2768)))) e!2367315))))

(declare-fun b!3833275 () Bool)

(declare-fun e!2367314 () Bool)

(declare-fun tp!1159923 () Bool)

(assert (=> b!3833275 (= e!2367314 (and e!2367316 tp!1159923))))

(assert (=> b!3832957 (= tp!1159789 e!2367314)))

(assert (= b!3833276 b!3833277))

(assert (= b!3833275 b!3833276))

(assert (= (and b!3832957 ((_ is Cons!40476) (t!309189 rules!2768))) b!3833275))

(declare-fun m!4387629 () Bool)

(assert (=> b!3833276 m!4387629))

(declare-fun m!4387631 () Bool)

(assert (=> b!3833276 m!4387631))

(declare-fun b!3833278 () Bool)

(declare-fun e!2367317 () Bool)

(declare-fun tp!1159927 () Bool)

(assert (=> b!3833278 (= e!2367317 (and tp_is_empty!19245 tp!1159927))))

(assert (=> b!3832969 (= tp!1159795 e!2367317)))

(assert (= (and b!3832969 ((_ is Cons!40474) (originalCharacters!6832 (h!45897 prefixTokens!80)))) b!3833278))

(declare-fun b!3833282 () Bool)

(declare-fun e!2367318 () Bool)

(declare-fun tp!1159931 () Bool)

(declare-fun tp!1159932 () Bool)

(assert (=> b!3833282 (= e!2367318 (and tp!1159931 tp!1159932))))

(declare-fun b!3833279 () Bool)

(assert (=> b!3833279 (= e!2367318 tp_is_empty!19245)))

(declare-fun b!3833281 () Bool)

(declare-fun tp!1159929 () Bool)

(assert (=> b!3833281 (= e!2367318 tp!1159929)))

(assert (=> b!3832958 (= tp!1159784 e!2367318)))

(declare-fun b!3833280 () Bool)

(declare-fun tp!1159930 () Bool)

(declare-fun tp!1159928 () Bool)

(assert (=> b!3833280 (= e!2367318 (and tp!1159930 tp!1159928))))

(assert (= (and b!3832958 ((_ is ElementMatch!11137) (regex!6232 (h!45896 rules!2768)))) b!3833279))

(assert (= (and b!3832958 ((_ is Concat!17600) (regex!6232 (h!45896 rules!2768)))) b!3833280))

(assert (= (and b!3832958 ((_ is Star!11137) (regex!6232 (h!45896 rules!2768)))) b!3833281))

(assert (= (and b!3832958 ((_ is Union!11137) (regex!6232 (h!45896 rules!2768)))) b!3833282))

(declare-fun b_lambda!112063 () Bool)

(assert (= b_lambda!112061 (or (and b!3833263 b_free!101763 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))))) (and b!3832972 b_free!101735) (and b!3832955 b_free!101739 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))))) (and b!3833250 b_free!101759 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))))) (and b!3833277 b_free!101767 (= (toChars!8495 (transformation!6232 (h!45896 (t!309189 rules!2768)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))))) (and b!3832973 b_free!101743 (= (toChars!8495 (transformation!6232 (h!45896 rules!2768))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b_lambda!112063)))

(declare-fun b_lambda!112065 () Bool)

(assert (= b_lambda!112059 (or (and b!3832955 b_free!101739) (and b!3833277 b_free!101767 (= (toChars!8495 (transformation!6232 (h!45896 (t!309189 rules!2768)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))))) (and b!3833250 b_free!101759 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))))) (and b!3833263 b_free!101763 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))))) (and b!3832973 b_free!101743 (= (toChars!8495 (transformation!6232 (h!45896 rules!2768))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))))) (and b!3832972 b_free!101735 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b_lambda!112065)))

(check-sat (not b!3833248) (not b!3833234) (not b_next!102445) (not b_next!102461) (not b!3833049) (not b_next!102467) (not d!1137727) b_and!284855 (not b!3833253) (not b!3833198) b_and!284859 (not b_next!102439) (not b!3833252) b_and!284895 (not b!3833197) (not d!1137733) (not b!3833021) (not b!3833213) (not b!3833235) (not b!3833260) (not b!3833280) (not b!3833189) b_and!284893 b_and!284899 (not b!3833282) (not d!1137773) (not b!3833264) (not b!3833218) (not b!3833278) (not b!3833195) (not b!3833209) (not b!3833016) (not d!1137731) b_and!284901 (not b!3833249) (not b!3833236) (not b_next!102471) b_and!284897 (not b!3833261) (not b_next!102447) (not b_next!102437) b_and!284907 b_and!284903 (not b!3833217) (not d!1137719) (not b!3833275) tp_is_empty!19245 (not d!1137729) (not b_next!102469) (not b_next!102465) b_and!284909 (not b!3833194) (not tb!219931) (not b!3832977) (not b!3833033) (not d!1137771) (not b!3833188) (not b!3833216) (not b_next!102443) (not b!3833034) (not b!3833247) (not b_lambda!112063) (not b!3833015) (not b!3833210) b_and!284905 (not b!3833276) (not b!3833020) (not b!3833266) (not b_next!102441) (not b_next!102463) (not d!1137767) (not b!3833023) (not b!3833181) (not b!3833265) (not b!3833196) (not b!3833018) (not b_lambda!112065) (not b!3833221) b_and!284851 (not b!3833259) (not b!3833222) (not b!3833254) (not b!3833180) (not tb!219925) (not d!1137717) (not b!3833281) (not d!1137789) (not b!3833050) (not d!1137779) (not b!3833262))
(check-sat b_and!284859 b_and!284893 b_and!284899 (not b_next!102469) (not b_next!102445) (not b_next!102443) b_and!284905 (not b_next!102461) b_and!284851 (not b_next!102467) b_and!284855 (not b_next!102439) b_and!284895 (not b_next!102471) b_and!284901 b_and!284897 (not b_next!102447) (not b_next!102437) b_and!284907 b_and!284903 (not b_next!102465) b_and!284909 (not b_next!102441) (not b_next!102463))
(get-model)

(declare-fun d!1137791 () Bool)

(declare-fun charsToBigInt!1 (List!40599) Int)

(assert (=> d!1137791 (= (inv!17 (value!198246 (h!45897 prefixTokens!80))) (= (charsToBigInt!1 (text!45682 (value!198246 (h!45897 prefixTokens!80)))) (value!198238 (value!198246 (h!45897 prefixTokens!80)))))))

(declare-fun bs!582325 () Bool)

(assert (= bs!582325 d!1137791))

(declare-fun m!4387633 () Bool)

(assert (=> bs!582325 m!4387633))

(assert (=> b!3833218 d!1137791))

(declare-fun d!1137793 () Bool)

(declare-fun lt!1330738 () Int)

(assert (=> d!1137793 (>= lt!1330738 0)))

(declare-fun e!2367321 () Int)

(assert (=> d!1137793 (= lt!1330738 e!2367321)))

(declare-fun c!668460 () Bool)

(assert (=> d!1137793 (= c!668460 ((_ is Nil!40474) (_2!22960 lt!1330701)))))

(assert (=> d!1137793 (= (size!30499 (_2!22960 lt!1330701)) lt!1330738)))

(declare-fun b!3833287 () Bool)

(assert (=> b!3833287 (= e!2367321 0)))

(declare-fun b!3833288 () Bool)

(assert (=> b!3833288 (= e!2367321 (+ 1 (size!30499 (t!309187 (_2!22960 lt!1330701)))))))

(assert (= (and d!1137793 c!668460) b!3833287))

(assert (= (and d!1137793 (not c!668460)) b!3833288))

(declare-fun m!4387635 () Bool)

(assert (=> b!3833288 m!4387635))

(assert (=> b!3833015 d!1137793))

(declare-fun d!1137795 () Bool)

(declare-fun lt!1330739 () Int)

(assert (=> d!1137795 (>= lt!1330739 0)))

(declare-fun e!2367322 () Int)

(assert (=> d!1137795 (= lt!1330739 e!2367322)))

(declare-fun c!668461 () Bool)

(assert (=> d!1137795 (= c!668461 ((_ is Nil!40474) suffix!1176))))

(assert (=> d!1137795 (= (size!30499 suffix!1176) lt!1330739)))

(declare-fun b!3833289 () Bool)

(assert (=> b!3833289 (= e!2367322 0)))

(declare-fun b!3833290 () Bool)

(assert (=> b!3833290 (= e!2367322 (+ 1 (size!30499 (t!309187 suffix!1176))))))

(assert (= (and d!1137795 c!668461) b!3833289))

(assert (= (and d!1137795 (not c!668461)) b!3833290))

(declare-fun m!4387637 () Bool)

(assert (=> b!3833290 m!4387637))

(assert (=> b!3833015 d!1137795))

(declare-fun d!1137797 () Bool)

(declare-fun res!1551703 () Bool)

(declare-fun e!2367327 () Bool)

(assert (=> d!1137797 (=> res!1551703 e!2367327)))

(assert (=> d!1137797 (= res!1551703 ((_ is Nil!40476) rules!2768))))

(assert (=> d!1137797 (= (forall!8266 rules!2768 lambda!125979) e!2367327)))

(declare-fun b!3833295 () Bool)

(declare-fun e!2367328 () Bool)

(assert (=> b!3833295 (= e!2367327 e!2367328)))

(declare-fun res!1551704 () Bool)

(assert (=> b!3833295 (=> (not res!1551704) (not e!2367328))))

(declare-fun dynLambda!17521 (Int Rule!12264) Bool)

(assert (=> b!3833295 (= res!1551704 (dynLambda!17521 lambda!125979 (h!45896 rules!2768)))))

(declare-fun b!3833296 () Bool)

(assert (=> b!3833296 (= e!2367328 (forall!8266 (t!309189 rules!2768) lambda!125979))))

(assert (= (and d!1137797 (not res!1551703)) b!3833295))

(assert (= (and b!3833295 res!1551704) b!3833296))

(declare-fun b_lambda!112067 () Bool)

(assert (=> (not b_lambda!112067) (not b!3833295)))

(declare-fun m!4387639 () Bool)

(assert (=> b!3833295 m!4387639))

(declare-fun m!4387641 () Bool)

(assert (=> b!3833296 m!4387641))

(assert (=> d!1137733 d!1137797))

(declare-fun d!1137799 () Bool)

(assert (=> d!1137799 true))

(declare-fun order!22097 () Int)

(declare-fun lambda!125982 () Int)

(declare-fun order!22095 () Int)

(declare-fun dynLambda!17522 (Int Int) Int)

(declare-fun dynLambda!17523 (Int Int) Int)

(assert (=> d!1137799 (< (dynLambda!17522 order!22095 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))) (dynLambda!17523 order!22097 lambda!125982))))

(assert (=> d!1137799 true))

(declare-fun order!22099 () Int)

(declare-fun dynLambda!17524 (Int Int) Int)

(assert (=> d!1137799 (< (dynLambda!17524 order!22099 (toValue!8636 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))) (dynLambda!17523 order!22097 lambda!125982))))

(declare-fun Forall!1425 (Int) Bool)

(assert (=> d!1137799 (= (semiInverseModEq!2672 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (toValue!8636 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))) (Forall!1425 lambda!125982))))

(declare-fun bs!582326 () Bool)

(assert (= bs!582326 d!1137799))

(declare-fun m!4387643 () Bool)

(assert (=> bs!582326 m!4387643))

(assert (=> d!1137771 d!1137799))

(declare-fun d!1137803 () Bool)

(declare-fun list!15083 (Conc!12443) List!40598)

(assert (=> d!1137803 (= (list!15082 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80)))) (list!15083 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80))))))))

(declare-fun bs!582327 () Bool)

(assert (= bs!582327 d!1137803))

(declare-fun m!4387645 () Bool)

(assert (=> bs!582327 m!4387645))

(assert (=> b!3833188 d!1137803))

(declare-fun d!1137805 () Bool)

(declare-fun c!668464 () Bool)

(assert (=> d!1137805 (= c!668464 ((_ is Node!12443) (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72))))))))

(declare-fun e!2367333 () Bool)

(assert (=> d!1137805 (= (inv!54613 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72))))) e!2367333)))

(declare-fun b!3833309 () Bool)

(declare-fun inv!54615 (Conc!12443) Bool)

(assert (=> b!3833309 (= e!2367333 (inv!54615 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72))))))))

(declare-fun b!3833310 () Bool)

(declare-fun e!2367334 () Bool)

(assert (=> b!3833310 (= e!2367333 e!2367334)))

(declare-fun res!1551707 () Bool)

(assert (=> b!3833310 (= res!1551707 (not ((_ is Leaf!19266) (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72)))))))))

(assert (=> b!3833310 (=> res!1551707 e!2367334)))

(declare-fun b!3833312 () Bool)

(declare-fun inv!54616 (Conc!12443) Bool)

(assert (=> b!3833312 (= e!2367334 (inv!54616 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72))))))))

(assert (= (and d!1137805 c!668464) b!3833309))

(assert (= (and d!1137805 (not c!668464)) b!3833310))

(assert (= (and b!3833310 (not res!1551707)) b!3833312))

(declare-fun m!4387647 () Bool)

(assert (=> b!3833309 m!4387647))

(declare-fun m!4387649 () Bool)

(assert (=> b!3833312 m!4387649))

(assert (=> b!3833198 d!1137805))

(declare-fun d!1137807 () Bool)

(declare-fun res!1551710 () Bool)

(declare-fun e!2367339 () Bool)

(assert (=> d!1137807 (=> (not res!1551710) (not e!2367339))))

(assert (=> d!1137807 (= res!1551710 (not (isEmpty!23894 (originalCharacters!6832 (h!45897 (t!309190 prefixTokens!80))))))))

(assert (=> d!1137807 (= (inv!54610 (h!45897 (t!309190 prefixTokens!80))) e!2367339)))

(declare-fun b!3833316 () Bool)

(declare-fun res!1551711 () Bool)

(assert (=> b!3833316 (=> (not res!1551711) (not e!2367339))))

(assert (=> b!3833316 (= res!1551711 (= (originalCharacters!6832 (h!45897 (t!309190 prefixTokens!80))) (list!15082 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))) (value!198246 (h!45897 (t!309190 prefixTokens!80)))))))))

(declare-fun b!3833317 () Bool)

(assert (=> b!3833317 (= e!2367339 (= (size!30496 (h!45897 (t!309190 prefixTokens!80))) (size!30499 (originalCharacters!6832 (h!45897 (t!309190 prefixTokens!80))))))))

(assert (= (and d!1137807 res!1551710) b!3833316))

(assert (= (and b!3833316 res!1551711) b!3833317))

(declare-fun b_lambda!112069 () Bool)

(assert (=> (not b_lambda!112069) (not b!3833316)))

(declare-fun tb!219949 () Bool)

(declare-fun t!309242 () Bool)

(assert (=> (and b!3832973 (= (toChars!8495 (transformation!6232 (h!45896 rules!2768))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80)))))) t!309242) tb!219949))

(declare-fun b!3833318 () Bool)

(declare-fun e!2367340 () Bool)

(declare-fun tp!1159933 () Bool)

(assert (=> b!3833318 (= e!2367340 (and (inv!54613 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))) (value!198246 (h!45897 (t!309190 prefixTokens!80)))))) tp!1159933))))

(declare-fun result!268134 () Bool)

(assert (=> tb!219949 (= result!268134 (and (inv!54614 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))) (value!198246 (h!45897 (t!309190 prefixTokens!80))))) e!2367340))))

(assert (= tb!219949 b!3833318))

(declare-fun m!4387651 () Bool)

(assert (=> b!3833318 m!4387651))

(declare-fun m!4387653 () Bool)

(assert (=> tb!219949 m!4387653))

(assert (=> b!3833316 t!309242))

(declare-fun b_and!284911 () Bool)

(assert (= b_and!284897 (and (=> t!309242 result!268134) b_and!284911)))

(declare-fun t!309244 () Bool)

(declare-fun tb!219951 () Bool)

(assert (=> (and b!3832955 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80)))))) t!309244) tb!219951))

(declare-fun result!268136 () Bool)

(assert (= result!268136 result!268134))

(assert (=> b!3833316 t!309244))

(declare-fun b_and!284913 () Bool)

(assert (= b_and!284895 (and (=> t!309244 result!268136) b_and!284913)))

(declare-fun t!309246 () Bool)

(declare-fun tb!219953 () Bool)

(assert (=> (and b!3832972 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80)))))) t!309246) tb!219953))

(declare-fun result!268138 () Bool)

(assert (= result!268138 result!268134))

(assert (=> b!3833316 t!309246))

(declare-fun b_and!284915 () Bool)

(assert (= b_and!284893 (and (=> t!309246 result!268138) b_and!284915)))

(declare-fun t!309248 () Bool)

(declare-fun tb!219955 () Bool)

(assert (=> (and b!3833263 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80)))))) t!309248) tb!219955))

(declare-fun result!268140 () Bool)

(assert (= result!268140 result!268134))

(assert (=> b!3833316 t!309248))

(declare-fun b_and!284917 () Bool)

(assert (= b_and!284905 (and (=> t!309248 result!268140) b_and!284917)))

(declare-fun t!309250 () Bool)

(declare-fun tb!219957 () Bool)

(assert (=> (and b!3833250 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80)))))) t!309250) tb!219957))

(declare-fun result!268142 () Bool)

(assert (= result!268142 result!268134))

(assert (=> b!3833316 t!309250))

(declare-fun b_and!284919 () Bool)

(assert (= b_and!284901 (and (=> t!309250 result!268142) b_and!284919)))

(declare-fun tb!219959 () Bool)

(declare-fun t!309252 () Bool)

(assert (=> (and b!3833277 (= (toChars!8495 (transformation!6232 (h!45896 (t!309189 rules!2768)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80)))))) t!309252) tb!219959))

(declare-fun result!268144 () Bool)

(assert (= result!268144 result!268134))

(assert (=> b!3833316 t!309252))

(declare-fun b_and!284921 () Bool)

(assert (= b_and!284909 (and (=> t!309252 result!268144) b_and!284921)))

(declare-fun m!4387655 () Bool)

(assert (=> d!1137807 m!4387655))

(declare-fun m!4387657 () Bool)

(assert (=> b!3833316 m!4387657))

(assert (=> b!3833316 m!4387657))

(declare-fun m!4387659 () Bool)

(assert (=> b!3833316 m!4387659))

(declare-fun m!4387661 () Bool)

(assert (=> b!3833317 m!4387661))

(assert (=> b!3833247 d!1137807))

(declare-fun bs!582328 () Bool)

(declare-fun d!1137809 () Bool)

(assert (= bs!582328 (and d!1137809 d!1137799)))

(declare-fun lambda!125983 () Int)

(assert (=> bs!582328 (= (and (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))) (= (toValue!8636 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (toValue!8636 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))))) (= lambda!125983 lambda!125982))))

(assert (=> d!1137809 true))

(assert (=> d!1137809 (< (dynLambda!17522 order!22095 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))) (dynLambda!17523 order!22097 lambda!125983))))

(assert (=> d!1137809 true))

(assert (=> d!1137809 (< (dynLambda!17524 order!22099 (toValue!8636 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))) (dynLambda!17523 order!22097 lambda!125983))))

(assert (=> d!1137809 (= (semiInverseModEq!2672 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (toValue!8636 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))) (Forall!1425 lambda!125983))))

(declare-fun bs!582329 () Bool)

(assert (= bs!582329 d!1137809))

(declare-fun m!4387663 () Bool)

(assert (=> bs!582329 m!4387663))

(assert (=> d!1137717 d!1137809))

(declare-fun d!1137811 () Bool)

(assert (=> d!1137811 (= (isEmpty!23894 (originalCharacters!6832 (h!45897 prefixTokens!80))) ((_ is Nil!40474) (originalCharacters!6832 (h!45897 prefixTokens!80))))))

(assert (=> d!1137767 d!1137811))

(declare-fun d!1137813 () Bool)

(assert (=> d!1137813 (= (inv!54606 (tag!7092 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))) (= (mod (str.len (value!198245 (tag!7092 (rule!9064 (h!45897 (t!309190 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3833249 d!1137813))

(declare-fun d!1137815 () Bool)

(declare-fun res!1551713 () Bool)

(declare-fun e!2367343 () Bool)

(assert (=> d!1137815 (=> (not res!1551713) (not e!2367343))))

(assert (=> d!1137815 (= res!1551713 (semiInverseModEq!2672 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))) (toValue!8636 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80)))))))))

(assert (=> d!1137815 (= (inv!54609 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))) e!2367343)))

(declare-fun b!3833322 () Bool)

(assert (=> b!3833322 (= e!2367343 (equivClasses!2571 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))) (toValue!8636 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80)))))))))

(assert (= (and d!1137815 res!1551713) b!3833322))

(declare-fun m!4387669 () Bool)

(assert (=> d!1137815 m!4387669))

(declare-fun m!4387671 () Bool)

(assert (=> b!3833322 m!4387671))

(assert (=> b!3833249 d!1137815))

(declare-fun d!1137819 () Bool)

(assert (=> d!1137819 (= (isEmpty!23896 (_1!22960 lt!1330704)) ((_ is Nil!40477) (_1!22960 lt!1330704)))))

(assert (=> b!3833021 d!1137819))

(declare-fun d!1137821 () Bool)

(assert (=> d!1137821 (= (inv!54606 (tag!7092 (h!45896 (t!309189 rules!2768)))) (= (mod (str.len (value!198245 (tag!7092 (h!45896 (t!309189 rules!2768))))) 2) 0))))

(assert (=> b!3833276 d!1137821))

(declare-fun d!1137823 () Bool)

(declare-fun res!1551716 () Bool)

(declare-fun e!2367346 () Bool)

(assert (=> d!1137823 (=> (not res!1551716) (not e!2367346))))

(assert (=> d!1137823 (= res!1551716 (semiInverseModEq!2672 (toChars!8495 (transformation!6232 (h!45896 (t!309189 rules!2768)))) (toValue!8636 (transformation!6232 (h!45896 (t!309189 rules!2768))))))))

(assert (=> d!1137823 (= (inv!54609 (transformation!6232 (h!45896 (t!309189 rules!2768)))) e!2367346)))

(declare-fun b!3833327 () Bool)

(assert (=> b!3833327 (= e!2367346 (equivClasses!2571 (toChars!8495 (transformation!6232 (h!45896 (t!309189 rules!2768)))) (toValue!8636 (transformation!6232 (h!45896 (t!309189 rules!2768))))))))

(assert (= (and d!1137823 res!1551716) b!3833327))

(declare-fun m!4387673 () Bool)

(assert (=> d!1137823 m!4387673))

(declare-fun m!4387675 () Bool)

(assert (=> b!3833327 m!4387675))

(assert (=> b!3833276 d!1137823))

(declare-fun b!3833328 () Bool)

(declare-fun e!2367347 () tuple2!39652)

(assert (=> b!3833328 (= e!2367347 (tuple2!39653 Nil!40477 (_2!22962 (v!38939 lt!1330703))))))

(declare-fun b!3833329 () Bool)

(declare-fun e!2367348 () Bool)

(declare-fun e!2367349 () Bool)

(assert (=> b!3833329 (= e!2367348 e!2367349)))

(declare-fun res!1551717 () Bool)

(declare-fun lt!1330742 () tuple2!39652)

(assert (=> b!3833329 (= res!1551717 (< (size!30499 (_2!22960 lt!1330742)) (size!30499 (_2!22962 (v!38939 lt!1330703)))))))

(assert (=> b!3833329 (=> (not res!1551717) (not e!2367349))))

(declare-fun b!3833330 () Bool)

(assert (=> b!3833330 (= e!2367349 (not (isEmpty!23896 (_1!22960 lt!1330742))))))

(declare-fun d!1137825 () Bool)

(assert (=> d!1137825 e!2367348))

(declare-fun c!668469 () Bool)

(assert (=> d!1137825 (= c!668469 (> (size!30500 (_1!22960 lt!1330742)) 0))))

(assert (=> d!1137825 (= lt!1330742 e!2367347)))

(declare-fun c!668470 () Bool)

(declare-fun lt!1330741 () Option!8652)

(assert (=> d!1137825 (= c!668470 ((_ is Some!8651) lt!1330741))))

(assert (=> d!1137825 (= lt!1330741 (maxPrefix!3127 thiss!20629 rules!2768 (_2!22962 (v!38939 lt!1330703))))))

(assert (=> d!1137825 (= (lexList!1589 thiss!20629 rules!2768 (_2!22962 (v!38939 lt!1330703))) lt!1330742)))

(declare-fun b!3833331 () Bool)

(assert (=> b!3833331 (= e!2367348 (= (_2!22960 lt!1330742) (_2!22962 (v!38939 lt!1330703))))))

(declare-fun b!3833332 () Bool)

(declare-fun lt!1330743 () tuple2!39652)

(assert (=> b!3833332 (= e!2367347 (tuple2!39653 (Cons!40477 (_1!22962 (v!38939 lt!1330741)) (_1!22960 lt!1330743)) (_2!22960 lt!1330743)))))

(assert (=> b!3833332 (= lt!1330743 (lexList!1589 thiss!20629 rules!2768 (_2!22962 (v!38939 lt!1330741))))))

(assert (= (and d!1137825 c!668470) b!3833332))

(assert (= (and d!1137825 (not c!668470)) b!3833328))

(assert (= (and d!1137825 c!668469) b!3833329))

(assert (= (and d!1137825 (not c!668469)) b!3833331))

(assert (= (and b!3833329 res!1551717) b!3833330))

(declare-fun m!4387687 () Bool)

(assert (=> b!3833329 m!4387687))

(declare-fun m!4387689 () Bool)

(assert (=> b!3833329 m!4387689))

(declare-fun m!4387691 () Bool)

(assert (=> b!3833330 m!4387691))

(declare-fun m!4387693 () Bool)

(assert (=> d!1137825 m!4387693))

(declare-fun m!4387695 () Bool)

(assert (=> d!1137825 m!4387695))

(declare-fun m!4387697 () Bool)

(assert (=> b!3833332 m!4387697))

(assert (=> b!3833023 d!1137825))

(declare-fun d!1137829 () Bool)

(assert (=> d!1137829 true))

(declare-fun order!22101 () Int)

(declare-fun lambda!125986 () Int)

(declare-fun dynLambda!17525 (Int Int) Int)

(assert (=> d!1137829 (< (dynLambda!17524 order!22099 (toValue!8636 (transformation!6232 (h!45896 rules!2768)))) (dynLambda!17525 order!22101 lambda!125986))))

(declare-fun Forall2!1023 (Int) Bool)

(assert (=> d!1137829 (= (equivClasses!2571 (toChars!8495 (transformation!6232 (h!45896 rules!2768))) (toValue!8636 (transformation!6232 (h!45896 rules!2768)))) (Forall2!1023 lambda!125986))))

(declare-fun bs!582331 () Bool)

(assert (= bs!582331 d!1137829))

(declare-fun m!4387701 () Bool)

(assert (=> bs!582331 m!4387701))

(assert (=> b!3833222 d!1137829))

(declare-fun b!3833343 () Bool)

(declare-fun res!1551725 () Bool)

(declare-fun e!2367354 () Bool)

(assert (=> b!3833343 (=> (not res!1551725) (not e!2367354))))

(declare-fun lt!1330744 () List!40601)

(assert (=> b!3833343 (= res!1551725 (= (size!30500 lt!1330744) (+ (size!30500 (t!309190 prefixTokens!80)) (size!30500 suffixTokens!72))))))

(declare-fun b!3833344 () Bool)

(assert (=> b!3833344 (= e!2367354 (or (not (= suffixTokens!72 Nil!40477)) (= lt!1330744 (t!309190 prefixTokens!80))))))

(declare-fun d!1137833 () Bool)

(assert (=> d!1137833 e!2367354))

(declare-fun res!1551724 () Bool)

(assert (=> d!1137833 (=> (not res!1551724) (not e!2367354))))

(assert (=> d!1137833 (= res!1551724 (= (content!6008 lt!1330744) ((_ map or) (content!6008 (t!309190 prefixTokens!80)) (content!6008 suffixTokens!72))))))

(declare-fun e!2367355 () List!40601)

(assert (=> d!1137833 (= lt!1330744 e!2367355)))

(declare-fun c!668471 () Bool)

(assert (=> d!1137833 (= c!668471 ((_ is Nil!40477) (t!309190 prefixTokens!80)))))

(assert (=> d!1137833 (= (++!10222 (t!309190 prefixTokens!80) suffixTokens!72) lt!1330744)))

(declare-fun b!3833342 () Bool)

(assert (=> b!3833342 (= e!2367355 (Cons!40477 (h!45897 (t!309190 prefixTokens!80)) (++!10222 (t!309190 (t!309190 prefixTokens!80)) suffixTokens!72)))))

(declare-fun b!3833341 () Bool)

(assert (=> b!3833341 (= e!2367355 suffixTokens!72)))

(assert (= (and d!1137833 c!668471) b!3833341))

(assert (= (and d!1137833 (not c!668471)) b!3833342))

(assert (= (and d!1137833 res!1551724) b!3833343))

(assert (= (and b!3833343 res!1551725) b!3833344))

(declare-fun m!4387703 () Bool)

(assert (=> b!3833343 m!4387703))

(declare-fun m!4387705 () Bool)

(assert (=> b!3833343 m!4387705))

(assert (=> b!3833343 m!4387439))

(declare-fun m!4387707 () Bool)

(assert (=> d!1137833 m!4387707))

(declare-fun m!4387709 () Bool)

(assert (=> d!1137833 m!4387709))

(assert (=> d!1137833 m!4387445))

(declare-fun m!4387711 () Bool)

(assert (=> b!3833342 m!4387711))

(assert (=> b!3833049 d!1137833))

(declare-fun d!1137835 () Bool)

(declare-fun res!1551726 () Bool)

(declare-fun e!2367356 () Bool)

(assert (=> d!1137835 (=> (not res!1551726) (not e!2367356))))

(assert (=> d!1137835 (= res!1551726 (not (isEmpty!23894 (originalCharacters!6832 (h!45897 (t!309190 suffixTokens!72))))))))

(assert (=> d!1137835 (= (inv!54610 (h!45897 (t!309190 suffixTokens!72))) e!2367356)))

(declare-fun b!3833345 () Bool)

(declare-fun res!1551727 () Bool)

(assert (=> b!3833345 (=> (not res!1551727) (not e!2367356))))

(assert (=> b!3833345 (= res!1551727 (= (originalCharacters!6832 (h!45897 (t!309190 suffixTokens!72))) (list!15082 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))) (value!198246 (h!45897 (t!309190 suffixTokens!72)))))))))

(declare-fun b!3833346 () Bool)

(assert (=> b!3833346 (= e!2367356 (= (size!30496 (h!45897 (t!309190 suffixTokens!72))) (size!30499 (originalCharacters!6832 (h!45897 (t!309190 suffixTokens!72))))))))

(assert (= (and d!1137835 res!1551726) b!3833345))

(assert (= (and b!3833345 res!1551727) b!3833346))

(declare-fun b_lambda!112071 () Bool)

(assert (=> (not b_lambda!112071) (not b!3833345)))

(declare-fun t!309254 () Bool)

(declare-fun tb!219961 () Bool)

(assert (=> (and b!3833263 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72)))))) t!309254) tb!219961))

(declare-fun b!3833349 () Bool)

(declare-fun e!2367358 () Bool)

(declare-fun tp!1159934 () Bool)

(assert (=> b!3833349 (= e!2367358 (and (inv!54613 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))) (value!198246 (h!45897 (t!309190 suffixTokens!72)))))) tp!1159934))))

(declare-fun result!268146 () Bool)

(assert (=> tb!219961 (= result!268146 (and (inv!54614 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))) (value!198246 (h!45897 (t!309190 suffixTokens!72))))) e!2367358))))

(assert (= tb!219961 b!3833349))

(declare-fun m!4387713 () Bool)

(assert (=> b!3833349 m!4387713))

(declare-fun m!4387715 () Bool)

(assert (=> tb!219961 m!4387715))

(assert (=> b!3833345 t!309254))

(declare-fun b_and!284923 () Bool)

(assert (= b_and!284917 (and (=> t!309254 result!268146) b_and!284923)))

(declare-fun tb!219963 () Bool)

(declare-fun t!309256 () Bool)

(assert (=> (and b!3832973 (= (toChars!8495 (transformation!6232 (h!45896 rules!2768))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72)))))) t!309256) tb!219963))

(declare-fun result!268148 () Bool)

(assert (= result!268148 result!268146))

(assert (=> b!3833345 t!309256))

(declare-fun b_and!284925 () Bool)

(assert (= b_and!284911 (and (=> t!309256 result!268148) b_and!284925)))

(declare-fun t!309258 () Bool)

(declare-fun tb!219965 () Bool)

(assert (=> (and b!3832972 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72)))))) t!309258) tb!219965))

(declare-fun result!268150 () Bool)

(assert (= result!268150 result!268146))

(assert (=> b!3833345 t!309258))

(declare-fun b_and!284927 () Bool)

(assert (= b_and!284915 (and (=> t!309258 result!268150) b_and!284927)))

(declare-fun t!309260 () Bool)

(declare-fun tb!219967 () Bool)

(assert (=> (and b!3833277 (= (toChars!8495 (transformation!6232 (h!45896 (t!309189 rules!2768)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72)))))) t!309260) tb!219967))

(declare-fun result!268152 () Bool)

(assert (= result!268152 result!268146))

(assert (=> b!3833345 t!309260))

(declare-fun b_and!284929 () Bool)

(assert (= b_and!284921 (and (=> t!309260 result!268152) b_and!284929)))

(declare-fun tb!219969 () Bool)

(declare-fun t!309262 () Bool)

(assert (=> (and b!3833250 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72)))))) t!309262) tb!219969))

(declare-fun result!268154 () Bool)

(assert (= result!268154 result!268146))

(assert (=> b!3833345 t!309262))

(declare-fun b_and!284931 () Bool)

(assert (= b_and!284919 (and (=> t!309262 result!268154) b_and!284931)))

(declare-fun tb!219971 () Bool)

(declare-fun t!309264 () Bool)

(assert (=> (and b!3832955 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72)))))) t!309264) tb!219971))

(declare-fun result!268156 () Bool)

(assert (= result!268156 result!268146))

(assert (=> b!3833345 t!309264))

(declare-fun b_and!284933 () Bool)

(assert (= b_and!284913 (and (=> t!309264 result!268156) b_and!284933)))

(declare-fun m!4387721 () Bool)

(assert (=> d!1137835 m!4387721))

(declare-fun m!4387723 () Bool)

(assert (=> b!3833345 m!4387723))

(assert (=> b!3833345 m!4387723))

(declare-fun m!4387725 () Bool)

(assert (=> b!3833345 m!4387725))

(declare-fun m!4387727 () Bool)

(assert (=> b!3833346 m!4387727))

(assert (=> b!3833260 d!1137835))

(declare-fun d!1137839 () Bool)

(declare-fun charsToInt!0 (List!40599) (_ BitVec 32))

(assert (=> d!1137839 (= (inv!16 (value!198246 (h!45897 suffixTokens!72))) (= (charsToInt!0 (text!45681 (value!198246 (h!45897 suffixTokens!72)))) (value!198237 (value!198246 (h!45897 suffixTokens!72)))))))

(declare-fun bs!582332 () Bool)

(assert (= bs!582332 d!1137839))

(declare-fun m!4387733 () Bool)

(assert (=> bs!582332 m!4387733))

(assert (=> b!3833209 d!1137839))

(declare-fun d!1137841 () Bool)

(declare-fun res!1551736 () Bool)

(declare-fun e!2367368 () Bool)

(assert (=> d!1137841 (=> res!1551736 e!2367368)))

(assert (=> d!1137841 (= res!1551736 ((_ is Nil!40476) rules!2768))))

(assert (=> d!1137841 (= (noDuplicateTag!2409 thiss!20629 rules!2768 Nil!40479) e!2367368)))

(declare-fun b!3833362 () Bool)

(declare-fun e!2367369 () Bool)

(assert (=> b!3833362 (= e!2367368 e!2367369)))

(declare-fun res!1551737 () Bool)

(assert (=> b!3833362 (=> (not res!1551737) (not e!2367369))))

(declare-fun contains!8209 (List!40603 String!46028) Bool)

(assert (=> b!3833362 (= res!1551737 (not (contains!8209 Nil!40479 (tag!7092 (h!45896 rules!2768)))))))

(declare-fun b!3833363 () Bool)

(assert (=> b!3833363 (= e!2367369 (noDuplicateTag!2409 thiss!20629 (t!309189 rules!2768) (Cons!40479 (tag!7092 (h!45896 rules!2768)) Nil!40479)))))

(assert (= (and d!1137841 (not res!1551736)) b!3833362))

(assert (= (and b!3833362 res!1551737) b!3833363))

(declare-fun m!4387749 () Bool)

(assert (=> b!3833362 m!4387749))

(declare-fun m!4387751 () Bool)

(assert (=> b!3833363 m!4387751))

(assert (=> b!3833216 d!1137841))

(declare-fun b!3833365 () Bool)

(declare-fun e!2367370 () List!40598)

(assert (=> b!3833365 (= e!2367370 (Cons!40474 (h!45894 (t!309187 prefix!426)) (++!10221 (t!309187 (t!309187 prefix!426)) suffix!1176)))))

(declare-fun b!3833364 () Bool)

(assert (=> b!3833364 (= e!2367370 suffix!1176)))

(declare-fun d!1137849 () Bool)

(declare-fun e!2367371 () Bool)

(assert (=> d!1137849 e!2367371))

(declare-fun res!1551739 () Bool)

(assert (=> d!1137849 (=> (not res!1551739) (not e!2367371))))

(declare-fun lt!1330748 () List!40598)

(assert (=> d!1137849 (= res!1551739 (= (content!6007 lt!1330748) ((_ map or) (content!6007 (t!309187 prefix!426)) (content!6007 suffix!1176))))))

(assert (=> d!1137849 (= lt!1330748 e!2367370)))

(declare-fun c!668475 () Bool)

(assert (=> d!1137849 (= c!668475 ((_ is Nil!40474) (t!309187 prefix!426)))))

(assert (=> d!1137849 (= (++!10221 (t!309187 prefix!426) suffix!1176) lt!1330748)))

(declare-fun b!3833367 () Bool)

(assert (=> b!3833367 (= e!2367371 (or (not (= suffix!1176 Nil!40474)) (= lt!1330748 (t!309187 prefix!426))))))

(declare-fun b!3833366 () Bool)

(declare-fun res!1551738 () Bool)

(assert (=> b!3833366 (=> (not res!1551738) (not e!2367371))))

(assert (=> b!3833366 (= res!1551738 (= (size!30499 lt!1330748) (+ (size!30499 (t!309187 prefix!426)) (size!30499 suffix!1176))))))

(assert (= (and d!1137849 c!668475) b!3833364))

(assert (= (and d!1137849 (not c!668475)) b!3833365))

(assert (= (and d!1137849 res!1551739) b!3833366))

(assert (= (and b!3833366 res!1551738) b!3833367))

(declare-fun m!4387753 () Bool)

(assert (=> b!3833365 m!4387753))

(declare-fun m!4387755 () Bool)

(assert (=> d!1137849 m!4387755))

(declare-fun m!4387757 () Bool)

(assert (=> d!1137849 m!4387757))

(assert (=> d!1137849 m!4387429))

(declare-fun m!4387759 () Bool)

(assert (=> b!3833366 m!4387759))

(declare-fun m!4387761 () Bool)

(assert (=> b!3833366 m!4387761))

(assert (=> b!3833366 m!4387401))

(assert (=> b!3833033 d!1137849))

(declare-fun bs!582334 () Bool)

(declare-fun d!1137851 () Bool)

(assert (= bs!582334 (and d!1137851 d!1137733)))

(declare-fun lambda!125987 () Int)

(assert (=> bs!582334 (= lambda!125987 lambda!125979)))

(assert (=> d!1137851 true))

(declare-fun lt!1330749 () Bool)

(assert (=> d!1137851 (= lt!1330749 (forall!8266 (t!309189 rules!2768) lambda!125987))))

(declare-fun e!2367373 () Bool)

(assert (=> d!1137851 (= lt!1330749 e!2367373)))

(declare-fun res!1551740 () Bool)

(assert (=> d!1137851 (=> res!1551740 e!2367373)))

(assert (=> d!1137851 (= res!1551740 (not ((_ is Cons!40476) (t!309189 rules!2768))))))

(assert (=> d!1137851 (= (rulesValidInductive!2194 thiss!20629 (t!309189 rules!2768)) lt!1330749)))

(declare-fun b!3833368 () Bool)

(declare-fun e!2367372 () Bool)

(assert (=> b!3833368 (= e!2367373 e!2367372)))

(declare-fun res!1551741 () Bool)

(assert (=> b!3833368 (=> (not res!1551741) (not e!2367372))))

(assert (=> b!3833368 (= res!1551741 (ruleValid!2187 thiss!20629 (h!45896 (t!309189 rules!2768))))))

(declare-fun b!3833369 () Bool)

(assert (=> b!3833369 (= e!2367372 (rulesValidInductive!2194 thiss!20629 (t!309189 (t!309189 rules!2768))))))

(assert (= (and d!1137851 (not res!1551740)) b!3833368))

(assert (= (and b!3833368 res!1551741) b!3833369))

(declare-fun m!4387763 () Bool)

(assert (=> d!1137851 m!4387763))

(declare-fun m!4387765 () Bool)

(assert (=> b!3833368 m!4387765))

(declare-fun m!4387767 () Bool)

(assert (=> b!3833369 m!4387767))

(assert (=> b!3833181 d!1137851))

(declare-fun d!1137853 () Bool)

(declare-fun lt!1330750 () Int)

(assert (=> d!1137853 (>= lt!1330750 0)))

(declare-fun e!2367374 () Int)

(assert (=> d!1137853 (= lt!1330750 e!2367374)))

(declare-fun c!668476 () Bool)

(assert (=> d!1137853 (= c!668476 ((_ is Nil!40474) (originalCharacters!6832 (h!45897 suffixTokens!72))))))

(assert (=> d!1137853 (= (size!30499 (originalCharacters!6832 (h!45897 suffixTokens!72))) lt!1330750)))

(declare-fun b!3833370 () Bool)

(assert (=> b!3833370 (= e!2367374 0)))

(declare-fun b!3833371 () Bool)

(assert (=> b!3833371 (= e!2367374 (+ 1 (size!30499 (t!309187 (originalCharacters!6832 (h!45897 suffixTokens!72))))))))

(assert (= (and d!1137853 c!668476) b!3833370))

(assert (= (and d!1137853 (not c!668476)) b!3833371))

(declare-fun m!4387769 () Bool)

(assert (=> b!3833371 m!4387769))

(assert (=> b!3833197 d!1137853))

(declare-fun d!1137855 () Bool)

(assert (=> d!1137855 (= (inv!54606 (tag!7092 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))) (= (mod (str.len (value!198245 (tag!7092 (rule!9064 (h!45897 (t!309190 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3833262 d!1137855))

(declare-fun d!1137857 () Bool)

(declare-fun res!1551742 () Bool)

(declare-fun e!2367375 () Bool)

(assert (=> d!1137857 (=> (not res!1551742) (not e!2367375))))

(assert (=> d!1137857 (= res!1551742 (semiInverseModEq!2672 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))) (toValue!8636 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72)))))))))

(assert (=> d!1137857 (= (inv!54609 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))) e!2367375)))

(declare-fun b!3833372 () Bool)

(assert (=> b!3833372 (= e!2367375 (equivClasses!2571 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))) (toValue!8636 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72)))))))))

(assert (= (and d!1137857 res!1551742) b!3833372))

(declare-fun m!4387771 () Bool)

(assert (=> d!1137857 m!4387771))

(declare-fun m!4387773 () Bool)

(assert (=> b!3833372 m!4387773))

(assert (=> b!3833262 d!1137857))

(declare-fun d!1137859 () Bool)

(assert (=> d!1137859 (= (inv!16 (value!198246 (h!45897 prefixTokens!80))) (= (charsToInt!0 (text!45681 (value!198246 (h!45897 prefixTokens!80)))) (value!198237 (value!198246 (h!45897 prefixTokens!80)))))))

(declare-fun bs!582335 () Bool)

(assert (= bs!582335 d!1137859))

(declare-fun m!4387775 () Bool)

(assert (=> bs!582335 m!4387775))

(assert (=> b!3833217 d!1137859))

(declare-fun d!1137861 () Bool)

(assert (=> d!1137861 (= (isEmpty!23896 (_1!22960 lt!1330701)) ((_ is Nil!40477) (_1!22960 lt!1330701)))))

(assert (=> b!3833016 d!1137861))

(declare-fun bs!582336 () Bool)

(declare-fun d!1137863 () Bool)

(assert (= bs!582336 (and d!1137863 d!1137829)))

(declare-fun lambda!125988 () Int)

(assert (=> bs!582336 (= (= (toValue!8636 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (toValue!8636 (transformation!6232 (h!45896 rules!2768)))) (= lambda!125988 lambda!125986))))

(assert (=> d!1137863 true))

(assert (=> d!1137863 (< (dynLambda!17524 order!22099 (toValue!8636 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))) (dynLambda!17525 order!22101 lambda!125988))))

(assert (=> d!1137863 (= (equivClasses!2571 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (toValue!8636 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))) (Forall2!1023 lambda!125988))))

(declare-fun bs!582337 () Bool)

(assert (= bs!582337 d!1137863))

(declare-fun m!4387777 () Bool)

(assert (=> bs!582337 m!4387777))

(assert (=> b!3832977 d!1137863))

(declare-fun d!1137865 () Bool)

(declare-fun charsToBigInt!0 (List!40599 Int) Int)

(assert (=> d!1137865 (= (inv!15 (value!198246 (h!45897 suffixTokens!72))) (= (charsToBigInt!0 (text!45683 (value!198246 (h!45897 suffixTokens!72))) 0) (value!198241 (value!198246 (h!45897 suffixTokens!72)))))))

(declare-fun bs!582339 () Bool)

(assert (= bs!582339 d!1137865))

(declare-fun m!4387787 () Bool)

(assert (=> bs!582339 m!4387787))

(assert (=> b!3833213 d!1137865))

(declare-fun d!1137871 () Bool)

(declare-fun lt!1330751 () Int)

(assert (=> d!1137871 (>= lt!1330751 0)))

(declare-fun e!2367379 () Int)

(assert (=> d!1137871 (= lt!1330751 e!2367379)))

(declare-fun c!668479 () Bool)

(assert (=> d!1137871 (= c!668479 ((_ is Nil!40474) (_2!22960 lt!1330704)))))

(assert (=> d!1137871 (= (size!30499 (_2!22960 lt!1330704)) lt!1330751)))

(declare-fun b!3833378 () Bool)

(assert (=> b!3833378 (= e!2367379 0)))

(declare-fun b!3833379 () Bool)

(assert (=> b!3833379 (= e!2367379 (+ 1 (size!30499 (t!309187 (_2!22960 lt!1330704)))))))

(assert (= (and d!1137871 c!668479) b!3833378))

(assert (= (and d!1137871 (not c!668479)) b!3833379))

(declare-fun m!4387789 () Bool)

(assert (=> b!3833379 m!4387789))

(assert (=> b!3833020 d!1137871))

(declare-fun d!1137873 () Bool)

(declare-fun lt!1330752 () Int)

(assert (=> d!1137873 (>= lt!1330752 0)))

(declare-fun e!2367380 () Int)

(assert (=> d!1137873 (= lt!1330752 e!2367380)))

(declare-fun c!668480 () Bool)

(assert (=> d!1137873 (= c!668480 ((_ is Nil!40474) (++!10221 prefix!426 suffix!1176)))))

(assert (=> d!1137873 (= (size!30499 (++!10221 prefix!426 suffix!1176)) lt!1330752)))

(declare-fun b!3833380 () Bool)

(assert (=> b!3833380 (= e!2367380 0)))

(declare-fun b!3833381 () Bool)

(assert (=> b!3833381 (= e!2367380 (+ 1 (size!30499 (t!309187 (++!10221 prefix!426 suffix!1176)))))))

(assert (= (and d!1137873 c!668480) b!3833380))

(assert (= (and d!1137873 (not c!668480)) b!3833381))

(declare-fun m!4387791 () Bool)

(assert (=> b!3833381 m!4387791))

(assert (=> b!3833020 d!1137873))

(declare-fun d!1137875 () Bool)

(declare-fun isBalanced!3615 (Conc!12443) Bool)

(assert (=> d!1137875 (= (inv!54614 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72)))) (isBalanced!3615 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72))))))))

(declare-fun bs!582340 () Bool)

(assert (= bs!582340 d!1137875))

(declare-fun m!4387793 () Bool)

(assert (=> bs!582340 m!4387793))

(assert (=> tb!219931 d!1137875))

(declare-fun d!1137877 () Bool)

(assert (=> d!1137877 (= (inv!15 (value!198246 (h!45897 prefixTokens!80))) (= (charsToBigInt!0 (text!45683 (value!198246 (h!45897 prefixTokens!80))) 0) (value!198241 (value!198246 (h!45897 prefixTokens!80)))))))

(declare-fun bs!582341 () Bool)

(assert (= bs!582341 d!1137877))

(declare-fun m!4387795 () Bool)

(assert (=> bs!582341 m!4387795))

(assert (=> b!3833221 d!1137877))

(declare-fun d!1137879 () Bool)

(declare-fun c!668486 () Bool)

(assert (=> d!1137879 (= c!668486 ((_ is Nil!40474) lt!1330708))))

(declare-fun e!2367386 () (InoxSet C!22460))

(assert (=> d!1137879 (= (content!6007 lt!1330708) e!2367386)))

(declare-fun b!3833392 () Bool)

(assert (=> b!3833392 (= e!2367386 ((as const (Array C!22460 Bool)) false))))

(declare-fun b!3833393 () Bool)

(assert (=> b!3833393 (= e!2367386 ((_ map or) (store ((as const (Array C!22460 Bool)) false) (h!45894 lt!1330708) true) (content!6007 (t!309187 lt!1330708))))))

(assert (= (and d!1137879 c!668486) b!3833392))

(assert (= (and d!1137879 (not c!668486)) b!3833393))

(declare-fun m!4387799 () Bool)

(assert (=> b!3833393 m!4387799))

(declare-fun m!4387801 () Bool)

(assert (=> b!3833393 m!4387801))

(assert (=> d!1137729 d!1137879))

(declare-fun d!1137883 () Bool)

(declare-fun c!668487 () Bool)

(assert (=> d!1137883 (= c!668487 ((_ is Nil!40474) prefix!426))))

(declare-fun e!2367387 () (InoxSet C!22460))

(assert (=> d!1137883 (= (content!6007 prefix!426) e!2367387)))

(declare-fun b!3833394 () Bool)

(assert (=> b!3833394 (= e!2367387 ((as const (Array C!22460 Bool)) false))))

(declare-fun b!3833395 () Bool)

(assert (=> b!3833395 (= e!2367387 ((_ map or) (store ((as const (Array C!22460 Bool)) false) (h!45894 prefix!426) true) (content!6007 (t!309187 prefix!426))))))

(assert (= (and d!1137883 c!668487) b!3833394))

(assert (= (and d!1137883 (not c!668487)) b!3833395))

(declare-fun m!4387803 () Bool)

(assert (=> b!3833395 m!4387803))

(assert (=> b!3833395 m!4387757))

(assert (=> d!1137729 d!1137883))

(declare-fun d!1137885 () Bool)

(declare-fun c!668488 () Bool)

(assert (=> d!1137885 (= c!668488 ((_ is Nil!40474) suffix!1176))))

(declare-fun e!2367388 () (InoxSet C!22460))

(assert (=> d!1137885 (= (content!6007 suffix!1176) e!2367388)))

(declare-fun b!3833396 () Bool)

(assert (=> b!3833396 (= e!2367388 ((as const (Array C!22460 Bool)) false))))

(declare-fun b!3833397 () Bool)

(assert (=> b!3833397 (= e!2367388 ((_ map or) (store ((as const (Array C!22460 Bool)) false) (h!45894 suffix!1176) true) (content!6007 (t!309187 suffix!1176))))))

(assert (= (and d!1137885 c!668488) b!3833396))

(assert (= (and d!1137885 (not c!668488)) b!3833397))

(declare-fun m!4387805 () Bool)

(assert (=> b!3833397 m!4387805))

(declare-fun m!4387807 () Bool)

(assert (=> b!3833397 m!4387807))

(assert (=> d!1137729 d!1137885))

(declare-fun bs!582342 () Bool)

(declare-fun d!1137887 () Bool)

(assert (= bs!582342 (and d!1137887 d!1137829)))

(declare-fun lambda!125989 () Int)

(assert (=> bs!582342 (= (= (toValue!8636 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (toValue!8636 (transformation!6232 (h!45896 rules!2768)))) (= lambda!125989 lambda!125986))))

(declare-fun bs!582343 () Bool)

(assert (= bs!582343 (and d!1137887 d!1137863)))

(assert (=> bs!582343 (= (= (toValue!8636 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (toValue!8636 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))) (= lambda!125989 lambda!125988))))

(assert (=> d!1137887 true))

(assert (=> d!1137887 (< (dynLambda!17524 order!22099 (toValue!8636 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))) (dynLambda!17525 order!22101 lambda!125989))))

(assert (=> d!1137887 (= (equivClasses!2571 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (toValue!8636 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))) (Forall2!1023 lambda!125989))))

(declare-fun bs!582344 () Bool)

(assert (= bs!582344 d!1137887))

(declare-fun m!4387809 () Bool)

(assert (=> bs!582344 m!4387809))

(assert (=> b!3833195 d!1137887))

(declare-fun b!3833402 () Bool)

(declare-fun e!2367392 () Bool)

(assert (=> b!3833402 (= e!2367392 (inv!16 (value!198246 (h!45897 (t!309190 prefixTokens!80)))))))

(declare-fun b!3833403 () Bool)

(declare-fun e!2367393 () Bool)

(assert (=> b!3833403 (= e!2367393 (inv!17 (value!198246 (h!45897 (t!309190 prefixTokens!80)))))))

(declare-fun d!1137889 () Bool)

(declare-fun c!668491 () Bool)

(assert (=> d!1137889 (= c!668491 ((_ is IntegerValue!19386) (value!198246 (h!45897 (t!309190 prefixTokens!80)))))))

(assert (=> d!1137889 (= (inv!21 (value!198246 (h!45897 (t!309190 prefixTokens!80)))) e!2367392)))

(declare-fun b!3833404 () Bool)

(assert (=> b!3833404 (= e!2367392 e!2367393)))

(declare-fun c!668492 () Bool)

(assert (=> b!3833404 (= c!668492 ((_ is IntegerValue!19387) (value!198246 (h!45897 (t!309190 prefixTokens!80)))))))

(declare-fun b!3833405 () Bool)

(declare-fun res!1551744 () Bool)

(declare-fun e!2367391 () Bool)

(assert (=> b!3833405 (=> res!1551744 e!2367391)))

(assert (=> b!3833405 (= res!1551744 (not ((_ is IntegerValue!19388) (value!198246 (h!45897 (t!309190 prefixTokens!80))))))))

(assert (=> b!3833405 (= e!2367393 e!2367391)))

(declare-fun b!3833406 () Bool)

(assert (=> b!3833406 (= e!2367391 (inv!15 (value!198246 (h!45897 (t!309190 prefixTokens!80)))))))

(assert (= (and d!1137889 c!668491) b!3833402))

(assert (= (and d!1137889 (not c!668491)) b!3833404))

(assert (= (and b!3833404 c!668492) b!3833403))

(assert (= (and b!3833404 (not c!668492)) b!3833405))

(assert (= (and b!3833405 (not res!1551744)) b!3833406))

(declare-fun m!4387811 () Bool)

(assert (=> b!3833402 m!4387811))

(declare-fun m!4387813 () Bool)

(assert (=> b!3833403 m!4387813))

(declare-fun m!4387815 () Bool)

(assert (=> b!3833406 m!4387815))

(assert (=> b!3833248 d!1137889))

(declare-fun b!3833407 () Bool)

(declare-fun e!2367394 () tuple2!39652)

(assert (=> b!3833407 (= e!2367394 (tuple2!39653 Nil!40477 (_2!22962 (v!38939 lt!1330700))))))

(declare-fun b!3833408 () Bool)

(declare-fun e!2367395 () Bool)

(declare-fun e!2367396 () Bool)

(assert (=> b!3833408 (= e!2367395 e!2367396)))

(declare-fun res!1551745 () Bool)

(declare-fun lt!1330759 () tuple2!39652)

(assert (=> b!3833408 (= res!1551745 (< (size!30499 (_2!22960 lt!1330759)) (size!30499 (_2!22962 (v!38939 lt!1330700)))))))

(assert (=> b!3833408 (=> (not res!1551745) (not e!2367396))))

(declare-fun b!3833409 () Bool)

(assert (=> b!3833409 (= e!2367396 (not (isEmpty!23896 (_1!22960 lt!1330759))))))

(declare-fun d!1137891 () Bool)

(assert (=> d!1137891 e!2367395))

(declare-fun c!668493 () Bool)

(assert (=> d!1137891 (= c!668493 (> (size!30500 (_1!22960 lt!1330759)) 0))))

(assert (=> d!1137891 (= lt!1330759 e!2367394)))

(declare-fun c!668494 () Bool)

(declare-fun lt!1330758 () Option!8652)

(assert (=> d!1137891 (= c!668494 ((_ is Some!8651) lt!1330758))))

(assert (=> d!1137891 (= lt!1330758 (maxPrefix!3127 thiss!20629 rules!2768 (_2!22962 (v!38939 lt!1330700))))))

(assert (=> d!1137891 (= (lexList!1589 thiss!20629 rules!2768 (_2!22962 (v!38939 lt!1330700))) lt!1330759)))

(declare-fun b!3833410 () Bool)

(assert (=> b!3833410 (= e!2367395 (= (_2!22960 lt!1330759) (_2!22962 (v!38939 lt!1330700))))))

(declare-fun b!3833411 () Bool)

(declare-fun lt!1330760 () tuple2!39652)

(assert (=> b!3833411 (= e!2367394 (tuple2!39653 (Cons!40477 (_1!22962 (v!38939 lt!1330758)) (_1!22960 lt!1330760)) (_2!22960 lt!1330760)))))

(assert (=> b!3833411 (= lt!1330760 (lexList!1589 thiss!20629 rules!2768 (_2!22962 (v!38939 lt!1330758))))))

(assert (= (and d!1137891 c!668494) b!3833411))

(assert (= (and d!1137891 (not c!668494)) b!3833407))

(assert (= (and d!1137891 c!668493) b!3833408))

(assert (= (and d!1137891 (not c!668493)) b!3833410))

(assert (= (and b!3833408 res!1551745) b!3833409))

(declare-fun m!4387817 () Bool)

(assert (=> b!3833408 m!4387817))

(declare-fun m!4387819 () Bool)

(assert (=> b!3833408 m!4387819))

(declare-fun m!4387821 () Bool)

(assert (=> b!3833409 m!4387821))

(declare-fun m!4387823 () Bool)

(assert (=> d!1137891 m!4387823))

(declare-fun m!4387825 () Bool)

(assert (=> d!1137891 m!4387825))

(declare-fun m!4387827 () Bool)

(assert (=> b!3833411 m!4387827))

(assert (=> b!3833018 d!1137891))

(declare-fun bs!582345 () Bool)

(declare-fun d!1137893 () Bool)

(assert (= bs!582345 (and d!1137893 d!1137733)))

(declare-fun lambda!125992 () Int)

(assert (=> bs!582345 (= lambda!125992 lambda!125979)))

(declare-fun bs!582346 () Bool)

(assert (= bs!582346 (and d!1137893 d!1137851)))

(assert (=> bs!582346 (= lambda!125992 lambda!125987)))

(assert (=> d!1137893 true))

(declare-fun lt!1330764 () Bool)

(assert (=> d!1137893 (= lt!1330764 (rulesValidInductive!2194 thiss!20629 rules!2768))))

(assert (=> d!1137893 (= lt!1330764 (forall!8266 rules!2768 lambda!125992))))

(assert (=> d!1137893 (= (rulesValid!2408 thiss!20629 rules!2768) lt!1330764)))

(declare-fun bs!582347 () Bool)

(assert (= bs!582347 d!1137893))

(assert (=> bs!582347 m!4387339))

(declare-fun m!4387831 () Bool)

(assert (=> bs!582347 m!4387831))

(assert (=> d!1137779 d!1137893))

(declare-fun d!1137897 () Bool)

(declare-fun c!668496 () Bool)

(assert (=> d!1137897 (= c!668496 ((_ is Node!12443) (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80))))))))

(declare-fun e!2367398 () Bool)

(assert (=> d!1137897 (= (inv!54613 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80))))) e!2367398)))

(declare-fun b!3833414 () Bool)

(assert (=> b!3833414 (= e!2367398 (inv!54615 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80))))))))

(declare-fun b!3833415 () Bool)

(declare-fun e!2367399 () Bool)

(assert (=> b!3833415 (= e!2367398 e!2367399)))

(declare-fun res!1551746 () Bool)

(assert (=> b!3833415 (= res!1551746 (not ((_ is Leaf!19266) (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80)))))))))

(assert (=> b!3833415 (=> res!1551746 e!2367399)))

(declare-fun b!3833416 () Bool)

(assert (=> b!3833416 (= e!2367399 (inv!54616 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80))))))))

(assert (= (and d!1137897 c!668496) b!3833414))

(assert (= (and d!1137897 (not c!668496)) b!3833415))

(assert (= (and b!3833415 (not res!1551746)) b!3833416))

(declare-fun m!4387833 () Bool)

(assert (=> b!3833414 m!4387833))

(declare-fun m!4387835 () Bool)

(assert (=> b!3833416 m!4387835))

(assert (=> b!3833194 d!1137897))

(declare-fun d!1137899 () Bool)

(declare-fun res!1551751 () Bool)

(declare-fun e!2367402 () Bool)

(assert (=> d!1137899 (=> (not res!1551751) (not e!2367402))))

(declare-fun validRegex!5072 (Regex!11137) Bool)

(assert (=> d!1137899 (= res!1551751 (validRegex!5072 (regex!6232 (h!45896 rules!2768))))))

(assert (=> d!1137899 (= (ruleValid!2187 thiss!20629 (h!45896 rules!2768)) e!2367402)))

(declare-fun b!3833421 () Bool)

(declare-fun res!1551752 () Bool)

(assert (=> b!3833421 (=> (not res!1551752) (not e!2367402))))

(declare-fun nullable!3873 (Regex!11137) Bool)

(assert (=> b!3833421 (= res!1551752 (not (nullable!3873 (regex!6232 (h!45896 rules!2768)))))))

(declare-fun b!3833422 () Bool)

(assert (=> b!3833422 (= e!2367402 (not (= (tag!7092 (h!45896 rules!2768)) (String!46029 ""))))))

(assert (= (and d!1137899 res!1551751) b!3833421))

(assert (= (and b!3833421 res!1551752) b!3833422))

(declare-fun m!4387837 () Bool)

(assert (=> d!1137899 m!4387837))

(declare-fun m!4387839 () Bool)

(assert (=> b!3833421 m!4387839))

(assert (=> b!3833180 d!1137899))

(declare-fun d!1137901 () Bool)

(declare-fun lt!1330767 () Int)

(assert (=> d!1137901 (>= lt!1330767 0)))

(declare-fun e!2367405 () Int)

(assert (=> d!1137901 (= lt!1330767 e!2367405)))

(declare-fun c!668499 () Bool)

(assert (=> d!1137901 (= c!668499 ((_ is Nil!40477) (_1!22960 lt!1330701)))))

(assert (=> d!1137901 (= (size!30500 (_1!22960 lt!1330701)) lt!1330767)))

(declare-fun b!3833427 () Bool)

(assert (=> b!3833427 (= e!2367405 0)))

(declare-fun b!3833428 () Bool)

(assert (=> b!3833428 (= e!2367405 (+ 1 (size!30500 (t!309190 (_1!22960 lt!1330701)))))))

(assert (= (and d!1137901 c!668499) b!3833427))

(assert (= (and d!1137901 (not c!668499)) b!3833428))

(declare-fun m!4387841 () Bool)

(assert (=> b!3833428 m!4387841))

(assert (=> d!1137719 d!1137901))

(declare-fun b!3833447 () Bool)

(declare-fun res!1551773 () Bool)

(declare-fun e!2367414 () Bool)

(assert (=> b!3833447 (=> (not res!1551773) (not e!2367414))))

(declare-fun lt!1330780 () Option!8652)

(declare-fun matchR!5324 (Regex!11137 List!40598) Bool)

(declare-fun get!13428 (Option!8652) tuple2!39656)

(declare-fun charsOf!4064 (Token!11602) BalanceConc!24480)

(assert (=> b!3833447 (= res!1551773 (matchR!5324 (regex!6232 (rule!9064 (_1!22962 (get!13428 lt!1330780)))) (list!15082 (charsOf!4064 (_1!22962 (get!13428 lt!1330780))))))))

(declare-fun b!3833448 () Bool)

(declare-fun e!2367413 () Option!8652)

(declare-fun lt!1330781 () Option!8652)

(declare-fun lt!1330779 () Option!8652)

(assert (=> b!3833448 (= e!2367413 (ite (and ((_ is None!8651) lt!1330781) ((_ is None!8651) lt!1330779)) None!8651 (ite ((_ is None!8651) lt!1330779) lt!1330781 (ite ((_ is None!8651) lt!1330781) lt!1330779 (ite (>= (size!30496 (_1!22962 (v!38939 lt!1330781))) (size!30496 (_1!22962 (v!38939 lt!1330779)))) lt!1330781 lt!1330779)))))))

(declare-fun call!281825 () Option!8652)

(assert (=> b!3833448 (= lt!1330781 call!281825)))

(assert (=> b!3833448 (= lt!1330779 (maxPrefix!3127 thiss!20629 (t!309189 rules!2768) suffix!1176))))

(declare-fun b!3833450 () Bool)

(declare-fun e!2367412 () Bool)

(assert (=> b!3833450 (= e!2367412 e!2367414)))

(declare-fun res!1551772 () Bool)

(assert (=> b!3833450 (=> (not res!1551772) (not e!2367414))))

(declare-fun isDefined!6813 (Option!8652) Bool)

(assert (=> b!3833450 (= res!1551772 (isDefined!6813 lt!1330780))))

(declare-fun b!3833451 () Bool)

(declare-fun res!1551771 () Bool)

(assert (=> b!3833451 (=> (not res!1551771) (not e!2367414))))

(assert (=> b!3833451 (= res!1551771 (< (size!30499 (_2!22962 (get!13428 lt!1330780))) (size!30499 suffix!1176)))))

(declare-fun b!3833452 () Bool)

(assert (=> b!3833452 (= e!2367413 call!281825)))

(declare-fun bm!281820 () Bool)

(declare-fun maxPrefixOneRule!2225 (LexerInterface!5821 Rule!12264 List!40598) Option!8652)

(assert (=> bm!281820 (= call!281825 (maxPrefixOneRule!2225 thiss!20629 (h!45896 rules!2768) suffix!1176))))

(declare-fun b!3833453 () Bool)

(declare-fun res!1551768 () Bool)

(assert (=> b!3833453 (=> (not res!1551768) (not e!2367414))))

(declare-fun apply!9481 (TokenValueInjection!12352 BalanceConc!24480) TokenValue!6462)

(declare-fun seqFromList!4509 (List!40598) BalanceConc!24480)

(assert (=> b!3833453 (= res!1551768 (= (value!198246 (_1!22962 (get!13428 lt!1330780))) (apply!9481 (transformation!6232 (rule!9064 (_1!22962 (get!13428 lt!1330780)))) (seqFromList!4509 (originalCharacters!6832 (_1!22962 (get!13428 lt!1330780)))))))))

(declare-fun d!1137903 () Bool)

(assert (=> d!1137903 e!2367412))

(declare-fun res!1551769 () Bool)

(assert (=> d!1137903 (=> res!1551769 e!2367412)))

(declare-fun isEmpty!23898 (Option!8652) Bool)

(assert (=> d!1137903 (= res!1551769 (isEmpty!23898 lt!1330780))))

(assert (=> d!1137903 (= lt!1330780 e!2367413)))

(declare-fun c!668502 () Bool)

(assert (=> d!1137903 (= c!668502 (and ((_ is Cons!40476) rules!2768) ((_ is Nil!40476) (t!309189 rules!2768))))))

(declare-datatypes ((Unit!58224 0))(
  ( (Unit!58225) )
))
(declare-fun lt!1330778 () Unit!58224)

(declare-fun lt!1330782 () Unit!58224)

(assert (=> d!1137903 (= lt!1330778 lt!1330782)))

(declare-fun isPrefix!3335 (List!40598 List!40598) Bool)

(assert (=> d!1137903 (isPrefix!3335 suffix!1176 suffix!1176)))

(declare-fun lemmaIsPrefixRefl!2120 (List!40598 List!40598) Unit!58224)

(assert (=> d!1137903 (= lt!1330782 (lemmaIsPrefixRefl!2120 suffix!1176 suffix!1176))))

(assert (=> d!1137903 (rulesValidInductive!2194 thiss!20629 rules!2768)))

(assert (=> d!1137903 (= (maxPrefix!3127 thiss!20629 rules!2768 suffix!1176) lt!1330780)))

(declare-fun b!3833449 () Bool)

(declare-fun res!1551770 () Bool)

(assert (=> b!3833449 (=> (not res!1551770) (not e!2367414))))

(assert (=> b!3833449 (= res!1551770 (= (list!15082 (charsOf!4064 (_1!22962 (get!13428 lt!1330780)))) (originalCharacters!6832 (_1!22962 (get!13428 lt!1330780)))))))

(declare-fun b!3833454 () Bool)

(declare-fun contains!8212 (List!40600 Rule!12264) Bool)

(assert (=> b!3833454 (= e!2367414 (contains!8212 rules!2768 (rule!9064 (_1!22962 (get!13428 lt!1330780)))))))

(declare-fun b!3833455 () Bool)

(declare-fun res!1551767 () Bool)

(assert (=> b!3833455 (=> (not res!1551767) (not e!2367414))))

(assert (=> b!3833455 (= res!1551767 (= (++!10221 (list!15082 (charsOf!4064 (_1!22962 (get!13428 lt!1330780)))) (_2!22962 (get!13428 lt!1330780))) suffix!1176))))

(assert (= (and d!1137903 c!668502) b!3833452))

(assert (= (and d!1137903 (not c!668502)) b!3833448))

(assert (= (or b!3833452 b!3833448) bm!281820))

(assert (= (and d!1137903 (not res!1551769)) b!3833450))

(assert (= (and b!3833450 res!1551772) b!3833449))

(assert (= (and b!3833449 res!1551770) b!3833451))

(assert (= (and b!3833451 res!1551771) b!3833455))

(assert (= (and b!3833455 res!1551767) b!3833453))

(assert (= (and b!3833453 res!1551768) b!3833447))

(assert (= (and b!3833447 res!1551773) b!3833454))

(declare-fun m!4387843 () Bool)

(assert (=> b!3833453 m!4387843))

(declare-fun m!4387845 () Bool)

(assert (=> b!3833453 m!4387845))

(assert (=> b!3833453 m!4387845))

(declare-fun m!4387847 () Bool)

(assert (=> b!3833453 m!4387847))

(assert (=> b!3833454 m!4387843))

(declare-fun m!4387849 () Bool)

(assert (=> b!3833454 m!4387849))

(declare-fun m!4387851 () Bool)

(assert (=> b!3833450 m!4387851))

(assert (=> b!3833455 m!4387843))

(declare-fun m!4387853 () Bool)

(assert (=> b!3833455 m!4387853))

(assert (=> b!3833455 m!4387853))

(declare-fun m!4387855 () Bool)

(assert (=> b!3833455 m!4387855))

(assert (=> b!3833455 m!4387855))

(declare-fun m!4387857 () Bool)

(assert (=> b!3833455 m!4387857))

(declare-fun m!4387859 () Bool)

(assert (=> d!1137903 m!4387859))

(declare-fun m!4387861 () Bool)

(assert (=> d!1137903 m!4387861))

(declare-fun m!4387863 () Bool)

(assert (=> d!1137903 m!4387863))

(assert (=> d!1137903 m!4387339))

(assert (=> b!3833451 m!4387843))

(declare-fun m!4387865 () Bool)

(assert (=> b!3833451 m!4387865))

(assert (=> b!3833451 m!4387401))

(declare-fun m!4387867 () Bool)

(assert (=> bm!281820 m!4387867))

(declare-fun m!4387869 () Bool)

(assert (=> b!3833448 m!4387869))

(assert (=> b!3833447 m!4387843))

(assert (=> b!3833447 m!4387853))

(assert (=> b!3833447 m!4387853))

(assert (=> b!3833447 m!4387855))

(assert (=> b!3833447 m!4387855))

(declare-fun m!4387871 () Bool)

(assert (=> b!3833447 m!4387871))

(assert (=> b!3833449 m!4387843))

(assert (=> b!3833449 m!4387853))

(assert (=> b!3833449 m!4387853))

(assert (=> b!3833449 m!4387855))

(assert (=> d!1137719 d!1137903))

(declare-fun d!1137905 () Bool)

(declare-fun lt!1330783 () Int)

(assert (=> d!1137905 (>= lt!1330783 0)))

(declare-fun e!2367415 () Int)

(assert (=> d!1137905 (= lt!1330783 e!2367415)))

(declare-fun c!668503 () Bool)

(assert (=> d!1137905 (= c!668503 ((_ is Nil!40474) (originalCharacters!6832 (h!45897 prefixTokens!80))))))

(assert (=> d!1137905 (= (size!30499 (originalCharacters!6832 (h!45897 prefixTokens!80))) lt!1330783)))

(declare-fun b!3833456 () Bool)

(assert (=> b!3833456 (= e!2367415 0)))

(declare-fun b!3833457 () Bool)

(assert (=> b!3833457 (= e!2367415 (+ 1 (size!30499 (t!309187 (originalCharacters!6832 (h!45897 prefixTokens!80))))))))

(assert (= (and d!1137905 c!668503) b!3833456))

(assert (= (and d!1137905 (not c!668503)) b!3833457))

(declare-fun m!4387873 () Bool)

(assert (=> b!3833457 m!4387873))

(assert (=> b!3833189 d!1137905))

(declare-fun d!1137907 () Bool)

(assert (=> d!1137907 (= (isEmpty!23894 (originalCharacters!6832 (h!45897 suffixTokens!72))) ((_ is Nil!40474) (originalCharacters!6832 (h!45897 suffixTokens!72))))))

(assert (=> d!1137773 d!1137907))

(declare-fun d!1137909 () Bool)

(declare-fun c!668506 () Bool)

(assert (=> d!1137909 (= c!668506 ((_ is Nil!40477) lt!1330715))))

(declare-fun e!2367418 () (InoxSet Token!11602))

(assert (=> d!1137909 (= (content!6008 lt!1330715) e!2367418)))

(declare-fun b!3833462 () Bool)

(assert (=> b!3833462 (= e!2367418 ((as const (Array Token!11602 Bool)) false))))

(declare-fun b!3833463 () Bool)

(assert (=> b!3833463 (= e!2367418 ((_ map or) (store ((as const (Array Token!11602 Bool)) false) (h!45897 lt!1330715) true) (content!6008 (t!309190 lt!1330715))))))

(assert (= (and d!1137909 c!668506) b!3833462))

(assert (= (and d!1137909 (not c!668506)) b!3833463))

(declare-fun m!4387875 () Bool)

(assert (=> b!3833463 m!4387875))

(declare-fun m!4387877 () Bool)

(assert (=> b!3833463 m!4387877))

(assert (=> d!1137731 d!1137909))

(declare-fun d!1137911 () Bool)

(declare-fun c!668507 () Bool)

(assert (=> d!1137911 (= c!668507 ((_ is Nil!40477) prefixTokens!80))))

(declare-fun e!2367419 () (InoxSet Token!11602))

(assert (=> d!1137911 (= (content!6008 prefixTokens!80) e!2367419)))

(declare-fun b!3833464 () Bool)

(assert (=> b!3833464 (= e!2367419 ((as const (Array Token!11602 Bool)) false))))

(declare-fun b!3833465 () Bool)

(assert (=> b!3833465 (= e!2367419 ((_ map or) (store ((as const (Array Token!11602 Bool)) false) (h!45897 prefixTokens!80) true) (content!6008 (t!309190 prefixTokens!80))))))

(assert (= (and d!1137911 c!668507) b!3833464))

(assert (= (and d!1137911 (not c!668507)) b!3833465))

(declare-fun m!4387879 () Bool)

(assert (=> b!3833465 m!4387879))

(assert (=> b!3833465 m!4387709))

(assert (=> d!1137731 d!1137911))

(declare-fun d!1137913 () Bool)

(declare-fun c!668508 () Bool)

(assert (=> d!1137913 (= c!668508 ((_ is Nil!40477) suffixTokens!72))))

(declare-fun e!2367420 () (InoxSet Token!11602))

(assert (=> d!1137913 (= (content!6008 suffixTokens!72) e!2367420)))

(declare-fun b!3833466 () Bool)

(assert (=> b!3833466 (= e!2367420 ((as const (Array Token!11602 Bool)) false))))

(declare-fun b!3833467 () Bool)

(assert (=> b!3833467 (= e!2367420 ((_ map or) (store ((as const (Array Token!11602 Bool)) false) (h!45897 suffixTokens!72) true) (content!6008 (t!309190 suffixTokens!72))))))

(assert (= (and d!1137913 c!668508) b!3833466))

(assert (= (and d!1137913 (not c!668508)) b!3833467))

(declare-fun m!4387881 () Bool)

(assert (=> b!3833467 m!4387881))

(declare-fun m!4387883 () Bool)

(assert (=> b!3833467 m!4387883))

(assert (=> d!1137731 d!1137913))

(declare-fun bs!582348 () Bool)

(declare-fun d!1137915 () Bool)

(assert (= bs!582348 (and d!1137915 d!1137799)))

(declare-fun lambda!125993 () Int)

(assert (=> bs!582348 (= (and (= (toChars!8495 (transformation!6232 (h!45896 rules!2768))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))) (= (toValue!8636 (transformation!6232 (h!45896 rules!2768))) (toValue!8636 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))))) (= lambda!125993 lambda!125982))))

(declare-fun bs!582349 () Bool)

(assert (= bs!582349 (and d!1137915 d!1137809)))

(assert (=> bs!582349 (= (and (= (toChars!8495 (transformation!6232 (h!45896 rules!2768))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))) (= (toValue!8636 (transformation!6232 (h!45896 rules!2768))) (toValue!8636 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))))) (= lambda!125993 lambda!125983))))

(assert (=> d!1137915 true))

(assert (=> d!1137915 (< (dynLambda!17522 order!22095 (toChars!8495 (transformation!6232 (h!45896 rules!2768)))) (dynLambda!17523 order!22097 lambda!125993))))

(assert (=> d!1137915 true))

(assert (=> d!1137915 (< (dynLambda!17524 order!22099 (toValue!8636 (transformation!6232 (h!45896 rules!2768)))) (dynLambda!17523 order!22097 lambda!125993))))

(assert (=> d!1137915 (= (semiInverseModEq!2672 (toChars!8495 (transformation!6232 (h!45896 rules!2768))) (toValue!8636 (transformation!6232 (h!45896 rules!2768)))) (Forall!1425 lambda!125993))))

(declare-fun bs!582350 () Bool)

(assert (= bs!582350 d!1137915))

(declare-fun m!4387885 () Bool)

(assert (=> bs!582350 m!4387885))

(assert (=> d!1137789 d!1137915))

(declare-fun d!1137917 () Bool)

(assert (=> d!1137917 (= (inv!17 (value!198246 (h!45897 suffixTokens!72))) (= (charsToBigInt!1 (text!45682 (value!198246 (h!45897 suffixTokens!72)))) (value!198238 (value!198246 (h!45897 suffixTokens!72)))))))

(declare-fun bs!582351 () Bool)

(assert (= bs!582351 d!1137917))

(declare-fun m!4387887 () Bool)

(assert (=> bs!582351 m!4387887))

(assert (=> b!3833210 d!1137917))

(declare-fun d!1137919 () Bool)

(declare-fun lt!1330794 () Int)

(assert (=> d!1137919 (>= lt!1330794 0)))

(declare-fun e!2367423 () Int)

(assert (=> d!1137919 (= lt!1330794 e!2367423)))

(declare-fun c!668511 () Bool)

(assert (=> d!1137919 (= c!668511 ((_ is Nil!40477) lt!1330715))))

(assert (=> d!1137919 (= (size!30500 lt!1330715) lt!1330794)))

(declare-fun b!3833472 () Bool)

(assert (=> b!3833472 (= e!2367423 0)))

(declare-fun b!3833473 () Bool)

(assert (=> b!3833473 (= e!2367423 (+ 1 (size!30500 (t!309190 lt!1330715))))))

(assert (= (and d!1137919 c!668511) b!3833472))

(assert (= (and d!1137919 (not c!668511)) b!3833473))

(declare-fun m!4387889 () Bool)

(assert (=> b!3833473 m!4387889))

(assert (=> b!3833050 d!1137919))

(declare-fun d!1137921 () Bool)

(declare-fun lt!1330795 () Int)

(assert (=> d!1137921 (>= lt!1330795 0)))

(declare-fun e!2367424 () Int)

(assert (=> d!1137921 (= lt!1330795 e!2367424)))

(declare-fun c!668512 () Bool)

(assert (=> d!1137921 (= c!668512 ((_ is Nil!40477) prefixTokens!80))))

(assert (=> d!1137921 (= (size!30500 prefixTokens!80) lt!1330795)))

(declare-fun b!3833474 () Bool)

(assert (=> b!3833474 (= e!2367424 0)))

(declare-fun b!3833475 () Bool)

(assert (=> b!3833475 (= e!2367424 (+ 1 (size!30500 (t!309190 prefixTokens!80))))))

(assert (= (and d!1137921 c!668512) b!3833474))

(assert (= (and d!1137921 (not c!668512)) b!3833475))

(assert (=> b!3833475 m!4387705))

(assert (=> b!3833050 d!1137921))

(declare-fun d!1137923 () Bool)

(declare-fun lt!1330796 () Int)

(assert (=> d!1137923 (>= lt!1330796 0)))

(declare-fun e!2367425 () Int)

(assert (=> d!1137923 (= lt!1330796 e!2367425)))

(declare-fun c!668513 () Bool)

(assert (=> d!1137923 (= c!668513 ((_ is Nil!40477) suffixTokens!72))))

(assert (=> d!1137923 (= (size!30500 suffixTokens!72) lt!1330796)))

(declare-fun b!3833476 () Bool)

(assert (=> b!3833476 (= e!2367425 0)))

(declare-fun b!3833477 () Bool)

(assert (=> b!3833477 (= e!2367425 (+ 1 (size!30500 (t!309190 suffixTokens!72))))))

(assert (= (and d!1137923 c!668513) b!3833476))

(assert (= (and d!1137923 (not c!668513)) b!3833477))

(declare-fun m!4387891 () Bool)

(assert (=> b!3833477 m!4387891))

(assert (=> b!3833050 d!1137923))

(declare-fun d!1137925 () Bool)

(declare-fun lt!1330797 () Int)

(assert (=> d!1137925 (>= lt!1330797 0)))

(declare-fun e!2367426 () Int)

(assert (=> d!1137925 (= lt!1330797 e!2367426)))

(declare-fun c!668514 () Bool)

(assert (=> d!1137925 (= c!668514 ((_ is Nil!40477) (_1!22960 lt!1330704)))))

(assert (=> d!1137925 (= (size!30500 (_1!22960 lt!1330704)) lt!1330797)))

(declare-fun b!3833478 () Bool)

(assert (=> b!3833478 (= e!2367426 0)))

(declare-fun b!3833479 () Bool)

(assert (=> b!3833479 (= e!2367426 (+ 1 (size!30500 (t!309190 (_1!22960 lt!1330704)))))))

(assert (= (and d!1137925 c!668514) b!3833478))

(assert (= (and d!1137925 (not c!668514)) b!3833479))

(declare-fun m!4387893 () Bool)

(assert (=> b!3833479 m!4387893))

(assert (=> d!1137727 d!1137925))

(declare-fun b!3833480 () Bool)

(declare-fun res!1551780 () Bool)

(declare-fun e!2367429 () Bool)

(assert (=> b!3833480 (=> (not res!1551780) (not e!2367429))))

(declare-fun lt!1330800 () Option!8652)

(assert (=> b!3833480 (= res!1551780 (matchR!5324 (regex!6232 (rule!9064 (_1!22962 (get!13428 lt!1330800)))) (list!15082 (charsOf!4064 (_1!22962 (get!13428 lt!1330800))))))))

(declare-fun b!3833481 () Bool)

(declare-fun e!2367428 () Option!8652)

(declare-fun lt!1330801 () Option!8652)

(declare-fun lt!1330799 () Option!8652)

(assert (=> b!3833481 (= e!2367428 (ite (and ((_ is None!8651) lt!1330801) ((_ is None!8651) lt!1330799)) None!8651 (ite ((_ is None!8651) lt!1330799) lt!1330801 (ite ((_ is None!8651) lt!1330801) lt!1330799 (ite (>= (size!30496 (_1!22962 (v!38939 lt!1330801))) (size!30496 (_1!22962 (v!38939 lt!1330799)))) lt!1330801 lt!1330799)))))))

(declare-fun call!281828 () Option!8652)

(assert (=> b!3833481 (= lt!1330801 call!281828)))

(assert (=> b!3833481 (= lt!1330799 (maxPrefix!3127 thiss!20629 (t!309189 rules!2768) (++!10221 prefix!426 suffix!1176)))))

(declare-fun b!3833483 () Bool)

(declare-fun e!2367427 () Bool)

(assert (=> b!3833483 (= e!2367427 e!2367429)))

(declare-fun res!1551779 () Bool)

(assert (=> b!3833483 (=> (not res!1551779) (not e!2367429))))

(assert (=> b!3833483 (= res!1551779 (isDefined!6813 lt!1330800))))

(declare-fun b!3833484 () Bool)

(declare-fun res!1551778 () Bool)

(assert (=> b!3833484 (=> (not res!1551778) (not e!2367429))))

(assert (=> b!3833484 (= res!1551778 (< (size!30499 (_2!22962 (get!13428 lt!1330800))) (size!30499 (++!10221 prefix!426 suffix!1176))))))

(declare-fun b!3833485 () Bool)

(assert (=> b!3833485 (= e!2367428 call!281828)))

(declare-fun bm!281823 () Bool)

(assert (=> bm!281823 (= call!281828 (maxPrefixOneRule!2225 thiss!20629 (h!45896 rules!2768) (++!10221 prefix!426 suffix!1176)))))

(declare-fun b!3833486 () Bool)

(declare-fun res!1551775 () Bool)

(assert (=> b!3833486 (=> (not res!1551775) (not e!2367429))))

(assert (=> b!3833486 (= res!1551775 (= (value!198246 (_1!22962 (get!13428 lt!1330800))) (apply!9481 (transformation!6232 (rule!9064 (_1!22962 (get!13428 lt!1330800)))) (seqFromList!4509 (originalCharacters!6832 (_1!22962 (get!13428 lt!1330800)))))))))

(declare-fun d!1137927 () Bool)

(assert (=> d!1137927 e!2367427))

(declare-fun res!1551776 () Bool)

(assert (=> d!1137927 (=> res!1551776 e!2367427)))

(assert (=> d!1137927 (= res!1551776 (isEmpty!23898 lt!1330800))))

(assert (=> d!1137927 (= lt!1330800 e!2367428)))

(declare-fun c!668515 () Bool)

(assert (=> d!1137927 (= c!668515 (and ((_ is Cons!40476) rules!2768) ((_ is Nil!40476) (t!309189 rules!2768))))))

(declare-fun lt!1330798 () Unit!58224)

(declare-fun lt!1330802 () Unit!58224)

(assert (=> d!1137927 (= lt!1330798 lt!1330802)))

(assert (=> d!1137927 (isPrefix!3335 (++!10221 prefix!426 suffix!1176) (++!10221 prefix!426 suffix!1176))))

(assert (=> d!1137927 (= lt!1330802 (lemmaIsPrefixRefl!2120 (++!10221 prefix!426 suffix!1176) (++!10221 prefix!426 suffix!1176)))))

(assert (=> d!1137927 (rulesValidInductive!2194 thiss!20629 rules!2768)))

(assert (=> d!1137927 (= (maxPrefix!3127 thiss!20629 rules!2768 (++!10221 prefix!426 suffix!1176)) lt!1330800)))

(declare-fun b!3833482 () Bool)

(declare-fun res!1551777 () Bool)

(assert (=> b!3833482 (=> (not res!1551777) (not e!2367429))))

(assert (=> b!3833482 (= res!1551777 (= (list!15082 (charsOf!4064 (_1!22962 (get!13428 lt!1330800)))) (originalCharacters!6832 (_1!22962 (get!13428 lt!1330800)))))))

(declare-fun b!3833487 () Bool)

(assert (=> b!3833487 (= e!2367429 (contains!8212 rules!2768 (rule!9064 (_1!22962 (get!13428 lt!1330800)))))))

(declare-fun b!3833488 () Bool)

(declare-fun res!1551774 () Bool)

(assert (=> b!3833488 (=> (not res!1551774) (not e!2367429))))

(assert (=> b!3833488 (= res!1551774 (= (++!10221 (list!15082 (charsOf!4064 (_1!22962 (get!13428 lt!1330800)))) (_2!22962 (get!13428 lt!1330800))) (++!10221 prefix!426 suffix!1176)))))

(assert (= (and d!1137927 c!668515) b!3833485))

(assert (= (and d!1137927 (not c!668515)) b!3833481))

(assert (= (or b!3833485 b!3833481) bm!281823))

(assert (= (and d!1137927 (not res!1551776)) b!3833483))

(assert (= (and b!3833483 res!1551779) b!3833482))

(assert (= (and b!3833482 res!1551777) b!3833484))

(assert (= (and b!3833484 res!1551778) b!3833488))

(assert (= (and b!3833488 res!1551774) b!3833486))

(assert (= (and b!3833486 res!1551775) b!3833480))

(assert (= (and b!3833480 res!1551780) b!3833487))

(declare-fun m!4387895 () Bool)

(assert (=> b!3833486 m!4387895))

(declare-fun m!4387897 () Bool)

(assert (=> b!3833486 m!4387897))

(assert (=> b!3833486 m!4387897))

(declare-fun m!4387899 () Bool)

(assert (=> b!3833486 m!4387899))

(assert (=> b!3833487 m!4387895))

(declare-fun m!4387901 () Bool)

(assert (=> b!3833487 m!4387901))

(declare-fun m!4387903 () Bool)

(assert (=> b!3833483 m!4387903))

(assert (=> b!3833488 m!4387895))

(declare-fun m!4387905 () Bool)

(assert (=> b!3833488 m!4387905))

(assert (=> b!3833488 m!4387905))

(declare-fun m!4387907 () Bool)

(assert (=> b!3833488 m!4387907))

(assert (=> b!3833488 m!4387907))

(declare-fun m!4387909 () Bool)

(assert (=> b!3833488 m!4387909))

(declare-fun m!4387911 () Bool)

(assert (=> d!1137927 m!4387911))

(assert (=> d!1137927 m!4387345))

(assert (=> d!1137927 m!4387345))

(declare-fun m!4387913 () Bool)

(assert (=> d!1137927 m!4387913))

(assert (=> d!1137927 m!4387345))

(assert (=> d!1137927 m!4387345))

(declare-fun m!4387915 () Bool)

(assert (=> d!1137927 m!4387915))

(assert (=> d!1137927 m!4387339))

(assert (=> b!3833484 m!4387895))

(declare-fun m!4387917 () Bool)

(assert (=> b!3833484 m!4387917))

(assert (=> b!3833484 m!4387345))

(assert (=> b!3833484 m!4387413))

(assert (=> bm!281823 m!4387345))

(declare-fun m!4387919 () Bool)

(assert (=> bm!281823 m!4387919))

(assert (=> b!3833481 m!4387345))

(declare-fun m!4387921 () Bool)

(assert (=> b!3833481 m!4387921))

(assert (=> b!3833480 m!4387895))

(assert (=> b!3833480 m!4387905))

(assert (=> b!3833480 m!4387905))

(assert (=> b!3833480 m!4387907))

(assert (=> b!3833480 m!4387907))

(declare-fun m!4387923 () Bool)

(assert (=> b!3833480 m!4387923))

(assert (=> b!3833482 m!4387895))

(assert (=> b!3833482 m!4387905))

(assert (=> b!3833482 m!4387905))

(assert (=> b!3833482 m!4387907))

(assert (=> d!1137727 d!1137927))

(declare-fun d!1137929 () Bool)

(assert (=> d!1137929 (= (inv!54614 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80)))) (isBalanced!3615 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80))))))))

(declare-fun bs!582352 () Bool)

(assert (= bs!582352 d!1137929))

(declare-fun m!4387925 () Bool)

(assert (=> bs!582352 m!4387925))

(assert (=> tb!219925 d!1137929))

(declare-fun d!1137931 () Bool)

(declare-fun lt!1330803 () Int)

(assert (=> d!1137931 (>= lt!1330803 0)))

(declare-fun e!2367434 () Int)

(assert (=> d!1137931 (= lt!1330803 e!2367434)))

(declare-fun c!668516 () Bool)

(assert (=> d!1137931 (= c!668516 ((_ is Nil!40474) lt!1330708))))

(assert (=> d!1137931 (= (size!30499 lt!1330708) lt!1330803)))

(declare-fun b!3833503 () Bool)

(assert (=> b!3833503 (= e!2367434 0)))

(declare-fun b!3833504 () Bool)

(assert (=> b!3833504 (= e!2367434 (+ 1 (size!30499 (t!309187 lt!1330708))))))

(assert (= (and d!1137931 c!668516) b!3833503))

(assert (= (and d!1137931 (not c!668516)) b!3833504))

(declare-fun m!4387927 () Bool)

(assert (=> b!3833504 m!4387927))

(assert (=> b!3833034 d!1137931))

(declare-fun d!1137933 () Bool)

(declare-fun lt!1330804 () Int)

(assert (=> d!1137933 (>= lt!1330804 0)))

(declare-fun e!2367435 () Int)

(assert (=> d!1137933 (= lt!1330804 e!2367435)))

(declare-fun c!668517 () Bool)

(assert (=> d!1137933 (= c!668517 ((_ is Nil!40474) prefix!426))))

(assert (=> d!1137933 (= (size!30499 prefix!426) lt!1330804)))

(declare-fun b!3833505 () Bool)

(assert (=> b!3833505 (= e!2367435 0)))

(declare-fun b!3833506 () Bool)

(assert (=> b!3833506 (= e!2367435 (+ 1 (size!30499 (t!309187 prefix!426))))))

(assert (= (and d!1137933 c!668517) b!3833505))

(assert (= (and d!1137933 (not c!668517)) b!3833506))

(assert (=> b!3833506 m!4387761))

(assert (=> b!3833034 d!1137933))

(assert (=> b!3833034 d!1137795))

(declare-fun d!1137935 () Bool)

(assert (=> d!1137935 (= (list!15082 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72)))) (list!15083 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72))))))))

(declare-fun bs!582353 () Bool)

(assert (= bs!582353 d!1137935))

(declare-fun m!4387929 () Bool)

(assert (=> bs!582353 m!4387929))

(assert (=> b!3833196 d!1137935))

(declare-fun b!3833507 () Bool)

(declare-fun e!2367437 () Bool)

(assert (=> b!3833507 (= e!2367437 (inv!16 (value!198246 (h!45897 (t!309190 suffixTokens!72)))))))

(declare-fun b!3833508 () Bool)

(declare-fun e!2367438 () Bool)

(assert (=> b!3833508 (= e!2367438 (inv!17 (value!198246 (h!45897 (t!309190 suffixTokens!72)))))))

(declare-fun d!1137937 () Bool)

(declare-fun c!668518 () Bool)

(assert (=> d!1137937 (= c!668518 ((_ is IntegerValue!19386) (value!198246 (h!45897 (t!309190 suffixTokens!72)))))))

(assert (=> d!1137937 (= (inv!21 (value!198246 (h!45897 (t!309190 suffixTokens!72)))) e!2367437)))

(declare-fun b!3833509 () Bool)

(assert (=> b!3833509 (= e!2367437 e!2367438)))

(declare-fun c!668519 () Bool)

(assert (=> b!3833509 (= c!668519 ((_ is IntegerValue!19387) (value!198246 (h!45897 (t!309190 suffixTokens!72)))))))

(declare-fun b!3833510 () Bool)

(declare-fun res!1551795 () Bool)

(declare-fun e!2367436 () Bool)

(assert (=> b!3833510 (=> res!1551795 e!2367436)))

(assert (=> b!3833510 (= res!1551795 (not ((_ is IntegerValue!19388) (value!198246 (h!45897 (t!309190 suffixTokens!72))))))))

(assert (=> b!3833510 (= e!2367438 e!2367436)))

(declare-fun b!3833511 () Bool)

(assert (=> b!3833511 (= e!2367436 (inv!15 (value!198246 (h!45897 (t!309190 suffixTokens!72)))))))

(assert (= (and d!1137937 c!668518) b!3833507))

(assert (= (and d!1137937 (not c!668518)) b!3833509))

(assert (= (and b!3833509 c!668519) b!3833508))

(assert (= (and b!3833509 (not c!668519)) b!3833510))

(assert (= (and b!3833510 (not res!1551795)) b!3833511))

(declare-fun m!4387931 () Bool)

(assert (=> b!3833507 m!4387931))

(declare-fun m!4387933 () Bool)

(assert (=> b!3833508 m!4387933))

(declare-fun m!4387935 () Bool)

(assert (=> b!3833511 m!4387935))

(assert (=> b!3833261 d!1137937))

(declare-fun b!3833512 () Bool)

(declare-fun e!2367439 () Bool)

(declare-fun tp!1159935 () Bool)

(assert (=> b!3833512 (= e!2367439 (and tp_is_empty!19245 tp!1159935))))

(assert (=> b!3833278 (= tp!1159927 e!2367439)))

(assert (= (and b!3833278 ((_ is Cons!40474) (t!309187 (originalCharacters!6832 (h!45897 prefixTokens!80))))) b!3833512))

(declare-fun b!3833513 () Bool)

(declare-fun e!2367440 () Bool)

(declare-fun tp!1159936 () Bool)

(assert (=> b!3833513 (= e!2367440 (and tp_is_empty!19245 tp!1159936))))

(assert (=> b!3833259 (= tp!1159906 e!2367440)))

(assert (= (and b!3833259 ((_ is Cons!40474) (t!309187 (t!309187 suffix!1176)))) b!3833513))

(declare-fun e!2367445 () Bool)

(declare-fun tp!1159944 () Bool)

(declare-fun b!3833522 () Bool)

(declare-fun tp!1159943 () Bool)

(assert (=> b!3833522 (= e!2367445 (and (inv!54613 (left!31313 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72)))))) tp!1159943 (inv!54613 (right!31643 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72)))))) tp!1159944))))

(declare-fun b!3833524 () Bool)

(declare-fun e!2367446 () Bool)

(declare-fun tp!1159945 () Bool)

(assert (=> b!3833524 (= e!2367446 tp!1159945)))

(declare-fun b!3833523 () Bool)

(declare-fun inv!54619 (IArray!24891) Bool)

(assert (=> b!3833523 (= e!2367445 (and (inv!54619 (xs!15749 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72)))))) e!2367446))))

(assert (=> b!3833198 (= tp!1159868 (and (inv!54613 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72))))) e!2367445))))

(assert (= (and b!3833198 ((_ is Node!12443) (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72)))))) b!3833522))

(assert (= b!3833523 b!3833524))

(assert (= (and b!3833198 ((_ is Leaf!19266) (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (value!198246 (h!45897 suffixTokens!72)))))) b!3833523))

(declare-fun m!4387937 () Bool)

(assert (=> b!3833522 m!4387937))

(declare-fun m!4387939 () Bool)

(assert (=> b!3833522 m!4387939))

(declare-fun m!4387941 () Bool)

(assert (=> b!3833523 m!4387941))

(assert (=> b!3833198 m!4387581))

(declare-fun b!3833528 () Bool)

(declare-fun e!2367447 () Bool)

(declare-fun tp!1159949 () Bool)

(declare-fun tp!1159950 () Bool)

(assert (=> b!3833528 (= e!2367447 (and tp!1159949 tp!1159950))))

(declare-fun b!3833525 () Bool)

(assert (=> b!3833525 (= e!2367447 tp_is_empty!19245)))

(declare-fun b!3833527 () Bool)

(declare-fun tp!1159947 () Bool)

(assert (=> b!3833527 (= e!2367447 tp!1159947)))

(assert (=> b!3833253 (= tp!1159900 e!2367447)))

(declare-fun b!3833526 () Bool)

(declare-fun tp!1159948 () Bool)

(declare-fun tp!1159946 () Bool)

(assert (=> b!3833526 (= e!2367447 (and tp!1159948 tp!1159946))))

(assert (= (and b!3833253 ((_ is ElementMatch!11137) (reg!11466 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833525))

(assert (= (and b!3833253 ((_ is Concat!17600) (reg!11466 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833526))

(assert (= (and b!3833253 ((_ is Star!11137) (reg!11466 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833527))

(assert (= (and b!3833253 ((_ is Union!11137) (reg!11466 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833528))

(declare-fun b!3833529 () Bool)

(declare-fun e!2367448 () Bool)

(declare-fun tp!1159951 () Bool)

(assert (=> b!3833529 (= e!2367448 (and tp_is_empty!19245 tp!1159951))))

(assert (=> b!3833248 (= tp!1159895 e!2367448)))

(assert (= (and b!3833248 ((_ is Cons!40474) (originalCharacters!6832 (h!45897 (t!309190 prefixTokens!80))))) b!3833529))

(declare-fun b!3833533 () Bool)

(declare-fun e!2367449 () Bool)

(declare-fun tp!1159955 () Bool)

(declare-fun tp!1159956 () Bool)

(assert (=> b!3833533 (= e!2367449 (and tp!1159955 tp!1159956))))

(declare-fun b!3833530 () Bool)

(assert (=> b!3833530 (= e!2367449 tp_is_empty!19245)))

(declare-fun b!3833532 () Bool)

(declare-fun tp!1159953 () Bool)

(assert (=> b!3833532 (= e!2367449 tp!1159953)))

(assert (=> b!3833252 (= tp!1159901 e!2367449)))

(declare-fun b!3833531 () Bool)

(declare-fun tp!1159954 () Bool)

(declare-fun tp!1159952 () Bool)

(assert (=> b!3833531 (= e!2367449 (and tp!1159954 tp!1159952))))

(assert (= (and b!3833252 ((_ is ElementMatch!11137) (regOne!22786 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833530))

(assert (= (and b!3833252 ((_ is Concat!17600) (regOne!22786 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833531))

(assert (= (and b!3833252 ((_ is Star!11137) (regOne!22786 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833532))

(assert (= (and b!3833252 ((_ is Union!11137) (regOne!22786 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833533))

(declare-fun b!3833537 () Bool)

(declare-fun e!2367452 () Bool)

(declare-fun tp!1159960 () Bool)

(declare-fun tp!1159961 () Bool)

(assert (=> b!3833537 (= e!2367452 (and tp!1159960 tp!1159961))))

(declare-fun b!3833534 () Bool)

(assert (=> b!3833534 (= e!2367452 tp_is_empty!19245)))

(declare-fun b!3833536 () Bool)

(declare-fun tp!1159958 () Bool)

(assert (=> b!3833536 (= e!2367452 tp!1159958)))

(assert (=> b!3833252 (= tp!1159899 e!2367452)))

(declare-fun b!3833535 () Bool)

(declare-fun tp!1159959 () Bool)

(declare-fun tp!1159957 () Bool)

(assert (=> b!3833535 (= e!2367452 (and tp!1159959 tp!1159957))))

(assert (= (and b!3833252 ((_ is ElementMatch!11137) (regTwo!22786 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833534))

(assert (= (and b!3833252 ((_ is Concat!17600) (regTwo!22786 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833535))

(assert (= (and b!3833252 ((_ is Star!11137) (regTwo!22786 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833536))

(assert (= (and b!3833252 ((_ is Union!11137) (regTwo!22786 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833537))

(declare-fun b!3833550 () Bool)

(declare-fun b_free!101769 () Bool)

(declare-fun b_next!102473 () Bool)

(assert (=> b!3833550 (= b_free!101769 (not b_next!102473))))

(declare-fun tp!1159965 () Bool)

(declare-fun b_and!284935 () Bool)

(assert (=> b!3833550 (= tp!1159965 b_and!284935)))

(declare-fun b_free!101771 () Bool)

(declare-fun b_next!102475 () Bool)

(assert (=> b!3833550 (= b_free!101771 (not b_next!102475))))

(declare-fun t!309266 () Bool)

(declare-fun tb!219973 () Bool)

(assert (=> (and b!3833550 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 (t!309190 prefixTokens!80)))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))) t!309266) tb!219973))

(declare-fun result!268160 () Bool)

(assert (= result!268160 result!268100))

(assert (=> b!3833188 t!309266))

(declare-fun tb!219975 () Bool)

(declare-fun t!309268 () Bool)

(assert (=> (and b!3833550 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 (t!309190 prefixTokens!80)))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))) t!309268) tb!219975))

(declare-fun result!268162 () Bool)

(assert (= result!268162 result!268108))

(assert (=> b!3833196 t!309268))

(declare-fun t!309270 () Bool)

(declare-fun tb!219977 () Bool)

(assert (=> (and b!3833550 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 (t!309190 prefixTokens!80)))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80)))))) t!309270) tb!219977))

(declare-fun result!268164 () Bool)

(assert (= result!268164 result!268134))

(assert (=> b!3833316 t!309270))

(declare-fun tb!219979 () Bool)

(declare-fun t!309272 () Bool)

(assert (=> (and b!3833550 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 (t!309190 prefixTokens!80)))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72)))))) t!309272) tb!219979))

(declare-fun result!268166 () Bool)

(assert (= result!268166 result!268146))

(assert (=> b!3833345 t!309272))

(declare-fun b_and!284937 () Bool)

(declare-fun tp!1159966 () Bool)

(assert (=> b!3833550 (= tp!1159966 (and (=> t!309266 result!268160) (=> t!309268 result!268162) (=> t!309270 result!268164) (=> t!309272 result!268166) b_and!284937))))

(declare-fun tp!1159964 () Bool)

(declare-fun e!2367454 () Bool)

(declare-fun e!2367455 () Bool)

(declare-fun b!3833549 () Bool)

(assert (=> b!3833549 (= e!2367455 (and tp!1159964 (inv!54606 (tag!7092 (rule!9064 (h!45897 (t!309190 (t!309190 prefixTokens!80)))))) (inv!54609 (transformation!6232 (rule!9064 (h!45897 (t!309190 (t!309190 prefixTokens!80)))))) e!2367454))))

(declare-fun e!2367458 () Bool)

(assert (=> b!3833247 (= tp!1159894 e!2367458)))

(declare-fun tp!1159963 () Bool)

(declare-fun e!2367457 () Bool)

(declare-fun b!3833548 () Bool)

(assert (=> b!3833548 (= e!2367457 (and (inv!21 (value!198246 (h!45897 (t!309190 (t!309190 prefixTokens!80))))) e!2367455 tp!1159963))))

(declare-fun b!3833547 () Bool)

(declare-fun tp!1159962 () Bool)

(assert (=> b!3833547 (= e!2367458 (and (inv!54610 (h!45897 (t!309190 (t!309190 prefixTokens!80)))) e!2367457 tp!1159962))))

(assert (=> b!3833550 (= e!2367454 (and tp!1159965 tp!1159966))))

(assert (= b!3833549 b!3833550))

(assert (= b!3833548 b!3833549))

(assert (= b!3833547 b!3833548))

(assert (= (and b!3833247 ((_ is Cons!40477) (t!309190 (t!309190 prefixTokens!80)))) b!3833547))

(declare-fun m!4387943 () Bool)

(assert (=> b!3833549 m!4387943))

(declare-fun m!4387945 () Bool)

(assert (=> b!3833549 m!4387945))

(declare-fun m!4387947 () Bool)

(assert (=> b!3833548 m!4387947))

(declare-fun m!4387949 () Bool)

(assert (=> b!3833547 m!4387949))

(declare-fun b!3833551 () Bool)

(declare-fun e!2367460 () Bool)

(declare-fun tp!1159967 () Bool)

(assert (=> b!3833551 (= e!2367460 (and tp_is_empty!19245 tp!1159967))))

(assert (=> b!3833264 (= tp!1159912 e!2367460)))

(assert (= (and b!3833264 ((_ is Cons!40474) (t!309187 (t!309187 prefix!426)))) b!3833551))

(declare-fun b!3833555 () Bool)

(declare-fun e!2367461 () Bool)

(declare-fun tp!1159971 () Bool)

(declare-fun tp!1159972 () Bool)

(assert (=> b!3833555 (= e!2367461 (and tp!1159971 tp!1159972))))

(declare-fun b!3833552 () Bool)

(assert (=> b!3833552 (= e!2367461 tp_is_empty!19245)))

(declare-fun b!3833554 () Bool)

(declare-fun tp!1159969 () Bool)

(assert (=> b!3833554 (= e!2367461 tp!1159969)))

(assert (=> b!3833281 (= tp!1159929 e!2367461)))

(declare-fun b!3833553 () Bool)

(declare-fun tp!1159970 () Bool)

(declare-fun tp!1159968 () Bool)

(assert (=> b!3833553 (= e!2367461 (and tp!1159970 tp!1159968))))

(assert (= (and b!3833281 ((_ is ElementMatch!11137) (reg!11466 (regex!6232 (h!45896 rules!2768))))) b!3833552))

(assert (= (and b!3833281 ((_ is Concat!17600) (reg!11466 (regex!6232 (h!45896 rules!2768))))) b!3833553))

(assert (= (and b!3833281 ((_ is Star!11137) (reg!11466 (regex!6232 (h!45896 rules!2768))))) b!3833554))

(assert (= (and b!3833281 ((_ is Union!11137) (reg!11466 (regex!6232 (h!45896 rules!2768))))) b!3833555))

(declare-fun tp!1159973 () Bool)

(declare-fun tp!1159974 () Bool)

(declare-fun e!2367462 () Bool)

(declare-fun b!3833556 () Bool)

(assert (=> b!3833556 (= e!2367462 (and (inv!54613 (left!31313 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80)))))) tp!1159973 (inv!54613 (right!31643 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80)))))) tp!1159974))))

(declare-fun b!3833558 () Bool)

(declare-fun e!2367463 () Bool)

(declare-fun tp!1159975 () Bool)

(assert (=> b!3833558 (= e!2367463 tp!1159975)))

(declare-fun b!3833557 () Bool)

(assert (=> b!3833557 (= e!2367462 (and (inv!54619 (xs!15749 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80)))))) e!2367463))))

(assert (=> b!3833194 (= tp!1159867 (and (inv!54613 (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80))))) e!2367462))))

(assert (= (and b!3833194 ((_ is Node!12443) (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80)))))) b!3833556))

(assert (= b!3833557 b!3833558))

(assert (= (and b!3833194 ((_ is Leaf!19266) (c!668412 (dynLambda!17520 (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (value!198246 (h!45897 prefixTokens!80)))))) b!3833557))

(declare-fun m!4387951 () Bool)

(assert (=> b!3833556 m!4387951))

(declare-fun m!4387953 () Bool)

(assert (=> b!3833556 m!4387953))

(declare-fun m!4387955 () Bool)

(assert (=> b!3833557 m!4387955))

(assert (=> b!3833194 m!4387565))

(declare-fun b!3833562 () Bool)

(declare-fun e!2367464 () Bool)

(declare-fun tp!1159979 () Bool)

(declare-fun tp!1159980 () Bool)

(assert (=> b!3833562 (= e!2367464 (and tp!1159979 tp!1159980))))

(declare-fun b!3833559 () Bool)

(assert (=> b!3833559 (= e!2367464 tp_is_empty!19245)))

(declare-fun b!3833561 () Bool)

(declare-fun tp!1159977 () Bool)

(assert (=> b!3833561 (= e!2367464 tp!1159977)))

(assert (=> b!3833280 (= tp!1159930 e!2367464)))

(declare-fun b!3833560 () Bool)

(declare-fun tp!1159978 () Bool)

(declare-fun tp!1159976 () Bool)

(assert (=> b!3833560 (= e!2367464 (and tp!1159978 tp!1159976))))

(assert (= (and b!3833280 ((_ is ElementMatch!11137) (regOne!22786 (regex!6232 (h!45896 rules!2768))))) b!3833559))

(assert (= (and b!3833280 ((_ is Concat!17600) (regOne!22786 (regex!6232 (h!45896 rules!2768))))) b!3833560))

(assert (= (and b!3833280 ((_ is Star!11137) (regOne!22786 (regex!6232 (h!45896 rules!2768))))) b!3833561))

(assert (= (and b!3833280 ((_ is Union!11137) (regOne!22786 (regex!6232 (h!45896 rules!2768))))) b!3833562))

(declare-fun b!3833566 () Bool)

(declare-fun e!2367465 () Bool)

(declare-fun tp!1159984 () Bool)

(declare-fun tp!1159985 () Bool)

(assert (=> b!3833566 (= e!2367465 (and tp!1159984 tp!1159985))))

(declare-fun b!3833563 () Bool)

(assert (=> b!3833563 (= e!2367465 tp_is_empty!19245)))

(declare-fun b!3833565 () Bool)

(declare-fun tp!1159982 () Bool)

(assert (=> b!3833565 (= e!2367465 tp!1159982)))

(assert (=> b!3833280 (= tp!1159928 e!2367465)))

(declare-fun b!3833564 () Bool)

(declare-fun tp!1159983 () Bool)

(declare-fun tp!1159981 () Bool)

(assert (=> b!3833564 (= e!2367465 (and tp!1159983 tp!1159981))))

(assert (= (and b!3833280 ((_ is ElementMatch!11137) (regTwo!22786 (regex!6232 (h!45896 rules!2768))))) b!3833563))

(assert (= (and b!3833280 ((_ is Concat!17600) (regTwo!22786 (regex!6232 (h!45896 rules!2768))))) b!3833564))

(assert (= (and b!3833280 ((_ is Star!11137) (regTwo!22786 (regex!6232 (h!45896 rules!2768))))) b!3833565))

(assert (= (and b!3833280 ((_ is Union!11137) (regTwo!22786 (regex!6232 (h!45896 rules!2768))))) b!3833566))

(declare-fun b!3833570 () Bool)

(declare-fun e!2367466 () Bool)

(declare-fun tp!1159989 () Bool)

(declare-fun tp!1159990 () Bool)

(assert (=> b!3833570 (= e!2367466 (and tp!1159989 tp!1159990))))

(declare-fun b!3833567 () Bool)

(assert (=> b!3833567 (= e!2367466 tp_is_empty!19245)))

(declare-fun b!3833569 () Bool)

(declare-fun tp!1159987 () Bool)

(assert (=> b!3833569 (= e!2367466 tp!1159987)))

(assert (=> b!3833254 (= tp!1159902 e!2367466)))

(declare-fun b!3833568 () Bool)

(declare-fun tp!1159988 () Bool)

(declare-fun tp!1159986 () Bool)

(assert (=> b!3833568 (= e!2367466 (and tp!1159988 tp!1159986))))

(assert (= (and b!3833254 ((_ is ElementMatch!11137) (regOne!22787 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833567))

(assert (= (and b!3833254 ((_ is Concat!17600) (regOne!22787 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833568))

(assert (= (and b!3833254 ((_ is Star!11137) (regOne!22787 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833569))

(assert (= (and b!3833254 ((_ is Union!11137) (regOne!22787 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833570))

(declare-fun b!3833574 () Bool)

(declare-fun e!2367467 () Bool)

(declare-fun tp!1159994 () Bool)

(declare-fun tp!1159995 () Bool)

(assert (=> b!3833574 (= e!2367467 (and tp!1159994 tp!1159995))))

(declare-fun b!3833571 () Bool)

(assert (=> b!3833571 (= e!2367467 tp_is_empty!19245)))

(declare-fun b!3833573 () Bool)

(declare-fun tp!1159992 () Bool)

(assert (=> b!3833573 (= e!2367467 tp!1159992)))

(assert (=> b!3833254 (= tp!1159903 e!2367467)))

(declare-fun b!3833572 () Bool)

(declare-fun tp!1159993 () Bool)

(declare-fun tp!1159991 () Bool)

(assert (=> b!3833572 (= e!2367467 (and tp!1159993 tp!1159991))))

(assert (= (and b!3833254 ((_ is ElementMatch!11137) (regTwo!22787 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833571))

(assert (= (and b!3833254 ((_ is Concat!17600) (regTwo!22787 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833572))

(assert (= (and b!3833254 ((_ is Star!11137) (regTwo!22787 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833573))

(assert (= (and b!3833254 ((_ is Union!11137) (regTwo!22787 (regex!6232 (rule!9064 (h!45897 suffixTokens!72)))))) b!3833574))

(declare-fun b!3833578 () Bool)

(declare-fun e!2367468 () Bool)

(declare-fun tp!1159999 () Bool)

(declare-fun tp!1160000 () Bool)

(assert (=> b!3833578 (= e!2367468 (and tp!1159999 tp!1160000))))

(declare-fun b!3833575 () Bool)

(assert (=> b!3833575 (= e!2367468 tp_is_empty!19245)))

(declare-fun b!3833577 () Bool)

(declare-fun tp!1159997 () Bool)

(assert (=> b!3833577 (= e!2367468 tp!1159997)))

(assert (=> b!3833249 (= tp!1159896 e!2367468)))

(declare-fun b!3833576 () Bool)

(declare-fun tp!1159998 () Bool)

(declare-fun tp!1159996 () Bool)

(assert (=> b!3833576 (= e!2367468 (and tp!1159998 tp!1159996))))

(assert (= (and b!3833249 ((_ is ElementMatch!11137) (regex!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80)))))) b!3833575))

(assert (= (and b!3833249 ((_ is Concat!17600) (regex!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80)))))) b!3833576))

(assert (= (and b!3833249 ((_ is Star!11137) (regex!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80)))))) b!3833577))

(assert (= (and b!3833249 ((_ is Union!11137) (regex!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80)))))) b!3833578))

(declare-fun b!3833582 () Bool)

(declare-fun e!2367469 () Bool)

(declare-fun tp!1160004 () Bool)

(declare-fun tp!1160005 () Bool)

(assert (=> b!3833582 (= e!2367469 (and tp!1160004 tp!1160005))))

(declare-fun b!3833579 () Bool)

(assert (=> b!3833579 (= e!2367469 tp_is_empty!19245)))

(declare-fun b!3833581 () Bool)

(declare-fun tp!1160002 () Bool)

(assert (=> b!3833581 (= e!2367469 tp!1160002)))

(assert (=> b!3833236 (= tp!1159882 e!2367469)))

(declare-fun b!3833580 () Bool)

(declare-fun tp!1160003 () Bool)

(declare-fun tp!1160001 () Bool)

(assert (=> b!3833580 (= e!2367469 (and tp!1160003 tp!1160001))))

(assert (= (and b!3833236 ((_ is ElementMatch!11137) (regOne!22787 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833579))

(assert (= (and b!3833236 ((_ is Concat!17600) (regOne!22787 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833580))

(assert (= (and b!3833236 ((_ is Star!11137) (regOne!22787 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833581))

(assert (= (and b!3833236 ((_ is Union!11137) (regOne!22787 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833582))

(declare-fun b!3833586 () Bool)

(declare-fun e!2367470 () Bool)

(declare-fun tp!1160009 () Bool)

(declare-fun tp!1160010 () Bool)

(assert (=> b!3833586 (= e!2367470 (and tp!1160009 tp!1160010))))

(declare-fun b!3833583 () Bool)

(assert (=> b!3833583 (= e!2367470 tp_is_empty!19245)))

(declare-fun b!3833585 () Bool)

(declare-fun tp!1160007 () Bool)

(assert (=> b!3833585 (= e!2367470 tp!1160007)))

(assert (=> b!3833236 (= tp!1159883 e!2367470)))

(declare-fun b!3833584 () Bool)

(declare-fun tp!1160008 () Bool)

(declare-fun tp!1160006 () Bool)

(assert (=> b!3833584 (= e!2367470 (and tp!1160008 tp!1160006))))

(assert (= (and b!3833236 ((_ is ElementMatch!11137) (regTwo!22787 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833583))

(assert (= (and b!3833236 ((_ is Concat!17600) (regTwo!22787 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833584))

(assert (= (and b!3833236 ((_ is Star!11137) (regTwo!22787 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833585))

(assert (= (and b!3833236 ((_ is Union!11137) (regTwo!22787 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833586))

(declare-fun b!3833590 () Bool)

(declare-fun e!2367471 () Bool)

(declare-fun tp!1160014 () Bool)

(declare-fun tp!1160015 () Bool)

(assert (=> b!3833590 (= e!2367471 (and tp!1160014 tp!1160015))))

(declare-fun b!3833587 () Bool)

(assert (=> b!3833587 (= e!2367471 tp_is_empty!19245)))

(declare-fun b!3833589 () Bool)

(declare-fun tp!1160012 () Bool)

(assert (=> b!3833589 (= e!2367471 tp!1160012)))

(assert (=> b!3833235 (= tp!1159880 e!2367471)))

(declare-fun b!3833588 () Bool)

(declare-fun tp!1160013 () Bool)

(declare-fun tp!1160011 () Bool)

(assert (=> b!3833588 (= e!2367471 (and tp!1160013 tp!1160011))))

(assert (= (and b!3833235 ((_ is ElementMatch!11137) (reg!11466 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833587))

(assert (= (and b!3833235 ((_ is Concat!17600) (reg!11466 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833588))

(assert (= (and b!3833235 ((_ is Star!11137) (reg!11466 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833589))

(assert (= (and b!3833235 ((_ is Union!11137) (reg!11466 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833590))

(declare-fun b!3833594 () Bool)

(declare-fun e!2367472 () Bool)

(declare-fun tp!1160019 () Bool)

(declare-fun tp!1160020 () Bool)

(assert (=> b!3833594 (= e!2367472 (and tp!1160019 tp!1160020))))

(declare-fun b!3833591 () Bool)

(assert (=> b!3833591 (= e!2367472 tp_is_empty!19245)))

(declare-fun b!3833593 () Bool)

(declare-fun tp!1160017 () Bool)

(assert (=> b!3833593 (= e!2367472 tp!1160017)))

(assert (=> b!3833276 (= tp!1159924 e!2367472)))

(declare-fun b!3833592 () Bool)

(declare-fun tp!1160018 () Bool)

(declare-fun tp!1160016 () Bool)

(assert (=> b!3833592 (= e!2367472 (and tp!1160018 tp!1160016))))

(assert (= (and b!3833276 ((_ is ElementMatch!11137) (regex!6232 (h!45896 (t!309189 rules!2768))))) b!3833591))

(assert (= (and b!3833276 ((_ is Concat!17600) (regex!6232 (h!45896 (t!309189 rules!2768))))) b!3833592))

(assert (= (and b!3833276 ((_ is Star!11137) (regex!6232 (h!45896 (t!309189 rules!2768))))) b!3833593))

(assert (= (and b!3833276 ((_ is Union!11137) (regex!6232 (h!45896 (t!309189 rules!2768))))) b!3833594))

(declare-fun b!3833598 () Bool)

(declare-fun e!2367473 () Bool)

(declare-fun tp!1160024 () Bool)

(declare-fun tp!1160025 () Bool)

(assert (=> b!3833598 (= e!2367473 (and tp!1160024 tp!1160025))))

(declare-fun b!3833595 () Bool)

(assert (=> b!3833595 (= e!2367473 tp_is_empty!19245)))

(declare-fun b!3833597 () Bool)

(declare-fun tp!1160022 () Bool)

(assert (=> b!3833597 (= e!2367473 tp!1160022)))

(assert (=> b!3833282 (= tp!1159931 e!2367473)))

(declare-fun b!3833596 () Bool)

(declare-fun tp!1160023 () Bool)

(declare-fun tp!1160021 () Bool)

(assert (=> b!3833596 (= e!2367473 (and tp!1160023 tp!1160021))))

(assert (= (and b!3833282 ((_ is ElementMatch!11137) (regOne!22787 (regex!6232 (h!45896 rules!2768))))) b!3833595))

(assert (= (and b!3833282 ((_ is Concat!17600) (regOne!22787 (regex!6232 (h!45896 rules!2768))))) b!3833596))

(assert (= (and b!3833282 ((_ is Star!11137) (regOne!22787 (regex!6232 (h!45896 rules!2768))))) b!3833597))

(assert (= (and b!3833282 ((_ is Union!11137) (regOne!22787 (regex!6232 (h!45896 rules!2768))))) b!3833598))

(declare-fun b!3833602 () Bool)

(declare-fun e!2367474 () Bool)

(declare-fun tp!1160029 () Bool)

(declare-fun tp!1160030 () Bool)

(assert (=> b!3833602 (= e!2367474 (and tp!1160029 tp!1160030))))

(declare-fun b!3833599 () Bool)

(assert (=> b!3833599 (= e!2367474 tp_is_empty!19245)))

(declare-fun b!3833601 () Bool)

(declare-fun tp!1160027 () Bool)

(assert (=> b!3833601 (= e!2367474 tp!1160027)))

(assert (=> b!3833282 (= tp!1159932 e!2367474)))

(declare-fun b!3833600 () Bool)

(declare-fun tp!1160028 () Bool)

(declare-fun tp!1160026 () Bool)

(assert (=> b!3833600 (= e!2367474 (and tp!1160028 tp!1160026))))

(assert (= (and b!3833282 ((_ is ElementMatch!11137) (regTwo!22787 (regex!6232 (h!45896 rules!2768))))) b!3833599))

(assert (= (and b!3833282 ((_ is Concat!17600) (regTwo!22787 (regex!6232 (h!45896 rules!2768))))) b!3833600))

(assert (= (and b!3833282 ((_ is Star!11137) (regTwo!22787 (regex!6232 (h!45896 rules!2768))))) b!3833601))

(assert (= (and b!3833282 ((_ is Union!11137) (regTwo!22787 (regex!6232 (h!45896 rules!2768))))) b!3833602))

(declare-fun b!3833610 () Bool)

(declare-fun e!2367477 () Bool)

(declare-fun tp!1160034 () Bool)

(declare-fun tp!1160035 () Bool)

(assert (=> b!3833610 (= e!2367477 (and tp!1160034 tp!1160035))))

(declare-fun b!3833607 () Bool)

(assert (=> b!3833607 (= e!2367477 tp_is_empty!19245)))

(declare-fun b!3833609 () Bool)

(declare-fun tp!1160032 () Bool)

(assert (=> b!3833609 (= e!2367477 tp!1160032)))

(assert (=> b!3833234 (= tp!1159881 e!2367477)))

(declare-fun b!3833608 () Bool)

(declare-fun tp!1160033 () Bool)

(declare-fun tp!1160031 () Bool)

(assert (=> b!3833608 (= e!2367477 (and tp!1160033 tp!1160031))))

(assert (= (and b!3833234 ((_ is ElementMatch!11137) (regOne!22786 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833607))

(assert (= (and b!3833234 ((_ is Concat!17600) (regOne!22786 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833608))

(assert (= (and b!3833234 ((_ is Star!11137) (regOne!22786 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833609))

(assert (= (and b!3833234 ((_ is Union!11137) (regOne!22786 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833610))

(declare-fun b!3833614 () Bool)

(declare-fun e!2367478 () Bool)

(declare-fun tp!1160039 () Bool)

(declare-fun tp!1160040 () Bool)

(assert (=> b!3833614 (= e!2367478 (and tp!1160039 tp!1160040))))

(declare-fun b!3833611 () Bool)

(assert (=> b!3833611 (= e!2367478 tp_is_empty!19245)))

(declare-fun b!3833613 () Bool)

(declare-fun tp!1160037 () Bool)

(assert (=> b!3833613 (= e!2367478 tp!1160037)))

(assert (=> b!3833234 (= tp!1159879 e!2367478)))

(declare-fun b!3833612 () Bool)

(declare-fun tp!1160038 () Bool)

(declare-fun tp!1160036 () Bool)

(assert (=> b!3833612 (= e!2367478 (and tp!1160038 tp!1160036))))

(assert (= (and b!3833234 ((_ is ElementMatch!11137) (regTwo!22786 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833611))

(assert (= (and b!3833234 ((_ is Concat!17600) (regTwo!22786 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833612))

(assert (= (and b!3833234 ((_ is Star!11137) (regTwo!22786 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833613))

(assert (= (and b!3833234 ((_ is Union!11137) (regTwo!22786 (regex!6232 (rule!9064 (h!45897 prefixTokens!80)))))) b!3833614))

(declare-fun b!3833617 () Bool)

(declare-fun b_free!101773 () Bool)

(declare-fun b_next!102477 () Bool)

(assert (=> b!3833617 (= b_free!101773 (not b_next!102477))))

(declare-fun tp!1160043 () Bool)

(declare-fun b_and!284939 () Bool)

(assert (=> b!3833617 (= tp!1160043 b_and!284939)))

(declare-fun b_free!101775 () Bool)

(declare-fun b_next!102479 () Bool)

(assert (=> b!3833617 (= b_free!101775 (not b_next!102479))))

(declare-fun tb!219981 () Bool)

(declare-fun t!309274 () Bool)

(assert (=> (and b!3833617 (= (toChars!8495 (transformation!6232 (h!45896 (t!309189 (t!309189 rules!2768))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))) t!309274) tb!219981))

(declare-fun result!268168 () Bool)

(assert (= result!268168 result!268100))

(assert (=> b!3833188 t!309274))

(declare-fun t!309276 () Bool)

(declare-fun tb!219983 () Bool)

(assert (=> (and b!3833617 (= (toChars!8495 (transformation!6232 (h!45896 (t!309189 (t!309189 rules!2768))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))) t!309276) tb!219983))

(declare-fun result!268170 () Bool)

(assert (= result!268170 result!268108))

(assert (=> b!3833196 t!309276))

(declare-fun tb!219985 () Bool)

(declare-fun t!309278 () Bool)

(assert (=> (and b!3833617 (= (toChars!8495 (transformation!6232 (h!45896 (t!309189 (t!309189 rules!2768))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80)))))) t!309278) tb!219985))

(declare-fun result!268172 () Bool)

(assert (= result!268172 result!268134))

(assert (=> b!3833316 t!309278))

(declare-fun t!309280 () Bool)

(declare-fun tb!219987 () Bool)

(assert (=> (and b!3833617 (= (toChars!8495 (transformation!6232 (h!45896 (t!309189 (t!309189 rules!2768))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72)))))) t!309280) tb!219987))

(declare-fun result!268174 () Bool)

(assert (= result!268174 result!268146))

(assert (=> b!3833345 t!309280))

(declare-fun tp!1160044 () Bool)

(declare-fun b_and!284941 () Bool)

(assert (=> b!3833617 (= tp!1160044 (and (=> t!309274 result!268168) (=> t!309276 result!268170) (=> t!309278 result!268172) (=> t!309280 result!268174) b_and!284941))))

(declare-fun e!2367481 () Bool)

(assert (=> b!3833617 (= e!2367481 (and tp!1160043 tp!1160044))))

(declare-fun b!3833616 () Bool)

(declare-fun e!2367482 () Bool)

(declare-fun tp!1160042 () Bool)

(assert (=> b!3833616 (= e!2367482 (and tp!1160042 (inv!54606 (tag!7092 (h!45896 (t!309189 (t!309189 rules!2768))))) (inv!54609 (transformation!6232 (h!45896 (t!309189 (t!309189 rules!2768))))) e!2367481))))

(declare-fun b!3833615 () Bool)

(declare-fun e!2367480 () Bool)

(declare-fun tp!1160041 () Bool)

(assert (=> b!3833615 (= e!2367480 (and e!2367482 tp!1160041))))

(assert (=> b!3833275 (= tp!1159923 e!2367480)))

(assert (= b!3833616 b!3833617))

(assert (= b!3833615 b!3833616))

(assert (= (and b!3833275 ((_ is Cons!40476) (t!309189 (t!309189 rules!2768)))) b!3833615))

(declare-fun m!4387989 () Bool)

(assert (=> b!3833616 m!4387989))

(declare-fun m!4387993 () Bool)

(assert (=> b!3833616 m!4387993))

(declare-fun b!3833624 () Bool)

(declare-fun b_free!101777 () Bool)

(declare-fun b_next!102481 () Bool)

(assert (=> b!3833624 (= b_free!101777 (not b_next!102481))))

(declare-fun tp!1160048 () Bool)

(declare-fun b_and!284943 () Bool)

(assert (=> b!3833624 (= tp!1160048 b_and!284943)))

(declare-fun b_free!101779 () Bool)

(declare-fun b_next!102483 () Bool)

(assert (=> b!3833624 (= b_free!101779 (not b_next!102483))))

(declare-fun tb!219989 () Bool)

(declare-fun t!309282 () Bool)

(assert (=> (and b!3833624 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 (t!309190 suffixTokens!72)))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80))))) t!309282) tb!219989))

(declare-fun result!268176 () Bool)

(assert (= result!268176 result!268100))

(assert (=> b!3833188 t!309282))

(declare-fun t!309284 () Bool)

(declare-fun tb!219991 () Bool)

(assert (=> (and b!3833624 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 (t!309190 suffixTokens!72)))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72))))) t!309284) tb!219991))

(declare-fun result!268178 () Bool)

(assert (= result!268178 result!268108))

(assert (=> b!3833196 t!309284))

(declare-fun tb!219993 () Bool)

(declare-fun t!309286 () Bool)

(assert (=> (and b!3833624 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 (t!309190 suffixTokens!72)))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80)))))) t!309286) tb!219993))

(declare-fun result!268180 () Bool)

(assert (= result!268180 result!268134))

(assert (=> b!3833316 t!309286))

(declare-fun t!309288 () Bool)

(declare-fun tb!219995 () Bool)

(assert (=> (and b!3833624 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 (t!309190 suffixTokens!72)))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72)))))) t!309288) tb!219995))

(declare-fun result!268182 () Bool)

(assert (= result!268182 result!268146))

(assert (=> b!3833345 t!309288))

(declare-fun b_and!284945 () Bool)

(declare-fun tp!1160049 () Bool)

(assert (=> b!3833624 (= tp!1160049 (and (=> t!309282 result!268176) (=> t!309284 result!268178) (=> t!309286 result!268180) (=> t!309288 result!268182) b_and!284945))))

(declare-fun b!3833622 () Bool)

(declare-fun tp!1160047 () Bool)

(declare-fun e!2367485 () Bool)

(declare-fun e!2367484 () Bool)

(assert (=> b!3833622 (= e!2367485 (and tp!1160047 (inv!54606 (tag!7092 (rule!9064 (h!45897 (t!309190 (t!309190 suffixTokens!72)))))) (inv!54609 (transformation!6232 (rule!9064 (h!45897 (t!309190 (t!309190 suffixTokens!72)))))) e!2367484))))

(declare-fun e!2367488 () Bool)

(assert (=> b!3833260 (= tp!1159907 e!2367488)))

(declare-fun b!3833621 () Bool)

(declare-fun tp!1160046 () Bool)

(declare-fun e!2367487 () Bool)

(assert (=> b!3833621 (= e!2367487 (and (inv!21 (value!198246 (h!45897 (t!309190 (t!309190 suffixTokens!72))))) e!2367485 tp!1160046))))

(declare-fun b!3833620 () Bool)

(declare-fun tp!1160045 () Bool)

(assert (=> b!3833620 (= e!2367488 (and (inv!54610 (h!45897 (t!309190 (t!309190 suffixTokens!72)))) e!2367487 tp!1160045))))

(assert (=> b!3833624 (= e!2367484 (and tp!1160048 tp!1160049))))

(assert (= b!3833622 b!3833624))

(assert (= b!3833621 b!3833622))

(assert (= b!3833620 b!3833621))

(assert (= (and b!3833260 ((_ is Cons!40477) (t!309190 (t!309190 suffixTokens!72)))) b!3833620))

(declare-fun m!4388001 () Bool)

(assert (=> b!3833622 m!4388001))

(declare-fun m!4388003 () Bool)

(assert (=> b!3833622 m!4388003))

(declare-fun m!4388005 () Bool)

(assert (=> b!3833621 m!4388005))

(declare-fun m!4388007 () Bool)

(assert (=> b!3833620 m!4388007))

(declare-fun b!3833628 () Bool)

(declare-fun e!2367492 () Bool)

(declare-fun tp!1160050 () Bool)

(assert (=> b!3833628 (= e!2367492 (and tp_is_empty!19245 tp!1160050))))

(assert (=> b!3833265 (= tp!1159913 e!2367492)))

(assert (= (and b!3833265 ((_ is Cons!40474) (t!309187 (originalCharacters!6832 (h!45897 suffixTokens!72))))) b!3833628))

(declare-fun b!3833632 () Bool)

(declare-fun e!2367493 () Bool)

(declare-fun tp!1160054 () Bool)

(declare-fun tp!1160055 () Bool)

(assert (=> b!3833632 (= e!2367493 (and tp!1160054 tp!1160055))))

(declare-fun b!3833629 () Bool)

(assert (=> b!3833629 (= e!2367493 tp_is_empty!19245)))

(declare-fun b!3833631 () Bool)

(declare-fun tp!1160052 () Bool)

(assert (=> b!3833631 (= e!2367493 tp!1160052)))

(assert (=> b!3833262 (= tp!1159909 e!2367493)))

(declare-fun b!3833630 () Bool)

(declare-fun tp!1160053 () Bool)

(declare-fun tp!1160051 () Bool)

(assert (=> b!3833630 (= e!2367493 (and tp!1160053 tp!1160051))))

(assert (= (and b!3833262 ((_ is ElementMatch!11137) (regex!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72)))))) b!3833629))

(assert (= (and b!3833262 ((_ is Concat!17600) (regex!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72)))))) b!3833630))

(assert (= (and b!3833262 ((_ is Star!11137) (regex!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72)))))) b!3833631))

(assert (= (and b!3833262 ((_ is Union!11137) (regex!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72)))))) b!3833632))

(declare-fun b!3833633 () Bool)

(declare-fun e!2367494 () Bool)

(declare-fun tp!1160056 () Bool)

(assert (=> b!3833633 (= e!2367494 (and tp_is_empty!19245 tp!1160056))))

(assert (=> b!3833266 (= tp!1159914 e!2367494)))

(assert (= (and b!3833266 ((_ is Cons!40474) (t!309187 (t!309187 suffixResult!91)))) b!3833633))

(declare-fun b!3833634 () Bool)

(declare-fun e!2367495 () Bool)

(declare-fun tp!1160057 () Bool)

(assert (=> b!3833634 (= e!2367495 (and tp_is_empty!19245 tp!1160057))))

(assert (=> b!3833261 (= tp!1159908 e!2367495)))

(assert (= (and b!3833261 ((_ is Cons!40474) (originalCharacters!6832 (h!45897 (t!309190 suffixTokens!72))))) b!3833634))

(declare-fun b_lambda!112073 () Bool)

(assert (= b_lambda!112067 (or d!1137733 b_lambda!112073)))

(declare-fun bs!582354 () Bool)

(declare-fun d!1137947 () Bool)

(assert (= bs!582354 (and d!1137947 d!1137733)))

(assert (=> bs!582354 (= (dynLambda!17521 lambda!125979 (h!45896 rules!2768)) (ruleValid!2187 thiss!20629 (h!45896 rules!2768)))))

(assert (=> bs!582354 m!4387561))

(assert (=> b!3833295 d!1137947))

(declare-fun b_lambda!112075 () Bool)

(assert (= b_lambda!112071 (or (and b!3832973 b_free!101743 (= (toChars!8495 (transformation!6232 (h!45896 rules!2768))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))))) (and b!3833617 b_free!101775 (= (toChars!8495 (transformation!6232 (h!45896 (t!309189 (t!309189 rules!2768))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))))) (and b!3832955 b_free!101739 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))))) (and b!3833250 b_free!101759 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))))) (and b!3833263 b_free!101763) (and b!3832972 b_free!101735 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))))) (and b!3833550 b_free!101771 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 (t!309190 prefixTokens!80)))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))))) (and b!3833277 b_free!101767 (= (toChars!8495 (transformation!6232 (h!45896 (t!309189 rules!2768)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))))) (and b!3833624 b_free!101779 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 (t!309190 suffixTokens!72)))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))))) b_lambda!112075)))

(declare-fun b_lambda!112077 () Bool)

(assert (= b_lambda!112069 (or (and b!3832955 b_free!101739 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 prefixTokens!80)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))))) (and b!3833550 b_free!101771 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 (t!309190 prefixTokens!80)))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))))) (and b!3833277 b_free!101767 (= (toChars!8495 (transformation!6232 (h!45896 (t!309189 rules!2768)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))))) (and b!3833263 b_free!101763 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 suffixTokens!72))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))))) (and b!3833250 b_free!101759) (and b!3833617 b_free!101775 (= (toChars!8495 (transformation!6232 (h!45896 (t!309189 (t!309189 rules!2768))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))))) (and b!3832972 b_free!101735 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 suffixTokens!72)))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))))) (and b!3833624 b_free!101779 (= (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 (t!309190 suffixTokens!72)))))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))))) (and b!3832973 b_free!101743 (= (toChars!8495 (transformation!6232 (h!45896 rules!2768))) (toChars!8495 (transformation!6232 (rule!9064 (h!45897 (t!309190 prefixTokens!80))))))) b_lambda!112077)))

(check-sat (not b!3833586) (not b!3833198) b_and!284859 (not b!3833548) (not b!3833455) (not b!3833450) (not b!3833454) (not d!1137903) b_and!284943 (not b!3833475) (not b!3833397) (not d!1137815) (not b!3833486) (not b!3833597) (not b_next!102483) (not b!3833488) (not b!3833316) (not b_next!102439) (not b!3833576) (not b!3833453) (not b_lambda!112075) (not d!1137803) (not d!1137877) (not b!3833481) (not b_next!102475) (not d!1137851) (not b!3833600) (not b!3833577) (not b!3833523) (not b!3833416) (not b!3833512) (not b!3833342) (not b!3833557) (not b!3833368) (not b_next!102473) (not b!3833465) (not b!3833610) (not b!3833402) (not b!3833483) (not bm!281823) (not b!3833554) (not b!3833555) (not d!1137899) b_and!284935 b_and!284899 (not b!3833608) (not b!3833570) (not b!3833403) (not b!3833590) (not tb!219961) (not d!1137857) (not b!3833628) (not b!3833477) (not b!3833296) (not b!3833582) (not d!1137917) (not d!1137935) b_and!284931 (not b!3833428) (not b!3833574) (not b!3833564) (not b!3833363) (not b!3833369) (not b!3833381) (not b!3833290) (not b!3833569) (not b!3833346) (not b!3833562) (not b!3833633) (not b!3833479) (not b_next!102471) (not d!1137893) (not b!3833568) (not b!3833537) (not b!3833573) (not d!1137807) (not tb!219949) (not b_lambda!112073) (not b!3833463) (not b!3833535) (not b!3833480) (not b!3833613) (not b!3833585) (not b!3833533) (not b_next!102447) (not b_next!102437) b_and!284907 (not b!3833345) (not b!3833580) (not b!3833343) b_and!284903 (not b!3833596) b_and!284941 b_and!284923 (not b!3833329) (not b!3833551) (not b!3833561) (not b!3833566) (not b!3833506) (not b!3833317) (not b!3833531) tp_is_empty!19245 (not b!3833524) (not b!3833612) (not b_next!102469) (not b!3833615) (not b!3833565) (not b_next!102445) (not b!3833620) (not b!3833527) (not b!3833621) (not b!3833327) (not b!3833414) (not b!3833558) (not b!3833578) (not d!1137891) (not b_next!102465) (not b!3833556) (not b!3833473) b_and!284929 b_and!284925 (not b!3833194) (not b!3833451) (not b!3833572) (not b!3833632) b_and!284945 (not b!3833349) (not d!1137823) (not b!3833504) (not b!3833630) (not d!1137915) (not b_next!102477) (not b_lambda!112063) (not b!3833322) (not b_next!102443) (not b!3833513) (not b!3833366) (not b!3833484) (not b!3833482) b_and!284937 (not b!3833594) (not d!1137929) (not b_next!102461) (not b_next!102481) (not b!3833309) (not b!3833511) (not b!3833634) (not b!3833592) (not b!3833487) (not b!3833379) (not d!1137835) (not b_next!102479) (not b!3833588) (not b!3833528) (not b!3833589) (not b!3833536) (not b!3833581) (not b!3833467) (not b!3833529) (not d!1137849) (not b!3833593) (not b!3833598) (not b!3833330) (not b!3833532) (not d!1137887) (not b!3833601) (not b_next!102441) b_and!284927 (not b!3833616) (not b!3833560) (not b_next!102463) (not b!3833609) (not d!1137865) (not b!3833449) (not b!3833371) (not b!3833332) (not b!3833508) (not b!3833448) b_and!284933 (not b!3833631) (not b!3833362) (not bs!582354) (not b!3833365) (not b_lambda!112065) (not b_lambda!112077) (not b!3833622) (not b!3833522) b_and!284851 (not b!3833614) (not b!3833584) (not b!3833602) (not b!3833447) (not d!1137863) (not d!1137829) (not b!3833547) (not b!3833395) (not bm!281820) (not d!1137809) (not b_next!102467) (not b!3833457) (not b!3833411) (not d!1137839) (not b!3833372) (not d!1137833) (not b!3833393) (not b!3833526) (not b!3833553) (not b!3833408) (not b!3833288) (not b!3833318) (not b!3833312) (not d!1137825) (not d!1137927) (not d!1137859) b_and!284855 (not b!3833507) (not b!3833409) (not b!3833549) (not d!1137791) b_and!284939 (not d!1137799) (not d!1137875) (not b!3833406) (not b!3833421))
(check-sat b_and!284859 b_and!284943 (not b_next!102475) (not b_next!102473) b_and!284931 (not b_next!102471) (not b_next!102447) (not b_next!102445) (not b_next!102465) b_and!284945 b_and!284937 b_and!284933 b_and!284851 (not b_next!102467) b_and!284855 b_and!284939 (not b_next!102439) (not b_next!102483) b_and!284935 b_and!284899 (not b_next!102437) b_and!284907 b_and!284903 b_and!284941 b_and!284923 (not b_next!102469) b_and!284929 b_and!284925 (not b_next!102477) (not b_next!102443) (not b_next!102461) (not b_next!102481) (not b_next!102479) (not b_next!102441) b_and!284927 (not b_next!102463))
