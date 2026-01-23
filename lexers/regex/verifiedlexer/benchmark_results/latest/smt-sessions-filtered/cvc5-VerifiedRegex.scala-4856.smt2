; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!249108 () Bool)

(assert start!249108)

(assert (=> start!249108 true))

(declare-fun b!2577282 () Bool)

(assert (=> b!2577282 true))

(assert (=> b!2577282 true))

(declare-fun b!2577283 () Bool)

(assert (=> b!2577283 true))

(declare-fun b!2577292 () Bool)

(declare-fun e!1626284 () Bool)

(declare-datatypes ((List!29751 0))(
  ( (Nil!29651) (Cons!29651 (h!35071 (_ BitVec 16)) (t!211568 List!29751)) )
))
(declare-datatypes ((IArray!18505 0))(
  ( (IArray!18506 (innerList!9310 List!29751)) )
))
(declare-datatypes ((Conc!9250 0))(
  ( (Node!9250 (left!22568 Conc!9250) (right!22898 Conc!9250) (csize!18730 Int) (cheight!9461 Int)) (Leaf!14107 (xs!12234 IArray!18505) (csize!18731 Int)) (Empty!9250) )
))
(declare-datatypes ((BalanceConc!18114 0))(
  ( (BalanceConc!18115 (c!415158 Conc!9250)) )
))
(declare-fun x!463422 () BalanceConc!18114)

(declare-fun tp!819085 () Bool)

(declare-fun inv!39962 (Conc!9250) Bool)

(assert (=> b!2577292 (= e!1626284 (and (inv!39962 (c!415158 x!463422)) tp!819085))))

(declare-fun inst!1462 () Bool)

(declare-datatypes ((IndentationValueInjection!12 0))(
  ( (IndentationValueInjection!13) )
))
(declare-fun thiss!5269 () IndentationValueInjection!12)

(declare-fun inv!39963 (BalanceConc!18114) Bool)

(declare-fun list!11195 (BalanceConc!18114) List!29751)

(declare-datatypes ((TokenValue!4714 0))(
  ( (FloatLiteralValue!9428 (text!33443 List!29751)) (TokenValueExt!4713 (__x!19233 Int)) (Broken!23570 (value!145248 List!29751)) (Object!4813) (End!4714) (Def!4714) (Underscore!4714) (Match!4714) (Else!4714) (Error!4714) (Case!4714) (If!4714) (Extends!4714) (Abstract!4714) (Class!4714) (Val!4714) (DelimiterValue!9428 (del!4774 List!29751)) (KeywordValue!4720 (value!145249 List!29751)) (CommentValue!9428 (value!145250 List!29751)) (WhitespaceValue!9428 (value!145251 List!29751)) (IndentationValue!4714 (value!145252 List!29751)) (String!32971) (Int32!4714) (Broken!23571 (value!145253 List!29751)) (Boolean!4715) (Unit!43503) (OperatorValue!4717 (op!4774 List!29751)) (IdentifierValue!9428 (value!145254 List!29751)) (IdentifierValue!9429 (value!145255 List!29751)) (WhitespaceValue!9429 (value!145256 List!29751)) (True!9428) (False!9428) (Broken!23572 (value!145257 List!29751)) (Broken!23573 (value!145258 List!29751)) (True!9429) (RightBrace!4714) (RightBracket!4714) (Colon!4714) (Null!4714) (Comma!4714) (LeftBracket!4714) (False!9429) (LeftBrace!4714) (ImaginaryLiteralValue!4714 (text!33444 List!29751)) (StringLiteralValue!14142 (value!145259 List!29751)) (EOFValue!4714 (value!145260 List!29751)) (IdentValue!4714 (value!145261 List!29751)) (DelimiterValue!9429 (value!145262 List!29751)) (DedentValue!4714 (value!145263 List!29751)) (NewLineValue!4714 (value!145264 List!29751)) (IntegerValue!14142 (value!145265 (_ BitVec 32)) (text!33445 List!29751)) (IntegerValue!14143 (value!145266 Int) (text!33446 List!29751)) (Times!4714) (Or!4714) (Equal!4714) (Minus!4714) (Broken!23574 (value!145267 List!29751)) (And!4714) (Div!4714) (LessEqual!4714) (Mod!4714) (Concat!12358) (Not!4714) (Plus!4714) (SpaceValue!4714 (value!145268 List!29751)) (IntegerValue!14144 (value!145269 Int) (text!33447 List!29751)) (StringLiteralValue!14143 (text!33448 List!29751)) (FloatLiteralValue!9429 (text!33449 List!29751)) (BytesLiteralValue!4714 (value!145270 List!29751)) (CommentValue!9429 (value!145271 List!29751)) (StringLiteralValue!14144 (value!145272 List!29751)) (ErrorTokenValue!4714 (msg!4775 List!29751)) )
))
(declare-fun toCharacters!29 (IndentationValueInjection!12 TokenValue!4714) BalanceConc!18114)

(declare-fun toValue!36 (IndentationValueInjection!12 BalanceConc!18114) TokenValue!4714)

(assert (=> start!249108 (= inst!1462 (=> (and (inv!39963 x!463422) e!1626284) (= (list!11195 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))) (list!11195 x!463422))))))

(assert (= start!249108 b!2577292))

(declare-fun m!2911927 () Bool)

(assert (=> b!2577292 m!2911927))

(declare-fun m!2911929 () Bool)

(assert (=> start!249108 m!2911929))

(assert (=> start!249108 m!2911929))

(declare-fun m!2911931 () Bool)

(assert (=> start!249108 m!2911931))

(declare-fun m!2911933 () Bool)

(assert (=> start!249108 m!2911933))

(declare-fun m!2911935 () Bool)

(assert (=> start!249108 m!2911935))

(assert (=> start!249108 m!2911931))

(declare-fun m!2911937 () Bool)

(assert (=> start!249108 m!2911937))

(declare-fun res!1084012 () Bool)

(declare-fun e!1626287 () Bool)

(assert (=> b!2577283 (=> res!1084012 e!1626287)))

(declare-fun x!463423 () BalanceConc!18114)

(declare-fun x!463424 () BalanceConc!18114)

(assert (=> b!2577283 (= res!1084012 (not (= (list!11195 x!463423) (list!11195 x!463424))))))

(declare-fun e!1626285 () Bool)

(declare-fun e!1626286 () Bool)

(declare-fun inst!1463 () Bool)

(assert (=> b!2577283 (= inst!1463 (=> (and (inv!39963 x!463423) e!1626285 (inv!39963 x!463424) e!1626286) e!1626287))))

(declare-fun b!2577293 () Bool)

(assert (=> b!2577293 (= e!1626287 (= (toValue!36 thiss!5269 x!463423) (toValue!36 thiss!5269 x!463424)))))

(declare-fun b!2577294 () Bool)

(declare-fun tp!819086 () Bool)

(assert (=> b!2577294 (= e!1626285 (and (inv!39962 (c!415158 x!463423)) tp!819086))))

(declare-fun b!2577295 () Bool)

(declare-fun tp!819087 () Bool)

(assert (=> b!2577295 (= e!1626286 (and (inv!39962 (c!415158 x!463424)) tp!819087))))

(assert (= (and b!2577283 (not res!1084012)) b!2577293))

(assert (= b!2577283 b!2577294))

(assert (= b!2577283 b!2577295))

(declare-fun m!2911939 () Bool)

(assert (=> b!2577283 m!2911939))

(declare-fun m!2911941 () Bool)

(assert (=> b!2577283 m!2911941))

(declare-fun m!2911943 () Bool)

(assert (=> b!2577283 m!2911943))

(declare-fun m!2911945 () Bool)

(assert (=> b!2577283 m!2911945))

(declare-fun m!2911947 () Bool)

(assert (=> b!2577293 m!2911947))

(declare-fun m!2911949 () Bool)

(assert (=> b!2577293 m!2911949))

(declare-fun m!2911951 () Bool)

(assert (=> b!2577294 m!2911951))

(declare-fun m!2911953 () Bool)

(assert (=> b!2577295 m!2911953))

(declare-fun bs!470561 () Bool)

(declare-fun neg-inst!1462 () Bool)

(declare-fun s!228344 () Bool)

(assert (= bs!470561 (and neg-inst!1462 s!228344)))

(assert (=> bs!470561 (=> true (= (list!11195 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))) (list!11195 x!463422)))))

(assert (=> m!2911933 m!2911929))

(assert (=> m!2911933 m!2911931))

(assert (=> m!2911933 m!2911937))

(assert (=> m!2911933 s!228344))

(assert (=> m!2911929 s!228344))

(declare-fun bs!470562 () Bool)

(assert (= bs!470562 (and neg-inst!1462 start!249108)))

(assert (=> bs!470562 (= true inst!1462)))

(declare-fun bs!470563 () Bool)

(declare-fun neg-inst!1463 () Bool)

(declare-fun s!228346 () Bool)

(assert (= bs!470563 (and neg-inst!1463 s!228346)))

(declare-fun res!1084013 () Bool)

(declare-fun e!1626288 () Bool)

(assert (=> bs!470563 (=> res!1084013 e!1626288)))

(assert (=> bs!470563 (= res!1084013 (not (= (list!11195 x!463422) (list!11195 x!463422))))))

(assert (=> bs!470563 (=> true e!1626288)))

(declare-fun b!2577296 () Bool)

(assert (=> b!2577296 (= e!1626288 (= (toValue!36 thiss!5269 x!463422) (toValue!36 thiss!5269 x!463422)))))

(assert (= (and bs!470563 (not res!1084013)) b!2577296))

(assert (=> m!2911933 s!228346))

(assert (=> m!2911933 s!228346))

(declare-fun bs!470564 () Bool)

(declare-fun s!228348 () Bool)

(assert (= bs!470564 (and neg-inst!1463 s!228348)))

(declare-fun res!1084014 () Bool)

(declare-fun e!1626289 () Bool)

(assert (=> bs!470564 (=> res!1084014 e!1626289)))

(assert (=> bs!470564 (= res!1084014 (not (= (list!11195 x!463422) (list!11195 x!463423))))))

(assert (=> bs!470564 (=> true e!1626289)))

(declare-fun b!2577297 () Bool)

(assert (=> b!2577297 (= e!1626289 (= (toValue!36 thiss!5269 x!463422) (toValue!36 thiss!5269 x!463423)))))

(assert (= (and bs!470564 (not res!1084014)) b!2577297))

(declare-fun bs!470565 () Bool)

(assert (= bs!470565 (and m!2911939 m!2911933)))

(assert (=> bs!470565 m!2911933))

(assert (=> bs!470565 m!2911939))

(assert (=> bs!470565 s!228348))

(declare-fun bs!470566 () Bool)

(declare-fun s!228350 () Bool)

(assert (= bs!470566 (and neg-inst!1463 s!228350)))

(declare-fun res!1084015 () Bool)

(declare-fun e!1626290 () Bool)

(assert (=> bs!470566 (=> res!1084015 e!1626290)))

(assert (=> bs!470566 (= res!1084015 (not (= (list!11195 x!463423) (list!11195 x!463423))))))

(assert (=> bs!470566 (=> true e!1626290)))

(declare-fun b!2577298 () Bool)

(assert (=> b!2577298 (= e!1626290 (= (toValue!36 thiss!5269 x!463423) (toValue!36 thiss!5269 x!463423)))))

(assert (= (and bs!470566 (not res!1084015)) b!2577298))

(assert (=> m!2911939 s!228350))

(declare-fun bs!470567 () Bool)

(declare-fun s!228352 () Bool)

(assert (= bs!470567 (and neg-inst!1463 s!228352)))

(declare-fun res!1084016 () Bool)

(declare-fun e!1626291 () Bool)

(assert (=> bs!470567 (=> res!1084016 e!1626291)))

(assert (=> bs!470567 (= res!1084016 (not (= (list!11195 x!463423) (list!11195 x!463422))))))

(assert (=> bs!470567 (=> true e!1626291)))

(declare-fun b!2577299 () Bool)

(assert (=> b!2577299 (= e!1626291 (= (toValue!36 thiss!5269 x!463423) (toValue!36 thiss!5269 x!463422)))))

(assert (= (and bs!470567 (not res!1084016)) b!2577299))

(assert (=> bs!470565 m!2911939))

(assert (=> bs!470565 m!2911933))

(assert (=> bs!470565 s!228352))

(assert (=> m!2911939 s!228350))

(declare-fun bs!470568 () Bool)

(declare-fun s!228354 () Bool)

(assert (= bs!470568 (and neg-inst!1463 s!228354)))

(declare-fun res!1084017 () Bool)

(declare-fun e!1626292 () Bool)

(assert (=> bs!470568 (=> res!1084017 e!1626292)))

(assert (=> bs!470568 (= res!1084017 (not (= (list!11195 x!463423) (list!11195 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))))))))

(assert (=> bs!470568 (=> true e!1626292)))

(declare-fun b!2577300 () Bool)

(assert (=> b!2577300 (= e!1626292 (= (toValue!36 thiss!5269 x!463423) (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))))))

(assert (= (and bs!470568 (not res!1084017)) b!2577300))

(declare-fun bs!470569 () Bool)

(assert (= bs!470569 (and m!2911937 m!2911939)))

(assert (=> bs!470569 m!2911939))

(assert (=> bs!470569 m!2911937))

(assert (=> bs!470569 s!228354))

(declare-fun bs!470570 () Bool)

(declare-fun s!228356 () Bool)

(assert (= bs!470570 (and neg-inst!1463 s!228356)))

(declare-fun res!1084018 () Bool)

(declare-fun e!1626293 () Bool)

(assert (=> bs!470570 (=> res!1084018 e!1626293)))

(assert (=> bs!470570 (= res!1084018 (not (= (list!11195 x!463422) (list!11195 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))))))))

(assert (=> bs!470570 (=> true e!1626293)))

(declare-fun b!2577301 () Bool)

(assert (=> b!2577301 (= e!1626293 (= (toValue!36 thiss!5269 x!463422) (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))))))

(assert (= (and bs!470570 (not res!1084018)) b!2577301))

(declare-fun bs!470571 () Bool)

(assert (= bs!470571 (and m!2911937 m!2911933)))

(assert (=> bs!470571 m!2911933))

(assert (=> bs!470571 m!2911937))

(assert (=> bs!470571 s!228356))

(declare-fun bs!470572 () Bool)

(declare-fun s!228358 () Bool)

(assert (= bs!470572 (and neg-inst!1463 s!228358)))

(declare-fun res!1084019 () Bool)

(declare-fun e!1626294 () Bool)

(assert (=> bs!470572 (=> res!1084019 e!1626294)))

(assert (=> bs!470572 (= res!1084019 (not (= (list!11195 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))) (list!11195 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))))))))

(assert (=> bs!470572 (=> true e!1626294)))

(declare-fun b!2577302 () Bool)

(assert (=> b!2577302 (= e!1626294 (= (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))) (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))))))

(assert (= (and bs!470572 (not res!1084019)) b!2577302))

(assert (=> m!2911937 s!228358))

(declare-fun bs!470573 () Bool)

(declare-fun s!228360 () Bool)

(assert (= bs!470573 (and neg-inst!1463 s!228360)))

(declare-fun res!1084020 () Bool)

(declare-fun e!1626295 () Bool)

(assert (=> bs!470573 (=> res!1084020 e!1626295)))

(assert (=> bs!470573 (= res!1084020 (not (= (list!11195 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))) (list!11195 x!463423))))))

(assert (=> bs!470573 (=> true e!1626295)))

(declare-fun b!2577303 () Bool)

(assert (=> b!2577303 (= e!1626295 (= (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))) (toValue!36 thiss!5269 x!463423)))))

(assert (= (and bs!470573 (not res!1084020)) b!2577303))

(assert (=> bs!470569 m!2911937))

(assert (=> bs!470569 m!2911939))

(assert (=> bs!470569 s!228360))

(declare-fun bs!470574 () Bool)

(declare-fun s!228362 () Bool)

(assert (= bs!470574 (and neg-inst!1463 s!228362)))

(declare-fun res!1084021 () Bool)

(declare-fun e!1626296 () Bool)

(assert (=> bs!470574 (=> res!1084021 e!1626296)))

(assert (=> bs!470574 (= res!1084021 (not (= (list!11195 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))) (list!11195 x!463422))))))

(assert (=> bs!470574 (=> true e!1626296)))

(declare-fun b!2577304 () Bool)

(assert (=> b!2577304 (= e!1626296 (= (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))) (toValue!36 thiss!5269 x!463422)))))

(assert (= (and bs!470574 (not res!1084021)) b!2577304))

(assert (=> bs!470571 m!2911937))

(assert (=> bs!470571 m!2911933))

(assert (=> bs!470571 s!228362))

(assert (=> m!2911937 s!228358))

(declare-fun bs!470575 () Bool)

(declare-fun s!228364 () Bool)

(assert (= bs!470575 (and neg-inst!1463 s!228364)))

(declare-fun res!1084022 () Bool)

(declare-fun e!1626297 () Bool)

(assert (=> bs!470575 (=> res!1084022 e!1626297)))

(assert (=> bs!470575 (= res!1084022 (not (= (list!11195 x!463423) (list!11195 x!463424))))))

(assert (=> bs!470575 (=> true e!1626297)))

(declare-fun b!2577305 () Bool)

(assert (=> b!2577305 (= e!1626297 (= (toValue!36 thiss!5269 x!463423) (toValue!36 thiss!5269 x!463424)))))

(assert (= (and bs!470575 (not res!1084022)) b!2577305))

(declare-fun bs!470576 () Bool)

(assert (= bs!470576 (and m!2911949 m!2911939)))

(assert (=> bs!470576 m!2911939))

(assert (=> bs!470576 m!2911941))

(assert (=> bs!470576 s!228364))

(declare-fun bs!470577 () Bool)

(declare-fun s!228366 () Bool)

(assert (= bs!470577 (and neg-inst!1463 s!228366)))

(declare-fun res!1084023 () Bool)

(declare-fun e!1626298 () Bool)

(assert (=> bs!470577 (=> res!1084023 e!1626298)))

(assert (=> bs!470577 (= res!1084023 (not (= (list!11195 x!463422) (list!11195 x!463424))))))

(assert (=> bs!470577 (=> true e!1626298)))

(declare-fun b!2577306 () Bool)

(assert (=> b!2577306 (= e!1626298 (= (toValue!36 thiss!5269 x!463422) (toValue!36 thiss!5269 x!463424)))))

(assert (= (and bs!470577 (not res!1084023)) b!2577306))

(declare-fun bs!470578 () Bool)

(assert (= bs!470578 (and m!2911949 m!2911933)))

(assert (=> bs!470578 m!2911933))

(assert (=> bs!470578 m!2911941))

(assert (=> bs!470578 s!228366))

(declare-fun bs!470579 () Bool)

(declare-fun s!228368 () Bool)

(assert (= bs!470579 (and neg-inst!1463 s!228368)))

(declare-fun res!1084024 () Bool)

(declare-fun e!1626299 () Bool)

(assert (=> bs!470579 (=> res!1084024 e!1626299)))

(assert (=> bs!470579 (= res!1084024 (not (= (list!11195 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))) (list!11195 x!463424))))))

(assert (=> bs!470579 (=> true e!1626299)))

(declare-fun b!2577307 () Bool)

(assert (=> b!2577307 (= e!1626299 (= (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))) (toValue!36 thiss!5269 x!463424)))))

(assert (= (and bs!470579 (not res!1084024)) b!2577307))

(declare-fun bs!470580 () Bool)

(assert (= bs!470580 (and m!2911949 m!2911937)))

(assert (=> bs!470580 m!2911937))

(assert (=> bs!470580 m!2911941))

(assert (=> bs!470580 s!228368))

(declare-fun bs!470581 () Bool)

(declare-fun s!228370 () Bool)

(assert (= bs!470581 (and neg-inst!1463 s!228370)))

(declare-fun res!1084025 () Bool)

(declare-fun e!1626300 () Bool)

(assert (=> bs!470581 (=> res!1084025 e!1626300)))

(assert (=> bs!470581 (= res!1084025 (not (= (list!11195 x!463424) (list!11195 x!463424))))))

(assert (=> bs!470581 (=> true e!1626300)))

(declare-fun b!2577308 () Bool)

(assert (=> b!2577308 (= e!1626300 (= (toValue!36 thiss!5269 x!463424) (toValue!36 thiss!5269 x!463424)))))

(assert (= (and bs!470581 (not res!1084025)) b!2577308))

(assert (=> m!2911949 m!2911941))

(assert (=> m!2911949 m!2911941))

(assert (=> m!2911949 s!228370))

(declare-fun bs!470582 () Bool)

(declare-fun s!228372 () Bool)

(assert (= bs!470582 (and neg-inst!1463 s!228372)))

(declare-fun res!1084026 () Bool)

(declare-fun e!1626301 () Bool)

(assert (=> bs!470582 (=> res!1084026 e!1626301)))

(assert (=> bs!470582 (= res!1084026 (not (= (list!11195 x!463424) (list!11195 x!463423))))))

(assert (=> bs!470582 (=> true e!1626301)))

(declare-fun b!2577309 () Bool)

(assert (=> b!2577309 (= e!1626301 (= (toValue!36 thiss!5269 x!463424) (toValue!36 thiss!5269 x!463423)))))

(assert (= (and bs!470582 (not res!1084026)) b!2577309))

(assert (=> bs!470576 m!2911941))

(assert (=> bs!470576 m!2911939))

(assert (=> bs!470576 s!228372))

(declare-fun bs!470583 () Bool)

(declare-fun s!228374 () Bool)

(assert (= bs!470583 (and neg-inst!1463 s!228374)))

(declare-fun res!1084027 () Bool)

(declare-fun e!1626302 () Bool)

(assert (=> bs!470583 (=> res!1084027 e!1626302)))

(assert (=> bs!470583 (= res!1084027 (not (= (list!11195 x!463424) (list!11195 x!463422))))))

(assert (=> bs!470583 (=> true e!1626302)))

(declare-fun b!2577310 () Bool)

(assert (=> b!2577310 (= e!1626302 (= (toValue!36 thiss!5269 x!463424) (toValue!36 thiss!5269 x!463422)))))

(assert (= (and bs!470583 (not res!1084027)) b!2577310))

(assert (=> bs!470578 m!2911941))

(assert (=> bs!470578 m!2911933))

(assert (=> bs!470578 s!228374))

(declare-fun bs!470584 () Bool)

(declare-fun s!228376 () Bool)

(assert (= bs!470584 (and neg-inst!1463 s!228376)))

(declare-fun res!1084028 () Bool)

(declare-fun e!1626303 () Bool)

(assert (=> bs!470584 (=> res!1084028 e!1626303)))

(assert (=> bs!470584 (= res!1084028 (not (= (list!11195 x!463424) (list!11195 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))))))))

(assert (=> bs!470584 (=> true e!1626303)))

(declare-fun b!2577311 () Bool)

(assert (=> b!2577311 (= e!1626303 (= (toValue!36 thiss!5269 x!463424) (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))))))

(assert (= (and bs!470584 (not res!1084028)) b!2577311))

(assert (=> bs!470580 m!2911941))

(assert (=> bs!470580 m!2911937))

(assert (=> bs!470580 s!228376))

(assert (=> m!2911949 s!228370))

(declare-fun bs!470585 () Bool)

(assert (= bs!470585 (and m!2911941 m!2911939)))

(assert (=> bs!470585 s!228364))

(declare-fun bs!470586 () Bool)

(assert (= bs!470586 (and m!2911941 m!2911949)))

(assert (=> bs!470586 s!228370))

(declare-fun bs!470587 () Bool)

(assert (= bs!470587 (and m!2911941 m!2911933)))

(assert (=> bs!470587 s!228366))

(declare-fun bs!470588 () Bool)

(assert (= bs!470588 (and m!2911941 m!2911937)))

(assert (=> bs!470588 s!228368))

(assert (=> m!2911941 s!228370))

(assert (=> bs!470585 s!228372))

(assert (=> bs!470588 s!228376))

(assert (=> bs!470587 s!228374))

(assert (=> bs!470586 s!228370))

(assert (=> m!2911941 s!228370))

(declare-fun bs!470589 () Bool)

(assert (= bs!470589 (and m!2911947 m!2911933)))

(assert (=> bs!470589 s!228348))

(declare-fun bs!470590 () Bool)

(assert (= bs!470590 (and m!2911947 m!2911949 m!2911941)))

(assert (=> bs!470590 s!228372))

(declare-fun bs!470591 () Bool)

(assert (= bs!470591 (and m!2911947 m!2911939)))

(assert (=> bs!470591 s!228350))

(assert (=> m!2911947 s!228350))

(declare-fun bs!470592 () Bool)

(assert (= bs!470592 (and m!2911947 m!2911937)))

(assert (=> bs!470592 s!228360))

(assert (=> bs!470589 s!228352))

(assert (=> bs!470592 s!228354))

(assert (=> bs!470591 s!228350))

(assert (=> m!2911947 s!228350))

(assert (=> bs!470590 s!228364))

(declare-fun bs!470593 () Bool)

(assert (= bs!470593 (and m!2911929 m!2911949 m!2911941)))

(assert (=> bs!470593 s!228374))

(declare-fun bs!470594 () Bool)

(assert (= bs!470594 (and m!2911929 m!2911937)))

(assert (=> bs!470594 s!228362))

(declare-fun bs!470595 () Bool)

(assert (= bs!470595 (and m!2911929 m!2911933)))

(assert (=> bs!470595 s!228346))

(assert (=> m!2911929 s!228346))

(declare-fun bs!470596 () Bool)

(assert (= bs!470596 (and m!2911929 m!2911939 m!2911947)))

(assert (=> bs!470596 s!228352))

(assert (=> bs!470595 s!228346))

(assert (=> bs!470593 s!228366))

(assert (=> bs!470594 s!228356))

(assert (=> m!2911929 s!228346))

(assert (=> bs!470596 s!228348))

(declare-fun bs!470597 () Bool)

(assert (= bs!470597 (and neg-inst!1463 b!2577283)))

(assert (=> bs!470597 (= true inst!1463)))

(declare-fun res!1084010 () Bool)

(declare-fun e!1626283 () Bool)

(assert (=> start!249108 (=> res!1084010 e!1626283)))

(declare-fun lambda!95128 () Int)

(declare-fun Forall!1153 (Int) Bool)

(assert (=> start!249108 (= res!1084010 (not (Forall!1153 lambda!95128)))))

(assert (=> start!249108 (= (Forall!1153 lambda!95128) inst!1462)))

(assert (=> start!249108 (not e!1626283)))

(assert (=> start!249108 true))

(declare-fun e!1626282 () Bool)

(assert (=> b!2577282 (= e!1626283 e!1626282)))

(declare-fun res!1084011 () Bool)

(assert (=> b!2577282 (=> res!1084011 e!1626282)))

(declare-fun lambda!95129 () Int)

(declare-fun lambda!95130 () Int)

(declare-fun semiInverseModEq!1871 (Int Int) Bool)

(assert (=> b!2577282 (= res!1084011 (not (semiInverseModEq!1871 lambda!95129 lambda!95130)))))

(assert (=> b!2577282 (= (semiInverseModEq!1871 lambda!95129 lambda!95130) (Forall!1153 lambda!95128))))

(declare-fun lambda!95131 () Int)

(declare-fun Forall2!754 (Int) Bool)

(assert (=> b!2577283 (= e!1626282 (Forall2!754 lambda!95131))))

(assert (=> b!2577283 (= (Forall2!754 lambda!95131) inst!1463)))

(assert (= neg-inst!1462 inst!1462))

(assert (= (and start!249108 (not res!1084010)) b!2577282))

(assert (= (and b!2577282 (not res!1084011)) b!2577283))

(assert (= neg-inst!1463 inst!1463))

(declare-fun m!2911955 () Bool)

(assert (=> start!249108 m!2911955))

(assert (=> start!249108 m!2911955))

(declare-fun m!2911957 () Bool)

(assert (=> b!2577282 m!2911957))

(assert (=> b!2577282 m!2911957))

(assert (=> b!2577282 m!2911955))

(declare-fun m!2911959 () Bool)

(assert (=> b!2577283 m!2911959))

(assert (=> b!2577283 m!2911959))

(push 1)

(assert (not b!2577308))

(assert (not b!2577282))

(assert (not b!2577309))

(assert (not b!2577299))

(assert (not b!2577292))

(assert (not b!2577310))

(assert (not b!2577304))

(assert (not bs!470583))

(assert (not bs!470567))

(assert (not b!2577297))

(assert (not b!2577300))

(assert (not bs!470581))

(assert (not b!2577293))

(assert (not bs!470579))

(assert (not bs!470564))

(assert (not bs!470582))

(assert (not b!2577294))

(assert (not b!2577296))

(assert (not b!2577302))

(assert (not bs!470577))

(assert (not bs!470570))

(assert (not bs!470575))

(assert (not b!2577303))

(assert (not b!2577301))

(assert (not b!2577283))

(assert (not bs!470561))

(assert (not bs!470573))

(assert (not bs!470563))

(assert (not bs!470584))

(assert (not b!2577295))

(assert (not b!2577298))

(assert (not b!2577306))

(assert (not bs!470566))

(assert (not bs!470568))

(assert (not b!2577305))

(assert (not bs!470574))

(assert (not bs!470572))

(assert (not b!2577311))

(assert (not b!2577307))

(assert (not start!249108))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!728941 () Bool)

(declare-fun list!11197 (Conc!9250) List!29751)

(assert (=> d!728941 (= (list!11195 x!463422) (list!11197 (c!415158 x!463422)))))

(declare-fun bs!470632 () Bool)

(assert (= bs!470632 d!728941))

(declare-fun m!2911995 () Bool)

(assert (=> bs!470632 m!2911995))

(assert (=> bs!470570 d!728941))

(declare-fun d!728943 () Bool)

(assert (=> d!728943 (= (list!11195 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))) (list!11197 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))))))

(declare-fun bs!470633 () Bool)

(assert (= bs!470633 d!728943))

(declare-fun m!2911997 () Bool)

(assert (=> bs!470633 m!2911997))

(assert (=> bs!470570 d!728943))

(declare-fun d!728945 () Bool)

(assert (=> d!728945 (= (list!11195 x!463424) (list!11197 (c!415158 x!463424)))))

(declare-fun bs!470634 () Bool)

(assert (= bs!470634 d!728945))

(declare-fun m!2911999 () Bool)

(assert (=> bs!470634 m!2911999))

(assert (=> bs!470584 d!728945))

(assert (=> bs!470584 d!728943))

(declare-fun d!728947 () Bool)

(declare-fun efficientList!370 (BalanceConc!18114) List!29751)

(assert (=> d!728947 (= (toValue!36 thiss!5269 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))) (IndentationValue!4714 (efficientList!370 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))))))

(declare-fun bs!470635 () Bool)

(assert (= bs!470635 d!728947))

(assert (=> bs!470635 m!2911931))

(declare-fun m!2912001 () Bool)

(assert (=> bs!470635 m!2912001))

(assert (=> b!2577307 d!728947))

(declare-fun d!728949 () Bool)

(assert (=> d!728949 (= (toValue!36 thiss!5269 x!463424) (IndentationValue!4714 (efficientList!370 x!463424)))))

(declare-fun bs!470636 () Bool)

(assert (= bs!470636 d!728949))

(declare-fun m!2912003 () Bool)

(assert (=> bs!470636 m!2912003))

(assert (=> b!2577307 d!728949))

(declare-fun d!728951 () Bool)

(assert (=> d!728951 (= (toValue!36 thiss!5269 x!463422) (IndentationValue!4714 (efficientList!370 x!463422)))))

(declare-fun bs!470637 () Bool)

(assert (= bs!470637 d!728951))

(declare-fun m!2912005 () Bool)

(assert (=> bs!470637 m!2912005))

(assert (=> b!2577297 d!728951))

(declare-fun d!728953 () Bool)

(assert (=> d!728953 (= (toValue!36 thiss!5269 x!463423) (IndentationValue!4714 (efficientList!370 x!463423)))))

(declare-fun bs!470638 () Bool)

(assert (= bs!470638 d!728953))

(declare-fun m!2912007 () Bool)

(assert (=> bs!470638 m!2912007))

(assert (=> b!2577297 d!728953))

(assert (=> bs!470574 d!728943))

(assert (=> bs!470574 d!728941))

(declare-fun d!728955 () Bool)

(assert (=> d!728955 (= (list!11195 x!463423) (list!11197 (c!415158 x!463423)))))

(declare-fun bs!470639 () Bool)

(assert (= bs!470639 d!728955))

(declare-fun m!2912009 () Bool)

(assert (=> bs!470639 m!2912009))

(assert (=> bs!470566 d!728955))

(assert (=> b!2577304 d!728947))

(assert (=> b!2577304 d!728951))

(assert (=> b!2577298 d!728953))

(assert (=> bs!470575 d!728955))

(assert (=> bs!470575 d!728945))

(assert (=> bs!470581 d!728945))

(assert (=> b!2577301 d!728951))

(assert (=> b!2577301 d!728947))

(assert (=> b!2577311 d!728949))

(assert (=> b!2577311 d!728947))

(assert (=> bs!470572 d!728943))

(assert (=> b!2577305 d!728953))

(assert (=> b!2577305 d!728949))

(assert (=> b!2577308 d!728949))

(assert (=> bs!470577 d!728941))

(assert (=> bs!470577 d!728945))

(assert (=> b!2577302 d!728947))

(assert (=> bs!470582 d!728945))

(assert (=> bs!470582 d!728955))

(assert (=> bs!470567 d!728955))

(assert (=> bs!470567 d!728941))

(assert (=> bs!470573 d!728943))

(assert (=> bs!470573 d!728955))

(assert (=> b!2577309 d!728949))

(assert (=> b!2577309 d!728953))

(assert (=> b!2577299 d!728953))

(assert (=> b!2577299 d!728951))

(assert (=> bs!470563 d!728941))

(assert (=> b!2577303 d!728947))

(assert (=> b!2577303 d!728953))

(assert (=> bs!470564 d!728941))

(assert (=> bs!470564 d!728955))

(assert (=> bs!470583 d!728945))

(assert (=> bs!470583 d!728941))

(assert (=> bs!470568 d!728955))

(assert (=> bs!470568 d!728943))

(assert (=> b!2577306 d!728951))

(assert (=> b!2577306 d!728949))

(assert (=> b!2577296 d!728951))

(assert (=> b!2577310 d!728949))

(assert (=> b!2577310 d!728951))

(assert (=> bs!470579 d!728943))

(assert (=> bs!470579 d!728945))

(assert (=> b!2577300 d!728953))

(assert (=> b!2577300 d!728947))

(declare-fun bs!470640 () Bool)

(assert (= bs!470640 (and m!2911933 b!2577296)))

(assert (=> bs!470640 m!2911929))

(assert (=> bs!470640 m!2911929))

(declare-fun bs!470641 () Bool)

(assert (= bs!470641 (and m!2911939 m!2911933 b!2577297)))

(assert (=> bs!470641 m!2911929))

(assert (=> bs!470641 m!2911947))

(declare-fun bs!470642 () Bool)

(assert (= bs!470642 (and m!2911939 b!2577298)))

(assert (=> bs!470642 m!2911947))

(assert (=> bs!470642 m!2911947))

(declare-fun bs!470643 () Bool)

(assert (= bs!470643 (and m!2911939 m!2911933 b!2577299)))

(assert (=> bs!470643 m!2911947))

(assert (=> bs!470643 m!2911929))

(declare-fun bs!470644 () Bool)

(assert (= bs!470644 (and m!2911937 m!2911939 b!2577300)))

(assert (=> bs!470644 m!2911947))

(declare-fun m!2912011 () Bool)

(assert (=> bs!470644 m!2912011))

(declare-fun bs!470645 () Bool)

(assert (= bs!470645 (and m!2911937 m!2911933 b!2577301)))

(assert (=> bs!470645 m!2911929))

(assert (=> bs!470645 m!2912011))

(declare-fun bs!470646 () Bool)

(assert (= bs!470646 (and m!2911937 b!2577302)))

(assert (=> bs!470646 m!2912011))

(assert (=> bs!470646 m!2912011))

(declare-fun bs!470647 () Bool)

(assert (= bs!470647 (and m!2911937 m!2911939 b!2577303)))

(assert (=> bs!470647 m!2912011))

(assert (=> bs!470647 m!2911947))

(declare-fun bs!470648 () Bool)

(assert (= bs!470648 (and m!2911937 m!2911933 b!2577304)))

(assert (=> bs!470648 m!2912011))

(assert (=> bs!470648 m!2911929))

(declare-fun bs!470649 () Bool)

(assert (= bs!470649 (and m!2911949 m!2911939 b!2577305)))

(assert (=> bs!470649 m!2911947))

(assert (=> bs!470649 m!2911949))

(declare-fun bs!470650 () Bool)

(assert (= bs!470650 (and m!2911949 m!2911933 b!2577306)))

(assert (=> bs!470650 m!2911929))

(assert (=> bs!470650 m!2911949))

(declare-fun bs!470651 () Bool)

(assert (= bs!470651 (and m!2911949 m!2911937 b!2577307)))

(assert (=> bs!470651 m!2912011))

(assert (=> bs!470651 m!2911949))

(declare-fun bs!470652 () Bool)

(assert (= bs!470652 (and m!2911949 b!2577308)))

(assert (=> bs!470652 m!2911949))

(assert (=> bs!470652 m!2911949))

(declare-fun bs!470653 () Bool)

(assert (= bs!470653 (and m!2911949 m!2911939 b!2577309)))

(assert (=> bs!470653 m!2911949))

(assert (=> bs!470653 m!2911947))

(declare-fun bs!470654 () Bool)

(assert (= bs!470654 (and m!2911949 m!2911933 b!2577310)))

(assert (=> bs!470654 m!2911949))

(assert (=> bs!470654 m!2911929))

(declare-fun bs!470655 () Bool)

(assert (= bs!470655 (and m!2911949 m!2911937 b!2577311)))

(assert (=> bs!470655 m!2911949))

(assert (=> bs!470655 m!2912011))

(push 1)

(assert (not b!2577293))

(assert (not b!2577294))

(assert (not d!728941))

(assert (not b!2577282))

(assert (not d!728951))

(assert (not d!728945))

(assert (not b!2577292))

(assert (not d!728955))

(assert (not d!728947))

(assert (not b!2577295))

(assert (not d!728943))

(assert (not d!728949))

(assert (not start!249108))

(assert (not d!728953))

(assert (not b!2577283))

(assert (not bs!470561))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2577371 () Bool)

(declare-fun e!1626349 () List!29751)

(declare-fun ++!7290 (List!29751 List!29751) List!29751)

(assert (=> b!2577371 (= e!1626349 (++!7290 (list!11197 (left!22568 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))))) (list!11197 (right!22898 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))))))))

(declare-fun b!2577369 () Bool)

(declare-fun e!1626348 () List!29751)

(assert (=> b!2577369 (= e!1626348 e!1626349)))

(declare-fun c!415165 () Bool)

(assert (=> b!2577369 (= c!415165 (is-Leaf!14107 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))))))

(declare-fun b!2577368 () Bool)

(assert (=> b!2577368 (= e!1626348 Nil!29651)))

(declare-fun b!2577370 () Bool)

(declare-fun list!11199 (IArray!18505) List!29751)

(assert (=> b!2577370 (= e!1626349 (list!11199 (xs!12234 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))))))))

(declare-fun d!728973 () Bool)

(declare-fun c!415164 () Bool)

(assert (=> d!728973 (= c!415164 (is-Empty!9250 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))))))

(assert (=> d!728973 (= (list!11197 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))) e!1626348)))

(assert (= (and d!728973 c!415164) b!2577368))

(assert (= (and d!728973 (not c!415164)) b!2577369))

(assert (= (and b!2577369 c!415165) b!2577370))

(assert (= (and b!2577369 (not c!415165)) b!2577371))

(declare-fun m!2912031 () Bool)

(assert (=> b!2577371 m!2912031))

(declare-fun m!2912033 () Bool)

(assert (=> b!2577371 m!2912033))

(assert (=> b!2577371 m!2912031))

(assert (=> b!2577371 m!2912033))

(declare-fun m!2912035 () Bool)

(assert (=> b!2577371 m!2912035))

(declare-fun m!2912037 () Bool)

(assert (=> b!2577370 m!2912037))

(assert (=> d!728943 d!728973))

(declare-fun b!2577375 () Bool)

(declare-fun e!1626351 () List!29751)

(assert (=> b!2577375 (= e!1626351 (++!7290 (list!11197 (left!22568 (c!415158 x!463423))) (list!11197 (right!22898 (c!415158 x!463423)))))))

(declare-fun b!2577373 () Bool)

(declare-fun e!1626350 () List!29751)

(assert (=> b!2577373 (= e!1626350 e!1626351)))

(declare-fun c!415167 () Bool)

(assert (=> b!2577373 (= c!415167 (is-Leaf!14107 (c!415158 x!463423)))))

(declare-fun b!2577372 () Bool)

(assert (=> b!2577372 (= e!1626350 Nil!29651)))

(declare-fun b!2577374 () Bool)

(assert (=> b!2577374 (= e!1626351 (list!11199 (xs!12234 (c!415158 x!463423))))))

(declare-fun d!728975 () Bool)

(declare-fun c!415166 () Bool)

(assert (=> d!728975 (= c!415166 (is-Empty!9250 (c!415158 x!463423)))))

(assert (=> d!728975 (= (list!11197 (c!415158 x!463423)) e!1626350)))

(assert (= (and d!728975 c!415166) b!2577372))

(assert (= (and d!728975 (not c!415166)) b!2577373))

(assert (= (and b!2577373 c!415167) b!2577374))

(assert (= (and b!2577373 (not c!415167)) b!2577375))

(declare-fun m!2912039 () Bool)

(assert (=> b!2577375 m!2912039))

(declare-fun m!2912041 () Bool)

(assert (=> b!2577375 m!2912041))

(assert (=> b!2577375 m!2912039))

(assert (=> b!2577375 m!2912041))

(declare-fun m!2912043 () Bool)

(assert (=> b!2577375 m!2912043))

(declare-fun m!2912045 () Bool)

(assert (=> b!2577374 m!2912045))

(assert (=> d!728955 d!728975))

(declare-fun b!2577379 () Bool)

(declare-fun e!1626353 () List!29751)

(assert (=> b!2577379 (= e!1626353 (++!7290 (list!11197 (left!22568 (c!415158 x!463424))) (list!11197 (right!22898 (c!415158 x!463424)))))))

(declare-fun b!2577377 () Bool)

(declare-fun e!1626352 () List!29751)

(assert (=> b!2577377 (= e!1626352 e!1626353)))

(declare-fun c!415169 () Bool)

(assert (=> b!2577377 (= c!415169 (is-Leaf!14107 (c!415158 x!463424)))))

(declare-fun b!2577376 () Bool)

(assert (=> b!2577376 (= e!1626352 Nil!29651)))

(declare-fun b!2577378 () Bool)

(assert (=> b!2577378 (= e!1626353 (list!11199 (xs!12234 (c!415158 x!463424))))))

(declare-fun d!728977 () Bool)

(declare-fun c!415168 () Bool)

(assert (=> d!728977 (= c!415168 (is-Empty!9250 (c!415158 x!463424)))))

(assert (=> d!728977 (= (list!11197 (c!415158 x!463424)) e!1626352)))

(assert (= (and d!728977 c!415168) b!2577376))

(assert (= (and d!728977 (not c!415168)) b!2577377))

(assert (= (and b!2577377 c!415169) b!2577378))

(assert (= (and b!2577377 (not c!415169)) b!2577379))

(declare-fun m!2912047 () Bool)

(assert (=> b!2577379 m!2912047))

(declare-fun m!2912049 () Bool)

(assert (=> b!2577379 m!2912049))

(assert (=> b!2577379 m!2912047))

(assert (=> b!2577379 m!2912049))

(declare-fun m!2912051 () Bool)

(assert (=> b!2577379 m!2912051))

(declare-fun m!2912053 () Bool)

(assert (=> b!2577378 m!2912053))

(assert (=> d!728945 d!728977))

(declare-fun d!728979 () Bool)

(declare-fun lt!906783 () List!29751)

(assert (=> d!728979 (= lt!906783 (list!11195 x!463424))))

(declare-fun efficientList!372 (Conc!9250 List!29751) List!29751)

(declare-fun efficientList$default$2!129 (Conc!9250) List!29751)

(assert (=> d!728979 (= lt!906783 (efficientList!372 (c!415158 x!463424) (efficientList$default$2!129 (c!415158 x!463424))))))

(assert (=> d!728979 (= (efficientList!370 x!463424) lt!906783)))

(declare-fun bs!470680 () Bool)

(assert (= bs!470680 d!728979))

(assert (=> bs!470680 m!2911941))

(declare-fun m!2912055 () Bool)

(assert (=> bs!470680 m!2912055))

(assert (=> bs!470680 m!2912055))

(declare-fun m!2912057 () Bool)

(assert (=> bs!470680 m!2912057))

(assert (=> d!728949 d!728979))

(declare-fun b!2577383 () Bool)

(declare-fun e!1626355 () List!29751)

(assert (=> b!2577383 (= e!1626355 (++!7290 (list!11197 (left!22568 (c!415158 x!463422))) (list!11197 (right!22898 (c!415158 x!463422)))))))

(declare-fun b!2577381 () Bool)

(declare-fun e!1626354 () List!29751)

(assert (=> b!2577381 (= e!1626354 e!1626355)))

(declare-fun c!415171 () Bool)

(assert (=> b!2577381 (= c!415171 (is-Leaf!14107 (c!415158 x!463422)))))

(declare-fun b!2577380 () Bool)

(assert (=> b!2577380 (= e!1626354 Nil!29651)))

(declare-fun b!2577382 () Bool)

(assert (=> b!2577382 (= e!1626355 (list!11199 (xs!12234 (c!415158 x!463422))))))

(declare-fun d!728981 () Bool)

(declare-fun c!415170 () Bool)

(assert (=> d!728981 (= c!415170 (is-Empty!9250 (c!415158 x!463422)))))

(assert (=> d!728981 (= (list!11197 (c!415158 x!463422)) e!1626354)))

(assert (= (and d!728981 c!415170) b!2577380))

(assert (= (and d!728981 (not c!415170)) b!2577381))

(assert (= (and b!2577381 c!415171) b!2577382))

(assert (= (and b!2577381 (not c!415171)) b!2577383))

(declare-fun m!2912059 () Bool)

(assert (=> b!2577383 m!2912059))

(declare-fun m!2912061 () Bool)

(assert (=> b!2577383 m!2912061))

(assert (=> b!2577383 m!2912059))

(assert (=> b!2577383 m!2912061))

(declare-fun m!2912063 () Bool)

(assert (=> b!2577383 m!2912063))

(declare-fun m!2912065 () Bool)

(assert (=> b!2577382 m!2912065))

(assert (=> d!728941 d!728981))

(declare-fun d!728983 () Bool)

(declare-fun lt!906784 () List!29751)

(assert (=> d!728983 (= lt!906784 (list!11195 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))))))

(assert (=> d!728983 (= lt!906784 (efficientList!372 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))) (efficientList$default$2!129 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))))))))

(assert (=> d!728983 (= (efficientList!370 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))) lt!906784)))

(declare-fun bs!470681 () Bool)

(assert (= bs!470681 d!728983))

(assert (=> bs!470681 m!2911931))

(assert (=> bs!470681 m!2911937))

(declare-fun m!2912067 () Bool)

(assert (=> bs!470681 m!2912067))

(assert (=> bs!470681 m!2912067))

(declare-fun m!2912069 () Bool)

(assert (=> bs!470681 m!2912069))

(assert (=> d!728947 d!728983))

(declare-fun d!728985 () Bool)

(declare-fun lt!906785 () List!29751)

(assert (=> d!728985 (= lt!906785 (list!11195 x!463422))))

(assert (=> d!728985 (= lt!906785 (efficientList!372 (c!415158 x!463422) (efficientList$default$2!129 (c!415158 x!463422))))))

(assert (=> d!728985 (= (efficientList!370 x!463422) lt!906785)))

(declare-fun bs!470682 () Bool)

(assert (= bs!470682 d!728985))

(assert (=> bs!470682 m!2911933))

(declare-fun m!2912071 () Bool)

(assert (=> bs!470682 m!2912071))

(assert (=> bs!470682 m!2912071))

(declare-fun m!2912073 () Bool)

(assert (=> bs!470682 m!2912073))

(assert (=> d!728951 d!728985))

(declare-fun d!728987 () Bool)

(declare-fun lt!906786 () List!29751)

(assert (=> d!728987 (= lt!906786 (list!11195 x!463423))))

(assert (=> d!728987 (= lt!906786 (efficientList!372 (c!415158 x!463423) (efficientList$default$2!129 (c!415158 x!463423))))))

(assert (=> d!728987 (= (efficientList!370 x!463423) lt!906786)))

(declare-fun bs!470683 () Bool)

(assert (= bs!470683 d!728987))

(assert (=> bs!470683 m!2911939))

(declare-fun m!2912075 () Bool)

(assert (=> bs!470683 m!2912075))

(assert (=> bs!470683 m!2912075))

(declare-fun m!2912077 () Bool)

(assert (=> bs!470683 m!2912077))

(assert (=> d!728953 d!728987))

(push 1)

(assert (not b!2577293))

(assert (not b!2577383))

(assert (not b!2577282))

(assert (not b!2577382))

(assert (not b!2577374))

(assert (not d!728985))

(assert (not b!2577295))

(assert (not start!249108))

(assert (not d!728987))

(assert (not b!2577379))

(assert (not d!728983))

(assert (not b!2577370))

(assert (not b!2577375))

(assert (not b!2577294))

(assert (not b!2577283))

(assert (not bs!470561))

(assert (not b!2577378))

(assert (not b!2577292))

(assert (not b!2577371))

(assert (not d!728979))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!728979 d!728945))

(declare-fun b!2577420 () Bool)

(declare-fun e!1626375 () List!29751)

(declare-fun efficientList!374 (IArray!18505) List!29751)

(assert (=> b!2577420 (= e!1626375 (efficientList!374 (xs!12234 (c!415158 x!463424))))))

(declare-fun bm!166683 () Bool)

(declare-fun c!415190 () Bool)

(declare-fun c!415192 () Bool)

(assert (=> bm!166683 (= c!415190 c!415192)))

(declare-fun call!166688 () List!29751)

(assert (=> bm!166683 (= call!166688 (++!7290 e!1626375 (efficientList$default$2!129 (c!415158 x!463424))))))

(declare-fun b!2577421 () Bool)

(declare-fun e!1626374 () List!29751)

(assert (=> b!2577421 (= e!1626374 (efficientList$default$2!129 (c!415158 x!463424)))))

(declare-fun b!2577422 () Bool)

(declare-fun e!1626376 () List!29751)

(assert (=> b!2577422 (= e!1626376 call!166688)))

(declare-fun b!2577423 () Bool)

(assert (=> b!2577423 (= e!1626374 e!1626376)))

(assert (=> b!2577423 (= c!415192 (is-Leaf!14107 (c!415158 x!463424)))))

(declare-fun b!2577424 () Bool)

(declare-datatypes ((Unit!43505 0))(
  ( (Unit!43506) )
))
(declare-fun lt!906807 () Unit!43505)

(declare-fun lt!906806 () Unit!43505)

(assert (=> b!2577424 (= lt!906807 lt!906806)))

(declare-fun lt!906805 () List!29751)

(declare-fun lt!906803 () List!29751)

(assert (=> b!2577424 (= (++!7290 (++!7290 lt!906803 lt!906805) (efficientList$default$2!129 (c!415158 x!463424))) (++!7290 lt!906803 call!166688))))

(declare-fun lemmaConcatAssociativity!1473 (List!29751 List!29751 List!29751) Unit!43505)

(assert (=> b!2577424 (= lt!906806 (lemmaConcatAssociativity!1473 lt!906803 lt!906805 (efficientList$default$2!129 (c!415158 x!463424))))))

(assert (=> b!2577424 (= lt!906805 (list!11197 (right!22898 (c!415158 x!463424))))))

(assert (=> b!2577424 (= lt!906803 (list!11197 (left!22568 (c!415158 x!463424))))))

(assert (=> b!2577424 (= e!1626376 (efficientList!372 (left!22568 (c!415158 x!463424)) (efficientList!372 (right!22898 (c!415158 x!463424)) (efficientList$default$2!129 (c!415158 x!463424)))))))

(declare-fun d!729001 () Bool)

(declare-fun lt!906804 () List!29751)

(assert (=> d!729001 (= lt!906804 (++!7290 (list!11197 (c!415158 x!463424)) (efficientList$default$2!129 (c!415158 x!463424))))))

(assert (=> d!729001 (= lt!906804 e!1626374)))

(declare-fun c!415191 () Bool)

(assert (=> d!729001 (= c!415191 (is-Empty!9250 (c!415158 x!463424)))))

(assert (=> d!729001 (= (efficientList!372 (c!415158 x!463424) (efficientList$default$2!129 (c!415158 x!463424))) lt!906804)))

(declare-fun b!2577425 () Bool)

(assert (=> b!2577425 (= e!1626375 lt!906805)))

(assert (= (and d!729001 c!415191) b!2577421))

(assert (= (and d!729001 (not c!415191)) b!2577423))

(assert (= (and b!2577423 c!415192) b!2577422))

(assert (= (and b!2577423 (not c!415192)) b!2577424))

(assert (= (or b!2577422 b!2577424) bm!166683))

(assert (= (and bm!166683 c!415190) b!2577420))

(assert (= (and bm!166683 (not c!415190)) b!2577425))

(declare-fun m!2912127 () Bool)

(assert (=> b!2577420 m!2912127))

(assert (=> bm!166683 m!2912055))

(declare-fun m!2912129 () Bool)

(assert (=> bm!166683 m!2912129))

(declare-fun m!2912131 () Bool)

(assert (=> b!2577424 m!2912131))

(assert (=> b!2577424 m!2912055))

(declare-fun m!2912133 () Bool)

(assert (=> b!2577424 m!2912133))

(declare-fun m!2912135 () Bool)

(assert (=> b!2577424 m!2912135))

(declare-fun m!2912137 () Bool)

(assert (=> b!2577424 m!2912137))

(assert (=> b!2577424 m!2912055))

(declare-fun m!2912139 () Bool)

(assert (=> b!2577424 m!2912139))

(assert (=> b!2577424 m!2912055))

(assert (=> b!2577424 m!2912135))

(assert (=> b!2577424 m!2912047))

(assert (=> b!2577424 m!2912049))

(declare-fun m!2912141 () Bool)

(assert (=> b!2577424 m!2912141))

(assert (=> b!2577424 m!2912131))

(assert (=> d!729001 m!2911999))

(assert (=> d!729001 m!2911999))

(assert (=> d!729001 m!2912055))

(declare-fun m!2912143 () Bool)

(assert (=> d!729001 m!2912143))

(assert (=> d!728979 d!729001))

(declare-fun d!729007 () Bool)

(assert (=> d!729007 (= (efficientList$default$2!129 (c!415158 x!463424)) Nil!29651)))

(assert (=> d!728979 d!729007))

(assert (=> d!728987 d!728955))

(declare-fun b!2577426 () Bool)

(declare-fun e!1626378 () List!29751)

(assert (=> b!2577426 (= e!1626378 (efficientList!374 (xs!12234 (c!415158 x!463423))))))

(declare-fun bm!166684 () Bool)

(declare-fun c!415193 () Bool)

(declare-fun c!415195 () Bool)

(assert (=> bm!166684 (= c!415193 c!415195)))

(declare-fun call!166689 () List!29751)

(assert (=> bm!166684 (= call!166689 (++!7290 e!1626378 (efficientList$default$2!129 (c!415158 x!463423))))))

(declare-fun b!2577427 () Bool)

(declare-fun e!1626377 () List!29751)

(assert (=> b!2577427 (= e!1626377 (efficientList$default$2!129 (c!415158 x!463423)))))

(declare-fun b!2577428 () Bool)

(declare-fun e!1626379 () List!29751)

(assert (=> b!2577428 (= e!1626379 call!166689)))

(declare-fun b!2577429 () Bool)

(assert (=> b!2577429 (= e!1626377 e!1626379)))

(assert (=> b!2577429 (= c!415195 (is-Leaf!14107 (c!415158 x!463423)))))

(declare-fun b!2577430 () Bool)

(declare-fun lt!906812 () Unit!43505)

(declare-fun lt!906811 () Unit!43505)

(assert (=> b!2577430 (= lt!906812 lt!906811)))

(declare-fun lt!906808 () List!29751)

(declare-fun lt!906810 () List!29751)

(assert (=> b!2577430 (= (++!7290 (++!7290 lt!906808 lt!906810) (efficientList$default$2!129 (c!415158 x!463423))) (++!7290 lt!906808 call!166689))))

(assert (=> b!2577430 (= lt!906811 (lemmaConcatAssociativity!1473 lt!906808 lt!906810 (efficientList$default$2!129 (c!415158 x!463423))))))

(assert (=> b!2577430 (= lt!906810 (list!11197 (right!22898 (c!415158 x!463423))))))

(assert (=> b!2577430 (= lt!906808 (list!11197 (left!22568 (c!415158 x!463423))))))

(assert (=> b!2577430 (= e!1626379 (efficientList!372 (left!22568 (c!415158 x!463423)) (efficientList!372 (right!22898 (c!415158 x!463423)) (efficientList$default$2!129 (c!415158 x!463423)))))))

(declare-fun d!729009 () Bool)

(declare-fun lt!906809 () List!29751)

(assert (=> d!729009 (= lt!906809 (++!7290 (list!11197 (c!415158 x!463423)) (efficientList$default$2!129 (c!415158 x!463423))))))

(assert (=> d!729009 (= lt!906809 e!1626377)))

(declare-fun c!415194 () Bool)

(assert (=> d!729009 (= c!415194 (is-Empty!9250 (c!415158 x!463423)))))

(assert (=> d!729009 (= (efficientList!372 (c!415158 x!463423) (efficientList$default$2!129 (c!415158 x!463423))) lt!906809)))

(declare-fun b!2577431 () Bool)

(assert (=> b!2577431 (= e!1626378 lt!906810)))

(assert (= (and d!729009 c!415194) b!2577427))

(assert (= (and d!729009 (not c!415194)) b!2577429))

(assert (= (and b!2577429 c!415195) b!2577428))

(assert (= (and b!2577429 (not c!415195)) b!2577430))

(assert (= (or b!2577428 b!2577430) bm!166684))

(assert (= (and bm!166684 c!415193) b!2577426))

(assert (= (and bm!166684 (not c!415193)) b!2577431))

(declare-fun m!2912145 () Bool)

(assert (=> b!2577426 m!2912145))

(assert (=> bm!166684 m!2912075))

(declare-fun m!2912147 () Bool)

(assert (=> bm!166684 m!2912147))

(declare-fun m!2912149 () Bool)

(assert (=> b!2577430 m!2912149))

(assert (=> b!2577430 m!2912075))

(declare-fun m!2912151 () Bool)

(assert (=> b!2577430 m!2912151))

(declare-fun m!2912153 () Bool)

(assert (=> b!2577430 m!2912153))

(declare-fun m!2912155 () Bool)

(assert (=> b!2577430 m!2912155))

(assert (=> b!2577430 m!2912075))

(declare-fun m!2912157 () Bool)

(assert (=> b!2577430 m!2912157))

(assert (=> b!2577430 m!2912075))

(assert (=> b!2577430 m!2912153))

(assert (=> b!2577430 m!2912039))

(assert (=> b!2577430 m!2912041))

(declare-fun m!2912159 () Bool)

(assert (=> b!2577430 m!2912159))

(assert (=> b!2577430 m!2912149))

(assert (=> d!729009 m!2912009))

(assert (=> d!729009 m!2912009))

(assert (=> d!729009 m!2912075))

(declare-fun m!2912161 () Bool)

(assert (=> d!729009 m!2912161))

(assert (=> d!728987 d!729009))

(declare-fun d!729011 () Bool)

(assert (=> d!729011 (= (efficientList$default$2!129 (c!415158 x!463423)) Nil!29651)))

(assert (=> d!728987 d!729011))

(declare-fun d!729013 () Bool)

(declare-fun c!415198 () Bool)

(assert (=> d!729013 (= c!415198 (is-Node!9250 (c!415158 x!463422)))))

(declare-fun e!1626384 () Bool)

(assert (=> d!729013 (= (inv!39962 (c!415158 x!463422)) e!1626384)))

(declare-fun b!2577438 () Bool)

(declare-fun inv!39966 (Conc!9250) Bool)

(assert (=> b!2577438 (= e!1626384 (inv!39966 (c!415158 x!463422)))))

(declare-fun b!2577439 () Bool)

(declare-fun e!1626385 () Bool)

(assert (=> b!2577439 (= e!1626384 e!1626385)))

(declare-fun res!1084072 () Bool)

(assert (=> b!2577439 (= res!1084072 (not (is-Leaf!14107 (c!415158 x!463422))))))

(assert (=> b!2577439 (=> res!1084072 e!1626385)))

(declare-fun b!2577440 () Bool)

(declare-fun inv!39967 (Conc!9250) Bool)

(assert (=> b!2577440 (= e!1626385 (inv!39967 (c!415158 x!463422)))))

(assert (= (and d!729013 c!415198) b!2577438))

(assert (= (and d!729013 (not c!415198)) b!2577439))

(assert (= (and b!2577439 (not res!1084072)) b!2577440))

(declare-fun m!2912163 () Bool)

(assert (=> b!2577438 m!2912163))

(declare-fun m!2912165 () Bool)

(assert (=> b!2577440 m!2912165))

(assert (=> b!2577292 d!729013))

(assert (=> bs!470561 d!728943))

(declare-fun d!729015 () Bool)

(declare-fun c!415202 () Bool)

(assert (=> d!729015 (= c!415202 (is-IndentationValue!4714 (toValue!36 thiss!5269 x!463422)))))

(declare-fun e!1626388 () BalanceConc!18114)

(assert (=> d!729015 (= (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)) e!1626388)))

(declare-fun b!2577445 () Bool)

(declare-fun seqFromList!3142 (List!29751) BalanceConc!18114)

(assert (=> b!2577445 (= e!1626388 (seqFromList!3142 (value!145252 (toValue!36 thiss!5269 x!463422))))))

(declare-fun b!2577446 () Bool)

(assert (=> b!2577446 (= e!1626388 (BalanceConc!18115 Empty!9250))))

(assert (= (and d!729015 c!415202) b!2577445))

(assert (= (and d!729015 (not c!415202)) b!2577446))

(declare-fun m!2912167 () Bool)

(assert (=> b!2577445 m!2912167))

(assert (=> bs!470561 d!729015))

(assert (=> bs!470561 d!728951))

(assert (=> bs!470561 d!728941))

(assert (=> b!2577293 d!728953))

(assert (=> b!2577293 d!728949))

(declare-fun d!729017 () Bool)

(declare-fun c!415203 () Bool)

(assert (=> d!729017 (= c!415203 (is-Node!9250 (c!415158 x!463423)))))

(declare-fun e!1626389 () Bool)

(assert (=> d!729017 (= (inv!39962 (c!415158 x!463423)) e!1626389)))

(declare-fun b!2577447 () Bool)

(assert (=> b!2577447 (= e!1626389 (inv!39966 (c!415158 x!463423)))))

(declare-fun b!2577448 () Bool)

(declare-fun e!1626390 () Bool)

(assert (=> b!2577448 (= e!1626389 e!1626390)))

(declare-fun res!1084073 () Bool)

(assert (=> b!2577448 (= res!1084073 (not (is-Leaf!14107 (c!415158 x!463423))))))

(assert (=> b!2577448 (=> res!1084073 e!1626390)))

(declare-fun b!2577449 () Bool)

(assert (=> b!2577449 (= e!1626390 (inv!39967 (c!415158 x!463423)))))

(assert (= (and d!729017 c!415203) b!2577447))

(assert (= (and d!729017 (not c!415203)) b!2577448))

(assert (= (and b!2577448 (not res!1084073)) b!2577449))

(declare-fun m!2912169 () Bool)

(assert (=> b!2577447 m!2912169))

(declare-fun m!2912171 () Bool)

(assert (=> b!2577449 m!2912171))

(assert (=> b!2577294 d!729017))

(assert (=> d!728983 d!728943))

(declare-fun b!2577450 () Bool)

(declare-fun e!1626392 () List!29751)

(assert (=> b!2577450 (= e!1626392 (efficientList!374 (xs!12234 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))))))))

(declare-fun bm!166685 () Bool)

(declare-fun c!415204 () Bool)

(declare-fun c!415206 () Bool)

(assert (=> bm!166685 (= c!415204 c!415206)))

(declare-fun call!166690 () List!29751)

(assert (=> bm!166685 (= call!166690 (++!7290 e!1626392 (efficientList$default$2!129 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))))))))

(declare-fun b!2577451 () Bool)

(declare-fun e!1626391 () List!29751)

(assert (=> b!2577451 (= e!1626391 (efficientList$default$2!129 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))))))

(declare-fun b!2577452 () Bool)

(declare-fun e!1626393 () List!29751)

(assert (=> b!2577452 (= e!1626393 call!166690)))

(declare-fun b!2577453 () Bool)

(assert (=> b!2577453 (= e!1626391 e!1626393)))

(assert (=> b!2577453 (= c!415206 (is-Leaf!14107 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))))))

(declare-fun b!2577454 () Bool)

(declare-fun lt!906817 () Unit!43505)

(declare-fun lt!906816 () Unit!43505)

(assert (=> b!2577454 (= lt!906817 lt!906816)))

(declare-fun lt!906815 () List!29751)

(declare-fun lt!906813 () List!29751)

(assert (=> b!2577454 (= (++!7290 (++!7290 lt!906813 lt!906815) (efficientList$default$2!129 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))))) (++!7290 lt!906813 call!166690))))

(assert (=> b!2577454 (= lt!906816 (lemmaConcatAssociativity!1473 lt!906813 lt!906815 (efficientList$default$2!129 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))))))))

(assert (=> b!2577454 (= lt!906815 (list!11197 (right!22898 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))))))))

(assert (=> b!2577454 (= lt!906813 (list!11197 (left!22568 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))))))))

(assert (=> b!2577454 (= e!1626393 (efficientList!372 (left!22568 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))) (efficientList!372 (right!22898 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))) (efficientList$default$2!129 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))))))))

(declare-fun d!729019 () Bool)

(declare-fun lt!906814 () List!29751)

(assert (=> d!729019 (= lt!906814 (++!7290 (list!11197 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))) (efficientList$default$2!129 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))))))))

(assert (=> d!729019 (= lt!906814 e!1626391)))

(declare-fun c!415205 () Bool)

(assert (=> d!729019 (= c!415205 (is-Empty!9250 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))))))

(assert (=> d!729019 (= (efficientList!372 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))) (efficientList$default$2!129 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422))))) lt!906814)))

(declare-fun b!2577455 () Bool)

(assert (=> b!2577455 (= e!1626392 lt!906815)))

(assert (= (and d!729019 c!415205) b!2577451))

(assert (= (and d!729019 (not c!415205)) b!2577453))

(assert (= (and b!2577453 c!415206) b!2577452))

(assert (= (and b!2577453 (not c!415206)) b!2577454))

(assert (= (or b!2577452 b!2577454) bm!166685))

(assert (= (and bm!166685 c!415204) b!2577450))

(assert (= (and bm!166685 (not c!415204)) b!2577455))

(declare-fun m!2912173 () Bool)

(assert (=> b!2577450 m!2912173))

(assert (=> bm!166685 m!2912067))

(declare-fun m!2912175 () Bool)

(assert (=> bm!166685 m!2912175))

(declare-fun m!2912177 () Bool)

(assert (=> b!2577454 m!2912177))

(assert (=> b!2577454 m!2912067))

(declare-fun m!2912179 () Bool)

(assert (=> b!2577454 m!2912179))

(declare-fun m!2912181 () Bool)

(assert (=> b!2577454 m!2912181))

(declare-fun m!2912183 () Bool)

(assert (=> b!2577454 m!2912183))

(assert (=> b!2577454 m!2912067))

(declare-fun m!2912185 () Bool)

(assert (=> b!2577454 m!2912185))

(assert (=> b!2577454 m!2912067))

(assert (=> b!2577454 m!2912181))

(assert (=> b!2577454 m!2912031))

(assert (=> b!2577454 m!2912033))

(declare-fun m!2912187 () Bool)

(assert (=> b!2577454 m!2912187))

(assert (=> b!2577454 m!2912177))

(assert (=> d!729019 m!2911997))

(assert (=> d!729019 m!2911997))

(assert (=> d!729019 m!2912067))

(declare-fun m!2912189 () Bool)

(assert (=> d!729019 m!2912189))

(assert (=> d!728983 d!729019))

(declare-fun d!729021 () Bool)

(assert (=> d!729021 (= (efficientList$default$2!129 (c!415158 (toCharacters!29 thiss!5269 (toValue!36 thiss!5269 x!463422)))) Nil!29651)))

(assert (=> d!728983 d!729021))

(declare-fun bs!470688 () Bool)

(declare-fun d!729023 () Bool)

(assert (= bs!470688 (and d!729023 start!249108)))

(declare-fun lambda!95156 () Int)

(assert (=> bs!470688 (not (= lambda!95156 lambda!95128))))

(assert (=> d!729023 true))

(declare-fun order!15769 () Int)

(declare-fun order!15771 () Int)

(declare-fun dynLambda!12523 (Int Int) Int)

(declare-fun dynLambda!12524 (Int Int) Int)

(assert (=> d!729023 (< (dynLambda!12523 order!15769 lambda!95129) (dynLambda!12524 order!15771 lambda!95156))))

(assert (=> d!729023 true))

(declare-fun order!15773 () Int)

(declare-fun dynLambda!12525 (Int Int) Int)

(assert (=> d!729023 (< (dynLambda!12525 order!15773 lambda!95130) (dynLambda!12524 order!15771 lambda!95156))))

(assert (=> d!729023 (= (semiInverseModEq!1871 lambda!95129 lambda!95130) (Forall!1153 lambda!95156))))

(declare-fun bs!470689 () Bool)

(assert (= bs!470689 d!729023))

(declare-fun m!2912191 () Bool)

(assert (=> bs!470689 m!2912191))

(assert (=> b!2577282 d!729023))

(declare-fun d!729025 () Bool)

(declare-fun choose!15200 (Int) Bool)

(assert (=> d!729025 (= (Forall!1153 lambda!95128) (choose!15200 lambda!95128))))

(declare-fun bs!470690 () Bool)

(assert (= bs!470690 d!729025))

(declare-fun m!2912193 () Bool)

(assert (=> bs!470690 m!2912193))

(assert (=> b!2577282 d!729025))

(assert (=> b!2577283 d!728945))

(declare-fun d!729027 () Bool)

(declare-fun choose!15201 (Int) Bool)

(assert (=> d!729027 (= (Forall2!754 lambda!95131) (choose!15201 lambda!95131))))

(declare-fun bs!470691 () Bool)

(assert (= bs!470691 d!729027))

(declare-fun m!2912195 () Bool)

(assert (=> bs!470691 m!2912195))

(assert (=> b!2577283 d!729027))

(declare-fun d!729029 () Bool)

(declare-fun isBalanced!2814 (Conc!9250) Bool)

(assert (=> d!729029 (= (inv!39963 x!463424) (isBalanced!2814 (c!415158 x!463424)))))

(declare-fun bs!470692 () Bool)

(assert (= bs!470692 d!729029))

(declare-fun m!2912197 () Bool)

(assert (=> bs!470692 m!2912197))

(assert (=> b!2577283 d!729029))

(declare-fun d!729031 () Bool)

(assert (=> d!729031 (= (inv!39963 x!463423) (isBalanced!2814 (c!415158 x!463423)))))

(declare-fun bs!470693 () Bool)

(assert (= bs!470693 d!729031))

(declare-fun m!2912199 () Bool)

(assert (=> bs!470693 m!2912199))

(assert (=> b!2577283 d!729031))

(assert (=> b!2577283 d!728955))

(declare-fun d!729033 () Bool)

(declare-fun c!415207 () Bool)

(assert (=> d!729033 (= c!415207 (is-Node!9250 (c!415158 x!463424)))))

(declare-fun e!1626394 () Bool)

(assert (=> d!729033 (= (inv!39962 (c!415158 x!463424)) e!1626394)))

(declare-fun b!2577460 () Bool)

(assert (=> b!2577460 (= e!1626394 (inv!39966 (c!415158 x!463424)))))

(declare-fun b!2577461 () Bool)

(declare-fun e!1626395 () Bool)

(assert (=> b!2577461 (= e!1626394 e!1626395)))

(declare-fun res!1084074 () Bool)

(assert (=> b!2577461 (= res!1084074 (not (is-Leaf!14107 (c!415158 x!463424))))))

(assert (=> b!2577461 (=> res!1084074 e!1626395)))

(declare-fun b!2577462 () Bool)

(assert (=> b!2577462 (= e!1626395 (inv!39967 (c!415158 x!463424)))))

(assert (= (and d!729033 c!415207) b!2577460))

(assert (= (and d!729033 (not c!415207)) b!2577461))

(assert (= (and b!2577461 (not res!1084074)) b!2577462))

(declare-fun m!2912201 () Bool)

(assert (=> b!2577460 m!2912201))

(declare-fun m!2912203 () Bool)

(assert (=> b!2577462 m!2912203))

(assert (=> b!2577295 d!729033))

(assert (=> d!728985 d!728941))

(declare-fun b!2577463 () Bool)

(declare-fun e!1626397 () List!29751)

(assert (=> b!2577463 (= e!1626397 (efficientList!374 (xs!12234 (c!415158 x!463422))))))

(declare-fun bm!166686 () Bool)

(declare-fun c!415208 () Bool)

(declare-fun c!415210 () Bool)

(assert (=> bm!166686 (= c!415208 c!415210)))

(declare-fun call!166691 () List!29751)

(assert (=> bm!166686 (= call!166691 (++!7290 e!1626397 (efficientList$default$2!129 (c!415158 x!463422))))))

(declare-fun b!2577464 () Bool)

(declare-fun e!1626396 () List!29751)

(assert (=> b!2577464 (= e!1626396 (efficientList$default$2!129 (c!415158 x!463422)))))

(declare-fun b!2577465 () Bool)

(declare-fun e!1626398 () List!29751)

(assert (=> b!2577465 (= e!1626398 call!166691)))

(declare-fun b!2577466 () Bool)

(assert (=> b!2577466 (= e!1626396 e!1626398)))

(assert (=> b!2577466 (= c!415210 (is-Leaf!14107 (c!415158 x!463422)))))

(declare-fun b!2577467 () Bool)

(declare-fun lt!906822 () Unit!43505)

(declare-fun lt!906821 () Unit!43505)

(assert (=> b!2577467 (= lt!906822 lt!906821)))

(declare-fun lt!906818 () List!29751)

(declare-fun lt!906820 () List!29751)

(assert (=> b!2577467 (= (++!7290 (++!7290 lt!906818 lt!906820) (efficientList$default$2!129 (c!415158 x!463422))) (++!7290 lt!906818 call!166691))))

(assert (=> b!2577467 (= lt!906821 (lemmaConcatAssociativity!1473 lt!906818 lt!906820 (efficientList$default$2!129 (c!415158 x!463422))))))

(assert (=> b!2577467 (= lt!906820 (list!11197 (right!22898 (c!415158 x!463422))))))

(assert (=> b!2577467 (= lt!906818 (list!11197 (left!22568 (c!415158 x!463422))))))

(assert (=> b!2577467 (= e!1626398 (efficientList!372 (left!22568 (c!415158 x!463422)) (efficientList!372 (right!22898 (c!415158 x!463422)) (efficientList$default$2!129 (c!415158 x!463422)))))))

(declare-fun d!729035 () Bool)

(declare-fun lt!906819 () List!29751)

(assert (=> d!729035 (= lt!906819 (++!7290 (list!11197 (c!415158 x!463422)) (efficientList$default$2!129 (c!415158 x!463422))))))

(assert (=> d!729035 (= lt!906819 e!1626396)))

(declare-fun c!415209 () Bool)

(assert (=> d!729035 (= c!415209 (is-Empty!9250 (c!415158 x!463422)))))

(assert (=> d!729035 (= (efficientList!372 (c!415158 x!463422) (efficientList$default$2!129 (c!415158 x!463422))) lt!906819)))

(declare-fun b!2577468 () Bool)

(assert (=> b!2577468 (= e!1626397 lt!906820)))

(assert (= (and d!729035 c!415209) b!2577464))

(assert (= (and d!729035 (not c!415209)) b!2577466))

(assert (= (and b!2577466 c!415210) b!2577465))

(assert (= (and b!2577466 (not c!415210)) b!2577467))

(assert (= (or b!2577465 b!2577467) bm!166686))

(assert (= (and bm!166686 c!415208) b!2577463))

(assert (= (and bm!166686 (not c!415208)) b!2577468))

(declare-fun m!2912205 () Bool)

(assert (=> b!2577463 m!2912205))

(assert (=> bm!166686 m!2912071))

(declare-fun m!2912207 () Bool)

(assert (=> bm!166686 m!2912207))

(declare-fun m!2912209 () Bool)

(assert (=> b!2577467 m!2912209))

(assert (=> b!2577467 m!2912071))

(declare-fun m!2912211 () Bool)

(assert (=> b!2577467 m!2912211))

(declare-fun m!2912213 () Bool)

(assert (=> b!2577467 m!2912213))

(declare-fun m!2912215 () Bool)

(assert (=> b!2577467 m!2912215))

(assert (=> b!2577467 m!2912071))

(declare-fun m!2912217 () Bool)

(assert (=> b!2577467 m!2912217))

(assert (=> b!2577467 m!2912071))

(assert (=> b!2577467 m!2912213))

(assert (=> b!2577467 m!2912059))

(assert (=> b!2577467 m!2912061))

(declare-fun m!2912219 () Bool)

(assert (=> b!2577467 m!2912219))

(assert (=> b!2577467 m!2912209))

(assert (=> d!729035 m!2911995))

(assert (=> d!729035 m!2911995))

(assert (=> d!729035 m!2912071))

(declare-fun m!2912221 () Bool)

(assert (=> d!729035 m!2912221))

(assert (=> d!728985 d!729035))

(declare-fun d!729037 () Bool)

(assert (=> d!729037 (= (efficientList$default$2!129 (c!415158 x!463422)) Nil!29651)))

(assert (=> d!728985 d!729037))

(declare-fun d!729039 () Bool)

(assert (=> d!729039 (= (inv!39963 x!463422) (isBalanced!2814 (c!415158 x!463422)))))

(declare-fun bs!470694 () Bool)

(assert (= bs!470694 d!729039))

(declare-fun m!2912223 () Bool)

(assert (=> bs!470694 m!2912223))

(assert (=> start!249108 d!729039))

(assert (=> start!249108 d!729015))

(assert (=> start!249108 d!728941))

(assert (=> start!249108 d!729025))

(assert (=> start!249108 d!728951))

(assert (=> start!249108 d!728943))

(declare-fun tp!819101 () Bool)

(declare-fun e!1626403 () Bool)

(declare-fun tp!819102 () Bool)

(declare-fun b!2577475 () Bool)

(assert (=> b!2577475 (= e!1626403 (and (inv!39962 (left!22568 (c!415158 x!463422))) tp!819101 (inv!39962 (right!22898 (c!415158 x!463422))) tp!819102))))

(declare-fun b!2577476 () Bool)

(declare-fun inv!39968 (IArray!18505) Bool)

(assert (=> b!2577476 (= e!1626403 (inv!39968 (xs!12234 (c!415158 x!463422))))))

(assert (=> b!2577292 (= tp!819085 (and (inv!39962 (c!415158 x!463422)) e!1626403))))

(assert (= (and b!2577292 (is-Node!9250 (c!415158 x!463422))) b!2577475))

(assert (= (and b!2577292 (is-Leaf!14107 (c!415158 x!463422))) b!2577476))

(declare-fun m!2912225 () Bool)

(assert (=> b!2577475 m!2912225))

(declare-fun m!2912227 () Bool)

(assert (=> b!2577475 m!2912227))

(declare-fun m!2912229 () Bool)

(assert (=> b!2577476 m!2912229))

(assert (=> b!2577292 m!2911927))

(declare-fun tp!819103 () Bool)

(declare-fun e!1626405 () Bool)

(declare-fun tp!819104 () Bool)

(declare-fun b!2577477 () Bool)

(assert (=> b!2577477 (= e!1626405 (and (inv!39962 (left!22568 (c!415158 x!463423))) tp!819103 (inv!39962 (right!22898 (c!415158 x!463423))) tp!819104))))

(declare-fun b!2577478 () Bool)

(assert (=> b!2577478 (= e!1626405 (inv!39968 (xs!12234 (c!415158 x!463423))))))

(assert (=> b!2577294 (= tp!819086 (and (inv!39962 (c!415158 x!463423)) e!1626405))))

(assert (= (and b!2577294 (is-Node!9250 (c!415158 x!463423))) b!2577477))

(assert (= (and b!2577294 (is-Leaf!14107 (c!415158 x!463423))) b!2577478))

(declare-fun m!2912231 () Bool)

(assert (=> b!2577477 m!2912231))

(declare-fun m!2912233 () Bool)

(assert (=> b!2577477 m!2912233))

(declare-fun m!2912235 () Bool)

(assert (=> b!2577478 m!2912235))

(assert (=> b!2577294 m!2911951))

(declare-fun tp!819105 () Bool)

(declare-fun b!2577479 () Bool)

(declare-fun tp!819106 () Bool)

(declare-fun e!1626407 () Bool)

(assert (=> b!2577479 (= e!1626407 (and (inv!39962 (left!22568 (c!415158 x!463424))) tp!819105 (inv!39962 (right!22898 (c!415158 x!463424))) tp!819106))))

(declare-fun b!2577480 () Bool)

(assert (=> b!2577480 (= e!1626407 (inv!39968 (xs!12234 (c!415158 x!463424))))))

(assert (=> b!2577295 (= tp!819087 (and (inv!39962 (c!415158 x!463424)) e!1626407))))

(assert (= (and b!2577295 (is-Node!9250 (c!415158 x!463424))) b!2577479))

(assert (= (and b!2577295 (is-Leaf!14107 (c!415158 x!463424))) b!2577480))

(declare-fun m!2912237 () Bool)

(assert (=> b!2577479 m!2912237))

(declare-fun m!2912239 () Bool)

(assert (=> b!2577479 m!2912239))

(declare-fun m!2912241 () Bool)

(assert (=> b!2577480 m!2912241))

(assert (=> b!2577295 m!2911953))

(push 1)

(assert (not d!729031))

(assert (not b!2577383))

(assert (not bm!166686))

(assert (not b!2577382))

(assert (not b!2577447))

(assert (not b!2577295))

(assert (not d!729029))

(assert (not d!729035))

(assert (not b!2577475))

(assert (not b!2577480))

(assert (not b!2577476))

(assert (not b!2577438))

(assert (not b!2577463))

(assert (not b!2577379))

(assert (not b!2577426))

(assert (not b!2577370))

(assert (not b!2577375))

(assert (not b!2577294))

(assert (not bm!166684))

(assert (not b!2577467))

(assert (not d!729025))

(assert (not bm!166683))

(assert (not b!2577477))

(assert (not d!729023))

(assert (not d!729039))

(assert (not b!2577378))

(assert (not b!2577292))

(assert (not d!729009))

(assert (not b!2577424))

(assert (not b!2577462))

(assert (not b!2577374))

(assert (not b!2577440))

(assert (not b!2577454))

(assert (not b!2577478))

(assert (not d!729001))

(assert (not bm!166685))

(assert (not b!2577460))

(assert (not b!2577449))

(assert (not d!729019))

(assert (not b!2577371))

(assert (not b!2577430))

(assert (not b!2577445))

(assert (not b!2577450))

(assert (not d!729027))

(assert (not b!2577479))

(assert (not b!2577420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

