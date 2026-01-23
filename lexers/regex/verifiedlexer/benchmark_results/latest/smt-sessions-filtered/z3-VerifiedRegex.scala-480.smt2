; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13526 () Bool)

(assert start!13526)

(declare-fun b!130767 () Bool)

(declare-fun e!75396 () Bool)

(declare-datatypes ((B!741 0))(
  ( (B!742 (val!856 Int)) )
))
(declare-datatypes ((List!2174 0))(
  ( (Nil!2168) (Cons!2168 (h!7565 B!741) (t!22760 List!2174)) )
))
(declare-fun baseList!9 () List!2174)

(declare-fun newList!20 () List!2174)

(declare-fun contains!348 (List!2174 B!741) Bool)

(assert (=> b!130767 (= e!75396 (not (contains!348 baseList!9 (h!7565 newList!20))))))

(declare-fun b!130768 () Bool)

(declare-fun res!60509 () Bool)

(declare-fun e!75397 () Bool)

(assert (=> b!130768 (=> (not res!60509) (not e!75397))))

(assert (=> b!130768 (= res!60509 (not (contains!348 baseList!9 (h!7565 newList!20))))))

(declare-fun res!60516 () Bool)

(assert (=> start!13526 (=> (not res!60516) (not e!75397))))

(declare-fun noDuplicate!64 (List!2174) Bool)

(assert (=> start!13526 (= res!60516 (noDuplicate!64 baseList!9))))

(assert (=> start!13526 e!75397))

(declare-fun e!75393 () Bool)

(assert (=> start!13526 e!75393))

(declare-fun e!75391 () Bool)

(assert (=> start!13526 e!75391))

(declare-fun b!130769 () Bool)

(declare-fun e!75394 () Bool)

(assert (=> b!130769 (= e!75397 (not e!75394))))

(declare-fun res!60512 () Bool)

(assert (=> b!130769 (=> res!60512 e!75394)))

(declare-fun lt!39415 () Bool)

(assert (=> b!130769 (= res!60512 lt!39415)))

(declare-fun e!75392 () Bool)

(assert (=> b!130769 e!75392))

(declare-fun res!60518 () Bool)

(assert (=> b!130769 (=> (not res!60518) (not e!75392))))

(assert (=> b!130769 (= res!60518 (not lt!39415))))

(declare-fun lt!39411 () List!2174)

(assert (=> b!130769 (= lt!39415 (not (noDuplicate!64 lt!39411)))))

(declare-fun lt!39410 () List!2174)

(declare-fun concatWithoutDuplicates!26 (List!2174 List!2174) List!2174)

(assert (=> b!130769 (= lt!39411 (concatWithoutDuplicates!26 lt!39410 (t!22760 newList!20)))))

(assert (=> b!130769 (noDuplicate!64 lt!39410)))

(declare-datatypes ((Unit!1720 0))(
  ( (Unit!1721) )
))
(declare-fun lt!39414 () Unit!1720)

(declare-fun lemmaAppendNewElementElementPreserves!12 (List!2174 B!741) Unit!1720)

(assert (=> b!130769 (= lt!39414 (lemmaAppendNewElementElementPreserves!12 baseList!9 (h!7565 newList!20)))))

(declare-fun isPrefix!167 (List!2174 List!2174) Bool)

(assert (=> b!130769 (isPrefix!167 baseList!9 lt!39410)))

(declare-fun lt!39416 () List!2174)

(declare-fun ++!448 (List!2174 List!2174) List!2174)

(assert (=> b!130769 (= lt!39410 (++!448 baseList!9 lt!39416))))

(declare-fun lt!39413 () Unit!1720)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!94 (List!2174 List!2174) Unit!1720)

(assert (=> b!130769 (= lt!39413 (lemmaConcatTwoListThenFirstIsPrefix!94 baseList!9 lt!39416))))

(assert (=> b!130769 (= lt!39416 (Cons!2168 (h!7565 newList!20) Nil!2168))))

(declare-fun b!130770 () Bool)

(declare-fun tp_is_empty!1385 () Bool)

(declare-fun tp!70318 () Bool)

(assert (=> b!130770 (= e!75393 (and tp_is_empty!1385 tp!70318))))

(declare-fun b!130771 () Bool)

(declare-fun e!75395 () Bool)

(assert (=> b!130771 (= e!75392 e!75395)))

(declare-fun res!60513 () Bool)

(assert (=> b!130771 (=> (not res!60513) (not e!75395))))

(declare-fun lt!39412 () List!2174)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!283 (List!2174) (InoxSet B!741))

(assert (=> b!130771 (= res!60513 (= (content!283 lt!39412) (content!283 lt!39411)))))

(assert (=> b!130771 (= lt!39412 (++!448 lt!39410 (t!22760 newList!20)))))

(declare-fun b!130772 () Bool)

(declare-fun res!60511 () Bool)

(assert (=> b!130772 (=> res!60511 e!75394)))

(assert (=> b!130772 (= res!60511 (not (= (content!283 (++!448 lt!39410 newList!20)) (content!283 lt!39411))))))

(declare-fun b!130773 () Bool)

(declare-fun subseq!39 (List!2174 List!2174) Bool)

(assert (=> b!130773 (= e!75394 (subseq!39 lt!39411 (++!448 lt!39410 (t!22760 newList!20))))))

(declare-fun b!130774 () Bool)

(declare-fun res!60515 () Bool)

(assert (=> b!130774 (=> (not res!60515) (not e!75395))))

(assert (=> b!130774 (= res!60515 (subseq!39 lt!39411 lt!39412))))

(declare-fun b!130775 () Bool)

(declare-fun res!60510 () Bool)

(assert (=> b!130775 (=> (not res!60510) (not e!75397))))

(get-info :version)

(assert (=> b!130775 (= res!60510 ((_ is Cons!2168) newList!20))))

(declare-fun b!130776 () Bool)

(declare-fun tp!70317 () Bool)

(assert (=> b!130776 (= e!75391 (and tp_is_empty!1385 tp!70317))))

(declare-fun b!130777 () Bool)

(assert (=> b!130777 (= e!75395 (isPrefix!167 lt!39410 lt!39411))))

(declare-fun b!130778 () Bool)

(declare-fun res!60517 () Bool)

(assert (=> b!130778 (=> (not res!60517) (not e!75397))))

(assert (=> b!130778 (= res!60517 e!75396)))

(declare-fun res!60514 () Bool)

(assert (=> b!130778 (=> res!60514 e!75396)))

(assert (=> b!130778 (= res!60514 (not ((_ is Cons!2168) newList!20)))))

(assert (= (and start!13526 res!60516) b!130778))

(assert (= (and b!130778 (not res!60514)) b!130767))

(assert (= (and b!130778 res!60517) b!130775))

(assert (= (and b!130775 res!60510) b!130768))

(assert (= (and b!130768 res!60509) b!130769))

(assert (= (and b!130769 res!60518) b!130771))

(assert (= (and b!130771 res!60513) b!130774))

(assert (= (and b!130774 res!60515) b!130777))

(assert (= (and b!130769 (not res!60512)) b!130772))

(assert (= (and b!130772 (not res!60511)) b!130773))

(assert (= (and start!13526 ((_ is Cons!2168) baseList!9)) b!130770))

(assert (= (and start!13526 ((_ is Cons!2168) newList!20)) b!130776))

(declare-fun m!115459 () Bool)

(assert (=> b!130774 m!115459))

(declare-fun m!115461 () Bool)

(assert (=> b!130767 m!115461))

(declare-fun m!115463 () Bool)

(assert (=> b!130769 m!115463))

(declare-fun m!115465 () Bool)

(assert (=> b!130769 m!115465))

(declare-fun m!115467 () Bool)

(assert (=> b!130769 m!115467))

(declare-fun m!115469 () Bool)

(assert (=> b!130769 m!115469))

(declare-fun m!115471 () Bool)

(assert (=> b!130769 m!115471))

(declare-fun m!115473 () Bool)

(assert (=> b!130769 m!115473))

(declare-fun m!115475 () Bool)

(assert (=> b!130769 m!115475))

(declare-fun m!115477 () Bool)

(assert (=> b!130777 m!115477))

(declare-fun m!115479 () Bool)

(assert (=> start!13526 m!115479))

(assert (=> b!130768 m!115461))

(declare-fun m!115481 () Bool)

(assert (=> b!130772 m!115481))

(assert (=> b!130772 m!115481))

(declare-fun m!115483 () Bool)

(assert (=> b!130772 m!115483))

(declare-fun m!115485 () Bool)

(assert (=> b!130772 m!115485))

(declare-fun m!115487 () Bool)

(assert (=> b!130773 m!115487))

(assert (=> b!130773 m!115487))

(declare-fun m!115489 () Bool)

(assert (=> b!130773 m!115489))

(declare-fun m!115491 () Bool)

(assert (=> b!130771 m!115491))

(assert (=> b!130771 m!115485))

(assert (=> b!130771 m!115487))

(check-sat (not b!130777) (not b!130770) (not b!130774) (not start!13526) tp_is_empty!1385 (not b!130767) (not b!130773) (not b!130772) (not b!130776) (not b!130771) (not b!130768) (not b!130769))
(check-sat)
