; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!182878 () Bool)

(assert start!182878)

(declare-fun res!826230 () Bool)

(declare-fun e!1174733 () Bool)

(assert (=> start!182878 (=> (not res!826230) (not e!1174733))))

(declare-fun i!921 () Int)

(declare-datatypes ((B!1493 0))(
  ( (B!1494 (val!5694 Int)) )
))
(declare-datatypes ((List!20294 0))(
  ( (Nil!20224) (Cons!20224 (h!25625 B!1493) (t!171723 List!20294)) )
))
(declare-fun l!3005 () List!20294)

(get-info :version)

(assert (=> start!182878 (= res!826230 (and (>= i!921 0) (not ((_ is Nil!20224) l!3005)) (not (= i!921 0))))))

(assert (=> start!182878 e!1174733))

(assert (=> start!182878 true))

(declare-fun e!1174732 () Bool)

(assert (=> start!182878 e!1174732))

(declare-fun e!1174731 () Bool)

(assert (=> start!182878 e!1174731))

(declare-fun b!1838368 () Bool)

(declare-fun tp_is_empty!8241 () Bool)

(declare-fun tp!520075 () Bool)

(assert (=> b!1838368 (= e!1174731 (and tp_is_empty!8241 tp!520075))))

(declare-fun e!1174734 () Bool)

(declare-datatypes ((tuple2!19670 0))(
  ( (tuple2!19671 (_1!11237 List!20294) (_2!11237 List!20294)) )
))
(declare-fun lt!713519 () tuple2!19670)

(declare-fun b!1838366 () Bool)

(declare-fun acc!274 () List!20294)

(declare-fun splitAtIndexTr!16 (List!20294 Int List!20294) tuple2!19670)

(declare-fun ++!5495 (List!20294 List!20294) List!20294)

(assert (=> b!1838366 (= e!1174734 (= (splitAtIndexTr!16 l!3005 i!921 acc!274) (tuple2!19671 (++!5495 acc!274 (_1!11237 lt!713519)) (_2!11237 lt!713519))))))

(declare-fun splitAtIndex!18 (List!20294 Int) tuple2!19670)

(assert (=> b!1838366 (= lt!713519 (splitAtIndex!18 l!3005 i!921))))

(declare-fun b!1838365 () Bool)

(assert (=> b!1838365 (= e!1174733 (not e!1174734))))

(declare-fun res!826229 () Bool)

(assert (=> b!1838365 (=> res!826229 e!1174734)))

(declare-fun lt!713520 () tuple2!19670)

(declare-fun lt!713524 () List!20294)

(declare-fun lt!713522 () tuple2!19670)

(assert (=> b!1838365 (= res!826229 (not (= lt!713520 (tuple2!19671 lt!713524 (_2!11237 lt!713522)))))))

(declare-fun lt!713526 () List!20294)

(assert (=> b!1838365 (= lt!713526 lt!713524)))

(declare-fun lt!713518 () List!20294)

(assert (=> b!1838365 (= lt!713524 (++!5495 acc!274 (++!5495 lt!713518 (_1!11237 lt!713522))))))

(declare-datatypes ((Unit!34931 0))(
  ( (Unit!34932) )
))
(declare-fun lt!713521 () Unit!34931)

(declare-fun lemmaConcatAssociativity!1083 (List!20294 List!20294 List!20294) Unit!34931)

(assert (=> b!1838365 (= lt!713521 (lemmaConcatAssociativity!1083 acc!274 lt!713518 (_1!11237 lt!713522)))))

(assert (=> b!1838365 (= lt!713520 (tuple2!19671 lt!713526 (_2!11237 lt!713522)))))

(declare-fun lt!713523 () List!20294)

(assert (=> b!1838365 (= lt!713520 (splitAtIndexTr!16 (t!171723 l!3005) (- i!921 1) lt!713523))))

(assert (=> b!1838365 (= lt!713526 (++!5495 lt!713523 (_1!11237 lt!713522)))))

(assert (=> b!1838365 (= lt!713522 (splitAtIndex!18 (t!171723 l!3005) (- i!921 1)))))

(declare-fun lt!713525 () Unit!34931)

(declare-fun lemmaSplitAtIndexTrEqualsSplitAtIndex!12 (List!20294 Int List!20294) Unit!34931)

(assert (=> b!1838365 (= lt!713525 (lemmaSplitAtIndexTrEqualsSplitAtIndex!12 (t!171723 l!3005) (- i!921 1) lt!713523))))

(assert (=> b!1838365 (= lt!713523 (++!5495 acc!274 lt!713518))))

(assert (=> b!1838365 (= lt!713518 (Cons!20224 (h!25625 l!3005) Nil!20224))))

(declare-fun b!1838367 () Bool)

(declare-fun tp!520076 () Bool)

(assert (=> b!1838367 (= e!1174732 (and tp_is_empty!8241 tp!520076))))

(assert (= (and start!182878 res!826230) b!1838365))

(assert (= (and b!1838365 (not res!826229)) b!1838366))

(assert (= (and start!182878 ((_ is Cons!20224) l!3005)) b!1838367))

(assert (= (and start!182878 ((_ is Cons!20224) acc!274)) b!1838368))

(declare-fun m!2266131 () Bool)

(assert (=> b!1838366 m!2266131))

(declare-fun m!2266133 () Bool)

(assert (=> b!1838366 m!2266133))

(declare-fun m!2266135 () Bool)

(assert (=> b!1838366 m!2266135))

(declare-fun m!2266137 () Bool)

(assert (=> b!1838365 m!2266137))

(declare-fun m!2266139 () Bool)

(assert (=> b!1838365 m!2266139))

(declare-fun m!2266141 () Bool)

(assert (=> b!1838365 m!2266141))

(assert (=> b!1838365 m!2266141))

(declare-fun m!2266143 () Bool)

(assert (=> b!1838365 m!2266143))

(declare-fun m!2266145 () Bool)

(assert (=> b!1838365 m!2266145))

(declare-fun m!2266147 () Bool)

(assert (=> b!1838365 m!2266147))

(declare-fun m!2266149 () Bool)

(assert (=> b!1838365 m!2266149))

(declare-fun m!2266151 () Bool)

(assert (=> b!1838365 m!2266151))

(check-sat tp_is_empty!8241 (not b!1838365) (not b!1838366) (not b!1838368) (not b!1838367))
(check-sat)
(get-model)

(declare-fun e!1174740 () tuple2!19670)

(declare-fun b!1838380 () Bool)

(assert (=> b!1838380 (= e!1174740 (splitAtIndexTr!16 (t!171723 l!3005) (- i!921 1) (++!5495 acc!274 (Cons!20224 (h!25625 l!3005) Nil!20224))))))

(declare-fun b!1838378 () Bool)

(declare-fun e!1174739 () tuple2!19670)

(assert (=> b!1838378 (= e!1174739 e!1174740)))

(declare-fun c!299987 () Bool)

(assert (=> b!1838378 (= c!299987 (= i!921 0))))

(declare-fun b!1838377 () Bool)

(assert (=> b!1838377 (= e!1174739 (tuple2!19671 acc!274 Nil!20224))))

(declare-fun d!562115 () Bool)

(declare-fun c!299986 () Bool)

(assert (=> d!562115 (= c!299986 ((_ is Nil!20224) l!3005))))

(assert (=> d!562115 (= (splitAtIndexTr!16 l!3005 i!921 acc!274) e!1174739)))

(declare-fun b!1838379 () Bool)

(assert (=> b!1838379 (= e!1174740 (tuple2!19671 acc!274 l!3005))))

(assert (= (and d!562115 c!299986) b!1838377))

(assert (= (and d!562115 (not c!299986)) b!1838378))

(assert (= (and b!1838378 c!299987) b!1838379))

(assert (= (and b!1838378 (not c!299987)) b!1838380))

(declare-fun m!2266153 () Bool)

(assert (=> b!1838380 m!2266153))

(assert (=> b!1838380 m!2266153))

(declare-fun m!2266155 () Bool)

(assert (=> b!1838380 m!2266155))

(assert (=> b!1838366 d!562115))

(declare-fun b!1838402 () Bool)

(declare-fun e!1174752 () List!20294)

(assert (=> b!1838402 (= e!1174752 (Cons!20224 (h!25625 acc!274) (++!5495 (t!171723 acc!274) (_1!11237 lt!713519))))))

(declare-fun d!562119 () Bool)

(declare-fun e!1174751 () Bool)

(assert (=> d!562119 e!1174751))

(declare-fun res!826241 () Bool)

(assert (=> d!562119 (=> (not res!826241) (not e!1174751))))

(declare-fun lt!713532 () List!20294)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3013 (List!20294) (InoxSet B!1493))

(assert (=> d!562119 (= res!826241 (= (content!3013 lt!713532) ((_ map or) (content!3013 acc!274) (content!3013 (_1!11237 lt!713519)))))))

(assert (=> d!562119 (= lt!713532 e!1174752)))

(declare-fun c!299993 () Bool)

(assert (=> d!562119 (= c!299993 ((_ is Nil!20224) acc!274))))

(assert (=> d!562119 (= (++!5495 acc!274 (_1!11237 lt!713519)) lt!713532)))

(declare-fun b!1838401 () Bool)

(assert (=> b!1838401 (= e!1174752 (_1!11237 lt!713519))))

(declare-fun b!1838403 () Bool)

(declare-fun res!826242 () Bool)

(assert (=> b!1838403 (=> (not res!826242) (not e!1174751))))

(declare-fun size!16034 (List!20294) Int)

(assert (=> b!1838403 (= res!826242 (= (size!16034 lt!713532) (+ (size!16034 acc!274) (size!16034 (_1!11237 lt!713519)))))))

(declare-fun b!1838404 () Bool)

(assert (=> b!1838404 (= e!1174751 (or (not (= (_1!11237 lt!713519) Nil!20224)) (= lt!713532 acc!274)))))

(assert (= (and d!562119 c!299993) b!1838401))

(assert (= (and d!562119 (not c!299993)) b!1838402))

(assert (= (and d!562119 res!826241) b!1838403))

(assert (= (and b!1838403 res!826242) b!1838404))

(declare-fun m!2266171 () Bool)

(assert (=> b!1838402 m!2266171))

(declare-fun m!2266173 () Bool)

(assert (=> d!562119 m!2266173))

(declare-fun m!2266175 () Bool)

(assert (=> d!562119 m!2266175))

(declare-fun m!2266177 () Bool)

(assert (=> d!562119 m!2266177))

(declare-fun m!2266179 () Bool)

(assert (=> b!1838403 m!2266179))

(declare-fun m!2266181 () Bool)

(assert (=> b!1838403 m!2266181))

(declare-fun m!2266183 () Bool)

(assert (=> b!1838403 m!2266183))

(assert (=> b!1838366 d!562119))

(declare-fun b!1838437 () Bool)

(declare-fun e!1174769 () tuple2!19670)

(declare-fun e!1174770 () tuple2!19670)

(assert (=> b!1838437 (= e!1174769 e!1174770)))

(declare-fun c!300006 () Bool)

(assert (=> b!1838437 (= c!300006 (<= i!921 0))))

(declare-fun b!1838438 () Bool)

(assert (=> b!1838438 (= e!1174769 (tuple2!19671 Nil!20224 Nil!20224))))

(declare-fun b!1838439 () Bool)

(declare-fun lt!713543 () tuple2!19670)

(assert (=> b!1838439 (= lt!713543 (splitAtIndex!18 (t!171723 l!3005) (- i!921 1)))))

(assert (=> b!1838439 (= e!1174770 (tuple2!19671 (Cons!20224 (h!25625 l!3005) (_1!11237 lt!713543)) (_2!11237 lt!713543)))))

(declare-fun lt!713542 () tuple2!19670)

(declare-fun b!1838440 () Bool)

(declare-fun e!1174771 () Bool)

(declare-fun drop!978 (List!20294 Int) List!20294)

(assert (=> b!1838440 (= e!1174771 (= (_2!11237 lt!713542) (drop!978 l!3005 i!921)))))

(declare-fun b!1838441 () Bool)

(assert (=> b!1838441 (= e!1174770 (tuple2!19671 Nil!20224 l!3005))))

(declare-fun d!562123 () Bool)

(assert (=> d!562123 e!1174771))

(declare-fun res!826251 () Bool)

(assert (=> d!562123 (=> (not res!826251) (not e!1174771))))

(assert (=> d!562123 (= res!826251 (= (++!5495 (_1!11237 lt!713542) (_2!11237 lt!713542)) l!3005))))

(assert (=> d!562123 (= lt!713542 e!1174769)))

(declare-fun c!300007 () Bool)

(assert (=> d!562123 (= c!300007 ((_ is Nil!20224) l!3005))))

(assert (=> d!562123 (= (splitAtIndex!18 l!3005 i!921) lt!713542)))

(declare-fun b!1838442 () Bool)

(declare-fun res!826252 () Bool)

(assert (=> b!1838442 (=> (not res!826252) (not e!1174771))))

(declare-fun take!154 (List!20294 Int) List!20294)

(assert (=> b!1838442 (= res!826252 (= (_1!11237 lt!713542) (take!154 l!3005 i!921)))))

(assert (= (and d!562123 c!300007) b!1838438))

(assert (= (and d!562123 (not c!300007)) b!1838437))

(assert (= (and b!1838437 c!300006) b!1838441))

(assert (= (and b!1838437 (not c!300006)) b!1838439))

(assert (= (and d!562123 res!826251) b!1838442))

(assert (= (and b!1838442 res!826252) b!1838440))

(assert (=> b!1838439 m!2266151))

(declare-fun m!2266213 () Bool)

(assert (=> b!1838440 m!2266213))

(declare-fun m!2266215 () Bool)

(assert (=> d!562123 m!2266215))

(declare-fun m!2266217 () Bool)

(assert (=> b!1838442 m!2266217))

(assert (=> b!1838366 d!562123))

(declare-fun b!1838444 () Bool)

(declare-fun e!1174773 () List!20294)

(assert (=> b!1838444 (= e!1174773 (Cons!20224 (h!25625 lt!713518) (++!5495 (t!171723 lt!713518) (_1!11237 lt!713522))))))

(declare-fun d!562133 () Bool)

(declare-fun e!1174772 () Bool)

(assert (=> d!562133 e!1174772))

(declare-fun res!826253 () Bool)

(assert (=> d!562133 (=> (not res!826253) (not e!1174772))))

(declare-fun lt!713544 () List!20294)

(assert (=> d!562133 (= res!826253 (= (content!3013 lt!713544) ((_ map or) (content!3013 lt!713518) (content!3013 (_1!11237 lt!713522)))))))

(assert (=> d!562133 (= lt!713544 e!1174773)))

(declare-fun c!300008 () Bool)

(assert (=> d!562133 (= c!300008 ((_ is Nil!20224) lt!713518))))

(assert (=> d!562133 (= (++!5495 lt!713518 (_1!11237 lt!713522)) lt!713544)))

(declare-fun b!1838443 () Bool)

(assert (=> b!1838443 (= e!1174773 (_1!11237 lt!713522))))

(declare-fun b!1838445 () Bool)

(declare-fun res!826254 () Bool)

(assert (=> b!1838445 (=> (not res!826254) (not e!1174772))))

(assert (=> b!1838445 (= res!826254 (= (size!16034 lt!713544) (+ (size!16034 lt!713518) (size!16034 (_1!11237 lt!713522)))))))

(declare-fun b!1838446 () Bool)

(assert (=> b!1838446 (= e!1174772 (or (not (= (_1!11237 lt!713522) Nil!20224)) (= lt!713544 lt!713518)))))

(assert (= (and d!562133 c!300008) b!1838443))

(assert (= (and d!562133 (not c!300008)) b!1838444))

(assert (= (and d!562133 res!826253) b!1838445))

(assert (= (and b!1838445 res!826254) b!1838446))

(declare-fun m!2266219 () Bool)

(assert (=> b!1838444 m!2266219))

(declare-fun m!2266221 () Bool)

(assert (=> d!562133 m!2266221))

(declare-fun m!2266223 () Bool)

(assert (=> d!562133 m!2266223))

(declare-fun m!2266225 () Bool)

(assert (=> d!562133 m!2266225))

(declare-fun m!2266227 () Bool)

(assert (=> b!1838445 m!2266227))

(declare-fun m!2266229 () Bool)

(assert (=> b!1838445 m!2266229))

(declare-fun m!2266231 () Bool)

(assert (=> b!1838445 m!2266231))

(assert (=> b!1838365 d!562133))

(declare-fun e!1174775 () List!20294)

(declare-fun b!1838448 () Bool)

(assert (=> b!1838448 (= e!1174775 (Cons!20224 (h!25625 acc!274) (++!5495 (t!171723 acc!274) (++!5495 lt!713518 (_1!11237 lt!713522)))))))

(declare-fun d!562135 () Bool)

(declare-fun e!1174774 () Bool)

(assert (=> d!562135 e!1174774))

(declare-fun res!826255 () Bool)

(assert (=> d!562135 (=> (not res!826255) (not e!1174774))))

(declare-fun lt!713545 () List!20294)

(assert (=> d!562135 (= res!826255 (= (content!3013 lt!713545) ((_ map or) (content!3013 acc!274) (content!3013 (++!5495 lt!713518 (_1!11237 lt!713522))))))))

(assert (=> d!562135 (= lt!713545 e!1174775)))

(declare-fun c!300009 () Bool)

(assert (=> d!562135 (= c!300009 ((_ is Nil!20224) acc!274))))

(assert (=> d!562135 (= (++!5495 acc!274 (++!5495 lt!713518 (_1!11237 lt!713522))) lt!713545)))

(declare-fun b!1838447 () Bool)

(assert (=> b!1838447 (= e!1174775 (++!5495 lt!713518 (_1!11237 lt!713522)))))

(declare-fun b!1838449 () Bool)

(declare-fun res!826256 () Bool)

(assert (=> b!1838449 (=> (not res!826256) (not e!1174774))))

(assert (=> b!1838449 (= res!826256 (= (size!16034 lt!713545) (+ (size!16034 acc!274) (size!16034 (++!5495 lt!713518 (_1!11237 lt!713522))))))))

(declare-fun b!1838450 () Bool)

(assert (=> b!1838450 (= e!1174774 (or (not (= (++!5495 lt!713518 (_1!11237 lt!713522)) Nil!20224)) (= lt!713545 acc!274)))))

(assert (= (and d!562135 c!300009) b!1838447))

(assert (= (and d!562135 (not c!300009)) b!1838448))

(assert (= (and d!562135 res!826255) b!1838449))

(assert (= (and b!1838449 res!826256) b!1838450))

(assert (=> b!1838448 m!2266141))

(declare-fun m!2266233 () Bool)

(assert (=> b!1838448 m!2266233))

(declare-fun m!2266235 () Bool)

(assert (=> d!562135 m!2266235))

(assert (=> d!562135 m!2266175))

(assert (=> d!562135 m!2266141))

(declare-fun m!2266237 () Bool)

(assert (=> d!562135 m!2266237))

(declare-fun m!2266239 () Bool)

(assert (=> b!1838449 m!2266239))

(assert (=> b!1838449 m!2266181))

(assert (=> b!1838449 m!2266141))

(declare-fun m!2266241 () Bool)

(assert (=> b!1838449 m!2266241))

(assert (=> b!1838365 d!562135))

(declare-fun d!562137 () Bool)

(assert (=> d!562137 (= (++!5495 (++!5495 acc!274 lt!713518) (_1!11237 lt!713522)) (++!5495 acc!274 (++!5495 lt!713518 (_1!11237 lt!713522))))))

(declare-fun lt!713550 () Unit!34931)

(declare-fun choose!11562 (List!20294 List!20294 List!20294) Unit!34931)

(assert (=> d!562137 (= lt!713550 (choose!11562 acc!274 lt!713518 (_1!11237 lt!713522)))))

(assert (=> d!562137 (= (lemmaConcatAssociativity!1083 acc!274 lt!713518 (_1!11237 lt!713522)) lt!713550)))

(declare-fun bs!408513 () Bool)

(assert (= bs!408513 d!562137))

(assert (=> bs!408513 m!2266145))

(declare-fun m!2266243 () Bool)

(assert (=> bs!408513 m!2266243))

(assert (=> bs!408513 m!2266141))

(assert (=> bs!408513 m!2266145))

(declare-fun m!2266245 () Bool)

(assert (=> bs!408513 m!2266245))

(assert (=> bs!408513 m!2266141))

(assert (=> bs!408513 m!2266143))

(assert (=> b!1838365 d!562137))

(declare-fun b!1838460 () Bool)

(declare-fun e!1174781 () List!20294)

(assert (=> b!1838460 (= e!1174781 (Cons!20224 (h!25625 acc!274) (++!5495 (t!171723 acc!274) lt!713518)))))

(declare-fun d!562139 () Bool)

(declare-fun e!1174780 () Bool)

(assert (=> d!562139 e!1174780))

(declare-fun res!826257 () Bool)

(assert (=> d!562139 (=> (not res!826257) (not e!1174780))))

(declare-fun lt!713553 () List!20294)

(assert (=> d!562139 (= res!826257 (= (content!3013 lt!713553) ((_ map or) (content!3013 acc!274) (content!3013 lt!713518))))))

(assert (=> d!562139 (= lt!713553 e!1174781)))

(declare-fun c!300014 () Bool)

(assert (=> d!562139 (= c!300014 ((_ is Nil!20224) acc!274))))

(assert (=> d!562139 (= (++!5495 acc!274 lt!713518) lt!713553)))

(declare-fun b!1838459 () Bool)

(assert (=> b!1838459 (= e!1174781 lt!713518)))

(declare-fun b!1838461 () Bool)

(declare-fun res!826258 () Bool)

(assert (=> b!1838461 (=> (not res!826258) (not e!1174780))))

(assert (=> b!1838461 (= res!826258 (= (size!16034 lt!713553) (+ (size!16034 acc!274) (size!16034 lt!713518))))))

(declare-fun b!1838462 () Bool)

(assert (=> b!1838462 (= e!1174780 (or (not (= lt!713518 Nil!20224)) (= lt!713553 acc!274)))))

(assert (= (and d!562139 c!300014) b!1838459))

(assert (= (and d!562139 (not c!300014)) b!1838460))

(assert (= (and d!562139 res!826257) b!1838461))

(assert (= (and b!1838461 res!826258) b!1838462))

(declare-fun m!2266247 () Bool)

(assert (=> b!1838460 m!2266247))

(declare-fun m!2266249 () Bool)

(assert (=> d!562139 m!2266249))

(assert (=> d!562139 m!2266175))

(assert (=> d!562139 m!2266223))

(declare-fun m!2266251 () Bool)

(assert (=> b!1838461 m!2266251))

(assert (=> b!1838461 m!2266181))

(assert (=> b!1838461 m!2266229))

(assert (=> b!1838365 d!562139))

(declare-fun b!1838467 () Bool)

(declare-fun e!1174784 () tuple2!19670)

(declare-fun e!1174785 () tuple2!19670)

(assert (=> b!1838467 (= e!1174784 e!1174785)))

(declare-fun c!300015 () Bool)

(assert (=> b!1838467 (= c!300015 (<= (- i!921 1) 0))))

(declare-fun b!1838468 () Bool)

(assert (=> b!1838468 (= e!1174784 (tuple2!19671 Nil!20224 Nil!20224))))

(declare-fun b!1838469 () Bool)

(declare-fun lt!713555 () tuple2!19670)

(assert (=> b!1838469 (= lt!713555 (splitAtIndex!18 (t!171723 (t!171723 l!3005)) (- (- i!921 1) 1)))))

(assert (=> b!1838469 (= e!1174785 (tuple2!19671 (Cons!20224 (h!25625 (t!171723 l!3005)) (_1!11237 lt!713555)) (_2!11237 lt!713555)))))

(declare-fun lt!713554 () tuple2!19670)

(declare-fun b!1838470 () Bool)

(declare-fun e!1174786 () Bool)

(assert (=> b!1838470 (= e!1174786 (= (_2!11237 lt!713554) (drop!978 (t!171723 l!3005) (- i!921 1))))))

(declare-fun b!1838471 () Bool)

(assert (=> b!1838471 (= e!1174785 (tuple2!19671 Nil!20224 (t!171723 l!3005)))))

(declare-fun d!562141 () Bool)

(assert (=> d!562141 e!1174786))

(declare-fun res!826263 () Bool)

(assert (=> d!562141 (=> (not res!826263) (not e!1174786))))

(assert (=> d!562141 (= res!826263 (= (++!5495 (_1!11237 lt!713554) (_2!11237 lt!713554)) (t!171723 l!3005)))))

(assert (=> d!562141 (= lt!713554 e!1174784)))

(declare-fun c!300016 () Bool)

(assert (=> d!562141 (= c!300016 ((_ is Nil!20224) (t!171723 l!3005)))))

(assert (=> d!562141 (= (splitAtIndex!18 (t!171723 l!3005) (- i!921 1)) lt!713554)))

(declare-fun b!1838472 () Bool)

(declare-fun res!826264 () Bool)

(assert (=> b!1838472 (=> (not res!826264) (not e!1174786))))

(assert (=> b!1838472 (= res!826264 (= (_1!11237 lt!713554) (take!154 (t!171723 l!3005) (- i!921 1))))))

(assert (= (and d!562141 c!300016) b!1838468))

(assert (= (and d!562141 (not c!300016)) b!1838467))

(assert (= (and b!1838467 c!300015) b!1838471))

(assert (= (and b!1838467 (not c!300015)) b!1838469))

(assert (= (and d!562141 res!826263) b!1838472))

(assert (= (and b!1838472 res!826264) b!1838470))

(declare-fun m!2266253 () Bool)

(assert (=> b!1838469 m!2266253))

(declare-fun m!2266255 () Bool)

(assert (=> b!1838470 m!2266255))

(declare-fun m!2266257 () Bool)

(assert (=> d!562141 m!2266257))

(declare-fun m!2266259 () Bool)

(assert (=> b!1838472 m!2266259))

(assert (=> b!1838365 d!562141))

(declare-fun d!562143 () Bool)

(assert (=> d!562143 (= (splitAtIndexTr!16 (t!171723 l!3005) (- i!921 1) lt!713523) (tuple2!19671 (++!5495 lt!713523 (_1!11237 (splitAtIndex!18 (t!171723 l!3005) (- i!921 1)))) (_2!11237 (splitAtIndex!18 (t!171723 l!3005) (- i!921 1)))))))

(declare-fun lt!713564 () Unit!34931)

(declare-fun choose!11564 (List!20294 Int List!20294) Unit!34931)

(assert (=> d!562143 (= lt!713564 (choose!11564 (t!171723 l!3005) (- i!921 1) lt!713523))))

(assert (=> d!562143 (>= (- i!921 1) 0)))

(assert (=> d!562143 (= (lemmaSplitAtIndexTrEqualsSplitAtIndex!12 (t!171723 l!3005) (- i!921 1) lt!713523) lt!713564)))

(declare-fun bs!408515 () Bool)

(assert (= bs!408515 d!562143))

(assert (=> bs!408515 m!2266149))

(assert (=> bs!408515 m!2266151))

(declare-fun m!2266273 () Bool)

(assert (=> bs!408515 m!2266273))

(declare-fun m!2266275 () Bool)

(assert (=> bs!408515 m!2266275))

(assert (=> b!1838365 d!562143))

(declare-fun b!1838484 () Bool)

(declare-fun e!1174793 () List!20294)

(assert (=> b!1838484 (= e!1174793 (Cons!20224 (h!25625 lt!713523) (++!5495 (t!171723 lt!713523) (_1!11237 lt!713522))))))

(declare-fun d!562149 () Bool)

(declare-fun e!1174792 () Bool)

(assert (=> d!562149 e!1174792))

(declare-fun res!826269 () Bool)

(assert (=> d!562149 (=> (not res!826269) (not e!1174792))))

(declare-fun lt!713565 () List!20294)

(assert (=> d!562149 (= res!826269 (= (content!3013 lt!713565) ((_ map or) (content!3013 lt!713523) (content!3013 (_1!11237 lt!713522)))))))

(assert (=> d!562149 (= lt!713565 e!1174793)))

(declare-fun c!300020 () Bool)

(assert (=> d!562149 (= c!300020 ((_ is Nil!20224) lt!713523))))

(assert (=> d!562149 (= (++!5495 lt!713523 (_1!11237 lt!713522)) lt!713565)))

(declare-fun b!1838483 () Bool)

(assert (=> b!1838483 (= e!1174793 (_1!11237 lt!713522))))

(declare-fun b!1838485 () Bool)

(declare-fun res!826270 () Bool)

(assert (=> b!1838485 (=> (not res!826270) (not e!1174792))))

(assert (=> b!1838485 (= res!826270 (= (size!16034 lt!713565) (+ (size!16034 lt!713523) (size!16034 (_1!11237 lt!713522)))))))

(declare-fun b!1838486 () Bool)

(assert (=> b!1838486 (= e!1174792 (or (not (= (_1!11237 lt!713522) Nil!20224)) (= lt!713565 lt!713523)))))

(assert (= (and d!562149 c!300020) b!1838483))

(assert (= (and d!562149 (not c!300020)) b!1838484))

(assert (= (and d!562149 res!826269) b!1838485))

(assert (= (and b!1838485 res!826270) b!1838486))

(declare-fun m!2266287 () Bool)

(assert (=> b!1838484 m!2266287))

(declare-fun m!2266290 () Bool)

(assert (=> d!562149 m!2266290))

(declare-fun m!2266293 () Bool)

(assert (=> d!562149 m!2266293))

(assert (=> d!562149 m!2266225))

(declare-fun m!2266295 () Bool)

(assert (=> b!1838485 m!2266295))

(declare-fun m!2266297 () Bool)

(assert (=> b!1838485 m!2266297))

(assert (=> b!1838485 m!2266231))

(assert (=> b!1838365 d!562149))

(declare-fun e!1174799 () tuple2!19670)

(declare-fun b!1838498 () Bool)

(assert (=> b!1838498 (= e!1174799 (splitAtIndexTr!16 (t!171723 (t!171723 l!3005)) (- (- i!921 1) 1) (++!5495 lt!713523 (Cons!20224 (h!25625 (t!171723 l!3005)) Nil!20224))))))

(declare-fun b!1838496 () Bool)

(declare-fun e!1174798 () tuple2!19670)

(assert (=> b!1838496 (= e!1174798 e!1174799)))

(declare-fun c!300025 () Bool)

(assert (=> b!1838496 (= c!300025 (= (- i!921 1) 0))))

(declare-fun b!1838495 () Bool)

(assert (=> b!1838495 (= e!1174798 (tuple2!19671 lt!713523 Nil!20224))))

(declare-fun d!562155 () Bool)

(declare-fun c!300024 () Bool)

(assert (=> d!562155 (= c!300024 ((_ is Nil!20224) (t!171723 l!3005)))))

(assert (=> d!562155 (= (splitAtIndexTr!16 (t!171723 l!3005) (- i!921 1) lt!713523) e!1174798)))

(declare-fun b!1838497 () Bool)

(assert (=> b!1838497 (= e!1174799 (tuple2!19671 lt!713523 (t!171723 l!3005)))))

(assert (= (and d!562155 c!300024) b!1838495))

(assert (= (and d!562155 (not c!300024)) b!1838496))

(assert (= (and b!1838496 c!300025) b!1838497))

(assert (= (and b!1838496 (not c!300025)) b!1838498))

(declare-fun m!2266307 () Bool)

(assert (=> b!1838498 m!2266307))

(assert (=> b!1838498 m!2266307))

(declare-fun m!2266313 () Bool)

(assert (=> b!1838498 m!2266313))

(assert (=> b!1838365 d!562155))

(declare-fun b!1838509 () Bool)

(declare-fun e!1174805 () Bool)

(declare-fun tp!520079 () Bool)

(assert (=> b!1838509 (= e!1174805 (and tp_is_empty!8241 tp!520079))))

(assert (=> b!1838368 (= tp!520075 e!1174805)))

(assert (= (and b!1838368 ((_ is Cons!20224) (t!171723 acc!274))) b!1838509))

(declare-fun b!1838514 () Bool)

(declare-fun e!1174808 () Bool)

(declare-fun tp!520082 () Bool)

(assert (=> b!1838514 (= e!1174808 (and tp_is_empty!8241 tp!520082))))

(assert (=> b!1838367 (= tp!520076 e!1174808)))

(assert (= (and b!1838367 ((_ is Cons!20224) (t!171723 l!3005))) b!1838514))

(check-sat (not b!1838403) (not b!1838439) (not b!1838402) (not b!1838498) (not d!562143) (not b!1838514) (not b!1838442) (not d!562123) (not b!1838461) (not b!1838440) (not d!562135) (not d!562133) (not b!1838484) (not b!1838469) (not b!1838472) (not b!1838460) (not b!1838449) (not d!562119) (not b!1838444) (not b!1838509) tp_is_empty!8241 (not b!1838485) (not d!562141) (not b!1838380) (not b!1838445) (not d!562137) (not d!562149) (not d!562139) (not b!1838448) (not b!1838470))
(check-sat)
(get-model)

(declare-fun b!1838518 () Bool)

(declare-fun e!1174812 () List!20294)

(assert (=> b!1838518 (= e!1174812 (Cons!20224 (h!25625 (t!171723 acc!274)) (++!5495 (t!171723 (t!171723 acc!274)) lt!713518)))))

(declare-fun d!562159 () Bool)

(declare-fun e!1174811 () Bool)

(assert (=> d!562159 e!1174811))

(declare-fun res!826275 () Bool)

(assert (=> d!562159 (=> (not res!826275) (not e!1174811))))

(declare-fun lt!713569 () List!20294)

(assert (=> d!562159 (= res!826275 (= (content!3013 lt!713569) ((_ map or) (content!3013 (t!171723 acc!274)) (content!3013 lt!713518))))))

(assert (=> d!562159 (= lt!713569 e!1174812)))

(declare-fun c!300028 () Bool)

(assert (=> d!562159 (= c!300028 ((_ is Nil!20224) (t!171723 acc!274)))))

(assert (=> d!562159 (= (++!5495 (t!171723 acc!274) lt!713518) lt!713569)))

(declare-fun b!1838517 () Bool)

(assert (=> b!1838517 (= e!1174812 lt!713518)))

(declare-fun b!1838519 () Bool)

(declare-fun res!826276 () Bool)

(assert (=> b!1838519 (=> (not res!826276) (not e!1174811))))

(assert (=> b!1838519 (= res!826276 (= (size!16034 lt!713569) (+ (size!16034 (t!171723 acc!274)) (size!16034 lt!713518))))))

(declare-fun b!1838520 () Bool)

(assert (=> b!1838520 (= e!1174811 (or (not (= lt!713518 Nil!20224)) (= lt!713569 (t!171723 acc!274))))))

(assert (= (and d!562159 c!300028) b!1838517))

(assert (= (and d!562159 (not c!300028)) b!1838518))

(assert (= (and d!562159 res!826275) b!1838519))

(assert (= (and b!1838519 res!826276) b!1838520))

(declare-fun m!2266321 () Bool)

(assert (=> b!1838518 m!2266321))

(declare-fun m!2266323 () Bool)

(assert (=> d!562159 m!2266323))

(declare-fun m!2266325 () Bool)

(assert (=> d!562159 m!2266325))

(assert (=> d!562159 m!2266223))

(declare-fun m!2266327 () Bool)

(assert (=> b!1838519 m!2266327))

(declare-fun m!2266329 () Bool)

(assert (=> b!1838519 m!2266329))

(assert (=> b!1838519 m!2266229))

(assert (=> b!1838460 d!562159))

(declare-fun d!562161 () Bool)

(declare-fun lt!713572 () Int)

(assert (=> d!562161 (>= lt!713572 0)))

(declare-fun e!1174815 () Int)

(assert (=> d!562161 (= lt!713572 e!1174815)))

(declare-fun c!300031 () Bool)

(assert (=> d!562161 (= c!300031 ((_ is Nil!20224) lt!713544))))

(assert (=> d!562161 (= (size!16034 lt!713544) lt!713572)))

(declare-fun b!1838525 () Bool)

(assert (=> b!1838525 (= e!1174815 0)))

(declare-fun b!1838526 () Bool)

(assert (=> b!1838526 (= e!1174815 (+ 1 (size!16034 (t!171723 lt!713544))))))

(assert (= (and d!562161 c!300031) b!1838525))

(assert (= (and d!562161 (not c!300031)) b!1838526))

(declare-fun m!2266331 () Bool)

(assert (=> b!1838526 m!2266331))

(assert (=> b!1838445 d!562161))

(declare-fun d!562163 () Bool)

(declare-fun lt!713573 () Int)

(assert (=> d!562163 (>= lt!713573 0)))

(declare-fun e!1174816 () Int)

(assert (=> d!562163 (= lt!713573 e!1174816)))

(declare-fun c!300032 () Bool)

(assert (=> d!562163 (= c!300032 ((_ is Nil!20224) lt!713518))))

(assert (=> d!562163 (= (size!16034 lt!713518) lt!713573)))

(declare-fun b!1838527 () Bool)

(assert (=> b!1838527 (= e!1174816 0)))

(declare-fun b!1838528 () Bool)

(assert (=> b!1838528 (= e!1174816 (+ 1 (size!16034 (t!171723 lt!713518))))))

(assert (= (and d!562163 c!300032) b!1838527))

(assert (= (and d!562163 (not c!300032)) b!1838528))

(declare-fun m!2266333 () Bool)

(assert (=> b!1838528 m!2266333))

(assert (=> b!1838445 d!562163))

(declare-fun d!562165 () Bool)

(declare-fun lt!713574 () Int)

(assert (=> d!562165 (>= lt!713574 0)))

(declare-fun e!1174817 () Int)

(assert (=> d!562165 (= lt!713574 e!1174817)))

(declare-fun c!300033 () Bool)

(assert (=> d!562165 (= c!300033 ((_ is Nil!20224) (_1!11237 lt!713522)))))

(assert (=> d!562165 (= (size!16034 (_1!11237 lt!713522)) lt!713574)))

(declare-fun b!1838529 () Bool)

(assert (=> b!1838529 (= e!1174817 0)))

(declare-fun b!1838530 () Bool)

(assert (=> b!1838530 (= e!1174817 (+ 1 (size!16034 (t!171723 (_1!11237 lt!713522)))))))

(assert (= (and d!562165 c!300033) b!1838529))

(assert (= (and d!562165 (not c!300033)) b!1838530))

(declare-fun m!2266335 () Bool)

(assert (=> b!1838530 m!2266335))

(assert (=> b!1838445 d!562165))

(declare-fun b!1838545 () Bool)

(declare-fun e!1174827 () Int)

(assert (=> b!1838545 (= e!1174827 (size!16034 l!3005))))

(declare-fun b!1838546 () Bool)

(declare-fun e!1174826 () List!20294)

(assert (=> b!1838546 (= e!1174826 (Cons!20224 (h!25625 l!3005) (take!154 (t!171723 l!3005) (- i!921 1))))))

(declare-fun b!1838548 () Bool)

(declare-fun e!1174828 () Bool)

(declare-fun lt!713577 () List!20294)

(declare-fun e!1174829 () Int)

(assert (=> b!1838548 (= e!1174828 (= (size!16034 lt!713577) e!1174829))))

(declare-fun c!300042 () Bool)

(assert (=> b!1838548 (= c!300042 (<= i!921 0))))

(declare-fun b!1838549 () Bool)

(assert (=> b!1838549 (= e!1174826 Nil!20224)))

(declare-fun b!1838550 () Bool)

(assert (=> b!1838550 (= e!1174829 e!1174827)))

(declare-fun c!300040 () Bool)

(assert (=> b!1838550 (= c!300040 (>= i!921 (size!16034 l!3005)))))

(declare-fun b!1838551 () Bool)

(assert (=> b!1838551 (= e!1174829 0)))

(declare-fun b!1838547 () Bool)

(assert (=> b!1838547 (= e!1174827 i!921)))

(declare-fun d!562167 () Bool)

(assert (=> d!562167 e!1174828))

(declare-fun res!826279 () Bool)

(assert (=> d!562167 (=> (not res!826279) (not e!1174828))))

(assert (=> d!562167 (= res!826279 (= ((_ map implies) (content!3013 lt!713577) (content!3013 l!3005)) ((as const (InoxSet B!1493)) true)))))

(assert (=> d!562167 (= lt!713577 e!1174826)))

(declare-fun c!300041 () Bool)

(assert (=> d!562167 (= c!300041 (or ((_ is Nil!20224) l!3005) (<= i!921 0)))))

(assert (=> d!562167 (= (take!154 l!3005 i!921) lt!713577)))

(assert (= (and d!562167 c!300041) b!1838549))

(assert (= (and d!562167 (not c!300041)) b!1838546))

(assert (= (and d!562167 res!826279) b!1838548))

(assert (= (and b!1838548 c!300042) b!1838551))

(assert (= (and b!1838548 (not c!300042)) b!1838550))

(assert (= (and b!1838550 c!300040) b!1838545))

(assert (= (and b!1838550 (not c!300040)) b!1838547))

(declare-fun m!2266337 () Bool)

(assert (=> b!1838550 m!2266337))

(assert (=> b!1838546 m!2266259))

(declare-fun m!2266339 () Bool)

(assert (=> b!1838548 m!2266339))

(declare-fun m!2266341 () Bool)

(assert (=> d!562167 m!2266341))

(declare-fun m!2266343 () Bool)

(assert (=> d!562167 m!2266343))

(assert (=> b!1838545 m!2266337))

(assert (=> b!1838442 d!562167))

(declare-fun d!562169 () Bool)

(declare-fun lt!713578 () Int)

(assert (=> d!562169 (>= lt!713578 0)))

(declare-fun e!1174830 () Int)

(assert (=> d!562169 (= lt!713578 e!1174830)))

(declare-fun c!300043 () Bool)

(assert (=> d!562169 (= c!300043 ((_ is Nil!20224) lt!713553))))

(assert (=> d!562169 (= (size!16034 lt!713553) lt!713578)))

(declare-fun b!1838552 () Bool)

(assert (=> b!1838552 (= e!1174830 0)))

(declare-fun b!1838553 () Bool)

(assert (=> b!1838553 (= e!1174830 (+ 1 (size!16034 (t!171723 lt!713553))))))

(assert (= (and d!562169 c!300043) b!1838552))

(assert (= (and d!562169 (not c!300043)) b!1838553))

(declare-fun m!2266345 () Bool)

(assert (=> b!1838553 m!2266345))

(assert (=> b!1838461 d!562169))

(declare-fun d!562171 () Bool)

(declare-fun lt!713579 () Int)

(assert (=> d!562171 (>= lt!713579 0)))

(declare-fun e!1174831 () Int)

(assert (=> d!562171 (= lt!713579 e!1174831)))

(declare-fun c!300044 () Bool)

(assert (=> d!562171 (= c!300044 ((_ is Nil!20224) acc!274))))

(assert (=> d!562171 (= (size!16034 acc!274) lt!713579)))

(declare-fun b!1838554 () Bool)

(assert (=> b!1838554 (= e!1174831 0)))

(declare-fun b!1838555 () Bool)

(assert (=> b!1838555 (= e!1174831 (+ 1 (size!16034 (t!171723 acc!274))))))

(assert (= (and d!562171 c!300044) b!1838554))

(assert (= (and d!562171 (not c!300044)) b!1838555))

(assert (=> b!1838555 m!2266329))

(assert (=> b!1838461 d!562171))

(assert (=> b!1838461 d!562163))

(declare-fun b!1838574 () Bool)

(declare-fun e!1174846 () List!20294)

(declare-fun e!1174843 () List!20294)

(assert (=> b!1838574 (= e!1174846 e!1174843)))

(declare-fun c!300053 () Bool)

(assert (=> b!1838574 (= c!300053 (<= i!921 0))))

(declare-fun b!1838575 () Bool)

(assert (=> b!1838575 (= e!1174843 (drop!978 (t!171723 l!3005) (- i!921 1)))))

(declare-fun b!1838576 () Bool)

(declare-fun e!1174844 () Int)

(assert (=> b!1838576 (= e!1174844 0)))

(declare-fun b!1838577 () Bool)

(declare-fun e!1174845 () Int)

(assert (=> b!1838577 (= e!1174845 e!1174844)))

(declare-fun c!300055 () Bool)

(declare-fun call!115075 () Int)

(assert (=> b!1838577 (= c!300055 (>= i!921 call!115075))))

(declare-fun b!1838578 () Bool)

(assert (=> b!1838578 (= e!1174846 Nil!20224)))

(declare-fun b!1838579 () Bool)

(assert (=> b!1838579 (= e!1174844 (- call!115075 i!921))))

(declare-fun d!562173 () Bool)

(declare-fun e!1174842 () Bool)

(assert (=> d!562173 e!1174842))

(declare-fun res!826282 () Bool)

(assert (=> d!562173 (=> (not res!826282) (not e!1174842))))

(declare-fun lt!713582 () List!20294)

(assert (=> d!562173 (= res!826282 (= ((_ map implies) (content!3013 lt!713582) (content!3013 l!3005)) ((as const (InoxSet B!1493)) true)))))

(assert (=> d!562173 (= lt!713582 e!1174846)))

(declare-fun c!300056 () Bool)

(assert (=> d!562173 (= c!300056 ((_ is Nil!20224) l!3005))))

(assert (=> d!562173 (= (drop!978 l!3005 i!921) lt!713582)))

(declare-fun bm!115070 () Bool)

(assert (=> bm!115070 (= call!115075 (size!16034 l!3005))))

(declare-fun b!1838580 () Bool)

(assert (=> b!1838580 (= e!1174843 l!3005)))

(declare-fun b!1838581 () Bool)

(assert (=> b!1838581 (= e!1174845 call!115075)))

(declare-fun b!1838582 () Bool)

(assert (=> b!1838582 (= e!1174842 (= (size!16034 lt!713582) e!1174845))))

(declare-fun c!300054 () Bool)

(assert (=> b!1838582 (= c!300054 (<= i!921 0))))

(assert (= (and d!562173 c!300056) b!1838578))

(assert (= (and d!562173 (not c!300056)) b!1838574))

(assert (= (and b!1838574 c!300053) b!1838580))

(assert (= (and b!1838574 (not c!300053)) b!1838575))

(assert (= (and d!562173 res!826282) b!1838582))

(assert (= (and b!1838582 c!300054) b!1838581))

(assert (= (and b!1838582 (not c!300054)) b!1838577))

(assert (= (and b!1838577 c!300055) b!1838576))

(assert (= (and b!1838577 (not c!300055)) b!1838579))

(assert (= (or b!1838581 b!1838577 b!1838579) bm!115070))

(assert (=> b!1838575 m!2266255))

(declare-fun m!2266347 () Bool)

(assert (=> d!562173 m!2266347))

(assert (=> d!562173 m!2266343))

(assert (=> bm!115070 m!2266337))

(declare-fun m!2266349 () Bool)

(assert (=> b!1838582 m!2266349))

(assert (=> b!1838440 d!562173))

(declare-fun d!562177 () Bool)

(declare-fun lt!713585 () Int)

(assert (=> d!562177 (>= lt!713585 0)))

(declare-fun e!1174849 () Int)

(assert (=> d!562177 (= lt!713585 e!1174849)))

(declare-fun c!300059 () Bool)

(assert (=> d!562177 (= c!300059 ((_ is Nil!20224) lt!713565))))

(assert (=> d!562177 (= (size!16034 lt!713565) lt!713585)))

(declare-fun b!1838587 () Bool)

(assert (=> b!1838587 (= e!1174849 0)))

(declare-fun b!1838588 () Bool)

(assert (=> b!1838588 (= e!1174849 (+ 1 (size!16034 (t!171723 lt!713565))))))

(assert (= (and d!562177 c!300059) b!1838587))

(assert (= (and d!562177 (not c!300059)) b!1838588))

(declare-fun m!2266351 () Bool)

(assert (=> b!1838588 m!2266351))

(assert (=> b!1838485 d!562177))

(declare-fun d!562179 () Bool)

(declare-fun lt!713586 () Int)

(assert (=> d!562179 (>= lt!713586 0)))

(declare-fun e!1174850 () Int)

(assert (=> d!562179 (= lt!713586 e!1174850)))

(declare-fun c!300060 () Bool)

(assert (=> d!562179 (= c!300060 ((_ is Nil!20224) lt!713523))))

(assert (=> d!562179 (= (size!16034 lt!713523) lt!713586)))

(declare-fun b!1838589 () Bool)

(assert (=> b!1838589 (= e!1174850 0)))

(declare-fun b!1838590 () Bool)

(assert (=> b!1838590 (= e!1174850 (+ 1 (size!16034 (t!171723 lt!713523))))))

(assert (= (and d!562179 c!300060) b!1838589))

(assert (= (and d!562179 (not c!300060)) b!1838590))

(declare-fun m!2266353 () Bool)

(assert (=> b!1838590 m!2266353))

(assert (=> b!1838485 d!562179))

(assert (=> b!1838485 d!562165))

(assert (=> b!1838439 d!562141))

(declare-fun b!1838592 () Bool)

(declare-fun e!1174852 () List!20294)

(assert (=> b!1838592 (= e!1174852 (Cons!20224 (h!25625 (_1!11237 lt!713554)) (++!5495 (t!171723 (_1!11237 lt!713554)) (_2!11237 lt!713554))))))

(declare-fun d!562181 () Bool)

(declare-fun e!1174851 () Bool)

(assert (=> d!562181 e!1174851))

(declare-fun res!826283 () Bool)

(assert (=> d!562181 (=> (not res!826283) (not e!1174851))))

(declare-fun lt!713587 () List!20294)

(assert (=> d!562181 (= res!826283 (= (content!3013 lt!713587) ((_ map or) (content!3013 (_1!11237 lt!713554)) (content!3013 (_2!11237 lt!713554)))))))

(assert (=> d!562181 (= lt!713587 e!1174852)))

(declare-fun c!300061 () Bool)

(assert (=> d!562181 (= c!300061 ((_ is Nil!20224) (_1!11237 lt!713554)))))

(assert (=> d!562181 (= (++!5495 (_1!11237 lt!713554) (_2!11237 lt!713554)) lt!713587)))

(declare-fun b!1838591 () Bool)

(assert (=> b!1838591 (= e!1174852 (_2!11237 lt!713554))))

(declare-fun b!1838593 () Bool)

(declare-fun res!826284 () Bool)

(assert (=> b!1838593 (=> (not res!826284) (not e!1174851))))

(assert (=> b!1838593 (= res!826284 (= (size!16034 lt!713587) (+ (size!16034 (_1!11237 lt!713554)) (size!16034 (_2!11237 lt!713554)))))))

(declare-fun b!1838594 () Bool)

(assert (=> b!1838594 (= e!1174851 (or (not (= (_2!11237 lt!713554) Nil!20224)) (= lt!713587 (_1!11237 lt!713554))))))

(assert (= (and d!562181 c!300061) b!1838591))

(assert (= (and d!562181 (not c!300061)) b!1838592))

(assert (= (and d!562181 res!826283) b!1838593))

(assert (= (and b!1838593 res!826284) b!1838594))

(declare-fun m!2266357 () Bool)

(assert (=> b!1838592 m!2266357))

(declare-fun m!2266359 () Bool)

(assert (=> d!562181 m!2266359))

(declare-fun m!2266361 () Bool)

(assert (=> d!562181 m!2266361))

(declare-fun m!2266363 () Bool)

(assert (=> d!562181 m!2266363))

(declare-fun m!2266365 () Bool)

(assert (=> b!1838593 m!2266365))

(declare-fun m!2266367 () Bool)

(assert (=> b!1838593 m!2266367))

(declare-fun m!2266369 () Bool)

(assert (=> b!1838593 m!2266369))

(assert (=> d!562141 d!562181))

(declare-fun b!1838600 () Bool)

(declare-fun e!1174856 () List!20294)

(assert (=> b!1838600 (= e!1174856 (Cons!20224 (h!25625 (t!171723 lt!713518)) (++!5495 (t!171723 (t!171723 lt!713518)) (_1!11237 lt!713522))))))

(declare-fun d!562185 () Bool)

(declare-fun e!1174855 () Bool)

(assert (=> d!562185 e!1174855))

(declare-fun res!826285 () Bool)

(assert (=> d!562185 (=> (not res!826285) (not e!1174855))))

(declare-fun lt!713590 () List!20294)

(assert (=> d!562185 (= res!826285 (= (content!3013 lt!713590) ((_ map or) (content!3013 (t!171723 lt!713518)) (content!3013 (_1!11237 lt!713522)))))))

(assert (=> d!562185 (= lt!713590 e!1174856)))

(declare-fun c!300064 () Bool)

(assert (=> d!562185 (= c!300064 ((_ is Nil!20224) (t!171723 lt!713518)))))

(assert (=> d!562185 (= (++!5495 (t!171723 lt!713518) (_1!11237 lt!713522)) lt!713590)))

(declare-fun b!1838599 () Bool)

(assert (=> b!1838599 (= e!1174856 (_1!11237 lt!713522))))

(declare-fun b!1838601 () Bool)

(declare-fun res!826286 () Bool)

(assert (=> b!1838601 (=> (not res!826286) (not e!1174855))))

(assert (=> b!1838601 (= res!826286 (= (size!16034 lt!713590) (+ (size!16034 (t!171723 lt!713518)) (size!16034 (_1!11237 lt!713522)))))))

(declare-fun b!1838602 () Bool)

(assert (=> b!1838602 (= e!1174855 (or (not (= (_1!11237 lt!713522) Nil!20224)) (= lt!713590 (t!171723 lt!713518))))))

(assert (= (and d!562185 c!300064) b!1838599))

(assert (= (and d!562185 (not c!300064)) b!1838600))

(assert (= (and d!562185 res!826285) b!1838601))

(assert (= (and b!1838601 res!826286) b!1838602))

(declare-fun m!2266375 () Bool)

(assert (=> b!1838600 m!2266375))

(declare-fun m!2266377 () Bool)

(assert (=> d!562185 m!2266377))

(declare-fun m!2266379 () Bool)

(assert (=> d!562185 m!2266379))

(assert (=> d!562185 m!2266225))

(declare-fun m!2266381 () Bool)

(assert (=> b!1838601 m!2266381))

(assert (=> b!1838601 m!2266333))

(assert (=> b!1838601 m!2266231))

(assert (=> b!1838444 d!562185))

(declare-fun d!562191 () Bool)

(declare-fun c!300071 () Bool)

(assert (=> d!562191 (= c!300071 ((_ is Nil!20224) lt!713565))))

(declare-fun e!1174864 () (InoxSet B!1493))

(assert (=> d!562191 (= (content!3013 lt!713565) e!1174864)))

(declare-fun b!1838617 () Bool)

(assert (=> b!1838617 (= e!1174864 ((as const (Array B!1493 Bool)) false))))

(declare-fun b!1838618 () Bool)

(assert (=> b!1838618 (= e!1174864 ((_ map or) (store ((as const (Array B!1493 Bool)) false) (h!25625 lt!713565) true) (content!3013 (t!171723 lt!713565))))))

(assert (= (and d!562191 c!300071) b!1838617))

(assert (= (and d!562191 (not c!300071)) b!1838618))

(declare-fun m!2266397 () Bool)

(assert (=> b!1838618 m!2266397))

(declare-fun m!2266401 () Bool)

(assert (=> b!1838618 m!2266401))

(assert (=> d!562149 d!562191))

(declare-fun d!562195 () Bool)

(declare-fun c!300073 () Bool)

(assert (=> d!562195 (= c!300073 ((_ is Nil!20224) lt!713523))))

(declare-fun e!1174866 () (InoxSet B!1493))

(assert (=> d!562195 (= (content!3013 lt!713523) e!1174866)))

(declare-fun b!1838621 () Bool)

(assert (=> b!1838621 (= e!1174866 ((as const (Array B!1493 Bool)) false))))

(declare-fun b!1838622 () Bool)

(assert (=> b!1838622 (= e!1174866 ((_ map or) (store ((as const (Array B!1493 Bool)) false) (h!25625 lt!713523) true) (content!3013 (t!171723 lt!713523))))))

(assert (= (and d!562195 c!300073) b!1838621))

(assert (= (and d!562195 (not c!300073)) b!1838622))

(declare-fun m!2266405 () Bool)

(assert (=> b!1838622 m!2266405))

(declare-fun m!2266409 () Bool)

(assert (=> b!1838622 m!2266409))

(assert (=> d!562149 d!562195))

(declare-fun d!562199 () Bool)

(declare-fun c!300075 () Bool)

(assert (=> d!562199 (= c!300075 ((_ is Nil!20224) (_1!11237 lt!713522)))))

(declare-fun e!1174868 () (InoxSet B!1493))

(assert (=> d!562199 (= (content!3013 (_1!11237 lt!713522)) e!1174868)))

(declare-fun b!1838625 () Bool)

(assert (=> b!1838625 (= e!1174868 ((as const (Array B!1493 Bool)) false))))

(declare-fun b!1838626 () Bool)

(assert (=> b!1838626 (= e!1174868 ((_ map or) (store ((as const (Array B!1493 Bool)) false) (h!25625 (_1!11237 lt!713522)) true) (content!3013 (t!171723 (_1!11237 lt!713522)))))))

(assert (= (and d!562199 c!300075) b!1838625))

(assert (= (and d!562199 (not c!300075)) b!1838626))

(declare-fun m!2266413 () Bool)

(assert (=> b!1838626 m!2266413))

(declare-fun m!2266417 () Bool)

(assert (=> b!1838626 m!2266417))

(assert (=> d!562149 d!562199))

(declare-fun b!1838634 () Bool)

(declare-fun e!1174872 () tuple2!19670)

(assert (=> b!1838634 (= e!1174872 (splitAtIndexTr!16 (t!171723 (t!171723 (t!171723 l!3005))) (- (- (- i!921 1) 1) 1) (++!5495 (++!5495 lt!713523 (Cons!20224 (h!25625 (t!171723 l!3005)) Nil!20224)) (Cons!20224 (h!25625 (t!171723 (t!171723 l!3005))) Nil!20224))))))

(declare-fun b!1838632 () Bool)

(declare-fun e!1174871 () tuple2!19670)

(assert (=> b!1838632 (= e!1174871 e!1174872)))

(declare-fun c!300079 () Bool)

(assert (=> b!1838632 (= c!300079 (= (- (- i!921 1) 1) 0))))

(declare-fun b!1838631 () Bool)

(assert (=> b!1838631 (= e!1174871 (tuple2!19671 (++!5495 lt!713523 (Cons!20224 (h!25625 (t!171723 l!3005)) Nil!20224)) Nil!20224))))

(declare-fun d!562203 () Bool)

(declare-fun c!300078 () Bool)

(assert (=> d!562203 (= c!300078 ((_ is Nil!20224) (t!171723 (t!171723 l!3005))))))

(assert (=> d!562203 (= (splitAtIndexTr!16 (t!171723 (t!171723 l!3005)) (- (- i!921 1) 1) (++!5495 lt!713523 (Cons!20224 (h!25625 (t!171723 l!3005)) Nil!20224))) e!1174871)))

(declare-fun b!1838633 () Bool)

(assert (=> b!1838633 (= e!1174872 (tuple2!19671 (++!5495 lt!713523 (Cons!20224 (h!25625 (t!171723 l!3005)) Nil!20224)) (t!171723 (t!171723 l!3005))))))

(assert (= (and d!562203 c!300078) b!1838631))

(assert (= (and d!562203 (not c!300078)) b!1838632))

(assert (= (and b!1838632 c!300079) b!1838633))

(assert (= (and b!1838632 (not c!300079)) b!1838634))

(assert (=> b!1838634 m!2266307))

(declare-fun m!2266429 () Bool)

(assert (=> b!1838634 m!2266429))

(assert (=> b!1838634 m!2266429))

(declare-fun m!2266431 () Bool)

(assert (=> b!1838634 m!2266431))

(assert (=> b!1838498 d!562203))

(declare-fun b!1838642 () Bool)

(declare-fun e!1174877 () List!20294)

(assert (=> b!1838642 (= e!1174877 (Cons!20224 (h!25625 lt!713523) (++!5495 (t!171723 lt!713523) (Cons!20224 (h!25625 (t!171723 l!3005)) Nil!20224))))))

(declare-fun d!562211 () Bool)

(declare-fun e!1174876 () Bool)

(assert (=> d!562211 e!1174876))

(declare-fun res!826291 () Bool)

(assert (=> d!562211 (=> (not res!826291) (not e!1174876))))

(declare-fun lt!713594 () List!20294)

(assert (=> d!562211 (= res!826291 (= (content!3013 lt!713594) ((_ map or) (content!3013 lt!713523) (content!3013 (Cons!20224 (h!25625 (t!171723 l!3005)) Nil!20224)))))))

(assert (=> d!562211 (= lt!713594 e!1174877)))

(declare-fun c!300082 () Bool)

(assert (=> d!562211 (= c!300082 ((_ is Nil!20224) lt!713523))))

(assert (=> d!562211 (= (++!5495 lt!713523 (Cons!20224 (h!25625 (t!171723 l!3005)) Nil!20224)) lt!713594)))

(declare-fun b!1838641 () Bool)

(assert (=> b!1838641 (= e!1174877 (Cons!20224 (h!25625 (t!171723 l!3005)) Nil!20224))))

(declare-fun b!1838643 () Bool)

(declare-fun res!826292 () Bool)

(assert (=> b!1838643 (=> (not res!826292) (not e!1174876))))

(assert (=> b!1838643 (= res!826292 (= (size!16034 lt!713594) (+ (size!16034 lt!713523) (size!16034 (Cons!20224 (h!25625 (t!171723 l!3005)) Nil!20224)))))))

(declare-fun b!1838644 () Bool)

(assert (=> b!1838644 (= e!1174876 (or (not (= (Cons!20224 (h!25625 (t!171723 l!3005)) Nil!20224) Nil!20224)) (= lt!713594 lt!713523)))))

(assert (= (and d!562211 c!300082) b!1838641))

(assert (= (and d!562211 (not c!300082)) b!1838642))

(assert (= (and d!562211 res!826291) b!1838643))

(assert (= (and b!1838643 res!826292) b!1838644))

(declare-fun m!2266443 () Bool)

(assert (=> b!1838642 m!2266443))

(declare-fun m!2266445 () Bool)

(assert (=> d!562211 m!2266445))

(assert (=> d!562211 m!2266293))

(declare-fun m!2266447 () Bool)

(assert (=> d!562211 m!2266447))

(declare-fun m!2266449 () Bool)

(assert (=> b!1838643 m!2266449))

(assert (=> b!1838643 m!2266297))

(declare-fun m!2266451 () Bool)

(assert (=> b!1838643 m!2266451))

(assert (=> b!1838498 d!562211))

(declare-fun b!1838646 () Bool)

(declare-fun e!1174879 () List!20294)

(assert (=> b!1838646 (= e!1174879 (Cons!20224 (h!25625 (t!171723 acc!274)) (++!5495 (t!171723 (t!171723 acc!274)) (++!5495 lt!713518 (_1!11237 lt!713522)))))))

(declare-fun d!562215 () Bool)

(declare-fun e!1174878 () Bool)

(assert (=> d!562215 e!1174878))

(declare-fun res!826293 () Bool)

(assert (=> d!562215 (=> (not res!826293) (not e!1174878))))

(declare-fun lt!713595 () List!20294)

(assert (=> d!562215 (= res!826293 (= (content!3013 lt!713595) ((_ map or) (content!3013 (t!171723 acc!274)) (content!3013 (++!5495 lt!713518 (_1!11237 lt!713522))))))))

(assert (=> d!562215 (= lt!713595 e!1174879)))

(declare-fun c!300083 () Bool)

(assert (=> d!562215 (= c!300083 ((_ is Nil!20224) (t!171723 acc!274)))))

(assert (=> d!562215 (= (++!5495 (t!171723 acc!274) (++!5495 lt!713518 (_1!11237 lt!713522))) lt!713595)))

(declare-fun b!1838645 () Bool)

(assert (=> b!1838645 (= e!1174879 (++!5495 lt!713518 (_1!11237 lt!713522)))))

(declare-fun b!1838647 () Bool)

(declare-fun res!826294 () Bool)

(assert (=> b!1838647 (=> (not res!826294) (not e!1174878))))

(assert (=> b!1838647 (= res!826294 (= (size!16034 lt!713595) (+ (size!16034 (t!171723 acc!274)) (size!16034 (++!5495 lt!713518 (_1!11237 lt!713522))))))))

(declare-fun b!1838648 () Bool)

(assert (=> b!1838648 (= e!1174878 (or (not (= (++!5495 lt!713518 (_1!11237 lt!713522)) Nil!20224)) (= lt!713595 (t!171723 acc!274))))))

(assert (= (and d!562215 c!300083) b!1838645))

(assert (= (and d!562215 (not c!300083)) b!1838646))

(assert (= (and d!562215 res!826293) b!1838647))

(assert (= (and b!1838647 res!826294) b!1838648))

(assert (=> b!1838646 m!2266141))

(declare-fun m!2266453 () Bool)

(assert (=> b!1838646 m!2266453))

(declare-fun m!2266455 () Bool)

(assert (=> d!562215 m!2266455))

(assert (=> d!562215 m!2266325))

(assert (=> d!562215 m!2266141))

(assert (=> d!562215 m!2266237))

(declare-fun m!2266457 () Bool)

(assert (=> b!1838647 m!2266457))

(assert (=> b!1838647 m!2266329))

(assert (=> b!1838647 m!2266141))

(assert (=> b!1838647 m!2266241))

(assert (=> b!1838448 d!562215))

(assert (=> d!562143 d!562155))

(declare-fun e!1174881 () List!20294)

(declare-fun b!1838650 () Bool)

(assert (=> b!1838650 (= e!1174881 (Cons!20224 (h!25625 lt!713523) (++!5495 (t!171723 lt!713523) (_1!11237 (splitAtIndex!18 (t!171723 l!3005) (- i!921 1))))))))

(declare-fun d!562217 () Bool)

(declare-fun e!1174880 () Bool)

(assert (=> d!562217 e!1174880))

(declare-fun res!826295 () Bool)

(assert (=> d!562217 (=> (not res!826295) (not e!1174880))))

(declare-fun lt!713596 () List!20294)

(assert (=> d!562217 (= res!826295 (= (content!3013 lt!713596) ((_ map or) (content!3013 lt!713523) (content!3013 (_1!11237 (splitAtIndex!18 (t!171723 l!3005) (- i!921 1)))))))))

(assert (=> d!562217 (= lt!713596 e!1174881)))

(declare-fun c!300084 () Bool)

(assert (=> d!562217 (= c!300084 ((_ is Nil!20224) lt!713523))))

(assert (=> d!562217 (= (++!5495 lt!713523 (_1!11237 (splitAtIndex!18 (t!171723 l!3005) (- i!921 1)))) lt!713596)))

(declare-fun b!1838649 () Bool)

(assert (=> b!1838649 (= e!1174881 (_1!11237 (splitAtIndex!18 (t!171723 l!3005) (- i!921 1))))))

(declare-fun b!1838651 () Bool)

(declare-fun res!826296 () Bool)

(assert (=> b!1838651 (=> (not res!826296) (not e!1174880))))

(assert (=> b!1838651 (= res!826296 (= (size!16034 lt!713596) (+ (size!16034 lt!713523) (size!16034 (_1!11237 (splitAtIndex!18 (t!171723 l!3005) (- i!921 1)))))))))

(declare-fun b!1838652 () Bool)

(assert (=> b!1838652 (= e!1174880 (or (not (= (_1!11237 (splitAtIndex!18 (t!171723 l!3005) (- i!921 1))) Nil!20224)) (= lt!713596 lt!713523)))))

(assert (= (and d!562217 c!300084) b!1838649))

(assert (= (and d!562217 (not c!300084)) b!1838650))

(assert (= (and d!562217 res!826295) b!1838651))

(assert (= (and b!1838651 res!826296) b!1838652))

(declare-fun m!2266459 () Bool)

(assert (=> b!1838650 m!2266459))

(declare-fun m!2266461 () Bool)

(assert (=> d!562217 m!2266461))

(assert (=> d!562217 m!2266293))

(declare-fun m!2266463 () Bool)

(assert (=> d!562217 m!2266463))

(declare-fun m!2266465 () Bool)

(assert (=> b!1838651 m!2266465))

(assert (=> b!1838651 m!2266297))

(declare-fun m!2266467 () Bool)

(assert (=> b!1838651 m!2266467))

(assert (=> d!562143 d!562217))

(assert (=> d!562143 d!562141))

(declare-fun d!562219 () Bool)

(assert (=> d!562219 (= (splitAtIndexTr!16 (t!171723 l!3005) (- i!921 1) lt!713523) (tuple2!19671 (++!5495 lt!713523 (_1!11237 (splitAtIndex!18 (t!171723 l!3005) (- i!921 1)))) (_2!11237 (splitAtIndex!18 (t!171723 l!3005) (- i!921 1)))))))

(assert (=> d!562219 true))

(declare-fun _$31!135 () Unit!34931)

(assert (=> d!562219 (= (choose!11564 (t!171723 l!3005) (- i!921 1) lt!713523) _$31!135)))

(declare-fun bs!408517 () Bool)

(assert (= bs!408517 d!562219))

(assert (=> bs!408517 m!2266149))

(assert (=> bs!408517 m!2266151))

(assert (=> bs!408517 m!2266273))

(assert (=> d!562143 d!562219))

(declare-fun d!562225 () Bool)

(declare-fun lt!713598 () Int)

(assert (=> d!562225 (>= lt!713598 0)))

(declare-fun e!1174884 () Int)

(assert (=> d!562225 (= lt!713598 e!1174884)))

(declare-fun c!300086 () Bool)

(assert (=> d!562225 (= c!300086 ((_ is Nil!20224) lt!713545))))

(assert (=> d!562225 (= (size!16034 lt!713545) lt!713598)))

(declare-fun b!1838657 () Bool)

(assert (=> b!1838657 (= e!1174884 0)))

(declare-fun b!1838658 () Bool)

(assert (=> b!1838658 (= e!1174884 (+ 1 (size!16034 (t!171723 lt!713545))))))

(assert (= (and d!562225 c!300086) b!1838657))

(assert (= (and d!562225 (not c!300086)) b!1838658))

(declare-fun m!2266479 () Bool)

(assert (=> b!1838658 m!2266479))

(assert (=> b!1838449 d!562225))

(assert (=> b!1838449 d!562171))

(declare-fun d!562227 () Bool)

(declare-fun lt!713599 () Int)

(assert (=> d!562227 (>= lt!713599 0)))

(declare-fun e!1174885 () Int)

(assert (=> d!562227 (= lt!713599 e!1174885)))

(declare-fun c!300087 () Bool)

(assert (=> d!562227 (= c!300087 ((_ is Nil!20224) (++!5495 lt!713518 (_1!11237 lt!713522))))))

(assert (=> d!562227 (= (size!16034 (++!5495 lt!713518 (_1!11237 lt!713522))) lt!713599)))

(declare-fun b!1838659 () Bool)

(assert (=> b!1838659 (= e!1174885 0)))

(declare-fun b!1838660 () Bool)

(assert (=> b!1838660 (= e!1174885 (+ 1 (size!16034 (t!171723 (++!5495 lt!713518 (_1!11237 lt!713522))))))))

(assert (= (and d!562227 c!300087) b!1838659))

(assert (= (and d!562227 (not c!300087)) b!1838660))

(declare-fun m!2266481 () Bool)

(assert (=> b!1838660 m!2266481))

(assert (=> b!1838449 d!562227))

(declare-fun b!1838661 () Bool)

(declare-fun e!1174886 () tuple2!19670)

(declare-fun e!1174887 () tuple2!19670)

(assert (=> b!1838661 (= e!1174886 e!1174887)))

(declare-fun c!300088 () Bool)

(assert (=> b!1838661 (= c!300088 (<= (- (- i!921 1) 1) 0))))

(declare-fun b!1838662 () Bool)

(assert (=> b!1838662 (= e!1174886 (tuple2!19671 Nil!20224 Nil!20224))))

(declare-fun b!1838663 () Bool)

(declare-fun lt!713601 () tuple2!19670)

(assert (=> b!1838663 (= lt!713601 (splitAtIndex!18 (t!171723 (t!171723 (t!171723 l!3005))) (- (- (- i!921 1) 1) 1)))))

(assert (=> b!1838663 (= e!1174887 (tuple2!19671 (Cons!20224 (h!25625 (t!171723 (t!171723 l!3005))) (_1!11237 lt!713601)) (_2!11237 lt!713601)))))

(declare-fun lt!713600 () tuple2!19670)

(declare-fun e!1174888 () Bool)

(declare-fun b!1838664 () Bool)

(assert (=> b!1838664 (= e!1174888 (= (_2!11237 lt!713600) (drop!978 (t!171723 (t!171723 l!3005)) (- (- i!921 1) 1))))))

(declare-fun b!1838665 () Bool)

(assert (=> b!1838665 (= e!1174887 (tuple2!19671 Nil!20224 (t!171723 (t!171723 l!3005))))))

(declare-fun d!562229 () Bool)

(assert (=> d!562229 e!1174888))

(declare-fun res!826299 () Bool)

(assert (=> d!562229 (=> (not res!826299) (not e!1174888))))

(assert (=> d!562229 (= res!826299 (= (++!5495 (_1!11237 lt!713600) (_2!11237 lt!713600)) (t!171723 (t!171723 l!3005))))))

(assert (=> d!562229 (= lt!713600 e!1174886)))

(declare-fun c!300089 () Bool)

(assert (=> d!562229 (= c!300089 ((_ is Nil!20224) (t!171723 (t!171723 l!3005))))))

(assert (=> d!562229 (= (splitAtIndex!18 (t!171723 (t!171723 l!3005)) (- (- i!921 1) 1)) lt!713600)))

(declare-fun b!1838666 () Bool)

(declare-fun res!826300 () Bool)

(assert (=> b!1838666 (=> (not res!826300) (not e!1174888))))

(assert (=> b!1838666 (= res!826300 (= (_1!11237 lt!713600) (take!154 (t!171723 (t!171723 l!3005)) (- (- i!921 1) 1))))))

(assert (= (and d!562229 c!300089) b!1838662))

(assert (= (and d!562229 (not c!300089)) b!1838661))

(assert (= (and b!1838661 c!300088) b!1838665))

(assert (= (and b!1838661 (not c!300088)) b!1838663))

(assert (= (and d!562229 res!826299) b!1838666))

(assert (= (and b!1838666 res!826300) b!1838664))

(declare-fun m!2266487 () Bool)

(assert (=> b!1838663 m!2266487))

(declare-fun m!2266489 () Bool)

(assert (=> b!1838664 m!2266489))

(declare-fun m!2266493 () Bool)

(assert (=> d!562229 m!2266493))

(declare-fun m!2266497 () Bool)

(assert (=> b!1838666 m!2266497))

(assert (=> b!1838469 d!562229))

(declare-fun b!1838676 () Bool)

(declare-fun e!1174894 () List!20294)

(assert (=> b!1838676 (= e!1174894 (Cons!20224 (h!25625 (_1!11237 lt!713542)) (++!5495 (t!171723 (_1!11237 lt!713542)) (_2!11237 lt!713542))))))

(declare-fun d!562237 () Bool)

(declare-fun e!1174893 () Bool)

(assert (=> d!562237 e!1174893))

(declare-fun res!826303 () Bool)

(assert (=> d!562237 (=> (not res!826303) (not e!1174893))))

(declare-fun lt!713603 () List!20294)

(assert (=> d!562237 (= res!826303 (= (content!3013 lt!713603) ((_ map or) (content!3013 (_1!11237 lt!713542)) (content!3013 (_2!11237 lt!713542)))))))

(assert (=> d!562237 (= lt!713603 e!1174894)))

(declare-fun c!300093 () Bool)

(assert (=> d!562237 (= c!300093 ((_ is Nil!20224) (_1!11237 lt!713542)))))

(assert (=> d!562237 (= (++!5495 (_1!11237 lt!713542) (_2!11237 lt!713542)) lt!713603)))

(declare-fun b!1838675 () Bool)

(assert (=> b!1838675 (= e!1174894 (_2!11237 lt!713542))))

(declare-fun b!1838677 () Bool)

(declare-fun res!826304 () Bool)

(assert (=> b!1838677 (=> (not res!826304) (not e!1174893))))

(assert (=> b!1838677 (= res!826304 (= (size!16034 lt!713603) (+ (size!16034 (_1!11237 lt!713542)) (size!16034 (_2!11237 lt!713542)))))))

(declare-fun b!1838678 () Bool)

(assert (=> b!1838678 (= e!1174893 (or (not (= (_2!11237 lt!713542) Nil!20224)) (= lt!713603 (_1!11237 lt!713542))))))

(assert (= (and d!562237 c!300093) b!1838675))

(assert (= (and d!562237 (not c!300093)) b!1838676))

(assert (= (and d!562237 res!826303) b!1838677))

(assert (= (and b!1838677 res!826304) b!1838678))

(declare-fun m!2266499 () Bool)

(assert (=> b!1838676 m!2266499))

(declare-fun m!2266501 () Bool)

(assert (=> d!562237 m!2266501))

(declare-fun m!2266503 () Bool)

(assert (=> d!562237 m!2266503))

(declare-fun m!2266505 () Bool)

(assert (=> d!562237 m!2266505))

(declare-fun m!2266507 () Bool)

(assert (=> b!1838677 m!2266507))

(declare-fun m!2266511 () Bool)

(assert (=> b!1838677 m!2266511))

(declare-fun m!2266515 () Bool)

(assert (=> b!1838677 m!2266515))

(assert (=> d!562123 d!562237))

(declare-fun d!562239 () Bool)

(declare-fun c!300094 () Bool)

(assert (=> d!562239 (= c!300094 ((_ is Nil!20224) lt!713544))))

(declare-fun e!1174895 () (InoxSet B!1493))

(assert (=> d!562239 (= (content!3013 lt!713544) e!1174895)))

(declare-fun b!1838679 () Bool)

(assert (=> b!1838679 (= e!1174895 ((as const (Array B!1493 Bool)) false))))

(declare-fun b!1838680 () Bool)

(assert (=> b!1838680 (= e!1174895 ((_ map or) (store ((as const (Array B!1493 Bool)) false) (h!25625 lt!713544) true) (content!3013 (t!171723 lt!713544))))))

(assert (= (and d!562239 c!300094) b!1838679))

(assert (= (and d!562239 (not c!300094)) b!1838680))

(declare-fun m!2266527 () Bool)

(assert (=> b!1838680 m!2266527))

(declare-fun m!2266529 () Bool)

(assert (=> b!1838680 m!2266529))

(assert (=> d!562133 d!562239))

(declare-fun d!562243 () Bool)

(declare-fun c!300095 () Bool)

(assert (=> d!562243 (= c!300095 ((_ is Nil!20224) lt!713518))))

(declare-fun e!1174896 () (InoxSet B!1493))

(assert (=> d!562243 (= (content!3013 lt!713518) e!1174896)))

(declare-fun b!1838681 () Bool)

(assert (=> b!1838681 (= e!1174896 ((as const (Array B!1493 Bool)) false))))

(declare-fun b!1838682 () Bool)

(assert (=> b!1838682 (= e!1174896 ((_ map or) (store ((as const (Array B!1493 Bool)) false) (h!25625 lt!713518) true) (content!3013 (t!171723 lt!713518))))))

(assert (= (and d!562243 c!300095) b!1838681))

(assert (= (and d!562243 (not c!300095)) b!1838682))

(declare-fun m!2266531 () Bool)

(assert (=> b!1838682 m!2266531))

(assert (=> b!1838682 m!2266379))

(assert (=> d!562133 d!562243))

(assert (=> d!562133 d!562199))

(declare-fun b!1838683 () Bool)

(declare-fun e!1174901 () List!20294)

(declare-fun e!1174898 () List!20294)

(assert (=> b!1838683 (= e!1174901 e!1174898)))

(declare-fun c!300096 () Bool)

(assert (=> b!1838683 (= c!300096 (<= (- i!921 1) 0))))

(declare-fun b!1838684 () Bool)

(assert (=> b!1838684 (= e!1174898 (drop!978 (t!171723 (t!171723 l!3005)) (- (- i!921 1) 1)))))

(declare-fun b!1838685 () Bool)

(declare-fun e!1174899 () Int)

(assert (=> b!1838685 (= e!1174899 0)))

(declare-fun b!1838686 () Bool)

(declare-fun e!1174900 () Int)

(assert (=> b!1838686 (= e!1174900 e!1174899)))

(declare-fun c!300098 () Bool)

(declare-fun call!115076 () Int)

(assert (=> b!1838686 (= c!300098 (>= (- i!921 1) call!115076))))

(declare-fun b!1838687 () Bool)

(assert (=> b!1838687 (= e!1174901 Nil!20224)))

(declare-fun b!1838688 () Bool)

(assert (=> b!1838688 (= e!1174899 (- call!115076 (- i!921 1)))))

(declare-fun d!562245 () Bool)

(declare-fun e!1174897 () Bool)

(assert (=> d!562245 e!1174897))

(declare-fun res!826305 () Bool)

(assert (=> d!562245 (=> (not res!826305) (not e!1174897))))

(declare-fun lt!713604 () List!20294)

(assert (=> d!562245 (= res!826305 (= ((_ map implies) (content!3013 lt!713604) (content!3013 (t!171723 l!3005))) ((as const (InoxSet B!1493)) true)))))

(assert (=> d!562245 (= lt!713604 e!1174901)))

(declare-fun c!300099 () Bool)

(assert (=> d!562245 (= c!300099 ((_ is Nil!20224) (t!171723 l!3005)))))

(assert (=> d!562245 (= (drop!978 (t!171723 l!3005) (- i!921 1)) lt!713604)))

(declare-fun bm!115071 () Bool)

(assert (=> bm!115071 (= call!115076 (size!16034 (t!171723 l!3005)))))

(declare-fun b!1838689 () Bool)

(assert (=> b!1838689 (= e!1174898 (t!171723 l!3005))))

(declare-fun b!1838690 () Bool)

(assert (=> b!1838690 (= e!1174900 call!115076)))

(declare-fun b!1838691 () Bool)

(assert (=> b!1838691 (= e!1174897 (= (size!16034 lt!713604) e!1174900))))

(declare-fun c!300097 () Bool)

(assert (=> b!1838691 (= c!300097 (<= (- i!921 1) 0))))

(assert (= (and d!562245 c!300099) b!1838687))

(assert (= (and d!562245 (not c!300099)) b!1838683))

(assert (= (and b!1838683 c!300096) b!1838689))

(assert (= (and b!1838683 (not c!300096)) b!1838684))

(assert (= (and d!562245 res!826305) b!1838691))

(assert (= (and b!1838691 c!300097) b!1838690))

(assert (= (and b!1838691 (not c!300097)) b!1838686))

(assert (= (and b!1838686 c!300098) b!1838685))

(assert (= (and b!1838686 (not c!300098)) b!1838688))

(assert (= (or b!1838690 b!1838686 b!1838688) bm!115071))

(assert (=> b!1838684 m!2266489))

(declare-fun m!2266533 () Bool)

(assert (=> d!562245 m!2266533))

(declare-fun m!2266535 () Bool)

(assert (=> d!562245 m!2266535))

(declare-fun m!2266537 () Bool)

(assert (=> bm!115071 m!2266537))

(declare-fun m!2266539 () Bool)

(assert (=> b!1838691 m!2266539))

(assert (=> b!1838470 d!562245))

(declare-fun b!1838695 () Bool)

(declare-fun e!1174903 () tuple2!19670)

(assert (=> b!1838695 (= e!1174903 (splitAtIndexTr!16 (t!171723 (t!171723 l!3005)) (- (- i!921 1) 1) (++!5495 (++!5495 acc!274 (Cons!20224 (h!25625 l!3005) Nil!20224)) (Cons!20224 (h!25625 (t!171723 l!3005)) Nil!20224))))))

(declare-fun b!1838693 () Bool)

(declare-fun e!1174902 () tuple2!19670)

(assert (=> b!1838693 (= e!1174902 e!1174903)))

(declare-fun c!300101 () Bool)

(assert (=> b!1838693 (= c!300101 (= (- i!921 1) 0))))

(declare-fun b!1838692 () Bool)

(assert (=> b!1838692 (= e!1174902 (tuple2!19671 (++!5495 acc!274 (Cons!20224 (h!25625 l!3005) Nil!20224)) Nil!20224))))

(declare-fun d!562247 () Bool)

(declare-fun c!300100 () Bool)

(assert (=> d!562247 (= c!300100 ((_ is Nil!20224) (t!171723 l!3005)))))

(assert (=> d!562247 (= (splitAtIndexTr!16 (t!171723 l!3005) (- i!921 1) (++!5495 acc!274 (Cons!20224 (h!25625 l!3005) Nil!20224))) e!1174902)))

(declare-fun b!1838694 () Bool)

(assert (=> b!1838694 (= e!1174903 (tuple2!19671 (++!5495 acc!274 (Cons!20224 (h!25625 l!3005) Nil!20224)) (t!171723 l!3005)))))

(assert (= (and d!562247 c!300100) b!1838692))

(assert (= (and d!562247 (not c!300100)) b!1838693))

(assert (= (and b!1838693 c!300101) b!1838694))

(assert (= (and b!1838693 (not c!300101)) b!1838695))

(assert (=> b!1838695 m!2266153))

(declare-fun m!2266541 () Bool)

(assert (=> b!1838695 m!2266541))

(assert (=> b!1838695 m!2266541))

(declare-fun m!2266543 () Bool)

(assert (=> b!1838695 m!2266543))

(assert (=> b!1838380 d!562247))

(declare-fun b!1838697 () Bool)

(declare-fun e!1174905 () List!20294)

(assert (=> b!1838697 (= e!1174905 (Cons!20224 (h!25625 acc!274) (++!5495 (t!171723 acc!274) (Cons!20224 (h!25625 l!3005) Nil!20224))))))

(declare-fun d!562249 () Bool)

(declare-fun e!1174904 () Bool)

(assert (=> d!562249 e!1174904))

(declare-fun res!826306 () Bool)

(assert (=> d!562249 (=> (not res!826306) (not e!1174904))))

(declare-fun lt!713605 () List!20294)

(assert (=> d!562249 (= res!826306 (= (content!3013 lt!713605) ((_ map or) (content!3013 acc!274) (content!3013 (Cons!20224 (h!25625 l!3005) Nil!20224)))))))

(assert (=> d!562249 (= lt!713605 e!1174905)))

(declare-fun c!300102 () Bool)

(assert (=> d!562249 (= c!300102 ((_ is Nil!20224) acc!274))))

(assert (=> d!562249 (= (++!5495 acc!274 (Cons!20224 (h!25625 l!3005) Nil!20224)) lt!713605)))

(declare-fun b!1838696 () Bool)

(assert (=> b!1838696 (= e!1174905 (Cons!20224 (h!25625 l!3005) Nil!20224))))

(declare-fun b!1838698 () Bool)

(declare-fun res!826307 () Bool)

(assert (=> b!1838698 (=> (not res!826307) (not e!1174904))))

(assert (=> b!1838698 (= res!826307 (= (size!16034 lt!713605) (+ (size!16034 acc!274) (size!16034 (Cons!20224 (h!25625 l!3005) Nil!20224)))))))

(declare-fun b!1838699 () Bool)

(assert (=> b!1838699 (= e!1174904 (or (not (= (Cons!20224 (h!25625 l!3005) Nil!20224) Nil!20224)) (= lt!713605 acc!274)))))

(assert (= (and d!562249 c!300102) b!1838696))

(assert (= (and d!562249 (not c!300102)) b!1838697))

(assert (= (and d!562249 res!826306) b!1838698))

(assert (= (and b!1838698 res!826307) b!1838699))

(declare-fun m!2266545 () Bool)

(assert (=> b!1838697 m!2266545))

(declare-fun m!2266547 () Bool)

(assert (=> d!562249 m!2266547))

(assert (=> d!562249 m!2266175))

(declare-fun m!2266549 () Bool)

(assert (=> d!562249 m!2266549))

(declare-fun m!2266551 () Bool)

(assert (=> b!1838698 m!2266551))

(assert (=> b!1838698 m!2266181))

(declare-fun m!2266553 () Bool)

(assert (=> b!1838698 m!2266553))

(assert (=> b!1838380 d!562249))

(declare-fun d!562251 () Bool)

(declare-fun c!300103 () Bool)

(assert (=> d!562251 (= c!300103 ((_ is Nil!20224) lt!713532))))

(declare-fun e!1174906 () (InoxSet B!1493))

(assert (=> d!562251 (= (content!3013 lt!713532) e!1174906)))

(declare-fun b!1838700 () Bool)

(assert (=> b!1838700 (= e!1174906 ((as const (Array B!1493 Bool)) false))))

(declare-fun b!1838701 () Bool)

(assert (=> b!1838701 (= e!1174906 ((_ map or) (store ((as const (Array B!1493 Bool)) false) (h!25625 lt!713532) true) (content!3013 (t!171723 lt!713532))))))

(assert (= (and d!562251 c!300103) b!1838700))

(assert (= (and d!562251 (not c!300103)) b!1838701))

(declare-fun m!2266555 () Bool)

(assert (=> b!1838701 m!2266555))

(declare-fun m!2266557 () Bool)

(assert (=> b!1838701 m!2266557))

(assert (=> d!562119 d!562251))

(declare-fun d!562253 () Bool)

(declare-fun c!300104 () Bool)

(assert (=> d!562253 (= c!300104 ((_ is Nil!20224) acc!274))))

(declare-fun e!1174907 () (InoxSet B!1493))

(assert (=> d!562253 (= (content!3013 acc!274) e!1174907)))

(declare-fun b!1838702 () Bool)

(assert (=> b!1838702 (= e!1174907 ((as const (Array B!1493 Bool)) false))))

(declare-fun b!1838703 () Bool)

(assert (=> b!1838703 (= e!1174907 ((_ map or) (store ((as const (Array B!1493 Bool)) false) (h!25625 acc!274) true) (content!3013 (t!171723 acc!274))))))

(assert (= (and d!562253 c!300104) b!1838702))

(assert (= (and d!562253 (not c!300104)) b!1838703))

(declare-fun m!2266559 () Bool)

(assert (=> b!1838703 m!2266559))

(assert (=> b!1838703 m!2266325))

(assert (=> d!562119 d!562253))

(declare-fun d!562255 () Bool)

(declare-fun c!300105 () Bool)

(assert (=> d!562255 (= c!300105 ((_ is Nil!20224) (_1!11237 lt!713519)))))

(declare-fun e!1174908 () (InoxSet B!1493))

(assert (=> d!562255 (= (content!3013 (_1!11237 lt!713519)) e!1174908)))

(declare-fun b!1838704 () Bool)

(assert (=> b!1838704 (= e!1174908 ((as const (Array B!1493 Bool)) false))))

(declare-fun b!1838705 () Bool)

(assert (=> b!1838705 (= e!1174908 ((_ map or) (store ((as const (Array B!1493 Bool)) false) (h!25625 (_1!11237 lt!713519)) true) (content!3013 (t!171723 (_1!11237 lt!713519)))))))

(assert (= (and d!562255 c!300105) b!1838704))

(assert (= (and d!562255 (not c!300105)) b!1838705))

(declare-fun m!2266561 () Bool)

(assert (=> b!1838705 m!2266561))

(declare-fun m!2266563 () Bool)

(assert (=> b!1838705 m!2266563))

(assert (=> d!562119 d!562255))

(declare-fun d!562257 () Bool)

(declare-fun c!300106 () Bool)

(assert (=> d!562257 (= c!300106 ((_ is Nil!20224) lt!713545))))

(declare-fun e!1174909 () (InoxSet B!1493))

(assert (=> d!562257 (= (content!3013 lt!713545) e!1174909)))

(declare-fun b!1838706 () Bool)

(assert (=> b!1838706 (= e!1174909 ((as const (Array B!1493 Bool)) false))))

(declare-fun b!1838707 () Bool)

(assert (=> b!1838707 (= e!1174909 ((_ map or) (store ((as const (Array B!1493 Bool)) false) (h!25625 lt!713545) true) (content!3013 (t!171723 lt!713545))))))

(assert (= (and d!562257 c!300106) b!1838706))

(assert (= (and d!562257 (not c!300106)) b!1838707))

(declare-fun m!2266565 () Bool)

(assert (=> b!1838707 m!2266565))

(declare-fun m!2266567 () Bool)

(assert (=> b!1838707 m!2266567))

(assert (=> d!562135 d!562257))

(assert (=> d!562135 d!562253))

(declare-fun d!562259 () Bool)

(declare-fun c!300107 () Bool)

(assert (=> d!562259 (= c!300107 ((_ is Nil!20224) (++!5495 lt!713518 (_1!11237 lt!713522))))))

(declare-fun e!1174910 () (InoxSet B!1493))

(assert (=> d!562259 (= (content!3013 (++!5495 lt!713518 (_1!11237 lt!713522))) e!1174910)))

(declare-fun b!1838708 () Bool)

(assert (=> b!1838708 (= e!1174910 ((as const (Array B!1493 Bool)) false))))

(declare-fun b!1838709 () Bool)

(assert (=> b!1838709 (= e!1174910 ((_ map or) (store ((as const (Array B!1493 Bool)) false) (h!25625 (++!5495 lt!713518 (_1!11237 lt!713522))) true) (content!3013 (t!171723 (++!5495 lt!713518 (_1!11237 lt!713522))))))))

(assert (= (and d!562259 c!300107) b!1838708))

(assert (= (and d!562259 (not c!300107)) b!1838709))

(declare-fun m!2266569 () Bool)

(assert (=> b!1838709 m!2266569))

(declare-fun m!2266571 () Bool)

(assert (=> b!1838709 m!2266571))

(assert (=> d!562135 d!562259))

(declare-fun b!1838711 () Bool)

(declare-fun e!1174912 () List!20294)

(assert (=> b!1838711 (= e!1174912 (Cons!20224 (h!25625 (t!171723 lt!713523)) (++!5495 (t!171723 (t!171723 lt!713523)) (_1!11237 lt!713522))))))

(declare-fun d!562261 () Bool)

(declare-fun e!1174911 () Bool)

(assert (=> d!562261 e!1174911))

(declare-fun res!826308 () Bool)

(assert (=> d!562261 (=> (not res!826308) (not e!1174911))))

(declare-fun lt!713606 () List!20294)

(assert (=> d!562261 (= res!826308 (= (content!3013 lt!713606) ((_ map or) (content!3013 (t!171723 lt!713523)) (content!3013 (_1!11237 lt!713522)))))))

(assert (=> d!562261 (= lt!713606 e!1174912)))

(declare-fun c!300108 () Bool)

(assert (=> d!562261 (= c!300108 ((_ is Nil!20224) (t!171723 lt!713523)))))

(assert (=> d!562261 (= (++!5495 (t!171723 lt!713523) (_1!11237 lt!713522)) lt!713606)))

(declare-fun b!1838710 () Bool)

(assert (=> b!1838710 (= e!1174912 (_1!11237 lt!713522))))

(declare-fun b!1838712 () Bool)

(declare-fun res!826309 () Bool)

(assert (=> b!1838712 (=> (not res!826309) (not e!1174911))))

(assert (=> b!1838712 (= res!826309 (= (size!16034 lt!713606) (+ (size!16034 (t!171723 lt!713523)) (size!16034 (_1!11237 lt!713522)))))))

(declare-fun b!1838713 () Bool)

(assert (=> b!1838713 (= e!1174911 (or (not (= (_1!11237 lt!713522) Nil!20224)) (= lt!713606 (t!171723 lt!713523))))))

(assert (= (and d!562261 c!300108) b!1838710))

(assert (= (and d!562261 (not c!300108)) b!1838711))

(assert (= (and d!562261 res!826308) b!1838712))

(assert (= (and b!1838712 res!826309) b!1838713))

(declare-fun m!2266573 () Bool)

(assert (=> b!1838711 m!2266573))

(declare-fun m!2266575 () Bool)

(assert (=> d!562261 m!2266575))

(assert (=> d!562261 m!2266409))

(assert (=> d!562261 m!2266225))

(declare-fun m!2266577 () Bool)

(assert (=> b!1838712 m!2266577))

(assert (=> b!1838712 m!2266353))

(assert (=> b!1838712 m!2266231))

(assert (=> b!1838484 d!562261))

(assert (=> d!562137 d!562133))

(assert (=> d!562137 d!562135))

(assert (=> d!562137 d!562139))

(declare-fun b!1838715 () Bool)

(declare-fun e!1174914 () List!20294)

(assert (=> b!1838715 (= e!1174914 (Cons!20224 (h!25625 (++!5495 acc!274 lt!713518)) (++!5495 (t!171723 (++!5495 acc!274 lt!713518)) (_1!11237 lt!713522))))))

(declare-fun d!562263 () Bool)

(declare-fun e!1174913 () Bool)

(assert (=> d!562263 e!1174913))

(declare-fun res!826310 () Bool)

(assert (=> d!562263 (=> (not res!826310) (not e!1174913))))

(declare-fun lt!713607 () List!20294)

(assert (=> d!562263 (= res!826310 (= (content!3013 lt!713607) ((_ map or) (content!3013 (++!5495 acc!274 lt!713518)) (content!3013 (_1!11237 lt!713522)))))))

(assert (=> d!562263 (= lt!713607 e!1174914)))

(declare-fun c!300109 () Bool)

(assert (=> d!562263 (= c!300109 ((_ is Nil!20224) (++!5495 acc!274 lt!713518)))))

(assert (=> d!562263 (= (++!5495 (++!5495 acc!274 lt!713518) (_1!11237 lt!713522)) lt!713607)))

(declare-fun b!1838714 () Bool)

(assert (=> b!1838714 (= e!1174914 (_1!11237 lt!713522))))

(declare-fun b!1838716 () Bool)

(declare-fun res!826311 () Bool)

(assert (=> b!1838716 (=> (not res!826311) (not e!1174913))))

(assert (=> b!1838716 (= res!826311 (= (size!16034 lt!713607) (+ (size!16034 (++!5495 acc!274 lt!713518)) (size!16034 (_1!11237 lt!713522)))))))

(declare-fun b!1838717 () Bool)

(assert (=> b!1838717 (= e!1174913 (or (not (= (_1!11237 lt!713522) Nil!20224)) (= lt!713607 (++!5495 acc!274 lt!713518))))))

(assert (= (and d!562263 c!300109) b!1838714))

(assert (= (and d!562263 (not c!300109)) b!1838715))

(assert (= (and d!562263 res!826310) b!1838716))

(assert (= (and b!1838716 res!826311) b!1838717))

(declare-fun m!2266579 () Bool)

(assert (=> b!1838715 m!2266579))

(declare-fun m!2266581 () Bool)

(assert (=> d!562263 m!2266581))

(assert (=> d!562263 m!2266145))

(declare-fun m!2266583 () Bool)

(assert (=> d!562263 m!2266583))

(assert (=> d!562263 m!2266225))

(declare-fun m!2266585 () Bool)

(assert (=> b!1838716 m!2266585))

(assert (=> b!1838716 m!2266145))

(declare-fun m!2266587 () Bool)

(assert (=> b!1838716 m!2266587))

(assert (=> b!1838716 m!2266231))

(assert (=> d!562137 d!562263))

(declare-fun d!562265 () Bool)

(assert (=> d!562265 (= (++!5495 (++!5495 acc!274 lt!713518) (_1!11237 lt!713522)) (++!5495 acc!274 (++!5495 lt!713518 (_1!11237 lt!713522))))))

(assert (=> d!562265 true))

(declare-fun _$52!1138 () Unit!34931)

(assert (=> d!562265 (= (choose!11562 acc!274 lt!713518 (_1!11237 lt!713522)) _$52!1138)))

(declare-fun bs!408519 () Bool)

(assert (= bs!408519 d!562265))

(assert (=> bs!408519 m!2266145))

(assert (=> bs!408519 m!2266145))

(assert (=> bs!408519 m!2266245))

(assert (=> bs!408519 m!2266141))

(assert (=> bs!408519 m!2266141))

(assert (=> bs!408519 m!2266143))

(assert (=> d!562137 d!562265))

(declare-fun b!1838736 () Bool)

(declare-fun e!1174926 () Int)

(assert (=> b!1838736 (= e!1174926 (size!16034 (t!171723 l!3005)))))

(declare-fun b!1838737 () Bool)

(declare-fun e!1174925 () List!20294)

(assert (=> b!1838737 (= e!1174925 (Cons!20224 (h!25625 (t!171723 l!3005)) (take!154 (t!171723 (t!171723 l!3005)) (- (- i!921 1) 1))))))

(declare-fun b!1838739 () Bool)

(declare-fun e!1174927 () Bool)

(declare-fun lt!713610 () List!20294)

(declare-fun e!1174928 () Int)

(assert (=> b!1838739 (= e!1174927 (= (size!16034 lt!713610) e!1174928))))

(declare-fun c!300120 () Bool)

(assert (=> b!1838739 (= c!300120 (<= (- i!921 1) 0))))

(declare-fun b!1838740 () Bool)

(assert (=> b!1838740 (= e!1174925 Nil!20224)))

(declare-fun b!1838741 () Bool)

(assert (=> b!1838741 (= e!1174928 e!1174926)))

(declare-fun c!300118 () Bool)

(assert (=> b!1838741 (= c!300118 (>= (- i!921 1) (size!16034 (t!171723 l!3005))))))

(declare-fun b!1838742 () Bool)

(assert (=> b!1838742 (= e!1174928 0)))

(declare-fun b!1838738 () Bool)

(assert (=> b!1838738 (= e!1174926 (- i!921 1))))

(declare-fun d!562267 () Bool)

(assert (=> d!562267 e!1174927))

(declare-fun res!826314 () Bool)

(assert (=> d!562267 (=> (not res!826314) (not e!1174927))))

(assert (=> d!562267 (= res!826314 (= ((_ map implies) (content!3013 lt!713610) (content!3013 (t!171723 l!3005))) ((as const (InoxSet B!1493)) true)))))

(assert (=> d!562267 (= lt!713610 e!1174925)))

(declare-fun c!300119 () Bool)

(assert (=> d!562267 (= c!300119 (or ((_ is Nil!20224) (t!171723 l!3005)) (<= (- i!921 1) 0)))))

(assert (=> d!562267 (= (take!154 (t!171723 l!3005) (- i!921 1)) lt!713610)))

(assert (= (and d!562267 c!300119) b!1838740))

(assert (= (and d!562267 (not c!300119)) b!1838737))

(assert (= (and d!562267 res!826314) b!1838739))

(assert (= (and b!1838739 c!300120) b!1838742))

(assert (= (and b!1838739 (not c!300120)) b!1838741))

(assert (= (and b!1838741 c!300118) b!1838736))

(assert (= (and b!1838741 (not c!300118)) b!1838738))

(assert (=> b!1838741 m!2266537))

(assert (=> b!1838737 m!2266497))

(declare-fun m!2266589 () Bool)

(assert (=> b!1838739 m!2266589))

(declare-fun m!2266591 () Bool)

(assert (=> d!562267 m!2266591))

(assert (=> d!562267 m!2266535))

(assert (=> b!1838736 m!2266537))

(assert (=> b!1838472 d!562267))

(declare-fun b!1838744 () Bool)

(declare-fun e!1174930 () List!20294)

(assert (=> b!1838744 (= e!1174930 (Cons!20224 (h!25625 (t!171723 acc!274)) (++!5495 (t!171723 (t!171723 acc!274)) (_1!11237 lt!713519))))))

(declare-fun d!562269 () Bool)

(declare-fun e!1174929 () Bool)

(assert (=> d!562269 e!1174929))

(declare-fun res!826315 () Bool)

(assert (=> d!562269 (=> (not res!826315) (not e!1174929))))

(declare-fun lt!713611 () List!20294)

(assert (=> d!562269 (= res!826315 (= (content!3013 lt!713611) ((_ map or) (content!3013 (t!171723 acc!274)) (content!3013 (_1!11237 lt!713519)))))))

(assert (=> d!562269 (= lt!713611 e!1174930)))

(declare-fun c!300121 () Bool)

(assert (=> d!562269 (= c!300121 ((_ is Nil!20224) (t!171723 acc!274)))))

(assert (=> d!562269 (= (++!5495 (t!171723 acc!274) (_1!11237 lt!713519)) lt!713611)))

(declare-fun b!1838743 () Bool)

(assert (=> b!1838743 (= e!1174930 (_1!11237 lt!713519))))

(declare-fun b!1838745 () Bool)

(declare-fun res!826316 () Bool)

(assert (=> b!1838745 (=> (not res!826316) (not e!1174929))))

(assert (=> b!1838745 (= res!826316 (= (size!16034 lt!713611) (+ (size!16034 (t!171723 acc!274)) (size!16034 (_1!11237 lt!713519)))))))

(declare-fun b!1838746 () Bool)

(assert (=> b!1838746 (= e!1174929 (or (not (= (_1!11237 lt!713519) Nil!20224)) (= lt!713611 (t!171723 acc!274))))))

(assert (= (and d!562269 c!300121) b!1838743))

(assert (= (and d!562269 (not c!300121)) b!1838744))

(assert (= (and d!562269 res!826315) b!1838745))

(assert (= (and b!1838745 res!826316) b!1838746))

(declare-fun m!2266593 () Bool)

(assert (=> b!1838744 m!2266593))

(declare-fun m!2266595 () Bool)

(assert (=> d!562269 m!2266595))

(assert (=> d!562269 m!2266325))

(assert (=> d!562269 m!2266177))

(declare-fun m!2266597 () Bool)

(assert (=> b!1838745 m!2266597))

(assert (=> b!1838745 m!2266329))

(assert (=> b!1838745 m!2266183))

(assert (=> b!1838402 d!562269))

(declare-fun d!562271 () Bool)

(declare-fun c!300122 () Bool)

(assert (=> d!562271 (= c!300122 ((_ is Nil!20224) lt!713553))))

(declare-fun e!1174931 () (InoxSet B!1493))

(assert (=> d!562271 (= (content!3013 lt!713553) e!1174931)))

(declare-fun b!1838747 () Bool)

(assert (=> b!1838747 (= e!1174931 ((as const (Array B!1493 Bool)) false))))

(declare-fun b!1838748 () Bool)

(assert (=> b!1838748 (= e!1174931 ((_ map or) (store ((as const (Array B!1493 Bool)) false) (h!25625 lt!713553) true) (content!3013 (t!171723 lt!713553))))))

(assert (= (and d!562271 c!300122) b!1838747))

(assert (= (and d!562271 (not c!300122)) b!1838748))

(declare-fun m!2266599 () Bool)

(assert (=> b!1838748 m!2266599))

(declare-fun m!2266601 () Bool)

(assert (=> b!1838748 m!2266601))

(assert (=> d!562139 d!562271))

(assert (=> d!562139 d!562253))

(assert (=> d!562139 d!562243))

(declare-fun d!562273 () Bool)

(declare-fun lt!713612 () Int)

(assert (=> d!562273 (>= lt!713612 0)))

(declare-fun e!1174932 () Int)

(assert (=> d!562273 (= lt!713612 e!1174932)))

(declare-fun c!300123 () Bool)

(assert (=> d!562273 (= c!300123 ((_ is Nil!20224) lt!713532))))

(assert (=> d!562273 (= (size!16034 lt!713532) lt!713612)))

(declare-fun b!1838749 () Bool)

(assert (=> b!1838749 (= e!1174932 0)))

(declare-fun b!1838750 () Bool)

(assert (=> b!1838750 (= e!1174932 (+ 1 (size!16034 (t!171723 lt!713532))))))

(assert (= (and d!562273 c!300123) b!1838749))

(assert (= (and d!562273 (not c!300123)) b!1838750))

(declare-fun m!2266603 () Bool)

(assert (=> b!1838750 m!2266603))

(assert (=> b!1838403 d!562273))

(assert (=> b!1838403 d!562171))

(declare-fun d!562275 () Bool)

(declare-fun lt!713613 () Int)

(assert (=> d!562275 (>= lt!713613 0)))

(declare-fun e!1174933 () Int)

(assert (=> d!562275 (= lt!713613 e!1174933)))

(declare-fun c!300124 () Bool)

(assert (=> d!562275 (= c!300124 ((_ is Nil!20224) (_1!11237 lt!713519)))))

(assert (=> d!562275 (= (size!16034 (_1!11237 lt!713519)) lt!713613)))

(declare-fun b!1838751 () Bool)

(assert (=> b!1838751 (= e!1174933 0)))

(declare-fun b!1838752 () Bool)

(assert (=> b!1838752 (= e!1174933 (+ 1 (size!16034 (t!171723 (_1!11237 lt!713519)))))))

(assert (= (and d!562275 c!300124) b!1838751))

(assert (= (and d!562275 (not c!300124)) b!1838752))

(declare-fun m!2266605 () Bool)

(assert (=> b!1838752 m!2266605))

(assert (=> b!1838403 d!562275))

(declare-fun b!1838753 () Bool)

(declare-fun e!1174934 () Bool)

(declare-fun tp!520085 () Bool)

(assert (=> b!1838753 (= e!1174934 (and tp_is_empty!8241 tp!520085))))

(assert (=> b!1838514 (= tp!520082 e!1174934)))

(assert (= (and b!1838514 ((_ is Cons!20224) (t!171723 (t!171723 l!3005)))) b!1838753))

(declare-fun b!1838754 () Bool)

(declare-fun e!1174935 () Bool)

(declare-fun tp!520086 () Bool)

(assert (=> b!1838754 (= e!1174935 (and tp_is_empty!8241 tp!520086))))

(assert (=> b!1838509 (= tp!520079 e!1174935)))

(assert (= (and b!1838509 ((_ is Cons!20224) (t!171723 (t!171723 acc!274)))) b!1838754))

(check-sat (not b!1838701) (not d!562269) (not bm!115070) (not b!1838658) (not b!1838697) (not b!1838712) (not b!1838698) (not b!1838709) (not d!562211) (not d!562215) (not d!562265) (not b!1838590) (not b!1838695) (not d!562167) (not b!1838680) (not d!562237) (not b!1838626) (not b!1838691) (not b!1838601) (not d!562267) (not b!1838737) (not b!1838752) (not d!562217) (not d!562261) (not b!1838744) (not b!1838736) (not b!1838618) (not bm!115071) (not b!1838518) (not b!1838715) (not d!562219) (not b!1838741) tp_is_empty!8241 (not b!1838716) (not b!1838643) (not b!1838592) (not b!1838647) (not b!1838684) (not b!1838703) (not b!1838530) (not b!1838546) (not b!1838663) (not d!562185) (not b!1838748) (not b!1838677) (not b!1838555) (not b!1838582) (not d!562263) (not b!1838526) (not b!1838660) (not b!1838664) (not d!562173) (not b!1838753) (not b!1838711) (not b!1838634) (not b!1838682) (not b!1838705) (not b!1838666) (not b!1838707) (not b!1838651) (not b!1838550) (not b!1838553) (not b!1838545) (not b!1838646) (not b!1838676) (not d!562159) (not d!562245) (not b!1838754) (not b!1838600) (not b!1838622) (not b!1838750) (not b!1838575) (not b!1838548) (not b!1838528) (not b!1838519) (not d!562249) (not b!1838739) (not d!562229) (not b!1838588) (not b!1838745) (not b!1838650) (not b!1838593) (not b!1838642) (not d!562181))
(check-sat)
