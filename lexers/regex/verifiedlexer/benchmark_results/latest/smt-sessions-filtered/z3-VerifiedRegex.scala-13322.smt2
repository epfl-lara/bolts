; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723466 () Bool)

(assert start!723466)

(declare-fun b!7452737 () Bool)

(assert (=> b!7452737 true))

(assert (=> b!7452737 true))

(assert (=> b!7452737 true))

(declare-fun lambda!461033 () Int)

(declare-fun lambda!461032 () Int)

(assert (=> b!7452737 (not (= lambda!461033 lambda!461032))))

(assert (=> b!7452737 true))

(assert (=> b!7452737 true))

(assert (=> b!7452737 true))

(declare-fun b!7452720 () Bool)

(declare-fun e!4448477 () Bool)

(declare-fun e!4448476 () Bool)

(assert (=> b!7452720 (= e!4448477 (not e!4448476))))

(declare-fun res!2989367 () Bool)

(assert (=> b!7452720 (=> res!2989367 e!4448476)))

(declare-fun lt!2620893 () Bool)

(assert (=> b!7452720 (= res!2989367 (not lt!2620893))))

(declare-datatypes ((C!39288 0))(
  ( (C!39289 (val!30042 Int)) )
))
(declare-datatypes ((Regex!19507 0))(
  ( (ElementMatch!19507 (c!1377942 C!39288)) (Concat!28352 (regOne!39526 Regex!19507) (regTwo!39526 Regex!19507)) (EmptyExpr!19507) (Star!19507 (reg!19836 Regex!19507)) (EmptyLang!19507) (Union!19507 (regOne!39527 Regex!19507) (regTwo!39527 Regex!19507)) )
))
(declare-fun lt!2620897 () Regex!19507)

(declare-datatypes ((List!72223 0))(
  ( (Nil!72099) (Cons!72099 (h!78547 C!39288) (t!386792 List!72223)) )
))
(declare-fun s!13591 () List!72223)

(declare-fun matchR!9271 (Regex!19507 List!72223) Bool)

(declare-fun matchRSpec!4186 (Regex!19507 List!72223) Bool)

(assert (=> b!7452720 (= (matchR!9271 lt!2620897 s!13591) (matchRSpec!4186 lt!2620897 s!13591))))

(declare-datatypes ((Unit!165849 0))(
  ( (Unit!165850) )
))
(declare-fun lt!2620892 () Unit!165849)

(declare-fun mainMatchTheorem!4180 (Regex!19507 List!72223) Unit!165849)

(assert (=> b!7452720 (= lt!2620892 (mainMatchTheorem!4180 lt!2620897 s!13591))))

(declare-fun lt!2620883 () Regex!19507)

(assert (=> b!7452720 (= lt!2620893 (matchRSpec!4186 lt!2620883 s!13591))))

(assert (=> b!7452720 (= lt!2620893 (matchR!9271 lt!2620883 s!13591))))

(declare-fun lt!2620885 () Unit!165849)

(assert (=> b!7452720 (= lt!2620885 (mainMatchTheorem!4180 lt!2620883 s!13591))))

(declare-fun lt!2620889 () Regex!19507)

(declare-fun lt!2620898 () Regex!19507)

(assert (=> b!7452720 (= lt!2620897 (Union!19507 lt!2620889 lt!2620898))))

(declare-fun r2!5783 () Regex!19507)

(declare-fun rTail!78 () Regex!19507)

(assert (=> b!7452720 (= lt!2620898 (Concat!28352 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19507)

(assert (=> b!7452720 (= lt!2620889 (Concat!28352 r1!5845 rTail!78))))

(declare-fun lt!2620884 () Regex!19507)

(assert (=> b!7452720 (= lt!2620883 (Concat!28352 lt!2620884 rTail!78))))

(assert (=> b!7452720 (= lt!2620884 (Union!19507 r1!5845 r2!5783))))

(declare-fun b!7452721 () Bool)

(declare-fun res!2989366 () Bool)

(assert (=> b!7452721 (=> (not res!2989366) (not e!4448477))))

(declare-fun validRegex!10021 (Regex!19507) Bool)

(assert (=> b!7452721 (= res!2989366 (validRegex!10021 r2!5783))))

(declare-fun b!7452722 () Bool)

(declare-fun e!4448478 () Bool)

(declare-fun tp!2159833 () Bool)

(declare-fun tp!2159823 () Bool)

(assert (=> b!7452722 (= e!4448478 (and tp!2159833 tp!2159823))))

(declare-fun b!7452723 () Bool)

(declare-fun e!4448473 () Bool)

(declare-fun tp_is_empty!49303 () Bool)

(assert (=> b!7452723 (= e!4448473 tp_is_empty!49303)))

(declare-fun b!7452724 () Bool)

(declare-fun e!4448475 () Bool)

(declare-fun tp!2159829 () Bool)

(declare-fun tp!2159821 () Bool)

(assert (=> b!7452724 (= e!4448475 (and tp!2159829 tp!2159821))))

(declare-fun res!2989364 () Bool)

(assert (=> start!723466 (=> (not res!2989364) (not e!4448477))))

(assert (=> start!723466 (= res!2989364 (validRegex!10021 r1!5845))))

(assert (=> start!723466 e!4448477))

(assert (=> start!723466 e!4448478))

(assert (=> start!723466 e!4448475))

(assert (=> start!723466 e!4448473))

(declare-fun e!4448480 () Bool)

(assert (=> start!723466 e!4448480))

(declare-fun b!7452725 () Bool)

(declare-fun tp!2159826 () Bool)

(assert (=> b!7452725 (= e!4448473 tp!2159826)))

(declare-fun b!7452726 () Bool)

(declare-fun e!4448474 () Bool)

(assert (=> b!7452726 (= e!4448474 (validRegex!10021 lt!2620897))))

(assert (=> b!7452726 (= (matchR!9271 lt!2620898 s!13591) (matchRSpec!4186 lt!2620898 s!13591))))

(declare-fun lt!2620882 () Unit!165849)

(assert (=> b!7452726 (= lt!2620882 (mainMatchTheorem!4180 lt!2620898 s!13591))))

(assert (=> b!7452726 (= (matchR!9271 lt!2620889 s!13591) (matchRSpec!4186 lt!2620889 s!13591))))

(declare-fun lt!2620880 () Unit!165849)

(assert (=> b!7452726 (= lt!2620880 (mainMatchTheorem!4180 lt!2620889 s!13591))))

(declare-fun b!7452727 () Bool)

(assert (=> b!7452727 (= e!4448475 tp_is_empty!49303)))

(declare-fun b!7452728 () Bool)

(declare-fun e!4448479 () Bool)

(assert (=> b!7452728 (= e!4448479 e!4448474)))

(declare-fun res!2989365 () Bool)

(assert (=> b!7452728 (=> res!2989365 e!4448474)))

(declare-fun lt!2620899 () Bool)

(declare-fun lt!2620891 () Bool)

(assert (=> b!7452728 (= res!2989365 (and (not lt!2620899) (not lt!2620891)))))

(declare-datatypes ((tuple2!68468 0))(
  ( (tuple2!68469 (_1!37537 List!72223) (_2!37537 List!72223)) )
))
(declare-fun lt!2620888 () tuple2!68468)

(assert (=> b!7452728 (= lt!2620891 (matchRSpec!4186 r2!5783 (_1!37537 lt!2620888)))))

(assert (=> b!7452728 (= lt!2620891 (matchR!9271 r2!5783 (_1!37537 lt!2620888)))))

(declare-fun lt!2620886 () Unit!165849)

(assert (=> b!7452728 (= lt!2620886 (mainMatchTheorem!4180 r2!5783 (_1!37537 lt!2620888)))))

(assert (=> b!7452728 (= lt!2620899 (matchRSpec!4186 r1!5845 (_1!37537 lt!2620888)))))

(assert (=> b!7452728 (= lt!2620899 (matchR!9271 r1!5845 (_1!37537 lt!2620888)))))

(declare-fun lt!2620881 () Unit!165849)

(assert (=> b!7452728 (= lt!2620881 (mainMatchTheorem!4180 r1!5845 (_1!37537 lt!2620888)))))

(assert (=> b!7452728 (matchRSpec!4186 rTail!78 (_2!37537 lt!2620888))))

(declare-fun lt!2620896 () Unit!165849)

(assert (=> b!7452728 (= lt!2620896 (mainMatchTheorem!4180 rTail!78 (_2!37537 lt!2620888)))))

(assert (=> b!7452728 (matchRSpec!4186 lt!2620884 (_1!37537 lt!2620888))))

(declare-fun lt!2620895 () Unit!165849)

(assert (=> b!7452728 (= lt!2620895 (mainMatchTheorem!4180 lt!2620884 (_1!37537 lt!2620888)))))

(declare-fun b!7452729 () Bool)

(declare-fun res!2989363 () Bool)

(assert (=> b!7452729 (=> res!2989363 e!4448479)))

(assert (=> b!7452729 (= res!2989363 (not (matchR!9271 rTail!78 (_2!37537 lt!2620888))))))

(declare-fun b!7452730 () Bool)

(declare-fun tp!2159830 () Bool)

(declare-fun tp!2159820 () Bool)

(assert (=> b!7452730 (= e!4448473 (and tp!2159830 tp!2159820))))

(declare-fun b!7452731 () Bool)

(declare-fun tp!2159835 () Bool)

(declare-fun tp!2159832 () Bool)

(assert (=> b!7452731 (= e!4448473 (and tp!2159835 tp!2159832))))

(declare-fun b!7452732 () Bool)

(assert (=> b!7452732 (= e!4448478 tp_is_empty!49303)))

(declare-fun b!7452733 () Bool)

(declare-fun tp!2159828 () Bool)

(declare-fun tp!2159822 () Bool)

(assert (=> b!7452733 (= e!4448475 (and tp!2159828 tp!2159822))))

(declare-fun b!7452734 () Bool)

(declare-fun tp!2159824 () Bool)

(declare-fun tp!2159834 () Bool)

(assert (=> b!7452734 (= e!4448478 (and tp!2159824 tp!2159834))))

(declare-fun b!7452735 () Bool)

(declare-fun tp!2159827 () Bool)

(assert (=> b!7452735 (= e!4448475 tp!2159827)))

(declare-fun b!7452736 () Bool)

(declare-fun res!2989362 () Bool)

(assert (=> b!7452736 (=> (not res!2989362) (not e!4448477))))

(assert (=> b!7452736 (= res!2989362 (validRegex!10021 rTail!78))))

(assert (=> b!7452737 (= e!4448476 e!4448479)))

(declare-fun res!2989368 () Bool)

(assert (=> b!7452737 (=> res!2989368 e!4448479)))

(assert (=> b!7452737 (= res!2989368 (not (matchR!9271 lt!2620884 (_1!37537 lt!2620888))))))

(declare-datatypes ((Option!17066 0))(
  ( (None!17065) (Some!17065 (v!54194 tuple2!68468)) )
))
(declare-fun lt!2620890 () Option!17066)

(declare-fun get!25144 (Option!17066) tuple2!68468)

(assert (=> b!7452737 (= lt!2620888 (get!25144 lt!2620890))))

(declare-fun Exists!4128 (Int) Bool)

(assert (=> b!7452737 (= (Exists!4128 lambda!461032) (Exists!4128 lambda!461033))))

(declare-fun lt!2620894 () Unit!165849)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2464 (Regex!19507 Regex!19507 List!72223) Unit!165849)

(assert (=> b!7452737 (= lt!2620894 (lemmaExistCutMatchRandMatchRSpecEquivalent!2464 lt!2620884 rTail!78 s!13591))))

(declare-fun isDefined!13755 (Option!17066) Bool)

(assert (=> b!7452737 (= (isDefined!13755 lt!2620890) (Exists!4128 lambda!461032))))

(declare-fun findConcatSeparation!3188 (Regex!19507 Regex!19507 List!72223 List!72223 List!72223) Option!17066)

(assert (=> b!7452737 (= lt!2620890 (findConcatSeparation!3188 lt!2620884 rTail!78 Nil!72099 s!13591 s!13591))))

(declare-fun lt!2620887 () Unit!165849)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2946 (Regex!19507 Regex!19507 List!72223) Unit!165849)

(assert (=> b!7452737 (= lt!2620887 (lemmaFindConcatSeparationEquivalentToExists!2946 lt!2620884 rTail!78 s!13591))))

(declare-fun b!7452738 () Bool)

(declare-fun tp!2159825 () Bool)

(assert (=> b!7452738 (= e!4448480 (and tp_is_empty!49303 tp!2159825))))

(declare-fun b!7452739 () Bool)

(declare-fun tp!2159831 () Bool)

(assert (=> b!7452739 (= e!4448478 tp!2159831)))

(assert (= (and start!723466 res!2989364) b!7452721))

(assert (= (and b!7452721 res!2989366) b!7452736))

(assert (= (and b!7452736 res!2989362) b!7452720))

(assert (= (and b!7452720 (not res!2989367)) b!7452737))

(assert (= (and b!7452737 (not res!2989368)) b!7452729))

(assert (= (and b!7452729 (not res!2989363)) b!7452728))

(assert (= (and b!7452728 (not res!2989365)) b!7452726))

(get-info :version)

(assert (= (and start!723466 ((_ is ElementMatch!19507) r1!5845)) b!7452732))

(assert (= (and start!723466 ((_ is Concat!28352) r1!5845)) b!7452722))

(assert (= (and start!723466 ((_ is Star!19507) r1!5845)) b!7452739))

(assert (= (and start!723466 ((_ is Union!19507) r1!5845)) b!7452734))

(assert (= (and start!723466 ((_ is ElementMatch!19507) r2!5783)) b!7452727))

(assert (= (and start!723466 ((_ is Concat!28352) r2!5783)) b!7452724))

(assert (= (and start!723466 ((_ is Star!19507) r2!5783)) b!7452735))

(assert (= (and start!723466 ((_ is Union!19507) r2!5783)) b!7452733))

(assert (= (and start!723466 ((_ is ElementMatch!19507) rTail!78)) b!7452723))

(assert (= (and start!723466 ((_ is Concat!28352) rTail!78)) b!7452731))

(assert (= (and start!723466 ((_ is Star!19507) rTail!78)) b!7452725))

(assert (= (and start!723466 ((_ is Union!19507) rTail!78)) b!7452730))

(assert (= (and start!723466 ((_ is Cons!72099) s!13591)) b!7452738))

(declare-fun m!8057974 () Bool)

(assert (=> b!7452728 m!8057974))

(declare-fun m!8057976 () Bool)

(assert (=> b!7452728 m!8057976))

(declare-fun m!8057978 () Bool)

(assert (=> b!7452728 m!8057978))

(declare-fun m!8057980 () Bool)

(assert (=> b!7452728 m!8057980))

(declare-fun m!8057982 () Bool)

(assert (=> b!7452728 m!8057982))

(declare-fun m!8057984 () Bool)

(assert (=> b!7452728 m!8057984))

(declare-fun m!8057986 () Bool)

(assert (=> b!7452728 m!8057986))

(declare-fun m!8057988 () Bool)

(assert (=> b!7452728 m!8057988))

(declare-fun m!8057990 () Bool)

(assert (=> b!7452728 m!8057990))

(declare-fun m!8057992 () Bool)

(assert (=> b!7452728 m!8057992))

(declare-fun m!8057994 () Bool)

(assert (=> b!7452720 m!8057994))

(declare-fun m!8057996 () Bool)

(assert (=> b!7452720 m!8057996))

(declare-fun m!8057998 () Bool)

(assert (=> b!7452720 m!8057998))

(declare-fun m!8058000 () Bool)

(assert (=> b!7452720 m!8058000))

(declare-fun m!8058002 () Bool)

(assert (=> b!7452720 m!8058002))

(declare-fun m!8058004 () Bool)

(assert (=> b!7452720 m!8058004))

(declare-fun m!8058006 () Bool)

(assert (=> b!7452737 m!8058006))

(declare-fun m!8058008 () Bool)

(assert (=> b!7452737 m!8058008))

(declare-fun m!8058010 () Bool)

(assert (=> b!7452737 m!8058010))

(declare-fun m!8058012 () Bool)

(assert (=> b!7452737 m!8058012))

(assert (=> b!7452737 m!8058006))

(declare-fun m!8058014 () Bool)

(assert (=> b!7452737 m!8058014))

(declare-fun m!8058016 () Bool)

(assert (=> b!7452737 m!8058016))

(declare-fun m!8058018 () Bool)

(assert (=> b!7452737 m!8058018))

(declare-fun m!8058020 () Bool)

(assert (=> b!7452737 m!8058020))

(declare-fun m!8058022 () Bool)

(assert (=> b!7452721 m!8058022))

(declare-fun m!8058024 () Bool)

(assert (=> b!7452736 m!8058024))

(declare-fun m!8058026 () Bool)

(assert (=> start!723466 m!8058026))

(declare-fun m!8058028 () Bool)

(assert (=> b!7452726 m!8058028))

(declare-fun m!8058030 () Bool)

(assert (=> b!7452726 m!8058030))

(declare-fun m!8058032 () Bool)

(assert (=> b!7452726 m!8058032))

(declare-fun m!8058034 () Bool)

(assert (=> b!7452726 m!8058034))

(declare-fun m!8058036 () Bool)

(assert (=> b!7452726 m!8058036))

(declare-fun m!8058038 () Bool)

(assert (=> b!7452726 m!8058038))

(declare-fun m!8058040 () Bool)

(assert (=> b!7452726 m!8058040))

(declare-fun m!8058042 () Bool)

(assert (=> b!7452729 m!8058042))

(check-sat (not b!7452730) (not b!7452721) (not b!7452722) (not start!723466) (not b!7452726) (not b!7452728) (not b!7452733) (not b!7452739) (not b!7452735) (not b!7452736) (not b!7452729) (not b!7452720) (not b!7452738) (not b!7452724) (not b!7452731) (not b!7452734) (not b!7452725) (not b!7452737) tp_is_empty!49303)
(check-sat)
(get-model)

(declare-fun b!7452815 () Bool)

(declare-fun e!4448523 () Bool)

(declare-fun e!4448521 () Bool)

(assert (=> b!7452815 (= e!4448523 e!4448521)))

(declare-fun res!2989404 () Bool)

(assert (=> b!7452815 (=> res!2989404 e!4448521)))

(declare-fun call!684637 () Bool)

(assert (=> b!7452815 (= res!2989404 call!684637)))

(declare-fun b!7452816 () Bool)

(declare-fun e!4448520 () Bool)

(declare-fun e!4448525 () Bool)

(assert (=> b!7452816 (= e!4448520 e!4448525)))

(declare-fun c!1377961 () Bool)

(assert (=> b!7452816 (= c!1377961 ((_ is EmptyLang!19507) r2!5783))))

(declare-fun bm!684632 () Bool)

(declare-fun isEmpty!41104 (List!72223) Bool)

(assert (=> bm!684632 (= call!684637 (isEmpty!41104 (_1!37537 lt!2620888)))))

(declare-fun b!7452817 () Bool)

(declare-fun e!4448522 () Bool)

(assert (=> b!7452817 (= e!4448522 e!4448523)))

(declare-fun res!2989406 () Bool)

(assert (=> b!7452817 (=> (not res!2989406) (not e!4448523))))

(declare-fun lt!2620905 () Bool)

(assert (=> b!7452817 (= res!2989406 (not lt!2620905))))

(declare-fun b!7452818 () Bool)

(declare-fun res!2989408 () Bool)

(assert (=> b!7452818 (=> res!2989408 e!4448521)))

(declare-fun tail!14863 (List!72223) List!72223)

(assert (=> b!7452818 (= res!2989408 (not (isEmpty!41104 (tail!14863 (_1!37537 lt!2620888)))))))

(declare-fun d!2297063 () Bool)

(assert (=> d!2297063 e!4448520))

(declare-fun c!1377963 () Bool)

(assert (=> d!2297063 (= c!1377963 ((_ is EmptyExpr!19507) r2!5783))))

(declare-fun e!4448526 () Bool)

(assert (=> d!2297063 (= lt!2620905 e!4448526)))

(declare-fun c!1377962 () Bool)

(assert (=> d!2297063 (= c!1377962 (isEmpty!41104 (_1!37537 lt!2620888)))))

(assert (=> d!2297063 (validRegex!10021 r2!5783)))

(assert (=> d!2297063 (= (matchR!9271 r2!5783 (_1!37537 lt!2620888)) lt!2620905)))

(declare-fun b!7452819 () Bool)

(declare-fun res!2989411 () Bool)

(assert (=> b!7452819 (=> res!2989411 e!4448522)))

(declare-fun e!4448524 () Bool)

(assert (=> b!7452819 (= res!2989411 e!4448524)))

(declare-fun res!2989405 () Bool)

(assert (=> b!7452819 (=> (not res!2989405) (not e!4448524))))

(assert (=> b!7452819 (= res!2989405 lt!2620905)))

(declare-fun b!7452820 () Bool)

(assert (=> b!7452820 (= e!4448520 (= lt!2620905 call!684637))))

(declare-fun b!7452821 () Bool)

(declare-fun res!2989409 () Bool)

(assert (=> b!7452821 (=> (not res!2989409) (not e!4448524))))

(assert (=> b!7452821 (= res!2989409 (isEmpty!41104 (tail!14863 (_1!37537 lt!2620888))))))

(declare-fun b!7452822 () Bool)

(declare-fun head!15294 (List!72223) C!39288)

(assert (=> b!7452822 (= e!4448524 (= (head!15294 (_1!37537 lt!2620888)) (c!1377942 r2!5783)))))

(declare-fun b!7452823 () Bool)

(assert (=> b!7452823 (= e!4448521 (not (= (head!15294 (_1!37537 lt!2620888)) (c!1377942 r2!5783))))))

(declare-fun b!7452824 () Bool)

(assert (=> b!7452824 (= e!4448525 (not lt!2620905))))

(declare-fun b!7452825 () Bool)

(declare-fun derivativeStep!5554 (Regex!19507 C!39288) Regex!19507)

(assert (=> b!7452825 (= e!4448526 (matchR!9271 (derivativeStep!5554 r2!5783 (head!15294 (_1!37537 lt!2620888))) (tail!14863 (_1!37537 lt!2620888))))))

(declare-fun b!7452826 () Bool)

(declare-fun res!2989407 () Bool)

(assert (=> b!7452826 (=> (not res!2989407) (not e!4448524))))

(assert (=> b!7452826 (= res!2989407 (not call!684637))))

(declare-fun b!7452827 () Bool)

(declare-fun nullable!8495 (Regex!19507) Bool)

(assert (=> b!7452827 (= e!4448526 (nullable!8495 r2!5783))))

(declare-fun b!7452828 () Bool)

(declare-fun res!2989410 () Bool)

(assert (=> b!7452828 (=> res!2989410 e!4448522)))

(assert (=> b!7452828 (= res!2989410 (not ((_ is ElementMatch!19507) r2!5783)))))

(assert (=> b!7452828 (= e!4448525 e!4448522)))

(assert (= (and d!2297063 c!1377962) b!7452827))

(assert (= (and d!2297063 (not c!1377962)) b!7452825))

(assert (= (and d!2297063 c!1377963) b!7452820))

(assert (= (and d!2297063 (not c!1377963)) b!7452816))

(assert (= (and b!7452816 c!1377961) b!7452824))

(assert (= (and b!7452816 (not c!1377961)) b!7452828))

(assert (= (and b!7452828 (not res!2989410)) b!7452819))

(assert (= (and b!7452819 res!2989405) b!7452826))

(assert (= (and b!7452826 res!2989407) b!7452821))

(assert (= (and b!7452821 res!2989409) b!7452822))

(assert (= (and b!7452819 (not res!2989411)) b!7452817))

(assert (= (and b!7452817 res!2989406) b!7452815))

(assert (= (and b!7452815 (not res!2989404)) b!7452818))

(assert (= (and b!7452818 (not res!2989408)) b!7452823))

(assert (= (or b!7452820 b!7452815 b!7452826) bm!684632))

(declare-fun m!8058056 () Bool)

(assert (=> b!7452818 m!8058056))

(assert (=> b!7452818 m!8058056))

(declare-fun m!8058058 () Bool)

(assert (=> b!7452818 m!8058058))

(declare-fun m!8058060 () Bool)

(assert (=> d!2297063 m!8058060))

(assert (=> d!2297063 m!8058022))

(declare-fun m!8058062 () Bool)

(assert (=> b!7452822 m!8058062))

(assert (=> b!7452823 m!8058062))

(declare-fun m!8058064 () Bool)

(assert (=> b!7452827 m!8058064))

(assert (=> b!7452825 m!8058062))

(assert (=> b!7452825 m!8058062))

(declare-fun m!8058066 () Bool)

(assert (=> b!7452825 m!8058066))

(assert (=> b!7452825 m!8058056))

(assert (=> b!7452825 m!8058066))

(assert (=> b!7452825 m!8058056))

(declare-fun m!8058068 () Bool)

(assert (=> b!7452825 m!8058068))

(assert (=> b!7452821 m!8058056))

(assert (=> b!7452821 m!8058056))

(assert (=> b!7452821 m!8058058))

(assert (=> bm!684632 m!8058060))

(assert (=> b!7452728 d!2297063))

(declare-fun bs!1927123 () Bool)

(declare-fun b!7453008 () Bool)

(assert (= bs!1927123 (and b!7453008 b!7452737)))

(declare-fun lambda!461053 () Int)

(assert (=> bs!1927123 (not (= lambda!461053 lambda!461032))))

(assert (=> bs!1927123 (not (= lambda!461053 lambda!461033))))

(assert (=> b!7453008 true))

(assert (=> b!7453008 true))

(declare-fun bs!1927135 () Bool)

(declare-fun b!7453012 () Bool)

(assert (= bs!1927135 (and b!7453012 b!7452737)))

(declare-fun lambda!461055 () Int)

(assert (=> bs!1927135 (not (= lambda!461055 lambda!461032))))

(assert (=> bs!1927135 (= (and (= (_1!37537 lt!2620888) s!13591) (= (regOne!39526 lt!2620884) lt!2620884) (= (regTwo!39526 lt!2620884) rTail!78)) (= lambda!461055 lambda!461033))))

(declare-fun bs!1927141 () Bool)

(assert (= bs!1927141 (and b!7453012 b!7453008)))

(assert (=> bs!1927141 (not (= lambda!461055 lambda!461053))))

(assert (=> b!7453012 true))

(assert (=> b!7453012 true))

(declare-fun c!1378012 () Bool)

(declare-fun call!684664 () Bool)

(declare-fun bm!684659 () Bool)

(assert (=> bm!684659 (= call!684664 (Exists!4128 (ite c!1378012 lambda!461053 lambda!461055)))))

(declare-fun b!7453002 () Bool)

(declare-fun e!4448633 () Bool)

(declare-fun e!4448629 () Bool)

(assert (=> b!7453002 (= e!4448633 e!4448629)))

(declare-fun res!2989496 () Bool)

(assert (=> b!7453002 (= res!2989496 (not ((_ is EmptyLang!19507) lt!2620884)))))

(assert (=> b!7453002 (=> (not res!2989496) (not e!4448629))))

(declare-fun b!7453003 () Bool)

(declare-fun c!1378011 () Bool)

(assert (=> b!7453003 (= c!1378011 ((_ is Union!19507) lt!2620884))))

(declare-fun e!4448632 () Bool)

(declare-fun e!4448630 () Bool)

(assert (=> b!7453003 (= e!4448632 e!4448630)))

(declare-fun b!7453004 () Bool)

(declare-fun call!684665 () Bool)

(assert (=> b!7453004 (= e!4448633 call!684665)))

(declare-fun b!7453005 () Bool)

(declare-fun e!4448635 () Bool)

(assert (=> b!7453005 (= e!4448630 e!4448635)))

(declare-fun res!2989495 () Bool)

(assert (=> b!7453005 (= res!2989495 (matchRSpec!4186 (regOne!39527 lt!2620884) (_1!37537 lt!2620888)))))

(assert (=> b!7453005 (=> res!2989495 e!4448635)))

(declare-fun b!7453006 () Bool)

(assert (=> b!7453006 (= e!4448635 (matchRSpec!4186 (regTwo!39527 lt!2620884) (_1!37537 lt!2620888)))))

(declare-fun b!7453007 () Bool)

(declare-fun res!2989497 () Bool)

(declare-fun e!4448634 () Bool)

(assert (=> b!7453007 (=> res!2989497 e!4448634)))

(assert (=> b!7453007 (= res!2989497 call!684665)))

(declare-fun e!4448631 () Bool)

(assert (=> b!7453007 (= e!4448631 e!4448634)))

(declare-fun d!2297071 () Bool)

(declare-fun c!1378010 () Bool)

(assert (=> d!2297071 (= c!1378010 ((_ is EmptyExpr!19507) lt!2620884))))

(assert (=> d!2297071 (= (matchRSpec!4186 lt!2620884 (_1!37537 lt!2620888)) e!4448633)))

(assert (=> b!7453008 (= e!4448634 call!684664)))

(declare-fun b!7453009 () Bool)

(declare-fun c!1378009 () Bool)

(assert (=> b!7453009 (= c!1378009 ((_ is ElementMatch!19507) lt!2620884))))

(assert (=> b!7453009 (= e!4448629 e!4448632)))

(declare-fun b!7453010 () Bool)

(assert (=> b!7453010 (= e!4448632 (= (_1!37537 lt!2620888) (Cons!72099 (c!1377942 lt!2620884) Nil!72099)))))

(declare-fun bm!684660 () Bool)

(assert (=> bm!684660 (= call!684665 (isEmpty!41104 (_1!37537 lt!2620888)))))

(declare-fun b!7453011 () Bool)

(assert (=> b!7453011 (= e!4448630 e!4448631)))

(assert (=> b!7453011 (= c!1378012 ((_ is Star!19507) lt!2620884))))

(assert (=> b!7453012 (= e!4448631 call!684664)))

(assert (= (and d!2297071 c!1378010) b!7453004))

(assert (= (and d!2297071 (not c!1378010)) b!7453002))

(assert (= (and b!7453002 res!2989496) b!7453009))

(assert (= (and b!7453009 c!1378009) b!7453010))

(assert (= (and b!7453009 (not c!1378009)) b!7453003))

(assert (= (and b!7453003 c!1378011) b!7453005))

(assert (= (and b!7453003 (not c!1378011)) b!7453011))

(assert (= (and b!7453005 (not res!2989495)) b!7453006))

(assert (= (and b!7453011 c!1378012) b!7453007))

(assert (= (and b!7453011 (not c!1378012)) b!7453012))

(assert (= (and b!7453007 (not res!2989497)) b!7453008))

(assert (= (or b!7453008 b!7453012) bm!684659))

(assert (= (or b!7453004 b!7453007) bm!684660))

(declare-fun m!8058154 () Bool)

(assert (=> bm!684659 m!8058154))

(declare-fun m!8058156 () Bool)

(assert (=> b!7453005 m!8058156))

(declare-fun m!8058158 () Bool)

(assert (=> b!7453006 m!8058158))

(assert (=> bm!684660 m!8058060))

(assert (=> b!7452728 d!2297071))

(declare-fun d!2297101 () Bool)

(assert (=> d!2297101 (= (matchR!9271 r1!5845 (_1!37537 lt!2620888)) (matchRSpec!4186 r1!5845 (_1!37537 lt!2620888)))))

(declare-fun lt!2620920 () Unit!165849)

(declare-fun choose!57605 (Regex!19507 List!72223) Unit!165849)

(assert (=> d!2297101 (= lt!2620920 (choose!57605 r1!5845 (_1!37537 lt!2620888)))))

(assert (=> d!2297101 (validRegex!10021 r1!5845)))

(assert (=> d!2297101 (= (mainMatchTheorem!4180 r1!5845 (_1!37537 lt!2620888)) lt!2620920)))

(declare-fun bs!1927166 () Bool)

(assert (= bs!1927166 d!2297101))

(assert (=> bs!1927166 m!8057976))

(assert (=> bs!1927166 m!8057974))

(declare-fun m!8058196 () Bool)

(assert (=> bs!1927166 m!8058196))

(assert (=> bs!1927166 m!8058026))

(assert (=> b!7452728 d!2297101))

(declare-fun b!7453090 () Bool)

(declare-fun e!4448688 () Bool)

(declare-fun e!4448686 () Bool)

(assert (=> b!7453090 (= e!4448688 e!4448686)))

(declare-fun res!2989535 () Bool)

(assert (=> b!7453090 (=> res!2989535 e!4448686)))

(declare-fun call!684681 () Bool)

(assert (=> b!7453090 (= res!2989535 call!684681)))

(declare-fun b!7453091 () Bool)

(declare-fun e!4448685 () Bool)

(declare-fun e!4448690 () Bool)

(assert (=> b!7453091 (= e!4448685 e!4448690)))

(declare-fun c!1378033 () Bool)

(assert (=> b!7453091 (= c!1378033 ((_ is EmptyLang!19507) r1!5845))))

(declare-fun bm!684676 () Bool)

(assert (=> bm!684676 (= call!684681 (isEmpty!41104 (_1!37537 lt!2620888)))))

(declare-fun b!7453092 () Bool)

(declare-fun e!4448687 () Bool)

(assert (=> b!7453092 (= e!4448687 e!4448688)))

(declare-fun res!2989537 () Bool)

(assert (=> b!7453092 (=> (not res!2989537) (not e!4448688))))

(declare-fun lt!2620921 () Bool)

(assert (=> b!7453092 (= res!2989537 (not lt!2620921))))

(declare-fun b!7453093 () Bool)

(declare-fun res!2989539 () Bool)

(assert (=> b!7453093 (=> res!2989539 e!4448686)))

(assert (=> b!7453093 (= res!2989539 (not (isEmpty!41104 (tail!14863 (_1!37537 lt!2620888)))))))

(declare-fun d!2297113 () Bool)

(assert (=> d!2297113 e!4448685))

(declare-fun c!1378035 () Bool)

(assert (=> d!2297113 (= c!1378035 ((_ is EmptyExpr!19507) r1!5845))))

(declare-fun e!4448691 () Bool)

(assert (=> d!2297113 (= lt!2620921 e!4448691)))

(declare-fun c!1378034 () Bool)

(assert (=> d!2297113 (= c!1378034 (isEmpty!41104 (_1!37537 lt!2620888)))))

(assert (=> d!2297113 (validRegex!10021 r1!5845)))

(assert (=> d!2297113 (= (matchR!9271 r1!5845 (_1!37537 lt!2620888)) lt!2620921)))

(declare-fun b!7453094 () Bool)

(declare-fun res!2989542 () Bool)

(assert (=> b!7453094 (=> res!2989542 e!4448687)))

(declare-fun e!4448689 () Bool)

(assert (=> b!7453094 (= res!2989542 e!4448689)))

(declare-fun res!2989536 () Bool)

(assert (=> b!7453094 (=> (not res!2989536) (not e!4448689))))

(assert (=> b!7453094 (= res!2989536 lt!2620921)))

(declare-fun b!7453095 () Bool)

(assert (=> b!7453095 (= e!4448685 (= lt!2620921 call!684681))))

(declare-fun b!7453096 () Bool)

(declare-fun res!2989540 () Bool)

(assert (=> b!7453096 (=> (not res!2989540) (not e!4448689))))

(assert (=> b!7453096 (= res!2989540 (isEmpty!41104 (tail!14863 (_1!37537 lt!2620888))))))

(declare-fun b!7453097 () Bool)

(assert (=> b!7453097 (= e!4448689 (= (head!15294 (_1!37537 lt!2620888)) (c!1377942 r1!5845)))))

(declare-fun b!7453098 () Bool)

(assert (=> b!7453098 (= e!4448686 (not (= (head!15294 (_1!37537 lt!2620888)) (c!1377942 r1!5845))))))

(declare-fun b!7453099 () Bool)

(assert (=> b!7453099 (= e!4448690 (not lt!2620921))))

(declare-fun b!7453100 () Bool)

(assert (=> b!7453100 (= e!4448691 (matchR!9271 (derivativeStep!5554 r1!5845 (head!15294 (_1!37537 lt!2620888))) (tail!14863 (_1!37537 lt!2620888))))))

(declare-fun b!7453101 () Bool)

(declare-fun res!2989538 () Bool)

(assert (=> b!7453101 (=> (not res!2989538) (not e!4448689))))

(assert (=> b!7453101 (= res!2989538 (not call!684681))))

(declare-fun b!7453102 () Bool)

(assert (=> b!7453102 (= e!4448691 (nullable!8495 r1!5845))))

(declare-fun b!7453103 () Bool)

(declare-fun res!2989541 () Bool)

(assert (=> b!7453103 (=> res!2989541 e!4448687)))

(assert (=> b!7453103 (= res!2989541 (not ((_ is ElementMatch!19507) r1!5845)))))

(assert (=> b!7453103 (= e!4448690 e!4448687)))

(assert (= (and d!2297113 c!1378034) b!7453102))

(assert (= (and d!2297113 (not c!1378034)) b!7453100))

(assert (= (and d!2297113 c!1378035) b!7453095))

(assert (= (and d!2297113 (not c!1378035)) b!7453091))

(assert (= (and b!7453091 c!1378033) b!7453099))

(assert (= (and b!7453091 (not c!1378033)) b!7453103))

(assert (= (and b!7453103 (not res!2989541)) b!7453094))

(assert (= (and b!7453094 res!2989536) b!7453101))

(assert (= (and b!7453101 res!2989538) b!7453096))

(assert (= (and b!7453096 res!2989540) b!7453097))

(assert (= (and b!7453094 (not res!2989542)) b!7453092))

(assert (= (and b!7453092 res!2989537) b!7453090))

(assert (= (and b!7453090 (not res!2989535)) b!7453093))

(assert (= (and b!7453093 (not res!2989539)) b!7453098))

(assert (= (or b!7453095 b!7453090 b!7453101) bm!684676))

(assert (=> b!7453093 m!8058056))

(assert (=> b!7453093 m!8058056))

(assert (=> b!7453093 m!8058058))

(assert (=> d!2297113 m!8058060))

(assert (=> d!2297113 m!8058026))

(assert (=> b!7453097 m!8058062))

(assert (=> b!7453098 m!8058062))

(declare-fun m!8058212 () Bool)

(assert (=> b!7453102 m!8058212))

(assert (=> b!7453100 m!8058062))

(assert (=> b!7453100 m!8058062))

(declare-fun m!8058214 () Bool)

(assert (=> b!7453100 m!8058214))

(assert (=> b!7453100 m!8058056))

(assert (=> b!7453100 m!8058214))

(assert (=> b!7453100 m!8058056))

(declare-fun m!8058216 () Bool)

(assert (=> b!7453100 m!8058216))

(assert (=> b!7453096 m!8058056))

(assert (=> b!7453096 m!8058056))

(assert (=> b!7453096 m!8058058))

(assert (=> bm!684676 m!8058060))

(assert (=> b!7452728 d!2297113))

(declare-fun d!2297119 () Bool)

(assert (=> d!2297119 (= (matchR!9271 rTail!78 (_2!37537 lt!2620888)) (matchRSpec!4186 rTail!78 (_2!37537 lt!2620888)))))

(declare-fun lt!2620923 () Unit!165849)

(assert (=> d!2297119 (= lt!2620923 (choose!57605 rTail!78 (_2!37537 lt!2620888)))))

(assert (=> d!2297119 (validRegex!10021 rTail!78)))

(assert (=> d!2297119 (= (mainMatchTheorem!4180 rTail!78 (_2!37537 lt!2620888)) lt!2620923)))

(declare-fun bs!1927174 () Bool)

(assert (= bs!1927174 d!2297119))

(assert (=> bs!1927174 m!8058042))

(assert (=> bs!1927174 m!8057988))

(declare-fun m!8058218 () Bool)

(assert (=> bs!1927174 m!8058218))

(assert (=> bs!1927174 m!8058024))

(assert (=> b!7452728 d!2297119))

(declare-fun d!2297121 () Bool)

(assert (=> d!2297121 (= (matchR!9271 r2!5783 (_1!37537 lt!2620888)) (matchRSpec!4186 r2!5783 (_1!37537 lt!2620888)))))

(declare-fun lt!2620924 () Unit!165849)

(assert (=> d!2297121 (= lt!2620924 (choose!57605 r2!5783 (_1!37537 lt!2620888)))))

(assert (=> d!2297121 (validRegex!10021 r2!5783)))

(assert (=> d!2297121 (= (mainMatchTheorem!4180 r2!5783 (_1!37537 lt!2620888)) lt!2620924)))

(declare-fun bs!1927177 () Bool)

(assert (= bs!1927177 d!2297121))

(assert (=> bs!1927177 m!8057986))

(assert (=> bs!1927177 m!8057978))

(declare-fun m!8058220 () Bool)

(assert (=> bs!1927177 m!8058220))

(assert (=> bs!1927177 m!8058022))

(assert (=> b!7452728 d!2297121))

(declare-fun bs!1927190 () Bool)

(declare-fun b!7453135 () Bool)

(assert (= bs!1927190 (and b!7453135 b!7452737)))

(declare-fun lambda!461059 () Int)

(assert (=> bs!1927190 (not (= lambda!461059 lambda!461032))))

(assert (=> bs!1927190 (not (= lambda!461059 lambda!461033))))

(declare-fun bs!1927195 () Bool)

(assert (= bs!1927195 (and b!7453135 b!7453008)))

(assert (=> bs!1927195 (= (and (= (reg!19836 r1!5845) (reg!19836 lt!2620884)) (= r1!5845 lt!2620884)) (= lambda!461059 lambda!461053))))

(declare-fun bs!1927199 () Bool)

(assert (= bs!1927199 (and b!7453135 b!7453012)))

(assert (=> bs!1927199 (not (= lambda!461059 lambda!461055))))

(assert (=> b!7453135 true))

(assert (=> b!7453135 true))

(declare-fun bs!1927209 () Bool)

(declare-fun b!7453139 () Bool)

(assert (= bs!1927209 (and b!7453139 b!7453135)))

(declare-fun lambda!461061 () Int)

(assert (=> bs!1927209 (not (= lambda!461061 lambda!461059))))

(declare-fun bs!1927211 () Bool)

(assert (= bs!1927211 (and b!7453139 b!7453008)))

(assert (=> bs!1927211 (not (= lambda!461061 lambda!461053))))

(declare-fun bs!1927212 () Bool)

(assert (= bs!1927212 (and b!7453139 b!7453012)))

(assert (=> bs!1927212 (= (and (= (regOne!39526 r1!5845) (regOne!39526 lt!2620884)) (= (regTwo!39526 r1!5845) (regTwo!39526 lt!2620884))) (= lambda!461061 lambda!461055))))

(declare-fun bs!1927213 () Bool)

(assert (= bs!1927213 (and b!7453139 b!7452737)))

(assert (=> bs!1927213 (= (and (= (_1!37537 lt!2620888) s!13591) (= (regOne!39526 r1!5845) lt!2620884) (= (regTwo!39526 r1!5845) rTail!78)) (= lambda!461061 lambda!461033))))

(assert (=> bs!1927213 (not (= lambda!461061 lambda!461032))))

(assert (=> b!7453139 true))

(assert (=> b!7453139 true))

(declare-fun call!684685 () Bool)

(declare-fun bm!684680 () Bool)

(declare-fun c!1378046 () Bool)

(assert (=> bm!684680 (= call!684685 (Exists!4128 (ite c!1378046 lambda!461059 lambda!461061)))))

(declare-fun b!7453129 () Bool)

(declare-fun e!4448710 () Bool)

(declare-fun e!4448706 () Bool)

(assert (=> b!7453129 (= e!4448710 e!4448706)))

(declare-fun res!2989555 () Bool)

(assert (=> b!7453129 (= res!2989555 (not ((_ is EmptyLang!19507) r1!5845)))))

(assert (=> b!7453129 (=> (not res!2989555) (not e!4448706))))

(declare-fun b!7453130 () Bool)

(declare-fun c!1378045 () Bool)

(assert (=> b!7453130 (= c!1378045 ((_ is Union!19507) r1!5845))))

(declare-fun e!4448709 () Bool)

(declare-fun e!4448707 () Bool)

(assert (=> b!7453130 (= e!4448709 e!4448707)))

(declare-fun b!7453131 () Bool)

(declare-fun call!684686 () Bool)

(assert (=> b!7453131 (= e!4448710 call!684686)))

(declare-fun b!7453132 () Bool)

(declare-fun e!4448712 () Bool)

(assert (=> b!7453132 (= e!4448707 e!4448712)))

(declare-fun res!2989554 () Bool)

(assert (=> b!7453132 (= res!2989554 (matchRSpec!4186 (regOne!39527 r1!5845) (_1!37537 lt!2620888)))))

(assert (=> b!7453132 (=> res!2989554 e!4448712)))

(declare-fun b!7453133 () Bool)

(assert (=> b!7453133 (= e!4448712 (matchRSpec!4186 (regTwo!39527 r1!5845) (_1!37537 lt!2620888)))))

(declare-fun b!7453134 () Bool)

(declare-fun res!2989556 () Bool)

(declare-fun e!4448711 () Bool)

(assert (=> b!7453134 (=> res!2989556 e!4448711)))

(assert (=> b!7453134 (= res!2989556 call!684686)))

(declare-fun e!4448708 () Bool)

(assert (=> b!7453134 (= e!4448708 e!4448711)))

(declare-fun d!2297123 () Bool)

(declare-fun c!1378044 () Bool)

(assert (=> d!2297123 (= c!1378044 ((_ is EmptyExpr!19507) r1!5845))))

(assert (=> d!2297123 (= (matchRSpec!4186 r1!5845 (_1!37537 lt!2620888)) e!4448710)))

(assert (=> b!7453135 (= e!4448711 call!684685)))

(declare-fun b!7453136 () Bool)

(declare-fun c!1378043 () Bool)

(assert (=> b!7453136 (= c!1378043 ((_ is ElementMatch!19507) r1!5845))))

(assert (=> b!7453136 (= e!4448706 e!4448709)))

(declare-fun b!7453137 () Bool)

(assert (=> b!7453137 (= e!4448709 (= (_1!37537 lt!2620888) (Cons!72099 (c!1377942 r1!5845) Nil!72099)))))

(declare-fun bm!684681 () Bool)

(assert (=> bm!684681 (= call!684686 (isEmpty!41104 (_1!37537 lt!2620888)))))

(declare-fun b!7453138 () Bool)

(assert (=> b!7453138 (= e!4448707 e!4448708)))

(assert (=> b!7453138 (= c!1378046 ((_ is Star!19507) r1!5845))))

(assert (=> b!7453139 (= e!4448708 call!684685)))

(assert (= (and d!2297123 c!1378044) b!7453131))

(assert (= (and d!2297123 (not c!1378044)) b!7453129))

(assert (= (and b!7453129 res!2989555) b!7453136))

(assert (= (and b!7453136 c!1378043) b!7453137))

(assert (= (and b!7453136 (not c!1378043)) b!7453130))

(assert (= (and b!7453130 c!1378045) b!7453132))

(assert (= (and b!7453130 (not c!1378045)) b!7453138))

(assert (= (and b!7453132 (not res!2989554)) b!7453133))

(assert (= (and b!7453138 c!1378046) b!7453134))

(assert (= (and b!7453138 (not c!1378046)) b!7453139))

(assert (= (and b!7453134 (not res!2989556)) b!7453135))

(assert (= (or b!7453135 b!7453139) bm!684680))

(assert (= (or b!7453131 b!7453134) bm!684681))

(declare-fun m!8058240 () Bool)

(assert (=> bm!684680 m!8058240))

(declare-fun m!8058242 () Bool)

(assert (=> b!7453132 m!8058242))

(declare-fun m!8058244 () Bool)

(assert (=> b!7453133 m!8058244))

(assert (=> bm!684681 m!8058060))

(assert (=> b!7452728 d!2297123))

(declare-fun d!2297137 () Bool)

(assert (=> d!2297137 (= (matchR!9271 lt!2620884 (_1!37537 lt!2620888)) (matchRSpec!4186 lt!2620884 (_1!37537 lt!2620888)))))

(declare-fun lt!2620929 () Unit!165849)

(assert (=> d!2297137 (= lt!2620929 (choose!57605 lt!2620884 (_1!37537 lt!2620888)))))

(assert (=> d!2297137 (validRegex!10021 lt!2620884)))

(assert (=> d!2297137 (= (mainMatchTheorem!4180 lt!2620884 (_1!37537 lt!2620888)) lt!2620929)))

(declare-fun bs!1927216 () Bool)

(assert (= bs!1927216 d!2297137))

(assert (=> bs!1927216 m!8058016))

(assert (=> bs!1927216 m!8057980))

(declare-fun m!8058246 () Bool)

(assert (=> bs!1927216 m!8058246))

(declare-fun m!8058248 () Bool)

(assert (=> bs!1927216 m!8058248))

(assert (=> b!7452728 d!2297137))

(declare-fun bs!1927218 () Bool)

(declare-fun b!7453174 () Bool)

(assert (= bs!1927218 (and b!7453174 b!7453135)))

(declare-fun lambda!461062 () Int)

(assert (=> bs!1927218 (= (and (= (_2!37537 lt!2620888) (_1!37537 lt!2620888)) (= (reg!19836 rTail!78) (reg!19836 r1!5845)) (= rTail!78 r1!5845)) (= lambda!461062 lambda!461059))))

(declare-fun bs!1927219 () Bool)

(assert (= bs!1927219 (and b!7453174 b!7453139)))

(assert (=> bs!1927219 (not (= lambda!461062 lambda!461061))))

(declare-fun bs!1927220 () Bool)

(assert (= bs!1927220 (and b!7453174 b!7453008)))

(assert (=> bs!1927220 (= (and (= (_2!37537 lt!2620888) (_1!37537 lt!2620888)) (= (reg!19836 rTail!78) (reg!19836 lt!2620884)) (= rTail!78 lt!2620884)) (= lambda!461062 lambda!461053))))

(declare-fun bs!1927221 () Bool)

(assert (= bs!1927221 (and b!7453174 b!7453012)))

(assert (=> bs!1927221 (not (= lambda!461062 lambda!461055))))

(declare-fun bs!1927222 () Bool)

(assert (= bs!1927222 (and b!7453174 b!7452737)))

(assert (=> bs!1927222 (not (= lambda!461062 lambda!461033))))

(assert (=> bs!1927222 (not (= lambda!461062 lambda!461032))))

(assert (=> b!7453174 true))

(assert (=> b!7453174 true))

(declare-fun bs!1927223 () Bool)

(declare-fun b!7453178 () Bool)

(assert (= bs!1927223 (and b!7453178 b!7453135)))

(declare-fun lambda!461063 () Int)

(assert (=> bs!1927223 (not (= lambda!461063 lambda!461059))))

(declare-fun bs!1927224 () Bool)

(assert (= bs!1927224 (and b!7453178 b!7453139)))

(assert (=> bs!1927224 (= (and (= (_2!37537 lt!2620888) (_1!37537 lt!2620888)) (= (regOne!39526 rTail!78) (regOne!39526 r1!5845)) (= (regTwo!39526 rTail!78) (regTwo!39526 r1!5845))) (= lambda!461063 lambda!461061))))

(declare-fun bs!1927225 () Bool)

(assert (= bs!1927225 (and b!7453178 b!7453008)))

(assert (=> bs!1927225 (not (= lambda!461063 lambda!461053))))

(declare-fun bs!1927226 () Bool)

(assert (= bs!1927226 (and b!7453178 b!7453174)))

(assert (=> bs!1927226 (not (= lambda!461063 lambda!461062))))

(declare-fun bs!1927227 () Bool)

(assert (= bs!1927227 (and b!7453178 b!7453012)))

(assert (=> bs!1927227 (= (and (= (_2!37537 lt!2620888) (_1!37537 lt!2620888)) (= (regOne!39526 rTail!78) (regOne!39526 lt!2620884)) (= (regTwo!39526 rTail!78) (regTwo!39526 lt!2620884))) (= lambda!461063 lambda!461055))))

(declare-fun bs!1927228 () Bool)

(assert (= bs!1927228 (and b!7453178 b!7452737)))

(assert (=> bs!1927228 (= (and (= (_2!37537 lt!2620888) s!13591) (= (regOne!39526 rTail!78) lt!2620884) (= (regTwo!39526 rTail!78) rTail!78)) (= lambda!461063 lambda!461033))))

(assert (=> bs!1927228 (not (= lambda!461063 lambda!461032))))

(assert (=> b!7453178 true))

(assert (=> b!7453178 true))

(declare-fun c!1378056 () Bool)

(declare-fun bm!684684 () Bool)

(declare-fun call!684689 () Bool)

(assert (=> bm!684684 (= call!684689 (Exists!4128 (ite c!1378056 lambda!461062 lambda!461063)))))

(declare-fun b!7453168 () Bool)

(declare-fun e!4448731 () Bool)

(declare-fun e!4448727 () Bool)

(assert (=> b!7453168 (= e!4448731 e!4448727)))

(declare-fun res!2989574 () Bool)

(assert (=> b!7453168 (= res!2989574 (not ((_ is EmptyLang!19507) rTail!78)))))

(assert (=> b!7453168 (=> (not res!2989574) (not e!4448727))))

(declare-fun b!7453169 () Bool)

(declare-fun c!1378055 () Bool)

(assert (=> b!7453169 (= c!1378055 ((_ is Union!19507) rTail!78))))

(declare-fun e!4448730 () Bool)

(declare-fun e!4448728 () Bool)

(assert (=> b!7453169 (= e!4448730 e!4448728)))

(declare-fun b!7453170 () Bool)

(declare-fun call!684690 () Bool)

(assert (=> b!7453170 (= e!4448731 call!684690)))

(declare-fun b!7453171 () Bool)

(declare-fun e!4448733 () Bool)

(assert (=> b!7453171 (= e!4448728 e!4448733)))

(declare-fun res!2989573 () Bool)

(assert (=> b!7453171 (= res!2989573 (matchRSpec!4186 (regOne!39527 rTail!78) (_2!37537 lt!2620888)))))

(assert (=> b!7453171 (=> res!2989573 e!4448733)))

(declare-fun b!7453172 () Bool)

(assert (=> b!7453172 (= e!4448733 (matchRSpec!4186 (regTwo!39527 rTail!78) (_2!37537 lt!2620888)))))

(declare-fun b!7453173 () Bool)

(declare-fun res!2989575 () Bool)

(declare-fun e!4448732 () Bool)

(assert (=> b!7453173 (=> res!2989575 e!4448732)))

(assert (=> b!7453173 (= res!2989575 call!684690)))

(declare-fun e!4448729 () Bool)

(assert (=> b!7453173 (= e!4448729 e!4448732)))

(declare-fun d!2297139 () Bool)

(declare-fun c!1378054 () Bool)

(assert (=> d!2297139 (= c!1378054 ((_ is EmptyExpr!19507) rTail!78))))

(assert (=> d!2297139 (= (matchRSpec!4186 rTail!78 (_2!37537 lt!2620888)) e!4448731)))

(assert (=> b!7453174 (= e!4448732 call!684689)))

(declare-fun b!7453175 () Bool)

(declare-fun c!1378053 () Bool)

(assert (=> b!7453175 (= c!1378053 ((_ is ElementMatch!19507) rTail!78))))

(assert (=> b!7453175 (= e!4448727 e!4448730)))

(declare-fun b!7453176 () Bool)

(assert (=> b!7453176 (= e!4448730 (= (_2!37537 lt!2620888) (Cons!72099 (c!1377942 rTail!78) Nil!72099)))))

(declare-fun bm!684685 () Bool)

(assert (=> bm!684685 (= call!684690 (isEmpty!41104 (_2!37537 lt!2620888)))))

(declare-fun b!7453177 () Bool)

(assert (=> b!7453177 (= e!4448728 e!4448729)))

(assert (=> b!7453177 (= c!1378056 ((_ is Star!19507) rTail!78))))

(assert (=> b!7453178 (= e!4448729 call!684689)))

(assert (= (and d!2297139 c!1378054) b!7453170))

(assert (= (and d!2297139 (not c!1378054)) b!7453168))

(assert (= (and b!7453168 res!2989574) b!7453175))

(assert (= (and b!7453175 c!1378053) b!7453176))

(assert (= (and b!7453175 (not c!1378053)) b!7453169))

(assert (= (and b!7453169 c!1378055) b!7453171))

(assert (= (and b!7453169 (not c!1378055)) b!7453177))

(assert (= (and b!7453171 (not res!2989573)) b!7453172))

(assert (= (and b!7453177 c!1378056) b!7453173))

(assert (= (and b!7453177 (not c!1378056)) b!7453178))

(assert (= (and b!7453173 (not res!2989575)) b!7453174))

(assert (= (or b!7453174 b!7453178) bm!684684))

(assert (= (or b!7453170 b!7453173) bm!684685))

(declare-fun m!8058258 () Bool)

(assert (=> bm!684684 m!8058258))

(declare-fun m!8058260 () Bool)

(assert (=> b!7453171 m!8058260))

(declare-fun m!8058262 () Bool)

(assert (=> b!7453172 m!8058262))

(declare-fun m!8058264 () Bool)

(assert (=> bm!684685 m!8058264))

(assert (=> b!7452728 d!2297139))

(declare-fun bs!1927229 () Bool)

(declare-fun b!7453185 () Bool)

(assert (= bs!1927229 (and b!7453185 b!7453135)))

(declare-fun lambda!461064 () Int)

(assert (=> bs!1927229 (= (and (= (reg!19836 r2!5783) (reg!19836 r1!5845)) (= r2!5783 r1!5845)) (= lambda!461064 lambda!461059))))

(declare-fun bs!1927230 () Bool)

(assert (= bs!1927230 (and b!7453185 b!7453178)))

(assert (=> bs!1927230 (not (= lambda!461064 lambda!461063))))

(declare-fun bs!1927231 () Bool)

(assert (= bs!1927231 (and b!7453185 b!7453139)))

(assert (=> bs!1927231 (not (= lambda!461064 lambda!461061))))

(declare-fun bs!1927232 () Bool)

(assert (= bs!1927232 (and b!7453185 b!7453008)))

(assert (=> bs!1927232 (= (and (= (reg!19836 r2!5783) (reg!19836 lt!2620884)) (= r2!5783 lt!2620884)) (= lambda!461064 lambda!461053))))

(declare-fun bs!1927233 () Bool)

(assert (= bs!1927233 (and b!7453185 b!7453174)))

(assert (=> bs!1927233 (= (and (= (_1!37537 lt!2620888) (_2!37537 lt!2620888)) (= (reg!19836 r2!5783) (reg!19836 rTail!78)) (= r2!5783 rTail!78)) (= lambda!461064 lambda!461062))))

(declare-fun bs!1927234 () Bool)

(assert (= bs!1927234 (and b!7453185 b!7453012)))

(assert (=> bs!1927234 (not (= lambda!461064 lambda!461055))))

(declare-fun bs!1927235 () Bool)

(assert (= bs!1927235 (and b!7453185 b!7452737)))

(assert (=> bs!1927235 (not (= lambda!461064 lambda!461033))))

(assert (=> bs!1927235 (not (= lambda!461064 lambda!461032))))

(assert (=> b!7453185 true))

(assert (=> b!7453185 true))

(declare-fun bs!1927236 () Bool)

(declare-fun b!7453189 () Bool)

(assert (= bs!1927236 (and b!7453189 b!7453135)))

(declare-fun lambda!461065 () Int)

(assert (=> bs!1927236 (not (= lambda!461065 lambda!461059))))

(declare-fun bs!1927237 () Bool)

(assert (= bs!1927237 (and b!7453189 b!7453178)))

(assert (=> bs!1927237 (= (and (= (_1!37537 lt!2620888) (_2!37537 lt!2620888)) (= (regOne!39526 r2!5783) (regOne!39526 rTail!78)) (= (regTwo!39526 r2!5783) (regTwo!39526 rTail!78))) (= lambda!461065 lambda!461063))))

(declare-fun bs!1927238 () Bool)

(assert (= bs!1927238 (and b!7453189 b!7453139)))

(assert (=> bs!1927238 (= (and (= (regOne!39526 r2!5783) (regOne!39526 r1!5845)) (= (regTwo!39526 r2!5783) (regTwo!39526 r1!5845))) (= lambda!461065 lambda!461061))))

(declare-fun bs!1927239 () Bool)

(assert (= bs!1927239 (and b!7453189 b!7453008)))

(assert (=> bs!1927239 (not (= lambda!461065 lambda!461053))))

(declare-fun bs!1927240 () Bool)

(assert (= bs!1927240 (and b!7453189 b!7453185)))

(assert (=> bs!1927240 (not (= lambda!461065 lambda!461064))))

(declare-fun bs!1927241 () Bool)

(assert (= bs!1927241 (and b!7453189 b!7453174)))

(assert (=> bs!1927241 (not (= lambda!461065 lambda!461062))))

(declare-fun bs!1927242 () Bool)

(assert (= bs!1927242 (and b!7453189 b!7453012)))

(assert (=> bs!1927242 (= (and (= (regOne!39526 r2!5783) (regOne!39526 lt!2620884)) (= (regTwo!39526 r2!5783) (regTwo!39526 lt!2620884))) (= lambda!461065 lambda!461055))))

(declare-fun bs!1927243 () Bool)

(assert (= bs!1927243 (and b!7453189 b!7452737)))

(assert (=> bs!1927243 (= (and (= (_1!37537 lt!2620888) s!13591) (= (regOne!39526 r2!5783) lt!2620884) (= (regTwo!39526 r2!5783) rTail!78)) (= lambda!461065 lambda!461033))))

(assert (=> bs!1927243 (not (= lambda!461065 lambda!461032))))

(assert (=> b!7453189 true))

(assert (=> b!7453189 true))

(declare-fun call!684691 () Bool)

(declare-fun c!1378060 () Bool)

(declare-fun bm!684686 () Bool)

(assert (=> bm!684686 (= call!684691 (Exists!4128 (ite c!1378060 lambda!461064 lambda!461065)))))

(declare-fun b!7453179 () Bool)

(declare-fun e!4448738 () Bool)

(declare-fun e!4448734 () Bool)

(assert (=> b!7453179 (= e!4448738 e!4448734)))

(declare-fun res!2989577 () Bool)

(assert (=> b!7453179 (= res!2989577 (not ((_ is EmptyLang!19507) r2!5783)))))

(assert (=> b!7453179 (=> (not res!2989577) (not e!4448734))))

(declare-fun b!7453180 () Bool)

(declare-fun c!1378059 () Bool)

(assert (=> b!7453180 (= c!1378059 ((_ is Union!19507) r2!5783))))

(declare-fun e!4448737 () Bool)

(declare-fun e!4448735 () Bool)

(assert (=> b!7453180 (= e!4448737 e!4448735)))

(declare-fun b!7453181 () Bool)

(declare-fun call!684692 () Bool)

(assert (=> b!7453181 (= e!4448738 call!684692)))

(declare-fun b!7453182 () Bool)

(declare-fun e!4448740 () Bool)

(assert (=> b!7453182 (= e!4448735 e!4448740)))

(declare-fun res!2989576 () Bool)

(assert (=> b!7453182 (= res!2989576 (matchRSpec!4186 (regOne!39527 r2!5783) (_1!37537 lt!2620888)))))

(assert (=> b!7453182 (=> res!2989576 e!4448740)))

(declare-fun b!7453183 () Bool)

(assert (=> b!7453183 (= e!4448740 (matchRSpec!4186 (regTwo!39527 r2!5783) (_1!37537 lt!2620888)))))

(declare-fun b!7453184 () Bool)

(declare-fun res!2989578 () Bool)

(declare-fun e!4448739 () Bool)

(assert (=> b!7453184 (=> res!2989578 e!4448739)))

(assert (=> b!7453184 (= res!2989578 call!684692)))

(declare-fun e!4448736 () Bool)

(assert (=> b!7453184 (= e!4448736 e!4448739)))

(declare-fun d!2297145 () Bool)

(declare-fun c!1378058 () Bool)

(assert (=> d!2297145 (= c!1378058 ((_ is EmptyExpr!19507) r2!5783))))

(assert (=> d!2297145 (= (matchRSpec!4186 r2!5783 (_1!37537 lt!2620888)) e!4448738)))

(assert (=> b!7453185 (= e!4448739 call!684691)))

(declare-fun b!7453186 () Bool)

(declare-fun c!1378057 () Bool)

(assert (=> b!7453186 (= c!1378057 ((_ is ElementMatch!19507) r2!5783))))

(assert (=> b!7453186 (= e!4448734 e!4448737)))

(declare-fun b!7453187 () Bool)

(assert (=> b!7453187 (= e!4448737 (= (_1!37537 lt!2620888) (Cons!72099 (c!1377942 r2!5783) Nil!72099)))))

(declare-fun bm!684687 () Bool)

(assert (=> bm!684687 (= call!684692 (isEmpty!41104 (_1!37537 lt!2620888)))))

(declare-fun b!7453188 () Bool)

(assert (=> b!7453188 (= e!4448735 e!4448736)))

(assert (=> b!7453188 (= c!1378060 ((_ is Star!19507) r2!5783))))

(assert (=> b!7453189 (= e!4448736 call!684691)))

(assert (= (and d!2297145 c!1378058) b!7453181))

(assert (= (and d!2297145 (not c!1378058)) b!7453179))

(assert (= (and b!7453179 res!2989577) b!7453186))

(assert (= (and b!7453186 c!1378057) b!7453187))

(assert (= (and b!7453186 (not c!1378057)) b!7453180))

(assert (= (and b!7453180 c!1378059) b!7453182))

(assert (= (and b!7453180 (not c!1378059)) b!7453188))

(assert (= (and b!7453182 (not res!2989576)) b!7453183))

(assert (= (and b!7453188 c!1378060) b!7453184))

(assert (= (and b!7453188 (not c!1378060)) b!7453189))

(assert (= (and b!7453184 (not res!2989578)) b!7453185))

(assert (= (or b!7453185 b!7453189) bm!684686))

(assert (= (or b!7453181 b!7453184) bm!684687))

(declare-fun m!8058288 () Bool)

(assert (=> bm!684686 m!8058288))

(declare-fun m!8058290 () Bool)

(assert (=> b!7453182 m!8058290))

(declare-fun m!8058292 () Bool)

(assert (=> b!7453183 m!8058292))

(assert (=> bm!684687 m!8058060))

(assert (=> b!7452728 d!2297145))

(declare-fun b!7453217 () Bool)

(declare-fun e!4448759 () Bool)

(declare-fun e!4448757 () Bool)

(assert (=> b!7453217 (= e!4448759 e!4448757)))

(declare-fun res!2989594 () Bool)

(assert (=> b!7453217 (=> res!2989594 e!4448757)))

(declare-fun call!684693 () Bool)

(assert (=> b!7453217 (= res!2989594 call!684693)))

(declare-fun b!7453218 () Bool)

(declare-fun e!4448756 () Bool)

(declare-fun e!4448761 () Bool)

(assert (=> b!7453218 (= e!4448756 e!4448761)))

(declare-fun c!1378067 () Bool)

(assert (=> b!7453218 (= c!1378067 ((_ is EmptyLang!19507) rTail!78))))

(declare-fun bm!684688 () Bool)

(assert (=> bm!684688 (= call!684693 (isEmpty!41104 (_2!37537 lt!2620888)))))

(declare-fun b!7453219 () Bool)

(declare-fun e!4448758 () Bool)

(assert (=> b!7453219 (= e!4448758 e!4448759)))

(declare-fun res!2989596 () Bool)

(assert (=> b!7453219 (=> (not res!2989596) (not e!4448759))))

(declare-fun lt!2620939 () Bool)

(assert (=> b!7453219 (= res!2989596 (not lt!2620939))))

(declare-fun b!7453220 () Bool)

(declare-fun res!2989598 () Bool)

(assert (=> b!7453220 (=> res!2989598 e!4448757)))

(assert (=> b!7453220 (= res!2989598 (not (isEmpty!41104 (tail!14863 (_2!37537 lt!2620888)))))))

(declare-fun d!2297149 () Bool)

(assert (=> d!2297149 e!4448756))

(declare-fun c!1378069 () Bool)

(assert (=> d!2297149 (= c!1378069 ((_ is EmptyExpr!19507) rTail!78))))

(declare-fun e!4448762 () Bool)

(assert (=> d!2297149 (= lt!2620939 e!4448762)))

(declare-fun c!1378068 () Bool)

(assert (=> d!2297149 (= c!1378068 (isEmpty!41104 (_2!37537 lt!2620888)))))

(assert (=> d!2297149 (validRegex!10021 rTail!78)))

(assert (=> d!2297149 (= (matchR!9271 rTail!78 (_2!37537 lt!2620888)) lt!2620939)))

(declare-fun b!7453221 () Bool)

(declare-fun res!2989601 () Bool)

(assert (=> b!7453221 (=> res!2989601 e!4448758)))

(declare-fun e!4448760 () Bool)

(assert (=> b!7453221 (= res!2989601 e!4448760)))

(declare-fun res!2989595 () Bool)

(assert (=> b!7453221 (=> (not res!2989595) (not e!4448760))))

(assert (=> b!7453221 (= res!2989595 lt!2620939)))

(declare-fun b!7453222 () Bool)

(assert (=> b!7453222 (= e!4448756 (= lt!2620939 call!684693))))

(declare-fun b!7453223 () Bool)

(declare-fun res!2989599 () Bool)

(assert (=> b!7453223 (=> (not res!2989599) (not e!4448760))))

(assert (=> b!7453223 (= res!2989599 (isEmpty!41104 (tail!14863 (_2!37537 lt!2620888))))))

(declare-fun b!7453224 () Bool)

(assert (=> b!7453224 (= e!4448760 (= (head!15294 (_2!37537 lt!2620888)) (c!1377942 rTail!78)))))

(declare-fun b!7453225 () Bool)

(assert (=> b!7453225 (= e!4448757 (not (= (head!15294 (_2!37537 lt!2620888)) (c!1377942 rTail!78))))))

(declare-fun b!7453226 () Bool)

(assert (=> b!7453226 (= e!4448761 (not lt!2620939))))

(declare-fun b!7453227 () Bool)

(assert (=> b!7453227 (= e!4448762 (matchR!9271 (derivativeStep!5554 rTail!78 (head!15294 (_2!37537 lt!2620888))) (tail!14863 (_2!37537 lt!2620888))))))

(declare-fun b!7453228 () Bool)

(declare-fun res!2989597 () Bool)

(assert (=> b!7453228 (=> (not res!2989597) (not e!4448760))))

(assert (=> b!7453228 (= res!2989597 (not call!684693))))

(declare-fun b!7453229 () Bool)

(assert (=> b!7453229 (= e!4448762 (nullable!8495 rTail!78))))

(declare-fun b!7453230 () Bool)

(declare-fun res!2989600 () Bool)

(assert (=> b!7453230 (=> res!2989600 e!4448758)))

(assert (=> b!7453230 (= res!2989600 (not ((_ is ElementMatch!19507) rTail!78)))))

(assert (=> b!7453230 (= e!4448761 e!4448758)))

(assert (= (and d!2297149 c!1378068) b!7453229))

(assert (= (and d!2297149 (not c!1378068)) b!7453227))

(assert (= (and d!2297149 c!1378069) b!7453222))

(assert (= (and d!2297149 (not c!1378069)) b!7453218))

(assert (= (and b!7453218 c!1378067) b!7453226))

(assert (= (and b!7453218 (not c!1378067)) b!7453230))

(assert (= (and b!7453230 (not res!2989600)) b!7453221))

(assert (= (and b!7453221 res!2989595) b!7453228))

(assert (= (and b!7453228 res!2989597) b!7453223))

(assert (= (and b!7453223 res!2989599) b!7453224))

(assert (= (and b!7453221 (not res!2989601)) b!7453219))

(assert (= (and b!7453219 res!2989596) b!7453217))

(assert (= (and b!7453217 (not res!2989594)) b!7453220))

(assert (= (and b!7453220 (not res!2989598)) b!7453225))

(assert (= (or b!7453222 b!7453217 b!7453228) bm!684688))

(declare-fun m!8058294 () Bool)

(assert (=> b!7453220 m!8058294))

(assert (=> b!7453220 m!8058294))

(declare-fun m!8058296 () Bool)

(assert (=> b!7453220 m!8058296))

(assert (=> d!2297149 m!8058264))

(assert (=> d!2297149 m!8058024))

(declare-fun m!8058298 () Bool)

(assert (=> b!7453224 m!8058298))

(assert (=> b!7453225 m!8058298))

(declare-fun m!8058300 () Bool)

(assert (=> b!7453229 m!8058300))

(assert (=> b!7453227 m!8058298))

(assert (=> b!7453227 m!8058298))

(declare-fun m!8058302 () Bool)

(assert (=> b!7453227 m!8058302))

(assert (=> b!7453227 m!8058294))

(assert (=> b!7453227 m!8058302))

(assert (=> b!7453227 m!8058294))

(declare-fun m!8058304 () Bool)

(assert (=> b!7453227 m!8058304))

(assert (=> b!7453223 m!8058294))

(assert (=> b!7453223 m!8058294))

(assert (=> b!7453223 m!8058296))

(assert (=> bm!684688 m!8058264))

(assert (=> b!7452729 d!2297149))

(declare-fun d!2297151 () Bool)

(assert (=> d!2297151 (= (matchR!9271 lt!2620897 s!13591) (matchRSpec!4186 lt!2620897 s!13591))))

(declare-fun lt!2620940 () Unit!165849)

(assert (=> d!2297151 (= lt!2620940 (choose!57605 lt!2620897 s!13591))))

(assert (=> d!2297151 (validRegex!10021 lt!2620897)))

(assert (=> d!2297151 (= (mainMatchTheorem!4180 lt!2620897 s!13591) lt!2620940)))

(declare-fun bs!1927244 () Bool)

(assert (= bs!1927244 d!2297151))

(assert (=> bs!1927244 m!8058000))

(assert (=> bs!1927244 m!8057998))

(declare-fun m!8058306 () Bool)

(assert (=> bs!1927244 m!8058306))

(assert (=> bs!1927244 m!8058040))

(assert (=> b!7452720 d!2297151))

(declare-fun b!7453231 () Bool)

(declare-fun e!4448766 () Bool)

(declare-fun e!4448764 () Bool)

(assert (=> b!7453231 (= e!4448766 e!4448764)))

(declare-fun res!2989602 () Bool)

(assert (=> b!7453231 (=> res!2989602 e!4448764)))

(declare-fun call!684694 () Bool)

(assert (=> b!7453231 (= res!2989602 call!684694)))

(declare-fun b!7453232 () Bool)

(declare-fun e!4448763 () Bool)

(declare-fun e!4448768 () Bool)

(assert (=> b!7453232 (= e!4448763 e!4448768)))

(declare-fun c!1378070 () Bool)

(assert (=> b!7453232 (= c!1378070 ((_ is EmptyLang!19507) lt!2620897))))

(declare-fun bm!684689 () Bool)

(assert (=> bm!684689 (= call!684694 (isEmpty!41104 s!13591))))

(declare-fun b!7453233 () Bool)

(declare-fun e!4448765 () Bool)

(assert (=> b!7453233 (= e!4448765 e!4448766)))

(declare-fun res!2989604 () Bool)

(assert (=> b!7453233 (=> (not res!2989604) (not e!4448766))))

(declare-fun lt!2620941 () Bool)

(assert (=> b!7453233 (= res!2989604 (not lt!2620941))))

(declare-fun b!7453234 () Bool)

(declare-fun res!2989606 () Bool)

(assert (=> b!7453234 (=> res!2989606 e!4448764)))

(assert (=> b!7453234 (= res!2989606 (not (isEmpty!41104 (tail!14863 s!13591))))))

(declare-fun d!2297153 () Bool)

(assert (=> d!2297153 e!4448763))

(declare-fun c!1378072 () Bool)

(assert (=> d!2297153 (= c!1378072 ((_ is EmptyExpr!19507) lt!2620897))))

(declare-fun e!4448769 () Bool)

(assert (=> d!2297153 (= lt!2620941 e!4448769)))

(declare-fun c!1378071 () Bool)

(assert (=> d!2297153 (= c!1378071 (isEmpty!41104 s!13591))))

(assert (=> d!2297153 (validRegex!10021 lt!2620897)))

(assert (=> d!2297153 (= (matchR!9271 lt!2620897 s!13591) lt!2620941)))

(declare-fun b!7453235 () Bool)

(declare-fun res!2989609 () Bool)

(assert (=> b!7453235 (=> res!2989609 e!4448765)))

(declare-fun e!4448767 () Bool)

(assert (=> b!7453235 (= res!2989609 e!4448767)))

(declare-fun res!2989603 () Bool)

(assert (=> b!7453235 (=> (not res!2989603) (not e!4448767))))

(assert (=> b!7453235 (= res!2989603 lt!2620941)))

(declare-fun b!7453236 () Bool)

(assert (=> b!7453236 (= e!4448763 (= lt!2620941 call!684694))))

(declare-fun b!7453237 () Bool)

(declare-fun res!2989607 () Bool)

(assert (=> b!7453237 (=> (not res!2989607) (not e!4448767))))

(assert (=> b!7453237 (= res!2989607 (isEmpty!41104 (tail!14863 s!13591)))))

(declare-fun b!7453238 () Bool)

(assert (=> b!7453238 (= e!4448767 (= (head!15294 s!13591) (c!1377942 lt!2620897)))))

(declare-fun b!7453239 () Bool)

(assert (=> b!7453239 (= e!4448764 (not (= (head!15294 s!13591) (c!1377942 lt!2620897))))))

(declare-fun b!7453240 () Bool)

(assert (=> b!7453240 (= e!4448768 (not lt!2620941))))

(declare-fun b!7453241 () Bool)

(assert (=> b!7453241 (= e!4448769 (matchR!9271 (derivativeStep!5554 lt!2620897 (head!15294 s!13591)) (tail!14863 s!13591)))))

(declare-fun b!7453242 () Bool)

(declare-fun res!2989605 () Bool)

(assert (=> b!7453242 (=> (not res!2989605) (not e!4448767))))

(assert (=> b!7453242 (= res!2989605 (not call!684694))))

(declare-fun b!7453243 () Bool)

(assert (=> b!7453243 (= e!4448769 (nullable!8495 lt!2620897))))

(declare-fun b!7453244 () Bool)

(declare-fun res!2989608 () Bool)

(assert (=> b!7453244 (=> res!2989608 e!4448765)))

(assert (=> b!7453244 (= res!2989608 (not ((_ is ElementMatch!19507) lt!2620897)))))

(assert (=> b!7453244 (= e!4448768 e!4448765)))

(assert (= (and d!2297153 c!1378071) b!7453243))

(assert (= (and d!2297153 (not c!1378071)) b!7453241))

(assert (= (and d!2297153 c!1378072) b!7453236))

(assert (= (and d!2297153 (not c!1378072)) b!7453232))

(assert (= (and b!7453232 c!1378070) b!7453240))

(assert (= (and b!7453232 (not c!1378070)) b!7453244))

(assert (= (and b!7453244 (not res!2989608)) b!7453235))

(assert (= (and b!7453235 res!2989603) b!7453242))

(assert (= (and b!7453242 res!2989605) b!7453237))

(assert (= (and b!7453237 res!2989607) b!7453238))

(assert (= (and b!7453235 (not res!2989609)) b!7453233))

(assert (= (and b!7453233 res!2989604) b!7453231))

(assert (= (and b!7453231 (not res!2989602)) b!7453234))

(assert (= (and b!7453234 (not res!2989606)) b!7453239))

(assert (= (or b!7453236 b!7453231 b!7453242) bm!684689))

(declare-fun m!8058308 () Bool)

(assert (=> b!7453234 m!8058308))

(assert (=> b!7453234 m!8058308))

(declare-fun m!8058310 () Bool)

(assert (=> b!7453234 m!8058310))

(declare-fun m!8058312 () Bool)

(assert (=> d!2297153 m!8058312))

(assert (=> d!2297153 m!8058040))

(declare-fun m!8058314 () Bool)

(assert (=> b!7453238 m!8058314))

(assert (=> b!7453239 m!8058314))

(declare-fun m!8058316 () Bool)

(assert (=> b!7453243 m!8058316))

(assert (=> b!7453241 m!8058314))

(assert (=> b!7453241 m!8058314))

(declare-fun m!8058318 () Bool)

(assert (=> b!7453241 m!8058318))

(assert (=> b!7453241 m!8058308))

(assert (=> b!7453241 m!8058318))

(assert (=> b!7453241 m!8058308))

(declare-fun m!8058320 () Bool)

(assert (=> b!7453241 m!8058320))

(assert (=> b!7453237 m!8058308))

(assert (=> b!7453237 m!8058308))

(assert (=> b!7453237 m!8058310))

(assert (=> bm!684689 m!8058312))

(assert (=> b!7452720 d!2297153))

(declare-fun bs!1927245 () Bool)

(declare-fun b!7453251 () Bool)

(assert (= bs!1927245 (and b!7453251 b!7453135)))

(declare-fun lambda!461068 () Int)

(assert (=> bs!1927245 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (reg!19836 lt!2620897) (reg!19836 r1!5845)) (= lt!2620897 r1!5845)) (= lambda!461068 lambda!461059))))

(declare-fun bs!1927246 () Bool)

(assert (= bs!1927246 (and b!7453251 b!7453178)))

(assert (=> bs!1927246 (not (= lambda!461068 lambda!461063))))

(declare-fun bs!1927247 () Bool)

(assert (= bs!1927247 (and b!7453251 b!7453189)))

(assert (=> bs!1927247 (not (= lambda!461068 lambda!461065))))

(declare-fun bs!1927248 () Bool)

(assert (= bs!1927248 (and b!7453251 b!7453139)))

(assert (=> bs!1927248 (not (= lambda!461068 lambda!461061))))

(declare-fun bs!1927249 () Bool)

(assert (= bs!1927249 (and b!7453251 b!7453008)))

(assert (=> bs!1927249 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (reg!19836 lt!2620897) (reg!19836 lt!2620884)) (= lt!2620897 lt!2620884)) (= lambda!461068 lambda!461053))))

(declare-fun bs!1927250 () Bool)

(assert (= bs!1927250 (and b!7453251 b!7453185)))

(assert (=> bs!1927250 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (reg!19836 lt!2620897) (reg!19836 r2!5783)) (= lt!2620897 r2!5783)) (= lambda!461068 lambda!461064))))

(declare-fun bs!1927251 () Bool)

(assert (= bs!1927251 (and b!7453251 b!7453174)))

(assert (=> bs!1927251 (= (and (= s!13591 (_2!37537 lt!2620888)) (= (reg!19836 lt!2620897) (reg!19836 rTail!78)) (= lt!2620897 rTail!78)) (= lambda!461068 lambda!461062))))

(declare-fun bs!1927252 () Bool)

(assert (= bs!1927252 (and b!7453251 b!7453012)))

(assert (=> bs!1927252 (not (= lambda!461068 lambda!461055))))

(declare-fun bs!1927253 () Bool)

(assert (= bs!1927253 (and b!7453251 b!7452737)))

(assert (=> bs!1927253 (not (= lambda!461068 lambda!461033))))

(assert (=> bs!1927253 (not (= lambda!461068 lambda!461032))))

(assert (=> b!7453251 true))

(assert (=> b!7453251 true))

(declare-fun bs!1927261 () Bool)

(declare-fun b!7453255 () Bool)

(assert (= bs!1927261 (and b!7453255 b!7453135)))

(declare-fun lambda!461072 () Int)

(assert (=> bs!1927261 (not (= lambda!461072 lambda!461059))))

(declare-fun bs!1927264 () Bool)

(assert (= bs!1927264 (and b!7453255 b!7453178)))

(assert (=> bs!1927264 (= (and (= s!13591 (_2!37537 lt!2620888)) (= (regOne!39526 lt!2620897) (regOne!39526 rTail!78)) (= (regTwo!39526 lt!2620897) (regTwo!39526 rTail!78))) (= lambda!461072 lambda!461063))))

(declare-fun bs!1927267 () Bool)

(assert (= bs!1927267 (and b!7453255 b!7453189)))

(assert (=> bs!1927267 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (regOne!39526 lt!2620897) (regOne!39526 r2!5783)) (= (regTwo!39526 lt!2620897) (regTwo!39526 r2!5783))) (= lambda!461072 lambda!461065))))

(declare-fun bs!1927270 () Bool)

(assert (= bs!1927270 (and b!7453255 b!7453139)))

(assert (=> bs!1927270 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (regOne!39526 lt!2620897) (regOne!39526 r1!5845)) (= (regTwo!39526 lt!2620897) (regTwo!39526 r1!5845))) (= lambda!461072 lambda!461061))))

(declare-fun bs!1927273 () Bool)

(assert (= bs!1927273 (and b!7453255 b!7453008)))

(assert (=> bs!1927273 (not (= lambda!461072 lambda!461053))))

(declare-fun bs!1927276 () Bool)

(assert (= bs!1927276 (and b!7453255 b!7453185)))

(assert (=> bs!1927276 (not (= lambda!461072 lambda!461064))))

(declare-fun bs!1927277 () Bool)

(assert (= bs!1927277 (and b!7453255 b!7453174)))

(assert (=> bs!1927277 (not (= lambda!461072 lambda!461062))))

(declare-fun bs!1927278 () Bool)

(assert (= bs!1927278 (and b!7453255 b!7453012)))

(assert (=> bs!1927278 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (regOne!39526 lt!2620897) (regOne!39526 lt!2620884)) (= (regTwo!39526 lt!2620897) (regTwo!39526 lt!2620884))) (= lambda!461072 lambda!461055))))

(declare-fun bs!1927279 () Bool)

(assert (= bs!1927279 (and b!7453255 b!7453251)))

(assert (=> bs!1927279 (not (= lambda!461072 lambda!461068))))

(declare-fun bs!1927280 () Bool)

(assert (= bs!1927280 (and b!7453255 b!7452737)))

(assert (=> bs!1927280 (= (and (= (regOne!39526 lt!2620897) lt!2620884) (= (regTwo!39526 lt!2620897) rTail!78)) (= lambda!461072 lambda!461033))))

(assert (=> bs!1927280 (not (= lambda!461072 lambda!461032))))

(assert (=> b!7453255 true))

(assert (=> b!7453255 true))

(declare-fun c!1378076 () Bool)

(declare-fun bm!684690 () Bool)

(declare-fun call!684695 () Bool)

(assert (=> bm!684690 (= call!684695 (Exists!4128 (ite c!1378076 lambda!461068 lambda!461072)))))

(declare-fun b!7453245 () Bool)

(declare-fun e!4448774 () Bool)

(declare-fun e!4448770 () Bool)

(assert (=> b!7453245 (= e!4448774 e!4448770)))

(declare-fun res!2989611 () Bool)

(assert (=> b!7453245 (= res!2989611 (not ((_ is EmptyLang!19507) lt!2620897)))))

(assert (=> b!7453245 (=> (not res!2989611) (not e!4448770))))

(declare-fun b!7453246 () Bool)

(declare-fun c!1378075 () Bool)

(assert (=> b!7453246 (= c!1378075 ((_ is Union!19507) lt!2620897))))

(declare-fun e!4448773 () Bool)

(declare-fun e!4448771 () Bool)

(assert (=> b!7453246 (= e!4448773 e!4448771)))

(declare-fun b!7453247 () Bool)

(declare-fun call!684696 () Bool)

(assert (=> b!7453247 (= e!4448774 call!684696)))

(declare-fun b!7453248 () Bool)

(declare-fun e!4448776 () Bool)

(assert (=> b!7453248 (= e!4448771 e!4448776)))

(declare-fun res!2989610 () Bool)

(assert (=> b!7453248 (= res!2989610 (matchRSpec!4186 (regOne!39527 lt!2620897) s!13591))))

(assert (=> b!7453248 (=> res!2989610 e!4448776)))

(declare-fun b!7453249 () Bool)

(assert (=> b!7453249 (= e!4448776 (matchRSpec!4186 (regTwo!39527 lt!2620897) s!13591))))

(declare-fun b!7453250 () Bool)

(declare-fun res!2989612 () Bool)

(declare-fun e!4448775 () Bool)

(assert (=> b!7453250 (=> res!2989612 e!4448775)))

(assert (=> b!7453250 (= res!2989612 call!684696)))

(declare-fun e!4448772 () Bool)

(assert (=> b!7453250 (= e!4448772 e!4448775)))

(declare-fun d!2297155 () Bool)

(declare-fun c!1378074 () Bool)

(assert (=> d!2297155 (= c!1378074 ((_ is EmptyExpr!19507) lt!2620897))))

(assert (=> d!2297155 (= (matchRSpec!4186 lt!2620897 s!13591) e!4448774)))

(assert (=> b!7453251 (= e!4448775 call!684695)))

(declare-fun b!7453252 () Bool)

(declare-fun c!1378073 () Bool)

(assert (=> b!7453252 (= c!1378073 ((_ is ElementMatch!19507) lt!2620897))))

(assert (=> b!7453252 (= e!4448770 e!4448773)))

(declare-fun b!7453253 () Bool)

(assert (=> b!7453253 (= e!4448773 (= s!13591 (Cons!72099 (c!1377942 lt!2620897) Nil!72099)))))

(declare-fun bm!684691 () Bool)

(assert (=> bm!684691 (= call!684696 (isEmpty!41104 s!13591))))

(declare-fun b!7453254 () Bool)

(assert (=> b!7453254 (= e!4448771 e!4448772)))

(assert (=> b!7453254 (= c!1378076 ((_ is Star!19507) lt!2620897))))

(assert (=> b!7453255 (= e!4448772 call!684695)))

(assert (= (and d!2297155 c!1378074) b!7453247))

(assert (= (and d!2297155 (not c!1378074)) b!7453245))

(assert (= (and b!7453245 res!2989611) b!7453252))

(assert (= (and b!7453252 c!1378073) b!7453253))

(assert (= (and b!7453252 (not c!1378073)) b!7453246))

(assert (= (and b!7453246 c!1378075) b!7453248))

(assert (= (and b!7453246 (not c!1378075)) b!7453254))

(assert (= (and b!7453248 (not res!2989610)) b!7453249))

(assert (= (and b!7453254 c!1378076) b!7453250))

(assert (= (and b!7453254 (not c!1378076)) b!7453255))

(assert (= (and b!7453250 (not res!2989612)) b!7453251))

(assert (= (or b!7453251 b!7453255) bm!684690))

(assert (= (or b!7453247 b!7453250) bm!684691))

(declare-fun m!8058322 () Bool)

(assert (=> bm!684690 m!8058322))

(declare-fun m!8058324 () Bool)

(assert (=> b!7453248 m!8058324))

(declare-fun m!8058326 () Bool)

(assert (=> b!7453249 m!8058326))

(assert (=> bm!684691 m!8058312))

(assert (=> b!7452720 d!2297155))

(declare-fun b!7453264 () Bool)

(declare-fun e!4448784 () Bool)

(declare-fun e!4448782 () Bool)

(assert (=> b!7453264 (= e!4448784 e!4448782)))

(declare-fun res!2989621 () Bool)

(assert (=> b!7453264 (=> res!2989621 e!4448782)))

(declare-fun call!684697 () Bool)

(assert (=> b!7453264 (= res!2989621 call!684697)))

(declare-fun b!7453265 () Bool)

(declare-fun e!4448781 () Bool)

(declare-fun e!4448786 () Bool)

(assert (=> b!7453265 (= e!4448781 e!4448786)))

(declare-fun c!1378077 () Bool)

(assert (=> b!7453265 (= c!1378077 ((_ is EmptyLang!19507) lt!2620883))))

(declare-fun bm!684692 () Bool)

(assert (=> bm!684692 (= call!684697 (isEmpty!41104 s!13591))))

(declare-fun b!7453266 () Bool)

(declare-fun e!4448783 () Bool)

(assert (=> b!7453266 (= e!4448783 e!4448784)))

(declare-fun res!2989623 () Bool)

(assert (=> b!7453266 (=> (not res!2989623) (not e!4448784))))

(declare-fun lt!2620945 () Bool)

(assert (=> b!7453266 (= res!2989623 (not lt!2620945))))

(declare-fun b!7453267 () Bool)

(declare-fun res!2989625 () Bool)

(assert (=> b!7453267 (=> res!2989625 e!4448782)))

(assert (=> b!7453267 (= res!2989625 (not (isEmpty!41104 (tail!14863 s!13591))))))

(declare-fun d!2297157 () Bool)

(assert (=> d!2297157 e!4448781))

(declare-fun c!1378079 () Bool)

(assert (=> d!2297157 (= c!1378079 ((_ is EmptyExpr!19507) lt!2620883))))

(declare-fun e!4448787 () Bool)

(assert (=> d!2297157 (= lt!2620945 e!4448787)))

(declare-fun c!1378078 () Bool)

(assert (=> d!2297157 (= c!1378078 (isEmpty!41104 s!13591))))

(assert (=> d!2297157 (validRegex!10021 lt!2620883)))

(assert (=> d!2297157 (= (matchR!9271 lt!2620883 s!13591) lt!2620945)))

(declare-fun b!7453268 () Bool)

(declare-fun res!2989628 () Bool)

(assert (=> b!7453268 (=> res!2989628 e!4448783)))

(declare-fun e!4448785 () Bool)

(assert (=> b!7453268 (= res!2989628 e!4448785)))

(declare-fun res!2989622 () Bool)

(assert (=> b!7453268 (=> (not res!2989622) (not e!4448785))))

(assert (=> b!7453268 (= res!2989622 lt!2620945)))

(declare-fun b!7453269 () Bool)

(assert (=> b!7453269 (= e!4448781 (= lt!2620945 call!684697))))

(declare-fun b!7453270 () Bool)

(declare-fun res!2989626 () Bool)

(assert (=> b!7453270 (=> (not res!2989626) (not e!4448785))))

(assert (=> b!7453270 (= res!2989626 (isEmpty!41104 (tail!14863 s!13591)))))

(declare-fun b!7453271 () Bool)

(assert (=> b!7453271 (= e!4448785 (= (head!15294 s!13591) (c!1377942 lt!2620883)))))

(declare-fun b!7453272 () Bool)

(assert (=> b!7453272 (= e!4448782 (not (= (head!15294 s!13591) (c!1377942 lt!2620883))))))

(declare-fun b!7453273 () Bool)

(assert (=> b!7453273 (= e!4448786 (not lt!2620945))))

(declare-fun b!7453274 () Bool)

(assert (=> b!7453274 (= e!4448787 (matchR!9271 (derivativeStep!5554 lt!2620883 (head!15294 s!13591)) (tail!14863 s!13591)))))

(declare-fun b!7453275 () Bool)

(declare-fun res!2989624 () Bool)

(assert (=> b!7453275 (=> (not res!2989624) (not e!4448785))))

(assert (=> b!7453275 (= res!2989624 (not call!684697))))

(declare-fun b!7453276 () Bool)

(assert (=> b!7453276 (= e!4448787 (nullable!8495 lt!2620883))))

(declare-fun b!7453277 () Bool)

(declare-fun res!2989627 () Bool)

(assert (=> b!7453277 (=> res!2989627 e!4448783)))

(assert (=> b!7453277 (= res!2989627 (not ((_ is ElementMatch!19507) lt!2620883)))))

(assert (=> b!7453277 (= e!4448786 e!4448783)))

(assert (= (and d!2297157 c!1378078) b!7453276))

(assert (= (and d!2297157 (not c!1378078)) b!7453274))

(assert (= (and d!2297157 c!1378079) b!7453269))

(assert (= (and d!2297157 (not c!1378079)) b!7453265))

(assert (= (and b!7453265 c!1378077) b!7453273))

(assert (= (and b!7453265 (not c!1378077)) b!7453277))

(assert (= (and b!7453277 (not res!2989627)) b!7453268))

(assert (= (and b!7453268 res!2989622) b!7453275))

(assert (= (and b!7453275 res!2989624) b!7453270))

(assert (= (and b!7453270 res!2989626) b!7453271))

(assert (= (and b!7453268 (not res!2989628)) b!7453266))

(assert (= (and b!7453266 res!2989623) b!7453264))

(assert (= (and b!7453264 (not res!2989621)) b!7453267))

(assert (= (and b!7453267 (not res!2989625)) b!7453272))

(assert (= (or b!7453269 b!7453264 b!7453275) bm!684692))

(assert (=> b!7453267 m!8058308))

(assert (=> b!7453267 m!8058308))

(assert (=> b!7453267 m!8058310))

(assert (=> d!2297157 m!8058312))

(declare-fun m!8058336 () Bool)

(assert (=> d!2297157 m!8058336))

(assert (=> b!7453271 m!8058314))

(assert (=> b!7453272 m!8058314))

(declare-fun m!8058338 () Bool)

(assert (=> b!7453276 m!8058338))

(assert (=> b!7453274 m!8058314))

(assert (=> b!7453274 m!8058314))

(declare-fun m!8058340 () Bool)

(assert (=> b!7453274 m!8058340))

(assert (=> b!7453274 m!8058308))

(assert (=> b!7453274 m!8058340))

(assert (=> b!7453274 m!8058308))

(declare-fun m!8058342 () Bool)

(assert (=> b!7453274 m!8058342))

(assert (=> b!7453270 m!8058308))

(assert (=> b!7453270 m!8058308))

(assert (=> b!7453270 m!8058310))

(assert (=> bm!684692 m!8058312))

(assert (=> b!7452720 d!2297157))

(declare-fun bs!1927283 () Bool)

(declare-fun b!7453284 () Bool)

(assert (= bs!1927283 (and b!7453284 b!7453135)))

(declare-fun lambda!461074 () Int)

(assert (=> bs!1927283 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (reg!19836 lt!2620883) (reg!19836 r1!5845)) (= lt!2620883 r1!5845)) (= lambda!461074 lambda!461059))))

(declare-fun bs!1927284 () Bool)

(assert (= bs!1927284 (and b!7453284 b!7453178)))

(assert (=> bs!1927284 (not (= lambda!461074 lambda!461063))))

(declare-fun bs!1927285 () Bool)

(assert (= bs!1927285 (and b!7453284 b!7453189)))

(assert (=> bs!1927285 (not (= lambda!461074 lambda!461065))))

(declare-fun bs!1927286 () Bool)

(assert (= bs!1927286 (and b!7453284 b!7453139)))

(assert (=> bs!1927286 (not (= lambda!461074 lambda!461061))))

(declare-fun bs!1927287 () Bool)

(assert (= bs!1927287 (and b!7453284 b!7453255)))

(assert (=> bs!1927287 (not (= lambda!461074 lambda!461072))))

(declare-fun bs!1927288 () Bool)

(assert (= bs!1927288 (and b!7453284 b!7453008)))

(assert (=> bs!1927288 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (reg!19836 lt!2620883) (reg!19836 lt!2620884)) (= lt!2620883 lt!2620884)) (= lambda!461074 lambda!461053))))

(declare-fun bs!1927289 () Bool)

(assert (= bs!1927289 (and b!7453284 b!7453185)))

(assert (=> bs!1927289 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (reg!19836 lt!2620883) (reg!19836 r2!5783)) (= lt!2620883 r2!5783)) (= lambda!461074 lambda!461064))))

(declare-fun bs!1927290 () Bool)

(assert (= bs!1927290 (and b!7453284 b!7453174)))

(assert (=> bs!1927290 (= (and (= s!13591 (_2!37537 lt!2620888)) (= (reg!19836 lt!2620883) (reg!19836 rTail!78)) (= lt!2620883 rTail!78)) (= lambda!461074 lambda!461062))))

(declare-fun bs!1927291 () Bool)

(assert (= bs!1927291 (and b!7453284 b!7453012)))

(assert (=> bs!1927291 (not (= lambda!461074 lambda!461055))))

(declare-fun bs!1927292 () Bool)

(assert (= bs!1927292 (and b!7453284 b!7453251)))

(assert (=> bs!1927292 (= (and (= (reg!19836 lt!2620883) (reg!19836 lt!2620897)) (= lt!2620883 lt!2620897)) (= lambda!461074 lambda!461068))))

(declare-fun bs!1927293 () Bool)

(assert (= bs!1927293 (and b!7453284 b!7452737)))

(assert (=> bs!1927293 (not (= lambda!461074 lambda!461033))))

(assert (=> bs!1927293 (not (= lambda!461074 lambda!461032))))

(assert (=> b!7453284 true))

(assert (=> b!7453284 true))

(declare-fun bs!1927294 () Bool)

(declare-fun b!7453288 () Bool)

(assert (= bs!1927294 (and b!7453288 b!7453135)))

(declare-fun lambda!461077 () Int)

(assert (=> bs!1927294 (not (= lambda!461077 lambda!461059))))

(declare-fun bs!1927295 () Bool)

(assert (= bs!1927295 (and b!7453288 b!7453178)))

(assert (=> bs!1927295 (= (and (= s!13591 (_2!37537 lt!2620888)) (= (regOne!39526 lt!2620883) (regOne!39526 rTail!78)) (= (regTwo!39526 lt!2620883) (regTwo!39526 rTail!78))) (= lambda!461077 lambda!461063))))

(declare-fun bs!1927296 () Bool)

(assert (= bs!1927296 (and b!7453288 b!7453189)))

(assert (=> bs!1927296 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (regOne!39526 lt!2620883) (regOne!39526 r2!5783)) (= (regTwo!39526 lt!2620883) (regTwo!39526 r2!5783))) (= lambda!461077 lambda!461065))))

(declare-fun bs!1927297 () Bool)

(assert (= bs!1927297 (and b!7453288 b!7453139)))

(assert (=> bs!1927297 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (regOne!39526 lt!2620883) (regOne!39526 r1!5845)) (= (regTwo!39526 lt!2620883) (regTwo!39526 r1!5845))) (= lambda!461077 lambda!461061))))

(declare-fun bs!1927298 () Bool)

(assert (= bs!1927298 (and b!7453288 b!7453255)))

(assert (=> bs!1927298 (= (and (= (regOne!39526 lt!2620883) (regOne!39526 lt!2620897)) (= (regTwo!39526 lt!2620883) (regTwo!39526 lt!2620897))) (= lambda!461077 lambda!461072))))

(declare-fun bs!1927299 () Bool)

(assert (= bs!1927299 (and b!7453288 b!7453008)))

(assert (=> bs!1927299 (not (= lambda!461077 lambda!461053))))

(declare-fun bs!1927301 () Bool)

(assert (= bs!1927301 (and b!7453288 b!7453185)))

(assert (=> bs!1927301 (not (= lambda!461077 lambda!461064))))

(declare-fun bs!1927303 () Bool)

(assert (= bs!1927303 (and b!7453288 b!7453284)))

(assert (=> bs!1927303 (not (= lambda!461077 lambda!461074))))

(declare-fun bs!1927306 () Bool)

(assert (= bs!1927306 (and b!7453288 b!7453174)))

(assert (=> bs!1927306 (not (= lambda!461077 lambda!461062))))

(declare-fun bs!1927309 () Bool)

(assert (= bs!1927309 (and b!7453288 b!7453012)))

(assert (=> bs!1927309 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (regOne!39526 lt!2620883) (regOne!39526 lt!2620884)) (= (regTwo!39526 lt!2620883) (regTwo!39526 lt!2620884))) (= lambda!461077 lambda!461055))))

(declare-fun bs!1927312 () Bool)

(assert (= bs!1927312 (and b!7453288 b!7453251)))

(assert (=> bs!1927312 (not (= lambda!461077 lambda!461068))))

(declare-fun bs!1927315 () Bool)

(assert (= bs!1927315 (and b!7453288 b!7452737)))

(assert (=> bs!1927315 (= (and (= (regOne!39526 lt!2620883) lt!2620884) (= (regTwo!39526 lt!2620883) rTail!78)) (= lambda!461077 lambda!461033))))

(assert (=> bs!1927315 (not (= lambda!461077 lambda!461032))))

(assert (=> b!7453288 true))

(assert (=> b!7453288 true))

(declare-fun bm!684693 () Bool)

(declare-fun call!684698 () Bool)

(declare-fun c!1378083 () Bool)

(assert (=> bm!684693 (= call!684698 (Exists!4128 (ite c!1378083 lambda!461074 lambda!461077)))))

(declare-fun b!7453278 () Bool)

(declare-fun e!4448792 () Bool)

(declare-fun e!4448788 () Bool)

(assert (=> b!7453278 (= e!4448792 e!4448788)))

(declare-fun res!2989630 () Bool)

(assert (=> b!7453278 (= res!2989630 (not ((_ is EmptyLang!19507) lt!2620883)))))

(assert (=> b!7453278 (=> (not res!2989630) (not e!4448788))))

(declare-fun b!7453279 () Bool)

(declare-fun c!1378082 () Bool)

(assert (=> b!7453279 (= c!1378082 ((_ is Union!19507) lt!2620883))))

(declare-fun e!4448791 () Bool)

(declare-fun e!4448789 () Bool)

(assert (=> b!7453279 (= e!4448791 e!4448789)))

(declare-fun b!7453280 () Bool)

(declare-fun call!684699 () Bool)

(assert (=> b!7453280 (= e!4448792 call!684699)))

(declare-fun b!7453281 () Bool)

(declare-fun e!4448794 () Bool)

(assert (=> b!7453281 (= e!4448789 e!4448794)))

(declare-fun res!2989629 () Bool)

(assert (=> b!7453281 (= res!2989629 (matchRSpec!4186 (regOne!39527 lt!2620883) s!13591))))

(assert (=> b!7453281 (=> res!2989629 e!4448794)))

(declare-fun b!7453282 () Bool)

(assert (=> b!7453282 (= e!4448794 (matchRSpec!4186 (regTwo!39527 lt!2620883) s!13591))))

(declare-fun b!7453283 () Bool)

(declare-fun res!2989631 () Bool)

(declare-fun e!4448793 () Bool)

(assert (=> b!7453283 (=> res!2989631 e!4448793)))

(assert (=> b!7453283 (= res!2989631 call!684699)))

(declare-fun e!4448790 () Bool)

(assert (=> b!7453283 (= e!4448790 e!4448793)))

(declare-fun d!2297163 () Bool)

(declare-fun c!1378081 () Bool)

(assert (=> d!2297163 (= c!1378081 ((_ is EmptyExpr!19507) lt!2620883))))

(assert (=> d!2297163 (= (matchRSpec!4186 lt!2620883 s!13591) e!4448792)))

(assert (=> b!7453284 (= e!4448793 call!684698)))

(declare-fun b!7453285 () Bool)

(declare-fun c!1378080 () Bool)

(assert (=> b!7453285 (= c!1378080 ((_ is ElementMatch!19507) lt!2620883))))

(assert (=> b!7453285 (= e!4448788 e!4448791)))

(declare-fun b!7453286 () Bool)

(assert (=> b!7453286 (= e!4448791 (= s!13591 (Cons!72099 (c!1377942 lt!2620883) Nil!72099)))))

(declare-fun bm!684694 () Bool)

(assert (=> bm!684694 (= call!684699 (isEmpty!41104 s!13591))))

(declare-fun b!7453287 () Bool)

(assert (=> b!7453287 (= e!4448789 e!4448790)))

(assert (=> b!7453287 (= c!1378083 ((_ is Star!19507) lt!2620883))))

(assert (=> b!7453288 (= e!4448790 call!684698)))

(assert (= (and d!2297163 c!1378081) b!7453280))

(assert (= (and d!2297163 (not c!1378081)) b!7453278))

(assert (= (and b!7453278 res!2989630) b!7453285))

(assert (= (and b!7453285 c!1378080) b!7453286))

(assert (= (and b!7453285 (not c!1378080)) b!7453279))

(assert (= (and b!7453279 c!1378082) b!7453281))

(assert (= (and b!7453279 (not c!1378082)) b!7453287))

(assert (= (and b!7453281 (not res!2989629)) b!7453282))

(assert (= (and b!7453287 c!1378083) b!7453283))

(assert (= (and b!7453287 (not c!1378083)) b!7453288))

(assert (= (and b!7453283 (not res!2989631)) b!7453284))

(assert (= (or b!7453284 b!7453288) bm!684693))

(assert (= (or b!7453280 b!7453283) bm!684694))

(declare-fun m!8058344 () Bool)

(assert (=> bm!684693 m!8058344))

(declare-fun m!8058348 () Bool)

(assert (=> b!7453281 m!8058348))

(declare-fun m!8058352 () Bool)

(assert (=> b!7453282 m!8058352))

(assert (=> bm!684694 m!8058312))

(assert (=> b!7452720 d!2297163))

(declare-fun d!2297165 () Bool)

(assert (=> d!2297165 (= (matchR!9271 lt!2620883 s!13591) (matchRSpec!4186 lt!2620883 s!13591))))

(declare-fun lt!2620949 () Unit!165849)

(assert (=> d!2297165 (= lt!2620949 (choose!57605 lt!2620883 s!13591))))

(assert (=> d!2297165 (validRegex!10021 lt!2620883)))

(assert (=> d!2297165 (= (mainMatchTheorem!4180 lt!2620883 s!13591) lt!2620949)))

(declare-fun bs!1927325 () Bool)

(assert (= bs!1927325 d!2297165))

(assert (=> bs!1927325 m!8057996))

(assert (=> bs!1927325 m!8058004))

(declare-fun m!8058356 () Bool)

(assert (=> bs!1927325 m!8058356))

(assert (=> bs!1927325 m!8058336))

(assert (=> b!7452720 d!2297165))

(declare-fun d!2297167 () Bool)

(declare-fun res!2989650 () Bool)

(declare-fun e!4448834 () Bool)

(assert (=> d!2297167 (=> res!2989650 e!4448834)))

(assert (=> d!2297167 (= res!2989650 ((_ is ElementMatch!19507) rTail!78))))

(assert (=> d!2297167 (= (validRegex!10021 rTail!78) e!4448834)))

(declare-fun b!7453386 () Bool)

(declare-fun e!4448835 () Bool)

(declare-fun call!684706 () Bool)

(assert (=> b!7453386 (= e!4448835 call!684706)))

(declare-fun b!7453387 () Bool)

(declare-fun res!2989648 () Bool)

(declare-fun e!4448836 () Bool)

(assert (=> b!7453387 (=> res!2989648 e!4448836)))

(assert (=> b!7453387 (= res!2989648 (not ((_ is Concat!28352) rTail!78)))))

(declare-fun e!4448837 () Bool)

(assert (=> b!7453387 (= e!4448837 e!4448836)))

(declare-fun b!7453388 () Bool)

(declare-fun e!4448833 () Bool)

(assert (=> b!7453388 (= e!4448833 e!4448837)))

(declare-fun c!1378089 () Bool)

(assert (=> b!7453388 (= c!1378089 ((_ is Union!19507) rTail!78))))

(declare-fun bm!684701 () Bool)

(declare-fun call!684708 () Bool)

(assert (=> bm!684701 (= call!684706 call!684708)))

(declare-fun bm!684702 () Bool)

(declare-fun c!1378088 () Bool)

(assert (=> bm!684702 (= call!684708 (validRegex!10021 (ite c!1378088 (reg!19836 rTail!78) (ite c!1378089 (regTwo!39527 rTail!78) (regTwo!39526 rTail!78)))))))

(declare-fun bm!684703 () Bool)

(declare-fun call!684707 () Bool)

(assert (=> bm!684703 (= call!684707 (validRegex!10021 (ite c!1378089 (regOne!39527 rTail!78) (regOne!39526 rTail!78))))))

(declare-fun b!7453389 () Bool)

(declare-fun e!4448832 () Bool)

(assert (=> b!7453389 (= e!4448832 call!684708)))

(declare-fun b!7453390 () Bool)

(assert (=> b!7453390 (= e!4448833 e!4448832)))

(declare-fun res!2989646 () Bool)

(assert (=> b!7453390 (= res!2989646 (not (nullable!8495 (reg!19836 rTail!78))))))

(assert (=> b!7453390 (=> (not res!2989646) (not e!4448832))))

(declare-fun b!7453391 () Bool)

(declare-fun e!4448831 () Bool)

(assert (=> b!7453391 (= e!4448836 e!4448831)))

(declare-fun res!2989647 () Bool)

(assert (=> b!7453391 (=> (not res!2989647) (not e!4448831))))

(assert (=> b!7453391 (= res!2989647 call!684707)))

(declare-fun b!7453392 () Bool)

(assert (=> b!7453392 (= e!4448834 e!4448833)))

(assert (=> b!7453392 (= c!1378088 ((_ is Star!19507) rTail!78))))

(declare-fun b!7453393 () Bool)

(declare-fun res!2989649 () Bool)

(assert (=> b!7453393 (=> (not res!2989649) (not e!4448835))))

(assert (=> b!7453393 (= res!2989649 call!684707)))

(assert (=> b!7453393 (= e!4448837 e!4448835)))

(declare-fun b!7453394 () Bool)

(assert (=> b!7453394 (= e!4448831 call!684706)))

(assert (= (and d!2297167 (not res!2989650)) b!7453392))

(assert (= (and b!7453392 c!1378088) b!7453390))

(assert (= (and b!7453392 (not c!1378088)) b!7453388))

(assert (= (and b!7453390 res!2989646) b!7453389))

(assert (= (and b!7453388 c!1378089) b!7453393))

(assert (= (and b!7453388 (not c!1378089)) b!7453387))

(assert (= (and b!7453393 res!2989649) b!7453386))

(assert (= (and b!7453387 (not res!2989648)) b!7453391))

(assert (= (and b!7453391 res!2989647) b!7453394))

(assert (= (or b!7453386 b!7453394) bm!684701))

(assert (= (or b!7453393 b!7453391) bm!684703))

(assert (= (or b!7453389 bm!684701) bm!684702))

(declare-fun m!8058358 () Bool)

(assert (=> bm!684702 m!8058358))

(declare-fun m!8058360 () Bool)

(assert (=> bm!684703 m!8058360))

(declare-fun m!8058362 () Bool)

(assert (=> b!7453390 m!8058362))

(assert (=> b!7452736 d!2297167))

(declare-fun b!7453395 () Bool)

(declare-fun e!4448841 () Bool)

(declare-fun e!4448839 () Bool)

(assert (=> b!7453395 (= e!4448841 e!4448839)))

(declare-fun res!2989651 () Bool)

(assert (=> b!7453395 (=> res!2989651 e!4448839)))

(declare-fun call!684709 () Bool)

(assert (=> b!7453395 (= res!2989651 call!684709)))

(declare-fun b!7453396 () Bool)

(declare-fun e!4448838 () Bool)

(declare-fun e!4448843 () Bool)

(assert (=> b!7453396 (= e!4448838 e!4448843)))

(declare-fun c!1378090 () Bool)

(assert (=> b!7453396 (= c!1378090 ((_ is EmptyLang!19507) lt!2620898))))

(declare-fun bm!684704 () Bool)

(assert (=> bm!684704 (= call!684709 (isEmpty!41104 s!13591))))

(declare-fun b!7453397 () Bool)

(declare-fun e!4448840 () Bool)

(assert (=> b!7453397 (= e!4448840 e!4448841)))

(declare-fun res!2989653 () Bool)

(assert (=> b!7453397 (=> (not res!2989653) (not e!4448841))))

(declare-fun lt!2620950 () Bool)

(assert (=> b!7453397 (= res!2989653 (not lt!2620950))))

(declare-fun b!7453398 () Bool)

(declare-fun res!2989655 () Bool)

(assert (=> b!7453398 (=> res!2989655 e!4448839)))

(assert (=> b!7453398 (= res!2989655 (not (isEmpty!41104 (tail!14863 s!13591))))))

(declare-fun d!2297169 () Bool)

(assert (=> d!2297169 e!4448838))

(declare-fun c!1378092 () Bool)

(assert (=> d!2297169 (= c!1378092 ((_ is EmptyExpr!19507) lt!2620898))))

(declare-fun e!4448844 () Bool)

(assert (=> d!2297169 (= lt!2620950 e!4448844)))

(declare-fun c!1378091 () Bool)

(assert (=> d!2297169 (= c!1378091 (isEmpty!41104 s!13591))))

(assert (=> d!2297169 (validRegex!10021 lt!2620898)))

(assert (=> d!2297169 (= (matchR!9271 lt!2620898 s!13591) lt!2620950)))

(declare-fun b!7453399 () Bool)

(declare-fun res!2989658 () Bool)

(assert (=> b!7453399 (=> res!2989658 e!4448840)))

(declare-fun e!4448842 () Bool)

(assert (=> b!7453399 (= res!2989658 e!4448842)))

(declare-fun res!2989652 () Bool)

(assert (=> b!7453399 (=> (not res!2989652) (not e!4448842))))

(assert (=> b!7453399 (= res!2989652 lt!2620950)))

(declare-fun b!7453400 () Bool)

(assert (=> b!7453400 (= e!4448838 (= lt!2620950 call!684709))))

(declare-fun b!7453401 () Bool)

(declare-fun res!2989656 () Bool)

(assert (=> b!7453401 (=> (not res!2989656) (not e!4448842))))

(assert (=> b!7453401 (= res!2989656 (isEmpty!41104 (tail!14863 s!13591)))))

(declare-fun b!7453402 () Bool)

(assert (=> b!7453402 (= e!4448842 (= (head!15294 s!13591) (c!1377942 lt!2620898)))))

(declare-fun b!7453403 () Bool)

(assert (=> b!7453403 (= e!4448839 (not (= (head!15294 s!13591) (c!1377942 lt!2620898))))))

(declare-fun b!7453404 () Bool)

(assert (=> b!7453404 (= e!4448843 (not lt!2620950))))

(declare-fun b!7453405 () Bool)

(assert (=> b!7453405 (= e!4448844 (matchR!9271 (derivativeStep!5554 lt!2620898 (head!15294 s!13591)) (tail!14863 s!13591)))))

(declare-fun b!7453406 () Bool)

(declare-fun res!2989654 () Bool)

(assert (=> b!7453406 (=> (not res!2989654) (not e!4448842))))

(assert (=> b!7453406 (= res!2989654 (not call!684709))))

(declare-fun b!7453407 () Bool)

(assert (=> b!7453407 (= e!4448844 (nullable!8495 lt!2620898))))

(declare-fun b!7453408 () Bool)

(declare-fun res!2989657 () Bool)

(assert (=> b!7453408 (=> res!2989657 e!4448840)))

(assert (=> b!7453408 (= res!2989657 (not ((_ is ElementMatch!19507) lt!2620898)))))

(assert (=> b!7453408 (= e!4448843 e!4448840)))

(assert (= (and d!2297169 c!1378091) b!7453407))

(assert (= (and d!2297169 (not c!1378091)) b!7453405))

(assert (= (and d!2297169 c!1378092) b!7453400))

(assert (= (and d!2297169 (not c!1378092)) b!7453396))

(assert (= (and b!7453396 c!1378090) b!7453404))

(assert (= (and b!7453396 (not c!1378090)) b!7453408))

(assert (= (and b!7453408 (not res!2989657)) b!7453399))

(assert (= (and b!7453399 res!2989652) b!7453406))

(assert (= (and b!7453406 res!2989654) b!7453401))

(assert (= (and b!7453401 res!2989656) b!7453402))

(assert (= (and b!7453399 (not res!2989658)) b!7453397))

(assert (= (and b!7453397 res!2989653) b!7453395))

(assert (= (and b!7453395 (not res!2989651)) b!7453398))

(assert (= (and b!7453398 (not res!2989655)) b!7453403))

(assert (= (or b!7453400 b!7453395 b!7453406) bm!684704))

(assert (=> b!7453398 m!8058308))

(assert (=> b!7453398 m!8058308))

(assert (=> b!7453398 m!8058310))

(assert (=> d!2297169 m!8058312))

(declare-fun m!8058364 () Bool)

(assert (=> d!2297169 m!8058364))

(assert (=> b!7453402 m!8058314))

(assert (=> b!7453403 m!8058314))

(declare-fun m!8058366 () Bool)

(assert (=> b!7453407 m!8058366))

(assert (=> b!7453405 m!8058314))

(assert (=> b!7453405 m!8058314))

(declare-fun m!8058368 () Bool)

(assert (=> b!7453405 m!8058368))

(assert (=> b!7453405 m!8058308))

(assert (=> b!7453405 m!8058368))

(assert (=> b!7453405 m!8058308))

(declare-fun m!8058370 () Bool)

(assert (=> b!7453405 m!8058370))

(assert (=> b!7453401 m!8058308))

(assert (=> b!7453401 m!8058308))

(assert (=> b!7453401 m!8058310))

(assert (=> bm!684704 m!8058312))

(assert (=> b!7452726 d!2297169))

(declare-fun bs!1927326 () Bool)

(declare-fun b!7453415 () Bool)

(assert (= bs!1927326 (and b!7453415 b!7453135)))

(declare-fun lambda!461079 () Int)

(assert (=> bs!1927326 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (reg!19836 lt!2620889) (reg!19836 r1!5845)) (= lt!2620889 r1!5845)) (= lambda!461079 lambda!461059))))

(declare-fun bs!1927327 () Bool)

(assert (= bs!1927327 (and b!7453415 b!7453178)))

(assert (=> bs!1927327 (not (= lambda!461079 lambda!461063))))

(declare-fun bs!1927328 () Bool)

(assert (= bs!1927328 (and b!7453415 b!7453189)))

(assert (=> bs!1927328 (not (= lambda!461079 lambda!461065))))

(declare-fun bs!1927329 () Bool)

(assert (= bs!1927329 (and b!7453415 b!7453139)))

(assert (=> bs!1927329 (not (= lambda!461079 lambda!461061))))

(declare-fun bs!1927330 () Bool)

(assert (= bs!1927330 (and b!7453415 b!7453255)))

(assert (=> bs!1927330 (not (= lambda!461079 lambda!461072))))

(declare-fun bs!1927331 () Bool)

(assert (= bs!1927331 (and b!7453415 b!7453288)))

(assert (=> bs!1927331 (not (= lambda!461079 lambda!461077))))

(declare-fun bs!1927332 () Bool)

(assert (= bs!1927332 (and b!7453415 b!7453008)))

(assert (=> bs!1927332 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (reg!19836 lt!2620889) (reg!19836 lt!2620884)) (= lt!2620889 lt!2620884)) (= lambda!461079 lambda!461053))))

(declare-fun bs!1927333 () Bool)

(assert (= bs!1927333 (and b!7453415 b!7453185)))

(assert (=> bs!1927333 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (reg!19836 lt!2620889) (reg!19836 r2!5783)) (= lt!2620889 r2!5783)) (= lambda!461079 lambda!461064))))

(declare-fun bs!1927334 () Bool)

(assert (= bs!1927334 (and b!7453415 b!7453284)))

(assert (=> bs!1927334 (= (and (= (reg!19836 lt!2620889) (reg!19836 lt!2620883)) (= lt!2620889 lt!2620883)) (= lambda!461079 lambda!461074))))

(declare-fun bs!1927335 () Bool)

(assert (= bs!1927335 (and b!7453415 b!7453174)))

(assert (=> bs!1927335 (= (and (= s!13591 (_2!37537 lt!2620888)) (= (reg!19836 lt!2620889) (reg!19836 rTail!78)) (= lt!2620889 rTail!78)) (= lambda!461079 lambda!461062))))

(declare-fun bs!1927336 () Bool)

(assert (= bs!1927336 (and b!7453415 b!7453012)))

(assert (=> bs!1927336 (not (= lambda!461079 lambda!461055))))

(declare-fun bs!1927337 () Bool)

(assert (= bs!1927337 (and b!7453415 b!7453251)))

(assert (=> bs!1927337 (= (and (= (reg!19836 lt!2620889) (reg!19836 lt!2620897)) (= lt!2620889 lt!2620897)) (= lambda!461079 lambda!461068))))

(declare-fun bs!1927338 () Bool)

(assert (= bs!1927338 (and b!7453415 b!7452737)))

(assert (=> bs!1927338 (not (= lambda!461079 lambda!461033))))

(assert (=> bs!1927338 (not (= lambda!461079 lambda!461032))))

(assert (=> b!7453415 true))

(assert (=> b!7453415 true))

(declare-fun bs!1927339 () Bool)

(declare-fun b!7453419 () Bool)

(assert (= bs!1927339 (and b!7453419 b!7453135)))

(declare-fun lambda!461080 () Int)

(assert (=> bs!1927339 (not (= lambda!461080 lambda!461059))))

(declare-fun bs!1927340 () Bool)

(assert (= bs!1927340 (and b!7453419 b!7453178)))

(assert (=> bs!1927340 (= (and (= s!13591 (_2!37537 lt!2620888)) (= (regOne!39526 lt!2620889) (regOne!39526 rTail!78)) (= (regTwo!39526 lt!2620889) (regTwo!39526 rTail!78))) (= lambda!461080 lambda!461063))))

(declare-fun bs!1927341 () Bool)

(assert (= bs!1927341 (and b!7453419 b!7453189)))

(assert (=> bs!1927341 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (regOne!39526 lt!2620889) (regOne!39526 r2!5783)) (= (regTwo!39526 lt!2620889) (regTwo!39526 r2!5783))) (= lambda!461080 lambda!461065))))

(declare-fun bs!1927342 () Bool)

(assert (= bs!1927342 (and b!7453419 b!7453139)))

(assert (=> bs!1927342 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (regOne!39526 lt!2620889) (regOne!39526 r1!5845)) (= (regTwo!39526 lt!2620889) (regTwo!39526 r1!5845))) (= lambda!461080 lambda!461061))))

(declare-fun bs!1927343 () Bool)

(assert (= bs!1927343 (and b!7453419 b!7453255)))

(assert (=> bs!1927343 (= (and (= (regOne!39526 lt!2620889) (regOne!39526 lt!2620897)) (= (regTwo!39526 lt!2620889) (regTwo!39526 lt!2620897))) (= lambda!461080 lambda!461072))))

(declare-fun bs!1927344 () Bool)

(assert (= bs!1927344 (and b!7453419 b!7453288)))

(assert (=> bs!1927344 (= (and (= (regOne!39526 lt!2620889) (regOne!39526 lt!2620883)) (= (regTwo!39526 lt!2620889) (regTwo!39526 lt!2620883))) (= lambda!461080 lambda!461077))))

(declare-fun bs!1927345 () Bool)

(assert (= bs!1927345 (and b!7453419 b!7453008)))

(assert (=> bs!1927345 (not (= lambda!461080 lambda!461053))))

(declare-fun bs!1927346 () Bool)

(assert (= bs!1927346 (and b!7453419 b!7453185)))

(assert (=> bs!1927346 (not (= lambda!461080 lambda!461064))))

(declare-fun bs!1927347 () Bool)

(assert (= bs!1927347 (and b!7453419 b!7453284)))

(assert (=> bs!1927347 (not (= lambda!461080 lambda!461074))))

(declare-fun bs!1927348 () Bool)

(assert (= bs!1927348 (and b!7453419 b!7453174)))

(assert (=> bs!1927348 (not (= lambda!461080 lambda!461062))))

(declare-fun bs!1927349 () Bool)

(assert (= bs!1927349 (and b!7453419 b!7453012)))

(assert (=> bs!1927349 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (regOne!39526 lt!2620889) (regOne!39526 lt!2620884)) (= (regTwo!39526 lt!2620889) (regTwo!39526 lt!2620884))) (= lambda!461080 lambda!461055))))

(declare-fun bs!1927350 () Bool)

(assert (= bs!1927350 (and b!7453419 b!7452737)))

(assert (=> bs!1927350 (= (and (= (regOne!39526 lt!2620889) lt!2620884) (= (regTwo!39526 lt!2620889) rTail!78)) (= lambda!461080 lambda!461033))))

(assert (=> bs!1927350 (not (= lambda!461080 lambda!461032))))

(declare-fun bs!1927351 () Bool)

(assert (= bs!1927351 (and b!7453419 b!7453251)))

(assert (=> bs!1927351 (not (= lambda!461080 lambda!461068))))

(declare-fun bs!1927352 () Bool)

(assert (= bs!1927352 (and b!7453419 b!7453415)))

(assert (=> bs!1927352 (not (= lambda!461080 lambda!461079))))

(assert (=> b!7453419 true))

(assert (=> b!7453419 true))

(declare-fun c!1378096 () Bool)

(declare-fun call!684710 () Bool)

(declare-fun bm!684705 () Bool)

(assert (=> bm!684705 (= call!684710 (Exists!4128 (ite c!1378096 lambda!461079 lambda!461080)))))

(declare-fun b!7453409 () Bool)

(declare-fun e!4448849 () Bool)

(declare-fun e!4448845 () Bool)

(assert (=> b!7453409 (= e!4448849 e!4448845)))

(declare-fun res!2989660 () Bool)

(assert (=> b!7453409 (= res!2989660 (not ((_ is EmptyLang!19507) lt!2620889)))))

(assert (=> b!7453409 (=> (not res!2989660) (not e!4448845))))

(declare-fun b!7453410 () Bool)

(declare-fun c!1378095 () Bool)

(assert (=> b!7453410 (= c!1378095 ((_ is Union!19507) lt!2620889))))

(declare-fun e!4448848 () Bool)

(declare-fun e!4448846 () Bool)

(assert (=> b!7453410 (= e!4448848 e!4448846)))

(declare-fun b!7453411 () Bool)

(declare-fun call!684711 () Bool)

(assert (=> b!7453411 (= e!4448849 call!684711)))

(declare-fun b!7453412 () Bool)

(declare-fun e!4448851 () Bool)

(assert (=> b!7453412 (= e!4448846 e!4448851)))

(declare-fun res!2989659 () Bool)

(assert (=> b!7453412 (= res!2989659 (matchRSpec!4186 (regOne!39527 lt!2620889) s!13591))))

(assert (=> b!7453412 (=> res!2989659 e!4448851)))

(declare-fun b!7453413 () Bool)

(assert (=> b!7453413 (= e!4448851 (matchRSpec!4186 (regTwo!39527 lt!2620889) s!13591))))

(declare-fun b!7453414 () Bool)

(declare-fun res!2989661 () Bool)

(declare-fun e!4448850 () Bool)

(assert (=> b!7453414 (=> res!2989661 e!4448850)))

(assert (=> b!7453414 (= res!2989661 call!684711)))

(declare-fun e!4448847 () Bool)

(assert (=> b!7453414 (= e!4448847 e!4448850)))

(declare-fun d!2297171 () Bool)

(declare-fun c!1378094 () Bool)

(assert (=> d!2297171 (= c!1378094 ((_ is EmptyExpr!19507) lt!2620889))))

(assert (=> d!2297171 (= (matchRSpec!4186 lt!2620889 s!13591) e!4448849)))

(assert (=> b!7453415 (= e!4448850 call!684710)))

(declare-fun b!7453416 () Bool)

(declare-fun c!1378093 () Bool)

(assert (=> b!7453416 (= c!1378093 ((_ is ElementMatch!19507) lt!2620889))))

(assert (=> b!7453416 (= e!4448845 e!4448848)))

(declare-fun b!7453417 () Bool)

(assert (=> b!7453417 (= e!4448848 (= s!13591 (Cons!72099 (c!1377942 lt!2620889) Nil!72099)))))

(declare-fun bm!684706 () Bool)

(assert (=> bm!684706 (= call!684711 (isEmpty!41104 s!13591))))

(declare-fun b!7453418 () Bool)

(assert (=> b!7453418 (= e!4448846 e!4448847)))

(assert (=> b!7453418 (= c!1378096 ((_ is Star!19507) lt!2620889))))

(assert (=> b!7453419 (= e!4448847 call!684710)))

(assert (= (and d!2297171 c!1378094) b!7453411))

(assert (= (and d!2297171 (not c!1378094)) b!7453409))

(assert (= (and b!7453409 res!2989660) b!7453416))

(assert (= (and b!7453416 c!1378093) b!7453417))

(assert (= (and b!7453416 (not c!1378093)) b!7453410))

(assert (= (and b!7453410 c!1378095) b!7453412))

(assert (= (and b!7453410 (not c!1378095)) b!7453418))

(assert (= (and b!7453412 (not res!2989659)) b!7453413))

(assert (= (and b!7453418 c!1378096) b!7453414))

(assert (= (and b!7453418 (not c!1378096)) b!7453419))

(assert (= (and b!7453414 (not res!2989661)) b!7453415))

(assert (= (or b!7453415 b!7453419) bm!684705))

(assert (= (or b!7453411 b!7453414) bm!684706))

(declare-fun m!8058372 () Bool)

(assert (=> bm!684705 m!8058372))

(declare-fun m!8058374 () Bool)

(assert (=> b!7453412 m!8058374))

(declare-fun m!8058376 () Bool)

(assert (=> b!7453413 m!8058376))

(assert (=> bm!684706 m!8058312))

(assert (=> b!7452726 d!2297171))

(declare-fun d!2297173 () Bool)

(assert (=> d!2297173 (= (matchR!9271 lt!2620889 s!13591) (matchRSpec!4186 lt!2620889 s!13591))))

(declare-fun lt!2620951 () Unit!165849)

(assert (=> d!2297173 (= lt!2620951 (choose!57605 lt!2620889 s!13591))))

(assert (=> d!2297173 (validRegex!10021 lt!2620889)))

(assert (=> d!2297173 (= (mainMatchTheorem!4180 lt!2620889 s!13591) lt!2620951)))

(declare-fun bs!1927353 () Bool)

(assert (= bs!1927353 d!2297173))

(assert (=> bs!1927353 m!8058032))

(assert (=> bs!1927353 m!8058038))

(declare-fun m!8058378 () Bool)

(assert (=> bs!1927353 m!8058378))

(declare-fun m!8058380 () Bool)

(assert (=> bs!1927353 m!8058380))

(assert (=> b!7452726 d!2297173))

(declare-fun bs!1927354 () Bool)

(declare-fun b!7453426 () Bool)

(assert (= bs!1927354 (and b!7453426 b!7453135)))

(declare-fun lambda!461081 () Int)

(assert (=> bs!1927354 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (reg!19836 lt!2620898) (reg!19836 r1!5845)) (= lt!2620898 r1!5845)) (= lambda!461081 lambda!461059))))

(declare-fun bs!1927355 () Bool)

(assert (= bs!1927355 (and b!7453426 b!7453178)))

(assert (=> bs!1927355 (not (= lambda!461081 lambda!461063))))

(declare-fun bs!1927356 () Bool)

(assert (= bs!1927356 (and b!7453426 b!7453189)))

(assert (=> bs!1927356 (not (= lambda!461081 lambda!461065))))

(declare-fun bs!1927357 () Bool)

(assert (= bs!1927357 (and b!7453426 b!7453139)))

(assert (=> bs!1927357 (not (= lambda!461081 lambda!461061))))

(declare-fun bs!1927358 () Bool)

(assert (= bs!1927358 (and b!7453426 b!7453255)))

(assert (=> bs!1927358 (not (= lambda!461081 lambda!461072))))

(declare-fun bs!1927359 () Bool)

(assert (= bs!1927359 (and b!7453426 b!7453288)))

(assert (=> bs!1927359 (not (= lambda!461081 lambda!461077))))

(declare-fun bs!1927360 () Bool)

(assert (= bs!1927360 (and b!7453426 b!7453008)))

(assert (=> bs!1927360 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (reg!19836 lt!2620898) (reg!19836 lt!2620884)) (= lt!2620898 lt!2620884)) (= lambda!461081 lambda!461053))))

(declare-fun bs!1927361 () Bool)

(assert (= bs!1927361 (and b!7453426 b!7453284)))

(assert (=> bs!1927361 (= (and (= (reg!19836 lt!2620898) (reg!19836 lt!2620883)) (= lt!2620898 lt!2620883)) (= lambda!461081 lambda!461074))))

(declare-fun bs!1927362 () Bool)

(assert (= bs!1927362 (and b!7453426 b!7453174)))

(assert (=> bs!1927362 (= (and (= s!13591 (_2!37537 lt!2620888)) (= (reg!19836 lt!2620898) (reg!19836 rTail!78)) (= lt!2620898 rTail!78)) (= lambda!461081 lambda!461062))))

(declare-fun bs!1927363 () Bool)

(assert (= bs!1927363 (and b!7453426 b!7453012)))

(assert (=> bs!1927363 (not (= lambda!461081 lambda!461055))))

(declare-fun bs!1927364 () Bool)

(assert (= bs!1927364 (and b!7453426 b!7453419)))

(assert (=> bs!1927364 (not (= lambda!461081 lambda!461080))))

(declare-fun bs!1927365 () Bool)

(assert (= bs!1927365 (and b!7453426 b!7453185)))

(assert (=> bs!1927365 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (reg!19836 lt!2620898) (reg!19836 r2!5783)) (= lt!2620898 r2!5783)) (= lambda!461081 lambda!461064))))

(declare-fun bs!1927366 () Bool)

(assert (= bs!1927366 (and b!7453426 b!7452737)))

(assert (=> bs!1927366 (not (= lambda!461081 lambda!461033))))

(assert (=> bs!1927366 (not (= lambda!461081 lambda!461032))))

(declare-fun bs!1927367 () Bool)

(assert (= bs!1927367 (and b!7453426 b!7453251)))

(assert (=> bs!1927367 (= (and (= (reg!19836 lt!2620898) (reg!19836 lt!2620897)) (= lt!2620898 lt!2620897)) (= lambda!461081 lambda!461068))))

(declare-fun bs!1927368 () Bool)

(assert (= bs!1927368 (and b!7453426 b!7453415)))

(assert (=> bs!1927368 (= (and (= (reg!19836 lt!2620898) (reg!19836 lt!2620889)) (= lt!2620898 lt!2620889)) (= lambda!461081 lambda!461079))))

(assert (=> b!7453426 true))

(assert (=> b!7453426 true))

(declare-fun bs!1927369 () Bool)

(declare-fun b!7453430 () Bool)

(assert (= bs!1927369 (and b!7453430 b!7453135)))

(declare-fun lambda!461082 () Int)

(assert (=> bs!1927369 (not (= lambda!461082 lambda!461059))))

(declare-fun bs!1927370 () Bool)

(assert (= bs!1927370 (and b!7453430 b!7453178)))

(assert (=> bs!1927370 (= (and (= s!13591 (_2!37537 lt!2620888)) (= (regOne!39526 lt!2620898) (regOne!39526 rTail!78)) (= (regTwo!39526 lt!2620898) (regTwo!39526 rTail!78))) (= lambda!461082 lambda!461063))))

(declare-fun bs!1927371 () Bool)

(assert (= bs!1927371 (and b!7453430 b!7453189)))

(assert (=> bs!1927371 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (regOne!39526 lt!2620898) (regOne!39526 r2!5783)) (= (regTwo!39526 lt!2620898) (regTwo!39526 r2!5783))) (= lambda!461082 lambda!461065))))

(declare-fun bs!1927372 () Bool)

(assert (= bs!1927372 (and b!7453430 b!7453139)))

(assert (=> bs!1927372 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (regOne!39526 lt!2620898) (regOne!39526 r1!5845)) (= (regTwo!39526 lt!2620898) (regTwo!39526 r1!5845))) (= lambda!461082 lambda!461061))))

(declare-fun bs!1927373 () Bool)

(assert (= bs!1927373 (and b!7453430 b!7453255)))

(assert (=> bs!1927373 (= (and (= (regOne!39526 lt!2620898) (regOne!39526 lt!2620897)) (= (regTwo!39526 lt!2620898) (regTwo!39526 lt!2620897))) (= lambda!461082 lambda!461072))))

(declare-fun bs!1927374 () Bool)

(assert (= bs!1927374 (and b!7453430 b!7453288)))

(assert (=> bs!1927374 (= (and (= (regOne!39526 lt!2620898) (regOne!39526 lt!2620883)) (= (regTwo!39526 lt!2620898) (regTwo!39526 lt!2620883))) (= lambda!461082 lambda!461077))))

(declare-fun bs!1927375 () Bool)

(assert (= bs!1927375 (and b!7453430 b!7453008)))

(assert (=> bs!1927375 (not (= lambda!461082 lambda!461053))))

(declare-fun bs!1927376 () Bool)

(assert (= bs!1927376 (and b!7453430 b!7453174)))

(assert (=> bs!1927376 (not (= lambda!461082 lambda!461062))))

(declare-fun bs!1927377 () Bool)

(assert (= bs!1927377 (and b!7453430 b!7453012)))

(assert (=> bs!1927377 (= (and (= s!13591 (_1!37537 lt!2620888)) (= (regOne!39526 lt!2620898) (regOne!39526 lt!2620884)) (= (regTwo!39526 lt!2620898) (regTwo!39526 lt!2620884))) (= lambda!461082 lambda!461055))))

(declare-fun bs!1927378 () Bool)

(assert (= bs!1927378 (and b!7453430 b!7453419)))

(assert (=> bs!1927378 (= (and (= (regOne!39526 lt!2620898) (regOne!39526 lt!2620889)) (= (regTwo!39526 lt!2620898) (regTwo!39526 lt!2620889))) (= lambda!461082 lambda!461080))))

(declare-fun bs!1927379 () Bool)

(assert (= bs!1927379 (and b!7453430 b!7453185)))

(assert (=> bs!1927379 (not (= lambda!461082 lambda!461064))))

(declare-fun bs!1927380 () Bool)

(assert (= bs!1927380 (and b!7453430 b!7453284)))

(assert (=> bs!1927380 (not (= lambda!461082 lambda!461074))))

(declare-fun bs!1927381 () Bool)

(assert (= bs!1927381 (and b!7453430 b!7453426)))

(assert (=> bs!1927381 (not (= lambda!461082 lambda!461081))))

(declare-fun bs!1927382 () Bool)

(assert (= bs!1927382 (and b!7453430 b!7452737)))

(assert (=> bs!1927382 (= (and (= (regOne!39526 lt!2620898) lt!2620884) (= (regTwo!39526 lt!2620898) rTail!78)) (= lambda!461082 lambda!461033))))

(assert (=> bs!1927382 (not (= lambda!461082 lambda!461032))))

(declare-fun bs!1927383 () Bool)

(assert (= bs!1927383 (and b!7453430 b!7453251)))

(assert (=> bs!1927383 (not (= lambda!461082 lambda!461068))))

(declare-fun bs!1927384 () Bool)

(assert (= bs!1927384 (and b!7453430 b!7453415)))

(assert (=> bs!1927384 (not (= lambda!461082 lambda!461079))))

(assert (=> b!7453430 true))

(assert (=> b!7453430 true))

(declare-fun bm!684707 () Bool)

(declare-fun c!1378100 () Bool)

(declare-fun call!684712 () Bool)

(assert (=> bm!684707 (= call!684712 (Exists!4128 (ite c!1378100 lambda!461081 lambda!461082)))))

(declare-fun b!7453420 () Bool)

(declare-fun e!4448856 () Bool)

(declare-fun e!4448852 () Bool)

(assert (=> b!7453420 (= e!4448856 e!4448852)))

(declare-fun res!2989663 () Bool)

(assert (=> b!7453420 (= res!2989663 (not ((_ is EmptyLang!19507) lt!2620898)))))

(assert (=> b!7453420 (=> (not res!2989663) (not e!4448852))))

(declare-fun b!7453421 () Bool)

(declare-fun c!1378099 () Bool)

(assert (=> b!7453421 (= c!1378099 ((_ is Union!19507) lt!2620898))))

(declare-fun e!4448855 () Bool)

(declare-fun e!4448853 () Bool)

(assert (=> b!7453421 (= e!4448855 e!4448853)))

(declare-fun b!7453422 () Bool)

(declare-fun call!684713 () Bool)

(assert (=> b!7453422 (= e!4448856 call!684713)))

(declare-fun b!7453423 () Bool)

(declare-fun e!4448858 () Bool)

(assert (=> b!7453423 (= e!4448853 e!4448858)))

(declare-fun res!2989662 () Bool)

(assert (=> b!7453423 (= res!2989662 (matchRSpec!4186 (regOne!39527 lt!2620898) s!13591))))

(assert (=> b!7453423 (=> res!2989662 e!4448858)))

(declare-fun b!7453424 () Bool)

(assert (=> b!7453424 (= e!4448858 (matchRSpec!4186 (regTwo!39527 lt!2620898) s!13591))))

(declare-fun b!7453425 () Bool)

(declare-fun res!2989664 () Bool)

(declare-fun e!4448857 () Bool)

(assert (=> b!7453425 (=> res!2989664 e!4448857)))

(assert (=> b!7453425 (= res!2989664 call!684713)))

(declare-fun e!4448854 () Bool)

(assert (=> b!7453425 (= e!4448854 e!4448857)))

(declare-fun d!2297175 () Bool)

(declare-fun c!1378098 () Bool)

(assert (=> d!2297175 (= c!1378098 ((_ is EmptyExpr!19507) lt!2620898))))

(assert (=> d!2297175 (= (matchRSpec!4186 lt!2620898 s!13591) e!4448856)))

(assert (=> b!7453426 (= e!4448857 call!684712)))

(declare-fun b!7453427 () Bool)

(declare-fun c!1378097 () Bool)

(assert (=> b!7453427 (= c!1378097 ((_ is ElementMatch!19507) lt!2620898))))

(assert (=> b!7453427 (= e!4448852 e!4448855)))

(declare-fun b!7453428 () Bool)

(assert (=> b!7453428 (= e!4448855 (= s!13591 (Cons!72099 (c!1377942 lt!2620898) Nil!72099)))))

(declare-fun bm!684708 () Bool)

(assert (=> bm!684708 (= call!684713 (isEmpty!41104 s!13591))))

(declare-fun b!7453429 () Bool)

(assert (=> b!7453429 (= e!4448853 e!4448854)))

(assert (=> b!7453429 (= c!1378100 ((_ is Star!19507) lt!2620898))))

(assert (=> b!7453430 (= e!4448854 call!684712)))

(assert (= (and d!2297175 c!1378098) b!7453422))

(assert (= (and d!2297175 (not c!1378098)) b!7453420))

(assert (= (and b!7453420 res!2989663) b!7453427))

(assert (= (and b!7453427 c!1378097) b!7453428))

(assert (= (and b!7453427 (not c!1378097)) b!7453421))

(assert (= (and b!7453421 c!1378099) b!7453423))

(assert (= (and b!7453421 (not c!1378099)) b!7453429))

(assert (= (and b!7453423 (not res!2989662)) b!7453424))

(assert (= (and b!7453429 c!1378100) b!7453425))

(assert (= (and b!7453429 (not c!1378100)) b!7453430))

(assert (= (and b!7453425 (not res!2989664)) b!7453426))

(assert (= (or b!7453426 b!7453430) bm!684707))

(assert (= (or b!7453422 b!7453425) bm!684708))

(declare-fun m!8058382 () Bool)

(assert (=> bm!684707 m!8058382))

(declare-fun m!8058384 () Bool)

(assert (=> b!7453423 m!8058384))

(declare-fun m!8058386 () Bool)

(assert (=> b!7453424 m!8058386))

(assert (=> bm!684708 m!8058312))

(assert (=> b!7452726 d!2297175))

(declare-fun d!2297177 () Bool)

(declare-fun res!2989669 () Bool)

(declare-fun e!4448862 () Bool)

(assert (=> d!2297177 (=> res!2989669 e!4448862)))

(assert (=> d!2297177 (= res!2989669 ((_ is ElementMatch!19507) lt!2620897))))

(assert (=> d!2297177 (= (validRegex!10021 lt!2620897) e!4448862)))

(declare-fun b!7453431 () Bool)

(declare-fun e!4448863 () Bool)

(declare-fun call!684714 () Bool)

(assert (=> b!7453431 (= e!4448863 call!684714)))

(declare-fun b!7453432 () Bool)

(declare-fun res!2989667 () Bool)

(declare-fun e!4448864 () Bool)

(assert (=> b!7453432 (=> res!2989667 e!4448864)))

(assert (=> b!7453432 (= res!2989667 (not ((_ is Concat!28352) lt!2620897)))))

(declare-fun e!4448865 () Bool)

(assert (=> b!7453432 (= e!4448865 e!4448864)))

(declare-fun b!7453433 () Bool)

(declare-fun e!4448861 () Bool)

(assert (=> b!7453433 (= e!4448861 e!4448865)))

(declare-fun c!1378102 () Bool)

(assert (=> b!7453433 (= c!1378102 ((_ is Union!19507) lt!2620897))))

(declare-fun bm!684709 () Bool)

(declare-fun call!684716 () Bool)

(assert (=> bm!684709 (= call!684714 call!684716)))

(declare-fun c!1378101 () Bool)

(declare-fun bm!684710 () Bool)

(assert (=> bm!684710 (= call!684716 (validRegex!10021 (ite c!1378101 (reg!19836 lt!2620897) (ite c!1378102 (regTwo!39527 lt!2620897) (regTwo!39526 lt!2620897)))))))

(declare-fun bm!684711 () Bool)

(declare-fun call!684715 () Bool)

(assert (=> bm!684711 (= call!684715 (validRegex!10021 (ite c!1378102 (regOne!39527 lt!2620897) (regOne!39526 lt!2620897))))))

(declare-fun b!7453434 () Bool)

(declare-fun e!4448860 () Bool)

(assert (=> b!7453434 (= e!4448860 call!684716)))

(declare-fun b!7453435 () Bool)

(assert (=> b!7453435 (= e!4448861 e!4448860)))

(declare-fun res!2989665 () Bool)

(assert (=> b!7453435 (= res!2989665 (not (nullable!8495 (reg!19836 lt!2620897))))))

(assert (=> b!7453435 (=> (not res!2989665) (not e!4448860))))

(declare-fun b!7453436 () Bool)

(declare-fun e!4448859 () Bool)

(assert (=> b!7453436 (= e!4448864 e!4448859)))

(declare-fun res!2989666 () Bool)

(assert (=> b!7453436 (=> (not res!2989666) (not e!4448859))))

(assert (=> b!7453436 (= res!2989666 call!684715)))

(declare-fun b!7453437 () Bool)

(assert (=> b!7453437 (= e!4448862 e!4448861)))

(assert (=> b!7453437 (= c!1378101 ((_ is Star!19507) lt!2620897))))

(declare-fun b!7453438 () Bool)

(declare-fun res!2989668 () Bool)

(assert (=> b!7453438 (=> (not res!2989668) (not e!4448863))))

(assert (=> b!7453438 (= res!2989668 call!684715)))

(assert (=> b!7453438 (= e!4448865 e!4448863)))

(declare-fun b!7453439 () Bool)

(assert (=> b!7453439 (= e!4448859 call!684714)))

(assert (= (and d!2297177 (not res!2989669)) b!7453437))

(assert (= (and b!7453437 c!1378101) b!7453435))

(assert (= (and b!7453437 (not c!1378101)) b!7453433))

(assert (= (and b!7453435 res!2989665) b!7453434))

(assert (= (and b!7453433 c!1378102) b!7453438))

(assert (= (and b!7453433 (not c!1378102)) b!7453432))

(assert (= (and b!7453438 res!2989668) b!7453431))

(assert (= (and b!7453432 (not res!2989667)) b!7453436))

(assert (= (and b!7453436 res!2989666) b!7453439))

(assert (= (or b!7453431 b!7453439) bm!684709))

(assert (= (or b!7453438 b!7453436) bm!684711))

(assert (= (or b!7453434 bm!684709) bm!684710))

(declare-fun m!8058388 () Bool)

(assert (=> bm!684710 m!8058388))

(declare-fun m!8058390 () Bool)

(assert (=> bm!684711 m!8058390))

(declare-fun m!8058392 () Bool)

(assert (=> b!7453435 m!8058392))

(assert (=> b!7452726 d!2297177))

(declare-fun d!2297179 () Bool)

(assert (=> d!2297179 (= (matchR!9271 lt!2620898 s!13591) (matchRSpec!4186 lt!2620898 s!13591))))

(declare-fun lt!2620952 () Unit!165849)

(assert (=> d!2297179 (= lt!2620952 (choose!57605 lt!2620898 s!13591))))

(assert (=> d!2297179 (validRegex!10021 lt!2620898)))

(assert (=> d!2297179 (= (mainMatchTheorem!4180 lt!2620898 s!13591) lt!2620952)))

(declare-fun bs!1927385 () Bool)

(assert (= bs!1927385 d!2297179))

(assert (=> bs!1927385 m!8058030))

(assert (=> bs!1927385 m!8058034))

(declare-fun m!8058394 () Bool)

(assert (=> bs!1927385 m!8058394))

(assert (=> bs!1927385 m!8058364))

(assert (=> b!7452726 d!2297179))

(declare-fun b!7453440 () Bool)

(declare-fun e!4448869 () Bool)

(declare-fun e!4448867 () Bool)

(assert (=> b!7453440 (= e!4448869 e!4448867)))

(declare-fun res!2989670 () Bool)

(assert (=> b!7453440 (=> res!2989670 e!4448867)))

(declare-fun call!684717 () Bool)

(assert (=> b!7453440 (= res!2989670 call!684717)))

(declare-fun b!7453441 () Bool)

(declare-fun e!4448866 () Bool)

(declare-fun e!4448871 () Bool)

(assert (=> b!7453441 (= e!4448866 e!4448871)))

(declare-fun c!1378103 () Bool)

(assert (=> b!7453441 (= c!1378103 ((_ is EmptyLang!19507) lt!2620889))))

(declare-fun bm!684712 () Bool)

(assert (=> bm!684712 (= call!684717 (isEmpty!41104 s!13591))))

(declare-fun b!7453442 () Bool)

(declare-fun e!4448868 () Bool)

(assert (=> b!7453442 (= e!4448868 e!4448869)))

(declare-fun res!2989672 () Bool)

(assert (=> b!7453442 (=> (not res!2989672) (not e!4448869))))

(declare-fun lt!2620953 () Bool)

(assert (=> b!7453442 (= res!2989672 (not lt!2620953))))

(declare-fun b!7453443 () Bool)

(declare-fun res!2989674 () Bool)

(assert (=> b!7453443 (=> res!2989674 e!4448867)))

(assert (=> b!7453443 (= res!2989674 (not (isEmpty!41104 (tail!14863 s!13591))))))

(declare-fun d!2297181 () Bool)

(assert (=> d!2297181 e!4448866))

(declare-fun c!1378105 () Bool)

(assert (=> d!2297181 (= c!1378105 ((_ is EmptyExpr!19507) lt!2620889))))

(declare-fun e!4448872 () Bool)

(assert (=> d!2297181 (= lt!2620953 e!4448872)))

(declare-fun c!1378104 () Bool)

(assert (=> d!2297181 (= c!1378104 (isEmpty!41104 s!13591))))

(assert (=> d!2297181 (validRegex!10021 lt!2620889)))

(assert (=> d!2297181 (= (matchR!9271 lt!2620889 s!13591) lt!2620953)))

(declare-fun b!7453444 () Bool)

(declare-fun res!2989677 () Bool)

(assert (=> b!7453444 (=> res!2989677 e!4448868)))

(declare-fun e!4448870 () Bool)

(assert (=> b!7453444 (= res!2989677 e!4448870)))

(declare-fun res!2989671 () Bool)

(assert (=> b!7453444 (=> (not res!2989671) (not e!4448870))))

(assert (=> b!7453444 (= res!2989671 lt!2620953)))

(declare-fun b!7453445 () Bool)

(assert (=> b!7453445 (= e!4448866 (= lt!2620953 call!684717))))

(declare-fun b!7453446 () Bool)

(declare-fun res!2989675 () Bool)

(assert (=> b!7453446 (=> (not res!2989675) (not e!4448870))))

(assert (=> b!7453446 (= res!2989675 (isEmpty!41104 (tail!14863 s!13591)))))

(declare-fun b!7453447 () Bool)

(assert (=> b!7453447 (= e!4448870 (= (head!15294 s!13591) (c!1377942 lt!2620889)))))

(declare-fun b!7453448 () Bool)

(assert (=> b!7453448 (= e!4448867 (not (= (head!15294 s!13591) (c!1377942 lt!2620889))))))

(declare-fun b!7453449 () Bool)

(assert (=> b!7453449 (= e!4448871 (not lt!2620953))))

(declare-fun b!7453450 () Bool)

(assert (=> b!7453450 (= e!4448872 (matchR!9271 (derivativeStep!5554 lt!2620889 (head!15294 s!13591)) (tail!14863 s!13591)))))

(declare-fun b!7453451 () Bool)

(declare-fun res!2989673 () Bool)

(assert (=> b!7453451 (=> (not res!2989673) (not e!4448870))))

(assert (=> b!7453451 (= res!2989673 (not call!684717))))

(declare-fun b!7453452 () Bool)

(assert (=> b!7453452 (= e!4448872 (nullable!8495 lt!2620889))))

(declare-fun b!7453453 () Bool)

(declare-fun res!2989676 () Bool)

(assert (=> b!7453453 (=> res!2989676 e!4448868)))

(assert (=> b!7453453 (= res!2989676 (not ((_ is ElementMatch!19507) lt!2620889)))))

(assert (=> b!7453453 (= e!4448871 e!4448868)))

(assert (= (and d!2297181 c!1378104) b!7453452))

(assert (= (and d!2297181 (not c!1378104)) b!7453450))

(assert (= (and d!2297181 c!1378105) b!7453445))

(assert (= (and d!2297181 (not c!1378105)) b!7453441))

(assert (= (and b!7453441 c!1378103) b!7453449))

(assert (= (and b!7453441 (not c!1378103)) b!7453453))

(assert (= (and b!7453453 (not res!2989676)) b!7453444))

(assert (= (and b!7453444 res!2989671) b!7453451))

(assert (= (and b!7453451 res!2989673) b!7453446))

(assert (= (and b!7453446 res!2989675) b!7453447))

(assert (= (and b!7453444 (not res!2989677)) b!7453442))

(assert (= (and b!7453442 res!2989672) b!7453440))

(assert (= (and b!7453440 (not res!2989670)) b!7453443))

(assert (= (and b!7453443 (not res!2989674)) b!7453448))

(assert (= (or b!7453445 b!7453440 b!7453451) bm!684712))

(assert (=> b!7453443 m!8058308))

(assert (=> b!7453443 m!8058308))

(assert (=> b!7453443 m!8058310))

(assert (=> d!2297181 m!8058312))

(assert (=> d!2297181 m!8058380))

(assert (=> b!7453447 m!8058314))

(assert (=> b!7453448 m!8058314))

(declare-fun m!8058396 () Bool)

(assert (=> b!7453452 m!8058396))

(assert (=> b!7453450 m!8058314))

(assert (=> b!7453450 m!8058314))

(declare-fun m!8058398 () Bool)

(assert (=> b!7453450 m!8058398))

(assert (=> b!7453450 m!8058308))

(assert (=> b!7453450 m!8058398))

(assert (=> b!7453450 m!8058308))

(declare-fun m!8058400 () Bool)

(assert (=> b!7453450 m!8058400))

(assert (=> b!7453446 m!8058308))

(assert (=> b!7453446 m!8058308))

(assert (=> b!7453446 m!8058310))

(assert (=> bm!684712 m!8058312))

(assert (=> b!7452726 d!2297181))

(declare-fun d!2297183 () Bool)

(declare-fun res!2989682 () Bool)

(declare-fun e!4448876 () Bool)

(assert (=> d!2297183 (=> res!2989682 e!4448876)))

(assert (=> d!2297183 (= res!2989682 ((_ is ElementMatch!19507) r2!5783))))

(assert (=> d!2297183 (= (validRegex!10021 r2!5783) e!4448876)))

(declare-fun b!7453454 () Bool)

(declare-fun e!4448877 () Bool)

(declare-fun call!684718 () Bool)

(assert (=> b!7453454 (= e!4448877 call!684718)))

(declare-fun b!7453455 () Bool)

(declare-fun res!2989680 () Bool)

(declare-fun e!4448878 () Bool)

(assert (=> b!7453455 (=> res!2989680 e!4448878)))

(assert (=> b!7453455 (= res!2989680 (not ((_ is Concat!28352) r2!5783)))))

(declare-fun e!4448879 () Bool)

(assert (=> b!7453455 (= e!4448879 e!4448878)))

(declare-fun b!7453456 () Bool)

(declare-fun e!4448875 () Bool)

(assert (=> b!7453456 (= e!4448875 e!4448879)))

(declare-fun c!1378107 () Bool)

(assert (=> b!7453456 (= c!1378107 ((_ is Union!19507) r2!5783))))

(declare-fun bm!684713 () Bool)

(declare-fun call!684720 () Bool)

(assert (=> bm!684713 (= call!684718 call!684720)))

(declare-fun c!1378106 () Bool)

(declare-fun bm!684714 () Bool)

(assert (=> bm!684714 (= call!684720 (validRegex!10021 (ite c!1378106 (reg!19836 r2!5783) (ite c!1378107 (regTwo!39527 r2!5783) (regTwo!39526 r2!5783)))))))

(declare-fun bm!684715 () Bool)

(declare-fun call!684719 () Bool)

(assert (=> bm!684715 (= call!684719 (validRegex!10021 (ite c!1378107 (regOne!39527 r2!5783) (regOne!39526 r2!5783))))))

(declare-fun b!7453457 () Bool)

(declare-fun e!4448874 () Bool)

(assert (=> b!7453457 (= e!4448874 call!684720)))

(declare-fun b!7453458 () Bool)

(assert (=> b!7453458 (= e!4448875 e!4448874)))

(declare-fun res!2989678 () Bool)

(assert (=> b!7453458 (= res!2989678 (not (nullable!8495 (reg!19836 r2!5783))))))

(assert (=> b!7453458 (=> (not res!2989678) (not e!4448874))))

(declare-fun b!7453459 () Bool)

(declare-fun e!4448873 () Bool)

(assert (=> b!7453459 (= e!4448878 e!4448873)))

(declare-fun res!2989679 () Bool)

(assert (=> b!7453459 (=> (not res!2989679) (not e!4448873))))

(assert (=> b!7453459 (= res!2989679 call!684719)))

(declare-fun b!7453460 () Bool)

(assert (=> b!7453460 (= e!4448876 e!4448875)))

(assert (=> b!7453460 (= c!1378106 ((_ is Star!19507) r2!5783))))

(declare-fun b!7453461 () Bool)

(declare-fun res!2989681 () Bool)

(assert (=> b!7453461 (=> (not res!2989681) (not e!4448877))))

(assert (=> b!7453461 (= res!2989681 call!684719)))

(assert (=> b!7453461 (= e!4448879 e!4448877)))

(declare-fun b!7453462 () Bool)

(assert (=> b!7453462 (= e!4448873 call!684718)))

(assert (= (and d!2297183 (not res!2989682)) b!7453460))

(assert (= (and b!7453460 c!1378106) b!7453458))

(assert (= (and b!7453460 (not c!1378106)) b!7453456))

(assert (= (and b!7453458 res!2989678) b!7453457))

(assert (= (and b!7453456 c!1378107) b!7453461))

(assert (= (and b!7453456 (not c!1378107)) b!7453455))

(assert (= (and b!7453461 res!2989681) b!7453454))

(assert (= (and b!7453455 (not res!2989680)) b!7453459))

(assert (= (and b!7453459 res!2989679) b!7453462))

(assert (= (or b!7453454 b!7453462) bm!684713))

(assert (= (or b!7453461 b!7453459) bm!684715))

(assert (= (or b!7453457 bm!684713) bm!684714))

(declare-fun m!8058402 () Bool)

(assert (=> bm!684714 m!8058402))

(declare-fun m!8058404 () Bool)

(assert (=> bm!684715 m!8058404))

(declare-fun m!8058406 () Bool)

(assert (=> b!7453458 m!8058406))

(assert (=> b!7452721 d!2297183))

(declare-fun d!2297185 () Bool)

(assert (=> d!2297185 (= (get!25144 lt!2620890) (v!54194 lt!2620890))))

(assert (=> b!7452737 d!2297185))

(declare-fun d!2297187 () Bool)

(declare-fun choose!57609 (Int) Bool)

(assert (=> d!2297187 (= (Exists!4128 lambda!461032) (choose!57609 lambda!461032))))

(declare-fun bs!1927386 () Bool)

(assert (= bs!1927386 d!2297187))

(declare-fun m!8058408 () Bool)

(assert (=> bs!1927386 m!8058408))

(assert (=> b!7452737 d!2297187))

(declare-fun bs!1927387 () Bool)

(declare-fun d!2297189 () Bool)

(assert (= bs!1927387 (and d!2297189 b!7453135)))

(declare-fun lambda!461087 () Int)

(assert (=> bs!1927387 (not (= lambda!461087 lambda!461059))))

(declare-fun bs!1927388 () Bool)

(assert (= bs!1927388 (and d!2297189 b!7453178)))

(assert (=> bs!1927388 (not (= lambda!461087 lambda!461063))))

(declare-fun bs!1927389 () Bool)

(assert (= bs!1927389 (and d!2297189 b!7453189)))

(assert (=> bs!1927389 (not (= lambda!461087 lambda!461065))))

(declare-fun bs!1927390 () Bool)

(assert (= bs!1927390 (and d!2297189 b!7453139)))

(assert (=> bs!1927390 (not (= lambda!461087 lambda!461061))))

(declare-fun bs!1927391 () Bool)

(assert (= bs!1927391 (and d!2297189 b!7453255)))

(assert (=> bs!1927391 (not (= lambda!461087 lambda!461072))))

(declare-fun bs!1927392 () Bool)

(assert (= bs!1927392 (and d!2297189 b!7453288)))

(assert (=> bs!1927392 (not (= lambda!461087 lambda!461077))))

(declare-fun bs!1927393 () Bool)

(assert (= bs!1927393 (and d!2297189 b!7453008)))

(assert (=> bs!1927393 (not (= lambda!461087 lambda!461053))))

(declare-fun bs!1927394 () Bool)

(assert (= bs!1927394 (and d!2297189 b!7453174)))

(assert (=> bs!1927394 (not (= lambda!461087 lambda!461062))))

(declare-fun bs!1927395 () Bool)

(assert (= bs!1927395 (and d!2297189 b!7453430)))

(assert (=> bs!1927395 (not (= lambda!461087 lambda!461082))))

(declare-fun bs!1927396 () Bool)

(assert (= bs!1927396 (and d!2297189 b!7453012)))

(assert (=> bs!1927396 (not (= lambda!461087 lambda!461055))))

(declare-fun bs!1927397 () Bool)

(assert (= bs!1927397 (and d!2297189 b!7453419)))

(assert (=> bs!1927397 (not (= lambda!461087 lambda!461080))))

(declare-fun bs!1927398 () Bool)

(assert (= bs!1927398 (and d!2297189 b!7453185)))

(assert (=> bs!1927398 (not (= lambda!461087 lambda!461064))))

(declare-fun bs!1927399 () Bool)

(assert (= bs!1927399 (and d!2297189 b!7453284)))

(assert (=> bs!1927399 (not (= lambda!461087 lambda!461074))))

(declare-fun bs!1927400 () Bool)

(assert (= bs!1927400 (and d!2297189 b!7453426)))

(assert (=> bs!1927400 (not (= lambda!461087 lambda!461081))))

(declare-fun bs!1927401 () Bool)

(assert (= bs!1927401 (and d!2297189 b!7452737)))

(assert (=> bs!1927401 (not (= lambda!461087 lambda!461033))))

(assert (=> bs!1927401 (= lambda!461087 lambda!461032)))

(declare-fun bs!1927402 () Bool)

(assert (= bs!1927402 (and d!2297189 b!7453251)))

(assert (=> bs!1927402 (not (= lambda!461087 lambda!461068))))

(declare-fun bs!1927403 () Bool)

(assert (= bs!1927403 (and d!2297189 b!7453415)))

(assert (=> bs!1927403 (not (= lambda!461087 lambda!461079))))

(assert (=> d!2297189 true))

(assert (=> d!2297189 true))

(assert (=> d!2297189 true))

(declare-fun lambda!461088 () Int)

(assert (=> bs!1927387 (not (= lambda!461088 lambda!461059))))

(assert (=> bs!1927388 (= (and (= s!13591 (_2!37537 lt!2620888)) (= lt!2620884 (regOne!39526 rTail!78)) (= rTail!78 (regTwo!39526 rTail!78))) (= lambda!461088 lambda!461063))))

(assert (=> bs!1927389 (= (and (= s!13591 (_1!37537 lt!2620888)) (= lt!2620884 (regOne!39526 r2!5783)) (= rTail!78 (regTwo!39526 r2!5783))) (= lambda!461088 lambda!461065))))

(assert (=> bs!1927390 (= (and (= s!13591 (_1!37537 lt!2620888)) (= lt!2620884 (regOne!39526 r1!5845)) (= rTail!78 (regTwo!39526 r1!5845))) (= lambda!461088 lambda!461061))))

(assert (=> bs!1927391 (= (and (= lt!2620884 (regOne!39526 lt!2620897)) (= rTail!78 (regTwo!39526 lt!2620897))) (= lambda!461088 lambda!461072))))

(assert (=> bs!1927392 (= (and (= lt!2620884 (regOne!39526 lt!2620883)) (= rTail!78 (regTwo!39526 lt!2620883))) (= lambda!461088 lambda!461077))))

(declare-fun bs!1927404 () Bool)

(assert (= bs!1927404 d!2297189))

(assert (=> bs!1927404 (not (= lambda!461088 lambda!461087))))

(assert (=> bs!1927393 (not (= lambda!461088 lambda!461053))))

(assert (=> bs!1927394 (not (= lambda!461088 lambda!461062))))

(assert (=> bs!1927395 (= (and (= lt!2620884 (regOne!39526 lt!2620898)) (= rTail!78 (regTwo!39526 lt!2620898))) (= lambda!461088 lambda!461082))))

(assert (=> bs!1927396 (= (and (= s!13591 (_1!37537 lt!2620888)) (= lt!2620884 (regOne!39526 lt!2620884)) (= rTail!78 (regTwo!39526 lt!2620884))) (= lambda!461088 lambda!461055))))

(assert (=> bs!1927397 (= (and (= lt!2620884 (regOne!39526 lt!2620889)) (= rTail!78 (regTwo!39526 lt!2620889))) (= lambda!461088 lambda!461080))))

(assert (=> bs!1927398 (not (= lambda!461088 lambda!461064))))

(assert (=> bs!1927399 (not (= lambda!461088 lambda!461074))))

(assert (=> bs!1927400 (not (= lambda!461088 lambda!461081))))

(assert (=> bs!1927401 (= lambda!461088 lambda!461033)))

(assert (=> bs!1927401 (not (= lambda!461088 lambda!461032))))

(assert (=> bs!1927402 (not (= lambda!461088 lambda!461068))))

(assert (=> bs!1927403 (not (= lambda!461088 lambda!461079))))

(assert (=> d!2297189 true))

(assert (=> d!2297189 true))

(assert (=> d!2297189 true))

(assert (=> d!2297189 (= (Exists!4128 lambda!461087) (Exists!4128 lambda!461088))))

(declare-fun lt!2620956 () Unit!165849)

(declare-fun choose!57610 (Regex!19507 Regex!19507 List!72223) Unit!165849)

(assert (=> d!2297189 (= lt!2620956 (choose!57610 lt!2620884 rTail!78 s!13591))))

(assert (=> d!2297189 (validRegex!10021 lt!2620884)))

(assert (=> d!2297189 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2464 lt!2620884 rTail!78 s!13591) lt!2620956)))

(declare-fun m!8058410 () Bool)

(assert (=> bs!1927404 m!8058410))

(declare-fun m!8058412 () Bool)

(assert (=> bs!1927404 m!8058412))

(declare-fun m!8058414 () Bool)

(assert (=> bs!1927404 m!8058414))

(assert (=> bs!1927404 m!8058248))

(assert (=> b!7452737 d!2297189))

(declare-fun b!7453471 () Bool)

(declare-fun e!4448887 () Bool)

(declare-fun e!4448885 () Bool)

(assert (=> b!7453471 (= e!4448887 e!4448885)))

(declare-fun res!2989691 () Bool)

(assert (=> b!7453471 (=> res!2989691 e!4448885)))

(declare-fun call!684721 () Bool)

(assert (=> b!7453471 (= res!2989691 call!684721)))

(declare-fun b!7453472 () Bool)

(declare-fun e!4448884 () Bool)

(declare-fun e!4448889 () Bool)

(assert (=> b!7453472 (= e!4448884 e!4448889)))

(declare-fun c!1378108 () Bool)

(assert (=> b!7453472 (= c!1378108 ((_ is EmptyLang!19507) lt!2620884))))

(declare-fun bm!684716 () Bool)

(assert (=> bm!684716 (= call!684721 (isEmpty!41104 (_1!37537 lt!2620888)))))

(declare-fun b!7453473 () Bool)

(declare-fun e!4448886 () Bool)

(assert (=> b!7453473 (= e!4448886 e!4448887)))

(declare-fun res!2989693 () Bool)

(assert (=> b!7453473 (=> (not res!2989693) (not e!4448887))))

(declare-fun lt!2620957 () Bool)

(assert (=> b!7453473 (= res!2989693 (not lt!2620957))))

(declare-fun b!7453474 () Bool)

(declare-fun res!2989695 () Bool)

(assert (=> b!7453474 (=> res!2989695 e!4448885)))

(assert (=> b!7453474 (= res!2989695 (not (isEmpty!41104 (tail!14863 (_1!37537 lt!2620888)))))))

(declare-fun d!2297191 () Bool)

(assert (=> d!2297191 e!4448884))

(declare-fun c!1378110 () Bool)

(assert (=> d!2297191 (= c!1378110 ((_ is EmptyExpr!19507) lt!2620884))))

(declare-fun e!4448890 () Bool)

(assert (=> d!2297191 (= lt!2620957 e!4448890)))

(declare-fun c!1378109 () Bool)

(assert (=> d!2297191 (= c!1378109 (isEmpty!41104 (_1!37537 lt!2620888)))))

(assert (=> d!2297191 (validRegex!10021 lt!2620884)))

(assert (=> d!2297191 (= (matchR!9271 lt!2620884 (_1!37537 lt!2620888)) lt!2620957)))

(declare-fun b!7453475 () Bool)

(declare-fun res!2989698 () Bool)

(assert (=> b!7453475 (=> res!2989698 e!4448886)))

(declare-fun e!4448888 () Bool)

(assert (=> b!7453475 (= res!2989698 e!4448888)))

(declare-fun res!2989692 () Bool)

(assert (=> b!7453475 (=> (not res!2989692) (not e!4448888))))

(assert (=> b!7453475 (= res!2989692 lt!2620957)))

(declare-fun b!7453476 () Bool)

(assert (=> b!7453476 (= e!4448884 (= lt!2620957 call!684721))))

(declare-fun b!7453477 () Bool)

(declare-fun res!2989696 () Bool)

(assert (=> b!7453477 (=> (not res!2989696) (not e!4448888))))

(assert (=> b!7453477 (= res!2989696 (isEmpty!41104 (tail!14863 (_1!37537 lt!2620888))))))

(declare-fun b!7453478 () Bool)

(assert (=> b!7453478 (= e!4448888 (= (head!15294 (_1!37537 lt!2620888)) (c!1377942 lt!2620884)))))

(declare-fun b!7453479 () Bool)

(assert (=> b!7453479 (= e!4448885 (not (= (head!15294 (_1!37537 lt!2620888)) (c!1377942 lt!2620884))))))

(declare-fun b!7453480 () Bool)

(assert (=> b!7453480 (= e!4448889 (not lt!2620957))))

(declare-fun b!7453481 () Bool)

(assert (=> b!7453481 (= e!4448890 (matchR!9271 (derivativeStep!5554 lt!2620884 (head!15294 (_1!37537 lt!2620888))) (tail!14863 (_1!37537 lt!2620888))))))

(declare-fun b!7453482 () Bool)

(declare-fun res!2989694 () Bool)

(assert (=> b!7453482 (=> (not res!2989694) (not e!4448888))))

(assert (=> b!7453482 (= res!2989694 (not call!684721))))

(declare-fun b!7453483 () Bool)

(assert (=> b!7453483 (= e!4448890 (nullable!8495 lt!2620884))))

(declare-fun b!7453484 () Bool)

(declare-fun res!2989697 () Bool)

(assert (=> b!7453484 (=> res!2989697 e!4448886)))

(assert (=> b!7453484 (= res!2989697 (not ((_ is ElementMatch!19507) lt!2620884)))))

(assert (=> b!7453484 (= e!4448889 e!4448886)))

(assert (= (and d!2297191 c!1378109) b!7453483))

(assert (= (and d!2297191 (not c!1378109)) b!7453481))

(assert (= (and d!2297191 c!1378110) b!7453476))

(assert (= (and d!2297191 (not c!1378110)) b!7453472))

(assert (= (and b!7453472 c!1378108) b!7453480))

(assert (= (and b!7453472 (not c!1378108)) b!7453484))

(assert (= (and b!7453484 (not res!2989697)) b!7453475))

(assert (= (and b!7453475 res!2989692) b!7453482))

(assert (= (and b!7453482 res!2989694) b!7453477))

(assert (= (and b!7453477 res!2989696) b!7453478))

(assert (= (and b!7453475 (not res!2989698)) b!7453473))

(assert (= (and b!7453473 res!2989693) b!7453471))

(assert (= (and b!7453471 (not res!2989691)) b!7453474))

(assert (= (and b!7453474 (not res!2989695)) b!7453479))

(assert (= (or b!7453476 b!7453471 b!7453482) bm!684716))

(assert (=> b!7453474 m!8058056))

(assert (=> b!7453474 m!8058056))

(assert (=> b!7453474 m!8058058))

(assert (=> d!2297191 m!8058060))

(assert (=> d!2297191 m!8058248))

(assert (=> b!7453478 m!8058062))

(assert (=> b!7453479 m!8058062))

(declare-fun m!8058416 () Bool)

(assert (=> b!7453483 m!8058416))

(assert (=> b!7453481 m!8058062))

(assert (=> b!7453481 m!8058062))

(declare-fun m!8058418 () Bool)

(assert (=> b!7453481 m!8058418))

(assert (=> b!7453481 m!8058056))

(assert (=> b!7453481 m!8058418))

(assert (=> b!7453481 m!8058056))

(declare-fun m!8058420 () Bool)

(assert (=> b!7453481 m!8058420))

(assert (=> b!7453477 m!8058056))

(assert (=> b!7453477 m!8058056))

(assert (=> b!7453477 m!8058058))

(assert (=> bm!684716 m!8058060))

(assert (=> b!7452737 d!2297191))

(declare-fun d!2297193 () Bool)

(declare-fun isEmpty!41106 (Option!17066) Bool)

(assert (=> d!2297193 (= (isDefined!13755 lt!2620890) (not (isEmpty!41106 lt!2620890)))))

(declare-fun bs!1927405 () Bool)

(assert (= bs!1927405 d!2297193))

(declare-fun m!8058422 () Bool)

(assert (=> bs!1927405 m!8058422))

(assert (=> b!7452737 d!2297193))

(declare-fun d!2297195 () Bool)

(assert (=> d!2297195 (= (Exists!4128 lambda!461033) (choose!57609 lambda!461033))))

(declare-fun bs!1927406 () Bool)

(assert (= bs!1927406 d!2297195))

(declare-fun m!8058424 () Bool)

(assert (=> bs!1927406 m!8058424))

(assert (=> b!7452737 d!2297195))

(declare-fun b!7453503 () Bool)

(declare-fun res!2989710 () Bool)

(declare-fun e!4448904 () Bool)

(assert (=> b!7453503 (=> (not res!2989710) (not e!4448904))))

(declare-fun lt!2620966 () Option!17066)

(assert (=> b!7453503 (= res!2989710 (matchR!9271 rTail!78 (_2!37537 (get!25144 lt!2620966))))))

(declare-fun b!7453504 () Bool)

(declare-fun e!4448901 () Bool)

(assert (=> b!7453504 (= e!4448901 (matchR!9271 rTail!78 s!13591))))

(declare-fun b!7453505 () Bool)

(declare-fun e!4448902 () Bool)

(assert (=> b!7453505 (= e!4448902 (not (isDefined!13755 lt!2620966)))))

(declare-fun b!7453506 () Bool)

(declare-fun e!4448903 () Option!17066)

(assert (=> b!7453506 (= e!4448903 None!17065)))

(declare-fun b!7453507 () Bool)

(declare-fun e!4448905 () Option!17066)

(assert (=> b!7453507 (= e!4448905 (Some!17065 (tuple2!68469 Nil!72099 s!13591)))))

(declare-fun b!7453508 () Bool)

(assert (=> b!7453508 (= e!4448905 e!4448903)))

(declare-fun c!1378115 () Bool)

(assert (=> b!7453508 (= c!1378115 ((_ is Nil!72099) s!13591))))

(declare-fun b!7453509 () Bool)

(declare-fun ++!17167 (List!72223 List!72223) List!72223)

(assert (=> b!7453509 (= e!4448904 (= (++!17167 (_1!37537 (get!25144 lt!2620966)) (_2!37537 (get!25144 lt!2620966))) s!13591))))

(declare-fun d!2297197 () Bool)

(assert (=> d!2297197 e!4448902))

(declare-fun res!2989712 () Bool)

(assert (=> d!2297197 (=> res!2989712 e!4448902)))

(assert (=> d!2297197 (= res!2989712 e!4448904)))

(declare-fun res!2989713 () Bool)

(assert (=> d!2297197 (=> (not res!2989713) (not e!4448904))))

(assert (=> d!2297197 (= res!2989713 (isDefined!13755 lt!2620966))))

(assert (=> d!2297197 (= lt!2620966 e!4448905)))

(declare-fun c!1378116 () Bool)

(assert (=> d!2297197 (= c!1378116 e!4448901)))

(declare-fun res!2989711 () Bool)

(assert (=> d!2297197 (=> (not res!2989711) (not e!4448901))))

(assert (=> d!2297197 (= res!2989711 (matchR!9271 lt!2620884 Nil!72099))))

(assert (=> d!2297197 (validRegex!10021 lt!2620884)))

(assert (=> d!2297197 (= (findConcatSeparation!3188 lt!2620884 rTail!78 Nil!72099 s!13591 s!13591) lt!2620966)))

(declare-fun b!7453510 () Bool)

(declare-fun lt!2620964 () Unit!165849)

(declare-fun lt!2620965 () Unit!165849)

(assert (=> b!7453510 (= lt!2620964 lt!2620965)))

(assert (=> b!7453510 (= (++!17167 (++!17167 Nil!72099 (Cons!72099 (h!78547 s!13591) Nil!72099)) (t!386792 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3047 (List!72223 C!39288 List!72223 List!72223) Unit!165849)

(assert (=> b!7453510 (= lt!2620965 (lemmaMoveElementToOtherListKeepsConcatEq!3047 Nil!72099 (h!78547 s!13591) (t!386792 s!13591) s!13591))))

(assert (=> b!7453510 (= e!4448903 (findConcatSeparation!3188 lt!2620884 rTail!78 (++!17167 Nil!72099 (Cons!72099 (h!78547 s!13591) Nil!72099)) (t!386792 s!13591) s!13591))))

(declare-fun b!7453511 () Bool)

(declare-fun res!2989709 () Bool)

(assert (=> b!7453511 (=> (not res!2989709) (not e!4448904))))

(assert (=> b!7453511 (= res!2989709 (matchR!9271 lt!2620884 (_1!37537 (get!25144 lt!2620966))))))

(assert (= (and d!2297197 res!2989711) b!7453504))

(assert (= (and d!2297197 c!1378116) b!7453507))

(assert (= (and d!2297197 (not c!1378116)) b!7453508))

(assert (= (and b!7453508 c!1378115) b!7453506))

(assert (= (and b!7453508 (not c!1378115)) b!7453510))

(assert (= (and d!2297197 res!2989713) b!7453511))

(assert (= (and b!7453511 res!2989709) b!7453503))

(assert (= (and b!7453503 res!2989710) b!7453509))

(assert (= (and d!2297197 (not res!2989712)) b!7453505))

(declare-fun m!8058426 () Bool)

(assert (=> b!7453509 m!8058426))

(declare-fun m!8058428 () Bool)

(assert (=> b!7453509 m!8058428))

(declare-fun m!8058430 () Bool)

(assert (=> b!7453504 m!8058430))

(declare-fun m!8058432 () Bool)

(assert (=> b!7453510 m!8058432))

(assert (=> b!7453510 m!8058432))

(declare-fun m!8058434 () Bool)

(assert (=> b!7453510 m!8058434))

(declare-fun m!8058436 () Bool)

(assert (=> b!7453510 m!8058436))

(assert (=> b!7453510 m!8058432))

(declare-fun m!8058438 () Bool)

(assert (=> b!7453510 m!8058438))

(declare-fun m!8058440 () Bool)

(assert (=> b!7453505 m!8058440))

(assert (=> b!7453503 m!8058426))

(declare-fun m!8058442 () Bool)

(assert (=> b!7453503 m!8058442))

(assert (=> d!2297197 m!8058440))

(declare-fun m!8058444 () Bool)

(assert (=> d!2297197 m!8058444))

(assert (=> d!2297197 m!8058248))

(assert (=> b!7453511 m!8058426))

(declare-fun m!8058446 () Bool)

(assert (=> b!7453511 m!8058446))

(assert (=> b!7452737 d!2297197))

(declare-fun bs!1927407 () Bool)

(declare-fun d!2297199 () Bool)

(assert (= bs!1927407 (and d!2297199 b!7453135)))

(declare-fun lambda!461091 () Int)

(assert (=> bs!1927407 (not (= lambda!461091 lambda!461059))))

(declare-fun bs!1927408 () Bool)

(assert (= bs!1927408 (and d!2297199 b!7453178)))

(assert (=> bs!1927408 (not (= lambda!461091 lambda!461063))))

(declare-fun bs!1927409 () Bool)

(assert (= bs!1927409 (and d!2297199 b!7453189)))

(assert (=> bs!1927409 (not (= lambda!461091 lambda!461065))))

(declare-fun bs!1927410 () Bool)

(assert (= bs!1927410 (and d!2297199 b!7453139)))

(assert (=> bs!1927410 (not (= lambda!461091 lambda!461061))))

(declare-fun bs!1927411 () Bool)

(assert (= bs!1927411 (and d!2297199 b!7453288)))

(assert (=> bs!1927411 (not (= lambda!461091 lambda!461077))))

(declare-fun bs!1927412 () Bool)

(assert (= bs!1927412 (and d!2297199 d!2297189)))

(assert (=> bs!1927412 (= lambda!461091 lambda!461087)))

(declare-fun bs!1927413 () Bool)

(assert (= bs!1927413 (and d!2297199 b!7453008)))

(assert (=> bs!1927413 (not (= lambda!461091 lambda!461053))))

(declare-fun bs!1927414 () Bool)

(assert (= bs!1927414 (and d!2297199 b!7453174)))

(assert (=> bs!1927414 (not (= lambda!461091 lambda!461062))))

(declare-fun bs!1927415 () Bool)

(assert (= bs!1927415 (and d!2297199 b!7453430)))

(assert (=> bs!1927415 (not (= lambda!461091 lambda!461082))))

(declare-fun bs!1927416 () Bool)

(assert (= bs!1927416 (and d!2297199 b!7453012)))

(assert (=> bs!1927416 (not (= lambda!461091 lambda!461055))))

(declare-fun bs!1927417 () Bool)

(assert (= bs!1927417 (and d!2297199 b!7453255)))

(assert (=> bs!1927417 (not (= lambda!461091 lambda!461072))))

(assert (=> bs!1927412 (not (= lambda!461091 lambda!461088))))

(declare-fun bs!1927418 () Bool)

(assert (= bs!1927418 (and d!2297199 b!7453419)))

(assert (=> bs!1927418 (not (= lambda!461091 lambda!461080))))

(declare-fun bs!1927419 () Bool)

(assert (= bs!1927419 (and d!2297199 b!7453185)))

(assert (=> bs!1927419 (not (= lambda!461091 lambda!461064))))

(declare-fun bs!1927420 () Bool)

(assert (= bs!1927420 (and d!2297199 b!7453284)))

(assert (=> bs!1927420 (not (= lambda!461091 lambda!461074))))

(declare-fun bs!1927421 () Bool)

(assert (= bs!1927421 (and d!2297199 b!7453426)))

(assert (=> bs!1927421 (not (= lambda!461091 lambda!461081))))

(declare-fun bs!1927422 () Bool)

(assert (= bs!1927422 (and d!2297199 b!7452737)))

(assert (=> bs!1927422 (not (= lambda!461091 lambda!461033))))

(assert (=> bs!1927422 (= lambda!461091 lambda!461032)))

(declare-fun bs!1927423 () Bool)

(assert (= bs!1927423 (and d!2297199 b!7453251)))

(assert (=> bs!1927423 (not (= lambda!461091 lambda!461068))))

(declare-fun bs!1927424 () Bool)

(assert (= bs!1927424 (and d!2297199 b!7453415)))

(assert (=> bs!1927424 (not (= lambda!461091 lambda!461079))))

(assert (=> d!2297199 true))

(assert (=> d!2297199 true))

(assert (=> d!2297199 true))

(assert (=> d!2297199 (= (isDefined!13755 (findConcatSeparation!3188 lt!2620884 rTail!78 Nil!72099 s!13591 s!13591)) (Exists!4128 lambda!461091))))

(declare-fun lt!2620969 () Unit!165849)

(declare-fun choose!57611 (Regex!19507 Regex!19507 List!72223) Unit!165849)

(assert (=> d!2297199 (= lt!2620969 (choose!57611 lt!2620884 rTail!78 s!13591))))

(assert (=> d!2297199 (validRegex!10021 lt!2620884)))

(assert (=> d!2297199 (= (lemmaFindConcatSeparationEquivalentToExists!2946 lt!2620884 rTail!78 s!13591) lt!2620969)))

(declare-fun bs!1927425 () Bool)

(assert (= bs!1927425 d!2297199))

(assert (=> bs!1927425 m!8058248))

(assert (=> bs!1927425 m!8058010))

(declare-fun m!8058448 () Bool)

(assert (=> bs!1927425 m!8058448))

(assert (=> bs!1927425 m!8058010))

(declare-fun m!8058450 () Bool)

(assert (=> bs!1927425 m!8058450))

(declare-fun m!8058452 () Bool)

(assert (=> bs!1927425 m!8058452))

(assert (=> b!7452737 d!2297199))

(declare-fun d!2297201 () Bool)

(declare-fun res!2989722 () Bool)

(declare-fun e!4448911 () Bool)

(assert (=> d!2297201 (=> res!2989722 e!4448911)))

(assert (=> d!2297201 (= res!2989722 ((_ is ElementMatch!19507) r1!5845))))

(assert (=> d!2297201 (= (validRegex!10021 r1!5845) e!4448911)))

(declare-fun b!7453516 () Bool)

(declare-fun e!4448912 () Bool)

(declare-fun call!684722 () Bool)

(assert (=> b!7453516 (= e!4448912 call!684722)))

(declare-fun b!7453517 () Bool)

(declare-fun res!2989720 () Bool)

(declare-fun e!4448913 () Bool)

(assert (=> b!7453517 (=> res!2989720 e!4448913)))

(assert (=> b!7453517 (= res!2989720 (not ((_ is Concat!28352) r1!5845)))))

(declare-fun e!4448914 () Bool)

(assert (=> b!7453517 (= e!4448914 e!4448913)))

(declare-fun b!7453518 () Bool)

(declare-fun e!4448910 () Bool)

(assert (=> b!7453518 (= e!4448910 e!4448914)))

(declare-fun c!1378118 () Bool)

(assert (=> b!7453518 (= c!1378118 ((_ is Union!19507) r1!5845))))

(declare-fun bm!684717 () Bool)

(declare-fun call!684724 () Bool)

(assert (=> bm!684717 (= call!684722 call!684724)))

(declare-fun c!1378117 () Bool)

(declare-fun bm!684718 () Bool)

(assert (=> bm!684718 (= call!684724 (validRegex!10021 (ite c!1378117 (reg!19836 r1!5845) (ite c!1378118 (regTwo!39527 r1!5845) (regTwo!39526 r1!5845)))))))

(declare-fun bm!684719 () Bool)

(declare-fun call!684723 () Bool)

(assert (=> bm!684719 (= call!684723 (validRegex!10021 (ite c!1378118 (regOne!39527 r1!5845) (regOne!39526 r1!5845))))))

(declare-fun b!7453519 () Bool)

(declare-fun e!4448909 () Bool)

(assert (=> b!7453519 (= e!4448909 call!684724)))

(declare-fun b!7453520 () Bool)

(assert (=> b!7453520 (= e!4448910 e!4448909)))

(declare-fun res!2989718 () Bool)

(assert (=> b!7453520 (= res!2989718 (not (nullable!8495 (reg!19836 r1!5845))))))

(assert (=> b!7453520 (=> (not res!2989718) (not e!4448909))))

(declare-fun b!7453521 () Bool)

(declare-fun e!4448908 () Bool)

(assert (=> b!7453521 (= e!4448913 e!4448908)))

(declare-fun res!2989719 () Bool)

(assert (=> b!7453521 (=> (not res!2989719) (not e!4448908))))

(assert (=> b!7453521 (= res!2989719 call!684723)))

(declare-fun b!7453522 () Bool)

(assert (=> b!7453522 (= e!4448911 e!4448910)))

(assert (=> b!7453522 (= c!1378117 ((_ is Star!19507) r1!5845))))

(declare-fun b!7453523 () Bool)

(declare-fun res!2989721 () Bool)

(assert (=> b!7453523 (=> (not res!2989721) (not e!4448912))))

(assert (=> b!7453523 (= res!2989721 call!684723)))

(assert (=> b!7453523 (= e!4448914 e!4448912)))

(declare-fun b!7453524 () Bool)

(assert (=> b!7453524 (= e!4448908 call!684722)))

(assert (= (and d!2297201 (not res!2989722)) b!7453522))

(assert (= (and b!7453522 c!1378117) b!7453520))

(assert (= (and b!7453522 (not c!1378117)) b!7453518))

(assert (= (and b!7453520 res!2989718) b!7453519))

(assert (= (and b!7453518 c!1378118) b!7453523))

(assert (= (and b!7453518 (not c!1378118)) b!7453517))

(assert (= (and b!7453523 res!2989721) b!7453516))

(assert (= (and b!7453517 (not res!2989720)) b!7453521))

(assert (= (and b!7453521 res!2989719) b!7453524))

(assert (= (or b!7453516 b!7453524) bm!684717))

(assert (= (or b!7453523 b!7453521) bm!684719))

(assert (= (or b!7453519 bm!684717) bm!684718))

(declare-fun m!8058454 () Bool)

(assert (=> bm!684718 m!8058454))

(declare-fun m!8058456 () Bool)

(assert (=> bm!684719 m!8058456))

(declare-fun m!8058458 () Bool)

(assert (=> b!7453520 m!8058458))

(assert (=> start!723466 d!2297201))

(declare-fun b!7453536 () Bool)

(declare-fun e!4448917 () Bool)

(declare-fun tp!2159936 () Bool)

(declare-fun tp!2159938 () Bool)

(assert (=> b!7453536 (= e!4448917 (and tp!2159936 tp!2159938))))

(declare-fun b!7453538 () Bool)

(declare-fun tp!2159934 () Bool)

(declare-fun tp!2159935 () Bool)

(assert (=> b!7453538 (= e!4448917 (and tp!2159934 tp!2159935))))

(declare-fun b!7453537 () Bool)

(declare-fun tp!2159937 () Bool)

(assert (=> b!7453537 (= e!4448917 tp!2159937)))

(assert (=> b!7452739 (= tp!2159831 e!4448917)))

(declare-fun b!7453535 () Bool)

(assert (=> b!7453535 (= e!4448917 tp_is_empty!49303)))

(assert (= (and b!7452739 ((_ is ElementMatch!19507) (reg!19836 r1!5845))) b!7453535))

(assert (= (and b!7452739 ((_ is Concat!28352) (reg!19836 r1!5845))) b!7453536))

(assert (= (and b!7452739 ((_ is Star!19507) (reg!19836 r1!5845))) b!7453537))

(assert (= (and b!7452739 ((_ is Union!19507) (reg!19836 r1!5845))) b!7453538))

(declare-fun b!7453540 () Bool)

(declare-fun e!4448918 () Bool)

(declare-fun tp!2159941 () Bool)

(declare-fun tp!2159943 () Bool)

(assert (=> b!7453540 (= e!4448918 (and tp!2159941 tp!2159943))))

(declare-fun b!7453542 () Bool)

(declare-fun tp!2159939 () Bool)

(declare-fun tp!2159940 () Bool)

(assert (=> b!7453542 (= e!4448918 (and tp!2159939 tp!2159940))))

(declare-fun b!7453541 () Bool)

(declare-fun tp!2159942 () Bool)

(assert (=> b!7453541 (= e!4448918 tp!2159942)))

(assert (=> b!7452734 (= tp!2159824 e!4448918)))

(declare-fun b!7453539 () Bool)

(assert (=> b!7453539 (= e!4448918 tp_is_empty!49303)))

(assert (= (and b!7452734 ((_ is ElementMatch!19507) (regOne!39527 r1!5845))) b!7453539))

(assert (= (and b!7452734 ((_ is Concat!28352) (regOne!39527 r1!5845))) b!7453540))

(assert (= (and b!7452734 ((_ is Star!19507) (regOne!39527 r1!5845))) b!7453541))

(assert (= (and b!7452734 ((_ is Union!19507) (regOne!39527 r1!5845))) b!7453542))

(declare-fun b!7453544 () Bool)

(declare-fun e!4448919 () Bool)

(declare-fun tp!2159946 () Bool)

(declare-fun tp!2159948 () Bool)

(assert (=> b!7453544 (= e!4448919 (and tp!2159946 tp!2159948))))

(declare-fun b!7453546 () Bool)

(declare-fun tp!2159944 () Bool)

(declare-fun tp!2159945 () Bool)

(assert (=> b!7453546 (= e!4448919 (and tp!2159944 tp!2159945))))

(declare-fun b!7453545 () Bool)

(declare-fun tp!2159947 () Bool)

(assert (=> b!7453545 (= e!4448919 tp!2159947)))

(assert (=> b!7452734 (= tp!2159834 e!4448919)))

(declare-fun b!7453543 () Bool)

(assert (=> b!7453543 (= e!4448919 tp_is_empty!49303)))

(assert (= (and b!7452734 ((_ is ElementMatch!19507) (regTwo!39527 r1!5845))) b!7453543))

(assert (= (and b!7452734 ((_ is Concat!28352) (regTwo!39527 r1!5845))) b!7453544))

(assert (= (and b!7452734 ((_ is Star!19507) (regTwo!39527 r1!5845))) b!7453545))

(assert (= (and b!7452734 ((_ is Union!19507) (regTwo!39527 r1!5845))) b!7453546))

(declare-fun b!7453548 () Bool)

(declare-fun e!4448920 () Bool)

(declare-fun tp!2159951 () Bool)

(declare-fun tp!2159953 () Bool)

(assert (=> b!7453548 (= e!4448920 (and tp!2159951 tp!2159953))))

(declare-fun b!7453550 () Bool)

(declare-fun tp!2159949 () Bool)

(declare-fun tp!2159950 () Bool)

(assert (=> b!7453550 (= e!4448920 (and tp!2159949 tp!2159950))))

(declare-fun b!7453549 () Bool)

(declare-fun tp!2159952 () Bool)

(assert (=> b!7453549 (= e!4448920 tp!2159952)))

(assert (=> b!7452722 (= tp!2159833 e!4448920)))

(declare-fun b!7453547 () Bool)

(assert (=> b!7453547 (= e!4448920 tp_is_empty!49303)))

(assert (= (and b!7452722 ((_ is ElementMatch!19507) (regOne!39526 r1!5845))) b!7453547))

(assert (= (and b!7452722 ((_ is Concat!28352) (regOne!39526 r1!5845))) b!7453548))

(assert (= (and b!7452722 ((_ is Star!19507) (regOne!39526 r1!5845))) b!7453549))

(assert (= (and b!7452722 ((_ is Union!19507) (regOne!39526 r1!5845))) b!7453550))

(declare-fun b!7453552 () Bool)

(declare-fun e!4448921 () Bool)

(declare-fun tp!2159956 () Bool)

(declare-fun tp!2159958 () Bool)

(assert (=> b!7453552 (= e!4448921 (and tp!2159956 tp!2159958))))

(declare-fun b!7453554 () Bool)

(declare-fun tp!2159954 () Bool)

(declare-fun tp!2159955 () Bool)

(assert (=> b!7453554 (= e!4448921 (and tp!2159954 tp!2159955))))

(declare-fun b!7453553 () Bool)

(declare-fun tp!2159957 () Bool)

(assert (=> b!7453553 (= e!4448921 tp!2159957)))

(assert (=> b!7452722 (= tp!2159823 e!4448921)))

(declare-fun b!7453551 () Bool)

(assert (=> b!7453551 (= e!4448921 tp_is_empty!49303)))

(assert (= (and b!7452722 ((_ is ElementMatch!19507) (regTwo!39526 r1!5845))) b!7453551))

(assert (= (and b!7452722 ((_ is Concat!28352) (regTwo!39526 r1!5845))) b!7453552))

(assert (= (and b!7452722 ((_ is Star!19507) (regTwo!39526 r1!5845))) b!7453553))

(assert (= (and b!7452722 ((_ is Union!19507) (regTwo!39526 r1!5845))) b!7453554))

(declare-fun b!7453559 () Bool)

(declare-fun e!4448924 () Bool)

(declare-fun tp!2159961 () Bool)

(assert (=> b!7453559 (= e!4448924 (and tp_is_empty!49303 tp!2159961))))

(assert (=> b!7452738 (= tp!2159825 e!4448924)))

(assert (= (and b!7452738 ((_ is Cons!72099) (t!386792 s!13591))) b!7453559))

(declare-fun b!7453561 () Bool)

(declare-fun e!4448925 () Bool)

(declare-fun tp!2159964 () Bool)

(declare-fun tp!2159966 () Bool)

(assert (=> b!7453561 (= e!4448925 (and tp!2159964 tp!2159966))))

(declare-fun b!7453563 () Bool)

(declare-fun tp!2159962 () Bool)

(declare-fun tp!2159963 () Bool)

(assert (=> b!7453563 (= e!4448925 (and tp!2159962 tp!2159963))))

(declare-fun b!7453562 () Bool)

(declare-fun tp!2159965 () Bool)

(assert (=> b!7453562 (= e!4448925 tp!2159965)))

(assert (=> b!7452733 (= tp!2159828 e!4448925)))

(declare-fun b!7453560 () Bool)

(assert (=> b!7453560 (= e!4448925 tp_is_empty!49303)))

(assert (= (and b!7452733 ((_ is ElementMatch!19507) (regOne!39527 r2!5783))) b!7453560))

(assert (= (and b!7452733 ((_ is Concat!28352) (regOne!39527 r2!5783))) b!7453561))

(assert (= (and b!7452733 ((_ is Star!19507) (regOne!39527 r2!5783))) b!7453562))

(assert (= (and b!7452733 ((_ is Union!19507) (regOne!39527 r2!5783))) b!7453563))

(declare-fun b!7453565 () Bool)

(declare-fun e!4448926 () Bool)

(declare-fun tp!2159969 () Bool)

(declare-fun tp!2159971 () Bool)

(assert (=> b!7453565 (= e!4448926 (and tp!2159969 tp!2159971))))

(declare-fun b!7453567 () Bool)

(declare-fun tp!2159967 () Bool)

(declare-fun tp!2159968 () Bool)

(assert (=> b!7453567 (= e!4448926 (and tp!2159967 tp!2159968))))

(declare-fun b!7453566 () Bool)

(declare-fun tp!2159970 () Bool)

(assert (=> b!7453566 (= e!4448926 tp!2159970)))

(assert (=> b!7452733 (= tp!2159822 e!4448926)))

(declare-fun b!7453564 () Bool)

(assert (=> b!7453564 (= e!4448926 tp_is_empty!49303)))

(assert (= (and b!7452733 ((_ is ElementMatch!19507) (regTwo!39527 r2!5783))) b!7453564))

(assert (= (and b!7452733 ((_ is Concat!28352) (regTwo!39527 r2!5783))) b!7453565))

(assert (= (and b!7452733 ((_ is Star!19507) (regTwo!39527 r2!5783))) b!7453566))

(assert (= (and b!7452733 ((_ is Union!19507) (regTwo!39527 r2!5783))) b!7453567))

(declare-fun b!7453569 () Bool)

(declare-fun e!4448927 () Bool)

(declare-fun tp!2159974 () Bool)

(declare-fun tp!2159976 () Bool)

(assert (=> b!7453569 (= e!4448927 (and tp!2159974 tp!2159976))))

(declare-fun b!7453571 () Bool)

(declare-fun tp!2159972 () Bool)

(declare-fun tp!2159973 () Bool)

(assert (=> b!7453571 (= e!4448927 (and tp!2159972 tp!2159973))))

(declare-fun b!7453570 () Bool)

(declare-fun tp!2159975 () Bool)

(assert (=> b!7453570 (= e!4448927 tp!2159975)))

(assert (=> b!7452731 (= tp!2159835 e!4448927)))

(declare-fun b!7453568 () Bool)

(assert (=> b!7453568 (= e!4448927 tp_is_empty!49303)))

(assert (= (and b!7452731 ((_ is ElementMatch!19507) (regOne!39526 rTail!78))) b!7453568))

(assert (= (and b!7452731 ((_ is Concat!28352) (regOne!39526 rTail!78))) b!7453569))

(assert (= (and b!7452731 ((_ is Star!19507) (regOne!39526 rTail!78))) b!7453570))

(assert (= (and b!7452731 ((_ is Union!19507) (regOne!39526 rTail!78))) b!7453571))

(declare-fun b!7453573 () Bool)

(declare-fun e!4448928 () Bool)

(declare-fun tp!2159979 () Bool)

(declare-fun tp!2159981 () Bool)

(assert (=> b!7453573 (= e!4448928 (and tp!2159979 tp!2159981))))

(declare-fun b!7453575 () Bool)

(declare-fun tp!2159977 () Bool)

(declare-fun tp!2159978 () Bool)

(assert (=> b!7453575 (= e!4448928 (and tp!2159977 tp!2159978))))

(declare-fun b!7453574 () Bool)

(declare-fun tp!2159980 () Bool)

(assert (=> b!7453574 (= e!4448928 tp!2159980)))

(assert (=> b!7452731 (= tp!2159832 e!4448928)))

(declare-fun b!7453572 () Bool)

(assert (=> b!7453572 (= e!4448928 tp_is_empty!49303)))

(assert (= (and b!7452731 ((_ is ElementMatch!19507) (regTwo!39526 rTail!78))) b!7453572))

(assert (= (and b!7452731 ((_ is Concat!28352) (regTwo!39526 rTail!78))) b!7453573))

(assert (= (and b!7452731 ((_ is Star!19507) (regTwo!39526 rTail!78))) b!7453574))

(assert (= (and b!7452731 ((_ is Union!19507) (regTwo!39526 rTail!78))) b!7453575))

(declare-fun b!7453577 () Bool)

(declare-fun e!4448929 () Bool)

(declare-fun tp!2159984 () Bool)

(declare-fun tp!2159986 () Bool)

(assert (=> b!7453577 (= e!4448929 (and tp!2159984 tp!2159986))))

(declare-fun b!7453579 () Bool)

(declare-fun tp!2159982 () Bool)

(declare-fun tp!2159983 () Bool)

(assert (=> b!7453579 (= e!4448929 (and tp!2159982 tp!2159983))))

(declare-fun b!7453578 () Bool)

(declare-fun tp!2159985 () Bool)

(assert (=> b!7453578 (= e!4448929 tp!2159985)))

(assert (=> b!7452724 (= tp!2159829 e!4448929)))

(declare-fun b!7453576 () Bool)

(assert (=> b!7453576 (= e!4448929 tp_is_empty!49303)))

(assert (= (and b!7452724 ((_ is ElementMatch!19507) (regOne!39526 r2!5783))) b!7453576))

(assert (= (and b!7452724 ((_ is Concat!28352) (regOne!39526 r2!5783))) b!7453577))

(assert (= (and b!7452724 ((_ is Star!19507) (regOne!39526 r2!5783))) b!7453578))

(assert (= (and b!7452724 ((_ is Union!19507) (regOne!39526 r2!5783))) b!7453579))

(declare-fun b!7453581 () Bool)

(declare-fun e!4448930 () Bool)

(declare-fun tp!2159989 () Bool)

(declare-fun tp!2159991 () Bool)

(assert (=> b!7453581 (= e!4448930 (and tp!2159989 tp!2159991))))

(declare-fun b!7453583 () Bool)

(declare-fun tp!2159987 () Bool)

(declare-fun tp!2159988 () Bool)

(assert (=> b!7453583 (= e!4448930 (and tp!2159987 tp!2159988))))

(declare-fun b!7453582 () Bool)

(declare-fun tp!2159990 () Bool)

(assert (=> b!7453582 (= e!4448930 tp!2159990)))

(assert (=> b!7452724 (= tp!2159821 e!4448930)))

(declare-fun b!7453580 () Bool)

(assert (=> b!7453580 (= e!4448930 tp_is_empty!49303)))

(assert (= (and b!7452724 ((_ is ElementMatch!19507) (regTwo!39526 r2!5783))) b!7453580))

(assert (= (and b!7452724 ((_ is Concat!28352) (regTwo!39526 r2!5783))) b!7453581))

(assert (= (and b!7452724 ((_ is Star!19507) (regTwo!39526 r2!5783))) b!7453582))

(assert (= (and b!7452724 ((_ is Union!19507) (regTwo!39526 r2!5783))) b!7453583))

(declare-fun b!7453585 () Bool)

(declare-fun e!4448931 () Bool)

(declare-fun tp!2159994 () Bool)

(declare-fun tp!2159996 () Bool)

(assert (=> b!7453585 (= e!4448931 (and tp!2159994 tp!2159996))))

(declare-fun b!7453587 () Bool)

(declare-fun tp!2159992 () Bool)

(declare-fun tp!2159993 () Bool)

(assert (=> b!7453587 (= e!4448931 (and tp!2159992 tp!2159993))))

(declare-fun b!7453586 () Bool)

(declare-fun tp!2159995 () Bool)

(assert (=> b!7453586 (= e!4448931 tp!2159995)))

(assert (=> b!7452735 (= tp!2159827 e!4448931)))

(declare-fun b!7453584 () Bool)

(assert (=> b!7453584 (= e!4448931 tp_is_empty!49303)))

(assert (= (and b!7452735 ((_ is ElementMatch!19507) (reg!19836 r2!5783))) b!7453584))

(assert (= (and b!7452735 ((_ is Concat!28352) (reg!19836 r2!5783))) b!7453585))

(assert (= (and b!7452735 ((_ is Star!19507) (reg!19836 r2!5783))) b!7453586))

(assert (= (and b!7452735 ((_ is Union!19507) (reg!19836 r2!5783))) b!7453587))

(declare-fun b!7453589 () Bool)

(declare-fun e!4448932 () Bool)

(declare-fun tp!2159999 () Bool)

(declare-fun tp!2160001 () Bool)

(assert (=> b!7453589 (= e!4448932 (and tp!2159999 tp!2160001))))

(declare-fun b!7453591 () Bool)

(declare-fun tp!2159997 () Bool)

(declare-fun tp!2159998 () Bool)

(assert (=> b!7453591 (= e!4448932 (and tp!2159997 tp!2159998))))

(declare-fun b!7453590 () Bool)

(declare-fun tp!2160000 () Bool)

(assert (=> b!7453590 (= e!4448932 tp!2160000)))

(assert (=> b!7452730 (= tp!2159830 e!4448932)))

(declare-fun b!7453588 () Bool)

(assert (=> b!7453588 (= e!4448932 tp_is_empty!49303)))

(assert (= (and b!7452730 ((_ is ElementMatch!19507) (regOne!39527 rTail!78))) b!7453588))

(assert (= (and b!7452730 ((_ is Concat!28352) (regOne!39527 rTail!78))) b!7453589))

(assert (= (and b!7452730 ((_ is Star!19507) (regOne!39527 rTail!78))) b!7453590))

(assert (= (and b!7452730 ((_ is Union!19507) (regOne!39527 rTail!78))) b!7453591))

(declare-fun b!7453593 () Bool)

(declare-fun e!4448933 () Bool)

(declare-fun tp!2160004 () Bool)

(declare-fun tp!2160006 () Bool)

(assert (=> b!7453593 (= e!4448933 (and tp!2160004 tp!2160006))))

(declare-fun b!7453595 () Bool)

(declare-fun tp!2160002 () Bool)

(declare-fun tp!2160003 () Bool)

(assert (=> b!7453595 (= e!4448933 (and tp!2160002 tp!2160003))))

(declare-fun b!7453594 () Bool)

(declare-fun tp!2160005 () Bool)

(assert (=> b!7453594 (= e!4448933 tp!2160005)))

(assert (=> b!7452730 (= tp!2159820 e!4448933)))

(declare-fun b!7453592 () Bool)

(assert (=> b!7453592 (= e!4448933 tp_is_empty!49303)))

(assert (= (and b!7452730 ((_ is ElementMatch!19507) (regTwo!39527 rTail!78))) b!7453592))

(assert (= (and b!7452730 ((_ is Concat!28352) (regTwo!39527 rTail!78))) b!7453593))

(assert (= (and b!7452730 ((_ is Star!19507) (regTwo!39527 rTail!78))) b!7453594))

(assert (= (and b!7452730 ((_ is Union!19507) (regTwo!39527 rTail!78))) b!7453595))

(declare-fun b!7453597 () Bool)

(declare-fun e!4448934 () Bool)

(declare-fun tp!2160009 () Bool)

(declare-fun tp!2160011 () Bool)

(assert (=> b!7453597 (= e!4448934 (and tp!2160009 tp!2160011))))

(declare-fun b!7453599 () Bool)

(declare-fun tp!2160007 () Bool)

(declare-fun tp!2160008 () Bool)

(assert (=> b!7453599 (= e!4448934 (and tp!2160007 tp!2160008))))

(declare-fun b!7453598 () Bool)

(declare-fun tp!2160010 () Bool)

(assert (=> b!7453598 (= e!4448934 tp!2160010)))

(assert (=> b!7452725 (= tp!2159826 e!4448934)))

(declare-fun b!7453596 () Bool)

(assert (=> b!7453596 (= e!4448934 tp_is_empty!49303)))

(assert (= (and b!7452725 ((_ is ElementMatch!19507) (reg!19836 rTail!78))) b!7453596))

(assert (= (and b!7452725 ((_ is Concat!28352) (reg!19836 rTail!78))) b!7453597))

(assert (= (and b!7452725 ((_ is Star!19507) (reg!19836 rTail!78))) b!7453598))

(assert (= (and b!7452725 ((_ is Union!19507) (reg!19836 rTail!78))) b!7453599))

(check-sat (not b!7453098) (not b!7452827) (not b!7453559) (not b!7453435) (not d!2297119) (not b!7453446) (not b!7453403) (not b!7453504) (not bm!684689) (not b!7453006) (not d!2297121) (not b!7453582) (not b!7453401) (not b!7453234) (not b!7453182) (not b!7453594) (not b!7453102) (not d!2297189) (not b!7453005) (not b!7453541) (not b!7453093) (not b!7453565) (not b!7453423) (not b!7453585) (not b!7453281) (not b!7453478) (not b!7453243) (not b!7453390) (not b!7453271) (not b!7453542) (not d!2297113) (not b!7453587) (not b!7453276) (not b!7453483) (not b!7453509) (not bm!684685) (not b!7453575) (not b!7453571) (not d!2297179) (not d!2297195) (not bm!684710) (not b!7453563) (not b!7453267) (not b!7453402) (not bm!684692) (not d!2297157) (not d!2297101) (not bm!684711) (not b!7453407) (not b!7453424) (not b!7453270) (not d!2297165) (not b!7453546) (not b!7453412) (not bm!684702) (not b!7453597) (not b!7453553) (not bm!684660) (not b!7453570) (not b!7453282) (not d!2297151) (not b!7453133) (not bm!684659) (not d!2297137) (not b!7453398) (not bm!684632) (not bm!684714) (not b!7453223) (not b!7453479) (not b!7453545) (not b!7453550) (not bm!684707) (not bm!684681) (not b!7453172) (not b!7453241) (not bm!684704) (not d!2297153) (not b!7453566) (not b!7452818) (not bm!684703) (not d!2297149) (not b!7453237) (not b!7452823) (not b!7453574) (not b!7453474) (not b!7453581) (not d!2297191) (not b!7453239) (not b!7453274) (not bm!684686) (not b!7453132) (not bm!684676) (not b!7453447) (not b!7453171) (not b!7453505) (not b!7453405) (not b!7453477) (not b!7453448) (not d!2297197) (not bm!684712) (not b!7453458) (not b!7453520) (not b!7453096) (not bm!684719) (not d!2297193) (not b!7453562) (not b!7453586) (not b!7453537) (not bm!684708) (not b!7453561) (not d!2297063) (not b!7453536) (not d!2297181) (not bm!684684) (not b!7453540) (not b!7453548) (not bm!684715) (not b!7453097) (not bm!684716) (not b!7452822) (not b!7453443) (not b!7453538) (not b!7453578) (not b!7453593) (not b!7453450) (not bm!684706) (not d!2297173) (not b!7453589) tp_is_empty!49303 (not b!7453248) (not b!7453552) (not b!7453573) (not b!7453591) (not b!7453227) (not b!7453183) (not bm!684705) (not d!2297187) (not bm!684688) (not b!7453583) (not b!7453549) (not bm!684694) (not bm!684680) (not b!7453452) (not b!7453238) (not bm!684690) (not b!7453599) (not b!7453590) (not b!7453100) (not b!7453229) (not bm!684718) (not b!7453577) (not b!7452825) (not b!7453503) (not d!2297199) (not b!7453510) (not bm!684687) (not b!7453579) (not b!7452821) (not b!7453224) (not b!7453598) (not b!7453567) (not b!7453220) (not b!7453225) (not b!7453249) (not b!7453481) (not b!7453511) (not bm!684691) (not d!2297169) (not b!7453413) (not b!7453554) (not b!7453569) (not b!7453544) (not b!7453595) (not b!7453272) (not bm!684693))
(check-sat)
