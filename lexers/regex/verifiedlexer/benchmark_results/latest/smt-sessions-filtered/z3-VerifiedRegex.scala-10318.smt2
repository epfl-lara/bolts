; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536354 () Bool)

(assert start!536354)

(declare-fun b!5090326 () Bool)

(declare-fun e!3174602 () Bool)

(declare-fun i!607 () Int)

(declare-datatypes ((T!105538 0))(
  ( (T!105539 (val!23712 Int)) )
))
(declare-datatypes ((List!58637 0))(
  ( (Nil!58513) (Cons!58513 (h!64961 T!105538) (t!371536 List!58637)) )
))
(declare-datatypes ((IArray!31317 0))(
  ( (IArray!31318 (innerList!15716 List!58637)) )
))
(declare-datatypes ((Conc!15628 0))(
  ( (Node!15628 (left!42914 Conc!15628) (right!43244 Conc!15628) (csize!31486 Int) (cheight!15839 Int)) (Leaf!25947 (xs!19010 IArray!31317) (csize!31487 Int)) (Empty!15628) )
))
(declare-fun t!3643 () Conc!15628)

(declare-fun size!39198 (List!58637) Int)

(declare-fun list!19088 (Conc!15628) List!58637)

(assert (=> b!5090326 (= e!3174602 (>= i!607 (size!39198 (list!19088 t!3643))))))

(declare-fun b!5090327 () Bool)

(declare-fun tp!1419029 () Bool)

(declare-fun e!3174600 () Bool)

(declare-fun tp!1419030 () Bool)

(declare-fun inv!77894 (Conc!15628) Bool)

(assert (=> b!5090327 (= e!3174600 (and (inv!77894 (left!42914 t!3643)) tp!1419029 (inv!77894 (right!43244 t!3643)) tp!1419030))))

(declare-fun b!5090328 () Bool)

(declare-fun e!3174601 () Bool)

(declare-fun tp!1419031 () Bool)

(assert (=> b!5090328 (= e!3174601 tp!1419031)))

(declare-fun b!5090329 () Bool)

(declare-fun res!2166662 () Bool)

(assert (=> b!5090329 (=> (not res!2166662) (not e!3174602))))

(get-info :version)

(assert (=> b!5090329 (= res!2166662 (and (not ((_ is Leaf!25947) t!3643)) (not ((_ is Node!15628) t!3643))))))

(declare-fun b!5090330 () Bool)

(declare-fun res!2166660 () Bool)

(assert (=> b!5090330 (=> (not res!2166660) (not e!3174602))))

(declare-fun size!39199 (Conc!15628) Int)

(assert (=> b!5090330 (= res!2166660 (< i!607 (size!39199 t!3643)))))

(declare-fun b!5090325 () Bool)

(declare-fun inv!77895 (IArray!31317) Bool)

(assert (=> b!5090325 (= e!3174600 (and (inv!77895 (xs!19010 t!3643)) e!3174601))))

(declare-fun res!2166661 () Bool)

(assert (=> start!536354 (=> (not res!2166661) (not e!3174602))))

(assert (=> start!536354 (= res!2166661 (<= 0 i!607))))

(assert (=> start!536354 e!3174602))

(assert (=> start!536354 true))

(assert (=> start!536354 (and (inv!77894 t!3643) e!3174600)))

(assert (= (and start!536354 res!2166661) b!5090330))

(assert (= (and b!5090330 res!2166660) b!5090329))

(assert (= (and b!5090329 res!2166662) b!5090326))

(assert (= (and start!536354 ((_ is Node!15628) t!3643)) b!5090327))

(assert (= b!5090325 b!5090328))

(assert (= (and start!536354 ((_ is Leaf!25947) t!3643)) b!5090325))

(declare-fun m!6148460 () Bool)

(assert (=> b!5090325 m!6148460))

(declare-fun m!6148462 () Bool)

(assert (=> start!536354 m!6148462))

(declare-fun m!6148464 () Bool)

(assert (=> b!5090330 m!6148464))

(declare-fun m!6148466 () Bool)

(assert (=> b!5090326 m!6148466))

(assert (=> b!5090326 m!6148466))

(declare-fun m!6148468 () Bool)

(assert (=> b!5090326 m!6148468))

(declare-fun m!6148470 () Bool)

(assert (=> b!5090327 m!6148470))

(declare-fun m!6148472 () Bool)

(assert (=> b!5090327 m!6148472))

(check-sat (not start!536354) (not b!5090326) (not b!5090327) (not b!5090328) (not b!5090330) (not b!5090325))
(check-sat)
(get-model)

(declare-fun d!1647757 () Bool)

(declare-fun lt!2092378 () Int)

(assert (=> d!1647757 (= lt!2092378 (size!39198 (list!19088 t!3643)))))

(assert (=> d!1647757 (= lt!2092378 (ite ((_ is Empty!15628) t!3643) 0 (ite ((_ is Leaf!25947) t!3643) (csize!31487 t!3643) (csize!31486 t!3643))))))

(assert (=> d!1647757 (= (size!39199 t!3643) lt!2092378)))

(declare-fun bs!1191129 () Bool)

(assert (= bs!1191129 d!1647757))

(assert (=> bs!1191129 m!6148466))

(assert (=> bs!1191129 m!6148466))

(assert (=> bs!1191129 m!6148468))

(assert (=> b!5090330 d!1647757))

(declare-fun d!1647761 () Bool)

(declare-fun lt!2092381 () Int)

(assert (=> d!1647761 (>= lt!2092381 0)))

(declare-fun e!3174609 () Int)

(assert (=> d!1647761 (= lt!2092381 e!3174609)))

(declare-fun c!874779 () Bool)

(assert (=> d!1647761 (= c!874779 ((_ is Nil!58513) (list!19088 t!3643)))))

(assert (=> d!1647761 (= (size!39198 (list!19088 t!3643)) lt!2092381)))

(declare-fun b!5090341 () Bool)

(assert (=> b!5090341 (= e!3174609 0)))

(declare-fun b!5090342 () Bool)

(assert (=> b!5090342 (= e!3174609 (+ 1 (size!39198 (t!371536 (list!19088 t!3643)))))))

(assert (= (and d!1647761 c!874779) b!5090341))

(assert (= (and d!1647761 (not c!874779)) b!5090342))

(declare-fun m!6148474 () Bool)

(assert (=> b!5090342 m!6148474))

(assert (=> b!5090326 d!1647761))

(declare-fun b!5090361 () Bool)

(declare-fun e!3174619 () List!58637)

(declare-fun e!3174620 () List!58637)

(assert (=> b!5090361 (= e!3174619 e!3174620)))

(declare-fun c!874789 () Bool)

(assert (=> b!5090361 (= c!874789 ((_ is Leaf!25947) t!3643))))

(declare-fun d!1647763 () Bool)

(declare-fun c!874788 () Bool)

(assert (=> d!1647763 (= c!874788 ((_ is Empty!15628) t!3643))))

(assert (=> d!1647763 (= (list!19088 t!3643) e!3174619)))

(declare-fun b!5090362 () Bool)

(declare-fun list!19089 (IArray!31317) List!58637)

(assert (=> b!5090362 (= e!3174620 (list!19089 (xs!19010 t!3643)))))

(declare-fun b!5090360 () Bool)

(assert (=> b!5090360 (= e!3174619 Nil!58513)))

(declare-fun b!5090363 () Bool)

(declare-fun ++!12832 (List!58637 List!58637) List!58637)

(assert (=> b!5090363 (= e!3174620 (++!12832 (list!19088 (left!42914 t!3643)) (list!19088 (right!43244 t!3643))))))

(assert (= (and d!1647763 c!874788) b!5090360))

(assert (= (and d!1647763 (not c!874788)) b!5090361))

(assert (= (and b!5090361 c!874789) b!5090362))

(assert (= (and b!5090361 (not c!874789)) b!5090363))

(declare-fun m!6148482 () Bool)

(assert (=> b!5090362 m!6148482))

(declare-fun m!6148484 () Bool)

(assert (=> b!5090363 m!6148484))

(declare-fun m!6148486 () Bool)

(assert (=> b!5090363 m!6148486))

(assert (=> b!5090363 m!6148484))

(assert (=> b!5090363 m!6148486))

(declare-fun m!6148488 () Bool)

(assert (=> b!5090363 m!6148488))

(assert (=> b!5090326 d!1647763))

(declare-fun d!1647769 () Bool)

(assert (=> d!1647769 (= (inv!77895 (xs!19010 t!3643)) (<= (size!39198 (innerList!15716 (xs!19010 t!3643))) 2147483647))))

(declare-fun bs!1191130 () Bool)

(assert (= bs!1191130 d!1647769))

(declare-fun m!6148490 () Bool)

(assert (=> bs!1191130 m!6148490))

(assert (=> b!5090325 d!1647769))

(declare-fun d!1647771 () Bool)

(declare-fun c!874800 () Bool)

(assert (=> d!1647771 (= c!874800 ((_ is Node!15628) (left!42914 t!3643)))))

(declare-fun e!3174637 () Bool)

(assert (=> d!1647771 (= (inv!77894 (left!42914 t!3643)) e!3174637)))

(declare-fun b!5090392 () Bool)

(declare-fun inv!77898 (Conc!15628) Bool)

(assert (=> b!5090392 (= e!3174637 (inv!77898 (left!42914 t!3643)))))

(declare-fun b!5090393 () Bool)

(declare-fun e!3174638 () Bool)

(assert (=> b!5090393 (= e!3174637 e!3174638)))

(declare-fun res!2166670 () Bool)

(assert (=> b!5090393 (= res!2166670 (not ((_ is Leaf!25947) (left!42914 t!3643))))))

(assert (=> b!5090393 (=> res!2166670 e!3174638)))

(declare-fun b!5090394 () Bool)

(declare-fun inv!77899 (Conc!15628) Bool)

(assert (=> b!5090394 (= e!3174638 (inv!77899 (left!42914 t!3643)))))

(assert (= (and d!1647771 c!874800) b!5090392))

(assert (= (and d!1647771 (not c!874800)) b!5090393))

(assert (= (and b!5090393 (not res!2166670)) b!5090394))

(declare-fun m!6148510 () Bool)

(assert (=> b!5090392 m!6148510))

(declare-fun m!6148512 () Bool)

(assert (=> b!5090394 m!6148512))

(assert (=> b!5090327 d!1647771))

(declare-fun d!1647779 () Bool)

(declare-fun c!874801 () Bool)

(assert (=> d!1647779 (= c!874801 ((_ is Node!15628) (right!43244 t!3643)))))

(declare-fun e!3174642 () Bool)

(assert (=> d!1647779 (= (inv!77894 (right!43244 t!3643)) e!3174642)))

(declare-fun b!5090400 () Bool)

(assert (=> b!5090400 (= e!3174642 (inv!77898 (right!43244 t!3643)))))

(declare-fun b!5090401 () Bool)

(declare-fun e!3174643 () Bool)

(assert (=> b!5090401 (= e!3174642 e!3174643)))

(declare-fun res!2166671 () Bool)

(assert (=> b!5090401 (= res!2166671 (not ((_ is Leaf!25947) (right!43244 t!3643))))))

(assert (=> b!5090401 (=> res!2166671 e!3174643)))

(declare-fun b!5090402 () Bool)

(assert (=> b!5090402 (= e!3174643 (inv!77899 (right!43244 t!3643)))))

(assert (= (and d!1647779 c!874801) b!5090400))

(assert (= (and d!1647779 (not c!874801)) b!5090401))

(assert (= (and b!5090401 (not res!2166671)) b!5090402))

(declare-fun m!6148514 () Bool)

(assert (=> b!5090400 m!6148514))

(declare-fun m!6148516 () Bool)

(assert (=> b!5090402 m!6148516))

(assert (=> b!5090327 d!1647779))

(declare-fun d!1647781 () Bool)

(declare-fun c!874802 () Bool)

(assert (=> d!1647781 (= c!874802 ((_ is Node!15628) t!3643))))

(declare-fun e!3174646 () Bool)

(assert (=> d!1647781 (= (inv!77894 t!3643) e!3174646)))

(declare-fun b!5090407 () Bool)

(assert (=> b!5090407 (= e!3174646 (inv!77898 t!3643))))

(declare-fun b!5090408 () Bool)

(declare-fun e!3174647 () Bool)

(assert (=> b!5090408 (= e!3174646 e!3174647)))

(declare-fun res!2166672 () Bool)

(assert (=> b!5090408 (= res!2166672 (not ((_ is Leaf!25947) t!3643)))))

(assert (=> b!5090408 (=> res!2166672 e!3174647)))

(declare-fun b!5090409 () Bool)

(assert (=> b!5090409 (= e!3174647 (inv!77899 t!3643))))

(assert (= (and d!1647781 c!874802) b!5090407))

(assert (= (and d!1647781 (not c!874802)) b!5090408))

(assert (= (and b!5090408 (not res!2166672)) b!5090409))

(declare-fun m!6148518 () Bool)

(assert (=> b!5090407 m!6148518))

(declare-fun m!6148520 () Bool)

(assert (=> b!5090409 m!6148520))

(assert (=> start!536354 d!1647781))

(declare-fun tp!1419053 () Bool)

(declare-fun b!5090424 () Bool)

(declare-fun tp!1419055 () Bool)

(declare-fun e!3174657 () Bool)

(assert (=> b!5090424 (= e!3174657 (and (inv!77894 (left!42914 (left!42914 t!3643))) tp!1419055 (inv!77894 (right!43244 (left!42914 t!3643))) tp!1419053))))

(declare-fun b!5090426 () Bool)

(declare-fun e!3174656 () Bool)

(declare-fun tp!1419054 () Bool)

(assert (=> b!5090426 (= e!3174656 tp!1419054)))

(declare-fun b!5090425 () Bool)

(assert (=> b!5090425 (= e!3174657 (and (inv!77895 (xs!19010 (left!42914 t!3643))) e!3174656))))

(assert (=> b!5090327 (= tp!1419029 (and (inv!77894 (left!42914 t!3643)) e!3174657))))

(assert (= (and b!5090327 ((_ is Node!15628) (left!42914 t!3643))) b!5090424))

(assert (= b!5090425 b!5090426))

(assert (= (and b!5090327 ((_ is Leaf!25947) (left!42914 t!3643))) b!5090425))

(declare-fun m!6148534 () Bool)

(assert (=> b!5090424 m!6148534))

(declare-fun m!6148536 () Bool)

(assert (=> b!5090424 m!6148536))

(declare-fun m!6148538 () Bool)

(assert (=> b!5090425 m!6148538))

(assert (=> b!5090327 m!6148470))

(declare-fun b!5090427 () Bool)

(declare-fun tp!1419058 () Bool)

(declare-fun e!3174659 () Bool)

(declare-fun tp!1419056 () Bool)

(assert (=> b!5090427 (= e!3174659 (and (inv!77894 (left!42914 (right!43244 t!3643))) tp!1419058 (inv!77894 (right!43244 (right!43244 t!3643))) tp!1419056))))

(declare-fun b!5090429 () Bool)

(declare-fun e!3174658 () Bool)

(declare-fun tp!1419057 () Bool)

(assert (=> b!5090429 (= e!3174658 tp!1419057)))

(declare-fun b!5090428 () Bool)

(assert (=> b!5090428 (= e!3174659 (and (inv!77895 (xs!19010 (right!43244 t!3643))) e!3174658))))

(assert (=> b!5090327 (= tp!1419030 (and (inv!77894 (right!43244 t!3643)) e!3174659))))

(assert (= (and b!5090327 ((_ is Node!15628) (right!43244 t!3643))) b!5090427))

(assert (= b!5090428 b!5090429))

(assert (= (and b!5090327 ((_ is Leaf!25947) (right!43244 t!3643))) b!5090428))

(declare-fun m!6148540 () Bool)

(assert (=> b!5090427 m!6148540))

(declare-fun m!6148542 () Bool)

(assert (=> b!5090427 m!6148542))

(declare-fun m!6148544 () Bool)

(assert (=> b!5090428 m!6148544))

(assert (=> b!5090327 m!6148472))

(declare-fun b!5090434 () Bool)

(declare-fun e!3174662 () Bool)

(declare-fun tp_is_empty!37135 () Bool)

(declare-fun tp!1419061 () Bool)

(assert (=> b!5090434 (= e!3174662 (and tp_is_empty!37135 tp!1419061))))

(assert (=> b!5090328 (= tp!1419031 e!3174662)))

(assert (= (and b!5090328 ((_ is Cons!58513) (innerList!15716 (xs!19010 t!3643)))) b!5090434))

(check-sat (not b!5090424) (not b!5090427) (not b!5090409) (not b!5090429) (not b!5090425) (not d!1647769) (not b!5090426) (not b!5090428) (not b!5090327) (not b!5090400) (not b!5090392) (not b!5090394) (not d!1647757) (not b!5090363) (not b!5090407) (not b!5090342) (not b!5090362) tp_is_empty!37135 (not b!5090434) (not b!5090402))
(check-sat)
