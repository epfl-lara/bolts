; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183648 () Bool)

(assert start!183648)

(declare-fun e!1177970 () Bool)

(declare-fun b!1843459 () Bool)

(declare-datatypes ((List!20357 0))(
  ( (Nil!20287) (Cons!20287 (h!25688 (_ BitVec 16)) (t!171852 List!20357)) )
))
(declare-datatypes ((TokenValue!3742 0))(
  ( (FloatLiteralValue!7484 (text!26639 List!20357)) (TokenValueExt!3741 (__x!12784 Int)) (Broken!18710 (value!113858 List!20357)) (Object!3811) (End!3742) (Def!3742) (Underscore!3742) (Match!3742) (Else!3742) (Error!3742) (Case!3742) (If!3742) (Extends!3742) (Abstract!3742) (Class!3742) (Val!3742) (DelimiterValue!7484 (del!3802 List!20357)) (KeywordValue!3748 (value!113859 List!20357)) (CommentValue!7484 (value!113860 List!20357)) (WhitespaceValue!7484 (value!113861 List!20357)) (IndentationValue!3742 (value!113862 List!20357)) (String!23223) (Int32!3742) (Broken!18711 (value!113863 List!20357)) (Boolean!3743) (Unit!35001) (OperatorValue!3745 (op!3802 List!20357)) (IdentifierValue!7484 (value!113864 List!20357)) (IdentifierValue!7485 (value!113865 List!20357)) (WhitespaceValue!7485 (value!113866 List!20357)) (True!7484) (False!7484) (Broken!18712 (value!113867 List!20357)) (Broken!18713 (value!113868 List!20357)) (True!7485) (RightBrace!3742) (RightBracket!3742) (Colon!3742) (Null!3742) (Comma!3742) (LeftBracket!3742) (False!7485) (LeftBrace!3742) (ImaginaryLiteralValue!3742 (text!26640 List!20357)) (StringLiteralValue!11226 (value!113869 List!20357)) (EOFValue!3742 (value!113870 List!20357)) (IdentValue!3742 (value!113871 List!20357)) (DelimiterValue!7485 (value!113872 List!20357)) (DedentValue!3742 (value!113873 List!20357)) (NewLineValue!3742 (value!113874 List!20357)) (IntegerValue!11226 (value!113875 (_ BitVec 32)) (text!26641 List!20357)) (IntegerValue!11227 (value!113876 Int) (text!26642 List!20357)) (Times!3742) (Or!3742) (Equal!3742) (Minus!3742) (Broken!18714 (value!113877 List!20357)) (And!3742) (Div!3742) (LessEqual!3742) (Mod!3742) (Concat!8720) (Not!3742) (Plus!3742) (SpaceValue!3742 (value!113878 List!20357)) (IntegerValue!11228 (value!113879 Int) (text!26643 List!20357)) (StringLiteralValue!11227 (text!26644 List!20357)) (FloatLiteralValue!7485 (text!26645 List!20357)) (BytesLiteralValue!3742 (value!113880 List!20357)) (CommentValue!7485 (value!113881 List!20357)) (StringLiteralValue!11228 (value!113882 List!20357)) (ErrorTokenValue!3742 (msg!3803 List!20357)) )
))
(declare-datatypes ((Regex!4978 0))(
  ( (ElementMatch!4978 (c!301006 (_ BitVec 16))) (Concat!8721 (regOne!10468 Regex!4978) (regTwo!10468 Regex!4978)) (EmptyExpr!4978) (Star!4978 (reg!5307 Regex!4978)) (EmptyLang!4978) (Union!4978 (regOne!10469 Regex!4978) (regTwo!10469 Regex!4978)) )
))
(declare-datatypes ((String!23224 0))(
  ( (String!23225 (value!113883 String)) )
))
(declare-datatypes ((IArray!13429 0))(
  ( (IArray!13430 (innerList!6772 List!20357)) )
))
(declare-datatypes ((Conc!6712 0))(
  ( (Node!6712 (left!16234 Conc!6712) (right!16564 Conc!6712) (csize!13654 Int) (cheight!6923 Int)) (Leaf!9805 (xs!9588 IArray!13429) (csize!13655 Int)) (Empty!6712) )
))
(declare-datatypes ((BalanceConc!13344 0))(
  ( (BalanceConc!13345 (c!301007 Conc!6712)) )
))
(declare-datatypes ((TokenValueInjection!7140 0))(
  ( (TokenValueInjection!7141 (toValue!5205 Int) (toChars!5064 Int)) )
))
(declare-datatypes ((Rule!7100 0))(
  ( (Rule!7101 (regex!3650 Regex!4978) (tag!4064 String!23224) (isSeparator!3650 Bool) (transformation!3650 TokenValueInjection!7140)) )
))
(declare-datatypes ((Token!6854 0))(
  ( (Token!6855 (value!113884 TokenValue!3742) (rule!5844 Rule!7100) (size!16089 Int) (originalCharacters!4458 List!20357)) )
))
(declare-datatypes ((List!20358 0))(
  ( (Nil!20288) (Cons!20288 (h!25689 Token!6854) (t!171853 List!20358)) )
))
(declare-datatypes ((IArray!13431 0))(
  ( (IArray!13432 (innerList!6773 List!20358)) )
))
(declare-datatypes ((Conc!6713 0))(
  ( (Node!6713 (left!16235 Conc!6713) (right!16565 Conc!6713) (csize!13656 Int) (cheight!6924 Int)) (Leaf!9806 (xs!9589 IArray!13431) (csize!13657 Int)) (Empty!6713) )
))
(declare-datatypes ((List!20359 0))(
  ( (Nil!20289) (Cons!20289 (h!25690 Rule!7100) (t!171854 List!20359)) )
))
(declare-datatypes ((BalanceConc!13346 0))(
  ( (BalanceConc!13347 (c!301008 Conc!6713)) )
))
(declare-datatypes ((PrintableTokens!1218 0))(
  ( (PrintableTokens!1219 (rules!15009 List!20359) (tokens!2433 BalanceConc!13346)) )
))
(declare-datatypes ((tuple2!19672 0))(
  ( (tuple2!19673 (_1!11238 Int) (_2!11238 PrintableTokens!1218)) )
))
(declare-datatypes ((List!20360 0))(
  ( (Nil!20290) (Cons!20290 (h!25691 tuple2!19672) (t!171855 List!20360)) )
))
(declare-fun l!2176 () List!20360)

(declare-fun tp!521130 () Bool)

(declare-fun e!1177972 () Bool)

(declare-fun inv!26534 (BalanceConc!13346) Bool)

(assert (=> b!1843459 (= e!1177970 (and tp!521130 (inv!26534 (tokens!2433 (_2!11238 (h!25691 l!2176)))) e!1177972))))

(declare-fun res!828106 () Bool)

(declare-fun e!1177969 () Bool)

(assert (=> start!183648 (=> (not res!828106) (not e!1177969))))

(declare-fun lambda!72355 () Int)

(declare-fun forall!4366 (List!20360 Int) Bool)

(assert (=> start!183648 (= res!828106 (forall!4366 l!2176 lambda!72355))))

(assert (=> start!183648 e!1177969))

(declare-fun e!1177971 () Bool)

(assert (=> start!183648 e!1177971))

(declare-fun b!1843460 () Bool)

(assert (=> b!1843460 (= e!1177969 (not (forall!4366 (t!171855 l!2176) lambda!72355)))))

(declare-fun b!1843461 () Bool)

(declare-fun tp!521131 () Bool)

(declare-fun inv!26535 (Conc!6713) Bool)

(assert (=> b!1843461 (= e!1177972 (and (inv!26535 (c!301008 (tokens!2433 (_2!11238 (h!25691 l!2176))))) tp!521131))))

(declare-fun b!1843462 () Bool)

(declare-fun res!828105 () Bool)

(assert (=> b!1843462 (=> (not res!828105) (not e!1177969))))

(assert (=> b!1843462 (= res!828105 (not (is-Nil!20290 l!2176)))))

(declare-fun tp!521129 () Bool)

(declare-fun b!1843463 () Bool)

(declare-fun inv!26536 (PrintableTokens!1218) Bool)

(assert (=> b!1843463 (= e!1177971 (and (inv!26536 (_2!11238 (h!25691 l!2176))) e!1177970 tp!521129))))

(assert (= (and start!183648 res!828106) b!1843462))

(assert (= (and b!1843462 res!828105) b!1843460))

(assert (= b!1843459 b!1843461))

(assert (= b!1843463 b!1843459))

(assert (= (and start!183648 (is-Cons!20290 l!2176)) b!1843463))

(declare-fun m!2272037 () Bool)

(assert (=> b!1843460 m!2272037))

(declare-fun m!2272039 () Bool)

(assert (=> b!1843459 m!2272039))

(declare-fun m!2272041 () Bool)

(assert (=> b!1843463 m!2272041))

(declare-fun m!2272043 () Bool)

(assert (=> start!183648 m!2272043))

(declare-fun m!2272045 () Bool)

(assert (=> b!1843461 m!2272045))

(push 1)

(assert (not b!1843460))

(assert (not b!1843463))

(assert (not start!183648))

(assert (not b!1843459))

(assert (not b!1843461))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!564279 () Bool)

(declare-fun isBalanced!2090 (Conc!6713) Bool)

(assert (=> d!564279 (= (inv!26534 (tokens!2433 (_2!11238 (h!25691 l!2176)))) (isBalanced!2090 (c!301008 (tokens!2433 (_2!11238 (h!25691 l!2176))))))))

(declare-fun bs!408786 () Bool)

(assert (= bs!408786 d!564279))

(declare-fun m!2272057 () Bool)

(assert (=> bs!408786 m!2272057))

(assert (=> b!1843459 d!564279))

(declare-fun d!564281 () Bool)

(declare-fun res!828117 () Bool)

(declare-fun e!1177989 () Bool)

(assert (=> d!564281 (=> res!828117 e!1177989)))

(assert (=> d!564281 (= res!828117 (is-Nil!20290 (t!171855 l!2176)))))

(assert (=> d!564281 (= (forall!4366 (t!171855 l!2176) lambda!72355) e!1177989)))

(declare-fun b!1843483 () Bool)

(declare-fun e!1177990 () Bool)

(assert (=> b!1843483 (= e!1177989 e!1177990)))

(declare-fun res!828118 () Bool)

(assert (=> b!1843483 (=> (not res!828118) (not e!1177990))))

(declare-fun dynLambda!10092 (Int tuple2!19672) Bool)

(assert (=> b!1843483 (= res!828118 (dynLambda!10092 lambda!72355 (h!25691 (t!171855 l!2176))))))

(declare-fun b!1843484 () Bool)

(assert (=> b!1843484 (= e!1177990 (forall!4366 (t!171855 (t!171855 l!2176)) lambda!72355))))

(assert (= (and d!564281 (not res!828117)) b!1843483))

(assert (= (and b!1843483 res!828118) b!1843484))

(declare-fun b_lambda!61125 () Bool)

(assert (=> (not b_lambda!61125) (not b!1843483)))

(declare-fun m!2272059 () Bool)

(assert (=> b!1843483 m!2272059))

(declare-fun m!2272061 () Bool)

(assert (=> b!1843484 m!2272061))

(assert (=> b!1843460 d!564281))

(declare-fun d!564283 () Bool)

(declare-fun c!301014 () Bool)

(assert (=> d!564283 (= c!301014 (is-Node!6713 (c!301008 (tokens!2433 (_2!11238 (h!25691 l!2176))))))))

(declare-fun e!1177995 () Bool)

(assert (=> d!564283 (= (inv!26535 (c!301008 (tokens!2433 (_2!11238 (h!25691 l!2176))))) e!1177995)))

(declare-fun b!1843491 () Bool)

(declare-fun inv!26540 (Conc!6713) Bool)

(assert (=> b!1843491 (= e!1177995 (inv!26540 (c!301008 (tokens!2433 (_2!11238 (h!25691 l!2176))))))))

(declare-fun b!1843492 () Bool)

(declare-fun e!1177996 () Bool)

(assert (=> b!1843492 (= e!1177995 e!1177996)))

(declare-fun res!828121 () Bool)

(assert (=> b!1843492 (= res!828121 (not (is-Leaf!9806 (c!301008 (tokens!2433 (_2!11238 (h!25691 l!2176)))))))))

(assert (=> b!1843492 (=> res!828121 e!1177996)))

(declare-fun b!1843493 () Bool)

(declare-fun inv!26541 (Conc!6713) Bool)

(assert (=> b!1843493 (= e!1177996 (inv!26541 (c!301008 (tokens!2433 (_2!11238 (h!25691 l!2176))))))))

(assert (= (and d!564283 c!301014) b!1843491))

(assert (= (and d!564283 (not c!301014)) b!1843492))

(assert (= (and b!1843492 (not res!828121)) b!1843493))

(declare-fun m!2272063 () Bool)

(assert (=> b!1843491 m!2272063))

(declare-fun m!2272065 () Bool)

(assert (=> b!1843493 m!2272065))

(assert (=> b!1843461 d!564283))

(declare-fun d!564287 () Bool)

(declare-fun res!828137 () Bool)

(declare-fun e!1178011 () Bool)

(assert (=> d!564287 (=> (not res!828137) (not e!1178011))))

(declare-fun isEmpty!12763 (List!20359) Bool)

(assert (=> d!564287 (= res!828137 (not (isEmpty!12763 (rules!15009 (_2!11238 (h!25691 l!2176))))))))

(assert (=> d!564287 (= (inv!26536 (_2!11238 (h!25691 l!2176))) e!1178011)))

(declare-fun b!1843515 () Bool)

(declare-fun res!828138 () Bool)

(assert (=> b!1843515 (=> (not res!828138) (not e!1178011))))

(declare-datatypes ((LexerInterface!3279 0))(
  ( (LexerInterfaceExt!3276 (__x!12786 Int)) (Lexer!3277) )
))
(declare-fun rulesInvariant!2948 (LexerInterface!3279 List!20359) Bool)

(assert (=> b!1843515 (= res!828138 (rulesInvariant!2948 Lexer!3277 (rules!15009 (_2!11238 (h!25691 l!2176)))))))

(declare-fun b!1843516 () Bool)

(declare-fun res!828139 () Bool)

(assert (=> b!1843516 (=> (not res!828139) (not e!1178011))))

(declare-fun rulesProduceEachTokenIndividually!916 (LexerInterface!3279 List!20359 BalanceConc!13346) Bool)

(assert (=> b!1843516 (= res!828139 (rulesProduceEachTokenIndividually!916 Lexer!3277 (rules!15009 (_2!11238 (h!25691 l!2176))) (tokens!2433 (_2!11238 (h!25691 l!2176)))))))

(declare-fun b!1843517 () Bool)

(declare-fun separableTokens!287 (LexerInterface!3279 BalanceConc!13346 List!20359) Bool)

(assert (=> b!1843517 (= e!1178011 (separableTokens!287 Lexer!3277 (tokens!2433 (_2!11238 (h!25691 l!2176))) (rules!15009 (_2!11238 (h!25691 l!2176)))))))

(assert (= (and d!564287 res!828137) b!1843515))

(assert (= (and b!1843515 res!828138) b!1843516))

(assert (= (and b!1843516 res!828139) b!1843517))

(declare-fun m!2272077 () Bool)

(assert (=> d!564287 m!2272077))

(declare-fun m!2272079 () Bool)

(assert (=> b!1843515 m!2272079))

(declare-fun m!2272081 () Bool)

(assert (=> b!1843516 m!2272081))

(declare-fun m!2272083 () Bool)

(assert (=> b!1843517 m!2272083))

(assert (=> b!1843463 d!564287))

(declare-fun d!564295 () Bool)

(declare-fun res!828140 () Bool)

(declare-fun e!1178012 () Bool)

(assert (=> d!564295 (=> res!828140 e!1178012)))

(assert (=> d!564295 (= res!828140 (is-Nil!20290 l!2176))))

(assert (=> d!564295 (= (forall!4366 l!2176 lambda!72355) e!1178012)))

(declare-fun b!1843518 () Bool)

(declare-fun e!1178013 () Bool)

(assert (=> b!1843518 (= e!1178012 e!1178013)))

(declare-fun res!828141 () Bool)

(assert (=> b!1843518 (=> (not res!828141) (not e!1178013))))

(assert (=> b!1843518 (= res!828141 (dynLambda!10092 lambda!72355 (h!25691 l!2176)))))

(declare-fun b!1843519 () Bool)

(assert (=> b!1843519 (= e!1178013 (forall!4366 (t!171855 l!2176) lambda!72355))))

(assert (= (and d!564295 (not res!828140)) b!1843518))

(assert (= (and b!1843518 res!828141) b!1843519))

(declare-fun b_lambda!61129 () Bool)

(assert (=> (not b_lambda!61129) (not b!1843518)))

(declare-fun m!2272085 () Bool)

(assert (=> b!1843518 m!2272085))

(assert (=> b!1843519 m!2272037))

(assert (=> start!183648 d!564295))

(declare-fun b!1843530 () Bool)

(declare-fun b_free!51515 () Bool)

(declare-fun b_next!52219 () Bool)

(assert (=> b!1843530 (= b_free!51515 (not b_next!52219))))

(declare-fun tp!521149 () Bool)

(declare-fun b_and!143665 () Bool)

(assert (=> b!1843530 (= tp!521149 b_and!143665)))

(declare-fun b_free!51517 () Bool)

(declare-fun b_next!52221 () Bool)

(assert (=> b!1843530 (= b_free!51517 (not b_next!52221))))

(declare-fun tp!521148 () Bool)

(declare-fun b_and!143667 () Bool)

(assert (=> b!1843530 (= tp!521148 b_and!143667)))

(declare-fun e!1178024 () Bool)

(assert (=> b!1843530 (= e!1178024 (and tp!521149 tp!521148))))

(declare-fun b!1843529 () Bool)

(declare-fun e!1178023 () Bool)

(declare-fun inv!26531 (String!23224) Bool)

(declare-fun inv!26542 (TokenValueInjection!7140) Bool)

(assert (=> b!1843529 (= e!1178023 (and (inv!26531 (tag!4064 (h!25690 (rules!15009 (_2!11238 (h!25691 l!2176)))))) (inv!26542 (transformation!3650 (h!25690 (rules!15009 (_2!11238 (h!25691 l!2176)))))) e!1178024))))

(declare-fun b!1843528 () Bool)

(declare-fun e!1178025 () Bool)

(declare-fun tp!521147 () Bool)

(assert (=> b!1843528 (= e!1178025 (and e!1178023 tp!521147))))

(assert (=> b!1843459 (= tp!521130 e!1178025)))

(assert (= b!1843529 b!1843530))

(assert (= b!1843528 b!1843529))

(assert (= (and b!1843459 (is-Cons!20289 (rules!15009 (_2!11238 (h!25691 l!2176))))) b!1843528))

(declare-fun m!2272087 () Bool)

(assert (=> b!1843529 m!2272087))

(declare-fun m!2272089 () Bool)

(assert (=> b!1843529 m!2272089))

(declare-fun tp!521158 () Bool)

(declare-fun e!1178031 () Bool)

(declare-fun tp!521157 () Bool)

(declare-fun b!1843539 () Bool)

(assert (=> b!1843539 (= e!1178031 (and (inv!26535 (left!16235 (c!301008 (tokens!2433 (_2!11238 (h!25691 l!2176)))))) tp!521157 (inv!26535 (right!16565 (c!301008 (tokens!2433 (_2!11238 (h!25691 l!2176)))))) tp!521158))))

(declare-fun b!1843541 () Bool)

(declare-fun e!1178030 () Bool)

(declare-fun tp!521156 () Bool)

(assert (=> b!1843541 (= e!1178030 tp!521156)))

(declare-fun b!1843540 () Bool)

(declare-fun inv!26543 (IArray!13431) Bool)

(assert (=> b!1843540 (= e!1178031 (and (inv!26543 (xs!9589 (c!301008 (tokens!2433 (_2!11238 (h!25691 l!2176)))))) e!1178030))))

(assert (=> b!1843461 (= tp!521131 (and (inv!26535 (c!301008 (tokens!2433 (_2!11238 (h!25691 l!2176))))) e!1178031))))

(assert (= (and b!1843461 (is-Node!6713 (c!301008 (tokens!2433 (_2!11238 (h!25691 l!2176)))))) b!1843539))

(assert (= b!1843540 b!1843541))

(assert (= (and b!1843461 (is-Leaf!9806 (c!301008 (tokens!2433 (_2!11238 (h!25691 l!2176)))))) b!1843540))

(declare-fun m!2272091 () Bool)

(assert (=> b!1843539 m!2272091))

(declare-fun m!2272093 () Bool)

(assert (=> b!1843539 m!2272093))

(declare-fun m!2272095 () Bool)

(assert (=> b!1843540 m!2272095))

(assert (=> b!1843461 m!2272045))

(declare-fun b!1843552 () Bool)

(declare-fun e!1178040 () Bool)

(declare-fun tp!521166 () Bool)

(assert (=> b!1843552 (= e!1178040 (and (inv!26535 (c!301008 (tokens!2433 (_2!11238 (h!25691 (t!171855 l!2176)))))) tp!521166))))

(declare-fun b!1843551 () Bool)

(declare-fun tp!521167 () Bool)

(declare-fun e!1178039 () Bool)

(assert (=> b!1843551 (= e!1178039 (and tp!521167 (inv!26534 (tokens!2433 (_2!11238 (h!25691 (t!171855 l!2176))))) e!1178040))))

(declare-fun tp!521165 () Bool)

(declare-fun b!1843550 () Bool)

(declare-fun e!1178038 () Bool)

(assert (=> b!1843550 (= e!1178038 (and (inv!26536 (_2!11238 (h!25691 (t!171855 l!2176)))) e!1178039 tp!521165))))

(assert (=> b!1843463 (= tp!521129 e!1178038)))

(assert (= b!1843551 b!1843552))

(assert (= b!1843550 b!1843551))

(assert (= (and b!1843463 (is-Cons!20290 (t!171855 l!2176))) b!1843550))

(declare-fun m!2272097 () Bool)

(assert (=> b!1843552 m!2272097))

(declare-fun m!2272099 () Bool)

(assert (=> b!1843551 m!2272099))

(declare-fun m!2272101 () Bool)

(assert (=> b!1843550 m!2272101))

(declare-fun b_lambda!61131 () Bool)

(assert (= b_lambda!61129 (or start!183648 b_lambda!61131)))

(declare-fun bs!408788 () Bool)

(declare-fun d!564297 () Bool)

(assert (= bs!408788 (and d!564297 start!183648)))

(declare-fun usesJsonRules!0 (PrintableTokens!1218) Bool)

(assert (=> bs!408788 (= (dynLambda!10092 lambda!72355 (h!25691 l!2176)) (usesJsonRules!0 (_2!11238 (h!25691 l!2176))))))

(declare-fun m!2272103 () Bool)

(assert (=> bs!408788 m!2272103))

(assert (=> b!1843518 d!564297))

(declare-fun b_lambda!61133 () Bool)

(assert (= b_lambda!61125 (or start!183648 b_lambda!61133)))

(declare-fun bs!408789 () Bool)

(declare-fun d!564299 () Bool)

(assert (= bs!408789 (and d!564299 start!183648)))

(assert (=> bs!408789 (= (dynLambda!10092 lambda!72355 (h!25691 (t!171855 l!2176))) (usesJsonRules!0 (_2!11238 (h!25691 (t!171855 l!2176)))))))

(declare-fun m!2272105 () Bool)

(assert (=> bs!408789 m!2272105))

(assert (=> b!1843483 d!564299))

(push 1)

(assert (not bs!408788))

(assert (not b!1843517))

(assert (not b_next!52219))

(assert (not b_lambda!61133))

(assert (not b!1843541))

(assert (not b!1843529))

(assert (not b!1843515))

(assert b_and!143667)

(assert (not b!1843484))

(assert (not b!1843519))

(assert (not b!1843493))

(assert (not d!564279))

(assert (not b!1843461))

(assert b_and!143665)

(assert (not b!1843491))

(assert (not b!1843552))

(assert (not b_lambda!61131))

(assert (not b_next!52221))

(assert (not b!1843539))

(assert (not b!1843550))

(assert (not b!1843516))

(assert (not b!1843540))

(assert (not d!564287))

(assert (not b!1843551))

(assert (not bs!408789))

(assert (not b!1843528))

(check-sat)

(pop 1)

(push 1)

(assert b_and!143667)

(assert b_and!143665)

(assert (not b_next!52219))

(assert (not b_next!52221))

(check-sat)

(pop 1)

