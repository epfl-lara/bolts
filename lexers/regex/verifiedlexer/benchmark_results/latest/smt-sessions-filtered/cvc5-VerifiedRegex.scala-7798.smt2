; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!409714 () Bool)

(assert start!409714)

(assert (=> start!409714 true))

(declare-fun b!4271144 () Bool)

(assert (=> b!4271144 true))

(assert (=> b!4271144 true))

(assert (=> b!4271144 true))

(declare-fun b!4271154 () Bool)

(declare-fun e!2651838 () Bool)

(declare-datatypes ((List!47428 0))(
  ( (Nil!47304) (Cons!47304 (h!52724 (_ BitVec 16)) (t!353730 List!47428)) )
))
(declare-datatypes ((IArray!28577 0))(
  ( (IArray!28578 (innerList!14346 List!47428)) )
))
(declare-datatypes ((Conc!14286 0))(
  ( (Node!14286 (left!35150 Conc!14286) (right!35480 Conc!14286) (csize!28802 Int) (cheight!14497 Int)) (Leaf!22085 (xs!17592 IArray!28577) (csize!28803 Int)) (Empty!14286) )
))
(declare-datatypes ((BalanceConc!28082 0))(
  ( (BalanceConc!28083 (c!726705 Conc!14286)) )
))
(declare-fun x!740877 () BalanceConc!28082)

(declare-fun tp!1308037 () Bool)

(declare-fun inv!62412 (Conc!14286) Bool)

(assert (=> b!4271154 (= e!2651838 (and (inv!62412 (c!726705 x!740877)) tp!1308037))))

(declare-fun inst!1696 () Bool)

(declare-datatypes ((WhitespaceValueInjection!136 0))(
  ( (WhitespaceValueInjection!137) )
))
(declare-fun thiss!2721 () WhitespaceValueInjection!136)

(declare-fun inv!62413 (BalanceConc!28082) Bool)

(declare-fun list!17157 (BalanceConc!28082) List!47428)

(declare-datatypes ((TokenValue!8259 0))(
  ( (FloatLiteralValue!16518 (text!58258 List!47428)) (TokenValueExt!8258 (__x!28705 Int)) (Broken!41295 (value!249341 List!47428)) (Object!8382) (End!8259) (Def!8259) (Underscore!8259) (Match!8259) (Else!8259) (Error!8259) (Case!8259) (If!8259) (Extends!8259) (Abstract!8259) (Class!8259) (Val!8259) (DelimiterValue!16518 (del!8319 List!47428)) (KeywordValue!8265 (value!249342 List!47428)) (CommentValue!16518 (value!249343 List!47428)) (WhitespaceValue!16518 (value!249344 List!47428)) (IndentationValue!8259 (value!249345 List!47428)) (String!55254) (Int32!8259) (Broken!41296 (value!249346 List!47428)) (Boolean!8260) (Unit!66225) (OperatorValue!8262 (op!8319 List!47428)) (IdentifierValue!16518 (value!249347 List!47428)) (IdentifierValue!16519 (value!249348 List!47428)) (WhitespaceValue!16519 (value!249349 List!47428)) (True!16518) (False!16518) (Broken!41297 (value!249350 List!47428)) (Broken!41298 (value!249351 List!47428)) (True!16519) (RightBrace!8259) (RightBracket!8259) (Colon!8259) (Null!8259) (Comma!8259) (LeftBracket!8259) (False!16519) (LeftBrace!8259) (ImaginaryLiteralValue!8259 (text!58259 List!47428)) (StringLiteralValue!24777 (value!249352 List!47428)) (EOFValue!8259 (value!249353 List!47428)) (IdentValue!8259 (value!249354 List!47428)) (DelimiterValue!16519 (value!249355 List!47428)) (DedentValue!8259 (value!249356 List!47428)) (NewLineValue!8259 (value!249357 List!47428)) (IntegerValue!24777 (value!249358 (_ BitVec 32)) (text!58260 List!47428)) (IntegerValue!24778 (value!249359 Int) (text!58261 List!47428)) (Times!8259) (Or!8259) (Equal!8259) (Minus!8259) (Broken!41299 (value!249360 List!47428)) (And!8259) (Div!8259) (LessEqual!8259) (Mod!8259) (Concat!21157) (Not!8259) (Plus!8259) (SpaceValue!8259 (value!249361 List!47428)) (IntegerValue!24779 (value!249362 Int) (text!58262 List!47428)) (StringLiteralValue!24778 (text!58263 List!47428)) (FloatLiteralValue!16519 (text!58264 List!47428)) (BytesLiteralValue!8259 (value!249363 List!47428)) (CommentValue!16519 (value!249364 List!47428)) (StringLiteralValue!24779 (value!249365 List!47428)) (ErrorTokenValue!8259 (msg!8320 List!47428)) )
))
(declare-fun toCharacters!13 (WhitespaceValueInjection!136 TokenValue!8259) BalanceConc!28082)

(declare-fun toValue!20 (WhitespaceValueInjection!136 BalanceConc!28082) TokenValue!8259)

(assert (=> start!409714 (= inst!1696 (=> (and (inv!62413 x!740877) e!2651838) (= (list!17157 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877))) (list!17157 x!740877))))))

(assert (= start!409714 b!4271154))

(declare-fun m!4864629 () Bool)

(assert (=> b!4271154 m!4864629))

(declare-fun m!4864631 () Bool)

(assert (=> start!409714 m!4864631))

(declare-fun m!4864633 () Bool)

(assert (=> start!409714 m!4864633))

(declare-fun m!4864635 () Bool)

(assert (=> start!409714 m!4864635))

(declare-fun m!4864637 () Bool)

(assert (=> start!409714 m!4864637))

(declare-fun m!4864639 () Bool)

(assert (=> start!409714 m!4864639))

(assert (=> start!409714 m!4864635))

(assert (=> start!409714 m!4864639))

(declare-fun res!1754473 () Bool)

(declare-fun e!2651841 () Bool)

(assert (=> b!4271144 (=> res!1754473 e!2651841)))

(declare-fun x!740878 () BalanceConc!28082)

(declare-fun x!740879 () BalanceConc!28082)

(assert (=> b!4271144 (= res!1754473 (not (= (list!17157 x!740878) (list!17157 x!740879))))))

(declare-fun e!2651840 () Bool)

(declare-fun e!2651839 () Bool)

(declare-fun inst!1697 () Bool)

(assert (=> b!4271144 (= inst!1697 (=> (and (inv!62413 x!740878) e!2651839 (inv!62413 x!740879) e!2651840) e!2651841))))

(declare-fun b!4271155 () Bool)

(assert (=> b!4271155 (= e!2651841 (= (toValue!20 thiss!2721 x!740878) (toValue!20 thiss!2721 x!740879)))))

(declare-fun b!4271156 () Bool)

(declare-fun tp!1308038 () Bool)

(assert (=> b!4271156 (= e!2651839 (and (inv!62412 (c!726705 x!740878)) tp!1308038))))

(declare-fun b!4271157 () Bool)

(declare-fun tp!1308039 () Bool)

(assert (=> b!4271157 (= e!2651840 (and (inv!62412 (c!726705 x!740879)) tp!1308039))))

(assert (= (and b!4271144 (not res!1754473)) b!4271155))

(assert (= b!4271144 b!4271156))

(assert (= b!4271144 b!4271157))

(declare-fun m!4864641 () Bool)

(assert (=> b!4271144 m!4864641))

(declare-fun m!4864643 () Bool)

(assert (=> b!4271144 m!4864643))

(declare-fun m!4864645 () Bool)

(assert (=> b!4271144 m!4864645))

(declare-fun m!4864647 () Bool)

(assert (=> b!4271144 m!4864647))

(declare-fun m!4864649 () Bool)

(assert (=> b!4271155 m!4864649))

(declare-fun m!4864651 () Bool)

(assert (=> b!4271155 m!4864651))

(declare-fun m!4864653 () Bool)

(assert (=> b!4271156 m!4864653))

(declare-fun m!4864655 () Bool)

(assert (=> b!4271157 m!4864655))

(declare-fun bs!600773 () Bool)

(declare-fun neg-inst!1697 () Bool)

(declare-fun s!239772 () Bool)

(assert (= bs!600773 (and neg-inst!1697 s!239772)))

(assert (=> bs!600773 (=> true (= (list!17157 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877))) (list!17157 x!740877)))))

(assert (=> m!4864639 m!4864635))

(assert (=> m!4864639 m!4864637))

(assert (=> m!4864639 m!4864633))

(assert (=> m!4864639 s!239772))

(assert (=> m!4864633 s!239772))

(declare-fun bs!600774 () Bool)

(assert (= bs!600774 (and neg-inst!1697 start!409714)))

(assert (=> bs!600774 (= true inst!1696)))

(declare-fun bs!600775 () Bool)

(declare-fun neg-inst!1696 () Bool)

(declare-fun s!239774 () Bool)

(assert (= bs!600775 (and neg-inst!1696 s!239774)))

(declare-fun res!1754474 () Bool)

(declare-fun e!2651842 () Bool)

(assert (=> bs!600775 (=> res!1754474 e!2651842)))

(assert (=> bs!600775 (= res!1754474 (not (= (list!17157 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877))) (list!17157 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877))))))))

(assert (=> bs!600775 (=> true e!2651842)))

(declare-fun b!4271158 () Bool)

(assert (=> b!4271158 (= e!2651842 (= (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877))) (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877)))))))

(assert (= (and bs!600775 (not res!1754474)) b!4271158))

(assert (=> m!4864637 s!239774))

(assert (=> m!4864637 s!239774))

(declare-fun bs!600776 () Bool)

(declare-fun s!239776 () Bool)

(assert (= bs!600776 (and neg-inst!1696 s!239776)))

(declare-fun res!1754475 () Bool)

(declare-fun e!2651843 () Bool)

(assert (=> bs!600776 (=> res!1754475 e!2651843)))

(assert (=> bs!600776 (= res!1754475 (not (= (list!17157 x!740878) (list!17157 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877))))))))

(assert (=> bs!600776 (=> true e!2651843)))

(declare-fun b!4271159 () Bool)

(assert (=> b!4271159 (= e!2651843 (= (toValue!20 thiss!2721 x!740878) (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877)))))))

(assert (= (and bs!600776 (not res!1754475)) b!4271159))

(declare-fun bs!600777 () Bool)

(assert (= bs!600777 (and m!4864649 m!4864637)))

(assert (=> bs!600777 m!4864641))

(assert (=> bs!600777 m!4864637))

(assert (=> bs!600777 s!239776))

(declare-fun bs!600778 () Bool)

(declare-fun s!239778 () Bool)

(assert (= bs!600778 (and neg-inst!1696 s!239778)))

(declare-fun res!1754476 () Bool)

(declare-fun e!2651844 () Bool)

(assert (=> bs!600778 (=> res!1754476 e!2651844)))

(assert (=> bs!600778 (= res!1754476 (not (= (list!17157 x!740878) (list!17157 x!740878))))))

(assert (=> bs!600778 (=> true e!2651844)))

(declare-fun b!4271160 () Bool)

(assert (=> b!4271160 (= e!2651844 (= (toValue!20 thiss!2721 x!740878) (toValue!20 thiss!2721 x!740878)))))

(assert (= (and bs!600778 (not res!1754476)) b!4271160))

(assert (=> m!4864649 m!4864641))

(assert (=> m!4864649 m!4864641))

(assert (=> m!4864649 s!239778))

(declare-fun bs!600779 () Bool)

(declare-fun s!239780 () Bool)

(assert (= bs!600779 (and neg-inst!1696 s!239780)))

(declare-fun res!1754477 () Bool)

(declare-fun e!2651845 () Bool)

(assert (=> bs!600779 (=> res!1754477 e!2651845)))

(assert (=> bs!600779 (= res!1754477 (not (= (list!17157 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877))) (list!17157 x!740878))))))

(assert (=> bs!600779 (=> true e!2651845)))

(declare-fun b!4271161 () Bool)

(assert (=> b!4271161 (= e!2651845 (= (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877))) (toValue!20 thiss!2721 x!740878)))))

(assert (= (and bs!600779 (not res!1754477)) b!4271161))

(assert (=> bs!600777 m!4864637))

(assert (=> bs!600777 m!4864641))

(assert (=> bs!600777 s!239780))

(assert (=> m!4864649 s!239778))

(declare-fun bs!600780 () Bool)

(assert (= bs!600780 (and m!4864641 m!4864649)))

(assert (=> bs!600780 s!239778))

(declare-fun bs!600781 () Bool)

(assert (= bs!600781 (and m!4864641 m!4864637)))

(assert (=> bs!600781 s!239776))

(assert (=> m!4864641 s!239778))

(assert (=> bs!600780 s!239778))

(assert (=> bs!600781 s!239780))

(assert (=> m!4864641 s!239778))

(declare-fun bs!600782 () Bool)

(declare-fun s!239782 () Bool)

(assert (= bs!600782 (and neg-inst!1696 s!239782)))

(declare-fun res!1754478 () Bool)

(declare-fun e!2651846 () Bool)

(assert (=> bs!600782 (=> res!1754478 e!2651846)))

(assert (=> bs!600782 (= res!1754478 (not (= (list!17157 x!740879) (list!17157 x!740878))))))

(assert (=> bs!600782 (=> true e!2651846)))

(declare-fun b!4271162 () Bool)

(assert (=> b!4271162 (= e!2651846 (= (toValue!20 thiss!2721 x!740879) (toValue!20 thiss!2721 x!740878)))))

(assert (= (and bs!600782 (not res!1754478)) b!4271162))

(declare-fun bs!600783 () Bool)

(assert (= bs!600783 (and m!4864643 m!4864649 m!4864641)))

(assert (=> bs!600783 m!4864643))

(assert (=> bs!600783 m!4864641))

(assert (=> bs!600783 s!239782))

(declare-fun bs!600784 () Bool)

(declare-fun s!239784 () Bool)

(assert (= bs!600784 (and neg-inst!1696 s!239784)))

(declare-fun res!1754479 () Bool)

(declare-fun e!2651847 () Bool)

(assert (=> bs!600784 (=> res!1754479 e!2651847)))

(assert (=> bs!600784 (= res!1754479 (not (= (list!17157 x!740879) (list!17157 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877))))))))

(assert (=> bs!600784 (=> true e!2651847)))

(declare-fun b!4271163 () Bool)

(assert (=> b!4271163 (= e!2651847 (= (toValue!20 thiss!2721 x!740879) (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877)))))))

(assert (= (and bs!600784 (not res!1754479)) b!4271163))

(declare-fun bs!600785 () Bool)

(assert (= bs!600785 (and m!4864643 m!4864637)))

(assert (=> bs!600785 m!4864643))

(assert (=> bs!600785 m!4864637))

(assert (=> bs!600785 s!239784))

(declare-fun bs!600786 () Bool)

(declare-fun s!239786 () Bool)

(assert (= bs!600786 (and neg-inst!1696 s!239786)))

(declare-fun res!1754480 () Bool)

(declare-fun e!2651848 () Bool)

(assert (=> bs!600786 (=> res!1754480 e!2651848)))

(assert (=> bs!600786 (= res!1754480 (not (= (list!17157 x!740879) (list!17157 x!740879))))))

(assert (=> bs!600786 (=> true e!2651848)))

(declare-fun b!4271164 () Bool)

(assert (=> b!4271164 (= e!2651848 (= (toValue!20 thiss!2721 x!740879) (toValue!20 thiss!2721 x!740879)))))

(assert (= (and bs!600786 (not res!1754480)) b!4271164))

(assert (=> m!4864643 s!239786))

(declare-fun bs!600787 () Bool)

(declare-fun s!239788 () Bool)

(assert (= bs!600787 (and neg-inst!1696 s!239788)))

(declare-fun res!1754481 () Bool)

(declare-fun e!2651849 () Bool)

(assert (=> bs!600787 (=> res!1754481 e!2651849)))

(assert (=> bs!600787 (= res!1754481 (not (= (list!17157 x!740878) (list!17157 x!740879))))))

(assert (=> bs!600787 (=> true e!2651849)))

(declare-fun b!4271165 () Bool)

(assert (=> b!4271165 (= e!2651849 (= (toValue!20 thiss!2721 x!740878) (toValue!20 thiss!2721 x!740879)))))

(assert (= (and bs!600787 (not res!1754481)) b!4271165))

(assert (=> bs!600783 m!4864641))

(assert (=> bs!600783 m!4864643))

(assert (=> bs!600783 s!239788))

(declare-fun bs!600788 () Bool)

(declare-fun s!239790 () Bool)

(assert (= bs!600788 (and neg-inst!1696 s!239790)))

(declare-fun res!1754482 () Bool)

(declare-fun e!2651850 () Bool)

(assert (=> bs!600788 (=> res!1754482 e!2651850)))

(assert (=> bs!600788 (= res!1754482 (not (= (list!17157 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877))) (list!17157 x!740879))))))

(assert (=> bs!600788 (=> true e!2651850)))

(declare-fun b!4271166 () Bool)

(assert (=> b!4271166 (= e!2651850 (= (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877))) (toValue!20 thiss!2721 x!740879)))))

(assert (= (and bs!600788 (not res!1754482)) b!4271166))

(assert (=> bs!600785 m!4864637))

(assert (=> bs!600785 m!4864643))

(assert (=> bs!600785 s!239790))

(assert (=> m!4864643 s!239786))

(declare-fun bs!600789 () Bool)

(declare-fun s!239792 () Bool)

(assert (= bs!600789 (and neg-inst!1696 s!239792)))

(declare-fun res!1754483 () Bool)

(declare-fun e!2651851 () Bool)

(assert (=> bs!600789 (=> res!1754483 e!2651851)))

(assert (=> bs!600789 (= res!1754483 (not (= (list!17157 x!740877) (list!17157 x!740878))))))

(assert (=> bs!600789 (=> true e!2651851)))

(declare-fun b!4271167 () Bool)

(assert (=> b!4271167 (= e!2651851 (= (toValue!20 thiss!2721 x!740877) (toValue!20 thiss!2721 x!740878)))))

(assert (= (and bs!600789 (not res!1754483)) b!4271167))

(declare-fun bs!600790 () Bool)

(assert (= bs!600790 (and m!4864639 m!4864649 m!4864641)))

(assert (=> bs!600790 m!4864633))

(assert (=> bs!600790 m!4864641))

(assert (=> bs!600790 s!239792))

(declare-fun bs!600791 () Bool)

(declare-fun s!239794 () Bool)

(assert (= bs!600791 (and neg-inst!1696 s!239794)))

(declare-fun res!1754484 () Bool)

(declare-fun e!2651852 () Bool)

(assert (=> bs!600791 (=> res!1754484 e!2651852)))

(assert (=> bs!600791 (= res!1754484 (not (= (list!17157 x!740877) (list!17157 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877))))))))

(assert (=> bs!600791 (=> true e!2651852)))

(declare-fun b!4271168 () Bool)

(assert (=> b!4271168 (= e!2651852 (= (toValue!20 thiss!2721 x!740877) (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877)))))))

(assert (= (and bs!600791 (not res!1754484)) b!4271168))

(declare-fun bs!600792 () Bool)

(assert (= bs!600792 (and m!4864639 m!4864637)))

(assert (=> bs!600792 m!4864633))

(assert (=> bs!600792 m!4864637))

(assert (=> bs!600792 s!239794))

(declare-fun bs!600793 () Bool)

(declare-fun s!239796 () Bool)

(assert (= bs!600793 (and neg-inst!1696 s!239796)))

(declare-fun res!1754485 () Bool)

(declare-fun e!2651853 () Bool)

(assert (=> bs!600793 (=> res!1754485 e!2651853)))

(assert (=> bs!600793 (= res!1754485 (not (= (list!17157 x!740877) (list!17157 x!740879))))))

(assert (=> bs!600793 (=> true e!2651853)))

(declare-fun b!4271169 () Bool)

(assert (=> b!4271169 (= e!2651853 (= (toValue!20 thiss!2721 x!740877) (toValue!20 thiss!2721 x!740879)))))

(assert (= (and bs!600793 (not res!1754485)) b!4271169))

(declare-fun bs!600794 () Bool)

(assert (= bs!600794 (and m!4864639 m!4864643)))

(assert (=> bs!600794 m!4864633))

(assert (=> bs!600794 m!4864643))

(assert (=> bs!600794 s!239796))

(declare-fun bs!600795 () Bool)

(declare-fun s!239798 () Bool)

(assert (= bs!600795 (and neg-inst!1696 s!239798)))

(declare-fun res!1754486 () Bool)

(declare-fun e!2651854 () Bool)

(assert (=> bs!600795 (=> res!1754486 e!2651854)))

(assert (=> bs!600795 (= res!1754486 (not (= (list!17157 x!740877) (list!17157 x!740877))))))

(assert (=> bs!600795 (=> true e!2651854)))

(declare-fun b!4271170 () Bool)

(assert (=> b!4271170 (= e!2651854 (= (toValue!20 thiss!2721 x!740877) (toValue!20 thiss!2721 x!740877)))))

(assert (= (and bs!600795 (not res!1754486)) b!4271170))

(assert (=> m!4864639 m!4864633))

(assert (=> m!4864639 m!4864633))

(assert (=> m!4864639 s!239798))

(declare-fun bs!600796 () Bool)

(declare-fun s!239800 () Bool)

(assert (= bs!600796 (and neg-inst!1696 s!239800)))

(declare-fun res!1754487 () Bool)

(declare-fun e!2651855 () Bool)

(assert (=> bs!600796 (=> res!1754487 e!2651855)))

(assert (=> bs!600796 (= res!1754487 (not (= (list!17157 x!740878) (list!17157 x!740877))))))

(assert (=> bs!600796 (=> true e!2651855)))

(declare-fun b!4271171 () Bool)

(assert (=> b!4271171 (= e!2651855 (= (toValue!20 thiss!2721 x!740878) (toValue!20 thiss!2721 x!740877)))))

(assert (= (and bs!600796 (not res!1754487)) b!4271171))

(assert (=> bs!600790 m!4864641))

(assert (=> bs!600790 m!4864633))

(assert (=> bs!600790 s!239800))

(declare-fun bs!600797 () Bool)

(declare-fun s!239802 () Bool)

(assert (= bs!600797 (and neg-inst!1696 s!239802)))

(declare-fun res!1754488 () Bool)

(declare-fun e!2651856 () Bool)

(assert (=> bs!600797 (=> res!1754488 e!2651856)))

(assert (=> bs!600797 (= res!1754488 (not (= (list!17157 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877))) (list!17157 x!740877))))))

(assert (=> bs!600797 (=> true e!2651856)))

(declare-fun b!4271172 () Bool)

(assert (=> b!4271172 (= e!2651856 (= (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877))) (toValue!20 thiss!2721 x!740877)))))

(assert (= (and bs!600797 (not res!1754488)) b!4271172))

(assert (=> bs!600792 m!4864637))

(assert (=> bs!600792 m!4864633))

(assert (=> bs!600792 s!239802))

(declare-fun bs!600798 () Bool)

(declare-fun s!239804 () Bool)

(assert (= bs!600798 (and neg-inst!1696 s!239804)))

(declare-fun res!1754489 () Bool)

(declare-fun e!2651857 () Bool)

(assert (=> bs!600798 (=> res!1754489 e!2651857)))

(assert (=> bs!600798 (= res!1754489 (not (= (list!17157 x!740879) (list!17157 x!740877))))))

(assert (=> bs!600798 (=> true e!2651857)))

(declare-fun b!4271173 () Bool)

(assert (=> b!4271173 (= e!2651857 (= (toValue!20 thiss!2721 x!740879) (toValue!20 thiss!2721 x!740877)))))

(assert (= (and bs!600798 (not res!1754489)) b!4271173))

(assert (=> bs!600794 m!4864643))

(assert (=> bs!600794 m!4864633))

(assert (=> bs!600794 s!239804))

(assert (=> m!4864639 s!239798))

(declare-fun bs!600799 () Bool)

(assert (= bs!600799 (and m!4864651 m!4864643)))

(assert (=> bs!600799 s!239786))

(assert (=> m!4864651 s!239786))

(declare-fun bs!600800 () Bool)

(assert (= bs!600800 (and m!4864651 m!4864639)))

(assert (=> bs!600800 s!239804))

(declare-fun bs!600801 () Bool)

(assert (= bs!600801 (and m!4864651 m!4864637)))

(assert (=> bs!600801 s!239784))

(declare-fun bs!600802 () Bool)

(assert (= bs!600802 (and m!4864651 m!4864649 m!4864641)))

(assert (=> bs!600802 s!239782))

(assert (=> bs!600802 s!239788))

(assert (=> bs!600800 s!239796))

(assert (=> bs!600799 s!239786))

(assert (=> m!4864651 s!239786))

(assert (=> bs!600801 s!239790))

(declare-fun bs!600803 () Bool)

(assert (= bs!600803 (and m!4864633 m!4864649 m!4864641)))

(assert (=> bs!600803 s!239792))

(declare-fun bs!600804 () Bool)

(assert (= bs!600804 (and m!4864633 m!4864639)))

(assert (=> bs!600804 s!239798))

(declare-fun bs!600805 () Bool)

(assert (= bs!600805 (and m!4864633 m!4864643 m!4864651)))

(assert (=> bs!600805 s!239796))

(assert (=> m!4864633 s!239798))

(declare-fun bs!600806 () Bool)

(assert (= bs!600806 (and m!4864633 m!4864637)))

(assert (=> bs!600806 s!239794))

(assert (=> bs!600804 s!239798))

(assert (=> m!4864633 s!239798))

(assert (=> bs!600806 s!239802))

(assert (=> bs!600803 s!239800))

(assert (=> bs!600805 s!239804))

(declare-fun bs!600807 () Bool)

(assert (= bs!600807 (and neg-inst!1696 b!4271144)))

(assert (=> bs!600807 (= true inst!1697)))

(declare-fun res!1754472 () Bool)

(declare-fun e!2651836 () Bool)

(assert (=> start!409714 (=> res!1754472 e!2651836)))

(declare-fun lambda!130846 () Int)

(declare-fun Forall!1635 (Int) Bool)

(assert (=> start!409714 (= res!1754472 (not (Forall!1635 lambda!130846)))))

(assert (=> start!409714 (= (Forall!1635 lambda!130846) inst!1696)))

(assert (=> start!409714 (not e!2651836)))

(assert (=> start!409714 true))

(declare-fun e!2651837 () Bool)

(assert (=> b!4271144 (= e!2651836 e!2651837)))

(declare-fun res!1754471 () Bool)

(assert (=> b!4271144 (=> res!1754471 e!2651837)))

(declare-fun lambda!130849 () Int)

(declare-fun Forall2!1224 (Int) Bool)

(assert (=> b!4271144 (= res!1754471 (not (Forall2!1224 lambda!130849)))))

(assert (=> b!4271144 (= (Forall2!1224 lambda!130849) inst!1697)))

(declare-fun lambda!130847 () Int)

(declare-fun lambda!130848 () Int)

(declare-fun semiInverseModEq!3509 (Int Int) Bool)

(assert (=> b!4271144 (= (semiInverseModEq!3509 lambda!130847 lambda!130848) (Forall!1635 lambda!130846))))

(declare-fun b!4271145 () Bool)

(declare-datatypes ((TokenValueInjection!15890 0))(
  ( (TokenValueInjection!15891 (toValue!10803 Int) (toChars!10662 Int)) )
))
(declare-fun inv!62414 (TokenValueInjection!15890) Bool)

(assert (=> b!4271145 (= e!2651837 (inv!62414 (TokenValueInjection!15891 lambda!130848 lambda!130847)))))

(declare-fun equivClasses!3398 (Int Int) Bool)

(assert (=> b!4271145 (= (equivClasses!3398 lambda!130847 lambda!130848) (Forall2!1224 lambda!130849))))

(assert (= neg-inst!1697 inst!1696))

(assert (= (and start!409714 (not res!1754472)) b!4271144))

(assert (= neg-inst!1696 inst!1697))

(assert (= (and b!4271144 (not res!1754471)) b!4271145))

(declare-fun m!4864657 () Bool)

(assert (=> start!409714 m!4864657))

(assert (=> start!409714 m!4864657))

(declare-fun m!4864659 () Bool)

(assert (=> b!4271144 m!4864659))

(assert (=> b!4271144 m!4864659))

(declare-fun m!4864661 () Bool)

(assert (=> b!4271144 m!4864661))

(assert (=> b!4271144 m!4864657))

(declare-fun m!4864663 () Bool)

(assert (=> b!4271145 m!4864663))

(declare-fun m!4864665 () Bool)

(assert (=> b!4271145 m!4864665))

(assert (=> b!4271145 m!4864659))

(push 1)

(assert (not bs!600782))

(assert (not b!4271173))

(assert (not bs!600779))

(assert (not bs!600793))

(assert (not b!4271158))

(assert (not bs!600773))

(assert (not bs!600787))

(assert (not bs!600789))

(assert (not b!4271159))

(assert (not b!4271155))

(assert (not b!4271145))

(assert (not bs!600786))

(assert (not b!4271167))

(assert (not b!4271156))

(assert (not b!4271160))

(assert (not b!4271162))

(assert (not bs!600796))

(assert (not b!4271168))

(assert (not bs!600795))

(assert (not bs!600784))

(assert (not b!4271166))

(assert (not b!4271164))

(assert (not bs!600797))

(assert (not b!4271169))

(assert (not bs!600788))

(assert (not bs!600798))

(assert (not b!4271170))

(assert (not b!4271144))

(assert (not b!4271165))

(assert (not b!4271172))

(assert (not b!4271163))

(assert (not b!4271161))

(assert (not start!409714))

(assert (not bs!600778))

(assert (not b!4271171))

(assert (not b!4271154))

(assert (not bs!600791))

(assert (not b!4271157))

(assert (not bs!600776))

(assert (not bs!600775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!600842 () Bool)

(assert (= bs!600842 (and m!4864637 b!4271158)))

(declare-fun m!4864705 () Bool)

(assert (=> bs!600842 m!4864705))

(assert (=> bs!600842 m!4864705))

(declare-fun bs!600843 () Bool)

(assert (= bs!600843 (and m!4864649 m!4864637 b!4271159)))

(assert (=> bs!600843 m!4864649))

(assert (=> bs!600843 m!4864705))

(declare-fun bs!600844 () Bool)

(assert (= bs!600844 (and m!4864649 b!4271160)))

(assert (=> bs!600844 m!4864649))

(assert (=> bs!600844 m!4864649))

(declare-fun bs!600845 () Bool)

(assert (= bs!600845 (and m!4864649 m!4864637 b!4271161)))

(assert (=> bs!600845 m!4864705))

(assert (=> bs!600845 m!4864649))

(declare-fun bs!600846 () Bool)

(assert (= bs!600846 (and m!4864643 m!4864649 m!4864641 b!4271162)))

(assert (=> bs!600846 m!4864651))

(assert (=> bs!600846 m!4864649))

(declare-fun bs!600847 () Bool)

(assert (= bs!600847 (and m!4864643 m!4864637 b!4271163)))

(assert (=> bs!600847 m!4864651))

(assert (=> bs!600847 m!4864705))

(declare-fun bs!600848 () Bool)

(assert (= bs!600848 (and m!4864643 b!4271164)))

(assert (=> bs!600848 m!4864651))

(assert (=> bs!600848 m!4864651))

(declare-fun bs!600849 () Bool)

(assert (= bs!600849 (and m!4864643 m!4864649 m!4864641 b!4271165)))

(assert (=> bs!600849 m!4864649))

(assert (=> bs!600849 m!4864651))

(declare-fun bs!600850 () Bool)

(assert (= bs!600850 (and m!4864643 m!4864637 b!4271166)))

(assert (=> bs!600850 m!4864705))

(assert (=> bs!600850 m!4864651))

(declare-fun bs!600851 () Bool)

(assert (= bs!600851 (and m!4864639 m!4864649 m!4864641 b!4271167)))

(assert (=> bs!600851 m!4864639))

(assert (=> bs!600851 m!4864649))

(declare-fun bs!600852 () Bool)

(assert (= bs!600852 (and m!4864639 m!4864637 b!4271168)))

(assert (=> bs!600852 m!4864639))

(assert (=> bs!600852 m!4864705))

(declare-fun bs!600853 () Bool)

(assert (= bs!600853 (and m!4864639 m!4864643 b!4271169)))

(assert (=> bs!600853 m!4864639))

(assert (=> bs!600853 m!4864651))

(declare-fun bs!600854 () Bool)

(assert (= bs!600854 (and m!4864639 b!4271170)))

(assert (=> bs!600854 m!4864639))

(assert (=> bs!600854 m!4864639))

(declare-fun bs!600855 () Bool)

(assert (= bs!600855 (and m!4864639 m!4864649 m!4864641 b!4271171)))

(assert (=> bs!600855 m!4864649))

(assert (=> bs!600855 m!4864639))

(declare-fun bs!600856 () Bool)

(assert (= bs!600856 (and m!4864639 m!4864637 b!4271172)))

(assert (=> bs!600856 m!4864705))

(assert (=> bs!600856 m!4864639))

(declare-fun bs!600857 () Bool)

(assert (= bs!600857 (and m!4864639 m!4864643 b!4271173)))

(assert (=> bs!600857 m!4864651))

(assert (=> bs!600857 m!4864639))

(push 1)

(assert (not bs!600782))

(assert (not b!4271173))

(assert (not bs!600779))

(assert (not bs!600793))

(assert (not b!4271158))

(assert (not bs!600773))

(assert (not bs!600787))

(assert (not bs!600789))

(assert (not b!4271159))

(assert (not b!4271155))

(assert (not b!4271145))

(assert (not bs!600786))

(assert (not b!4271167))

(assert (not b!4271156))

(assert (not b!4271160))

(assert (not b!4271162))

(assert (not bs!600796))

(assert (not b!4271168))

(assert (not bs!600795))

(assert (not bs!600784))

(assert (not b!4271166))

(assert (not b!4271164))

(assert (not bs!600797))

(assert (not b!4271169))

(assert (not bs!600788))

(assert (not bs!600798))

(assert (not b!4271170))

(assert (not b!4271144))

(assert (not b!4271165))

(assert (not b!4271172))

(assert (not b!4271163))

(assert (not b!4271161))

(assert (not start!409714))

(assert (not bs!600778))

(assert (not b!4271171))

(assert (not b!4271154))

(assert (not bs!600791))

(assert (not b!4271157))

(assert (not bs!600776))

(assert (not bs!600775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1259785 () Bool)

(declare-fun c!726709 () Bool)

(assert (=> d!1259785 (= c!726709 (is-Node!14286 (c!726705 x!740877)))))

(declare-fun e!2651904 () Bool)

(assert (=> d!1259785 (= (inv!62412 (c!726705 x!740877)) e!2651904)))

(declare-fun b!4271230 () Bool)

(declare-fun inv!62418 (Conc!14286) Bool)

(assert (=> b!4271230 (= e!2651904 (inv!62418 (c!726705 x!740877)))))

(declare-fun b!4271231 () Bool)

(declare-fun e!2651905 () Bool)

(assert (=> b!4271231 (= e!2651904 e!2651905)))

(declare-fun res!1754531 () Bool)

(assert (=> b!4271231 (= res!1754531 (not (is-Leaf!22085 (c!726705 x!740877))))))

(assert (=> b!4271231 (=> res!1754531 e!2651905)))

(declare-fun b!4271232 () Bool)

(declare-fun inv!62419 (Conc!14286) Bool)

(assert (=> b!4271232 (= e!2651905 (inv!62419 (c!726705 x!740877)))))

(assert (= (and d!1259785 c!726709) b!4271230))

(assert (= (and d!1259785 (not c!726709)) b!4271231))

(assert (= (and b!4271231 (not res!1754531)) b!4271232))

(declare-fun m!4864709 () Bool)

(assert (=> b!4271230 m!4864709))

(declare-fun m!4864711 () Bool)

(assert (=> b!4271232 m!4864711))

(assert (=> b!4271154 d!1259785))

(declare-fun d!1259787 () Bool)

(declare-fun efficientList!502 (BalanceConc!28082) List!47428)

(assert (=> d!1259787 (= (toValue!20 thiss!2721 x!740878) (WhitespaceValue!16519 (efficientList!502 x!740878)))))

(declare-fun bs!600874 () Bool)

(assert (= bs!600874 d!1259787))

(declare-fun m!4864713 () Bool)

(assert (=> bs!600874 m!4864713))

(assert (=> b!4271155 d!1259787))

(declare-fun d!1259789 () Bool)

(assert (=> d!1259789 (= (toValue!20 thiss!2721 x!740879) (WhitespaceValue!16519 (efficientList!502 x!740879)))))

(declare-fun bs!600875 () Bool)

(assert (= bs!600875 d!1259789))

(declare-fun m!4864715 () Bool)

(assert (=> bs!600875 m!4864715))

(assert (=> b!4271155 d!1259789))

(declare-fun d!1259791 () Bool)

(declare-fun list!17159 (Conc!14286) List!47428)

(assert (=> d!1259791 (= (list!17157 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877))) (list!17159 (c!726705 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877)))))))

(declare-fun bs!600876 () Bool)

(assert (= bs!600876 d!1259791))

(declare-fun m!4864717 () Bool)

(assert (=> bs!600876 m!4864717))

(assert (=> bs!600773 d!1259791))

(declare-fun d!1259793 () Bool)

(declare-fun c!726713 () Bool)

(assert (=> d!1259793 (= c!726713 (is-WhitespaceValue!16519 (toValue!20 thiss!2721 x!740877)))))

(declare-fun e!2651908 () BalanceConc!28082)

(assert (=> d!1259793 (= (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877)) e!2651908)))

(declare-fun b!4271237 () Bool)

(declare-fun seqFromList!5870 (List!47428) BalanceConc!28082)

(assert (=> b!4271237 (= e!2651908 (seqFromList!5870 (value!249349 (toValue!20 thiss!2721 x!740877))))))

(declare-fun b!4271238 () Bool)

(assert (=> b!4271238 (= e!2651908 (BalanceConc!28083 Empty!14286))))

(assert (= (and d!1259793 c!726713) b!4271237))

(assert (= (and d!1259793 (not c!726713)) b!4271238))

(declare-fun m!4864719 () Bool)

(assert (=> b!4271237 m!4864719))

(assert (=> bs!600773 d!1259793))

(declare-fun d!1259795 () Bool)

(assert (=> d!1259795 (= (toValue!20 thiss!2721 x!740877) (WhitespaceValue!16519 (efficientList!502 x!740877)))))

(declare-fun bs!600877 () Bool)

(assert (= bs!600877 d!1259795))

(declare-fun m!4864721 () Bool)

(assert (=> bs!600877 m!4864721))

(assert (=> bs!600773 d!1259795))

(declare-fun d!1259797 () Bool)

(assert (=> d!1259797 (= (list!17157 x!740877) (list!17159 (c!726705 x!740877)))))

(declare-fun bs!600878 () Bool)

(assert (= bs!600878 d!1259797))

(declare-fun m!4864723 () Bool)

(assert (=> bs!600878 m!4864723))

(assert (=> bs!600773 d!1259797))

(assert (=> bs!600779 d!1259791))

(declare-fun d!1259799 () Bool)

(assert (=> d!1259799 (= (list!17157 x!740878) (list!17159 (c!726705 x!740878)))))

(declare-fun bs!600879 () Bool)

(assert (= bs!600879 d!1259799))

(declare-fun m!4864725 () Bool)

(assert (=> bs!600879 m!4864725))

(assert (=> bs!600779 d!1259799))

(assert (=> b!4271170 d!1259795))

(declare-fun d!1259801 () Bool)

(declare-fun c!726714 () Bool)

(assert (=> d!1259801 (= c!726714 (is-Node!14286 (c!726705 x!740878)))))

(declare-fun e!2651909 () Bool)

(assert (=> d!1259801 (= (inv!62412 (c!726705 x!740878)) e!2651909)))

(declare-fun b!4271239 () Bool)

(assert (=> b!4271239 (= e!2651909 (inv!62418 (c!726705 x!740878)))))

(declare-fun b!4271240 () Bool)

(declare-fun e!2651910 () Bool)

(assert (=> b!4271240 (= e!2651909 e!2651910)))

(declare-fun res!1754532 () Bool)

(assert (=> b!4271240 (= res!1754532 (not (is-Leaf!22085 (c!726705 x!740878))))))

(assert (=> b!4271240 (=> res!1754532 e!2651910)))

(declare-fun b!4271241 () Bool)

(assert (=> b!4271241 (= e!2651910 (inv!62419 (c!726705 x!740878)))))

(assert (= (and d!1259801 c!726714) b!4271239))

(assert (= (and d!1259801 (not c!726714)) b!4271240))

(assert (= (and b!4271240 (not res!1754532)) b!4271241))

(declare-fun m!4864727 () Bool)

(assert (=> b!4271239 m!4864727))

(declare-fun m!4864729 () Bool)

(assert (=> b!4271241 m!4864729))

(assert (=> b!4271156 d!1259801))

(assert (=> b!4271163 d!1259789))

(declare-fun d!1259803 () Bool)

(assert (=> d!1259803 (= (toValue!20 thiss!2721 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877))) (WhitespaceValue!16519 (efficientList!502 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740877)))))))

(declare-fun bs!600880 () Bool)

(assert (= bs!600880 d!1259803))

(assert (=> bs!600880 m!4864635))

(declare-fun m!4864731 () Bool)

(assert (=> bs!600880 m!4864731))

(assert (=> b!4271163 d!1259803))

(assert (=> b!4271173 d!1259789))

(assert (=> b!4271173 d!1259795))

(assert (=> bs!600789 d!1259797))

(assert (=> bs!600789 d!1259799))

(assert (=> b!4271160 d!1259787))

(assert (=> bs!600795 d!1259797))

(assert (=> b!4271169 d!1259795))

(assert (=> b!4271169 d!1259789))

(assert (=> bs!600778 d!1259799))

(declare-fun d!1259805 () Bool)

(assert (=> d!1259805 (= (list!17157 x!740879) (list!17159 (c!726705 x!740879)))))

(declare-fun bs!600881 () Bool)

(assert (= bs!600881 d!1259805))

(declare-fun m!4864733 () Bool)

(assert (=> bs!600881 m!4864733))

(assert (=> bs!600784 d!1259805))

(assert (=> bs!600784 d!1259791))

(assert (=> bs!600798 d!1259805))

(assert (=> bs!600798 d!1259797))

(assert (=> b!4271166 d!1259803))

(assert (=> b!4271166 d!1259789))

(assert (=> b!4271159 d!1259787))

(assert (=> b!4271159 d!1259803))

(assert (=> bs!600793 d!1259797))

(assert (=> bs!600793 d!1259805))

(assert (=> b!4271162 d!1259789))

(assert (=> b!4271162 d!1259787))

(assert (=> b!4271172 d!1259803))

(assert (=> b!4271172 d!1259795))

(assert (=> bs!600788 d!1259791))

(assert (=> bs!600788 d!1259805))

(assert (=> bs!600776 d!1259799))

(assert (=> bs!600776 d!1259791))

(assert (=> bs!600797 d!1259791))

(assert (=> bs!600797 d!1259797))

(assert (=> b!4271165 d!1259787))

(assert (=> b!4271165 d!1259789))

(assert (=> b!4271171 d!1259787))

(assert (=> b!4271171 d!1259795))

(assert (=> start!409714 d!1259793))

(declare-fun d!1259807 () Bool)

(declare-fun choose!26044 (Int) Bool)

(assert (=> d!1259807 (= (Forall!1635 lambda!130846) (choose!26044 lambda!130846))))

(declare-fun bs!600882 () Bool)

(assert (= bs!600882 d!1259807))

(declare-fun m!4864735 () Bool)

(assert (=> bs!600882 m!4864735))

(assert (=> start!409714 d!1259807))

(declare-fun d!1259809 () Bool)

(declare-fun isBalanced!3839 (Conc!14286) Bool)

(assert (=> d!1259809 (= (inv!62413 x!740877) (isBalanced!3839 (c!726705 x!740877)))))

(declare-fun bs!600883 () Bool)

(assert (= bs!600883 d!1259809))

(declare-fun m!4864737 () Bool)

(assert (=> bs!600883 m!4864737))

(assert (=> start!409714 d!1259809))

(assert (=> start!409714 d!1259795))

(assert (=> start!409714 d!1259797))

(assert (=> start!409714 d!1259791))

(assert (=> bs!600787 d!1259799))

(assert (=> bs!600787 d!1259805))

(assert (=> b!4271168 d!1259795))

(assert (=> b!4271168 d!1259803))

(assert (=> bs!600782 d!1259805))

(assert (=> bs!600782 d!1259799))

(assert (=> b!4271161 d!1259803))

(assert (=> b!4271161 d!1259787))

(assert (=> bs!600796 d!1259799))

(assert (=> bs!600796 d!1259797))

(declare-fun d!1259811 () Bool)

(declare-fun res!1754535 () Bool)

(declare-fun e!2651913 () Bool)

(assert (=> d!1259811 (=> (not res!1754535) (not e!2651913))))

(assert (=> d!1259811 (= res!1754535 (semiInverseModEq!3509 (toChars!10662 (TokenValueInjection!15891 lambda!130848 lambda!130847)) (toValue!10803 (TokenValueInjection!15891 lambda!130848 lambda!130847))))))

(assert (=> d!1259811 (= (inv!62414 (TokenValueInjection!15891 lambda!130848 lambda!130847)) e!2651913)))

(declare-fun b!4271244 () Bool)

(assert (=> b!4271244 (= e!2651913 (equivClasses!3398 (toChars!10662 (TokenValueInjection!15891 lambda!130848 lambda!130847)) (toValue!10803 (TokenValueInjection!15891 lambda!130848 lambda!130847))))))

(assert (= (and d!1259811 res!1754535) b!4271244))

(declare-fun m!4864739 () Bool)

(assert (=> d!1259811 m!4864739))

(declare-fun m!4864741 () Bool)

(assert (=> b!4271244 m!4864741))

(assert (=> b!4271145 d!1259811))

(declare-fun bs!600884 () Bool)

(declare-fun d!1259813 () Bool)

(assert (= bs!600884 (and d!1259813 b!4271144)))

(declare-fun lambda!130880 () Int)

(assert (=> bs!600884 (not (= lambda!130880 lambda!130849))))

(assert (=> d!1259813 true))

(declare-fun order!24897 () Int)

(declare-fun order!24895 () Int)

(declare-fun dynLambda!20270 (Int Int) Int)

(declare-fun dynLambda!20271 (Int Int) Int)

(assert (=> d!1259813 (< (dynLambda!20270 order!24895 lambda!130848) (dynLambda!20271 order!24897 lambda!130880))))

(assert (=> d!1259813 (= (equivClasses!3398 lambda!130847 lambda!130848) (Forall2!1224 lambda!130880))))

(declare-fun bs!600885 () Bool)

(assert (= bs!600885 d!1259813))

(declare-fun m!4864743 () Bool)

(assert (=> bs!600885 m!4864743))

(assert (=> b!4271145 d!1259813))

(declare-fun d!1259815 () Bool)

(declare-fun choose!26045 (Int) Bool)

(assert (=> d!1259815 (= (Forall2!1224 lambda!130849) (choose!26045 lambda!130849))))

(declare-fun bs!600886 () Bool)

(assert (= bs!600886 d!1259815))

(declare-fun m!4864745 () Bool)

(assert (=> bs!600886 m!4864745))

(assert (=> b!4271145 d!1259815))

(assert (=> b!4271164 d!1259789))

(assert (=> bs!600791 d!1259797))

(assert (=> bs!600791 d!1259791))

(assert (=> b!4271158 d!1259803))

(declare-fun d!1259817 () Bool)

(declare-fun c!726715 () Bool)

(assert (=> d!1259817 (= c!726715 (is-Node!14286 (c!726705 x!740879)))))

(declare-fun e!2651916 () Bool)

(assert (=> d!1259817 (= (inv!62412 (c!726705 x!740879)) e!2651916)))

(declare-fun b!4271249 () Bool)

(assert (=> b!4271249 (= e!2651916 (inv!62418 (c!726705 x!740879)))))

(declare-fun b!4271250 () Bool)

(declare-fun e!2651917 () Bool)

(assert (=> b!4271250 (= e!2651916 e!2651917)))

(declare-fun res!1754539 () Bool)

(assert (=> b!4271250 (= res!1754539 (not (is-Leaf!22085 (c!726705 x!740879))))))

(assert (=> b!4271250 (=> res!1754539 e!2651917)))

(declare-fun b!4271251 () Bool)

(assert (=> b!4271251 (= e!2651917 (inv!62419 (c!726705 x!740879)))))

(assert (= (and d!1259817 c!726715) b!4271249))

(assert (= (and d!1259817 (not c!726715)) b!4271250))

(assert (= (and b!4271250 (not res!1754539)) b!4271251))

(declare-fun m!4864747 () Bool)

(assert (=> b!4271249 m!4864747))

(declare-fun m!4864749 () Bool)

(assert (=> b!4271251 m!4864749))

(assert (=> b!4271157 d!1259817))

(assert (=> bs!600786 d!1259805))

(assert (=> b!4271167 d!1259795))

(assert (=> b!4271167 d!1259787))

(assert (=> b!4271144 d!1259805))

(declare-fun d!1259819 () Bool)

(assert (=> d!1259819 (= (inv!62413 x!740878) (isBalanced!3839 (c!726705 x!740878)))))

(declare-fun bs!600887 () Bool)

(assert (= bs!600887 d!1259819))

(declare-fun m!4864751 () Bool)

(assert (=> bs!600887 m!4864751))

(assert (=> b!4271144 d!1259819))

(assert (=> b!4271144 d!1259815))

(assert (=> b!4271144 d!1259799))

(declare-fun bs!600888 () Bool)

(declare-fun d!1259821 () Bool)

(assert (= bs!600888 (and d!1259821 start!409714)))

(declare-fun lambda!130883 () Int)

(assert (=> bs!600888 (not (= lambda!130883 lambda!130846))))

(assert (=> d!1259821 true))

(declare-fun order!24899 () Int)

(declare-fun order!24901 () Int)

(declare-fun dynLambda!20272 (Int Int) Int)

(declare-fun dynLambda!20273 (Int Int) Int)

(assert (=> d!1259821 (< (dynLambda!20272 order!24899 lambda!130847) (dynLambda!20273 order!24901 lambda!130883))))

(assert (=> d!1259821 true))

(assert (=> d!1259821 (< (dynLambda!20270 order!24895 lambda!130848) (dynLambda!20273 order!24901 lambda!130883))))

(assert (=> d!1259821 (= (semiInverseModEq!3509 lambda!130847 lambda!130848) (Forall!1635 lambda!130883))))

(declare-fun bs!600889 () Bool)

(assert (= bs!600889 d!1259821))

(declare-fun m!4864753 () Bool)

(assert (=> bs!600889 m!4864753))

(assert (=> b!4271144 d!1259821))

(assert (=> b!4271144 d!1259807))

(declare-fun d!1259823 () Bool)

(assert (=> d!1259823 (= (inv!62413 x!740879) (isBalanced!3839 (c!726705 x!740879)))))

(declare-fun bs!600890 () Bool)

(assert (= bs!600890 d!1259823))

(declare-fun m!4864755 () Bool)

(assert (=> bs!600890 m!4864755))

(assert (=> b!4271144 d!1259823))

(assert (=> bs!600775 d!1259791))

(declare-fun tp!1308054 () Bool)

(declare-fun b!4271262 () Bool)

(declare-fun tp!1308053 () Bool)

(declare-fun e!2651922 () Bool)

(assert (=> b!4271262 (= e!2651922 (and (inv!62412 (left!35150 (c!726705 x!740877))) tp!1308053 (inv!62412 (right!35480 (c!726705 x!740877))) tp!1308054))))

(declare-fun b!4271263 () Bool)

(declare-fun inv!62420 (IArray!28577) Bool)

(assert (=> b!4271263 (= e!2651922 (inv!62420 (xs!17592 (c!726705 x!740877))))))

(assert (=> b!4271154 (= tp!1308037 (and (inv!62412 (c!726705 x!740877)) e!2651922))))

(assert (= (and b!4271154 (is-Node!14286 (c!726705 x!740877))) b!4271262))

(assert (= (and b!4271154 (is-Leaf!22085 (c!726705 x!740877))) b!4271263))

(declare-fun m!4864757 () Bool)

(assert (=> b!4271262 m!4864757))

(declare-fun m!4864759 () Bool)

(assert (=> b!4271262 m!4864759))

(declare-fun m!4864761 () Bool)

(assert (=> b!4271263 m!4864761))

(assert (=> b!4271154 m!4864629))

(declare-fun e!2651924 () Bool)

(declare-fun tp!1308056 () Bool)

(declare-fun tp!1308055 () Bool)

(declare-fun b!4271264 () Bool)

(assert (=> b!4271264 (= e!2651924 (and (inv!62412 (left!35150 (c!726705 x!740878))) tp!1308055 (inv!62412 (right!35480 (c!726705 x!740878))) tp!1308056))))

(declare-fun b!4271265 () Bool)

(assert (=> b!4271265 (= e!2651924 (inv!62420 (xs!17592 (c!726705 x!740878))))))

(assert (=> b!4271156 (= tp!1308038 (and (inv!62412 (c!726705 x!740878)) e!2651924))))

(assert (= (and b!4271156 (is-Node!14286 (c!726705 x!740878))) b!4271264))

(assert (= (and b!4271156 (is-Leaf!22085 (c!726705 x!740878))) b!4271265))

(declare-fun m!4864763 () Bool)

(assert (=> b!4271264 m!4864763))

(declare-fun m!4864765 () Bool)

(assert (=> b!4271264 m!4864765))

(declare-fun m!4864767 () Bool)

(assert (=> b!4271265 m!4864767))

(assert (=> b!4271156 m!4864653))

(declare-fun b!4271266 () Bool)

(declare-fun e!2651926 () Bool)

(declare-fun tp!1308057 () Bool)

(declare-fun tp!1308058 () Bool)

(assert (=> b!4271266 (= e!2651926 (and (inv!62412 (left!35150 (c!726705 x!740879))) tp!1308057 (inv!62412 (right!35480 (c!726705 x!740879))) tp!1308058))))

(declare-fun b!4271267 () Bool)

(assert (=> b!4271267 (= e!2651926 (inv!62420 (xs!17592 (c!726705 x!740879))))))

(assert (=> b!4271157 (= tp!1308039 (and (inv!62412 (c!726705 x!740879)) e!2651926))))

(assert (= (and b!4271157 (is-Node!14286 (c!726705 x!740879))) b!4271266))

(assert (= (and b!4271157 (is-Leaf!22085 (c!726705 x!740879))) b!4271267))

(declare-fun m!4864769 () Bool)

(assert (=> b!4271266 m!4864769))

(declare-fun m!4864771 () Bool)

(assert (=> b!4271266 m!4864771))

(declare-fun m!4864773 () Bool)

(assert (=> b!4271267 m!4864773))

(assert (=> b!4271157 m!4864655))

(push 1)

(assert (not b!4271267))

(assert (not d!1259803))

(assert (not d!1259823))

(assert (not d!1259791))

(assert (not b!4271232))

(assert (not d!1259815))

(assert (not d!1259819))

(assert (not d!1259807))

(assert (not d!1259805))

(assert (not b!4271244))

(assert (not b!4271157))

(assert (not b!4271230))

(assert (not b!4271266))

(assert (not b!4271156))

(assert (not d!1259809))

(assert (not b!4271263))

(assert (not b!4271249))

(assert (not d!1259797))

(assert (not d!1259811))

(assert (not b!4271265))

(assert (not d!1259789))

(assert (not b!4271154))

(assert (not b!4271251))

(assert (not b!4271241))

(assert (not d!1259795))

(assert (not b!4271237))

(assert (not d!1259799))

(assert (not b!4271239))

(assert (not d!1259821))

(assert (not d!1259787))

(assert (not b!4271264))

(assert (not d!1259813))

(assert (not b!4271262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

