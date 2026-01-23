; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251012 () Bool)

(assert start!251012)

(declare-fun b!2591047 () Bool)

(assert (=> b!2591047 true))

(declare-fun b!2591040 () Bool)

(declare-fun res!1089510 () Bool)

(declare-fun e!1634481 () Bool)

(assert (=> b!2591040 (=> res!1089510 e!1634481)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!2017 0))(
  ( (B!2018 (val!9476 Int)) )
))
(declare-fun lt!911213 () (InoxSet B!2017))

(declare-datatypes ((List!29909 0))(
  ( (Nil!29809) (Cons!29809 (h!35229 B!2017) (t!212922 List!29909)) )
))
(declare-fun l!3230 () List!29909)

(declare-fun content!4150 (List!29909) (InoxSet B!2017))

(assert (=> b!2591040 (= res!1089510 (not (= lt!911213 (content!4150 l!3230))))))

(declare-fun b!2591041 () Bool)

(declare-fun e!1634484 () Bool)

(declare-fun tp_is_empty!13297 () Bool)

(declare-fun tp!822674 () Bool)

(assert (=> b!2591041 (= e!1634484 (and tp_is_empty!13297 tp!822674))))

(declare-fun res!1089509 () Bool)

(declare-fun e!1634485 () Bool)

(assert (=> start!251012 (=> (not res!1089509) (not e!1634485))))

(declare-fun noDuplicate!357 (List!29909) Bool)

(assert (=> start!251012 (= res!1089509 (noDuplicate!357 l!3230))))

(assert (=> start!251012 e!1634485))

(assert (=> start!251012 e!1634484))

(declare-fun b!2591042 () Bool)

(declare-fun e!1634482 () Bool)

(declare-fun e!1634483 () Bool)

(assert (=> b!2591042 (= e!1634482 e!1634483)))

(declare-fun res!1089507 () Bool)

(assert (=> b!2591042 (=> res!1089507 e!1634483)))

(declare-fun lt!911208 () Int)

(declare-fun size!23122 (List!29909) Int)

(assert (=> b!2591042 (= res!1089507 (not (= (size!23122 l!3230) lt!911208)))))

(declare-fun lt!911212 () Int)

(assert (=> b!2591042 (= lt!911208 (+ 1 lt!911212))))

(declare-fun b!2591043 () Bool)

(declare-fun res!1089508 () Bool)

(assert (=> b!2591043 (=> res!1089508 e!1634482)))

(declare-fun lt!911209 () (InoxSet B!2017))

(assert (=> b!2591043 (= res!1089508 (select lt!911209 (h!35229 l!3230)))))

(declare-fun b!2591044 () Bool)

(declare-fun res!1089506 () Bool)

(assert (=> b!2591044 (=> (not res!1089506) (not e!1634485))))

(get-info :version)

(assert (=> b!2591044 (= res!1089506 ((_ is Cons!29809) l!3230))))

(declare-fun b!2591045 () Bool)

(declare-fun e!1634480 () Bool)

(assert (=> b!2591045 (= e!1634480 e!1634481)))

(declare-fun res!1089512 () Bool)

(assert (=> b!2591045 (=> res!1089512 e!1634481)))

(declare-fun lt!911210 () List!29909)

(assert (=> b!2591045 (= res!1089512 (>= (size!23122 lt!911210) lt!911208))))

(declare-fun toList!1760 ((InoxSet B!2017)) List!29909)

(assert (=> b!2591045 (= lt!911210 (toList!1760 lt!911213))))

(declare-fun b!2591046 () Bool)

(assert (=> b!2591046 (= e!1634483 e!1634480)))

(declare-fun res!1089505 () Bool)

(assert (=> b!2591046 (=> res!1089505 e!1634480)))

(assert (=> b!2591046 (= res!1089505 (not (= (content!4150 l!3230) lt!911213)))))

(assert (=> b!2591046 (= lt!911213 ((_ map or) lt!911209 (store ((as const (Array B!2017 Bool)) false) (h!35229 l!3230) true)))))

(declare-fun lambda!95984 () Int)

(declare-fun exists!896 (List!29909 Int) Bool)

(assert (=> b!2591047 (= e!1634481 (exists!896 l!3230 lambda!95984))))

(assert (=> b!2591047 (exists!896 l!3230 lambda!95984)))

(declare-datatypes ((Unit!43724 0))(
  ( (Unit!43725) )
))
(declare-fun lt!911214 () Unit!43724)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!12 (List!29909 List!29909) Unit!43724)

(assert (=> b!2591047 (= lt!911214 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!12 l!3230 lt!911210))))

(declare-fun lt!911215 () Unit!43724)

(declare-fun subsetContains!38 (List!29909 List!29909) Unit!43724)

(assert (=> b!2591047 (= lt!911215 (subsetContains!38 lt!911210 l!3230))))

(declare-fun b!2591048 () Bool)

(declare-fun res!1089513 () Bool)

(assert (=> b!2591048 (=> res!1089513 e!1634482)))

(declare-fun contains!5359 (List!29909 B!2017) Bool)

(assert (=> b!2591048 (= res!1089513 (contains!5359 (t!212922 l!3230) (h!35229 l!3230)))))

(declare-fun b!2591049 () Bool)

(assert (=> b!2591049 (= e!1634485 (not e!1634482))))

(declare-fun res!1089511 () Bool)

(assert (=> b!2591049 (=> res!1089511 e!1634482)))

(declare-fun lt!911211 () Int)

(assert (=> b!2591049 (= res!1089511 (>= lt!911211 (size!23122 l!3230)))))

(assert (=> b!2591049 (= lt!911211 lt!911212)))

(assert (=> b!2591049 (= lt!911212 (size!23122 (t!212922 l!3230)))))

(assert (=> b!2591049 (= lt!911211 (size!23122 (toList!1760 lt!911209)))))

(assert (=> b!2591049 (= lt!911209 (content!4150 (t!212922 l!3230)))))

(declare-fun lt!911207 () Unit!43724)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!50 (List!29909) Unit!43724)

(assert (=> b!2591049 (= lt!911207 (lemmaNoDuplicateThenContentToListSameSize!50 (t!212922 l!3230)))))

(assert (= (and start!251012 res!1089509) b!2591044))

(assert (= (and b!2591044 res!1089506) b!2591049))

(assert (= (and b!2591049 (not res!1089511)) b!2591043))

(assert (= (and b!2591043 (not res!1089508)) b!2591048))

(assert (= (and b!2591048 (not res!1089513)) b!2591042))

(assert (= (and b!2591042 (not res!1089507)) b!2591046))

(assert (= (and b!2591046 (not res!1089505)) b!2591045))

(assert (= (and b!2591045 (not res!1089512)) b!2591040))

(assert (= (and b!2591040 (not res!1089510)) b!2591047))

(assert (= (and start!251012 ((_ is Cons!29809) l!3230)) b!2591041))

(declare-fun m!2927061 () Bool)

(assert (=> b!2591045 m!2927061))

(declare-fun m!2927063 () Bool)

(assert (=> b!2591045 m!2927063))

(declare-fun m!2927065 () Bool)

(assert (=> b!2591043 m!2927065))

(declare-fun m!2927067 () Bool)

(assert (=> b!2591046 m!2927067))

(declare-fun m!2927069 () Bool)

(assert (=> b!2591046 m!2927069))

(assert (=> b!2591040 m!2927067))

(declare-fun m!2927071 () Bool)

(assert (=> b!2591042 m!2927071))

(declare-fun m!2927073 () Bool)

(assert (=> b!2591047 m!2927073))

(assert (=> b!2591047 m!2927073))

(declare-fun m!2927075 () Bool)

(assert (=> b!2591047 m!2927075))

(declare-fun m!2927077 () Bool)

(assert (=> b!2591047 m!2927077))

(declare-fun m!2927079 () Bool)

(assert (=> b!2591049 m!2927079))

(assert (=> b!2591049 m!2927079))

(declare-fun m!2927081 () Bool)

(assert (=> b!2591049 m!2927081))

(assert (=> b!2591049 m!2927071))

(declare-fun m!2927083 () Bool)

(assert (=> b!2591049 m!2927083))

(declare-fun m!2927085 () Bool)

(assert (=> b!2591049 m!2927085))

(declare-fun m!2927087 () Bool)

(assert (=> b!2591049 m!2927087))

(declare-fun m!2927089 () Bool)

(assert (=> start!251012 m!2927089))

(declare-fun m!2927091 () Bool)

(assert (=> b!2591048 m!2927091))

(check-sat (not b!2591042) (not start!251012) (not b!2591047) (not b!2591045) (not b!2591041) (not b!2591046) tp_is_empty!13297 (not b!2591049) (not b!2591040) (not b!2591048))
(check-sat)
