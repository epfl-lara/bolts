; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545914 () Bool)

(assert start!545914)

(declare-fun b_free!133537 () Bool)

(declare-fun b_next!134327 () Bool)

(assert (=> start!545914 (= b_free!133537 (not b_next!134327))))

(declare-fun tp!1447851 () Bool)

(declare-fun b_and!350509 () Bool)

(assert (=> start!545914 (= tp!1447851 b_and!350509)))

(declare-fun setIsEmpty!31343 () Bool)

(declare-fun setRes!31344 () Bool)

(assert (=> setIsEmpty!31343 setRes!31344))

(declare-fun b!5162321 () Bool)

(declare-fun res!2194691 () Bool)

(declare-fun e!3216458 () Bool)

(assert (=> b!5162321 (=> (not res!2194691) (not e!3216458))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!487 0))(
  ( (A!488 (val!24330 Int)) )
))
(declare-fun s2!450 () (InoxSet A!487))

(declare-fun p!1744 () Int)

(declare-fun forall!14054 ((InoxSet A!487) Int) Bool)

(assert (=> b!5162321 (= res!2194691 (forall!14054 s2!450 p!1744))))

(declare-fun res!2194692 () Bool)

(assert (=> start!545914 (=> (not res!2194692) (not e!3216458))))

(declare-fun s1!479 () (InoxSet A!487))

(assert (=> start!545914 (= res!2194692 (forall!14054 s1!479 p!1744))))

(assert (=> start!545914 e!3216458))

(declare-fun condSetEmpty!31344 () Bool)

(assert (=> start!545914 (= condSetEmpty!31344 (= s1!479 ((as const (Array A!487 Bool)) false)))))

(assert (=> start!545914 setRes!31344))

(assert (=> start!545914 tp!1447851))

(declare-fun condSetEmpty!31343 () Bool)

(assert (=> start!545914 (= condSetEmpty!31343 (= s2!450 ((as const (Array A!487 Bool)) false)))))

(declare-fun setRes!31343 () Bool)

(assert (=> start!545914 setRes!31343))

(declare-fun setIsEmpty!31344 () Bool)

(assert (=> setIsEmpty!31344 setRes!31343))

(declare-fun setNonEmpty!31343 () Bool)

(declare-fun tp!1447852 () Bool)

(declare-fun tp_is_empty!38239 () Bool)

(assert (=> setNonEmpty!31343 (= setRes!31343 (and tp!1447852 tp_is_empty!38239))))

(declare-fun setElem!31344 () A!487)

(declare-fun setRest!31344 () (InoxSet A!487))

(assert (=> setNonEmpty!31343 (= s2!450 ((_ map or) (store ((as const (Array A!487 Bool)) false) setElem!31344 true) setRest!31344))))

(declare-fun setNonEmpty!31344 () Bool)

(declare-fun tp!1447853 () Bool)

(assert (=> setNonEmpty!31344 (= setRes!31344 (and tp!1447853 tp_is_empty!38239))))

(declare-fun setElem!31343 () A!487)

(declare-fun setRest!31343 () (InoxSet A!487))

(assert (=> setNonEmpty!31344 (= s1!479 ((_ map or) (store ((as const (Array A!487 Bool)) false) setElem!31343 true) setRest!31343))))

(declare-fun e!3216457 () Bool)

(declare-fun b!5162322 () Bool)

(assert (=> b!5162322 (= e!3216457 (not (forall!14054 ((_ map or) s1!479 s2!450) p!1744)))))

(declare-datatypes ((List!59996 0))(
  ( (Nil!59872) (Cons!59872 (h!66320 A!487) (t!373085 List!59996)) )
))
(declare-fun lt!2122502 () List!59996)

(declare-fun content!10605 (List!59996) (InoxSet A!487))

(assert (=> b!5162322 (forall!14054 (content!10605 lt!2122502) p!1744)))

(declare-datatypes ((Unit!151303 0))(
  ( (Unit!151304) )
))
(declare-fun lt!2122503 () Unit!151303)

(declare-fun lemmaForallThenOnContent!42 (List!59996 Int) Unit!151303)

(assert (=> b!5162322 (= lt!2122503 (lemmaForallThenOnContent!42 lt!2122502 p!1744))))

(declare-fun b!5162323 () Bool)

(assert (=> b!5162323 (= e!3216458 e!3216457)))

(declare-fun res!2194690 () Bool)

(assert (=> b!5162323 (=> (not res!2194690) (not e!3216457))))

(declare-fun forall!14055 (List!59996 Int) Bool)

(assert (=> b!5162323 (= res!2194690 (forall!14055 lt!2122502 p!1744))))

(declare-fun lt!2122505 () List!59996)

(declare-fun lt!2122504 () List!59996)

(declare-fun ++!13084 (List!59996 List!59996) List!59996)

(assert (=> b!5162323 (= lt!2122502 (++!13084 lt!2122505 lt!2122504))))

(declare-fun lt!2122501 () Unit!151303)

(declare-fun lemmaConcatPreservesForall!148 (List!59996 List!59996 Int) Unit!151303)

(assert (=> b!5162323 (= lt!2122501 (lemmaConcatPreservesForall!148 lt!2122505 lt!2122504 p!1744))))

(declare-fun toList!8425 ((InoxSet A!487)) List!59996)

(assert (=> b!5162323 (= lt!2122504 (toList!8425 s2!450))))

(assert (=> b!5162323 (= lt!2122505 (toList!8425 s1!479))))

(assert (= (and start!545914 res!2194692) b!5162321))

(assert (= (and b!5162321 res!2194691) b!5162323))

(assert (= (and b!5162323 res!2194690) b!5162322))

(assert (= (and start!545914 condSetEmpty!31344) setIsEmpty!31343))

(assert (= (and start!545914 (not condSetEmpty!31344)) setNonEmpty!31344))

(assert (= (and start!545914 condSetEmpty!31343) setIsEmpty!31344))

(assert (= (and start!545914 (not condSetEmpty!31343)) setNonEmpty!31343))

(declare-fun m!6212906 () Bool)

(assert (=> b!5162321 m!6212906))

(declare-fun m!6212908 () Bool)

(assert (=> start!545914 m!6212908))

(declare-fun m!6212910 () Bool)

(assert (=> b!5162322 m!6212910))

(declare-fun m!6212912 () Bool)

(assert (=> b!5162322 m!6212912))

(assert (=> b!5162322 m!6212912))

(declare-fun m!6212914 () Bool)

(assert (=> b!5162322 m!6212914))

(declare-fun m!6212916 () Bool)

(assert (=> b!5162322 m!6212916))

(declare-fun m!6212918 () Bool)

(assert (=> b!5162323 m!6212918))

(declare-fun m!6212920 () Bool)

(assert (=> b!5162323 m!6212920))

(declare-fun m!6212922 () Bool)

(assert (=> b!5162323 m!6212922))

(declare-fun m!6212924 () Bool)

(assert (=> b!5162323 m!6212924))

(declare-fun m!6212926 () Bool)

(assert (=> b!5162323 m!6212926))

(check-sat (not start!545914) (not setNonEmpty!31344) (not b!5162323) (not b!5162321) (not setNonEmpty!31343) b_and!350509 (not b!5162322) tp_is_empty!38239 (not b_next!134327))
(check-sat b_and!350509 (not b_next!134327))
(get-model)

(declare-fun d!1665852 () Bool)

(declare-fun lt!2122508 () Bool)

(assert (=> d!1665852 (= lt!2122508 (forall!14055 (toList!8425 s1!479) p!1744))))

(declare-fun choose!38157 ((InoxSet A!487) Int) Bool)

(assert (=> d!1665852 (= lt!2122508 (choose!38157 s1!479 p!1744))))

(assert (=> d!1665852 (= (forall!14054 s1!479 p!1744) lt!2122508)))

(declare-fun bs!1202641 () Bool)

(assert (= bs!1202641 d!1665852))

(assert (=> bs!1202641 m!6212926))

(assert (=> bs!1202641 m!6212926))

(declare-fun m!6212928 () Bool)

(assert (=> bs!1202641 m!6212928))

(declare-fun m!6212930 () Bool)

(assert (=> bs!1202641 m!6212930))

(assert (=> start!545914 d!1665852))

(declare-fun d!1665856 () Bool)

(declare-fun lt!2122509 () Bool)

(assert (=> d!1665856 (= lt!2122509 (forall!14055 (toList!8425 ((_ map or) s1!479 s2!450)) p!1744))))

(assert (=> d!1665856 (= lt!2122509 (choose!38157 ((_ map or) s1!479 s2!450) p!1744))))

(assert (=> d!1665856 (= (forall!14054 ((_ map or) s1!479 s2!450) p!1744) lt!2122509)))

(declare-fun bs!1202642 () Bool)

(assert (= bs!1202642 d!1665856))

(declare-fun m!6212932 () Bool)

(assert (=> bs!1202642 m!6212932))

(assert (=> bs!1202642 m!6212932))

(declare-fun m!6212934 () Bool)

(assert (=> bs!1202642 m!6212934))

(declare-fun m!6212936 () Bool)

(assert (=> bs!1202642 m!6212936))

(assert (=> b!5162322 d!1665856))

(declare-fun d!1665858 () Bool)

(declare-fun lt!2122510 () Bool)

(assert (=> d!1665858 (= lt!2122510 (forall!14055 (toList!8425 (content!10605 lt!2122502)) p!1744))))

(assert (=> d!1665858 (= lt!2122510 (choose!38157 (content!10605 lt!2122502) p!1744))))

(assert (=> d!1665858 (= (forall!14054 (content!10605 lt!2122502) p!1744) lt!2122510)))

(declare-fun bs!1202643 () Bool)

(assert (= bs!1202643 d!1665858))

(assert (=> bs!1202643 m!6212912))

(declare-fun m!6212938 () Bool)

(assert (=> bs!1202643 m!6212938))

(assert (=> bs!1202643 m!6212938))

(declare-fun m!6212940 () Bool)

(assert (=> bs!1202643 m!6212940))

(assert (=> bs!1202643 m!6212912))

(declare-fun m!6212942 () Bool)

(assert (=> bs!1202643 m!6212942))

(assert (=> b!5162322 d!1665858))

(declare-fun d!1665860 () Bool)

(declare-fun c!888161 () Bool)

(get-info :version)

(assert (=> d!1665860 (= c!888161 ((_ is Nil!59872) lt!2122502))))

(declare-fun e!3216465 () (InoxSet A!487))

(assert (=> d!1665860 (= (content!10605 lt!2122502) e!3216465)))

(declare-fun b!5162336 () Bool)

(assert (=> b!5162336 (= e!3216465 ((as const (Array A!487 Bool)) false))))

(declare-fun b!5162337 () Bool)

(assert (=> b!5162337 (= e!3216465 ((_ map or) (store ((as const (Array A!487 Bool)) false) (h!66320 lt!2122502) true) (content!10605 (t!373085 lt!2122502))))))

(assert (= (and d!1665860 c!888161) b!5162336))

(assert (= (and d!1665860 (not c!888161)) b!5162337))

(declare-fun m!6212944 () Bool)

(assert (=> b!5162337 m!6212944))

(declare-fun m!6212946 () Bool)

(assert (=> b!5162337 m!6212946))

(assert (=> b!5162322 d!1665860))

(declare-fun d!1665862 () Bool)

(assert (=> d!1665862 (forall!14054 (content!10605 lt!2122502) p!1744)))

(declare-fun lt!2122518 () Unit!151303)

(declare-fun choose!38160 (List!59996 Int) Unit!151303)

(assert (=> d!1665862 (= lt!2122518 (choose!38160 lt!2122502 p!1744))))

(assert (=> d!1665862 (forall!14055 lt!2122502 p!1744)))

(assert (=> d!1665862 (= (lemmaForallThenOnContent!42 lt!2122502 p!1744) lt!2122518)))

(declare-fun bs!1202644 () Bool)

(assert (= bs!1202644 d!1665862))

(assert (=> bs!1202644 m!6212912))

(assert (=> bs!1202644 m!6212912))

(assert (=> bs!1202644 m!6212914))

(declare-fun m!6212962 () Bool)

(assert (=> bs!1202644 m!6212962))

(assert (=> bs!1202644 m!6212924))

(assert (=> b!5162322 d!1665862))

(declare-fun d!1665866 () Bool)

(declare-fun e!3216473 () Bool)

(assert (=> d!1665866 e!3216473))

(declare-fun res!2194704 () Bool)

(assert (=> d!1665866 (=> (not res!2194704) (not e!3216473))))

(declare-fun lt!2122525 () List!59996)

(declare-fun noDuplicate!1126 (List!59996) Bool)

(assert (=> d!1665866 (= res!2194704 (noDuplicate!1126 lt!2122525))))

(declare-fun choose!38161 ((InoxSet A!487)) List!59996)

(assert (=> d!1665866 (= lt!2122525 (choose!38161 s2!450))))

(assert (=> d!1665866 (= (toList!8425 s2!450) lt!2122525)))

(declare-fun b!5162347 () Bool)

(assert (=> b!5162347 (= e!3216473 (= (content!10605 lt!2122525) s2!450))))

(assert (= (and d!1665866 res!2194704) b!5162347))

(declare-fun m!6212976 () Bool)

(assert (=> d!1665866 m!6212976))

(declare-fun m!6212978 () Bool)

(assert (=> d!1665866 m!6212978))

(declare-fun m!6212980 () Bool)

(assert (=> b!5162347 m!6212980))

(assert (=> b!5162323 d!1665866))

(declare-fun d!1665872 () Bool)

(assert (=> d!1665872 (forall!14055 (++!13084 lt!2122505 lt!2122504) p!1744)))

(declare-fun lt!2122529 () Unit!151303)

(declare-fun choose!38162 (List!59996 List!59996 Int) Unit!151303)

(assert (=> d!1665872 (= lt!2122529 (choose!38162 lt!2122505 lt!2122504 p!1744))))

(assert (=> d!1665872 (forall!14055 lt!2122505 p!1744)))

(assert (=> d!1665872 (= (lemmaConcatPreservesForall!148 lt!2122505 lt!2122504 p!1744) lt!2122529)))

(declare-fun bs!1202646 () Bool)

(assert (= bs!1202646 d!1665872))

(assert (=> bs!1202646 m!6212922))

(assert (=> bs!1202646 m!6212922))

(declare-fun m!6212992 () Bool)

(assert (=> bs!1202646 m!6212992))

(declare-fun m!6212994 () Bool)

(assert (=> bs!1202646 m!6212994))

(declare-fun m!6212996 () Bool)

(assert (=> bs!1202646 m!6212996))

(assert (=> b!5162323 d!1665872))

(declare-fun d!1665878 () Bool)

(declare-fun res!2194716 () Bool)

(declare-fun e!3216485 () Bool)

(assert (=> d!1665878 (=> res!2194716 e!3216485)))

(assert (=> d!1665878 (= res!2194716 ((_ is Nil!59872) lt!2122502))))

(assert (=> d!1665878 (= (forall!14055 lt!2122502 p!1744) e!3216485)))

(declare-fun b!5162361 () Bool)

(declare-fun e!3216486 () Bool)

(assert (=> b!5162361 (= e!3216485 e!3216486)))

(declare-fun res!2194717 () Bool)

(assert (=> b!5162361 (=> (not res!2194717) (not e!3216486))))

(declare-fun dynLambda!23832 (Int A!487) Bool)

(assert (=> b!5162361 (= res!2194717 (dynLambda!23832 p!1744 (h!66320 lt!2122502)))))

(declare-fun b!5162362 () Bool)

(assert (=> b!5162362 (= e!3216486 (forall!14055 (t!373085 lt!2122502) p!1744))))

(assert (= (and d!1665878 (not res!2194716)) b!5162361))

(assert (= (and b!5162361 res!2194717) b!5162362))

(declare-fun b_lambda!200623 () Bool)

(assert (=> (not b_lambda!200623) (not b!5162361)))

(declare-fun t!373089 () Bool)

(declare-fun tb!261891 () Bool)

(assert (=> (and start!545914 (= p!1744 p!1744) t!373089) tb!261891))

(declare-fun result!330350 () Bool)

(assert (=> tb!261891 (= result!330350 true)))

(assert (=> b!5162361 t!373089))

(declare-fun b_and!350513 () Bool)

(assert (= b_and!350509 (and (=> t!373089 result!330350) b_and!350513)))

(declare-fun m!6213018 () Bool)

(assert (=> b!5162361 m!6213018))

(declare-fun m!6213020 () Bool)

(assert (=> b!5162362 m!6213020))

(assert (=> b!5162323 d!1665878))

(declare-fun b!5162377 () Bool)

(declare-fun e!3216494 () List!59996)

(assert (=> b!5162377 (= e!3216494 lt!2122504)))

(declare-fun b!5162380 () Bool)

(declare-fun lt!2122541 () List!59996)

(declare-fun e!3216495 () Bool)

(assert (=> b!5162380 (= e!3216495 (or (not (= lt!2122504 Nil!59872)) (= lt!2122541 lt!2122505)))))

(declare-fun d!1665888 () Bool)

(assert (=> d!1665888 e!3216495))

(declare-fun res!2194722 () Bool)

(assert (=> d!1665888 (=> (not res!2194722) (not e!3216495))))

(assert (=> d!1665888 (= res!2194722 (= (content!10605 lt!2122541) ((_ map or) (content!10605 lt!2122505) (content!10605 lt!2122504))))))

(assert (=> d!1665888 (= lt!2122541 e!3216494)))

(declare-fun c!888168 () Bool)

(assert (=> d!1665888 (= c!888168 ((_ is Nil!59872) lt!2122505))))

(assert (=> d!1665888 (= (++!13084 lt!2122505 lt!2122504) lt!2122541)))

(declare-fun b!5162379 () Bool)

(declare-fun res!2194723 () Bool)

(assert (=> b!5162379 (=> (not res!2194723) (not e!3216495))))

(declare-fun size!39571 (List!59996) Int)

(assert (=> b!5162379 (= res!2194723 (= (size!39571 lt!2122541) (+ (size!39571 lt!2122505) (size!39571 lt!2122504))))))

(declare-fun b!5162378 () Bool)

(assert (=> b!5162378 (= e!3216494 (Cons!59872 (h!66320 lt!2122505) (++!13084 (t!373085 lt!2122505) lt!2122504)))))

(assert (= (and d!1665888 c!888168) b!5162377))

(assert (= (and d!1665888 (not c!888168)) b!5162378))

(assert (= (and d!1665888 res!2194722) b!5162379))

(assert (= (and b!5162379 res!2194723) b!5162380))

(declare-fun m!6213028 () Bool)

(assert (=> d!1665888 m!6213028))

(declare-fun m!6213030 () Bool)

(assert (=> d!1665888 m!6213030))

(declare-fun m!6213032 () Bool)

(assert (=> d!1665888 m!6213032))

(declare-fun m!6213034 () Bool)

(assert (=> b!5162379 m!6213034))

(declare-fun m!6213036 () Bool)

(assert (=> b!5162379 m!6213036))

(declare-fun m!6213038 () Bool)

(assert (=> b!5162379 m!6213038))

(declare-fun m!6213040 () Bool)

(assert (=> b!5162378 m!6213040))

(assert (=> b!5162323 d!1665888))

(declare-fun d!1665892 () Bool)

(declare-fun e!3216496 () Bool)

(assert (=> d!1665892 e!3216496))

(declare-fun res!2194724 () Bool)

(assert (=> d!1665892 (=> (not res!2194724) (not e!3216496))))

(declare-fun lt!2122542 () List!59996)

(assert (=> d!1665892 (= res!2194724 (noDuplicate!1126 lt!2122542))))

(assert (=> d!1665892 (= lt!2122542 (choose!38161 s1!479))))

(assert (=> d!1665892 (= (toList!8425 s1!479) lt!2122542)))

(declare-fun b!5162381 () Bool)

(assert (=> b!5162381 (= e!3216496 (= (content!10605 lt!2122542) s1!479))))

(assert (= (and d!1665892 res!2194724) b!5162381))

(declare-fun m!6213042 () Bool)

(assert (=> d!1665892 m!6213042))

(declare-fun m!6213044 () Bool)

(assert (=> d!1665892 m!6213044))

(declare-fun m!6213046 () Bool)

(assert (=> b!5162381 m!6213046))

(assert (=> b!5162323 d!1665892))

(declare-fun d!1665894 () Bool)

(declare-fun lt!2122543 () Bool)

(assert (=> d!1665894 (= lt!2122543 (forall!14055 (toList!8425 s2!450) p!1744))))

(assert (=> d!1665894 (= lt!2122543 (choose!38157 s2!450 p!1744))))

(assert (=> d!1665894 (= (forall!14054 s2!450 p!1744) lt!2122543)))

(declare-fun bs!1202652 () Bool)

(assert (= bs!1202652 d!1665894))

(assert (=> bs!1202652 m!6212918))

(assert (=> bs!1202652 m!6212918))

(declare-fun m!6213048 () Bool)

(assert (=> bs!1202652 m!6213048))

(declare-fun m!6213050 () Bool)

(assert (=> bs!1202652 m!6213050))

(assert (=> b!5162321 d!1665894))

(declare-fun condSetEmpty!31351 () Bool)

(assert (=> setNonEmpty!31344 (= condSetEmpty!31351 (= setRest!31343 ((as const (Array A!487 Bool)) false)))))

(declare-fun setRes!31351 () Bool)

(assert (=> setNonEmpty!31344 (= tp!1447853 setRes!31351)))

(declare-fun setIsEmpty!31351 () Bool)

(assert (=> setIsEmpty!31351 setRes!31351))

(declare-fun setNonEmpty!31351 () Bool)

(declare-fun tp!1447860 () Bool)

(assert (=> setNonEmpty!31351 (= setRes!31351 (and tp!1447860 tp_is_empty!38239))))

(declare-fun setElem!31351 () A!487)

(declare-fun setRest!31351 () (InoxSet A!487))

(assert (=> setNonEmpty!31351 (= setRest!31343 ((_ map or) (store ((as const (Array A!487 Bool)) false) setElem!31351 true) setRest!31351))))

(assert (= (and setNonEmpty!31344 condSetEmpty!31351) setIsEmpty!31351))

(assert (= (and setNonEmpty!31344 (not condSetEmpty!31351)) setNonEmpty!31351))

(declare-fun condSetEmpty!31352 () Bool)

(assert (=> setNonEmpty!31343 (= condSetEmpty!31352 (= setRest!31344 ((as const (Array A!487 Bool)) false)))))

(declare-fun setRes!31352 () Bool)

(assert (=> setNonEmpty!31343 (= tp!1447852 setRes!31352)))

(declare-fun setIsEmpty!31352 () Bool)

(assert (=> setIsEmpty!31352 setRes!31352))

(declare-fun setNonEmpty!31352 () Bool)

(declare-fun tp!1447861 () Bool)

(assert (=> setNonEmpty!31352 (= setRes!31352 (and tp!1447861 tp_is_empty!38239))))

(declare-fun setElem!31352 () A!487)

(declare-fun setRest!31352 () (InoxSet A!487))

(assert (=> setNonEmpty!31352 (= setRest!31344 ((_ map or) (store ((as const (Array A!487 Bool)) false) setElem!31352 true) setRest!31352))))

(assert (= (and setNonEmpty!31343 condSetEmpty!31352) setIsEmpty!31352))

(assert (= (and setNonEmpty!31343 (not condSetEmpty!31352)) setNonEmpty!31352))

(declare-fun b_lambda!200627 () Bool)

(assert (= b_lambda!200623 (or (and start!545914 b_free!133537) b_lambda!200627)))

(check-sat (not d!1665894) (not d!1665856) (not setNonEmpty!31351) (not d!1665872) (not d!1665852) (not d!1665862) (not b!5162337) (not b!5162347) (not d!1665866) (not setNonEmpty!31352) b_and!350513 (not b!5162381) (not d!1665892) (not b!5162378) (not d!1665888) (not b!5162362) (not b!5162379) tp_is_empty!38239 (not b_lambda!200627) (not d!1665858) (not b_next!134327))
(check-sat b_and!350513 (not b_next!134327))
