; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14714 () Bool)

(assert start!14714)

(declare-fun b!140344 () Bool)

(declare-fun b_free!4531 () Bool)

(declare-fun b_next!4531 () Bool)

(assert (=> b!140344 (= b_free!4531 (not b_next!4531))))

(declare-fun tp!73860 () Bool)

(declare-fun b_and!6903 () Bool)

(assert (=> b!140344 (= tp!73860 b_and!6903)))

(declare-fun b_free!4533 () Bool)

(declare-fun b_next!4533 () Bool)

(assert (=> b!140344 (= b_free!4533 (not b_next!4533))))

(declare-fun tp!73857 () Bool)

(declare-fun b_and!6905 () Bool)

(assert (=> b!140344 (= tp!73857 b_and!6905)))

(declare-fun b!140341 () Bool)

(declare-fun b_free!4535 () Bool)

(declare-fun b_next!4535 () Bool)

(assert (=> b!140341 (= b_free!4535 (not b_next!4535))))

(declare-fun tp!73859 () Bool)

(declare-fun b_and!6907 () Bool)

(assert (=> b!140341 (= tp!73859 b_and!6907)))

(declare-fun b_free!4537 () Bool)

(declare-fun b_next!4537 () Bool)

(assert (=> b!140341 (= b_free!4537 (not b_next!4537))))

(declare-fun tp!73862 () Bool)

(declare-fun b_and!6909 () Bool)

(assert (=> b!140341 (= tp!73862 b_and!6909)))

(declare-fun b_free!4539 () Bool)

(declare-fun b_next!4539 () Bool)

(assert (=> start!14714 (= b_free!4539 (not b_next!4539))))

(declare-fun tp!73866 () Bool)

(declare-fun b_and!6911 () Bool)

(assert (=> start!14714 (= tp!73866 b_and!6911)))

(declare-fun b!140328 () Bool)

(declare-fun b_free!4541 () Bool)

(declare-fun b_next!4541 () Bool)

(assert (=> b!140328 (= b_free!4541 (not b_next!4541))))

(declare-fun tp!73865 () Bool)

(declare-fun b_and!6913 () Bool)

(assert (=> b!140328 (= tp!73865 b_and!6913)))

(declare-fun b_free!4543 () Bool)

(declare-fun b_next!4543 () Bool)

(assert (=> b!140328 (= b_free!4543 (not b_next!4543))))

(declare-fun tp!73869 () Bool)

(declare-fun b_and!6915 () Bool)

(assert (=> b!140328 (= tp!73869 b_and!6915)))

(declare-fun e!82631 () Bool)

(declare-fun tp!73868 () Bool)

(declare-fun b!140324 () Bool)

(declare-datatypes ((List!2401 0))(
  ( (Nil!2391) (Cons!2391 (h!7788 (_ BitVec 16)) (t!23331 List!2401)) )
))
(declare-datatypes ((TokenValue!423 0))(
  ( (FloatLiteralValue!846 (text!3406 List!2401)) (TokenValueExt!422 (__x!2333 Int)) (Broken!2115 (value!15718 List!2401)) (Object!432) (End!423) (Def!423) (Underscore!423) (Match!423) (Else!423) (Error!423) (Case!423) (If!423) (Extends!423) (Abstract!423) (Class!423) (Val!423) (DelimiterValue!846 (del!483 List!2401)) (KeywordValue!429 (value!15719 List!2401)) (CommentValue!846 (value!15720 List!2401)) (WhitespaceValue!846 (value!15721 List!2401)) (IndentationValue!423 (value!15722 List!2401)) (String!3194) (Int32!423) (Broken!2116 (value!15723 List!2401)) (Boolean!424) (Unit!1809) (OperatorValue!426 (op!483 List!2401)) (IdentifierValue!846 (value!15724 List!2401)) (IdentifierValue!847 (value!15725 List!2401)) (WhitespaceValue!847 (value!15726 List!2401)) (True!846) (False!846) (Broken!2117 (value!15727 List!2401)) (Broken!2118 (value!15728 List!2401)) (True!847) (RightBrace!423) (RightBracket!423) (Colon!423) (Null!423) (Comma!423) (LeftBracket!423) (False!847) (LeftBrace!423) (ImaginaryLiteralValue!423 (text!3407 List!2401)) (StringLiteralValue!1269 (value!15729 List!2401)) (EOFValue!423 (value!15730 List!2401)) (IdentValue!423 (value!15731 List!2401)) (DelimiterValue!847 (value!15732 List!2401)) (DedentValue!423 (value!15733 List!2401)) (NewLineValue!423 (value!15734 List!2401)) (IntegerValue!1269 (value!15735 (_ BitVec 32)) (text!3408 List!2401)) (IntegerValue!1270 (value!15736 Int) (text!3409 List!2401)) (Times!423) (Or!423) (Equal!423) (Minus!423) (Broken!2119 (value!15737 List!2401)) (And!423) (Div!423) (LessEqual!423) (Mod!423) (Concat!1048) (Not!423) (Plus!423) (SpaceValue!423 (value!15738 List!2401)) (IntegerValue!1271 (value!15739 Int) (text!3410 List!2401)) (StringLiteralValue!1270 (text!3411 List!2401)) (FloatLiteralValue!847 (text!3412 List!2401)) (BytesLiteralValue!423 (value!15740 List!2401)) (CommentValue!847 (value!15741 List!2401)) (StringLiteralValue!1271 (value!15742 List!2401)) (ErrorTokenValue!423 (msg!484 List!2401)) )
))
(declare-datatypes ((C!2172 0))(
  ( (C!2173 (val!972 Int)) )
))
(declare-datatypes ((List!2402 0))(
  ( (Nil!2392) (Cons!2392 (h!7789 C!2172) (t!23332 List!2402)) )
))
(declare-datatypes ((IArray!1263 0))(
  ( (IArray!1264 (innerList!689 List!2402)) )
))
(declare-datatypes ((Conc!631 0))(
  ( (Node!631 (left!1818 Conc!631) (right!2148 Conc!631) (csize!1492 Int) (cheight!842 Int)) (Leaf!1171 (xs!3226 IArray!1263) (csize!1493 Int)) (Empty!631) )
))
(declare-datatypes ((BalanceConc!1270 0))(
  ( (BalanceConc!1271 (c!29236 Conc!631)) )
))
(declare-datatypes ((TokenValueInjection!618 0))(
  ( (TokenValueInjection!619 (toValue!1012 Int) (toChars!871 Int)) )
))
(declare-datatypes ((String!3195 0))(
  ( (String!3196 (value!15743 String)) )
))
(declare-datatypes ((Regex!625 0))(
  ( (ElementMatch!625 (c!29237 C!2172)) (Concat!1049 (regOne!1762 Regex!625) (regTwo!1762 Regex!625)) (EmptyExpr!625) (Star!625 (reg!954 Regex!625)) (EmptyLang!625) (Union!625 (regOne!1763 Regex!625) (regTwo!1763 Regex!625)) )
))
(declare-datatypes ((Rule!602 0))(
  ( (Rule!603 (regex!401 Regex!625) (tag!579 String!3195) (isSeparator!401 Bool) (transformation!401 TokenValueInjection!618)) )
))
(declare-datatypes ((Token!546 0))(
  ( (Token!547 (value!15744 TokenValue!423) (rule!908 Rule!602) (size!2099 Int) (originalCharacters!444 List!2402)) )
))
(declare-datatypes ((List!2403 0))(
  ( (Nil!2393) (Cons!2393 (h!7790 Token!546) (t!23333 List!2403)) )
))
(declare-fun l2!3099 () List!2403)

(declare-fun e!82630 () Bool)

(declare-fun inv!3146 (Token!546) Bool)

(assert (=> b!140324 (= e!82630 (and (inv!3146 (h!7790 l2!3099)) e!82631 tp!73868))))

(declare-fun b!140325 () Bool)

(declare-fun l1!3130 () List!2403)

(declare-fun e!82623 () Bool)

(declare-fun tp!73867 () Bool)

(declare-fun e!82622 () Bool)

(assert (=> b!140325 (= e!82622 (and (inv!3146 (h!7790 l1!3130)) e!82623 tp!73867))))

(declare-fun b!140326 () Bool)

(declare-fun res!65252 () Bool)

(declare-fun e!82633 () Bool)

(assert (=> b!140326 (=> (not res!65252) (not e!82633))))

(declare-fun isEmpty!914 (List!2403) Bool)

(assert (=> b!140326 (= res!65252 (not (isEmpty!914 l2!3099)))))

(declare-fun res!65253 () Bool)

(assert (=> start!14714 (=> (not res!65253) (not e!82633))))

(declare-datatypes ((LexerInterface!287 0))(
  ( (LexerInterfaceExt!284 (__x!2334 Int)) (Lexer!285) )
))
(declare-fun thiss!27322 () LexerInterface!287)

(get-info :version)

(assert (=> start!14714 (= res!65253 ((_ is Lexer!285) thiss!27322))))

(assert (=> start!14714 e!82633))

(assert (=> start!14714 true))

(declare-fun e!82621 () Bool)

(assert (=> start!14714 e!82621))

(assert (=> start!14714 tp!73866))

(assert (=> start!14714 e!82622))

(assert (=> start!14714 e!82630))

(declare-fun tp!73855 () Bool)

(declare-fun e!82637 () Bool)

(declare-fun e!82635 () Bool)

(declare-fun b!140327 () Bool)

(declare-fun inv!3143 (String!3195) Bool)

(declare-fun inv!3147 (TokenValueInjection!618) Bool)

(assert (=> b!140327 (= e!82635 (and tp!73855 (inv!3143 (tag!579 (rule!908 (h!7790 l2!3099)))) (inv!3147 (transformation!401 (rule!908 (h!7790 l2!3099)))) e!82637))))

(assert (=> b!140328 (= e!82637 (and tp!73865 tp!73869))))

(declare-fun b!140329 () Bool)

(declare-fun res!65254 () Bool)

(declare-fun e!82624 () Bool)

(assert (=> b!140329 (=> (not res!65254) (not e!82624))))

(assert (=> b!140329 (= res!65254 (not (isEmpty!914 (t!23333 l1!3130))))))

(declare-fun b!140330 () Bool)

(declare-fun res!65246 () Bool)

(assert (=> b!140330 (=> (not res!65246) (not e!82624))))

(assert (=> b!140330 (= res!65246 ((_ is Cons!2393) l1!3130))))

(declare-fun b!140331 () Bool)

(declare-fun tp!73858 () Bool)

(declare-fun inv!21 (TokenValue!423) Bool)

(assert (=> b!140331 (= e!82631 (and (inv!21 (value!15744 (h!7790 l2!3099))) e!82635 tp!73858))))

(declare-fun b!140332 () Bool)

(declare-fun res!65249 () Bool)

(assert (=> b!140332 (=> (not res!65249) (not e!82624))))

(declare-datatypes ((List!2404 0))(
  ( (Nil!2394) (Cons!2394 (h!7791 Rule!602) (t!23334 List!2404)) )
))
(declare-fun rules!4268 () List!2404)

(declare-fun p!3028 () Int)

(declare-fun tokensListTwoByTwoPredicateList!26 (LexerInterface!287 List!2403 List!2404 Int) Bool)

(assert (=> b!140332 (= res!65249 (tokensListTwoByTwoPredicateList!26 thiss!27322 (t!23333 l1!3130) rules!4268 p!3028))))

(declare-fun b!140333 () Bool)

(declare-fun ++!524 (List!2403 List!2403) List!2403)

(assert (=> b!140333 (= e!82624 (not (tokensListTwoByTwoPredicateList!26 thiss!27322 (++!524 l1!3130 l2!3099) rules!4268 p!3028)))))

(assert (=> b!140333 (tokensListTwoByTwoPredicateList!26 thiss!27322 (++!524 (t!23333 l1!3130) l2!3099) rules!4268 p!3028)))

(declare-datatypes ((Unit!1810 0))(
  ( (Unit!1811) )
))
(declare-fun lt!41139 () Unit!1810)

(declare-fun tokensListTwoByTwoPredicateConcatList!4 (LexerInterface!287 List!2403 List!2403 List!2404 Int) Unit!1810)

(assert (=> b!140333 (= lt!41139 (tokensListTwoByTwoPredicateConcatList!4 thiss!27322 (t!23333 l1!3130) l2!3099 rules!4268 p!3028))))

(declare-fun e!82632 () Bool)

(declare-fun e!82627 () Bool)

(declare-fun tp!73863 () Bool)

(declare-fun b!140334 () Bool)

(assert (=> b!140334 (= e!82627 (and tp!73863 (inv!3143 (tag!579 (h!7791 rules!4268))) (inv!3147 (transformation!401 (h!7791 rules!4268))) e!82632))))

(declare-fun b!140335 () Bool)

(assert (=> b!140335 (= e!82633 e!82624)))

(declare-fun res!65255 () Bool)

(assert (=> b!140335 (=> (not res!65255) (not e!82624))))

(declare-fun lt!41140 () Token!546)

(declare-fun dynLambda!793 (Int Token!546 Token!546 List!2404) Bool)

(declare-fun last!35 (List!2403) Token!546)

(assert (=> b!140335 (= res!65255 (dynLambda!793 p!3028 (last!35 l1!3130) lt!41140 rules!4268))))

(declare-fun head!560 (List!2403) Token!546)

(assert (=> b!140335 (= lt!41140 (head!560 l2!3099))))

(declare-fun b!140336 () Bool)

(declare-fun res!65251 () Bool)

(assert (=> b!140336 (=> (not res!65251) (not e!82624))))

(assert (=> b!140336 (= res!65251 (dynLambda!793 p!3028 (last!35 (t!23333 l1!3130)) lt!41140 rules!4268))))

(declare-fun e!82629 () Bool)

(declare-fun e!82625 () Bool)

(declare-fun tp!73861 () Bool)

(declare-fun b!140337 () Bool)

(assert (=> b!140337 (= e!82625 (and tp!73861 (inv!3143 (tag!579 (rule!908 (h!7790 l1!3130)))) (inv!3147 (transformation!401 (rule!908 (h!7790 l1!3130)))) e!82629))))

(declare-fun b!140338 () Bool)

(declare-fun tp!73864 () Bool)

(assert (=> b!140338 (= e!82621 (and e!82627 tp!73864))))

(declare-fun b!140339 () Bool)

(declare-fun res!65247 () Bool)

(assert (=> b!140339 (=> (not res!65247) (not e!82633))))

(assert (=> b!140339 (= res!65247 (not (isEmpty!914 l1!3130)))))

(declare-fun tp!73856 () Bool)

(declare-fun b!140340 () Bool)

(assert (=> b!140340 (= e!82623 (and (inv!21 (value!15744 (h!7790 l1!3130))) e!82625 tp!73856))))

(assert (=> b!140341 (= e!82632 (and tp!73859 tp!73862))))

(declare-fun b!140342 () Bool)

(declare-fun res!65250 () Bool)

(assert (=> b!140342 (=> (not res!65250) (not e!82633))))

(assert (=> b!140342 (= res!65250 (tokensListTwoByTwoPredicateList!26 thiss!27322 l2!3099 rules!4268 p!3028))))

(declare-fun b!140343 () Bool)

(declare-fun res!65248 () Bool)

(assert (=> b!140343 (=> (not res!65248) (not e!82633))))

(assert (=> b!140343 (= res!65248 (tokensListTwoByTwoPredicateList!26 thiss!27322 l1!3130 rules!4268 p!3028))))

(assert (=> b!140344 (= e!82629 (and tp!73860 tp!73857))))

(assert (= (and start!14714 res!65253) b!140343))

(assert (= (and b!140343 res!65248) b!140342))

(assert (= (and b!140342 res!65250) b!140339))

(assert (= (and b!140339 res!65247) b!140326))

(assert (= (and b!140326 res!65252) b!140335))

(assert (= (and b!140335 res!65255) b!140330))

(assert (= (and b!140330 res!65246) b!140329))

(assert (= (and b!140329 res!65254) b!140332))

(assert (= (and b!140332 res!65249) b!140336))

(assert (= (and b!140336 res!65251) b!140333))

(assert (= b!140334 b!140341))

(assert (= b!140338 b!140334))

(assert (= (and start!14714 ((_ is Cons!2394) rules!4268)) b!140338))

(assert (= b!140337 b!140344))

(assert (= b!140340 b!140337))

(assert (= b!140325 b!140340))

(assert (= (and start!14714 ((_ is Cons!2393) l1!3130)) b!140325))

(assert (= b!140327 b!140328))

(assert (= b!140331 b!140327))

(assert (= b!140324 b!140331))

(assert (= (and start!14714 ((_ is Cons!2393) l2!3099)) b!140324))

(declare-fun b_lambda!2003 () Bool)

(assert (=> (not b_lambda!2003) (not b!140335)))

(declare-fun t!23328 () Bool)

(declare-fun tb!4009 () Bool)

(assert (=> (and start!14714 (= p!3028 p!3028) t!23328) tb!4009))

(declare-fun result!6200 () Bool)

(assert (=> tb!4009 (= result!6200 true)))

(assert (=> b!140335 t!23328))

(declare-fun b_and!6917 () Bool)

(assert (= b_and!6911 (and (=> t!23328 result!6200) b_and!6917)))

(declare-fun b_lambda!2005 () Bool)

(assert (=> (not b_lambda!2005) (not b!140336)))

(declare-fun t!23330 () Bool)

(declare-fun tb!4011 () Bool)

(assert (=> (and start!14714 (= p!3028 p!3028) t!23330) tb!4011))

(declare-fun result!6202 () Bool)

(assert (=> tb!4011 (= result!6202 true)))

(assert (=> b!140336 t!23330))

(declare-fun b_and!6919 () Bool)

(assert (= b_and!6917 (and (=> t!23330 result!6202) b_and!6919)))

(declare-fun m!123583 () Bool)

(assert (=> b!140343 m!123583))

(declare-fun m!123585 () Bool)

(assert (=> b!140336 m!123585))

(assert (=> b!140336 m!123585))

(declare-fun m!123587 () Bool)

(assert (=> b!140336 m!123587))

(declare-fun m!123589 () Bool)

(assert (=> b!140324 m!123589))

(declare-fun m!123591 () Bool)

(assert (=> b!140342 m!123591))

(declare-fun m!123593 () Bool)

(assert (=> b!140334 m!123593))

(declare-fun m!123595 () Bool)

(assert (=> b!140334 m!123595))

(declare-fun m!123597 () Bool)

(assert (=> b!140326 m!123597))

(declare-fun m!123599 () Bool)

(assert (=> b!140331 m!123599))

(declare-fun m!123601 () Bool)

(assert (=> b!140335 m!123601))

(assert (=> b!140335 m!123601))

(declare-fun m!123603 () Bool)

(assert (=> b!140335 m!123603))

(declare-fun m!123605 () Bool)

(assert (=> b!140335 m!123605))

(declare-fun m!123607 () Bool)

(assert (=> b!140327 m!123607))

(declare-fun m!123609 () Bool)

(assert (=> b!140327 m!123609))

(declare-fun m!123611 () Bool)

(assert (=> b!140333 m!123611))

(declare-fun m!123613 () Bool)

(assert (=> b!140333 m!123613))

(declare-fun m!123615 () Bool)

(assert (=> b!140333 m!123615))

(assert (=> b!140333 m!123613))

(declare-fun m!123617 () Bool)

(assert (=> b!140333 m!123617))

(assert (=> b!140333 m!123617))

(declare-fun m!123619 () Bool)

(assert (=> b!140333 m!123619))

(declare-fun m!123621 () Bool)

(assert (=> b!140329 m!123621))

(declare-fun m!123623 () Bool)

(assert (=> b!140332 m!123623))

(declare-fun m!123625 () Bool)

(assert (=> b!140339 m!123625))

(declare-fun m!123627 () Bool)

(assert (=> b!140325 m!123627))

(declare-fun m!123629 () Bool)

(assert (=> b!140340 m!123629))

(declare-fun m!123631 () Bool)

(assert (=> b!140337 m!123631))

(declare-fun m!123633 () Bool)

(assert (=> b!140337 m!123633))

(check-sat (not b_lambda!2003) (not b_next!4537) b_and!6919 (not b_lambda!2005) b_and!6905 (not b!140343) b_and!6913 (not b_next!4535) (not b!140326) (not b!140334) (not b!140338) (not b_next!4541) (not b!140325) (not b_next!4533) (not b!140339) (not b!140324) (not b!140332) (not b!140333) b_and!6915 b_and!6907 (not b!140329) (not b!140340) (not b!140331) b_and!6903 (not b!140336) (not b_next!4539) (not b!140342) (not b!140327) b_and!6909 (not b_next!4543) (not b!140337) (not b_next!4531) (not b!140335))
(check-sat (not b_next!4541) (not b_next!4537) (not b_next!4533) b_and!6919 b_and!6915 b_and!6907 b_and!6905 b_and!6909 b_and!6913 (not b_next!4543) (not b_next!4535) (not b_next!4531) b_and!6903 (not b_next!4539))
(get-model)

(declare-fun b_lambda!2007 () Bool)

(assert (= b_lambda!2003 (or (and start!14714 b_free!4539) b_lambda!2007)))

(declare-fun b_lambda!2009 () Bool)

(assert (= b_lambda!2005 (or (and start!14714 b_free!4539) b_lambda!2009)))

(check-sat (not b_lambda!2007) (not b_next!4537) b_and!6919 b_and!6905 (not b_lambda!2009) (not b!140343) b_and!6913 (not b_next!4535) (not b!140326) (not b!140334) (not b!140338) (not b_next!4541) (not b!140325) (not b_next!4533) (not b!140339) (not b!140324) (not b!140332) (not b!140333) b_and!6915 b_and!6907 (not b!140329) (not b!140340) (not b!140331) b_and!6903 (not b!140336) (not b_next!4539) (not b!140342) (not b!140327) b_and!6909 (not b_next!4543) (not b!140337) (not b_next!4531) (not b!140335))
(check-sat (not b_next!4541) (not b_next!4537) (not b_next!4533) b_and!6919 b_and!6915 b_and!6907 b_and!6905 b_and!6909 b_and!6913 (not b_next!4543) (not b_next!4535) (not b_next!4531) b_and!6903 (not b_next!4539))
(get-model)

(declare-fun d!33312 () Bool)

(assert (=> d!33312 (= (inv!3143 (tag!579 (rule!908 (h!7790 l2!3099)))) (= (mod (str.len (value!15743 (tag!579 (rule!908 (h!7790 l2!3099))))) 2) 0))))

(assert (=> b!140327 d!33312))

(declare-fun d!33314 () Bool)

(declare-fun res!65265 () Bool)

(declare-fun e!82640 () Bool)

(assert (=> d!33314 (=> (not res!65265) (not e!82640))))

(declare-fun semiInverseModEq!134 (Int Int) Bool)

(assert (=> d!33314 (= res!65265 (semiInverseModEq!134 (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099)))) (toValue!1012 (transformation!401 (rule!908 (h!7790 l2!3099))))))))

(assert (=> d!33314 (= (inv!3147 (transformation!401 (rule!908 (h!7790 l2!3099)))) e!82640)))

(declare-fun b!140347 () Bool)

(declare-fun equivClasses!117 (Int Int) Bool)

(assert (=> b!140347 (= e!82640 (equivClasses!117 (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099)))) (toValue!1012 (transformation!401 (rule!908 (h!7790 l2!3099))))))))

(assert (= (and d!33314 res!65265) b!140347))

(declare-fun m!123635 () Bool)

(assert (=> d!33314 m!123635))

(declare-fun m!123637 () Bool)

(assert (=> b!140347 m!123637))

(assert (=> b!140327 d!33314))

(declare-fun d!33316 () Bool)

(assert (=> d!33316 (= (isEmpty!914 l2!3099) ((_ is Nil!2393) l2!3099))))

(assert (=> b!140326 d!33316))

(declare-fun d!33318 () Bool)

(assert (=> d!33318 (= (inv!3143 (tag!579 (rule!908 (h!7790 l1!3130)))) (= (mod (str.len (value!15743 (tag!579 (rule!908 (h!7790 l1!3130))))) 2) 0))))

(assert (=> b!140337 d!33318))

(declare-fun d!33320 () Bool)

(declare-fun res!65266 () Bool)

(declare-fun e!82641 () Bool)

(assert (=> d!33320 (=> (not res!65266) (not e!82641))))

(assert (=> d!33320 (= res!65266 (semiInverseModEq!134 (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130)))) (toValue!1012 (transformation!401 (rule!908 (h!7790 l1!3130))))))))

(assert (=> d!33320 (= (inv!3147 (transformation!401 (rule!908 (h!7790 l1!3130)))) e!82641)))

(declare-fun b!140348 () Bool)

(assert (=> b!140348 (= e!82641 (equivClasses!117 (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130)))) (toValue!1012 (transformation!401 (rule!908 (h!7790 l1!3130))))))))

(assert (= (and d!33320 res!65266) b!140348))

(declare-fun m!123639 () Bool)

(assert (=> d!33320 m!123639))

(declare-fun m!123641 () Bool)

(assert (=> b!140348 m!123641))

(assert (=> b!140337 d!33320))

(declare-fun d!33322 () Bool)

(assert (=> d!33322 (= (isEmpty!914 l1!3130) ((_ is Nil!2393) l1!3130))))

(assert (=> b!140339 d!33322))

(declare-fun b!140359 () Bool)

(declare-fun res!65272 () Bool)

(declare-fun e!82649 () Bool)

(assert (=> b!140359 (=> res!65272 e!82649)))

(assert (=> b!140359 (= res!65272 (not ((_ is IntegerValue!1271) (value!15744 (h!7790 l1!3130)))))))

(declare-fun e!82648 () Bool)

(assert (=> b!140359 (= e!82648 e!82649)))

(declare-fun d!33324 () Bool)

(declare-fun c!29242 () Bool)

(assert (=> d!33324 (= c!29242 ((_ is IntegerValue!1269) (value!15744 (h!7790 l1!3130))))))

(declare-fun e!82650 () Bool)

(assert (=> d!33324 (= (inv!21 (value!15744 (h!7790 l1!3130))) e!82650)))

(declare-fun b!140360 () Bool)

(declare-fun inv!17 (TokenValue!423) Bool)

(assert (=> b!140360 (= e!82648 (inv!17 (value!15744 (h!7790 l1!3130))))))

(declare-fun b!140361 () Bool)

(declare-fun inv!16 (TokenValue!423) Bool)

(assert (=> b!140361 (= e!82650 (inv!16 (value!15744 (h!7790 l1!3130))))))

(declare-fun b!140362 () Bool)

(declare-fun inv!15 (TokenValue!423) Bool)

(assert (=> b!140362 (= e!82649 (inv!15 (value!15744 (h!7790 l1!3130))))))

(declare-fun b!140363 () Bool)

(assert (=> b!140363 (= e!82650 e!82648)))

(declare-fun c!29243 () Bool)

(assert (=> b!140363 (= c!29243 ((_ is IntegerValue!1270) (value!15744 (h!7790 l1!3130))))))

(assert (= (and d!33324 c!29242) b!140361))

(assert (= (and d!33324 (not c!29242)) b!140363))

(assert (= (and b!140363 c!29243) b!140360))

(assert (= (and b!140363 (not c!29243)) b!140359))

(assert (= (and b!140359 (not res!65272)) b!140362))

(declare-fun m!123643 () Bool)

(assert (=> b!140360 m!123643))

(declare-fun m!123645 () Bool)

(assert (=> b!140361 m!123645))

(declare-fun m!123647 () Bool)

(assert (=> b!140362 m!123647))

(assert (=> b!140340 d!33324))

(declare-fun d!33328 () Bool)

(assert (=> d!33328 (= (isEmpty!914 (t!23333 l1!3130)) ((_ is Nil!2393) (t!23333 l1!3130)))))

(assert (=> b!140329 d!33328))

(declare-fun d!33330 () Bool)

(declare-fun res!65277 () Bool)

(declare-fun e!82657 () Bool)

(assert (=> d!33330 (=> res!65277 e!82657)))

(assert (=> d!33330 (= res!65277 (or (not ((_ is Cons!2393) l1!3130)) (not ((_ is Cons!2393) (t!23333 l1!3130)))))))

(assert (=> d!33330 (= (tokensListTwoByTwoPredicateList!26 thiss!27322 l1!3130 rules!4268 p!3028) e!82657)))

(declare-fun b!140372 () Bool)

(declare-fun e!82658 () Bool)

(assert (=> b!140372 (= e!82657 e!82658)))

(declare-fun res!65278 () Bool)

(assert (=> b!140372 (=> (not res!65278) (not e!82658))))

(assert (=> b!140372 (= res!65278 (dynLambda!793 p!3028 (h!7790 l1!3130) (h!7790 (t!23333 l1!3130)) rules!4268))))

(declare-fun b!140373 () Bool)

(assert (=> b!140373 (= e!82658 (tokensListTwoByTwoPredicateList!26 thiss!27322 (Cons!2393 (h!7790 (t!23333 l1!3130)) (t!23333 (t!23333 l1!3130))) rules!4268 p!3028))))

(assert (= (and d!33330 (not res!65277)) b!140372))

(assert (= (and b!140372 res!65278) b!140373))

(declare-fun b_lambda!2015 () Bool)

(assert (=> (not b_lambda!2015) (not b!140372)))

(declare-fun t!23336 () Bool)

(declare-fun tb!4013 () Bool)

(assert (=> (and start!14714 (= p!3028 p!3028) t!23336) tb!4013))

(declare-fun result!6204 () Bool)

(assert (=> tb!4013 (= result!6204 true)))

(assert (=> b!140372 t!23336))

(declare-fun b_and!6921 () Bool)

(assert (= b_and!6919 (and (=> t!23336 result!6204) b_and!6921)))

(declare-fun m!123653 () Bool)

(assert (=> b!140372 m!123653))

(declare-fun m!123657 () Bool)

(assert (=> b!140373 m!123657))

(assert (=> b!140343 d!33330))

(declare-fun e!82674 () Bool)

(declare-fun b!140397 () Bool)

(declare-fun lt!41147 () List!2403)

(assert (=> b!140397 (= e!82674 (or (not (= l2!3099 Nil!2393)) (= lt!41147 l1!3130)))))

(declare-fun b!140394 () Bool)

(declare-fun e!82673 () List!2403)

(assert (=> b!140394 (= e!82673 l2!3099)))

(declare-fun d!33336 () Bool)

(assert (=> d!33336 e!82674))

(declare-fun res!65292 () Bool)

(assert (=> d!33336 (=> (not res!65292) (not e!82674))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!344 (List!2403) (InoxSet Token!546))

(assert (=> d!33336 (= res!65292 (= (content!344 lt!41147) ((_ map or) (content!344 l1!3130) (content!344 l2!3099))))))

(assert (=> d!33336 (= lt!41147 e!82673)))

(declare-fun c!29250 () Bool)

(assert (=> d!33336 (= c!29250 ((_ is Nil!2393) l1!3130))))

(assert (=> d!33336 (= (++!524 l1!3130 l2!3099) lt!41147)))

(declare-fun b!140396 () Bool)

(declare-fun res!65291 () Bool)

(assert (=> b!140396 (=> (not res!65291) (not e!82674))))

(declare-fun size!2101 (List!2403) Int)

(assert (=> b!140396 (= res!65291 (= (size!2101 lt!41147) (+ (size!2101 l1!3130) (size!2101 l2!3099))))))

(declare-fun b!140395 () Bool)

(assert (=> b!140395 (= e!82673 (Cons!2393 (h!7790 l1!3130) (++!524 (t!23333 l1!3130) l2!3099)))))

(assert (= (and d!33336 c!29250) b!140394))

(assert (= (and d!33336 (not c!29250)) b!140395))

(assert (= (and d!33336 res!65292) b!140396))

(assert (= (and b!140396 res!65291) b!140397))

(declare-fun m!123667 () Bool)

(assert (=> d!33336 m!123667))

(declare-fun m!123669 () Bool)

(assert (=> d!33336 m!123669))

(declare-fun m!123671 () Bool)

(assert (=> d!33336 m!123671))

(declare-fun m!123673 () Bool)

(assert (=> b!140396 m!123673))

(declare-fun m!123675 () Bool)

(assert (=> b!140396 m!123675))

(declare-fun m!123677 () Bool)

(assert (=> b!140396 m!123677))

(assert (=> b!140395 m!123617))

(assert (=> b!140333 d!33336))

(declare-fun lt!41148 () List!2403)

(declare-fun b!140401 () Bool)

(declare-fun e!82676 () Bool)

(assert (=> b!140401 (= e!82676 (or (not (= l2!3099 Nil!2393)) (= lt!41148 (t!23333 l1!3130))))))

(declare-fun b!140398 () Bool)

(declare-fun e!82675 () List!2403)

(assert (=> b!140398 (= e!82675 l2!3099)))

(declare-fun d!33346 () Bool)

(assert (=> d!33346 e!82676))

(declare-fun res!65294 () Bool)

(assert (=> d!33346 (=> (not res!65294) (not e!82676))))

(assert (=> d!33346 (= res!65294 (= (content!344 lt!41148) ((_ map or) (content!344 (t!23333 l1!3130)) (content!344 l2!3099))))))

(assert (=> d!33346 (= lt!41148 e!82675)))

(declare-fun c!29251 () Bool)

(assert (=> d!33346 (= c!29251 ((_ is Nil!2393) (t!23333 l1!3130)))))

(assert (=> d!33346 (= (++!524 (t!23333 l1!3130) l2!3099) lt!41148)))

(declare-fun b!140400 () Bool)

(declare-fun res!65293 () Bool)

(assert (=> b!140400 (=> (not res!65293) (not e!82676))))

(assert (=> b!140400 (= res!65293 (= (size!2101 lt!41148) (+ (size!2101 (t!23333 l1!3130)) (size!2101 l2!3099))))))

(declare-fun b!140399 () Bool)

(assert (=> b!140399 (= e!82675 (Cons!2393 (h!7790 (t!23333 l1!3130)) (++!524 (t!23333 (t!23333 l1!3130)) l2!3099)))))

(assert (= (and d!33346 c!29251) b!140398))

(assert (= (and d!33346 (not c!29251)) b!140399))

(assert (= (and d!33346 res!65294) b!140400))

(assert (= (and b!140400 res!65293) b!140401))

(declare-fun m!123679 () Bool)

(assert (=> d!33346 m!123679))

(declare-fun m!123681 () Bool)

(assert (=> d!33346 m!123681))

(assert (=> d!33346 m!123671))

(declare-fun m!123683 () Bool)

(assert (=> b!140400 m!123683))

(declare-fun m!123685 () Bool)

(assert (=> b!140400 m!123685))

(assert (=> b!140400 m!123677))

(declare-fun m!123687 () Bool)

(assert (=> b!140399 m!123687))

(assert (=> b!140333 d!33346))

(declare-fun d!33348 () Bool)

(declare-fun res!65295 () Bool)

(declare-fun e!82677 () Bool)

(assert (=> d!33348 (=> res!65295 e!82677)))

(assert (=> d!33348 (= res!65295 (or (not ((_ is Cons!2393) (++!524 l1!3130 l2!3099))) (not ((_ is Cons!2393) (t!23333 (++!524 l1!3130 l2!3099))))))))

(assert (=> d!33348 (= (tokensListTwoByTwoPredicateList!26 thiss!27322 (++!524 l1!3130 l2!3099) rules!4268 p!3028) e!82677)))

(declare-fun b!140402 () Bool)

(declare-fun e!82678 () Bool)

(assert (=> b!140402 (= e!82677 e!82678)))

(declare-fun res!65296 () Bool)

(assert (=> b!140402 (=> (not res!65296) (not e!82678))))

(assert (=> b!140402 (= res!65296 (dynLambda!793 p!3028 (h!7790 (++!524 l1!3130 l2!3099)) (h!7790 (t!23333 (++!524 l1!3130 l2!3099))) rules!4268))))

(declare-fun b!140403 () Bool)

(assert (=> b!140403 (= e!82678 (tokensListTwoByTwoPredicateList!26 thiss!27322 (Cons!2393 (h!7790 (t!23333 (++!524 l1!3130 l2!3099))) (t!23333 (t!23333 (++!524 l1!3130 l2!3099)))) rules!4268 p!3028))))

(assert (= (and d!33348 (not res!65295)) b!140402))

(assert (= (and b!140402 res!65296) b!140403))

(declare-fun b_lambda!2021 () Bool)

(assert (=> (not b_lambda!2021) (not b!140402)))

(declare-fun t!23342 () Bool)

(declare-fun tb!4019 () Bool)

(assert (=> (and start!14714 (= p!3028 p!3028) t!23342) tb!4019))

(declare-fun result!6210 () Bool)

(assert (=> tb!4019 (= result!6210 true)))

(assert (=> b!140402 t!23342))

(declare-fun b_and!6927 () Bool)

(assert (= b_and!6921 (and (=> t!23342 result!6210) b_and!6927)))

(declare-fun m!123689 () Bool)

(assert (=> b!140402 m!123689))

(declare-fun m!123691 () Bool)

(assert (=> b!140403 m!123691))

(assert (=> b!140333 d!33348))

(declare-fun d!33350 () Bool)

(declare-fun res!65299 () Bool)

(declare-fun e!82681 () Bool)

(assert (=> d!33350 (=> res!65299 e!82681)))

(assert (=> d!33350 (= res!65299 (or (not ((_ is Cons!2393) (++!524 (t!23333 l1!3130) l2!3099))) (not ((_ is Cons!2393) (t!23333 (++!524 (t!23333 l1!3130) l2!3099))))))))

(assert (=> d!33350 (= (tokensListTwoByTwoPredicateList!26 thiss!27322 (++!524 (t!23333 l1!3130) l2!3099) rules!4268 p!3028) e!82681)))

(declare-fun b!140406 () Bool)

(declare-fun e!82682 () Bool)

(assert (=> b!140406 (= e!82681 e!82682)))

(declare-fun res!65300 () Bool)

(assert (=> b!140406 (=> (not res!65300) (not e!82682))))

(assert (=> b!140406 (= res!65300 (dynLambda!793 p!3028 (h!7790 (++!524 (t!23333 l1!3130) l2!3099)) (h!7790 (t!23333 (++!524 (t!23333 l1!3130) l2!3099))) rules!4268))))

(declare-fun b!140407 () Bool)

(assert (=> b!140407 (= e!82682 (tokensListTwoByTwoPredicateList!26 thiss!27322 (Cons!2393 (h!7790 (t!23333 (++!524 (t!23333 l1!3130) l2!3099))) (t!23333 (t!23333 (++!524 (t!23333 l1!3130) l2!3099)))) rules!4268 p!3028))))

(assert (= (and d!33350 (not res!65299)) b!140406))

(assert (= (and b!140406 res!65300) b!140407))

(declare-fun b_lambda!2023 () Bool)

(assert (=> (not b_lambda!2023) (not b!140406)))

(declare-fun t!23344 () Bool)

(declare-fun tb!4021 () Bool)

(assert (=> (and start!14714 (= p!3028 p!3028) t!23344) tb!4021))

(declare-fun result!6212 () Bool)

(assert (=> tb!4021 (= result!6212 true)))

(assert (=> b!140406 t!23344))

(declare-fun b_and!6929 () Bool)

(assert (= b_and!6927 (and (=> t!23344 result!6212) b_and!6929)))

(declare-fun m!123693 () Bool)

(assert (=> b!140406 m!123693))

(declare-fun m!123695 () Bool)

(assert (=> b!140407 m!123695))

(assert (=> b!140333 d!33350))

(declare-fun d!33352 () Bool)

(assert (=> d!33352 (tokensListTwoByTwoPredicateList!26 thiss!27322 (++!524 (t!23333 l1!3130) l2!3099) rules!4268 p!3028)))

(declare-fun lt!41151 () Unit!1810)

(declare-fun choose!1723 (LexerInterface!287 List!2403 List!2403 List!2404 Int) Unit!1810)

(assert (=> d!33352 (= lt!41151 (choose!1723 thiss!27322 (t!23333 l1!3130) l2!3099 rules!4268 p!3028))))

(declare-fun e!82689 () Bool)

(assert (=> d!33352 e!82689))

(declare-fun res!65307 () Bool)

(assert (=> d!33352 (=> (not res!65307) (not e!82689))))

(assert (=> d!33352 (= res!65307 (tokensListTwoByTwoPredicateList!26 thiss!27322 (t!23333 l1!3130) rules!4268 p!3028))))

(assert (=> d!33352 (= (tokensListTwoByTwoPredicateConcatList!4 thiss!27322 (t!23333 l1!3130) l2!3099 rules!4268 p!3028) lt!41151)))

(declare-fun b!140419 () Bool)

(assert (=> b!140419 (= e!82689 (tokensListTwoByTwoPredicateList!26 thiss!27322 l2!3099 rules!4268 p!3028))))

(assert (= (and d!33352 res!65307) b!140419))

(assert (=> d!33352 m!123617))

(assert (=> d!33352 m!123617))

(assert (=> d!33352 m!123619))

(declare-fun m!123709 () Bool)

(assert (=> d!33352 m!123709))

(assert (=> d!33352 m!123623))

(assert (=> b!140419 m!123591))

(assert (=> b!140333 d!33352))

(declare-fun d!33356 () Bool)

(declare-fun res!65308 () Bool)

(declare-fun e!82690 () Bool)

(assert (=> d!33356 (=> res!65308 e!82690)))

(assert (=> d!33356 (= res!65308 (or (not ((_ is Cons!2393) l2!3099)) (not ((_ is Cons!2393) (t!23333 l2!3099)))))))

(assert (=> d!33356 (= (tokensListTwoByTwoPredicateList!26 thiss!27322 l2!3099 rules!4268 p!3028) e!82690)))

(declare-fun b!140420 () Bool)

(declare-fun e!82691 () Bool)

(assert (=> b!140420 (= e!82690 e!82691)))

(declare-fun res!65309 () Bool)

(assert (=> b!140420 (=> (not res!65309) (not e!82691))))

(assert (=> b!140420 (= res!65309 (dynLambda!793 p!3028 (h!7790 l2!3099) (h!7790 (t!23333 l2!3099)) rules!4268))))

(declare-fun b!140421 () Bool)

(assert (=> b!140421 (= e!82691 (tokensListTwoByTwoPredicateList!26 thiss!27322 (Cons!2393 (h!7790 (t!23333 l2!3099)) (t!23333 (t!23333 l2!3099))) rules!4268 p!3028))))

(assert (= (and d!33356 (not res!65308)) b!140420))

(assert (= (and b!140420 res!65309) b!140421))

(declare-fun b_lambda!2027 () Bool)

(assert (=> (not b_lambda!2027) (not b!140420)))

(declare-fun t!23352 () Bool)

(declare-fun tb!4029 () Bool)

(assert (=> (and start!14714 (= p!3028 p!3028) t!23352) tb!4029))

(declare-fun result!6222 () Bool)

(assert (=> tb!4029 (= result!6222 true)))

(assert (=> b!140420 t!23352))

(declare-fun b_and!6937 () Bool)

(assert (= b_and!6929 (and (=> t!23352 result!6222) b_and!6937)))

(declare-fun m!123711 () Bool)

(assert (=> b!140420 m!123711))

(declare-fun m!123713 () Bool)

(assert (=> b!140421 m!123713))

(assert (=> b!140342 d!33356))

(declare-fun b!140422 () Bool)

(declare-fun res!65310 () Bool)

(declare-fun e!82693 () Bool)

(assert (=> b!140422 (=> res!65310 e!82693)))

(assert (=> b!140422 (= res!65310 (not ((_ is IntegerValue!1271) (value!15744 (h!7790 l2!3099)))))))

(declare-fun e!82692 () Bool)

(assert (=> b!140422 (= e!82692 e!82693)))

(declare-fun d!33358 () Bool)

(declare-fun c!29252 () Bool)

(assert (=> d!33358 (= c!29252 ((_ is IntegerValue!1269) (value!15744 (h!7790 l2!3099))))))

(declare-fun e!82694 () Bool)

(assert (=> d!33358 (= (inv!21 (value!15744 (h!7790 l2!3099))) e!82694)))

(declare-fun b!140423 () Bool)

(assert (=> b!140423 (= e!82692 (inv!17 (value!15744 (h!7790 l2!3099))))))

(declare-fun b!140424 () Bool)

(assert (=> b!140424 (= e!82694 (inv!16 (value!15744 (h!7790 l2!3099))))))

(declare-fun b!140425 () Bool)

(assert (=> b!140425 (= e!82693 (inv!15 (value!15744 (h!7790 l2!3099))))))

(declare-fun b!140426 () Bool)

(assert (=> b!140426 (= e!82694 e!82692)))

(declare-fun c!29253 () Bool)

(assert (=> b!140426 (= c!29253 ((_ is IntegerValue!1270) (value!15744 (h!7790 l2!3099))))))

(assert (= (and d!33358 c!29252) b!140424))

(assert (= (and d!33358 (not c!29252)) b!140426))

(assert (= (and b!140426 c!29253) b!140423))

(assert (= (and b!140426 (not c!29253)) b!140422))

(assert (= (and b!140422 (not res!65310)) b!140425))

(declare-fun m!123715 () Bool)

(assert (=> b!140423 m!123715))

(declare-fun m!123717 () Bool)

(assert (=> b!140424 m!123717))

(declare-fun m!123719 () Bool)

(assert (=> b!140425 m!123719))

(assert (=> b!140331 d!33358))

(declare-fun d!33360 () Bool)

(declare-fun res!65311 () Bool)

(declare-fun e!82697 () Bool)

(assert (=> d!33360 (=> res!65311 e!82697)))

(assert (=> d!33360 (= res!65311 (or (not ((_ is Cons!2393) (t!23333 l1!3130))) (not ((_ is Cons!2393) (t!23333 (t!23333 l1!3130))))))))

(assert (=> d!33360 (= (tokensListTwoByTwoPredicateList!26 thiss!27322 (t!23333 l1!3130) rules!4268 p!3028) e!82697)))

(declare-fun b!140431 () Bool)

(declare-fun e!82698 () Bool)

(assert (=> b!140431 (= e!82697 e!82698)))

(declare-fun res!65312 () Bool)

(assert (=> b!140431 (=> (not res!65312) (not e!82698))))

(assert (=> b!140431 (= res!65312 (dynLambda!793 p!3028 (h!7790 (t!23333 l1!3130)) (h!7790 (t!23333 (t!23333 l1!3130))) rules!4268))))

(declare-fun b!140432 () Bool)

(assert (=> b!140432 (= e!82698 (tokensListTwoByTwoPredicateList!26 thiss!27322 (Cons!2393 (h!7790 (t!23333 (t!23333 l1!3130))) (t!23333 (t!23333 (t!23333 l1!3130)))) rules!4268 p!3028))))

(assert (= (and d!33360 (not res!65311)) b!140431))

(assert (= (and b!140431 res!65312) b!140432))

(declare-fun b_lambda!2029 () Bool)

(assert (=> (not b_lambda!2029) (not b!140431)))

(declare-fun t!23354 () Bool)

(declare-fun tb!4031 () Bool)

(assert (=> (and start!14714 (= p!3028 p!3028) t!23354) tb!4031))

(declare-fun result!6224 () Bool)

(assert (=> tb!4031 (= result!6224 true)))

(assert (=> b!140431 t!23354))

(declare-fun b_and!6939 () Bool)

(assert (= b_and!6937 (and (=> t!23354 result!6224) b_and!6939)))

(declare-fun m!123721 () Bool)

(assert (=> b!140431 m!123721))

(declare-fun m!123723 () Bool)

(assert (=> b!140432 m!123723))

(assert (=> b!140332 d!33360))

(declare-fun d!33362 () Bool)

(declare-fun lt!41158 () Token!546)

(declare-fun contains!382 (List!2403 Token!546) Bool)

(assert (=> d!33362 (contains!382 l1!3130 lt!41158)))

(declare-fun e!82709 () Token!546)

(assert (=> d!33362 (= lt!41158 e!82709)))

(declare-fun c!29260 () Bool)

(assert (=> d!33362 (= c!29260 (and ((_ is Cons!2393) l1!3130) ((_ is Nil!2393) (t!23333 l1!3130))))))

(assert (=> d!33362 (not (isEmpty!914 l1!3130))))

(assert (=> d!33362 (= (last!35 l1!3130) lt!41158)))

(declare-fun b!140451 () Bool)

(assert (=> b!140451 (= e!82709 (h!7790 l1!3130))))

(declare-fun b!140452 () Bool)

(assert (=> b!140452 (= e!82709 (last!35 (t!23333 l1!3130)))))

(assert (= (and d!33362 c!29260) b!140451))

(assert (= (and d!33362 (not c!29260)) b!140452))

(declare-fun m!123749 () Bool)

(assert (=> d!33362 m!123749))

(assert (=> d!33362 m!123625))

(assert (=> b!140452 m!123585))

(assert (=> b!140335 d!33362))

(declare-fun d!33370 () Bool)

(assert (=> d!33370 (= (head!560 l2!3099) (h!7790 l2!3099))))

(assert (=> b!140335 d!33370))

(declare-fun d!33372 () Bool)

(declare-fun lt!41159 () Token!546)

(assert (=> d!33372 (contains!382 (t!23333 l1!3130) lt!41159)))

(declare-fun e!82712 () Token!546)

(assert (=> d!33372 (= lt!41159 e!82712)))

(declare-fun c!29261 () Bool)

(assert (=> d!33372 (= c!29261 (and ((_ is Cons!2393) (t!23333 l1!3130)) ((_ is Nil!2393) (t!23333 (t!23333 l1!3130)))))))

(assert (=> d!33372 (not (isEmpty!914 (t!23333 l1!3130)))))

(assert (=> d!33372 (= (last!35 (t!23333 l1!3130)) lt!41159)))

(declare-fun b!140455 () Bool)

(assert (=> b!140455 (= e!82712 (h!7790 (t!23333 l1!3130)))))

(declare-fun b!140456 () Bool)

(assert (=> b!140456 (= e!82712 (last!35 (t!23333 (t!23333 l1!3130))))))

(assert (= (and d!33372 c!29261) b!140455))

(assert (= (and d!33372 (not c!29261)) b!140456))

(declare-fun m!123753 () Bool)

(assert (=> d!33372 m!123753))

(assert (=> d!33372 m!123621))

(declare-fun m!123757 () Bool)

(assert (=> b!140456 m!123757))

(assert (=> b!140336 d!33372))

(declare-fun d!33374 () Bool)

(declare-fun res!65332 () Bool)

(declare-fun e!82718 () Bool)

(assert (=> d!33374 (=> (not res!65332) (not e!82718))))

(declare-fun isEmpty!916 (List!2402) Bool)

(assert (=> d!33374 (= res!65332 (not (isEmpty!916 (originalCharacters!444 (h!7790 l1!3130)))))))

(assert (=> d!33374 (= (inv!3146 (h!7790 l1!3130)) e!82718)))

(declare-fun b!140464 () Bool)

(declare-fun res!65333 () Bool)

(assert (=> b!140464 (=> (not res!65333) (not e!82718))))

(declare-fun list!837 (BalanceConc!1270) List!2402)

(declare-fun dynLambda!795 (Int TokenValue!423) BalanceConc!1270)

(assert (=> b!140464 (= res!65333 (= (originalCharacters!444 (h!7790 l1!3130)) (list!837 (dynLambda!795 (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130)))) (value!15744 (h!7790 l1!3130))))))))

(declare-fun b!140465 () Bool)

(declare-fun size!2103 (List!2402) Int)

(assert (=> b!140465 (= e!82718 (= (size!2099 (h!7790 l1!3130)) (size!2103 (originalCharacters!444 (h!7790 l1!3130)))))))

(assert (= (and d!33374 res!65332) b!140464))

(assert (= (and b!140464 res!65333) b!140465))

(declare-fun b_lambda!2035 () Bool)

(assert (=> (not b_lambda!2035) (not b!140464)))

(declare-fun t!23360 () Bool)

(declare-fun tb!4037 () Bool)

(assert (=> (and b!140344 (= (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130)))) (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130))))) t!23360) tb!4037))

(declare-fun b!140472 () Bool)

(declare-fun e!82723 () Bool)

(declare-fun tp!73875 () Bool)

(declare-fun inv!3150 (Conc!631) Bool)

(assert (=> b!140472 (= e!82723 (and (inv!3150 (c!29236 (dynLambda!795 (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130)))) (value!15744 (h!7790 l1!3130))))) tp!73875))))

(declare-fun result!6230 () Bool)

(declare-fun inv!3151 (BalanceConc!1270) Bool)

(assert (=> tb!4037 (= result!6230 (and (inv!3151 (dynLambda!795 (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130)))) (value!15744 (h!7790 l1!3130)))) e!82723))))

(assert (= tb!4037 b!140472))

(declare-fun m!123767 () Bool)

(assert (=> b!140472 m!123767))

(declare-fun m!123769 () Bool)

(assert (=> tb!4037 m!123769))

(assert (=> b!140464 t!23360))

(declare-fun b_and!6947 () Bool)

(assert (= b_and!6905 (and (=> t!23360 result!6230) b_and!6947)))

(declare-fun tb!4041 () Bool)

(declare-fun t!23364 () Bool)

(assert (=> (and b!140341 (= (toChars!871 (transformation!401 (h!7791 rules!4268))) (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130))))) t!23364) tb!4041))

(declare-fun result!6236 () Bool)

(assert (= result!6236 result!6230))

(assert (=> b!140464 t!23364))

(declare-fun b_and!6949 () Bool)

(assert (= b_and!6909 (and (=> t!23364 result!6236) b_and!6949)))

(declare-fun t!23366 () Bool)

(declare-fun tb!4043 () Bool)

(assert (=> (and b!140328 (= (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099)))) (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130))))) t!23366) tb!4043))

(declare-fun result!6238 () Bool)

(assert (= result!6238 result!6230))

(assert (=> b!140464 t!23366))

(declare-fun b_and!6951 () Bool)

(assert (= b_and!6915 (and (=> t!23366 result!6238) b_and!6951)))

(declare-fun m!123771 () Bool)

(assert (=> d!33374 m!123771))

(declare-fun m!123773 () Bool)

(assert (=> b!140464 m!123773))

(assert (=> b!140464 m!123773))

(declare-fun m!123775 () Bool)

(assert (=> b!140464 m!123775))

(declare-fun m!123777 () Bool)

(assert (=> b!140465 m!123777))

(assert (=> b!140325 d!33374))

(declare-fun d!33384 () Bool)

(assert (=> d!33384 (= (inv!3143 (tag!579 (h!7791 rules!4268))) (= (mod (str.len (value!15743 (tag!579 (h!7791 rules!4268)))) 2) 0))))

(assert (=> b!140334 d!33384))

(declare-fun d!33386 () Bool)

(declare-fun res!65336 () Bool)

(declare-fun e!82724 () Bool)

(assert (=> d!33386 (=> (not res!65336) (not e!82724))))

(assert (=> d!33386 (= res!65336 (semiInverseModEq!134 (toChars!871 (transformation!401 (h!7791 rules!4268))) (toValue!1012 (transformation!401 (h!7791 rules!4268)))))))

(assert (=> d!33386 (= (inv!3147 (transformation!401 (h!7791 rules!4268))) e!82724)))

(declare-fun b!140473 () Bool)

(assert (=> b!140473 (= e!82724 (equivClasses!117 (toChars!871 (transformation!401 (h!7791 rules!4268))) (toValue!1012 (transformation!401 (h!7791 rules!4268)))))))

(assert (= (and d!33386 res!65336) b!140473))

(declare-fun m!123779 () Bool)

(assert (=> d!33386 m!123779))

(declare-fun m!123781 () Bool)

(assert (=> b!140473 m!123781))

(assert (=> b!140334 d!33386))

(declare-fun d!33388 () Bool)

(declare-fun res!65337 () Bool)

(declare-fun e!82725 () Bool)

(assert (=> d!33388 (=> (not res!65337) (not e!82725))))

(assert (=> d!33388 (= res!65337 (not (isEmpty!916 (originalCharacters!444 (h!7790 l2!3099)))))))

(assert (=> d!33388 (= (inv!3146 (h!7790 l2!3099)) e!82725)))

(declare-fun b!140474 () Bool)

(declare-fun res!65338 () Bool)

(assert (=> b!140474 (=> (not res!65338) (not e!82725))))

(assert (=> b!140474 (= res!65338 (= (originalCharacters!444 (h!7790 l2!3099)) (list!837 (dynLambda!795 (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099)))) (value!15744 (h!7790 l2!3099))))))))

(declare-fun b!140475 () Bool)

(assert (=> b!140475 (= e!82725 (= (size!2099 (h!7790 l2!3099)) (size!2103 (originalCharacters!444 (h!7790 l2!3099)))))))

(assert (= (and d!33388 res!65337) b!140474))

(assert (= (and b!140474 res!65338) b!140475))

(declare-fun b_lambda!2039 () Bool)

(assert (=> (not b_lambda!2039) (not b!140474)))

(declare-fun tb!4045 () Bool)

(declare-fun t!23368 () Bool)

(assert (=> (and b!140344 (= (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130)))) (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099))))) t!23368) tb!4045))

(declare-fun b!140478 () Bool)

(declare-fun e!82728 () Bool)

(declare-fun tp!73876 () Bool)

(assert (=> b!140478 (= e!82728 (and (inv!3150 (c!29236 (dynLambda!795 (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099)))) (value!15744 (h!7790 l2!3099))))) tp!73876))))

(declare-fun result!6240 () Bool)

(assert (=> tb!4045 (= result!6240 (and (inv!3151 (dynLambda!795 (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099)))) (value!15744 (h!7790 l2!3099)))) e!82728))))

(assert (= tb!4045 b!140478))

(declare-fun m!123783 () Bool)

(assert (=> b!140478 m!123783))

(declare-fun m!123785 () Bool)

(assert (=> tb!4045 m!123785))

(assert (=> b!140474 t!23368))

(declare-fun b_and!6953 () Bool)

(assert (= b_and!6947 (and (=> t!23368 result!6240) b_and!6953)))

(declare-fun t!23370 () Bool)

(declare-fun tb!4047 () Bool)

(assert (=> (and b!140341 (= (toChars!871 (transformation!401 (h!7791 rules!4268))) (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099))))) t!23370) tb!4047))

(declare-fun result!6242 () Bool)

(assert (= result!6242 result!6240))

(assert (=> b!140474 t!23370))

(declare-fun b_and!6955 () Bool)

(assert (= b_and!6949 (and (=> t!23370 result!6242) b_and!6955)))

(declare-fun t!23372 () Bool)

(declare-fun tb!4049 () Bool)

(assert (=> (and b!140328 (= (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099)))) (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099))))) t!23372) tb!4049))

(declare-fun result!6244 () Bool)

(assert (= result!6244 result!6240))

(assert (=> b!140474 t!23372))

(declare-fun b_and!6957 () Bool)

(assert (= b_and!6951 (and (=> t!23372 result!6244) b_and!6957)))

(declare-fun m!123787 () Bool)

(assert (=> d!33388 m!123787))

(declare-fun m!123789 () Bool)

(assert (=> b!140474 m!123789))

(assert (=> b!140474 m!123789))

(declare-fun m!123791 () Bool)

(assert (=> b!140474 m!123791))

(declare-fun m!123793 () Bool)

(assert (=> b!140475 m!123793))

(assert (=> b!140324 d!33388))

(declare-fun b!140494 () Bool)

(declare-fun b_free!4545 () Bool)

(declare-fun b_next!4545 () Bool)

(assert (=> b!140494 (= b_free!4545 (not b_next!4545))))

(declare-fun tp!73886 () Bool)

(declare-fun b_and!6965 () Bool)

(assert (=> b!140494 (= tp!73886 b_and!6965)))

(declare-fun b_free!4547 () Bool)

(declare-fun b_next!4547 () Bool)

(assert (=> b!140494 (= b_free!4547 (not b_next!4547))))

(declare-fun tb!4057 () Bool)

(declare-fun t!23380 () Bool)

(assert (=> (and b!140494 (= (toChars!871 (transformation!401 (h!7791 (t!23334 rules!4268)))) (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130))))) t!23380) tb!4057))

(declare-fun result!6254 () Bool)

(assert (= result!6254 result!6230))

(assert (=> b!140464 t!23380))

(declare-fun tb!4059 () Bool)

(declare-fun t!23382 () Bool)

(assert (=> (and b!140494 (= (toChars!871 (transformation!401 (h!7791 (t!23334 rules!4268)))) (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099))))) t!23382) tb!4059))

(declare-fun result!6256 () Bool)

(assert (= result!6256 result!6240))

(assert (=> b!140474 t!23382))

(declare-fun tp!73887 () Bool)

(declare-fun b_and!6967 () Bool)

(assert (=> b!140494 (= tp!73887 (and (=> t!23380 result!6254) (=> t!23382 result!6256) b_and!6967))))

(declare-fun e!82741 () Bool)

(assert (=> b!140494 (= e!82741 (and tp!73886 tp!73887))))

(declare-fun b!140493 () Bool)

(declare-fun e!82744 () Bool)

(declare-fun tp!73888 () Bool)

(assert (=> b!140493 (= e!82744 (and tp!73888 (inv!3143 (tag!579 (h!7791 (t!23334 rules!4268)))) (inv!3147 (transformation!401 (h!7791 (t!23334 rules!4268)))) e!82741))))

(declare-fun b!140492 () Bool)

(declare-fun e!82742 () Bool)

(declare-fun tp!73889 () Bool)

(assert (=> b!140492 (= e!82742 (and e!82744 tp!73889))))

(assert (=> b!140338 (= tp!73864 e!82742)))

(assert (= b!140493 b!140494))

(assert (= b!140492 b!140493))

(assert (= (and b!140338 ((_ is Cons!2394) (t!23334 rules!4268))) b!140492))

(declare-fun m!123815 () Bool)

(assert (=> b!140493 m!123815))

(declare-fun m!123817 () Bool)

(assert (=> b!140493 m!123817))

(declare-fun e!82756 () Bool)

(assert (=> b!140327 (= tp!73855 e!82756)))

(declare-fun b!140520 () Bool)

(declare-fun tp_is_empty!1565 () Bool)

(assert (=> b!140520 (= e!82756 tp_is_empty!1565)))

(declare-fun b!140521 () Bool)

(declare-fun tp!73902 () Bool)

(declare-fun tp!73904 () Bool)

(assert (=> b!140521 (= e!82756 (and tp!73902 tp!73904))))

(declare-fun b!140522 () Bool)

(declare-fun tp!73903 () Bool)

(assert (=> b!140522 (= e!82756 tp!73903)))

(declare-fun b!140523 () Bool)

(declare-fun tp!73901 () Bool)

(declare-fun tp!73900 () Bool)

(assert (=> b!140523 (= e!82756 (and tp!73901 tp!73900))))

(assert (= (and b!140327 ((_ is ElementMatch!625) (regex!401 (rule!908 (h!7790 l2!3099))))) b!140520))

(assert (= (and b!140327 ((_ is Concat!1049) (regex!401 (rule!908 (h!7790 l2!3099))))) b!140521))

(assert (= (and b!140327 ((_ is Star!625) (regex!401 (rule!908 (h!7790 l2!3099))))) b!140522))

(assert (= (and b!140327 ((_ is Union!625) (regex!401 (rule!908 (h!7790 l2!3099))))) b!140523))

(declare-fun b!140534 () Bool)

(declare-fun e!82763 () Bool)

(declare-fun tp!73907 () Bool)

(assert (=> b!140534 (= e!82763 (and tp_is_empty!1565 tp!73907))))

(assert (=> b!140331 (= tp!73858 e!82763)))

(assert (= (and b!140331 ((_ is Cons!2392) (originalCharacters!444 (h!7790 l2!3099)))) b!140534))

(declare-fun e!82766 () Bool)

(assert (=> b!140337 (= tp!73861 e!82766)))

(declare-fun b!140539 () Bool)

(assert (=> b!140539 (= e!82766 tp_is_empty!1565)))

(declare-fun b!140540 () Bool)

(declare-fun tp!73910 () Bool)

(declare-fun tp!73912 () Bool)

(assert (=> b!140540 (= e!82766 (and tp!73910 tp!73912))))

(declare-fun b!140541 () Bool)

(declare-fun tp!73911 () Bool)

(assert (=> b!140541 (= e!82766 tp!73911)))

(declare-fun b!140542 () Bool)

(declare-fun tp!73909 () Bool)

(declare-fun tp!73908 () Bool)

(assert (=> b!140542 (= e!82766 (and tp!73909 tp!73908))))

(assert (= (and b!140337 ((_ is ElementMatch!625) (regex!401 (rule!908 (h!7790 l1!3130))))) b!140539))

(assert (= (and b!140337 ((_ is Concat!1049) (regex!401 (rule!908 (h!7790 l1!3130))))) b!140540))

(assert (= (and b!140337 ((_ is Star!625) (regex!401 (rule!908 (h!7790 l1!3130))))) b!140541))

(assert (= (and b!140337 ((_ is Union!625) (regex!401 (rule!908 (h!7790 l1!3130))))) b!140542))

(declare-fun b!140581 () Bool)

(declare-fun b_free!4553 () Bool)

(declare-fun b_next!4553 () Bool)

(assert (=> b!140581 (= b_free!4553 (not b_next!4553))))

(declare-fun tp!73951 () Bool)

(declare-fun b_and!6973 () Bool)

(assert (=> b!140581 (= tp!73951 b_and!6973)))

(declare-fun b_free!4555 () Bool)

(declare-fun b_next!4555 () Bool)

(assert (=> b!140581 (= b_free!4555 (not b_next!4555))))

(declare-fun t!23388 () Bool)

(declare-fun tb!4065 () Bool)

(assert (=> (and b!140581 (= (toChars!871 (transformation!401 (rule!908 (h!7790 (t!23333 l1!3130))))) (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130))))) t!23388) tb!4065))

(declare-fun result!6274 () Bool)

(assert (= result!6274 result!6230))

(assert (=> b!140464 t!23388))

(declare-fun tb!4067 () Bool)

(declare-fun t!23390 () Bool)

(assert (=> (and b!140581 (= (toChars!871 (transformation!401 (rule!908 (h!7790 (t!23333 l1!3130))))) (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099))))) t!23390) tb!4067))

(declare-fun result!6276 () Bool)

(assert (= result!6276 result!6240))

(assert (=> b!140474 t!23390))

(declare-fun b_and!6975 () Bool)

(declare-fun tp!73952 () Bool)

(assert (=> b!140581 (= tp!73952 (and (=> t!23388 result!6274) (=> t!23390 result!6276) b_and!6975))))

(declare-fun e!82794 () Bool)

(assert (=> b!140325 (= tp!73867 e!82794)))

(declare-fun e!82798 () Bool)

(declare-fun tp!73954 () Bool)

(declare-fun b!140579 () Bool)

(declare-fun e!82799 () Bool)

(assert (=> b!140579 (= e!82798 (and (inv!21 (value!15744 (h!7790 (t!23333 l1!3130)))) e!82799 tp!73954))))

(declare-fun tp!73950 () Bool)

(declare-fun b!140578 () Bool)

(assert (=> b!140578 (= e!82794 (and (inv!3146 (h!7790 (t!23333 l1!3130))) e!82798 tp!73950))))

(declare-fun tp!73953 () Bool)

(declare-fun e!82797 () Bool)

(declare-fun b!140580 () Bool)

(assert (=> b!140580 (= e!82799 (and tp!73953 (inv!3143 (tag!579 (rule!908 (h!7790 (t!23333 l1!3130))))) (inv!3147 (transformation!401 (rule!908 (h!7790 (t!23333 l1!3130))))) e!82797))))

(assert (=> b!140581 (= e!82797 (and tp!73951 tp!73952))))

(assert (= b!140580 b!140581))

(assert (= b!140579 b!140580))

(assert (= b!140578 b!140579))

(assert (= (and b!140325 ((_ is Cons!2393) (t!23333 l1!3130))) b!140578))

(declare-fun m!123839 () Bool)

(assert (=> b!140579 m!123839))

(declare-fun m!123841 () Bool)

(assert (=> b!140578 m!123841))

(declare-fun m!123843 () Bool)

(assert (=> b!140580 m!123843))

(declare-fun m!123845 () Bool)

(assert (=> b!140580 m!123845))

(declare-fun e!82808 () Bool)

(assert (=> b!140334 (= tp!73863 e!82808)))

(declare-fun b!140586 () Bool)

(assert (=> b!140586 (= e!82808 tp_is_empty!1565)))

(declare-fun b!140587 () Bool)

(declare-fun tp!73959 () Bool)

(declare-fun tp!73961 () Bool)

(assert (=> b!140587 (= e!82808 (and tp!73959 tp!73961))))

(declare-fun b!140588 () Bool)

(declare-fun tp!73960 () Bool)

(assert (=> b!140588 (= e!82808 tp!73960)))

(declare-fun b!140589 () Bool)

(declare-fun tp!73958 () Bool)

(declare-fun tp!73957 () Bool)

(assert (=> b!140589 (= e!82808 (and tp!73958 tp!73957))))

(assert (= (and b!140334 ((_ is ElementMatch!625) (regex!401 (h!7791 rules!4268)))) b!140586))

(assert (= (and b!140334 ((_ is Concat!1049) (regex!401 (h!7791 rules!4268)))) b!140587))

(assert (= (and b!140334 ((_ is Star!625) (regex!401 (h!7791 rules!4268)))) b!140588))

(assert (= (and b!140334 ((_ is Union!625) (regex!401 (h!7791 rules!4268)))) b!140589))

(declare-fun b!140592 () Bool)

(declare-fun e!82811 () Bool)

(declare-fun tp!73966 () Bool)

(assert (=> b!140592 (= e!82811 (and tp_is_empty!1565 tp!73966))))

(assert (=> b!140340 (= tp!73856 e!82811)))

(assert (= (and b!140340 ((_ is Cons!2392) (originalCharacters!444 (h!7790 l1!3130)))) b!140592))

(declare-fun b!140596 () Bool)

(declare-fun b_free!4557 () Bool)

(declare-fun b_next!4557 () Bool)

(assert (=> b!140596 (= b_free!4557 (not b_next!4557))))

(declare-fun tp!73970 () Bool)

(declare-fun b_and!6977 () Bool)

(assert (=> b!140596 (= tp!73970 b_and!6977)))

(declare-fun b_free!4559 () Bool)

(declare-fun b_next!4559 () Bool)

(assert (=> b!140596 (= b_free!4559 (not b_next!4559))))

(declare-fun t!23392 () Bool)

(declare-fun tb!4069 () Bool)

(assert (=> (and b!140596 (= (toChars!871 (transformation!401 (rule!908 (h!7790 (t!23333 l2!3099))))) (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130))))) t!23392) tb!4069))

(declare-fun result!6278 () Bool)

(assert (= result!6278 result!6230))

(assert (=> b!140464 t!23392))

(declare-fun t!23394 () Bool)

(declare-fun tb!4071 () Bool)

(assert (=> (and b!140596 (= (toChars!871 (transformation!401 (rule!908 (h!7790 (t!23333 l2!3099))))) (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099))))) t!23394) tb!4071))

(declare-fun result!6280 () Bool)

(assert (= result!6280 result!6240))

(assert (=> b!140474 t!23394))

(declare-fun b_and!6979 () Bool)

(declare-fun tp!73971 () Bool)

(assert (=> b!140596 (= tp!73971 (and (=> t!23392 result!6278) (=> t!23394 result!6280) b_and!6979))))

(declare-fun e!82812 () Bool)

(assert (=> b!140324 (= tp!73868 e!82812)))

(declare-fun b!140594 () Bool)

(declare-fun e!82816 () Bool)

(declare-fun e!82817 () Bool)

(declare-fun tp!73975 () Bool)

(assert (=> b!140594 (= e!82816 (and (inv!21 (value!15744 (h!7790 (t!23333 l2!3099)))) e!82817 tp!73975))))

(declare-fun tp!73969 () Bool)

(declare-fun b!140593 () Bool)

(assert (=> b!140593 (= e!82812 (and (inv!3146 (h!7790 (t!23333 l2!3099))) e!82816 tp!73969))))

(declare-fun e!82815 () Bool)

(declare-fun tp!73974 () Bool)

(declare-fun b!140595 () Bool)

(assert (=> b!140595 (= e!82817 (and tp!73974 (inv!3143 (tag!579 (rule!908 (h!7790 (t!23333 l2!3099))))) (inv!3147 (transformation!401 (rule!908 (h!7790 (t!23333 l2!3099))))) e!82815))))

(assert (=> b!140596 (= e!82815 (and tp!73970 tp!73971))))

(assert (= b!140595 b!140596))

(assert (= b!140594 b!140595))

(assert (= b!140593 b!140594))

(assert (= (and b!140324 ((_ is Cons!2393) (t!23333 l2!3099))) b!140593))

(declare-fun m!123847 () Bool)

(assert (=> b!140594 m!123847))

(declare-fun m!123849 () Bool)

(assert (=> b!140593 m!123849))

(declare-fun m!123851 () Bool)

(assert (=> b!140595 m!123851))

(declare-fun m!123853 () Bool)

(assert (=> b!140595 m!123853))

(declare-fun b_lambda!2043 () Bool)

(assert (= b_lambda!2039 (or (and b!140494 b_free!4547 (= (toChars!871 (transformation!401 (h!7791 (t!23334 rules!4268)))) (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099)))))) (and b!140344 b_free!4533 (= (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130)))) (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099)))))) (and b!140596 b_free!4559 (= (toChars!871 (transformation!401 (rule!908 (h!7790 (t!23333 l2!3099))))) (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099)))))) (and b!140341 b_free!4537 (= (toChars!871 (transformation!401 (h!7791 rules!4268))) (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099)))))) (and b!140581 b_free!4555 (= (toChars!871 (transformation!401 (rule!908 (h!7790 (t!23333 l1!3130))))) (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099)))))) (and b!140328 b_free!4543) b_lambda!2043)))

(declare-fun b_lambda!2045 () Bool)

(assert (= b_lambda!2027 (or (and start!14714 b_free!4539) b_lambda!2045)))

(declare-fun b_lambda!2047 () Bool)

(assert (= b_lambda!2023 (or (and start!14714 b_free!4539) b_lambda!2047)))

(declare-fun b_lambda!2049 () Bool)

(assert (= b_lambda!2015 (or (and start!14714 b_free!4539) b_lambda!2049)))

(declare-fun b_lambda!2051 () Bool)

(assert (= b_lambda!2021 (or (and start!14714 b_free!4539) b_lambda!2051)))

(declare-fun b_lambda!2053 () Bool)

(assert (= b_lambda!2035 (or (and b!140341 b_free!4537 (= (toChars!871 (transformation!401 (h!7791 rules!4268))) (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130)))))) (and b!140596 b_free!4559 (= (toChars!871 (transformation!401 (rule!908 (h!7790 (t!23333 l2!3099))))) (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130)))))) (and b!140494 b_free!4547 (= (toChars!871 (transformation!401 (h!7791 (t!23334 rules!4268)))) (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130)))))) (and b!140344 b_free!4533) (and b!140328 b_free!4543 (= (toChars!871 (transformation!401 (rule!908 (h!7790 l2!3099)))) (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130)))))) (and b!140581 b_free!4555 (= (toChars!871 (transformation!401 (rule!908 (h!7790 (t!23333 l1!3130))))) (toChars!871 (transformation!401 (rule!908 (h!7790 l1!3130)))))) b_lambda!2053)))

(declare-fun b_lambda!2055 () Bool)

(assert (= b_lambda!2029 (or (and start!14714 b_free!4539) b_lambda!2055)))

(check-sat (not b!140493) (not b!140465) (not d!33336) (not b_next!4543) (not b!140587) (not b!140456) b_and!6955 (not d!33386) (not b_lambda!2007) (not b!140348) b_and!6939 (not b!140473) (not d!33372) (not b_lambda!2055) (not b_lambda!2045) (not b_lambda!2053) (not b!140542) (not b_next!4541) (not b!140425) (not b!140452) (not b_next!4537) (not b_next!4533) (not b_next!4555) (not b!140399) (not b!140492) (not b!140580) (not b!140588) (not b_next!4559) (not b!140395) b_and!6973 (not b!140592) (not b!140423) b_and!6953 b_and!6965 (not b!140347) (not b!140522) (not b_next!4545) (not b_lambda!2049) b_and!6907 (not b!140594) (not b!140360) (not b_next!4547) (not b_next!4539) b_and!6903 (not tb!4045) (not b!140373) (not b!140595) (not b!140400) (not b!140534) (not b!140478) b_and!6975 (not tb!4037) (not d!33362) (not b!140523) (not b_lambda!2009) (not b!140589) (not b!140540) b_and!6913 (not d!33388) (not b_lambda!2051) (not b!140361) (not b!140579) (not b!140464) b_and!6957 (not b_next!4535) (not b!140474) (not b_next!4553) b_and!6977 (not b!140424) (not b!140432) (not b!140578) (not b_lambda!2043) (not b!140396) (not b!140541) (not b_lambda!2047) (not b_next!4557) b_and!6967 (not d!33346) (not b!140472) tp_is_empty!1565 (not b!140362) (not b!140475) (not d!33352) (not b!140403) b_and!6979 (not b_next!4531) (not d!33320) (not b!140593) (not b!140407) (not b!140419) (not b!140521) (not d!33374) (not b!140421) (not d!33314))
(check-sat (not b_next!4541) (not b_next!4537) b_and!6953 b_and!6965 (not b_next!4545) b_and!6907 b_and!6975 b_and!6913 b_and!6957 (not b_next!4543) b_and!6977 (not b_next!4557) b_and!6967 b_and!6955 b_and!6939 (not b_next!4533) (not b_next!4555) (not b_next!4559) b_and!6973 b_and!6903 (not b_next!4547) (not b_next!4539) (not b_next!4535) (not b_next!4553) b_and!6979 (not b_next!4531))
