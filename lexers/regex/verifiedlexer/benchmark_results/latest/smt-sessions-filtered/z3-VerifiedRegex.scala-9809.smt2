; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513480 () Bool)

(assert start!513480)

(declare-fun b!4901210 () Bool)

(declare-fun b_free!131703 () Bool)

(declare-fun b_next!132493 () Bool)

(assert (=> b!4901210 (= b_free!131703 (not b_next!132493))))

(declare-fun tp!1378949 () Bool)

(declare-fun b_and!346087 () Bool)

(assert (=> b!4901210 (= tp!1378949 b_and!346087)))

(declare-fun b_free!131705 () Bool)

(declare-fun b_next!132495 () Bool)

(assert (=> b!4901210 (= b_free!131705 (not b_next!132495))))

(declare-fun tp!1378950 () Bool)

(declare-fun b_and!346089 () Bool)

(assert (=> b!4901210 (= tp!1378950 b_and!346089)))

(declare-fun b!4901209 () Bool)

(declare-fun b_free!131707 () Bool)

(declare-fun b_next!132497 () Bool)

(assert (=> b!4901209 (= b_free!131707 (not b_next!132497))))

(declare-fun tp!1378948 () Bool)

(declare-fun b_and!346091 () Bool)

(assert (=> b!4901209 (= tp!1378948 b_and!346091)))

(declare-fun b_free!131709 () Bool)

(declare-fun b_next!132499 () Bool)

(assert (=> b!4901209 (= b_free!131709 (not b_next!132499))))

(declare-fun tp!1378947 () Bool)

(declare-fun b_and!346093 () Bool)

(assert (=> b!4901209 (= tp!1378947 b_and!346093)))

(declare-fun b!4901201 () Bool)

(declare-fun e!3063652 () Bool)

(declare-fun e!3063656 () Bool)

(assert (=> b!4901201 (= e!3063652 (not e!3063656))))

(declare-fun res!2093428 () Bool)

(assert (=> b!4901201 (=> res!2093428 e!3063656)))

(declare-datatypes ((C!26720 0))(
  ( (C!26721 (val!22694 Int)) )
))
(declare-datatypes ((List!56569 0))(
  ( (Nil!56445) (Cons!56445 (h!62893 C!26720) (t!366649 List!56569)) )
))
(declare-datatypes ((IArray!29569 0))(
  ( (IArray!29570 (innerList!14842 List!56569)) )
))
(declare-datatypes ((Conc!14754 0))(
  ( (Node!14754 (left!41017 Conc!14754) (right!41347 Conc!14754) (csize!29738 Int) (cheight!14965 Int)) (Leaf!24564 (xs!18070 IArray!29569) (csize!29739 Int)) (Empty!14754) )
))
(declare-datatypes ((BalanceConc!28938 0))(
  ( (BalanceConc!28939 (c!833079 Conc!14754)) )
))
(declare-datatypes ((List!56570 0))(
  ( (Nil!56446) (Cons!56446 (h!62894 (_ BitVec 16)) (t!366650 List!56570)) )
))
(declare-datatypes ((TokenValue!8496 0))(
  ( (FloatLiteralValue!16992 (text!59917 List!56570)) (TokenValueExt!8495 (__x!34285 Int)) (Broken!42480 (value!262423 List!56570)) (Object!8619) (End!8496) (Def!8496) (Underscore!8496) (Match!8496) (Else!8496) (Error!8496) (Case!8496) (If!8496) (Extends!8496) (Abstract!8496) (Class!8496) (Val!8496) (DelimiterValue!16992 (del!8556 List!56570)) (KeywordValue!8502 (value!262424 List!56570)) (CommentValue!16992 (value!262425 List!56570)) (WhitespaceValue!16992 (value!262426 List!56570)) (IndentationValue!8496 (value!262427 List!56570)) (String!63921) (Int32!8496) (Broken!42481 (value!262428 List!56570)) (Boolean!8497) (Unit!146550) (OperatorValue!8499 (op!8556 List!56570)) (IdentifierValue!16992 (value!262429 List!56570)) (IdentifierValue!16993 (value!262430 List!56570)) (WhitespaceValue!16993 (value!262431 List!56570)) (True!16992) (False!16992) (Broken!42482 (value!262432 List!56570)) (Broken!42483 (value!262433 List!56570)) (True!16993) (RightBrace!8496) (RightBracket!8496) (Colon!8496) (Null!8496) (Comma!8496) (LeftBracket!8496) (False!16993) (LeftBrace!8496) (ImaginaryLiteralValue!8496 (text!59918 List!56570)) (StringLiteralValue!25488 (value!262434 List!56570)) (EOFValue!8496 (value!262435 List!56570)) (IdentValue!8496 (value!262436 List!56570)) (DelimiterValue!16993 (value!262437 List!56570)) (DedentValue!8496 (value!262438 List!56570)) (NewLineValue!8496 (value!262439 List!56570)) (IntegerValue!25488 (value!262440 (_ BitVec 32)) (text!59919 List!56570)) (IntegerValue!25489 (value!262441 Int) (text!59920 List!56570)) (Times!8496) (Or!8496) (Equal!8496) (Minus!8496) (Broken!42484 (value!262442 List!56570)) (And!8496) (Div!8496) (LessEqual!8496) (Mod!8496) (Concat!21757) (Not!8496) (Plus!8496) (SpaceValue!8496 (value!262443 List!56570)) (IntegerValue!25490 (value!262444 Int) (text!59921 List!56570)) (StringLiteralValue!25489 (text!59922 List!56570)) (FloatLiteralValue!16993 (text!59923 List!56570)) (BytesLiteralValue!8496 (value!262445 List!56570)) (CommentValue!16993 (value!262446 List!56570)) (StringLiteralValue!25490 (value!262447 List!56570)) (ErrorTokenValue!8496 (msg!8557 List!56570)) )
))
(declare-datatypes ((Regex!13261 0))(
  ( (ElementMatch!13261 (c!833080 C!26720)) (Concat!21758 (regOne!27034 Regex!13261) (regTwo!27034 Regex!13261)) (EmptyExpr!13261) (Star!13261 (reg!13590 Regex!13261)) (EmptyLang!13261) (Union!13261 (regOne!27035 Regex!13261) (regTwo!27035 Regex!13261)) )
))
(declare-datatypes ((String!63922 0))(
  ( (String!63923 (value!262448 String)) )
))
(declare-datatypes ((TokenValueInjection!16300 0))(
  ( (TokenValueInjection!16301 (toValue!11097 Int) (toChars!10956 Int)) )
))
(declare-datatypes ((Rule!16172 0))(
  ( (Rule!16173 (regex!8186 Regex!13261) (tag!9050 String!63922) (isSeparator!8186 Bool) (transformation!8186 TokenValueInjection!16300)) )
))
(declare-datatypes ((List!56571 0))(
  ( (Nil!56447) (Cons!56447 (h!62895 Rule!16172) (t!366651 List!56571)) )
))
(declare-fun rulesArg!165 () List!56571)

(get-info :version)

(assert (=> b!4901201 (= res!2093428 (or (and ((_ is Cons!56447) rulesArg!165) ((_ is Nil!56447) (t!366651 rulesArg!165))) ((_ is Cons!56447) rulesArg!165)))))

(declare-fun lt!2009872 () List!56569)

(declare-fun isPrefix!4906 (List!56569 List!56569) Bool)

(assert (=> b!4901201 (isPrefix!4906 lt!2009872 lt!2009872)))

(declare-datatypes ((Unit!146551 0))(
  ( (Unit!146552) )
))
(declare-fun lt!2009871 () Unit!146551)

(declare-fun lemmaIsPrefixRefl!3303 (List!56569 List!56569) Unit!146551)

(assert (=> b!4901201 (= lt!2009871 (lemmaIsPrefixRefl!3303 lt!2009872 lt!2009872))))

(declare-fun input!1236 () BalanceConc!28938)

(declare-fun list!17756 (BalanceConc!28938) List!56569)

(assert (=> b!4901201 (= lt!2009872 (list!17756 input!1236))))

(declare-fun e!3063642 () Bool)

(declare-fun e!3063639 () Bool)

(declare-datatypes ((Token!14932 0))(
  ( (Token!14933 (value!262449 TokenValue!8496) (rule!11398 Rule!16172) (size!37178 Int) (originalCharacters!8497 List!56569)) )
))
(declare-datatypes ((tuple2!60524 0))(
  ( (tuple2!60525 (_1!33565 Token!14932) (_2!33565 BalanceConc!28938)) )
))
(declare-datatypes ((Option!14045 0))(
  ( (None!14044) (Some!14044 (v!50006 tuple2!60524)) )
))
(declare-fun err!4537 () Option!14045)

(declare-fun b!4901202 () Bool)

(declare-fun tp!1378954 () Bool)

(declare-fun inv!72763 (String!63922) Bool)

(declare-fun inv!72768 (TokenValueInjection!16300) Bool)

(assert (=> b!4901202 (= e!3063639 (and tp!1378954 (inv!72763 (tag!9050 (rule!11398 (_1!33565 (v!50006 err!4537))))) (inv!72768 (transformation!8186 (rule!11398 (_1!33565 (v!50006 err!4537))))) e!3063642))))

(declare-fun b!4901203 () Bool)

(declare-fun e!3063653 () Bool)

(assert (=> b!4901203 (= e!3063656 e!3063653)))

(declare-fun res!2093430 () Bool)

(assert (=> b!4901203 (=> (not res!2093430) (not e!3063653))))

(declare-fun lt!2009870 () Bool)

(declare-datatypes ((tuple2!60526 0))(
  ( (tuple2!60527 (_1!33566 Token!14932) (_2!33566 List!56569)) )
))
(declare-datatypes ((Option!14046 0))(
  ( (None!14045) (Some!14045 (v!50007 tuple2!60526)) )
))
(declare-fun lt!2009873 () Option!14046)

(declare-fun isDefined!11058 (Option!14046) Bool)

(assert (=> b!4901203 (= res!2093430 (= lt!2009870 (isDefined!11058 lt!2009873)))))

(declare-fun lt!2009869 () Option!14045)

(declare-fun isDefined!11059 (Option!14045) Bool)

(assert (=> b!4901203 (= lt!2009870 (isDefined!11059 lt!2009869))))

(declare-datatypes ((LexerInterface!7778 0))(
  ( (LexerInterfaceExt!7775 (__x!34286 Int)) (Lexer!7776) )
))
(declare-fun thiss!14805 () LexerInterface!7778)

(declare-fun maxPrefixZipper!683 (LexerInterface!7778 List!56571 List!56569) Option!14046)

(assert (=> b!4901203 (= lt!2009873 (maxPrefixZipper!683 thiss!14805 rulesArg!165 lt!2009872))))

(assert (=> b!4901203 (= lt!2009869 err!4537)))

(assert (=> b!4901203 true))

(declare-fun e!3063641 () Bool)

(assert (=> b!4901203 e!3063641))

(declare-fun e!3063645 () Bool)

(declare-fun tp!1378952 () Bool)

(declare-fun b!4901205 () Bool)

(declare-fun inv!21 (TokenValue!8496) Bool)

(assert (=> b!4901205 (= e!3063645 (and (inv!21 (value!262449 (_1!33565 (v!50006 err!4537)))) e!3063639 tp!1378952))))

(declare-fun b!4901206 () Bool)

(declare-fun e!3063654 () Bool)

(declare-fun lt!2009867 () tuple2!60524)

(declare-fun lt!2009865 () tuple2!60526)

(assert (=> b!4901206 (= e!3063654 (= (list!17756 (_2!33565 lt!2009867)) (_2!33566 lt!2009865)))))

(declare-fun b!4901207 () Bool)

(declare-fun e!3063647 () Bool)

(declare-fun e!3063651 () Bool)

(assert (=> b!4901207 (= e!3063647 e!3063651)))

(declare-fun res!2093424 () Bool)

(assert (=> b!4901207 (=> res!2093424 e!3063651)))

(declare-fun lt!2009866 () Bool)

(assert (=> b!4901207 (= res!2093424 lt!2009866)))

(declare-fun b!4901208 () Bool)

(declare-fun e!3063644 () Bool)

(assert (=> b!4901208 (= e!3063651 e!3063644)))

(declare-fun res!2093421 () Bool)

(assert (=> b!4901208 (=> (not res!2093421) (not e!3063644))))

(declare-fun lt!2009864 () tuple2!60524)

(declare-fun lt!2009868 () tuple2!60526)

(assert (=> b!4901208 (= res!2093421 (= (_1!33565 lt!2009864) (_1!33566 lt!2009868)))))

(declare-fun get!19504 (Option!14046) tuple2!60526)

(declare-fun maxPrefix!4613 (LexerInterface!7778 List!56571 List!56569) Option!14046)

(assert (=> b!4901208 (= lt!2009868 (get!19504 (maxPrefix!4613 thiss!14805 rulesArg!165 lt!2009872)))))

(declare-fun get!19505 (Option!14045) tuple2!60524)

(assert (=> b!4901208 (= lt!2009864 (get!19505 lt!2009869))))

(assert (=> b!4901209 (= e!3063642 (and tp!1378948 tp!1378947))))

(declare-fun e!3063648 () Bool)

(assert (=> b!4901210 (= e!3063648 (and tp!1378949 tp!1378950))))

(declare-fun b!4901211 () Bool)

(assert (=> b!4901211 (= e!3063653 e!3063647)))

(declare-fun res!2093425 () Bool)

(assert (=> b!4901211 (=> (not res!2093425) (not e!3063647))))

(declare-fun e!3063649 () Bool)

(assert (=> b!4901211 (= res!2093425 e!3063649)))

(declare-fun res!2093426 () Bool)

(assert (=> b!4901211 (=> res!2093426 e!3063649)))

(assert (=> b!4901211 (= res!2093426 lt!2009866)))

(assert (=> b!4901211 (= lt!2009866 (not lt!2009870))))

(declare-fun b!4901212 () Bool)

(assert (=> b!4901212 (= e!3063644 (= (list!17756 (_2!33565 lt!2009864)) (_2!33566 lt!2009868)))))

(declare-fun b!4901213 () Bool)

(assert (=> b!4901213 (= e!3063649 e!3063654)))

(declare-fun res!2093429 () Bool)

(assert (=> b!4901213 (=> (not res!2093429) (not e!3063654))))

(assert (=> b!4901213 (= res!2093429 (= (_1!33565 lt!2009867) (_1!33566 lt!2009865)))))

(assert (=> b!4901213 (= lt!2009865 (get!19504 lt!2009873))))

(assert (=> b!4901213 (= lt!2009867 (get!19505 lt!2009869))))

(declare-fun tp!1378951 () Bool)

(declare-fun b!4901214 () Bool)

(declare-fun e!3063637 () Bool)

(assert (=> b!4901214 (= e!3063637 (and tp!1378951 (inv!72763 (tag!9050 (h!62895 rulesArg!165))) (inv!72768 (transformation!8186 (h!62895 rulesArg!165))) e!3063648))))

(declare-fun b!4901215 () Bool)

(declare-fun e!3063643 () Bool)

(declare-fun tp!1378953 () Bool)

(assert (=> b!4901215 (= e!3063643 (and e!3063637 tp!1378953))))

(declare-fun b!4901216 () Bool)

(declare-fun e!3063650 () Bool)

(declare-fun tp!1378946 () Bool)

(declare-fun inv!72769 (Conc!14754) Bool)

(assert (=> b!4901216 (= e!3063650 (and (inv!72769 (c!833079 input!1236)) tp!1378946))))

(declare-fun e!3063638 () Bool)

(declare-fun b!4901217 () Bool)

(declare-fun inv!72770 (Token!14932) Bool)

(declare-fun inv!72771 (BalanceConc!28938) Bool)

(assert (=> b!4901217 (= e!3063641 (and (inv!72770 (_1!33565 (v!50006 err!4537))) e!3063645 (inv!72771 (_2!33565 (v!50006 err!4537))) e!3063638))))

(declare-fun b!4901204 () Bool)

(declare-fun res!2093423 () Bool)

(assert (=> b!4901204 (=> (not res!2093423) (not e!3063652))))

(declare-fun rulesValidInductive!3165 (LexerInterface!7778 List!56571) Bool)

(assert (=> b!4901204 (= res!2093423 (rulesValidInductive!3165 thiss!14805 rulesArg!165))))

(declare-fun res!2093422 () Bool)

(assert (=> start!513480 (=> (not res!2093422) (not e!3063652))))

(assert (=> start!513480 (= res!2093422 ((_ is Lexer!7776) thiss!14805))))

(assert (=> start!513480 e!3063652))

(assert (=> start!513480 true))

(assert (=> start!513480 e!3063643))

(assert (=> start!513480 (and (inv!72771 input!1236) e!3063650)))

(declare-fun b!4901218 () Bool)

(declare-fun tp!1378955 () Bool)

(assert (=> b!4901218 (= e!3063638 (and (inv!72769 (c!833079 (_2!33565 (v!50006 err!4537)))) tp!1378955))))

(declare-fun b!4901219 () Bool)

(declare-fun res!2093427 () Bool)

(assert (=> b!4901219 (=> (not res!2093427) (not e!3063652))))

(declare-fun isEmpty!30316 (List!56571) Bool)

(assert (=> b!4901219 (= res!2093427 (not (isEmpty!30316 rulesArg!165)))))

(assert (= (and start!513480 res!2093422) b!4901204))

(assert (= (and b!4901204 res!2093423) b!4901219))

(assert (= (and b!4901219 res!2093427) b!4901201))

(assert (= (and b!4901201 (not res!2093428)) b!4901203))

(assert (= b!4901202 b!4901209))

(assert (= b!4901205 b!4901202))

(assert (= b!4901217 b!4901205))

(assert (= b!4901217 b!4901218))

(assert (= (and b!4901203 ((_ is Some!14044) err!4537)) b!4901217))

(assert (= (and b!4901203 res!2093430) b!4901211))

(assert (= (and b!4901211 (not res!2093426)) b!4901213))

(assert (= (and b!4901213 res!2093429) b!4901206))

(assert (= (and b!4901211 res!2093425) b!4901207))

(assert (= (and b!4901207 (not res!2093424)) b!4901208))

(assert (= (and b!4901208 res!2093421) b!4901212))

(assert (= b!4901214 b!4901210))

(assert (= b!4901215 b!4901214))

(assert (= (and start!513480 ((_ is Cons!56447) rulesArg!165)) b!4901215))

(assert (= start!513480 b!4901216))

(declare-fun m!5909978 () Bool)

(assert (=> b!4901218 m!5909978))

(declare-fun m!5909980 () Bool)

(assert (=> b!4901205 m!5909980))

(declare-fun m!5909982 () Bool)

(assert (=> b!4901202 m!5909982))

(declare-fun m!5909984 () Bool)

(assert (=> b!4901202 m!5909984))

(declare-fun m!5909986 () Bool)

(assert (=> b!4901204 m!5909986))

(declare-fun m!5909988 () Bool)

(assert (=> b!4901206 m!5909988))

(declare-fun m!5909990 () Bool)

(assert (=> b!4901217 m!5909990))

(declare-fun m!5909992 () Bool)

(assert (=> b!4901217 m!5909992))

(declare-fun m!5909994 () Bool)

(assert (=> b!4901214 m!5909994))

(declare-fun m!5909996 () Bool)

(assert (=> b!4901214 m!5909996))

(declare-fun m!5909998 () Bool)

(assert (=> b!4901212 m!5909998))

(declare-fun m!5910000 () Bool)

(assert (=> b!4901208 m!5910000))

(assert (=> b!4901208 m!5910000))

(declare-fun m!5910002 () Bool)

(assert (=> b!4901208 m!5910002))

(declare-fun m!5910004 () Bool)

(assert (=> b!4901208 m!5910004))

(declare-fun m!5910006 () Bool)

(assert (=> b!4901201 m!5910006))

(declare-fun m!5910008 () Bool)

(assert (=> b!4901201 m!5910008))

(declare-fun m!5910010 () Bool)

(assert (=> b!4901201 m!5910010))

(declare-fun m!5910012 () Bool)

(assert (=> b!4901213 m!5910012))

(assert (=> b!4901213 m!5910004))

(declare-fun m!5910014 () Bool)

(assert (=> b!4901219 m!5910014))

(declare-fun m!5910016 () Bool)

(assert (=> start!513480 m!5910016))

(declare-fun m!5910018 () Bool)

(assert (=> b!4901203 m!5910018))

(declare-fun m!5910020 () Bool)

(assert (=> b!4901203 m!5910020))

(declare-fun m!5910022 () Bool)

(assert (=> b!4901203 m!5910022))

(declare-fun m!5910024 () Bool)

(assert (=> b!4901216 m!5910024))

(check-sat (not start!513480) (not b_next!132493) (not b_next!132495) (not b_next!132499) (not b!4901218) (not b!4901215) (not b!4901202) b_and!346089 (not b!4901213) (not b!4901205) (not b!4901203) b_and!346091 (not b!4901219) (not b!4901217) b_and!346093 (not b!4901206) (not b!4901216) (not b_next!132497) (not b!4901201) (not b!4901208) (not b!4901212) b_and!346087 (not b!4901204) (not b!4901214))
(check-sat (not b_next!132493) (not b_next!132497) (not b_next!132495) (not b_next!132499) b_and!346087 b_and!346089 b_and!346091 b_and!346093)
(get-model)

(declare-fun d!1575462 () Bool)

(assert (=> d!1575462 (= (inv!72763 (tag!9050 (h!62895 rulesArg!165))) (= (mod (str.len (value!262448 (tag!9050 (h!62895 rulesArg!165)))) 2) 0))))

(assert (=> b!4901214 d!1575462))

(declare-fun d!1575464 () Bool)

(declare-fun res!2093449 () Bool)

(declare-fun e!3063664 () Bool)

(assert (=> d!1575464 (=> (not res!2093449) (not e!3063664))))

(declare-fun semiInverseModEq!3597 (Int Int) Bool)

(assert (=> d!1575464 (= res!2093449 (semiInverseModEq!3597 (toChars!10956 (transformation!8186 (h!62895 rulesArg!165))) (toValue!11097 (transformation!8186 (h!62895 rulesArg!165)))))))

(assert (=> d!1575464 (= (inv!72768 (transformation!8186 (h!62895 rulesArg!165))) e!3063664)))

(declare-fun b!4901232 () Bool)

(declare-fun equivClasses!3476 (Int Int) Bool)

(assert (=> b!4901232 (= e!3063664 (equivClasses!3476 (toChars!10956 (transformation!8186 (h!62895 rulesArg!165))) (toValue!11097 (transformation!8186 (h!62895 rulesArg!165)))))))

(assert (= (and d!1575464 res!2093449) b!4901232))

(declare-fun m!5910030 () Bool)

(assert (=> d!1575464 m!5910030))

(declare-fun m!5910032 () Bool)

(assert (=> b!4901232 m!5910032))

(assert (=> b!4901214 d!1575464))

(declare-fun d!1575466 () Bool)

(assert (=> d!1575466 true))

(declare-fun lt!2009914 () Bool)

(declare-fun lambda!244221 () Int)

(declare-fun forall!13101 (List!56571 Int) Bool)

(assert (=> d!1575466 (= lt!2009914 (forall!13101 rulesArg!165 lambda!244221))))

(declare-fun e!3063714 () Bool)

(assert (=> d!1575466 (= lt!2009914 e!3063714)))

(declare-fun res!2093501 () Bool)

(assert (=> d!1575466 (=> res!2093501 e!3063714)))

(assert (=> d!1575466 (= res!2093501 (not ((_ is Cons!56447) rulesArg!165)))))

(assert (=> d!1575466 (= (rulesValidInductive!3165 thiss!14805 rulesArg!165) lt!2009914)))

(declare-fun b!4901314 () Bool)

(declare-fun e!3063713 () Bool)

(assert (=> b!4901314 (= e!3063714 e!3063713)))

(declare-fun res!2093500 () Bool)

(assert (=> b!4901314 (=> (not res!2093500) (not e!3063713))))

(declare-fun ruleValid!3683 (LexerInterface!7778 Rule!16172) Bool)

(assert (=> b!4901314 (= res!2093500 (ruleValid!3683 thiss!14805 (h!62895 rulesArg!165)))))

(declare-fun b!4901315 () Bool)

(assert (=> b!4901315 (= e!3063713 (rulesValidInductive!3165 thiss!14805 (t!366651 rulesArg!165)))))

(assert (= (and d!1575466 (not res!2093501)) b!4901314))

(assert (= (and b!4901314 res!2093500) b!4901315))

(declare-fun m!5910108 () Bool)

(assert (=> d!1575466 m!5910108))

(declare-fun m!5910110 () Bool)

(assert (=> b!4901314 m!5910110))

(declare-fun m!5910112 () Bool)

(assert (=> b!4901315 m!5910112))

(assert (=> b!4901204 d!1575466))

(declare-fun d!1575498 () Bool)

(assert (=> d!1575498 (= (inv!72763 (tag!9050 (rule!11398 (_1!33565 (v!50006 err!4537))))) (= (mod (str.len (value!262448 (tag!9050 (rule!11398 (_1!33565 (v!50006 err!4537)))))) 2) 0))))

(assert (=> b!4901202 d!1575498))

(declare-fun d!1575500 () Bool)

(declare-fun res!2093502 () Bool)

(declare-fun e!3063715 () Bool)

(assert (=> d!1575500 (=> (not res!2093502) (not e!3063715))))

(assert (=> d!1575500 (= res!2093502 (semiInverseModEq!3597 (toChars!10956 (transformation!8186 (rule!11398 (_1!33565 (v!50006 err!4537))))) (toValue!11097 (transformation!8186 (rule!11398 (_1!33565 (v!50006 err!4537)))))))))

(assert (=> d!1575500 (= (inv!72768 (transformation!8186 (rule!11398 (_1!33565 (v!50006 err!4537))))) e!3063715)))

(declare-fun b!4901318 () Bool)

(assert (=> b!4901318 (= e!3063715 (equivClasses!3476 (toChars!10956 (transformation!8186 (rule!11398 (_1!33565 (v!50006 err!4537))))) (toValue!11097 (transformation!8186 (rule!11398 (_1!33565 (v!50006 err!4537)))))))))

(assert (= (and d!1575500 res!2093502) b!4901318))

(declare-fun m!5910114 () Bool)

(assert (=> d!1575500 m!5910114))

(declare-fun m!5910116 () Bool)

(assert (=> b!4901318 m!5910116))

(assert (=> b!4901202 d!1575500))

(declare-fun d!1575502 () Bool)

(assert (=> d!1575502 (= (get!19504 lt!2009873) (v!50007 lt!2009873))))

(assert (=> b!4901213 d!1575502))

(declare-fun d!1575504 () Bool)

(assert (=> d!1575504 (= (get!19505 lt!2009869) (v!50006 lt!2009869))))

(assert (=> b!4901213 d!1575504))

(declare-fun d!1575506 () Bool)

(declare-fun isEmpty!30317 (Option!14046) Bool)

(assert (=> d!1575506 (= (isDefined!11058 lt!2009873) (not (isEmpty!30317 lt!2009873)))))

(declare-fun bs!1176808 () Bool)

(assert (= bs!1176808 d!1575506))

(declare-fun m!5910118 () Bool)

(assert (=> bs!1176808 m!5910118))

(assert (=> b!4901203 d!1575506))

(declare-fun d!1575508 () Bool)

(declare-fun isEmpty!30318 (Option!14045) Bool)

(assert (=> d!1575508 (= (isDefined!11059 lt!2009869) (not (isEmpty!30318 lt!2009869)))))

(declare-fun bs!1176809 () Bool)

(assert (= bs!1176809 d!1575508))

(declare-fun m!5910120 () Bool)

(assert (=> bs!1176809 m!5910120))

(assert (=> b!4901203 d!1575508))

(declare-fun d!1575510 () Bool)

(declare-fun lt!2009929 () Option!14046)

(assert (=> d!1575510 (= lt!2009929 (maxPrefix!4613 thiss!14805 rulesArg!165 lt!2009872))))

(declare-fun e!3063718 () Option!14046)

(assert (=> d!1575510 (= lt!2009929 e!3063718)))

(declare-fun c!833098 () Bool)

(assert (=> d!1575510 (= c!833098 (and ((_ is Cons!56447) rulesArg!165) ((_ is Nil!56447) (t!366651 rulesArg!165))))))

(declare-fun lt!2009928 () Unit!146551)

(declare-fun lt!2009926 () Unit!146551)

(assert (=> d!1575510 (= lt!2009928 lt!2009926)))

(assert (=> d!1575510 (isPrefix!4906 lt!2009872 lt!2009872)))

(assert (=> d!1575510 (= lt!2009926 (lemmaIsPrefixRefl!3303 lt!2009872 lt!2009872))))

(assert (=> d!1575510 (rulesValidInductive!3165 thiss!14805 rulesArg!165)))

(assert (=> d!1575510 (= (maxPrefixZipper!683 thiss!14805 rulesArg!165 lt!2009872) lt!2009929)))

(declare-fun bm!340050 () Bool)

(declare-fun call!340055 () Option!14046)

(declare-fun maxPrefixOneRuleZipper!267 (LexerInterface!7778 Rule!16172 List!56569) Option!14046)

(assert (=> bm!340050 (= call!340055 (maxPrefixOneRuleZipper!267 thiss!14805 (h!62895 rulesArg!165) lt!2009872))))

(declare-fun b!4901323 () Bool)

(assert (=> b!4901323 (= e!3063718 call!340055)))

(declare-fun b!4901324 () Bool)

(declare-fun lt!2009927 () Option!14046)

(declare-fun lt!2009925 () Option!14046)

(assert (=> b!4901324 (= e!3063718 (ite (and ((_ is None!14045) lt!2009927) ((_ is None!14045) lt!2009925)) None!14045 (ite ((_ is None!14045) lt!2009925) lt!2009927 (ite ((_ is None!14045) lt!2009927) lt!2009925 (ite (>= (size!37178 (_1!33566 (v!50007 lt!2009927))) (size!37178 (_1!33566 (v!50007 lt!2009925)))) lt!2009927 lt!2009925)))))))

(assert (=> b!4901324 (= lt!2009927 call!340055)))

(assert (=> b!4901324 (= lt!2009925 (maxPrefixZipper!683 thiss!14805 (t!366651 rulesArg!165) lt!2009872))))

(assert (= (and d!1575510 c!833098) b!4901323))

(assert (= (and d!1575510 (not c!833098)) b!4901324))

(assert (= (or b!4901323 b!4901324) bm!340050))

(assert (=> d!1575510 m!5910000))

(assert (=> d!1575510 m!5910006))

(assert (=> d!1575510 m!5910008))

(assert (=> d!1575510 m!5909986))

(declare-fun m!5910122 () Bool)

(assert (=> bm!340050 m!5910122))

(declare-fun m!5910124 () Bool)

(assert (=> b!4901324 m!5910124))

(assert (=> b!4901203 d!1575510))

(declare-fun b!4901334 () Bool)

(declare-fun res!2093514 () Bool)

(declare-fun e!3063727 () Bool)

(assert (=> b!4901334 (=> (not res!2093514) (not e!3063727))))

(declare-fun head!10466 (List!56569) C!26720)

(assert (=> b!4901334 (= res!2093514 (= (head!10466 lt!2009872) (head!10466 lt!2009872)))))

(declare-fun b!4901336 () Bool)

(declare-fun e!3063725 () Bool)

(declare-fun size!37179 (List!56569) Int)

(assert (=> b!4901336 (= e!3063725 (>= (size!37179 lt!2009872) (size!37179 lt!2009872)))))

(declare-fun d!1575512 () Bool)

(assert (=> d!1575512 e!3063725))

(declare-fun res!2093512 () Bool)

(assert (=> d!1575512 (=> res!2093512 e!3063725)))

(declare-fun lt!2009932 () Bool)

(assert (=> d!1575512 (= res!2093512 (not lt!2009932))))

(declare-fun e!3063726 () Bool)

(assert (=> d!1575512 (= lt!2009932 e!3063726)))

(declare-fun res!2093511 () Bool)

(assert (=> d!1575512 (=> res!2093511 e!3063726)))

(assert (=> d!1575512 (= res!2093511 ((_ is Nil!56445) lt!2009872))))

(assert (=> d!1575512 (= (isPrefix!4906 lt!2009872 lt!2009872) lt!2009932)))

(declare-fun b!4901335 () Bool)

(declare-fun tail!9612 (List!56569) List!56569)

(assert (=> b!4901335 (= e!3063727 (isPrefix!4906 (tail!9612 lt!2009872) (tail!9612 lt!2009872)))))

(declare-fun b!4901333 () Bool)

(assert (=> b!4901333 (= e!3063726 e!3063727)))

(declare-fun res!2093513 () Bool)

(assert (=> b!4901333 (=> (not res!2093513) (not e!3063727))))

(assert (=> b!4901333 (= res!2093513 (not ((_ is Nil!56445) lt!2009872)))))

(assert (= (and d!1575512 (not res!2093511)) b!4901333))

(assert (= (and b!4901333 res!2093513) b!4901334))

(assert (= (and b!4901334 res!2093514) b!4901335))

(assert (= (and d!1575512 (not res!2093512)) b!4901336))

(declare-fun m!5910126 () Bool)

(assert (=> b!4901334 m!5910126))

(assert (=> b!4901334 m!5910126))

(declare-fun m!5910128 () Bool)

(assert (=> b!4901336 m!5910128))

(assert (=> b!4901336 m!5910128))

(declare-fun m!5910130 () Bool)

(assert (=> b!4901335 m!5910130))

(assert (=> b!4901335 m!5910130))

(assert (=> b!4901335 m!5910130))

(assert (=> b!4901335 m!5910130))

(declare-fun m!5910132 () Bool)

(assert (=> b!4901335 m!5910132))

(assert (=> b!4901201 d!1575512))

(declare-fun d!1575514 () Bool)

(assert (=> d!1575514 (isPrefix!4906 lt!2009872 lt!2009872)))

(declare-fun lt!2009935 () Unit!146551)

(declare-fun choose!35794 (List!56569 List!56569) Unit!146551)

(assert (=> d!1575514 (= lt!2009935 (choose!35794 lt!2009872 lt!2009872))))

(assert (=> d!1575514 (= (lemmaIsPrefixRefl!3303 lt!2009872 lt!2009872) lt!2009935)))

(declare-fun bs!1176810 () Bool)

(assert (= bs!1176810 d!1575514))

(assert (=> bs!1176810 m!5910006))

(declare-fun m!5910134 () Bool)

(assert (=> bs!1176810 m!5910134))

(assert (=> b!4901201 d!1575514))

(declare-fun d!1575516 () Bool)

(declare-fun list!17758 (Conc!14754) List!56569)

(assert (=> d!1575516 (= (list!17756 input!1236) (list!17758 (c!833079 input!1236)))))

(declare-fun bs!1176811 () Bool)

(assert (= bs!1176811 d!1575516))

(declare-fun m!5910136 () Bool)

(assert (=> bs!1176811 m!5910136))

(assert (=> b!4901201 d!1575516))

(declare-fun d!1575518 () Bool)

(assert (=> d!1575518 (= (list!17756 (_2!33565 lt!2009864)) (list!17758 (c!833079 (_2!33565 lt!2009864))))))

(declare-fun bs!1176812 () Bool)

(assert (= bs!1176812 d!1575518))

(declare-fun m!5910138 () Bool)

(assert (=> bs!1176812 m!5910138))

(assert (=> b!4901212 d!1575518))

(declare-fun d!1575520 () Bool)

(declare-fun isBalanced!4024 (Conc!14754) Bool)

(assert (=> d!1575520 (= (inv!72771 input!1236) (isBalanced!4024 (c!833079 input!1236)))))

(declare-fun bs!1176813 () Bool)

(assert (= bs!1176813 d!1575520))

(declare-fun m!5910140 () Bool)

(assert (=> bs!1176813 m!5910140))

(assert (=> start!513480 d!1575520))

(declare-fun d!1575522 () Bool)

(declare-fun c!833101 () Bool)

(assert (=> d!1575522 (= c!833101 ((_ is Node!14754) (c!833079 (_2!33565 (v!50006 err!4537)))))))

(declare-fun e!3063732 () Bool)

(assert (=> d!1575522 (= (inv!72769 (c!833079 (_2!33565 (v!50006 err!4537)))) e!3063732)))

(declare-fun b!4901343 () Bool)

(declare-fun inv!72772 (Conc!14754) Bool)

(assert (=> b!4901343 (= e!3063732 (inv!72772 (c!833079 (_2!33565 (v!50006 err!4537)))))))

(declare-fun b!4901344 () Bool)

(declare-fun e!3063733 () Bool)

(assert (=> b!4901344 (= e!3063732 e!3063733)))

(declare-fun res!2093517 () Bool)

(assert (=> b!4901344 (= res!2093517 (not ((_ is Leaf!24564) (c!833079 (_2!33565 (v!50006 err!4537))))))))

(assert (=> b!4901344 (=> res!2093517 e!3063733)))

(declare-fun b!4901345 () Bool)

(declare-fun inv!72773 (Conc!14754) Bool)

(assert (=> b!4901345 (= e!3063733 (inv!72773 (c!833079 (_2!33565 (v!50006 err!4537)))))))

(assert (= (and d!1575522 c!833101) b!4901343))

(assert (= (and d!1575522 (not c!833101)) b!4901344))

(assert (= (and b!4901344 (not res!2093517)) b!4901345))

(declare-fun m!5910142 () Bool)

(assert (=> b!4901343 m!5910142))

(declare-fun m!5910144 () Bool)

(assert (=> b!4901345 m!5910144))

(assert (=> b!4901218 d!1575522))

(declare-fun d!1575524 () Bool)

(assert (=> d!1575524 (= (get!19504 (maxPrefix!4613 thiss!14805 rulesArg!165 lt!2009872)) (v!50007 (maxPrefix!4613 thiss!14805 rulesArg!165 lt!2009872)))))

(assert (=> b!4901208 d!1575524))

(declare-fun b!4901364 () Bool)

(declare-fun res!2093534 () Bool)

(declare-fun e!3063740 () Bool)

(assert (=> b!4901364 (=> (not res!2093534) (not e!3063740))))

(declare-fun lt!2009949 () Option!14046)

(declare-fun charsOf!5383 (Token!14932) BalanceConc!28938)

(assert (=> b!4901364 (= res!2093534 (= (list!17756 (charsOf!5383 (_1!33566 (get!19504 lt!2009949)))) (originalCharacters!8497 (_1!33566 (get!19504 lt!2009949)))))))

(declare-fun b!4901365 () Bool)

(declare-fun res!2093536 () Bool)

(assert (=> b!4901365 (=> (not res!2093536) (not e!3063740))))

(declare-fun ++!12252 (List!56569 List!56569) List!56569)

(assert (=> b!4901365 (= res!2093536 (= (++!12252 (list!17756 (charsOf!5383 (_1!33566 (get!19504 lt!2009949)))) (_2!33566 (get!19504 lt!2009949))) lt!2009872))))

(declare-fun b!4901366 () Bool)

(declare-fun e!3063741 () Option!14046)

(declare-fun lt!2009948 () Option!14046)

(declare-fun lt!2009946 () Option!14046)

(assert (=> b!4901366 (= e!3063741 (ite (and ((_ is None!14045) lt!2009948) ((_ is None!14045) lt!2009946)) None!14045 (ite ((_ is None!14045) lt!2009946) lt!2009948 (ite ((_ is None!14045) lt!2009948) lt!2009946 (ite (>= (size!37178 (_1!33566 (v!50007 lt!2009948))) (size!37178 (_1!33566 (v!50007 lt!2009946)))) lt!2009948 lt!2009946)))))))

(declare-fun call!340058 () Option!14046)

(assert (=> b!4901366 (= lt!2009948 call!340058)))

(assert (=> b!4901366 (= lt!2009946 (maxPrefix!4613 thiss!14805 (t!366651 rulesArg!165) lt!2009872))))

(declare-fun b!4901367 () Bool)

(declare-fun e!3063742 () Bool)

(assert (=> b!4901367 (= e!3063742 e!3063740)))

(declare-fun res!2093532 () Bool)

(assert (=> b!4901367 (=> (not res!2093532) (not e!3063740))))

(assert (=> b!4901367 (= res!2093532 (isDefined!11058 lt!2009949))))

(declare-fun d!1575526 () Bool)

(assert (=> d!1575526 e!3063742))

(declare-fun res!2093535 () Bool)

(assert (=> d!1575526 (=> res!2093535 e!3063742)))

(assert (=> d!1575526 (= res!2093535 (isEmpty!30317 lt!2009949))))

(assert (=> d!1575526 (= lt!2009949 e!3063741)))

(declare-fun c!833104 () Bool)

(assert (=> d!1575526 (= c!833104 (and ((_ is Cons!56447) rulesArg!165) ((_ is Nil!56447) (t!366651 rulesArg!165))))))

(declare-fun lt!2009950 () Unit!146551)

(declare-fun lt!2009947 () Unit!146551)

(assert (=> d!1575526 (= lt!2009950 lt!2009947)))

(assert (=> d!1575526 (isPrefix!4906 lt!2009872 lt!2009872)))

(assert (=> d!1575526 (= lt!2009947 (lemmaIsPrefixRefl!3303 lt!2009872 lt!2009872))))

(assert (=> d!1575526 (rulesValidInductive!3165 thiss!14805 rulesArg!165)))

(assert (=> d!1575526 (= (maxPrefix!4613 thiss!14805 rulesArg!165 lt!2009872) lt!2009949)))

(declare-fun b!4901368 () Bool)

(declare-fun res!2093533 () Bool)

(assert (=> b!4901368 (=> (not res!2093533) (not e!3063740))))

(declare-fun apply!13549 (TokenValueInjection!16300 BalanceConc!28938) TokenValue!8496)

(declare-fun seqFromList!5945 (List!56569) BalanceConc!28938)

(assert (=> b!4901368 (= res!2093533 (= (value!262449 (_1!33566 (get!19504 lt!2009949))) (apply!13549 (transformation!8186 (rule!11398 (_1!33566 (get!19504 lt!2009949)))) (seqFromList!5945 (originalCharacters!8497 (_1!33566 (get!19504 lt!2009949)))))))))

(declare-fun bm!340053 () Bool)

(declare-fun maxPrefixOneRule!3538 (LexerInterface!7778 Rule!16172 List!56569) Option!14046)

(assert (=> bm!340053 (= call!340058 (maxPrefixOneRule!3538 thiss!14805 (h!62895 rulesArg!165) lt!2009872))))

(declare-fun b!4901369 () Bool)

(assert (=> b!4901369 (= e!3063741 call!340058)))

(declare-fun b!4901370 () Bool)

(declare-fun res!2093537 () Bool)

(assert (=> b!4901370 (=> (not res!2093537) (not e!3063740))))

(assert (=> b!4901370 (= res!2093537 (< (size!37179 (_2!33566 (get!19504 lt!2009949))) (size!37179 lt!2009872)))))

(declare-fun b!4901371 () Bool)

(declare-fun res!2093538 () Bool)

(assert (=> b!4901371 (=> (not res!2093538) (not e!3063740))))

(declare-fun matchR!6539 (Regex!13261 List!56569) Bool)

(assert (=> b!4901371 (= res!2093538 (matchR!6539 (regex!8186 (rule!11398 (_1!33566 (get!19504 lt!2009949)))) (list!17756 (charsOf!5383 (_1!33566 (get!19504 lt!2009949))))))))

(declare-fun b!4901372 () Bool)

(declare-fun contains!19446 (List!56571 Rule!16172) Bool)

(assert (=> b!4901372 (= e!3063740 (contains!19446 rulesArg!165 (rule!11398 (_1!33566 (get!19504 lt!2009949)))))))

(assert (= (and d!1575526 c!833104) b!4901369))

(assert (= (and d!1575526 (not c!833104)) b!4901366))

(assert (= (or b!4901369 b!4901366) bm!340053))

(assert (= (and d!1575526 (not res!2093535)) b!4901367))

(assert (= (and b!4901367 res!2093532) b!4901364))

(assert (= (and b!4901364 res!2093534) b!4901370))

(assert (= (and b!4901370 res!2093537) b!4901365))

(assert (= (and b!4901365 res!2093536) b!4901368))

(assert (= (and b!4901368 res!2093533) b!4901371))

(assert (= (and b!4901371 res!2093538) b!4901372))

(declare-fun m!5910146 () Bool)

(assert (=> b!4901367 m!5910146))

(declare-fun m!5910148 () Bool)

(assert (=> b!4901371 m!5910148))

(declare-fun m!5910150 () Bool)

(assert (=> b!4901371 m!5910150))

(assert (=> b!4901371 m!5910150))

(declare-fun m!5910152 () Bool)

(assert (=> b!4901371 m!5910152))

(assert (=> b!4901371 m!5910152))

(declare-fun m!5910154 () Bool)

(assert (=> b!4901371 m!5910154))

(declare-fun m!5910156 () Bool)

(assert (=> bm!340053 m!5910156))

(assert (=> b!4901370 m!5910148))

(declare-fun m!5910158 () Bool)

(assert (=> b!4901370 m!5910158))

(assert (=> b!4901370 m!5910128))

(assert (=> b!4901372 m!5910148))

(declare-fun m!5910160 () Bool)

(assert (=> b!4901372 m!5910160))

(assert (=> b!4901364 m!5910148))

(assert (=> b!4901364 m!5910150))

(assert (=> b!4901364 m!5910150))

(assert (=> b!4901364 m!5910152))

(assert (=> b!4901368 m!5910148))

(declare-fun m!5910162 () Bool)

(assert (=> b!4901368 m!5910162))

(assert (=> b!4901368 m!5910162))

(declare-fun m!5910164 () Bool)

(assert (=> b!4901368 m!5910164))

(declare-fun m!5910166 () Bool)

(assert (=> d!1575526 m!5910166))

(assert (=> d!1575526 m!5910006))

(assert (=> d!1575526 m!5910008))

(assert (=> d!1575526 m!5909986))

(assert (=> b!4901365 m!5910148))

(assert (=> b!4901365 m!5910150))

(assert (=> b!4901365 m!5910150))

(assert (=> b!4901365 m!5910152))

(assert (=> b!4901365 m!5910152))

(declare-fun m!5910168 () Bool)

(assert (=> b!4901365 m!5910168))

(declare-fun m!5910170 () Bool)

(assert (=> b!4901366 m!5910170))

(assert (=> b!4901208 d!1575526))

(assert (=> b!4901208 d!1575504))

(declare-fun d!1575528 () Bool)

(assert (=> d!1575528 (= (isEmpty!30316 rulesArg!165) ((_ is Nil!56447) rulesArg!165))))

(assert (=> b!4901219 d!1575528))

(declare-fun d!1575530 () Bool)

(assert (=> d!1575530 (= (list!17756 (_2!33565 lt!2009867)) (list!17758 (c!833079 (_2!33565 lt!2009867))))))

(declare-fun bs!1176814 () Bool)

(assert (= bs!1176814 d!1575530))

(declare-fun m!5910172 () Bool)

(assert (=> bs!1176814 m!5910172))

(assert (=> b!4901206 d!1575530))

(declare-fun d!1575532 () Bool)

(declare-fun res!2093545 () Bool)

(declare-fun e!3063747 () Bool)

(assert (=> d!1575532 (=> (not res!2093545) (not e!3063747))))

(declare-fun isEmpty!30321 (List!56569) Bool)

(assert (=> d!1575532 (= res!2093545 (not (isEmpty!30321 (originalCharacters!8497 (_1!33565 (v!50006 err!4537))))))))

(assert (=> d!1575532 (= (inv!72770 (_1!33565 (v!50006 err!4537))) e!3063747)))

(declare-fun b!4901381 () Bool)

(declare-fun res!2093546 () Bool)

(assert (=> b!4901381 (=> (not res!2093546) (not e!3063747))))

(declare-fun dynLambda!22704 (Int TokenValue!8496) BalanceConc!28938)

(assert (=> b!4901381 (= res!2093546 (= (originalCharacters!8497 (_1!33565 (v!50006 err!4537))) (list!17756 (dynLambda!22704 (toChars!10956 (transformation!8186 (rule!11398 (_1!33565 (v!50006 err!4537))))) (value!262449 (_1!33565 (v!50006 err!4537)))))))))

(declare-fun b!4901382 () Bool)

(assert (=> b!4901382 (= e!3063747 (= (size!37178 (_1!33565 (v!50006 err!4537))) (size!37179 (originalCharacters!8497 (_1!33565 (v!50006 err!4537))))))))

(assert (= (and d!1575532 res!2093545) b!4901381))

(assert (= (and b!4901381 res!2093546) b!4901382))

(declare-fun b_lambda!195171 () Bool)

(assert (=> (not b_lambda!195171) (not b!4901381)))

(declare-fun t!366657 () Bool)

(declare-fun tb!259839 () Bool)

(assert (=> (and b!4901210 (= (toChars!10956 (transformation!8186 (h!62895 rulesArg!165))) (toChars!10956 (transformation!8186 (rule!11398 (_1!33565 (v!50006 err!4537)))))) t!366657) tb!259839))

(declare-fun b!4901387 () Bool)

(declare-fun e!3063750 () Bool)

(declare-fun tp!1378961 () Bool)

(assert (=> b!4901387 (= e!3063750 (and (inv!72769 (c!833079 (dynLambda!22704 (toChars!10956 (transformation!8186 (rule!11398 (_1!33565 (v!50006 err!4537))))) (value!262449 (_1!33565 (v!50006 err!4537)))))) tp!1378961))))

(declare-fun result!323512 () Bool)

(assert (=> tb!259839 (= result!323512 (and (inv!72771 (dynLambda!22704 (toChars!10956 (transformation!8186 (rule!11398 (_1!33565 (v!50006 err!4537))))) (value!262449 (_1!33565 (v!50006 err!4537))))) e!3063750))))

(assert (= tb!259839 b!4901387))

(declare-fun m!5910178 () Bool)

(assert (=> b!4901387 m!5910178))

(declare-fun m!5910180 () Bool)

(assert (=> tb!259839 m!5910180))

(assert (=> b!4901381 t!366657))

(declare-fun b_and!346099 () Bool)

(assert (= b_and!346089 (and (=> t!366657 result!323512) b_and!346099)))

(declare-fun t!366659 () Bool)

(declare-fun tb!259841 () Bool)

(assert (=> (and b!4901209 (= (toChars!10956 (transformation!8186 (rule!11398 (_1!33565 (v!50006 err!4537))))) (toChars!10956 (transformation!8186 (rule!11398 (_1!33565 (v!50006 err!4537)))))) t!366659) tb!259841))

(declare-fun result!323516 () Bool)

(assert (= result!323516 result!323512))

(assert (=> b!4901381 t!366659))

(declare-fun b_and!346101 () Bool)

(assert (= b_and!346093 (and (=> t!366659 result!323516) b_and!346101)))

(declare-fun m!5910182 () Bool)

(assert (=> d!1575532 m!5910182))

(declare-fun m!5910184 () Bool)

(assert (=> b!4901381 m!5910184))

(assert (=> b!4901381 m!5910184))

(declare-fun m!5910186 () Bool)

(assert (=> b!4901381 m!5910186))

(declare-fun m!5910188 () Bool)

(assert (=> b!4901382 m!5910188))

(assert (=> b!4901217 d!1575532))

(declare-fun d!1575534 () Bool)

(assert (=> d!1575534 (= (inv!72771 (_2!33565 (v!50006 err!4537))) (isBalanced!4024 (c!833079 (_2!33565 (v!50006 err!4537)))))))

(declare-fun bs!1176815 () Bool)

(assert (= bs!1176815 d!1575534))

(declare-fun m!5910190 () Bool)

(assert (=> bs!1176815 m!5910190))

(assert (=> b!4901217 d!1575534))

(declare-fun b!4901398 () Bool)

(declare-fun res!2093549 () Bool)

(declare-fun e!3063758 () Bool)

(assert (=> b!4901398 (=> res!2093549 e!3063758)))

(assert (=> b!4901398 (= res!2093549 (not ((_ is IntegerValue!25490) (value!262449 (_1!33565 (v!50006 err!4537))))))))

(declare-fun e!3063757 () Bool)

(assert (=> b!4901398 (= e!3063757 e!3063758)))

(declare-fun b!4901399 () Bool)

(declare-fun inv!17 (TokenValue!8496) Bool)

(assert (=> b!4901399 (= e!3063757 (inv!17 (value!262449 (_1!33565 (v!50006 err!4537)))))))

(declare-fun b!4901400 () Bool)

(declare-fun e!3063759 () Bool)

(assert (=> b!4901400 (= e!3063759 e!3063757)))

(declare-fun c!833109 () Bool)

(assert (=> b!4901400 (= c!833109 ((_ is IntegerValue!25489) (value!262449 (_1!33565 (v!50006 err!4537)))))))

(declare-fun d!1575536 () Bool)

(declare-fun c!833110 () Bool)

(assert (=> d!1575536 (= c!833110 ((_ is IntegerValue!25488) (value!262449 (_1!33565 (v!50006 err!4537)))))))

(assert (=> d!1575536 (= (inv!21 (value!262449 (_1!33565 (v!50006 err!4537)))) e!3063759)))

(declare-fun b!4901401 () Bool)

(declare-fun inv!16 (TokenValue!8496) Bool)

(assert (=> b!4901401 (= e!3063759 (inv!16 (value!262449 (_1!33565 (v!50006 err!4537)))))))

(declare-fun b!4901402 () Bool)

(declare-fun inv!15 (TokenValue!8496) Bool)

(assert (=> b!4901402 (= e!3063758 (inv!15 (value!262449 (_1!33565 (v!50006 err!4537)))))))

(assert (= (and d!1575536 c!833110) b!4901401))

(assert (= (and d!1575536 (not c!833110)) b!4901400))

(assert (= (and b!4901400 c!833109) b!4901399))

(assert (= (and b!4901400 (not c!833109)) b!4901398))

(assert (= (and b!4901398 (not res!2093549)) b!4901402))

(declare-fun m!5910192 () Bool)

(assert (=> b!4901399 m!5910192))

(declare-fun m!5910194 () Bool)

(assert (=> b!4901401 m!5910194))

(declare-fun m!5910196 () Bool)

(assert (=> b!4901402 m!5910196))

(assert (=> b!4901205 d!1575536))

(declare-fun d!1575538 () Bool)

(declare-fun c!833111 () Bool)

(assert (=> d!1575538 (= c!833111 ((_ is Node!14754) (c!833079 input!1236)))))

(declare-fun e!3063760 () Bool)

(assert (=> d!1575538 (= (inv!72769 (c!833079 input!1236)) e!3063760)))

(declare-fun b!4901403 () Bool)

(assert (=> b!4901403 (= e!3063760 (inv!72772 (c!833079 input!1236)))))

(declare-fun b!4901404 () Bool)

(declare-fun e!3063761 () Bool)

(assert (=> b!4901404 (= e!3063760 e!3063761)))

(declare-fun res!2093550 () Bool)

(assert (=> b!4901404 (= res!2093550 (not ((_ is Leaf!24564) (c!833079 input!1236))))))

(assert (=> b!4901404 (=> res!2093550 e!3063761)))

(declare-fun b!4901405 () Bool)

(assert (=> b!4901405 (= e!3063761 (inv!72773 (c!833079 input!1236)))))

(assert (= (and d!1575538 c!833111) b!4901403))

(assert (= (and d!1575538 (not c!833111)) b!4901404))

(assert (= (and b!4901404 (not res!2093550)) b!4901405))

(declare-fun m!5910198 () Bool)

(assert (=> b!4901403 m!5910198))

(declare-fun m!5910200 () Bool)

(assert (=> b!4901405 m!5910200))

(assert (=> b!4901216 d!1575538))

(declare-fun b!4901418 () Bool)

(declare-fun e!3063764 () Bool)

(declare-fun tp!1378975 () Bool)

(assert (=> b!4901418 (= e!3063764 tp!1378975)))

(assert (=> b!4901214 (= tp!1378951 e!3063764)))

(declare-fun b!4901416 () Bool)

(declare-fun tp_is_empty!35801 () Bool)

(assert (=> b!4901416 (= e!3063764 tp_is_empty!35801)))

(declare-fun b!4901419 () Bool)

(declare-fun tp!1378973 () Bool)

(declare-fun tp!1378974 () Bool)

(assert (=> b!4901419 (= e!3063764 (and tp!1378973 tp!1378974))))

(declare-fun b!4901417 () Bool)

(declare-fun tp!1378976 () Bool)

(declare-fun tp!1378972 () Bool)

(assert (=> b!4901417 (= e!3063764 (and tp!1378976 tp!1378972))))

(assert (= (and b!4901214 ((_ is ElementMatch!13261) (regex!8186 (h!62895 rulesArg!165)))) b!4901416))

(assert (= (and b!4901214 ((_ is Concat!21758) (regex!8186 (h!62895 rulesArg!165)))) b!4901417))

(assert (= (and b!4901214 ((_ is Star!13261) (regex!8186 (h!62895 rulesArg!165)))) b!4901418))

(assert (= (and b!4901214 ((_ is Union!13261) (regex!8186 (h!62895 rulesArg!165)))) b!4901419))

(declare-fun b!4901430 () Bool)

(declare-fun b_free!131711 () Bool)

(declare-fun b_next!132501 () Bool)

(assert (=> b!4901430 (= b_free!131711 (not b_next!132501))))

(declare-fun tp!1378986 () Bool)

(declare-fun b_and!346103 () Bool)

(assert (=> b!4901430 (= tp!1378986 b_and!346103)))

(declare-fun b_free!131713 () Bool)

(declare-fun b_next!132503 () Bool)

(assert (=> b!4901430 (= b_free!131713 (not b_next!132503))))

(declare-fun t!366661 () Bool)

(declare-fun tb!259843 () Bool)

(assert (=> (and b!4901430 (= (toChars!10956 (transformation!8186 (h!62895 (t!366651 rulesArg!165)))) (toChars!10956 (transformation!8186 (rule!11398 (_1!33565 (v!50006 err!4537)))))) t!366661) tb!259843))

(declare-fun result!323522 () Bool)

(assert (= result!323522 result!323512))

(assert (=> b!4901381 t!366661))

(declare-fun tp!1378985 () Bool)

(declare-fun b_and!346105 () Bool)

(assert (=> b!4901430 (= tp!1378985 (and (=> t!366661 result!323522) b_and!346105))))

(declare-fun e!3063774 () Bool)

(assert (=> b!4901430 (= e!3063774 (and tp!1378986 tp!1378985))))

(declare-fun b!4901429 () Bool)

(declare-fun e!3063775 () Bool)

(declare-fun tp!1378987 () Bool)

(assert (=> b!4901429 (= e!3063775 (and tp!1378987 (inv!72763 (tag!9050 (h!62895 (t!366651 rulesArg!165)))) (inv!72768 (transformation!8186 (h!62895 (t!366651 rulesArg!165)))) e!3063774))))

(declare-fun b!4901428 () Bool)

(declare-fun e!3063776 () Bool)

(declare-fun tp!1378988 () Bool)

(assert (=> b!4901428 (= e!3063776 (and e!3063775 tp!1378988))))

(assert (=> b!4901215 (= tp!1378953 e!3063776)))

(assert (= b!4901429 b!4901430))

(assert (= b!4901428 b!4901429))

(assert (= (and b!4901215 ((_ is Cons!56447) (t!366651 rulesArg!165))) b!4901428))

(declare-fun m!5910202 () Bool)

(assert (=> b!4901429 m!5910202))

(declare-fun m!5910204 () Bool)

(assert (=> b!4901429 m!5910204))

(declare-fun b!4901433 () Bool)

(declare-fun e!3063777 () Bool)

(declare-fun tp!1378992 () Bool)

(assert (=> b!4901433 (= e!3063777 tp!1378992)))

(assert (=> b!4901202 (= tp!1378954 e!3063777)))

(declare-fun b!4901431 () Bool)

(assert (=> b!4901431 (= e!3063777 tp_is_empty!35801)))

(declare-fun b!4901434 () Bool)

(declare-fun tp!1378990 () Bool)

(declare-fun tp!1378991 () Bool)

(assert (=> b!4901434 (= e!3063777 (and tp!1378990 tp!1378991))))

(declare-fun b!4901432 () Bool)

(declare-fun tp!1378993 () Bool)

(declare-fun tp!1378989 () Bool)

(assert (=> b!4901432 (= e!3063777 (and tp!1378993 tp!1378989))))

(assert (= (and b!4901202 ((_ is ElementMatch!13261) (regex!8186 (rule!11398 (_1!33565 (v!50006 err!4537)))))) b!4901431))

(assert (= (and b!4901202 ((_ is Concat!21758) (regex!8186 (rule!11398 (_1!33565 (v!50006 err!4537)))))) b!4901432))

(assert (= (and b!4901202 ((_ is Star!13261) (regex!8186 (rule!11398 (_1!33565 (v!50006 err!4537)))))) b!4901433))

(assert (= (and b!4901202 ((_ is Union!13261) (regex!8186 (rule!11398 (_1!33565 (v!50006 err!4537)))))) b!4901434))

(declare-fun tp!1379000 () Bool)

(declare-fun e!3063783 () Bool)

(declare-fun tp!1379001 () Bool)

(declare-fun b!4901443 () Bool)

(assert (=> b!4901443 (= e!3063783 (and (inv!72769 (left!41017 (c!833079 (_2!33565 (v!50006 err!4537))))) tp!1379001 (inv!72769 (right!41347 (c!833079 (_2!33565 (v!50006 err!4537))))) tp!1379000))))

(declare-fun b!4901445 () Bool)

(declare-fun e!3063782 () Bool)

(declare-fun tp!1379002 () Bool)

(assert (=> b!4901445 (= e!3063782 tp!1379002)))

(declare-fun b!4901444 () Bool)

(declare-fun inv!72774 (IArray!29569) Bool)

(assert (=> b!4901444 (= e!3063783 (and (inv!72774 (xs!18070 (c!833079 (_2!33565 (v!50006 err!4537))))) e!3063782))))

(assert (=> b!4901218 (= tp!1378955 (and (inv!72769 (c!833079 (_2!33565 (v!50006 err!4537)))) e!3063783))))

(assert (= (and b!4901218 ((_ is Node!14754) (c!833079 (_2!33565 (v!50006 err!4537))))) b!4901443))

(assert (= b!4901444 b!4901445))

(assert (= (and b!4901218 ((_ is Leaf!24564) (c!833079 (_2!33565 (v!50006 err!4537))))) b!4901444))

(declare-fun m!5910206 () Bool)

(assert (=> b!4901443 m!5910206))

(declare-fun m!5910208 () Bool)

(assert (=> b!4901443 m!5910208))

(declare-fun m!5910210 () Bool)

(assert (=> b!4901444 m!5910210))

(assert (=> b!4901218 m!5909978))

(declare-fun b!4901450 () Bool)

(declare-fun e!3063786 () Bool)

(declare-fun tp!1379005 () Bool)

(assert (=> b!4901450 (= e!3063786 (and tp_is_empty!35801 tp!1379005))))

(assert (=> b!4901205 (= tp!1378952 e!3063786)))

(assert (= (and b!4901205 ((_ is Cons!56445) (originalCharacters!8497 (_1!33565 (v!50006 err!4537))))) b!4901450))

(declare-fun e!3063788 () Bool)

(declare-fun b!4901451 () Bool)

(declare-fun tp!1379006 () Bool)

(declare-fun tp!1379007 () Bool)

(assert (=> b!4901451 (= e!3063788 (and (inv!72769 (left!41017 (c!833079 input!1236))) tp!1379007 (inv!72769 (right!41347 (c!833079 input!1236))) tp!1379006))))

(declare-fun b!4901453 () Bool)

(declare-fun e!3063787 () Bool)

(declare-fun tp!1379008 () Bool)

(assert (=> b!4901453 (= e!3063787 tp!1379008)))

(declare-fun b!4901452 () Bool)

(assert (=> b!4901452 (= e!3063788 (and (inv!72774 (xs!18070 (c!833079 input!1236))) e!3063787))))

(assert (=> b!4901216 (= tp!1378946 (and (inv!72769 (c!833079 input!1236)) e!3063788))))

(assert (= (and b!4901216 ((_ is Node!14754) (c!833079 input!1236))) b!4901451))

(assert (= b!4901452 b!4901453))

(assert (= (and b!4901216 ((_ is Leaf!24564) (c!833079 input!1236))) b!4901452))

(declare-fun m!5910212 () Bool)

(assert (=> b!4901451 m!5910212))

(declare-fun m!5910214 () Bool)

(assert (=> b!4901451 m!5910214))

(declare-fun m!5910216 () Bool)

(assert (=> b!4901452 m!5910216))

(assert (=> b!4901216 m!5910024))

(declare-fun b_lambda!195173 () Bool)

(assert (= b_lambda!195171 (or (and b!4901210 b_free!131705 (= (toChars!10956 (transformation!8186 (h!62895 rulesArg!165))) (toChars!10956 (transformation!8186 (rule!11398 (_1!33565 (v!50006 err!4537))))))) (and b!4901209 b_free!131709) (and b!4901430 b_free!131713 (= (toChars!10956 (transformation!8186 (h!62895 (t!366651 rulesArg!165)))) (toChars!10956 (transformation!8186 (rule!11398 (_1!33565 (v!50006 err!4537))))))) b_lambda!195173)))

(check-sat (not b_next!132499) (not d!1575518) (not b!4901403) b_and!346099 (not b!4901417) (not b!4901402) (not d!1575510) (not b!4901419) (not d!1575534) (not bm!340053) (not b_next!132493) (not d!1575520) (not d!1575526) (not b!4901444) (not d!1575532) (not b!4901335) (not b!4901364) (not b!4901452) (not d!1575530) (not b!4901445) (not b!4901232) (not b!4901216) (not b_next!132497) (not d!1575514) (not b_next!132495) (not b!4901399) (not d!1575466) (not b!4901387) (not b_lambda!195173) (not d!1575508) (not b!4901324) (not b!4901443) b_and!346101 (not b!4901429) (not b_next!132503) (not b!4901318) (not b!4901368) (not b!4901218) (not b!4901433) (not b!4901371) (not tb!259839) b_and!346087 (not b!4901334) (not b!4901401) (not d!1575516) b_and!346105 (not b!4901315) (not d!1575500) (not b!4901343) (not b!4901336) (not b!4901418) (not b!4901345) (not b!4901381) (not bm!340050) (not b!4901453) tp_is_empty!35801 (not b!4901314) b_and!346103 b_and!346091 (not b!4901367) (not b!4901405) (not b_next!132501) (not b!4901366) (not b!4901372) (not b!4901450) (not d!1575464) (not b!4901428) (not b!4901432) (not b!4901434) (not b!4901370) (not b!4901365) (not d!1575506) (not b!4901382) (not b!4901451))
(check-sat (not b_next!132493) (not b_next!132497) (not b_next!132495) b_and!346101 (not b_next!132499) (not b_next!132503) b_and!346087 b_and!346105 (not b_next!132501) b_and!346099 b_and!346103 b_and!346091)
