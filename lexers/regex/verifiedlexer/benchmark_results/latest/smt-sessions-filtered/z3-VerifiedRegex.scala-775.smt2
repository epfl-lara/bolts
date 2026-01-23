; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43686 () Bool)

(assert start!43686)

(declare-fun b!460206 () Bool)

(declare-fun b_free!12905 () Bool)

(declare-fun b_next!12905 () Bool)

(assert (=> b!460206 (= b_free!12905 (not b_next!12905))))

(declare-fun tp!127465 () Bool)

(declare-fun b_and!49441 () Bool)

(assert (=> b!460206 (= tp!127465 b_and!49441)))

(declare-fun b_free!12907 () Bool)

(declare-fun b_next!12907 () Bool)

(assert (=> b!460206 (= b_free!12907 (not b_next!12907))))

(declare-fun tp!127468 () Bool)

(declare-fun b_and!49443 () Bool)

(assert (=> b!460206 (= tp!127468 b_and!49443)))

(declare-fun b!460177 () Bool)

(declare-fun b_free!12909 () Bool)

(declare-fun b_next!12909 () Bool)

(assert (=> b!460177 (= b_free!12909 (not b_next!12909))))

(declare-fun tp!127459 () Bool)

(declare-fun b_and!49445 () Bool)

(assert (=> b!460177 (= tp!127459 b_and!49445)))

(declare-fun b_free!12911 () Bool)

(declare-fun b_next!12911 () Bool)

(assert (=> b!460177 (= b_free!12911 (not b_next!12911))))

(declare-fun tp!127462 () Bool)

(declare-fun b_and!49447 () Bool)

(assert (=> b!460177 (= tp!127462 b_and!49447)))

(declare-fun b!460202 () Bool)

(declare-fun b_free!12913 () Bool)

(declare-fun b_next!12913 () Bool)

(assert (=> b!460202 (= b_free!12913 (not b_next!12913))))

(declare-fun tp!127467 () Bool)

(declare-fun b_and!49449 () Bool)

(assert (=> b!460202 (= tp!127467 b_and!49449)))

(declare-fun b_free!12915 () Bool)

(declare-fun b_next!12915 () Bool)

(assert (=> b!460202 (= b_free!12915 (not b_next!12915))))

(declare-fun tp!127469 () Bool)

(declare-fun b_and!49451 () Bool)

(assert (=> b!460202 (= tp!127469 b_and!49451)))

(declare-fun bs!57020 () Bool)

(declare-fun b!460194 () Bool)

(declare-fun b!460196 () Bool)

(assert (= bs!57020 (and b!460194 b!460196)))

(declare-fun lambda!13558 () Int)

(declare-fun lambda!13557 () Int)

(assert (=> bs!57020 (not (= lambda!13558 lambda!13557))))

(declare-fun b!460218 () Bool)

(declare-fun e!281946 () Bool)

(assert (=> b!460218 (= e!281946 true)))

(declare-fun b!460217 () Bool)

(declare-fun e!281945 () Bool)

(assert (=> b!460217 (= e!281945 e!281946)))

(declare-fun b!460216 () Bool)

(declare-fun e!281944 () Bool)

(assert (=> b!460216 (= e!281944 e!281945)))

(assert (=> b!460194 e!281944))

(assert (= b!460217 b!460218))

(assert (= b!460216 b!460217))

(declare-datatypes ((List!4492 0))(
  ( (Nil!4482) (Cons!4482 (h!9879 (_ BitVec 16)) (t!71804 List!4492)) )
))
(declare-datatypes ((TokenValue!895 0))(
  ( (FloatLiteralValue!1790 (text!6710 List!4492)) (TokenValueExt!894 (__x!3277 Int)) (Broken!4475 (value!29170 List!4492)) (Object!904) (End!895) (Def!895) (Underscore!895) (Match!895) (Else!895) (Error!895) (Case!895) (If!895) (Extends!895) (Abstract!895) (Class!895) (Val!895) (DelimiterValue!1790 (del!955 List!4492)) (KeywordValue!901 (value!29171 List!4492)) (CommentValue!1790 (value!29172 List!4492)) (WhitespaceValue!1790 (value!29173 List!4492)) (IndentationValue!895 (value!29174 List!4492)) (String!5554) (Int32!895) (Broken!4476 (value!29175 List!4492)) (Boolean!896) (Unit!8090) (OperatorValue!898 (op!955 List!4492)) (IdentifierValue!1790 (value!29176 List!4492)) (IdentifierValue!1791 (value!29177 List!4492)) (WhitespaceValue!1791 (value!29178 List!4492)) (True!1790) (False!1790) (Broken!4477 (value!29179 List!4492)) (Broken!4478 (value!29180 List!4492)) (True!1791) (RightBrace!895) (RightBracket!895) (Colon!895) (Null!895) (Comma!895) (LeftBracket!895) (False!1791) (LeftBrace!895) (ImaginaryLiteralValue!895 (text!6711 List!4492)) (StringLiteralValue!2685 (value!29181 List!4492)) (EOFValue!895 (value!29182 List!4492)) (IdentValue!895 (value!29183 List!4492)) (DelimiterValue!1791 (value!29184 List!4492)) (DedentValue!895 (value!29185 List!4492)) (NewLineValue!895 (value!29186 List!4492)) (IntegerValue!2685 (value!29187 (_ BitVec 32)) (text!6712 List!4492)) (IntegerValue!2686 (value!29188 Int) (text!6713 List!4492)) (Times!895) (Or!895) (Equal!895) (Minus!895) (Broken!4479 (value!29189 List!4492)) (And!895) (Div!895) (LessEqual!895) (Mod!895) (Concat!1992) (Not!895) (Plus!895) (SpaceValue!895 (value!29190 List!4492)) (IntegerValue!2687 (value!29191 Int) (text!6714 List!4492)) (StringLiteralValue!2686 (text!6715 List!4492)) (FloatLiteralValue!1791 (text!6716 List!4492)) (BytesLiteralValue!895 (value!29192 List!4492)) (CommentValue!1791 (value!29193 List!4492)) (StringLiteralValue!2687 (value!29194 List!4492)) (ErrorTokenValue!895 (msg!956 List!4492)) )
))
(declare-datatypes ((C!3116 0))(
  ( (C!3117 (val!1444 Int)) )
))
(declare-datatypes ((List!4493 0))(
  ( (Nil!4483) (Cons!4483 (h!9880 C!3116) (t!71805 List!4493)) )
))
(declare-datatypes ((IArray!3137 0))(
  ( (IArray!3138 (innerList!1626 List!4493)) )
))
(declare-datatypes ((Conc!1568 0))(
  ( (Node!1568 (left!3791 Conc!1568) (right!4121 Conc!1568) (csize!3366 Int) (cheight!1779 Int)) (Leaf!2344 (xs!4199 IArray!3137) (csize!3367 Int)) (Empty!1568) )
))
(declare-datatypes ((BalanceConc!3144 0))(
  ( (BalanceConc!3145 (c!92686 Conc!1568)) )
))
(declare-datatypes ((TokenValueInjection!1562 0))(
  ( (TokenValueInjection!1563 (toValue!1692 Int) (toChars!1551 Int)) )
))
(declare-datatypes ((String!5555 0))(
  ( (String!5556 (value!29195 String)) )
))
(declare-datatypes ((Regex!1097 0))(
  ( (ElementMatch!1097 (c!92687 C!3116)) (Concat!1993 (regOne!2706 Regex!1097) (regTwo!2706 Regex!1097)) (EmptyExpr!1097) (Star!1097 (reg!1426 Regex!1097)) (EmptyLang!1097) (Union!1097 (regOne!2707 Regex!1097) (regTwo!2707 Regex!1097)) )
))
(declare-datatypes ((Rule!1546 0))(
  ( (Rule!1547 (regex!873 Regex!1097) (tag!1133 String!5555) (isSeparator!873 Bool) (transformation!873 TokenValueInjection!1562)) )
))
(declare-datatypes ((List!4494 0))(
  ( (Nil!4484) (Cons!4484 (h!9881 Rule!1546) (t!71806 List!4494)) )
))
(declare-fun rules!1920 () List!4494)

(get-info :version)

(assert (= (and b!460194 ((_ is Cons!4484) rules!1920)) b!460216))

(declare-fun order!3997 () Int)

(declare-fun order!3999 () Int)

(declare-fun dynLambda!2734 (Int Int) Int)

(declare-fun dynLambda!2735 (Int Int) Int)

(assert (=> b!460218 (< (dynLambda!2734 order!3997 (toValue!1692 (transformation!873 (h!9881 rules!1920)))) (dynLambda!2735 order!3999 lambda!13558))))

(declare-fun order!4001 () Int)

(declare-fun dynLambda!2736 (Int Int) Int)

(assert (=> b!460218 (< (dynLambda!2736 order!4001 (toChars!1551 (transformation!873 (h!9881 rules!1920)))) (dynLambda!2735 order!3999 lambda!13558))))

(assert (=> b!460194 true))

(declare-fun b!460173 () Bool)

(declare-fun e!281913 () Bool)

(declare-datatypes ((Token!1490 0))(
  ( (Token!1491 (value!29196 TokenValue!895) (rule!1568 Rule!1546) (size!3657 Int) (originalCharacters!916 List!4493)) )
))
(declare-datatypes ((List!4495 0))(
  ( (Nil!4485) (Cons!4485 (h!9882 Token!1490) (t!71807 List!4495)) )
))
(declare-fun tokens!465 () List!4495)

(declare-fun lt!205335 () List!4493)

(declare-fun matchR!415 (Regex!1097 List!4493) Bool)

(assert (=> b!460173 (= e!281913 (matchR!415 (regex!873 (rule!1568 (h!9882 tokens!465))) lt!205335))))

(declare-fun b!460174 () Bool)

(declare-fun res!204799 () Bool)

(declare-fun e!281933 () Bool)

(assert (=> b!460174 (=> (not res!204799) (not e!281933))))

(declare-fun separatorToken!170 () Token!1490)

(assert (=> b!460174 (= res!204799 (isSeparator!873 (rule!1568 separatorToken!170)))))

(declare-fun e!281910 () Bool)

(declare-fun e!281931 () Bool)

(declare-fun tp!127461 () Bool)

(declare-fun b!460175 () Bool)

(declare-fun inv!5559 (String!5555) Bool)

(declare-fun inv!5562 (TokenValueInjection!1562) Bool)

(assert (=> b!460175 (= e!281931 (and tp!127461 (inv!5559 (tag!1133 (rule!1568 separatorToken!170))) (inv!5562 (transformation!873 (rule!1568 separatorToken!170))) e!281910))))

(declare-fun b!460176 () Bool)

(declare-fun e!281920 () Bool)

(declare-fun e!281922 () Bool)

(assert (=> b!460176 (= e!281920 e!281922)))

(declare-fun res!204809 () Bool)

(assert (=> b!460176 (=> res!204809 e!281922)))

(declare-fun e!281911 () Bool)

(assert (=> b!460176 (= res!204809 e!281911)))

(declare-fun res!204796 () Bool)

(assert (=> b!460176 (=> (not res!204796) (not e!281911))))

(declare-fun lt!205331 () Bool)

(assert (=> b!460176 (= res!204796 (not lt!205331))))

(declare-fun lt!205329 () List!4493)

(declare-fun lt!205343 () List!4493)

(assert (=> b!460176 (= lt!205331 (= lt!205329 lt!205343))))

(declare-fun e!281919 () Bool)

(assert (=> b!460177 (= e!281919 (and tp!127459 tp!127462))))

(declare-fun res!204793 () Bool)

(declare-fun e!281924 () Bool)

(assert (=> start!43686 (=> (not res!204793) (not e!281924))))

(declare-datatypes ((LexerInterface!759 0))(
  ( (LexerInterfaceExt!756 (__x!3278 Int)) (Lexer!757) )
))
(declare-fun thiss!17480 () LexerInterface!759)

(assert (=> start!43686 (= res!204793 ((_ is Lexer!757) thiss!17480))))

(assert (=> start!43686 e!281924))

(assert (=> start!43686 true))

(declare-fun e!281914 () Bool)

(assert (=> start!43686 e!281914))

(declare-fun e!281932 () Bool)

(declare-fun inv!5563 (Token!1490) Bool)

(assert (=> start!43686 (and (inv!5563 separatorToken!170) e!281932)))

(declare-fun e!281936 () Bool)

(assert (=> start!43686 e!281936))

(declare-fun b!460178 () Bool)

(declare-fun res!204798 () Bool)

(assert (=> b!460178 (=> (not res!204798) (not e!281924))))

(declare-fun isEmpty!3466 (List!4494) Bool)

(assert (=> b!460178 (= res!204798 (not (isEmpty!3466 rules!1920)))))

(declare-fun b!460179 () Bool)

(declare-fun e!281926 () Bool)

(declare-fun e!281935 () Bool)

(assert (=> b!460179 (= e!281926 e!281935)))

(declare-fun res!204806 () Bool)

(assert (=> b!460179 (=> res!204806 e!281935)))

(assert (=> b!460179 (= res!204806 lt!205331)))

(assert (=> b!460179 e!281913))

(declare-fun res!204803 () Bool)

(assert (=> b!460179 (=> (not res!204803) (not e!281913))))

(declare-datatypes ((tuple2!5474 0))(
  ( (tuple2!5475 (_1!2953 Token!1490) (_2!2953 List!4493)) )
))
(declare-fun lt!205350 () tuple2!5474)

(assert (=> b!460179 (= res!204803 (= (_1!2953 lt!205350) (h!9882 tokens!465)))))

(declare-datatypes ((Option!1180 0))(
  ( (None!1179) (Some!1179 (v!15522 tuple2!5474)) )
))
(declare-fun lt!205336 () Option!1180)

(declare-fun get!1647 (Option!1180) tuple2!5474)

(assert (=> b!460179 (= lt!205350 (get!1647 lt!205336))))

(declare-fun isDefined!1019 (Option!1180) Bool)

(assert (=> b!460179 (isDefined!1019 lt!205336)))

(declare-fun maxPrefix!475 (LexerInterface!759 List!4494 List!4493) Option!1180)

(assert (=> b!460179 (= lt!205336 (maxPrefix!475 thiss!17480 rules!1920 lt!205335))))

(declare-fun b!460180 () Bool)

(declare-fun res!204788 () Bool)

(declare-fun e!281912 () Bool)

(assert (=> b!460180 (=> (not res!204788) (not e!281912))))

(declare-fun lt!205334 () List!4493)

(declare-fun list!1996 (BalanceConc!3144) List!4493)

(declare-fun seqFromList!1111 (List!4493) BalanceConc!3144)

(assert (=> b!460180 (= res!204788 (= (list!1996 (seqFromList!1111 lt!205329)) lt!205334))))

(declare-fun tp!127464 () Bool)

(declare-fun e!281921 () Bool)

(declare-fun b!460181 () Bool)

(assert (=> b!460181 (= e!281921 (and tp!127464 (inv!5559 (tag!1133 (rule!1568 (h!9882 tokens!465)))) (inv!5562 (transformation!873 (rule!1568 (h!9882 tokens!465)))) e!281919))))

(declare-fun e!281937 () Bool)

(declare-fun lt!205338 () Option!1180)

(declare-fun b!460182 () Bool)

(declare-fun ++!1308 (List!4493 List!4493) List!4493)

(assert (=> b!460182 (= e!281937 (= (++!1308 lt!205335 (_2!2953 (get!1647 lt!205338))) lt!205329))))

(declare-fun b!460183 () Bool)

(declare-fun res!204810 () Bool)

(declare-fun e!281923 () Bool)

(assert (=> b!460183 (=> res!204810 e!281923)))

(declare-datatypes ((IArray!3139 0))(
  ( (IArray!3140 (innerList!1627 List!4495)) )
))
(declare-datatypes ((Conc!1569 0))(
  ( (Node!1569 (left!3792 Conc!1569) (right!4122 Conc!1569) (csize!3368 Int) (cheight!1780 Int)) (Leaf!2345 (xs!4200 IArray!3139) (csize!3369 Int)) (Empty!1569) )
))
(declare-datatypes ((BalanceConc!3146 0))(
  ( (BalanceConc!3147 (c!92688 Conc!1569)) )
))
(declare-fun isEmpty!3467 (BalanceConc!3146) Bool)

(declare-datatypes ((tuple2!5476 0))(
  ( (tuple2!5477 (_1!2954 BalanceConc!3146) (_2!2954 BalanceConc!3144)) )
))
(declare-fun lex!551 (LexerInterface!759 List!4494 BalanceConc!3144) tuple2!5476)

(assert (=> b!460183 (= res!204810 (isEmpty!3467 (_1!2954 (lex!551 thiss!17480 rules!1920 (seqFromList!1111 lt!205335)))))))

(declare-fun b!460184 () Bool)

(declare-fun res!204789 () Bool)

(assert (=> b!460184 (=> res!204789 e!281937)))

(declare-fun lt!205341 () List!4493)

(assert (=> b!460184 (= res!204789 (not (= lt!205341 lt!205329)))))

(declare-fun b!460185 () Bool)

(assert (=> b!460185 (= e!281933 e!281912)))

(declare-fun res!204792 () Bool)

(assert (=> b!460185 (=> (not res!204792) (not e!281912))))

(assert (=> b!460185 (= res!204792 (= lt!205329 lt!205334))))

(declare-fun lt!205330 () BalanceConc!3146)

(declare-fun printWithSeparatorTokenWhenNeededRec!432 (LexerInterface!759 List!4494 BalanceConc!3146 Token!1490 Int) BalanceConc!3144)

(assert (=> b!460185 (= lt!205334 (list!1996 (printWithSeparatorTokenWhenNeededRec!432 thiss!17480 rules!1920 lt!205330 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!440 (LexerInterface!759 List!4494 List!4495 Token!1490) List!4493)

(assert (=> b!460185 (= lt!205329 (printWithSeparatorTokenWhenNeededList!440 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!460186 () Bool)

(declare-fun res!204808 () Bool)

(assert (=> b!460186 (=> (not res!204808) (not e!281933))))

(assert (=> b!460186 (= res!204808 ((_ is Cons!4485) tokens!465))))

(declare-fun b!460187 () Bool)

(assert (=> b!460187 (= e!281924 e!281933)))

(declare-fun res!204801 () Bool)

(assert (=> b!460187 (=> (not res!204801) (not e!281933))))

(declare-fun rulesProduceEachTokenIndividually!551 (LexerInterface!759 List!4494 BalanceConc!3146) Bool)

(assert (=> b!460187 (= res!204801 (rulesProduceEachTokenIndividually!551 thiss!17480 rules!1920 lt!205330))))

(declare-fun seqFromList!1112 (List!4495) BalanceConc!3146)

(assert (=> b!460187 (= lt!205330 (seqFromList!1112 tokens!465))))

(declare-fun b!460188 () Bool)

(declare-fun res!204805 () Bool)

(assert (=> b!460188 (=> (not res!204805) (not e!281924))))

(declare-fun rulesInvariant!725 (LexerInterface!759 List!4494) Bool)

(assert (=> b!460188 (= res!204805 (rulesInvariant!725 thiss!17480 rules!1920))))

(declare-fun b!460189 () Bool)

(declare-fun res!204791 () Bool)

(assert (=> b!460189 (=> (not res!204791) (not e!281913))))

(declare-fun isEmpty!3468 (List!4493) Bool)

(assert (=> b!460189 (= res!204791 (isEmpty!3468 (_2!2953 lt!205350)))))

(declare-fun b!460190 () Bool)

(declare-fun lt!205348 () List!4493)

(assert (=> b!460190 (= e!281911 (not (= lt!205329 (++!1308 lt!205335 lt!205348))))))

(declare-fun b!460191 () Bool)

(assert (=> b!460191 (= e!281912 (not e!281920))))

(declare-fun res!204800 () Bool)

(assert (=> b!460191 (=> res!204800 e!281920)))

(declare-fun lt!205346 () BalanceConc!3144)

(assert (=> b!460191 (= res!204800 (not (= lt!205348 (list!1996 lt!205346))))))

(assert (=> b!460191 (= lt!205346 (printWithSeparatorTokenWhenNeededRec!432 thiss!17480 rules!1920 (seqFromList!1112 (t!71807 tokens!465)) separatorToken!170 0))))

(declare-fun lt!205352 () List!4493)

(assert (=> b!460191 (= lt!205352 lt!205343)))

(declare-fun lt!205337 () List!4493)

(assert (=> b!460191 (= lt!205343 (++!1308 lt!205335 lt!205337))))

(declare-fun lt!205342 () List!4493)

(assert (=> b!460191 (= lt!205352 (++!1308 (++!1308 lt!205335 lt!205342) lt!205348))))

(declare-datatypes ((Unit!8091 0))(
  ( (Unit!8092) )
))
(declare-fun lt!205332 () Unit!8091)

(declare-fun lemmaConcatAssociativity!610 (List!4493 List!4493 List!4493) Unit!8091)

(assert (=> b!460191 (= lt!205332 (lemmaConcatAssociativity!610 lt!205335 lt!205342 lt!205348))))

(declare-fun charsOf!516 (Token!1490) BalanceConc!3144)

(assert (=> b!460191 (= lt!205335 (list!1996 (charsOf!516 (h!9882 tokens!465))))))

(assert (=> b!460191 (= lt!205337 (++!1308 lt!205342 lt!205348))))

(assert (=> b!460191 (= lt!205348 (printWithSeparatorTokenWhenNeededList!440 thiss!17480 rules!1920 (t!71807 tokens!465) separatorToken!170))))

(assert (=> b!460191 (= lt!205342 (list!1996 (charsOf!516 separatorToken!170)))))

(declare-fun tp!127460 () Bool)

(declare-fun b!460192 () Bool)

(declare-fun e!281916 () Bool)

(declare-fun inv!21 (TokenValue!895) Bool)

(assert (=> b!460192 (= e!281916 (and (inv!21 (value!29196 (h!9882 tokens!465))) e!281921 tp!127460))))

(declare-fun tp!127463 () Bool)

(declare-fun b!460193 () Bool)

(assert (=> b!460193 (= e!281932 (and (inv!21 (value!29196 separatorToken!170)) e!281931 tp!127463))))

(assert (=> b!460194 (= e!281923 e!281926)))

(declare-fun res!204795 () Bool)

(assert (=> b!460194 (=> res!204795 e!281926)))

(declare-datatypes ((tuple2!5478 0))(
  ( (tuple2!5479 (_1!2955 Token!1490) (_2!2955 BalanceConc!3144)) )
))
(declare-datatypes ((Option!1181 0))(
  ( (None!1180) (Some!1180 (v!15523 tuple2!5478)) )
))
(declare-fun isDefined!1020 (Option!1181) Bool)

(declare-fun maxPrefixZipperSequence!438 (LexerInterface!759 List!4494 BalanceConc!3144) Option!1181)

(assert (=> b!460194 (= res!204795 (not (isDefined!1020 (maxPrefixZipperSequence!438 thiss!17480 rules!1920 (seqFromList!1111 (originalCharacters!916 (h!9882 tokens!465)))))))))

(declare-fun lt!205351 () Unit!8091)

(declare-fun forallContained!426 (List!4495 Int Token!1490) Unit!8091)

(assert (=> b!460194 (= lt!205351 (forallContained!426 tokens!465 lambda!13558 (h!9882 tokens!465)))))

(assert (=> b!460194 (= lt!205335 (originalCharacters!916 (h!9882 tokens!465)))))

(declare-fun b!460195 () Bool)

(declare-fun e!281925 () Bool)

(declare-fun e!281928 () Bool)

(assert (=> b!460195 (= e!281925 e!281928)))

(declare-fun res!204790 () Bool)

(assert (=> b!460195 (=> (not res!204790) (not e!281928))))

(declare-fun lt!205328 () Option!1180)

(assert (=> b!460195 (= res!204790 (isDefined!1019 lt!205328))))

(assert (=> b!460195 (= lt!205328 (maxPrefix!475 thiss!17480 rules!1920 lt!205329))))

(declare-fun res!204797 () Bool)

(assert (=> b!460196 (=> (not res!204797) (not e!281933))))

(declare-fun forall!1304 (List!4495 Int) Bool)

(assert (=> b!460196 (= res!204797 (forall!1304 tokens!465 lambda!13557))))

(declare-fun b!460197 () Bool)

(declare-fun tp!127471 () Bool)

(assert (=> b!460197 (= e!281936 (and (inv!5563 (h!9882 tokens!465)) e!281916 tp!127471))))

(declare-fun b!460198 () Bool)

(declare-fun res!204812 () Bool)

(assert (=> b!460198 (=> res!204812 e!281923)))

(declare-fun rulesProduceIndividualToken!508 (LexerInterface!759 List!4494 Token!1490) Bool)

(assert (=> b!460198 (= res!204812 (not (rulesProduceIndividualToken!508 thiss!17480 rules!1920 (h!9882 tokens!465))))))

(declare-fun tp!127466 () Bool)

(declare-fun e!281934 () Bool)

(declare-fun e!281930 () Bool)

(declare-fun b!460199 () Bool)

(assert (=> b!460199 (= e!281930 (and tp!127466 (inv!5559 (tag!1133 (h!9881 rules!1920))) (inv!5562 (transformation!873 (h!9881 rules!1920))) e!281934))))

(declare-fun b!460200 () Bool)

(declare-fun res!204794 () Bool)

(assert (=> b!460200 (=> (not res!204794) (not e!281933))))

(assert (=> b!460200 (= res!204794 (rulesProduceIndividualToken!508 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!460201 () Bool)

(assert (=> b!460201 (= e!281935 e!281937)))

(declare-fun res!204804 () Bool)

(assert (=> b!460201 (=> res!204804 e!281937)))

(declare-fun isPrefix!525 (List!4493 List!4493) Bool)

(assert (=> b!460201 (= res!204804 (not (isPrefix!525 lt!205335 lt!205329)))))

(assert (=> b!460201 (= lt!205338 (maxPrefix!475 thiss!17480 rules!1920 lt!205329))))

(assert (=> b!460201 (isPrefix!525 lt!205335 lt!205341)))

(assert (=> b!460201 (= lt!205341 (++!1308 lt!205335 lt!205348))))

(declare-fun lt!205345 () Unit!8091)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!410 (List!4493 List!4493) Unit!8091)

(assert (=> b!460201 (= lt!205345 (lemmaConcatTwoListThenFirstIsPrefix!410 lt!205335 lt!205348))))

(declare-fun filter!101 (List!4495 Int) List!4495)

(declare-fun list!1997 (BalanceConc!3146) List!4495)

(assert (=> b!460201 (= (filter!101 (list!1997 (_1!2954 (lex!551 thiss!17480 rules!1920 lt!205346))) lambda!13557) (t!71807 tokens!465))))

(declare-fun lt!205344 () Unit!8091)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!92 (LexerInterface!759 List!4494 List!4495 Token!1490) Unit!8091)

(assert (=> b!460201 (= lt!205344 (theoremInvertabilityFromTokensSepTokenWhenNeeded!92 thiss!17480 rules!1920 (t!71807 tokens!465) separatorToken!170))))

(assert (=> b!460201 e!281925))

(declare-fun res!204811 () Bool)

(assert (=> b!460201 (=> res!204811 e!281925)))

(declare-fun isEmpty!3469 (List!4495) Bool)

(assert (=> b!460201 (= res!204811 (isEmpty!3469 tokens!465))))

(declare-fun lt!205333 () Unit!8091)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!274 (LexerInterface!759 List!4494 List!4495 Token!1490) Unit!8091)

(assert (=> b!460201 (= lt!205333 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!274 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> b!460202 (= e!281934 (and tp!127467 tp!127469))))

(declare-fun b!460203 () Bool)

(declare-fun res!204807 () Bool)

(assert (=> b!460203 (=> (not res!204807) (not e!281933))))

(declare-fun sepAndNonSepRulesDisjointChars!462 (List!4494 List!4494) Bool)

(assert (=> b!460203 (= res!204807 (sepAndNonSepRulesDisjointChars!462 rules!1920 rules!1920))))

(declare-fun b!460204 () Bool)

(declare-fun head!1128 (List!4495) Token!1490)

(assert (=> b!460204 (= e!281928 (= (_1!2953 (get!1647 lt!205328)) (head!1128 tokens!465)))))

(declare-fun b!460205 () Bool)

(declare-fun tp!127470 () Bool)

(assert (=> b!460205 (= e!281914 (and e!281930 tp!127470))))

(assert (=> b!460206 (= e!281910 (and tp!127465 tp!127468))))

(declare-fun b!460207 () Bool)

(assert (=> b!460207 (= e!281922 e!281923)))

(declare-fun res!204802 () Bool)

(assert (=> b!460207 (=> res!204802 e!281923)))

(declare-fun lt!205347 () List!4493)

(declare-fun lt!205340 () List!4493)

(assert (=> b!460207 (= res!204802 (or (not (= lt!205347 lt!205340)) (not (= lt!205340 lt!205335)) (not (= lt!205347 lt!205335))))))

(declare-fun printList!433 (LexerInterface!759 List!4495) List!4493)

(assert (=> b!460207 (= lt!205340 (printList!433 thiss!17480 (Cons!4485 (h!9882 tokens!465) Nil!4485)))))

(declare-fun lt!205349 () BalanceConc!3144)

(assert (=> b!460207 (= lt!205347 (list!1996 lt!205349))))

(declare-fun lt!205339 () BalanceConc!3146)

(declare-fun printTailRec!445 (LexerInterface!759 BalanceConc!3146 Int BalanceConc!3144) BalanceConc!3144)

(assert (=> b!460207 (= lt!205349 (printTailRec!445 thiss!17480 lt!205339 0 (BalanceConc!3145 Empty!1568)))))

(declare-fun print!484 (LexerInterface!759 BalanceConc!3146) BalanceConc!3144)

(assert (=> b!460207 (= lt!205349 (print!484 thiss!17480 lt!205339))))

(declare-fun singletonSeq!419 (Token!1490) BalanceConc!3146)

(assert (=> b!460207 (= lt!205339 (singletonSeq!419 (h!9882 tokens!465)))))

(assert (= (and start!43686 res!204793) b!460178))

(assert (= (and b!460178 res!204798) b!460188))

(assert (= (and b!460188 res!204805) b!460187))

(assert (= (and b!460187 res!204801) b!460200))

(assert (= (and b!460200 res!204794) b!460174))

(assert (= (and b!460174 res!204799) b!460196))

(assert (= (and b!460196 res!204797) b!460203))

(assert (= (and b!460203 res!204807) b!460186))

(assert (= (and b!460186 res!204808) b!460185))

(assert (= (and b!460185 res!204792) b!460180))

(assert (= (and b!460180 res!204788) b!460191))

(assert (= (and b!460191 (not res!204800)) b!460176))

(assert (= (and b!460176 res!204796) b!460190))

(assert (= (and b!460176 (not res!204809)) b!460207))

(assert (= (and b!460207 (not res!204802)) b!460198))

(assert (= (and b!460198 (not res!204812)) b!460183))

(assert (= (and b!460183 (not res!204810)) b!460194))

(assert (= (and b!460194 (not res!204795)) b!460179))

(assert (= (and b!460179 res!204803) b!460189))

(assert (= (and b!460189 res!204791) b!460173))

(assert (= (and b!460179 (not res!204806)) b!460201))

(assert (= (and b!460201 (not res!204811)) b!460195))

(assert (= (and b!460195 res!204790) b!460204))

(assert (= (and b!460201 (not res!204804)) b!460184))

(assert (= (and b!460184 (not res!204789)) b!460182))

(assert (= b!460199 b!460202))

(assert (= b!460205 b!460199))

(assert (= (and start!43686 ((_ is Cons!4484) rules!1920)) b!460205))

(assert (= b!460175 b!460206))

(assert (= b!460193 b!460175))

(assert (= start!43686 b!460193))

(assert (= b!460181 b!460177))

(assert (= b!460192 b!460181))

(assert (= b!460197 b!460192))

(assert (= (and start!43686 ((_ is Cons!4485) tokens!465)) b!460197))

(declare-fun m!728265 () Bool)

(assert (=> b!460203 m!728265))

(declare-fun m!728267 () Bool)

(assert (=> b!460201 m!728267))

(declare-fun m!728269 () Bool)

(assert (=> b!460201 m!728269))

(declare-fun m!728271 () Bool)

(assert (=> b!460201 m!728271))

(declare-fun m!728273 () Bool)

(assert (=> b!460201 m!728273))

(declare-fun m!728275 () Bool)

(assert (=> b!460201 m!728275))

(declare-fun m!728277 () Bool)

(assert (=> b!460201 m!728277))

(declare-fun m!728279 () Bool)

(assert (=> b!460201 m!728279))

(assert (=> b!460201 m!728271))

(declare-fun m!728281 () Bool)

(assert (=> b!460201 m!728281))

(declare-fun m!728283 () Bool)

(assert (=> b!460201 m!728283))

(declare-fun m!728285 () Bool)

(assert (=> b!460201 m!728285))

(declare-fun m!728287 () Bool)

(assert (=> b!460201 m!728287))

(declare-fun m!728289 () Bool)

(assert (=> b!460173 m!728289))

(assert (=> b!460190 m!728283))

(declare-fun m!728291 () Bool)

(assert (=> b!460183 m!728291))

(assert (=> b!460183 m!728291))

(declare-fun m!728293 () Bool)

(assert (=> b!460183 m!728293))

(declare-fun m!728295 () Bool)

(assert (=> b!460183 m!728295))

(declare-fun m!728297 () Bool)

(assert (=> b!460191 m!728297))

(declare-fun m!728299 () Bool)

(assert (=> b!460191 m!728299))

(declare-fun m!728301 () Bool)

(assert (=> b!460191 m!728301))

(declare-fun m!728303 () Bool)

(assert (=> b!460191 m!728303))

(declare-fun m!728305 () Bool)

(assert (=> b!460191 m!728305))

(declare-fun m!728307 () Bool)

(assert (=> b!460191 m!728307))

(declare-fun m!728309 () Bool)

(assert (=> b!460191 m!728309))

(declare-fun m!728311 () Bool)

(assert (=> b!460191 m!728311))

(assert (=> b!460191 m!728297))

(declare-fun m!728313 () Bool)

(assert (=> b!460191 m!728313))

(assert (=> b!460191 m!728309))

(declare-fun m!728315 () Bool)

(assert (=> b!460191 m!728315))

(declare-fun m!728317 () Bool)

(assert (=> b!460191 m!728317))

(declare-fun m!728319 () Bool)

(assert (=> b!460191 m!728319))

(assert (=> b!460191 m!728305))

(declare-fun m!728321 () Bool)

(assert (=> b!460191 m!728321))

(assert (=> b!460191 m!728317))

(declare-fun m!728323 () Bool)

(assert (=> b!460187 m!728323))

(declare-fun m!728325 () Bool)

(assert (=> b!460187 m!728325))

(declare-fun m!728327 () Bool)

(assert (=> start!43686 m!728327))

(declare-fun m!728329 () Bool)

(assert (=> b!460195 m!728329))

(assert (=> b!460195 m!728277))

(declare-fun m!728331 () Bool)

(assert (=> b!460180 m!728331))

(assert (=> b!460180 m!728331))

(declare-fun m!728333 () Bool)

(assert (=> b!460180 m!728333))

(declare-fun m!728335 () Bool)

(assert (=> b!460188 m!728335))

(declare-fun m!728337 () Bool)

(assert (=> b!460198 m!728337))

(declare-fun m!728339 () Bool)

(assert (=> b!460193 m!728339))

(declare-fun m!728341 () Bool)

(assert (=> b!460207 m!728341))

(declare-fun m!728343 () Bool)

(assert (=> b!460207 m!728343))

(declare-fun m!728345 () Bool)

(assert (=> b!460207 m!728345))

(declare-fun m!728347 () Bool)

(assert (=> b!460207 m!728347))

(declare-fun m!728349 () Bool)

(assert (=> b!460207 m!728349))

(declare-fun m!728351 () Bool)

(assert (=> b!460179 m!728351))

(declare-fun m!728353 () Bool)

(assert (=> b!460179 m!728353))

(declare-fun m!728355 () Bool)

(assert (=> b!460179 m!728355))

(declare-fun m!728357 () Bool)

(assert (=> b!460185 m!728357))

(assert (=> b!460185 m!728357))

(declare-fun m!728359 () Bool)

(assert (=> b!460185 m!728359))

(declare-fun m!728361 () Bool)

(assert (=> b!460185 m!728361))

(declare-fun m!728363 () Bool)

(assert (=> b!460199 m!728363))

(declare-fun m!728365 () Bool)

(assert (=> b!460199 m!728365))

(declare-fun m!728367 () Bool)

(assert (=> b!460200 m!728367))

(declare-fun m!728369 () Bool)

(assert (=> b!460194 m!728369))

(assert (=> b!460194 m!728369))

(declare-fun m!728371 () Bool)

(assert (=> b!460194 m!728371))

(assert (=> b!460194 m!728371))

(declare-fun m!728373 () Bool)

(assert (=> b!460194 m!728373))

(declare-fun m!728375 () Bool)

(assert (=> b!460194 m!728375))

(declare-fun m!728377 () Bool)

(assert (=> b!460175 m!728377))

(declare-fun m!728379 () Bool)

(assert (=> b!460175 m!728379))

(declare-fun m!728381 () Bool)

(assert (=> b!460196 m!728381))

(declare-fun m!728383 () Bool)

(assert (=> b!460189 m!728383))

(declare-fun m!728385 () Bool)

(assert (=> b!460181 m!728385))

(declare-fun m!728387 () Bool)

(assert (=> b!460181 m!728387))

(declare-fun m!728389 () Bool)

(assert (=> b!460178 m!728389))

(declare-fun m!728391 () Bool)

(assert (=> b!460204 m!728391))

(declare-fun m!728393 () Bool)

(assert (=> b!460204 m!728393))

(declare-fun m!728395 () Bool)

(assert (=> b!460192 m!728395))

(declare-fun m!728397 () Bool)

(assert (=> b!460197 m!728397))

(declare-fun m!728399 () Bool)

(assert (=> b!460182 m!728399))

(declare-fun m!728401 () Bool)

(assert (=> b!460182 m!728401))

(check-sat (not b!460195) (not b!460173) (not b!460190) (not b!460201) (not b!460188) b_and!49451 (not b_next!12913) (not b!460193) (not b!460192) (not start!43686) b_and!49449 (not b!460191) (not b!460216) (not b_next!12911) (not b!460205) b_and!49447 (not b_next!12907) (not b!460200) (not b!460185) (not b!460196) (not b!460197) b_and!49443 (not b!460187) (not b!460175) (not b!460199) (not b!460194) (not b!460181) (not b!460207) (not b_next!12905) (not b!460178) (not b_next!12909) (not b!460182) (not b!460189) b_and!49445 (not b!460198) (not b!460183) b_and!49441 (not b!460203) (not b_next!12915) (not b!460179) (not b!460180) (not b!460204))
(check-sat (not b_next!12907) b_and!49443 b_and!49451 (not b_next!12913) (not b_next!12905) b_and!49449 (not b_next!12909) b_and!49445 (not b_next!12911) b_and!49441 b_and!49447 (not b_next!12915))
(get-model)

(declare-fun b!460249 () Bool)

(declare-fun res!204840 () Bool)

(declare-fun e!281958 () Bool)

(assert (=> b!460249 (=> (not res!204840) (not e!281958))))

(declare-fun lt!205365 () List!4493)

(declare-fun size!3660 (List!4493) Int)

(assert (=> b!460249 (= res!204840 (= (size!3660 lt!205365) (+ (size!3660 lt!205335) (size!3660 (_2!2953 (get!1647 lt!205338))))))))

(declare-fun b!460248 () Bool)

(declare-fun e!281957 () List!4493)

(assert (=> b!460248 (= e!281957 (Cons!4483 (h!9880 lt!205335) (++!1308 (t!71805 lt!205335) (_2!2953 (get!1647 lt!205338)))))))

(declare-fun b!460250 () Bool)

(assert (=> b!460250 (= e!281958 (or (not (= (_2!2953 (get!1647 lt!205338)) Nil!4483)) (= lt!205365 lt!205335)))))

(declare-fun d!175176 () Bool)

(assert (=> d!175176 e!281958))

(declare-fun res!204841 () Bool)

(assert (=> d!175176 (=> (not res!204841) (not e!281958))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!748 (List!4493) (InoxSet C!3116))

(assert (=> d!175176 (= res!204841 (= (content!748 lt!205365) ((_ map or) (content!748 lt!205335) (content!748 (_2!2953 (get!1647 lt!205338))))))))

(assert (=> d!175176 (= lt!205365 e!281957)))

(declare-fun c!92693 () Bool)

(assert (=> d!175176 (= c!92693 ((_ is Nil!4483) lt!205335))))

(assert (=> d!175176 (= (++!1308 lt!205335 (_2!2953 (get!1647 lt!205338))) lt!205365)))

(declare-fun b!460247 () Bool)

(assert (=> b!460247 (= e!281957 (_2!2953 (get!1647 lt!205338)))))

(assert (= (and d!175176 c!92693) b!460247))

(assert (= (and d!175176 (not c!92693)) b!460248))

(assert (= (and d!175176 res!204841) b!460249))

(assert (= (and b!460249 res!204840) b!460250))

(declare-fun m!728405 () Bool)

(assert (=> b!460249 m!728405))

(declare-fun m!728407 () Bool)

(assert (=> b!460249 m!728407))

(declare-fun m!728409 () Bool)

(assert (=> b!460249 m!728409))

(declare-fun m!728411 () Bool)

(assert (=> b!460248 m!728411))

(declare-fun m!728413 () Bool)

(assert (=> d!175176 m!728413))

(declare-fun m!728415 () Bool)

(assert (=> d!175176 m!728415))

(declare-fun m!728417 () Bool)

(assert (=> d!175176 m!728417))

(assert (=> b!460182 d!175176))

(declare-fun d!175178 () Bool)

(assert (=> d!175178 (= (get!1647 lt!205338) (v!15522 lt!205338))))

(assert (=> b!460182 d!175178))

(declare-fun lt!205373 () Bool)

(declare-fun d!175180 () Bool)

(assert (=> d!175180 (= lt!205373 (isEmpty!3469 (list!1997 (_1!2954 (lex!551 thiss!17480 rules!1920 (seqFromList!1111 lt!205335))))))))

(declare-fun isEmpty!3471 (Conc!1569) Bool)

(assert (=> d!175180 (= lt!205373 (isEmpty!3471 (c!92688 (_1!2954 (lex!551 thiss!17480 rules!1920 (seqFromList!1111 lt!205335))))))))

(assert (=> d!175180 (= (isEmpty!3467 (_1!2954 (lex!551 thiss!17480 rules!1920 (seqFromList!1111 lt!205335)))) lt!205373)))

(declare-fun bs!57022 () Bool)

(assert (= bs!57022 d!175180))

(declare-fun m!728453 () Bool)

(assert (=> bs!57022 m!728453))

(assert (=> bs!57022 m!728453))

(declare-fun m!728455 () Bool)

(assert (=> bs!57022 m!728455))

(declare-fun m!728457 () Bool)

(assert (=> bs!57022 m!728457))

(assert (=> b!460183 d!175180))

(declare-fun b!460282 () Bool)

(declare-fun e!281974 () Bool)

(declare-fun e!281975 () Bool)

(assert (=> b!460282 (= e!281974 e!281975)))

(declare-fun res!204863 () Bool)

(declare-fun lt!205382 () tuple2!5476)

(declare-fun size!3662 (BalanceConc!3144) Int)

(assert (=> b!460282 (= res!204863 (< (size!3662 (_2!2954 lt!205382)) (size!3662 (seqFromList!1111 lt!205335))))))

(assert (=> b!460282 (=> (not res!204863) (not e!281975))))

(declare-fun d!175184 () Bool)

(declare-fun e!281976 () Bool)

(assert (=> d!175184 e!281976))

(declare-fun res!204862 () Bool)

(assert (=> d!175184 (=> (not res!204862) (not e!281976))))

(assert (=> d!175184 (= res!204862 e!281974)))

(declare-fun c!92700 () Bool)

(declare-fun size!3664 (BalanceConc!3146) Int)

(assert (=> d!175184 (= c!92700 (> (size!3664 (_1!2954 lt!205382)) 0))))

(declare-fun lexTailRecV2!262 (LexerInterface!759 List!4494 BalanceConc!3144 BalanceConc!3144 BalanceConc!3144 BalanceConc!3146) tuple2!5476)

(assert (=> d!175184 (= lt!205382 (lexTailRecV2!262 thiss!17480 rules!1920 (seqFromList!1111 lt!205335) (BalanceConc!3145 Empty!1568) (seqFromList!1111 lt!205335) (BalanceConc!3147 Empty!1569)))))

(assert (=> d!175184 (= (lex!551 thiss!17480 rules!1920 (seqFromList!1111 lt!205335)) lt!205382)))

(declare-fun b!460283 () Bool)

(declare-fun res!204861 () Bool)

(assert (=> b!460283 (=> (not res!204861) (not e!281976))))

(declare-datatypes ((tuple2!5482 0))(
  ( (tuple2!5483 (_1!2957 List!4495) (_2!2957 List!4493)) )
))
(declare-fun lexList!297 (LexerInterface!759 List!4494 List!4493) tuple2!5482)

(assert (=> b!460283 (= res!204861 (= (list!1997 (_1!2954 lt!205382)) (_1!2957 (lexList!297 thiss!17480 rules!1920 (list!1996 (seqFromList!1111 lt!205335))))))))

(declare-fun b!460284 () Bool)

(assert (=> b!460284 (= e!281975 (not (isEmpty!3467 (_1!2954 lt!205382))))))

(declare-fun b!460285 () Bool)

(assert (=> b!460285 (= e!281974 (= (_2!2954 lt!205382) (seqFromList!1111 lt!205335)))))

(declare-fun b!460286 () Bool)

(assert (=> b!460286 (= e!281976 (= (list!1996 (_2!2954 lt!205382)) (_2!2957 (lexList!297 thiss!17480 rules!1920 (list!1996 (seqFromList!1111 lt!205335))))))))

(assert (= (and d!175184 c!92700) b!460282))

(assert (= (and d!175184 (not c!92700)) b!460285))

(assert (= (and b!460282 res!204863) b!460284))

(assert (= (and d!175184 res!204862) b!460283))

(assert (= (and b!460283 res!204861) b!460286))

(declare-fun m!728481 () Bool)

(assert (=> b!460286 m!728481))

(assert (=> b!460286 m!728291))

(declare-fun m!728483 () Bool)

(assert (=> b!460286 m!728483))

(assert (=> b!460286 m!728483))

(declare-fun m!728485 () Bool)

(assert (=> b!460286 m!728485))

(declare-fun m!728487 () Bool)

(assert (=> d!175184 m!728487))

(assert (=> d!175184 m!728291))

(assert (=> d!175184 m!728291))

(declare-fun m!728489 () Bool)

(assert (=> d!175184 m!728489))

(declare-fun m!728491 () Bool)

(assert (=> b!460282 m!728491))

(assert (=> b!460282 m!728291))

(declare-fun m!728493 () Bool)

(assert (=> b!460282 m!728493))

(declare-fun m!728495 () Bool)

(assert (=> b!460283 m!728495))

(assert (=> b!460283 m!728291))

(assert (=> b!460283 m!728483))

(assert (=> b!460283 m!728483))

(assert (=> b!460283 m!728485))

(declare-fun m!728497 () Bool)

(assert (=> b!460284 m!728497))

(assert (=> b!460183 d!175184))

(declare-fun d!175190 () Bool)

(declare-fun fromListB!492 (List!4493) BalanceConc!3144)

(assert (=> d!175190 (= (seqFromList!1111 lt!205335) (fromListB!492 lt!205335))))

(declare-fun bs!57026 () Bool)

(assert (= bs!57026 d!175190))

(declare-fun m!728499 () Bool)

(assert (=> bs!57026 m!728499))

(assert (=> b!460183 d!175190))

(declare-fun d!175192 () Bool)

(assert (=> d!175192 (= (get!1647 lt!205328) (v!15522 lt!205328))))

(assert (=> b!460204 d!175192))

(declare-fun d!175194 () Bool)

(assert (=> d!175194 (= (head!1128 tokens!465) (h!9882 tokens!465))))

(assert (=> b!460204 d!175194))

(declare-fun bs!57028 () Bool)

(declare-fun d!175196 () Bool)

(assert (= bs!57028 (and d!175196 b!460196)))

(declare-fun lambda!13566 () Int)

(assert (=> bs!57028 (not (= lambda!13566 lambda!13557))))

(declare-fun bs!57029 () Bool)

(assert (= bs!57029 (and d!175196 b!460194)))

(assert (=> bs!57029 (= lambda!13566 lambda!13558)))

(declare-fun b!460341 () Bool)

(declare-fun e!282012 () Bool)

(assert (=> b!460341 (= e!282012 true)))

(declare-fun b!460340 () Bool)

(declare-fun e!282011 () Bool)

(assert (=> b!460340 (= e!282011 e!282012)))

(declare-fun b!460339 () Bool)

(declare-fun e!282010 () Bool)

(assert (=> b!460339 (= e!282010 e!282011)))

(assert (=> d!175196 e!282010))

(assert (= b!460340 b!460341))

(assert (= b!460339 b!460340))

(assert (= (and d!175196 ((_ is Cons!4484) rules!1920)) b!460339))

(assert (=> b!460341 (< (dynLambda!2734 order!3997 (toValue!1692 (transformation!873 (h!9881 rules!1920)))) (dynLambda!2735 order!3999 lambda!13566))))

(assert (=> b!460341 (< (dynLambda!2736 order!4001 (toChars!1551 (transformation!873 (h!9881 rules!1920)))) (dynLambda!2735 order!3999 lambda!13566))))

(assert (=> d!175196 true))

(declare-fun e!282009 () Bool)

(assert (=> d!175196 e!282009))

(declare-fun res!204897 () Bool)

(assert (=> d!175196 (=> (not res!204897) (not e!282009))))

(declare-fun lt!205398 () Bool)

(assert (=> d!175196 (= res!204897 (= lt!205398 (forall!1304 (list!1997 lt!205330) lambda!13566)))))

(declare-fun forall!1305 (BalanceConc!3146 Int) Bool)

(assert (=> d!175196 (= lt!205398 (forall!1305 lt!205330 lambda!13566))))

(assert (=> d!175196 (not (isEmpty!3466 rules!1920))))

(assert (=> d!175196 (= (rulesProduceEachTokenIndividually!551 thiss!17480 rules!1920 lt!205330) lt!205398)))

(declare-fun b!460338 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!324 (LexerInterface!759 List!4494 List!4495) Bool)

(assert (=> b!460338 (= e!282009 (= lt!205398 (rulesProduceEachTokenIndividuallyList!324 thiss!17480 rules!1920 (list!1997 lt!205330))))))

(assert (= (and d!175196 res!204897) b!460338))

(declare-fun m!728553 () Bool)

(assert (=> d!175196 m!728553))

(assert (=> d!175196 m!728553))

(declare-fun m!728555 () Bool)

(assert (=> d!175196 m!728555))

(declare-fun m!728557 () Bool)

(assert (=> d!175196 m!728557))

(assert (=> d!175196 m!728389))

(assert (=> b!460338 m!728553))

(assert (=> b!460338 m!728553))

(declare-fun m!728559 () Bool)

(assert (=> b!460338 m!728559))

(assert (=> b!460187 d!175196))

(declare-fun d!175210 () Bool)

(declare-fun fromListB!493 (List!4495) BalanceConc!3146)

(assert (=> d!175210 (= (seqFromList!1112 tokens!465) (fromListB!493 tokens!465))))

(declare-fun bs!57030 () Bool)

(assert (= bs!57030 d!175210))

(declare-fun m!728561 () Bool)

(assert (=> bs!57030 m!728561))

(assert (=> b!460187 d!175210))

(declare-fun d!175212 () Bool)

(declare-fun list!1999 (Conc!1568) List!4493)

(assert (=> d!175212 (= (list!1996 (printWithSeparatorTokenWhenNeededRec!432 thiss!17480 rules!1920 lt!205330 separatorToken!170 0)) (list!1999 (c!92686 (printWithSeparatorTokenWhenNeededRec!432 thiss!17480 rules!1920 lt!205330 separatorToken!170 0))))))

(declare-fun bs!57031 () Bool)

(assert (= bs!57031 d!175212))

(declare-fun m!728563 () Bool)

(assert (=> bs!57031 m!728563))

(assert (=> b!460185 d!175212))

(declare-fun bs!57036 () Bool)

(declare-fun d!175214 () Bool)

(assert (= bs!57036 (and d!175214 b!460196)))

(declare-fun lambda!13571 () Int)

(assert (=> bs!57036 (= lambda!13571 lambda!13557)))

(declare-fun bs!57037 () Bool)

(assert (= bs!57037 (and d!175214 b!460194)))

(assert (=> bs!57037 (not (= lambda!13571 lambda!13558))))

(declare-fun bs!57038 () Bool)

(assert (= bs!57038 (and d!175214 d!175196)))

(assert (=> bs!57038 (not (= lambda!13571 lambda!13566))))

(declare-fun bs!57039 () Bool)

(declare-fun b!460437 () Bool)

(assert (= bs!57039 (and b!460437 b!460196)))

(declare-fun lambda!13572 () Int)

(assert (=> bs!57039 (not (= lambda!13572 lambda!13557))))

(declare-fun bs!57040 () Bool)

(assert (= bs!57040 (and b!460437 b!460194)))

(assert (=> bs!57040 (= lambda!13572 lambda!13558)))

(declare-fun bs!57041 () Bool)

(assert (= bs!57041 (and b!460437 d!175196)))

(assert (=> bs!57041 (= lambda!13572 lambda!13566)))

(declare-fun bs!57042 () Bool)

(assert (= bs!57042 (and b!460437 d!175214)))

(assert (=> bs!57042 (not (= lambda!13572 lambda!13571))))

(declare-fun b!460447 () Bool)

(declare-fun e!282074 () Bool)

(assert (=> b!460447 (= e!282074 true)))

(declare-fun b!460446 () Bool)

(declare-fun e!282073 () Bool)

(assert (=> b!460446 (= e!282073 e!282074)))

(declare-fun b!460445 () Bool)

(declare-fun e!282072 () Bool)

(assert (=> b!460445 (= e!282072 e!282073)))

(assert (=> b!460437 e!282072))

(assert (= b!460446 b!460447))

(assert (= b!460445 b!460446))

(assert (= (and b!460437 ((_ is Cons!4484) rules!1920)) b!460445))

(assert (=> b!460447 (< (dynLambda!2734 order!3997 (toValue!1692 (transformation!873 (h!9881 rules!1920)))) (dynLambda!2735 order!3999 lambda!13572))))

(assert (=> b!460447 (< (dynLambda!2736 order!4001 (toChars!1551 (transformation!873 (h!9881 rules!1920)))) (dynLambda!2735 order!3999 lambda!13572))))

(assert (=> b!460437 true))

(declare-fun bm!31884 () Bool)

(declare-fun call!31889 () BalanceConc!3144)

(declare-fun call!31892 () BalanceConc!3144)

(declare-fun call!31893 () BalanceConc!3144)

(declare-fun c!92735 () Bool)

(declare-fun lt!205452 () BalanceConc!3144)

(declare-fun ++!1309 (BalanceConc!3144 BalanceConc!3144) BalanceConc!3144)

(assert (=> bm!31884 (= call!31889 (++!1309 call!31893 (ite c!92735 lt!205452 call!31892)))))

(declare-fun b!460436 () Bool)

(declare-fun e!282071 () Bool)

(declare-fun lt!205449 () Option!1181)

(declare-fun call!31890 () Token!1490)

(assert (=> b!460436 (= e!282071 (not (= (_1!2955 (v!15523 lt!205449)) call!31890)))))

(declare-fun bm!31885 () Bool)

(declare-fun call!31891 () Token!1490)

(assert (=> bm!31885 (= call!31893 (charsOf!516 (ite c!92735 call!31890 call!31891)))))

(declare-fun lt!205450 () BalanceConc!3144)

(declare-fun dropList!249 (BalanceConc!3146 Int) List!4495)

(assert (=> d!175214 (= (list!1996 lt!205450) (printWithSeparatorTokenWhenNeededList!440 thiss!17480 rules!1920 (dropList!249 lt!205330 0) separatorToken!170))))

(declare-fun e!282067 () BalanceConc!3144)

(assert (=> d!175214 (= lt!205450 e!282067)))

(declare-fun c!92733 () Bool)

(assert (=> d!175214 (= c!92733 (>= 0 (size!3664 lt!205330)))))

(declare-fun lt!205448 () Unit!8091)

(declare-fun lemmaContentSubsetPreservesForall!193 (List!4495 List!4495 Int) Unit!8091)

(assert (=> d!175214 (= lt!205448 (lemmaContentSubsetPreservesForall!193 (list!1997 lt!205330) (dropList!249 lt!205330 0) lambda!13571))))

(declare-fun e!282069 () Bool)

(assert (=> d!175214 e!282069))

(declare-fun res!204946 () Bool)

(assert (=> d!175214 (=> (not res!204946) (not e!282069))))

(assert (=> d!175214 (= res!204946 (>= 0 0))))

(assert (=> d!175214 (= (printWithSeparatorTokenWhenNeededRec!432 thiss!17480 rules!1920 lt!205330 separatorToken!170 0) lt!205450)))

(declare-fun e!282070 () BalanceConc!3144)

(assert (=> b!460437 (= e!282067 e!282070)))

(declare-fun lt!205439 () List!4495)

(assert (=> b!460437 (= lt!205439 (list!1997 lt!205330))))

(declare-fun lt!205440 () Unit!8091)

(declare-fun lemmaDropApply!289 (List!4495 Int) Unit!8091)

(assert (=> b!460437 (= lt!205440 (lemmaDropApply!289 lt!205439 0))))

(declare-fun drop!318 (List!4495 Int) List!4495)

(declare-fun apply!1148 (List!4495 Int) Token!1490)

(assert (=> b!460437 (= (head!1128 (drop!318 lt!205439 0)) (apply!1148 lt!205439 0))))

(declare-fun lt!205441 () Unit!8091)

(assert (=> b!460437 (= lt!205441 lt!205440)))

(declare-fun lt!205445 () List!4495)

(assert (=> b!460437 (= lt!205445 (list!1997 lt!205330))))

(declare-fun lt!205443 () Unit!8091)

(declare-fun lemmaDropTail!281 (List!4495 Int) Unit!8091)

(assert (=> b!460437 (= lt!205443 (lemmaDropTail!281 lt!205445 0))))

(declare-fun tail!648 (List!4495) List!4495)

(assert (=> b!460437 (= (tail!648 (drop!318 lt!205445 0)) (drop!318 lt!205445 (+ 0 1)))))

(declare-fun lt!205442 () Unit!8091)

(assert (=> b!460437 (= lt!205442 lt!205443)))

(declare-fun lt!205446 () Unit!8091)

(declare-fun apply!1149 (BalanceConc!3146 Int) Token!1490)

(assert (=> b!460437 (= lt!205446 (forallContained!426 (list!1997 lt!205330) lambda!13572 (apply!1149 lt!205330 0)))))

(assert (=> b!460437 (= lt!205452 (printWithSeparatorTokenWhenNeededRec!432 thiss!17480 rules!1920 lt!205330 separatorToken!170 (+ 0 1)))))

(assert (=> b!460437 (= lt!205449 (maxPrefixZipperSequence!438 thiss!17480 rules!1920 (++!1309 (charsOf!516 (apply!1149 lt!205330 0)) lt!205452)))))

(declare-fun res!204948 () Bool)

(assert (=> b!460437 (= res!204948 ((_ is Some!1180) lt!205449))))

(declare-fun e!282068 () Bool)

(assert (=> b!460437 (=> (not res!204948) (not e!282068))))

(assert (=> b!460437 (= c!92735 e!282068)))

(declare-fun bm!31886 () Bool)

(assert (=> bm!31886 (= call!31891 call!31890)))

(declare-fun b!460438 () Bool)

(declare-fun c!92734 () Bool)

(assert (=> b!460438 (= c!92734 e!282071)))

(declare-fun res!204947 () Bool)

(assert (=> b!460438 (=> (not res!204947) (not e!282071))))

(assert (=> b!460438 (= res!204947 ((_ is Some!1180) lt!205449))))

(declare-fun e!282066 () BalanceConc!3144)

(assert (=> b!460438 (= e!282070 e!282066)))

(declare-fun b!460439 () Bool)

(assert (=> b!460439 (= e!282070 call!31889)))

(declare-fun b!460440 () Bool)

(assert (=> b!460440 (= e!282068 (= (_1!2955 (v!15523 lt!205449)) (apply!1149 lt!205330 0)))))

(declare-fun b!460441 () Bool)

(assert (=> b!460441 (= e!282066 (BalanceConc!3145 Empty!1568))))

(assert (=> b!460441 (= (print!484 thiss!17480 (singletonSeq!419 call!31891)) (printTailRec!445 thiss!17480 (singletonSeq!419 call!31891) 0 (BalanceConc!3145 Empty!1568)))))

(declare-fun lt!205444 () Unit!8091)

(declare-fun Unit!8093 () Unit!8091)

(assert (=> b!460441 (= lt!205444 Unit!8093)))

(declare-fun lt!205447 () Unit!8091)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!197 (LexerInterface!759 List!4494 List!4493 List!4493) Unit!8091)

(assert (=> b!460441 (= lt!205447 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!197 thiss!17480 rules!1920 (list!1996 call!31892) (list!1996 lt!205452)))))

(assert (=> b!460441 false))

(declare-fun lt!205451 () Unit!8091)

(declare-fun Unit!8094 () Unit!8091)

(assert (=> b!460441 (= lt!205451 Unit!8094)))

(declare-fun bm!31887 () Bool)

(assert (=> bm!31887 (= call!31892 (charsOf!516 (ite c!92734 separatorToken!170 call!31891)))))

(declare-fun b!460442 () Bool)

(assert (=> b!460442 (= e!282066 (++!1309 call!31889 lt!205452))))

(declare-fun bm!31888 () Bool)

(assert (=> bm!31888 (= call!31890 (apply!1149 lt!205330 0))))

(declare-fun b!460443 () Bool)

(assert (=> b!460443 (= e!282067 (BalanceConc!3145 Empty!1568))))

(declare-fun b!460444 () Bool)

(assert (=> b!460444 (= e!282069 (<= 0 (size!3664 lt!205330)))))

(assert (= (and d!175214 res!204946) b!460444))

(assert (= (and d!175214 c!92733) b!460443))

(assert (= (and d!175214 (not c!92733)) b!460437))

(assert (= (and b!460437 res!204948) b!460440))

(assert (= (and b!460437 c!92735) b!460439))

(assert (= (and b!460437 (not c!92735)) b!460438))

(assert (= (and b!460438 res!204947) b!460436))

(assert (= (and b!460438 c!92734) b!460442))

(assert (= (and b!460438 (not c!92734)) b!460441))

(assert (= (or b!460442 b!460441) bm!31886))

(assert (= (or b!460442 b!460441) bm!31887))

(assert (= (or b!460439 b!460436 bm!31886) bm!31888))

(assert (= (or b!460439 b!460442) bm!31885))

(assert (= (or b!460439 b!460442) bm!31884))

(declare-fun m!728639 () Bool)

(assert (=> bm!31888 m!728639))

(assert (=> b!460440 m!728639))

(declare-fun m!728641 () Bool)

(assert (=> b!460442 m!728641))

(declare-fun m!728643 () Bool)

(assert (=> bm!31887 m!728643))

(declare-fun m!728645 () Bool)

(assert (=> b!460441 m!728645))

(declare-fun m!728647 () Bool)

(assert (=> b!460441 m!728647))

(declare-fun m!728649 () Bool)

(assert (=> b!460441 m!728649))

(assert (=> b!460441 m!728645))

(declare-fun m!728651 () Bool)

(assert (=> b!460441 m!728651))

(declare-fun m!728653 () Bool)

(assert (=> b!460441 m!728653))

(assert (=> b!460441 m!728647))

(assert (=> b!460441 m!728651))

(assert (=> b!460441 m!728651))

(declare-fun m!728655 () Bool)

(assert (=> b!460441 m!728655))

(declare-fun m!728657 () Bool)

(assert (=> bm!31884 m!728657))

(declare-fun m!728659 () Bool)

(assert (=> b!460437 m!728659))

(declare-fun m!728661 () Bool)

(assert (=> b!460437 m!728661))

(declare-fun m!728663 () Bool)

(assert (=> b!460437 m!728663))

(declare-fun m!728665 () Bool)

(assert (=> b!460437 m!728665))

(assert (=> b!460437 m!728553))

(assert (=> b!460437 m!728639))

(declare-fun m!728667 () Bool)

(assert (=> b!460437 m!728667))

(declare-fun m!728669 () Bool)

(assert (=> b!460437 m!728669))

(assert (=> b!460437 m!728639))

(assert (=> b!460437 m!728663))

(assert (=> b!460437 m!728661))

(declare-fun m!728671 () Bool)

(assert (=> b!460437 m!728671))

(declare-fun m!728673 () Bool)

(assert (=> b!460437 m!728673))

(declare-fun m!728675 () Bool)

(assert (=> b!460437 m!728675))

(declare-fun m!728677 () Bool)

(assert (=> b!460437 m!728677))

(assert (=> b!460437 m!728677))

(declare-fun m!728679 () Bool)

(assert (=> b!460437 m!728679))

(assert (=> b!460437 m!728665))

(declare-fun m!728681 () Bool)

(assert (=> b!460437 m!728681))

(assert (=> b!460437 m!728553))

(declare-fun m!728683 () Bool)

(assert (=> b!460437 m!728683))

(assert (=> b!460437 m!728639))

(declare-fun m!728685 () Bool)

(assert (=> d!175214 m!728685))

(declare-fun m!728687 () Bool)

(assert (=> d!175214 m!728687))

(assert (=> d!175214 m!728553))

(assert (=> d!175214 m!728685))

(declare-fun m!728689 () Bool)

(assert (=> d!175214 m!728689))

(assert (=> d!175214 m!728685))

(declare-fun m!728691 () Bool)

(assert (=> d!175214 m!728691))

(declare-fun m!728693 () Bool)

(assert (=> d!175214 m!728693))

(assert (=> d!175214 m!728553))

(assert (=> b!460444 m!728691))

(declare-fun m!728695 () Bool)

(assert (=> bm!31885 m!728695))

(assert (=> b!460185 d!175214))

(declare-fun bs!57045 () Bool)

(declare-fun b!460489 () Bool)

(assert (= bs!57045 (and b!460489 d!175196)))

(declare-fun lambda!13575 () Int)

(assert (=> bs!57045 (= lambda!13575 lambda!13566)))

(declare-fun bs!57046 () Bool)

(assert (= bs!57046 (and b!460489 b!460437)))

(assert (=> bs!57046 (= lambda!13575 lambda!13572)))

(declare-fun bs!57047 () Bool)

(assert (= bs!57047 (and b!460489 d!175214)))

(assert (=> bs!57047 (not (= lambda!13575 lambda!13571))))

(declare-fun bs!57048 () Bool)

(assert (= bs!57048 (and b!460489 b!460194)))

(assert (=> bs!57048 (= lambda!13575 lambda!13558)))

(declare-fun bs!57049 () Bool)

(assert (= bs!57049 (and b!460489 b!460196)))

(assert (=> bs!57049 (not (= lambda!13575 lambda!13557))))

(declare-fun b!460495 () Bool)

(declare-fun e!282101 () Bool)

(assert (=> b!460495 (= e!282101 true)))

(declare-fun b!460494 () Bool)

(declare-fun e!282100 () Bool)

(assert (=> b!460494 (= e!282100 e!282101)))

(declare-fun b!460493 () Bool)

(declare-fun e!282099 () Bool)

(assert (=> b!460493 (= e!282099 e!282100)))

(assert (=> b!460489 e!282099))

(assert (= b!460494 b!460495))

(assert (= b!460493 b!460494))

(assert (= (and b!460489 ((_ is Cons!4484) rules!1920)) b!460493))

(assert (=> b!460495 (< (dynLambda!2734 order!3997 (toValue!1692 (transformation!873 (h!9881 rules!1920)))) (dynLambda!2735 order!3999 lambda!13575))))

(assert (=> b!460495 (< (dynLambda!2736 order!4001 (toChars!1551 (transformation!873 (h!9881 rules!1920)))) (dynLambda!2735 order!3999 lambda!13575))))

(assert (=> b!460489 true))

(declare-fun call!31907 () List!4493)

(declare-fun call!31904 () BalanceConc!3144)

(declare-fun c!92748 () Bool)

(declare-fun call!31905 () BalanceConc!3144)

(declare-fun bm!31899 () Bool)

(assert (=> bm!31899 (= call!31907 (list!1996 (ite c!92748 call!31905 call!31904)))))

(declare-fun d!175238 () Bool)

(declare-fun c!92747 () Bool)

(assert (=> d!175238 (= c!92747 ((_ is Cons!4485) tokens!465))))

(declare-fun e!282097 () List!4493)

(assert (=> d!175238 (= (printWithSeparatorTokenWhenNeededList!440 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!282097)))

(declare-fun b!460485 () Bool)

(declare-fun e!282098 () List!4493)

(declare-fun call!31906 () List!4493)

(declare-fun lt!205475 () List!4493)

(assert (=> b!460485 (= e!282098 (++!1308 call!31906 lt!205475))))

(declare-fun bm!31900 () Bool)

(declare-fun call!31908 () List!4493)

(declare-fun e!282096 () BalanceConc!3144)

(assert (=> bm!31900 (= call!31908 (list!1996 e!282096))))

(declare-fun c!92749 () Bool)

(declare-fun c!92750 () Bool)

(assert (=> bm!31900 (= c!92749 c!92750)))

(declare-fun b!460486 () Bool)

(declare-fun lt!205477 () Option!1180)

(assert (=> b!460486 (= c!92750 (and ((_ is Some!1179) lt!205477) (not (= (_1!2953 (v!15522 lt!205477)) (h!9882 tokens!465)))))))

(declare-fun e!282095 () List!4493)

(assert (=> b!460486 (= e!282095 e!282098)))

(declare-fun b!460487 () Bool)

(assert (=> b!460487 (= e!282098 Nil!4483)))

(assert (=> b!460487 (= (print!484 thiss!17480 (singletonSeq!419 (h!9882 tokens!465))) (printTailRec!445 thiss!17480 (singletonSeq!419 (h!9882 tokens!465)) 0 (BalanceConc!3145 Empty!1568)))))

(declare-fun lt!205474 () Unit!8091)

(declare-fun Unit!8095 () Unit!8091)

(assert (=> b!460487 (= lt!205474 Unit!8095)))

(declare-fun lt!205479 () Unit!8091)

(assert (=> b!460487 (= lt!205479 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!197 thiss!17480 rules!1920 call!31908 lt!205475))))

(assert (=> b!460487 false))

(declare-fun lt!205476 () Unit!8091)

(declare-fun Unit!8096 () Unit!8091)

(assert (=> b!460487 (= lt!205476 Unit!8096)))

(declare-fun b!460488 () Bool)

(assert (=> b!460488 (= e!282097 Nil!4483)))

(declare-fun bm!31901 () Bool)

(assert (=> bm!31901 (= call!31906 (++!1308 call!31907 (ite c!92748 lt!205475 call!31908)))))

(declare-fun bm!31902 () Bool)

(assert (=> bm!31902 (= call!31904 call!31905)))

(assert (=> b!460489 (= e!282097 e!282095)))

(declare-fun lt!205478 () Unit!8091)

(assert (=> b!460489 (= lt!205478 (forallContained!426 tokens!465 lambda!13575 (h!9882 tokens!465)))))

(assert (=> b!460489 (= lt!205475 (printWithSeparatorTokenWhenNeededList!440 thiss!17480 rules!1920 (t!71807 tokens!465) separatorToken!170))))

(assert (=> b!460489 (= lt!205477 (maxPrefix!475 thiss!17480 rules!1920 (++!1308 (list!1996 (charsOf!516 (h!9882 tokens!465))) lt!205475)))))

(assert (=> b!460489 (= c!92748 (and ((_ is Some!1179) lt!205477) (= (_1!2953 (v!15522 lt!205477)) (h!9882 tokens!465))))))

(declare-fun b!460490 () Bool)

(assert (=> b!460490 (= e!282096 call!31904)))

(declare-fun bm!31903 () Bool)

(assert (=> bm!31903 (= call!31905 (charsOf!516 (h!9882 tokens!465)))))

(declare-fun b!460491 () Bool)

(assert (=> b!460491 (= e!282095 call!31906)))

(declare-fun b!460492 () Bool)

(assert (=> b!460492 (= e!282096 (charsOf!516 separatorToken!170))))

(assert (= (and d!175238 c!92747) b!460489))

(assert (= (and d!175238 (not c!92747)) b!460488))

(assert (= (and b!460489 c!92748) b!460491))

(assert (= (and b!460489 (not c!92748)) b!460486))

(assert (= (and b!460486 c!92750) b!460485))

(assert (= (and b!460486 (not c!92750)) b!460487))

(assert (= (or b!460485 b!460487) bm!31902))

(assert (= (or b!460485 b!460487) bm!31900))

(assert (= (and bm!31900 c!92749) b!460492))

(assert (= (and bm!31900 (not c!92749)) b!460490))

(assert (= (or b!460491 bm!31902) bm!31903))

(assert (= (or b!460491 b!460485) bm!31899))

(assert (= (or b!460491 b!460485) bm!31901))

(declare-fun m!728747 () Bool)

(assert (=> bm!31901 m!728747))

(declare-fun m!728749 () Bool)

(assert (=> b!460485 m!728749))

(declare-fun m!728751 () Bool)

(assert (=> bm!31900 m!728751))

(declare-fun m!728753 () Bool)

(assert (=> bm!31899 m!728753))

(assert (=> bm!31903 m!728309))

(assert (=> b!460492 m!728305))

(assert (=> b!460489 m!728301))

(assert (=> b!460489 m!728311))

(declare-fun m!728755 () Bool)

(assert (=> b!460489 m!728755))

(assert (=> b!460489 m!728755))

(declare-fun m!728757 () Bool)

(assert (=> b!460489 m!728757))

(assert (=> b!460489 m!728309))

(declare-fun m!728759 () Bool)

(assert (=> b!460489 m!728759))

(assert (=> b!460489 m!728309))

(assert (=> b!460489 m!728311))

(assert (=> b!460487 m!728349))

(assert (=> b!460487 m!728349))

(declare-fun m!728761 () Bool)

(assert (=> b!460487 m!728761))

(assert (=> b!460487 m!728349))

(declare-fun m!728763 () Bool)

(assert (=> b!460487 m!728763))

(declare-fun m!728765 () Bool)

(assert (=> b!460487 m!728765))

(assert (=> b!460185 d!175238))

(declare-fun d!175252 () Bool)

(assert (=> d!175252 (= (list!1996 lt!205349) (list!1999 (c!92686 lt!205349)))))

(declare-fun bs!57050 () Bool)

(assert (= bs!57050 d!175252))

(declare-fun m!728767 () Bool)

(assert (=> bs!57050 m!728767))

(assert (=> b!460207 d!175252))

(declare-fun d!175254 () Bool)

(declare-fun lt!205482 () BalanceConc!3144)

(assert (=> d!175254 (= (list!1996 lt!205482) (printList!433 thiss!17480 (list!1997 lt!205339)))))

(assert (=> d!175254 (= lt!205482 (printTailRec!445 thiss!17480 lt!205339 0 (BalanceConc!3145 Empty!1568)))))

(assert (=> d!175254 (= (print!484 thiss!17480 lt!205339) lt!205482)))

(declare-fun bs!57051 () Bool)

(assert (= bs!57051 d!175254))

(declare-fun m!728769 () Bool)

(assert (=> bs!57051 m!728769))

(declare-fun m!728771 () Bool)

(assert (=> bs!57051 m!728771))

(assert (=> bs!57051 m!728771))

(declare-fun m!728773 () Bool)

(assert (=> bs!57051 m!728773))

(assert (=> bs!57051 m!728347))

(assert (=> b!460207 d!175254))

(declare-fun d!175256 () Bool)

(declare-fun lt!205501 () BalanceConc!3144)

(declare-fun printListTailRec!214 (LexerInterface!759 List!4495 List!4493) List!4493)

(assert (=> d!175256 (= (list!1996 lt!205501) (printListTailRec!214 thiss!17480 (dropList!249 lt!205339 0) (list!1996 (BalanceConc!3145 Empty!1568))))))

(declare-fun e!282107 () BalanceConc!3144)

(assert (=> d!175256 (= lt!205501 e!282107)))

(declare-fun c!92753 () Bool)

(assert (=> d!175256 (= c!92753 (>= 0 (size!3664 lt!205339)))))

(declare-fun e!282106 () Bool)

(assert (=> d!175256 e!282106))

(declare-fun res!204966 () Bool)

(assert (=> d!175256 (=> (not res!204966) (not e!282106))))

(assert (=> d!175256 (= res!204966 (>= 0 0))))

(assert (=> d!175256 (= (printTailRec!445 thiss!17480 lt!205339 0 (BalanceConc!3145 Empty!1568)) lt!205501)))

(declare-fun b!460502 () Bool)

(assert (=> b!460502 (= e!282106 (<= 0 (size!3664 lt!205339)))))

(declare-fun b!460503 () Bool)

(assert (=> b!460503 (= e!282107 (BalanceConc!3145 Empty!1568))))

(declare-fun b!460504 () Bool)

(assert (=> b!460504 (= e!282107 (printTailRec!445 thiss!17480 lt!205339 (+ 0 1) (++!1309 (BalanceConc!3145 Empty!1568) (charsOf!516 (apply!1149 lt!205339 0)))))))

(declare-fun lt!205500 () List!4495)

(assert (=> b!460504 (= lt!205500 (list!1997 lt!205339))))

(declare-fun lt!205502 () Unit!8091)

(assert (=> b!460504 (= lt!205502 (lemmaDropApply!289 lt!205500 0))))

(assert (=> b!460504 (= (head!1128 (drop!318 lt!205500 0)) (apply!1148 lt!205500 0))))

(declare-fun lt!205498 () Unit!8091)

(assert (=> b!460504 (= lt!205498 lt!205502)))

(declare-fun lt!205499 () List!4495)

(assert (=> b!460504 (= lt!205499 (list!1997 lt!205339))))

(declare-fun lt!205497 () Unit!8091)

(assert (=> b!460504 (= lt!205497 (lemmaDropTail!281 lt!205499 0))))

(assert (=> b!460504 (= (tail!648 (drop!318 lt!205499 0)) (drop!318 lt!205499 (+ 0 1)))))

(declare-fun lt!205503 () Unit!8091)

(assert (=> b!460504 (= lt!205503 lt!205497)))

(assert (= (and d!175256 res!204966) b!460502))

(assert (= (and d!175256 c!92753) b!460503))

(assert (= (and d!175256 (not c!92753)) b!460504))

(declare-fun m!728775 () Bool)

(assert (=> d!175256 m!728775))

(declare-fun m!728777 () Bool)

(assert (=> d!175256 m!728777))

(declare-fun m!728779 () Bool)

(assert (=> d!175256 m!728779))

(declare-fun m!728781 () Bool)

(assert (=> d!175256 m!728781))

(assert (=> d!175256 m!728779))

(assert (=> d!175256 m!728775))

(declare-fun m!728783 () Bool)

(assert (=> d!175256 m!728783))

(assert (=> b!460502 m!728781))

(declare-fun m!728785 () Bool)

(assert (=> b!460504 m!728785))

(declare-fun m!728787 () Bool)

(assert (=> b!460504 m!728787))

(declare-fun m!728789 () Bool)

(assert (=> b!460504 m!728789))

(declare-fun m!728791 () Bool)

(assert (=> b!460504 m!728791))

(declare-fun m!728793 () Bool)

(assert (=> b!460504 m!728793))

(declare-fun m!728795 () Bool)

(assert (=> b!460504 m!728795))

(declare-fun m!728797 () Bool)

(assert (=> b!460504 m!728797))

(assert (=> b!460504 m!728789))

(declare-fun m!728799 () Bool)

(assert (=> b!460504 m!728799))

(assert (=> b!460504 m!728791))

(declare-fun m!728801 () Bool)

(assert (=> b!460504 m!728801))

(declare-fun m!728803 () Bool)

(assert (=> b!460504 m!728803))

(assert (=> b!460504 m!728801))

(declare-fun m!728805 () Bool)

(assert (=> b!460504 m!728805))

(assert (=> b!460504 m!728799))

(assert (=> b!460504 m!728795))

(assert (=> b!460504 m!728771))

(declare-fun m!728807 () Bool)

(assert (=> b!460504 m!728807))

(assert (=> b!460207 d!175256))

(declare-fun d!175258 () Bool)

(declare-fun e!282110 () Bool)

(assert (=> d!175258 e!282110))

(declare-fun res!204969 () Bool)

(assert (=> d!175258 (=> (not res!204969) (not e!282110))))

(declare-fun lt!205506 () BalanceConc!3146)

(assert (=> d!175258 (= res!204969 (= (list!1997 lt!205506) (Cons!4485 (h!9882 tokens!465) Nil!4485)))))

(declare-fun singleton!199 (Token!1490) BalanceConc!3146)

(assert (=> d!175258 (= lt!205506 (singleton!199 (h!9882 tokens!465)))))

(assert (=> d!175258 (= (singletonSeq!419 (h!9882 tokens!465)) lt!205506)))

(declare-fun b!460507 () Bool)

(declare-fun isBalanced!478 (Conc!1569) Bool)

(assert (=> b!460507 (= e!282110 (isBalanced!478 (c!92688 lt!205506)))))

(assert (= (and d!175258 res!204969) b!460507))

(declare-fun m!728809 () Bool)

(assert (=> d!175258 m!728809))

(declare-fun m!728811 () Bool)

(assert (=> d!175258 m!728811))

(declare-fun m!728813 () Bool)

(assert (=> b!460507 m!728813))

(assert (=> b!460207 d!175258))

(declare-fun d!175260 () Bool)

(declare-fun c!92756 () Bool)

(assert (=> d!175260 (= c!92756 ((_ is Cons!4485) (Cons!4485 (h!9882 tokens!465) Nil!4485)))))

(declare-fun e!282113 () List!4493)

(assert (=> d!175260 (= (printList!433 thiss!17480 (Cons!4485 (h!9882 tokens!465) Nil!4485)) e!282113)))

(declare-fun b!460512 () Bool)

(assert (=> b!460512 (= e!282113 (++!1308 (list!1996 (charsOf!516 (h!9882 (Cons!4485 (h!9882 tokens!465) Nil!4485)))) (printList!433 thiss!17480 (t!71807 (Cons!4485 (h!9882 tokens!465) Nil!4485)))))))

(declare-fun b!460513 () Bool)

(assert (=> b!460513 (= e!282113 Nil!4483)))

(assert (= (and d!175260 c!92756) b!460512))

(assert (= (and d!175260 (not c!92756)) b!460513))

(declare-fun m!728815 () Bool)

(assert (=> b!460512 m!728815))

(assert (=> b!460512 m!728815))

(declare-fun m!728817 () Bool)

(assert (=> b!460512 m!728817))

(declare-fun m!728819 () Bool)

(assert (=> b!460512 m!728819))

(assert (=> b!460512 m!728817))

(assert (=> b!460512 m!728819))

(declare-fun m!728821 () Bool)

(assert (=> b!460512 m!728821))

(assert (=> b!460207 d!175260))

(declare-fun d!175262 () Bool)

(assert (=> d!175262 (= (isEmpty!3466 rules!1920) ((_ is Nil!4484) rules!1920))))

(assert (=> b!460178 d!175262))

(declare-fun d!175264 () Bool)

(assert (=> d!175264 (= (get!1647 lt!205336) (v!15522 lt!205336))))

(assert (=> b!460179 d!175264))

(declare-fun d!175266 () Bool)

(declare-fun isEmpty!3473 (Option!1180) Bool)

(assert (=> d!175266 (= (isDefined!1019 lt!205336) (not (isEmpty!3473 lt!205336)))))

(declare-fun bs!57052 () Bool)

(assert (= bs!57052 d!175266))

(declare-fun m!728823 () Bool)

(assert (=> bs!57052 m!728823))

(assert (=> b!460179 d!175266))

(declare-fun d!175268 () Bool)

(declare-fun e!282139 () Bool)

(assert (=> d!175268 e!282139))

(declare-fun res!204990 () Bool)

(assert (=> d!175268 (=> res!204990 e!282139)))

(declare-fun lt!205538 () Option!1180)

(assert (=> d!175268 (= res!204990 (isEmpty!3473 lt!205538))))

(declare-fun e!282138 () Option!1180)

(assert (=> d!175268 (= lt!205538 e!282138)))

(declare-fun c!92774 () Bool)

(assert (=> d!175268 (= c!92774 (and ((_ is Cons!4484) rules!1920) ((_ is Nil!4484) (t!71806 rules!1920))))))

(declare-fun lt!205535 () Unit!8091)

(declare-fun lt!205539 () Unit!8091)

(assert (=> d!175268 (= lt!205535 lt!205539)))

(assert (=> d!175268 (isPrefix!525 lt!205335 lt!205335)))

(declare-fun lemmaIsPrefixRefl!293 (List!4493 List!4493) Unit!8091)

(assert (=> d!175268 (= lt!205539 (lemmaIsPrefixRefl!293 lt!205335 lt!205335))))

(declare-fun rulesValidInductive!288 (LexerInterface!759 List!4494) Bool)

(assert (=> d!175268 (rulesValidInductive!288 thiss!17480 rules!1920)))

(assert (=> d!175268 (= (maxPrefix!475 thiss!17480 rules!1920 lt!205335) lt!205538)))

(declare-fun b!460565 () Bool)

(declare-fun res!204988 () Bool)

(declare-fun e!282140 () Bool)

(assert (=> b!460565 (=> (not res!204988) (not e!282140))))

(assert (=> b!460565 (= res!204988 (= (list!1996 (charsOf!516 (_1!2953 (get!1647 lt!205538)))) (originalCharacters!916 (_1!2953 (get!1647 lt!205538)))))))

(declare-fun b!460566 () Bool)

(declare-fun res!204989 () Bool)

(assert (=> b!460566 (=> (not res!204989) (not e!282140))))

(assert (=> b!460566 (= res!204989 (= (++!1308 (list!1996 (charsOf!516 (_1!2953 (get!1647 lt!205538)))) (_2!2953 (get!1647 lt!205538))) lt!205335))))

(declare-fun b!460567 () Bool)

(declare-fun res!204985 () Bool)

(assert (=> b!460567 (=> (not res!204985) (not e!282140))))

(declare-fun apply!1151 (TokenValueInjection!1562 BalanceConc!3144) TokenValue!895)

(assert (=> b!460567 (= res!204985 (= (value!29196 (_1!2953 (get!1647 lt!205538))) (apply!1151 (transformation!873 (rule!1568 (_1!2953 (get!1647 lt!205538)))) (seqFromList!1111 (originalCharacters!916 (_1!2953 (get!1647 lt!205538)))))))))

(declare-fun b!460568 () Bool)

(declare-fun contains!1003 (List!4494 Rule!1546) Bool)

(assert (=> b!460568 (= e!282140 (contains!1003 rules!1920 (rule!1568 (_1!2953 (get!1647 lt!205538)))))))

(declare-fun b!460569 () Bool)

(declare-fun res!204984 () Bool)

(assert (=> b!460569 (=> (not res!204984) (not e!282140))))

(assert (=> b!460569 (= res!204984 (< (size!3660 (_2!2953 (get!1647 lt!205538))) (size!3660 lt!205335)))))

(declare-fun bm!31921 () Bool)

(declare-fun call!31926 () Option!1180)

(declare-fun maxPrefixOneRule!227 (LexerInterface!759 Rule!1546 List!4493) Option!1180)

(assert (=> bm!31921 (= call!31926 (maxPrefixOneRule!227 thiss!17480 (h!9881 rules!1920) lt!205335))))

(declare-fun b!460570 () Bool)

(assert (=> b!460570 (= e!282138 call!31926)))

(declare-fun b!460571 () Bool)

(assert (=> b!460571 (= e!282139 e!282140)))

(declare-fun res!204986 () Bool)

(assert (=> b!460571 (=> (not res!204986) (not e!282140))))

(assert (=> b!460571 (= res!204986 (isDefined!1019 lt!205538))))

(declare-fun b!460572 () Bool)

(declare-fun res!204987 () Bool)

(assert (=> b!460572 (=> (not res!204987) (not e!282140))))

(assert (=> b!460572 (= res!204987 (matchR!415 (regex!873 (rule!1568 (_1!2953 (get!1647 lt!205538)))) (list!1996 (charsOf!516 (_1!2953 (get!1647 lt!205538))))))))

(declare-fun b!460573 () Bool)

(declare-fun lt!205536 () Option!1180)

(declare-fun lt!205537 () Option!1180)

(assert (=> b!460573 (= e!282138 (ite (and ((_ is None!1179) lt!205536) ((_ is None!1179) lt!205537)) None!1179 (ite ((_ is None!1179) lt!205537) lt!205536 (ite ((_ is None!1179) lt!205536) lt!205537 (ite (>= (size!3657 (_1!2953 (v!15522 lt!205536))) (size!3657 (_1!2953 (v!15522 lt!205537)))) lt!205536 lt!205537)))))))

(assert (=> b!460573 (= lt!205536 call!31926)))

(assert (=> b!460573 (= lt!205537 (maxPrefix!475 thiss!17480 (t!71806 rules!1920) lt!205335))))

(assert (= (and d!175268 c!92774) b!460570))

(assert (= (and d!175268 (not c!92774)) b!460573))

(assert (= (or b!460570 b!460573) bm!31921))

(assert (= (and d!175268 (not res!204990)) b!460571))

(assert (= (and b!460571 res!204986) b!460565))

(assert (= (and b!460565 res!204988) b!460569))

(assert (= (and b!460569 res!204984) b!460566))

(assert (= (and b!460566 res!204989) b!460567))

(assert (= (and b!460567 res!204985) b!460572))

(assert (= (and b!460572 res!204987) b!460568))

(declare-fun m!728853 () Bool)

(assert (=> b!460567 m!728853))

(declare-fun m!728855 () Bool)

(assert (=> b!460567 m!728855))

(assert (=> b!460567 m!728855))

(declare-fun m!728857 () Bool)

(assert (=> b!460567 m!728857))

(assert (=> b!460566 m!728853))

(declare-fun m!728859 () Bool)

(assert (=> b!460566 m!728859))

(assert (=> b!460566 m!728859))

(declare-fun m!728861 () Bool)

(assert (=> b!460566 m!728861))

(assert (=> b!460566 m!728861))

(declare-fun m!728863 () Bool)

(assert (=> b!460566 m!728863))

(declare-fun m!728865 () Bool)

(assert (=> b!460571 m!728865))

(assert (=> b!460569 m!728853))

(declare-fun m!728867 () Bool)

(assert (=> b!460569 m!728867))

(assert (=> b!460569 m!728407))

(declare-fun m!728869 () Bool)

(assert (=> b!460573 m!728869))

(assert (=> b!460572 m!728853))

(assert (=> b!460572 m!728859))

(assert (=> b!460572 m!728859))

(assert (=> b!460572 m!728861))

(assert (=> b!460572 m!728861))

(declare-fun m!728871 () Bool)

(assert (=> b!460572 m!728871))

(assert (=> b!460568 m!728853))

(declare-fun m!728873 () Bool)

(assert (=> b!460568 m!728873))

(assert (=> b!460565 m!728853))

(assert (=> b!460565 m!728859))

(assert (=> b!460565 m!728859))

(assert (=> b!460565 m!728861))

(declare-fun m!728875 () Bool)

(assert (=> bm!31921 m!728875))

(declare-fun m!728877 () Bool)

(assert (=> d!175268 m!728877))

(declare-fun m!728879 () Bool)

(assert (=> d!175268 m!728879))

(declare-fun m!728881 () Bool)

(assert (=> d!175268 m!728881))

(declare-fun m!728883 () Bool)

(assert (=> d!175268 m!728883))

(assert (=> b!460179 d!175268))

(declare-fun d!175272 () Bool)

(declare-fun lt!205547 () Bool)

(declare-fun e!282146 () Bool)

(assert (=> d!175272 (= lt!205547 e!282146)))

(declare-fun res!204997 () Bool)

(assert (=> d!175272 (=> (not res!204997) (not e!282146))))

(assert (=> d!175272 (= res!204997 (= (list!1997 (_1!2954 (lex!551 thiss!17480 rules!1920 (print!484 thiss!17480 (singletonSeq!419 separatorToken!170))))) (list!1997 (singletonSeq!419 separatorToken!170))))))

(declare-fun e!282145 () Bool)

(assert (=> d!175272 (= lt!205547 e!282145)))

(declare-fun res!204998 () Bool)

(assert (=> d!175272 (=> (not res!204998) (not e!282145))))

(declare-fun lt!205548 () tuple2!5476)

(assert (=> d!175272 (= res!204998 (= (size!3664 (_1!2954 lt!205548)) 1))))

(assert (=> d!175272 (= lt!205548 (lex!551 thiss!17480 rules!1920 (print!484 thiss!17480 (singletonSeq!419 separatorToken!170))))))

(assert (=> d!175272 (not (isEmpty!3466 rules!1920))))

(assert (=> d!175272 (= (rulesProduceIndividualToken!508 thiss!17480 rules!1920 separatorToken!170) lt!205547)))

(declare-fun b!460580 () Bool)

(declare-fun res!204999 () Bool)

(assert (=> b!460580 (=> (not res!204999) (not e!282145))))

(assert (=> b!460580 (= res!204999 (= (apply!1149 (_1!2954 lt!205548) 0) separatorToken!170))))

(declare-fun b!460581 () Bool)

(declare-fun isEmpty!3474 (BalanceConc!3144) Bool)

(assert (=> b!460581 (= e!282145 (isEmpty!3474 (_2!2954 lt!205548)))))

(declare-fun b!460582 () Bool)

(assert (=> b!460582 (= e!282146 (isEmpty!3474 (_2!2954 (lex!551 thiss!17480 rules!1920 (print!484 thiss!17480 (singletonSeq!419 separatorToken!170))))))))

(assert (= (and d!175272 res!204998) b!460580))

(assert (= (and b!460580 res!204999) b!460581))

(assert (= (and d!175272 res!204997) b!460582))

(declare-fun m!728889 () Bool)

(assert (=> d!175272 m!728889))

(declare-fun m!728891 () Bool)

(assert (=> d!175272 m!728891))

(declare-fun m!728893 () Bool)

(assert (=> d!175272 m!728893))

(assert (=> d!175272 m!728893))

(declare-fun m!728895 () Bool)

(assert (=> d!175272 m!728895))

(assert (=> d!175272 m!728895))

(declare-fun m!728897 () Bool)

(assert (=> d!175272 m!728897))

(assert (=> d!175272 m!728389))

(assert (=> d!175272 m!728893))

(declare-fun m!728899 () Bool)

(assert (=> d!175272 m!728899))

(declare-fun m!728901 () Bool)

(assert (=> b!460580 m!728901))

(declare-fun m!728903 () Bool)

(assert (=> b!460581 m!728903))

(assert (=> b!460582 m!728893))

(assert (=> b!460582 m!728893))

(assert (=> b!460582 m!728895))

(assert (=> b!460582 m!728895))

(assert (=> b!460582 m!728897))

(declare-fun m!728905 () Bool)

(assert (=> b!460582 m!728905))

(assert (=> b!460200 d!175272))

(declare-fun d!175276 () Bool)

(declare-fun lt!205549 () Bool)

(declare-fun e!282148 () Bool)

(assert (=> d!175276 (= lt!205549 e!282148)))

(declare-fun res!205000 () Bool)

(assert (=> d!175276 (=> (not res!205000) (not e!282148))))

(assert (=> d!175276 (= res!205000 (= (list!1997 (_1!2954 (lex!551 thiss!17480 rules!1920 (print!484 thiss!17480 (singletonSeq!419 (h!9882 tokens!465)))))) (list!1997 (singletonSeq!419 (h!9882 tokens!465)))))))

(declare-fun e!282147 () Bool)

(assert (=> d!175276 (= lt!205549 e!282147)))

(declare-fun res!205001 () Bool)

(assert (=> d!175276 (=> (not res!205001) (not e!282147))))

(declare-fun lt!205550 () tuple2!5476)

(assert (=> d!175276 (= res!205001 (= (size!3664 (_1!2954 lt!205550)) 1))))

(assert (=> d!175276 (= lt!205550 (lex!551 thiss!17480 rules!1920 (print!484 thiss!17480 (singletonSeq!419 (h!9882 tokens!465)))))))

(assert (=> d!175276 (not (isEmpty!3466 rules!1920))))

(assert (=> d!175276 (= (rulesProduceIndividualToken!508 thiss!17480 rules!1920 (h!9882 tokens!465)) lt!205549)))

(declare-fun b!460583 () Bool)

(declare-fun res!205002 () Bool)

(assert (=> b!460583 (=> (not res!205002) (not e!282147))))

(assert (=> b!460583 (= res!205002 (= (apply!1149 (_1!2954 lt!205550) 0) (h!9882 tokens!465)))))

(declare-fun b!460584 () Bool)

(assert (=> b!460584 (= e!282147 (isEmpty!3474 (_2!2954 lt!205550)))))

(declare-fun b!460585 () Bool)

(assert (=> b!460585 (= e!282148 (isEmpty!3474 (_2!2954 (lex!551 thiss!17480 rules!1920 (print!484 thiss!17480 (singletonSeq!419 (h!9882 tokens!465)))))))))

(assert (= (and d!175276 res!205001) b!460583))

(assert (= (and b!460583 res!205002) b!460584))

(assert (= (and d!175276 res!205000) b!460585))

(declare-fun m!728907 () Bool)

(assert (=> d!175276 m!728907))

(declare-fun m!728909 () Bool)

(assert (=> d!175276 m!728909))

(assert (=> d!175276 m!728349))

(assert (=> d!175276 m!728349))

(assert (=> d!175276 m!728761))

(assert (=> d!175276 m!728761))

(declare-fun m!728911 () Bool)

(assert (=> d!175276 m!728911))

(assert (=> d!175276 m!728389))

(assert (=> d!175276 m!728349))

(declare-fun m!728913 () Bool)

(assert (=> d!175276 m!728913))

(declare-fun m!728915 () Bool)

(assert (=> b!460583 m!728915))

(declare-fun m!728917 () Bool)

(assert (=> b!460584 m!728917))

(assert (=> b!460585 m!728349))

(assert (=> b!460585 m!728349))

(assert (=> b!460585 m!728761))

(assert (=> b!460585 m!728761))

(assert (=> b!460585 m!728911))

(declare-fun m!728919 () Bool)

(assert (=> b!460585 m!728919))

(assert (=> b!460198 d!175276))

(declare-fun d!175278 () Bool)

(assert (=> d!175278 (= (inv!5559 (tag!1133 (h!9881 rules!1920))) (= (mod (str.len (value!29195 (tag!1133 (h!9881 rules!1920)))) 2) 0))))

(assert (=> b!460199 d!175278))

(declare-fun d!175280 () Bool)

(declare-fun res!205005 () Bool)

(declare-fun e!282151 () Bool)

(assert (=> d!175280 (=> (not res!205005) (not e!282151))))

(declare-fun semiInverseModEq!346 (Int Int) Bool)

(assert (=> d!175280 (= res!205005 (semiInverseModEq!346 (toChars!1551 (transformation!873 (h!9881 rules!1920))) (toValue!1692 (transformation!873 (h!9881 rules!1920)))))))

(assert (=> d!175280 (= (inv!5562 (transformation!873 (h!9881 rules!1920))) e!282151)))

(declare-fun b!460588 () Bool)

(declare-fun equivClasses!329 (Int Int) Bool)

(assert (=> b!460588 (= e!282151 (equivClasses!329 (toChars!1551 (transformation!873 (h!9881 rules!1920))) (toValue!1692 (transformation!873 (h!9881 rules!1920)))))))

(assert (= (and d!175280 res!205005) b!460588))

(declare-fun m!728921 () Bool)

(assert (=> d!175280 m!728921))

(declare-fun m!728923 () Bool)

(assert (=> b!460588 m!728923))

(assert (=> b!460199 d!175280))

(declare-fun d!175282 () Bool)

(assert (=> d!175282 (= (inv!5559 (tag!1133 (rule!1568 (h!9882 tokens!465)))) (= (mod (str.len (value!29195 (tag!1133 (rule!1568 (h!9882 tokens!465))))) 2) 0))))

(assert (=> b!460181 d!175282))

(declare-fun d!175284 () Bool)

(declare-fun res!205006 () Bool)

(declare-fun e!282152 () Bool)

(assert (=> d!175284 (=> (not res!205006) (not e!282152))))

(assert (=> d!175284 (= res!205006 (semiInverseModEq!346 (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))) (toValue!1692 (transformation!873 (rule!1568 (h!9882 tokens!465))))))))

(assert (=> d!175284 (= (inv!5562 (transformation!873 (rule!1568 (h!9882 tokens!465)))) e!282152)))

(declare-fun b!460589 () Bool)

(assert (=> b!460589 (= e!282152 (equivClasses!329 (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))) (toValue!1692 (transformation!873 (rule!1568 (h!9882 tokens!465))))))))

(assert (= (and d!175284 res!205006) b!460589))

(declare-fun m!728925 () Bool)

(assert (=> d!175284 m!728925))

(declare-fun m!728927 () Bool)

(assert (=> b!460589 m!728927))

(assert (=> b!460181 d!175284))

(declare-fun d!175286 () Bool)

(declare-fun res!205011 () Bool)

(declare-fun e!282157 () Bool)

(assert (=> d!175286 (=> res!205011 e!282157)))

(assert (=> d!175286 (= res!205011 (not ((_ is Cons!4484) rules!1920)))))

(assert (=> d!175286 (= (sepAndNonSepRulesDisjointChars!462 rules!1920 rules!1920) e!282157)))

(declare-fun b!460594 () Bool)

(declare-fun e!282158 () Bool)

(assert (=> b!460594 (= e!282157 e!282158)))

(declare-fun res!205012 () Bool)

(assert (=> b!460594 (=> (not res!205012) (not e!282158))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!204 (Rule!1546 List!4494) Bool)

(assert (=> b!460594 (= res!205012 (ruleDisjointCharsFromAllFromOtherType!204 (h!9881 rules!1920) rules!1920))))

(declare-fun b!460595 () Bool)

(assert (=> b!460595 (= e!282158 (sepAndNonSepRulesDisjointChars!462 rules!1920 (t!71806 rules!1920)))))

(assert (= (and d!175286 (not res!205011)) b!460594))

(assert (= (and b!460594 res!205012) b!460595))

(declare-fun m!728929 () Bool)

(assert (=> b!460594 m!728929))

(declare-fun m!728931 () Bool)

(assert (=> b!460595 m!728931))

(assert (=> b!460203 d!175286))

(declare-fun d!175288 () Bool)

(assert (=> d!175288 (= (isEmpty!3469 tokens!465) ((_ is Nil!4485) tokens!465))))

(assert (=> b!460201 d!175288))

(declare-fun d!175290 () Bool)

(declare-fun list!2001 (Conc!1569) List!4495)

(assert (=> d!175290 (= (list!1997 (_1!2954 (lex!551 thiss!17480 rules!1920 lt!205346))) (list!2001 (c!92688 (_1!2954 (lex!551 thiss!17480 rules!1920 lt!205346)))))))

(declare-fun bs!57057 () Bool)

(assert (= bs!57057 d!175290))

(declare-fun m!728933 () Bool)

(assert (=> bs!57057 m!728933))

(assert (=> b!460201 d!175290))

(declare-fun d!175292 () Bool)

(declare-fun e!282160 () Bool)

(assert (=> d!175292 e!282160))

(declare-fun res!205019 () Bool)

(assert (=> d!175292 (=> res!205019 e!282160)))

(declare-fun lt!205554 () Option!1180)

(assert (=> d!175292 (= res!205019 (isEmpty!3473 lt!205554))))

(declare-fun e!282159 () Option!1180)

(assert (=> d!175292 (= lt!205554 e!282159)))

(declare-fun c!92775 () Bool)

(assert (=> d!175292 (= c!92775 (and ((_ is Cons!4484) rules!1920) ((_ is Nil!4484) (t!71806 rules!1920))))))

(declare-fun lt!205551 () Unit!8091)

(declare-fun lt!205555 () Unit!8091)

(assert (=> d!175292 (= lt!205551 lt!205555)))

(assert (=> d!175292 (isPrefix!525 lt!205329 lt!205329)))

(assert (=> d!175292 (= lt!205555 (lemmaIsPrefixRefl!293 lt!205329 lt!205329))))

(assert (=> d!175292 (rulesValidInductive!288 thiss!17480 rules!1920)))

(assert (=> d!175292 (= (maxPrefix!475 thiss!17480 rules!1920 lt!205329) lt!205554)))

(declare-fun b!460596 () Bool)

(declare-fun res!205017 () Bool)

(declare-fun e!282161 () Bool)

(assert (=> b!460596 (=> (not res!205017) (not e!282161))))

(assert (=> b!460596 (= res!205017 (= (list!1996 (charsOf!516 (_1!2953 (get!1647 lt!205554)))) (originalCharacters!916 (_1!2953 (get!1647 lt!205554)))))))

(declare-fun b!460597 () Bool)

(declare-fun res!205018 () Bool)

(assert (=> b!460597 (=> (not res!205018) (not e!282161))))

(assert (=> b!460597 (= res!205018 (= (++!1308 (list!1996 (charsOf!516 (_1!2953 (get!1647 lt!205554)))) (_2!2953 (get!1647 lt!205554))) lt!205329))))

(declare-fun b!460598 () Bool)

(declare-fun res!205014 () Bool)

(assert (=> b!460598 (=> (not res!205014) (not e!282161))))

(assert (=> b!460598 (= res!205014 (= (value!29196 (_1!2953 (get!1647 lt!205554))) (apply!1151 (transformation!873 (rule!1568 (_1!2953 (get!1647 lt!205554)))) (seqFromList!1111 (originalCharacters!916 (_1!2953 (get!1647 lt!205554)))))))))

(declare-fun b!460599 () Bool)

(assert (=> b!460599 (= e!282161 (contains!1003 rules!1920 (rule!1568 (_1!2953 (get!1647 lt!205554)))))))

(declare-fun b!460600 () Bool)

(declare-fun res!205013 () Bool)

(assert (=> b!460600 (=> (not res!205013) (not e!282161))))

(assert (=> b!460600 (= res!205013 (< (size!3660 (_2!2953 (get!1647 lt!205554))) (size!3660 lt!205329)))))

(declare-fun bm!31922 () Bool)

(declare-fun call!31927 () Option!1180)

(assert (=> bm!31922 (= call!31927 (maxPrefixOneRule!227 thiss!17480 (h!9881 rules!1920) lt!205329))))

(declare-fun b!460601 () Bool)

(assert (=> b!460601 (= e!282159 call!31927)))

(declare-fun b!460602 () Bool)

(assert (=> b!460602 (= e!282160 e!282161)))

(declare-fun res!205015 () Bool)

(assert (=> b!460602 (=> (not res!205015) (not e!282161))))

(assert (=> b!460602 (= res!205015 (isDefined!1019 lt!205554))))

(declare-fun b!460603 () Bool)

(declare-fun res!205016 () Bool)

(assert (=> b!460603 (=> (not res!205016) (not e!282161))))

(assert (=> b!460603 (= res!205016 (matchR!415 (regex!873 (rule!1568 (_1!2953 (get!1647 lt!205554)))) (list!1996 (charsOf!516 (_1!2953 (get!1647 lt!205554))))))))

(declare-fun b!460604 () Bool)

(declare-fun lt!205552 () Option!1180)

(declare-fun lt!205553 () Option!1180)

(assert (=> b!460604 (= e!282159 (ite (and ((_ is None!1179) lt!205552) ((_ is None!1179) lt!205553)) None!1179 (ite ((_ is None!1179) lt!205553) lt!205552 (ite ((_ is None!1179) lt!205552) lt!205553 (ite (>= (size!3657 (_1!2953 (v!15522 lt!205552))) (size!3657 (_1!2953 (v!15522 lt!205553)))) lt!205552 lt!205553)))))))

(assert (=> b!460604 (= lt!205552 call!31927)))

(assert (=> b!460604 (= lt!205553 (maxPrefix!475 thiss!17480 (t!71806 rules!1920) lt!205329))))

(assert (= (and d!175292 c!92775) b!460601))

(assert (= (and d!175292 (not c!92775)) b!460604))

(assert (= (or b!460601 b!460604) bm!31922))

(assert (= (and d!175292 (not res!205019)) b!460602))

(assert (= (and b!460602 res!205015) b!460596))

(assert (= (and b!460596 res!205017) b!460600))

(assert (= (and b!460600 res!205013) b!460597))

(assert (= (and b!460597 res!205018) b!460598))

(assert (= (and b!460598 res!205014) b!460603))

(assert (= (and b!460603 res!205016) b!460599))

(declare-fun m!728935 () Bool)

(assert (=> b!460598 m!728935))

(declare-fun m!728937 () Bool)

(assert (=> b!460598 m!728937))

(assert (=> b!460598 m!728937))

(declare-fun m!728939 () Bool)

(assert (=> b!460598 m!728939))

(assert (=> b!460597 m!728935))

(declare-fun m!728941 () Bool)

(assert (=> b!460597 m!728941))

(assert (=> b!460597 m!728941))

(declare-fun m!728943 () Bool)

(assert (=> b!460597 m!728943))

(assert (=> b!460597 m!728943))

(declare-fun m!728945 () Bool)

(assert (=> b!460597 m!728945))

(declare-fun m!728947 () Bool)

(assert (=> b!460602 m!728947))

(assert (=> b!460600 m!728935))

(declare-fun m!728949 () Bool)

(assert (=> b!460600 m!728949))

(declare-fun m!728951 () Bool)

(assert (=> b!460600 m!728951))

(declare-fun m!728953 () Bool)

(assert (=> b!460604 m!728953))

(assert (=> b!460603 m!728935))

(assert (=> b!460603 m!728941))

(assert (=> b!460603 m!728941))

(assert (=> b!460603 m!728943))

(assert (=> b!460603 m!728943))

(declare-fun m!728955 () Bool)

(assert (=> b!460603 m!728955))

(assert (=> b!460599 m!728935))

(declare-fun m!728957 () Bool)

(assert (=> b!460599 m!728957))

(assert (=> b!460596 m!728935))

(assert (=> b!460596 m!728941))

(assert (=> b!460596 m!728941))

(assert (=> b!460596 m!728943))

(declare-fun m!728959 () Bool)

(assert (=> bm!31922 m!728959))

(declare-fun m!728961 () Bool)

(assert (=> d!175292 m!728961))

(declare-fun m!728963 () Bool)

(assert (=> d!175292 m!728963))

(declare-fun m!728965 () Bool)

(assert (=> d!175292 m!728965))

(assert (=> d!175292 m!728883))

(assert (=> b!460201 d!175292))

(declare-fun d!175294 () Bool)

(assert (=> d!175294 (isPrefix!525 lt!205335 (++!1308 lt!205335 lt!205348))))

(declare-fun lt!205558 () Unit!8091)

(declare-fun choose!3458 (List!4493 List!4493) Unit!8091)

(assert (=> d!175294 (= lt!205558 (choose!3458 lt!205335 lt!205348))))

(assert (=> d!175294 (= (lemmaConcatTwoListThenFirstIsPrefix!410 lt!205335 lt!205348) lt!205558)))

(declare-fun bs!57058 () Bool)

(assert (= bs!57058 d!175294))

(assert (=> bs!57058 m!728283))

(assert (=> bs!57058 m!728283))

(declare-fun m!728967 () Bool)

(assert (=> bs!57058 m!728967))

(declare-fun m!728969 () Bool)

(assert (=> bs!57058 m!728969))

(assert (=> b!460201 d!175294))

(declare-fun b!460615 () Bool)

(declare-fun e!282168 () Bool)

(declare-fun tail!650 (List!4493) List!4493)

(assert (=> b!460615 (= e!282168 (isPrefix!525 (tail!650 lt!205335) (tail!650 lt!205341)))))

(declare-fun d!175296 () Bool)

(declare-fun e!282169 () Bool)

(assert (=> d!175296 e!282169))

(declare-fun res!205029 () Bool)

(assert (=> d!175296 (=> res!205029 e!282169)))

(declare-fun lt!205561 () Bool)

(assert (=> d!175296 (= res!205029 (not lt!205561))))

(declare-fun e!282170 () Bool)

(assert (=> d!175296 (= lt!205561 e!282170)))

(declare-fun res!205028 () Bool)

(assert (=> d!175296 (=> res!205028 e!282170)))

(assert (=> d!175296 (= res!205028 ((_ is Nil!4483) lt!205335))))

(assert (=> d!175296 (= (isPrefix!525 lt!205335 lt!205341) lt!205561)))

(declare-fun b!460616 () Bool)

(assert (=> b!460616 (= e!282169 (>= (size!3660 lt!205341) (size!3660 lt!205335)))))

(declare-fun b!460613 () Bool)

(assert (=> b!460613 (= e!282170 e!282168)))

(declare-fun res!205030 () Bool)

(assert (=> b!460613 (=> (not res!205030) (not e!282168))))

(assert (=> b!460613 (= res!205030 (not ((_ is Nil!4483) lt!205341)))))

(declare-fun b!460614 () Bool)

(declare-fun res!205031 () Bool)

(assert (=> b!460614 (=> (not res!205031) (not e!282168))))

(declare-fun head!1130 (List!4493) C!3116)

(assert (=> b!460614 (= res!205031 (= (head!1130 lt!205335) (head!1130 lt!205341)))))

(assert (= (and d!175296 (not res!205028)) b!460613))

(assert (= (and b!460613 res!205030) b!460614))

(assert (= (and b!460614 res!205031) b!460615))

(assert (= (and d!175296 (not res!205029)) b!460616))

(declare-fun m!728971 () Bool)

(assert (=> b!460615 m!728971))

(declare-fun m!728973 () Bool)

(assert (=> b!460615 m!728973))

(assert (=> b!460615 m!728971))

(assert (=> b!460615 m!728973))

(declare-fun m!728975 () Bool)

(assert (=> b!460615 m!728975))

(declare-fun m!728977 () Bool)

(assert (=> b!460616 m!728977))

(assert (=> b!460616 m!728407))

(declare-fun m!728979 () Bool)

(assert (=> b!460614 m!728979))

(declare-fun m!728981 () Bool)

(assert (=> b!460614 m!728981))

(assert (=> b!460201 d!175296))

(declare-fun bs!57071 () Bool)

(declare-fun d!175298 () Bool)

(assert (= bs!57071 (and d!175298 b!460489)))

(declare-fun lambda!13587 () Int)

(assert (=> bs!57071 (not (= lambda!13587 lambda!13575))))

(declare-fun bs!57072 () Bool)

(assert (= bs!57072 (and d!175298 d!175196)))

(assert (=> bs!57072 (not (= lambda!13587 lambda!13566))))

(declare-fun bs!57073 () Bool)

(assert (= bs!57073 (and d!175298 b!460437)))

(assert (=> bs!57073 (not (= lambda!13587 lambda!13572))))

(declare-fun bs!57074 () Bool)

(assert (= bs!57074 (and d!175298 d!175214)))

(assert (=> bs!57074 (= lambda!13587 lambda!13571)))

(declare-fun bs!57075 () Bool)

(assert (= bs!57075 (and d!175298 b!460194)))

(assert (=> bs!57075 (not (= lambda!13587 lambda!13558))))

(declare-fun bs!57076 () Bool)

(assert (= bs!57076 (and d!175298 b!460196)))

(assert (=> bs!57076 (= lambda!13587 lambda!13557)))

(assert (=> d!175298 (= (filter!101 (list!1997 (_1!2954 (lex!551 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!432 thiss!17480 rules!1920 (seqFromList!1112 (t!71807 tokens!465)) separatorToken!170 0)))) lambda!13587) (t!71807 tokens!465))))

(declare-fun lt!205611 () Unit!8091)

(declare-fun choose!3459 (LexerInterface!759 List!4494 List!4495 Token!1490) Unit!8091)

(assert (=> d!175298 (= lt!205611 (choose!3459 thiss!17480 rules!1920 (t!71807 tokens!465) separatorToken!170))))

(assert (=> d!175298 (not (isEmpty!3466 rules!1920))))

(assert (=> d!175298 (= (theoremInvertabilityFromTokensSepTokenWhenNeeded!92 thiss!17480 rules!1920 (t!71807 tokens!465) separatorToken!170) lt!205611)))

(declare-fun bs!57077 () Bool)

(assert (= bs!57077 d!175298))

(declare-fun m!729109 () Bool)

(assert (=> bs!57077 m!729109))

(declare-fun m!729111 () Bool)

(assert (=> bs!57077 m!729111))

(assert (=> bs!57077 m!728297))

(declare-fun m!729113 () Bool)

(assert (=> bs!57077 m!729113))

(assert (=> bs!57077 m!728313))

(declare-fun m!729115 () Bool)

(assert (=> bs!57077 m!729115))

(assert (=> bs!57077 m!728389))

(assert (=> bs!57077 m!728297))

(assert (=> bs!57077 m!728313))

(assert (=> bs!57077 m!729109))

(assert (=> b!460201 d!175298))

(declare-fun e!282235 () List!4495)

(declare-fun call!31945 () List!4495)

(declare-fun b!460707 () Bool)

(assert (=> b!460707 (= e!282235 (Cons!4485 (h!9882 (list!1997 (_1!2954 (lex!551 thiss!17480 rules!1920 lt!205346)))) call!31945))))

(declare-fun b!460708 () Bool)

(assert (=> b!460708 (= e!282235 call!31945)))

(declare-fun b!460709 () Bool)

(declare-fun e!282234 () List!4495)

(assert (=> b!460709 (= e!282234 Nil!4485)))

(declare-fun b!460710 () Bool)

(declare-fun e!282233 () Bool)

(declare-fun lt!205614 () List!4495)

(assert (=> b!460710 (= e!282233 (forall!1304 lt!205614 lambda!13557))))

(declare-fun d!175340 () Bool)

(assert (=> d!175340 e!282233))

(declare-fun res!205075 () Bool)

(assert (=> d!175340 (=> (not res!205075) (not e!282233))))

(declare-fun size!3665 (List!4495) Int)

(assert (=> d!175340 (= res!205075 (<= (size!3665 lt!205614) (size!3665 (list!1997 (_1!2954 (lex!551 thiss!17480 rules!1920 lt!205346))))))))

(assert (=> d!175340 (= lt!205614 e!282234)))

(declare-fun c!92795 () Bool)

(assert (=> d!175340 (= c!92795 ((_ is Nil!4485) (list!1997 (_1!2954 (lex!551 thiss!17480 rules!1920 lt!205346)))))))

(assert (=> d!175340 (= (filter!101 (list!1997 (_1!2954 (lex!551 thiss!17480 rules!1920 lt!205346))) lambda!13557) lt!205614)))

(declare-fun b!460711 () Bool)

(assert (=> b!460711 (= e!282234 e!282235)))

(declare-fun c!92796 () Bool)

(declare-fun dynLambda!2739 (Int Token!1490) Bool)

(assert (=> b!460711 (= c!92796 (dynLambda!2739 lambda!13557 (h!9882 (list!1997 (_1!2954 (lex!551 thiss!17480 rules!1920 lt!205346))))))))

(declare-fun b!460712 () Bool)

(declare-fun res!205076 () Bool)

(assert (=> b!460712 (=> (not res!205076) (not e!282233))))

(declare-fun content!749 (List!4495) (InoxSet Token!1490))

(assert (=> b!460712 (= res!205076 (= ((_ map implies) (content!749 lt!205614) (content!749 (list!1997 (_1!2954 (lex!551 thiss!17480 rules!1920 lt!205346))))) ((as const (InoxSet Token!1490)) true)))))

(declare-fun bm!31940 () Bool)

(assert (=> bm!31940 (= call!31945 (filter!101 (t!71807 (list!1997 (_1!2954 (lex!551 thiss!17480 rules!1920 lt!205346)))) lambda!13557))))

(assert (= (and d!175340 c!92795) b!460709))

(assert (= (and d!175340 (not c!92795)) b!460711))

(assert (= (and b!460711 c!92796) b!460707))

(assert (= (and b!460711 (not c!92796)) b!460708))

(assert (= (or b!460707 b!460708) bm!31940))

(assert (= (and d!175340 res!205075) b!460712))

(assert (= (and b!460712 res!205076) b!460710))

(declare-fun b_lambda!19099 () Bool)

(assert (=> (not b_lambda!19099) (not b!460711)))

(declare-fun m!729117 () Bool)

(assert (=> b!460711 m!729117))

(declare-fun m!729119 () Bool)

(assert (=> b!460712 m!729119))

(assert (=> b!460712 m!728271))

(declare-fun m!729121 () Bool)

(assert (=> b!460712 m!729121))

(declare-fun m!729123 () Bool)

(assert (=> d!175340 m!729123))

(assert (=> d!175340 m!728271))

(declare-fun m!729125 () Bool)

(assert (=> d!175340 m!729125))

(declare-fun m!729127 () Bool)

(assert (=> b!460710 m!729127))

(declare-fun m!729129 () Bool)

(assert (=> bm!31940 m!729129))

(assert (=> b!460201 d!175340))

(declare-fun b!460715 () Bool)

(declare-fun res!205077 () Bool)

(declare-fun e!282237 () Bool)

(assert (=> b!460715 (=> (not res!205077) (not e!282237))))

(declare-fun lt!205615 () List!4493)

(assert (=> b!460715 (= res!205077 (= (size!3660 lt!205615) (+ (size!3660 lt!205335) (size!3660 lt!205348))))))

(declare-fun b!460714 () Bool)

(declare-fun e!282236 () List!4493)

(assert (=> b!460714 (= e!282236 (Cons!4483 (h!9880 lt!205335) (++!1308 (t!71805 lt!205335) lt!205348)))))

(declare-fun b!460716 () Bool)

(assert (=> b!460716 (= e!282237 (or (not (= lt!205348 Nil!4483)) (= lt!205615 lt!205335)))))

(declare-fun d!175342 () Bool)

(assert (=> d!175342 e!282237))

(declare-fun res!205078 () Bool)

(assert (=> d!175342 (=> (not res!205078) (not e!282237))))

(assert (=> d!175342 (= res!205078 (= (content!748 lt!205615) ((_ map or) (content!748 lt!205335) (content!748 lt!205348))))))

(assert (=> d!175342 (= lt!205615 e!282236)))

(declare-fun c!92797 () Bool)

(assert (=> d!175342 (= c!92797 ((_ is Nil!4483) lt!205335))))

(assert (=> d!175342 (= (++!1308 lt!205335 lt!205348) lt!205615)))

(declare-fun b!460713 () Bool)

(assert (=> b!460713 (= e!282236 lt!205348)))

(assert (= (and d!175342 c!92797) b!460713))

(assert (= (and d!175342 (not c!92797)) b!460714))

(assert (= (and d!175342 res!205078) b!460715))

(assert (= (and b!460715 res!205077) b!460716))

(declare-fun m!729131 () Bool)

(assert (=> b!460715 m!729131))

(assert (=> b!460715 m!728407))

(declare-fun m!729133 () Bool)

(assert (=> b!460715 m!729133))

(declare-fun m!729135 () Bool)

(assert (=> b!460714 m!729135))

(declare-fun m!729137 () Bool)

(assert (=> d!175342 m!729137))

(assert (=> d!175342 m!728415))

(declare-fun m!729139 () Bool)

(assert (=> d!175342 m!729139))

(assert (=> b!460201 d!175342))

(declare-fun d!175344 () Bool)

(declare-fun e!282266 () Bool)

(assert (=> d!175344 e!282266))

(declare-fun res!205108 () Bool)

(assert (=> d!175344 (=> res!205108 e!282266)))

(assert (=> d!175344 (= res!205108 (isEmpty!3469 tokens!465))))

(declare-fun lt!205644 () Unit!8091)

(declare-fun choose!3460 (LexerInterface!759 List!4494 List!4495 Token!1490) Unit!8091)

(assert (=> d!175344 (= lt!205644 (choose!3460 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!175344 (not (isEmpty!3466 rules!1920))))

(assert (=> d!175344 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!274 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!205644)))

(declare-fun b!460751 () Bool)

(declare-fun e!282265 () Bool)

(assert (=> b!460751 (= e!282266 e!282265)))

(declare-fun res!205107 () Bool)

(assert (=> b!460751 (=> (not res!205107) (not e!282265))))

(assert (=> b!460751 (= res!205107 (isDefined!1019 (maxPrefix!475 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!440 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!460752 () Bool)

(assert (=> b!460752 (= e!282265 (= (_1!2953 (get!1647 (maxPrefix!475 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!440 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!1128 tokens!465)))))

(assert (= (and d!175344 (not res!205108)) b!460751))

(assert (= (and b!460751 res!205107) b!460752))

(assert (=> d!175344 m!728267))

(declare-fun m!729195 () Bool)

(assert (=> d!175344 m!729195))

(assert (=> d!175344 m!728389))

(assert (=> b!460751 m!728361))

(assert (=> b!460751 m!728361))

(declare-fun m!729197 () Bool)

(assert (=> b!460751 m!729197))

(assert (=> b!460751 m!729197))

(declare-fun m!729199 () Bool)

(assert (=> b!460751 m!729199))

(assert (=> b!460752 m!728361))

(assert (=> b!460752 m!728361))

(assert (=> b!460752 m!729197))

(assert (=> b!460752 m!729197))

(declare-fun m!729201 () Bool)

(assert (=> b!460752 m!729201))

(assert (=> b!460752 m!728393))

(assert (=> b!460201 d!175344))

(declare-fun b!460753 () Bool)

(declare-fun e!282267 () Bool)

(declare-fun e!282268 () Bool)

(assert (=> b!460753 (= e!282267 e!282268)))

(declare-fun res!205111 () Bool)

(declare-fun lt!205645 () tuple2!5476)

(assert (=> b!460753 (= res!205111 (< (size!3662 (_2!2954 lt!205645)) (size!3662 lt!205346)))))

(assert (=> b!460753 (=> (not res!205111) (not e!282268))))

(declare-fun d!175356 () Bool)

(declare-fun e!282269 () Bool)

(assert (=> d!175356 e!282269))

(declare-fun res!205110 () Bool)

(assert (=> d!175356 (=> (not res!205110) (not e!282269))))

(assert (=> d!175356 (= res!205110 e!282267)))

(declare-fun c!92801 () Bool)

(assert (=> d!175356 (= c!92801 (> (size!3664 (_1!2954 lt!205645)) 0))))

(assert (=> d!175356 (= lt!205645 (lexTailRecV2!262 thiss!17480 rules!1920 lt!205346 (BalanceConc!3145 Empty!1568) lt!205346 (BalanceConc!3147 Empty!1569)))))

(assert (=> d!175356 (= (lex!551 thiss!17480 rules!1920 lt!205346) lt!205645)))

(declare-fun b!460754 () Bool)

(declare-fun res!205109 () Bool)

(assert (=> b!460754 (=> (not res!205109) (not e!282269))))

(assert (=> b!460754 (= res!205109 (= (list!1997 (_1!2954 lt!205645)) (_1!2957 (lexList!297 thiss!17480 rules!1920 (list!1996 lt!205346)))))))

(declare-fun b!460755 () Bool)

(assert (=> b!460755 (= e!282268 (not (isEmpty!3467 (_1!2954 lt!205645))))))

(declare-fun b!460756 () Bool)

(assert (=> b!460756 (= e!282267 (= (_2!2954 lt!205645) lt!205346))))

(declare-fun b!460757 () Bool)

(assert (=> b!460757 (= e!282269 (= (list!1996 (_2!2954 lt!205645)) (_2!2957 (lexList!297 thiss!17480 rules!1920 (list!1996 lt!205346)))))))

(assert (= (and d!175356 c!92801) b!460753))

(assert (= (and d!175356 (not c!92801)) b!460756))

(assert (= (and b!460753 res!205111) b!460755))

(assert (= (and d!175356 res!205110) b!460754))

(assert (= (and b!460754 res!205109) b!460757))

(declare-fun m!729203 () Bool)

(assert (=> b!460757 m!729203))

(assert (=> b!460757 m!728303))

(assert (=> b!460757 m!728303))

(declare-fun m!729205 () Bool)

(assert (=> b!460757 m!729205))

(declare-fun m!729207 () Bool)

(assert (=> d!175356 m!729207))

(declare-fun m!729209 () Bool)

(assert (=> d!175356 m!729209))

(declare-fun m!729211 () Bool)

(assert (=> b!460753 m!729211))

(declare-fun m!729213 () Bool)

(assert (=> b!460753 m!729213))

(declare-fun m!729215 () Bool)

(assert (=> b!460754 m!729215))

(assert (=> b!460754 m!728303))

(assert (=> b!460754 m!728303))

(assert (=> b!460754 m!729205))

(declare-fun m!729217 () Bool)

(assert (=> b!460755 m!729217))

(assert (=> b!460201 d!175356))

(declare-fun b!460760 () Bool)

(declare-fun e!282270 () Bool)

(assert (=> b!460760 (= e!282270 (isPrefix!525 (tail!650 lt!205335) (tail!650 lt!205329)))))

(declare-fun d!175358 () Bool)

(declare-fun e!282271 () Bool)

(assert (=> d!175358 e!282271))

(declare-fun res!205113 () Bool)

(assert (=> d!175358 (=> res!205113 e!282271)))

(declare-fun lt!205646 () Bool)

(assert (=> d!175358 (= res!205113 (not lt!205646))))

(declare-fun e!282272 () Bool)

(assert (=> d!175358 (= lt!205646 e!282272)))

(declare-fun res!205112 () Bool)

(assert (=> d!175358 (=> res!205112 e!282272)))

(assert (=> d!175358 (= res!205112 ((_ is Nil!4483) lt!205335))))

(assert (=> d!175358 (= (isPrefix!525 lt!205335 lt!205329) lt!205646)))

(declare-fun b!460761 () Bool)

(assert (=> b!460761 (= e!282271 (>= (size!3660 lt!205329) (size!3660 lt!205335)))))

(declare-fun b!460758 () Bool)

(assert (=> b!460758 (= e!282272 e!282270)))

(declare-fun res!205114 () Bool)

(assert (=> b!460758 (=> (not res!205114) (not e!282270))))

(assert (=> b!460758 (= res!205114 (not ((_ is Nil!4483) lt!205329)))))

(declare-fun b!460759 () Bool)

(declare-fun res!205115 () Bool)

(assert (=> b!460759 (=> (not res!205115) (not e!282270))))

(assert (=> b!460759 (= res!205115 (= (head!1130 lt!205335) (head!1130 lt!205329)))))

(assert (= (and d!175358 (not res!205112)) b!460758))

(assert (= (and b!460758 res!205114) b!460759))

(assert (= (and b!460759 res!205115) b!460760))

(assert (= (and d!175358 (not res!205113)) b!460761))

(assert (=> b!460760 m!728971))

(declare-fun m!729219 () Bool)

(assert (=> b!460760 m!729219))

(assert (=> b!460760 m!728971))

(assert (=> b!460760 m!729219))

(declare-fun m!729221 () Bool)

(assert (=> b!460760 m!729221))

(assert (=> b!460761 m!728951))

(assert (=> b!460761 m!728407))

(assert (=> b!460759 m!728979))

(declare-fun m!729223 () Bool)

(assert (=> b!460759 m!729223))

(assert (=> b!460201 d!175358))

(declare-fun d!175360 () Bool)

(assert (=> d!175360 (= (list!1996 (seqFromList!1111 lt!205329)) (list!1999 (c!92686 (seqFromList!1111 lt!205329))))))

(declare-fun bs!57079 () Bool)

(assert (= bs!57079 d!175360))

(declare-fun m!729225 () Bool)

(assert (=> bs!57079 m!729225))

(assert (=> b!460180 d!175360))

(declare-fun d!175362 () Bool)

(assert (=> d!175362 (= (seqFromList!1111 lt!205329) (fromListB!492 lt!205329))))

(declare-fun bs!57080 () Bool)

(assert (= bs!57080 d!175362))

(declare-fun m!729227 () Bool)

(assert (=> bs!57080 m!729227))

(assert (=> b!460180 d!175362))

(declare-fun b!460813 () Bool)

(declare-fun res!205147 () Bool)

(declare-fun e!282309 () Bool)

(assert (=> b!460813 (=> (not res!205147) (not e!282309))))

(declare-fun call!31956 () Bool)

(assert (=> b!460813 (= res!205147 (not call!31956))))

(declare-fun b!460814 () Bool)

(declare-fun e!282306 () Bool)

(declare-fun nullable!250 (Regex!1097) Bool)

(assert (=> b!460814 (= e!282306 (nullable!250 (regex!873 (rule!1568 (h!9882 tokens!465)))))))

(declare-fun b!460815 () Bool)

(declare-fun e!282307 () Bool)

(declare-fun e!282308 () Bool)

(assert (=> b!460815 (= e!282307 e!282308)))

(declare-fun c!92813 () Bool)

(assert (=> b!460815 (= c!92813 ((_ is EmptyLang!1097) (regex!873 (rule!1568 (h!9882 tokens!465)))))))

(declare-fun b!460817 () Bool)

(declare-fun lt!205670 () Bool)

(assert (=> b!460817 (= e!282308 (not lt!205670))))

(declare-fun b!460818 () Bool)

(declare-fun e!282305 () Bool)

(declare-fun e!282304 () Bool)

(assert (=> b!460818 (= e!282305 e!282304)))

(declare-fun res!205143 () Bool)

(assert (=> b!460818 (=> (not res!205143) (not e!282304))))

(assert (=> b!460818 (= res!205143 (not lt!205670))))

(declare-fun b!460819 () Bool)

(declare-fun res!205149 () Bool)

(assert (=> b!460819 (=> res!205149 e!282305)))

(assert (=> b!460819 (= res!205149 e!282309)))

(declare-fun res!205146 () Bool)

(assert (=> b!460819 (=> (not res!205146) (not e!282309))))

(assert (=> b!460819 (= res!205146 lt!205670)))

(declare-fun b!460820 () Bool)

(declare-fun res!205144 () Bool)

(declare-fun e!282310 () Bool)

(assert (=> b!460820 (=> res!205144 e!282310)))

(assert (=> b!460820 (= res!205144 (not (isEmpty!3468 (tail!650 lt!205335))))))

(declare-fun bm!31951 () Bool)

(assert (=> bm!31951 (= call!31956 (isEmpty!3468 lt!205335))))

(declare-fun b!460821 () Bool)

(assert (=> b!460821 (= e!282304 e!282310)))

(declare-fun res!205148 () Bool)

(assert (=> b!460821 (=> res!205148 e!282310)))

(assert (=> b!460821 (= res!205148 call!31956)))

(declare-fun b!460822 () Bool)

(declare-fun res!205145 () Bool)

(assert (=> b!460822 (=> res!205145 e!282305)))

(assert (=> b!460822 (= res!205145 (not ((_ is ElementMatch!1097) (regex!873 (rule!1568 (h!9882 tokens!465))))))))

(assert (=> b!460822 (= e!282308 e!282305)))

(declare-fun b!460816 () Bool)

(declare-fun derivativeStep!216 (Regex!1097 C!3116) Regex!1097)

(assert (=> b!460816 (= e!282306 (matchR!415 (derivativeStep!216 (regex!873 (rule!1568 (h!9882 tokens!465))) (head!1130 lt!205335)) (tail!650 lt!205335)))))

(declare-fun d!175364 () Bool)

(assert (=> d!175364 e!282307))

(declare-fun c!92814 () Bool)

(assert (=> d!175364 (= c!92814 ((_ is EmptyExpr!1097) (regex!873 (rule!1568 (h!9882 tokens!465)))))))

(assert (=> d!175364 (= lt!205670 e!282306)))

(declare-fun c!92815 () Bool)

(assert (=> d!175364 (= c!92815 (isEmpty!3468 lt!205335))))

(declare-fun validRegex!325 (Regex!1097) Bool)

(assert (=> d!175364 (validRegex!325 (regex!873 (rule!1568 (h!9882 tokens!465))))))

(assert (=> d!175364 (= (matchR!415 (regex!873 (rule!1568 (h!9882 tokens!465))) lt!205335) lt!205670)))

(declare-fun b!460823 () Bool)

(declare-fun res!205142 () Bool)

(assert (=> b!460823 (=> (not res!205142) (not e!282309))))

(assert (=> b!460823 (= res!205142 (isEmpty!3468 (tail!650 lt!205335)))))

(declare-fun b!460824 () Bool)

(assert (=> b!460824 (= e!282307 (= lt!205670 call!31956))))

(declare-fun b!460825 () Bool)

(assert (=> b!460825 (= e!282310 (not (= (head!1130 lt!205335) (c!92687 (regex!873 (rule!1568 (h!9882 tokens!465)))))))))

(declare-fun b!460826 () Bool)

(assert (=> b!460826 (= e!282309 (= (head!1130 lt!205335) (c!92687 (regex!873 (rule!1568 (h!9882 tokens!465))))))))

(assert (= (and d!175364 c!92815) b!460814))

(assert (= (and d!175364 (not c!92815)) b!460816))

(assert (= (and d!175364 c!92814) b!460824))

(assert (= (and d!175364 (not c!92814)) b!460815))

(assert (= (and b!460815 c!92813) b!460817))

(assert (= (and b!460815 (not c!92813)) b!460822))

(assert (= (and b!460822 (not res!205145)) b!460819))

(assert (= (and b!460819 res!205146) b!460813))

(assert (= (and b!460813 res!205147) b!460823))

(assert (= (and b!460823 res!205142) b!460826))

(assert (= (and b!460819 (not res!205149)) b!460818))

(assert (= (and b!460818 res!205143) b!460821))

(assert (= (and b!460821 (not res!205148)) b!460820))

(assert (= (and b!460820 (not res!205144)) b!460825))

(assert (= (or b!460824 b!460813 b!460821) bm!31951))

(assert (=> b!460820 m!728971))

(assert (=> b!460820 m!728971))

(declare-fun m!729271 () Bool)

(assert (=> b!460820 m!729271))

(assert (=> b!460823 m!728971))

(assert (=> b!460823 m!728971))

(assert (=> b!460823 m!729271))

(assert (=> b!460826 m!728979))

(assert (=> b!460816 m!728979))

(assert (=> b!460816 m!728979))

(declare-fun m!729273 () Bool)

(assert (=> b!460816 m!729273))

(assert (=> b!460816 m!728971))

(assert (=> b!460816 m!729273))

(assert (=> b!460816 m!728971))

(declare-fun m!729275 () Bool)

(assert (=> b!460816 m!729275))

(declare-fun m!729277 () Bool)

(assert (=> bm!31951 m!729277))

(assert (=> b!460825 m!728979))

(declare-fun m!729279 () Bool)

(assert (=> b!460814 m!729279))

(assert (=> d!175364 m!729277))

(declare-fun m!729281 () Bool)

(assert (=> d!175364 m!729281))

(assert (=> b!460173 d!175364))

(declare-fun d!175382 () Bool)

(declare-fun isEmpty!3476 (Option!1181) Bool)

(assert (=> d!175382 (= (isDefined!1020 (maxPrefixZipperSequence!438 thiss!17480 rules!1920 (seqFromList!1111 (originalCharacters!916 (h!9882 tokens!465))))) (not (isEmpty!3476 (maxPrefixZipperSequence!438 thiss!17480 rules!1920 (seqFromList!1111 (originalCharacters!916 (h!9882 tokens!465)))))))))

(declare-fun bs!57106 () Bool)

(assert (= bs!57106 d!175382))

(assert (=> bs!57106 m!728371))

(declare-fun m!729283 () Bool)

(assert (=> bs!57106 m!729283))

(assert (=> b!460194 d!175382))

(declare-fun call!31964 () Option!1181)

(declare-fun bm!31959 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!196 (LexerInterface!759 Rule!1546 BalanceConc!3144) Option!1181)

(assert (=> bm!31959 (= call!31964 (maxPrefixOneRuleZipperSequence!196 thiss!17480 (h!9881 rules!1920) (seqFromList!1111 (originalCharacters!916 (h!9882 tokens!465)))))))

(declare-fun d!175384 () Bool)

(declare-fun e!282388 () Bool)

(assert (=> d!175384 e!282388))

(declare-fun res!205169 () Bool)

(assert (=> d!175384 (=> (not res!205169) (not e!282388))))

(declare-fun lt!205719 () Option!1181)

(declare-fun maxPrefixZipper!196 (LexerInterface!759 List!4494 List!4493) Option!1180)

(assert (=> d!175384 (= res!205169 (= (isDefined!1020 lt!205719) (isDefined!1019 (maxPrefixZipper!196 thiss!17480 rules!1920 (list!1996 (seqFromList!1111 (originalCharacters!916 (h!9882 tokens!465))))))))))

(declare-fun e!282390 () Option!1181)

(assert (=> d!175384 (= lt!205719 e!282390)))

(declare-fun c!92829 () Bool)

(assert (=> d!175384 (= c!92829 (and ((_ is Cons!4484) rules!1920) ((_ is Nil!4484) (t!71806 rules!1920))))))

(declare-fun lt!205724 () Unit!8091)

(declare-fun lt!205721 () Unit!8091)

(assert (=> d!175384 (= lt!205724 lt!205721)))

(declare-fun lt!205720 () List!4493)

(declare-fun lt!205722 () List!4493)

(assert (=> d!175384 (isPrefix!525 lt!205720 lt!205722)))

(assert (=> d!175384 (= lt!205721 (lemmaIsPrefixRefl!293 lt!205720 lt!205722))))

(assert (=> d!175384 (= lt!205722 (list!1996 (seqFromList!1111 (originalCharacters!916 (h!9882 tokens!465)))))))

(assert (=> d!175384 (= lt!205720 (list!1996 (seqFromList!1111 (originalCharacters!916 (h!9882 tokens!465)))))))

(assert (=> d!175384 (rulesValidInductive!288 thiss!17480 rules!1920)))

(assert (=> d!175384 (= (maxPrefixZipperSequence!438 thiss!17480 rules!1920 (seqFromList!1111 (originalCharacters!916 (h!9882 tokens!465)))) lt!205719)))

(declare-fun b!460933 () Bool)

(declare-fun e!282392 () Bool)

(declare-fun e!282391 () Bool)

(assert (=> b!460933 (= e!282392 e!282391)))

(declare-fun res!205173 () Bool)

(assert (=> b!460933 (=> (not res!205173) (not e!282391))))

(declare-fun get!1649 (Option!1181) tuple2!5478)

(assert (=> b!460933 (= res!205173 (= (_1!2955 (get!1649 lt!205719)) (_1!2953 (get!1647 (maxPrefixZipper!196 thiss!17480 rules!1920 (list!1996 (seqFromList!1111 (originalCharacters!916 (h!9882 tokens!465)))))))))))

(declare-fun b!460934 () Bool)

(declare-fun e!282393 () Bool)

(assert (=> b!460934 (= e!282388 e!282393)))

(declare-fun res!205170 () Bool)

(assert (=> b!460934 (=> res!205170 e!282393)))

(assert (=> b!460934 (= res!205170 (not (isDefined!1020 lt!205719)))))

(declare-fun b!460935 () Bool)

(assert (=> b!460935 (= e!282391 (= (list!1996 (_2!2955 (get!1649 lt!205719))) (_2!2953 (get!1647 (maxPrefixZipper!196 thiss!17480 rules!1920 (list!1996 (seqFromList!1111 (originalCharacters!916 (h!9882 tokens!465)))))))))))

(declare-fun b!460936 () Bool)

(assert (=> b!460936 (= e!282390 call!31964)))

(declare-fun b!460937 () Bool)

(declare-fun e!282389 () Bool)

(assert (=> b!460937 (= e!282393 e!282389)))

(declare-fun res!205172 () Bool)

(assert (=> b!460937 (=> (not res!205172) (not e!282389))))

(assert (=> b!460937 (= res!205172 (= (_1!2955 (get!1649 lt!205719)) (_1!2953 (get!1647 (maxPrefix!475 thiss!17480 rules!1920 (list!1996 (seqFromList!1111 (originalCharacters!916 (h!9882 tokens!465)))))))))))

(declare-fun b!460938 () Bool)

(declare-fun lt!205723 () Option!1181)

(declare-fun lt!205718 () Option!1181)

(assert (=> b!460938 (= e!282390 (ite (and ((_ is None!1180) lt!205723) ((_ is None!1180) lt!205718)) None!1180 (ite ((_ is None!1180) lt!205718) lt!205723 (ite ((_ is None!1180) lt!205723) lt!205718 (ite (>= (size!3657 (_1!2955 (v!15523 lt!205723))) (size!3657 (_1!2955 (v!15523 lt!205718)))) lt!205723 lt!205718)))))))

(assert (=> b!460938 (= lt!205723 call!31964)))

(assert (=> b!460938 (= lt!205718 (maxPrefixZipperSequence!438 thiss!17480 (t!71806 rules!1920) (seqFromList!1111 (originalCharacters!916 (h!9882 tokens!465)))))))

(declare-fun b!460939 () Bool)

(assert (=> b!460939 (= e!282389 (= (list!1996 (_2!2955 (get!1649 lt!205719))) (_2!2953 (get!1647 (maxPrefix!475 thiss!17480 rules!1920 (list!1996 (seqFromList!1111 (originalCharacters!916 (h!9882 tokens!465)))))))))))

(declare-fun b!460940 () Bool)

(declare-fun res!205171 () Bool)

(assert (=> b!460940 (=> (not res!205171) (not e!282388))))

(assert (=> b!460940 (= res!205171 e!282392)))

(declare-fun res!205168 () Bool)

(assert (=> b!460940 (=> res!205168 e!282392)))

(assert (=> b!460940 (= res!205168 (not (isDefined!1020 lt!205719)))))

(assert (= (and d!175384 c!92829) b!460936))

(assert (= (and d!175384 (not c!92829)) b!460938))

(assert (= (or b!460936 b!460938) bm!31959))

(assert (= (and d!175384 res!205169) b!460940))

(assert (= (and b!460940 (not res!205168)) b!460933))

(assert (= (and b!460933 res!205173) b!460935))

(assert (= (and b!460940 res!205171) b!460934))

(assert (= (and b!460934 (not res!205170)) b!460937))

(assert (= (and b!460937 res!205172) b!460939))

(assert (=> bm!31959 m!728369))

(declare-fun m!729429 () Bool)

(assert (=> bm!31959 m!729429))

(declare-fun m!729431 () Bool)

(assert (=> b!460934 m!729431))

(assert (=> b!460938 m!728369))

(declare-fun m!729433 () Bool)

(assert (=> b!460938 m!729433))

(declare-fun m!729435 () Bool)

(assert (=> b!460933 m!729435))

(assert (=> b!460933 m!728369))

(declare-fun m!729437 () Bool)

(assert (=> b!460933 m!729437))

(assert (=> b!460933 m!729437))

(declare-fun m!729439 () Bool)

(assert (=> b!460933 m!729439))

(assert (=> b!460933 m!729439))

(declare-fun m!729441 () Bool)

(assert (=> b!460933 m!729441))

(assert (=> b!460937 m!729435))

(assert (=> b!460937 m!728369))

(assert (=> b!460937 m!729437))

(assert (=> b!460937 m!729437))

(declare-fun m!729443 () Bool)

(assert (=> b!460937 m!729443))

(assert (=> b!460937 m!729443))

(declare-fun m!729445 () Bool)

(assert (=> b!460937 m!729445))

(declare-fun m!729447 () Bool)

(assert (=> b!460939 m!729447))

(assert (=> b!460939 m!729435))

(assert (=> b!460939 m!729443))

(assert (=> b!460939 m!729445))

(assert (=> b!460939 m!728369))

(assert (=> b!460939 m!729437))

(assert (=> b!460939 m!729437))

(assert (=> b!460939 m!729443))

(assert (=> b!460940 m!729431))

(assert (=> b!460935 m!729447))

(assert (=> b!460935 m!729437))

(assert (=> b!460935 m!729439))

(assert (=> b!460935 m!729435))

(assert (=> b!460935 m!728369))

(assert (=> b!460935 m!729437))

(assert (=> b!460935 m!729439))

(assert (=> b!460935 m!729441))

(assert (=> d!175384 m!729431))

(assert (=> d!175384 m!729437))

(assert (=> d!175384 m!729439))

(declare-fun m!729449 () Bool)

(assert (=> d!175384 m!729449))

(assert (=> d!175384 m!728369))

(assert (=> d!175384 m!729437))

(assert (=> d!175384 m!729439))

(declare-fun m!729451 () Bool)

(assert (=> d!175384 m!729451))

(assert (=> d!175384 m!728883))

(declare-fun m!729453 () Bool)

(assert (=> d!175384 m!729453))

(assert (=> b!460194 d!175384))

(declare-fun d!175404 () Bool)

(assert (=> d!175404 (= (seqFromList!1111 (originalCharacters!916 (h!9882 tokens!465))) (fromListB!492 (originalCharacters!916 (h!9882 tokens!465))))))

(declare-fun bs!57121 () Bool)

(assert (= bs!57121 d!175404))

(declare-fun m!729455 () Bool)

(assert (=> bs!57121 m!729455))

(assert (=> b!460194 d!175404))

(declare-fun d!175406 () Bool)

(assert (=> d!175406 (dynLambda!2739 lambda!13558 (h!9882 tokens!465))))

(declare-fun lt!205727 () Unit!8091)

(declare-fun choose!3462 (List!4495 Int Token!1490) Unit!8091)

(assert (=> d!175406 (= lt!205727 (choose!3462 tokens!465 lambda!13558 (h!9882 tokens!465)))))

(declare-fun e!282396 () Bool)

(assert (=> d!175406 e!282396))

(declare-fun res!205176 () Bool)

(assert (=> d!175406 (=> (not res!205176) (not e!282396))))

(assert (=> d!175406 (= res!205176 (forall!1304 tokens!465 lambda!13558))))

(assert (=> d!175406 (= (forallContained!426 tokens!465 lambda!13558 (h!9882 tokens!465)) lt!205727)))

(declare-fun b!460943 () Bool)

(declare-fun contains!1005 (List!4495 Token!1490) Bool)

(assert (=> b!460943 (= e!282396 (contains!1005 tokens!465 (h!9882 tokens!465)))))

(assert (= (and d!175406 res!205176) b!460943))

(declare-fun b_lambda!19117 () Bool)

(assert (=> (not b_lambda!19117) (not d!175406)))

(declare-fun m!729457 () Bool)

(assert (=> d!175406 m!729457))

(declare-fun m!729459 () Bool)

(assert (=> d!175406 m!729459))

(declare-fun m!729461 () Bool)

(assert (=> d!175406 m!729461))

(declare-fun m!729463 () Bool)

(assert (=> b!460943 m!729463))

(assert (=> b!460194 d!175406))

(declare-fun d!175408 () Bool)

(assert (=> d!175408 (= (isDefined!1019 lt!205328) (not (isEmpty!3473 lt!205328)))))

(declare-fun bs!57122 () Bool)

(assert (= bs!57122 d!175408))

(declare-fun m!729465 () Bool)

(assert (=> bs!57122 m!729465))

(assert (=> b!460195 d!175408))

(assert (=> b!460195 d!175292))

(declare-fun b!460954 () Bool)

(declare-fun res!205179 () Bool)

(declare-fun e!282404 () Bool)

(assert (=> b!460954 (=> res!205179 e!282404)))

(assert (=> b!460954 (= res!205179 (not ((_ is IntegerValue!2687) (value!29196 separatorToken!170))))))

(declare-fun e!282403 () Bool)

(assert (=> b!460954 (= e!282403 e!282404)))

(declare-fun b!460955 () Bool)

(declare-fun e!282405 () Bool)

(declare-fun inv!16 (TokenValue!895) Bool)

(assert (=> b!460955 (= e!282405 (inv!16 (value!29196 separatorToken!170)))))

(declare-fun d!175410 () Bool)

(declare-fun c!92835 () Bool)

(assert (=> d!175410 (= c!92835 ((_ is IntegerValue!2685) (value!29196 separatorToken!170)))))

(assert (=> d!175410 (= (inv!21 (value!29196 separatorToken!170)) e!282405)))

(declare-fun b!460956 () Bool)

(assert (=> b!460956 (= e!282405 e!282403)))

(declare-fun c!92834 () Bool)

(assert (=> b!460956 (= c!92834 ((_ is IntegerValue!2686) (value!29196 separatorToken!170)))))

(declare-fun b!460957 () Bool)

(declare-fun inv!17 (TokenValue!895) Bool)

(assert (=> b!460957 (= e!282403 (inv!17 (value!29196 separatorToken!170)))))

(declare-fun b!460958 () Bool)

(declare-fun inv!15 (TokenValue!895) Bool)

(assert (=> b!460958 (= e!282404 (inv!15 (value!29196 separatorToken!170)))))

(assert (= (and d!175410 c!92835) b!460955))

(assert (= (and d!175410 (not c!92835)) b!460956))

(assert (= (and b!460956 c!92834) b!460957))

(assert (= (and b!460956 (not c!92834)) b!460954))

(assert (= (and b!460954 (not res!205179)) b!460958))

(declare-fun m!729467 () Bool)

(assert (=> b!460955 m!729467))

(declare-fun m!729469 () Bool)

(assert (=> b!460957 m!729469))

(declare-fun m!729471 () Bool)

(assert (=> b!460958 m!729471))

(assert (=> b!460193 d!175410))

(declare-fun d!175412 () Bool)

(declare-fun res!205184 () Bool)

(declare-fun e!282408 () Bool)

(assert (=> d!175412 (=> (not res!205184) (not e!282408))))

(assert (=> d!175412 (= res!205184 (not (isEmpty!3468 (originalCharacters!916 (h!9882 tokens!465)))))))

(assert (=> d!175412 (= (inv!5563 (h!9882 tokens!465)) e!282408)))

(declare-fun b!460963 () Bool)

(declare-fun res!205185 () Bool)

(assert (=> b!460963 (=> (not res!205185) (not e!282408))))

(declare-fun dynLambda!2740 (Int TokenValue!895) BalanceConc!3144)

(assert (=> b!460963 (= res!205185 (= (originalCharacters!916 (h!9882 tokens!465)) (list!1996 (dynLambda!2740 (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))) (value!29196 (h!9882 tokens!465))))))))

(declare-fun b!460964 () Bool)

(assert (=> b!460964 (= e!282408 (= (size!3657 (h!9882 tokens!465)) (size!3660 (originalCharacters!916 (h!9882 tokens!465)))))))

(assert (= (and d!175412 res!205184) b!460963))

(assert (= (and b!460963 res!205185) b!460964))

(declare-fun b_lambda!19119 () Bool)

(assert (=> (not b_lambda!19119) (not b!460963)))

(declare-fun t!71853 () Bool)

(declare-fun tb!46061 () Bool)

(assert (=> (and b!460206 (= (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))) (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465))))) t!71853) tb!46061))

(declare-fun b!460969 () Bool)

(declare-fun e!282411 () Bool)

(declare-fun tp!127534 () Bool)

(declare-fun inv!5566 (Conc!1568) Bool)

(assert (=> b!460969 (= e!282411 (and (inv!5566 (c!92686 (dynLambda!2740 (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))) (value!29196 (h!9882 tokens!465))))) tp!127534))))

(declare-fun result!50714 () Bool)

(declare-fun inv!5567 (BalanceConc!3144) Bool)

(assert (=> tb!46061 (= result!50714 (and (inv!5567 (dynLambda!2740 (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))) (value!29196 (h!9882 tokens!465)))) e!282411))))

(assert (= tb!46061 b!460969))

(declare-fun m!729473 () Bool)

(assert (=> b!460969 m!729473))

(declare-fun m!729475 () Bool)

(assert (=> tb!46061 m!729475))

(assert (=> b!460963 t!71853))

(declare-fun b_and!49485 () Bool)

(assert (= b_and!49443 (and (=> t!71853 result!50714) b_and!49485)))

(declare-fun t!71855 () Bool)

(declare-fun tb!46063 () Bool)

(assert (=> (and b!460177 (= (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))) (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465))))) t!71855) tb!46063))

(declare-fun result!50718 () Bool)

(assert (= result!50718 result!50714))

(assert (=> b!460963 t!71855))

(declare-fun b_and!49487 () Bool)

(assert (= b_and!49447 (and (=> t!71855 result!50718) b_and!49487)))

(declare-fun t!71857 () Bool)

(declare-fun tb!46065 () Bool)

(assert (=> (and b!460202 (= (toChars!1551 (transformation!873 (h!9881 rules!1920))) (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465))))) t!71857) tb!46065))

(declare-fun result!50720 () Bool)

(assert (= result!50720 result!50714))

(assert (=> b!460963 t!71857))

(declare-fun b_and!49489 () Bool)

(assert (= b_and!49451 (and (=> t!71857 result!50720) b_and!49489)))

(declare-fun m!729477 () Bool)

(assert (=> d!175412 m!729477))

(declare-fun m!729479 () Bool)

(assert (=> b!460963 m!729479))

(assert (=> b!460963 m!729479))

(declare-fun m!729481 () Bool)

(assert (=> b!460963 m!729481))

(declare-fun m!729483 () Bool)

(assert (=> b!460964 m!729483))

(assert (=> b!460197 d!175412))

(declare-fun d!175414 () Bool)

(assert (=> d!175414 (= (inv!5559 (tag!1133 (rule!1568 separatorToken!170))) (= (mod (str.len (value!29195 (tag!1133 (rule!1568 separatorToken!170)))) 2) 0))))

(assert (=> b!460175 d!175414))

(declare-fun d!175416 () Bool)

(declare-fun res!205186 () Bool)

(declare-fun e!282412 () Bool)

(assert (=> d!175416 (=> (not res!205186) (not e!282412))))

(assert (=> d!175416 (= res!205186 (semiInverseModEq!346 (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))) (toValue!1692 (transformation!873 (rule!1568 separatorToken!170)))))))

(assert (=> d!175416 (= (inv!5562 (transformation!873 (rule!1568 separatorToken!170))) e!282412)))

(declare-fun b!460970 () Bool)

(assert (=> b!460970 (= e!282412 (equivClasses!329 (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))) (toValue!1692 (transformation!873 (rule!1568 separatorToken!170)))))))

(assert (= (and d!175416 res!205186) b!460970))

(declare-fun m!729485 () Bool)

(assert (=> d!175416 m!729485))

(declare-fun m!729487 () Bool)

(assert (=> b!460970 m!729487))

(assert (=> b!460175 d!175416))

(declare-fun d!175418 () Bool)

(declare-fun res!205191 () Bool)

(declare-fun e!282417 () Bool)

(assert (=> d!175418 (=> res!205191 e!282417)))

(assert (=> d!175418 (= res!205191 ((_ is Nil!4485) tokens!465))))

(assert (=> d!175418 (= (forall!1304 tokens!465 lambda!13557) e!282417)))

(declare-fun b!460975 () Bool)

(declare-fun e!282418 () Bool)

(assert (=> b!460975 (= e!282417 e!282418)))

(declare-fun res!205192 () Bool)

(assert (=> b!460975 (=> (not res!205192) (not e!282418))))

(assert (=> b!460975 (= res!205192 (dynLambda!2739 lambda!13557 (h!9882 tokens!465)))))

(declare-fun b!460976 () Bool)

(assert (=> b!460976 (= e!282418 (forall!1304 (t!71807 tokens!465) lambda!13557))))

(assert (= (and d!175418 (not res!205191)) b!460975))

(assert (= (and b!460975 res!205192) b!460976))

(declare-fun b_lambda!19121 () Bool)

(assert (=> (not b_lambda!19121) (not b!460975)))

(declare-fun m!729489 () Bool)

(assert (=> b!460975 m!729489))

(declare-fun m!729491 () Bool)

(assert (=> b!460976 m!729491))

(assert (=> b!460196 d!175418))

(declare-fun d!175420 () Bool)

(assert (=> d!175420 (= (isEmpty!3468 (_2!2953 lt!205350)) ((_ is Nil!4483) (_2!2953 lt!205350)))))

(assert (=> b!460189 d!175420))

(declare-fun d!175422 () Bool)

(declare-fun res!205195 () Bool)

(declare-fun e!282421 () Bool)

(assert (=> d!175422 (=> (not res!205195) (not e!282421))))

(declare-fun rulesValid!312 (LexerInterface!759 List!4494) Bool)

(assert (=> d!175422 (= res!205195 (rulesValid!312 thiss!17480 rules!1920))))

(assert (=> d!175422 (= (rulesInvariant!725 thiss!17480 rules!1920) e!282421)))

(declare-fun b!460979 () Bool)

(declare-datatypes ((List!4497 0))(
  ( (Nil!4487) (Cons!4487 (h!9884 String!5555) (t!71873 List!4497)) )
))
(declare-fun noDuplicateTag!312 (LexerInterface!759 List!4494 List!4497) Bool)

(assert (=> b!460979 (= e!282421 (noDuplicateTag!312 thiss!17480 rules!1920 Nil!4487))))

(assert (= (and d!175422 res!205195) b!460979))

(declare-fun m!729493 () Bool)

(assert (=> d!175422 m!729493))

(declare-fun m!729495 () Bool)

(assert (=> b!460979 m!729495))

(assert (=> b!460188 d!175422))

(declare-fun b!460980 () Bool)

(declare-fun res!205196 () Bool)

(declare-fun e!282423 () Bool)

(assert (=> b!460980 (=> res!205196 e!282423)))

(assert (=> b!460980 (= res!205196 (not ((_ is IntegerValue!2687) (value!29196 (h!9882 tokens!465)))))))

(declare-fun e!282422 () Bool)

(assert (=> b!460980 (= e!282422 e!282423)))

(declare-fun b!460981 () Bool)

(declare-fun e!282424 () Bool)

(assert (=> b!460981 (= e!282424 (inv!16 (value!29196 (h!9882 tokens!465))))))

(declare-fun d!175424 () Bool)

(declare-fun c!92837 () Bool)

(assert (=> d!175424 (= c!92837 ((_ is IntegerValue!2685) (value!29196 (h!9882 tokens!465))))))

(assert (=> d!175424 (= (inv!21 (value!29196 (h!9882 tokens!465))) e!282424)))

(declare-fun b!460982 () Bool)

(assert (=> b!460982 (= e!282424 e!282422)))

(declare-fun c!92836 () Bool)

(assert (=> b!460982 (= c!92836 ((_ is IntegerValue!2686) (value!29196 (h!9882 tokens!465))))))

(declare-fun b!460983 () Bool)

(assert (=> b!460983 (= e!282422 (inv!17 (value!29196 (h!9882 tokens!465))))))

(declare-fun b!460984 () Bool)

(assert (=> b!460984 (= e!282423 (inv!15 (value!29196 (h!9882 tokens!465))))))

(assert (= (and d!175424 c!92837) b!460981))

(assert (= (and d!175424 (not c!92837)) b!460982))

(assert (= (and b!460982 c!92836) b!460983))

(assert (= (and b!460982 (not c!92836)) b!460980))

(assert (= (and b!460980 (not res!205196)) b!460984))

(declare-fun m!729497 () Bool)

(assert (=> b!460981 m!729497))

(declare-fun m!729499 () Bool)

(assert (=> b!460983 m!729499))

(declare-fun m!729501 () Bool)

(assert (=> b!460984 m!729501))

(assert (=> b!460192 d!175424))

(declare-fun d!175426 () Bool)

(declare-fun res!205197 () Bool)

(declare-fun e!282425 () Bool)

(assert (=> d!175426 (=> (not res!205197) (not e!282425))))

(assert (=> d!175426 (= res!205197 (not (isEmpty!3468 (originalCharacters!916 separatorToken!170))))))

(assert (=> d!175426 (= (inv!5563 separatorToken!170) e!282425)))

(declare-fun b!460985 () Bool)

(declare-fun res!205198 () Bool)

(assert (=> b!460985 (=> (not res!205198) (not e!282425))))

(assert (=> b!460985 (= res!205198 (= (originalCharacters!916 separatorToken!170) (list!1996 (dynLambda!2740 (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))) (value!29196 separatorToken!170)))))))

(declare-fun b!460986 () Bool)

(assert (=> b!460986 (= e!282425 (= (size!3657 separatorToken!170) (size!3660 (originalCharacters!916 separatorToken!170))))))

(assert (= (and d!175426 res!205197) b!460985))

(assert (= (and b!460985 res!205198) b!460986))

(declare-fun b_lambda!19123 () Bool)

(assert (=> (not b_lambda!19123) (not b!460985)))

(declare-fun t!71859 () Bool)

(declare-fun tb!46067 () Bool)

(assert (=> (and b!460206 (= (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))) (toChars!1551 (transformation!873 (rule!1568 separatorToken!170)))) t!71859) tb!46067))

(declare-fun b!460987 () Bool)

(declare-fun e!282426 () Bool)

(declare-fun tp!127535 () Bool)

(assert (=> b!460987 (= e!282426 (and (inv!5566 (c!92686 (dynLambda!2740 (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))) (value!29196 separatorToken!170)))) tp!127535))))

(declare-fun result!50722 () Bool)

(assert (=> tb!46067 (= result!50722 (and (inv!5567 (dynLambda!2740 (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))) (value!29196 separatorToken!170))) e!282426))))

(assert (= tb!46067 b!460987))

(declare-fun m!729503 () Bool)

(assert (=> b!460987 m!729503))

(declare-fun m!729505 () Bool)

(assert (=> tb!46067 m!729505))

(assert (=> b!460985 t!71859))

(declare-fun b_and!49491 () Bool)

(assert (= b_and!49485 (and (=> t!71859 result!50722) b_and!49491)))

(declare-fun t!71861 () Bool)

(declare-fun tb!46069 () Bool)

(assert (=> (and b!460177 (= (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))) (toChars!1551 (transformation!873 (rule!1568 separatorToken!170)))) t!71861) tb!46069))

(declare-fun result!50724 () Bool)

(assert (= result!50724 result!50722))

(assert (=> b!460985 t!71861))

(declare-fun b_and!49493 () Bool)

(assert (= b_and!49487 (and (=> t!71861 result!50724) b_and!49493)))

(declare-fun t!71863 () Bool)

(declare-fun tb!46071 () Bool)

(assert (=> (and b!460202 (= (toChars!1551 (transformation!873 (h!9881 rules!1920))) (toChars!1551 (transformation!873 (rule!1568 separatorToken!170)))) t!71863) tb!46071))

(declare-fun result!50726 () Bool)

(assert (= result!50726 result!50722))

(assert (=> b!460985 t!71863))

(declare-fun b_and!49495 () Bool)

(assert (= b_and!49489 (and (=> t!71863 result!50726) b_and!49495)))

(declare-fun m!729507 () Bool)

(assert (=> d!175426 m!729507))

(declare-fun m!729509 () Bool)

(assert (=> b!460985 m!729509))

(assert (=> b!460985 m!729509))

(declare-fun m!729511 () Bool)

(assert (=> b!460985 m!729511))

(declare-fun m!729513 () Bool)

(assert (=> b!460986 m!729513))

(assert (=> start!43686 d!175426))

(assert (=> b!460190 d!175342))

(declare-fun d!175428 () Bool)

(assert (=> d!175428 (= (seqFromList!1112 (t!71807 tokens!465)) (fromListB!493 (t!71807 tokens!465)))))

(declare-fun bs!57123 () Bool)

(assert (= bs!57123 d!175428))

(declare-fun m!729515 () Bool)

(assert (=> bs!57123 m!729515))

(assert (=> b!460191 d!175428))

(declare-fun d!175430 () Bool)

(assert (=> d!175430 (= (list!1996 (charsOf!516 separatorToken!170)) (list!1999 (c!92686 (charsOf!516 separatorToken!170))))))

(declare-fun bs!57124 () Bool)

(assert (= bs!57124 d!175430))

(declare-fun m!729517 () Bool)

(assert (=> bs!57124 m!729517))

(assert (=> b!460191 d!175430))

(declare-fun b!460990 () Bool)

(declare-fun res!205199 () Bool)

(declare-fun e!282428 () Bool)

(assert (=> b!460990 (=> (not res!205199) (not e!282428))))

(declare-fun lt!205728 () List!4493)

(assert (=> b!460990 (= res!205199 (= (size!3660 lt!205728) (+ (size!3660 (++!1308 lt!205335 lt!205342)) (size!3660 lt!205348))))))

(declare-fun b!460989 () Bool)

(declare-fun e!282427 () List!4493)

(assert (=> b!460989 (= e!282427 (Cons!4483 (h!9880 (++!1308 lt!205335 lt!205342)) (++!1308 (t!71805 (++!1308 lt!205335 lt!205342)) lt!205348)))))

(declare-fun b!460991 () Bool)

(assert (=> b!460991 (= e!282428 (or (not (= lt!205348 Nil!4483)) (= lt!205728 (++!1308 lt!205335 lt!205342))))))

(declare-fun d!175432 () Bool)

(assert (=> d!175432 e!282428))

(declare-fun res!205200 () Bool)

(assert (=> d!175432 (=> (not res!205200) (not e!282428))))

(assert (=> d!175432 (= res!205200 (= (content!748 lt!205728) ((_ map or) (content!748 (++!1308 lt!205335 lt!205342)) (content!748 lt!205348))))))

(assert (=> d!175432 (= lt!205728 e!282427)))

(declare-fun c!92838 () Bool)

(assert (=> d!175432 (= c!92838 ((_ is Nil!4483) (++!1308 lt!205335 lt!205342)))))

(assert (=> d!175432 (= (++!1308 (++!1308 lt!205335 lt!205342) lt!205348) lt!205728)))

(declare-fun b!460988 () Bool)

(assert (=> b!460988 (= e!282427 lt!205348)))

(assert (= (and d!175432 c!92838) b!460988))

(assert (= (and d!175432 (not c!92838)) b!460989))

(assert (= (and d!175432 res!205200) b!460990))

(assert (= (and b!460990 res!205199) b!460991))

(declare-fun m!729519 () Bool)

(assert (=> b!460990 m!729519))

(assert (=> b!460990 m!728317))

(declare-fun m!729521 () Bool)

(assert (=> b!460990 m!729521))

(assert (=> b!460990 m!729133))

(declare-fun m!729523 () Bool)

(assert (=> b!460989 m!729523))

(declare-fun m!729525 () Bool)

(assert (=> d!175432 m!729525))

(assert (=> d!175432 m!728317))

(declare-fun m!729527 () Bool)

(assert (=> d!175432 m!729527))

(assert (=> d!175432 m!729139))

(assert (=> b!460191 d!175432))

(declare-fun b!460994 () Bool)

(declare-fun res!205201 () Bool)

(declare-fun e!282430 () Bool)

(assert (=> b!460994 (=> (not res!205201) (not e!282430))))

(declare-fun lt!205729 () List!4493)

(assert (=> b!460994 (= res!205201 (= (size!3660 lt!205729) (+ (size!3660 lt!205335) (size!3660 lt!205337))))))

(declare-fun b!460993 () Bool)

(declare-fun e!282429 () List!4493)

(assert (=> b!460993 (= e!282429 (Cons!4483 (h!9880 lt!205335) (++!1308 (t!71805 lt!205335) lt!205337)))))

(declare-fun b!460995 () Bool)

(assert (=> b!460995 (= e!282430 (or (not (= lt!205337 Nil!4483)) (= lt!205729 lt!205335)))))

(declare-fun d!175434 () Bool)

(assert (=> d!175434 e!282430))

(declare-fun res!205202 () Bool)

(assert (=> d!175434 (=> (not res!205202) (not e!282430))))

(assert (=> d!175434 (= res!205202 (= (content!748 lt!205729) ((_ map or) (content!748 lt!205335) (content!748 lt!205337))))))

(assert (=> d!175434 (= lt!205729 e!282429)))

(declare-fun c!92839 () Bool)

(assert (=> d!175434 (= c!92839 ((_ is Nil!4483) lt!205335))))

(assert (=> d!175434 (= (++!1308 lt!205335 lt!205337) lt!205729)))

(declare-fun b!460992 () Bool)

(assert (=> b!460992 (= e!282429 lt!205337)))

(assert (= (and d!175434 c!92839) b!460992))

(assert (= (and d!175434 (not c!92839)) b!460993))

(assert (= (and d!175434 res!205202) b!460994))

(assert (= (and b!460994 res!205201) b!460995))

(declare-fun m!729529 () Bool)

(assert (=> b!460994 m!729529))

(assert (=> b!460994 m!728407))

(declare-fun m!729531 () Bool)

(assert (=> b!460994 m!729531))

(declare-fun m!729533 () Bool)

(assert (=> b!460993 m!729533))

(declare-fun m!729535 () Bool)

(assert (=> d!175434 m!729535))

(assert (=> d!175434 m!728415))

(declare-fun m!729537 () Bool)

(assert (=> d!175434 m!729537))

(assert (=> b!460191 d!175434))

(declare-fun bs!57125 () Bool)

(declare-fun b!461000 () Bool)

(assert (= bs!57125 (and b!461000 d!175298)))

(declare-fun lambda!13596 () Int)

(assert (=> bs!57125 (not (= lambda!13596 lambda!13587))))

(declare-fun bs!57126 () Bool)

(assert (= bs!57126 (and b!461000 b!460489)))

(assert (=> bs!57126 (= lambda!13596 lambda!13575)))

(declare-fun bs!57127 () Bool)

(assert (= bs!57127 (and b!461000 d!175196)))

(assert (=> bs!57127 (= lambda!13596 lambda!13566)))

(declare-fun bs!57128 () Bool)

(assert (= bs!57128 (and b!461000 b!460437)))

(assert (=> bs!57128 (= lambda!13596 lambda!13572)))

(declare-fun bs!57129 () Bool)

(assert (= bs!57129 (and b!461000 d!175214)))

(assert (=> bs!57129 (not (= lambda!13596 lambda!13571))))

(declare-fun bs!57130 () Bool)

(assert (= bs!57130 (and b!461000 b!460194)))

(assert (=> bs!57130 (= lambda!13596 lambda!13558)))

(declare-fun bs!57131 () Bool)

(assert (= bs!57131 (and b!461000 b!460196)))

(assert (=> bs!57131 (not (= lambda!13596 lambda!13557))))

(declare-fun b!461006 () Bool)

(declare-fun e!282437 () Bool)

(assert (=> b!461006 (= e!282437 true)))

(declare-fun b!461005 () Bool)

(declare-fun e!282436 () Bool)

(assert (=> b!461005 (= e!282436 e!282437)))

(declare-fun b!461004 () Bool)

(declare-fun e!282435 () Bool)

(assert (=> b!461004 (= e!282435 e!282436)))

(assert (=> b!461000 e!282435))

(assert (= b!461005 b!461006))

(assert (= b!461004 b!461005))

(assert (= (and b!461000 ((_ is Cons!4484) rules!1920)) b!461004))

(assert (=> b!461006 (< (dynLambda!2734 order!3997 (toValue!1692 (transformation!873 (h!9881 rules!1920)))) (dynLambda!2735 order!3999 lambda!13596))))

(assert (=> b!461006 (< (dynLambda!2736 order!4001 (toChars!1551 (transformation!873 (h!9881 rules!1920)))) (dynLambda!2735 order!3999 lambda!13596))))

(assert (=> b!461000 true))

(declare-fun call!31966 () BalanceConc!3144)

(declare-fun c!92841 () Bool)

(declare-fun call!31965 () BalanceConc!3144)

(declare-fun call!31968 () List!4493)

(declare-fun bm!31960 () Bool)

(assert (=> bm!31960 (= call!31968 (list!1996 (ite c!92841 call!31966 call!31965)))))

(declare-fun d!175436 () Bool)

(declare-fun c!92840 () Bool)

(assert (=> d!175436 (= c!92840 ((_ is Cons!4485) (t!71807 tokens!465)))))

(declare-fun e!282433 () List!4493)

(assert (=> d!175436 (= (printWithSeparatorTokenWhenNeededList!440 thiss!17480 rules!1920 (t!71807 tokens!465) separatorToken!170) e!282433)))

(declare-fun b!460996 () Bool)

(declare-fun e!282434 () List!4493)

(declare-fun call!31967 () List!4493)

(declare-fun lt!205731 () List!4493)

(assert (=> b!460996 (= e!282434 (++!1308 call!31967 lt!205731))))

(declare-fun bm!31961 () Bool)

(declare-fun call!31969 () List!4493)

(declare-fun e!282432 () BalanceConc!3144)

(assert (=> bm!31961 (= call!31969 (list!1996 e!282432))))

(declare-fun c!92842 () Bool)

(declare-fun c!92843 () Bool)

(assert (=> bm!31961 (= c!92842 c!92843)))

(declare-fun b!460997 () Bool)

(declare-fun lt!205733 () Option!1180)

(assert (=> b!460997 (= c!92843 (and ((_ is Some!1179) lt!205733) (not (= (_1!2953 (v!15522 lt!205733)) (h!9882 (t!71807 tokens!465))))))))

(declare-fun e!282431 () List!4493)

(assert (=> b!460997 (= e!282431 e!282434)))

(declare-fun b!460998 () Bool)

(assert (=> b!460998 (= e!282434 Nil!4483)))

(assert (=> b!460998 (= (print!484 thiss!17480 (singletonSeq!419 (h!9882 (t!71807 tokens!465)))) (printTailRec!445 thiss!17480 (singletonSeq!419 (h!9882 (t!71807 tokens!465))) 0 (BalanceConc!3145 Empty!1568)))))

(declare-fun lt!205730 () Unit!8091)

(declare-fun Unit!8103 () Unit!8091)

(assert (=> b!460998 (= lt!205730 Unit!8103)))

(declare-fun lt!205735 () Unit!8091)

(assert (=> b!460998 (= lt!205735 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!197 thiss!17480 rules!1920 call!31969 lt!205731))))

(assert (=> b!460998 false))

(declare-fun lt!205732 () Unit!8091)

(declare-fun Unit!8104 () Unit!8091)

(assert (=> b!460998 (= lt!205732 Unit!8104)))

(declare-fun b!460999 () Bool)

(assert (=> b!460999 (= e!282433 Nil!4483)))

(declare-fun bm!31962 () Bool)

(assert (=> bm!31962 (= call!31967 (++!1308 call!31968 (ite c!92841 lt!205731 call!31969)))))

(declare-fun bm!31963 () Bool)

(assert (=> bm!31963 (= call!31965 call!31966)))

(assert (=> b!461000 (= e!282433 e!282431)))

(declare-fun lt!205734 () Unit!8091)

(assert (=> b!461000 (= lt!205734 (forallContained!426 (t!71807 tokens!465) lambda!13596 (h!9882 (t!71807 tokens!465))))))

(assert (=> b!461000 (= lt!205731 (printWithSeparatorTokenWhenNeededList!440 thiss!17480 rules!1920 (t!71807 (t!71807 tokens!465)) separatorToken!170))))

(assert (=> b!461000 (= lt!205733 (maxPrefix!475 thiss!17480 rules!1920 (++!1308 (list!1996 (charsOf!516 (h!9882 (t!71807 tokens!465)))) lt!205731)))))

(assert (=> b!461000 (= c!92841 (and ((_ is Some!1179) lt!205733) (= (_1!2953 (v!15522 lt!205733)) (h!9882 (t!71807 tokens!465)))))))

(declare-fun b!461001 () Bool)

(assert (=> b!461001 (= e!282432 call!31965)))

(declare-fun bm!31964 () Bool)

(assert (=> bm!31964 (= call!31966 (charsOf!516 (h!9882 (t!71807 tokens!465))))))

(declare-fun b!461002 () Bool)

(assert (=> b!461002 (= e!282431 call!31967)))

(declare-fun b!461003 () Bool)

(assert (=> b!461003 (= e!282432 (charsOf!516 separatorToken!170))))

(assert (= (and d!175436 c!92840) b!461000))

(assert (= (and d!175436 (not c!92840)) b!460999))

(assert (= (and b!461000 c!92841) b!461002))

(assert (= (and b!461000 (not c!92841)) b!460997))

(assert (= (and b!460997 c!92843) b!460996))

(assert (= (and b!460997 (not c!92843)) b!460998))

(assert (= (or b!460996 b!460998) bm!31963))

(assert (= (or b!460996 b!460998) bm!31961))

(assert (= (and bm!31961 c!92842) b!461003))

(assert (= (and bm!31961 (not c!92842)) b!461001))

(assert (= (or b!461002 bm!31963) bm!31964))

(assert (= (or b!461002 b!460996) bm!31960))

(assert (= (or b!461002 b!460996) bm!31962))

(declare-fun m!729539 () Bool)

(assert (=> bm!31962 m!729539))

(declare-fun m!729541 () Bool)

(assert (=> b!460996 m!729541))

(declare-fun m!729543 () Bool)

(assert (=> bm!31961 m!729543))

(declare-fun m!729545 () Bool)

(assert (=> bm!31960 m!729545))

(declare-fun m!729547 () Bool)

(assert (=> bm!31964 m!729547))

(assert (=> b!461003 m!728305))

(declare-fun m!729549 () Bool)

(assert (=> b!461000 m!729549))

(declare-fun m!729551 () Bool)

(assert (=> b!461000 m!729551))

(declare-fun m!729553 () Bool)

(assert (=> b!461000 m!729553))

(assert (=> b!461000 m!729553))

(declare-fun m!729555 () Bool)

(assert (=> b!461000 m!729555))

(assert (=> b!461000 m!729547))

(declare-fun m!729557 () Bool)

(assert (=> b!461000 m!729557))

(assert (=> b!461000 m!729547))

(assert (=> b!461000 m!729551))

(declare-fun m!729559 () Bool)

(assert (=> b!460998 m!729559))

(assert (=> b!460998 m!729559))

(declare-fun m!729561 () Bool)

(assert (=> b!460998 m!729561))

(assert (=> b!460998 m!729559))

(declare-fun m!729563 () Bool)

(assert (=> b!460998 m!729563))

(declare-fun m!729565 () Bool)

(assert (=> b!460998 m!729565))

(assert (=> b!460191 d!175436))

(declare-fun bs!57132 () Bool)

(declare-fun d!175438 () Bool)

(assert (= bs!57132 (and d!175438 d!175298)))

(declare-fun lambda!13597 () Int)

(assert (=> bs!57132 (= lambda!13597 lambda!13587)))

(declare-fun bs!57133 () Bool)

(assert (= bs!57133 (and d!175438 b!460489)))

(assert (=> bs!57133 (not (= lambda!13597 lambda!13575))))

(declare-fun bs!57134 () Bool)

(assert (= bs!57134 (and d!175438 d!175196)))

(assert (=> bs!57134 (not (= lambda!13597 lambda!13566))))

(declare-fun bs!57135 () Bool)

(assert (= bs!57135 (and d!175438 b!461000)))

(assert (=> bs!57135 (not (= lambda!13597 lambda!13596))))

(declare-fun bs!57136 () Bool)

(assert (= bs!57136 (and d!175438 b!460437)))

(assert (=> bs!57136 (not (= lambda!13597 lambda!13572))))

(declare-fun bs!57137 () Bool)

(assert (= bs!57137 (and d!175438 d!175214)))

(assert (=> bs!57137 (= lambda!13597 lambda!13571)))

(declare-fun bs!57138 () Bool)

(assert (= bs!57138 (and d!175438 b!460194)))

(assert (=> bs!57138 (not (= lambda!13597 lambda!13558))))

(declare-fun bs!57139 () Bool)

(assert (= bs!57139 (and d!175438 b!460196)))

(assert (=> bs!57139 (= lambda!13597 lambda!13557)))

(declare-fun bs!57140 () Bool)

(declare-fun b!461008 () Bool)

(assert (= bs!57140 (and b!461008 b!460489)))

(declare-fun lambda!13598 () Int)

(assert (=> bs!57140 (= lambda!13598 lambda!13575)))

(declare-fun bs!57141 () Bool)

(assert (= bs!57141 (and b!461008 d!175196)))

(assert (=> bs!57141 (= lambda!13598 lambda!13566)))

(declare-fun bs!57142 () Bool)

(assert (= bs!57142 (and b!461008 b!461000)))

(assert (=> bs!57142 (= lambda!13598 lambda!13596)))

(declare-fun bs!57143 () Bool)

(assert (= bs!57143 (and b!461008 b!460437)))

(assert (=> bs!57143 (= lambda!13598 lambda!13572)))

(declare-fun bs!57144 () Bool)

(assert (= bs!57144 (and b!461008 d!175214)))

(assert (=> bs!57144 (not (= lambda!13598 lambda!13571))))

(declare-fun bs!57145 () Bool)

(assert (= bs!57145 (and b!461008 b!460194)))

(assert (=> bs!57145 (= lambda!13598 lambda!13558)))

(declare-fun bs!57146 () Bool)

(assert (= bs!57146 (and b!461008 b!460196)))

(assert (=> bs!57146 (not (= lambda!13598 lambda!13557))))

(declare-fun bs!57147 () Bool)

(assert (= bs!57147 (and b!461008 d!175438)))

(assert (=> bs!57147 (not (= lambda!13598 lambda!13597))))

(declare-fun bs!57148 () Bool)

(assert (= bs!57148 (and b!461008 d!175298)))

(assert (=> bs!57148 (not (= lambda!13598 lambda!13587))))

(declare-fun b!461018 () Bool)

(declare-fun e!282446 () Bool)

(assert (=> b!461018 (= e!282446 true)))

(declare-fun b!461017 () Bool)

(declare-fun e!282445 () Bool)

(assert (=> b!461017 (= e!282445 e!282446)))

(declare-fun b!461016 () Bool)

(declare-fun e!282444 () Bool)

(assert (=> b!461016 (= e!282444 e!282445)))

(assert (=> b!461008 e!282444))

(assert (= b!461017 b!461018))

(assert (= b!461016 b!461017))

(assert (= (and b!461008 ((_ is Cons!4484) rules!1920)) b!461016))

(assert (=> b!461018 (< (dynLambda!2734 order!3997 (toValue!1692 (transformation!873 (h!9881 rules!1920)))) (dynLambda!2735 order!3999 lambda!13598))))

(assert (=> b!461018 (< (dynLambda!2736 order!4001 (toChars!1551 (transformation!873 (h!9881 rules!1920)))) (dynLambda!2735 order!3999 lambda!13598))))

(assert (=> b!461008 true))

(declare-fun lt!205749 () BalanceConc!3144)

(declare-fun call!31970 () BalanceConc!3144)

(declare-fun bm!31965 () Bool)

(declare-fun call!31973 () BalanceConc!3144)

(declare-fun c!92846 () Bool)

(declare-fun call!31974 () BalanceConc!3144)

(assert (=> bm!31965 (= call!31970 (++!1309 call!31974 (ite c!92846 lt!205749 call!31973)))))

(declare-fun b!461007 () Bool)

(declare-fun e!282443 () Bool)

(declare-fun lt!205746 () Option!1181)

(declare-fun call!31971 () Token!1490)

(assert (=> b!461007 (= e!282443 (not (= (_1!2955 (v!15523 lt!205746)) call!31971)))))

(declare-fun call!31972 () Token!1490)

(declare-fun bm!31966 () Bool)

(assert (=> bm!31966 (= call!31974 (charsOf!516 (ite c!92846 call!31971 call!31972)))))

(declare-fun lt!205747 () BalanceConc!3144)

(assert (=> d!175438 (= (list!1996 lt!205747) (printWithSeparatorTokenWhenNeededList!440 thiss!17480 rules!1920 (dropList!249 (seqFromList!1112 (t!71807 tokens!465)) 0) separatorToken!170))))

(declare-fun e!282439 () BalanceConc!3144)

(assert (=> d!175438 (= lt!205747 e!282439)))

(declare-fun c!92844 () Bool)

(assert (=> d!175438 (= c!92844 (>= 0 (size!3664 (seqFromList!1112 (t!71807 tokens!465)))))))

(declare-fun lt!205745 () Unit!8091)

(assert (=> d!175438 (= lt!205745 (lemmaContentSubsetPreservesForall!193 (list!1997 (seqFromList!1112 (t!71807 tokens!465))) (dropList!249 (seqFromList!1112 (t!71807 tokens!465)) 0) lambda!13597))))

(declare-fun e!282441 () Bool)

(assert (=> d!175438 e!282441))

(declare-fun res!205203 () Bool)

(assert (=> d!175438 (=> (not res!205203) (not e!282441))))

(assert (=> d!175438 (= res!205203 (>= 0 0))))

(assert (=> d!175438 (= (printWithSeparatorTokenWhenNeededRec!432 thiss!17480 rules!1920 (seqFromList!1112 (t!71807 tokens!465)) separatorToken!170 0) lt!205747)))

(declare-fun e!282442 () BalanceConc!3144)

(assert (=> b!461008 (= e!282439 e!282442)))

(declare-fun lt!205736 () List!4495)

(assert (=> b!461008 (= lt!205736 (list!1997 (seqFromList!1112 (t!71807 tokens!465))))))

(declare-fun lt!205737 () Unit!8091)

(assert (=> b!461008 (= lt!205737 (lemmaDropApply!289 lt!205736 0))))

(assert (=> b!461008 (= (head!1128 (drop!318 lt!205736 0)) (apply!1148 lt!205736 0))))

(declare-fun lt!205738 () Unit!8091)

(assert (=> b!461008 (= lt!205738 lt!205737)))

(declare-fun lt!205742 () List!4495)

(assert (=> b!461008 (= lt!205742 (list!1997 (seqFromList!1112 (t!71807 tokens!465))))))

(declare-fun lt!205740 () Unit!8091)

(assert (=> b!461008 (= lt!205740 (lemmaDropTail!281 lt!205742 0))))

(assert (=> b!461008 (= (tail!648 (drop!318 lt!205742 0)) (drop!318 lt!205742 (+ 0 1)))))

(declare-fun lt!205739 () Unit!8091)

(assert (=> b!461008 (= lt!205739 lt!205740)))

(declare-fun lt!205743 () Unit!8091)

(assert (=> b!461008 (= lt!205743 (forallContained!426 (list!1997 (seqFromList!1112 (t!71807 tokens!465))) lambda!13598 (apply!1149 (seqFromList!1112 (t!71807 tokens!465)) 0)))))

(assert (=> b!461008 (= lt!205749 (printWithSeparatorTokenWhenNeededRec!432 thiss!17480 rules!1920 (seqFromList!1112 (t!71807 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!461008 (= lt!205746 (maxPrefixZipperSequence!438 thiss!17480 rules!1920 (++!1309 (charsOf!516 (apply!1149 (seqFromList!1112 (t!71807 tokens!465)) 0)) lt!205749)))))

(declare-fun res!205205 () Bool)

(assert (=> b!461008 (= res!205205 ((_ is Some!1180) lt!205746))))

(declare-fun e!282440 () Bool)

(assert (=> b!461008 (=> (not res!205205) (not e!282440))))

(assert (=> b!461008 (= c!92846 e!282440)))

(declare-fun bm!31967 () Bool)

(assert (=> bm!31967 (= call!31972 call!31971)))

(declare-fun b!461009 () Bool)

(declare-fun c!92845 () Bool)

(assert (=> b!461009 (= c!92845 e!282443)))

(declare-fun res!205204 () Bool)

(assert (=> b!461009 (=> (not res!205204) (not e!282443))))

(assert (=> b!461009 (= res!205204 ((_ is Some!1180) lt!205746))))

(declare-fun e!282438 () BalanceConc!3144)

(assert (=> b!461009 (= e!282442 e!282438)))

(declare-fun b!461010 () Bool)

(assert (=> b!461010 (= e!282442 call!31970)))

(declare-fun b!461011 () Bool)

(assert (=> b!461011 (= e!282440 (= (_1!2955 (v!15523 lt!205746)) (apply!1149 (seqFromList!1112 (t!71807 tokens!465)) 0)))))

(declare-fun b!461012 () Bool)

(assert (=> b!461012 (= e!282438 (BalanceConc!3145 Empty!1568))))

(assert (=> b!461012 (= (print!484 thiss!17480 (singletonSeq!419 call!31972)) (printTailRec!445 thiss!17480 (singletonSeq!419 call!31972) 0 (BalanceConc!3145 Empty!1568)))))

(declare-fun lt!205741 () Unit!8091)

(declare-fun Unit!8107 () Unit!8091)

(assert (=> b!461012 (= lt!205741 Unit!8107)))

(declare-fun lt!205744 () Unit!8091)

(assert (=> b!461012 (= lt!205744 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!197 thiss!17480 rules!1920 (list!1996 call!31973) (list!1996 lt!205749)))))

(assert (=> b!461012 false))

(declare-fun lt!205748 () Unit!8091)

(declare-fun Unit!8108 () Unit!8091)

(assert (=> b!461012 (= lt!205748 Unit!8108)))

(declare-fun bm!31968 () Bool)

(assert (=> bm!31968 (= call!31973 (charsOf!516 (ite c!92845 separatorToken!170 call!31972)))))

(declare-fun b!461013 () Bool)

(assert (=> b!461013 (= e!282438 (++!1309 call!31970 lt!205749))))

(declare-fun bm!31969 () Bool)

(assert (=> bm!31969 (= call!31971 (apply!1149 (seqFromList!1112 (t!71807 tokens!465)) 0))))

(declare-fun b!461014 () Bool)

(assert (=> b!461014 (= e!282439 (BalanceConc!3145 Empty!1568))))

(declare-fun b!461015 () Bool)

(assert (=> b!461015 (= e!282441 (<= 0 (size!3664 (seqFromList!1112 (t!71807 tokens!465)))))))

(assert (= (and d!175438 res!205203) b!461015))

(assert (= (and d!175438 c!92844) b!461014))

(assert (= (and d!175438 (not c!92844)) b!461008))

(assert (= (and b!461008 res!205205) b!461011))

(assert (= (and b!461008 c!92846) b!461010))

(assert (= (and b!461008 (not c!92846)) b!461009))

(assert (= (and b!461009 res!205204) b!461007))

(assert (= (and b!461009 c!92845) b!461013))

(assert (= (and b!461009 (not c!92845)) b!461012))

(assert (= (or b!461013 b!461012) bm!31967))

(assert (= (or b!461013 b!461012) bm!31968))

(assert (= (or b!461010 b!461007 bm!31967) bm!31969))

(assert (= (or b!461010 b!461013) bm!31966))

(assert (= (or b!461010 b!461013) bm!31965))

(assert (=> bm!31969 m!728297))

(declare-fun m!729567 () Bool)

(assert (=> bm!31969 m!729567))

(assert (=> b!461011 m!728297))

(assert (=> b!461011 m!729567))

(declare-fun m!729569 () Bool)

(assert (=> b!461013 m!729569))

(declare-fun m!729571 () Bool)

(assert (=> bm!31968 m!729571))

(declare-fun m!729573 () Bool)

(assert (=> b!461012 m!729573))

(declare-fun m!729575 () Bool)

(assert (=> b!461012 m!729575))

(declare-fun m!729577 () Bool)

(assert (=> b!461012 m!729577))

(assert (=> b!461012 m!729573))

(declare-fun m!729579 () Bool)

(assert (=> b!461012 m!729579))

(declare-fun m!729581 () Bool)

(assert (=> b!461012 m!729581))

(assert (=> b!461012 m!729575))

(assert (=> b!461012 m!729579))

(assert (=> b!461012 m!729579))

(declare-fun m!729583 () Bool)

(assert (=> b!461012 m!729583))

(declare-fun m!729585 () Bool)

(assert (=> bm!31965 m!729585))

(declare-fun m!729587 () Bool)

(assert (=> b!461008 m!729587))

(declare-fun m!729589 () Bool)

(assert (=> b!461008 m!729589))

(declare-fun m!729591 () Bool)

(assert (=> b!461008 m!729591))

(declare-fun m!729593 () Bool)

(assert (=> b!461008 m!729593))

(declare-fun m!729595 () Bool)

(assert (=> b!461008 m!729595))

(assert (=> b!461008 m!729567))

(declare-fun m!729597 () Bool)

(assert (=> b!461008 m!729597))

(assert (=> b!461008 m!728297))

(declare-fun m!729599 () Bool)

(assert (=> b!461008 m!729599))

(assert (=> b!461008 m!729567))

(assert (=> b!461008 m!729591))

(assert (=> b!461008 m!729589))

(declare-fun m!729601 () Bool)

(assert (=> b!461008 m!729601))

(declare-fun m!729603 () Bool)

(assert (=> b!461008 m!729603))

(declare-fun m!729605 () Bool)

(assert (=> b!461008 m!729605))

(declare-fun m!729607 () Bool)

(assert (=> b!461008 m!729607))

(assert (=> b!461008 m!729607))

(declare-fun m!729609 () Bool)

(assert (=> b!461008 m!729609))

(assert (=> b!461008 m!729593))

(declare-fun m!729611 () Bool)

(assert (=> b!461008 m!729611))

(assert (=> b!461008 m!728297))

(assert (=> b!461008 m!729595))

(declare-fun m!729613 () Bool)

(assert (=> b!461008 m!729613))

(assert (=> b!461008 m!728297))

(assert (=> b!461008 m!729567))

(declare-fun m!729615 () Bool)

(assert (=> d!175438 m!729615))

(declare-fun m!729617 () Bool)

(assert (=> d!175438 m!729617))

(assert (=> d!175438 m!729595))

(assert (=> d!175438 m!729615))

(declare-fun m!729619 () Bool)

(assert (=> d!175438 m!729619))

(assert (=> d!175438 m!728297))

(assert (=> d!175438 m!729615))

(assert (=> d!175438 m!728297))

(declare-fun m!729621 () Bool)

(assert (=> d!175438 m!729621))

(declare-fun m!729623 () Bool)

(assert (=> d!175438 m!729623))

(assert (=> d!175438 m!728297))

(assert (=> d!175438 m!729595))

(assert (=> b!461015 m!728297))

(assert (=> b!461015 m!729621))

(declare-fun m!729625 () Bool)

(assert (=> bm!31966 m!729625))

(assert (=> b!460191 d!175438))

(declare-fun d!175440 () Bool)

(declare-fun lt!205752 () BalanceConc!3144)

(assert (=> d!175440 (= (list!1996 lt!205752) (originalCharacters!916 separatorToken!170))))

(assert (=> d!175440 (= lt!205752 (dynLambda!2740 (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))) (value!29196 separatorToken!170)))))

(assert (=> d!175440 (= (charsOf!516 separatorToken!170) lt!205752)))

(declare-fun b_lambda!19125 () Bool)

(assert (=> (not b_lambda!19125) (not d!175440)))

(assert (=> d!175440 t!71859))

(declare-fun b_and!49497 () Bool)

(assert (= b_and!49491 (and (=> t!71859 result!50722) b_and!49497)))

(assert (=> d!175440 t!71861))

(declare-fun b_and!49499 () Bool)

(assert (= b_and!49493 (and (=> t!71861 result!50724) b_and!49499)))

(assert (=> d!175440 t!71863))

(declare-fun b_and!49501 () Bool)

(assert (= b_and!49495 (and (=> t!71863 result!50726) b_and!49501)))

(declare-fun m!729627 () Bool)

(assert (=> d!175440 m!729627))

(assert (=> d!175440 m!729509))

(assert (=> b!460191 d!175440))

(declare-fun d!175442 () Bool)

(assert (=> d!175442 (= (list!1996 (charsOf!516 (h!9882 tokens!465))) (list!1999 (c!92686 (charsOf!516 (h!9882 tokens!465)))))))

(declare-fun bs!57149 () Bool)

(assert (= bs!57149 d!175442))

(declare-fun m!729629 () Bool)

(assert (=> bs!57149 m!729629))

(assert (=> b!460191 d!175442))

(declare-fun d!175444 () Bool)

(declare-fun lt!205753 () BalanceConc!3144)

(assert (=> d!175444 (= (list!1996 lt!205753) (originalCharacters!916 (h!9882 tokens!465)))))

(assert (=> d!175444 (= lt!205753 (dynLambda!2740 (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))) (value!29196 (h!9882 tokens!465))))))

(assert (=> d!175444 (= (charsOf!516 (h!9882 tokens!465)) lt!205753)))

(declare-fun b_lambda!19127 () Bool)

(assert (=> (not b_lambda!19127) (not d!175444)))

(assert (=> d!175444 t!71853))

(declare-fun b_and!49503 () Bool)

(assert (= b_and!49497 (and (=> t!71853 result!50714) b_and!49503)))

(assert (=> d!175444 t!71855))

(declare-fun b_and!49505 () Bool)

(assert (= b_and!49499 (and (=> t!71855 result!50718) b_and!49505)))

(assert (=> d!175444 t!71857))

(declare-fun b_and!49507 () Bool)

(assert (= b_and!49501 (and (=> t!71857 result!50720) b_and!49507)))

(declare-fun m!729631 () Bool)

(assert (=> d!175444 m!729631))

(assert (=> d!175444 m!729479))

(assert (=> b!460191 d!175444))

(declare-fun b!461021 () Bool)

(declare-fun res!205206 () Bool)

(declare-fun e!282448 () Bool)

(assert (=> b!461021 (=> (not res!205206) (not e!282448))))

(declare-fun lt!205754 () List!4493)

(assert (=> b!461021 (= res!205206 (= (size!3660 lt!205754) (+ (size!3660 lt!205335) (size!3660 lt!205342))))))

(declare-fun b!461020 () Bool)

(declare-fun e!282447 () List!4493)

(assert (=> b!461020 (= e!282447 (Cons!4483 (h!9880 lt!205335) (++!1308 (t!71805 lt!205335) lt!205342)))))

(declare-fun b!461022 () Bool)

(assert (=> b!461022 (= e!282448 (or (not (= lt!205342 Nil!4483)) (= lt!205754 lt!205335)))))

(declare-fun d!175446 () Bool)

(assert (=> d!175446 e!282448))

(declare-fun res!205207 () Bool)

(assert (=> d!175446 (=> (not res!205207) (not e!282448))))

(assert (=> d!175446 (= res!205207 (= (content!748 lt!205754) ((_ map or) (content!748 lt!205335) (content!748 lt!205342))))))

(assert (=> d!175446 (= lt!205754 e!282447)))

(declare-fun c!92847 () Bool)

(assert (=> d!175446 (= c!92847 ((_ is Nil!4483) lt!205335))))

(assert (=> d!175446 (= (++!1308 lt!205335 lt!205342) lt!205754)))

(declare-fun b!461019 () Bool)

(assert (=> b!461019 (= e!282447 lt!205342)))

(assert (= (and d!175446 c!92847) b!461019))

(assert (= (and d!175446 (not c!92847)) b!461020))

(assert (= (and d!175446 res!205207) b!461021))

(assert (= (and b!461021 res!205206) b!461022))

(declare-fun m!729633 () Bool)

(assert (=> b!461021 m!729633))

(assert (=> b!461021 m!728407))

(declare-fun m!729635 () Bool)

(assert (=> b!461021 m!729635))

(declare-fun m!729637 () Bool)

(assert (=> b!461020 m!729637))

(declare-fun m!729639 () Bool)

(assert (=> d!175446 m!729639))

(assert (=> d!175446 m!728415))

(declare-fun m!729641 () Bool)

(assert (=> d!175446 m!729641))

(assert (=> b!460191 d!175446))

(declare-fun b!461025 () Bool)

(declare-fun res!205208 () Bool)

(declare-fun e!282450 () Bool)

(assert (=> b!461025 (=> (not res!205208) (not e!282450))))

(declare-fun lt!205755 () List!4493)

(assert (=> b!461025 (= res!205208 (= (size!3660 lt!205755) (+ (size!3660 lt!205342) (size!3660 lt!205348))))))

(declare-fun b!461024 () Bool)

(declare-fun e!282449 () List!4493)

(assert (=> b!461024 (= e!282449 (Cons!4483 (h!9880 lt!205342) (++!1308 (t!71805 lt!205342) lt!205348)))))

(declare-fun b!461026 () Bool)

(assert (=> b!461026 (= e!282450 (or (not (= lt!205348 Nil!4483)) (= lt!205755 lt!205342)))))

(declare-fun d!175448 () Bool)

(assert (=> d!175448 e!282450))

(declare-fun res!205209 () Bool)

(assert (=> d!175448 (=> (not res!205209) (not e!282450))))

(assert (=> d!175448 (= res!205209 (= (content!748 lt!205755) ((_ map or) (content!748 lt!205342) (content!748 lt!205348))))))

(assert (=> d!175448 (= lt!205755 e!282449)))

(declare-fun c!92848 () Bool)

(assert (=> d!175448 (= c!92848 ((_ is Nil!4483) lt!205342))))

(assert (=> d!175448 (= (++!1308 lt!205342 lt!205348) lt!205755)))

(declare-fun b!461023 () Bool)

(assert (=> b!461023 (= e!282449 lt!205348)))

(assert (= (and d!175448 c!92848) b!461023))

(assert (= (and d!175448 (not c!92848)) b!461024))

(assert (= (and d!175448 res!205209) b!461025))

(assert (= (and b!461025 res!205208) b!461026))

(declare-fun m!729643 () Bool)

(assert (=> b!461025 m!729643))

(assert (=> b!461025 m!729635))

(assert (=> b!461025 m!729133))

(declare-fun m!729645 () Bool)

(assert (=> b!461024 m!729645))

(declare-fun m!729647 () Bool)

(assert (=> d!175448 m!729647))

(assert (=> d!175448 m!729641))

(assert (=> d!175448 m!729139))

(assert (=> b!460191 d!175448))

(declare-fun d!175450 () Bool)

(assert (=> d!175450 (= (list!1996 lt!205346) (list!1999 (c!92686 lt!205346)))))

(declare-fun bs!57150 () Bool)

(assert (= bs!57150 d!175450))

(declare-fun m!729649 () Bool)

(assert (=> bs!57150 m!729649))

(assert (=> b!460191 d!175450))

(declare-fun d!175452 () Bool)

(assert (=> d!175452 (= (++!1308 (++!1308 lt!205335 lt!205342) lt!205348) (++!1308 lt!205335 (++!1308 lt!205342 lt!205348)))))

(declare-fun lt!205758 () Unit!8091)

(declare-fun choose!3463 (List!4493 List!4493 List!4493) Unit!8091)

(assert (=> d!175452 (= lt!205758 (choose!3463 lt!205335 lt!205342 lt!205348))))

(assert (=> d!175452 (= (lemmaConcatAssociativity!610 lt!205335 lt!205342 lt!205348) lt!205758)))

(declare-fun bs!57151 () Bool)

(assert (= bs!57151 d!175452))

(assert (=> bs!57151 m!728321))

(declare-fun m!729651 () Bool)

(assert (=> bs!57151 m!729651))

(assert (=> bs!57151 m!728317))

(assert (=> bs!57151 m!728319))

(assert (=> bs!57151 m!728321))

(assert (=> bs!57151 m!728317))

(declare-fun m!729653 () Bool)

(assert (=> bs!57151 m!729653))

(assert (=> b!460191 d!175452))

(declare-fun b!461037 () Bool)

(declare-fun b_free!12925 () Bool)

(declare-fun b_next!12925 () Bool)

(assert (=> b!461037 (= b_free!12925 (not b_next!12925))))

(declare-fun tp!127545 () Bool)

(declare-fun b_and!49509 () Bool)

(assert (=> b!461037 (= tp!127545 b_and!49509)))

(declare-fun b_free!12927 () Bool)

(declare-fun b_next!12927 () Bool)

(assert (=> b!461037 (= b_free!12927 (not b_next!12927))))

(declare-fun t!71865 () Bool)

(declare-fun tb!46073 () Bool)

(assert (=> (and b!461037 (= (toChars!1551 (transformation!873 (h!9881 (t!71806 rules!1920)))) (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465))))) t!71865) tb!46073))

(declare-fun result!50730 () Bool)

(assert (= result!50730 result!50714))

(assert (=> b!460963 t!71865))

(declare-fun tb!46075 () Bool)

(declare-fun t!71867 () Bool)

(assert (=> (and b!461037 (= (toChars!1551 (transformation!873 (h!9881 (t!71806 rules!1920)))) (toChars!1551 (transformation!873 (rule!1568 separatorToken!170)))) t!71867) tb!46075))

(declare-fun result!50732 () Bool)

(assert (= result!50732 result!50722))

(assert (=> b!460985 t!71867))

(assert (=> d!175440 t!71867))

(assert (=> d!175444 t!71865))

(declare-fun tp!127544 () Bool)

(declare-fun b_and!49511 () Bool)

(assert (=> b!461037 (= tp!127544 (and (=> t!71865 result!50730) (=> t!71867 result!50732) b_and!49511))))

(declare-fun e!282459 () Bool)

(assert (=> b!461037 (= e!282459 (and tp!127545 tp!127544))))

(declare-fun e!282461 () Bool)

(declare-fun tp!127547 () Bool)

(declare-fun b!461036 () Bool)

(assert (=> b!461036 (= e!282461 (and tp!127547 (inv!5559 (tag!1133 (h!9881 (t!71806 rules!1920)))) (inv!5562 (transformation!873 (h!9881 (t!71806 rules!1920)))) e!282459))))

(declare-fun b!461035 () Bool)

(declare-fun e!282460 () Bool)

(declare-fun tp!127546 () Bool)

(assert (=> b!461035 (= e!282460 (and e!282461 tp!127546))))

(assert (=> b!460205 (= tp!127470 e!282460)))

(assert (= b!461036 b!461037))

(assert (= b!461035 b!461036))

(assert (= (and b!460205 ((_ is Cons!4484) (t!71806 rules!1920))) b!461035))

(declare-fun m!729655 () Bool)

(assert (=> b!461036 m!729655))

(declare-fun m!729657 () Bool)

(assert (=> b!461036 m!729657))

(declare-fun b!461042 () Bool)

(declare-fun e!282465 () Bool)

(declare-fun tp_is_empty!1991 () Bool)

(declare-fun tp!127550 () Bool)

(assert (=> b!461042 (= e!282465 (and tp_is_empty!1991 tp!127550))))

(assert (=> b!460193 (= tp!127463 e!282465)))

(assert (= (and b!460193 ((_ is Cons!4483) (originalCharacters!916 separatorToken!170))) b!461042))

(declare-fun b!461056 () Bool)

(declare-fun b_free!12929 () Bool)

(declare-fun b_next!12929 () Bool)

(assert (=> b!461056 (= b_free!12929 (not b_next!12929))))

(declare-fun tp!127563 () Bool)

(declare-fun b_and!49513 () Bool)

(assert (=> b!461056 (= tp!127563 b_and!49513)))

(declare-fun b_free!12931 () Bool)

(declare-fun b_next!12931 () Bool)

(assert (=> b!461056 (= b_free!12931 (not b_next!12931))))

(declare-fun t!71869 () Bool)

(declare-fun tb!46077 () Bool)

(assert (=> (and b!461056 (= (toChars!1551 (transformation!873 (rule!1568 (h!9882 (t!71807 tokens!465))))) (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465))))) t!71869) tb!46077))

(declare-fun result!50738 () Bool)

(assert (= result!50738 result!50714))

(assert (=> b!460963 t!71869))

(declare-fun t!71871 () Bool)

(declare-fun tb!46079 () Bool)

(assert (=> (and b!461056 (= (toChars!1551 (transformation!873 (rule!1568 (h!9882 (t!71807 tokens!465))))) (toChars!1551 (transformation!873 (rule!1568 separatorToken!170)))) t!71871) tb!46079))

(declare-fun result!50740 () Bool)

(assert (= result!50740 result!50722))

(assert (=> b!460985 t!71871))

(assert (=> d!175440 t!71871))

(assert (=> d!175444 t!71869))

(declare-fun tp!127561 () Bool)

(declare-fun b_and!49515 () Bool)

(assert (=> b!461056 (= tp!127561 (and (=> t!71869 result!50738) (=> t!71871 result!50740) b_and!49515))))

(declare-fun b!461053 () Bool)

(declare-fun tp!127562 () Bool)

(declare-fun e!282480 () Bool)

(declare-fun e!282479 () Bool)

(assert (=> b!461053 (= e!282480 (and (inv!5563 (h!9882 (t!71807 tokens!465))) e!282479 tp!127562))))

(declare-fun b!461054 () Bool)

(declare-fun e!282481 () Bool)

(declare-fun tp!127564 () Bool)

(assert (=> b!461054 (= e!282479 (and (inv!21 (value!29196 (h!9882 (t!71807 tokens!465)))) e!282481 tp!127564))))

(declare-fun e!282478 () Bool)

(assert (=> b!461056 (= e!282478 (and tp!127563 tp!127561))))

(assert (=> b!460197 (= tp!127471 e!282480)))

(declare-fun tp!127565 () Bool)

(declare-fun b!461055 () Bool)

(assert (=> b!461055 (= e!282481 (and tp!127565 (inv!5559 (tag!1133 (rule!1568 (h!9882 (t!71807 tokens!465))))) (inv!5562 (transformation!873 (rule!1568 (h!9882 (t!71807 tokens!465))))) e!282478))))

(assert (= b!461055 b!461056))

(assert (= b!461054 b!461055))

(assert (= b!461053 b!461054))

(assert (= (and b!460197 ((_ is Cons!4485) (t!71807 tokens!465))) b!461053))

(declare-fun m!729659 () Bool)

(assert (=> b!461053 m!729659))

(declare-fun m!729661 () Bool)

(assert (=> b!461054 m!729661))

(declare-fun m!729663 () Bool)

(assert (=> b!461055 m!729663))

(declare-fun m!729665 () Bool)

(assert (=> b!461055 m!729665))

(declare-fun b!461059 () Bool)

(declare-fun e!282486 () Bool)

(assert (=> b!461059 (= e!282486 true)))

(declare-fun b!461058 () Bool)

(declare-fun e!282485 () Bool)

(assert (=> b!461058 (= e!282485 e!282486)))

(declare-fun b!461057 () Bool)

(declare-fun e!282484 () Bool)

(assert (=> b!461057 (= e!282484 e!282485)))

(assert (=> b!460216 e!282484))

(assert (= b!461058 b!461059))

(assert (= b!461057 b!461058))

(assert (= (and b!460216 ((_ is Cons!4484) (t!71806 rules!1920))) b!461057))

(assert (=> b!461059 (< (dynLambda!2734 order!3997 (toValue!1692 (transformation!873 (h!9881 (t!71806 rules!1920))))) (dynLambda!2735 order!3999 lambda!13558))))

(assert (=> b!461059 (< (dynLambda!2736 order!4001 (toChars!1551 (transformation!873 (h!9881 (t!71806 rules!1920))))) (dynLambda!2735 order!3999 lambda!13558))))

(declare-fun b!461073 () Bool)

(declare-fun e!282489 () Bool)

(declare-fun tp!127579 () Bool)

(declare-fun tp!127578 () Bool)

(assert (=> b!461073 (= e!282489 (and tp!127579 tp!127578))))

(declare-fun b!461071 () Bool)

(declare-fun tp!127576 () Bool)

(declare-fun tp!127580 () Bool)

(assert (=> b!461071 (= e!282489 (and tp!127576 tp!127580))))

(declare-fun b!461072 () Bool)

(declare-fun tp!127577 () Bool)

(assert (=> b!461072 (= e!282489 tp!127577)))

(assert (=> b!460175 (= tp!127461 e!282489)))

(declare-fun b!461070 () Bool)

(assert (=> b!461070 (= e!282489 tp_is_empty!1991)))

(assert (= (and b!460175 ((_ is ElementMatch!1097) (regex!873 (rule!1568 separatorToken!170)))) b!461070))

(assert (= (and b!460175 ((_ is Concat!1993) (regex!873 (rule!1568 separatorToken!170)))) b!461071))

(assert (= (and b!460175 ((_ is Star!1097) (regex!873 (rule!1568 separatorToken!170)))) b!461072))

(assert (= (and b!460175 ((_ is Union!1097) (regex!873 (rule!1568 separatorToken!170)))) b!461073))

(declare-fun b!461077 () Bool)

(declare-fun e!282490 () Bool)

(declare-fun tp!127584 () Bool)

(declare-fun tp!127583 () Bool)

(assert (=> b!461077 (= e!282490 (and tp!127584 tp!127583))))

(declare-fun b!461075 () Bool)

(declare-fun tp!127581 () Bool)

(declare-fun tp!127585 () Bool)

(assert (=> b!461075 (= e!282490 (and tp!127581 tp!127585))))

(declare-fun b!461076 () Bool)

(declare-fun tp!127582 () Bool)

(assert (=> b!461076 (= e!282490 tp!127582)))

(assert (=> b!460199 (= tp!127466 e!282490)))

(declare-fun b!461074 () Bool)

(assert (=> b!461074 (= e!282490 tp_is_empty!1991)))

(assert (= (and b!460199 ((_ is ElementMatch!1097) (regex!873 (h!9881 rules!1920)))) b!461074))

(assert (= (and b!460199 ((_ is Concat!1993) (regex!873 (h!9881 rules!1920)))) b!461075))

(assert (= (and b!460199 ((_ is Star!1097) (regex!873 (h!9881 rules!1920)))) b!461076))

(assert (= (and b!460199 ((_ is Union!1097) (regex!873 (h!9881 rules!1920)))) b!461077))

(declare-fun b!461081 () Bool)

(declare-fun e!282491 () Bool)

(declare-fun tp!127589 () Bool)

(declare-fun tp!127588 () Bool)

(assert (=> b!461081 (= e!282491 (and tp!127589 tp!127588))))

(declare-fun b!461079 () Bool)

(declare-fun tp!127586 () Bool)

(declare-fun tp!127590 () Bool)

(assert (=> b!461079 (= e!282491 (and tp!127586 tp!127590))))

(declare-fun b!461080 () Bool)

(declare-fun tp!127587 () Bool)

(assert (=> b!461080 (= e!282491 tp!127587)))

(assert (=> b!460181 (= tp!127464 e!282491)))

(declare-fun b!461078 () Bool)

(assert (=> b!461078 (= e!282491 tp_is_empty!1991)))

(assert (= (and b!460181 ((_ is ElementMatch!1097) (regex!873 (rule!1568 (h!9882 tokens!465))))) b!461078))

(assert (= (and b!460181 ((_ is Concat!1993) (regex!873 (rule!1568 (h!9882 tokens!465))))) b!461079))

(assert (= (and b!460181 ((_ is Star!1097) (regex!873 (rule!1568 (h!9882 tokens!465))))) b!461080))

(assert (= (and b!460181 ((_ is Union!1097) (regex!873 (rule!1568 (h!9882 tokens!465))))) b!461081))

(declare-fun b!461082 () Bool)

(declare-fun e!282492 () Bool)

(declare-fun tp!127591 () Bool)

(assert (=> b!461082 (= e!282492 (and tp_is_empty!1991 tp!127591))))

(assert (=> b!460192 (= tp!127460 e!282492)))

(assert (= (and b!460192 ((_ is Cons!4483) (originalCharacters!916 (h!9882 tokens!465)))) b!461082))

(declare-fun b_lambda!19129 () Bool)

(assert (= b_lambda!19119 (or (and b!461056 b_free!12931 (= (toChars!1551 (transformation!873 (rule!1568 (h!9882 (t!71807 tokens!465))))) (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))))) (and b!460177 b_free!12911) (and b!461037 b_free!12927 (= (toChars!1551 (transformation!873 (h!9881 (t!71806 rules!1920)))) (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))))) (and b!460202 b_free!12915 (= (toChars!1551 (transformation!873 (h!9881 rules!1920))) (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))))) (and b!460206 b_free!12907 (= (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))) (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))))) b_lambda!19129)))

(declare-fun b_lambda!19131 () Bool)

(assert (= b_lambda!19117 (or b!460194 b_lambda!19131)))

(declare-fun bs!57152 () Bool)

(declare-fun d!175454 () Bool)

(assert (= bs!57152 (and d!175454 b!460194)))

(assert (=> bs!57152 (= (dynLambda!2739 lambda!13558 (h!9882 tokens!465)) (rulesProduceIndividualToken!508 thiss!17480 rules!1920 (h!9882 tokens!465)))))

(assert (=> bs!57152 m!728337))

(assert (=> d!175406 d!175454))

(declare-fun b_lambda!19133 () Bool)

(assert (= b_lambda!19121 (or b!460196 b_lambda!19133)))

(declare-fun bs!57153 () Bool)

(declare-fun d!175456 () Bool)

(assert (= bs!57153 (and d!175456 b!460196)))

(assert (=> bs!57153 (= (dynLambda!2739 lambda!13557 (h!9882 tokens!465)) (not (isSeparator!873 (rule!1568 (h!9882 tokens!465)))))))

(assert (=> b!460975 d!175456))

(declare-fun b_lambda!19135 () Bool)

(assert (= b_lambda!19125 (or (and b!460202 b_free!12915 (= (toChars!1551 (transformation!873 (h!9881 rules!1920))) (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))))) (and b!461037 b_free!12927 (= (toChars!1551 (transformation!873 (h!9881 (t!71806 rules!1920)))) (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))))) (and b!460206 b_free!12907) (and b!460177 b_free!12911 (= (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))) (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))))) (and b!461056 b_free!12931 (= (toChars!1551 (transformation!873 (rule!1568 (h!9882 (t!71807 tokens!465))))) (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))))) b_lambda!19135)))

(declare-fun b_lambda!19137 () Bool)

(assert (= b_lambda!19123 (or (and b!460202 b_free!12915 (= (toChars!1551 (transformation!873 (h!9881 rules!1920))) (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))))) (and b!461037 b_free!12927 (= (toChars!1551 (transformation!873 (h!9881 (t!71806 rules!1920)))) (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))))) (and b!460206 b_free!12907) (and b!460177 b_free!12911 (= (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))) (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))))) (and b!461056 b_free!12931 (= (toChars!1551 (transformation!873 (rule!1568 (h!9882 (t!71807 tokens!465))))) (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))))) b_lambda!19137)))

(declare-fun b_lambda!19139 () Bool)

(assert (= b_lambda!19127 (or (and b!461056 b_free!12931 (= (toChars!1551 (transformation!873 (rule!1568 (h!9882 (t!71807 tokens!465))))) (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))))) (and b!460177 b_free!12911) (and b!461037 b_free!12927 (= (toChars!1551 (transformation!873 (h!9881 (t!71806 rules!1920)))) (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))))) (and b!460202 b_free!12915 (= (toChars!1551 (transformation!873 (h!9881 rules!1920))) (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))))) (and b!460206 b_free!12907 (= (toChars!1551 (transformation!873 (rule!1568 separatorToken!170))) (toChars!1551 (transformation!873 (rule!1568 (h!9882 tokens!465)))))) b_lambda!19139)))

(declare-fun b_lambda!19141 () Bool)

(assert (= b_lambda!19099 (or b!460196 b_lambda!19141)))

(declare-fun bs!57154 () Bool)

(declare-fun d!175458 () Bool)

(assert (= bs!57154 (and d!175458 b!460196)))

(assert (=> bs!57154 (= (dynLambda!2739 lambda!13557 (h!9882 (list!1997 (_1!2954 (lex!551 thiss!17480 rules!1920 lt!205346))))) (not (isSeparator!873 (rule!1568 (h!9882 (list!1997 (_1!2954 (lex!551 thiss!17480 rules!1920 lt!205346))))))))))

(assert (=> b!460711 d!175458))

(check-sat (not b!460989) (not b!461016) (not d!175440) (not bm!31901) (not bm!31961) (not b!460568) (not d!175364) (not d!175190) (not b!460761) (not bm!31951) (not b_next!12907) (not d!175180) (not b!460571) (not b!460588) (not b!460958) (not bm!31966) (not d!175276) (not b!461055) (not b!460581) (not b!460440) (not d!175426) (not b!460760) (not b!460996) (not d!175406) (not b!460964) (not b!461021) (not b!460445) (not b!460442) (not b_lambda!19139) (not b!461054) (not b!460820) (not b!460502) (not b!460957) b_and!49507 (not bm!31921) (not d!175428) (not b!460585) (not b!460595) (not b!460487) (not b!460493) b_and!49513 (not b!461020) (not d!175384) (not b_next!12931) (not b!461000) (not b!460814) (not d!175444) (not b!460987) (not b!460986) (not bm!31884) (not b!460934) (not bm!31968) (not d!175446) tp_is_empty!1991 (not b!460939) (not d!175196) (not b!461012) (not d!175408) (not b!460955) (not b!460710) (not b!461077) (not b!460594) (not b!460603) (not b!461071) (not d!175344) (not b!460826) (not d!175362) (not d!175292) (not b!460712) (not b!460935) (not b!460596) (not d!175268) (not b!460507) (not bm!31899) (not bm!31888) (not b_next!12927) (not b!461011) (not bm!31962) (not b_next!12925) (not b!460979) (not b_next!12913) (not b!461082) (not b!460598) (not b_lambda!19135) (not d!175294) (not tb!46067) (not bm!31969) (not bm!31885) (not b!461035) (not b_lambda!19129) (not d!175360) (not b!460757) (not d!175382) (not d!175266) (not b!460983) (not d!175450) (not b!460284) (not b!460993) (not bs!57152) (not b!460823) (not b!460938) b_and!49505 (not b!461042) b_and!49509 (not b!460602) (not b!461079) (not d!175438) (not b!460437) (not d!175254) (not b!460759) (not b!461015) (not b!461057) (not b!461024) (not b!460616) (not b!460994) (not b!460444) (not b!460754) (not b!460492) (not d!175356) (not b_lambda!19137) (not b_next!12905) b_and!49449 (not d!175416) (not b!461008) (not d!175298) (not bm!31960) (not b!460970) (not b!460714) (not d!175434) (not b!460489) (not b!460715) (not b_lambda!19131) (not b!460755) (not b!460441) b_and!49515 (not b!460933) (not b!461076) b_and!49503 (not bm!31922) (not b_lambda!19133) (not d!175442) (not b!461025) (not b!461036) (not b!460338) (not b!460976) (not b!460969) (not b!460569) (not b!460565) (not b!460512) (not d!175280) (not b!461081) (not b_lambda!19141) (not d!175290) (not b_next!12909) (not bm!31959) (not b!460286) (not d!175252) (not b!461073) (not b!460751) (not b!460249) b_and!49445 (not d!175452) (not b!460282) (not bm!31965) (not b!460567) (not b_next!12929) (not b!460614) (not b!460753) (not b!461075) (not b!460752) (not bm!31940) (not b!460990) (not d!175258) (not b!460985) (not b!460573) (not b!460943) (not b!460998) (not b_next!12911) (not b!461053) (not b!460597) (not d!175272) (not b!460615) (not b!460485) (not d!175412) b_and!49511 (not b!460582) (not b!460984) (not bm!31903) (not b!460825) (not d!175214) (not b!460566) (not b!460248) (not b!461013) (not b!460283) (not b!460940) (not d!175404) (not d!175176) (not d!175340) (not b!460963) (not bm!31887) (not b!460583) (not b!460339) (not tb!46061) (not d!175342) b_and!49441 (not d!175422) (not b!460504) (not d!175184) (not d!175284) (not b!461003) (not b!461072) (not b!460604) (not d!175256) (not b!460981) (not d!175432) (not bm!31964) (not b!460584) (not b!460572) (not b!460580) (not b!460599) (not b!460937) (not d!175210) (not b!460589) (not bm!31900) (not d!175430) (not b_next!12915) (not b!461004) (not d!175448) (not b!460816) (not b!461080) (not b!460600) (not d!175212))
(check-sat (not b_next!12907) b_and!49507 (not b_next!12927) (not b_next!12905) b_and!49449 (not b_next!12909) b_and!49445 b_and!49511 b_and!49441 (not b_next!12915) b_and!49513 (not b_next!12931) (not b_next!12925) (not b_next!12913) b_and!49509 b_and!49505 b_and!49515 b_and!49503 (not b_next!12929) (not b_next!12911))
