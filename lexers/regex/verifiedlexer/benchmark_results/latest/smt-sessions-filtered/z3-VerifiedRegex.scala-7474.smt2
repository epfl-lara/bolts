; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396138 () Bool)

(assert start!396138)

(declare-fun b!4158711 () Bool)

(declare-fun res!1703406 () Bool)

(declare-fun e!2580974 () Bool)

(assert (=> b!4158711 (=> (not res!1703406) (not e!2580974))))

(declare-datatypes ((B!2673 0))(
  ( (B!2674 (val!14628 Int)) )
))
(declare-datatypes ((List!45505 0))(
  ( (Nil!45381) (Cons!45381 (h!50801 B!2673) (t!343536 List!45505)) )
))
(declare-fun l!3062 () List!45505)

(declare-fun e2!32 () B!2673)

(declare-fun contains!9239 (List!45505 B!2673) Bool)

(assert (=> b!4158711 (= res!1703406 (contains!9239 l!3062 e2!32))))

(declare-fun b!4158712 () Bool)

(declare-fun e!2580976 () Bool)

(assert (=> b!4158712 (= e!2580974 e!2580976)))

(declare-fun res!1703403 () Bool)

(assert (=> b!4158712 (=> (not res!1703403) (not e!2580976))))

(declare-fun lt!1482301 () Int)

(declare-fun getIndex!860 (List!45505 B!2673) Int)

(assert (=> b!4158712 (= res!1703403 (< lt!1482301 (getIndex!860 l!3062 e2!32)))))

(declare-fun e1!32 () B!2673)

(assert (=> b!4158712 (= lt!1482301 (getIndex!860 l!3062 e1!32))))

(declare-fun b!4158713 () Bool)

(declare-fun res!1703405 () Bool)

(assert (=> b!4158713 (=> (not res!1703405) (not e!2580976))))

(get-info :version)

(assert (=> b!4158713 (= res!1703405 (and (or (not ((_ is Cons!45381) l!3062)) (not (= (h!50801 l!3062) e1!32))) ((_ is Cons!45381) l!3062) (not (= (h!50801 l!3062) e1!32))))))

(declare-fun b!4158714 () Bool)

(declare-fun e!2580975 () Bool)

(declare-fun tp_is_empty!21721 () Bool)

(declare-fun tp!1268954 () Bool)

(assert (=> b!4158714 (= e!2580975 (and tp_is_empty!21721 tp!1268954))))

(declare-fun res!1703402 () Bool)

(assert (=> start!396138 (=> (not res!1703402) (not e!2580974))))

(assert (=> start!396138 (= res!1703402 (contains!9239 l!3062 e1!32))))

(assert (=> start!396138 e!2580974))

(assert (=> start!396138 e!2580975))

(assert (=> start!396138 tp_is_empty!21721))

(declare-fun b!4158715 () Bool)

(declare-fun res!1703404 () Bool)

(assert (=> b!4158715 (=> (not res!1703404) (not e!2580974))))

(assert (=> b!4158715 (= res!1703404 (not (= e1!32 e2!32)))))

(declare-fun b!4158716 () Bool)

(declare-fun head!8824 (List!45505) B!2673)

(assert (=> b!4158716 (= e!2580976 (not (not (= (head!8824 l!3062) e2!32))))))

(declare-fun lt!1482302 () List!45505)

(assert (=> b!4158716 (= lt!1482301 (+ 1 (getIndex!860 lt!1482302 e1!32)))))

(declare-datatypes ((Unit!64547 0))(
  ( (Unit!64548) )
))
(declare-fun lt!1482300 () Unit!64547)

(declare-fun lemmaNotHeadSoGetIndexTailIsMinusOne!12 (List!45505 B!2673) Unit!64547)

(assert (=> b!4158716 (= lt!1482300 (lemmaNotHeadSoGetIndexTailIsMinusOne!12 l!3062 e1!32))))

(assert (=> b!4158716 (contains!9239 lt!1482302 e1!32)))

(declare-fun tail!6665 (List!45505) List!45505)

(assert (=> b!4158716 (= lt!1482302 (tail!6665 l!3062))))

(declare-fun lt!1482299 () Unit!64547)

(declare-fun lemmaContainsAndNotHdThenTlContains!16 (List!45505 B!2673) Unit!64547)

(assert (=> b!4158716 (= lt!1482299 (lemmaContainsAndNotHdThenTlContains!16 l!3062 e1!32))))

(assert (= (and start!396138 res!1703402) b!4158711))

(assert (= (and b!4158711 res!1703406) b!4158715))

(assert (= (and b!4158715 res!1703404) b!4158712))

(assert (= (and b!4158712 res!1703403) b!4158713))

(assert (= (and b!4158713 res!1703405) b!4158716))

(assert (= (and start!396138 ((_ is Cons!45381) l!3062)) b!4158714))

(declare-fun m!4752457 () Bool)

(assert (=> b!4158711 m!4752457))

(declare-fun m!4752459 () Bool)

(assert (=> b!4158712 m!4752459))

(declare-fun m!4752461 () Bool)

(assert (=> b!4158712 m!4752461))

(declare-fun m!4752463 () Bool)

(assert (=> start!396138 m!4752463))

(declare-fun m!4752465 () Bool)

(assert (=> b!4158716 m!4752465))

(declare-fun m!4752467 () Bool)

(assert (=> b!4158716 m!4752467))

(declare-fun m!4752469 () Bool)

(assert (=> b!4158716 m!4752469))

(declare-fun m!4752471 () Bool)

(assert (=> b!4158716 m!4752471))

(declare-fun m!4752473 () Bool)

(assert (=> b!4158716 m!4752473))

(declare-fun m!4752475 () Bool)

(assert (=> b!4158716 m!4752475))

(check-sat (not b!4158711) (not start!396138) (not b!4158712) tp_is_empty!21721 (not b!4158714) (not b!4158716))
(check-sat)
(get-model)

(declare-fun d!1229601 () Bool)

(declare-fun lt!1482308 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7030 (List!45505) (InoxSet B!2673))

(assert (=> d!1229601 (= lt!1482308 (select (content!7030 l!3062) e2!32))))

(declare-fun e!2580988 () Bool)

(assert (=> d!1229601 (= lt!1482308 e!2580988)))

(declare-fun res!1703418 () Bool)

(assert (=> d!1229601 (=> (not res!1703418) (not e!2580988))))

(assert (=> d!1229601 (= res!1703418 ((_ is Cons!45381) l!3062))))

(assert (=> d!1229601 (= (contains!9239 l!3062 e2!32) lt!1482308)))

(declare-fun b!4158727 () Bool)

(declare-fun e!2580987 () Bool)

(assert (=> b!4158727 (= e!2580988 e!2580987)))

(declare-fun res!1703417 () Bool)

(assert (=> b!4158727 (=> res!1703417 e!2580987)))

(assert (=> b!4158727 (= res!1703417 (= (h!50801 l!3062) e2!32))))

(declare-fun b!4158728 () Bool)

(assert (=> b!4158728 (= e!2580987 (contains!9239 (t!343536 l!3062) e2!32))))

(assert (= (and d!1229601 res!1703418) b!4158727))

(assert (= (and b!4158727 (not res!1703417)) b!4158728))

(declare-fun m!4752483 () Bool)

(assert (=> d!1229601 m!4752483))

(declare-fun m!4752485 () Bool)

(assert (=> d!1229601 m!4752485))

(declare-fun m!4752487 () Bool)

(assert (=> b!4158728 m!4752487))

(assert (=> b!4158711 d!1229601))

(declare-fun d!1229605 () Bool)

(declare-fun lt!1482311 () Bool)

(assert (=> d!1229605 (= lt!1482311 (select (content!7030 l!3062) e1!32))))

(declare-fun e!2580991 () Bool)

(assert (=> d!1229605 (= lt!1482311 e!2580991)))

(declare-fun res!1703420 () Bool)

(assert (=> d!1229605 (=> (not res!1703420) (not e!2580991))))

(assert (=> d!1229605 (= res!1703420 ((_ is Cons!45381) l!3062))))

(assert (=> d!1229605 (= (contains!9239 l!3062 e1!32) lt!1482311)))

(declare-fun b!4158729 () Bool)

(declare-fun e!2580990 () Bool)

(assert (=> b!4158729 (= e!2580991 e!2580990)))

(declare-fun res!1703419 () Bool)

(assert (=> b!4158729 (=> res!1703419 e!2580990)))

(assert (=> b!4158729 (= res!1703419 (= (h!50801 l!3062) e1!32))))

(declare-fun b!4158730 () Bool)

(assert (=> b!4158730 (= e!2580990 (contains!9239 (t!343536 l!3062) e1!32))))

(assert (= (and d!1229605 res!1703420) b!4158729))

(assert (= (and b!4158729 (not res!1703419)) b!4158730))

(assert (=> d!1229605 m!4752483))

(declare-fun m!4752489 () Bool)

(assert (=> d!1229605 m!4752489))

(declare-fun m!4752491 () Bool)

(assert (=> b!4158730 m!4752491))

(assert (=> start!396138 d!1229605))

(declare-fun d!1229607 () Bool)

(assert (=> d!1229607 (contains!9239 (tail!6665 l!3062) e1!32)))

(declare-fun lt!1482315 () Unit!64547)

(declare-fun choose!25470 (List!45505 B!2673) Unit!64547)

(assert (=> d!1229607 (= lt!1482315 (choose!25470 l!3062 e1!32))))

(assert (=> d!1229607 (contains!9239 l!3062 e1!32)))

(assert (=> d!1229607 (= (lemmaContainsAndNotHdThenTlContains!16 l!3062 e1!32) lt!1482315)))

(declare-fun bs!595587 () Bool)

(assert (= bs!595587 d!1229607))

(assert (=> bs!595587 m!4752473))

(assert (=> bs!595587 m!4752473))

(declare-fun m!4752497 () Bool)

(assert (=> bs!595587 m!4752497))

(declare-fun m!4752499 () Bool)

(assert (=> bs!595587 m!4752499))

(assert (=> bs!595587 m!4752463))

(assert (=> b!4158716 d!1229607))

(declare-fun d!1229615 () Bool)

(assert (=> d!1229615 (= (head!8824 l!3062) (h!50801 l!3062))))

(assert (=> b!4158716 d!1229615))

(declare-fun b!4158749 () Bool)

(declare-fun e!2581007 () Int)

(assert (=> b!4158749 (= e!2581007 0)))

(declare-fun d!1229617 () Bool)

(declare-fun lt!1482324 () Int)

(assert (=> d!1229617 (>= lt!1482324 0)))

(assert (=> d!1229617 (= lt!1482324 e!2581007)))

(declare-fun c!711712 () Bool)

(assert (=> d!1229617 (= c!711712 (and ((_ is Cons!45381) lt!1482302) (= (h!50801 lt!1482302) e1!32)))))

(assert (=> d!1229617 (contains!9239 lt!1482302 e1!32)))

(assert (=> d!1229617 (= (getIndex!860 lt!1482302 e1!32) lt!1482324)))

(declare-fun b!4158752 () Bool)

(declare-fun e!2581006 () Int)

(assert (=> b!4158752 (= e!2581006 (- 1))))

(declare-fun b!4158750 () Bool)

(assert (=> b!4158750 (= e!2581007 e!2581006)))

(declare-fun c!711713 () Bool)

(assert (=> b!4158750 (= c!711713 (and ((_ is Cons!45381) lt!1482302) (not (= (h!50801 lt!1482302) e1!32))))))

(declare-fun b!4158751 () Bool)

(assert (=> b!4158751 (= e!2581006 (+ 1 (getIndex!860 (t!343536 lt!1482302) e1!32)))))

(assert (= (and d!1229617 c!711712) b!4158749))

(assert (= (and d!1229617 (not c!711712)) b!4158750))

(assert (= (and b!4158750 c!711713) b!4158751))

(assert (= (and b!4158750 (not c!711713)) b!4158752))

(assert (=> d!1229617 m!4752467))

(declare-fun m!4752511 () Bool)

(assert (=> b!4158751 m!4752511))

(assert (=> b!4158716 d!1229617))

(declare-fun d!1229623 () Bool)

(declare-fun lt!1482325 () Bool)

(assert (=> d!1229623 (= lt!1482325 (select (content!7030 lt!1482302) e1!32))))

(declare-fun e!2581009 () Bool)

(assert (=> d!1229623 (= lt!1482325 e!2581009)))

(declare-fun res!1703424 () Bool)

(assert (=> d!1229623 (=> (not res!1703424) (not e!2581009))))

(assert (=> d!1229623 (= res!1703424 ((_ is Cons!45381) lt!1482302))))

(assert (=> d!1229623 (= (contains!9239 lt!1482302 e1!32) lt!1482325)))

(declare-fun b!4158753 () Bool)

(declare-fun e!2581008 () Bool)

(assert (=> b!4158753 (= e!2581009 e!2581008)))

(declare-fun res!1703423 () Bool)

(assert (=> b!4158753 (=> res!1703423 e!2581008)))

(assert (=> b!4158753 (= res!1703423 (= (h!50801 lt!1482302) e1!32))))

(declare-fun b!4158754 () Bool)

(assert (=> b!4158754 (= e!2581008 (contains!9239 (t!343536 lt!1482302) e1!32))))

(assert (= (and d!1229623 res!1703424) b!4158753))

(assert (= (and b!4158753 (not res!1703423)) b!4158754))

(declare-fun m!4752513 () Bool)

(assert (=> d!1229623 m!4752513))

(declare-fun m!4752515 () Bool)

(assert (=> d!1229623 m!4752515))

(declare-fun m!4752517 () Bool)

(assert (=> b!4158754 m!4752517))

(assert (=> b!4158716 d!1229623))

(declare-fun d!1229625 () Bool)

(assert (=> d!1229625 (= (tail!6665 l!3062) (t!343536 l!3062))))

(assert (=> b!4158716 d!1229625))

(declare-fun d!1229627 () Bool)

(assert (=> d!1229627 (= (getIndex!860 l!3062 e1!32) (+ (getIndex!860 (tail!6665 l!3062) e1!32) 1))))

(declare-fun lt!1482332 () Unit!64547)

(declare-fun choose!25471 (List!45505 B!2673) Unit!64547)

(assert (=> d!1229627 (= lt!1482332 (choose!25471 l!3062 e1!32))))

(assert (=> d!1229627 (contains!9239 l!3062 e1!32)))

(assert (=> d!1229627 (= (lemmaNotHeadSoGetIndexTailIsMinusOne!12 l!3062 e1!32) lt!1482332)))

(declare-fun bs!595589 () Bool)

(assert (= bs!595589 d!1229627))

(assert (=> bs!595589 m!4752473))

(declare-fun m!4752529 () Bool)

(assert (=> bs!595589 m!4752529))

(declare-fun m!4752531 () Bool)

(assert (=> bs!595589 m!4752531))

(assert (=> bs!595589 m!4752463))

(assert (=> bs!595589 m!4752461))

(assert (=> bs!595589 m!4752473))

(assert (=> b!4158716 d!1229627))

(declare-fun b!4158774 () Bool)

(declare-fun e!2581023 () Int)

(assert (=> b!4158774 (= e!2581023 0)))

(declare-fun d!1229635 () Bool)

(declare-fun lt!1482333 () Int)

(assert (=> d!1229635 (>= lt!1482333 0)))

(assert (=> d!1229635 (= lt!1482333 e!2581023)))

(declare-fun c!711720 () Bool)

(assert (=> d!1229635 (= c!711720 (and ((_ is Cons!45381) l!3062) (= (h!50801 l!3062) e2!32)))))

(assert (=> d!1229635 (contains!9239 l!3062 e2!32)))

(assert (=> d!1229635 (= (getIndex!860 l!3062 e2!32) lt!1482333)))

(declare-fun b!4158777 () Bool)

(declare-fun e!2581022 () Int)

(assert (=> b!4158777 (= e!2581022 (- 1))))

(declare-fun b!4158775 () Bool)

(assert (=> b!4158775 (= e!2581023 e!2581022)))

(declare-fun c!711721 () Bool)

(assert (=> b!4158775 (= c!711721 (and ((_ is Cons!45381) l!3062) (not (= (h!50801 l!3062) e2!32))))))

(declare-fun b!4158776 () Bool)

(assert (=> b!4158776 (= e!2581022 (+ 1 (getIndex!860 (t!343536 l!3062) e2!32)))))

(assert (= (and d!1229635 c!711720) b!4158774))

(assert (= (and d!1229635 (not c!711720)) b!4158775))

(assert (= (and b!4158775 c!711721) b!4158776))

(assert (= (and b!4158775 (not c!711721)) b!4158777))

(assert (=> d!1229635 m!4752457))

(declare-fun m!4752533 () Bool)

(assert (=> b!4158776 m!4752533))

(assert (=> b!4158712 d!1229635))

(declare-fun b!4158778 () Bool)

(declare-fun e!2581025 () Int)

(assert (=> b!4158778 (= e!2581025 0)))

(declare-fun d!1229637 () Bool)

(declare-fun lt!1482334 () Int)

(assert (=> d!1229637 (>= lt!1482334 0)))

(assert (=> d!1229637 (= lt!1482334 e!2581025)))

(declare-fun c!711722 () Bool)

(assert (=> d!1229637 (= c!711722 (and ((_ is Cons!45381) l!3062) (= (h!50801 l!3062) e1!32)))))

(assert (=> d!1229637 (contains!9239 l!3062 e1!32)))

(assert (=> d!1229637 (= (getIndex!860 l!3062 e1!32) lt!1482334)))

(declare-fun b!4158781 () Bool)

(declare-fun e!2581024 () Int)

(assert (=> b!4158781 (= e!2581024 (- 1))))

(declare-fun b!4158779 () Bool)

(assert (=> b!4158779 (= e!2581025 e!2581024)))

(declare-fun c!711723 () Bool)

(assert (=> b!4158779 (= c!711723 (and ((_ is Cons!45381) l!3062) (not (= (h!50801 l!3062) e1!32))))))

(declare-fun b!4158780 () Bool)

(assert (=> b!4158780 (= e!2581024 (+ 1 (getIndex!860 (t!343536 l!3062) e1!32)))))

(assert (= (and d!1229637 c!711722) b!4158778))

(assert (= (and d!1229637 (not c!711722)) b!4158779))

(assert (= (and b!4158779 c!711723) b!4158780))

(assert (= (and b!4158779 (not c!711723)) b!4158781))

(assert (=> d!1229637 m!4752463))

(declare-fun m!4752535 () Bool)

(assert (=> b!4158780 m!4752535))

(assert (=> b!4158712 d!1229637))

(declare-fun b!4158786 () Bool)

(declare-fun e!2581028 () Bool)

(declare-fun tp!1268960 () Bool)

(assert (=> b!4158786 (= e!2581028 (and tp_is_empty!21721 tp!1268960))))

(assert (=> b!4158714 (= tp!1268954 e!2581028)))

(assert (= (and b!4158714 ((_ is Cons!45381) (t!343536 l!3062))) b!4158786))

(check-sat (not d!1229635) (not b!4158776) (not d!1229607) (not d!1229601) (not d!1229617) (not b!4158751) (not b!4158754) (not d!1229627) (not d!1229605) (not d!1229637) (not b!4158780) (not b!4158786) tp_is_empty!21721 (not d!1229623) (not b!4158728) (not b!4158730))
(check-sat)
