; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506416 () Bool)

(assert start!506416)

(declare-fun res!2071217 () Bool)

(declare-fun e!3033300 () Bool)

(assert (=> start!506416 (=> (not res!2071217) (not e!3033300))))

(declare-fun e!3033302 () Bool)

(assert (=> start!506416 (= res!2071217 e!3033302)))

(declare-fun res!2071218 () Bool)

(assert (=> start!506416 (=> res!2071218 e!3033302)))

(declare-datatypes ((K!17464 0))(
  ( (K!17465 (val!22277 Int)) )
))
(declare-datatypes ((V!17710 0))(
  ( (V!17711 (val!22278 Int)) )
))
(declare-datatypes ((tuple2!59390 0))(
  ( (tuple2!59391 (_1!32989 K!17464) (_2!32989 V!17710)) )
))
(declare-datatypes ((List!55752 0))(
  ( (Nil!55628) (Cons!55628 (h!62065 tuple2!59390) (t!363248 List!55752)) )
))
(declare-datatypes ((tuple2!59392 0))(
  ( (tuple2!59393 (_1!32990 (_ BitVec 64)) (_2!32990 List!55752)) )
))
(declare-datatypes ((List!55753 0))(
  ( (Nil!55629) (Cons!55629 (h!62066 tuple2!59392) (t!363249 List!55753)) )
))
(declare-fun l!11074 () List!55753)

(get-info :version)

(assert (=> start!506416 (= res!2071218 (not ((_ is Cons!55629) l!11074)))))

(assert (=> start!506416 e!3033300))

(declare-fun e!3033301 () Bool)

(assert (=> start!506416 e!3033301))

(declare-fun tp_is_empty!35343 () Bool)

(assert (=> start!506416 tp_is_empty!35343))

(declare-fun b!4852155 () Bool)

(declare-fun res!2071219 () Bool)

(assert (=> b!4852155 (=> (not res!2071219) (not e!3033300))))

(assert (=> b!4852155 (= res!2071219 ((_ is Cons!55629) l!11074))))

(declare-fun b!4852156 () Bool)

(declare-fun ListPrimitiveSize!365 (List!55753) Int)

(assert (=> b!4852156 (= e!3033300 (>= (ListPrimitiveSize!365 (t!363249 l!11074)) (ListPrimitiveSize!365 l!11074)))))

(declare-fun b!4852154 () Bool)

(declare-fun key!2502 () K!17464)

(declare-fun containsKey!4732 (List!55752 K!17464) Bool)

(assert (=> b!4852154 (= e!3033302 (not (containsKey!4732 (_2!32990 (h!62066 l!11074)) key!2502)))))

(declare-fun b!4852157 () Bool)

(declare-fun tp!1365018 () Bool)

(declare-fun tp!1365017 () Bool)

(assert (=> b!4852157 (= e!3033301 (and tp!1365018 tp!1365017))))

(assert (= (and start!506416 (not res!2071218)) b!4852154))

(assert (= (and start!506416 res!2071217) b!4852155))

(assert (= (and b!4852155 res!2071219) b!4852156))

(assert (= (and start!506416 ((_ is Cons!55629) l!11074)) b!4852157))

(declare-fun m!5850422 () Bool)

(assert (=> b!4852156 m!5850422))

(declare-fun m!5850424 () Bool)

(assert (=> b!4852156 m!5850424))

(declare-fun m!5850426 () Bool)

(assert (=> b!4852154 m!5850426))

(check-sat (not b!4852156) (not b!4852154) (not b!4852157) tp_is_empty!35343)
(check-sat)
(get-model)

(declare-fun d!1557578 () Bool)

(declare-fun lt!1990137 () Int)

(assert (=> d!1557578 (>= lt!1990137 0)))

(declare-fun e!3033311 () Int)

(assert (=> d!1557578 (= lt!1990137 e!3033311)))

(declare-fun c!825671 () Bool)

(assert (=> d!1557578 (= c!825671 ((_ is Nil!55629) (t!363249 l!11074)))))

(assert (=> d!1557578 (= (ListPrimitiveSize!365 (t!363249 l!11074)) lt!1990137)))

(declare-fun b!4852168 () Bool)

(assert (=> b!4852168 (= e!3033311 0)))

(declare-fun b!4852169 () Bool)

(assert (=> b!4852169 (= e!3033311 (+ 1 (ListPrimitiveSize!365 (t!363249 (t!363249 l!11074)))))))

(assert (= (and d!1557578 c!825671) b!4852168))

(assert (= (and d!1557578 (not c!825671)) b!4852169))

(declare-fun m!5850430 () Bool)

(assert (=> b!4852169 m!5850430))

(assert (=> b!4852156 d!1557578))

(declare-fun d!1557582 () Bool)

(declare-fun lt!1990138 () Int)

(assert (=> d!1557582 (>= lt!1990138 0)))

(declare-fun e!3033312 () Int)

(assert (=> d!1557582 (= lt!1990138 e!3033312)))

(declare-fun c!825672 () Bool)

(assert (=> d!1557582 (= c!825672 ((_ is Nil!55629) l!11074))))

(assert (=> d!1557582 (= (ListPrimitiveSize!365 l!11074) lt!1990138)))

(declare-fun b!4852170 () Bool)

(assert (=> b!4852170 (= e!3033312 0)))

(declare-fun b!4852171 () Bool)

(assert (=> b!4852171 (= e!3033312 (+ 1 (ListPrimitiveSize!365 (t!363249 l!11074))))))

(assert (= (and d!1557582 c!825672) b!4852170))

(assert (= (and d!1557582 (not c!825672)) b!4852171))

(assert (=> b!4852171 m!5850422))

(assert (=> b!4852156 d!1557582))

(declare-fun d!1557584 () Bool)

(declare-fun res!2071230 () Bool)

(declare-fun e!3033321 () Bool)

(assert (=> d!1557584 (=> res!2071230 e!3033321)))

(assert (=> d!1557584 (= res!2071230 (and ((_ is Cons!55628) (_2!32990 (h!62066 l!11074))) (= (_1!32989 (h!62065 (_2!32990 (h!62066 l!11074)))) key!2502)))))

(assert (=> d!1557584 (= (containsKey!4732 (_2!32990 (h!62066 l!11074)) key!2502) e!3033321)))

(declare-fun b!4852184 () Bool)

(declare-fun e!3033322 () Bool)

(assert (=> b!4852184 (= e!3033321 e!3033322)))

(declare-fun res!2071231 () Bool)

(assert (=> b!4852184 (=> (not res!2071231) (not e!3033322))))

(assert (=> b!4852184 (= res!2071231 ((_ is Cons!55628) (_2!32990 (h!62066 l!11074))))))

(declare-fun b!4852185 () Bool)

(assert (=> b!4852185 (= e!3033322 (containsKey!4732 (t!363248 (_2!32990 (h!62066 l!11074))) key!2502))))

(assert (= (and d!1557584 (not res!2071230)) b!4852184))

(assert (= (and b!4852184 res!2071231) b!4852185))

(declare-fun m!5850434 () Bool)

(assert (=> b!4852185 m!5850434))

(assert (=> b!4852154 d!1557584))

(declare-fun tp_is_empty!35347 () Bool)

(declare-fun tp!1365026 () Bool)

(declare-fun b!4852199 () Bool)

(declare-fun e!3033330 () Bool)

(assert (=> b!4852199 (= e!3033330 (and tp_is_empty!35343 tp_is_empty!35347 tp!1365026))))

(assert (=> b!4852157 (= tp!1365018 e!3033330)))

(assert (= (and b!4852157 ((_ is Cons!55628) (_2!32990 (h!62066 l!11074)))) b!4852199))

(declare-fun b!4852205 () Bool)

(declare-fun e!3033334 () Bool)

(declare-fun tp!1365035 () Bool)

(declare-fun tp!1365036 () Bool)

(assert (=> b!4852205 (= e!3033334 (and tp!1365035 tp!1365036))))

(assert (=> b!4852157 (= tp!1365017 e!3033334)))

(assert (= (and b!4852157 ((_ is Cons!55629) (t!363249 l!11074))) b!4852205))

(check-sat tp_is_empty!35343 tp_is_empty!35347 (not b!4852171) (not b!4852199) (not b!4852169) (not b!4852185) (not b!4852205))
(check-sat)
