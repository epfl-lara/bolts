; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351498 () Bool)

(assert start!351498)

(declare-fun b!3744229 () Bool)

(declare-fun b_free!99445 () Bool)

(declare-fun b_next!100149 () Bool)

(assert (=> b!3744229 (= b_free!99445 (not b_next!100149))))

(declare-fun tp!1141640 () Bool)

(declare-fun b_and!277679 () Bool)

(assert (=> b!3744229 (= tp!1141640 b_and!277679)))

(declare-fun b_free!99447 () Bool)

(declare-fun b_next!100151 () Bool)

(assert (=> b!3744229 (= b_free!99447 (not b_next!100151))))

(declare-fun tp!1141646 () Bool)

(declare-fun b_and!277681 () Bool)

(assert (=> b!3744229 (= tp!1141646 b_and!277681)))

(declare-fun b!3744231 () Bool)

(declare-fun b_free!99449 () Bool)

(declare-fun b_next!100153 () Bool)

(assert (=> b!3744231 (= b_free!99449 (not b_next!100153))))

(declare-fun tp!1141649 () Bool)

(declare-fun b_and!277683 () Bool)

(assert (=> b!3744231 (= tp!1141649 b_and!277683)))

(declare-fun b_free!99451 () Bool)

(declare-fun b_next!100155 () Bool)

(assert (=> b!3744231 (= b_free!99451 (not b_next!100155))))

(declare-fun tp!1141639 () Bool)

(declare-fun b_and!277685 () Bool)

(assert (=> b!3744231 (= tp!1141639 b_and!277685)))

(declare-fun b!3744226 () Bool)

(declare-fun b_free!99453 () Bool)

(declare-fun b_next!100157 () Bool)

(assert (=> b!3744226 (= b_free!99453 (not b_next!100157))))

(declare-fun tp!1141644 () Bool)

(declare-fun b_and!277687 () Bool)

(assert (=> b!3744226 (= tp!1141644 b_and!277687)))

(declare-fun b_free!99455 () Bool)

(declare-fun b_next!100159 () Bool)

(assert (=> b!3744226 (= b_free!99455 (not b_next!100159))))

(declare-fun tp!1141642 () Bool)

(declare-fun b_and!277689 () Bool)

(assert (=> b!3744226 (= tp!1141642 b_and!277689)))

(declare-fun b!3744241 () Bool)

(declare-fun b_free!99457 () Bool)

(declare-fun b_next!100161 () Bool)

(assert (=> b!3744241 (= b_free!99457 (not b_next!100161))))

(declare-fun tp!1141652 () Bool)

(declare-fun b_and!277691 () Bool)

(assert (=> b!3744241 (= tp!1141652 b_and!277691)))

(declare-fun b_free!99459 () Bool)

(declare-fun b_next!100163 () Bool)

(assert (=> b!3744241 (= b_free!99459 (not b_next!100163))))

(declare-fun tp!1141643 () Bool)

(declare-fun b_and!277693 () Bool)

(assert (=> b!3744241 (= tp!1141643 b_and!277693)))

(declare-fun e!2315106 () Bool)

(assert (=> b!3744226 (= e!2315106 (and tp!1141644 tp!1141642))))

(declare-fun tp!1141645 () Bool)

(declare-fun e!2315104 () Bool)

(declare-datatypes ((List!39878 0))(
  ( (Nil!39754) (Cons!39754 (h!45174 (_ BitVec 16)) (t!302561 List!39878)) )
))
(declare-datatypes ((TokenValue!6286 0))(
  ( (FloatLiteralValue!12572 (text!44447 List!39878)) (TokenValueExt!6285 (__x!24789 Int)) (Broken!31430 (value!193172 List!39878)) (Object!6409) (End!6286) (Def!6286) (Underscore!6286) (Match!6286) (Else!6286) (Error!6286) (Case!6286) (If!6286) (Extends!6286) (Abstract!6286) (Class!6286) (Val!6286) (DelimiterValue!12572 (del!6346 List!39878)) (KeywordValue!6292 (value!193173 List!39878)) (CommentValue!12572 (value!193174 List!39878)) (WhitespaceValue!12572 (value!193175 List!39878)) (IndentationValue!6286 (value!193176 List!39878)) (String!45055) (Int32!6286) (Broken!31431 (value!193177 List!39878)) (Boolean!6287) (Unit!57625) (OperatorValue!6289 (op!6346 List!39878)) (IdentifierValue!12572 (value!193178 List!39878)) (IdentifierValue!12573 (value!193179 List!39878)) (WhitespaceValue!12573 (value!193180 List!39878)) (True!12572) (False!12572) (Broken!31432 (value!193181 List!39878)) (Broken!31433 (value!193182 List!39878)) (True!12573) (RightBrace!6286) (RightBracket!6286) (Colon!6286) (Null!6286) (Comma!6286) (LeftBracket!6286) (False!12573) (LeftBrace!6286) (ImaginaryLiteralValue!6286 (text!44448 List!39878)) (StringLiteralValue!18858 (value!193183 List!39878)) (EOFValue!6286 (value!193184 List!39878)) (IdentValue!6286 (value!193185 List!39878)) (DelimiterValue!12573 (value!193186 List!39878)) (DedentValue!6286 (value!193187 List!39878)) (NewLineValue!6286 (value!193188 List!39878)) (IntegerValue!18858 (value!193189 (_ BitVec 32)) (text!44449 List!39878)) (IntegerValue!18859 (value!193190 Int) (text!44450 List!39878)) (Times!6286) (Or!6286) (Equal!6286) (Minus!6286) (Broken!31434 (value!193191 List!39878)) (And!6286) (Div!6286) (LessEqual!6286) (Mod!6286) (Concat!17247) (Not!6286) (Plus!6286) (SpaceValue!6286 (value!193192 List!39878)) (IntegerValue!18860 (value!193193 Int) (text!44451 List!39878)) (StringLiteralValue!18859 (text!44452 List!39878)) (FloatLiteralValue!12573 (text!44453 List!39878)) (BytesLiteralValue!6286 (value!193194 List!39878)) (CommentValue!12573 (value!193195 List!39878)) (StringLiteralValue!18860 (value!193196 List!39878)) (ErrorTokenValue!6286 (msg!6347 List!39878)) )
))
(declare-datatypes ((C!22108 0))(
  ( (C!22109 (val!13102 Int)) )
))
(declare-datatypes ((List!39879 0))(
  ( (Nil!39755) (Cons!39755 (h!45175 C!22108) (t!302562 List!39879)) )
))
(declare-datatypes ((IArray!24311 0))(
  ( (IArray!24312 (innerList!12213 List!39879)) )
))
(declare-datatypes ((Conc!12153 0))(
  ( (Node!12153 (left!30812 Conc!12153) (right!31142 Conc!12153) (csize!24536 Int) (cheight!12364 Int)) (Leaf!18865 (xs!15355 IArray!24311) (csize!24537 Int)) (Empty!12153) )
))
(declare-datatypes ((Regex!10961 0))(
  ( (ElementMatch!10961 (c!648586 C!22108)) (Concat!17248 (regOne!22434 Regex!10961) (regTwo!22434 Regex!10961)) (EmptyExpr!10961) (Star!10961 (reg!11290 Regex!10961)) (EmptyLang!10961) (Union!10961 (regOne!22435 Regex!10961) (regTwo!22435 Regex!10961)) )
))
(declare-datatypes ((String!45056 0))(
  ( (String!45057 (value!193197 String)) )
))
(declare-datatypes ((BalanceConc!23920 0))(
  ( (BalanceConc!23921 (c!648587 Conc!12153)) )
))
(declare-datatypes ((TokenValueInjection!12000 0))(
  ( (TokenValueInjection!12001 (toValue!8400 Int) (toChars!8259 Int)) )
))
(declare-datatypes ((Rule!11912 0))(
  ( (Rule!11913 (regex!6056 Regex!10961) (tag!6916 String!45056) (isSeparator!6056 Bool) (transformation!6056 TokenValueInjection!12000)) )
))
(declare-datatypes ((List!39880 0))(
  ( (Nil!39756) (Cons!39756 (h!45176 Rule!11912) (t!302563 List!39880)) )
))
(declare-fun rulesRec!198 () List!39880)

(declare-fun b!3744227 () Bool)

(declare-fun e!2315112 () Bool)

(declare-fun inv!53297 (String!45056) Bool)

(declare-fun inv!53299 (TokenValueInjection!12000) Bool)

(assert (=> b!3744227 (= e!2315104 (and tp!1141645 (inv!53297 (tag!6916 (h!45176 rulesRec!198))) (inv!53299 (transformation!6056 (h!45176 rulesRec!198))) e!2315112))))

(declare-fun b!3744228 () Bool)

(declare-fun res!1517697 () Bool)

(declare-fun e!2315109 () Bool)

(assert (=> b!3744228 (=> (not res!1517697) (not e!2315109))))

(declare-fun rules!4189 () List!39880)

(declare-fun rSep!159 () Rule!11912)

(declare-fun contains!8069 (List!39880 Rule!11912) Bool)

(assert (=> b!3744228 (= res!1517697 (contains!8069 rules!4189 rSep!159))))

(declare-fun e!2315108 () Bool)

(assert (=> b!3744229 (= e!2315108 (and tp!1141640 tp!1141646))))

(declare-fun b!3744230 () Bool)

(declare-fun e!2315102 () Bool)

(declare-fun e!2315115 () Bool)

(declare-fun tp!1141651 () Bool)

(assert (=> b!3744230 (= e!2315102 (and e!2315115 tp!1141651))))

(declare-fun b!3744232 () Bool)

(declare-fun res!1517695 () Bool)

(assert (=> b!3744232 (=> (not res!1517695) (not e!2315109))))

(declare-fun rNSep!159 () Rule!11912)

(assert (=> b!3744232 (= res!1517695 (contains!8069 rules!4189 rNSep!159))))

(declare-fun b!3744233 () Bool)

(assert (=> b!3744233 (= e!2315109 false)))

(declare-fun lt!1299356 () Bool)

(assert (=> b!3744233 (= lt!1299356 (contains!8069 (t!302563 rulesRec!198) rNSep!159))))

(declare-fun e!2315116 () Bool)

(declare-fun tp!1141647 () Bool)

(declare-fun e!2315113 () Bool)

(declare-fun b!3744234 () Bool)

(assert (=> b!3744234 (= e!2315116 (and tp!1141647 (inv!53297 (tag!6916 rNSep!159)) (inv!53299 (transformation!6056 rNSep!159)) e!2315113))))

(declare-fun b!3744235 () Bool)

(declare-fun res!1517703 () Bool)

(assert (=> b!3744235 (=> (not res!1517703) (not e!2315109))))

(get-info :version)

(assert (=> b!3744235 (= res!1517703 (and (or (not ((_ is Cons!39756) rulesRec!198)) (not (= (h!45176 rulesRec!198) rNSep!159))) ((_ is Cons!39756) rulesRec!198)))))

(declare-fun tp!1141650 () Bool)

(declare-fun b!3744236 () Bool)

(assert (=> b!3744236 (= e!2315115 (and tp!1141650 (inv!53297 (tag!6916 (h!45176 rules!4189))) (inv!53299 (transformation!6056 (h!45176 rules!4189))) e!2315108))))

(declare-fun b!3744237 () Bool)

(declare-fun res!1517701 () Bool)

(assert (=> b!3744237 (=> (not res!1517701) (not e!2315109))))

(declare-datatypes ((LexerInterface!5645 0))(
  ( (LexerInterfaceExt!5642 (__x!24790 Int)) (Lexer!5643) )
))
(declare-fun thiss!27143 () LexerInterface!5645)

(declare-fun rulesInvariant!5042 (LexerInterface!5645 List!39880) Bool)

(assert (=> b!3744237 (= res!1517701 (rulesInvariant!5042 thiss!27143 rules!4189))))

(declare-fun b!3744238 () Bool)

(declare-fun tp!1141648 () Bool)

(declare-fun e!2315110 () Bool)

(assert (=> b!3744238 (= e!2315110 (and tp!1141648 (inv!53297 (tag!6916 rSep!159)) (inv!53299 (transformation!6056 rSep!159)) e!2315106))))

(declare-fun b!3744239 () Bool)

(declare-fun res!1517698 () Bool)

(assert (=> b!3744239 (=> (not res!1517698) (not e!2315109))))

(assert (=> b!3744239 (= res!1517698 (and (not (isSeparator!6056 rNSep!159)) (isSeparator!6056 rSep!159)))))

(declare-fun b!3744240 () Bool)

(declare-fun e!2315105 () Bool)

(declare-fun tp!1141641 () Bool)

(assert (=> b!3744240 (= e!2315105 (and e!2315104 tp!1141641))))

(declare-fun res!1517699 () Bool)

(assert (=> start!351498 (=> (not res!1517699) (not e!2315109))))

(assert (=> start!351498 (= res!1517699 ((_ is Lexer!5643) thiss!27143))))

(assert (=> start!351498 e!2315109))

(assert (=> start!351498 true))

(assert (=> start!351498 e!2315102))

(assert (=> start!351498 e!2315110))

(assert (=> start!351498 e!2315105))

(declare-fun tp_is_empty!18937 () Bool)

(assert (=> start!351498 tp_is_empty!18937))

(assert (=> start!351498 e!2315116))

(assert (=> b!3744231 (= e!2315113 (and tp!1141649 tp!1141639))))

(assert (=> b!3744241 (= e!2315112 (and tp!1141652 tp!1141643))))

(declare-fun b!3744242 () Bool)

(declare-fun res!1517700 () Bool)

(assert (=> b!3744242 (=> (not res!1517700) (not e!2315109))))

(assert (=> b!3744242 (= res!1517700 (contains!8069 rulesRec!198 rNSep!159))))

(declare-fun b!3744243 () Bool)

(declare-fun res!1517702 () Bool)

(assert (=> b!3744243 (=> (not res!1517702) (not e!2315109))))

(declare-fun sepAndNonSepRulesDisjointChars!2034 (List!39880 List!39880) Bool)

(assert (=> b!3744243 (= res!1517702 (sepAndNonSepRulesDisjointChars!2034 rules!4189 rulesRec!198))))

(declare-fun b!3744244 () Bool)

(declare-fun res!1517696 () Bool)

(assert (=> b!3744244 (=> (not res!1517696) (not e!2315109))))

(declare-fun c!6900 () C!22108)

(declare-fun contains!8070 (List!39879 C!22108) Bool)

(declare-fun usedCharacters!1224 (Regex!10961) List!39879)

(assert (=> b!3744244 (= res!1517696 (contains!8070 (usedCharacters!1224 (regex!6056 rNSep!159)) c!6900))))

(assert (= (and start!351498 res!1517699) b!3744237))

(assert (= (and b!3744237 res!1517701) b!3744228))

(assert (= (and b!3744228 res!1517697) b!3744242))

(assert (= (and b!3744242 res!1517700) b!3744232))

(assert (= (and b!3744232 res!1517695) b!3744239))

(assert (= (and b!3744239 res!1517698) b!3744244))

(assert (= (and b!3744244 res!1517696) b!3744243))

(assert (= (and b!3744243 res!1517702) b!3744235))

(assert (= (and b!3744235 res!1517703) b!3744233))

(assert (= b!3744236 b!3744229))

(assert (= b!3744230 b!3744236))

(assert (= (and start!351498 ((_ is Cons!39756) rules!4189)) b!3744230))

(assert (= b!3744238 b!3744226))

(assert (= start!351498 b!3744238))

(assert (= b!3744227 b!3744241))

(assert (= b!3744240 b!3744227))

(assert (= (and start!351498 ((_ is Cons!39756) rulesRec!198)) b!3744240))

(assert (= b!3744234 b!3744231))

(assert (= start!351498 b!3744234))

(declare-fun m!4237653 () Bool)

(assert (=> b!3744238 m!4237653))

(declare-fun m!4237655 () Bool)

(assert (=> b!3744238 m!4237655))

(declare-fun m!4237657 () Bool)

(assert (=> b!3744234 m!4237657))

(declare-fun m!4237659 () Bool)

(assert (=> b!3744234 m!4237659))

(declare-fun m!4237661 () Bool)

(assert (=> b!3744237 m!4237661))

(declare-fun m!4237663 () Bool)

(assert (=> b!3744228 m!4237663))

(declare-fun m!4237665 () Bool)

(assert (=> b!3744227 m!4237665))

(declare-fun m!4237667 () Bool)

(assert (=> b!3744227 m!4237667))

(declare-fun m!4237669 () Bool)

(assert (=> b!3744243 m!4237669))

(declare-fun m!4237671 () Bool)

(assert (=> b!3744242 m!4237671))

(declare-fun m!4237673 () Bool)

(assert (=> b!3744233 m!4237673))

(declare-fun m!4237675 () Bool)

(assert (=> b!3744244 m!4237675))

(assert (=> b!3744244 m!4237675))

(declare-fun m!4237677 () Bool)

(assert (=> b!3744244 m!4237677))

(declare-fun m!4237679 () Bool)

(assert (=> b!3744232 m!4237679))

(declare-fun m!4237681 () Bool)

(assert (=> b!3744236 m!4237681))

(declare-fun m!4237683 () Bool)

(assert (=> b!3744236 m!4237683))

(check-sat (not b!3744237) (not b_next!100159) (not b!3744232) (not b!3744228) (not b!3744233) b_and!277689 (not b_next!100161) (not b!3744227) (not b!3744240) (not b_next!100157) (not b!3744238) (not b!3744230) b_and!277685 (not b_next!100153) (not b_next!100149) b_and!277691 b_and!277683 b_and!277693 (not b_next!100155) b_and!277679 (not b!3744243) (not b_next!100163) b_and!277687 (not b!3744236) tp_is_empty!18937 (not b_next!100151) (not b!3744242) (not b!3744234) (not b!3744244) b_and!277681)
(check-sat (not b_next!100159) b_and!277685 b_and!277689 (not b_next!100161) b_and!277687 (not b_next!100151) b_and!277681 (not b_next!100157) (not b_next!100153) (not b_next!100149) b_and!277691 b_and!277683 b_and!277693 (not b_next!100155) b_and!277679 (not b_next!100163))
