; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!108984 () Bool)

(assert start!108984)

(declare-fun b!1218367 () Bool)

(declare-fun b_free!29409 () Bool)

(declare-fun b_next!30113 () Bool)

(assert (=> b!1218367 (= b_free!29409 (not b_next!30113))))

(declare-fun tp!346265 () Bool)

(declare-fun b_and!82881 () Bool)

(assert (=> b!1218367 (= tp!346265 b_and!82881)))

(declare-fun b_free!29411 () Bool)

(declare-fun b_next!30115 () Bool)

(assert (=> b!1218367 (= b_free!29411 (not b_next!30115))))

(declare-fun tp!346262 () Bool)

(declare-fun b_and!82883 () Bool)

(assert (=> b!1218367 (= tp!346262 b_and!82883)))

(declare-fun b!1218377 () Bool)

(declare-fun b_free!29413 () Bool)

(declare-fun b_next!30117 () Bool)

(assert (=> b!1218377 (= b_free!29413 (not b_next!30117))))

(declare-fun tp!346261 () Bool)

(declare-fun b_and!82885 () Bool)

(assert (=> b!1218377 (= tp!346261 b_and!82885)))

(declare-fun b_free!29415 () Bool)

(declare-fun b_next!30119 () Bool)

(assert (=> b!1218377 (= b_free!29415 (not b_next!30119))))

(declare-fun tp!346259 () Bool)

(declare-fun b_and!82887 () Bool)

(assert (=> b!1218377 (= tp!346259 b_and!82887)))

(declare-fun b!1218364 () Bool)

(declare-fun res!547686 () Bool)

(declare-fun e!782086 () Bool)

(assert (=> b!1218364 (=> (not res!547686) (not e!782086))))

(declare-datatypes ((List!12524 0))(
  ( (Nil!12466) (Cons!12466 (h!17867 (_ BitVec 16)) (t!113380 List!12524)) )
))
(declare-datatypes ((TokenValue!2216 0))(
  ( (FloatLiteralValue!4432 (text!15957 List!12524)) (TokenValueExt!2215 (__x!8147 Int)) (Broken!11080 (value!69790 List!12524)) (Object!2273) (End!2216) (Def!2216) (Underscore!2216) (Match!2216) (Else!2216) (Error!2216) (Case!2216) (If!2216) (Extends!2216) (Abstract!2216) (Class!2216) (Val!2216) (DelimiterValue!4432 (del!2276 List!12524)) (KeywordValue!2222 (value!69791 List!12524)) (CommentValue!4432 (value!69792 List!12524)) (WhitespaceValue!4432 (value!69793 List!12524)) (IndentationValue!2216 (value!69794 List!12524)) (String!15213) (Int32!2216) (Broken!11081 (value!69795 List!12524)) (Boolean!2217) (Unit!18720) (OperatorValue!2219 (op!2276 List!12524)) (IdentifierValue!4432 (value!69796 List!12524)) (IdentifierValue!4433 (value!69797 List!12524)) (WhitespaceValue!4433 (value!69798 List!12524)) (True!4432) (False!4432) (Broken!11082 (value!69799 List!12524)) (Broken!11083 (value!69800 List!12524)) (True!4433) (RightBrace!2216) (RightBracket!2216) (Colon!2216) (Null!2216) (Comma!2216) (LeftBracket!2216) (False!4433) (LeftBrace!2216) (ImaginaryLiteralValue!2216 (text!15958 List!12524)) (StringLiteralValue!6648 (value!69801 List!12524)) (EOFValue!2216 (value!69802 List!12524)) (IdentValue!2216 (value!69803 List!12524)) (DelimiterValue!4433 (value!69804 List!12524)) (DedentValue!2216 (value!69805 List!12524)) (NewLineValue!2216 (value!69806 List!12524)) (IntegerValue!6648 (value!69807 (_ BitVec 32)) (text!15959 List!12524)) (IntegerValue!6649 (value!69808 Int) (text!15960 List!12524)) (Times!2216) (Or!2216) (Equal!2216) (Minus!2216) (Broken!11084 (value!69809 List!12524)) (And!2216) (Div!2216) (LessEqual!2216) (Mod!2216) (Concat!5634) (Not!2216) (Plus!2216) (SpaceValue!2216 (value!69810 List!12524)) (IntegerValue!6650 (value!69811 Int) (text!15961 List!12524)) (StringLiteralValue!6649 (text!15962 List!12524)) (FloatLiteralValue!4433 (text!15963 List!12524)) (BytesLiteralValue!2216 (value!69812 List!12524)) (CommentValue!4433 (value!69813 List!12524)) (StringLiteralValue!6650 (value!69814 List!12524)) (ErrorTokenValue!2216 (msg!2277 List!12524)) )
))
(declare-datatypes ((C!7154 0))(
  ( (C!7155 (val!4107 Int)) )
))
(declare-datatypes ((List!12525 0))(
  ( (Nil!12467) (Cons!12467 (h!17868 C!7154) (t!113381 List!12525)) )
))
(declare-datatypes ((IArray!8161 0))(
  ( (IArray!8162 (innerList!4138 List!12525)) )
))
(declare-datatypes ((Conc!4078 0))(
  ( (Node!4078 (left!10744 Conc!4078) (right!11074 Conc!4078) (csize!8386 Int) (cheight!4289 Int)) (Leaf!6301 (xs!6789 IArray!8161) (csize!8387 Int)) (Empty!4078) )
))
(declare-datatypes ((String!15214 0))(
  ( (String!15215 (value!69815 String)) )
))
(declare-datatypes ((BalanceConc!8088 0))(
  ( (BalanceConc!8089 (c!203682 Conc!4078)) )
))
(declare-datatypes ((Regex!3418 0))(
  ( (ElementMatch!3418 (c!203683 C!7154)) (Concat!5635 (regOne!7348 Regex!3418) (regTwo!7348 Regex!3418)) (EmptyExpr!3418) (Star!3418 (reg!3747 Regex!3418)) (EmptyLang!3418) (Union!3418 (regOne!7349 Regex!3418) (regTwo!7349 Regex!3418)) )
))
(declare-datatypes ((TokenValueInjection!4128 0))(
  ( (TokenValueInjection!4129 (toValue!3281 Int) (toChars!3140 Int)) )
))
(declare-datatypes ((Rule!4096 0))(
  ( (Rule!4097 (regex!2148 Regex!3418) (tag!2410 String!15214) (isSeparator!2148 Bool) (transformation!2148 TokenValueInjection!4128)) )
))
(declare-datatypes ((Token!3958 0))(
  ( (Token!3959 (value!69816 TokenValue!2216) (rule!3573 Rule!4096) (size!9847 Int) (originalCharacters!2702 List!12525)) )
))
(declare-datatypes ((tuple2!12328 0))(
  ( (tuple2!12329 (_1!7011 Token!3958) (_2!7011 List!12525)) )
))
(declare-fun lt!416162 () tuple2!12328)

(declare-fun input!2346 () List!12525)

(declare-fun lt!416165 () List!12525)

(declare-fun ++!3182 (List!12525 List!12525) List!12525)

(assert (=> b!1218364 (= res!547686 (= (++!3182 lt!416165 (_2!7011 lt!416162)) input!2346))))

(declare-fun b!1218365 () Bool)

(declare-fun e!782085 () Bool)

(assert (=> b!1218365 (= e!782085 e!782086)))

(declare-fun res!547698 () Bool)

(assert (=> b!1218365 (=> (not res!547698) (not e!782086))))

(declare-fun lt!416164 () List!12525)

(assert (=> b!1218365 (= res!547698 (= lt!416164 lt!416165))))

(declare-fun lt!416168 () BalanceConc!8088)

(declare-fun list!4599 (BalanceConc!8088) List!12525)

(assert (=> b!1218365 (= lt!416165 (list!4599 lt!416168))))

(declare-fun lt!416167 () BalanceConc!8088)

(assert (=> b!1218365 (= lt!416164 (list!4599 lt!416167))))

(declare-fun e!782089 () Bool)

(assert (=> b!1218367 (= e!782089 (and tp!346265 tp!346262))))

(declare-fun b!1218368 () Bool)

(declare-fun e!782075 () Bool)

(declare-fun e!782081 () Bool)

(assert (=> b!1218368 (= e!782075 e!782081)))

(declare-fun res!547691 () Bool)

(assert (=> b!1218368 (=> (not res!547691) (not e!782081))))

(declare-datatypes ((List!12526 0))(
  ( (Nil!12468) (Cons!12468 (h!17869 Token!3958) (t!113382 List!12526)) )
))
(declare-fun tokens!556 () List!12526)

(assert (=> b!1218368 (= res!547691 (= (_1!7011 lt!416162) (h!17869 tokens!556)))))

(declare-datatypes ((Option!2510 0))(
  ( (None!2509) (Some!2509 (v!20640 tuple2!12328)) )
))
(declare-fun lt!416163 () Option!2510)

(declare-fun get!4100 (Option!2510) tuple2!12328)

(assert (=> b!1218368 (= lt!416162 (get!4100 lt!416163))))

(declare-fun b!1218369 () Bool)

(declare-fun res!547689 () Bool)

(declare-fun e!782090 () Bool)

(assert (=> b!1218369 (=> (not res!547689) (not e!782090))))

(declare-datatypes ((List!12527 0))(
  ( (Nil!12469) (Cons!12469 (h!17870 Rule!4096) (t!113383 List!12527)) )
))
(declare-fun rules!2728 () List!12527)

(declare-fun isEmpty!7416 (List!12527) Bool)

(assert (=> b!1218369 (= res!547689 (not (isEmpty!7416 rules!2728)))))

(declare-fun b!1218370 () Bool)

(declare-fun res!547696 () Bool)

(assert (=> b!1218370 (=> (not res!547696) (not e!782090))))

(declare-datatypes ((LexerInterface!1843 0))(
  ( (LexerInterfaceExt!1840 (__x!8148 Int)) (Lexer!1841) )
))
(declare-fun thiss!20528 () LexerInterface!1843)

(declare-datatypes ((tuple2!12330 0))(
  ( (tuple2!12331 (_1!7012 List!12526) (_2!7012 List!12525)) )
))
(declare-fun lexList!473 (LexerInterface!1843 List!12527 List!12525) tuple2!12330)

(assert (=> b!1218370 (= res!547696 (= (_1!7012 (lexList!473 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun b!1218371 () Bool)

(declare-fun e!782084 () Bool)

(declare-fun tp_is_empty!6357 () Bool)

(declare-fun tp!346264 () Bool)

(assert (=> b!1218371 (= e!782084 (and tp_is_empty!6357 tp!346264))))

(declare-fun e!782091 () Bool)

(declare-fun e!782088 () Bool)

(declare-fun tp!346263 () Bool)

(declare-fun b!1218372 () Bool)

(declare-fun inv!16663 (String!15214) Bool)

(declare-fun inv!16666 (TokenValueInjection!4128) Bool)

(assert (=> b!1218372 (= e!782088 (and tp!346263 (inv!16663 (tag!2410 (rule!3573 (h!17869 tokens!556)))) (inv!16666 (transformation!2148 (rule!3573 (h!17869 tokens!556)))) e!782091))))

(declare-fun b!1218373 () Bool)

(declare-fun res!547697 () Bool)

(assert (=> b!1218373 (=> (not res!547697) (not e!782090))))

(declare-fun rulesInvariant!1717 (LexerInterface!1843 List!12527) Bool)

(assert (=> b!1218373 (= res!547697 (rulesInvariant!1717 thiss!20528 rules!2728))))

(declare-fun b!1218374 () Bool)

(declare-fun res!547687 () Bool)

(assert (=> b!1218374 (=> (not res!547687) (not e!782086))))

(declare-fun rulesProduceIndividualToken!837 (LexerInterface!1843 List!12527 Token!3958) Bool)

(assert (=> b!1218374 (= res!547687 (not (rulesProduceIndividualToken!837 thiss!20528 rules!2728 (h!17869 tokens!556))))))

(declare-fun e!782087 () Bool)

(declare-fun b!1218375 () Bool)

(declare-fun tp!346257 () Bool)

(declare-fun e!782076 () Bool)

(declare-fun inv!16667 (Token!3958) Bool)

(assert (=> b!1218375 (= e!782076 (and (inv!16667 (h!17869 tokens!556)) e!782087 tp!346257))))

(declare-fun b!1218376 () Bool)

(declare-fun e!782083 () Bool)

(declare-fun e!782077 () Bool)

(declare-fun tp!346258 () Bool)

(assert (=> b!1218376 (= e!782083 (and e!782077 tp!346258))))

(assert (=> b!1218377 (= e!782091 (and tp!346261 tp!346259))))

(declare-fun b!1218378 () Bool)

(declare-fun tp!346256 () Bool)

(declare-fun inv!21 (TokenValue!2216) Bool)

(assert (=> b!1218378 (= e!782087 (and (inv!21 (value!69816 (h!17869 tokens!556))) e!782088 tp!346256))))

(declare-fun res!547688 () Bool)

(assert (=> start!108984 (=> (not res!547688) (not e!782090))))

(assert (=> start!108984 (= res!547688 (is-Lexer!1841 thiss!20528))))

(assert (=> start!108984 e!782090))

(assert (=> start!108984 true))

(assert (=> start!108984 e!782083))

(assert (=> start!108984 e!782084))

(assert (=> start!108984 e!782076))

(declare-fun b!1218366 () Bool)

(declare-fun res!547694 () Bool)

(assert (=> b!1218366 (=> (not res!547694) (not e!782086))))

(declare-fun matchR!1533 (Regex!3418 List!12525) Bool)

(assert (=> b!1218366 (= res!547694 (matchR!1533 (regex!2148 (rule!3573 (_1!7011 lt!416162))) lt!416164))))

(declare-fun b!1218379 () Bool)

(declare-fun tp!346260 () Bool)

(assert (=> b!1218379 (= e!782077 (and tp!346260 (inv!16663 (tag!2410 (h!17870 rules!2728))) (inv!16666 (transformation!2148 (h!17870 rules!2728))) e!782089))))

(declare-fun b!1218380 () Bool)

(declare-fun res!547695 () Bool)

(assert (=> b!1218380 (=> (not res!547695) (not e!782090))))

(assert (=> b!1218380 (= res!547695 (not (is-Nil!12468 tokens!556)))))

(declare-fun b!1218381 () Bool)

(assert (=> b!1218381 (= e!782090 e!782075)))

(declare-fun res!547690 () Bool)

(assert (=> b!1218381 (=> (not res!547690) (not e!782075))))

(declare-fun isDefined!2146 (Option!2510) Bool)

(assert (=> b!1218381 (= res!547690 (isDefined!2146 lt!416163))))

(declare-fun maxPrefix!965 (LexerInterface!1843 List!12527 List!12525) Option!2510)

(assert (=> b!1218381 (= lt!416163 (maxPrefix!965 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1218382 () Bool)

(assert (=> b!1218382 (= e!782081 e!782085)))

(declare-fun res!547693 () Bool)

(assert (=> b!1218382 (=> (not res!547693) (not e!782085))))

(assert (=> b!1218382 (= res!547693 (= lt!416167 lt!416168))))

(declare-fun charsOf!1152 (Token!3958) BalanceConc!8088)

(assert (=> b!1218382 (= lt!416168 (charsOf!1152 (h!17869 tokens!556)))))

(assert (=> b!1218382 (= lt!416167 (charsOf!1152 (_1!7011 lt!416162)))))

(declare-fun b!1218383 () Bool)

(declare-fun e!782080 () Bool)

(declare-fun isEmpty!7417 (List!12525) Bool)

(assert (=> b!1218383 (= e!782080 (isEmpty!7417 lt!416165))))

(declare-fun b!1218384 () Bool)

(assert (=> b!1218384 (= e!782086 e!782080)))

(declare-fun res!547692 () Bool)

(assert (=> b!1218384 (=> (not res!547692) (not e!782080))))

(declare-fun isEmpty!7418 (List!12526) Bool)

(assert (=> b!1218384 (= res!547692 (not (isEmpty!7418 (Cons!12468 (h!17869 tokens!556) Nil!12468))))))

(declare-fun lt!416166 () tuple2!12330)

(assert (=> b!1218384 (= lt!416166 (lexList!473 thiss!20528 rules!2728 (_2!7011 lt!416162)))))

(assert (= (and start!108984 res!547688) b!1218369))

(assert (= (and b!1218369 res!547689) b!1218373))

(assert (= (and b!1218373 res!547697) b!1218370))

(assert (= (and b!1218370 res!547696) b!1218380))

(assert (= (and b!1218380 res!547695) b!1218381))

(assert (= (and b!1218381 res!547690) b!1218368))

(assert (= (and b!1218368 res!547691) b!1218382))

(assert (= (and b!1218382 res!547693) b!1218365))

(assert (= (and b!1218365 res!547698) b!1218364))

(assert (= (and b!1218364 res!547686) b!1218366))

(assert (= (and b!1218366 res!547694) b!1218374))

(assert (= (and b!1218374 res!547687) b!1218384))

(assert (= (and b!1218384 res!547692) b!1218383))

(assert (= b!1218379 b!1218367))

(assert (= b!1218376 b!1218379))

(assert (= (and start!108984 (is-Cons!12469 rules!2728)) b!1218376))

(assert (= (and start!108984 (is-Cons!12467 input!2346)) b!1218371))

(assert (= b!1218372 b!1218377))

(assert (= b!1218378 b!1218372))

(assert (= b!1218375 b!1218378))

(assert (= (and start!108984 (is-Cons!12468 tokens!556)) b!1218375))

(declare-fun m!1392135 () Bool)

(assert (=> b!1218366 m!1392135))

(declare-fun m!1392137 () Bool)

(assert (=> b!1218365 m!1392137))

(declare-fun m!1392139 () Bool)

(assert (=> b!1218365 m!1392139))

(declare-fun m!1392141 () Bool)

(assert (=> b!1218368 m!1392141))

(declare-fun m!1392143 () Bool)

(assert (=> b!1218374 m!1392143))

(declare-fun m!1392145 () Bool)

(assert (=> b!1218370 m!1392145))

(declare-fun m!1392147 () Bool)

(assert (=> b!1218379 m!1392147))

(declare-fun m!1392149 () Bool)

(assert (=> b!1218379 m!1392149))

(declare-fun m!1392151 () Bool)

(assert (=> b!1218372 m!1392151))

(declare-fun m!1392153 () Bool)

(assert (=> b!1218372 m!1392153))

(declare-fun m!1392155 () Bool)

(assert (=> b!1218373 m!1392155))

(declare-fun m!1392157 () Bool)

(assert (=> b!1218375 m!1392157))

(declare-fun m!1392159 () Bool)

(assert (=> b!1218378 m!1392159))

(declare-fun m!1392161 () Bool)

(assert (=> b!1218381 m!1392161))

(declare-fun m!1392163 () Bool)

(assert (=> b!1218381 m!1392163))

(declare-fun m!1392165 () Bool)

(assert (=> b!1218382 m!1392165))

(declare-fun m!1392167 () Bool)

(assert (=> b!1218382 m!1392167))

(declare-fun m!1392169 () Bool)

(assert (=> b!1218364 m!1392169))

(declare-fun m!1392171 () Bool)

(assert (=> b!1218383 m!1392171))

(declare-fun m!1392173 () Bool)

(assert (=> b!1218384 m!1392173))

(declare-fun m!1392175 () Bool)

(assert (=> b!1218384 m!1392175))

(declare-fun m!1392177 () Bool)

(assert (=> b!1218369 m!1392177))

(push 1)

(assert (not b!1218383))

(assert (not b!1218369))

(assert (not b!1218364))

(assert (not b!1218365))

(assert (not b_next!30119))

(assert b_and!82885)

(assert b_and!82883)

(assert b_and!82881)

(assert (not b_next!30115))

(assert (not b!1218382))

(assert (not b!1218374))

(assert (not b!1218368))

(assert (not b!1218372))

(assert (not b!1218371))

(assert (not b_next!30117))

(assert (not b!1218366))

(assert (not b_next!30113))

(assert (not b!1218379))

(assert (not b!1218378))

(assert b_and!82887)

(assert tp_is_empty!6357)

(assert (not b!1218384))

(assert (not b!1218370))

(assert (not b!1218373))

(assert (not b!1218381))

(assert (not b!1218375))

(assert (not b!1218376))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!30117))

(assert (not b_next!30113))

(assert (not b_next!30119))

(assert b_and!82885)

(assert b_and!82883)

(assert b_and!82887)

(assert b_and!82881)

(assert (not b_next!30115))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!347773 () Bool)

(declare-fun res!547747 () Bool)

(declare-fun e!782145 () Bool)

(assert (=> d!347773 (=> (not res!547747) (not e!782145))))

(assert (=> d!347773 (= res!547747 (not (isEmpty!7417 (originalCharacters!2702 (h!17869 tokens!556)))))))

(assert (=> d!347773 (= (inv!16667 (h!17869 tokens!556)) e!782145)))

(declare-fun b!1218452 () Bool)

(declare-fun res!547748 () Bool)

(assert (=> b!1218452 (=> (not res!547748) (not e!782145))))

(declare-fun dynLambda!5439 (Int TokenValue!2216) BalanceConc!8088)

(assert (=> b!1218452 (= res!547748 (= (originalCharacters!2702 (h!17869 tokens!556)) (list!4599 (dynLambda!5439 (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556)))) (value!69816 (h!17869 tokens!556))))))))

(declare-fun b!1218453 () Bool)

(declare-fun size!9849 (List!12525) Int)

(assert (=> b!1218453 (= e!782145 (= (size!9847 (h!17869 tokens!556)) (size!9849 (originalCharacters!2702 (h!17869 tokens!556)))))))

(assert (= (and d!347773 res!547747) b!1218452))

(assert (= (and b!1218452 res!547748) b!1218453))

(declare-fun b_lambda!35939 () Bool)

(assert (=> (not b_lambda!35939) (not b!1218452)))

(declare-fun tb!66929 () Bool)

(declare-fun t!113389 () Bool)

(assert (=> (and b!1218367 (= (toChars!3140 (transformation!2148 (h!17870 rules!2728))) (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556))))) t!113389) tb!66929))

(declare-fun b!1218458 () Bool)

(declare-fun e!782148 () Bool)

(declare-fun tp!346298 () Bool)

(declare-fun inv!16670 (Conc!4078) Bool)

(assert (=> b!1218458 (= e!782148 (and (inv!16670 (c!203682 (dynLambda!5439 (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556)))) (value!69816 (h!17869 tokens!556))))) tp!346298))))

(declare-fun result!81052 () Bool)

(declare-fun inv!16671 (BalanceConc!8088) Bool)

(assert (=> tb!66929 (= result!81052 (and (inv!16671 (dynLambda!5439 (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556)))) (value!69816 (h!17869 tokens!556)))) e!782148))))

(assert (= tb!66929 b!1218458))

(declare-fun m!1392223 () Bool)

(assert (=> b!1218458 m!1392223))

(declare-fun m!1392225 () Bool)

(assert (=> tb!66929 m!1392225))

(assert (=> b!1218452 t!113389))

(declare-fun b_and!82897 () Bool)

(assert (= b_and!82883 (and (=> t!113389 result!81052) b_and!82897)))

(declare-fun t!113391 () Bool)

(declare-fun tb!66931 () Bool)

(assert (=> (and b!1218377 (= (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556)))) (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556))))) t!113391) tb!66931))

(declare-fun result!81056 () Bool)

(assert (= result!81056 result!81052))

(assert (=> b!1218452 t!113391))

(declare-fun b_and!82899 () Bool)

(assert (= b_and!82887 (and (=> t!113391 result!81056) b_and!82899)))

(declare-fun m!1392227 () Bool)

(assert (=> d!347773 m!1392227))

(declare-fun m!1392229 () Bool)

(assert (=> b!1218452 m!1392229))

(assert (=> b!1218452 m!1392229))

(declare-fun m!1392231 () Bool)

(assert (=> b!1218452 m!1392231))

(declare-fun m!1392233 () Bool)

(assert (=> b!1218453 m!1392233))

(assert (=> b!1218375 d!347773))

(declare-fun lt!416192 () List!12525)

(declare-fun b!1218470 () Bool)

(declare-fun e!782154 () Bool)

(assert (=> b!1218470 (= e!782154 (or (not (= (_2!7011 lt!416162) Nil!12467)) (= lt!416192 lt!416165)))))

(declare-fun b!1218467 () Bool)

(declare-fun e!782153 () List!12525)

(assert (=> b!1218467 (= e!782153 (_2!7011 lt!416162))))

(declare-fun b!1218469 () Bool)

(declare-fun res!547754 () Bool)

(assert (=> b!1218469 (=> (not res!547754) (not e!782154))))

(assert (=> b!1218469 (= res!547754 (= (size!9849 lt!416192) (+ (size!9849 lt!416165) (size!9849 (_2!7011 lt!416162)))))))

(declare-fun b!1218468 () Bool)

(assert (=> b!1218468 (= e!782153 (Cons!12467 (h!17868 lt!416165) (++!3182 (t!113381 lt!416165) (_2!7011 lt!416162))))))

(declare-fun d!347775 () Bool)

(assert (=> d!347775 e!782154))

(declare-fun res!547753 () Bool)

(assert (=> d!347775 (=> (not res!547753) (not e!782154))))

(declare-fun content!1770 (List!12525) (Set C!7154))

(assert (=> d!347775 (= res!547753 (= (content!1770 lt!416192) (set.union (content!1770 lt!416165) (content!1770 (_2!7011 lt!416162)))))))

(assert (=> d!347775 (= lt!416192 e!782153)))

(declare-fun c!203689 () Bool)

(assert (=> d!347775 (= c!203689 (is-Nil!12467 lt!416165))))

(assert (=> d!347775 (= (++!3182 lt!416165 (_2!7011 lt!416162)) lt!416192)))

(assert (= (and d!347775 c!203689) b!1218467))

(assert (= (and d!347775 (not c!203689)) b!1218468))

(assert (= (and d!347775 res!547753) b!1218469))

(assert (= (and b!1218469 res!547754) b!1218470))

(declare-fun m!1392235 () Bool)

(assert (=> b!1218469 m!1392235))

(declare-fun m!1392237 () Bool)

(assert (=> b!1218469 m!1392237))

(declare-fun m!1392239 () Bool)

(assert (=> b!1218469 m!1392239))

(declare-fun m!1392241 () Bool)

(assert (=> b!1218468 m!1392241))

(declare-fun m!1392243 () Bool)

(assert (=> d!347775 m!1392243))

(declare-fun m!1392245 () Bool)

(assert (=> d!347775 m!1392245))

(declare-fun m!1392247 () Bool)

(assert (=> d!347775 m!1392247))

(assert (=> b!1218364 d!347775))

(declare-fun d!347777 () Bool)

(declare-fun lt!416197 () Bool)

(declare-fun e!782163 () Bool)

(assert (=> d!347777 (= lt!416197 e!782163)))

(declare-fun res!547766 () Bool)

(assert (=> d!347777 (=> (not res!547766) (not e!782163))))

(declare-datatypes ((IArray!8165 0))(
  ( (IArray!8166 (innerList!4140 List!12526)) )
))
(declare-datatypes ((Conc!4080 0))(
  ( (Node!4080 (left!10746 Conc!4080) (right!11076 Conc!4080) (csize!8390 Int) (cheight!4291 Int)) (Leaf!6303 (xs!6791 IArray!8165) (csize!8391 Int)) (Empty!4080) )
))
(declare-datatypes ((BalanceConc!8092 0))(
  ( (BalanceConc!8093 (c!203716 Conc!4080)) )
))
(declare-fun list!4601 (BalanceConc!8092) List!12526)

(declare-datatypes ((tuple2!12336 0))(
  ( (tuple2!12337 (_1!7015 BalanceConc!8092) (_2!7015 BalanceConc!8088)) )
))
(declare-fun lex!749 (LexerInterface!1843 List!12527 BalanceConc!8088) tuple2!12336)

(declare-fun print!686 (LexerInterface!1843 BalanceConc!8092) BalanceConc!8088)

(declare-fun singletonSeq!734 (Token!3958) BalanceConc!8092)

(assert (=> d!347777 (= res!547766 (= (list!4601 (_1!7015 (lex!749 thiss!20528 rules!2728 (print!686 thiss!20528 (singletonSeq!734 (h!17869 tokens!556)))))) (list!4601 (singletonSeq!734 (h!17869 tokens!556)))))))

(declare-fun e!782162 () Bool)

(assert (=> d!347777 (= lt!416197 e!782162)))

(declare-fun res!547764 () Bool)

(assert (=> d!347777 (=> (not res!547764) (not e!782162))))

(declare-fun lt!416198 () tuple2!12336)

(declare-fun size!9850 (BalanceConc!8092) Int)

(assert (=> d!347777 (= res!547764 (= (size!9850 (_1!7015 lt!416198)) 1))))

(assert (=> d!347777 (= lt!416198 (lex!749 thiss!20528 rules!2728 (print!686 thiss!20528 (singletonSeq!734 (h!17869 tokens!556)))))))

(assert (=> d!347777 (not (isEmpty!7416 rules!2728))))

(assert (=> d!347777 (= (rulesProduceIndividualToken!837 thiss!20528 rules!2728 (h!17869 tokens!556)) lt!416197)))

(declare-fun b!1218480 () Bool)

(declare-fun res!547765 () Bool)

(assert (=> b!1218480 (=> (not res!547765) (not e!782162))))

(declare-fun apply!2655 (BalanceConc!8092 Int) Token!3958)

(assert (=> b!1218480 (= res!547765 (= (apply!2655 (_1!7015 lt!416198) 0) (h!17869 tokens!556)))))

(declare-fun b!1218481 () Bool)

(declare-fun isEmpty!7422 (BalanceConc!8088) Bool)

(assert (=> b!1218481 (= e!782162 (isEmpty!7422 (_2!7015 lt!416198)))))

(declare-fun b!1218482 () Bool)

(assert (=> b!1218482 (= e!782163 (isEmpty!7422 (_2!7015 (lex!749 thiss!20528 rules!2728 (print!686 thiss!20528 (singletonSeq!734 (h!17869 tokens!556)))))))))

(assert (= (and d!347777 res!547764) b!1218480))

(assert (= (and b!1218480 res!547765) b!1218481))

(assert (= (and d!347777 res!547766) b!1218482))

(declare-fun m!1392257 () Bool)

(assert (=> d!347777 m!1392257))

(declare-fun m!1392259 () Bool)

(assert (=> d!347777 m!1392259))

(assert (=> d!347777 m!1392177))

(declare-fun m!1392261 () Bool)

(assert (=> d!347777 m!1392261))

(declare-fun m!1392263 () Bool)

(assert (=> d!347777 m!1392263))

(assert (=> d!347777 m!1392257))

(assert (=> d!347777 m!1392257))

(declare-fun m!1392265 () Bool)

(assert (=> d!347777 m!1392265))

(assert (=> d!347777 m!1392265))

(declare-fun m!1392267 () Bool)

(assert (=> d!347777 m!1392267))

(declare-fun m!1392269 () Bool)

(assert (=> b!1218480 m!1392269))

(declare-fun m!1392271 () Bool)

(assert (=> b!1218481 m!1392271))

(assert (=> b!1218482 m!1392257))

(assert (=> b!1218482 m!1392257))

(assert (=> b!1218482 m!1392265))

(assert (=> b!1218482 m!1392265))

(assert (=> b!1218482 m!1392267))

(declare-fun m!1392273 () Bool)

(assert (=> b!1218482 m!1392273))

(assert (=> b!1218374 d!347777))

(declare-fun d!347791 () Bool)

(declare-fun res!547769 () Bool)

(declare-fun e!782166 () Bool)

(assert (=> d!347791 (=> (not res!547769) (not e!782166))))

(declare-fun rulesValid!773 (LexerInterface!1843 List!12527) Bool)

(assert (=> d!347791 (= res!547769 (rulesValid!773 thiss!20528 rules!2728))))

(assert (=> d!347791 (= (rulesInvariant!1717 thiss!20528 rules!2728) e!782166)))

(declare-fun b!1218485 () Bool)

(declare-datatypes ((List!12532 0))(
  ( (Nil!12474) (Cons!12474 (h!17875 String!15214) (t!113406 List!12532)) )
))
(declare-fun noDuplicateTag!773 (LexerInterface!1843 List!12527 List!12532) Bool)

(assert (=> b!1218485 (= e!782166 (noDuplicateTag!773 thiss!20528 rules!2728 Nil!12474))))

(assert (= (and d!347791 res!547769) b!1218485))

(declare-fun m!1392275 () Bool)

(assert (=> d!347791 m!1392275))

(declare-fun m!1392277 () Bool)

(assert (=> b!1218485 m!1392277))

(assert (=> b!1218373 d!347791))

(declare-fun d!347793 () Bool)

(assert (=> d!347793 (= (isEmpty!7418 (Cons!12468 (h!17869 tokens!556) Nil!12468)) (is-Nil!12468 (Cons!12468 (h!17869 tokens!556) Nil!12468)))))

(assert (=> b!1218384 d!347793))

(declare-fun b!1218496 () Bool)

(declare-fun e!782175 () tuple2!12330)

(declare-fun lt!416205 () Option!2510)

(declare-fun lt!416206 () tuple2!12330)

(assert (=> b!1218496 (= e!782175 (tuple2!12331 (Cons!12468 (_1!7011 (v!20640 lt!416205)) (_1!7012 lt!416206)) (_2!7012 lt!416206)))))

(assert (=> b!1218496 (= lt!416206 (lexList!473 thiss!20528 rules!2728 (_2!7011 (v!20640 lt!416205))))))

(declare-fun d!347795 () Bool)

(declare-fun e!782174 () Bool)

(assert (=> d!347795 e!782174))

(declare-fun c!203695 () Bool)

(declare-fun lt!416207 () tuple2!12330)

(declare-fun size!9851 (List!12526) Int)

(assert (=> d!347795 (= c!203695 (> (size!9851 (_1!7012 lt!416207)) 0))))

(assert (=> d!347795 (= lt!416207 e!782175)))

(declare-fun c!203694 () Bool)

(assert (=> d!347795 (= c!203694 (is-Some!2509 lt!416205))))

(assert (=> d!347795 (= lt!416205 (maxPrefix!965 thiss!20528 rules!2728 (_2!7011 lt!416162)))))

(assert (=> d!347795 (= (lexList!473 thiss!20528 rules!2728 (_2!7011 lt!416162)) lt!416207)))

(declare-fun b!1218497 () Bool)

(declare-fun e!782173 () Bool)

(assert (=> b!1218497 (= e!782174 e!782173)))

(declare-fun res!547772 () Bool)

(assert (=> b!1218497 (= res!547772 (< (size!9849 (_2!7012 lt!416207)) (size!9849 (_2!7011 lt!416162))))))

(assert (=> b!1218497 (=> (not res!547772) (not e!782173))))

(declare-fun b!1218498 () Bool)

(assert (=> b!1218498 (= e!782175 (tuple2!12331 Nil!12468 (_2!7011 lt!416162)))))

(declare-fun b!1218499 () Bool)

(assert (=> b!1218499 (= e!782174 (= (_2!7012 lt!416207) (_2!7011 lt!416162)))))

(declare-fun b!1218500 () Bool)

(assert (=> b!1218500 (= e!782173 (not (isEmpty!7418 (_1!7012 lt!416207))))))

(assert (= (and d!347795 c!203694) b!1218496))

(assert (= (and d!347795 (not c!203694)) b!1218498))

(assert (= (and d!347795 c!203695) b!1218497))

(assert (= (and d!347795 (not c!203695)) b!1218499))

(assert (= (and b!1218497 res!547772) b!1218500))

(declare-fun m!1392279 () Bool)

(assert (=> b!1218496 m!1392279))

(declare-fun m!1392281 () Bool)

(assert (=> d!347795 m!1392281))

(declare-fun m!1392283 () Bool)

(assert (=> d!347795 m!1392283))

(declare-fun m!1392285 () Bool)

(assert (=> b!1218497 m!1392285))

(assert (=> b!1218497 m!1392239))

(declare-fun m!1392287 () Bool)

(assert (=> b!1218500 m!1392287))

(assert (=> b!1218384 d!347795))

(declare-fun d!347797 () Bool)

(assert (=> d!347797 (= (isEmpty!7417 lt!416165) (is-Nil!12467 lt!416165))))

(assert (=> b!1218383 d!347797))

(declare-fun d!347799 () Bool)

(assert (=> d!347799 (= (inv!16663 (tag!2410 (rule!3573 (h!17869 tokens!556)))) (= (mod (str.len (value!69815 (tag!2410 (rule!3573 (h!17869 tokens!556))))) 2) 0))))

(assert (=> b!1218372 d!347799))

(declare-fun d!347801 () Bool)

(declare-fun res!547775 () Bool)

(declare-fun e!782178 () Bool)

(assert (=> d!347801 (=> (not res!547775) (not e!782178))))

(declare-fun semiInverseModEq!785 (Int Int) Bool)

(assert (=> d!347801 (= res!547775 (semiInverseModEq!785 (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556)))) (toValue!3281 (transformation!2148 (rule!3573 (h!17869 tokens!556))))))))

(assert (=> d!347801 (= (inv!16666 (transformation!2148 (rule!3573 (h!17869 tokens!556)))) e!782178)))

(declare-fun b!1218503 () Bool)

(declare-fun equivClasses!752 (Int Int) Bool)

(assert (=> b!1218503 (= e!782178 (equivClasses!752 (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556)))) (toValue!3281 (transformation!2148 (rule!3573 (h!17869 tokens!556))))))))

(assert (= (and d!347801 res!547775) b!1218503))

(declare-fun m!1392289 () Bool)

(assert (=> d!347801 m!1392289))

(declare-fun m!1392291 () Bool)

(assert (=> b!1218503 m!1392291))

(assert (=> b!1218372 d!347801))

(declare-fun d!347803 () Bool)

(declare-fun lt!416210 () BalanceConc!8088)

(assert (=> d!347803 (= (list!4599 lt!416210) (originalCharacters!2702 (h!17869 tokens!556)))))

(assert (=> d!347803 (= lt!416210 (dynLambda!5439 (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556)))) (value!69816 (h!17869 tokens!556))))))

(assert (=> d!347803 (= (charsOf!1152 (h!17869 tokens!556)) lt!416210)))

(declare-fun b_lambda!35941 () Bool)

(assert (=> (not b_lambda!35941) (not d!347803)))

(assert (=> d!347803 t!113389))

(declare-fun b_and!82901 () Bool)

(assert (= b_and!82897 (and (=> t!113389 result!81052) b_and!82901)))

(assert (=> d!347803 t!113391))

(declare-fun b_and!82903 () Bool)

(assert (= b_and!82899 (and (=> t!113391 result!81056) b_and!82903)))

(declare-fun m!1392293 () Bool)

(assert (=> d!347803 m!1392293))

(assert (=> d!347803 m!1392229))

(assert (=> b!1218382 d!347803))

(declare-fun d!347805 () Bool)

(declare-fun lt!416211 () BalanceConc!8088)

(assert (=> d!347805 (= (list!4599 lt!416211) (originalCharacters!2702 (_1!7011 lt!416162)))))

(assert (=> d!347805 (= lt!416211 (dynLambda!5439 (toChars!3140 (transformation!2148 (rule!3573 (_1!7011 lt!416162)))) (value!69816 (_1!7011 lt!416162))))))

(assert (=> d!347805 (= (charsOf!1152 (_1!7011 lt!416162)) lt!416211)))

(declare-fun b_lambda!35943 () Bool)

(assert (=> (not b_lambda!35943) (not d!347805)))

(declare-fun t!113394 () Bool)

(declare-fun tb!66933 () Bool)

(assert (=> (and b!1218367 (= (toChars!3140 (transformation!2148 (h!17870 rules!2728))) (toChars!3140 (transformation!2148 (rule!3573 (_1!7011 lt!416162))))) t!113394) tb!66933))

(declare-fun b!1218504 () Bool)

(declare-fun e!782179 () Bool)

(declare-fun tp!346299 () Bool)

(assert (=> b!1218504 (= e!782179 (and (inv!16670 (c!203682 (dynLambda!5439 (toChars!3140 (transformation!2148 (rule!3573 (_1!7011 lt!416162)))) (value!69816 (_1!7011 lt!416162))))) tp!346299))))

(declare-fun result!81058 () Bool)

(assert (=> tb!66933 (= result!81058 (and (inv!16671 (dynLambda!5439 (toChars!3140 (transformation!2148 (rule!3573 (_1!7011 lt!416162)))) (value!69816 (_1!7011 lt!416162)))) e!782179))))

(assert (= tb!66933 b!1218504))

(declare-fun m!1392295 () Bool)

(assert (=> b!1218504 m!1392295))

(declare-fun m!1392297 () Bool)

(assert (=> tb!66933 m!1392297))

(assert (=> d!347805 t!113394))

(declare-fun b_and!82905 () Bool)

(assert (= b_and!82901 (and (=> t!113394 result!81058) b_and!82905)))

(declare-fun tb!66935 () Bool)

(declare-fun t!113396 () Bool)

(assert (=> (and b!1218377 (= (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556)))) (toChars!3140 (transformation!2148 (rule!3573 (_1!7011 lt!416162))))) t!113396) tb!66935))

(declare-fun result!81060 () Bool)

(assert (= result!81060 result!81058))

(assert (=> d!347805 t!113396))

(declare-fun b_and!82907 () Bool)

(assert (= b_and!82903 (and (=> t!113396 result!81060) b_and!82907)))

(declare-fun m!1392299 () Bool)

(assert (=> d!347805 m!1392299))

(declare-fun m!1392301 () Bool)

(assert (=> d!347805 m!1392301))

(assert (=> b!1218382 d!347805))

(declare-fun d!347807 () Bool)

(declare-fun isEmpty!7423 (Option!2510) Bool)

(assert (=> d!347807 (= (isDefined!2146 lt!416163) (not (isEmpty!7423 lt!416163)))))

(declare-fun bs!288867 () Bool)

(assert (= bs!288867 d!347807))

(declare-fun m!1392303 () Bool)

(assert (=> bs!288867 m!1392303))

(assert (=> b!1218381 d!347807))

(declare-fun b!1218523 () Bool)

(declare-fun res!547795 () Bool)

(declare-fun e!782188 () Bool)

(assert (=> b!1218523 (=> (not res!547795) (not e!782188))))

(declare-fun lt!416224 () Option!2510)

(declare-fun apply!2656 (TokenValueInjection!4128 BalanceConc!8088) TokenValue!2216)

(declare-fun seqFromList!1559 (List!12525) BalanceConc!8088)

(assert (=> b!1218523 (= res!547795 (= (value!69816 (_1!7011 (get!4100 lt!416224))) (apply!2656 (transformation!2148 (rule!3573 (_1!7011 (get!4100 lt!416224)))) (seqFromList!1559 (originalCharacters!2702 (_1!7011 (get!4100 lt!416224)))))))))

(declare-fun b!1218524 () Bool)

(declare-fun res!547791 () Bool)

(assert (=> b!1218524 (=> (not res!547791) (not e!782188))))

(assert (=> b!1218524 (= res!547791 (= (++!3182 (list!4599 (charsOf!1152 (_1!7011 (get!4100 lt!416224)))) (_2!7011 (get!4100 lt!416224))) input!2346))))

(declare-fun b!1218525 () Bool)

(declare-fun contains!2089 (List!12527 Rule!4096) Bool)

(assert (=> b!1218525 (= e!782188 (contains!2089 rules!2728 (rule!3573 (_1!7011 (get!4100 lt!416224)))))))

(declare-fun call!84594 () Option!2510)

(declare-fun bm!84589 () Bool)

(declare-fun maxPrefixOneRule!555 (LexerInterface!1843 Rule!4096 List!12525) Option!2510)

(assert (=> bm!84589 (= call!84594 (maxPrefixOneRule!555 thiss!20528 (h!17870 rules!2728) input!2346))))

(declare-fun d!347809 () Bool)

(declare-fun e!782186 () Bool)

(assert (=> d!347809 e!782186))

(declare-fun res!547790 () Bool)

(assert (=> d!347809 (=> res!547790 e!782186)))

(assert (=> d!347809 (= res!547790 (isEmpty!7423 lt!416224))))

(declare-fun e!782187 () Option!2510)

(assert (=> d!347809 (= lt!416224 e!782187)))

(declare-fun c!203698 () Bool)

(assert (=> d!347809 (= c!203698 (and (is-Cons!12469 rules!2728) (is-Nil!12469 (t!113383 rules!2728))))))

(declare-datatypes ((Unit!18722 0))(
  ( (Unit!18723) )
))
(declare-fun lt!416223 () Unit!18722)

(declare-fun lt!416225 () Unit!18722)

(assert (=> d!347809 (= lt!416223 lt!416225)))

(declare-fun isPrefix!1036 (List!12525 List!12525) Bool)

(assert (=> d!347809 (isPrefix!1036 input!2346 input!2346)))

(declare-fun lemmaIsPrefixRefl!729 (List!12525 List!12525) Unit!18722)

(assert (=> d!347809 (= lt!416225 (lemmaIsPrefixRefl!729 input!2346 input!2346))))

(declare-fun rulesValidInductive!672 (LexerInterface!1843 List!12527) Bool)

(assert (=> d!347809 (rulesValidInductive!672 thiss!20528 rules!2728)))

(assert (=> d!347809 (= (maxPrefix!965 thiss!20528 rules!2728 input!2346) lt!416224)))

(declare-fun b!1218526 () Bool)

(declare-fun res!547796 () Bool)

(assert (=> b!1218526 (=> (not res!547796) (not e!782188))))

(assert (=> b!1218526 (= res!547796 (< (size!9849 (_2!7011 (get!4100 lt!416224))) (size!9849 input!2346)))))

(declare-fun b!1218527 () Bool)

(assert (=> b!1218527 (= e!782187 call!84594)))

(declare-fun b!1218528 () Bool)

(assert (=> b!1218528 (= e!782186 e!782188)))

(declare-fun res!547794 () Bool)

(assert (=> b!1218528 (=> (not res!547794) (not e!782188))))

(assert (=> b!1218528 (= res!547794 (isDefined!2146 lt!416224))))

(declare-fun b!1218529 () Bool)

(declare-fun res!547793 () Bool)

(assert (=> b!1218529 (=> (not res!547793) (not e!782188))))

(assert (=> b!1218529 (= res!547793 (matchR!1533 (regex!2148 (rule!3573 (_1!7011 (get!4100 lt!416224)))) (list!4599 (charsOf!1152 (_1!7011 (get!4100 lt!416224))))))))

(declare-fun b!1218530 () Bool)

(declare-fun res!547792 () Bool)

(assert (=> b!1218530 (=> (not res!547792) (not e!782188))))

(assert (=> b!1218530 (= res!547792 (= (list!4599 (charsOf!1152 (_1!7011 (get!4100 lt!416224)))) (originalCharacters!2702 (_1!7011 (get!4100 lt!416224)))))))

(declare-fun b!1218531 () Bool)

(declare-fun lt!416222 () Option!2510)

(declare-fun lt!416226 () Option!2510)

(assert (=> b!1218531 (= e!782187 (ite (and (is-None!2509 lt!416222) (is-None!2509 lt!416226)) None!2509 (ite (is-None!2509 lt!416226) lt!416222 (ite (is-None!2509 lt!416222) lt!416226 (ite (>= (size!9847 (_1!7011 (v!20640 lt!416222))) (size!9847 (_1!7011 (v!20640 lt!416226)))) lt!416222 lt!416226)))))))

(assert (=> b!1218531 (= lt!416222 call!84594)))

(assert (=> b!1218531 (= lt!416226 (maxPrefix!965 thiss!20528 (t!113383 rules!2728) input!2346))))

(assert (= (and d!347809 c!203698) b!1218527))

(assert (= (and d!347809 (not c!203698)) b!1218531))

(assert (= (or b!1218527 b!1218531) bm!84589))

(assert (= (and d!347809 (not res!547790)) b!1218528))

(assert (= (and b!1218528 res!547794) b!1218530))

(assert (= (and b!1218530 res!547792) b!1218526))

(assert (= (and b!1218526 res!547796) b!1218524))

(assert (= (and b!1218524 res!547791) b!1218523))

(assert (= (and b!1218523 res!547795) b!1218529))

(assert (= (and b!1218529 res!547793) b!1218525))

(declare-fun m!1392305 () Bool)

(assert (=> b!1218528 m!1392305))

(declare-fun m!1392307 () Bool)

(assert (=> bm!84589 m!1392307))

(declare-fun m!1392309 () Bool)

(assert (=> b!1218524 m!1392309))

(declare-fun m!1392311 () Bool)

(assert (=> b!1218524 m!1392311))

(assert (=> b!1218524 m!1392311))

(declare-fun m!1392313 () Bool)

(assert (=> b!1218524 m!1392313))

(assert (=> b!1218524 m!1392313))

(declare-fun m!1392315 () Bool)

(assert (=> b!1218524 m!1392315))

(assert (=> b!1218529 m!1392309))

(assert (=> b!1218529 m!1392311))

(assert (=> b!1218529 m!1392311))

(assert (=> b!1218529 m!1392313))

(assert (=> b!1218529 m!1392313))

(declare-fun m!1392317 () Bool)

(assert (=> b!1218529 m!1392317))

(assert (=> b!1218530 m!1392309))

(assert (=> b!1218530 m!1392311))

(assert (=> b!1218530 m!1392311))

(assert (=> b!1218530 m!1392313))

(assert (=> b!1218526 m!1392309))

(declare-fun m!1392319 () Bool)

(assert (=> b!1218526 m!1392319))

(declare-fun m!1392321 () Bool)

(assert (=> b!1218526 m!1392321))

(declare-fun m!1392323 () Bool)

(assert (=> b!1218531 m!1392323))

(assert (=> b!1218523 m!1392309))

(declare-fun m!1392325 () Bool)

(assert (=> b!1218523 m!1392325))

(assert (=> b!1218523 m!1392325))

(declare-fun m!1392327 () Bool)

(assert (=> b!1218523 m!1392327))

(assert (=> b!1218525 m!1392309))

(declare-fun m!1392329 () Bool)

(assert (=> b!1218525 m!1392329))

(declare-fun m!1392331 () Bool)

(assert (=> d!347809 m!1392331))

(declare-fun m!1392333 () Bool)

(assert (=> d!347809 m!1392333))

(declare-fun m!1392335 () Bool)

(assert (=> d!347809 m!1392335))

(declare-fun m!1392337 () Bool)

(assert (=> d!347809 m!1392337))

(assert (=> b!1218381 d!347809))

(declare-fun b!1218532 () Bool)

(declare-fun e!782191 () tuple2!12330)

(declare-fun lt!416227 () Option!2510)

(declare-fun lt!416228 () tuple2!12330)

(assert (=> b!1218532 (= e!782191 (tuple2!12331 (Cons!12468 (_1!7011 (v!20640 lt!416227)) (_1!7012 lt!416228)) (_2!7012 lt!416228)))))

(assert (=> b!1218532 (= lt!416228 (lexList!473 thiss!20528 rules!2728 (_2!7011 (v!20640 lt!416227))))))

(declare-fun d!347811 () Bool)

(declare-fun e!782190 () Bool)

(assert (=> d!347811 e!782190))

(declare-fun c!203700 () Bool)

(declare-fun lt!416229 () tuple2!12330)

(assert (=> d!347811 (= c!203700 (> (size!9851 (_1!7012 lt!416229)) 0))))

(assert (=> d!347811 (= lt!416229 e!782191)))

(declare-fun c!203699 () Bool)

(assert (=> d!347811 (= c!203699 (is-Some!2509 lt!416227))))

(assert (=> d!347811 (= lt!416227 (maxPrefix!965 thiss!20528 rules!2728 input!2346))))

(assert (=> d!347811 (= (lexList!473 thiss!20528 rules!2728 input!2346) lt!416229)))

(declare-fun b!1218533 () Bool)

(declare-fun e!782189 () Bool)

(assert (=> b!1218533 (= e!782190 e!782189)))

(declare-fun res!547797 () Bool)

(assert (=> b!1218533 (= res!547797 (< (size!9849 (_2!7012 lt!416229)) (size!9849 input!2346)))))

(assert (=> b!1218533 (=> (not res!547797) (not e!782189))))

(declare-fun b!1218534 () Bool)

(assert (=> b!1218534 (= e!782191 (tuple2!12331 Nil!12468 input!2346))))

(declare-fun b!1218535 () Bool)

(assert (=> b!1218535 (= e!782190 (= (_2!7012 lt!416229) input!2346))))

(declare-fun b!1218536 () Bool)

(assert (=> b!1218536 (= e!782189 (not (isEmpty!7418 (_1!7012 lt!416229))))))

(assert (= (and d!347811 c!203699) b!1218532))

(assert (= (and d!347811 (not c!203699)) b!1218534))

(assert (= (and d!347811 c!203700) b!1218533))

(assert (= (and d!347811 (not c!203700)) b!1218535))

(assert (= (and b!1218533 res!547797) b!1218536))

(declare-fun m!1392339 () Bool)

(assert (=> b!1218532 m!1392339))

(declare-fun m!1392341 () Bool)

(assert (=> d!347811 m!1392341))

(assert (=> d!347811 m!1392163))

(declare-fun m!1392343 () Bool)

(assert (=> b!1218533 m!1392343))

(assert (=> b!1218533 m!1392321))

(declare-fun m!1392345 () Bool)

(assert (=> b!1218536 m!1392345))

(assert (=> b!1218370 d!347811))

(declare-fun d!347813 () Bool)

(assert (=> d!347813 (= (isEmpty!7416 rules!2728) (is-Nil!12469 rules!2728))))

(assert (=> b!1218369 d!347813))

(declare-fun d!347815 () Bool)

(assert (=> d!347815 (= (inv!16663 (tag!2410 (h!17870 rules!2728))) (= (mod (str.len (value!69815 (tag!2410 (h!17870 rules!2728)))) 2) 0))))

(assert (=> b!1218379 d!347815))

(declare-fun d!347817 () Bool)

(declare-fun res!547798 () Bool)

(declare-fun e!782192 () Bool)

(assert (=> d!347817 (=> (not res!547798) (not e!782192))))

(assert (=> d!347817 (= res!547798 (semiInverseModEq!785 (toChars!3140 (transformation!2148 (h!17870 rules!2728))) (toValue!3281 (transformation!2148 (h!17870 rules!2728)))))))

(assert (=> d!347817 (= (inv!16666 (transformation!2148 (h!17870 rules!2728))) e!782192)))

(declare-fun b!1218537 () Bool)

(assert (=> b!1218537 (= e!782192 (equivClasses!752 (toChars!3140 (transformation!2148 (h!17870 rules!2728))) (toValue!3281 (transformation!2148 (h!17870 rules!2728)))))))

(assert (= (and d!347817 res!547798) b!1218537))

(declare-fun m!1392347 () Bool)

(assert (=> d!347817 m!1392347))

(declare-fun m!1392349 () Bool)

(assert (=> b!1218537 m!1392349))

(assert (=> b!1218379 d!347817))

(declare-fun d!347819 () Bool)

(assert (=> d!347819 (= (get!4100 lt!416163) (v!20640 lt!416163))))

(assert (=> b!1218368 d!347819))

(declare-fun b!1218548 () Bool)

(declare-fun e!782200 () Bool)

(declare-fun inv!17 (TokenValue!2216) Bool)

(assert (=> b!1218548 (= e!782200 (inv!17 (value!69816 (h!17869 tokens!556))))))

(declare-fun b!1218549 () Bool)

(declare-fun e!782201 () Bool)

(declare-fun inv!15 (TokenValue!2216) Bool)

(assert (=> b!1218549 (= e!782201 (inv!15 (value!69816 (h!17869 tokens!556))))))

(declare-fun b!1218550 () Bool)

(declare-fun res!547801 () Bool)

(assert (=> b!1218550 (=> res!547801 e!782201)))

(assert (=> b!1218550 (= res!547801 (not (is-IntegerValue!6650 (value!69816 (h!17869 tokens!556)))))))

(assert (=> b!1218550 (= e!782200 e!782201)))

(declare-fun d!347821 () Bool)

(declare-fun c!203706 () Bool)

(assert (=> d!347821 (= c!203706 (is-IntegerValue!6648 (value!69816 (h!17869 tokens!556))))))

(declare-fun e!782199 () Bool)

(assert (=> d!347821 (= (inv!21 (value!69816 (h!17869 tokens!556))) e!782199)))

(declare-fun b!1218551 () Bool)

(declare-fun inv!16 (TokenValue!2216) Bool)

(assert (=> b!1218551 (= e!782199 (inv!16 (value!69816 (h!17869 tokens!556))))))

(declare-fun b!1218552 () Bool)

(assert (=> b!1218552 (= e!782199 e!782200)))

(declare-fun c!203705 () Bool)

(assert (=> b!1218552 (= c!203705 (is-IntegerValue!6649 (value!69816 (h!17869 tokens!556))))))

(assert (= (and d!347821 c!203706) b!1218551))

(assert (= (and d!347821 (not c!203706)) b!1218552))

(assert (= (and b!1218552 c!203705) b!1218548))

(assert (= (and b!1218552 (not c!203705)) b!1218550))

(assert (= (and b!1218550 (not res!547801)) b!1218549))

(declare-fun m!1392351 () Bool)

(assert (=> b!1218548 m!1392351))

(declare-fun m!1392353 () Bool)

(assert (=> b!1218549 m!1392353))

(declare-fun m!1392355 () Bool)

(assert (=> b!1218551 m!1392355))

(assert (=> b!1218378 d!347821))

(declare-fun b!1218581 () Bool)

(declare-fun e!782222 () Bool)

(declare-fun lt!416232 () Bool)

(declare-fun call!84597 () Bool)

(assert (=> b!1218581 (= e!782222 (= lt!416232 call!84597))))

(declare-fun b!1218582 () Bool)

(declare-fun e!782217 () Bool)

(declare-fun nullable!1058 (Regex!3418) Bool)

(assert (=> b!1218582 (= e!782217 (nullable!1058 (regex!2148 (rule!3573 (_1!7011 lt!416162)))))))

(declare-fun b!1218583 () Bool)

(declare-fun e!782216 () Bool)

(declare-fun head!2155 (List!12525) C!7154)

(assert (=> b!1218583 (= e!782216 (= (head!2155 lt!416164) (c!203683 (regex!2148 (rule!3573 (_1!7011 lt!416162))))))))

(declare-fun b!1218584 () Bool)

(declare-fun res!547821 () Bool)

(assert (=> b!1218584 (=> (not res!547821) (not e!782216))))

(declare-fun tail!1787 (List!12525) List!12525)

(assert (=> b!1218584 (= res!547821 (isEmpty!7417 (tail!1787 lt!416164)))))

(declare-fun b!1218585 () Bool)

(declare-fun e!782219 () Bool)

(declare-fun e!782220 () Bool)

(assert (=> b!1218585 (= e!782219 e!782220)))

(declare-fun res!547822 () Bool)

(assert (=> b!1218585 (=> res!547822 e!782220)))

(assert (=> b!1218585 (= res!547822 call!84597)))

(declare-fun b!1218586 () Bool)

(declare-fun res!547819 () Bool)

(assert (=> b!1218586 (=> (not res!547819) (not e!782216))))

(assert (=> b!1218586 (= res!547819 (not call!84597))))

(declare-fun bm!84592 () Bool)

(assert (=> bm!84592 (= call!84597 (isEmpty!7417 lt!416164))))

(declare-fun b!1218587 () Bool)

(declare-fun derivativeStep!851 (Regex!3418 C!7154) Regex!3418)

(assert (=> b!1218587 (= e!782217 (matchR!1533 (derivativeStep!851 (regex!2148 (rule!3573 (_1!7011 lt!416162))) (head!2155 lt!416164)) (tail!1787 lt!416164)))))

(declare-fun b!1218588 () Bool)

(declare-fun e!782221 () Bool)

(assert (=> b!1218588 (= e!782221 e!782219)))

(declare-fun res!547820 () Bool)

(assert (=> b!1218588 (=> (not res!547820) (not e!782219))))

(assert (=> b!1218588 (= res!547820 (not lt!416232))))

(declare-fun b!1218589 () Bool)

(declare-fun res!547825 () Bool)

(assert (=> b!1218589 (=> res!547825 e!782221)))

(assert (=> b!1218589 (= res!547825 e!782216)))

(declare-fun res!547818 () Bool)

(assert (=> b!1218589 (=> (not res!547818) (not e!782216))))

(assert (=> b!1218589 (= res!547818 lt!416232)))

(declare-fun b!1218590 () Bool)

(assert (=> b!1218590 (= e!782220 (not (= (head!2155 lt!416164) (c!203683 (regex!2148 (rule!3573 (_1!7011 lt!416162)))))))))

(declare-fun b!1218591 () Bool)

(declare-fun res!547824 () Bool)

(assert (=> b!1218591 (=> res!547824 e!782220)))

(assert (=> b!1218591 (= res!547824 (not (isEmpty!7417 (tail!1787 lt!416164))))))

(declare-fun b!1218592 () Bool)

(declare-fun res!547823 () Bool)

(assert (=> b!1218592 (=> res!547823 e!782221)))

(assert (=> b!1218592 (= res!547823 (not (is-ElementMatch!3418 (regex!2148 (rule!3573 (_1!7011 lt!416162))))))))

(declare-fun e!782218 () Bool)

(assert (=> b!1218592 (= e!782218 e!782221)))

(declare-fun d!347823 () Bool)

(assert (=> d!347823 e!782222))

(declare-fun c!203714 () Bool)

(assert (=> d!347823 (= c!203714 (is-EmptyExpr!3418 (regex!2148 (rule!3573 (_1!7011 lt!416162)))))))

(assert (=> d!347823 (= lt!416232 e!782217)))

(declare-fun c!203713 () Bool)

(assert (=> d!347823 (= c!203713 (isEmpty!7417 lt!416164))))

(declare-fun validRegex!1455 (Regex!3418) Bool)

(assert (=> d!347823 (validRegex!1455 (regex!2148 (rule!3573 (_1!7011 lt!416162))))))

(assert (=> d!347823 (= (matchR!1533 (regex!2148 (rule!3573 (_1!7011 lt!416162))) lt!416164) lt!416232)))

(declare-fun b!1218593 () Bool)

(assert (=> b!1218593 (= e!782218 (not lt!416232))))

(declare-fun b!1218594 () Bool)

(assert (=> b!1218594 (= e!782222 e!782218)))

(declare-fun c!203715 () Bool)

(assert (=> b!1218594 (= c!203715 (is-EmptyLang!3418 (regex!2148 (rule!3573 (_1!7011 lt!416162)))))))

(assert (= (and d!347823 c!203713) b!1218582))

(assert (= (and d!347823 (not c!203713)) b!1218587))

(assert (= (and d!347823 c!203714) b!1218581))

(assert (= (and d!347823 (not c!203714)) b!1218594))

(assert (= (and b!1218594 c!203715) b!1218593))

(assert (= (and b!1218594 (not c!203715)) b!1218592))

(assert (= (and b!1218592 (not res!547823)) b!1218589))

(assert (= (and b!1218589 res!547818) b!1218586))

(assert (= (and b!1218586 res!547819) b!1218584))

(assert (= (and b!1218584 res!547821) b!1218583))

(assert (= (and b!1218589 (not res!547825)) b!1218588))

(assert (= (and b!1218588 res!547820) b!1218585))

(assert (= (and b!1218585 (not res!547822)) b!1218591))

(assert (= (and b!1218591 (not res!547824)) b!1218590))

(assert (= (or b!1218581 b!1218585 b!1218586) bm!84592))

(declare-fun m!1392357 () Bool)

(assert (=> b!1218587 m!1392357))

(assert (=> b!1218587 m!1392357))

(declare-fun m!1392359 () Bool)

(assert (=> b!1218587 m!1392359))

(declare-fun m!1392361 () Bool)

(assert (=> b!1218587 m!1392361))

(assert (=> b!1218587 m!1392359))

(assert (=> b!1218587 m!1392361))

(declare-fun m!1392363 () Bool)

(assert (=> b!1218587 m!1392363))

(declare-fun m!1392365 () Bool)

(assert (=> b!1218582 m!1392365))

(assert (=> b!1218591 m!1392361))

(assert (=> b!1218591 m!1392361))

(declare-fun m!1392367 () Bool)

(assert (=> b!1218591 m!1392367))

(assert (=> b!1218583 m!1392357))

(assert (=> b!1218590 m!1392357))

(declare-fun m!1392369 () Bool)

(assert (=> d!347823 m!1392369))

(declare-fun m!1392371 () Bool)

(assert (=> d!347823 m!1392371))

(assert (=> bm!84592 m!1392369))

(assert (=> b!1218584 m!1392361))

(assert (=> b!1218584 m!1392361))

(assert (=> b!1218584 m!1392367))

(assert (=> b!1218366 d!347823))

(declare-fun d!347825 () Bool)

(declare-fun list!4602 (Conc!4078) List!12525)

(assert (=> d!347825 (= (list!4599 lt!416168) (list!4602 (c!203682 lt!416168)))))

(declare-fun bs!288868 () Bool)

(assert (= bs!288868 d!347825))

(declare-fun m!1392373 () Bool)

(assert (=> bs!288868 m!1392373))

(assert (=> b!1218365 d!347825))

(declare-fun d!347827 () Bool)

(assert (=> d!347827 (= (list!4599 lt!416167) (list!4602 (c!203682 lt!416167)))))

(declare-fun bs!288869 () Bool)

(assert (= bs!288869 d!347827))

(declare-fun m!1392375 () Bool)

(assert (=> bs!288869 m!1392375))

(assert (=> b!1218365 d!347827))

(declare-fun b!1218608 () Bool)

(declare-fun b_free!29425 () Bool)

(declare-fun b_next!30129 () Bool)

(assert (=> b!1218608 (= b_free!29425 (not b_next!30129))))

(declare-fun tp!346311 () Bool)

(declare-fun b_and!82909 () Bool)

(assert (=> b!1218608 (= tp!346311 b_and!82909)))

(declare-fun b_free!29427 () Bool)

(declare-fun b_next!30131 () Bool)

(assert (=> b!1218608 (= b_free!29427 (not b_next!30131))))

(declare-fun t!113398 () Bool)

(declare-fun tb!66937 () Bool)

(assert (=> (and b!1218608 (= (toChars!3140 (transformation!2148 (rule!3573 (h!17869 (t!113382 tokens!556))))) (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556))))) t!113398) tb!66937))

(declare-fun result!81064 () Bool)

(assert (= result!81064 result!81052))

(assert (=> b!1218452 t!113398))

(assert (=> d!347803 t!113398))

(declare-fun t!113400 () Bool)

(declare-fun tb!66939 () Bool)

(assert (=> (and b!1218608 (= (toChars!3140 (transformation!2148 (rule!3573 (h!17869 (t!113382 tokens!556))))) (toChars!3140 (transformation!2148 (rule!3573 (_1!7011 lt!416162))))) t!113400) tb!66939))

(declare-fun result!81066 () Bool)

(assert (= result!81066 result!81058))

(assert (=> d!347805 t!113400))

(declare-fun b_and!82911 () Bool)

(declare-fun tp!346313 () Bool)

(assert (=> b!1218608 (= tp!346313 (and (=> t!113398 result!81064) (=> t!113400 result!81066) b_and!82911))))

(declare-fun b!1218607 () Bool)

(declare-fun e!782236 () Bool)

(declare-fun tp!346312 () Bool)

(declare-fun e!782235 () Bool)

(assert (=> b!1218607 (= e!782236 (and tp!346312 (inv!16663 (tag!2410 (rule!3573 (h!17869 (t!113382 tokens!556))))) (inv!16666 (transformation!2148 (rule!3573 (h!17869 (t!113382 tokens!556))))) e!782235))))

(assert (=> b!1218608 (= e!782235 (and tp!346311 tp!346313))))

(declare-fun e!782237 () Bool)

(assert (=> b!1218375 (= tp!346257 e!782237)))

(declare-fun b!1218605 () Bool)

(declare-fun e!782240 () Bool)

(declare-fun tp!346310 () Bool)

(assert (=> b!1218605 (= e!782237 (and (inv!16667 (h!17869 (t!113382 tokens!556))) e!782240 tp!346310))))

(declare-fun b!1218606 () Bool)

(declare-fun tp!346314 () Bool)

(assert (=> b!1218606 (= e!782240 (and (inv!21 (value!69816 (h!17869 (t!113382 tokens!556)))) e!782236 tp!346314))))

(assert (= b!1218607 b!1218608))

(assert (= b!1218606 b!1218607))

(assert (= b!1218605 b!1218606))

(assert (= (and b!1218375 (is-Cons!12468 (t!113382 tokens!556))) b!1218605))

(declare-fun m!1392377 () Bool)

(assert (=> b!1218607 m!1392377))

(declare-fun m!1392379 () Bool)

(assert (=> b!1218607 m!1392379))

(declare-fun m!1392381 () Bool)

(assert (=> b!1218605 m!1392381))

(declare-fun m!1392383 () Bool)

(assert (=> b!1218606 m!1392383))

(declare-fun b!1218622 () Bool)

(declare-fun e!782243 () Bool)

(declare-fun tp!346327 () Bool)

(declare-fun tp!346328 () Bool)

(assert (=> b!1218622 (= e!782243 (and tp!346327 tp!346328))))

(declare-fun b!1218621 () Bool)

(declare-fun tp!346325 () Bool)

(assert (=> b!1218621 (= e!782243 tp!346325)))

(declare-fun b!1218619 () Bool)

(assert (=> b!1218619 (= e!782243 tp_is_empty!6357)))

(declare-fun b!1218620 () Bool)

(declare-fun tp!346329 () Bool)

(declare-fun tp!346326 () Bool)

(assert (=> b!1218620 (= e!782243 (and tp!346329 tp!346326))))

(assert (=> b!1218379 (= tp!346260 e!782243)))

(assert (= (and b!1218379 (is-ElementMatch!3418 (regex!2148 (h!17870 rules!2728)))) b!1218619))

(assert (= (and b!1218379 (is-Concat!5635 (regex!2148 (h!17870 rules!2728)))) b!1218620))

(assert (= (and b!1218379 (is-Star!3418 (regex!2148 (h!17870 rules!2728)))) b!1218621))

(assert (= (and b!1218379 (is-Union!3418 (regex!2148 (h!17870 rules!2728)))) b!1218622))

(declare-fun b!1218627 () Bool)

(declare-fun e!782246 () Bool)

(declare-fun tp!346332 () Bool)

(assert (=> b!1218627 (= e!782246 (and tp_is_empty!6357 tp!346332))))

(assert (=> b!1218378 (= tp!346256 e!782246)))

(assert (= (and b!1218378 (is-Cons!12467 (originalCharacters!2702 (h!17869 tokens!556)))) b!1218627))

(declare-fun b!1218631 () Bool)

(declare-fun e!782247 () Bool)

(declare-fun tp!346335 () Bool)

(declare-fun tp!346336 () Bool)

(assert (=> b!1218631 (= e!782247 (and tp!346335 tp!346336))))

(declare-fun b!1218630 () Bool)

(declare-fun tp!346333 () Bool)

(assert (=> b!1218630 (= e!782247 tp!346333)))

(declare-fun b!1218628 () Bool)

(assert (=> b!1218628 (= e!782247 tp_is_empty!6357)))

(declare-fun b!1218629 () Bool)

(declare-fun tp!346337 () Bool)

(declare-fun tp!346334 () Bool)

(assert (=> b!1218629 (= e!782247 (and tp!346337 tp!346334))))

(assert (=> b!1218372 (= tp!346263 e!782247)))

(assert (= (and b!1218372 (is-ElementMatch!3418 (regex!2148 (rule!3573 (h!17869 tokens!556))))) b!1218628))

(assert (= (and b!1218372 (is-Concat!5635 (regex!2148 (rule!3573 (h!17869 tokens!556))))) b!1218629))

(assert (= (and b!1218372 (is-Star!3418 (regex!2148 (rule!3573 (h!17869 tokens!556))))) b!1218630))

(assert (= (and b!1218372 (is-Union!3418 (regex!2148 (rule!3573 (h!17869 tokens!556))))) b!1218631))

(declare-fun b!1218632 () Bool)

(declare-fun e!782248 () Bool)

(declare-fun tp!346338 () Bool)

(assert (=> b!1218632 (= e!782248 (and tp_is_empty!6357 tp!346338))))

(assert (=> b!1218371 (= tp!346264 e!782248)))

(assert (= (and b!1218371 (is-Cons!12467 (t!113381 input!2346))) b!1218632))

(declare-fun b!1218643 () Bool)

(declare-fun b_free!29429 () Bool)

(declare-fun b_next!30133 () Bool)

(assert (=> b!1218643 (= b_free!29429 (not b_next!30133))))

(declare-fun tp!346348 () Bool)

(declare-fun b_and!82913 () Bool)

(assert (=> b!1218643 (= tp!346348 b_and!82913)))

(declare-fun b_free!29431 () Bool)

(declare-fun b_next!30135 () Bool)

(assert (=> b!1218643 (= b_free!29431 (not b_next!30135))))

(declare-fun t!113402 () Bool)

(declare-fun tb!66941 () Bool)

(assert (=> (and b!1218643 (= (toChars!3140 (transformation!2148 (h!17870 (t!113383 rules!2728)))) (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556))))) t!113402) tb!66941))

(declare-fun result!81074 () Bool)

(assert (= result!81074 result!81052))

(assert (=> b!1218452 t!113402))

(assert (=> d!347803 t!113402))

(declare-fun t!113404 () Bool)

(declare-fun tb!66943 () Bool)

(assert (=> (and b!1218643 (= (toChars!3140 (transformation!2148 (h!17870 (t!113383 rules!2728)))) (toChars!3140 (transformation!2148 (rule!3573 (_1!7011 lt!416162))))) t!113404) tb!66943))

(declare-fun result!81076 () Bool)

(assert (= result!81076 result!81058))

(assert (=> d!347805 t!113404))

(declare-fun b_and!82915 () Bool)

(declare-fun tp!346350 () Bool)

(assert (=> b!1218643 (= tp!346350 (and (=> t!113402 result!81074) (=> t!113404 result!81076) b_and!82915))))

(declare-fun e!782257 () Bool)

(assert (=> b!1218643 (= e!782257 (and tp!346348 tp!346350))))

(declare-fun e!782260 () Bool)

(declare-fun b!1218642 () Bool)

(declare-fun tp!346347 () Bool)

(assert (=> b!1218642 (= e!782260 (and tp!346347 (inv!16663 (tag!2410 (h!17870 (t!113383 rules!2728)))) (inv!16666 (transformation!2148 (h!17870 (t!113383 rules!2728)))) e!782257))))

(declare-fun b!1218641 () Bool)

(declare-fun e!782259 () Bool)

(declare-fun tp!346349 () Bool)

(assert (=> b!1218641 (= e!782259 (and e!782260 tp!346349))))

(assert (=> b!1218376 (= tp!346258 e!782259)))

(assert (= b!1218642 b!1218643))

(assert (= b!1218641 b!1218642))

(assert (= (and b!1218376 (is-Cons!12469 (t!113383 rules!2728))) b!1218641))

(declare-fun m!1392385 () Bool)

(assert (=> b!1218642 m!1392385))

(declare-fun m!1392387 () Bool)

(assert (=> b!1218642 m!1392387))

(declare-fun b_lambda!35945 () Bool)

(assert (= b_lambda!35941 (or (and b!1218367 b_free!29411 (= (toChars!3140 (transformation!2148 (h!17870 rules!2728))) (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556)))))) (and b!1218377 b_free!29415) (and b!1218608 b_free!29427 (= (toChars!3140 (transformation!2148 (rule!3573 (h!17869 (t!113382 tokens!556))))) (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556)))))) (and b!1218643 b_free!29431 (= (toChars!3140 (transformation!2148 (h!17870 (t!113383 rules!2728)))) (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556)))))) b_lambda!35945)))

(declare-fun b_lambda!35947 () Bool)

(assert (= b_lambda!35939 (or (and b!1218367 b_free!29411 (= (toChars!3140 (transformation!2148 (h!17870 rules!2728))) (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556)))))) (and b!1218377 b_free!29415) (and b!1218608 b_free!29427 (= (toChars!3140 (transformation!2148 (rule!3573 (h!17869 (t!113382 tokens!556))))) (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556)))))) (and b!1218643 b_free!29431 (= (toChars!3140 (transformation!2148 (h!17870 (t!113383 rules!2728)))) (toChars!3140 (transformation!2148 (rule!3573 (h!17869 tokens!556)))))) b_lambda!35947)))

(push 1)

(assert (not d!347809))

(assert (not b!1218453))

(assert (not b_next!30135))

(assert (not d!347773))

(assert (not b!1218642))

(assert (not b!1218523))

(assert (not d!347811))

(assert b_and!82911)

(assert (not b!1218500))

(assert (not d!347801))

(assert (not b!1218469))

(assert (not b!1218536))

(assert (not b!1218537))

(assert (not b!1218529))

(assert (not b!1218497))

(assert (not d!347775))

(assert (not b!1218480))

(assert (not b!1218590))

(assert (not b!1218630))

(assert b_and!82909)

(assert (not b!1218549))

(assert (not b!1218468))

(assert (not b!1218531))

(assert (not b!1218620))

(assert (not b!1218591))

(assert (not d!347807))

(assert b_and!82905)

(assert (not d!347795))

(assert (not d!347817))

(assert (not b_lambda!35943))

(assert (not b!1218526))

(assert (not b_next!30117))

(assert (not b!1218482))

(assert (not b_next!30129))

(assert (not b_lambda!35947))

(assert (not tb!66929))

(assert (not b!1218632))

(assert (not b!1218584))

(assert (not b!1218452))

(assert (not b_next!30113))

(assert (not d!347823))

(assert (not b!1218551))

(assert (not b_next!30131))

(assert (not bm!84589))

(assert (not b!1218548))

(assert (not b!1218622))

(assert (not b!1218532))

(assert (not b!1218503))

(assert (not b!1218481))

(assert (not tb!66933))

(assert (not b_next!30119))

(assert (not b!1218606))

(assert (not d!347805))

(assert (not b!1218629))

(assert (not b!1218533))

(assert (not b!1218587))

(assert (not b!1218627))

(assert b_and!82885)

(assert b_and!82915)

(assert (not b!1218485))

(assert (not b!1218631))

(assert (not b_lambda!35945))

(assert (not b!1218605))

(assert tp_is_empty!6357)

(assert (not d!347827))

(assert (not b!1218641))

(assert b_and!82907)

(assert (not d!347777))

(assert (not b!1218582))

(assert b_and!82881)

(assert (not b!1218524))

(assert (not b!1218607))

(assert (not b!1218621))

(assert (not b!1218458))

(assert (not b!1218583))

(assert (not b_next!30115))

(assert (not d!347791))

(assert (not b!1218528))

(assert (not b!1218530))

(assert b_and!82913)

(assert (not b!1218525))

(assert (not b!1218504))

(assert (not bm!84592))

(assert (not d!347825))

(assert (not d!347803))

(assert (not b_next!30133))

(assert (not b!1218496))

(check-sat)

(pop 1)

(push 1)

(assert b_and!82911)

(assert b_and!82909)

(assert b_and!82905)

(assert (not b_next!30113))

(assert (not b_next!30131))

(assert (not b_next!30135))

(assert (not b_next!30119))

(assert b_and!82885)

(assert b_and!82915)

(assert b_and!82907)

(assert b_and!82881)

(assert (not b_next!30115))

(assert b_and!82913)

(assert (not b_next!30133))

(assert (not b_next!30117))

(assert (not b_next!30129))

(check-sat)

(pop 1)

