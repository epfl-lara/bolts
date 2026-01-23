; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!332056 () Bool)

(assert start!332056)

(declare-fun b!3581370 () Bool)

(declare-fun b_free!92001 () Bool)

(declare-fun b_next!92705 () Bool)

(assert (=> b!3581370 (= b_free!92001 (not b_next!92705))))

(declare-fun tp!1096360 () Bool)

(declare-fun b_and!258399 () Bool)

(assert (=> b!3581370 (= tp!1096360 b_and!258399)))

(declare-fun b_free!92003 () Bool)

(declare-fun b_next!92707 () Bool)

(assert (=> b!3581370 (= b_free!92003 (not b_next!92707))))

(declare-fun tp!1096350 () Bool)

(declare-fun b_and!258401 () Bool)

(assert (=> b!3581370 (= tp!1096350 b_and!258401)))

(declare-fun b!3581374 () Bool)

(declare-fun b_free!92005 () Bool)

(declare-fun b_next!92709 () Bool)

(assert (=> b!3581374 (= b_free!92005 (not b_next!92709))))

(declare-fun tp!1096354 () Bool)

(declare-fun b_and!258403 () Bool)

(assert (=> b!3581374 (= tp!1096354 b_and!258403)))

(declare-fun b_free!92007 () Bool)

(declare-fun b_next!92711 () Bool)

(assert (=> b!3581374 (= b_free!92007 (not b_next!92711))))

(declare-fun tp!1096349 () Bool)

(declare-fun b_and!258405 () Bool)

(assert (=> b!3581374 (= tp!1096349 b_and!258405)))

(declare-fun b!3581360 () Bool)

(declare-fun b_free!92009 () Bool)

(declare-fun b_next!92713 () Bool)

(assert (=> b!3581360 (= b_free!92009 (not b_next!92713))))

(declare-fun tp!1096362 () Bool)

(declare-fun b_and!258407 () Bool)

(assert (=> b!3581360 (= tp!1096362 b_and!258407)))

(declare-fun b_free!92011 () Bool)

(declare-fun b_next!92715 () Bool)

(assert (=> b!3581360 (= b_free!92011 (not b_next!92715))))

(declare-fun tp!1096353 () Bool)

(declare-fun b_and!258409 () Bool)

(assert (=> b!3581360 (= tp!1096353 b_and!258409)))

(declare-fun b!3581373 () Bool)

(declare-fun b_free!92013 () Bool)

(declare-fun b_next!92717 () Bool)

(assert (=> b!3581373 (= b_free!92013 (not b_next!92717))))

(declare-fun tp!1096359 () Bool)

(declare-fun b_and!258411 () Bool)

(assert (=> b!3581373 (= tp!1096359 b_and!258411)))

(declare-fun b_free!92015 () Bool)

(declare-fun b_next!92719 () Bool)

(assert (=> b!3581373 (= b_free!92015 (not b_next!92719))))

(declare-fun tp!1096357 () Bool)

(declare-fun b_and!258413 () Bool)

(assert (=> b!3581373 (= tp!1096357 b_and!258413)))

(declare-fun b!3581359 () Bool)

(declare-fun res!1444973 () Bool)

(declare-fun e!2215896 () Bool)

(assert (=> b!3581359 (=> (not res!1444973) (not e!2215896))))

(declare-datatypes ((List!37748 0))(
  ( (Nil!37624) (Cons!37624 (h!43044 (_ BitVec 16)) (t!290317 List!37748)) )
))
(declare-datatypes ((TokenValue!5773 0))(
  ( (FloatLiteralValue!11546 (text!40856 List!37748)) (TokenValueExt!5772 (__x!23763 Int)) (Broken!28865 (value!178411 List!37748)) (Object!5896) (End!5773) (Def!5773) (Underscore!5773) (Match!5773) (Else!5773) (Error!5773) (Case!5773) (If!5773) (Extends!5773) (Abstract!5773) (Class!5773) (Val!5773) (DelimiterValue!11546 (del!5833 List!37748)) (KeywordValue!5779 (value!178412 List!37748)) (CommentValue!11546 (value!178413 List!37748)) (WhitespaceValue!11546 (value!178414 List!37748)) (IndentationValue!5773 (value!178415 List!37748)) (String!42200) (Int32!5773) (Broken!28866 (value!178416 List!37748)) (Boolean!5774) (Unit!53627) (OperatorValue!5776 (op!5833 List!37748)) (IdentifierValue!11546 (value!178417 List!37748)) (IdentifierValue!11547 (value!178418 List!37748)) (WhitespaceValue!11547 (value!178419 List!37748)) (True!11546) (False!11546) (Broken!28867 (value!178420 List!37748)) (Broken!28868 (value!178421 List!37748)) (True!11547) (RightBrace!5773) (RightBracket!5773) (Colon!5773) (Null!5773) (Comma!5773) (LeftBracket!5773) (False!11547) (LeftBrace!5773) (ImaginaryLiteralValue!5773 (text!40857 List!37748)) (StringLiteralValue!17319 (value!178422 List!37748)) (EOFValue!5773 (value!178423 List!37748)) (IdentValue!5773 (value!178424 List!37748)) (DelimiterValue!11547 (value!178425 List!37748)) (DedentValue!5773 (value!178426 List!37748)) (NewLineValue!5773 (value!178427 List!37748)) (IntegerValue!17319 (value!178428 (_ BitVec 32)) (text!40858 List!37748)) (IntegerValue!17320 (value!178429 Int) (text!40859 List!37748)) (Times!5773) (Or!5773) (Equal!5773) (Minus!5773) (Broken!28869 (value!178430 List!37748)) (And!5773) (Div!5773) (LessEqual!5773) (Mod!5773) (Concat!16075) (Not!5773) (Plus!5773) (SpaceValue!5773 (value!178431 List!37748)) (IntegerValue!17321 (value!178432 Int) (text!40860 List!37748)) (StringLiteralValue!17320 (text!40861 List!37748)) (FloatLiteralValue!11547 (text!40862 List!37748)) (BytesLiteralValue!5773 (value!178433 List!37748)) (CommentValue!11547 (value!178434 List!37748)) (StringLiteralValue!17321 (value!178435 List!37748)) (ErrorTokenValue!5773 (msg!5834 List!37748)) )
))
(declare-datatypes ((C!20790 0))(
  ( (C!20791 (val!12443 Int)) )
))
(declare-datatypes ((Regex!10302 0))(
  ( (ElementMatch!10302 (c!620516 C!20790)) (Concat!16076 (regOne!21116 Regex!10302) (regTwo!21116 Regex!10302)) (EmptyExpr!10302) (Star!10302 (reg!10631 Regex!10302)) (EmptyLang!10302) (Union!10302 (regOne!21117 Regex!10302) (regTwo!21117 Regex!10302)) )
))
(declare-datatypes ((String!42201 0))(
  ( (String!42202 (value!178436 String)) )
))
(declare-datatypes ((List!37749 0))(
  ( (Nil!37625) (Cons!37625 (h!43045 C!20790) (t!290318 List!37749)) )
))
(declare-datatypes ((IArray!22887 0))(
  ( (IArray!22888 (innerList!11501 List!37749)) )
))
(declare-datatypes ((Conc!11441 0))(
  ( (Node!11441 (left!29419 Conc!11441) (right!29749 Conc!11441) (csize!23112 Int) (cheight!11652 Int)) (Leaf!17824 (xs!14643 IArray!22887) (csize!23113 Int)) (Empty!11441) )
))
(declare-datatypes ((BalanceConc!22496 0))(
  ( (BalanceConc!22497 (c!620517 Conc!11441)) )
))
(declare-datatypes ((TokenValueInjection!10974 0))(
  ( (TokenValueInjection!10975 (toValue!7819 Int) (toChars!7678 Int)) )
))
(declare-datatypes ((Rule!10886 0))(
  ( (Rule!10887 (regex!5543 Regex!10302) (tag!6209 String!42201) (isSeparator!5543 Bool) (transformation!5543 TokenValueInjection!10974)) )
))
(declare-fun anOtherTypeRule!33 () Rule!10886)

(declare-fun rule!403 () Rule!10886)

(assert (=> b!3581359 (= res!1444973 (not (= (isSeparator!5543 anOtherTypeRule!33) (isSeparator!5543 rule!403))))))

(declare-fun e!2215897 () Bool)

(assert (=> b!3581360 (= e!2215897 (and tp!1096362 tp!1096353))))

(declare-fun b!3581361 () Bool)

(declare-fun e!2215895 () Bool)

(declare-fun e!2215889 () Bool)

(declare-fun tp!1096363 () Bool)

(assert (=> b!3581361 (= e!2215895 (and e!2215889 tp!1096363))))

(declare-fun b!3581362 () Bool)

(declare-fun e!2215898 () Bool)

(assert (=> b!3581362 (= e!2215896 e!2215898)))

(declare-fun res!1444965 () Bool)

(assert (=> b!3581362 (=> (not res!1444965) (not e!2215898))))

(declare-datatypes ((Token!10452 0))(
  ( (Token!10453 (value!178437 TokenValue!5773) (rule!8255 Rule!10886) (size!28679 Int) (originalCharacters!6257 List!37749)) )
))
(declare-datatypes ((tuple2!37528 0))(
  ( (tuple2!37529 (_1!21898 Token!10452) (_2!21898 List!37749)) )
))
(declare-datatypes ((Option!7731 0))(
  ( (None!7730) (Some!7730 (v!37374 tuple2!37528)) )
))
(declare-fun lt!1228633 () Option!7731)

(declare-fun isDefined!5965 (Option!7731) Bool)

(assert (=> b!3581362 (= res!1444965 (isDefined!5965 lt!1228633))))

(declare-datatypes ((List!37750 0))(
  ( (Nil!37626) (Cons!37626 (h!43046 Rule!10886) (t!290319 List!37750)) )
))
(declare-fun rules!3307 () List!37750)

(declare-datatypes ((LexerInterface!5132 0))(
  ( (LexerInterfaceExt!5129 (__x!23764 Int)) (Lexer!5130) )
))
(declare-fun thiss!23823 () LexerInterface!5132)

(declare-fun lt!1228631 () List!37749)

(declare-fun maxPrefix!2666 (LexerInterface!5132 List!37750 List!37749) Option!7731)

(assert (=> b!3581362 (= lt!1228633 (maxPrefix!2666 thiss!23823 rules!3307 lt!1228631))))

(declare-fun token!511 () Token!10452)

(declare-fun list!13818 (BalanceConc!22496) List!37749)

(declare-fun charsOf!3557 (Token!10452) BalanceConc!22496)

(assert (=> b!3581362 (= lt!1228631 (list!13818 (charsOf!3557 token!511)))))

(declare-fun b!3581363 () Bool)

(declare-fun e!2215907 () Bool)

(declare-fun tp_is_empty!17687 () Bool)

(declare-fun tp!1096361 () Bool)

(assert (=> b!3581363 (= e!2215907 (and tp_is_empty!17687 tp!1096361))))

(declare-fun b!3581365 () Bool)

(declare-fun res!1444966 () Bool)

(assert (=> b!3581365 (=> (not res!1444966) (not e!2215896))))

(declare-fun rulesInvariant!4529 (LexerInterface!5132 List!37750) Bool)

(assert (=> b!3581365 (= res!1444966 (rulesInvariant!4529 thiss!23823 rules!3307))))

(declare-fun b!3581366 () Bool)

(declare-fun res!1444971 () Bool)

(declare-fun e!2215902 () Bool)

(assert (=> b!3581366 (=> (not res!1444971) (not e!2215902))))

(assert (=> b!3581366 (= res!1444971 (= (rule!8255 token!511) rule!403))))

(declare-fun tp!1096352 () Bool)

(declare-fun e!2215891 () Bool)

(declare-fun b!3581367 () Bool)

(declare-fun inv!50928 (String!42201) Bool)

(declare-fun inv!50931 (TokenValueInjection!10974) Bool)

(assert (=> b!3581367 (= e!2215889 (and tp!1096352 (inv!50928 (tag!6209 (h!43046 rules!3307))) (inv!50931 (transformation!5543 (h!43046 rules!3307))) e!2215891))))

(declare-fun tp!1096351 () Bool)

(declare-fun e!2215906 () Bool)

(declare-fun b!3581368 () Bool)

(declare-fun e!2215893 () Bool)

(declare-fun inv!21 (TokenValue!5773) Bool)

(assert (=> b!3581368 (= e!2215906 (and (inv!21 (value!178437 token!511)) e!2215893 tp!1096351))))

(declare-fun b!3581369 () Bool)

(declare-fun e!2215901 () Bool)

(assert (=> b!3581369 (= e!2215902 (not e!2215901))))

(declare-fun res!1444968 () Bool)

(assert (=> b!3581369 (=> res!1444968 e!2215901)))

(declare-fun matchR!4871 (Regex!10302 List!37749) Bool)

(assert (=> b!3581369 (= res!1444968 (not (matchR!4871 (regex!5543 rule!403) lt!1228631)))))

(declare-fun ruleValid!1808 (LexerInterface!5132 Rule!10886) Bool)

(assert (=> b!3581369 (ruleValid!1808 thiss!23823 rule!403)))

(declare-datatypes ((Unit!53628 0))(
  ( (Unit!53629) )
))
(declare-fun lt!1228629 () Unit!53628)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!963 (LexerInterface!5132 Rule!10886 List!37750) Unit!53628)

(assert (=> b!3581369 (= lt!1228629 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!963 thiss!23823 rule!403 rules!3307))))

(declare-fun e!2215905 () Bool)

(assert (=> b!3581370 (= e!2215905 (and tp!1096360 tp!1096350))))

(declare-fun b!3581371 () Bool)

(assert (=> b!3581371 (= e!2215898 e!2215902)))

(declare-fun res!1444976 () Bool)

(assert (=> b!3581371 (=> (not res!1444976) (not e!2215902))))

(declare-fun lt!1228630 () tuple2!37528)

(assert (=> b!3581371 (= res!1444976 (= (_1!21898 lt!1228630) token!511))))

(declare-fun get!12115 (Option!7731) tuple2!37528)

(assert (=> b!3581371 (= lt!1228630 (get!12115 lt!1228633))))

(declare-fun res!1444974 () Bool)

(assert (=> start!332056 (=> (not res!1444974) (not e!2215896))))

(assert (=> start!332056 (= res!1444974 (is-Lexer!5130 thiss!23823))))

(assert (=> start!332056 e!2215896))

(assert (=> start!332056 e!2215895))

(assert (=> start!332056 e!2215907))

(assert (=> start!332056 true))

(declare-fun inv!50932 (Token!10452) Bool)

(assert (=> start!332056 (and (inv!50932 token!511) e!2215906)))

(declare-fun e!2215900 () Bool)

(assert (=> start!332056 e!2215900))

(declare-fun e!2215899 () Bool)

(assert (=> start!332056 e!2215899))

(declare-fun b!3581364 () Bool)

(declare-fun res!1444975 () Bool)

(assert (=> b!3581364 (=> res!1444975 e!2215901)))

(declare-fun suffix!1395 () List!37749)

(declare-fun isEmpty!22150 (List!37749) Bool)

(assert (=> b!3581364 (= res!1444975 (isEmpty!22150 suffix!1395))))

(declare-fun b!3581372 () Bool)

(assert (=> b!3581372 (= e!2215901 (not (= suffix!1395 Nil!37625)))))

(declare-fun lt!1228632 () List!37749)

(declare-fun usedCharacters!757 (Regex!10302) List!37749)

(assert (=> b!3581372 (= lt!1228632 (usedCharacters!757 (regex!5543 rule!403)))))

(assert (=> b!3581373 (= e!2215891 (and tp!1096359 tp!1096357))))

(declare-fun e!2215892 () Bool)

(assert (=> b!3581374 (= e!2215892 (and tp!1096354 tp!1096349))))

(declare-fun b!3581375 () Bool)

(declare-fun res!1444972 () Bool)

(assert (=> b!3581375 (=> (not res!1444972) (not e!2215896))))

(declare-fun isEmpty!22151 (List!37750) Bool)

(assert (=> b!3581375 (= res!1444972 (not (isEmpty!22151 rules!3307)))))

(declare-fun b!3581376 () Bool)

(declare-fun tp!1096356 () Bool)

(assert (=> b!3581376 (= e!2215893 (and tp!1096356 (inv!50928 (tag!6209 (rule!8255 token!511))) (inv!50931 (transformation!5543 (rule!8255 token!511))) e!2215905))))

(declare-fun b!3581377 () Bool)

(declare-fun tp!1096358 () Bool)

(assert (=> b!3581377 (= e!2215899 (and tp!1096358 (inv!50928 (tag!6209 anOtherTypeRule!33)) (inv!50931 (transformation!5543 anOtherTypeRule!33)) e!2215892))))

(declare-fun tp!1096355 () Bool)

(declare-fun b!3581378 () Bool)

(assert (=> b!3581378 (= e!2215900 (and tp!1096355 (inv!50928 (tag!6209 rule!403)) (inv!50931 (transformation!5543 rule!403)) e!2215897))))

(declare-fun b!3581379 () Bool)

(declare-fun res!1444970 () Bool)

(assert (=> b!3581379 (=> (not res!1444970) (not e!2215902))))

(assert (=> b!3581379 (= res!1444970 (isEmpty!22150 (_2!21898 lt!1228630)))))

(declare-fun b!3581380 () Bool)

(declare-fun res!1444967 () Bool)

(assert (=> b!3581380 (=> (not res!1444967) (not e!2215896))))

(declare-fun contains!7147 (List!37750 Rule!10886) Bool)

(assert (=> b!3581380 (= res!1444967 (contains!7147 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3581381 () Bool)

(declare-fun res!1444969 () Bool)

(assert (=> b!3581381 (=> (not res!1444969) (not e!2215896))))

(assert (=> b!3581381 (= res!1444969 (contains!7147 rules!3307 rule!403))))

(assert (= (and start!332056 res!1444974) b!3581375))

(assert (= (and b!3581375 res!1444972) b!3581365))

(assert (= (and b!3581365 res!1444966) b!3581381))

(assert (= (and b!3581381 res!1444969) b!3581380))

(assert (= (and b!3581380 res!1444967) b!3581359))

(assert (= (and b!3581359 res!1444973) b!3581362))

(assert (= (and b!3581362 res!1444965) b!3581371))

(assert (= (and b!3581371 res!1444976) b!3581379))

(assert (= (and b!3581379 res!1444970) b!3581366))

(assert (= (and b!3581366 res!1444971) b!3581369))

(assert (= (and b!3581369 (not res!1444968)) b!3581364))

(assert (= (and b!3581364 (not res!1444975)) b!3581372))

(assert (= b!3581367 b!3581373))

(assert (= b!3581361 b!3581367))

(assert (= (and start!332056 (is-Cons!37626 rules!3307)) b!3581361))

(assert (= (and start!332056 (is-Cons!37625 suffix!1395)) b!3581363))

(assert (= b!3581376 b!3581370))

(assert (= b!3581368 b!3581376))

(assert (= start!332056 b!3581368))

(assert (= b!3581378 b!3581360))

(assert (= start!332056 b!3581378))

(assert (= b!3581377 b!3581374))

(assert (= start!332056 b!3581377))

(declare-fun m!4075045 () Bool)

(assert (=> b!3581372 m!4075045))

(declare-fun m!4075047 () Bool)

(assert (=> b!3581379 m!4075047))

(declare-fun m!4075049 () Bool)

(assert (=> start!332056 m!4075049))

(declare-fun m!4075051 () Bool)

(assert (=> b!3581375 m!4075051))

(declare-fun m!4075053 () Bool)

(assert (=> b!3581381 m!4075053))

(declare-fun m!4075055 () Bool)

(assert (=> b!3581369 m!4075055))

(declare-fun m!4075057 () Bool)

(assert (=> b!3581369 m!4075057))

(declare-fun m!4075059 () Bool)

(assert (=> b!3581369 m!4075059))

(declare-fun m!4075061 () Bool)

(assert (=> b!3581368 m!4075061))

(declare-fun m!4075063 () Bool)

(assert (=> b!3581367 m!4075063))

(declare-fun m!4075065 () Bool)

(assert (=> b!3581367 m!4075065))

(declare-fun m!4075067 () Bool)

(assert (=> b!3581380 m!4075067))

(declare-fun m!4075069 () Bool)

(assert (=> b!3581376 m!4075069))

(declare-fun m!4075071 () Bool)

(assert (=> b!3581376 m!4075071))

(declare-fun m!4075073 () Bool)

(assert (=> b!3581365 m!4075073))

(declare-fun m!4075075 () Bool)

(assert (=> b!3581377 m!4075075))

(declare-fun m!4075077 () Bool)

(assert (=> b!3581377 m!4075077))

(declare-fun m!4075079 () Bool)

(assert (=> b!3581371 m!4075079))

(declare-fun m!4075081 () Bool)

(assert (=> b!3581362 m!4075081))

(declare-fun m!4075083 () Bool)

(assert (=> b!3581362 m!4075083))

(declare-fun m!4075085 () Bool)

(assert (=> b!3581362 m!4075085))

(assert (=> b!3581362 m!4075085))

(declare-fun m!4075087 () Bool)

(assert (=> b!3581362 m!4075087))

(declare-fun m!4075089 () Bool)

(assert (=> b!3581364 m!4075089))

(declare-fun m!4075091 () Bool)

(assert (=> b!3581378 m!4075091))

(declare-fun m!4075093 () Bool)

(assert (=> b!3581378 m!4075093))

(push 1)

(assert (not b!3581380))

(assert (not b!3581372))

(assert (not b!3581365))

(assert b_and!258405)

(assert (not b_next!92717))

(assert tp_is_empty!17687)

(assert (not b_next!92719))

(assert b_and!258413)

(assert (not b!3581375))

(assert (not b_next!92715))

(assert (not b!3581369))

(assert (not b_next!92707))

(assert (not b!3581379))

(assert (not b!3581377))

(assert b_and!258411)

(assert b_and!258403)

(assert (not b!3581363))

(assert b_and!258401)

(assert (not b_next!92709))

(assert (not b!3581367))

(assert (not b_next!92713))

(assert (not b!3581381))

(assert b_and!258407)

(assert (not b!3581371))

(assert b_and!258409)

(assert (not start!332056))

(assert (not b!3581376))

(assert (not b!3581362))

(assert (not b_next!92711))

(assert (not b!3581364))

(assert (not b!3581361))

(assert (not b_next!92705))

(assert (not b!3581378))

(assert b_and!258399)

(assert (not b!3581368))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!92713))

(assert b_and!258407)

(assert b_and!258405)

(assert (not b_next!92717))

(assert b_and!258409)

(assert (not b_next!92719))

(assert b_and!258413)

(assert (not b_next!92715))

(assert (not b_next!92707))

(assert (not b_next!92711))

(assert (not b_next!92705))

(assert b_and!258399)

(assert b_and!258411)

(assert b_and!258403)

(assert b_and!258401)

(assert (not b_next!92709))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1056153 () Bool)

(assert (=> d!1056153 (= (get!12115 lt!1228633) (v!37374 lt!1228633))))

(assert (=> b!3581371 d!1056153))

(declare-fun d!1056155 () Bool)

(declare-fun lt!1228651 () Bool)

(declare-fun content!5336 (List!37750) (Set Rule!10886))

(assert (=> d!1056155 (= lt!1228651 (set.member rule!403 (content!5336 rules!3307)))))

(declare-fun e!2215973 () Bool)

(assert (=> d!1056155 (= lt!1228651 e!2215973)))

(declare-fun res!1445026 () Bool)

(assert (=> d!1056155 (=> (not res!1445026) (not e!2215973))))

(assert (=> d!1056155 (= res!1445026 (is-Cons!37626 rules!3307))))

(assert (=> d!1056155 (= (contains!7147 rules!3307 rule!403) lt!1228651)))

(declare-fun b!3581455 () Bool)

(declare-fun e!2215974 () Bool)

(assert (=> b!3581455 (= e!2215973 e!2215974)))

(declare-fun res!1445025 () Bool)

(assert (=> b!3581455 (=> res!1445025 e!2215974)))

(assert (=> b!3581455 (= res!1445025 (= (h!43046 rules!3307) rule!403))))

(declare-fun b!3581456 () Bool)

(assert (=> b!3581456 (= e!2215974 (contains!7147 (t!290319 rules!3307) rule!403))))

(assert (= (and d!1056155 res!1445026) b!3581455))

(assert (= (and b!3581455 (not res!1445025)) b!3581456))

(declare-fun m!4075145 () Bool)

(assert (=> d!1056155 m!4075145))

(declare-fun m!4075147 () Bool)

(assert (=> d!1056155 m!4075147))

(declare-fun m!4075149 () Bool)

(assert (=> b!3581456 m!4075149))

(assert (=> b!3581381 d!1056155))

(declare-fun d!1056157 () Bool)

(declare-fun lt!1228652 () Bool)

(assert (=> d!1056157 (= lt!1228652 (set.member anOtherTypeRule!33 (content!5336 rules!3307)))))

(declare-fun e!2215975 () Bool)

(assert (=> d!1056157 (= lt!1228652 e!2215975)))

(declare-fun res!1445028 () Bool)

(assert (=> d!1056157 (=> (not res!1445028) (not e!2215975))))

(assert (=> d!1056157 (= res!1445028 (is-Cons!37626 rules!3307))))

(assert (=> d!1056157 (= (contains!7147 rules!3307 anOtherTypeRule!33) lt!1228652)))

(declare-fun b!3581457 () Bool)

(declare-fun e!2215976 () Bool)

(assert (=> b!3581457 (= e!2215975 e!2215976)))

(declare-fun res!1445027 () Bool)

(assert (=> b!3581457 (=> res!1445027 e!2215976)))

(assert (=> b!3581457 (= res!1445027 (= (h!43046 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3581458 () Bool)

(assert (=> b!3581458 (= e!2215976 (contains!7147 (t!290319 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1056157 res!1445028) b!3581457))

(assert (= (and b!3581457 (not res!1445027)) b!3581458))

(assert (=> d!1056157 m!4075145))

(declare-fun m!4075151 () Bool)

(assert (=> d!1056157 m!4075151))

(declare-fun m!4075153 () Bool)

(assert (=> b!3581458 m!4075153))

(assert (=> b!3581380 d!1056157))

(declare-fun b!3581490 () Bool)

(declare-fun res!1445051 () Bool)

(declare-fun e!2215995 () Bool)

(assert (=> b!3581490 (=> res!1445051 e!2215995)))

(assert (=> b!3581490 (= res!1445051 (not (is-ElementMatch!10302 (regex!5543 rule!403))))))

(declare-fun e!2215997 () Bool)

(assert (=> b!3581490 (= e!2215997 e!2215995)))

(declare-fun b!3581491 () Bool)

(declare-fun e!2216000 () Bool)

(declare-fun head!7460 (List!37749) C!20790)

(assert (=> b!3581491 (= e!2216000 (not (= (head!7460 lt!1228631) (c!620516 (regex!5543 rule!403)))))))

(declare-fun b!3581492 () Bool)

(declare-fun e!2215994 () Bool)

(declare-fun derivativeStep!3098 (Regex!10302 C!20790) Regex!10302)

(declare-fun tail!5546 (List!37749) List!37749)

(assert (=> b!3581492 (= e!2215994 (matchR!4871 (derivativeStep!3098 (regex!5543 rule!403) (head!7460 lt!1228631)) (tail!5546 lt!1228631)))))

(declare-fun b!3581493 () Bool)

(declare-fun e!2215996 () Bool)

(assert (=> b!3581493 (= e!2215996 e!2216000)))

(declare-fun res!1445052 () Bool)

(assert (=> b!3581493 (=> res!1445052 e!2216000)))

(declare-fun call!259317 () Bool)

(assert (=> b!3581493 (= res!1445052 call!259317)))

(declare-fun b!3581494 () Bool)

(declare-fun e!2215998 () Bool)

(assert (=> b!3581494 (= e!2215998 (= (head!7460 lt!1228631) (c!620516 (regex!5543 rule!403))))))

(declare-fun b!3581495 () Bool)

(declare-fun res!1445053 () Bool)

(assert (=> b!3581495 (=> res!1445053 e!2215995)))

(assert (=> b!3581495 (= res!1445053 e!2215998)))

(declare-fun res!1445048 () Bool)

(assert (=> b!3581495 (=> (not res!1445048) (not e!2215998))))

(declare-fun lt!1228655 () Bool)

(assert (=> b!3581495 (= res!1445048 lt!1228655)))

(declare-fun b!3581496 () Bool)

(declare-fun nullable!3549 (Regex!10302) Bool)

(assert (=> b!3581496 (= e!2215994 (nullable!3549 (regex!5543 rule!403)))))

(declare-fun d!1056159 () Bool)

(declare-fun e!2215999 () Bool)

(assert (=> d!1056159 e!2215999))

(declare-fun c!620529 () Bool)

(assert (=> d!1056159 (= c!620529 (is-EmptyExpr!10302 (regex!5543 rule!403)))))

(assert (=> d!1056159 (= lt!1228655 e!2215994)))

(declare-fun c!620528 () Bool)

(assert (=> d!1056159 (= c!620528 (isEmpty!22150 lt!1228631))))

(declare-fun validRegex!4705 (Regex!10302) Bool)

(assert (=> d!1056159 (validRegex!4705 (regex!5543 rule!403))))

(assert (=> d!1056159 (= (matchR!4871 (regex!5543 rule!403) lt!1228631) lt!1228655)))

(declare-fun bm!259312 () Bool)

(assert (=> bm!259312 (= call!259317 (isEmpty!22150 lt!1228631))))

(declare-fun b!3581497 () Bool)

(assert (=> b!3581497 (= e!2215999 e!2215997)))

(declare-fun c!620527 () Bool)

(assert (=> b!3581497 (= c!620527 (is-EmptyLang!10302 (regex!5543 rule!403)))))

(declare-fun b!3581498 () Bool)

(declare-fun res!1445055 () Bool)

(assert (=> b!3581498 (=> (not res!1445055) (not e!2215998))))

(assert (=> b!3581498 (= res!1445055 (not call!259317))))

(declare-fun b!3581499 () Bool)

(assert (=> b!3581499 (= e!2215997 (not lt!1228655))))

(declare-fun b!3581500 () Bool)

(declare-fun res!1445049 () Bool)

(assert (=> b!3581500 (=> (not res!1445049) (not e!2215998))))

(assert (=> b!3581500 (= res!1445049 (isEmpty!22150 (tail!5546 lt!1228631)))))

(declare-fun b!3581501 () Bool)

(assert (=> b!3581501 (= e!2215999 (= lt!1228655 call!259317))))

(declare-fun b!3581502 () Bool)

(assert (=> b!3581502 (= e!2215995 e!2215996)))

(declare-fun res!1445050 () Bool)

(assert (=> b!3581502 (=> (not res!1445050) (not e!2215996))))

(assert (=> b!3581502 (= res!1445050 (not lt!1228655))))

(declare-fun b!3581503 () Bool)

(declare-fun res!1445054 () Bool)

(assert (=> b!3581503 (=> res!1445054 e!2216000)))

(assert (=> b!3581503 (= res!1445054 (not (isEmpty!22150 (tail!5546 lt!1228631))))))

(assert (= (and d!1056159 c!620528) b!3581496))

(assert (= (and d!1056159 (not c!620528)) b!3581492))

(assert (= (and d!1056159 c!620529) b!3581501))

(assert (= (and d!1056159 (not c!620529)) b!3581497))

(assert (= (and b!3581497 c!620527) b!3581499))

(assert (= (and b!3581497 (not c!620527)) b!3581490))

(assert (= (and b!3581490 (not res!1445051)) b!3581495))

(assert (= (and b!3581495 res!1445048) b!3581498))

(assert (= (and b!3581498 res!1445055) b!3581500))

(assert (= (and b!3581500 res!1445049) b!3581494))

(assert (= (and b!3581495 (not res!1445053)) b!3581502))

(assert (= (and b!3581502 res!1445050) b!3581493))

(assert (= (and b!3581493 (not res!1445052)) b!3581503))

(assert (= (and b!3581503 (not res!1445054)) b!3581491))

(assert (= (or b!3581501 b!3581493 b!3581498) bm!259312))

(declare-fun m!4075159 () Bool)

(assert (=> b!3581492 m!4075159))

(assert (=> b!3581492 m!4075159))

(declare-fun m!4075163 () Bool)

(assert (=> b!3581492 m!4075163))

(declare-fun m!4075167 () Bool)

(assert (=> b!3581492 m!4075167))

(assert (=> b!3581492 m!4075163))

(assert (=> b!3581492 m!4075167))

(declare-fun m!4075169 () Bool)

(assert (=> b!3581492 m!4075169))

(assert (=> b!3581500 m!4075167))

(assert (=> b!3581500 m!4075167))

(declare-fun m!4075171 () Bool)

(assert (=> b!3581500 m!4075171))

(assert (=> b!3581494 m!4075159))

(declare-fun m!4075173 () Bool)

(assert (=> d!1056159 m!4075173))

(declare-fun m!4075175 () Bool)

(assert (=> d!1056159 m!4075175))

(assert (=> b!3581503 m!4075167))

(assert (=> b!3581503 m!4075167))

(assert (=> b!3581503 m!4075171))

(assert (=> b!3581491 m!4075159))

(assert (=> bm!259312 m!4075173))

(declare-fun m!4075177 () Bool)

(assert (=> b!3581496 m!4075177))

(assert (=> b!3581369 d!1056159))

(declare-fun d!1056173 () Bool)

(declare-fun res!1445061 () Bool)

(declare-fun e!2216004 () Bool)

(assert (=> d!1056173 (=> (not res!1445061) (not e!2216004))))

(assert (=> d!1056173 (= res!1445061 (validRegex!4705 (regex!5543 rule!403)))))

(assert (=> d!1056173 (= (ruleValid!1808 thiss!23823 rule!403) e!2216004)))

(declare-fun b!3581509 () Bool)

(declare-fun res!1445062 () Bool)

(assert (=> b!3581509 (=> (not res!1445062) (not e!2216004))))

(assert (=> b!3581509 (= res!1445062 (not (nullable!3549 (regex!5543 rule!403))))))

(declare-fun b!3581510 () Bool)

(assert (=> b!3581510 (= e!2216004 (not (= (tag!6209 rule!403) (String!42202 ""))))))

(assert (= (and d!1056173 res!1445061) b!3581509))

(assert (= (and b!3581509 res!1445062) b!3581510))

(assert (=> d!1056173 m!4075175))

(assert (=> b!3581509 m!4075177))

(assert (=> b!3581369 d!1056173))

(declare-fun d!1056177 () Bool)

(assert (=> d!1056177 (ruleValid!1808 thiss!23823 rule!403)))

(declare-fun lt!1228658 () Unit!53628)

(declare-fun choose!20843 (LexerInterface!5132 Rule!10886 List!37750) Unit!53628)

(assert (=> d!1056177 (= lt!1228658 (choose!20843 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1056177 (contains!7147 rules!3307 rule!403)))

(assert (=> d!1056177 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!963 thiss!23823 rule!403 rules!3307) lt!1228658)))

(declare-fun bs!569889 () Bool)

(assert (= bs!569889 d!1056177))

(assert (=> bs!569889 m!4075057))

(declare-fun m!4075181 () Bool)

(assert (=> bs!569889 m!4075181))

(assert (=> bs!569889 m!4075053))

(assert (=> b!3581369 d!1056177))

(declare-fun d!1056179 () Bool)

(assert (=> d!1056179 (= (isEmpty!22150 (_2!21898 lt!1228630)) (is-Nil!37625 (_2!21898 lt!1228630)))))

(assert (=> b!3581379 d!1056179))

(declare-fun b!3581521 () Bool)

(declare-fun e!2216012 () Bool)

(declare-fun inv!17 (TokenValue!5773) Bool)

(assert (=> b!3581521 (= e!2216012 (inv!17 (value!178437 token!511)))))

(declare-fun b!3581522 () Bool)

(declare-fun res!1445065 () Bool)

(declare-fun e!2216011 () Bool)

(assert (=> b!3581522 (=> res!1445065 e!2216011)))

(assert (=> b!3581522 (= res!1445065 (not (is-IntegerValue!17321 (value!178437 token!511))))))

(assert (=> b!3581522 (= e!2216012 e!2216011)))

(declare-fun b!3581523 () Bool)

(declare-fun e!2216013 () Bool)

(assert (=> b!3581523 (= e!2216013 e!2216012)))

(declare-fun c!620535 () Bool)

(assert (=> b!3581523 (= c!620535 (is-IntegerValue!17320 (value!178437 token!511)))))

(declare-fun b!3581524 () Bool)

(declare-fun inv!16 (TokenValue!5773) Bool)

(assert (=> b!3581524 (= e!2216013 (inv!16 (value!178437 token!511)))))

(declare-fun b!3581525 () Bool)

(declare-fun inv!15 (TokenValue!5773) Bool)

(assert (=> b!3581525 (= e!2216011 (inv!15 (value!178437 token!511)))))

(declare-fun d!1056181 () Bool)

(declare-fun c!620534 () Bool)

(assert (=> d!1056181 (= c!620534 (is-IntegerValue!17319 (value!178437 token!511)))))

(assert (=> d!1056181 (= (inv!21 (value!178437 token!511)) e!2216013)))

(assert (= (and d!1056181 c!620534) b!3581524))

(assert (= (and d!1056181 (not c!620534)) b!3581523))

(assert (= (and b!3581523 c!620535) b!3581521))

(assert (= (and b!3581523 (not c!620535)) b!3581522))

(assert (= (and b!3581522 (not res!1445065)) b!3581525))

(declare-fun m!4075183 () Bool)

(assert (=> b!3581521 m!4075183))

(declare-fun m!4075185 () Bool)

(assert (=> b!3581524 m!4075185))

(declare-fun m!4075187 () Bool)

(assert (=> b!3581525 m!4075187))

(assert (=> b!3581368 d!1056181))

(declare-fun d!1056183 () Bool)

(assert (=> d!1056183 (= (inv!50928 (tag!6209 rule!403)) (= (mod (str.len (value!178436 (tag!6209 rule!403))) 2) 0))))

(assert (=> b!3581378 d!1056183))

(declare-fun d!1056185 () Bool)

(declare-fun res!1445068 () Bool)

(declare-fun e!2216016 () Bool)

(assert (=> d!1056185 (=> (not res!1445068) (not e!2216016))))

(declare-fun semiInverseModEq!2347 (Int Int) Bool)

(assert (=> d!1056185 (= res!1445068 (semiInverseModEq!2347 (toChars!7678 (transformation!5543 rule!403)) (toValue!7819 (transformation!5543 rule!403))))))

(assert (=> d!1056185 (= (inv!50931 (transformation!5543 rule!403)) e!2216016)))

(declare-fun b!3581528 () Bool)

(declare-fun equivClasses!2246 (Int Int) Bool)

(assert (=> b!3581528 (= e!2216016 (equivClasses!2246 (toChars!7678 (transformation!5543 rule!403)) (toValue!7819 (transformation!5543 rule!403))))))

(assert (= (and d!1056185 res!1445068) b!3581528))

(declare-fun m!4075189 () Bool)

(assert (=> d!1056185 m!4075189))

(declare-fun m!4075191 () Bool)

(assert (=> b!3581528 m!4075191))

(assert (=> b!3581378 d!1056185))

(declare-fun d!1056187 () Bool)

(assert (=> d!1056187 (= (inv!50928 (tag!6209 (h!43046 rules!3307))) (= (mod (str.len (value!178436 (tag!6209 (h!43046 rules!3307)))) 2) 0))))

(assert (=> b!3581367 d!1056187))

(declare-fun d!1056189 () Bool)

(declare-fun res!1445069 () Bool)

(declare-fun e!2216017 () Bool)

(assert (=> d!1056189 (=> (not res!1445069) (not e!2216017))))

(assert (=> d!1056189 (= res!1445069 (semiInverseModEq!2347 (toChars!7678 (transformation!5543 (h!43046 rules!3307))) (toValue!7819 (transformation!5543 (h!43046 rules!3307)))))))

(assert (=> d!1056189 (= (inv!50931 (transformation!5543 (h!43046 rules!3307))) e!2216017)))

(declare-fun b!3581529 () Bool)

(assert (=> b!3581529 (= e!2216017 (equivClasses!2246 (toChars!7678 (transformation!5543 (h!43046 rules!3307))) (toValue!7819 (transformation!5543 (h!43046 rules!3307)))))))

(assert (= (and d!1056189 res!1445069) b!3581529))

(declare-fun m!4075193 () Bool)

(assert (=> d!1056189 m!4075193))

(declare-fun m!4075195 () Bool)

(assert (=> b!3581529 m!4075195))

(assert (=> b!3581367 d!1056189))

(declare-fun d!1056191 () Bool)

(declare-fun res!1445074 () Bool)

(declare-fun e!2216020 () Bool)

(assert (=> d!1056191 (=> (not res!1445074) (not e!2216020))))

(assert (=> d!1056191 (= res!1445074 (not (isEmpty!22150 (originalCharacters!6257 token!511))))))

(assert (=> d!1056191 (= (inv!50932 token!511) e!2216020)))

(declare-fun b!3581534 () Bool)

(declare-fun res!1445075 () Bool)

(assert (=> b!3581534 (=> (not res!1445075) (not e!2216020))))

(declare-fun dynLambda!16183 (Int TokenValue!5773) BalanceConc!22496)

(assert (=> b!3581534 (= res!1445075 (= (originalCharacters!6257 token!511) (list!13818 (dynLambda!16183 (toChars!7678 (transformation!5543 (rule!8255 token!511))) (value!178437 token!511)))))))

(declare-fun b!3581535 () Bool)

(declare-fun size!28681 (List!37749) Int)

(assert (=> b!3581535 (= e!2216020 (= (size!28679 token!511) (size!28681 (originalCharacters!6257 token!511))))))

(assert (= (and d!1056191 res!1445074) b!3581534))

(assert (= (and b!3581534 res!1445075) b!3581535))

(declare-fun b_lambda!105843 () Bool)

(assert (=> (not b_lambda!105843) (not b!3581534)))

(declare-fun t!290324 () Bool)

(declare-fun tb!204341 () Bool)

(assert (=> (and b!3581370 (= (toChars!7678 (transformation!5543 (rule!8255 token!511))) (toChars!7678 (transformation!5543 (rule!8255 token!511)))) t!290324) tb!204341))

(declare-fun b!3581540 () Bool)

(declare-fun e!2216023 () Bool)

(declare-fun tp!1096411 () Bool)

(declare-fun inv!50935 (Conc!11441) Bool)

(assert (=> b!3581540 (= e!2216023 (and (inv!50935 (c!620517 (dynLambda!16183 (toChars!7678 (transformation!5543 (rule!8255 token!511))) (value!178437 token!511)))) tp!1096411))))

(declare-fun result!249114 () Bool)

(declare-fun inv!50936 (BalanceConc!22496) Bool)

(assert (=> tb!204341 (= result!249114 (and (inv!50936 (dynLambda!16183 (toChars!7678 (transformation!5543 (rule!8255 token!511))) (value!178437 token!511))) e!2216023))))

(assert (= tb!204341 b!3581540))

(declare-fun m!4075197 () Bool)

(assert (=> b!3581540 m!4075197))

(declare-fun m!4075199 () Bool)

(assert (=> tb!204341 m!4075199))

(assert (=> b!3581534 t!290324))

(declare-fun b_and!258431 () Bool)

(assert (= b_and!258401 (and (=> t!290324 result!249114) b_and!258431)))

(declare-fun t!290326 () Bool)

(declare-fun tb!204343 () Bool)

(assert (=> (and b!3581374 (= (toChars!7678 (transformation!5543 anOtherTypeRule!33)) (toChars!7678 (transformation!5543 (rule!8255 token!511)))) t!290326) tb!204343))

(declare-fun result!249118 () Bool)

(assert (= result!249118 result!249114))

(assert (=> b!3581534 t!290326))

(declare-fun b_and!258433 () Bool)

(assert (= b_and!258405 (and (=> t!290326 result!249118) b_and!258433)))

(declare-fun tb!204345 () Bool)

(declare-fun t!290328 () Bool)

(assert (=> (and b!3581360 (= (toChars!7678 (transformation!5543 rule!403)) (toChars!7678 (transformation!5543 (rule!8255 token!511)))) t!290328) tb!204345))

(declare-fun result!249120 () Bool)

(assert (= result!249120 result!249114))

(assert (=> b!3581534 t!290328))

(declare-fun b_and!258435 () Bool)

(assert (= b_and!258409 (and (=> t!290328 result!249120) b_and!258435)))

(declare-fun t!290330 () Bool)

(declare-fun tb!204347 () Bool)

(assert (=> (and b!3581373 (= (toChars!7678 (transformation!5543 (h!43046 rules!3307))) (toChars!7678 (transformation!5543 (rule!8255 token!511)))) t!290330) tb!204347))

(declare-fun result!249122 () Bool)

(assert (= result!249122 result!249114))

(assert (=> b!3581534 t!290330))

(declare-fun b_and!258437 () Bool)

(assert (= b_and!258413 (and (=> t!290330 result!249122) b_and!258437)))

(declare-fun m!4075201 () Bool)

(assert (=> d!1056191 m!4075201))

(declare-fun m!4075203 () Bool)

(assert (=> b!3581534 m!4075203))

(assert (=> b!3581534 m!4075203))

(declare-fun m!4075205 () Bool)

(assert (=> b!3581534 m!4075205))

(declare-fun m!4075207 () Bool)

(assert (=> b!3581535 m!4075207))

(assert (=> start!332056 d!1056191))

(declare-fun d!1056193 () Bool)

(assert (=> d!1056193 (= (inv!50928 (tag!6209 anOtherTypeRule!33)) (= (mod (str.len (value!178436 (tag!6209 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3581377 d!1056193))

(declare-fun d!1056195 () Bool)

(declare-fun res!1445076 () Bool)

(declare-fun e!2216024 () Bool)

(assert (=> d!1056195 (=> (not res!1445076) (not e!2216024))))

(assert (=> d!1056195 (= res!1445076 (semiInverseModEq!2347 (toChars!7678 (transformation!5543 anOtherTypeRule!33)) (toValue!7819 (transformation!5543 anOtherTypeRule!33))))))

(assert (=> d!1056195 (= (inv!50931 (transformation!5543 anOtherTypeRule!33)) e!2216024)))

(declare-fun b!3581541 () Bool)

(assert (=> b!3581541 (= e!2216024 (equivClasses!2246 (toChars!7678 (transformation!5543 anOtherTypeRule!33)) (toValue!7819 (transformation!5543 anOtherTypeRule!33))))))

(assert (= (and d!1056195 res!1445076) b!3581541))

(declare-fun m!4075209 () Bool)

(assert (=> d!1056195 m!4075209))

(declare-fun m!4075211 () Bool)

(assert (=> b!3581541 m!4075211))

(assert (=> b!3581377 d!1056195))

(declare-fun d!1056197 () Bool)

(assert (=> d!1056197 (= (inv!50928 (tag!6209 (rule!8255 token!511))) (= (mod (str.len (value!178436 (tag!6209 (rule!8255 token!511)))) 2) 0))))

(assert (=> b!3581376 d!1056197))

(declare-fun d!1056199 () Bool)

(declare-fun res!1445077 () Bool)

(declare-fun e!2216025 () Bool)

(assert (=> d!1056199 (=> (not res!1445077) (not e!2216025))))

(assert (=> d!1056199 (= res!1445077 (semiInverseModEq!2347 (toChars!7678 (transformation!5543 (rule!8255 token!511))) (toValue!7819 (transformation!5543 (rule!8255 token!511)))))))

(assert (=> d!1056199 (= (inv!50931 (transformation!5543 (rule!8255 token!511))) e!2216025)))

(declare-fun b!3581542 () Bool)

(assert (=> b!3581542 (= e!2216025 (equivClasses!2246 (toChars!7678 (transformation!5543 (rule!8255 token!511))) (toValue!7819 (transformation!5543 (rule!8255 token!511)))))))

(assert (= (and d!1056199 res!1445077) b!3581542))

(declare-fun m!4075213 () Bool)

(assert (=> d!1056199 m!4075213))

(declare-fun m!4075215 () Bool)

(assert (=> b!3581542 m!4075215))

(assert (=> b!3581376 d!1056199))

(declare-fun d!1056201 () Bool)

(declare-fun res!1445080 () Bool)

(declare-fun e!2216028 () Bool)

(assert (=> d!1056201 (=> (not res!1445080) (not e!2216028))))

(declare-fun rulesValid!2106 (LexerInterface!5132 List!37750) Bool)

(assert (=> d!1056201 (= res!1445080 (rulesValid!2106 thiss!23823 rules!3307))))

(assert (=> d!1056201 (= (rulesInvariant!4529 thiss!23823 rules!3307) e!2216028)))

(declare-fun b!3581545 () Bool)

(declare-datatypes ((List!37754 0))(
  ( (Nil!37630) (Cons!37630 (h!43050 String!42201) (t!290341 List!37754)) )
))
(declare-fun noDuplicateTag!2102 (LexerInterface!5132 List!37750 List!37754) Bool)

(assert (=> b!3581545 (= e!2216028 (noDuplicateTag!2102 thiss!23823 rules!3307 Nil!37630))))

(assert (= (and d!1056201 res!1445080) b!3581545))

(declare-fun m!4075217 () Bool)

(assert (=> d!1056201 m!4075217))

(declare-fun m!4075219 () Bool)

(assert (=> b!3581545 m!4075219))

(assert (=> b!3581365 d!1056201))

(declare-fun d!1056203 () Bool)

(assert (=> d!1056203 (= (isEmpty!22151 rules!3307) (is-Nil!37626 rules!3307))))

(assert (=> b!3581375 d!1056203))

(declare-fun d!1056205 () Bool)

(assert (=> d!1056205 (= (isEmpty!22150 suffix!1395) (is-Nil!37625 suffix!1395))))

(assert (=> b!3581364 d!1056205))

(declare-fun d!1056207 () Bool)

(declare-fun isEmpty!22154 (Option!7731) Bool)

(assert (=> d!1056207 (= (isDefined!5965 lt!1228633) (not (isEmpty!22154 lt!1228633)))))

(declare-fun bs!569890 () Bool)

(assert (= bs!569890 d!1056207))

(declare-fun m!4075221 () Bool)

(assert (=> bs!569890 m!4075221))

(assert (=> b!3581362 d!1056207))

(declare-fun bm!259317 () Bool)

(declare-fun call!259322 () Option!7731)

(declare-fun maxPrefixOneRule!1824 (LexerInterface!5132 Rule!10886 List!37749) Option!7731)

(assert (=> bm!259317 (= call!259322 (maxPrefixOneRule!1824 thiss!23823 (h!43046 rules!3307) lt!1228631))))

(declare-fun b!3581582 () Bool)

(declare-fun res!1445114 () Bool)

(declare-fun e!2216043 () Bool)

(assert (=> b!3581582 (=> (not res!1445114) (not e!2216043))))

(declare-fun lt!1228679 () Option!7731)

(assert (=> b!3581582 (= res!1445114 (= (list!13818 (charsOf!3557 (_1!21898 (get!12115 lt!1228679)))) (originalCharacters!6257 (_1!21898 (get!12115 lt!1228679)))))))

(declare-fun b!3581583 () Bool)

(declare-fun e!2216042 () Option!7731)

(assert (=> b!3581583 (= e!2216042 call!259322)))

(declare-fun d!1056209 () Bool)

(declare-fun e!2216041 () Bool)

(assert (=> d!1056209 e!2216041))

(declare-fun res!1445110 () Bool)

(assert (=> d!1056209 (=> res!1445110 e!2216041)))

(assert (=> d!1056209 (= res!1445110 (isEmpty!22154 lt!1228679))))

(assert (=> d!1056209 (= lt!1228679 e!2216042)))

(declare-fun c!620540 () Bool)

(assert (=> d!1056209 (= c!620540 (and (is-Cons!37626 rules!3307) (is-Nil!37626 (t!290319 rules!3307))))))

(declare-fun lt!1228680 () Unit!53628)

(declare-fun lt!1228681 () Unit!53628)

(assert (=> d!1056209 (= lt!1228680 lt!1228681)))

(declare-fun isPrefix!2906 (List!37749 List!37749) Bool)

(assert (=> d!1056209 (isPrefix!2906 lt!1228631 lt!1228631)))

(declare-fun lemmaIsPrefixRefl!1865 (List!37749 List!37749) Unit!53628)

(assert (=> d!1056209 (= lt!1228681 (lemmaIsPrefixRefl!1865 lt!1228631 lt!1228631))))

(declare-fun rulesValidInductive!1926 (LexerInterface!5132 List!37750) Bool)

(assert (=> d!1056209 (rulesValidInductive!1926 thiss!23823 rules!3307)))

(assert (=> d!1056209 (= (maxPrefix!2666 thiss!23823 rules!3307 lt!1228631) lt!1228679)))

(declare-fun b!3581584 () Bool)

(declare-fun res!1445115 () Bool)

(assert (=> b!3581584 (=> (not res!1445115) (not e!2216043))))

(declare-fun apply!9061 (TokenValueInjection!10974 BalanceConc!22496) TokenValue!5773)

(declare-fun seqFromList!4104 (List!37749) BalanceConc!22496)

(assert (=> b!3581584 (= res!1445115 (= (value!178437 (_1!21898 (get!12115 lt!1228679))) (apply!9061 (transformation!5543 (rule!8255 (_1!21898 (get!12115 lt!1228679)))) (seqFromList!4104 (originalCharacters!6257 (_1!21898 (get!12115 lt!1228679)))))))))

(declare-fun b!3581585 () Bool)

(declare-fun res!1445112 () Bool)

(assert (=> b!3581585 (=> (not res!1445112) (not e!2216043))))

(assert (=> b!3581585 (= res!1445112 (< (size!28681 (_2!21898 (get!12115 lt!1228679))) (size!28681 lt!1228631)))))

(declare-fun b!3581586 () Bool)

(assert (=> b!3581586 (= e!2216043 (contains!7147 rules!3307 (rule!8255 (_1!21898 (get!12115 lt!1228679)))))))

(declare-fun b!3581587 () Bool)

(declare-fun res!1445111 () Bool)

(assert (=> b!3581587 (=> (not res!1445111) (not e!2216043))))

(assert (=> b!3581587 (= res!1445111 (matchR!4871 (regex!5543 (rule!8255 (_1!21898 (get!12115 lt!1228679)))) (list!13818 (charsOf!3557 (_1!21898 (get!12115 lt!1228679))))))))

(declare-fun b!3581588 () Bool)

(declare-fun lt!1228683 () Option!7731)

(declare-fun lt!1228682 () Option!7731)

(assert (=> b!3581588 (= e!2216042 (ite (and (is-None!7730 lt!1228683) (is-None!7730 lt!1228682)) None!7730 (ite (is-None!7730 lt!1228682) lt!1228683 (ite (is-None!7730 lt!1228683) lt!1228682 (ite (>= (size!28679 (_1!21898 (v!37374 lt!1228683))) (size!28679 (_1!21898 (v!37374 lt!1228682)))) lt!1228683 lt!1228682)))))))

(assert (=> b!3581588 (= lt!1228683 call!259322)))

(assert (=> b!3581588 (= lt!1228682 (maxPrefix!2666 thiss!23823 (t!290319 rules!3307) lt!1228631))))

(declare-fun b!3581589 () Bool)

(declare-fun res!1445109 () Bool)

(assert (=> b!3581589 (=> (not res!1445109) (not e!2216043))))

(declare-fun ++!9355 (List!37749 List!37749) List!37749)

(assert (=> b!3581589 (= res!1445109 (= (++!9355 (list!13818 (charsOf!3557 (_1!21898 (get!12115 lt!1228679)))) (_2!21898 (get!12115 lt!1228679))) lt!1228631))))

(declare-fun b!3581590 () Bool)

(assert (=> b!3581590 (= e!2216041 e!2216043)))

(declare-fun res!1445113 () Bool)

(assert (=> b!3581590 (=> (not res!1445113) (not e!2216043))))

(assert (=> b!3581590 (= res!1445113 (isDefined!5965 lt!1228679))))

(assert (= (and d!1056209 c!620540) b!3581583))

(assert (= (and d!1056209 (not c!620540)) b!3581588))

(assert (= (or b!3581583 b!3581588) bm!259317))

(assert (= (and d!1056209 (not res!1445110)) b!3581590))

(assert (= (and b!3581590 res!1445113) b!3581582))

(assert (= (and b!3581582 res!1445114) b!3581585))

(assert (= (and b!3581585 res!1445112) b!3581589))

(assert (= (and b!3581589 res!1445109) b!3581584))

(assert (= (and b!3581584 res!1445115) b!3581587))

(assert (= (and b!3581587 res!1445111) b!3581586))

(declare-fun m!4075223 () Bool)

(assert (=> b!3581587 m!4075223))

(declare-fun m!4075225 () Bool)

(assert (=> b!3581587 m!4075225))

(assert (=> b!3581587 m!4075225))

(declare-fun m!4075227 () Bool)

(assert (=> b!3581587 m!4075227))

(assert (=> b!3581587 m!4075227))

(declare-fun m!4075229 () Bool)

(assert (=> b!3581587 m!4075229))

(assert (=> b!3581582 m!4075223))

(assert (=> b!3581582 m!4075225))

(assert (=> b!3581582 m!4075225))

(assert (=> b!3581582 m!4075227))

(assert (=> b!3581584 m!4075223))

(declare-fun m!4075231 () Bool)

(assert (=> b!3581584 m!4075231))

(assert (=> b!3581584 m!4075231))

(declare-fun m!4075233 () Bool)

(assert (=> b!3581584 m!4075233))

(assert (=> b!3581585 m!4075223))

(declare-fun m!4075235 () Bool)

(assert (=> b!3581585 m!4075235))

(declare-fun m!4075237 () Bool)

(assert (=> b!3581585 m!4075237))

(assert (=> b!3581589 m!4075223))

(assert (=> b!3581589 m!4075225))

(assert (=> b!3581589 m!4075225))

(assert (=> b!3581589 m!4075227))

(assert (=> b!3581589 m!4075227))

(declare-fun m!4075239 () Bool)

(assert (=> b!3581589 m!4075239))

(declare-fun m!4075241 () Bool)

(assert (=> bm!259317 m!4075241))

(assert (=> b!3581586 m!4075223))

(declare-fun m!4075243 () Bool)

(assert (=> b!3581586 m!4075243))

(declare-fun m!4075245 () Bool)

(assert (=> b!3581590 m!4075245))

(declare-fun m!4075247 () Bool)

(assert (=> d!1056209 m!4075247))

(declare-fun m!4075249 () Bool)

(assert (=> d!1056209 m!4075249))

(declare-fun m!4075251 () Bool)

(assert (=> d!1056209 m!4075251))

(declare-fun m!4075253 () Bool)

(assert (=> d!1056209 m!4075253))

(declare-fun m!4075255 () Bool)

(assert (=> b!3581588 m!4075255))

(assert (=> b!3581362 d!1056209))

(declare-fun d!1056211 () Bool)

(declare-fun list!13820 (Conc!11441) List!37749)

(assert (=> d!1056211 (= (list!13818 (charsOf!3557 token!511)) (list!13820 (c!620517 (charsOf!3557 token!511))))))

(declare-fun bs!569891 () Bool)

(assert (= bs!569891 d!1056211))

(declare-fun m!4075257 () Bool)

(assert (=> bs!569891 m!4075257))

(assert (=> b!3581362 d!1056211))

(declare-fun d!1056213 () Bool)

(declare-fun lt!1228691 () BalanceConc!22496)

(assert (=> d!1056213 (= (list!13818 lt!1228691) (originalCharacters!6257 token!511))))

(assert (=> d!1056213 (= lt!1228691 (dynLambda!16183 (toChars!7678 (transformation!5543 (rule!8255 token!511))) (value!178437 token!511)))))

(assert (=> d!1056213 (= (charsOf!3557 token!511) lt!1228691)))

(declare-fun b_lambda!105845 () Bool)

(assert (=> (not b_lambda!105845) (not d!1056213)))

(assert (=> d!1056213 t!290324))

(declare-fun b_and!258439 () Bool)

(assert (= b_and!258431 (and (=> t!290324 result!249114) b_and!258439)))

(assert (=> d!1056213 t!290326))

(declare-fun b_and!258441 () Bool)

(assert (= b_and!258433 (and (=> t!290326 result!249118) b_and!258441)))

(assert (=> d!1056213 t!290328))

(declare-fun b_and!258443 () Bool)

(assert (= b_and!258435 (and (=> t!290328 result!249120) b_and!258443)))

(assert (=> d!1056213 t!290330))

(declare-fun b_and!258445 () Bool)

(assert (= b_and!258437 (and (=> t!290330 result!249122) b_and!258445)))

(declare-fun m!4075259 () Bool)

(assert (=> d!1056213 m!4075259))

(assert (=> d!1056213 m!4075203))

(assert (=> b!3581362 d!1056213))

(declare-fun b!3581616 () Bool)

(declare-fun e!2216057 () List!37749)

(assert (=> b!3581616 (= e!2216057 Nil!37625)))

(declare-fun b!3581617 () Bool)

(declare-fun e!2216055 () List!37749)

(declare-fun e!2216058 () List!37749)

(assert (=> b!3581617 (= e!2216055 e!2216058)))

(declare-fun c!620552 () Bool)

(assert (=> b!3581617 (= c!620552 (is-Union!10302 (regex!5543 rule!403)))))

(declare-fun b!3581618 () Bool)

(declare-fun call!259333 () List!37749)

(assert (=> b!3581618 (= e!2216055 call!259333)))

(declare-fun b!3581619 () Bool)

(declare-fun e!2216056 () List!37749)

(assert (=> b!3581619 (= e!2216056 (Cons!37625 (c!620516 (regex!5543 rule!403)) Nil!37625))))

(declare-fun b!3581620 () Bool)

(declare-fun call!259335 () List!37749)

(assert (=> b!3581620 (= e!2216058 call!259335)))

(declare-fun bm!259327 () Bool)

(declare-fun call!259332 () List!37749)

(assert (=> bm!259327 (= call!259332 (usedCharacters!757 (ite c!620552 (regOne!21117 (regex!5543 rule!403)) (regTwo!21116 (regex!5543 rule!403)))))))

(declare-fun d!1056215 () Bool)

(declare-fun c!620553 () Bool)

(assert (=> d!1056215 (= c!620553 (or (is-EmptyExpr!10302 (regex!5543 rule!403)) (is-EmptyLang!10302 (regex!5543 rule!403))))))

(assert (=> d!1056215 (= (usedCharacters!757 (regex!5543 rule!403)) e!2216057)))

(declare-fun b!3581621 () Bool)

(assert (=> b!3581621 (= e!2216057 e!2216056)))

(declare-fun c!620551 () Bool)

(assert (=> b!3581621 (= c!620551 (is-ElementMatch!10302 (regex!5543 rule!403)))))

(declare-fun bm!259328 () Bool)

(declare-fun call!259334 () List!37749)

(assert (=> bm!259328 (= call!259335 (++!9355 (ite c!620552 call!259332 call!259334) (ite c!620552 call!259334 call!259332)))))

(declare-fun b!3581622 () Bool)

(assert (=> b!3581622 (= e!2216058 call!259335)))

(declare-fun bm!259329 () Bool)

(assert (=> bm!259329 (= call!259334 call!259333)))

(declare-fun bm!259330 () Bool)

(declare-fun c!620550 () Bool)

(assert (=> bm!259330 (= call!259333 (usedCharacters!757 (ite c!620550 (reg!10631 (regex!5543 rule!403)) (ite c!620552 (regTwo!21117 (regex!5543 rule!403)) (regOne!21116 (regex!5543 rule!403))))))))

(declare-fun b!3581623 () Bool)

(assert (=> b!3581623 (= c!620550 (is-Star!10302 (regex!5543 rule!403)))))

(assert (=> b!3581623 (= e!2216056 e!2216055)))

(assert (= (and d!1056215 c!620553) b!3581616))

(assert (= (and d!1056215 (not c!620553)) b!3581621))

(assert (= (and b!3581621 c!620551) b!3581619))

(assert (= (and b!3581621 (not c!620551)) b!3581623))

(assert (= (and b!3581623 c!620550) b!3581618))

(assert (= (and b!3581623 (not c!620550)) b!3581617))

(assert (= (and b!3581617 c!620552) b!3581622))

(assert (= (and b!3581617 (not c!620552)) b!3581620))

(assert (= (or b!3581622 b!3581620) bm!259327))

(assert (= (or b!3581622 b!3581620) bm!259329))

(assert (= (or b!3581622 b!3581620) bm!259328))

(assert (= (or b!3581618 bm!259329) bm!259330))

(declare-fun m!4075295 () Bool)

(assert (=> bm!259327 m!4075295))

(declare-fun m!4075297 () Bool)

(assert (=> bm!259328 m!4075297))

(declare-fun m!4075299 () Bool)

(assert (=> bm!259330 m!4075299))

(assert (=> b!3581372 d!1056215))

(declare-fun b!3581635 () Bool)

(declare-fun e!2216061 () Bool)

(declare-fun tp!1096426 () Bool)

(declare-fun tp!1096425 () Bool)

(assert (=> b!3581635 (= e!2216061 (and tp!1096426 tp!1096425))))

(assert (=> b!3581376 (= tp!1096356 e!2216061)))

(declare-fun b!3581634 () Bool)

(assert (=> b!3581634 (= e!2216061 tp_is_empty!17687)))

(declare-fun b!3581637 () Bool)

(declare-fun tp!1096424 () Bool)

(declare-fun tp!1096422 () Bool)

(assert (=> b!3581637 (= e!2216061 (and tp!1096424 tp!1096422))))

(declare-fun b!3581636 () Bool)

(declare-fun tp!1096423 () Bool)

(assert (=> b!3581636 (= e!2216061 tp!1096423)))

(assert (= (and b!3581376 (is-ElementMatch!10302 (regex!5543 (rule!8255 token!511)))) b!3581634))

(assert (= (and b!3581376 (is-Concat!16076 (regex!5543 (rule!8255 token!511)))) b!3581635))

(assert (= (and b!3581376 (is-Star!10302 (regex!5543 (rule!8255 token!511)))) b!3581636))

(assert (= (and b!3581376 (is-Union!10302 (regex!5543 (rule!8255 token!511)))) b!3581637))

(declare-fun b!3581642 () Bool)

(declare-fun e!2216064 () Bool)

(declare-fun tp!1096429 () Bool)

(assert (=> b!3581642 (= e!2216064 (and tp_is_empty!17687 tp!1096429))))

(assert (=> b!3581363 (= tp!1096361 e!2216064)))

(assert (= (and b!3581363 (is-Cons!37625 (t!290318 suffix!1395))) b!3581642))

(declare-fun b!3581643 () Bool)

(declare-fun e!2216065 () Bool)

(declare-fun tp!1096430 () Bool)

(assert (=> b!3581643 (= e!2216065 (and tp_is_empty!17687 tp!1096430))))

(assert (=> b!3581368 (= tp!1096351 e!2216065)))

(assert (= (and b!3581368 (is-Cons!37625 (originalCharacters!6257 token!511))) b!3581643))

(declare-fun b!3581645 () Bool)

(declare-fun e!2216066 () Bool)

(declare-fun tp!1096435 () Bool)

(declare-fun tp!1096434 () Bool)

(assert (=> b!3581645 (= e!2216066 (and tp!1096435 tp!1096434))))

(assert (=> b!3581378 (= tp!1096355 e!2216066)))

(declare-fun b!3581644 () Bool)

(assert (=> b!3581644 (= e!2216066 tp_is_empty!17687)))

(declare-fun b!3581647 () Bool)

(declare-fun tp!1096433 () Bool)

(declare-fun tp!1096431 () Bool)

(assert (=> b!3581647 (= e!2216066 (and tp!1096433 tp!1096431))))

(declare-fun b!3581646 () Bool)

(declare-fun tp!1096432 () Bool)

(assert (=> b!3581646 (= e!2216066 tp!1096432)))

(assert (= (and b!3581378 (is-ElementMatch!10302 (regex!5543 rule!403))) b!3581644))

(assert (= (and b!3581378 (is-Concat!16076 (regex!5543 rule!403))) b!3581645))

(assert (= (and b!3581378 (is-Star!10302 (regex!5543 rule!403))) b!3581646))

(assert (= (and b!3581378 (is-Union!10302 (regex!5543 rule!403))) b!3581647))

(declare-fun b!3581649 () Bool)

(declare-fun e!2216067 () Bool)

(declare-fun tp!1096440 () Bool)

(declare-fun tp!1096439 () Bool)

(assert (=> b!3581649 (= e!2216067 (and tp!1096440 tp!1096439))))

(assert (=> b!3581367 (= tp!1096352 e!2216067)))

(declare-fun b!3581648 () Bool)

(assert (=> b!3581648 (= e!2216067 tp_is_empty!17687)))

(declare-fun b!3581651 () Bool)

(declare-fun tp!1096438 () Bool)

(declare-fun tp!1096436 () Bool)

(assert (=> b!3581651 (= e!2216067 (and tp!1096438 tp!1096436))))

(declare-fun b!3581650 () Bool)

(declare-fun tp!1096437 () Bool)

(assert (=> b!3581650 (= e!2216067 tp!1096437)))

(assert (= (and b!3581367 (is-ElementMatch!10302 (regex!5543 (h!43046 rules!3307)))) b!3581648))

(assert (= (and b!3581367 (is-Concat!16076 (regex!5543 (h!43046 rules!3307)))) b!3581649))

(assert (= (and b!3581367 (is-Star!10302 (regex!5543 (h!43046 rules!3307)))) b!3581650))

(assert (= (and b!3581367 (is-Union!10302 (regex!5543 (h!43046 rules!3307)))) b!3581651))

(declare-fun b!3581653 () Bool)

(declare-fun e!2216068 () Bool)

(declare-fun tp!1096445 () Bool)

(declare-fun tp!1096444 () Bool)

(assert (=> b!3581653 (= e!2216068 (and tp!1096445 tp!1096444))))

(assert (=> b!3581377 (= tp!1096358 e!2216068)))

(declare-fun b!3581652 () Bool)

(assert (=> b!3581652 (= e!2216068 tp_is_empty!17687)))

(declare-fun b!3581655 () Bool)

(declare-fun tp!1096443 () Bool)

(declare-fun tp!1096441 () Bool)

(assert (=> b!3581655 (= e!2216068 (and tp!1096443 tp!1096441))))

(declare-fun b!3581654 () Bool)

(declare-fun tp!1096442 () Bool)

(assert (=> b!3581654 (= e!2216068 tp!1096442)))

(assert (= (and b!3581377 (is-ElementMatch!10302 (regex!5543 anOtherTypeRule!33))) b!3581652))

(assert (= (and b!3581377 (is-Concat!16076 (regex!5543 anOtherTypeRule!33))) b!3581653))

(assert (= (and b!3581377 (is-Star!10302 (regex!5543 anOtherTypeRule!33))) b!3581654))

(assert (= (and b!3581377 (is-Union!10302 (regex!5543 anOtherTypeRule!33))) b!3581655))

(declare-fun b!3581666 () Bool)

(declare-fun b_free!92033 () Bool)

(declare-fun b_next!92737 () Bool)

(assert (=> b!3581666 (= b_free!92033 (not b_next!92737))))

(declare-fun tp!1096454 () Bool)

(declare-fun b_and!258447 () Bool)

(assert (=> b!3581666 (= tp!1096454 b_and!258447)))

(declare-fun b_free!92035 () Bool)

(declare-fun b_next!92739 () Bool)

(assert (=> b!3581666 (= b_free!92035 (not b_next!92739))))

(declare-fun tb!204349 () Bool)

(declare-fun t!290332 () Bool)

(assert (=> (and b!3581666 (= (toChars!7678 (transformation!5543 (h!43046 (t!290319 rules!3307)))) (toChars!7678 (transformation!5543 (rule!8255 token!511)))) t!290332) tb!204349))

(declare-fun result!249130 () Bool)

(assert (= result!249130 result!249114))

(assert (=> b!3581534 t!290332))

(assert (=> d!1056213 t!290332))

(declare-fun tp!1096457 () Bool)

(declare-fun b_and!258449 () Bool)

(assert (=> b!3581666 (= tp!1096457 (and (=> t!290332 result!249130) b_and!258449))))

(declare-fun e!2216077 () Bool)

(assert (=> b!3581666 (= e!2216077 (and tp!1096454 tp!1096457))))

(declare-fun b!3581665 () Bool)

(declare-fun tp!1096455 () Bool)

(declare-fun e!2216079 () Bool)

(assert (=> b!3581665 (= e!2216079 (and tp!1096455 (inv!50928 (tag!6209 (h!43046 (t!290319 rules!3307)))) (inv!50931 (transformation!5543 (h!43046 (t!290319 rules!3307)))) e!2216077))))

(declare-fun b!3581664 () Bool)

(declare-fun e!2216080 () Bool)

(declare-fun tp!1096456 () Bool)

(assert (=> b!3581664 (= e!2216080 (and e!2216079 tp!1096456))))

(assert (=> b!3581361 (= tp!1096363 e!2216080)))

(assert (= b!3581665 b!3581666))

(assert (= b!3581664 b!3581665))

(assert (= (and b!3581361 (is-Cons!37626 (t!290319 rules!3307))) b!3581664))

(declare-fun m!4075303 () Bool)

(assert (=> b!3581665 m!4075303))

(declare-fun m!4075305 () Bool)

(assert (=> b!3581665 m!4075305))

(declare-fun b_lambda!105847 () Bool)

(assert (= b_lambda!105843 (or (and b!3581666 b_free!92035 (= (toChars!7678 (transformation!5543 (h!43046 (t!290319 rules!3307)))) (toChars!7678 (transformation!5543 (rule!8255 token!511))))) (and b!3581370 b_free!92003) (and b!3581360 b_free!92011 (= (toChars!7678 (transformation!5543 rule!403)) (toChars!7678 (transformation!5543 (rule!8255 token!511))))) (and b!3581374 b_free!92007 (= (toChars!7678 (transformation!5543 anOtherTypeRule!33)) (toChars!7678 (transformation!5543 (rule!8255 token!511))))) (and b!3581373 b_free!92015 (= (toChars!7678 (transformation!5543 (h!43046 rules!3307))) (toChars!7678 (transformation!5543 (rule!8255 token!511))))) b_lambda!105847)))

(declare-fun b_lambda!105849 () Bool)

(assert (= b_lambda!105845 (or (and b!3581666 b_free!92035 (= (toChars!7678 (transformation!5543 (h!43046 (t!290319 rules!3307)))) (toChars!7678 (transformation!5543 (rule!8255 token!511))))) (and b!3581370 b_free!92003) (and b!3581360 b_free!92011 (= (toChars!7678 (transformation!5543 rule!403)) (toChars!7678 (transformation!5543 (rule!8255 token!511))))) (and b!3581374 b_free!92007 (= (toChars!7678 (transformation!5543 anOtherTypeRule!33)) (toChars!7678 (transformation!5543 (rule!8255 token!511))))) (and b!3581373 b_free!92015 (= (toChars!7678 (transformation!5543 (h!43046 rules!3307))) (toChars!7678 (transformation!5543 (rule!8255 token!511))))) b_lambda!105849)))

(push 1)

(assert (not b!3581521))

(assert (not d!1056195))

(assert (not b!3581654))

(assert (not d!1056201))

(assert (not b!3581542))

(assert (not b!3581584))

(assert (not d!1056199))

(assert (not b!3581496))

(assert (not b!3581665))

(assert (not bm!259317))

(assert (not b_next!92739))

(assert (not b!3581646))

(assert b_and!258439)

(assert (not bm!259312))

(assert (not d!1056155))

(assert (not d!1056189))

(assert (not b!3581503))

(assert (not b!3581541))

(assert b_and!258411)

(assert b_and!258403)

(assert (not b_lambda!105847))

(assert (not b!3581635))

(assert (not b!3581534))

(assert (not b!3581588))

(assert (not b_next!92709))

(assert (not b!3581589))

(assert (not b_next!92713))

(assert (not b!3581655))

(assert b_and!258449)

(assert (not b!3581645))

(assert (not b!3581637))

(assert b_and!258407)

(assert (not b!3581535))

(assert (not b!3581491))

(assert (not bm!259327))

(assert (not b!3581650))

(assert (not b_next!92717))

(assert b_and!258445)

(assert tp_is_empty!17687)

(assert (not b!3581590))

(assert b_and!258443)

(assert (not b!3581651))

(assert (not d!1056173))

(assert (not b!3581525))

(assert b_and!258447)

(assert (not bm!259328))

(assert (not b!3581492))

(assert (not b!3581529))

(assert (not b_next!92719))

(assert (not b!3581643))

(assert (not b!3581587))

(assert (not b!3581649))

(assert (not b!3581509))

(assert (not b_next!92737))

(assert (not d!1056157))

(assert (not b!3581500))

(assert (not d!1056207))

(assert (not b!3581456))

(assert (not b!3581664))

(assert (not d!1056159))

(assert (not b_next!92715))

(assert (not b!3581653))

(assert (not b!3581642))

(assert (not b!3581636))

(assert (not d!1056213))

(assert (not d!1056211))

(assert (not tb!204341))

(assert (not b!3581647))

(assert (not b_next!92707))

(assert (not b!3581458))

(assert (not b!3581540))

(assert (not b!3581585))

(assert (not b!3581545))

(assert (not b!3581524))

(assert (not d!1056209))

(assert (not b_next!92711))

(assert (not b!3581582))

(assert (not bm!259330))

(assert (not b!3581494))

(assert (not d!1056177))

(assert (not d!1056185))

(assert (not d!1056191))

(assert (not b!3581586))

(assert (not b_next!92705))

(assert (not b!3581528))

(assert (not b_lambda!105849))

(assert b_and!258441)

(assert b_and!258399)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!92739))

(assert b_and!258439)

(assert (not b_next!92709))

(assert (not b_next!92713))

(assert (not b_next!92717))

(assert b_and!258447)

(assert (not b_next!92719))

(assert (not b_next!92737))

(assert (not b_next!92715))

(assert (not b_next!92707))

(assert (not b_next!92711))

(assert (not b_next!92705))

(assert b_and!258411)

(assert b_and!258403)

(assert b_and!258449)

(assert b_and!258407)

(assert b_and!258445)

(assert b_and!258443)

(assert b_and!258441)

(assert b_and!258399)

(check-sat)

(pop 1)

