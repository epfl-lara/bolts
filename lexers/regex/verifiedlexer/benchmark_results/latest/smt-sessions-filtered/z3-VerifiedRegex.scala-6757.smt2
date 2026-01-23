; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352740 () Bool)

(assert start!352740)

(declare-fun b!3758406 () Bool)

(declare-fun b_free!100573 () Bool)

(declare-fun b_next!101277 () Bool)

(assert (=> b!3758406 (= b_free!100573 (not b_next!101277))))

(declare-fun tp!1148386 () Bool)

(declare-fun b_and!279163 () Bool)

(assert (=> b!3758406 (= tp!1148386 b_and!279163)))

(declare-fun b_free!100575 () Bool)

(declare-fun b_next!101279 () Bool)

(assert (=> b!3758406 (= b_free!100575 (not b_next!101279))))

(declare-fun tp!1148388 () Bool)

(declare-fun b_and!279165 () Bool)

(assert (=> b!3758406 (= tp!1148388 b_and!279165)))

(declare-fun res!1522152 () Bool)

(declare-fun e!2324299 () Bool)

(assert (=> start!352740 (=> (not res!1522152) (not e!2324299))))

(declare-datatypes ((LexerInterface!5721 0))(
  ( (LexerInterfaceExt!5718 (__x!24941 Int)) (Lexer!5719) )
))
(declare-fun thiss!14060 () LexerInterface!5721)

(declare-fun from!856 () Int)

(get-info :version)

(assert (=> start!352740 (= res!1522152 (and ((_ is Lexer!5719) thiss!14060) (>= from!856 0)))))

(assert (=> start!352740 e!2324299))

(declare-datatypes ((C!22260 0))(
  ( (C!22261 (val!13194 Int)) )
))
(declare-datatypes ((List!40179 0))(
  ( (Nil!40055) (Cons!40055 (h!45475 C!22260) (t!303686 List!40179)) )
))
(declare-datatypes ((IArray!24533 0))(
  ( (IArray!24534 (innerList!12324 List!40179)) )
))
(declare-datatypes ((Conc!12264 0))(
  ( (Node!12264 (left!31017 Conc!12264) (right!31347 Conc!12264) (csize!24758 Int) (cheight!12475 Int)) (Leaf!19022 (xs!15466 IArray!24533) (csize!24759 Int)) (Empty!12264) )
))
(declare-datatypes ((BalanceConc!24122 0))(
  ( (BalanceConc!24123 (c!650719 Conc!12264)) )
))
(declare-fun acc!419 () BalanceConc!24122)

(declare-fun e!2324306 () Bool)

(declare-fun inv!53699 (BalanceConc!24122) Bool)

(assert (=> start!352740 (and (inv!53699 acc!419) e!2324306)))

(assert (=> start!352740 true))

(declare-datatypes ((List!40180 0))(
  ( (Nil!40056) (Cons!40056 (h!45476 (_ BitVec 16)) (t!303687 List!40180)) )
))
(declare-datatypes ((TokenValue!6362 0))(
  ( (FloatLiteralValue!12724 (text!44979 List!40180)) (TokenValueExt!6361 (__x!24942 Int)) (Broken!31810 (value!195325 List!40180)) (Object!6485) (End!6362) (Def!6362) (Underscore!6362) (Match!6362) (Else!6362) (Error!6362) (Case!6362) (If!6362) (Extends!6362) (Abstract!6362) (Class!6362) (Val!6362) (DelimiterValue!12724 (del!6422 List!40180)) (KeywordValue!6368 (value!195326 List!40180)) (CommentValue!12724 (value!195327 List!40180)) (WhitespaceValue!12724 (value!195328 List!40180)) (IndentationValue!6362 (value!195329 List!40180)) (String!45467) (Int32!6362) (Broken!31811 (value!195330 List!40180)) (Boolean!6363) (Unit!57783) (OperatorValue!6365 (op!6422 List!40180)) (IdentifierValue!12724 (value!195331 List!40180)) (IdentifierValue!12725 (value!195332 List!40180)) (WhitespaceValue!12725 (value!195333 List!40180)) (True!12724) (False!12724) (Broken!31812 (value!195334 List!40180)) (Broken!31813 (value!195335 List!40180)) (True!12725) (RightBrace!6362) (RightBracket!6362) (Colon!6362) (Null!6362) (Comma!6362) (LeftBracket!6362) (False!12725) (LeftBrace!6362) (ImaginaryLiteralValue!6362 (text!44980 List!40180)) (StringLiteralValue!19086 (value!195336 List!40180)) (EOFValue!6362 (value!195337 List!40180)) (IdentValue!6362 (value!195338 List!40180)) (DelimiterValue!12725 (value!195339 List!40180)) (DedentValue!6362 (value!195340 List!40180)) (NewLineValue!6362 (value!195341 List!40180)) (IntegerValue!19086 (value!195342 (_ BitVec 32)) (text!44981 List!40180)) (IntegerValue!19087 (value!195343 Int) (text!44982 List!40180)) (Times!6362) (Or!6362) (Equal!6362) (Minus!6362) (Broken!31814 (value!195344 List!40180)) (And!6362) (Div!6362) (LessEqual!6362) (Mod!6362) (Concat!17399) (Not!6362) (Plus!6362) (SpaceValue!6362 (value!195345 List!40180)) (IntegerValue!19088 (value!195346 Int) (text!44983 List!40180)) (StringLiteralValue!19087 (text!44984 List!40180)) (FloatLiteralValue!12725 (text!44985 List!40180)) (BytesLiteralValue!6362 (value!195347 List!40180)) (CommentValue!12725 (value!195348 List!40180)) (StringLiteralValue!19088 (value!195349 List!40180)) (ErrorTokenValue!6362 (msg!6423 List!40180)) )
))
(declare-datatypes ((TokenValueInjection!12152 0))(
  ( (TokenValueInjection!12153 (toValue!8484 Int) (toChars!8343 Int)) )
))
(declare-datatypes ((String!45468 0))(
  ( (String!45469 (value!195350 String)) )
))
(declare-datatypes ((Regex!11037 0))(
  ( (ElementMatch!11037 (c!650720 C!22260)) (Concat!17400 (regOne!22586 Regex!11037) (regTwo!22586 Regex!11037)) (EmptyExpr!11037) (Star!11037 (reg!11366 Regex!11037)) (EmptyLang!11037) (Union!11037 (regOne!22587 Regex!11037) (regTwo!22587 Regex!11037)) )
))
(declare-datatypes ((Rule!12064 0))(
  ( (Rule!12065 (regex!6132 Regex!11037) (tag!6992 String!45468) (isSeparator!6132 Bool) (transformation!6132 TokenValueInjection!12152)) )
))
(declare-datatypes ((Token!11402 0))(
  ( (Token!11403 (value!195351 TokenValue!6362) (rule!8896 Rule!12064) (size!30147 Int) (originalCharacters!6732 List!40179)) )
))
(declare-fun separatorToken!144 () Token!11402)

(declare-fun e!2324301 () Bool)

(declare-fun inv!53700 (Token!11402) Bool)

(assert (=> start!352740 (and (inv!53700 separatorToken!144) e!2324301)))

(declare-datatypes ((List!40181 0))(
  ( (Nil!40057) (Cons!40057 (h!45477 Token!11402) (t!303688 List!40181)) )
))
(declare-datatypes ((IArray!24535 0))(
  ( (IArray!24536 (innerList!12325 List!40181)) )
))
(declare-datatypes ((Conc!12265 0))(
  ( (Node!12265 (left!31018 Conc!12265) (right!31348 Conc!12265) (csize!24760 Int) (cheight!12476 Int)) (Leaf!19023 (xs!15467 IArray!24535) (csize!24761 Int)) (Empty!12265) )
))
(declare-datatypes ((BalanceConc!24124 0))(
  ( (BalanceConc!24125 (c!650721 Conc!12265)) )
))
(declare-fun v!6366 () BalanceConc!24124)

(declare-fun e!2324300 () Bool)

(declare-fun inv!53701 (BalanceConc!24124) Bool)

(assert (=> start!352740 (and (inv!53701 v!6366) e!2324300)))

(declare-fun e!2324302 () Bool)

(assert (=> b!3758406 (= e!2324302 (and tp!1148386 tp!1148388))))

(declare-fun b!3758407 () Bool)

(declare-fun e!2324305 () Bool)

(declare-fun list!14775 (BalanceConc!24122) List!40179)

(declare-fun printWithSeparatorTokenTailRec!82 (LexerInterface!5721 BalanceConc!24124 Token!11402 Int BalanceConc!24122) BalanceConc!24122)

(declare-fun ++!9923 (BalanceConc!24122 BalanceConc!24122) BalanceConc!24122)

(declare-fun charsOf!3985 (Token!11402) BalanceConc!24122)

(declare-fun apply!9432 (BalanceConc!24124 Int) Token!11402)

(declare-fun printWithSeparatorTokenListTailRec!44 (LexerInterface!5721 List!40181 Token!11402 List!40179) List!40179)

(declare-fun dropList!1269 (BalanceConc!24124 Int) List!40181)

(assert (=> b!3758407 (= e!2324305 (not (= (list!14775 (printWithSeparatorTokenTailRec!82 thiss!14060 v!6366 separatorToken!144 (+ 1 from!856) (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)))) (printWithSeparatorTokenListTailRec!44 thiss!14060 (dropList!1269 v!6366 from!856) separatorToken!144 (list!14775 acc!419)))))))

(declare-fun lt!1301043 () List!40181)

(declare-fun lt!1301045 () List!40181)

(declare-fun tail!5762 (List!40181) List!40181)

(declare-fun drop!2093 (List!40181 Int) List!40181)

(assert (=> b!3758407 (= (tail!5762 lt!1301043) (drop!2093 lt!1301045 (+ 1 from!856)))))

(declare-datatypes ((Unit!57784 0))(
  ( (Unit!57785) )
))
(declare-fun lt!1301042 () Unit!57784)

(declare-fun lemmaDropTail!1113 (List!40181 Int) Unit!57784)

(assert (=> b!3758407 (= lt!1301042 (lemmaDropTail!1113 lt!1301045 from!856))))

(declare-fun head!8035 (List!40181) Token!11402)

(declare-fun apply!9433 (List!40181 Int) Token!11402)

(assert (=> b!3758407 (= (head!8035 lt!1301043) (apply!9433 lt!1301045 from!856))))

(assert (=> b!3758407 (= lt!1301043 (drop!2093 lt!1301045 from!856))))

(declare-fun lt!1301041 () Unit!57784)

(declare-fun lemmaDropApply!1229 (List!40181 Int) Unit!57784)

(assert (=> b!3758407 (= lt!1301041 (lemmaDropApply!1229 lt!1301045 from!856))))

(declare-fun list!14776 (BalanceConc!24124) List!40181)

(assert (=> b!3758407 (= lt!1301045 (list!14776 v!6366))))

(declare-fun b!3758408 () Bool)

(declare-fun tp!1148387 () Bool)

(declare-fun inv!53702 (Conc!12264) Bool)

(assert (=> b!3758408 (= e!2324306 (and (inv!53702 (c!650719 acc!419)) tp!1148387))))

(declare-fun e!2324303 () Bool)

(declare-fun tp!1148385 () Bool)

(declare-fun b!3758409 () Bool)

(declare-fun inv!53692 (String!45468) Bool)

(declare-fun inv!53703 (TokenValueInjection!12152) Bool)

(assert (=> b!3758409 (= e!2324303 (and tp!1148385 (inv!53692 (tag!6992 (rule!8896 separatorToken!144))) (inv!53703 (transformation!6132 (rule!8896 separatorToken!144))) e!2324302))))

(declare-fun b!3758410 () Bool)

(declare-fun tp!1148389 () Bool)

(declare-fun inv!53704 (Conc!12265) Bool)

(assert (=> b!3758410 (= e!2324300 (and (inv!53704 (c!650721 v!6366)) tp!1148389))))

(declare-fun tp!1148390 () Bool)

(declare-fun b!3758411 () Bool)

(declare-fun inv!21 (TokenValue!6362) Bool)

(assert (=> b!3758411 (= e!2324301 (and (inv!21 (value!195351 separatorToken!144)) e!2324303 tp!1148390))))

(declare-fun b!3758412 () Bool)

(assert (=> b!3758412 (= e!2324299 e!2324305)))

(declare-fun res!1522151 () Bool)

(assert (=> b!3758412 (=> (not res!1522151) (not e!2324305))))

(declare-fun lt!1301044 () Int)

(assert (=> b!3758412 (= res!1522151 (and (<= from!856 lt!1301044) (isSeparator!6132 (rule!8896 separatorToken!144)) (< from!856 lt!1301044)))))

(declare-fun size!30148 (BalanceConc!24124) Int)

(assert (=> b!3758412 (= lt!1301044 (size!30148 v!6366))))

(assert (= (and start!352740 res!1522152) b!3758412))

(assert (= (and b!3758412 res!1522151) b!3758407))

(assert (= start!352740 b!3758408))

(assert (= b!3758409 b!3758406))

(assert (= b!3758411 b!3758409))

(assert (= start!352740 b!3758411))

(assert (= start!352740 b!3758410))

(declare-fun m!4251587 () Bool)

(assert (=> start!352740 m!4251587))

(declare-fun m!4251589 () Bool)

(assert (=> start!352740 m!4251589))

(declare-fun m!4251591 () Bool)

(assert (=> start!352740 m!4251591))

(declare-fun m!4251593 () Bool)

(assert (=> b!3758412 m!4251593))

(declare-fun m!4251595 () Bool)

(assert (=> b!3758410 m!4251595))

(declare-fun m!4251597 () Bool)

(assert (=> b!3758407 m!4251597))

(declare-fun m!4251599 () Bool)

(assert (=> b!3758407 m!4251599))

(declare-fun m!4251601 () Bool)

(assert (=> b!3758407 m!4251601))

(declare-fun m!4251603 () Bool)

(assert (=> b!3758407 m!4251603))

(declare-fun m!4251605 () Bool)

(assert (=> b!3758407 m!4251605))

(assert (=> b!3758407 m!4251599))

(declare-fun m!4251607 () Bool)

(assert (=> b!3758407 m!4251607))

(declare-fun m!4251609 () Bool)

(assert (=> b!3758407 m!4251609))

(declare-fun m!4251611 () Bool)

(assert (=> b!3758407 m!4251611))

(declare-fun m!4251613 () Bool)

(assert (=> b!3758407 m!4251613))

(declare-fun m!4251615 () Bool)

(assert (=> b!3758407 m!4251615))

(declare-fun m!4251617 () Bool)

(assert (=> b!3758407 m!4251617))

(declare-fun m!4251619 () Bool)

(assert (=> b!3758407 m!4251619))

(assert (=> b!3758407 m!4251609))

(assert (=> b!3758407 m!4251601))

(declare-fun m!4251621 () Bool)

(assert (=> b!3758407 m!4251621))

(assert (=> b!3758407 m!4251607))

(assert (=> b!3758407 m!4251605))

(assert (=> b!3758407 m!4251597))

(declare-fun m!4251623 () Bool)

(assert (=> b!3758407 m!4251623))

(declare-fun m!4251625 () Bool)

(assert (=> b!3758407 m!4251625))

(assert (=> b!3758407 m!4251611))

(declare-fun m!4251627 () Bool)

(assert (=> b!3758407 m!4251627))

(declare-fun m!4251629 () Bool)

(assert (=> b!3758407 m!4251629))

(declare-fun m!4251631 () Bool)

(assert (=> b!3758407 m!4251631))

(assert (=> b!3758407 m!4251627))

(declare-fun m!4251633 () Bool)

(assert (=> b!3758409 m!4251633))

(declare-fun m!4251635 () Bool)

(assert (=> b!3758409 m!4251635))

(declare-fun m!4251637 () Bool)

(assert (=> b!3758408 m!4251637))

(declare-fun m!4251639 () Bool)

(assert (=> b!3758411 m!4251639))

(check-sat b_and!279163 (not b!3758409) (not start!352740) (not b!3758407) b_and!279165 (not b!3758412) (not b_next!101279) (not b!3758410) (not b_next!101277) (not b!3758408) (not b!3758411))
(check-sat b_and!279165 b_and!279163 (not b_next!101279) (not b_next!101277))
(get-model)

(declare-fun d!1097750 () Bool)

(assert (=> d!1097750 (= (inv!53692 (tag!6992 (rule!8896 separatorToken!144))) (= (mod (str.len (value!195350 (tag!6992 (rule!8896 separatorToken!144)))) 2) 0))))

(assert (=> b!3758409 d!1097750))

(declare-fun d!1097752 () Bool)

(declare-fun res!1522165 () Bool)

(declare-fun e!2324318 () Bool)

(assert (=> d!1097752 (=> (not res!1522165) (not e!2324318))))

(declare-fun semiInverseModEq!2625 (Int Int) Bool)

(assert (=> d!1097752 (= res!1522165 (semiInverseModEq!2625 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (toValue!8484 (transformation!6132 (rule!8896 separatorToken!144)))))))

(assert (=> d!1097752 (= (inv!53703 (transformation!6132 (rule!8896 separatorToken!144))) e!2324318)))

(declare-fun b!3758427 () Bool)

(declare-fun equivClasses!2524 (Int Int) Bool)

(assert (=> b!3758427 (= e!2324318 (equivClasses!2524 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (toValue!8484 (transformation!6132 (rule!8896 separatorToken!144)))))))

(assert (= (and d!1097752 res!1522165) b!3758427))

(declare-fun m!4251653 () Bool)

(assert (=> d!1097752 m!4251653))

(declare-fun m!4251655 () Bool)

(assert (=> b!3758427 m!4251655))

(assert (=> b!3758409 d!1097752))

(declare-fun d!1097760 () Bool)

(declare-fun list!14779 (Conc!12265) List!40181)

(assert (=> d!1097760 (= (list!14776 v!6366) (list!14779 (c!650721 v!6366)))))

(declare-fun bs!575669 () Bool)

(assert (= bs!575669 d!1097760))

(declare-fun m!4251657 () Bool)

(assert (=> bs!575669 m!4251657))

(assert (=> b!3758407 d!1097760))

(declare-fun d!1097762 () Bool)

(declare-fun lt!1301051 () Token!11402)

(assert (=> d!1097762 (= lt!1301051 (apply!9433 (list!14776 v!6366) from!856))))

(declare-fun apply!9435 (Conc!12265 Int) Token!11402)

(assert (=> d!1097762 (= lt!1301051 (apply!9435 (c!650721 v!6366) from!856))))

(declare-fun e!2324324 () Bool)

(assert (=> d!1097762 e!2324324))

(declare-fun res!1522171 () Bool)

(assert (=> d!1097762 (=> (not res!1522171) (not e!2324324))))

(assert (=> d!1097762 (= res!1522171 (<= 0 from!856))))

(assert (=> d!1097762 (= (apply!9432 v!6366 from!856) lt!1301051)))

(declare-fun b!3758433 () Bool)

(assert (=> b!3758433 (= e!2324324 (< from!856 (size!30148 v!6366)))))

(assert (= (and d!1097762 res!1522171) b!3758433))

(assert (=> d!1097762 m!4251631))

(assert (=> d!1097762 m!4251631))

(declare-fun m!4251663 () Bool)

(assert (=> d!1097762 m!4251663))

(declare-fun m!4251665 () Bool)

(assert (=> d!1097762 m!4251665))

(assert (=> b!3758433 m!4251593))

(assert (=> b!3758407 d!1097762))

(declare-fun b!3758454 () Bool)

(declare-fun res!1522192 () Bool)

(declare-fun e!2324330 () Bool)

(assert (=> b!3758454 (=> (not res!1522192) (not e!2324330))))

(declare-fun isBalanced!3532 (Conc!12264) Bool)

(declare-fun ++!9926 (Conc!12264 Conc!12264) Conc!12264)

(assert (=> b!3758454 (= res!1522192 (isBalanced!3532 (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144)))))))

(declare-fun b!3758457 () Bool)

(declare-fun lt!1301057 () BalanceConc!24122)

(declare-fun ++!9927 (List!40179 List!40179) List!40179)

(assert (=> b!3758457 (= e!2324330 (= (list!14775 lt!1301057) (++!9927 (list!14775 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (list!14775 (charsOf!3985 separatorToken!144)))))))

(declare-fun b!3758456 () Bool)

(declare-fun res!1522193 () Bool)

(assert (=> b!3758456 (=> (not res!1522193) (not e!2324330))))

(declare-fun height!1750 (Conc!12264) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3758456 (= res!1522193 (>= (height!1750 (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144)))) (max!0 (height!1750 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (height!1750 (c!650719 (charsOf!3985 separatorToken!144))))))))

(declare-fun d!1097768 () Bool)

(assert (=> d!1097768 e!2324330))

(declare-fun res!1522195 () Bool)

(assert (=> d!1097768 (=> (not res!1522195) (not e!2324330))))

(declare-fun appendAssocInst!827 (Conc!12264 Conc!12264) Bool)

(assert (=> d!1097768 (= res!1522195 (appendAssocInst!827 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144))))))

(assert (=> d!1097768 (= lt!1301057 (BalanceConc!24123 (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144)))))))

(assert (=> d!1097768 (= (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)) lt!1301057)))

(declare-fun b!3758455 () Bool)

(declare-fun res!1522194 () Bool)

(assert (=> b!3758455 (=> (not res!1522194) (not e!2324330))))

(assert (=> b!3758455 (= res!1522194 (<= (height!1750 (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144)))) (+ (max!0 (height!1750 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (height!1750 (c!650719 (charsOf!3985 separatorToken!144)))) 1)))))

(assert (= (and d!1097768 res!1522195) b!3758454))

(assert (= (and b!3758454 res!1522192) b!3758455))

(assert (= (and b!3758455 res!1522194) b!3758456))

(assert (= (and b!3758456 res!1522193) b!3758457))

(declare-fun m!4251689 () Bool)

(assert (=> b!3758457 m!4251689))

(assert (=> b!3758457 m!4251599))

(declare-fun m!4251691 () Bool)

(assert (=> b!3758457 m!4251691))

(assert (=> b!3758457 m!4251607))

(declare-fun m!4251693 () Bool)

(assert (=> b!3758457 m!4251693))

(assert (=> b!3758457 m!4251691))

(assert (=> b!3758457 m!4251693))

(declare-fun m!4251695 () Bool)

(assert (=> b!3758457 m!4251695))

(declare-fun m!4251697 () Bool)

(assert (=> b!3758455 m!4251697))

(declare-fun m!4251699 () Bool)

(assert (=> b!3758455 m!4251699))

(declare-fun m!4251701 () Bool)

(assert (=> b!3758455 m!4251701))

(assert (=> b!3758455 m!4251699))

(declare-fun m!4251703 () Bool)

(assert (=> b!3758455 m!4251703))

(assert (=> b!3758455 m!4251701))

(assert (=> b!3758455 m!4251697))

(declare-fun m!4251705 () Bool)

(assert (=> b!3758455 m!4251705))

(assert (=> b!3758454 m!4251699))

(assert (=> b!3758454 m!4251699))

(declare-fun m!4251707 () Bool)

(assert (=> b!3758454 m!4251707))

(declare-fun m!4251709 () Bool)

(assert (=> d!1097768 m!4251709))

(assert (=> d!1097768 m!4251699))

(assert (=> b!3758456 m!4251697))

(assert (=> b!3758456 m!4251699))

(assert (=> b!3758456 m!4251701))

(assert (=> b!3758456 m!4251699))

(assert (=> b!3758456 m!4251703))

(assert (=> b!3758456 m!4251701))

(assert (=> b!3758456 m!4251697))

(assert (=> b!3758456 m!4251705))

(assert (=> b!3758407 d!1097768))

(declare-fun b!3758487 () Bool)

(declare-fun e!2324352 () List!40181)

(assert (=> b!3758487 (= e!2324352 Nil!40057)))

(declare-fun bm!275262 () Bool)

(declare-fun call!275267 () Int)

(declare-fun size!30150 (List!40181) Int)

(assert (=> bm!275262 (= call!275267 (size!30150 lt!1301045))))

(declare-fun d!1097774 () Bool)

(declare-fun e!2324353 () Bool)

(assert (=> d!1097774 e!2324353))

(declare-fun res!1522204 () Bool)

(assert (=> d!1097774 (=> (not res!1522204) (not e!2324353))))

(declare-fun lt!1301069 () List!40181)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5878 (List!40181) (InoxSet Token!11402))

(assert (=> d!1097774 (= res!1522204 (= ((_ map implies) (content!5878 lt!1301069) (content!5878 lt!1301045)) ((as const (InoxSet Token!11402)) true)))))

(assert (=> d!1097774 (= lt!1301069 e!2324352)))

(declare-fun c!650740 () Bool)

(assert (=> d!1097774 (= c!650740 ((_ is Nil!40057) lt!1301045))))

(assert (=> d!1097774 (= (drop!2093 lt!1301045 (+ 1 from!856)) lt!1301069)))

(declare-fun b!3758488 () Bool)

(declare-fun e!2324351 () List!40181)

(assert (=> b!3758488 (= e!2324351 (drop!2093 (t!303688 lt!1301045) (- (+ 1 from!856) 1)))))

(declare-fun b!3758489 () Bool)

(assert (=> b!3758489 (= e!2324352 e!2324351)))

(declare-fun c!650741 () Bool)

(assert (=> b!3758489 (= c!650741 (<= (+ 1 from!856) 0))))

(declare-fun b!3758490 () Bool)

(declare-fun e!2324350 () Int)

(assert (=> b!3758490 (= e!2324353 (= (size!30150 lt!1301069) e!2324350))))

(declare-fun c!650742 () Bool)

(assert (=> b!3758490 (= c!650742 (<= (+ 1 from!856) 0))))

(declare-fun b!3758491 () Bool)

(assert (=> b!3758491 (= e!2324350 call!275267)))

(declare-fun b!3758492 () Bool)

(declare-fun e!2324354 () Int)

(assert (=> b!3758492 (= e!2324354 (- call!275267 (+ 1 from!856)))))

(declare-fun b!3758493 () Bool)

(assert (=> b!3758493 (= e!2324354 0)))

(declare-fun b!3758494 () Bool)

(assert (=> b!3758494 (= e!2324350 e!2324354)))

(declare-fun c!650739 () Bool)

(assert (=> b!3758494 (= c!650739 (>= (+ 1 from!856) call!275267))))

(declare-fun b!3758495 () Bool)

(assert (=> b!3758495 (= e!2324351 lt!1301045)))

(assert (= (and d!1097774 c!650740) b!3758487))

(assert (= (and d!1097774 (not c!650740)) b!3758489))

(assert (= (and b!3758489 c!650741) b!3758495))

(assert (= (and b!3758489 (not c!650741)) b!3758488))

(assert (= (and d!1097774 res!1522204) b!3758490))

(assert (= (and b!3758490 c!650742) b!3758491))

(assert (= (and b!3758490 (not c!650742)) b!3758494))

(assert (= (and b!3758494 c!650739) b!3758493))

(assert (= (and b!3758494 (not c!650739)) b!3758492))

(assert (= (or b!3758491 b!3758494 b!3758492) bm!275262))

(declare-fun m!4251731 () Bool)

(assert (=> bm!275262 m!4251731))

(declare-fun m!4251733 () Bool)

(assert (=> d!1097774 m!4251733))

(declare-fun m!4251735 () Bool)

(assert (=> d!1097774 m!4251735))

(declare-fun m!4251737 () Bool)

(assert (=> b!3758488 m!4251737))

(declare-fun m!4251739 () Bool)

(assert (=> b!3758490 m!4251739))

(assert (=> b!3758407 d!1097774))

(declare-fun d!1097782 () Bool)

(declare-fun lt!1301074 () BalanceConc!24122)

(assert (=> d!1097782 (= (list!14775 lt!1301074) (originalCharacters!6732 (apply!9432 v!6366 from!856)))))

(declare-fun dynLambda!17320 (Int TokenValue!6362) BalanceConc!24122)

(assert (=> d!1097782 (= lt!1301074 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))) (value!195351 (apply!9432 v!6366 from!856))))))

(assert (=> d!1097782 (= (charsOf!3985 (apply!9432 v!6366 from!856)) lt!1301074)))

(declare-fun b_lambda!110253 () Bool)

(assert (=> (not b_lambda!110253) (not d!1097782)))

(declare-fun t!303692 () Bool)

(declare-fun tb!215127 () Bool)

(assert (=> (and b!3758406 (= (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856))))) t!303692) tb!215127))

(declare-fun e!2324367 () Bool)

(declare-fun tp!1148396 () Bool)

(declare-fun b!3758518 () Bool)

(assert (=> b!3758518 (= e!2324367 (and (inv!53702 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))) (value!195351 (apply!9432 v!6366 from!856))))) tp!1148396))))

(declare-fun result!262658 () Bool)

(assert (=> tb!215127 (= result!262658 (and (inv!53699 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))) (value!195351 (apply!9432 v!6366 from!856)))) e!2324367))))

(assert (= tb!215127 b!3758518))

(declare-fun m!4251741 () Bool)

(assert (=> b!3758518 m!4251741))

(declare-fun m!4251743 () Bool)

(assert (=> tb!215127 m!4251743))

(assert (=> d!1097782 t!303692))

(declare-fun b_and!279169 () Bool)

(assert (= b_and!279165 (and (=> t!303692 result!262658) b_and!279169)))

(declare-fun m!4251745 () Bool)

(assert (=> d!1097782 m!4251745))

(declare-fun m!4251747 () Bool)

(assert (=> d!1097782 m!4251747))

(assert (=> b!3758407 d!1097782))

(declare-fun d!1097784 () Bool)

(declare-fun lt!1301132 () List!40179)

(declare-fun printWithSeparatorTokenList!402 (LexerInterface!5721 List!40181 Token!11402) List!40179)

(assert (=> d!1097784 (= lt!1301132 (++!9927 (list!14775 acc!419) (printWithSeparatorTokenList!402 thiss!14060 (dropList!1269 v!6366 from!856) separatorToken!144)))))

(declare-fun e!2324384 () List!40179)

(assert (=> d!1097784 (= lt!1301132 e!2324384)))

(declare-fun c!650763 () Bool)

(assert (=> d!1097784 (= c!650763 ((_ is Cons!40057) (dropList!1269 v!6366 from!856)))))

(assert (=> d!1097784 (isSeparator!6132 (rule!8896 separatorToken!144))))

(assert (=> d!1097784 (= (printWithSeparatorTokenListTailRec!44 thiss!14060 (dropList!1269 v!6366 from!856) separatorToken!144 (list!14775 acc!419)) lt!1301132)))

(declare-fun b!3758547 () Bool)

(assert (=> b!3758547 (= e!2324384 (printWithSeparatorTokenListTailRec!44 thiss!14060 (t!303688 (dropList!1269 v!6366 from!856)) separatorToken!144 (++!9927 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) (list!14775 (charsOf!3985 separatorToken!144)))))))

(declare-fun lt!1301126 () List!40179)

(assert (=> b!3758547 (= lt!1301126 (++!9927 (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856)))) (list!14775 (charsOf!3985 separatorToken!144))))))

(declare-fun lt!1301128 () List!40179)

(assert (=> b!3758547 (= lt!1301128 (printWithSeparatorTokenList!402 thiss!14060 (t!303688 (dropList!1269 v!6366 from!856)) separatorToken!144))))

(declare-fun lt!1301125 () Unit!57784)

(declare-fun lemmaConcatAssociativity!2094 (List!40179 List!40179 List!40179) Unit!57784)

(assert (=> b!3758547 (= lt!1301125 (lemmaConcatAssociativity!2094 (list!14775 acc!419) lt!1301126 lt!1301128))))

(assert (=> b!3758547 (= (++!9927 (++!9927 (list!14775 acc!419) lt!1301126) lt!1301128) (++!9927 (list!14775 acc!419) (++!9927 lt!1301126 lt!1301128)))))

(declare-fun lt!1301127 () Unit!57784)

(assert (=> b!3758547 (= lt!1301127 lt!1301125)))

(declare-fun lt!1301131 () List!40179)

(assert (=> b!3758547 (= lt!1301131 (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856)))))))

(declare-fun lt!1301130 () List!40179)

(assert (=> b!3758547 (= lt!1301130 (list!14775 (charsOf!3985 separatorToken!144)))))

(declare-fun lt!1301129 () Unit!57784)

(assert (=> b!3758547 (= lt!1301129 (lemmaConcatAssociativity!2094 (list!14775 acc!419) lt!1301131 lt!1301130))))

(assert (=> b!3758547 (= (++!9927 (++!9927 (list!14775 acc!419) lt!1301131) lt!1301130) (++!9927 (list!14775 acc!419) (++!9927 lt!1301131 lt!1301130)))))

(declare-fun lt!1301124 () Unit!57784)

(assert (=> b!3758547 (= lt!1301124 lt!1301129)))

(declare-fun b!3758548 () Bool)

(assert (=> b!3758548 (= e!2324384 (list!14775 acc!419))))

(assert (= (and d!1097784 c!650763) b!3758547))

(assert (= (and d!1097784 (not c!650763)) b!3758548))

(assert (=> d!1097784 m!4251611))

(declare-fun m!4251807 () Bool)

(assert (=> d!1097784 m!4251807))

(assert (=> d!1097784 m!4251627))

(assert (=> d!1097784 m!4251807))

(declare-fun m!4251809 () Bool)

(assert (=> d!1097784 m!4251809))

(assert (=> b!3758547 m!4251627))

(declare-fun m!4251811 () Bool)

(assert (=> b!3758547 m!4251811))

(declare-fun m!4251813 () Bool)

(assert (=> b!3758547 m!4251813))

(declare-fun m!4251815 () Bool)

(assert (=> b!3758547 m!4251815))

(declare-fun m!4251817 () Bool)

(assert (=> b!3758547 m!4251817))

(assert (=> b!3758547 m!4251693))

(declare-fun m!4251819 () Bool)

(assert (=> b!3758547 m!4251819))

(assert (=> b!3758547 m!4251627))

(assert (=> b!3758547 m!4251813))

(declare-fun m!4251821 () Bool)

(assert (=> b!3758547 m!4251821))

(declare-fun m!4251823 () Bool)

(assert (=> b!3758547 m!4251823))

(assert (=> b!3758547 m!4251627))

(declare-fun m!4251825 () Bool)

(assert (=> b!3758547 m!4251825))

(assert (=> b!3758547 m!4251825))

(declare-fun m!4251827 () Bool)

(assert (=> b!3758547 m!4251827))

(assert (=> b!3758547 m!4251607))

(assert (=> b!3758547 m!4251693))

(declare-fun m!4251829 () Bool)

(assert (=> b!3758547 m!4251829))

(assert (=> b!3758547 m!4251693))

(declare-fun m!4251831 () Bool)

(assert (=> b!3758547 m!4251831))

(declare-fun m!4251833 () Bool)

(assert (=> b!3758547 m!4251833))

(assert (=> b!3758547 m!4251821))

(assert (=> b!3758547 m!4251829))

(assert (=> b!3758547 m!4251627))

(declare-fun m!4251835 () Bool)

(assert (=> b!3758547 m!4251835))

(declare-fun m!4251837 () Bool)

(assert (=> b!3758547 m!4251837))

(assert (=> b!3758547 m!4251627))

(assert (=> b!3758547 m!4251837))

(declare-fun m!4251839 () Bool)

(assert (=> b!3758547 m!4251839))

(assert (=> b!3758547 m!4251627))

(assert (=> b!3758547 m!4251829))

(assert (=> b!3758547 m!4251817))

(assert (=> b!3758547 m!4251819))

(declare-fun m!4251841 () Bool)

(assert (=> b!3758547 m!4251841))

(assert (=> b!3758547 m!4251607))

(assert (=> b!3758547 m!4251627))

(assert (=> b!3758547 m!4251823))

(declare-fun m!4251843 () Bool)

(assert (=> b!3758547 m!4251843))

(assert (=> b!3758407 d!1097784))

(declare-fun b!3758549 () Bool)

(declare-fun e!2324387 () List!40181)

(assert (=> b!3758549 (= e!2324387 Nil!40057)))

(declare-fun bm!275266 () Bool)

(declare-fun call!275271 () Int)

(assert (=> bm!275266 (= call!275271 (size!30150 lt!1301045))))

(declare-fun d!1097796 () Bool)

(declare-fun e!2324388 () Bool)

(assert (=> d!1097796 e!2324388))

(declare-fun res!1522211 () Bool)

(assert (=> d!1097796 (=> (not res!1522211) (not e!2324388))))

(declare-fun lt!1301133 () List!40181)

(assert (=> d!1097796 (= res!1522211 (= ((_ map implies) (content!5878 lt!1301133) (content!5878 lt!1301045)) ((as const (InoxSet Token!11402)) true)))))

(assert (=> d!1097796 (= lt!1301133 e!2324387)))

(declare-fun c!650765 () Bool)

(assert (=> d!1097796 (= c!650765 ((_ is Nil!40057) lt!1301045))))

(assert (=> d!1097796 (= (drop!2093 lt!1301045 from!856) lt!1301133)))

(declare-fun b!3758550 () Bool)

(declare-fun e!2324386 () List!40181)

(assert (=> b!3758550 (= e!2324386 (drop!2093 (t!303688 lt!1301045) (- from!856 1)))))

(declare-fun b!3758551 () Bool)

(assert (=> b!3758551 (= e!2324387 e!2324386)))

(declare-fun c!650766 () Bool)

(assert (=> b!3758551 (= c!650766 (<= from!856 0))))

(declare-fun b!3758552 () Bool)

(declare-fun e!2324385 () Int)

(assert (=> b!3758552 (= e!2324388 (= (size!30150 lt!1301133) e!2324385))))

(declare-fun c!650767 () Bool)

(assert (=> b!3758552 (= c!650767 (<= from!856 0))))

(declare-fun b!3758553 () Bool)

(assert (=> b!3758553 (= e!2324385 call!275271)))

(declare-fun b!3758554 () Bool)

(declare-fun e!2324389 () Int)

(assert (=> b!3758554 (= e!2324389 (- call!275271 from!856))))

(declare-fun b!3758555 () Bool)

(assert (=> b!3758555 (= e!2324389 0)))

(declare-fun b!3758556 () Bool)

(assert (=> b!3758556 (= e!2324385 e!2324389)))

(declare-fun c!650764 () Bool)

(assert (=> b!3758556 (= c!650764 (>= from!856 call!275271))))

(declare-fun b!3758557 () Bool)

(assert (=> b!3758557 (= e!2324386 lt!1301045)))

(assert (= (and d!1097796 c!650765) b!3758549))

(assert (= (and d!1097796 (not c!650765)) b!3758551))

(assert (= (and b!3758551 c!650766) b!3758557))

(assert (= (and b!3758551 (not c!650766)) b!3758550))

(assert (= (and d!1097796 res!1522211) b!3758552))

(assert (= (and b!3758552 c!650767) b!3758553))

(assert (= (and b!3758552 (not c!650767)) b!3758556))

(assert (= (and b!3758556 c!650764) b!3758555))

(assert (= (and b!3758556 (not c!650764)) b!3758554))

(assert (= (or b!3758553 b!3758556 b!3758554) bm!275266))

(assert (=> bm!275266 m!4251731))

(declare-fun m!4251845 () Bool)

(assert (=> d!1097796 m!4251845))

(assert (=> d!1097796 m!4251735))

(declare-fun m!4251847 () Bool)

(assert (=> b!3758550 m!4251847))

(declare-fun m!4251849 () Bool)

(assert (=> b!3758552 m!4251849))

(assert (=> b!3758407 d!1097796))

(declare-fun d!1097798 () Bool)

(assert (=> d!1097798 (= (dropList!1269 v!6366 from!856) (drop!2093 (list!14779 (c!650721 v!6366)) from!856))))

(declare-fun bs!575672 () Bool)

(assert (= bs!575672 d!1097798))

(assert (=> bs!575672 m!4251657))

(assert (=> bs!575672 m!4251657))

(declare-fun m!4251851 () Bool)

(assert (=> bs!575672 m!4251851))

(assert (=> b!3758407 d!1097798))

(declare-fun d!1097800 () Bool)

(declare-fun lt!1301180 () BalanceConc!24122)

(assert (=> d!1097800 (= (list!14775 lt!1301180) (printWithSeparatorTokenListTailRec!44 thiss!14060 (dropList!1269 v!6366 (+ 1 from!856)) separatorToken!144 (list!14775 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)))))))

(declare-fun e!2324443 () BalanceConc!24122)

(assert (=> d!1097800 (= lt!1301180 e!2324443)))

(declare-fun c!650786 () Bool)

(assert (=> d!1097800 (= c!650786 (>= (+ 1 from!856) (size!30148 v!6366)))))

(declare-fun e!2324444 () Bool)

(assert (=> d!1097800 e!2324444))

(declare-fun res!1522234 () Bool)

(assert (=> d!1097800 (=> (not res!1522234) (not e!2324444))))

(assert (=> d!1097800 (= res!1522234 (>= (+ 1 from!856) 0))))

(assert (=> d!1097800 (= (printWithSeparatorTokenTailRec!82 thiss!14060 v!6366 separatorToken!144 (+ 1 from!856) (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))) lt!1301180)))

(declare-fun b!3758658 () Bool)

(assert (=> b!3758658 (= e!2324444 (<= (+ 1 from!856) (size!30148 v!6366)))))

(declare-fun b!3758659 () Bool)

(assert (=> b!3758659 (= e!2324443 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)))))

(declare-fun b!3758660 () Bool)

(assert (=> b!3758660 (= e!2324443 (printWithSeparatorTokenTailRec!82 thiss!14060 v!6366 separatorToken!144 (+ 1 from!856 1) (++!9923 (++!9923 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)) (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856)))) (charsOf!3985 separatorToken!144))))))

(declare-fun lt!1301178 () List!40181)

(assert (=> b!3758660 (= lt!1301178 (list!14776 v!6366))))

(declare-fun lt!1301179 () Unit!57784)

(assert (=> b!3758660 (= lt!1301179 (lemmaDropApply!1229 lt!1301178 (+ 1 from!856)))))

(assert (=> b!3758660 (= (head!8035 (drop!2093 lt!1301178 (+ 1 from!856))) (apply!9433 lt!1301178 (+ 1 from!856)))))

(declare-fun lt!1301181 () Unit!57784)

(assert (=> b!3758660 (= lt!1301181 lt!1301179)))

(declare-fun lt!1301175 () List!40181)

(assert (=> b!3758660 (= lt!1301175 (list!14776 v!6366))))

(declare-fun lt!1301177 () Unit!57784)

(assert (=> b!3758660 (= lt!1301177 (lemmaDropTail!1113 lt!1301175 (+ 1 from!856)))))

(assert (=> b!3758660 (= (tail!5762 (drop!2093 lt!1301175 (+ 1 from!856))) (drop!2093 lt!1301175 (+ 1 from!856 1)))))

(declare-fun lt!1301176 () Unit!57784)

(assert (=> b!3758660 (= lt!1301176 lt!1301177)))

(assert (= (and d!1097800 res!1522234) b!3758658))

(assert (= (and d!1097800 c!650786) b!3758659))

(assert (= (and d!1097800 (not c!650786)) b!3758660))

(declare-fun m!4251957 () Bool)

(assert (=> d!1097800 m!4251957))

(assert (=> d!1097800 m!4251609))

(declare-fun m!4251959 () Bool)

(assert (=> d!1097800 m!4251959))

(assert (=> d!1097800 m!4251957))

(assert (=> d!1097800 m!4251959))

(declare-fun m!4251961 () Bool)

(assert (=> d!1097800 m!4251961))

(assert (=> d!1097800 m!4251593))

(declare-fun m!4251963 () Bool)

(assert (=> d!1097800 m!4251963))

(assert (=> b!3758658 m!4251593))

(assert (=> b!3758660 m!4251631))

(declare-fun m!4251965 () Bool)

(assert (=> b!3758660 m!4251965))

(declare-fun m!4251967 () Bool)

(assert (=> b!3758660 m!4251967))

(declare-fun m!4251969 () Bool)

(assert (=> b!3758660 m!4251969))

(declare-fun m!4251971 () Bool)

(assert (=> b!3758660 m!4251971))

(declare-fun m!4251973 () Bool)

(assert (=> b!3758660 m!4251973))

(assert (=> b!3758660 m!4251607))

(declare-fun m!4251975 () Bool)

(assert (=> b!3758660 m!4251975))

(assert (=> b!3758660 m!4251965))

(declare-fun m!4251977 () Bool)

(assert (=> b!3758660 m!4251977))

(declare-fun m!4251979 () Bool)

(assert (=> b!3758660 m!4251979))

(declare-fun m!4251981 () Bool)

(assert (=> b!3758660 m!4251981))

(assert (=> b!3758660 m!4251975))

(declare-fun m!4251983 () Bool)

(assert (=> b!3758660 m!4251983))

(assert (=> b!3758660 m!4251609))

(assert (=> b!3758660 m!4251967))

(assert (=> b!3758660 m!4251973))

(declare-fun m!4251985 () Bool)

(assert (=> b!3758660 m!4251985))

(assert (=> b!3758660 m!4251607))

(assert (=> b!3758660 m!4251985))

(declare-fun m!4251987 () Bool)

(assert (=> b!3758660 m!4251987))

(declare-fun m!4251989 () Bool)

(assert (=> b!3758660 m!4251989))

(assert (=> b!3758660 m!4251979))

(assert (=> b!3758407 d!1097800))

(declare-fun d!1097820 () Bool)

(assert (=> d!1097820 (= (head!8035 (drop!2093 lt!1301045 from!856)) (apply!9433 lt!1301045 from!856))))

(declare-fun lt!1301184 () Unit!57784)

(declare-fun choose!22271 (List!40181 Int) Unit!57784)

(assert (=> d!1097820 (= lt!1301184 (choose!22271 lt!1301045 from!856))))

(declare-fun e!2324447 () Bool)

(assert (=> d!1097820 e!2324447))

(declare-fun res!1522237 () Bool)

(assert (=> d!1097820 (=> (not res!1522237) (not e!2324447))))

(assert (=> d!1097820 (= res!1522237 (>= from!856 0))))

(assert (=> d!1097820 (= (lemmaDropApply!1229 lt!1301045 from!856) lt!1301184)))

(declare-fun b!3758663 () Bool)

(assert (=> b!3758663 (= e!2324447 (< from!856 (size!30150 lt!1301045)))))

(assert (= (and d!1097820 res!1522237) b!3758663))

(assert (=> d!1097820 m!4251617))

(assert (=> d!1097820 m!4251617))

(declare-fun m!4251991 () Bool)

(assert (=> d!1097820 m!4251991))

(assert (=> d!1097820 m!4251613))

(declare-fun m!4251993 () Bool)

(assert (=> d!1097820 m!4251993))

(assert (=> b!3758663 m!4251731))

(assert (=> b!3758407 d!1097820))

(declare-fun d!1097822 () Bool)

(assert (=> d!1097822 (= (tail!5762 lt!1301043) (t!303688 lt!1301043))))

(assert (=> b!3758407 d!1097822))

(declare-fun d!1097824 () Bool)

(declare-fun list!14780 (Conc!12264) List!40179)

(assert (=> d!1097824 (= (list!14775 (printWithSeparatorTokenTailRec!82 thiss!14060 v!6366 separatorToken!144 (+ 1 from!856) (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)))) (list!14780 (c!650719 (printWithSeparatorTokenTailRec!82 thiss!14060 v!6366 separatorToken!144 (+ 1 from!856) (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))))))))

(declare-fun bs!575676 () Bool)

(assert (= bs!575676 d!1097824))

(declare-fun m!4251995 () Bool)

(assert (=> bs!575676 m!4251995))

(assert (=> b!3758407 d!1097824))

(declare-fun d!1097826 () Bool)

(assert (=> d!1097826 (= (head!8035 lt!1301043) (h!45477 lt!1301043))))

(assert (=> b!3758407 d!1097826))

(declare-fun d!1097828 () Bool)

(declare-fun lt!1301187 () Token!11402)

(declare-fun contains!8166 (List!40181 Token!11402) Bool)

(assert (=> d!1097828 (contains!8166 lt!1301045 lt!1301187)))

(declare-fun e!2324453 () Token!11402)

(assert (=> d!1097828 (= lt!1301187 e!2324453)))

(declare-fun c!650789 () Bool)

(assert (=> d!1097828 (= c!650789 (= from!856 0))))

(declare-fun e!2324452 () Bool)

(assert (=> d!1097828 e!2324452))

(declare-fun res!1522240 () Bool)

(assert (=> d!1097828 (=> (not res!1522240) (not e!2324452))))

(assert (=> d!1097828 (= res!1522240 (<= 0 from!856))))

(assert (=> d!1097828 (= (apply!9433 lt!1301045 from!856) lt!1301187)))

(declare-fun b!3758670 () Bool)

(assert (=> b!3758670 (= e!2324452 (< from!856 (size!30150 lt!1301045)))))

(declare-fun b!3758671 () Bool)

(assert (=> b!3758671 (= e!2324453 (head!8035 lt!1301045))))

(declare-fun b!3758672 () Bool)

(assert (=> b!3758672 (= e!2324453 (apply!9433 (tail!5762 lt!1301045) (- from!856 1)))))

(assert (= (and d!1097828 res!1522240) b!3758670))

(assert (= (and d!1097828 c!650789) b!3758671))

(assert (= (and d!1097828 (not c!650789)) b!3758672))

(declare-fun m!4251997 () Bool)

(assert (=> d!1097828 m!4251997))

(assert (=> b!3758670 m!4251731))

(declare-fun m!4251999 () Bool)

(assert (=> b!3758671 m!4251999))

(declare-fun m!4252001 () Bool)

(assert (=> b!3758672 m!4252001))

(assert (=> b!3758672 m!4252001))

(declare-fun m!4252003 () Bool)

(assert (=> b!3758672 m!4252003))

(assert (=> b!3758407 d!1097828))

(declare-fun d!1097830 () Bool)

(assert (=> d!1097830 (= (list!14775 acc!419) (list!14780 (c!650719 acc!419)))))

(declare-fun bs!575677 () Bool)

(assert (= bs!575677 d!1097830))

(declare-fun m!4252005 () Bool)

(assert (=> bs!575677 m!4252005))

(assert (=> b!3758407 d!1097830))

(declare-fun d!1097832 () Bool)

(assert (=> d!1097832 (= (tail!5762 (drop!2093 lt!1301045 from!856)) (drop!2093 lt!1301045 (+ from!856 1)))))

(declare-fun lt!1301190 () Unit!57784)

(declare-fun choose!22272 (List!40181 Int) Unit!57784)

(assert (=> d!1097832 (= lt!1301190 (choose!22272 lt!1301045 from!856))))

(declare-fun e!2324456 () Bool)

(assert (=> d!1097832 e!2324456))

(declare-fun res!1522243 () Bool)

(assert (=> d!1097832 (=> (not res!1522243) (not e!2324456))))

(assert (=> d!1097832 (= res!1522243 (>= from!856 0))))

(assert (=> d!1097832 (= (lemmaDropTail!1113 lt!1301045 from!856) lt!1301190)))

(declare-fun b!3758675 () Bool)

(assert (=> b!3758675 (= e!2324456 (< from!856 (size!30150 lt!1301045)))))

(assert (= (and d!1097832 res!1522243) b!3758675))

(assert (=> d!1097832 m!4251617))

(assert (=> d!1097832 m!4251617))

(declare-fun m!4252007 () Bool)

(assert (=> d!1097832 m!4252007))

(declare-fun m!4252009 () Bool)

(assert (=> d!1097832 m!4252009))

(declare-fun m!4252011 () Bool)

(assert (=> d!1097832 m!4252011))

(assert (=> b!3758675 m!4251731))

(assert (=> b!3758407 d!1097832))

(declare-fun b!3758676 () Bool)

(declare-fun res!1522244 () Bool)

(declare-fun e!2324457 () Bool)

(assert (=> b!3758676 (=> (not res!1522244) (not e!2324457))))

(assert (=> b!3758676 (= res!1522244 (isBalanced!3532 (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))))))

(declare-fun b!3758679 () Bool)

(declare-fun lt!1301191 () BalanceConc!24122)

(assert (=> b!3758679 (= e!2324457 (= (list!14775 lt!1301191) (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (apply!9432 v!6366 from!856))))))))

(declare-fun b!3758678 () Bool)

(declare-fun res!1522245 () Bool)

(assert (=> b!3758678 (=> (not res!1522245) (not e!2324457))))

(assert (=> b!3758678 (= res!1522245 (>= (height!1750 (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))) (max!0 (height!1750 (c!650719 acc!419)) (height!1750 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(declare-fun d!1097834 () Bool)

(assert (=> d!1097834 e!2324457))

(declare-fun res!1522247 () Bool)

(assert (=> d!1097834 (=> (not res!1522247) (not e!2324457))))

(assert (=> d!1097834 (= res!1522247 (appendAssocInst!827 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))

(assert (=> d!1097834 (= lt!1301191 (BalanceConc!24123 (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))))))

(assert (=> d!1097834 (= (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) lt!1301191)))

(declare-fun b!3758677 () Bool)

(declare-fun res!1522246 () Bool)

(assert (=> b!3758677 (=> (not res!1522246) (not e!2324457))))

(assert (=> b!3758677 (= res!1522246 (<= (height!1750 (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))) (+ (max!0 (height!1750 (c!650719 acc!419)) (height!1750 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))) 1)))))

(assert (= (and d!1097834 res!1522247) b!3758676))

(assert (= (and b!3758676 res!1522244) b!3758677))

(assert (= (and b!3758677 res!1522246) b!3758678))

(assert (= (and b!3758678 res!1522245) b!3758679))

(declare-fun m!4252013 () Bool)

(assert (=> b!3758679 m!4252013))

(assert (=> b!3758679 m!4251627))

(assert (=> b!3758679 m!4251597))

(declare-fun m!4252015 () Bool)

(assert (=> b!3758679 m!4252015))

(assert (=> b!3758679 m!4251627))

(assert (=> b!3758679 m!4252015))

(declare-fun m!4252017 () Bool)

(assert (=> b!3758679 m!4252017))

(declare-fun m!4252019 () Bool)

(assert (=> b!3758677 m!4252019))

(declare-fun m!4252021 () Bool)

(assert (=> b!3758677 m!4252021))

(declare-fun m!4252023 () Bool)

(assert (=> b!3758677 m!4252023))

(assert (=> b!3758677 m!4252021))

(declare-fun m!4252025 () Bool)

(assert (=> b!3758677 m!4252025))

(assert (=> b!3758677 m!4252023))

(assert (=> b!3758677 m!4252019))

(declare-fun m!4252027 () Bool)

(assert (=> b!3758677 m!4252027))

(assert (=> b!3758676 m!4252021))

(assert (=> b!3758676 m!4252021))

(declare-fun m!4252029 () Bool)

(assert (=> b!3758676 m!4252029))

(declare-fun m!4252031 () Bool)

(assert (=> d!1097834 m!4252031))

(assert (=> d!1097834 m!4252021))

(assert (=> b!3758678 m!4252019))

(assert (=> b!3758678 m!4252021))

(assert (=> b!3758678 m!4252023))

(assert (=> b!3758678 m!4252021))

(assert (=> b!3758678 m!4252025))

(assert (=> b!3758678 m!4252023))

(assert (=> b!3758678 m!4252019))

(assert (=> b!3758678 m!4252027))

(assert (=> b!3758407 d!1097834))

(declare-fun d!1097836 () Bool)

(declare-fun lt!1301192 () BalanceConc!24122)

(assert (=> d!1097836 (= (list!14775 lt!1301192) (originalCharacters!6732 separatorToken!144))))

(assert (=> d!1097836 (= lt!1301192 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144)))))

(assert (=> d!1097836 (= (charsOf!3985 separatorToken!144) lt!1301192)))

(declare-fun b_lambda!110263 () Bool)

(assert (=> (not b_lambda!110263) (not d!1097836)))

(declare-fun t!303696 () Bool)

(declare-fun tb!215131 () Bool)

(assert (=> (and b!3758406 (= (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144)))) t!303696) tb!215131))

(declare-fun b!3758680 () Bool)

(declare-fun e!2324458 () Bool)

(declare-fun tp!1148434 () Bool)

(assert (=> b!3758680 (= e!2324458 (and (inv!53702 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144)))) tp!1148434))))

(declare-fun result!262672 () Bool)

(assert (=> tb!215131 (= result!262672 (and (inv!53699 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144))) e!2324458))))

(assert (= tb!215131 b!3758680))

(declare-fun m!4252033 () Bool)

(assert (=> b!3758680 m!4252033))

(declare-fun m!4252035 () Bool)

(assert (=> tb!215131 m!4252035))

(assert (=> d!1097836 t!303696))

(declare-fun b_and!279175 () Bool)

(assert (= b_and!279169 (and (=> t!303696 result!262672) b_and!279175)))

(declare-fun m!4252037 () Bool)

(assert (=> d!1097836 m!4252037))

(declare-fun m!4252039 () Bool)

(assert (=> d!1097836 m!4252039))

(assert (=> b!3758407 d!1097836))

(declare-fun d!1097838 () Bool)

(declare-fun c!650792 () Bool)

(assert (=> d!1097838 (= c!650792 ((_ is Node!12264) (c!650719 acc!419)))))

(declare-fun e!2324463 () Bool)

(assert (=> d!1097838 (= (inv!53702 (c!650719 acc!419)) e!2324463)))

(declare-fun b!3758687 () Bool)

(declare-fun inv!53711 (Conc!12264) Bool)

(assert (=> b!3758687 (= e!2324463 (inv!53711 (c!650719 acc!419)))))

(declare-fun b!3758688 () Bool)

(declare-fun e!2324464 () Bool)

(assert (=> b!3758688 (= e!2324463 e!2324464)))

(declare-fun res!1522250 () Bool)

(assert (=> b!3758688 (= res!1522250 (not ((_ is Leaf!19022) (c!650719 acc!419))))))

(assert (=> b!3758688 (=> res!1522250 e!2324464)))

(declare-fun b!3758689 () Bool)

(declare-fun inv!53712 (Conc!12264) Bool)

(assert (=> b!3758689 (= e!2324464 (inv!53712 (c!650719 acc!419)))))

(assert (= (and d!1097838 c!650792) b!3758687))

(assert (= (and d!1097838 (not c!650792)) b!3758688))

(assert (= (and b!3758688 (not res!1522250)) b!3758689))

(declare-fun m!4252041 () Bool)

(assert (=> b!3758687 m!4252041))

(declare-fun m!4252043 () Bool)

(assert (=> b!3758689 m!4252043))

(assert (=> b!3758408 d!1097838))

(declare-fun b!3758700 () Bool)

(declare-fun res!1522253 () Bool)

(declare-fun e!2324473 () Bool)

(assert (=> b!3758700 (=> res!1522253 e!2324473)))

(assert (=> b!3758700 (= res!1522253 (not ((_ is IntegerValue!19088) (value!195351 separatorToken!144))))))

(declare-fun e!2324471 () Bool)

(assert (=> b!3758700 (= e!2324471 e!2324473)))

(declare-fun b!3758701 () Bool)

(declare-fun e!2324472 () Bool)

(declare-fun inv!16 (TokenValue!6362) Bool)

(assert (=> b!3758701 (= e!2324472 (inv!16 (value!195351 separatorToken!144)))))

(declare-fun b!3758702 () Bool)

(declare-fun inv!15 (TokenValue!6362) Bool)

(assert (=> b!3758702 (= e!2324473 (inv!15 (value!195351 separatorToken!144)))))

(declare-fun b!3758703 () Bool)

(declare-fun inv!17 (TokenValue!6362) Bool)

(assert (=> b!3758703 (= e!2324471 (inv!17 (value!195351 separatorToken!144)))))

(declare-fun b!3758704 () Bool)

(assert (=> b!3758704 (= e!2324472 e!2324471)))

(declare-fun c!650798 () Bool)

(assert (=> b!3758704 (= c!650798 ((_ is IntegerValue!19087) (value!195351 separatorToken!144)))))

(declare-fun d!1097840 () Bool)

(declare-fun c!650797 () Bool)

(assert (=> d!1097840 (= c!650797 ((_ is IntegerValue!19086) (value!195351 separatorToken!144)))))

(assert (=> d!1097840 (= (inv!21 (value!195351 separatorToken!144)) e!2324472)))

(assert (= (and d!1097840 c!650797) b!3758701))

(assert (= (and d!1097840 (not c!650797)) b!3758704))

(assert (= (and b!3758704 c!650798) b!3758703))

(assert (= (and b!3758704 (not c!650798)) b!3758700))

(assert (= (and b!3758700 (not res!1522253)) b!3758702))

(declare-fun m!4252045 () Bool)

(assert (=> b!3758701 m!4252045))

(declare-fun m!4252047 () Bool)

(assert (=> b!3758702 m!4252047))

(declare-fun m!4252049 () Bool)

(assert (=> b!3758703 m!4252049))

(assert (=> b!3758411 d!1097840))

(declare-fun d!1097842 () Bool)

(declare-fun lt!1301195 () Int)

(assert (=> d!1097842 (= lt!1301195 (size!30150 (list!14776 v!6366)))))

(declare-fun size!30153 (Conc!12265) Int)

(assert (=> d!1097842 (= lt!1301195 (size!30153 (c!650721 v!6366)))))

(assert (=> d!1097842 (= (size!30148 v!6366) lt!1301195)))

(declare-fun bs!575678 () Bool)

(assert (= bs!575678 d!1097842))

(assert (=> bs!575678 m!4251631))

(assert (=> bs!575678 m!4251631))

(declare-fun m!4252051 () Bool)

(assert (=> bs!575678 m!4252051))

(declare-fun m!4252053 () Bool)

(assert (=> bs!575678 m!4252053))

(assert (=> b!3758412 d!1097842))

(declare-fun d!1097844 () Bool)

(declare-fun c!650801 () Bool)

(assert (=> d!1097844 (= c!650801 ((_ is Node!12265) (c!650721 v!6366)))))

(declare-fun e!2324478 () Bool)

(assert (=> d!1097844 (= (inv!53704 (c!650721 v!6366)) e!2324478)))

(declare-fun b!3758711 () Bool)

(declare-fun inv!53713 (Conc!12265) Bool)

(assert (=> b!3758711 (= e!2324478 (inv!53713 (c!650721 v!6366)))))

(declare-fun b!3758712 () Bool)

(declare-fun e!2324479 () Bool)

(assert (=> b!3758712 (= e!2324478 e!2324479)))

(declare-fun res!1522256 () Bool)

(assert (=> b!3758712 (= res!1522256 (not ((_ is Leaf!19023) (c!650721 v!6366))))))

(assert (=> b!3758712 (=> res!1522256 e!2324479)))

(declare-fun b!3758713 () Bool)

(declare-fun inv!53714 (Conc!12265) Bool)

(assert (=> b!3758713 (= e!2324479 (inv!53714 (c!650721 v!6366)))))

(assert (= (and d!1097844 c!650801) b!3758711))

(assert (= (and d!1097844 (not c!650801)) b!3758712))

(assert (= (and b!3758712 (not res!1522256)) b!3758713))

(declare-fun m!4252055 () Bool)

(assert (=> b!3758711 m!4252055))

(declare-fun m!4252057 () Bool)

(assert (=> b!3758713 m!4252057))

(assert (=> b!3758410 d!1097844))

(declare-fun d!1097846 () Bool)

(assert (=> d!1097846 (= (inv!53699 acc!419) (isBalanced!3532 (c!650719 acc!419)))))

(declare-fun bs!575679 () Bool)

(assert (= bs!575679 d!1097846))

(declare-fun m!4252059 () Bool)

(assert (=> bs!575679 m!4252059))

(assert (=> start!352740 d!1097846))

(declare-fun d!1097848 () Bool)

(declare-fun res!1522261 () Bool)

(declare-fun e!2324482 () Bool)

(assert (=> d!1097848 (=> (not res!1522261) (not e!2324482))))

(declare-fun isEmpty!23565 (List!40179) Bool)

(assert (=> d!1097848 (= res!1522261 (not (isEmpty!23565 (originalCharacters!6732 separatorToken!144))))))

(assert (=> d!1097848 (= (inv!53700 separatorToken!144) e!2324482)))

(declare-fun b!3758718 () Bool)

(declare-fun res!1522262 () Bool)

(assert (=> b!3758718 (=> (not res!1522262) (not e!2324482))))

(assert (=> b!3758718 (= res!1522262 (= (originalCharacters!6732 separatorToken!144) (list!14775 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144)))))))

(declare-fun b!3758719 () Bool)

(declare-fun size!30154 (List!40179) Int)

(assert (=> b!3758719 (= e!2324482 (= (size!30147 separatorToken!144) (size!30154 (originalCharacters!6732 separatorToken!144))))))

(assert (= (and d!1097848 res!1522261) b!3758718))

(assert (= (and b!3758718 res!1522262) b!3758719))

(declare-fun b_lambda!110265 () Bool)

(assert (=> (not b_lambda!110265) (not b!3758718)))

(assert (=> b!3758718 t!303696))

(declare-fun b_and!279177 () Bool)

(assert (= b_and!279175 (and (=> t!303696 result!262672) b_and!279177)))

(declare-fun m!4252061 () Bool)

(assert (=> d!1097848 m!4252061))

(assert (=> b!3758718 m!4252039))

(assert (=> b!3758718 m!4252039))

(declare-fun m!4252063 () Bool)

(assert (=> b!3758718 m!4252063))

(declare-fun m!4252065 () Bool)

(assert (=> b!3758719 m!4252065))

(assert (=> start!352740 d!1097848))

(declare-fun d!1097850 () Bool)

(declare-fun isBalanced!3534 (Conc!12265) Bool)

(assert (=> d!1097850 (= (inv!53701 v!6366) (isBalanced!3534 (c!650721 v!6366)))))

(declare-fun bs!575680 () Bool)

(assert (= bs!575680 d!1097850))

(declare-fun m!4252067 () Bool)

(assert (=> bs!575680 m!4252067))

(assert (=> start!352740 d!1097850))

(declare-fun b!3758732 () Bool)

(declare-fun e!2324485 () Bool)

(declare-fun tp!1148447 () Bool)

(assert (=> b!3758732 (= e!2324485 tp!1148447)))

(declare-fun b!3758730 () Bool)

(declare-fun tp_is_empty!19073 () Bool)

(assert (=> b!3758730 (= e!2324485 tp_is_empty!19073)))

(declare-fun b!3758731 () Bool)

(declare-fun tp!1148449 () Bool)

(declare-fun tp!1148446 () Bool)

(assert (=> b!3758731 (= e!2324485 (and tp!1148449 tp!1148446))))

(assert (=> b!3758409 (= tp!1148385 e!2324485)))

(declare-fun b!3758733 () Bool)

(declare-fun tp!1148445 () Bool)

(declare-fun tp!1148448 () Bool)

(assert (=> b!3758733 (= e!2324485 (and tp!1148445 tp!1148448))))

(assert (= (and b!3758409 ((_ is ElementMatch!11037) (regex!6132 (rule!8896 separatorToken!144)))) b!3758730))

(assert (= (and b!3758409 ((_ is Concat!17400) (regex!6132 (rule!8896 separatorToken!144)))) b!3758731))

(assert (= (and b!3758409 ((_ is Star!11037) (regex!6132 (rule!8896 separatorToken!144)))) b!3758732))

(assert (= (and b!3758409 ((_ is Union!11037) (regex!6132 (rule!8896 separatorToken!144)))) b!3758733))

(declare-fun tp!1148457 () Bool)

(declare-fun tp!1148458 () Bool)

(declare-fun e!2324490 () Bool)

(declare-fun b!3758742 () Bool)

(assert (=> b!3758742 (= e!2324490 (and (inv!53702 (left!31017 (c!650719 acc!419))) tp!1148458 (inv!53702 (right!31347 (c!650719 acc!419))) tp!1148457))))

(declare-fun b!3758744 () Bool)

(declare-fun e!2324491 () Bool)

(declare-fun tp!1148456 () Bool)

(assert (=> b!3758744 (= e!2324491 tp!1148456)))

(declare-fun b!3758743 () Bool)

(declare-fun inv!53715 (IArray!24533) Bool)

(assert (=> b!3758743 (= e!2324490 (and (inv!53715 (xs!15466 (c!650719 acc!419))) e!2324491))))

(assert (=> b!3758408 (= tp!1148387 (and (inv!53702 (c!650719 acc!419)) e!2324490))))

(assert (= (and b!3758408 ((_ is Node!12264) (c!650719 acc!419))) b!3758742))

(assert (= b!3758743 b!3758744))

(assert (= (and b!3758408 ((_ is Leaf!19022) (c!650719 acc!419))) b!3758743))

(declare-fun m!4252069 () Bool)

(assert (=> b!3758742 m!4252069))

(declare-fun m!4252071 () Bool)

(assert (=> b!3758742 m!4252071))

(declare-fun m!4252073 () Bool)

(assert (=> b!3758743 m!4252073))

(assert (=> b!3758408 m!4251637))

(declare-fun b!3758749 () Bool)

(declare-fun e!2324494 () Bool)

(declare-fun tp!1148461 () Bool)

(assert (=> b!3758749 (= e!2324494 (and tp_is_empty!19073 tp!1148461))))

(assert (=> b!3758411 (= tp!1148390 e!2324494)))

(assert (= (and b!3758411 ((_ is Cons!40055) (originalCharacters!6732 separatorToken!144))) b!3758749))

(declare-fun tp!1148468 () Bool)

(declare-fun b!3758758 () Bool)

(declare-fun tp!1148469 () Bool)

(declare-fun e!2324499 () Bool)

(assert (=> b!3758758 (= e!2324499 (and (inv!53704 (left!31018 (c!650721 v!6366))) tp!1148468 (inv!53704 (right!31348 (c!650721 v!6366))) tp!1148469))))

(declare-fun b!3758760 () Bool)

(declare-fun e!2324500 () Bool)

(declare-fun tp!1148470 () Bool)

(assert (=> b!3758760 (= e!2324500 tp!1148470)))

(declare-fun b!3758759 () Bool)

(declare-fun inv!53716 (IArray!24535) Bool)

(assert (=> b!3758759 (= e!2324499 (and (inv!53716 (xs!15467 (c!650721 v!6366))) e!2324500))))

(assert (=> b!3758410 (= tp!1148389 (and (inv!53704 (c!650721 v!6366)) e!2324499))))

(assert (= (and b!3758410 ((_ is Node!12265) (c!650721 v!6366))) b!3758758))

(assert (= b!3758759 b!3758760))

(assert (= (and b!3758410 ((_ is Leaf!19023) (c!650721 v!6366))) b!3758759))

(declare-fun m!4252075 () Bool)

(assert (=> b!3758758 m!4252075))

(declare-fun m!4252077 () Bool)

(assert (=> b!3758758 m!4252077))

(declare-fun m!4252079 () Bool)

(assert (=> b!3758759 m!4252079))

(assert (=> b!3758410 m!4251595))

(declare-fun b_lambda!110267 () Bool)

(assert (= b_lambda!110265 (or (and b!3758406 b_free!100575) b_lambda!110267)))

(declare-fun b_lambda!110269 () Bool)

(assert (= b_lambda!110263 (or (and b!3758406 b_free!100575) b_lambda!110269)))

(check-sat (not b!3758678) (not b!3758550) (not b!3758679) (not b_next!101277) (not b!3758677) (not b!3758689) b_and!279163 (not d!1097774) (not b!3758547) (not b!3758675) (not b!3758703) (not b!3758427) (not bm!275266) (not b!3758701) (not d!1097846) (not b!3758552) (not tb!215127) (not b!3758719) (not b!3758749) (not bm!275262) tp_is_empty!19073 (not d!1097850) (not d!1097848) (not b!3758670) (not b!3758660) (not b!3758433) (not d!1097784) (not b!3758711) (not d!1097782) (not b!3758687) (not b!3758742) (not d!1097842) (not d!1097798) (not b!3758731) (not b!3758456) (not d!1097796) (not b!3758760) (not b_next!101279) (not b!3758663) (not b!3758732) (not b!3758457) (not d!1097768) (not tb!215131) (not b!3758672) (not b_lambda!110269) (not b!3758518) (not d!1097828) (not b!3758733) (not b!3758410) (not d!1097800) (not b!3758713) (not b!3758676) (not b!3758658) (not d!1097830) (not d!1097832) (not d!1097760) b_and!279177 (not d!1097834) (not b!3758759) (not b!3758454) (not b!3758743) (not b!3758455) (not b!3758488) (not b!3758408) (not b!3758758) (not d!1097762) (not b!3758671) (not b_lambda!110267) (not b!3758744) (not d!1097836) (not d!1097824) (not b!3758718) (not b!3758702) (not b!3758680) (not b_lambda!110253) (not d!1097752) (not b!3758490) (not d!1097820))
(check-sat b_and!279177 b_and!279163 (not b_next!101279) (not b_next!101277))
(get-model)

(declare-fun d!1097870 () Bool)

(declare-fun lt!1301218 () Int)

(assert (=> d!1097870 (>= lt!1301218 0)))

(declare-fun e!2324582 () Int)

(assert (=> d!1097870 (= lt!1301218 e!2324582)))

(declare-fun c!650845 () Bool)

(assert (=> d!1097870 (= c!650845 ((_ is Nil!40055) (originalCharacters!6732 separatorToken!144)))))

(assert (=> d!1097870 (= (size!30154 (originalCharacters!6732 separatorToken!144)) lt!1301218)))

(declare-fun b!3758900 () Bool)

(assert (=> b!3758900 (= e!2324582 0)))

(declare-fun b!3758901 () Bool)

(assert (=> b!3758901 (= e!2324582 (+ 1 (size!30154 (t!303686 (originalCharacters!6732 separatorToken!144)))))))

(assert (= (and d!1097870 c!650845) b!3758900))

(assert (= (and d!1097870 (not c!650845)) b!3758901))

(declare-fun m!4252175 () Bool)

(assert (=> b!3758901 m!4252175))

(assert (=> b!3758719 d!1097870))

(declare-fun d!1097876 () Bool)

(declare-fun lt!1301221 () Int)

(assert (=> d!1097876 (>= lt!1301221 0)))

(declare-fun e!2324587 () Int)

(assert (=> d!1097876 (= lt!1301221 e!2324587)))

(declare-fun c!650850 () Bool)

(assert (=> d!1097876 (= c!650850 ((_ is Nil!40057) lt!1301069))))

(assert (=> d!1097876 (= (size!30150 lt!1301069) lt!1301221)))

(declare-fun b!3758910 () Bool)

(assert (=> b!3758910 (= e!2324587 0)))

(declare-fun b!3758911 () Bool)

(assert (=> b!3758911 (= e!2324587 (+ 1 (size!30150 (t!303688 lt!1301069))))))

(assert (= (and d!1097876 c!650850) b!3758910))

(assert (= (and d!1097876 (not c!650850)) b!3758911))

(declare-fun m!4252185 () Bool)

(assert (=> b!3758911 m!4252185))

(assert (=> b!3758490 d!1097876))

(declare-fun d!1097882 () Bool)

(assert (=> d!1097882 (= (head!8035 (drop!2093 lt!1301045 from!856)) (h!45477 (drop!2093 lt!1301045 from!856)))))

(assert (=> d!1097820 d!1097882))

(assert (=> d!1097820 d!1097796))

(assert (=> d!1097820 d!1097828))

(declare-fun d!1097884 () Bool)

(assert (=> d!1097884 (= (head!8035 (drop!2093 lt!1301045 from!856)) (apply!9433 lt!1301045 from!856))))

(assert (=> d!1097884 true))

(declare-fun _$27!1037 () Unit!57784)

(assert (=> d!1097884 (= (choose!22271 lt!1301045 from!856) _$27!1037)))

(declare-fun bs!575682 () Bool)

(assert (= bs!575682 d!1097884))

(assert (=> bs!575682 m!4251617))

(assert (=> bs!575682 m!4251617))

(assert (=> bs!575682 m!4251991))

(assert (=> bs!575682 m!4251613))

(assert (=> d!1097820 d!1097884))

(declare-fun d!1097894 () Bool)

(assert (=> d!1097894 (= (height!1750 (c!650719 acc!419)) (ite ((_ is Empty!12264) (c!650719 acc!419)) 0 (ite ((_ is Leaf!19022) (c!650719 acc!419)) 1 (cheight!12475 (c!650719 acc!419)))))))

(assert (=> b!3758678 d!1097894))

(declare-fun d!1097896 () Bool)

(assert (=> d!1097896 (= (height!1750 (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))) (ite ((_ is Empty!12264) (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))) 0 (ite ((_ is Leaf!19022) (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))) 1 (cheight!12475 (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))))))))

(assert (=> b!3758678 d!1097896))

(declare-fun d!1097898 () Bool)

(assert (=> d!1097898 (= (height!1750 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))) (ite ((_ is Empty!12264) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))) 0 (ite ((_ is Leaf!19022) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))) 1 (cheight!12475 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(assert (=> b!3758678 d!1097898))

(declare-fun d!1097900 () Bool)

(assert (=> d!1097900 (= (max!0 (height!1750 (c!650719 acc!419)) (height!1750 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))) (ite (< (height!1750 (c!650719 acc!419)) (height!1750 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))) (height!1750 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))) (height!1750 (c!650719 acc!419))))))

(assert (=> b!3758678 d!1097900))

(declare-fun b!3758975 () Bool)

(declare-fun e!2324627 () Conc!12264)

(declare-fun call!275376 () Conc!12264)

(assert (=> b!3758975 (= e!2324627 call!275376)))

(declare-fun c!650879 () Bool)

(declare-fun call!275370 () Conc!12264)

(declare-fun call!275371 () Conc!12264)

(declare-fun c!650876 () Bool)

(declare-fun c!650882 () Bool)

(declare-fun lt!1301237 () Conc!12264)

(declare-fun c!650880 () Bool)

(declare-fun c!650878 () Bool)

(declare-fun lt!1301234 () Conc!12264)

(declare-fun call!275374 () Conc!12264)

(declare-fun bm!275366 () Bool)

(declare-fun call!275375 () Conc!12264)

(declare-fun <>!327 (Conc!12264 Conc!12264) Conc!12264)

(assert (=> bm!275366 (= call!275370 (<>!327 (ite c!650878 (ite (or c!650876 c!650880) (left!31017 (c!650719 acc!419)) call!275374) (ite c!650882 call!275375 (ite c!650879 lt!1301237 (right!31347 (left!31017 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))) (ite c!650878 (ite c!650876 call!275371 (ite c!650880 call!275374 lt!1301234)) (ite c!650882 (right!31347 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))) (ite c!650879 (right!31347 (left!31017 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))) (right!31347 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))))

(declare-fun bm!275367 () Bool)

(declare-fun call!275377 () Conc!12264)

(declare-fun call!275373 () Conc!12264)

(assert (=> bm!275367 (= call!275377 call!275373)))

(declare-fun bm!275368 () Bool)

(declare-fun call!275385 () Conc!12264)

(declare-fun call!275384 () Conc!12264)

(assert (=> bm!275368 (= call!275385 call!275384)))

(declare-fun b!3758976 () Bool)

(declare-fun e!2324618 () Conc!12264)

(assert (=> b!3758976 (= e!2324627 e!2324618)))

(assert (=> b!3758976 (= lt!1301234 call!275371)))

(declare-fun call!275378 () Int)

(declare-fun call!275382 () Int)

(assert (=> b!3758976 (= c!650880 (= call!275378 (- call!275382 3)))))

(declare-fun b!3758977 () Bool)

(declare-fun res!1522340 () Bool)

(declare-fun e!2324623 () Bool)

(assert (=> b!3758977 (=> (not res!1522340) (not e!2324623))))

(declare-fun lt!1301235 () Conc!12264)

(assert (=> b!3758977 (= res!1522340 (isBalanced!3532 lt!1301235))))

(declare-fun b!3758978 () Bool)

(declare-fun e!2324620 () Conc!12264)

(assert (=> b!3758978 (= e!2324620 call!275373)))

(declare-fun b!3758979 () Bool)

(declare-fun e!2324622 () Conc!12264)

(declare-fun call!275383 () Conc!12264)

(assert (=> b!3758979 (= e!2324622 call!275383)))

(declare-fun b!3758980 () Bool)

(declare-fun call!275380 () Int)

(declare-fun call!275381 () Int)

(assert (=> b!3758980 (= c!650876 (>= call!275380 call!275381))))

(declare-fun e!2324621 () Conc!12264)

(assert (=> b!3758980 (= e!2324621 e!2324627)))

(declare-fun d!1097902 () Bool)

(assert (=> d!1097902 e!2324623))

(declare-fun res!1522337 () Bool)

(assert (=> d!1097902 (=> (not res!1522337) (not e!2324623))))

(assert (=> d!1097902 (= res!1522337 (appendAssocInst!827 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))

(declare-fun e!2324625 () Conc!12264)

(assert (=> d!1097902 (= lt!1301235 e!2324625)))

(declare-fun c!650877 () Bool)

(assert (=> d!1097902 (= c!650877 (= (c!650719 acc!419) Empty!12264))))

(declare-fun e!2324626 () Bool)

(assert (=> d!1097902 e!2324626))

(declare-fun res!1522339 () Bool)

(assert (=> d!1097902 (=> (not res!1522339) (not e!2324626))))

(assert (=> d!1097902 (= res!1522339 (isBalanced!3532 (c!650719 acc!419)))))

(assert (=> d!1097902 (= (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))) lt!1301235)))

(declare-fun bm!275365 () Bool)

(assert (=> bm!275365 (= call!275376 call!275370)))

(declare-fun bm!275369 () Bool)

(declare-fun call!275372 () Conc!12264)

(assert (=> bm!275369 (= call!275375 call!275372)))

(declare-fun b!3758981 () Bool)

(declare-fun e!2324624 () Conc!12264)

(assert (=> b!3758981 (= e!2324624 call!275384)))

(declare-fun bm!275370 () Bool)

(declare-fun c!650875 () Bool)

(assert (=> bm!275370 (= call!275384 (<>!327 (ite c!650875 (c!650719 acc!419) (ite c!650878 (ite c!650880 (left!31017 (right!31347 (c!650719 acc!419))) (left!31017 (c!650719 acc!419))) (ite c!650879 call!275377 lt!1301237))) (ite c!650875 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))) (ite c!650878 (ite c!650880 lt!1301234 (left!31017 (right!31347 (c!650719 acc!419)))) (ite c!650879 (right!31347 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))) call!275377)))))))

(declare-fun bm!275371 () Bool)

(assert (=> bm!275371 (= call!275371 call!275372)))

(declare-fun b!3758982 () Bool)

(assert (=> b!3758982 (= e!2324626 (isBalanced!3532 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))

(declare-fun b!3758983 () Bool)

(assert (=> b!3758983 (= c!650882 (>= call!275382 call!275381))))

(assert (=> b!3758983 (= e!2324621 e!2324620)))

(declare-fun bm!275372 () Bool)

(assert (=> bm!275372 (= call!275382 (height!1750 (ite c!650878 (c!650719 acc!419) (right!31347 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(declare-fun bm!275373 () Bool)

(assert (=> bm!275373 (= call!275383 call!275385)))

(declare-fun b!3758984 () Bool)

(assert (=> b!3758984 (= e!2324620 e!2324622)))

(assert (=> b!3758984 (= lt!1301237 call!275375)))

(assert (=> b!3758984 (= c!650879 (= call!275378 (- call!275380 3)))))

(declare-fun b!3758985 () Bool)

(assert (=> b!3758985 (= e!2324622 call!275383)))

(declare-fun b!3758986 () Bool)

(assert (=> b!3758986 (= e!2324625 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))))

(declare-fun b!3758987 () Bool)

(assert (=> b!3758987 (= e!2324623 (= (list!14780 lt!1301235) (++!9927 (list!14780 (c!650719 acc!419)) (list!14780 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(declare-fun b!3758988 () Bool)

(declare-fun call!275379 () Conc!12264)

(assert (=> b!3758988 (= e!2324618 call!275379)))

(declare-fun bm!275374 () Bool)

(assert (=> bm!275374 (= call!275381 (height!1750 (ite c!650878 (right!31347 (c!650719 acc!419)) (left!31017 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(declare-fun bm!275375 () Bool)

(assert (=> bm!275375 (= call!275379 call!275376)))

(declare-fun b!3758989 () Bool)

(declare-fun res!1522338 () Bool)

(assert (=> b!3758989 (=> (not res!1522338) (not e!2324623))))

(assert (=> b!3758989 (= res!1522338 (<= (height!1750 lt!1301235) (+ (max!0 (height!1750 (c!650719 acc!419)) (height!1750 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))) 1)))))

(declare-fun bm!275376 () Bool)

(assert (=> bm!275376 (= call!275372 (++!9926 (ite c!650878 (ite c!650876 (right!31347 (c!650719 acc!419)) (right!31347 (right!31347 (c!650719 acc!419)))) (c!650719 acc!419)) (ite c!650878 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))) (ite c!650882 (left!31017 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))) (left!31017 (left!31017 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))))

(declare-fun b!3758990 () Bool)

(declare-fun e!2324619 () Conc!12264)

(assert (=> b!3758990 (= e!2324619 (c!650719 acc!419))))

(declare-fun b!3758991 () Bool)

(assert (=> b!3758991 (= e!2324625 e!2324619)))

(declare-fun c!650881 () Bool)

(assert (=> b!3758991 (= c!650881 (= (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))) Empty!12264))))

(declare-fun bm!275377 () Bool)

(assert (=> bm!275377 (= call!275373 call!275370)))

(declare-fun b!3758992 () Bool)

(declare-fun lt!1301236 () Int)

(assert (=> b!3758992 (= c!650875 (and (<= (- 1) lt!1301236) (<= lt!1301236 1)))))

(assert (=> b!3758992 (= lt!1301236 (- (height!1750 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))) (height!1750 (c!650719 acc!419))))))

(assert (=> b!3758992 (= e!2324619 e!2324624)))

(declare-fun bm!275378 () Bool)

(assert (=> bm!275378 (= call!275374 call!275385)))

(declare-fun b!3758993 () Bool)

(assert (=> b!3758993 (= e!2324624 e!2324621)))

(assert (=> b!3758993 (= c!650878 (< lt!1301236 (- 1)))))

(declare-fun bm!275379 () Bool)

(assert (=> bm!275379 (= call!275380 (height!1750 (ite c!650878 (left!31017 (c!650719 acc!419)) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))))))

(declare-fun bm!275380 () Bool)

(assert (=> bm!275380 (= call!275378 (height!1750 (ite c!650878 lt!1301234 lt!1301237)))))

(declare-fun b!3758994 () Bool)

(assert (=> b!3758994 (= e!2324618 call!275379)))

(declare-fun b!3758995 () Bool)

(declare-fun res!1522336 () Bool)

(assert (=> b!3758995 (=> (not res!1522336) (not e!2324623))))

(assert (=> b!3758995 (= res!1522336 (>= (height!1750 lt!1301235) (max!0 (height!1750 (c!650719 acc!419)) (height!1750 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(assert (= (and d!1097902 res!1522339) b!3758982))

(assert (= (and d!1097902 c!650877) b!3758986))

(assert (= (and d!1097902 (not c!650877)) b!3758991))

(assert (= (and b!3758991 c!650881) b!3758990))

(assert (= (and b!3758991 (not c!650881)) b!3758992))

(assert (= (and b!3758992 c!650875) b!3758981))

(assert (= (and b!3758992 (not c!650875)) b!3758993))

(assert (= (and b!3758993 c!650878) b!3758980))

(assert (= (and b!3758993 (not c!650878)) b!3758983))

(assert (= (and b!3758980 c!650876) b!3758975))

(assert (= (and b!3758980 (not c!650876)) b!3758976))

(assert (= (and b!3758976 c!650880) b!3758988))

(assert (= (and b!3758976 (not c!650880)) b!3758994))

(assert (= (or b!3758988 b!3758994) bm!275378))

(assert (= (or b!3758988 b!3758994) bm!275375))

(assert (= (or b!3758975 b!3758976) bm!275371))

(assert (= (or b!3758975 bm!275375) bm!275365))

(assert (= (and b!3758983 c!650882) b!3758978))

(assert (= (and b!3758983 (not c!650882)) b!3758984))

(assert (= (and b!3758984 c!650879) b!3758985))

(assert (= (and b!3758984 (not c!650879)) b!3758979))

(assert (= (or b!3758985 b!3758979) bm!275367))

(assert (= (or b!3758985 b!3758979) bm!275373))

(assert (= (or b!3758978 b!3758984) bm!275369))

(assert (= (or b!3758978 bm!275367) bm!275377))

(assert (= (or bm!275378 bm!275373) bm!275368))

(assert (= (or b!3758976 b!3758983) bm!275372))

(assert (= (or b!3758980 b!3758984) bm!275379))

(assert (= (or bm!275371 bm!275369) bm!275376))

(assert (= (or bm!275365 bm!275377) bm!275366))

(assert (= (or b!3758976 b!3758984) bm!275380))

(assert (= (or b!3758980 b!3758983) bm!275374))

(assert (= (or b!3758981 bm!275368) bm!275370))

(assert (= (and d!1097902 res!1522337) b!3758977))

(assert (= (and b!3758977 res!1522340) b!3758989))

(assert (= (and b!3758989 res!1522338) b!3758995))

(assert (= (and b!3758995 res!1522336) b!3758987))

(declare-fun m!4252217 () Bool)

(assert (=> bm!275370 m!4252217))

(declare-fun m!4252219 () Bool)

(assert (=> bm!275380 m!4252219))

(declare-fun m!4252221 () Bool)

(assert (=> b!3758987 m!4252221))

(assert (=> b!3758987 m!4252005))

(declare-fun m!4252223 () Bool)

(assert (=> b!3758987 m!4252223))

(assert (=> b!3758987 m!4252005))

(assert (=> b!3758987 m!4252223))

(declare-fun m!4252225 () Bool)

(assert (=> b!3758987 m!4252225))

(declare-fun m!4252227 () Bool)

(assert (=> bm!275379 m!4252227))

(declare-fun m!4252229 () Bool)

(assert (=> b!3758989 m!4252229))

(assert (=> b!3758989 m!4252023))

(assert (=> b!3758989 m!4252019))

(assert (=> b!3758989 m!4252023))

(assert (=> b!3758989 m!4252019))

(assert (=> b!3758989 m!4252027))

(declare-fun m!4252231 () Bool)

(assert (=> b!3758982 m!4252231))

(assert (=> b!3758992 m!4252019))

(assert (=> b!3758992 m!4252023))

(assert (=> b!3758995 m!4252229))

(assert (=> b!3758995 m!4252023))

(assert (=> b!3758995 m!4252019))

(assert (=> b!3758995 m!4252023))

(assert (=> b!3758995 m!4252019))

(assert (=> b!3758995 m!4252027))

(assert (=> d!1097902 m!4252031))

(assert (=> d!1097902 m!4252059))

(declare-fun m!4252233 () Bool)

(assert (=> bm!275376 m!4252233))

(declare-fun m!4252235 () Bool)

(assert (=> bm!275366 m!4252235))

(declare-fun m!4252237 () Bool)

(assert (=> b!3758977 m!4252237))

(declare-fun m!4252239 () Bool)

(assert (=> bm!275372 m!4252239))

(declare-fun m!4252241 () Bool)

(assert (=> bm!275374 m!4252241))

(assert (=> b!3758678 d!1097902))

(declare-fun d!1097906 () Bool)

(declare-fun c!650883 () Bool)

(assert (=> d!1097906 (= c!650883 ((_ is Node!12264) (left!31017 (c!650719 acc!419))))))

(declare-fun e!2324628 () Bool)

(assert (=> d!1097906 (= (inv!53702 (left!31017 (c!650719 acc!419))) e!2324628)))

(declare-fun b!3758996 () Bool)

(assert (=> b!3758996 (= e!2324628 (inv!53711 (left!31017 (c!650719 acc!419))))))

(declare-fun b!3758997 () Bool)

(declare-fun e!2324629 () Bool)

(assert (=> b!3758997 (= e!2324628 e!2324629)))

(declare-fun res!1522341 () Bool)

(assert (=> b!3758997 (= res!1522341 (not ((_ is Leaf!19022) (left!31017 (c!650719 acc!419)))))))

(assert (=> b!3758997 (=> res!1522341 e!2324629)))

(declare-fun b!3758998 () Bool)

(assert (=> b!3758998 (= e!2324629 (inv!53712 (left!31017 (c!650719 acc!419))))))

(assert (= (and d!1097906 c!650883) b!3758996))

(assert (= (and d!1097906 (not c!650883)) b!3758997))

(assert (= (and b!3758997 (not res!1522341)) b!3758998))

(declare-fun m!4252243 () Bool)

(assert (=> b!3758996 m!4252243))

(declare-fun m!4252245 () Bool)

(assert (=> b!3758998 m!4252245))

(assert (=> b!3758742 d!1097906))

(declare-fun d!1097908 () Bool)

(declare-fun c!650884 () Bool)

(assert (=> d!1097908 (= c!650884 ((_ is Node!12264) (right!31347 (c!650719 acc!419))))))

(declare-fun e!2324630 () Bool)

(assert (=> d!1097908 (= (inv!53702 (right!31347 (c!650719 acc!419))) e!2324630)))

(declare-fun b!3758999 () Bool)

(assert (=> b!3758999 (= e!2324630 (inv!53711 (right!31347 (c!650719 acc!419))))))

(declare-fun b!3759000 () Bool)

(declare-fun e!2324631 () Bool)

(assert (=> b!3759000 (= e!2324630 e!2324631)))

(declare-fun res!1522342 () Bool)

(assert (=> b!3759000 (= res!1522342 (not ((_ is Leaf!19022) (right!31347 (c!650719 acc!419)))))))

(assert (=> b!3759000 (=> res!1522342 e!2324631)))

(declare-fun b!3759001 () Bool)

(assert (=> b!3759001 (= e!2324631 (inv!53712 (right!31347 (c!650719 acc!419))))))

(assert (= (and d!1097908 c!650884) b!3758999))

(assert (= (and d!1097908 (not c!650884)) b!3759000))

(assert (= (and b!3759000 (not res!1522342)) b!3759001))

(declare-fun m!4252247 () Bool)

(assert (=> b!3758999 m!4252247))

(declare-fun m!4252249 () Bool)

(assert (=> b!3759001 m!4252249))

(assert (=> b!3758742 d!1097908))

(declare-fun d!1097910 () Bool)

(declare-fun c!650889 () Bool)

(assert (=> d!1097910 (= c!650889 ((_ is Empty!12265) (c!650721 v!6366)))))

(declare-fun e!2324636 () List!40181)

(assert (=> d!1097910 (= (list!14779 (c!650721 v!6366)) e!2324636)))

(declare-fun b!3759010 () Bool)

(assert (=> b!3759010 (= e!2324636 Nil!40057)))

(declare-fun b!3759013 () Bool)

(declare-fun e!2324637 () List!40181)

(declare-fun ++!9929 (List!40181 List!40181) List!40181)

(assert (=> b!3759013 (= e!2324637 (++!9929 (list!14779 (left!31018 (c!650721 v!6366))) (list!14779 (right!31348 (c!650721 v!6366)))))))

(declare-fun b!3759012 () Bool)

(declare-fun list!14782 (IArray!24535) List!40181)

(assert (=> b!3759012 (= e!2324637 (list!14782 (xs!15467 (c!650721 v!6366))))))

(declare-fun b!3759011 () Bool)

(assert (=> b!3759011 (= e!2324636 e!2324637)))

(declare-fun c!650890 () Bool)

(assert (=> b!3759011 (= c!650890 ((_ is Leaf!19023) (c!650721 v!6366)))))

(assert (= (and d!1097910 c!650889) b!3759010))

(assert (= (and d!1097910 (not c!650889)) b!3759011))

(assert (= (and b!3759011 c!650890) b!3759012))

(assert (= (and b!3759011 (not c!650890)) b!3759013))

(declare-fun m!4252251 () Bool)

(assert (=> b!3759013 m!4252251))

(declare-fun m!4252253 () Bool)

(assert (=> b!3759013 m!4252253))

(assert (=> b!3759013 m!4252251))

(assert (=> b!3759013 m!4252253))

(declare-fun m!4252255 () Bool)

(assert (=> b!3759013 m!4252255))

(declare-fun m!4252257 () Bool)

(assert (=> b!3759012 m!4252257))

(assert (=> d!1097760 d!1097910))

(assert (=> b!3758658 d!1097842))

(declare-fun b!3759023 () Bool)

(declare-fun e!2324642 () List!40179)

(declare-fun e!2324643 () List!40179)

(assert (=> b!3759023 (= e!2324642 e!2324643)))

(declare-fun c!650896 () Bool)

(assert (=> b!3759023 (= c!650896 ((_ is Leaf!19022) (c!650719 acc!419)))))

(declare-fun b!3759024 () Bool)

(declare-fun list!14783 (IArray!24533) List!40179)

(assert (=> b!3759024 (= e!2324643 (list!14783 (xs!15466 (c!650719 acc!419))))))

(declare-fun b!3759022 () Bool)

(assert (=> b!3759022 (= e!2324642 Nil!40055)))

(declare-fun d!1097912 () Bool)

(declare-fun c!650895 () Bool)

(assert (=> d!1097912 (= c!650895 ((_ is Empty!12264) (c!650719 acc!419)))))

(assert (=> d!1097912 (= (list!14780 (c!650719 acc!419)) e!2324642)))

(declare-fun b!3759025 () Bool)

(assert (=> b!3759025 (= e!2324643 (++!9927 (list!14780 (left!31017 (c!650719 acc!419))) (list!14780 (right!31347 (c!650719 acc!419)))))))

(assert (= (and d!1097912 c!650895) b!3759022))

(assert (= (and d!1097912 (not c!650895)) b!3759023))

(assert (= (and b!3759023 c!650896) b!3759024))

(assert (= (and b!3759023 (not c!650896)) b!3759025))

(declare-fun m!4252259 () Bool)

(assert (=> b!3759024 m!4252259))

(declare-fun m!4252261 () Bool)

(assert (=> b!3759025 m!4252261))

(declare-fun m!4252263 () Bool)

(assert (=> b!3759025 m!4252263))

(assert (=> b!3759025 m!4252261))

(assert (=> b!3759025 m!4252263))

(declare-fun m!4252265 () Bool)

(assert (=> b!3759025 m!4252265))

(assert (=> d!1097830 d!1097912))

(assert (=> b!3758660 d!1097760))

(declare-fun d!1097914 () Bool)

(declare-fun lt!1301238 () Token!11402)

(assert (=> d!1097914 (contains!8166 lt!1301178 lt!1301238)))

(declare-fun e!2324645 () Token!11402)

(assert (=> d!1097914 (= lt!1301238 e!2324645)))

(declare-fun c!650897 () Bool)

(assert (=> d!1097914 (= c!650897 (= (+ 1 from!856) 0))))

(declare-fun e!2324644 () Bool)

(assert (=> d!1097914 e!2324644))

(declare-fun res!1522343 () Bool)

(assert (=> d!1097914 (=> (not res!1522343) (not e!2324644))))

(assert (=> d!1097914 (= res!1522343 (<= 0 (+ 1 from!856)))))

(assert (=> d!1097914 (= (apply!9433 lt!1301178 (+ 1 from!856)) lt!1301238)))

(declare-fun b!3759026 () Bool)

(assert (=> b!3759026 (= e!2324644 (< (+ 1 from!856) (size!30150 lt!1301178)))))

(declare-fun b!3759027 () Bool)

(assert (=> b!3759027 (= e!2324645 (head!8035 lt!1301178))))

(declare-fun b!3759028 () Bool)

(assert (=> b!3759028 (= e!2324645 (apply!9433 (tail!5762 lt!1301178) (- (+ 1 from!856) 1)))))

(assert (= (and d!1097914 res!1522343) b!3759026))

(assert (= (and d!1097914 c!650897) b!3759027))

(assert (= (and d!1097914 (not c!650897)) b!3759028))

(declare-fun m!4252267 () Bool)

(assert (=> d!1097914 m!4252267))

(declare-fun m!4252269 () Bool)

(assert (=> b!3759026 m!4252269))

(declare-fun m!4252271 () Bool)

(assert (=> b!3759027 m!4252271))

(declare-fun m!4252273 () Bool)

(assert (=> b!3759028 m!4252273))

(assert (=> b!3759028 m!4252273))

(declare-fun m!4252275 () Bool)

(assert (=> b!3759028 m!4252275))

(assert (=> b!3758660 d!1097914))

(declare-fun d!1097916 () Bool)

(declare-fun lt!1301239 () Token!11402)

(assert (=> d!1097916 (= lt!1301239 (apply!9433 (list!14776 v!6366) (+ 1 from!856)))))

(assert (=> d!1097916 (= lt!1301239 (apply!9435 (c!650721 v!6366) (+ 1 from!856)))))

(declare-fun e!2324646 () Bool)

(assert (=> d!1097916 e!2324646))

(declare-fun res!1522344 () Bool)

(assert (=> d!1097916 (=> (not res!1522344) (not e!2324646))))

(assert (=> d!1097916 (= res!1522344 (<= 0 (+ 1 from!856)))))

(assert (=> d!1097916 (= (apply!9432 v!6366 (+ 1 from!856)) lt!1301239)))

(declare-fun b!3759029 () Bool)

(assert (=> b!3759029 (= e!2324646 (< (+ 1 from!856) (size!30148 v!6366)))))

(assert (= (and d!1097916 res!1522344) b!3759029))

(assert (=> d!1097916 m!4251631))

(assert (=> d!1097916 m!4251631))

(declare-fun m!4252277 () Bool)

(assert (=> d!1097916 m!4252277))

(declare-fun m!4252279 () Bool)

(assert (=> d!1097916 m!4252279))

(assert (=> b!3759029 m!4251593))

(assert (=> b!3758660 d!1097916))

(declare-fun b!3759030 () Bool)

(declare-fun e!2324649 () List!40181)

(assert (=> b!3759030 (= e!2324649 Nil!40057)))

(declare-fun bm!275381 () Bool)

(declare-fun call!275386 () Int)

(assert (=> bm!275381 (= call!275386 (size!30150 lt!1301175))))

(declare-fun d!1097918 () Bool)

(declare-fun e!2324650 () Bool)

(assert (=> d!1097918 e!2324650))

(declare-fun res!1522345 () Bool)

(assert (=> d!1097918 (=> (not res!1522345) (not e!2324650))))

(declare-fun lt!1301240 () List!40181)

(assert (=> d!1097918 (= res!1522345 (= ((_ map implies) (content!5878 lt!1301240) (content!5878 lt!1301175)) ((as const (InoxSet Token!11402)) true)))))

(assert (=> d!1097918 (= lt!1301240 e!2324649)))

(declare-fun c!650899 () Bool)

(assert (=> d!1097918 (= c!650899 ((_ is Nil!40057) lt!1301175))))

(assert (=> d!1097918 (= (drop!2093 lt!1301175 (+ 1 from!856 1)) lt!1301240)))

(declare-fun b!3759031 () Bool)

(declare-fun e!2324648 () List!40181)

(assert (=> b!3759031 (= e!2324648 (drop!2093 (t!303688 lt!1301175) (- (+ 1 from!856 1) 1)))))

(declare-fun b!3759032 () Bool)

(assert (=> b!3759032 (= e!2324649 e!2324648)))

(declare-fun c!650900 () Bool)

(assert (=> b!3759032 (= c!650900 (<= (+ 1 from!856 1) 0))))

(declare-fun b!3759033 () Bool)

(declare-fun e!2324647 () Int)

(assert (=> b!3759033 (= e!2324650 (= (size!30150 lt!1301240) e!2324647))))

(declare-fun c!650901 () Bool)

(assert (=> b!3759033 (= c!650901 (<= (+ 1 from!856 1) 0))))

(declare-fun b!3759034 () Bool)

(assert (=> b!3759034 (= e!2324647 call!275386)))

(declare-fun b!3759035 () Bool)

(declare-fun e!2324651 () Int)

(assert (=> b!3759035 (= e!2324651 (- call!275386 (+ 1 from!856 1)))))

(declare-fun b!3759036 () Bool)

(assert (=> b!3759036 (= e!2324651 0)))

(declare-fun b!3759037 () Bool)

(assert (=> b!3759037 (= e!2324647 e!2324651)))

(declare-fun c!650898 () Bool)

(assert (=> b!3759037 (= c!650898 (>= (+ 1 from!856 1) call!275386))))

(declare-fun b!3759038 () Bool)

(assert (=> b!3759038 (= e!2324648 lt!1301175)))

(assert (= (and d!1097918 c!650899) b!3759030))

(assert (= (and d!1097918 (not c!650899)) b!3759032))

(assert (= (and b!3759032 c!650900) b!3759038))

(assert (= (and b!3759032 (not c!650900)) b!3759031))

(assert (= (and d!1097918 res!1522345) b!3759033))

(assert (= (and b!3759033 c!650901) b!3759034))

(assert (= (and b!3759033 (not c!650901)) b!3759037))

(assert (= (and b!3759037 c!650898) b!3759036))

(assert (= (and b!3759037 (not c!650898)) b!3759035))

(assert (= (or b!3759034 b!3759037 b!3759035) bm!275381))

(declare-fun m!4252281 () Bool)

(assert (=> bm!275381 m!4252281))

(declare-fun m!4252283 () Bool)

(assert (=> d!1097918 m!4252283))

(declare-fun m!4252285 () Bool)

(assert (=> d!1097918 m!4252285))

(declare-fun m!4252287 () Bool)

(assert (=> b!3759031 m!4252287))

(declare-fun m!4252289 () Bool)

(assert (=> b!3759033 m!4252289))

(assert (=> b!3758660 d!1097918))

(declare-fun b!3759039 () Bool)

(declare-fun e!2324654 () List!40181)

(assert (=> b!3759039 (= e!2324654 Nil!40057)))

(declare-fun bm!275382 () Bool)

(declare-fun call!275387 () Int)

(assert (=> bm!275382 (= call!275387 (size!30150 lt!1301178))))

(declare-fun d!1097920 () Bool)

(declare-fun e!2324655 () Bool)

(assert (=> d!1097920 e!2324655))

(declare-fun res!1522346 () Bool)

(assert (=> d!1097920 (=> (not res!1522346) (not e!2324655))))

(declare-fun lt!1301241 () List!40181)

(assert (=> d!1097920 (= res!1522346 (= ((_ map implies) (content!5878 lt!1301241) (content!5878 lt!1301178)) ((as const (InoxSet Token!11402)) true)))))

(assert (=> d!1097920 (= lt!1301241 e!2324654)))

(declare-fun c!650903 () Bool)

(assert (=> d!1097920 (= c!650903 ((_ is Nil!40057) lt!1301178))))

(assert (=> d!1097920 (= (drop!2093 lt!1301178 (+ 1 from!856)) lt!1301241)))

(declare-fun b!3759040 () Bool)

(declare-fun e!2324653 () List!40181)

(assert (=> b!3759040 (= e!2324653 (drop!2093 (t!303688 lt!1301178) (- (+ 1 from!856) 1)))))

(declare-fun b!3759041 () Bool)

(assert (=> b!3759041 (= e!2324654 e!2324653)))

(declare-fun c!650904 () Bool)

(assert (=> b!3759041 (= c!650904 (<= (+ 1 from!856) 0))))

(declare-fun b!3759042 () Bool)

(declare-fun e!2324652 () Int)

(assert (=> b!3759042 (= e!2324655 (= (size!30150 lt!1301241) e!2324652))))

(declare-fun c!650905 () Bool)

(assert (=> b!3759042 (= c!650905 (<= (+ 1 from!856) 0))))

(declare-fun b!3759043 () Bool)

(assert (=> b!3759043 (= e!2324652 call!275387)))

(declare-fun b!3759044 () Bool)

(declare-fun e!2324656 () Int)

(assert (=> b!3759044 (= e!2324656 (- call!275387 (+ 1 from!856)))))

(declare-fun b!3759045 () Bool)

(assert (=> b!3759045 (= e!2324656 0)))

(declare-fun b!3759046 () Bool)

(assert (=> b!3759046 (= e!2324652 e!2324656)))

(declare-fun c!650902 () Bool)

(assert (=> b!3759046 (= c!650902 (>= (+ 1 from!856) call!275387))))

(declare-fun b!3759047 () Bool)

(assert (=> b!3759047 (= e!2324653 lt!1301178)))

(assert (= (and d!1097920 c!650903) b!3759039))

(assert (= (and d!1097920 (not c!650903)) b!3759041))

(assert (= (and b!3759041 c!650904) b!3759047))

(assert (= (and b!3759041 (not c!650904)) b!3759040))

(assert (= (and d!1097920 res!1522346) b!3759042))

(assert (= (and b!3759042 c!650905) b!3759043))

(assert (= (and b!3759042 (not c!650905)) b!3759046))

(assert (= (and b!3759046 c!650902) b!3759045))

(assert (= (and b!3759046 (not c!650902)) b!3759044))

(assert (= (or b!3759043 b!3759046 b!3759044) bm!275382))

(assert (=> bm!275382 m!4252269))

(declare-fun m!4252291 () Bool)

(assert (=> d!1097920 m!4252291))

(declare-fun m!4252293 () Bool)

(assert (=> d!1097920 m!4252293))

(declare-fun m!4252295 () Bool)

(assert (=> b!3759040 m!4252295))

(declare-fun m!4252297 () Bool)

(assert (=> b!3759042 m!4252297))

(assert (=> b!3758660 d!1097920))

(declare-fun b!3759048 () Bool)

(declare-fun res!1522347 () Bool)

(declare-fun e!2324657 () Bool)

(assert (=> b!3759048 (=> (not res!1522347) (not e!2324657))))

(assert (=> b!3759048 (= res!1522347 (isBalanced!3532 (++!9926 (c!650719 (++!9923 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)) (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856))))) (c!650719 (charsOf!3985 separatorToken!144)))))))

(declare-fun lt!1301242 () BalanceConc!24122)

(declare-fun b!3759051 () Bool)

(assert (=> b!3759051 (= e!2324657 (= (list!14775 lt!1301242) (++!9927 (list!14775 (++!9923 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)) (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856))))) (list!14775 (charsOf!3985 separatorToken!144)))))))

(declare-fun b!3759050 () Bool)

(declare-fun res!1522348 () Bool)

(assert (=> b!3759050 (=> (not res!1522348) (not e!2324657))))

(assert (=> b!3759050 (= res!1522348 (>= (height!1750 (++!9926 (c!650719 (++!9923 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)) (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856))))) (c!650719 (charsOf!3985 separatorToken!144)))) (max!0 (height!1750 (c!650719 (++!9923 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)) (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856)))))) (height!1750 (c!650719 (charsOf!3985 separatorToken!144))))))))

(declare-fun d!1097922 () Bool)

(assert (=> d!1097922 e!2324657))

(declare-fun res!1522350 () Bool)

(assert (=> d!1097922 (=> (not res!1522350) (not e!2324657))))

(assert (=> d!1097922 (= res!1522350 (appendAssocInst!827 (c!650719 (++!9923 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)) (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856))))) (c!650719 (charsOf!3985 separatorToken!144))))))

(assert (=> d!1097922 (= lt!1301242 (BalanceConc!24123 (++!9926 (c!650719 (++!9923 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)) (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856))))) (c!650719 (charsOf!3985 separatorToken!144)))))))

(assert (=> d!1097922 (= (++!9923 (++!9923 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)) (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856)))) (charsOf!3985 separatorToken!144)) lt!1301242)))

(declare-fun b!3759049 () Bool)

(declare-fun res!1522349 () Bool)

(assert (=> b!3759049 (=> (not res!1522349) (not e!2324657))))

(assert (=> b!3759049 (= res!1522349 (<= (height!1750 (++!9926 (c!650719 (++!9923 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)) (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856))))) (c!650719 (charsOf!3985 separatorToken!144)))) (+ (max!0 (height!1750 (c!650719 (++!9923 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)) (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856)))))) (height!1750 (c!650719 (charsOf!3985 separatorToken!144)))) 1)))))

(assert (= (and d!1097922 res!1522350) b!3759048))

(assert (= (and b!3759048 res!1522347) b!3759049))

(assert (= (and b!3759049 res!1522349) b!3759050))

(assert (= (and b!3759050 res!1522348) b!3759051))

(declare-fun m!4252299 () Bool)

(assert (=> b!3759051 m!4252299))

(assert (=> b!3759051 m!4251973))

(declare-fun m!4252301 () Bool)

(assert (=> b!3759051 m!4252301))

(assert (=> b!3759051 m!4251607))

(assert (=> b!3759051 m!4251693))

(assert (=> b!3759051 m!4252301))

(assert (=> b!3759051 m!4251693))

(declare-fun m!4252303 () Bool)

(assert (=> b!3759051 m!4252303))

(assert (=> b!3759049 m!4251697))

(declare-fun m!4252305 () Bool)

(assert (=> b!3759049 m!4252305))

(declare-fun m!4252307 () Bool)

(assert (=> b!3759049 m!4252307))

(assert (=> b!3759049 m!4252305))

(declare-fun m!4252309 () Bool)

(assert (=> b!3759049 m!4252309))

(assert (=> b!3759049 m!4252307))

(assert (=> b!3759049 m!4251697))

(declare-fun m!4252311 () Bool)

(assert (=> b!3759049 m!4252311))

(assert (=> b!3759048 m!4252305))

(assert (=> b!3759048 m!4252305))

(declare-fun m!4252313 () Bool)

(assert (=> b!3759048 m!4252313))

(declare-fun m!4252315 () Bool)

(assert (=> d!1097922 m!4252315))

(assert (=> d!1097922 m!4252305))

(assert (=> b!3759050 m!4251697))

(assert (=> b!3759050 m!4252305))

(assert (=> b!3759050 m!4252307))

(assert (=> b!3759050 m!4252305))

(assert (=> b!3759050 m!4252309))

(assert (=> b!3759050 m!4252307))

(assert (=> b!3759050 m!4251697))

(assert (=> b!3759050 m!4252311))

(assert (=> b!3758660 d!1097922))

(declare-fun d!1097924 () Bool)

(declare-fun lt!1301243 () BalanceConc!24122)

(assert (=> d!1097924 (= (list!14775 lt!1301243) (originalCharacters!6732 (apply!9432 v!6366 (+ 1 from!856))))))

(assert (=> d!1097924 (= lt!1301243 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 (+ 1 from!856))))) (value!195351 (apply!9432 v!6366 (+ 1 from!856)))))))

(assert (=> d!1097924 (= (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856))) lt!1301243)))

(declare-fun b_lambda!110271 () Bool)

(assert (=> (not b_lambda!110271) (not d!1097924)))

(declare-fun t!303704 () Bool)

(declare-fun tb!215133 () Bool)

(assert (=> (and b!3758406 (= (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 (+ 1 from!856)))))) t!303704) tb!215133))

(declare-fun b!3759052 () Bool)

(declare-fun tp!1148471 () Bool)

(declare-fun e!2324658 () Bool)

(assert (=> b!3759052 (= e!2324658 (and (inv!53702 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 (+ 1 from!856))))) (value!195351 (apply!9432 v!6366 (+ 1 from!856)))))) tp!1148471))))

(declare-fun result!262682 () Bool)

(assert (=> tb!215133 (= result!262682 (and (inv!53699 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 (+ 1 from!856))))) (value!195351 (apply!9432 v!6366 (+ 1 from!856))))) e!2324658))))

(assert (= tb!215133 b!3759052))

(declare-fun m!4252317 () Bool)

(assert (=> b!3759052 m!4252317))

(declare-fun m!4252319 () Bool)

(assert (=> tb!215133 m!4252319))

(assert (=> d!1097924 t!303704))

(declare-fun b_and!279179 () Bool)

(assert (= b_and!279177 (and (=> t!303704 result!262682) b_and!279179)))

(declare-fun m!4252321 () Bool)

(assert (=> d!1097924 m!4252321))

(declare-fun m!4252323 () Bool)

(assert (=> d!1097924 m!4252323))

(assert (=> b!3758660 d!1097924))

(declare-fun d!1097926 () Bool)

(assert (=> d!1097926 (= (head!8035 (drop!2093 lt!1301178 (+ 1 from!856))) (h!45477 (drop!2093 lt!1301178 (+ 1 from!856))))))

(assert (=> b!3758660 d!1097926))

(declare-fun d!1097928 () Bool)

(assert (=> d!1097928 (= (tail!5762 (drop!2093 lt!1301175 (+ 1 from!856))) (drop!2093 lt!1301175 (+ 1 from!856 1)))))

(declare-fun lt!1301244 () Unit!57784)

(assert (=> d!1097928 (= lt!1301244 (choose!22272 lt!1301175 (+ 1 from!856)))))

(declare-fun e!2324659 () Bool)

(assert (=> d!1097928 e!2324659))

(declare-fun res!1522351 () Bool)

(assert (=> d!1097928 (=> (not res!1522351) (not e!2324659))))

(assert (=> d!1097928 (= res!1522351 (>= (+ 1 from!856) 0))))

(assert (=> d!1097928 (= (lemmaDropTail!1113 lt!1301175 (+ 1 from!856)) lt!1301244)))

(declare-fun b!3759053 () Bool)

(assert (=> b!3759053 (= e!2324659 (< (+ 1 from!856) (size!30150 lt!1301175)))))

(assert (= (and d!1097928 res!1522351) b!3759053))

(assert (=> d!1097928 m!4251985))

(assert (=> d!1097928 m!4251985))

(assert (=> d!1097928 m!4251987))

(assert (=> d!1097928 m!4251969))

(declare-fun m!4252325 () Bool)

(assert (=> d!1097928 m!4252325))

(assert (=> b!3759053 m!4252281))

(assert (=> b!3758660 d!1097928))

(declare-fun d!1097930 () Bool)

(declare-fun lt!1301250 () BalanceConc!24122)

(assert (=> d!1097930 (= (list!14775 lt!1301250) (printWithSeparatorTokenListTailRec!44 thiss!14060 (dropList!1269 v!6366 (+ 1 from!856 1)) separatorToken!144 (list!14775 (++!9923 (++!9923 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)) (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856)))) (charsOf!3985 separatorToken!144)))))))

(declare-fun e!2324660 () BalanceConc!24122)

(assert (=> d!1097930 (= lt!1301250 e!2324660)))

(declare-fun c!650906 () Bool)

(assert (=> d!1097930 (= c!650906 (>= (+ 1 from!856 1) (size!30148 v!6366)))))

(declare-fun e!2324661 () Bool)

(assert (=> d!1097930 e!2324661))

(declare-fun res!1522352 () Bool)

(assert (=> d!1097930 (=> (not res!1522352) (not e!2324661))))

(assert (=> d!1097930 (= res!1522352 (>= (+ 1 from!856 1) 0))))

(assert (=> d!1097930 (= (printWithSeparatorTokenTailRec!82 thiss!14060 v!6366 separatorToken!144 (+ 1 from!856 1) (++!9923 (++!9923 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)) (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856)))) (charsOf!3985 separatorToken!144))) lt!1301250)))

(declare-fun b!3759054 () Bool)

(assert (=> b!3759054 (= e!2324661 (<= (+ 1 from!856 1) (size!30148 v!6366)))))

(declare-fun b!3759055 () Bool)

(assert (=> b!3759055 (= e!2324660 (++!9923 (++!9923 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)) (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856)))) (charsOf!3985 separatorToken!144)))))

(declare-fun b!3759056 () Bool)

(assert (=> b!3759056 (= e!2324660 (printWithSeparatorTokenTailRec!82 thiss!14060 v!6366 separatorToken!144 (+ 1 from!856 1 1) (++!9923 (++!9923 (++!9923 (++!9923 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)) (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856)))) (charsOf!3985 separatorToken!144)) (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856 1)))) (charsOf!3985 separatorToken!144))))))

(declare-fun lt!1301248 () List!40181)

(assert (=> b!3759056 (= lt!1301248 (list!14776 v!6366))))

(declare-fun lt!1301249 () Unit!57784)

(assert (=> b!3759056 (= lt!1301249 (lemmaDropApply!1229 lt!1301248 (+ 1 from!856 1)))))

(assert (=> b!3759056 (= (head!8035 (drop!2093 lt!1301248 (+ 1 from!856 1))) (apply!9433 lt!1301248 (+ 1 from!856 1)))))

(declare-fun lt!1301251 () Unit!57784)

(assert (=> b!3759056 (= lt!1301251 lt!1301249)))

(declare-fun lt!1301245 () List!40181)

(assert (=> b!3759056 (= lt!1301245 (list!14776 v!6366))))

(declare-fun lt!1301247 () Unit!57784)

(assert (=> b!3759056 (= lt!1301247 (lemmaDropTail!1113 lt!1301245 (+ 1 from!856 1)))))

(assert (=> b!3759056 (= (tail!5762 (drop!2093 lt!1301245 (+ 1 from!856 1))) (drop!2093 lt!1301245 (+ 1 from!856 1 1)))))

(declare-fun lt!1301246 () Unit!57784)

(assert (=> b!3759056 (= lt!1301246 lt!1301247)))

(assert (= (and d!1097930 res!1522352) b!3759054))

(assert (= (and d!1097930 c!650906) b!3759055))

(assert (= (and d!1097930 (not c!650906)) b!3759056))

(declare-fun m!4252327 () Bool)

(assert (=> d!1097930 m!4252327))

(assert (=> d!1097930 m!4251975))

(declare-fun m!4252329 () Bool)

(assert (=> d!1097930 m!4252329))

(assert (=> d!1097930 m!4252327))

(assert (=> d!1097930 m!4252329))

(declare-fun m!4252331 () Bool)

(assert (=> d!1097930 m!4252331))

(assert (=> d!1097930 m!4251593))

(declare-fun m!4252333 () Bool)

(assert (=> d!1097930 m!4252333))

(assert (=> b!3759054 m!4251593))

(assert (=> b!3759056 m!4251631))

(declare-fun m!4252335 () Bool)

(assert (=> b!3759056 m!4252335))

(declare-fun m!4252337 () Bool)

(assert (=> b!3759056 m!4252337))

(declare-fun m!4252339 () Bool)

(assert (=> b!3759056 m!4252339))

(declare-fun m!4252341 () Bool)

(assert (=> b!3759056 m!4252341))

(declare-fun m!4252343 () Bool)

(assert (=> b!3759056 m!4252343))

(assert (=> b!3759056 m!4251607))

(declare-fun m!4252345 () Bool)

(assert (=> b!3759056 m!4252345))

(assert (=> b!3759056 m!4252335))

(declare-fun m!4252347 () Bool)

(assert (=> b!3759056 m!4252347))

(declare-fun m!4252349 () Bool)

(assert (=> b!3759056 m!4252349))

(declare-fun m!4252351 () Bool)

(assert (=> b!3759056 m!4252351))

(assert (=> b!3759056 m!4252345))

(declare-fun m!4252353 () Bool)

(assert (=> b!3759056 m!4252353))

(assert (=> b!3759056 m!4251975))

(assert (=> b!3759056 m!4252337))

(assert (=> b!3759056 m!4252343))

(declare-fun m!4252355 () Bool)

(assert (=> b!3759056 m!4252355))

(assert (=> b!3759056 m!4251607))

(assert (=> b!3759056 m!4252355))

(declare-fun m!4252357 () Bool)

(assert (=> b!3759056 m!4252357))

(declare-fun m!4252359 () Bool)

(assert (=> b!3759056 m!4252359))

(assert (=> b!3759056 m!4252349))

(assert (=> b!3758660 d!1097930))

(declare-fun b!3759057 () Bool)

(declare-fun res!1522353 () Bool)

(declare-fun e!2324662 () Bool)

(assert (=> b!3759057 (=> (not res!1522353) (not e!2324662))))

(assert (=> b!3759057 (= res!1522353 (isBalanced!3532 (++!9926 (c!650719 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))) (c!650719 (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856)))))))))

(declare-fun b!3759060 () Bool)

(declare-fun lt!1301252 () BalanceConc!24122)

(assert (=> b!3759060 (= e!2324662 (= (list!14775 lt!1301252) (++!9927 (list!14775 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))) (list!14775 (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856)))))))))

(declare-fun b!3759059 () Bool)

(declare-fun res!1522354 () Bool)

(assert (=> b!3759059 (=> (not res!1522354) (not e!2324662))))

(assert (=> b!3759059 (= res!1522354 (>= (height!1750 (++!9926 (c!650719 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))) (c!650719 (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856)))))) (max!0 (height!1750 (c!650719 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)))) (height!1750 (c!650719 (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856))))))))))

(declare-fun d!1097932 () Bool)

(assert (=> d!1097932 e!2324662))

(declare-fun res!1522356 () Bool)

(assert (=> d!1097932 (=> (not res!1522356) (not e!2324662))))

(assert (=> d!1097932 (= res!1522356 (appendAssocInst!827 (c!650719 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))) (c!650719 (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856))))))))

(assert (=> d!1097932 (= lt!1301252 (BalanceConc!24123 (++!9926 (c!650719 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))) (c!650719 (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856)))))))))

(assert (=> d!1097932 (= (++!9923 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)) (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856)))) lt!1301252)))

(declare-fun b!3759058 () Bool)

(declare-fun res!1522355 () Bool)

(assert (=> b!3759058 (=> (not res!1522355) (not e!2324662))))

(assert (=> b!3759058 (= res!1522355 (<= (height!1750 (++!9926 (c!650719 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))) (c!650719 (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856)))))) (+ (max!0 (height!1750 (c!650719 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)))) (height!1750 (c!650719 (charsOf!3985 (apply!9432 v!6366 (+ 1 from!856)))))) 1)))))

(assert (= (and d!1097932 res!1522356) b!3759057))

(assert (= (and b!3759057 res!1522353) b!3759058))

(assert (= (and b!3759058 res!1522355) b!3759059))

(assert (= (and b!3759059 res!1522354) b!3759060))

(declare-fun m!4252361 () Bool)

(assert (=> b!3759060 m!4252361))

(assert (=> b!3759060 m!4251609))

(assert (=> b!3759060 m!4251959))

(assert (=> b!3759060 m!4251967))

(declare-fun m!4252363 () Bool)

(assert (=> b!3759060 m!4252363))

(assert (=> b!3759060 m!4251959))

(assert (=> b!3759060 m!4252363))

(declare-fun m!4252365 () Bool)

(assert (=> b!3759060 m!4252365))

(declare-fun m!4252367 () Bool)

(assert (=> b!3759058 m!4252367))

(declare-fun m!4252369 () Bool)

(assert (=> b!3759058 m!4252369))

(declare-fun m!4252371 () Bool)

(assert (=> b!3759058 m!4252371))

(assert (=> b!3759058 m!4252369))

(declare-fun m!4252373 () Bool)

(assert (=> b!3759058 m!4252373))

(assert (=> b!3759058 m!4252371))

(assert (=> b!3759058 m!4252367))

(declare-fun m!4252375 () Bool)

(assert (=> b!3759058 m!4252375))

(assert (=> b!3759057 m!4252369))

(assert (=> b!3759057 m!4252369))

(declare-fun m!4252377 () Bool)

(assert (=> b!3759057 m!4252377))

(declare-fun m!4252379 () Bool)

(assert (=> d!1097932 m!4252379))

(assert (=> d!1097932 m!4252369))

(assert (=> b!3759059 m!4252367))

(assert (=> b!3759059 m!4252369))

(assert (=> b!3759059 m!4252371))

(assert (=> b!3759059 m!4252369))

(assert (=> b!3759059 m!4252373))

(assert (=> b!3759059 m!4252371))

(assert (=> b!3759059 m!4252367))

(assert (=> b!3759059 m!4252375))

(assert (=> b!3758660 d!1097932))

(declare-fun b!3759061 () Bool)

(declare-fun e!2324665 () List!40181)

(assert (=> b!3759061 (= e!2324665 Nil!40057)))

(declare-fun bm!275383 () Bool)

(declare-fun call!275388 () Int)

(assert (=> bm!275383 (= call!275388 (size!30150 lt!1301175))))

(declare-fun d!1097934 () Bool)

(declare-fun e!2324666 () Bool)

(assert (=> d!1097934 e!2324666))

(declare-fun res!1522357 () Bool)

(assert (=> d!1097934 (=> (not res!1522357) (not e!2324666))))

(declare-fun lt!1301253 () List!40181)

(assert (=> d!1097934 (= res!1522357 (= ((_ map implies) (content!5878 lt!1301253) (content!5878 lt!1301175)) ((as const (InoxSet Token!11402)) true)))))

(assert (=> d!1097934 (= lt!1301253 e!2324665)))

(declare-fun c!650908 () Bool)

(assert (=> d!1097934 (= c!650908 ((_ is Nil!40057) lt!1301175))))

(assert (=> d!1097934 (= (drop!2093 lt!1301175 (+ 1 from!856)) lt!1301253)))

(declare-fun b!3759062 () Bool)

(declare-fun e!2324664 () List!40181)

(assert (=> b!3759062 (= e!2324664 (drop!2093 (t!303688 lt!1301175) (- (+ 1 from!856) 1)))))

(declare-fun b!3759063 () Bool)

(assert (=> b!3759063 (= e!2324665 e!2324664)))

(declare-fun c!650909 () Bool)

(assert (=> b!3759063 (= c!650909 (<= (+ 1 from!856) 0))))

(declare-fun b!3759064 () Bool)

(declare-fun e!2324663 () Int)

(assert (=> b!3759064 (= e!2324666 (= (size!30150 lt!1301253) e!2324663))))

(declare-fun c!650910 () Bool)

(assert (=> b!3759064 (= c!650910 (<= (+ 1 from!856) 0))))

(declare-fun b!3759065 () Bool)

(assert (=> b!3759065 (= e!2324663 call!275388)))

(declare-fun b!3759066 () Bool)

(declare-fun e!2324667 () Int)

(assert (=> b!3759066 (= e!2324667 (- call!275388 (+ 1 from!856)))))

(declare-fun b!3759067 () Bool)

(assert (=> b!3759067 (= e!2324667 0)))

(declare-fun b!3759068 () Bool)

(assert (=> b!3759068 (= e!2324663 e!2324667)))

(declare-fun c!650907 () Bool)

(assert (=> b!3759068 (= c!650907 (>= (+ 1 from!856) call!275388))))

(declare-fun b!3759069 () Bool)

(assert (=> b!3759069 (= e!2324664 lt!1301175)))

(assert (= (and d!1097934 c!650908) b!3759061))

(assert (= (and d!1097934 (not c!650908)) b!3759063))

(assert (= (and b!3759063 c!650909) b!3759069))

(assert (= (and b!3759063 (not c!650909)) b!3759062))

(assert (= (and d!1097934 res!1522357) b!3759064))

(assert (= (and b!3759064 c!650910) b!3759065))

(assert (= (and b!3759064 (not c!650910)) b!3759068))

(assert (= (and b!3759068 c!650907) b!3759067))

(assert (= (and b!3759068 (not c!650907)) b!3759066))

(assert (= (or b!3759065 b!3759068 b!3759066) bm!275383))

(assert (=> bm!275383 m!4252281))

(declare-fun m!4252381 () Bool)

(assert (=> d!1097934 m!4252381))

(assert (=> d!1097934 m!4252285))

(declare-fun m!4252383 () Bool)

(assert (=> b!3759062 m!4252383))

(declare-fun m!4252385 () Bool)

(assert (=> b!3759064 m!4252385))

(assert (=> b!3758660 d!1097934))

(declare-fun d!1097936 () Bool)

(assert (=> d!1097936 (= (head!8035 (drop!2093 lt!1301178 (+ 1 from!856))) (apply!9433 lt!1301178 (+ 1 from!856)))))

(declare-fun lt!1301254 () Unit!57784)

(assert (=> d!1097936 (= lt!1301254 (choose!22271 lt!1301178 (+ 1 from!856)))))

(declare-fun e!2324668 () Bool)

(assert (=> d!1097936 e!2324668))

(declare-fun res!1522358 () Bool)

(assert (=> d!1097936 (=> (not res!1522358) (not e!2324668))))

(assert (=> d!1097936 (= res!1522358 (>= (+ 1 from!856) 0))))

(assert (=> d!1097936 (= (lemmaDropApply!1229 lt!1301178 (+ 1 from!856)) lt!1301254)))

(declare-fun b!3759070 () Bool)

(assert (=> b!3759070 (= e!2324668 (< (+ 1 from!856) (size!30150 lt!1301178)))))

(assert (= (and d!1097936 res!1522358) b!3759070))

(assert (=> d!1097936 m!4251979))

(assert (=> d!1097936 m!4251979))

(assert (=> d!1097936 m!4251981))

(assert (=> d!1097936 m!4251977))

(declare-fun m!4252387 () Bool)

(assert (=> d!1097936 m!4252387))

(assert (=> b!3759070 m!4252269))

(assert (=> b!3758660 d!1097936))

(assert (=> b!3758660 d!1097836))

(declare-fun d!1097938 () Bool)

(assert (=> d!1097938 (= (tail!5762 (drop!2093 lt!1301175 (+ 1 from!856))) (t!303688 (drop!2093 lt!1301175 (+ 1 from!856))))))

(assert (=> b!3758660 d!1097938))

(declare-fun b!3759089 () Bool)

(declare-fun e!2324692 () Bool)

(declare-fun e!2324690 () Bool)

(assert (=> b!3759089 (= e!2324692 e!2324690)))

(declare-fun res!1522378 () Bool)

(assert (=> b!3759089 (=> (not res!1522378) (not e!2324690))))

(declare-fun appendAssoc!252 (List!40179 List!40179 List!40179) Bool)

(assert (=> b!3759089 (= res!1522378 (appendAssoc!252 (list!14780 (left!31017 (right!31347 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))))) (list!14780 (right!31347 (right!31347 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))))) (list!14780 (c!650719 (charsOf!3985 separatorToken!144)))))))

(declare-fun b!3759090 () Bool)

(assert (=> b!3759090 (= e!2324690 (appendAssoc!252 (list!14780 (left!31017 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))))) (list!14780 (left!31017 (right!31347 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))))) (++!9927 (list!14780 (right!31347 (right!31347 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))))) (list!14780 (c!650719 (charsOf!3985 separatorToken!144))))))))

(declare-fun b!3759091 () Bool)

(declare-fun e!2324693 () Bool)

(declare-fun e!2324687 () Bool)

(assert (=> b!3759091 (= e!2324693 e!2324687)))

(declare-fun res!1522380 () Bool)

(assert (=> b!3759091 (=> (not res!1522380) (not e!2324687))))

(assert (=> b!3759091 (= res!1522380 (appendAssoc!252 (list!14780 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (list!14780 (left!31017 (c!650719 (charsOf!3985 separatorToken!144)))) (list!14780 (right!31347 (c!650719 (charsOf!3985 separatorToken!144))))))))

(declare-fun d!1097940 () Bool)

(declare-fun e!2324695 () Bool)

(assert (=> d!1097940 e!2324695))

(declare-fun res!1522379 () Bool)

(assert (=> d!1097940 (=> (not res!1522379) (not e!2324695))))

(declare-fun e!2324694 () Bool)

(assert (=> d!1097940 (= res!1522379 e!2324694)))

(declare-fun res!1522385 () Bool)

(assert (=> d!1097940 (=> res!1522385 e!2324694)))

(assert (=> d!1097940 (= res!1522385 (not ((_ is Node!12264) (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(assert (=> d!1097940 (= (appendAssocInst!827 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144))) true)))

(declare-fun b!3759092 () Bool)

(declare-fun e!2324689 () Bool)

(assert (=> b!3759092 (= e!2324687 e!2324689)))

(declare-fun res!1522382 () Bool)

(assert (=> b!3759092 (=> res!1522382 e!2324689)))

(assert (=> b!3759092 (= res!1522382 (not ((_ is Node!12264) (left!31017 (c!650719 (charsOf!3985 separatorToken!144))))))))

(declare-fun b!3759093 () Bool)

(assert (=> b!3759093 (= e!2324695 e!2324693)))

(declare-fun res!1522381 () Bool)

(assert (=> b!3759093 (=> res!1522381 e!2324693)))

(assert (=> b!3759093 (= res!1522381 (not ((_ is Node!12264) (c!650719 (charsOf!3985 separatorToken!144)))))))

(declare-fun b!3759094 () Bool)

(declare-fun e!2324691 () Bool)

(assert (=> b!3759094 (= e!2324694 e!2324691)))

(declare-fun res!1522383 () Bool)

(assert (=> b!3759094 (=> (not res!1522383) (not e!2324691))))

(assert (=> b!3759094 (= res!1522383 (appendAssoc!252 (list!14780 (left!31017 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))))) (list!14780 (right!31347 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))))) (list!14780 (c!650719 (charsOf!3985 separatorToken!144)))))))

(declare-fun e!2324688 () Bool)

(declare-fun b!3759095 () Bool)

(assert (=> b!3759095 (= e!2324688 (appendAssoc!252 (++!9927 (list!14780 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (list!14780 (left!31017 (left!31017 (c!650719 (charsOf!3985 separatorToken!144)))))) (list!14780 (right!31347 (left!31017 (c!650719 (charsOf!3985 separatorToken!144))))) (list!14780 (right!31347 (c!650719 (charsOf!3985 separatorToken!144))))))))

(declare-fun b!3759096 () Bool)

(assert (=> b!3759096 (= e!2324689 e!2324688)))

(declare-fun res!1522377 () Bool)

(assert (=> b!3759096 (=> (not res!1522377) (not e!2324688))))

(assert (=> b!3759096 (= res!1522377 (appendAssoc!252 (list!14780 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (list!14780 (left!31017 (left!31017 (c!650719 (charsOf!3985 separatorToken!144))))) (list!14780 (right!31347 (left!31017 (c!650719 (charsOf!3985 separatorToken!144)))))))))

(declare-fun b!3759097 () Bool)

(assert (=> b!3759097 (= e!2324691 e!2324692)))

(declare-fun res!1522384 () Bool)

(assert (=> b!3759097 (=> res!1522384 e!2324692)))

(assert (=> b!3759097 (= res!1522384 (not ((_ is Node!12264) (right!31347 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))))))))

(assert (= (and d!1097940 (not res!1522385)) b!3759094))

(assert (= (and b!3759094 res!1522383) b!3759097))

(assert (= (and b!3759097 (not res!1522384)) b!3759089))

(assert (= (and b!3759089 res!1522378) b!3759090))

(assert (= (and d!1097940 res!1522379) b!3759093))

(assert (= (and b!3759093 (not res!1522381)) b!3759091))

(assert (= (and b!3759091 res!1522380) b!3759092))

(assert (= (and b!3759092 (not res!1522382)) b!3759096))

(assert (= (and b!3759096 res!1522377) b!3759095))

(declare-fun m!4252389 () Bool)

(assert (=> b!3759089 m!4252389))

(declare-fun m!4252391 () Bool)

(assert (=> b!3759089 m!4252391))

(declare-fun m!4252393 () Bool)

(assert (=> b!3759089 m!4252393))

(assert (=> b!3759089 m!4252389))

(assert (=> b!3759089 m!4252391))

(assert (=> b!3759089 m!4252393))

(declare-fun m!4252395 () Bool)

(assert (=> b!3759089 m!4252395))

(declare-fun m!4252397 () Bool)

(assert (=> b!3759094 m!4252397))

(declare-fun m!4252399 () Bool)

(assert (=> b!3759094 m!4252399))

(assert (=> b!3759094 m!4252393))

(assert (=> b!3759094 m!4252397))

(assert (=> b!3759094 m!4252399))

(assert (=> b!3759094 m!4252393))

(declare-fun m!4252401 () Bool)

(assert (=> b!3759094 m!4252401))

(declare-fun m!4252403 () Bool)

(assert (=> b!3759096 m!4252403))

(declare-fun m!4252405 () Bool)

(assert (=> b!3759096 m!4252405))

(declare-fun m!4252407 () Bool)

(assert (=> b!3759096 m!4252407))

(assert (=> b!3759096 m!4252403))

(assert (=> b!3759096 m!4252405))

(assert (=> b!3759096 m!4252407))

(declare-fun m!4252409 () Bool)

(assert (=> b!3759096 m!4252409))

(assert (=> b!3759091 m!4252403))

(declare-fun m!4252411 () Bool)

(assert (=> b!3759091 m!4252411))

(declare-fun m!4252413 () Bool)

(assert (=> b!3759091 m!4252413))

(assert (=> b!3759091 m!4252403))

(assert (=> b!3759091 m!4252411))

(assert (=> b!3759091 m!4252413))

(declare-fun m!4252415 () Bool)

(assert (=> b!3759091 m!4252415))

(assert (=> b!3759090 m!4252389))

(assert (=> b!3759090 m!4252397))

(assert (=> b!3759090 m!4252389))

(declare-fun m!4252417 () Bool)

(assert (=> b!3759090 m!4252417))

(declare-fun m!4252419 () Bool)

(assert (=> b!3759090 m!4252419))

(assert (=> b!3759090 m!4252397))

(assert (=> b!3759090 m!4252391))

(assert (=> b!3759090 m!4252393))

(assert (=> b!3759090 m!4252417))

(assert (=> b!3759090 m!4252391))

(assert (=> b!3759090 m!4252393))

(assert (=> b!3759095 m!4252413))

(declare-fun m!4252421 () Bool)

(assert (=> b!3759095 m!4252421))

(assert (=> b!3759095 m!4252407))

(assert (=> b!3759095 m!4252413))

(declare-fun m!4252423 () Bool)

(assert (=> b!3759095 m!4252423))

(assert (=> b!3759095 m!4252403))

(assert (=> b!3759095 m!4252405))

(assert (=> b!3759095 m!4252421))

(assert (=> b!3759095 m!4252407))

(assert (=> b!3759095 m!4252405))

(assert (=> b!3759095 m!4252403))

(assert (=> d!1097768 d!1097940))

(declare-fun b!3759098 () Bool)

(declare-fun e!2324705 () Conc!12264)

(declare-fun call!275395 () Conc!12264)

(assert (=> b!3759098 (= e!2324705 call!275395)))

(declare-fun call!275393 () Conc!12264)

(declare-fun bm!275385 () Bool)

(declare-fun lt!1301258 () Conc!12264)

(declare-fun c!650916 () Bool)

(declare-fun c!650914 () Bool)

(declare-fun lt!1301255 () Conc!12264)

(declare-fun call!275390 () Conc!12264)

(declare-fun c!650912 () Bool)

(declare-fun call!275394 () Conc!12264)

(declare-fun c!650915 () Bool)

(declare-fun call!275389 () Conc!12264)

(declare-fun c!650918 () Bool)

(assert (=> bm!275385 (= call!275389 (<>!327 (ite c!650914 (ite (or c!650912 c!650916) (left!31017 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) call!275393) (ite c!650918 call!275394 (ite c!650915 lt!1301258 (right!31347 (left!31017 (c!650719 (charsOf!3985 separatorToken!144))))))) (ite c!650914 (ite c!650912 call!275390 (ite c!650916 call!275393 lt!1301255)) (ite c!650918 (right!31347 (c!650719 (charsOf!3985 separatorToken!144))) (ite c!650915 (right!31347 (left!31017 (c!650719 (charsOf!3985 separatorToken!144)))) (right!31347 (c!650719 (charsOf!3985 separatorToken!144))))))))))

(declare-fun bm!275386 () Bool)

(declare-fun call!275396 () Conc!12264)

(declare-fun call!275392 () Conc!12264)

(assert (=> bm!275386 (= call!275396 call!275392)))

(declare-fun bm!275387 () Bool)

(declare-fun call!275404 () Conc!12264)

(declare-fun call!275403 () Conc!12264)

(assert (=> bm!275387 (= call!275404 call!275403)))

(declare-fun b!3759099 () Bool)

(declare-fun e!2324696 () Conc!12264)

(assert (=> b!3759099 (= e!2324705 e!2324696)))

(assert (=> b!3759099 (= lt!1301255 call!275390)))

(declare-fun call!275397 () Int)

(declare-fun call!275401 () Int)

(assert (=> b!3759099 (= c!650916 (= call!275397 (- call!275401 3)))))

(declare-fun b!3759100 () Bool)

(declare-fun res!1522390 () Bool)

(declare-fun e!2324701 () Bool)

(assert (=> b!3759100 (=> (not res!1522390) (not e!2324701))))

(declare-fun lt!1301256 () Conc!12264)

(assert (=> b!3759100 (= res!1522390 (isBalanced!3532 lt!1301256))))

(declare-fun b!3759101 () Bool)

(declare-fun e!2324698 () Conc!12264)

(assert (=> b!3759101 (= e!2324698 call!275392)))

(declare-fun b!3759102 () Bool)

(declare-fun e!2324700 () Conc!12264)

(declare-fun call!275402 () Conc!12264)

(assert (=> b!3759102 (= e!2324700 call!275402)))

(declare-fun b!3759103 () Bool)

(declare-fun call!275399 () Int)

(declare-fun call!275400 () Int)

(assert (=> b!3759103 (= c!650912 (>= call!275399 call!275400))))

(declare-fun e!2324699 () Conc!12264)

(assert (=> b!3759103 (= e!2324699 e!2324705)))

(declare-fun d!1097942 () Bool)

(assert (=> d!1097942 e!2324701))

(declare-fun res!1522387 () Bool)

(assert (=> d!1097942 (=> (not res!1522387) (not e!2324701))))

(assert (=> d!1097942 (= res!1522387 (appendAssocInst!827 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144))))))

(declare-fun e!2324703 () Conc!12264)

(assert (=> d!1097942 (= lt!1301256 e!2324703)))

(declare-fun c!650913 () Bool)

(assert (=> d!1097942 (= c!650913 (= (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) Empty!12264))))

(declare-fun e!2324704 () Bool)

(assert (=> d!1097942 e!2324704))

(declare-fun res!1522389 () Bool)

(assert (=> d!1097942 (=> (not res!1522389) (not e!2324704))))

(assert (=> d!1097942 (= res!1522389 (isBalanced!3532 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))))))

(assert (=> d!1097942 (= (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144))) lt!1301256)))

(declare-fun bm!275384 () Bool)

(assert (=> bm!275384 (= call!275395 call!275389)))

(declare-fun bm!275388 () Bool)

(declare-fun call!275391 () Conc!12264)

(assert (=> bm!275388 (= call!275394 call!275391)))

(declare-fun b!3759104 () Bool)

(declare-fun e!2324702 () Conc!12264)

(assert (=> b!3759104 (= e!2324702 call!275403)))

(declare-fun bm!275389 () Bool)

(declare-fun c!650911 () Bool)

(assert (=> bm!275389 (= call!275403 (<>!327 (ite c!650911 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (ite c!650914 (ite c!650916 (left!31017 (right!31347 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))))) (left!31017 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))))) (ite c!650915 call!275396 lt!1301258))) (ite c!650911 (c!650719 (charsOf!3985 separatorToken!144)) (ite c!650914 (ite c!650916 lt!1301255 (left!31017 (right!31347 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))))) (ite c!650915 (right!31347 (c!650719 (charsOf!3985 separatorToken!144))) call!275396)))))))

(declare-fun bm!275390 () Bool)

(assert (=> bm!275390 (= call!275390 call!275391)))

(declare-fun b!3759105 () Bool)

(assert (=> b!3759105 (= e!2324704 (isBalanced!3532 (c!650719 (charsOf!3985 separatorToken!144))))))

(declare-fun b!3759106 () Bool)

(assert (=> b!3759106 (= c!650918 (>= call!275401 call!275400))))

(assert (=> b!3759106 (= e!2324699 e!2324698)))

(declare-fun bm!275391 () Bool)

(assert (=> bm!275391 (= call!275401 (height!1750 (ite c!650914 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (right!31347 (c!650719 (charsOf!3985 separatorToken!144))))))))

(declare-fun bm!275392 () Bool)

(assert (=> bm!275392 (= call!275402 call!275404)))

(declare-fun b!3759107 () Bool)

(assert (=> b!3759107 (= e!2324698 e!2324700)))

(assert (=> b!3759107 (= lt!1301258 call!275394)))

(assert (=> b!3759107 (= c!650915 (= call!275397 (- call!275399 3)))))

(declare-fun b!3759108 () Bool)

(assert (=> b!3759108 (= e!2324700 call!275402)))

(declare-fun b!3759109 () Bool)

(assert (=> b!3759109 (= e!2324703 (c!650719 (charsOf!3985 separatorToken!144)))))

(declare-fun b!3759110 () Bool)

(assert (=> b!3759110 (= e!2324701 (= (list!14780 lt!1301256) (++!9927 (list!14780 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (list!14780 (c!650719 (charsOf!3985 separatorToken!144))))))))

(declare-fun b!3759111 () Bool)

(declare-fun call!275398 () Conc!12264)

(assert (=> b!3759111 (= e!2324696 call!275398)))

(declare-fun bm!275393 () Bool)

(assert (=> bm!275393 (= call!275400 (height!1750 (ite c!650914 (right!31347 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (left!31017 (c!650719 (charsOf!3985 separatorToken!144))))))))

(declare-fun bm!275394 () Bool)

(assert (=> bm!275394 (= call!275398 call!275395)))

(declare-fun b!3759112 () Bool)

(declare-fun res!1522388 () Bool)

(assert (=> b!3759112 (=> (not res!1522388) (not e!2324701))))

(assert (=> b!3759112 (= res!1522388 (<= (height!1750 lt!1301256) (+ (max!0 (height!1750 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (height!1750 (c!650719 (charsOf!3985 separatorToken!144)))) 1)))))

(declare-fun bm!275395 () Bool)

(assert (=> bm!275395 (= call!275391 (++!9926 (ite c!650914 (ite c!650912 (right!31347 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (right!31347 (right!31347 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))))) (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (ite c!650914 (c!650719 (charsOf!3985 separatorToken!144)) (ite c!650918 (left!31017 (c!650719 (charsOf!3985 separatorToken!144))) (left!31017 (left!31017 (c!650719 (charsOf!3985 separatorToken!144))))))))))

(declare-fun e!2324697 () Conc!12264)

(declare-fun b!3759113 () Bool)

(assert (=> b!3759113 (= e!2324697 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))))))

(declare-fun b!3759114 () Bool)

(assert (=> b!3759114 (= e!2324703 e!2324697)))

(declare-fun c!650917 () Bool)

(assert (=> b!3759114 (= c!650917 (= (c!650719 (charsOf!3985 separatorToken!144)) Empty!12264))))

(declare-fun bm!275396 () Bool)

(assert (=> bm!275396 (= call!275392 call!275389)))

(declare-fun b!3759115 () Bool)

(declare-fun lt!1301257 () Int)

(assert (=> b!3759115 (= c!650911 (and (<= (- 1) lt!1301257) (<= lt!1301257 1)))))

(assert (=> b!3759115 (= lt!1301257 (- (height!1750 (c!650719 (charsOf!3985 separatorToken!144))) (height!1750 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(assert (=> b!3759115 (= e!2324697 e!2324702)))

(declare-fun bm!275397 () Bool)

(assert (=> bm!275397 (= call!275393 call!275404)))

(declare-fun b!3759116 () Bool)

(assert (=> b!3759116 (= e!2324702 e!2324699)))

(assert (=> b!3759116 (= c!650914 (< lt!1301257 (- 1)))))

(declare-fun bm!275398 () Bool)

(assert (=> bm!275398 (= call!275399 (height!1750 (ite c!650914 (left!31017 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (c!650719 (charsOf!3985 separatorToken!144)))))))

(declare-fun bm!275399 () Bool)

(assert (=> bm!275399 (= call!275397 (height!1750 (ite c!650914 lt!1301255 lt!1301258)))))

(declare-fun b!3759117 () Bool)

(assert (=> b!3759117 (= e!2324696 call!275398)))

(declare-fun b!3759118 () Bool)

(declare-fun res!1522386 () Bool)

(assert (=> b!3759118 (=> (not res!1522386) (not e!2324701))))

(assert (=> b!3759118 (= res!1522386 (>= (height!1750 lt!1301256) (max!0 (height!1750 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (height!1750 (c!650719 (charsOf!3985 separatorToken!144))))))))

(assert (= (and d!1097942 res!1522389) b!3759105))

(assert (= (and d!1097942 c!650913) b!3759109))

(assert (= (and d!1097942 (not c!650913)) b!3759114))

(assert (= (and b!3759114 c!650917) b!3759113))

(assert (= (and b!3759114 (not c!650917)) b!3759115))

(assert (= (and b!3759115 c!650911) b!3759104))

(assert (= (and b!3759115 (not c!650911)) b!3759116))

(assert (= (and b!3759116 c!650914) b!3759103))

(assert (= (and b!3759116 (not c!650914)) b!3759106))

(assert (= (and b!3759103 c!650912) b!3759098))

(assert (= (and b!3759103 (not c!650912)) b!3759099))

(assert (= (and b!3759099 c!650916) b!3759111))

(assert (= (and b!3759099 (not c!650916)) b!3759117))

(assert (= (or b!3759111 b!3759117) bm!275397))

(assert (= (or b!3759111 b!3759117) bm!275394))

(assert (= (or b!3759098 b!3759099) bm!275390))

(assert (= (or b!3759098 bm!275394) bm!275384))

(assert (= (and b!3759106 c!650918) b!3759101))

(assert (= (and b!3759106 (not c!650918)) b!3759107))

(assert (= (and b!3759107 c!650915) b!3759108))

(assert (= (and b!3759107 (not c!650915)) b!3759102))

(assert (= (or b!3759108 b!3759102) bm!275386))

(assert (= (or b!3759108 b!3759102) bm!275392))

(assert (= (or b!3759101 b!3759107) bm!275388))

(assert (= (or b!3759101 bm!275386) bm!275396))

(assert (= (or bm!275397 bm!275392) bm!275387))

(assert (= (or b!3759099 b!3759106) bm!275391))

(assert (= (or b!3759103 b!3759107) bm!275398))

(assert (= (or bm!275390 bm!275388) bm!275395))

(assert (= (or bm!275384 bm!275396) bm!275385))

(assert (= (or b!3759099 b!3759107) bm!275399))

(assert (= (or b!3759103 b!3759106) bm!275393))

(assert (= (or b!3759104 bm!275387) bm!275389))

(assert (= (and d!1097942 res!1522387) b!3759100))

(assert (= (and b!3759100 res!1522390) b!3759112))

(assert (= (and b!3759112 res!1522388) b!3759118))

(assert (= (and b!3759118 res!1522386) b!3759110))

(declare-fun m!4252425 () Bool)

(assert (=> bm!275389 m!4252425))

(declare-fun m!4252427 () Bool)

(assert (=> bm!275399 m!4252427))

(declare-fun m!4252429 () Bool)

(assert (=> b!3759110 m!4252429))

(assert (=> b!3759110 m!4252403))

(assert (=> b!3759110 m!4252393))

(assert (=> b!3759110 m!4252403))

(assert (=> b!3759110 m!4252393))

(declare-fun m!4252431 () Bool)

(assert (=> b!3759110 m!4252431))

(declare-fun m!4252433 () Bool)

(assert (=> bm!275398 m!4252433))

(declare-fun m!4252435 () Bool)

(assert (=> b!3759112 m!4252435))

(assert (=> b!3759112 m!4251701))

(assert (=> b!3759112 m!4251697))

(assert (=> b!3759112 m!4251701))

(assert (=> b!3759112 m!4251697))

(assert (=> b!3759112 m!4251705))

(declare-fun m!4252437 () Bool)

(assert (=> b!3759105 m!4252437))

(assert (=> b!3759115 m!4251697))

(assert (=> b!3759115 m!4251701))

(assert (=> b!3759118 m!4252435))

(assert (=> b!3759118 m!4251701))

(assert (=> b!3759118 m!4251697))

(assert (=> b!3759118 m!4251701))

(assert (=> b!3759118 m!4251697))

(assert (=> b!3759118 m!4251705))

(assert (=> d!1097942 m!4251709))

(declare-fun m!4252439 () Bool)

(assert (=> d!1097942 m!4252439))

(declare-fun m!4252441 () Bool)

(assert (=> bm!275395 m!4252441))

(declare-fun m!4252443 () Bool)

(assert (=> bm!275385 m!4252443))

(declare-fun m!4252445 () Bool)

(assert (=> b!3759100 m!4252445))

(declare-fun m!4252447 () Bool)

(assert (=> bm!275391 m!4252447))

(declare-fun m!4252449 () Bool)

(assert (=> bm!275393 m!4252449))

(assert (=> d!1097768 d!1097942))

(declare-fun d!1097944 () Bool)

(assert (=> d!1097944 (= (list!14775 lt!1301074) (list!14780 (c!650719 lt!1301074)))))

(declare-fun bs!575683 () Bool)

(assert (= bs!575683 d!1097944))

(declare-fun m!4252451 () Bool)

(assert (=> bs!575683 m!4252451))

(assert (=> d!1097782 d!1097944))

(declare-fun b!3759119 () Bool)

(declare-fun e!2324708 () List!40181)

(assert (=> b!3759119 (= e!2324708 Nil!40057)))

(declare-fun bm!275400 () Bool)

(declare-fun call!275405 () Int)

(assert (=> bm!275400 (= call!275405 (size!30150 (t!303688 lt!1301045)))))

(declare-fun d!1097946 () Bool)

(declare-fun e!2324709 () Bool)

(assert (=> d!1097946 e!2324709))

(declare-fun res!1522391 () Bool)

(assert (=> d!1097946 (=> (not res!1522391) (not e!2324709))))

(declare-fun lt!1301259 () List!40181)

(assert (=> d!1097946 (= res!1522391 (= ((_ map implies) (content!5878 lt!1301259) (content!5878 (t!303688 lt!1301045))) ((as const (InoxSet Token!11402)) true)))))

(assert (=> d!1097946 (= lt!1301259 e!2324708)))

(declare-fun c!650920 () Bool)

(assert (=> d!1097946 (= c!650920 ((_ is Nil!40057) (t!303688 lt!1301045)))))

(assert (=> d!1097946 (= (drop!2093 (t!303688 lt!1301045) (- (+ 1 from!856) 1)) lt!1301259)))

(declare-fun b!3759120 () Bool)

(declare-fun e!2324707 () List!40181)

(assert (=> b!3759120 (= e!2324707 (drop!2093 (t!303688 (t!303688 lt!1301045)) (- (- (+ 1 from!856) 1) 1)))))

(declare-fun b!3759121 () Bool)

(assert (=> b!3759121 (= e!2324708 e!2324707)))

(declare-fun c!650921 () Bool)

(assert (=> b!3759121 (= c!650921 (<= (- (+ 1 from!856) 1) 0))))

(declare-fun b!3759122 () Bool)

(declare-fun e!2324706 () Int)

(assert (=> b!3759122 (= e!2324709 (= (size!30150 lt!1301259) e!2324706))))

(declare-fun c!650922 () Bool)

(assert (=> b!3759122 (= c!650922 (<= (- (+ 1 from!856) 1) 0))))

(declare-fun b!3759123 () Bool)

(assert (=> b!3759123 (= e!2324706 call!275405)))

(declare-fun b!3759124 () Bool)

(declare-fun e!2324710 () Int)

(assert (=> b!3759124 (= e!2324710 (- call!275405 (- (+ 1 from!856) 1)))))

(declare-fun b!3759125 () Bool)

(assert (=> b!3759125 (= e!2324710 0)))

(declare-fun b!3759126 () Bool)

(assert (=> b!3759126 (= e!2324706 e!2324710)))

(declare-fun c!650919 () Bool)

(assert (=> b!3759126 (= c!650919 (>= (- (+ 1 from!856) 1) call!275405))))

(declare-fun b!3759127 () Bool)

(assert (=> b!3759127 (= e!2324707 (t!303688 lt!1301045))))

(assert (= (and d!1097946 c!650920) b!3759119))

(assert (= (and d!1097946 (not c!650920)) b!3759121))

(assert (= (and b!3759121 c!650921) b!3759127))

(assert (= (and b!3759121 (not c!650921)) b!3759120))

(assert (= (and d!1097946 res!1522391) b!3759122))

(assert (= (and b!3759122 c!650922) b!3759123))

(assert (= (and b!3759122 (not c!650922)) b!3759126))

(assert (= (and b!3759126 c!650919) b!3759125))

(assert (= (and b!3759126 (not c!650919)) b!3759124))

(assert (= (or b!3759123 b!3759126 b!3759124) bm!275400))

(declare-fun m!4252453 () Bool)

(assert (=> bm!275400 m!4252453))

(declare-fun m!4252455 () Bool)

(assert (=> d!1097946 m!4252455))

(declare-fun m!4252457 () Bool)

(assert (=> d!1097946 m!4252457))

(declare-fun m!4252459 () Bool)

(assert (=> b!3759120 m!4252459))

(declare-fun m!4252461 () Bool)

(assert (=> b!3759122 m!4252461))

(assert (=> b!3758488 d!1097946))

(declare-fun d!1097948 () Bool)

(declare-fun res!1522407 () Bool)

(declare-fun e!2324715 () Bool)

(assert (=> d!1097948 (=> res!1522407 e!2324715)))

(assert (=> d!1097948 (= res!1522407 (not ((_ is Node!12264) (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(assert (=> d!1097948 (= (isBalanced!3532 (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))) e!2324715)))

(declare-fun b!3759140 () Bool)

(declare-fun res!1522408 () Bool)

(declare-fun e!2324716 () Bool)

(assert (=> b!3759140 (=> (not res!1522408) (not e!2324716))))

(assert (=> b!3759140 (= res!1522408 (<= (- (height!1750 (left!31017 (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))) (height!1750 (right!31347 (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))))) 1))))

(declare-fun b!3759141 () Bool)

(declare-fun res!1522405 () Bool)

(assert (=> b!3759141 (=> (not res!1522405) (not e!2324716))))

(assert (=> b!3759141 (= res!1522405 (isBalanced!3532 (left!31017 (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(declare-fun b!3759142 () Bool)

(declare-fun isEmpty!23567 (Conc!12264) Bool)

(assert (=> b!3759142 (= e!2324716 (not (isEmpty!23567 (right!31347 (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))))))))

(declare-fun b!3759143 () Bool)

(declare-fun res!1522406 () Bool)

(assert (=> b!3759143 (=> (not res!1522406) (not e!2324716))))

(assert (=> b!3759143 (= res!1522406 (isBalanced!3532 (right!31347 (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(declare-fun b!3759144 () Bool)

(declare-fun res!1522409 () Bool)

(assert (=> b!3759144 (=> (not res!1522409) (not e!2324716))))

(assert (=> b!3759144 (= res!1522409 (not (isEmpty!23567 (left!31017 (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))))))))

(declare-fun b!3759145 () Bool)

(assert (=> b!3759145 (= e!2324715 e!2324716)))

(declare-fun res!1522404 () Bool)

(assert (=> b!3759145 (=> (not res!1522404) (not e!2324716))))

(assert (=> b!3759145 (= res!1522404 (<= (- 1) (- (height!1750 (left!31017 (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))) (height!1750 (right!31347 (++!9926 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))))

(assert (= (and d!1097948 (not res!1522407)) b!3759145))

(assert (= (and b!3759145 res!1522404) b!3759140))

(assert (= (and b!3759140 res!1522408) b!3759141))

(assert (= (and b!3759141 res!1522405) b!3759143))

(assert (= (and b!3759143 res!1522406) b!3759144))

(assert (= (and b!3759144 res!1522409) b!3759142))

(declare-fun m!4252463 () Bool)

(assert (=> b!3759141 m!4252463))

(declare-fun m!4252465 () Bool)

(assert (=> b!3759144 m!4252465))

(declare-fun m!4252467 () Bool)

(assert (=> b!3759142 m!4252467))

(declare-fun m!4252469 () Bool)

(assert (=> b!3759145 m!4252469))

(declare-fun m!4252471 () Bool)

(assert (=> b!3759145 m!4252471))

(assert (=> b!3759140 m!4252469))

(assert (=> b!3759140 m!4252471))

(declare-fun m!4252473 () Bool)

(assert (=> b!3759143 m!4252473))

(assert (=> b!3758676 d!1097948))

(assert (=> b!3758676 d!1097902))

(declare-fun b!3759156 () Bool)

(declare-fun res!1522414 () Bool)

(declare-fun e!2324722 () Bool)

(assert (=> b!3759156 (=> (not res!1522414) (not e!2324722))))

(declare-fun lt!1301262 () List!40179)

(assert (=> b!3759156 (= res!1522414 (= (size!30154 lt!1301262) (+ (size!30154 (list!14775 acc!419)) (size!30154 (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))))))))

(declare-fun b!3759157 () Bool)

(assert (=> b!3759157 (= e!2324722 (or (not (= (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856)))) Nil!40055)) (= lt!1301262 (list!14775 acc!419))))))

(declare-fun b!3759154 () Bool)

(declare-fun e!2324721 () List!40179)

(assert (=> b!3759154 (= e!2324721 (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856)))))))

(declare-fun b!3759155 () Bool)

(assert (=> b!3759155 (= e!2324721 (Cons!40055 (h!45475 (list!14775 acc!419)) (++!9927 (t!303686 (list!14775 acc!419)) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856)))))))))

(declare-fun d!1097950 () Bool)

(assert (=> d!1097950 e!2324722))

(declare-fun res!1522415 () Bool)

(assert (=> d!1097950 (=> (not res!1522415) (not e!2324722))))

(declare-fun content!5880 (List!40179) (InoxSet C!22260))

(assert (=> d!1097950 (= res!1522415 (= (content!5880 lt!1301262) ((_ map or) (content!5880 (list!14775 acc!419)) (content!5880 (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))))))))

(assert (=> d!1097950 (= lt!1301262 e!2324721)))

(declare-fun c!650925 () Bool)

(assert (=> d!1097950 (= c!650925 ((_ is Nil!40055) (list!14775 acc!419)))))

(assert (=> d!1097950 (= (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) lt!1301262)))

(assert (= (and d!1097950 c!650925) b!3759154))

(assert (= (and d!1097950 (not c!650925)) b!3759155))

(assert (= (and d!1097950 res!1522415) b!3759156))

(assert (= (and b!3759156 res!1522414) b!3759157))

(declare-fun m!4252475 () Bool)

(assert (=> b!3759156 m!4252475))

(assert (=> b!3759156 m!4251627))

(declare-fun m!4252477 () Bool)

(assert (=> b!3759156 m!4252477))

(assert (=> b!3759156 m!4251829))

(declare-fun m!4252479 () Bool)

(assert (=> b!3759156 m!4252479))

(assert (=> b!3759155 m!4251829))

(declare-fun m!4252481 () Bool)

(assert (=> b!3759155 m!4252481))

(declare-fun m!4252483 () Bool)

(assert (=> d!1097950 m!4252483))

(assert (=> d!1097950 m!4251627))

(declare-fun m!4252485 () Bool)

(assert (=> d!1097950 m!4252485))

(assert (=> d!1097950 m!4251829))

(declare-fun m!4252487 () Bool)

(assert (=> d!1097950 m!4252487))

(assert (=> b!3758547 d!1097950))

(declare-fun d!1097952 () Bool)

(assert (=> d!1097952 (= (++!9927 (++!9927 (list!14775 acc!419) lt!1301126) lt!1301128) (++!9927 (list!14775 acc!419) (++!9927 lt!1301126 lt!1301128)))))

(declare-fun lt!1301265 () Unit!57784)

(declare-fun choose!22273 (List!40179 List!40179 List!40179) Unit!57784)

(assert (=> d!1097952 (= lt!1301265 (choose!22273 (list!14775 acc!419) lt!1301126 lt!1301128))))

(assert (=> d!1097952 (= (lemmaConcatAssociativity!2094 (list!14775 acc!419) lt!1301126 lt!1301128) lt!1301265)))

(declare-fun bs!575684 () Bool)

(assert (= bs!575684 d!1097952))

(assert (=> bs!575684 m!4251627))

(assert (=> bs!575684 m!4251823))

(assert (=> bs!575684 m!4251843))

(assert (=> bs!575684 m!4251627))

(assert (=> bs!575684 m!4251825))

(assert (=> bs!575684 m!4251627))

(declare-fun m!4252489 () Bool)

(assert (=> bs!575684 m!4252489))

(assert (=> bs!575684 m!4251825))

(assert (=> bs!575684 m!4251827))

(assert (=> bs!575684 m!4251823))

(assert (=> b!3758547 d!1097952))

(declare-fun b!3759160 () Bool)

(declare-fun res!1522416 () Bool)

(declare-fun e!2324724 () Bool)

(assert (=> b!3759160 (=> (not res!1522416) (not e!2324724))))

(declare-fun lt!1301266 () List!40179)

(assert (=> b!3759160 (= res!1522416 (= (size!30154 lt!1301266) (+ (size!30154 (list!14775 acc!419)) (size!30154 (++!9927 lt!1301126 lt!1301128)))))))

(declare-fun b!3759161 () Bool)

(assert (=> b!3759161 (= e!2324724 (or (not (= (++!9927 lt!1301126 lt!1301128) Nil!40055)) (= lt!1301266 (list!14775 acc!419))))))

(declare-fun b!3759158 () Bool)

(declare-fun e!2324723 () List!40179)

(assert (=> b!3759158 (= e!2324723 (++!9927 lt!1301126 lt!1301128))))

(declare-fun b!3759159 () Bool)

(assert (=> b!3759159 (= e!2324723 (Cons!40055 (h!45475 (list!14775 acc!419)) (++!9927 (t!303686 (list!14775 acc!419)) (++!9927 lt!1301126 lt!1301128))))))

(declare-fun d!1097954 () Bool)

(assert (=> d!1097954 e!2324724))

(declare-fun res!1522417 () Bool)

(assert (=> d!1097954 (=> (not res!1522417) (not e!2324724))))

(assert (=> d!1097954 (= res!1522417 (= (content!5880 lt!1301266) ((_ map or) (content!5880 (list!14775 acc!419)) (content!5880 (++!9927 lt!1301126 lt!1301128)))))))

(assert (=> d!1097954 (= lt!1301266 e!2324723)))

(declare-fun c!650926 () Bool)

(assert (=> d!1097954 (= c!650926 ((_ is Nil!40055) (list!14775 acc!419)))))

(assert (=> d!1097954 (= (++!9927 (list!14775 acc!419) (++!9927 lt!1301126 lt!1301128)) lt!1301266)))

(assert (= (and d!1097954 c!650926) b!3759158))

(assert (= (and d!1097954 (not c!650926)) b!3759159))

(assert (= (and d!1097954 res!1522417) b!3759160))

(assert (= (and b!3759160 res!1522416) b!3759161))

(declare-fun m!4252491 () Bool)

(assert (=> b!3759160 m!4252491))

(assert (=> b!3759160 m!4251627))

(assert (=> b!3759160 m!4252477))

(assert (=> b!3759160 m!4251823))

(declare-fun m!4252493 () Bool)

(assert (=> b!3759160 m!4252493))

(assert (=> b!3759159 m!4251823))

(declare-fun m!4252495 () Bool)

(assert (=> b!3759159 m!4252495))

(declare-fun m!4252497 () Bool)

(assert (=> d!1097954 m!4252497))

(assert (=> d!1097954 m!4251627))

(assert (=> d!1097954 m!4252485))

(assert (=> d!1097954 m!4251823))

(declare-fun m!4252499 () Bool)

(assert (=> d!1097954 m!4252499))

(assert (=> b!3758547 d!1097954))

(declare-fun d!1097956 () Bool)

(assert (=> d!1097956 (= (list!14775 (charsOf!3985 separatorToken!144)) (list!14780 (c!650719 (charsOf!3985 separatorToken!144))))))

(declare-fun bs!575685 () Bool)

(assert (= bs!575685 d!1097956))

(assert (=> bs!575685 m!4252393))

(assert (=> b!3758547 d!1097956))

(declare-fun b!3759164 () Bool)

(declare-fun res!1522418 () Bool)

(declare-fun e!2324726 () Bool)

(assert (=> b!3759164 (=> (not res!1522418) (not e!2324726))))

(declare-fun lt!1301267 () List!40179)

(assert (=> b!3759164 (= res!1522418 (= (size!30154 lt!1301267) (+ (size!30154 (list!14775 acc!419)) (size!30154 lt!1301126))))))

(declare-fun b!3759165 () Bool)

(assert (=> b!3759165 (= e!2324726 (or (not (= lt!1301126 Nil!40055)) (= lt!1301267 (list!14775 acc!419))))))

(declare-fun b!3759162 () Bool)

(declare-fun e!2324725 () List!40179)

(assert (=> b!3759162 (= e!2324725 lt!1301126)))

(declare-fun b!3759163 () Bool)

(assert (=> b!3759163 (= e!2324725 (Cons!40055 (h!45475 (list!14775 acc!419)) (++!9927 (t!303686 (list!14775 acc!419)) lt!1301126)))))

(declare-fun d!1097958 () Bool)

(assert (=> d!1097958 e!2324726))

(declare-fun res!1522419 () Bool)

(assert (=> d!1097958 (=> (not res!1522419) (not e!2324726))))

(assert (=> d!1097958 (= res!1522419 (= (content!5880 lt!1301267) ((_ map or) (content!5880 (list!14775 acc!419)) (content!5880 lt!1301126))))))

(assert (=> d!1097958 (= lt!1301267 e!2324725)))

(declare-fun c!650927 () Bool)

(assert (=> d!1097958 (= c!650927 ((_ is Nil!40055) (list!14775 acc!419)))))

(assert (=> d!1097958 (= (++!9927 (list!14775 acc!419) lt!1301126) lt!1301267)))

(assert (= (and d!1097958 c!650927) b!3759162))

(assert (= (and d!1097958 (not c!650927)) b!3759163))

(assert (= (and d!1097958 res!1522419) b!3759164))

(assert (= (and b!3759164 res!1522418) b!3759165))

(declare-fun m!4252501 () Bool)

(assert (=> b!3759164 m!4252501))

(assert (=> b!3759164 m!4251627))

(assert (=> b!3759164 m!4252477))

(declare-fun m!4252503 () Bool)

(assert (=> b!3759164 m!4252503))

(declare-fun m!4252505 () Bool)

(assert (=> b!3759163 m!4252505))

(declare-fun m!4252507 () Bool)

(assert (=> d!1097958 m!4252507))

(assert (=> d!1097958 m!4251627))

(assert (=> d!1097958 m!4252485))

(declare-fun m!4252509 () Bool)

(assert (=> d!1097958 m!4252509))

(assert (=> b!3758547 d!1097958))

(declare-fun b!3759168 () Bool)

(declare-fun res!1522420 () Bool)

(declare-fun e!2324728 () Bool)

(assert (=> b!3759168 (=> (not res!1522420) (not e!2324728))))

(declare-fun lt!1301268 () List!40179)

(assert (=> b!3759168 (= res!1522420 (= (size!30154 lt!1301268) (+ (size!30154 (list!14775 acc!419)) (size!30154 (++!9927 lt!1301131 lt!1301130)))))))

(declare-fun b!3759169 () Bool)

(assert (=> b!3759169 (= e!2324728 (or (not (= (++!9927 lt!1301131 lt!1301130) Nil!40055)) (= lt!1301268 (list!14775 acc!419))))))

(declare-fun b!3759166 () Bool)

(declare-fun e!2324727 () List!40179)

(assert (=> b!3759166 (= e!2324727 (++!9927 lt!1301131 lt!1301130))))

(declare-fun b!3759167 () Bool)

(assert (=> b!3759167 (= e!2324727 (Cons!40055 (h!45475 (list!14775 acc!419)) (++!9927 (t!303686 (list!14775 acc!419)) (++!9927 lt!1301131 lt!1301130))))))

(declare-fun d!1097960 () Bool)

(assert (=> d!1097960 e!2324728))

(declare-fun res!1522421 () Bool)

(assert (=> d!1097960 (=> (not res!1522421) (not e!2324728))))

(assert (=> d!1097960 (= res!1522421 (= (content!5880 lt!1301268) ((_ map or) (content!5880 (list!14775 acc!419)) (content!5880 (++!9927 lt!1301131 lt!1301130)))))))

(assert (=> d!1097960 (= lt!1301268 e!2324727)))

(declare-fun c!650928 () Bool)

(assert (=> d!1097960 (= c!650928 ((_ is Nil!40055) (list!14775 acc!419)))))

(assert (=> d!1097960 (= (++!9927 (list!14775 acc!419) (++!9927 lt!1301131 lt!1301130)) lt!1301268)))

(assert (= (and d!1097960 c!650928) b!3759166))

(assert (= (and d!1097960 (not c!650928)) b!3759167))

(assert (= (and d!1097960 res!1522421) b!3759168))

(assert (= (and b!3759168 res!1522420) b!3759169))

(declare-fun m!4252511 () Bool)

(assert (=> b!3759168 m!4252511))

(assert (=> b!3759168 m!4251627))

(assert (=> b!3759168 m!4252477))

(assert (=> b!3759168 m!4251837))

(declare-fun m!4252513 () Bool)

(assert (=> b!3759168 m!4252513))

(assert (=> b!3759167 m!4251837))

(declare-fun m!4252515 () Bool)

(assert (=> b!3759167 m!4252515))

(declare-fun m!4252517 () Bool)

(assert (=> d!1097960 m!4252517))

(assert (=> d!1097960 m!4251627))

(assert (=> d!1097960 m!4252485))

(assert (=> d!1097960 m!4251837))

(declare-fun m!4252519 () Bool)

(assert (=> d!1097960 m!4252519))

(assert (=> b!3758547 d!1097960))

(declare-fun d!1097962 () Bool)

(declare-fun lt!1301269 () BalanceConc!24122)

(assert (=> d!1097962 (= (list!14775 lt!1301269) (originalCharacters!6732 (h!45477 (dropList!1269 v!6366 from!856))))))

(assert (=> d!1097962 (= lt!1301269 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (h!45477 (dropList!1269 v!6366 from!856))))) (value!195351 (h!45477 (dropList!1269 v!6366 from!856)))))))

(assert (=> d!1097962 (= (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))) lt!1301269)))

(declare-fun b_lambda!110273 () Bool)

(assert (=> (not b_lambda!110273) (not d!1097962)))

(declare-fun t!303707 () Bool)

(declare-fun tb!215135 () Bool)

(assert (=> (and b!3758406 (= (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (toChars!8343 (transformation!6132 (rule!8896 (h!45477 (dropList!1269 v!6366 from!856)))))) t!303707) tb!215135))

(declare-fun e!2324729 () Bool)

(declare-fun b!3759170 () Bool)

(declare-fun tp!1148472 () Bool)

(assert (=> b!3759170 (= e!2324729 (and (inv!53702 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (h!45477 (dropList!1269 v!6366 from!856))))) (value!195351 (h!45477 (dropList!1269 v!6366 from!856)))))) tp!1148472))))

(declare-fun result!262684 () Bool)

(assert (=> tb!215135 (= result!262684 (and (inv!53699 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (h!45477 (dropList!1269 v!6366 from!856))))) (value!195351 (h!45477 (dropList!1269 v!6366 from!856))))) e!2324729))))

(assert (= tb!215135 b!3759170))

(declare-fun m!4252521 () Bool)

(assert (=> b!3759170 m!4252521))

(declare-fun m!4252523 () Bool)

(assert (=> tb!215135 m!4252523))

(assert (=> d!1097962 t!303707))

(declare-fun b_and!279181 () Bool)

(assert (= b_and!279179 (and (=> t!303707 result!262684) b_and!279181)))

(declare-fun m!4252525 () Bool)

(assert (=> d!1097962 m!4252525))

(declare-fun m!4252527 () Bool)

(assert (=> d!1097962 m!4252527))

(assert (=> b!3758547 d!1097962))

(declare-fun d!1097964 () Bool)

(assert (=> d!1097964 (= (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856)))) (list!14780 (c!650719 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))))))

(declare-fun bs!575686 () Bool)

(assert (= bs!575686 d!1097964))

(declare-fun m!4252529 () Bool)

(assert (=> bs!575686 m!4252529))

(assert (=> b!3758547 d!1097964))

(assert (=> b!3758547 d!1097836))

(declare-fun b!3759173 () Bool)

(declare-fun res!1522422 () Bool)

(declare-fun e!2324731 () Bool)

(assert (=> b!3759173 (=> (not res!1522422) (not e!2324731))))

(declare-fun lt!1301270 () List!40179)

(assert (=> b!3759173 (= res!1522422 (= (size!30154 lt!1301270) (+ (size!30154 (++!9927 (list!14775 acc!419) lt!1301126)) (size!30154 lt!1301128))))))

(declare-fun b!3759174 () Bool)

(assert (=> b!3759174 (= e!2324731 (or (not (= lt!1301128 Nil!40055)) (= lt!1301270 (++!9927 (list!14775 acc!419) lt!1301126))))))

(declare-fun b!3759171 () Bool)

(declare-fun e!2324730 () List!40179)

(assert (=> b!3759171 (= e!2324730 lt!1301128)))

(declare-fun b!3759172 () Bool)

(assert (=> b!3759172 (= e!2324730 (Cons!40055 (h!45475 (++!9927 (list!14775 acc!419) lt!1301126)) (++!9927 (t!303686 (++!9927 (list!14775 acc!419) lt!1301126)) lt!1301128)))))

(declare-fun d!1097966 () Bool)

(assert (=> d!1097966 e!2324731))

(declare-fun res!1522423 () Bool)

(assert (=> d!1097966 (=> (not res!1522423) (not e!2324731))))

(assert (=> d!1097966 (= res!1522423 (= (content!5880 lt!1301270) ((_ map or) (content!5880 (++!9927 (list!14775 acc!419) lt!1301126)) (content!5880 lt!1301128))))))

(assert (=> d!1097966 (= lt!1301270 e!2324730)))

(declare-fun c!650929 () Bool)

(assert (=> d!1097966 (= c!650929 ((_ is Nil!40055) (++!9927 (list!14775 acc!419) lt!1301126)))))

(assert (=> d!1097966 (= (++!9927 (++!9927 (list!14775 acc!419) lt!1301126) lt!1301128) lt!1301270)))

(assert (= (and d!1097966 c!650929) b!3759171))

(assert (= (and d!1097966 (not c!650929)) b!3759172))

(assert (= (and d!1097966 res!1522423) b!3759173))

(assert (= (and b!3759173 res!1522422) b!3759174))

(declare-fun m!4252531 () Bool)

(assert (=> b!3759173 m!4252531))

(assert (=> b!3759173 m!4251825))

(declare-fun m!4252533 () Bool)

(assert (=> b!3759173 m!4252533))

(declare-fun m!4252535 () Bool)

(assert (=> b!3759173 m!4252535))

(declare-fun m!4252537 () Bool)

(assert (=> b!3759172 m!4252537))

(declare-fun m!4252539 () Bool)

(assert (=> d!1097966 m!4252539))

(assert (=> d!1097966 m!4251825))

(declare-fun m!4252541 () Bool)

(assert (=> d!1097966 m!4252541))

(declare-fun m!4252543 () Bool)

(assert (=> d!1097966 m!4252543))

(assert (=> b!3758547 d!1097966))

(declare-fun d!1097968 () Bool)

(declare-fun c!650932 () Bool)

(assert (=> d!1097968 (= c!650932 ((_ is Cons!40057) (t!303688 (dropList!1269 v!6366 from!856))))))

(declare-fun e!2324734 () List!40179)

(assert (=> d!1097968 (= (printWithSeparatorTokenList!402 thiss!14060 (t!303688 (dropList!1269 v!6366 from!856)) separatorToken!144) e!2324734)))

(declare-fun b!3759179 () Bool)

(assert (=> b!3759179 (= e!2324734 (++!9927 (++!9927 (list!14775 (charsOf!3985 (h!45477 (t!303688 (dropList!1269 v!6366 from!856))))) (list!14775 (charsOf!3985 separatorToken!144))) (printWithSeparatorTokenList!402 thiss!14060 (t!303688 (t!303688 (dropList!1269 v!6366 from!856))) separatorToken!144)))))

(declare-fun b!3759180 () Bool)

(assert (=> b!3759180 (= e!2324734 Nil!40055)))

(assert (= (and d!1097968 c!650932) b!3759179))

(assert (= (and d!1097968 (not c!650932)) b!3759180))

(declare-fun m!4252545 () Bool)

(assert (=> b!3759179 m!4252545))

(declare-fun m!4252547 () Bool)

(assert (=> b!3759179 m!4252547))

(assert (=> b!3759179 m!4252545))

(declare-fun m!4252549 () Bool)

(assert (=> b!3759179 m!4252549))

(declare-fun m!4252551 () Bool)

(assert (=> b!3759179 m!4252551))

(declare-fun m!4252553 () Bool)

(assert (=> b!3759179 m!4252553))

(assert (=> b!3759179 m!4252553))

(assert (=> b!3759179 m!4251693))

(assert (=> b!3759179 m!4252547))

(assert (=> b!3759179 m!4251607))

(assert (=> b!3759179 m!4251607))

(assert (=> b!3759179 m!4251693))

(assert (=> b!3759179 m!4252551))

(assert (=> b!3758547 d!1097968))

(declare-fun b!3759183 () Bool)

(declare-fun res!1522424 () Bool)

(declare-fun e!2324736 () Bool)

(assert (=> b!3759183 (=> (not res!1522424) (not e!2324736))))

(declare-fun lt!1301271 () List!40179)

(assert (=> b!3759183 (= res!1522424 (= (size!30154 lt!1301271) (+ (size!30154 (list!14775 acc!419)) (size!30154 lt!1301131))))))

(declare-fun b!3759184 () Bool)

(assert (=> b!3759184 (= e!2324736 (or (not (= lt!1301131 Nil!40055)) (= lt!1301271 (list!14775 acc!419))))))

(declare-fun b!3759181 () Bool)

(declare-fun e!2324735 () List!40179)

(assert (=> b!3759181 (= e!2324735 lt!1301131)))

(declare-fun b!3759182 () Bool)

(assert (=> b!3759182 (= e!2324735 (Cons!40055 (h!45475 (list!14775 acc!419)) (++!9927 (t!303686 (list!14775 acc!419)) lt!1301131)))))

(declare-fun d!1097970 () Bool)

(assert (=> d!1097970 e!2324736))

(declare-fun res!1522425 () Bool)

(assert (=> d!1097970 (=> (not res!1522425) (not e!2324736))))

(assert (=> d!1097970 (= res!1522425 (= (content!5880 lt!1301271) ((_ map or) (content!5880 (list!14775 acc!419)) (content!5880 lt!1301131))))))

(assert (=> d!1097970 (= lt!1301271 e!2324735)))

(declare-fun c!650933 () Bool)

(assert (=> d!1097970 (= c!650933 ((_ is Nil!40055) (list!14775 acc!419)))))

(assert (=> d!1097970 (= (++!9927 (list!14775 acc!419) lt!1301131) lt!1301271)))

(assert (= (and d!1097970 c!650933) b!3759181))

(assert (= (and d!1097970 (not c!650933)) b!3759182))

(assert (= (and d!1097970 res!1522425) b!3759183))

(assert (= (and b!3759183 res!1522424) b!3759184))

(declare-fun m!4252555 () Bool)

(assert (=> b!3759183 m!4252555))

(assert (=> b!3759183 m!4251627))

(assert (=> b!3759183 m!4252477))

(declare-fun m!4252557 () Bool)

(assert (=> b!3759183 m!4252557))

(declare-fun m!4252559 () Bool)

(assert (=> b!3759182 m!4252559))

(declare-fun m!4252561 () Bool)

(assert (=> d!1097970 m!4252561))

(assert (=> d!1097970 m!4251627))

(assert (=> d!1097970 m!4252485))

(declare-fun m!4252563 () Bool)

(assert (=> d!1097970 m!4252563))

(assert (=> b!3758547 d!1097970))

(declare-fun d!1097972 () Bool)

(assert (=> d!1097972 (= (++!9927 (++!9927 (list!14775 acc!419) lt!1301131) lt!1301130) (++!9927 (list!14775 acc!419) (++!9927 lt!1301131 lt!1301130)))))

(declare-fun lt!1301272 () Unit!57784)

(assert (=> d!1097972 (= lt!1301272 (choose!22273 (list!14775 acc!419) lt!1301131 lt!1301130))))

(assert (=> d!1097972 (= (lemmaConcatAssociativity!2094 (list!14775 acc!419) lt!1301131 lt!1301130) lt!1301272)))

(declare-fun bs!575687 () Bool)

(assert (= bs!575687 d!1097972))

(assert (=> bs!575687 m!4251627))

(assert (=> bs!575687 m!4251837))

(assert (=> bs!575687 m!4251839))

(assert (=> bs!575687 m!4251627))

(assert (=> bs!575687 m!4251813))

(assert (=> bs!575687 m!4251627))

(declare-fun m!4252565 () Bool)

(assert (=> bs!575687 m!4252565))

(assert (=> bs!575687 m!4251813))

(assert (=> bs!575687 m!4251815))

(assert (=> bs!575687 m!4251837))

(assert (=> b!3758547 d!1097972))

(declare-fun b!3759187 () Bool)

(declare-fun res!1522426 () Bool)

(declare-fun e!2324738 () Bool)

(assert (=> b!3759187 (=> (not res!1522426) (not e!2324738))))

(declare-fun lt!1301273 () List!40179)

(assert (=> b!3759187 (= res!1522426 (= (size!30154 lt!1301273) (+ (size!30154 (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) (size!30154 (list!14775 (charsOf!3985 separatorToken!144))))))))

(declare-fun b!3759188 () Bool)

(assert (=> b!3759188 (= e!2324738 (or (not (= (list!14775 (charsOf!3985 separatorToken!144)) Nil!40055)) (= lt!1301273 (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856)))))))))

(declare-fun b!3759185 () Bool)

(declare-fun e!2324737 () List!40179)

(assert (=> b!3759185 (= e!2324737 (list!14775 (charsOf!3985 separatorToken!144)))))

(declare-fun b!3759186 () Bool)

(assert (=> b!3759186 (= e!2324737 (Cons!40055 (h!45475 (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) (++!9927 (t!303686 (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) (list!14775 (charsOf!3985 separatorToken!144)))))))

(declare-fun d!1097974 () Bool)

(assert (=> d!1097974 e!2324738))

(declare-fun res!1522427 () Bool)

(assert (=> d!1097974 (=> (not res!1522427) (not e!2324738))))

(assert (=> d!1097974 (= res!1522427 (= (content!5880 lt!1301273) ((_ map or) (content!5880 (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) (content!5880 (list!14775 (charsOf!3985 separatorToken!144))))))))

(assert (=> d!1097974 (= lt!1301273 e!2324737)))

(declare-fun c!650934 () Bool)

(assert (=> d!1097974 (= c!650934 ((_ is Nil!40055) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))))))

(assert (=> d!1097974 (= (++!9927 (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856)))) (list!14775 (charsOf!3985 separatorToken!144))) lt!1301273)))

(assert (= (and d!1097974 c!650934) b!3759185))

(assert (= (and d!1097974 (not c!650934)) b!3759186))

(assert (= (and d!1097974 res!1522427) b!3759187))

(assert (= (and b!3759187 res!1522426) b!3759188))

(declare-fun m!4252567 () Bool)

(assert (=> b!3759187 m!4252567))

(assert (=> b!3759187 m!4251829))

(assert (=> b!3759187 m!4252479))

(assert (=> b!3759187 m!4251693))

(declare-fun m!4252569 () Bool)

(assert (=> b!3759187 m!4252569))

(assert (=> b!3759186 m!4251693))

(declare-fun m!4252571 () Bool)

(assert (=> b!3759186 m!4252571))

(declare-fun m!4252573 () Bool)

(assert (=> d!1097974 m!4252573))

(assert (=> d!1097974 m!4251829))

(assert (=> d!1097974 m!4252487))

(assert (=> d!1097974 m!4251693))

(declare-fun m!4252575 () Bool)

(assert (=> d!1097974 m!4252575))

(assert (=> b!3758547 d!1097974))

(declare-fun b!3759191 () Bool)

(declare-fun res!1522428 () Bool)

(declare-fun e!2324740 () Bool)

(assert (=> b!3759191 (=> (not res!1522428) (not e!2324740))))

(declare-fun lt!1301274 () List!40179)

(assert (=> b!3759191 (= res!1522428 (= (size!30154 lt!1301274) (+ (size!30154 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856)))))) (size!30154 (list!14775 (charsOf!3985 separatorToken!144))))))))

(declare-fun b!3759192 () Bool)

(assert (=> b!3759192 (= e!2324740 (or (not (= (list!14775 (charsOf!3985 separatorToken!144)) Nil!40055)) (= lt!1301274 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))))))))

(declare-fun b!3759189 () Bool)

(declare-fun e!2324739 () List!40179)

(assert (=> b!3759189 (= e!2324739 (list!14775 (charsOf!3985 separatorToken!144)))))

(declare-fun b!3759190 () Bool)

(assert (=> b!3759190 (= e!2324739 (Cons!40055 (h!45475 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856)))))) (++!9927 (t!303686 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856)))))) (list!14775 (charsOf!3985 separatorToken!144)))))))

(declare-fun d!1097976 () Bool)

(assert (=> d!1097976 e!2324740))

(declare-fun res!1522429 () Bool)

(assert (=> d!1097976 (=> (not res!1522429) (not e!2324740))))

(assert (=> d!1097976 (= res!1522429 (= (content!5880 lt!1301274) ((_ map or) (content!5880 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856)))))) (content!5880 (list!14775 (charsOf!3985 separatorToken!144))))))))

(assert (=> d!1097976 (= lt!1301274 e!2324739)))

(declare-fun c!650935 () Bool)

(assert (=> d!1097976 (= c!650935 ((_ is Nil!40055) (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856)))))))))

(assert (=> d!1097976 (= (++!9927 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) (list!14775 (charsOf!3985 separatorToken!144))) lt!1301274)))

(assert (= (and d!1097976 c!650935) b!3759189))

(assert (= (and d!1097976 (not c!650935)) b!3759190))

(assert (= (and d!1097976 res!1522429) b!3759191))

(assert (= (and b!3759191 res!1522428) b!3759192))

(declare-fun m!4252577 () Bool)

(assert (=> b!3759191 m!4252577))

(assert (=> b!3759191 m!4251817))

(declare-fun m!4252579 () Bool)

(assert (=> b!3759191 m!4252579))

(assert (=> b!3759191 m!4251693))

(assert (=> b!3759191 m!4252569))

(assert (=> b!3759190 m!4251693))

(declare-fun m!4252581 () Bool)

(assert (=> b!3759190 m!4252581))

(declare-fun m!4252583 () Bool)

(assert (=> d!1097976 m!4252583))

(assert (=> d!1097976 m!4251817))

(declare-fun m!4252585 () Bool)

(assert (=> d!1097976 m!4252585))

(assert (=> d!1097976 m!4251693))

(assert (=> d!1097976 m!4252575))

(assert (=> b!3758547 d!1097976))

(declare-fun b!3759195 () Bool)

(declare-fun res!1522430 () Bool)

(declare-fun e!2324742 () Bool)

(assert (=> b!3759195 (=> (not res!1522430) (not e!2324742))))

(declare-fun lt!1301275 () List!40179)

(assert (=> b!3759195 (= res!1522430 (= (size!30154 lt!1301275) (+ (size!30154 lt!1301126) (size!30154 lt!1301128))))))

(declare-fun b!3759196 () Bool)

(assert (=> b!3759196 (= e!2324742 (or (not (= lt!1301128 Nil!40055)) (= lt!1301275 lt!1301126)))))

(declare-fun b!3759193 () Bool)

(declare-fun e!2324741 () List!40179)

(assert (=> b!3759193 (= e!2324741 lt!1301128)))

(declare-fun b!3759194 () Bool)

(assert (=> b!3759194 (= e!2324741 (Cons!40055 (h!45475 lt!1301126) (++!9927 (t!303686 lt!1301126) lt!1301128)))))

(declare-fun d!1097978 () Bool)

(assert (=> d!1097978 e!2324742))

(declare-fun res!1522431 () Bool)

(assert (=> d!1097978 (=> (not res!1522431) (not e!2324742))))

(assert (=> d!1097978 (= res!1522431 (= (content!5880 lt!1301275) ((_ map or) (content!5880 lt!1301126) (content!5880 lt!1301128))))))

(assert (=> d!1097978 (= lt!1301275 e!2324741)))

(declare-fun c!650936 () Bool)

(assert (=> d!1097978 (= c!650936 ((_ is Nil!40055) lt!1301126))))

(assert (=> d!1097978 (= (++!9927 lt!1301126 lt!1301128) lt!1301275)))

(assert (= (and d!1097978 c!650936) b!3759193))

(assert (= (and d!1097978 (not c!650936)) b!3759194))

(assert (= (and d!1097978 res!1522431) b!3759195))

(assert (= (and b!3759195 res!1522430) b!3759196))

(declare-fun m!4252587 () Bool)

(assert (=> b!3759195 m!4252587))

(assert (=> b!3759195 m!4252503))

(assert (=> b!3759195 m!4252535))

(declare-fun m!4252589 () Bool)

(assert (=> b!3759194 m!4252589))

(declare-fun m!4252591 () Bool)

(assert (=> d!1097978 m!4252591))

(assert (=> d!1097978 m!4252509))

(assert (=> d!1097978 m!4252543))

(assert (=> b!3758547 d!1097978))

(declare-fun b!3759199 () Bool)

(declare-fun res!1522432 () Bool)

(declare-fun e!2324744 () Bool)

(assert (=> b!3759199 (=> (not res!1522432) (not e!2324744))))

(declare-fun lt!1301276 () List!40179)

(assert (=> b!3759199 (= res!1522432 (= (size!30154 lt!1301276) (+ (size!30154 lt!1301131) (size!30154 lt!1301130))))))

(declare-fun b!3759200 () Bool)

(assert (=> b!3759200 (= e!2324744 (or (not (= lt!1301130 Nil!40055)) (= lt!1301276 lt!1301131)))))

(declare-fun b!3759197 () Bool)

(declare-fun e!2324743 () List!40179)

(assert (=> b!3759197 (= e!2324743 lt!1301130)))

(declare-fun b!3759198 () Bool)

(assert (=> b!3759198 (= e!2324743 (Cons!40055 (h!45475 lt!1301131) (++!9927 (t!303686 lt!1301131) lt!1301130)))))

(declare-fun d!1097980 () Bool)

(assert (=> d!1097980 e!2324744))

(declare-fun res!1522433 () Bool)

(assert (=> d!1097980 (=> (not res!1522433) (not e!2324744))))

(assert (=> d!1097980 (= res!1522433 (= (content!5880 lt!1301276) ((_ map or) (content!5880 lt!1301131) (content!5880 lt!1301130))))))

(assert (=> d!1097980 (= lt!1301276 e!2324743)))

(declare-fun c!650937 () Bool)

(assert (=> d!1097980 (= c!650937 ((_ is Nil!40055) lt!1301131))))

(assert (=> d!1097980 (= (++!9927 lt!1301131 lt!1301130) lt!1301276)))

(assert (= (and d!1097980 c!650937) b!3759197))

(assert (= (and d!1097980 (not c!650937)) b!3759198))

(assert (= (and d!1097980 res!1522433) b!3759199))

(assert (= (and b!3759199 res!1522432) b!3759200))

(declare-fun m!4252593 () Bool)

(assert (=> b!3759199 m!4252593))

(assert (=> b!3759199 m!4252557))

(declare-fun m!4252595 () Bool)

(assert (=> b!3759199 m!4252595))

(declare-fun m!4252597 () Bool)

(assert (=> b!3759198 m!4252597))

(declare-fun m!4252599 () Bool)

(assert (=> d!1097980 m!4252599))

(assert (=> d!1097980 m!4252563))

(declare-fun m!4252601 () Bool)

(assert (=> d!1097980 m!4252601))

(assert (=> b!3758547 d!1097980))

(declare-fun d!1097982 () Bool)

(declare-fun lt!1301285 () List!40179)

(assert (=> d!1097982 (= lt!1301285 (++!9927 (++!9927 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) (list!14775 (charsOf!3985 separatorToken!144))) (printWithSeparatorTokenList!402 thiss!14060 (t!303688 (dropList!1269 v!6366 from!856)) separatorToken!144)))))

(declare-fun e!2324745 () List!40179)

(assert (=> d!1097982 (= lt!1301285 e!2324745)))

(declare-fun c!650938 () Bool)

(assert (=> d!1097982 (= c!650938 ((_ is Cons!40057) (t!303688 (dropList!1269 v!6366 from!856))))))

(assert (=> d!1097982 (isSeparator!6132 (rule!8896 separatorToken!144))))

(assert (=> d!1097982 (= (printWithSeparatorTokenListTailRec!44 thiss!14060 (t!303688 (dropList!1269 v!6366 from!856)) separatorToken!144 (++!9927 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) (list!14775 (charsOf!3985 separatorToken!144)))) lt!1301285)))

(declare-fun b!3759201 () Bool)

(assert (=> b!3759201 (= e!2324745 (printWithSeparatorTokenListTailRec!44 thiss!14060 (t!303688 (t!303688 (dropList!1269 v!6366 from!856))) separatorToken!144 (++!9927 (++!9927 (++!9927 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) (list!14775 (charsOf!3985 separatorToken!144))) (list!14775 (charsOf!3985 (h!45477 (t!303688 (dropList!1269 v!6366 from!856)))))) (list!14775 (charsOf!3985 separatorToken!144)))))))

(declare-fun lt!1301279 () List!40179)

(assert (=> b!3759201 (= lt!1301279 (++!9927 (list!14775 (charsOf!3985 (h!45477 (t!303688 (dropList!1269 v!6366 from!856))))) (list!14775 (charsOf!3985 separatorToken!144))))))

(declare-fun lt!1301281 () List!40179)

(assert (=> b!3759201 (= lt!1301281 (printWithSeparatorTokenList!402 thiss!14060 (t!303688 (t!303688 (dropList!1269 v!6366 from!856))) separatorToken!144))))

(declare-fun lt!1301278 () Unit!57784)

(assert (=> b!3759201 (= lt!1301278 (lemmaConcatAssociativity!2094 (++!9927 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) (list!14775 (charsOf!3985 separatorToken!144))) lt!1301279 lt!1301281))))

(assert (=> b!3759201 (= (++!9927 (++!9927 (++!9927 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) (list!14775 (charsOf!3985 separatorToken!144))) lt!1301279) lt!1301281) (++!9927 (++!9927 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) (list!14775 (charsOf!3985 separatorToken!144))) (++!9927 lt!1301279 lt!1301281)))))

(declare-fun lt!1301280 () Unit!57784)

(assert (=> b!3759201 (= lt!1301280 lt!1301278)))

(declare-fun lt!1301284 () List!40179)

(assert (=> b!3759201 (= lt!1301284 (list!14775 (charsOf!3985 (h!45477 (t!303688 (dropList!1269 v!6366 from!856))))))))

(declare-fun lt!1301283 () List!40179)

(assert (=> b!3759201 (= lt!1301283 (list!14775 (charsOf!3985 separatorToken!144)))))

(declare-fun lt!1301282 () Unit!57784)

(assert (=> b!3759201 (= lt!1301282 (lemmaConcatAssociativity!2094 (++!9927 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) (list!14775 (charsOf!3985 separatorToken!144))) lt!1301284 lt!1301283))))

(assert (=> b!3759201 (= (++!9927 (++!9927 (++!9927 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) (list!14775 (charsOf!3985 separatorToken!144))) lt!1301284) lt!1301283) (++!9927 (++!9927 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) (list!14775 (charsOf!3985 separatorToken!144))) (++!9927 lt!1301284 lt!1301283)))))

(declare-fun lt!1301277 () Unit!57784)

(assert (=> b!3759201 (= lt!1301277 lt!1301282)))

(declare-fun b!3759202 () Bool)

(assert (=> b!3759202 (= e!2324745 (++!9927 (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856))))) (list!14775 (charsOf!3985 separatorToken!144))))))

(assert (= (and d!1097982 c!650938) b!3759201))

(assert (= (and d!1097982 (not c!650938)) b!3759202))

(assert (=> d!1097982 m!4251833))

(assert (=> d!1097982 m!4251819))

(assert (=> d!1097982 m!4251833))

(declare-fun m!4252603 () Bool)

(assert (=> d!1097982 m!4252603))

(assert (=> b!3759201 m!4251819))

(declare-fun m!4252605 () Bool)

(assert (=> b!3759201 m!4252605))

(declare-fun m!4252607 () Bool)

(assert (=> b!3759201 m!4252607))

(declare-fun m!4252609 () Bool)

(assert (=> b!3759201 m!4252609))

(declare-fun m!4252611 () Bool)

(assert (=> b!3759201 m!4252611))

(assert (=> b!3759201 m!4251693))

(declare-fun m!4252613 () Bool)

(assert (=> b!3759201 m!4252613))

(assert (=> b!3759201 m!4251819))

(assert (=> b!3759201 m!4252607))

(assert (=> b!3759201 m!4252551))

(declare-fun m!4252615 () Bool)

(assert (=> b!3759201 m!4252615))

(assert (=> b!3759201 m!4251819))

(declare-fun m!4252617 () Bool)

(assert (=> b!3759201 m!4252617))

(assert (=> b!3759201 m!4252617))

(declare-fun m!4252619 () Bool)

(assert (=> b!3759201 m!4252619))

(assert (=> b!3759201 m!4251607))

(assert (=> b!3759201 m!4251693))

(assert (=> b!3759201 m!4252553))

(assert (=> b!3759201 m!4251693))

(assert (=> b!3759201 m!4252547))

(assert (=> b!3759201 m!4252545))

(assert (=> b!3759201 m!4252551))

(assert (=> b!3759201 m!4252553))

(assert (=> b!3759201 m!4251819))

(declare-fun m!4252621 () Bool)

(assert (=> b!3759201 m!4252621))

(declare-fun m!4252623 () Bool)

(assert (=> b!3759201 m!4252623))

(assert (=> b!3759201 m!4251819))

(assert (=> b!3759201 m!4252623))

(declare-fun m!4252625 () Bool)

(assert (=> b!3759201 m!4252625))

(assert (=> b!3759201 m!4251819))

(assert (=> b!3759201 m!4252553))

(assert (=> b!3759201 m!4252611))

(assert (=> b!3759201 m!4252613))

(declare-fun m!4252627 () Bool)

(assert (=> b!3759201 m!4252627))

(assert (=> b!3759201 m!4251607))

(assert (=> b!3759201 m!4251819))

(assert (=> b!3759201 m!4252615))

(declare-fun m!4252629 () Bool)

(assert (=> b!3759201 m!4252629))

(assert (=> b!3758547 d!1097982))

(declare-fun b!3759205 () Bool)

(declare-fun res!1522434 () Bool)

(declare-fun e!2324747 () Bool)

(assert (=> b!3759205 (=> (not res!1522434) (not e!2324747))))

(declare-fun lt!1301286 () List!40179)

(assert (=> b!3759205 (= res!1522434 (= (size!30154 lt!1301286) (+ (size!30154 (++!9927 (list!14775 acc!419) lt!1301131)) (size!30154 lt!1301130))))))

(declare-fun b!3759206 () Bool)

(assert (=> b!3759206 (= e!2324747 (or (not (= lt!1301130 Nil!40055)) (= lt!1301286 (++!9927 (list!14775 acc!419) lt!1301131))))))

(declare-fun b!3759203 () Bool)

(declare-fun e!2324746 () List!40179)

(assert (=> b!3759203 (= e!2324746 lt!1301130)))

(declare-fun b!3759204 () Bool)

(assert (=> b!3759204 (= e!2324746 (Cons!40055 (h!45475 (++!9927 (list!14775 acc!419) lt!1301131)) (++!9927 (t!303686 (++!9927 (list!14775 acc!419) lt!1301131)) lt!1301130)))))

(declare-fun d!1097984 () Bool)

(assert (=> d!1097984 e!2324747))

(declare-fun res!1522435 () Bool)

(assert (=> d!1097984 (=> (not res!1522435) (not e!2324747))))

(assert (=> d!1097984 (= res!1522435 (= (content!5880 lt!1301286) ((_ map or) (content!5880 (++!9927 (list!14775 acc!419) lt!1301131)) (content!5880 lt!1301130))))))

(assert (=> d!1097984 (= lt!1301286 e!2324746)))

(declare-fun c!650939 () Bool)

(assert (=> d!1097984 (= c!650939 ((_ is Nil!40055) (++!9927 (list!14775 acc!419) lt!1301131)))))

(assert (=> d!1097984 (= (++!9927 (++!9927 (list!14775 acc!419) lt!1301131) lt!1301130) lt!1301286)))

(assert (= (and d!1097984 c!650939) b!3759203))

(assert (= (and d!1097984 (not c!650939)) b!3759204))

(assert (= (and d!1097984 res!1522435) b!3759205))

(assert (= (and b!3759205 res!1522434) b!3759206))

(declare-fun m!4252631 () Bool)

(assert (=> b!3759205 m!4252631))

(assert (=> b!3759205 m!4251813))

(declare-fun m!4252633 () Bool)

(assert (=> b!3759205 m!4252633))

(assert (=> b!3759205 m!4252595))

(declare-fun m!4252635 () Bool)

(assert (=> b!3759204 m!4252635))

(declare-fun m!4252637 () Bool)

(assert (=> d!1097984 m!4252637))

(assert (=> d!1097984 m!4251813))

(declare-fun m!4252639 () Bool)

(assert (=> d!1097984 m!4252639))

(assert (=> d!1097984 m!4252601))

(assert (=> b!3758547 d!1097984))

(declare-fun d!1097986 () Bool)

(declare-fun lt!1301287 () Token!11402)

(assert (=> d!1097986 (contains!8166 (list!14776 v!6366) lt!1301287)))

(declare-fun e!2324749 () Token!11402)

(assert (=> d!1097986 (= lt!1301287 e!2324749)))

(declare-fun c!650940 () Bool)

(assert (=> d!1097986 (= c!650940 (= from!856 0))))

(declare-fun e!2324748 () Bool)

(assert (=> d!1097986 e!2324748))

(declare-fun res!1522436 () Bool)

(assert (=> d!1097986 (=> (not res!1522436) (not e!2324748))))

(assert (=> d!1097986 (= res!1522436 (<= 0 from!856))))

(assert (=> d!1097986 (= (apply!9433 (list!14776 v!6366) from!856) lt!1301287)))

(declare-fun b!3759207 () Bool)

(assert (=> b!3759207 (= e!2324748 (< from!856 (size!30150 (list!14776 v!6366))))))

(declare-fun b!3759208 () Bool)

(assert (=> b!3759208 (= e!2324749 (head!8035 (list!14776 v!6366)))))

(declare-fun b!3759209 () Bool)

(assert (=> b!3759209 (= e!2324749 (apply!9433 (tail!5762 (list!14776 v!6366)) (- from!856 1)))))

(assert (= (and d!1097986 res!1522436) b!3759207))

(assert (= (and d!1097986 c!650940) b!3759208))

(assert (= (and d!1097986 (not c!650940)) b!3759209))

(assert (=> d!1097986 m!4251631))

(declare-fun m!4252641 () Bool)

(assert (=> d!1097986 m!4252641))

(assert (=> b!3759207 m!4251631))

(assert (=> b!3759207 m!4252051))

(assert (=> b!3759208 m!4251631))

(declare-fun m!4252643 () Bool)

(assert (=> b!3759208 m!4252643))

(assert (=> b!3759209 m!4251631))

(declare-fun m!4252645 () Bool)

(assert (=> b!3759209 m!4252645))

(assert (=> b!3759209 m!4252645))

(declare-fun m!4252647 () Bool)

(assert (=> b!3759209 m!4252647))

(assert (=> d!1097762 d!1097986))

(assert (=> d!1097762 d!1097760))

(declare-fun bm!275403 () Bool)

(declare-fun c!650949 () Bool)

(declare-fun c!650948 () Bool)

(assert (=> bm!275403 (= c!650949 c!650948)))

(declare-fun e!2324759 () Int)

(declare-fun call!275408 () Token!11402)

(assert (=> bm!275403 (= call!275408 (apply!9435 (ite c!650948 (left!31018 (c!650721 v!6366)) (right!31348 (c!650721 v!6366))) e!2324759))))

(declare-fun b!3759225 () Bool)

(declare-fun e!2324761 () Token!11402)

(assert (=> b!3759225 (= e!2324761 call!275408)))

(declare-fun b!3759226 () Bool)

(declare-fun e!2324758 () Token!11402)

(declare-fun apply!9437 (IArray!24535 Int) Token!11402)

(assert (=> b!3759226 (= e!2324758 (apply!9437 (xs!15467 (c!650721 v!6366)) from!856))))

(declare-fun b!3759227 () Bool)

(declare-fun e!2324760 () Bool)

(assert (=> b!3759227 (= e!2324760 (< from!856 (size!30153 (c!650721 v!6366))))))

(declare-fun b!3759228 () Bool)

(assert (=> b!3759228 (= e!2324759 (- from!856 (size!30153 (left!31018 (c!650721 v!6366)))))))

(declare-fun d!1097988 () Bool)

(declare-fun lt!1301293 () Token!11402)

(assert (=> d!1097988 (= lt!1301293 (apply!9433 (list!14779 (c!650721 v!6366)) from!856))))

(assert (=> d!1097988 (= lt!1301293 e!2324758)))

(declare-fun c!650947 () Bool)

(assert (=> d!1097988 (= c!650947 ((_ is Leaf!19023) (c!650721 v!6366)))))

(assert (=> d!1097988 e!2324760))

(declare-fun res!1522439 () Bool)

(assert (=> d!1097988 (=> (not res!1522439) (not e!2324760))))

(assert (=> d!1097988 (= res!1522439 (<= 0 from!856))))

(assert (=> d!1097988 (= (apply!9435 (c!650721 v!6366) from!856) lt!1301293)))

(declare-fun b!3759224 () Bool)

(assert (=> b!3759224 (= e!2324761 call!275408)))

(declare-fun b!3759229 () Bool)

(assert (=> b!3759229 (= e!2324758 e!2324761)))

(declare-fun lt!1301292 () Bool)

(declare-fun appendIndex!368 (List!40181 List!40181 Int) Bool)

(assert (=> b!3759229 (= lt!1301292 (appendIndex!368 (list!14779 (left!31018 (c!650721 v!6366))) (list!14779 (right!31348 (c!650721 v!6366))) from!856))))

(assert (=> b!3759229 (= c!650948 (< from!856 (size!30153 (left!31018 (c!650721 v!6366)))))))

(declare-fun b!3759230 () Bool)

(assert (=> b!3759230 (= e!2324759 from!856)))

(assert (= (and d!1097988 res!1522439) b!3759227))

(assert (= (and d!1097988 c!650947) b!3759226))

(assert (= (and d!1097988 (not c!650947)) b!3759229))

(assert (= (and b!3759229 c!650948) b!3759225))

(assert (= (and b!3759229 (not c!650948)) b!3759224))

(assert (= (or b!3759225 b!3759224) bm!275403))

(assert (= (and bm!275403 c!650949) b!3759230))

(assert (= (and bm!275403 (not c!650949)) b!3759228))

(declare-fun m!4252649 () Bool)

(assert (=> bm!275403 m!4252649))

(assert (=> b!3759227 m!4252053))

(declare-fun m!4252651 () Bool)

(assert (=> b!3759228 m!4252651))

(assert (=> b!3759229 m!4252251))

(assert (=> b!3759229 m!4252253))

(assert (=> b!3759229 m!4252251))

(assert (=> b!3759229 m!4252253))

(declare-fun m!4252653 () Bool)

(assert (=> b!3759229 m!4252653))

(assert (=> b!3759229 m!4252651))

(declare-fun m!4252655 () Bool)

(assert (=> b!3759226 m!4252655))

(assert (=> d!1097988 m!4251657))

(assert (=> d!1097988 m!4251657))

(declare-fun m!4252657 () Bool)

(assert (=> d!1097988 m!4252657))

(assert (=> d!1097762 d!1097988))

(declare-fun d!1097990 () Bool)

(declare-fun res!1522444 () Bool)

(declare-fun e!2324764 () Bool)

(assert (=> d!1097990 (=> (not res!1522444) (not e!2324764))))

(assert (=> d!1097990 (= res!1522444 (<= (size!30150 (list!14782 (xs!15467 (c!650721 v!6366)))) 512))))

(assert (=> d!1097990 (= (inv!53714 (c!650721 v!6366)) e!2324764)))

(declare-fun b!3759235 () Bool)

(declare-fun res!1522445 () Bool)

(assert (=> b!3759235 (=> (not res!1522445) (not e!2324764))))

(assert (=> b!3759235 (= res!1522445 (= (csize!24761 (c!650721 v!6366)) (size!30150 (list!14782 (xs!15467 (c!650721 v!6366))))))))

(declare-fun b!3759236 () Bool)

(assert (=> b!3759236 (= e!2324764 (and (> (csize!24761 (c!650721 v!6366)) 0) (<= (csize!24761 (c!650721 v!6366)) 512)))))

(assert (= (and d!1097990 res!1522444) b!3759235))

(assert (= (and b!3759235 res!1522445) b!3759236))

(assert (=> d!1097990 m!4252257))

(assert (=> d!1097990 m!4252257))

(declare-fun m!4252659 () Bool)

(assert (=> d!1097990 m!4252659))

(assert (=> b!3759235 m!4252257))

(assert (=> b!3759235 m!4252257))

(assert (=> b!3759235 m!4252659))

(assert (=> b!3758713 d!1097990))

(declare-fun d!1097992 () Bool)

(assert (=> d!1097992 (= (inv!53716 (xs!15467 (c!650721 v!6366))) (<= (size!30150 (innerList!12325 (xs!15467 (c!650721 v!6366)))) 2147483647))))

(declare-fun bs!575688 () Bool)

(assert (= bs!575688 d!1097992))

(declare-fun m!4252661 () Bool)

(assert (=> bs!575688 m!4252661))

(assert (=> b!3758759 d!1097992))

(declare-fun b!3759237 () Bool)

(declare-fun e!2324767 () List!40181)

(assert (=> b!3759237 (= e!2324767 Nil!40057)))

(declare-fun bm!275404 () Bool)

(declare-fun call!275409 () Int)

(assert (=> bm!275404 (= call!275409 (size!30150 (t!303688 lt!1301045)))))

(declare-fun d!1097994 () Bool)

(declare-fun e!2324768 () Bool)

(assert (=> d!1097994 e!2324768))

(declare-fun res!1522446 () Bool)

(assert (=> d!1097994 (=> (not res!1522446) (not e!2324768))))

(declare-fun lt!1301294 () List!40181)

(assert (=> d!1097994 (= res!1522446 (= ((_ map implies) (content!5878 lt!1301294) (content!5878 (t!303688 lt!1301045))) ((as const (InoxSet Token!11402)) true)))))

(assert (=> d!1097994 (= lt!1301294 e!2324767)))

(declare-fun c!650951 () Bool)

(assert (=> d!1097994 (= c!650951 ((_ is Nil!40057) (t!303688 lt!1301045)))))

(assert (=> d!1097994 (= (drop!2093 (t!303688 lt!1301045) (- from!856 1)) lt!1301294)))

(declare-fun b!3759238 () Bool)

(declare-fun e!2324766 () List!40181)

(assert (=> b!3759238 (= e!2324766 (drop!2093 (t!303688 (t!303688 lt!1301045)) (- (- from!856 1) 1)))))

(declare-fun b!3759239 () Bool)

(assert (=> b!3759239 (= e!2324767 e!2324766)))

(declare-fun c!650952 () Bool)

(assert (=> b!3759239 (= c!650952 (<= (- from!856 1) 0))))

(declare-fun b!3759240 () Bool)

(declare-fun e!2324765 () Int)

(assert (=> b!3759240 (= e!2324768 (= (size!30150 lt!1301294) e!2324765))))

(declare-fun c!650953 () Bool)

(assert (=> b!3759240 (= c!650953 (<= (- from!856 1) 0))))

(declare-fun b!3759241 () Bool)

(assert (=> b!3759241 (= e!2324765 call!275409)))

(declare-fun b!3759242 () Bool)

(declare-fun e!2324769 () Int)

(assert (=> b!3759242 (= e!2324769 (- call!275409 (- from!856 1)))))

(declare-fun b!3759243 () Bool)

(assert (=> b!3759243 (= e!2324769 0)))

(declare-fun b!3759244 () Bool)

(assert (=> b!3759244 (= e!2324765 e!2324769)))

(declare-fun c!650950 () Bool)

(assert (=> b!3759244 (= c!650950 (>= (- from!856 1) call!275409))))

(declare-fun b!3759245 () Bool)

(assert (=> b!3759245 (= e!2324766 (t!303688 lt!1301045))))

(assert (= (and d!1097994 c!650951) b!3759237))

(assert (= (and d!1097994 (not c!650951)) b!3759239))

(assert (= (and b!3759239 c!650952) b!3759245))

(assert (= (and b!3759239 (not c!650952)) b!3759238))

(assert (= (and d!1097994 res!1522446) b!3759240))

(assert (= (and b!3759240 c!650953) b!3759241))

(assert (= (and b!3759240 (not c!650953)) b!3759244))

(assert (= (and b!3759244 c!650950) b!3759243))

(assert (= (and b!3759244 (not c!650950)) b!3759242))

(assert (= (or b!3759241 b!3759244 b!3759242) bm!275404))

(assert (=> bm!275404 m!4252453))

(declare-fun m!4252663 () Bool)

(assert (=> d!1097994 m!4252663))

(assert (=> d!1097994 m!4252457))

(declare-fun m!4252665 () Bool)

(assert (=> b!3759238 m!4252665))

(declare-fun m!4252667 () Bool)

(assert (=> b!3759240 m!4252667))

(assert (=> b!3758550 d!1097994))

(declare-fun d!1097996 () Bool)

(assert (=> d!1097996 (= (head!8035 lt!1301045) (h!45477 lt!1301045))))

(assert (=> b!3758671 d!1097996))

(declare-fun b!3759258 () Bool)

(declare-fun res!1522463 () Bool)

(declare-fun e!2324774 () Bool)

(assert (=> b!3759258 (=> (not res!1522463) (not e!2324774))))

(declare-fun isEmpty!23569 (Conc!12265) Bool)

(assert (=> b!3759258 (= res!1522463 (not (isEmpty!23569 (left!31018 (c!650721 v!6366)))))))

(declare-fun b!3759259 () Bool)

(declare-fun res!1522464 () Bool)

(assert (=> b!3759259 (=> (not res!1522464) (not e!2324774))))

(assert (=> b!3759259 (= res!1522464 (isBalanced!3534 (left!31018 (c!650721 v!6366))))))

(declare-fun d!1097998 () Bool)

(declare-fun res!1522462 () Bool)

(declare-fun e!2324775 () Bool)

(assert (=> d!1097998 (=> res!1522462 e!2324775)))

(assert (=> d!1097998 (= res!1522462 (not ((_ is Node!12265) (c!650721 v!6366))))))

(assert (=> d!1097998 (= (isBalanced!3534 (c!650721 v!6366)) e!2324775)))

(declare-fun b!3759260 () Bool)

(declare-fun res!1522461 () Bool)

(assert (=> b!3759260 (=> (not res!1522461) (not e!2324774))))

(declare-fun height!1752 (Conc!12265) Int)

(assert (=> b!3759260 (= res!1522461 (<= (- (height!1752 (left!31018 (c!650721 v!6366))) (height!1752 (right!31348 (c!650721 v!6366)))) 1))))

(declare-fun b!3759261 () Bool)

(declare-fun res!1522460 () Bool)

(assert (=> b!3759261 (=> (not res!1522460) (not e!2324774))))

(assert (=> b!3759261 (= res!1522460 (isBalanced!3534 (right!31348 (c!650721 v!6366))))))

(declare-fun b!3759262 () Bool)

(assert (=> b!3759262 (= e!2324774 (not (isEmpty!23569 (right!31348 (c!650721 v!6366)))))))

(declare-fun b!3759263 () Bool)

(assert (=> b!3759263 (= e!2324775 e!2324774)))

(declare-fun res!1522459 () Bool)

(assert (=> b!3759263 (=> (not res!1522459) (not e!2324774))))

(assert (=> b!3759263 (= res!1522459 (<= (- 1) (- (height!1752 (left!31018 (c!650721 v!6366))) (height!1752 (right!31348 (c!650721 v!6366))))))))

(assert (= (and d!1097998 (not res!1522462)) b!3759263))

(assert (= (and b!3759263 res!1522459) b!3759260))

(assert (= (and b!3759260 res!1522461) b!3759259))

(assert (= (and b!3759259 res!1522464) b!3759261))

(assert (= (and b!3759261 res!1522460) b!3759258))

(assert (= (and b!3759258 res!1522463) b!3759262))

(declare-fun m!4252669 () Bool)

(assert (=> b!3759258 m!4252669))

(declare-fun m!4252671 () Bool)

(assert (=> b!3759261 m!4252671))

(declare-fun m!4252673 () Bool)

(assert (=> b!3759260 m!4252673))

(declare-fun m!4252675 () Bool)

(assert (=> b!3759260 m!4252675))

(declare-fun m!4252677 () Bool)

(assert (=> b!3759259 m!4252677))

(assert (=> b!3759263 m!4252673))

(assert (=> b!3759263 m!4252675))

(declare-fun m!4252679 () Bool)

(assert (=> b!3759262 m!4252679))

(assert (=> d!1097850 d!1097998))

(declare-fun b!3759264 () Bool)

(declare-fun e!2324781 () Bool)

(declare-fun e!2324779 () Bool)

(assert (=> b!3759264 (= e!2324781 e!2324779)))

(declare-fun res!1522466 () Bool)

(assert (=> b!3759264 (=> (not res!1522466) (not e!2324779))))

(assert (=> b!3759264 (= res!1522466 (appendAssoc!252 (list!14780 (left!31017 (right!31347 (c!650719 acc!419)))) (list!14780 (right!31347 (right!31347 (c!650719 acc!419)))) (list!14780 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))))))

(declare-fun b!3759265 () Bool)

(assert (=> b!3759265 (= e!2324779 (appendAssoc!252 (list!14780 (left!31017 (c!650719 acc!419))) (list!14780 (left!31017 (right!31347 (c!650719 acc!419)))) (++!9927 (list!14780 (right!31347 (right!31347 (c!650719 acc!419)))) (list!14780 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(declare-fun b!3759266 () Bool)

(declare-fun e!2324782 () Bool)

(declare-fun e!2324776 () Bool)

(assert (=> b!3759266 (= e!2324782 e!2324776)))

(declare-fun res!1522468 () Bool)

(assert (=> b!3759266 (=> (not res!1522468) (not e!2324776))))

(assert (=> b!3759266 (= res!1522468 (appendAssoc!252 (list!14780 (c!650719 acc!419)) (list!14780 (left!31017 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))) (list!14780 (right!31347 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(declare-fun d!1098000 () Bool)

(declare-fun e!2324784 () Bool)

(assert (=> d!1098000 e!2324784))

(declare-fun res!1522467 () Bool)

(assert (=> d!1098000 (=> (not res!1522467) (not e!2324784))))

(declare-fun e!2324783 () Bool)

(assert (=> d!1098000 (= res!1522467 e!2324783)))

(declare-fun res!1522473 () Bool)

(assert (=> d!1098000 (=> res!1522473 e!2324783)))

(assert (=> d!1098000 (= res!1522473 (not ((_ is Node!12264) (c!650719 acc!419))))))

(assert (=> d!1098000 (= (appendAssocInst!827 (c!650719 acc!419) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))) true)))

(declare-fun b!3759267 () Bool)

(declare-fun e!2324778 () Bool)

(assert (=> b!3759267 (= e!2324776 e!2324778)))

(declare-fun res!1522470 () Bool)

(assert (=> b!3759267 (=> res!1522470 e!2324778)))

(assert (=> b!3759267 (= res!1522470 (not ((_ is Node!12264) (left!31017 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(declare-fun b!3759268 () Bool)

(assert (=> b!3759268 (= e!2324784 e!2324782)))

(declare-fun res!1522469 () Bool)

(assert (=> b!3759268 (=> res!1522469 e!2324782)))

(assert (=> b!3759268 (= res!1522469 (not ((_ is Node!12264) (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))))))

(declare-fun b!3759269 () Bool)

(declare-fun e!2324780 () Bool)

(assert (=> b!3759269 (= e!2324783 e!2324780)))

(declare-fun res!1522471 () Bool)

(assert (=> b!3759269 (=> (not res!1522471) (not e!2324780))))

(assert (=> b!3759269 (= res!1522471 (appendAssoc!252 (list!14780 (left!31017 (c!650719 acc!419))) (list!14780 (right!31347 (c!650719 acc!419))) (list!14780 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))))))

(declare-fun b!3759270 () Bool)

(declare-fun e!2324777 () Bool)

(assert (=> b!3759270 (= e!2324777 (appendAssoc!252 (++!9927 (list!14780 (c!650719 acc!419)) (list!14780 (left!31017 (left!31017 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))))) (list!14780 (right!31347 (left!31017 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))) (list!14780 (right!31347 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(declare-fun b!3759271 () Bool)

(assert (=> b!3759271 (= e!2324778 e!2324777)))

(declare-fun res!1522465 () Bool)

(assert (=> b!3759271 (=> (not res!1522465) (not e!2324777))))

(assert (=> b!3759271 (= res!1522465 (appendAssoc!252 (list!14780 (c!650719 acc!419)) (list!14780 (left!31017 (left!31017 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))) (list!14780 (right!31347 (left!31017 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856))))))))))

(declare-fun b!3759272 () Bool)

(assert (=> b!3759272 (= e!2324780 e!2324781)))

(declare-fun res!1522472 () Bool)

(assert (=> b!3759272 (=> res!1522472 e!2324781)))

(assert (=> b!3759272 (= res!1522472 (not ((_ is Node!12264) (right!31347 (c!650719 acc!419)))))))

(assert (= (and d!1098000 (not res!1522473)) b!3759269))

(assert (= (and b!3759269 res!1522471) b!3759272))

(assert (= (and b!3759272 (not res!1522472)) b!3759264))

(assert (= (and b!3759264 res!1522466) b!3759265))

(assert (= (and d!1098000 res!1522467) b!3759268))

(assert (= (and b!3759268 (not res!1522469)) b!3759266))

(assert (= (and b!3759266 res!1522468) b!3759267))

(assert (= (and b!3759267 (not res!1522470)) b!3759271))

(assert (= (and b!3759271 res!1522465) b!3759270))

(declare-fun m!4252681 () Bool)

(assert (=> b!3759264 m!4252681))

(declare-fun m!4252683 () Bool)

(assert (=> b!3759264 m!4252683))

(assert (=> b!3759264 m!4252223))

(assert (=> b!3759264 m!4252681))

(assert (=> b!3759264 m!4252683))

(assert (=> b!3759264 m!4252223))

(declare-fun m!4252685 () Bool)

(assert (=> b!3759264 m!4252685))

(assert (=> b!3759269 m!4252261))

(assert (=> b!3759269 m!4252263))

(assert (=> b!3759269 m!4252223))

(assert (=> b!3759269 m!4252261))

(assert (=> b!3759269 m!4252263))

(assert (=> b!3759269 m!4252223))

(declare-fun m!4252687 () Bool)

(assert (=> b!3759269 m!4252687))

(assert (=> b!3759271 m!4252005))

(declare-fun m!4252689 () Bool)

(assert (=> b!3759271 m!4252689))

(declare-fun m!4252691 () Bool)

(assert (=> b!3759271 m!4252691))

(assert (=> b!3759271 m!4252005))

(assert (=> b!3759271 m!4252689))

(assert (=> b!3759271 m!4252691))

(declare-fun m!4252693 () Bool)

(assert (=> b!3759271 m!4252693))

(assert (=> b!3759266 m!4252005))

(declare-fun m!4252695 () Bool)

(assert (=> b!3759266 m!4252695))

(declare-fun m!4252697 () Bool)

(assert (=> b!3759266 m!4252697))

(assert (=> b!3759266 m!4252005))

(assert (=> b!3759266 m!4252695))

(assert (=> b!3759266 m!4252697))

(declare-fun m!4252699 () Bool)

(assert (=> b!3759266 m!4252699))

(assert (=> b!3759265 m!4252681))

(assert (=> b!3759265 m!4252261))

(assert (=> b!3759265 m!4252681))

(declare-fun m!4252701 () Bool)

(assert (=> b!3759265 m!4252701))

(declare-fun m!4252703 () Bool)

(assert (=> b!3759265 m!4252703))

(assert (=> b!3759265 m!4252261))

(assert (=> b!3759265 m!4252683))

(assert (=> b!3759265 m!4252223))

(assert (=> b!3759265 m!4252701))

(assert (=> b!3759265 m!4252683))

(assert (=> b!3759265 m!4252223))

(assert (=> b!3759270 m!4252697))

(declare-fun m!4252705 () Bool)

(assert (=> b!3759270 m!4252705))

(assert (=> b!3759270 m!4252691))

(assert (=> b!3759270 m!4252697))

(declare-fun m!4252707 () Bool)

(assert (=> b!3759270 m!4252707))

(assert (=> b!3759270 m!4252005))

(assert (=> b!3759270 m!4252689))

(assert (=> b!3759270 m!4252705))

(assert (=> b!3759270 m!4252691))

(assert (=> b!3759270 m!4252689))

(assert (=> b!3759270 m!4252005))

(assert (=> d!1097834 d!1098000))

(assert (=> d!1097834 d!1097902))

(declare-fun d!1098002 () Bool)

(assert (=> d!1098002 true))

(declare-fun order!21895 () Int)

(declare-fun order!21897 () Int)

(declare-fun lambda!125278 () Int)

(declare-fun dynLambda!17325 (Int Int) Int)

(declare-fun dynLambda!17326 (Int Int) Int)

(assert (=> d!1098002 (< (dynLambda!17325 order!21895 (toValue!8484 (transformation!6132 (rule!8896 separatorToken!144)))) (dynLambda!17326 order!21897 lambda!125278))))

(declare-fun Forall2!998 (Int) Bool)

(assert (=> d!1098002 (= (equivClasses!2524 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (toValue!8484 (transformation!6132 (rule!8896 separatorToken!144)))) (Forall2!998 lambda!125278))))

(declare-fun bs!575714 () Bool)

(assert (= bs!575714 d!1098002))

(declare-fun m!4253321 () Bool)

(assert (=> bs!575714 m!4253321))

(assert (=> b!3758427 d!1098002))

(declare-fun d!1098184 () Bool)

(assert (=> d!1098184 (= (inv!53699 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))) (value!195351 (apply!9432 v!6366 from!856)))) (isBalanced!3532 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))) (value!195351 (apply!9432 v!6366 from!856))))))))

(declare-fun bs!575715 () Bool)

(assert (= bs!575715 d!1098184))

(declare-fun m!4253323 () Bool)

(assert (=> bs!575715 m!4253323))

(assert (=> tb!215127 d!1098184))

(declare-fun d!1098186 () Bool)

(declare-fun c!651034 () Bool)

(assert (=> d!1098186 (= c!651034 ((_ is Nil!40057) lt!1301069))))

(declare-fun e!2324987 () (InoxSet Token!11402))

(assert (=> d!1098186 (= (content!5878 lt!1301069) e!2324987)))

(declare-fun b!3759646 () Bool)

(assert (=> b!3759646 (= e!2324987 ((as const (Array Token!11402 Bool)) false))))

(declare-fun b!3759647 () Bool)

(assert (=> b!3759647 (= e!2324987 ((_ map or) (store ((as const (Array Token!11402 Bool)) false) (h!45477 lt!1301069) true) (content!5878 (t!303688 lt!1301069))))))

(assert (= (and d!1098186 c!651034) b!3759646))

(assert (= (and d!1098186 (not c!651034)) b!3759647))

(declare-fun m!4253325 () Bool)

(assert (=> b!3759647 m!4253325))

(declare-fun m!4253327 () Bool)

(assert (=> b!3759647 m!4253327))

(assert (=> d!1097774 d!1098186))

(declare-fun d!1098188 () Bool)

(declare-fun c!651035 () Bool)

(assert (=> d!1098188 (= c!651035 ((_ is Nil!40057) lt!1301045))))

(declare-fun e!2324988 () (InoxSet Token!11402))

(assert (=> d!1098188 (= (content!5878 lt!1301045) e!2324988)))

(declare-fun b!3759648 () Bool)

(assert (=> b!3759648 (= e!2324988 ((as const (Array Token!11402 Bool)) false))))

(declare-fun b!3759649 () Bool)

(assert (=> b!3759649 (= e!2324988 ((_ map or) (store ((as const (Array Token!11402 Bool)) false) (h!45477 lt!1301045) true) (content!5878 (t!303688 lt!1301045))))))

(assert (= (and d!1098188 c!651035) b!3759648))

(assert (= (and d!1098188 (not c!651035)) b!3759649))

(declare-fun m!4253329 () Bool)

(assert (=> b!3759649 m!4253329))

(assert (=> b!3759649 m!4252457))

(assert (=> d!1097774 d!1098188))

(declare-fun d!1098190 () Bool)

(declare-fun lt!1301370 () Int)

(assert (=> d!1098190 (>= lt!1301370 0)))

(declare-fun e!2324989 () Int)

(assert (=> d!1098190 (= lt!1301370 e!2324989)))

(declare-fun c!651036 () Bool)

(assert (=> d!1098190 (= c!651036 ((_ is Nil!40057) lt!1301133))))

(assert (=> d!1098190 (= (size!30150 lt!1301133) lt!1301370)))

(declare-fun b!3759650 () Bool)

(assert (=> b!3759650 (= e!2324989 0)))

(declare-fun b!3759651 () Bool)

(assert (=> b!3759651 (= e!2324989 (+ 1 (size!30150 (t!303688 lt!1301133))))))

(assert (= (and d!1098190 c!651036) b!3759650))

(assert (= (and d!1098190 (not c!651036)) b!3759651))

(declare-fun m!4253331 () Bool)

(assert (=> b!3759651 m!4253331))

(assert (=> b!3758552 d!1098190))

(declare-fun b!3759652 () Bool)

(declare-fun e!2324992 () List!40181)

(assert (=> b!3759652 (= e!2324992 Nil!40057)))

(declare-fun bm!275414 () Bool)

(declare-fun call!275419 () Int)

(assert (=> bm!275414 (= call!275419 (size!30150 (list!14779 (c!650721 v!6366))))))

(declare-fun d!1098192 () Bool)

(declare-fun e!2324993 () Bool)

(assert (=> d!1098192 e!2324993))

(declare-fun res!1522623 () Bool)

(assert (=> d!1098192 (=> (not res!1522623) (not e!2324993))))

(declare-fun lt!1301371 () List!40181)

(assert (=> d!1098192 (= res!1522623 (= ((_ map implies) (content!5878 lt!1301371) (content!5878 (list!14779 (c!650721 v!6366)))) ((as const (InoxSet Token!11402)) true)))))

(assert (=> d!1098192 (= lt!1301371 e!2324992)))

(declare-fun c!651038 () Bool)

(assert (=> d!1098192 (= c!651038 ((_ is Nil!40057) (list!14779 (c!650721 v!6366))))))

(assert (=> d!1098192 (= (drop!2093 (list!14779 (c!650721 v!6366)) from!856) lt!1301371)))

(declare-fun b!3759653 () Bool)

(declare-fun e!2324991 () List!40181)

(assert (=> b!3759653 (= e!2324991 (drop!2093 (t!303688 (list!14779 (c!650721 v!6366))) (- from!856 1)))))

(declare-fun b!3759654 () Bool)

(assert (=> b!3759654 (= e!2324992 e!2324991)))

(declare-fun c!651039 () Bool)

(assert (=> b!3759654 (= c!651039 (<= from!856 0))))

(declare-fun b!3759655 () Bool)

(declare-fun e!2324990 () Int)

(assert (=> b!3759655 (= e!2324993 (= (size!30150 lt!1301371) e!2324990))))

(declare-fun c!651040 () Bool)

(assert (=> b!3759655 (= c!651040 (<= from!856 0))))

(declare-fun b!3759656 () Bool)

(assert (=> b!3759656 (= e!2324990 call!275419)))

(declare-fun b!3759657 () Bool)

(declare-fun e!2324994 () Int)

(assert (=> b!3759657 (= e!2324994 (- call!275419 from!856))))

(declare-fun b!3759658 () Bool)

(assert (=> b!3759658 (= e!2324994 0)))

(declare-fun b!3759659 () Bool)

(assert (=> b!3759659 (= e!2324990 e!2324994)))

(declare-fun c!651037 () Bool)

(assert (=> b!3759659 (= c!651037 (>= from!856 call!275419))))

(declare-fun b!3759660 () Bool)

(assert (=> b!3759660 (= e!2324991 (list!14779 (c!650721 v!6366)))))

(assert (= (and d!1098192 c!651038) b!3759652))

(assert (= (and d!1098192 (not c!651038)) b!3759654))

(assert (= (and b!3759654 c!651039) b!3759660))

(assert (= (and b!3759654 (not c!651039)) b!3759653))

(assert (= (and d!1098192 res!1522623) b!3759655))

(assert (= (and b!3759655 c!651040) b!3759656))

(assert (= (and b!3759655 (not c!651040)) b!3759659))

(assert (= (and b!3759659 c!651037) b!3759658))

(assert (= (and b!3759659 (not c!651037)) b!3759657))

(assert (= (or b!3759656 b!3759659 b!3759657) bm!275414))

(assert (=> bm!275414 m!4251657))

(declare-fun m!4253333 () Bool)

(assert (=> bm!275414 m!4253333))

(declare-fun m!4253335 () Bool)

(assert (=> d!1098192 m!4253335))

(assert (=> d!1098192 m!4251657))

(declare-fun m!4253337 () Bool)

(assert (=> d!1098192 m!4253337))

(declare-fun m!4253339 () Bool)

(assert (=> b!3759653 m!4253339))

(declare-fun m!4253341 () Bool)

(assert (=> b!3759655 m!4253341))

(assert (=> d!1097798 d!1098192))

(assert (=> d!1097798 d!1097910))

(declare-fun d!1098194 () Bool)

(declare-fun charsToBigInt!0 (List!40180 Int) Int)

(assert (=> d!1098194 (= (inv!15 (value!195351 separatorToken!144)) (= (charsToBigInt!0 (text!44983 (value!195351 separatorToken!144)) 0) (value!195346 (value!195351 separatorToken!144))))))

(declare-fun bs!575716 () Bool)

(assert (= bs!575716 d!1098194))

(declare-fun m!4253343 () Bool)

(assert (=> bs!575716 m!4253343))

(assert (=> b!3758702 d!1098194))

(declare-fun d!1098196 () Bool)

(assert (=> d!1098196 (= (height!1750 (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144)))) (ite ((_ is Empty!12264) (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144)))) 0 (ite ((_ is Leaf!19022) (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144)))) 1 (cheight!12475 (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144)))))))))

(assert (=> b!3758455 d!1098196))

(declare-fun d!1098198 () Bool)

(assert (=> d!1098198 (= (height!1750 (c!650719 (charsOf!3985 separatorToken!144))) (ite ((_ is Empty!12264) (c!650719 (charsOf!3985 separatorToken!144))) 0 (ite ((_ is Leaf!19022) (c!650719 (charsOf!3985 separatorToken!144))) 1 (cheight!12475 (c!650719 (charsOf!3985 separatorToken!144))))))))

(assert (=> b!3758455 d!1098198))

(declare-fun d!1098200 () Bool)

(assert (=> d!1098200 (= (max!0 (height!1750 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (height!1750 (c!650719 (charsOf!3985 separatorToken!144)))) (ite (< (height!1750 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (height!1750 (c!650719 (charsOf!3985 separatorToken!144)))) (height!1750 (c!650719 (charsOf!3985 separatorToken!144))) (height!1750 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(assert (=> b!3758455 d!1098200))

(declare-fun d!1098202 () Bool)

(assert (=> d!1098202 (= (height!1750 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (ite ((_ is Empty!12264) (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) 0 (ite ((_ is Leaf!19022) (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) 1 (cheight!12475 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))))))))

(assert (=> b!3758455 d!1098202))

(assert (=> b!3758455 d!1097942))

(declare-fun d!1098204 () Bool)

(declare-fun c!651041 () Bool)

(assert (=> d!1098204 (= c!651041 ((_ is Node!12264) (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))) (value!195351 (apply!9432 v!6366 from!856))))))))

(declare-fun e!2324995 () Bool)

(assert (=> d!1098204 (= (inv!53702 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))) (value!195351 (apply!9432 v!6366 from!856))))) e!2324995)))

(declare-fun b!3759661 () Bool)

(assert (=> b!3759661 (= e!2324995 (inv!53711 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))) (value!195351 (apply!9432 v!6366 from!856))))))))

(declare-fun b!3759662 () Bool)

(declare-fun e!2324996 () Bool)

(assert (=> b!3759662 (= e!2324995 e!2324996)))

(declare-fun res!1522624 () Bool)

(assert (=> b!3759662 (= res!1522624 (not ((_ is Leaf!19022) (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))) (value!195351 (apply!9432 v!6366 from!856)))))))))

(assert (=> b!3759662 (=> res!1522624 e!2324996)))

(declare-fun b!3759663 () Bool)

(assert (=> b!3759663 (= e!2324996 (inv!53712 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))) (value!195351 (apply!9432 v!6366 from!856))))))))

(assert (= (and d!1098204 c!651041) b!3759661))

(assert (= (and d!1098204 (not c!651041)) b!3759662))

(assert (= (and b!3759662 (not res!1522624)) b!3759663))

(declare-fun m!4253345 () Bool)

(assert (=> b!3759661 m!4253345))

(declare-fun m!4253347 () Bool)

(assert (=> b!3759663 m!4253347))

(assert (=> b!3758518 d!1098204))

(declare-fun d!1098206 () Bool)

(assert (=> d!1098206 (= (list!14775 lt!1301057) (list!14780 (c!650719 lt!1301057)))))

(declare-fun bs!575717 () Bool)

(assert (= bs!575717 d!1098206))

(declare-fun m!4253349 () Bool)

(assert (=> bs!575717 m!4253349))

(assert (=> b!3758457 d!1098206))

(declare-fun b!3759666 () Bool)

(declare-fun res!1522625 () Bool)

(declare-fun e!2324998 () Bool)

(assert (=> b!3759666 (=> (not res!1522625) (not e!2324998))))

(declare-fun lt!1301372 () List!40179)

(assert (=> b!3759666 (= res!1522625 (= (size!30154 lt!1301372) (+ (size!30154 (list!14775 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (size!30154 (list!14775 (charsOf!3985 separatorToken!144))))))))

(declare-fun b!3759667 () Bool)

(assert (=> b!3759667 (= e!2324998 (or (not (= (list!14775 (charsOf!3985 separatorToken!144)) Nil!40055)) (= lt!1301372 (list!14775 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(declare-fun b!3759664 () Bool)

(declare-fun e!2324997 () List!40179)

(assert (=> b!3759664 (= e!2324997 (list!14775 (charsOf!3985 separatorToken!144)))))

(declare-fun b!3759665 () Bool)

(assert (=> b!3759665 (= e!2324997 (Cons!40055 (h!45475 (list!14775 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (++!9927 (t!303686 (list!14775 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (list!14775 (charsOf!3985 separatorToken!144)))))))

(declare-fun d!1098208 () Bool)

(assert (=> d!1098208 e!2324998))

(declare-fun res!1522626 () Bool)

(assert (=> d!1098208 (=> (not res!1522626) (not e!2324998))))

(assert (=> d!1098208 (= res!1522626 (= (content!5880 lt!1301372) ((_ map or) (content!5880 (list!14775 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))) (content!5880 (list!14775 (charsOf!3985 separatorToken!144))))))))

(assert (=> d!1098208 (= lt!1301372 e!2324997)))

(declare-fun c!651042 () Bool)

(assert (=> d!1098208 (= c!651042 ((_ is Nil!40055) (list!14775 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))))))

(assert (=> d!1098208 (= (++!9927 (list!14775 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (list!14775 (charsOf!3985 separatorToken!144))) lt!1301372)))

(assert (= (and d!1098208 c!651042) b!3759664))

(assert (= (and d!1098208 (not c!651042)) b!3759665))

(assert (= (and d!1098208 res!1522626) b!3759666))

(assert (= (and b!3759666 res!1522625) b!3759667))

(declare-fun m!4253351 () Bool)

(assert (=> b!3759666 m!4253351))

(assert (=> b!3759666 m!4251691))

(declare-fun m!4253353 () Bool)

(assert (=> b!3759666 m!4253353))

(assert (=> b!3759666 m!4251693))

(assert (=> b!3759666 m!4252569))

(assert (=> b!3759665 m!4251693))

(declare-fun m!4253355 () Bool)

(assert (=> b!3759665 m!4253355))

(declare-fun m!4253357 () Bool)

(assert (=> d!1098208 m!4253357))

(assert (=> d!1098208 m!4251691))

(declare-fun m!4253359 () Bool)

(assert (=> d!1098208 m!4253359))

(assert (=> d!1098208 m!4251693))

(assert (=> d!1098208 m!4252575))

(assert (=> b!3758457 d!1098208))

(declare-fun d!1098210 () Bool)

(assert (=> d!1098210 (= (list!14775 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (list!14780 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))))))))

(declare-fun bs!575718 () Bool)

(assert (= bs!575718 d!1098210))

(assert (=> bs!575718 m!4252403))

(assert (=> b!3758457 d!1098210))

(assert (=> b!3758457 d!1097956))

(declare-fun d!1098212 () Bool)

(assert (=> d!1098212 (= (inv!53699 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144))) (isBalanced!3532 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144)))))))

(declare-fun bs!575719 () Bool)

(assert (= bs!575719 d!1098212))

(declare-fun m!4253361 () Bool)

(assert (=> bs!575719 m!4253361))

(assert (=> tb!215131 d!1098212))

(declare-fun d!1098214 () Bool)

(declare-fun res!1522633 () Bool)

(declare-fun e!2325001 () Bool)

(assert (=> d!1098214 (=> (not res!1522633) (not e!2325001))))

(assert (=> d!1098214 (= res!1522633 (= (csize!24760 (c!650721 v!6366)) (+ (size!30153 (left!31018 (c!650721 v!6366))) (size!30153 (right!31348 (c!650721 v!6366))))))))

(assert (=> d!1098214 (= (inv!53713 (c!650721 v!6366)) e!2325001)))

(declare-fun b!3759674 () Bool)

(declare-fun res!1522634 () Bool)

(assert (=> b!3759674 (=> (not res!1522634) (not e!2325001))))

(assert (=> b!3759674 (= res!1522634 (and (not (= (left!31018 (c!650721 v!6366)) Empty!12265)) (not (= (right!31348 (c!650721 v!6366)) Empty!12265))))))

(declare-fun b!3759675 () Bool)

(declare-fun res!1522635 () Bool)

(assert (=> b!3759675 (=> (not res!1522635) (not e!2325001))))

(assert (=> b!3759675 (= res!1522635 (= (cheight!12476 (c!650721 v!6366)) (+ (max!0 (height!1752 (left!31018 (c!650721 v!6366))) (height!1752 (right!31348 (c!650721 v!6366)))) 1)))))

(declare-fun b!3759676 () Bool)

(assert (=> b!3759676 (= e!2325001 (<= 0 (cheight!12476 (c!650721 v!6366))))))

(assert (= (and d!1098214 res!1522633) b!3759674))

(assert (= (and b!3759674 res!1522634) b!3759675))

(assert (= (and b!3759675 res!1522635) b!3759676))

(assert (=> d!1098214 m!4252651))

(declare-fun m!4253363 () Bool)

(assert (=> d!1098214 m!4253363))

(assert (=> b!3759675 m!4252673))

(assert (=> b!3759675 m!4252675))

(assert (=> b!3759675 m!4252673))

(assert (=> b!3759675 m!4252675))

(declare-fun m!4253365 () Bool)

(assert (=> b!3759675 m!4253365))

(assert (=> b!3758711 d!1098214))

(declare-fun d!1098216 () Bool)

(assert (=> d!1098216 (= (list!14775 lt!1301191) (list!14780 (c!650719 lt!1301191)))))

(declare-fun bs!575720 () Bool)

(assert (= bs!575720 d!1098216))

(declare-fun m!4253367 () Bool)

(assert (=> bs!575720 m!4253367))

(assert (=> b!3758679 d!1098216))

(declare-fun b!3759679 () Bool)

(declare-fun res!1522636 () Bool)

(declare-fun e!2325003 () Bool)

(assert (=> b!3759679 (=> (not res!1522636) (not e!2325003))))

(declare-fun lt!1301373 () List!40179)

(assert (=> b!3759679 (= res!1522636 (= (size!30154 lt!1301373) (+ (size!30154 (list!14775 acc!419)) (size!30154 (list!14775 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(declare-fun b!3759680 () Bool)

(assert (=> b!3759680 (= e!2325003 (or (not (= (list!14775 (charsOf!3985 (apply!9432 v!6366 from!856))) Nil!40055)) (= lt!1301373 (list!14775 acc!419))))))

(declare-fun b!3759677 () Bool)

(declare-fun e!2325002 () List!40179)

(assert (=> b!3759677 (= e!2325002 (list!14775 (charsOf!3985 (apply!9432 v!6366 from!856))))))

(declare-fun b!3759678 () Bool)

(assert (=> b!3759678 (= e!2325002 (Cons!40055 (h!45475 (list!14775 acc!419)) (++!9927 (t!303686 (list!14775 acc!419)) (list!14775 (charsOf!3985 (apply!9432 v!6366 from!856))))))))

(declare-fun d!1098218 () Bool)

(assert (=> d!1098218 e!2325003))

(declare-fun res!1522637 () Bool)

(assert (=> d!1098218 (=> (not res!1522637) (not e!2325003))))

(assert (=> d!1098218 (= res!1522637 (= (content!5880 lt!1301373) ((_ map or) (content!5880 (list!14775 acc!419)) (content!5880 (list!14775 (charsOf!3985 (apply!9432 v!6366 from!856)))))))))

(assert (=> d!1098218 (= lt!1301373 e!2325002)))

(declare-fun c!651043 () Bool)

(assert (=> d!1098218 (= c!651043 ((_ is Nil!40055) (list!14775 acc!419)))))

(assert (=> d!1098218 (= (++!9927 (list!14775 acc!419) (list!14775 (charsOf!3985 (apply!9432 v!6366 from!856)))) lt!1301373)))

(assert (= (and d!1098218 c!651043) b!3759677))

(assert (= (and d!1098218 (not c!651043)) b!3759678))

(assert (= (and d!1098218 res!1522637) b!3759679))

(assert (= (and b!3759679 res!1522636) b!3759680))

(declare-fun m!4253369 () Bool)

(assert (=> b!3759679 m!4253369))

(assert (=> b!3759679 m!4251627))

(assert (=> b!3759679 m!4252477))

(assert (=> b!3759679 m!4252015))

(declare-fun m!4253371 () Bool)

(assert (=> b!3759679 m!4253371))

(assert (=> b!3759678 m!4252015))

(declare-fun m!4253373 () Bool)

(assert (=> b!3759678 m!4253373))

(declare-fun m!4253375 () Bool)

(assert (=> d!1098218 m!4253375))

(assert (=> d!1098218 m!4251627))

(assert (=> d!1098218 m!4252485))

(assert (=> d!1098218 m!4252015))

(declare-fun m!4253377 () Bool)

(assert (=> d!1098218 m!4253377))

(assert (=> b!3758679 d!1098218))

(assert (=> b!3758679 d!1097830))

(declare-fun d!1098220 () Bool)

(assert (=> d!1098220 (= (list!14775 (charsOf!3985 (apply!9432 v!6366 from!856))) (list!14780 (c!650719 (charsOf!3985 (apply!9432 v!6366 from!856)))))))

(declare-fun bs!575721 () Bool)

(assert (= bs!575721 d!1098220))

(assert (=> bs!575721 m!4252223))

(assert (=> b!3758679 d!1098220))

(declare-fun d!1098222 () Bool)

(assert (=> d!1098222 (= (list!14775 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144))) (list!14780 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144)))))))

(declare-fun bs!575722 () Bool)

(assert (= bs!575722 d!1098222))

(declare-fun m!4253379 () Bool)

(assert (=> bs!575722 m!4253379))

(assert (=> b!3758718 d!1098222))

(declare-fun d!1098224 () Bool)

(declare-fun lt!1301376 () Bool)

(assert (=> d!1098224 (= lt!1301376 (select (content!5878 lt!1301045) lt!1301187))))

(declare-fun e!2325008 () Bool)

(assert (=> d!1098224 (= lt!1301376 e!2325008)))

(declare-fun res!1522642 () Bool)

(assert (=> d!1098224 (=> (not res!1522642) (not e!2325008))))

(assert (=> d!1098224 (= res!1522642 ((_ is Cons!40057) lt!1301045))))

(assert (=> d!1098224 (= (contains!8166 lt!1301045 lt!1301187) lt!1301376)))

(declare-fun b!3759685 () Bool)

(declare-fun e!2325009 () Bool)

(assert (=> b!3759685 (= e!2325008 e!2325009)))

(declare-fun res!1522643 () Bool)

(assert (=> b!3759685 (=> res!1522643 e!2325009)))

(assert (=> b!3759685 (= res!1522643 (= (h!45477 lt!1301045) lt!1301187))))

(declare-fun b!3759686 () Bool)

(assert (=> b!3759686 (= e!2325009 (contains!8166 (t!303688 lt!1301045) lt!1301187))))

(assert (= (and d!1098224 res!1522642) b!3759685))

(assert (= (and b!3759685 (not res!1522643)) b!3759686))

(assert (=> d!1098224 m!4251735))

(declare-fun m!4253381 () Bool)

(assert (=> d!1098224 m!4253381))

(declare-fun m!4253383 () Bool)

(assert (=> b!3759686 m!4253383))

(assert (=> d!1097828 d!1098224))

(declare-fun d!1098226 () Bool)

(declare-fun lt!1301377 () Int)

(assert (=> d!1098226 (>= lt!1301377 0)))

(declare-fun e!2325010 () Int)

(assert (=> d!1098226 (= lt!1301377 e!2325010)))

(declare-fun c!651044 () Bool)

(assert (=> d!1098226 (= c!651044 ((_ is Nil!40057) lt!1301045))))

(assert (=> d!1098226 (= (size!30150 lt!1301045) lt!1301377)))

(declare-fun b!3759687 () Bool)

(assert (=> b!3759687 (= e!2325010 0)))

(declare-fun b!3759688 () Bool)

(assert (=> b!3759688 (= e!2325010 (+ 1 (size!30150 (t!303688 lt!1301045))))))

(assert (= (and d!1098226 c!651044) b!3759687))

(assert (= (and d!1098226 (not c!651044)) b!3759688))

(assert (=> b!3759688 m!4252453))

(assert (=> b!3758675 d!1098226))

(declare-fun d!1098228 () Bool)

(assert (=> d!1098228 (= (list!14775 lt!1301192) (list!14780 (c!650719 lt!1301192)))))

(declare-fun bs!575723 () Bool)

(assert (= bs!575723 d!1098228))

(declare-fun m!4253385 () Bool)

(assert (=> bs!575723 m!4253385))

(assert (=> d!1097836 d!1098228))

(declare-fun d!1098230 () Bool)

(assert (=> d!1098230 (= (inv!53715 (xs!15466 (c!650719 acc!419))) (<= (size!30154 (innerList!12324 (xs!15466 (c!650719 acc!419)))) 2147483647))))

(declare-fun bs!575724 () Bool)

(assert (= bs!575724 d!1098230))

(declare-fun m!4253387 () Bool)

(assert (=> bs!575724 m!4253387))

(assert (=> b!3758743 d!1098230))

(declare-fun d!1098232 () Bool)

(assert (=> d!1098232 (= (isEmpty!23565 (originalCharacters!6732 separatorToken!144)) ((_ is Nil!40055) (originalCharacters!6732 separatorToken!144)))))

(assert (=> d!1097848 d!1098232))

(declare-fun d!1098234 () Bool)

(declare-fun lt!1301378 () Int)

(assert (=> d!1098234 (>= lt!1301378 0)))

(declare-fun e!2325011 () Int)

(assert (=> d!1098234 (= lt!1301378 e!2325011)))

(declare-fun c!651045 () Bool)

(assert (=> d!1098234 (= c!651045 ((_ is Nil!40057) (list!14776 v!6366)))))

(assert (=> d!1098234 (= (size!30150 (list!14776 v!6366)) lt!1301378)))

(declare-fun b!3759689 () Bool)

(assert (=> b!3759689 (= e!2325011 0)))

(declare-fun b!3759690 () Bool)

(assert (=> b!3759690 (= e!2325011 (+ 1 (size!30150 (t!303688 (list!14776 v!6366)))))))

(assert (= (and d!1098234 c!651045) b!3759689))

(assert (= (and d!1098234 (not c!651045)) b!3759690))

(declare-fun m!4253389 () Bool)

(assert (=> b!3759690 m!4253389))

(assert (=> d!1097842 d!1098234))

(assert (=> d!1097842 d!1097760))

(declare-fun d!1098236 () Bool)

(declare-fun lt!1301381 () Int)

(assert (=> d!1098236 (= lt!1301381 (size!30150 (list!14779 (c!650721 v!6366))))))

(assert (=> d!1098236 (= lt!1301381 (ite ((_ is Empty!12265) (c!650721 v!6366)) 0 (ite ((_ is Leaf!19023) (c!650721 v!6366)) (csize!24761 (c!650721 v!6366)) (csize!24760 (c!650721 v!6366)))))))

(assert (=> d!1098236 (= (size!30153 (c!650721 v!6366)) lt!1301381)))

(declare-fun bs!575725 () Bool)

(assert (= bs!575725 d!1098236))

(assert (=> bs!575725 m!4251657))

(assert (=> bs!575725 m!4251657))

(assert (=> bs!575725 m!4253333))

(assert (=> d!1097842 d!1098236))

(declare-fun d!1098238 () Bool)

(declare-fun res!1522647 () Bool)

(declare-fun e!2325012 () Bool)

(assert (=> d!1098238 (=> res!1522647 e!2325012)))

(assert (=> d!1098238 (= res!1522647 (not ((_ is Node!12264) (c!650719 acc!419))))))

(assert (=> d!1098238 (= (isBalanced!3532 (c!650719 acc!419)) e!2325012)))

(declare-fun b!3759691 () Bool)

(declare-fun res!1522648 () Bool)

(declare-fun e!2325013 () Bool)

(assert (=> b!3759691 (=> (not res!1522648) (not e!2325013))))

(assert (=> b!3759691 (= res!1522648 (<= (- (height!1750 (left!31017 (c!650719 acc!419))) (height!1750 (right!31347 (c!650719 acc!419)))) 1))))

(declare-fun b!3759692 () Bool)

(declare-fun res!1522645 () Bool)

(assert (=> b!3759692 (=> (not res!1522645) (not e!2325013))))

(assert (=> b!3759692 (= res!1522645 (isBalanced!3532 (left!31017 (c!650719 acc!419))))))

(declare-fun b!3759693 () Bool)

(assert (=> b!3759693 (= e!2325013 (not (isEmpty!23567 (right!31347 (c!650719 acc!419)))))))

(declare-fun b!3759694 () Bool)

(declare-fun res!1522646 () Bool)

(assert (=> b!3759694 (=> (not res!1522646) (not e!2325013))))

(assert (=> b!3759694 (= res!1522646 (isBalanced!3532 (right!31347 (c!650719 acc!419))))))

(declare-fun b!3759695 () Bool)

(declare-fun res!1522649 () Bool)

(assert (=> b!3759695 (=> (not res!1522649) (not e!2325013))))

(assert (=> b!3759695 (= res!1522649 (not (isEmpty!23567 (left!31017 (c!650719 acc!419)))))))

(declare-fun b!3759696 () Bool)

(assert (=> b!3759696 (= e!2325012 e!2325013)))

(declare-fun res!1522644 () Bool)

(assert (=> b!3759696 (=> (not res!1522644) (not e!2325013))))

(assert (=> b!3759696 (= res!1522644 (<= (- 1) (- (height!1750 (left!31017 (c!650719 acc!419))) (height!1750 (right!31347 (c!650719 acc!419))))))))

(assert (= (and d!1098238 (not res!1522647)) b!3759696))

(assert (= (and b!3759696 res!1522644) b!3759691))

(assert (= (and b!3759691 res!1522648) b!3759692))

(assert (= (and b!3759692 res!1522645) b!3759694))

(assert (= (and b!3759694 res!1522646) b!3759695))

(assert (= (and b!3759695 res!1522649) b!3759693))

(declare-fun m!4253391 () Bool)

(assert (=> b!3759692 m!4253391))

(declare-fun m!4253393 () Bool)

(assert (=> b!3759695 m!4253393))

(declare-fun m!4253395 () Bool)

(assert (=> b!3759693 m!4253395))

(declare-fun m!4253397 () Bool)

(assert (=> b!3759696 m!4253397))

(declare-fun m!4253399 () Bool)

(assert (=> b!3759696 m!4253399))

(assert (=> b!3759691 m!4253397))

(assert (=> b!3759691 m!4253399))

(declare-fun m!4253401 () Bool)

(assert (=> b!3759694 m!4253401))

(assert (=> d!1097846 d!1098238))

(declare-fun d!1098240 () Bool)

(declare-fun c!651046 () Bool)

(assert (=> d!1098240 (= c!651046 ((_ is Nil!40057) lt!1301133))))

(declare-fun e!2325014 () (InoxSet Token!11402))

(assert (=> d!1098240 (= (content!5878 lt!1301133) e!2325014)))

(declare-fun b!3759697 () Bool)

(assert (=> b!3759697 (= e!2325014 ((as const (Array Token!11402 Bool)) false))))

(declare-fun b!3759698 () Bool)

(assert (=> b!3759698 (= e!2325014 ((_ map or) (store ((as const (Array Token!11402 Bool)) false) (h!45477 lt!1301133) true) (content!5878 (t!303688 lt!1301133))))))

(assert (= (and d!1098240 c!651046) b!3759697))

(assert (= (and d!1098240 (not c!651046)) b!3759698))

(declare-fun m!4253403 () Bool)

(assert (=> b!3759698 m!4253403))

(declare-fun m!4253405 () Bool)

(assert (=> b!3759698 m!4253405))

(assert (=> d!1097796 d!1098240))

(assert (=> d!1097796 d!1098188))

(assert (=> bm!275262 d!1098226))

(declare-fun b!3759701 () Bool)

(declare-fun res!1522650 () Bool)

(declare-fun e!2325016 () Bool)

(assert (=> b!3759701 (=> (not res!1522650) (not e!2325016))))

(declare-fun lt!1301382 () List!40179)

(assert (=> b!3759701 (= res!1522650 (= (size!30154 lt!1301382) (+ (size!30154 (list!14775 acc!419)) (size!30154 (printWithSeparatorTokenList!402 thiss!14060 (dropList!1269 v!6366 from!856) separatorToken!144)))))))

(declare-fun b!3759702 () Bool)

(assert (=> b!3759702 (= e!2325016 (or (not (= (printWithSeparatorTokenList!402 thiss!14060 (dropList!1269 v!6366 from!856) separatorToken!144) Nil!40055)) (= lt!1301382 (list!14775 acc!419))))))

(declare-fun e!2325015 () List!40179)

(declare-fun b!3759699 () Bool)

(assert (=> b!3759699 (= e!2325015 (printWithSeparatorTokenList!402 thiss!14060 (dropList!1269 v!6366 from!856) separatorToken!144))))

(declare-fun b!3759700 () Bool)

(assert (=> b!3759700 (= e!2325015 (Cons!40055 (h!45475 (list!14775 acc!419)) (++!9927 (t!303686 (list!14775 acc!419)) (printWithSeparatorTokenList!402 thiss!14060 (dropList!1269 v!6366 from!856) separatorToken!144))))))

(declare-fun d!1098242 () Bool)

(assert (=> d!1098242 e!2325016))

(declare-fun res!1522651 () Bool)

(assert (=> d!1098242 (=> (not res!1522651) (not e!2325016))))

(assert (=> d!1098242 (= res!1522651 (= (content!5880 lt!1301382) ((_ map or) (content!5880 (list!14775 acc!419)) (content!5880 (printWithSeparatorTokenList!402 thiss!14060 (dropList!1269 v!6366 from!856) separatorToken!144)))))))

(assert (=> d!1098242 (= lt!1301382 e!2325015)))

(declare-fun c!651047 () Bool)

(assert (=> d!1098242 (= c!651047 ((_ is Nil!40055) (list!14775 acc!419)))))

(assert (=> d!1098242 (= (++!9927 (list!14775 acc!419) (printWithSeparatorTokenList!402 thiss!14060 (dropList!1269 v!6366 from!856) separatorToken!144)) lt!1301382)))

(assert (= (and d!1098242 c!651047) b!3759699))

(assert (= (and d!1098242 (not c!651047)) b!3759700))

(assert (= (and d!1098242 res!1522651) b!3759701))

(assert (= (and b!3759701 res!1522650) b!3759702))

(declare-fun m!4253407 () Bool)

(assert (=> b!3759701 m!4253407))

(assert (=> b!3759701 m!4251627))

(assert (=> b!3759701 m!4252477))

(assert (=> b!3759701 m!4251807))

(declare-fun m!4253409 () Bool)

(assert (=> b!3759701 m!4253409))

(assert (=> b!3759700 m!4251807))

(declare-fun m!4253411 () Bool)

(assert (=> b!3759700 m!4253411))

(declare-fun m!4253413 () Bool)

(assert (=> d!1098242 m!4253413))

(assert (=> d!1098242 m!4251627))

(assert (=> d!1098242 m!4252485))

(assert (=> d!1098242 m!4251807))

(declare-fun m!4253415 () Bool)

(assert (=> d!1098242 m!4253415))

(assert (=> d!1097784 d!1098242))

(declare-fun d!1098244 () Bool)

(declare-fun c!651048 () Bool)

(assert (=> d!1098244 (= c!651048 ((_ is Cons!40057) (dropList!1269 v!6366 from!856)))))

(declare-fun e!2325017 () List!40179)

(assert (=> d!1098244 (= (printWithSeparatorTokenList!402 thiss!14060 (dropList!1269 v!6366 from!856) separatorToken!144) e!2325017)))

(declare-fun b!3759703 () Bool)

(assert (=> b!3759703 (= e!2325017 (++!9927 (++!9927 (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 from!856)))) (list!14775 (charsOf!3985 separatorToken!144))) (printWithSeparatorTokenList!402 thiss!14060 (t!303688 (dropList!1269 v!6366 from!856)) separatorToken!144)))))

(declare-fun b!3759704 () Bool)

(assert (=> b!3759704 (= e!2325017 Nil!40055)))

(assert (= (and d!1098244 c!651048) b!3759703))

(assert (= (and d!1098244 (not c!651048)) b!3759704))

(assert (=> b!3759703 m!4251833))

(assert (=> b!3759703 m!4251831))

(assert (=> b!3759703 m!4251833))

(declare-fun m!4253417 () Bool)

(assert (=> b!3759703 m!4253417))

(assert (=> b!3759703 m!4251821))

(assert (=> b!3759703 m!4251829))

(assert (=> b!3759703 m!4251829))

(assert (=> b!3759703 m!4251693))

(assert (=> b!3759703 m!4251831))

(assert (=> b!3759703 m!4251607))

(assert (=> b!3759703 m!4251607))

(assert (=> b!3759703 m!4251693))

(assert (=> b!3759703 m!4251821))

(assert (=> d!1097784 d!1098244))

(declare-fun d!1098246 () Bool)

(assert (=> d!1098246 true))

(declare-fun lambda!125281 () Int)

(declare-fun order!21899 () Int)

(declare-fun order!21901 () Int)

(declare-fun dynLambda!17327 (Int Int) Int)

(declare-fun dynLambda!17328 (Int Int) Int)

(assert (=> d!1098246 (< (dynLambda!17327 order!21899 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144)))) (dynLambda!17328 order!21901 lambda!125281))))

(assert (=> d!1098246 true))

(assert (=> d!1098246 (< (dynLambda!17325 order!21895 (toValue!8484 (transformation!6132 (rule!8896 separatorToken!144)))) (dynLambda!17328 order!21901 lambda!125281))))

(declare-fun Forall!1400 (Int) Bool)

(assert (=> d!1098246 (= (semiInverseModEq!2625 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (toValue!8484 (transformation!6132 (rule!8896 separatorToken!144)))) (Forall!1400 lambda!125281))))

(declare-fun bs!575726 () Bool)

(assert (= bs!575726 d!1098246))

(declare-fun m!4253419 () Bool)

(assert (=> bs!575726 m!4253419))

(assert (=> d!1097752 d!1098246))

(assert (=> b!3758663 d!1098226))

(assert (=> b!3758677 d!1097894))

(assert (=> b!3758677 d!1097896))

(assert (=> b!3758677 d!1097898))

(assert (=> b!3758677 d!1097900))

(assert (=> b!3758677 d!1097902))

(assert (=> bm!275266 d!1098226))

(declare-fun b!3759710 () Bool)

(declare-fun e!2325018 () List!40179)

(declare-fun e!2325019 () List!40179)

(assert (=> b!3759710 (= e!2325018 e!2325019)))

(declare-fun c!651050 () Bool)

(assert (=> b!3759710 (= c!651050 ((_ is Leaf!19022) (c!650719 (printWithSeparatorTokenTailRec!82 thiss!14060 v!6366 separatorToken!144 (+ 1 from!856) (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))))))))

(declare-fun b!3759711 () Bool)

(assert (=> b!3759711 (= e!2325019 (list!14783 (xs!15466 (c!650719 (printWithSeparatorTokenTailRec!82 thiss!14060 v!6366 separatorToken!144 (+ 1 from!856) (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)))))))))

(declare-fun b!3759709 () Bool)

(assert (=> b!3759709 (= e!2325018 Nil!40055)))

(declare-fun c!651049 () Bool)

(declare-fun d!1098248 () Bool)

(assert (=> d!1098248 (= c!651049 ((_ is Empty!12264) (c!650719 (printWithSeparatorTokenTailRec!82 thiss!14060 v!6366 separatorToken!144 (+ 1 from!856) (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))))))))

(assert (=> d!1098248 (= (list!14780 (c!650719 (printWithSeparatorTokenTailRec!82 thiss!14060 v!6366 separatorToken!144 (+ 1 from!856) (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))))) e!2325018)))

(declare-fun b!3759712 () Bool)

(assert (=> b!3759712 (= e!2325019 (++!9927 (list!14780 (left!31017 (c!650719 (printWithSeparatorTokenTailRec!82 thiss!14060 v!6366 separatorToken!144 (+ 1 from!856) (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)))))) (list!14780 (right!31347 (c!650719 (printWithSeparatorTokenTailRec!82 thiss!14060 v!6366 separatorToken!144 (+ 1 from!856) (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))))))))))

(assert (= (and d!1098248 c!651049) b!3759709))

(assert (= (and d!1098248 (not c!651049)) b!3759710))

(assert (= (and b!3759710 c!651050) b!3759711))

(assert (= (and b!3759710 (not c!651050)) b!3759712))

(declare-fun m!4253421 () Bool)

(assert (=> b!3759711 m!4253421))

(declare-fun m!4253423 () Bool)

(assert (=> b!3759712 m!4253423))

(declare-fun m!4253425 () Bool)

(assert (=> b!3759712 m!4253425))

(assert (=> b!3759712 m!4253423))

(assert (=> b!3759712 m!4253425))

(declare-fun m!4253427 () Bool)

(assert (=> b!3759712 m!4253427))

(assert (=> d!1097824 d!1098248))

(assert (=> b!3758670 d!1098226))

(assert (=> b!3758408 d!1097838))

(assert (=> b!3758433 d!1097842))

(declare-fun d!1098250 () Bool)

(declare-fun lt!1301383 () Token!11402)

(assert (=> d!1098250 (contains!8166 (tail!5762 lt!1301045) lt!1301383)))

(declare-fun e!2325021 () Token!11402)

(assert (=> d!1098250 (= lt!1301383 e!2325021)))

(declare-fun c!651051 () Bool)

(assert (=> d!1098250 (= c!651051 (= (- from!856 1) 0))))

(declare-fun e!2325020 () Bool)

(assert (=> d!1098250 e!2325020))

(declare-fun res!1522652 () Bool)

(assert (=> d!1098250 (=> (not res!1522652) (not e!2325020))))

(assert (=> d!1098250 (= res!1522652 (<= 0 (- from!856 1)))))

(assert (=> d!1098250 (= (apply!9433 (tail!5762 lt!1301045) (- from!856 1)) lt!1301383)))

(declare-fun b!3759713 () Bool)

(assert (=> b!3759713 (= e!2325020 (< (- from!856 1) (size!30150 (tail!5762 lt!1301045))))))

(declare-fun b!3759714 () Bool)

(assert (=> b!3759714 (= e!2325021 (head!8035 (tail!5762 lt!1301045)))))

(declare-fun b!3759715 () Bool)

(assert (=> b!3759715 (= e!2325021 (apply!9433 (tail!5762 (tail!5762 lt!1301045)) (- (- from!856 1) 1)))))

(assert (= (and d!1098250 res!1522652) b!3759713))

(assert (= (and d!1098250 c!651051) b!3759714))

(assert (= (and d!1098250 (not c!651051)) b!3759715))

(assert (=> d!1098250 m!4252001))

(declare-fun m!4253429 () Bool)

(assert (=> d!1098250 m!4253429))

(assert (=> b!3759713 m!4252001))

(declare-fun m!4253431 () Bool)

(assert (=> b!3759713 m!4253431))

(assert (=> b!3759714 m!4252001))

(declare-fun m!4253433 () Bool)

(assert (=> b!3759714 m!4253433))

(assert (=> b!3759715 m!4252001))

(declare-fun m!4253435 () Bool)

(assert (=> b!3759715 m!4253435))

(assert (=> b!3759715 m!4253435))

(declare-fun m!4253437 () Bool)

(assert (=> b!3759715 m!4253437))

(assert (=> b!3758672 d!1098250))

(declare-fun d!1098252 () Bool)

(assert (=> d!1098252 (= (tail!5762 lt!1301045) (t!303688 lt!1301045))))

(assert (=> b!3758672 d!1098252))

(assert (=> b!3758410 d!1097844))

(declare-fun d!1098254 () Bool)

(declare-fun lt!1301392 () List!40179)

(assert (=> d!1098254 (= lt!1301392 (++!9927 (list!14775 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))) (printWithSeparatorTokenList!402 thiss!14060 (dropList!1269 v!6366 (+ 1 from!856)) separatorToken!144)))))

(declare-fun e!2325022 () List!40179)

(assert (=> d!1098254 (= lt!1301392 e!2325022)))

(declare-fun c!651052 () Bool)

(assert (=> d!1098254 (= c!651052 ((_ is Cons!40057) (dropList!1269 v!6366 (+ 1 from!856))))))

(assert (=> d!1098254 (isSeparator!6132 (rule!8896 separatorToken!144))))

(assert (=> d!1098254 (= (printWithSeparatorTokenListTailRec!44 thiss!14060 (dropList!1269 v!6366 (+ 1 from!856)) separatorToken!144 (list!14775 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)))) lt!1301392)))

(declare-fun b!3759716 () Bool)

(assert (=> b!3759716 (= e!2325022 (printWithSeparatorTokenListTailRec!44 thiss!14060 (t!303688 (dropList!1269 v!6366 (+ 1 from!856))) separatorToken!144 (++!9927 (++!9927 (list!14775 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))) (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 (+ 1 from!856)))))) (list!14775 (charsOf!3985 separatorToken!144)))))))

(declare-fun lt!1301386 () List!40179)

(assert (=> b!3759716 (= lt!1301386 (++!9927 (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 (+ 1 from!856))))) (list!14775 (charsOf!3985 separatorToken!144))))))

(declare-fun lt!1301388 () List!40179)

(assert (=> b!3759716 (= lt!1301388 (printWithSeparatorTokenList!402 thiss!14060 (t!303688 (dropList!1269 v!6366 (+ 1 from!856))) separatorToken!144))))

(declare-fun lt!1301385 () Unit!57784)

(assert (=> b!3759716 (= lt!1301385 (lemmaConcatAssociativity!2094 (list!14775 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))) lt!1301386 lt!1301388))))

(assert (=> b!3759716 (= (++!9927 (++!9927 (list!14775 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))) lt!1301386) lt!1301388) (++!9927 (list!14775 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))) (++!9927 lt!1301386 lt!1301388)))))

(declare-fun lt!1301387 () Unit!57784)

(assert (=> b!3759716 (= lt!1301387 lt!1301385)))

(declare-fun lt!1301391 () List!40179)

(assert (=> b!3759716 (= lt!1301391 (list!14775 (charsOf!3985 (h!45477 (dropList!1269 v!6366 (+ 1 from!856))))))))

(declare-fun lt!1301390 () List!40179)

(assert (=> b!3759716 (= lt!1301390 (list!14775 (charsOf!3985 separatorToken!144)))))

(declare-fun lt!1301389 () Unit!57784)

(assert (=> b!3759716 (= lt!1301389 (lemmaConcatAssociativity!2094 (list!14775 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))) lt!1301391 lt!1301390))))

(assert (=> b!3759716 (= (++!9927 (++!9927 (list!14775 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))) lt!1301391) lt!1301390) (++!9927 (list!14775 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))) (++!9927 lt!1301391 lt!1301390)))))

(declare-fun lt!1301384 () Unit!57784)

(assert (=> b!3759716 (= lt!1301384 lt!1301389)))

(declare-fun b!3759717 () Bool)

(assert (=> b!3759717 (= e!2325022 (list!14775 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))))))

(assert (= (and d!1098254 c!651052) b!3759716))

(assert (= (and d!1098254 (not c!651052)) b!3759717))

(assert (=> d!1098254 m!4251957))

(declare-fun m!4253439 () Bool)

(assert (=> d!1098254 m!4253439))

(assert (=> d!1098254 m!4251959))

(assert (=> d!1098254 m!4253439))

(declare-fun m!4253441 () Bool)

(assert (=> d!1098254 m!4253441))

(assert (=> b!3759716 m!4251959))

(declare-fun m!4253443 () Bool)

(assert (=> b!3759716 m!4253443))

(declare-fun m!4253445 () Bool)

(assert (=> b!3759716 m!4253445))

(declare-fun m!4253447 () Bool)

(assert (=> b!3759716 m!4253447))

(declare-fun m!4253449 () Bool)

(assert (=> b!3759716 m!4253449))

(assert (=> b!3759716 m!4251693))

(declare-fun m!4253451 () Bool)

(assert (=> b!3759716 m!4253451))

(assert (=> b!3759716 m!4251959))

(assert (=> b!3759716 m!4253445))

(declare-fun m!4253453 () Bool)

(assert (=> b!3759716 m!4253453))

(declare-fun m!4253455 () Bool)

(assert (=> b!3759716 m!4253455))

(assert (=> b!3759716 m!4251959))

(declare-fun m!4253457 () Bool)

(assert (=> b!3759716 m!4253457))

(assert (=> b!3759716 m!4253457))

(declare-fun m!4253459 () Bool)

(assert (=> b!3759716 m!4253459))

(assert (=> b!3759716 m!4251607))

(assert (=> b!3759716 m!4251693))

(declare-fun m!4253461 () Bool)

(assert (=> b!3759716 m!4253461))

(assert (=> b!3759716 m!4251693))

(declare-fun m!4253463 () Bool)

(assert (=> b!3759716 m!4253463))

(declare-fun m!4253465 () Bool)

(assert (=> b!3759716 m!4253465))

(assert (=> b!3759716 m!4253453))

(assert (=> b!3759716 m!4253461))

(assert (=> b!3759716 m!4251959))

(declare-fun m!4253467 () Bool)

(assert (=> b!3759716 m!4253467))

(declare-fun m!4253469 () Bool)

(assert (=> b!3759716 m!4253469))

(assert (=> b!3759716 m!4251959))

(assert (=> b!3759716 m!4253469))

(declare-fun m!4253471 () Bool)

(assert (=> b!3759716 m!4253471))

(assert (=> b!3759716 m!4251959))

(assert (=> b!3759716 m!4253461))

(assert (=> b!3759716 m!4253449))

(assert (=> b!3759716 m!4253451))

(declare-fun m!4253473 () Bool)

(assert (=> b!3759716 m!4253473))

(assert (=> b!3759716 m!4251607))

(assert (=> b!3759716 m!4251959))

(assert (=> b!3759716 m!4253455))

(declare-fun m!4253475 () Bool)

(assert (=> b!3759716 m!4253475))

(assert (=> d!1097800 d!1098254))

(assert (=> d!1097800 d!1097842))

(declare-fun d!1098256 () Bool)

(assert (=> d!1098256 (= (list!14775 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144))) (list!14780 (c!650719 (++!9923 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856))) (charsOf!3985 separatorToken!144)))))))

(declare-fun bs!575727 () Bool)

(assert (= bs!575727 d!1098256))

(declare-fun m!4253477 () Bool)

(assert (=> bs!575727 m!4253477))

(assert (=> d!1097800 d!1098256))

(declare-fun d!1098258 () Bool)

(assert (=> d!1098258 (= (dropList!1269 v!6366 (+ 1 from!856)) (drop!2093 (list!14779 (c!650721 v!6366)) (+ 1 from!856)))))

(declare-fun bs!575728 () Bool)

(assert (= bs!575728 d!1098258))

(assert (=> bs!575728 m!4251657))

(assert (=> bs!575728 m!4251657))

(declare-fun m!4253479 () Bool)

(assert (=> bs!575728 m!4253479))

(assert (=> d!1097800 d!1098258))

(declare-fun d!1098260 () Bool)

(assert (=> d!1098260 (= (list!14775 lt!1301180) (list!14780 (c!650719 lt!1301180)))))

(declare-fun bs!575729 () Bool)

(assert (= bs!575729 d!1098260))

(declare-fun m!4253481 () Bool)

(assert (=> bs!575729 m!4253481))

(assert (=> d!1097800 d!1098260))

(declare-fun d!1098262 () Bool)

(declare-fun c!651053 () Bool)

(assert (=> d!1098262 (= c!651053 ((_ is Node!12264) (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144)))))))

(declare-fun e!2325023 () Bool)

(assert (=> d!1098262 (= (inv!53702 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144)))) e!2325023)))

(declare-fun b!3759718 () Bool)

(assert (=> b!3759718 (= e!2325023 (inv!53711 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144)))))))

(declare-fun b!3759719 () Bool)

(declare-fun e!2325024 () Bool)

(assert (=> b!3759719 (= e!2325023 e!2325024)))

(declare-fun res!1522653 () Bool)

(assert (=> b!3759719 (= res!1522653 (not ((_ is Leaf!19022) (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144))))))))

(assert (=> b!3759719 (=> res!1522653 e!2325024)))

(declare-fun b!3759720 () Bool)

(assert (=> b!3759720 (= e!2325024 (inv!53712 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144)))))))

(assert (= (and d!1098262 c!651053) b!3759718))

(assert (= (and d!1098262 (not c!651053)) b!3759719))

(assert (= (and b!3759719 (not res!1522653)) b!3759720))

(declare-fun m!4253483 () Bool)

(assert (=> b!3759718 m!4253483))

(declare-fun m!4253485 () Bool)

(assert (=> b!3759720 m!4253485))

(assert (=> b!3758680 d!1098262))

(declare-fun d!1098264 () Bool)

(declare-fun res!1522657 () Bool)

(declare-fun e!2325025 () Bool)

(assert (=> d!1098264 (=> res!1522657 e!2325025)))

(assert (=> d!1098264 (= res!1522657 (not ((_ is Node!12264) (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144))))))))

(assert (=> d!1098264 (= (isBalanced!3532 (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144)))) e!2325025)))

(declare-fun b!3759721 () Bool)

(declare-fun res!1522658 () Bool)

(declare-fun e!2325026 () Bool)

(assert (=> b!3759721 (=> (not res!1522658) (not e!2325026))))

(assert (=> b!3759721 (= res!1522658 (<= (- (height!1750 (left!31017 (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144))))) (height!1750 (right!31347 (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144)))))) 1))))

(declare-fun b!3759722 () Bool)

(declare-fun res!1522655 () Bool)

(assert (=> b!3759722 (=> (not res!1522655) (not e!2325026))))

(assert (=> b!3759722 (= res!1522655 (isBalanced!3532 (left!31017 (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144))))))))

(declare-fun b!3759723 () Bool)

(assert (=> b!3759723 (= e!2325026 (not (isEmpty!23567 (right!31347 (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144)))))))))

(declare-fun b!3759724 () Bool)

(declare-fun res!1522656 () Bool)

(assert (=> b!3759724 (=> (not res!1522656) (not e!2325026))))

(assert (=> b!3759724 (= res!1522656 (isBalanced!3532 (right!31347 (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144))))))))

(declare-fun b!3759725 () Bool)

(declare-fun res!1522659 () Bool)

(assert (=> b!3759725 (=> (not res!1522659) (not e!2325026))))

(assert (=> b!3759725 (= res!1522659 (not (isEmpty!23567 (left!31017 (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144)))))))))

(declare-fun b!3759726 () Bool)

(assert (=> b!3759726 (= e!2325025 e!2325026)))

(declare-fun res!1522654 () Bool)

(assert (=> b!3759726 (=> (not res!1522654) (not e!2325026))))

(assert (=> b!3759726 (= res!1522654 (<= (- 1) (- (height!1750 (left!31017 (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144))))) (height!1750 (right!31347 (++!9926 (c!650719 (++!9923 acc!419 (charsOf!3985 (apply!9432 v!6366 from!856)))) (c!650719 (charsOf!3985 separatorToken!144))))))))))

(assert (= (and d!1098264 (not res!1522657)) b!3759726))

(assert (= (and b!3759726 res!1522654) b!3759721))

(assert (= (and b!3759721 res!1522658) b!3759722))

(assert (= (and b!3759722 res!1522655) b!3759724))

(assert (= (and b!3759724 res!1522656) b!3759725))

(assert (= (and b!3759725 res!1522659) b!3759723))

(declare-fun m!4253487 () Bool)

(assert (=> b!3759722 m!4253487))

(declare-fun m!4253489 () Bool)

(assert (=> b!3759725 m!4253489))

(declare-fun m!4253491 () Bool)

(assert (=> b!3759723 m!4253491))

(declare-fun m!4253493 () Bool)

(assert (=> b!3759726 m!4253493))

(declare-fun m!4253495 () Bool)

(assert (=> b!3759726 m!4253495))

(assert (=> b!3759721 m!4253493))

(assert (=> b!3759721 m!4253495))

(declare-fun m!4253497 () Bool)

(assert (=> b!3759724 m!4253497))

(assert (=> b!3758454 d!1098264))

(assert (=> b!3758454 d!1097942))

(declare-fun d!1098266 () Bool)

(declare-fun res!1522666 () Bool)

(declare-fun e!2325029 () Bool)

(assert (=> d!1098266 (=> (not res!1522666) (not e!2325029))))

(declare-fun size!30156 (Conc!12264) Int)

(assert (=> d!1098266 (= res!1522666 (= (csize!24758 (c!650719 acc!419)) (+ (size!30156 (left!31017 (c!650719 acc!419))) (size!30156 (right!31347 (c!650719 acc!419))))))))

(assert (=> d!1098266 (= (inv!53711 (c!650719 acc!419)) e!2325029)))

(declare-fun b!3759733 () Bool)

(declare-fun res!1522667 () Bool)

(assert (=> b!3759733 (=> (not res!1522667) (not e!2325029))))

(assert (=> b!3759733 (= res!1522667 (and (not (= (left!31017 (c!650719 acc!419)) Empty!12264)) (not (= (right!31347 (c!650719 acc!419)) Empty!12264))))))

(declare-fun b!3759734 () Bool)

(declare-fun res!1522668 () Bool)

(assert (=> b!3759734 (=> (not res!1522668) (not e!2325029))))

(assert (=> b!3759734 (= res!1522668 (= (cheight!12475 (c!650719 acc!419)) (+ (max!0 (height!1750 (left!31017 (c!650719 acc!419))) (height!1750 (right!31347 (c!650719 acc!419)))) 1)))))

(declare-fun b!3759735 () Bool)

(assert (=> b!3759735 (= e!2325029 (<= 0 (cheight!12475 (c!650719 acc!419))))))

(assert (= (and d!1098266 res!1522666) b!3759733))

(assert (= (and b!3759733 res!1522667) b!3759734))

(assert (= (and b!3759734 res!1522668) b!3759735))

(declare-fun m!4253499 () Bool)

(assert (=> d!1098266 m!4253499))

(declare-fun m!4253501 () Bool)

(assert (=> d!1098266 m!4253501))

(assert (=> b!3759734 m!4253397))

(assert (=> b!3759734 m!4253399))

(assert (=> b!3759734 m!4253397))

(assert (=> b!3759734 m!4253399))

(declare-fun m!4253503 () Bool)

(assert (=> b!3759734 m!4253503))

(assert (=> b!3758687 d!1098266))

(declare-fun d!1098268 () Bool)

(declare-fun charsToInt!0 (List!40180) (_ BitVec 32))

(assert (=> d!1098268 (= (inv!16 (value!195351 separatorToken!144)) (= (charsToInt!0 (text!44981 (value!195351 separatorToken!144))) (value!195342 (value!195351 separatorToken!144))))))

(declare-fun bs!575730 () Bool)

(assert (= bs!575730 d!1098268))

(declare-fun m!4253505 () Bool)

(assert (=> bs!575730 m!4253505))

(assert (=> b!3758701 d!1098268))

(declare-fun d!1098270 () Bool)

(declare-fun charsToBigInt!1 (List!40180) Int)

(assert (=> d!1098270 (= (inv!17 (value!195351 separatorToken!144)) (= (charsToBigInt!1 (text!44982 (value!195351 separatorToken!144))) (value!195343 (value!195351 separatorToken!144))))))

(declare-fun bs!575731 () Bool)

(assert (= bs!575731 d!1098270))

(declare-fun m!4253507 () Bool)

(assert (=> bs!575731 m!4253507))

(assert (=> b!3758703 d!1098270))

(declare-fun d!1098272 () Bool)

(assert (=> d!1098272 (= (tail!5762 (drop!2093 lt!1301045 from!856)) (t!303688 (drop!2093 lt!1301045 from!856)))))

(assert (=> d!1097832 d!1098272))

(assert (=> d!1097832 d!1097796))

(declare-fun b!3759736 () Bool)

(declare-fun e!2325032 () List!40181)

(assert (=> b!3759736 (= e!2325032 Nil!40057)))

(declare-fun bm!275415 () Bool)

(declare-fun call!275420 () Int)

(assert (=> bm!275415 (= call!275420 (size!30150 lt!1301045))))

(declare-fun d!1098274 () Bool)

(declare-fun e!2325033 () Bool)

(assert (=> d!1098274 e!2325033))

(declare-fun res!1522669 () Bool)

(assert (=> d!1098274 (=> (not res!1522669) (not e!2325033))))

(declare-fun lt!1301393 () List!40181)

(assert (=> d!1098274 (= res!1522669 (= ((_ map implies) (content!5878 lt!1301393) (content!5878 lt!1301045)) ((as const (InoxSet Token!11402)) true)))))

(assert (=> d!1098274 (= lt!1301393 e!2325032)))

(declare-fun c!651055 () Bool)

(assert (=> d!1098274 (= c!651055 ((_ is Nil!40057) lt!1301045))))

(assert (=> d!1098274 (= (drop!2093 lt!1301045 (+ from!856 1)) lt!1301393)))

(declare-fun b!3759737 () Bool)

(declare-fun e!2325031 () List!40181)

(assert (=> b!3759737 (= e!2325031 (drop!2093 (t!303688 lt!1301045) (- (+ from!856 1) 1)))))

(declare-fun b!3759738 () Bool)

(assert (=> b!3759738 (= e!2325032 e!2325031)))

(declare-fun c!651056 () Bool)

(assert (=> b!3759738 (= c!651056 (<= (+ from!856 1) 0))))

(declare-fun b!3759739 () Bool)

(declare-fun e!2325030 () Int)

(assert (=> b!3759739 (= e!2325033 (= (size!30150 lt!1301393) e!2325030))))

(declare-fun c!651057 () Bool)

(assert (=> b!3759739 (= c!651057 (<= (+ from!856 1) 0))))

(declare-fun b!3759740 () Bool)

(assert (=> b!3759740 (= e!2325030 call!275420)))

(declare-fun b!3759741 () Bool)

(declare-fun e!2325034 () Int)

(assert (=> b!3759741 (= e!2325034 (- call!275420 (+ from!856 1)))))

(declare-fun b!3759742 () Bool)

(assert (=> b!3759742 (= e!2325034 0)))

(declare-fun b!3759743 () Bool)

(assert (=> b!3759743 (= e!2325030 e!2325034)))

(declare-fun c!651054 () Bool)

(assert (=> b!3759743 (= c!651054 (>= (+ from!856 1) call!275420))))

(declare-fun b!3759744 () Bool)

(assert (=> b!3759744 (= e!2325031 lt!1301045)))

(assert (= (and d!1098274 c!651055) b!3759736))

(assert (= (and d!1098274 (not c!651055)) b!3759738))

(assert (= (and b!3759738 c!651056) b!3759744))

(assert (= (and b!3759738 (not c!651056)) b!3759737))

(assert (= (and d!1098274 res!1522669) b!3759739))

(assert (= (and b!3759739 c!651057) b!3759740))

(assert (= (and b!3759739 (not c!651057)) b!3759743))

(assert (= (and b!3759743 c!651054) b!3759742))

(assert (= (and b!3759743 (not c!651054)) b!3759741))

(assert (= (or b!3759740 b!3759743 b!3759741) bm!275415))

(assert (=> bm!275415 m!4251731))

(declare-fun m!4253509 () Bool)

(assert (=> d!1098274 m!4253509))

(assert (=> d!1098274 m!4251735))

(declare-fun m!4253511 () Bool)

(assert (=> b!3759737 m!4253511))

(declare-fun m!4253513 () Bool)

(assert (=> b!3759739 m!4253513))

(assert (=> d!1097832 d!1098274))

(declare-fun d!1098276 () Bool)

(assert (=> d!1098276 (= (tail!5762 (drop!2093 lt!1301045 from!856)) (drop!2093 lt!1301045 (+ from!856 1)))))

(assert (=> d!1098276 true))

(declare-fun _$28!793 () Unit!57784)

(assert (=> d!1098276 (= (choose!22272 lt!1301045 from!856) _$28!793)))

(declare-fun bs!575732 () Bool)

(assert (= bs!575732 d!1098276))

(assert (=> bs!575732 m!4251617))

(assert (=> bs!575732 m!4251617))

(assert (=> bs!575732 m!4252007))

(assert (=> bs!575732 m!4252009))

(assert (=> d!1097832 d!1098276))

(assert (=> b!3758456 d!1098196))

(assert (=> b!3758456 d!1098198))

(assert (=> b!3758456 d!1098200))

(assert (=> b!3758456 d!1098202))

(assert (=> b!3758456 d!1097942))

(declare-fun d!1098278 () Bool)

(declare-fun res!1522674 () Bool)

(declare-fun e!2325037 () Bool)

(assert (=> d!1098278 (=> (not res!1522674) (not e!2325037))))

(assert (=> d!1098278 (= res!1522674 (<= (size!30154 (list!14783 (xs!15466 (c!650719 acc!419)))) 512))))

(assert (=> d!1098278 (= (inv!53712 (c!650719 acc!419)) e!2325037)))

(declare-fun b!3759749 () Bool)

(declare-fun res!1522675 () Bool)

(assert (=> b!3759749 (=> (not res!1522675) (not e!2325037))))

(assert (=> b!3759749 (= res!1522675 (= (csize!24759 (c!650719 acc!419)) (size!30154 (list!14783 (xs!15466 (c!650719 acc!419))))))))

(declare-fun b!3759750 () Bool)

(assert (=> b!3759750 (= e!2325037 (and (> (csize!24759 (c!650719 acc!419)) 0) (<= (csize!24759 (c!650719 acc!419)) 512)))))

(assert (= (and d!1098278 res!1522674) b!3759749))

(assert (= (and b!3759749 res!1522675) b!3759750))

(assert (=> d!1098278 m!4252259))

(assert (=> d!1098278 m!4252259))

(declare-fun m!4253515 () Bool)

(assert (=> d!1098278 m!4253515))

(assert (=> b!3759749 m!4252259))

(assert (=> b!3759749 m!4252259))

(assert (=> b!3759749 m!4253515))

(assert (=> b!3758689 d!1098278))

(declare-fun d!1098280 () Bool)

(declare-fun c!651058 () Bool)

(assert (=> d!1098280 (= c!651058 ((_ is Node!12265) (left!31018 (c!650721 v!6366))))))

(declare-fun e!2325038 () Bool)

(assert (=> d!1098280 (= (inv!53704 (left!31018 (c!650721 v!6366))) e!2325038)))

(declare-fun b!3759751 () Bool)

(assert (=> b!3759751 (= e!2325038 (inv!53713 (left!31018 (c!650721 v!6366))))))

(declare-fun b!3759752 () Bool)

(declare-fun e!2325039 () Bool)

(assert (=> b!3759752 (= e!2325038 e!2325039)))

(declare-fun res!1522676 () Bool)

(assert (=> b!3759752 (= res!1522676 (not ((_ is Leaf!19023) (left!31018 (c!650721 v!6366)))))))

(assert (=> b!3759752 (=> res!1522676 e!2325039)))

(declare-fun b!3759753 () Bool)

(assert (=> b!3759753 (= e!2325039 (inv!53714 (left!31018 (c!650721 v!6366))))))

(assert (= (and d!1098280 c!651058) b!3759751))

(assert (= (and d!1098280 (not c!651058)) b!3759752))

(assert (= (and b!3759752 (not res!1522676)) b!3759753))

(declare-fun m!4253517 () Bool)

(assert (=> b!3759751 m!4253517))

(declare-fun m!4253519 () Bool)

(assert (=> b!3759753 m!4253519))

(assert (=> b!3758758 d!1098280))

(declare-fun d!1098282 () Bool)

(declare-fun c!651059 () Bool)

(assert (=> d!1098282 (= c!651059 ((_ is Node!12265) (right!31348 (c!650721 v!6366))))))

(declare-fun e!2325040 () Bool)

(assert (=> d!1098282 (= (inv!53704 (right!31348 (c!650721 v!6366))) e!2325040)))

(declare-fun b!3759754 () Bool)

(assert (=> b!3759754 (= e!2325040 (inv!53713 (right!31348 (c!650721 v!6366))))))

(declare-fun b!3759755 () Bool)

(declare-fun e!2325041 () Bool)

(assert (=> b!3759755 (= e!2325040 e!2325041)))

(declare-fun res!1522677 () Bool)

(assert (=> b!3759755 (= res!1522677 (not ((_ is Leaf!19023) (right!31348 (c!650721 v!6366)))))))

(assert (=> b!3759755 (=> res!1522677 e!2325041)))

(declare-fun b!3759756 () Bool)

(assert (=> b!3759756 (= e!2325041 (inv!53714 (right!31348 (c!650721 v!6366))))))

(assert (= (and d!1098282 c!651059) b!3759754))

(assert (= (and d!1098282 (not c!651059)) b!3759755))

(assert (= (and b!3759755 (not res!1522677)) b!3759756))

(declare-fun m!4253521 () Bool)

(assert (=> b!3759754 m!4253521))

(declare-fun m!4253523 () Bool)

(assert (=> b!3759756 m!4253523))

(assert (=> b!3758758 d!1098282))

(declare-fun b!3759770 () Bool)

(declare-fun b_free!100581 () Bool)

(declare-fun b_next!101285 () Bool)

(assert (=> b!3759770 (= b_free!100581 (not b_next!101285))))

(declare-fun tp!1148549 () Bool)

(declare-fun b_and!279191 () Bool)

(assert (=> b!3759770 (= tp!1148549 b_and!279191)))

(declare-fun b_free!100583 () Bool)

(declare-fun b_next!101287 () Bool)

(assert (=> b!3759770 (= b_free!100583 (not b_next!101287))))

(declare-fun t!303728 () Bool)

(declare-fun tb!215149 () Bool)

(assert (=> (and b!3759770 (= (toChars!8343 (transformation!6132 (rule!8896 (h!45477 (innerList!12325 (xs!15467 (c!650721 v!6366))))))) (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856))))) t!303728) tb!215149))

(declare-fun result!262702 () Bool)

(assert (= result!262702 result!262658))

(assert (=> d!1097782 t!303728))

(declare-fun t!303730 () Bool)

(declare-fun tb!215151 () Bool)

(assert (=> (and b!3759770 (= (toChars!8343 (transformation!6132 (rule!8896 (h!45477 (innerList!12325 (xs!15467 (c!650721 v!6366))))))) (toChars!8343 (transformation!6132 (rule!8896 (h!45477 (dropList!1269 v!6366 from!856)))))) t!303730) tb!215151))

(declare-fun result!262704 () Bool)

(assert (= result!262704 result!262684))

(assert (=> d!1097962 t!303730))

(declare-fun t!303732 () Bool)

(declare-fun tb!215153 () Bool)

(assert (=> (and b!3759770 (= (toChars!8343 (transformation!6132 (rule!8896 (h!45477 (innerList!12325 (xs!15467 (c!650721 v!6366))))))) (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 (+ 1 from!856)))))) t!303732) tb!215153))

(declare-fun result!262706 () Bool)

(assert (= result!262706 result!262682))

(assert (=> d!1097924 t!303732))

(declare-fun tb!215155 () Bool)

(declare-fun t!303734 () Bool)

(assert (=> (and b!3759770 (= (toChars!8343 (transformation!6132 (rule!8896 (h!45477 (innerList!12325 (xs!15467 (c!650721 v!6366))))))) (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144)))) t!303734) tb!215155))

(declare-fun result!262708 () Bool)

(assert (= result!262708 result!262672))

(assert (=> b!3758718 t!303734))

(assert (=> d!1097836 t!303734))

(declare-fun b_and!279193 () Bool)

(declare-fun tp!1148545 () Bool)

(assert (=> b!3759770 (= tp!1148545 (and (=> t!303732 result!262706) (=> t!303734 result!262708) (=> t!303730 result!262704) (=> t!303728 result!262702) b_and!279193))))

(declare-fun tp!1148548 () Bool)

(declare-fun b!3759767 () Bool)

(declare-fun e!2325057 () Bool)

(declare-fun e!2325054 () Bool)

(assert (=> b!3759767 (= e!2325054 (and (inv!53700 (h!45477 (innerList!12325 (xs!15467 (c!650721 v!6366))))) e!2325057 tp!1148548))))

(declare-fun e!2325056 () Bool)

(assert (=> b!3759770 (= e!2325056 (and tp!1148549 tp!1148545))))

(assert (=> b!3758760 (= tp!1148470 e!2325054)))

(declare-fun tp!1148546 () Bool)

(declare-fun b!3759769 () Bool)

(declare-fun e!2325058 () Bool)

(assert (=> b!3759769 (= e!2325058 (and tp!1148546 (inv!53692 (tag!6992 (rule!8896 (h!45477 (innerList!12325 (xs!15467 (c!650721 v!6366))))))) (inv!53703 (transformation!6132 (rule!8896 (h!45477 (innerList!12325 (xs!15467 (c!650721 v!6366))))))) e!2325056))))

(declare-fun tp!1148547 () Bool)

(declare-fun b!3759768 () Bool)

(assert (=> b!3759768 (= e!2325057 (and (inv!21 (value!195351 (h!45477 (innerList!12325 (xs!15467 (c!650721 v!6366)))))) e!2325058 tp!1148547))))

(assert (= b!3759769 b!3759770))

(assert (= b!3759768 b!3759769))

(assert (= b!3759767 b!3759768))

(assert (= (and b!3758760 ((_ is Cons!40057) (innerList!12325 (xs!15467 (c!650721 v!6366))))) b!3759767))

(declare-fun m!4253525 () Bool)

(assert (=> b!3759767 m!4253525))

(declare-fun m!4253527 () Bool)

(assert (=> b!3759769 m!4253527))

(declare-fun m!4253529 () Bool)

(assert (=> b!3759769 m!4253529))

(declare-fun m!4253531 () Bool)

(assert (=> b!3759768 m!4253531))

(declare-fun b!3759771 () Bool)

(declare-fun e!2325060 () Bool)

(declare-fun tp!1148552 () Bool)

(declare-fun tp!1148551 () Bool)

(assert (=> b!3759771 (= e!2325060 (and (inv!53702 (left!31017 (left!31017 (c!650719 acc!419)))) tp!1148552 (inv!53702 (right!31347 (left!31017 (c!650719 acc!419)))) tp!1148551))))

(declare-fun b!3759773 () Bool)

(declare-fun e!2325061 () Bool)

(declare-fun tp!1148550 () Bool)

(assert (=> b!3759773 (= e!2325061 tp!1148550)))

(declare-fun b!3759772 () Bool)

(assert (=> b!3759772 (= e!2325060 (and (inv!53715 (xs!15466 (left!31017 (c!650719 acc!419)))) e!2325061))))

(assert (=> b!3758742 (= tp!1148458 (and (inv!53702 (left!31017 (c!650719 acc!419))) e!2325060))))

(assert (= (and b!3758742 ((_ is Node!12264) (left!31017 (c!650719 acc!419)))) b!3759771))

(assert (= b!3759772 b!3759773))

(assert (= (and b!3758742 ((_ is Leaf!19022) (left!31017 (c!650719 acc!419)))) b!3759772))

(declare-fun m!4253533 () Bool)

(assert (=> b!3759771 m!4253533))

(declare-fun m!4253535 () Bool)

(assert (=> b!3759771 m!4253535))

(declare-fun m!4253537 () Bool)

(assert (=> b!3759772 m!4253537))

(assert (=> b!3758742 m!4252069))

(declare-fun tp!1148554 () Bool)

(declare-fun tp!1148555 () Bool)

(declare-fun b!3759774 () Bool)

(declare-fun e!2325062 () Bool)

(assert (=> b!3759774 (= e!2325062 (and (inv!53702 (left!31017 (right!31347 (c!650719 acc!419)))) tp!1148555 (inv!53702 (right!31347 (right!31347 (c!650719 acc!419)))) tp!1148554))))

(declare-fun b!3759776 () Bool)

(declare-fun e!2325063 () Bool)

(declare-fun tp!1148553 () Bool)

(assert (=> b!3759776 (= e!2325063 tp!1148553)))

(declare-fun b!3759775 () Bool)

(assert (=> b!3759775 (= e!2325062 (and (inv!53715 (xs!15466 (right!31347 (c!650719 acc!419)))) e!2325063))))

(assert (=> b!3758742 (= tp!1148457 (and (inv!53702 (right!31347 (c!650719 acc!419))) e!2325062))))

(assert (= (and b!3758742 ((_ is Node!12264) (right!31347 (c!650719 acc!419)))) b!3759774))

(assert (= b!3759775 b!3759776))

(assert (= (and b!3758742 ((_ is Leaf!19022) (right!31347 (c!650719 acc!419)))) b!3759775))

(declare-fun m!4253539 () Bool)

(assert (=> b!3759774 m!4253539))

(declare-fun m!4253541 () Bool)

(assert (=> b!3759774 m!4253541))

(declare-fun m!4253543 () Bool)

(assert (=> b!3759775 m!4253543))

(assert (=> b!3758742 m!4252071))

(declare-fun b!3759777 () Bool)

(declare-fun e!2325064 () Bool)

(declare-fun tp!1148556 () Bool)

(assert (=> b!3759777 (= e!2325064 (and tp_is_empty!19073 tp!1148556))))

(assert (=> b!3758749 (= tp!1148461 e!2325064)))

(assert (= (and b!3758749 ((_ is Cons!40055) (t!303686 (originalCharacters!6732 separatorToken!144)))) b!3759777))

(declare-fun b!3759780 () Bool)

(declare-fun e!2325065 () Bool)

(declare-fun tp!1148559 () Bool)

(assert (=> b!3759780 (= e!2325065 tp!1148559)))

(declare-fun b!3759778 () Bool)

(assert (=> b!3759778 (= e!2325065 tp_is_empty!19073)))

(declare-fun b!3759779 () Bool)

(declare-fun tp!1148561 () Bool)

(declare-fun tp!1148558 () Bool)

(assert (=> b!3759779 (= e!2325065 (and tp!1148561 tp!1148558))))

(assert (=> b!3758732 (= tp!1148447 e!2325065)))

(declare-fun b!3759781 () Bool)

(declare-fun tp!1148557 () Bool)

(declare-fun tp!1148560 () Bool)

(assert (=> b!3759781 (= e!2325065 (and tp!1148557 tp!1148560))))

(assert (= (and b!3758732 ((_ is ElementMatch!11037) (reg!11366 (regex!6132 (rule!8896 separatorToken!144))))) b!3759778))

(assert (= (and b!3758732 ((_ is Concat!17400) (reg!11366 (regex!6132 (rule!8896 separatorToken!144))))) b!3759779))

(assert (= (and b!3758732 ((_ is Star!11037) (reg!11366 (regex!6132 (rule!8896 separatorToken!144))))) b!3759780))

(assert (= (and b!3758732 ((_ is Union!11037) (reg!11366 (regex!6132 (rule!8896 separatorToken!144))))) b!3759781))

(declare-fun b!3759782 () Bool)

(declare-fun e!2325066 () Bool)

(declare-fun tp!1148562 () Bool)

(assert (=> b!3759782 (= e!2325066 (and tp_is_empty!19073 tp!1148562))))

(assert (=> b!3758744 (= tp!1148456 e!2325066)))

(assert (= (and b!3758744 ((_ is Cons!40055) (innerList!12324 (xs!15466 (c!650719 acc!419))))) b!3759782))

(declare-fun b!3759785 () Bool)

(declare-fun e!2325067 () Bool)

(declare-fun tp!1148565 () Bool)

(assert (=> b!3759785 (= e!2325067 tp!1148565)))

(declare-fun b!3759783 () Bool)

(assert (=> b!3759783 (= e!2325067 tp_is_empty!19073)))

(declare-fun b!3759784 () Bool)

(declare-fun tp!1148567 () Bool)

(declare-fun tp!1148564 () Bool)

(assert (=> b!3759784 (= e!2325067 (and tp!1148567 tp!1148564))))

(assert (=> b!3758731 (= tp!1148449 e!2325067)))

(declare-fun b!3759786 () Bool)

(declare-fun tp!1148563 () Bool)

(declare-fun tp!1148566 () Bool)

(assert (=> b!3759786 (= e!2325067 (and tp!1148563 tp!1148566))))

(assert (= (and b!3758731 ((_ is ElementMatch!11037) (regOne!22586 (regex!6132 (rule!8896 separatorToken!144))))) b!3759783))

(assert (= (and b!3758731 ((_ is Concat!17400) (regOne!22586 (regex!6132 (rule!8896 separatorToken!144))))) b!3759784))

(assert (= (and b!3758731 ((_ is Star!11037) (regOne!22586 (regex!6132 (rule!8896 separatorToken!144))))) b!3759785))

(assert (= (and b!3758731 ((_ is Union!11037) (regOne!22586 (regex!6132 (rule!8896 separatorToken!144))))) b!3759786))

(declare-fun b!3759789 () Bool)

(declare-fun e!2325068 () Bool)

(declare-fun tp!1148570 () Bool)

(assert (=> b!3759789 (= e!2325068 tp!1148570)))

(declare-fun b!3759787 () Bool)

(assert (=> b!3759787 (= e!2325068 tp_is_empty!19073)))

(declare-fun b!3759788 () Bool)

(declare-fun tp!1148572 () Bool)

(declare-fun tp!1148569 () Bool)

(assert (=> b!3759788 (= e!2325068 (and tp!1148572 tp!1148569))))

(assert (=> b!3758731 (= tp!1148446 e!2325068)))

(declare-fun b!3759790 () Bool)

(declare-fun tp!1148568 () Bool)

(declare-fun tp!1148571 () Bool)

(assert (=> b!3759790 (= e!2325068 (and tp!1148568 tp!1148571))))

(assert (= (and b!3758731 ((_ is ElementMatch!11037) (regTwo!22586 (regex!6132 (rule!8896 separatorToken!144))))) b!3759787))

(assert (= (and b!3758731 ((_ is Concat!17400) (regTwo!22586 (regex!6132 (rule!8896 separatorToken!144))))) b!3759788))

(assert (= (and b!3758731 ((_ is Star!11037) (regTwo!22586 (regex!6132 (rule!8896 separatorToken!144))))) b!3759789))

(assert (= (and b!3758731 ((_ is Union!11037) (regTwo!22586 (regex!6132 (rule!8896 separatorToken!144))))) b!3759790))

(declare-fun b!3759793 () Bool)

(declare-fun e!2325069 () Bool)

(declare-fun tp!1148575 () Bool)

(assert (=> b!3759793 (= e!2325069 tp!1148575)))

(declare-fun b!3759791 () Bool)

(assert (=> b!3759791 (= e!2325069 tp_is_empty!19073)))

(declare-fun b!3759792 () Bool)

(declare-fun tp!1148577 () Bool)

(declare-fun tp!1148574 () Bool)

(assert (=> b!3759792 (= e!2325069 (and tp!1148577 tp!1148574))))

(assert (=> b!3758733 (= tp!1148445 e!2325069)))

(declare-fun b!3759794 () Bool)

(declare-fun tp!1148573 () Bool)

(declare-fun tp!1148576 () Bool)

(assert (=> b!3759794 (= e!2325069 (and tp!1148573 tp!1148576))))

(assert (= (and b!3758733 ((_ is ElementMatch!11037) (regOne!22587 (regex!6132 (rule!8896 separatorToken!144))))) b!3759791))

(assert (= (and b!3758733 ((_ is Concat!17400) (regOne!22587 (regex!6132 (rule!8896 separatorToken!144))))) b!3759792))

(assert (= (and b!3758733 ((_ is Star!11037) (regOne!22587 (regex!6132 (rule!8896 separatorToken!144))))) b!3759793))

(assert (= (and b!3758733 ((_ is Union!11037) (regOne!22587 (regex!6132 (rule!8896 separatorToken!144))))) b!3759794))

(declare-fun b!3759797 () Bool)

(declare-fun e!2325070 () Bool)

(declare-fun tp!1148580 () Bool)

(assert (=> b!3759797 (= e!2325070 tp!1148580)))

(declare-fun b!3759795 () Bool)

(assert (=> b!3759795 (= e!2325070 tp_is_empty!19073)))

(declare-fun b!3759796 () Bool)

(declare-fun tp!1148582 () Bool)

(declare-fun tp!1148579 () Bool)

(assert (=> b!3759796 (= e!2325070 (and tp!1148582 tp!1148579))))

(assert (=> b!3758733 (= tp!1148448 e!2325070)))

(declare-fun b!3759798 () Bool)

(declare-fun tp!1148578 () Bool)

(declare-fun tp!1148581 () Bool)

(assert (=> b!3759798 (= e!2325070 (and tp!1148578 tp!1148581))))

(assert (= (and b!3758733 ((_ is ElementMatch!11037) (regTwo!22587 (regex!6132 (rule!8896 separatorToken!144))))) b!3759795))

(assert (= (and b!3758733 ((_ is Concat!17400) (regTwo!22587 (regex!6132 (rule!8896 separatorToken!144))))) b!3759796))

(assert (= (and b!3758733 ((_ is Star!11037) (regTwo!22587 (regex!6132 (rule!8896 separatorToken!144))))) b!3759797))

(assert (= (and b!3758733 ((_ is Union!11037) (regTwo!22587 (regex!6132 (rule!8896 separatorToken!144))))) b!3759798))

(declare-fun e!2325071 () Bool)

(declare-fun b!3759799 () Bool)

(declare-fun tp!1148585 () Bool)

(declare-fun tp!1148584 () Bool)

(assert (=> b!3759799 (= e!2325071 (and (inv!53702 (left!31017 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144))))) tp!1148585 (inv!53702 (right!31347 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144))))) tp!1148584))))

(declare-fun b!3759801 () Bool)

(declare-fun e!2325072 () Bool)

(declare-fun tp!1148583 () Bool)

(assert (=> b!3759801 (= e!2325072 tp!1148583)))

(declare-fun b!3759800 () Bool)

(assert (=> b!3759800 (= e!2325071 (and (inv!53715 (xs!15466 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144))))) e!2325072))))

(assert (=> b!3758680 (= tp!1148434 (and (inv!53702 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144)))) e!2325071))))

(assert (= (and b!3758680 ((_ is Node!12264) (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144))))) b!3759799))

(assert (= b!3759800 b!3759801))

(assert (= (and b!3758680 ((_ is Leaf!19022) (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (value!195351 separatorToken!144))))) b!3759800))

(declare-fun m!4253545 () Bool)

(assert (=> b!3759799 m!4253545))

(declare-fun m!4253547 () Bool)

(assert (=> b!3759799 m!4253547))

(declare-fun m!4253549 () Bool)

(assert (=> b!3759800 m!4253549))

(assert (=> b!3758680 m!4252033))

(declare-fun e!2325073 () Bool)

(declare-fun tp!1148587 () Bool)

(declare-fun b!3759802 () Bool)

(declare-fun tp!1148588 () Bool)

(assert (=> b!3759802 (= e!2325073 (and (inv!53702 (left!31017 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))) (value!195351 (apply!9432 v!6366 from!856)))))) tp!1148588 (inv!53702 (right!31347 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))) (value!195351 (apply!9432 v!6366 from!856)))))) tp!1148587))))

(declare-fun b!3759804 () Bool)

(declare-fun e!2325074 () Bool)

(declare-fun tp!1148586 () Bool)

(assert (=> b!3759804 (= e!2325074 tp!1148586)))

(declare-fun b!3759803 () Bool)

(assert (=> b!3759803 (= e!2325073 (and (inv!53715 (xs!15466 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))) (value!195351 (apply!9432 v!6366 from!856)))))) e!2325074))))

(assert (=> b!3758518 (= tp!1148396 (and (inv!53702 (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))) (value!195351 (apply!9432 v!6366 from!856))))) e!2325073))))

(assert (= (and b!3758518 ((_ is Node!12264) (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))) (value!195351 (apply!9432 v!6366 from!856)))))) b!3759802))

(assert (= b!3759803 b!3759804))

(assert (= (and b!3758518 ((_ is Leaf!19022) (c!650719 (dynLambda!17320 (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))) (value!195351 (apply!9432 v!6366 from!856)))))) b!3759803))

(declare-fun m!4253551 () Bool)

(assert (=> b!3759802 m!4253551))

(declare-fun m!4253553 () Bool)

(assert (=> b!3759802 m!4253553))

(declare-fun m!4253555 () Bool)

(assert (=> b!3759803 m!4253555))

(assert (=> b!3758518 m!4251741))

(declare-fun e!2325075 () Bool)

(declare-fun b!3759805 () Bool)

(declare-fun tp!1148590 () Bool)

(declare-fun tp!1148589 () Bool)

(assert (=> b!3759805 (= e!2325075 (and (inv!53704 (left!31018 (left!31018 (c!650721 v!6366)))) tp!1148589 (inv!53704 (right!31348 (left!31018 (c!650721 v!6366)))) tp!1148590))))

(declare-fun b!3759807 () Bool)

(declare-fun e!2325076 () Bool)

(declare-fun tp!1148591 () Bool)

(assert (=> b!3759807 (= e!2325076 tp!1148591)))

(declare-fun b!3759806 () Bool)

(assert (=> b!3759806 (= e!2325075 (and (inv!53716 (xs!15467 (left!31018 (c!650721 v!6366)))) e!2325076))))

(assert (=> b!3758758 (= tp!1148468 (and (inv!53704 (left!31018 (c!650721 v!6366))) e!2325075))))

(assert (= (and b!3758758 ((_ is Node!12265) (left!31018 (c!650721 v!6366)))) b!3759805))

(assert (= b!3759806 b!3759807))

(assert (= (and b!3758758 ((_ is Leaf!19023) (left!31018 (c!650721 v!6366)))) b!3759806))

(declare-fun m!4253557 () Bool)

(assert (=> b!3759805 m!4253557))

(declare-fun m!4253559 () Bool)

(assert (=> b!3759805 m!4253559))

(declare-fun m!4253561 () Bool)

(assert (=> b!3759806 m!4253561))

(assert (=> b!3758758 m!4252075))

(declare-fun b!3759808 () Bool)

(declare-fun tp!1148592 () Bool)

(declare-fun tp!1148593 () Bool)

(declare-fun e!2325077 () Bool)

(assert (=> b!3759808 (= e!2325077 (and (inv!53704 (left!31018 (right!31348 (c!650721 v!6366)))) tp!1148592 (inv!53704 (right!31348 (right!31348 (c!650721 v!6366)))) tp!1148593))))

(declare-fun b!3759810 () Bool)

(declare-fun e!2325078 () Bool)

(declare-fun tp!1148594 () Bool)

(assert (=> b!3759810 (= e!2325078 tp!1148594)))

(declare-fun b!3759809 () Bool)

(assert (=> b!3759809 (= e!2325077 (and (inv!53716 (xs!15467 (right!31348 (c!650721 v!6366)))) e!2325078))))

(assert (=> b!3758758 (= tp!1148469 (and (inv!53704 (right!31348 (c!650721 v!6366))) e!2325077))))

(assert (= (and b!3758758 ((_ is Node!12265) (right!31348 (c!650721 v!6366)))) b!3759808))

(assert (= b!3759809 b!3759810))

(assert (= (and b!3758758 ((_ is Leaf!19023) (right!31348 (c!650721 v!6366)))) b!3759809))

(declare-fun m!4253563 () Bool)

(assert (=> b!3759808 m!4253563))

(declare-fun m!4253565 () Bool)

(assert (=> b!3759808 m!4253565))

(declare-fun m!4253567 () Bool)

(assert (=> b!3759809 m!4253567))

(assert (=> b!3758758 m!4252077))

(declare-fun b_lambda!110281 () Bool)

(assert (= b_lambda!110253 (or (and b!3758406 b_free!100575 (= (toChars!8343 (transformation!6132 (rule!8896 separatorToken!144))) (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))))) (and b!3759770 b_free!100583 (= (toChars!8343 (transformation!6132 (rule!8896 (h!45477 (innerList!12325 (xs!15467 (c!650721 v!6366))))))) (toChars!8343 (transformation!6132 (rule!8896 (apply!9432 v!6366 from!856)))))) b_lambda!110281)))

(check-sat (not b!3759052) (not d!1097914) (not b!3759145) b_and!279163 (not d!1098222) (not b!3759806) (not b!3759694) (not b!3759186) (not b!3758901) (not bm!275366) (not b_lambda!110271) (not b!3759804) (not d!1098254) (not b!3759665) (not bm!275376) (not b!3758982) (not b!3759781) (not b!3759031) (not b!3759703) (not b!3759264) (not b!3759094) (not b!3759053) (not b!3759661) (not b!3759229) (not bm!275393) (not d!1098212) (not b!3759780) (not b!3759209) (not b!3759120) (not b!3759751) (not b!3759800) (not b!3759649) (not b!3759269) (not b!3759651) (not b_next!101285) (not b!3759263) (not b!3759789) (not d!1097928) (not b!3759799) (not d!1098276) (not b!3759695) (not bm!275399) (not b!3759155) (not d!1097918) (not b!3759227) (not b!3759767) (not b!3759112) (not d!1098260) (not b!3759271) (not b!3759058) (not b!3759807) (not b_lambda!110281) (not b!3759723) (not d!1097952) tp_is_empty!19073 (not b!3759201) (not b!3759700) (not tb!215133) (not d!1098246) (not b!3759259) (not b!3759238) (not b!3759775) (not b!3759142) (not b!3759786) (not b!3759091) (not b!3759266) (not bm!275374) (not b!3759809) (not d!1097976) b_and!279193 (not b!3759793) (not b!3759042) (not b!3759690) (not b!3759090) (not b!3759054) (not b!3758992) (not b!3759262) (not b!3759070) (not b!3759803) (not d!1098194) (not b!3759056) (not b!3759089) (not b!3759179) (not b!3759172) (not bm!275372) (not d!1097930) (not b!3759059) (not b!3759191) (not d!1097916) (not b!3759768) (not bm!275389) (not b!3759204) (not d!1097982) (not d!1097944) (not b!3759771) (not b!3759050) (not b!3759173) (not b!3758989) (not d!1098274) (not d!1098230) (not b!3759792) (not b!3759168) (not bm!275381) (not b!3759115) (not b!3759143) (not b!3759105) (not b!3759265) (not b!3758742) (not b!3759769) (not b!3759205) (not b!3759666) (not b!3759675) (not b!3758999) (not b!3759756) (not b!3759798) (not bm!275380) (not b!3759270) (not b!3759051) (not d!1098268) (not bm!275404) (not b!3759258) (not b!3759776) (not b!3758911) (not b!3759118) b_and!279181 (not b!3759716) (not d!1098216) (not b!3759725) (not b!3759720) (not b_next!101279) (not b!3759226) (not d!1097992) (not b!3759049) (not b!3759198) (not b!3759027) (not b!3759713) (not d!1097924) (not bm!275383) (not b!3759724) (not b!3759057) (not b!3759122) (not d!1097978) (not b!3759024) (not d!1098210) (not d!1097994) (not bm!275398) (not d!1098258) (not b!3759240) (not b!3759737) (not d!1098270) (not b!3759721) (not d!1097966) (not bm!275414) (not d!1097972) (not b!3759110) (not d!1097934) (not d!1097932) (not b!3759060) (not b!3759734) (not b!3759785) (not b!3759140) (not d!1097958) (not b!3759715) (not d!1097986) (not b!3759802) (not d!1097950) (not d!1098184) (not d!1098218) (not b!3759774) (not d!1098208) (not d!1097946) (not d!1097922) (not d!1097884) (not d!1098214) (not b!3759141) (not b!3758996) (not b!3759696) (not d!1098266) (not b!3759033) (not b!3759208) (not b!3759679) (not b_lambda!110269) (not b!3758518) (not b!3759698) b_and!279191 (not d!1097970) (not d!1097936) (not b!3759718) (not b!3759749) (not b!3759722) (not b!3759199) (not d!1097980) (not b!3759164) (not b!3759025) (not b!3759235) (not b!3759190) (not d!1097960) (not d!1097942) (not d!1098192) (not b_lambda!110273) (not d!1098002) (not b!3759701) (not b!3759095) (not b!3759788) (not b!3759691) (not bm!275382) (not d!1097988) (not b!3759028) (not b!3759678) (not d!1097902) (not b!3759163) (not b!3759714) (not b!3759692) (not d!1098206) (not b!3759187) (not d!1098236) (not b!3759064) (not b!3759195) (not b!3759773) (not b!3759663) (not b!3759026) (not b!3759207) (not b!3759062) (not bm!275370) (not bm!275415) (not b!3759144) (not b!3759753) (not b!3759159) (not b!3759096) (not b!3758998) (not b!3759156) (not b_next!101277) (not d!1097954) (not bm!275391) (not b!3759182) (not b!3759655) (not d!1098278) (not d!1097990) (not d!1098224) (not b!3759001) (not tb!215135) (not d!1098250) (not b!3759777) (not b!3759100) (not d!1098256) (not b!3759170) (not b!3759726) (not b!3759167) (not d!1097974) (not bm!275400) (not b!3759686) (not b!3759688) (not b!3758758) (not b!3759693) (not d!1097956) (not b_lambda!110267) (not b!3759754) (not b!3759228) (not b!3759810) (not b_next!101287) (not b!3759739) (not b!3759796) (not bm!275385) (not b!3759784) (not b!3759790) (not bm!275379) (not d!1098220) (not bm!275403) (not b!3759782) (not b!3759012) (not b!3759779) (not b!3759260) (not b!3759194) (not b!3759801) (not bm!275395) (not b!3759160) (not b!3759797) (not d!1097920) (not b!3758680) (not b!3758987) (not b!3758995) (not b!3759029) (not d!1097984) (not b!3759183) (not b!3759794) (not b!3759805) (not b!3759261) (not b!3759808) (not b!3759013) (not b!3758977) (not b!3759048) (not d!1097964) (not b!3759653) (not b!3759712) (not b!3759772) (not b!3759647) (not d!1097962) (not d!1098242) (not b!3759711) (not b!3759040) (not d!1098228))
(check-sat b_and!279163 (not b_next!101285) b_and!279193 b_and!279191 (not b_next!101277) (not b_next!101287) b_and!279181 (not b_next!101279))
