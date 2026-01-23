; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!360048 () Bool)

(assert start!360048)

(declare-fun b!3845200 () Bool)

(declare-fun b_free!102833 () Bool)

(declare-fun b_next!103537 () Bool)

(assert (=> b!3845200 (= b_free!102833 (not b_next!103537))))

(declare-fun tp!1165301 () Bool)

(declare-fun b_and!286751 () Bool)

(assert (=> b!3845200 (= tp!1165301 b_and!286751)))

(declare-fun b_free!102835 () Bool)

(declare-fun b_next!103539 () Bool)

(assert (=> b!3845200 (= b_free!102835 (not b_next!103539))))

(declare-fun tp!1165308 () Bool)

(declare-fun b_and!286753 () Bool)

(assert (=> b!3845200 (= tp!1165308 b_and!286753)))

(declare-fun b!3845173 () Bool)

(declare-fun b_free!102837 () Bool)

(declare-fun b_next!103541 () Bool)

(assert (=> b!3845173 (= b_free!102837 (not b_next!103541))))

(declare-fun tp!1165309 () Bool)

(declare-fun b_and!286755 () Bool)

(assert (=> b!3845173 (= tp!1165309 b_and!286755)))

(declare-fun b_free!102839 () Bool)

(declare-fun b_next!103543 () Bool)

(assert (=> b!3845173 (= b_free!102839 (not b_next!103543))))

(declare-fun tp!1165302 () Bool)

(declare-fun b_and!286757 () Bool)

(assert (=> b!3845173 (= tp!1165302 b_and!286757)))

(declare-fun b!3845166 () Bool)

(declare-fun b_free!102841 () Bool)

(declare-fun b_next!103545 () Bool)

(assert (=> b!3845166 (= b_free!102841 (not b_next!103545))))

(declare-fun tp!1165295 () Bool)

(declare-fun b_and!286759 () Bool)

(assert (=> b!3845166 (= tp!1165295 b_and!286759)))

(declare-fun b_free!102843 () Bool)

(declare-fun b_next!103547 () Bool)

(assert (=> b!3845166 (= b_free!102843 (not b_next!103547))))

(declare-fun tp!1165306 () Bool)

(declare-fun b_and!286761 () Bool)

(assert (=> b!3845166 (= tp!1165306 b_and!286761)))

(declare-fun b!3845170 () Bool)

(declare-fun b_free!102845 () Bool)

(declare-fun b_next!103549 () Bool)

(assert (=> b!3845170 (= b_free!102845 (not b_next!103549))))

(declare-fun tp!1165298 () Bool)

(declare-fun b_and!286763 () Bool)

(assert (=> b!3845170 (= tp!1165298 b_and!286763)))

(declare-fun b_free!102847 () Bool)

(declare-fun b_next!103551 () Bool)

(assert (=> b!3845170 (= b_free!102847 (not b_next!103551))))

(declare-fun tp!1165290 () Bool)

(declare-fun b_and!286765 () Bool)

(assert (=> b!3845170 (= tp!1165290 b_and!286765)))

(declare-fun e!2376245 () Bool)

(assert (=> b!3845166 (= e!2376245 (and tp!1165295 tp!1165306))))

(declare-fun tp!1165293 () Bool)

(declare-fun e!2376231 () Bool)

(declare-fun b!3845167 () Bool)

(declare-datatypes ((List!40842 0))(
  ( (Nil!40718) (Cons!40718 (h!46138 (_ BitVec 16)) (t!310931 List!40842)) )
))
(declare-datatypes ((TokenValue!6518 0))(
  ( (FloatLiteralValue!13036 (text!46071 List!40842)) (TokenValueExt!6517 (__x!25253 Int)) (Broken!32590 (value!199816 List!40842)) (Object!6641) (End!6518) (Def!6518) (Underscore!6518) (Match!6518) (Else!6518) (Error!6518) (Case!6518) (If!6518) (Extends!6518) (Abstract!6518) (Class!6518) (Val!6518) (DelimiterValue!13036 (del!6578 List!40842)) (KeywordValue!6524 (value!199817 List!40842)) (CommentValue!13036 (value!199818 List!40842)) (WhitespaceValue!13036 (value!199819 List!40842)) (IndentationValue!6518 (value!199820 List!40842)) (String!46307) (Int32!6518) (Broken!32591 (value!199821 List!40842)) (Boolean!6519) (Unit!58405) (OperatorValue!6521 (op!6578 List!40842)) (IdentifierValue!13036 (value!199822 List!40842)) (IdentifierValue!13037 (value!199823 List!40842)) (WhitespaceValue!13037 (value!199824 List!40842)) (True!13036) (False!13036) (Broken!32592 (value!199825 List!40842)) (Broken!32593 (value!199826 List!40842)) (True!13037) (RightBrace!6518) (RightBracket!6518) (Colon!6518) (Null!6518) (Comma!6518) (LeftBracket!6518) (False!13037) (LeftBrace!6518) (ImaginaryLiteralValue!6518 (text!46072 List!40842)) (StringLiteralValue!19554 (value!199827 List!40842)) (EOFValue!6518 (value!199828 List!40842)) (IdentValue!6518 (value!199829 List!40842)) (DelimiterValue!13037 (value!199830 List!40842)) (DedentValue!6518 (value!199831 List!40842)) (NewLineValue!6518 (value!199832 List!40842)) (IntegerValue!19554 (value!199833 (_ BitVec 32)) (text!46073 List!40842)) (IntegerValue!19555 (value!199834 Int) (text!46074 List!40842)) (Times!6518) (Or!6518) (Equal!6518) (Minus!6518) (Broken!32594 (value!199835 List!40842)) (And!6518) (Div!6518) (LessEqual!6518) (Mod!6518) (Concat!17711) (Not!6518) (Plus!6518) (SpaceValue!6518 (value!199836 List!40842)) (IntegerValue!19556 (value!199837 Int) (text!46075 List!40842)) (StringLiteralValue!19555 (text!46076 List!40842)) (FloatLiteralValue!13037 (text!46077 List!40842)) (BytesLiteralValue!6518 (value!199838 List!40842)) (CommentValue!13037 (value!199839 List!40842)) (StringLiteralValue!19556 (value!199840 List!40842)) (ErrorTokenValue!6518 (msg!6579 List!40842)) )
))
(declare-datatypes ((C!22572 0))(
  ( (C!22573 (val!13380 Int)) )
))
(declare-datatypes ((Regex!11193 0))(
  ( (ElementMatch!11193 (c!669882 C!22572)) (Concat!17712 (regOne!22898 Regex!11193) (regTwo!22898 Regex!11193)) (EmptyExpr!11193) (Star!11193 (reg!11522 Regex!11193)) (EmptyLang!11193) (Union!11193 (regOne!22899 Regex!11193) (regTwo!22899 Regex!11193)) )
))
(declare-datatypes ((String!46308 0))(
  ( (String!46309 (value!199841 String)) )
))
(declare-datatypes ((List!40843 0))(
  ( (Nil!40719) (Cons!40719 (h!46139 C!22572) (t!310932 List!40843)) )
))
(declare-datatypes ((IArray!25003 0))(
  ( (IArray!25004 (innerList!12559 List!40843)) )
))
(declare-datatypes ((Conc!12499 0))(
  ( (Node!12499 (left!31429 Conc!12499) (right!31759 Conc!12499) (csize!25228 Int) (cheight!12710 Int)) (Leaf!19350 (xs!15805 IArray!25003) (csize!25229 Int)) (Empty!12499) )
))
(declare-datatypes ((BalanceConc!24592 0))(
  ( (BalanceConc!24593 (c!669883 Conc!12499)) )
))
(declare-datatypes ((TokenValueInjection!12464 0))(
  ( (TokenValueInjection!12465 (toValue!8704 Int) (toChars!8563 Int)) )
))
(declare-datatypes ((Rule!12376 0))(
  ( (Rule!12377 (regex!6288 Regex!11193) (tag!7148 String!46308) (isSeparator!6288 Bool) (transformation!6288 TokenValueInjection!12464)) )
))
(declare-datatypes ((Token!11714 0))(
  ( (Token!11715 (value!199842 TokenValue!6518) (rule!9132 Rule!12376) (size!30635 Int) (originalCharacters!6888 List!40843)) )
))
(declare-datatypes ((List!40844 0))(
  ( (Nil!40720) (Cons!40720 (h!46140 Token!11714) (t!310933 List!40844)) )
))
(declare-fun suffixTokens!72 () List!40844)

(declare-fun e!2376236 () Bool)

(declare-fun inv!21 (TokenValue!6518) Bool)

(assert (=> b!3845167 (= e!2376231 (and (inv!21 (value!199842 (h!46140 suffixTokens!72))) e!2376236 tp!1165293))))

(declare-fun b!3845168 () Bool)

(declare-fun res!1556441 () Bool)

(declare-fun e!2376238 () Bool)

(assert (=> b!3845168 (=> (not res!1556441) (not e!2376238))))

(declare-fun suffixResult!91 () List!40843)

(declare-datatypes ((LexerInterface!5877 0))(
  ( (LexerInterfaceExt!5874 (__x!25254 Int)) (Lexer!5875) )
))
(declare-fun thiss!20629 () LexerInterface!5877)

(declare-fun suffix!1176 () List!40843)

(declare-datatypes ((List!40845 0))(
  ( (Nil!40721) (Cons!40721 (h!46141 Rule!12376) (t!310934 List!40845)) )
))
(declare-fun rules!2768 () List!40845)

(declare-datatypes ((tuple2!39898 0))(
  ( (tuple2!39899 (_1!23083 List!40844) (_2!23083 List!40843)) )
))
(declare-fun lexList!1645 (LexerInterface!5877 List!40845 List!40843) tuple2!39898)

(assert (=> b!3845168 (= res!1556441 (= (lexList!1645 thiss!20629 rules!2768 suffix!1176) (tuple2!39899 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3845169 () Bool)

(declare-fun e!2376261 () Bool)

(declare-fun e!2376239 () Bool)

(declare-fun tp!1165304 () Bool)

(assert (=> b!3845169 (= e!2376261 (and e!2376239 tp!1165304))))

(declare-fun e!2376246 () Bool)

(assert (=> b!3845170 (= e!2376246 (and tp!1165298 tp!1165290))))

(declare-fun b!3845171 () Bool)

(declare-fun lt!1335047 () List!40843)

(declare-datatypes ((tuple2!39900 0))(
  ( (tuple2!39901 (_1!23084 Token!11714) (_2!23084 List!40843)) )
))
(declare-datatypes ((Option!8706 0))(
  ( (None!8705) (Some!8705 (v!38997 tuple2!39900)) )
))
(declare-fun lt!1335035 () Option!8706)

(declare-fun maxPrefix!3181 (LexerInterface!5877 List!40845 List!40843) Option!8706)

(assert (=> b!3845171 (= lt!1335035 (maxPrefix!3181 thiss!20629 (t!310934 rules!2768) lt!1335047))))

(declare-fun lt!1335055 () Option!8706)

(declare-fun call!282048 () Option!8706)

(assert (=> b!3845171 (= lt!1335055 call!282048)))

(declare-fun e!2376249 () Option!8706)

(get-info :version)

(assert (=> b!3845171 (= e!2376249 (ite (and ((_ is None!8705) lt!1335055) ((_ is None!8705) lt!1335035)) None!8705 (ite ((_ is None!8705) lt!1335035) lt!1335055 (ite ((_ is None!8705) lt!1335055) lt!1335035 (ite (>= (size!30635 (_1!23084 (v!38997 lt!1335055))) (size!30635 (_1!23084 (v!38997 lt!1335035)))) (Some!8705 (v!38997 lt!1335055)) lt!1335035)))))))

(declare-fun b!3845172 () Bool)

(declare-fun res!1556438 () Bool)

(declare-fun e!2376259 () Bool)

(assert (=> b!3845172 (=> (not res!1556438) (not e!2376259))))

(declare-fun rulesInvariant!5220 (LexerInterface!5877 List!40845) Bool)

(assert (=> b!3845172 (= res!1556438 (rulesInvariant!5220 thiss!20629 rules!2768))))

(declare-fun e!2376250 () Bool)

(assert (=> b!3845173 (= e!2376250 (and tp!1165309 tp!1165302))))

(declare-fun e!2376233 () Bool)

(declare-fun b!3845174 () Bool)

(declare-fun tp!1165303 () Bool)

(declare-fun inv!54860 (String!46308) Bool)

(declare-fun inv!54863 (TokenValueInjection!12464) Bool)

(assert (=> b!3845174 (= e!2376239 (and tp!1165303 (inv!54860 (tag!7148 (h!46141 rules!2768))) (inv!54863 (transformation!6288 (h!46141 rules!2768))) e!2376233))))

(declare-fun e!2376237 () Bool)

(declare-fun tp!1165299 () Bool)

(declare-fun err!4305 () Option!8706)

(declare-fun b!3845175 () Bool)

(declare-fun e!2376266 () Bool)

(declare-fun inv!54864 (Token!11714) Bool)

(assert (=> b!3845175 (= e!2376266 (and (inv!54864 (_1!23084 (v!38997 err!4305))) e!2376237 tp!1165299))))

(declare-fun b!3845176 () Bool)

(assert (=> b!3845176 true))

(assert (=> b!3845176 e!2376266))

(assert (=> b!3845176 (= e!2376249 err!4305)))

(declare-fun b!3845177 () Bool)

(declare-fun e!2376242 () Bool)

(declare-fun e!2376258 () Bool)

(assert (=> b!3845177 (= e!2376242 (not e!2376258))))

(declare-fun res!1556443 () Bool)

(assert (=> b!3845177 (=> res!1556443 e!2376258)))

(declare-fun lt!1335042 () List!40843)

(assert (=> b!3845177 (= res!1556443 (not (= lt!1335042 lt!1335047)))))

(declare-fun lt!1335054 () Option!8706)

(declare-fun lt!1335033 () tuple2!39898)

(assert (=> b!3845177 (= lt!1335033 (lexList!1645 thiss!20629 rules!2768 (_2!23084 (v!38997 lt!1335054))))))

(declare-fun lt!1335036 () List!40843)

(declare-fun lt!1335038 () Int)

(declare-fun lt!1335046 () List!40843)

(declare-fun lt!1335037 () TokenValue!6518)

(assert (=> b!3845177 (and (= (size!30635 (_1!23084 (v!38997 lt!1335054))) lt!1335038) (= (originalCharacters!6888 (_1!23084 (v!38997 lt!1335054))) lt!1335036) (= (tuple2!39901 (_1!23084 (v!38997 lt!1335054)) (_2!23084 (v!38997 lt!1335054))) (tuple2!39901 (Token!11715 lt!1335037 (rule!9132 (_1!23084 (v!38997 lt!1335054))) lt!1335038 lt!1335036) lt!1335046)))))

(declare-fun size!30636 (List!40843) Int)

(assert (=> b!3845177 (= lt!1335038 (size!30636 lt!1335036))))

(declare-fun e!2376240 () Bool)

(assert (=> b!3845177 e!2376240))

(declare-fun res!1556430 () Bool)

(assert (=> b!3845177 (=> (not res!1556430) (not e!2376240))))

(assert (=> b!3845177 (= res!1556430 (= (value!199842 (_1!23084 (v!38997 lt!1335054))) lt!1335037))))

(declare-fun apply!9531 (TokenValueInjection!12464 BalanceConc!24592) TokenValue!6518)

(declare-fun seqFromList!4559 (List!40843) BalanceConc!24592)

(assert (=> b!3845177 (= lt!1335037 (apply!9531 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))) (seqFromList!4559 lt!1335036)))))

(assert (=> b!3845177 (= (_2!23084 (v!38997 lt!1335054)) lt!1335046)))

(declare-datatypes ((Unit!58406 0))(
  ( (Unit!58407) )
))
(declare-fun lt!1335039 () Unit!58406)

(declare-fun lemmaSamePrefixThenSameSuffix!1608 (List!40843 List!40843 List!40843 List!40843 List!40843) Unit!58406)

(assert (=> b!3845177 (= lt!1335039 (lemmaSamePrefixThenSameSuffix!1608 lt!1335036 (_2!23084 (v!38997 lt!1335054)) lt!1335036 lt!1335046 lt!1335047))))

(declare-fun getSuffix!1842 (List!40843 List!40843) List!40843)

(assert (=> b!3845177 (= lt!1335046 (getSuffix!1842 lt!1335047 lt!1335036))))

(declare-fun isPrefix!3387 (List!40843 List!40843) Bool)

(assert (=> b!3845177 (isPrefix!3387 lt!1335036 lt!1335042)))

(declare-fun ++!10333 (List!40843 List!40843) List!40843)

(assert (=> b!3845177 (= lt!1335042 (++!10333 lt!1335036 (_2!23084 (v!38997 lt!1335054))))))

(declare-fun lt!1335044 () Unit!58406)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2250 (List!40843 List!40843) Unit!58406)

(assert (=> b!3845177 (= lt!1335044 (lemmaConcatTwoListThenFirstIsPrefix!2250 lt!1335036 (_2!23084 (v!38997 lt!1335054))))))

(declare-fun list!15158 (BalanceConc!24592) List!40843)

(declare-fun charsOf!4116 (Token!11714) BalanceConc!24592)

(assert (=> b!3845177 (= lt!1335036 (list!15158 (charsOf!4116 (_1!23084 (v!38997 lt!1335054)))))))

(declare-fun ruleValid!2240 (LexerInterface!5877 Rule!12376) Bool)

(assert (=> b!3845177 (ruleValid!2240 thiss!20629 (rule!9132 (_1!23084 (v!38997 lt!1335054))))))

(declare-fun lt!1335048 () Unit!58406)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1320 (LexerInterface!5877 Rule!12376 List!40845) Unit!58406)

(assert (=> b!3845177 (= lt!1335048 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1320 thiss!20629 (rule!9132 (_1!23084 (v!38997 lt!1335054))) rules!2768))))

(declare-fun lt!1335050 () Unit!58406)

(declare-fun lemmaCharactersSize!949 (Token!11714) Unit!58406)

(assert (=> b!3845177 (= lt!1335050 (lemmaCharactersSize!949 (_1!23084 (v!38997 lt!1335054))))))

(declare-fun b!3845178 () Bool)

(declare-fun e!2376234 () Bool)

(declare-fun tp_is_empty!19357 () Bool)

(declare-fun tp!1165291 () Bool)

(assert (=> b!3845178 (= e!2376234 (and tp_is_empty!19357 tp!1165291))))

(declare-fun b!3845165 () Bool)

(declare-fun e!2376267 () Bool)

(declare-fun e!2376243 () Option!8706)

(assert (=> b!3845165 (= e!2376267 (= lt!1335054 e!2376243))))

(declare-fun c!669880 () Bool)

(assert (=> b!3845165 (= c!669880 (and ((_ is Cons!40721) rules!2768) ((_ is Nil!40721) (t!310934 rules!2768))))))

(declare-fun res!1556439 () Bool)

(assert (=> start!360048 (=> (not res!1556439) (not e!2376259))))

(assert (=> start!360048 (= res!1556439 ((_ is Lexer!5875) thiss!20629))))

(assert (=> start!360048 e!2376259))

(declare-fun e!2376244 () Bool)

(assert (=> start!360048 e!2376244))

(assert (=> start!360048 true))

(assert (=> start!360048 e!2376234))

(assert (=> start!360048 e!2376261))

(declare-fun e!2376253 () Bool)

(assert (=> start!360048 e!2376253))

(declare-fun e!2376256 () Bool)

(assert (=> start!360048 e!2376256))

(declare-fun e!2376260 () Bool)

(assert (=> start!360048 e!2376260))

(declare-fun b!3845179 () Bool)

(assert (=> b!3845179 (= e!2376259 e!2376238)))

(declare-fun res!1556429 () Bool)

(assert (=> b!3845179 (=> (not res!1556429) (not e!2376238))))

(declare-fun lt!1335034 () tuple2!39898)

(declare-fun lt!1335052 () List!40844)

(assert (=> b!3845179 (= res!1556429 (= lt!1335034 (tuple2!39899 lt!1335052 suffixResult!91)))))

(assert (=> b!3845179 (= lt!1335034 (lexList!1645 thiss!20629 rules!2768 lt!1335047))))

(declare-fun prefixTokens!80 () List!40844)

(declare-fun ++!10334 (List!40844 List!40844) List!40844)

(assert (=> b!3845179 (= lt!1335052 (++!10334 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!40843)

(assert (=> b!3845179 (= lt!1335047 (++!10333 prefix!426 suffix!1176))))

(declare-fun b!3845180 () Bool)

(declare-fun tp!1165307 () Bool)

(declare-fun e!2376235 () Bool)

(assert (=> b!3845180 (= e!2376253 (and (inv!54864 (h!46140 prefixTokens!80)) e!2376235 tp!1165307))))

(declare-fun b!3845181 () Bool)

(assert (=> b!3845181 (= e!2376243 call!282048)))

(declare-fun b!3845182 () Bool)

(assert (=> b!3845182 (= e!2376238 e!2376242)))

(declare-fun res!1556436 () Bool)

(assert (=> b!3845182 (=> (not res!1556436) (not e!2376242))))

(assert (=> b!3845182 (= res!1556436 ((_ is Some!8705) lt!1335054))))

(assert (=> b!3845182 (= lt!1335054 (maxPrefix!3181 thiss!20629 rules!2768 lt!1335047))))

(declare-fun b!3845183 () Bool)

(declare-fun tp!1165300 () Bool)

(assert (=> b!3845183 (= e!2376244 (and tp_is_empty!19357 tp!1165300))))

(declare-fun b!3845184 () Bool)

(declare-fun res!1556428 () Bool)

(assert (=> b!3845184 (=> (not res!1556428) (not e!2376259))))

(declare-fun isEmpty!24082 (List!40844) Bool)

(assert (=> b!3845184 (= res!1556428 (not (isEmpty!24082 prefixTokens!80)))))

(declare-fun b!3845185 () Bool)

(declare-fun e!2376241 () Bool)

(declare-fun e!2376248 () Bool)

(assert (=> b!3845185 (= e!2376241 e!2376248)))

(declare-fun res!1556434 () Bool)

(assert (=> b!3845185 (=> res!1556434 e!2376248)))

(declare-fun lt!1335049 () tuple2!39900)

(assert (=> b!3845185 (= res!1556434 (not (= (_1!23084 lt!1335049) (_1!23084 (v!38997 lt!1335054)))))))

(declare-fun lt!1335053 () Option!8706)

(declare-fun get!13478 (Option!8706) tuple2!39900)

(assert (=> b!3845185 (= lt!1335049 (get!13478 lt!1335053))))

(declare-fun b!3845186 () Bool)

(declare-fun res!1556431 () Bool)

(assert (=> b!3845186 (=> (not res!1556431) (not e!2376259))))

(declare-fun isEmpty!24083 (List!40845) Bool)

(assert (=> b!3845186 (= res!1556431 (not (isEmpty!24083 rules!2768)))))

(declare-fun b!3845187 () Bool)

(declare-fun tp!1165305 () Bool)

(declare-fun e!2376257 () Bool)

(assert (=> b!3845187 (= e!2376237 (and (inv!21 (value!199842 (_1!23084 (v!38997 err!4305)))) e!2376257 tp!1165305))))

(declare-fun b!3845188 () Bool)

(declare-fun e!2376263 () Bool)

(assert (=> b!3845188 (= e!2376258 e!2376263)))

(declare-fun res!1556440 () Bool)

(assert (=> b!3845188 (=> res!1556440 e!2376263)))

(declare-fun lt!1335040 () List!40844)

(assert (=> b!3845188 (= res!1556440 (or (not (= lt!1335034 (tuple2!39899 lt!1335040 (_2!23083 lt!1335033)))) (not (= lt!1335033 (tuple2!39899 (_1!23083 lt!1335033) (_2!23083 lt!1335033)))) (not (= (_2!23084 (v!38997 lt!1335054)) suffix!1176))))))

(declare-fun lt!1335045 () List!40844)

(assert (=> b!3845188 (= lt!1335040 (++!10334 lt!1335045 (_1!23083 lt!1335033)))))

(assert (=> b!3845188 (= lt!1335045 (Cons!40720 (_1!23084 (v!38997 lt!1335054)) Nil!40720))))

(declare-fun b!3845189 () Bool)

(assert (=> b!3845189 (= e!2376240 (= (size!30635 (_1!23084 (v!38997 lt!1335054))) (size!30636 (originalCharacters!6888 (_1!23084 (v!38997 lt!1335054))))))))

(declare-fun b!3845190 () Bool)

(declare-fun e!2376268 () Bool)

(assert (=> b!3845190 (= e!2376268 e!2376241)))

(declare-fun res!1556444 () Bool)

(assert (=> b!3845190 (=> res!1556444 e!2376241)))

(declare-fun isDefined!6837 (Option!8706) Bool)

(assert (=> b!3845190 (= res!1556444 (not (isDefined!6837 lt!1335053)))))

(assert (=> b!3845190 (= lt!1335053 (maxPrefix!3181 thiss!20629 rules!2768 prefix!426))))

(assert (=> b!3845190 (= (maxPrefix!3181 thiss!20629 rules!2768 (++!10333 prefix!426 Nil!40719)) (Some!8705 (tuple2!39901 (_1!23084 (v!38997 lt!1335054)) Nil!40719)))))

(declare-fun lt!1335051 () Unit!58406)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!18 (LexerInterface!5877 List!40845 List!40843 List!40843 List!40843 Token!11714 List!40843 List!40843) Unit!58406)

(assert (=> b!3845190 (= lt!1335051 (lemmaMaxPrefixThenWithShorterSuffix!18 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40719 (_1!23084 (v!38997 lt!1335054)) suffix!1176 Nil!40719))))

(declare-fun b!3845191 () Bool)

(declare-fun res!1556445 () Bool)

(assert (=> b!3845191 (=> (not res!1556445) (not e!2376259))))

(declare-fun isEmpty!24084 (List!40843) Bool)

(assert (=> b!3845191 (= res!1556445 (not (isEmpty!24084 prefix!426)))))

(declare-fun b!3845192 () Bool)

(declare-fun res!1556432 () Bool)

(assert (=> b!3845192 (=> res!1556432 e!2376268)))

(assert (=> b!3845192 (= res!1556432 (not (isPrefix!3387 Nil!40719 suffix!1176)))))

(declare-fun b!3845193 () Bool)

(declare-fun e!2376262 () Bool)

(assert (=> b!3845193 (= e!2376263 e!2376262)))

(declare-fun res!1556435 () Bool)

(assert (=> b!3845193 (=> res!1556435 e!2376262)))

(assert (=> b!3845193 (= res!1556435 (not (= lt!1335054 (Some!8705 (tuple2!39901 (_1!23084 (v!38997 lt!1335054)) (_2!23084 (v!38997 lt!1335054)))))))))

(assert (=> b!3845193 e!2376267))

(declare-fun res!1556433 () Bool)

(assert (=> b!3845193 (=> (not res!1556433) (not e!2376267))))

(assert (=> b!3845193 (= res!1556433 (isPrefix!3387 lt!1335047 lt!1335047))))

(declare-fun lt!1335043 () Unit!58406)

(declare-fun lemmaIsPrefixRefl!2160 (List!40843 List!40843) Unit!58406)

(assert (=> b!3845193 (= lt!1335043 (lemmaIsPrefixRefl!2160 lt!1335047 lt!1335047))))

(assert (=> b!3845193 (= lt!1335034 (tuple2!39899 (Cons!40720 (_1!23084 (v!38997 lt!1335054)) (_1!23083 lt!1335033)) (_2!23083 lt!1335033)))))

(declare-fun b!3845194 () Bool)

(declare-fun tp!1165289 () Bool)

(assert (=> b!3845194 (= e!2376256 (and (inv!54864 (h!46140 suffixTokens!72)) e!2376231 tp!1165289))))

(declare-fun b!3845195 () Bool)

(declare-fun tp!1165294 () Bool)

(assert (=> b!3845195 (= e!2376236 (and tp!1165294 (inv!54860 (tag!7148 (rule!9132 (h!46140 suffixTokens!72)))) (inv!54863 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))) e!2376245))))

(declare-fun b!3845196 () Bool)

(assert (=> b!3845196 (= e!2376262 e!2376268)))

(declare-fun res!1556437 () Bool)

(assert (=> b!3845196 (=> res!1556437 e!2376268)))

(assert (=> b!3845196 (= res!1556437 (or (not (= lt!1335052 (_1!23083 lt!1335034))) (not (= lt!1335052 lt!1335040)) (not (= prefixTokens!80 lt!1335045)) (not (= prefix!426 lt!1335036))))))

(assert (=> b!3845196 (= lt!1335036 prefix!426)))

(declare-fun lt!1335041 () Unit!58406)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!416 (List!40843 List!40843 List!40843 List!40843) Unit!58406)

(assert (=> b!3845196 (= lt!1335041 (lemmaConcatSameAndSameSizesThenSameLists!416 lt!1335036 (_2!23084 (v!38997 lt!1335054)) prefix!426 suffix!1176))))

(declare-fun b!3845197 () Bool)

(declare-fun res!1556442 () Bool)

(assert (=> b!3845197 (=> res!1556442 e!2376248)))

(assert (=> b!3845197 (= res!1556442 (not (isEmpty!24084 (_2!23084 lt!1335049))))))

(declare-fun b!3845198 () Bool)

(declare-fun tp!1165310 () Bool)

(assert (=> b!3845198 (= e!2376260 (and tp_is_empty!19357 tp!1165310))))

(declare-fun b!3845199 () Bool)

(declare-fun tp!1165297 () Bool)

(assert (=> b!3845199 (= e!2376257 (and tp!1165297 (inv!54860 (tag!7148 (rule!9132 (_1!23084 (v!38997 err!4305))))) (inv!54863 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))) e!2376246))))

(assert (=> b!3845200 (= e!2376233 (and tp!1165301 tp!1165308))))

(declare-fun b!3845201 () Bool)

(assert (=> b!3845201 (= e!2376243 e!2376249)))

(declare-fun c!669881 () Bool)

(assert (=> b!3845201 (= c!669881 ((_ is Cons!40721) rules!2768))))

(declare-fun tp!1165296 () Bool)

(declare-fun e!2376232 () Bool)

(declare-fun b!3845202 () Bool)

(assert (=> b!3845202 (= e!2376235 (and (inv!21 (value!199842 (h!46140 prefixTokens!80))) e!2376232 tp!1165296))))

(declare-fun b!3845203 () Bool)

(declare-fun rulesValidInductive!2228 (LexerInterface!5877 List!40845) Bool)

(assert (=> b!3845203 (= e!2376248 (rulesValidInductive!2228 thiss!20629 rules!2768))))

(declare-fun bm!282043 () Bool)

(declare-fun maxPrefixOneRule!2265 (LexerInterface!5877 Rule!12376 List!40843) Option!8706)

(assert (=> bm!282043 (= call!282048 (maxPrefixOneRule!2265 thiss!20629 (h!46141 rules!2768) lt!1335047))))

(declare-fun tp!1165292 () Bool)

(declare-fun b!3845204 () Bool)

(assert (=> b!3845204 (= e!2376232 (and tp!1165292 (inv!54860 (tag!7148 (rule!9132 (h!46140 prefixTokens!80)))) (inv!54863 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))) e!2376250))))

(assert (= (and start!360048 res!1556439) b!3845186))

(assert (= (and b!3845186 res!1556431) b!3845172))

(assert (= (and b!3845172 res!1556438) b!3845184))

(assert (= (and b!3845184 res!1556428) b!3845191))

(assert (= (and b!3845191 res!1556445) b!3845179))

(assert (= (and b!3845179 res!1556429) b!3845168))

(assert (= (and b!3845168 res!1556441) b!3845182))

(assert (= (and b!3845182 res!1556436) b!3845177))

(assert (= (and b!3845177 res!1556430) b!3845189))

(assert (= (and b!3845177 (not res!1556443)) b!3845188))

(assert (= (and b!3845188 (not res!1556440)) b!3845193))

(assert (= (and b!3845193 res!1556433) b!3845165))

(assert (= (and b!3845165 c!669880) b!3845181))

(assert (= (and b!3845165 (not c!669880)) b!3845201))

(assert (= (and b!3845201 c!669881) b!3845171))

(assert (= (and b!3845201 (not c!669881)) b!3845176))

(assert (= b!3845199 b!3845170))

(assert (= b!3845187 b!3845199))

(assert (= b!3845175 b!3845187))

(assert (= (and b!3845176 ((_ is Some!8705) err!4305)) b!3845175))

(assert (= (or b!3845181 b!3845171) bm!282043))

(assert (= (and b!3845193 (not res!1556435)) b!3845196))

(assert (= (and b!3845196 (not res!1556437)) b!3845192))

(assert (= (and b!3845192 (not res!1556432)) b!3845190))

(assert (= (and b!3845190 (not res!1556444)) b!3845185))

(assert (= (and b!3845185 (not res!1556434)) b!3845197))

(assert (= (and b!3845197 (not res!1556442)) b!3845203))

(assert (= (and start!360048 ((_ is Cons!40719) suffixResult!91)) b!3845183))

(assert (= (and start!360048 ((_ is Cons!40719) suffix!1176)) b!3845178))

(assert (= b!3845174 b!3845200))

(assert (= b!3845169 b!3845174))

(assert (= (and start!360048 ((_ is Cons!40721) rules!2768)) b!3845169))

(assert (= b!3845204 b!3845173))

(assert (= b!3845202 b!3845204))

(assert (= b!3845180 b!3845202))

(assert (= (and start!360048 ((_ is Cons!40720) prefixTokens!80)) b!3845180))

(assert (= b!3845195 b!3845166))

(assert (= b!3845167 b!3845195))

(assert (= b!3845194 b!3845167))

(assert (= (and start!360048 ((_ is Cons!40720) suffixTokens!72)) b!3845194))

(assert (= (and start!360048 ((_ is Cons!40719) prefix!426)) b!3845198))

(declare-fun m!4399735 () Bool)

(assert (=> b!3845179 m!4399735))

(declare-fun m!4399737 () Bool)

(assert (=> b!3845179 m!4399737))

(declare-fun m!4399739 () Bool)

(assert (=> b!3845179 m!4399739))

(declare-fun m!4399741 () Bool)

(assert (=> b!3845196 m!4399741))

(declare-fun m!4399743 () Bool)

(assert (=> b!3845172 m!4399743))

(declare-fun m!4399745 () Bool)

(assert (=> b!3845191 m!4399745))

(declare-fun m!4399747 () Bool)

(assert (=> b!3845187 m!4399747))

(declare-fun m!4399749 () Bool)

(assert (=> b!3845174 m!4399749))

(declare-fun m!4399751 () Bool)

(assert (=> b!3845174 m!4399751))

(declare-fun m!4399753 () Bool)

(assert (=> b!3845192 m!4399753))

(declare-fun m!4399755 () Bool)

(assert (=> b!3845167 m!4399755))

(declare-fun m!4399757 () Bool)

(assert (=> b!3845193 m!4399757))

(declare-fun m!4399759 () Bool)

(assert (=> b!3845193 m!4399759))

(declare-fun m!4399761 () Bool)

(assert (=> b!3845203 m!4399761))

(declare-fun m!4399763 () Bool)

(assert (=> b!3845184 m!4399763))

(declare-fun m!4399765 () Bool)

(assert (=> b!3845195 m!4399765))

(declare-fun m!4399767 () Bool)

(assert (=> b!3845195 m!4399767))

(declare-fun m!4399769 () Bool)

(assert (=> b!3845189 m!4399769))

(declare-fun m!4399771 () Bool)

(assert (=> b!3845171 m!4399771))

(declare-fun m!4399773 () Bool)

(assert (=> b!3845180 m!4399773))

(declare-fun m!4399775 () Bool)

(assert (=> b!3845182 m!4399775))

(declare-fun m!4399777 () Bool)

(assert (=> b!3845186 m!4399777))

(declare-fun m!4399779 () Bool)

(assert (=> b!3845177 m!4399779))

(declare-fun m!4399781 () Bool)

(assert (=> b!3845177 m!4399781))

(declare-fun m!4399783 () Bool)

(assert (=> b!3845177 m!4399783))

(declare-fun m!4399785 () Bool)

(assert (=> b!3845177 m!4399785))

(declare-fun m!4399787 () Bool)

(assert (=> b!3845177 m!4399787))

(declare-fun m!4399789 () Bool)

(assert (=> b!3845177 m!4399789))

(declare-fun m!4399791 () Bool)

(assert (=> b!3845177 m!4399791))

(declare-fun m!4399793 () Bool)

(assert (=> b!3845177 m!4399793))

(assert (=> b!3845177 m!4399779))

(declare-fun m!4399795 () Bool)

(assert (=> b!3845177 m!4399795))

(declare-fun m!4399797 () Bool)

(assert (=> b!3845177 m!4399797))

(declare-fun m!4399799 () Bool)

(assert (=> b!3845177 m!4399799))

(assert (=> b!3845177 m!4399789))

(declare-fun m!4399801 () Bool)

(assert (=> b!3845177 m!4399801))

(declare-fun m!4399803 () Bool)

(assert (=> b!3845177 m!4399803))

(declare-fun m!4399805 () Bool)

(assert (=> b!3845177 m!4399805))

(declare-fun m!4399807 () Bool)

(assert (=> b!3845197 m!4399807))

(declare-fun m!4399809 () Bool)

(assert (=> b!3845168 m!4399809))

(declare-fun m!4399811 () Bool)

(assert (=> b!3845202 m!4399811))

(declare-fun m!4399813 () Bool)

(assert (=> b!3845175 m!4399813))

(declare-fun m!4399815 () Bool)

(assert (=> b!3845204 m!4399815))

(declare-fun m!4399817 () Bool)

(assert (=> b!3845204 m!4399817))

(declare-fun m!4399819 () Bool)

(assert (=> bm!282043 m!4399819))

(declare-fun m!4399821 () Bool)

(assert (=> b!3845185 m!4399821))

(declare-fun m!4399823 () Bool)

(assert (=> b!3845188 m!4399823))

(declare-fun m!4399825 () Bool)

(assert (=> b!3845194 m!4399825))

(declare-fun m!4399827 () Bool)

(assert (=> b!3845190 m!4399827))

(declare-fun m!4399829 () Bool)

(assert (=> b!3845190 m!4399829))

(declare-fun m!4399831 () Bool)

(assert (=> b!3845190 m!4399831))

(declare-fun m!4399833 () Bool)

(assert (=> b!3845190 m!4399833))

(declare-fun m!4399835 () Bool)

(assert (=> b!3845190 m!4399835))

(assert (=> b!3845190 m!4399829))

(declare-fun m!4399837 () Bool)

(assert (=> b!3845199 m!4399837))

(declare-fun m!4399839 () Bool)

(assert (=> b!3845199 m!4399839))

(check-sat (not b!3845204) b_and!286763 (not b!3845172) (not b!3845184) (not b!3845187) (not b!3845188) b_and!286765 (not b!3845191) b_and!286753 (not bm!282043) (not b_next!103545) (not b!3845177) b_and!286751 (not b!3845167) (not b_next!103549) (not b!3845168) (not b!3845203) b_and!286755 (not b!3845180) (not b!3845197) (not b!3845196) (not b!3845183) (not b!3845195) (not b!3845192) (not b!3845186) (not b!3845179) (not b!3845202) (not b!3845193) (not b_next!103551) (not b_next!103541) (not b!3845198) b_and!286759 (not b!3845169) (not b_next!103537) (not b!3845175) (not b_next!103539) (not b!3845182) tp_is_empty!19357 (not b!3845174) b_and!286757 (not b!3845189) (not b_next!103547) (not b!3845185) (not b!3845171) (not b!3845199) (not b_next!103543) (not b!3845194) b_and!286761 (not b!3845190) (not b!3845178))
(check-sat (not b_next!103545) b_and!286751 (not b_next!103549) b_and!286755 b_and!286759 (not b_next!103537) (not b_next!103539) b_and!286763 b_and!286757 (not b_next!103547) (not b_next!103543) b_and!286761 b_and!286765 b_and!286753 (not b_next!103551) (not b_next!103541))
(get-model)

(declare-fun b!3845247 () Bool)

(declare-fun e!2376299 () Bool)

(declare-fun e!2376298 () Bool)

(assert (=> b!3845247 (= e!2376299 e!2376298)))

(declare-fun res!1556484 () Bool)

(assert (=> b!3845247 (=> (not res!1556484) (not e!2376298))))

(assert (=> b!3845247 (= res!1556484 (not ((_ is Nil!40719) lt!1335047)))))

(declare-fun d!1140315 () Bool)

(declare-fun e!2376300 () Bool)

(assert (=> d!1140315 e!2376300))

(declare-fun res!1556485 () Bool)

(assert (=> d!1140315 (=> res!1556485 e!2376300)))

(declare-fun lt!1335072 () Bool)

(assert (=> d!1140315 (= res!1556485 (not lt!1335072))))

(assert (=> d!1140315 (= lt!1335072 e!2376299)))

(declare-fun res!1556482 () Bool)

(assert (=> d!1140315 (=> res!1556482 e!2376299)))

(assert (=> d!1140315 (= res!1556482 ((_ is Nil!40719) lt!1335047))))

(assert (=> d!1140315 (= (isPrefix!3387 lt!1335047 lt!1335047) lt!1335072)))

(declare-fun b!3845248 () Bool)

(declare-fun res!1556483 () Bool)

(assert (=> b!3845248 (=> (not res!1556483) (not e!2376298))))

(declare-fun head!8087 (List!40843) C!22572)

(assert (=> b!3845248 (= res!1556483 (= (head!8087 lt!1335047) (head!8087 lt!1335047)))))

(declare-fun b!3845249 () Bool)

(declare-fun tail!5815 (List!40843) List!40843)

(assert (=> b!3845249 (= e!2376298 (isPrefix!3387 (tail!5815 lt!1335047) (tail!5815 lt!1335047)))))

(declare-fun b!3845250 () Bool)

(assert (=> b!3845250 (= e!2376300 (>= (size!30636 lt!1335047) (size!30636 lt!1335047)))))

(assert (= (and d!1140315 (not res!1556482)) b!3845247))

(assert (= (and b!3845247 res!1556484) b!3845248))

(assert (= (and b!3845248 res!1556483) b!3845249))

(assert (= (and d!1140315 (not res!1556485)) b!3845250))

(declare-fun m!4399875 () Bool)

(assert (=> b!3845248 m!4399875))

(assert (=> b!3845248 m!4399875))

(declare-fun m!4399877 () Bool)

(assert (=> b!3845249 m!4399877))

(assert (=> b!3845249 m!4399877))

(assert (=> b!3845249 m!4399877))

(assert (=> b!3845249 m!4399877))

(declare-fun m!4399879 () Bool)

(assert (=> b!3845249 m!4399879))

(declare-fun m!4399881 () Bool)

(assert (=> b!3845250 m!4399881))

(assert (=> b!3845250 m!4399881))

(assert (=> b!3845193 d!1140315))

(declare-fun d!1140317 () Bool)

(assert (=> d!1140317 (isPrefix!3387 lt!1335047 lt!1335047)))

(declare-fun lt!1335075 () Unit!58406)

(declare-fun choose!22621 (List!40843 List!40843) Unit!58406)

(assert (=> d!1140317 (= lt!1335075 (choose!22621 lt!1335047 lt!1335047))))

(assert (=> d!1140317 (= (lemmaIsPrefixRefl!2160 lt!1335047 lt!1335047) lt!1335075)))

(declare-fun bs!582692 () Bool)

(assert (= bs!582692 d!1140317))

(assert (=> bs!582692 m!4399757))

(declare-fun m!4399883 () Bool)

(assert (=> bs!582692 m!4399883))

(assert (=> b!3845193 d!1140317))

(declare-fun b!3845269 () Bool)

(declare-fun e!2376308 () Bool)

(declare-fun lt!1335086 () Option!8706)

(declare-fun contains!8238 (List!40845 Rule!12376) Bool)

(assert (=> b!3845269 (= e!2376308 (contains!8238 (t!310934 rules!2768) (rule!9132 (_1!23084 (get!13478 lt!1335086)))))))

(declare-fun b!3845270 () Bool)

(declare-fun res!1556504 () Bool)

(assert (=> b!3845270 (=> (not res!1556504) (not e!2376308))))

(assert (=> b!3845270 (= res!1556504 (< (size!30636 (_2!23084 (get!13478 lt!1335086))) (size!30636 lt!1335047)))))

(declare-fun b!3845271 () Bool)

(declare-fun res!1556505 () Bool)

(assert (=> b!3845271 (=> (not res!1556505) (not e!2376308))))

(assert (=> b!3845271 (= res!1556505 (= (value!199842 (_1!23084 (get!13478 lt!1335086))) (apply!9531 (transformation!6288 (rule!9132 (_1!23084 (get!13478 lt!1335086)))) (seqFromList!4559 (originalCharacters!6888 (_1!23084 (get!13478 lt!1335086)))))))))

(declare-fun d!1140319 () Bool)

(declare-fun e!2376307 () Bool)

(assert (=> d!1140319 e!2376307))

(declare-fun res!1556503 () Bool)

(assert (=> d!1140319 (=> res!1556503 e!2376307)))

(declare-fun isEmpty!24086 (Option!8706) Bool)

(assert (=> d!1140319 (= res!1556503 (isEmpty!24086 lt!1335086))))

(declare-fun e!2376309 () Option!8706)

(assert (=> d!1140319 (= lt!1335086 e!2376309)))

(declare-fun c!669892 () Bool)

(assert (=> d!1140319 (= c!669892 (and ((_ is Cons!40721) (t!310934 rules!2768)) ((_ is Nil!40721) (t!310934 (t!310934 rules!2768)))))))

(declare-fun lt!1335088 () Unit!58406)

(declare-fun lt!1335087 () Unit!58406)

(assert (=> d!1140319 (= lt!1335088 lt!1335087)))

(assert (=> d!1140319 (isPrefix!3387 lt!1335047 lt!1335047)))

(assert (=> d!1140319 (= lt!1335087 (lemmaIsPrefixRefl!2160 lt!1335047 lt!1335047))))

(assert (=> d!1140319 (rulesValidInductive!2228 thiss!20629 (t!310934 rules!2768))))

(assert (=> d!1140319 (= (maxPrefix!3181 thiss!20629 (t!310934 rules!2768) lt!1335047) lt!1335086)))

(declare-fun b!3845272 () Bool)

(declare-fun res!1556500 () Bool)

(assert (=> b!3845272 (=> (not res!1556500) (not e!2376308))))

(assert (=> b!3845272 (= res!1556500 (= (++!10333 (list!15158 (charsOf!4116 (_1!23084 (get!13478 lt!1335086)))) (_2!23084 (get!13478 lt!1335086))) lt!1335047))))

(declare-fun b!3845273 () Bool)

(declare-fun res!1556506 () Bool)

(assert (=> b!3845273 (=> (not res!1556506) (not e!2376308))))

(assert (=> b!3845273 (= res!1556506 (= (list!15158 (charsOf!4116 (_1!23084 (get!13478 lt!1335086)))) (originalCharacters!6888 (_1!23084 (get!13478 lt!1335086)))))))

(declare-fun b!3845274 () Bool)

(declare-fun call!282051 () Option!8706)

(assert (=> b!3845274 (= e!2376309 call!282051)))

(declare-fun b!3845275 () Bool)

(declare-fun res!1556501 () Bool)

(assert (=> b!3845275 (=> (not res!1556501) (not e!2376308))))

(declare-fun matchR!5344 (Regex!11193 List!40843) Bool)

(assert (=> b!3845275 (= res!1556501 (matchR!5344 (regex!6288 (rule!9132 (_1!23084 (get!13478 lt!1335086)))) (list!15158 (charsOf!4116 (_1!23084 (get!13478 lt!1335086))))))))

(declare-fun b!3845276 () Bool)

(declare-fun lt!1335090 () Option!8706)

(declare-fun lt!1335089 () Option!8706)

(assert (=> b!3845276 (= e!2376309 (ite (and ((_ is None!8705) lt!1335090) ((_ is None!8705) lt!1335089)) None!8705 (ite ((_ is None!8705) lt!1335089) lt!1335090 (ite ((_ is None!8705) lt!1335090) lt!1335089 (ite (>= (size!30635 (_1!23084 (v!38997 lt!1335090))) (size!30635 (_1!23084 (v!38997 lt!1335089)))) lt!1335090 lt!1335089)))))))

(assert (=> b!3845276 (= lt!1335090 call!282051)))

(assert (=> b!3845276 (= lt!1335089 (maxPrefix!3181 thiss!20629 (t!310934 (t!310934 rules!2768)) lt!1335047))))

(declare-fun bm!282046 () Bool)

(assert (=> bm!282046 (= call!282051 (maxPrefixOneRule!2265 thiss!20629 (h!46141 (t!310934 rules!2768)) lt!1335047))))

(declare-fun b!3845277 () Bool)

(assert (=> b!3845277 (= e!2376307 e!2376308)))

(declare-fun res!1556502 () Bool)

(assert (=> b!3845277 (=> (not res!1556502) (not e!2376308))))

(assert (=> b!3845277 (= res!1556502 (isDefined!6837 lt!1335086))))

(assert (= (and d!1140319 c!669892) b!3845274))

(assert (= (and d!1140319 (not c!669892)) b!3845276))

(assert (= (or b!3845274 b!3845276) bm!282046))

(assert (= (and d!1140319 (not res!1556503)) b!3845277))

(assert (= (and b!3845277 res!1556502) b!3845273))

(assert (= (and b!3845273 res!1556506) b!3845270))

(assert (= (and b!3845270 res!1556504) b!3845272))

(assert (= (and b!3845272 res!1556500) b!3845271))

(assert (= (and b!3845271 res!1556505) b!3845275))

(assert (= (and b!3845275 res!1556501) b!3845269))

(declare-fun m!4399885 () Bool)

(assert (=> b!3845276 m!4399885))

(declare-fun m!4399887 () Bool)

(assert (=> b!3845277 m!4399887))

(declare-fun m!4399889 () Bool)

(assert (=> b!3845269 m!4399889))

(declare-fun m!4399891 () Bool)

(assert (=> b!3845269 m!4399891))

(assert (=> b!3845275 m!4399889))

(declare-fun m!4399893 () Bool)

(assert (=> b!3845275 m!4399893))

(assert (=> b!3845275 m!4399893))

(declare-fun m!4399895 () Bool)

(assert (=> b!3845275 m!4399895))

(assert (=> b!3845275 m!4399895))

(declare-fun m!4399897 () Bool)

(assert (=> b!3845275 m!4399897))

(assert (=> b!3845272 m!4399889))

(assert (=> b!3845272 m!4399893))

(assert (=> b!3845272 m!4399893))

(assert (=> b!3845272 m!4399895))

(assert (=> b!3845272 m!4399895))

(declare-fun m!4399899 () Bool)

(assert (=> b!3845272 m!4399899))

(declare-fun m!4399901 () Bool)

(assert (=> d!1140319 m!4399901))

(assert (=> d!1140319 m!4399757))

(assert (=> d!1140319 m!4399759))

(declare-fun m!4399903 () Bool)

(assert (=> d!1140319 m!4399903))

(declare-fun m!4399905 () Bool)

(assert (=> bm!282046 m!4399905))

(assert (=> b!3845270 m!4399889))

(declare-fun m!4399907 () Bool)

(assert (=> b!3845270 m!4399907))

(assert (=> b!3845270 m!4399881))

(assert (=> b!3845271 m!4399889))

(declare-fun m!4399909 () Bool)

(assert (=> b!3845271 m!4399909))

(assert (=> b!3845271 m!4399909))

(declare-fun m!4399911 () Bool)

(assert (=> b!3845271 m!4399911))

(assert (=> b!3845273 m!4399889))

(assert (=> b!3845273 m!4399893))

(assert (=> b!3845273 m!4399893))

(assert (=> b!3845273 m!4399895))

(assert (=> b!3845171 d!1140319))

(declare-fun b!3845278 () Bool)

(declare-fun e!2376311 () Bool)

(declare-fun e!2376310 () Bool)

(assert (=> b!3845278 (= e!2376311 e!2376310)))

(declare-fun res!1556509 () Bool)

(assert (=> b!3845278 (=> (not res!1556509) (not e!2376310))))

(assert (=> b!3845278 (= res!1556509 (not ((_ is Nil!40719) suffix!1176)))))

(declare-fun d!1140321 () Bool)

(declare-fun e!2376312 () Bool)

(assert (=> d!1140321 e!2376312))

(declare-fun res!1556510 () Bool)

(assert (=> d!1140321 (=> res!1556510 e!2376312)))

(declare-fun lt!1335091 () Bool)

(assert (=> d!1140321 (= res!1556510 (not lt!1335091))))

(assert (=> d!1140321 (= lt!1335091 e!2376311)))

(declare-fun res!1556507 () Bool)

(assert (=> d!1140321 (=> res!1556507 e!2376311)))

(assert (=> d!1140321 (= res!1556507 ((_ is Nil!40719) Nil!40719))))

(assert (=> d!1140321 (= (isPrefix!3387 Nil!40719 suffix!1176) lt!1335091)))

(declare-fun b!3845279 () Bool)

(declare-fun res!1556508 () Bool)

(assert (=> b!3845279 (=> (not res!1556508) (not e!2376310))))

(assert (=> b!3845279 (= res!1556508 (= (head!8087 Nil!40719) (head!8087 suffix!1176)))))

(declare-fun b!3845280 () Bool)

(assert (=> b!3845280 (= e!2376310 (isPrefix!3387 (tail!5815 Nil!40719) (tail!5815 suffix!1176)))))

(declare-fun b!3845281 () Bool)

(assert (=> b!3845281 (= e!2376312 (>= (size!30636 suffix!1176) (size!30636 Nil!40719)))))

(assert (= (and d!1140321 (not res!1556507)) b!3845278))

(assert (= (and b!3845278 res!1556509) b!3845279))

(assert (= (and b!3845279 res!1556508) b!3845280))

(assert (= (and d!1140321 (not res!1556510)) b!3845281))

(declare-fun m!4399913 () Bool)

(assert (=> b!3845279 m!4399913))

(declare-fun m!4399915 () Bool)

(assert (=> b!3845279 m!4399915))

(declare-fun m!4399917 () Bool)

(assert (=> b!3845280 m!4399917))

(declare-fun m!4399919 () Bool)

(assert (=> b!3845280 m!4399919))

(assert (=> b!3845280 m!4399917))

(assert (=> b!3845280 m!4399919))

(declare-fun m!4399921 () Bool)

(assert (=> b!3845280 m!4399921))

(declare-fun m!4399923 () Bool)

(assert (=> b!3845281 m!4399923))

(declare-fun m!4399925 () Bool)

(assert (=> b!3845281 m!4399925))

(assert (=> b!3845192 d!1140321))

(declare-fun d!1140323 () Bool)

(declare-fun res!1556515 () Bool)

(declare-fun e!2376315 () Bool)

(assert (=> d!1140323 (=> (not res!1556515) (not e!2376315))))

(assert (=> d!1140323 (= res!1556515 (not (isEmpty!24084 (originalCharacters!6888 (h!46140 suffixTokens!72)))))))

(assert (=> d!1140323 (= (inv!54864 (h!46140 suffixTokens!72)) e!2376315)))

(declare-fun b!3845286 () Bool)

(declare-fun res!1556516 () Bool)

(assert (=> b!3845286 (=> (not res!1556516) (not e!2376315))))

(declare-fun dynLambda!17585 (Int TokenValue!6518) BalanceConc!24592)

(assert (=> b!3845286 (= res!1556516 (= (originalCharacters!6888 (h!46140 suffixTokens!72)) (list!15158 (dynLambda!17585 (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))) (value!199842 (h!46140 suffixTokens!72))))))))

(declare-fun b!3845287 () Bool)

(assert (=> b!3845287 (= e!2376315 (= (size!30635 (h!46140 suffixTokens!72)) (size!30636 (originalCharacters!6888 (h!46140 suffixTokens!72)))))))

(assert (= (and d!1140323 res!1556515) b!3845286))

(assert (= (and b!3845286 res!1556516) b!3845287))

(declare-fun b_lambda!112389 () Bool)

(assert (=> (not b_lambda!112389) (not b!3845286)))

(declare-fun t!310944 () Bool)

(declare-fun tb!221405 () Bool)

(assert (=> (and b!3845200 (= (toChars!8563 (transformation!6288 (h!46141 rules!2768))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72))))) t!310944) tb!221405))

(declare-fun b!3845292 () Bool)

(declare-fun e!2376318 () Bool)

(declare-fun tp!1165316 () Bool)

(declare-fun inv!54867 (Conc!12499) Bool)

(assert (=> b!3845292 (= e!2376318 (and (inv!54867 (c!669883 (dynLambda!17585 (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))) (value!199842 (h!46140 suffixTokens!72))))) tp!1165316))))

(declare-fun result!269820 () Bool)

(declare-fun inv!54868 (BalanceConc!24592) Bool)

(assert (=> tb!221405 (= result!269820 (and (inv!54868 (dynLambda!17585 (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))) (value!199842 (h!46140 suffixTokens!72)))) e!2376318))))

(assert (= tb!221405 b!3845292))

(declare-fun m!4399927 () Bool)

(assert (=> b!3845292 m!4399927))

(declare-fun m!4399929 () Bool)

(assert (=> tb!221405 m!4399929))

(assert (=> b!3845286 t!310944))

(declare-fun b_and!286775 () Bool)

(assert (= b_and!286753 (and (=> t!310944 result!269820) b_and!286775)))

(declare-fun tb!221407 () Bool)

(declare-fun t!310946 () Bool)

(assert (=> (and b!3845173 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72))))) t!310946) tb!221407))

(declare-fun result!269824 () Bool)

(assert (= result!269824 result!269820))

(assert (=> b!3845286 t!310946))

(declare-fun b_and!286777 () Bool)

(assert (= b_and!286757 (and (=> t!310946 result!269824) b_and!286777)))

(declare-fun t!310948 () Bool)

(declare-fun tb!221409 () Bool)

(assert (=> (and b!3845166 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72))))) t!310948) tb!221409))

(declare-fun result!269826 () Bool)

(assert (= result!269826 result!269820))

(assert (=> b!3845286 t!310948))

(declare-fun b_and!286779 () Bool)

(assert (= b_and!286761 (and (=> t!310948 result!269826) b_and!286779)))

(declare-fun tb!221411 () Bool)

(declare-fun t!310950 () Bool)

(assert (=> (and b!3845170 (= (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72))))) t!310950) tb!221411))

(declare-fun result!269828 () Bool)

(assert (= result!269828 result!269820))

(assert (=> b!3845286 t!310950))

(declare-fun b_and!286781 () Bool)

(assert (= b_and!286765 (and (=> t!310950 result!269828) b_and!286781)))

(declare-fun m!4399931 () Bool)

(assert (=> d!1140323 m!4399931))

(declare-fun m!4399933 () Bool)

(assert (=> b!3845286 m!4399933))

(assert (=> b!3845286 m!4399933))

(declare-fun m!4399935 () Bool)

(assert (=> b!3845286 m!4399935))

(declare-fun m!4399937 () Bool)

(assert (=> b!3845287 m!4399937))

(assert (=> b!3845194 d!1140323))

(declare-fun d!1140325 () Bool)

(declare-fun res!1556519 () Bool)

(declare-fun e!2376321 () Bool)

(assert (=> d!1140325 (=> (not res!1556519) (not e!2376321))))

(declare-fun rulesValid!2427 (LexerInterface!5877 List!40845) Bool)

(assert (=> d!1140325 (= res!1556519 (rulesValid!2427 thiss!20629 rules!2768))))

(assert (=> d!1140325 (= (rulesInvariant!5220 thiss!20629 rules!2768) e!2376321)))

(declare-fun b!3845295 () Bool)

(declare-datatypes ((List!40846 0))(
  ( (Nil!40722) (Cons!40722 (h!46142 String!46308) (t!311075 List!40846)) )
))
(declare-fun noDuplicateTag!2428 (LexerInterface!5877 List!40845 List!40846) Bool)

(assert (=> b!3845295 (= e!2376321 (noDuplicateTag!2428 thiss!20629 rules!2768 Nil!40722))))

(assert (= (and d!1140325 res!1556519) b!3845295))

(declare-fun m!4399939 () Bool)

(assert (=> d!1140325 m!4399939))

(declare-fun m!4399941 () Bool)

(assert (=> b!3845295 m!4399941))

(assert (=> b!3845172 d!1140325))

(declare-fun b!3845296 () Bool)

(declare-fun e!2376323 () Bool)

(declare-fun lt!1335092 () Option!8706)

(assert (=> b!3845296 (= e!2376323 (contains!8238 rules!2768 (rule!9132 (_1!23084 (get!13478 lt!1335092)))))))

(declare-fun b!3845297 () Bool)

(declare-fun res!1556524 () Bool)

(assert (=> b!3845297 (=> (not res!1556524) (not e!2376323))))

(assert (=> b!3845297 (= res!1556524 (< (size!30636 (_2!23084 (get!13478 lt!1335092))) (size!30636 (++!10333 prefix!426 Nil!40719))))))

(declare-fun b!3845298 () Bool)

(declare-fun res!1556525 () Bool)

(assert (=> b!3845298 (=> (not res!1556525) (not e!2376323))))

(assert (=> b!3845298 (= res!1556525 (= (value!199842 (_1!23084 (get!13478 lt!1335092))) (apply!9531 (transformation!6288 (rule!9132 (_1!23084 (get!13478 lt!1335092)))) (seqFromList!4559 (originalCharacters!6888 (_1!23084 (get!13478 lt!1335092)))))))))

(declare-fun d!1140327 () Bool)

(declare-fun e!2376322 () Bool)

(assert (=> d!1140327 e!2376322))

(declare-fun res!1556523 () Bool)

(assert (=> d!1140327 (=> res!1556523 e!2376322)))

(assert (=> d!1140327 (= res!1556523 (isEmpty!24086 lt!1335092))))

(declare-fun e!2376324 () Option!8706)

(assert (=> d!1140327 (= lt!1335092 e!2376324)))

(declare-fun c!669893 () Bool)

(assert (=> d!1140327 (= c!669893 (and ((_ is Cons!40721) rules!2768) ((_ is Nil!40721) (t!310934 rules!2768))))))

(declare-fun lt!1335094 () Unit!58406)

(declare-fun lt!1335093 () Unit!58406)

(assert (=> d!1140327 (= lt!1335094 lt!1335093)))

(assert (=> d!1140327 (isPrefix!3387 (++!10333 prefix!426 Nil!40719) (++!10333 prefix!426 Nil!40719))))

(assert (=> d!1140327 (= lt!1335093 (lemmaIsPrefixRefl!2160 (++!10333 prefix!426 Nil!40719) (++!10333 prefix!426 Nil!40719)))))

(assert (=> d!1140327 (rulesValidInductive!2228 thiss!20629 rules!2768)))

(assert (=> d!1140327 (= (maxPrefix!3181 thiss!20629 rules!2768 (++!10333 prefix!426 Nil!40719)) lt!1335092)))

(declare-fun b!3845299 () Bool)

(declare-fun res!1556520 () Bool)

(assert (=> b!3845299 (=> (not res!1556520) (not e!2376323))))

(assert (=> b!3845299 (= res!1556520 (= (++!10333 (list!15158 (charsOf!4116 (_1!23084 (get!13478 lt!1335092)))) (_2!23084 (get!13478 lt!1335092))) (++!10333 prefix!426 Nil!40719)))))

(declare-fun b!3845300 () Bool)

(declare-fun res!1556526 () Bool)

(assert (=> b!3845300 (=> (not res!1556526) (not e!2376323))))

(assert (=> b!3845300 (= res!1556526 (= (list!15158 (charsOf!4116 (_1!23084 (get!13478 lt!1335092)))) (originalCharacters!6888 (_1!23084 (get!13478 lt!1335092)))))))

(declare-fun b!3845301 () Bool)

(declare-fun call!282052 () Option!8706)

(assert (=> b!3845301 (= e!2376324 call!282052)))

(declare-fun b!3845302 () Bool)

(declare-fun res!1556521 () Bool)

(assert (=> b!3845302 (=> (not res!1556521) (not e!2376323))))

(assert (=> b!3845302 (= res!1556521 (matchR!5344 (regex!6288 (rule!9132 (_1!23084 (get!13478 lt!1335092)))) (list!15158 (charsOf!4116 (_1!23084 (get!13478 lt!1335092))))))))

(declare-fun b!3845303 () Bool)

(declare-fun lt!1335096 () Option!8706)

(declare-fun lt!1335095 () Option!8706)

(assert (=> b!3845303 (= e!2376324 (ite (and ((_ is None!8705) lt!1335096) ((_ is None!8705) lt!1335095)) None!8705 (ite ((_ is None!8705) lt!1335095) lt!1335096 (ite ((_ is None!8705) lt!1335096) lt!1335095 (ite (>= (size!30635 (_1!23084 (v!38997 lt!1335096))) (size!30635 (_1!23084 (v!38997 lt!1335095)))) lt!1335096 lt!1335095)))))))

(assert (=> b!3845303 (= lt!1335096 call!282052)))

(assert (=> b!3845303 (= lt!1335095 (maxPrefix!3181 thiss!20629 (t!310934 rules!2768) (++!10333 prefix!426 Nil!40719)))))

(declare-fun bm!282047 () Bool)

(assert (=> bm!282047 (= call!282052 (maxPrefixOneRule!2265 thiss!20629 (h!46141 rules!2768) (++!10333 prefix!426 Nil!40719)))))

(declare-fun b!3845304 () Bool)

(assert (=> b!3845304 (= e!2376322 e!2376323)))

(declare-fun res!1556522 () Bool)

(assert (=> b!3845304 (=> (not res!1556522) (not e!2376323))))

(assert (=> b!3845304 (= res!1556522 (isDefined!6837 lt!1335092))))

(assert (= (and d!1140327 c!669893) b!3845301))

(assert (= (and d!1140327 (not c!669893)) b!3845303))

(assert (= (or b!3845301 b!3845303) bm!282047))

(assert (= (and d!1140327 (not res!1556523)) b!3845304))

(assert (= (and b!3845304 res!1556522) b!3845300))

(assert (= (and b!3845300 res!1556526) b!3845297))

(assert (= (and b!3845297 res!1556524) b!3845299))

(assert (= (and b!3845299 res!1556520) b!3845298))

(assert (= (and b!3845298 res!1556525) b!3845302))

(assert (= (and b!3845302 res!1556521) b!3845296))

(assert (=> b!3845303 m!4399829))

(declare-fun m!4399943 () Bool)

(assert (=> b!3845303 m!4399943))

(declare-fun m!4399945 () Bool)

(assert (=> b!3845304 m!4399945))

(declare-fun m!4399947 () Bool)

(assert (=> b!3845296 m!4399947))

(declare-fun m!4399949 () Bool)

(assert (=> b!3845296 m!4399949))

(assert (=> b!3845302 m!4399947))

(declare-fun m!4399951 () Bool)

(assert (=> b!3845302 m!4399951))

(assert (=> b!3845302 m!4399951))

(declare-fun m!4399953 () Bool)

(assert (=> b!3845302 m!4399953))

(assert (=> b!3845302 m!4399953))

(declare-fun m!4399955 () Bool)

(assert (=> b!3845302 m!4399955))

(assert (=> b!3845299 m!4399947))

(assert (=> b!3845299 m!4399951))

(assert (=> b!3845299 m!4399951))

(assert (=> b!3845299 m!4399953))

(assert (=> b!3845299 m!4399953))

(declare-fun m!4399957 () Bool)

(assert (=> b!3845299 m!4399957))

(declare-fun m!4399959 () Bool)

(assert (=> d!1140327 m!4399959))

(assert (=> d!1140327 m!4399829))

(assert (=> d!1140327 m!4399829))

(declare-fun m!4399961 () Bool)

(assert (=> d!1140327 m!4399961))

(assert (=> d!1140327 m!4399829))

(assert (=> d!1140327 m!4399829))

(declare-fun m!4399963 () Bool)

(assert (=> d!1140327 m!4399963))

(assert (=> d!1140327 m!4399761))

(assert (=> bm!282047 m!4399829))

(declare-fun m!4399965 () Bool)

(assert (=> bm!282047 m!4399965))

(assert (=> b!3845297 m!4399947))

(declare-fun m!4399967 () Bool)

(assert (=> b!3845297 m!4399967))

(assert (=> b!3845297 m!4399829))

(declare-fun m!4399969 () Bool)

(assert (=> b!3845297 m!4399969))

(assert (=> b!3845298 m!4399947))

(declare-fun m!4399971 () Bool)

(assert (=> b!3845298 m!4399971))

(assert (=> b!3845298 m!4399971))

(declare-fun m!4399973 () Bool)

(assert (=> b!3845298 m!4399973))

(assert (=> b!3845300 m!4399947))

(assert (=> b!3845300 m!4399951))

(assert (=> b!3845300 m!4399951))

(assert (=> b!3845300 m!4399953))

(assert (=> b!3845190 d!1140327))

(declare-fun d!1140329 () Bool)

(assert (=> d!1140329 (= (maxPrefix!3181 thiss!20629 rules!2768 (++!10333 prefix!426 Nil!40719)) (Some!8705 (tuple2!39901 (_1!23084 (v!38997 lt!1335054)) Nil!40719)))))

(declare-fun lt!1335099 () Unit!58406)

(declare-fun choose!22623 (LexerInterface!5877 List!40845 List!40843 List!40843 List!40843 Token!11714 List!40843 List!40843) Unit!58406)

(assert (=> d!1140329 (= lt!1335099 (choose!22623 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40719 (_1!23084 (v!38997 lt!1335054)) suffix!1176 Nil!40719))))

(assert (=> d!1140329 (not (isEmpty!24083 rules!2768))))

(assert (=> d!1140329 (= (lemmaMaxPrefixThenWithShorterSuffix!18 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40719 (_1!23084 (v!38997 lt!1335054)) suffix!1176 Nil!40719) lt!1335099)))

(declare-fun bs!582693 () Bool)

(assert (= bs!582693 d!1140329))

(assert (=> bs!582693 m!4399829))

(assert (=> bs!582693 m!4399829))

(assert (=> bs!582693 m!4399831))

(declare-fun m!4399975 () Bool)

(assert (=> bs!582693 m!4399975))

(assert (=> bs!582693 m!4399777))

(assert (=> b!3845190 d!1140329))

(declare-fun d!1140331 () Bool)

(assert (=> d!1140331 (= (isDefined!6837 lt!1335053) (not (isEmpty!24086 lt!1335053)))))

(declare-fun bs!582694 () Bool)

(assert (= bs!582694 d!1140331))

(declare-fun m!4399977 () Bool)

(assert (=> bs!582694 m!4399977))

(assert (=> b!3845190 d!1140331))

(declare-fun b!3845314 () Bool)

(declare-fun e!2376330 () List!40843)

(assert (=> b!3845314 (= e!2376330 (Cons!40719 (h!46139 prefix!426) (++!10333 (t!310932 prefix!426) Nil!40719)))))

(declare-fun d!1140333 () Bool)

(declare-fun e!2376329 () Bool)

(assert (=> d!1140333 e!2376329))

(declare-fun res!1556531 () Bool)

(assert (=> d!1140333 (=> (not res!1556531) (not e!2376329))))

(declare-fun lt!1335102 () List!40843)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6051 (List!40843) (InoxSet C!22572))

(assert (=> d!1140333 (= res!1556531 (= (content!6051 lt!1335102) ((_ map or) (content!6051 prefix!426) (content!6051 Nil!40719))))))

(assert (=> d!1140333 (= lt!1335102 e!2376330)))

(declare-fun c!669896 () Bool)

(assert (=> d!1140333 (= c!669896 ((_ is Nil!40719) prefix!426))))

(assert (=> d!1140333 (= (++!10333 prefix!426 Nil!40719) lt!1335102)))

(declare-fun b!3845316 () Bool)

(assert (=> b!3845316 (= e!2376329 (or (not (= Nil!40719 Nil!40719)) (= lt!1335102 prefix!426)))))

(declare-fun b!3845315 () Bool)

(declare-fun res!1556532 () Bool)

(assert (=> b!3845315 (=> (not res!1556532) (not e!2376329))))

(assert (=> b!3845315 (= res!1556532 (= (size!30636 lt!1335102) (+ (size!30636 prefix!426) (size!30636 Nil!40719))))))

(declare-fun b!3845313 () Bool)

(assert (=> b!3845313 (= e!2376330 Nil!40719)))

(assert (= (and d!1140333 c!669896) b!3845313))

(assert (= (and d!1140333 (not c!669896)) b!3845314))

(assert (= (and d!1140333 res!1556531) b!3845315))

(assert (= (and b!3845315 res!1556532) b!3845316))

(declare-fun m!4399979 () Bool)

(assert (=> b!3845314 m!4399979))

(declare-fun m!4399981 () Bool)

(assert (=> d!1140333 m!4399981))

(declare-fun m!4399983 () Bool)

(assert (=> d!1140333 m!4399983))

(declare-fun m!4399985 () Bool)

(assert (=> d!1140333 m!4399985))

(declare-fun m!4399987 () Bool)

(assert (=> b!3845315 m!4399987))

(declare-fun m!4399989 () Bool)

(assert (=> b!3845315 m!4399989))

(assert (=> b!3845315 m!4399925))

(assert (=> b!3845190 d!1140333))

(declare-fun b!3845317 () Bool)

(declare-fun e!2376332 () Bool)

(declare-fun lt!1335103 () Option!8706)

(assert (=> b!3845317 (= e!2376332 (contains!8238 rules!2768 (rule!9132 (_1!23084 (get!13478 lt!1335103)))))))

(declare-fun b!3845318 () Bool)

(declare-fun res!1556537 () Bool)

(assert (=> b!3845318 (=> (not res!1556537) (not e!2376332))))

(assert (=> b!3845318 (= res!1556537 (< (size!30636 (_2!23084 (get!13478 lt!1335103))) (size!30636 prefix!426)))))

(declare-fun b!3845319 () Bool)

(declare-fun res!1556538 () Bool)

(assert (=> b!3845319 (=> (not res!1556538) (not e!2376332))))

(assert (=> b!3845319 (= res!1556538 (= (value!199842 (_1!23084 (get!13478 lt!1335103))) (apply!9531 (transformation!6288 (rule!9132 (_1!23084 (get!13478 lt!1335103)))) (seqFromList!4559 (originalCharacters!6888 (_1!23084 (get!13478 lt!1335103)))))))))

(declare-fun d!1140335 () Bool)

(declare-fun e!2376331 () Bool)

(assert (=> d!1140335 e!2376331))

(declare-fun res!1556536 () Bool)

(assert (=> d!1140335 (=> res!1556536 e!2376331)))

(assert (=> d!1140335 (= res!1556536 (isEmpty!24086 lt!1335103))))

(declare-fun e!2376333 () Option!8706)

(assert (=> d!1140335 (= lt!1335103 e!2376333)))

(declare-fun c!669897 () Bool)

(assert (=> d!1140335 (= c!669897 (and ((_ is Cons!40721) rules!2768) ((_ is Nil!40721) (t!310934 rules!2768))))))

(declare-fun lt!1335105 () Unit!58406)

(declare-fun lt!1335104 () Unit!58406)

(assert (=> d!1140335 (= lt!1335105 lt!1335104)))

(assert (=> d!1140335 (isPrefix!3387 prefix!426 prefix!426)))

(assert (=> d!1140335 (= lt!1335104 (lemmaIsPrefixRefl!2160 prefix!426 prefix!426))))

(assert (=> d!1140335 (rulesValidInductive!2228 thiss!20629 rules!2768)))

(assert (=> d!1140335 (= (maxPrefix!3181 thiss!20629 rules!2768 prefix!426) lt!1335103)))

(declare-fun b!3845320 () Bool)

(declare-fun res!1556533 () Bool)

(assert (=> b!3845320 (=> (not res!1556533) (not e!2376332))))

(assert (=> b!3845320 (= res!1556533 (= (++!10333 (list!15158 (charsOf!4116 (_1!23084 (get!13478 lt!1335103)))) (_2!23084 (get!13478 lt!1335103))) prefix!426))))

(declare-fun b!3845321 () Bool)

(declare-fun res!1556539 () Bool)

(assert (=> b!3845321 (=> (not res!1556539) (not e!2376332))))

(assert (=> b!3845321 (= res!1556539 (= (list!15158 (charsOf!4116 (_1!23084 (get!13478 lt!1335103)))) (originalCharacters!6888 (_1!23084 (get!13478 lt!1335103)))))))

(declare-fun b!3845322 () Bool)

(declare-fun call!282053 () Option!8706)

(assert (=> b!3845322 (= e!2376333 call!282053)))

(declare-fun b!3845323 () Bool)

(declare-fun res!1556534 () Bool)

(assert (=> b!3845323 (=> (not res!1556534) (not e!2376332))))

(assert (=> b!3845323 (= res!1556534 (matchR!5344 (regex!6288 (rule!9132 (_1!23084 (get!13478 lt!1335103)))) (list!15158 (charsOf!4116 (_1!23084 (get!13478 lt!1335103))))))))

(declare-fun b!3845324 () Bool)

(declare-fun lt!1335107 () Option!8706)

(declare-fun lt!1335106 () Option!8706)

(assert (=> b!3845324 (= e!2376333 (ite (and ((_ is None!8705) lt!1335107) ((_ is None!8705) lt!1335106)) None!8705 (ite ((_ is None!8705) lt!1335106) lt!1335107 (ite ((_ is None!8705) lt!1335107) lt!1335106 (ite (>= (size!30635 (_1!23084 (v!38997 lt!1335107))) (size!30635 (_1!23084 (v!38997 lt!1335106)))) lt!1335107 lt!1335106)))))))

(assert (=> b!3845324 (= lt!1335107 call!282053)))

(assert (=> b!3845324 (= lt!1335106 (maxPrefix!3181 thiss!20629 (t!310934 rules!2768) prefix!426))))

(declare-fun bm!282048 () Bool)

(assert (=> bm!282048 (= call!282053 (maxPrefixOneRule!2265 thiss!20629 (h!46141 rules!2768) prefix!426))))

(declare-fun b!3845325 () Bool)

(assert (=> b!3845325 (= e!2376331 e!2376332)))

(declare-fun res!1556535 () Bool)

(assert (=> b!3845325 (=> (not res!1556535) (not e!2376332))))

(assert (=> b!3845325 (= res!1556535 (isDefined!6837 lt!1335103))))

(assert (= (and d!1140335 c!669897) b!3845322))

(assert (= (and d!1140335 (not c!669897)) b!3845324))

(assert (= (or b!3845322 b!3845324) bm!282048))

(assert (= (and d!1140335 (not res!1556536)) b!3845325))

(assert (= (and b!3845325 res!1556535) b!3845321))

(assert (= (and b!3845321 res!1556539) b!3845318))

(assert (= (and b!3845318 res!1556537) b!3845320))

(assert (= (and b!3845320 res!1556533) b!3845319))

(assert (= (and b!3845319 res!1556538) b!3845323))

(assert (= (and b!3845323 res!1556534) b!3845317))

(declare-fun m!4399991 () Bool)

(assert (=> b!3845324 m!4399991))

(declare-fun m!4399993 () Bool)

(assert (=> b!3845325 m!4399993))

(declare-fun m!4399995 () Bool)

(assert (=> b!3845317 m!4399995))

(declare-fun m!4399997 () Bool)

(assert (=> b!3845317 m!4399997))

(assert (=> b!3845323 m!4399995))

(declare-fun m!4399999 () Bool)

(assert (=> b!3845323 m!4399999))

(assert (=> b!3845323 m!4399999))

(declare-fun m!4400001 () Bool)

(assert (=> b!3845323 m!4400001))

(assert (=> b!3845323 m!4400001))

(declare-fun m!4400003 () Bool)

(assert (=> b!3845323 m!4400003))

(assert (=> b!3845320 m!4399995))

(assert (=> b!3845320 m!4399999))

(assert (=> b!3845320 m!4399999))

(assert (=> b!3845320 m!4400001))

(assert (=> b!3845320 m!4400001))

(declare-fun m!4400005 () Bool)

(assert (=> b!3845320 m!4400005))

(declare-fun m!4400007 () Bool)

(assert (=> d!1140335 m!4400007))

(declare-fun m!4400009 () Bool)

(assert (=> d!1140335 m!4400009))

(declare-fun m!4400011 () Bool)

(assert (=> d!1140335 m!4400011))

(assert (=> d!1140335 m!4399761))

(declare-fun m!4400013 () Bool)

(assert (=> bm!282048 m!4400013))

(assert (=> b!3845318 m!4399995))

(declare-fun m!4400015 () Bool)

(assert (=> b!3845318 m!4400015))

(assert (=> b!3845318 m!4399989))

(assert (=> b!3845319 m!4399995))

(declare-fun m!4400017 () Bool)

(assert (=> b!3845319 m!4400017))

(assert (=> b!3845319 m!4400017))

(declare-fun m!4400019 () Bool)

(assert (=> b!3845319 m!4400019))

(assert (=> b!3845321 m!4399995))

(assert (=> b!3845321 m!4399999))

(assert (=> b!3845321 m!4399999))

(assert (=> b!3845321 m!4400001))

(assert (=> b!3845190 d!1140335))

(declare-fun b!3845336 () Bool)

(declare-fun e!2376341 () Bool)

(declare-fun lt!1335115 () tuple2!39898)

(assert (=> b!3845336 (= e!2376341 (not (isEmpty!24082 (_1!23083 lt!1335115))))))

(declare-fun b!3845337 () Bool)

(declare-fun e!2376342 () Bool)

(assert (=> b!3845337 (= e!2376342 e!2376341)))

(declare-fun res!1556542 () Bool)

(assert (=> b!3845337 (= res!1556542 (< (size!30636 (_2!23083 lt!1335115)) (size!30636 suffix!1176)))))

(assert (=> b!3845337 (=> (not res!1556542) (not e!2376341))))

(declare-fun b!3845338 () Bool)

(declare-fun e!2376340 () tuple2!39898)

(assert (=> b!3845338 (= e!2376340 (tuple2!39899 Nil!40720 suffix!1176))))

(declare-fun b!3845339 () Bool)

(assert (=> b!3845339 (= e!2376342 (= (_2!23083 lt!1335115) suffix!1176))))

(declare-fun d!1140337 () Bool)

(assert (=> d!1140337 e!2376342))

(declare-fun c!669903 () Bool)

(declare-fun size!30638 (List!40844) Int)

(assert (=> d!1140337 (= c!669903 (> (size!30638 (_1!23083 lt!1335115)) 0))))

(assert (=> d!1140337 (= lt!1335115 e!2376340)))

(declare-fun c!669902 () Bool)

(declare-fun lt!1335116 () Option!8706)

(assert (=> d!1140337 (= c!669902 ((_ is Some!8705) lt!1335116))))

(assert (=> d!1140337 (= lt!1335116 (maxPrefix!3181 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1140337 (= (lexList!1645 thiss!20629 rules!2768 suffix!1176) lt!1335115)))

(declare-fun b!3845340 () Bool)

(declare-fun lt!1335114 () tuple2!39898)

(assert (=> b!3845340 (= e!2376340 (tuple2!39899 (Cons!40720 (_1!23084 (v!38997 lt!1335116)) (_1!23083 lt!1335114)) (_2!23083 lt!1335114)))))

(assert (=> b!3845340 (= lt!1335114 (lexList!1645 thiss!20629 rules!2768 (_2!23084 (v!38997 lt!1335116))))))

(assert (= (and d!1140337 c!669902) b!3845340))

(assert (= (and d!1140337 (not c!669902)) b!3845338))

(assert (= (and d!1140337 c!669903) b!3845337))

(assert (= (and d!1140337 (not c!669903)) b!3845339))

(assert (= (and b!3845337 res!1556542) b!3845336))

(declare-fun m!4400021 () Bool)

(assert (=> b!3845336 m!4400021))

(declare-fun m!4400023 () Bool)

(assert (=> b!3845337 m!4400023))

(assert (=> b!3845337 m!4399923))

(declare-fun m!4400025 () Bool)

(assert (=> d!1140337 m!4400025))

(declare-fun m!4400027 () Bool)

(assert (=> d!1140337 m!4400027))

(declare-fun m!4400029 () Bool)

(assert (=> b!3845340 m!4400029))

(assert (=> b!3845168 d!1140337))

(declare-fun d!1140339 () Bool)

(assert (=> d!1140339 (= (isEmpty!24084 prefix!426) ((_ is Nil!40719) prefix!426))))

(assert (=> b!3845191 d!1140339))

(declare-fun b!3845351 () Bool)

(declare-fun res!1556545 () Bool)

(declare-fun e!2376350 () Bool)

(assert (=> b!3845351 (=> res!1556545 e!2376350)))

(assert (=> b!3845351 (= res!1556545 (not ((_ is IntegerValue!19556) (value!199842 (_1!23084 (v!38997 err!4305))))))))

(declare-fun e!2376351 () Bool)

(assert (=> b!3845351 (= e!2376351 e!2376350)))

(declare-fun d!1140341 () Bool)

(declare-fun c!669909 () Bool)

(assert (=> d!1140341 (= c!669909 ((_ is IntegerValue!19554) (value!199842 (_1!23084 (v!38997 err!4305)))))))

(declare-fun e!2376349 () Bool)

(assert (=> d!1140341 (= (inv!21 (value!199842 (_1!23084 (v!38997 err!4305)))) e!2376349)))

(declare-fun b!3845352 () Bool)

(declare-fun inv!17 (TokenValue!6518) Bool)

(assert (=> b!3845352 (= e!2376351 (inv!17 (value!199842 (_1!23084 (v!38997 err!4305)))))))

(declare-fun b!3845353 () Bool)

(declare-fun inv!15 (TokenValue!6518) Bool)

(assert (=> b!3845353 (= e!2376350 (inv!15 (value!199842 (_1!23084 (v!38997 err!4305)))))))

(declare-fun b!3845354 () Bool)

(declare-fun inv!16 (TokenValue!6518) Bool)

(assert (=> b!3845354 (= e!2376349 (inv!16 (value!199842 (_1!23084 (v!38997 err!4305)))))))

(declare-fun b!3845355 () Bool)

(assert (=> b!3845355 (= e!2376349 e!2376351)))

(declare-fun c!669908 () Bool)

(assert (=> b!3845355 (= c!669908 ((_ is IntegerValue!19555) (value!199842 (_1!23084 (v!38997 err!4305)))))))

(assert (= (and d!1140341 c!669909) b!3845354))

(assert (= (and d!1140341 (not c!669909)) b!3845355))

(assert (= (and b!3845355 c!669908) b!3845352))

(assert (= (and b!3845355 (not c!669908)) b!3845351))

(assert (= (and b!3845351 (not res!1556545)) b!3845353))

(declare-fun m!4400031 () Bool)

(assert (=> b!3845352 m!4400031))

(declare-fun m!4400033 () Bool)

(assert (=> b!3845353 m!4400033))

(declare-fun m!4400035 () Bool)

(assert (=> b!3845354 m!4400035))

(assert (=> b!3845187 d!1140341))

(declare-fun d!1140343 () Bool)

(declare-fun lt!1335119 () Int)

(assert (=> d!1140343 (>= lt!1335119 0)))

(declare-fun e!2376354 () Int)

(assert (=> d!1140343 (= lt!1335119 e!2376354)))

(declare-fun c!669912 () Bool)

(assert (=> d!1140343 (= c!669912 ((_ is Nil!40719) (originalCharacters!6888 (_1!23084 (v!38997 lt!1335054)))))))

(assert (=> d!1140343 (= (size!30636 (originalCharacters!6888 (_1!23084 (v!38997 lt!1335054)))) lt!1335119)))

(declare-fun b!3845360 () Bool)

(assert (=> b!3845360 (= e!2376354 0)))

(declare-fun b!3845361 () Bool)

(assert (=> b!3845361 (= e!2376354 (+ 1 (size!30636 (t!310932 (originalCharacters!6888 (_1!23084 (v!38997 lt!1335054)))))))))

(assert (= (and d!1140343 c!669912) b!3845360))

(assert (= (and d!1140343 (not c!669912)) b!3845361))

(declare-fun m!4400037 () Bool)

(assert (=> b!3845361 m!4400037))

(assert (=> b!3845189 d!1140343))

(declare-fun b!3845362 () Bool)

(declare-fun res!1556546 () Bool)

(declare-fun e!2376356 () Bool)

(assert (=> b!3845362 (=> res!1556546 e!2376356)))

(assert (=> b!3845362 (= res!1556546 (not ((_ is IntegerValue!19556) (value!199842 (h!46140 suffixTokens!72)))))))

(declare-fun e!2376357 () Bool)

(assert (=> b!3845362 (= e!2376357 e!2376356)))

(declare-fun d!1140345 () Bool)

(declare-fun c!669914 () Bool)

(assert (=> d!1140345 (= c!669914 ((_ is IntegerValue!19554) (value!199842 (h!46140 suffixTokens!72))))))

(declare-fun e!2376355 () Bool)

(assert (=> d!1140345 (= (inv!21 (value!199842 (h!46140 suffixTokens!72))) e!2376355)))

(declare-fun b!3845363 () Bool)

(assert (=> b!3845363 (= e!2376357 (inv!17 (value!199842 (h!46140 suffixTokens!72))))))

(declare-fun b!3845364 () Bool)

(assert (=> b!3845364 (= e!2376356 (inv!15 (value!199842 (h!46140 suffixTokens!72))))))

(declare-fun b!3845365 () Bool)

(assert (=> b!3845365 (= e!2376355 (inv!16 (value!199842 (h!46140 suffixTokens!72))))))

(declare-fun b!3845366 () Bool)

(assert (=> b!3845366 (= e!2376355 e!2376357)))

(declare-fun c!669913 () Bool)

(assert (=> b!3845366 (= c!669913 ((_ is IntegerValue!19555) (value!199842 (h!46140 suffixTokens!72))))))

(assert (= (and d!1140345 c!669914) b!3845365))

(assert (= (and d!1140345 (not c!669914)) b!3845366))

(assert (= (and b!3845366 c!669913) b!3845363))

(assert (= (and b!3845366 (not c!669913)) b!3845362))

(assert (= (and b!3845362 (not res!1556546)) b!3845364))

(declare-fun m!4400039 () Bool)

(assert (=> b!3845363 m!4400039))

(declare-fun m!4400041 () Bool)

(assert (=> b!3845364 m!4400041))

(declare-fun m!4400043 () Bool)

(assert (=> b!3845365 m!4400043))

(assert (=> b!3845167 d!1140345))

(declare-fun b!3845375 () Bool)

(declare-fun e!2376362 () List!40844)

(assert (=> b!3845375 (= e!2376362 (_1!23083 lt!1335033))))

(declare-fun b!3845376 () Bool)

(assert (=> b!3845376 (= e!2376362 (Cons!40720 (h!46140 lt!1335045) (++!10334 (t!310933 lt!1335045) (_1!23083 lt!1335033))))))

(declare-fun lt!1335122 () List!40844)

(declare-fun b!3845378 () Bool)

(declare-fun e!2376363 () Bool)

(assert (=> b!3845378 (= e!2376363 (or (not (= (_1!23083 lt!1335033) Nil!40720)) (= lt!1335122 lt!1335045)))))

(declare-fun b!3845377 () Bool)

(declare-fun res!1556551 () Bool)

(assert (=> b!3845377 (=> (not res!1556551) (not e!2376363))))

(assert (=> b!3845377 (= res!1556551 (= (size!30638 lt!1335122) (+ (size!30638 lt!1335045) (size!30638 (_1!23083 lt!1335033)))))))

(declare-fun d!1140347 () Bool)

(assert (=> d!1140347 e!2376363))

(declare-fun res!1556552 () Bool)

(assert (=> d!1140347 (=> (not res!1556552) (not e!2376363))))

(declare-fun content!6052 (List!40844) (InoxSet Token!11714))

(assert (=> d!1140347 (= res!1556552 (= (content!6052 lt!1335122) ((_ map or) (content!6052 lt!1335045) (content!6052 (_1!23083 lt!1335033)))))))

(assert (=> d!1140347 (= lt!1335122 e!2376362)))

(declare-fun c!669917 () Bool)

(assert (=> d!1140347 (= c!669917 ((_ is Nil!40720) lt!1335045))))

(assert (=> d!1140347 (= (++!10334 lt!1335045 (_1!23083 lt!1335033)) lt!1335122)))

(assert (= (and d!1140347 c!669917) b!3845375))

(assert (= (and d!1140347 (not c!669917)) b!3845376))

(assert (= (and d!1140347 res!1556552) b!3845377))

(assert (= (and b!3845377 res!1556551) b!3845378))

(declare-fun m!4400045 () Bool)

(assert (=> b!3845376 m!4400045))

(declare-fun m!4400047 () Bool)

(assert (=> b!3845377 m!4400047))

(declare-fun m!4400049 () Bool)

(assert (=> b!3845377 m!4400049))

(declare-fun m!4400051 () Bool)

(assert (=> b!3845377 m!4400051))

(declare-fun m!4400053 () Bool)

(assert (=> d!1140347 m!4400053))

(declare-fun m!4400055 () Bool)

(assert (=> d!1140347 m!4400055))

(declare-fun m!4400057 () Bool)

(assert (=> d!1140347 m!4400057))

(assert (=> b!3845188 d!1140347))

(declare-fun d!1140349 () Bool)

(assert (=> d!1140349 (= (get!13478 lt!1335053) (v!38997 lt!1335053))))

(assert (=> b!3845185 d!1140349))

(declare-fun d!1140351 () Bool)

(assert (=> d!1140351 (= (isEmpty!24082 prefixTokens!80) ((_ is Nil!40720) prefixTokens!80))))

(assert (=> b!3845184 d!1140351))

(declare-fun d!1140353 () Bool)

(assert (=> d!1140353 (= (isEmpty!24083 rules!2768) ((_ is Nil!40721) rules!2768))))

(assert (=> b!3845186 d!1140353))

(declare-fun b!3845379 () Bool)

(declare-fun e!2376365 () Bool)

(declare-fun lt!1335123 () Option!8706)

(assert (=> b!3845379 (= e!2376365 (contains!8238 rules!2768 (rule!9132 (_1!23084 (get!13478 lt!1335123)))))))

(declare-fun b!3845380 () Bool)

(declare-fun res!1556557 () Bool)

(assert (=> b!3845380 (=> (not res!1556557) (not e!2376365))))

(assert (=> b!3845380 (= res!1556557 (< (size!30636 (_2!23084 (get!13478 lt!1335123))) (size!30636 lt!1335047)))))

(declare-fun b!3845381 () Bool)

(declare-fun res!1556558 () Bool)

(assert (=> b!3845381 (=> (not res!1556558) (not e!2376365))))

(assert (=> b!3845381 (= res!1556558 (= (value!199842 (_1!23084 (get!13478 lt!1335123))) (apply!9531 (transformation!6288 (rule!9132 (_1!23084 (get!13478 lt!1335123)))) (seqFromList!4559 (originalCharacters!6888 (_1!23084 (get!13478 lt!1335123)))))))))

(declare-fun d!1140355 () Bool)

(declare-fun e!2376364 () Bool)

(assert (=> d!1140355 e!2376364))

(declare-fun res!1556556 () Bool)

(assert (=> d!1140355 (=> res!1556556 e!2376364)))

(assert (=> d!1140355 (= res!1556556 (isEmpty!24086 lt!1335123))))

(declare-fun e!2376366 () Option!8706)

(assert (=> d!1140355 (= lt!1335123 e!2376366)))

(declare-fun c!669918 () Bool)

(assert (=> d!1140355 (= c!669918 (and ((_ is Cons!40721) rules!2768) ((_ is Nil!40721) (t!310934 rules!2768))))))

(declare-fun lt!1335125 () Unit!58406)

(declare-fun lt!1335124 () Unit!58406)

(assert (=> d!1140355 (= lt!1335125 lt!1335124)))

(assert (=> d!1140355 (isPrefix!3387 lt!1335047 lt!1335047)))

(assert (=> d!1140355 (= lt!1335124 (lemmaIsPrefixRefl!2160 lt!1335047 lt!1335047))))

(assert (=> d!1140355 (rulesValidInductive!2228 thiss!20629 rules!2768)))

(assert (=> d!1140355 (= (maxPrefix!3181 thiss!20629 rules!2768 lt!1335047) lt!1335123)))

(declare-fun b!3845382 () Bool)

(declare-fun res!1556553 () Bool)

(assert (=> b!3845382 (=> (not res!1556553) (not e!2376365))))

(assert (=> b!3845382 (= res!1556553 (= (++!10333 (list!15158 (charsOf!4116 (_1!23084 (get!13478 lt!1335123)))) (_2!23084 (get!13478 lt!1335123))) lt!1335047))))

(declare-fun b!3845383 () Bool)

(declare-fun res!1556559 () Bool)

(assert (=> b!3845383 (=> (not res!1556559) (not e!2376365))))

(assert (=> b!3845383 (= res!1556559 (= (list!15158 (charsOf!4116 (_1!23084 (get!13478 lt!1335123)))) (originalCharacters!6888 (_1!23084 (get!13478 lt!1335123)))))))

(declare-fun b!3845384 () Bool)

(declare-fun call!282054 () Option!8706)

(assert (=> b!3845384 (= e!2376366 call!282054)))

(declare-fun b!3845385 () Bool)

(declare-fun res!1556554 () Bool)

(assert (=> b!3845385 (=> (not res!1556554) (not e!2376365))))

(assert (=> b!3845385 (= res!1556554 (matchR!5344 (regex!6288 (rule!9132 (_1!23084 (get!13478 lt!1335123)))) (list!15158 (charsOf!4116 (_1!23084 (get!13478 lt!1335123))))))))

(declare-fun b!3845386 () Bool)

(declare-fun lt!1335127 () Option!8706)

(declare-fun lt!1335126 () Option!8706)

(assert (=> b!3845386 (= e!2376366 (ite (and ((_ is None!8705) lt!1335127) ((_ is None!8705) lt!1335126)) None!8705 (ite ((_ is None!8705) lt!1335126) lt!1335127 (ite ((_ is None!8705) lt!1335127) lt!1335126 (ite (>= (size!30635 (_1!23084 (v!38997 lt!1335127))) (size!30635 (_1!23084 (v!38997 lt!1335126)))) lt!1335127 lt!1335126)))))))

(assert (=> b!3845386 (= lt!1335127 call!282054)))

(assert (=> b!3845386 (= lt!1335126 (maxPrefix!3181 thiss!20629 (t!310934 rules!2768) lt!1335047))))

(declare-fun bm!282049 () Bool)

(assert (=> bm!282049 (= call!282054 (maxPrefixOneRule!2265 thiss!20629 (h!46141 rules!2768) lt!1335047))))

(declare-fun b!3845387 () Bool)

(assert (=> b!3845387 (= e!2376364 e!2376365)))

(declare-fun res!1556555 () Bool)

(assert (=> b!3845387 (=> (not res!1556555) (not e!2376365))))

(assert (=> b!3845387 (= res!1556555 (isDefined!6837 lt!1335123))))

(assert (= (and d!1140355 c!669918) b!3845384))

(assert (= (and d!1140355 (not c!669918)) b!3845386))

(assert (= (or b!3845384 b!3845386) bm!282049))

(assert (= (and d!1140355 (not res!1556556)) b!3845387))

(assert (= (and b!3845387 res!1556555) b!3845383))

(assert (= (and b!3845383 res!1556559) b!3845380))

(assert (= (and b!3845380 res!1556557) b!3845382))

(assert (= (and b!3845382 res!1556553) b!3845381))

(assert (= (and b!3845381 res!1556558) b!3845385))

(assert (= (and b!3845385 res!1556554) b!3845379))

(assert (=> b!3845386 m!4399771))

(declare-fun m!4400059 () Bool)

(assert (=> b!3845387 m!4400059))

(declare-fun m!4400061 () Bool)

(assert (=> b!3845379 m!4400061))

(declare-fun m!4400063 () Bool)

(assert (=> b!3845379 m!4400063))

(assert (=> b!3845385 m!4400061))

(declare-fun m!4400065 () Bool)

(assert (=> b!3845385 m!4400065))

(assert (=> b!3845385 m!4400065))

(declare-fun m!4400067 () Bool)

(assert (=> b!3845385 m!4400067))

(assert (=> b!3845385 m!4400067))

(declare-fun m!4400069 () Bool)

(assert (=> b!3845385 m!4400069))

(assert (=> b!3845382 m!4400061))

(assert (=> b!3845382 m!4400065))

(assert (=> b!3845382 m!4400065))

(assert (=> b!3845382 m!4400067))

(assert (=> b!3845382 m!4400067))

(declare-fun m!4400071 () Bool)

(assert (=> b!3845382 m!4400071))

(declare-fun m!4400073 () Bool)

(assert (=> d!1140355 m!4400073))

(assert (=> d!1140355 m!4399757))

(assert (=> d!1140355 m!4399759))

(assert (=> d!1140355 m!4399761))

(assert (=> bm!282049 m!4399819))

(assert (=> b!3845380 m!4400061))

(declare-fun m!4400075 () Bool)

(assert (=> b!3845380 m!4400075))

(assert (=> b!3845380 m!4399881))

(assert (=> b!3845381 m!4400061))

(declare-fun m!4400077 () Bool)

(assert (=> b!3845381 m!4400077))

(assert (=> b!3845381 m!4400077))

(declare-fun m!4400079 () Bool)

(assert (=> b!3845381 m!4400079))

(assert (=> b!3845383 m!4400061))

(assert (=> b!3845383 m!4400065))

(assert (=> b!3845383 m!4400065))

(assert (=> b!3845383 m!4400067))

(assert (=> b!3845182 d!1140355))

(declare-fun d!1140357 () Bool)

(assert (=> d!1140357 true))

(declare-fun lt!1335221 () Bool)

(declare-fun lambda!126107 () Int)

(declare-fun forall!8283 (List!40845 Int) Bool)

(assert (=> d!1140357 (= lt!1335221 (forall!8283 rules!2768 lambda!126107))))

(declare-fun e!2376532 () Bool)

(assert (=> d!1140357 (= lt!1335221 e!2376532)))

(declare-fun res!1556689 () Bool)

(assert (=> d!1140357 (=> res!1556689 e!2376532)))

(assert (=> d!1140357 (= res!1556689 (not ((_ is Cons!40721) rules!2768)))))

(assert (=> d!1140357 (= (rulesValidInductive!2228 thiss!20629 rules!2768) lt!1335221)))

(declare-fun b!3845668 () Bool)

(declare-fun e!2376531 () Bool)

(assert (=> b!3845668 (= e!2376532 e!2376531)))

(declare-fun res!1556690 () Bool)

(assert (=> b!3845668 (=> (not res!1556690) (not e!2376531))))

(assert (=> b!3845668 (= res!1556690 (ruleValid!2240 thiss!20629 (h!46141 rules!2768)))))

(declare-fun b!3845669 () Bool)

(assert (=> b!3845669 (= e!2376531 (rulesValidInductive!2228 thiss!20629 (t!310934 rules!2768)))))

(assert (= (and d!1140357 (not res!1556689)) b!3845668))

(assert (= (and b!3845668 res!1556690) b!3845669))

(declare-fun m!4400467 () Bool)

(assert (=> d!1140357 m!4400467))

(declare-fun m!4400469 () Bool)

(assert (=> b!3845668 m!4400469))

(assert (=> b!3845669 m!4399903))

(assert (=> b!3845203 d!1140357))

(declare-fun d!1140449 () Bool)

(assert (=> d!1140449 (= (inv!54860 (tag!7148 (rule!9132 (h!46140 prefixTokens!80)))) (= (mod (str.len (value!199841 (tag!7148 (rule!9132 (h!46140 prefixTokens!80))))) 2) 0))))

(assert (=> b!3845204 d!1140449))

(declare-fun d!1140451 () Bool)

(declare-fun res!1556693 () Bool)

(declare-fun e!2376535 () Bool)

(assert (=> d!1140451 (=> (not res!1556693) (not e!2376535))))

(declare-fun semiInverseModEq!2693 (Int Int) Bool)

(assert (=> d!1140451 (= res!1556693 (semiInverseModEq!2693 (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))) (toValue!8704 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80))))))))

(assert (=> d!1140451 (= (inv!54863 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))) e!2376535)))

(declare-fun b!3845674 () Bool)

(declare-fun equivClasses!2592 (Int Int) Bool)

(assert (=> b!3845674 (= e!2376535 (equivClasses!2592 (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))) (toValue!8704 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80))))))))

(assert (= (and d!1140451 res!1556693) b!3845674))

(declare-fun m!4400471 () Bool)

(assert (=> d!1140451 m!4400471))

(declare-fun m!4400473 () Bool)

(assert (=> b!3845674 m!4400473))

(assert (=> b!3845204 d!1140451))

(declare-fun b!3845693 () Bool)

(declare-fun e!2376544 () Option!8706)

(assert (=> b!3845693 (= e!2376544 None!8705)))

(declare-fun b!3845694 () Bool)

(declare-fun e!2376545 () Bool)

(declare-fun lt!1335235 () Option!8706)

(assert (=> b!3845694 (= e!2376545 (= (size!30635 (_1!23084 (get!13478 lt!1335235))) (size!30636 (originalCharacters!6888 (_1!23084 (get!13478 lt!1335235))))))))

(declare-fun d!1140453 () Bool)

(declare-fun e!2376546 () Bool)

(assert (=> d!1140453 e!2376546))

(declare-fun res!1556710 () Bool)

(assert (=> d!1140453 (=> res!1556710 e!2376546)))

(assert (=> d!1140453 (= res!1556710 (isEmpty!24086 lt!1335235))))

(assert (=> d!1140453 (= lt!1335235 e!2376544)))

(declare-fun c!669960 () Bool)

(declare-datatypes ((tuple2!39904 0))(
  ( (tuple2!39905 (_1!23086 List!40843) (_2!23086 List!40843)) )
))
(declare-fun lt!1335232 () tuple2!39904)

(assert (=> d!1140453 (= c!669960 (isEmpty!24084 (_1!23086 lt!1335232)))))

(declare-fun findLongestMatch!1073 (Regex!11193 List!40843) tuple2!39904)

(assert (=> d!1140453 (= lt!1335232 (findLongestMatch!1073 (regex!6288 (h!46141 rules!2768)) lt!1335047))))

(assert (=> d!1140453 (ruleValid!2240 thiss!20629 (h!46141 rules!2768))))

(assert (=> d!1140453 (= (maxPrefixOneRule!2265 thiss!20629 (h!46141 rules!2768) lt!1335047) lt!1335235)))

(declare-fun b!3845695 () Bool)

(declare-fun e!2376547 () Bool)

(declare-fun findLongestMatchInner!1160 (Regex!11193 List!40843 Int List!40843 List!40843 Int) tuple2!39904)

(assert (=> b!3845695 (= e!2376547 (matchR!5344 (regex!6288 (h!46141 rules!2768)) (_1!23086 (findLongestMatchInner!1160 (regex!6288 (h!46141 rules!2768)) Nil!40719 (size!30636 Nil!40719) lt!1335047 lt!1335047 (size!30636 lt!1335047)))))))

(declare-fun b!3845696 () Bool)

(declare-fun res!1556708 () Bool)

(assert (=> b!3845696 (=> (not res!1556708) (not e!2376545))))

(assert (=> b!3845696 (= res!1556708 (= (++!10333 (list!15158 (charsOf!4116 (_1!23084 (get!13478 lt!1335235)))) (_2!23084 (get!13478 lt!1335235))) lt!1335047))))

(declare-fun b!3845697 () Bool)

(declare-fun res!1556711 () Bool)

(assert (=> b!3845697 (=> (not res!1556711) (not e!2376545))))

(assert (=> b!3845697 (= res!1556711 (= (value!199842 (_1!23084 (get!13478 lt!1335235))) (apply!9531 (transformation!6288 (rule!9132 (_1!23084 (get!13478 lt!1335235)))) (seqFromList!4559 (originalCharacters!6888 (_1!23084 (get!13478 lt!1335235)))))))))

(declare-fun b!3845698 () Bool)

(declare-fun size!30640 (BalanceConc!24592) Int)

(assert (=> b!3845698 (= e!2376544 (Some!8705 (tuple2!39901 (Token!11715 (apply!9531 (transformation!6288 (h!46141 rules!2768)) (seqFromList!4559 (_1!23086 lt!1335232))) (h!46141 rules!2768) (size!30640 (seqFromList!4559 (_1!23086 lt!1335232))) (_1!23086 lt!1335232)) (_2!23086 lt!1335232))))))

(declare-fun lt!1335233 () Unit!58406)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1133 (Regex!11193 List!40843) Unit!58406)

(assert (=> b!3845698 (= lt!1335233 (longestMatchIsAcceptedByMatchOrIsEmpty!1133 (regex!6288 (h!46141 rules!2768)) lt!1335047))))

(declare-fun res!1556713 () Bool)

(assert (=> b!3845698 (= res!1556713 (isEmpty!24084 (_1!23086 (findLongestMatchInner!1160 (regex!6288 (h!46141 rules!2768)) Nil!40719 (size!30636 Nil!40719) lt!1335047 lt!1335047 (size!30636 lt!1335047)))))))

(assert (=> b!3845698 (=> res!1556713 e!2376547)))

(assert (=> b!3845698 e!2376547))

(declare-fun lt!1335236 () Unit!58406)

(assert (=> b!3845698 (= lt!1335236 lt!1335233)))

(declare-fun lt!1335234 () Unit!58406)

(declare-fun lemmaSemiInverse!1664 (TokenValueInjection!12464 BalanceConc!24592) Unit!58406)

(assert (=> b!3845698 (= lt!1335234 (lemmaSemiInverse!1664 (transformation!6288 (h!46141 rules!2768)) (seqFromList!4559 (_1!23086 lt!1335232))))))

(declare-fun b!3845699 () Bool)

(assert (=> b!3845699 (= e!2376546 e!2376545)))

(declare-fun res!1556712 () Bool)

(assert (=> b!3845699 (=> (not res!1556712) (not e!2376545))))

(assert (=> b!3845699 (= res!1556712 (matchR!5344 (regex!6288 (h!46141 rules!2768)) (list!15158 (charsOf!4116 (_1!23084 (get!13478 lt!1335235))))))))

(declare-fun b!3845700 () Bool)

(declare-fun res!1556714 () Bool)

(assert (=> b!3845700 (=> (not res!1556714) (not e!2376545))))

(assert (=> b!3845700 (= res!1556714 (= (rule!9132 (_1!23084 (get!13478 lt!1335235))) (h!46141 rules!2768)))))

(declare-fun b!3845701 () Bool)

(declare-fun res!1556709 () Bool)

(assert (=> b!3845701 (=> (not res!1556709) (not e!2376545))))

(assert (=> b!3845701 (= res!1556709 (< (size!30636 (_2!23084 (get!13478 lt!1335235))) (size!30636 lt!1335047)))))

(assert (= (and d!1140453 c!669960) b!3845693))

(assert (= (and d!1140453 (not c!669960)) b!3845698))

(assert (= (and b!3845698 (not res!1556713)) b!3845695))

(assert (= (and d!1140453 (not res!1556710)) b!3845699))

(assert (= (and b!3845699 res!1556712) b!3845696))

(assert (= (and b!3845696 res!1556708) b!3845701))

(assert (= (and b!3845701 res!1556709) b!3845700))

(assert (= (and b!3845700 res!1556714) b!3845697))

(assert (= (and b!3845697 res!1556711) b!3845694))

(assert (=> b!3845695 m!4399925))

(assert (=> b!3845695 m!4399881))

(assert (=> b!3845695 m!4399925))

(assert (=> b!3845695 m!4399881))

(declare-fun m!4400475 () Bool)

(assert (=> b!3845695 m!4400475))

(declare-fun m!4400477 () Bool)

(assert (=> b!3845695 m!4400477))

(declare-fun m!4400479 () Bool)

(assert (=> d!1140453 m!4400479))

(declare-fun m!4400481 () Bool)

(assert (=> d!1140453 m!4400481))

(declare-fun m!4400483 () Bool)

(assert (=> d!1140453 m!4400483))

(assert (=> d!1140453 m!4400469))

(declare-fun m!4400485 () Bool)

(assert (=> b!3845697 m!4400485))

(declare-fun m!4400487 () Bool)

(assert (=> b!3845697 m!4400487))

(assert (=> b!3845697 m!4400487))

(declare-fun m!4400489 () Bool)

(assert (=> b!3845697 m!4400489))

(assert (=> b!3845700 m!4400485))

(declare-fun m!4400491 () Bool)

(assert (=> b!3845698 m!4400491))

(declare-fun m!4400493 () Bool)

(assert (=> b!3845698 m!4400493))

(assert (=> b!3845698 m!4399925))

(declare-fun m!4400495 () Bool)

(assert (=> b!3845698 m!4400495))

(assert (=> b!3845698 m!4399881))

(assert (=> b!3845698 m!4400491))

(declare-fun m!4400497 () Bool)

(assert (=> b!3845698 m!4400497))

(declare-fun m!4400499 () Bool)

(assert (=> b!3845698 m!4400499))

(assert (=> b!3845698 m!4400491))

(assert (=> b!3845698 m!4399925))

(assert (=> b!3845698 m!4399881))

(assert (=> b!3845698 m!4400475))

(assert (=> b!3845698 m!4400491))

(declare-fun m!4400501 () Bool)

(assert (=> b!3845698 m!4400501))

(assert (=> b!3845701 m!4400485))

(declare-fun m!4400503 () Bool)

(assert (=> b!3845701 m!4400503))

(assert (=> b!3845701 m!4399881))

(assert (=> b!3845696 m!4400485))

(declare-fun m!4400505 () Bool)

(assert (=> b!3845696 m!4400505))

(assert (=> b!3845696 m!4400505))

(declare-fun m!4400507 () Bool)

(assert (=> b!3845696 m!4400507))

(assert (=> b!3845696 m!4400507))

(declare-fun m!4400509 () Bool)

(assert (=> b!3845696 m!4400509))

(assert (=> b!3845699 m!4400485))

(assert (=> b!3845699 m!4400505))

(assert (=> b!3845699 m!4400505))

(assert (=> b!3845699 m!4400507))

(assert (=> b!3845699 m!4400507))

(declare-fun m!4400511 () Bool)

(assert (=> b!3845699 m!4400511))

(assert (=> b!3845694 m!4400485))

(declare-fun m!4400513 () Bool)

(assert (=> b!3845694 m!4400513))

(assert (=> bm!282043 d!1140453))

(declare-fun b!3845702 () Bool)

(declare-fun e!2376549 () Bool)

(declare-fun lt!1335238 () tuple2!39898)

(assert (=> b!3845702 (= e!2376549 (not (isEmpty!24082 (_1!23083 lt!1335238))))))

(declare-fun b!3845703 () Bool)

(declare-fun e!2376550 () Bool)

(assert (=> b!3845703 (= e!2376550 e!2376549)))

(declare-fun res!1556715 () Bool)

(assert (=> b!3845703 (= res!1556715 (< (size!30636 (_2!23083 lt!1335238)) (size!30636 lt!1335047)))))

(assert (=> b!3845703 (=> (not res!1556715) (not e!2376549))))

(declare-fun b!3845704 () Bool)

(declare-fun e!2376548 () tuple2!39898)

(assert (=> b!3845704 (= e!2376548 (tuple2!39899 Nil!40720 lt!1335047))))

(declare-fun b!3845705 () Bool)

(assert (=> b!3845705 (= e!2376550 (= (_2!23083 lt!1335238) lt!1335047))))

(declare-fun d!1140455 () Bool)

(assert (=> d!1140455 e!2376550))

(declare-fun c!669962 () Bool)

(assert (=> d!1140455 (= c!669962 (> (size!30638 (_1!23083 lt!1335238)) 0))))

(assert (=> d!1140455 (= lt!1335238 e!2376548)))

(declare-fun c!669961 () Bool)

(declare-fun lt!1335239 () Option!8706)

(assert (=> d!1140455 (= c!669961 ((_ is Some!8705) lt!1335239))))

(assert (=> d!1140455 (= lt!1335239 (maxPrefix!3181 thiss!20629 rules!2768 lt!1335047))))

(assert (=> d!1140455 (= (lexList!1645 thiss!20629 rules!2768 lt!1335047) lt!1335238)))

(declare-fun b!3845706 () Bool)

(declare-fun lt!1335237 () tuple2!39898)

(assert (=> b!3845706 (= e!2376548 (tuple2!39899 (Cons!40720 (_1!23084 (v!38997 lt!1335239)) (_1!23083 lt!1335237)) (_2!23083 lt!1335237)))))

(assert (=> b!3845706 (= lt!1335237 (lexList!1645 thiss!20629 rules!2768 (_2!23084 (v!38997 lt!1335239))))))

(assert (= (and d!1140455 c!669961) b!3845706))

(assert (= (and d!1140455 (not c!669961)) b!3845704))

(assert (= (and d!1140455 c!669962) b!3845703))

(assert (= (and d!1140455 (not c!669962)) b!3845705))

(assert (= (and b!3845703 res!1556715) b!3845702))

(declare-fun m!4400515 () Bool)

(assert (=> b!3845702 m!4400515))

(declare-fun m!4400517 () Bool)

(assert (=> b!3845703 m!4400517))

(assert (=> b!3845703 m!4399881))

(declare-fun m!4400519 () Bool)

(assert (=> d!1140455 m!4400519))

(assert (=> d!1140455 m!4399775))

(declare-fun m!4400521 () Bool)

(assert (=> b!3845706 m!4400521))

(assert (=> b!3845179 d!1140455))

(declare-fun b!3845707 () Bool)

(declare-fun e!2376551 () List!40844)

(assert (=> b!3845707 (= e!2376551 suffixTokens!72)))

(declare-fun b!3845708 () Bool)

(assert (=> b!3845708 (= e!2376551 (Cons!40720 (h!46140 prefixTokens!80) (++!10334 (t!310933 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3845710 () Bool)

(declare-fun lt!1335240 () List!40844)

(declare-fun e!2376552 () Bool)

(assert (=> b!3845710 (= e!2376552 (or (not (= suffixTokens!72 Nil!40720)) (= lt!1335240 prefixTokens!80)))))

(declare-fun b!3845709 () Bool)

(declare-fun res!1556716 () Bool)

(assert (=> b!3845709 (=> (not res!1556716) (not e!2376552))))

(assert (=> b!3845709 (= res!1556716 (= (size!30638 lt!1335240) (+ (size!30638 prefixTokens!80) (size!30638 suffixTokens!72))))))

(declare-fun d!1140457 () Bool)

(assert (=> d!1140457 e!2376552))

(declare-fun res!1556717 () Bool)

(assert (=> d!1140457 (=> (not res!1556717) (not e!2376552))))

(assert (=> d!1140457 (= res!1556717 (= (content!6052 lt!1335240) ((_ map or) (content!6052 prefixTokens!80) (content!6052 suffixTokens!72))))))

(assert (=> d!1140457 (= lt!1335240 e!2376551)))

(declare-fun c!669963 () Bool)

(assert (=> d!1140457 (= c!669963 ((_ is Nil!40720) prefixTokens!80))))

(assert (=> d!1140457 (= (++!10334 prefixTokens!80 suffixTokens!72) lt!1335240)))

(assert (= (and d!1140457 c!669963) b!3845707))

(assert (= (and d!1140457 (not c!669963)) b!3845708))

(assert (= (and d!1140457 res!1556717) b!3845709))

(assert (= (and b!3845709 res!1556716) b!3845710))

(declare-fun m!4400523 () Bool)

(assert (=> b!3845708 m!4400523))

(declare-fun m!4400525 () Bool)

(assert (=> b!3845709 m!4400525))

(declare-fun m!4400527 () Bool)

(assert (=> b!3845709 m!4400527))

(declare-fun m!4400529 () Bool)

(assert (=> b!3845709 m!4400529))

(declare-fun m!4400531 () Bool)

(assert (=> d!1140457 m!4400531))

(declare-fun m!4400533 () Bool)

(assert (=> d!1140457 m!4400533))

(declare-fun m!4400535 () Bool)

(assert (=> d!1140457 m!4400535))

(assert (=> b!3845179 d!1140457))

(declare-fun b!3845712 () Bool)

(declare-fun e!2376554 () List!40843)

(assert (=> b!3845712 (= e!2376554 (Cons!40719 (h!46139 prefix!426) (++!10333 (t!310932 prefix!426) suffix!1176)))))

(declare-fun d!1140459 () Bool)

(declare-fun e!2376553 () Bool)

(assert (=> d!1140459 e!2376553))

(declare-fun res!1556718 () Bool)

(assert (=> d!1140459 (=> (not res!1556718) (not e!2376553))))

(declare-fun lt!1335241 () List!40843)

(assert (=> d!1140459 (= res!1556718 (= (content!6051 lt!1335241) ((_ map or) (content!6051 prefix!426) (content!6051 suffix!1176))))))

(assert (=> d!1140459 (= lt!1335241 e!2376554)))

(declare-fun c!669964 () Bool)

(assert (=> d!1140459 (= c!669964 ((_ is Nil!40719) prefix!426))))

(assert (=> d!1140459 (= (++!10333 prefix!426 suffix!1176) lt!1335241)))

(declare-fun b!3845714 () Bool)

(assert (=> b!3845714 (= e!2376553 (or (not (= suffix!1176 Nil!40719)) (= lt!1335241 prefix!426)))))

(declare-fun b!3845713 () Bool)

(declare-fun res!1556719 () Bool)

(assert (=> b!3845713 (=> (not res!1556719) (not e!2376553))))

(assert (=> b!3845713 (= res!1556719 (= (size!30636 lt!1335241) (+ (size!30636 prefix!426) (size!30636 suffix!1176))))))

(declare-fun b!3845711 () Bool)

(assert (=> b!3845711 (= e!2376554 suffix!1176)))

(assert (= (and d!1140459 c!669964) b!3845711))

(assert (= (and d!1140459 (not c!669964)) b!3845712))

(assert (= (and d!1140459 res!1556718) b!3845713))

(assert (= (and b!3845713 res!1556719) b!3845714))

(declare-fun m!4400537 () Bool)

(assert (=> b!3845712 m!4400537))

(declare-fun m!4400539 () Bool)

(assert (=> d!1140459 m!4400539))

(assert (=> d!1140459 m!4399983))

(declare-fun m!4400541 () Bool)

(assert (=> d!1140459 m!4400541))

(declare-fun m!4400543 () Bool)

(assert (=> b!3845713 m!4400543))

(assert (=> b!3845713 m!4399989))

(assert (=> b!3845713 m!4399923))

(assert (=> b!3845179 d!1140459))

(declare-fun b!3845715 () Bool)

(declare-fun res!1556720 () Bool)

(declare-fun e!2376556 () Bool)

(assert (=> b!3845715 (=> res!1556720 e!2376556)))

(assert (=> b!3845715 (= res!1556720 (not ((_ is IntegerValue!19556) (value!199842 (h!46140 prefixTokens!80)))))))

(declare-fun e!2376557 () Bool)

(assert (=> b!3845715 (= e!2376557 e!2376556)))

(declare-fun d!1140461 () Bool)

(declare-fun c!669966 () Bool)

(assert (=> d!1140461 (= c!669966 ((_ is IntegerValue!19554) (value!199842 (h!46140 prefixTokens!80))))))

(declare-fun e!2376555 () Bool)

(assert (=> d!1140461 (= (inv!21 (value!199842 (h!46140 prefixTokens!80))) e!2376555)))

(declare-fun b!3845716 () Bool)

(assert (=> b!3845716 (= e!2376557 (inv!17 (value!199842 (h!46140 prefixTokens!80))))))

(declare-fun b!3845717 () Bool)

(assert (=> b!3845717 (= e!2376556 (inv!15 (value!199842 (h!46140 prefixTokens!80))))))

(declare-fun b!3845718 () Bool)

(assert (=> b!3845718 (= e!2376555 (inv!16 (value!199842 (h!46140 prefixTokens!80))))))

(declare-fun b!3845719 () Bool)

(assert (=> b!3845719 (= e!2376555 e!2376557)))

(declare-fun c!669965 () Bool)

(assert (=> b!3845719 (= c!669965 ((_ is IntegerValue!19555) (value!199842 (h!46140 prefixTokens!80))))))

(assert (= (and d!1140461 c!669966) b!3845718))

(assert (= (and d!1140461 (not c!669966)) b!3845719))

(assert (= (and b!3845719 c!669965) b!3845716))

(assert (= (and b!3845719 (not c!669965)) b!3845715))

(assert (= (and b!3845715 (not res!1556720)) b!3845717))

(declare-fun m!4400545 () Bool)

(assert (=> b!3845716 m!4400545))

(declare-fun m!4400547 () Bool)

(assert (=> b!3845717 m!4400547))

(declare-fun m!4400549 () Bool)

(assert (=> b!3845718 m!4400549))

(assert (=> b!3845202 d!1140461))

(declare-fun d!1140463 () Bool)

(declare-fun res!1556721 () Bool)

(declare-fun e!2376558 () Bool)

(assert (=> d!1140463 (=> (not res!1556721) (not e!2376558))))

(assert (=> d!1140463 (= res!1556721 (not (isEmpty!24084 (originalCharacters!6888 (h!46140 prefixTokens!80)))))))

(assert (=> d!1140463 (= (inv!54864 (h!46140 prefixTokens!80)) e!2376558)))

(declare-fun b!3845720 () Bool)

(declare-fun res!1556722 () Bool)

(assert (=> b!3845720 (=> (not res!1556722) (not e!2376558))))

(assert (=> b!3845720 (= res!1556722 (= (originalCharacters!6888 (h!46140 prefixTokens!80)) (list!15158 (dynLambda!17585 (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))) (value!199842 (h!46140 prefixTokens!80))))))))

(declare-fun b!3845721 () Bool)

(assert (=> b!3845721 (= e!2376558 (= (size!30635 (h!46140 prefixTokens!80)) (size!30636 (originalCharacters!6888 (h!46140 prefixTokens!80)))))))

(assert (= (and d!1140463 res!1556721) b!3845720))

(assert (= (and b!3845720 res!1556722) b!3845721))

(declare-fun b_lambda!112405 () Bool)

(assert (=> (not b_lambda!112405) (not b!3845720)))

(declare-fun tb!221475 () Bool)

(declare-fun t!311014 () Bool)

(assert (=> (and b!3845200 (= (toChars!8563 (transformation!6288 (h!46141 rules!2768))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80))))) t!311014) tb!221475))

(declare-fun b!3845722 () Bool)

(declare-fun e!2376559 () Bool)

(declare-fun tp!1165391 () Bool)

(assert (=> b!3845722 (= e!2376559 (and (inv!54867 (c!669883 (dynLambda!17585 (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))) (value!199842 (h!46140 prefixTokens!80))))) tp!1165391))))

(declare-fun result!269902 () Bool)

(assert (=> tb!221475 (= result!269902 (and (inv!54868 (dynLambda!17585 (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))) (value!199842 (h!46140 prefixTokens!80)))) e!2376559))))

(assert (= tb!221475 b!3845722))

(declare-fun m!4400551 () Bool)

(assert (=> b!3845722 m!4400551))

(declare-fun m!4400553 () Bool)

(assert (=> tb!221475 m!4400553))

(assert (=> b!3845720 t!311014))

(declare-fun b_and!286827 () Bool)

(assert (= b_and!286775 (and (=> t!311014 result!269902) b_and!286827)))

(declare-fun t!311016 () Bool)

(declare-fun tb!221477 () Bool)

(assert (=> (and b!3845173 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80))))) t!311016) tb!221477))

(declare-fun result!269904 () Bool)

(assert (= result!269904 result!269902))

(assert (=> b!3845720 t!311016))

(declare-fun b_and!286829 () Bool)

(assert (= b_and!286777 (and (=> t!311016 result!269904) b_and!286829)))

(declare-fun tb!221479 () Bool)

(declare-fun t!311018 () Bool)

(assert (=> (and b!3845166 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80))))) t!311018) tb!221479))

(declare-fun result!269906 () Bool)

(assert (= result!269906 result!269902))

(assert (=> b!3845720 t!311018))

(declare-fun b_and!286831 () Bool)

(assert (= b_and!286779 (and (=> t!311018 result!269906) b_and!286831)))

(declare-fun tb!221481 () Bool)

(declare-fun t!311020 () Bool)

(assert (=> (and b!3845170 (= (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80))))) t!311020) tb!221481))

(declare-fun result!269908 () Bool)

(assert (= result!269908 result!269902))

(assert (=> b!3845720 t!311020))

(declare-fun b_and!286833 () Bool)

(assert (= b_and!286781 (and (=> t!311020 result!269908) b_and!286833)))

(declare-fun m!4400555 () Bool)

(assert (=> d!1140463 m!4400555))

(declare-fun m!4400557 () Bool)

(assert (=> b!3845720 m!4400557))

(assert (=> b!3845720 m!4400557))

(declare-fun m!4400559 () Bool)

(assert (=> b!3845720 m!4400559))

(declare-fun m!4400561 () Bool)

(assert (=> b!3845721 m!4400561))

(assert (=> b!3845180 d!1140463))

(declare-fun d!1140465 () Bool)

(declare-fun lt!1335242 () Int)

(assert (=> d!1140465 (>= lt!1335242 0)))

(declare-fun e!2376560 () Int)

(assert (=> d!1140465 (= lt!1335242 e!2376560)))

(declare-fun c!669967 () Bool)

(assert (=> d!1140465 (= c!669967 ((_ is Nil!40719) lt!1335036))))

(assert (=> d!1140465 (= (size!30636 lt!1335036) lt!1335242)))

(declare-fun b!3845723 () Bool)

(assert (=> b!3845723 (= e!2376560 0)))

(declare-fun b!3845724 () Bool)

(assert (=> b!3845724 (= e!2376560 (+ 1 (size!30636 (t!310932 lt!1335036))))))

(assert (= (and d!1140465 c!669967) b!3845723))

(assert (= (and d!1140465 (not c!669967)) b!3845724))

(declare-fun m!4400563 () Bool)

(assert (=> b!3845724 m!4400563))

(assert (=> b!3845177 d!1140465))

(declare-fun b!3845725 () Bool)

(declare-fun e!2376562 () Bool)

(declare-fun e!2376561 () Bool)

(assert (=> b!3845725 (= e!2376562 e!2376561)))

(declare-fun res!1556725 () Bool)

(assert (=> b!3845725 (=> (not res!1556725) (not e!2376561))))

(assert (=> b!3845725 (= res!1556725 (not ((_ is Nil!40719) lt!1335042)))))

(declare-fun d!1140467 () Bool)

(declare-fun e!2376563 () Bool)

(assert (=> d!1140467 e!2376563))

(declare-fun res!1556726 () Bool)

(assert (=> d!1140467 (=> res!1556726 e!2376563)))

(declare-fun lt!1335243 () Bool)

(assert (=> d!1140467 (= res!1556726 (not lt!1335243))))

(assert (=> d!1140467 (= lt!1335243 e!2376562)))

(declare-fun res!1556723 () Bool)

(assert (=> d!1140467 (=> res!1556723 e!2376562)))

(assert (=> d!1140467 (= res!1556723 ((_ is Nil!40719) lt!1335036))))

(assert (=> d!1140467 (= (isPrefix!3387 lt!1335036 lt!1335042) lt!1335243)))

(declare-fun b!3845726 () Bool)

(declare-fun res!1556724 () Bool)

(assert (=> b!3845726 (=> (not res!1556724) (not e!2376561))))

(assert (=> b!3845726 (= res!1556724 (= (head!8087 lt!1335036) (head!8087 lt!1335042)))))

(declare-fun b!3845727 () Bool)

(assert (=> b!3845727 (= e!2376561 (isPrefix!3387 (tail!5815 lt!1335036) (tail!5815 lt!1335042)))))

(declare-fun b!3845728 () Bool)

(assert (=> b!3845728 (= e!2376563 (>= (size!30636 lt!1335042) (size!30636 lt!1335036)))))

(assert (= (and d!1140467 (not res!1556723)) b!3845725))

(assert (= (and b!3845725 res!1556725) b!3845726))

(assert (= (and b!3845726 res!1556724) b!3845727))

(assert (= (and d!1140467 (not res!1556726)) b!3845728))

(declare-fun m!4400565 () Bool)

(assert (=> b!3845726 m!4400565))

(declare-fun m!4400567 () Bool)

(assert (=> b!3845726 m!4400567))

(declare-fun m!4400569 () Bool)

(assert (=> b!3845727 m!4400569))

(declare-fun m!4400571 () Bool)

(assert (=> b!3845727 m!4400571))

(assert (=> b!3845727 m!4400569))

(assert (=> b!3845727 m!4400571))

(declare-fun m!4400573 () Bool)

(assert (=> b!3845727 m!4400573))

(declare-fun m!4400575 () Bool)

(assert (=> b!3845728 m!4400575))

(assert (=> b!3845728 m!4399781))

(assert (=> b!3845177 d!1140467))

(declare-fun d!1140469 () Bool)

(assert (=> d!1140469 (ruleValid!2240 thiss!20629 (rule!9132 (_1!23084 (v!38997 lt!1335054))))))

(declare-fun lt!1335246 () Unit!58406)

(declare-fun choose!22625 (LexerInterface!5877 Rule!12376 List!40845) Unit!58406)

(assert (=> d!1140469 (= lt!1335246 (choose!22625 thiss!20629 (rule!9132 (_1!23084 (v!38997 lt!1335054))) rules!2768))))

(assert (=> d!1140469 (contains!8238 rules!2768 (rule!9132 (_1!23084 (v!38997 lt!1335054))))))

(assert (=> d!1140469 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1320 thiss!20629 (rule!9132 (_1!23084 (v!38997 lt!1335054))) rules!2768) lt!1335246)))

(declare-fun bs!582704 () Bool)

(assert (= bs!582704 d!1140469))

(assert (=> bs!582704 m!4399785))

(declare-fun m!4400577 () Bool)

(assert (=> bs!582704 m!4400577))

(declare-fun m!4400579 () Bool)

(assert (=> bs!582704 m!4400579))

(assert (=> b!3845177 d!1140469))

(declare-fun d!1140471 () Bool)

(assert (=> d!1140471 (isPrefix!3387 lt!1335036 (++!10333 lt!1335036 (_2!23084 (v!38997 lt!1335054))))))

(declare-fun lt!1335249 () Unit!58406)

(declare-fun choose!22626 (List!40843 List!40843) Unit!58406)

(assert (=> d!1140471 (= lt!1335249 (choose!22626 lt!1335036 (_2!23084 (v!38997 lt!1335054))))))

(assert (=> d!1140471 (= (lemmaConcatTwoListThenFirstIsPrefix!2250 lt!1335036 (_2!23084 (v!38997 lt!1335054))) lt!1335249)))

(declare-fun bs!582705 () Bool)

(assert (= bs!582705 d!1140471))

(assert (=> bs!582705 m!4399805))

(assert (=> bs!582705 m!4399805))

(declare-fun m!4400581 () Bool)

(assert (=> bs!582705 m!4400581))

(declare-fun m!4400583 () Bool)

(assert (=> bs!582705 m!4400583))

(assert (=> b!3845177 d!1140471))

(declare-fun d!1140473 () Bool)

(assert (=> d!1140473 (= (size!30635 (_1!23084 (v!38997 lt!1335054))) (size!30636 (originalCharacters!6888 (_1!23084 (v!38997 lt!1335054)))))))

(declare-fun Unit!58409 () Unit!58406)

(assert (=> d!1140473 (= (lemmaCharactersSize!949 (_1!23084 (v!38997 lt!1335054))) Unit!58409)))

(declare-fun bs!582706 () Bool)

(assert (= bs!582706 d!1140473))

(assert (=> bs!582706 m!4399769))

(assert (=> b!3845177 d!1140473))

(declare-fun d!1140475 () Bool)

(declare-fun res!1556731 () Bool)

(declare-fun e!2376566 () Bool)

(assert (=> d!1140475 (=> (not res!1556731) (not e!2376566))))

(declare-fun validRegex!5092 (Regex!11193) Bool)

(assert (=> d!1140475 (= res!1556731 (validRegex!5092 (regex!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054))))))))

(assert (=> d!1140475 (= (ruleValid!2240 thiss!20629 (rule!9132 (_1!23084 (v!38997 lt!1335054)))) e!2376566)))

(declare-fun b!3845733 () Bool)

(declare-fun res!1556732 () Bool)

(assert (=> b!3845733 (=> (not res!1556732) (not e!2376566))))

(declare-fun nullable!3893 (Regex!11193) Bool)

(assert (=> b!3845733 (= res!1556732 (not (nullable!3893 (regex!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))))))))

(declare-fun b!3845734 () Bool)

(assert (=> b!3845734 (= e!2376566 (not (= (tag!7148 (rule!9132 (_1!23084 (v!38997 lt!1335054)))) (String!46309 ""))))))

(assert (= (and d!1140475 res!1556731) b!3845733))

(assert (= (and b!3845733 res!1556732) b!3845734))

(declare-fun m!4400585 () Bool)

(assert (=> d!1140475 m!4400585))

(declare-fun m!4400587 () Bool)

(assert (=> b!3845733 m!4400587))

(assert (=> b!3845177 d!1140475))

(declare-fun d!1140477 () Bool)

(assert (=> d!1140477 (= (_2!23084 (v!38997 lt!1335054)) lt!1335046)))

(declare-fun lt!1335252 () Unit!58406)

(declare-fun choose!22627 (List!40843 List!40843 List!40843 List!40843 List!40843) Unit!58406)

(assert (=> d!1140477 (= lt!1335252 (choose!22627 lt!1335036 (_2!23084 (v!38997 lt!1335054)) lt!1335036 lt!1335046 lt!1335047))))

(assert (=> d!1140477 (isPrefix!3387 lt!1335036 lt!1335047)))

(assert (=> d!1140477 (= (lemmaSamePrefixThenSameSuffix!1608 lt!1335036 (_2!23084 (v!38997 lt!1335054)) lt!1335036 lt!1335046 lt!1335047) lt!1335252)))

(declare-fun bs!582707 () Bool)

(assert (= bs!582707 d!1140477))

(declare-fun m!4400589 () Bool)

(assert (=> bs!582707 m!4400589))

(declare-fun m!4400591 () Bool)

(assert (=> bs!582707 m!4400591))

(assert (=> b!3845177 d!1140477))

(declare-fun d!1140479 () Bool)

(declare-fun lt!1335255 () BalanceConc!24592)

(assert (=> d!1140479 (= (list!15158 lt!1335255) (originalCharacters!6888 (_1!23084 (v!38997 lt!1335054))))))

(assert (=> d!1140479 (= lt!1335255 (dynLambda!17585 (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054))))) (value!199842 (_1!23084 (v!38997 lt!1335054)))))))

(assert (=> d!1140479 (= (charsOf!4116 (_1!23084 (v!38997 lt!1335054))) lt!1335255)))

(declare-fun b_lambda!112407 () Bool)

(assert (=> (not b_lambda!112407) (not d!1140479)))

(declare-fun t!311022 () Bool)

(declare-fun tb!221483 () Bool)

(assert (=> (and b!3845200 (= (toChars!8563 (transformation!6288 (h!46141 rules!2768))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))))) t!311022) tb!221483))

(declare-fun b!3845735 () Bool)

(declare-fun e!2376567 () Bool)

(declare-fun tp!1165392 () Bool)

(assert (=> b!3845735 (= e!2376567 (and (inv!54867 (c!669883 (dynLambda!17585 (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054))))) (value!199842 (_1!23084 (v!38997 lt!1335054)))))) tp!1165392))))

(declare-fun result!269910 () Bool)

(assert (=> tb!221483 (= result!269910 (and (inv!54868 (dynLambda!17585 (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054))))) (value!199842 (_1!23084 (v!38997 lt!1335054))))) e!2376567))))

(assert (= tb!221483 b!3845735))

(declare-fun m!4400593 () Bool)

(assert (=> b!3845735 m!4400593))

(declare-fun m!4400595 () Bool)

(assert (=> tb!221483 m!4400595))

(assert (=> d!1140479 t!311022))

(declare-fun b_and!286835 () Bool)

(assert (= b_and!286827 (and (=> t!311022 result!269910) b_and!286835)))

(declare-fun tb!221485 () Bool)

(declare-fun t!311024 () Bool)

(assert (=> (and b!3845173 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))))) t!311024) tb!221485))

(declare-fun result!269912 () Bool)

(assert (= result!269912 result!269910))

(assert (=> d!1140479 t!311024))

(declare-fun b_and!286837 () Bool)

(assert (= b_and!286829 (and (=> t!311024 result!269912) b_and!286837)))

(declare-fun tb!221487 () Bool)

(declare-fun t!311026 () Bool)

(assert (=> (and b!3845166 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))))) t!311026) tb!221487))

(declare-fun result!269914 () Bool)

(assert (= result!269914 result!269910))

(assert (=> d!1140479 t!311026))

(declare-fun b_and!286839 () Bool)

(assert (= b_and!286831 (and (=> t!311026 result!269914) b_and!286839)))

(declare-fun tb!221489 () Bool)

(declare-fun t!311028 () Bool)

(assert (=> (and b!3845170 (= (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))))) t!311028) tb!221489))

(declare-fun result!269916 () Bool)

(assert (= result!269916 result!269910))

(assert (=> d!1140479 t!311028))

(declare-fun b_and!286841 () Bool)

(assert (= b_and!286833 (and (=> t!311028 result!269916) b_and!286841)))

(declare-fun m!4400597 () Bool)

(assert (=> d!1140479 m!4400597))

(declare-fun m!4400599 () Bool)

(assert (=> d!1140479 m!4400599))

(assert (=> b!3845177 d!1140479))

(declare-fun b!3845736 () Bool)

(declare-fun e!2376569 () Bool)

(declare-fun lt!1335257 () tuple2!39898)

(assert (=> b!3845736 (= e!2376569 (not (isEmpty!24082 (_1!23083 lt!1335257))))))

(declare-fun b!3845737 () Bool)

(declare-fun e!2376570 () Bool)

(assert (=> b!3845737 (= e!2376570 e!2376569)))

(declare-fun res!1556733 () Bool)

(assert (=> b!3845737 (= res!1556733 (< (size!30636 (_2!23083 lt!1335257)) (size!30636 (_2!23084 (v!38997 lt!1335054)))))))

(assert (=> b!3845737 (=> (not res!1556733) (not e!2376569))))

(declare-fun b!3845738 () Bool)

(declare-fun e!2376568 () tuple2!39898)

(assert (=> b!3845738 (= e!2376568 (tuple2!39899 Nil!40720 (_2!23084 (v!38997 lt!1335054))))))

(declare-fun b!3845739 () Bool)

(assert (=> b!3845739 (= e!2376570 (= (_2!23083 lt!1335257) (_2!23084 (v!38997 lt!1335054))))))

(declare-fun d!1140481 () Bool)

(assert (=> d!1140481 e!2376570))

(declare-fun c!669969 () Bool)

(assert (=> d!1140481 (= c!669969 (> (size!30638 (_1!23083 lt!1335257)) 0))))

(assert (=> d!1140481 (= lt!1335257 e!2376568)))

(declare-fun c!669968 () Bool)

(declare-fun lt!1335258 () Option!8706)

(assert (=> d!1140481 (= c!669968 ((_ is Some!8705) lt!1335258))))

(assert (=> d!1140481 (= lt!1335258 (maxPrefix!3181 thiss!20629 rules!2768 (_2!23084 (v!38997 lt!1335054))))))

(assert (=> d!1140481 (= (lexList!1645 thiss!20629 rules!2768 (_2!23084 (v!38997 lt!1335054))) lt!1335257)))

(declare-fun b!3845740 () Bool)

(declare-fun lt!1335256 () tuple2!39898)

(assert (=> b!3845740 (= e!2376568 (tuple2!39899 (Cons!40720 (_1!23084 (v!38997 lt!1335258)) (_1!23083 lt!1335256)) (_2!23083 lt!1335256)))))

(assert (=> b!3845740 (= lt!1335256 (lexList!1645 thiss!20629 rules!2768 (_2!23084 (v!38997 lt!1335258))))))

(assert (= (and d!1140481 c!669968) b!3845740))

(assert (= (and d!1140481 (not c!669968)) b!3845738))

(assert (= (and d!1140481 c!669969) b!3845737))

(assert (= (and d!1140481 (not c!669969)) b!3845739))

(assert (= (and b!3845737 res!1556733) b!3845736))

(declare-fun m!4400601 () Bool)

(assert (=> b!3845736 m!4400601))

(declare-fun m!4400603 () Bool)

(assert (=> b!3845737 m!4400603))

(declare-fun m!4400605 () Bool)

(assert (=> b!3845737 m!4400605))

(declare-fun m!4400607 () Bool)

(assert (=> d!1140481 m!4400607))

(declare-fun m!4400609 () Bool)

(assert (=> d!1140481 m!4400609))

(declare-fun m!4400611 () Bool)

(assert (=> b!3845740 m!4400611))

(assert (=> b!3845177 d!1140481))

(declare-fun d!1140483 () Bool)

(declare-fun list!15160 (Conc!12499) List!40843)

(assert (=> d!1140483 (= (list!15158 (charsOf!4116 (_1!23084 (v!38997 lt!1335054)))) (list!15160 (c!669883 (charsOf!4116 (_1!23084 (v!38997 lt!1335054))))))))

(declare-fun bs!582708 () Bool)

(assert (= bs!582708 d!1140483))

(declare-fun m!4400613 () Bool)

(assert (=> bs!582708 m!4400613))

(assert (=> b!3845177 d!1140483))

(declare-fun d!1140485 () Bool)

(declare-fun dynLambda!17586 (Int BalanceConc!24592) TokenValue!6518)

(assert (=> d!1140485 (= (apply!9531 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))) (seqFromList!4559 lt!1335036)) (dynLambda!17586 (toValue!8704 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054))))) (seqFromList!4559 lt!1335036)))))

(declare-fun b_lambda!112409 () Bool)

(assert (=> (not b_lambda!112409) (not d!1140485)))

(declare-fun tb!221491 () Bool)

(declare-fun t!311030 () Bool)

(assert (=> (and b!3845200 (= (toValue!8704 (transformation!6288 (h!46141 rules!2768))) (toValue!8704 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))))) t!311030) tb!221491))

(declare-fun result!269918 () Bool)

(assert (=> tb!221491 (= result!269918 (inv!21 (dynLambda!17586 (toValue!8704 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054))))) (seqFromList!4559 lt!1335036))))))

(declare-fun m!4400615 () Bool)

(assert (=> tb!221491 m!4400615))

(assert (=> d!1140485 t!311030))

(declare-fun b_and!286843 () Bool)

(assert (= b_and!286751 (and (=> t!311030 result!269918) b_and!286843)))

(declare-fun tb!221493 () Bool)

(declare-fun t!311032 () Bool)

(assert (=> (and b!3845173 (= (toValue!8704 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))) (toValue!8704 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))))) t!311032) tb!221493))

(declare-fun result!269922 () Bool)

(assert (= result!269922 result!269918))

(assert (=> d!1140485 t!311032))

(declare-fun b_and!286845 () Bool)

(assert (= b_and!286755 (and (=> t!311032 result!269922) b_and!286845)))

(declare-fun tb!221495 () Bool)

(declare-fun t!311034 () Bool)

(assert (=> (and b!3845166 (= (toValue!8704 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))) (toValue!8704 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))))) t!311034) tb!221495))

(declare-fun result!269924 () Bool)

(assert (= result!269924 result!269918))

(assert (=> d!1140485 t!311034))

(declare-fun b_and!286847 () Bool)

(assert (= b_and!286759 (and (=> t!311034 result!269924) b_and!286847)))

(declare-fun tb!221497 () Bool)

(declare-fun t!311036 () Bool)

(assert (=> (and b!3845170 (= (toValue!8704 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))) (toValue!8704 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))))) t!311036) tb!221497))

(declare-fun result!269926 () Bool)

(assert (= result!269926 result!269918))

(assert (=> d!1140485 t!311036))

(declare-fun b_and!286849 () Bool)

(assert (= b_and!286763 (and (=> t!311036 result!269926) b_and!286849)))

(assert (=> d!1140485 m!4399789))

(declare-fun m!4400617 () Bool)

(assert (=> d!1140485 m!4400617))

(assert (=> b!3845177 d!1140485))

(declare-fun d!1140487 () Bool)

(declare-fun fromListB!2103 (List!40843) BalanceConc!24592)

(assert (=> d!1140487 (= (seqFromList!4559 lt!1335036) (fromListB!2103 lt!1335036))))

(declare-fun bs!582709 () Bool)

(assert (= bs!582709 d!1140487))

(declare-fun m!4400619 () Bool)

(assert (=> bs!582709 m!4400619))

(assert (=> b!3845177 d!1140487))

(declare-fun d!1140489 () Bool)

(declare-fun lt!1335261 () List!40843)

(assert (=> d!1140489 (= (++!10333 lt!1335036 lt!1335261) lt!1335047)))

(declare-fun e!2376576 () List!40843)

(assert (=> d!1140489 (= lt!1335261 e!2376576)))

(declare-fun c!669972 () Bool)

(assert (=> d!1140489 (= c!669972 ((_ is Cons!40719) lt!1335036))))

(assert (=> d!1140489 (>= (size!30636 lt!1335047) (size!30636 lt!1335036))))

(assert (=> d!1140489 (= (getSuffix!1842 lt!1335047 lt!1335036) lt!1335261)))

(declare-fun b!3845747 () Bool)

(assert (=> b!3845747 (= e!2376576 (getSuffix!1842 (tail!5815 lt!1335047) (t!310932 lt!1335036)))))

(declare-fun b!3845748 () Bool)

(assert (=> b!3845748 (= e!2376576 lt!1335047)))

(assert (= (and d!1140489 c!669972) b!3845747))

(assert (= (and d!1140489 (not c!669972)) b!3845748))

(declare-fun m!4400621 () Bool)

(assert (=> d!1140489 m!4400621))

(assert (=> d!1140489 m!4399881))

(assert (=> d!1140489 m!4399781))

(assert (=> b!3845747 m!4399877))

(assert (=> b!3845747 m!4399877))

(declare-fun m!4400623 () Bool)

(assert (=> b!3845747 m!4400623))

(assert (=> b!3845177 d!1140489))

(declare-fun b!3845750 () Bool)

(declare-fun e!2376578 () List!40843)

(assert (=> b!3845750 (= e!2376578 (Cons!40719 (h!46139 lt!1335036) (++!10333 (t!310932 lt!1335036) (_2!23084 (v!38997 lt!1335054)))))))

(declare-fun d!1140491 () Bool)

(declare-fun e!2376577 () Bool)

(assert (=> d!1140491 e!2376577))

(declare-fun res!1556734 () Bool)

(assert (=> d!1140491 (=> (not res!1556734) (not e!2376577))))

(declare-fun lt!1335262 () List!40843)

(assert (=> d!1140491 (= res!1556734 (= (content!6051 lt!1335262) ((_ map or) (content!6051 lt!1335036) (content!6051 (_2!23084 (v!38997 lt!1335054))))))))

(assert (=> d!1140491 (= lt!1335262 e!2376578)))

(declare-fun c!669973 () Bool)

(assert (=> d!1140491 (= c!669973 ((_ is Nil!40719) lt!1335036))))

(assert (=> d!1140491 (= (++!10333 lt!1335036 (_2!23084 (v!38997 lt!1335054))) lt!1335262)))

(declare-fun b!3845752 () Bool)

(assert (=> b!3845752 (= e!2376577 (or (not (= (_2!23084 (v!38997 lt!1335054)) Nil!40719)) (= lt!1335262 lt!1335036)))))

(declare-fun b!3845751 () Bool)

(declare-fun res!1556735 () Bool)

(assert (=> b!3845751 (=> (not res!1556735) (not e!2376577))))

(assert (=> b!3845751 (= res!1556735 (= (size!30636 lt!1335262) (+ (size!30636 lt!1335036) (size!30636 (_2!23084 (v!38997 lt!1335054))))))))

(declare-fun b!3845749 () Bool)

(assert (=> b!3845749 (= e!2376578 (_2!23084 (v!38997 lt!1335054)))))

(assert (= (and d!1140491 c!669973) b!3845749))

(assert (= (and d!1140491 (not c!669973)) b!3845750))

(assert (= (and d!1140491 res!1556734) b!3845751))

(assert (= (and b!3845751 res!1556735) b!3845752))

(declare-fun m!4400625 () Bool)

(assert (=> b!3845750 m!4400625))

(declare-fun m!4400627 () Bool)

(assert (=> d!1140491 m!4400627))

(declare-fun m!4400629 () Bool)

(assert (=> d!1140491 m!4400629))

(declare-fun m!4400631 () Bool)

(assert (=> d!1140491 m!4400631))

(declare-fun m!4400633 () Bool)

(assert (=> b!3845751 m!4400633))

(assert (=> b!3845751 m!4399781))

(assert (=> b!3845751 m!4400605))

(assert (=> b!3845177 d!1140491))

(declare-fun d!1140493 () Bool)

(assert (=> d!1140493 (= (inv!54860 (tag!7148 (rule!9132 (_1!23084 (v!38997 err!4305))))) (= (mod (str.len (value!199841 (tag!7148 (rule!9132 (_1!23084 (v!38997 err!4305)))))) 2) 0))))

(assert (=> b!3845199 d!1140493))

(declare-fun d!1140495 () Bool)

(declare-fun res!1556736 () Bool)

(declare-fun e!2376579 () Bool)

(assert (=> d!1140495 (=> (not res!1556736) (not e!2376579))))

(assert (=> d!1140495 (= res!1556736 (semiInverseModEq!2693 (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))) (toValue!8704 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305)))))))))

(assert (=> d!1140495 (= (inv!54863 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))) e!2376579)))

(declare-fun b!3845753 () Bool)

(assert (=> b!3845753 (= e!2376579 (equivClasses!2592 (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))) (toValue!8704 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305)))))))))

(assert (= (and d!1140495 res!1556736) b!3845753))

(declare-fun m!4400635 () Bool)

(assert (=> d!1140495 m!4400635))

(declare-fun m!4400637 () Bool)

(assert (=> b!3845753 m!4400637))

(assert (=> b!3845199 d!1140495))

(declare-fun d!1140497 () Bool)

(assert (=> d!1140497 (= (inv!54860 (tag!7148 (h!46141 rules!2768))) (= (mod (str.len (value!199841 (tag!7148 (h!46141 rules!2768)))) 2) 0))))

(assert (=> b!3845174 d!1140497))

(declare-fun d!1140499 () Bool)

(declare-fun res!1556737 () Bool)

(declare-fun e!2376580 () Bool)

(assert (=> d!1140499 (=> (not res!1556737) (not e!2376580))))

(assert (=> d!1140499 (= res!1556737 (semiInverseModEq!2693 (toChars!8563 (transformation!6288 (h!46141 rules!2768))) (toValue!8704 (transformation!6288 (h!46141 rules!2768)))))))

(assert (=> d!1140499 (= (inv!54863 (transformation!6288 (h!46141 rules!2768))) e!2376580)))

(declare-fun b!3845754 () Bool)

(assert (=> b!3845754 (= e!2376580 (equivClasses!2592 (toChars!8563 (transformation!6288 (h!46141 rules!2768))) (toValue!8704 (transformation!6288 (h!46141 rules!2768)))))))

(assert (= (and d!1140499 res!1556737) b!3845754))

(declare-fun m!4400639 () Bool)

(assert (=> d!1140499 m!4400639))

(declare-fun m!4400641 () Bool)

(assert (=> b!3845754 m!4400641))

(assert (=> b!3845174 d!1140499))

(declare-fun d!1140501 () Bool)

(assert (=> d!1140501 (= (inv!54860 (tag!7148 (rule!9132 (h!46140 suffixTokens!72)))) (= (mod (str.len (value!199841 (tag!7148 (rule!9132 (h!46140 suffixTokens!72))))) 2) 0))))

(assert (=> b!3845195 d!1140501))

(declare-fun d!1140503 () Bool)

(declare-fun res!1556738 () Bool)

(declare-fun e!2376581 () Bool)

(assert (=> d!1140503 (=> (not res!1556738) (not e!2376581))))

(assert (=> d!1140503 (= res!1556738 (semiInverseModEq!2693 (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))) (toValue!8704 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72))))))))

(assert (=> d!1140503 (= (inv!54863 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))) e!2376581)))

(declare-fun b!3845755 () Bool)

(assert (=> b!3845755 (= e!2376581 (equivClasses!2592 (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))) (toValue!8704 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72))))))))

(assert (= (and d!1140503 res!1556738) b!3845755))

(declare-fun m!4400643 () Bool)

(assert (=> d!1140503 m!4400643))

(declare-fun m!4400645 () Bool)

(assert (=> b!3845755 m!4400645))

(assert (=> b!3845195 d!1140503))

(declare-fun d!1140505 () Bool)

(assert (=> d!1140505 (= (isEmpty!24084 (_2!23084 lt!1335049)) ((_ is Nil!40719) (_2!23084 lt!1335049)))))

(assert (=> b!3845197 d!1140505))

(declare-fun d!1140507 () Bool)

(declare-fun res!1556739 () Bool)

(declare-fun e!2376582 () Bool)

(assert (=> d!1140507 (=> (not res!1556739) (not e!2376582))))

(assert (=> d!1140507 (= res!1556739 (not (isEmpty!24084 (originalCharacters!6888 (_1!23084 (v!38997 err!4305))))))))

(assert (=> d!1140507 (= (inv!54864 (_1!23084 (v!38997 err!4305))) e!2376582)))

(declare-fun b!3845756 () Bool)

(declare-fun res!1556740 () Bool)

(assert (=> b!3845756 (=> (not res!1556740) (not e!2376582))))

(assert (=> b!3845756 (= res!1556740 (= (originalCharacters!6888 (_1!23084 (v!38997 err!4305))) (list!15158 (dynLambda!17585 (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))) (value!199842 (_1!23084 (v!38997 err!4305)))))))))

(declare-fun b!3845757 () Bool)

(assert (=> b!3845757 (= e!2376582 (= (size!30635 (_1!23084 (v!38997 err!4305))) (size!30636 (originalCharacters!6888 (_1!23084 (v!38997 err!4305))))))))

(assert (= (and d!1140507 res!1556739) b!3845756))

(assert (= (and b!3845756 res!1556740) b!3845757))

(declare-fun b_lambda!112411 () Bool)

(assert (=> (not b_lambda!112411) (not b!3845756)))

(declare-fun tb!221499 () Bool)

(declare-fun t!311038 () Bool)

(assert (=> (and b!3845200 (= (toChars!8563 (transformation!6288 (h!46141 rules!2768))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305)))))) t!311038) tb!221499))

(declare-fun b!3845758 () Bool)

(declare-fun e!2376583 () Bool)

(declare-fun tp!1165393 () Bool)

(assert (=> b!3845758 (= e!2376583 (and (inv!54867 (c!669883 (dynLambda!17585 (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))) (value!199842 (_1!23084 (v!38997 err!4305)))))) tp!1165393))))

(declare-fun result!269928 () Bool)

(assert (=> tb!221499 (= result!269928 (and (inv!54868 (dynLambda!17585 (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))) (value!199842 (_1!23084 (v!38997 err!4305))))) e!2376583))))

(assert (= tb!221499 b!3845758))

(declare-fun m!4400647 () Bool)

(assert (=> b!3845758 m!4400647))

(declare-fun m!4400649 () Bool)

(assert (=> tb!221499 m!4400649))

(assert (=> b!3845756 t!311038))

(declare-fun b_and!286851 () Bool)

(assert (= b_and!286835 (and (=> t!311038 result!269928) b_and!286851)))

(declare-fun t!311040 () Bool)

(declare-fun tb!221501 () Bool)

(assert (=> (and b!3845173 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305)))))) t!311040) tb!221501))

(declare-fun result!269930 () Bool)

(assert (= result!269930 result!269928))

(assert (=> b!3845756 t!311040))

(declare-fun b_and!286853 () Bool)

(assert (= b_and!286837 (and (=> t!311040 result!269930) b_and!286853)))

(declare-fun t!311042 () Bool)

(declare-fun tb!221503 () Bool)

(assert (=> (and b!3845166 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305)))))) t!311042) tb!221503))

(declare-fun result!269932 () Bool)

(assert (= result!269932 result!269928))

(assert (=> b!3845756 t!311042))

(declare-fun b_and!286855 () Bool)

(assert (= b_and!286839 (and (=> t!311042 result!269932) b_and!286855)))

(declare-fun t!311044 () Bool)

(declare-fun tb!221505 () Bool)

(assert (=> (and b!3845170 (= (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305)))))) t!311044) tb!221505))

(declare-fun result!269934 () Bool)

(assert (= result!269934 result!269928))

(assert (=> b!3845756 t!311044))

(declare-fun b_and!286857 () Bool)

(assert (= b_and!286841 (and (=> t!311044 result!269934) b_and!286857)))

(declare-fun m!4400651 () Bool)

(assert (=> d!1140507 m!4400651))

(declare-fun m!4400653 () Bool)

(assert (=> b!3845756 m!4400653))

(assert (=> b!3845756 m!4400653))

(declare-fun m!4400655 () Bool)

(assert (=> b!3845756 m!4400655))

(declare-fun m!4400657 () Bool)

(assert (=> b!3845757 m!4400657))

(assert (=> b!3845175 d!1140507))

(declare-fun d!1140509 () Bool)

(assert (=> d!1140509 (and (= lt!1335036 prefix!426) (= (_2!23084 (v!38997 lt!1335054)) suffix!1176))))

(declare-fun lt!1335265 () Unit!58406)

(declare-fun choose!22628 (List!40843 List!40843 List!40843 List!40843) Unit!58406)

(assert (=> d!1140509 (= lt!1335265 (choose!22628 lt!1335036 (_2!23084 (v!38997 lt!1335054)) prefix!426 suffix!1176))))

(assert (=> d!1140509 (= (++!10333 lt!1335036 (_2!23084 (v!38997 lt!1335054))) (++!10333 prefix!426 suffix!1176))))

(assert (=> d!1140509 (= (lemmaConcatSameAndSameSizesThenSameLists!416 lt!1335036 (_2!23084 (v!38997 lt!1335054)) prefix!426 suffix!1176) lt!1335265)))

(declare-fun bs!582710 () Bool)

(assert (= bs!582710 d!1140509))

(declare-fun m!4400659 () Bool)

(assert (=> bs!582710 m!4400659))

(assert (=> bs!582710 m!4399805))

(assert (=> bs!582710 m!4399739))

(assert (=> b!3845196 d!1140509))

(declare-fun b!3845770 () Bool)

(declare-fun e!2376586 () Bool)

(declare-fun tp!1165406 () Bool)

(declare-fun tp!1165407 () Bool)

(assert (=> b!3845770 (= e!2376586 (and tp!1165406 tp!1165407))))

(declare-fun b!3845769 () Bool)

(assert (=> b!3845769 (= e!2376586 tp_is_empty!19357)))

(assert (=> b!3845204 (= tp!1165292 e!2376586)))

(declare-fun b!3845771 () Bool)

(declare-fun tp!1165408 () Bool)

(assert (=> b!3845771 (= e!2376586 tp!1165408)))

(declare-fun b!3845772 () Bool)

(declare-fun tp!1165405 () Bool)

(declare-fun tp!1165404 () Bool)

(assert (=> b!3845772 (= e!2376586 (and tp!1165405 tp!1165404))))

(assert (= (and b!3845204 ((_ is ElementMatch!11193) (regex!6288 (rule!9132 (h!46140 prefixTokens!80))))) b!3845769))

(assert (= (and b!3845204 ((_ is Concat!17712) (regex!6288 (rule!9132 (h!46140 prefixTokens!80))))) b!3845770))

(assert (= (and b!3845204 ((_ is Star!11193) (regex!6288 (rule!9132 (h!46140 prefixTokens!80))))) b!3845771))

(assert (= (and b!3845204 ((_ is Union!11193) (regex!6288 (rule!9132 (h!46140 prefixTokens!80))))) b!3845772))

(declare-fun b!3845786 () Bool)

(declare-fun b_free!102861 () Bool)

(declare-fun b_next!103565 () Bool)

(assert (=> b!3845786 (= b_free!102861 (not b_next!103565))))

(declare-fun tb!221507 () Bool)

(declare-fun t!311046 () Bool)

(assert (=> (and b!3845786 (= (toValue!8704 (transformation!6288 (rule!9132 (h!46140 (t!310933 suffixTokens!72))))) (toValue!8704 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))))) t!311046) tb!221507))

(declare-fun result!269940 () Bool)

(assert (= result!269940 result!269918))

(assert (=> d!1140485 t!311046))

(declare-fun b_and!286859 () Bool)

(declare-fun tp!1165421 () Bool)

(assert (=> b!3845786 (= tp!1165421 (and (=> t!311046 result!269940) b_and!286859))))

(declare-fun b_free!102863 () Bool)

(declare-fun b_next!103567 () Bool)

(assert (=> b!3845786 (= b_free!102863 (not b_next!103567))))

(declare-fun t!311048 () Bool)

(declare-fun tb!221509 () Bool)

(assert (=> (and b!3845786 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 (t!310933 suffixTokens!72))))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72))))) t!311048) tb!221509))

(declare-fun result!269942 () Bool)

(assert (= result!269942 result!269820))

(assert (=> b!3845286 t!311048))

(declare-fun tb!221511 () Bool)

(declare-fun t!311050 () Bool)

(assert (=> (and b!3845786 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 (t!310933 suffixTokens!72))))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80))))) t!311050) tb!221511))

(declare-fun result!269944 () Bool)

(assert (= result!269944 result!269902))

(assert (=> b!3845720 t!311050))

(declare-fun tb!221513 () Bool)

(declare-fun t!311052 () Bool)

(assert (=> (and b!3845786 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 (t!310933 suffixTokens!72))))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))))) t!311052) tb!221513))

(declare-fun result!269946 () Bool)

(assert (= result!269946 result!269910))

(assert (=> d!1140479 t!311052))

(declare-fun t!311054 () Bool)

(declare-fun tb!221515 () Bool)

(assert (=> (and b!3845786 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 (t!310933 suffixTokens!72))))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305)))))) t!311054) tb!221515))

(declare-fun result!269948 () Bool)

(assert (= result!269948 result!269928))

(assert (=> b!3845756 t!311054))

(declare-fun tp!1165420 () Bool)

(declare-fun b_and!286861 () Bool)

(assert (=> b!3845786 (= tp!1165420 (and (=> t!311048 result!269942) (=> t!311050 result!269944) (=> t!311052 result!269946) (=> t!311054 result!269948) b_and!286861))))

(declare-fun e!2376599 () Bool)

(assert (=> b!3845194 (= tp!1165289 e!2376599)))

(declare-fun e!2376604 () Bool)

(assert (=> b!3845786 (= e!2376604 (and tp!1165421 tp!1165420))))

(declare-fun e!2376602 () Bool)

(declare-fun b!3845784 () Bool)

(declare-fun e!2376600 () Bool)

(declare-fun tp!1165423 () Bool)

(assert (=> b!3845784 (= e!2376600 (and (inv!21 (value!199842 (h!46140 (t!310933 suffixTokens!72)))) e!2376602 tp!1165423))))

(declare-fun b!3845785 () Bool)

(declare-fun tp!1165422 () Bool)

(assert (=> b!3845785 (= e!2376602 (and tp!1165422 (inv!54860 (tag!7148 (rule!9132 (h!46140 (t!310933 suffixTokens!72))))) (inv!54863 (transformation!6288 (rule!9132 (h!46140 (t!310933 suffixTokens!72))))) e!2376604))))

(declare-fun b!3845783 () Bool)

(declare-fun tp!1165419 () Bool)

(assert (=> b!3845783 (= e!2376599 (and (inv!54864 (h!46140 (t!310933 suffixTokens!72))) e!2376600 tp!1165419))))

(assert (= b!3845785 b!3845786))

(assert (= b!3845784 b!3845785))

(assert (= b!3845783 b!3845784))

(assert (= (and b!3845194 ((_ is Cons!40720) (t!310933 suffixTokens!72))) b!3845783))

(declare-fun m!4400661 () Bool)

(assert (=> b!3845784 m!4400661))

(declare-fun m!4400663 () Bool)

(assert (=> b!3845785 m!4400663))

(declare-fun m!4400665 () Bool)

(assert (=> b!3845785 m!4400665))

(declare-fun m!4400667 () Bool)

(assert (=> b!3845783 m!4400667))

(declare-fun b!3845791 () Bool)

(declare-fun e!2376607 () Bool)

(declare-fun tp!1165426 () Bool)

(assert (=> b!3845791 (= e!2376607 (and tp_is_empty!19357 tp!1165426))))

(assert (=> b!3845183 (= tp!1165300 e!2376607)))

(assert (= (and b!3845183 ((_ is Cons!40719) (t!310932 suffixResult!91))) b!3845791))

(declare-fun b!3845802 () Bool)

(declare-fun b_free!102865 () Bool)

(declare-fun b_next!103569 () Bool)

(assert (=> b!3845802 (= b_free!102865 (not b_next!103569))))

(declare-fun t!311056 () Bool)

(declare-fun tb!221517 () Bool)

(assert (=> (and b!3845802 (= (toValue!8704 (transformation!6288 (h!46141 (t!310934 rules!2768)))) (toValue!8704 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))))) t!311056) tb!221517))

(declare-fun result!269954 () Bool)

(assert (= result!269954 result!269918))

(assert (=> d!1140485 t!311056))

(declare-fun tp!1165437 () Bool)

(declare-fun b_and!286863 () Bool)

(assert (=> b!3845802 (= tp!1165437 (and (=> t!311056 result!269954) b_and!286863))))

(declare-fun b_free!102867 () Bool)

(declare-fun b_next!103571 () Bool)

(assert (=> b!3845802 (= b_free!102867 (not b_next!103571))))

(declare-fun t!311058 () Bool)

(declare-fun tb!221519 () Bool)

(assert (=> (and b!3845802 (= (toChars!8563 (transformation!6288 (h!46141 (t!310934 rules!2768)))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72))))) t!311058) tb!221519))

(declare-fun result!269956 () Bool)

(assert (= result!269956 result!269820))

(assert (=> b!3845286 t!311058))

(declare-fun t!311060 () Bool)

(declare-fun tb!221521 () Bool)

(assert (=> (and b!3845802 (= (toChars!8563 (transformation!6288 (h!46141 (t!310934 rules!2768)))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80))))) t!311060) tb!221521))

(declare-fun result!269958 () Bool)

(assert (= result!269958 result!269902))

(assert (=> b!3845720 t!311060))

(declare-fun tb!221523 () Bool)

(declare-fun t!311062 () Bool)

(assert (=> (and b!3845802 (= (toChars!8563 (transformation!6288 (h!46141 (t!310934 rules!2768)))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))))) t!311062) tb!221523))

(declare-fun result!269960 () Bool)

(assert (= result!269960 result!269910))

(assert (=> d!1140479 t!311062))

(declare-fun tb!221525 () Bool)

(declare-fun t!311064 () Bool)

(assert (=> (and b!3845802 (= (toChars!8563 (transformation!6288 (h!46141 (t!310934 rules!2768)))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305)))))) t!311064) tb!221525))

(declare-fun result!269962 () Bool)

(assert (= result!269962 result!269928))

(assert (=> b!3845756 t!311064))

(declare-fun tp!1165436 () Bool)

(declare-fun b_and!286865 () Bool)

(assert (=> b!3845802 (= tp!1165436 (and (=> t!311058 result!269956) (=> t!311060 result!269958) (=> t!311062 result!269960) (=> t!311064 result!269962) b_and!286865))))

(declare-fun e!2376619 () Bool)

(assert (=> b!3845802 (= e!2376619 (and tp!1165437 tp!1165436))))

(declare-fun tp!1165438 () Bool)

(declare-fun b!3845801 () Bool)

(declare-fun e!2376617 () Bool)

(assert (=> b!3845801 (= e!2376617 (and tp!1165438 (inv!54860 (tag!7148 (h!46141 (t!310934 rules!2768)))) (inv!54863 (transformation!6288 (h!46141 (t!310934 rules!2768)))) e!2376619))))

(declare-fun b!3845800 () Bool)

(declare-fun e!2376618 () Bool)

(declare-fun tp!1165435 () Bool)

(assert (=> b!3845800 (= e!2376618 (and e!2376617 tp!1165435))))

(assert (=> b!3845169 (= tp!1165304 e!2376618)))

(assert (= b!3845801 b!3845802))

(assert (= b!3845800 b!3845801))

(assert (= (and b!3845169 ((_ is Cons!40721) (t!310934 rules!2768))) b!3845800))

(declare-fun m!4400669 () Bool)

(assert (=> b!3845801 m!4400669))

(declare-fun m!4400671 () Bool)

(assert (=> b!3845801 m!4400671))

(declare-fun b!3845803 () Bool)

(declare-fun e!2376620 () Bool)

(declare-fun tp!1165439 () Bool)

(assert (=> b!3845803 (= e!2376620 (and tp_is_empty!19357 tp!1165439))))

(assert (=> b!3845202 (= tp!1165296 e!2376620)))

(assert (= (and b!3845202 ((_ is Cons!40719) (originalCharacters!6888 (h!46140 prefixTokens!80)))) b!3845803))

(declare-fun b!3845807 () Bool)

(declare-fun b_free!102869 () Bool)

(declare-fun b_next!103573 () Bool)

(assert (=> b!3845807 (= b_free!102869 (not b_next!103573))))

(declare-fun t!311066 () Bool)

(declare-fun tb!221527 () Bool)

(assert (=> (and b!3845807 (= (toValue!8704 (transformation!6288 (rule!9132 (h!46140 (t!310933 prefixTokens!80))))) (toValue!8704 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))))) t!311066) tb!221527))

(declare-fun result!269964 () Bool)

(assert (= result!269964 result!269918))

(assert (=> d!1140485 t!311066))

(declare-fun tp!1165442 () Bool)

(declare-fun b_and!286867 () Bool)

(assert (=> b!3845807 (= tp!1165442 (and (=> t!311066 result!269964) b_and!286867))))

(declare-fun b_free!102871 () Bool)

(declare-fun b_next!103575 () Bool)

(assert (=> b!3845807 (= b_free!102871 (not b_next!103575))))

(declare-fun t!311068 () Bool)

(declare-fun tb!221529 () Bool)

(assert (=> (and b!3845807 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 (t!310933 prefixTokens!80))))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72))))) t!311068) tb!221529))

(declare-fun result!269966 () Bool)

(assert (= result!269966 result!269820))

(assert (=> b!3845286 t!311068))

(declare-fun t!311070 () Bool)

(declare-fun tb!221531 () Bool)

(assert (=> (and b!3845807 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 (t!310933 prefixTokens!80))))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80))))) t!311070) tb!221531))

(declare-fun result!269968 () Bool)

(assert (= result!269968 result!269902))

(assert (=> b!3845720 t!311070))

(declare-fun tb!221533 () Bool)

(declare-fun t!311072 () Bool)

(assert (=> (and b!3845807 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 (t!310933 prefixTokens!80))))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 lt!1335054)))))) t!311072) tb!221533))

(declare-fun result!269970 () Bool)

(assert (= result!269970 result!269910))

(assert (=> d!1140479 t!311072))

(declare-fun tb!221535 () Bool)

(declare-fun t!311074 () Bool)

(assert (=> (and b!3845807 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 (t!310933 prefixTokens!80))))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305)))))) t!311074) tb!221535))

(declare-fun result!269972 () Bool)

(assert (= result!269972 result!269928))

(assert (=> b!3845756 t!311074))

(declare-fun b_and!286869 () Bool)

(declare-fun tp!1165441 () Bool)

(assert (=> b!3845807 (= tp!1165441 (and (=> t!311068 result!269966) (=> t!311070 result!269968) (=> t!311072 result!269970) (=> t!311074 result!269972) b_and!286869))))

(declare-fun e!2376621 () Bool)

(assert (=> b!3845180 (= tp!1165307 e!2376621)))

(declare-fun e!2376626 () Bool)

(assert (=> b!3845807 (= e!2376626 (and tp!1165442 tp!1165441))))

(declare-fun tp!1165444 () Bool)

(declare-fun b!3845805 () Bool)

(declare-fun e!2376624 () Bool)

(declare-fun e!2376622 () Bool)

(assert (=> b!3845805 (= e!2376622 (and (inv!21 (value!199842 (h!46140 (t!310933 prefixTokens!80)))) e!2376624 tp!1165444))))

(declare-fun tp!1165443 () Bool)

(declare-fun b!3845806 () Bool)

(assert (=> b!3845806 (= e!2376624 (and tp!1165443 (inv!54860 (tag!7148 (rule!9132 (h!46140 (t!310933 prefixTokens!80))))) (inv!54863 (transformation!6288 (rule!9132 (h!46140 (t!310933 prefixTokens!80))))) e!2376626))))

(declare-fun tp!1165440 () Bool)

(declare-fun b!3845804 () Bool)

(assert (=> b!3845804 (= e!2376621 (and (inv!54864 (h!46140 (t!310933 prefixTokens!80))) e!2376622 tp!1165440))))

(assert (= b!3845806 b!3845807))

(assert (= b!3845805 b!3845806))

(assert (= b!3845804 b!3845805))

(assert (= (and b!3845180 ((_ is Cons!40720) (t!310933 prefixTokens!80))) b!3845804))

(declare-fun m!4400673 () Bool)

(assert (=> b!3845805 m!4400673))

(declare-fun m!4400675 () Bool)

(assert (=> b!3845806 m!4400675))

(declare-fun m!4400677 () Bool)

(assert (=> b!3845806 m!4400677))

(declare-fun m!4400679 () Bool)

(assert (=> b!3845804 m!4400679))

(declare-fun b!3845808 () Bool)

(declare-fun e!2376627 () Bool)

(declare-fun tp!1165445 () Bool)

(assert (=> b!3845808 (= e!2376627 (and tp_is_empty!19357 tp!1165445))))

(assert (=> b!3845198 (= tp!1165310 e!2376627)))

(assert (= (and b!3845198 ((_ is Cons!40719) (t!310932 prefix!426))) b!3845808))

(declare-fun b!3845809 () Bool)

(declare-fun e!2376628 () Bool)

(declare-fun tp!1165446 () Bool)

(assert (=> b!3845809 (= e!2376628 (and tp_is_empty!19357 tp!1165446))))

(assert (=> b!3845187 (= tp!1165305 e!2376628)))

(assert (= (and b!3845187 ((_ is Cons!40719) (originalCharacters!6888 (_1!23084 (v!38997 err!4305))))) b!3845809))

(declare-fun b!3845810 () Bool)

(declare-fun e!2376629 () Bool)

(declare-fun tp!1165447 () Bool)

(assert (=> b!3845810 (= e!2376629 (and tp_is_empty!19357 tp!1165447))))

(assert (=> b!3845178 (= tp!1165291 e!2376629)))

(assert (= (and b!3845178 ((_ is Cons!40719) (t!310932 suffix!1176))) b!3845810))

(declare-fun b!3845812 () Bool)

(declare-fun e!2376630 () Bool)

(declare-fun tp!1165450 () Bool)

(declare-fun tp!1165451 () Bool)

(assert (=> b!3845812 (= e!2376630 (and tp!1165450 tp!1165451))))

(declare-fun b!3845811 () Bool)

(assert (=> b!3845811 (= e!2376630 tp_is_empty!19357)))

(assert (=> b!3845199 (= tp!1165297 e!2376630)))

(declare-fun b!3845813 () Bool)

(declare-fun tp!1165452 () Bool)

(assert (=> b!3845813 (= e!2376630 tp!1165452)))

(declare-fun b!3845814 () Bool)

(declare-fun tp!1165449 () Bool)

(declare-fun tp!1165448 () Bool)

(assert (=> b!3845814 (= e!2376630 (and tp!1165449 tp!1165448))))

(assert (= (and b!3845199 ((_ is ElementMatch!11193) (regex!6288 (rule!9132 (_1!23084 (v!38997 err!4305)))))) b!3845811))

(assert (= (and b!3845199 ((_ is Concat!17712) (regex!6288 (rule!9132 (_1!23084 (v!38997 err!4305)))))) b!3845812))

(assert (= (and b!3845199 ((_ is Star!11193) (regex!6288 (rule!9132 (_1!23084 (v!38997 err!4305)))))) b!3845813))

(assert (= (and b!3845199 ((_ is Union!11193) (regex!6288 (rule!9132 (_1!23084 (v!38997 err!4305)))))) b!3845814))

(declare-fun b!3845815 () Bool)

(declare-fun e!2376631 () Bool)

(declare-fun tp!1165453 () Bool)

(assert (=> b!3845815 (= e!2376631 (and tp_is_empty!19357 tp!1165453))))

(assert (=> b!3845167 (= tp!1165293 e!2376631)))

(assert (= (and b!3845167 ((_ is Cons!40719) (originalCharacters!6888 (h!46140 suffixTokens!72)))) b!3845815))

(declare-fun b!3845817 () Bool)

(declare-fun e!2376632 () Bool)

(declare-fun tp!1165456 () Bool)

(declare-fun tp!1165457 () Bool)

(assert (=> b!3845817 (= e!2376632 (and tp!1165456 tp!1165457))))

(declare-fun b!3845816 () Bool)

(assert (=> b!3845816 (= e!2376632 tp_is_empty!19357)))

(assert (=> b!3845174 (= tp!1165303 e!2376632)))

(declare-fun b!3845818 () Bool)

(declare-fun tp!1165458 () Bool)

(assert (=> b!3845818 (= e!2376632 tp!1165458)))

(declare-fun b!3845819 () Bool)

(declare-fun tp!1165455 () Bool)

(declare-fun tp!1165454 () Bool)

(assert (=> b!3845819 (= e!2376632 (and tp!1165455 tp!1165454))))

(assert (= (and b!3845174 ((_ is ElementMatch!11193) (regex!6288 (h!46141 rules!2768)))) b!3845816))

(assert (= (and b!3845174 ((_ is Concat!17712) (regex!6288 (h!46141 rules!2768)))) b!3845817))

(assert (= (and b!3845174 ((_ is Star!11193) (regex!6288 (h!46141 rules!2768)))) b!3845818))

(assert (= (and b!3845174 ((_ is Union!11193) (regex!6288 (h!46141 rules!2768)))) b!3845819))

(declare-fun b!3845821 () Bool)

(declare-fun e!2376633 () Bool)

(declare-fun tp!1165461 () Bool)

(declare-fun tp!1165462 () Bool)

(assert (=> b!3845821 (= e!2376633 (and tp!1165461 tp!1165462))))

(declare-fun b!3845820 () Bool)

(assert (=> b!3845820 (= e!2376633 tp_is_empty!19357)))

(assert (=> b!3845195 (= tp!1165294 e!2376633)))

(declare-fun b!3845822 () Bool)

(declare-fun tp!1165463 () Bool)

(assert (=> b!3845822 (= e!2376633 tp!1165463)))

(declare-fun b!3845823 () Bool)

(declare-fun tp!1165460 () Bool)

(declare-fun tp!1165459 () Bool)

(assert (=> b!3845823 (= e!2376633 (and tp!1165460 tp!1165459))))

(assert (= (and b!3845195 ((_ is ElementMatch!11193) (regex!6288 (rule!9132 (h!46140 suffixTokens!72))))) b!3845820))

(assert (= (and b!3845195 ((_ is Concat!17712) (regex!6288 (rule!9132 (h!46140 suffixTokens!72))))) b!3845821))

(assert (= (and b!3845195 ((_ is Star!11193) (regex!6288 (rule!9132 (h!46140 suffixTokens!72))))) b!3845822))

(assert (= (and b!3845195 ((_ is Union!11193) (regex!6288 (rule!9132 (h!46140 suffixTokens!72))))) b!3845823))

(declare-fun b!3845824 () Bool)

(declare-fun e!2376634 () Bool)

(declare-fun tp!1165464 () Bool)

(assert (=> b!3845824 (= e!2376634 (and tp_is_empty!19357 tp!1165464))))

(assert (=> b!3845175 (= tp!1165299 e!2376634)))

(assert (= (and b!3845175 ((_ is Cons!40719) (_2!23084 (v!38997 err!4305)))) b!3845824))

(declare-fun b_lambda!112413 () Bool)

(assert (= b_lambda!112405 (or (and b!3845170 b_free!102847 (= (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))))) (and b!3845166 b_free!102843 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))))) (and b!3845173 b_free!102839) (and b!3845786 b_free!102863 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 (t!310933 suffixTokens!72))))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))))) (and b!3845807 b_free!102871 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 (t!310933 prefixTokens!80))))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))))) (and b!3845200 b_free!102835 (= (toChars!8563 (transformation!6288 (h!46141 rules!2768))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))))) (and b!3845802 b_free!102867 (= (toChars!8563 (transformation!6288 (h!46141 (t!310934 rules!2768)))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))))) b_lambda!112413)))

(declare-fun b_lambda!112415 () Bool)

(assert (= b_lambda!112411 (or (and b!3845166 b_free!102843 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))))) (and b!3845786 b_free!102863 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 (t!310933 suffixTokens!72))))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))))) (and b!3845200 b_free!102835 (= (toChars!8563 (transformation!6288 (h!46141 rules!2768))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))))) (and b!3845807 b_free!102871 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 (t!310933 prefixTokens!80))))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))))) (and b!3845802 b_free!102867 (= (toChars!8563 (transformation!6288 (h!46141 (t!310934 rules!2768)))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))))) (and b!3845170 b_free!102847) (and b!3845173 b_free!102839 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))) (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))))) b_lambda!112415)))

(declare-fun b_lambda!112417 () Bool)

(assert (= b_lambda!112389 (or (and b!3845166 b_free!102843) (and b!3845173 b_free!102839 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 prefixTokens!80)))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))))) (and b!3845170 b_free!102847 (= (toChars!8563 (transformation!6288 (rule!9132 (_1!23084 (v!38997 err!4305))))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))))) (and b!3845200 b_free!102835 (= (toChars!8563 (transformation!6288 (h!46141 rules!2768))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))))) (and b!3845786 b_free!102863 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 (t!310933 suffixTokens!72))))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))))) (and b!3845807 b_free!102871 (= (toChars!8563 (transformation!6288 (rule!9132 (h!46140 (t!310933 prefixTokens!80))))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))))) (and b!3845802 b_free!102867 (= (toChars!8563 (transformation!6288 (h!46141 (t!310934 rules!2768)))) (toChars!8563 (transformation!6288 (rule!9132 (h!46140 suffixTokens!72)))))) b_lambda!112417)))

(check-sat (not d!1140507) (not d!1140473) (not b!3845668) (not b!3845324) (not d!1140463) (not b_lambda!112413) (not b!3845292) (not b!3845248) (not b_next!103545) (not b!3845287) (not b!3845713) (not b_next!103565) (not b!3845376) (not d!1140475) (not d!1140327) (not d!1140355) (not b!3845698) (not b_next!103549) b_and!286853 (not b!3845304) (not b!3845747) (not d!1140323) (not b!3845383) (not b!3845365) (not b!3845772) (not b!3845753) (not b!3845302) (not b!3845250) (not b!3845319) (not b!3845823) (not tb!221405) (not b!3845720) (not b!3845803) (not tb!221475) (not tb!221483) (not b!3845721) b_and!286847 (not d!1140347) b_and!286859 b_and!286861 (not b!3845387) (not b_next!103575) (not b!3845785) (not b!3845303) (not b!3845735) (not b!3845804) (not b_next!103569) (not b!3845818) (not d!1140453) b_and!286855 (not b!3845281) (not b!3845363) (not b!3845269) (not b!3845808) (not b!3845757) (not b_next!103551) (not b_next!103541) (not b!3845296) b_and!286849 b_and!286857 (not d!1140499) (not d!1140481) (not b_lambda!112415) (not b!3845727) (not b!3845377) (not b!3845385) (not b!3845712) (not d!1140483) (not b!3845270) (not b!3845669) (not b!3845805) (not b!3845718) (not b_next!103537) (not b!3845321) (not b!3845733) (not d!1140455) (not b!3845273) (not b!3845822) (not b!3845701) (not d!1140331) (not bm!282046) b_and!286865 (not b!3845706) (not b!3845709) (not b!3845702) (not b!3845700) (not d!1140469) (not d!1140459) (not b_next!103573) (not b!3845819) (not b!3845249) (not b_next!103539) (not b!3845280) (not b!3845740) (not b!3845275) (not b!3845728) (not b!3845297) (not b_lambda!112409) (not d!1140487) (not tb!221491) (not b!3845694) (not b!3845758) (not b!3845295) (not d!1140457) (not b!3845379) (not b!3845814) (not b!3845737) (not b!3845317) b_and!286843 (not b!3845824) tp_is_empty!19357 (not d!1140451) (not b!3845755) (not b!3845298) (not b!3845751) (not b!3845726) (not b!3845386) (not b_lambda!112417) (not b!3845336) (not b!3845791) (not b!3845784) (not b_next!103547) (not b_lambda!112407) (not d!1140329) (not d!1140509) (not b!3845783) (not d!1140333) (not b!3845314) (not b!3845271) (not b!3845821) (not b!3845717) (not b!3845697) (not b!3845299) (not b!3845340) (not bm!282047) (not b!3845815) (not b!3845353) b_and!286869 (not b!3845323) (not b!3845674) (not b!3845806) (not b!3845381) (not b!3845272) (not b!3845724) (not b!3845696) (not b!3845770) (not b!3845817) (not bm!282049) (not b!3845800) (not bm!282048) (not b!3845708) (not d!1140477) (not b_next!103543) (not b!3845771) (not b!3845812) (not b!3845361) (not d!1140503) (not b!3845699) (not b!3845325) (not b!3845754) (not d!1140337) (not b!3845750) (not b!3845813) b_and!286863 (not b!3845695) (not b!3845318) (not b!3845722) (not b!3845320) (not d!1140491) b_and!286867 (not b!3845380) (not b!3845756) (not d!1140357) (not b!3845801) (not b!3845276) (not d!1140479) (not b!3845277) (not d!1140319) (not d!1140495) (not b!3845279) (not d!1140335) (not b!3845716) (not b!3845382) (not b!3845810) (not b!3845364) (not d!1140471) (not b!3845286) (not b!3845352) (not b!3845300) (not b!3845736) (not b!3845337) (not d!1140325) (not b!3845354) (not d!1140317) (not d!1140489) (not b!3845315) (not b!3845809) (not b!3845703) b_and!286845 (not b_next!103571) b_and!286851 (not tb!221499) (not b_next!103567))
(check-sat (not b_next!103545) (not b_next!103565) b_and!286847 (not b_next!103569) b_and!286855 (not b_next!103537) b_and!286865 b_and!286843 (not b_next!103547) b_and!286869 (not b_next!103543) (not b_next!103549) b_and!286853 b_and!286859 b_and!286861 (not b_next!103575) (not b_next!103551) (not b_next!103541) b_and!286849 b_and!286857 (not b_next!103573) (not b_next!103539) b_and!286867 b_and!286863 b_and!286845 (not b_next!103571) b_and!286851 (not b_next!103567))
