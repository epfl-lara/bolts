; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!182866 () Bool)

(assert start!182866)

(declare-fun b!1838290 () Bool)

(declare-fun e!1174679 () Bool)

(declare-datatypes ((B!1489 0))(
  ( (B!1490 (val!5692 Int)) )
))
(declare-datatypes ((List!20292 0))(
  ( (Nil!20222) (Cons!20222 (h!25623 B!1489) (t!171721 List!20292)) )
))
(declare-fun l!3005 () List!20292)

(declare-fun ListPrimitiveSize!116 (List!20292) Int)

(assert (=> b!1838290 (= e!1174679 (>= (ListPrimitiveSize!116 (t!171721 l!3005)) (ListPrimitiveSize!116 l!3005)))))

(declare-fun res!826206 () Bool)

(declare-fun e!1174682 () Bool)

(assert (=> start!182866 (=> (not res!826206) (not e!1174682))))

(declare-fun i!921 () Int)

(get-info :version)

(assert (=> start!182866 (= res!826206 (and (>= i!921 0) (not ((_ is Nil!20222) l!3005)) (not (= i!921 0))))))

(assert (=> start!182866 e!1174682))

(assert (=> start!182866 true))

(declare-fun e!1174681 () Bool)

(assert (=> start!182866 e!1174681))

(declare-fun e!1174680 () Bool)

(assert (=> start!182866 e!1174680))

(declare-fun b!1838291 () Bool)

(declare-fun tp_is_empty!8237 () Bool)

(declare-fun tp!520056 () Bool)

(assert (=> b!1838291 (= e!1174681 (and tp_is_empty!8237 tp!520056))))

(declare-fun b!1838289 () Bool)

(assert (=> b!1838289 (= e!1174682 e!1174679)))

(declare-fun res!826205 () Bool)

(assert (=> b!1838289 (=> (not res!826205) (not e!1174679))))

(assert (=> b!1838289 (= res!826205 (>= (- i!921 1) 0))))

(declare-fun lt!713458 () List!20292)

(declare-fun acc!274 () List!20292)

(declare-fun ++!5493 (List!20292 List!20292) List!20292)

(assert (=> b!1838289 (= lt!713458 (++!5493 acc!274 (Cons!20222 (h!25623 l!3005) Nil!20222)))))

(declare-fun b!1838292 () Bool)

(declare-fun tp!520055 () Bool)

(assert (=> b!1838292 (= e!1174680 (and tp_is_empty!8237 tp!520055))))

(assert (= (and start!182866 res!826206) b!1838289))

(assert (= (and b!1838289 res!826205) b!1838290))

(assert (= (and start!182866 ((_ is Cons!20222) l!3005)) b!1838291))

(assert (= (and start!182866 ((_ is Cons!20222) acc!274)) b!1838292))

(declare-fun m!2266071 () Bool)

(assert (=> b!1838290 m!2266071))

(declare-fun m!2266073 () Bool)

(assert (=> b!1838290 m!2266073))

(declare-fun m!2266075 () Bool)

(assert (=> b!1838289 m!2266075))

(check-sat tp_is_empty!8237 (not b!1838291) (not b!1838292) (not b!1838290) (not b!1838289))
(check-sat)
(get-model)

(declare-fun d!562104 () Bool)

(declare-fun e!1174696 () Bool)

(assert (=> d!562104 e!1174696))

(declare-fun res!826217 () Bool)

(assert (=> d!562104 (=> (not res!826217) (not e!1174696))))

(declare-fun lt!713466 () List!20292)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3011 (List!20292) (InoxSet B!1489))

(assert (=> d!562104 (= res!826217 (= (content!3011 lt!713466) ((_ map or) (content!3011 acc!274) (content!3011 (Cons!20222 (h!25623 l!3005) Nil!20222)))))))

(declare-fun e!1174695 () List!20292)

(assert (=> d!562104 (= lt!713466 e!1174695)))

(declare-fun c!299975 () Bool)

(assert (=> d!562104 (= c!299975 ((_ is Nil!20222) acc!274))))

(assert (=> d!562104 (= (++!5493 acc!274 (Cons!20222 (h!25623 l!3005) Nil!20222)) lt!713466)))

(declare-fun b!1838318 () Bool)

(assert (=> b!1838318 (= e!1174695 (Cons!20222 (h!25623 acc!274) (++!5493 (t!171721 acc!274) (Cons!20222 (h!25623 l!3005) Nil!20222))))))

(declare-fun b!1838320 () Bool)

(assert (=> b!1838320 (= e!1174696 (or (not (= (Cons!20222 (h!25623 l!3005) Nil!20222) Nil!20222)) (= lt!713466 acc!274)))))

(declare-fun b!1838319 () Bool)

(declare-fun res!826218 () Bool)

(assert (=> b!1838319 (=> (not res!826218) (not e!1174696))))

(declare-fun size!16032 (List!20292) Int)

(assert (=> b!1838319 (= res!826218 (= (size!16032 lt!713466) (+ (size!16032 acc!274) (size!16032 (Cons!20222 (h!25623 l!3005) Nil!20222)))))))

(declare-fun b!1838317 () Bool)

(assert (=> b!1838317 (= e!1174695 (Cons!20222 (h!25623 l!3005) Nil!20222))))

(assert (= (and d!562104 c!299975) b!1838317))

(assert (= (and d!562104 (not c!299975)) b!1838318))

(assert (= (and d!562104 res!826217) b!1838319))

(assert (= (and b!1838319 res!826218) b!1838320))

(declare-fun m!2266091 () Bool)

(assert (=> d!562104 m!2266091))

(declare-fun m!2266093 () Bool)

(assert (=> d!562104 m!2266093))

(declare-fun m!2266095 () Bool)

(assert (=> d!562104 m!2266095))

(declare-fun m!2266097 () Bool)

(assert (=> b!1838318 m!2266097))

(declare-fun m!2266099 () Bool)

(assert (=> b!1838319 m!2266099))

(declare-fun m!2266101 () Bool)

(assert (=> b!1838319 m!2266101))

(declare-fun m!2266103 () Bool)

(assert (=> b!1838319 m!2266103))

(assert (=> b!1838289 d!562104))

(declare-fun d!562108 () Bool)

(declare-fun lt!713471 () Int)

(assert (=> d!562108 (>= lt!713471 0)))

(declare-fun e!1174705 () Int)

(assert (=> d!562108 (= lt!713471 e!1174705)))

(declare-fun c!299980 () Bool)

(assert (=> d!562108 (= c!299980 ((_ is Nil!20222) (t!171721 l!3005)))))

(assert (=> d!562108 (= (ListPrimitiveSize!116 (t!171721 l!3005)) lt!713471)))

(declare-fun b!1838335 () Bool)

(assert (=> b!1838335 (= e!1174705 0)))

(declare-fun b!1838336 () Bool)

(assert (=> b!1838336 (= e!1174705 (+ 1 (ListPrimitiveSize!116 (t!171721 (t!171721 l!3005)))))))

(assert (= (and d!562108 c!299980) b!1838335))

(assert (= (and d!562108 (not c!299980)) b!1838336))

(declare-fun m!2266107 () Bool)

(assert (=> b!1838336 m!2266107))

(assert (=> b!1838290 d!562108))

(declare-fun d!562112 () Bool)

(declare-fun lt!713472 () Int)

(assert (=> d!562112 (>= lt!713472 0)))

(declare-fun e!1174706 () Int)

(assert (=> d!562112 (= lt!713472 e!1174706)))

(declare-fun c!299981 () Bool)

(assert (=> d!562112 (= c!299981 ((_ is Nil!20222) l!3005))))

(assert (=> d!562112 (= (ListPrimitiveSize!116 l!3005) lt!713472)))

(declare-fun b!1838337 () Bool)

(assert (=> b!1838337 (= e!1174706 0)))

(declare-fun b!1838338 () Bool)

(assert (=> b!1838338 (= e!1174706 (+ 1 (ListPrimitiveSize!116 (t!171721 l!3005))))))

(assert (= (and d!562112 c!299981) b!1838337))

(assert (= (and d!562112 (not c!299981)) b!1838338))

(assert (=> b!1838338 m!2266071))

(assert (=> b!1838290 d!562112))

(declare-fun b!1838343 () Bool)

(declare-fun e!1174709 () Bool)

(declare-fun tp!520063 () Bool)

(assert (=> b!1838343 (= e!1174709 (and tp_is_empty!8237 tp!520063))))

(assert (=> b!1838291 (= tp!520056 e!1174709)))

(assert (= (and b!1838291 ((_ is Cons!20222) (t!171721 l!3005))) b!1838343))

(declare-fun b!1838344 () Bool)

(declare-fun e!1174710 () Bool)

(declare-fun tp!520064 () Bool)

(assert (=> b!1838344 (= e!1174710 (and tp_is_empty!8237 tp!520064))))

(assert (=> b!1838292 (= tp!520055 e!1174710)))

(assert (= (and b!1838292 ((_ is Cons!20222) (t!171721 acc!274))) b!1838344))

(check-sat (not b!1838343) tp_is_empty!8237 (not d!562104) (not b!1838318) (not b!1838336) (not b!1838338) (not b!1838319) (not b!1838344))
(check-sat)
