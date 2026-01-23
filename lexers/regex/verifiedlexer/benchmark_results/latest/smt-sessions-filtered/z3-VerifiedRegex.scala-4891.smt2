; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250856 () Bool)

(assert start!250856)

(declare-fun b!2590361 () Bool)

(assert (=> b!2590361 true))

(declare-fun bs!472112 () Bool)

(declare-fun b!2590355 () Bool)

(assert (= bs!472112 (and b!2590355 b!2590361)))

(declare-fun lambda!95973 () Int)

(declare-datatypes ((B!1985 0))(
  ( (B!1986 (val!9460 Int)) )
))
(declare-datatypes ((List!29893 0))(
  ( (Nil!29793) (Cons!29793 (h!35213 B!1985) (t!212906 List!29893)) )
))
(declare-fun l!3230 () List!29893)

(declare-fun lt!910877 () List!29893)

(declare-fun lambda!95974 () Int)

(assert (=> bs!472112 (= (= l!3230 lt!910877) (= lambda!95974 lambda!95973))))

(assert (=> b!2590355 true))

(declare-fun e!1634031 () Bool)

(declare-fun e!1634029 () Bool)

(assert (=> b!2590355 (= e!1634031 e!1634029)))

(declare-fun res!1089118 () Bool)

(assert (=> b!2590355 (=> res!1089118 e!1634029)))

(declare-fun exists!894 (List!29893 Int) Bool)

(assert (=> b!2590355 (= res!1089118 (not (exists!894 lt!910877 lambda!95974)))))

(assert (=> b!2590355 (exists!894 lt!910877 lambda!95974)))

(declare-datatypes ((Unit!43690 0))(
  ( (Unit!43691) )
))
(declare-fun lt!910874 () Unit!43690)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!10 (List!29893 List!29893) Unit!43690)

(assert (=> b!2590355 (= lt!910874 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!10 lt!910877 l!3230))))

(declare-fun lt!910876 () Unit!43690)

(declare-fun subsetContains!36 (List!29893 List!29893) Unit!43690)

(assert (=> b!2590355 (= lt!910876 (subsetContains!36 l!3230 lt!910877))))

(declare-fun b!2590356 () Bool)

(declare-fun res!1089119 () Bool)

(assert (=> b!2590356 (=> res!1089119 e!1634031)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!910878 () (InoxSet B!1985))

(declare-fun content!4134 (List!29893) (InoxSet B!1985))

(assert (=> b!2590356 (= res!1089119 (not (= lt!910878 (content!4134 l!3230))))))

(declare-fun b!2590357 () Bool)

(declare-fun e!1634030 () Bool)

(declare-fun tp_is_empty!13265 () Bool)

(declare-fun tp!822588 () Bool)

(assert (=> b!2590357 (= e!1634030 (and tp_is_empty!13265 tp!822588))))

(declare-fun b!2590358 () Bool)

(declare-fun e!1634025 () Bool)

(declare-fun e!1634024 () Bool)

(assert (=> b!2590358 (= e!1634025 (not e!1634024))))

(declare-fun res!1089117 () Bool)

(assert (=> b!2590358 (=> res!1089117 e!1634024)))

(declare-fun lt!910869 () Int)

(declare-fun size!23106 (List!29893) Int)

(assert (=> b!2590358 (= res!1089117 (>= lt!910869 (size!23106 l!3230)))))

(declare-fun lt!910872 () Int)

(assert (=> b!2590358 (= lt!910869 lt!910872)))

(assert (=> b!2590358 (= lt!910872 (size!23106 (t!212906 l!3230)))))

(declare-fun lt!910879 () (InoxSet B!1985))

(declare-fun toList!1744 ((InoxSet B!1985)) List!29893)

(assert (=> b!2590358 (= lt!910869 (size!23106 (toList!1744 lt!910879)))))

(assert (=> b!2590358 (= lt!910879 (content!4134 (t!212906 l!3230)))))

(declare-fun lt!910875 () Unit!43690)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!34 (List!29893) Unit!43690)

(assert (=> b!2590358 (= lt!910875 (lemmaNoDuplicateThenContentToListSameSize!34 (t!212906 l!3230)))))

(declare-fun b!2590359 () Bool)

(declare-fun res!1089112 () Bool)

(assert (=> b!2590359 (=> res!1089112 e!1634024)))

(assert (=> b!2590359 (= res!1089112 (select lt!910879 (h!35213 l!3230)))))

(declare-fun b!2590360 () Bool)

(declare-fun e!1634027 () Bool)

(assert (=> b!2590360 (= e!1634027 e!1634031)))

(declare-fun res!1089111 () Bool)

(assert (=> b!2590360 (=> res!1089111 e!1634031)))

(declare-fun lt!910870 () Int)

(declare-fun lt!910871 () Int)

(assert (=> b!2590360 (= res!1089111 (<= lt!910870 lt!910871))))

(declare-fun lt!910880 () Unit!43690)

(declare-fun e!1634026 () Unit!43690)

(assert (=> b!2590360 (= lt!910880 e!1634026)))

(declare-fun c!417610 () Bool)

(assert (=> b!2590360 (= c!417610 (< lt!910870 lt!910871))))

(assert (=> b!2590360 (= lt!910870 (size!23106 lt!910877))))

(assert (=> b!2590360 (= lt!910877 (toList!1744 lt!910878))))

(declare-fun Unit!43692 () Unit!43690)

(assert (=> b!2590361 (= e!1634026 Unit!43692)))

(declare-fun lt!910873 () Unit!43690)

(assert (=> b!2590361 (= lt!910873 (subsetContains!36 lt!910877 l!3230))))

(declare-fun lt!910868 () Unit!43690)

(assert (=> b!2590361 (= lt!910868 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!10 l!3230 lt!910877))))

(assert (=> b!2590361 (exists!894 l!3230 lambda!95973)))

(declare-fun lt!910881 () B!1985)

(declare-fun getWitness!522 (List!29893 Int) B!1985)

(assert (=> b!2590361 (= lt!910881 (getWitness!522 l!3230 lambda!95973))))

(assert (=> b!2590361 false))

(declare-fun res!1089115 () Bool)

(assert (=> start!250856 (=> (not res!1089115) (not e!1634025))))

(declare-fun noDuplicate!341 (List!29893) Bool)

(assert (=> start!250856 (= res!1089115 (noDuplicate!341 l!3230))))

(assert (=> start!250856 e!1634025))

(assert (=> start!250856 e!1634030))

(declare-fun b!2590362 () Bool)

(declare-fun e!1634028 () Bool)

(assert (=> b!2590362 (= e!1634024 e!1634028)))

(declare-fun res!1089113 () Bool)

(assert (=> b!2590362 (=> res!1089113 e!1634028)))

(assert (=> b!2590362 (= res!1089113 (not (= (size!23106 l!3230) lt!910871)))))

(assert (=> b!2590362 (= lt!910871 (+ 1 lt!910872))))

(declare-fun b!2590363 () Bool)

(assert (=> b!2590363 (= e!1634029 (exists!894 lt!910877 lambda!95974))))

(declare-fun b!2590364 () Bool)

(declare-fun Unit!43693 () Unit!43690)

(assert (=> b!2590364 (= e!1634026 Unit!43693)))

(declare-fun b!2590365 () Bool)

(declare-fun res!1089116 () Bool)

(assert (=> b!2590365 (=> (not res!1089116) (not e!1634025))))

(get-info :version)

(assert (=> b!2590365 (= res!1089116 ((_ is Cons!29793) l!3230))))

(declare-fun b!2590366 () Bool)

(assert (=> b!2590366 (= e!1634028 e!1634027)))

(declare-fun res!1089110 () Bool)

(assert (=> b!2590366 (=> res!1089110 e!1634027)))

(assert (=> b!2590366 (= res!1089110 (not (= (content!4134 l!3230) lt!910878)))))

(assert (=> b!2590366 (= lt!910878 ((_ map or) lt!910879 (store ((as const (Array B!1985 Bool)) false) (h!35213 l!3230) true)))))

(declare-fun b!2590367 () Bool)

(declare-fun res!1089114 () Bool)

(assert (=> b!2590367 (=> res!1089114 e!1634024)))

(declare-fun contains!5345 (List!29893 B!1985) Bool)

(assert (=> b!2590367 (= res!1089114 (contains!5345 (t!212906 l!3230) (h!35213 l!3230)))))

(assert (= (and start!250856 res!1089115) b!2590365))

(assert (= (and b!2590365 res!1089116) b!2590358))

(assert (= (and b!2590358 (not res!1089117)) b!2590359))

(assert (= (and b!2590359 (not res!1089112)) b!2590367))

(assert (= (and b!2590367 (not res!1089114)) b!2590362))

(assert (= (and b!2590362 (not res!1089113)) b!2590366))

(assert (= (and b!2590366 (not res!1089110)) b!2590360))

(assert (= (and b!2590360 c!417610) b!2590361))

(assert (= (and b!2590360 (not c!417610)) b!2590364))

(assert (= (and b!2590360 (not res!1089111)) b!2590356))

(assert (= (and b!2590356 (not res!1089119)) b!2590355))

(assert (= (and b!2590355 (not res!1089118)) b!2590363))

(assert (= (and start!250856 ((_ is Cons!29793) l!3230)) b!2590357))

(declare-fun m!2926421 () Bool)

(assert (=> b!2590356 m!2926421))

(declare-fun m!2926423 () Bool)

(assert (=> b!2590359 m!2926423))

(declare-fun m!2926425 () Bool)

(assert (=> b!2590355 m!2926425))

(assert (=> b!2590355 m!2926425))

(declare-fun m!2926427 () Bool)

(assert (=> b!2590355 m!2926427))

(declare-fun m!2926429 () Bool)

(assert (=> b!2590355 m!2926429))

(declare-fun m!2926431 () Bool)

(assert (=> b!2590360 m!2926431))

(declare-fun m!2926433 () Bool)

(assert (=> b!2590360 m!2926433))

(declare-fun m!2926435 () Bool)

(assert (=> b!2590358 m!2926435))

(assert (=> b!2590358 m!2926435))

(declare-fun m!2926437 () Bool)

(assert (=> b!2590358 m!2926437))

(declare-fun m!2926439 () Bool)

(assert (=> b!2590358 m!2926439))

(declare-fun m!2926441 () Bool)

(assert (=> b!2590358 m!2926441))

(declare-fun m!2926443 () Bool)

(assert (=> b!2590358 m!2926443))

(declare-fun m!2926445 () Bool)

(assert (=> b!2590358 m!2926445))

(assert (=> b!2590366 m!2926421))

(declare-fun m!2926447 () Bool)

(assert (=> b!2590366 m!2926447))

(assert (=> b!2590362 m!2926439))

(assert (=> b!2590363 m!2926425))

(declare-fun m!2926449 () Bool)

(assert (=> b!2590361 m!2926449))

(declare-fun m!2926451 () Bool)

(assert (=> b!2590361 m!2926451))

(declare-fun m!2926453 () Bool)

(assert (=> b!2590361 m!2926453))

(declare-fun m!2926455 () Bool)

(assert (=> b!2590361 m!2926455))

(declare-fun m!2926457 () Bool)

(assert (=> start!250856 m!2926457))

(declare-fun m!2926459 () Bool)

(assert (=> b!2590367 m!2926459))

(check-sat (not b!2590360) (not b!2590367) (not start!250856) (not b!2590356) (not b!2590361) (not b!2590357) tp_is_empty!13265 (not b!2590355) (not b!2590366) (not b!2590362) (not b!2590363) (not b!2590358))
(check-sat)
