; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13726 () Bool)

(assert start!13726)

(declare-fun b!132328 () Bool)

(declare-fun res!61579 () Bool)

(declare-fun e!76470 () Bool)

(assert (=> b!132328 (=> res!61579 e!76470)))

(declare-datatypes ((B!773 0))(
  ( (B!774 (val!872 Int)) )
))
(declare-datatypes ((List!2190 0))(
  ( (Nil!2184) (Cons!2184 (h!7581 B!773) (t!22776 List!2190)) )
))
(declare-fun lt!39990 () List!2190)

(declare-fun newList!20 () List!2190)

(declare-fun lt!39987 () List!2190)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!297 (List!2190) (InoxSet B!773))

(declare-fun ++!460 (List!2190 List!2190) List!2190)

(assert (=> b!132328 (= res!61579 (not (= (content!297 (++!460 lt!39987 newList!20)) (content!297 lt!39990))))))

(declare-fun b!132329 () Bool)

(declare-fun res!61587 () Bool)

(declare-fun e!76465 () Bool)

(assert (=> b!132329 (=> res!61587 e!76465)))

(declare-fun isPrefix!179 (List!2190 List!2190) Bool)

(assert (=> b!132329 (= res!61587 (not (isPrefix!179 lt!39987 lt!39990)))))

(declare-fun b!132330 () Bool)

(declare-fun e!76466 () Bool)

(declare-fun baseList!9 () List!2190)

(declare-fun contains!364 (List!2190 B!773) Bool)

(assert (=> b!132330 (= e!76466 (not (contains!364 baseList!9 (h!7581 newList!20))))))

(declare-fun b!132331 () Bool)

(declare-fun e!76469 () Bool)

(declare-fun tp_is_empty!1417 () Bool)

(declare-fun tp!70463 () Bool)

(assert (=> b!132331 (= e!76469 (and tp_is_empty!1417 tp!70463))))

(declare-fun b!132332 () Bool)

(declare-fun res!61580 () Bool)

(declare-fun e!76471 () Bool)

(assert (=> b!132332 (=> (not res!61580) (not e!76471))))

(assert (=> b!132332 (= res!61580 (not (contains!364 baseList!9 (h!7581 newList!20))))))

(declare-fun b!132334 () Bool)

(declare-fun e!76464 () Bool)

(assert (=> b!132334 (= e!76464 e!76465)))

(declare-fun res!61585 () Bool)

(assert (=> b!132334 (=> res!61585 e!76465)))

(declare-fun lt!39981 () List!2190)

(declare-fun subseq!51 (List!2190 List!2190) Bool)

(assert (=> b!132334 (= res!61585 (not (subseq!51 lt!39990 lt!39981)))))

(declare-fun lt!39986 () List!2190)

(assert (=> b!132334 (= lt!39986 lt!39981)))

(declare-fun lt!39983 () List!2190)

(assert (=> b!132334 (= lt!39981 (++!460 baseList!9 (++!460 lt!39983 (t!22776 newList!20))))))

(declare-datatypes ((Unit!1748 0))(
  ( (Unit!1749) )
))
(declare-fun lt!39989 () Unit!1748)

(declare-fun lemmaConcatAssociativity!140 (List!2190 List!2190 List!2190) Unit!1748)

(assert (=> b!132334 (= lt!39989 (lemmaConcatAssociativity!140 baseList!9 lt!39983 (t!22776 newList!20)))))

(declare-fun b!132335 () Bool)

(assert (=> b!132335 (= e!76471 (not e!76470))))

(declare-fun res!61586 () Bool)

(assert (=> b!132335 (=> res!61586 e!76470)))

(declare-fun lt!39982 () Bool)

(assert (=> b!132335 (= res!61586 lt!39982)))

(declare-fun e!76467 () Bool)

(assert (=> b!132335 e!76467))

(declare-fun res!61589 () Bool)

(assert (=> b!132335 (=> (not res!61589) (not e!76467))))

(assert (=> b!132335 (= res!61589 (not lt!39982))))

(declare-fun noDuplicate!80 (List!2190) Bool)

(assert (=> b!132335 (= lt!39982 (not (noDuplicate!80 lt!39990)))))

(declare-fun concatWithoutDuplicates!36 (List!2190 List!2190) List!2190)

(assert (=> b!132335 (= lt!39990 (concatWithoutDuplicates!36 lt!39987 (t!22776 newList!20)))))

(assert (=> b!132335 (noDuplicate!80 lt!39987)))

(declare-fun lt!39985 () Unit!1748)

(declare-fun lemmaAppendNewElementElementPreserves!20 (List!2190 B!773) Unit!1748)

(assert (=> b!132335 (= lt!39985 (lemmaAppendNewElementElementPreserves!20 baseList!9 (h!7581 newList!20)))))

(assert (=> b!132335 (isPrefix!179 baseList!9 lt!39987)))

(assert (=> b!132335 (= lt!39987 (++!460 baseList!9 lt!39983))))

(declare-fun lt!39984 () Unit!1748)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!102 (List!2190 List!2190) Unit!1748)

(assert (=> b!132335 (= lt!39984 (lemmaConcatTwoListThenFirstIsPrefix!102 baseList!9 lt!39983))))

(assert (=> b!132335 (= lt!39983 (Cons!2184 (h!7581 newList!20) Nil!2184))))

(declare-fun b!132336 () Bool)

(declare-fun res!61583 () Bool)

(assert (=> b!132336 (=> (not res!61583) (not e!76471))))

(get-info :version)

(assert (=> b!132336 (= res!61583 ((_ is Cons!2184) newList!20))))

(declare-fun b!132337 () Bool)

(declare-fun e!76468 () Bool)

(assert (=> b!132337 (= e!76468 (isPrefix!179 lt!39987 lt!39990))))

(declare-fun b!132338 () Bool)

(assert (=> b!132338 (= e!76467 e!76468)))

(declare-fun res!61581 () Bool)

(assert (=> b!132338 (=> (not res!61581) (not e!76468))))

(declare-fun lt!39980 () List!2190)

(assert (=> b!132338 (= res!61581 (= (content!297 lt!39980) (content!297 lt!39990)))))

(assert (=> b!132338 (= lt!39980 (++!460 lt!39987 (t!22776 newList!20)))))

(declare-fun b!132339 () Bool)

(declare-fun res!61584 () Bool)

(assert (=> b!132339 (=> (not res!61584) (not e!76468))))

(assert (=> b!132339 (= res!61584 (subseq!51 lt!39990 lt!39980))))

(declare-fun b!132340 () Bool)

(declare-fun ListPrimitiveSize!26 (List!2190) Int)

(assert (=> b!132340 (= e!76465 (< (ListPrimitiveSize!26 (t!22776 newList!20)) (ListPrimitiveSize!26 newList!20)))))

(assert (=> b!132340 (isPrefix!179 baseList!9 lt!39990)))

(declare-fun lt!39988 () Unit!1748)

(declare-fun lemmaRemoveLastConcatenatedPrefixStillPrefix!4 (List!2190 B!773 List!2190) Unit!1748)

(assert (=> b!132340 (= lt!39988 (lemmaRemoveLastConcatenatedPrefixStillPrefix!4 baseList!9 (h!7581 newList!20) lt!39990))))

(declare-fun b!132333 () Bool)

(declare-fun res!61588 () Bool)

(assert (=> b!132333 (=> (not res!61588) (not e!76471))))

(assert (=> b!132333 (= res!61588 e!76466)))

(declare-fun res!61590 () Bool)

(assert (=> b!132333 (=> res!61590 e!76466)))

(assert (=> b!132333 (= res!61590 (not ((_ is Cons!2184) newList!20)))))

(declare-fun res!61578 () Bool)

(assert (=> start!13726 (=> (not res!61578) (not e!76471))))

(assert (=> start!13726 (= res!61578 (noDuplicate!80 baseList!9))))

(assert (=> start!13726 e!76471))

(assert (=> start!13726 e!76469))

(declare-fun e!76463 () Bool)

(assert (=> start!13726 e!76463))

(declare-fun b!132341 () Bool)

(assert (=> b!132341 (= e!76470 e!76464)))

(declare-fun res!61582 () Bool)

(assert (=> b!132341 (=> res!61582 e!76464)))

(assert (=> b!132341 (= res!61582 (not (subseq!51 lt!39990 lt!39986)))))

(assert (=> b!132341 (= lt!39986 (++!460 lt!39987 (t!22776 newList!20)))))

(declare-fun b!132342 () Bool)

(declare-fun tp!70464 () Bool)

(assert (=> b!132342 (= e!76463 (and tp_is_empty!1417 tp!70464))))

(assert (= (and start!13726 res!61578) b!132333))

(assert (= (and b!132333 (not res!61590)) b!132330))

(assert (= (and b!132333 res!61588) b!132336))

(assert (= (and b!132336 res!61583) b!132332))

(assert (= (and b!132332 res!61580) b!132335))

(assert (= (and b!132335 res!61589) b!132338))

(assert (= (and b!132338 res!61581) b!132339))

(assert (= (and b!132339 res!61584) b!132337))

(assert (= (and b!132335 (not res!61586)) b!132328))

(assert (= (and b!132328 (not res!61579)) b!132341))

(assert (= (and b!132341 (not res!61582)) b!132334))

(assert (= (and b!132334 (not res!61585)) b!132329))

(assert (= (and b!132329 (not res!61587)) b!132340))

(assert (= (and start!13726 ((_ is Cons!2184) baseList!9)) b!132331))

(assert (= (and start!13726 ((_ is Cons!2184) newList!20)) b!132342))

(declare-fun m!117131 () Bool)

(assert (=> b!132334 m!117131))

(declare-fun m!117133 () Bool)

(assert (=> b!132334 m!117133))

(assert (=> b!132334 m!117133))

(declare-fun m!117135 () Bool)

(assert (=> b!132334 m!117135))

(declare-fun m!117137 () Bool)

(assert (=> b!132334 m!117137))

(declare-fun m!117139 () Bool)

(assert (=> b!132339 m!117139))

(declare-fun m!117141 () Bool)

(assert (=> b!132341 m!117141))

(declare-fun m!117143 () Bool)

(assert (=> b!132341 m!117143))

(declare-fun m!117145 () Bool)

(assert (=> b!132329 m!117145))

(declare-fun m!117147 () Bool)

(assert (=> b!132340 m!117147))

(declare-fun m!117149 () Bool)

(assert (=> b!132340 m!117149))

(declare-fun m!117151 () Bool)

(assert (=> b!132340 m!117151))

(declare-fun m!117153 () Bool)

(assert (=> b!132340 m!117153))

(declare-fun m!117155 () Bool)

(assert (=> start!13726 m!117155))

(declare-fun m!117157 () Bool)

(assert (=> b!132330 m!117157))

(declare-fun m!117159 () Bool)

(assert (=> b!132338 m!117159))

(declare-fun m!117161 () Bool)

(assert (=> b!132338 m!117161))

(assert (=> b!132338 m!117143))

(assert (=> b!132332 m!117157))

(declare-fun m!117163 () Bool)

(assert (=> b!132335 m!117163))

(declare-fun m!117165 () Bool)

(assert (=> b!132335 m!117165))

(declare-fun m!117167 () Bool)

(assert (=> b!132335 m!117167))

(declare-fun m!117169 () Bool)

(assert (=> b!132335 m!117169))

(declare-fun m!117171 () Bool)

(assert (=> b!132335 m!117171))

(declare-fun m!117173 () Bool)

(assert (=> b!132335 m!117173))

(declare-fun m!117175 () Bool)

(assert (=> b!132335 m!117175))

(assert (=> b!132337 m!117145))

(declare-fun m!117177 () Bool)

(assert (=> b!132328 m!117177))

(assert (=> b!132328 m!117177))

(declare-fun m!117179 () Bool)

(assert (=> b!132328 m!117179))

(assert (=> b!132328 m!117161))

(check-sat (not b!132341) (not b!132334) (not b!132337) tp_is_empty!1417 (not b!132328) (not b!132338) (not b!132330) (not b!132339) (not b!132340) (not b!132332) (not b!132329) (not b!132331) (not start!13726) (not b!132335) (not b!132342))
(check-sat)
(get-model)

(declare-fun d!31425 () Bool)

(declare-fun lt!39993 () Bool)

(assert (=> d!31425 (= lt!39993 (select (content!297 baseList!9) (h!7581 newList!20)))))

(declare-fun e!76476 () Bool)

(assert (=> d!31425 (= lt!39993 e!76476)))

(declare-fun res!61595 () Bool)

(assert (=> d!31425 (=> (not res!61595) (not e!76476))))

(assert (=> d!31425 (= res!61595 ((_ is Cons!2184) baseList!9))))

(assert (=> d!31425 (= (contains!364 baseList!9 (h!7581 newList!20)) lt!39993)))

(declare-fun b!132347 () Bool)

(declare-fun e!76477 () Bool)

(assert (=> b!132347 (= e!76476 e!76477)))

(declare-fun res!61596 () Bool)

(assert (=> b!132347 (=> res!61596 e!76477)))

(assert (=> b!132347 (= res!61596 (= (h!7581 baseList!9) (h!7581 newList!20)))))

(declare-fun b!132348 () Bool)

(assert (=> b!132348 (= e!76477 (contains!364 (t!22776 baseList!9) (h!7581 newList!20)))))

(assert (= (and d!31425 res!61595) b!132347))

(assert (= (and b!132347 (not res!61596)) b!132348))

(declare-fun m!117181 () Bool)

(assert (=> d!31425 m!117181))

(declare-fun m!117183 () Bool)

(assert (=> d!31425 m!117183))

(declare-fun m!117185 () Bool)

(assert (=> b!132348 m!117185))

(assert (=> b!132330 d!31425))

(declare-fun b!132364 () Bool)

(declare-fun e!76492 () Bool)

(declare-fun e!76493 () Bool)

(assert (=> b!132364 (= e!76492 e!76493)))

(declare-fun res!61612 () Bool)

(assert (=> b!132364 (=> res!61612 e!76493)))

(declare-fun e!76495 () Bool)

(assert (=> b!132364 (= res!61612 e!76495)))

(declare-fun res!61611 () Bool)

(assert (=> b!132364 (=> (not res!61611) (not e!76495))))

(assert (=> b!132364 (= res!61611 (= (h!7581 lt!39990) (h!7581 lt!39986)))))

(declare-fun b!132365 () Bool)

(assert (=> b!132365 (= e!76495 (subseq!51 (t!22776 lt!39990) (t!22776 lt!39986)))))

(declare-fun b!132363 () Bool)

(declare-fun e!76494 () Bool)

(assert (=> b!132363 (= e!76494 e!76492)))

(declare-fun res!61613 () Bool)

(assert (=> b!132363 (=> (not res!61613) (not e!76492))))

(assert (=> b!132363 (= res!61613 ((_ is Cons!2184) lt!39986))))

(declare-fun b!132366 () Bool)

(assert (=> b!132366 (= e!76493 (subseq!51 lt!39990 (t!22776 lt!39986)))))

(declare-fun d!31427 () Bool)

(declare-fun res!61614 () Bool)

(assert (=> d!31427 (=> res!61614 e!76494)))

(assert (=> d!31427 (= res!61614 ((_ is Nil!2184) lt!39990))))

(assert (=> d!31427 (= (subseq!51 lt!39990 lt!39986) e!76494)))

(assert (= (and d!31427 (not res!61614)) b!132363))

(assert (= (and b!132363 res!61613) b!132364))

(assert (= (and b!132364 res!61611) b!132365))

(assert (= (and b!132364 (not res!61612)) b!132366))

(declare-fun m!117193 () Bool)

(assert (=> b!132365 m!117193))

(declare-fun m!117195 () Bool)

(assert (=> b!132366 m!117195))

(assert (=> b!132341 d!31427))

(declare-fun b!132392 () Bool)

(declare-fun e!76511 () List!2190)

(assert (=> b!132392 (= e!76511 (Cons!2184 (h!7581 lt!39987) (++!460 (t!22776 lt!39987) (t!22776 newList!20))))))

(declare-fun b!132394 () Bool)

(declare-fun e!76510 () Bool)

(declare-fun lt!40005 () List!2190)

(assert (=> b!132394 (= e!76510 (or (not (= (t!22776 newList!20) Nil!2184)) (= lt!40005 lt!39987)))))

(declare-fun b!132393 () Bool)

(declare-fun res!61628 () Bool)

(assert (=> b!132393 (=> (not res!61628) (not e!76510))))

(declare-fun size!1987 (List!2190) Int)

(assert (=> b!132393 (= res!61628 (= (size!1987 lt!40005) (+ (size!1987 lt!39987) (size!1987 (t!22776 newList!20)))))))

(declare-fun b!132391 () Bool)

(assert (=> b!132391 (= e!76511 (t!22776 newList!20))))

(declare-fun d!31433 () Bool)

(assert (=> d!31433 e!76510))

(declare-fun res!61627 () Bool)

(assert (=> d!31433 (=> (not res!61627) (not e!76510))))

(assert (=> d!31433 (= res!61627 (= (content!297 lt!40005) ((_ map or) (content!297 lt!39987) (content!297 (t!22776 newList!20)))))))

(assert (=> d!31433 (= lt!40005 e!76511)))

(declare-fun c!28487 () Bool)

(assert (=> d!31433 (= c!28487 ((_ is Nil!2184) lt!39987))))

(assert (=> d!31433 (= (++!460 lt!39987 (t!22776 newList!20)) lt!40005)))

(assert (= (and d!31433 c!28487) b!132391))

(assert (= (and d!31433 (not c!28487)) b!132392))

(assert (= (and d!31433 res!61627) b!132393))

(assert (= (and b!132393 res!61628) b!132394))

(declare-fun m!117199 () Bool)

(assert (=> b!132392 m!117199))

(declare-fun m!117201 () Bool)

(assert (=> b!132393 m!117201))

(declare-fun m!117203 () Bool)

(assert (=> b!132393 m!117203))

(declare-fun m!117205 () Bool)

(assert (=> b!132393 m!117205))

(declare-fun m!117207 () Bool)

(assert (=> d!31433 m!117207))

(declare-fun m!117209 () Bool)

(assert (=> d!31433 m!117209))

(declare-fun m!117211 () Bool)

(assert (=> d!31433 m!117211))

(assert (=> b!132341 d!31433))

(declare-fun b!132396 () Bool)

(declare-fun e!76512 () Bool)

(declare-fun e!76513 () Bool)

(assert (=> b!132396 (= e!76512 e!76513)))

(declare-fun res!61630 () Bool)

(assert (=> b!132396 (=> res!61630 e!76513)))

(declare-fun e!76515 () Bool)

(assert (=> b!132396 (= res!61630 e!76515)))

(declare-fun res!61629 () Bool)

(assert (=> b!132396 (=> (not res!61629) (not e!76515))))

(assert (=> b!132396 (= res!61629 (= (h!7581 lt!39990) (h!7581 lt!39980)))))

(declare-fun b!132397 () Bool)

(assert (=> b!132397 (= e!76515 (subseq!51 (t!22776 lt!39990) (t!22776 lt!39980)))))

(declare-fun b!132395 () Bool)

(declare-fun e!76514 () Bool)

(assert (=> b!132395 (= e!76514 e!76512)))

(declare-fun res!61631 () Bool)

(assert (=> b!132395 (=> (not res!61631) (not e!76512))))

(assert (=> b!132395 (= res!61631 ((_ is Cons!2184) lt!39980))))

(declare-fun b!132398 () Bool)

(assert (=> b!132398 (= e!76513 (subseq!51 lt!39990 (t!22776 lt!39980)))))

(declare-fun d!31439 () Bool)

(declare-fun res!61632 () Bool)

(assert (=> d!31439 (=> res!61632 e!76514)))

(assert (=> d!31439 (= res!61632 ((_ is Nil!2184) lt!39990))))

(assert (=> d!31439 (= (subseq!51 lt!39990 lt!39980) e!76514)))

(assert (= (and d!31439 (not res!61632)) b!132395))

(assert (= (and b!132395 res!61631) b!132396))

(assert (= (and b!132396 res!61629) b!132397))

(assert (= (and b!132396 (not res!61630)) b!132398))

(declare-fun m!117213 () Bool)

(assert (=> b!132397 m!117213))

(declare-fun m!117215 () Bool)

(assert (=> b!132398 m!117215))

(assert (=> b!132339 d!31439))

(declare-fun d!31441 () Bool)

(declare-fun res!61641 () Bool)

(declare-fun e!76523 () Bool)

(assert (=> d!31441 (=> res!61641 e!76523)))

(assert (=> d!31441 (= res!61641 ((_ is Nil!2184) baseList!9))))

(assert (=> d!31441 (= (noDuplicate!80 baseList!9) e!76523)))

(declare-fun b!132407 () Bool)

(declare-fun e!76524 () Bool)

(assert (=> b!132407 (= e!76523 e!76524)))

(declare-fun res!61642 () Bool)

(assert (=> b!132407 (=> (not res!61642) (not e!76524))))

(assert (=> b!132407 (= res!61642 (not (contains!364 (t!22776 baseList!9) (h!7581 baseList!9))))))

(declare-fun b!132408 () Bool)

(assert (=> b!132408 (= e!76524 (noDuplicate!80 (t!22776 baseList!9)))))

(assert (= (and d!31441 (not res!61641)) b!132407))

(assert (= (and b!132407 res!61642) b!132408))

(declare-fun m!117231 () Bool)

(assert (=> b!132407 m!117231))

(declare-fun m!117233 () Bool)

(assert (=> b!132408 m!117233))

(assert (=> start!13726 d!31441))

(declare-fun b!132427 () Bool)

(declare-fun e!76542 () Bool)

(declare-fun e!76540 () Bool)

(assert (=> b!132427 (= e!76542 e!76540)))

(declare-fun res!61664 () Bool)

(assert (=> b!132427 (=> (not res!61664) (not e!76540))))

(assert (=> b!132427 (= res!61664 (not ((_ is Nil!2184) lt!39990)))))

(declare-fun b!132428 () Bool)

(declare-fun res!61663 () Bool)

(assert (=> b!132428 (=> (not res!61663) (not e!76540))))

(declare-fun head!526 (List!2190) B!773)

(assert (=> b!132428 (= res!61663 (= (head!526 lt!39987) (head!526 lt!39990)))))

(declare-fun d!31445 () Bool)

(declare-fun e!76541 () Bool)

(assert (=> d!31445 e!76541))

(declare-fun res!61662 () Bool)

(assert (=> d!31445 (=> res!61662 e!76541)))

(declare-fun lt!40013 () Bool)

(assert (=> d!31445 (= res!61662 (not lt!40013))))

(assert (=> d!31445 (= lt!40013 e!76542)))

(declare-fun res!61661 () Bool)

(assert (=> d!31445 (=> res!61661 e!76542)))

(assert (=> d!31445 (= res!61661 ((_ is Nil!2184) lt!39987))))

(assert (=> d!31445 (= (isPrefix!179 lt!39987 lt!39990) lt!40013)))

(declare-fun b!132430 () Bool)

(assert (=> b!132430 (= e!76541 (>= (size!1987 lt!39990) (size!1987 lt!39987)))))

(declare-fun b!132429 () Bool)

(declare-fun tail!272 (List!2190) List!2190)

(assert (=> b!132429 (= e!76540 (isPrefix!179 (tail!272 lt!39987) (tail!272 lt!39990)))))

(assert (= (and d!31445 (not res!61661)) b!132427))

(assert (= (and b!132427 res!61664) b!132428))

(assert (= (and b!132428 res!61663) b!132429))

(assert (= (and d!31445 (not res!61662)) b!132430))

(declare-fun m!117253 () Bool)

(assert (=> b!132428 m!117253))

(declare-fun m!117255 () Bool)

(assert (=> b!132428 m!117255))

(declare-fun m!117257 () Bool)

(assert (=> b!132430 m!117257))

(assert (=> b!132430 m!117203))

(declare-fun m!117259 () Bool)

(assert (=> b!132429 m!117259))

(declare-fun m!117261 () Bool)

(assert (=> b!132429 m!117261))

(assert (=> b!132429 m!117259))

(assert (=> b!132429 m!117261))

(declare-fun m!117263 () Bool)

(assert (=> b!132429 m!117263))

(assert (=> b!132329 d!31445))

(declare-fun d!31453 () Bool)

(declare-fun lt!40018 () Int)

(assert (=> d!31453 (>= lt!40018 0)))

(declare-fun e!76547 () Int)

(assert (=> d!31453 (= lt!40018 e!76547)))

(declare-fun c!28490 () Bool)

(assert (=> d!31453 (= c!28490 ((_ is Nil!2184) (t!22776 newList!20)))))

(assert (=> d!31453 (= (ListPrimitiveSize!26 (t!22776 newList!20)) lt!40018)))

(declare-fun b!132435 () Bool)

(assert (=> b!132435 (= e!76547 0)))

(declare-fun b!132436 () Bool)

(assert (=> b!132436 (= e!76547 (+ 1 (ListPrimitiveSize!26 (t!22776 (t!22776 newList!20)))))))

(assert (= (and d!31453 c!28490) b!132435))

(assert (= (and d!31453 (not c!28490)) b!132436))

(declare-fun m!117265 () Bool)

(assert (=> b!132436 m!117265))

(assert (=> b!132340 d!31453))

(declare-fun d!31455 () Bool)

(declare-fun lt!40019 () Int)

(assert (=> d!31455 (>= lt!40019 0)))

(declare-fun e!76548 () Int)

(assert (=> d!31455 (= lt!40019 e!76548)))

(declare-fun c!28491 () Bool)

(assert (=> d!31455 (= c!28491 ((_ is Nil!2184) newList!20))))

(assert (=> d!31455 (= (ListPrimitiveSize!26 newList!20) lt!40019)))

(declare-fun b!132443 () Bool)

(assert (=> b!132443 (= e!76548 0)))

(declare-fun b!132444 () Bool)

(assert (=> b!132444 (= e!76548 (+ 1 (ListPrimitiveSize!26 (t!22776 newList!20))))))

(assert (= (and d!31455 c!28491) b!132443))

(assert (= (and d!31455 (not c!28491)) b!132444))

(assert (=> b!132444 m!117147))

(assert (=> b!132340 d!31455))

(declare-fun b!132445 () Bool)

(declare-fun e!76551 () Bool)

(declare-fun e!76549 () Bool)

(assert (=> b!132445 (= e!76551 e!76549)))

(declare-fun res!61674 () Bool)

(assert (=> b!132445 (=> (not res!61674) (not e!76549))))

(assert (=> b!132445 (= res!61674 (not ((_ is Nil!2184) lt!39990)))))

(declare-fun b!132446 () Bool)

(declare-fun res!61673 () Bool)

(assert (=> b!132446 (=> (not res!61673) (not e!76549))))

(assert (=> b!132446 (= res!61673 (= (head!526 baseList!9) (head!526 lt!39990)))))

(declare-fun d!31457 () Bool)

(declare-fun e!76550 () Bool)

(assert (=> d!31457 e!76550))

(declare-fun res!61672 () Bool)

(assert (=> d!31457 (=> res!61672 e!76550)))

(declare-fun lt!40020 () Bool)

(assert (=> d!31457 (= res!61672 (not lt!40020))))

(assert (=> d!31457 (= lt!40020 e!76551)))

(declare-fun res!61671 () Bool)

(assert (=> d!31457 (=> res!61671 e!76551)))

(assert (=> d!31457 (= res!61671 ((_ is Nil!2184) baseList!9))))

(assert (=> d!31457 (= (isPrefix!179 baseList!9 lt!39990) lt!40020)))

(declare-fun b!132448 () Bool)

(assert (=> b!132448 (= e!76550 (>= (size!1987 lt!39990) (size!1987 baseList!9)))))

(declare-fun b!132447 () Bool)

(assert (=> b!132447 (= e!76549 (isPrefix!179 (tail!272 baseList!9) (tail!272 lt!39990)))))

(assert (= (and d!31457 (not res!61671)) b!132445))

(assert (= (and b!132445 res!61674) b!132446))

(assert (= (and b!132446 res!61673) b!132447))

(assert (= (and d!31457 (not res!61672)) b!132448))

(declare-fun m!117267 () Bool)

(assert (=> b!132446 m!117267))

(assert (=> b!132446 m!117255))

(assert (=> b!132448 m!117257))

(declare-fun m!117269 () Bool)

(assert (=> b!132448 m!117269))

(declare-fun m!117271 () Bool)

(assert (=> b!132447 m!117271))

(assert (=> b!132447 m!117261))

(assert (=> b!132447 m!117271))

(assert (=> b!132447 m!117261))

(declare-fun m!117273 () Bool)

(assert (=> b!132447 m!117273))

(assert (=> b!132340 d!31457))

(declare-fun d!31459 () Bool)

(assert (=> d!31459 (isPrefix!179 baseList!9 lt!39990)))

(declare-fun lt!40024 () Unit!1748)

(declare-fun choose!1682 (List!2190 B!773 List!2190) Unit!1748)

(assert (=> d!31459 (= lt!40024 (choose!1682 baseList!9 (h!7581 newList!20) lt!39990))))

(assert (=> d!31459 (isPrefix!179 (++!460 baseList!9 (Cons!2184 (h!7581 newList!20) Nil!2184)) lt!39990)))

(assert (=> d!31459 (= (lemmaRemoveLastConcatenatedPrefixStillPrefix!4 baseList!9 (h!7581 newList!20) lt!39990) lt!40024)))

(declare-fun bs!12651 () Bool)

(assert (= bs!12651 d!31459))

(assert (=> bs!12651 m!117151))

(declare-fun m!117287 () Bool)

(assert (=> bs!12651 m!117287))

(declare-fun m!117289 () Bool)

(assert (=> bs!12651 m!117289))

(assert (=> bs!12651 m!117289))

(declare-fun m!117291 () Bool)

(assert (=> bs!12651 m!117291))

(assert (=> b!132340 d!31459))

(assert (=> b!132332 d!31425))

(declare-fun d!31463 () Bool)

(declare-fun res!61678 () Bool)

(declare-fun e!76555 () Bool)

(assert (=> d!31463 (=> res!61678 e!76555)))

(assert (=> d!31463 (= res!61678 ((_ is Nil!2184) lt!39990))))

(assert (=> d!31463 (= (noDuplicate!80 lt!39990) e!76555)))

(declare-fun b!132456 () Bool)

(declare-fun e!76556 () Bool)

(assert (=> b!132456 (= e!76555 e!76556)))

(declare-fun res!61679 () Bool)

(assert (=> b!132456 (=> (not res!61679) (not e!76556))))

(assert (=> b!132456 (= res!61679 (not (contains!364 (t!22776 lt!39990) (h!7581 lt!39990))))))

(declare-fun b!132457 () Bool)

(assert (=> b!132457 (= e!76556 (noDuplicate!80 (t!22776 lt!39990)))))

(assert (= (and d!31463 (not res!61678)) b!132456))

(assert (= (and b!132456 res!61679) b!132457))

(declare-fun m!117293 () Bool)

(assert (=> b!132456 m!117293))

(declare-fun m!117295 () Bool)

(assert (=> b!132457 m!117295))

(assert (=> b!132335 d!31463))

(declare-fun d!31465 () Bool)

(declare-fun e!76563 () Bool)

(assert (=> d!31465 e!76563))

(declare-fun res!61693 () Bool)

(assert (=> d!31465 (=> (not res!61693) (not e!76563))))

(declare-fun lt!40033 () List!2190)

(assert (=> d!31465 (= res!61693 (noDuplicate!80 lt!40033))))

(declare-fun choose!1683 (List!2190 List!2190) List!2190)

(assert (=> d!31465 (= lt!40033 (choose!1683 lt!39987 (t!22776 newList!20)))))

(assert (=> d!31465 (noDuplicate!80 lt!39987)))

(assert (=> d!31465 (= (concatWithoutDuplicates!36 lt!39987 (t!22776 newList!20)) lt!40033)))

(declare-fun b!132472 () Bool)

(declare-fun res!61694 () Bool)

(assert (=> b!132472 (=> (not res!61694) (not e!76563))))

(assert (=> b!132472 (= res!61694 (= (content!297 (++!460 lt!39987 (t!22776 newList!20))) (content!297 lt!40033)))))

(declare-fun b!132473 () Bool)

(declare-fun res!61692 () Bool)

(assert (=> b!132473 (=> (not res!61692) (not e!76563))))

(assert (=> b!132473 (= res!61692 (subseq!51 lt!40033 (++!460 lt!39987 (t!22776 newList!20))))))

(declare-fun b!132474 () Bool)

(assert (=> b!132474 (= e!76563 (isPrefix!179 lt!39987 lt!40033))))

(assert (= (and d!31465 res!61693) b!132472))

(assert (= (and b!132472 res!61694) b!132473))

(assert (= (and b!132473 res!61692) b!132474))

(declare-fun m!117311 () Bool)

(assert (=> d!31465 m!117311))

(declare-fun m!117313 () Bool)

(assert (=> d!31465 m!117313))

(assert (=> d!31465 m!117173))

(assert (=> b!132472 m!117143))

(assert (=> b!132472 m!117143))

(declare-fun m!117315 () Bool)

(assert (=> b!132472 m!117315))

(declare-fun m!117317 () Bool)

(assert (=> b!132472 m!117317))

(assert (=> b!132473 m!117143))

(assert (=> b!132473 m!117143))

(declare-fun m!117319 () Bool)

(assert (=> b!132473 m!117319))

(declare-fun m!117321 () Bool)

(assert (=> b!132474 m!117321))

(assert (=> b!132335 d!31465))

(declare-fun b!132476 () Bool)

(declare-fun e!76565 () List!2190)

(assert (=> b!132476 (= e!76565 (Cons!2184 (h!7581 baseList!9) (++!460 (t!22776 baseList!9) lt!39983)))))

(declare-fun lt!40036 () List!2190)

(declare-fun b!132478 () Bool)

(declare-fun e!76564 () Bool)

(assert (=> b!132478 (= e!76564 (or (not (= lt!39983 Nil!2184)) (= lt!40036 baseList!9)))))

(declare-fun b!132477 () Bool)

(declare-fun res!61696 () Bool)

(assert (=> b!132477 (=> (not res!61696) (not e!76564))))

(assert (=> b!132477 (= res!61696 (= (size!1987 lt!40036) (+ (size!1987 baseList!9) (size!1987 lt!39983))))))

(declare-fun b!132475 () Bool)

(assert (=> b!132475 (= e!76565 lt!39983)))

(declare-fun d!31471 () Bool)

(assert (=> d!31471 e!76564))

(declare-fun res!61695 () Bool)

(assert (=> d!31471 (=> (not res!61695) (not e!76564))))

(assert (=> d!31471 (= res!61695 (= (content!297 lt!40036) ((_ map or) (content!297 baseList!9) (content!297 lt!39983))))))

(assert (=> d!31471 (= lt!40036 e!76565)))

(declare-fun c!28495 () Bool)

(assert (=> d!31471 (= c!28495 ((_ is Nil!2184) baseList!9))))

(assert (=> d!31471 (= (++!460 baseList!9 lt!39983) lt!40036)))

(assert (= (and d!31471 c!28495) b!132475))

(assert (= (and d!31471 (not c!28495)) b!132476))

(assert (= (and d!31471 res!61695) b!132477))

(assert (= (and b!132477 res!61696) b!132478))

(declare-fun m!117327 () Bool)

(assert (=> b!132476 m!117327))

(declare-fun m!117329 () Bool)

(assert (=> b!132477 m!117329))

(assert (=> b!132477 m!117269))

(declare-fun m!117331 () Bool)

(assert (=> b!132477 m!117331))

(declare-fun m!117333 () Bool)

(assert (=> d!31471 m!117333))

(assert (=> d!31471 m!117181))

(declare-fun m!117335 () Bool)

(assert (=> d!31471 m!117335))

(assert (=> b!132335 d!31471))

(declare-fun d!31475 () Bool)

(assert (=> d!31475 (isPrefix!179 baseList!9 (++!460 baseList!9 lt!39983))))

(declare-fun lt!40040 () Unit!1748)

(declare-fun choose!1684 (List!2190 List!2190) Unit!1748)

(assert (=> d!31475 (= lt!40040 (choose!1684 baseList!9 lt!39983))))

(assert (=> d!31475 (= (lemmaConcatTwoListThenFirstIsPrefix!102 baseList!9 lt!39983) lt!40040)))

(declare-fun bs!12654 () Bool)

(assert (= bs!12654 d!31475))

(assert (=> bs!12654 m!117163))

(assert (=> bs!12654 m!117163))

(declare-fun m!117341 () Bool)

(assert (=> bs!12654 m!117341))

(declare-fun m!117343 () Bool)

(assert (=> bs!12654 m!117343))

(assert (=> b!132335 d!31475))

(declare-fun d!31479 () Bool)

(declare-fun res!61707 () Bool)

(declare-fun e!76576 () Bool)

(assert (=> d!31479 (=> res!61707 e!76576)))

(assert (=> d!31479 (= res!61707 ((_ is Nil!2184) lt!39987))))

(assert (=> d!31479 (= (noDuplicate!80 lt!39987) e!76576)))

(declare-fun b!132489 () Bool)

(declare-fun e!76577 () Bool)

(assert (=> b!132489 (= e!76576 e!76577)))

(declare-fun res!61708 () Bool)

(assert (=> b!132489 (=> (not res!61708) (not e!76577))))

(assert (=> b!132489 (= res!61708 (not (contains!364 (t!22776 lt!39987) (h!7581 lt!39987))))))

(declare-fun b!132490 () Bool)

(assert (=> b!132490 (= e!76577 (noDuplicate!80 (t!22776 lt!39987)))))

(assert (= (and d!31479 (not res!61707)) b!132489))

(assert (= (and b!132489 res!61708) b!132490))

(declare-fun m!117345 () Bool)

(assert (=> b!132489 m!117345))

(declare-fun m!117347 () Bool)

(assert (=> b!132490 m!117347))

(assert (=> b!132335 d!31479))

(declare-fun d!31481 () Bool)

(assert (=> d!31481 (noDuplicate!80 (++!460 baseList!9 (Cons!2184 (h!7581 newList!20) Nil!2184)))))

(declare-fun lt!40044 () Unit!1748)

(declare-fun choose!1685 (List!2190 B!773) Unit!1748)

(assert (=> d!31481 (= lt!40044 (choose!1685 baseList!9 (h!7581 newList!20)))))

(assert (=> d!31481 (noDuplicate!80 baseList!9)))

(assert (=> d!31481 (= (lemmaAppendNewElementElementPreserves!20 baseList!9 (h!7581 newList!20)) lt!40044)))

(declare-fun bs!12655 () Bool)

(assert (= bs!12655 d!31481))

(assert (=> bs!12655 m!117289))

(assert (=> bs!12655 m!117289))

(declare-fun m!117369 () Bool)

(assert (=> bs!12655 m!117369))

(declare-fun m!117371 () Bool)

(assert (=> bs!12655 m!117371))

(assert (=> bs!12655 m!117155))

(assert (=> b!132335 d!31481))

(declare-fun b!132507 () Bool)

(declare-fun e!76592 () Bool)

(declare-fun e!76590 () Bool)

(assert (=> b!132507 (= e!76592 e!76590)))

(declare-fun res!61722 () Bool)

(assert (=> b!132507 (=> (not res!61722) (not e!76590))))

(assert (=> b!132507 (= res!61722 (not ((_ is Nil!2184) lt!39987)))))

(declare-fun b!132508 () Bool)

(declare-fun res!61721 () Bool)

(assert (=> b!132508 (=> (not res!61721) (not e!76590))))

(assert (=> b!132508 (= res!61721 (= (head!526 baseList!9) (head!526 lt!39987)))))

(declare-fun d!31489 () Bool)

(declare-fun e!76591 () Bool)

(assert (=> d!31489 e!76591))

(declare-fun res!61720 () Bool)

(assert (=> d!31489 (=> res!61720 e!76591)))

(declare-fun lt!40045 () Bool)

(assert (=> d!31489 (= res!61720 (not lt!40045))))

(assert (=> d!31489 (= lt!40045 e!76592)))

(declare-fun res!61719 () Bool)

(assert (=> d!31489 (=> res!61719 e!76592)))

(assert (=> d!31489 (= res!61719 ((_ is Nil!2184) baseList!9))))

(assert (=> d!31489 (= (isPrefix!179 baseList!9 lt!39987) lt!40045)))

(declare-fun b!132510 () Bool)

(assert (=> b!132510 (= e!76591 (>= (size!1987 lt!39987) (size!1987 baseList!9)))))

(declare-fun b!132509 () Bool)

(assert (=> b!132509 (= e!76590 (isPrefix!179 (tail!272 baseList!9) (tail!272 lt!39987)))))

(assert (= (and d!31489 (not res!61719)) b!132507))

(assert (= (and b!132507 res!61722) b!132508))

(assert (= (and b!132508 res!61721) b!132509))

(assert (= (and d!31489 (not res!61720)) b!132510))

(assert (=> b!132508 m!117267))

(assert (=> b!132508 m!117253))

(assert (=> b!132510 m!117203))

(assert (=> b!132510 m!117269))

(assert (=> b!132509 m!117271))

(assert (=> b!132509 m!117259))

(assert (=> b!132509 m!117271))

(assert (=> b!132509 m!117259))

(declare-fun m!117377 () Bool)

(assert (=> b!132509 m!117377))

(assert (=> b!132335 d!31489))

(declare-fun b!132516 () Bool)

(declare-fun e!76595 () Bool)

(declare-fun e!76596 () Bool)

(assert (=> b!132516 (= e!76595 e!76596)))

(declare-fun res!61724 () Bool)

(assert (=> b!132516 (=> res!61724 e!76596)))

(declare-fun e!76598 () Bool)

(assert (=> b!132516 (= res!61724 e!76598)))

(declare-fun res!61723 () Bool)

(assert (=> b!132516 (=> (not res!61723) (not e!76598))))

(assert (=> b!132516 (= res!61723 (= (h!7581 lt!39990) (h!7581 lt!39981)))))

(declare-fun b!132517 () Bool)

(assert (=> b!132517 (= e!76598 (subseq!51 (t!22776 lt!39990) (t!22776 lt!39981)))))

(declare-fun b!132515 () Bool)

(declare-fun e!76597 () Bool)

(assert (=> b!132515 (= e!76597 e!76595)))

(declare-fun res!61725 () Bool)

(assert (=> b!132515 (=> (not res!61725) (not e!76595))))

(assert (=> b!132515 (= res!61725 ((_ is Cons!2184) lt!39981))))

(declare-fun b!132518 () Bool)

(assert (=> b!132518 (= e!76596 (subseq!51 lt!39990 (t!22776 lt!39981)))))

(declare-fun d!31493 () Bool)

(declare-fun res!61726 () Bool)

(assert (=> d!31493 (=> res!61726 e!76597)))

(assert (=> d!31493 (= res!61726 ((_ is Nil!2184) lt!39990))))

(assert (=> d!31493 (= (subseq!51 lt!39990 lt!39981) e!76597)))

(assert (= (and d!31493 (not res!61726)) b!132515))

(assert (= (and b!132515 res!61725) b!132516))

(assert (= (and b!132516 res!61723) b!132517))

(assert (= (and b!132516 (not res!61724)) b!132518))

(declare-fun m!117383 () Bool)

(assert (=> b!132517 m!117383))

(declare-fun m!117385 () Bool)

(assert (=> b!132518 m!117385))

(assert (=> b!132334 d!31493))

(declare-fun e!76603 () List!2190)

(declare-fun b!132524 () Bool)

(assert (=> b!132524 (= e!76603 (Cons!2184 (h!7581 baseList!9) (++!460 (t!22776 baseList!9) (++!460 lt!39983 (t!22776 newList!20)))))))

(declare-fun lt!40047 () List!2190)

(declare-fun e!76602 () Bool)

(declare-fun b!132526 () Bool)

(assert (=> b!132526 (= e!76602 (or (not (= (++!460 lt!39983 (t!22776 newList!20)) Nil!2184)) (= lt!40047 baseList!9)))))

(declare-fun b!132525 () Bool)

(declare-fun res!61732 () Bool)

(assert (=> b!132525 (=> (not res!61732) (not e!76602))))

(assert (=> b!132525 (= res!61732 (= (size!1987 lt!40047) (+ (size!1987 baseList!9) (size!1987 (++!460 lt!39983 (t!22776 newList!20))))))))

(declare-fun b!132523 () Bool)

(assert (=> b!132523 (= e!76603 (++!460 lt!39983 (t!22776 newList!20)))))

(declare-fun d!31497 () Bool)

(assert (=> d!31497 e!76602))

(declare-fun res!61731 () Bool)

(assert (=> d!31497 (=> (not res!61731) (not e!76602))))

(assert (=> d!31497 (= res!61731 (= (content!297 lt!40047) ((_ map or) (content!297 baseList!9) (content!297 (++!460 lt!39983 (t!22776 newList!20))))))))

(assert (=> d!31497 (= lt!40047 e!76603)))

(declare-fun c!28501 () Bool)

(assert (=> d!31497 (= c!28501 ((_ is Nil!2184) baseList!9))))

(assert (=> d!31497 (= (++!460 baseList!9 (++!460 lt!39983 (t!22776 newList!20))) lt!40047)))

(assert (= (and d!31497 c!28501) b!132523))

(assert (= (and d!31497 (not c!28501)) b!132524))

(assert (= (and d!31497 res!61731) b!132525))

(assert (= (and b!132525 res!61732) b!132526))

(assert (=> b!132524 m!117133))

(declare-fun m!117393 () Bool)

(assert (=> b!132524 m!117393))

(declare-fun m!117395 () Bool)

(assert (=> b!132525 m!117395))

(assert (=> b!132525 m!117269))

(assert (=> b!132525 m!117133))

(declare-fun m!117397 () Bool)

(assert (=> b!132525 m!117397))

(declare-fun m!117399 () Bool)

(assert (=> d!31497 m!117399))

(assert (=> d!31497 m!117181))

(assert (=> d!31497 m!117133))

(declare-fun m!117401 () Bool)

(assert (=> d!31497 m!117401))

(assert (=> b!132334 d!31497))

(declare-fun b!132534 () Bool)

(declare-fun e!76608 () List!2190)

(assert (=> b!132534 (= e!76608 (Cons!2184 (h!7581 lt!39983) (++!460 (t!22776 lt!39983) (t!22776 newList!20))))))

(declare-fun lt!40049 () List!2190)

(declare-fun e!76607 () Bool)

(declare-fun b!132536 () Bool)

(assert (=> b!132536 (= e!76607 (or (not (= (t!22776 newList!20) Nil!2184)) (= lt!40049 lt!39983)))))

(declare-fun b!132535 () Bool)

(declare-fun res!61736 () Bool)

(assert (=> b!132535 (=> (not res!61736) (not e!76607))))

(assert (=> b!132535 (= res!61736 (= (size!1987 lt!40049) (+ (size!1987 lt!39983) (size!1987 (t!22776 newList!20)))))))

(declare-fun b!132533 () Bool)

(assert (=> b!132533 (= e!76608 (t!22776 newList!20))))

(declare-fun d!31503 () Bool)

(assert (=> d!31503 e!76607))

(declare-fun res!61735 () Bool)

(assert (=> d!31503 (=> (not res!61735) (not e!76607))))

(assert (=> d!31503 (= res!61735 (= (content!297 lt!40049) ((_ map or) (content!297 lt!39983) (content!297 (t!22776 newList!20)))))))

(assert (=> d!31503 (= lt!40049 e!76608)))

(declare-fun c!28504 () Bool)

(assert (=> d!31503 (= c!28504 ((_ is Nil!2184) lt!39983))))

(assert (=> d!31503 (= (++!460 lt!39983 (t!22776 newList!20)) lt!40049)))

(assert (= (and d!31503 c!28504) b!132533))

(assert (= (and d!31503 (not c!28504)) b!132534))

(assert (= (and d!31503 res!61735) b!132535))

(assert (= (and b!132535 res!61736) b!132536))

(declare-fun m!117413 () Bool)

(assert (=> b!132534 m!117413))

(declare-fun m!117417 () Bool)

(assert (=> b!132535 m!117417))

(assert (=> b!132535 m!117331))

(assert (=> b!132535 m!117205))

(declare-fun m!117421 () Bool)

(assert (=> d!31503 m!117421))

(assert (=> d!31503 m!117335))

(assert (=> d!31503 m!117211))

(assert (=> b!132334 d!31503))

(declare-fun d!31509 () Bool)

(assert (=> d!31509 (= (++!460 (++!460 baseList!9 lt!39983) (t!22776 newList!20)) (++!460 baseList!9 (++!460 lt!39983 (t!22776 newList!20))))))

(declare-fun lt!40056 () Unit!1748)

(declare-fun choose!1687 (List!2190 List!2190 List!2190) Unit!1748)

(assert (=> d!31509 (= lt!40056 (choose!1687 baseList!9 lt!39983 (t!22776 newList!20)))))

(assert (=> d!31509 (= (lemmaConcatAssociativity!140 baseList!9 lt!39983 (t!22776 newList!20)) lt!40056)))

(declare-fun bs!12656 () Bool)

(assert (= bs!12656 d!31509))

(assert (=> bs!12656 m!117163))

(declare-fun m!117439 () Bool)

(assert (=> bs!12656 m!117439))

(assert (=> bs!12656 m!117163))

(declare-fun m!117441 () Bool)

(assert (=> bs!12656 m!117441))

(assert (=> bs!12656 m!117133))

(assert (=> bs!12656 m!117135))

(assert (=> bs!12656 m!117133))

(assert (=> b!132334 d!31509))

(declare-fun d!31515 () Bool)

(declare-fun c!28509 () Bool)

(assert (=> d!31515 (= c!28509 ((_ is Nil!2184) lt!39980))))

(declare-fun e!76625 () (InoxSet B!773))

(assert (=> d!31515 (= (content!297 lt!39980) e!76625)))

(declare-fun b!132561 () Bool)

(assert (=> b!132561 (= e!76625 ((as const (Array B!773 Bool)) false))))

(declare-fun b!132562 () Bool)

(assert (=> b!132562 (= e!76625 ((_ map or) (store ((as const (Array B!773 Bool)) false) (h!7581 lt!39980) true) (content!297 (t!22776 lt!39980))))))

(assert (= (and d!31515 c!28509) b!132561))

(assert (= (and d!31515 (not c!28509)) b!132562))

(declare-fun m!117451 () Bool)

(assert (=> b!132562 m!117451))

(declare-fun m!117453 () Bool)

(assert (=> b!132562 m!117453))

(assert (=> b!132338 d!31515))

(declare-fun d!31519 () Bool)

(declare-fun c!28510 () Bool)

(assert (=> d!31519 (= c!28510 ((_ is Nil!2184) lt!39990))))

(declare-fun e!76626 () (InoxSet B!773))

(assert (=> d!31519 (= (content!297 lt!39990) e!76626)))

(declare-fun b!132563 () Bool)

(assert (=> b!132563 (= e!76626 ((as const (Array B!773 Bool)) false))))

(declare-fun b!132564 () Bool)

(assert (=> b!132564 (= e!76626 ((_ map or) (store ((as const (Array B!773 Bool)) false) (h!7581 lt!39990) true) (content!297 (t!22776 lt!39990))))))

(assert (= (and d!31519 c!28510) b!132563))

(assert (= (and d!31519 (not c!28510)) b!132564))

(declare-fun m!117455 () Bool)

(assert (=> b!132564 m!117455))

(declare-fun m!117457 () Bool)

(assert (=> b!132564 m!117457))

(assert (=> b!132338 d!31519))

(assert (=> b!132338 d!31433))

(declare-fun d!31521 () Bool)

(declare-fun c!28511 () Bool)

(assert (=> d!31521 (= c!28511 ((_ is Nil!2184) (++!460 lt!39987 newList!20)))))

(declare-fun e!76627 () (InoxSet B!773))

(assert (=> d!31521 (= (content!297 (++!460 lt!39987 newList!20)) e!76627)))

(declare-fun b!132565 () Bool)

(assert (=> b!132565 (= e!76627 ((as const (Array B!773 Bool)) false))))

(declare-fun b!132566 () Bool)

(assert (=> b!132566 (= e!76627 ((_ map or) (store ((as const (Array B!773 Bool)) false) (h!7581 (++!460 lt!39987 newList!20)) true) (content!297 (t!22776 (++!460 lt!39987 newList!20)))))))

(assert (= (and d!31521 c!28511) b!132565))

(assert (= (and d!31521 (not c!28511)) b!132566))

(declare-fun m!117459 () Bool)

(assert (=> b!132566 m!117459))

(declare-fun m!117461 () Bool)

(assert (=> b!132566 m!117461))

(assert (=> b!132328 d!31521))

(declare-fun b!132568 () Bool)

(declare-fun e!76629 () List!2190)

(assert (=> b!132568 (= e!76629 (Cons!2184 (h!7581 lt!39987) (++!460 (t!22776 lt!39987) newList!20)))))

(declare-fun lt!40058 () List!2190)

(declare-fun e!76628 () Bool)

(declare-fun b!132570 () Bool)

(assert (=> b!132570 (= e!76628 (or (not (= newList!20 Nil!2184)) (= lt!40058 lt!39987)))))

(declare-fun b!132569 () Bool)

(declare-fun res!61748 () Bool)

(assert (=> b!132569 (=> (not res!61748) (not e!76628))))

(assert (=> b!132569 (= res!61748 (= (size!1987 lt!40058) (+ (size!1987 lt!39987) (size!1987 newList!20))))))

(declare-fun b!132567 () Bool)

(assert (=> b!132567 (= e!76629 newList!20)))

(declare-fun d!31523 () Bool)

(assert (=> d!31523 e!76628))

(declare-fun res!61747 () Bool)

(assert (=> d!31523 (=> (not res!61747) (not e!76628))))

(assert (=> d!31523 (= res!61747 (= (content!297 lt!40058) ((_ map or) (content!297 lt!39987) (content!297 newList!20))))))

(assert (=> d!31523 (= lt!40058 e!76629)))

(declare-fun c!28512 () Bool)

(assert (=> d!31523 (= c!28512 ((_ is Nil!2184) lt!39987))))

(assert (=> d!31523 (= (++!460 lt!39987 newList!20) lt!40058)))

(assert (= (and d!31523 c!28512) b!132567))

(assert (= (and d!31523 (not c!28512)) b!132568))

(assert (= (and d!31523 res!61747) b!132569))

(assert (= (and b!132569 res!61748) b!132570))

(declare-fun m!117463 () Bool)

(assert (=> b!132568 m!117463))

(declare-fun m!117465 () Bool)

(assert (=> b!132569 m!117465))

(assert (=> b!132569 m!117203))

(declare-fun m!117467 () Bool)

(assert (=> b!132569 m!117467))

(declare-fun m!117469 () Bool)

(assert (=> d!31523 m!117469))

(assert (=> d!31523 m!117209))

(declare-fun m!117471 () Bool)

(assert (=> d!31523 m!117471))

(assert (=> b!132328 d!31523))

(assert (=> b!132328 d!31519))

(assert (=> b!132337 d!31445))

(declare-fun b!132575 () Bool)

(declare-fun e!76632 () Bool)

(declare-fun tp!70471 () Bool)

(assert (=> b!132575 (= e!76632 (and tp_is_empty!1417 tp!70471))))

(assert (=> b!132331 (= tp!70463 e!76632)))

(assert (= (and b!132331 ((_ is Cons!2184) (t!22776 baseList!9))) b!132575))

(declare-fun b!132576 () Bool)

(declare-fun e!76633 () Bool)

(declare-fun tp!70472 () Bool)

(assert (=> b!132576 (= e!76633 (and tp_is_empty!1417 tp!70472))))

(assert (=> b!132342 (= tp!70464 e!76633)))

(assert (= (and b!132342 ((_ is Cons!2184) (t!22776 newList!20))) b!132576))

(check-sat (not b!132428) (not b!132472) (not b!132525) (not b!132517) (not b!132562) (not b!132365) (not b!132348) (not b!132489) (not b!132408) (not b!132534) (not b!132393) (not d!31475) (not b!132535) (not b!132397) (not b!132436) (not b!132448) (not b!132566) (not b!132477) (not b!132457) (not b!132392) (not b!132474) (not b!132430) (not b!132446) (not b!132564) (not b!132398) (not b!132510) (not b!132518) (not d!31509) (not b!132569) (not d!31425) (not d!31433) (not b!132524) tp_is_empty!1417 (not d!31503) (not b!132444) (not d!31471) (not d!31459) (not b!132509) (not b!132473) (not b!132456) (not d!31523) (not b!132508) (not b!132576) (not b!132575) (not b!132429) (not b!132447) (not d!31497) (not b!132407) (not b!132366) (not d!31481) (not b!132490) (not d!31465) (not b!132476) (not b!132568))
(check-sat)
