; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183952 () Bool)

(assert start!183952)

(assert (=> start!183952 true))

(declare-fun b!1845209 () Bool)

(assert (=> b!1845209 true))

(assert (=> b!1845209 true))

(declare-fun b!1845210 () Bool)

(assert (=> b!1845210 true))

(declare-fun b!1845221 () Bool)

(declare-fun e!1179214 () Bool)

(declare-datatypes ((List!20421 0))(
  ( (Nil!20349) (Cons!20349 (h!25750 (_ BitVec 16)) (t!172032 List!20421)) )
))
(declare-datatypes ((IArray!13497 0))(
  ( (IArray!13498 (innerList!6806 List!20421)) )
))
(declare-datatypes ((Conc!6746 0))(
  ( (Node!6746 (left!16301 Conc!6746) (right!16631 Conc!6746) (csize!13722 Int) (cheight!6957 Int)) (Leaf!9850 (xs!9622 IArray!13497) (csize!13723 Int)) (Empty!6746) )
))
(declare-datatypes ((BalanceConc!13414 0))(
  ( (BalanceConc!13415 (c!301269 Conc!6746)) )
))
(declare-fun x!369106 () BalanceConc!13414)

(declare-fun tp!521755 () Bool)

(declare-fun inv!26665 (Conc!6746) Bool)

(assert (=> b!1845221 (= e!1179214 (and (inv!26665 (c!301269 x!369106)) tp!521755))))

(declare-datatypes ((IdentifierValueInjection!24 0))(
  ( (IdentifierValueInjection!25) )
))
(declare-fun thiss!4669 () IdentifierValueInjection!24)

(declare-fun inst!1072 () Bool)

(declare-fun inv!26666 (BalanceConc!13414) Bool)

(declare-fun list!8281 (BalanceConc!13414) List!20421)

(declare-datatypes ((TokenValue!3762 0))(
  ( (FloatLiteralValue!7524 (text!26779 List!20421)) (TokenValueExt!3761 (__x!12810 Int)) (Broken!18810 (value!114423 List!20421)) (Object!3833) (End!3762) (Def!3762) (Underscore!3762) (Match!3762) (Else!3762) (Error!3762) (Case!3762) (If!3762) (Extends!3762) (Abstract!3762) (Class!3762) (Val!3762) (DelimiterValue!7524 (del!3822 List!20421)) (KeywordValue!3768 (value!114424 List!20421)) (CommentValue!7524 (value!114425 List!20421)) (WhitespaceValue!7524 (value!114426 List!20421)) (IndentationValue!3762 (value!114427 List!20421)) (String!23311) (Int32!3762) (Broken!18811 (value!114428 List!20421)) (Boolean!3763) (Unit!35041) (OperatorValue!3765 (op!3822 List!20421)) (IdentifierValue!7524 (value!114429 List!20421)) (IdentifierValue!7525 (value!114430 List!20421)) (WhitespaceValue!7525 (value!114431 List!20421)) (True!7524) (False!7524) (Broken!18812 (value!114432 List!20421)) (Broken!18813 (value!114433 List!20421)) (True!7525) (RightBrace!3762) (RightBracket!3762) (Colon!3762) (Null!3762) (Comma!3762) (LeftBracket!3762) (False!7525) (LeftBrace!3762) (ImaginaryLiteralValue!3762 (text!26780 List!20421)) (StringLiteralValue!11286 (value!114434 List!20421)) (EOFValue!3762 (value!114435 List!20421)) (IdentValue!3762 (value!114436 List!20421)) (DelimiterValue!7525 (value!114437 List!20421)) (DedentValue!3762 (value!114438 List!20421)) (NewLineValue!3762 (value!114439 List!20421)) (IntegerValue!11286 (value!114440 (_ BitVec 32)) (text!26781 List!20421)) (IntegerValue!11287 (value!114441 Int) (text!26782 List!20421)) (Times!3762) (Or!3762) (Equal!3762) (Minus!3762) (Broken!18814 (value!114442 List!20421)) (And!3762) (Div!3762) (LessEqual!3762) (Mod!3762) (Concat!8752) (Not!3762) (Plus!3762) (SpaceValue!3762 (value!114443 List!20421)) (IntegerValue!11288 (value!114444 Int) (text!26783 List!20421)) (StringLiteralValue!11287 (text!26784 List!20421)) (FloatLiteralValue!7525 (text!26785 List!20421)) (BytesLiteralValue!3762 (value!114445 List!20421)) (CommentValue!7525 (value!114446 List!20421)) (StringLiteralValue!11288 (value!114447 List!20421)) (ErrorTokenValue!3762 (msg!3823 List!20421)) )
))
(declare-fun toCharacters!21 (IdentifierValueInjection!24 TokenValue!3762) BalanceConc!13414)

(declare-fun toValue!28 (IdentifierValueInjection!24 BalanceConc!13414) TokenValue!3762)

(assert (=> start!183952 (= inst!1072 (=> (and (inv!26666 x!369106) e!1179214) (= (list!8281 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106))) (list!8281 x!369106))))))

(assert (= start!183952 b!1845221))

(declare-fun m!2273599 () Bool)

(assert (=> b!1845221 m!2273599))

(declare-fun m!2273601 () Bool)

(assert (=> start!183952 m!2273601))

(declare-fun m!2273603 () Bool)

(assert (=> start!183952 m!2273603))

(declare-fun m!2273605 () Bool)

(assert (=> start!183952 m!2273605))

(assert (=> start!183952 m!2273601))

(assert (=> start!183952 m!2273605))

(declare-fun m!2273607 () Bool)

(assert (=> start!183952 m!2273607))

(declare-fun m!2273609 () Bool)

(assert (=> start!183952 m!2273609))

(declare-fun res!828679 () Bool)

(declare-fun e!1179217 () Bool)

(assert (=> b!1845210 (=> res!828679 e!1179217)))

(declare-fun x!369107 () BalanceConc!13414)

(declare-fun x!369108 () BalanceConc!13414)

(assert (=> b!1845210 (= res!828679 (not (= (list!8281 x!369107) (list!8281 x!369108))))))

(declare-fun inst!1073 () Bool)

(declare-fun e!1179216 () Bool)

(declare-fun e!1179215 () Bool)

(assert (=> b!1845210 (= inst!1073 (=> (and (inv!26666 x!369107) e!1179216 (inv!26666 x!369108) e!1179215) e!1179217))))

(declare-fun b!1845222 () Bool)

(assert (=> b!1845222 (= e!1179217 (= (toValue!28 thiss!4669 x!369107) (toValue!28 thiss!4669 x!369108)))))

(declare-fun b!1845223 () Bool)

(declare-fun tp!521757 () Bool)

(assert (=> b!1845223 (= e!1179216 (and (inv!26665 (c!301269 x!369107)) tp!521757))))

(declare-fun b!1845224 () Bool)

(declare-fun tp!521756 () Bool)

(assert (=> b!1845224 (= e!1179215 (and (inv!26665 (c!301269 x!369108)) tp!521756))))

(assert (= (and b!1845210 (not res!828679)) b!1845222))

(assert (= b!1845210 b!1845223))

(assert (= b!1845210 b!1845224))

(declare-fun m!2273611 () Bool)

(assert (=> b!1845210 m!2273611))

(declare-fun m!2273613 () Bool)

(assert (=> b!1845210 m!2273613))

(declare-fun m!2273615 () Bool)

(assert (=> b!1845210 m!2273615))

(declare-fun m!2273617 () Bool)

(assert (=> b!1845210 m!2273617))

(declare-fun m!2273619 () Bool)

(assert (=> b!1845222 m!2273619))

(declare-fun m!2273621 () Bool)

(assert (=> b!1845222 m!2273621))

(declare-fun m!2273623 () Bool)

(assert (=> b!1845223 m!2273623))

(declare-fun m!2273625 () Bool)

(assert (=> b!1845224 m!2273625))

(declare-fun bs!409104 () Bool)

(declare-fun neg-inst!1073 () Bool)

(declare-fun s!220946 () Bool)

(assert (= bs!409104 (and neg-inst!1073 s!220946)))

(assert (=> bs!409104 (=> true (= (list!8281 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106))) (list!8281 x!369106)))))

(assert (=> m!2273605 m!2273601))

(assert (=> m!2273605 m!2273603))

(assert (=> m!2273605 m!2273607))

(assert (=> m!2273605 s!220946))

(assert (=> m!2273607 s!220946))

(declare-fun bs!409105 () Bool)

(assert (= bs!409105 (and neg-inst!1073 start!183952)))

(assert (=> bs!409105 (= true inst!1072)))

(declare-fun bs!409106 () Bool)

(declare-fun neg-inst!1072 () Bool)

(declare-fun s!220948 () Bool)

(assert (= bs!409106 (and neg-inst!1072 s!220948)))

(declare-fun res!828680 () Bool)

(declare-fun e!1179218 () Bool)

(assert (=> bs!409106 (=> res!828680 e!1179218)))

(assert (=> bs!409106 (= res!828680 (not (= (list!8281 x!369107) (list!8281 x!369107))))))

(assert (=> bs!409106 (=> true e!1179218)))

(declare-fun b!1845225 () Bool)

(assert (=> b!1845225 (= e!1179218 (= (toValue!28 thiss!4669 x!369107) (toValue!28 thiss!4669 x!369107)))))

(assert (= (and bs!409106 (not res!828680)) b!1845225))

(assert (=> m!2273619 m!2273611))

(assert (=> m!2273619 m!2273611))

(assert (=> m!2273619 s!220948))

(assert (=> m!2273619 s!220948))

(declare-fun bs!409107 () Bool)

(declare-fun s!220950 () Bool)

(assert (= bs!409107 (and neg-inst!1072 s!220950)))

(declare-fun res!828681 () Bool)

(declare-fun e!1179219 () Bool)

(assert (=> bs!409107 (=> res!828681 e!1179219)))

(assert (=> bs!409107 (= res!828681 (not (= (list!8281 x!369106) (list!8281 x!369107))))))

(assert (=> bs!409107 (=> true e!1179219)))

(declare-fun b!1845226 () Bool)

(assert (=> b!1845226 (= e!1179219 (= (toValue!28 thiss!4669 x!369106) (toValue!28 thiss!4669 x!369107)))))

(assert (= (and bs!409107 (not res!828681)) b!1845226))

(declare-fun bs!409108 () Bool)

(assert (= bs!409108 (and m!2273605 m!2273619)))

(assert (=> bs!409108 m!2273607))

(assert (=> bs!409108 m!2273611))

(assert (=> bs!409108 s!220950))

(declare-fun bs!409109 () Bool)

(declare-fun s!220952 () Bool)

(assert (= bs!409109 (and neg-inst!1072 s!220952)))

(declare-fun res!828682 () Bool)

(declare-fun e!1179220 () Bool)

(assert (=> bs!409109 (=> res!828682 e!1179220)))

(assert (=> bs!409109 (= res!828682 (not (= (list!8281 x!369106) (list!8281 x!369106))))))

(assert (=> bs!409109 (=> true e!1179220)))

(declare-fun b!1845227 () Bool)

(assert (=> b!1845227 (= e!1179220 (= (toValue!28 thiss!4669 x!369106) (toValue!28 thiss!4669 x!369106)))))

(assert (= (and bs!409109 (not res!828682)) b!1845227))

(assert (=> m!2273605 m!2273607))

(assert (=> m!2273605 m!2273607))

(assert (=> m!2273605 s!220952))

(declare-fun bs!409110 () Bool)

(declare-fun s!220954 () Bool)

(assert (= bs!409110 (and neg-inst!1072 s!220954)))

(declare-fun res!828683 () Bool)

(declare-fun e!1179221 () Bool)

(assert (=> bs!409110 (=> res!828683 e!1179221)))

(assert (=> bs!409110 (= res!828683 (not (= (list!8281 x!369107) (list!8281 x!369106))))))

(assert (=> bs!409110 (=> true e!1179221)))

(declare-fun b!1845228 () Bool)

(assert (=> b!1845228 (= e!1179221 (= (toValue!28 thiss!4669 x!369107) (toValue!28 thiss!4669 x!369106)))))

(assert (= (and bs!409110 (not res!828683)) b!1845228))

(assert (=> bs!409108 m!2273611))

(assert (=> bs!409108 m!2273607))

(assert (=> bs!409108 s!220954))

(assert (=> m!2273605 s!220952))

(declare-fun bs!409111 () Bool)

(declare-fun s!220956 () Bool)

(assert (= bs!409111 (and neg-inst!1072 s!220956)))

(declare-fun res!828684 () Bool)

(declare-fun e!1179222 () Bool)

(assert (=> bs!409111 (=> res!828684 e!1179222)))

(assert (=> bs!409111 (= res!828684 (not (= (list!8281 x!369108) (list!8281 x!369106))))))

(assert (=> bs!409111 (=> true e!1179222)))

(declare-fun b!1845229 () Bool)

(assert (=> b!1845229 (= e!1179222 (= (toValue!28 thiss!4669 x!369108) (toValue!28 thiss!4669 x!369106)))))

(assert (= (and bs!409111 (not res!828684)) b!1845229))

(declare-fun bs!409112 () Bool)

(assert (= bs!409112 (and m!2273613 m!2273605)))

(assert (=> bs!409112 m!2273613))

(assert (=> bs!409112 m!2273607))

(assert (=> bs!409112 s!220956))

(declare-fun bs!409113 () Bool)

(declare-fun s!220958 () Bool)

(assert (= bs!409113 (and neg-inst!1072 s!220958)))

(declare-fun res!828685 () Bool)

(declare-fun e!1179223 () Bool)

(assert (=> bs!409113 (=> res!828685 e!1179223)))

(assert (=> bs!409113 (= res!828685 (not (= (list!8281 x!369108) (list!8281 x!369107))))))

(assert (=> bs!409113 (=> true e!1179223)))

(declare-fun b!1845230 () Bool)

(assert (=> b!1845230 (= e!1179223 (= (toValue!28 thiss!4669 x!369108) (toValue!28 thiss!4669 x!369107)))))

(assert (= (and bs!409113 (not res!828685)) b!1845230))

(declare-fun bs!409114 () Bool)

(assert (= bs!409114 (and m!2273613 m!2273619)))

(assert (=> bs!409114 m!2273613))

(assert (=> bs!409114 m!2273611))

(assert (=> bs!409114 s!220958))

(declare-fun bs!409115 () Bool)

(declare-fun s!220960 () Bool)

(assert (= bs!409115 (and neg-inst!1072 s!220960)))

(declare-fun res!828686 () Bool)

(declare-fun e!1179224 () Bool)

(assert (=> bs!409115 (=> res!828686 e!1179224)))

(assert (=> bs!409115 (= res!828686 (not (= (list!8281 x!369108) (list!8281 x!369108))))))

(assert (=> bs!409115 (=> true e!1179224)))

(declare-fun b!1845231 () Bool)

(assert (=> b!1845231 (= e!1179224 (= (toValue!28 thiss!4669 x!369108) (toValue!28 thiss!4669 x!369108)))))

(assert (= (and bs!409115 (not res!828686)) b!1845231))

(assert (=> m!2273613 s!220960))

(declare-fun bs!409116 () Bool)

(declare-fun s!220962 () Bool)

(assert (= bs!409116 (and neg-inst!1072 s!220962)))

(declare-fun res!828687 () Bool)

(declare-fun e!1179225 () Bool)

(assert (=> bs!409116 (=> res!828687 e!1179225)))

(assert (=> bs!409116 (= res!828687 (not (= (list!8281 x!369106) (list!8281 x!369108))))))

(assert (=> bs!409116 (=> true e!1179225)))

(declare-fun b!1845232 () Bool)

(assert (=> b!1845232 (= e!1179225 (= (toValue!28 thiss!4669 x!369106) (toValue!28 thiss!4669 x!369108)))))

(assert (= (and bs!409116 (not res!828687)) b!1845232))

(assert (=> bs!409112 m!2273607))

(assert (=> bs!409112 m!2273613))

(assert (=> bs!409112 s!220962))

(declare-fun bs!409117 () Bool)

(declare-fun s!220964 () Bool)

(assert (= bs!409117 (and neg-inst!1072 s!220964)))

(declare-fun res!828688 () Bool)

(declare-fun e!1179226 () Bool)

(assert (=> bs!409117 (=> res!828688 e!1179226)))

(assert (=> bs!409117 (= res!828688 (not (= (list!8281 x!369107) (list!8281 x!369108))))))

(assert (=> bs!409117 (=> true e!1179226)))

(declare-fun b!1845233 () Bool)

(assert (=> b!1845233 (= e!1179226 (= (toValue!28 thiss!4669 x!369107) (toValue!28 thiss!4669 x!369108)))))

(assert (= (and bs!409117 (not res!828688)) b!1845233))

(assert (=> bs!409114 m!2273611))

(assert (=> bs!409114 m!2273613))

(assert (=> bs!409114 s!220964))

(assert (=> m!2273613 s!220960))

(declare-fun bs!409118 () Bool)

(declare-fun s!220966 () Bool)

(assert (= bs!409118 (and neg-inst!1072 s!220966)))

(declare-fun res!828689 () Bool)

(declare-fun e!1179227 () Bool)

(assert (=> bs!409118 (=> res!828689 e!1179227)))

(assert (=> bs!409118 (= res!828689 (not (= (list!8281 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106))) (list!8281 x!369106))))))

(assert (=> bs!409118 (=> true e!1179227)))

(declare-fun b!1845234 () Bool)

(assert (=> b!1845234 (= e!1179227 (= (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106))) (toValue!28 thiss!4669 x!369106)))))

(assert (= (and bs!409118 (not res!828689)) b!1845234))

(declare-fun bs!409119 () Bool)

(assert (= bs!409119 (and m!2273603 m!2273605)))

(assert (=> bs!409119 m!2273603))

(assert (=> bs!409119 m!2273607))

(assert (=> bs!409119 s!220966))

(declare-fun bs!409120 () Bool)

(declare-fun s!220968 () Bool)

(assert (= bs!409120 (and neg-inst!1072 s!220968)))

(declare-fun res!828690 () Bool)

(declare-fun e!1179228 () Bool)

(assert (=> bs!409120 (=> res!828690 e!1179228)))

(assert (=> bs!409120 (= res!828690 (not (= (list!8281 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106))) (list!8281 x!369107))))))

(assert (=> bs!409120 (=> true e!1179228)))

(declare-fun b!1845235 () Bool)

(assert (=> b!1845235 (= e!1179228 (= (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106))) (toValue!28 thiss!4669 x!369107)))))

(assert (= (and bs!409120 (not res!828690)) b!1845235))

(declare-fun bs!409121 () Bool)

(assert (= bs!409121 (and m!2273603 m!2273619)))

(assert (=> bs!409121 m!2273603))

(assert (=> bs!409121 m!2273611))

(assert (=> bs!409121 s!220968))

(declare-fun bs!409122 () Bool)

(declare-fun s!220970 () Bool)

(assert (= bs!409122 (and neg-inst!1072 s!220970)))

(declare-fun res!828691 () Bool)

(declare-fun e!1179229 () Bool)

(assert (=> bs!409122 (=> res!828691 e!1179229)))

(assert (=> bs!409122 (= res!828691 (not (= (list!8281 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106))) (list!8281 x!369108))))))

(assert (=> bs!409122 (=> true e!1179229)))

(declare-fun b!1845236 () Bool)

(assert (=> b!1845236 (= e!1179229 (= (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106))) (toValue!28 thiss!4669 x!369108)))))

(assert (= (and bs!409122 (not res!828691)) b!1845236))

(declare-fun bs!409123 () Bool)

(assert (= bs!409123 (and m!2273603 m!2273613)))

(assert (=> bs!409123 m!2273603))

(assert (=> bs!409123 m!2273613))

(assert (=> bs!409123 s!220970))

(declare-fun bs!409124 () Bool)

(declare-fun s!220972 () Bool)

(assert (= bs!409124 (and neg-inst!1072 s!220972)))

(declare-fun res!828692 () Bool)

(declare-fun e!1179230 () Bool)

(assert (=> bs!409124 (=> res!828692 e!1179230)))

(assert (=> bs!409124 (= res!828692 (not (= (list!8281 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106))) (list!8281 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106))))))))

(assert (=> bs!409124 (=> true e!1179230)))

(declare-fun b!1845237 () Bool)

(assert (=> b!1845237 (= e!1179230 (= (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106))) (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106)))))))

(assert (= (and bs!409124 (not res!828692)) b!1845237))

(assert (=> m!2273603 s!220972))

(declare-fun bs!409125 () Bool)

(declare-fun s!220974 () Bool)

(assert (= bs!409125 (and neg-inst!1072 s!220974)))

(declare-fun res!828693 () Bool)

(declare-fun e!1179231 () Bool)

(assert (=> bs!409125 (=> res!828693 e!1179231)))

(assert (=> bs!409125 (= res!828693 (not (= (list!8281 x!369106) (list!8281 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106))))))))

(assert (=> bs!409125 (=> true e!1179231)))

(declare-fun b!1845238 () Bool)

(assert (=> b!1845238 (= e!1179231 (= (toValue!28 thiss!4669 x!369106) (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106)))))))

(assert (= (and bs!409125 (not res!828693)) b!1845238))

(assert (=> bs!409119 m!2273607))

(assert (=> bs!409119 m!2273603))

(assert (=> bs!409119 s!220974))

(declare-fun bs!409126 () Bool)

(declare-fun s!220976 () Bool)

(assert (= bs!409126 (and neg-inst!1072 s!220976)))

(declare-fun res!828694 () Bool)

(declare-fun e!1179232 () Bool)

(assert (=> bs!409126 (=> res!828694 e!1179232)))

(assert (=> bs!409126 (= res!828694 (not (= (list!8281 x!369107) (list!8281 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106))))))))

(assert (=> bs!409126 (=> true e!1179232)))

(declare-fun b!1845239 () Bool)

(assert (=> b!1845239 (= e!1179232 (= (toValue!28 thiss!4669 x!369107) (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106)))))))

(assert (= (and bs!409126 (not res!828694)) b!1845239))

(assert (=> bs!409121 m!2273611))

(assert (=> bs!409121 m!2273603))

(assert (=> bs!409121 s!220976))

(declare-fun bs!409127 () Bool)

(declare-fun s!220978 () Bool)

(assert (= bs!409127 (and neg-inst!1072 s!220978)))

(declare-fun res!828695 () Bool)

(declare-fun e!1179233 () Bool)

(assert (=> bs!409127 (=> res!828695 e!1179233)))

(assert (=> bs!409127 (= res!828695 (not (= (list!8281 x!369108) (list!8281 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106))))))))

(assert (=> bs!409127 (=> true e!1179233)))

(declare-fun b!1845240 () Bool)

(assert (=> b!1845240 (= e!1179233 (= (toValue!28 thiss!4669 x!369108) (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106)))))))

(assert (= (and bs!409127 (not res!828695)) b!1845240))

(assert (=> bs!409123 m!2273613))

(assert (=> bs!409123 m!2273603))

(assert (=> bs!409123 s!220978))

(assert (=> m!2273603 s!220972))

(declare-fun bs!409128 () Bool)

(assert (= bs!409128 (and m!2273621 m!2273613)))

(assert (=> bs!409128 s!220960))

(declare-fun bs!409129 () Bool)

(assert (= bs!409129 (and m!2273621 m!2273605)))

(assert (=> bs!409129 s!220956))

(assert (=> m!2273621 s!220960))

(declare-fun bs!409130 () Bool)

(assert (= bs!409130 (and m!2273621 m!2273619)))

(assert (=> bs!409130 s!220958))

(declare-fun bs!409131 () Bool)

(assert (= bs!409131 (and m!2273621 m!2273603)))

(assert (=> bs!409131 s!220978))

(assert (=> bs!409129 s!220962))

(assert (=> bs!409128 s!220960))

(assert (=> bs!409131 s!220970))

(assert (=> bs!409130 s!220964))

(assert (=> m!2273621 s!220960))

(declare-fun bs!409132 () Bool)

(assert (= bs!409132 (and m!2273611 m!2273619)))

(assert (=> bs!409132 s!220948))

(declare-fun bs!409133 () Bool)

(assert (= bs!409133 (and m!2273611 m!2273605)))

(assert (=> bs!409133 s!220954))

(declare-fun bs!409134 () Bool)

(assert (= bs!409134 (and m!2273611 m!2273613 m!2273621)))

(assert (=> bs!409134 s!220964))

(assert (=> m!2273611 s!220948))

(declare-fun bs!409135 () Bool)

(assert (= bs!409135 (and m!2273611 m!2273603)))

(assert (=> bs!409135 s!220976))

(assert (=> bs!409133 s!220950))

(assert (=> m!2273611 s!220948))

(assert (=> bs!409134 s!220958))

(assert (=> bs!409132 s!220948))

(assert (=> bs!409135 s!220968))

(declare-fun bs!409136 () Bool)

(assert (= bs!409136 (and m!2273607 m!2273603)))

(assert (=> bs!409136 s!220974))

(assert (=> m!2273607 s!220952))

(declare-fun bs!409137 () Bool)

(assert (= bs!409137 (and m!2273607 m!2273613 m!2273621)))

(assert (=> bs!409137 s!220962))

(declare-fun bs!409138 () Bool)

(assert (= bs!409138 (and m!2273607 m!2273619 m!2273611)))

(assert (=> bs!409138 s!220950))

(declare-fun bs!409139 () Bool)

(assert (= bs!409139 (and m!2273607 m!2273605)))

(assert (=> bs!409139 s!220952))

(assert (=> bs!409137 s!220956))

(assert (=> m!2273607 s!220952))

(assert (=> bs!409136 s!220966))

(assert (=> bs!409139 s!220952))

(assert (=> bs!409138 s!220954))

(declare-fun bs!409140 () Bool)

(assert (= bs!409140 (and neg-inst!1072 b!1845210)))

(assert (=> bs!409140 (= true inst!1073)))

(declare-fun e!1179210 () Bool)

(declare-fun e!1179212 () Bool)

(assert (=> b!1845210 (= e!1179210 e!1179212)))

(declare-fun res!828678 () Bool)

(assert (=> b!1845210 (=> res!828678 e!1179212)))

(declare-fun lambda!72616 () Int)

(declare-fun Forall2!582 (Int) Bool)

(assert (=> b!1845210 (= res!828678 (not (Forall2!582 lambda!72616)))))

(assert (=> b!1845210 (= (Forall2!582 lambda!72616) inst!1073)))

(declare-fun b!1845211 () Bool)

(declare-fun e!1179211 () Bool)

(assert (=> b!1845211 (= e!1179212 e!1179211)))

(declare-fun res!828677 () Bool)

(assert (=> b!1845211 (=> res!828677 e!1179211)))

(declare-fun lambda!72614 () Int)

(declare-fun lambda!72615 () Int)

(declare-fun equivClasses!1416 (Int Int) Bool)

(assert (=> b!1845211 (= res!828677 (not (equivClasses!1416 lambda!72614 lambda!72615)))))

(assert (=> b!1845211 (= (equivClasses!1416 lambda!72614 lambda!72615) (Forall2!582 lambda!72616))))

(declare-fun e!1179213 () Bool)

(assert (=> b!1845209 (= e!1179213 e!1179210)))

(declare-fun res!828676 () Bool)

(assert (=> b!1845209 (=> res!828676 e!1179210)))

(declare-fun semiInverseModEq!1479 (Int Int) Bool)

(assert (=> b!1845209 (= res!828676 (not (semiInverseModEq!1479 lambda!72614 lambda!72615)))))

(declare-fun lambda!72613 () Int)

(declare-fun Forall!947 (Int) Bool)

(assert (=> b!1845209 (= (semiInverseModEq!1479 lambda!72614 lambda!72615) (Forall!947 lambda!72613))))

(declare-fun res!828675 () Bool)

(assert (=> start!183952 (=> res!828675 e!1179213)))

(assert (=> start!183952 (= res!828675 (not (Forall!947 lambda!72613)))))

(assert (=> start!183952 (= (Forall!947 lambda!72613) inst!1072)))

(assert (=> start!183952 (not e!1179213)))

(assert (=> start!183952 true))

(declare-fun b!1845212 () Bool)

(declare-datatypes ((TokenValueInjection!7164 0))(
  ( (TokenValueInjection!7165 (toValue!5219 Int) (toChars!5078 Int)) )
))
(declare-fun inv!26667 (TokenValueInjection!7164) Bool)

(assert (=> b!1845212 (= e!1179211 (inv!26667 (TokenValueInjection!7165 lambda!72615 lambda!72614)))))

(assert (= neg-inst!1073 inst!1072))

(assert (= (and start!183952 (not res!828675)) b!1845209))

(assert (= (and b!1845209 (not res!828676)) b!1845210))

(assert (= neg-inst!1072 inst!1073))

(assert (= (and b!1845210 (not res!828678)) b!1845211))

(assert (= (and b!1845211 (not res!828677)) b!1845212))

(declare-fun m!2273627 () Bool)

(assert (=> b!1845212 m!2273627))

(declare-fun m!2273629 () Bool)

(assert (=> b!1845210 m!2273629))

(assert (=> b!1845210 m!2273629))

(declare-fun m!2273631 () Bool)

(assert (=> start!183952 m!2273631))

(assert (=> start!183952 m!2273631))

(declare-fun m!2273633 () Bool)

(assert (=> b!1845209 m!2273633))

(assert (=> b!1845209 m!2273633))

(assert (=> b!1845209 m!2273631))

(declare-fun m!2273635 () Bool)

(assert (=> b!1845211 m!2273635))

(assert (=> b!1845211 m!2273635))

(assert (=> b!1845211 m!2273629))

(push 1)

(assert (not bs!409106))

(assert (not bs!409116))

(assert (not bs!409125))

(assert (not b!1845234))

(assert (not bs!409122))

(assert (not bs!409111))

(assert (not b!1845209))

(assert (not b!1845233))

(assert (not bs!409118))

(assert (not bs!409126))

(assert (not bs!409113))

(assert (not b!1845211))

(assert (not b!1845226))

(assert (not bs!409104))

(assert (not b!1845235))

(assert (not b!1845227))

(assert (not b!1845240))

(assert (not b!1845230))

(assert (not bs!409109))

(assert (not b!1845225))

(assert (not b!1845222))

(assert (not bs!409110))

(assert (not bs!409115))

(assert (not b!1845224))

(assert (not b!1845229))

(assert (not b!1845223))

(assert (not bs!409120))

(assert (not b!1845210))

(assert (not bs!409124))

(assert (not b!1845238))

(assert (not bs!409107))

(assert (not b!1845228))

(assert (not b!1845221))

(assert (not b!1845236))

(assert (not b!1845212))

(assert (not b!1845232))

(assert (not b!1845239))

(assert (not b!1845237))

(assert (not bs!409127))

(assert (not start!183952))

(assert (not b!1845231))

(assert (not bs!409117))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!409193 () Bool)

(assert (= bs!409193 (and m!2273619 b!1845225)))

(assert (=> bs!409193 m!2273619))

(assert (=> bs!409193 m!2273619))

(declare-fun bs!409194 () Bool)

(assert (= bs!409194 (and m!2273605 m!2273619 b!1845226)))

(assert (=> bs!409194 m!2273605))

(assert (=> bs!409194 m!2273619))

(declare-fun bs!409195 () Bool)

(assert (= bs!409195 (and m!2273605 b!1845227)))

(assert (=> bs!409195 m!2273605))

(assert (=> bs!409195 m!2273605))

(declare-fun bs!409196 () Bool)

(assert (= bs!409196 (and m!2273605 m!2273619 b!1845228)))

(assert (=> bs!409196 m!2273619))

(assert (=> bs!409196 m!2273605))

(declare-fun bs!409197 () Bool)

(assert (= bs!409197 (and m!2273613 m!2273605 b!1845229)))

(assert (=> bs!409197 m!2273621))

(assert (=> bs!409197 m!2273605))

(declare-fun bs!409198 () Bool)

(assert (= bs!409198 (and m!2273613 m!2273619 b!1845230)))

(assert (=> bs!409198 m!2273621))

(assert (=> bs!409198 m!2273619))

(declare-fun bs!409199 () Bool)

(assert (= bs!409199 (and m!2273613 b!1845231)))

(assert (=> bs!409199 m!2273621))

(assert (=> bs!409199 m!2273621))

(declare-fun bs!409200 () Bool)

(assert (= bs!409200 (and m!2273613 m!2273605 b!1845232)))

(assert (=> bs!409200 m!2273605))

(assert (=> bs!409200 m!2273621))

(declare-fun bs!409201 () Bool)

(assert (= bs!409201 (and m!2273613 m!2273619 b!1845233)))

(assert (=> bs!409201 m!2273619))

(assert (=> bs!409201 m!2273621))

(declare-fun bs!409202 () Bool)

(assert (= bs!409202 (and m!2273603 m!2273605 b!1845234)))

(declare-fun m!2273677 () Bool)

(assert (=> bs!409202 m!2273677))

(assert (=> bs!409202 m!2273605))

(declare-fun bs!409203 () Bool)

(assert (= bs!409203 (and m!2273603 m!2273619 b!1845235)))

(assert (=> bs!409203 m!2273677))

(assert (=> bs!409203 m!2273619))

(declare-fun bs!409204 () Bool)

(assert (= bs!409204 (and m!2273603 m!2273613 b!1845236)))

(assert (=> bs!409204 m!2273677))

(assert (=> bs!409204 m!2273621))

(declare-fun bs!409205 () Bool)

(assert (= bs!409205 (and m!2273603 b!1845237)))

(assert (=> bs!409205 m!2273677))

(assert (=> bs!409205 m!2273677))

(declare-fun bs!409206 () Bool)

(assert (= bs!409206 (and m!2273603 m!2273605 b!1845238)))

(assert (=> bs!409206 m!2273605))

(assert (=> bs!409206 m!2273677))

(declare-fun bs!409207 () Bool)

(assert (= bs!409207 (and m!2273603 m!2273619 b!1845239)))

(assert (=> bs!409207 m!2273619))

(assert (=> bs!409207 m!2273677))

(declare-fun bs!409208 () Bool)

(assert (= bs!409208 (and m!2273603 m!2273613 b!1845240)))

(assert (=> bs!409208 m!2273621))

(assert (=> bs!409208 m!2273677))

(push 1)

(assert (not bs!409106))

(assert (not bs!409116))

(assert (not bs!409125))

(assert (not b!1845234))

(assert (not bs!409122))

(assert (not bs!409111))

(assert (not b!1845209))

(assert (not b!1845233))

(assert (not bs!409118))

(assert (not bs!409126))

(assert (not bs!409113))

(assert (not b!1845211))

(assert (not b!1845226))

(assert (not bs!409104))

(assert (not b!1845235))

(assert (not b!1845227))

(assert (not b!1845240))

(assert (not b!1845230))

(assert (not bs!409109))

(assert (not b!1845225))

(assert (not b!1845222))

(assert (not bs!409110))

(assert (not bs!409115))

(assert (not b!1845224))

(assert (not b!1845229))

(assert (not b!1845223))

(assert (not bs!409120))

(assert (not b!1845210))

(assert (not bs!409124))

(assert (not b!1845238))

(assert (not bs!409107))

(assert (not b!1845228))

(assert (not b!1845221))

(assert (not b!1845236))

(assert (not b!1845212))

(assert (not b!1845232))

(assert (not b!1845239))

(assert (not b!1845237))

(assert (not bs!409127))

(assert (not start!183952))

(assert (not b!1845231))

(assert (not bs!409117))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!564780 () Bool)

(declare-fun efficientList!210 (BalanceConc!13414) List!20421)

(assert (=> d!564780 (= (toValue!28 thiss!4669 x!369107) (IdentifierValue!7524 (efficientList!210 x!369107)))))

(declare-fun bs!409209 () Bool)

(assert (= bs!409209 d!564780))

(declare-fun m!2273679 () Bool)

(assert (=> bs!409209 m!2273679))

(assert (=> b!1845233 d!564780))

(declare-fun d!564782 () Bool)

(assert (=> d!564782 (= (toValue!28 thiss!4669 x!369108) (IdentifierValue!7524 (efficientList!210 x!369108)))))

(declare-fun bs!409210 () Bool)

(assert (= bs!409210 d!564782))

(declare-fun m!2273681 () Bool)

(assert (=> bs!409210 m!2273681))

(assert (=> b!1845233 d!564782))

(declare-fun d!564784 () Bool)

(assert (=> d!564784 (= (toValue!28 thiss!4669 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106))) (IdentifierValue!7524 (efficientList!210 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106)))))))

(declare-fun bs!409211 () Bool)

(assert (= bs!409211 d!564784))

(assert (=> bs!409211 m!2273601))

(declare-fun m!2273683 () Bool)

(assert (=> bs!409211 m!2273683))

(assert (=> b!1845236 d!564784))

(assert (=> b!1845236 d!564782))

(declare-fun d!564786 () Bool)

(declare-fun list!8283 (Conc!6746) List!20421)

(assert (=> d!564786 (= (list!8281 x!369108) (list!8283 (c!301269 x!369108)))))

(declare-fun bs!409212 () Bool)

(assert (= bs!409212 d!564786))

(declare-fun m!2273685 () Bool)

(assert (=> bs!409212 m!2273685))

(assert (=> bs!409113 d!564786))

(declare-fun d!564788 () Bool)

(assert (=> d!564788 (= (list!8281 x!369107) (list!8283 (c!301269 x!369107)))))

(declare-fun bs!409213 () Bool)

(assert (= bs!409213 d!564788))

(declare-fun m!2273687 () Bool)

(assert (=> bs!409213 m!2273687))

(assert (=> bs!409113 d!564788))

(assert (=> bs!409127 d!564786))

(declare-fun d!564790 () Bool)

(assert (=> d!564790 (= (list!8281 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106))) (list!8283 (c!301269 (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106)))))))

(declare-fun bs!409214 () Bool)

(assert (= bs!409214 d!564790))

(declare-fun m!2273689 () Bool)

(assert (=> bs!409214 m!2273689))

(assert (=> bs!409127 d!564790))

(assert (=> bs!409124 d!564790))

(assert (=> bs!409118 d!564790))

(declare-fun d!564792 () Bool)

(assert (=> d!564792 (= (list!8281 x!369106) (list!8283 (c!301269 x!369106)))))

(declare-fun bs!409215 () Bool)

(assert (= bs!409215 d!564792))

(declare-fun m!2273691 () Bool)

(assert (=> bs!409215 m!2273691))

(assert (=> bs!409118 d!564792))

(assert (=> bs!409109 d!564792))

(assert (=> b!1845230 d!564782))

(assert (=> b!1845230 d!564780))

(assert (=> b!1845240 d!564782))

(assert (=> b!1845240 d!564784))

(declare-fun d!564794 () Bool)

(declare-fun c!301273 () Bool)

(assert (=> d!564794 (= c!301273 (is-Node!6746 (c!301269 x!369106)))))

(declare-fun e!1179286 () Bool)

(assert (=> d!564794 (= (inv!26665 (c!301269 x!369106)) e!1179286)))

(declare-fun b!1845303 () Bool)

(declare-fun inv!26671 (Conc!6746) Bool)

(assert (=> b!1845303 (= e!1179286 (inv!26671 (c!301269 x!369106)))))

(declare-fun b!1845304 () Bool)

(declare-fun e!1179287 () Bool)

(assert (=> b!1845304 (= e!1179286 e!1179287)))

(declare-fun res!828745 () Bool)

(assert (=> b!1845304 (= res!828745 (not (is-Leaf!9850 (c!301269 x!369106))))))

(assert (=> b!1845304 (=> res!828745 e!1179287)))

(declare-fun b!1845305 () Bool)

(declare-fun inv!26672 (Conc!6746) Bool)

(assert (=> b!1845305 (= e!1179287 (inv!26672 (c!301269 x!369106)))))

(assert (= (and d!564794 c!301273) b!1845303))

(assert (= (and d!564794 (not c!301273)) b!1845304))

(assert (= (and b!1845304 (not res!828745)) b!1845305))

(declare-fun m!2273693 () Bool)

(assert (=> b!1845303 m!2273693))

(declare-fun m!2273695 () Bool)

(assert (=> b!1845305 m!2273695))

(assert (=> b!1845221 d!564794))

(assert (=> b!1845237 d!564784))

(assert (=> b!1845234 d!564784))

(declare-fun d!564798 () Bool)

(assert (=> d!564798 (= (toValue!28 thiss!4669 x!369106) (IdentifierValue!7524 (efficientList!210 x!369106)))))

(declare-fun bs!409216 () Bool)

(assert (= bs!409216 d!564798))

(declare-fun m!2273697 () Bool)

(assert (=> bs!409216 m!2273697))

(assert (=> b!1845234 d!564798))

(assert (=> bs!409104 d!564790))

(declare-fun d!564800 () Bool)

(declare-fun c!301277 () Bool)

(assert (=> d!564800 (= c!301277 (is-IdentifierValue!7524 (toValue!28 thiss!4669 x!369106)))))

(declare-fun e!1179290 () BalanceConc!13414)

(assert (=> d!564800 (= (toCharacters!21 thiss!4669 (toValue!28 thiss!4669 x!369106)) e!1179290)))

(declare-fun b!1845310 () Bool)

(declare-fun seqFromList!2611 (List!20421) BalanceConc!13414)

(assert (=> b!1845310 (= e!1179290 (seqFromList!2611 (value!114429 (toValue!28 thiss!4669 x!369106))))))

(declare-fun b!1845311 () Bool)

(assert (=> b!1845311 (= e!1179290 (BalanceConc!13415 Empty!6746))))

(assert (= (and d!564800 c!301277) b!1845310))

(assert (= (and d!564800 (not c!301277)) b!1845311))

(declare-fun m!2273703 () Bool)

(assert (=> b!1845310 m!2273703))

(assert (=> bs!409104 d!564800))

(assert (=> bs!409104 d!564798))

(assert (=> bs!409104 d!564792))

(assert (=> bs!409115 d!564786))

(assert (=> b!1845222 d!564780))

(assert (=> b!1845222 d!564782))

(assert (=> b!1845227 d!564798))

(declare-fun bs!409219 () Bool)

(declare-fun d!564806 () Bool)

(assert (= bs!409219 (and d!564806 start!183952)))

(declare-fun lambda!72655 () Int)

(assert (=> bs!409219 (not (= lambda!72655 lambda!72613))))

(assert (=> d!564806 true))

(declare-fun order!13119 () Int)

(declare-fun order!13117 () Int)

(declare-fun dynLambda!10110 (Int Int) Int)

(declare-fun dynLambda!10111 (Int Int) Int)

(assert (=> d!564806 (< (dynLambda!10110 order!13117 lambda!72614) (dynLambda!10111 order!13119 lambda!72655))))

(assert (=> d!564806 true))

(declare-fun order!13121 () Int)

(declare-fun dynLambda!10112 (Int Int) Int)

(assert (=> d!564806 (< (dynLambda!10112 order!13121 lambda!72615) (dynLambda!10111 order!13119 lambda!72655))))

(assert (=> d!564806 (= (semiInverseModEq!1479 lambda!72614 lambda!72615) (Forall!947 lambda!72655))))

(declare-fun bs!409220 () Bool)

(assert (= bs!409220 d!564806))

(declare-fun m!2273705 () Bool)

(assert (=> bs!409220 m!2273705))

(assert (=> b!1845209 d!564806))

(declare-fun d!564808 () Bool)

(declare-fun choose!11610 (Int) Bool)

(assert (=> d!564808 (= (Forall!947 lambda!72613) (choose!11610 lambda!72613))))

(declare-fun bs!409221 () Bool)

(assert (= bs!409221 d!564808))

(declare-fun m!2273707 () Bool)

(assert (=> bs!409221 m!2273707))

(assert (=> b!1845209 d!564808))

(declare-fun d!564810 () Bool)

(declare-fun c!301279 () Bool)

(assert (=> d!564810 (= c!301279 (is-Node!6746 (c!301269 x!369108)))))

(declare-fun e!1179291 () Bool)

(assert (=> d!564810 (= (inv!26665 (c!301269 x!369108)) e!1179291)))

(declare-fun b!1845316 () Bool)

(assert (=> b!1845316 (= e!1179291 (inv!26671 (c!301269 x!369108)))))

(declare-fun b!1845317 () Bool)

(declare-fun e!1179292 () Bool)

(assert (=> b!1845317 (= e!1179291 e!1179292)))

(declare-fun res!828746 () Bool)

(assert (=> b!1845317 (= res!828746 (not (is-Leaf!9850 (c!301269 x!369108))))))

(assert (=> b!1845317 (=> res!828746 e!1179292)))

(declare-fun b!1845318 () Bool)

(assert (=> b!1845318 (= e!1179292 (inv!26672 (c!301269 x!369108)))))

(assert (= (and d!564810 c!301279) b!1845316))

(assert (= (and d!564810 (not c!301279)) b!1845317))

(assert (= (and b!1845317 (not res!828746)) b!1845318))

(declare-fun m!2273709 () Bool)

(assert (=> b!1845316 m!2273709))

(declare-fun m!2273711 () Bool)

(assert (=> b!1845318 m!2273711))

(assert (=> b!1845224 d!564810))

(assert (=> bs!409125 d!564792))

(assert (=> bs!409125 d!564790))

(declare-fun d!564812 () Bool)

(declare-fun c!301280 () Bool)

(assert (=> d!564812 (= c!301280 (is-Node!6746 (c!301269 x!369107)))))

(declare-fun e!1179293 () Bool)

(assert (=> d!564812 (= (inv!26665 (c!301269 x!369107)) e!1179293)))

(declare-fun b!1845319 () Bool)

(assert (=> b!1845319 (= e!1179293 (inv!26671 (c!301269 x!369107)))))

(declare-fun b!1845320 () Bool)

(declare-fun e!1179294 () Bool)

(assert (=> b!1845320 (= e!1179293 e!1179294)))

(declare-fun res!828747 () Bool)

(assert (=> b!1845320 (= res!828747 (not (is-Leaf!9850 (c!301269 x!369107))))))

(assert (=> b!1845320 (=> res!828747 e!1179294)))

(declare-fun b!1845321 () Bool)

(assert (=> b!1845321 (= e!1179294 (inv!26672 (c!301269 x!369107)))))

(assert (= (and d!564812 c!301280) b!1845319))

(assert (= (and d!564812 (not c!301280)) b!1845320))

(assert (= (and b!1845320 (not res!828747)) b!1845321))

(declare-fun m!2273713 () Bool)

(assert (=> b!1845319 m!2273713))

(declare-fun m!2273715 () Bool)

(assert (=> b!1845321 m!2273715))

(assert (=> b!1845223 d!564812))

(assert (=> bs!409110 d!564788))

(assert (=> bs!409110 d!564792))

(assert (=> b!1845228 d!564780))

(assert (=> b!1845228 d!564798))

(declare-fun d!564814 () Bool)

(declare-fun res!828750 () Bool)

(declare-fun e!1179299 () Bool)

(assert (=> d!564814 (=> (not res!828750) (not e!1179299))))

(assert (=> d!564814 (= res!828750 (semiInverseModEq!1479 (toChars!5078 (TokenValueInjection!7165 lambda!72615 lambda!72614)) (toValue!5219 (TokenValueInjection!7165 lambda!72615 lambda!72614))))))

(assert (=> d!564814 (= (inv!26667 (TokenValueInjection!7165 lambda!72615 lambda!72614)) e!1179299)))

(declare-fun b!1845328 () Bool)

(assert (=> b!1845328 (= e!1179299 (equivClasses!1416 (toChars!5078 (TokenValueInjection!7165 lambda!72615 lambda!72614)) (toValue!5219 (TokenValueInjection!7165 lambda!72615 lambda!72614))))))

(assert (= (and d!564814 res!828750) b!1845328))

(declare-fun m!2273717 () Bool)

(assert (=> d!564814 m!2273717))

(declare-fun m!2273719 () Bool)

(assert (=> b!1845328 m!2273719))

(assert (=> b!1845212 d!564814))

(assert (=> b!1845238 d!564798))

(assert (=> b!1845238 d!564784))

(assert (=> b!1845210 d!564786))

(declare-fun d!564816 () Bool)

(declare-fun isBalanced!2102 (Conc!6746) Bool)

(assert (=> d!564816 (= (inv!26666 x!369108) (isBalanced!2102 (c!301269 x!369108)))))

(declare-fun bs!409222 () Bool)

(assert (= bs!409222 d!564816))

(declare-fun m!2273721 () Bool)

(assert (=> bs!409222 m!2273721))

(assert (=> b!1845210 d!564816))

(declare-fun d!564818 () Bool)

(declare-fun choose!11611 (Int) Bool)

(assert (=> d!564818 (= (Forall2!582 lambda!72616) (choose!11611 lambda!72616))))

(declare-fun bs!409223 () Bool)

(assert (= bs!409223 d!564818))

(declare-fun m!2273725 () Bool)

(assert (=> bs!409223 m!2273725))

(assert (=> b!1845210 d!564818))

(declare-fun d!564822 () Bool)

(assert (=> d!564822 (= (inv!26666 x!369107) (isBalanced!2102 (c!301269 x!369107)))))

(declare-fun bs!409224 () Bool)

(assert (= bs!409224 d!564822))

(declare-fun m!2273727 () Bool)

(assert (=> bs!409224 m!2273727))

(assert (=> b!1845210 d!564822))

(assert (=> b!1845210 d!564788))

(assert (=> b!1845231 d!564782))

(assert (=> bs!409120 d!564790))

(assert (=> bs!409120 d!564788))

(assert (=> bs!409106 d!564788))

(declare-fun bs!409226 () Bool)

(declare-fun d!564824 () Bool)

(assert (= bs!409226 (and d!564824 b!1845210)))

(declare-fun lambda!72658 () Int)

(assert (=> bs!409226 (not (= lambda!72658 lambda!72616))))

(assert (=> d!564824 true))

(declare-fun order!13123 () Int)

(declare-fun dynLambda!10113 (Int Int) Int)

(assert (=> d!564824 (< (dynLambda!10112 order!13121 lambda!72615) (dynLambda!10113 order!13123 lambda!72658))))

(assert (=> d!564824 (= (equivClasses!1416 lambda!72614 lambda!72615) (Forall2!582 lambda!72658))))

(declare-fun bs!409227 () Bool)

(assert (= bs!409227 d!564824))

(declare-fun m!2273731 () Bool)

(assert (=> bs!409227 m!2273731))

(assert (=> b!1845211 d!564824))

(assert (=> b!1845211 d!564818))

(assert (=> bs!409111 d!564786))

(assert (=> bs!409111 d!564792))

(assert (=> bs!409116 d!564792))

(assert (=> bs!409116 d!564786))

(assert (=> b!1845225 d!564780))

(assert (=> b!1845235 d!564784))

(assert (=> b!1845235 d!564780))

(assert (=> bs!409107 d!564792))

(assert (=> bs!409107 d!564788))

(assert (=> b!1845229 d!564782))

(assert (=> b!1845229 d!564798))

(assert (=> bs!409122 d!564790))

(assert (=> bs!409122 d!564786))

(assert (=> bs!409126 d!564788))

(assert (=> bs!409126 d!564790))

(assert (=> b!1845232 d!564798))

(assert (=> b!1845232 d!564782))

(assert (=> b!1845226 d!564798))

(assert (=> b!1845226 d!564780))

(assert (=> b!1845239 d!564780))

(assert (=> b!1845239 d!564784))

(assert (=> start!183952 d!564800))

(assert (=> start!183952 d!564798))

(assert (=> start!183952 d!564808))

(assert (=> start!183952 d!564790))

(declare-fun d!564828 () Bool)

(assert (=> d!564828 (= (inv!26666 x!369106) (isBalanced!2102 (c!301269 x!369106)))))

(declare-fun bs!409228 () Bool)

(assert (= bs!409228 d!564828))

(declare-fun m!2273733 () Bool)

(assert (=> bs!409228 m!2273733))

(assert (=> start!183952 d!564828))

(assert (=> start!183952 d!564792))

(assert (=> bs!409117 d!564788))

(assert (=> bs!409117 d!564786))

(declare-fun tp!521771 () Bool)

(declare-fun e!1179307 () Bool)

(declare-fun tp!521772 () Bool)

(declare-fun b!1845341 () Bool)

(assert (=> b!1845341 (= e!1179307 (and (inv!26665 (left!16301 (c!301269 x!369106))) tp!521771 (inv!26665 (right!16631 (c!301269 x!369106))) tp!521772))))

(declare-fun b!1845342 () Bool)

(declare-fun inv!26673 (IArray!13497) Bool)

(assert (=> b!1845342 (= e!1179307 (inv!26673 (xs!9622 (c!301269 x!369106))))))

(assert (=> b!1845221 (= tp!521755 (and (inv!26665 (c!301269 x!369106)) e!1179307))))

(assert (= (and b!1845221 (is-Node!6746 (c!301269 x!369106))) b!1845341))

(assert (= (and b!1845221 (is-Leaf!9850 (c!301269 x!369106))) b!1845342))

(declare-fun m!2273735 () Bool)

(assert (=> b!1845341 m!2273735))

(declare-fun m!2273737 () Bool)

(assert (=> b!1845341 m!2273737))

(declare-fun m!2273739 () Bool)

(assert (=> b!1845342 m!2273739))

(assert (=> b!1845221 m!2273599))

(declare-fun tp!521773 () Bool)

(declare-fun b!1845343 () Bool)

(declare-fun e!1179309 () Bool)

(declare-fun tp!521774 () Bool)

(assert (=> b!1845343 (= e!1179309 (and (inv!26665 (left!16301 (c!301269 x!369108))) tp!521773 (inv!26665 (right!16631 (c!301269 x!369108))) tp!521774))))

(declare-fun b!1845344 () Bool)

(assert (=> b!1845344 (= e!1179309 (inv!26673 (xs!9622 (c!301269 x!369108))))))

(assert (=> b!1845224 (= tp!521756 (and (inv!26665 (c!301269 x!369108)) e!1179309))))

(assert (= (and b!1845224 (is-Node!6746 (c!301269 x!369108))) b!1845343))

(assert (= (and b!1845224 (is-Leaf!9850 (c!301269 x!369108))) b!1845344))

(declare-fun m!2273741 () Bool)

(assert (=> b!1845343 m!2273741))

(declare-fun m!2273743 () Bool)

(assert (=> b!1845343 m!2273743))

(declare-fun m!2273745 () Bool)

(assert (=> b!1845344 m!2273745))

(assert (=> b!1845224 m!2273625))

(declare-fun tp!521775 () Bool)

(declare-fun e!1179311 () Bool)

(declare-fun tp!521776 () Bool)

(declare-fun b!1845345 () Bool)

(assert (=> b!1845345 (= e!1179311 (and (inv!26665 (left!16301 (c!301269 x!369107))) tp!521775 (inv!26665 (right!16631 (c!301269 x!369107))) tp!521776))))

(declare-fun b!1845346 () Bool)

(assert (=> b!1845346 (= e!1179311 (inv!26673 (xs!9622 (c!301269 x!369107))))))

(assert (=> b!1845223 (= tp!521757 (and (inv!26665 (c!301269 x!369107)) e!1179311))))

(assert (= (and b!1845223 (is-Node!6746 (c!301269 x!369107))) b!1845345))

(assert (= (and b!1845223 (is-Leaf!9850 (c!301269 x!369107))) b!1845346))

(declare-fun m!2273747 () Bool)

(assert (=> b!1845345 m!2273747))

(declare-fun m!2273749 () Bool)

(assert (=> b!1845345 m!2273749))

(declare-fun m!2273751 () Bool)

(assert (=> b!1845346 m!2273751))

(assert (=> b!1845223 m!2273623))

(push 1)

(assert (not d!564824))

(assert (not b!1845346))

(assert (not d!564818))

(assert (not d!564780))

(assert (not d!564784))

(assert (not d!564786))

(assert (not b!1845341))

(assert (not b!1845303))

(assert (not b!1845319))

(assert (not d!564806))

(assert (not b!1845310))

(assert (not d!564822))

(assert (not b!1845318))

(assert (not d!564816))

(assert (not d!564828))

(assert (not b!1845344))

(assert (not d!564814))

(assert (not b!1845305))

(assert (not b!1845224))

(assert (not d!564808))

(assert (not b!1845316))

(assert (not b!1845223))

(assert (not d!564790))

(assert (not d!564788))

(assert (not d!564782))

(assert (not b!1845345))

(assert (not b!1845321))

(assert (not b!1845343))

(assert (not b!1845221))

(assert (not b!1845328))

(assert (not b!1845342))

(assert (not d!564798))

(assert (not d!564792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

