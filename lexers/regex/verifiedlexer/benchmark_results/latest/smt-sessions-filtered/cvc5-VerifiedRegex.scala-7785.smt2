; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!409094 () Bool)

(assert start!409094)

(assert (=> start!409094 true))

(declare-fun b!4268305 () Bool)

(assert (=> b!4268305 true))

(assert (=> b!4268305 true))

(assert (=> b!4268305 true))

(declare-fun b!4268314 () Bool)

(declare-fun e!2650049 () Bool)

(declare-datatypes ((List!47402 0))(
  ( (Nil!47278) (Cons!47278 (h!52698 (_ BitVec 16)) (t!353542 List!47402)) )
))
(declare-datatypes ((IArray!28525 0))(
  ( (IArray!28526 (innerList!14320 List!47402)) )
))
(declare-datatypes ((Conc!14260 0))(
  ( (Node!14260 (left!35071 Conc!14260) (right!35401 Conc!14260) (csize!28750 Int) (cheight!14471 Int)) (Leaf!22046 (xs!17566 IArray!28525) (csize!28751 Int)) (Empty!14260) )
))
(declare-datatypes ((BalanceConc!28030 0))(
  ( (BalanceConc!28031 (c!725916 Conc!14260)) )
))
(declare-fun x!738851 () BalanceConc!28030)

(declare-fun tp!1307655 () Bool)

(declare-fun inv!62250 (Conc!14260) Bool)

(assert (=> b!4268314 (= e!2650049 (and (inv!62250 (c!725916 x!738851)) tp!1307655))))

(declare-fun inst!1594 () Bool)

(declare-datatypes ((PrimitiveTypeValueInjection!8 0))(
  ( (PrimitiveTypeValueInjection!9) )
))
(declare-fun thiss!2386 () PrimitiveTypeValueInjection!8)

(declare-fun inv!62251 (BalanceConc!28030) Bool)

(declare-fun list!17097 (BalanceConc!28030) List!47402)

(declare-datatypes ((TokenValue!8233 0))(
  ( (FloatLiteralValue!16466 (text!58076 List!47402)) (TokenValueExt!8232 (__x!28679 Int)) (Broken!41165 (value!248652 List!47402)) (Object!8356) (End!8233) (Def!8233) (Underscore!8233) (Match!8233) (Else!8233) (Error!8233) (Case!8233) (If!8233) (Extends!8233) (Abstract!8233) (Class!8233) (Val!8233) (DelimiterValue!16466 (del!8293 List!47402)) (KeywordValue!8239 (value!248653 List!47402)) (CommentValue!16466 (value!248654 List!47402)) (WhitespaceValue!16466 (value!248655 List!47402)) (IndentationValue!8233 (value!248656 List!47402)) (String!55176) (Int32!8233) (Broken!41166 (value!248657 List!47402)) (Boolean!8234) (Unit!66171) (OperatorValue!8236 (op!8293 List!47402)) (IdentifierValue!16466 (value!248658 List!47402)) (IdentifierValue!16467 (value!248659 List!47402)) (WhitespaceValue!16467 (value!248660 List!47402)) (True!16466) (False!16466) (Broken!41167 (value!248661 List!47402)) (Broken!41168 (value!248662 List!47402)) (True!16467) (RightBrace!8233) (RightBracket!8233) (Colon!8233) (Null!8233) (Comma!8233) (LeftBracket!8233) (False!16467) (LeftBrace!8233) (ImaginaryLiteralValue!8233 (text!58077 List!47402)) (StringLiteralValue!24699 (value!248663 List!47402)) (EOFValue!8233 (value!248664 List!47402)) (IdentValue!8233 (value!248665 List!47402)) (DelimiterValue!16467 (value!248666 List!47402)) (DedentValue!8233 (value!248667 List!47402)) (NewLineValue!8233 (value!248668 List!47402)) (IntegerValue!24699 (value!248669 (_ BitVec 32)) (text!58078 List!47402)) (IntegerValue!24700 (value!248670 Int) (text!58079 List!47402)) (Times!8233) (Or!8233) (Equal!8233) (Minus!8233) (Broken!41169 (value!248671 List!47402)) (And!8233) (Div!8233) (LessEqual!8233) (Mod!8233) (Concat!21131) (Not!8233) (Plus!8233) (SpaceValue!8233 (value!248672 List!47402)) (IntegerValue!24701 (value!248673 Int) (text!58080 List!47402)) (StringLiteralValue!24700 (text!58081 List!47402)) (FloatLiteralValue!16467 (text!58082 List!47402)) (BytesLiteralValue!8233 (value!248674 List!47402)) (CommentValue!16467 (value!248675 List!47402)) (StringLiteralValue!24701 (value!248676 List!47402)) (ErrorTokenValue!8233 (msg!8294 List!47402)) )
))
(declare-fun toCharacters!8 (PrimitiveTypeValueInjection!8 TokenValue!8233) BalanceConc!28030)

(declare-fun toValue!15 (PrimitiveTypeValueInjection!8 BalanceConc!28030) TokenValue!8233)

(assert (=> start!409094 (= inst!1594 (=> (and (inv!62251 x!738851) e!2650049) (= (list!17097 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))) (list!17097 x!738851))))))

(assert (= start!409094 b!4268314))

(declare-fun m!4860901 () Bool)

(assert (=> b!4268314 m!4860901))

(declare-fun m!4860903 () Bool)

(assert (=> start!409094 m!4860903))

(declare-fun m!4860905 () Bool)

(assert (=> start!409094 m!4860905))

(declare-fun m!4860907 () Bool)

(assert (=> start!409094 m!4860907))

(declare-fun m!4860909 () Bool)

(assert (=> start!409094 m!4860909))

(assert (=> start!409094 m!4860905))

(assert (=> start!409094 m!4860909))

(declare-fun m!4860911 () Bool)

(assert (=> start!409094 m!4860911))

(declare-fun res!1753659 () Bool)

(declare-fun e!2650052 () Bool)

(assert (=> b!4268305 (=> res!1753659 e!2650052)))

(declare-fun x!738852 () BalanceConc!28030)

(declare-fun x!738853 () BalanceConc!28030)

(assert (=> b!4268305 (= res!1753659 (not (= (list!17097 x!738852) (list!17097 x!738853))))))

(declare-fun e!2650051 () Bool)

(declare-fun inst!1595 () Bool)

(declare-fun e!2650050 () Bool)

(assert (=> b!4268305 (= inst!1595 (=> (and (inv!62251 x!738852) e!2650050 (inv!62251 x!738853) e!2650051) e!2650052))))

(declare-fun b!4268315 () Bool)

(assert (=> b!4268315 (= e!2650052 (= (toValue!15 thiss!2386 x!738852) (toValue!15 thiss!2386 x!738853)))))

(declare-fun b!4268316 () Bool)

(declare-fun tp!1307656 () Bool)

(assert (=> b!4268316 (= e!2650050 (and (inv!62250 (c!725916 x!738852)) tp!1307656))))

(declare-fun b!4268317 () Bool)

(declare-fun tp!1307657 () Bool)

(assert (=> b!4268317 (= e!2650051 (and (inv!62250 (c!725916 x!738853)) tp!1307657))))

(assert (= (and b!4268305 (not res!1753659)) b!4268315))

(assert (= b!4268305 b!4268316))

(assert (= b!4268305 b!4268317))

(declare-fun m!4860913 () Bool)

(assert (=> b!4268305 m!4860913))

(declare-fun m!4860915 () Bool)

(assert (=> b!4268305 m!4860915))

(declare-fun m!4860917 () Bool)

(assert (=> b!4268305 m!4860917))

(declare-fun m!4860919 () Bool)

(assert (=> b!4268305 m!4860919))

(declare-fun m!4860921 () Bool)

(assert (=> b!4268315 m!4860921))

(declare-fun m!4860923 () Bool)

(assert (=> b!4268315 m!4860923))

(declare-fun m!4860925 () Bool)

(assert (=> b!4268316 m!4860925))

(declare-fun m!4860927 () Bool)

(assert (=> b!4268317 m!4860927))

(declare-fun bs!599682 () Bool)

(declare-fun neg-inst!1594 () Bool)

(declare-fun s!239254 () Bool)

(assert (= bs!599682 (and neg-inst!1594 s!239254)))

(assert (=> bs!599682 (=> true (= (list!17097 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))) (list!17097 x!738851)))))

(assert (=> m!4860909 m!4860905))

(assert (=> m!4860909 m!4860907))

(assert (=> m!4860909 m!4860911))

(assert (=> m!4860909 s!239254))

(assert (=> m!4860911 s!239254))

(declare-fun bs!599683 () Bool)

(assert (= bs!599683 (and neg-inst!1594 start!409094)))

(assert (=> bs!599683 (= true inst!1594)))

(declare-fun bs!599684 () Bool)

(declare-fun neg-inst!1595 () Bool)

(declare-fun s!239256 () Bool)

(assert (= bs!599684 (and neg-inst!1595 s!239256)))

(declare-fun res!1753660 () Bool)

(declare-fun e!2650053 () Bool)

(assert (=> bs!599684 (=> res!1753660 e!2650053)))

(assert (=> bs!599684 (= res!1753660 (not (= (list!17097 x!738852) (list!17097 x!738852))))))

(assert (=> bs!599684 (=> true e!2650053)))

(declare-fun b!4268318 () Bool)

(assert (=> b!4268318 (= e!2650053 (= (toValue!15 thiss!2386 x!738852) (toValue!15 thiss!2386 x!738852)))))

(assert (= (and bs!599684 (not res!1753660)) b!4268318))

(assert (=> m!4860913 s!239256))

(assert (=> m!4860913 s!239256))

(declare-fun bs!599685 () Bool)

(declare-fun s!239258 () Bool)

(assert (= bs!599685 (and neg-inst!1595 s!239258)))

(declare-fun res!1753661 () Bool)

(declare-fun e!2650054 () Bool)

(assert (=> bs!599685 (=> res!1753661 e!2650054)))

(assert (=> bs!599685 (= res!1753661 (not (= (list!17097 x!738852) (list!17097 x!738851))))))

(assert (=> bs!599685 (=> true e!2650054)))

(declare-fun b!4268319 () Bool)

(assert (=> b!4268319 (= e!2650054 (= (toValue!15 thiss!2386 x!738852) (toValue!15 thiss!2386 x!738851)))))

(assert (= (and bs!599685 (not res!1753661)) b!4268319))

(declare-fun bs!599686 () Bool)

(assert (= bs!599686 (and m!4860909 m!4860913)))

(assert (=> bs!599686 m!4860913))

(assert (=> bs!599686 m!4860911))

(assert (=> bs!599686 s!239258))

(declare-fun bs!599687 () Bool)

(declare-fun s!239260 () Bool)

(assert (= bs!599687 (and neg-inst!1595 s!239260)))

(declare-fun res!1753662 () Bool)

(declare-fun e!2650055 () Bool)

(assert (=> bs!599687 (=> res!1753662 e!2650055)))

(assert (=> bs!599687 (= res!1753662 (not (= (list!17097 x!738851) (list!17097 x!738851))))))

(assert (=> bs!599687 (=> true e!2650055)))

(declare-fun b!4268320 () Bool)

(assert (=> b!4268320 (= e!2650055 (= (toValue!15 thiss!2386 x!738851) (toValue!15 thiss!2386 x!738851)))))

(assert (= (and bs!599687 (not res!1753662)) b!4268320))

(assert (=> m!4860909 m!4860911))

(assert (=> m!4860909 m!4860911))

(assert (=> m!4860909 s!239260))

(declare-fun bs!599688 () Bool)

(declare-fun s!239262 () Bool)

(assert (= bs!599688 (and neg-inst!1595 s!239262)))

(declare-fun res!1753663 () Bool)

(declare-fun e!2650056 () Bool)

(assert (=> bs!599688 (=> res!1753663 e!2650056)))

(assert (=> bs!599688 (= res!1753663 (not (= (list!17097 x!738851) (list!17097 x!738852))))))

(assert (=> bs!599688 (=> true e!2650056)))

(declare-fun b!4268321 () Bool)

(assert (=> b!4268321 (= e!2650056 (= (toValue!15 thiss!2386 x!738851) (toValue!15 thiss!2386 x!738852)))))

(assert (= (and bs!599688 (not res!1753663)) b!4268321))

(assert (=> bs!599686 m!4860911))

(assert (=> bs!599686 m!4860913))

(assert (=> bs!599686 s!239262))

(assert (=> m!4860909 s!239260))

(declare-fun bs!599689 () Bool)

(declare-fun s!239264 () Bool)

(assert (= bs!599689 (and neg-inst!1595 s!239264)))

(declare-fun res!1753664 () Bool)

(declare-fun e!2650057 () Bool)

(assert (=> bs!599689 (=> res!1753664 e!2650057)))

(assert (=> bs!599689 (= res!1753664 (not (= (list!17097 x!738851) (list!17097 x!738853))))))

(assert (=> bs!599689 (=> true e!2650057)))

(declare-fun b!4268322 () Bool)

(assert (=> b!4268322 (= e!2650057 (= (toValue!15 thiss!2386 x!738851) (toValue!15 thiss!2386 x!738853)))))

(assert (= (and bs!599689 (not res!1753664)) b!4268322))

(declare-fun bs!599690 () Bool)

(assert (= bs!599690 (and m!4860915 m!4860909)))

(assert (=> bs!599690 m!4860911))

(assert (=> bs!599690 m!4860915))

(assert (=> bs!599690 s!239264))

(declare-fun bs!599691 () Bool)

(declare-fun s!239266 () Bool)

(assert (= bs!599691 (and neg-inst!1595 s!239266)))

(declare-fun res!1753665 () Bool)

(declare-fun e!2650058 () Bool)

(assert (=> bs!599691 (=> res!1753665 e!2650058)))

(assert (=> bs!599691 (= res!1753665 (not (= (list!17097 x!738852) (list!17097 x!738853))))))

(assert (=> bs!599691 (=> true e!2650058)))

(declare-fun b!4268323 () Bool)

(assert (=> b!4268323 (= e!2650058 (= (toValue!15 thiss!2386 x!738852) (toValue!15 thiss!2386 x!738853)))))

(assert (= (and bs!599691 (not res!1753665)) b!4268323))

(declare-fun bs!599692 () Bool)

(assert (= bs!599692 (and m!4860915 m!4860913)))

(assert (=> bs!599692 m!4860913))

(assert (=> bs!599692 m!4860915))

(assert (=> bs!599692 s!239266))

(declare-fun bs!599693 () Bool)

(declare-fun s!239268 () Bool)

(assert (= bs!599693 (and neg-inst!1595 s!239268)))

(declare-fun res!1753666 () Bool)

(declare-fun e!2650059 () Bool)

(assert (=> bs!599693 (=> res!1753666 e!2650059)))

(assert (=> bs!599693 (= res!1753666 (not (= (list!17097 x!738853) (list!17097 x!738853))))))

(assert (=> bs!599693 (=> true e!2650059)))

(declare-fun b!4268324 () Bool)

(assert (=> b!4268324 (= e!2650059 (= (toValue!15 thiss!2386 x!738853) (toValue!15 thiss!2386 x!738853)))))

(assert (= (and bs!599693 (not res!1753666)) b!4268324))

(assert (=> m!4860915 s!239268))

(declare-fun bs!599694 () Bool)

(declare-fun s!239270 () Bool)

(assert (= bs!599694 (and neg-inst!1595 s!239270)))

(declare-fun res!1753667 () Bool)

(declare-fun e!2650060 () Bool)

(assert (=> bs!599694 (=> res!1753667 e!2650060)))

(assert (=> bs!599694 (= res!1753667 (not (= (list!17097 x!738853) (list!17097 x!738851))))))

(assert (=> bs!599694 (=> true e!2650060)))

(declare-fun b!4268325 () Bool)

(assert (=> b!4268325 (= e!2650060 (= (toValue!15 thiss!2386 x!738853) (toValue!15 thiss!2386 x!738851)))))

(assert (= (and bs!599694 (not res!1753667)) b!4268325))

(assert (=> bs!599690 m!4860915))

(assert (=> bs!599690 m!4860911))

(assert (=> bs!599690 s!239270))

(declare-fun bs!599695 () Bool)

(declare-fun s!239272 () Bool)

(assert (= bs!599695 (and neg-inst!1595 s!239272)))

(declare-fun res!1753668 () Bool)

(declare-fun e!2650061 () Bool)

(assert (=> bs!599695 (=> res!1753668 e!2650061)))

(assert (=> bs!599695 (= res!1753668 (not (= (list!17097 x!738853) (list!17097 x!738852))))))

(assert (=> bs!599695 (=> true e!2650061)))

(declare-fun b!4268326 () Bool)

(assert (=> b!4268326 (= e!2650061 (= (toValue!15 thiss!2386 x!738853) (toValue!15 thiss!2386 x!738852)))))

(assert (= (and bs!599695 (not res!1753668)) b!4268326))

(assert (=> bs!599692 m!4860915))

(assert (=> bs!599692 m!4860913))

(assert (=> bs!599692 s!239272))

(assert (=> m!4860915 s!239268))

(declare-fun bs!599696 () Bool)

(assert (= bs!599696 (and m!4860911 m!4860909)))

(assert (=> bs!599696 s!239260))

(declare-fun bs!599697 () Bool)

(assert (= bs!599697 (and m!4860911 m!4860913)))

(assert (=> bs!599697 s!239258))

(declare-fun bs!599698 () Bool)

(assert (= bs!599698 (and m!4860911 m!4860915)))

(assert (=> bs!599698 s!239270))

(assert (=> m!4860911 s!239260))

(assert (=> bs!599696 s!239260))

(assert (=> bs!599697 s!239262))

(assert (=> bs!599698 s!239264))

(assert (=> m!4860911 s!239260))

(declare-fun bs!599699 () Bool)

(assert (= bs!599699 (and m!4860921 m!4860909 m!4860911)))

(assert (=> bs!599699 s!239262))

(declare-fun bs!599700 () Bool)

(assert (= bs!599700 (and m!4860921 m!4860913)))

(assert (=> bs!599700 s!239256))

(declare-fun bs!599701 () Bool)

(assert (= bs!599701 (and m!4860921 m!4860915)))

(assert (=> bs!599701 s!239272))

(assert (=> m!4860921 s!239256))

(assert (=> bs!599699 s!239258))

(assert (=> bs!599700 s!239256))

(assert (=> bs!599701 s!239266))

(assert (=> m!4860921 s!239256))

(declare-fun bs!599702 () Bool)

(assert (= bs!599702 (and m!4860923 m!4860909 m!4860911)))

(assert (=> bs!599702 s!239264))

(declare-fun bs!599703 () Bool)

(assert (= bs!599703 (and m!4860923 m!4860913 m!4860921)))

(assert (=> bs!599703 s!239266))

(declare-fun bs!599704 () Bool)

(assert (= bs!599704 (and m!4860923 m!4860915)))

(assert (=> bs!599704 s!239268))

(assert (=> m!4860923 s!239268))

(assert (=> bs!599702 s!239270))

(assert (=> bs!599703 s!239272))

(assert (=> bs!599704 s!239268))

(assert (=> m!4860923 s!239268))

(declare-fun bs!599705 () Bool)

(declare-fun s!239274 () Bool)

(assert (= bs!599705 (and neg-inst!1595 s!239274)))

(declare-fun res!1753669 () Bool)

(declare-fun e!2650062 () Bool)

(assert (=> bs!599705 (=> res!1753669 e!2650062)))

(assert (=> bs!599705 (= res!1753669 (not (= (list!17097 x!738851) (list!17097 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))))))

(assert (=> bs!599705 (=> true e!2650062)))

(declare-fun b!4268327 () Bool)

(assert (=> b!4268327 (= e!2650062 (= (toValue!15 thiss!2386 x!738851) (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))))))

(assert (= (and bs!599705 (not res!1753669)) b!4268327))

(declare-fun bs!599706 () Bool)

(assert (= bs!599706 (and m!4860907 m!4860909 m!4860911)))

(assert (=> bs!599706 m!4860911))

(assert (=> bs!599706 m!4860907))

(assert (=> bs!599706 s!239274))

(declare-fun bs!599707 () Bool)

(declare-fun s!239276 () Bool)

(assert (= bs!599707 (and neg-inst!1595 s!239276)))

(declare-fun res!1753670 () Bool)

(declare-fun e!2650063 () Bool)

(assert (=> bs!599707 (=> res!1753670 e!2650063)))

(assert (=> bs!599707 (= res!1753670 (not (= (list!17097 x!738852) (list!17097 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))))))

(assert (=> bs!599707 (=> true e!2650063)))

(declare-fun b!4268328 () Bool)

(assert (=> b!4268328 (= e!2650063 (= (toValue!15 thiss!2386 x!738852) (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))))))

(assert (= (and bs!599707 (not res!1753670)) b!4268328))

(declare-fun bs!599708 () Bool)

(assert (= bs!599708 (and m!4860907 m!4860913 m!4860921)))

(assert (=> bs!599708 m!4860913))

(assert (=> bs!599708 m!4860907))

(assert (=> bs!599708 s!239276))

(declare-fun bs!599709 () Bool)

(declare-fun s!239278 () Bool)

(assert (= bs!599709 (and neg-inst!1595 s!239278)))

(declare-fun res!1753671 () Bool)

(declare-fun e!2650064 () Bool)

(assert (=> bs!599709 (=> res!1753671 e!2650064)))

(assert (=> bs!599709 (= res!1753671 (not (= (list!17097 x!738853) (list!17097 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))))))

(assert (=> bs!599709 (=> true e!2650064)))

(declare-fun b!4268329 () Bool)

(assert (=> b!4268329 (= e!2650064 (= (toValue!15 thiss!2386 x!738853) (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))))))

(assert (= (and bs!599709 (not res!1753671)) b!4268329))

(declare-fun bs!599710 () Bool)

(assert (= bs!599710 (and m!4860907 m!4860915 m!4860923)))

(assert (=> bs!599710 m!4860915))

(assert (=> bs!599710 m!4860907))

(assert (=> bs!599710 s!239278))

(declare-fun bs!599711 () Bool)

(declare-fun s!239280 () Bool)

(assert (= bs!599711 (and neg-inst!1595 s!239280)))

(declare-fun res!1753672 () Bool)

(declare-fun e!2650065 () Bool)

(assert (=> bs!599711 (=> res!1753672 e!2650065)))

(assert (=> bs!599711 (= res!1753672 (not (= (list!17097 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))) (list!17097 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))))))

(assert (=> bs!599711 (=> true e!2650065)))

(declare-fun b!4268330 () Bool)

(assert (=> b!4268330 (= e!2650065 (= (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))) (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))))))

(assert (= (and bs!599711 (not res!1753672)) b!4268330))

(assert (=> m!4860907 s!239280))

(declare-fun bs!599712 () Bool)

(declare-fun s!239282 () Bool)

(assert (= bs!599712 (and neg-inst!1595 s!239282)))

(declare-fun res!1753673 () Bool)

(declare-fun e!2650066 () Bool)

(assert (=> bs!599712 (=> res!1753673 e!2650066)))

(assert (=> bs!599712 (= res!1753673 (not (= (list!17097 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))) (list!17097 x!738851))))))

(assert (=> bs!599712 (=> true e!2650066)))

(declare-fun b!4268331 () Bool)

(assert (=> b!4268331 (= e!2650066 (= (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))) (toValue!15 thiss!2386 x!738851)))))

(assert (= (and bs!599712 (not res!1753673)) b!4268331))

(assert (=> bs!599706 m!4860907))

(assert (=> bs!599706 m!4860911))

(assert (=> bs!599706 s!239282))

(declare-fun bs!599713 () Bool)

(declare-fun s!239284 () Bool)

(assert (= bs!599713 (and neg-inst!1595 s!239284)))

(declare-fun res!1753674 () Bool)

(declare-fun e!2650067 () Bool)

(assert (=> bs!599713 (=> res!1753674 e!2650067)))

(assert (=> bs!599713 (= res!1753674 (not (= (list!17097 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))) (list!17097 x!738852))))))

(assert (=> bs!599713 (=> true e!2650067)))

(declare-fun b!4268332 () Bool)

(assert (=> b!4268332 (= e!2650067 (= (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))) (toValue!15 thiss!2386 x!738852)))))

(assert (= (and bs!599713 (not res!1753674)) b!4268332))

(assert (=> bs!599708 m!4860907))

(assert (=> bs!599708 m!4860913))

(assert (=> bs!599708 s!239284))

(declare-fun bs!599714 () Bool)

(declare-fun s!239286 () Bool)

(assert (= bs!599714 (and neg-inst!1595 s!239286)))

(declare-fun res!1753675 () Bool)

(declare-fun e!2650068 () Bool)

(assert (=> bs!599714 (=> res!1753675 e!2650068)))

(assert (=> bs!599714 (= res!1753675 (not (= (list!17097 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))) (list!17097 x!738853))))))

(assert (=> bs!599714 (=> true e!2650068)))

(declare-fun b!4268333 () Bool)

(assert (=> b!4268333 (= e!2650068 (= (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))) (toValue!15 thiss!2386 x!738853)))))

(assert (= (and bs!599714 (not res!1753675)) b!4268333))

(assert (=> bs!599710 m!4860907))

(assert (=> bs!599710 m!4860915))

(assert (=> bs!599710 s!239286))

(assert (=> m!4860907 s!239280))

(declare-fun bs!599715 () Bool)

(assert (= bs!599715 (and neg-inst!1595 b!4268305)))

(assert (=> bs!599715 (= true inst!1595)))

(declare-fun res!1753658 () Bool)

(declare-fun e!2650048 () Bool)

(assert (=> start!409094 (=> res!1753658 e!2650048)))

(declare-fun lambda!130434 () Int)

(declare-fun Forall!1615 (Int) Bool)

(assert (=> start!409094 (= res!1753658 (not (Forall!1615 lambda!130434)))))

(assert (=> start!409094 (= (Forall!1615 lambda!130434) inst!1594)))

(assert (=> start!409094 (not e!2650048)))

(assert (=> start!409094 true))

(declare-fun lambda!130437 () Int)

(declare-fun Forall2!1210 (Int) Bool)

(assert (=> b!4268305 (= e!2650048 (Forall2!1210 lambda!130437))))

(assert (=> b!4268305 (= (Forall2!1210 lambda!130437) inst!1595)))

(declare-fun lambda!130435 () Int)

(declare-fun lambda!130436 () Int)

(declare-fun semiInverseModEq!3495 (Int Int) Bool)

(assert (=> b!4268305 (= (semiInverseModEq!3495 lambda!130435 lambda!130436) (Forall!1615 lambda!130434))))

(assert (= neg-inst!1594 inst!1594))

(assert (= (and start!409094 (not res!1753658)) b!4268305))

(assert (= neg-inst!1595 inst!1595))

(declare-fun m!4860929 () Bool)

(assert (=> start!409094 m!4860929))

(assert (=> start!409094 m!4860929))

(declare-fun m!4860931 () Bool)

(assert (=> b!4268305 m!4860931))

(assert (=> b!4268305 m!4860931))

(declare-fun m!4860933 () Bool)

(assert (=> b!4268305 m!4860933))

(assert (=> b!4268305 m!4860929))

(push 1)

(assert (not bs!599713))

(assert (not b!4268319))

(assert (not start!409094))

(assert (not b!4268316))

(assert (not bs!599714))

(assert (not b!4268324))

(assert (not b!4268315))

(assert (not bs!599691))

(assert (not bs!599685))

(assert (not b!4268333))

(assert (not bs!599711))

(assert (not b!4268318))

(assert (not bs!599709))

(assert (not bs!599689))

(assert (not b!4268323))

(assert (not b!4268328))

(assert (not bs!599705))

(assert (not b!4268325))

(assert (not b!4268317))

(assert (not b!4268329))

(assert (not bs!599688))

(assert (not b!4268330))

(assert (not b!4268321))

(assert (not b!4268322))

(assert (not b!4268305))

(assert (not bs!599694))

(assert (not bs!599695))

(assert (not b!4268314))

(assert (not b!4268331))

(assert (not bs!599712))

(assert (not b!4268327))

(assert (not b!4268332))

(assert (not b!4268320))

(assert (not bs!599682))

(assert (not bs!599687))

(assert (not bs!599684))

(assert (not bs!599707))

(assert (not b!4268326))

(assert (not bs!599693))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1258570 () Bool)

(declare-fun list!17099 (Conc!14260) List!47402)

(assert (=> d!1258570 (= (list!17097 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))) (list!17099 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))))))

(declare-fun bs!599751 () Bool)

(assert (= bs!599751 d!1258570))

(declare-fun m!4860969 () Bool)

(assert (=> bs!599751 m!4860969))

(assert (=> bs!599714 d!1258570))

(declare-fun d!1258572 () Bool)

(assert (=> d!1258572 (= (list!17097 x!738853) (list!17099 (c!725916 x!738853)))))

(declare-fun bs!599752 () Bool)

(assert (= bs!599752 d!1258572))

(declare-fun m!4860971 () Bool)

(assert (=> bs!599752 m!4860971))

(assert (=> bs!599714 d!1258572))

(declare-fun d!1258574 () Bool)

(assert (=> d!1258574 (= (list!17097 x!738851) (list!17099 (c!725916 x!738851)))))

(declare-fun bs!599753 () Bool)

(assert (= bs!599753 d!1258574))

(declare-fun m!4860973 () Bool)

(assert (=> bs!599753 m!4860973))

(assert (=> bs!599688 d!1258574))

(declare-fun d!1258576 () Bool)

(assert (=> d!1258576 (= (list!17097 x!738852) (list!17099 (c!725916 x!738852)))))

(declare-fun bs!599754 () Bool)

(assert (= bs!599754 d!1258576))

(declare-fun m!4860975 () Bool)

(assert (=> bs!599754 m!4860975))

(assert (=> bs!599688 d!1258576))

(declare-fun d!1258578 () Bool)

(declare-fun lt!1512228 () List!47402)

(declare-fun efficientList!441 (BalanceConc!28030) List!47402)

(assert (=> d!1258578 (= lt!1512228 (efficientList!441 x!738853))))

(assert (=> d!1258578 (= (toValue!15 thiss!2386 x!738853) (ite (= lt!1512228 (Cons!47278 #x0049 (Cons!47278 #x006E (Cons!47278 #x0074 (Cons!47278 #x0028 (Cons!47278 #x0033 (Cons!47278 #x0032 (Cons!47278 #x0029 Nil!47278)))))))) Int32!8233 (ite (= lt!1512228 (Cons!47278 #x0055 (Cons!47278 #x006E (Cons!47278 #x0069 (Cons!47278 #x0074 Nil!47278))))) Unit!66171 (ite (= lt!1512228 (Cons!47278 #x0042 (Cons!47278 #x006F (Cons!47278 #x006F (Cons!47278 #x006C (Cons!47278 #x0065 (Cons!47278 #x0061 (Cons!47278 #x006E Nil!47278)))))))) Boolean!8234 (ite (= lt!1512228 (Cons!47278 #x0053 (Cons!47278 #x0074 (Cons!47278 #x0072 (Cons!47278 #x0069 (Cons!47278 #x006E (Cons!47278 #x0067 Nil!47278))))))) String!55176 (Broken!41166 lt!1512228))))))))

(declare-fun bs!599755 () Bool)

(assert (= bs!599755 d!1258578))

(declare-fun m!4860977 () Bool)

(assert (=> bs!599755 m!4860977))

(assert (=> b!4268329 d!1258578))

(declare-fun d!1258580 () Bool)

(declare-fun lt!1512229 () List!47402)

(assert (=> d!1258580 (= lt!1512229 (efficientList!441 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))))

(assert (=> d!1258580 (= (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))) (ite (= lt!1512229 (Cons!47278 #x0049 (Cons!47278 #x006E (Cons!47278 #x0074 (Cons!47278 #x0028 (Cons!47278 #x0033 (Cons!47278 #x0032 (Cons!47278 #x0029 Nil!47278)))))))) Int32!8233 (ite (= lt!1512229 (Cons!47278 #x0055 (Cons!47278 #x006E (Cons!47278 #x0069 (Cons!47278 #x0074 Nil!47278))))) Unit!66171 (ite (= lt!1512229 (Cons!47278 #x0042 (Cons!47278 #x006F (Cons!47278 #x006F (Cons!47278 #x006C (Cons!47278 #x0065 (Cons!47278 #x0061 (Cons!47278 #x006E Nil!47278)))))))) Boolean!8234 (ite (= lt!1512229 (Cons!47278 #x0053 (Cons!47278 #x0074 (Cons!47278 #x0072 (Cons!47278 #x0069 (Cons!47278 #x006E (Cons!47278 #x0067 Nil!47278))))))) String!55176 (Broken!41166 lt!1512229))))))))

(declare-fun bs!599756 () Bool)

(assert (= bs!599756 d!1258580))

(assert (=> bs!599756 m!4860905))

(declare-fun m!4860979 () Bool)

(assert (=> bs!599756 m!4860979))

(assert (=> b!4268329 d!1258580))

(assert (=> bs!599693 d!1258572))

(assert (=> b!4268332 d!1258580))

(declare-fun d!1258582 () Bool)

(declare-fun lt!1512230 () List!47402)

(assert (=> d!1258582 (= lt!1512230 (efficientList!441 x!738852))))

(assert (=> d!1258582 (= (toValue!15 thiss!2386 x!738852) (ite (= lt!1512230 (Cons!47278 #x0049 (Cons!47278 #x006E (Cons!47278 #x0074 (Cons!47278 #x0028 (Cons!47278 #x0033 (Cons!47278 #x0032 (Cons!47278 #x0029 Nil!47278)))))))) Int32!8233 (ite (= lt!1512230 (Cons!47278 #x0055 (Cons!47278 #x006E (Cons!47278 #x0069 (Cons!47278 #x0074 Nil!47278))))) Unit!66171 (ite (= lt!1512230 (Cons!47278 #x0042 (Cons!47278 #x006F (Cons!47278 #x006F (Cons!47278 #x006C (Cons!47278 #x0065 (Cons!47278 #x0061 (Cons!47278 #x006E Nil!47278)))))))) Boolean!8234 (ite (= lt!1512230 (Cons!47278 #x0053 (Cons!47278 #x0074 (Cons!47278 #x0072 (Cons!47278 #x0069 (Cons!47278 #x006E (Cons!47278 #x0067 Nil!47278))))))) String!55176 (Broken!41166 lt!1512230))))))))

(declare-fun bs!599757 () Bool)

(assert (= bs!599757 d!1258582))

(declare-fun m!4860981 () Bool)

(assert (=> bs!599757 m!4860981))

(assert (=> b!4268332 d!1258582))

(declare-fun d!1258584 () Bool)

(declare-fun lt!1512231 () List!47402)

(assert (=> d!1258584 (= lt!1512231 (efficientList!441 x!738851))))

(assert (=> d!1258584 (= (toValue!15 thiss!2386 x!738851) (ite (= lt!1512231 (Cons!47278 #x0049 (Cons!47278 #x006E (Cons!47278 #x0074 (Cons!47278 #x0028 (Cons!47278 #x0033 (Cons!47278 #x0032 (Cons!47278 #x0029 Nil!47278)))))))) Int32!8233 (ite (= lt!1512231 (Cons!47278 #x0055 (Cons!47278 #x006E (Cons!47278 #x0069 (Cons!47278 #x0074 Nil!47278))))) Unit!66171 (ite (= lt!1512231 (Cons!47278 #x0042 (Cons!47278 #x006F (Cons!47278 #x006F (Cons!47278 #x006C (Cons!47278 #x0065 (Cons!47278 #x0061 (Cons!47278 #x006E Nil!47278)))))))) Boolean!8234 (ite (= lt!1512231 (Cons!47278 #x0053 (Cons!47278 #x0074 (Cons!47278 #x0072 (Cons!47278 #x0069 (Cons!47278 #x006E (Cons!47278 #x0067 Nil!47278))))))) String!55176 (Broken!41166 lt!1512231))))))))

(declare-fun bs!599758 () Bool)

(assert (= bs!599758 d!1258584))

(declare-fun m!4860983 () Bool)

(assert (=> bs!599758 m!4860983))

(assert (=> b!4268320 d!1258584))

(assert (=> bs!599709 d!1258572))

(assert (=> bs!599709 d!1258570))

(assert (=> bs!599689 d!1258574))

(assert (=> bs!599689 d!1258572))

(assert (=> b!4268318 d!1258582))

(assert (=> bs!599694 d!1258572))

(assert (=> bs!599694 d!1258574))

(assert (=> bs!599705 d!1258574))

(assert (=> bs!599705 d!1258570))

(assert (=> bs!599711 d!1258570))

(assert (=> b!4268333 d!1258580))

(assert (=> b!4268333 d!1258578))

(assert (=> b!4268321 d!1258584))

(assert (=> b!4268321 d!1258582))

(assert (=> bs!599684 d!1258576))

(assert (=> b!4268324 d!1258578))

(assert (=> b!4268319 d!1258582))

(assert (=> b!4268319 d!1258584))

(assert (=> bs!599707 d!1258576))

(assert (=> bs!599707 d!1258570))

(assert (=> bs!599695 d!1258572))

(assert (=> bs!599695 d!1258576))

(assert (=> bs!599712 d!1258570))

(assert (=> bs!599712 d!1258574))

(assert (=> b!4268322 d!1258584))

(assert (=> b!4268322 d!1258578))

(assert (=> bs!599685 d!1258576))

(assert (=> bs!599685 d!1258574))

(assert (=> b!4268325 d!1258578))

(assert (=> b!4268325 d!1258584))

(assert (=> b!4268327 d!1258584))

(assert (=> b!4268327 d!1258580))

(assert (=> b!4268330 d!1258580))

(assert (=> b!4268323 d!1258582))

(assert (=> b!4268323 d!1258578))

(assert (=> bs!599713 d!1258570))

(assert (=> bs!599713 d!1258576))

(assert (=> bs!599687 d!1258574))

(assert (=> b!4268328 d!1258582))

(assert (=> b!4268328 d!1258580))

(assert (=> b!4268326 d!1258578))

(assert (=> b!4268326 d!1258582))

(assert (=> bs!599691 d!1258576))

(assert (=> bs!599691 d!1258572))

(assert (=> b!4268331 d!1258580))

(assert (=> b!4268331 d!1258584))

(declare-fun bs!599759 () Bool)

(assert (= bs!599759 (and m!4860913 b!4268318)))

(assert (=> bs!599759 m!4860921))

(assert (=> bs!599759 m!4860921))

(declare-fun bs!599760 () Bool)

(assert (= bs!599760 (and m!4860909 m!4860913 b!4268319)))

(assert (=> bs!599760 m!4860921))

(assert (=> bs!599760 m!4860909))

(declare-fun bs!599761 () Bool)

(assert (= bs!599761 (and m!4860909 b!4268320)))

(assert (=> bs!599761 m!4860909))

(assert (=> bs!599761 m!4860909))

(declare-fun bs!599762 () Bool)

(assert (= bs!599762 (and m!4860909 m!4860913 b!4268321)))

(assert (=> bs!599762 m!4860909))

(assert (=> bs!599762 m!4860921))

(declare-fun bs!599763 () Bool)

(assert (= bs!599763 (and m!4860915 m!4860909 b!4268322)))

(assert (=> bs!599763 m!4860909))

(assert (=> bs!599763 m!4860923))

(declare-fun bs!599764 () Bool)

(assert (= bs!599764 (and m!4860915 m!4860913 b!4268323)))

(assert (=> bs!599764 m!4860921))

(assert (=> bs!599764 m!4860923))

(declare-fun bs!599765 () Bool)

(assert (= bs!599765 (and m!4860915 b!4268324)))

(assert (=> bs!599765 m!4860923))

(assert (=> bs!599765 m!4860923))

(declare-fun bs!599766 () Bool)

(assert (= bs!599766 (and m!4860915 m!4860909 b!4268325)))

(assert (=> bs!599766 m!4860923))

(assert (=> bs!599766 m!4860909))

(declare-fun bs!599767 () Bool)

(assert (= bs!599767 (and m!4860915 m!4860913 b!4268326)))

(assert (=> bs!599767 m!4860923))

(assert (=> bs!599767 m!4860921))

(declare-fun bs!599768 () Bool)

(assert (= bs!599768 (and m!4860907 m!4860909 m!4860911 b!4268327)))

(assert (=> bs!599768 m!4860909))

(declare-fun m!4860985 () Bool)

(assert (=> bs!599768 m!4860985))

(declare-fun bs!599770 () Bool)

(assert (= bs!599770 (and m!4860907 m!4860913 m!4860921 b!4268328)))

(assert (=> bs!599770 m!4860921))

(assert (=> bs!599770 m!4860985))

(declare-fun bs!599771 () Bool)

(assert (= bs!599771 (and m!4860907 m!4860915 m!4860923 b!4268329)))

(assert (=> bs!599771 m!4860923))

(assert (=> bs!599771 m!4860985))

(declare-fun bs!599772 () Bool)

(assert (= bs!599772 (and m!4860907 b!4268330)))

(assert (=> bs!599772 m!4860985))

(assert (=> bs!599772 m!4860985))

(declare-fun bs!599773 () Bool)

(assert (= bs!599773 (and m!4860907 m!4860909 m!4860911 b!4268331)))

(assert (=> bs!599773 m!4860985))

(assert (=> bs!599773 m!4860909))

(declare-fun bs!599774 () Bool)

(assert (= bs!599774 (and m!4860907 m!4860913 m!4860921 b!4268332)))

(assert (=> bs!599774 m!4860985))

(assert (=> bs!599774 m!4860921))

(declare-fun bs!599775 () Bool)

(assert (= bs!599775 (and m!4860907 m!4860915 m!4860923 b!4268333)))

(assert (=> bs!599775 m!4860985))

(assert (=> bs!599775 m!4860923))

(push 1)

(assert (not d!1258572))

(assert (not start!409094))

(assert (not b!4268316))

(assert (not d!1258574))

(assert (not b!4268317))

(assert (not b!4268315))

(assert (not b!4268305))

(assert (not b!4268314))

(assert (not d!1258580))

(assert (not d!1258582))

(assert (not d!1258578))

(assert (not d!1258584))

(assert (not d!1258570))

(assert (not bs!599682))

(assert (not d!1258576))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1258600 () Bool)

(declare-fun lt!1512238 () List!47402)

(assert (=> d!1258600 (= lt!1512238 (list!17097 x!738853))))

(declare-fun efficientList!443 (Conc!14260 List!47402) List!47402)

(declare-fun efficientList$default$2!153 (Conc!14260) List!47402)

(assert (=> d!1258600 (= lt!1512238 (efficientList!443 (c!725916 x!738853) (efficientList$default$2!153 (c!725916 x!738853))))))

(assert (=> d!1258600 (= (efficientList!441 x!738853) lt!1512238)))

(declare-fun bs!599799 () Bool)

(assert (= bs!599799 d!1258600))

(assert (=> bs!599799 m!4860915))

(declare-fun m!4861005 () Bool)

(assert (=> bs!599799 m!4861005))

(assert (=> bs!599799 m!4861005))

(declare-fun m!4861007 () Bool)

(assert (=> bs!599799 m!4861007))

(assert (=> d!1258578 d!1258600))

(declare-fun b!4268387 () Bool)

(declare-fun e!2650110 () List!47402)

(assert (=> b!4268387 (= e!2650110 Nil!47278)))

(declare-fun b!4268389 () Bool)

(declare-fun e!2650111 () List!47402)

(declare-fun list!17101 (IArray!28525) List!47402)

(assert (=> b!4268389 (= e!2650111 (list!17101 (xs!17566 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))))))

(declare-fun d!1258602 () Bool)

(declare-fun c!725922 () Bool)

(assert (=> d!1258602 (= c!725922 (is-Empty!14260 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))))))

(assert (=> d!1258602 (= (list!17099 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))) e!2650110)))

(declare-fun b!4268388 () Bool)

(assert (=> b!4268388 (= e!2650110 e!2650111)))

(declare-fun c!725923 () Bool)

(assert (=> b!4268388 (= c!725923 (is-Leaf!22046 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))))))

(declare-fun b!4268390 () Bool)

(declare-fun ++!12056 (List!47402 List!47402) List!47402)

(assert (=> b!4268390 (= e!2650111 (++!12056 (list!17099 (left!35071 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))) (list!17099 (right!35401 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))))))))

(assert (= (and d!1258602 c!725922) b!4268387))

(assert (= (and d!1258602 (not c!725922)) b!4268388))

(assert (= (and b!4268388 c!725923) b!4268389))

(assert (= (and b!4268388 (not c!725923)) b!4268390))

(declare-fun m!4861009 () Bool)

(assert (=> b!4268389 m!4861009))

(declare-fun m!4861011 () Bool)

(assert (=> b!4268390 m!4861011))

(declare-fun m!4861013 () Bool)

(assert (=> b!4268390 m!4861013))

(assert (=> b!4268390 m!4861011))

(assert (=> b!4268390 m!4861013))

(declare-fun m!4861015 () Bool)

(assert (=> b!4268390 m!4861015))

(assert (=> d!1258570 d!1258602))

(declare-fun b!4268391 () Bool)

(declare-fun e!2650112 () List!47402)

(assert (=> b!4268391 (= e!2650112 Nil!47278)))

(declare-fun b!4268393 () Bool)

(declare-fun e!2650113 () List!47402)

(assert (=> b!4268393 (= e!2650113 (list!17101 (xs!17566 (c!725916 x!738853))))))

(declare-fun d!1258604 () Bool)

(declare-fun c!725924 () Bool)

(assert (=> d!1258604 (= c!725924 (is-Empty!14260 (c!725916 x!738853)))))

(assert (=> d!1258604 (= (list!17099 (c!725916 x!738853)) e!2650112)))

(declare-fun b!4268392 () Bool)

(assert (=> b!4268392 (= e!2650112 e!2650113)))

(declare-fun c!725925 () Bool)

(assert (=> b!4268392 (= c!725925 (is-Leaf!22046 (c!725916 x!738853)))))

(declare-fun b!4268394 () Bool)

(assert (=> b!4268394 (= e!2650113 (++!12056 (list!17099 (left!35071 (c!725916 x!738853))) (list!17099 (right!35401 (c!725916 x!738853)))))))

(assert (= (and d!1258604 c!725924) b!4268391))

(assert (= (and d!1258604 (not c!725924)) b!4268392))

(assert (= (and b!4268392 c!725925) b!4268393))

(assert (= (and b!4268392 (not c!725925)) b!4268394))

(declare-fun m!4861017 () Bool)

(assert (=> b!4268393 m!4861017))

(declare-fun m!4861019 () Bool)

(assert (=> b!4268394 m!4861019))

(declare-fun m!4861021 () Bool)

(assert (=> b!4268394 m!4861021))

(assert (=> b!4268394 m!4861019))

(assert (=> b!4268394 m!4861021))

(declare-fun m!4861023 () Bool)

(assert (=> b!4268394 m!4861023))

(assert (=> d!1258572 d!1258604))

(declare-fun d!1258606 () Bool)

(declare-fun lt!1512239 () List!47402)

(assert (=> d!1258606 (= lt!1512239 (list!17097 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))))

(assert (=> d!1258606 (= lt!1512239 (efficientList!443 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))) (efficientList$default$2!153 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))))))

(assert (=> d!1258606 (= (efficientList!441 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))) lt!1512239)))

(declare-fun bs!599800 () Bool)

(assert (= bs!599800 d!1258606))

(assert (=> bs!599800 m!4860905))

(assert (=> bs!599800 m!4860907))

(declare-fun m!4861025 () Bool)

(assert (=> bs!599800 m!4861025))

(assert (=> bs!599800 m!4861025))

(declare-fun m!4861027 () Bool)

(assert (=> bs!599800 m!4861027))

(assert (=> d!1258580 d!1258606))

(declare-fun b!4268395 () Bool)

(declare-fun e!2650114 () List!47402)

(assert (=> b!4268395 (= e!2650114 Nil!47278)))

(declare-fun b!4268397 () Bool)

(declare-fun e!2650115 () List!47402)

(assert (=> b!4268397 (= e!2650115 (list!17101 (xs!17566 (c!725916 x!738851))))))

(declare-fun d!1258608 () Bool)

(declare-fun c!725926 () Bool)

(assert (=> d!1258608 (= c!725926 (is-Empty!14260 (c!725916 x!738851)))))

(assert (=> d!1258608 (= (list!17099 (c!725916 x!738851)) e!2650114)))

(declare-fun b!4268396 () Bool)

(assert (=> b!4268396 (= e!2650114 e!2650115)))

(declare-fun c!725927 () Bool)

(assert (=> b!4268396 (= c!725927 (is-Leaf!22046 (c!725916 x!738851)))))

(declare-fun b!4268398 () Bool)

(assert (=> b!4268398 (= e!2650115 (++!12056 (list!17099 (left!35071 (c!725916 x!738851))) (list!17099 (right!35401 (c!725916 x!738851)))))))

(assert (= (and d!1258608 c!725926) b!4268395))

(assert (= (and d!1258608 (not c!725926)) b!4268396))

(assert (= (and b!4268396 c!725927) b!4268397))

(assert (= (and b!4268396 (not c!725927)) b!4268398))

(declare-fun m!4861029 () Bool)

(assert (=> b!4268397 m!4861029))

(declare-fun m!4861031 () Bool)

(assert (=> b!4268398 m!4861031))

(declare-fun m!4861033 () Bool)

(assert (=> b!4268398 m!4861033))

(assert (=> b!4268398 m!4861031))

(assert (=> b!4268398 m!4861033))

(declare-fun m!4861035 () Bool)

(assert (=> b!4268398 m!4861035))

(assert (=> d!1258574 d!1258608))

(declare-fun d!1258610 () Bool)

(declare-fun lt!1512240 () List!47402)

(assert (=> d!1258610 (= lt!1512240 (list!17097 x!738852))))

(assert (=> d!1258610 (= lt!1512240 (efficientList!443 (c!725916 x!738852) (efficientList$default$2!153 (c!725916 x!738852))))))

(assert (=> d!1258610 (= (efficientList!441 x!738852) lt!1512240)))

(declare-fun bs!599801 () Bool)

(assert (= bs!599801 d!1258610))

(assert (=> bs!599801 m!4860913))

(declare-fun m!4861037 () Bool)

(assert (=> bs!599801 m!4861037))

(assert (=> bs!599801 m!4861037))

(declare-fun m!4861039 () Bool)

(assert (=> bs!599801 m!4861039))

(assert (=> d!1258582 d!1258610))

(declare-fun d!1258612 () Bool)

(declare-fun lt!1512241 () List!47402)

(assert (=> d!1258612 (= lt!1512241 (list!17097 x!738851))))

(assert (=> d!1258612 (= lt!1512241 (efficientList!443 (c!725916 x!738851) (efficientList$default$2!153 (c!725916 x!738851))))))

(assert (=> d!1258612 (= (efficientList!441 x!738851) lt!1512241)))

(declare-fun bs!599802 () Bool)

(assert (= bs!599802 d!1258612))

(assert (=> bs!599802 m!4860911))

(declare-fun m!4861041 () Bool)

(assert (=> bs!599802 m!4861041))

(assert (=> bs!599802 m!4861041))

(declare-fun m!4861043 () Bool)

(assert (=> bs!599802 m!4861043))

(assert (=> d!1258584 d!1258612))

(declare-fun b!4268399 () Bool)

(declare-fun e!2650116 () List!47402)

(assert (=> b!4268399 (= e!2650116 Nil!47278)))

(declare-fun b!4268401 () Bool)

(declare-fun e!2650117 () List!47402)

(assert (=> b!4268401 (= e!2650117 (list!17101 (xs!17566 (c!725916 x!738852))))))

(declare-fun d!1258614 () Bool)

(declare-fun c!725928 () Bool)

(assert (=> d!1258614 (= c!725928 (is-Empty!14260 (c!725916 x!738852)))))

(assert (=> d!1258614 (= (list!17099 (c!725916 x!738852)) e!2650116)))

(declare-fun b!4268400 () Bool)

(assert (=> b!4268400 (= e!2650116 e!2650117)))

(declare-fun c!725929 () Bool)

(assert (=> b!4268400 (= c!725929 (is-Leaf!22046 (c!725916 x!738852)))))

(declare-fun b!4268402 () Bool)

(assert (=> b!4268402 (= e!2650117 (++!12056 (list!17099 (left!35071 (c!725916 x!738852))) (list!17099 (right!35401 (c!725916 x!738852)))))))

(assert (= (and d!1258614 c!725928) b!4268399))

(assert (= (and d!1258614 (not c!725928)) b!4268400))

(assert (= (and b!4268400 c!725929) b!4268401))

(assert (= (and b!4268400 (not c!725929)) b!4268402))

(declare-fun m!4861045 () Bool)

(assert (=> b!4268401 m!4861045))

(declare-fun m!4861047 () Bool)

(assert (=> b!4268402 m!4861047))

(declare-fun m!4861049 () Bool)

(assert (=> b!4268402 m!4861049))

(assert (=> b!4268402 m!4861047))

(assert (=> b!4268402 m!4861049))

(declare-fun m!4861051 () Bool)

(assert (=> b!4268402 m!4861051))

(assert (=> d!1258576 d!1258614))

(push 1)

(assert (not b!4268402))

(assert (not start!409094))

(assert (not d!1258606))

(assert (not b!4268390))

(assert (not b!4268317))

(assert (not b!4268315))

(assert (not b!4268314))

(assert (not bs!599682))

(assert (not b!4268393))

(assert (not b!4268401))

(assert (not b!4268316))

(assert (not d!1258610))

(assert (not d!1258600))

(assert (not b!4268398))

(assert (not b!4268394))

(assert (not d!1258612))

(assert (not b!4268305))

(assert (not b!4268389))

(assert (not b!4268397))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1258632 () Bool)

(declare-fun c!725944 () Bool)

(assert (=> d!1258632 (= c!725944 (is-Node!14260 (c!725916 x!738853)))))

(declare-fun e!2650134 () Bool)

(assert (=> d!1258632 (= (inv!62250 (c!725916 x!738853)) e!2650134)))

(declare-fun b!4268433 () Bool)

(declare-fun inv!62254 (Conc!14260) Bool)

(assert (=> b!4268433 (= e!2650134 (inv!62254 (c!725916 x!738853)))))

(declare-fun b!4268434 () Bool)

(declare-fun e!2650135 () Bool)

(assert (=> b!4268434 (= e!2650134 e!2650135)))

(declare-fun res!1753716 () Bool)

(assert (=> b!4268434 (= res!1753716 (not (is-Leaf!22046 (c!725916 x!738853))))))

(assert (=> b!4268434 (=> res!1753716 e!2650135)))

(declare-fun b!4268435 () Bool)

(declare-fun inv!62255 (Conc!14260) Bool)

(assert (=> b!4268435 (= e!2650135 (inv!62255 (c!725916 x!738853)))))

(assert (= (and d!1258632 c!725944) b!4268433))

(assert (= (and d!1258632 (not c!725944)) b!4268434))

(assert (= (and b!4268434 (not res!1753716)) b!4268435))

(declare-fun m!4861101 () Bool)

(assert (=> b!4268433 m!4861101))

(declare-fun m!4861103 () Bool)

(assert (=> b!4268435 m!4861103))

(assert (=> b!4268317 d!1258632))

(assert (=> d!1258600 d!1258572))

(declare-fun b!4268448 () Bool)

(declare-fun e!2650143 () List!47402)

(declare-fun lt!1512259 () List!47402)

(assert (=> b!4268448 (= e!2650143 lt!1512259)))

(declare-fun b!4268449 () Bool)

(declare-fun e!2650142 () List!47402)

(declare-fun e!2650144 () List!47402)

(assert (=> b!4268449 (= e!2650142 e!2650144)))

(declare-fun c!725952 () Bool)

(assert (=> b!4268449 (= c!725952 (is-Leaf!22046 (c!725916 x!738853)))))

(declare-fun b!4268450 () Bool)

(declare-fun efficientList!445 (IArray!28525) List!47402)

(assert (=> b!4268450 (= e!2650143 (efficientList!445 (xs!17566 (c!725916 x!738853))))))

(declare-fun bm!294080 () Bool)

(declare-fun c!725953 () Bool)

(assert (=> bm!294080 (= c!725953 c!725952)))

(declare-fun call!294085 () List!47402)

(assert (=> bm!294080 (= call!294085 (++!12056 e!2650143 (efficientList$default$2!153 (c!725916 x!738853))))))

(declare-fun d!1258634 () Bool)

(declare-fun lt!1512258 () List!47402)

(assert (=> d!1258634 (= lt!1512258 (++!12056 (list!17099 (c!725916 x!738853)) (efficientList$default$2!153 (c!725916 x!738853))))))

(assert (=> d!1258634 (= lt!1512258 e!2650142)))

(declare-fun c!725951 () Bool)

(assert (=> d!1258634 (= c!725951 (is-Empty!14260 (c!725916 x!738853)))))

(assert (=> d!1258634 (= (efficientList!443 (c!725916 x!738853) (efficientList$default$2!153 (c!725916 x!738853))) lt!1512258)))

(declare-fun b!4268451 () Bool)

(assert (=> b!4268451 (= e!2650144 call!294085)))

(declare-fun b!4268452 () Bool)

(declare-datatypes ((Unit!66173 0))(
  ( (Unit!66174) )
))
(declare-fun lt!1512261 () Unit!66173)

(declare-fun lt!1512262 () Unit!66173)

(assert (=> b!4268452 (= lt!1512261 lt!1512262)))

(declare-fun lt!1512260 () List!47402)

(assert (=> b!4268452 (= (++!12056 (++!12056 lt!1512260 lt!1512259) (efficientList$default$2!153 (c!725916 x!738853))) (++!12056 lt!1512260 call!294085))))

(declare-fun lemmaConcatAssociativity!2699 (List!47402 List!47402 List!47402) Unit!66173)

(assert (=> b!4268452 (= lt!1512262 (lemmaConcatAssociativity!2699 lt!1512260 lt!1512259 (efficientList$default$2!153 (c!725916 x!738853))))))

(assert (=> b!4268452 (= lt!1512259 (list!17099 (right!35401 (c!725916 x!738853))))))

(assert (=> b!4268452 (= lt!1512260 (list!17099 (left!35071 (c!725916 x!738853))))))

(assert (=> b!4268452 (= e!2650144 (efficientList!443 (left!35071 (c!725916 x!738853)) (efficientList!443 (right!35401 (c!725916 x!738853)) (efficientList$default$2!153 (c!725916 x!738853)))))))

(declare-fun b!4268453 () Bool)

(assert (=> b!4268453 (= e!2650142 (efficientList$default$2!153 (c!725916 x!738853)))))

(assert (= (and d!1258634 c!725951) b!4268453))

(assert (= (and d!1258634 (not c!725951)) b!4268449))

(assert (= (and b!4268449 c!725952) b!4268451))

(assert (= (and b!4268449 (not c!725952)) b!4268452))

(assert (= (or b!4268451 b!4268452) bm!294080))

(assert (= (and bm!294080 c!725953) b!4268450))

(assert (= (and bm!294080 (not c!725953)) b!4268448))

(declare-fun m!4861105 () Bool)

(assert (=> b!4268450 m!4861105))

(assert (=> bm!294080 m!4861005))

(declare-fun m!4861107 () Bool)

(assert (=> bm!294080 m!4861107))

(assert (=> d!1258634 m!4860971))

(assert (=> d!1258634 m!4860971))

(assert (=> d!1258634 m!4861005))

(declare-fun m!4861109 () Bool)

(assert (=> d!1258634 m!4861109))

(assert (=> b!4268452 m!4861021))

(declare-fun m!4861111 () Bool)

(assert (=> b!4268452 m!4861111))

(assert (=> b!4268452 m!4861005))

(declare-fun m!4861113 () Bool)

(assert (=> b!4268452 m!4861113))

(declare-fun m!4861115 () Bool)

(assert (=> b!4268452 m!4861115))

(assert (=> b!4268452 m!4861019))

(assert (=> b!4268452 m!4861005))

(declare-fun m!4861117 () Bool)

(assert (=> b!4268452 m!4861117))

(assert (=> b!4268452 m!4861111))

(declare-fun m!4861119 () Bool)

(assert (=> b!4268452 m!4861119))

(declare-fun m!4861121 () Bool)

(assert (=> b!4268452 m!4861121))

(assert (=> b!4268452 m!4861005))

(assert (=> b!4268452 m!4861119))

(assert (=> d!1258600 d!1258634))

(declare-fun d!1258636 () Bool)

(assert (=> d!1258636 (= (efficientList$default$2!153 (c!725916 x!738853)) Nil!47278)))

(assert (=> d!1258600 d!1258636))

(declare-fun d!1258638 () Bool)

(declare-fun c!725954 () Bool)

(assert (=> d!1258638 (= c!725954 (is-Node!14260 (c!725916 x!738852)))))

(declare-fun e!2650145 () Bool)

(assert (=> d!1258638 (= (inv!62250 (c!725916 x!738852)) e!2650145)))

(declare-fun b!4268454 () Bool)

(assert (=> b!4268454 (= e!2650145 (inv!62254 (c!725916 x!738852)))))

(declare-fun b!4268455 () Bool)

(declare-fun e!2650146 () Bool)

(assert (=> b!4268455 (= e!2650145 e!2650146)))

(declare-fun res!1753717 () Bool)

(assert (=> b!4268455 (= res!1753717 (not (is-Leaf!22046 (c!725916 x!738852))))))

(assert (=> b!4268455 (=> res!1753717 e!2650146)))

(declare-fun b!4268456 () Bool)

(assert (=> b!4268456 (= e!2650146 (inv!62255 (c!725916 x!738852)))))

(assert (= (and d!1258638 c!725954) b!4268454))

(assert (= (and d!1258638 (not c!725954)) b!4268455))

(assert (= (and b!4268455 (not res!1753717)) b!4268456))

(declare-fun m!4861123 () Bool)

(assert (=> b!4268454 m!4861123))

(declare-fun m!4861125 () Bool)

(assert (=> b!4268456 m!4861125))

(assert (=> b!4268316 d!1258638))

(assert (=> b!4268315 d!1258582))

(assert (=> b!4268315 d!1258578))

(assert (=> bs!599682 d!1258570))

(declare-fun d!1258640 () Bool)

(declare-fun c!725968 () Bool)

(assert (=> d!1258640 (= c!725968 (is-Int32!8233 (toValue!15 thiss!2386 x!738851)))))

(declare-fun e!2650160 () BalanceConc!28030)

(assert (=> d!1258640 (= (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)) e!2650160)))

(declare-fun b!4268477 () Bool)

(declare-fun e!2650159 () BalanceConc!28030)

(declare-fun stringBooleanConc!0 () BalanceConc!28030)

(assert (=> b!4268477 (= e!2650159 stringBooleanConc!0)))

(declare-fun b!4268478 () Bool)

(declare-fun stringInt32Conc!0 () BalanceConc!28030)

(assert (=> b!4268478 (= e!2650160 stringInt32Conc!0)))

(declare-fun b!4268479 () Bool)

(declare-fun c!725967 () Bool)

(assert (=> b!4268479 (= c!725967 (is-Broken!41166 (toValue!15 thiss!2386 x!738851)))))

(declare-fun e!2650158 () BalanceConc!28030)

(declare-fun e!2650161 () BalanceConc!28030)

(assert (=> b!4268479 (= e!2650158 e!2650161)))

(declare-fun b!4268480 () Bool)

(declare-fun stringStringConc!0 () BalanceConc!28030)

(assert (=> b!4268480 (= e!2650158 stringStringConc!0)))

(declare-fun b!4268481 () Bool)

(assert (=> b!4268481 (= e!2650161 (BalanceConc!28031 Empty!14260))))

(declare-fun b!4268482 () Bool)

(declare-fun e!2650157 () BalanceConc!28030)

(assert (=> b!4268482 (= e!2650160 e!2650157)))

(declare-fun c!725969 () Bool)

(assert (=> b!4268482 (= c!725969 (is-Unit!66171 (toValue!15 thiss!2386 x!738851)))))

(declare-fun b!4268483 () Bool)

(assert (=> b!4268483 (= e!2650159 e!2650158)))

(declare-fun c!725970 () Bool)

(assert (=> b!4268483 (= c!725970 (is-String!55176 (toValue!15 thiss!2386 x!738851)))))

(declare-fun b!4268484 () Bool)

(declare-fun stringUnitConc!0 () BalanceConc!28030)

(assert (=> b!4268484 (= e!2650157 stringUnitConc!0)))

(declare-fun b!4268485 () Bool)

(declare-fun seqFromList!5853 (List!47402) BalanceConc!28030)

(assert (=> b!4268485 (= e!2650161 (seqFromList!5853 (value!248657 (toValue!15 thiss!2386 x!738851))))))

(declare-fun b!4268486 () Bool)

(declare-fun c!725966 () Bool)

(assert (=> b!4268486 (= c!725966 (is-Boolean!8234 (toValue!15 thiss!2386 x!738851)))))

(assert (=> b!4268486 (= e!2650157 e!2650159)))

(assert (= (and d!1258640 c!725968) b!4268478))

(assert (= (and d!1258640 (not c!725968)) b!4268482))

(assert (= (and b!4268482 c!725969) b!4268484))

(assert (= (and b!4268482 (not c!725969)) b!4268486))

(assert (= (and b!4268486 c!725966) b!4268477))

(assert (= (and b!4268486 (not c!725966)) b!4268483))

(assert (= (and b!4268483 c!725970) b!4268480))

(assert (= (and b!4268483 (not c!725970)) b!4268479))

(assert (= (and b!4268479 c!725967) b!4268485))

(assert (= (and b!4268479 (not c!725967)) b!4268481))

(declare-fun m!4861127 () Bool)

(assert (=> b!4268484 m!4861127))

(declare-fun m!4861129 () Bool)

(assert (=> b!4268480 m!4861129))

(declare-fun m!4861131 () Bool)

(assert (=> b!4268485 m!4861131))

(declare-fun m!4861133 () Bool)

(assert (=> b!4268478 m!4861133))

(declare-fun m!4861135 () Bool)

(assert (=> b!4268477 m!4861135))

(assert (=> bs!599682 d!1258640))

(assert (=> bs!599682 d!1258584))

(assert (=> bs!599682 d!1258574))

(declare-fun d!1258642 () Bool)

(declare-fun c!725971 () Bool)

(assert (=> d!1258642 (= c!725971 (is-Node!14260 (c!725916 x!738851)))))

(declare-fun e!2650162 () Bool)

(assert (=> d!1258642 (= (inv!62250 (c!725916 x!738851)) e!2650162)))

(declare-fun b!4268487 () Bool)

(assert (=> b!4268487 (= e!2650162 (inv!62254 (c!725916 x!738851)))))

(declare-fun b!4268488 () Bool)

(declare-fun e!2650163 () Bool)

(assert (=> b!4268488 (= e!2650162 e!2650163)))

(declare-fun res!1753718 () Bool)

(assert (=> b!4268488 (= res!1753718 (not (is-Leaf!22046 (c!725916 x!738851))))))

(assert (=> b!4268488 (=> res!1753718 e!2650163)))

(declare-fun b!4268489 () Bool)

(assert (=> b!4268489 (= e!2650163 (inv!62255 (c!725916 x!738851)))))

(assert (= (and d!1258642 c!725971) b!4268487))

(assert (= (and d!1258642 (not c!725971)) b!4268488))

(assert (= (and b!4268488 (not res!1753718)) b!4268489))

(declare-fun m!4861137 () Bool)

(assert (=> b!4268487 m!4861137))

(declare-fun m!4861139 () Bool)

(assert (=> b!4268489 m!4861139))

(assert (=> b!4268314 d!1258642))

(declare-fun d!1258644 () Bool)

(declare-fun isBalanced!3817 (Conc!14260) Bool)

(assert (=> d!1258644 (= (inv!62251 x!738851) (isBalanced!3817 (c!725916 x!738851)))))

(declare-fun bs!599807 () Bool)

(assert (= bs!599807 d!1258644))

(declare-fun m!4861141 () Bool)

(assert (=> bs!599807 m!4861141))

(assert (=> start!409094 d!1258644))

(assert (=> start!409094 d!1258570))

(declare-fun d!1258646 () Bool)

(declare-fun choose!26014 (Int) Bool)

(assert (=> d!1258646 (= (Forall!1615 lambda!130434) (choose!26014 lambda!130434))))

(declare-fun bs!599808 () Bool)

(assert (= bs!599808 d!1258646))

(declare-fun m!4861143 () Bool)

(assert (=> bs!599808 m!4861143))

(assert (=> start!409094 d!1258646))

(assert (=> start!409094 d!1258640))

(assert (=> start!409094 d!1258584))

(assert (=> start!409094 d!1258574))

(assert (=> d!1258606 d!1258570))

(declare-fun b!4268490 () Bool)

(declare-fun e!2650165 () List!47402)

(declare-fun lt!1512264 () List!47402)

(assert (=> b!4268490 (= e!2650165 lt!1512264)))

(declare-fun b!4268491 () Bool)

(declare-fun e!2650164 () List!47402)

(declare-fun e!2650166 () List!47402)

(assert (=> b!4268491 (= e!2650164 e!2650166)))

(declare-fun c!725973 () Bool)

(assert (=> b!4268491 (= c!725973 (is-Leaf!22046 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))))))

(declare-fun b!4268492 () Bool)

(assert (=> b!4268492 (= e!2650165 (efficientList!445 (xs!17566 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))))))

(declare-fun bm!294081 () Bool)

(declare-fun c!725974 () Bool)

(assert (=> bm!294081 (= c!725974 c!725973)))

(declare-fun call!294086 () List!47402)

(assert (=> bm!294081 (= call!294086 (++!12056 e!2650165 (efficientList$default$2!153 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))))))

(declare-fun d!1258648 () Bool)

(declare-fun lt!1512263 () List!47402)

(assert (=> d!1258648 (= lt!1512263 (++!12056 (list!17099 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))) (efficientList$default$2!153 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))))))

(assert (=> d!1258648 (= lt!1512263 e!2650164)))

(declare-fun c!725972 () Bool)

(assert (=> d!1258648 (= c!725972 (is-Empty!14260 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))))))

(assert (=> d!1258648 (= (efficientList!443 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))) (efficientList$default$2!153 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))) lt!1512263)))

(declare-fun b!4268493 () Bool)

(assert (=> b!4268493 (= e!2650166 call!294086)))

(declare-fun b!4268494 () Bool)

(declare-fun lt!1512266 () Unit!66173)

(declare-fun lt!1512267 () Unit!66173)

(assert (=> b!4268494 (= lt!1512266 lt!1512267)))

(declare-fun lt!1512265 () List!47402)

(assert (=> b!4268494 (= (++!12056 (++!12056 lt!1512265 lt!1512264) (efficientList$default$2!153 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))) (++!12056 lt!1512265 call!294086))))

(assert (=> b!4268494 (= lt!1512267 (lemmaConcatAssociativity!2699 lt!1512265 lt!1512264 (efficientList$default$2!153 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))))))

(assert (=> b!4268494 (= lt!1512264 (list!17099 (right!35401 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))))))

(assert (=> b!4268494 (= lt!1512265 (list!17099 (left!35071 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851))))))))

(assert (=> b!4268494 (= e!2650166 (efficientList!443 (left!35071 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))) (efficientList!443 (right!35401 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))) (efficientList$default$2!153 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))))))))

(declare-fun b!4268495 () Bool)

(assert (=> b!4268495 (= e!2650164 (efficientList$default$2!153 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))))))

(assert (= (and d!1258648 c!725972) b!4268495))

(assert (= (and d!1258648 (not c!725972)) b!4268491))

(assert (= (and b!4268491 c!725973) b!4268493))

(assert (= (and b!4268491 (not c!725973)) b!4268494))

(assert (= (or b!4268493 b!4268494) bm!294081))

(assert (= (and bm!294081 c!725974) b!4268492))

(assert (= (and bm!294081 (not c!725974)) b!4268490))

(declare-fun m!4861145 () Bool)

(assert (=> b!4268492 m!4861145))

(assert (=> bm!294081 m!4861025))

(declare-fun m!4861147 () Bool)

(assert (=> bm!294081 m!4861147))

(assert (=> d!1258648 m!4860969))

(assert (=> d!1258648 m!4860969))

(assert (=> d!1258648 m!4861025))

(declare-fun m!4861149 () Bool)

(assert (=> d!1258648 m!4861149))

(assert (=> b!4268494 m!4861013))

(declare-fun m!4861151 () Bool)

(assert (=> b!4268494 m!4861151))

(assert (=> b!4268494 m!4861025))

(declare-fun m!4861153 () Bool)

(assert (=> b!4268494 m!4861153))

(declare-fun m!4861155 () Bool)

(assert (=> b!4268494 m!4861155))

(assert (=> b!4268494 m!4861011))

(assert (=> b!4268494 m!4861025))

(declare-fun m!4861157 () Bool)

(assert (=> b!4268494 m!4861157))

(assert (=> b!4268494 m!4861151))

(declare-fun m!4861159 () Bool)

(assert (=> b!4268494 m!4861159))

(declare-fun m!4861161 () Bool)

(assert (=> b!4268494 m!4861161))

(assert (=> b!4268494 m!4861025))

(assert (=> b!4268494 m!4861159))

(assert (=> d!1258606 d!1258648))

(declare-fun d!1258650 () Bool)

(assert (=> d!1258650 (= (efficientList$default$2!153 (c!725916 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738851)))) Nil!47278)))

(assert (=> d!1258606 d!1258650))

(declare-fun d!1258652 () Bool)

(declare-fun choose!26015 (Int) Bool)

(assert (=> d!1258652 (= (Forall2!1210 lambda!130437) (choose!26015 lambda!130437))))

(declare-fun bs!599809 () Bool)

(assert (= bs!599809 d!1258652))

(declare-fun m!4861163 () Bool)

(assert (=> bs!599809 m!4861163))

(assert (=> b!4268305 d!1258652))

(assert (=> b!4268305 d!1258646))

(assert (=> b!4268305 d!1258576))

(assert (=> b!4268305 d!1258572))

(declare-fun d!1258654 () Bool)

(assert (=> d!1258654 (= (inv!62251 x!738853) (isBalanced!3817 (c!725916 x!738853)))))

(declare-fun bs!599810 () Bool)

(assert (= bs!599810 d!1258654))

(declare-fun m!4861165 () Bool)

(assert (=> bs!599810 m!4861165))

(assert (=> b!4268305 d!1258654))

(declare-fun bs!599811 () Bool)

(declare-fun d!1258656 () Bool)

(assert (= bs!599811 (and d!1258656 start!409094)))

(declare-fun lambda!130458 () Int)

(assert (=> bs!599811 (not (= lambda!130458 lambda!130434))))

(assert (=> d!1258656 true))

(declare-fun order!24799 () Int)

(declare-fun order!24801 () Int)

(declare-fun dynLambda!20236 (Int Int) Int)

(declare-fun dynLambda!20237 (Int Int) Int)

(assert (=> d!1258656 (< (dynLambda!20236 order!24799 lambda!130435) (dynLambda!20237 order!24801 lambda!130458))))

(assert (=> d!1258656 true))

(declare-fun order!24803 () Int)

(declare-fun dynLambda!20238 (Int Int) Int)

(assert (=> d!1258656 (< (dynLambda!20238 order!24803 lambda!130436) (dynLambda!20237 order!24801 lambda!130458))))

(assert (=> d!1258656 (= (semiInverseModEq!3495 lambda!130435 lambda!130436) (Forall!1615 lambda!130458))))

(declare-fun bs!599812 () Bool)

(assert (= bs!599812 d!1258656))

(declare-fun m!4861167 () Bool)

(assert (=> bs!599812 m!4861167))

(assert (=> b!4268305 d!1258656))

(declare-fun d!1258658 () Bool)

(assert (=> d!1258658 (= (inv!62251 x!738852) (isBalanced!3817 (c!725916 x!738852)))))

(declare-fun bs!599813 () Bool)

(assert (= bs!599813 d!1258658))

(declare-fun m!4861169 () Bool)

(assert (=> bs!599813 m!4861169))

(assert (=> b!4268305 d!1258658))

(assert (=> d!1258612 d!1258574))

(declare-fun b!4268500 () Bool)

(declare-fun e!2650168 () List!47402)

(declare-fun lt!1512269 () List!47402)

(assert (=> b!4268500 (= e!2650168 lt!1512269)))

(declare-fun b!4268501 () Bool)

(declare-fun e!2650167 () List!47402)

(declare-fun e!2650169 () List!47402)

(assert (=> b!4268501 (= e!2650167 e!2650169)))

(declare-fun c!725976 () Bool)

(assert (=> b!4268501 (= c!725976 (is-Leaf!22046 (c!725916 x!738851)))))

(declare-fun b!4268502 () Bool)

(assert (=> b!4268502 (= e!2650168 (efficientList!445 (xs!17566 (c!725916 x!738851))))))

(declare-fun bm!294082 () Bool)

(declare-fun c!725977 () Bool)

(assert (=> bm!294082 (= c!725977 c!725976)))

(declare-fun call!294087 () List!47402)

(assert (=> bm!294082 (= call!294087 (++!12056 e!2650168 (efficientList$default$2!153 (c!725916 x!738851))))))

(declare-fun d!1258660 () Bool)

(declare-fun lt!1512268 () List!47402)

(assert (=> d!1258660 (= lt!1512268 (++!12056 (list!17099 (c!725916 x!738851)) (efficientList$default$2!153 (c!725916 x!738851))))))

(assert (=> d!1258660 (= lt!1512268 e!2650167)))

(declare-fun c!725975 () Bool)

(assert (=> d!1258660 (= c!725975 (is-Empty!14260 (c!725916 x!738851)))))

(assert (=> d!1258660 (= (efficientList!443 (c!725916 x!738851) (efficientList$default$2!153 (c!725916 x!738851))) lt!1512268)))

(declare-fun b!4268503 () Bool)

(assert (=> b!4268503 (= e!2650169 call!294087)))

(declare-fun b!4268504 () Bool)

(declare-fun lt!1512271 () Unit!66173)

(declare-fun lt!1512272 () Unit!66173)

(assert (=> b!4268504 (= lt!1512271 lt!1512272)))

(declare-fun lt!1512270 () List!47402)

(assert (=> b!4268504 (= (++!12056 (++!12056 lt!1512270 lt!1512269) (efficientList$default$2!153 (c!725916 x!738851))) (++!12056 lt!1512270 call!294087))))

(assert (=> b!4268504 (= lt!1512272 (lemmaConcatAssociativity!2699 lt!1512270 lt!1512269 (efficientList$default$2!153 (c!725916 x!738851))))))

(assert (=> b!4268504 (= lt!1512269 (list!17099 (right!35401 (c!725916 x!738851))))))

(assert (=> b!4268504 (= lt!1512270 (list!17099 (left!35071 (c!725916 x!738851))))))

(assert (=> b!4268504 (= e!2650169 (efficientList!443 (left!35071 (c!725916 x!738851)) (efficientList!443 (right!35401 (c!725916 x!738851)) (efficientList$default$2!153 (c!725916 x!738851)))))))

(declare-fun b!4268505 () Bool)

(assert (=> b!4268505 (= e!2650167 (efficientList$default$2!153 (c!725916 x!738851)))))

(assert (= (and d!1258660 c!725975) b!4268505))

(assert (= (and d!1258660 (not c!725975)) b!4268501))

(assert (= (and b!4268501 c!725976) b!4268503))

(assert (= (and b!4268501 (not c!725976)) b!4268504))

(assert (= (or b!4268503 b!4268504) bm!294082))

(assert (= (and bm!294082 c!725977) b!4268502))

(assert (= (and bm!294082 (not c!725977)) b!4268500))

(declare-fun m!4861171 () Bool)

(assert (=> b!4268502 m!4861171))

(assert (=> bm!294082 m!4861041))

(declare-fun m!4861173 () Bool)

(assert (=> bm!294082 m!4861173))

(assert (=> d!1258660 m!4860973))

(assert (=> d!1258660 m!4860973))

(assert (=> d!1258660 m!4861041))

(declare-fun m!4861175 () Bool)

(assert (=> d!1258660 m!4861175))

(assert (=> b!4268504 m!4861033))

(declare-fun m!4861177 () Bool)

(assert (=> b!4268504 m!4861177))

(assert (=> b!4268504 m!4861041))

(declare-fun m!4861179 () Bool)

(assert (=> b!4268504 m!4861179))

(declare-fun m!4861181 () Bool)

(assert (=> b!4268504 m!4861181))

(assert (=> b!4268504 m!4861031))

(assert (=> b!4268504 m!4861041))

(declare-fun m!4861183 () Bool)

(assert (=> b!4268504 m!4861183))

(assert (=> b!4268504 m!4861177))

(declare-fun m!4861185 () Bool)

(assert (=> b!4268504 m!4861185))

(declare-fun m!4861187 () Bool)

(assert (=> b!4268504 m!4861187))

(assert (=> b!4268504 m!4861041))

(assert (=> b!4268504 m!4861185))

(assert (=> d!1258612 d!1258660))

(declare-fun d!1258662 () Bool)

(assert (=> d!1258662 (= (efficientList$default$2!153 (c!725916 x!738851)) Nil!47278)))

(assert (=> d!1258612 d!1258662))

(assert (=> d!1258610 d!1258576))

(declare-fun b!4268506 () Bool)

(declare-fun e!2650171 () List!47402)

(declare-fun lt!1512274 () List!47402)

(assert (=> b!4268506 (= e!2650171 lt!1512274)))

(declare-fun b!4268507 () Bool)

(declare-fun e!2650170 () List!47402)

(declare-fun e!2650172 () List!47402)

(assert (=> b!4268507 (= e!2650170 e!2650172)))

(declare-fun c!725979 () Bool)

(assert (=> b!4268507 (= c!725979 (is-Leaf!22046 (c!725916 x!738852)))))

(declare-fun b!4268508 () Bool)

(assert (=> b!4268508 (= e!2650171 (efficientList!445 (xs!17566 (c!725916 x!738852))))))

(declare-fun bm!294083 () Bool)

(declare-fun c!725980 () Bool)

(assert (=> bm!294083 (= c!725980 c!725979)))

(declare-fun call!294088 () List!47402)

(assert (=> bm!294083 (= call!294088 (++!12056 e!2650171 (efficientList$default$2!153 (c!725916 x!738852))))))

(declare-fun d!1258664 () Bool)

(declare-fun lt!1512273 () List!47402)

(assert (=> d!1258664 (= lt!1512273 (++!12056 (list!17099 (c!725916 x!738852)) (efficientList$default$2!153 (c!725916 x!738852))))))

(assert (=> d!1258664 (= lt!1512273 e!2650170)))

(declare-fun c!725978 () Bool)

(assert (=> d!1258664 (= c!725978 (is-Empty!14260 (c!725916 x!738852)))))

(assert (=> d!1258664 (= (efficientList!443 (c!725916 x!738852) (efficientList$default$2!153 (c!725916 x!738852))) lt!1512273)))

(declare-fun b!4268509 () Bool)

(assert (=> b!4268509 (= e!2650172 call!294088)))

(declare-fun b!4268510 () Bool)

(declare-fun lt!1512276 () Unit!66173)

(declare-fun lt!1512277 () Unit!66173)

(assert (=> b!4268510 (= lt!1512276 lt!1512277)))

(declare-fun lt!1512275 () List!47402)

(assert (=> b!4268510 (= (++!12056 (++!12056 lt!1512275 lt!1512274) (efficientList$default$2!153 (c!725916 x!738852))) (++!12056 lt!1512275 call!294088))))

(assert (=> b!4268510 (= lt!1512277 (lemmaConcatAssociativity!2699 lt!1512275 lt!1512274 (efficientList$default$2!153 (c!725916 x!738852))))))

(assert (=> b!4268510 (= lt!1512274 (list!17099 (right!35401 (c!725916 x!738852))))))

(assert (=> b!4268510 (= lt!1512275 (list!17099 (left!35071 (c!725916 x!738852))))))

(assert (=> b!4268510 (= e!2650172 (efficientList!443 (left!35071 (c!725916 x!738852)) (efficientList!443 (right!35401 (c!725916 x!738852)) (efficientList$default$2!153 (c!725916 x!738852)))))))

(declare-fun b!4268511 () Bool)

(assert (=> b!4268511 (= e!2650170 (efficientList$default$2!153 (c!725916 x!738852)))))

(assert (= (and d!1258664 c!725978) b!4268511))

(assert (= (and d!1258664 (not c!725978)) b!4268507))

(assert (= (and b!4268507 c!725979) b!4268509))

(assert (= (and b!4268507 (not c!725979)) b!4268510))

(assert (= (or b!4268509 b!4268510) bm!294083))

(assert (= (and bm!294083 c!725980) b!4268508))

(assert (= (and bm!294083 (not c!725980)) b!4268506))

(declare-fun m!4861189 () Bool)

(assert (=> b!4268508 m!4861189))

(assert (=> bm!294083 m!4861037))

(declare-fun m!4861191 () Bool)

(assert (=> bm!294083 m!4861191))

(assert (=> d!1258664 m!4860975))

(assert (=> d!1258664 m!4860975))

(assert (=> d!1258664 m!4861037))

(declare-fun m!4861193 () Bool)

(assert (=> d!1258664 m!4861193))

(assert (=> b!4268510 m!4861049))

(declare-fun m!4861195 () Bool)

(assert (=> b!4268510 m!4861195))

(assert (=> b!4268510 m!4861037))

(declare-fun m!4861197 () Bool)

(assert (=> b!4268510 m!4861197))

(declare-fun m!4861199 () Bool)

(assert (=> b!4268510 m!4861199))

(assert (=> b!4268510 m!4861047))

(assert (=> b!4268510 m!4861037))

(declare-fun m!4861201 () Bool)

(assert (=> b!4268510 m!4861201))

(assert (=> b!4268510 m!4861195))

(declare-fun m!4861203 () Bool)

(assert (=> b!4268510 m!4861203))

(declare-fun m!4861205 () Bool)

(assert (=> b!4268510 m!4861205))

(assert (=> b!4268510 m!4861037))

(assert (=> b!4268510 m!4861203))

(assert (=> d!1258610 d!1258664))

(declare-fun d!1258666 () Bool)

(assert (=> d!1258666 (= (efficientList$default$2!153 (c!725916 x!738852)) Nil!47278)))

(assert (=> d!1258610 d!1258666))

(declare-fun b!4268518 () Bool)

(declare-fun e!2650177 () Bool)

(declare-fun tp!1307672 () Bool)

(declare-fun tp!1307671 () Bool)

(assert (=> b!4268518 (= e!2650177 (and (inv!62250 (left!35071 (c!725916 x!738853))) tp!1307671 (inv!62250 (right!35401 (c!725916 x!738853))) tp!1307672))))

(declare-fun b!4268519 () Bool)

(declare-fun inv!62256 (IArray!28525) Bool)

(assert (=> b!4268519 (= e!2650177 (inv!62256 (xs!17566 (c!725916 x!738853))))))

(assert (=> b!4268317 (= tp!1307657 (and (inv!62250 (c!725916 x!738853)) e!2650177))))

(assert (= (and b!4268317 (is-Node!14260 (c!725916 x!738853))) b!4268518))

(assert (= (and b!4268317 (is-Leaf!22046 (c!725916 x!738853))) b!4268519))

(declare-fun m!4861207 () Bool)

(assert (=> b!4268518 m!4861207))

(declare-fun m!4861209 () Bool)

(assert (=> b!4268518 m!4861209))

(declare-fun m!4861211 () Bool)

(assert (=> b!4268519 m!4861211))

(assert (=> b!4268317 m!4860927))

(declare-fun e!2650179 () Bool)

(declare-fun b!4268520 () Bool)

(declare-fun tp!1307674 () Bool)

(declare-fun tp!1307673 () Bool)

(assert (=> b!4268520 (= e!2650179 (and (inv!62250 (left!35071 (c!725916 x!738852))) tp!1307673 (inv!62250 (right!35401 (c!725916 x!738852))) tp!1307674))))

(declare-fun b!4268521 () Bool)

(assert (=> b!4268521 (= e!2650179 (inv!62256 (xs!17566 (c!725916 x!738852))))))

(assert (=> b!4268316 (= tp!1307656 (and (inv!62250 (c!725916 x!738852)) e!2650179))))

(assert (= (and b!4268316 (is-Node!14260 (c!725916 x!738852))) b!4268520))

(assert (= (and b!4268316 (is-Leaf!22046 (c!725916 x!738852))) b!4268521))

(declare-fun m!4861213 () Bool)

(assert (=> b!4268520 m!4861213))

(declare-fun m!4861215 () Bool)

(assert (=> b!4268520 m!4861215))

(declare-fun m!4861217 () Bool)

(assert (=> b!4268521 m!4861217))

(assert (=> b!4268316 m!4860925))

(declare-fun tp!1307675 () Bool)

(declare-fun tp!1307676 () Bool)

(declare-fun e!2650181 () Bool)

(declare-fun b!4268522 () Bool)

(assert (=> b!4268522 (= e!2650181 (and (inv!62250 (left!35071 (c!725916 x!738851))) tp!1307675 (inv!62250 (right!35401 (c!725916 x!738851))) tp!1307676))))

(declare-fun b!4268523 () Bool)

(assert (=> b!4268523 (= e!2650181 (inv!62256 (xs!17566 (c!725916 x!738851))))))

(assert (=> b!4268314 (= tp!1307655 (and (inv!62250 (c!725916 x!738851)) e!2650181))))

(assert (= (and b!4268314 (is-Node!14260 (c!725916 x!738851))) b!4268522))

(assert (= (and b!4268314 (is-Leaf!22046 (c!725916 x!738851))) b!4268523))

(declare-fun m!4861219 () Bool)

(assert (=> b!4268522 m!4861219))

(declare-fun m!4861221 () Bool)

(assert (=> b!4268522 m!4861221))

(declare-fun m!4861223 () Bool)

(assert (=> b!4268523 m!4861223))

(assert (=> b!4268314 m!4860901))

(push 1)

(assert (not b!4268402))

(assert (not b!4268433))

(assert (not b!4268450))

(assert (not b!4268435))

(assert (not b!4268393))

(assert (not d!1258664))

(assert (not d!1258660))

(assert (not b!4268454))

(assert (not b!4268480))

(assert (not b!4268477))

(assert (not b!4268316))

(assert (not b!4268452))

(assert (not bm!294080))

(assert (not d!1258646))

(assert (not b!4268390))

(assert (not b!4268518))

(assert (not b!4268492))

(assert (not b!4268456))

(assert (not b!4268478))

(assert (not d!1258656))

(assert (not b!4268398))

(assert (not bm!294082))

(assert (not b!4268508))

(assert (not b!4268317))

(assert (not b!4268484))

(assert (not d!1258654))

(assert (not b!4268504))

(assert (not b!4268485))

(assert (not b!4268502))

(assert (not bm!294083))

(assert (not bm!294081))

(assert (not b!4268519))

(assert (not b!4268522))

(assert (not b!4268523))

(assert (not b!4268494))

(assert (not d!1258648))

(assert (not b!4268394))

(assert (not b!4268510))

(assert (not d!1258644))

(assert (not d!1258634))

(assert (not b!4268314))

(assert (not b!4268389))

(assert (not b!4268397))

(assert (not b!4268489))

(assert (not b!4268487))

(assert (not d!1258658))

(assert (not b!4268521))

(assert (not d!1258652))

(assert (not b!4268520))

(assert (not b!4268401))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

