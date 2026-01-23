; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!74484 () Bool)

(assert start!74484)

(declare-fun b!839226 () Bool)

(declare-fun b_free!24885 () Bool)

(declare-fun b_next!24949 () Bool)

(assert (=> b!839226 (= b_free!24885 (not b_next!24949))))

(declare-fun tp!263664 () Bool)

(declare-fun b_and!72413 () Bool)

(assert (=> b!839226 (= tp!263664 b_and!72413)))

(declare-fun b_free!24887 () Bool)

(declare-fun b_next!24951 () Bool)

(assert (=> b!839226 (= b_free!24887 (not b_next!24951))))

(declare-fun tp!263672 () Bool)

(declare-fun b_and!72415 () Bool)

(assert (=> b!839226 (= tp!263672 b_and!72415)))

(declare-fun b!839228 () Bool)

(declare-fun b_free!24889 () Bool)

(declare-fun b_next!24953 () Bool)

(assert (=> b!839228 (= b_free!24889 (not b_next!24953))))

(declare-fun tp!263663 () Bool)

(declare-fun b_and!72417 () Bool)

(assert (=> b!839228 (= tp!263663 b_and!72417)))

(declare-fun b_free!24891 () Bool)

(declare-fun b_next!24955 () Bool)

(assert (=> b!839228 (= b_free!24891 (not b_next!24955))))

(declare-fun tp!263670 () Bool)

(declare-fun b_and!72419 () Bool)

(assert (=> b!839228 (= tp!263670 b_and!72419)))

(declare-fun b!839229 () Bool)

(declare-fun b_free!24893 () Bool)

(declare-fun b_next!24957 () Bool)

(assert (=> b!839229 (= b_free!24893 (not b_next!24957))))

(declare-fun tp!263665 () Bool)

(declare-fun b_and!72421 () Bool)

(assert (=> b!839229 (= tp!263665 b_and!72421)))

(declare-fun b_free!24895 () Bool)

(declare-fun b_next!24959 () Bool)

(assert (=> b!839229 (= b_free!24895 (not b_next!24959))))

(declare-fun tp!263662 () Bool)

(declare-fun b_and!72423 () Bool)

(assert (=> b!839229 (= tp!263662 b_and!72423)))

(declare-fun e!551770 () Bool)

(declare-fun tp!263673 () Bool)

(declare-fun b!839214 () Bool)

(declare-datatypes ((List!8968 0))(
  ( (Nil!8952) (Cons!8952 (h!14353 (_ BitVec 16)) (t!93352 List!8968)) )
))
(declare-datatypes ((TokenValue!1741 0))(
  ( (FloatLiteralValue!3482 (text!12632 List!8968)) (TokenValueExt!1740 (__x!7213 Int)) (Broken!8705 (value!54412 List!8968)) (Object!1756) (End!1741) (Def!1741) (Underscore!1741) (Match!1741) (Else!1741) (Error!1741) (Case!1741) (If!1741) (Extends!1741) (Abstract!1741) (Class!1741) (Val!1741) (DelimiterValue!3482 (del!1801 List!8968)) (KeywordValue!1747 (value!54413 List!8968)) (CommentValue!3482 (value!54414 List!8968)) (WhitespaceValue!3482 (value!54415 List!8968)) (IndentationValue!1741 (value!54416 List!8968)) (String!10604) (Int32!1741) (Broken!8706 (value!54417 List!8968)) (Boolean!1742) (Unit!13415) (OperatorValue!1744 (op!1801 List!8968)) (IdentifierValue!3482 (value!54418 List!8968)) (IdentifierValue!3483 (value!54419 List!8968)) (WhitespaceValue!3483 (value!54420 List!8968)) (True!3482) (False!3482) (Broken!8707 (value!54421 List!8968)) (Broken!8708 (value!54422 List!8968)) (True!3483) (RightBrace!1741) (RightBracket!1741) (Colon!1741) (Null!1741) (Comma!1741) (LeftBracket!1741) (False!3483) (LeftBrace!1741) (ImaginaryLiteralValue!1741 (text!12633 List!8968)) (StringLiteralValue!5223 (value!54423 List!8968)) (EOFValue!1741 (value!54424 List!8968)) (IdentValue!1741 (value!54425 List!8968)) (DelimiterValue!3483 (value!54426 List!8968)) (DedentValue!1741 (value!54427 List!8968)) (NewLineValue!1741 (value!54428 List!8968)) (IntegerValue!5223 (value!54429 (_ BitVec 32)) (text!12634 List!8968)) (IntegerValue!5224 (value!54430 Int) (text!12635 List!8968)) (Times!1741) (Or!1741) (Equal!1741) (Minus!1741) (Broken!8709 (value!54431 List!8968)) (And!1741) (Div!1741) (LessEqual!1741) (Mod!1741) (Concat!3849) (Not!1741) (Plus!1741) (SpaceValue!1741 (value!54432 List!8968)) (IntegerValue!5225 (value!54433 Int) (text!12636 List!8968)) (StringLiteralValue!5224 (text!12637 List!8968)) (FloatLiteralValue!3483 (text!12638 List!8968)) (BytesLiteralValue!1741 (value!54434 List!8968)) (CommentValue!3483 (value!54435 List!8968)) (StringLiteralValue!5225 (value!54436 List!8968)) (ErrorTokenValue!1741 (msg!1802 List!8968)) )
))
(declare-datatypes ((C!4786 0))(
  ( (C!4787 (val!2641 Int)) )
))
(declare-datatypes ((Regex!2108 0))(
  ( (ElementMatch!2108 (c!136993 C!4786)) (Concat!3850 (regOne!4728 Regex!2108) (regTwo!4728 Regex!2108)) (EmptyExpr!2108) (Star!2108 (reg!2437 Regex!2108)) (EmptyLang!2108) (Union!2108 (regOne!4729 Regex!2108) (regTwo!4729 Regex!2108)) )
))
(declare-datatypes ((String!10605 0))(
  ( (String!10606 (value!54437 String)) )
))
(declare-datatypes ((List!8969 0))(
  ( (Nil!8953) (Cons!8953 (h!14354 C!4786) (t!93353 List!8969)) )
))
(declare-datatypes ((IArray!5949 0))(
  ( (IArray!5950 (innerList!3032 List!8969)) )
))
(declare-datatypes ((Conc!2972 0))(
  ( (Node!2972 (left!6655 Conc!2972) (right!6985 Conc!2972) (csize!6174 Int) (cheight!3183 Int)) (Leaf!4398 (xs!5661 IArray!5949) (csize!6175 Int)) (Empty!2972) )
))
(declare-datatypes ((BalanceConc!5958 0))(
  ( (BalanceConc!5959 (c!136994 Conc!2972)) )
))
(declare-datatypes ((TokenValueInjection!3182 0))(
  ( (TokenValueInjection!3183 (toValue!2692 Int) (toChars!2551 Int)) )
))
(declare-datatypes ((Rule!3150 0))(
  ( (Rule!3151 (regex!1675 Regex!2108) (tag!1937 String!10605) (isSeparator!1675 Bool) (transformation!1675 TokenValueInjection!3182)) )
))
(declare-datatypes ((Token!3016 0))(
  ( (Token!3017 (value!54438 TokenValue!1741) (rule!3098 Rule!3150) (size!7510 Int) (originalCharacters!2231 List!8969)) )
))
(declare-datatypes ((List!8970 0))(
  ( (Nil!8954) (Cons!8954 (h!14355 Token!3016) (t!93354 List!8970)) )
))
(declare-fun l!5107 () List!8970)

(declare-fun e!551778 () Bool)

(declare-fun inv!21 (TokenValue!1741) Bool)

(assert (=> b!839214 (= e!551778 (and (inv!21 (value!54438 (h!14355 l!5107))) e!551770 tp!263673))))

(declare-fun b!839215 () Bool)

(declare-fun res!383569 () Bool)

(declare-fun e!551774 () Bool)

(assert (=> b!839215 (=> (not res!383569) (not e!551774))))

(declare-fun separatorToken!297 () Token!3016)

(declare-datatypes ((List!8971 0))(
  ( (Nil!8955) (Cons!8955 (h!14356 Rule!3150) (t!93355 List!8971)) )
))
(declare-fun rules!2621 () List!8971)

(declare-datatypes ((LexerInterface!1477 0))(
  ( (LexerInterfaceExt!1474 (__x!7214 Int)) (Lexer!1475) )
))
(declare-fun thiss!20117 () LexerInterface!1477)

(declare-fun rulesProduceIndividualToken!541 (LexerInterface!1477 List!8971 Token!3016) Bool)

(assert (=> b!839215 (= res!383569 (rulesProduceIndividualToken!541 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!839216 () Bool)

(declare-fun res!383574 () Bool)

(assert (=> b!839216 (=> (not res!383574) (not e!551774))))

(declare-fun rulesProduceEachTokenIndividuallyList!365 (LexerInterface!1477 List!8971 List!8970) Bool)

(assert (=> b!839216 (= res!383574 (rulesProduceEachTokenIndividuallyList!365 thiss!20117 rules!2621 l!5107))))

(declare-fun b!839217 () Bool)

(declare-fun e!551784 () Bool)

(declare-fun tp!263666 () Bool)

(declare-fun e!551771 () Bool)

(assert (=> b!839217 (= e!551784 (and (inv!21 (value!54438 separatorToken!297)) e!551771 tp!263666))))

(declare-fun res!383570 () Bool)

(assert (=> start!74484 (=> (not res!383570) (not e!551774))))

(assert (=> start!74484 (= res!383570 (is-Lexer!1475 thiss!20117))))

(assert (=> start!74484 e!551774))

(assert (=> start!74484 true))

(declare-fun e!551779 () Bool)

(assert (=> start!74484 e!551779))

(declare-fun e!551786 () Bool)

(assert (=> start!74484 e!551786))

(declare-fun inv!11431 (Token!3016) Bool)

(assert (=> start!74484 (and (inv!11431 separatorToken!297) e!551784)))

(declare-fun e!551773 () Bool)

(declare-fun b!839218 () Bool)

(declare-fun e!551781 () Bool)

(declare-fun tp!263667 () Bool)

(declare-fun inv!11428 (String!10605) Bool)

(declare-fun inv!11432 (TokenValueInjection!3182) Bool)

(assert (=> b!839218 (= e!551773 (and tp!263667 (inv!11428 (tag!1937 (h!14356 rules!2621))) (inv!11432 (transformation!1675 (h!14356 rules!2621))) e!551781))))

(declare-fun b!839219 () Bool)

(declare-fun res!383576 () Bool)

(declare-fun e!551785 () Bool)

(assert (=> b!839219 (=> res!383576 e!551785)))

(declare-fun lt!318216 () List!8970)

(assert (=> b!839219 (= res!383576 (= (isSeparator!1675 (rule!3098 (h!14355 lt!318216))) (isSeparator!1675 (rule!3098 (h!14355 (t!93354 lt!318216))))))))

(declare-fun b!839220 () Bool)

(declare-fun res!383573 () Bool)

(assert (=> b!839220 (=> res!383573 e!551785)))

(declare-fun head!1435 (List!8970) Token!3016)

(assert (=> b!839220 (= res!383573 (not (= (head!1435 l!5107) (h!14355 lt!318216))))))

(declare-fun b!839221 () Bool)

(declare-fun res!383580 () Bool)

(assert (=> b!839221 (=> (not res!383580) (not e!551774))))

(declare-fun lambda!24909 () Int)

(declare-fun forall!2090 (List!8970 Int) Bool)

(assert (=> b!839221 (= res!383580 (forall!2090 l!5107 lambda!24909))))

(declare-fun tp!263671 () Bool)

(declare-fun b!839222 () Bool)

(assert (=> b!839222 (= e!551786 (and (inv!11431 (h!14355 l!5107)) e!551778 tp!263671))))

(declare-fun b!839223 () Bool)

(declare-fun res!383582 () Bool)

(assert (=> b!839223 (=> res!383582 e!551785)))

(assert (=> b!839223 (= res!383582 (not (rulesProduceIndividualToken!541 thiss!20117 rules!2621 (h!14355 (t!93354 lt!318216)))))))

(declare-fun b!839224 () Bool)

(assert (=> b!839224 (= e!551785 true)))

(declare-fun lt!318215 () Int)

(declare-fun size!7511 (BalanceConc!5958) Int)

(declare-fun charsOf!964 (Token!3016) BalanceConc!5958)

(assert (=> b!839224 (= lt!318215 (size!7511 (charsOf!964 (h!14355 (t!93354 lt!318216)))))))

(declare-fun b!839225 () Bool)

(declare-fun tp!263669 () Bool)

(assert (=> b!839225 (= e!551779 (and e!551773 tp!263669))))

(declare-fun e!551783 () Bool)

(assert (=> b!839226 (= e!551783 (and tp!263664 tp!263672))))

(declare-fun b!839227 () Bool)

(declare-fun res!383581 () Bool)

(assert (=> b!839227 (=> (not res!383581) (not e!551774))))

(declare-fun sepAndNonSepRulesDisjointChars!475 (List!8971 List!8971) Bool)

(assert (=> b!839227 (= res!383581 (sepAndNonSepRulesDisjointChars!475 rules!2621 rules!2621))))

(assert (=> b!839228 (= e!551781 (and tp!263663 tp!263670))))

(declare-fun e!551775 () Bool)

(assert (=> b!839229 (= e!551775 (and tp!263665 tp!263662))))

(declare-fun b!839230 () Bool)

(declare-fun res!383578 () Bool)

(assert (=> b!839230 (=> res!383578 e!551785)))

(assert (=> b!839230 (= res!383578 (not (= (h!14355 (t!93354 lt!318216)) separatorToken!297)))))

(declare-fun b!839231 () Bool)

(declare-fun res!383577 () Bool)

(assert (=> b!839231 (=> res!383577 e!551785)))

(declare-fun withSeparatorTokenList!7 (LexerInterface!1477 List!8970 Token!3016) List!8970)

(declare-fun tail!993 (List!8970) List!8970)

(assert (=> b!839231 (= res!383577 (not (= (t!93354 (t!93354 lt!318216)) (withSeparatorTokenList!7 thiss!20117 (tail!993 l!5107) separatorToken!297))))))

(declare-fun b!839232 () Bool)

(declare-fun res!383575 () Bool)

(assert (=> b!839232 (=> (not res!383575) (not e!551774))))

(assert (=> b!839232 (= res!383575 (isSeparator!1675 (rule!3098 separatorToken!297)))))

(declare-fun b!839233 () Bool)

(declare-fun res!383568 () Bool)

(assert (=> b!839233 (=> res!383568 e!551785)))

(assert (=> b!839233 (= res!383568 (not (rulesProduceIndividualToken!541 thiss!20117 rules!2621 (h!14355 lt!318216))))))

(declare-fun b!839234 () Bool)

(declare-fun res!383579 () Bool)

(assert (=> b!839234 (=> (not res!383579) (not e!551774))))

(declare-fun isEmpty!5288 (List!8971) Bool)

(assert (=> b!839234 (= res!383579 (not (isEmpty!5288 rules!2621)))))

(declare-fun b!839235 () Bool)

(declare-fun tp!263661 () Bool)

(assert (=> b!839235 (= e!551770 (and tp!263661 (inv!11428 (tag!1937 (rule!3098 (h!14355 l!5107)))) (inv!11432 (transformation!1675 (rule!3098 (h!14355 l!5107)))) e!551775))))

(declare-fun b!839236 () Bool)

(declare-fun tp!263668 () Bool)

(assert (=> b!839236 (= e!551771 (and tp!263668 (inv!11428 (tag!1937 (rule!3098 separatorToken!297))) (inv!11432 (transformation!1675 (rule!3098 separatorToken!297))) e!551783))))

(declare-fun b!839237 () Bool)

(assert (=> b!839237 (= e!551774 (not e!551785))))

(declare-fun res!383572 () Bool)

(assert (=> b!839237 (=> res!383572 e!551785)))

(assert (=> b!839237 (= res!383572 (or (not (is-Cons!8954 lt!318216)) (not (is-Cons!8954 (t!93354 lt!318216)))))))

(assert (=> b!839237 (rulesProduceEachTokenIndividuallyList!365 thiss!20117 rules!2621 lt!318216)))

(assert (=> b!839237 (= lt!318216 (withSeparatorTokenList!7 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13416 0))(
  ( (Unit!13417) )
))
(declare-fun lt!318214 () Unit!13416)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!7 (LexerInterface!1477 List!8971 List!8970 Token!3016) Unit!13416)

(assert (=> b!839237 (= lt!318214 (withSeparatorTokenListPreservesRulesProduceTokens!7 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!839238 () Bool)

(declare-fun res!383571 () Bool)

(assert (=> b!839238 (=> (not res!383571) (not e!551774))))

(declare-fun rulesInvariant!1353 (LexerInterface!1477 List!8971) Bool)

(assert (=> b!839238 (= res!383571 (rulesInvariant!1353 thiss!20117 rules!2621))))

(assert (= (and start!74484 res!383570) b!839234))

(assert (= (and b!839234 res!383579) b!839238))

(assert (= (and b!839238 res!383571) b!839216))

(assert (= (and b!839216 res!383574) b!839215))

(assert (= (and b!839215 res!383569) b!839232))

(assert (= (and b!839232 res!383575) b!839221))

(assert (= (and b!839221 res!383580) b!839227))

(assert (= (and b!839227 res!383581) b!839237))

(assert (= (and b!839237 (not res!383572)) b!839231))

(assert (= (and b!839231 (not res!383577)) b!839220))

(assert (= (and b!839220 (not res!383573)) b!839230))

(assert (= (and b!839230 (not res!383578)) b!839233))

(assert (= (and b!839233 (not res!383568)) b!839223))

(assert (= (and b!839223 (not res!383582)) b!839219))

(assert (= (and b!839219 (not res!383576)) b!839224))

(assert (= b!839218 b!839228))

(assert (= b!839225 b!839218))

(assert (= (and start!74484 (is-Cons!8955 rules!2621)) b!839225))

(assert (= b!839235 b!839229))

(assert (= b!839214 b!839235))

(assert (= b!839222 b!839214))

(assert (= (and start!74484 (is-Cons!8954 l!5107)) b!839222))

(assert (= b!839236 b!839226))

(assert (= b!839217 b!839236))

(assert (= start!74484 b!839217))

(declare-fun m!1072193 () Bool)

(assert (=> b!839238 m!1072193))

(declare-fun m!1072195 () Bool)

(assert (=> b!839224 m!1072195))

(assert (=> b!839224 m!1072195))

(declare-fun m!1072197 () Bool)

(assert (=> b!839224 m!1072197))

(declare-fun m!1072199 () Bool)

(assert (=> b!839222 m!1072199))

(declare-fun m!1072201 () Bool)

(assert (=> b!839231 m!1072201))

(assert (=> b!839231 m!1072201))

(declare-fun m!1072203 () Bool)

(assert (=> b!839231 m!1072203))

(declare-fun m!1072205 () Bool)

(assert (=> b!839227 m!1072205))

(declare-fun m!1072207 () Bool)

(assert (=> start!74484 m!1072207))

(declare-fun m!1072209 () Bool)

(assert (=> b!839223 m!1072209))

(declare-fun m!1072211 () Bool)

(assert (=> b!839214 m!1072211))

(declare-fun m!1072213 () Bool)

(assert (=> b!839233 m!1072213))

(declare-fun m!1072215 () Bool)

(assert (=> b!839236 m!1072215))

(declare-fun m!1072217 () Bool)

(assert (=> b!839236 m!1072217))

(declare-fun m!1072219 () Bool)

(assert (=> b!839234 m!1072219))

(declare-fun m!1072221 () Bool)

(assert (=> b!839215 m!1072221))

(declare-fun m!1072223 () Bool)

(assert (=> b!839218 m!1072223))

(declare-fun m!1072225 () Bool)

(assert (=> b!839218 m!1072225))

(declare-fun m!1072227 () Bool)

(assert (=> b!839220 m!1072227))

(declare-fun m!1072229 () Bool)

(assert (=> b!839216 m!1072229))

(declare-fun m!1072231 () Bool)

(assert (=> b!839235 m!1072231))

(declare-fun m!1072233 () Bool)

(assert (=> b!839235 m!1072233))

(declare-fun m!1072235 () Bool)

(assert (=> b!839237 m!1072235))

(declare-fun m!1072237 () Bool)

(assert (=> b!839237 m!1072237))

(declare-fun m!1072239 () Bool)

(assert (=> b!839237 m!1072239))

(declare-fun m!1072241 () Bool)

(assert (=> b!839217 m!1072241))

(declare-fun m!1072243 () Bool)

(assert (=> b!839221 m!1072243))

(push 1)

(assert (not start!74484))

(assert b_and!72421)

(assert (not b_next!24951))

(assert (not b!839217))

(assert (not b!839220))

(assert (not b!839227))

(assert (not b!839238))

(assert (not b!839221))

(assert (not b!839216))

(assert (not b_next!24953))

(assert (not b!839214))

(assert (not b!839222))

(assert (not b!839215))

(assert b_and!72417)

(assert b_and!72413)

(assert (not b!839218))

(assert (not b!839236))

(assert (not b_next!24957))

(assert (not b!839237))

(assert (not b_next!24955))

(assert (not b!839231))

(assert b_and!72419)

(assert (not b!839224))

(assert (not b_next!24959))

(assert (not b_next!24949))

(assert b_and!72415)

(assert (not b!839234))

(assert (not b!839223))

(assert (not b!839225))

(assert b_and!72423)

(assert (not b!839233))

(assert (not b!839235))

(check-sat)

(pop 1)

(push 1)

(assert b_and!72421)

(assert (not b_next!24951))

(assert b_and!72417)

(assert b_and!72413)

(assert (not b_next!24957))

(assert (not b_next!24959))

(assert (not b_next!24953))

(assert b_and!72423)

(assert (not b_next!24955))

(assert b_and!72419)

(assert (not b_next!24949))

(assert b_and!72415)

(check-sat)

(pop 1)

