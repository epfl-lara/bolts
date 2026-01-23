; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46234 () Bool)

(assert start!46234)

(declare-fun b!511354 () Bool)

(declare-fun e!305441 () Bool)

(declare-fun tp_is_empty!2415 () Bool)

(declare-fun tp!158951 () Bool)

(assert (=> b!511354 (= e!305441 (and tp_is_empty!2415 tp!158951))))

(declare-fun b!511355 () Bool)

(declare-fun res!217063 () Bool)

(declare-fun e!305442 () Bool)

(assert (=> b!511355 (=> (not res!217063) (not e!305442))))

(declare-datatypes ((B!1029 0))(
  ( (B!1030 (val!1656 Int)) )
))
(declare-datatypes ((List!4629 0))(
  ( (Nil!4619) (Cons!4619 (h!10016 B!1029) (t!73147 List!4629)) )
))
(declare-fun p!1985 () List!4629)

(get-info :version)

(assert (=> b!511355 (= res!217063 (not ((_ is Cons!4619) p!1985)))))

(declare-fun b!511356 () Bool)

(declare-fun l!3306 () List!4629)

(declare-fun isPrefix!551 (List!4629 List!4629) Bool)

(declare-fun removeLast!16 (List!4629) List!4629)

(assert (=> b!511356 (= e!305442 (not (isPrefix!551 p!1985 (removeLast!16 l!3306))))))

(declare-fun b!511357 () Bool)

(declare-fun res!217065 () Bool)

(assert (=> b!511357 (=> (not res!217065) (not e!305442))))

(declare-fun size!3725 (List!4629) Int)

(assert (=> b!511357 (= res!217065 (< (size!3725 p!1985) (size!3725 l!3306)))))

(declare-fun b!511358 () Bool)

(declare-fun res!217064 () Bool)

(assert (=> b!511358 (=> (not res!217064) (not e!305442))))

(assert (=> b!511358 (= res!217064 (isPrefix!551 p!1985 l!3306))))

(declare-fun b!511353 () Bool)

(declare-fun e!305440 () Bool)

(declare-fun tp!158950 () Bool)

(assert (=> b!511353 (= e!305440 (and tp_is_empty!2415 tp!158950))))

(declare-fun res!217062 () Bool)

(assert (=> start!46234 (=> (not res!217062) (not e!305442))))

(declare-fun isEmpty!3573 (List!4629) Bool)

(assert (=> start!46234 (= res!217062 (not (isEmpty!3573 l!3306)))))

(assert (=> start!46234 e!305442))

(assert (=> start!46234 e!305441))

(assert (=> start!46234 e!305440))

(assert (= (and start!46234 res!217062) b!511358))

(assert (= (and b!511358 res!217064) b!511357))

(assert (= (and b!511357 res!217065) b!511355))

(assert (= (and b!511355 res!217063) b!511356))

(assert (= (and start!46234 ((_ is Cons!4619) l!3306)) b!511354))

(assert (= (and start!46234 ((_ is Cons!4619) p!1985)) b!511353))

(declare-fun m!758171 () Bool)

(assert (=> b!511356 m!758171))

(assert (=> b!511356 m!758171))

(declare-fun m!758173 () Bool)

(assert (=> b!511356 m!758173))

(declare-fun m!758175 () Bool)

(assert (=> b!511357 m!758175))

(declare-fun m!758177 () Bool)

(assert (=> b!511357 m!758177))

(declare-fun m!758179 () Bool)

(assert (=> b!511358 m!758179))

(declare-fun m!758181 () Bool)

(assert (=> start!46234 m!758181))

(check-sat (not b!511353) (not b!511354) (not b!511356) (not b!511357) (not start!46234) (not b!511358) tp_is_empty!2415)
(check-sat)
(get-model)

(declare-fun d!183875 () Bool)

(declare-fun lt!211984 () Int)

(assert (=> d!183875 (>= lt!211984 0)))

(declare-fun e!305451 () Int)

(assert (=> d!183875 (= lt!211984 e!305451)))

(declare-fun c!99434 () Bool)

(assert (=> d!183875 (= c!99434 ((_ is Nil!4619) p!1985))))

(assert (=> d!183875 (= (size!3725 p!1985) lt!211984)))

(declare-fun b!511371 () Bool)

(assert (=> b!511371 (= e!305451 0)))

(declare-fun b!511372 () Bool)

(assert (=> b!511372 (= e!305451 (+ 1 (size!3725 (t!73147 p!1985))))))

(assert (= (and d!183875 c!99434) b!511371))

(assert (= (and d!183875 (not c!99434)) b!511372))

(declare-fun m!758183 () Bool)

(assert (=> b!511372 m!758183))

(assert (=> b!511357 d!183875))

(declare-fun d!183877 () Bool)

(declare-fun lt!211985 () Int)

(assert (=> d!183877 (>= lt!211985 0)))

(declare-fun e!305452 () Int)

(assert (=> d!183877 (= lt!211985 e!305452)))

(declare-fun c!99435 () Bool)

(assert (=> d!183877 (= c!99435 ((_ is Nil!4619) l!3306))))

(assert (=> d!183877 (= (size!3725 l!3306) lt!211985)))

(declare-fun b!511373 () Bool)

(assert (=> b!511373 (= e!305452 0)))

(declare-fun b!511374 () Bool)

(assert (=> b!511374 (= e!305452 (+ 1 (size!3725 (t!73147 l!3306))))))

(assert (= (and d!183877 c!99435) b!511373))

(assert (= (and d!183877 (not c!99435)) b!511374))

(declare-fun m!758185 () Bool)

(assert (=> b!511374 m!758185))

(assert (=> b!511357 d!183877))

(declare-fun b!511393 () Bool)

(declare-fun e!305466 () Bool)

(declare-fun tail!686 (List!4629) List!4629)

(assert (=> b!511393 (= e!305466 (isPrefix!551 (tail!686 p!1985) (tail!686 l!3306)))))

(declare-fun d!183879 () Bool)

(declare-fun e!305464 () Bool)

(assert (=> d!183879 e!305464))

(declare-fun res!217089 () Bool)

(assert (=> d!183879 (=> res!217089 e!305464)))

(declare-fun lt!211991 () Bool)

(assert (=> d!183879 (= res!217089 (not lt!211991))))

(declare-fun e!305465 () Bool)

(assert (=> d!183879 (= lt!211991 e!305465)))

(declare-fun res!217087 () Bool)

(assert (=> d!183879 (=> res!217087 e!305465)))

(assert (=> d!183879 (= res!217087 ((_ is Nil!4619) p!1985))))

(assert (=> d!183879 (= (isPrefix!551 p!1985 l!3306) lt!211991)))

(declare-fun b!511391 () Bool)

(assert (=> b!511391 (= e!305465 e!305466)))

(declare-fun res!217088 () Bool)

(assert (=> b!511391 (=> (not res!217088) (not e!305466))))

(assert (=> b!511391 (= res!217088 (not ((_ is Nil!4619) l!3306)))))

(declare-fun b!511394 () Bool)

(assert (=> b!511394 (= e!305464 (>= (size!3725 l!3306) (size!3725 p!1985)))))

(declare-fun b!511392 () Bool)

(declare-fun res!217086 () Bool)

(assert (=> b!511392 (=> (not res!217086) (not e!305466))))

(declare-fun head!1162 (List!4629) B!1029)

(assert (=> b!511392 (= res!217086 (= (head!1162 p!1985) (head!1162 l!3306)))))

(assert (= (and d!183879 (not res!217087)) b!511391))

(assert (= (and b!511391 res!217088) b!511392))

(assert (= (and b!511392 res!217086) b!511393))

(assert (= (and d!183879 (not res!217089)) b!511394))

(declare-fun m!758199 () Bool)

(assert (=> b!511393 m!758199))

(declare-fun m!758201 () Bool)

(assert (=> b!511393 m!758201))

(assert (=> b!511393 m!758199))

(assert (=> b!511393 m!758201))

(declare-fun m!758203 () Bool)

(assert (=> b!511393 m!758203))

(assert (=> b!511394 m!758177))

(assert (=> b!511394 m!758175))

(declare-fun m!758205 () Bool)

(assert (=> b!511392 m!758205))

(declare-fun m!758207 () Bool)

(assert (=> b!511392 m!758207))

(assert (=> b!511358 d!183879))

(declare-fun d!183883 () Bool)

(assert (=> d!183883 (= (isEmpty!3573 l!3306) ((_ is Nil!4619) l!3306))))

(assert (=> start!46234 d!183883))

(declare-fun b!511397 () Bool)

(declare-fun e!305469 () Bool)

(assert (=> b!511397 (= e!305469 (isPrefix!551 (tail!686 p!1985) (tail!686 (removeLast!16 l!3306))))))

(declare-fun d!183885 () Bool)

(declare-fun e!305467 () Bool)

(assert (=> d!183885 e!305467))

(declare-fun res!217093 () Bool)

(assert (=> d!183885 (=> res!217093 e!305467)))

(declare-fun lt!211992 () Bool)

(assert (=> d!183885 (= res!217093 (not lt!211992))))

(declare-fun e!305468 () Bool)

(assert (=> d!183885 (= lt!211992 e!305468)))

(declare-fun res!217091 () Bool)

(assert (=> d!183885 (=> res!217091 e!305468)))

(assert (=> d!183885 (= res!217091 ((_ is Nil!4619) p!1985))))

(assert (=> d!183885 (= (isPrefix!551 p!1985 (removeLast!16 l!3306)) lt!211992)))

(declare-fun b!511395 () Bool)

(assert (=> b!511395 (= e!305468 e!305469)))

(declare-fun res!217092 () Bool)

(assert (=> b!511395 (=> (not res!217092) (not e!305469))))

(assert (=> b!511395 (= res!217092 (not ((_ is Nil!4619) (removeLast!16 l!3306))))))

(declare-fun b!511398 () Bool)

(assert (=> b!511398 (= e!305467 (>= (size!3725 (removeLast!16 l!3306)) (size!3725 p!1985)))))

(declare-fun b!511396 () Bool)

(declare-fun res!217090 () Bool)

(assert (=> b!511396 (=> (not res!217090) (not e!305469))))

(assert (=> b!511396 (= res!217090 (= (head!1162 p!1985) (head!1162 (removeLast!16 l!3306))))))

(assert (= (and d!183885 (not res!217091)) b!511395))

(assert (= (and b!511395 res!217092) b!511396))

(assert (= (and b!511396 res!217090) b!511397))

(assert (= (and d!183885 (not res!217093)) b!511398))

(assert (=> b!511397 m!758199))

(assert (=> b!511397 m!758171))

(declare-fun m!758209 () Bool)

(assert (=> b!511397 m!758209))

(assert (=> b!511397 m!758199))

(assert (=> b!511397 m!758209))

(declare-fun m!758213 () Bool)

(assert (=> b!511397 m!758213))

(assert (=> b!511398 m!758171))

(declare-fun m!758217 () Bool)

(assert (=> b!511398 m!758217))

(assert (=> b!511398 m!758175))

(assert (=> b!511396 m!758205))

(assert (=> b!511396 m!758171))

(declare-fun m!758221 () Bool)

(assert (=> b!511396 m!758221))

(assert (=> b!511356 d!183885))

(declare-fun d!183889 () Bool)

(declare-fun lt!212001 () List!4629)

(declare-fun ++!1341 (List!4629 List!4629) List!4629)

(declare-fun last!45 (List!4629) B!1029)

(assert (=> d!183889 (= (++!1341 lt!212001 (Cons!4619 (last!45 l!3306) Nil!4619)) l!3306)))

(declare-fun e!305484 () List!4629)

(assert (=> d!183889 (= lt!212001 e!305484)))

(declare-fun c!99445 () Bool)

(assert (=> d!183889 (= c!99445 (and ((_ is Cons!4619) l!3306) ((_ is Nil!4619) (t!73147 l!3306))))))

(assert (=> d!183889 (not (isEmpty!3573 l!3306))))

(assert (=> d!183889 (= (removeLast!16 l!3306) lt!212001)))

(declare-fun b!511423 () Bool)

(assert (=> b!511423 (= e!305484 Nil!4619)))

(declare-fun b!511424 () Bool)

(assert (=> b!511424 (= e!305484 (Cons!4619 (h!10016 l!3306) (removeLast!16 (t!73147 l!3306))))))

(assert (= (and d!183889 c!99445) b!511423))

(assert (= (and d!183889 (not c!99445)) b!511424))

(declare-fun m!758233 () Bool)

(assert (=> d!183889 m!758233))

(declare-fun m!758235 () Bool)

(assert (=> d!183889 m!758235))

(assert (=> d!183889 m!758181))

(declare-fun m!758237 () Bool)

(assert (=> b!511424 m!758237))

(assert (=> b!511356 d!183889))

(declare-fun b!511429 () Bool)

(declare-fun e!305487 () Bool)

(declare-fun tp!158958 () Bool)

(assert (=> b!511429 (= e!305487 (and tp_is_empty!2415 tp!158958))))

(assert (=> b!511353 (= tp!158950 e!305487)))

(assert (= (and b!511353 ((_ is Cons!4619) (t!73147 p!1985))) b!511429))

(declare-fun b!511430 () Bool)

(declare-fun e!305488 () Bool)

(declare-fun tp!158959 () Bool)

(assert (=> b!511430 (= e!305488 (and tp_is_empty!2415 tp!158959))))

(assert (=> b!511354 (= tp!158951 e!305488)))

(assert (= (and b!511354 ((_ is Cons!4619) (t!73147 l!3306))) b!511430))

(check-sat (not b!511429) (not b!511424) (not b!511394) (not b!511396) tp_is_empty!2415 (not b!511397) (not b!511430) (not d!183889) (not b!511393) (not b!511398) (not b!511372) (not b!511392) (not b!511374))
(check-sat)
