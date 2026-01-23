; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389962 () Bool)

(assert start!389962)

(declare-fun b!4115006 () Bool)

(declare-fun b_free!115915 () Bool)

(declare-fun b_next!116619 () Bool)

(assert (=> b!4115006 (= b_free!115915 (not b_next!116619))))

(declare-fun tp!1253168 () Bool)

(declare-fun b_and!317801 () Bool)

(assert (=> b!4115006 (= tp!1253168 b_and!317801)))

(declare-fun b_free!115917 () Bool)

(declare-fun b_next!116621 () Bool)

(assert (=> b!4115006 (= b_free!115917 (not b_next!116621))))

(declare-fun tp!1253166 () Bool)

(declare-fun b_and!317803 () Bool)

(assert (=> b!4115006 (= tp!1253166 b_and!317803)))

(declare-fun b!4115004 () Bool)

(declare-fun res!1680744 () Bool)

(declare-fun e!2553184 () Bool)

(assert (=> b!4115004 (=> (not res!1680744) (not e!2553184))))

(declare-datatypes ((List!44536 0))(
  ( (Nil!44412) (Cons!44412 (h!49832 (_ BitVec 16)) (t!340287 List!44536)) )
))
(declare-datatypes ((TokenValue!7464 0))(
  ( (FloatLiteralValue!14928 (text!52693 List!44536)) (TokenValueExt!7463 (__x!27145 Int)) (Broken!37320 (value!226708 List!44536)) (Object!7587) (End!7464) (Def!7464) (Underscore!7464) (Match!7464) (Else!7464) (Error!7464) (Case!7464) (If!7464) (Extends!7464) (Abstract!7464) (Class!7464) (Val!7464) (DelimiterValue!14928 (del!7524 List!44536)) (KeywordValue!7470 (value!226709 List!44536)) (CommentValue!14928 (value!226710 List!44536)) (WhitespaceValue!14928 (value!226711 List!44536)) (IndentationValue!7464 (value!226712 List!44536)) (String!51069) (Int32!7464) (Broken!37321 (value!226713 List!44536)) (Boolean!7465) (Unit!63780) (OperatorValue!7467 (op!7524 List!44536)) (IdentifierValue!14928 (value!226714 List!44536)) (IdentifierValue!14929 (value!226715 List!44536)) (WhitespaceValue!14929 (value!226716 List!44536)) (True!14928) (False!14928) (Broken!37322 (value!226717 List!44536)) (Broken!37323 (value!226718 List!44536)) (True!14929) (RightBrace!7464) (RightBracket!7464) (Colon!7464) (Null!7464) (Comma!7464) (LeftBracket!7464) (False!14929) (LeftBrace!7464) (ImaginaryLiteralValue!7464 (text!52694 List!44536)) (StringLiteralValue!22392 (value!226719 List!44536)) (EOFValue!7464 (value!226720 List!44536)) (IdentValue!7464 (value!226721 List!44536)) (DelimiterValue!14929 (value!226722 List!44536)) (DedentValue!7464 (value!226723 List!44536)) (NewLineValue!7464 (value!226724 List!44536)) (IntegerValue!22392 (value!226725 (_ BitVec 32)) (text!52695 List!44536)) (IntegerValue!22393 (value!226726 Int) (text!52696 List!44536)) (Times!7464) (Or!7464) (Equal!7464) (Minus!7464) (Broken!37324 (value!226727 List!44536)) (And!7464) (Div!7464) (LessEqual!7464) (Mod!7464) (Concat!19603) (Not!7464) (Plus!7464) (SpaceValue!7464 (value!226728 List!44536)) (IntegerValue!22394 (value!226729 Int) (text!52697 List!44536)) (StringLiteralValue!22393 (text!52698 List!44536)) (FloatLiteralValue!14929 (text!52699 List!44536)) (BytesLiteralValue!7464 (value!226730 List!44536)) (CommentValue!14929 (value!226731 List!44536)) (StringLiteralValue!22394 (value!226732 List!44536)) (ErrorTokenValue!7464 (msg!7525 List!44536)) )
))
(declare-datatypes ((C!24464 0))(
  ( (C!24465 (val!14342 Int)) )
))
(declare-datatypes ((List!44537 0))(
  ( (Nil!44413) (Cons!44413 (h!49833 C!24464) (t!340288 List!44537)) )
))
(declare-datatypes ((IArray!26895 0))(
  ( (IArray!26896 (innerList!13505 List!44537)) )
))
(declare-datatypes ((Conc!13445 0))(
  ( (Node!13445 (left!33284 Conc!13445) (right!33614 Conc!13445) (csize!27120 Int) (cheight!13656 Int)) (Leaf!20777 (xs!16751 IArray!26895) (csize!27121 Int)) (Empty!13445) )
))
(declare-datatypes ((BalanceConc!26484 0))(
  ( (BalanceConc!26485 (c!707050 Conc!13445)) )
))
(declare-datatypes ((TokenValueInjection!14356 0))(
  ( (TokenValueInjection!14357 (toValue!9878 Int) (toChars!9737 Int)) )
))
(declare-datatypes ((Regex!12139 0))(
  ( (ElementMatch!12139 (c!707051 C!24464)) (Concat!19604 (regOne!24790 Regex!12139) (regTwo!24790 Regex!12139)) (EmptyExpr!12139) (Star!12139 (reg!12468 Regex!12139)) (EmptyLang!12139) (Union!12139 (regOne!24791 Regex!12139) (regTwo!24791 Regex!12139)) )
))
(declare-datatypes ((String!51070 0))(
  ( (String!51071 (value!226733 String)) )
))
(declare-datatypes ((Rule!14268 0))(
  ( (Rule!14269 (regex!7234 Regex!12139) (tag!8094 String!51070) (isSeparator!7234 Bool) (transformation!7234 TokenValueInjection!14356)) )
))
(declare-datatypes ((List!44538 0))(
  ( (Nil!44414) (Cons!44414 (h!49834 Rule!14268) (t!340289 List!44538)) )
))
(declare-fun l!6467 () List!44538)

(declare-datatypes ((LexerInterface!6823 0))(
  ( (LexerInterfaceExt!6820 (__x!27146 Int)) (Lexer!6821) )
))
(declare-fun thiss!26911 () LexerInterface!6823)

(declare-datatypes ((List!44539 0))(
  ( (Nil!44415) (Cons!44415 (h!49835 String!51070) (t!340290 List!44539)) )
))
(declare-fun acc!555 () List!44539)

(declare-fun noDuplicateTag!2911 (LexerInterface!6823 List!44538 List!44539) Bool)

(assert (=> b!4115004 (= res!1680744 (noDuplicateTag!2911 thiss!26911 l!6467 acc!555))))

(declare-fun res!1680742 () Bool)

(assert (=> start!389962 (=> (not res!1680742) (not e!2553184))))

(get-info :version)

(assert (=> start!389962 (= res!1680742 ((_ is Lexer!6821) thiss!26911))))

(assert (=> start!389962 e!2553184))

(assert (=> start!389962 true))

(declare-fun e!2553176 () Bool)

(assert (=> start!389962 e!2553176))

(declare-fun e!2553182 () Bool)

(assert (=> start!389962 e!2553182))

(declare-fun e!2553181 () Bool)

(assert (=> start!389962 e!2553181))

(declare-fun e!2553180 () Bool)

(declare-fun b!4115005 () Bool)

(declare-fun tp!1253164 () Bool)

(declare-fun e!2553179 () Bool)

(declare-fun inv!58994 (String!51070) Bool)

(declare-fun inv!58996 (TokenValueInjection!14356) Bool)

(assert (=> b!4115005 (= e!2553179 (and tp!1253164 (inv!58994 (tag!8094 (h!49834 l!6467))) (inv!58996 (transformation!7234 (h!49834 l!6467))) e!2553180))))

(assert (=> b!4115006 (= e!2553180 (and tp!1253168 tp!1253166))))

(declare-fun b!4115007 () Bool)

(declare-fun tp!1253165 () Bool)

(assert (=> b!4115007 (= e!2553182 (and (inv!58994 (h!49835 acc!555)) tp!1253165))))

(declare-fun b!4115008 () Bool)

(declare-fun tp!1253163 () Bool)

(assert (=> b!4115008 (= e!2553176 (and e!2553179 tp!1253163))))

(declare-fun b!4115009 () Bool)

(declare-fun res!1680743 () Bool)

(assert (=> b!4115009 (=> (not res!1680743) (not e!2553184))))

(declare-fun newAcc!81 () List!44539)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6852 (List!44539) (InoxSet String!51070))

(assert (=> b!4115009 (= res!1680743 (= (content!6852 acc!555) (content!6852 newAcc!81)))))

(declare-fun b!4115010 () Bool)

(assert (=> b!4115010 (= e!2553184 (not (noDuplicateTag!2911 thiss!26911 l!6467 newAcc!81)))))

(declare-fun b!4115011 () Bool)

(declare-fun res!1680745 () Bool)

(assert (=> b!4115011 (=> (not res!1680745) (not e!2553184))))

(assert (=> b!4115011 (= res!1680745 (not ((_ is Cons!44414) l!6467)))))

(declare-fun b!4115012 () Bool)

(declare-fun tp!1253167 () Bool)

(assert (=> b!4115012 (= e!2553181 (and (inv!58994 (h!49835 newAcc!81)) tp!1253167))))

(assert (= (and start!389962 res!1680742) b!4115004))

(assert (= (and b!4115004 res!1680744) b!4115009))

(assert (= (and b!4115009 res!1680743) b!4115011))

(assert (= (and b!4115011 res!1680745) b!4115010))

(assert (= b!4115005 b!4115006))

(assert (= b!4115008 b!4115005))

(assert (= (and start!389962 ((_ is Cons!44414) l!6467)) b!4115008))

(assert (= (and start!389962 ((_ is Cons!44415) acc!555)) b!4115007))

(assert (= (and start!389962 ((_ is Cons!44415) newAcc!81)) b!4115012))

(declare-fun m!4715277 () Bool)

(assert (=> b!4115004 m!4715277))

(declare-fun m!4715279 () Bool)

(assert (=> b!4115005 m!4715279))

(declare-fun m!4715281 () Bool)

(assert (=> b!4115005 m!4715281))

(declare-fun m!4715283 () Bool)

(assert (=> b!4115012 m!4715283))

(declare-fun m!4715285 () Bool)

(assert (=> b!4115007 m!4715285))

(declare-fun m!4715287 () Bool)

(assert (=> b!4115009 m!4715287))

(declare-fun m!4715289 () Bool)

(assert (=> b!4115009 m!4715289))

(declare-fun m!4715291 () Bool)

(assert (=> b!4115010 m!4715291))

(check-sat (not b!4115012) b_and!317803 (not b!4115008) (not b!4115009) (not b!4115005) (not b!4115010) (not b_next!116621) (not b_next!116619) b_and!317801 (not b!4115004) (not b!4115007))
(check-sat b_and!317803 b_and!317801 (not b_next!116621) (not b_next!116619))
(get-model)

(declare-fun d!1220576 () Bool)

(assert (=> d!1220576 (= (inv!58994 (h!49835 acc!555)) (= (mod (str.len (value!226733 (h!49835 acc!555))) 2) 0))))

(assert (=> b!4115007 d!1220576))

(declare-fun d!1220578 () Bool)

(assert (=> d!1220578 (= (inv!58994 (h!49835 newAcc!81)) (= (mod (str.len (value!226733 (h!49835 newAcc!81))) 2) 0))))

(assert (=> b!4115012 d!1220578))

(declare-fun d!1220580 () Bool)

(declare-fun res!1680750 () Bool)

(declare-fun e!2553189 () Bool)

(assert (=> d!1220580 (=> res!1680750 e!2553189)))

(assert (=> d!1220580 (= res!1680750 ((_ is Nil!44414) l!6467))))

(assert (=> d!1220580 (= (noDuplicateTag!2911 thiss!26911 l!6467 newAcc!81) e!2553189)))

(declare-fun b!4115017 () Bool)

(declare-fun e!2553190 () Bool)

(assert (=> b!4115017 (= e!2553189 e!2553190)))

(declare-fun res!1680751 () Bool)

(assert (=> b!4115017 (=> (not res!1680751) (not e!2553190))))

(declare-fun contains!8901 (List!44539 String!51070) Bool)

(assert (=> b!4115017 (= res!1680751 (not (contains!8901 newAcc!81 (tag!8094 (h!49834 l!6467)))))))

(declare-fun b!4115018 () Bool)

(assert (=> b!4115018 (= e!2553190 (noDuplicateTag!2911 thiss!26911 (t!340289 l!6467) (Cons!44415 (tag!8094 (h!49834 l!6467)) newAcc!81)))))

(assert (= (and d!1220580 (not res!1680750)) b!4115017))

(assert (= (and b!4115017 res!1680751) b!4115018))

(declare-fun m!4715293 () Bool)

(assert (=> b!4115017 m!4715293))

(declare-fun m!4715295 () Bool)

(assert (=> b!4115018 m!4715295))

(assert (=> b!4115010 d!1220580))

(declare-fun d!1220582 () Bool)

(assert (=> d!1220582 (= (inv!58994 (tag!8094 (h!49834 l!6467))) (= (mod (str.len (value!226733 (tag!8094 (h!49834 l!6467)))) 2) 0))))

(assert (=> b!4115005 d!1220582))

(declare-fun d!1220584 () Bool)

(declare-fun res!1680754 () Bool)

(declare-fun e!2553193 () Bool)

(assert (=> d!1220584 (=> (not res!1680754) (not e!2553193))))

(declare-fun semiInverseModEq!3119 (Int Int) Bool)

(assert (=> d!1220584 (= res!1680754 (semiInverseModEq!3119 (toChars!9737 (transformation!7234 (h!49834 l!6467))) (toValue!9878 (transformation!7234 (h!49834 l!6467)))))))

(assert (=> d!1220584 (= (inv!58996 (transformation!7234 (h!49834 l!6467))) e!2553193)))

(declare-fun b!4115021 () Bool)

(declare-fun equivClasses!3018 (Int Int) Bool)

(assert (=> b!4115021 (= e!2553193 (equivClasses!3018 (toChars!9737 (transformation!7234 (h!49834 l!6467))) (toValue!9878 (transformation!7234 (h!49834 l!6467)))))))

(assert (= (and d!1220584 res!1680754) b!4115021))

(declare-fun m!4715297 () Bool)

(assert (=> d!1220584 m!4715297))

(declare-fun m!4715299 () Bool)

(assert (=> b!4115021 m!4715299))

(assert (=> b!4115005 d!1220584))

(declare-fun d!1220588 () Bool)

(declare-fun res!1680755 () Bool)

(declare-fun e!2553194 () Bool)

(assert (=> d!1220588 (=> res!1680755 e!2553194)))

(assert (=> d!1220588 (= res!1680755 ((_ is Nil!44414) l!6467))))

(assert (=> d!1220588 (= (noDuplicateTag!2911 thiss!26911 l!6467 acc!555) e!2553194)))

(declare-fun b!4115022 () Bool)

(declare-fun e!2553195 () Bool)

(assert (=> b!4115022 (= e!2553194 e!2553195)))

(declare-fun res!1680756 () Bool)

(assert (=> b!4115022 (=> (not res!1680756) (not e!2553195))))

(assert (=> b!4115022 (= res!1680756 (not (contains!8901 acc!555 (tag!8094 (h!49834 l!6467)))))))

(declare-fun b!4115023 () Bool)

(assert (=> b!4115023 (= e!2553195 (noDuplicateTag!2911 thiss!26911 (t!340289 l!6467) (Cons!44415 (tag!8094 (h!49834 l!6467)) acc!555)))))

(assert (= (and d!1220588 (not res!1680755)) b!4115022))

(assert (= (and b!4115022 res!1680756) b!4115023))

(declare-fun m!4715301 () Bool)

(assert (=> b!4115022 m!4715301))

(declare-fun m!4715303 () Bool)

(assert (=> b!4115023 m!4715303))

(assert (=> b!4115004 d!1220588))

(declare-fun d!1220592 () Bool)

(declare-fun c!707054 () Bool)

(assert (=> d!1220592 (= c!707054 ((_ is Nil!44415) acc!555))))

(declare-fun e!2553198 () (InoxSet String!51070))

(assert (=> d!1220592 (= (content!6852 acc!555) e!2553198)))

(declare-fun b!4115028 () Bool)

(assert (=> b!4115028 (= e!2553198 ((as const (Array String!51070 Bool)) false))))

(declare-fun b!4115029 () Bool)

(assert (=> b!4115029 (= e!2553198 ((_ map or) (store ((as const (Array String!51070 Bool)) false) (h!49835 acc!555) true) (content!6852 (t!340290 acc!555))))))

(assert (= (and d!1220592 c!707054) b!4115028))

(assert (= (and d!1220592 (not c!707054)) b!4115029))

(declare-fun m!4715305 () Bool)

(assert (=> b!4115029 m!4715305))

(declare-fun m!4715307 () Bool)

(assert (=> b!4115029 m!4715307))

(assert (=> b!4115009 d!1220592))

(declare-fun d!1220594 () Bool)

(declare-fun c!707055 () Bool)

(assert (=> d!1220594 (= c!707055 ((_ is Nil!44415) newAcc!81))))

(declare-fun e!2553199 () (InoxSet String!51070))

(assert (=> d!1220594 (= (content!6852 newAcc!81) e!2553199)))

(declare-fun b!4115030 () Bool)

(assert (=> b!4115030 (= e!2553199 ((as const (Array String!51070 Bool)) false))))

(declare-fun b!4115031 () Bool)

(assert (=> b!4115031 (= e!2553199 ((_ map or) (store ((as const (Array String!51070 Bool)) false) (h!49835 newAcc!81) true) (content!6852 (t!340290 newAcc!81))))))

(assert (= (and d!1220594 c!707055) b!4115030))

(assert (= (and d!1220594 (not c!707055)) b!4115031))

(declare-fun m!4715309 () Bool)

(assert (=> b!4115031 m!4715309))

(declare-fun m!4715311 () Bool)

(assert (=> b!4115031 m!4715311))

(assert (=> b!4115009 d!1220594))

(declare-fun b!4115036 () Bool)

(declare-fun e!2553204 () Bool)

(declare-fun tp!1253171 () Bool)

(assert (=> b!4115036 (= e!2553204 (and (inv!58994 (h!49835 (t!340290 acc!555))) tp!1253171))))

(assert (=> b!4115007 (= tp!1253165 e!2553204)))

(assert (= (and b!4115007 ((_ is Cons!44415) (t!340290 acc!555))) b!4115036))

(declare-fun m!4715313 () Bool)

(assert (=> b!4115036 m!4715313))

(declare-fun b!4115050 () Bool)

(declare-fun b_free!115919 () Bool)

(declare-fun b_next!116623 () Bool)

(assert (=> b!4115050 (= b_free!115919 (not b_next!116623))))

(declare-fun tp!1253180 () Bool)

(declare-fun b_and!317805 () Bool)

(assert (=> b!4115050 (= tp!1253180 b_and!317805)))

(declare-fun b_free!115921 () Bool)

(declare-fun b_next!116625 () Bool)

(assert (=> b!4115050 (= b_free!115921 (not b_next!116625))))

(declare-fun tp!1253182 () Bool)

(declare-fun b_and!317807 () Bool)

(assert (=> b!4115050 (= tp!1253182 b_and!317807)))

(declare-fun e!2553220 () Bool)

(assert (=> b!4115050 (= e!2553220 (and tp!1253180 tp!1253182))))

(declare-fun tp!1253181 () Bool)

(declare-fun b!4115049 () Bool)

(declare-fun e!2553219 () Bool)

(assert (=> b!4115049 (= e!2553219 (and tp!1253181 (inv!58994 (tag!8094 (h!49834 (t!340289 l!6467)))) (inv!58996 (transformation!7234 (h!49834 (t!340289 l!6467)))) e!2553220))))

(declare-fun b!4115048 () Bool)

(declare-fun e!2553218 () Bool)

(declare-fun tp!1253183 () Bool)

(assert (=> b!4115048 (= e!2553218 (and e!2553219 tp!1253183))))

(assert (=> b!4115008 (= tp!1253163 e!2553218)))

(assert (= b!4115049 b!4115050))

(assert (= b!4115048 b!4115049))

(assert (= (and b!4115008 ((_ is Cons!44414) (t!340289 l!6467))) b!4115048))

(declare-fun m!4715319 () Bool)

(assert (=> b!4115049 m!4715319))

(declare-fun m!4715321 () Bool)

(assert (=> b!4115049 m!4715321))

(declare-fun b!4115055 () Bool)

(declare-fun e!2553223 () Bool)

(declare-fun tp!1253184 () Bool)

(assert (=> b!4115055 (= e!2553223 (and (inv!58994 (h!49835 (t!340290 newAcc!81))) tp!1253184))))

(assert (=> b!4115012 (= tp!1253167 e!2553223)))

(assert (= (and b!4115012 ((_ is Cons!44415) (t!340290 newAcc!81))) b!4115055))

(declare-fun m!4715323 () Bool)

(assert (=> b!4115055 m!4715323))

(declare-fun b!4115068 () Bool)

(declare-fun e!2553228 () Bool)

(declare-fun tp_is_empty!21199 () Bool)

(assert (=> b!4115068 (= e!2553228 tp_is_empty!21199)))

(declare-fun b!4115070 () Bool)

(declare-fun tp!1253198 () Bool)

(assert (=> b!4115070 (= e!2553228 tp!1253198)))

(declare-fun b!4115069 () Bool)

(declare-fun tp!1253195 () Bool)

(declare-fun tp!1253199 () Bool)

(assert (=> b!4115069 (= e!2553228 (and tp!1253195 tp!1253199))))

(declare-fun b!4115071 () Bool)

(declare-fun tp!1253196 () Bool)

(declare-fun tp!1253197 () Bool)

(assert (=> b!4115071 (= e!2553228 (and tp!1253196 tp!1253197))))

(assert (=> b!4115005 (= tp!1253164 e!2553228)))

(assert (= (and b!4115005 ((_ is ElementMatch!12139) (regex!7234 (h!49834 l!6467)))) b!4115068))

(assert (= (and b!4115005 ((_ is Concat!19604) (regex!7234 (h!49834 l!6467)))) b!4115069))

(assert (= (and b!4115005 ((_ is Star!12139) (regex!7234 (h!49834 l!6467)))) b!4115070))

(assert (= (and b!4115005 ((_ is Union!12139) (regex!7234 (h!49834 l!6467)))) b!4115071))

(check-sat (not b!4115049) (not b!4115036) (not b!4115070) (not b!4115071) (not b!4115017) (not b!4115048) b_and!317807 (not b!4115031) (not b_next!116619) (not b!4115023) (not b!4115022) b_and!317801 (not d!1220584) (not b!4115021) b_and!317803 (not b_next!116623) (not b!4115018) (not b!4115069) (not b_next!116621) tp_is_empty!21199 b_and!317805 (not b!4115029) (not b_next!116625) (not b!4115055))
(check-sat b_and!317807 (not b_next!116625) (not b_next!116619) b_and!317801 b_and!317803 (not b_next!116623) (not b_next!116621) b_and!317805)
