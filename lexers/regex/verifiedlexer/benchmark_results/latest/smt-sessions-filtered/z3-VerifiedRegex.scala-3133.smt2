; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184574 () Bool)

(assert start!184574)

(declare-fun b!1849477 () Bool)

(assert (=> b!1849477 true))

(assert (=> b!1849477 true))

(declare-fun res!830410 () Bool)

(declare-fun e!1181620 () Bool)

(assert (=> start!184574 (=> (not res!830410) (not e!1181620))))

(declare-datatypes ((C!10188 0))(
  ( (C!10189 (val!5820 Int)) )
))
(declare-datatypes ((Regex!5019 0))(
  ( (ElementMatch!5019 (c!301904 C!10188)) (Concat!8797 (regOne!10550 Regex!5019) (regTwo!10550 Regex!5019)) (EmptyExpr!5019) (Star!5019 (reg!5348 Regex!5019)) (EmptyLang!5019) (Union!5019 (regOne!10551 Regex!5019) (regTwo!10551 Regex!5019)) )
))
(declare-fun r!26091 () Regex!5019)

(declare-fun validRegex!2063 (Regex!5019) Bool)

(assert (=> start!184574 (= res!830410 (validRegex!2063 r!26091))))

(assert (=> start!184574 e!1181620))

(declare-fun e!1181617 () Bool)

(assert (=> start!184574 e!1181617))

(declare-fun e!1181618 () Bool)

(assert (=> start!184574 e!1181618))

(declare-fun tp_is_empty!8487 () Bool)

(assert (=> start!184574 tp_is_empty!8487))

(declare-fun b!1849469 () Bool)

(declare-fun tp!522977 () Bool)

(declare-fun tp!522979 () Bool)

(assert (=> b!1849469 (= e!1181617 (and tp!522977 tp!522979))))

(declare-fun b!1849470 () Bool)

(assert (=> b!1849470 (= e!1181617 tp_is_empty!8487)))

(declare-fun b!1849471 () Bool)

(declare-fun e!1181619 () Bool)

(declare-fun e!1181621 () Bool)

(assert (=> b!1849471 (= e!1181619 e!1181621)))

(declare-fun res!830413 () Bool)

(assert (=> b!1849471 (=> res!830413 e!1181621)))

(declare-datatypes ((List!20500 0))(
  ( (Nil!20428) (Cons!20428 (h!25829 C!10188) (t!172273 List!20500)) )
))
(declare-fun lt!715368 () List!20500)

(declare-fun matchR!2456 (Regex!5019 List!20500) Bool)

(assert (=> b!1849471 (= res!830413 (not (matchR!2456 r!26091 lt!715368)))))

(declare-fun lambda!73142 () Int)

(declare-fun pickWitness!270 (Int) List!20500)

(assert (=> b!1849471 (= lt!715368 (pickWitness!270 lambda!73142))))

(declare-fun b!1849472 () Bool)

(declare-fun res!830414 () Bool)

(assert (=> b!1849472 (=> (not res!830414) (not e!1181620))))

(declare-fun prefix!1614 () List!20500)

(declare-fun c!13459 () C!10188)

(declare-fun contains!3784 (List!20500 C!10188) Bool)

(assert (=> b!1849472 (= res!830414 (contains!3784 prefix!1614 c!13459))))

(declare-fun b!1849473 () Bool)

(declare-fun tp!522976 () Bool)

(assert (=> b!1849473 (= e!1181618 (and tp_is_empty!8487 tp!522976))))

(declare-fun b!1849474 () Bool)

(declare-fun res!830408 () Bool)

(assert (=> b!1849474 (=> (not res!830408) (not e!1181620))))

(declare-fun usedCharacters!324 (Regex!5019) List!20500)

(assert (=> b!1849474 (= res!830408 (not (contains!3784 (usedCharacters!324 r!26091) c!13459)))))

(declare-fun b!1849475 () Bool)

(declare-fun res!830412 () Bool)

(assert (=> b!1849475 (=> (not res!830412) (not e!1181620))))

(declare-fun prefixMatch!796 (Regex!5019 List!20500) Bool)

(assert (=> b!1849475 (= res!830412 (prefixMatch!796 r!26091 prefix!1614))))

(declare-fun b!1849476 () Bool)

(declare-fun res!830411 () Bool)

(assert (=> b!1849476 (=> res!830411 e!1181621)))

(declare-fun isPrefix!1892 (List!20500 List!20500) Bool)

(assert (=> b!1849476 (= res!830411 (not (isPrefix!1892 prefix!1614 lt!715368)))))

(assert (=> b!1849477 (= e!1181620 (not e!1181619))))

(declare-fun res!830409 () Bool)

(assert (=> b!1849477 (=> res!830409 e!1181619)))

(declare-fun Exists!973 (Int) Bool)

(assert (=> b!1849477 (= res!830409 (not (Exists!973 lambda!73142)))))

(assert (=> b!1849477 (Exists!973 lambda!73142)))

(declare-datatypes ((Unit!35113 0))(
  ( (Unit!35114) )
))
(declare-fun lt!715366 () Unit!35113)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!291 (Regex!5019 List!20500) Unit!35113)

(assert (=> b!1849477 (= lt!715366 (lemmaPrefixMatchThenExistsStringThatMatches!291 r!26091 prefix!1614))))

(declare-fun b!1849478 () Bool)

(declare-fun tp!522975 () Bool)

(assert (=> b!1849478 (= e!1181617 tp!522975)))

(declare-fun b!1849479 () Bool)

(assert (=> b!1849479 (= e!1181621 true)))

(declare-fun lt!715367 () List!20500)

(declare-fun ++!5544 (List!20500 List!20500) List!20500)

(declare-fun getSuffix!996 (List!20500 List!20500) List!20500)

(assert (=> b!1849479 (= lt!715367 (++!5544 prefix!1614 (getSuffix!996 lt!715368 prefix!1614)))))

(declare-fun b!1849480 () Bool)

(declare-fun tp!522974 () Bool)

(declare-fun tp!522978 () Bool)

(assert (=> b!1849480 (= e!1181617 (and tp!522974 tp!522978))))

(assert (= (and start!184574 res!830410) b!1849472))

(assert (= (and b!1849472 res!830414) b!1849474))

(assert (= (and b!1849474 res!830408) b!1849475))

(assert (= (and b!1849475 res!830412) b!1849477))

(assert (= (and b!1849477 (not res!830409)) b!1849471))

(assert (= (and b!1849471 (not res!830413)) b!1849476))

(assert (= (and b!1849476 (not res!830411)) b!1849479))

(get-info :version)

(assert (= (and start!184574 ((_ is ElementMatch!5019) r!26091)) b!1849470))

(assert (= (and start!184574 ((_ is Concat!8797) r!26091)) b!1849469))

(assert (= (and start!184574 ((_ is Star!5019) r!26091)) b!1849478))

(assert (= (and start!184574 ((_ is Union!5019) r!26091)) b!1849480))

(assert (= (and start!184574 ((_ is Cons!20428) prefix!1614)) b!1849473))

(declare-fun m!2276613 () Bool)

(assert (=> b!1849474 m!2276613))

(assert (=> b!1849474 m!2276613))

(declare-fun m!2276615 () Bool)

(assert (=> b!1849474 m!2276615))

(declare-fun m!2276617 () Bool)

(assert (=> b!1849472 m!2276617))

(declare-fun m!2276619 () Bool)

(assert (=> b!1849471 m!2276619))

(declare-fun m!2276621 () Bool)

(assert (=> b!1849471 m!2276621))

(declare-fun m!2276623 () Bool)

(assert (=> start!184574 m!2276623))

(declare-fun m!2276625 () Bool)

(assert (=> b!1849477 m!2276625))

(assert (=> b!1849477 m!2276625))

(declare-fun m!2276627 () Bool)

(assert (=> b!1849477 m!2276627))

(declare-fun m!2276629 () Bool)

(assert (=> b!1849475 m!2276629))

(declare-fun m!2276631 () Bool)

(assert (=> b!1849479 m!2276631))

(assert (=> b!1849479 m!2276631))

(declare-fun m!2276633 () Bool)

(assert (=> b!1849479 m!2276633))

(declare-fun m!2276635 () Bool)

(assert (=> b!1849476 m!2276635))

(check-sat (not b!1849472) (not b!1849478) (not b!1849475) (not b!1849480) (not b!1849469) (not b!1849473) tp_is_empty!8487 (not b!1849476) (not b!1849479) (not b!1849474) (not b!1849477) (not start!184574) (not b!1849471))
(check-sat)
