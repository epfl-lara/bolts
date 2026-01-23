; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396382 () Bool)

(assert start!396382)

(declare-fun b!4160109 () Bool)

(declare-fun b_free!119663 () Bool)

(declare-fun b_next!120367 () Bool)

(assert (=> b!4160109 (= b_free!119663 (not b_next!120367))))

(declare-fun tp!1269316 () Bool)

(declare-fun b_and!324025 () Bool)

(assert (=> b!4160109 (= tp!1269316 b_and!324025)))

(declare-fun b_free!119665 () Bool)

(declare-fun b_next!120369 () Bool)

(assert (=> b!4160109 (= b_free!119665 (not b_next!120369))))

(declare-fun tp!1269318 () Bool)

(declare-fun b_and!324027 () Bool)

(assert (=> b!4160109 (= tp!1269318 b_and!324027)))

(declare-fun b!4160107 () Bool)

(declare-fun b_free!119667 () Bool)

(declare-fun b_next!120371 () Bool)

(assert (=> b!4160107 (= b_free!119667 (not b_next!120371))))

(declare-fun tp!1269317 () Bool)

(declare-fun b_and!324029 () Bool)

(assert (=> b!4160107 (= tp!1269317 b_and!324029)))

(declare-fun b_free!119669 () Bool)

(declare-fun b_next!120373 () Bool)

(assert (=> b!4160107 (= b_free!119669 (not b_next!120373))))

(declare-fun tp!1269311 () Bool)

(declare-fun b_and!324031 () Bool)

(assert (=> b!4160107 (= tp!1269311 b_and!324031)))

(declare-fun b!4160105 () Bool)

(declare-datatypes ((List!45554 0))(
  ( (Nil!45430) (Cons!45430 (h!50850 (_ BitVec 16)) (t!343585 List!45554)) )
))
(declare-datatypes ((TokenValue!7730 0))(
  ( (FloatLiteralValue!15460 (text!54555 List!45554)) (TokenValueExt!7729 (__x!27679 Int)) (Broken!38650 (value!234298 List!45554)) (Object!7853) (End!7730) (Def!7730) (Underscore!7730) (Match!7730) (Else!7730) (Error!7730) (Case!7730) (If!7730) (Extends!7730) (Abstract!7730) (Class!7730) (Val!7730) (DelimiterValue!15460 (del!7790 List!45554)) (KeywordValue!7736 (value!234299 List!45554)) (CommentValue!15460 (value!234300 List!45554)) (WhitespaceValue!15460 (value!234301 List!45554)) (IndentationValue!7730 (value!234302 List!45554)) (String!52511) (Int32!7730) (Broken!38651 (value!234303 List!45554)) (Boolean!7731) (Unit!64576) (OperatorValue!7733 (op!7790 List!45554)) (IdentifierValue!15460 (value!234304 List!45554)) (IdentifierValue!15461 (value!234305 List!45554)) (WhitespaceValue!15461 (value!234306 List!45554)) (True!15460) (False!15460) (Broken!38652 (value!234307 List!45554)) (Broken!38653 (value!234308 List!45554)) (True!15461) (RightBrace!7730) (RightBracket!7730) (Colon!7730) (Null!7730) (Comma!7730) (LeftBracket!7730) (False!15461) (LeftBrace!7730) (ImaginaryLiteralValue!7730 (text!54556 List!45554)) (StringLiteralValue!23190 (value!234309 List!45554)) (EOFValue!7730 (value!234310 List!45554)) (IdentValue!7730 (value!234311 List!45554)) (DelimiterValue!15461 (value!234312 List!45554)) (DedentValue!7730 (value!234313 List!45554)) (NewLineValue!7730 (value!234314 List!45554)) (IntegerValue!23190 (value!234315 (_ BitVec 32)) (text!54557 List!45554)) (IntegerValue!23191 (value!234316 Int) (text!54558 List!45554)) (Times!7730) (Or!7730) (Equal!7730) (Minus!7730) (Broken!38654 (value!234317 List!45554)) (And!7730) (Div!7730) (LessEqual!7730) (Mod!7730) (Concat!20135) (Not!7730) (Plus!7730) (SpaceValue!7730 (value!234318 List!45554)) (IntegerValue!23192 (value!234319 Int) (text!54559 List!45554)) (StringLiteralValue!23191 (text!54560 List!45554)) (FloatLiteralValue!15461 (text!54561 List!45554)) (BytesLiteralValue!7730 (value!234320 List!45554)) (CommentValue!15461 (value!234321 List!45554)) (StringLiteralValue!23192 (value!234322 List!45554)) (ErrorTokenValue!7730 (msg!7791 List!45554)) )
))
(declare-datatypes ((C!24996 0))(
  ( (C!24997 (val!14660 Int)) )
))
(declare-datatypes ((List!45555 0))(
  ( (Nil!45431) (Cons!45431 (h!50851 C!24996) (t!343586 List!45555)) )
))
(declare-datatypes ((IArray!27427 0))(
  ( (IArray!27428 (innerList!13771 List!45555)) )
))
(declare-datatypes ((Conc!13711 0))(
  ( (Node!13711 (left!33910 Conc!13711) (right!34240 Conc!13711) (csize!27652 Int) (cheight!13922 Int)) (Leaf!21203 (xs!17017 IArray!27427) (csize!27653 Int)) (Empty!13711) )
))
(declare-datatypes ((BalanceConc!27016 0))(
  ( (BalanceConc!27017 (c!711896 Conc!13711)) )
))
(declare-datatypes ((TokenValueInjection!14888 0))(
  ( (TokenValueInjection!14889 (toValue!10164 Int) (toChars!10023 Int)) )
))
(declare-datatypes ((String!52512 0))(
  ( (String!52513 (value!234323 String)) )
))
(declare-datatypes ((Regex!12405 0))(
  ( (ElementMatch!12405 (c!711897 C!24996)) (Concat!20136 (regOne!25322 Regex!12405) (regTwo!25322 Regex!12405)) (EmptyExpr!12405) (Star!12405 (reg!12734 Regex!12405)) (EmptyLang!12405) (Union!12405 (regOne!25323 Regex!12405) (regTwo!25323 Regex!12405)) )
))
(declare-datatypes ((Rule!14800 0))(
  ( (Rule!14801 (regex!7500 Regex!12405) (tag!8364 String!52512) (isSeparator!7500 Bool) (transformation!7500 TokenValueInjection!14888)) )
))
(declare-fun r!4395 () Rule!14800)

(declare-fun e!2581987 () Bool)

(declare-fun tp!1269313 () Bool)

(declare-fun e!2581984 () Bool)

(declare-fun inv!59976 (String!52512) Bool)

(declare-fun inv!59978 (TokenValueInjection!14888) Bool)

(assert (=> b!4160105 (= e!2581984 (and tp!1269313 (inv!59976 (tag!8364 r!4395)) (inv!59978 (transformation!7500 r!4395)) e!2581987))))

(declare-fun e!2581985 () Bool)

(declare-fun b!4160106 () Bool)

(declare-fun tp!1269314 () Bool)

(declare-fun e!2581990 () Bool)

(declare-datatypes ((List!45556 0))(
  ( (Nil!45432) (Cons!45432 (h!50852 Rule!14800) (t!343587 List!45556)) )
))
(declare-fun rules!4132 () List!45556)

(assert (=> b!4160106 (= e!2581990 (and tp!1269314 (inv!59976 (tag!8364 (h!50852 rules!4132))) (inv!59978 (transformation!7500 (h!50852 rules!4132))) e!2581985))))

(assert (=> b!4160107 (= e!2581985 (and tp!1269317 tp!1269311))))

(declare-fun res!1704074 () Bool)

(declare-fun e!2581983 () Bool)

(assert (=> start!396382 (=> (not res!1704074) (not e!2581983))))

(declare-datatypes ((LexerInterface!7091 0))(
  ( (LexerInterfaceExt!7088 (__x!27680 Int)) (Lexer!7089) )
))
(declare-fun thiss!27036 () LexerInterface!7091)

(get-info :version)

(assert (=> start!396382 (= res!1704074 ((_ is Lexer!7089) thiss!27036))))

(assert (=> start!396382 e!2581983))

(declare-fun tag!272 () String!52512)

(assert (=> start!396382 (inv!59976 tag!272)))

(assert (=> start!396382 e!2581984))

(assert (=> start!396382 true))

(declare-fun e!2581991 () Bool)

(assert (=> start!396382 e!2581991))

(declare-fun e!2581992 () Bool)

(assert (=> start!396382 e!2581992))

(declare-fun b!4160108 () Bool)

(declare-fun res!1704072 () Bool)

(assert (=> b!4160108 (=> (not res!1704072) (not e!2581983))))

(declare-fun contains!9278 (List!45556 Rule!14800) Bool)

(assert (=> b!4160108 (= res!1704072 (contains!9278 rules!4132 r!4395))))

(assert (=> b!4160109 (= e!2581987 (and tp!1269316 tp!1269318))))

(declare-fun b!4160110 () Bool)

(declare-fun res!1704073 () Bool)

(assert (=> b!4160110 (=> (not res!1704073) (not e!2581983))))

(declare-datatypes ((List!45557 0))(
  ( (Nil!45433) (Cons!45433 (h!50853 String!52512) (t!343588 List!45557)) )
))
(declare-fun acc!617 () List!45557)

(declare-fun noDuplicateTag!3077 (LexerInterface!7091 List!45556 List!45557) Bool)

(assert (=> b!4160110 (= res!1704073 (noDuplicateTag!3077 thiss!27036 rules!4132 acc!617))))

(declare-fun b!4160111 () Bool)

(declare-fun tp!1269312 () Bool)

(assert (=> b!4160111 (= e!2581992 (and e!2581990 tp!1269312))))

(declare-fun b!4160112 () Bool)

(assert (=> b!4160112 (= e!2581983 ((_ is Nil!45432) rules!4132))))

(declare-fun b!4160113 () Bool)

(declare-fun res!1704071 () Bool)

(assert (=> b!4160113 (=> (not res!1704071) (not e!2581983))))

(declare-fun contains!9279 (List!45557 String!52512) Bool)

(assert (=> b!4160113 (= res!1704071 (contains!9279 acc!617 tag!272))))

(declare-fun b!4160114 () Bool)

(declare-fun tp!1269315 () Bool)

(assert (=> b!4160114 (= e!2581991 (and (inv!59976 (h!50853 acc!617)) tp!1269315))))

(assert (= (and start!396382 res!1704074) b!4160113))

(assert (= (and b!4160113 res!1704071) b!4160110))

(assert (= (and b!4160110 res!1704073) b!4160108))

(assert (= (and b!4160108 res!1704072) b!4160112))

(assert (= b!4160105 b!4160109))

(assert (= start!396382 b!4160105))

(assert (= (and start!396382 ((_ is Cons!45433) acc!617)) b!4160114))

(assert (= b!4160106 b!4160107))

(assert (= b!4160111 b!4160106))

(assert (= (and start!396382 ((_ is Cons!45432) rules!4132)) b!4160111))

(declare-fun m!4753563 () Bool)

(assert (=> b!4160110 m!4753563))

(declare-fun m!4753565 () Bool)

(assert (=> b!4160113 m!4753565))

(declare-fun m!4753567 () Bool)

(assert (=> b!4160108 m!4753567))

(declare-fun m!4753569 () Bool)

(assert (=> b!4160105 m!4753569))

(declare-fun m!4753571 () Bool)

(assert (=> b!4160105 m!4753571))

(declare-fun m!4753573 () Bool)

(assert (=> b!4160114 m!4753573))

(declare-fun m!4753575 () Bool)

(assert (=> start!396382 m!4753575))

(declare-fun m!4753577 () Bool)

(assert (=> b!4160106 m!4753577))

(declare-fun m!4753579 () Bool)

(assert (=> b!4160106 m!4753579))

(check-sat (not b_next!120371) (not b!4160108) (not b!4160105) b_and!324027 b_and!324029 (not b!4160110) (not b!4160114) (not b_next!120369) (not b!4160111) (not start!396382) (not b_next!120373) (not b!4160113) b_and!324025 b_and!324031 (not b!4160106) (not b_next!120367))
(check-sat (not b_next!120371) (not b_next!120367) b_and!324027 b_and!324029 (not b_next!120369) (not b_next!120373) b_and!324025 b_and!324031)
(get-model)

(declare-fun d!1229976 () Bool)

(declare-fun lt!1482797 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7055 (List!45556) (InoxSet Rule!14800))

(assert (=> d!1229976 (= lt!1482797 (select (content!7055 rules!4132) r!4395))))

(declare-fun e!2581997 () Bool)

(assert (=> d!1229976 (= lt!1482797 e!2581997)))

(declare-fun res!1704084 () Bool)

(assert (=> d!1229976 (=> (not res!1704084) (not e!2581997))))

(assert (=> d!1229976 (= res!1704084 ((_ is Cons!45432) rules!4132))))

(assert (=> d!1229976 (= (contains!9278 rules!4132 r!4395) lt!1482797)))

(declare-fun b!4160119 () Bool)

(declare-fun e!2581998 () Bool)

(assert (=> b!4160119 (= e!2581997 e!2581998)))

(declare-fun res!1704083 () Bool)

(assert (=> b!4160119 (=> res!1704083 e!2581998)))

(assert (=> b!4160119 (= res!1704083 (= (h!50852 rules!4132) r!4395))))

(declare-fun b!4160120 () Bool)

(assert (=> b!4160120 (= e!2581998 (contains!9278 (t!343587 rules!4132) r!4395))))

(assert (= (and d!1229976 res!1704084) b!4160119))

(assert (= (and b!4160119 (not res!1704083)) b!4160120))

(declare-fun m!4753581 () Bool)

(assert (=> d!1229976 m!4753581))

(declare-fun m!4753583 () Bool)

(assert (=> d!1229976 m!4753583))

(declare-fun m!4753585 () Bool)

(assert (=> b!4160120 m!4753585))

(assert (=> b!4160108 d!1229976))

(declare-fun d!1229978 () Bool)

(declare-fun lt!1482800 () Bool)

(declare-fun content!7056 (List!45557) (InoxSet String!52512))

(assert (=> d!1229978 (= lt!1482800 (select (content!7056 acc!617) tag!272))))

(declare-fun e!2582003 () Bool)

(assert (=> d!1229978 (= lt!1482800 e!2582003)))

(declare-fun res!1704090 () Bool)

(assert (=> d!1229978 (=> (not res!1704090) (not e!2582003))))

(assert (=> d!1229978 (= res!1704090 ((_ is Cons!45433) acc!617))))

(assert (=> d!1229978 (= (contains!9279 acc!617 tag!272) lt!1482800)))

(declare-fun b!4160125 () Bool)

(declare-fun e!2582004 () Bool)

(assert (=> b!4160125 (= e!2582003 e!2582004)))

(declare-fun res!1704089 () Bool)

(assert (=> b!4160125 (=> res!1704089 e!2582004)))

(assert (=> b!4160125 (= res!1704089 (= (h!50853 acc!617) tag!272))))

(declare-fun b!4160126 () Bool)

(assert (=> b!4160126 (= e!2582004 (contains!9279 (t!343588 acc!617) tag!272))))

(assert (= (and d!1229978 res!1704090) b!4160125))

(assert (= (and b!4160125 (not res!1704089)) b!4160126))

(declare-fun m!4753587 () Bool)

(assert (=> d!1229978 m!4753587))

(declare-fun m!4753589 () Bool)

(assert (=> d!1229978 m!4753589))

(declare-fun m!4753591 () Bool)

(assert (=> b!4160126 m!4753591))

(assert (=> b!4160113 d!1229978))

(declare-fun d!1229984 () Bool)

(assert (=> d!1229984 (= (inv!59976 (tag!8364 (h!50852 rules!4132))) (= (mod (str.len (value!234323 (tag!8364 (h!50852 rules!4132)))) 2) 0))))

(assert (=> b!4160106 d!1229984))

(declare-fun d!1229986 () Bool)

(declare-fun res!1704097 () Bool)

(declare-fun e!2582011 () Bool)

(assert (=> d!1229986 (=> (not res!1704097) (not e!2582011))))

(declare-fun semiInverseModEq!3255 (Int Int) Bool)

(assert (=> d!1229986 (= res!1704097 (semiInverseModEq!3255 (toChars!10023 (transformation!7500 (h!50852 rules!4132))) (toValue!10164 (transformation!7500 (h!50852 rules!4132)))))))

(assert (=> d!1229986 (= (inv!59978 (transformation!7500 (h!50852 rules!4132))) e!2582011)))

(declare-fun b!4160133 () Bool)

(declare-fun equivClasses!3154 (Int Int) Bool)

(assert (=> b!4160133 (= e!2582011 (equivClasses!3154 (toChars!10023 (transformation!7500 (h!50852 rules!4132))) (toValue!10164 (transformation!7500 (h!50852 rules!4132)))))))

(assert (= (and d!1229986 res!1704097) b!4160133))

(declare-fun m!4753601 () Bool)

(assert (=> d!1229986 m!4753601))

(declare-fun m!4753603 () Bool)

(assert (=> b!4160133 m!4753603))

(assert (=> b!4160106 d!1229986))

(declare-fun d!1229994 () Bool)

(assert (=> d!1229994 (= (inv!59976 tag!272) (= (mod (str.len (value!234323 tag!272)) 2) 0))))

(assert (=> start!396382 d!1229994))

(declare-fun d!1229996 () Bool)

(declare-fun res!1704108 () Bool)

(declare-fun e!2582022 () Bool)

(assert (=> d!1229996 (=> res!1704108 e!2582022)))

(assert (=> d!1229996 (= res!1704108 ((_ is Nil!45432) rules!4132))))

(assert (=> d!1229996 (= (noDuplicateTag!3077 thiss!27036 rules!4132 acc!617) e!2582022)))

(declare-fun b!4160144 () Bool)

(declare-fun e!2582023 () Bool)

(assert (=> b!4160144 (= e!2582022 e!2582023)))

(declare-fun res!1704109 () Bool)

(assert (=> b!4160144 (=> (not res!1704109) (not e!2582023))))

(assert (=> b!4160144 (= res!1704109 (not (contains!9279 acc!617 (tag!8364 (h!50852 rules!4132)))))))

(declare-fun b!4160145 () Bool)

(assert (=> b!4160145 (= e!2582023 (noDuplicateTag!3077 thiss!27036 (t!343587 rules!4132) (Cons!45433 (tag!8364 (h!50852 rules!4132)) acc!617)))))

(assert (= (and d!1229996 (not res!1704108)) b!4160144))

(assert (= (and b!4160144 res!1704109) b!4160145))

(declare-fun m!4753611 () Bool)

(assert (=> b!4160144 m!4753611))

(declare-fun m!4753613 () Bool)

(assert (=> b!4160145 m!4753613))

(assert (=> b!4160110 d!1229996))

(declare-fun d!1230004 () Bool)

(assert (=> d!1230004 (= (inv!59976 (tag!8364 r!4395)) (= (mod (str.len (value!234323 (tag!8364 r!4395))) 2) 0))))

(assert (=> b!4160105 d!1230004))

(declare-fun d!1230006 () Bool)

(declare-fun res!1704114 () Bool)

(declare-fun e!2582028 () Bool)

(assert (=> d!1230006 (=> (not res!1704114) (not e!2582028))))

(assert (=> d!1230006 (= res!1704114 (semiInverseModEq!3255 (toChars!10023 (transformation!7500 r!4395)) (toValue!10164 (transformation!7500 r!4395))))))

(assert (=> d!1230006 (= (inv!59978 (transformation!7500 r!4395)) e!2582028)))

(declare-fun b!4160150 () Bool)

(assert (=> b!4160150 (= e!2582028 (equivClasses!3154 (toChars!10023 (transformation!7500 r!4395)) (toValue!10164 (transformation!7500 r!4395))))))

(assert (= (and d!1230006 res!1704114) b!4160150))

(declare-fun m!4753615 () Bool)

(assert (=> d!1230006 m!4753615))

(declare-fun m!4753617 () Bool)

(assert (=> b!4160150 m!4753617))

(assert (=> b!4160105 d!1230006))

(declare-fun d!1230008 () Bool)

(assert (=> d!1230008 (= (inv!59976 (h!50853 acc!617)) (= (mod (str.len (value!234323 (h!50853 acc!617))) 2) 0))))

(assert (=> b!4160114 d!1230008))

(declare-fun b!4160165 () Bool)

(declare-fun e!2582033 () Bool)

(declare-fun tp!1269329 () Bool)

(assert (=> b!4160165 (= e!2582033 tp!1269329)))

(assert (=> b!4160106 (= tp!1269314 e!2582033)))

(declare-fun b!4160166 () Bool)

(declare-fun tp!1269331 () Bool)

(declare-fun tp!1269332 () Bool)

(assert (=> b!4160166 (= e!2582033 (and tp!1269331 tp!1269332))))

(declare-fun b!4160163 () Bool)

(declare-fun tp_is_empty!21779 () Bool)

(assert (=> b!4160163 (= e!2582033 tp_is_empty!21779)))

(declare-fun b!4160164 () Bool)

(declare-fun tp!1269333 () Bool)

(declare-fun tp!1269330 () Bool)

(assert (=> b!4160164 (= e!2582033 (and tp!1269333 tp!1269330))))

(assert (= (and b!4160106 ((_ is ElementMatch!12405) (regex!7500 (h!50852 rules!4132)))) b!4160163))

(assert (= (and b!4160106 ((_ is Concat!20136) (regex!7500 (h!50852 rules!4132)))) b!4160164))

(assert (= (and b!4160106 ((_ is Star!12405) (regex!7500 (h!50852 rules!4132)))) b!4160165))

(assert (= (and b!4160106 ((_ is Union!12405) (regex!7500 (h!50852 rules!4132)))) b!4160166))

(declare-fun b!4160181 () Bool)

(declare-fun b_free!119671 () Bool)

(declare-fun b_next!120375 () Bool)

(assert (=> b!4160181 (= b_free!119671 (not b_next!120375))))

(declare-fun tp!1269344 () Bool)

(declare-fun b_and!324033 () Bool)

(assert (=> b!4160181 (= tp!1269344 b_and!324033)))

(declare-fun b_free!119673 () Bool)

(declare-fun b_next!120377 () Bool)

(assert (=> b!4160181 (= b_free!119673 (not b_next!120377))))

(declare-fun tp!1269345 () Bool)

(declare-fun b_and!324035 () Bool)

(assert (=> b!4160181 (= tp!1269345 b_and!324035)))

(declare-fun e!2582049 () Bool)

(assert (=> b!4160181 (= e!2582049 (and tp!1269344 tp!1269345))))

(declare-fun b!4160180 () Bool)

(declare-fun tp!1269342 () Bool)

(declare-fun e!2582046 () Bool)

(assert (=> b!4160180 (= e!2582046 (and tp!1269342 (inv!59976 (tag!8364 (h!50852 (t!343587 rules!4132)))) (inv!59978 (transformation!7500 (h!50852 (t!343587 rules!4132)))) e!2582049))))

(declare-fun b!4160179 () Bool)

(declare-fun e!2582048 () Bool)

(declare-fun tp!1269343 () Bool)

(assert (=> b!4160179 (= e!2582048 (and e!2582046 tp!1269343))))

(assert (=> b!4160111 (= tp!1269312 e!2582048)))

(assert (= b!4160180 b!4160181))

(assert (= b!4160179 b!4160180))

(assert (= (and b!4160111 ((_ is Cons!45432) (t!343587 rules!4132))) b!4160179))

(declare-fun m!4753623 () Bool)

(assert (=> b!4160180 m!4753623))

(declare-fun m!4753625 () Bool)

(assert (=> b!4160180 m!4753625))

(declare-fun b!4160186 () Bool)

(declare-fun e!2582052 () Bool)

(declare-fun tp!1269346 () Bool)

(assert (=> b!4160186 (= e!2582052 tp!1269346)))

(assert (=> b!4160105 (= tp!1269313 e!2582052)))

(declare-fun b!4160187 () Bool)

(declare-fun tp!1269348 () Bool)

(declare-fun tp!1269349 () Bool)

(assert (=> b!4160187 (= e!2582052 (and tp!1269348 tp!1269349))))

(declare-fun b!4160184 () Bool)

(assert (=> b!4160184 (= e!2582052 tp_is_empty!21779)))

(declare-fun b!4160185 () Bool)

(declare-fun tp!1269350 () Bool)

(declare-fun tp!1269347 () Bool)

(assert (=> b!4160185 (= e!2582052 (and tp!1269350 tp!1269347))))

(assert (= (and b!4160105 ((_ is ElementMatch!12405) (regex!7500 r!4395))) b!4160184))

(assert (= (and b!4160105 ((_ is Concat!20136) (regex!7500 r!4395))) b!4160185))

(assert (= (and b!4160105 ((_ is Star!12405) (regex!7500 r!4395))) b!4160186))

(assert (= (and b!4160105 ((_ is Union!12405) (regex!7500 r!4395))) b!4160187))

(declare-fun b!4160202 () Bool)

(declare-fun e!2582059 () Bool)

(declare-fun tp!1269363 () Bool)

(assert (=> b!4160202 (= e!2582059 (and (inv!59976 (h!50853 (t!343588 acc!617))) tp!1269363))))

(assert (=> b!4160114 (= tp!1269315 e!2582059)))

(assert (= (and b!4160114 ((_ is Cons!45433) (t!343588 acc!617))) b!4160202))

(declare-fun m!4753633 () Bool)

(assert (=> b!4160202 m!4753633))

(check-sat (not b_next!120367) (not b!4160126) (not b!4160180) (not b!4160144) b_and!324027 b_and!324029 (not b!4160179) b_and!324033 (not b_next!120377) tp_is_empty!21779 (not b_next!120369) (not d!1229978) (not b!4160150) (not b!4160185) b_and!324035 (not b_next!120371) (not b!4160187) (not d!1230006) (not d!1229986) (not b_next!120373) (not d!1229976) (not b!4160166) (not b!4160145) (not b!4160186) (not b!4160133) (not b_next!120375) (not b!4160165) (not b!4160202) b_and!324025 (not b!4160164) (not b!4160120) b_and!324031)
(check-sat b_and!324035 (not b_next!120371) (not b_next!120367) b_and!324027 b_and!324029 b_and!324033 (not b_next!120377) (not b_next!120369) (not b_next!120373) (not b_next!120375) b_and!324025 b_and!324031)
