; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!1024 () Bool)

(assert start!1024)

(assert (=> start!1024 true))

(declare-fun b!28473 () Bool)

(assert (=> b!28473 true))

(assert (=> b!28473 true))

(declare-fun b!28474 () Bool)

(assert (=> b!28474 true))

(declare-fun b!28485 () Bool)

(declare-fun e!11567 () Bool)

(declare-datatypes ((List!141 0))(
  ( (Nil!139) (Cons!139 (h!5535 (_ BitVec 16)) (t!14697 List!141)) )
))
(declare-datatypes ((IArray!21 0))(
  ( (IArray!22 (innerList!68 List!141)) )
))
(declare-datatypes ((Conc!10 0))(
  ( (Node!10 (left!316 Conc!10) (right!646 Conc!10) (csize!250 Int) (cheight!221 Int)) (Leaf!135 (xs!2587 IArray!21) (csize!251 Int)) (Empty!10) )
))
(declare-datatypes ((BalanceConc!20 0))(
  ( (BalanceConc!21 (c!14905 Conc!10)) )
))
(declare-fun x!10111 () BalanceConc!20)

(declare-fun tp!19367 () Bool)

(declare-fun inv!426 (Conc!10) Bool)

(assert (=> b!28485 (= e!11567 (and (inv!426 (c!14905 x!10111)) tp!19367))))

(declare-fun inst!40 () Bool)

(declare-datatypes ((StringLiteralValueInjection!28 0))(
  ( (StringLiteralValueInjection!29) )
))
(declare-fun thiss!4744 () StringLiteralValueInjection!28)

(declare-fun inv!427 (BalanceConc!20) Bool)

(declare-fun list!71 (BalanceConc!20) List!141)

(declare-datatypes ((TokenValue!88 0))(
  ( (FloatLiteralValue!176 (text!1061 List!141)) (TokenValueExt!87 (__x!393 Int)) (Broken!440 (value!5489 List!141)) (Object!89) (End!88) (Def!88) (Underscore!88) (Match!88) (Else!88) (Error!88) (Case!88) (If!88) (Extends!88) (Abstract!88) (Class!88) (Val!88) (DelimiterValue!176 (del!148 List!141)) (KeywordValue!94 (value!5490 List!141)) (CommentValue!176 (value!5491 List!141)) (WhitespaceValue!176 (value!5492 List!141)) (IndentationValue!88 (value!5493 List!141)) (String!589) (Int32!88) (Broken!441 (value!5494 List!141)) (Boolean!89) (Unit!95) (OperatorValue!91 (op!148 List!141)) (IdentifierValue!176 (value!5495 List!141)) (IdentifierValue!177 (value!5496 List!141)) (WhitespaceValue!177 (value!5497 List!141)) (True!176) (False!176) (Broken!442 (value!5498 List!141)) (Broken!443 (value!5499 List!141)) (True!177) (RightBrace!88) (RightBracket!88) (Colon!88) (Null!88) (Comma!88) (LeftBracket!88) (False!177) (LeftBrace!88) (ImaginaryLiteralValue!88 (text!1062 List!141)) (StringLiteralValue!264 (value!5500 List!141)) (EOFValue!88 (value!5501 List!141)) (IdentValue!88 (value!5502 List!141)) (DelimiterValue!177 (value!5503 List!141)) (DedentValue!88 (value!5504 List!141)) (NewLineValue!88 (value!5505 List!141)) (IntegerValue!264 (value!5506 (_ BitVec 32)) (text!1063 List!141)) (IntegerValue!265 (value!5507 Int) (text!1064 List!141)) (Times!88) (Or!88) (Equal!88) (Minus!88) (Broken!444 (value!5508 List!141)) (And!88) (Div!88) (LessEqual!88) (Mod!88) (Concat!212) (Not!88) (Plus!88) (SpaceValue!88 (value!5509 List!141)) (IntegerValue!266 (value!5510 Int) (text!1065 List!141)) (StringLiteralValue!265 (text!1066 List!141)) (FloatLiteralValue!177 (text!1067 List!141)) (BytesLiteralValue!88 (value!5511 List!141)) (CommentValue!177 (value!5512 List!141)) (StringLiteralValue!266 (value!5513 List!141)) (ErrorTokenValue!88 (msg!149 List!141)) )
))
(declare-fun toCharacters!22 (StringLiteralValueInjection!28 TokenValue!88) BalanceConc!20)

(declare-fun toValue!29 (StringLiteralValueInjection!28 BalanceConc!20) TokenValue!88)

(assert (=> start!1024 (= inst!40 (=> (and (inv!427 x!10111) e!11567) (= (list!71 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111))) (list!71 x!10111))))))

(assert (= start!1024 b!28485))

(declare-fun m!4989 () Bool)

(assert (=> b!28485 m!4989))

(declare-fun m!4991 () Bool)

(assert (=> start!1024 m!4991))

(declare-fun m!4993 () Bool)

(assert (=> start!1024 m!4993))

(declare-fun m!4995 () Bool)

(assert (=> start!1024 m!4995))

(declare-fun m!4997 () Bool)

(assert (=> start!1024 m!4997))

(declare-fun m!4999 () Bool)

(assert (=> start!1024 m!4999))

(assert (=> start!1024 m!4995))

(assert (=> start!1024 m!4991))

(declare-fun res!25921 () Bool)

(declare-fun e!11569 () Bool)

(assert (=> b!28474 (=> res!25921 e!11569)))

(declare-fun x!10112 () BalanceConc!20)

(declare-fun x!10113 () BalanceConc!20)

(assert (=> b!28474 (= res!25921 (not (= (list!71 x!10112) (list!71 x!10113))))))

(declare-fun e!11568 () Bool)

(declare-fun inst!41 () Bool)

(declare-fun e!11570 () Bool)

(assert (=> b!28474 (= inst!41 (=> (and (inv!427 x!10112) e!11570 (inv!427 x!10113) e!11568) e!11569))))

(declare-fun b!28486 () Bool)

(assert (=> b!28486 (= e!11569 (= (toValue!29 thiss!4744 x!10112) (toValue!29 thiss!4744 x!10113)))))

(declare-fun b!28487 () Bool)

(declare-fun tp!19368 () Bool)

(assert (=> b!28487 (= e!11570 (and (inv!426 (c!14905 x!10112)) tp!19368))))

(declare-fun b!28488 () Bool)

(declare-fun tp!19369 () Bool)

(assert (=> b!28488 (= e!11568 (and (inv!426 (c!14905 x!10113)) tp!19369))))

(assert (= (and b!28474 (not res!25921)) b!28486))

(assert (= b!28474 b!28487))

(assert (= b!28474 b!28488))

(declare-fun m!5001 () Bool)

(assert (=> b!28474 m!5001))

(declare-fun m!5003 () Bool)

(assert (=> b!28474 m!5003))

(declare-fun m!5005 () Bool)

(assert (=> b!28474 m!5005))

(declare-fun m!5007 () Bool)

(assert (=> b!28474 m!5007))

(declare-fun m!5009 () Bool)

(assert (=> b!28486 m!5009))

(declare-fun m!5011 () Bool)

(assert (=> b!28486 m!5011))

(declare-fun m!5013 () Bool)

(assert (=> b!28487 m!5013))

(declare-fun m!5015 () Bool)

(assert (=> b!28488 m!5015))

(declare-fun bs!642 () Bool)

(declare-fun neg-inst!41 () Bool)

(declare-fun s!15593 () Bool)

(assert (= bs!642 (and neg-inst!41 s!15593)))

(assert (=> bs!642 (=> true (= (list!71 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111))) (list!71 x!10111)))))

(assert (=> m!4999 m!4995))

(assert (=> m!4999 m!4991))

(assert (=> m!4999 m!4993))

(assert (=> m!4999 s!15593))

(assert (=> m!4995 s!15593))

(declare-fun bs!643 () Bool)

(assert (= bs!643 (and neg-inst!41 start!1024)))

(assert (=> bs!643 (= true inst!40)))

(declare-fun bs!644 () Bool)

(declare-fun neg-inst!40 () Bool)

(declare-fun s!15595 () Bool)

(assert (= bs!644 (and neg-inst!40 s!15595)))

(declare-fun res!25922 () Bool)

(declare-fun e!11571 () Bool)

(assert (=> bs!644 (=> res!25922 e!11571)))

(assert (=> bs!644 (= res!25922 (not (= (list!71 x!10112) (list!71 x!10112))))))

(assert (=> bs!644 (=> true e!11571)))

(declare-fun b!28489 () Bool)

(assert (=> b!28489 (= e!11571 (= (toValue!29 thiss!4744 x!10112) (toValue!29 thiss!4744 x!10112)))))

(assert (= (and bs!644 (not res!25922)) b!28489))

(assert (=> m!5009 m!5001))

(assert (=> m!5009 m!5001))

(assert (=> m!5009 s!15595))

(assert (=> m!5009 s!15595))

(declare-fun bs!645 () Bool)

(declare-fun s!15597 () Bool)

(assert (= bs!645 (and neg-inst!40 s!15597)))

(declare-fun res!25923 () Bool)

(declare-fun e!11572 () Bool)

(assert (=> bs!645 (=> res!25923 e!11572)))

(assert (=> bs!645 (= res!25923 (not (= (list!71 x!10112) (list!71 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111))))))))

(assert (=> bs!645 (=> true e!11572)))

(declare-fun b!28490 () Bool)

(assert (=> b!28490 (= e!11572 (= (toValue!29 thiss!4744 x!10112) (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111)))))))

(assert (= (and bs!645 (not res!25923)) b!28490))

(declare-fun bs!646 () Bool)

(assert (= bs!646 (and m!4993 m!5009)))

(assert (=> bs!646 m!5001))

(assert (=> bs!646 m!4993))

(assert (=> bs!646 s!15597))

(declare-fun bs!647 () Bool)

(declare-fun s!15599 () Bool)

(assert (= bs!647 (and neg-inst!40 s!15599)))

(declare-fun res!25924 () Bool)

(declare-fun e!11573 () Bool)

(assert (=> bs!647 (=> res!25924 e!11573)))

(assert (=> bs!647 (= res!25924 (not (= (list!71 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111))) (list!71 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111))))))))

(assert (=> bs!647 (=> true e!11573)))

(declare-fun b!28491 () Bool)

(assert (=> b!28491 (= e!11573 (= (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111))) (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111)))))))

(assert (= (and bs!647 (not res!25924)) b!28491))

(assert (=> m!4993 s!15599))

(declare-fun bs!648 () Bool)

(declare-fun s!15601 () Bool)

(assert (= bs!648 (and neg-inst!40 s!15601)))

(declare-fun res!25925 () Bool)

(declare-fun e!11574 () Bool)

(assert (=> bs!648 (=> res!25925 e!11574)))

(assert (=> bs!648 (= res!25925 (not (= (list!71 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111))) (list!71 x!10112))))))

(assert (=> bs!648 (=> true e!11574)))

(declare-fun b!28492 () Bool)

(assert (=> b!28492 (= e!11574 (= (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111))) (toValue!29 thiss!4744 x!10112)))))

(assert (= (and bs!648 (not res!25925)) b!28492))

(assert (=> bs!646 m!4993))

(assert (=> bs!646 m!5001))

(assert (=> bs!646 s!15601))

(assert (=> m!4993 s!15599))

(declare-fun bs!649 () Bool)

(declare-fun s!15603 () Bool)

(assert (= bs!649 (and neg-inst!40 s!15603)))

(declare-fun res!25926 () Bool)

(declare-fun e!11575 () Bool)

(assert (=> bs!649 (=> res!25926 e!11575)))

(assert (=> bs!649 (= res!25926 (not (= (list!71 x!10112) (list!71 x!10111))))))

(assert (=> bs!649 (=> true e!11575)))

(declare-fun b!28493 () Bool)

(assert (=> b!28493 (= e!11575 (= (toValue!29 thiss!4744 x!10112) (toValue!29 thiss!4744 x!10111)))))

(assert (= (and bs!649 (not res!25926)) b!28493))

(declare-fun bs!650 () Bool)

(assert (= bs!650 (and m!4999 m!5009)))

(assert (=> bs!650 m!5001))

(assert (=> bs!650 m!4999))

(assert (=> bs!650 s!15603))

(declare-fun bs!651 () Bool)

(declare-fun s!15605 () Bool)

(assert (= bs!651 (and neg-inst!40 s!15605)))

(declare-fun res!25927 () Bool)

(declare-fun e!11576 () Bool)

(assert (=> bs!651 (=> res!25927 e!11576)))

(assert (=> bs!651 (= res!25927 (not (= (list!71 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111))) (list!71 x!10111))))))

(assert (=> bs!651 (=> true e!11576)))

(declare-fun b!28494 () Bool)

(assert (=> b!28494 (= e!11576 (= (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111))) (toValue!29 thiss!4744 x!10111)))))

(assert (= (and bs!651 (not res!25927)) b!28494))

(declare-fun bs!652 () Bool)

(assert (= bs!652 (and m!4999 m!4993)))

(assert (=> bs!652 m!4993))

(assert (=> bs!652 m!4999))

(assert (=> bs!652 s!15605))

(declare-fun bs!653 () Bool)

(declare-fun s!15607 () Bool)

(assert (= bs!653 (and neg-inst!40 s!15607)))

(declare-fun res!25928 () Bool)

(declare-fun e!11577 () Bool)

(assert (=> bs!653 (=> res!25928 e!11577)))

(assert (=> bs!653 (= res!25928 (not (= (list!71 x!10111) (list!71 x!10111))))))

(assert (=> bs!653 (=> true e!11577)))

(declare-fun b!28495 () Bool)

(assert (=> b!28495 (= e!11577 (= (toValue!29 thiss!4744 x!10111) (toValue!29 thiss!4744 x!10111)))))

(assert (= (and bs!653 (not res!25928)) b!28495))

(assert (=> m!4999 s!15607))

(declare-fun bs!654 () Bool)

(declare-fun s!15609 () Bool)

(assert (= bs!654 (and neg-inst!40 s!15609)))

(declare-fun res!25929 () Bool)

(declare-fun e!11578 () Bool)

(assert (=> bs!654 (=> res!25929 e!11578)))

(assert (=> bs!654 (= res!25929 (not (= (list!71 x!10111) (list!71 x!10112))))))

(assert (=> bs!654 (=> true e!11578)))

(declare-fun b!28496 () Bool)

(assert (=> b!28496 (= e!11578 (= (toValue!29 thiss!4744 x!10111) (toValue!29 thiss!4744 x!10112)))))

(assert (= (and bs!654 (not res!25929)) b!28496))

(assert (=> bs!650 m!4999))

(assert (=> bs!650 m!5001))

(assert (=> bs!650 s!15609))

(declare-fun bs!655 () Bool)

(declare-fun s!15611 () Bool)

(assert (= bs!655 (and neg-inst!40 s!15611)))

(declare-fun res!25930 () Bool)

(declare-fun e!11579 () Bool)

(assert (=> bs!655 (=> res!25930 e!11579)))

(assert (=> bs!655 (= res!25930 (not (= (list!71 x!10111) (list!71 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111))))))))

(assert (=> bs!655 (=> true e!11579)))

(declare-fun b!28497 () Bool)

(assert (=> b!28497 (= e!11579 (= (toValue!29 thiss!4744 x!10111) (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111)))))))

(assert (= (and bs!655 (not res!25930)) b!28497))

(assert (=> bs!652 m!4999))

(assert (=> bs!652 m!4993))

(assert (=> bs!652 s!15611))

(assert (=> m!4999 s!15607))

(declare-fun bs!656 () Bool)

(declare-fun s!15613 () Bool)

(assert (= bs!656 (and neg-inst!40 s!15613)))

(declare-fun res!25931 () Bool)

(declare-fun e!11580 () Bool)

(assert (=> bs!656 (=> res!25931 e!11580)))

(assert (=> bs!656 (= res!25931 (not (= (list!71 x!10112) (list!71 x!10113))))))

(assert (=> bs!656 (=> true e!11580)))

(declare-fun b!28498 () Bool)

(assert (=> b!28498 (= e!11580 (= (toValue!29 thiss!4744 x!10112) (toValue!29 thiss!4744 x!10113)))))

(assert (= (and bs!656 (not res!25931)) b!28498))

(declare-fun bs!657 () Bool)

(assert (= bs!657 (and m!5003 m!5009)))

(assert (=> bs!657 m!5001))

(assert (=> bs!657 m!5003))

(assert (=> bs!657 s!15613))

(declare-fun bs!658 () Bool)

(declare-fun s!15615 () Bool)

(assert (= bs!658 (and neg-inst!40 s!15615)))

(declare-fun res!25932 () Bool)

(declare-fun e!11581 () Bool)

(assert (=> bs!658 (=> res!25932 e!11581)))

(assert (=> bs!658 (= res!25932 (not (= (list!71 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111))) (list!71 x!10113))))))

(assert (=> bs!658 (=> true e!11581)))

(declare-fun b!28499 () Bool)

(assert (=> b!28499 (= e!11581 (= (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111))) (toValue!29 thiss!4744 x!10113)))))

(assert (= (and bs!658 (not res!25932)) b!28499))

(declare-fun bs!659 () Bool)

(assert (= bs!659 (and m!5003 m!4993)))

(assert (=> bs!659 m!4993))

(assert (=> bs!659 m!5003))

(assert (=> bs!659 s!15615))

(declare-fun bs!660 () Bool)

(declare-fun s!15617 () Bool)

(assert (= bs!660 (and neg-inst!40 s!15617)))

(declare-fun res!25933 () Bool)

(declare-fun e!11582 () Bool)

(assert (=> bs!660 (=> res!25933 e!11582)))

(assert (=> bs!660 (= res!25933 (not (= (list!71 x!10111) (list!71 x!10113))))))

(assert (=> bs!660 (=> true e!11582)))

(declare-fun b!28500 () Bool)

(assert (=> b!28500 (= e!11582 (= (toValue!29 thiss!4744 x!10111) (toValue!29 thiss!4744 x!10113)))))

(assert (= (and bs!660 (not res!25933)) b!28500))

(declare-fun bs!661 () Bool)

(assert (= bs!661 (and m!5003 m!4999)))

(assert (=> bs!661 m!4999))

(assert (=> bs!661 m!5003))

(assert (=> bs!661 s!15617))

(declare-fun bs!662 () Bool)

(declare-fun s!15619 () Bool)

(assert (= bs!662 (and neg-inst!40 s!15619)))

(declare-fun res!25934 () Bool)

(declare-fun e!11583 () Bool)

(assert (=> bs!662 (=> res!25934 e!11583)))

(assert (=> bs!662 (= res!25934 (not (= (list!71 x!10113) (list!71 x!10113))))))

(assert (=> bs!662 (=> true e!11583)))

(declare-fun b!28501 () Bool)

(assert (=> b!28501 (= e!11583 (= (toValue!29 thiss!4744 x!10113) (toValue!29 thiss!4744 x!10113)))))

(assert (= (and bs!662 (not res!25934)) b!28501))

(assert (=> m!5003 s!15619))

(declare-fun bs!663 () Bool)

(declare-fun s!15621 () Bool)

(assert (= bs!663 (and neg-inst!40 s!15621)))

(declare-fun res!25935 () Bool)

(declare-fun e!11584 () Bool)

(assert (=> bs!663 (=> res!25935 e!11584)))

(assert (=> bs!663 (= res!25935 (not (= (list!71 x!10113) (list!71 x!10112))))))

(assert (=> bs!663 (=> true e!11584)))

(declare-fun b!28502 () Bool)

(assert (=> b!28502 (= e!11584 (= (toValue!29 thiss!4744 x!10113) (toValue!29 thiss!4744 x!10112)))))

(assert (= (and bs!663 (not res!25935)) b!28502))

(assert (=> bs!657 m!5003))

(assert (=> bs!657 m!5001))

(assert (=> bs!657 s!15621))

(declare-fun bs!664 () Bool)

(declare-fun s!15623 () Bool)

(assert (= bs!664 (and neg-inst!40 s!15623)))

(declare-fun res!25936 () Bool)

(declare-fun e!11585 () Bool)

(assert (=> bs!664 (=> res!25936 e!11585)))

(assert (=> bs!664 (= res!25936 (not (= (list!71 x!10113) (list!71 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111))))))))

(assert (=> bs!664 (=> true e!11585)))

(declare-fun b!28503 () Bool)

(assert (=> b!28503 (= e!11585 (= (toValue!29 thiss!4744 x!10113) (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111)))))))

(assert (= (and bs!664 (not res!25936)) b!28503))

(assert (=> bs!659 m!5003))

(assert (=> bs!659 m!4993))

(assert (=> bs!659 s!15623))

(declare-fun bs!665 () Bool)

(declare-fun s!15625 () Bool)

(assert (= bs!665 (and neg-inst!40 s!15625)))

(declare-fun res!25937 () Bool)

(declare-fun e!11586 () Bool)

(assert (=> bs!665 (=> res!25937 e!11586)))

(assert (=> bs!665 (= res!25937 (not (= (list!71 x!10113) (list!71 x!10111))))))

(assert (=> bs!665 (=> true e!11586)))

(declare-fun b!28504 () Bool)

(assert (=> b!28504 (= e!11586 (= (toValue!29 thiss!4744 x!10113) (toValue!29 thiss!4744 x!10111)))))

(assert (= (and bs!665 (not res!25937)) b!28504))

(assert (=> bs!661 m!5003))

(assert (=> bs!661 m!4999))

(assert (=> bs!661 s!15625))

(assert (=> m!5003 s!15619))

(assert (=> m!5011 s!15619))

(declare-fun bs!666 () Bool)

(assert (= bs!666 (and m!5011 m!4999)))

(assert (=> bs!666 s!15617))

(declare-fun bs!667 () Bool)

(assert (= bs!667 (and m!5011 m!5009)))

(assert (=> bs!667 s!15613))

(declare-fun bs!668 () Bool)

(assert (= bs!668 (and m!5011 m!5003)))

(assert (=> bs!668 s!15619))

(declare-fun bs!669 () Bool)

(assert (= bs!669 (and m!5011 m!4993)))

(assert (=> bs!669 s!15615))

(assert (=> m!5011 s!15619))

(assert (=> bs!668 s!15619))

(assert (=> bs!669 s!15623))

(assert (=> bs!667 s!15621))

(assert (=> bs!666 s!15625))

(declare-fun bs!670 () Bool)

(assert (= bs!670 (and m!5001 m!5003 m!5011)))

(assert (=> bs!670 s!15621))

(declare-fun bs!671 () Bool)

(assert (= bs!671 (and m!5001 m!5009)))

(assert (=> bs!671 s!15595))

(declare-fun bs!672 () Bool)

(assert (= bs!672 (and m!5001 m!4999)))

(assert (=> bs!672 s!15609))

(assert (=> m!5001 s!15595))

(declare-fun bs!673 () Bool)

(assert (= bs!673 (and m!5001 m!4993)))

(assert (=> bs!673 s!15601))

(assert (=> bs!672 s!15603))

(assert (=> bs!673 s!15597))

(assert (=> bs!670 s!15613))

(assert (=> bs!671 s!15595))

(assert (=> m!5001 s!15595))

(declare-fun bs!674 () Bool)

(assert (= bs!674 (and m!4995 m!5003 m!5011)))

(assert (=> bs!674 s!15625))

(declare-fun bs!675 () Bool)

(assert (= bs!675 (and m!4995 m!4999)))

(assert (=> bs!675 s!15607))

(declare-fun bs!676 () Bool)

(assert (= bs!676 (and m!4995 m!5009 m!5001)))

(assert (=> bs!676 s!15603))

(declare-fun bs!677 () Bool)

(assert (= bs!677 (and m!4995 m!4993)))

(assert (=> bs!677 s!15605))

(assert (=> m!4995 s!15607))

(assert (=> bs!675 s!15607))

(assert (=> bs!676 s!15609))

(assert (=> m!4995 s!15607))

(assert (=> bs!674 s!15617))

(assert (=> bs!677 s!15611))

(declare-fun bs!678 () Bool)

(assert (= bs!678 (and neg-inst!40 b!28474)))

(assert (=> bs!678 (= true inst!41)))

(declare-fun b!28475 () Bool)

(declare-fun e!11564 () Bool)

(declare-fun e!11563 () Bool)

(assert (=> b!28475 (= e!11564 e!11563)))

(declare-fun res!25919 () Bool)

(assert (=> b!28475 (=> res!25919 e!11563)))

(declare-fun lambda!208 () Int)

(declare-fun lambda!209 () Int)

(declare-fun equivClasses!3 (Int Int) Bool)

(assert (=> b!28475 (= res!25919 (not (equivClasses!3 lambda!208 lambda!209)))))

(declare-fun lambda!210 () Int)

(declare-fun Forall2!5 (Int) Bool)

(assert (=> b!28475 (= (equivClasses!3 lambda!208 lambda!209) (Forall2!5 lambda!210))))

(declare-fun e!11566 () Bool)

(declare-fun e!11565 () Bool)

(assert (=> b!28473 (= e!11566 e!11565)))

(declare-fun res!25920 () Bool)

(assert (=> b!28473 (=> res!25920 e!11565)))

(declare-fun semiInverseModEq!7 (Int Int) Bool)

(assert (=> b!28473 (= res!25920 (not (semiInverseModEq!7 lambda!208 lambda!209)))))

(declare-fun lambda!207 () Int)

(declare-fun Forall!9 (Int) Bool)

(assert (=> b!28473 (= (semiInverseModEq!7 lambda!208 lambda!209) (Forall!9 lambda!207))))

(declare-fun res!25917 () Bool)

(assert (=> start!1024 (=> res!25917 e!11566)))

(assert (=> start!1024 (= res!25917 (not (Forall!9 lambda!207)))))

(assert (=> start!1024 (= (Forall!9 lambda!207) inst!40)))

(assert (=> start!1024 (not e!11566)))

(assert (=> start!1024 true))

(declare-fun b!28476 () Bool)

(declare-datatypes ((TokenValueInjection!4 0))(
  ( (TokenValueInjection!5 (toValue!567 Int) (toChars!426 Int)) )
))
(declare-fun inv!428 (TokenValueInjection!4) Bool)

(assert (=> b!28476 (= e!11563 (inv!428 (TokenValueInjection!5 lambda!209 lambda!208)))))

(assert (=> b!28474 (= e!11565 e!11564)))

(declare-fun res!25918 () Bool)

(assert (=> b!28474 (=> res!25918 e!11564)))

(assert (=> b!28474 (= res!25918 (not (Forall2!5 lambda!210)))))

(assert (=> b!28474 (= (Forall2!5 lambda!210) inst!41)))

(assert (= neg-inst!41 inst!40))

(assert (= (and start!1024 (not res!25917)) b!28473))

(assert (= (and b!28473 (not res!25920)) b!28474))

(assert (= neg-inst!40 inst!41))

(assert (= (and b!28474 (not res!25918)) b!28475))

(assert (= (and b!28475 (not res!25919)) b!28476))

(declare-fun m!5017 () Bool)

(assert (=> b!28473 m!5017))

(assert (=> b!28473 m!5017))

(declare-fun m!5019 () Bool)

(assert (=> b!28473 m!5019))

(assert (=> start!1024 m!5019))

(assert (=> start!1024 m!5019))

(declare-fun m!5021 () Bool)

(assert (=> b!28476 m!5021))

(declare-fun m!5023 () Bool)

(assert (=> b!28475 m!5023))

(assert (=> b!28475 m!5023))

(declare-fun m!5025 () Bool)

(assert (=> b!28475 m!5025))

(assert (=> b!28474 m!5025))

(assert (=> b!28474 m!5025))

(push 1)

(assert (not bs!658))

(assert (not bs!651))

(assert (not bs!654))

(assert (not bs!660))

(assert (not bs!647))

(assert (not bs!642))

(assert (not b!28487))

(assert (not bs!665))

(assert (not bs!655))

(assert (not b!28485))

(assert (not b!28473))

(assert (not bs!663))

(assert (not b!28488))

(assert (not b!28492))

(assert (not b!28503))

(assert (not bs!662))

(assert (not bs!649))

(assert (not bs!644))

(assert (not b!28493))

(assert (not b!28475))

(assert (not b!28494))

(assert (not b!28489))

(assert (not b!28502))

(assert (not bs!653))

(assert (not b!28476))

(assert (not bs!664))

(assert (not b!28498))

(assert (not start!1024))

(assert (not b!28495))

(assert (not bs!648))

(assert (not bs!656))

(assert (not b!28499))

(assert (not b!28474))

(assert (not bs!645))

(assert (not b!28486))

(assert (not b!28496))

(assert (not b!28504))

(assert (not b!28490))

(assert (not b!28497))

(assert (not b!28500))

(assert (not b!28501))

(assert (not b!28491))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!712 () Bool)

(assert (= bs!712 (and m!5009 b!28489)))

(assert (=> bs!712 m!5009))

(assert (=> bs!712 m!5009))

(declare-fun bs!713 () Bool)

(assert (= bs!713 (and m!4993 m!5009 b!28490)))

(assert (=> bs!713 m!5009))

(declare-fun m!5065 () Bool)

(assert (=> bs!713 m!5065))

(declare-fun bs!714 () Bool)

(assert (= bs!714 (and m!4993 b!28491)))

(assert (=> bs!714 m!5065))

(assert (=> bs!714 m!5065))

(declare-fun bs!715 () Bool)

(assert (= bs!715 (and m!4993 m!5009 b!28492)))

(assert (=> bs!715 m!5065))

(assert (=> bs!715 m!5009))

(declare-fun bs!716 () Bool)

(assert (= bs!716 (and m!4999 m!5009 b!28493)))

(assert (=> bs!716 m!5009))

(assert (=> bs!716 m!4995))

(declare-fun bs!717 () Bool)

(assert (= bs!717 (and m!4999 m!4993 b!28494)))

(assert (=> bs!717 m!5065))

(assert (=> bs!717 m!4995))

(declare-fun bs!718 () Bool)

(assert (= bs!718 (and m!4999 b!28495)))

(assert (=> bs!718 m!4995))

(assert (=> bs!718 m!4995))

(declare-fun bs!719 () Bool)

(assert (= bs!719 (and m!4999 m!5009 b!28496)))

(assert (=> bs!719 m!4995))

(assert (=> bs!719 m!5009))

(declare-fun bs!720 () Bool)

(assert (= bs!720 (and m!4999 m!4993 b!28497)))

(assert (=> bs!720 m!4995))

(assert (=> bs!720 m!5065))

(declare-fun bs!721 () Bool)

(assert (= bs!721 (and m!5003 m!5009 b!28498)))

(assert (=> bs!721 m!5009))

(assert (=> bs!721 m!5011))

(declare-fun bs!722 () Bool)

(assert (= bs!722 (and m!5003 m!4993 b!28499)))

(assert (=> bs!722 m!5065))

(assert (=> bs!722 m!5011))

(declare-fun bs!723 () Bool)

(assert (= bs!723 (and m!5003 m!4999 b!28500)))

(assert (=> bs!723 m!4995))

(assert (=> bs!723 m!5011))

(declare-fun bs!724 () Bool)

(assert (= bs!724 (and m!5003 b!28501)))

(assert (=> bs!724 m!5011))

(assert (=> bs!724 m!5011))

(declare-fun bs!725 () Bool)

(assert (= bs!725 (and m!5003 m!5009 b!28502)))

(assert (=> bs!725 m!5011))

(assert (=> bs!725 m!5009))

(declare-fun bs!726 () Bool)

(assert (= bs!726 (and m!5003 m!4993 b!28503)))

(assert (=> bs!726 m!5011))

(assert (=> bs!726 m!5065))

(declare-fun bs!727 () Bool)

(assert (= bs!727 (and m!5003 m!4999 b!28504)))

(assert (=> bs!727 m!5011))

(assert (=> bs!727 m!4995))

(push 1)

(assert (not bs!658))

(assert (not bs!651))

(assert (not bs!654))

(assert (not bs!660))

(assert (not bs!647))

(assert (not bs!642))

(assert (not b!28487))

(assert (not bs!665))

(assert (not bs!655))

(assert (not b!28485))

(assert (not b!28473))

(assert (not bs!663))

(assert (not b!28488))

(assert (not b!28492))

(assert (not b!28503))

(assert (not bs!662))

(assert (not bs!649))

(assert (not bs!644))

(assert (not b!28493))

(assert (not b!28475))

(assert (not b!28494))

(assert (not b!28489))

(assert (not b!28502))

(assert (not bs!653))

(assert (not b!28476))

(assert (not bs!664))

(assert (not b!28498))

(assert (not start!1024))

(assert (not b!28495))

(assert (not bs!648))

(assert (not bs!656))

(assert (not b!28499))

(assert (not b!28474))

(assert (not bs!645))

(assert (not b!28486))

(assert (not b!28496))

(assert (not b!28504))

(assert (not b!28490))

(assert (not b!28497))

(assert (not b!28500))

(assert (not b!28501))

(assert (not b!28491))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2101 () Bool)

(declare-fun efficientList!16 (BalanceConc!20) List!141)

(assert (=> d!2101 (= (toValue!29 thiss!4744 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111))) (StringLiteralValue!264 (efficientList!16 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111)))))))

(declare-fun bs!750 () Bool)

(assert (= bs!750 d!2101))

(assert (=> bs!750 m!4991))

(declare-fun m!5081 () Bool)

(assert (=> bs!750 m!5081))

(assert (=> b!28491 d!2101))

(assert (=> b!28494 d!2101))

(declare-fun d!2103 () Bool)

(assert (=> d!2103 (= (toValue!29 thiss!4744 x!10111) (StringLiteralValue!264 (efficientList!16 x!10111)))))

(declare-fun bs!751 () Bool)

(assert (= bs!751 d!2103))

(declare-fun m!5083 () Bool)

(assert (=> bs!751 m!5083))

(assert (=> b!28494 d!2103))

(declare-fun d!2105 () Bool)

(assert (=> d!2105 (= (toValue!29 thiss!4744 x!10113) (StringLiteralValue!264 (efficientList!16 x!10113)))))

(declare-fun bs!752 () Bool)

(assert (= bs!752 d!2105))

(declare-fun m!5085 () Bool)

(assert (=> bs!752 m!5085))

(assert (=> b!28504 d!2105))

(assert (=> b!28504 d!2103))

(declare-fun d!2107 () Bool)

(declare-fun list!74 (Conc!10) List!141)

(assert (=> d!2107 (= (list!71 x!10113) (list!74 (c!14905 x!10113)))))

(declare-fun bs!753 () Bool)

(assert (= bs!753 d!2107))

(declare-fun m!5087 () Bool)

(assert (=> bs!753 m!5087))

(assert (=> bs!662 d!2107))

(declare-fun d!2109 () Bool)

(assert (=> d!2109 (= (list!71 x!10112) (list!74 (c!14905 x!10112)))))

(declare-fun bs!754 () Bool)

(assert (= bs!754 d!2109))

(declare-fun m!5089 () Bool)

(assert (=> bs!754 m!5089))

(assert (=> bs!656 d!2109))

(assert (=> bs!656 d!2107))

(declare-fun d!2111 () Bool)

(assert (=> d!2111 (= (list!71 x!10111) (list!74 (c!14905 x!10111)))))

(declare-fun bs!755 () Bool)

(assert (= bs!755 d!2111))

(declare-fun m!5091 () Bool)

(assert (=> bs!755 m!5091))

(assert (=> bs!653 d!2111))

(declare-fun d!2113 () Bool)

(assert (=> d!2113 (= (toValue!29 thiss!4744 x!10112) (StringLiteralValue!264 (efficientList!16 x!10112)))))

(declare-fun bs!756 () Bool)

(assert (= bs!756 d!2113))

(declare-fun m!5093 () Bool)

(assert (=> bs!756 m!5093))

(assert (=> b!28486 d!2113))

(assert (=> b!28486 d!2105))

(declare-fun d!2115 () Bool)

(declare-fun c!14909 () Bool)

(assert (=> d!2115 (= c!14909 (is-Node!10 (c!14905 x!10112)))))

(declare-fun e!11639 () Bool)

(assert (=> d!2115 (= (inv!426 (c!14905 x!10112)) e!11639)))

(declare-fun b!28567 () Bool)

(declare-fun inv!432 (Conc!10) Bool)

(assert (=> b!28567 (= e!11639 (inv!432 (c!14905 x!10112)))))

(declare-fun b!28568 () Bool)

(declare-fun e!11640 () Bool)

(assert (=> b!28568 (= e!11639 e!11640)))

(declare-fun res!25985 () Bool)

(assert (=> b!28568 (= res!25985 (not (is-Leaf!135 (c!14905 x!10112))))))

(assert (=> b!28568 (=> res!25985 e!11640)))

(declare-fun b!28569 () Bool)

(declare-fun inv!433 (Conc!10) Bool)

(assert (=> b!28569 (= e!11640 (inv!433 (c!14905 x!10112)))))

(assert (= (and d!2115 c!14909) b!28567))

(assert (= (and d!2115 (not c!14909)) b!28568))

(assert (= (and b!28568 (not res!25985)) b!28569))

(declare-fun m!5095 () Bool)

(assert (=> b!28567 m!5095))

(declare-fun m!5097 () Bool)

(assert (=> b!28569 m!5097))

(assert (=> b!28487 d!2115))

(declare-fun d!2117 () Bool)

(assert (=> d!2117 (= (list!71 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111))) (list!74 (c!14905 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111)))))))

(declare-fun bs!757 () Bool)

(assert (= bs!757 d!2117))

(declare-fun m!5099 () Bool)

(assert (=> bs!757 m!5099))

(assert (=> bs!642 d!2117))

(declare-fun d!2119 () Bool)

(declare-fun c!14913 () Bool)

(assert (=> d!2119 (= c!14913 (is-StringLiteralValue!264 (toValue!29 thiss!4744 x!10111)))))

(declare-fun e!11643 () BalanceConc!20)

(assert (=> d!2119 (= (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!10111)) e!11643)))

(declare-fun b!28574 () Bool)

(declare-fun seqFromList!4 (List!141) BalanceConc!20)

(assert (=> b!28574 (= e!11643 (seqFromList!4 (value!5500 (toValue!29 thiss!4744 x!10111))))))

(declare-fun b!28575 () Bool)

(assert (=> b!28575 (= e!11643 (BalanceConc!21 Empty!10))))

(assert (= (and d!2119 c!14913) b!28574))

(assert (= (and d!2119 (not c!14913)) b!28575))

(declare-fun m!5101 () Bool)

(assert (=> b!28574 m!5101))

(assert (=> bs!642 d!2119))

(assert (=> bs!642 d!2103))

(assert (=> bs!642 d!2111))

(assert (=> b!28501 d!2105))

(declare-fun d!2121 () Bool)

(declare-fun c!14914 () Bool)

(assert (=> d!2121 (= c!14914 (is-Node!10 (c!14905 x!10111)))))

(declare-fun e!11644 () Bool)

(assert (=> d!2121 (= (inv!426 (c!14905 x!10111)) e!11644)))

(declare-fun b!28576 () Bool)

(assert (=> b!28576 (= e!11644 (inv!432 (c!14905 x!10111)))))

(declare-fun b!28577 () Bool)

(declare-fun e!11645 () Bool)

(assert (=> b!28577 (= e!11644 e!11645)))

(declare-fun res!25986 () Bool)

(assert (=> b!28577 (= res!25986 (not (is-Leaf!135 (c!14905 x!10111))))))

(assert (=> b!28577 (=> res!25986 e!11645)))

(declare-fun b!28578 () Bool)

(assert (=> b!28578 (= e!11645 (inv!433 (c!14905 x!10111)))))

(assert (= (and d!2121 c!14914) b!28576))

(assert (= (and d!2121 (not c!14914)) b!28577))

(assert (= (and b!28577 (not res!25986)) b!28578))

(declare-fun m!5103 () Bool)

(assert (=> b!28576 m!5103))

(declare-fun m!5105 () Bool)

(assert (=> b!28578 m!5105))

(assert (=> b!28485 d!2121))

(assert (=> b!28498 d!2113))

(assert (=> b!28498 d!2105))

(assert (=> b!28474 d!2109))

(declare-fun d!2123 () Bool)

(declare-fun isBalanced!4 (Conc!10) Bool)

(assert (=> d!2123 (= (inv!427 x!10112) (isBalanced!4 (c!14905 x!10112)))))

(declare-fun bs!758 () Bool)

(assert (= bs!758 d!2123))

(declare-fun m!5107 () Bool)

(assert (=> bs!758 m!5107))

(assert (=> b!28474 d!2123))

(assert (=> b!28474 d!2107))

(declare-fun d!2125 () Bool)

(assert (=> d!2125 (= (inv!427 x!10113) (isBalanced!4 (c!14905 x!10113)))))

(declare-fun bs!759 () Bool)

(assert (= bs!759 d!2125))

(declare-fun m!5109 () Bool)

(assert (=> bs!759 m!5109))

(assert (=> b!28474 d!2125))

(declare-fun d!2127 () Bool)

(declare-fun choose!1125 (Int) Bool)

(assert (=> d!2127 (= (Forall2!5 lambda!210) (choose!1125 lambda!210))))

(declare-fun bs!760 () Bool)

(assert (= bs!760 d!2127))

(declare-fun m!5111 () Bool)

(assert (=> bs!760 m!5111))

(assert (=> b!28474 d!2127))

(assert (=> b!28495 d!2103))

(assert (=> bs!644 d!2109))

(assert (=> bs!658 d!2117))

(assert (=> bs!658 d!2107))

(assert (=> bs!648 d!2117))

(assert (=> bs!648 d!2109))

(declare-fun bs!761 () Bool)

(declare-fun d!2129 () Bool)

(assert (= bs!761 (and d!2129 start!1024)))

(declare-fun lambda!249 () Int)

(assert (=> bs!761 (not (= lambda!249 lambda!207))))

(assert (=> d!2129 true))

(declare-fun order!13 () Int)

(declare-fun order!15 () Int)

(declare-fun dynLambda!5 (Int Int) Int)

(declare-fun dynLambda!6 (Int Int) Int)

(assert (=> d!2129 (< (dynLambda!5 order!13 lambda!208) (dynLambda!6 order!15 lambda!249))))

(assert (=> d!2129 true))

(declare-fun order!17 () Int)

(declare-fun dynLambda!7 (Int Int) Int)

(assert (=> d!2129 (< (dynLambda!7 order!17 lambda!209) (dynLambda!6 order!15 lambda!249))))

(assert (=> d!2129 (= (semiInverseModEq!7 lambda!208 lambda!209) (Forall!9 lambda!249))))

(declare-fun bs!762 () Bool)

(assert (= bs!762 d!2129))

(declare-fun m!5113 () Bool)

(assert (=> bs!762 m!5113))

(assert (=> b!28473 d!2129))

(declare-fun d!2131 () Bool)

(declare-fun choose!1126 (Int) Bool)

(assert (=> d!2131 (= (Forall!9 lambda!207) (choose!1126 lambda!207))))

(declare-fun bs!763 () Bool)

(assert (= bs!763 d!2131))

(declare-fun m!5115 () Bool)

(assert (=> bs!763 m!5115))

(assert (=> b!28473 d!2131))

(declare-fun d!2133 () Bool)

(declare-fun c!14915 () Bool)

(assert (=> d!2133 (= c!14915 (is-Node!10 (c!14905 x!10113)))))

(declare-fun e!11646 () Bool)

(assert (=> d!2133 (= (inv!426 (c!14905 x!10113)) e!11646)))

(declare-fun b!28583 () Bool)

(assert (=> b!28583 (= e!11646 (inv!432 (c!14905 x!10113)))))

(declare-fun b!28584 () Bool)

(declare-fun e!11647 () Bool)

(assert (=> b!28584 (= e!11646 e!11647)))

(declare-fun res!25987 () Bool)

(assert (=> b!28584 (= res!25987 (not (is-Leaf!135 (c!14905 x!10113))))))

(assert (=> b!28584 (=> res!25987 e!11647)))

(declare-fun b!28585 () Bool)

(assert (=> b!28585 (= e!11647 (inv!433 (c!14905 x!10113)))))

(assert (= (and d!2133 c!14915) b!28583))

(assert (= (and d!2133 (not c!14915)) b!28584))

(assert (= (and b!28584 (not res!25987)) b!28585))

(declare-fun m!5117 () Bool)

(assert (=> b!28583 m!5117))

(declare-fun m!5119 () Bool)

(assert (=> b!28585 m!5119))

(assert (=> b!28488 d!2133))

(assert (=> bs!663 d!2107))

(assert (=> bs!663 d!2109))

(assert (=> b!28502 d!2105))

(assert (=> b!28502 d!2113))

(assert (=> bs!654 d!2111))

(assert (=> bs!654 d!2109))

(assert (=> b!28492 d!2101))

(assert (=> b!28492 d!2113))

(declare-fun bs!764 () Bool)

(declare-fun d!2135 () Bool)

(assert (= bs!764 (and d!2135 b!28474)))

(declare-fun lambda!252 () Int)

(assert (=> bs!764 (not (= lambda!252 lambda!210))))

(assert (=> d!2135 true))

(declare-fun order!19 () Int)

(declare-fun dynLambda!8 (Int Int) Int)

(assert (=> d!2135 (< (dynLambda!7 order!17 lambda!209) (dynLambda!8 order!19 lambda!252))))

(assert (=> d!2135 (= (equivClasses!3 lambda!208 lambda!209) (Forall2!5 lambda!252))))

(declare-fun bs!765 () Bool)

(assert (= bs!765 d!2135))

(declare-fun m!5121 () Bool)

(assert (=> bs!765 m!5121))

(assert (=> b!28475 d!2135))

(assert (=> b!28475 d!2127))

(declare-fun d!2137 () Bool)

(declare-fun res!25992 () Bool)

(declare-fun e!11652 () Bool)

(assert (=> d!2137 (=> (not res!25992) (not e!11652))))

(assert (=> d!2137 (= res!25992 (semiInverseModEq!7 (toChars!426 (TokenValueInjection!5 lambda!209 lambda!208)) (toValue!567 (TokenValueInjection!5 lambda!209 lambda!208))))))

(assert (=> d!2137 (= (inv!428 (TokenValueInjection!5 lambda!209 lambda!208)) e!11652)))

(declare-fun b!28592 () Bool)

(assert (=> b!28592 (= e!11652 (equivClasses!3 (toChars!426 (TokenValueInjection!5 lambda!209 lambda!208)) (toValue!567 (TokenValueInjection!5 lambda!209 lambda!208))))))

(assert (= (and d!2137 res!25992) b!28592))

(declare-fun m!5123 () Bool)

(assert (=> d!2137 m!5123))

(declare-fun m!5125 () Bool)

(assert (=> b!28592 m!5125))

(assert (=> b!28476 d!2137))

(assert (=> bs!664 d!2107))

(assert (=> bs!664 d!2117))

(assert (=> b!28496 d!2103))

(assert (=> b!28496 d!2113))

(assert (=> b!28499 d!2101))

(assert (=> b!28499 d!2105))

(assert (=> b!28489 d!2113))

(assert (=> bs!649 d!2109))

(assert (=> bs!649 d!2111))

(assert (=> bs!660 d!2111))

(assert (=> bs!660 d!2107))

(assert (=> start!1024 d!2117))

(assert (=> start!1024 d!2111))

(assert (=> start!1024 d!2103))

(assert (=> start!1024 d!2119))

(declare-fun d!2139 () Bool)

(assert (=> d!2139 (= (inv!427 x!10111) (isBalanced!4 (c!14905 x!10111)))))

(declare-fun bs!766 () Bool)

(assert (= bs!766 d!2139))

(declare-fun m!5127 () Bool)

(assert (=> bs!766 m!5127))

(assert (=> start!1024 d!2139))

(assert (=> start!1024 d!2131))

(assert (=> b!28503 d!2105))

(assert (=> b!28503 d!2101))

(assert (=> bs!645 d!2109))

(assert (=> bs!645 d!2117))

(assert (=> b!28493 d!2113))

(assert (=> b!28493 d!2103))

(assert (=> b!28500 d!2103))

(assert (=> b!28500 d!2105))

(assert (=> bs!651 d!2117))

(assert (=> bs!651 d!2111))

(assert (=> bs!665 d!2107))

(assert (=> bs!665 d!2111))

(assert (=> bs!655 d!2111))

(assert (=> bs!655 d!2117))

(assert (=> b!28490 d!2113))

(assert (=> b!28490 d!2101))

(assert (=> bs!647 d!2117))

(assert (=> b!28497 d!2103))

(assert (=> b!28497 d!2101))

(declare-fun b!28599 () Bool)

(declare-fun tp!19384 () Bool)

(declare-fun tp!19383 () Bool)

(declare-fun e!11657 () Bool)

(assert (=> b!28599 (= e!11657 (and (inv!426 (left!316 (c!14905 x!10113))) tp!19383 (inv!426 (right!646 (c!14905 x!10113))) tp!19384))))

(declare-fun b!28600 () Bool)

(declare-fun inv!434 (IArray!21) Bool)

(assert (=> b!28600 (= e!11657 (inv!434 (xs!2587 (c!14905 x!10113))))))

(assert (=> b!28488 (= tp!19369 (and (inv!426 (c!14905 x!10113)) e!11657))))

(assert (= (and b!28488 (is-Node!10 (c!14905 x!10113))) b!28599))

(assert (= (and b!28488 (is-Leaf!135 (c!14905 x!10113))) b!28600))

(declare-fun m!5129 () Bool)

(assert (=> b!28599 m!5129))

(declare-fun m!5131 () Bool)

(assert (=> b!28599 m!5131))

(declare-fun m!5133 () Bool)

(assert (=> b!28600 m!5133))

(assert (=> b!28488 m!5015))

(declare-fun b!28601 () Bool)

(declare-fun tp!19386 () Bool)

(declare-fun e!11659 () Bool)

(declare-fun tp!19385 () Bool)

(assert (=> b!28601 (= e!11659 (and (inv!426 (left!316 (c!14905 x!10112))) tp!19385 (inv!426 (right!646 (c!14905 x!10112))) tp!19386))))

(declare-fun b!28602 () Bool)

(assert (=> b!28602 (= e!11659 (inv!434 (xs!2587 (c!14905 x!10112))))))

(assert (=> b!28487 (= tp!19368 (and (inv!426 (c!14905 x!10112)) e!11659))))

(assert (= (and b!28487 (is-Node!10 (c!14905 x!10112))) b!28601))

(assert (= (and b!28487 (is-Leaf!135 (c!14905 x!10112))) b!28602))

(declare-fun m!5135 () Bool)

(assert (=> b!28601 m!5135))

(declare-fun m!5137 () Bool)

(assert (=> b!28601 m!5137))

(declare-fun m!5139 () Bool)

(assert (=> b!28602 m!5139))

(assert (=> b!28487 m!5013))

(declare-fun b!28603 () Bool)

(declare-fun tp!19387 () Bool)

(declare-fun tp!19388 () Bool)

(declare-fun e!11661 () Bool)

(assert (=> b!28603 (= e!11661 (and (inv!426 (left!316 (c!14905 x!10111))) tp!19387 (inv!426 (right!646 (c!14905 x!10111))) tp!19388))))

(declare-fun b!28604 () Bool)

(assert (=> b!28604 (= e!11661 (inv!434 (xs!2587 (c!14905 x!10111))))))

(assert (=> b!28485 (= tp!19367 (and (inv!426 (c!14905 x!10111)) e!11661))))

(assert (= (and b!28485 (is-Node!10 (c!14905 x!10111))) b!28603))

(assert (= (and b!28485 (is-Leaf!135 (c!14905 x!10111))) b!28604))

(declare-fun m!5141 () Bool)

(assert (=> b!28603 m!5141))

(declare-fun m!5143 () Bool)

(assert (=> b!28603 m!5143))

(declare-fun m!5145 () Bool)

(assert (=> b!28604 m!5145))

(assert (=> b!28485 m!4989))

(push 1)

(assert (not d!2111))

(assert (not b!28569))

(assert (not b!28574))

(assert (not b!28599))

(assert (not b!28487))

(assert (not d!2107))

(assert (not b!28601))

(assert (not b!28485))

(assert (not b!28592))

(assert (not b!28583))

(assert (not d!2129))

(assert (not d!2127))

(assert (not d!2123))

(assert (not d!2125))

(assert (not b!28602))

(assert (not d!2113))

(assert (not b!28604))

(assert (not d!2139))

(assert (not b!28576))

(assert (not d!2135))

(assert (not b!28600))

(assert (not b!28603))

(assert (not d!2105))

(assert (not d!2137))

(assert (not b!28585))

(assert (not d!2103))

(assert (not d!2101))

(assert (not d!2117))

(assert (not d!2109))

(assert (not b!28567))

(assert (not b!28578))

(assert (not b!28488))

(assert (not d!2131))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

