; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!370002 () Bool)

(assert start!370002)

(declare-fun b!3940576 () Bool)

(declare-fun b_free!107777 () Bool)

(declare-fun b_next!108481 () Bool)

(assert (=> b!3940576 (= b_free!107777 (not b_next!108481))))

(declare-fun tp!1199182 () Bool)

(declare-fun b_and!301067 () Bool)

(assert (=> b!3940576 (= tp!1199182 b_and!301067)))

(declare-fun b_free!107779 () Bool)

(declare-fun b_next!108483 () Bool)

(assert (=> b!3940576 (= b_free!107779 (not b_next!108483))))

(declare-fun tp!1199188 () Bool)

(declare-fun b_and!301069 () Bool)

(assert (=> b!3940576 (= tp!1199188 b_and!301069)))

(declare-fun b!3940574 () Bool)

(declare-fun b_free!107781 () Bool)

(declare-fun b_next!108485 () Bool)

(assert (=> b!3940574 (= b_free!107781 (not b_next!108485))))

(declare-fun tp!1199183 () Bool)

(declare-fun b_and!301071 () Bool)

(assert (=> b!3940574 (= tp!1199183 b_and!301071)))

(declare-fun b_free!107783 () Bool)

(declare-fun b_next!108487 () Bool)

(assert (=> b!3940574 (= b_free!107783 (not b_next!108487))))

(declare-fun tp!1199180 () Bool)

(declare-fun b_and!301073 () Bool)

(assert (=> b!3940574 (= tp!1199180 b_and!301073)))

(declare-fun b!3940589 () Bool)

(declare-fun b_free!107785 () Bool)

(declare-fun b_next!108489 () Bool)

(assert (=> b!3940589 (= b_free!107785 (not b_next!108489))))

(declare-fun tp!1199184 () Bool)

(declare-fun b_and!301075 () Bool)

(assert (=> b!3940589 (= tp!1199184 b_and!301075)))

(declare-fun b_free!107787 () Bool)

(declare-fun b_next!108491 () Bool)

(assert (=> b!3940589 (= b_free!107787 (not b_next!108491))))

(declare-fun tp!1199177 () Bool)

(declare-fun b_and!301077 () Bool)

(assert (=> b!3940589 (= tp!1199177 b_and!301077)))

(declare-fun b!3940569 () Bool)

(declare-fun e!2438255 () Bool)

(declare-fun e!2438254 () Bool)

(declare-fun tp!1199178 () Bool)

(assert (=> b!3940569 (= e!2438255 (and e!2438254 tp!1199178))))

(declare-fun b!3940570 () Bool)

(declare-fun e!2438244 () Bool)

(declare-fun tp_is_empty!19863 () Bool)

(declare-fun tp!1199191 () Bool)

(assert (=> b!3940570 (= e!2438244 (and tp_is_empty!19863 tp!1199191))))

(declare-fun b!3940571 () Bool)

(declare-datatypes ((C!23078 0))(
  ( (C!23079 (val!13633 Int)) )
))
(declare-datatypes ((List!41975 0))(
  ( (Nil!41851) (Cons!41851 (h!47271 C!23078) (t!326794 List!41975)) )
))
(declare-datatypes ((IArray!25509 0))(
  ( (IArray!25510 (innerList!12812 List!41975)) )
))
(declare-datatypes ((Conc!12752 0))(
  ( (Node!12752 (left!31881 Conc!12752) (right!32211 Conc!12752) (csize!25734 Int) (cheight!12963 Int)) (Leaf!19730 (xs!16058 IArray!25509) (csize!25735 Int)) (Empty!12752) )
))
(declare-datatypes ((BalanceConc!25098 0))(
  ( (BalanceConc!25099 (c!684607 Conc!12752)) )
))
(declare-datatypes ((List!41976 0))(
  ( (Nil!41852) (Cons!41852 (h!47272 (_ BitVec 16)) (t!326795 List!41976)) )
))
(declare-datatypes ((TokenValue!6771 0))(
  ( (FloatLiteralValue!13542 (text!47842 List!41976)) (TokenValueExt!6770 (__x!25759 Int)) (Broken!33855 (value!207028 List!41976)) (Object!6894) (End!6771) (Def!6771) (Underscore!6771) (Match!6771) (Else!6771) (Error!6771) (Case!6771) (If!6771) (Extends!6771) (Abstract!6771) (Class!6771) (Val!6771) (DelimiterValue!13542 (del!6831 List!41976)) (KeywordValue!6777 (value!207029 List!41976)) (CommentValue!13542 (value!207030 List!41976)) (WhitespaceValue!13542 (value!207031 List!41976)) (IndentationValue!6771 (value!207032 List!41976)) (String!47574) (Int32!6771) (Broken!33856 (value!207033 List!41976)) (Boolean!6772) (Unit!60400) (OperatorValue!6774 (op!6831 List!41976)) (IdentifierValue!13542 (value!207034 List!41976)) (IdentifierValue!13543 (value!207035 List!41976)) (WhitespaceValue!13543 (value!207036 List!41976)) (True!13542) (False!13542) (Broken!33857 (value!207037 List!41976)) (Broken!33858 (value!207038 List!41976)) (True!13543) (RightBrace!6771) (RightBracket!6771) (Colon!6771) (Null!6771) (Comma!6771) (LeftBracket!6771) (False!13543) (LeftBrace!6771) (ImaginaryLiteralValue!6771 (text!47843 List!41976)) (StringLiteralValue!20313 (value!207039 List!41976)) (EOFValue!6771 (value!207040 List!41976)) (IdentValue!6771 (value!207041 List!41976)) (DelimiterValue!13543 (value!207042 List!41976)) (DedentValue!6771 (value!207043 List!41976)) (NewLineValue!6771 (value!207044 List!41976)) (IntegerValue!20313 (value!207045 (_ BitVec 32)) (text!47844 List!41976)) (IntegerValue!20314 (value!207046 Int) (text!47845 List!41976)) (Times!6771) (Or!6771) (Equal!6771) (Minus!6771) (Broken!33859 (value!207047 List!41976)) (And!6771) (Div!6771) (LessEqual!6771) (Mod!6771) (Concat!18217) (Not!6771) (Plus!6771) (SpaceValue!6771 (value!207048 List!41976)) (IntegerValue!20315 (value!207049 Int) (text!47846 List!41976)) (StringLiteralValue!20314 (text!47847 List!41976)) (FloatLiteralValue!13543 (text!47848 List!41976)) (BytesLiteralValue!6771 (value!207050 List!41976)) (CommentValue!13543 (value!207051 List!41976)) (StringLiteralValue!20315 (value!207052 List!41976)) (ErrorTokenValue!6771 (msg!6832 List!41976)) )
))
(declare-datatypes ((Regex!11446 0))(
  ( (ElementMatch!11446 (c!684608 C!23078)) (Concat!18218 (regOne!23404 Regex!11446) (regTwo!23404 Regex!11446)) (EmptyExpr!11446) (Star!11446 (reg!11775 Regex!11446)) (EmptyLang!11446) (Union!11446 (regOne!23405 Regex!11446) (regTwo!23405 Regex!11446)) )
))
(declare-datatypes ((String!47575 0))(
  ( (String!47576 (value!207053 String)) )
))
(declare-datatypes ((TokenValueInjection!12970 0))(
  ( (TokenValueInjection!12971 (toValue!9001 Int) (toChars!8860 Int)) )
))
(declare-datatypes ((Rule!12882 0))(
  ( (Rule!12883 (regex!6541 Regex!11446) (tag!7401 String!47575) (isSeparator!6541 Bool) (transformation!6541 TokenValueInjection!12970)) )
))
(declare-datatypes ((List!41977 0))(
  ( (Nil!41853) (Cons!41853 (h!47273 Rule!12882) (t!326796 List!41977)) )
))
(declare-fun rules!2768 () List!41977)

(declare-fun tp!1199193 () Bool)

(declare-fun e!2438263 () Bool)

(declare-fun inv!56052 (String!47575) Bool)

(declare-fun inv!56055 (TokenValueInjection!12970) Bool)

(assert (=> b!3940571 (= e!2438254 (and tp!1199193 (inv!56052 (tag!7401 (h!47273 rules!2768))) (inv!56055 (transformation!6541 (h!47273 rules!2768))) e!2438263))))

(declare-fun e!2438264 () Bool)

(declare-fun e!2438252 () Bool)

(declare-fun tp!1199189 () Bool)

(declare-datatypes ((Token!12220 0))(
  ( (Token!12221 (value!207054 TokenValue!6771) (rule!9499 Rule!12882) (size!31388 Int) (originalCharacters!7141 List!41975)) )
))
(declare-datatypes ((List!41978 0))(
  ( (Nil!41854) (Cons!41854 (h!47274 Token!12220) (t!326797 List!41978)) )
))
(declare-fun suffixTokens!72 () List!41978)

(declare-fun b!3940572 () Bool)

(assert (=> b!3940572 (= e!2438252 (and tp!1199189 (inv!56052 (tag!7401 (rule!9499 (h!47274 suffixTokens!72)))) (inv!56055 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) e!2438264))))

(declare-fun b!3940573 () Bool)

(declare-fun e!2438253 () Bool)

(declare-fun e!2438260 () Bool)

(assert (=> b!3940573 (= e!2438253 e!2438260)))

(declare-fun res!1594744 () Bool)

(assert (=> b!3940573 (=> (not res!1594744) (not e!2438260))))

(declare-fun lt!1378368 () List!41975)

(declare-fun suffixResult!91 () List!41975)

(declare-datatypes ((LexerInterface!6130 0))(
  ( (LexerInterfaceExt!6127 (__x!25760 Int)) (Lexer!6128) )
))
(declare-fun thiss!20629 () LexerInterface!6130)

(declare-fun prefixTokens!80 () List!41978)

(declare-datatypes ((tuple2!41138 0))(
  ( (tuple2!41139 (_1!23703 List!41978) (_2!23703 List!41975)) )
))
(declare-fun lexList!1898 (LexerInterface!6130 List!41977 List!41975) tuple2!41138)

(declare-fun ++!10839 (List!41978 List!41978) List!41978)

(assert (=> b!3940573 (= res!1594744 (= (lexList!1898 thiss!20629 rules!2768 lt!1378368) (tuple2!41139 (++!10839 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun prefix!426 () List!41975)

(declare-fun suffix!1176 () List!41975)

(declare-fun ++!10840 (List!41975 List!41975) List!41975)

(assert (=> b!3940573 (= lt!1378368 (++!10840 prefix!426 suffix!1176))))

(declare-fun e!2438245 () Bool)

(assert (=> b!3940574 (= e!2438245 (and tp!1199183 tp!1199180))))

(declare-fun b!3940575 () Bool)

(declare-fun e!2438259 () Bool)

(declare-fun tp!1199185 () Bool)

(assert (=> b!3940575 (= e!2438259 (and tp_is_empty!19863 tp!1199185))))

(assert (=> b!3940576 (= e!2438263 (and tp!1199182 tp!1199188))))

(declare-fun res!1594751 () Bool)

(assert (=> start!370002 (=> (not res!1594751) (not e!2438253))))

(assert (=> start!370002 (= res!1594751 (is-Lexer!6128 thiss!20629))))

(assert (=> start!370002 e!2438253))

(assert (=> start!370002 e!2438244))

(assert (=> start!370002 true))

(declare-fun e!2438243 () Bool)

(assert (=> start!370002 e!2438243))

(assert (=> start!370002 e!2438255))

(declare-fun e!2438262 () Bool)

(assert (=> start!370002 e!2438262))

(declare-fun e!2438257 () Bool)

(assert (=> start!370002 e!2438257))

(assert (=> start!370002 e!2438259))

(declare-fun b!3940577 () Bool)

(declare-fun e!2438250 () Bool)

(assert (=> b!3940577 (= e!2438260 e!2438250)))

(declare-fun res!1594750 () Bool)

(assert (=> b!3940577 (=> (not res!1594750) (not e!2438250))))

(declare-datatypes ((tuple2!41140 0))(
  ( (tuple2!41141 (_1!23704 Token!12220) (_2!23704 List!41975)) )
))
(declare-datatypes ((Option!8961 0))(
  ( (None!8960) (Some!8960 (v!39290 tuple2!41140)) )
))
(declare-fun lt!1378366 () Option!8961)

(assert (=> b!3940577 (= res!1594750 (is-Some!8960 lt!1378366))))

(declare-fun maxPrefix!3434 (LexerInterface!6130 List!41977 List!41975) Option!8961)

(assert (=> b!3940577 (= lt!1378366 (maxPrefix!3434 thiss!20629 rules!2768 lt!1378368))))

(declare-fun b!3940578 () Bool)

(declare-fun res!1594748 () Bool)

(assert (=> b!3940578 (=> (not res!1594748) (not e!2438260))))

(assert (=> b!3940578 (= res!1594748 (= (lexList!1898 thiss!20629 rules!2768 suffix!1176) (tuple2!41139 suffixTokens!72 suffixResult!91)))))

(declare-fun tp!1199179 () Bool)

(declare-fun b!3940579 () Bool)

(declare-fun e!2438248 () Bool)

(assert (=> b!3940579 (= e!2438248 (and tp!1199179 (inv!56052 (tag!7401 (rule!9499 (h!47274 prefixTokens!80)))) (inv!56055 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) e!2438245))))

(declare-fun b!3940580 () Bool)

(declare-fun contains!8378 (List!41977 Rule!12882) Bool)

(assert (=> b!3940580 (= e!2438250 (not (contains!8378 rules!2768 (rule!9499 (_1!23704 (v!39290 lt!1378366))))))))

(declare-datatypes ((Unit!60401 0))(
  ( (Unit!60402) )
))
(declare-fun lt!1378367 () Unit!60401)

(declare-fun lemmaCharactersSize!1194 (Token!12220) Unit!60401)

(assert (=> b!3940580 (= lt!1378367 (lemmaCharactersSize!1194 (_1!23704 (v!39290 lt!1378366))))))

(declare-fun b!3940581 () Bool)

(declare-fun res!1594747 () Bool)

(assert (=> b!3940581 (=> (not res!1594747) (not e!2438253))))

(declare-fun isEmpty!24967 (List!41977) Bool)

(assert (=> b!3940581 (= res!1594747 (not (isEmpty!24967 rules!2768)))))

(declare-fun b!3940582 () Bool)

(declare-fun res!1594745 () Bool)

(assert (=> b!3940582 (=> (not res!1594745) (not e!2438253))))

(declare-fun isEmpty!24968 (List!41978) Bool)

(assert (=> b!3940582 (= res!1594745 (not (isEmpty!24968 prefixTokens!80)))))

(declare-fun b!3940583 () Bool)

(declare-fun tp!1199190 () Bool)

(assert (=> b!3940583 (= e!2438243 (and tp_is_empty!19863 tp!1199190))))

(declare-fun b!3940584 () Bool)

(declare-fun tp!1199187 () Bool)

(declare-fun e!2438261 () Bool)

(declare-fun inv!21 (TokenValue!6771) Bool)

(assert (=> b!3940584 (= e!2438261 (and (inv!21 (value!207054 (h!47274 prefixTokens!80))) e!2438248 tp!1199187))))

(declare-fun b!3940585 () Bool)

(declare-fun tp!1199181 () Bool)

(declare-fun e!2438246 () Bool)

(assert (=> b!3940585 (= e!2438246 (and (inv!21 (value!207054 (h!47274 suffixTokens!72))) e!2438252 tp!1199181))))

(declare-fun tp!1199192 () Bool)

(declare-fun b!3940586 () Bool)

(declare-fun inv!56056 (Token!12220) Bool)

(assert (=> b!3940586 (= e!2438262 (and (inv!56056 (h!47274 prefixTokens!80)) e!2438261 tp!1199192))))

(declare-fun b!3940587 () Bool)

(declare-fun res!1594749 () Bool)

(assert (=> b!3940587 (=> (not res!1594749) (not e!2438253))))

(declare-fun rulesInvariant!5473 (LexerInterface!6130 List!41977) Bool)

(assert (=> b!3940587 (= res!1594749 (rulesInvariant!5473 thiss!20629 rules!2768))))

(declare-fun b!3940588 () Bool)

(declare-fun tp!1199186 () Bool)

(assert (=> b!3940588 (= e!2438257 (and (inv!56056 (h!47274 suffixTokens!72)) e!2438246 tp!1199186))))

(assert (=> b!3940589 (= e!2438264 (and tp!1199184 tp!1199177))))

(declare-fun b!3940590 () Bool)

(declare-fun res!1594746 () Bool)

(assert (=> b!3940590 (=> (not res!1594746) (not e!2438253))))

(declare-fun isEmpty!24969 (List!41975) Bool)

(assert (=> b!3940590 (= res!1594746 (not (isEmpty!24969 prefix!426)))))

(assert (= (and start!370002 res!1594751) b!3940581))

(assert (= (and b!3940581 res!1594747) b!3940587))

(assert (= (and b!3940587 res!1594749) b!3940582))

(assert (= (and b!3940582 res!1594745) b!3940590))

(assert (= (and b!3940590 res!1594746) b!3940573))

(assert (= (and b!3940573 res!1594744) b!3940578))

(assert (= (and b!3940578 res!1594748) b!3940577))

(assert (= (and b!3940577 res!1594750) b!3940580))

(assert (= (and start!370002 (is-Cons!41851 suffixResult!91)) b!3940570))

(assert (= (and start!370002 (is-Cons!41851 suffix!1176)) b!3940583))

(assert (= b!3940571 b!3940576))

(assert (= b!3940569 b!3940571))

(assert (= (and start!370002 (is-Cons!41853 rules!2768)) b!3940569))

(assert (= b!3940579 b!3940574))

(assert (= b!3940584 b!3940579))

(assert (= b!3940586 b!3940584))

(assert (= (and start!370002 (is-Cons!41854 prefixTokens!80)) b!3940586))

(assert (= b!3940572 b!3940589))

(assert (= b!3940585 b!3940572))

(assert (= b!3940588 b!3940585))

(assert (= (and start!370002 (is-Cons!41854 suffixTokens!72)) b!3940588))

(assert (= (and start!370002 (is-Cons!41851 prefix!426)) b!3940575))

(declare-fun m!4509237 () Bool)

(assert (=> b!3940588 m!4509237))

(declare-fun m!4509239 () Bool)

(assert (=> b!3940578 m!4509239))

(declare-fun m!4509241 () Bool)

(assert (=> b!3940581 m!4509241))

(declare-fun m!4509243 () Bool)

(assert (=> b!3940572 m!4509243))

(declare-fun m!4509245 () Bool)

(assert (=> b!3940572 m!4509245))

(declare-fun m!4509247 () Bool)

(assert (=> b!3940571 m!4509247))

(declare-fun m!4509249 () Bool)

(assert (=> b!3940571 m!4509249))

(declare-fun m!4509251 () Bool)

(assert (=> b!3940585 m!4509251))

(declare-fun m!4509253 () Bool)

(assert (=> b!3940587 m!4509253))

(declare-fun m!4509255 () Bool)

(assert (=> b!3940577 m!4509255))

(declare-fun m!4509257 () Bool)

(assert (=> b!3940586 m!4509257))

(declare-fun m!4509259 () Bool)

(assert (=> b!3940580 m!4509259))

(declare-fun m!4509261 () Bool)

(assert (=> b!3940580 m!4509261))

(declare-fun m!4509263 () Bool)

(assert (=> b!3940579 m!4509263))

(declare-fun m!4509265 () Bool)

(assert (=> b!3940579 m!4509265))

(declare-fun m!4509267 () Bool)

(assert (=> b!3940584 m!4509267))

(declare-fun m!4509269 () Bool)

(assert (=> b!3940582 m!4509269))

(declare-fun m!4509271 () Bool)

(assert (=> b!3940573 m!4509271))

(declare-fun m!4509273 () Bool)

(assert (=> b!3940573 m!4509273))

(declare-fun m!4509275 () Bool)

(assert (=> b!3940573 m!4509275))

(declare-fun m!4509277 () Bool)

(assert (=> b!3940590 m!4509277))

(push 1)

(assert tp_is_empty!19863)

(assert (not b!3940585))

(assert (not b!3940581))

(assert (not b!3940572))

(assert (not b!3940575))

(assert (not b_next!108491))

(assert (not b!3940590))

(assert (not b!3940586))

(assert b_and!301067)

(assert (not b!3940580))

(assert (not b!3940578))

(assert (not b!3940579))

(assert (not b_next!108485))

(assert (not b_next!108481))

(assert (not b!3940588))

(assert b_and!301075)

(assert b_and!301069)

(assert (not b!3940584))

(assert (not b_next!108487))

(assert (not b!3940582))

(assert b_and!301073)

(assert (not b_next!108483))

(assert (not b!3940571))

(assert (not b!3940569))

(assert (not b!3940587))

(assert (not b!3940573))

(assert b_and!301071)

(assert (not b!3940577))

(assert b_and!301077)

(assert (not b!3940570))

(assert (not b!3940583))

(assert (not b_next!108489))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!108487))

(assert b_and!301073)

(assert (not b_next!108483))

(assert (not b_next!108491))

(assert b_and!301067)

(assert (not b_next!108485))

(assert (not b_next!108481))

(assert b_and!301071)

(assert b_and!301075)

(assert b_and!301069)

(assert b_and!301077)

(assert (not b_next!108489))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1168772 () Bool)

(assert (=> d!1168772 (= (isEmpty!24968 prefixTokens!80) (is-Nil!41854 prefixTokens!80))))

(assert (=> b!3940582 d!1168772))

(declare-fun d!1168776 () Bool)

(assert (=> d!1168776 (= (inv!56052 (tag!7401 (h!47273 rules!2768))) (= (mod (str.len (value!207053 (tag!7401 (h!47273 rules!2768)))) 2) 0))))

(assert (=> b!3940571 d!1168776))

(declare-fun d!1168780 () Bool)

(declare-fun res!1594787 () Bool)

(declare-fun e!2438344 () Bool)

(assert (=> d!1168780 (=> (not res!1594787) (not e!2438344))))

(declare-fun semiInverseModEq!2814 (Int Int) Bool)

(assert (=> d!1168780 (= res!1594787 (semiInverseModEq!2814 (toChars!8860 (transformation!6541 (h!47273 rules!2768))) (toValue!9001 (transformation!6541 (h!47273 rules!2768)))))))

(assert (=> d!1168780 (= (inv!56055 (transformation!6541 (h!47273 rules!2768))) e!2438344)))

(declare-fun b!3940676 () Bool)

(declare-fun equivClasses!2713 (Int Int) Bool)

(assert (=> b!3940676 (= e!2438344 (equivClasses!2713 (toChars!8860 (transformation!6541 (h!47273 rules!2768))) (toValue!9001 (transformation!6541 (h!47273 rules!2768)))))))

(assert (= (and d!1168780 res!1594787) b!3940676))

(declare-fun m!4509327 () Bool)

(assert (=> d!1168780 m!4509327))

(declare-fun m!4509329 () Bool)

(assert (=> b!3940676 m!4509329))

(assert (=> b!3940571 d!1168780))

(declare-fun d!1168782 () Bool)

(assert (=> d!1168782 (= (isEmpty!24967 rules!2768) (is-Nil!41853 rules!2768))))

(assert (=> b!3940581 d!1168782))

(declare-fun d!1168784 () Bool)

(declare-fun lt!1378380 () Bool)

(declare-fun content!6316 (List!41977) (Set Rule!12882))

(assert (=> d!1168784 (= lt!1378380 (set.member (rule!9499 (_1!23704 (v!39290 lt!1378366))) (content!6316 rules!2768)))))

(declare-fun e!2438351 () Bool)

(assert (=> d!1168784 (= lt!1378380 e!2438351)))

(declare-fun res!1594793 () Bool)

(assert (=> d!1168784 (=> (not res!1594793) (not e!2438351))))

(assert (=> d!1168784 (= res!1594793 (is-Cons!41853 rules!2768))))

(assert (=> d!1168784 (= (contains!8378 rules!2768 (rule!9499 (_1!23704 (v!39290 lt!1378366)))) lt!1378380)))

(declare-fun b!3940682 () Bool)

(declare-fun e!2438350 () Bool)

(assert (=> b!3940682 (= e!2438351 e!2438350)))

(declare-fun res!1594794 () Bool)

(assert (=> b!3940682 (=> res!1594794 e!2438350)))

(assert (=> b!3940682 (= res!1594794 (= (h!47273 rules!2768) (rule!9499 (_1!23704 (v!39290 lt!1378366)))))))

(declare-fun b!3940683 () Bool)

(assert (=> b!3940683 (= e!2438350 (contains!8378 (t!326796 rules!2768) (rule!9499 (_1!23704 (v!39290 lt!1378366)))))))

(assert (= (and d!1168784 res!1594793) b!3940682))

(assert (= (and b!3940682 (not res!1594794)) b!3940683))

(declare-fun m!4509335 () Bool)

(assert (=> d!1168784 m!4509335))

(declare-fun m!4509337 () Bool)

(assert (=> d!1168784 m!4509337))

(declare-fun m!4509339 () Bool)

(assert (=> b!3940683 m!4509339))

(assert (=> b!3940580 d!1168784))

(declare-fun d!1168790 () Bool)

(declare-fun size!31390 (List!41975) Int)

(assert (=> d!1168790 (= (size!31388 (_1!23704 (v!39290 lt!1378366))) (size!31390 (originalCharacters!7141 (_1!23704 (v!39290 lt!1378366)))))))

(declare-fun Unit!60406 () Unit!60401)

(assert (=> d!1168790 (= (lemmaCharactersSize!1194 (_1!23704 (v!39290 lt!1378366))) Unit!60406)))

(declare-fun bs!586629 () Bool)

(assert (= bs!586629 d!1168790))

(declare-fun m!4509341 () Bool)

(assert (=> bs!586629 m!4509341))

(assert (=> b!3940580 d!1168790))

(declare-fun d!1168792 () Bool)

(assert (=> d!1168792 (= (isEmpty!24969 prefix!426) (is-Nil!41851 prefix!426))))

(assert (=> b!3940590 d!1168792))

(declare-fun d!1168794 () Bool)

(assert (=> d!1168794 (= (inv!56052 (tag!7401 (rule!9499 (h!47274 prefixTokens!80)))) (= (mod (str.len (value!207053 (tag!7401 (rule!9499 (h!47274 prefixTokens!80))))) 2) 0))))

(assert (=> b!3940579 d!1168794))

(declare-fun d!1168796 () Bool)

(declare-fun res!1594795 () Bool)

(declare-fun e!2438352 () Bool)

(assert (=> d!1168796 (=> (not res!1594795) (not e!2438352))))

(assert (=> d!1168796 (= res!1594795 (semiInverseModEq!2814 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (toValue!9001 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))))))

(assert (=> d!1168796 (= (inv!56055 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) e!2438352)))

(declare-fun b!3940684 () Bool)

(assert (=> b!3940684 (= e!2438352 (equivClasses!2713 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (toValue!9001 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))))))

(assert (= (and d!1168796 res!1594795) b!3940684))

(declare-fun m!4509343 () Bool)

(assert (=> d!1168796 m!4509343))

(declare-fun m!4509345 () Bool)

(assert (=> b!3940684 m!4509345))

(assert (=> b!3940579 d!1168796))

(declare-fun d!1168798 () Bool)

(declare-fun e!2438359 () Bool)

(assert (=> d!1168798 e!2438359))

(declare-fun c!684622 () Bool)

(declare-fun lt!1378388 () tuple2!41138)

(declare-fun size!31391 (List!41978) Int)

(assert (=> d!1168798 (= c!684622 (> (size!31391 (_1!23703 lt!1378388)) 0))))

(declare-fun e!2438361 () tuple2!41138)

(assert (=> d!1168798 (= lt!1378388 e!2438361)))

(declare-fun c!684623 () Bool)

(declare-fun lt!1378387 () Option!8961)

(assert (=> d!1168798 (= c!684623 (is-Some!8960 lt!1378387))))

(assert (=> d!1168798 (= lt!1378387 (maxPrefix!3434 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1168798 (= (lexList!1898 thiss!20629 rules!2768 suffix!1176) lt!1378388)))

(declare-fun b!3940695 () Bool)

(declare-fun e!2438360 () Bool)

(assert (=> b!3940695 (= e!2438360 (not (isEmpty!24968 (_1!23703 lt!1378388))))))

(declare-fun b!3940696 () Bool)

(assert (=> b!3940696 (= e!2438361 (tuple2!41139 Nil!41854 suffix!1176))))

(declare-fun b!3940697 () Bool)

(assert (=> b!3940697 (= e!2438359 (= (_2!23703 lt!1378388) suffix!1176))))

(declare-fun b!3940698 () Bool)

(assert (=> b!3940698 (= e!2438359 e!2438360)))

(declare-fun res!1594798 () Bool)

(assert (=> b!3940698 (= res!1594798 (< (size!31390 (_2!23703 lt!1378388)) (size!31390 suffix!1176)))))

(assert (=> b!3940698 (=> (not res!1594798) (not e!2438360))))

(declare-fun b!3940699 () Bool)

(declare-fun lt!1378389 () tuple2!41138)

(assert (=> b!3940699 (= e!2438361 (tuple2!41139 (Cons!41854 (_1!23704 (v!39290 lt!1378387)) (_1!23703 lt!1378389)) (_2!23703 lt!1378389)))))

(assert (=> b!3940699 (= lt!1378389 (lexList!1898 thiss!20629 rules!2768 (_2!23704 (v!39290 lt!1378387))))))

(assert (= (and d!1168798 c!684623) b!3940699))

(assert (= (and d!1168798 (not c!684623)) b!3940696))

(assert (= (and d!1168798 c!684622) b!3940698))

(assert (= (and d!1168798 (not c!684622)) b!3940697))

(assert (= (and b!3940698 res!1594798) b!3940695))

(declare-fun m!4509347 () Bool)

(assert (=> d!1168798 m!4509347))

(declare-fun m!4509349 () Bool)

(assert (=> d!1168798 m!4509349))

(declare-fun m!4509351 () Bool)

(assert (=> b!3940695 m!4509351))

(declare-fun m!4509353 () Bool)

(assert (=> b!3940698 m!4509353))

(declare-fun m!4509355 () Bool)

(assert (=> b!3940698 m!4509355))

(declare-fun m!4509357 () Bool)

(assert (=> b!3940699 m!4509357))

(assert (=> b!3940578 d!1168798))

(declare-fun d!1168800 () Bool)

(declare-fun res!1594803 () Bool)

(declare-fun e!2438364 () Bool)

(assert (=> d!1168800 (=> (not res!1594803) (not e!2438364))))

(assert (=> d!1168800 (= res!1594803 (not (isEmpty!24969 (originalCharacters!7141 (h!47274 suffixTokens!72)))))))

(assert (=> d!1168800 (= (inv!56056 (h!47274 suffixTokens!72)) e!2438364)))

(declare-fun b!3940704 () Bool)

(declare-fun res!1594804 () Bool)

(assert (=> b!3940704 (=> (not res!1594804) (not e!2438364))))

(declare-fun list!15543 (BalanceConc!25098) List!41975)

(declare-fun dynLambda!17917 (Int TokenValue!6771) BalanceConc!25098)

(assert (=> b!3940704 (= res!1594804 (= (originalCharacters!7141 (h!47274 suffixTokens!72)) (list!15543 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72))))))))

(declare-fun b!3940705 () Bool)

(assert (=> b!3940705 (= e!2438364 (= (size!31388 (h!47274 suffixTokens!72)) (size!31390 (originalCharacters!7141 (h!47274 suffixTokens!72)))))))

(assert (= (and d!1168800 res!1594803) b!3940704))

(assert (= (and b!3940704 res!1594804) b!3940705))

(declare-fun b_lambda!115231 () Bool)

(assert (=> (not b_lambda!115231) (not b!3940704)))

(declare-fun t!326803 () Bool)

(declare-fun tb!236093 () Bool)

(assert (=> (and b!3940576 (= (toChars!8860 (transformation!6541 (h!47273 rules!2768))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))) t!326803) tb!236093))

(declare-fun b!3940710 () Bool)

(declare-fun e!2438367 () Bool)

(declare-fun tp!1199247 () Bool)

(declare-fun inv!56059 (Conc!12752) Bool)

(assert (=> b!3940710 (= e!2438367 (and (inv!56059 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72))))) tp!1199247))))

(declare-fun result!286010 () Bool)

(declare-fun inv!56060 (BalanceConc!25098) Bool)

(assert (=> tb!236093 (= result!286010 (and (inv!56060 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72)))) e!2438367))))

(assert (= tb!236093 b!3940710))

(declare-fun m!4509359 () Bool)

(assert (=> b!3940710 m!4509359))

(declare-fun m!4509361 () Bool)

(assert (=> tb!236093 m!4509361))

(assert (=> b!3940704 t!326803))

(declare-fun b_and!301091 () Bool)

(assert (= b_and!301069 (and (=> t!326803 result!286010) b_and!301091)))

(declare-fun t!326805 () Bool)

(declare-fun tb!236095 () Bool)

(assert (=> (and b!3940574 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))) t!326805) tb!236095))

(declare-fun result!286014 () Bool)

(assert (= result!286014 result!286010))

(assert (=> b!3940704 t!326805))

(declare-fun b_and!301093 () Bool)

(assert (= b_and!301073 (and (=> t!326805 result!286014) b_and!301093)))

(declare-fun t!326807 () Bool)

(declare-fun tb!236097 () Bool)

(assert (=> (and b!3940589 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))) t!326807) tb!236097))

(declare-fun result!286016 () Bool)

(assert (= result!286016 result!286010))

(assert (=> b!3940704 t!326807))

(declare-fun b_and!301095 () Bool)

(assert (= b_and!301077 (and (=> t!326807 result!286016) b_and!301095)))

(declare-fun m!4509363 () Bool)

(assert (=> d!1168800 m!4509363))

(declare-fun m!4509365 () Bool)

(assert (=> b!3940704 m!4509365))

(assert (=> b!3940704 m!4509365))

(declare-fun m!4509367 () Bool)

(assert (=> b!3940704 m!4509367))

(declare-fun m!4509369 () Bool)

(assert (=> b!3940705 m!4509369))

(assert (=> b!3940588 d!1168800))

(declare-fun b!3940761 () Bool)

(declare-fun res!1594837 () Bool)

(declare-fun e!2438397 () Bool)

(assert (=> b!3940761 (=> (not res!1594837) (not e!2438397))))

(declare-fun lt!1378416 () Option!8961)

(declare-fun charsOf!4359 (Token!12220) BalanceConc!25098)

(declare-fun get!13826 (Option!8961) tuple2!41140)

(assert (=> b!3940761 (= res!1594837 (= (++!10840 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416)))) (_2!23704 (get!13826 lt!1378416))) lt!1378368))))

(declare-fun b!3940762 () Bool)

(declare-fun res!1594835 () Bool)

(assert (=> b!3940762 (=> (not res!1594835) (not e!2438397))))

(declare-fun apply!9774 (TokenValueInjection!12970 BalanceConc!25098) TokenValue!6771)

(declare-fun seqFromList!4802 (List!41975) BalanceConc!25098)

(assert (=> b!3940762 (= res!1594835 (= (value!207054 (_1!23704 (get!13826 lt!1378416))) (apply!9774 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))) (seqFromList!4802 (originalCharacters!7141 (_1!23704 (get!13826 lt!1378416)))))))))

(declare-fun b!3940763 () Bool)

(declare-fun e!2438396 () Option!8961)

(declare-fun call!285049 () Option!8961)

(assert (=> b!3940763 (= e!2438396 call!285049)))

(declare-fun b!3940764 () Bool)

(declare-fun res!1594832 () Bool)

(assert (=> b!3940764 (=> (not res!1594832) (not e!2438397))))

(declare-fun matchR!5493 (Regex!11446 List!41975) Bool)

(assert (=> b!3940764 (= res!1594832 (matchR!5493 (regex!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))) (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416))))))))

(declare-fun d!1168802 () Bool)

(declare-fun e!2438398 () Bool)

(assert (=> d!1168802 e!2438398))

(declare-fun res!1594831 () Bool)

(assert (=> d!1168802 (=> res!1594831 e!2438398)))

(declare-fun isEmpty!24973 (Option!8961) Bool)

(assert (=> d!1168802 (= res!1594831 (isEmpty!24973 lt!1378416))))

(assert (=> d!1168802 (= lt!1378416 e!2438396)))

(declare-fun c!684636 () Bool)

(assert (=> d!1168802 (= c!684636 (and (is-Cons!41853 rules!2768) (is-Nil!41853 (t!326796 rules!2768))))))

(declare-fun lt!1378417 () Unit!60401)

(declare-fun lt!1378418 () Unit!60401)

(assert (=> d!1168802 (= lt!1378417 lt!1378418)))

(declare-fun isPrefix!3630 (List!41975 List!41975) Bool)

(assert (=> d!1168802 (isPrefix!3630 lt!1378368 lt!1378368)))

(declare-fun lemmaIsPrefixRefl!2291 (List!41975 List!41975) Unit!60401)

(assert (=> d!1168802 (= lt!1378418 (lemmaIsPrefixRefl!2291 lt!1378368 lt!1378368))))

(declare-fun rulesValidInductive!2361 (LexerInterface!6130 List!41977) Bool)

(assert (=> d!1168802 (rulesValidInductive!2361 thiss!20629 rules!2768)))

(assert (=> d!1168802 (= (maxPrefix!3434 thiss!20629 rules!2768 lt!1378368) lt!1378416)))

(declare-fun b!3940765 () Bool)

(declare-fun res!1594833 () Bool)

(assert (=> b!3940765 (=> (not res!1594833) (not e!2438397))))

(assert (=> b!3940765 (= res!1594833 (= (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416)))) (originalCharacters!7141 (_1!23704 (get!13826 lt!1378416)))))))

(declare-fun b!3940766 () Bool)

(assert (=> b!3940766 (= e!2438397 (contains!8378 rules!2768 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))))

(declare-fun b!3940767 () Bool)

(assert (=> b!3940767 (= e!2438398 e!2438397)))

(declare-fun res!1594836 () Bool)

(assert (=> b!3940767 (=> (not res!1594836) (not e!2438397))))

(declare-fun isDefined!6960 (Option!8961) Bool)

(assert (=> b!3940767 (= res!1594836 (isDefined!6960 lt!1378416))))

(declare-fun bm!285044 () Bool)

(declare-fun maxPrefixOneRule!2498 (LexerInterface!6130 Rule!12882 List!41975) Option!8961)

(assert (=> bm!285044 (= call!285049 (maxPrefixOneRule!2498 thiss!20629 (h!47273 rules!2768) lt!1378368))))

(declare-fun b!3940768 () Bool)

(declare-fun res!1594834 () Bool)

(assert (=> b!3940768 (=> (not res!1594834) (not e!2438397))))

(assert (=> b!3940768 (= res!1594834 (< (size!31390 (_2!23704 (get!13826 lt!1378416))) (size!31390 lt!1378368)))))

(declare-fun b!3940769 () Bool)

(declare-fun lt!1378415 () Option!8961)

(declare-fun lt!1378419 () Option!8961)

(assert (=> b!3940769 (= e!2438396 (ite (and (is-None!8960 lt!1378415) (is-None!8960 lt!1378419)) None!8960 (ite (is-None!8960 lt!1378419) lt!1378415 (ite (is-None!8960 lt!1378415) lt!1378419 (ite (>= (size!31388 (_1!23704 (v!39290 lt!1378415))) (size!31388 (_1!23704 (v!39290 lt!1378419)))) lt!1378415 lt!1378419)))))))

(assert (=> b!3940769 (= lt!1378415 call!285049)))

(assert (=> b!3940769 (= lt!1378419 (maxPrefix!3434 thiss!20629 (t!326796 rules!2768) lt!1378368))))

(assert (= (and d!1168802 c!684636) b!3940763))

(assert (= (and d!1168802 (not c!684636)) b!3940769))

(assert (= (or b!3940763 b!3940769) bm!285044))

(assert (= (and d!1168802 (not res!1594831)) b!3940767))

(assert (= (and b!3940767 res!1594836) b!3940765))

(assert (= (and b!3940765 res!1594833) b!3940768))

(assert (= (and b!3940768 res!1594834) b!3940761))

(assert (= (and b!3940761 res!1594837) b!3940762))

(assert (= (and b!3940762 res!1594835) b!3940764))

(assert (= (and b!3940764 res!1594832) b!3940766))

(declare-fun m!4509411 () Bool)

(assert (=> b!3940761 m!4509411))

(declare-fun m!4509413 () Bool)

(assert (=> b!3940761 m!4509413))

(assert (=> b!3940761 m!4509413))

(declare-fun m!4509415 () Bool)

(assert (=> b!3940761 m!4509415))

(assert (=> b!3940761 m!4509415))

(declare-fun m!4509417 () Bool)

(assert (=> b!3940761 m!4509417))

(assert (=> b!3940764 m!4509411))

(assert (=> b!3940764 m!4509413))

(assert (=> b!3940764 m!4509413))

(assert (=> b!3940764 m!4509415))

(assert (=> b!3940764 m!4509415))

(declare-fun m!4509419 () Bool)

(assert (=> b!3940764 m!4509419))

(declare-fun m!4509421 () Bool)

(assert (=> d!1168802 m!4509421))

(declare-fun m!4509423 () Bool)

(assert (=> d!1168802 m!4509423))

(declare-fun m!4509425 () Bool)

(assert (=> d!1168802 m!4509425))

(declare-fun m!4509427 () Bool)

(assert (=> d!1168802 m!4509427))

(declare-fun m!4509429 () Bool)

(assert (=> b!3940769 m!4509429))

(declare-fun m!4509431 () Bool)

(assert (=> bm!285044 m!4509431))

(assert (=> b!3940768 m!4509411))

(declare-fun m!4509433 () Bool)

(assert (=> b!3940768 m!4509433))

(declare-fun m!4509435 () Bool)

(assert (=> b!3940768 m!4509435))

(assert (=> b!3940762 m!4509411))

(declare-fun m!4509437 () Bool)

(assert (=> b!3940762 m!4509437))

(assert (=> b!3940762 m!4509437))

(declare-fun m!4509439 () Bool)

(assert (=> b!3940762 m!4509439))

(declare-fun m!4509441 () Bool)

(assert (=> b!3940767 m!4509441))

(assert (=> b!3940765 m!4509411))

(assert (=> b!3940765 m!4509413))

(assert (=> b!3940765 m!4509413))

(assert (=> b!3940765 m!4509415))

(assert (=> b!3940766 m!4509411))

(declare-fun m!4509443 () Bool)

(assert (=> b!3940766 m!4509443))

(assert (=> b!3940577 d!1168802))

(declare-fun d!1168820 () Bool)

(declare-fun res!1594844 () Bool)

(declare-fun e!2438405 () Bool)

(assert (=> d!1168820 (=> (not res!1594844) (not e!2438405))))

(declare-fun rulesValid!2548 (LexerInterface!6130 List!41977) Bool)

(assert (=> d!1168820 (= res!1594844 (rulesValid!2548 thiss!20629 rules!2768))))

(assert (=> d!1168820 (= (rulesInvariant!5473 thiss!20629 rules!2768) e!2438405)))

(declare-fun b!3940780 () Bool)

(declare-datatypes ((List!41983 0))(
  ( (Nil!41859) (Cons!41859 (h!47279 String!47575) (t!326832 List!41983)) )
))
(declare-fun noDuplicateTag!2549 (LexerInterface!6130 List!41977 List!41983) Bool)

(assert (=> b!3940780 (= e!2438405 (noDuplicateTag!2549 thiss!20629 rules!2768 Nil!41859))))

(assert (= (and d!1168820 res!1594844) b!3940780))

(declare-fun m!4509445 () Bool)

(assert (=> d!1168820 m!4509445))

(declare-fun m!4509447 () Bool)

(assert (=> b!3940780 m!4509447))

(assert (=> b!3940587 d!1168820))

(declare-fun d!1168822 () Bool)

(declare-fun res!1594845 () Bool)

(declare-fun e!2438406 () Bool)

(assert (=> d!1168822 (=> (not res!1594845) (not e!2438406))))

(assert (=> d!1168822 (= res!1594845 (not (isEmpty!24969 (originalCharacters!7141 (h!47274 prefixTokens!80)))))))

(assert (=> d!1168822 (= (inv!56056 (h!47274 prefixTokens!80)) e!2438406)))

(declare-fun b!3940781 () Bool)

(declare-fun res!1594846 () Bool)

(assert (=> b!3940781 (=> (not res!1594846) (not e!2438406))))

(assert (=> b!3940781 (= res!1594846 (= (originalCharacters!7141 (h!47274 prefixTokens!80)) (list!15543 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80))))))))

(declare-fun b!3940782 () Bool)

(assert (=> b!3940782 (= e!2438406 (= (size!31388 (h!47274 prefixTokens!80)) (size!31390 (originalCharacters!7141 (h!47274 prefixTokens!80)))))))

(assert (= (and d!1168822 res!1594845) b!3940781))

(assert (= (and b!3940781 res!1594846) b!3940782))

(declare-fun b_lambda!115233 () Bool)

(assert (=> (not b_lambda!115233) (not b!3940781)))

(declare-fun tb!236099 () Bool)

(declare-fun t!326809 () Bool)

(assert (=> (and b!3940576 (= (toChars!8860 (transformation!6541 (h!47273 rules!2768))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))) t!326809) tb!236099))

(declare-fun b!3940783 () Bool)

(declare-fun e!2438407 () Bool)

(declare-fun tp!1199248 () Bool)

(assert (=> b!3940783 (= e!2438407 (and (inv!56059 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80))))) tp!1199248))))

(declare-fun result!286018 () Bool)

(assert (=> tb!236099 (= result!286018 (and (inv!56060 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80)))) e!2438407))))

(assert (= tb!236099 b!3940783))

(declare-fun m!4509449 () Bool)

(assert (=> b!3940783 m!4509449))

(declare-fun m!4509451 () Bool)

(assert (=> tb!236099 m!4509451))

(assert (=> b!3940781 t!326809))

(declare-fun b_and!301097 () Bool)

(assert (= b_and!301091 (and (=> t!326809 result!286018) b_and!301097)))

(declare-fun t!326811 () Bool)

(declare-fun tb!236101 () Bool)

(assert (=> (and b!3940574 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))) t!326811) tb!236101))

(declare-fun result!286020 () Bool)

(assert (= result!286020 result!286018))

(assert (=> b!3940781 t!326811))

(declare-fun b_and!301099 () Bool)

(assert (= b_and!301093 (and (=> t!326811 result!286020) b_and!301099)))

(declare-fun t!326813 () Bool)

(declare-fun tb!236103 () Bool)

(assert (=> (and b!3940589 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))) t!326813) tb!236103))

(declare-fun result!286022 () Bool)

(assert (= result!286022 result!286018))

(assert (=> b!3940781 t!326813))

(declare-fun b_and!301101 () Bool)

(assert (= b_and!301095 (and (=> t!326813 result!286022) b_and!301101)))

(declare-fun m!4509453 () Bool)

(assert (=> d!1168822 m!4509453))

(declare-fun m!4509455 () Bool)

(assert (=> b!3940781 m!4509455))

(assert (=> b!3940781 m!4509455))

(declare-fun m!4509457 () Bool)

(assert (=> b!3940781 m!4509457))

(declare-fun m!4509459 () Bool)

(assert (=> b!3940782 m!4509459))

(assert (=> b!3940586 d!1168822))

(declare-fun d!1168824 () Bool)

(declare-fun c!684645 () Bool)

(assert (=> d!1168824 (= c!684645 (is-IntegerValue!20313 (value!207054 (h!47274 suffixTokens!72))))))

(declare-fun e!2438417 () Bool)

(assert (=> d!1168824 (= (inv!21 (value!207054 (h!47274 suffixTokens!72))) e!2438417)))

(declare-fun b!3940798 () Bool)

(declare-fun res!1594851 () Bool)

(declare-fun e!2438416 () Bool)

(assert (=> b!3940798 (=> res!1594851 e!2438416)))

(assert (=> b!3940798 (= res!1594851 (not (is-IntegerValue!20315 (value!207054 (h!47274 suffixTokens!72)))))))

(declare-fun e!2438418 () Bool)

(assert (=> b!3940798 (= e!2438418 e!2438416)))

(declare-fun b!3940799 () Bool)

(assert (=> b!3940799 (= e!2438417 e!2438418)))

(declare-fun c!684644 () Bool)

(assert (=> b!3940799 (= c!684644 (is-IntegerValue!20314 (value!207054 (h!47274 suffixTokens!72))))))

(declare-fun b!3940800 () Bool)

(declare-fun inv!15 (TokenValue!6771) Bool)

(assert (=> b!3940800 (= e!2438416 (inv!15 (value!207054 (h!47274 suffixTokens!72))))))

(declare-fun b!3940801 () Bool)

(declare-fun inv!17 (TokenValue!6771) Bool)

(assert (=> b!3940801 (= e!2438418 (inv!17 (value!207054 (h!47274 suffixTokens!72))))))

(declare-fun b!3940802 () Bool)

(declare-fun inv!16 (TokenValue!6771) Bool)

(assert (=> b!3940802 (= e!2438417 (inv!16 (value!207054 (h!47274 suffixTokens!72))))))

(assert (= (and d!1168824 c!684645) b!3940802))

(assert (= (and d!1168824 (not c!684645)) b!3940799))

(assert (= (and b!3940799 c!684644) b!3940801))

(assert (= (and b!3940799 (not c!684644)) b!3940798))

(assert (= (and b!3940798 (not res!1594851)) b!3940800))

(declare-fun m!4509475 () Bool)

(assert (=> b!3940800 m!4509475))

(declare-fun m!4509477 () Bool)

(assert (=> b!3940801 m!4509477))

(declare-fun m!4509479 () Bool)

(assert (=> b!3940802 m!4509479))

(assert (=> b!3940585 d!1168824))

(declare-fun d!1168828 () Bool)

(declare-fun c!684647 () Bool)

(assert (=> d!1168828 (= c!684647 (is-IntegerValue!20313 (value!207054 (h!47274 prefixTokens!80))))))

(declare-fun e!2438420 () Bool)

(assert (=> d!1168828 (= (inv!21 (value!207054 (h!47274 prefixTokens!80))) e!2438420)))

(declare-fun b!3940803 () Bool)

(declare-fun res!1594852 () Bool)

(declare-fun e!2438419 () Bool)

(assert (=> b!3940803 (=> res!1594852 e!2438419)))

(assert (=> b!3940803 (= res!1594852 (not (is-IntegerValue!20315 (value!207054 (h!47274 prefixTokens!80)))))))

(declare-fun e!2438421 () Bool)

(assert (=> b!3940803 (= e!2438421 e!2438419)))

(declare-fun b!3940804 () Bool)

(assert (=> b!3940804 (= e!2438420 e!2438421)))

(declare-fun c!684646 () Bool)

(assert (=> b!3940804 (= c!684646 (is-IntegerValue!20314 (value!207054 (h!47274 prefixTokens!80))))))

(declare-fun b!3940805 () Bool)

(assert (=> b!3940805 (= e!2438419 (inv!15 (value!207054 (h!47274 prefixTokens!80))))))

(declare-fun b!3940806 () Bool)

(assert (=> b!3940806 (= e!2438421 (inv!17 (value!207054 (h!47274 prefixTokens!80))))))

(declare-fun b!3940807 () Bool)

(assert (=> b!3940807 (= e!2438420 (inv!16 (value!207054 (h!47274 prefixTokens!80))))))

(assert (= (and d!1168828 c!684647) b!3940807))

(assert (= (and d!1168828 (not c!684647)) b!3940804))

(assert (= (and b!3940804 c!684646) b!3940806))

(assert (= (and b!3940804 (not c!684646)) b!3940803))

(assert (= (and b!3940803 (not res!1594852)) b!3940805))

(declare-fun m!4509481 () Bool)

(assert (=> b!3940805 m!4509481))

(declare-fun m!4509483 () Bool)

(assert (=> b!3940806 m!4509483))

(declare-fun m!4509485 () Bool)

(assert (=> b!3940807 m!4509485))

(assert (=> b!3940584 d!1168828))

(declare-fun d!1168830 () Bool)

(declare-fun e!2438422 () Bool)

(assert (=> d!1168830 e!2438422))

(declare-fun c!684648 () Bool)

(declare-fun lt!1378424 () tuple2!41138)

(assert (=> d!1168830 (= c!684648 (> (size!31391 (_1!23703 lt!1378424)) 0))))

(declare-fun e!2438424 () tuple2!41138)

(assert (=> d!1168830 (= lt!1378424 e!2438424)))

(declare-fun c!684649 () Bool)

(declare-fun lt!1378423 () Option!8961)

(assert (=> d!1168830 (= c!684649 (is-Some!8960 lt!1378423))))

(assert (=> d!1168830 (= lt!1378423 (maxPrefix!3434 thiss!20629 rules!2768 lt!1378368))))

(assert (=> d!1168830 (= (lexList!1898 thiss!20629 rules!2768 lt!1378368) lt!1378424)))

(declare-fun b!3940808 () Bool)

(declare-fun e!2438423 () Bool)

(assert (=> b!3940808 (= e!2438423 (not (isEmpty!24968 (_1!23703 lt!1378424))))))

(declare-fun b!3940809 () Bool)

(assert (=> b!3940809 (= e!2438424 (tuple2!41139 Nil!41854 lt!1378368))))

(declare-fun b!3940810 () Bool)

(assert (=> b!3940810 (= e!2438422 (= (_2!23703 lt!1378424) lt!1378368))))

(declare-fun b!3940811 () Bool)

(assert (=> b!3940811 (= e!2438422 e!2438423)))

(declare-fun res!1594853 () Bool)

(assert (=> b!3940811 (= res!1594853 (< (size!31390 (_2!23703 lt!1378424)) (size!31390 lt!1378368)))))

(assert (=> b!3940811 (=> (not res!1594853) (not e!2438423))))

(declare-fun b!3940812 () Bool)

(declare-fun lt!1378425 () tuple2!41138)

(assert (=> b!3940812 (= e!2438424 (tuple2!41139 (Cons!41854 (_1!23704 (v!39290 lt!1378423)) (_1!23703 lt!1378425)) (_2!23703 lt!1378425)))))

(assert (=> b!3940812 (= lt!1378425 (lexList!1898 thiss!20629 rules!2768 (_2!23704 (v!39290 lt!1378423))))))

(assert (= (and d!1168830 c!684649) b!3940812))

(assert (= (and d!1168830 (not c!684649)) b!3940809))

(assert (= (and d!1168830 c!684648) b!3940811))

(assert (= (and d!1168830 (not c!684648)) b!3940810))

(assert (= (and b!3940811 res!1594853) b!3940808))

(declare-fun m!4509487 () Bool)

(assert (=> d!1168830 m!4509487))

(assert (=> d!1168830 m!4509255))

(declare-fun m!4509489 () Bool)

(assert (=> b!3940808 m!4509489))

(declare-fun m!4509491 () Bool)

(assert (=> b!3940811 m!4509491))

(assert (=> b!3940811 m!4509435))

(declare-fun m!4509493 () Bool)

(assert (=> b!3940812 m!4509493))

(assert (=> b!3940573 d!1168830))

(declare-fun b!3940831 () Bool)

(declare-fun res!1594862 () Bool)

(declare-fun e!2438434 () Bool)

(assert (=> b!3940831 (=> (not res!1594862) (not e!2438434))))

(declare-fun lt!1378430 () List!41978)

(assert (=> b!3940831 (= res!1594862 (= (size!31391 lt!1378430) (+ (size!31391 prefixTokens!80) (size!31391 suffixTokens!72))))))

(declare-fun b!3940829 () Bool)

(declare-fun e!2438433 () List!41978)

(assert (=> b!3940829 (= e!2438433 suffixTokens!72)))

(declare-fun d!1168832 () Bool)

(assert (=> d!1168832 e!2438434))

(declare-fun res!1594863 () Bool)

(assert (=> d!1168832 (=> (not res!1594863) (not e!2438434))))

(declare-fun content!6317 (List!41978) (Set Token!12220))

(assert (=> d!1168832 (= res!1594863 (= (content!6317 lt!1378430) (set.union (content!6317 prefixTokens!80) (content!6317 suffixTokens!72))))))

(assert (=> d!1168832 (= lt!1378430 e!2438433)))

(declare-fun c!684654 () Bool)

(assert (=> d!1168832 (= c!684654 (is-Nil!41854 prefixTokens!80))))

(assert (=> d!1168832 (= (++!10839 prefixTokens!80 suffixTokens!72) lt!1378430)))

(declare-fun b!3940832 () Bool)

(assert (=> b!3940832 (= e!2438434 (or (not (= suffixTokens!72 Nil!41854)) (= lt!1378430 prefixTokens!80)))))

(declare-fun b!3940830 () Bool)

(assert (=> b!3940830 (= e!2438433 (Cons!41854 (h!47274 prefixTokens!80) (++!10839 (t!326797 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1168832 c!684654) b!3940829))

(assert (= (and d!1168832 (not c!684654)) b!3940830))

(assert (= (and d!1168832 res!1594863) b!3940831))

(assert (= (and b!3940831 res!1594862) b!3940832))

(declare-fun m!4509495 () Bool)

(assert (=> b!3940831 m!4509495))

(declare-fun m!4509497 () Bool)

(assert (=> b!3940831 m!4509497))

(declare-fun m!4509499 () Bool)

(assert (=> b!3940831 m!4509499))

(declare-fun m!4509501 () Bool)

(assert (=> d!1168832 m!4509501))

(declare-fun m!4509503 () Bool)

(assert (=> d!1168832 m!4509503))

(declare-fun m!4509505 () Bool)

(assert (=> d!1168832 m!4509505))

(declare-fun m!4509507 () Bool)

(assert (=> b!3940830 m!4509507))

(assert (=> b!3940573 d!1168832))

(declare-fun lt!1378434 () List!41975)

(declare-fun e!2438441 () Bool)

(declare-fun b!3940848 () Bool)

(assert (=> b!3940848 (= e!2438441 (or (not (= suffix!1176 Nil!41851)) (= lt!1378434 prefix!426)))))

(declare-fun b!3940847 () Bool)

(declare-fun res!1594870 () Bool)

(assert (=> b!3940847 (=> (not res!1594870) (not e!2438441))))

(assert (=> b!3940847 (= res!1594870 (= (size!31390 lt!1378434) (+ (size!31390 prefix!426) (size!31390 suffix!1176))))))

(declare-fun b!3940846 () Bool)

(declare-fun e!2438442 () List!41975)

(assert (=> b!3940846 (= e!2438442 (Cons!41851 (h!47271 prefix!426) (++!10840 (t!326794 prefix!426) suffix!1176)))))

(declare-fun d!1168834 () Bool)

(assert (=> d!1168834 e!2438441))

(declare-fun res!1594871 () Bool)

(assert (=> d!1168834 (=> (not res!1594871) (not e!2438441))))

(declare-fun content!6318 (List!41975) (Set C!23078))

(assert (=> d!1168834 (= res!1594871 (= (content!6318 lt!1378434) (set.union (content!6318 prefix!426) (content!6318 suffix!1176))))))

(assert (=> d!1168834 (= lt!1378434 e!2438442)))

(declare-fun c!684658 () Bool)

(assert (=> d!1168834 (= c!684658 (is-Nil!41851 prefix!426))))

(assert (=> d!1168834 (= (++!10840 prefix!426 suffix!1176) lt!1378434)))

(declare-fun b!3940845 () Bool)

(assert (=> b!3940845 (= e!2438442 suffix!1176)))

(assert (= (and d!1168834 c!684658) b!3940845))

(assert (= (and d!1168834 (not c!684658)) b!3940846))

(assert (= (and d!1168834 res!1594871) b!3940847))

(assert (= (and b!3940847 res!1594870) b!3940848))

(declare-fun m!4509521 () Bool)

(assert (=> b!3940847 m!4509521))

(declare-fun m!4509523 () Bool)

(assert (=> b!3940847 m!4509523))

(assert (=> b!3940847 m!4509355))

(declare-fun m!4509525 () Bool)

(assert (=> b!3940846 m!4509525))

(declare-fun m!4509527 () Bool)

(assert (=> d!1168834 m!4509527))

(declare-fun m!4509529 () Bool)

(assert (=> d!1168834 m!4509529))

(declare-fun m!4509531 () Bool)

(assert (=> d!1168834 m!4509531))

(assert (=> b!3940573 d!1168834))

(declare-fun d!1168840 () Bool)

(assert (=> d!1168840 (= (inv!56052 (tag!7401 (rule!9499 (h!47274 suffixTokens!72)))) (= (mod (str.len (value!207053 (tag!7401 (rule!9499 (h!47274 suffixTokens!72))))) 2) 0))))

(assert (=> b!3940572 d!1168840))

(declare-fun d!1168842 () Bool)

(declare-fun res!1594873 () Bool)

(declare-fun e!2438444 () Bool)

(assert (=> d!1168842 (=> (not res!1594873) (not e!2438444))))

(assert (=> d!1168842 (= res!1594873 (semiInverseModEq!2814 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (toValue!9001 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))))))

(assert (=> d!1168842 (= (inv!56055 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) e!2438444)))

(declare-fun b!3940850 () Bool)

(assert (=> b!3940850 (= e!2438444 (equivClasses!2713 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (toValue!9001 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))))))

(assert (= (and d!1168842 res!1594873) b!3940850))

(declare-fun m!4509535 () Bool)

(assert (=> d!1168842 m!4509535))

(declare-fun m!4509537 () Bool)

(assert (=> b!3940850 m!4509537))

(assert (=> b!3940572 d!1168842))

(declare-fun b!3940861 () Bool)

(declare-fun e!2438447 () Bool)

(assert (=> b!3940861 (= e!2438447 tp_is_empty!19863)))

(declare-fun b!3940862 () Bool)

(declare-fun tp!1199263 () Bool)

(declare-fun tp!1199262 () Bool)

(assert (=> b!3940862 (= e!2438447 (and tp!1199263 tp!1199262))))

(assert (=> b!3940571 (= tp!1199193 e!2438447)))

(declare-fun b!3940864 () Bool)

(declare-fun tp!1199259 () Bool)

(declare-fun tp!1199261 () Bool)

(assert (=> b!3940864 (= e!2438447 (and tp!1199259 tp!1199261))))

(declare-fun b!3940863 () Bool)

(declare-fun tp!1199260 () Bool)

(assert (=> b!3940863 (= e!2438447 tp!1199260)))

(assert (= (and b!3940571 (is-ElementMatch!11446 (regex!6541 (h!47273 rules!2768)))) b!3940861))

(assert (= (and b!3940571 (is-Concat!18218 (regex!6541 (h!47273 rules!2768)))) b!3940862))

(assert (= (and b!3940571 (is-Star!11446 (regex!6541 (h!47273 rules!2768)))) b!3940863))

(assert (= (and b!3940571 (is-Union!11446 (regex!6541 (h!47273 rules!2768)))) b!3940864))

(declare-fun b!3940869 () Bool)

(declare-fun e!2438450 () Bool)

(declare-fun tp!1199266 () Bool)

(assert (=> b!3940869 (= e!2438450 (and tp_is_empty!19863 tp!1199266))))

(assert (=> b!3940570 (= tp!1199191 e!2438450)))

(assert (= (and b!3940570 (is-Cons!41851 (t!326794 suffixResult!91))) b!3940869))

(declare-fun b!3940880 () Bool)

(declare-fun b_free!107801 () Bool)

(declare-fun b_next!108505 () Bool)

(assert (=> b!3940880 (= b_free!107801 (not b_next!108505))))

(declare-fun tp!1199276 () Bool)

(declare-fun b_and!301103 () Bool)

(assert (=> b!3940880 (= tp!1199276 b_and!301103)))

(declare-fun b_free!107803 () Bool)

(declare-fun b_next!108507 () Bool)

(assert (=> b!3940880 (= b_free!107803 (not b_next!108507))))

(declare-fun t!326815 () Bool)

(declare-fun tb!236105 () Bool)

(assert (=> (and b!3940880 (= (toChars!8860 (transformation!6541 (h!47273 (t!326796 rules!2768)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))) t!326815) tb!236105))

(declare-fun result!286030 () Bool)

(assert (= result!286030 result!286010))

(assert (=> b!3940704 t!326815))

(declare-fun tb!236107 () Bool)

(declare-fun t!326817 () Bool)

(assert (=> (and b!3940880 (= (toChars!8860 (transformation!6541 (h!47273 (t!326796 rules!2768)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))) t!326817) tb!236107))

(declare-fun result!286032 () Bool)

(assert (= result!286032 result!286018))

(assert (=> b!3940781 t!326817))

(declare-fun tp!1199278 () Bool)

(declare-fun b_and!301105 () Bool)

(assert (=> b!3940880 (= tp!1199278 (and (=> t!326815 result!286030) (=> t!326817 result!286032) b_and!301105))))

(declare-fun e!2438459 () Bool)

(assert (=> b!3940880 (= e!2438459 (and tp!1199276 tp!1199278))))

(declare-fun tp!1199275 () Bool)

(declare-fun b!3940879 () Bool)

(declare-fun e!2438460 () Bool)

(assert (=> b!3940879 (= e!2438460 (and tp!1199275 (inv!56052 (tag!7401 (h!47273 (t!326796 rules!2768)))) (inv!56055 (transformation!6541 (h!47273 (t!326796 rules!2768)))) e!2438459))))

(declare-fun b!3940878 () Bool)

(declare-fun e!2438462 () Bool)

(declare-fun tp!1199277 () Bool)

(assert (=> b!3940878 (= e!2438462 (and e!2438460 tp!1199277))))

(assert (=> b!3940569 (= tp!1199178 e!2438462)))

(assert (= b!3940879 b!3940880))

(assert (= b!3940878 b!3940879))

(assert (= (and b!3940569 (is-Cons!41853 (t!326796 rules!2768))) b!3940878))

(declare-fun m!4509541 () Bool)

(assert (=> b!3940879 m!4509541))

(declare-fun m!4509543 () Bool)

(assert (=> b!3940879 m!4509543))

(declare-fun b!3940881 () Bool)

(declare-fun e!2438465 () Bool)

(assert (=> b!3940881 (= e!2438465 tp_is_empty!19863)))

(declare-fun b!3940882 () Bool)

(declare-fun tp!1199283 () Bool)

(declare-fun tp!1199282 () Bool)

(assert (=> b!3940882 (= e!2438465 (and tp!1199283 tp!1199282))))

(assert (=> b!3940579 (= tp!1199179 e!2438465)))

(declare-fun b!3940885 () Bool)

(declare-fun tp!1199279 () Bool)

(declare-fun tp!1199281 () Bool)

(assert (=> b!3940885 (= e!2438465 (and tp!1199279 tp!1199281))))

(declare-fun b!3940883 () Bool)

(declare-fun tp!1199280 () Bool)

(assert (=> b!3940883 (= e!2438465 tp!1199280)))

(assert (= (and b!3940579 (is-ElementMatch!11446 (regex!6541 (rule!9499 (h!47274 prefixTokens!80))))) b!3940881))

(assert (= (and b!3940579 (is-Concat!18218 (regex!6541 (rule!9499 (h!47274 prefixTokens!80))))) b!3940882))

(assert (= (and b!3940579 (is-Star!11446 (regex!6541 (rule!9499 (h!47274 prefixTokens!80))))) b!3940883))

(assert (= (and b!3940579 (is-Union!11446 (regex!6541 (rule!9499 (h!47274 prefixTokens!80))))) b!3940885))

(declare-fun b!3940901 () Bool)

(declare-fun b_free!107805 () Bool)

(declare-fun b_next!108509 () Bool)

(assert (=> b!3940901 (= b_free!107805 (not b_next!108509))))

(declare-fun tp!1199294 () Bool)

(declare-fun b_and!301107 () Bool)

(assert (=> b!3940901 (= tp!1199294 b_and!301107)))

(declare-fun b_free!107807 () Bool)

(declare-fun b_next!108511 () Bool)

(assert (=> b!3940901 (= b_free!107807 (not b_next!108511))))

(declare-fun t!326819 () Bool)

(declare-fun tb!236109 () Bool)

(assert (=> (and b!3940901 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))) t!326819) tb!236109))

(declare-fun result!286036 () Bool)

(assert (= result!286036 result!286010))

(assert (=> b!3940704 t!326819))

(declare-fun t!326821 () Bool)

(declare-fun tb!236111 () Bool)

(assert (=> (and b!3940901 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))) t!326821) tb!236111))

(declare-fun result!286038 () Bool)

(assert (= result!286038 result!286018))

(assert (=> b!3940781 t!326821))

(declare-fun tp!1199297 () Bool)

(declare-fun b_and!301109 () Bool)

(assert (=> b!3940901 (= tp!1199297 (and (=> t!326819 result!286036) (=> t!326821 result!286038) b_and!301109))))

(declare-fun tp!1199296 () Bool)

(declare-fun b!3940900 () Bool)

(declare-fun e!2438480 () Bool)

(declare-fun e!2438483 () Bool)

(assert (=> b!3940900 (= e!2438480 (and tp!1199296 (inv!56052 (tag!7401 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) (inv!56055 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) e!2438483))))

(declare-fun b!3940899 () Bool)

(declare-fun tp!1199298 () Bool)

(declare-fun e!2438481 () Bool)

(assert (=> b!3940899 (= e!2438481 (and (inv!21 (value!207054 (h!47274 (t!326797 suffixTokens!72)))) e!2438480 tp!1199298))))

(assert (=> b!3940901 (= e!2438483 (and tp!1199294 tp!1199297))))

(declare-fun e!2438479 () Bool)

(assert (=> b!3940588 (= tp!1199186 e!2438479)))

(declare-fun b!3940898 () Bool)

(declare-fun tp!1199295 () Bool)

(assert (=> b!3940898 (= e!2438479 (and (inv!56056 (h!47274 (t!326797 suffixTokens!72))) e!2438481 tp!1199295))))

(assert (= b!3940900 b!3940901))

(assert (= b!3940899 b!3940900))

(assert (= b!3940898 b!3940899))

(assert (= (and b!3940588 (is-Cons!41854 (t!326797 suffixTokens!72))) b!3940898))

(declare-fun m!4509549 () Bool)

(assert (=> b!3940900 m!4509549))

(declare-fun m!4509551 () Bool)

(assert (=> b!3940900 m!4509551))

(declare-fun m!4509553 () Bool)

(assert (=> b!3940899 m!4509553))

(declare-fun m!4509555 () Bool)

(assert (=> b!3940898 m!4509555))

(declare-fun b!3940905 () Bool)

(declare-fun b_free!107809 () Bool)

(declare-fun b_next!108513 () Bool)

(assert (=> b!3940905 (= b_free!107809 (not b_next!108513))))

(declare-fun tp!1199299 () Bool)

(declare-fun b_and!301111 () Bool)

(assert (=> b!3940905 (= tp!1199299 b_and!301111)))

(declare-fun b_free!107811 () Bool)

(declare-fun b_next!108515 () Bool)

(assert (=> b!3940905 (= b_free!107811 (not b_next!108515))))

(declare-fun tb!236113 () Bool)

(declare-fun t!326823 () Bool)

(assert (=> (and b!3940905 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))) t!326823) tb!236113))

(declare-fun result!286040 () Bool)

(assert (= result!286040 result!286010))

(assert (=> b!3940704 t!326823))

(declare-fun t!326825 () Bool)

(declare-fun tb!236115 () Bool)

(assert (=> (and b!3940905 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))) t!326825) tb!236115))

(declare-fun result!286042 () Bool)

(assert (= result!286042 result!286018))

(assert (=> b!3940781 t!326825))

(declare-fun tp!1199302 () Bool)

(declare-fun b_and!301113 () Bool)

(assert (=> b!3940905 (= tp!1199302 (and (=> t!326823 result!286040) (=> t!326825 result!286042) b_and!301113))))

(declare-fun e!2438489 () Bool)

(declare-fun e!2438486 () Bool)

(declare-fun b!3940904 () Bool)

(declare-fun tp!1199301 () Bool)

(assert (=> b!3940904 (= e!2438486 (and tp!1199301 (inv!56052 (tag!7401 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) (inv!56055 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) e!2438489))))

(declare-fun tp!1199303 () Bool)

(declare-fun e!2438487 () Bool)

(declare-fun b!3940903 () Bool)

(assert (=> b!3940903 (= e!2438487 (and (inv!21 (value!207054 (h!47274 (t!326797 prefixTokens!80)))) e!2438486 tp!1199303))))

(assert (=> b!3940905 (= e!2438489 (and tp!1199299 tp!1199302))))

(declare-fun e!2438485 () Bool)

(assert (=> b!3940586 (= tp!1199192 e!2438485)))

(declare-fun tp!1199300 () Bool)

(declare-fun b!3940902 () Bool)

(assert (=> b!3940902 (= e!2438485 (and (inv!56056 (h!47274 (t!326797 prefixTokens!80))) e!2438487 tp!1199300))))

(assert (= b!3940904 b!3940905))

(assert (= b!3940903 b!3940904))

(assert (= b!3940902 b!3940903))

(assert (= (and b!3940586 (is-Cons!41854 (t!326797 prefixTokens!80))) b!3940902))

(declare-fun m!4509557 () Bool)

(assert (=> b!3940904 m!4509557))

(declare-fun m!4509559 () Bool)

(assert (=> b!3940904 m!4509559))

(declare-fun m!4509561 () Bool)

(assert (=> b!3940903 m!4509561))

(declare-fun m!4509563 () Bool)

(assert (=> b!3940902 m!4509563))

(declare-fun b!3940906 () Bool)

(declare-fun e!2438491 () Bool)

(declare-fun tp!1199304 () Bool)

(assert (=> b!3940906 (= e!2438491 (and tp_is_empty!19863 tp!1199304))))

(assert (=> b!3940575 (= tp!1199185 e!2438491)))

(assert (= (and b!3940575 (is-Cons!41851 (t!326794 prefix!426))) b!3940906))

(declare-fun b!3940907 () Bool)

(declare-fun e!2438492 () Bool)

(declare-fun tp!1199305 () Bool)

(assert (=> b!3940907 (= e!2438492 (and tp_is_empty!19863 tp!1199305))))

(assert (=> b!3940585 (= tp!1199181 e!2438492)))

(assert (= (and b!3940585 (is-Cons!41851 (originalCharacters!7141 (h!47274 suffixTokens!72)))) b!3940907))

(declare-fun b!3940908 () Bool)

(declare-fun e!2438493 () Bool)

(declare-fun tp!1199306 () Bool)

(assert (=> b!3940908 (= e!2438493 (and tp_is_empty!19863 tp!1199306))))

(assert (=> b!3940584 (= tp!1199187 e!2438493)))

(assert (= (and b!3940584 (is-Cons!41851 (originalCharacters!7141 (h!47274 prefixTokens!80)))) b!3940908))

(declare-fun b!3940909 () Bool)

(declare-fun e!2438494 () Bool)

(assert (=> b!3940909 (= e!2438494 tp_is_empty!19863)))

(declare-fun b!3940910 () Bool)

(declare-fun tp!1199311 () Bool)

(declare-fun tp!1199310 () Bool)

(assert (=> b!3940910 (= e!2438494 (and tp!1199311 tp!1199310))))

(assert (=> b!3940572 (= tp!1199189 e!2438494)))

(declare-fun b!3940912 () Bool)

(declare-fun tp!1199307 () Bool)

(declare-fun tp!1199309 () Bool)

(assert (=> b!3940912 (= e!2438494 (and tp!1199307 tp!1199309))))

(declare-fun b!3940911 () Bool)

(declare-fun tp!1199308 () Bool)

(assert (=> b!3940911 (= e!2438494 tp!1199308)))

(assert (= (and b!3940572 (is-ElementMatch!11446 (regex!6541 (rule!9499 (h!47274 suffixTokens!72))))) b!3940909))

(assert (= (and b!3940572 (is-Concat!18218 (regex!6541 (rule!9499 (h!47274 suffixTokens!72))))) b!3940910))

(assert (= (and b!3940572 (is-Star!11446 (regex!6541 (rule!9499 (h!47274 suffixTokens!72))))) b!3940911))

(assert (= (and b!3940572 (is-Union!11446 (regex!6541 (rule!9499 (h!47274 suffixTokens!72))))) b!3940912))

(declare-fun b!3940913 () Bool)

(declare-fun e!2438495 () Bool)

(declare-fun tp!1199312 () Bool)

(assert (=> b!3940913 (= e!2438495 (and tp_is_empty!19863 tp!1199312))))

(assert (=> b!3940583 (= tp!1199190 e!2438495)))

(assert (= (and b!3940583 (is-Cons!41851 (t!326794 suffix!1176))) b!3940913))

(declare-fun b_lambda!115235 () Bool)

(assert (= b_lambda!115233 (or (and b!3940901 b_free!107807 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))))) (and b!3940574 b_free!107783) (and b!3940589 b_free!107787 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))))) (and b!3940576 b_free!107779 (= (toChars!8860 (transformation!6541 (h!47273 rules!2768))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))))) (and b!3940905 b_free!107811 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))))) (and b!3940880 b_free!107803 (= (toChars!8860 (transformation!6541 (h!47273 (t!326796 rules!2768)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b_lambda!115235)))

(declare-fun b_lambda!115237 () Bool)

(assert (= b_lambda!115231 (or (and b!3940905 b_free!107811 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))))) (and b!3940589 b_free!107787) (and b!3940880 b_free!107803 (= (toChars!8860 (transformation!6541 (h!47273 (t!326796 rules!2768)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))))) (and b!3940901 b_free!107807 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))))) (and b!3940574 b_free!107783 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))))) (and b!3940576 b_free!107779 (= (toChars!8860 (transformation!6541 (h!47273 rules!2768))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b_lambda!115237)))

(push 1)

(assert (not b!3940695))

(assert (not b!3940765))

(assert (not b_next!108491))

(assert (not b!3940766))

(assert b_and!301067)

(assert (not b!3940885))

(assert (not b!3940862))

(assert (not b!3940783))

(assert (not d!1168832))

(assert (not b_next!108487))

(assert (not d!1168830))

(assert (not b!3940801))

(assert (not b!3940863))

(assert (not b_next!108513))

(assert (not b!3940683))

(assert (not b!3940882))

(assert (not b!3940910))

(assert (not d!1168822))

(assert tp_is_empty!19863)

(assert (not b!3940846))

(assert (not b!3940907))

(assert (not d!1168796))

(assert (not b!3940808))

(assert (not d!1168842))

(assert (not b!3940764))

(assert b_and!301103)

(assert b_and!301109)

(assert (not tb!236093))

(assert (not b!3940705))

(assert (not d!1168784))

(assert (not b!3940908))

(assert (not b!3940802))

(assert (not b!3940902))

(assert b_and!301111)

(assert (not b!3940800))

(assert (not b!3940812))

(assert b_and!301099)

(assert (not b!3940879))

(assert (not b!3940806))

(assert (not b!3940904))

(assert b_and!301097)

(assert (not b_next!108483))

(assert (not b!3940906))

(assert (not b!3940807))

(assert (not b!3940850))

(assert (not b_lambda!115235))

(assert (not b!3940782))

(assert (not b!3940900))

(assert (not b!3940913))

(assert (not b!3940762))

(assert (not b!3940698))

(assert (not b!3940780))

(assert (not b!3940811))

(assert (not d!1168798))

(assert (not b!3940911))

(assert (not b_next!108505))

(assert (not b!3940883))

(assert (not b!3940805))

(assert (not tb!236099))

(assert (not b!3940704))

(assert (not b!3940878))

(assert (not b!3940699))

(assert (not b!3940831))

(assert (not b!3940761))

(assert (not d!1168802))

(assert (not b!3940830))

(assert (not d!1168790))

(assert (not bm!285044))

(assert (not b!3940899))

(assert (not b_next!108485))

(assert (not b_next!108481))

(assert (not d!1168834))

(assert (not b!3940869))

(assert (not b!3940912))

(assert (not b!3940768))

(assert (not b_next!108509))

(assert (not b_next!108511))

(assert (not b!3940710))

(assert b_and!301113)

(assert (not b!3940903))

(assert (not b!3940781))

(assert (not d!1168820))

(assert b_and!301105)

(assert b_and!301071)

(assert (not b!3940676))

(assert (not b!3940767))

(assert (not b!3940847))

(assert b_and!301075)

(assert (not d!1168780))

(assert (not b_next!108515))

(assert (not b_lambda!115237))

(assert b_and!301107)

(assert (not b!3940684))

(assert b_and!301101)

(assert (not b!3940864))

(assert (not b_next!108507))

(assert (not d!1168800))

(assert (not b!3940769))

(assert (not b_next!108489))

(assert (not b!3940898))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!108487))

(assert (not b_next!108513))

(assert b_and!301103)

(assert b_and!301109)

(assert b_and!301111)

(assert b_and!301099)

(assert (not b_next!108491))

(assert b_and!301067)

(assert (not b_next!108505))

(assert (not b_next!108485))

(assert b_and!301075)

(assert b_and!301097)

(assert (not b_next!108483))

(assert (not b_next!108481))

(assert (not b_next!108509))

(assert b_and!301113)

(assert (not b_next!108511))

(assert b_and!301105)

(assert b_and!301071)

(assert (not b_next!108515))

(assert b_and!301107)

(assert b_and!301101)

(assert (not b_next!108507))

(assert (not b_next!108489))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3941015 () Bool)

(declare-fun res!1594914 () Bool)

(declare-fun e!2438562 () Bool)

(assert (=> b!3941015 (=> (not res!1594914) (not e!2438562))))

(declare-fun lt!1378451 () Option!8961)

(assert (=> b!3941015 (= res!1594914 (= (++!10840 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378451)))) (_2!23704 (get!13826 lt!1378451))) lt!1378368))))

(declare-fun b!3941016 () Bool)

(declare-fun res!1594912 () Bool)

(assert (=> b!3941016 (=> (not res!1594912) (not e!2438562))))

(assert (=> b!3941016 (= res!1594912 (= (value!207054 (_1!23704 (get!13826 lt!1378451))) (apply!9774 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378451)))) (seqFromList!4802 (originalCharacters!7141 (_1!23704 (get!13826 lt!1378451)))))))))

(declare-fun b!3941017 () Bool)

(declare-fun e!2438561 () Option!8961)

(declare-fun call!285053 () Option!8961)

(assert (=> b!3941017 (= e!2438561 call!285053)))

(declare-fun b!3941018 () Bool)

(declare-fun res!1594909 () Bool)

(assert (=> b!3941018 (=> (not res!1594909) (not e!2438562))))

(assert (=> b!3941018 (= res!1594909 (matchR!5493 (regex!6541 (rule!9499 (_1!23704 (get!13826 lt!1378451)))) (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378451))))))))

(declare-fun d!1168854 () Bool)

(declare-fun e!2438563 () Bool)

(assert (=> d!1168854 e!2438563))

(declare-fun res!1594908 () Bool)

(assert (=> d!1168854 (=> res!1594908 e!2438563)))

(assert (=> d!1168854 (= res!1594908 (isEmpty!24973 lt!1378451))))

(assert (=> d!1168854 (= lt!1378451 e!2438561)))

(declare-fun c!684662 () Bool)

(assert (=> d!1168854 (= c!684662 (and (is-Cons!41853 (t!326796 rules!2768)) (is-Nil!41853 (t!326796 (t!326796 rules!2768)))))))

(declare-fun lt!1378452 () Unit!60401)

(declare-fun lt!1378453 () Unit!60401)

(assert (=> d!1168854 (= lt!1378452 lt!1378453)))

(assert (=> d!1168854 (isPrefix!3630 lt!1378368 lt!1378368)))

(assert (=> d!1168854 (= lt!1378453 (lemmaIsPrefixRefl!2291 lt!1378368 lt!1378368))))

(assert (=> d!1168854 (rulesValidInductive!2361 thiss!20629 (t!326796 rules!2768))))

(assert (=> d!1168854 (= (maxPrefix!3434 thiss!20629 (t!326796 rules!2768) lt!1378368) lt!1378451)))

(declare-fun b!3941019 () Bool)

(declare-fun res!1594910 () Bool)

(assert (=> b!3941019 (=> (not res!1594910) (not e!2438562))))

(assert (=> b!3941019 (= res!1594910 (= (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378451)))) (originalCharacters!7141 (_1!23704 (get!13826 lt!1378451)))))))

(declare-fun b!3941020 () Bool)

(assert (=> b!3941020 (= e!2438562 (contains!8378 (t!326796 rules!2768) (rule!9499 (_1!23704 (get!13826 lt!1378451)))))))

(declare-fun b!3941021 () Bool)

(assert (=> b!3941021 (= e!2438563 e!2438562)))

(declare-fun res!1594913 () Bool)

(assert (=> b!3941021 (=> (not res!1594913) (not e!2438562))))

(assert (=> b!3941021 (= res!1594913 (isDefined!6960 lt!1378451))))

(declare-fun bm!285048 () Bool)

(assert (=> bm!285048 (= call!285053 (maxPrefixOneRule!2498 thiss!20629 (h!47273 (t!326796 rules!2768)) lt!1378368))))

(declare-fun b!3941022 () Bool)

(declare-fun res!1594911 () Bool)

(assert (=> b!3941022 (=> (not res!1594911) (not e!2438562))))

(assert (=> b!3941022 (= res!1594911 (< (size!31390 (_2!23704 (get!13826 lt!1378451))) (size!31390 lt!1378368)))))

(declare-fun b!3941023 () Bool)

(declare-fun lt!1378450 () Option!8961)

(declare-fun lt!1378454 () Option!8961)

(assert (=> b!3941023 (= e!2438561 (ite (and (is-None!8960 lt!1378450) (is-None!8960 lt!1378454)) None!8960 (ite (is-None!8960 lt!1378454) lt!1378450 (ite (is-None!8960 lt!1378450) lt!1378454 (ite (>= (size!31388 (_1!23704 (v!39290 lt!1378450))) (size!31388 (_1!23704 (v!39290 lt!1378454)))) lt!1378450 lt!1378454)))))))

(assert (=> b!3941023 (= lt!1378450 call!285053)))

(assert (=> b!3941023 (= lt!1378454 (maxPrefix!3434 thiss!20629 (t!326796 (t!326796 rules!2768)) lt!1378368))))

(assert (= (and d!1168854 c!684662) b!3941017))

(assert (= (and d!1168854 (not c!684662)) b!3941023))

(assert (= (or b!3941017 b!3941023) bm!285048))

(assert (= (and d!1168854 (not res!1594908)) b!3941021))

(assert (= (and b!3941021 res!1594913) b!3941019))

(assert (= (and b!3941019 res!1594910) b!3941022))

(assert (= (and b!3941022 res!1594911) b!3941015))

(assert (= (and b!3941015 res!1594914) b!3941016))

(assert (= (and b!3941016 res!1594912) b!3941018))

(assert (= (and b!3941018 res!1594909) b!3941020))

(declare-fun m!4509641 () Bool)

(assert (=> b!3941015 m!4509641))

(declare-fun m!4509643 () Bool)

(assert (=> b!3941015 m!4509643))

(assert (=> b!3941015 m!4509643))

(declare-fun m!4509645 () Bool)

(assert (=> b!3941015 m!4509645))

(assert (=> b!3941015 m!4509645))

(declare-fun m!4509647 () Bool)

(assert (=> b!3941015 m!4509647))

(assert (=> b!3941018 m!4509641))

(assert (=> b!3941018 m!4509643))

(assert (=> b!3941018 m!4509643))

(assert (=> b!3941018 m!4509645))

(assert (=> b!3941018 m!4509645))

(declare-fun m!4509649 () Bool)

(assert (=> b!3941018 m!4509649))

(declare-fun m!4509651 () Bool)

(assert (=> d!1168854 m!4509651))

(assert (=> d!1168854 m!4509423))

(assert (=> d!1168854 m!4509425))

(declare-fun m!4509653 () Bool)

(assert (=> d!1168854 m!4509653))

(declare-fun m!4509655 () Bool)

(assert (=> b!3941023 m!4509655))

(declare-fun m!4509657 () Bool)

(assert (=> bm!285048 m!4509657))

(assert (=> b!3941022 m!4509641))

(declare-fun m!4509659 () Bool)

(assert (=> b!3941022 m!4509659))

(assert (=> b!3941022 m!4509435))

(assert (=> b!3941016 m!4509641))

(declare-fun m!4509661 () Bool)

(assert (=> b!3941016 m!4509661))

(assert (=> b!3941016 m!4509661))

(declare-fun m!4509663 () Bool)

(assert (=> b!3941016 m!4509663))

(declare-fun m!4509665 () Bool)

(assert (=> b!3941021 m!4509665))

(assert (=> b!3941019 m!4509641))

(assert (=> b!3941019 m!4509643))

(assert (=> b!3941019 m!4509643))

(assert (=> b!3941019 m!4509645))

(assert (=> b!3941020 m!4509641))

(declare-fun m!4509667 () Bool)

(assert (=> b!3941020 m!4509667))

(assert (=> b!3940769 d!1168854))

(declare-fun d!1168856 () Bool)

(declare-fun isBalanced!3642 (Conc!12752) Bool)

(assert (=> d!1168856 (= (inv!56060 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72)))) (isBalanced!3642 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72))))))))

(declare-fun bs!586631 () Bool)

(assert (= bs!586631 d!1168856))

(declare-fun m!4509669 () Bool)

(assert (=> bs!586631 m!4509669))

(assert (=> tb!236093 d!1168856))

(declare-fun d!1168858 () Bool)

(declare-fun lt!1378457 () Int)

(assert (=> d!1168858 (>= lt!1378457 0)))

(declare-fun e!2438566 () Int)

(assert (=> d!1168858 (= lt!1378457 e!2438566)))

(declare-fun c!684665 () Bool)

(assert (=> d!1168858 (= c!684665 (is-Nil!41851 (originalCharacters!7141 (h!47274 prefixTokens!80))))))

(assert (=> d!1168858 (= (size!31390 (originalCharacters!7141 (h!47274 prefixTokens!80))) lt!1378457)))

(declare-fun b!3941028 () Bool)

(assert (=> b!3941028 (= e!2438566 0)))

(declare-fun b!3941029 () Bool)

(assert (=> b!3941029 (= e!2438566 (+ 1 (size!31390 (t!326794 (originalCharacters!7141 (h!47274 prefixTokens!80))))))))

(assert (= (and d!1168858 c!684665) b!3941028))

(assert (= (and d!1168858 (not c!684665)) b!3941029))

(declare-fun m!4509671 () Bool)

(assert (=> b!3941029 m!4509671))

(assert (=> b!3940782 d!1168858))

(declare-fun b!3941032 () Bool)

(declare-fun res!1594915 () Bool)

(declare-fun e!2438568 () Bool)

(assert (=> b!3941032 (=> (not res!1594915) (not e!2438568))))

(declare-fun lt!1378458 () List!41978)

(assert (=> b!3941032 (= res!1594915 (= (size!31391 lt!1378458) (+ (size!31391 (t!326797 prefixTokens!80)) (size!31391 suffixTokens!72))))))

(declare-fun b!3941030 () Bool)

(declare-fun e!2438567 () List!41978)

(assert (=> b!3941030 (= e!2438567 suffixTokens!72)))

(declare-fun d!1168860 () Bool)

(assert (=> d!1168860 e!2438568))

(declare-fun res!1594916 () Bool)

(assert (=> d!1168860 (=> (not res!1594916) (not e!2438568))))

(assert (=> d!1168860 (= res!1594916 (= (content!6317 lt!1378458) (set.union (content!6317 (t!326797 prefixTokens!80)) (content!6317 suffixTokens!72))))))

(assert (=> d!1168860 (= lt!1378458 e!2438567)))

(declare-fun c!684666 () Bool)

(assert (=> d!1168860 (= c!684666 (is-Nil!41854 (t!326797 prefixTokens!80)))))

(assert (=> d!1168860 (= (++!10839 (t!326797 prefixTokens!80) suffixTokens!72) lt!1378458)))

(declare-fun b!3941033 () Bool)

(assert (=> b!3941033 (= e!2438568 (or (not (= suffixTokens!72 Nil!41854)) (= lt!1378458 (t!326797 prefixTokens!80))))))

(declare-fun b!3941031 () Bool)

(assert (=> b!3941031 (= e!2438567 (Cons!41854 (h!47274 (t!326797 prefixTokens!80)) (++!10839 (t!326797 (t!326797 prefixTokens!80)) suffixTokens!72)))))

(assert (= (and d!1168860 c!684666) b!3941030))

(assert (= (and d!1168860 (not c!684666)) b!3941031))

(assert (= (and d!1168860 res!1594916) b!3941032))

(assert (= (and b!3941032 res!1594915) b!3941033))

(declare-fun m!4509673 () Bool)

(assert (=> b!3941032 m!4509673))

(declare-fun m!4509675 () Bool)

(assert (=> b!3941032 m!4509675))

(assert (=> b!3941032 m!4509499))

(declare-fun m!4509677 () Bool)

(assert (=> d!1168860 m!4509677))

(declare-fun m!4509679 () Bool)

(assert (=> d!1168860 m!4509679))

(assert (=> d!1168860 m!4509505))

(declare-fun m!4509681 () Bool)

(assert (=> b!3941031 m!4509681))

(assert (=> b!3940830 d!1168860))

(declare-fun d!1168862 () Bool)

(declare-fun lt!1378459 () Int)

(assert (=> d!1168862 (>= lt!1378459 0)))

(declare-fun e!2438569 () Int)

(assert (=> d!1168862 (= lt!1378459 e!2438569)))

(declare-fun c!684667 () Bool)

(assert (=> d!1168862 (= c!684667 (is-Nil!41851 (originalCharacters!7141 (_1!23704 (v!39290 lt!1378366)))))))

(assert (=> d!1168862 (= (size!31390 (originalCharacters!7141 (_1!23704 (v!39290 lt!1378366)))) lt!1378459)))

(declare-fun b!3941034 () Bool)

(assert (=> b!3941034 (= e!2438569 0)))

(declare-fun b!3941035 () Bool)

(assert (=> b!3941035 (= e!2438569 (+ 1 (size!31390 (t!326794 (originalCharacters!7141 (_1!23704 (v!39290 lt!1378366)))))))))

(assert (= (and d!1168862 c!684667) b!3941034))

(assert (= (and d!1168862 (not c!684667)) b!3941035))

(declare-fun m!4509683 () Bool)

(assert (=> b!3941035 m!4509683))

(assert (=> d!1168790 d!1168862))

(declare-fun d!1168864 () Bool)

(declare-fun e!2438578 () Bool)

(assert (=> d!1168864 e!2438578))

(declare-fun res!1594933 () Bool)

(assert (=> d!1168864 (=> res!1594933 e!2438578)))

(declare-fun lt!1378470 () Option!8961)

(assert (=> d!1168864 (= res!1594933 (isEmpty!24973 lt!1378470))))

(declare-fun e!2438579 () Option!8961)

(assert (=> d!1168864 (= lt!1378470 e!2438579)))

(declare-fun c!684670 () Bool)

(declare-datatypes ((tuple2!41146 0))(
  ( (tuple2!41147 (_1!23707 List!41975) (_2!23707 List!41975)) )
))
(declare-fun lt!1378471 () tuple2!41146)

(assert (=> d!1168864 (= c!684670 (isEmpty!24969 (_1!23707 lt!1378471)))))

(declare-fun findLongestMatch!1186 (Regex!11446 List!41975) tuple2!41146)

(assert (=> d!1168864 (= lt!1378471 (findLongestMatch!1186 (regex!6541 (h!47273 rules!2768)) lt!1378368))))

(declare-fun ruleValid!2483 (LexerInterface!6130 Rule!12882) Bool)

(assert (=> d!1168864 (ruleValid!2483 thiss!20629 (h!47273 rules!2768))))

(assert (=> d!1168864 (= (maxPrefixOneRule!2498 thiss!20629 (h!47273 rules!2768) lt!1378368) lt!1378470)))

(declare-fun b!3941054 () Bool)

(declare-fun res!1594935 () Bool)

(declare-fun e!2438581 () Bool)

(assert (=> b!3941054 (=> (not res!1594935) (not e!2438581))))

(assert (=> b!3941054 (= res!1594935 (= (rule!9499 (_1!23704 (get!13826 lt!1378470))) (h!47273 rules!2768)))))

(declare-fun b!3941055 () Bool)

(assert (=> b!3941055 (= e!2438579 None!8960)))

(declare-fun b!3941056 () Bool)

(assert (=> b!3941056 (= e!2438581 (= (size!31388 (_1!23704 (get!13826 lt!1378470))) (size!31390 (originalCharacters!7141 (_1!23704 (get!13826 lt!1378470))))))))

(declare-fun b!3941057 () Bool)

(declare-fun size!31394 (BalanceConc!25098) Int)

(assert (=> b!3941057 (= e!2438579 (Some!8960 (tuple2!41141 (Token!12221 (apply!9774 (transformation!6541 (h!47273 rules!2768)) (seqFromList!4802 (_1!23707 lt!1378471))) (h!47273 rules!2768) (size!31394 (seqFromList!4802 (_1!23707 lt!1378471))) (_1!23707 lt!1378471)) (_2!23707 lt!1378471))))))

(declare-fun lt!1378473 () Unit!60401)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1246 (Regex!11446 List!41975) Unit!60401)

(assert (=> b!3941057 (= lt!1378473 (longestMatchIsAcceptedByMatchOrIsEmpty!1246 (regex!6541 (h!47273 rules!2768)) lt!1378368))))

(declare-fun res!1594932 () Bool)

(declare-fun findLongestMatchInner!1273 (Regex!11446 List!41975 Int List!41975 List!41975 Int) tuple2!41146)

(assert (=> b!3941057 (= res!1594932 (isEmpty!24969 (_1!23707 (findLongestMatchInner!1273 (regex!6541 (h!47273 rules!2768)) Nil!41851 (size!31390 Nil!41851) lt!1378368 lt!1378368 (size!31390 lt!1378368)))))))

(declare-fun e!2438580 () Bool)

(assert (=> b!3941057 (=> res!1594932 e!2438580)))

(assert (=> b!3941057 e!2438580))

(declare-fun lt!1378474 () Unit!60401)

(assert (=> b!3941057 (= lt!1378474 lt!1378473)))

(declare-fun lt!1378472 () Unit!60401)

(declare-fun lemmaSemiInverse!1779 (TokenValueInjection!12970 BalanceConc!25098) Unit!60401)

(assert (=> b!3941057 (= lt!1378472 (lemmaSemiInverse!1779 (transformation!6541 (h!47273 rules!2768)) (seqFromList!4802 (_1!23707 lt!1378471))))))

(declare-fun b!3941058 () Bool)

(declare-fun res!1594937 () Bool)

(assert (=> b!3941058 (=> (not res!1594937) (not e!2438581))))

(assert (=> b!3941058 (= res!1594937 (= (value!207054 (_1!23704 (get!13826 lt!1378470))) (apply!9774 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378470)))) (seqFromList!4802 (originalCharacters!7141 (_1!23704 (get!13826 lt!1378470)))))))))

(declare-fun b!3941059 () Bool)

(declare-fun res!1594931 () Bool)

(assert (=> b!3941059 (=> (not res!1594931) (not e!2438581))))

(assert (=> b!3941059 (= res!1594931 (= (++!10840 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378470)))) (_2!23704 (get!13826 lt!1378470))) lt!1378368))))

(declare-fun b!3941060 () Bool)

(assert (=> b!3941060 (= e!2438578 e!2438581)))

(declare-fun res!1594934 () Bool)

(assert (=> b!3941060 (=> (not res!1594934) (not e!2438581))))

(assert (=> b!3941060 (= res!1594934 (matchR!5493 (regex!6541 (h!47273 rules!2768)) (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378470))))))))

(declare-fun b!3941061 () Bool)

(declare-fun res!1594936 () Bool)

(assert (=> b!3941061 (=> (not res!1594936) (not e!2438581))))

(assert (=> b!3941061 (= res!1594936 (< (size!31390 (_2!23704 (get!13826 lt!1378470))) (size!31390 lt!1378368)))))

(declare-fun b!3941062 () Bool)

(assert (=> b!3941062 (= e!2438580 (matchR!5493 (regex!6541 (h!47273 rules!2768)) (_1!23707 (findLongestMatchInner!1273 (regex!6541 (h!47273 rules!2768)) Nil!41851 (size!31390 Nil!41851) lt!1378368 lt!1378368 (size!31390 lt!1378368)))))))

(assert (= (and d!1168864 c!684670) b!3941055))

(assert (= (and d!1168864 (not c!684670)) b!3941057))

(assert (= (and b!3941057 (not res!1594932)) b!3941062))

(assert (= (and d!1168864 (not res!1594933)) b!3941060))

(assert (= (and b!3941060 res!1594934) b!3941059))

(assert (= (and b!3941059 res!1594931) b!3941061))

(assert (= (and b!3941061 res!1594936) b!3941054))

(assert (= (and b!3941054 res!1594935) b!3941058))

(assert (= (and b!3941058 res!1594937) b!3941056))

(declare-fun m!4509685 () Bool)

(assert (=> b!3941056 m!4509685))

(declare-fun m!4509687 () Bool)

(assert (=> b!3941056 m!4509687))

(declare-fun m!4509689 () Bool)

(assert (=> b!3941057 m!4509689))

(declare-fun m!4509691 () Bool)

(assert (=> b!3941057 m!4509691))

(declare-fun m!4509693 () Bool)

(assert (=> b!3941057 m!4509693))

(assert (=> b!3941057 m!4509689))

(declare-fun m!4509695 () Bool)

(assert (=> b!3941057 m!4509695))

(assert (=> b!3941057 m!4509689))

(declare-fun m!4509697 () Bool)

(assert (=> b!3941057 m!4509697))

(assert (=> b!3941057 m!4509435))

(declare-fun m!4509699 () Bool)

(assert (=> b!3941057 m!4509699))

(assert (=> b!3941057 m!4509689))

(declare-fun m!4509701 () Bool)

(assert (=> b!3941057 m!4509701))

(declare-fun m!4509703 () Bool)

(assert (=> b!3941057 m!4509703))

(assert (=> b!3941057 m!4509697))

(assert (=> b!3941057 m!4509435))

(assert (=> b!3941062 m!4509697))

(assert (=> b!3941062 m!4509435))

(assert (=> b!3941062 m!4509697))

(assert (=> b!3941062 m!4509435))

(assert (=> b!3941062 m!4509699))

(declare-fun m!4509705 () Bool)

(assert (=> b!3941062 m!4509705))

(assert (=> b!3941061 m!4509685))

(declare-fun m!4509707 () Bool)

(assert (=> b!3941061 m!4509707))

(assert (=> b!3941061 m!4509435))

(assert (=> b!3941059 m!4509685))

(declare-fun m!4509709 () Bool)

(assert (=> b!3941059 m!4509709))

(assert (=> b!3941059 m!4509709))

(declare-fun m!4509711 () Bool)

(assert (=> b!3941059 m!4509711))

(assert (=> b!3941059 m!4509711))

(declare-fun m!4509713 () Bool)

(assert (=> b!3941059 m!4509713))

(assert (=> b!3941054 m!4509685))

(declare-fun m!4509715 () Bool)

(assert (=> d!1168864 m!4509715))

(declare-fun m!4509717 () Bool)

(assert (=> d!1168864 m!4509717))

(declare-fun m!4509719 () Bool)

(assert (=> d!1168864 m!4509719))

(declare-fun m!4509721 () Bool)

(assert (=> d!1168864 m!4509721))

(assert (=> b!3941060 m!4509685))

(assert (=> b!3941060 m!4509709))

(assert (=> b!3941060 m!4509709))

(assert (=> b!3941060 m!4509711))

(assert (=> b!3941060 m!4509711))

(declare-fun m!4509723 () Bool)

(assert (=> b!3941060 m!4509723))

(assert (=> b!3941058 m!4509685))

(declare-fun m!4509725 () Bool)

(assert (=> b!3941058 m!4509725))

(assert (=> b!3941058 m!4509725))

(declare-fun m!4509727 () Bool)

(assert (=> b!3941058 m!4509727))

(assert (=> bm!285044 d!1168864))

(declare-fun d!1168866 () Bool)

(declare-fun c!684673 () Bool)

(assert (=> d!1168866 (= c!684673 (is-Node!12752 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72))))))))

(declare-fun e!2438586 () Bool)

(assert (=> d!1168866 (= (inv!56059 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72))))) e!2438586)))

(declare-fun b!3941069 () Bool)

(declare-fun inv!56063 (Conc!12752) Bool)

(assert (=> b!3941069 (= e!2438586 (inv!56063 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72))))))))

(declare-fun b!3941070 () Bool)

(declare-fun e!2438587 () Bool)

(assert (=> b!3941070 (= e!2438586 e!2438587)))

(declare-fun res!1594940 () Bool)

(assert (=> b!3941070 (= res!1594940 (not (is-Leaf!19730 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72)))))))))

(assert (=> b!3941070 (=> res!1594940 e!2438587)))

(declare-fun b!3941071 () Bool)

(declare-fun inv!56064 (Conc!12752) Bool)

(assert (=> b!3941071 (= e!2438587 (inv!56064 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72))))))))

(assert (= (and d!1168866 c!684673) b!3941069))

(assert (= (and d!1168866 (not c!684673)) b!3941070))

(assert (= (and b!3941070 (not res!1594940)) b!3941071))

(declare-fun m!4509729 () Bool)

(assert (=> b!3941069 m!4509729))

(declare-fun m!4509731 () Bool)

(assert (=> b!3941071 m!4509731))

(assert (=> b!3940710 d!1168866))

(declare-fun d!1168868 () Bool)

(declare-fun lt!1378475 () Bool)

(assert (=> d!1168868 (= lt!1378475 (set.member (rule!9499 (_1!23704 (get!13826 lt!1378416))) (content!6316 rules!2768)))))

(declare-fun e!2438589 () Bool)

(assert (=> d!1168868 (= lt!1378475 e!2438589)))

(declare-fun res!1594941 () Bool)

(assert (=> d!1168868 (=> (not res!1594941) (not e!2438589))))

(assert (=> d!1168868 (= res!1594941 (is-Cons!41853 rules!2768))))

(assert (=> d!1168868 (= (contains!8378 rules!2768 (rule!9499 (_1!23704 (get!13826 lt!1378416)))) lt!1378475)))

(declare-fun b!3941072 () Bool)

(declare-fun e!2438588 () Bool)

(assert (=> b!3941072 (= e!2438589 e!2438588)))

(declare-fun res!1594942 () Bool)

(assert (=> b!3941072 (=> res!1594942 e!2438588)))

(assert (=> b!3941072 (= res!1594942 (= (h!47273 rules!2768) (rule!9499 (_1!23704 (get!13826 lt!1378416)))))))

(declare-fun b!3941073 () Bool)

(assert (=> b!3941073 (= e!2438588 (contains!8378 (t!326796 rules!2768) (rule!9499 (_1!23704 (get!13826 lt!1378416)))))))

(assert (= (and d!1168868 res!1594941) b!3941072))

(assert (= (and b!3941072 (not res!1594942)) b!3941073))

(assert (=> d!1168868 m!4509335))

(declare-fun m!4509733 () Bool)

(assert (=> d!1168868 m!4509733))

(declare-fun m!4509735 () Bool)

(assert (=> b!3941073 m!4509735))

(assert (=> b!3940766 d!1168868))

(declare-fun d!1168870 () Bool)

(assert (=> d!1168870 (= (get!13826 lt!1378416) (v!39290 lt!1378416))))

(assert (=> b!3940766 d!1168870))

(declare-fun d!1168872 () Bool)

(declare-fun c!684676 () Bool)

(assert (=> d!1168872 (= c!684676 (is-Nil!41853 rules!2768))))

(declare-fun e!2438592 () (Set Rule!12882))

(assert (=> d!1168872 (= (content!6316 rules!2768) e!2438592)))

(declare-fun b!3941078 () Bool)

(assert (=> b!3941078 (= e!2438592 (as set.empty (Set Rule!12882)))))

(declare-fun b!3941079 () Bool)

(assert (=> b!3941079 (= e!2438592 (set.union (set.insert (h!47273 rules!2768) (as set.empty (Set Rule!12882))) (content!6316 (t!326796 rules!2768))))))

(assert (= (and d!1168872 c!684676) b!3941078))

(assert (= (and d!1168872 (not c!684676)) b!3941079))

(declare-fun m!4509737 () Bool)

(assert (=> b!3941079 m!4509737))

(declare-fun m!4509739 () Bool)

(assert (=> b!3941079 m!4509739))

(assert (=> d!1168784 d!1168872))

(declare-fun d!1168874 () Bool)

(declare-fun charsToInt!0 (List!41976) (_ BitVec 32))

(assert (=> d!1168874 (= (inv!16 (value!207054 (h!47274 suffixTokens!72))) (= (charsToInt!0 (text!47844 (value!207054 (h!47274 suffixTokens!72)))) (value!207045 (value!207054 (h!47274 suffixTokens!72)))))))

(declare-fun bs!586632 () Bool)

(assert (= bs!586632 d!1168874))

(declare-fun m!4509741 () Bool)

(assert (=> bs!586632 m!4509741))

(assert (=> b!3940802 d!1168874))

(declare-fun d!1168876 () Bool)

(declare-fun e!2438593 () Bool)

(assert (=> d!1168876 e!2438593))

(declare-fun c!684677 () Bool)

(declare-fun lt!1378477 () tuple2!41138)

(assert (=> d!1168876 (= c!684677 (> (size!31391 (_1!23703 lt!1378477)) 0))))

(declare-fun e!2438595 () tuple2!41138)

(assert (=> d!1168876 (= lt!1378477 e!2438595)))

(declare-fun c!684678 () Bool)

(declare-fun lt!1378476 () Option!8961)

(assert (=> d!1168876 (= c!684678 (is-Some!8960 lt!1378476))))

(assert (=> d!1168876 (= lt!1378476 (maxPrefix!3434 thiss!20629 rules!2768 (_2!23704 (v!39290 lt!1378387))))))

(assert (=> d!1168876 (= (lexList!1898 thiss!20629 rules!2768 (_2!23704 (v!39290 lt!1378387))) lt!1378477)))

(declare-fun b!3941080 () Bool)

(declare-fun e!2438594 () Bool)

(assert (=> b!3941080 (= e!2438594 (not (isEmpty!24968 (_1!23703 lt!1378477))))))

(declare-fun b!3941081 () Bool)

(assert (=> b!3941081 (= e!2438595 (tuple2!41139 Nil!41854 (_2!23704 (v!39290 lt!1378387))))))

(declare-fun b!3941082 () Bool)

(assert (=> b!3941082 (= e!2438593 (= (_2!23703 lt!1378477) (_2!23704 (v!39290 lt!1378387))))))

(declare-fun b!3941083 () Bool)

(assert (=> b!3941083 (= e!2438593 e!2438594)))

(declare-fun res!1594943 () Bool)

(assert (=> b!3941083 (= res!1594943 (< (size!31390 (_2!23703 lt!1378477)) (size!31390 (_2!23704 (v!39290 lt!1378387)))))))

(assert (=> b!3941083 (=> (not res!1594943) (not e!2438594))))

(declare-fun b!3941084 () Bool)

(declare-fun lt!1378478 () tuple2!41138)

(assert (=> b!3941084 (= e!2438595 (tuple2!41139 (Cons!41854 (_1!23704 (v!39290 lt!1378476)) (_1!23703 lt!1378478)) (_2!23703 lt!1378478)))))

(assert (=> b!3941084 (= lt!1378478 (lexList!1898 thiss!20629 rules!2768 (_2!23704 (v!39290 lt!1378476))))))

(assert (= (and d!1168876 c!684678) b!3941084))

(assert (= (and d!1168876 (not c!684678)) b!3941081))

(assert (= (and d!1168876 c!684677) b!3941083))

(assert (= (and d!1168876 (not c!684677)) b!3941082))

(assert (= (and b!3941083 res!1594943) b!3941080))

(declare-fun m!4509743 () Bool)

(assert (=> d!1168876 m!4509743))

(declare-fun m!4509745 () Bool)

(assert (=> d!1168876 m!4509745))

(declare-fun m!4509747 () Bool)

(assert (=> b!3941080 m!4509747))

(declare-fun m!4509749 () Bool)

(assert (=> b!3941083 m!4509749))

(declare-fun m!4509751 () Bool)

(assert (=> b!3941083 m!4509751))

(declare-fun m!4509753 () Bool)

(assert (=> b!3941084 m!4509753))

(assert (=> b!3940699 d!1168876))

(declare-fun d!1168878 () Bool)

(declare-fun lt!1378479 () Int)

(assert (=> d!1168878 (>= lt!1378479 0)))

(declare-fun e!2438596 () Int)

(assert (=> d!1168878 (= lt!1378479 e!2438596)))

(declare-fun c!684679 () Bool)

(assert (=> d!1168878 (= c!684679 (is-Nil!41851 lt!1378434))))

(assert (=> d!1168878 (= (size!31390 lt!1378434) lt!1378479)))

(declare-fun b!3941085 () Bool)

(assert (=> b!3941085 (= e!2438596 0)))

(declare-fun b!3941086 () Bool)

(assert (=> b!3941086 (= e!2438596 (+ 1 (size!31390 (t!326794 lt!1378434))))))

(assert (= (and d!1168878 c!684679) b!3941085))

(assert (= (and d!1168878 (not c!684679)) b!3941086))

(declare-fun m!4509755 () Bool)

(assert (=> b!3941086 m!4509755))

(assert (=> b!3940847 d!1168878))

(declare-fun d!1168880 () Bool)

(declare-fun lt!1378480 () Int)

(assert (=> d!1168880 (>= lt!1378480 0)))

(declare-fun e!2438597 () Int)

(assert (=> d!1168880 (= lt!1378480 e!2438597)))

(declare-fun c!684680 () Bool)

(assert (=> d!1168880 (= c!684680 (is-Nil!41851 prefix!426))))

(assert (=> d!1168880 (= (size!31390 prefix!426) lt!1378480)))

(declare-fun b!3941087 () Bool)

(assert (=> b!3941087 (= e!2438597 0)))

(declare-fun b!3941088 () Bool)

(assert (=> b!3941088 (= e!2438597 (+ 1 (size!31390 (t!326794 prefix!426))))))

(assert (= (and d!1168880 c!684680) b!3941087))

(assert (= (and d!1168880 (not c!684680)) b!3941088))

(declare-fun m!4509757 () Bool)

(assert (=> b!3941088 m!4509757))

(assert (=> b!3940847 d!1168880))

(declare-fun d!1168882 () Bool)

(declare-fun lt!1378481 () Int)

(assert (=> d!1168882 (>= lt!1378481 0)))

(declare-fun e!2438598 () Int)

(assert (=> d!1168882 (= lt!1378481 e!2438598)))

(declare-fun c!684681 () Bool)

(assert (=> d!1168882 (= c!684681 (is-Nil!41851 suffix!1176))))

(assert (=> d!1168882 (= (size!31390 suffix!1176) lt!1378481)))

(declare-fun b!3941089 () Bool)

(assert (=> b!3941089 (= e!2438598 0)))

(declare-fun b!3941090 () Bool)

(assert (=> b!3941090 (= e!2438598 (+ 1 (size!31390 (t!326794 suffix!1176))))))

(assert (= (and d!1168882 c!684681) b!3941089))

(assert (= (and d!1168882 (not c!684681)) b!3941090))

(declare-fun m!4509759 () Bool)

(assert (=> b!3941090 m!4509759))

(assert (=> b!3940847 d!1168882))

(declare-fun d!1168884 () Bool)

(assert (=> d!1168884 (= (inv!56052 (tag!7401 (h!47273 (t!326796 rules!2768)))) (= (mod (str.len (value!207053 (tag!7401 (h!47273 (t!326796 rules!2768))))) 2) 0))))

(assert (=> b!3940879 d!1168884))

(declare-fun d!1168886 () Bool)

(declare-fun res!1594944 () Bool)

(declare-fun e!2438599 () Bool)

(assert (=> d!1168886 (=> (not res!1594944) (not e!2438599))))

(assert (=> d!1168886 (= res!1594944 (semiInverseModEq!2814 (toChars!8860 (transformation!6541 (h!47273 (t!326796 rules!2768)))) (toValue!9001 (transformation!6541 (h!47273 (t!326796 rules!2768))))))))

(assert (=> d!1168886 (= (inv!56055 (transformation!6541 (h!47273 (t!326796 rules!2768)))) e!2438599)))

(declare-fun b!3941091 () Bool)

(assert (=> b!3941091 (= e!2438599 (equivClasses!2713 (toChars!8860 (transformation!6541 (h!47273 (t!326796 rules!2768)))) (toValue!9001 (transformation!6541 (h!47273 (t!326796 rules!2768))))))))

(assert (= (and d!1168886 res!1594944) b!3941091))

(declare-fun m!4509761 () Bool)

(assert (=> d!1168886 m!4509761))

(declare-fun m!4509763 () Bool)

(assert (=> b!3941091 m!4509763))

(assert (=> b!3940879 d!1168886))

(declare-fun d!1168888 () Bool)

(assert (=> d!1168888 (= (inv!56060 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80)))) (isBalanced!3642 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80))))))))

(declare-fun bs!586633 () Bool)

(assert (= bs!586633 d!1168888))

(declare-fun m!4509765 () Bool)

(assert (=> bs!586633 m!4509765))

(assert (=> tb!236099 d!1168888))

(declare-fun d!1168890 () Bool)

(declare-fun lt!1378484 () Int)

(assert (=> d!1168890 (>= lt!1378484 0)))

(declare-fun e!2438602 () Int)

(assert (=> d!1168890 (= lt!1378484 e!2438602)))

(declare-fun c!684684 () Bool)

(assert (=> d!1168890 (= c!684684 (is-Nil!41854 (_1!23703 lt!1378424)))))

(assert (=> d!1168890 (= (size!31391 (_1!23703 lt!1378424)) lt!1378484)))

(declare-fun b!3941096 () Bool)

(assert (=> b!3941096 (= e!2438602 0)))

(declare-fun b!3941097 () Bool)

(assert (=> b!3941097 (= e!2438602 (+ 1 (size!31391 (t!326797 (_1!23703 lt!1378424)))))))

(assert (= (and d!1168890 c!684684) b!3941096))

(assert (= (and d!1168890 (not c!684684)) b!3941097))

(declare-fun m!4509767 () Bool)

(assert (=> b!3941097 m!4509767))

(assert (=> d!1168830 d!1168890))

(assert (=> d!1168830 d!1168802))

(declare-fun d!1168892 () Bool)

(assert (=> d!1168892 (= (isEmpty!24968 (_1!23703 lt!1378388)) (is-Nil!41854 (_1!23703 lt!1378388)))))

(assert (=> b!3940695 d!1168892))

(declare-fun d!1168894 () Bool)

(declare-fun lt!1378485 () Bool)

(assert (=> d!1168894 (= lt!1378485 (set.member (rule!9499 (_1!23704 (v!39290 lt!1378366))) (content!6316 (t!326796 rules!2768))))))

(declare-fun e!2438604 () Bool)

(assert (=> d!1168894 (= lt!1378485 e!2438604)))

(declare-fun res!1594945 () Bool)

(assert (=> d!1168894 (=> (not res!1594945) (not e!2438604))))

(assert (=> d!1168894 (= res!1594945 (is-Cons!41853 (t!326796 rules!2768)))))

(assert (=> d!1168894 (= (contains!8378 (t!326796 rules!2768) (rule!9499 (_1!23704 (v!39290 lt!1378366)))) lt!1378485)))

(declare-fun b!3941098 () Bool)

(declare-fun e!2438603 () Bool)

(assert (=> b!3941098 (= e!2438604 e!2438603)))

(declare-fun res!1594946 () Bool)

(assert (=> b!3941098 (=> res!1594946 e!2438603)))

(assert (=> b!3941098 (= res!1594946 (= (h!47273 (t!326796 rules!2768)) (rule!9499 (_1!23704 (v!39290 lt!1378366)))))))

(declare-fun b!3941099 () Bool)

(assert (=> b!3941099 (= e!2438603 (contains!8378 (t!326796 (t!326796 rules!2768)) (rule!9499 (_1!23704 (v!39290 lt!1378366)))))))

(assert (= (and d!1168894 res!1594945) b!3941098))

(assert (= (and b!3941098 (not res!1594946)) b!3941099))

(assert (=> d!1168894 m!4509739))

(declare-fun m!4509769 () Bool)

(assert (=> d!1168894 m!4509769))

(declare-fun m!4509771 () Bool)

(assert (=> b!3941099 m!4509771))

(assert (=> b!3940683 d!1168894))

(declare-fun d!1168896 () Bool)

(declare-fun c!684685 () Bool)

(assert (=> d!1168896 (= c!684685 (is-Node!12752 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80))))))))

(declare-fun e!2438605 () Bool)

(assert (=> d!1168896 (= (inv!56059 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80))))) e!2438605)))

(declare-fun b!3941100 () Bool)

(assert (=> b!3941100 (= e!2438605 (inv!56063 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80))))))))

(declare-fun b!3941101 () Bool)

(declare-fun e!2438606 () Bool)

(assert (=> b!3941101 (= e!2438605 e!2438606)))

(declare-fun res!1594947 () Bool)

(assert (=> b!3941101 (= res!1594947 (not (is-Leaf!19730 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80)))))))))

(assert (=> b!3941101 (=> res!1594947 e!2438606)))

(declare-fun b!3941102 () Bool)

(assert (=> b!3941102 (= e!2438606 (inv!56064 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80))))))))

(assert (= (and d!1168896 c!684685) b!3941100))

(assert (= (and d!1168896 (not c!684685)) b!3941101))

(assert (= (and b!3941101 (not res!1594947)) b!3941102))

(declare-fun m!4509773 () Bool)

(assert (=> b!3941100 m!4509773))

(declare-fun m!4509775 () Bool)

(assert (=> b!3941102 m!4509775))

(assert (=> b!3940783 d!1168896))

(declare-fun d!1168898 () Bool)

(assert (=> d!1168898 true))

(declare-fun lambda!126632 () Int)

(declare-fun order!22319 () Int)

(declare-fun order!22321 () Int)

(declare-fun dynLambda!17919 (Int Int) Int)

(declare-fun dynLambda!17920 (Int Int) Int)

(assert (=> d!1168898 (< (dynLambda!17919 order!22319 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))) (dynLambda!17920 order!22321 lambda!126632))))

(assert (=> d!1168898 true))

(declare-fun order!22323 () Int)

(declare-fun dynLambda!17921 (Int Int) Int)

(assert (=> d!1168898 (< (dynLambda!17921 order!22323 (toValue!9001 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))) (dynLambda!17920 order!22321 lambda!126632))))

(declare-fun Forall!1451 (Int) Bool)

(assert (=> d!1168898 (= (semiInverseModEq!2814 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (toValue!9001 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))) (Forall!1451 lambda!126632))))

(declare-fun bs!586634 () Bool)

(assert (= bs!586634 d!1168898))

(declare-fun m!4509777 () Bool)

(assert (=> bs!586634 m!4509777))

(assert (=> d!1168842 d!1168898))

(declare-fun d!1168900 () Bool)

(declare-fun c!684687 () Bool)

(assert (=> d!1168900 (= c!684687 (is-IntegerValue!20313 (value!207054 (h!47274 (t!326797 suffixTokens!72)))))))

(declare-fun e!2438608 () Bool)

(assert (=> d!1168900 (= (inv!21 (value!207054 (h!47274 (t!326797 suffixTokens!72)))) e!2438608)))

(declare-fun b!3941107 () Bool)

(declare-fun res!1594953 () Bool)

(declare-fun e!2438607 () Bool)

(assert (=> b!3941107 (=> res!1594953 e!2438607)))

(assert (=> b!3941107 (= res!1594953 (not (is-IntegerValue!20315 (value!207054 (h!47274 (t!326797 suffixTokens!72))))))))

(declare-fun e!2438609 () Bool)

(assert (=> b!3941107 (= e!2438609 e!2438607)))

(declare-fun b!3941108 () Bool)

(assert (=> b!3941108 (= e!2438608 e!2438609)))

(declare-fun c!684686 () Bool)

(assert (=> b!3941108 (= c!684686 (is-IntegerValue!20314 (value!207054 (h!47274 (t!326797 suffixTokens!72)))))))

(declare-fun b!3941109 () Bool)

(assert (=> b!3941109 (= e!2438607 (inv!15 (value!207054 (h!47274 (t!326797 suffixTokens!72)))))))

(declare-fun b!3941110 () Bool)

(assert (=> b!3941110 (= e!2438609 (inv!17 (value!207054 (h!47274 (t!326797 suffixTokens!72)))))))

(declare-fun b!3941111 () Bool)

(assert (=> b!3941111 (= e!2438608 (inv!16 (value!207054 (h!47274 (t!326797 suffixTokens!72)))))))

(assert (= (and d!1168900 c!684687) b!3941111))

(assert (= (and d!1168900 (not c!684687)) b!3941108))

(assert (= (and b!3941108 c!684686) b!3941110))

(assert (= (and b!3941108 (not c!684686)) b!3941107))

(assert (= (and b!3941107 (not res!1594953)) b!3941109))

(declare-fun m!4509779 () Bool)

(assert (=> b!3941109 m!4509779))

(declare-fun m!4509781 () Bool)

(assert (=> b!3941110 m!4509781))

(declare-fun m!4509783 () Bool)

(assert (=> b!3941111 m!4509783))

(assert (=> b!3940899 d!1168900))

(declare-fun d!1168902 () Bool)

(declare-fun charsToBigInt!0 (List!41976 Int) Int)

(assert (=> d!1168902 (= (inv!15 (value!207054 (h!47274 suffixTokens!72))) (= (charsToBigInt!0 (text!47846 (value!207054 (h!47274 suffixTokens!72))) 0) (value!207049 (value!207054 (h!47274 suffixTokens!72)))))))

(declare-fun bs!586635 () Bool)

(assert (= bs!586635 d!1168902))

(declare-fun m!4509785 () Bool)

(assert (=> bs!586635 m!4509785))

(assert (=> b!3940800 d!1168902))

(declare-fun d!1168904 () Bool)

(declare-fun lt!1378486 () Int)

(assert (=> d!1168904 (>= lt!1378486 0)))

(declare-fun e!2438610 () Int)

(assert (=> d!1168904 (= lt!1378486 e!2438610)))

(declare-fun c!684688 () Bool)

(assert (=> d!1168904 (= c!684688 (is-Nil!41851 (originalCharacters!7141 (h!47274 suffixTokens!72))))))

(assert (=> d!1168904 (= (size!31390 (originalCharacters!7141 (h!47274 suffixTokens!72))) lt!1378486)))

(declare-fun b!3941112 () Bool)

(assert (=> b!3941112 (= e!2438610 0)))

(declare-fun b!3941113 () Bool)

(assert (=> b!3941113 (= e!2438610 (+ 1 (size!31390 (t!326794 (originalCharacters!7141 (h!47274 suffixTokens!72))))))))

(assert (= (and d!1168904 c!684688) b!3941112))

(assert (= (and d!1168904 (not c!684688)) b!3941113))

(declare-fun m!4509787 () Bool)

(assert (=> b!3941113 m!4509787))

(assert (=> b!3940705 d!1168904))

(declare-fun d!1168906 () Bool)

(assert (=> d!1168906 (= (inv!16 (value!207054 (h!47274 prefixTokens!80))) (= (charsToInt!0 (text!47844 (value!207054 (h!47274 prefixTokens!80)))) (value!207045 (value!207054 (h!47274 prefixTokens!80)))))))

(declare-fun bs!586636 () Bool)

(assert (= bs!586636 d!1168906))

(declare-fun m!4509789 () Bool)

(assert (=> bs!586636 m!4509789))

(assert (=> b!3940807 d!1168906))

(declare-fun d!1168908 () Bool)

(assert (=> d!1168908 (= (inv!56052 (tag!7401 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) (= (mod (str.len (value!207053 (tag!7401 (rule!9499 (h!47274 (t!326797 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3940904 d!1168908))

(declare-fun d!1168910 () Bool)

(declare-fun res!1594954 () Bool)

(declare-fun e!2438611 () Bool)

(assert (=> d!1168910 (=> (not res!1594954) (not e!2438611))))

(assert (=> d!1168910 (= res!1594954 (semiInverseModEq!2814 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) (toValue!9001 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80)))))))))

(assert (=> d!1168910 (= (inv!56055 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) e!2438611)))

(declare-fun b!3941114 () Bool)

(assert (=> b!3941114 (= e!2438611 (equivClasses!2713 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) (toValue!9001 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80)))))))))

(assert (= (and d!1168910 res!1594954) b!3941114))

(declare-fun m!4509791 () Bool)

(assert (=> d!1168910 m!4509791))

(declare-fun m!4509793 () Bool)

(assert (=> b!3941114 m!4509793))

(assert (=> b!3940904 d!1168910))

(declare-fun d!1168912 () Bool)

(declare-fun lt!1378487 () Int)

(assert (=> d!1168912 (>= lt!1378487 0)))

(declare-fun e!2438612 () Int)

(assert (=> d!1168912 (= lt!1378487 e!2438612)))

(declare-fun c!684689 () Bool)

(assert (=> d!1168912 (= c!684689 (is-Nil!41851 (_2!23703 lt!1378424)))))

(assert (=> d!1168912 (= (size!31390 (_2!23703 lt!1378424)) lt!1378487)))

(declare-fun b!3941115 () Bool)

(assert (=> b!3941115 (= e!2438612 0)))

(declare-fun b!3941116 () Bool)

(assert (=> b!3941116 (= e!2438612 (+ 1 (size!31390 (t!326794 (_2!23703 lt!1378424)))))))

(assert (= (and d!1168912 c!684689) b!3941115))

(assert (= (and d!1168912 (not c!684689)) b!3941116))

(declare-fun m!4509795 () Bool)

(assert (=> b!3941116 m!4509795))

(assert (=> b!3940811 d!1168912))

(declare-fun d!1168914 () Bool)

(declare-fun lt!1378488 () Int)

(assert (=> d!1168914 (>= lt!1378488 0)))

(declare-fun e!2438613 () Int)

(assert (=> d!1168914 (= lt!1378488 e!2438613)))

(declare-fun c!684690 () Bool)

(assert (=> d!1168914 (= c!684690 (is-Nil!41851 lt!1378368))))

(assert (=> d!1168914 (= (size!31390 lt!1378368) lt!1378488)))

(declare-fun b!3941117 () Bool)

(assert (=> b!3941117 (= e!2438613 0)))

(declare-fun b!3941118 () Bool)

(assert (=> b!3941118 (= e!2438613 (+ 1 (size!31390 (t!326794 lt!1378368))))))

(assert (= (and d!1168914 c!684690) b!3941117))

(assert (= (and d!1168914 (not c!684690)) b!3941118))

(declare-fun m!4509797 () Bool)

(assert (=> b!3941118 m!4509797))

(assert (=> b!3940811 d!1168914))

(declare-fun b!3941147 () Bool)

(declare-fun e!2438633 () Bool)

(declare-fun e!2438631 () Bool)

(assert (=> b!3941147 (= e!2438633 e!2438631)))

(declare-fun c!684699 () Bool)

(assert (=> b!3941147 (= c!684699 (is-EmptyLang!11446 (regex!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416))))))))

(declare-fun b!3941148 () Bool)

(declare-fun lt!1378491 () Bool)

(declare-fun call!285056 () Bool)

(assert (=> b!3941148 (= e!2438633 (= lt!1378491 call!285056))))

(declare-fun b!3941149 () Bool)

(declare-fun res!1594975 () Bool)

(declare-fun e!2438630 () Bool)

(assert (=> b!3941149 (=> (not res!1594975) (not e!2438630))))

(declare-fun tail!6100 (List!41975) List!41975)

(assert (=> b!3941149 (= res!1594975 (isEmpty!24969 (tail!6100 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416)))))))))

(declare-fun b!3941150 () Bool)

(declare-fun e!2438634 () Bool)

(declare-fun nullable!4012 (Regex!11446) Bool)

(assert (=> b!3941150 (= e!2438634 (nullable!4012 (regex!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416))))))))

(declare-fun d!1168916 () Bool)

(assert (=> d!1168916 e!2438633))

(declare-fun c!684697 () Bool)

(assert (=> d!1168916 (= c!684697 (is-EmptyExpr!11446 (regex!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416))))))))

(assert (=> d!1168916 (= lt!1378491 e!2438634)))

(declare-fun c!684698 () Bool)

(assert (=> d!1168916 (= c!684698 (isEmpty!24969 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416))))))))

(declare-fun validRegex!5211 (Regex!11446) Bool)

(assert (=> d!1168916 (validRegex!5211 (regex!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))))

(assert (=> d!1168916 (= (matchR!5493 (regex!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))) (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416))))) lt!1378491)))

(declare-fun b!3941151 () Bool)

(declare-fun res!1594974 () Bool)

(declare-fun e!2438632 () Bool)

(assert (=> b!3941151 (=> res!1594974 e!2438632)))

(assert (=> b!3941151 (= res!1594974 (not (is-ElementMatch!11446 (regex!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))))))

(assert (=> b!3941151 (= e!2438631 e!2438632)))

(declare-fun b!3941152 () Bool)

(declare-fun res!1594976 () Bool)

(assert (=> b!3941152 (=> (not res!1594976) (not e!2438630))))

(assert (=> b!3941152 (= res!1594976 (not call!285056))))

(declare-fun b!3941153 () Bool)

(declare-fun head!8374 (List!41975) C!23078)

(assert (=> b!3941153 (= e!2438630 (= (head!8374 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416))))) (c!684608 (regex!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))))))

(declare-fun bm!285051 () Bool)

(assert (=> bm!285051 (= call!285056 (isEmpty!24969 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416))))))))

(declare-fun b!3941154 () Bool)

(declare-fun res!1594977 () Bool)

(assert (=> b!3941154 (=> res!1594977 e!2438632)))

(assert (=> b!3941154 (= res!1594977 e!2438630)))

(declare-fun res!1594973 () Bool)

(assert (=> b!3941154 (=> (not res!1594973) (not e!2438630))))

(assert (=> b!3941154 (= res!1594973 lt!1378491)))

(declare-fun b!3941155 () Bool)

(declare-fun e!2438628 () Bool)

(assert (=> b!3941155 (= e!2438628 (not (= (head!8374 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416))))) (c!684608 (regex!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416))))))))))

(declare-fun b!3941156 () Bool)

(declare-fun e!2438629 () Bool)

(assert (=> b!3941156 (= e!2438632 e!2438629)))

(declare-fun res!1594971 () Bool)

(assert (=> b!3941156 (=> (not res!1594971) (not e!2438629))))

(assert (=> b!3941156 (= res!1594971 (not lt!1378491))))

(declare-fun b!3941157 () Bool)

(assert (=> b!3941157 (= e!2438629 e!2438628)))

(declare-fun res!1594972 () Bool)

(assert (=> b!3941157 (=> res!1594972 e!2438628)))

(assert (=> b!3941157 (= res!1594972 call!285056)))

(declare-fun b!3941158 () Bool)

(assert (=> b!3941158 (= e!2438631 (not lt!1378491))))

(declare-fun b!3941159 () Bool)

(declare-fun derivativeStep!3454 (Regex!11446 C!23078) Regex!11446)

(assert (=> b!3941159 (= e!2438634 (matchR!5493 (derivativeStep!3454 (regex!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))) (head!8374 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416)))))) (tail!6100 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416)))))))))

(declare-fun b!3941160 () Bool)

(declare-fun res!1594978 () Bool)

(assert (=> b!3941160 (=> res!1594978 e!2438628)))

(assert (=> b!3941160 (= res!1594978 (not (isEmpty!24969 (tail!6100 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416))))))))))

(assert (= (and d!1168916 c!684698) b!3941150))

(assert (= (and d!1168916 (not c!684698)) b!3941159))

(assert (= (and d!1168916 c!684697) b!3941148))

(assert (= (and d!1168916 (not c!684697)) b!3941147))

(assert (= (and b!3941147 c!684699) b!3941158))

(assert (= (and b!3941147 (not c!684699)) b!3941151))

(assert (= (and b!3941151 (not res!1594974)) b!3941154))

(assert (= (and b!3941154 res!1594973) b!3941152))

(assert (= (and b!3941152 res!1594976) b!3941149))

(assert (= (and b!3941149 res!1594975) b!3941153))

(assert (= (and b!3941154 (not res!1594977)) b!3941156))

(assert (= (and b!3941156 res!1594971) b!3941157))

(assert (= (and b!3941157 (not res!1594972)) b!3941160))

(assert (= (and b!3941160 (not res!1594978)) b!3941155))

(assert (= (or b!3941148 b!3941152 b!3941157) bm!285051))

(assert (=> b!3941155 m!4509415))

(declare-fun m!4509799 () Bool)

(assert (=> b!3941155 m!4509799))

(assert (=> bm!285051 m!4509415))

(declare-fun m!4509801 () Bool)

(assert (=> bm!285051 m!4509801))

(assert (=> b!3941149 m!4509415))

(declare-fun m!4509803 () Bool)

(assert (=> b!3941149 m!4509803))

(assert (=> b!3941149 m!4509803))

(declare-fun m!4509805 () Bool)

(assert (=> b!3941149 m!4509805))

(assert (=> b!3941159 m!4509415))

(assert (=> b!3941159 m!4509799))

(assert (=> b!3941159 m!4509799))

(declare-fun m!4509807 () Bool)

(assert (=> b!3941159 m!4509807))

(assert (=> b!3941159 m!4509415))

(assert (=> b!3941159 m!4509803))

(assert (=> b!3941159 m!4509807))

(assert (=> b!3941159 m!4509803))

(declare-fun m!4509809 () Bool)

(assert (=> b!3941159 m!4509809))

(assert (=> b!3941153 m!4509415))

(assert (=> b!3941153 m!4509799))

(assert (=> b!3941160 m!4509415))

(assert (=> b!3941160 m!4509803))

(assert (=> b!3941160 m!4509803))

(assert (=> b!3941160 m!4509805))

(declare-fun m!4509811 () Bool)

(assert (=> b!3941150 m!4509811))

(assert (=> d!1168916 m!4509415))

(assert (=> d!1168916 m!4509801))

(declare-fun m!4509813 () Bool)

(assert (=> d!1168916 m!4509813))

(assert (=> b!3940764 d!1168916))

(assert (=> b!3940764 d!1168870))

(declare-fun d!1168918 () Bool)

(declare-fun list!15545 (Conc!12752) List!41975)

(assert (=> d!1168918 (= (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416)))) (list!15545 (c!684607 (charsOf!4359 (_1!23704 (get!13826 lt!1378416))))))))

(declare-fun bs!586637 () Bool)

(assert (= bs!586637 d!1168918))

(declare-fun m!4509815 () Bool)

(assert (=> bs!586637 m!4509815))

(assert (=> b!3940764 d!1168918))

(declare-fun d!1168920 () Bool)

(declare-fun lt!1378494 () BalanceConc!25098)

(assert (=> d!1168920 (= (list!15543 lt!1378494) (originalCharacters!7141 (_1!23704 (get!13826 lt!1378416))))))

(assert (=> d!1168920 (= lt!1378494 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416))))) (value!207054 (_1!23704 (get!13826 lt!1378416)))))))

(assert (=> d!1168920 (= (charsOf!4359 (_1!23704 (get!13826 lt!1378416))) lt!1378494)))

(declare-fun b_lambda!115247 () Bool)

(assert (=> (not b_lambda!115247) (not d!1168920)))

(declare-fun tb!236141 () Bool)

(declare-fun t!326853 () Bool)

(assert (=> (and b!3940589 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (toChars!8860 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326853) tb!236141))

(declare-fun b!3941161 () Bool)

(declare-fun e!2438635 () Bool)

(declare-fun tp!1199381 () Bool)

(assert (=> b!3941161 (= e!2438635 (and (inv!56059 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416))))) (value!207054 (_1!23704 (get!13826 lt!1378416)))))) tp!1199381))))

(declare-fun result!286078 () Bool)

(assert (=> tb!236141 (= result!286078 (and (inv!56060 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416))))) (value!207054 (_1!23704 (get!13826 lt!1378416))))) e!2438635))))

(assert (= tb!236141 b!3941161))

(declare-fun m!4509817 () Bool)

(assert (=> b!3941161 m!4509817))

(declare-fun m!4509819 () Bool)

(assert (=> tb!236141 m!4509819))

(assert (=> d!1168920 t!326853))

(declare-fun b_and!301139 () Bool)

(assert (= b_and!301101 (and (=> t!326853 result!286078) b_and!301139)))

(declare-fun t!326855 () Bool)

(declare-fun tb!236143 () Bool)

(assert (=> (and b!3940574 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (toChars!8860 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326855) tb!236143))

(declare-fun result!286080 () Bool)

(assert (= result!286080 result!286078))

(assert (=> d!1168920 t!326855))

(declare-fun b_and!301141 () Bool)

(assert (= b_and!301099 (and (=> t!326855 result!286080) b_and!301141)))

(declare-fun tb!236145 () Bool)

(declare-fun t!326857 () Bool)

(assert (=> (and b!3940576 (= (toChars!8860 (transformation!6541 (h!47273 rules!2768))) (toChars!8860 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326857) tb!236145))

(declare-fun result!286082 () Bool)

(assert (= result!286082 result!286078))

(assert (=> d!1168920 t!326857))

(declare-fun b_and!301143 () Bool)

(assert (= b_and!301097 (and (=> t!326857 result!286082) b_and!301143)))

(declare-fun t!326859 () Bool)

(declare-fun tb!236147 () Bool)

(assert (=> (and b!3940901 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) (toChars!8860 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326859) tb!236147))

(declare-fun result!286084 () Bool)

(assert (= result!286084 result!286078))

(assert (=> d!1168920 t!326859))

(declare-fun b_and!301145 () Bool)

(assert (= b_and!301109 (and (=> t!326859 result!286084) b_and!301145)))

(declare-fun t!326861 () Bool)

(declare-fun tb!236149 () Bool)

(assert (=> (and b!3940905 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) (toChars!8860 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326861) tb!236149))

(declare-fun result!286086 () Bool)

(assert (= result!286086 result!286078))

(assert (=> d!1168920 t!326861))

(declare-fun b_and!301147 () Bool)

(assert (= b_and!301113 (and (=> t!326861 result!286086) b_and!301147)))

(declare-fun t!326863 () Bool)

(declare-fun tb!236151 () Bool)

(assert (=> (and b!3940880 (= (toChars!8860 (transformation!6541 (h!47273 (t!326796 rules!2768)))) (toChars!8860 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326863) tb!236151))

(declare-fun result!286088 () Bool)

(assert (= result!286088 result!286078))

(assert (=> d!1168920 t!326863))

(declare-fun b_and!301149 () Bool)

(assert (= b_and!301105 (and (=> t!326863 result!286088) b_and!301149)))

(declare-fun m!4509821 () Bool)

(assert (=> d!1168920 m!4509821))

(declare-fun m!4509823 () Bool)

(assert (=> d!1168920 m!4509823))

(assert (=> b!3940764 d!1168920))

(declare-fun bs!586638 () Bool)

(declare-fun d!1168922 () Bool)

(assert (= bs!586638 (and d!1168922 d!1168898)))

(declare-fun lambda!126633 () Int)

(assert (=> bs!586638 (= (and (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))) (= (toValue!9001 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (toValue!9001 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))))) (= lambda!126633 lambda!126632))))

(assert (=> d!1168922 true))

(assert (=> d!1168922 (< (dynLambda!17919 order!22319 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))) (dynLambda!17920 order!22321 lambda!126633))))

(assert (=> d!1168922 true))

(assert (=> d!1168922 (< (dynLambda!17921 order!22323 (toValue!9001 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))) (dynLambda!17920 order!22321 lambda!126633))))

(assert (=> d!1168922 (= (semiInverseModEq!2814 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (toValue!9001 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))) (Forall!1451 lambda!126633))))

(declare-fun bs!586639 () Bool)

(assert (= bs!586639 d!1168922))

(declare-fun m!4509825 () Bool)

(assert (=> bs!586639 m!4509825))

(assert (=> d!1168796 d!1168922))

(assert (=> b!3940762 d!1168870))

(declare-fun d!1168924 () Bool)

(declare-fun dynLambda!17922 (Int BalanceConc!25098) TokenValue!6771)

(assert (=> d!1168924 (= (apply!9774 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))) (seqFromList!4802 (originalCharacters!7141 (_1!23704 (get!13826 lt!1378416))))) (dynLambda!17922 (toValue!9001 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416))))) (seqFromList!4802 (originalCharacters!7141 (_1!23704 (get!13826 lt!1378416))))))))

(declare-fun b_lambda!115249 () Bool)

(assert (=> (not b_lambda!115249) (not d!1168924)))

(declare-fun t!326865 () Bool)

(declare-fun tb!236153 () Bool)

(assert (=> (and b!3940901 (= (toValue!9001 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) (toValue!9001 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326865) tb!236153))

(declare-fun result!286090 () Bool)

(assert (=> tb!236153 (= result!286090 (inv!21 (dynLambda!17922 (toValue!9001 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416))))) (seqFromList!4802 (originalCharacters!7141 (_1!23704 (get!13826 lt!1378416)))))))))

(declare-fun m!4509827 () Bool)

(assert (=> tb!236153 m!4509827))

(assert (=> d!1168924 t!326865))

(declare-fun b_and!301151 () Bool)

(assert (= b_and!301107 (and (=> t!326865 result!286090) b_and!301151)))

(declare-fun t!326867 () Bool)

(declare-fun tb!236155 () Bool)

(assert (=> (and b!3940880 (= (toValue!9001 (transformation!6541 (h!47273 (t!326796 rules!2768)))) (toValue!9001 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326867) tb!236155))

(declare-fun result!286094 () Bool)

(assert (= result!286094 result!286090))

(assert (=> d!1168924 t!326867))

(declare-fun b_and!301153 () Bool)

(assert (= b_and!301103 (and (=> t!326867 result!286094) b_and!301153)))

(declare-fun tb!236157 () Bool)

(declare-fun t!326869 () Bool)

(assert (=> (and b!3940576 (= (toValue!9001 (transformation!6541 (h!47273 rules!2768))) (toValue!9001 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326869) tb!236157))

(declare-fun result!286096 () Bool)

(assert (= result!286096 result!286090))

(assert (=> d!1168924 t!326869))

(declare-fun b_and!301155 () Bool)

(assert (= b_and!301067 (and (=> t!326869 result!286096) b_and!301155)))

(declare-fun tb!236159 () Bool)

(declare-fun t!326871 () Bool)

(assert (=> (and b!3940589 (= (toValue!9001 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (toValue!9001 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326871) tb!236159))

(declare-fun result!286098 () Bool)

(assert (= result!286098 result!286090))

(assert (=> d!1168924 t!326871))

(declare-fun b_and!301157 () Bool)

(assert (= b_and!301075 (and (=> t!326871 result!286098) b_and!301157)))

(declare-fun t!326873 () Bool)

(declare-fun tb!236161 () Bool)

(assert (=> (and b!3940905 (= (toValue!9001 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) (toValue!9001 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326873) tb!236161))

(declare-fun result!286100 () Bool)

(assert (= result!286100 result!286090))

(assert (=> d!1168924 t!326873))

(declare-fun b_and!301159 () Bool)

(assert (= b_and!301111 (and (=> t!326873 result!286100) b_and!301159)))

(declare-fun t!326875 () Bool)

(declare-fun tb!236163 () Bool)

(assert (=> (and b!3940574 (= (toValue!9001 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (toValue!9001 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326875) tb!236163))

(declare-fun result!286102 () Bool)

(assert (= result!286102 result!286090))

(assert (=> d!1168924 t!326875))

(declare-fun b_and!301161 () Bool)

(assert (= b_and!301071 (and (=> t!326875 result!286102) b_and!301161)))

(assert (=> d!1168924 m!4509437))

(declare-fun m!4509829 () Bool)

(assert (=> d!1168924 m!4509829))

(assert (=> b!3940762 d!1168924))

(declare-fun d!1168926 () Bool)

(declare-fun fromListB!2221 (List!41975) BalanceConc!25098)

(assert (=> d!1168926 (= (seqFromList!4802 (originalCharacters!7141 (_1!23704 (get!13826 lt!1378416)))) (fromListB!2221 (originalCharacters!7141 (_1!23704 (get!13826 lt!1378416)))))))

(declare-fun bs!586640 () Bool)

(assert (= bs!586640 d!1168926))

(declare-fun m!4509831 () Bool)

(assert (=> bs!586640 m!4509831))

(assert (=> b!3940762 d!1168926))

(declare-fun d!1168928 () Bool)

(assert (=> d!1168928 (= (inv!15 (value!207054 (h!47274 prefixTokens!80))) (= (charsToBigInt!0 (text!47846 (value!207054 (h!47274 prefixTokens!80))) 0) (value!207049 (value!207054 (h!47274 prefixTokens!80)))))))

(declare-fun bs!586641 () Bool)

(assert (= bs!586641 d!1168928))

(declare-fun m!4509833 () Bool)

(assert (=> bs!586641 m!4509833))

(assert (=> b!3940805 d!1168928))

(declare-fun d!1168930 () Bool)

(declare-fun res!1594979 () Bool)

(declare-fun e!2438639 () Bool)

(assert (=> d!1168930 (=> (not res!1594979) (not e!2438639))))

(assert (=> d!1168930 (= res!1594979 (not (isEmpty!24969 (originalCharacters!7141 (h!47274 (t!326797 prefixTokens!80))))))))

(assert (=> d!1168930 (= (inv!56056 (h!47274 (t!326797 prefixTokens!80))) e!2438639)))

(declare-fun b!3941164 () Bool)

(declare-fun res!1594980 () Bool)

(assert (=> b!3941164 (=> (not res!1594980) (not e!2438639))))

(assert (=> b!3941164 (= res!1594980 (= (originalCharacters!7141 (h!47274 (t!326797 prefixTokens!80))) (list!15543 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) (value!207054 (h!47274 (t!326797 prefixTokens!80)))))))))

(declare-fun b!3941165 () Bool)

(assert (=> b!3941165 (= e!2438639 (= (size!31388 (h!47274 (t!326797 prefixTokens!80))) (size!31390 (originalCharacters!7141 (h!47274 (t!326797 prefixTokens!80))))))))

(assert (= (and d!1168930 res!1594979) b!3941164))

(assert (= (and b!3941164 res!1594980) b!3941165))

(declare-fun b_lambda!115251 () Bool)

(assert (=> (not b_lambda!115251) (not b!3941164)))

(declare-fun t!326877 () Bool)

(declare-fun tb!236165 () Bool)

(assert (=> (and b!3940905 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80)))))) t!326877) tb!236165))

(declare-fun b!3941166 () Bool)

(declare-fun e!2438640 () Bool)

(declare-fun tp!1199382 () Bool)

(assert (=> b!3941166 (= e!2438640 (and (inv!56059 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) (value!207054 (h!47274 (t!326797 prefixTokens!80)))))) tp!1199382))))

(declare-fun result!286104 () Bool)

(assert (=> tb!236165 (= result!286104 (and (inv!56060 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) (value!207054 (h!47274 (t!326797 prefixTokens!80))))) e!2438640))))

(assert (= tb!236165 b!3941166))

(declare-fun m!4509835 () Bool)

(assert (=> b!3941166 m!4509835))

(declare-fun m!4509837 () Bool)

(assert (=> tb!236165 m!4509837))

(assert (=> b!3941164 t!326877))

(declare-fun b_and!301163 () Bool)

(assert (= b_and!301147 (and (=> t!326877 result!286104) b_and!301163)))

(declare-fun t!326879 () Bool)

(declare-fun tb!236167 () Bool)

(assert (=> (and b!3940576 (= (toChars!8860 (transformation!6541 (h!47273 rules!2768))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80)))))) t!326879) tb!236167))

(declare-fun result!286106 () Bool)

(assert (= result!286106 result!286104))

(assert (=> b!3941164 t!326879))

(declare-fun b_and!301165 () Bool)

(assert (= b_and!301143 (and (=> t!326879 result!286106) b_and!301165)))

(declare-fun t!326881 () Bool)

(declare-fun tb!236169 () Bool)

(assert (=> (and b!3940574 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80)))))) t!326881) tb!236169))

(declare-fun result!286108 () Bool)

(assert (= result!286108 result!286104))

(assert (=> b!3941164 t!326881))

(declare-fun b_and!301167 () Bool)

(assert (= b_and!301141 (and (=> t!326881 result!286108) b_and!301167)))

(declare-fun t!326883 () Bool)

(declare-fun tb!236171 () Bool)

(assert (=> (and b!3940589 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80)))))) t!326883) tb!236171))

(declare-fun result!286110 () Bool)

(assert (= result!286110 result!286104))

(assert (=> b!3941164 t!326883))

(declare-fun b_and!301169 () Bool)

(assert (= b_and!301139 (and (=> t!326883 result!286110) b_and!301169)))

(declare-fun tb!236173 () Bool)

(declare-fun t!326885 () Bool)

(assert (=> (and b!3940880 (= (toChars!8860 (transformation!6541 (h!47273 (t!326796 rules!2768)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80)))))) t!326885) tb!236173))

(declare-fun result!286112 () Bool)

(assert (= result!286112 result!286104))

(assert (=> b!3941164 t!326885))

(declare-fun b_and!301171 () Bool)

(assert (= b_and!301149 (and (=> t!326885 result!286112) b_and!301171)))

(declare-fun t!326887 () Bool)

(declare-fun tb!236175 () Bool)

(assert (=> (and b!3940901 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80)))))) t!326887) tb!236175))

(declare-fun result!286114 () Bool)

(assert (= result!286114 result!286104))

(assert (=> b!3941164 t!326887))

(declare-fun b_and!301173 () Bool)

(assert (= b_and!301145 (and (=> t!326887 result!286114) b_and!301173)))

(declare-fun m!4509839 () Bool)

(assert (=> d!1168930 m!4509839))

(declare-fun m!4509841 () Bool)

(assert (=> b!3941164 m!4509841))

(assert (=> b!3941164 m!4509841))

(declare-fun m!4509843 () Bool)

(assert (=> b!3941164 m!4509843))

(declare-fun m!4509845 () Bool)

(assert (=> b!3941165 m!4509845))

(assert (=> b!3940902 d!1168930))

(declare-fun d!1168932 () Bool)

(declare-fun lt!1378495 () Int)

(assert (=> d!1168932 (>= lt!1378495 0)))

(declare-fun e!2438641 () Int)

(assert (=> d!1168932 (= lt!1378495 e!2438641)))

(declare-fun c!684700 () Bool)

(assert (=> d!1168932 (= c!684700 (is-Nil!41854 (_1!23703 lt!1378388)))))

(assert (=> d!1168932 (= (size!31391 (_1!23703 lt!1378388)) lt!1378495)))

(declare-fun b!3941167 () Bool)

(assert (=> b!3941167 (= e!2438641 0)))

(declare-fun b!3941168 () Bool)

(assert (=> b!3941168 (= e!2438641 (+ 1 (size!31391 (t!326797 (_1!23703 lt!1378388)))))))

(assert (= (and d!1168932 c!684700) b!3941167))

(assert (= (and d!1168932 (not c!684700)) b!3941168))

(declare-fun m!4509847 () Bool)

(assert (=> b!3941168 m!4509847))

(assert (=> d!1168798 d!1168932))

(declare-fun b!3941169 () Bool)

(declare-fun res!1594987 () Bool)

(declare-fun e!2438643 () Bool)

(assert (=> b!3941169 (=> (not res!1594987) (not e!2438643))))

(declare-fun lt!1378497 () Option!8961)

(assert (=> b!3941169 (= res!1594987 (= (++!10840 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378497)))) (_2!23704 (get!13826 lt!1378497))) suffix!1176))))

(declare-fun b!3941170 () Bool)

(declare-fun res!1594985 () Bool)

(assert (=> b!3941170 (=> (not res!1594985) (not e!2438643))))

(assert (=> b!3941170 (= res!1594985 (= (value!207054 (_1!23704 (get!13826 lt!1378497))) (apply!9774 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378497)))) (seqFromList!4802 (originalCharacters!7141 (_1!23704 (get!13826 lt!1378497)))))))))

(declare-fun b!3941171 () Bool)

(declare-fun e!2438642 () Option!8961)

(declare-fun call!285057 () Option!8961)

(assert (=> b!3941171 (= e!2438642 call!285057)))

(declare-fun b!3941172 () Bool)

(declare-fun res!1594982 () Bool)

(assert (=> b!3941172 (=> (not res!1594982) (not e!2438643))))

(assert (=> b!3941172 (= res!1594982 (matchR!5493 (regex!6541 (rule!9499 (_1!23704 (get!13826 lt!1378497)))) (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378497))))))))

(declare-fun d!1168934 () Bool)

(declare-fun e!2438644 () Bool)

(assert (=> d!1168934 e!2438644))

(declare-fun res!1594981 () Bool)

(assert (=> d!1168934 (=> res!1594981 e!2438644)))

(assert (=> d!1168934 (= res!1594981 (isEmpty!24973 lt!1378497))))

(assert (=> d!1168934 (= lt!1378497 e!2438642)))

(declare-fun c!684701 () Bool)

(assert (=> d!1168934 (= c!684701 (and (is-Cons!41853 rules!2768) (is-Nil!41853 (t!326796 rules!2768))))))

(declare-fun lt!1378498 () Unit!60401)

(declare-fun lt!1378499 () Unit!60401)

(assert (=> d!1168934 (= lt!1378498 lt!1378499)))

(assert (=> d!1168934 (isPrefix!3630 suffix!1176 suffix!1176)))

(assert (=> d!1168934 (= lt!1378499 (lemmaIsPrefixRefl!2291 suffix!1176 suffix!1176))))

(assert (=> d!1168934 (rulesValidInductive!2361 thiss!20629 rules!2768)))

(assert (=> d!1168934 (= (maxPrefix!3434 thiss!20629 rules!2768 suffix!1176) lt!1378497)))

(declare-fun b!3941173 () Bool)

(declare-fun res!1594983 () Bool)

(assert (=> b!3941173 (=> (not res!1594983) (not e!2438643))))

(assert (=> b!3941173 (= res!1594983 (= (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378497)))) (originalCharacters!7141 (_1!23704 (get!13826 lt!1378497)))))))

(declare-fun b!3941174 () Bool)

(assert (=> b!3941174 (= e!2438643 (contains!8378 rules!2768 (rule!9499 (_1!23704 (get!13826 lt!1378497)))))))

(declare-fun b!3941175 () Bool)

(assert (=> b!3941175 (= e!2438644 e!2438643)))

(declare-fun res!1594986 () Bool)

(assert (=> b!3941175 (=> (not res!1594986) (not e!2438643))))

(assert (=> b!3941175 (= res!1594986 (isDefined!6960 lt!1378497))))

(declare-fun bm!285052 () Bool)

(assert (=> bm!285052 (= call!285057 (maxPrefixOneRule!2498 thiss!20629 (h!47273 rules!2768) suffix!1176))))

(declare-fun b!3941176 () Bool)

(declare-fun res!1594984 () Bool)

(assert (=> b!3941176 (=> (not res!1594984) (not e!2438643))))

(assert (=> b!3941176 (= res!1594984 (< (size!31390 (_2!23704 (get!13826 lt!1378497))) (size!31390 suffix!1176)))))

(declare-fun b!3941177 () Bool)

(declare-fun lt!1378496 () Option!8961)

(declare-fun lt!1378500 () Option!8961)

(assert (=> b!3941177 (= e!2438642 (ite (and (is-None!8960 lt!1378496) (is-None!8960 lt!1378500)) None!8960 (ite (is-None!8960 lt!1378500) lt!1378496 (ite (is-None!8960 lt!1378496) lt!1378500 (ite (>= (size!31388 (_1!23704 (v!39290 lt!1378496))) (size!31388 (_1!23704 (v!39290 lt!1378500)))) lt!1378496 lt!1378500)))))))

(assert (=> b!3941177 (= lt!1378496 call!285057)))

(assert (=> b!3941177 (= lt!1378500 (maxPrefix!3434 thiss!20629 (t!326796 rules!2768) suffix!1176))))

(assert (= (and d!1168934 c!684701) b!3941171))

(assert (= (and d!1168934 (not c!684701)) b!3941177))

(assert (= (or b!3941171 b!3941177) bm!285052))

(assert (= (and d!1168934 (not res!1594981)) b!3941175))

(assert (= (and b!3941175 res!1594986) b!3941173))

(assert (= (and b!3941173 res!1594983) b!3941176))

(assert (= (and b!3941176 res!1594984) b!3941169))

(assert (= (and b!3941169 res!1594987) b!3941170))

(assert (= (and b!3941170 res!1594985) b!3941172))

(assert (= (and b!3941172 res!1594982) b!3941174))

(declare-fun m!4509849 () Bool)

(assert (=> b!3941169 m!4509849))

(declare-fun m!4509851 () Bool)

(assert (=> b!3941169 m!4509851))

(assert (=> b!3941169 m!4509851))

(declare-fun m!4509853 () Bool)

(assert (=> b!3941169 m!4509853))

(assert (=> b!3941169 m!4509853))

(declare-fun m!4509855 () Bool)

(assert (=> b!3941169 m!4509855))

(assert (=> b!3941172 m!4509849))

(assert (=> b!3941172 m!4509851))

(assert (=> b!3941172 m!4509851))

(assert (=> b!3941172 m!4509853))

(assert (=> b!3941172 m!4509853))

(declare-fun m!4509857 () Bool)

(assert (=> b!3941172 m!4509857))

(declare-fun m!4509859 () Bool)

(assert (=> d!1168934 m!4509859))

(declare-fun m!4509861 () Bool)

(assert (=> d!1168934 m!4509861))

(declare-fun m!4509863 () Bool)

(assert (=> d!1168934 m!4509863))

(assert (=> d!1168934 m!4509427))

(declare-fun m!4509865 () Bool)

(assert (=> b!3941177 m!4509865))

(declare-fun m!4509867 () Bool)

(assert (=> bm!285052 m!4509867))

(assert (=> b!3941176 m!4509849))

(declare-fun m!4509869 () Bool)

(assert (=> b!3941176 m!4509869))

(assert (=> b!3941176 m!4509355))

(assert (=> b!3941170 m!4509849))

(declare-fun m!4509871 () Bool)

(assert (=> b!3941170 m!4509871))

(assert (=> b!3941170 m!4509871))

(declare-fun m!4509873 () Bool)

(assert (=> b!3941170 m!4509873))

(declare-fun m!4509875 () Bool)

(assert (=> b!3941175 m!4509875))

(assert (=> b!3941173 m!4509849))

(assert (=> b!3941173 m!4509851))

(assert (=> b!3941173 m!4509851))

(assert (=> b!3941173 m!4509853))

(assert (=> b!3941174 m!4509849))

(declare-fun m!4509877 () Bool)

(assert (=> b!3941174 m!4509877))

(assert (=> d!1168798 d!1168934))

(declare-fun d!1168936 () Bool)

(declare-fun lt!1378501 () Int)

(assert (=> d!1168936 (>= lt!1378501 0)))

(declare-fun e!2438645 () Int)

(assert (=> d!1168936 (= lt!1378501 e!2438645)))

(declare-fun c!684702 () Bool)

(assert (=> d!1168936 (= c!684702 (is-Nil!41851 (_2!23704 (get!13826 lt!1378416))))))

(assert (=> d!1168936 (= (size!31390 (_2!23704 (get!13826 lt!1378416))) lt!1378501)))

(declare-fun b!3941178 () Bool)

(assert (=> b!3941178 (= e!2438645 0)))

(declare-fun b!3941179 () Bool)

(assert (=> b!3941179 (= e!2438645 (+ 1 (size!31390 (t!326794 (_2!23704 (get!13826 lt!1378416))))))))

(assert (= (and d!1168936 c!684702) b!3941178))

(assert (= (and d!1168936 (not c!684702)) b!3941179))

(declare-fun m!4509879 () Bool)

(assert (=> b!3941179 m!4509879))

(assert (=> b!3940768 d!1168936))

(assert (=> b!3940768 d!1168870))

(assert (=> b!3940768 d!1168914))

(declare-fun d!1168938 () Bool)

(assert (=> d!1168938 (= (list!15543 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80)))) (list!15545 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80))))))))

(declare-fun bs!586642 () Bool)

(assert (= bs!586642 d!1168938))

(declare-fun m!4509881 () Bool)

(assert (=> bs!586642 m!4509881))

(assert (=> b!3940781 d!1168938))

(declare-fun d!1168940 () Bool)

(declare-fun lt!1378502 () Int)

(assert (=> d!1168940 (>= lt!1378502 0)))

(declare-fun e!2438646 () Int)

(assert (=> d!1168940 (= lt!1378502 e!2438646)))

(declare-fun c!684703 () Bool)

(assert (=> d!1168940 (= c!684703 (is-Nil!41854 lt!1378430))))

(assert (=> d!1168940 (= (size!31391 lt!1378430) lt!1378502)))

(declare-fun b!3941180 () Bool)

(assert (=> b!3941180 (= e!2438646 0)))

(declare-fun b!3941181 () Bool)

(assert (=> b!3941181 (= e!2438646 (+ 1 (size!31391 (t!326797 lt!1378430))))))

(assert (= (and d!1168940 c!684703) b!3941180))

(assert (= (and d!1168940 (not c!684703)) b!3941181))

(declare-fun m!4509883 () Bool)

(assert (=> b!3941181 m!4509883))

(assert (=> b!3940831 d!1168940))

(declare-fun d!1168942 () Bool)

(declare-fun lt!1378503 () Int)

(assert (=> d!1168942 (>= lt!1378503 0)))

(declare-fun e!2438647 () Int)

(assert (=> d!1168942 (= lt!1378503 e!2438647)))

(declare-fun c!684704 () Bool)

(assert (=> d!1168942 (= c!684704 (is-Nil!41854 prefixTokens!80))))

(assert (=> d!1168942 (= (size!31391 prefixTokens!80) lt!1378503)))

(declare-fun b!3941182 () Bool)

(assert (=> b!3941182 (= e!2438647 0)))

(declare-fun b!3941183 () Bool)

(assert (=> b!3941183 (= e!2438647 (+ 1 (size!31391 (t!326797 prefixTokens!80))))))

(assert (= (and d!1168942 c!684704) b!3941182))

(assert (= (and d!1168942 (not c!684704)) b!3941183))

(assert (=> b!3941183 m!4509675))

(assert (=> b!3940831 d!1168942))

(declare-fun d!1168944 () Bool)

(declare-fun lt!1378504 () Int)

(assert (=> d!1168944 (>= lt!1378504 0)))

(declare-fun e!2438648 () Int)

(assert (=> d!1168944 (= lt!1378504 e!2438648)))

(declare-fun c!684705 () Bool)

(assert (=> d!1168944 (= c!684705 (is-Nil!41854 suffixTokens!72))))

(assert (=> d!1168944 (= (size!31391 suffixTokens!72) lt!1378504)))

(declare-fun b!3941184 () Bool)

(assert (=> b!3941184 (= e!2438648 0)))

(declare-fun b!3941185 () Bool)

(assert (=> b!3941185 (= e!2438648 (+ 1 (size!31391 (t!326797 suffixTokens!72))))))

(assert (= (and d!1168944 c!684705) b!3941184))

(assert (= (and d!1168944 (not c!684705)) b!3941185))

(declare-fun m!4509885 () Bool)

(assert (=> b!3941185 m!4509885))

(assert (=> b!3940831 d!1168944))

(declare-fun d!1168946 () Bool)

(assert (=> d!1168946 (= (isEmpty!24969 (originalCharacters!7141 (h!47274 suffixTokens!72))) (is-Nil!41851 (originalCharacters!7141 (h!47274 suffixTokens!72))))))

(assert (=> d!1168800 d!1168946))

(declare-fun d!1168948 () Bool)

(declare-fun charsToBigInt!1 (List!41976) Int)

(assert (=> d!1168948 (= (inv!17 (value!207054 (h!47274 suffixTokens!72))) (= (charsToBigInt!1 (text!47845 (value!207054 (h!47274 suffixTokens!72)))) (value!207046 (value!207054 (h!47274 suffixTokens!72)))))))

(declare-fun bs!586643 () Bool)

(assert (= bs!586643 d!1168948))

(declare-fun m!4509887 () Bool)

(assert (=> bs!586643 m!4509887))

(assert (=> b!3940801 d!1168948))

(declare-fun d!1168950 () Bool)

(assert (=> d!1168950 true))

(declare-fun lt!1378507 () Bool)

(assert (=> d!1168950 (= lt!1378507 (rulesValidInductive!2361 thiss!20629 rules!2768))))

(declare-fun lambda!126636 () Int)

(declare-fun forall!8316 (List!41977 Int) Bool)

(assert (=> d!1168950 (= lt!1378507 (forall!8316 rules!2768 lambda!126636))))

(assert (=> d!1168950 (= (rulesValid!2548 thiss!20629 rules!2768) lt!1378507)))

(declare-fun bs!586644 () Bool)

(assert (= bs!586644 d!1168950))

(assert (=> bs!586644 m!4509427))

(declare-fun m!4509889 () Bool)

(assert (=> bs!586644 m!4509889))

(assert (=> d!1168820 d!1168950))

(declare-fun d!1168952 () Bool)

(assert (=> d!1168952 (= (isDefined!6960 lt!1378416) (not (isEmpty!24973 lt!1378416)))))

(declare-fun bs!586645 () Bool)

(assert (= bs!586645 d!1168952))

(assert (=> bs!586645 m!4509421))

(assert (=> b!3940767 d!1168952))

(declare-fun lt!1378508 () List!41975)

(declare-fun b!3941191 () Bool)

(declare-fun e!2438649 () Bool)

(assert (=> b!3941191 (= e!2438649 (or (not (= suffix!1176 Nil!41851)) (= lt!1378508 (t!326794 prefix!426))))))

(declare-fun b!3941190 () Bool)

(declare-fun res!1594988 () Bool)

(assert (=> b!3941190 (=> (not res!1594988) (not e!2438649))))

(assert (=> b!3941190 (= res!1594988 (= (size!31390 lt!1378508) (+ (size!31390 (t!326794 prefix!426)) (size!31390 suffix!1176))))))

(declare-fun b!3941189 () Bool)

(declare-fun e!2438650 () List!41975)

(assert (=> b!3941189 (= e!2438650 (Cons!41851 (h!47271 (t!326794 prefix!426)) (++!10840 (t!326794 (t!326794 prefix!426)) suffix!1176)))))

(declare-fun d!1168954 () Bool)

(assert (=> d!1168954 e!2438649))

(declare-fun res!1594989 () Bool)

(assert (=> d!1168954 (=> (not res!1594989) (not e!2438649))))

(assert (=> d!1168954 (= res!1594989 (= (content!6318 lt!1378508) (set.union (content!6318 (t!326794 prefix!426)) (content!6318 suffix!1176))))))

(assert (=> d!1168954 (= lt!1378508 e!2438650)))

(declare-fun c!684706 () Bool)

(assert (=> d!1168954 (= c!684706 (is-Nil!41851 (t!326794 prefix!426)))))

(assert (=> d!1168954 (= (++!10840 (t!326794 prefix!426) suffix!1176) lt!1378508)))

(declare-fun b!3941188 () Bool)

(assert (=> b!3941188 (= e!2438650 suffix!1176)))

(assert (= (and d!1168954 c!684706) b!3941188))

(assert (= (and d!1168954 (not c!684706)) b!3941189))

(assert (= (and d!1168954 res!1594989) b!3941190))

(assert (= (and b!3941190 res!1594988) b!3941191))

(declare-fun m!4509891 () Bool)

(assert (=> b!3941190 m!4509891))

(assert (=> b!3941190 m!4509757))

(assert (=> b!3941190 m!4509355))

(declare-fun m!4509893 () Bool)

(assert (=> b!3941189 m!4509893))

(declare-fun m!4509895 () Bool)

(assert (=> d!1168954 m!4509895))

(declare-fun m!4509897 () Bool)

(assert (=> d!1168954 m!4509897))

(assert (=> d!1168954 m!4509531))

(assert (=> b!3940846 d!1168954))

(declare-fun d!1168956 () Bool)

(declare-fun c!684709 () Bool)

(assert (=> d!1168956 (= c!684709 (is-Nil!41854 lt!1378430))))

(declare-fun e!2438653 () (Set Token!12220))

(assert (=> d!1168956 (= (content!6317 lt!1378430) e!2438653)))

(declare-fun b!3941196 () Bool)

(assert (=> b!3941196 (= e!2438653 (as set.empty (Set Token!12220)))))

(declare-fun b!3941197 () Bool)

(assert (=> b!3941197 (= e!2438653 (set.union (set.insert (h!47274 lt!1378430) (as set.empty (Set Token!12220))) (content!6317 (t!326797 lt!1378430))))))

(assert (= (and d!1168956 c!684709) b!3941196))

(assert (= (and d!1168956 (not c!684709)) b!3941197))

(declare-fun m!4509899 () Bool)

(assert (=> b!3941197 m!4509899))

(declare-fun m!4509901 () Bool)

(assert (=> b!3941197 m!4509901))

(assert (=> d!1168832 d!1168956))

(declare-fun d!1168958 () Bool)

(declare-fun c!684710 () Bool)

(assert (=> d!1168958 (= c!684710 (is-Nil!41854 prefixTokens!80))))

(declare-fun e!2438654 () (Set Token!12220))

(assert (=> d!1168958 (= (content!6317 prefixTokens!80) e!2438654)))

(declare-fun b!3941198 () Bool)

(assert (=> b!3941198 (= e!2438654 (as set.empty (Set Token!12220)))))

(declare-fun b!3941199 () Bool)

(assert (=> b!3941199 (= e!2438654 (set.union (set.insert (h!47274 prefixTokens!80) (as set.empty (Set Token!12220))) (content!6317 (t!326797 prefixTokens!80))))))

(assert (= (and d!1168958 c!684710) b!3941198))

(assert (= (and d!1168958 (not c!684710)) b!3941199))

(declare-fun m!4509903 () Bool)

(assert (=> b!3941199 m!4509903))

(assert (=> b!3941199 m!4509679))

(assert (=> d!1168832 d!1168958))

(declare-fun d!1168960 () Bool)

(declare-fun c!684711 () Bool)

(assert (=> d!1168960 (= c!684711 (is-Nil!41854 suffixTokens!72))))

(declare-fun e!2438655 () (Set Token!12220))

(assert (=> d!1168960 (= (content!6317 suffixTokens!72) e!2438655)))

(declare-fun b!3941200 () Bool)

(assert (=> b!3941200 (= e!2438655 (as set.empty (Set Token!12220)))))

(declare-fun b!3941201 () Bool)

(assert (=> b!3941201 (= e!2438655 (set.union (set.insert (h!47274 suffixTokens!72) (as set.empty (Set Token!12220))) (content!6317 (t!326797 suffixTokens!72))))))

(assert (= (and d!1168960 c!684711) b!3941200))

(assert (= (and d!1168960 (not c!684711)) b!3941201))

(declare-fun m!4509905 () Bool)

(assert (=> b!3941201 m!4509905))

(declare-fun m!4509907 () Bool)

(assert (=> b!3941201 m!4509907))

(assert (=> d!1168832 d!1168960))

(declare-fun d!1168962 () Bool)

(declare-fun lt!1378509 () Int)

(assert (=> d!1168962 (>= lt!1378509 0)))

(declare-fun e!2438656 () Int)

(assert (=> d!1168962 (= lt!1378509 e!2438656)))

(declare-fun c!684712 () Bool)

(assert (=> d!1168962 (= c!684712 (is-Nil!41851 (_2!23703 lt!1378388)))))

(assert (=> d!1168962 (= (size!31390 (_2!23703 lt!1378388)) lt!1378509)))

(declare-fun b!3941202 () Bool)

(assert (=> b!3941202 (= e!2438656 0)))

(declare-fun b!3941203 () Bool)

(assert (=> b!3941203 (= e!2438656 (+ 1 (size!31390 (t!326794 (_2!23703 lt!1378388)))))))

(assert (= (and d!1168962 c!684712) b!3941202))

(assert (= (and d!1168962 (not c!684712)) b!3941203))

(declare-fun m!4509909 () Bool)

(assert (=> b!3941203 m!4509909))

(assert (=> b!3940698 d!1168962))

(assert (=> b!3940698 d!1168882))

(declare-fun d!1168964 () Bool)

(assert (=> d!1168964 true))

(declare-fun lambda!126639 () Int)

(declare-fun order!22325 () Int)

(declare-fun dynLambda!17923 (Int Int) Int)

(assert (=> d!1168964 (< (dynLambda!17921 order!22323 (toValue!9001 (transformation!6541 (h!47273 rules!2768)))) (dynLambda!17923 order!22325 lambda!126639))))

(declare-fun Forall2!1050 (Int) Bool)

(assert (=> d!1168964 (= (equivClasses!2713 (toChars!8860 (transformation!6541 (h!47273 rules!2768))) (toValue!9001 (transformation!6541 (h!47273 rules!2768)))) (Forall2!1050 lambda!126639))))

(declare-fun bs!586646 () Bool)

(assert (= bs!586646 d!1168964))

(declare-fun m!4509911 () Bool)

(assert (=> bs!586646 m!4509911))

(assert (=> b!3940676 d!1168964))

(declare-fun bs!586647 () Bool)

(declare-fun d!1168966 () Bool)

(assert (= bs!586647 (and d!1168966 d!1168898)))

(declare-fun lambda!126640 () Int)

(assert (=> bs!586647 (= (and (= (toChars!8860 (transformation!6541 (h!47273 rules!2768))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))) (= (toValue!9001 (transformation!6541 (h!47273 rules!2768))) (toValue!9001 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))))) (= lambda!126640 lambda!126632))))

(declare-fun bs!586648 () Bool)

(assert (= bs!586648 (and d!1168966 d!1168922)))

(assert (=> bs!586648 (= (and (= (toChars!8860 (transformation!6541 (h!47273 rules!2768))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))) (= (toValue!9001 (transformation!6541 (h!47273 rules!2768))) (toValue!9001 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))))) (= lambda!126640 lambda!126633))))

(assert (=> d!1168966 true))

(assert (=> d!1168966 (< (dynLambda!17919 order!22319 (toChars!8860 (transformation!6541 (h!47273 rules!2768)))) (dynLambda!17920 order!22321 lambda!126640))))

(assert (=> d!1168966 true))

(assert (=> d!1168966 (< (dynLambda!17921 order!22323 (toValue!9001 (transformation!6541 (h!47273 rules!2768)))) (dynLambda!17920 order!22321 lambda!126640))))

(assert (=> d!1168966 (= (semiInverseModEq!2814 (toChars!8860 (transformation!6541 (h!47273 rules!2768))) (toValue!9001 (transformation!6541 (h!47273 rules!2768)))) (Forall!1451 lambda!126640))))

(declare-fun bs!586649 () Bool)

(assert (= bs!586649 d!1168966))

(declare-fun m!4509913 () Bool)

(assert (=> bs!586649 m!4509913))

(assert (=> d!1168780 d!1168966))

(declare-fun d!1168970 () Bool)

(assert (=> d!1168970 (= (isEmpty!24973 lt!1378416) (not (is-Some!8960 lt!1378416)))))

(assert (=> d!1168802 d!1168970))

(declare-fun b!3941226 () Bool)

(declare-fun e!2438669 () Bool)

(assert (=> b!3941226 (= e!2438669 (isPrefix!3630 (tail!6100 lt!1378368) (tail!6100 lt!1378368)))))

(declare-fun b!3941227 () Bool)

(declare-fun e!2438670 () Bool)

(assert (=> b!3941227 (= e!2438670 (>= (size!31390 lt!1378368) (size!31390 lt!1378368)))))

(declare-fun b!3941224 () Bool)

(declare-fun e!2438671 () Bool)

(assert (=> b!3941224 (= e!2438671 e!2438669)))

(declare-fun res!1595001 () Bool)

(assert (=> b!3941224 (=> (not res!1595001) (not e!2438669))))

(assert (=> b!3941224 (= res!1595001 (not (is-Nil!41851 lt!1378368)))))

(declare-fun b!3941225 () Bool)

(declare-fun res!1595000 () Bool)

(assert (=> b!3941225 (=> (not res!1595000) (not e!2438669))))

(assert (=> b!3941225 (= res!1595000 (= (head!8374 lt!1378368) (head!8374 lt!1378368)))))

(declare-fun d!1168972 () Bool)

(assert (=> d!1168972 e!2438670))

(declare-fun res!1595003 () Bool)

(assert (=> d!1168972 (=> res!1595003 e!2438670)))

(declare-fun lt!1378516 () Bool)

(assert (=> d!1168972 (= res!1595003 (not lt!1378516))))

(assert (=> d!1168972 (= lt!1378516 e!2438671)))

(declare-fun res!1595002 () Bool)

(assert (=> d!1168972 (=> res!1595002 e!2438671)))

(assert (=> d!1168972 (= res!1595002 (is-Nil!41851 lt!1378368))))

(assert (=> d!1168972 (= (isPrefix!3630 lt!1378368 lt!1378368) lt!1378516)))

(assert (= (and d!1168972 (not res!1595002)) b!3941224))

(assert (= (and b!3941224 res!1595001) b!3941225))

(assert (= (and b!3941225 res!1595000) b!3941226))

(assert (= (and d!1168972 (not res!1595003)) b!3941227))

(declare-fun m!4509921 () Bool)

(assert (=> b!3941226 m!4509921))

(assert (=> b!3941226 m!4509921))

(assert (=> b!3941226 m!4509921))

(assert (=> b!3941226 m!4509921))

(declare-fun m!4509923 () Bool)

(assert (=> b!3941226 m!4509923))

(assert (=> b!3941227 m!4509435))

(assert (=> b!3941227 m!4509435))

(declare-fun m!4509925 () Bool)

(assert (=> b!3941225 m!4509925))

(assert (=> b!3941225 m!4509925))

(assert (=> d!1168802 d!1168972))

(declare-fun d!1168982 () Bool)

(assert (=> d!1168982 (isPrefix!3630 lt!1378368 lt!1378368)))

(declare-fun lt!1378519 () Unit!60401)

(declare-fun choose!23524 (List!41975 List!41975) Unit!60401)

(assert (=> d!1168982 (= lt!1378519 (choose!23524 lt!1378368 lt!1378368))))

(assert (=> d!1168982 (= (lemmaIsPrefixRefl!2291 lt!1378368 lt!1378368) lt!1378519)))

(declare-fun bs!586651 () Bool)

(assert (= bs!586651 d!1168982))

(assert (=> bs!586651 m!4509423))

(declare-fun m!4509927 () Bool)

(assert (=> bs!586651 m!4509927))

(assert (=> d!1168802 d!1168982))

(declare-fun bs!586652 () Bool)

(declare-fun d!1168984 () Bool)

(assert (= bs!586652 (and d!1168984 d!1168950)))

(declare-fun lambda!126643 () Int)

(assert (=> bs!586652 (= lambda!126643 lambda!126636)))

(assert (=> d!1168984 true))

(declare-fun lt!1378522 () Bool)

(assert (=> d!1168984 (= lt!1378522 (forall!8316 rules!2768 lambda!126643))))

(declare-fun e!2438683 () Bool)

(assert (=> d!1168984 (= lt!1378522 e!2438683)))

(declare-fun res!1595015 () Bool)

(assert (=> d!1168984 (=> res!1595015 e!2438683)))

(assert (=> d!1168984 (= res!1595015 (not (is-Cons!41853 rules!2768)))))

(assert (=> d!1168984 (= (rulesValidInductive!2361 thiss!20629 rules!2768) lt!1378522)))

(declare-fun b!3941238 () Bool)

(declare-fun e!2438682 () Bool)

(assert (=> b!3941238 (= e!2438683 e!2438682)))

(declare-fun res!1595014 () Bool)

(assert (=> b!3941238 (=> (not res!1595014) (not e!2438682))))

(assert (=> b!3941238 (= res!1595014 (ruleValid!2483 thiss!20629 (h!47273 rules!2768)))))

(declare-fun b!3941239 () Bool)

(assert (=> b!3941239 (= e!2438682 (rulesValidInductive!2361 thiss!20629 (t!326796 rules!2768)))))

(assert (= (and d!1168984 (not res!1595015)) b!3941238))

(assert (= (and b!3941238 res!1595014) b!3941239))

(declare-fun m!4509933 () Bool)

(assert (=> d!1168984 m!4509933))

(assert (=> b!3941238 m!4509721))

(assert (=> b!3941239 m!4509653))

(assert (=> d!1168802 d!1168984))

(declare-fun d!1168988 () Bool)

(declare-fun res!1595020 () Bool)

(declare-fun e!2438688 () Bool)

(assert (=> d!1168988 (=> res!1595020 e!2438688)))

(assert (=> d!1168988 (= res!1595020 (is-Nil!41853 rules!2768))))

(assert (=> d!1168988 (= (noDuplicateTag!2549 thiss!20629 rules!2768 Nil!41859) e!2438688)))

(declare-fun b!3941244 () Bool)

(declare-fun e!2438689 () Bool)

(assert (=> b!3941244 (= e!2438688 e!2438689)))

(declare-fun res!1595021 () Bool)

(assert (=> b!3941244 (=> (not res!1595021) (not e!2438689))))

(declare-fun contains!8380 (List!41983 String!47575) Bool)

(assert (=> b!3941244 (= res!1595021 (not (contains!8380 Nil!41859 (tag!7401 (h!47273 rules!2768)))))))

(declare-fun b!3941245 () Bool)

(assert (=> b!3941245 (= e!2438689 (noDuplicateTag!2549 thiss!20629 (t!326796 rules!2768) (Cons!41859 (tag!7401 (h!47273 rules!2768)) Nil!41859)))))

(assert (= (and d!1168988 (not res!1595020)) b!3941244))

(assert (= (and b!3941244 res!1595021) b!3941245))

(declare-fun m!4509935 () Bool)

(assert (=> b!3941244 m!4509935))

(declare-fun m!4509937 () Bool)

(assert (=> b!3941245 m!4509937))

(assert (=> b!3940780 d!1168988))

(declare-fun d!1168990 () Bool)

(assert (=> d!1168990 (= (inv!56052 (tag!7401 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) (= (mod (str.len (value!207053 (tag!7401 (rule!9499 (h!47274 (t!326797 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3940900 d!1168990))

(declare-fun d!1168992 () Bool)

(declare-fun res!1595022 () Bool)

(declare-fun e!2438690 () Bool)

(assert (=> d!1168992 (=> (not res!1595022) (not e!2438690))))

(assert (=> d!1168992 (= res!1595022 (semiInverseModEq!2814 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) (toValue!9001 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72)))))))))

(assert (=> d!1168992 (= (inv!56055 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) e!2438690)))

(declare-fun b!3941246 () Bool)

(assert (=> b!3941246 (= e!2438690 (equivClasses!2713 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) (toValue!9001 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72)))))))))

(assert (= (and d!1168992 res!1595022) b!3941246))

(declare-fun m!4509939 () Bool)

(assert (=> d!1168992 m!4509939))

(declare-fun m!4509941 () Bool)

(assert (=> b!3941246 m!4509941))

(assert (=> b!3940900 d!1168992))

(declare-fun d!1168994 () Bool)

(declare-fun res!1595023 () Bool)

(declare-fun e!2438691 () Bool)

(assert (=> d!1168994 (=> (not res!1595023) (not e!2438691))))

(assert (=> d!1168994 (= res!1595023 (not (isEmpty!24969 (originalCharacters!7141 (h!47274 (t!326797 suffixTokens!72))))))))

(assert (=> d!1168994 (= (inv!56056 (h!47274 (t!326797 suffixTokens!72))) e!2438691)))

(declare-fun b!3941247 () Bool)

(declare-fun res!1595024 () Bool)

(assert (=> b!3941247 (=> (not res!1595024) (not e!2438691))))

(assert (=> b!3941247 (= res!1595024 (= (originalCharacters!7141 (h!47274 (t!326797 suffixTokens!72))) (list!15543 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) (value!207054 (h!47274 (t!326797 suffixTokens!72)))))))))

(declare-fun b!3941248 () Bool)

(assert (=> b!3941248 (= e!2438691 (= (size!31388 (h!47274 (t!326797 suffixTokens!72))) (size!31390 (originalCharacters!7141 (h!47274 (t!326797 suffixTokens!72))))))))

(assert (= (and d!1168994 res!1595023) b!3941247))

(assert (= (and b!3941247 res!1595024) b!3941248))

(declare-fun b_lambda!115253 () Bool)

(assert (=> (not b_lambda!115253) (not b!3941247)))

(declare-fun t!326889 () Bool)

(declare-fun tb!236177 () Bool)

(assert (=> (and b!3940574 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72)))))) t!326889) tb!236177))

(declare-fun b!3941249 () Bool)

(declare-fun e!2438692 () Bool)

(declare-fun tp!1199383 () Bool)

(assert (=> b!3941249 (= e!2438692 (and (inv!56059 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) (value!207054 (h!47274 (t!326797 suffixTokens!72)))))) tp!1199383))))

(declare-fun result!286116 () Bool)

(assert (=> tb!236177 (= result!286116 (and (inv!56060 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) (value!207054 (h!47274 (t!326797 suffixTokens!72))))) e!2438692))))

(assert (= tb!236177 b!3941249))

(declare-fun m!4509943 () Bool)

(assert (=> b!3941249 m!4509943))

(declare-fun m!4509945 () Bool)

(assert (=> tb!236177 m!4509945))

(assert (=> b!3941247 t!326889))

(declare-fun b_and!301175 () Bool)

(assert (= b_and!301167 (and (=> t!326889 result!286116) b_and!301175)))

(declare-fun t!326891 () Bool)

(declare-fun tb!236179 () Bool)

(assert (=> (and b!3940576 (= (toChars!8860 (transformation!6541 (h!47273 rules!2768))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72)))))) t!326891) tb!236179))

(declare-fun result!286118 () Bool)

(assert (= result!286118 result!286116))

(assert (=> b!3941247 t!326891))

(declare-fun b_and!301177 () Bool)

(assert (= b_and!301165 (and (=> t!326891 result!286118) b_and!301177)))

(declare-fun tb!236181 () Bool)

(declare-fun t!326893 () Bool)

(assert (=> (and b!3940905 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72)))))) t!326893) tb!236181))

(declare-fun result!286120 () Bool)

(assert (= result!286120 result!286116))

(assert (=> b!3941247 t!326893))

(declare-fun b_and!301179 () Bool)

(assert (= b_and!301163 (and (=> t!326893 result!286120) b_and!301179)))

(declare-fun tb!236183 () Bool)

(declare-fun t!326895 () Bool)

(assert (=> (and b!3940880 (= (toChars!8860 (transformation!6541 (h!47273 (t!326796 rules!2768)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72)))))) t!326895) tb!236183))

(declare-fun result!286122 () Bool)

(assert (= result!286122 result!286116))

(assert (=> b!3941247 t!326895))

(declare-fun b_and!301181 () Bool)

(assert (= b_and!301171 (and (=> t!326895 result!286122) b_and!301181)))

(declare-fun t!326897 () Bool)

(declare-fun tb!236185 () Bool)

(assert (=> (and b!3940589 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72)))))) t!326897) tb!236185))

(declare-fun result!286124 () Bool)

(assert (= result!286124 result!286116))

(assert (=> b!3941247 t!326897))

(declare-fun b_and!301183 () Bool)

(assert (= b_and!301169 (and (=> t!326897 result!286124) b_and!301183)))

(declare-fun t!326899 () Bool)

(declare-fun tb!236187 () Bool)

(assert (=> (and b!3940901 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72)))))) t!326899) tb!236187))

(declare-fun result!286126 () Bool)

(assert (= result!286126 result!286116))

(assert (=> b!3941247 t!326899))

(declare-fun b_and!301185 () Bool)

(assert (= b_and!301173 (and (=> t!326899 result!286126) b_and!301185)))

(declare-fun m!4509947 () Bool)

(assert (=> d!1168994 m!4509947))

(declare-fun m!4509949 () Bool)

(assert (=> b!3941247 m!4509949))

(assert (=> b!3941247 m!4509949))

(declare-fun m!4509951 () Bool)

(assert (=> b!3941247 m!4509951))

(declare-fun m!4509953 () Bool)

(assert (=> b!3941248 m!4509953))

(assert (=> b!3940898 d!1168994))

(declare-fun bs!586653 () Bool)

(declare-fun d!1168996 () Bool)

(assert (= bs!586653 (and d!1168996 d!1168964)))

(declare-fun lambda!126644 () Int)

(assert (=> bs!586653 (= (= (toValue!9001 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (toValue!9001 (transformation!6541 (h!47273 rules!2768)))) (= lambda!126644 lambda!126639))))

(assert (=> d!1168996 true))

(assert (=> d!1168996 (< (dynLambda!17921 order!22323 (toValue!9001 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))) (dynLambda!17923 order!22325 lambda!126644))))

(assert (=> d!1168996 (= (equivClasses!2713 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (toValue!9001 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))) (Forall2!1050 lambda!126644))))

(declare-fun bs!586654 () Bool)

(assert (= bs!586654 d!1168996))

(declare-fun m!4509955 () Bool)

(assert (=> bs!586654 m!4509955))

(assert (=> b!3940684 d!1168996))

(assert (=> b!3940765 d!1168918))

(assert (=> b!3940765 d!1168920))

(assert (=> b!3940765 d!1168870))

(declare-fun d!1168998 () Bool)

(declare-fun e!2438693 () Bool)

(assert (=> d!1168998 e!2438693))

(declare-fun c!684717 () Bool)

(declare-fun lt!1378524 () tuple2!41138)

(assert (=> d!1168998 (= c!684717 (> (size!31391 (_1!23703 lt!1378524)) 0))))

(declare-fun e!2438695 () tuple2!41138)

(assert (=> d!1168998 (= lt!1378524 e!2438695)))

(declare-fun c!684718 () Bool)

(declare-fun lt!1378523 () Option!8961)

(assert (=> d!1168998 (= c!684718 (is-Some!8960 lt!1378523))))

(assert (=> d!1168998 (= lt!1378523 (maxPrefix!3434 thiss!20629 rules!2768 (_2!23704 (v!39290 lt!1378423))))))

(assert (=> d!1168998 (= (lexList!1898 thiss!20629 rules!2768 (_2!23704 (v!39290 lt!1378423))) lt!1378524)))

(declare-fun b!3941250 () Bool)

(declare-fun e!2438694 () Bool)

(assert (=> b!3941250 (= e!2438694 (not (isEmpty!24968 (_1!23703 lt!1378524))))))

(declare-fun b!3941251 () Bool)

(assert (=> b!3941251 (= e!2438695 (tuple2!41139 Nil!41854 (_2!23704 (v!39290 lt!1378423))))))

(declare-fun b!3941252 () Bool)

(assert (=> b!3941252 (= e!2438693 (= (_2!23703 lt!1378524) (_2!23704 (v!39290 lt!1378423))))))

(declare-fun b!3941253 () Bool)

(assert (=> b!3941253 (= e!2438693 e!2438694)))

(declare-fun res!1595025 () Bool)

(assert (=> b!3941253 (= res!1595025 (< (size!31390 (_2!23703 lt!1378524)) (size!31390 (_2!23704 (v!39290 lt!1378423)))))))

(assert (=> b!3941253 (=> (not res!1595025) (not e!2438694))))

(declare-fun b!3941254 () Bool)

(declare-fun lt!1378525 () tuple2!41138)

(assert (=> b!3941254 (= e!2438695 (tuple2!41139 (Cons!41854 (_1!23704 (v!39290 lt!1378523)) (_1!23703 lt!1378525)) (_2!23703 lt!1378525)))))

(assert (=> b!3941254 (= lt!1378525 (lexList!1898 thiss!20629 rules!2768 (_2!23704 (v!39290 lt!1378523))))))

(assert (= (and d!1168998 c!684718) b!3941254))

(assert (= (and d!1168998 (not c!684718)) b!3941251))

(assert (= (and d!1168998 c!684717) b!3941253))

(assert (= (and d!1168998 (not c!684717)) b!3941252))

(assert (= (and b!3941253 res!1595025) b!3941250))

(declare-fun m!4509957 () Bool)

(assert (=> d!1168998 m!4509957))

(declare-fun m!4509959 () Bool)

(assert (=> d!1168998 m!4509959))

(declare-fun m!4509961 () Bool)

(assert (=> b!3941250 m!4509961))

(declare-fun m!4509963 () Bool)

(assert (=> b!3941253 m!4509963))

(declare-fun m!4509965 () Bool)

(assert (=> b!3941253 m!4509965))

(declare-fun m!4509967 () Bool)

(assert (=> b!3941254 m!4509967))

(assert (=> b!3940812 d!1168998))

(declare-fun d!1169000 () Bool)

(assert (=> d!1169000 (= (list!15543 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72)))) (list!15545 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72))))))))

(declare-fun bs!586655 () Bool)

(assert (= bs!586655 d!1169000))

(declare-fun m!4509969 () Bool)

(assert (=> bs!586655 m!4509969))

(assert (=> b!3940704 d!1169000))

(declare-fun d!1169002 () Bool)

(assert (=> d!1169002 (= (inv!17 (value!207054 (h!47274 prefixTokens!80))) (= (charsToBigInt!1 (text!47845 (value!207054 (h!47274 prefixTokens!80)))) (value!207046 (value!207054 (h!47274 prefixTokens!80)))))))

(declare-fun bs!586656 () Bool)

(assert (= bs!586656 d!1169002))

(declare-fun m!4509971 () Bool)

(assert (=> bs!586656 m!4509971))

(assert (=> b!3940806 d!1169002))

(declare-fun d!1169004 () Bool)

(assert (=> d!1169004 (= (isEmpty!24969 (originalCharacters!7141 (h!47274 prefixTokens!80))) (is-Nil!41851 (originalCharacters!7141 (h!47274 prefixTokens!80))))))

(assert (=> d!1168822 d!1169004))

(declare-fun d!1169006 () Bool)

(declare-fun c!684721 () Bool)

(assert (=> d!1169006 (= c!684721 (is-Nil!41851 lt!1378434))))

(declare-fun e!2438698 () (Set C!23078))

(assert (=> d!1169006 (= (content!6318 lt!1378434) e!2438698)))

(declare-fun b!3941259 () Bool)

(assert (=> b!3941259 (= e!2438698 (as set.empty (Set C!23078)))))

(declare-fun b!3941260 () Bool)

(assert (=> b!3941260 (= e!2438698 (set.union (set.insert (h!47271 lt!1378434) (as set.empty (Set C!23078))) (content!6318 (t!326794 lt!1378434))))))

(assert (= (and d!1169006 c!684721) b!3941259))

(assert (= (and d!1169006 (not c!684721)) b!3941260))

(declare-fun m!4509973 () Bool)

(assert (=> b!3941260 m!4509973))

(declare-fun m!4509975 () Bool)

(assert (=> b!3941260 m!4509975))

(assert (=> d!1168834 d!1169006))

(declare-fun d!1169008 () Bool)

(declare-fun c!684722 () Bool)

(assert (=> d!1169008 (= c!684722 (is-Nil!41851 prefix!426))))

(declare-fun e!2438699 () (Set C!23078))

(assert (=> d!1169008 (= (content!6318 prefix!426) e!2438699)))

(declare-fun b!3941261 () Bool)

(assert (=> b!3941261 (= e!2438699 (as set.empty (Set C!23078)))))

(declare-fun b!3941262 () Bool)

(assert (=> b!3941262 (= e!2438699 (set.union (set.insert (h!47271 prefix!426) (as set.empty (Set C!23078))) (content!6318 (t!326794 prefix!426))))))

(assert (= (and d!1169008 c!684722) b!3941261))

(assert (= (and d!1169008 (not c!684722)) b!3941262))

(declare-fun m!4509977 () Bool)

(assert (=> b!3941262 m!4509977))

(assert (=> b!3941262 m!4509897))

(assert (=> d!1168834 d!1169008))

(declare-fun d!1169010 () Bool)

(declare-fun c!684723 () Bool)

(assert (=> d!1169010 (= c!684723 (is-Nil!41851 suffix!1176))))

(declare-fun e!2438700 () (Set C!23078))

(assert (=> d!1169010 (= (content!6318 suffix!1176) e!2438700)))

(declare-fun b!3941263 () Bool)

(assert (=> b!3941263 (= e!2438700 (as set.empty (Set C!23078)))))

(declare-fun b!3941264 () Bool)

(assert (=> b!3941264 (= e!2438700 (set.union (set.insert (h!47271 suffix!1176) (as set.empty (Set C!23078))) (content!6318 (t!326794 suffix!1176))))))

(assert (= (and d!1169010 c!684723) b!3941263))

(assert (= (and d!1169010 (not c!684723)) b!3941264))

(declare-fun m!4509979 () Bool)

(assert (=> b!3941264 m!4509979))

(declare-fun m!4509981 () Bool)

(assert (=> b!3941264 m!4509981))

(assert (=> d!1168834 d!1169010))

(declare-fun d!1169012 () Bool)

(declare-fun c!684725 () Bool)

(assert (=> d!1169012 (= c!684725 (is-IntegerValue!20313 (value!207054 (h!47274 (t!326797 prefixTokens!80)))))))

(declare-fun e!2438702 () Bool)

(assert (=> d!1169012 (= (inv!21 (value!207054 (h!47274 (t!326797 prefixTokens!80)))) e!2438702)))

(declare-fun b!3941265 () Bool)

(declare-fun res!1595026 () Bool)

(declare-fun e!2438701 () Bool)

(assert (=> b!3941265 (=> res!1595026 e!2438701)))

(assert (=> b!3941265 (= res!1595026 (not (is-IntegerValue!20315 (value!207054 (h!47274 (t!326797 prefixTokens!80))))))))

(declare-fun e!2438703 () Bool)

(assert (=> b!3941265 (= e!2438703 e!2438701)))

(declare-fun b!3941266 () Bool)

(assert (=> b!3941266 (= e!2438702 e!2438703)))

(declare-fun c!684724 () Bool)

(assert (=> b!3941266 (= c!684724 (is-IntegerValue!20314 (value!207054 (h!47274 (t!326797 prefixTokens!80)))))))

(declare-fun b!3941267 () Bool)

(assert (=> b!3941267 (= e!2438701 (inv!15 (value!207054 (h!47274 (t!326797 prefixTokens!80)))))))

(declare-fun b!3941268 () Bool)

(assert (=> b!3941268 (= e!2438703 (inv!17 (value!207054 (h!47274 (t!326797 prefixTokens!80)))))))

(declare-fun b!3941269 () Bool)

(assert (=> b!3941269 (= e!2438702 (inv!16 (value!207054 (h!47274 (t!326797 prefixTokens!80)))))))

(assert (= (and d!1169012 c!684725) b!3941269))

(assert (= (and d!1169012 (not c!684725)) b!3941266))

(assert (= (and b!3941266 c!684724) b!3941268))

(assert (= (and b!3941266 (not c!684724)) b!3941265))

(assert (= (and b!3941265 (not res!1595026)) b!3941267))

(declare-fun m!4509983 () Bool)

(assert (=> b!3941267 m!4509983))

(declare-fun m!4509985 () Bool)

(assert (=> b!3941268 m!4509985))

(declare-fun m!4509987 () Bool)

(assert (=> b!3941269 m!4509987))

(assert (=> b!3940903 d!1169012))

(declare-fun b!3941273 () Bool)

(declare-fun e!2438704 () Bool)

(declare-fun lt!1378526 () List!41975)

(assert (=> b!3941273 (= e!2438704 (or (not (= (_2!23704 (get!13826 lt!1378416)) Nil!41851)) (= lt!1378526 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416)))))))))

(declare-fun b!3941272 () Bool)

(declare-fun res!1595027 () Bool)

(assert (=> b!3941272 (=> (not res!1595027) (not e!2438704))))

(assert (=> b!3941272 (= res!1595027 (= (size!31390 lt!1378526) (+ (size!31390 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416))))) (size!31390 (_2!23704 (get!13826 lt!1378416))))))))

(declare-fun b!3941271 () Bool)

(declare-fun e!2438705 () List!41975)

(assert (=> b!3941271 (= e!2438705 (Cons!41851 (h!47271 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416))))) (++!10840 (t!326794 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416))))) (_2!23704 (get!13826 lt!1378416)))))))

(declare-fun d!1169014 () Bool)

(assert (=> d!1169014 e!2438704))

(declare-fun res!1595028 () Bool)

(assert (=> d!1169014 (=> (not res!1595028) (not e!2438704))))

(assert (=> d!1169014 (= res!1595028 (= (content!6318 lt!1378526) (set.union (content!6318 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416))))) (content!6318 (_2!23704 (get!13826 lt!1378416))))))))

(assert (=> d!1169014 (= lt!1378526 e!2438705)))

(declare-fun c!684726 () Bool)

(assert (=> d!1169014 (= c!684726 (is-Nil!41851 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416))))))))

(assert (=> d!1169014 (= (++!10840 (list!15543 (charsOf!4359 (_1!23704 (get!13826 lt!1378416)))) (_2!23704 (get!13826 lt!1378416))) lt!1378526)))

(declare-fun b!3941270 () Bool)

(assert (=> b!3941270 (= e!2438705 (_2!23704 (get!13826 lt!1378416)))))

(assert (= (and d!1169014 c!684726) b!3941270))

(assert (= (and d!1169014 (not c!684726)) b!3941271))

(assert (= (and d!1169014 res!1595028) b!3941272))

(assert (= (and b!3941272 res!1595027) b!3941273))

(declare-fun m!4509989 () Bool)

(assert (=> b!3941272 m!4509989))

(assert (=> b!3941272 m!4509415))

(declare-fun m!4509991 () Bool)

(assert (=> b!3941272 m!4509991))

(assert (=> b!3941272 m!4509433))

(declare-fun m!4509993 () Bool)

(assert (=> b!3941271 m!4509993))

(declare-fun m!4509995 () Bool)

(assert (=> d!1169014 m!4509995))

(assert (=> d!1169014 m!4509415))

(declare-fun m!4509997 () Bool)

(assert (=> d!1169014 m!4509997))

(declare-fun m!4509999 () Bool)

(assert (=> d!1169014 m!4509999))

(assert (=> b!3940761 d!1169014))

(assert (=> b!3940761 d!1168918))

(assert (=> b!3940761 d!1168920))

(assert (=> b!3940761 d!1168870))

(declare-fun bs!586657 () Bool)

(declare-fun d!1169016 () Bool)

(assert (= bs!586657 (and d!1169016 d!1168964)))

(declare-fun lambda!126645 () Int)

(assert (=> bs!586657 (= (= (toValue!9001 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (toValue!9001 (transformation!6541 (h!47273 rules!2768)))) (= lambda!126645 lambda!126639))))

(declare-fun bs!586658 () Bool)

(assert (= bs!586658 (and d!1169016 d!1168996)))

(assert (=> bs!586658 (= (= (toValue!9001 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (toValue!9001 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))) (= lambda!126645 lambda!126644))))

(assert (=> d!1169016 true))

(assert (=> d!1169016 (< (dynLambda!17921 order!22323 (toValue!9001 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))) (dynLambda!17923 order!22325 lambda!126645))))

(assert (=> d!1169016 (= (equivClasses!2713 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (toValue!9001 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))) (Forall2!1050 lambda!126645))))

(declare-fun bs!586659 () Bool)

(assert (= bs!586659 d!1169016))

(declare-fun m!4510001 () Bool)

(assert (=> bs!586659 m!4510001))

(assert (=> b!3940850 d!1169016))

(declare-fun d!1169018 () Bool)

(assert (=> d!1169018 (= (isEmpty!24968 (_1!23703 lt!1378424)) (is-Nil!41854 (_1!23703 lt!1378424)))))

(assert (=> b!3940808 d!1169018))

(declare-fun b!3941274 () Bool)

(declare-fun e!2438706 () Bool)

(assert (=> b!3941274 (= e!2438706 tp_is_empty!19863)))

(declare-fun b!3941275 () Bool)

(declare-fun tp!1199388 () Bool)

(declare-fun tp!1199387 () Bool)

(assert (=> b!3941275 (= e!2438706 (and tp!1199388 tp!1199387))))

(assert (=> b!3940910 (= tp!1199311 e!2438706)))

(declare-fun b!3941277 () Bool)

(declare-fun tp!1199384 () Bool)

(declare-fun tp!1199386 () Bool)

(assert (=> b!3941277 (= e!2438706 (and tp!1199384 tp!1199386))))

(declare-fun b!3941276 () Bool)

(declare-fun tp!1199385 () Bool)

(assert (=> b!3941276 (= e!2438706 tp!1199385)))

(assert (= (and b!3940910 (is-ElementMatch!11446 (regOne!23404 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941274))

(assert (= (and b!3940910 (is-Concat!18218 (regOne!23404 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941275))

(assert (= (and b!3940910 (is-Star!11446 (regOne!23404 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941276))

(assert (= (and b!3940910 (is-Union!11446 (regOne!23404 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941277))

(declare-fun b!3941278 () Bool)

(declare-fun e!2438707 () Bool)

(assert (=> b!3941278 (= e!2438707 tp_is_empty!19863)))

(declare-fun b!3941279 () Bool)

(declare-fun tp!1199393 () Bool)

(declare-fun tp!1199392 () Bool)

(assert (=> b!3941279 (= e!2438707 (and tp!1199393 tp!1199392))))

(assert (=> b!3940910 (= tp!1199310 e!2438707)))

(declare-fun b!3941281 () Bool)

(declare-fun tp!1199389 () Bool)

(declare-fun tp!1199391 () Bool)

(assert (=> b!3941281 (= e!2438707 (and tp!1199389 tp!1199391))))

(declare-fun b!3941280 () Bool)

(declare-fun tp!1199390 () Bool)

(assert (=> b!3941280 (= e!2438707 tp!1199390)))

(assert (= (and b!3940910 (is-ElementMatch!11446 (regTwo!23404 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941278))

(assert (= (and b!3940910 (is-Concat!18218 (regTwo!23404 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941279))

(assert (= (and b!3940910 (is-Star!11446 (regTwo!23404 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941280))

(assert (= (and b!3940910 (is-Union!11446 (regTwo!23404 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941281))

(declare-fun b!3941290 () Bool)

(declare-fun e!2438712 () Bool)

(declare-fun tp!1199402 () Bool)

(declare-fun tp!1199401 () Bool)

(assert (=> b!3941290 (= e!2438712 (and (inv!56059 (left!31881 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72)))))) tp!1199401 (inv!56059 (right!32211 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72)))))) tp!1199402))))

(declare-fun b!3941292 () Bool)

(declare-fun e!2438713 () Bool)

(declare-fun tp!1199400 () Bool)

(assert (=> b!3941292 (= e!2438713 tp!1199400)))

(declare-fun b!3941291 () Bool)

(declare-fun inv!56065 (IArray!25509) Bool)

(assert (=> b!3941291 (= e!2438712 (and (inv!56065 (xs!16058 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72)))))) e!2438713))))

(assert (=> b!3940710 (= tp!1199247 (and (inv!56059 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72))))) e!2438712))))

(assert (= (and b!3940710 (is-Node!12752 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72)))))) b!3941290))

(assert (= b!3941291 b!3941292))

(assert (= (and b!3940710 (is-Leaf!19730 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (value!207054 (h!47274 suffixTokens!72)))))) b!3941291))

(declare-fun m!4510003 () Bool)

(assert (=> b!3941290 m!4510003))

(declare-fun m!4510005 () Bool)

(assert (=> b!3941290 m!4510005))

(declare-fun m!4510007 () Bool)

(assert (=> b!3941291 m!4510007))

(assert (=> b!3940710 m!4509359))

(declare-fun b!3941293 () Bool)

(declare-fun e!2438714 () Bool)

(declare-fun tp!1199403 () Bool)

(assert (=> b!3941293 (= e!2438714 (and tp_is_empty!19863 tp!1199403))))

(assert (=> b!3940913 (= tp!1199312 e!2438714)))

(assert (= (and b!3940913 (is-Cons!41851 (t!326794 (t!326794 suffix!1176)))) b!3941293))

(declare-fun b!3941294 () Bool)

(declare-fun e!2438715 () Bool)

(assert (=> b!3941294 (= e!2438715 tp_is_empty!19863)))

(declare-fun b!3941295 () Bool)

(declare-fun tp!1199408 () Bool)

(declare-fun tp!1199407 () Bool)

(assert (=> b!3941295 (= e!2438715 (and tp!1199408 tp!1199407))))

(assert (=> b!3940879 (= tp!1199275 e!2438715)))

(declare-fun b!3941297 () Bool)

(declare-fun tp!1199404 () Bool)

(declare-fun tp!1199406 () Bool)

(assert (=> b!3941297 (= e!2438715 (and tp!1199404 tp!1199406))))

(declare-fun b!3941296 () Bool)

(declare-fun tp!1199405 () Bool)

(assert (=> b!3941296 (= e!2438715 tp!1199405)))

(assert (= (and b!3940879 (is-ElementMatch!11446 (regex!6541 (h!47273 (t!326796 rules!2768))))) b!3941294))

(assert (= (and b!3940879 (is-Concat!18218 (regex!6541 (h!47273 (t!326796 rules!2768))))) b!3941295))

(assert (= (and b!3940879 (is-Star!11446 (regex!6541 (h!47273 (t!326796 rules!2768))))) b!3941296))

(assert (= (and b!3940879 (is-Union!11446 (regex!6541 (h!47273 (t!326796 rules!2768))))) b!3941297))

(declare-fun b!3941298 () Bool)

(declare-fun e!2438716 () Bool)

(assert (=> b!3941298 (= e!2438716 tp_is_empty!19863)))

(declare-fun b!3941299 () Bool)

(declare-fun tp!1199413 () Bool)

(declare-fun tp!1199412 () Bool)

(assert (=> b!3941299 (= e!2438716 (and tp!1199413 tp!1199412))))

(assert (=> b!3940912 (= tp!1199307 e!2438716)))

(declare-fun b!3941301 () Bool)

(declare-fun tp!1199409 () Bool)

(declare-fun tp!1199411 () Bool)

(assert (=> b!3941301 (= e!2438716 (and tp!1199409 tp!1199411))))

(declare-fun b!3941300 () Bool)

(declare-fun tp!1199410 () Bool)

(assert (=> b!3941300 (= e!2438716 tp!1199410)))

(assert (= (and b!3940912 (is-ElementMatch!11446 (regOne!23405 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941298))

(assert (= (and b!3940912 (is-Concat!18218 (regOne!23405 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941299))

(assert (= (and b!3940912 (is-Star!11446 (regOne!23405 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941300))

(assert (= (and b!3940912 (is-Union!11446 (regOne!23405 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941301))

(declare-fun b!3941302 () Bool)

(declare-fun e!2438717 () Bool)

(assert (=> b!3941302 (= e!2438717 tp_is_empty!19863)))

(declare-fun b!3941303 () Bool)

(declare-fun tp!1199418 () Bool)

(declare-fun tp!1199417 () Bool)

(assert (=> b!3941303 (= e!2438717 (and tp!1199418 tp!1199417))))

(assert (=> b!3940912 (= tp!1199309 e!2438717)))

(declare-fun b!3941305 () Bool)

(declare-fun tp!1199414 () Bool)

(declare-fun tp!1199416 () Bool)

(assert (=> b!3941305 (= e!2438717 (and tp!1199414 tp!1199416))))

(declare-fun b!3941304 () Bool)

(declare-fun tp!1199415 () Bool)

(assert (=> b!3941304 (= e!2438717 tp!1199415)))

(assert (= (and b!3940912 (is-ElementMatch!11446 (regTwo!23405 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941302))

(assert (= (and b!3940912 (is-Concat!18218 (regTwo!23405 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941303))

(assert (= (and b!3940912 (is-Star!11446 (regTwo!23405 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941304))

(assert (= (and b!3940912 (is-Union!11446 (regTwo!23405 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941305))

(declare-fun b!3941308 () Bool)

(declare-fun b_free!107825 () Bool)

(declare-fun b_next!108529 () Bool)

(assert (=> b!3941308 (= b_free!107825 (not b_next!108529))))

(declare-fun t!326901 () Bool)

(declare-fun tb!236189 () Bool)

(assert (=> (and b!3941308 (= (toValue!9001 (transformation!6541 (h!47273 (t!326796 (t!326796 rules!2768))))) (toValue!9001 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326901) tb!236189))

(declare-fun result!286130 () Bool)

(assert (= result!286130 result!286090))

(assert (=> d!1168924 t!326901))

(declare-fun tp!1199420 () Bool)

(declare-fun b_and!301187 () Bool)

(assert (=> b!3941308 (= tp!1199420 (and (=> t!326901 result!286130) b_and!301187))))

(declare-fun b_free!107827 () Bool)

(declare-fun b_next!108531 () Bool)

(assert (=> b!3941308 (= b_free!107827 (not b_next!108531))))

(declare-fun t!326903 () Bool)

(declare-fun tb!236191 () Bool)

(assert (=> (and b!3941308 (= (toChars!8860 (transformation!6541 (h!47273 (t!326796 (t!326796 rules!2768))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72)))))) t!326903) tb!236191))

(declare-fun result!286132 () Bool)

(assert (= result!286132 result!286116))

(assert (=> b!3941247 t!326903))

(declare-fun t!326905 () Bool)

(declare-fun tb!236193 () Bool)

(assert (=> (and b!3941308 (= (toChars!8860 (transformation!6541 (h!47273 (t!326796 (t!326796 rules!2768))))) (toChars!8860 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326905) tb!236193))

(declare-fun result!286134 () Bool)

(assert (= result!286134 result!286078))

(assert (=> d!1168920 t!326905))

(declare-fun tb!236195 () Bool)

(declare-fun t!326907 () Bool)

(assert (=> (and b!3941308 (= (toChars!8860 (transformation!6541 (h!47273 (t!326796 (t!326796 rules!2768))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))) t!326907) tb!236195))

(declare-fun result!286136 () Bool)

(assert (= result!286136 result!286018))

(assert (=> b!3940781 t!326907))

(declare-fun tb!236197 () Bool)

(declare-fun t!326909 () Bool)

(assert (=> (and b!3941308 (= (toChars!8860 (transformation!6541 (h!47273 (t!326796 (t!326796 rules!2768))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))) t!326909) tb!236197))

(declare-fun result!286138 () Bool)

(assert (= result!286138 result!286010))

(assert (=> b!3940704 t!326909))

(declare-fun tb!236199 () Bool)

(declare-fun t!326911 () Bool)

(assert (=> (and b!3941308 (= (toChars!8860 (transformation!6541 (h!47273 (t!326796 (t!326796 rules!2768))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80)))))) t!326911) tb!236199))

(declare-fun result!286140 () Bool)

(assert (= result!286140 result!286104))

(assert (=> b!3941164 t!326911))

(declare-fun tp!1199422 () Bool)

(declare-fun b_and!301189 () Bool)

(assert (=> b!3941308 (= tp!1199422 (and (=> t!326903 result!286132) (=> t!326907 result!286136) (=> t!326911 result!286140) (=> t!326905 result!286134) (=> t!326909 result!286138) b_and!301189))))

(declare-fun e!2438718 () Bool)

(assert (=> b!3941308 (= e!2438718 (and tp!1199420 tp!1199422))))

(declare-fun e!2438719 () Bool)

(declare-fun b!3941307 () Bool)

(declare-fun tp!1199419 () Bool)

(assert (=> b!3941307 (= e!2438719 (and tp!1199419 (inv!56052 (tag!7401 (h!47273 (t!326796 (t!326796 rules!2768))))) (inv!56055 (transformation!6541 (h!47273 (t!326796 (t!326796 rules!2768))))) e!2438718))))

(declare-fun b!3941306 () Bool)

(declare-fun e!2438721 () Bool)

(declare-fun tp!1199421 () Bool)

(assert (=> b!3941306 (= e!2438721 (and e!2438719 tp!1199421))))

(assert (=> b!3940878 (= tp!1199277 e!2438721)))

(assert (= b!3941307 b!3941308))

(assert (= b!3941306 b!3941307))

(assert (= (and b!3940878 (is-Cons!41853 (t!326796 (t!326796 rules!2768)))) b!3941306))

(declare-fun m!4510009 () Bool)

(assert (=> b!3941307 m!4510009))

(declare-fun m!4510011 () Bool)

(assert (=> b!3941307 m!4510011))

(declare-fun b!3941309 () Bool)

(declare-fun e!2438722 () Bool)

(assert (=> b!3941309 (= e!2438722 tp_is_empty!19863)))

(declare-fun b!3941310 () Bool)

(declare-fun tp!1199427 () Bool)

(declare-fun tp!1199426 () Bool)

(assert (=> b!3941310 (= e!2438722 (and tp!1199427 tp!1199426))))

(assert (=> b!3940911 (= tp!1199308 e!2438722)))

(declare-fun b!3941312 () Bool)

(declare-fun tp!1199423 () Bool)

(declare-fun tp!1199425 () Bool)

(assert (=> b!3941312 (= e!2438722 (and tp!1199423 tp!1199425))))

(declare-fun b!3941311 () Bool)

(declare-fun tp!1199424 () Bool)

(assert (=> b!3941311 (= e!2438722 tp!1199424)))

(assert (= (and b!3940911 (is-ElementMatch!11446 (reg!11775 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941309))

(assert (= (and b!3940911 (is-Concat!18218 (reg!11775 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941310))

(assert (= (and b!3940911 (is-Star!11446 (reg!11775 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941311))

(assert (= (and b!3940911 (is-Union!11446 (reg!11775 (regex!6541 (rule!9499 (h!47274 suffixTokens!72)))))) b!3941312))

(declare-fun b!3941313 () Bool)

(declare-fun e!2438723 () Bool)

(declare-fun tp!1199428 () Bool)

(assert (=> b!3941313 (= e!2438723 (and tp_is_empty!19863 tp!1199428))))

(assert (=> b!3940907 (= tp!1199305 e!2438723)))

(assert (= (and b!3940907 (is-Cons!41851 (t!326794 (originalCharacters!7141 (h!47274 suffixTokens!72))))) b!3941313))

(declare-fun e!2438724 () Bool)

(declare-fun b!3941314 () Bool)

(declare-fun tp!1199431 () Bool)

(declare-fun tp!1199430 () Bool)

(assert (=> b!3941314 (= e!2438724 (and (inv!56059 (left!31881 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80)))))) tp!1199430 (inv!56059 (right!32211 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80)))))) tp!1199431))))

(declare-fun b!3941316 () Bool)

(declare-fun e!2438725 () Bool)

(declare-fun tp!1199429 () Bool)

(assert (=> b!3941316 (= e!2438725 tp!1199429)))

(declare-fun b!3941315 () Bool)

(assert (=> b!3941315 (= e!2438724 (and (inv!56065 (xs!16058 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80)))))) e!2438725))))

(assert (=> b!3940783 (= tp!1199248 (and (inv!56059 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80))))) e!2438724))))

(assert (= (and b!3940783 (is-Node!12752 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80)))))) b!3941314))

(assert (= b!3941315 b!3941316))

(assert (= (and b!3940783 (is-Leaf!19730 (c!684607 (dynLambda!17917 (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (value!207054 (h!47274 prefixTokens!80)))))) b!3941315))

(declare-fun m!4510013 () Bool)

(assert (=> b!3941314 m!4510013))

(declare-fun m!4510015 () Bool)

(assert (=> b!3941314 m!4510015))

(declare-fun m!4510017 () Bool)

(assert (=> b!3941315 m!4510017))

(assert (=> b!3940783 m!4509449))

(declare-fun b!3941317 () Bool)

(declare-fun e!2438726 () Bool)

(assert (=> b!3941317 (= e!2438726 tp_is_empty!19863)))

(declare-fun b!3941318 () Bool)

(declare-fun tp!1199436 () Bool)

(declare-fun tp!1199435 () Bool)

(assert (=> b!3941318 (= e!2438726 (and tp!1199436 tp!1199435))))

(assert (=> b!3940885 (= tp!1199279 e!2438726)))

(declare-fun b!3941320 () Bool)

(declare-fun tp!1199432 () Bool)

(declare-fun tp!1199434 () Bool)

(assert (=> b!3941320 (= e!2438726 (and tp!1199432 tp!1199434))))

(declare-fun b!3941319 () Bool)

(declare-fun tp!1199433 () Bool)

(assert (=> b!3941319 (= e!2438726 tp!1199433)))

(assert (= (and b!3940885 (is-ElementMatch!11446 (regOne!23405 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941317))

(assert (= (and b!3940885 (is-Concat!18218 (regOne!23405 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941318))

(assert (= (and b!3940885 (is-Star!11446 (regOne!23405 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941319))

(assert (= (and b!3940885 (is-Union!11446 (regOne!23405 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941320))

(declare-fun b!3941321 () Bool)

(declare-fun e!2438727 () Bool)

(assert (=> b!3941321 (= e!2438727 tp_is_empty!19863)))

(declare-fun b!3941322 () Bool)

(declare-fun tp!1199441 () Bool)

(declare-fun tp!1199440 () Bool)

(assert (=> b!3941322 (= e!2438727 (and tp!1199441 tp!1199440))))

(assert (=> b!3940885 (= tp!1199281 e!2438727)))

(declare-fun b!3941324 () Bool)

(declare-fun tp!1199437 () Bool)

(declare-fun tp!1199439 () Bool)

(assert (=> b!3941324 (= e!2438727 (and tp!1199437 tp!1199439))))

(declare-fun b!3941323 () Bool)

(declare-fun tp!1199438 () Bool)

(assert (=> b!3941323 (= e!2438727 tp!1199438)))

(assert (= (and b!3940885 (is-ElementMatch!11446 (regTwo!23405 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941321))

(assert (= (and b!3940885 (is-Concat!18218 (regTwo!23405 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941322))

(assert (= (and b!3940885 (is-Star!11446 (regTwo!23405 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941323))

(assert (= (and b!3940885 (is-Union!11446 (regTwo!23405 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941324))

(declare-fun b!3941325 () Bool)

(declare-fun e!2438728 () Bool)

(declare-fun tp!1199442 () Bool)

(assert (=> b!3941325 (= e!2438728 (and tp_is_empty!19863 tp!1199442))))

(assert (=> b!3940906 (= tp!1199304 e!2438728)))

(assert (= (and b!3940906 (is-Cons!41851 (t!326794 (t!326794 prefix!426)))) b!3941325))

(declare-fun b!3941326 () Bool)

(declare-fun e!2438729 () Bool)

(assert (=> b!3941326 (= e!2438729 tp_is_empty!19863)))

(declare-fun b!3941327 () Bool)

(declare-fun tp!1199447 () Bool)

(declare-fun tp!1199446 () Bool)

(assert (=> b!3941327 (= e!2438729 (and tp!1199447 tp!1199446))))

(assert (=> b!3940900 (= tp!1199296 e!2438729)))

(declare-fun b!3941329 () Bool)

(declare-fun tp!1199443 () Bool)

(declare-fun tp!1199445 () Bool)

(assert (=> b!3941329 (= e!2438729 (and tp!1199443 tp!1199445))))

(declare-fun b!3941328 () Bool)

(declare-fun tp!1199444 () Bool)

(assert (=> b!3941328 (= e!2438729 tp!1199444)))

(assert (= (and b!3940900 (is-ElementMatch!11446 (regex!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72)))))) b!3941326))

(assert (= (and b!3940900 (is-Concat!18218 (regex!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72)))))) b!3941327))

(assert (= (and b!3940900 (is-Star!11446 (regex!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72)))))) b!3941328))

(assert (= (and b!3940900 (is-Union!11446 (regex!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72)))))) b!3941329))

(declare-fun b!3941330 () Bool)

(declare-fun e!2438730 () Bool)

(declare-fun tp!1199448 () Bool)

(assert (=> b!3941330 (= e!2438730 (and tp_is_empty!19863 tp!1199448))))

(assert (=> b!3940869 (= tp!1199266 e!2438730)))

(assert (= (and b!3940869 (is-Cons!41851 (t!326794 (t!326794 suffixResult!91)))) b!3941330))

(declare-fun b!3941331 () Bool)

(declare-fun e!2438731 () Bool)

(assert (=> b!3941331 (= e!2438731 tp_is_empty!19863)))

(declare-fun b!3941332 () Bool)

(declare-fun tp!1199453 () Bool)

(declare-fun tp!1199452 () Bool)

(assert (=> b!3941332 (= e!2438731 (and tp!1199453 tp!1199452))))

(assert (=> b!3940882 (= tp!1199283 e!2438731)))

(declare-fun b!3941334 () Bool)

(declare-fun tp!1199449 () Bool)

(declare-fun tp!1199451 () Bool)

(assert (=> b!3941334 (= e!2438731 (and tp!1199449 tp!1199451))))

(declare-fun b!3941333 () Bool)

(declare-fun tp!1199450 () Bool)

(assert (=> b!3941333 (= e!2438731 tp!1199450)))

(assert (= (and b!3940882 (is-ElementMatch!11446 (regOne!23404 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941331))

(assert (= (and b!3940882 (is-Concat!18218 (regOne!23404 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941332))

(assert (= (and b!3940882 (is-Star!11446 (regOne!23404 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941333))

(assert (= (and b!3940882 (is-Union!11446 (regOne!23404 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941334))

(declare-fun b!3941335 () Bool)

(declare-fun e!2438732 () Bool)

(assert (=> b!3941335 (= e!2438732 tp_is_empty!19863)))

(declare-fun b!3941336 () Bool)

(declare-fun tp!1199458 () Bool)

(declare-fun tp!1199457 () Bool)

(assert (=> b!3941336 (= e!2438732 (and tp!1199458 tp!1199457))))

(assert (=> b!3940882 (= tp!1199282 e!2438732)))

(declare-fun b!3941338 () Bool)

(declare-fun tp!1199454 () Bool)

(declare-fun tp!1199456 () Bool)

(assert (=> b!3941338 (= e!2438732 (and tp!1199454 tp!1199456))))

(declare-fun b!3941337 () Bool)

(declare-fun tp!1199455 () Bool)

(assert (=> b!3941337 (= e!2438732 tp!1199455)))

(assert (= (and b!3940882 (is-ElementMatch!11446 (regTwo!23404 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941335))

(assert (= (and b!3940882 (is-Concat!18218 (regTwo!23404 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941336))

(assert (= (and b!3940882 (is-Star!11446 (regTwo!23404 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941337))

(assert (= (and b!3940882 (is-Union!11446 (regTwo!23404 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941338))

(declare-fun b!3941342 () Bool)

(declare-fun b_free!107829 () Bool)

(declare-fun b_next!108533 () Bool)

(assert (=> b!3941342 (= b_free!107829 (not b_next!108533))))

(declare-fun t!326913 () Bool)

(declare-fun tb!236201 () Bool)

(assert (=> (and b!3941342 (= (toValue!9001 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 suffixTokens!72)))))) (toValue!9001 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326913) tb!236201))

(declare-fun result!286142 () Bool)

(assert (= result!286142 result!286090))

(assert (=> d!1168924 t!326913))

(declare-fun b_and!301191 () Bool)

(declare-fun tp!1199459 () Bool)

(assert (=> b!3941342 (= tp!1199459 (and (=> t!326913 result!286142) b_and!301191))))

(declare-fun b_free!107831 () Bool)

(declare-fun b_next!108535 () Bool)

(assert (=> b!3941342 (= b_free!107831 (not b_next!108535))))

(declare-fun t!326915 () Bool)

(declare-fun tb!236203 () Bool)

(assert (=> (and b!3941342 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 suffixTokens!72)))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72)))))) t!326915) tb!236203))

(declare-fun result!286144 () Bool)

(assert (= result!286144 result!286116))

(assert (=> b!3941247 t!326915))

(declare-fun tb!236205 () Bool)

(declare-fun t!326917 () Bool)

(assert (=> (and b!3941342 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 suffixTokens!72)))))) (toChars!8860 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326917) tb!236205))

(declare-fun result!286146 () Bool)

(assert (= result!286146 result!286078))

(assert (=> d!1168920 t!326917))

(declare-fun tb!236207 () Bool)

(declare-fun t!326919 () Bool)

(assert (=> (and b!3941342 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 suffixTokens!72)))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))) t!326919) tb!236207))

(declare-fun result!286148 () Bool)

(assert (= result!286148 result!286018))

(assert (=> b!3940781 t!326919))

(declare-fun t!326921 () Bool)

(declare-fun tb!236209 () Bool)

(assert (=> (and b!3941342 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 suffixTokens!72)))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))) t!326921) tb!236209))

(declare-fun result!286150 () Bool)

(assert (= result!286150 result!286010))

(assert (=> b!3940704 t!326921))

(declare-fun tb!236211 () Bool)

(declare-fun t!326923 () Bool)

(assert (=> (and b!3941342 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 suffixTokens!72)))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80)))))) t!326923) tb!236211))

(declare-fun result!286152 () Bool)

(assert (= result!286152 result!286104))

(assert (=> b!3941164 t!326923))

(declare-fun b_and!301193 () Bool)

(declare-fun tp!1199462 () Bool)

(assert (=> b!3941342 (= tp!1199462 (and (=> t!326921 result!286150) (=> t!326915 result!286144) (=> t!326923 result!286152) (=> t!326917 result!286146) (=> t!326919 result!286148) b_and!301193))))

(declare-fun e!2438734 () Bool)

(declare-fun e!2438737 () Bool)

(declare-fun tp!1199461 () Bool)

(declare-fun b!3941341 () Bool)

(assert (=> b!3941341 (= e!2438734 (and tp!1199461 (inv!56052 (tag!7401 (rule!9499 (h!47274 (t!326797 (t!326797 suffixTokens!72)))))) (inv!56055 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 suffixTokens!72)))))) e!2438737))))

(declare-fun e!2438735 () Bool)

(declare-fun b!3941340 () Bool)

(declare-fun tp!1199463 () Bool)

(assert (=> b!3941340 (= e!2438735 (and (inv!21 (value!207054 (h!47274 (t!326797 (t!326797 suffixTokens!72))))) e!2438734 tp!1199463))))

(assert (=> b!3941342 (= e!2438737 (and tp!1199459 tp!1199462))))

(declare-fun e!2438733 () Bool)

(assert (=> b!3940898 (= tp!1199295 e!2438733)))

(declare-fun b!3941339 () Bool)

(declare-fun tp!1199460 () Bool)

(assert (=> b!3941339 (= e!2438733 (and (inv!56056 (h!47274 (t!326797 (t!326797 suffixTokens!72)))) e!2438735 tp!1199460))))

(assert (= b!3941341 b!3941342))

(assert (= b!3941340 b!3941341))

(assert (= b!3941339 b!3941340))

(assert (= (and b!3940898 (is-Cons!41854 (t!326797 (t!326797 suffixTokens!72)))) b!3941339))

(declare-fun m!4510019 () Bool)

(assert (=> b!3941341 m!4510019))

(declare-fun m!4510021 () Bool)

(assert (=> b!3941341 m!4510021))

(declare-fun m!4510023 () Bool)

(assert (=> b!3941340 m!4510023))

(declare-fun m!4510025 () Bool)

(assert (=> b!3941339 m!4510025))

(declare-fun b!3941343 () Bool)

(declare-fun e!2438739 () Bool)

(assert (=> b!3941343 (= e!2438739 tp_is_empty!19863)))

(declare-fun b!3941344 () Bool)

(declare-fun tp!1199468 () Bool)

(declare-fun tp!1199467 () Bool)

(assert (=> b!3941344 (= e!2438739 (and tp!1199468 tp!1199467))))

(assert (=> b!3940883 (= tp!1199280 e!2438739)))

(declare-fun b!3941346 () Bool)

(declare-fun tp!1199464 () Bool)

(declare-fun tp!1199466 () Bool)

(assert (=> b!3941346 (= e!2438739 (and tp!1199464 tp!1199466))))

(declare-fun b!3941345 () Bool)

(declare-fun tp!1199465 () Bool)

(assert (=> b!3941345 (= e!2438739 tp!1199465)))

(assert (= (and b!3940883 (is-ElementMatch!11446 (reg!11775 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941343))

(assert (= (and b!3940883 (is-Concat!18218 (reg!11775 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941344))

(assert (= (and b!3940883 (is-Star!11446 (reg!11775 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941345))

(assert (= (and b!3940883 (is-Union!11446 (reg!11775 (regex!6541 (rule!9499 (h!47274 prefixTokens!80)))))) b!3941346))

(declare-fun b!3941347 () Bool)

(declare-fun e!2438740 () Bool)

(declare-fun tp!1199469 () Bool)

(assert (=> b!3941347 (= e!2438740 (and tp_is_empty!19863 tp!1199469))))

(assert (=> b!3940899 (= tp!1199298 e!2438740)))

(assert (= (and b!3940899 (is-Cons!41851 (originalCharacters!7141 (h!47274 (t!326797 suffixTokens!72))))) b!3941347))

(declare-fun b!3941348 () Bool)

(declare-fun e!2438741 () Bool)

(assert (=> b!3941348 (= e!2438741 tp_is_empty!19863)))

(declare-fun b!3941349 () Bool)

(declare-fun tp!1199474 () Bool)

(declare-fun tp!1199473 () Bool)

(assert (=> b!3941349 (= e!2438741 (and tp!1199474 tp!1199473))))

(assert (=> b!3940904 (= tp!1199301 e!2438741)))

(declare-fun b!3941351 () Bool)

(declare-fun tp!1199470 () Bool)

(declare-fun tp!1199472 () Bool)

(assert (=> b!3941351 (= e!2438741 (and tp!1199470 tp!1199472))))

(declare-fun b!3941350 () Bool)

(declare-fun tp!1199471 () Bool)

(assert (=> b!3941350 (= e!2438741 tp!1199471)))

(assert (= (and b!3940904 (is-ElementMatch!11446 (regex!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80)))))) b!3941348))

(assert (= (and b!3940904 (is-Concat!18218 (regex!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80)))))) b!3941349))

(assert (= (and b!3940904 (is-Star!11446 (regex!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80)))))) b!3941350))

(assert (= (and b!3940904 (is-Union!11446 (regex!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80)))))) b!3941351))

(declare-fun b!3941352 () Bool)

(declare-fun e!2438742 () Bool)

(assert (=> b!3941352 (= e!2438742 tp_is_empty!19863)))

(declare-fun b!3941353 () Bool)

(declare-fun tp!1199479 () Bool)

(declare-fun tp!1199478 () Bool)

(assert (=> b!3941353 (= e!2438742 (and tp!1199479 tp!1199478))))

(assert (=> b!3940864 (= tp!1199259 e!2438742)))

(declare-fun b!3941355 () Bool)

(declare-fun tp!1199475 () Bool)

(declare-fun tp!1199477 () Bool)

(assert (=> b!3941355 (= e!2438742 (and tp!1199475 tp!1199477))))

(declare-fun b!3941354 () Bool)

(declare-fun tp!1199476 () Bool)

(assert (=> b!3941354 (= e!2438742 tp!1199476)))

(assert (= (and b!3940864 (is-ElementMatch!11446 (regOne!23405 (regex!6541 (h!47273 rules!2768))))) b!3941352))

(assert (= (and b!3940864 (is-Concat!18218 (regOne!23405 (regex!6541 (h!47273 rules!2768))))) b!3941353))

(assert (= (and b!3940864 (is-Star!11446 (regOne!23405 (regex!6541 (h!47273 rules!2768))))) b!3941354))

(assert (= (and b!3940864 (is-Union!11446 (regOne!23405 (regex!6541 (h!47273 rules!2768))))) b!3941355))

(declare-fun b!3941356 () Bool)

(declare-fun e!2438743 () Bool)

(assert (=> b!3941356 (= e!2438743 tp_is_empty!19863)))

(declare-fun b!3941357 () Bool)

(declare-fun tp!1199484 () Bool)

(declare-fun tp!1199483 () Bool)

(assert (=> b!3941357 (= e!2438743 (and tp!1199484 tp!1199483))))

(assert (=> b!3940864 (= tp!1199261 e!2438743)))

(declare-fun b!3941359 () Bool)

(declare-fun tp!1199480 () Bool)

(declare-fun tp!1199482 () Bool)

(assert (=> b!3941359 (= e!2438743 (and tp!1199480 tp!1199482))))

(declare-fun b!3941358 () Bool)

(declare-fun tp!1199481 () Bool)

(assert (=> b!3941358 (= e!2438743 tp!1199481)))

(assert (= (and b!3940864 (is-ElementMatch!11446 (regTwo!23405 (regex!6541 (h!47273 rules!2768))))) b!3941356))

(assert (= (and b!3940864 (is-Concat!18218 (regTwo!23405 (regex!6541 (h!47273 rules!2768))))) b!3941357))

(assert (= (and b!3940864 (is-Star!11446 (regTwo!23405 (regex!6541 (h!47273 rules!2768))))) b!3941358))

(assert (= (and b!3940864 (is-Union!11446 (regTwo!23405 (regex!6541 (h!47273 rules!2768))))) b!3941359))

(declare-fun b!3941360 () Bool)

(declare-fun e!2438744 () Bool)

(assert (=> b!3941360 (= e!2438744 tp_is_empty!19863)))

(declare-fun b!3941361 () Bool)

(declare-fun tp!1199489 () Bool)

(declare-fun tp!1199488 () Bool)

(assert (=> b!3941361 (= e!2438744 (and tp!1199489 tp!1199488))))

(assert (=> b!3940862 (= tp!1199263 e!2438744)))

(declare-fun b!3941363 () Bool)

(declare-fun tp!1199485 () Bool)

(declare-fun tp!1199487 () Bool)

(assert (=> b!3941363 (= e!2438744 (and tp!1199485 tp!1199487))))

(declare-fun b!3941362 () Bool)

(declare-fun tp!1199486 () Bool)

(assert (=> b!3941362 (= e!2438744 tp!1199486)))

(assert (= (and b!3940862 (is-ElementMatch!11446 (regOne!23404 (regex!6541 (h!47273 rules!2768))))) b!3941360))

(assert (= (and b!3940862 (is-Concat!18218 (regOne!23404 (regex!6541 (h!47273 rules!2768))))) b!3941361))

(assert (= (and b!3940862 (is-Star!11446 (regOne!23404 (regex!6541 (h!47273 rules!2768))))) b!3941362))

(assert (= (and b!3940862 (is-Union!11446 (regOne!23404 (regex!6541 (h!47273 rules!2768))))) b!3941363))

(declare-fun b!3941364 () Bool)

(declare-fun e!2438745 () Bool)

(assert (=> b!3941364 (= e!2438745 tp_is_empty!19863)))

(declare-fun b!3941365 () Bool)

(declare-fun tp!1199494 () Bool)

(declare-fun tp!1199493 () Bool)

(assert (=> b!3941365 (= e!2438745 (and tp!1199494 tp!1199493))))

(assert (=> b!3940862 (= tp!1199262 e!2438745)))

(declare-fun b!3941367 () Bool)

(declare-fun tp!1199490 () Bool)

(declare-fun tp!1199492 () Bool)

(assert (=> b!3941367 (= e!2438745 (and tp!1199490 tp!1199492))))

(declare-fun b!3941366 () Bool)

(declare-fun tp!1199491 () Bool)

(assert (=> b!3941366 (= e!2438745 tp!1199491)))

(assert (= (and b!3940862 (is-ElementMatch!11446 (regTwo!23404 (regex!6541 (h!47273 rules!2768))))) b!3941364))

(assert (= (and b!3940862 (is-Concat!18218 (regTwo!23404 (regex!6541 (h!47273 rules!2768))))) b!3941365))

(assert (= (and b!3940862 (is-Star!11446 (regTwo!23404 (regex!6541 (h!47273 rules!2768))))) b!3941366))

(assert (= (and b!3940862 (is-Union!11446 (regTwo!23404 (regex!6541 (h!47273 rules!2768))))) b!3941367))

(declare-fun b!3941368 () Bool)

(declare-fun e!2438746 () Bool)

(declare-fun tp!1199495 () Bool)

(assert (=> b!3941368 (= e!2438746 (and tp_is_empty!19863 tp!1199495))))

(assert (=> b!3940903 (= tp!1199303 e!2438746)))

(assert (= (and b!3940903 (is-Cons!41851 (originalCharacters!7141 (h!47274 (t!326797 prefixTokens!80))))) b!3941368))

(declare-fun b!3941369 () Bool)

(declare-fun e!2438747 () Bool)

(declare-fun tp!1199496 () Bool)

(assert (=> b!3941369 (= e!2438747 (and tp_is_empty!19863 tp!1199496))))

(assert (=> b!3940908 (= tp!1199306 e!2438747)))

(assert (= (and b!3940908 (is-Cons!41851 (t!326794 (originalCharacters!7141 (h!47274 prefixTokens!80))))) b!3941369))

(declare-fun b!3941370 () Bool)

(declare-fun e!2438748 () Bool)

(assert (=> b!3941370 (= e!2438748 tp_is_empty!19863)))

(declare-fun b!3941371 () Bool)

(declare-fun tp!1199501 () Bool)

(declare-fun tp!1199500 () Bool)

(assert (=> b!3941371 (= e!2438748 (and tp!1199501 tp!1199500))))

(assert (=> b!3940863 (= tp!1199260 e!2438748)))

(declare-fun b!3941373 () Bool)

(declare-fun tp!1199497 () Bool)

(declare-fun tp!1199499 () Bool)

(assert (=> b!3941373 (= e!2438748 (and tp!1199497 tp!1199499))))

(declare-fun b!3941372 () Bool)

(declare-fun tp!1199498 () Bool)

(assert (=> b!3941372 (= e!2438748 tp!1199498)))

(assert (= (and b!3940863 (is-ElementMatch!11446 (reg!11775 (regex!6541 (h!47273 rules!2768))))) b!3941370))

(assert (= (and b!3940863 (is-Concat!18218 (reg!11775 (regex!6541 (h!47273 rules!2768))))) b!3941371))

(assert (= (and b!3940863 (is-Star!11446 (reg!11775 (regex!6541 (h!47273 rules!2768))))) b!3941372))

(assert (= (and b!3940863 (is-Union!11446 (reg!11775 (regex!6541 (h!47273 rules!2768))))) b!3941373))

(declare-fun b!3941377 () Bool)

(declare-fun b_free!107833 () Bool)

(declare-fun b_next!108537 () Bool)

(assert (=> b!3941377 (= b_free!107833 (not b_next!108537))))

(declare-fun tb!236213 () Bool)

(declare-fun t!326925 () Bool)

(assert (=> (and b!3941377 (= (toValue!9001 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 prefixTokens!80)))))) (toValue!9001 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326925) tb!236213))

(declare-fun result!286154 () Bool)

(assert (= result!286154 result!286090))

(assert (=> d!1168924 t!326925))

(declare-fun b_and!301195 () Bool)

(declare-fun tp!1199502 () Bool)

(assert (=> b!3941377 (= tp!1199502 (and (=> t!326925 result!286154) b_and!301195))))

(declare-fun b_free!107835 () Bool)

(declare-fun b_next!108539 () Bool)

(assert (=> b!3941377 (= b_free!107835 (not b_next!108539))))

(declare-fun tb!236215 () Bool)

(declare-fun t!326927 () Bool)

(assert (=> (and b!3941377 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 prefixTokens!80)))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72)))))) t!326927) tb!236215))

(declare-fun result!286156 () Bool)

(assert (= result!286156 result!286116))

(assert (=> b!3941247 t!326927))

(declare-fun tb!236217 () Bool)

(declare-fun t!326929 () Bool)

(assert (=> (and b!3941377 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 prefixTokens!80)))))) (toChars!8860 (transformation!6541 (rule!9499 (_1!23704 (get!13826 lt!1378416)))))) t!326929) tb!236217))

(declare-fun result!286158 () Bool)

(assert (= result!286158 result!286078))

(assert (=> d!1168920 t!326929))

(declare-fun t!326931 () Bool)

(declare-fun tb!236219 () Bool)

(assert (=> (and b!3941377 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 prefixTokens!80)))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80))))) t!326931) tb!236219))

(declare-fun result!286160 () Bool)

(assert (= result!286160 result!286018))

(assert (=> b!3940781 t!326931))

(declare-fun tb!236221 () Bool)

(declare-fun t!326933 () Bool)

(assert (=> (and b!3941377 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 prefixTokens!80)))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72))))) t!326933) tb!236221))

(declare-fun result!286162 () Bool)

(assert (= result!286162 result!286010))

(assert (=> b!3940704 t!326933))

(declare-fun t!326935 () Bool)

(declare-fun tb!236223 () Bool)

(assert (=> (and b!3941377 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 prefixTokens!80)))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80)))))) t!326935) tb!236223))

(declare-fun result!286164 () Bool)

(assert (= result!286164 result!286104))

(assert (=> b!3941164 t!326935))

(declare-fun b_and!301197 () Bool)

(declare-fun tp!1199505 () Bool)

(assert (=> b!3941377 (= tp!1199505 (and (=> t!326927 result!286156) (=> t!326935 result!286164) (=> t!326933 result!286162) (=> t!326929 result!286158) (=> t!326931 result!286160) b_and!301197))))

(declare-fun tp!1199504 () Bool)

(declare-fun e!2438753 () Bool)

(declare-fun e!2438750 () Bool)

(declare-fun b!3941376 () Bool)

(assert (=> b!3941376 (= e!2438750 (and tp!1199504 (inv!56052 (tag!7401 (rule!9499 (h!47274 (t!326797 (t!326797 prefixTokens!80)))))) (inv!56055 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 prefixTokens!80)))))) e!2438753))))

(declare-fun tp!1199506 () Bool)

(declare-fun b!3941375 () Bool)

(declare-fun e!2438751 () Bool)

(assert (=> b!3941375 (= e!2438751 (and (inv!21 (value!207054 (h!47274 (t!326797 (t!326797 prefixTokens!80))))) e!2438750 tp!1199506))))

(assert (=> b!3941377 (= e!2438753 (and tp!1199502 tp!1199505))))

(declare-fun e!2438749 () Bool)

(assert (=> b!3940902 (= tp!1199300 e!2438749)))

(declare-fun b!3941374 () Bool)

(declare-fun tp!1199503 () Bool)

(assert (=> b!3941374 (= e!2438749 (and (inv!56056 (h!47274 (t!326797 (t!326797 prefixTokens!80)))) e!2438751 tp!1199503))))

(assert (= b!3941376 b!3941377))

(assert (= b!3941375 b!3941376))

(assert (= b!3941374 b!3941375))

(assert (= (and b!3940902 (is-Cons!41854 (t!326797 (t!326797 prefixTokens!80)))) b!3941374))

(declare-fun m!4510027 () Bool)

(assert (=> b!3941376 m!4510027))

(declare-fun m!4510029 () Bool)

(assert (=> b!3941376 m!4510029))

(declare-fun m!4510031 () Bool)

(assert (=> b!3941375 m!4510031))

(declare-fun m!4510033 () Bool)

(assert (=> b!3941374 m!4510033))

(declare-fun b_lambda!115255 () Bool)

(assert (= b_lambda!115251 (or (and b!3940589 b_free!107787 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))))) (and b!3940880 b_free!107803 (= (toChars!8860 (transformation!6541 (h!47273 (t!326796 rules!2768)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))))) (and b!3940576 b_free!107779 (= (toChars!8860 (transformation!6541 (h!47273 rules!2768))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))))) (and b!3940905 b_free!107811) (and b!3940574 b_free!107783 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))))) (and b!3940901 b_free!107807 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))))) (and b!3941342 b_free!107831 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 suffixTokens!72)))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))))) (and b!3941377 b_free!107835 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 prefixTokens!80)))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))))) (and b!3941308 b_free!107827 (= (toChars!8860 (transformation!6541 (h!47273 (t!326796 (t!326796 rules!2768))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))))) b_lambda!115255)))

(declare-fun b_lambda!115257 () Bool)

(assert (= b_lambda!115253 (or (and b!3940576 b_free!107779 (= (toChars!8860 (transformation!6541 (h!47273 rules!2768))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))))) (and b!3940901 b_free!107807) (and b!3940574 b_free!107783 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 prefixTokens!80)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))))) (and b!3940589 b_free!107787 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 suffixTokens!72)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))))) (and b!3941377 b_free!107835 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 prefixTokens!80)))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))))) (and b!3941342 b_free!107831 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 (t!326797 suffixTokens!72)))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))))) (and b!3941308 b_free!107827 (= (toChars!8860 (transformation!6541 (h!47273 (t!326796 (t!326796 rules!2768))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))))) (and b!3940905 b_free!107811 (= (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 prefixTokens!80))))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))))) (and b!3940880 b_free!107803 (= (toChars!8860 (transformation!6541 (h!47273 (t!326796 rules!2768)))) (toChars!8860 (transformation!6541 (rule!9499 (h!47274 (t!326797 suffixTokens!72))))))) b_lambda!115257)))

(push 1)

(assert (not b!3941018))

(assert (not b!3940783))

(assert (not d!1168902))

(assert (not b!3941292))

(assert (not d!1168966))

(assert (not b!3941058))

(assert (not b!3941254))

(assert (not b!3941016))

(assert (not b_next!108487))

(assert (not d!1168894))

(assert (not b!3941165))

(assert (not b!3941109))

(assert (not b!3941161))

(assert (not b!3941116))

(assert (not b_next!108513))

(assert (not b!3941248))

(assert (not b!3941375))

(assert (not b!3941329))

(assert (not b!3941113))

(assert (not b!3941197))

(assert (not b!3941079))

(assert (not b!3941062))

(assert b_and!301195)

(assert (not d!1168918))

(assert (not b!3941339))

(assert tp_is_empty!19863)

(assert (not b!3941337))

(assert (not d!1168984))

(assert (not d!1168926))

(assert (not d!1168964))

(assert (not d!1168856))

(assert (not b!3941168))

(assert (not b!3941279))

(assert (not b!3941118))

(assert (not b!3941369))

(assert b_and!301189)

(assert (not b!3941183))

(assert (not b!3941327))

(assert (not b!3941155))

(assert b_and!301175)

(assert (not b!3941177))

(assert (not d!1169014))

(assert (not b!3941246))

(assert (not d!1168928))

(assert (not b!3941102))

(assert (not d!1168916))

(assert (not b!3941334))

(assert b_and!301197)

(assert (not b!3941015))

(assert (not b!3941176))

(assert (not d!1169002))

(assert (not b!3941355))

(assert (not b!3941170))

(assert (not b!3941295))

(assert (not b!3941293))

(assert (not b!3941306))

(assert (not b!3941247))

(assert (not d!1169016))

(assert (not b!3941365))

(assert (not b!3941244))

(assert (not b!3941069))

(assert (not b!3941353))

(assert (not b!3941029))

(assert (not b_lambda!115255))

(assert (not b!3941250))

(assert (not b!3941363))

(assert (not b!3941174))

(assert (not d!1169000))

(assert (not b!3941336))

(assert (not d!1168952))

(assert (not b!3941267))

(assert (not b!3941090))

(assert (not b!3941315))

(assert (not d!1168934))

(assert (not b!3941181))

(assert b_and!301153)

(assert (not b!3941150))

(assert (not b!3941328))

(assert b_and!301177)

(assert b_and!301185)

(assert (not b_next!108483))

(assert (not b!3941100))

(assert (not b!3941313))

(assert (not tb!236141))

(assert (not d!1168868))

(assert b_and!301191)

(assert (not b!3941185))

(assert (not b!3941290))

(assert (not b!3941059))

(assert (not b!3941238))

(assert (not b!3941227))

(assert (not b!3941110))

(assert (not b_lambda!115249))

(assert (not b!3941314))

(assert (not b!3941346))

(assert b_and!301183)

(assert (not b_next!108491))

(assert (not b!3941262))

(assert b_and!301181)

(assert (not b!3941280))

(assert (not b!3941297))

(assert (not b!3941272))

(assert (not d!1168996))

(assert (not b!3941111))

(assert (not b_lambda!115235))

(assert (not b!3941300))

(assert (not d!1168854))

(assert (not b!3941366))

(assert (not b!3941179))

(assert (not d!1168922))

(assert (not b_next!108539))

(assert b_and!301161)

(assert (not b!3941084))

(assert (not b!3941164))

(assert (not b!3941316))

(assert (not b!3941226))

(assert (not d!1168994))

(assert (not b!3941349))

(assert (not d!1168860))

(assert (not b!3941372))

(assert (not b!3941367))

(assert (not b!3941091))

(assert b_and!301193)

(assert (not b!3941019))

(assert (not b!3941312))

(assert (not d!1168876))

(assert (not b_next!108533))

(assert (not b!3941338))

(assert (not d!1168982))

(assert (not b!3941201))

(assert (not b!3941304))

(assert (not b!3941190))

(assert (not b!3941320))

(assert (not b!3941275))

(assert (not b_lambda!115247))

(assert (not b!3941268))

(assert (not b!3941239))

(assert (not b!3941368))

(assert (not d!1168948))

(assert (not b!3941271))

(assert (not b!3941056))

(assert (not d!1168992))

(assert (not b!3941260))

(assert b_and!301157)

(assert (not b!3941225))

(assert (not d!1168906))

(assert (not b!3941073))

(assert (not b!3941060))

(assert (not b!3941253))

(assert (not d!1168888))

(assert (not b!3941361))

(assert (not b!3941276))

(assert (not d!1168874))

(assert (not d!1168886))

(assert (not b!3941160))

(assert b_and!301187)

(assert (not b!3941345))

(assert (not b!3941175))

(assert (not d!1168864))

(assert (not b!3941296))

(assert (not b!3941061))

(assert (not b!3941020))

(assert (not b!3941307))

(assert (not b!3941371))

(assert (not b_next!108505))

(assert (not b!3941311))

(assert (not b!3941358))

(assert (not d!1168950))

(assert (not b!3941305))

(assert (not b!3941083))

(assert (not b!3941322))

(assert (not b!3941281))

(assert (not b!3941172))

(assert (not b!3941057))

(assert (not b!3941023))

(assert (not b_next!108535))

(assert (not b!3941159))

(assert (not b!3941325))

(assert (not b!3941341))

(assert (not b!3941350))

(assert (not b!3941169))

(assert (not b!3941035))

(assert (not b!3941086))

(assert (not b!3941351))

(assert (not b!3941277))

(assert (not b_next!108537))

(assert (not tb!236177))

(assert (not b_next!108531))

(assert (not b!3941166))

(assert (not b!3941354))

(assert b_and!301155)

(assert (not b!3941071))

(assert (not bm!285048))

(assert (not b!3941357))

(assert (not b!3941347))

(assert (not tb!236153))

(assert b_and!301151)

(assert (not b!3941264))

(assert (not b!3941340))

(assert (not b_next!108485))

(assert (not b_next!108481))

(assert (not b_next!108509))

(assert (not b!3941245))

(assert (not b_next!108511))

(assert (not b!3941319))

(assert (not b!3941344))

(assert b_and!301179)

(assert (not b!3941199))

(assert (not b!3940710))

(assert (not b!3941021))

(assert (not bm!285052))

(assert (not b!3941269))

(assert (not b!3941031))

(assert (not d!1168954))

(assert (not b!3941323))

(assert (not b!3941088))

(assert (not b!3941376))

(assert (not b!3941299))

(assert (not b!3941333))

(assert (not b!3941080))

(assert (not b!3941324))

(assert (not b!3941189))

(assert (not b!3941054))

(assert (not b!3941310))

(assert (not tb!236165))

(assert (not b_next!108529))

(assert (not d!1168920))

(assert (not b!3941374))

(assert (not b!3941099))

(assert (not b!3941097))

(assert (not b_lambda!115257))

(assert (not d!1168938))

(assert (not d!1168930))

(assert (not b!3941032))

(assert (not b!3941022))

(assert (not b!3941203))

(assert (not b!3941303))

(assert (not b!3941114))

(assert (not b!3941373))

(assert (not b!3941330))

(assert (not b!3941359))

(assert (not b!3941291))

(assert (not b_lambda!115237))

(assert (not d!1168898))

(assert (not d!1168910))

(assert (not b_next!108515))

(assert (not b!3941332))

(assert (not b!3941249))

(assert (not b!3941301))

(assert (not b!3941362))

(assert (not b!3941149))

(assert (not b!3941173))

(assert (not b_next!108507))

(assert b_and!301159)

(assert (not b!3941318))

(assert (not b!3941153))

(assert (not bm!285051))

(assert (not b_next!108489))

(assert (not d!1168998))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!108487))

(assert (not b_next!108513))

(assert b_and!301195)

(assert b_and!301153)

(assert b_and!301193)

(assert (not b_next!108533))

(assert b_and!301157)

(assert b_and!301187)

(assert (not b_next!108505))

(assert (not b_next!108535))

(assert b_and!301155)

(assert (not b_next!108529))

(assert (not b_next!108515))

(assert b_and!301189)

(assert b_and!301175)

(assert b_and!301197)

(assert b_and!301177)

(assert b_and!301185)

(assert (not b_next!108483))

(assert b_and!301191)

(assert b_and!301181)

(assert b_and!301183)

(assert (not b_next!108491))

(assert (not b_next!108539))

(assert b_and!301161)

(assert (not b_next!108531))

(assert (not b_next!108537))

(assert b_and!301151)

(assert (not b_next!108485))

(assert (not b_next!108481))

(assert b_and!301179)

(assert (not b_next!108509))

(assert (not b_next!108511))

(assert (not b_next!108507))

(assert b_and!301159)

(assert (not b_next!108489))

(check-sat)

(pop 1)

