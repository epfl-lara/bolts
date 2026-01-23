; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!679046 () Bool)

(assert start!679046)

(declare-fun b!7029754 () Bool)

(assert (=> b!7029754 true))

(declare-fun b!7029741 () Bool)

(assert (=> b!7029741 true))

(declare-fun b!7029753 () Bool)

(assert (=> b!7029753 true))

(declare-fun b!7029733 () Bool)

(declare-fun e!4226007 () Bool)

(declare-datatypes ((C!35182 0))(
  ( (C!35183 (val!27293 Int)) )
))
(declare-datatypes ((Regex!17456 0))(
  ( (ElementMatch!17456 (c!1307183 C!35182)) (Concat!26301 (regOne!35424 Regex!17456) (regTwo!35424 Regex!17456)) (EmptyExpr!17456) (Star!17456 (reg!17785 Regex!17456)) (EmptyLang!17456) (Union!17456 (regOne!35425 Regex!17456) (regTwo!35425 Regex!17456)) )
))
(declare-datatypes ((List!67896 0))(
  ( (Nil!67772) (Cons!67772 (h!74220 Regex!17456) (t!381659 List!67896)) )
))
(declare-datatypes ((Context!12904 0))(
  ( (Context!12905 (exprs!6952 List!67896)) )
))
(declare-fun lt!2516995 () (Set Context!12904))

(declare-datatypes ((List!67897 0))(
  ( (Nil!67773) (Cons!67773 (h!74221 C!35182) (t!381660 List!67897)) )
))
(declare-fun s!7408 () List!67897)

(declare-fun matchZipper!2996 ((Set Context!12904) List!67897) Bool)

(assert (=> b!7029733 (= e!4226007 (not (matchZipper!2996 lt!2516995 (t!381660 s!7408))))))

(declare-fun lambda!414032 () Int)

(declare-datatypes ((Unit!161580 0))(
  ( (Unit!161581) )
))
(declare-fun lt!2516986 () Unit!161580)

(declare-fun lt!2517005 () List!67896)

(declare-fun ct2!306 () Context!12904)

(declare-fun lemmaConcatPreservesForall!777 (List!67896 List!67896 Int) Unit!161580)

(assert (=> b!7029733 (= lt!2516986 (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(declare-fun res!2869635 () Bool)

(declare-fun e!4226014 () Bool)

(assert (=> start!679046 (=> (not res!2869635) (not e!4226014))))

(declare-fun lt!2516980 () (Set Context!12904))

(assert (=> start!679046 (= res!2869635 (matchZipper!2996 lt!2516980 s!7408))))

(declare-fun z1!570 () (Set Context!12904))

(declare-fun appendTo!577 ((Set Context!12904) Context!12904) (Set Context!12904))

(assert (=> start!679046 (= lt!2516980 (appendTo!577 z1!570 ct2!306))))

(assert (=> start!679046 e!4226014))

(declare-fun condSetEmpty!49091 () Bool)

(assert (=> start!679046 (= condSetEmpty!49091 (= z1!570 (as set.empty (Set Context!12904))))))

(declare-fun setRes!49091 () Bool)

(assert (=> start!679046 setRes!49091))

(declare-fun e!4225999 () Bool)

(declare-fun inv!86500 (Context!12904) Bool)

(assert (=> start!679046 (and (inv!86500 ct2!306) e!4225999)))

(declare-fun e!4226005 () Bool)

(assert (=> start!679046 e!4226005))

(declare-fun b!7029734 () Bool)

(declare-fun e!4226006 () Bool)

(declare-fun e!4226013 () Bool)

(assert (=> b!7029734 (= e!4226006 e!4226013)))

(declare-fun res!2869633 () Bool)

(assert (=> b!7029734 (=> res!2869633 e!4226013)))

(declare-fun lt!2516998 () (Set Context!12904))

(declare-fun lt!2516974 () (Set Context!12904))

(assert (=> b!7029734 (= res!2869633 (not (= lt!2516998 lt!2516974)))))

(declare-fun lt!2516988 () (Set Context!12904))

(assert (=> b!7029734 (= lt!2516974 (set.union lt!2516988 lt!2516995))))

(declare-fun lt!2516992 () Context!12904)

(declare-fun derivationStepZipperUp!2066 (Context!12904 C!35182) (Set Context!12904))

(assert (=> b!7029734 (= lt!2516995 (derivationStepZipperUp!2066 lt!2516992 (h!74221 s!7408)))))

(declare-fun lt!2516970 () Context!12904)

(declare-fun derivationStepZipperDown!2120 (Regex!17456 Context!12904 C!35182) (Set Context!12904))

(assert (=> b!7029734 (= lt!2516988 (derivationStepZipperDown!2120 (h!74220 (exprs!6952 lt!2516970)) lt!2516992 (h!74221 s!7408)))))

(declare-fun ++!15492 (List!67896 List!67896) List!67896)

(assert (=> b!7029734 (= lt!2516992 (Context!12905 (++!15492 lt!2517005 (exprs!6952 ct2!306))))))

(declare-fun lt!2516991 () Unit!161580)

(assert (=> b!7029734 (= lt!2516991 (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(declare-fun lt!2517000 () Unit!161580)

(assert (=> b!7029734 (= lt!2517000 (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(declare-fun setIsEmpty!49091 () Bool)

(assert (=> setIsEmpty!49091 setRes!49091))

(declare-fun b!7029735 () Bool)

(declare-fun res!2869649 () Bool)

(assert (=> b!7029735 (=> (not res!2869649) (not e!4226014))))

(assert (=> b!7029735 (= res!2869649 (is-Cons!67773 s!7408))))

(declare-fun b!7029736 () Bool)

(declare-fun res!2869642 () Bool)

(declare-fun e!4226008 () Bool)

(assert (=> b!7029736 (=> res!2869642 e!4226008)))

(declare-fun lt!2516973 () Bool)

(assert (=> b!7029736 (= res!2869642 (not lt!2516973))))

(declare-fun b!7029737 () Bool)

(declare-fun e!4226015 () Bool)

(declare-fun e!4226012 () Bool)

(assert (=> b!7029737 (= e!4226015 e!4226012)))

(declare-fun res!2869644 () Bool)

(assert (=> b!7029737 (=> res!2869644 e!4226012)))

(declare-fun lt!2517001 () (Set Context!12904))

(declare-fun derivationStepZipper!2912 ((Set Context!12904) C!35182) (Set Context!12904))

(assert (=> b!7029737 (= res!2869644 (not (= (derivationStepZipper!2912 lt!2517001 (h!74221 s!7408)) lt!2516995)))))

(declare-fun lt!2516996 () Unit!161580)

(assert (=> b!7029737 (= lt!2516996 (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(declare-fun lt!2517010 () Unit!161580)

(assert (=> b!7029737 (= lt!2517010 (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(declare-fun lambda!414033 () Int)

(declare-fun flatMap!2403 ((Set Context!12904) Int) (Set Context!12904))

(assert (=> b!7029737 (= (flatMap!2403 lt!2517001 lambda!414033) (derivationStepZipperUp!2066 lt!2516992 (h!74221 s!7408)))))

(declare-fun lt!2517014 () Unit!161580)

(declare-fun lemmaFlatMapOnSingletonSet!1917 ((Set Context!12904) Context!12904 Int) Unit!161580)

(assert (=> b!7029737 (= lt!2517014 (lemmaFlatMapOnSingletonSet!1917 lt!2517001 lt!2516992 lambda!414033))))

(assert (=> b!7029737 (= lt!2517001 (set.insert lt!2516992 (as set.empty (Set Context!12904))))))

(declare-fun lt!2517013 () Unit!161580)

(assert (=> b!7029737 (= lt!2517013 (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(declare-fun lt!2516981 () Unit!161580)

(assert (=> b!7029737 (= lt!2516981 (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(declare-fun b!7029738 () Bool)

(declare-fun res!2869638 () Bool)

(declare-fun e!4225998 () Bool)

(assert (=> b!7029738 (=> res!2869638 e!4225998)))

(declare-fun lt!2516975 () Context!12904)

(assert (=> b!7029738 (= res!2869638 (not (set.member lt!2516975 lt!2516980)))))

(declare-fun b!7029739 () Bool)

(declare-fun tp_is_empty!44137 () Bool)

(declare-fun tp!1936086 () Bool)

(assert (=> b!7029739 (= e!4226005 (and tp_is_empty!44137 tp!1936086))))

(declare-fun b!7029740 () Bool)

(declare-fun e!4226001 () Bool)

(declare-datatypes ((tuple2!68058 0))(
  ( (tuple2!68059 (_1!37332 List!67897) (_2!37332 List!67897)) )
))
(declare-fun lt!2516984 () tuple2!68058)

(declare-fun ++!15493 (List!67897 List!67897) List!67897)

(assert (=> b!7029740 (= e!4226001 (= (++!15493 (_1!37332 lt!2516984) (_2!37332 lt!2516984)) s!7408))))

(declare-fun setElem!49091 () Context!12904)

(declare-fun setNonEmpty!49091 () Bool)

(declare-fun e!4226000 () Bool)

(declare-fun tp!1936084 () Bool)

(assert (=> setNonEmpty!49091 (= setRes!49091 (and tp!1936084 (inv!86500 setElem!49091) e!4226000))))

(declare-fun setRest!49091 () (Set Context!12904))

(assert (=> setNonEmpty!49091 (= z1!570 (set.union (set.insert setElem!49091 (as set.empty (Set Context!12904))) setRest!49091))))

(declare-fun e!4226003 () Bool)

(assert (=> b!7029741 (= e!4225998 e!4226003)))

(declare-fun res!2869652 () Bool)

(assert (=> b!7029741 (=> res!2869652 e!4226003)))

(declare-fun lt!2516985 () Context!12904)

(assert (=> b!7029741 (= res!2869652 (or (not (= lt!2516985 lt!2516975)) (not (set.member lt!2516970 z1!570))))))

(assert (=> b!7029741 (= lt!2516985 (Context!12905 (++!15492 (exprs!6952 lt!2516970) (exprs!6952 ct2!306))))))

(declare-fun lt!2516990 () Unit!161580)

(assert (=> b!7029741 (= lt!2516990 (lemmaConcatPreservesForall!777 (exprs!6952 lt!2516970) (exprs!6952 ct2!306) lambda!414032))))

(declare-fun lambda!414031 () Int)

(declare-fun mapPost2!297 ((Set Context!12904) Int Context!12904) Context!12904)

(assert (=> b!7029741 (= lt!2516970 (mapPost2!297 z1!570 lambda!414031 lt!2516975))))

(declare-fun b!7029742 () Bool)

(declare-fun e!4226010 () Bool)

(assert (=> b!7029742 (= e!4226003 e!4226010)))

(declare-fun res!2869640 () Bool)

(assert (=> b!7029742 (=> res!2869640 e!4226010)))

(declare-fun lt!2517011 () (Set Context!12904))

(declare-fun lt!2516971 () (Set Context!12904))

(assert (=> b!7029742 (= res!2869640 (not (= lt!2517011 lt!2516971)))))

(assert (=> b!7029742 (= lt!2517011 (set.insert lt!2516985 (as set.empty (Set Context!12904))))))

(declare-fun lt!2517019 () Unit!161580)

(assert (=> b!7029742 (= lt!2517019 (lemmaConcatPreservesForall!777 (exprs!6952 lt!2516970) (exprs!6952 ct2!306) lambda!414032))))

(declare-fun b!7029743 () Bool)

(declare-fun res!2869641 () Bool)

(assert (=> b!7029743 (=> res!2869641 e!4226001)))

(declare-fun lt!2516987 () (Set Context!12904))

(assert (=> b!7029743 (= res!2869641 (not (matchZipper!2996 lt!2516987 (_2!37332 lt!2516984))))))

(declare-fun b!7029744 () Bool)

(declare-fun e!4226009 () Bool)

(assert (=> b!7029744 (= e!4226009 e!4226006)))

(declare-fun res!2869654 () Bool)

(assert (=> b!7029744 (=> res!2869654 e!4226006)))

(declare-fun nullable!7167 (Regex!17456) Bool)

(assert (=> b!7029744 (= res!2869654 (not (nullable!7167 (h!74220 (exprs!6952 lt!2516970)))))))

(declare-fun lt!2517012 () Context!12904)

(assert (=> b!7029744 (= lt!2517012 (Context!12905 lt!2517005))))

(declare-fun tail!13536 (List!67896) List!67896)

(assert (=> b!7029744 (= lt!2517005 (tail!13536 (exprs!6952 lt!2516970)))))

(declare-fun b!7029745 () Bool)

(assert (=> b!7029745 (= e!4226008 e!4226015)))

(declare-fun res!2869643 () Bool)

(assert (=> b!7029745 (=> res!2869643 e!4226015)))

(assert (=> b!7029745 (= res!2869643 (not (matchZipper!2996 lt!2516995 (t!381660 s!7408))))))

(declare-fun lt!2516999 () Unit!161580)

(assert (=> b!7029745 (= lt!2516999 (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(declare-fun b!7029746 () Bool)

(declare-fun res!2869650 () Bool)

(assert (=> b!7029746 (=> res!2869650 e!4226009)))

(declare-fun isEmpty!39518 (List!67896) Bool)

(assert (=> b!7029746 (= res!2869650 (isEmpty!39518 (exprs!6952 lt!2516970)))))

(declare-fun b!7029747 () Bool)

(declare-fun res!2869645 () Bool)

(assert (=> b!7029747 (=> res!2869645 e!4226009)))

(assert (=> b!7029747 (= res!2869645 (not (is-Cons!67772 (exprs!6952 lt!2516970))))))

(declare-fun b!7029748 () Bool)

(declare-fun tp!1936087 () Bool)

(assert (=> b!7029748 (= e!4225999 tp!1936087)))

(declare-fun b!7029749 () Bool)

(declare-fun e!4226011 () Bool)

(assert (=> b!7029749 (= e!4226011 e!4226001)))

(declare-fun res!2869646 () Bool)

(assert (=> b!7029749 (=> res!2869646 e!4226001)))

(declare-fun lt!2516994 () (Set Context!12904))

(assert (=> b!7029749 (= res!2869646 (not (matchZipper!2996 lt!2516994 (_1!37332 lt!2516984))))))

(declare-datatypes ((Option!16861 0))(
  ( (None!16860) (Some!16860 (v!53142 tuple2!68058)) )
))
(declare-fun lt!2516997 () Option!16861)

(declare-fun get!23740 (Option!16861) tuple2!68058)

(assert (=> b!7029749 (= lt!2516984 (get!23740 lt!2516997))))

(declare-fun isDefined!13562 (Option!16861) Bool)

(assert (=> b!7029749 (isDefined!13562 lt!2516997)))

(declare-fun findConcatSeparationZippers!377 ((Set Context!12904) (Set Context!12904) List!67897 List!67897 List!67897) Option!16861)

(assert (=> b!7029749 (= lt!2516997 (findConcatSeparationZippers!377 lt!2516994 lt!2516987 Nil!67773 s!7408 s!7408))))

(assert (=> b!7029749 (= lt!2516987 (set.insert ct2!306 (as set.empty (Set Context!12904))))))

(declare-fun lt!2516978 () Unit!161580)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!365 ((Set Context!12904) Context!12904 List!67897) Unit!161580)

(assert (=> b!7029749 (= lt!2516978 (lemmaConcatZipperMatchesStringThenFindConcatDefined!365 lt!2516994 ct2!306 s!7408))))

(declare-fun b!7029750 () Bool)

(declare-fun e!4226002 () Bool)

(assert (=> b!7029750 (= e!4226012 e!4226002)))

(declare-fun res!2869637 () Bool)

(assert (=> b!7029750 (=> res!2869637 e!4226002)))

(assert (=> b!7029750 (= res!2869637 (not (matchZipper!2996 lt!2517001 s!7408)))))

(declare-fun lt!2517018 () Unit!161580)

(assert (=> b!7029750 (= lt!2517018 (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(declare-fun b!7029751 () Bool)

(declare-fun res!2869636 () Bool)

(assert (=> b!7029751 (=> res!2869636 e!4226011)))

(declare-fun lt!2516976 () Int)

(declare-datatypes ((List!67898 0))(
  ( (Nil!67774) (Cons!67774 (h!74222 Context!12904) (t!381661 List!67898)) )
))
(declare-fun zipperDepthTotal!519 (List!67898) Int)

(assert (=> b!7029751 (= res!2869636 (>= (zipperDepthTotal!519 (Cons!67774 lt!2517012 Nil!67774)) lt!2516976))))

(declare-fun b!7029752 () Bool)

(declare-fun e!4226004 () Bool)

(assert (=> b!7029752 (= e!4226004 (matchZipper!2996 lt!2516995 (t!381660 s!7408)))))

(assert (=> b!7029753 (= e!4226010 e!4226009)))

(declare-fun res!2869634 () Bool)

(assert (=> b!7029753 (=> res!2869634 e!4226009)))

(assert (=> b!7029753 (= res!2869634 (not (= (derivationStepZipper!2912 lt!2517011 (h!74221 s!7408)) lt!2516998)))))

(assert (=> b!7029753 (= (flatMap!2403 lt!2517011 lambda!414033) (derivationStepZipperUp!2066 lt!2516985 (h!74221 s!7408)))))

(declare-fun lt!2517002 () Unit!161580)

(assert (=> b!7029753 (= lt!2517002 (lemmaFlatMapOnSingletonSet!1917 lt!2517011 lt!2516985 lambda!414033))))

(assert (=> b!7029753 (= lt!2516998 (derivationStepZipperUp!2066 lt!2516985 (h!74221 s!7408)))))

(declare-fun lt!2516982 () Unit!161580)

(assert (=> b!7029753 (= lt!2516982 (lemmaConcatPreservesForall!777 (exprs!6952 lt!2516970) (exprs!6952 ct2!306) lambda!414032))))

(assert (=> b!7029754 (= e!4226014 (not e!4225998))))

(declare-fun res!2869651 () Bool)

(assert (=> b!7029754 (=> res!2869651 e!4225998)))

(assert (=> b!7029754 (= res!2869651 (not (matchZipper!2996 lt!2516971 s!7408)))))

(assert (=> b!7029754 (= lt!2516971 (set.insert lt!2516975 (as set.empty (Set Context!12904))))))

(declare-fun lambda!414030 () Int)

(declare-fun getWitness!1456 ((Set Context!12904) Int) Context!12904)

(assert (=> b!7029754 (= lt!2516975 (getWitness!1456 lt!2516980 lambda!414030))))

(declare-fun lt!2517016 () List!67898)

(declare-fun exists!3375 (List!67898 Int) Bool)

(assert (=> b!7029754 (exists!3375 lt!2517016 lambda!414030)))

(declare-fun lt!2516983 () Unit!161580)

(declare-fun lemmaZipperMatchesExistsMatchingContext!395 (List!67898 List!67897) Unit!161580)

(assert (=> b!7029754 (= lt!2516983 (lemmaZipperMatchesExistsMatchingContext!395 lt!2517016 s!7408))))

(declare-fun toList!10799 ((Set Context!12904)) List!67898)

(assert (=> b!7029754 (= lt!2517016 (toList!10799 lt!2516980))))

(declare-fun b!7029755 () Bool)

(declare-fun tp!1936085 () Bool)

(assert (=> b!7029755 (= e!4226000 tp!1936085)))

(declare-fun b!7029756 () Bool)

(assert (=> b!7029756 (= e!4226013 e!4226008)))

(declare-fun res!2869639 () Bool)

(assert (=> b!7029756 (=> res!2869639 e!4226008)))

(assert (=> b!7029756 (= res!2869639 e!4226007)))

(declare-fun res!2869647 () Bool)

(assert (=> b!7029756 (=> (not res!2869647) (not e!4226007))))

(declare-fun lt!2517007 () Bool)

(assert (=> b!7029756 (= res!2869647 (not (= lt!2516973 lt!2517007)))))

(assert (=> b!7029756 (= lt!2516973 (matchZipper!2996 lt!2516998 (t!381660 s!7408)))))

(declare-fun lt!2516972 () Unit!161580)

(assert (=> b!7029756 (= lt!2516972 (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(assert (=> b!7029756 (= (matchZipper!2996 lt!2516974 (t!381660 s!7408)) e!4226004)))

(declare-fun res!2869648 () Bool)

(assert (=> b!7029756 (=> res!2869648 e!4226004)))

(assert (=> b!7029756 (= res!2869648 lt!2517007)))

(assert (=> b!7029756 (= lt!2517007 (matchZipper!2996 lt!2516988 (t!381660 s!7408)))))

(declare-fun lt!2517015 () Unit!161580)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1529 ((Set Context!12904) (Set Context!12904) List!67897) Unit!161580)

(assert (=> b!7029756 (= lt!2517015 (lemmaZipperConcatMatchesSameAsBothZippers!1529 lt!2516988 lt!2516995 (t!381660 s!7408)))))

(declare-fun lt!2516989 () Unit!161580)

(assert (=> b!7029756 (= lt!2516989 (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(declare-fun lt!2517003 () Unit!161580)

(assert (=> b!7029756 (= lt!2517003 (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(declare-fun b!7029757 () Bool)

(assert (=> b!7029757 (= e!4226002 e!4226011)))

(declare-fun res!2869653 () Bool)

(assert (=> b!7029757 (=> res!2869653 e!4226011)))

(declare-fun lt!2517017 () Int)

(declare-fun contextDepthTotal!491 (Context!12904) Int)

(assert (=> b!7029757 (= res!2869653 (<= lt!2517017 (contextDepthTotal!491 lt!2517012)))))

(assert (=> b!7029757 (<= lt!2517017 lt!2516976)))

(declare-fun lt!2517009 () List!67898)

(assert (=> b!7029757 (= lt!2516976 (zipperDepthTotal!519 lt!2517009))))

(assert (=> b!7029757 (= lt!2517017 (contextDepthTotal!491 lt!2516970))))

(declare-fun lt!2517006 () Unit!161580)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!59 (List!67898 Context!12904) Unit!161580)

(assert (=> b!7029757 (= lt!2517006 (lemmaTotalDepthZipperLargerThanOfAnyContext!59 lt!2517009 lt!2516970))))

(assert (=> b!7029757 (= lt!2517009 (toList!10799 z1!570))))

(declare-fun lt!2517008 () Unit!161580)

(assert (=> b!7029757 (= lt!2517008 (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(declare-fun lt!2517020 () Unit!161580)

(assert (=> b!7029757 (= lt!2517020 (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(declare-fun lt!2516993 () Unit!161580)

(assert (=> b!7029757 (= lt!2516993 (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(assert (=> b!7029757 (= (flatMap!2403 lt!2516994 lambda!414033) (derivationStepZipperUp!2066 lt!2517012 (h!74221 s!7408)))))

(declare-fun lt!2517004 () Unit!161580)

(assert (=> b!7029757 (= lt!2517004 (lemmaFlatMapOnSingletonSet!1917 lt!2516994 lt!2517012 lambda!414033))))

(declare-fun map!15752 ((Set Context!12904) Int) (Set Context!12904))

(assert (=> b!7029757 (= (map!15752 lt!2516994 lambda!414031) (set.insert (Context!12905 (++!15492 lt!2517005 (exprs!6952 ct2!306))) (as set.empty (Set Context!12904))))))

(declare-fun lt!2516977 () Unit!161580)

(assert (=> b!7029757 (= lt!2516977 (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(declare-fun lt!2516979 () Unit!161580)

(declare-fun lemmaMapOnSingletonSet!367 ((Set Context!12904) Context!12904 Int) Unit!161580)

(assert (=> b!7029757 (= lt!2516979 (lemmaMapOnSingletonSet!367 lt!2516994 lt!2517012 lambda!414031))))

(assert (=> b!7029757 (= lt!2516994 (set.insert lt!2517012 (as set.empty (Set Context!12904))))))

(assert (= (and start!679046 res!2869635) b!7029735))

(assert (= (and b!7029735 res!2869649) b!7029754))

(assert (= (and b!7029754 (not res!2869651)) b!7029738))

(assert (= (and b!7029738 (not res!2869638)) b!7029741))

(assert (= (and b!7029741 (not res!2869652)) b!7029742))

(assert (= (and b!7029742 (not res!2869640)) b!7029753))

(assert (= (and b!7029753 (not res!2869634)) b!7029747))

(assert (= (and b!7029747 (not res!2869645)) b!7029746))

(assert (= (and b!7029746 (not res!2869650)) b!7029744))

(assert (= (and b!7029744 (not res!2869654)) b!7029734))

(assert (= (and b!7029734 (not res!2869633)) b!7029756))

(assert (= (and b!7029756 (not res!2869648)) b!7029752))

(assert (= (and b!7029756 res!2869647) b!7029733))

(assert (= (and b!7029756 (not res!2869639)) b!7029736))

(assert (= (and b!7029736 (not res!2869642)) b!7029745))

(assert (= (and b!7029745 (not res!2869643)) b!7029737))

(assert (= (and b!7029737 (not res!2869644)) b!7029750))

(assert (= (and b!7029750 (not res!2869637)) b!7029757))

(assert (= (and b!7029757 (not res!2869653)) b!7029751))

(assert (= (and b!7029751 (not res!2869636)) b!7029749))

(assert (= (and b!7029749 (not res!2869646)) b!7029743))

(assert (= (and b!7029743 (not res!2869641)) b!7029740))

(assert (= (and start!679046 condSetEmpty!49091) setIsEmpty!49091))

(assert (= (and start!679046 (not condSetEmpty!49091)) setNonEmpty!49091))

(assert (= setNonEmpty!49091 b!7029755))

(assert (= start!679046 b!7029748))

(assert (= (and start!679046 (is-Cons!67773 s!7408)) b!7029739))

(declare-fun m!7734674 () Bool)

(assert (=> b!7029738 m!7734674))

(declare-fun m!7734676 () Bool)

(assert (=> b!7029749 m!7734676))

(declare-fun m!7734678 () Bool)

(assert (=> b!7029749 m!7734678))

(declare-fun m!7734680 () Bool)

(assert (=> b!7029749 m!7734680))

(declare-fun m!7734682 () Bool)

(assert (=> b!7029749 m!7734682))

(declare-fun m!7734684 () Bool)

(assert (=> b!7029749 m!7734684))

(declare-fun m!7734686 () Bool)

(assert (=> b!7029749 m!7734686))

(declare-fun m!7734688 () Bool)

(assert (=> b!7029753 m!7734688))

(declare-fun m!7734690 () Bool)

(assert (=> b!7029753 m!7734690))

(declare-fun m!7734692 () Bool)

(assert (=> b!7029753 m!7734692))

(declare-fun m!7734694 () Bool)

(assert (=> b!7029753 m!7734694))

(declare-fun m!7734696 () Bool)

(assert (=> b!7029753 m!7734696))

(declare-fun m!7734698 () Bool)

(assert (=> b!7029733 m!7734698))

(declare-fun m!7734700 () Bool)

(assert (=> b!7029733 m!7734700))

(assert (=> b!7029752 m!7734698))

(declare-fun m!7734702 () Bool)

(assert (=> b!7029734 m!7734702))

(declare-fun m!7734704 () Bool)

(assert (=> b!7029734 m!7734704))

(declare-fun m!7734706 () Bool)

(assert (=> b!7029734 m!7734706))

(assert (=> b!7029734 m!7734700))

(assert (=> b!7029734 m!7734700))

(assert (=> b!7029756 m!7734700))

(assert (=> b!7029756 m!7734700))

(declare-fun m!7734708 () Bool)

(assert (=> b!7029756 m!7734708))

(declare-fun m!7734710 () Bool)

(assert (=> b!7029756 m!7734710))

(declare-fun m!7734712 () Bool)

(assert (=> b!7029756 m!7734712))

(declare-fun m!7734714 () Bool)

(assert (=> b!7029756 m!7734714))

(assert (=> b!7029756 m!7734700))

(declare-fun m!7734716 () Bool)

(assert (=> b!7029757 m!7734716))

(declare-fun m!7734718 () Bool)

(assert (=> b!7029757 m!7734718))

(declare-fun m!7734720 () Bool)

(assert (=> b!7029757 m!7734720))

(assert (=> b!7029757 m!7734700))

(assert (=> b!7029757 m!7734700))

(declare-fun m!7734722 () Bool)

(assert (=> b!7029757 m!7734722))

(declare-fun m!7734724 () Bool)

(assert (=> b!7029757 m!7734724))

(declare-fun m!7734726 () Bool)

(assert (=> b!7029757 m!7734726))

(declare-fun m!7734728 () Bool)

(assert (=> b!7029757 m!7734728))

(assert (=> b!7029757 m!7734704))

(declare-fun m!7734730 () Bool)

(assert (=> b!7029757 m!7734730))

(declare-fun m!7734732 () Bool)

(assert (=> b!7029757 m!7734732))

(assert (=> b!7029757 m!7734700))

(declare-fun m!7734734 () Bool)

(assert (=> b!7029757 m!7734734))

(declare-fun m!7734736 () Bool)

(assert (=> b!7029757 m!7734736))

(assert (=> b!7029757 m!7734700))

(declare-fun m!7734738 () Bool)

(assert (=> b!7029757 m!7734738))

(declare-fun m!7734740 () Bool)

(assert (=> b!7029741 m!7734740))

(declare-fun m!7734742 () Bool)

(assert (=> b!7029741 m!7734742))

(assert (=> b!7029741 m!7734690))

(declare-fun m!7734744 () Bool)

(assert (=> b!7029741 m!7734744))

(declare-fun m!7734746 () Bool)

(assert (=> b!7029754 m!7734746))

(declare-fun m!7734748 () Bool)

(assert (=> b!7029754 m!7734748))

(declare-fun m!7734750 () Bool)

(assert (=> b!7029754 m!7734750))

(declare-fun m!7734752 () Bool)

(assert (=> b!7029754 m!7734752))

(declare-fun m!7734754 () Bool)

(assert (=> b!7029754 m!7734754))

(declare-fun m!7734756 () Bool)

(assert (=> b!7029754 m!7734756))

(declare-fun m!7734758 () Bool)

(assert (=> b!7029742 m!7734758))

(assert (=> b!7029742 m!7734690))

(declare-fun m!7734760 () Bool)

(assert (=> b!7029744 m!7734760))

(declare-fun m!7734762 () Bool)

(assert (=> b!7029744 m!7734762))

(declare-fun m!7734764 () Bool)

(assert (=> start!679046 m!7734764))

(declare-fun m!7734766 () Bool)

(assert (=> start!679046 m!7734766))

(declare-fun m!7734768 () Bool)

(assert (=> start!679046 m!7734768))

(declare-fun m!7734770 () Bool)

(assert (=> b!7029751 m!7734770))

(declare-fun m!7734772 () Bool)

(assert (=> b!7029743 m!7734772))

(declare-fun m!7734774 () Bool)

(assert (=> setNonEmpty!49091 m!7734774))

(declare-fun m!7734776 () Bool)

(assert (=> b!7029740 m!7734776))

(declare-fun m!7734778 () Bool)

(assert (=> b!7029746 m!7734778))

(declare-fun m!7734780 () Bool)

(assert (=> b!7029750 m!7734780))

(assert (=> b!7029750 m!7734700))

(declare-fun m!7734782 () Bool)

(assert (=> b!7029737 m!7734782))

(declare-fun m!7734784 () Bool)

(assert (=> b!7029737 m!7734784))

(declare-fun m!7734786 () Bool)

(assert (=> b!7029737 m!7734786))

(assert (=> b!7029737 m!7734700))

(assert (=> b!7029737 m!7734700))

(declare-fun m!7734788 () Bool)

(assert (=> b!7029737 m!7734788))

(assert (=> b!7029737 m!7734700))

(assert (=> b!7029737 m!7734700))

(assert (=> b!7029737 m!7734706))

(assert (=> b!7029745 m!7734698))

(assert (=> b!7029745 m!7734700))

(push 1)

(assert tp_is_empty!44137)

(assert (not b!7029734))

(assert (not b!7029739))

(assert (not b!7029748))

(assert (not b!7029743))

(assert (not setNonEmpty!49091))

(assert (not b!7029744))

(assert (not b!7029752))

(assert (not b!7029749))

(assert (not b!7029737))

(assert (not b!7029750))

(assert (not b!7029756))

(assert (not b!7029741))

(assert (not b!7029755))

(assert (not b!7029740))

(assert (not b!7029746))

(assert (not b!7029754))

(assert (not start!679046))

(assert (not b!7029733))

(assert (not b!7029742))

(assert (not b!7029751))

(assert (not b!7029745))

(assert (not b!7029757))

(assert (not b!7029753))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2192456 () Bool)

(declare-fun c!1307201 () Bool)

(declare-fun isEmpty!39520 (List!67897) Bool)

(assert (=> d!2192456 (= c!1307201 (isEmpty!39520 s!7408))))

(declare-fun e!4226072 () Bool)

(assert (=> d!2192456 (= (matchZipper!2996 lt!2517001 s!7408) e!4226072)))

(declare-fun b!7029849 () Bool)

(declare-fun nullableZipper!2572 ((Set Context!12904)) Bool)

(assert (=> b!7029849 (= e!4226072 (nullableZipper!2572 lt!2517001))))

(declare-fun b!7029850 () Bool)

(declare-fun head!14253 (List!67897) C!35182)

(declare-fun tail!13538 (List!67897) List!67897)

(assert (=> b!7029850 (= e!4226072 (matchZipper!2996 (derivationStepZipper!2912 lt!2517001 (head!14253 s!7408)) (tail!13538 s!7408)))))

(assert (= (and d!2192456 c!1307201) b!7029849))

(assert (= (and d!2192456 (not c!1307201)) b!7029850))

(declare-fun m!7734906 () Bool)

(assert (=> d!2192456 m!7734906))

(declare-fun m!7734908 () Bool)

(assert (=> b!7029849 m!7734908))

(declare-fun m!7734910 () Bool)

(assert (=> b!7029850 m!7734910))

(assert (=> b!7029850 m!7734910))

(declare-fun m!7734912 () Bool)

(assert (=> b!7029850 m!7734912))

(declare-fun m!7734914 () Bool)

(assert (=> b!7029850 m!7734914))

(assert (=> b!7029850 m!7734912))

(assert (=> b!7029850 m!7734914))

(declare-fun m!7734916 () Bool)

(assert (=> b!7029850 m!7734916))

(assert (=> b!7029750 d!2192456))

(declare-fun d!2192458 () Bool)

(declare-fun forall!16364 (List!67896 Int) Bool)

(assert (=> d!2192458 (forall!16364 (++!15492 lt!2517005 (exprs!6952 ct2!306)) lambda!414032)))

(declare-fun lt!2517180 () Unit!161580)

(declare-fun choose!53174 (List!67896 List!67896 Int) Unit!161580)

(assert (=> d!2192458 (= lt!2517180 (choose!53174 lt!2517005 (exprs!6952 ct2!306) lambda!414032))))

(assert (=> d!2192458 (forall!16364 lt!2517005 lambda!414032)))

(assert (=> d!2192458 (= (lemmaConcatPreservesForall!777 lt!2517005 (exprs!6952 ct2!306) lambda!414032) lt!2517180)))

(declare-fun bs!1869819 () Bool)

(assert (= bs!1869819 d!2192458))

(assert (=> bs!1869819 m!7734704))

(assert (=> bs!1869819 m!7734704))

(declare-fun m!7734918 () Bool)

(assert (=> bs!1869819 m!7734918))

(declare-fun m!7734920 () Bool)

(assert (=> bs!1869819 m!7734920))

(declare-fun m!7734922 () Bool)

(assert (=> bs!1869819 m!7734922))

(assert (=> b!7029750 d!2192458))

(declare-fun b!7029860 () Bool)

(declare-fun e!4226078 () List!67897)

(assert (=> b!7029860 (= e!4226078 (Cons!67773 (h!74221 (_1!37332 lt!2516984)) (++!15493 (t!381660 (_1!37332 lt!2516984)) (_2!37332 lt!2516984))))))

(declare-fun b!7029861 () Bool)

(declare-fun res!2869727 () Bool)

(declare-fun e!4226077 () Bool)

(assert (=> b!7029861 (=> (not res!2869727) (not e!4226077))))

(declare-fun lt!2517183 () List!67897)

(declare-fun size!41050 (List!67897) Int)

(assert (=> b!7029861 (= res!2869727 (= (size!41050 lt!2517183) (+ (size!41050 (_1!37332 lt!2516984)) (size!41050 (_2!37332 lt!2516984)))))))

(declare-fun d!2192460 () Bool)

(assert (=> d!2192460 e!4226077))

(declare-fun res!2869726 () Bool)

(assert (=> d!2192460 (=> (not res!2869726) (not e!4226077))))

(declare-fun content!13514 (List!67897) (Set C!35182))

(assert (=> d!2192460 (= res!2869726 (= (content!13514 lt!2517183) (set.union (content!13514 (_1!37332 lt!2516984)) (content!13514 (_2!37332 lt!2516984)))))))

(assert (=> d!2192460 (= lt!2517183 e!4226078)))

(declare-fun c!1307204 () Bool)

(assert (=> d!2192460 (= c!1307204 (is-Nil!67773 (_1!37332 lt!2516984)))))

(assert (=> d!2192460 (= (++!15493 (_1!37332 lt!2516984) (_2!37332 lt!2516984)) lt!2517183)))

(declare-fun b!7029862 () Bool)

(assert (=> b!7029862 (= e!4226077 (or (not (= (_2!37332 lt!2516984) Nil!67773)) (= lt!2517183 (_1!37332 lt!2516984))))))

(declare-fun b!7029859 () Bool)

(assert (=> b!7029859 (= e!4226078 (_2!37332 lt!2516984))))

(assert (= (and d!2192460 c!1307204) b!7029859))

(assert (= (and d!2192460 (not c!1307204)) b!7029860))

(assert (= (and d!2192460 res!2869726) b!7029861))

(assert (= (and b!7029861 res!2869727) b!7029862))

(declare-fun m!7734924 () Bool)

(assert (=> b!7029860 m!7734924))

(declare-fun m!7734926 () Bool)

(assert (=> b!7029861 m!7734926))

(declare-fun m!7734928 () Bool)

(assert (=> b!7029861 m!7734928))

(declare-fun m!7734930 () Bool)

(assert (=> b!7029861 m!7734930))

(declare-fun m!7734932 () Bool)

(assert (=> d!2192460 m!7734932))

(declare-fun m!7734934 () Bool)

(assert (=> d!2192460 m!7734934))

(declare-fun m!7734936 () Bool)

(assert (=> d!2192460 m!7734936))

(assert (=> b!7029740 d!2192460))

(declare-fun d!2192462 () Bool)

(assert (=> d!2192462 (= (get!23740 lt!2516997) (v!53142 lt!2516997))))

(assert (=> b!7029749 d!2192462))

(declare-fun d!2192464 () Bool)

(assert (=> d!2192464 (isDefined!13562 (findConcatSeparationZippers!377 lt!2516994 (set.insert ct2!306 (as set.empty (Set Context!12904))) Nil!67773 s!7408 s!7408))))

(declare-fun lt!2517186 () Unit!161580)

(declare-fun choose!53175 ((Set Context!12904) Context!12904 List!67897) Unit!161580)

(assert (=> d!2192464 (= lt!2517186 (choose!53175 lt!2516994 ct2!306 s!7408))))

(assert (=> d!2192464 (matchZipper!2996 (appendTo!577 lt!2516994 ct2!306) s!7408)))

(assert (=> d!2192464 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!365 lt!2516994 ct2!306 s!7408) lt!2517186)))

(declare-fun bs!1869820 () Bool)

(assert (= bs!1869820 d!2192464))

(assert (=> bs!1869820 m!7734678))

(assert (=> bs!1869820 m!7734678))

(declare-fun m!7734938 () Bool)

(assert (=> bs!1869820 m!7734938))

(declare-fun m!7734940 () Bool)

(assert (=> bs!1869820 m!7734940))

(assert (=> bs!1869820 m!7734938))

(declare-fun m!7734942 () Bool)

(assert (=> bs!1869820 m!7734942))

(declare-fun m!7734944 () Bool)

(assert (=> bs!1869820 m!7734944))

(assert (=> bs!1869820 m!7734940))

(declare-fun m!7734946 () Bool)

(assert (=> bs!1869820 m!7734946))

(assert (=> b!7029749 d!2192464))

(declare-fun d!2192466 () Bool)

(declare-fun isEmpty!39521 (Option!16861) Bool)

(assert (=> d!2192466 (= (isDefined!13562 lt!2516997) (not (isEmpty!39521 lt!2516997)))))

(declare-fun bs!1869821 () Bool)

(assert (= bs!1869821 d!2192466))

(declare-fun m!7734948 () Bool)

(assert (=> bs!1869821 m!7734948))

(assert (=> b!7029749 d!2192466))

(declare-fun d!2192468 () Bool)

(declare-fun c!1307205 () Bool)

(assert (=> d!2192468 (= c!1307205 (isEmpty!39520 (_1!37332 lt!2516984)))))

(declare-fun e!4226079 () Bool)

(assert (=> d!2192468 (= (matchZipper!2996 lt!2516994 (_1!37332 lt!2516984)) e!4226079)))

(declare-fun b!7029863 () Bool)

(assert (=> b!7029863 (= e!4226079 (nullableZipper!2572 lt!2516994))))

(declare-fun b!7029864 () Bool)

(assert (=> b!7029864 (= e!4226079 (matchZipper!2996 (derivationStepZipper!2912 lt!2516994 (head!14253 (_1!37332 lt!2516984))) (tail!13538 (_1!37332 lt!2516984))))))

(assert (= (and d!2192468 c!1307205) b!7029863))

(assert (= (and d!2192468 (not c!1307205)) b!7029864))

(declare-fun m!7734950 () Bool)

(assert (=> d!2192468 m!7734950))

(declare-fun m!7734952 () Bool)

(assert (=> b!7029863 m!7734952))

(declare-fun m!7734954 () Bool)

(assert (=> b!7029864 m!7734954))

(assert (=> b!7029864 m!7734954))

(declare-fun m!7734956 () Bool)

(assert (=> b!7029864 m!7734956))

(declare-fun m!7734958 () Bool)

(assert (=> b!7029864 m!7734958))

(assert (=> b!7029864 m!7734956))

(assert (=> b!7029864 m!7734958))

(declare-fun m!7734960 () Bool)

(assert (=> b!7029864 m!7734960))

(assert (=> b!7029749 d!2192468))

(declare-fun b!7029883 () Bool)

(declare-fun e!4226090 () Option!16861)

(declare-fun e!4226092 () Option!16861)

(assert (=> b!7029883 (= e!4226090 e!4226092)))

(declare-fun c!1307210 () Bool)

(assert (=> b!7029883 (= c!1307210 (is-Nil!67773 s!7408))))

(declare-fun d!2192470 () Bool)

(declare-fun e!4226094 () Bool)

(assert (=> d!2192470 e!4226094))

(declare-fun res!2869739 () Bool)

(assert (=> d!2192470 (=> res!2869739 e!4226094)))

(declare-fun e!4226091 () Bool)

(assert (=> d!2192470 (= res!2869739 e!4226091)))

(declare-fun res!2869740 () Bool)

(assert (=> d!2192470 (=> (not res!2869740) (not e!4226091))))

(declare-fun lt!2517195 () Option!16861)

(assert (=> d!2192470 (= res!2869740 (isDefined!13562 lt!2517195))))

(assert (=> d!2192470 (= lt!2517195 e!4226090)))

(declare-fun c!1307211 () Bool)

(declare-fun e!4226093 () Bool)

(assert (=> d!2192470 (= c!1307211 e!4226093)))

(declare-fun res!2869738 () Bool)

(assert (=> d!2192470 (=> (not res!2869738) (not e!4226093))))

(assert (=> d!2192470 (= res!2869738 (matchZipper!2996 lt!2516994 Nil!67773))))

(assert (=> d!2192470 (= (++!15493 Nil!67773 s!7408) s!7408)))

(assert (=> d!2192470 (= (findConcatSeparationZippers!377 lt!2516994 lt!2516987 Nil!67773 s!7408 s!7408) lt!2517195)))

(declare-fun b!7029884 () Bool)

(assert (=> b!7029884 (= e!4226092 None!16860)))

(declare-fun b!7029885 () Bool)

(assert (=> b!7029885 (= e!4226090 (Some!16860 (tuple2!68059 Nil!67773 s!7408)))))

(declare-fun b!7029886 () Bool)

(declare-fun lt!2517193 () Unit!161580)

(declare-fun lt!2517194 () Unit!161580)

(assert (=> b!7029886 (= lt!2517193 lt!2517194)))

(assert (=> b!7029886 (= (++!15493 (++!15493 Nil!67773 (Cons!67773 (h!74221 s!7408) Nil!67773)) (t!381660 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2916 (List!67897 C!35182 List!67897 List!67897) Unit!161580)

(assert (=> b!7029886 (= lt!2517194 (lemmaMoveElementToOtherListKeepsConcatEq!2916 Nil!67773 (h!74221 s!7408) (t!381660 s!7408) s!7408))))

(assert (=> b!7029886 (= e!4226092 (findConcatSeparationZippers!377 lt!2516994 lt!2516987 (++!15493 Nil!67773 (Cons!67773 (h!74221 s!7408) Nil!67773)) (t!381660 s!7408) s!7408))))

(declare-fun b!7029887 () Bool)

(declare-fun res!2869741 () Bool)

(assert (=> b!7029887 (=> (not res!2869741) (not e!4226091))))

(assert (=> b!7029887 (= res!2869741 (matchZipper!2996 lt!2516987 (_2!37332 (get!23740 lt!2517195))))))

(declare-fun b!7029888 () Bool)

(assert (=> b!7029888 (= e!4226094 (not (isDefined!13562 lt!2517195)))))

(declare-fun b!7029889 () Bool)

(declare-fun res!2869742 () Bool)

(assert (=> b!7029889 (=> (not res!2869742) (not e!4226091))))

(assert (=> b!7029889 (= res!2869742 (matchZipper!2996 lt!2516994 (_1!37332 (get!23740 lt!2517195))))))

(declare-fun b!7029890 () Bool)

(assert (=> b!7029890 (= e!4226091 (= (++!15493 (_1!37332 (get!23740 lt!2517195)) (_2!37332 (get!23740 lt!2517195))) s!7408))))

(declare-fun b!7029891 () Bool)

(assert (=> b!7029891 (= e!4226093 (matchZipper!2996 lt!2516987 s!7408))))

(assert (= (and d!2192470 res!2869738) b!7029891))

(assert (= (and d!2192470 c!1307211) b!7029885))

(assert (= (and d!2192470 (not c!1307211)) b!7029883))

(assert (= (and b!7029883 c!1307210) b!7029884))

(assert (= (and b!7029883 (not c!1307210)) b!7029886))

(assert (= (and d!2192470 res!2869740) b!7029889))

(assert (= (and b!7029889 res!2869742) b!7029887))

(assert (= (and b!7029887 res!2869741) b!7029890))

(assert (= (and d!2192470 (not res!2869739)) b!7029888))

(declare-fun m!7734962 () Bool)

(assert (=> b!7029889 m!7734962))

(declare-fun m!7734964 () Bool)

(assert (=> b!7029889 m!7734964))

(declare-fun m!7734966 () Bool)

(assert (=> b!7029888 m!7734966))

(assert (=> b!7029887 m!7734962))

(declare-fun m!7734968 () Bool)

(assert (=> b!7029887 m!7734968))

(declare-fun m!7734970 () Bool)

(assert (=> b!7029886 m!7734970))

(assert (=> b!7029886 m!7734970))

(declare-fun m!7734972 () Bool)

(assert (=> b!7029886 m!7734972))

(declare-fun m!7734974 () Bool)

(assert (=> b!7029886 m!7734974))

(assert (=> b!7029886 m!7734970))

(declare-fun m!7734976 () Bool)

(assert (=> b!7029886 m!7734976))

(assert (=> d!2192470 m!7734966))

(declare-fun m!7734978 () Bool)

(assert (=> d!2192470 m!7734978))

(declare-fun m!7734980 () Bool)

(assert (=> d!2192470 m!7734980))

(declare-fun m!7734982 () Bool)

(assert (=> b!7029891 m!7734982))

(assert (=> b!7029890 m!7734962))

(declare-fun m!7734984 () Bool)

(assert (=> b!7029890 m!7734984))

(assert (=> b!7029749 d!2192470))

(declare-fun bs!1869822 () Bool)

(declare-fun d!2192472 () Bool)

(assert (= bs!1869822 (and d!2192472 b!7029753)))

(declare-fun lambda!414096 () Int)

(assert (=> bs!1869822 (= lambda!414096 lambda!414033)))

(assert (=> d!2192472 true))

(assert (=> d!2192472 (= (derivationStepZipper!2912 lt!2517001 (h!74221 s!7408)) (flatMap!2403 lt!2517001 lambda!414096))))

(declare-fun bs!1869823 () Bool)

(assert (= bs!1869823 d!2192472))

(declare-fun m!7734986 () Bool)

(assert (=> bs!1869823 m!7734986))

(assert (=> b!7029737 d!2192472))

(declare-fun b!7029904 () Bool)

(declare-fun e!4226103 () (Set Context!12904))

(declare-fun call!638345 () (Set Context!12904))

(assert (=> b!7029904 (= e!4226103 (set.union call!638345 (derivationStepZipperUp!2066 (Context!12905 (t!381659 (exprs!6952 lt!2516992))) (h!74221 s!7408))))))

(declare-fun d!2192474 () Bool)

(declare-fun c!1307218 () Bool)

(declare-fun e!4226102 () Bool)

(assert (=> d!2192474 (= c!1307218 e!4226102)))

(declare-fun res!2869745 () Bool)

(assert (=> d!2192474 (=> (not res!2869745) (not e!4226102))))

(assert (=> d!2192474 (= res!2869745 (is-Cons!67772 (exprs!6952 lt!2516992)))))

(assert (=> d!2192474 (= (derivationStepZipperUp!2066 lt!2516992 (h!74221 s!7408)) e!4226103)))

(declare-fun b!7029905 () Bool)

(declare-fun e!4226101 () (Set Context!12904))

(assert (=> b!7029905 (= e!4226101 (as set.empty (Set Context!12904)))))

(declare-fun b!7029906 () Bool)

(assert (=> b!7029906 (= e!4226101 call!638345)))

(declare-fun bm!638340 () Bool)

(assert (=> bm!638340 (= call!638345 (derivationStepZipperDown!2120 (h!74220 (exprs!6952 lt!2516992)) (Context!12905 (t!381659 (exprs!6952 lt!2516992))) (h!74221 s!7408)))))

(declare-fun b!7029907 () Bool)

(assert (=> b!7029907 (= e!4226102 (nullable!7167 (h!74220 (exprs!6952 lt!2516992))))))

(declare-fun b!7029908 () Bool)

(assert (=> b!7029908 (= e!4226103 e!4226101)))

(declare-fun c!1307219 () Bool)

(assert (=> b!7029908 (= c!1307219 (is-Cons!67772 (exprs!6952 lt!2516992)))))

(assert (= (and d!2192474 res!2869745) b!7029907))

(assert (= (and d!2192474 c!1307218) b!7029904))

(assert (= (and d!2192474 (not c!1307218)) b!7029908))

(assert (= (and b!7029908 c!1307219) b!7029906))

(assert (= (and b!7029908 (not c!1307219)) b!7029905))

(assert (= (or b!7029904 b!7029906) bm!638340))

(declare-fun m!7734988 () Bool)

(assert (=> b!7029904 m!7734988))

(declare-fun m!7734990 () Bool)

(assert (=> bm!638340 m!7734990))

(declare-fun m!7734992 () Bool)

(assert (=> b!7029907 m!7734992))

(assert (=> b!7029737 d!2192474))

(declare-fun d!2192476 () Bool)

(declare-fun dynLambda!27350 (Int Context!12904) (Set Context!12904))

(assert (=> d!2192476 (= (flatMap!2403 lt!2517001 lambda!414033) (dynLambda!27350 lambda!414033 lt!2516992))))

(declare-fun lt!2517198 () Unit!161580)

(declare-fun choose!53176 ((Set Context!12904) Context!12904 Int) Unit!161580)

(assert (=> d!2192476 (= lt!2517198 (choose!53176 lt!2517001 lt!2516992 lambda!414033))))

(assert (=> d!2192476 (= lt!2517001 (set.insert lt!2516992 (as set.empty (Set Context!12904))))))

(assert (=> d!2192476 (= (lemmaFlatMapOnSingletonSet!1917 lt!2517001 lt!2516992 lambda!414033) lt!2517198)))

(declare-fun b_lambda!266119 () Bool)

(assert (=> (not b_lambda!266119) (not d!2192476)))

(declare-fun bs!1869824 () Bool)

(assert (= bs!1869824 d!2192476))

(assert (=> bs!1869824 m!7734788))

(declare-fun m!7734994 () Bool)

(assert (=> bs!1869824 m!7734994))

(declare-fun m!7734996 () Bool)

(assert (=> bs!1869824 m!7734996))

(assert (=> bs!1869824 m!7734782))

(assert (=> b!7029737 d!2192476))

(assert (=> b!7029737 d!2192458))

(declare-fun d!2192478 () Bool)

(declare-fun choose!53177 ((Set Context!12904) Int) (Set Context!12904))

(assert (=> d!2192478 (= (flatMap!2403 lt!2517001 lambda!414033) (choose!53177 lt!2517001 lambda!414033))))

(declare-fun bs!1869825 () Bool)

(assert (= bs!1869825 d!2192478))

(declare-fun m!7734998 () Bool)

(assert (=> bs!1869825 m!7734998))

(assert (=> b!7029737 d!2192478))

(declare-fun d!2192480 () Bool)

(assert (=> d!2192480 (= (isEmpty!39518 (exprs!6952 lt!2516970)) (is-Nil!67772 (exprs!6952 lt!2516970)))))

(assert (=> b!7029746 d!2192480))

(declare-fun d!2192482 () Bool)

(declare-fun lt!2517201 () Int)

(assert (=> d!2192482 (>= lt!2517201 0)))

(declare-fun e!4226106 () Int)

(assert (=> d!2192482 (= lt!2517201 e!4226106)))

(declare-fun c!1307223 () Bool)

(assert (=> d!2192482 (= c!1307223 (is-Cons!67772 (exprs!6952 lt!2516970)))))

(assert (=> d!2192482 (= (contextDepthTotal!491 lt!2516970) lt!2517201)))

(declare-fun b!7029913 () Bool)

(declare-fun regexDepthTotal!296 (Regex!17456) Int)

(assert (=> b!7029913 (= e!4226106 (+ (regexDepthTotal!296 (h!74220 (exprs!6952 lt!2516970))) (contextDepthTotal!491 (Context!12905 (t!381659 (exprs!6952 lt!2516970))))))))

(declare-fun b!7029914 () Bool)

(assert (=> b!7029914 (= e!4226106 1)))

(assert (= (and d!2192482 c!1307223) b!7029913))

(assert (= (and d!2192482 (not c!1307223)) b!7029914))

(declare-fun m!7735000 () Bool)

(assert (=> b!7029913 m!7735000))

(declare-fun m!7735002 () Bool)

(assert (=> b!7029913 m!7735002))

(assert (=> b!7029757 d!2192482))

(declare-fun d!2192484 () Bool)

(assert (=> d!2192484 (= (flatMap!2403 lt!2516994 lambda!414033) (dynLambda!27350 lambda!414033 lt!2517012))))

(declare-fun lt!2517202 () Unit!161580)

(assert (=> d!2192484 (= lt!2517202 (choose!53176 lt!2516994 lt!2517012 lambda!414033))))

(assert (=> d!2192484 (= lt!2516994 (set.insert lt!2517012 (as set.empty (Set Context!12904))))))

(assert (=> d!2192484 (= (lemmaFlatMapOnSingletonSet!1917 lt!2516994 lt!2517012 lambda!414033) lt!2517202)))

(declare-fun b_lambda!266121 () Bool)

(assert (=> (not b_lambda!266121) (not d!2192484)))

(declare-fun bs!1869826 () Bool)

(assert (= bs!1869826 d!2192484))

(assert (=> bs!1869826 m!7734722))

(declare-fun m!7735004 () Bool)

(assert (=> bs!1869826 m!7735004))

(declare-fun m!7735006 () Bool)

(assert (=> bs!1869826 m!7735006))

(assert (=> bs!1869826 m!7734730))

(assert (=> b!7029757 d!2192484))

(declare-fun d!2192486 () Bool)

(declare-fun dynLambda!27351 (Int Context!12904) Context!12904)

(assert (=> d!2192486 (= (map!15752 lt!2516994 lambda!414031) (set.insert (dynLambda!27351 lambda!414031 lt!2517012) (as set.empty (Set Context!12904))))))

(declare-fun lt!2517205 () Unit!161580)

(declare-fun choose!53178 ((Set Context!12904) Context!12904 Int) Unit!161580)

(assert (=> d!2192486 (= lt!2517205 (choose!53178 lt!2516994 lt!2517012 lambda!414031))))

(assert (=> d!2192486 (= lt!2516994 (set.insert lt!2517012 (as set.empty (Set Context!12904))))))

(assert (=> d!2192486 (= (lemmaMapOnSingletonSet!367 lt!2516994 lt!2517012 lambda!414031) lt!2517205)))

(declare-fun b_lambda!266123 () Bool)

(assert (=> (not b_lambda!266123) (not d!2192486)))

(declare-fun bs!1869827 () Bool)

(assert (= bs!1869827 d!2192486))

(declare-fun m!7735008 () Bool)

(assert (=> bs!1869827 m!7735008))

(assert (=> bs!1869827 m!7734728))

(declare-fun m!7735010 () Bool)

(assert (=> bs!1869827 m!7735010))

(declare-fun m!7735012 () Bool)

(assert (=> bs!1869827 m!7735012))

(assert (=> bs!1869827 m!7735010))

(assert (=> bs!1869827 m!7734730))

(assert (=> b!7029757 d!2192486))

(declare-fun d!2192488 () Bool)

(assert (=> d!2192488 (= (flatMap!2403 lt!2516994 lambda!414033) (choose!53177 lt!2516994 lambda!414033))))

(declare-fun bs!1869828 () Bool)

(assert (= bs!1869828 d!2192488))

(declare-fun m!7735014 () Bool)

(assert (=> bs!1869828 m!7735014))

(assert (=> b!7029757 d!2192488))

(declare-fun d!2192490 () Bool)

(assert (=> d!2192490 (<= (contextDepthTotal!491 lt!2516970) (zipperDepthTotal!519 lt!2517009))))

(declare-fun lt!2517208 () Unit!161580)

(declare-fun choose!53179 (List!67898 Context!12904) Unit!161580)

(assert (=> d!2192490 (= lt!2517208 (choose!53179 lt!2517009 lt!2516970))))

(declare-fun contains!20450 (List!67898 Context!12904) Bool)

(assert (=> d!2192490 (contains!20450 lt!2517009 lt!2516970)))

(assert (=> d!2192490 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!59 lt!2517009 lt!2516970) lt!2517208)))

(declare-fun bs!1869829 () Bool)

(assert (= bs!1869829 d!2192490))

(assert (=> bs!1869829 m!7734732))

(assert (=> bs!1869829 m!7734738))

(declare-fun m!7735016 () Bool)

(assert (=> bs!1869829 m!7735016))

(declare-fun m!7735018 () Bool)

(assert (=> bs!1869829 m!7735018))

(assert (=> b!7029757 d!2192490))

(declare-fun b!7029915 () Bool)

(declare-fun call!638346 () (Set Context!12904))

(declare-fun e!4226109 () (Set Context!12904))

(assert (=> b!7029915 (= e!4226109 (set.union call!638346 (derivationStepZipperUp!2066 (Context!12905 (t!381659 (exprs!6952 lt!2517012))) (h!74221 s!7408))))))

(declare-fun d!2192492 () Bool)

(declare-fun c!1307225 () Bool)

(declare-fun e!4226108 () Bool)

(assert (=> d!2192492 (= c!1307225 e!4226108)))

(declare-fun res!2869746 () Bool)

(assert (=> d!2192492 (=> (not res!2869746) (not e!4226108))))

(assert (=> d!2192492 (= res!2869746 (is-Cons!67772 (exprs!6952 lt!2517012)))))

(assert (=> d!2192492 (= (derivationStepZipperUp!2066 lt!2517012 (h!74221 s!7408)) e!4226109)))

(declare-fun b!7029916 () Bool)

(declare-fun e!4226107 () (Set Context!12904))

(assert (=> b!7029916 (= e!4226107 (as set.empty (Set Context!12904)))))

(declare-fun b!7029917 () Bool)

(assert (=> b!7029917 (= e!4226107 call!638346)))

(declare-fun bm!638341 () Bool)

(assert (=> bm!638341 (= call!638346 (derivationStepZipperDown!2120 (h!74220 (exprs!6952 lt!2517012)) (Context!12905 (t!381659 (exprs!6952 lt!2517012))) (h!74221 s!7408)))))

(declare-fun b!7029918 () Bool)

(assert (=> b!7029918 (= e!4226108 (nullable!7167 (h!74220 (exprs!6952 lt!2517012))))))

(declare-fun b!7029919 () Bool)

(assert (=> b!7029919 (= e!4226109 e!4226107)))

(declare-fun c!1307226 () Bool)

(assert (=> b!7029919 (= c!1307226 (is-Cons!67772 (exprs!6952 lt!2517012)))))

(assert (= (and d!2192492 res!2869746) b!7029918))

(assert (= (and d!2192492 c!1307225) b!7029915))

(assert (= (and d!2192492 (not c!1307225)) b!7029919))

(assert (= (and b!7029919 c!1307226) b!7029917))

(assert (= (and b!7029919 (not c!1307226)) b!7029916))

(assert (= (or b!7029915 b!7029917) bm!638341))

(declare-fun m!7735020 () Bool)

(assert (=> b!7029915 m!7735020))

(declare-fun m!7735022 () Bool)

(assert (=> bm!638341 m!7735022))

(declare-fun m!7735024 () Bool)

(assert (=> b!7029918 m!7735024))

(assert (=> b!7029757 d!2192492))

(declare-fun lt!2517211 () List!67896)

(declare-fun e!4226115 () Bool)

(declare-fun b!7029931 () Bool)

(assert (=> b!7029931 (= e!4226115 (or (not (= (exprs!6952 ct2!306) Nil!67772)) (= lt!2517211 lt!2517005)))))

(declare-fun b!7029930 () Bool)

(declare-fun res!2869751 () Bool)

(assert (=> b!7029930 (=> (not res!2869751) (not e!4226115))))

(declare-fun size!41051 (List!67896) Int)

(assert (=> b!7029930 (= res!2869751 (= (size!41051 lt!2517211) (+ (size!41051 lt!2517005) (size!41051 (exprs!6952 ct2!306)))))))

(declare-fun d!2192494 () Bool)

(assert (=> d!2192494 e!4226115))

(declare-fun res!2869752 () Bool)

(assert (=> d!2192494 (=> (not res!2869752) (not e!4226115))))

(declare-fun content!13515 (List!67896) (Set Regex!17456))

(assert (=> d!2192494 (= res!2869752 (= (content!13515 lt!2517211) (set.union (content!13515 lt!2517005) (content!13515 (exprs!6952 ct2!306)))))))

(declare-fun e!4226114 () List!67896)

(assert (=> d!2192494 (= lt!2517211 e!4226114)))

(declare-fun c!1307229 () Bool)

(assert (=> d!2192494 (= c!1307229 (is-Nil!67772 lt!2517005))))

(assert (=> d!2192494 (= (++!15492 lt!2517005 (exprs!6952 ct2!306)) lt!2517211)))

(declare-fun b!7029929 () Bool)

(assert (=> b!7029929 (= e!4226114 (Cons!67772 (h!74220 lt!2517005) (++!15492 (t!381659 lt!2517005) (exprs!6952 ct2!306))))))

(declare-fun b!7029928 () Bool)

(assert (=> b!7029928 (= e!4226114 (exprs!6952 ct2!306))))

(assert (= (and d!2192494 c!1307229) b!7029928))

(assert (= (and d!2192494 (not c!1307229)) b!7029929))

(assert (= (and d!2192494 res!2869752) b!7029930))

(assert (= (and b!7029930 res!2869751) b!7029931))

(declare-fun m!7735026 () Bool)

(assert (=> b!7029930 m!7735026))

(declare-fun m!7735028 () Bool)

(assert (=> b!7029930 m!7735028))

(declare-fun m!7735030 () Bool)

(assert (=> b!7029930 m!7735030))

(declare-fun m!7735032 () Bool)

(assert (=> d!2192494 m!7735032))

(declare-fun m!7735034 () Bool)

(assert (=> d!2192494 m!7735034))

(declare-fun m!7735036 () Bool)

(assert (=> d!2192494 m!7735036))

(declare-fun m!7735038 () Bool)

(assert (=> b!7029929 m!7735038))

(assert (=> b!7029757 d!2192494))

(declare-fun d!2192496 () Bool)

(declare-fun lt!2517214 () Int)

(assert (=> d!2192496 (>= lt!2517214 0)))

(declare-fun e!4226118 () Int)

(assert (=> d!2192496 (= lt!2517214 e!4226118)))

(declare-fun c!1307232 () Bool)

(assert (=> d!2192496 (= c!1307232 (is-Cons!67774 lt!2517009))))

(assert (=> d!2192496 (= (zipperDepthTotal!519 lt!2517009) lt!2517214)))

(declare-fun b!7029936 () Bool)

(assert (=> b!7029936 (= e!4226118 (+ (contextDepthTotal!491 (h!74222 lt!2517009)) (zipperDepthTotal!519 (t!381661 lt!2517009))))))

(declare-fun b!7029937 () Bool)

(assert (=> b!7029937 (= e!4226118 0)))

(assert (= (and d!2192496 c!1307232) b!7029936))

(assert (= (and d!2192496 (not c!1307232)) b!7029937))

(declare-fun m!7735040 () Bool)

(assert (=> b!7029936 m!7735040))

(declare-fun m!7735042 () Bool)

(assert (=> b!7029936 m!7735042))

(assert (=> b!7029757 d!2192496))

(declare-fun d!2192498 () Bool)

(declare-fun choose!53180 ((Set Context!12904) Int) (Set Context!12904))

(assert (=> d!2192498 (= (map!15752 lt!2516994 lambda!414031) (choose!53180 lt!2516994 lambda!414031))))

(declare-fun bs!1869830 () Bool)

(assert (= bs!1869830 d!2192498))

(declare-fun m!7735044 () Bool)

(assert (=> bs!1869830 m!7735044))

(assert (=> b!7029757 d!2192498))

(declare-fun d!2192500 () Bool)

(declare-fun e!4226121 () Bool)

(assert (=> d!2192500 e!4226121))

(declare-fun res!2869755 () Bool)

(assert (=> d!2192500 (=> (not res!2869755) (not e!4226121))))

(declare-fun lt!2517217 () List!67898)

(declare-fun noDuplicate!2621 (List!67898) Bool)

(assert (=> d!2192500 (= res!2869755 (noDuplicate!2621 lt!2517217))))

(declare-fun choose!53181 ((Set Context!12904)) List!67898)

(assert (=> d!2192500 (= lt!2517217 (choose!53181 z1!570))))

(assert (=> d!2192500 (= (toList!10799 z1!570) lt!2517217)))

(declare-fun b!7029940 () Bool)

(declare-fun content!13516 (List!67898) (Set Context!12904))

(assert (=> b!7029940 (= e!4226121 (= (content!13516 lt!2517217) z1!570))))

(assert (= (and d!2192500 res!2869755) b!7029940))

(declare-fun m!7735046 () Bool)

(assert (=> d!2192500 m!7735046))

(declare-fun m!7735048 () Bool)

(assert (=> d!2192500 m!7735048))

(declare-fun m!7735050 () Bool)

(assert (=> b!7029940 m!7735050))

(assert (=> b!7029757 d!2192500))

(assert (=> b!7029757 d!2192458))

(declare-fun d!2192502 () Bool)

(declare-fun lt!2517218 () Int)

(assert (=> d!2192502 (>= lt!2517218 0)))

(declare-fun e!4226122 () Int)

(assert (=> d!2192502 (= lt!2517218 e!4226122)))

(declare-fun c!1307233 () Bool)

(assert (=> d!2192502 (= c!1307233 (is-Cons!67772 (exprs!6952 lt!2517012)))))

(assert (=> d!2192502 (= (contextDepthTotal!491 lt!2517012) lt!2517218)))

(declare-fun b!7029941 () Bool)

(assert (=> b!7029941 (= e!4226122 (+ (regexDepthTotal!296 (h!74220 (exprs!6952 lt!2517012))) (contextDepthTotal!491 (Context!12905 (t!381659 (exprs!6952 lt!2517012))))))))

(declare-fun b!7029942 () Bool)

(assert (=> b!7029942 (= e!4226122 1)))

(assert (= (and d!2192502 c!1307233) b!7029941))

(assert (= (and d!2192502 (not c!1307233)) b!7029942))

(declare-fun m!7735052 () Bool)

(assert (=> b!7029941 m!7735052))

(declare-fun m!7735054 () Bool)

(assert (=> b!7029941 m!7735054))

(assert (=> b!7029757 d!2192502))

(declare-fun d!2192504 () Bool)

(declare-fun e!4226125 () Bool)

(assert (=> d!2192504 (= (matchZipper!2996 (set.union lt!2516988 lt!2516995) (t!381660 s!7408)) e!4226125)))

(declare-fun res!2869758 () Bool)

(assert (=> d!2192504 (=> res!2869758 e!4226125)))

(assert (=> d!2192504 (= res!2869758 (matchZipper!2996 lt!2516988 (t!381660 s!7408)))))

(declare-fun lt!2517221 () Unit!161580)

(declare-fun choose!53182 ((Set Context!12904) (Set Context!12904) List!67897) Unit!161580)

(assert (=> d!2192504 (= lt!2517221 (choose!53182 lt!2516988 lt!2516995 (t!381660 s!7408)))))

(assert (=> d!2192504 (= (lemmaZipperConcatMatchesSameAsBothZippers!1529 lt!2516988 lt!2516995 (t!381660 s!7408)) lt!2517221)))

(declare-fun b!7029945 () Bool)

(assert (=> b!7029945 (= e!4226125 (matchZipper!2996 lt!2516995 (t!381660 s!7408)))))

(assert (= (and d!2192504 (not res!2869758)) b!7029945))

(declare-fun m!7735056 () Bool)

(assert (=> d!2192504 m!7735056))

(assert (=> d!2192504 m!7734710))

(declare-fun m!7735058 () Bool)

(assert (=> d!2192504 m!7735058))

(assert (=> b!7029945 m!7734698))

(assert (=> b!7029756 d!2192504))

(declare-fun d!2192506 () Bool)

(declare-fun c!1307234 () Bool)

(assert (=> d!2192506 (= c!1307234 (isEmpty!39520 (t!381660 s!7408)))))

(declare-fun e!4226126 () Bool)

(assert (=> d!2192506 (= (matchZipper!2996 lt!2516988 (t!381660 s!7408)) e!4226126)))

(declare-fun b!7029946 () Bool)

(assert (=> b!7029946 (= e!4226126 (nullableZipper!2572 lt!2516988))))

(declare-fun b!7029947 () Bool)

(assert (=> b!7029947 (= e!4226126 (matchZipper!2996 (derivationStepZipper!2912 lt!2516988 (head!14253 (t!381660 s!7408))) (tail!13538 (t!381660 s!7408))))))

(assert (= (and d!2192506 c!1307234) b!7029946))

(assert (= (and d!2192506 (not c!1307234)) b!7029947))

(declare-fun m!7735060 () Bool)

(assert (=> d!2192506 m!7735060))

(declare-fun m!7735062 () Bool)

(assert (=> b!7029946 m!7735062))

(declare-fun m!7735064 () Bool)

(assert (=> b!7029947 m!7735064))

(assert (=> b!7029947 m!7735064))

(declare-fun m!7735066 () Bool)

(assert (=> b!7029947 m!7735066))

(declare-fun m!7735068 () Bool)

(assert (=> b!7029947 m!7735068))

(assert (=> b!7029947 m!7735066))

(assert (=> b!7029947 m!7735068))

(declare-fun m!7735070 () Bool)

(assert (=> b!7029947 m!7735070))

(assert (=> b!7029756 d!2192506))

(declare-fun d!2192508 () Bool)

(declare-fun c!1307235 () Bool)

(assert (=> d!2192508 (= c!1307235 (isEmpty!39520 (t!381660 s!7408)))))

(declare-fun e!4226127 () Bool)

(assert (=> d!2192508 (= (matchZipper!2996 lt!2516998 (t!381660 s!7408)) e!4226127)))

(declare-fun b!7029948 () Bool)

(assert (=> b!7029948 (= e!4226127 (nullableZipper!2572 lt!2516998))))

(declare-fun b!7029949 () Bool)

(assert (=> b!7029949 (= e!4226127 (matchZipper!2996 (derivationStepZipper!2912 lt!2516998 (head!14253 (t!381660 s!7408))) (tail!13538 (t!381660 s!7408))))))

(assert (= (and d!2192508 c!1307235) b!7029948))

(assert (= (and d!2192508 (not c!1307235)) b!7029949))

(assert (=> d!2192508 m!7735060))

(declare-fun m!7735072 () Bool)

(assert (=> b!7029948 m!7735072))

(assert (=> b!7029949 m!7735064))

(assert (=> b!7029949 m!7735064))

(declare-fun m!7735074 () Bool)

(assert (=> b!7029949 m!7735074))

(assert (=> b!7029949 m!7735068))

(assert (=> b!7029949 m!7735074))

(assert (=> b!7029949 m!7735068))

(declare-fun m!7735076 () Bool)

(assert (=> b!7029949 m!7735076))

(assert (=> b!7029756 d!2192508))

(declare-fun d!2192510 () Bool)

(declare-fun c!1307236 () Bool)

(assert (=> d!2192510 (= c!1307236 (isEmpty!39520 (t!381660 s!7408)))))

(declare-fun e!4226128 () Bool)

(assert (=> d!2192510 (= (matchZipper!2996 lt!2516974 (t!381660 s!7408)) e!4226128)))

(declare-fun b!7029950 () Bool)

(assert (=> b!7029950 (= e!4226128 (nullableZipper!2572 lt!2516974))))

(declare-fun b!7029951 () Bool)

(assert (=> b!7029951 (= e!4226128 (matchZipper!2996 (derivationStepZipper!2912 lt!2516974 (head!14253 (t!381660 s!7408))) (tail!13538 (t!381660 s!7408))))))

(assert (= (and d!2192510 c!1307236) b!7029950))

(assert (= (and d!2192510 (not c!1307236)) b!7029951))

(assert (=> d!2192510 m!7735060))

(declare-fun m!7735078 () Bool)

(assert (=> b!7029950 m!7735078))

(assert (=> b!7029951 m!7735064))

(assert (=> b!7029951 m!7735064))

(declare-fun m!7735080 () Bool)

(assert (=> b!7029951 m!7735080))

(assert (=> b!7029951 m!7735068))

(assert (=> b!7029951 m!7735080))

(assert (=> b!7029951 m!7735068))

(declare-fun m!7735082 () Bool)

(assert (=> b!7029951 m!7735082))

(assert (=> b!7029756 d!2192510))

(assert (=> b!7029756 d!2192458))

(declare-fun d!2192512 () Bool)

(declare-fun c!1307237 () Bool)

(assert (=> d!2192512 (= c!1307237 (isEmpty!39520 (t!381660 s!7408)))))

(declare-fun e!4226129 () Bool)

(assert (=> d!2192512 (= (matchZipper!2996 lt!2516995 (t!381660 s!7408)) e!4226129)))

(declare-fun b!7029952 () Bool)

(assert (=> b!7029952 (= e!4226129 (nullableZipper!2572 lt!2516995))))

(declare-fun b!7029953 () Bool)

(assert (=> b!7029953 (= e!4226129 (matchZipper!2996 (derivationStepZipper!2912 lt!2516995 (head!14253 (t!381660 s!7408))) (tail!13538 (t!381660 s!7408))))))

(assert (= (and d!2192512 c!1307237) b!7029952))

(assert (= (and d!2192512 (not c!1307237)) b!7029953))

(assert (=> d!2192512 m!7735060))

(declare-fun m!7735084 () Bool)

(assert (=> b!7029952 m!7735084))

(assert (=> b!7029953 m!7735064))

(assert (=> b!7029953 m!7735064))

(declare-fun m!7735086 () Bool)

(assert (=> b!7029953 m!7735086))

(assert (=> b!7029953 m!7735068))

(assert (=> b!7029953 m!7735086))

(assert (=> b!7029953 m!7735068))

(declare-fun m!7735088 () Bool)

(assert (=> b!7029953 m!7735088))

(assert (=> b!7029745 d!2192512))

(assert (=> b!7029745 d!2192458))

(declare-fun d!2192514 () Bool)

(declare-fun nullableFct!2721 (Regex!17456) Bool)

(assert (=> d!2192514 (= (nullable!7167 (h!74220 (exprs!6952 lt!2516970))) (nullableFct!2721 (h!74220 (exprs!6952 lt!2516970))))))

(declare-fun bs!1869831 () Bool)

(assert (= bs!1869831 d!2192514))

(declare-fun m!7735090 () Bool)

(assert (=> bs!1869831 m!7735090))

(assert (=> b!7029744 d!2192514))

(declare-fun d!2192516 () Bool)

(assert (=> d!2192516 (= (tail!13536 (exprs!6952 lt!2516970)) (t!381659 (exprs!6952 lt!2516970)))))

(assert (=> b!7029744 d!2192516))

(declare-fun bs!1869832 () Bool)

(declare-fun d!2192518 () Bool)

(assert (= bs!1869832 (and d!2192518 b!7029754)))

(declare-fun lambda!414099 () Int)

(assert (=> bs!1869832 (= lambda!414099 lambda!414030)))

(assert (=> d!2192518 true))

(assert (=> d!2192518 (exists!3375 lt!2517016 lambda!414099)))

(declare-fun lt!2517224 () Unit!161580)

(declare-fun choose!53183 (List!67898 List!67897) Unit!161580)

(assert (=> d!2192518 (= lt!2517224 (choose!53183 lt!2517016 s!7408))))

(assert (=> d!2192518 (matchZipper!2996 (content!13516 lt!2517016) s!7408)))

(assert (=> d!2192518 (= (lemmaZipperMatchesExistsMatchingContext!395 lt!2517016 s!7408) lt!2517224)))

(declare-fun bs!1869833 () Bool)

(assert (= bs!1869833 d!2192518))

(declare-fun m!7735092 () Bool)

(assert (=> bs!1869833 m!7735092))

(declare-fun m!7735094 () Bool)

(assert (=> bs!1869833 m!7735094))

(declare-fun m!7735096 () Bool)

(assert (=> bs!1869833 m!7735096))

(assert (=> bs!1869833 m!7735096))

(declare-fun m!7735098 () Bool)

(assert (=> bs!1869833 m!7735098))

(assert (=> b!7029754 d!2192518))

(declare-fun d!2192520 () Bool)

(declare-fun e!4226130 () Bool)

(assert (=> d!2192520 e!4226130))

(declare-fun res!2869760 () Bool)

(assert (=> d!2192520 (=> (not res!2869760) (not e!4226130))))

(declare-fun lt!2517225 () List!67898)

(assert (=> d!2192520 (= res!2869760 (noDuplicate!2621 lt!2517225))))

(assert (=> d!2192520 (= lt!2517225 (choose!53181 lt!2516980))))

(assert (=> d!2192520 (= (toList!10799 lt!2516980) lt!2517225)))

(declare-fun b!7029954 () Bool)

(assert (=> b!7029954 (= e!4226130 (= (content!13516 lt!2517225) lt!2516980))))

(assert (= (and d!2192520 res!2869760) b!7029954))

(declare-fun m!7735100 () Bool)

(assert (=> d!2192520 m!7735100))

(declare-fun m!7735102 () Bool)

(assert (=> d!2192520 m!7735102))

(declare-fun m!7735104 () Bool)

(assert (=> b!7029954 m!7735104))

(assert (=> b!7029754 d!2192520))

(declare-fun bs!1869834 () Bool)

(declare-fun d!2192522 () Bool)

(assert (= bs!1869834 (and d!2192522 b!7029754)))

(declare-fun lambda!414102 () Int)

(assert (=> bs!1869834 (not (= lambda!414102 lambda!414030))))

(declare-fun bs!1869835 () Bool)

(assert (= bs!1869835 (and d!2192522 d!2192518)))

(assert (=> bs!1869835 (not (= lambda!414102 lambda!414099))))

(assert (=> d!2192522 true))

(declare-fun order!28159 () Int)

(declare-fun dynLambda!27352 (Int Int) Int)

(assert (=> d!2192522 (< (dynLambda!27352 order!28159 lambda!414030) (dynLambda!27352 order!28159 lambda!414102))))

(declare-fun forall!16365 (List!67898 Int) Bool)

(assert (=> d!2192522 (= (exists!3375 lt!2517016 lambda!414030) (not (forall!16365 lt!2517016 lambda!414102)))))

(declare-fun bs!1869836 () Bool)

(assert (= bs!1869836 d!2192522))

(declare-fun m!7735106 () Bool)

(assert (=> bs!1869836 m!7735106))

(assert (=> b!7029754 d!2192522))

(declare-fun d!2192524 () Bool)

(declare-fun e!4226133 () Bool)

(assert (=> d!2192524 e!4226133))

(declare-fun res!2869763 () Bool)

(assert (=> d!2192524 (=> (not res!2869763) (not e!4226133))))

(declare-fun lt!2517228 () Context!12904)

(declare-fun dynLambda!27353 (Int Context!12904) Bool)

(assert (=> d!2192524 (= res!2869763 (dynLambda!27353 lambda!414030 lt!2517228))))

(declare-fun getWitness!1458 (List!67898 Int) Context!12904)

(assert (=> d!2192524 (= lt!2517228 (getWitness!1458 (toList!10799 lt!2516980) lambda!414030))))

(declare-fun exists!3377 ((Set Context!12904) Int) Bool)

(assert (=> d!2192524 (exists!3377 lt!2516980 lambda!414030)))

(assert (=> d!2192524 (= (getWitness!1456 lt!2516980 lambda!414030) lt!2517228)))

(declare-fun b!7029959 () Bool)

(assert (=> b!7029959 (= e!4226133 (set.member lt!2517228 lt!2516980))))

(assert (= (and d!2192524 res!2869763) b!7029959))

(declare-fun b_lambda!266125 () Bool)

(assert (=> (not b_lambda!266125) (not d!2192524)))

(declare-fun m!7735108 () Bool)

(assert (=> d!2192524 m!7735108))

(assert (=> d!2192524 m!7734754))

(assert (=> d!2192524 m!7734754))

(declare-fun m!7735110 () Bool)

(assert (=> d!2192524 m!7735110))

(declare-fun m!7735112 () Bool)

(assert (=> d!2192524 m!7735112))

(declare-fun m!7735114 () Bool)

(assert (=> b!7029959 m!7735114))

(assert (=> b!7029754 d!2192524))

(declare-fun d!2192526 () Bool)

(declare-fun c!1307240 () Bool)

(assert (=> d!2192526 (= c!1307240 (isEmpty!39520 s!7408))))

(declare-fun e!4226134 () Bool)

(assert (=> d!2192526 (= (matchZipper!2996 lt!2516971 s!7408) e!4226134)))

(declare-fun b!7029960 () Bool)

(assert (=> b!7029960 (= e!4226134 (nullableZipper!2572 lt!2516971))))

(declare-fun b!7029961 () Bool)

(assert (=> b!7029961 (= e!4226134 (matchZipper!2996 (derivationStepZipper!2912 lt!2516971 (head!14253 s!7408)) (tail!13538 s!7408)))))

(assert (= (and d!2192526 c!1307240) b!7029960))

(assert (= (and d!2192526 (not c!1307240)) b!7029961))

(assert (=> d!2192526 m!7734906))

(declare-fun m!7735116 () Bool)

(assert (=> b!7029960 m!7735116))

(assert (=> b!7029961 m!7734910))

(assert (=> b!7029961 m!7734910))

(declare-fun m!7735118 () Bool)

(assert (=> b!7029961 m!7735118))

(assert (=> b!7029961 m!7734914))

(assert (=> b!7029961 m!7735118))

(assert (=> b!7029961 m!7734914))

(declare-fun m!7735120 () Bool)

(assert (=> b!7029961 m!7735120))

(assert (=> b!7029754 d!2192526))

(assert (=> b!7029734 d!2192474))

(assert (=> b!7029734 d!2192458))

(assert (=> b!7029734 d!2192494))

(declare-fun b!7029984 () Bool)

(declare-fun c!1307254 () Bool)

(declare-fun e!4226152 () Bool)

(assert (=> b!7029984 (= c!1307254 e!4226152)))

(declare-fun res!2869766 () Bool)

(assert (=> b!7029984 (=> (not res!2869766) (not e!4226152))))

(assert (=> b!7029984 (= res!2869766 (is-Concat!26301 (h!74220 (exprs!6952 lt!2516970))))))

(declare-fun e!4226150 () (Set Context!12904))

(declare-fun e!4226147 () (Set Context!12904))

(assert (=> b!7029984 (= e!4226150 e!4226147)))

(declare-fun bm!638354 () Bool)

(declare-fun call!638363 () List!67896)

(declare-fun c!1307253 () Bool)

(declare-fun $colon$colon!2567 (List!67896 Regex!17456) List!67896)

(assert (=> bm!638354 (= call!638363 ($colon$colon!2567 (exprs!6952 lt!2516992) (ite (or c!1307254 c!1307253) (regTwo!35424 (h!74220 (exprs!6952 lt!2516970))) (h!74220 (exprs!6952 lt!2516970)))))))

(declare-fun b!7029985 () Bool)

(declare-fun e!4226151 () (Set Context!12904))

(assert (=> b!7029985 (= e!4226151 (set.insert lt!2516992 (as set.empty (Set Context!12904))))))

(declare-fun b!7029986 () Bool)

(declare-fun call!638364 () (Set Context!12904))

(declare-fun call!638362 () (Set Context!12904))

(assert (=> b!7029986 (= e!4226147 (set.union call!638364 call!638362))))

(declare-fun bm!638355 () Bool)

(declare-fun c!1307255 () Bool)

(assert (=> bm!638355 (= call!638364 (derivationStepZipperDown!2120 (ite c!1307255 (regOne!35425 (h!74220 (exprs!6952 lt!2516970))) (regOne!35424 (h!74220 (exprs!6952 lt!2516970)))) (ite c!1307255 lt!2516992 (Context!12905 call!638363)) (h!74221 s!7408)))))

(declare-fun bm!638356 () Bool)

(declare-fun call!638360 () (Set Context!12904))

(assert (=> bm!638356 (= call!638362 call!638360)))

(declare-fun b!7029987 () Bool)

(assert (=> b!7029987 (= e!4226152 (nullable!7167 (regOne!35424 (h!74220 (exprs!6952 lt!2516970)))))))

(declare-fun bm!638357 () Bool)

(declare-fun call!638359 () List!67896)

(assert (=> bm!638357 (= call!638360 (derivationStepZipperDown!2120 (ite c!1307255 (regTwo!35425 (h!74220 (exprs!6952 lt!2516970))) (ite c!1307254 (regTwo!35424 (h!74220 (exprs!6952 lt!2516970))) (ite c!1307253 (regOne!35424 (h!74220 (exprs!6952 lt!2516970))) (reg!17785 (h!74220 (exprs!6952 lt!2516970)))))) (ite (or c!1307255 c!1307254) lt!2516992 (Context!12905 call!638359)) (h!74221 s!7408)))))

(declare-fun b!7029988 () Bool)

(declare-fun e!4226149 () (Set Context!12904))

(declare-fun call!638361 () (Set Context!12904))

(assert (=> b!7029988 (= e!4226149 call!638361)))

(declare-fun d!2192528 () Bool)

(declare-fun c!1307252 () Bool)

(assert (=> d!2192528 (= c!1307252 (and (is-ElementMatch!17456 (h!74220 (exprs!6952 lt!2516970))) (= (c!1307183 (h!74220 (exprs!6952 lt!2516970))) (h!74221 s!7408))))))

(assert (=> d!2192528 (= (derivationStepZipperDown!2120 (h!74220 (exprs!6952 lt!2516970)) lt!2516992 (h!74221 s!7408)) e!4226151)))

(declare-fun b!7029989 () Bool)

(declare-fun e!4226148 () (Set Context!12904))

(assert (=> b!7029989 (= e!4226148 call!638361)))

(declare-fun b!7029990 () Bool)

(declare-fun c!1307251 () Bool)

(assert (=> b!7029990 (= c!1307251 (is-Star!17456 (h!74220 (exprs!6952 lt!2516970))))))

(assert (=> b!7029990 (= e!4226149 e!4226148)))

(declare-fun b!7029991 () Bool)

(assert (=> b!7029991 (= e!4226147 e!4226149)))

(assert (=> b!7029991 (= c!1307253 (is-Concat!26301 (h!74220 (exprs!6952 lt!2516970))))))

(declare-fun b!7029992 () Bool)

(assert (=> b!7029992 (= e!4226150 (set.union call!638364 call!638360))))

(declare-fun bm!638358 () Bool)

(assert (=> bm!638358 (= call!638361 call!638362)))

(declare-fun b!7029993 () Bool)

(assert (=> b!7029993 (= e!4226148 (as set.empty (Set Context!12904)))))

(declare-fun b!7029994 () Bool)

(assert (=> b!7029994 (= e!4226151 e!4226150)))

(assert (=> b!7029994 (= c!1307255 (is-Union!17456 (h!74220 (exprs!6952 lt!2516970))))))

(declare-fun bm!638359 () Bool)

(assert (=> bm!638359 (= call!638359 call!638363)))

(assert (= (and d!2192528 c!1307252) b!7029985))

(assert (= (and d!2192528 (not c!1307252)) b!7029994))

(assert (= (and b!7029994 c!1307255) b!7029992))

(assert (= (and b!7029994 (not c!1307255)) b!7029984))

(assert (= (and b!7029984 res!2869766) b!7029987))

(assert (= (and b!7029984 c!1307254) b!7029986))

(assert (= (and b!7029984 (not c!1307254)) b!7029991))

(assert (= (and b!7029991 c!1307253) b!7029988))

(assert (= (and b!7029991 (not c!1307253)) b!7029990))

(assert (= (and b!7029990 c!1307251) b!7029989))

(assert (= (and b!7029990 (not c!1307251)) b!7029993))

(assert (= (or b!7029988 b!7029989) bm!638359))

(assert (= (or b!7029988 b!7029989) bm!638358))

(assert (= (or b!7029986 bm!638358) bm!638356))

(assert (= (or b!7029986 bm!638359) bm!638354))

(assert (= (or b!7029992 b!7029986) bm!638355))

(assert (= (or b!7029992 bm!638356) bm!638357))

(declare-fun m!7735122 () Bool)

(assert (=> b!7029987 m!7735122))

(declare-fun m!7735124 () Bool)

(assert (=> bm!638357 m!7735124))

(declare-fun m!7735126 () Bool)

(assert (=> bm!638354 m!7735126))

(declare-fun m!7735128 () Bool)

(assert (=> bm!638355 m!7735128))

(assert (=> b!7029985 m!7734782))

(assert (=> b!7029734 d!2192528))

(declare-fun d!2192530 () Bool)

(declare-fun c!1307256 () Bool)

(assert (=> d!2192530 (= c!1307256 (isEmpty!39520 (_2!37332 lt!2516984)))))

(declare-fun e!4226153 () Bool)

(assert (=> d!2192530 (= (matchZipper!2996 lt!2516987 (_2!37332 lt!2516984)) e!4226153)))

(declare-fun b!7029995 () Bool)

(assert (=> b!7029995 (= e!4226153 (nullableZipper!2572 lt!2516987))))

(declare-fun b!7029996 () Bool)

(assert (=> b!7029996 (= e!4226153 (matchZipper!2996 (derivationStepZipper!2912 lt!2516987 (head!14253 (_2!37332 lt!2516984))) (tail!13538 (_2!37332 lt!2516984))))))

(assert (= (and d!2192530 c!1307256) b!7029995))

(assert (= (and d!2192530 (not c!1307256)) b!7029996))

(declare-fun m!7735130 () Bool)

(assert (=> d!2192530 m!7735130))

(declare-fun m!7735132 () Bool)

(assert (=> b!7029995 m!7735132))

(declare-fun m!7735134 () Bool)

(assert (=> b!7029996 m!7735134))

(assert (=> b!7029996 m!7735134))

(declare-fun m!7735136 () Bool)

(assert (=> b!7029996 m!7735136))

(declare-fun m!7735138 () Bool)

(assert (=> b!7029996 m!7735138))

(assert (=> b!7029996 m!7735136))

(assert (=> b!7029996 m!7735138))

(declare-fun m!7735140 () Bool)

(assert (=> b!7029996 m!7735140))

(assert (=> b!7029743 d!2192530))

(declare-fun d!2192532 () Bool)

(assert (=> d!2192532 (forall!16364 (++!15492 (exprs!6952 lt!2516970) (exprs!6952 ct2!306)) lambda!414032)))

(declare-fun lt!2517229 () Unit!161580)

(assert (=> d!2192532 (= lt!2517229 (choose!53174 (exprs!6952 lt!2516970) (exprs!6952 ct2!306) lambda!414032))))

(assert (=> d!2192532 (forall!16364 (exprs!6952 lt!2516970) lambda!414032)))

(assert (=> d!2192532 (= (lemmaConcatPreservesForall!777 (exprs!6952 lt!2516970) (exprs!6952 ct2!306) lambda!414032) lt!2517229)))

(declare-fun bs!1869837 () Bool)

(assert (= bs!1869837 d!2192532))

(assert (=> bs!1869837 m!7734742))

(assert (=> bs!1869837 m!7734742))

(declare-fun m!7735142 () Bool)

(assert (=> bs!1869837 m!7735142))

(declare-fun m!7735144 () Bool)

(assert (=> bs!1869837 m!7735144))

(declare-fun m!7735146 () Bool)

(assert (=> bs!1869837 m!7735146))

(assert (=> b!7029742 d!2192532))

(declare-fun d!2192534 () Bool)

(declare-fun c!1307257 () Bool)

(assert (=> d!2192534 (= c!1307257 (isEmpty!39520 s!7408))))

(declare-fun e!4226154 () Bool)

(assert (=> d!2192534 (= (matchZipper!2996 lt!2516980 s!7408) e!4226154)))

(declare-fun b!7029997 () Bool)

(assert (=> b!7029997 (= e!4226154 (nullableZipper!2572 lt!2516980))))

(declare-fun b!7029998 () Bool)

(assert (=> b!7029998 (= e!4226154 (matchZipper!2996 (derivationStepZipper!2912 lt!2516980 (head!14253 s!7408)) (tail!13538 s!7408)))))

(assert (= (and d!2192534 c!1307257) b!7029997))

(assert (= (and d!2192534 (not c!1307257)) b!7029998))

(assert (=> d!2192534 m!7734906))

(declare-fun m!7735148 () Bool)

(assert (=> b!7029997 m!7735148))

(assert (=> b!7029998 m!7734910))

(assert (=> b!7029998 m!7734910))

(declare-fun m!7735150 () Bool)

(assert (=> b!7029998 m!7735150))

(assert (=> b!7029998 m!7734914))

(assert (=> b!7029998 m!7735150))

(assert (=> b!7029998 m!7734914))

(declare-fun m!7735152 () Bool)

(assert (=> b!7029998 m!7735152))

(assert (=> start!679046 d!2192534))

(declare-fun bs!1869838 () Bool)

(declare-fun d!2192536 () Bool)

(assert (= bs!1869838 (and d!2192536 b!7029741)))

(declare-fun lambda!414107 () Int)

(assert (=> bs!1869838 (= lambda!414107 lambda!414031)))

(assert (=> d!2192536 true))

(assert (=> d!2192536 (= (appendTo!577 z1!570 ct2!306) (map!15752 z1!570 lambda!414107))))

(declare-fun bs!1869839 () Bool)

(assert (= bs!1869839 d!2192536))

(declare-fun m!7735154 () Bool)

(assert (=> bs!1869839 m!7735154))

(assert (=> start!679046 d!2192536))

(declare-fun bs!1869840 () Bool)

(declare-fun d!2192538 () Bool)

(assert (= bs!1869840 (and d!2192538 b!7029741)))

(declare-fun lambda!414110 () Int)

(assert (=> bs!1869840 (= lambda!414110 lambda!414032)))

(assert (=> d!2192538 (= (inv!86500 ct2!306) (forall!16364 (exprs!6952 ct2!306) lambda!414110))))

(declare-fun bs!1869841 () Bool)

(assert (= bs!1869841 d!2192538))

(declare-fun m!7735156 () Bool)

(assert (=> bs!1869841 m!7735156))

(assert (=> start!679046 d!2192538))

(declare-fun e!4226157 () (Set Context!12904))

(declare-fun b!7029999 () Bool)

(declare-fun call!638365 () (Set Context!12904))

(assert (=> b!7029999 (= e!4226157 (set.union call!638365 (derivationStepZipperUp!2066 (Context!12905 (t!381659 (exprs!6952 lt!2516985))) (h!74221 s!7408))))))

(declare-fun d!2192540 () Bool)

(declare-fun c!1307259 () Bool)

(declare-fun e!4226156 () Bool)

(assert (=> d!2192540 (= c!1307259 e!4226156)))

(declare-fun res!2869767 () Bool)

(assert (=> d!2192540 (=> (not res!2869767) (not e!4226156))))

(assert (=> d!2192540 (= res!2869767 (is-Cons!67772 (exprs!6952 lt!2516985)))))

(assert (=> d!2192540 (= (derivationStepZipperUp!2066 lt!2516985 (h!74221 s!7408)) e!4226157)))

(declare-fun b!7030000 () Bool)

(declare-fun e!4226155 () (Set Context!12904))

(assert (=> b!7030000 (= e!4226155 (as set.empty (Set Context!12904)))))

(declare-fun b!7030001 () Bool)

(assert (=> b!7030001 (= e!4226155 call!638365)))

(declare-fun bm!638360 () Bool)

(assert (=> bm!638360 (= call!638365 (derivationStepZipperDown!2120 (h!74220 (exprs!6952 lt!2516985)) (Context!12905 (t!381659 (exprs!6952 lt!2516985))) (h!74221 s!7408)))))

(declare-fun b!7030002 () Bool)

(assert (=> b!7030002 (= e!4226156 (nullable!7167 (h!74220 (exprs!6952 lt!2516985))))))

(declare-fun b!7030003 () Bool)

(assert (=> b!7030003 (= e!4226157 e!4226155)))

(declare-fun c!1307260 () Bool)

(assert (=> b!7030003 (= c!1307260 (is-Cons!67772 (exprs!6952 lt!2516985)))))

(assert (= (and d!2192540 res!2869767) b!7030002))

(assert (= (and d!2192540 c!1307259) b!7029999))

(assert (= (and d!2192540 (not c!1307259)) b!7030003))

(assert (= (and b!7030003 c!1307260) b!7030001))

(assert (= (and b!7030003 (not c!1307260)) b!7030000))

(assert (= (or b!7029999 b!7030001) bm!638360))

(declare-fun m!7735158 () Bool)

(assert (=> b!7029999 m!7735158))

(declare-fun m!7735160 () Bool)

(assert (=> bm!638360 m!7735160))

(declare-fun m!7735162 () Bool)

(assert (=> b!7030002 m!7735162))

(assert (=> b!7029753 d!2192540))

(assert (=> b!7029753 d!2192532))

(declare-fun bs!1869842 () Bool)

(declare-fun d!2192542 () Bool)

(assert (= bs!1869842 (and d!2192542 b!7029753)))

(declare-fun lambda!414111 () Int)

(assert (=> bs!1869842 (= lambda!414111 lambda!414033)))

(declare-fun bs!1869843 () Bool)

(assert (= bs!1869843 (and d!2192542 d!2192472)))

(assert (=> bs!1869843 (= lambda!414111 lambda!414096)))

(assert (=> d!2192542 true))

(assert (=> d!2192542 (= (derivationStepZipper!2912 lt!2517011 (h!74221 s!7408)) (flatMap!2403 lt!2517011 lambda!414111))))

(declare-fun bs!1869844 () Bool)

(assert (= bs!1869844 d!2192542))

(declare-fun m!7735164 () Bool)

(assert (=> bs!1869844 m!7735164))

(assert (=> b!7029753 d!2192542))

(declare-fun d!2192544 () Bool)

(assert (=> d!2192544 (= (flatMap!2403 lt!2517011 lambda!414033) (dynLambda!27350 lambda!414033 lt!2516985))))

(declare-fun lt!2517232 () Unit!161580)

(assert (=> d!2192544 (= lt!2517232 (choose!53176 lt!2517011 lt!2516985 lambda!414033))))

(assert (=> d!2192544 (= lt!2517011 (set.insert lt!2516985 (as set.empty (Set Context!12904))))))

(assert (=> d!2192544 (= (lemmaFlatMapOnSingletonSet!1917 lt!2517011 lt!2516985 lambda!414033) lt!2517232)))

(declare-fun b_lambda!266127 () Bool)

(assert (=> (not b_lambda!266127) (not d!2192544)))

(declare-fun bs!1869845 () Bool)

(assert (= bs!1869845 d!2192544))

(assert (=> bs!1869845 m!7734696))

(declare-fun m!7735166 () Bool)

(assert (=> bs!1869845 m!7735166))

(declare-fun m!7735168 () Bool)

(assert (=> bs!1869845 m!7735168))

(assert (=> bs!1869845 m!7734758))

(assert (=> b!7029753 d!2192544))

(declare-fun d!2192546 () Bool)

(assert (=> d!2192546 (= (flatMap!2403 lt!2517011 lambda!414033) (choose!53177 lt!2517011 lambda!414033))))

(declare-fun bs!1869846 () Bool)

(assert (= bs!1869846 d!2192546))

(declare-fun m!7735170 () Bool)

(assert (=> bs!1869846 m!7735170))

(assert (=> b!7029753 d!2192546))

(assert (=> b!7029752 d!2192512))

(assert (=> b!7029733 d!2192512))

(assert (=> b!7029733 d!2192458))

(declare-fun e!4226159 () Bool)

(declare-fun b!7030007 () Bool)

(declare-fun lt!2517233 () List!67896)

(assert (=> b!7030007 (= e!4226159 (or (not (= (exprs!6952 ct2!306) Nil!67772)) (= lt!2517233 (exprs!6952 lt!2516970))))))

(declare-fun b!7030006 () Bool)

(declare-fun res!2869768 () Bool)

(assert (=> b!7030006 (=> (not res!2869768) (not e!4226159))))

(assert (=> b!7030006 (= res!2869768 (= (size!41051 lt!2517233) (+ (size!41051 (exprs!6952 lt!2516970)) (size!41051 (exprs!6952 ct2!306)))))))

(declare-fun d!2192548 () Bool)

(assert (=> d!2192548 e!4226159))

(declare-fun res!2869769 () Bool)

(assert (=> d!2192548 (=> (not res!2869769) (not e!4226159))))

(assert (=> d!2192548 (= res!2869769 (= (content!13515 lt!2517233) (set.union (content!13515 (exprs!6952 lt!2516970)) (content!13515 (exprs!6952 ct2!306)))))))

(declare-fun e!4226158 () List!67896)

(assert (=> d!2192548 (= lt!2517233 e!4226158)))

(declare-fun c!1307261 () Bool)

(assert (=> d!2192548 (= c!1307261 (is-Nil!67772 (exprs!6952 lt!2516970)))))

(assert (=> d!2192548 (= (++!15492 (exprs!6952 lt!2516970) (exprs!6952 ct2!306)) lt!2517233)))

(declare-fun b!7030005 () Bool)

(assert (=> b!7030005 (= e!4226158 (Cons!67772 (h!74220 (exprs!6952 lt!2516970)) (++!15492 (t!381659 (exprs!6952 lt!2516970)) (exprs!6952 ct2!306))))))

(declare-fun b!7030004 () Bool)

(assert (=> b!7030004 (= e!4226158 (exprs!6952 ct2!306))))

(assert (= (and d!2192548 c!1307261) b!7030004))

(assert (= (and d!2192548 (not c!1307261)) b!7030005))

(assert (= (and d!2192548 res!2869769) b!7030006))

(assert (= (and b!7030006 res!2869768) b!7030007))

(declare-fun m!7735172 () Bool)

(assert (=> b!7030006 m!7735172))

(declare-fun m!7735174 () Bool)

(assert (=> b!7030006 m!7735174))

(assert (=> b!7030006 m!7735030))

(declare-fun m!7735176 () Bool)

(assert (=> d!2192548 m!7735176))

(declare-fun m!7735178 () Bool)

(assert (=> d!2192548 m!7735178))

(assert (=> d!2192548 m!7735036))

(declare-fun m!7735180 () Bool)

(assert (=> b!7030005 m!7735180))

(assert (=> b!7029741 d!2192548))

(assert (=> b!7029741 d!2192532))

(declare-fun d!2192550 () Bool)

(declare-fun e!4226162 () Bool)

(assert (=> d!2192550 e!4226162))

(declare-fun res!2869772 () Bool)

(assert (=> d!2192550 (=> (not res!2869772) (not e!4226162))))

(declare-fun lt!2517236 () Context!12904)

(assert (=> d!2192550 (= res!2869772 (= lt!2516975 (dynLambda!27351 lambda!414031 lt!2517236)))))

(declare-fun choose!53184 ((Set Context!12904) Int Context!12904) Context!12904)

(assert (=> d!2192550 (= lt!2517236 (choose!53184 z1!570 lambda!414031 lt!2516975))))

(assert (=> d!2192550 (set.member lt!2516975 (map!15752 z1!570 lambda!414031))))

(assert (=> d!2192550 (= (mapPost2!297 z1!570 lambda!414031 lt!2516975) lt!2517236)))

(declare-fun b!7030011 () Bool)

(assert (=> b!7030011 (= e!4226162 (set.member lt!2517236 z1!570))))

(assert (= (and d!2192550 res!2869772) b!7030011))

(declare-fun b_lambda!266129 () Bool)

(assert (=> (not b_lambda!266129) (not d!2192550)))

(declare-fun m!7735182 () Bool)

(assert (=> d!2192550 m!7735182))

(declare-fun m!7735184 () Bool)

(assert (=> d!2192550 m!7735184))

(declare-fun m!7735186 () Bool)

(assert (=> d!2192550 m!7735186))

(declare-fun m!7735188 () Bool)

(assert (=> d!2192550 m!7735188))

(declare-fun m!7735190 () Bool)

(assert (=> b!7030011 m!7735190))

(assert (=> b!7029741 d!2192550))

(declare-fun bs!1869847 () Bool)

(declare-fun d!2192552 () Bool)

(assert (= bs!1869847 (and d!2192552 b!7029741)))

(declare-fun lambda!414112 () Int)

(assert (=> bs!1869847 (= lambda!414112 lambda!414032)))

(declare-fun bs!1869848 () Bool)

(assert (= bs!1869848 (and d!2192552 d!2192538)))

(assert (=> bs!1869848 (= lambda!414112 lambda!414110)))

(assert (=> d!2192552 (= (inv!86500 setElem!49091) (forall!16364 (exprs!6952 setElem!49091) lambda!414112))))

(declare-fun bs!1869849 () Bool)

(assert (= bs!1869849 d!2192552))

(declare-fun m!7735192 () Bool)

(assert (=> bs!1869849 m!7735192))

(assert (=> setNonEmpty!49091 d!2192552))

(declare-fun d!2192554 () Bool)

(declare-fun lt!2517237 () Int)

(assert (=> d!2192554 (>= lt!2517237 0)))

(declare-fun e!4226163 () Int)

(assert (=> d!2192554 (= lt!2517237 e!4226163)))

(declare-fun c!1307262 () Bool)

(assert (=> d!2192554 (= c!1307262 (is-Cons!67774 (Cons!67774 lt!2517012 Nil!67774)))))

(assert (=> d!2192554 (= (zipperDepthTotal!519 (Cons!67774 lt!2517012 Nil!67774)) lt!2517237)))

(declare-fun b!7030012 () Bool)

(assert (=> b!7030012 (= e!4226163 (+ (contextDepthTotal!491 (h!74222 (Cons!67774 lt!2517012 Nil!67774))) (zipperDepthTotal!519 (t!381661 (Cons!67774 lt!2517012 Nil!67774)))))))

(declare-fun b!7030013 () Bool)

(assert (=> b!7030013 (= e!4226163 0)))

(assert (= (and d!2192554 c!1307262) b!7030012))

(assert (= (and d!2192554 (not c!1307262)) b!7030013))

(declare-fun m!7735194 () Bool)

(assert (=> b!7030012 m!7735194))

(declare-fun m!7735196 () Bool)

(assert (=> b!7030012 m!7735196))

(assert (=> b!7029751 d!2192554))

(declare-fun b!7030018 () Bool)

(declare-fun e!4226166 () Bool)

(declare-fun tp!1936104 () Bool)

(declare-fun tp!1936105 () Bool)

(assert (=> b!7030018 (= e!4226166 (and tp!1936104 tp!1936105))))

(assert (=> b!7029755 (= tp!1936085 e!4226166)))

(assert (= (and b!7029755 (is-Cons!67772 (exprs!6952 setElem!49091))) b!7030018))

(declare-fun b!7030023 () Bool)

(declare-fun e!4226169 () Bool)

(declare-fun tp!1936108 () Bool)

(assert (=> b!7030023 (= e!4226169 (and tp_is_empty!44137 tp!1936108))))

(assert (=> b!7029739 (= tp!1936086 e!4226169)))

(assert (= (and b!7029739 (is-Cons!67773 (t!381660 s!7408))) b!7030023))

(declare-fun b!7030024 () Bool)

(declare-fun e!4226170 () Bool)

(declare-fun tp!1936109 () Bool)

(declare-fun tp!1936110 () Bool)

(assert (=> b!7030024 (= e!4226170 (and tp!1936109 tp!1936110))))

(assert (=> b!7029748 (= tp!1936087 e!4226170)))

(assert (= (and b!7029748 (is-Cons!67772 (exprs!6952 ct2!306))) b!7030024))

(declare-fun condSetEmpty!49097 () Bool)

(assert (=> setNonEmpty!49091 (= condSetEmpty!49097 (= setRest!49091 (as set.empty (Set Context!12904))))))

(declare-fun setRes!49097 () Bool)

(assert (=> setNonEmpty!49091 (= tp!1936084 setRes!49097)))

(declare-fun setIsEmpty!49097 () Bool)

(assert (=> setIsEmpty!49097 setRes!49097))

(declare-fun setNonEmpty!49097 () Bool)

(declare-fun setElem!49097 () Context!12904)

(declare-fun tp!1936116 () Bool)

(declare-fun e!4226173 () Bool)

(assert (=> setNonEmpty!49097 (= setRes!49097 (and tp!1936116 (inv!86500 setElem!49097) e!4226173))))

(declare-fun setRest!49097 () (Set Context!12904))

(assert (=> setNonEmpty!49097 (= setRest!49091 (set.union (set.insert setElem!49097 (as set.empty (Set Context!12904))) setRest!49097))))

(declare-fun b!7030029 () Bool)

(declare-fun tp!1936115 () Bool)

(assert (=> b!7030029 (= e!4226173 tp!1936115)))

(assert (= (and setNonEmpty!49091 condSetEmpty!49097) setIsEmpty!49097))

(assert (= (and setNonEmpty!49091 (not condSetEmpty!49097)) setNonEmpty!49097))

(assert (= setNonEmpty!49097 b!7030029))

(declare-fun m!7735198 () Bool)

(assert (=> setNonEmpty!49097 m!7735198))

(declare-fun b_lambda!266131 () Bool)

(assert (= b_lambda!266121 (or b!7029753 b_lambda!266131)))

(declare-fun bs!1869850 () Bool)

(declare-fun d!2192556 () Bool)

(assert (= bs!1869850 (and d!2192556 b!7029753)))

(assert (=> bs!1869850 (= (dynLambda!27350 lambda!414033 lt!2517012) (derivationStepZipperUp!2066 lt!2517012 (h!74221 s!7408)))))

(assert (=> bs!1869850 m!7734724))

(assert (=> d!2192484 d!2192556))

(declare-fun b_lambda!266133 () Bool)

(assert (= b_lambda!266123 (or b!7029741 b_lambda!266133)))

(declare-fun bs!1869851 () Bool)

(declare-fun d!2192558 () Bool)

(assert (= bs!1869851 (and d!2192558 b!7029741)))

(declare-fun lt!2517238 () Unit!161580)

(assert (=> bs!1869851 (= lt!2517238 (lemmaConcatPreservesForall!777 (exprs!6952 lt!2517012) (exprs!6952 ct2!306) lambda!414032))))

(assert (=> bs!1869851 (= (dynLambda!27351 lambda!414031 lt!2517012) (Context!12905 (++!15492 (exprs!6952 lt!2517012) (exprs!6952 ct2!306))))))

(declare-fun m!7735200 () Bool)

(assert (=> bs!1869851 m!7735200))

(declare-fun m!7735202 () Bool)

(assert (=> bs!1869851 m!7735202))

(assert (=> d!2192486 d!2192558))

(declare-fun b_lambda!266135 () Bool)

(assert (= b_lambda!266125 (or b!7029754 b_lambda!266135)))

(declare-fun bs!1869852 () Bool)

(declare-fun d!2192560 () Bool)

(assert (= bs!1869852 (and d!2192560 b!7029754)))

(assert (=> bs!1869852 (= (dynLambda!27353 lambda!414030 lt!2517228) (matchZipper!2996 (set.insert lt!2517228 (as set.empty (Set Context!12904))) s!7408))))

(declare-fun m!7735204 () Bool)

(assert (=> bs!1869852 m!7735204))

(assert (=> bs!1869852 m!7735204))

(declare-fun m!7735206 () Bool)

(assert (=> bs!1869852 m!7735206))

(assert (=> d!2192524 d!2192560))

(declare-fun b_lambda!266137 () Bool)

(assert (= b_lambda!266127 (or b!7029753 b_lambda!266137)))

(declare-fun bs!1869853 () Bool)

(declare-fun d!2192562 () Bool)

(assert (= bs!1869853 (and d!2192562 b!7029753)))

(assert (=> bs!1869853 (= (dynLambda!27350 lambda!414033 lt!2516985) (derivationStepZipperUp!2066 lt!2516985 (h!74221 s!7408)))))

(assert (=> bs!1869853 m!7734694))

(assert (=> d!2192544 d!2192562))

(declare-fun b_lambda!266139 () Bool)

(assert (= b_lambda!266129 (or b!7029741 b_lambda!266139)))

(declare-fun bs!1869854 () Bool)

(declare-fun d!2192564 () Bool)

(assert (= bs!1869854 (and d!2192564 b!7029741)))

(declare-fun lt!2517239 () Unit!161580)

(assert (=> bs!1869854 (= lt!2517239 (lemmaConcatPreservesForall!777 (exprs!6952 lt!2517236) (exprs!6952 ct2!306) lambda!414032))))

(assert (=> bs!1869854 (= (dynLambda!27351 lambda!414031 lt!2517236) (Context!12905 (++!15492 (exprs!6952 lt!2517236) (exprs!6952 ct2!306))))))

(declare-fun m!7735208 () Bool)

(assert (=> bs!1869854 m!7735208))

(declare-fun m!7735210 () Bool)

(assert (=> bs!1869854 m!7735210))

(assert (=> d!2192550 d!2192564))

(declare-fun b_lambda!266141 () Bool)

(assert (= b_lambda!266119 (or b!7029753 b_lambda!266141)))

(declare-fun bs!1869855 () Bool)

(declare-fun d!2192566 () Bool)

(assert (= bs!1869855 (and d!2192566 b!7029753)))

(assert (=> bs!1869855 (= (dynLambda!27350 lambda!414033 lt!2516992) (derivationStepZipperUp!2066 lt!2516992 (h!74221 s!7408)))))

(assert (=> bs!1869855 m!7734706))

(assert (=> d!2192476 d!2192566))

(push 1)

(assert (not b_lambda!266137))

(assert (not d!2192486))

(assert (not b!7029987))

(assert (not d!2192456))

(assert (not d!2192546))

(assert (not d!2192524))

(assert tp_is_empty!44137)

(assert (not d!2192484))

(assert (not b!7029951))

(assert (not b!7030002))

(assert (not d!2192536))

(assert (not d!2192468))

(assert (not d!2192518))

(assert (not b!7029946))

(assert (not b!7029913))

(assert (not b!7029929))

(assert (not b_lambda!266135))

(assert (not d!2192542))

(assert (not bs!1869853))

(assert (not bm!638360))

(assert (not b!7029954))

(assert (not bm!638355))

(assert (not d!2192512))

(assert (not d!2192552))

(assert (not bs!1869851))

(assert (not b!7029999))

(assert (not d!2192520))

(assert (not b!7029864))

(assert (not b!7029890))

(assert (not b!7029998))

(assert (not b!7029941))

(assert (not d!2192460))

(assert (not b!7029940))

(assert (not b!7029886))

(assert (not b!7029891))

(assert (not d!2192548))

(assert (not bs!1869852))

(assert (not b!7029907))

(assert (not d!2192458))

(assert (not d!2192532))

(assert (not d!2192478))

(assert (not d!2192522))

(assert (not d!2192544))

(assert (not d!2192526))

(assert (not b!7029945))

(assert (not b!7029997))

(assert (not b!7029850))

(assert (not b!7029949))

(assert (not b!7030024))

(assert (not bs!1869854))

(assert (not b!7030006))

(assert (not b!7030029))

(assert (not b!7029996))

(assert (not d!2192494))

(assert (not d!2192506))

(assert (not b_lambda!266141))

(assert (not d!2192470))

(assert (not b!7029936))

(assert (not d!2192530))

(assert (not bs!1869855))

(assert (not d!2192500))

(assert (not b_lambda!266139))

(assert (not b_lambda!266131))

(assert (not b!7029918))

(assert (not b!7029930))

(assert (not d!2192508))

(assert (not d!2192514))

(assert (not b!7029948))

(assert (not d!2192490))

(assert (not b!7030005))

(assert (not bm!638357))

(assert (not b_lambda!266133))

(assert (not d!2192488))

(assert (not b!7029849))

(assert (not b!7029888))

(assert (not b!7029915))

(assert (not d!2192472))

(assert (not b!7029995))

(assert (not b!7030023))

(assert (not d!2192464))

(assert (not d!2192550))

(assert (not b!7029950))

(assert (not d!2192466))

(assert (not d!2192510))

(assert (not b!7029860))

(assert (not b!7029887))

(assert (not bm!638341))

(assert (not bm!638354))

(assert (not b!7029961))

(assert (not bs!1869850))

(assert (not b!7029947))

(assert (not d!2192534))

(assert (not b!7030012))

(assert (not b!7029861))

(assert (not d!2192538))

(assert (not b!7030018))

(assert (not d!2192504))

(assert (not d!2192498))

(assert (not d!2192476))

(assert (not b!7029952))

(assert (not b!7029889))

(assert (not b!7029953))

(assert (not setNonEmpty!49097))

(assert (not b!7029904))

(assert (not b!7029960))

(assert (not bm!638340))

(assert (not b!7029863))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

