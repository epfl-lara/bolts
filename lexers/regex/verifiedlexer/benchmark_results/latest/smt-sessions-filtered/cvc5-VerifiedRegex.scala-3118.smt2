; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184304 () Bool)

(assert start!184304)

(assert (=> start!184304 true))

(declare-fun b!1846833 () Bool)

(assert (=> b!1846833 true))

(assert (=> b!1846833 true))

(declare-fun b!1846834 () Bool)

(assert (=> b!1846834 true))

(declare-fun b!1846845 () Bool)

(declare-fun e!1180260 () Bool)

(declare-datatypes ((List!20469 0))(
  ( (Nil!20397) (Cons!20397 (h!25798 (_ BitVec 16)) (t!172228 List!20469)) )
))
(declare-datatypes ((IArray!13521 0))(
  ( (IArray!13522 (innerList!6818 List!20469)) )
))
(declare-datatypes ((Conc!6758 0))(
  ( (Node!6758 (left!16360 Conc!6758) (right!16690 Conc!6758) (csize!13746 Int) (cheight!6969 Int)) (Leaf!9877 (xs!9634 IArray!13521) (csize!13747 Int)) (Empty!6758) )
))
(declare-datatypes ((BalanceConc!13438 0))(
  ( (BalanceConc!13439 (c!301577 Conc!6758)) )
))
(declare-fun x!370300 () BalanceConc!13438)

(declare-fun tp!522122 () Bool)

(declare-fun inv!26759 (Conc!6758) Bool)

(assert (=> b!1846845 (= e!1180260 (and (inv!26759 (c!301577 x!370300)) tp!522122))))

(declare-fun inst!1120 () Bool)

(declare-datatypes ((ImaginaryLiteralValueInjection!20 0))(
  ( (ImaginaryLiteralValueInjection!21) )
))
(declare-fun thiss!5044 () ImaginaryLiteralValueInjection!20)

(declare-fun inv!26760 (BalanceConc!13438) Bool)

(declare-fun list!8303 (BalanceConc!13438) List!20469)

(declare-datatypes ((TokenValue!3774 0))(
  ( (FloatLiteralValue!7548 (text!26863 List!20469)) (TokenValueExt!3773 (__x!12828 Int)) (Broken!18870 (value!114768 List!20469)) (Object!3845) (End!3774) (Def!3774) (Underscore!3774) (Match!3774) (Else!3774) (Error!3774) (Case!3774) (If!3774) (Extends!3774) (Abstract!3774) (Class!3774) (Val!3774) (DelimiterValue!7548 (del!3834 List!20469)) (KeywordValue!3780 (value!114769 List!20469)) (CommentValue!7548 (value!114770 List!20469)) (WhitespaceValue!7548 (value!114771 List!20469)) (IndentationValue!3774 (value!114772 List!20469)) (String!23383) (Int32!3774) (Broken!18871 (value!114773 List!20469)) (Boolean!3775) (Unit!35063) (OperatorValue!3777 (op!3834 List!20469)) (IdentifierValue!7548 (value!114774 List!20469)) (IdentifierValue!7549 (value!114775 List!20469)) (WhitespaceValue!7549 (value!114776 List!20469)) (True!7548) (False!7548) (Broken!18872 (value!114777 List!20469)) (Broken!18873 (value!114778 List!20469)) (True!7549) (RightBrace!3774) (RightBracket!3774) (Colon!3774) (Null!3774) (Comma!3774) (LeftBracket!3774) (False!7549) (LeftBrace!3774) (ImaginaryLiteralValue!3774 (text!26864 List!20469)) (StringLiteralValue!11322 (value!114779 List!20469)) (EOFValue!3774 (value!114780 List!20469)) (IdentValue!3774 (value!114781 List!20469)) (DelimiterValue!7549 (value!114782 List!20469)) (DedentValue!3774 (value!114783 List!20469)) (NewLineValue!3774 (value!114784 List!20469)) (IntegerValue!11322 (value!114785 (_ BitVec 32)) (text!26865 List!20469)) (IntegerValue!11323 (value!114786 Int) (text!26866 List!20469)) (Times!3774) (Or!3774) (Equal!3774) (Minus!3774) (Broken!18874 (value!114787 List!20469)) (And!3774) (Div!3774) (LessEqual!3774) (Mod!3774) (Concat!8766) (Not!3774) (Plus!3774) (SpaceValue!3774 (value!114788 List!20469)) (IntegerValue!11324 (value!114789 Int) (text!26867 List!20469)) (StringLiteralValue!11323 (text!26868 List!20469)) (FloatLiteralValue!7549 (text!26869 List!20469)) (BytesLiteralValue!3774 (value!114790 List!20469)) (CommentValue!7549 (value!114791 List!20469)) (StringLiteralValue!11324 (value!114792 List!20469)) (ErrorTokenValue!3774 (msg!3835 List!20469)) )
))
(declare-fun toCharacters!26 (ImaginaryLiteralValueInjection!20 TokenValue!3774) BalanceConc!13438)

(declare-fun toValue!33 (ImaginaryLiteralValueInjection!20 BalanceConc!13438) TokenValue!3774)

(assert (=> start!184304 (= inst!1120 (=> (and (inv!26760 x!370300) e!1180260) (= (list!8303 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300))) (list!8303 x!370300))))))

(assert (= start!184304 b!1846845))

(declare-fun m!2275275 () Bool)

(assert (=> b!1846845 m!2275275))

(declare-fun m!2275277 () Bool)

(assert (=> start!184304 m!2275277))

(declare-fun m!2275279 () Bool)

(assert (=> start!184304 m!2275279))

(declare-fun m!2275281 () Bool)

(assert (=> start!184304 m!2275281))

(declare-fun m!2275283 () Bool)

(assert (=> start!184304 m!2275283))

(declare-fun m!2275285 () Bool)

(assert (=> start!184304 m!2275285))

(assert (=> start!184304 m!2275281))

(assert (=> start!184304 m!2275283))

(declare-fun res!829229 () Bool)

(declare-fun e!1180262 () Bool)

(assert (=> b!1846834 (=> res!829229 e!1180262)))

(declare-fun x!370301 () BalanceConc!13438)

(declare-fun x!370302 () BalanceConc!13438)

(assert (=> b!1846834 (= res!829229 (not (= (list!8303 x!370301) (list!8303 x!370302))))))

(declare-fun e!1180263 () Bool)

(declare-fun e!1180261 () Bool)

(declare-fun inst!1121 () Bool)

(assert (=> b!1846834 (= inst!1121 (=> (and (inv!26760 x!370301) e!1180263 (inv!26760 x!370302) e!1180261) e!1180262))))

(declare-fun b!1846846 () Bool)

(assert (=> b!1846846 (= e!1180262 (= (toValue!33 thiss!5044 x!370301) (toValue!33 thiss!5044 x!370302)))))

(declare-fun b!1846847 () Bool)

(declare-fun tp!522124 () Bool)

(assert (=> b!1846847 (= e!1180263 (and (inv!26759 (c!301577 x!370301)) tp!522124))))

(declare-fun b!1846848 () Bool)

(declare-fun tp!522123 () Bool)

(assert (=> b!1846848 (= e!1180261 (and (inv!26759 (c!301577 x!370302)) tp!522123))))

(assert (= (and b!1846834 (not res!829229)) b!1846846))

(assert (= b!1846834 b!1846847))

(assert (= b!1846834 b!1846848))

(declare-fun m!2275287 () Bool)

(assert (=> b!1846834 m!2275287))

(declare-fun m!2275289 () Bool)

(assert (=> b!1846834 m!2275289))

(declare-fun m!2275291 () Bool)

(assert (=> b!1846834 m!2275291))

(declare-fun m!2275293 () Bool)

(assert (=> b!1846834 m!2275293))

(declare-fun m!2275295 () Bool)

(assert (=> b!1846846 m!2275295))

(declare-fun m!2275297 () Bool)

(assert (=> b!1846846 m!2275297))

(declare-fun m!2275299 () Bool)

(assert (=> b!1846847 m!2275299))

(declare-fun m!2275301 () Bool)

(assert (=> b!1846848 m!2275301))

(declare-fun bs!409566 () Bool)

(declare-fun neg-inst!1120 () Bool)

(declare-fun s!221188 () Bool)

(assert (= bs!409566 (and neg-inst!1120 s!221188)))

(assert (=> bs!409566 (=> true (= (list!8303 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300))) (list!8303 x!370300)))))

(assert (=> m!2275281 m!2275283))

(assert (=> m!2275281 m!2275285))

(assert (=> m!2275281 m!2275279))

(assert (=> m!2275281 s!221188))

(assert (=> m!2275279 s!221188))

(declare-fun bs!409567 () Bool)

(assert (= bs!409567 (and neg-inst!1120 start!184304)))

(assert (=> bs!409567 (= true inst!1120)))

(declare-fun bs!409568 () Bool)

(declare-fun neg-inst!1121 () Bool)

(declare-fun s!221190 () Bool)

(assert (= bs!409568 (and neg-inst!1121 s!221190)))

(declare-fun res!829230 () Bool)

(declare-fun e!1180264 () Bool)

(assert (=> bs!409568 (=> res!829230 e!1180264)))

(assert (=> bs!409568 (= res!829230 (not (= (list!8303 x!370302) (list!8303 x!370302))))))

(assert (=> bs!409568 (=> true e!1180264)))

(declare-fun b!1846849 () Bool)

(assert (=> b!1846849 (= e!1180264 (= (toValue!33 thiss!5044 x!370302) (toValue!33 thiss!5044 x!370302)))))

(assert (= (and bs!409568 (not res!829230)) b!1846849))

(assert (=> m!2275289 s!221190))

(assert (=> m!2275289 s!221190))

(declare-fun bs!409569 () Bool)

(declare-fun s!221192 () Bool)

(assert (= bs!409569 (and neg-inst!1121 s!221192)))

(declare-fun res!829231 () Bool)

(declare-fun e!1180265 () Bool)

(assert (=> bs!409569 (=> res!829231 e!1180265)))

(assert (=> bs!409569 (= res!829231 (not (= (list!8303 x!370302) (list!8303 x!370300))))))

(assert (=> bs!409569 (=> true e!1180265)))

(declare-fun b!1846850 () Bool)

(assert (=> b!1846850 (= e!1180265 (= (toValue!33 thiss!5044 x!370302) (toValue!33 thiss!5044 x!370300)))))

(assert (= (and bs!409569 (not res!829231)) b!1846850))

(declare-fun bs!409570 () Bool)

(assert (= bs!409570 (and m!2275281 m!2275289)))

(assert (=> bs!409570 m!2275289))

(assert (=> bs!409570 m!2275279))

(assert (=> bs!409570 s!221192))

(declare-fun bs!409571 () Bool)

(declare-fun s!221194 () Bool)

(assert (= bs!409571 (and neg-inst!1121 s!221194)))

(declare-fun res!829232 () Bool)

(declare-fun e!1180266 () Bool)

(assert (=> bs!409571 (=> res!829232 e!1180266)))

(assert (=> bs!409571 (= res!829232 (not (= (list!8303 x!370300) (list!8303 x!370300))))))

(assert (=> bs!409571 (=> true e!1180266)))

(declare-fun b!1846851 () Bool)

(assert (=> b!1846851 (= e!1180266 (= (toValue!33 thiss!5044 x!370300) (toValue!33 thiss!5044 x!370300)))))

(assert (= (and bs!409571 (not res!829232)) b!1846851))

(assert (=> m!2275281 m!2275279))

(assert (=> m!2275281 m!2275279))

(assert (=> m!2275281 s!221194))

(declare-fun bs!409572 () Bool)

(declare-fun s!221196 () Bool)

(assert (= bs!409572 (and neg-inst!1121 s!221196)))

(declare-fun res!829233 () Bool)

(declare-fun e!1180267 () Bool)

(assert (=> bs!409572 (=> res!829233 e!1180267)))

(assert (=> bs!409572 (= res!829233 (not (= (list!8303 x!370300) (list!8303 x!370302))))))

(assert (=> bs!409572 (=> true e!1180267)))

(declare-fun b!1846852 () Bool)

(assert (=> b!1846852 (= e!1180267 (= (toValue!33 thiss!5044 x!370300) (toValue!33 thiss!5044 x!370302)))))

(assert (= (and bs!409572 (not res!829233)) b!1846852))

(assert (=> bs!409570 m!2275279))

(assert (=> bs!409570 m!2275289))

(assert (=> bs!409570 s!221196))

(assert (=> m!2275281 s!221194))

(declare-fun bs!409573 () Bool)

(assert (= bs!409573 (and m!2275297 m!2275281)))

(assert (=> bs!409573 s!221196))

(declare-fun bs!409574 () Bool)

(assert (= bs!409574 (and m!2275297 m!2275289)))

(assert (=> bs!409574 s!221190))

(assert (=> m!2275297 s!221190))

(assert (=> bs!409573 s!221192))

(assert (=> bs!409574 s!221190))

(assert (=> m!2275297 s!221190))

(declare-fun bs!409575 () Bool)

(declare-fun s!221198 () Bool)

(assert (= bs!409575 (and neg-inst!1121 s!221198)))

(declare-fun res!829234 () Bool)

(declare-fun e!1180268 () Bool)

(assert (=> bs!409575 (=> res!829234 e!1180268)))

(assert (=> bs!409575 (= res!829234 (not (= (list!8303 x!370300) (list!8303 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300))))))))

(assert (=> bs!409575 (=> true e!1180268)))

(declare-fun b!1846853 () Bool)

(assert (=> b!1846853 (= e!1180268 (= (toValue!33 thiss!5044 x!370300) (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300)))))))

(assert (= (and bs!409575 (not res!829234)) b!1846853))

(declare-fun bs!409576 () Bool)

(assert (= bs!409576 (and m!2275285 m!2275281)))

(assert (=> bs!409576 m!2275279))

(assert (=> bs!409576 m!2275285))

(assert (=> bs!409576 s!221198))

(declare-fun bs!409577 () Bool)

(declare-fun s!221200 () Bool)

(assert (= bs!409577 (and neg-inst!1121 s!221200)))

(declare-fun res!829235 () Bool)

(declare-fun e!1180269 () Bool)

(assert (=> bs!409577 (=> res!829235 e!1180269)))

(assert (=> bs!409577 (= res!829235 (not (= (list!8303 x!370302) (list!8303 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300))))))))

(assert (=> bs!409577 (=> true e!1180269)))

(declare-fun b!1846854 () Bool)

(assert (=> b!1846854 (= e!1180269 (= (toValue!33 thiss!5044 x!370302) (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300)))))))

(assert (= (and bs!409577 (not res!829235)) b!1846854))

(declare-fun bs!409578 () Bool)

(assert (= bs!409578 (and m!2275285 m!2275289 m!2275297)))

(assert (=> bs!409578 m!2275289))

(assert (=> bs!409578 m!2275285))

(assert (=> bs!409578 s!221200))

(declare-fun bs!409579 () Bool)

(declare-fun s!221202 () Bool)

(assert (= bs!409579 (and neg-inst!1121 s!221202)))

(declare-fun res!829236 () Bool)

(declare-fun e!1180270 () Bool)

(assert (=> bs!409579 (=> res!829236 e!1180270)))

(assert (=> bs!409579 (= res!829236 (not (= (list!8303 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300))) (list!8303 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300))))))))

(assert (=> bs!409579 (=> true e!1180270)))

(declare-fun b!1846855 () Bool)

(assert (=> b!1846855 (= e!1180270 (= (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300))) (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300)))))))

(assert (= (and bs!409579 (not res!829236)) b!1846855))

(assert (=> m!2275285 s!221202))

(declare-fun bs!409580 () Bool)

(declare-fun s!221204 () Bool)

(assert (= bs!409580 (and neg-inst!1121 s!221204)))

(declare-fun res!829237 () Bool)

(declare-fun e!1180271 () Bool)

(assert (=> bs!409580 (=> res!829237 e!1180271)))

(assert (=> bs!409580 (= res!829237 (not (= (list!8303 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300))) (list!8303 x!370300))))))

(assert (=> bs!409580 (=> true e!1180271)))

(declare-fun b!1846856 () Bool)

(assert (=> b!1846856 (= e!1180271 (= (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300))) (toValue!33 thiss!5044 x!370300)))))

(assert (= (and bs!409580 (not res!829237)) b!1846856))

(assert (=> bs!409576 m!2275285))

(assert (=> bs!409576 m!2275279))

(assert (=> bs!409576 s!221204))

(declare-fun bs!409581 () Bool)

(declare-fun s!221206 () Bool)

(assert (= bs!409581 (and neg-inst!1121 s!221206)))

(declare-fun res!829238 () Bool)

(declare-fun e!1180272 () Bool)

(assert (=> bs!409581 (=> res!829238 e!1180272)))

(assert (=> bs!409581 (= res!829238 (not (= (list!8303 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300))) (list!8303 x!370302))))))

(assert (=> bs!409581 (=> true e!1180272)))

(declare-fun b!1846857 () Bool)

(assert (=> b!1846857 (= e!1180272 (= (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300))) (toValue!33 thiss!5044 x!370302)))))

(assert (= (and bs!409581 (not res!829238)) b!1846857))

(assert (=> bs!409578 m!2275285))

(assert (=> bs!409578 m!2275289))

(assert (=> bs!409578 s!221206))

(assert (=> m!2275285 s!221202))

(declare-fun bs!409582 () Bool)

(declare-fun s!221208 () Bool)

(assert (= bs!409582 (and neg-inst!1121 s!221208)))

(declare-fun res!829239 () Bool)

(declare-fun e!1180273 () Bool)

(assert (=> bs!409582 (=> res!829239 e!1180273)))

(assert (=> bs!409582 (= res!829239 (not (= (list!8303 x!370300) (list!8303 x!370301))))))

(assert (=> bs!409582 (=> true e!1180273)))

(declare-fun b!1846858 () Bool)

(assert (=> b!1846858 (= e!1180273 (= (toValue!33 thiss!5044 x!370300) (toValue!33 thiss!5044 x!370301)))))

(assert (= (and bs!409582 (not res!829239)) b!1846858))

(declare-fun bs!409583 () Bool)

(assert (= bs!409583 (and m!2275295 m!2275281)))

(assert (=> bs!409583 m!2275279))

(assert (=> bs!409583 m!2275287))

(assert (=> bs!409583 s!221208))

(declare-fun bs!409584 () Bool)

(declare-fun s!221210 () Bool)

(assert (= bs!409584 (and neg-inst!1121 s!221210)))

(declare-fun res!829240 () Bool)

(declare-fun e!1180274 () Bool)

(assert (=> bs!409584 (=> res!829240 e!1180274)))

(assert (=> bs!409584 (= res!829240 (not (= (list!8303 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300))) (list!8303 x!370301))))))

(assert (=> bs!409584 (=> true e!1180274)))

(declare-fun b!1846859 () Bool)

(assert (=> b!1846859 (= e!1180274 (= (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300))) (toValue!33 thiss!5044 x!370301)))))

(assert (= (and bs!409584 (not res!829240)) b!1846859))

(declare-fun bs!409585 () Bool)

(assert (= bs!409585 (and m!2275295 m!2275285)))

(assert (=> bs!409585 m!2275285))

(assert (=> bs!409585 m!2275287))

(assert (=> bs!409585 s!221210))

(declare-fun bs!409586 () Bool)

(declare-fun s!221212 () Bool)

(assert (= bs!409586 (and neg-inst!1121 s!221212)))

(declare-fun res!829241 () Bool)

(declare-fun e!1180275 () Bool)

(assert (=> bs!409586 (=> res!829241 e!1180275)))

(assert (=> bs!409586 (= res!829241 (not (= (list!8303 x!370302) (list!8303 x!370301))))))

(assert (=> bs!409586 (=> true e!1180275)))

(declare-fun b!1846860 () Bool)

(assert (=> b!1846860 (= e!1180275 (= (toValue!33 thiss!5044 x!370302) (toValue!33 thiss!5044 x!370301)))))

(assert (= (and bs!409586 (not res!829241)) b!1846860))

(declare-fun bs!409587 () Bool)

(assert (= bs!409587 (and m!2275295 m!2275289 m!2275297)))

(assert (=> bs!409587 m!2275289))

(assert (=> bs!409587 m!2275287))

(assert (=> bs!409587 s!221212))

(declare-fun bs!409588 () Bool)

(declare-fun s!221214 () Bool)

(assert (= bs!409588 (and neg-inst!1121 s!221214)))

(declare-fun res!829242 () Bool)

(declare-fun e!1180276 () Bool)

(assert (=> bs!409588 (=> res!829242 e!1180276)))

(assert (=> bs!409588 (= res!829242 (not (= (list!8303 x!370301) (list!8303 x!370301))))))

(assert (=> bs!409588 (=> true e!1180276)))

(declare-fun b!1846861 () Bool)

(assert (=> b!1846861 (= e!1180276 (= (toValue!33 thiss!5044 x!370301) (toValue!33 thiss!5044 x!370301)))))

(assert (= (and bs!409588 (not res!829242)) b!1846861))

(assert (=> m!2275295 m!2275287))

(assert (=> m!2275295 m!2275287))

(assert (=> m!2275295 s!221214))

(declare-fun bs!409589 () Bool)

(declare-fun s!221216 () Bool)

(assert (= bs!409589 (and neg-inst!1121 s!221216)))

(declare-fun res!829243 () Bool)

(declare-fun e!1180277 () Bool)

(assert (=> bs!409589 (=> res!829243 e!1180277)))

(assert (=> bs!409589 (= res!829243 (not (= (list!8303 x!370301) (list!8303 x!370300))))))

(assert (=> bs!409589 (=> true e!1180277)))

(declare-fun b!1846862 () Bool)

(assert (=> b!1846862 (= e!1180277 (= (toValue!33 thiss!5044 x!370301) (toValue!33 thiss!5044 x!370300)))))

(assert (= (and bs!409589 (not res!829243)) b!1846862))

(assert (=> bs!409583 m!2275287))

(assert (=> bs!409583 m!2275279))

(assert (=> bs!409583 s!221216))

(declare-fun bs!409590 () Bool)

(declare-fun s!221218 () Bool)

(assert (= bs!409590 (and neg-inst!1121 s!221218)))

(declare-fun res!829244 () Bool)

(declare-fun e!1180278 () Bool)

(assert (=> bs!409590 (=> res!829244 e!1180278)))

(assert (=> bs!409590 (= res!829244 (not (= (list!8303 x!370301) (list!8303 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300))))))))

(assert (=> bs!409590 (=> true e!1180278)))

(declare-fun b!1846863 () Bool)

(assert (=> b!1846863 (= e!1180278 (= (toValue!33 thiss!5044 x!370301) (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300)))))))

(assert (= (and bs!409590 (not res!829244)) b!1846863))

(assert (=> bs!409585 m!2275287))

(assert (=> bs!409585 m!2275285))

(assert (=> bs!409585 s!221218))

(declare-fun bs!409591 () Bool)

(declare-fun s!221220 () Bool)

(assert (= bs!409591 (and neg-inst!1121 s!221220)))

(declare-fun res!829245 () Bool)

(declare-fun e!1180279 () Bool)

(assert (=> bs!409591 (=> res!829245 e!1180279)))

(assert (=> bs!409591 (= res!829245 (not (= (list!8303 x!370301) (list!8303 x!370302))))))

(assert (=> bs!409591 (=> true e!1180279)))

(declare-fun b!1846864 () Bool)

(assert (=> b!1846864 (= e!1180279 (= (toValue!33 thiss!5044 x!370301) (toValue!33 thiss!5044 x!370302)))))

(assert (= (and bs!409591 (not res!829245)) b!1846864))

(assert (=> bs!409587 m!2275287))

(assert (=> bs!409587 m!2275289))

(assert (=> bs!409587 s!221220))

(assert (=> m!2275295 s!221214))

(declare-fun bs!409592 () Bool)

(assert (= bs!409592 (and m!2275287 m!2275289 m!2275297)))

(assert (=> bs!409592 s!221212))

(declare-fun bs!409593 () Bool)

(assert (= bs!409593 (and m!2275287 m!2275281)))

(assert (=> bs!409593 s!221208))

(assert (=> m!2275287 s!221214))

(declare-fun bs!409594 () Bool)

(assert (= bs!409594 (and m!2275287 m!2275295)))

(assert (=> bs!409594 s!221214))

(declare-fun bs!409595 () Bool)

(assert (= bs!409595 (and m!2275287 m!2275285)))

(assert (=> bs!409595 s!221210))

(assert (=> bs!409595 s!221218))

(assert (=> m!2275287 s!221214))

(assert (=> bs!409594 s!221214))

(assert (=> bs!409593 s!221216))

(assert (=> bs!409592 s!221220))

(declare-fun bs!409596 () Bool)

(assert (= bs!409596 (and m!2275279 m!2275285)))

(assert (=> bs!409596 s!221204))

(declare-fun bs!409597 () Bool)

(assert (= bs!409597 (and m!2275279 m!2275281)))

(assert (=> bs!409597 s!221194))

(assert (=> m!2275279 s!221194))

(declare-fun bs!409598 () Bool)

(assert (= bs!409598 (and m!2275279 m!2275295 m!2275287)))

(assert (=> bs!409598 s!221216))

(declare-fun bs!409599 () Bool)

(assert (= bs!409599 (and m!2275279 m!2275289 m!2275297)))

(assert (=> bs!409599 s!221192))

(assert (=> bs!409599 s!221196))

(assert (=> bs!409597 s!221194))

(assert (=> bs!409596 s!221198))

(assert (=> m!2275279 s!221194))

(assert (=> bs!409598 s!221208))

(declare-fun bs!409600 () Bool)

(assert (= bs!409600 (and neg-inst!1121 b!1846834)))

(assert (=> bs!409600 (= true inst!1121)))

(declare-fun e!1180258 () Bool)

(declare-fun e!1180257 () Bool)

(assert (=> b!1846833 (= e!1180258 e!1180257)))

(declare-fun res!829228 () Bool)

(assert (=> b!1846833 (=> res!829228 e!1180257)))

(declare-fun lambda!72912 () Int)

(declare-fun lambda!72913 () Int)

(declare-fun semiInverseModEq!1487 (Int Int) Bool)

(assert (=> b!1846833 (= res!829228 (not (semiInverseModEq!1487 lambda!72912 lambda!72913)))))

(declare-fun lambda!72911 () Int)

(declare-fun Forall!957 (Int) Bool)

(assert (=> b!1846833 (= (semiInverseModEq!1487 lambda!72912 lambda!72913) (Forall!957 lambda!72911))))

(declare-fun e!1180256 () Bool)

(assert (=> b!1846834 (= e!1180257 e!1180256)))

(declare-fun res!829227 () Bool)

(assert (=> b!1846834 (=> res!829227 e!1180256)))

(declare-fun lambda!72914 () Int)

(declare-fun Forall2!588 (Int) Bool)

(assert (=> b!1846834 (= res!829227 (not (Forall2!588 lambda!72914)))))

(assert (=> b!1846834 (= (Forall2!588 lambda!72914) inst!1121)))

(declare-fun res!829226 () Bool)

(assert (=> start!184304 (=> res!829226 e!1180258)))

(assert (=> start!184304 (= res!829226 (not (Forall!957 lambda!72911)))))

(assert (=> start!184304 (= (Forall!957 lambda!72911) inst!1120)))

(assert (=> start!184304 (not e!1180258)))

(assert (=> start!184304 true))

(declare-fun b!1846836 () Bool)

(declare-fun e!1180259 () Bool)

(declare-datatypes ((TokenValueInjection!7168 0))(
  ( (TokenValueInjection!7169 (toValue!5227 Int) (toChars!5086 Int)) )
))
(declare-fun inv!26761 (TokenValueInjection!7168) Bool)

(assert (=> b!1846836 (= e!1180259 (inv!26761 (TokenValueInjection!7169 lambda!72913 lambda!72912)))))

(declare-fun b!1846835 () Bool)

(assert (=> b!1846835 (= e!1180256 e!1180259)))

(declare-fun res!829225 () Bool)

(assert (=> b!1846835 (=> res!829225 e!1180259)))

(declare-fun equivClasses!1420 (Int Int) Bool)

(assert (=> b!1846835 (= res!829225 (not (equivClasses!1420 lambda!72912 lambda!72913)))))

(assert (=> b!1846835 (= (equivClasses!1420 lambda!72912 lambda!72913) (Forall2!588 lambda!72914))))

(assert (= neg-inst!1120 inst!1120))

(assert (= (and start!184304 (not res!829226)) b!1846833))

(assert (= (and b!1846833 (not res!829228)) b!1846834))

(assert (= neg-inst!1121 inst!1121))

(assert (= (and b!1846834 (not res!829227)) b!1846835))

(assert (= (and b!1846835 (not res!829225)) b!1846836))

(declare-fun m!2275303 () Bool)

(assert (=> b!1846834 m!2275303))

(assert (=> b!1846834 m!2275303))

(declare-fun m!2275305 () Bool)

(assert (=> start!184304 m!2275305))

(assert (=> start!184304 m!2275305))

(declare-fun m!2275307 () Bool)

(assert (=> b!1846836 m!2275307))

(declare-fun m!2275309 () Bool)

(assert (=> b!1846833 m!2275309))

(assert (=> b!1846833 m!2275309))

(assert (=> b!1846833 m!2275305))

(declare-fun m!2275311 () Bool)

(assert (=> b!1846835 m!2275311))

(assert (=> b!1846835 m!2275311))

(assert (=> b!1846835 m!2275303))

(push 1)

(assert (not bs!409586))

(assert (not bs!409572))

(assert (not b!1846860))

(assert (not b!1846855))

(assert (not bs!409569))

(assert (not b!1846849))

(assert (not b!1846846))

(assert (not b!1846847))

(assert (not b!1846861))

(assert (not bs!409571))

(assert (not b!1846851))

(assert (not b!1846854))

(assert (not bs!409584))

(assert (not bs!409577))

(assert (not b!1846856))

(assert (not b!1846848))

(assert (not b!1846833))

(assert (not b!1846859))

(assert (not bs!409580))

(assert (not b!1846852))

(assert (not bs!409582))

(assert (not b!1846845))

(assert (not b!1846850))

(assert (not b!1846853))

(assert (not bs!409568))

(assert (not b!1846835))

(assert (not bs!409588))

(assert (not b!1846858))

(assert (not bs!409575))

(assert (not b!1846862))

(assert (not bs!409581))

(assert (not bs!409579))

(assert (not b!1846836))

(assert (not bs!409591))

(assert (not b!1846864))

(assert (not bs!409589))

(assert (not start!184304))

(assert (not b!1846857))

(assert (not b!1846834))

(assert (not b!1846863))

(assert (not bs!409566))

(assert (not bs!409590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!409634 () Bool)

(assert (= bs!409634 (and m!2275289 b!1846849)))

(assert (=> bs!409634 m!2275297))

(assert (=> bs!409634 m!2275297))

(declare-fun bs!409635 () Bool)

(assert (= bs!409635 (and m!2275281 m!2275289 b!1846850)))

(assert (=> bs!409635 m!2275297))

(assert (=> bs!409635 m!2275281))

(declare-fun bs!409636 () Bool)

(assert (= bs!409636 (and m!2275281 b!1846851)))

(assert (=> bs!409636 m!2275281))

(assert (=> bs!409636 m!2275281))

(declare-fun bs!409637 () Bool)

(assert (= bs!409637 (and m!2275281 m!2275289 b!1846852)))

(assert (=> bs!409637 m!2275281))

(assert (=> bs!409637 m!2275297))

(declare-fun bs!409638 () Bool)

(assert (= bs!409638 (and m!2275285 m!2275281 b!1846853)))

(assert (=> bs!409638 m!2275281))

(declare-fun m!2275351 () Bool)

(assert (=> bs!409638 m!2275351))

(declare-fun bs!409639 () Bool)

(assert (= bs!409639 (and m!2275285 m!2275289 m!2275297 b!1846854)))

(assert (=> bs!409639 m!2275297))

(assert (=> bs!409639 m!2275351))

(declare-fun bs!409640 () Bool)

(assert (= bs!409640 (and m!2275285 b!1846855)))

(assert (=> bs!409640 m!2275351))

(assert (=> bs!409640 m!2275351))

(declare-fun bs!409641 () Bool)

(assert (= bs!409641 (and m!2275285 m!2275281 b!1846856)))

(assert (=> bs!409641 m!2275351))

(assert (=> bs!409641 m!2275281))

(declare-fun bs!409642 () Bool)

(assert (= bs!409642 (and m!2275285 m!2275289 m!2275297 b!1846857)))

(assert (=> bs!409642 m!2275351))

(assert (=> bs!409642 m!2275297))

(declare-fun bs!409643 () Bool)

(assert (= bs!409643 (and m!2275295 m!2275281 b!1846858)))

(assert (=> bs!409643 m!2275281))

(assert (=> bs!409643 m!2275295))

(declare-fun bs!409644 () Bool)

(assert (= bs!409644 (and m!2275295 m!2275285 b!1846859)))

(assert (=> bs!409644 m!2275351))

(assert (=> bs!409644 m!2275295))

(declare-fun bs!409645 () Bool)

(assert (= bs!409645 (and m!2275295 m!2275289 m!2275297 b!1846860)))

(assert (=> bs!409645 m!2275297))

(assert (=> bs!409645 m!2275295))

(declare-fun bs!409646 () Bool)

(assert (= bs!409646 (and m!2275295 b!1846861)))

(assert (=> bs!409646 m!2275295))

(assert (=> bs!409646 m!2275295))

(declare-fun bs!409647 () Bool)

(assert (= bs!409647 (and m!2275295 m!2275281 b!1846862)))

(assert (=> bs!409647 m!2275295))

(assert (=> bs!409647 m!2275281))

(declare-fun bs!409648 () Bool)

(assert (= bs!409648 (and m!2275295 m!2275285 b!1846863)))

(assert (=> bs!409648 m!2275295))

(assert (=> bs!409648 m!2275351))

(declare-fun bs!409649 () Bool)

(assert (= bs!409649 (and m!2275295 m!2275289 m!2275297 b!1846864)))

(assert (=> bs!409649 m!2275295))

(assert (=> bs!409649 m!2275297))

(push 1)

(assert (not bs!409586))

(assert (not bs!409572))

(assert (not b!1846860))

(assert (not b!1846855))

(assert (not bs!409569))

(assert (not b!1846849))

(assert (not b!1846846))

(assert (not b!1846847))

(assert (not b!1846861))

(assert (not bs!409571))

(assert (not b!1846851))

(assert (not b!1846854))

(assert (not bs!409584))

(assert (not bs!409577))

(assert (not b!1846856))

(assert (not b!1846848))

(assert (not b!1846833))

(assert (not b!1846859))

(assert (not bs!409580))

(assert (not b!1846852))

(assert (not bs!409582))

(assert (not b!1846845))

(assert (not b!1846850))

(assert (not b!1846853))

(assert (not bs!409568))

(assert (not b!1846835))

(assert (not bs!409588))

(assert (not b!1846858))

(assert (not bs!409575))

(assert (not b!1846862))

(assert (not bs!409581))

(assert (not bs!409579))

(assert (not b!1846836))

(assert (not bs!409591))

(assert (not b!1846864))

(assert (not bs!409589))

(assert (not start!184304))

(assert (not b!1846857))

(assert (not b!1846834))

(assert (not b!1846863))

(assert (not bs!409566))

(assert (not bs!409590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!565343 () Bool)

(declare-fun efficientList!227 (BalanceConc!13438) List!20469)

(assert (=> d!565343 (= (toValue!33 thiss!5044 x!370302) (ImaginaryLiteralValue!3774 (efficientList!227 x!370302)))))

(declare-fun bs!409666 () Bool)

(assert (= bs!409666 d!565343))

(declare-fun m!2275355 () Bool)

(assert (=> bs!409666 m!2275355))

(assert (=> b!1846854 d!565343))

(declare-fun d!565345 () Bool)

(assert (=> d!565345 (= (toValue!33 thiss!5044 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300))) (ImaginaryLiteralValue!3774 (efficientList!227 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300)))))))

(declare-fun bs!409667 () Bool)

(assert (= bs!409667 d!565345))

(assert (=> bs!409667 m!2275283))

(declare-fun m!2275357 () Bool)

(assert (=> bs!409667 m!2275357))

(assert (=> b!1846854 d!565345))

(declare-fun d!565347 () Bool)

(assert (=> d!565347 (= (toValue!33 thiss!5044 x!370301) (ImaginaryLiteralValue!3774 (efficientList!227 x!370301)))))

(declare-fun bs!409668 () Bool)

(assert (= bs!409668 d!565347))

(declare-fun m!2275359 () Bool)

(assert (=> bs!409668 m!2275359))

(assert (=> b!1846864 d!565347))

(assert (=> b!1846864 d!565343))

(assert (=> b!1846857 d!565345))

(assert (=> b!1846857 d!565343))

(assert (=> b!1846846 d!565347))

(assert (=> b!1846846 d!565343))

(declare-fun d!565349 () Bool)

(declare-fun list!8305 (Conc!6758) List!20469)

(assert (=> d!565349 (= (list!8303 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300))) (list!8305 (c!301577 (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300)))))))

(declare-fun bs!409669 () Bool)

(assert (= bs!409669 d!565349))

(declare-fun m!2275361 () Bool)

(assert (=> bs!409669 m!2275361))

(assert (=> bs!409566 d!565349))

(declare-fun d!565351 () Bool)

(declare-fun c!301582 () Bool)

(assert (=> d!565351 (= c!301582 (is-ImaginaryLiteralValue!3774 (toValue!33 thiss!5044 x!370300)))))

(declare-fun e!1180330 () BalanceConc!13438)

(assert (=> d!565351 (= (toCharacters!26 thiss!5044 (toValue!33 thiss!5044 x!370300)) e!1180330)))

(declare-fun b!1846925 () Bool)

(declare-fun seqFromList!2617 (List!20469) BalanceConc!13438)

(assert (=> b!1846925 (= e!1180330 (seqFromList!2617 (text!26864 (toValue!33 thiss!5044 x!370300))))))

(declare-fun b!1846926 () Bool)

(assert (=> b!1846926 (= e!1180330 (BalanceConc!13439 Empty!6758))))

(assert (= (and d!565351 c!301582) b!1846925))

(assert (= (and d!565351 (not c!301582)) b!1846926))

(declare-fun m!2275363 () Bool)

(assert (=> b!1846925 m!2275363))

(assert (=> bs!409566 d!565351))

(declare-fun d!565353 () Bool)

(assert (=> d!565353 (= (toValue!33 thiss!5044 x!370300) (ImaginaryLiteralValue!3774 (efficientList!227 x!370300)))))

(declare-fun bs!409670 () Bool)

(assert (= bs!409670 d!565353))

(declare-fun m!2275365 () Bool)

(assert (=> bs!409670 m!2275365))

(assert (=> bs!409566 d!565353))

(declare-fun d!565355 () Bool)

(assert (=> d!565355 (= (list!8303 x!370300) (list!8305 (c!301577 x!370300)))))

(declare-fun bs!409671 () Bool)

(assert (= bs!409671 d!565355))

(declare-fun m!2275367 () Bool)

(assert (=> bs!409671 m!2275367))

(assert (=> bs!409566 d!565355))

(declare-fun d!565357 () Bool)

(declare-fun c!301585 () Bool)

(assert (=> d!565357 (= c!301585 (is-Node!6758 (c!301577 x!370300)))))

(declare-fun e!1180335 () Bool)

(assert (=> d!565357 (= (inv!26759 (c!301577 x!370300)) e!1180335)))

(declare-fun b!1846933 () Bool)

(declare-fun inv!26765 (Conc!6758) Bool)

(assert (=> b!1846933 (= e!1180335 (inv!26765 (c!301577 x!370300)))))

(declare-fun b!1846934 () Bool)

(declare-fun e!1180336 () Bool)

(assert (=> b!1846934 (= e!1180335 e!1180336)))

(declare-fun res!829293 () Bool)

(assert (=> b!1846934 (= res!829293 (not (is-Leaf!9877 (c!301577 x!370300))))))

(assert (=> b!1846934 (=> res!829293 e!1180336)))

(declare-fun b!1846935 () Bool)

(declare-fun inv!26766 (Conc!6758) Bool)

(assert (=> b!1846935 (= e!1180336 (inv!26766 (c!301577 x!370300)))))

(assert (= (and d!565357 c!301585) b!1846933))

(assert (= (and d!565357 (not c!301585)) b!1846934))

(assert (= (and b!1846934 (not res!829293)) b!1846935))

(declare-fun m!2275369 () Bool)

(assert (=> b!1846933 m!2275369))

(declare-fun m!2275371 () Bool)

(assert (=> b!1846935 m!2275371))

(assert (=> b!1846845 d!565357))

(assert (=> bs!409582 d!565355))

(declare-fun d!565359 () Bool)

(assert (=> d!565359 (= (list!8303 x!370301) (list!8305 (c!301577 x!370301)))))

(declare-fun bs!409672 () Bool)

(assert (= bs!409672 d!565359))

(declare-fun m!2275373 () Bool)

(assert (=> bs!409672 m!2275373))

(assert (=> bs!409582 d!565359))

(assert (=> b!1846851 d!565353))

(assert (=> bs!409588 d!565359))

(assert (=> bs!409581 d!565349))

(declare-fun d!565361 () Bool)

(assert (=> d!565361 (= (list!8303 x!370302) (list!8305 (c!301577 x!370302)))))

(declare-fun bs!409673 () Bool)

(assert (= bs!409673 d!565361))

(declare-fun m!2275375 () Bool)

(assert (=> bs!409673 m!2275375))

(assert (=> bs!409581 d!565361))

(assert (=> b!1846863 d!565347))

(assert (=> b!1846863 d!565345))

(assert (=> b!1846850 d!565343))

(assert (=> b!1846850 d!565353))

(assert (=> bs!409586 d!565361))

(assert (=> bs!409586 d!565359))

(assert (=> b!1846853 d!565353))

(assert (=> b!1846853 d!565345))

(declare-fun d!565363 () Bool)

(declare-fun choose!11619 (Int) Bool)

(assert (=> d!565363 (= (Forall!957 lambda!72911) (choose!11619 lambda!72911))))

(declare-fun bs!409674 () Bool)

(assert (= bs!409674 d!565363))

(declare-fun m!2275377 () Bool)

(assert (=> bs!409674 m!2275377))

(assert (=> start!184304 d!565363))

(assert (=> start!184304 d!565351))

(assert (=> start!184304 d!565353))

(declare-fun d!565365 () Bool)

(declare-fun isBalanced!2109 (Conc!6758) Bool)

(assert (=> d!565365 (= (inv!26760 x!370300) (isBalanced!2109 (c!301577 x!370300)))))

(declare-fun bs!409675 () Bool)

(assert (= bs!409675 d!565365))

(declare-fun m!2275379 () Bool)

(assert (=> bs!409675 m!2275379))

(assert (=> start!184304 d!565365))

(assert (=> start!184304 d!565349))

(assert (=> start!184304 d!565355))

(assert (=> bs!409571 d!565355))

(assert (=> bs!409577 d!565361))

(assert (=> bs!409577 d!565349))

(assert (=> bs!409591 d!565359))

(assert (=> bs!409591 d!565361))

(assert (=> b!1846860 d!565343))

(assert (=> b!1846860 d!565347))

(assert (=> b!1846859 d!565345))

(assert (=> b!1846859 d!565347))

(assert (=> bs!409580 d!565349))

(assert (=> bs!409580 d!565355))

(assert (=> b!1846862 d!565347))

(assert (=> b!1846862 d!565353))

(assert (=> b!1846849 d!565343))

(assert (=> b!1846856 d!565345))

(assert (=> b!1846856 d!565353))

(assert (=> bs!409590 d!565359))

(assert (=> bs!409590 d!565349))

(assert (=> bs!409569 d!565361))

(assert (=> bs!409569 d!565355))

(assert (=> bs!409575 d!565355))

(assert (=> bs!409575 d!565349))

(declare-fun d!565367 () Bool)

(assert (=> d!565367 (= (inv!26760 x!370302) (isBalanced!2109 (c!301577 x!370302)))))

(declare-fun bs!409676 () Bool)

(assert (= bs!409676 d!565367))

(declare-fun m!2275381 () Bool)

(assert (=> bs!409676 m!2275381))

(assert (=> b!1846834 d!565367))

(declare-fun d!565369 () Bool)

(declare-fun choose!11620 (Int) Bool)

(assert (=> d!565369 (= (Forall2!588 lambda!72914) (choose!11620 lambda!72914))))

(declare-fun bs!409677 () Bool)

(assert (= bs!409677 d!565369))

(declare-fun m!2275383 () Bool)

(assert (=> bs!409677 m!2275383))

(assert (=> b!1846834 d!565369))

(declare-fun d!565371 () Bool)

(assert (=> d!565371 (= (inv!26760 x!370301) (isBalanced!2109 (c!301577 x!370301)))))

(declare-fun bs!409678 () Bool)

(assert (= bs!409678 d!565371))

(declare-fun m!2275385 () Bool)

(assert (=> bs!409678 m!2275385))

(assert (=> b!1846834 d!565371))

(assert (=> b!1846834 d!565359))

(assert (=> b!1846834 d!565361))

(declare-fun bs!409679 () Bool)

(declare-fun d!565373 () Bool)

(assert (= bs!409679 (and d!565373 start!184304)))

(declare-fun lambda!72953 () Int)

(assert (=> bs!409679 (not (= lambda!72953 lambda!72911))))

(assert (=> d!565373 true))

(declare-fun order!13171 () Int)

(declare-fun order!13169 () Int)

(declare-fun dynLambda!10147 (Int Int) Int)

(declare-fun dynLambda!10148 (Int Int) Int)

(assert (=> d!565373 (< (dynLambda!10147 order!13169 lambda!72912) (dynLambda!10148 order!13171 lambda!72953))))

(assert (=> d!565373 true))

(declare-fun order!13173 () Int)

(declare-fun dynLambda!10149 (Int Int) Int)

(assert (=> d!565373 (< (dynLambda!10149 order!13173 lambda!72913) (dynLambda!10148 order!13171 lambda!72953))))

(assert (=> d!565373 (= (semiInverseModEq!1487 lambda!72912 lambda!72913) (Forall!957 lambda!72953))))

(declare-fun bs!409680 () Bool)

(assert (= bs!409680 d!565373))

(declare-fun m!2275387 () Bool)

(assert (=> bs!409680 m!2275387))

(assert (=> b!1846833 d!565373))

(assert (=> b!1846833 d!565363))

(assert (=> bs!409579 d!565349))

(declare-fun d!565375 () Bool)

(declare-fun c!301586 () Bool)

(assert (=> d!565375 (= c!301586 (is-Node!6758 (c!301577 x!370302)))))

(declare-fun e!1180337 () Bool)

(assert (=> d!565375 (= (inv!26759 (c!301577 x!370302)) e!1180337)))

(declare-fun b!1846940 () Bool)

(assert (=> b!1846940 (= e!1180337 (inv!26765 (c!301577 x!370302)))))

(declare-fun b!1846941 () Bool)

(declare-fun e!1180338 () Bool)

(assert (=> b!1846941 (= e!1180337 e!1180338)))

(declare-fun res!829294 () Bool)

(assert (=> b!1846941 (= res!829294 (not (is-Leaf!9877 (c!301577 x!370302))))))

(assert (=> b!1846941 (=> res!829294 e!1180338)))

(declare-fun b!1846942 () Bool)

(assert (=> b!1846942 (= e!1180338 (inv!26766 (c!301577 x!370302)))))

(assert (= (and d!565375 c!301586) b!1846940))

(assert (= (and d!565375 (not c!301586)) b!1846941))

(assert (= (and b!1846941 (not res!829294)) b!1846942))

(declare-fun m!2275389 () Bool)

(assert (=> b!1846940 m!2275389))

(declare-fun m!2275391 () Bool)

(assert (=> b!1846942 m!2275391))

(assert (=> b!1846848 d!565375))

(assert (=> b!1846858 d!565353))

(assert (=> b!1846858 d!565347))

(assert (=> bs!409572 d!565355))

(assert (=> bs!409572 d!565361))

(assert (=> b!1846861 d!565347))

(declare-fun d!565377 () Bool)

(declare-fun c!301587 () Bool)

(assert (=> d!565377 (= c!301587 (is-Node!6758 (c!301577 x!370301)))))

(declare-fun e!1180339 () Bool)

(assert (=> d!565377 (= (inv!26759 (c!301577 x!370301)) e!1180339)))

(declare-fun b!1846943 () Bool)

(assert (=> b!1846943 (= e!1180339 (inv!26765 (c!301577 x!370301)))))

(declare-fun b!1846944 () Bool)

(declare-fun e!1180340 () Bool)

(assert (=> b!1846944 (= e!1180339 e!1180340)))

(declare-fun res!829295 () Bool)

(assert (=> b!1846944 (= res!829295 (not (is-Leaf!9877 (c!301577 x!370301))))))

(assert (=> b!1846944 (=> res!829295 e!1180340)))

(declare-fun b!1846945 () Bool)

(assert (=> b!1846945 (= e!1180340 (inv!26766 (c!301577 x!370301)))))

(assert (= (and d!565377 c!301587) b!1846943))

(assert (= (and d!565377 (not c!301587)) b!1846944))

(assert (= (and b!1846944 (not res!829295)) b!1846945))

(declare-fun m!2275393 () Bool)

(assert (=> b!1846943 m!2275393))

(declare-fun m!2275395 () Bool)

(assert (=> b!1846945 m!2275395))

(assert (=> b!1846847 d!565377))

(assert (=> bs!409584 d!565349))

(assert (=> bs!409584 d!565359))

(declare-fun d!565379 () Bool)

(declare-fun res!829298 () Bool)

(declare-fun e!1180343 () Bool)

(assert (=> d!565379 (=> (not res!829298) (not e!1180343))))

(assert (=> d!565379 (= res!829298 (semiInverseModEq!1487 (toChars!5086 (TokenValueInjection!7169 lambda!72913 lambda!72912)) (toValue!5227 (TokenValueInjection!7169 lambda!72913 lambda!72912))))))

(assert (=> d!565379 (= (inv!26761 (TokenValueInjection!7169 lambda!72913 lambda!72912)) e!1180343)))

(declare-fun b!1846948 () Bool)

(assert (=> b!1846948 (= e!1180343 (equivClasses!1420 (toChars!5086 (TokenValueInjection!7169 lambda!72913 lambda!72912)) (toValue!5227 (TokenValueInjection!7169 lambda!72913 lambda!72912))))))

(assert (= (and d!565379 res!829298) b!1846948))

(declare-fun m!2275397 () Bool)

(assert (=> d!565379 m!2275397))

(declare-fun m!2275399 () Bool)

(assert (=> b!1846948 m!2275399))

(assert (=> b!1846836 d!565379))

(assert (=> b!1846855 d!565345))

(assert (=> b!1846852 d!565353))

(assert (=> b!1846852 d!565343))

(assert (=> bs!409589 d!565359))

(assert (=> bs!409589 d!565355))

(declare-fun bs!409681 () Bool)

(declare-fun d!565381 () Bool)

(assert (= bs!409681 (and d!565381 b!1846834)))

(declare-fun lambda!72956 () Int)

(assert (=> bs!409681 (not (= lambda!72956 lambda!72914))))

(assert (=> d!565381 true))

(declare-fun order!13175 () Int)

(declare-fun dynLambda!10150 (Int Int) Int)

(assert (=> d!565381 (< (dynLambda!10149 order!13173 lambda!72913) (dynLambda!10150 order!13175 lambda!72956))))

(assert (=> d!565381 (= (equivClasses!1420 lambda!72912 lambda!72913) (Forall2!588 lambda!72956))))

(declare-fun bs!409682 () Bool)

(assert (= bs!409682 d!565381))

(declare-fun m!2275401 () Bool)

(assert (=> bs!409682 m!2275401))

(assert (=> b!1846835 d!565381))

(assert (=> b!1846835 d!565369))

(assert (=> bs!409568 d!565361))

(declare-fun e!1180350 () Bool)

(declare-fun tp!522139 () Bool)

(declare-fun tp!522138 () Bool)

(declare-fun b!1846959 () Bool)

(assert (=> b!1846959 (= e!1180350 (and (inv!26759 (left!16360 (c!301577 x!370302))) tp!522138 (inv!26759 (right!16690 (c!301577 x!370302))) tp!522139))))

(declare-fun b!1846960 () Bool)

(declare-fun inv!26767 (IArray!13521) Bool)

(assert (=> b!1846960 (= e!1180350 (inv!26767 (xs!9634 (c!301577 x!370302))))))

(assert (=> b!1846848 (= tp!522123 (and (inv!26759 (c!301577 x!370302)) e!1180350))))

(assert (= (and b!1846848 (is-Node!6758 (c!301577 x!370302))) b!1846959))

(assert (= (and b!1846848 (is-Leaf!9877 (c!301577 x!370302))) b!1846960))

(declare-fun m!2275403 () Bool)

(assert (=> b!1846959 m!2275403))

(declare-fun m!2275405 () Bool)

(assert (=> b!1846959 m!2275405))

(declare-fun m!2275407 () Bool)

(assert (=> b!1846960 m!2275407))

(assert (=> b!1846848 m!2275301))

(declare-fun tp!522141 () Bool)

(declare-fun tp!522140 () Bool)

(declare-fun e!1180352 () Bool)

(declare-fun b!1846961 () Bool)

(assert (=> b!1846961 (= e!1180352 (and (inv!26759 (left!16360 (c!301577 x!370301))) tp!522140 (inv!26759 (right!16690 (c!301577 x!370301))) tp!522141))))

(declare-fun b!1846962 () Bool)

(assert (=> b!1846962 (= e!1180352 (inv!26767 (xs!9634 (c!301577 x!370301))))))

(assert (=> b!1846847 (= tp!522124 (and (inv!26759 (c!301577 x!370301)) e!1180352))))

(assert (= (and b!1846847 (is-Node!6758 (c!301577 x!370301))) b!1846961))

(assert (= (and b!1846847 (is-Leaf!9877 (c!301577 x!370301))) b!1846962))

(declare-fun m!2275409 () Bool)

(assert (=> b!1846961 m!2275409))

(declare-fun m!2275411 () Bool)

(assert (=> b!1846961 m!2275411))

(declare-fun m!2275413 () Bool)

(assert (=> b!1846962 m!2275413))

(assert (=> b!1846847 m!2275299))

(declare-fun b!1846963 () Bool)

(declare-fun tp!522142 () Bool)

(declare-fun e!1180354 () Bool)

(declare-fun tp!522143 () Bool)

(assert (=> b!1846963 (= e!1180354 (and (inv!26759 (left!16360 (c!301577 x!370300))) tp!522142 (inv!26759 (right!16690 (c!301577 x!370300))) tp!522143))))

(declare-fun b!1846964 () Bool)

(assert (=> b!1846964 (= e!1180354 (inv!26767 (xs!9634 (c!301577 x!370300))))))

(assert (=> b!1846845 (= tp!522122 (and (inv!26759 (c!301577 x!370300)) e!1180354))))

(assert (= (and b!1846845 (is-Node!6758 (c!301577 x!370300))) b!1846963))

(assert (= (and b!1846845 (is-Leaf!9877 (c!301577 x!370300))) b!1846964))

(declare-fun m!2275415 () Bool)

(assert (=> b!1846963 m!2275415))

(declare-fun m!2275417 () Bool)

(assert (=> b!1846963 m!2275417))

(declare-fun m!2275419 () Bool)

(assert (=> b!1846964 m!2275419))

(assert (=> b!1846845 m!2275275))

(push 1)

(assert (not d!565363))

(assert (not d!565353))

(assert (not d!565359))

(assert (not d!565369))

(assert (not d!565347))

(assert (not d!565367))

(assert (not b!1846925))

(assert (not b!1846959))

(assert (not d!565343))

(assert (not d!565379))

(assert (not b!1846962))

(assert (not b!1846945))

(assert (not b!1846933))

(assert (not b!1846943))

(assert (not d!565349))

(assert (not d!565345))

(assert (not b!1846948))

(assert (not d!565373))

(assert (not b!1846848))

(assert (not b!1846935))

(assert (not b!1846942))

(assert (not d!565381))

(assert (not d!565355))

(assert (not b!1846963))

(assert (not b!1846845))

(assert (not d!565361))

(assert (not b!1846964))

(assert (not d!565371))

(assert (not b!1846961))

(assert (not b!1846960))

(assert (not d!565365))

(assert (not b!1846940))

(assert (not b!1846847))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

