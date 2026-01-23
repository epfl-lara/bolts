; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!536818 () Bool)

(assert start!536818)

(declare-fun b!5093295 () Bool)

(declare-fun b_free!133255 () Bool)

(declare-fun b_next!134045 () Bool)

(assert (=> b!5093295 (= b_free!133255 (not b_next!134045))))

(declare-fun tp!1419827 () Bool)

(declare-fun b_and!350139 () Bool)

(assert (=> b!5093295 (= tp!1419827 b_and!350139)))

(declare-fun b_free!133257 () Bool)

(declare-fun b_next!134047 () Bool)

(assert (=> b!5093295 (= b_free!133257 (not b_next!134047))))

(declare-fun tp!1419824 () Bool)

(declare-fun b_and!350141 () Bool)

(assert (=> b!5093295 (= tp!1419824 b_and!350141)))

(declare-fun b!5093289 () Bool)

(declare-fun e!3176340 () Bool)

(declare-datatypes ((LexerInterface!8077 0))(
  ( (LexerInterfaceExt!8074 (__x!34887 Int)) (Lexer!8075) )
))
(declare-fun thiss!14775 () LexerInterface!8077)

(declare-datatypes ((List!58674 0))(
  ( (Nil!58550) (Cons!58550 (h!64998 (_ BitVec 16)) (t!371629 List!58674)) )
))
(declare-datatypes ((TokenValue!8799 0))(
  ( (FloatLiteralValue!17598 (text!62038 List!58674)) (TokenValueExt!8798 (__x!34888 Int)) (Broken!43995 (value!272112 List!58674)) (Object!8922) (End!8799) (Def!8799) (Underscore!8799) (Match!8799) (Else!8799) (Error!8799) (Case!8799) (If!8799) (Extends!8799) (Abstract!8799) (Class!8799) (Val!8799) (DelimiterValue!17598 (del!8859 List!58674)) (KeywordValue!8805 (value!272113 List!58674)) (CommentValue!17598 (value!272114 List!58674)) (WhitespaceValue!17598 (value!272115 List!58674)) (IndentationValue!8799 (value!272116 List!58674)) (String!66918) (Int32!8799) (Broken!43996 (value!272117 List!58674)) (Boolean!8800) (Unit!149591) (OperatorValue!8802 (op!8859 List!58674)) (IdentifierValue!17598 (value!272118 List!58674)) (IdentifierValue!17599 (value!272119 List!58674)) (WhitespaceValue!17599 (value!272120 List!58674)) (True!17598) (False!17598) (Broken!43997 (value!272121 List!58674)) (Broken!43998 (value!272122 List!58674)) (True!17599) (RightBrace!8799) (RightBracket!8799) (Colon!8799) (Null!8799) (Comma!8799) (LeftBracket!8799) (False!17599) (LeftBrace!8799) (ImaginaryLiteralValue!8799 (text!62039 List!58674)) (StringLiteralValue!26397 (value!272123 List!58674)) (EOFValue!8799 (value!272124 List!58674)) (IdentValue!8799 (value!272125 List!58674)) (DelimiterValue!17599 (value!272126 List!58674)) (DedentValue!8799 (value!272127 List!58674)) (NewLineValue!8799 (value!272128 List!58674)) (IntegerValue!26397 (value!272129 (_ BitVec 32)) (text!62040 List!58674)) (IntegerValue!26398 (value!272130 Int) (text!62041 List!58674)) (Times!8799) (Or!8799) (Equal!8799) (Minus!8799) (Broken!43999 (value!272131 List!58674)) (And!8799) (Div!8799) (LessEqual!8799) (Mod!8799) (Concat!22759) (Not!8799) (Plus!8799) (SpaceValue!8799 (value!272132 List!58674)) (IntegerValue!26399 (value!272133 Int) (text!62042 List!58674)) (StringLiteralValue!26398 (text!62043 List!58674)) (FloatLiteralValue!17599 (text!62044 List!58674)) (BytesLiteralValue!8799 (value!272134 List!58674)) (CommentValue!17599 (value!272135 List!58674)) (StringLiteralValue!26399 (value!272136 List!58674)) (ErrorTokenValue!8799 (msg!8860 List!58674)) )
))
(declare-datatypes ((C!28178 0))(
  ( (C!28179 (val!23741 Int)) )
))
(declare-datatypes ((List!58675 0))(
  ( (Nil!58551) (Cons!58551 (h!64999 C!28178) (t!371630 List!58675)) )
))
(declare-datatypes ((IArray!31375 0))(
  ( (IArray!31376 (innerList!15745 List!58675)) )
))
(declare-datatypes ((Conc!15657 0))(
  ( (Node!15657 (left!42966 Conc!15657) (right!43296 Conc!15657) (csize!31544 Int) (cheight!15868 Int)) (Leaf!25991 (xs!19039 IArray!31375) (csize!31545 Int)) (Empty!15657) )
))
(declare-datatypes ((BalanceConc!30432 0))(
  ( (BalanceConc!30433 (c!875400 Conc!15657)) )
))
(declare-datatypes ((TokenValueInjection!16906 0))(
  ( (TokenValueInjection!16907 (toValue!11508 Int) (toChars!11367 Int)) )
))
(declare-datatypes ((Regex!13960 0))(
  ( (ElementMatch!13960 (c!875401 C!28178)) (Concat!22760 (regOne!28432 Regex!13960) (regTwo!28432 Regex!13960)) (EmptyExpr!13960) (Star!13960 (reg!14289 Regex!13960)) (EmptyLang!13960) (Union!13960 (regOne!28433 Regex!13960) (regTwo!28433 Regex!13960)) )
))
(declare-datatypes ((String!66919 0))(
  ( (String!66920 (value!272137 String)) )
))
(declare-datatypes ((Rule!16770 0))(
  ( (Rule!16771 (regex!8485 Regex!13960) (tag!9349 String!66919) (isSeparator!8485 Bool) (transformation!8485 TokenValueInjection!16906)) )
))
(declare-datatypes ((List!58676 0))(
  ( (Nil!58552) (Cons!58552 (h!65000 Rule!16770) (t!371631 List!58676)) )
))
(declare-fun rulesArg!145 () List!58676)

(declare-fun ruleValid!3891 (LexerInterface!8077 Rule!16770) Bool)

(assert (=> b!5093289 (= e!3176340 (ruleValid!3891 thiss!14775 (h!65000 rulesArg!145)))))

(declare-fun e!3176344 () Bool)

(declare-fun tp!1419828 () Bool)

(declare-fun b!5093290 () Bool)

(declare-fun e!3176345 () Bool)

(declare-fun inv!78055 (String!66919) Bool)

(declare-fun inv!78058 (TokenValueInjection!16906) Bool)

(assert (=> b!5093290 (= e!3176344 (and tp!1419828 (inv!78055 (tag!9349 (h!65000 rulesArg!145))) (inv!78058 (transformation!8485 (h!65000 rulesArg!145))) e!3176345))))

(declare-fun b!5093291 () Bool)

(declare-fun e!3176343 () Bool)

(assert (=> b!5093291 (= e!3176343 (not e!3176340))))

(declare-fun res!2167495 () Bool)

(assert (=> b!5093291 (=> res!2167495 e!3176340)))

(assert (=> b!5093291 (= res!2167495 (or (not (is-Cons!58552 rulesArg!145)) (not (is-Nil!58552 (t!371631 rulesArg!145)))))))

(declare-fun input!1210 () List!58675)

(declare-fun isPrefix!5381 (List!58675 List!58675) Bool)

(assert (=> b!5093291 (isPrefix!5381 input!1210 input!1210)))

(declare-datatypes ((Unit!149592 0))(
  ( (Unit!149593) )
))
(declare-fun lt!2092719 () Unit!149592)

(declare-fun lemmaIsPrefixRefl!3640 (List!58675 List!58675) Unit!149592)

(assert (=> b!5093291 (= lt!2092719 (lemmaIsPrefixRefl!3640 input!1210 input!1210))))

(declare-fun b!5093292 () Bool)

(declare-fun e!3176346 () Bool)

(declare-fun tp_is_empty!37185 () Bool)

(declare-fun tp!1419826 () Bool)

(assert (=> b!5093292 (= e!3176346 (and tp_is_empty!37185 tp!1419826))))

(declare-fun res!2167496 () Bool)

(assert (=> start!536818 (=> (not res!2167496) (not e!3176343))))

(assert (=> start!536818 (= res!2167496 (is-Lexer!8075 thiss!14775))))

(assert (=> start!536818 e!3176343))

(assert (=> start!536818 true))

(declare-fun e!3176341 () Bool)

(assert (=> start!536818 e!3176341))

(assert (=> start!536818 e!3176346))

(declare-fun b!5093293 () Bool)

(declare-fun res!2167497 () Bool)

(assert (=> b!5093293 (=> (not res!2167497) (not e!3176343))))

(declare-fun isEmpty!31695 (List!58676) Bool)

(assert (=> b!5093293 (= res!2167497 (not (isEmpty!31695 rulesArg!145)))))

(declare-fun b!5093294 () Bool)

(declare-fun tp!1419825 () Bool)

(assert (=> b!5093294 (= e!3176341 (and e!3176344 tp!1419825))))

(assert (=> b!5093295 (= e!3176345 (and tp!1419827 tp!1419824))))

(declare-fun b!5093296 () Bool)

(declare-fun res!2167498 () Bool)

(assert (=> b!5093296 (=> (not res!2167498) (not e!3176343))))

(declare-fun rulesValidInductive!3310 (LexerInterface!8077 List!58676) Bool)

(assert (=> b!5093296 (= res!2167498 (rulesValidInductive!3310 thiss!14775 rulesArg!145))))

(assert (= (and start!536818 res!2167496) b!5093296))

(assert (= (and b!5093296 res!2167498) b!5093293))

(assert (= (and b!5093293 res!2167497) b!5093291))

(assert (= (and b!5093291 (not res!2167495)) b!5093289))

(assert (= b!5093290 b!5093295))

(assert (= b!5093294 b!5093290))

(assert (= (and start!536818 (is-Cons!58552 rulesArg!145)) b!5093294))

(assert (= (and start!536818 (is-Cons!58551 input!1210)) b!5093292))

(declare-fun m!6151518 () Bool)

(assert (=> b!5093291 m!6151518))

(declare-fun m!6151520 () Bool)

(assert (=> b!5093291 m!6151520))

(declare-fun m!6151522 () Bool)

(assert (=> b!5093290 m!6151522))

(declare-fun m!6151524 () Bool)

(assert (=> b!5093290 m!6151524))

(declare-fun m!6151526 () Bool)

(assert (=> b!5093289 m!6151526))

(declare-fun m!6151528 () Bool)

(assert (=> b!5093296 m!6151528))

(declare-fun m!6151530 () Bool)

(assert (=> b!5093293 m!6151530))

(push 1)

(assert (not b_next!134047))

(assert (not b!5093289))

(assert (not b!5093292))

(assert b_and!350141)

(assert (not b!5093290))

(assert (not b!5093294))

(assert (not b!5093296))

(assert (not b!5093291))

(assert b_and!350139)

(assert tp_is_empty!37185)

(assert (not b!5093293))

(assert (not b_next!134045))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350141)

(assert b_and!350139)

(assert (not b_next!134045))

(assert (not b_next!134047))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5093332 () Bool)

(declare-fun e!3176377 () Bool)

(declare-fun e!3176378 () Bool)

(assert (=> b!5093332 (= e!3176377 e!3176378)))

(declare-fun res!2167528 () Bool)

(assert (=> b!5093332 (=> (not res!2167528) (not e!3176378))))

(assert (=> b!5093332 (= res!2167528 (not (is-Nil!58551 input!1210)))))

(declare-fun d!1648666 () Bool)

(declare-fun e!3176379 () Bool)

(assert (=> d!1648666 e!3176379))

(declare-fun res!2167529 () Bool)

(assert (=> d!1648666 (=> res!2167529 e!3176379)))

(declare-fun lt!2092725 () Bool)

(assert (=> d!1648666 (= res!2167529 (not lt!2092725))))

(assert (=> d!1648666 (= lt!2092725 e!3176377)))

(declare-fun res!2167527 () Bool)

(assert (=> d!1648666 (=> res!2167527 e!3176377)))

(assert (=> d!1648666 (= res!2167527 (is-Nil!58551 input!1210))))

(assert (=> d!1648666 (= (isPrefix!5381 input!1210 input!1210) lt!2092725)))

(declare-fun b!5093335 () Bool)

(declare-fun size!39248 (List!58675) Int)

(assert (=> b!5093335 (= e!3176379 (>= (size!39248 input!1210) (size!39248 input!1210)))))

(declare-fun b!5093333 () Bool)

(declare-fun res!2167526 () Bool)

(assert (=> b!5093333 (=> (not res!2167526) (not e!3176378))))

(declare-fun head!10810 (List!58675) C!28178)

(assert (=> b!5093333 (= res!2167526 (= (head!10810 input!1210) (head!10810 input!1210)))))

(declare-fun b!5093334 () Bool)

(declare-fun tail!9965 (List!58675) List!58675)

(assert (=> b!5093334 (= e!3176378 (isPrefix!5381 (tail!9965 input!1210) (tail!9965 input!1210)))))

(assert (= (and d!1648666 (not res!2167527)) b!5093332))

(assert (= (and b!5093332 res!2167528) b!5093333))

(assert (= (and b!5093333 res!2167526) b!5093334))

(assert (= (and d!1648666 (not res!2167529)) b!5093335))

(declare-fun m!6151550 () Bool)

(assert (=> b!5093335 m!6151550))

(assert (=> b!5093335 m!6151550))

(declare-fun m!6151552 () Bool)

(assert (=> b!5093333 m!6151552))

(assert (=> b!5093333 m!6151552))

(declare-fun m!6151554 () Bool)

(assert (=> b!5093334 m!6151554))

(assert (=> b!5093334 m!6151554))

(assert (=> b!5093334 m!6151554))

(assert (=> b!5093334 m!6151554))

(declare-fun m!6151556 () Bool)

(assert (=> b!5093334 m!6151556))

(assert (=> b!5093291 d!1648666))

(declare-fun d!1648674 () Bool)

(assert (=> d!1648674 (isPrefix!5381 input!1210 input!1210)))

(declare-fun lt!2092730 () Unit!149592)

(declare-fun choose!37297 (List!58675 List!58675) Unit!149592)

(assert (=> d!1648674 (= lt!2092730 (choose!37297 input!1210 input!1210))))

(assert (=> d!1648674 (= (lemmaIsPrefixRefl!3640 input!1210 input!1210) lt!2092730)))

(declare-fun bs!1191267 () Bool)

(assert (= bs!1191267 d!1648674))

(assert (=> bs!1191267 m!6151518))

(declare-fun m!6151558 () Bool)

(assert (=> bs!1191267 m!6151558))

(assert (=> b!5093291 d!1648674))

(declare-fun d!1648676 () Bool)

(assert (=> d!1648676 true))

(declare-fun lt!2092739 () Bool)

(declare-fun lambda!249819 () Int)

(declare-fun forall!13467 (List!58676 Int) Bool)

(assert (=> d!1648676 (= lt!2092739 (forall!13467 rulesArg!145 lambda!249819))))

(declare-fun e!3176398 () Bool)

(assert (=> d!1648676 (= lt!2092739 e!3176398)))

(declare-fun res!2167551 () Bool)

(assert (=> d!1648676 (=> res!2167551 e!3176398)))

(assert (=> d!1648676 (= res!2167551 (not (is-Cons!58552 rulesArg!145)))))

(assert (=> d!1648676 (= (rulesValidInductive!3310 thiss!14775 rulesArg!145) lt!2092739)))

(declare-fun b!5093356 () Bool)

(declare-fun e!3176397 () Bool)

(assert (=> b!5093356 (= e!3176398 e!3176397)))

(declare-fun res!2167550 () Bool)

(assert (=> b!5093356 (=> (not res!2167550) (not e!3176397))))

(assert (=> b!5093356 (= res!2167550 (ruleValid!3891 thiss!14775 (h!65000 rulesArg!145)))))

(declare-fun b!5093357 () Bool)

(assert (=> b!5093357 (= e!3176397 (rulesValidInductive!3310 thiss!14775 (t!371631 rulesArg!145)))))

(assert (= (and d!1648676 (not res!2167551)) b!5093356))

(assert (= (and b!5093356 res!2167550) b!5093357))

(declare-fun m!6151570 () Bool)

(assert (=> d!1648676 m!6151570))

(assert (=> b!5093356 m!6151526))

(declare-fun m!6151572 () Bool)

(assert (=> b!5093357 m!6151572))

(assert (=> b!5093296 d!1648676))

(declare-fun d!1648682 () Bool)

(assert (=> d!1648682 (= (isEmpty!31695 rulesArg!145) (is-Nil!58552 rulesArg!145))))

(assert (=> b!5093293 d!1648682))

(declare-fun d!1648684 () Bool)

(declare-fun res!2167556 () Bool)

(declare-fun e!3176401 () Bool)

(assert (=> d!1648684 (=> (not res!2167556) (not e!3176401))))

(declare-fun validRegex!6124 (Regex!13960) Bool)

(assert (=> d!1648684 (= res!2167556 (validRegex!6124 (regex!8485 (h!65000 rulesArg!145))))))

(assert (=> d!1648684 (= (ruleValid!3891 thiss!14775 (h!65000 rulesArg!145)) e!3176401)))

(declare-fun b!5093364 () Bool)

(declare-fun res!2167557 () Bool)

(assert (=> b!5093364 (=> (not res!2167557) (not e!3176401))))

(declare-fun nullable!4700 (Regex!13960) Bool)

(assert (=> b!5093364 (= res!2167557 (not (nullable!4700 (regex!8485 (h!65000 rulesArg!145)))))))

(declare-fun b!5093365 () Bool)

(assert (=> b!5093365 (= e!3176401 (not (= (tag!9349 (h!65000 rulesArg!145)) (String!66920 ""))))))

(assert (= (and d!1648684 res!2167556) b!5093364))

(assert (= (and b!5093364 res!2167557) b!5093365))

(declare-fun m!6151574 () Bool)

(assert (=> d!1648684 m!6151574))

(declare-fun m!6151576 () Bool)

(assert (=> b!5093364 m!6151576))

(assert (=> b!5093289 d!1648684))

(declare-fun d!1648686 () Bool)

(assert (=> d!1648686 (= (inv!78055 (tag!9349 (h!65000 rulesArg!145))) (= (mod (str.len (value!272137 (tag!9349 (h!65000 rulesArg!145)))) 2) 0))))

(assert (=> b!5093290 d!1648686))

(declare-fun d!1648688 () Bool)

(declare-fun res!2167560 () Bool)

(declare-fun e!3176404 () Bool)

(assert (=> d!1648688 (=> (not res!2167560) (not e!3176404))))

(declare-fun semiInverseModEq!3779 (Int Int) Bool)

(assert (=> d!1648688 (= res!2167560 (semiInverseModEq!3779 (toChars!11367 (transformation!8485 (h!65000 rulesArg!145))) (toValue!11508 (transformation!8485 (h!65000 rulesArg!145)))))))

(assert (=> d!1648688 (= (inv!78058 (transformation!8485 (h!65000 rulesArg!145))) e!3176404)))

(declare-fun b!5093368 () Bool)

(declare-fun equivClasses!3595 (Int Int) Bool)

(assert (=> b!5093368 (= e!3176404 (equivClasses!3595 (toChars!11367 (transformation!8485 (h!65000 rulesArg!145))) (toValue!11508 (transformation!8485 (h!65000 rulesArg!145)))))))

(assert (= (and d!1648688 res!2167560) b!5093368))

(declare-fun m!6151578 () Bool)

(assert (=> d!1648688 m!6151578))

(declare-fun m!6151580 () Bool)

(assert (=> b!5093368 m!6151580))

(assert (=> b!5093290 d!1648688))

(declare-fun b!5093373 () Bool)

(declare-fun e!3176407 () Bool)

(declare-fun tp!1419846 () Bool)

(assert (=> b!5093373 (= e!3176407 (and tp_is_empty!37185 tp!1419846))))

(assert (=> b!5093292 (= tp!1419826 e!3176407)))

(assert (= (and b!5093292 (is-Cons!58551 (t!371630 input!1210))) b!5093373))

(declare-fun b!5093384 () Bool)

(declare-fun b_free!133263 () Bool)

(declare-fun b_next!134053 () Bool)

(assert (=> b!5093384 (= b_free!133263 (not b_next!134053))))

(declare-fun tp!1419857 () Bool)

(declare-fun b_and!350147 () Bool)

(assert (=> b!5093384 (= tp!1419857 b_and!350147)))

(declare-fun b_free!133265 () Bool)

(declare-fun b_next!134055 () Bool)

(assert (=> b!5093384 (= b_free!133265 (not b_next!134055))))

(declare-fun tp!1419855 () Bool)

(declare-fun b_and!350149 () Bool)

(assert (=> b!5093384 (= tp!1419855 b_and!350149)))

(declare-fun e!3176419 () Bool)

(assert (=> b!5093384 (= e!3176419 (and tp!1419857 tp!1419855))))

(declare-fun tp!1419858 () Bool)

(declare-fun b!5093383 () Bool)

(declare-fun e!3176416 () Bool)

(assert (=> b!5093383 (= e!3176416 (and tp!1419858 (inv!78055 (tag!9349 (h!65000 (t!371631 rulesArg!145)))) (inv!78058 (transformation!8485 (h!65000 (t!371631 rulesArg!145)))) e!3176419))))

(declare-fun b!5093382 () Bool)

(declare-fun e!3176418 () Bool)

(declare-fun tp!1419856 () Bool)

(assert (=> b!5093382 (= e!3176418 (and e!3176416 tp!1419856))))

(assert (=> b!5093294 (= tp!1419825 e!3176418)))

(assert (= b!5093383 b!5093384))

(assert (= b!5093382 b!5093383))

(assert (= (and b!5093294 (is-Cons!58552 (t!371631 rulesArg!145))) b!5093382))

(declare-fun m!6151582 () Bool)

(assert (=> b!5093383 m!6151582))

(declare-fun m!6151584 () Bool)

(assert (=> b!5093383 m!6151584))

(declare-fun b!5093396 () Bool)

(declare-fun e!3176422 () Bool)

(declare-fun tp!1419873 () Bool)

(declare-fun tp!1419872 () Bool)

(assert (=> b!5093396 (= e!3176422 (and tp!1419873 tp!1419872))))

(assert (=> b!5093290 (= tp!1419828 e!3176422)))

(declare-fun b!5093398 () Bool)

(declare-fun tp!1419869 () Bool)

(declare-fun tp!1419871 () Bool)

(assert (=> b!5093398 (= e!3176422 (and tp!1419869 tp!1419871))))

(declare-fun b!5093395 () Bool)

(assert (=> b!5093395 (= e!3176422 tp_is_empty!37185)))

(declare-fun b!5093397 () Bool)

(declare-fun tp!1419870 () Bool)

(assert (=> b!5093397 (= e!3176422 tp!1419870)))

(assert (= (and b!5093290 (is-ElementMatch!13960 (regex!8485 (h!65000 rulesArg!145)))) b!5093395))

(assert (= (and b!5093290 (is-Concat!22760 (regex!8485 (h!65000 rulesArg!145)))) b!5093396))

(assert (= (and b!5093290 (is-Star!13960 (regex!8485 (h!65000 rulesArg!145)))) b!5093397))

(assert (= (and b!5093290 (is-Union!13960 (regex!8485 (h!65000 rulesArg!145)))) b!5093398))

(push 1)

(assert (not d!1648688))

(assert (not b!5093364))

(assert (not b!5093335))

(assert (not b!5093373))

(assert (not b!5093382))

(assert (not b!5093368))

(assert (not b!5093356))

(assert (not b!5093333))

(assert (not d!1648684))

(assert (not b!5093357))

(assert (not b_next!134053))

(assert (not b!5093396))

(assert (not d!1648676))

(assert (not b_next!134047))

(assert b_and!350139)

(assert b_and!350147)

(assert tp_is_empty!37185)

(assert (not d!1648674))

(assert b_and!350141)

(assert b_and!350149)

(assert (not b!5093397))

(assert (not b_next!134055))

(assert (not b!5093383))

(assert (not b_next!134045))

(assert (not b!5093398))

(assert (not b!5093334))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!134047))

(assert b_and!350141)

(assert b_and!350149)

(assert (not b_next!134053))

(assert b_and!350139)

(assert b_and!350147)

(assert (not b_next!134055))

(assert (not b_next!134045))

(check-sat)

(pop 1)

