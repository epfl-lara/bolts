; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!684968 () Bool)

(assert start!684968)

(declare-fun b!7060124 () Bool)

(assert (=> b!7060124 true))

(declare-fun b!7060118 () Bool)

(assert (=> b!7060118 true))

(declare-fun b!7060121 () Bool)

(assert (=> b!7060121 true))

(declare-fun bs!1878987 () Bool)

(declare-fun b!7060102 () Bool)

(assert (= bs!1878987 (and b!7060102 b!7060124)))

(declare-fun lambda!421538 () Int)

(declare-fun lambda!421534 () Int)

(assert (=> bs!1878987 (not (= lambda!421538 lambda!421534))))

(declare-fun b!7060097 () Bool)

(declare-fun res!2882125 () Bool)

(declare-fun e!4244458 () Bool)

(assert (=> b!7060097 (=> (not res!2882125) (not e!4244458))))

(declare-datatypes ((C!35444 0))(
  ( (C!35445 (val!27424 Int)) )
))
(declare-datatypes ((List!68287 0))(
  ( (Nil!68163) (Cons!68163 (h!74611 C!35444) (t!382068 List!68287)) )
))
(declare-fun s!7408 () List!68287)

(get-info :version)

(assert (=> b!7060097 (= res!2882125 ((_ is Cons!68163) s!7408))))

(declare-fun b!7060098 () Bool)

(declare-fun e!4244465 () Bool)

(declare-fun e!4244460 () Bool)

(assert (=> b!7060098 (= e!4244465 e!4244460)))

(declare-fun res!2882109 () Bool)

(assert (=> b!7060098 (=> res!2882109 e!4244460)))

(declare-datatypes ((Regex!17587 0))(
  ( (ElementMatch!17587 (c!1315840 C!35444)) (Concat!26432 (regOne!35686 Regex!17587) (regTwo!35686 Regex!17587)) (EmptyExpr!17587) (Star!17587 (reg!17916 Regex!17587)) (EmptyLang!17587) (Union!17587 (regOne!35687 Regex!17587) (regTwo!35687 Regex!17587)) )
))
(declare-datatypes ((List!68288 0))(
  ( (Nil!68164) (Cons!68164 (h!74612 Regex!17587) (t!382069 List!68288)) )
))
(declare-datatypes ((Context!13166 0))(
  ( (Context!13167 (exprs!7083 List!68288)) )
))
(declare-fun lt!2534680 () Context!13166)

(declare-fun nullableContext!99 (Context!13166) Bool)

(assert (=> b!7060098 (= res!2882109 (not (nullableContext!99 lt!2534680)))))

(declare-fun lt!2534700 () Context!13166)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2534688 () (InoxSet Context!13166))

(declare-fun getWitness!1661 ((InoxSet Context!13166) Int) Context!13166)

(assert (=> b!7060098 (= lt!2534700 (getWitness!1661 lt!2534688 lambda!421538))))

(declare-fun b!7060100 () Bool)

(declare-fun e!4244473 () Bool)

(declare-fun tp!1940966 () Bool)

(assert (=> b!7060100 (= e!4244473 tp!1940966)))

(declare-fun b!7060101 () Bool)

(declare-fun e!4244466 () Bool)

(declare-fun e!4244468 () Bool)

(assert (=> b!7060101 (= e!4244466 e!4244468)))

(declare-fun res!2882115 () Bool)

(assert (=> b!7060101 (=> res!2882115 e!4244468)))

(declare-fun lt!2534711 () Int)

(declare-fun contextDepthTotal!523 (Context!13166) Int)

(assert (=> b!7060101 (= res!2882115 (<= lt!2534711 (contextDepthTotal!523 lt!2534680)))))

(declare-fun lt!2534716 () Int)

(assert (=> b!7060101 (<= lt!2534711 lt!2534716)))

(declare-datatypes ((List!68289 0))(
  ( (Nil!68165) (Cons!68165 (h!74613 Context!13166) (t!382070 List!68289)) )
))
(declare-fun lt!2534684 () List!68289)

(declare-fun zipperDepthTotal!552 (List!68289) Int)

(assert (=> b!7060101 (= lt!2534716 (zipperDepthTotal!552 lt!2534684))))

(declare-fun lt!2534674 () Context!13166)

(assert (=> b!7060101 (= lt!2534711 (contextDepthTotal!523 lt!2534674))))

(declare-datatypes ((Unit!161850 0))(
  ( (Unit!161851) )
))
(declare-fun lt!2534696 () Unit!161850)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!90 (List!68289 Context!13166) Unit!161850)

(assert (=> b!7060101 (= lt!2534696 (lemmaTotalDepthZipperLargerThanOfAnyContext!90 lt!2534684 lt!2534674))))

(declare-fun z1!570 () (InoxSet Context!13166))

(declare-fun toList!10928 ((InoxSet Context!13166)) List!68289)

(assert (=> b!7060101 (= lt!2534684 (toList!10928 z1!570))))

(declare-fun lt!2534702 () List!68288)

(declare-fun lt!2534697 () Unit!161850)

(declare-fun ct2!306 () Context!13166)

(declare-fun lambda!421536 () Int)

(declare-fun lemmaConcatPreservesForall!898 (List!68288 List!68288 Int) Unit!161850)

(assert (=> b!7060101 (= lt!2534697 (lemmaConcatPreservesForall!898 lt!2534702 (exprs!7083 ct2!306) lambda!421536))))

(declare-fun lt!2534686 () Unit!161850)

(assert (=> b!7060101 (= lt!2534686 (lemmaConcatPreservesForall!898 lt!2534702 (exprs!7083 ct2!306) lambda!421536))))

(declare-fun lt!2534693 () Unit!161850)

(assert (=> b!7060101 (= lt!2534693 (lemmaConcatPreservesForall!898 lt!2534702 (exprs!7083 ct2!306) lambda!421536))))

(declare-fun lambda!421537 () Int)

(declare-fun flatMap!2513 ((InoxSet Context!13166) Int) (InoxSet Context!13166))

(declare-fun derivationStepZipperUp!2171 (Context!13166 C!35444) (InoxSet Context!13166))

(assert (=> b!7060101 (= (flatMap!2513 lt!2534688 lambda!421537) (derivationStepZipperUp!2171 lt!2534680 (h!74611 s!7408)))))

(declare-fun lt!2534706 () Unit!161850)

(declare-fun lemmaFlatMapOnSingletonSet!2022 ((InoxSet Context!13166) Context!13166 Int) Unit!161850)

(assert (=> b!7060101 (= lt!2534706 (lemmaFlatMapOnSingletonSet!2022 lt!2534688 lt!2534680 lambda!421537))))

(declare-fun lambda!421535 () Int)

(declare-fun map!15913 ((InoxSet Context!13166) Int) (InoxSet Context!13166))

(declare-fun ++!15671 (List!68288 List!68288) List!68288)

(assert (=> b!7060101 (= (map!15913 lt!2534688 lambda!421535) (store ((as const (Array Context!13166 Bool)) false) (Context!13167 (++!15671 lt!2534702 (exprs!7083 ct2!306))) true))))

(declare-fun lt!2534694 () Unit!161850)

(assert (=> b!7060101 (= lt!2534694 (lemmaConcatPreservesForall!898 lt!2534702 (exprs!7083 ct2!306) lambda!421536))))

(declare-fun lt!2534676 () Unit!161850)

(declare-fun lemmaMapOnSingletonSet!404 ((InoxSet Context!13166) Context!13166 Int) Unit!161850)

(assert (=> b!7060101 (= lt!2534676 (lemmaMapOnSingletonSet!404 lt!2534688 lt!2534680 lambda!421535))))

(assert (=> b!7060101 (= lt!2534688 (store ((as const (Array Context!13166 Bool)) false) lt!2534680 true))))

(declare-fun res!2882105 () Bool)

(assert (=> b!7060102 (=> res!2882105 e!4244465)))

(declare-fun exists!3588 ((InoxSet Context!13166) Int) Bool)

(assert (=> b!7060102 (= res!2882105 (not (exists!3588 lt!2534688 lambda!421538)))))

(declare-fun b!7060103 () Bool)

(declare-fun e!4244471 () Bool)

(declare-fun lt!2534683 () (InoxSet Context!13166))

(declare-fun matchZipper!3127 ((InoxSet Context!13166) List!68287) Bool)

(assert (=> b!7060103 (= e!4244471 (not (matchZipper!3127 lt!2534683 (t!382068 s!7408))))))

(declare-fun lt!2534692 () Unit!161850)

(assert (=> b!7060103 (= lt!2534692 (lemmaConcatPreservesForall!898 lt!2534702 (exprs!7083 ct2!306) lambda!421536))))

(declare-fun b!7060104 () Bool)

(declare-fun e!4244462 () Bool)

(declare-fun e!4244474 () Bool)

(assert (=> b!7060104 (= e!4244462 e!4244474)))

(declare-fun res!2882111 () Bool)

(assert (=> b!7060104 (=> res!2882111 e!4244474)))

(declare-fun lt!2534682 () (InoxSet Context!13166))

(declare-fun lt!2534713 () (InoxSet Context!13166))

(assert (=> b!7060104 (= res!2882111 (not (= lt!2534682 lt!2534713)))))

(declare-fun lt!2534675 () Context!13166)

(assert (=> b!7060104 (= lt!2534682 (store ((as const (Array Context!13166 Bool)) false) lt!2534675 true))))

(declare-fun lt!2534712 () Unit!161850)

(assert (=> b!7060104 (= lt!2534712 (lemmaConcatPreservesForall!898 (exprs!7083 lt!2534674) (exprs!7083 ct2!306) lambda!421536))))

(declare-fun b!7060105 () Bool)

(declare-fun res!2882123 () Bool)

(declare-fun e!4244469 () Bool)

(assert (=> b!7060105 (=> res!2882123 e!4244469)))

(assert (=> b!7060105 (= res!2882123 (not ((_ is Cons!68164) (exprs!7083 lt!2534674))))))

(declare-fun b!7060106 () Bool)

(declare-fun res!2882108 () Bool)

(assert (=> b!7060106 (=> res!2882108 e!4244469)))

(declare-fun isEmpty!39758 (List!68288) Bool)

(assert (=> b!7060106 (= res!2882108 (isEmpty!39758 (exprs!7083 lt!2534674)))))

(declare-fun b!7060107 () Bool)

(declare-fun res!2882120 () Bool)

(declare-fun e!4244475 () Bool)

(assert (=> b!7060107 (=> res!2882120 e!4244475)))

(declare-fun lt!2534671 () Bool)

(assert (=> b!7060107 (= res!2882120 (not lt!2534671))))

(declare-fun b!7060108 () Bool)

(declare-fun res!2882116 () Bool)

(assert (=> b!7060108 (=> res!2882116 e!4244465)))

(declare-datatypes ((tuple2!68176 0))(
  ( (tuple2!68177 (_1!37391 List!68287) (_2!37391 List!68287)) )
))
(declare-fun lt!2534715 () tuple2!68176)

(declare-fun ++!15672 (List!68287 List!68287) List!68287)

(assert (=> b!7060108 (= res!2882116 (not (= (++!15672 (_1!37391 lt!2534715) (_2!37391 lt!2534715)) s!7408)))))

(declare-fun b!7060109 () Bool)

(declare-fun e!4244464 () Bool)

(assert (=> b!7060109 (= e!4244464 e!4244475)))

(declare-fun res!2882127 () Bool)

(assert (=> b!7060109 (=> res!2882127 e!4244475)))

(assert (=> b!7060109 (= res!2882127 e!4244471)))

(declare-fun res!2882121 () Bool)

(assert (=> b!7060109 (=> (not res!2882121) (not e!4244471))))

(declare-fun lt!2534699 () Bool)

(assert (=> b!7060109 (= res!2882121 (not (= lt!2534671 lt!2534699)))))

(declare-fun lt!2534717 () (InoxSet Context!13166))

(assert (=> b!7060109 (= lt!2534671 (matchZipper!3127 lt!2534717 (t!382068 s!7408)))))

(declare-fun lt!2534689 () Unit!161850)

(assert (=> b!7060109 (= lt!2534689 (lemmaConcatPreservesForall!898 lt!2534702 (exprs!7083 ct2!306) lambda!421536))))

(declare-fun lt!2534704 () (InoxSet Context!13166))

(declare-fun e!4244459 () Bool)

(assert (=> b!7060109 (= (matchZipper!3127 lt!2534704 (t!382068 s!7408)) e!4244459)))

(declare-fun res!2882128 () Bool)

(assert (=> b!7060109 (=> res!2882128 e!4244459)))

(assert (=> b!7060109 (= res!2882128 lt!2534699)))

(declare-fun lt!2534666 () (InoxSet Context!13166))

(assert (=> b!7060109 (= lt!2534699 (matchZipper!3127 lt!2534666 (t!382068 s!7408)))))

(declare-fun lt!2534698 () Unit!161850)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1600 ((InoxSet Context!13166) (InoxSet Context!13166) List!68287) Unit!161850)

(assert (=> b!7060109 (= lt!2534698 (lemmaZipperConcatMatchesSameAsBothZippers!1600 lt!2534666 lt!2534683 (t!382068 s!7408)))))

(declare-fun lt!2534668 () Unit!161850)

(assert (=> b!7060109 (= lt!2534668 (lemmaConcatPreservesForall!898 lt!2534702 (exprs!7083 ct2!306) lambda!421536))))

(declare-fun lt!2534710 () Unit!161850)

(assert (=> b!7060109 (= lt!2534710 (lemmaConcatPreservesForall!898 lt!2534702 (exprs!7083 ct2!306) lambda!421536))))

(declare-fun b!7060110 () Bool)

(assert (=> b!7060110 (= e!4244468 e!4244465)))

(declare-fun res!2882103 () Bool)

(assert (=> b!7060110 (=> res!2882103 e!4244465)))

(assert (=> b!7060110 (= res!2882103 (not (matchZipper!3127 lt!2534688 (_1!37391 lt!2534715))))))

(declare-datatypes ((Option!16920 0))(
  ( (None!16919) (Some!16919 (v!53213 tuple2!68176)) )
))
(declare-fun lt!2534701 () Option!16920)

(declare-fun get!23864 (Option!16920) tuple2!68176)

(assert (=> b!7060110 (= lt!2534715 (get!23864 lt!2534701))))

(declare-fun isDefined!13621 (Option!16920) Bool)

(assert (=> b!7060110 (isDefined!13621 lt!2534701)))

(declare-fun lt!2534678 () (InoxSet Context!13166))

(declare-fun findConcatSeparationZippers!436 ((InoxSet Context!13166) (InoxSet Context!13166) List!68287 List!68287 List!68287) Option!16920)

(assert (=> b!7060110 (= lt!2534701 (findConcatSeparationZippers!436 lt!2534688 lt!2534678 Nil!68163 s!7408 s!7408))))

(assert (=> b!7060110 (= lt!2534678 (store ((as const (Array Context!13166 Bool)) false) ct2!306 true))))

(declare-fun lt!2534690 () Unit!161850)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!424 ((InoxSet Context!13166) Context!13166 List!68287) Unit!161850)

(assert (=> b!7060110 (= lt!2534690 (lemmaConcatZipperMatchesStringThenFindConcatDefined!424 lt!2534688 ct2!306 s!7408))))

(declare-fun b!7060111 () Bool)

(assert (=> b!7060111 (= e!4244460 (select lt!2534688 lt!2534680))))

(declare-fun b!7060112 () Bool)

(declare-fun e!4244476 () Bool)

(assert (=> b!7060112 (= e!4244476 e!4244466)))

(declare-fun res!2882110 () Bool)

(assert (=> b!7060112 (=> res!2882110 e!4244466)))

(declare-fun lt!2534687 () (InoxSet Context!13166))

(assert (=> b!7060112 (= res!2882110 (not (matchZipper!3127 lt!2534687 s!7408)))))

(declare-fun lt!2534714 () Unit!161850)

(assert (=> b!7060112 (= lt!2534714 (lemmaConcatPreservesForall!898 lt!2534702 (exprs!7083 ct2!306) lambda!421536))))

(declare-fun b!7060113 () Bool)

(declare-fun res!2882122 () Bool)

(assert (=> b!7060113 (=> res!2882122 e!4244465)))

(declare-fun isEmpty!39759 (List!68287) Bool)

(assert (=> b!7060113 (= res!2882122 (not (isEmpty!39759 (_1!37391 lt!2534715))))))

(declare-fun b!7060114 () Bool)

(declare-fun res!2882119 () Bool)

(assert (=> b!7060114 (=> res!2882119 e!4244460)))

(assert (=> b!7060114 (= res!2882119 (not (nullableContext!99 lt!2534674)))))

(declare-fun b!7060115 () Bool)

(declare-fun e!4244467 () Bool)

(assert (=> b!7060115 (= e!4244467 e!4244464)))

(declare-fun res!2882104 () Bool)

(assert (=> b!7060115 (=> res!2882104 e!4244464)))

(assert (=> b!7060115 (= res!2882104 (not (= lt!2534717 lt!2534704)))))

(assert (=> b!7060115 (= lt!2534704 ((_ map or) lt!2534666 lt!2534683))))

(declare-fun lt!2534703 () Context!13166)

(assert (=> b!7060115 (= lt!2534683 (derivationStepZipperUp!2171 lt!2534703 (h!74611 s!7408)))))

(declare-fun derivationStepZipperDown!2221 (Regex!17587 Context!13166 C!35444) (InoxSet Context!13166))

(assert (=> b!7060115 (= lt!2534666 (derivationStepZipperDown!2221 (h!74612 (exprs!7083 lt!2534674)) lt!2534703 (h!74611 s!7408)))))

(assert (=> b!7060115 (= lt!2534703 (Context!13167 (++!15671 lt!2534702 (exprs!7083 ct2!306))))))

(declare-fun lt!2534707 () Unit!161850)

(assert (=> b!7060115 (= lt!2534707 (lemmaConcatPreservesForall!898 lt!2534702 (exprs!7083 ct2!306) lambda!421536))))

(declare-fun lt!2534673 () Unit!161850)

(assert (=> b!7060115 (= lt!2534673 (lemmaConcatPreservesForall!898 lt!2534702 (exprs!7083 ct2!306) lambda!421536))))

(declare-fun b!7060116 () Bool)

(declare-fun res!2882124 () Bool)

(declare-fun e!4244463 () Bool)

(assert (=> b!7060116 (=> res!2882124 e!4244463)))

(declare-fun lt!2534670 () Context!13166)

(declare-fun lt!2534705 () (InoxSet Context!13166))

(assert (=> b!7060116 (= res!2882124 (not (select lt!2534705 lt!2534670)))))

(declare-fun b!7060117 () Bool)

(assert (=> b!7060117 (= e!4244469 e!4244467)))

(declare-fun res!2882112 () Bool)

(assert (=> b!7060117 (=> res!2882112 e!4244467)))

(declare-fun nullable!7270 (Regex!17587) Bool)

(assert (=> b!7060117 (= res!2882112 (not (nullable!7270 (h!74612 (exprs!7083 lt!2534674)))))))

(assert (=> b!7060117 (= lt!2534680 (Context!13167 lt!2534702))))

(declare-fun tail!13729 (List!68288) List!68288)

(assert (=> b!7060117 (= lt!2534702 (tail!13729 (exprs!7083 lt!2534674)))))

(assert (=> b!7060118 (= e!4244463 e!4244462)))

(declare-fun res!2882114 () Bool)

(assert (=> b!7060118 (=> res!2882114 e!4244462)))

(assert (=> b!7060118 (= res!2882114 (or (not (= lt!2534675 lt!2534670)) (not (select z1!570 lt!2534674))))))

(assert (=> b!7060118 (= lt!2534675 (Context!13167 (++!15671 (exprs!7083 lt!2534674) (exprs!7083 ct2!306))))))

(declare-fun lt!2534709 () Unit!161850)

(assert (=> b!7060118 (= lt!2534709 (lemmaConcatPreservesForall!898 (exprs!7083 lt!2534674) (exprs!7083 ct2!306) lambda!421536))))

(declare-fun mapPost2!416 ((InoxSet Context!13166) Int Context!13166) Context!13166)

(assert (=> b!7060118 (= lt!2534674 (mapPost2!416 z1!570 lambda!421535 lt!2534670))))

(declare-fun b!7060119 () Bool)

(declare-fun res!2882126 () Bool)

(assert (=> b!7060119 (=> res!2882126 e!4244468)))

(assert (=> b!7060119 (= res!2882126 (>= (zipperDepthTotal!552 (Cons!68165 lt!2534680 Nil!68165)) lt!2534716))))

(declare-fun b!7060120 () Bool)

(declare-fun res!2882107 () Bool)

(assert (=> b!7060120 (=> res!2882107 e!4244465)))

(assert (=> b!7060120 (= res!2882107 (not (matchZipper!3127 lt!2534678 (_2!37391 lt!2534715))))))

(declare-fun b!7060099 () Bool)

(declare-fun e!4244472 () Bool)

(declare-fun tp!1940965 () Bool)

(assert (=> b!7060099 (= e!4244472 tp!1940965)))

(declare-fun res!2882102 () Bool)

(assert (=> start!684968 (=> (not res!2882102) (not e!4244458))))

(assert (=> start!684968 (= res!2882102 (matchZipper!3127 lt!2534705 s!7408))))

(declare-fun appendTo!708 ((InoxSet Context!13166) Context!13166) (InoxSet Context!13166))

(assert (=> start!684968 (= lt!2534705 (appendTo!708 z1!570 ct2!306))))

(assert (=> start!684968 e!4244458))

(declare-fun condSetEmpty!49977 () Bool)

(assert (=> start!684968 (= condSetEmpty!49977 (= z1!570 ((as const (Array Context!13166 Bool)) false)))))

(declare-fun setRes!49977 () Bool)

(assert (=> start!684968 setRes!49977))

(declare-fun inv!86826 (Context!13166) Bool)

(assert (=> start!684968 (and (inv!86826 ct2!306) e!4244472)))

(declare-fun e!4244461 () Bool)

(assert (=> start!684968 e!4244461))

(assert (=> b!7060121 (= e!4244474 e!4244469)))

(declare-fun res!2882117 () Bool)

(assert (=> b!7060121 (=> res!2882117 e!4244469)))

(declare-fun derivationStepZipper!3037 ((InoxSet Context!13166) C!35444) (InoxSet Context!13166))

(assert (=> b!7060121 (= res!2882117 (not (= (derivationStepZipper!3037 lt!2534682 (h!74611 s!7408)) lt!2534717)))))

(assert (=> b!7060121 (= (flatMap!2513 lt!2534682 lambda!421537) (derivationStepZipperUp!2171 lt!2534675 (h!74611 s!7408)))))

(declare-fun lt!2534695 () Unit!161850)

(assert (=> b!7060121 (= lt!2534695 (lemmaFlatMapOnSingletonSet!2022 lt!2534682 lt!2534675 lambda!421537))))

(assert (=> b!7060121 (= lt!2534717 (derivationStepZipperUp!2171 lt!2534675 (h!74611 s!7408)))))

(declare-fun lt!2534667 () Unit!161850)

(assert (=> b!7060121 (= lt!2534667 (lemmaConcatPreservesForall!898 (exprs!7083 lt!2534674) (exprs!7083 ct2!306) lambda!421536))))

(declare-fun b!7060122 () Bool)

(declare-fun e!4244470 () Bool)

(assert (=> b!7060122 (= e!4244470 e!4244476)))

(declare-fun res!2882118 () Bool)

(assert (=> b!7060122 (=> res!2882118 e!4244476)))

(assert (=> b!7060122 (= res!2882118 (not (= (derivationStepZipper!3037 lt!2534687 (h!74611 s!7408)) lt!2534683)))))

(declare-fun lt!2534672 () Unit!161850)

(assert (=> b!7060122 (= lt!2534672 (lemmaConcatPreservesForall!898 lt!2534702 (exprs!7083 ct2!306) lambda!421536))))

(declare-fun lt!2534669 () Unit!161850)

(assert (=> b!7060122 (= lt!2534669 (lemmaConcatPreservesForall!898 lt!2534702 (exprs!7083 ct2!306) lambda!421536))))

(assert (=> b!7060122 (= (flatMap!2513 lt!2534687 lambda!421537) (derivationStepZipperUp!2171 lt!2534703 (h!74611 s!7408)))))

(declare-fun lt!2534708 () Unit!161850)

(assert (=> b!7060122 (= lt!2534708 (lemmaFlatMapOnSingletonSet!2022 lt!2534687 lt!2534703 lambda!421537))))

(assert (=> b!7060122 (= lt!2534687 (store ((as const (Array Context!13166 Bool)) false) lt!2534703 true))))

(declare-fun lt!2534691 () Unit!161850)

(assert (=> b!7060122 (= lt!2534691 (lemmaConcatPreservesForall!898 lt!2534702 (exprs!7083 ct2!306) lambda!421536))))

(declare-fun lt!2534685 () Unit!161850)

(assert (=> b!7060122 (= lt!2534685 (lemmaConcatPreservesForall!898 lt!2534702 (exprs!7083 ct2!306) lambda!421536))))

(declare-fun setIsEmpty!49977 () Bool)

(assert (=> setIsEmpty!49977 setRes!49977))

(declare-fun tp!1940964 () Bool)

(declare-fun setNonEmpty!49977 () Bool)

(declare-fun setElem!49977 () Context!13166)

(assert (=> setNonEmpty!49977 (= setRes!49977 (and tp!1940964 (inv!86826 setElem!49977) e!4244473))))

(declare-fun setRest!49977 () (InoxSet Context!13166))

(assert (=> setNonEmpty!49977 (= z1!570 ((_ map or) (store ((as const (Array Context!13166 Bool)) false) setElem!49977 true) setRest!49977))))

(declare-fun b!7060123 () Bool)

(declare-fun tp_is_empty!44399 () Bool)

(declare-fun tp!1940963 () Bool)

(assert (=> b!7060123 (= e!4244461 (and tp_is_empty!44399 tp!1940963))))

(assert (=> b!7060124 (= e!4244458 (not e!4244463))))

(declare-fun res!2882106 () Bool)

(assert (=> b!7060124 (=> res!2882106 e!4244463)))

(assert (=> b!7060124 (= res!2882106 (not (matchZipper!3127 lt!2534713 s!7408)))))

(assert (=> b!7060124 (= lt!2534713 (store ((as const (Array Context!13166 Bool)) false) lt!2534670 true))))

(assert (=> b!7060124 (= lt!2534670 (getWitness!1661 lt!2534705 lambda!421534))))

(declare-fun lt!2534681 () List!68289)

(declare-fun exists!3589 (List!68289 Int) Bool)

(assert (=> b!7060124 (exists!3589 lt!2534681 lambda!421534)))

(declare-fun lt!2534679 () Unit!161850)

(declare-fun lemmaZipperMatchesExistsMatchingContext!508 (List!68289 List!68287) Unit!161850)

(assert (=> b!7060124 (= lt!2534679 (lemmaZipperMatchesExistsMatchingContext!508 lt!2534681 s!7408))))

(assert (=> b!7060124 (= lt!2534681 (toList!10928 lt!2534705))))

(declare-fun b!7060125 () Bool)

(assert (=> b!7060125 (= e!4244475 e!4244470)))

(declare-fun res!2882113 () Bool)

(assert (=> b!7060125 (=> res!2882113 e!4244470)))

(assert (=> b!7060125 (= res!2882113 (not (matchZipper!3127 lt!2534683 (t!382068 s!7408))))))

(declare-fun lt!2534677 () Unit!161850)

(assert (=> b!7060125 (= lt!2534677 (lemmaConcatPreservesForall!898 lt!2534702 (exprs!7083 ct2!306) lambda!421536))))

(declare-fun b!7060126 () Bool)

(assert (=> b!7060126 (= e!4244459 (matchZipper!3127 lt!2534683 (t!382068 s!7408)))))

(assert (= (and start!684968 res!2882102) b!7060097))

(assert (= (and b!7060097 res!2882125) b!7060124))

(assert (= (and b!7060124 (not res!2882106)) b!7060116))

(assert (= (and b!7060116 (not res!2882124)) b!7060118))

(assert (= (and b!7060118 (not res!2882114)) b!7060104))

(assert (= (and b!7060104 (not res!2882111)) b!7060121))

(assert (= (and b!7060121 (not res!2882117)) b!7060105))

(assert (= (and b!7060105 (not res!2882123)) b!7060106))

(assert (= (and b!7060106 (not res!2882108)) b!7060117))

(assert (= (and b!7060117 (not res!2882112)) b!7060115))

(assert (= (and b!7060115 (not res!2882104)) b!7060109))

(assert (= (and b!7060109 (not res!2882128)) b!7060126))

(assert (= (and b!7060109 res!2882121) b!7060103))

(assert (= (and b!7060109 (not res!2882127)) b!7060107))

(assert (= (and b!7060107 (not res!2882120)) b!7060125))

(assert (= (and b!7060125 (not res!2882113)) b!7060122))

(assert (= (and b!7060122 (not res!2882118)) b!7060112))

(assert (= (and b!7060112 (not res!2882110)) b!7060101))

(assert (= (and b!7060101 (not res!2882115)) b!7060119))

(assert (= (and b!7060119 (not res!2882126)) b!7060110))

(assert (= (and b!7060110 (not res!2882103)) b!7060120))

(assert (= (and b!7060120 (not res!2882107)) b!7060108))

(assert (= (and b!7060108 (not res!2882116)) b!7060113))

(assert (= (and b!7060113 (not res!2882122)) b!7060102))

(assert (= (and b!7060102 (not res!2882105)) b!7060098))

(assert (= (and b!7060098 (not res!2882109)) b!7060114))

(assert (= (and b!7060114 (not res!2882119)) b!7060111))

(assert (= (and start!684968 condSetEmpty!49977) setIsEmpty!49977))

(assert (= (and start!684968 (not condSetEmpty!49977)) setNonEmpty!49977))

(assert (= setNonEmpty!49977 b!7060100))

(assert (= start!684968 b!7060099))

(assert (= (and start!684968 ((_ is Cons!68163) s!7408)) b!7060123))

(declare-fun m!7779818 () Bool)

(assert (=> b!7060115 m!7779818))

(declare-fun m!7779820 () Bool)

(assert (=> b!7060115 m!7779820))

(declare-fun m!7779822 () Bool)

(assert (=> b!7060115 m!7779822))

(assert (=> b!7060115 m!7779820))

(declare-fun m!7779824 () Bool)

(assert (=> b!7060115 m!7779824))

(declare-fun m!7779826 () Bool)

(assert (=> b!7060121 m!7779826))

(declare-fun m!7779828 () Bool)

(assert (=> b!7060121 m!7779828))

(declare-fun m!7779830 () Bool)

(assert (=> b!7060121 m!7779830))

(declare-fun m!7779832 () Bool)

(assert (=> b!7060121 m!7779832))

(declare-fun m!7779834 () Bool)

(assert (=> b!7060121 m!7779834))

(declare-fun m!7779836 () Bool)

(assert (=> start!684968 m!7779836))

(declare-fun m!7779838 () Bool)

(assert (=> start!684968 m!7779838))

(declare-fun m!7779840 () Bool)

(assert (=> start!684968 m!7779840))

(declare-fun m!7779842 () Bool)

(assert (=> b!7060104 m!7779842))

(assert (=> b!7060104 m!7779828))

(declare-fun m!7779844 () Bool)

(assert (=> b!7060108 m!7779844))

(declare-fun m!7779846 () Bool)

(assert (=> b!7060098 m!7779846))

(declare-fun m!7779848 () Bool)

(assert (=> b!7060098 m!7779848))

(declare-fun m!7779850 () Bool)

(assert (=> b!7060110 m!7779850))

(declare-fun m!7779852 () Bool)

(assert (=> b!7060110 m!7779852))

(declare-fun m!7779854 () Bool)

(assert (=> b!7060110 m!7779854))

(declare-fun m!7779856 () Bool)

(assert (=> b!7060110 m!7779856))

(declare-fun m!7779858 () Bool)

(assert (=> b!7060110 m!7779858))

(declare-fun m!7779860 () Bool)

(assert (=> b!7060110 m!7779860))

(declare-fun m!7779862 () Bool)

(assert (=> b!7060119 m!7779862))

(declare-fun m!7779864 () Bool)

(assert (=> setNonEmpty!49977 m!7779864))

(declare-fun m!7779866 () Bool)

(assert (=> b!7060117 m!7779866))

(declare-fun m!7779868 () Bool)

(assert (=> b!7060117 m!7779868))

(declare-fun m!7779870 () Bool)

(assert (=> b!7060109 m!7779870))

(assert (=> b!7060109 m!7779820))

(declare-fun m!7779872 () Bool)

(assert (=> b!7060109 m!7779872))

(assert (=> b!7060109 m!7779820))

(declare-fun m!7779874 () Bool)

(assert (=> b!7060109 m!7779874))

(declare-fun m!7779876 () Bool)

(assert (=> b!7060109 m!7779876))

(assert (=> b!7060109 m!7779820))

(declare-fun m!7779878 () Bool)

(assert (=> b!7060102 m!7779878))

(declare-fun m!7779880 () Bool)

(assert (=> b!7060120 m!7779880))

(declare-fun m!7779882 () Bool)

(assert (=> b!7060125 m!7779882))

(assert (=> b!7060125 m!7779820))

(assert (=> b!7060103 m!7779882))

(assert (=> b!7060103 m!7779820))

(declare-fun m!7779884 () Bool)

(assert (=> b!7060113 m!7779884))

(declare-fun m!7779886 () Bool)

(assert (=> b!7060112 m!7779886))

(assert (=> b!7060112 m!7779820))

(declare-fun m!7779888 () Bool)

(assert (=> b!7060114 m!7779888))

(declare-fun m!7779890 () Bool)

(assert (=> b!7060124 m!7779890))

(declare-fun m!7779892 () Bool)

(assert (=> b!7060124 m!7779892))

(declare-fun m!7779894 () Bool)

(assert (=> b!7060124 m!7779894))

(declare-fun m!7779896 () Bool)

(assert (=> b!7060124 m!7779896))

(declare-fun m!7779898 () Bool)

(assert (=> b!7060124 m!7779898))

(declare-fun m!7779900 () Bool)

(assert (=> b!7060124 m!7779900))

(declare-fun m!7779902 () Bool)

(assert (=> b!7060118 m!7779902))

(declare-fun m!7779904 () Bool)

(assert (=> b!7060118 m!7779904))

(assert (=> b!7060118 m!7779828))

(declare-fun m!7779906 () Bool)

(assert (=> b!7060118 m!7779906))

(declare-fun m!7779908 () Bool)

(assert (=> b!7060106 m!7779908))

(assert (=> b!7060101 m!7779820))

(declare-fun m!7779910 () Bool)

(assert (=> b!7060101 m!7779910))

(declare-fun m!7779912 () Bool)

(assert (=> b!7060101 m!7779912))

(declare-fun m!7779914 () Bool)

(assert (=> b!7060101 m!7779914))

(declare-fun m!7779916 () Bool)

(assert (=> b!7060101 m!7779916))

(declare-fun m!7779918 () Bool)

(assert (=> b!7060101 m!7779918))

(declare-fun m!7779920 () Bool)

(assert (=> b!7060101 m!7779920))

(declare-fun m!7779922 () Bool)

(assert (=> b!7060101 m!7779922))

(declare-fun m!7779924 () Bool)

(assert (=> b!7060101 m!7779924))

(assert (=> b!7060101 m!7779820))

(declare-fun m!7779926 () Bool)

(assert (=> b!7060101 m!7779926))

(declare-fun m!7779928 () Bool)

(assert (=> b!7060101 m!7779928))

(assert (=> b!7060101 m!7779820))

(declare-fun m!7779930 () Bool)

(assert (=> b!7060101 m!7779930))

(assert (=> b!7060101 m!7779820))

(declare-fun m!7779932 () Bool)

(assert (=> b!7060101 m!7779932))

(assert (=> b!7060101 m!7779824))

(assert (=> b!7060122 m!7779818))

(assert (=> b!7060122 m!7779820))

(declare-fun m!7779934 () Bool)

(assert (=> b!7060122 m!7779934))

(declare-fun m!7779936 () Bool)

(assert (=> b!7060122 m!7779936))

(assert (=> b!7060122 m!7779820))

(declare-fun m!7779938 () Bool)

(assert (=> b!7060122 m!7779938))

(assert (=> b!7060122 m!7779820))

(declare-fun m!7779940 () Bool)

(assert (=> b!7060122 m!7779940))

(assert (=> b!7060122 m!7779820))

(assert (=> b!7060126 m!7779882))

(declare-fun m!7779942 () Bool)

(assert (=> b!7060116 m!7779942))

(declare-fun m!7779944 () Bool)

(assert (=> b!7060111 m!7779944))

(check-sat (not b!7060104) (not b!7060106) (not b!7060109) (not b!7060098) (not b!7060122) (not b!7060110) (not b!7060117) (not b!7060099) (not b!7060114) (not b!7060102) (not b!7060119) (not b!7060101) (not b!7060112) (not b!7060113) (not b!7060108) (not setNonEmpty!49977) (not b!7060124) (not b!7060123) (not b!7060115) (not b!7060121) (not b!7060120) (not b!7060125) (not b!7060100) (not b!7060118) (not b!7060103) (not b!7060126) tp_is_empty!44399 (not start!684968))
(check-sat)
