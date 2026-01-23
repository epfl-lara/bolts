; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351806 () Bool)

(assert start!351806)

(declare-fun b!3747366 () Bool)

(declare-fun b_free!99929 () Bool)

(declare-fun b_next!100633 () Bool)

(assert (=> b!3747366 (= b_free!99929 (not b_next!100633))))

(declare-fun tp!1143379 () Bool)

(declare-fun b_and!278163 () Bool)

(assert (=> b!3747366 (= tp!1143379 b_and!278163)))

(declare-fun b_free!99931 () Bool)

(declare-fun b_next!100635 () Bool)

(assert (=> b!3747366 (= b_free!99931 (not b_next!100635))))

(declare-fun tp!1143385 () Bool)

(declare-fun b_and!278165 () Bool)

(assert (=> b!3747366 (= tp!1143385 b_and!278165)))

(declare-fun b!3747365 () Bool)

(declare-fun b_free!99933 () Bool)

(declare-fun b_next!100637 () Bool)

(assert (=> b!3747365 (= b_free!99933 (not b_next!100637))))

(declare-fun tp!1143384 () Bool)

(declare-fun b_and!278167 () Bool)

(assert (=> b!3747365 (= tp!1143384 b_and!278167)))

(declare-fun b_free!99935 () Bool)

(declare-fun b_next!100639 () Bool)

(assert (=> b!3747365 (= b_free!99935 (not b_next!100639))))

(declare-fun tp!1143386 () Bool)

(declare-fun b_and!278169 () Bool)

(assert (=> b!3747365 (= tp!1143386 b_and!278169)))

(declare-fun b!3747361 () Bool)

(declare-fun b_free!99937 () Bool)

(declare-fun b_next!100641 () Bool)

(assert (=> b!3747361 (= b_free!99937 (not b_next!100641))))

(declare-fun tp!1143383 () Bool)

(declare-fun b_and!278171 () Bool)

(assert (=> b!3747361 (= tp!1143383 b_and!278171)))

(declare-fun b_free!99939 () Bool)

(declare-fun b_next!100643 () Bool)

(assert (=> b!3747361 (= b_free!99939 (not b_next!100643))))

(declare-fun tp!1143380 () Bool)

(declare-fun b_and!278173 () Bool)

(assert (=> b!3747361 (= tp!1143380 b_and!278173)))

(declare-fun b!3747358 () Bool)

(declare-datatypes ((List!39982 0))(
  ( (Nil!39858) (Cons!39858 (h!45278 (_ BitVec 16)) (t!302665 List!39982)) )
))
(declare-datatypes ((TokenValue!6316 0))(
  ( (FloatLiteralValue!12632 (text!44657 List!39982)) (TokenValueExt!6315 (__x!24849 Int)) (Broken!31580 (value!193997 List!39982)) (Object!6439) (End!6316) (Def!6316) (Underscore!6316) (Match!6316) (Else!6316) (Error!6316) (Case!6316) (If!6316) (Extends!6316) (Abstract!6316) (Class!6316) (Val!6316) (DelimiterValue!12632 (del!6376 List!39982)) (KeywordValue!6322 (value!193998 List!39982)) (CommentValue!12632 (value!193999 List!39982)) (WhitespaceValue!12632 (value!194000 List!39982)) (IndentationValue!6316 (value!194001 List!39982)) (String!45205) (Int32!6316) (Broken!31581 (value!194002 List!39982)) (Boolean!6317) (Unit!57681) (OperatorValue!6319 (op!6376 List!39982)) (IdentifierValue!12632 (value!194003 List!39982)) (IdentifierValue!12633 (value!194004 List!39982)) (WhitespaceValue!12633 (value!194005 List!39982)) (True!12632) (False!12632) (Broken!31582 (value!194006 List!39982)) (Broken!31583 (value!194007 List!39982)) (True!12633) (RightBrace!6316) (RightBracket!6316) (Colon!6316) (Null!6316) (Comma!6316) (LeftBracket!6316) (False!12633) (LeftBrace!6316) (ImaginaryLiteralValue!6316 (text!44658 List!39982)) (StringLiteralValue!18948 (value!194008 List!39982)) (EOFValue!6316 (value!194009 List!39982)) (IdentValue!6316 (value!194010 List!39982)) (DelimiterValue!12633 (value!194011 List!39982)) (DedentValue!6316 (value!194012 List!39982)) (NewLineValue!6316 (value!194013 List!39982)) (IntegerValue!18948 (value!194014 (_ BitVec 32)) (text!44659 List!39982)) (IntegerValue!18949 (value!194015 Int) (text!44660 List!39982)) (Times!6316) (Or!6316) (Equal!6316) (Minus!6316) (Broken!31584 (value!194016 List!39982)) (And!6316) (Div!6316) (LessEqual!6316) (Mod!6316) (Concat!17307) (Not!6316) (Plus!6316) (SpaceValue!6316 (value!194017 List!39982)) (IntegerValue!18950 (value!194018 Int) (text!44661 List!39982)) (StringLiteralValue!18949 (text!44662 List!39982)) (FloatLiteralValue!12633 (text!44663 List!39982)) (BytesLiteralValue!6316 (value!194019 List!39982)) (CommentValue!12633 (value!194020 List!39982)) (StringLiteralValue!18950 (value!194021 List!39982)) (ErrorTokenValue!6316 (msg!6377 List!39982)) )
))
(declare-datatypes ((C!22168 0))(
  ( (C!22169 (val!13132 Int)) )
))
(declare-datatypes ((List!39983 0))(
  ( (Nil!39859) (Cons!39859 (h!45279 C!22168) (t!302666 List!39983)) )
))
(declare-datatypes ((IArray!24371 0))(
  ( (IArray!24372 (innerList!12243 List!39983)) )
))
(declare-datatypes ((Conc!12183 0))(
  ( (Node!12183 (left!30865 Conc!12183) (right!31195 Conc!12183) (csize!24596 Int) (cheight!12394 Int)) (Leaf!18910 (xs!15385 IArray!24371) (csize!24597 Int)) (Empty!12183) )
))
(declare-datatypes ((BalanceConc!23980 0))(
  ( (BalanceConc!23981 (c!648920 Conc!12183)) )
))
(declare-datatypes ((TokenValueInjection!12060 0))(
  ( (TokenValueInjection!12061 (toValue!8434 Int) (toChars!8293 Int)) )
))
(declare-datatypes ((Regex!10991 0))(
  ( (ElementMatch!10991 (c!648921 C!22168)) (Concat!17308 (regOne!22494 Regex!10991) (regTwo!22494 Regex!10991)) (EmptyExpr!10991) (Star!10991 (reg!11320 Regex!10991)) (EmptyLang!10991) (Union!10991 (regOne!22495 Regex!10991) (regTwo!22495 Regex!10991)) )
))
(declare-datatypes ((String!45206 0))(
  ( (String!45207 (value!194022 String)) )
))
(declare-datatypes ((Rule!11972 0))(
  ( (Rule!11973 (regex!6086 Regex!10991) (tag!6946 String!45206) (isSeparator!6086 Bool) (transformation!6086 TokenValueInjection!12060)) )
))
(declare-datatypes ((List!39984 0))(
  ( (Nil!39860) (Cons!39860 (h!45280 Rule!11972) (t!302667 List!39984)) )
))
(declare-fun rules!4213 () List!39984)

(declare-fun e!2317320 () Bool)

(declare-fun e!2317321 () Bool)

(declare-fun tp!1143387 () Bool)

(declare-fun inv!53372 (String!45206) Bool)

(declare-fun inv!53374 (TokenValueInjection!12060) Bool)

(assert (=> b!3747358 (= e!2317321 (and tp!1143387 (inv!53372 (tag!6946 (h!45280 rules!4213))) (inv!53374 (transformation!6086 (h!45280 rules!4213))) e!2317320))))

(declare-fun rNSep!170 () Rule!11972)

(declare-fun e!2317322 () Bool)

(declare-fun tp!1143381 () Bool)

(declare-fun e!2317317 () Bool)

(declare-fun b!3747359 () Bool)

(assert (=> b!3747359 (= e!2317317 (and tp!1143381 (inv!53372 (tag!6946 rNSep!170)) (inv!53374 (transformation!6086 rNSep!170)) e!2317322))))

(declare-fun e!2317316 () Bool)

(declare-fun e!2317315 () Bool)

(declare-fun tp!1143388 () Bool)

(declare-fun b!3747360 () Bool)

(declare-fun rSep!170 () Rule!11972)

(assert (=> b!3747360 (= e!2317316 (and tp!1143388 (inv!53372 (tag!6946 rSep!170)) (inv!53374 (transformation!6086 rSep!170)) e!2317315))))

(assert (=> b!3747361 (= e!2317322 (and tp!1143383 tp!1143380))))

(declare-fun b!3747362 () Bool)

(declare-fun e!2317319 () Bool)

(declare-fun ruleDisjointCharsFromAllFromOtherType!959 (Rule!11972 List!39984) Bool)

(assert (=> b!3747362 (= e!2317319 (ruleDisjointCharsFromAllFromOtherType!959 rNSep!170 (t!302667 rules!4213)))))

(declare-fun b!3747363 () Bool)

(declare-fun e!2317313 () Bool)

(declare-fun tp!1143382 () Bool)

(assert (=> b!3747363 (= e!2317313 (and e!2317321 tp!1143382))))

(declare-fun b!3747364 () Bool)

(declare-fun res!1518965 () Bool)

(declare-fun e!2317314 () Bool)

(assert (=> b!3747364 (=> (not res!1518965) (not e!2317314))))

(get-info :version)

(assert (=> b!3747364 (= res!1518965 (and (or (not ((_ is Cons!39860) rules!4213)) (not (= (h!45280 rules!4213) rSep!170))) ((_ is Cons!39860) rules!4213)))))

(assert (=> b!3747365 (= e!2317315 (and tp!1143384 tp!1143386))))

(assert (=> b!3747366 (= e!2317320 (and tp!1143379 tp!1143385))))

(declare-fun b!3747368 () Bool)

(declare-fun res!1518968 () Bool)

(assert (=> b!3747368 (=> (not res!1518968) (not e!2317314))))

(assert (=> b!3747368 (= res!1518968 (ruleDisjointCharsFromAllFromOtherType!959 rNSep!170 rules!4213))))

(declare-fun b!3747369 () Bool)

(declare-fun res!1518971 () Bool)

(assert (=> b!3747369 (=> (not res!1518971) (not e!2317314))))

(declare-fun contains!8131 (List!39984 Rule!11972) Bool)

(assert (=> b!3747369 (= res!1518971 (contains!8131 rules!4213 rSep!170))))

(declare-fun b!3747370 () Bool)

(declare-fun res!1518964 () Bool)

(assert (=> b!3747370 (=> (not res!1518964) (not e!2317314))))

(assert (=> b!3747370 (= res!1518964 (and (not (isSeparator!6086 rNSep!170)) (isSeparator!6086 rSep!170)))))

(declare-fun b!3747371 () Bool)

(declare-fun res!1518967 () Bool)

(assert (=> b!3747371 (=> (not res!1518967) (not e!2317314))))

(declare-fun c!6920 () C!22168)

(declare-fun contains!8132 (List!39983 C!22168) Bool)

(declare-fun usedCharacters!1254 (Regex!10991) List!39983)

(assert (=> b!3747371 (= res!1518967 (contains!8132 (usedCharacters!1254 (regex!6086 rNSep!170)) c!6920))))

(declare-fun b!3747372 () Bool)

(declare-fun res!1518966 () Bool)

(assert (=> b!3747372 (=> (not res!1518966) (not e!2317314))))

(declare-datatypes ((LexerInterface!5675 0))(
  ( (LexerInterfaceExt!5672 (__x!24850 Int)) (Lexer!5673) )
))
(declare-fun thiss!27193 () LexerInterface!5675)

(declare-fun rulesInvariant!5072 (LexerInterface!5675 List!39984) Bool)

(assert (=> b!3747372 (= res!1518966 (rulesInvariant!5072 thiss!27193 rules!4213))))

(declare-fun res!1518969 () Bool)

(assert (=> start!351806 (=> (not res!1518969) (not e!2317314))))

(assert (=> start!351806 (= res!1518969 ((_ is Lexer!5673) thiss!27193))))

(assert (=> start!351806 e!2317314))

(assert (=> start!351806 e!2317317))

(assert (=> start!351806 e!2317313))

(assert (=> start!351806 true))

(declare-fun tp_is_empty!18997 () Bool)

(assert (=> start!351806 tp_is_empty!18997))

(assert (=> start!351806 e!2317316))

(declare-fun b!3747367 () Bool)

(assert (=> b!3747367 (= e!2317314 (not e!2317319))))

(declare-fun res!1518970 () Bool)

(assert (=> b!3747367 (=> res!1518970 e!2317319)))

(assert (=> b!3747367 (= res!1518970 (not (contains!8131 (t!302667 rules!4213) rSep!170)))))

(assert (=> b!3747367 (rulesInvariant!5072 thiss!27193 (t!302667 rules!4213))))

(declare-datatypes ((Unit!57682 0))(
  ( (Unit!57683) )
))
(declare-fun lt!1299584 () Unit!57682)

(declare-fun lemmaInvariantOnRulesThenOnTail!716 (LexerInterface!5675 Rule!11972 List!39984) Unit!57682)

(assert (=> b!3747367 (= lt!1299584 (lemmaInvariantOnRulesThenOnTail!716 thiss!27193 (h!45280 rules!4213) (t!302667 rules!4213)))))

(assert (= (and start!351806 res!1518969) b!3747372))

(assert (= (and b!3747372 res!1518966) b!3747369))

(assert (= (and b!3747369 res!1518971) b!3747371))

(assert (= (and b!3747371 res!1518967) b!3747370))

(assert (= (and b!3747370 res!1518964) b!3747368))

(assert (= (and b!3747368 res!1518968) b!3747364))

(assert (= (and b!3747364 res!1518965) b!3747367))

(assert (= (and b!3747367 (not res!1518970)) b!3747362))

(assert (= b!3747359 b!3747361))

(assert (= start!351806 b!3747359))

(assert (= b!3747358 b!3747366))

(assert (= b!3747363 b!3747358))

(assert (= (and start!351806 ((_ is Cons!39860) rules!4213)) b!3747363))

(assert (= b!3747360 b!3747365))

(assert (= start!351806 b!3747360))

(declare-fun m!4239539 () Bool)

(assert (=> b!3747359 m!4239539))

(declare-fun m!4239541 () Bool)

(assert (=> b!3747359 m!4239541))

(declare-fun m!4239543 () Bool)

(assert (=> b!3747360 m!4239543))

(declare-fun m!4239545 () Bool)

(assert (=> b!3747360 m!4239545))

(declare-fun m!4239547 () Bool)

(assert (=> b!3747372 m!4239547))

(declare-fun m!4239549 () Bool)

(assert (=> b!3747367 m!4239549))

(declare-fun m!4239551 () Bool)

(assert (=> b!3747367 m!4239551))

(declare-fun m!4239553 () Bool)

(assert (=> b!3747367 m!4239553))

(declare-fun m!4239555 () Bool)

(assert (=> b!3747368 m!4239555))

(declare-fun m!4239557 () Bool)

(assert (=> b!3747358 m!4239557))

(declare-fun m!4239559 () Bool)

(assert (=> b!3747358 m!4239559))

(declare-fun m!4239561 () Bool)

(assert (=> b!3747362 m!4239561))

(declare-fun m!4239563 () Bool)

(assert (=> b!3747369 m!4239563))

(declare-fun m!4239565 () Bool)

(assert (=> b!3747371 m!4239565))

(assert (=> b!3747371 m!4239565))

(declare-fun m!4239567 () Bool)

(assert (=> b!3747371 m!4239567))

(check-sat (not b!3747358) (not b!3747371) b_and!278165 b_and!278171 (not b_next!100633) (not b!3747369) b_and!278169 (not b!3747363) b_and!278163 (not b_next!100643) (not b_next!100635) (not b!3747368) tp_is_empty!18997 (not b_next!100639) b_and!278167 (not b!3747362) (not b!3747367) (not b!3747372) (not b!3747359) (not b!3747360) (not b_next!100641) b_and!278173 (not b_next!100637))
(check-sat b_and!278165 b_and!278171 (not b_next!100633) b_and!278169 b_and!278163 (not b_next!100643) (not b_next!100635) (not b_next!100639) b_and!278167 (not b_next!100641) b_and!278173 (not b_next!100637))
(get-model)

(declare-fun d!1093543 () Bool)

(assert (=> d!1093543 (= (inv!53372 (tag!6946 rSep!170)) (= (mod (str.len (value!194022 (tag!6946 rSep!170))) 2) 0))))

(assert (=> b!3747360 d!1093543))

(declare-fun d!1093545 () Bool)

(declare-fun res!1518994 () Bool)

(declare-fun e!2317337 () Bool)

(assert (=> d!1093545 (=> (not res!1518994) (not e!2317337))))

(declare-fun semiInverseModEq!2604 (Int Int) Bool)

(assert (=> d!1093545 (= res!1518994 (semiInverseModEq!2604 (toChars!8293 (transformation!6086 rSep!170)) (toValue!8434 (transformation!6086 rSep!170))))))

(assert (=> d!1093545 (= (inv!53374 (transformation!6086 rSep!170)) e!2317337)))

(declare-fun b!3747385 () Bool)

(declare-fun equivClasses!2503 (Int Int) Bool)

(assert (=> b!3747385 (= e!2317337 (equivClasses!2503 (toChars!8293 (transformation!6086 rSep!170)) (toValue!8434 (transformation!6086 rSep!170))))))

(assert (= (and d!1093545 res!1518994) b!3747385))

(declare-fun m!4239581 () Bool)

(assert (=> d!1093545 m!4239581))

(declare-fun m!4239583 () Bool)

(assert (=> b!3747385 m!4239583))

(assert (=> b!3747360 d!1093545))

(declare-fun d!1093553 () Bool)

(assert (=> d!1093553 (= (inv!53372 (tag!6946 rNSep!170)) (= (mod (str.len (value!194022 (tag!6946 rNSep!170))) 2) 0))))

(assert (=> b!3747359 d!1093553))

(declare-fun d!1093555 () Bool)

(declare-fun res!1518999 () Bool)

(declare-fun e!2317342 () Bool)

(assert (=> d!1093555 (=> (not res!1518999) (not e!2317342))))

(assert (=> d!1093555 (= res!1518999 (semiInverseModEq!2604 (toChars!8293 (transformation!6086 rNSep!170)) (toValue!8434 (transformation!6086 rNSep!170))))))

(assert (=> d!1093555 (= (inv!53374 (transformation!6086 rNSep!170)) e!2317342)))

(declare-fun b!3747390 () Bool)

(assert (=> b!3747390 (= e!2317342 (equivClasses!2503 (toChars!8293 (transformation!6086 rNSep!170)) (toValue!8434 (transformation!6086 rNSep!170))))))

(assert (= (and d!1093555 res!1518999) b!3747390))

(declare-fun m!4239585 () Bool)

(assert (=> d!1093555 m!4239585))

(declare-fun m!4239587 () Bool)

(assert (=> b!3747390 m!4239587))

(assert (=> b!3747359 d!1093555))

(declare-fun d!1093557 () Bool)

(declare-fun res!1519004 () Bool)

(declare-fun e!2317347 () Bool)

(assert (=> d!1093557 (=> (not res!1519004) (not e!2317347))))

(declare-fun rulesValid!2360 (LexerInterface!5675 List!39984) Bool)

(assert (=> d!1093557 (= res!1519004 (rulesValid!2360 thiss!27193 rules!4213))))

(assert (=> d!1093557 (= (rulesInvariant!5072 thiss!27193 rules!4213) e!2317347)))

(declare-fun b!3747395 () Bool)

(declare-datatypes ((List!39985 0))(
  ( (Nil!39861) (Cons!39861 (h!45281 String!45206) (t!302668 List!39985)) )
))
(declare-fun noDuplicateTag!2361 (LexerInterface!5675 List!39984 List!39985) Bool)

(assert (=> b!3747395 (= e!2317347 (noDuplicateTag!2361 thiss!27193 rules!4213 Nil!39861))))

(assert (= (and d!1093557 res!1519004) b!3747395))

(declare-fun m!4239595 () Bool)

(assert (=> d!1093557 m!4239595))

(declare-fun m!4239597 () Bool)

(assert (=> b!3747395 m!4239597))

(assert (=> b!3747372 d!1093557))

(declare-fun d!1093561 () Bool)

(declare-fun lt!1299593 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5844 (List!39983) (InoxSet C!22168))

(assert (=> d!1093561 (= lt!1299593 (select (content!5844 (usedCharacters!1254 (regex!6086 rNSep!170))) c!6920))))

(declare-fun e!2317361 () Bool)

(assert (=> d!1093561 (= lt!1299593 e!2317361)))

(declare-fun res!1519009 () Bool)

(assert (=> d!1093561 (=> (not res!1519009) (not e!2317361))))

(assert (=> d!1093561 (= res!1519009 ((_ is Cons!39859) (usedCharacters!1254 (regex!6086 rNSep!170))))))

(assert (=> d!1093561 (= (contains!8132 (usedCharacters!1254 (regex!6086 rNSep!170)) c!6920) lt!1299593)))

(declare-fun b!3747416 () Bool)

(declare-fun e!2317360 () Bool)

(assert (=> b!3747416 (= e!2317361 e!2317360)))

(declare-fun res!1519010 () Bool)

(assert (=> b!3747416 (=> res!1519010 e!2317360)))

(assert (=> b!3747416 (= res!1519010 (= (h!45279 (usedCharacters!1254 (regex!6086 rNSep!170))) c!6920))))

(declare-fun b!3747417 () Bool)

(assert (=> b!3747417 (= e!2317360 (contains!8132 (t!302666 (usedCharacters!1254 (regex!6086 rNSep!170))) c!6920))))

(assert (= (and d!1093561 res!1519009) b!3747416))

(assert (= (and b!3747416 (not res!1519010)) b!3747417))

(assert (=> d!1093561 m!4239565))

(declare-fun m!4239599 () Bool)

(assert (=> d!1093561 m!4239599))

(declare-fun m!4239601 () Bool)

(assert (=> d!1093561 m!4239601))

(declare-fun m!4239603 () Bool)

(assert (=> b!3747417 m!4239603))

(assert (=> b!3747371 d!1093561))

(declare-fun bm!275168 () Bool)

(declare-fun c!648945 () Bool)

(declare-fun c!648943 () Bool)

(declare-fun call!275174 () List!39983)

(assert (=> bm!275168 (= call!275174 (usedCharacters!1254 (ite c!648943 (reg!11320 (regex!6086 rNSep!170)) (ite c!648945 (regOne!22495 (regex!6086 rNSep!170)) (regOne!22494 (regex!6086 rNSep!170))))))))

(declare-fun bm!275169 () Bool)

(declare-fun call!275175 () List!39983)

(assert (=> bm!275169 (= call!275175 (usedCharacters!1254 (ite c!648945 (regTwo!22495 (regex!6086 rNSep!170)) (regTwo!22494 (regex!6086 rNSep!170)))))))

(declare-fun bm!275170 () Bool)

(declare-fun call!275173 () List!39983)

(declare-fun call!275176 () List!39983)

(declare-fun ++!9891 (List!39983 List!39983) List!39983)

(assert (=> bm!275170 (= call!275173 (++!9891 call!275176 call!275175))))

(declare-fun b!3747446 () Bool)

(declare-fun e!2317377 () List!39983)

(assert (=> b!3747446 (= e!2317377 (Cons!39859 (c!648921 (regex!6086 rNSep!170)) Nil!39859))))

(declare-fun b!3747447 () Bool)

(assert (=> b!3747447 (= c!648943 ((_ is Star!10991) (regex!6086 rNSep!170)))))

(declare-fun e!2317379 () List!39983)

(assert (=> b!3747447 (= e!2317377 e!2317379)))

(declare-fun b!3747448 () Bool)

(declare-fun e!2317380 () List!39983)

(assert (=> b!3747448 (= e!2317379 e!2317380)))

(assert (=> b!3747448 (= c!648945 ((_ is Union!10991) (regex!6086 rNSep!170)))))

(declare-fun b!3747449 () Bool)

(assert (=> b!3747449 (= e!2317380 call!275173)))

(declare-fun d!1093563 () Bool)

(declare-fun c!648942 () Bool)

(assert (=> d!1093563 (= c!648942 (or ((_ is EmptyExpr!10991) (regex!6086 rNSep!170)) ((_ is EmptyLang!10991) (regex!6086 rNSep!170))))))

(declare-fun e!2317378 () List!39983)

(assert (=> d!1093563 (= (usedCharacters!1254 (regex!6086 rNSep!170)) e!2317378)))

(declare-fun b!3747445 () Bool)

(assert (=> b!3747445 (= e!2317378 e!2317377)))

(declare-fun c!648944 () Bool)

(assert (=> b!3747445 (= c!648944 ((_ is ElementMatch!10991) (regex!6086 rNSep!170)))))

(declare-fun b!3747450 () Bool)

(assert (=> b!3747450 (= e!2317380 call!275173)))

(declare-fun bm!275171 () Bool)

(assert (=> bm!275171 (= call!275176 call!275174)))

(declare-fun b!3747451 () Bool)

(assert (=> b!3747451 (= e!2317379 call!275174)))

(declare-fun b!3747452 () Bool)

(assert (=> b!3747452 (= e!2317378 Nil!39859)))

(assert (= (and d!1093563 c!648942) b!3747452))

(assert (= (and d!1093563 (not c!648942)) b!3747445))

(assert (= (and b!3747445 c!648944) b!3747446))

(assert (= (and b!3747445 (not c!648944)) b!3747447))

(assert (= (and b!3747447 c!648943) b!3747451))

(assert (= (and b!3747447 (not c!648943)) b!3747448))

(assert (= (and b!3747448 c!648945) b!3747450))

(assert (= (and b!3747448 (not c!648945)) b!3747449))

(assert (= (or b!3747450 b!3747449) bm!275171))

(assert (= (or b!3747450 b!3747449) bm!275169))

(assert (= (or b!3747450 b!3747449) bm!275170))

(assert (= (or b!3747451 bm!275171) bm!275168))

(declare-fun m!4239615 () Bool)

(assert (=> bm!275168 m!4239615))

(declare-fun m!4239617 () Bool)

(assert (=> bm!275169 m!4239617))

(declare-fun m!4239619 () Bool)

(assert (=> bm!275170 m!4239619))

(assert (=> b!3747371 d!1093563))

(declare-fun b!3747481 () Bool)

(declare-fun e!2317404 () Bool)

(declare-fun call!275183 () Bool)

(assert (=> b!3747481 (= e!2317404 call!275183)))

(declare-fun b!3747482 () Bool)

(declare-fun e!2317403 () Bool)

(assert (=> b!3747482 (= e!2317403 call!275183)))

(declare-fun bm!275178 () Bool)

(assert (=> bm!275178 (= call!275183 (ruleDisjointCharsFromAllFromOtherType!959 rNSep!170 (t!302667 rules!4213)))))

(declare-fun b!3747483 () Bool)

(declare-fun e!2317405 () Bool)

(assert (=> b!3747483 (= e!2317405 e!2317404)))

(declare-fun res!1519030 () Bool)

(declare-fun rulesUseDisjointChars!383 (Rule!11972 Rule!11972) Bool)

(assert (=> b!3747483 (= res!1519030 (rulesUseDisjointChars!383 rNSep!170 (h!45280 rules!4213)))))

(assert (=> b!3747483 (=> (not res!1519030) (not e!2317404))))

(declare-fun b!3747484 () Bool)

(assert (=> b!3747484 (= e!2317405 e!2317403)))

(declare-fun res!1519031 () Bool)

(assert (=> b!3747484 (= res!1519031 (not ((_ is Cons!39860) rules!4213)))))

(assert (=> b!3747484 (=> res!1519031 e!2317403)))

(declare-fun d!1093569 () Bool)

(declare-fun c!648952 () Bool)

(assert (=> d!1093569 (= c!648952 (and ((_ is Cons!39860) rules!4213) (not (= (isSeparator!6086 (h!45280 rules!4213)) (isSeparator!6086 rNSep!170)))))))

(assert (=> d!1093569 (= (ruleDisjointCharsFromAllFromOtherType!959 rNSep!170 rules!4213) e!2317405)))

(assert (= (and d!1093569 c!648952) b!3747483))

(assert (= (and d!1093569 (not c!648952)) b!3747484))

(assert (= (and b!3747483 res!1519030) b!3747481))

(assert (= (and b!3747484 (not res!1519031)) b!3747482))

(assert (= (or b!3747481 b!3747482) bm!275178))

(assert (=> bm!275178 m!4239561))

(declare-fun m!4239641 () Bool)

(assert (=> b!3747483 m!4239641))

(assert (=> b!3747368 d!1093569))

(declare-fun b!3747485 () Bool)

(declare-fun e!2317407 () Bool)

(declare-fun call!275184 () Bool)

(assert (=> b!3747485 (= e!2317407 call!275184)))

(declare-fun b!3747486 () Bool)

(declare-fun e!2317406 () Bool)

(assert (=> b!3747486 (= e!2317406 call!275184)))

(declare-fun bm!275179 () Bool)

(assert (=> bm!275179 (= call!275184 (ruleDisjointCharsFromAllFromOtherType!959 rNSep!170 (t!302667 (t!302667 rules!4213))))))

(declare-fun b!3747487 () Bool)

(declare-fun e!2317408 () Bool)

(assert (=> b!3747487 (= e!2317408 e!2317407)))

(declare-fun res!1519032 () Bool)

(assert (=> b!3747487 (= res!1519032 (rulesUseDisjointChars!383 rNSep!170 (h!45280 (t!302667 rules!4213))))))

(assert (=> b!3747487 (=> (not res!1519032) (not e!2317407))))

(declare-fun b!3747488 () Bool)

(assert (=> b!3747488 (= e!2317408 e!2317406)))

(declare-fun res!1519033 () Bool)

(assert (=> b!3747488 (= res!1519033 (not ((_ is Cons!39860) (t!302667 rules!4213))))))

(assert (=> b!3747488 (=> res!1519033 e!2317406)))

(declare-fun d!1093583 () Bool)

(declare-fun c!648953 () Bool)

(assert (=> d!1093583 (= c!648953 (and ((_ is Cons!39860) (t!302667 rules!4213)) (not (= (isSeparator!6086 (h!45280 (t!302667 rules!4213))) (isSeparator!6086 rNSep!170)))))))

(assert (=> d!1093583 (= (ruleDisjointCharsFromAllFromOtherType!959 rNSep!170 (t!302667 rules!4213)) e!2317408)))

(assert (= (and d!1093583 c!648953) b!3747487))

(assert (= (and d!1093583 (not c!648953)) b!3747488))

(assert (= (and b!3747487 res!1519032) b!3747485))

(assert (= (and b!3747488 (not res!1519033)) b!3747486))

(assert (= (or b!3747485 b!3747486) bm!275179))

(declare-fun m!4239643 () Bool)

(assert (=> bm!275179 m!4239643))

(declare-fun m!4239645 () Bool)

(assert (=> b!3747487 m!4239645))

(assert (=> b!3747362 d!1093583))

(declare-fun d!1093585 () Bool)

(declare-fun lt!1299600 () Bool)

(declare-fun content!5845 (List!39984) (InoxSet Rule!11972))

(assert (=> d!1093585 (= lt!1299600 (select (content!5845 (t!302667 rules!4213)) rSep!170))))

(declare-fun e!2317422 () Bool)

(assert (=> d!1093585 (= lt!1299600 e!2317422)))

(declare-fun res!1519039 () Bool)

(assert (=> d!1093585 (=> (not res!1519039) (not e!2317422))))

(assert (=> d!1093585 (= res!1519039 ((_ is Cons!39860) (t!302667 rules!4213)))))

(assert (=> d!1093585 (= (contains!8131 (t!302667 rules!4213) rSep!170) lt!1299600)))

(declare-fun b!3747521 () Bool)

(declare-fun e!2317423 () Bool)

(assert (=> b!3747521 (= e!2317422 e!2317423)))

(declare-fun res!1519038 () Bool)

(assert (=> b!3747521 (=> res!1519038 e!2317423)))

(assert (=> b!3747521 (= res!1519038 (= (h!45280 (t!302667 rules!4213)) rSep!170))))

(declare-fun b!3747522 () Bool)

(assert (=> b!3747522 (= e!2317423 (contains!8131 (t!302667 (t!302667 rules!4213)) rSep!170))))

(assert (= (and d!1093585 res!1519039) b!3747521))

(assert (= (and b!3747521 (not res!1519038)) b!3747522))

(declare-fun m!4239651 () Bool)

(assert (=> d!1093585 m!4239651))

(declare-fun m!4239653 () Bool)

(assert (=> d!1093585 m!4239653))

(declare-fun m!4239655 () Bool)

(assert (=> b!3747522 m!4239655))

(assert (=> b!3747367 d!1093585))

(declare-fun d!1093587 () Bool)

(declare-fun res!1519040 () Bool)

(declare-fun e!2317428 () Bool)

(assert (=> d!1093587 (=> (not res!1519040) (not e!2317428))))

(assert (=> d!1093587 (= res!1519040 (rulesValid!2360 thiss!27193 (t!302667 rules!4213)))))

(assert (=> d!1093587 (= (rulesInvariant!5072 thiss!27193 (t!302667 rules!4213)) e!2317428)))

(declare-fun b!3747525 () Bool)

(assert (=> b!3747525 (= e!2317428 (noDuplicateTag!2361 thiss!27193 (t!302667 rules!4213) Nil!39861))))

(assert (= (and d!1093587 res!1519040) b!3747525))

(declare-fun m!4239657 () Bool)

(assert (=> d!1093587 m!4239657))

(declare-fun m!4239659 () Bool)

(assert (=> b!3747525 m!4239659))

(assert (=> b!3747367 d!1093587))

(declare-fun d!1093589 () Bool)

(assert (=> d!1093589 (rulesInvariant!5072 thiss!27193 (t!302667 rules!4213))))

(declare-fun lt!1299603 () Unit!57682)

(declare-fun choose!22248 (LexerInterface!5675 Rule!11972 List!39984) Unit!57682)

(assert (=> d!1093589 (= lt!1299603 (choose!22248 thiss!27193 (h!45280 rules!4213) (t!302667 rules!4213)))))

(assert (=> d!1093589 (rulesInvariant!5072 thiss!27193 (Cons!39860 (h!45280 rules!4213) (t!302667 rules!4213)))))

(assert (=> d!1093589 (= (lemmaInvariantOnRulesThenOnTail!716 thiss!27193 (h!45280 rules!4213) (t!302667 rules!4213)) lt!1299603)))

(declare-fun bs!575335 () Bool)

(assert (= bs!575335 d!1093589))

(assert (=> bs!575335 m!4239551))

(declare-fun m!4239665 () Bool)

(assert (=> bs!575335 m!4239665))

(declare-fun m!4239667 () Bool)

(assert (=> bs!575335 m!4239667))

(assert (=> b!3747367 d!1093589))

(declare-fun d!1093591 () Bool)

(declare-fun lt!1299604 () Bool)

(assert (=> d!1093591 (= lt!1299604 (select (content!5845 rules!4213) rSep!170))))

(declare-fun e!2317433 () Bool)

(assert (=> d!1093591 (= lt!1299604 e!2317433)))

(declare-fun res!1519042 () Bool)

(assert (=> d!1093591 (=> (not res!1519042) (not e!2317433))))

(assert (=> d!1093591 (= res!1519042 ((_ is Cons!39860) rules!4213))))

(assert (=> d!1093591 (= (contains!8131 rules!4213 rSep!170) lt!1299604)))

(declare-fun b!3747529 () Bool)

(declare-fun e!2317434 () Bool)

(assert (=> b!3747529 (= e!2317433 e!2317434)))

(declare-fun res!1519041 () Bool)

(assert (=> b!3747529 (=> res!1519041 e!2317434)))

(assert (=> b!3747529 (= res!1519041 (= (h!45280 rules!4213) rSep!170))))

(declare-fun b!3747530 () Bool)

(assert (=> b!3747530 (= e!2317434 (contains!8131 (t!302667 rules!4213) rSep!170))))

(assert (= (and d!1093591 res!1519042) b!3747529))

(assert (= (and b!3747529 (not res!1519041)) b!3747530))

(declare-fun m!4239669 () Bool)

(assert (=> d!1093591 m!4239669))

(declare-fun m!4239671 () Bool)

(assert (=> d!1093591 m!4239671))

(assert (=> b!3747530 m!4239549))

(assert (=> b!3747369 d!1093591))

(declare-fun d!1093593 () Bool)

(assert (=> d!1093593 (= (inv!53372 (tag!6946 (h!45280 rules!4213))) (= (mod (str.len (value!194022 (tag!6946 (h!45280 rules!4213)))) 2) 0))))

(assert (=> b!3747358 d!1093593))

(declare-fun d!1093595 () Bool)

(declare-fun res!1519043 () Bool)

(declare-fun e!2317435 () Bool)

(assert (=> d!1093595 (=> (not res!1519043) (not e!2317435))))

(assert (=> d!1093595 (= res!1519043 (semiInverseModEq!2604 (toChars!8293 (transformation!6086 (h!45280 rules!4213))) (toValue!8434 (transformation!6086 (h!45280 rules!4213)))))))

(assert (=> d!1093595 (= (inv!53374 (transformation!6086 (h!45280 rules!4213))) e!2317435)))

(declare-fun b!3747531 () Bool)

(assert (=> b!3747531 (= e!2317435 (equivClasses!2503 (toChars!8293 (transformation!6086 (h!45280 rules!4213))) (toValue!8434 (transformation!6086 (h!45280 rules!4213)))))))

(assert (= (and d!1093595 res!1519043) b!3747531))

(declare-fun m!4239673 () Bool)

(assert (=> d!1093595 m!4239673))

(declare-fun m!4239675 () Bool)

(assert (=> b!3747531 m!4239675))

(assert (=> b!3747358 d!1093595))

(declare-fun b!3747542 () Bool)

(declare-fun e!2317438 () Bool)

(assert (=> b!3747542 (= e!2317438 tp_is_empty!18997)))

(declare-fun b!3747543 () Bool)

(declare-fun tp!1143437 () Bool)

(declare-fun tp!1143436 () Bool)

(assert (=> b!3747543 (= e!2317438 (and tp!1143437 tp!1143436))))

(assert (=> b!3747360 (= tp!1143388 e!2317438)))

(declare-fun b!3747545 () Bool)

(declare-fun tp!1143438 () Bool)

(declare-fun tp!1143440 () Bool)

(assert (=> b!3747545 (= e!2317438 (and tp!1143438 tp!1143440))))

(declare-fun b!3747544 () Bool)

(declare-fun tp!1143439 () Bool)

(assert (=> b!3747544 (= e!2317438 tp!1143439)))

(assert (= (and b!3747360 ((_ is ElementMatch!10991) (regex!6086 rSep!170))) b!3747542))

(assert (= (and b!3747360 ((_ is Concat!17308) (regex!6086 rSep!170))) b!3747543))

(assert (= (and b!3747360 ((_ is Star!10991) (regex!6086 rSep!170))) b!3747544))

(assert (= (and b!3747360 ((_ is Union!10991) (regex!6086 rSep!170))) b!3747545))

(declare-fun b!3747546 () Bool)

(declare-fun e!2317439 () Bool)

(assert (=> b!3747546 (= e!2317439 tp_is_empty!18997)))

(declare-fun b!3747547 () Bool)

(declare-fun tp!1143442 () Bool)

(declare-fun tp!1143441 () Bool)

(assert (=> b!3747547 (= e!2317439 (and tp!1143442 tp!1143441))))

(assert (=> b!3747359 (= tp!1143381 e!2317439)))

(declare-fun b!3747549 () Bool)

(declare-fun tp!1143443 () Bool)

(declare-fun tp!1143445 () Bool)

(assert (=> b!3747549 (= e!2317439 (and tp!1143443 tp!1143445))))

(declare-fun b!3747548 () Bool)

(declare-fun tp!1143444 () Bool)

(assert (=> b!3747548 (= e!2317439 tp!1143444)))

(assert (= (and b!3747359 ((_ is ElementMatch!10991) (regex!6086 rNSep!170))) b!3747546))

(assert (= (and b!3747359 ((_ is Concat!17308) (regex!6086 rNSep!170))) b!3747547))

(assert (= (and b!3747359 ((_ is Star!10991) (regex!6086 rNSep!170))) b!3747548))

(assert (= (and b!3747359 ((_ is Union!10991) (regex!6086 rNSep!170))) b!3747549))

(declare-fun b!3747550 () Bool)

(declare-fun e!2317440 () Bool)

(assert (=> b!3747550 (= e!2317440 tp_is_empty!18997)))

(declare-fun b!3747551 () Bool)

(declare-fun tp!1143447 () Bool)

(declare-fun tp!1143446 () Bool)

(assert (=> b!3747551 (= e!2317440 (and tp!1143447 tp!1143446))))

(assert (=> b!3747358 (= tp!1143387 e!2317440)))

(declare-fun b!3747553 () Bool)

(declare-fun tp!1143448 () Bool)

(declare-fun tp!1143450 () Bool)

(assert (=> b!3747553 (= e!2317440 (and tp!1143448 tp!1143450))))

(declare-fun b!3747552 () Bool)

(declare-fun tp!1143449 () Bool)

(assert (=> b!3747552 (= e!2317440 tp!1143449)))

(assert (= (and b!3747358 ((_ is ElementMatch!10991) (regex!6086 (h!45280 rules!4213)))) b!3747550))

(assert (= (and b!3747358 ((_ is Concat!17308) (regex!6086 (h!45280 rules!4213)))) b!3747551))

(assert (= (and b!3747358 ((_ is Star!10991) (regex!6086 (h!45280 rules!4213)))) b!3747552))

(assert (= (and b!3747358 ((_ is Union!10991) (regex!6086 (h!45280 rules!4213)))) b!3747553))

(declare-fun b!3747564 () Bool)

(declare-fun b_free!99945 () Bool)

(declare-fun b_next!100649 () Bool)

(assert (=> b!3747564 (= b_free!99945 (not b_next!100649))))

(declare-fun tp!1143462 () Bool)

(declare-fun b_and!278179 () Bool)

(assert (=> b!3747564 (= tp!1143462 b_and!278179)))

(declare-fun b_free!99947 () Bool)

(declare-fun b_next!100651 () Bool)

(assert (=> b!3747564 (= b_free!99947 (not b_next!100651))))

(declare-fun tp!1143460 () Bool)

(declare-fun b_and!278181 () Bool)

(assert (=> b!3747564 (= tp!1143460 b_and!278181)))

(declare-fun e!2317452 () Bool)

(assert (=> b!3747564 (= e!2317452 (and tp!1143462 tp!1143460))))

(declare-fun e!2317450 () Bool)

(declare-fun b!3747563 () Bool)

(declare-fun tp!1143459 () Bool)

(assert (=> b!3747563 (= e!2317450 (and tp!1143459 (inv!53372 (tag!6946 (h!45280 (t!302667 rules!4213)))) (inv!53374 (transformation!6086 (h!45280 (t!302667 rules!4213)))) e!2317452))))

(declare-fun b!3747562 () Bool)

(declare-fun e!2317451 () Bool)

(declare-fun tp!1143461 () Bool)

(assert (=> b!3747562 (= e!2317451 (and e!2317450 tp!1143461))))

(assert (=> b!3747363 (= tp!1143382 e!2317451)))

(assert (= b!3747563 b!3747564))

(assert (= b!3747562 b!3747563))

(assert (= (and b!3747363 ((_ is Cons!39860) (t!302667 rules!4213))) b!3747562))

(declare-fun m!4239677 () Bool)

(assert (=> b!3747563 m!4239677))

(declare-fun m!4239679 () Bool)

(assert (=> b!3747563 m!4239679))

(check-sat (not b_next!100649) (not b!3747487) (not d!1093555) (not b!3747531) (not b!3747522) b_and!278167 (not bm!275179) (not b!3747543) (not b_next!100641) (not b!3747483) (not b!3747390) (not d!1093545) (not bm!275168) (not b!3747545) (not b!3747551) (not b!3747548) b_and!278165 (not bm!275170) (not b!3747395) (not d!1093595) (not d!1093589) (not d!1093587) (not b!3747385) b_and!278171 (not b!3747563) (not d!1093591) (not b!3747525) (not b_next!100633) b_and!278181 (not b!3747562) (not b!3747552) (not bm!275178) b_and!278169 (not b!3747547) (not b!3747549) b_and!278163 (not b!3747417) (not d!1093561) (not b_next!100643) (not bm!275169) (not b_next!100635) (not b!3747544) b_and!278179 (not b!3747530) tp_is_empty!18997 (not b_next!100639) (not b!3747553) b_and!278173 (not d!1093557) (not d!1093585) (not b_next!100651) (not b_next!100637))
(check-sat b_and!278165 b_and!278171 (not b_next!100649) b_and!278169 b_and!278163 (not b_next!100643) (not b_next!100635) b_and!278179 (not b_next!100639) b_and!278167 (not b_next!100641) (not b_next!100633) b_and!278181 b_and!278173 (not b_next!100651) (not b_next!100637))
