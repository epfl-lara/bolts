; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756112 () Bool)

(assert start!756112)

(declare-fun b!8028210 () Bool)

(declare-fun res!3175045 () Bool)

(declare-fun e!4729668 () Bool)

(assert (=> b!8028210 (=> res!3175045 e!4729668)))

(declare-datatypes ((B!4425 0))(
  ( (B!4426 (val!32612 Int)) )
))
(declare-datatypes ((List!75128 0))(
  ( (Nil!75002) (Cons!75002 (h!81450 B!4425) (t!390884 List!75128)) )
))
(declare-fun s1!480 () List!75128)

(declare-fun p1!159 () List!75128)

(declare-fun lt!2721483 () List!75128)

(declare-fun ++!18604 (List!75128 List!75128) List!75128)

(assert (=> b!8028210 (= res!3175045 (not (= (++!18604 (t!390884 p1!159) s1!480) lt!2721483)))))

(declare-fun b!8028211 () Bool)

(declare-fun e!4729664 () Bool)

(declare-fun e!4729669 () Bool)

(assert (=> b!8028211 (= e!4729664 (not e!4729669))))

(declare-fun res!3175043 () Bool)

(assert (=> b!8028211 (=> res!3175043 e!4729669)))

(get-info :version)

(assert (=> b!8028211 (= res!3175043 (not ((_ is Cons!75002) p1!159)))))

(declare-fun lt!2721482 () List!75128)

(declare-fun isPrefix!6877 (List!75128 List!75128) Bool)

(assert (=> b!8028211 (isPrefix!6877 p1!159 lt!2721482)))

(declare-datatypes ((Unit!170988 0))(
  ( (Unit!170989) )
))
(declare-fun lt!2721481 () Unit!170988)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3996 (List!75128 List!75128) Unit!170988)

(assert (=> b!8028211 (= lt!2721481 (lemmaConcatTwoListThenFirstIsPrefix!3996 p1!159 s1!480))))

(declare-fun b!8028212 () Bool)

(declare-fun res!3175047 () Bool)

(assert (=> b!8028212 (=> (not res!3175047) (not e!4729664))))

(declare-fun p2!159 () List!75128)

(declare-fun size!43737 (List!75128) Int)

(assert (=> b!8028212 (= res!3175047 (< (size!43737 p1!159) (size!43737 p2!159)))))

(declare-fun res!3175042 () Bool)

(declare-fun e!4729671 () Bool)

(assert (=> start!756112 (=> (not res!3175042) (not e!4729671))))

(declare-fun l!3185 () List!75128)

(assert (=> start!756112 (= res!3175042 (isPrefix!6877 p2!159 l!3185))))

(assert (=> start!756112 e!4729671))

(declare-fun e!4729670 () Bool)

(assert (=> start!756112 e!4729670))

(declare-fun e!4729665 () Bool)

(assert (=> start!756112 e!4729665))

(declare-fun e!4729667 () Bool)

(assert (=> start!756112 e!4729667))

(declare-fun e!4729666 () Bool)

(assert (=> start!756112 e!4729666))

(declare-fun b!8028213 () Bool)

(assert (=> b!8028213 (= e!4729671 e!4729664)))

(declare-fun res!3175046 () Bool)

(assert (=> b!8028213 (=> (not res!3175046) (not e!4729664))))

(assert (=> b!8028213 (= res!3175046 (= lt!2721482 l!3185))))

(assert (=> b!8028213 (= lt!2721482 (++!18604 p1!159 s1!480))))

(declare-fun b!8028214 () Bool)

(declare-fun ListPrimitiveSize!521 (List!75128) Int)

(assert (=> b!8028214 (= e!4729668 (< (ListPrimitiveSize!521 (t!390884 p1!159)) (ListPrimitiveSize!521 p1!159)))))

(declare-fun b!8028215 () Bool)

(declare-fun res!3175044 () Bool)

(assert (=> b!8028215 (=> res!3175044 e!4729668)))

(declare-fun lt!2721484 () List!75128)

(assert (=> b!8028215 (= res!3175044 (>= (size!43737 (t!390884 p1!159)) (size!43737 lt!2721484)))))

(declare-fun b!8028216 () Bool)

(assert (=> b!8028216 (= e!4729669 e!4729668)))

(declare-fun res!3175040 () Bool)

(assert (=> b!8028216 (=> res!3175040 e!4729668)))

(assert (=> b!8028216 (= res!3175040 (not (isPrefix!6877 lt!2721484 lt!2721483)))))

(declare-fun tail!16035 (List!75128) List!75128)

(assert (=> b!8028216 (= lt!2721483 (tail!16035 l!3185))))

(assert (=> b!8028216 (= lt!2721484 (tail!16035 p2!159))))

(declare-fun b!8028217 () Bool)

(declare-fun res!3175041 () Bool)

(assert (=> b!8028217 (=> (not res!3175041) (not e!4729664))))

(declare-fun isEmpty!43010 (List!75128) Bool)

(assert (=> b!8028217 (= res!3175041 (not (isEmpty!43010 s1!480)))))

(declare-fun b!8028218 () Bool)

(declare-fun tp_is_empty!54329 () Bool)

(declare-fun tp!2402493 () Bool)

(assert (=> b!8028218 (= e!4729670 (and tp_is_empty!54329 tp!2402493))))

(declare-fun b!8028219 () Bool)

(declare-fun tp!2402492 () Bool)

(assert (=> b!8028219 (= e!4729665 (and tp_is_empty!54329 tp!2402492))))

(declare-fun b!8028220 () Bool)

(declare-fun tp!2402495 () Bool)

(assert (=> b!8028220 (= e!4729666 (and tp_is_empty!54329 tp!2402495))))

(declare-fun b!8028221 () Bool)

(declare-fun tp!2402494 () Bool)

(assert (=> b!8028221 (= e!4729667 (and tp_is_empty!54329 tp!2402494))))

(assert (= (and start!756112 res!3175042) b!8028213))

(assert (= (and b!8028213 res!3175046) b!8028217))

(assert (= (and b!8028217 res!3175041) b!8028212))

(assert (= (and b!8028212 res!3175047) b!8028211))

(assert (= (and b!8028211 (not res!3175043)) b!8028216))

(assert (= (and b!8028216 (not res!3175040)) b!8028210))

(assert (= (and b!8028210 (not res!3175045)) b!8028215))

(assert (= (and b!8028215 (not res!3175044)) b!8028214))

(assert (= (and start!756112 ((_ is Cons!75002) p2!159)) b!8028218))

(assert (= (and start!756112 ((_ is Cons!75002) l!3185)) b!8028219))

(assert (= (and start!756112 ((_ is Cons!75002) p1!159)) b!8028221))

(assert (= (and start!756112 ((_ is Cons!75002) s1!480)) b!8028220))

(declare-fun m!8390276 () Bool)

(assert (=> b!8028211 m!8390276))

(declare-fun m!8390278 () Bool)

(assert (=> b!8028211 m!8390278))

(declare-fun m!8390280 () Bool)

(assert (=> b!8028216 m!8390280))

(declare-fun m!8390282 () Bool)

(assert (=> b!8028216 m!8390282))

(declare-fun m!8390284 () Bool)

(assert (=> b!8028216 m!8390284))

(declare-fun m!8390286 () Bool)

(assert (=> b!8028217 m!8390286))

(declare-fun m!8390288 () Bool)

(assert (=> b!8028213 m!8390288))

(declare-fun m!8390290 () Bool)

(assert (=> start!756112 m!8390290))

(declare-fun m!8390292 () Bool)

(assert (=> b!8028212 m!8390292))

(declare-fun m!8390294 () Bool)

(assert (=> b!8028212 m!8390294))

(declare-fun m!8390296 () Bool)

(assert (=> b!8028215 m!8390296))

(declare-fun m!8390298 () Bool)

(assert (=> b!8028215 m!8390298))

(declare-fun m!8390300 () Bool)

(assert (=> b!8028210 m!8390300))

(declare-fun m!8390302 () Bool)

(assert (=> b!8028214 m!8390302))

(declare-fun m!8390304 () Bool)

(assert (=> b!8028214 m!8390304))

(check-sat (not b!8028215) (not b!8028220) (not b!8028218) (not b!8028219) (not b!8028216) (not b!8028211) (not b!8028212) (not b!8028217) (not start!756112) (not b!8028214) tp_is_empty!54329 (not b!8028213) (not b!8028221) (not b!8028210))
(check-sat)
(get-model)

(declare-fun b!8028248 () Bool)

(declare-fun res!3175060 () Bool)

(declare-fun e!4729686 () Bool)

(assert (=> b!8028248 (=> (not res!3175060) (not e!4729686))))

(declare-fun lt!2721493 () List!75128)

(assert (=> b!8028248 (= res!3175060 (= (size!43737 lt!2721493) (+ (size!43737 (t!390884 p1!159)) (size!43737 s1!480))))))

(declare-fun b!8028246 () Bool)

(declare-fun e!4729687 () List!75128)

(assert (=> b!8028246 (= e!4729687 s1!480)))

(declare-fun b!8028247 () Bool)

(assert (=> b!8028247 (= e!4729687 (Cons!75002 (h!81450 (t!390884 p1!159)) (++!18604 (t!390884 (t!390884 p1!159)) s1!480)))))

(declare-fun b!8028249 () Bool)

(assert (=> b!8028249 (= e!4729686 (or (not (= s1!480 Nil!75002)) (= lt!2721493 (t!390884 p1!159))))))

(declare-fun d!2393908 () Bool)

(assert (=> d!2393908 e!4729686))

(declare-fun res!3175061 () Bool)

(assert (=> d!2393908 (=> (not res!3175061) (not e!4729686))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16010 (List!75128) (InoxSet B!4425))

(assert (=> d!2393908 (= res!3175061 (= (content!16010 lt!2721493) ((_ map or) (content!16010 (t!390884 p1!159)) (content!16010 s1!480))))))

(assert (=> d!2393908 (= lt!2721493 e!4729687)))

(declare-fun c!1472905 () Bool)

(assert (=> d!2393908 (= c!1472905 ((_ is Nil!75002) (t!390884 p1!159)))))

(assert (=> d!2393908 (= (++!18604 (t!390884 p1!159) s1!480) lt!2721493)))

(assert (= (and d!2393908 c!1472905) b!8028246))

(assert (= (and d!2393908 (not c!1472905)) b!8028247))

(assert (= (and d!2393908 res!3175061) b!8028248))

(assert (= (and b!8028248 res!3175060) b!8028249))

(declare-fun m!8390308 () Bool)

(assert (=> b!8028248 m!8390308))

(assert (=> b!8028248 m!8390296))

(declare-fun m!8390310 () Bool)

(assert (=> b!8028248 m!8390310))

(declare-fun m!8390312 () Bool)

(assert (=> b!8028247 m!8390312))

(declare-fun m!8390314 () Bool)

(assert (=> d!2393908 m!8390314))

(declare-fun m!8390316 () Bool)

(assert (=> d!2393908 m!8390316))

(declare-fun m!8390318 () Bool)

(assert (=> d!2393908 m!8390318))

(assert (=> b!8028210 d!2393908))

(declare-fun d!2393914 () Bool)

(declare-fun lt!2721499 () Int)

(assert (=> d!2393914 (>= lt!2721499 0)))

(declare-fun e!4729693 () Int)

(assert (=> d!2393914 (= lt!2721499 e!4729693)))

(declare-fun c!1472908 () Bool)

(assert (=> d!2393914 (= c!1472908 ((_ is Nil!75002) (t!390884 p1!159)))))

(assert (=> d!2393914 (= (size!43737 (t!390884 p1!159)) lt!2721499)))

(declare-fun b!8028258 () Bool)

(assert (=> b!8028258 (= e!4729693 0)))

(declare-fun b!8028259 () Bool)

(assert (=> b!8028259 (= e!4729693 (+ 1 (size!43737 (t!390884 (t!390884 p1!159)))))))

(assert (= (and d!2393914 c!1472908) b!8028258))

(assert (= (and d!2393914 (not c!1472908)) b!8028259))

(declare-fun m!8390332 () Bool)

(assert (=> b!8028259 m!8390332))

(assert (=> b!8028215 d!2393914))

(declare-fun d!2393918 () Bool)

(declare-fun lt!2721500 () Int)

(assert (=> d!2393918 (>= lt!2721500 0)))

(declare-fun e!4729694 () Int)

(assert (=> d!2393918 (= lt!2721500 e!4729694)))

(declare-fun c!1472909 () Bool)

(assert (=> d!2393918 (= c!1472909 ((_ is Nil!75002) lt!2721484))))

(assert (=> d!2393918 (= (size!43737 lt!2721484) lt!2721500)))

(declare-fun b!8028260 () Bool)

(assert (=> b!8028260 (= e!4729694 0)))

(declare-fun b!8028261 () Bool)

(assert (=> b!8028261 (= e!4729694 (+ 1 (size!43737 (t!390884 lt!2721484))))))

(assert (= (and d!2393918 c!1472909) b!8028260))

(assert (= (and d!2393918 (not c!1472909)) b!8028261))

(declare-fun m!8390334 () Bool)

(assert (=> b!8028261 m!8390334))

(assert (=> b!8028215 d!2393918))

(declare-fun d!2393920 () Bool)

(assert (=> d!2393920 (= (isEmpty!43010 s1!480) ((_ is Nil!75002) s1!480))))

(assert (=> b!8028217 d!2393920))

(declare-fun d!2393924 () Bool)

(declare-fun e!4729711 () Bool)

(assert (=> d!2393924 e!4729711))

(declare-fun res!3175084 () Bool)

(assert (=> d!2393924 (=> res!3175084 e!4729711)))

(declare-fun lt!2721509 () Bool)

(assert (=> d!2393924 (= res!3175084 (not lt!2721509))))

(declare-fun e!4729710 () Bool)

(assert (=> d!2393924 (= lt!2721509 e!4729710)))

(declare-fun res!3175083 () Bool)

(assert (=> d!2393924 (=> res!3175083 e!4729710)))

(assert (=> d!2393924 (= res!3175083 ((_ is Nil!75002) p1!159))))

(assert (=> d!2393924 (= (isPrefix!6877 p1!159 lt!2721482) lt!2721509)))

(declare-fun b!8028287 () Bool)

(declare-fun res!3175085 () Bool)

(declare-fun e!4729712 () Bool)

(assert (=> b!8028287 (=> (not res!3175085) (not e!4729712))))

(declare-fun head!16490 (List!75128) B!4425)

(assert (=> b!8028287 (= res!3175085 (= (head!16490 p1!159) (head!16490 lt!2721482)))))

(declare-fun b!8028286 () Bool)

(assert (=> b!8028286 (= e!4729710 e!4729712)))

(declare-fun res!3175082 () Bool)

(assert (=> b!8028286 (=> (not res!3175082) (not e!4729712))))

(assert (=> b!8028286 (= res!3175082 (not ((_ is Nil!75002) lt!2721482)))))

(declare-fun b!8028288 () Bool)

(assert (=> b!8028288 (= e!4729712 (isPrefix!6877 (tail!16035 p1!159) (tail!16035 lt!2721482)))))

(declare-fun b!8028289 () Bool)

(assert (=> b!8028289 (= e!4729711 (>= (size!43737 lt!2721482) (size!43737 p1!159)))))

(assert (= (and d!2393924 (not res!3175083)) b!8028286))

(assert (= (and b!8028286 res!3175082) b!8028287))

(assert (= (and b!8028287 res!3175085) b!8028288))

(assert (= (and d!2393924 (not res!3175084)) b!8028289))

(declare-fun m!8390352 () Bool)

(assert (=> b!8028287 m!8390352))

(declare-fun m!8390354 () Bool)

(assert (=> b!8028287 m!8390354))

(declare-fun m!8390356 () Bool)

(assert (=> b!8028288 m!8390356))

(declare-fun m!8390358 () Bool)

(assert (=> b!8028288 m!8390358))

(assert (=> b!8028288 m!8390356))

(assert (=> b!8028288 m!8390358))

(declare-fun m!8390360 () Bool)

(assert (=> b!8028288 m!8390360))

(declare-fun m!8390362 () Bool)

(assert (=> b!8028289 m!8390362))

(assert (=> b!8028289 m!8390292))

(assert (=> b!8028211 d!2393924))

(declare-fun d!2393932 () Bool)

(assert (=> d!2393932 (isPrefix!6877 p1!159 (++!18604 p1!159 s1!480))))

(declare-fun lt!2721514 () Unit!170988)

(declare-fun choose!60468 (List!75128 List!75128) Unit!170988)

(assert (=> d!2393932 (= lt!2721514 (choose!60468 p1!159 s1!480))))

(assert (=> d!2393932 (= (lemmaConcatTwoListThenFirstIsPrefix!3996 p1!159 s1!480) lt!2721514)))

(declare-fun bs!1971378 () Bool)

(assert (= bs!1971378 d!2393932))

(assert (=> bs!1971378 m!8390288))

(assert (=> bs!1971378 m!8390288))

(declare-fun m!8390382 () Bool)

(assert (=> bs!1971378 m!8390382))

(declare-fun m!8390384 () Bool)

(assert (=> bs!1971378 m!8390384))

(assert (=> b!8028211 d!2393932))

(declare-fun d!2393940 () Bool)

(declare-fun e!4729718 () Bool)

(assert (=> d!2393940 e!4729718))

(declare-fun res!3175092 () Bool)

(assert (=> d!2393940 (=> res!3175092 e!4729718)))

(declare-fun lt!2721515 () Bool)

(assert (=> d!2393940 (= res!3175092 (not lt!2721515))))

(declare-fun e!4729717 () Bool)

(assert (=> d!2393940 (= lt!2721515 e!4729717)))

(declare-fun res!3175091 () Bool)

(assert (=> d!2393940 (=> res!3175091 e!4729717)))

(assert (=> d!2393940 (= res!3175091 ((_ is Nil!75002) lt!2721484))))

(assert (=> d!2393940 (= (isPrefix!6877 lt!2721484 lt!2721483) lt!2721515)))

(declare-fun b!8028299 () Bool)

(declare-fun res!3175093 () Bool)

(declare-fun e!4729719 () Bool)

(assert (=> b!8028299 (=> (not res!3175093) (not e!4729719))))

(assert (=> b!8028299 (= res!3175093 (= (head!16490 lt!2721484) (head!16490 lt!2721483)))))

(declare-fun b!8028298 () Bool)

(assert (=> b!8028298 (= e!4729717 e!4729719)))

(declare-fun res!3175090 () Bool)

(assert (=> b!8028298 (=> (not res!3175090) (not e!4729719))))

(assert (=> b!8028298 (= res!3175090 (not ((_ is Nil!75002) lt!2721483)))))

(declare-fun b!8028300 () Bool)

(assert (=> b!8028300 (= e!4729719 (isPrefix!6877 (tail!16035 lt!2721484) (tail!16035 lt!2721483)))))

(declare-fun b!8028301 () Bool)

(assert (=> b!8028301 (= e!4729718 (>= (size!43737 lt!2721483) (size!43737 lt!2721484)))))

(assert (= (and d!2393940 (not res!3175091)) b!8028298))

(assert (= (and b!8028298 res!3175090) b!8028299))

(assert (= (and b!8028299 res!3175093) b!8028300))

(assert (= (and d!2393940 (not res!3175092)) b!8028301))

(declare-fun m!8390386 () Bool)

(assert (=> b!8028299 m!8390386))

(declare-fun m!8390388 () Bool)

(assert (=> b!8028299 m!8390388))

(declare-fun m!8390390 () Bool)

(assert (=> b!8028300 m!8390390))

(declare-fun m!8390392 () Bool)

(assert (=> b!8028300 m!8390392))

(assert (=> b!8028300 m!8390390))

(assert (=> b!8028300 m!8390392))

(declare-fun m!8390394 () Bool)

(assert (=> b!8028300 m!8390394))

(declare-fun m!8390396 () Bool)

(assert (=> b!8028301 m!8390396))

(assert (=> b!8028301 m!8390298))

(assert (=> b!8028216 d!2393940))

(declare-fun d!2393942 () Bool)

(assert (=> d!2393942 (= (tail!16035 l!3185) (t!390884 l!3185))))

(assert (=> b!8028216 d!2393942))

(declare-fun d!2393944 () Bool)

(assert (=> d!2393944 (= (tail!16035 p2!159) (t!390884 p2!159))))

(assert (=> b!8028216 d!2393944))

(declare-fun b!8028308 () Bool)

(declare-fun res!3175094 () Bool)

(declare-fun e!4729722 () Bool)

(assert (=> b!8028308 (=> (not res!3175094) (not e!4729722))))

(declare-fun lt!2721518 () List!75128)

(assert (=> b!8028308 (= res!3175094 (= (size!43737 lt!2721518) (+ (size!43737 p1!159) (size!43737 s1!480))))))

(declare-fun b!8028306 () Bool)

(declare-fun e!4729723 () List!75128)

(assert (=> b!8028306 (= e!4729723 s1!480)))

(declare-fun b!8028307 () Bool)

(assert (=> b!8028307 (= e!4729723 (Cons!75002 (h!81450 p1!159) (++!18604 (t!390884 p1!159) s1!480)))))

(declare-fun b!8028309 () Bool)

(assert (=> b!8028309 (= e!4729722 (or (not (= s1!480 Nil!75002)) (= lt!2721518 p1!159)))))

(declare-fun d!2393946 () Bool)

(assert (=> d!2393946 e!4729722))

(declare-fun res!3175095 () Bool)

(assert (=> d!2393946 (=> (not res!3175095) (not e!4729722))))

(assert (=> d!2393946 (= res!3175095 (= (content!16010 lt!2721518) ((_ map or) (content!16010 p1!159) (content!16010 s1!480))))))

(assert (=> d!2393946 (= lt!2721518 e!4729723)))

(declare-fun c!1472918 () Bool)

(assert (=> d!2393946 (= c!1472918 ((_ is Nil!75002) p1!159))))

(assert (=> d!2393946 (= (++!18604 p1!159 s1!480) lt!2721518)))

(assert (= (and d!2393946 c!1472918) b!8028306))

(assert (= (and d!2393946 (not c!1472918)) b!8028307))

(assert (= (and d!2393946 res!3175095) b!8028308))

(assert (= (and b!8028308 res!3175094) b!8028309))

(declare-fun m!8390398 () Bool)

(assert (=> b!8028308 m!8390398))

(assert (=> b!8028308 m!8390292))

(assert (=> b!8028308 m!8390310))

(assert (=> b!8028307 m!8390300))

(declare-fun m!8390400 () Bool)

(assert (=> d!2393946 m!8390400))

(declare-fun m!8390402 () Bool)

(assert (=> d!2393946 m!8390402))

(assert (=> d!2393946 m!8390318))

(assert (=> b!8028213 d!2393946))

(declare-fun d!2393948 () Bool)

(declare-fun lt!2721519 () Int)

(assert (=> d!2393948 (>= lt!2721519 0)))

(declare-fun e!4729724 () Int)

(assert (=> d!2393948 (= lt!2721519 e!4729724)))

(declare-fun c!1472919 () Bool)

(assert (=> d!2393948 (= c!1472919 ((_ is Nil!75002) p1!159))))

(assert (=> d!2393948 (= (size!43737 p1!159) lt!2721519)))

(declare-fun b!8028310 () Bool)

(assert (=> b!8028310 (= e!4729724 0)))

(declare-fun b!8028311 () Bool)

(assert (=> b!8028311 (= e!4729724 (+ 1 (size!43737 (t!390884 p1!159))))))

(assert (= (and d!2393948 c!1472919) b!8028310))

(assert (= (and d!2393948 (not c!1472919)) b!8028311))

(assert (=> b!8028311 m!8390296))

(assert (=> b!8028212 d!2393948))

(declare-fun d!2393950 () Bool)

(declare-fun lt!2721520 () Int)

(assert (=> d!2393950 (>= lt!2721520 0)))

(declare-fun e!4729725 () Int)

(assert (=> d!2393950 (= lt!2721520 e!4729725)))

(declare-fun c!1472920 () Bool)

(assert (=> d!2393950 (= c!1472920 ((_ is Nil!75002) p2!159))))

(assert (=> d!2393950 (= (size!43737 p2!159) lt!2721520)))

(declare-fun b!8028312 () Bool)

(assert (=> b!8028312 (= e!4729725 0)))

(declare-fun b!8028313 () Bool)

(assert (=> b!8028313 (= e!4729725 (+ 1 (size!43737 (t!390884 p2!159))))))

(assert (= (and d!2393950 c!1472920) b!8028312))

(assert (= (and d!2393950 (not c!1472920)) b!8028313))

(declare-fun m!8390404 () Bool)

(assert (=> b!8028313 m!8390404))

(assert (=> b!8028212 d!2393950))

(declare-fun d!2393952 () Bool)

(declare-fun e!4729728 () Bool)

(assert (=> d!2393952 e!4729728))

(declare-fun res!3175098 () Bool)

(assert (=> d!2393952 (=> res!3175098 e!4729728)))

(declare-fun lt!2721522 () Bool)

(assert (=> d!2393952 (= res!3175098 (not lt!2721522))))

(declare-fun e!4729727 () Bool)

(assert (=> d!2393952 (= lt!2721522 e!4729727)))

(declare-fun res!3175097 () Bool)

(assert (=> d!2393952 (=> res!3175097 e!4729727)))

(assert (=> d!2393952 (= res!3175097 ((_ is Nil!75002) p2!159))))

(assert (=> d!2393952 (= (isPrefix!6877 p2!159 l!3185) lt!2721522)))

(declare-fun b!8028317 () Bool)

(declare-fun res!3175099 () Bool)

(declare-fun e!4729729 () Bool)

(assert (=> b!8028317 (=> (not res!3175099) (not e!4729729))))

(assert (=> b!8028317 (= res!3175099 (= (head!16490 p2!159) (head!16490 l!3185)))))

(declare-fun b!8028316 () Bool)

(assert (=> b!8028316 (= e!4729727 e!4729729)))

(declare-fun res!3175096 () Bool)

(assert (=> b!8028316 (=> (not res!3175096) (not e!4729729))))

(assert (=> b!8028316 (= res!3175096 (not ((_ is Nil!75002) l!3185)))))

(declare-fun b!8028318 () Bool)

(assert (=> b!8028318 (= e!4729729 (isPrefix!6877 (tail!16035 p2!159) (tail!16035 l!3185)))))

(declare-fun b!8028319 () Bool)

(assert (=> b!8028319 (= e!4729728 (>= (size!43737 l!3185) (size!43737 p2!159)))))

(assert (= (and d!2393952 (not res!3175097)) b!8028316))

(assert (= (and b!8028316 res!3175096) b!8028317))

(assert (= (and b!8028317 res!3175099) b!8028318))

(assert (= (and d!2393952 (not res!3175098)) b!8028319))

(declare-fun m!8390408 () Bool)

(assert (=> b!8028317 m!8390408))

(declare-fun m!8390410 () Bool)

(assert (=> b!8028317 m!8390410))

(assert (=> b!8028318 m!8390284))

(assert (=> b!8028318 m!8390282))

(assert (=> b!8028318 m!8390284))

(assert (=> b!8028318 m!8390282))

(declare-fun m!8390412 () Bool)

(assert (=> b!8028318 m!8390412))

(declare-fun m!8390414 () Bool)

(assert (=> b!8028319 m!8390414))

(assert (=> b!8028319 m!8390294))

(assert (=> start!756112 d!2393952))

(declare-fun d!2393958 () Bool)

(declare-fun lt!2721527 () Int)

(assert (=> d!2393958 (>= lt!2721527 0)))

(declare-fun e!4729742 () Int)

(assert (=> d!2393958 (= lt!2721527 e!4729742)))

(declare-fun c!1472925 () Bool)

(assert (=> d!2393958 (= c!1472925 ((_ is Nil!75002) (t!390884 p1!159)))))

(assert (=> d!2393958 (= (ListPrimitiveSize!521 (t!390884 p1!159)) lt!2721527)))

(declare-fun b!8028338 () Bool)

(assert (=> b!8028338 (= e!4729742 0)))

(declare-fun b!8028339 () Bool)

(assert (=> b!8028339 (= e!4729742 (+ 1 (ListPrimitiveSize!521 (t!390884 (t!390884 p1!159)))))))

(assert (= (and d!2393958 c!1472925) b!8028338))

(assert (= (and d!2393958 (not c!1472925)) b!8028339))

(declare-fun m!8390428 () Bool)

(assert (=> b!8028339 m!8390428))

(assert (=> b!8028214 d!2393958))

(declare-fun d!2393964 () Bool)

(declare-fun lt!2721528 () Int)

(assert (=> d!2393964 (>= lt!2721528 0)))

(declare-fun e!4729743 () Int)

(assert (=> d!2393964 (= lt!2721528 e!4729743)))

(declare-fun c!1472926 () Bool)

(assert (=> d!2393964 (= c!1472926 ((_ is Nil!75002) p1!159))))

(assert (=> d!2393964 (= (ListPrimitiveSize!521 p1!159) lt!2721528)))

(declare-fun b!8028340 () Bool)

(assert (=> b!8028340 (= e!4729743 0)))

(declare-fun b!8028341 () Bool)

(assert (=> b!8028341 (= e!4729743 (+ 1 (ListPrimitiveSize!521 (t!390884 p1!159))))))

(assert (= (and d!2393964 c!1472926) b!8028340))

(assert (= (and d!2393964 (not c!1472926)) b!8028341))

(assert (=> b!8028341 m!8390302))

(assert (=> b!8028214 d!2393964))

(declare-fun b!8028346 () Bool)

(declare-fun e!4729746 () Bool)

(declare-fun tp!2402504 () Bool)

(assert (=> b!8028346 (= e!4729746 (and tp_is_empty!54329 tp!2402504))))

(assert (=> b!8028221 (= tp!2402494 e!4729746)))

(assert (= (and b!8028221 ((_ is Cons!75002) (t!390884 p1!159))) b!8028346))

(declare-fun b!8028347 () Bool)

(declare-fun e!4729747 () Bool)

(declare-fun tp!2402505 () Bool)

(assert (=> b!8028347 (= e!4729747 (and tp_is_empty!54329 tp!2402505))))

(assert (=> b!8028220 (= tp!2402495 e!4729747)))

(assert (= (and b!8028220 ((_ is Cons!75002) (t!390884 s1!480))) b!8028347))

(declare-fun b!8028348 () Bool)

(declare-fun e!4729748 () Bool)

(declare-fun tp!2402506 () Bool)

(assert (=> b!8028348 (= e!4729748 (and tp_is_empty!54329 tp!2402506))))

(assert (=> b!8028218 (= tp!2402493 e!4729748)))

(assert (= (and b!8028218 ((_ is Cons!75002) (t!390884 p2!159))) b!8028348))

(declare-fun b!8028349 () Bool)

(declare-fun e!4729749 () Bool)

(declare-fun tp!2402507 () Bool)

(assert (=> b!8028349 (= e!4729749 (and tp_is_empty!54329 tp!2402507))))

(assert (=> b!8028219 (= tp!2402492 e!4729749)))

(assert (= (and b!8028219 ((_ is Cons!75002) (t!390884 l!3185))) b!8028349))

(check-sat (not b!8028313) (not b!8028318) tp_is_empty!54329 (not b!8028349) (not d!2393932) (not b!8028311) (not b!8028287) (not b!8028299) (not b!8028307) (not b!8028346) (not b!8028339) (not b!8028301) (not b!8028347) (not b!8028300) (not b!8028259) (not d!2393908) (not b!8028319) (not b!8028348) (not b!8028341) (not b!8028247) (not b!8028308) (not b!8028289) (not b!8028288) (not b!8028261) (not b!8028317) (not d!2393946) (not b!8028248))
(check-sat)
