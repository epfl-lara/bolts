; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!537288 () Bool)

(assert start!537288)

(declare-fun b!5096296 () Bool)

(declare-fun b_free!133483 () Bool)

(declare-fun b_next!134273 () Bool)

(assert (=> b!5096296 (= b_free!133483 (not b_next!134273))))

(declare-fun tp!1421205 () Bool)

(declare-fun b_and!350375 () Bool)

(assert (=> b!5096296 (= tp!1421205 b_and!350375)))

(declare-fun b_free!133485 () Bool)

(declare-fun b_next!134275 () Bool)

(assert (=> b!5096296 (= b_free!133485 (not b_next!134275))))

(declare-fun tp!1421206 () Bool)

(declare-fun b_and!350377 () Bool)

(assert (=> b!5096296 (= tp!1421206 b_and!350377)))

(declare-fun e!3178432 () Bool)

(assert (=> b!5096296 (= e!3178432 (and tp!1421205 tp!1421206))))

(declare-fun b!5096297 () Bool)

(declare-fun e!3178431 () Bool)

(declare-fun tp_is_empty!37261 () Bool)

(declare-fun tp!1421207 () Bool)

(assert (=> b!5096297 (= e!3178431 (and tp_is_empty!37261 tp!1421207))))

(declare-fun b!5096298 () Bool)

(declare-fun res!2168974 () Bool)

(declare-fun e!3178433 () Bool)

(assert (=> b!5096298 (=> (not res!2168974) (not e!3178433))))

(declare-datatypes ((C!28254 0))(
  ( (C!28255 (val!23779 Int)) )
))
(declare-datatypes ((List!58782 0))(
  ( (Nil!58658) (Cons!58658 (h!65106 C!28254) (t!371747 List!58782)) )
))
(declare-datatypes ((IArray!31451 0))(
  ( (IArray!31452 (innerList!15783 List!58782)) )
))
(declare-datatypes ((Conc!15695 0))(
  ( (Node!15695 (left!43075 Conc!15695) (right!43405 Conc!15695) (csize!31620 Int) (cheight!15906 Int)) (Leaf!26048 (xs!19077 IArray!31451) (csize!31621 Int)) (Empty!15695) )
))
(declare-datatypes ((Regex!13998 0))(
  ( (ElementMatch!13998 (c!875646 C!28254)) (Concat!22835 (regOne!28508 Regex!13998) (regTwo!28508 Regex!13998)) (EmptyExpr!13998) (Star!13998 (reg!14327 Regex!13998)) (EmptyLang!13998) (Union!13998 (regOne!28509 Regex!13998) (regTwo!28509 Regex!13998)) )
))
(declare-datatypes ((String!67108 0))(
  ( (String!67109 (value!273183 String)) )
))
(declare-datatypes ((List!58783 0))(
  ( (Nil!58659) (Cons!58659 (h!65107 (_ BitVec 16)) (t!371748 List!58783)) )
))
(declare-datatypes ((TokenValue!8837 0))(
  ( (FloatLiteralValue!17674 (text!62304 List!58783)) (TokenValueExt!8836 (__x!34963 Int)) (Broken!44185 (value!273184 List!58783)) (Object!8960) (End!8837) (Def!8837) (Underscore!8837) (Match!8837) (Else!8837) (Error!8837) (Case!8837) (If!8837) (Extends!8837) (Abstract!8837) (Class!8837) (Val!8837) (DelimiterValue!17674 (del!8897 List!58783)) (KeywordValue!8843 (value!273185 List!58783)) (CommentValue!17674 (value!273186 List!58783)) (WhitespaceValue!17674 (value!273187 List!58783)) (IndentationValue!8837 (value!273188 List!58783)) (String!67110) (Int32!8837) (Broken!44186 (value!273189 List!58783)) (Boolean!8838) (Unit!149697) (OperatorValue!8840 (op!8897 List!58783)) (IdentifierValue!17674 (value!273190 List!58783)) (IdentifierValue!17675 (value!273191 List!58783)) (WhitespaceValue!17675 (value!273192 List!58783)) (True!17674) (False!17674) (Broken!44187 (value!273193 List!58783)) (Broken!44188 (value!273194 List!58783)) (True!17675) (RightBrace!8837) (RightBracket!8837) (Colon!8837) (Null!8837) (Comma!8837) (LeftBracket!8837) (False!17675) (LeftBrace!8837) (ImaginaryLiteralValue!8837 (text!62305 List!58783)) (StringLiteralValue!26511 (value!273195 List!58783)) (EOFValue!8837 (value!273196 List!58783)) (IdentValue!8837 (value!273197 List!58783)) (DelimiterValue!17675 (value!273198 List!58783)) (DedentValue!8837 (value!273199 List!58783)) (NewLineValue!8837 (value!273200 List!58783)) (IntegerValue!26511 (value!273201 (_ BitVec 32)) (text!62306 List!58783)) (IntegerValue!26512 (value!273202 Int) (text!62307 List!58783)) (Times!8837) (Or!8837) (Equal!8837) (Minus!8837) (Broken!44189 (value!273203 List!58783)) (And!8837) (Div!8837) (LessEqual!8837) (Mod!8837) (Concat!22836) (Not!8837) (Plus!8837) (SpaceValue!8837 (value!273204 List!58783)) (IntegerValue!26513 (value!273205 Int) (text!62308 List!58783)) (StringLiteralValue!26512 (text!62309 List!58783)) (FloatLiteralValue!17675 (text!62310 List!58783)) (BytesLiteralValue!8837 (value!273206 List!58783)) (CommentValue!17675 (value!273207 List!58783)) (StringLiteralValue!26513 (value!273208 List!58783)) (ErrorTokenValue!8837 (msg!8898 List!58783)) )
))
(declare-datatypes ((BalanceConc!30508 0))(
  ( (BalanceConc!30509 (c!875647 Conc!15695)) )
))
(declare-datatypes ((TokenValueInjection!16982 0))(
  ( (TokenValueInjection!16983 (toValue!11546 Int) (toChars!11405 Int)) )
))
(declare-datatypes ((Rule!16846 0))(
  ( (Rule!16847 (regex!8523 Regex!13998) (tag!9387 String!67108) (isSeparator!8523 Bool) (transformation!8523 TokenValueInjection!16982)) )
))
(declare-fun rule!158 () Rule!16846)

(declare-fun input!1493 () List!58782)

(declare-fun isEmpty!31750 (List!58782) Bool)

(declare-datatypes ((tuple2!63378 0))(
  ( (tuple2!63379 (_1!34992 List!58782) (_2!34992 List!58782)) )
))
(declare-fun findLongestMatchWithZipper!118 (Regex!13998 List!58782) tuple2!63378)

(assert (=> b!5096298 (= res!2168974 (isEmpty!31750 (_1!34992 (findLongestMatchWithZipper!118 (regex!8523 rule!158) input!1493))))))

(declare-fun b!5096299 () Bool)

(declare-fun res!2168976 () Bool)

(assert (=> b!5096299 (=> (not res!2168976) (not e!3178433))))

(declare-datatypes ((LexerInterface!8115 0))(
  ( (LexerInterfaceExt!8112 (__x!34964 Int)) (Lexer!8113) )
))
(declare-fun thiss!15916 () LexerInterface!8115)

(declare-fun ruleValid!3915 (LexerInterface!8115 Rule!16846) Bool)

(assert (=> b!5096299 (= res!2168976 (ruleValid!3915 thiss!15916 rule!158))))

(declare-fun e!3178430 () Bool)

(declare-fun tp!1421204 () Bool)

(declare-fun b!5096300 () Bool)

(declare-fun inv!78154 (String!67108) Bool)

(declare-fun inv!78157 (TokenValueInjection!16982) Bool)

(assert (=> b!5096300 (= e!3178430 (and tp!1421204 (inv!78154 (tag!9387 rule!158)) (inv!78157 (transformation!8523 rule!158)) e!3178432))))

(declare-fun res!2168975 () Bool)

(assert (=> start!537288 (=> (not res!2168975) (not e!3178433))))

(assert (=> start!537288 (= res!2168975 (is-Lexer!8113 thiss!15916))))

(assert (=> start!537288 e!3178433))

(assert (=> start!537288 true))

(assert (=> start!537288 e!3178430))

(assert (=> start!537288 e!3178431))

(declare-fun b!5096295 () Bool)

(declare-datatypes ((Token!15470 0))(
  ( (Token!15471 (value!273209 TokenValue!8837) (rule!11799 Rule!16846) (size!39294 Int) (originalCharacters!8766 List!58782)) )
))
(declare-datatypes ((tuple2!63380 0))(
  ( (tuple2!63381 (_1!34993 Token!15470) (_2!34993 List!58782)) )
))
(declare-datatypes ((Option!14644 0))(
  ( (None!14643) (Some!14643 (v!50656 tuple2!63380)) )
))
(declare-fun maxPrefixOneRule!3707 (LexerInterface!8115 Rule!16846 List!58782) Option!14644)

(assert (=> b!5096295 (= e!3178433 (not (= None!14643 (maxPrefixOneRule!3707 thiss!15916 rule!158 input!1493))))))

(assert (= (and start!537288 res!2168975) b!5096299))

(assert (= (and b!5096299 res!2168976) b!5096298))

(assert (= (and b!5096298 res!2168974) b!5096295))

(assert (= b!5096300 b!5096296))

(assert (= start!537288 b!5096300))

(assert (= (and start!537288 (is-Cons!58658 input!1493)) b!5096297))

(declare-fun m!6153528 () Bool)

(assert (=> b!5096298 m!6153528))

(declare-fun m!6153530 () Bool)

(assert (=> b!5096298 m!6153530))

(declare-fun m!6153532 () Bool)

(assert (=> b!5096299 m!6153532))

(declare-fun m!6153534 () Bool)

(assert (=> b!5096300 m!6153534))

(declare-fun m!6153536 () Bool)

(assert (=> b!5096300 m!6153536))

(declare-fun m!6153538 () Bool)

(assert (=> b!5096295 m!6153538))

(push 1)

(assert tp_is_empty!37261)

(assert (not b!5096295))

(assert b_and!350375)

(assert (not b!5096300))

(assert (not b!5096297))

(assert (not b!5096299))

(assert b_and!350377)

(assert (not b_next!134275))

(assert (not b_next!134273))

(assert (not b!5096298))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350377)

(assert b_and!350375)

(assert (not b_next!134273))

(assert (not b_next!134275))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1649103 () Bool)

(assert (=> d!1649103 (= (isEmpty!31750 (_1!34992 (findLongestMatchWithZipper!118 (regex!8523 rule!158) input!1493))) (is-Nil!58658 (_1!34992 (findLongestMatchWithZipper!118 (regex!8523 rule!158) input!1493))))))

(assert (=> b!5096298 d!1649103))

(declare-fun d!1649105 () Bool)

(declare-fun lt!2093919 () tuple2!63378)

(declare-fun findLongestMatch!1833 (Regex!13998 List!58782) tuple2!63378)

(assert (=> d!1649105 (= lt!2093919 (findLongestMatch!1833 (regex!8523 rule!158) input!1493))))

(declare-datatypes ((List!58786 0))(
  ( (Nil!58662) (Cons!58662 (h!65110 Regex!13998) (t!371751 List!58786)) )
))
(declare-datatypes ((Context!6766 0))(
  ( (Context!6767 (exprs!3883 List!58786)) )
))
(declare-fun lt!2093914 () (Set Context!6766))

(declare-fun findLongestMatchZipper!25 ((Set Context!6766) List!58782) tuple2!63378)

(assert (=> d!1649105 (= lt!2093919 (findLongestMatchZipper!25 lt!2093914 input!1493))))

(declare-datatypes ((Unit!149699 0))(
  ( (Unit!149700) )
))
(declare-fun lt!2093917 () Unit!149699)

(declare-fun lt!2093918 () Unit!149699)

(assert (=> d!1649105 (= lt!2093917 lt!2093918)))

(declare-fun lt!2093915 () Int)

(declare-fun sizeTr!411 (List!58782 Int) Int)

(declare-fun size!39296 (List!58782) Int)

(assert (=> d!1649105 (= (sizeTr!411 input!1493 lt!2093915) (+ (size!39296 input!1493) lt!2093915))))

(declare-fun lemmaSizeTrEqualsSize!410 (List!58782 Int) Unit!149699)

(assert (=> d!1649105 (= lt!2093918 (lemmaSizeTrEqualsSize!410 input!1493 lt!2093915))))

(assert (=> d!1649105 (= lt!2093915 0)))

(declare-fun lt!2093916 () Unit!149699)

(declare-fun lt!2093913 () Unit!149699)

(assert (=> d!1649105 (= lt!2093916 lt!2093913)))

(assert (=> d!1649105 (= (findLongestMatchZipper!25 lt!2093914 input!1493) (findLongestMatch!1833 (regex!8523 rule!158) input!1493))))

(declare-fun longestMatchSameAsRegex!22 (Regex!13998 (Set Context!6766) List!58782) Unit!149699)

(assert (=> d!1649105 (= lt!2093913 (longestMatchSameAsRegex!22 (regex!8523 rule!158) lt!2093914 input!1493))))

(declare-fun focus!361 (Regex!13998) (Set Context!6766))

(assert (=> d!1649105 (= lt!2093914 (focus!361 (regex!8523 rule!158)))))

(declare-fun validRegex!6126 (Regex!13998) Bool)

(assert (=> d!1649105 (validRegex!6126 (regex!8523 rule!158))))

(assert (=> d!1649105 (= (findLongestMatchWithZipper!118 (regex!8523 rule!158) input!1493) lt!2093919)))

(declare-fun bs!1191335 () Bool)

(assert (= bs!1191335 d!1649105))

(declare-fun m!6153552 () Bool)

(assert (=> bs!1191335 m!6153552))

(declare-fun m!6153554 () Bool)

(assert (=> bs!1191335 m!6153554))

(declare-fun m!6153556 () Bool)

(assert (=> bs!1191335 m!6153556))

(declare-fun m!6153558 () Bool)

(assert (=> bs!1191335 m!6153558))

(declare-fun m!6153560 () Bool)

(assert (=> bs!1191335 m!6153560))

(declare-fun m!6153562 () Bool)

(assert (=> bs!1191335 m!6153562))

(declare-fun m!6153564 () Bool)

(assert (=> bs!1191335 m!6153564))

(declare-fun m!6153566 () Bool)

(assert (=> bs!1191335 m!6153566))

(assert (=> b!5096298 d!1649105))

(declare-fun d!1649109 () Bool)

(declare-fun res!2168994 () Bool)

(declare-fun e!3178452 () Bool)

(assert (=> d!1649109 (=> (not res!2168994) (not e!3178452))))

(assert (=> d!1649109 (= res!2168994 (validRegex!6126 (regex!8523 rule!158)))))

(assert (=> d!1649109 (= (ruleValid!3915 thiss!15916 rule!158) e!3178452)))

(declare-fun b!5096323 () Bool)

(declare-fun res!2168995 () Bool)

(assert (=> b!5096323 (=> (not res!2168995) (not e!3178452))))

(declare-fun nullable!4702 (Regex!13998) Bool)

(assert (=> b!5096323 (= res!2168995 (not (nullable!4702 (regex!8523 rule!158))))))

(declare-fun b!5096324 () Bool)

(assert (=> b!5096324 (= e!3178452 (not (= (tag!9387 rule!158) (String!67109 ""))))))

(assert (= (and d!1649109 res!2168994) b!5096323))

(assert (= (and b!5096323 res!2168995) b!5096324))

(assert (=> d!1649109 m!6153564))

(declare-fun m!6153568 () Bool)

(assert (=> b!5096323 m!6153568))

(assert (=> b!5096299 d!1649109))

(declare-fun b!5096343 () Bool)

(declare-fun e!3178464 () Bool)

(declare-fun matchR!6798 (Regex!13998 List!58782) Bool)

(declare-fun findLongestMatchInner!2022 (Regex!13998 List!58782 Int List!58782 List!58782 Int) tuple2!63378)

(assert (=> b!5096343 (= e!3178464 (matchR!6798 (regex!8523 rule!158) (_1!34992 (findLongestMatchInner!2022 (regex!8523 rule!158) Nil!58658 (size!39296 Nil!58658) input!1493 input!1493 (size!39296 input!1493)))))))

(declare-fun d!1649111 () Bool)

(declare-fun e!3178462 () Bool)

(assert (=> d!1649111 e!3178462))

(declare-fun res!2169015 () Bool)

(assert (=> d!1649111 (=> res!2169015 e!3178462)))

(declare-fun lt!2093931 () Option!14644)

(declare-fun isEmpty!31752 (Option!14644) Bool)

(assert (=> d!1649111 (= res!2169015 (isEmpty!31752 lt!2093931))))

(declare-fun e!3178461 () Option!14644)

(assert (=> d!1649111 (= lt!2093931 e!3178461)))

(declare-fun c!875654 () Bool)

(declare-fun lt!2093933 () tuple2!63378)

(assert (=> d!1649111 (= c!875654 (isEmpty!31750 (_1!34992 lt!2093933)))))

(assert (=> d!1649111 (= lt!2093933 (findLongestMatch!1833 (regex!8523 rule!158) input!1493))))

(assert (=> d!1649111 (ruleValid!3915 thiss!15916 rule!158)))

(assert (=> d!1649111 (= (maxPrefixOneRule!3707 thiss!15916 rule!158 input!1493) lt!2093931)))

(declare-fun b!5096344 () Bool)

(assert (=> b!5096344 (= e!3178461 None!14643)))

(declare-fun b!5096345 () Bool)

(declare-fun res!2169016 () Bool)

(declare-fun e!3178463 () Bool)

(assert (=> b!5096345 (=> (not res!2169016) (not e!3178463))))

(declare-fun get!20360 (Option!14644) tuple2!63380)

(assert (=> b!5096345 (= res!2169016 (= (rule!11799 (_1!34993 (get!20360 lt!2093931))) rule!158))))

(declare-fun b!5096346 () Bool)

(assert (=> b!5096346 (= e!3178462 e!3178463)))

(declare-fun res!2169012 () Bool)

(assert (=> b!5096346 (=> (not res!2169012) (not e!3178463))))

(declare-fun list!19145 (BalanceConc!30508) List!58782)

(declare-fun charsOf!5479 (Token!15470) BalanceConc!30508)

(assert (=> b!5096346 (= res!2169012 (matchR!6798 (regex!8523 rule!158) (list!19145 (charsOf!5479 (_1!34993 (get!20360 lt!2093931))))))))

(declare-fun b!5096347 () Bool)

(declare-fun res!2169014 () Bool)

(assert (=> b!5096347 (=> (not res!2169014) (not e!3178463))))

(declare-fun apply!14298 (TokenValueInjection!16982 BalanceConc!30508) TokenValue!8837)

(declare-fun seqFromList!6116 (List!58782) BalanceConc!30508)

(assert (=> b!5096347 (= res!2169014 (= (value!273209 (_1!34993 (get!20360 lt!2093931))) (apply!14298 (transformation!8523 (rule!11799 (_1!34993 (get!20360 lt!2093931)))) (seqFromList!6116 (originalCharacters!8766 (_1!34993 (get!20360 lt!2093931)))))))))

(declare-fun b!5096348 () Bool)

(assert (=> b!5096348 (= e!3178463 (= (size!39294 (_1!34993 (get!20360 lt!2093931))) (size!39296 (originalCharacters!8766 (_1!34993 (get!20360 lt!2093931))))))))

(declare-fun b!5096349 () Bool)

(declare-fun size!39297 (BalanceConc!30508) Int)

(assert (=> b!5096349 (= e!3178461 (Some!14643 (tuple2!63381 (Token!15471 (apply!14298 (transformation!8523 rule!158) (seqFromList!6116 (_1!34992 lt!2093933))) rule!158 (size!39297 (seqFromList!6116 (_1!34992 lt!2093933))) (_1!34992 lt!2093933)) (_2!34992 lt!2093933))))))

(declare-fun lt!2093934 () Unit!149699)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1975 (Regex!13998 List!58782) Unit!149699)

(assert (=> b!5096349 (= lt!2093934 (longestMatchIsAcceptedByMatchOrIsEmpty!1975 (regex!8523 rule!158) input!1493))))

(declare-fun res!2169010 () Bool)

(assert (=> b!5096349 (= res!2169010 (isEmpty!31750 (_1!34992 (findLongestMatchInner!2022 (regex!8523 rule!158) Nil!58658 (size!39296 Nil!58658) input!1493 input!1493 (size!39296 input!1493)))))))

(assert (=> b!5096349 (=> res!2169010 e!3178464)))

(assert (=> b!5096349 e!3178464))

(declare-fun lt!2093932 () Unit!149699)

(assert (=> b!5096349 (= lt!2093932 lt!2093934)))

(declare-fun lt!2093930 () Unit!149699)

(declare-fun lemmaSemiInverse!2648 (TokenValueInjection!16982 BalanceConc!30508) Unit!149699)

(assert (=> b!5096349 (= lt!2093930 (lemmaSemiInverse!2648 (transformation!8523 rule!158) (seqFromList!6116 (_1!34992 lt!2093933))))))

(declare-fun b!5096350 () Bool)

(declare-fun res!2169013 () Bool)

(assert (=> b!5096350 (=> (not res!2169013) (not e!3178463))))

(assert (=> b!5096350 (= res!2169013 (< (size!39296 (_2!34993 (get!20360 lt!2093931))) (size!39296 input!1493)))))

(declare-fun b!5096351 () Bool)

(declare-fun res!2169011 () Bool)

(assert (=> b!5096351 (=> (not res!2169011) (not e!3178463))))

(declare-fun ++!12856 (List!58782 List!58782) List!58782)

(assert (=> b!5096351 (= res!2169011 (= (++!12856 (list!19145 (charsOf!5479 (_1!34993 (get!20360 lt!2093931)))) (_2!34993 (get!20360 lt!2093931))) input!1493))))

(assert (= (and d!1649111 c!875654) b!5096344))

(assert (= (and d!1649111 (not c!875654)) b!5096349))

(assert (= (and b!5096349 (not res!2169010)) b!5096343))

(assert (= (and d!1649111 (not res!2169015)) b!5096346))

(assert (= (and b!5096346 res!2169012) b!5096351))

(assert (= (and b!5096351 res!2169011) b!5096350))

(assert (= (and b!5096350 res!2169013) b!5096345))

(assert (= (and b!5096345 res!2169016) b!5096347))

(assert (= (and b!5096347 res!2169014) b!5096348))

(declare-fun m!6153570 () Bool)

(assert (=> b!5096350 m!6153570))

(declare-fun m!6153572 () Bool)

(assert (=> b!5096350 m!6153572))

(assert (=> b!5096350 m!6153558))

(assert (=> b!5096345 m!6153570))

(assert (=> b!5096347 m!6153570))

(declare-fun m!6153574 () Bool)

(assert (=> b!5096347 m!6153574))

(assert (=> b!5096347 m!6153574))

(declare-fun m!6153576 () Bool)

(assert (=> b!5096347 m!6153576))

(declare-fun m!6153578 () Bool)

(assert (=> d!1649111 m!6153578))

(declare-fun m!6153580 () Bool)

(assert (=> d!1649111 m!6153580))

(assert (=> d!1649111 m!6153566))

(assert (=> d!1649111 m!6153532))

(assert (=> b!5096348 m!6153570))

(declare-fun m!6153582 () Bool)

(assert (=> b!5096348 m!6153582))

(assert (=> b!5096346 m!6153570))

(declare-fun m!6153584 () Bool)

(assert (=> b!5096346 m!6153584))

(assert (=> b!5096346 m!6153584))

(declare-fun m!6153586 () Bool)

(assert (=> b!5096346 m!6153586))

(assert (=> b!5096346 m!6153586))

(declare-fun m!6153588 () Bool)

(assert (=> b!5096346 m!6153588))

(declare-fun m!6153590 () Bool)

(assert (=> b!5096349 m!6153590))

(declare-fun m!6153592 () Bool)

(assert (=> b!5096349 m!6153592))

(declare-fun m!6153594 () Bool)

(assert (=> b!5096349 m!6153594))

(assert (=> b!5096349 m!6153590))

(declare-fun m!6153596 () Bool)

(assert (=> b!5096349 m!6153596))

(declare-fun m!6153598 () Bool)

(assert (=> b!5096349 m!6153598))

(assert (=> b!5096349 m!6153558))

(declare-fun m!6153600 () Bool)

(assert (=> b!5096349 m!6153600))

(assert (=> b!5096349 m!6153590))

(assert (=> b!5096349 m!6153558))

(assert (=> b!5096349 m!6153590))

(declare-fun m!6153602 () Bool)

(assert (=> b!5096349 m!6153602))

(declare-fun m!6153604 () Bool)

(assert (=> b!5096349 m!6153604))

(assert (=> b!5096349 m!6153598))

(assert (=> b!5096343 m!6153598))

(assert (=> b!5096343 m!6153558))

(assert (=> b!5096343 m!6153598))

(assert (=> b!5096343 m!6153558))

(assert (=> b!5096343 m!6153600))

(declare-fun m!6153606 () Bool)

(assert (=> b!5096343 m!6153606))

(assert (=> b!5096351 m!6153570))

(assert (=> b!5096351 m!6153584))

(assert (=> b!5096351 m!6153584))

(assert (=> b!5096351 m!6153586))

(assert (=> b!5096351 m!6153586))

(declare-fun m!6153608 () Bool)

(assert (=> b!5096351 m!6153608))

(assert (=> b!5096295 d!1649111))

(declare-fun d!1649113 () Bool)

(assert (=> d!1649113 (= (inv!78154 (tag!9387 rule!158)) (= (mod (str.len (value!273183 (tag!9387 rule!158))) 2) 0))))

(assert (=> b!5096300 d!1649113))

(declare-fun d!1649115 () Bool)

(declare-fun res!2169019 () Bool)

(declare-fun e!3178467 () Bool)

(assert (=> d!1649115 (=> (not res!2169019) (not e!3178467))))

(declare-fun semiInverseModEq!3795 (Int Int) Bool)

(assert (=> d!1649115 (= res!2169019 (semiInverseModEq!3795 (toChars!11405 (transformation!8523 rule!158)) (toValue!11546 (transformation!8523 rule!158))))))

(assert (=> d!1649115 (= (inv!78157 (transformation!8523 rule!158)) e!3178467)))

(declare-fun b!5096354 () Bool)

(declare-fun equivClasses!3610 (Int Int) Bool)

(assert (=> b!5096354 (= e!3178467 (equivClasses!3610 (toChars!11405 (transformation!8523 rule!158)) (toValue!11546 (transformation!8523 rule!158))))))

(assert (= (and d!1649115 res!2169019) b!5096354))

(declare-fun m!6153610 () Bool)

(assert (=> d!1649115 m!6153610))

(declare-fun m!6153612 () Bool)

(assert (=> b!5096354 m!6153612))

(assert (=> b!5096300 d!1649115))

(declare-fun b!5096359 () Bool)

(declare-fun e!3178470 () Bool)

(declare-fun tp!1421222 () Bool)

(assert (=> b!5096359 (= e!3178470 (and tp_is_empty!37261 tp!1421222))))

(assert (=> b!5096297 (= tp!1421207 e!3178470)))

(assert (= (and b!5096297 (is-Cons!58658 (t!371747 input!1493))) b!5096359))

(declare-fun b!5096370 () Bool)

(declare-fun e!3178473 () Bool)

(assert (=> b!5096370 (= e!3178473 tp_is_empty!37261)))

(declare-fun b!5096373 () Bool)

(declare-fun tp!1421236 () Bool)

(declare-fun tp!1421233 () Bool)

(assert (=> b!5096373 (= e!3178473 (and tp!1421236 tp!1421233))))

(declare-fun b!5096372 () Bool)

(declare-fun tp!1421234 () Bool)

(assert (=> b!5096372 (= e!3178473 tp!1421234)))

(declare-fun b!5096371 () Bool)

(declare-fun tp!1421237 () Bool)

(declare-fun tp!1421235 () Bool)

(assert (=> b!5096371 (= e!3178473 (and tp!1421237 tp!1421235))))

(assert (=> b!5096300 (= tp!1421204 e!3178473)))

(assert (= (and b!5096300 (is-ElementMatch!13998 (regex!8523 rule!158))) b!5096370))

(assert (= (and b!5096300 (is-Concat!22835 (regex!8523 rule!158))) b!5096371))

(assert (= (and b!5096300 (is-Star!13998 (regex!8523 rule!158))) b!5096372))

(assert (= (and b!5096300 (is-Union!13998 (regex!8523 rule!158))) b!5096373))

(push 1)

(assert (not b!5096373))

(assert (not b!5096372))

(assert (not b!5096351))

(assert (not b!5096347))

(assert (not b_next!134275))

(assert (not d!1649105))

(assert (not b_next!134273))

(assert (not b!5096371))

(assert (not b!5096346))

(assert tp_is_empty!37261)

(assert (not b!5096349))

(assert (not b!5096359))

(assert (not b!5096348))

(assert (not b!5096323))

(assert (not d!1649115))

(assert (not b!5096350))

(assert b_and!350375)

(assert (not b!5096345))

(assert (not b!5096354))

(assert (not d!1649109))

(assert (not b!5096343))

(assert b_and!350377)

(assert (not d!1649111))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350377)

(assert b_and!350375)

(assert (not b_next!134273))

(assert (not b_next!134275))

(check-sat)

(pop 1)

