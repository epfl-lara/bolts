; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!631984 () Bool)

(assert start!631984)

(declare-fun b!6378974 () Bool)

(assert (=> b!6378974 true))

(assert (=> b!6378974 true))

(declare-fun lambda!351789 () Int)

(declare-fun lambda!351788 () Int)

(assert (=> b!6378974 (not (= lambda!351789 lambda!351788))))

(assert (=> b!6378974 true))

(assert (=> b!6378974 true))

(declare-fun b!6378996 () Bool)

(assert (=> b!6378996 true))

(declare-fun b!6378968 () Bool)

(declare-fun e!3872390 () Bool)

(declare-fun e!3872393 () Bool)

(assert (=> b!6378968 (= e!3872390 (not e!3872393))))

(declare-fun res!2623924 () Bool)

(assert (=> b!6378968 (=> res!2623924 e!3872393)))

(declare-datatypes ((C!32854 0))(
  ( (C!32855 (val!26129 Int)) )
))
(declare-datatypes ((Regex!16292 0))(
  ( (ElementMatch!16292 (c!1162137 C!32854)) (Concat!25137 (regOne!33096 Regex!16292) (regTwo!33096 Regex!16292)) (EmptyExpr!16292) (Star!16292 (reg!16621 Regex!16292)) (EmptyLang!16292) (Union!16292 (regOne!33097 Regex!16292) (regTwo!33097 Regex!16292)) )
))
(declare-datatypes ((List!65175 0))(
  ( (Nil!65051) (Cons!65051 (h!71499 Regex!16292) (t!378779 List!65175)) )
))
(declare-datatypes ((Context!11352 0))(
  ( (Context!11353 (exprs!6176 List!65175)) )
))
(declare-datatypes ((List!65176 0))(
  ( (Nil!65052) (Cons!65052 (h!71500 Context!11352) (t!378780 List!65176)) )
))
(declare-fun zl!343 () List!65176)

(assert (=> b!6378968 (= res!2623924 (not (is-Cons!65052 zl!343)))))

(declare-fun lt!2369842 () Bool)

(declare-fun lt!2369834 () Bool)

(assert (=> b!6378968 (= lt!2369842 lt!2369834)))

(declare-fun r!7292 () Regex!16292)

(declare-datatypes ((List!65177 0))(
  ( (Nil!65053) (Cons!65053 (h!71501 C!32854) (t!378781 List!65177)) )
))
(declare-fun s!2326 () List!65177)

(declare-fun matchRSpec!3393 (Regex!16292 List!65177) Bool)

(assert (=> b!6378968 (= lt!2369834 (matchRSpec!3393 r!7292 s!2326))))

(declare-fun matchR!8475 (Regex!16292 List!65177) Bool)

(assert (=> b!6378968 (= lt!2369842 (matchR!8475 r!7292 s!2326))))

(declare-datatypes ((Unit!158499 0))(
  ( (Unit!158500) )
))
(declare-fun lt!2369841 () Unit!158499)

(declare-fun mainMatchTheorem!3393 (Regex!16292 List!65177) Unit!158499)

(assert (=> b!6378968 (= lt!2369841 (mainMatchTheorem!3393 r!7292 s!2326))))

(declare-fun b!6378969 () Bool)

(declare-fun res!2623925 () Bool)

(declare-fun e!3872394 () Bool)

(assert (=> b!6378969 (=> (not res!2623925) (not e!3872394))))

(declare-fun z!1189 () (Set Context!11352))

(declare-fun toList!10076 ((Set Context!11352)) List!65176)

(assert (=> b!6378969 (= res!2623925 (= (toList!10076 z!1189) zl!343))))

(declare-fun b!6378970 () Bool)

(declare-fun res!2623915 () Bool)

(assert (=> b!6378970 (=> res!2623915 e!3872393)))

(assert (=> b!6378970 (= res!2623915 (or (is-EmptyExpr!16292 r!7292) (is-EmptyLang!16292 r!7292) (is-ElementMatch!16292 r!7292) (is-Union!16292 r!7292) (not (is-Concat!25137 r!7292))))))

(declare-fun b!6378971 () Bool)

(declare-fun e!3872398 () Bool)

(declare-fun e!3872402 () Bool)

(assert (=> b!6378971 (= e!3872398 e!3872402)))

(declare-fun res!2623919 () Bool)

(assert (=> b!6378971 (=> res!2623919 e!3872402)))

(declare-fun lt!2369824 () Context!11352)

(declare-fun lt!2369836 () Regex!16292)

(declare-fun unfocusZipper!2034 (List!65176) Regex!16292)

(assert (=> b!6378971 (= res!2623919 (not (= (unfocusZipper!2034 (Cons!65052 lt!2369824 Nil!65052)) lt!2369836)))))

(declare-fun lt!2369828 () Regex!16292)

(assert (=> b!6378971 (= lt!2369836 (Concat!25137 (reg!16621 (regOne!33096 r!7292)) lt!2369828))))

(declare-fun b!6378972 () Bool)

(declare-fun e!3872399 () Bool)

(declare-fun tp!1775408 () Bool)

(declare-fun e!3872406 () Bool)

(declare-fun inv!83978 (Context!11352) Bool)

(assert (=> b!6378972 (= e!3872399 (and (inv!83978 (h!71500 zl!343)) e!3872406 tp!1775408))))

(declare-fun b!6378973 () Bool)

(declare-fun res!2623912 () Bool)

(declare-fun e!3872404 () Bool)

(assert (=> b!6378973 (=> res!2623912 e!3872404)))

(declare-fun lt!2369839 () (Set Context!11352))

(declare-fun lt!2369826 () (Set Context!11352))

(declare-fun matchZipper!2304 ((Set Context!11352) List!65177) Bool)

(assert (=> b!6378973 (= res!2623912 (not (= (matchZipper!2304 lt!2369839 s!2326) (matchZipper!2304 lt!2369826 (t!378781 s!2326)))))))

(declare-fun e!3872400 () Bool)

(assert (=> b!6378974 (= e!3872393 e!3872400)))

(declare-fun res!2623905 () Bool)

(assert (=> b!6378974 (=> res!2623905 e!3872400)))

(declare-fun lt!2369813 () Bool)

(assert (=> b!6378974 (= res!2623905 (or (not (= lt!2369842 lt!2369813)) (is-Nil!65053 s!2326)))))

(declare-fun Exists!3362 (Int) Bool)

(assert (=> b!6378974 (= (Exists!3362 lambda!351788) (Exists!3362 lambda!351789))))

(declare-fun lt!2369830 () Unit!158499)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1899 (Regex!16292 Regex!16292 List!65177) Unit!158499)

(assert (=> b!6378974 (= lt!2369830 (lemmaExistCutMatchRandMatchRSpecEquivalent!1899 (regOne!33096 r!7292) (regTwo!33096 r!7292) s!2326))))

(assert (=> b!6378974 (= lt!2369813 (Exists!3362 lambda!351788))))

(declare-datatypes ((tuple2!66542 0))(
  ( (tuple2!66543 (_1!36574 List!65177) (_2!36574 List!65177)) )
))
(declare-datatypes ((Option!16183 0))(
  ( (None!16182) (Some!16182 (v!52351 tuple2!66542)) )
))
(declare-fun isDefined!12886 (Option!16183) Bool)

(declare-fun findConcatSeparation!2597 (Regex!16292 Regex!16292 List!65177 List!65177 List!65177) Option!16183)

(assert (=> b!6378974 (= lt!2369813 (isDefined!12886 (findConcatSeparation!2597 (regOne!33096 r!7292) (regTwo!33096 r!7292) Nil!65053 s!2326 s!2326)))))

(declare-fun lt!2369835 () Unit!158499)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2361 (Regex!16292 Regex!16292 List!65177) Unit!158499)

(assert (=> b!6378974 (= lt!2369835 (lemmaFindConcatSeparationEquivalentToExists!2361 (regOne!33096 r!7292) (regTwo!33096 r!7292) s!2326))))

(declare-fun b!6378975 () Bool)

(declare-fun res!2623913 () Bool)

(assert (=> b!6378975 (=> res!2623913 e!3872400)))

(declare-fun isEmpty!37177 (List!65175) Bool)

(assert (=> b!6378975 (= res!2623913 (isEmpty!37177 (t!378779 (exprs!6176 (h!71500 zl!343)))))))

(declare-fun b!6378976 () Bool)

(declare-fun e!3872391 () Bool)

(declare-fun lt!2369814 () (Set Context!11352))

(assert (=> b!6378976 (= e!3872391 (matchZipper!2304 lt!2369814 (t!378781 s!2326)))))

(declare-fun res!2623911 () Bool)

(assert (=> start!631984 (=> (not res!2623911) (not e!3872394))))

(declare-fun validRegex!8028 (Regex!16292) Bool)

(assert (=> start!631984 (= res!2623911 (validRegex!8028 r!7292))))

(assert (=> start!631984 e!3872394))

(declare-fun e!3872405 () Bool)

(assert (=> start!631984 e!3872405))

(declare-fun condSetEmpty!43529 () Bool)

(assert (=> start!631984 (= condSetEmpty!43529 (= z!1189 (as set.empty (Set Context!11352))))))

(declare-fun setRes!43529 () Bool)

(assert (=> start!631984 setRes!43529))

(assert (=> start!631984 e!3872399))

(declare-fun e!3872388 () Bool)

(assert (=> start!631984 e!3872388))

(declare-fun b!6378977 () Bool)

(declare-fun tp_is_empty!41837 () Bool)

(declare-fun tp!1775399 () Bool)

(assert (=> b!6378977 (= e!3872388 (and tp_is_empty!41837 tp!1775399))))

(declare-fun b!6378978 () Bool)

(declare-fun tp!1775405 () Bool)

(assert (=> b!6378978 (= e!3872405 tp!1775405)))

(declare-fun b!6378979 () Bool)

(declare-fun e!3872397 () Unit!158499)

(declare-fun Unit!158501 () Unit!158499)

(assert (=> b!6378979 (= e!3872397 Unit!158501)))

(declare-fun lt!2369819 () (Set Context!11352))

(declare-fun lt!2369837 () Unit!158499)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1123 ((Set Context!11352) (Set Context!11352) List!65177) Unit!158499)

(assert (=> b!6378979 (= lt!2369837 (lemmaZipperConcatMatchesSameAsBothZippers!1123 lt!2369819 lt!2369814 (t!378781 s!2326)))))

(declare-fun res!2623909 () Bool)

(assert (=> b!6378979 (= res!2623909 (matchZipper!2304 lt!2369819 (t!378781 s!2326)))))

(assert (=> b!6378979 (=> res!2623909 e!3872391)))

(assert (=> b!6378979 (= (matchZipper!2304 (set.union lt!2369819 lt!2369814) (t!378781 s!2326)) e!3872391)))

(declare-fun b!6378980 () Bool)

(assert (=> b!6378980 (= e!3872394 e!3872390)))

(declare-fun res!2623923 () Bool)

(assert (=> b!6378980 (=> (not res!2623923) (not e!3872390))))

(declare-fun lt!2369829 () Regex!16292)

(assert (=> b!6378980 (= res!2623923 (= r!7292 lt!2369829))))

(assert (=> b!6378980 (= lt!2369829 (unfocusZipper!2034 zl!343))))

(declare-fun b!6378981 () Bool)

(assert (=> b!6378981 (= e!3872404 e!3872398)))

(declare-fun res!2623927 () Bool)

(assert (=> b!6378981 (=> res!2623927 e!3872398)))

(assert (=> b!6378981 (= res!2623927 (not (= r!7292 lt!2369828)))))

(declare-fun lt!2369833 () Regex!16292)

(assert (=> b!6378981 (= lt!2369828 (Concat!25137 lt!2369833 (regTwo!33096 r!7292)))))

(declare-fun b!6378982 () Bool)

(declare-fun res!2623904 () Bool)

(assert (=> b!6378982 (=> res!2623904 e!3872404)))

(assert (=> b!6378982 (= res!2623904 (not (= lt!2369829 r!7292)))))

(declare-fun b!6378983 () Bool)

(declare-fun e!3872403 () Bool)

(assert (=> b!6378983 (= e!3872402 e!3872403)))

(declare-fun res!2623903 () Bool)

(assert (=> b!6378983 (=> res!2623903 e!3872403)))

(declare-fun lt!2369820 () Context!11352)

(assert (=> b!6378983 (= res!2623903 (not (= (unfocusZipper!2034 (Cons!65052 lt!2369820 Nil!65052)) (reg!16621 (regOne!33096 r!7292)))))))

(declare-fun lambda!351790 () Int)

(declare-fun lt!2369818 () (Set Context!11352))

(declare-fun lt!2369822 () Context!11352)

(declare-fun flatMap!1797 ((Set Context!11352) Int) (Set Context!11352))

(declare-fun derivationStepZipperUp!1466 (Context!11352 C!32854) (Set Context!11352))

(assert (=> b!6378983 (= (flatMap!1797 lt!2369818 lambda!351790) (derivationStepZipperUp!1466 lt!2369822 (h!71501 s!2326)))))

(declare-fun lt!2369817 () Unit!158499)

(declare-fun lemmaFlatMapOnSingletonSet!1323 ((Set Context!11352) Context!11352 Int) Unit!158499)

(assert (=> b!6378983 (= lt!2369817 (lemmaFlatMapOnSingletonSet!1323 lt!2369818 lt!2369822 lambda!351790))))

(declare-fun lt!2369815 () (Set Context!11352))

(assert (=> b!6378983 (= (flatMap!1797 lt!2369815 lambda!351790) (derivationStepZipperUp!1466 lt!2369820 (h!71501 s!2326)))))

(declare-fun lt!2369840 () Unit!158499)

(assert (=> b!6378983 (= lt!2369840 (lemmaFlatMapOnSingletonSet!1323 lt!2369815 lt!2369820 lambda!351790))))

(declare-fun lt!2369838 () (Set Context!11352))

(assert (=> b!6378983 (= lt!2369838 (derivationStepZipperUp!1466 lt!2369822 (h!71501 s!2326)))))

(declare-fun lt!2369816 () (Set Context!11352))

(assert (=> b!6378983 (= lt!2369816 (derivationStepZipperUp!1466 lt!2369820 (h!71501 s!2326)))))

(assert (=> b!6378983 (= lt!2369818 (set.insert lt!2369822 (as set.empty (Set Context!11352))))))

(assert (=> b!6378983 (= lt!2369815 (set.insert lt!2369820 (as set.empty (Set Context!11352))))))

(assert (=> b!6378983 (= lt!2369820 (Context!11353 (Cons!65051 (reg!16621 (regOne!33096 r!7292)) Nil!65051)))))

(declare-fun b!6378984 () Bool)

(declare-fun res!2623910 () Bool)

(assert (=> b!6378984 (=> res!2623910 e!3872393)))

(declare-fun generalisedUnion!2136 (List!65175) Regex!16292)

(declare-fun unfocusZipperList!1713 (List!65176) List!65175)

(assert (=> b!6378984 (= res!2623910 (not (= r!7292 (generalisedUnion!2136 (unfocusZipperList!1713 zl!343)))))))

(declare-fun b!6378985 () Bool)

(declare-fun e!3872389 () Bool)

(assert (=> b!6378985 (= e!3872403 e!3872389)))

(declare-fun res!2623907 () Bool)

(assert (=> b!6378985 (=> res!2623907 e!3872389)))

(assert (=> b!6378985 (= res!2623907 (not lt!2369842))))

(declare-fun e!3872392 () Bool)

(assert (=> b!6378985 e!3872392))

(declare-fun res!2623916 () Bool)

(assert (=> b!6378985 (=> (not res!2623916) (not e!3872392))))

(assert (=> b!6378985 (= res!2623916 (= (matchR!8475 lt!2369836 s!2326) (matchRSpec!3393 lt!2369836 s!2326)))))

(declare-fun lt!2369811 () Unit!158499)

(assert (=> b!6378985 (= lt!2369811 (mainMatchTheorem!3393 lt!2369836 s!2326))))

(declare-fun setIsEmpty!43529 () Bool)

(assert (=> setIsEmpty!43529 setRes!43529))

(declare-fun b!6378986 () Bool)

(declare-fun Unit!158502 () Unit!158499)

(assert (=> b!6378986 (= e!3872397 Unit!158502)))

(declare-fun b!6378987 () Bool)

(declare-fun e!3872401 () Bool)

(declare-fun e!3872387 () Bool)

(assert (=> b!6378987 (= e!3872401 e!3872387)))

(declare-fun res!2623914 () Bool)

(assert (=> b!6378987 (=> res!2623914 e!3872387)))

(declare-fun lt!2369832 () (Set Context!11352))

(assert (=> b!6378987 (= res!2623914 (not (= lt!2369819 lt!2369832)))))

(declare-fun derivationStepZipperDown!1540 (Regex!16292 Context!11352 C!32854) (Set Context!11352))

(assert (=> b!6378987 (= lt!2369832 (derivationStepZipperDown!1540 (reg!16621 (regOne!33096 r!7292)) lt!2369822 (h!71501 s!2326)))))

(declare-fun lt!2369831 () List!65175)

(assert (=> b!6378987 (= lt!2369822 (Context!11353 lt!2369831))))

(assert (=> b!6378987 (= lt!2369831 (Cons!65051 lt!2369833 (t!378779 (exprs!6176 (h!71500 zl!343)))))))

(assert (=> b!6378987 (= lt!2369833 (Star!16292 (reg!16621 (regOne!33096 r!7292))))))

(declare-fun b!6378988 () Bool)

(assert (=> b!6378988 (= e!3872389 (validRegex!8028 lt!2369833))))

(declare-fun b!6378989 () Bool)

(declare-fun tp!1775400 () Bool)

(assert (=> b!6378989 (= e!3872406 tp!1775400)))

(declare-fun b!6378990 () Bool)

(declare-fun res!2623908 () Bool)

(assert (=> b!6378990 (=> res!2623908 e!3872393)))

(declare-fun isEmpty!37178 (List!65176) Bool)

(assert (=> b!6378990 (= res!2623908 (not (isEmpty!37178 (t!378780 zl!343))))))

(declare-fun b!6378991 () Bool)

(declare-fun res!2623917 () Bool)

(assert (=> b!6378991 (=> res!2623917 e!3872403)))

(assert (=> b!6378991 (= res!2623917 (not (= (unfocusZipper!2034 (Cons!65052 lt!2369822 Nil!65052)) lt!2369828)))))

(declare-fun b!6378992 () Bool)

(assert (=> b!6378992 (= e!3872392 (or (not lt!2369842) lt!2369834))))

(declare-fun b!6378993 () Bool)

(declare-fun res!2623922 () Bool)

(assert (=> b!6378993 (=> res!2623922 e!3872401)))

(declare-fun e!3872395 () Bool)

(assert (=> b!6378993 (= res!2623922 e!3872395)))

(declare-fun res!2623926 () Bool)

(assert (=> b!6378993 (=> (not res!2623926) (not e!3872395))))

(assert (=> b!6378993 (= res!2623926 (is-Concat!25137 (regOne!33096 r!7292)))))

(declare-fun b!6378994 () Bool)

(declare-fun res!2623921 () Bool)

(assert (=> b!6378994 (=> res!2623921 e!3872393)))

(assert (=> b!6378994 (= res!2623921 (not (is-Cons!65051 (exprs!6176 (h!71500 zl!343)))))))

(declare-fun b!6378995 () Bool)

(declare-fun res!2623906 () Bool)

(assert (=> b!6378995 (=> res!2623906 e!3872393)))

(declare-fun generalisedConcat!1889 (List!65175) Regex!16292)

(assert (=> b!6378995 (= res!2623906 (not (= r!7292 (generalisedConcat!1889 (exprs!6176 (h!71500 zl!343))))))))

(assert (=> b!6378996 (= e!3872400 e!3872401)))

(declare-fun res!2623928 () Bool)

(assert (=> b!6378996 (=> res!2623928 e!3872401)))

(assert (=> b!6378996 (= res!2623928 (or (and (is-ElementMatch!16292 (regOne!33096 r!7292)) (= (c!1162137 (regOne!33096 r!7292)) (h!71501 s!2326))) (is-Union!16292 (regOne!33096 r!7292))))))

(declare-fun lt!2369843 () Unit!158499)

(assert (=> b!6378996 (= lt!2369843 e!3872397)))

(declare-fun c!1162136 () Bool)

(declare-fun nullable!6285 (Regex!16292) Bool)

(assert (=> b!6378996 (= c!1162136 (nullable!6285 (h!71499 (exprs!6176 (h!71500 zl!343)))))))

(assert (=> b!6378996 (= (flatMap!1797 z!1189 lambda!351790) (derivationStepZipperUp!1466 (h!71500 zl!343) (h!71501 s!2326)))))

(declare-fun lt!2369827 () Unit!158499)

(assert (=> b!6378996 (= lt!2369827 (lemmaFlatMapOnSingletonSet!1323 z!1189 (h!71500 zl!343) lambda!351790))))

(declare-fun lt!2369825 () Context!11352)

(assert (=> b!6378996 (= lt!2369814 (derivationStepZipperUp!1466 lt!2369825 (h!71501 s!2326)))))

(assert (=> b!6378996 (= lt!2369819 (derivationStepZipperDown!1540 (h!71499 (exprs!6176 (h!71500 zl!343))) lt!2369825 (h!71501 s!2326)))))

(assert (=> b!6378996 (= lt!2369825 (Context!11353 (t!378779 (exprs!6176 (h!71500 zl!343)))))))

(declare-fun lt!2369812 () (Set Context!11352))

(assert (=> b!6378996 (= lt!2369812 (derivationStepZipperUp!1466 (Context!11353 (Cons!65051 (h!71499 (exprs!6176 (h!71500 zl!343))) (t!378779 (exprs!6176 (h!71500 zl!343))))) (h!71501 s!2326)))))

(declare-fun b!6378997 () Bool)

(declare-fun e!3872396 () Bool)

(declare-fun tp!1775403 () Bool)

(assert (=> b!6378997 (= e!3872396 tp!1775403)))

(declare-fun b!6378998 () Bool)

(assert (=> b!6378998 (= e!3872395 (nullable!6285 (regOne!33096 (regOne!33096 r!7292))))))

(declare-fun b!6378999 () Bool)

(assert (=> b!6378999 (= e!3872405 tp_is_empty!41837)))

(declare-fun b!6379000 () Bool)

(declare-fun tp!1775407 () Bool)

(declare-fun tp!1775404 () Bool)

(assert (=> b!6379000 (= e!3872405 (and tp!1775407 tp!1775404))))

(declare-fun b!6379001 () Bool)

(assert (=> b!6379001 (= e!3872387 e!3872404)))

(declare-fun res!2623918 () Bool)

(assert (=> b!6379001 (=> res!2623918 e!3872404)))

(assert (=> b!6379001 (= res!2623918 (not (= lt!2369826 lt!2369832)))))

(assert (=> b!6379001 (= (flatMap!1797 lt!2369839 lambda!351790) (derivationStepZipperUp!1466 lt!2369824 (h!71501 s!2326)))))

(declare-fun lt!2369821 () Unit!158499)

(assert (=> b!6379001 (= lt!2369821 (lemmaFlatMapOnSingletonSet!1323 lt!2369839 lt!2369824 lambda!351790))))

(declare-fun lt!2369823 () (Set Context!11352))

(assert (=> b!6379001 (= lt!2369823 (derivationStepZipperUp!1466 lt!2369824 (h!71501 s!2326)))))

(declare-fun derivationStepZipper!2258 ((Set Context!11352) C!32854) (Set Context!11352))

(assert (=> b!6379001 (= lt!2369826 (derivationStepZipper!2258 lt!2369839 (h!71501 s!2326)))))

(assert (=> b!6379001 (= lt!2369839 (set.insert lt!2369824 (as set.empty (Set Context!11352))))))

(assert (=> b!6379001 (= lt!2369824 (Context!11353 (Cons!65051 (reg!16621 (regOne!33096 r!7292)) lt!2369831)))))

(declare-fun tp!1775402 () Bool)

(declare-fun setElem!43529 () Context!11352)

(declare-fun setNonEmpty!43529 () Bool)

(assert (=> setNonEmpty!43529 (= setRes!43529 (and tp!1775402 (inv!83978 setElem!43529) e!3872396))))

(declare-fun setRest!43529 () (Set Context!11352))

(assert (=> setNonEmpty!43529 (= z!1189 (set.union (set.insert setElem!43529 (as set.empty (Set Context!11352))) setRest!43529))))

(declare-fun b!6379002 () Bool)

(declare-fun tp!1775406 () Bool)

(declare-fun tp!1775401 () Bool)

(assert (=> b!6379002 (= e!3872405 (and tp!1775406 tp!1775401))))

(declare-fun b!6379003 () Bool)

(declare-fun res!2623920 () Bool)

(assert (=> b!6379003 (=> res!2623920 e!3872401)))

(assert (=> b!6379003 (= res!2623920 (or (is-Concat!25137 (regOne!33096 r!7292)) (not (is-Star!16292 (regOne!33096 r!7292)))))))

(assert (= (and start!631984 res!2623911) b!6378969))

(assert (= (and b!6378969 res!2623925) b!6378980))

(assert (= (and b!6378980 res!2623923) b!6378968))

(assert (= (and b!6378968 (not res!2623924)) b!6378990))

(assert (= (and b!6378990 (not res!2623908)) b!6378995))

(assert (= (and b!6378995 (not res!2623906)) b!6378994))

(assert (= (and b!6378994 (not res!2623921)) b!6378984))

(assert (= (and b!6378984 (not res!2623910)) b!6378970))

(assert (= (and b!6378970 (not res!2623915)) b!6378974))

(assert (= (and b!6378974 (not res!2623905)) b!6378975))

(assert (= (and b!6378975 (not res!2623913)) b!6378996))

(assert (= (and b!6378996 c!1162136) b!6378979))

(assert (= (and b!6378996 (not c!1162136)) b!6378986))

(assert (= (and b!6378979 (not res!2623909)) b!6378976))

(assert (= (and b!6378996 (not res!2623928)) b!6378993))

(assert (= (and b!6378993 res!2623926) b!6378998))

(assert (= (and b!6378993 (not res!2623922)) b!6379003))

(assert (= (and b!6379003 (not res!2623920)) b!6378987))

(assert (= (and b!6378987 (not res!2623914)) b!6379001))

(assert (= (and b!6379001 (not res!2623918)) b!6378973))

(assert (= (and b!6378973 (not res!2623912)) b!6378982))

(assert (= (and b!6378982 (not res!2623904)) b!6378981))

(assert (= (and b!6378981 (not res!2623927)) b!6378971))

(assert (= (and b!6378971 (not res!2623919)) b!6378983))

(assert (= (and b!6378983 (not res!2623903)) b!6378991))

(assert (= (and b!6378991 (not res!2623917)) b!6378985))

(assert (= (and b!6378985 res!2623916) b!6378992))

(assert (= (and b!6378985 (not res!2623907)) b!6378988))

(assert (= (and start!631984 (is-ElementMatch!16292 r!7292)) b!6378999))

(assert (= (and start!631984 (is-Concat!25137 r!7292)) b!6379002))

(assert (= (and start!631984 (is-Star!16292 r!7292)) b!6378978))

(assert (= (and start!631984 (is-Union!16292 r!7292)) b!6379000))

(assert (= (and start!631984 condSetEmpty!43529) setIsEmpty!43529))

(assert (= (and start!631984 (not condSetEmpty!43529)) setNonEmpty!43529))

(assert (= setNonEmpty!43529 b!6378997))

(assert (= b!6378972 b!6378989))

(assert (= (and start!631984 (is-Cons!65052 zl!343)) b!6378972))

(assert (= (and start!631984 (is-Cons!65053 s!2326)) b!6378977))

(declare-fun m!7179876 () Bool)

(assert (=> b!6378971 m!7179876))

(declare-fun m!7179878 () Bool)

(assert (=> b!6378979 m!7179878))

(declare-fun m!7179880 () Bool)

(assert (=> b!6378979 m!7179880))

(declare-fun m!7179882 () Bool)

(assert (=> b!6378979 m!7179882))

(declare-fun m!7179884 () Bool)

(assert (=> b!6378985 m!7179884))

(declare-fun m!7179886 () Bool)

(assert (=> b!6378985 m!7179886))

(declare-fun m!7179888 () Bool)

(assert (=> b!6378985 m!7179888))

(declare-fun m!7179890 () Bool)

(assert (=> b!6378973 m!7179890))

(declare-fun m!7179892 () Bool)

(assert (=> b!6378973 m!7179892))

(declare-fun m!7179894 () Bool)

(assert (=> setNonEmpty!43529 m!7179894))

(declare-fun m!7179896 () Bool)

(assert (=> b!6378988 m!7179896))

(declare-fun m!7179898 () Bool)

(assert (=> b!6378996 m!7179898))

(declare-fun m!7179900 () Bool)

(assert (=> b!6378996 m!7179900))

(declare-fun m!7179902 () Bool)

(assert (=> b!6378996 m!7179902))

(declare-fun m!7179904 () Bool)

(assert (=> b!6378996 m!7179904))

(declare-fun m!7179906 () Bool)

(assert (=> b!6378996 m!7179906))

(declare-fun m!7179908 () Bool)

(assert (=> b!6378996 m!7179908))

(declare-fun m!7179910 () Bool)

(assert (=> b!6378996 m!7179910))

(declare-fun m!7179912 () Bool)

(assert (=> b!6378972 m!7179912))

(declare-fun m!7179914 () Bool)

(assert (=> start!631984 m!7179914))

(declare-fun m!7179916 () Bool)

(assert (=> b!6378969 m!7179916))

(declare-fun m!7179918 () Bool)

(assert (=> b!6378987 m!7179918))

(declare-fun m!7179920 () Bool)

(assert (=> b!6378990 m!7179920))

(declare-fun m!7179922 () Bool)

(assert (=> b!6378980 m!7179922))

(declare-fun m!7179924 () Bool)

(assert (=> b!6379001 m!7179924))

(declare-fun m!7179926 () Bool)

(assert (=> b!6379001 m!7179926))

(declare-fun m!7179928 () Bool)

(assert (=> b!6379001 m!7179928))

(declare-fun m!7179930 () Bool)

(assert (=> b!6379001 m!7179930))

(declare-fun m!7179932 () Bool)

(assert (=> b!6379001 m!7179932))

(declare-fun m!7179934 () Bool)

(assert (=> b!6378975 m!7179934))

(declare-fun m!7179936 () Bool)

(assert (=> b!6378983 m!7179936))

(declare-fun m!7179938 () Bool)

(assert (=> b!6378983 m!7179938))

(declare-fun m!7179940 () Bool)

(assert (=> b!6378983 m!7179940))

(declare-fun m!7179942 () Bool)

(assert (=> b!6378983 m!7179942))

(declare-fun m!7179944 () Bool)

(assert (=> b!6378983 m!7179944))

(declare-fun m!7179946 () Bool)

(assert (=> b!6378983 m!7179946))

(declare-fun m!7179948 () Bool)

(assert (=> b!6378983 m!7179948))

(declare-fun m!7179950 () Bool)

(assert (=> b!6378983 m!7179950))

(declare-fun m!7179952 () Bool)

(assert (=> b!6378983 m!7179952))

(declare-fun m!7179954 () Bool)

(assert (=> b!6378991 m!7179954))

(declare-fun m!7179956 () Bool)

(assert (=> b!6378984 m!7179956))

(assert (=> b!6378984 m!7179956))

(declare-fun m!7179958 () Bool)

(assert (=> b!6378984 m!7179958))

(declare-fun m!7179960 () Bool)

(assert (=> b!6378998 m!7179960))

(declare-fun m!7179962 () Bool)

(assert (=> b!6378995 m!7179962))

(declare-fun m!7179964 () Bool)

(assert (=> b!6378968 m!7179964))

(declare-fun m!7179966 () Bool)

(assert (=> b!6378968 m!7179966))

(declare-fun m!7179968 () Bool)

(assert (=> b!6378968 m!7179968))

(declare-fun m!7179970 () Bool)

(assert (=> b!6378974 m!7179970))

(assert (=> b!6378974 m!7179970))

(declare-fun m!7179972 () Bool)

(assert (=> b!6378974 m!7179972))

(declare-fun m!7179974 () Bool)

(assert (=> b!6378974 m!7179974))

(declare-fun m!7179976 () Bool)

(assert (=> b!6378974 m!7179976))

(declare-fun m!7179978 () Bool)

(assert (=> b!6378974 m!7179978))

(assert (=> b!6378974 m!7179972))

(declare-fun m!7179980 () Bool)

(assert (=> b!6378974 m!7179980))

(declare-fun m!7179982 () Bool)

(assert (=> b!6378976 m!7179982))

(push 1)

(assert (not b!6378978))

(assert (not start!631984))

(assert (not b!6378987))

(assert (not b!6378988))

(assert (not b!6378974))

(assert (not setNonEmpty!43529))

(assert (not b!6378977))

(assert (not b!6378972))

(assert (not b!6378971))

(assert (not b!6378968))

(assert (not b!6378998))

(assert (not b!6378973))

(assert (not b!6378985))

(assert (not b!6378976))

(assert (not b!6378996))

(assert (not b!6378980))

(assert (not b!6378983))

(assert (not b!6378990))

(assert (not b!6378984))

(assert (not b!6378979))

(assert (not b!6378991))

(assert (not b!6378989))

(assert tp_is_empty!41837)

(assert (not b!6379001))

(assert (not b!6379000))

(assert (not b!6378997))

(assert (not b!6379002))

(assert (not b!6378969))

(assert (not b!6378975))

(assert (not b!6378995))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2000288 () Bool)

(declare-fun lambda!351810 () Int)

(declare-fun forall!15470 (List!65175 Int) Bool)

(assert (=> d!2000288 (= (inv!83978 setElem!43529) (forall!15470 (exprs!6176 setElem!43529) lambda!351810))))

(declare-fun bs!1596932 () Bool)

(assert (= bs!1596932 d!2000288))

(declare-fun m!7180092 () Bool)

(assert (=> bs!1596932 m!7180092))

(assert (=> setNonEmpty!43529 d!2000288))

(declare-fun d!2000290 () Bool)

(declare-fun lt!2369945 () Regex!16292)

(assert (=> d!2000290 (validRegex!8028 lt!2369945)))

(assert (=> d!2000290 (= lt!2369945 (generalisedUnion!2136 (unfocusZipperList!1713 (Cons!65052 lt!2369824 Nil!65052))))))

(assert (=> d!2000290 (= (unfocusZipper!2034 (Cons!65052 lt!2369824 Nil!65052)) lt!2369945)))

(declare-fun bs!1596933 () Bool)

(assert (= bs!1596933 d!2000290))

(declare-fun m!7180094 () Bool)

(assert (=> bs!1596933 m!7180094))

(declare-fun m!7180096 () Bool)

(assert (=> bs!1596933 m!7180096))

(assert (=> bs!1596933 m!7180096))

(declare-fun m!7180098 () Bool)

(assert (=> bs!1596933 m!7180098))

(assert (=> b!6378971 d!2000290))

(declare-fun d!2000292 () Bool)

(declare-fun lt!2369946 () Regex!16292)

(assert (=> d!2000292 (validRegex!8028 lt!2369946)))

(assert (=> d!2000292 (= lt!2369946 (generalisedUnion!2136 (unfocusZipperList!1713 (Cons!65052 lt!2369822 Nil!65052))))))

(assert (=> d!2000292 (= (unfocusZipper!2034 (Cons!65052 lt!2369822 Nil!65052)) lt!2369946)))

(declare-fun bs!1596934 () Bool)

(assert (= bs!1596934 d!2000292))

(declare-fun m!7180100 () Bool)

(assert (=> bs!1596934 m!7180100))

(declare-fun m!7180102 () Bool)

(assert (=> bs!1596934 m!7180102))

(assert (=> bs!1596934 m!7180102))

(declare-fun m!7180104 () Bool)

(assert (=> bs!1596934 m!7180104))

(assert (=> b!6378991 d!2000292))

(declare-fun d!2000294 () Bool)

(declare-fun choose!47431 ((Set Context!11352) Int) (Set Context!11352))

(assert (=> d!2000294 (= (flatMap!1797 lt!2369839 lambda!351790) (choose!47431 lt!2369839 lambda!351790))))

(declare-fun bs!1596935 () Bool)

(assert (= bs!1596935 d!2000294))

(declare-fun m!7180106 () Bool)

(assert (=> bs!1596935 m!7180106))

(assert (=> b!6379001 d!2000294))

(declare-fun b!6379146 () Bool)

(declare-fun e!3872481 () Bool)

(assert (=> b!6379146 (= e!3872481 (nullable!6285 (h!71499 (exprs!6176 lt!2369824))))))

(declare-fun call!545061 () (Set Context!11352))

(declare-fun e!3872479 () (Set Context!11352))

(declare-fun b!6379147 () Bool)

(assert (=> b!6379147 (= e!3872479 (set.union call!545061 (derivationStepZipperUp!1466 (Context!11353 (t!378779 (exprs!6176 lt!2369824))) (h!71501 s!2326))))))

(declare-fun b!6379148 () Bool)

(declare-fun e!3872480 () (Set Context!11352))

(assert (=> b!6379148 (= e!3872479 e!3872480)))

(declare-fun c!1162155 () Bool)

(assert (=> b!6379148 (= c!1162155 (is-Cons!65051 (exprs!6176 lt!2369824)))))

(declare-fun b!6379149 () Bool)

(assert (=> b!6379149 (= e!3872480 (as set.empty (Set Context!11352)))))

(declare-fun d!2000296 () Bool)

(declare-fun c!1162156 () Bool)

(assert (=> d!2000296 (= c!1162156 e!3872481)))

(declare-fun res!2624021 () Bool)

(assert (=> d!2000296 (=> (not res!2624021) (not e!3872481))))

(assert (=> d!2000296 (= res!2624021 (is-Cons!65051 (exprs!6176 lt!2369824)))))

(assert (=> d!2000296 (= (derivationStepZipperUp!1466 lt!2369824 (h!71501 s!2326)) e!3872479)))

(declare-fun b!6379150 () Bool)

(assert (=> b!6379150 (= e!3872480 call!545061)))

(declare-fun bm!545056 () Bool)

(assert (=> bm!545056 (= call!545061 (derivationStepZipperDown!1540 (h!71499 (exprs!6176 lt!2369824)) (Context!11353 (t!378779 (exprs!6176 lt!2369824))) (h!71501 s!2326)))))

(assert (= (and d!2000296 res!2624021) b!6379146))

(assert (= (and d!2000296 c!1162156) b!6379147))

(assert (= (and d!2000296 (not c!1162156)) b!6379148))

(assert (= (and b!6379148 c!1162155) b!6379150))

(assert (= (and b!6379148 (not c!1162155)) b!6379149))

(assert (= (or b!6379147 b!6379150) bm!545056))

(declare-fun m!7180108 () Bool)

(assert (=> b!6379146 m!7180108))

(declare-fun m!7180110 () Bool)

(assert (=> b!6379147 m!7180110))

(declare-fun m!7180112 () Bool)

(assert (=> bm!545056 m!7180112))

(assert (=> b!6379001 d!2000296))

(declare-fun d!2000298 () Bool)

(declare-fun dynLambda!25810 (Int Context!11352) (Set Context!11352))

(assert (=> d!2000298 (= (flatMap!1797 lt!2369839 lambda!351790) (dynLambda!25810 lambda!351790 lt!2369824))))

(declare-fun lt!2369949 () Unit!158499)

(declare-fun choose!47432 ((Set Context!11352) Context!11352 Int) Unit!158499)

(assert (=> d!2000298 (= lt!2369949 (choose!47432 lt!2369839 lt!2369824 lambda!351790))))

(assert (=> d!2000298 (= lt!2369839 (set.insert lt!2369824 (as set.empty (Set Context!11352))))))

(assert (=> d!2000298 (= (lemmaFlatMapOnSingletonSet!1323 lt!2369839 lt!2369824 lambda!351790) lt!2369949)))

(declare-fun b_lambda!242421 () Bool)

(assert (=> (not b_lambda!242421) (not d!2000298)))

(declare-fun bs!1596936 () Bool)

(assert (= bs!1596936 d!2000298))

(assert (=> bs!1596936 m!7179924))

(declare-fun m!7180114 () Bool)

(assert (=> bs!1596936 m!7180114))

(declare-fun m!7180116 () Bool)

(assert (=> bs!1596936 m!7180116))

(assert (=> bs!1596936 m!7179930))

(assert (=> b!6379001 d!2000298))

(declare-fun bs!1596937 () Bool)

(declare-fun d!2000300 () Bool)

(assert (= bs!1596937 (and d!2000300 b!6378996)))

(declare-fun lambda!351813 () Int)

(assert (=> bs!1596937 (= lambda!351813 lambda!351790)))

(assert (=> d!2000300 true))

(assert (=> d!2000300 (= (derivationStepZipper!2258 lt!2369839 (h!71501 s!2326)) (flatMap!1797 lt!2369839 lambda!351813))))

(declare-fun bs!1596938 () Bool)

(assert (= bs!1596938 d!2000300))

(declare-fun m!7180118 () Bool)

(assert (=> bs!1596938 m!7180118))

(assert (=> b!6379001 d!2000300))

(declare-fun d!2000302 () Bool)

(declare-fun lt!2369950 () Regex!16292)

(assert (=> d!2000302 (validRegex!8028 lt!2369950)))

(assert (=> d!2000302 (= lt!2369950 (generalisedUnion!2136 (unfocusZipperList!1713 (Cons!65052 lt!2369820 Nil!65052))))))

(assert (=> d!2000302 (= (unfocusZipper!2034 (Cons!65052 lt!2369820 Nil!65052)) lt!2369950)))

(declare-fun bs!1596939 () Bool)

(assert (= bs!1596939 d!2000302))

(declare-fun m!7180120 () Bool)

(assert (=> bs!1596939 m!7180120))

(declare-fun m!7180122 () Bool)

(assert (=> bs!1596939 m!7180122))

(assert (=> bs!1596939 m!7180122))

(declare-fun m!7180124 () Bool)

(assert (=> bs!1596939 m!7180124))

(assert (=> b!6378983 d!2000302))

(declare-fun d!2000304 () Bool)

(assert (=> d!2000304 (= (flatMap!1797 lt!2369818 lambda!351790) (dynLambda!25810 lambda!351790 lt!2369822))))

(declare-fun lt!2369951 () Unit!158499)

(assert (=> d!2000304 (= lt!2369951 (choose!47432 lt!2369818 lt!2369822 lambda!351790))))

(assert (=> d!2000304 (= lt!2369818 (set.insert lt!2369822 (as set.empty (Set Context!11352))))))

(assert (=> d!2000304 (= (lemmaFlatMapOnSingletonSet!1323 lt!2369818 lt!2369822 lambda!351790) lt!2369951)))

(declare-fun b_lambda!242423 () Bool)

(assert (=> (not b_lambda!242423) (not d!2000304)))

(declare-fun bs!1596940 () Bool)

(assert (= bs!1596940 d!2000304))

(assert (=> bs!1596940 m!7179948))

(declare-fun m!7180126 () Bool)

(assert (=> bs!1596940 m!7180126))

(declare-fun m!7180128 () Bool)

(assert (=> bs!1596940 m!7180128))

(assert (=> bs!1596940 m!7179942))

(assert (=> b!6378983 d!2000304))

(declare-fun d!2000306 () Bool)

(assert (=> d!2000306 (= (flatMap!1797 lt!2369815 lambda!351790) (dynLambda!25810 lambda!351790 lt!2369820))))

(declare-fun lt!2369952 () Unit!158499)

(assert (=> d!2000306 (= lt!2369952 (choose!47432 lt!2369815 lt!2369820 lambda!351790))))

(assert (=> d!2000306 (= lt!2369815 (set.insert lt!2369820 (as set.empty (Set Context!11352))))))

(assert (=> d!2000306 (= (lemmaFlatMapOnSingletonSet!1323 lt!2369815 lt!2369820 lambda!351790) lt!2369952)))

(declare-fun b_lambda!242425 () Bool)

(assert (=> (not b_lambda!242425) (not d!2000306)))

(declare-fun bs!1596941 () Bool)

(assert (= bs!1596941 d!2000306))

(assert (=> bs!1596941 m!7179946))

(declare-fun m!7180130 () Bool)

(assert (=> bs!1596941 m!7180130))

(declare-fun m!7180132 () Bool)

(assert (=> bs!1596941 m!7180132))

(assert (=> bs!1596941 m!7179944))

(assert (=> b!6378983 d!2000306))

(declare-fun b!6379153 () Bool)

(declare-fun e!3872484 () Bool)

(assert (=> b!6379153 (= e!3872484 (nullable!6285 (h!71499 (exprs!6176 lt!2369820))))))

(declare-fun b!6379154 () Bool)

(declare-fun e!3872482 () (Set Context!11352))

(declare-fun call!545062 () (Set Context!11352))

(assert (=> b!6379154 (= e!3872482 (set.union call!545062 (derivationStepZipperUp!1466 (Context!11353 (t!378779 (exprs!6176 lt!2369820))) (h!71501 s!2326))))))

(declare-fun b!6379155 () Bool)

(declare-fun e!3872483 () (Set Context!11352))

(assert (=> b!6379155 (= e!3872482 e!3872483)))

(declare-fun c!1162159 () Bool)

(assert (=> b!6379155 (= c!1162159 (is-Cons!65051 (exprs!6176 lt!2369820)))))

(declare-fun b!6379156 () Bool)

(assert (=> b!6379156 (= e!3872483 (as set.empty (Set Context!11352)))))

(declare-fun d!2000308 () Bool)

(declare-fun c!1162160 () Bool)

(assert (=> d!2000308 (= c!1162160 e!3872484)))

(declare-fun res!2624022 () Bool)

(assert (=> d!2000308 (=> (not res!2624022) (not e!3872484))))

(assert (=> d!2000308 (= res!2624022 (is-Cons!65051 (exprs!6176 lt!2369820)))))

(assert (=> d!2000308 (= (derivationStepZipperUp!1466 lt!2369820 (h!71501 s!2326)) e!3872482)))

(declare-fun b!6379157 () Bool)

(assert (=> b!6379157 (= e!3872483 call!545062)))

(declare-fun bm!545057 () Bool)

(assert (=> bm!545057 (= call!545062 (derivationStepZipperDown!1540 (h!71499 (exprs!6176 lt!2369820)) (Context!11353 (t!378779 (exprs!6176 lt!2369820))) (h!71501 s!2326)))))

(assert (= (and d!2000308 res!2624022) b!6379153))

(assert (= (and d!2000308 c!1162160) b!6379154))

(assert (= (and d!2000308 (not c!1162160)) b!6379155))

(assert (= (and b!6379155 c!1162159) b!6379157))

(assert (= (and b!6379155 (not c!1162159)) b!6379156))

(assert (= (or b!6379154 b!6379157) bm!545057))

(declare-fun m!7180134 () Bool)

(assert (=> b!6379153 m!7180134))

(declare-fun m!7180136 () Bool)

(assert (=> b!6379154 m!7180136))

(declare-fun m!7180138 () Bool)

(assert (=> bm!545057 m!7180138))

(assert (=> b!6378983 d!2000308))

(declare-fun b!6379158 () Bool)

(declare-fun e!3872487 () Bool)

(assert (=> b!6379158 (= e!3872487 (nullable!6285 (h!71499 (exprs!6176 lt!2369822))))))

(declare-fun b!6379159 () Bool)

(declare-fun call!545063 () (Set Context!11352))

(declare-fun e!3872485 () (Set Context!11352))

(assert (=> b!6379159 (= e!3872485 (set.union call!545063 (derivationStepZipperUp!1466 (Context!11353 (t!378779 (exprs!6176 lt!2369822))) (h!71501 s!2326))))))

(declare-fun b!6379160 () Bool)

(declare-fun e!3872486 () (Set Context!11352))

(assert (=> b!6379160 (= e!3872485 e!3872486)))

(declare-fun c!1162161 () Bool)

(assert (=> b!6379160 (= c!1162161 (is-Cons!65051 (exprs!6176 lt!2369822)))))

(declare-fun b!6379161 () Bool)

(assert (=> b!6379161 (= e!3872486 (as set.empty (Set Context!11352)))))

(declare-fun d!2000310 () Bool)

(declare-fun c!1162162 () Bool)

(assert (=> d!2000310 (= c!1162162 e!3872487)))

(declare-fun res!2624023 () Bool)

(assert (=> d!2000310 (=> (not res!2624023) (not e!3872487))))

(assert (=> d!2000310 (= res!2624023 (is-Cons!65051 (exprs!6176 lt!2369822)))))

(assert (=> d!2000310 (= (derivationStepZipperUp!1466 lt!2369822 (h!71501 s!2326)) e!3872485)))

(declare-fun b!6379162 () Bool)

(assert (=> b!6379162 (= e!3872486 call!545063)))

(declare-fun bm!545058 () Bool)

(assert (=> bm!545058 (= call!545063 (derivationStepZipperDown!1540 (h!71499 (exprs!6176 lt!2369822)) (Context!11353 (t!378779 (exprs!6176 lt!2369822))) (h!71501 s!2326)))))

(assert (= (and d!2000310 res!2624023) b!6379158))

(assert (= (and d!2000310 c!1162162) b!6379159))

(assert (= (and d!2000310 (not c!1162162)) b!6379160))

(assert (= (and b!6379160 c!1162161) b!6379162))

(assert (= (and b!6379160 (not c!1162161)) b!6379161))

(assert (= (or b!6379159 b!6379162) bm!545058))

(declare-fun m!7180140 () Bool)

(assert (=> b!6379158 m!7180140))

(declare-fun m!7180142 () Bool)

(assert (=> b!6379159 m!7180142))

(declare-fun m!7180144 () Bool)

(assert (=> bm!545058 m!7180144))

(assert (=> b!6378983 d!2000310))

(declare-fun d!2000312 () Bool)

(assert (=> d!2000312 (= (flatMap!1797 lt!2369815 lambda!351790) (choose!47431 lt!2369815 lambda!351790))))

(declare-fun bs!1596942 () Bool)

(assert (= bs!1596942 d!2000312))

(declare-fun m!7180146 () Bool)

(assert (=> bs!1596942 m!7180146))

(assert (=> b!6378983 d!2000312))

(declare-fun d!2000314 () Bool)

(assert (=> d!2000314 (= (flatMap!1797 lt!2369818 lambda!351790) (choose!47431 lt!2369818 lambda!351790))))

(declare-fun bs!1596943 () Bool)

(assert (= bs!1596943 d!2000314))

(declare-fun m!7180148 () Bool)

(assert (=> bs!1596943 m!7180148))

(assert (=> b!6378983 d!2000314))

(declare-fun bs!1596944 () Bool)

(declare-fun d!2000316 () Bool)

(assert (= bs!1596944 (and d!2000316 d!2000288)))

(declare-fun lambda!351814 () Int)

(assert (=> bs!1596944 (= lambda!351814 lambda!351810)))

(assert (=> d!2000316 (= (inv!83978 (h!71500 zl!343)) (forall!15470 (exprs!6176 (h!71500 zl!343)) lambda!351814))))

(declare-fun bs!1596945 () Bool)

(assert (= bs!1596945 d!2000316))

(declare-fun m!7180150 () Bool)

(assert (=> bs!1596945 m!7180150))

(assert (=> b!6378972 d!2000316))

(declare-fun bs!1596946 () Bool)

(declare-fun d!2000318 () Bool)

(assert (= bs!1596946 (and d!2000318 d!2000288)))

(declare-fun lambda!351817 () Int)

(assert (=> bs!1596946 (= lambda!351817 lambda!351810)))

(declare-fun bs!1596947 () Bool)

(assert (= bs!1596947 (and d!2000318 d!2000316)))

(assert (=> bs!1596947 (= lambda!351817 lambda!351814)))

(declare-fun b!6379183 () Bool)

(declare-fun e!3872504 () Bool)

(declare-fun e!3872501 () Bool)

(assert (=> b!6379183 (= e!3872504 e!3872501)))

(declare-fun c!1162174 () Bool)

(assert (=> b!6379183 (= c!1162174 (isEmpty!37177 (unfocusZipperList!1713 zl!343)))))

(declare-fun b!6379184 () Bool)

(declare-fun e!3872502 () Regex!16292)

(assert (=> b!6379184 (= e!3872502 (h!71499 (unfocusZipperList!1713 zl!343)))))

(declare-fun b!6379185 () Bool)

(declare-fun e!3872500 () Bool)

(assert (=> b!6379185 (= e!3872501 e!3872500)))

(declare-fun c!1162172 () Bool)

(declare-fun tail!12160 (List!65175) List!65175)

(assert (=> b!6379185 (= c!1162172 (isEmpty!37177 (tail!12160 (unfocusZipperList!1713 zl!343))))))

(declare-fun b!6379186 () Bool)

(declare-fun lt!2369955 () Regex!16292)

(declare-fun head!13075 (List!65175) Regex!16292)

(assert (=> b!6379186 (= e!3872500 (= lt!2369955 (head!13075 (unfocusZipperList!1713 zl!343))))))

(declare-fun b!6379188 () Bool)

(declare-fun e!3872503 () Regex!16292)

(assert (=> b!6379188 (= e!3872503 EmptyLang!16292)))

(declare-fun b!6379189 () Bool)

(declare-fun isEmptyLang!1700 (Regex!16292) Bool)

(assert (=> b!6379189 (= e!3872501 (isEmptyLang!1700 lt!2369955))))

(declare-fun b!6379190 () Bool)

(declare-fun isUnion!1130 (Regex!16292) Bool)

(assert (=> b!6379190 (= e!3872500 (isUnion!1130 lt!2369955))))

(declare-fun b!6379191 () Bool)

(declare-fun e!3872505 () Bool)

(assert (=> b!6379191 (= e!3872505 (isEmpty!37177 (t!378779 (unfocusZipperList!1713 zl!343))))))

(declare-fun b!6379192 () Bool)

(assert (=> b!6379192 (= e!3872503 (Union!16292 (h!71499 (unfocusZipperList!1713 zl!343)) (generalisedUnion!2136 (t!378779 (unfocusZipperList!1713 zl!343)))))))

(assert (=> d!2000318 e!3872504))

(declare-fun res!2624029 () Bool)

(assert (=> d!2000318 (=> (not res!2624029) (not e!3872504))))

(assert (=> d!2000318 (= res!2624029 (validRegex!8028 lt!2369955))))

(assert (=> d!2000318 (= lt!2369955 e!3872502)))

(declare-fun c!1162173 () Bool)

(assert (=> d!2000318 (= c!1162173 e!3872505)))

(declare-fun res!2624028 () Bool)

(assert (=> d!2000318 (=> (not res!2624028) (not e!3872505))))

(assert (=> d!2000318 (= res!2624028 (is-Cons!65051 (unfocusZipperList!1713 zl!343)))))

(assert (=> d!2000318 (forall!15470 (unfocusZipperList!1713 zl!343) lambda!351817)))

(assert (=> d!2000318 (= (generalisedUnion!2136 (unfocusZipperList!1713 zl!343)) lt!2369955)))

(declare-fun b!6379187 () Bool)

(assert (=> b!6379187 (= e!3872502 e!3872503)))

(declare-fun c!1162171 () Bool)

(assert (=> b!6379187 (= c!1162171 (is-Cons!65051 (unfocusZipperList!1713 zl!343)))))

(assert (= (and d!2000318 res!2624028) b!6379191))

(assert (= (and d!2000318 c!1162173) b!6379184))

(assert (= (and d!2000318 (not c!1162173)) b!6379187))

(assert (= (and b!6379187 c!1162171) b!6379192))

(assert (= (and b!6379187 (not c!1162171)) b!6379188))

(assert (= (and d!2000318 res!2624029) b!6379183))

(assert (= (and b!6379183 c!1162174) b!6379189))

(assert (= (and b!6379183 (not c!1162174)) b!6379185))

(assert (= (and b!6379185 c!1162172) b!6379186))

(assert (= (and b!6379185 (not c!1162172)) b!6379190))

(declare-fun m!7180152 () Bool)

(assert (=> b!6379189 m!7180152))

(assert (=> b!6379185 m!7179956))

(declare-fun m!7180154 () Bool)

(assert (=> b!6379185 m!7180154))

(assert (=> b!6379185 m!7180154))

(declare-fun m!7180156 () Bool)

(assert (=> b!6379185 m!7180156))

(assert (=> b!6379183 m!7179956))

(declare-fun m!7180158 () Bool)

(assert (=> b!6379183 m!7180158))

(declare-fun m!7180160 () Bool)

(assert (=> b!6379192 m!7180160))

(assert (=> b!6379186 m!7179956))

(declare-fun m!7180162 () Bool)

(assert (=> b!6379186 m!7180162))

(declare-fun m!7180164 () Bool)

(assert (=> b!6379191 m!7180164))

(declare-fun m!7180166 () Bool)

(assert (=> b!6379190 m!7180166))

(declare-fun m!7180168 () Bool)

(assert (=> d!2000318 m!7180168))

(assert (=> d!2000318 m!7179956))

(declare-fun m!7180170 () Bool)

(assert (=> d!2000318 m!7180170))

(assert (=> b!6378984 d!2000318))

(declare-fun bs!1596948 () Bool)

(declare-fun d!2000320 () Bool)

(assert (= bs!1596948 (and d!2000320 d!2000288)))

(declare-fun lambda!351820 () Int)

(assert (=> bs!1596948 (= lambda!351820 lambda!351810)))

(declare-fun bs!1596949 () Bool)

(assert (= bs!1596949 (and d!2000320 d!2000316)))

(assert (=> bs!1596949 (= lambda!351820 lambda!351814)))

(declare-fun bs!1596950 () Bool)

(assert (= bs!1596950 (and d!2000320 d!2000318)))

(assert (=> bs!1596950 (= lambda!351820 lambda!351817)))

(declare-fun lt!2369958 () List!65175)

(assert (=> d!2000320 (forall!15470 lt!2369958 lambda!351820)))

(declare-fun e!3872508 () List!65175)

(assert (=> d!2000320 (= lt!2369958 e!3872508)))

(declare-fun c!1162177 () Bool)

(assert (=> d!2000320 (= c!1162177 (is-Cons!65052 zl!343))))

(assert (=> d!2000320 (= (unfocusZipperList!1713 zl!343) lt!2369958)))

(declare-fun b!6379197 () Bool)

(assert (=> b!6379197 (= e!3872508 (Cons!65051 (generalisedConcat!1889 (exprs!6176 (h!71500 zl!343))) (unfocusZipperList!1713 (t!378780 zl!343))))))

(declare-fun b!6379198 () Bool)

(assert (=> b!6379198 (= e!3872508 Nil!65051)))

(assert (= (and d!2000320 c!1162177) b!6379197))

(assert (= (and d!2000320 (not c!1162177)) b!6379198))

(declare-fun m!7180172 () Bool)

(assert (=> d!2000320 m!7180172))

(assert (=> b!6379197 m!7179962))

(declare-fun m!7180174 () Bool)

(assert (=> b!6379197 m!7180174))

(assert (=> b!6378984 d!2000320))

(declare-fun d!2000322 () Bool)

(declare-fun c!1162180 () Bool)

(declare-fun isEmpty!37181 (List!65177) Bool)

(assert (=> d!2000322 (= c!1162180 (isEmpty!37181 s!2326))))

(declare-fun e!3872511 () Bool)

(assert (=> d!2000322 (= (matchZipper!2304 lt!2369839 s!2326) e!3872511)))

(declare-fun b!6379203 () Bool)

(declare-fun nullableZipper!2057 ((Set Context!11352)) Bool)

(assert (=> b!6379203 (= e!3872511 (nullableZipper!2057 lt!2369839))))

(declare-fun b!6379204 () Bool)

(declare-fun head!13076 (List!65177) C!32854)

(declare-fun tail!12161 (List!65177) List!65177)

(assert (=> b!6379204 (= e!3872511 (matchZipper!2304 (derivationStepZipper!2258 lt!2369839 (head!13076 s!2326)) (tail!12161 s!2326)))))

(assert (= (and d!2000322 c!1162180) b!6379203))

(assert (= (and d!2000322 (not c!1162180)) b!6379204))

(declare-fun m!7180176 () Bool)

(assert (=> d!2000322 m!7180176))

(declare-fun m!7180178 () Bool)

(assert (=> b!6379203 m!7180178))

(declare-fun m!7180180 () Bool)

(assert (=> b!6379204 m!7180180))

(assert (=> b!6379204 m!7180180))

(declare-fun m!7180182 () Bool)

(assert (=> b!6379204 m!7180182))

(declare-fun m!7180184 () Bool)

(assert (=> b!6379204 m!7180184))

(assert (=> b!6379204 m!7180182))

(assert (=> b!6379204 m!7180184))

(declare-fun m!7180186 () Bool)

(assert (=> b!6379204 m!7180186))

(assert (=> b!6378973 d!2000322))

(declare-fun d!2000324 () Bool)

(declare-fun c!1162181 () Bool)

(assert (=> d!2000324 (= c!1162181 (isEmpty!37181 (t!378781 s!2326)))))

(declare-fun e!3872512 () Bool)

(assert (=> d!2000324 (= (matchZipper!2304 lt!2369826 (t!378781 s!2326)) e!3872512)))

(declare-fun b!6379205 () Bool)

(assert (=> b!6379205 (= e!3872512 (nullableZipper!2057 lt!2369826))))

(declare-fun b!6379206 () Bool)

(assert (=> b!6379206 (= e!3872512 (matchZipper!2304 (derivationStepZipper!2258 lt!2369826 (head!13076 (t!378781 s!2326))) (tail!12161 (t!378781 s!2326))))))

(assert (= (and d!2000324 c!1162181) b!6379205))

(assert (= (and d!2000324 (not c!1162181)) b!6379206))

(declare-fun m!7180188 () Bool)

(assert (=> d!2000324 m!7180188))

(declare-fun m!7180190 () Bool)

(assert (=> b!6379205 m!7180190))

(declare-fun m!7180192 () Bool)

(assert (=> b!6379206 m!7180192))

(assert (=> b!6379206 m!7180192))

(declare-fun m!7180194 () Bool)

(assert (=> b!6379206 m!7180194))

(declare-fun m!7180196 () Bool)

(assert (=> b!6379206 m!7180196))

(assert (=> b!6379206 m!7180194))

(assert (=> b!6379206 m!7180196))

(declare-fun m!7180198 () Bool)

(assert (=> b!6379206 m!7180198))

(assert (=> b!6378973 d!2000324))

(declare-fun d!2000326 () Bool)

(assert (=> d!2000326 (= (isEmpty!37177 (t!378779 (exprs!6176 (h!71500 zl!343)))) (is-Nil!65051 (t!378779 (exprs!6176 (h!71500 zl!343)))))))

(assert (=> b!6378975 d!2000326))

(declare-fun bm!545065 () Bool)

(declare-fun call!545072 () Bool)

(declare-fun call!545070 () Bool)

(assert (=> bm!545065 (= call!545072 call!545070)))

(declare-fun b!6379225 () Bool)

(declare-fun e!3872531 () Bool)

(assert (=> b!6379225 (= e!3872531 call!545072)))

(declare-fun b!6379226 () Bool)

(declare-fun e!3872528 () Bool)

(declare-fun e!3872530 () Bool)

(assert (=> b!6379226 (= e!3872528 e!3872530)))

(declare-fun c!1162186 () Bool)

(assert (=> b!6379226 (= c!1162186 (is-Union!16292 r!7292))))

(declare-fun b!6379227 () Bool)

(declare-fun res!2624042 () Bool)

(declare-fun e!3872532 () Bool)

(assert (=> b!6379227 (=> res!2624042 e!3872532)))

(assert (=> b!6379227 (= res!2624042 (not (is-Concat!25137 r!7292)))))

(assert (=> b!6379227 (= e!3872530 e!3872532)))

(declare-fun d!2000328 () Bool)

(declare-fun res!2624041 () Bool)

(declare-fun e!3872529 () Bool)

(assert (=> d!2000328 (=> res!2624041 e!3872529)))

(assert (=> d!2000328 (= res!2624041 (is-ElementMatch!16292 r!7292))))

(assert (=> d!2000328 (= (validRegex!8028 r!7292) e!3872529)))

(declare-fun b!6379228 () Bool)

(declare-fun e!3872533 () Bool)

(assert (=> b!6379228 (= e!3872533 call!545070)))

(declare-fun b!6379229 () Bool)

(assert (=> b!6379229 (= e!3872528 e!3872533)))

(declare-fun res!2624044 () Bool)

(assert (=> b!6379229 (= res!2624044 (not (nullable!6285 (reg!16621 r!7292))))))

(assert (=> b!6379229 (=> (not res!2624044) (not e!3872533))))

(declare-fun b!6379230 () Bool)

(declare-fun res!2624040 () Bool)

(declare-fun e!3872527 () Bool)

(assert (=> b!6379230 (=> (not res!2624040) (not e!3872527))))

(declare-fun call!545071 () Bool)

(assert (=> b!6379230 (= res!2624040 call!545071)))

(assert (=> b!6379230 (= e!3872530 e!3872527)))

(declare-fun b!6379231 () Bool)

(assert (=> b!6379231 (= e!3872527 call!545072)))

(declare-fun b!6379232 () Bool)

(assert (=> b!6379232 (= e!3872529 e!3872528)))

(declare-fun c!1162187 () Bool)

(assert (=> b!6379232 (= c!1162187 (is-Star!16292 r!7292))))

(declare-fun bm!545066 () Bool)

(assert (=> bm!545066 (= call!545070 (validRegex!8028 (ite c!1162187 (reg!16621 r!7292) (ite c!1162186 (regTwo!33097 r!7292) (regTwo!33096 r!7292)))))))

(declare-fun b!6379233 () Bool)

(assert (=> b!6379233 (= e!3872532 e!3872531)))

(declare-fun res!2624043 () Bool)

(assert (=> b!6379233 (=> (not res!2624043) (not e!3872531))))

(assert (=> b!6379233 (= res!2624043 call!545071)))

(declare-fun bm!545067 () Bool)

(assert (=> bm!545067 (= call!545071 (validRegex!8028 (ite c!1162186 (regOne!33097 r!7292) (regOne!33096 r!7292))))))

(assert (= (and d!2000328 (not res!2624041)) b!6379232))

(assert (= (and b!6379232 c!1162187) b!6379229))

(assert (= (and b!6379232 (not c!1162187)) b!6379226))

(assert (= (and b!6379229 res!2624044) b!6379228))

(assert (= (and b!6379226 c!1162186) b!6379230))

(assert (= (and b!6379226 (not c!1162186)) b!6379227))

(assert (= (and b!6379230 res!2624040) b!6379231))

(assert (= (and b!6379227 (not res!2624042)) b!6379233))

(assert (= (and b!6379233 res!2624043) b!6379225))

(assert (= (or b!6379231 b!6379225) bm!545065))

(assert (= (or b!6379230 b!6379233) bm!545067))

(assert (= (or b!6379228 bm!545065) bm!545066))

(declare-fun m!7180200 () Bool)

(assert (=> b!6379229 m!7180200))

(declare-fun m!7180202 () Bool)

(assert (=> bm!545066 m!7180202))

(declare-fun m!7180204 () Bool)

(assert (=> bm!545067 m!7180204))

(assert (=> start!631984 d!2000328))

(declare-fun bs!1596951 () Bool)

(declare-fun d!2000330 () Bool)

(assert (= bs!1596951 (and d!2000330 d!2000288)))

(declare-fun lambda!351823 () Int)

(assert (=> bs!1596951 (= lambda!351823 lambda!351810)))

(declare-fun bs!1596952 () Bool)

(assert (= bs!1596952 (and d!2000330 d!2000316)))

(assert (=> bs!1596952 (= lambda!351823 lambda!351814)))

(declare-fun bs!1596953 () Bool)

(assert (= bs!1596953 (and d!2000330 d!2000318)))

(assert (=> bs!1596953 (= lambda!351823 lambda!351817)))

(declare-fun bs!1596954 () Bool)

(assert (= bs!1596954 (and d!2000330 d!2000320)))

(assert (=> bs!1596954 (= lambda!351823 lambda!351820)))

(declare-fun b!6379254 () Bool)

(declare-fun e!3872550 () Bool)

(declare-fun lt!2369961 () Regex!16292)

(assert (=> b!6379254 (= e!3872550 (= lt!2369961 (head!13075 (exprs!6176 (h!71500 zl!343)))))))

(declare-fun b!6379255 () Bool)

(declare-fun e!3872546 () Regex!16292)

(declare-fun e!3872548 () Regex!16292)

(assert (=> b!6379255 (= e!3872546 e!3872548)))

(declare-fun c!1162199 () Bool)

(assert (=> b!6379255 (= c!1162199 (is-Cons!65051 (exprs!6176 (h!71500 zl!343))))))

(declare-fun b!6379256 () Bool)

(declare-fun e!3872551 () Bool)

(assert (=> b!6379256 (= e!3872551 e!3872550)))

(declare-fun c!1162196 () Bool)

(assert (=> b!6379256 (= c!1162196 (isEmpty!37177 (tail!12160 (exprs!6176 (h!71500 zl!343)))))))

(declare-fun b!6379257 () Bool)

(declare-fun isEmptyExpr!1693 (Regex!16292) Bool)

(assert (=> b!6379257 (= e!3872551 (isEmptyExpr!1693 lt!2369961))))

(declare-fun e!3872547 () Bool)

(assert (=> d!2000330 e!3872547))

(declare-fun res!2624049 () Bool)

(assert (=> d!2000330 (=> (not res!2624049) (not e!3872547))))

(assert (=> d!2000330 (= res!2624049 (validRegex!8028 lt!2369961))))

(assert (=> d!2000330 (= lt!2369961 e!3872546)))

(declare-fun c!1162198 () Bool)

(declare-fun e!3872549 () Bool)

(assert (=> d!2000330 (= c!1162198 e!3872549)))

(declare-fun res!2624050 () Bool)

(assert (=> d!2000330 (=> (not res!2624050) (not e!3872549))))

(assert (=> d!2000330 (= res!2624050 (is-Cons!65051 (exprs!6176 (h!71500 zl!343))))))

(assert (=> d!2000330 (forall!15470 (exprs!6176 (h!71500 zl!343)) lambda!351823)))

(assert (=> d!2000330 (= (generalisedConcat!1889 (exprs!6176 (h!71500 zl!343))) lt!2369961)))

(declare-fun b!6379258 () Bool)

(assert (=> b!6379258 (= e!3872548 (Concat!25137 (h!71499 (exprs!6176 (h!71500 zl!343))) (generalisedConcat!1889 (t!378779 (exprs!6176 (h!71500 zl!343))))))))

(declare-fun b!6379259 () Bool)

(assert (=> b!6379259 (= e!3872547 e!3872551)))

(declare-fun c!1162197 () Bool)

(assert (=> b!6379259 (= c!1162197 (isEmpty!37177 (exprs!6176 (h!71500 zl!343))))))

(declare-fun b!6379260 () Bool)

(declare-fun isConcat!1216 (Regex!16292) Bool)

(assert (=> b!6379260 (= e!3872550 (isConcat!1216 lt!2369961))))

(declare-fun b!6379261 () Bool)

(assert (=> b!6379261 (= e!3872549 (isEmpty!37177 (t!378779 (exprs!6176 (h!71500 zl!343)))))))

(declare-fun b!6379262 () Bool)

(assert (=> b!6379262 (= e!3872548 EmptyExpr!16292)))

(declare-fun b!6379263 () Bool)

(assert (=> b!6379263 (= e!3872546 (h!71499 (exprs!6176 (h!71500 zl!343))))))

(assert (= (and d!2000330 res!2624050) b!6379261))

(assert (= (and d!2000330 c!1162198) b!6379263))

(assert (= (and d!2000330 (not c!1162198)) b!6379255))

(assert (= (and b!6379255 c!1162199) b!6379258))

(assert (= (and b!6379255 (not c!1162199)) b!6379262))

(assert (= (and d!2000330 res!2624049) b!6379259))

(assert (= (and b!6379259 c!1162197) b!6379257))

(assert (= (and b!6379259 (not c!1162197)) b!6379256))

(assert (= (and b!6379256 c!1162196) b!6379254))

(assert (= (and b!6379256 (not c!1162196)) b!6379260))

(declare-fun m!7180206 () Bool)

(assert (=> b!6379254 m!7180206))

(declare-fun m!7180208 () Bool)

(assert (=> b!6379260 m!7180208))

(declare-fun m!7180210 () Bool)

(assert (=> b!6379256 m!7180210))

(assert (=> b!6379256 m!7180210))

(declare-fun m!7180212 () Bool)

(assert (=> b!6379256 m!7180212))

(assert (=> b!6379261 m!7179934))

(declare-fun m!7180214 () Bool)

(assert (=> b!6379259 m!7180214))

(declare-fun m!7180216 () Bool)

(assert (=> b!6379257 m!7180216))

(declare-fun m!7180218 () Bool)

(assert (=> d!2000330 m!7180218))

(declare-fun m!7180220 () Bool)

(assert (=> d!2000330 m!7180220))

(declare-fun m!7180222 () Bool)

(assert (=> b!6379258 m!7180222))

(assert (=> b!6378995 d!2000330))

(declare-fun b!6379292 () Bool)

(declare-fun res!2624073 () Bool)

(declare-fun e!3872567 () Bool)

(assert (=> b!6379292 (=> (not res!2624073) (not e!3872567))))

(declare-fun call!545075 () Bool)

(assert (=> b!6379292 (= res!2624073 (not call!545075))))

(declare-fun b!6379293 () Bool)

(assert (=> b!6379293 (= e!3872567 (= (head!13076 s!2326) (c!1162137 lt!2369836)))))

(declare-fun b!6379294 () Bool)

(declare-fun res!2624069 () Bool)

(assert (=> b!6379294 (=> (not res!2624069) (not e!3872567))))

(assert (=> b!6379294 (= res!2624069 (isEmpty!37181 (tail!12161 s!2326)))))

(declare-fun b!6379295 () Bool)

(declare-fun res!2624068 () Bool)

(declare-fun e!3872566 () Bool)

(assert (=> b!6379295 (=> res!2624068 e!3872566)))

(assert (=> b!6379295 (= res!2624068 (not (isEmpty!37181 (tail!12161 s!2326))))))

(declare-fun d!2000332 () Bool)

(declare-fun e!3872572 () Bool)

(assert (=> d!2000332 e!3872572))

(declare-fun c!1162207 () Bool)

(assert (=> d!2000332 (= c!1162207 (is-EmptyExpr!16292 lt!2369836))))

(declare-fun lt!2369964 () Bool)

(declare-fun e!3872571 () Bool)

(assert (=> d!2000332 (= lt!2369964 e!3872571)))

(declare-fun c!1162208 () Bool)

(assert (=> d!2000332 (= c!1162208 (isEmpty!37181 s!2326))))

(assert (=> d!2000332 (validRegex!8028 lt!2369836)))

(assert (=> d!2000332 (= (matchR!8475 lt!2369836 s!2326) lt!2369964)))

(declare-fun b!6379296 () Bool)

(declare-fun e!3872568 () Bool)

(assert (=> b!6379296 (= e!3872572 e!3872568)))

(declare-fun c!1162206 () Bool)

(assert (=> b!6379296 (= c!1162206 (is-EmptyLang!16292 lt!2369836))))

(declare-fun b!6379297 () Bool)

(assert (=> b!6379297 (= e!3872568 (not lt!2369964))))

(declare-fun b!6379298 () Bool)

(assert (=> b!6379298 (= e!3872572 (= lt!2369964 call!545075))))

(declare-fun b!6379299 () Bool)

(declare-fun e!3872569 () Bool)

(declare-fun e!3872570 () Bool)

(assert (=> b!6379299 (= e!3872569 e!3872570)))

(declare-fun res!2624071 () Bool)

(assert (=> b!6379299 (=> (not res!2624071) (not e!3872570))))

(assert (=> b!6379299 (= res!2624071 (not lt!2369964))))

(declare-fun b!6379300 () Bool)

(assert (=> b!6379300 (= e!3872570 e!3872566)))

(declare-fun res!2624074 () Bool)

(assert (=> b!6379300 (=> res!2624074 e!3872566)))

(assert (=> b!6379300 (= res!2624074 call!545075)))

(declare-fun bm!545070 () Bool)

(assert (=> bm!545070 (= call!545075 (isEmpty!37181 s!2326))))

(declare-fun b!6379301 () Bool)

(assert (=> b!6379301 (= e!3872566 (not (= (head!13076 s!2326) (c!1162137 lt!2369836))))))

(declare-fun b!6379302 () Bool)

(declare-fun derivativeStep!4996 (Regex!16292 C!32854) Regex!16292)

(assert (=> b!6379302 (= e!3872571 (matchR!8475 (derivativeStep!4996 lt!2369836 (head!13076 s!2326)) (tail!12161 s!2326)))))

(declare-fun b!6379303 () Bool)

(assert (=> b!6379303 (= e!3872571 (nullable!6285 lt!2369836))))

(declare-fun b!6379304 () Bool)

(declare-fun res!2624072 () Bool)

(assert (=> b!6379304 (=> res!2624072 e!3872569)))

(assert (=> b!6379304 (= res!2624072 (not (is-ElementMatch!16292 lt!2369836)))))

(assert (=> b!6379304 (= e!3872568 e!3872569)))

(declare-fun b!6379305 () Bool)

(declare-fun res!2624070 () Bool)

(assert (=> b!6379305 (=> res!2624070 e!3872569)))

(assert (=> b!6379305 (= res!2624070 e!3872567)))

(declare-fun res!2624067 () Bool)

(assert (=> b!6379305 (=> (not res!2624067) (not e!3872567))))

(assert (=> b!6379305 (= res!2624067 lt!2369964)))

(assert (= (and d!2000332 c!1162208) b!6379303))

(assert (= (and d!2000332 (not c!1162208)) b!6379302))

(assert (= (and d!2000332 c!1162207) b!6379298))

(assert (= (and d!2000332 (not c!1162207)) b!6379296))

(assert (= (and b!6379296 c!1162206) b!6379297))

(assert (= (and b!6379296 (not c!1162206)) b!6379304))

(assert (= (and b!6379304 (not res!2624072)) b!6379305))

(assert (= (and b!6379305 res!2624067) b!6379292))

(assert (= (and b!6379292 res!2624073) b!6379294))

(assert (= (and b!6379294 res!2624069) b!6379293))

(assert (= (and b!6379305 (not res!2624070)) b!6379299))

(assert (= (and b!6379299 res!2624071) b!6379300))

(assert (= (and b!6379300 (not res!2624074)) b!6379295))

(assert (= (and b!6379295 (not res!2624068)) b!6379301))

(assert (= (or b!6379298 b!6379292 b!6379300) bm!545070))

(assert (=> b!6379301 m!7180180))

(assert (=> d!2000332 m!7180176))

(declare-fun m!7180224 () Bool)

(assert (=> d!2000332 m!7180224))

(assert (=> bm!545070 m!7180176))

(assert (=> b!6379294 m!7180184))

(assert (=> b!6379294 m!7180184))

(declare-fun m!7180226 () Bool)

(assert (=> b!6379294 m!7180226))

(assert (=> b!6379302 m!7180180))

(assert (=> b!6379302 m!7180180))

(declare-fun m!7180228 () Bool)

(assert (=> b!6379302 m!7180228))

(assert (=> b!6379302 m!7180184))

(assert (=> b!6379302 m!7180228))

(assert (=> b!6379302 m!7180184))

(declare-fun m!7180230 () Bool)

(assert (=> b!6379302 m!7180230))

(declare-fun m!7180232 () Bool)

(assert (=> b!6379303 m!7180232))

(assert (=> b!6379293 m!7180180))

(assert (=> b!6379295 m!7180184))

(assert (=> b!6379295 m!7180184))

(assert (=> b!6379295 m!7180226))

(assert (=> b!6378985 d!2000332))

(declare-fun bs!1596955 () Bool)

(declare-fun b!6379347 () Bool)

(assert (= bs!1596955 (and b!6379347 b!6378974)))

(declare-fun lambda!351828 () Int)

(assert (=> bs!1596955 (not (= lambda!351828 lambda!351788))))

(assert (=> bs!1596955 (not (= lambda!351828 lambda!351789))))

(assert (=> b!6379347 true))

(assert (=> b!6379347 true))

(declare-fun bs!1596956 () Bool)

(declare-fun b!6379342 () Bool)

(assert (= bs!1596956 (and b!6379342 b!6378974)))

(declare-fun lambda!351829 () Int)

(assert (=> bs!1596956 (not (= lambda!351829 lambda!351788))))

(assert (=> bs!1596956 (= (and (= (regOne!33096 lt!2369836) (regOne!33096 r!7292)) (= (regTwo!33096 lt!2369836) (regTwo!33096 r!7292))) (= lambda!351829 lambda!351789))))

(declare-fun bs!1596957 () Bool)

(assert (= bs!1596957 (and b!6379342 b!6379347)))

(assert (=> bs!1596957 (not (= lambda!351829 lambda!351828))))

(assert (=> b!6379342 true))

(assert (=> b!6379342 true))

(declare-fun b!6379338 () Bool)

(declare-fun e!3872596 () Bool)

(declare-fun e!3872595 () Bool)

(assert (=> b!6379338 (= e!3872596 e!3872595)))

(declare-fun res!2624092 () Bool)

(assert (=> b!6379338 (= res!2624092 (not (is-EmptyLang!16292 lt!2369836)))))

(assert (=> b!6379338 (=> (not res!2624092) (not e!3872595))))

(declare-fun b!6379339 () Bool)

(declare-fun c!1162220 () Bool)

(assert (=> b!6379339 (= c!1162220 (is-Union!16292 lt!2369836))))

(declare-fun e!3872593 () Bool)

(declare-fun e!3872594 () Bool)

(assert (=> b!6379339 (= e!3872593 e!3872594)))

(declare-fun b!6379340 () Bool)

(assert (=> b!6379340 (= e!3872593 (= s!2326 (Cons!65053 (c!1162137 lt!2369836) Nil!65053)))))

(declare-fun b!6379341 () Bool)

(declare-fun c!1162219 () Bool)

(assert (=> b!6379341 (= c!1162219 (is-ElementMatch!16292 lt!2369836))))

(assert (=> b!6379341 (= e!3872595 e!3872593)))

(declare-fun e!3872597 () Bool)

(declare-fun call!545081 () Bool)

(assert (=> b!6379342 (= e!3872597 call!545081)))

(declare-fun bm!545075 () Bool)

(declare-fun c!1162217 () Bool)

(assert (=> bm!545075 (= call!545081 (Exists!3362 (ite c!1162217 lambda!351828 lambda!351829)))))

(declare-fun b!6379343 () Bool)

(declare-fun e!3872591 () Bool)

(assert (=> b!6379343 (= e!3872591 (matchRSpec!3393 (regTwo!33097 lt!2369836) s!2326))))

(declare-fun b!6379344 () Bool)

(assert (=> b!6379344 (= e!3872594 e!3872591)))

(declare-fun res!2624093 () Bool)

(assert (=> b!6379344 (= res!2624093 (matchRSpec!3393 (regOne!33097 lt!2369836) s!2326))))

(assert (=> b!6379344 (=> res!2624093 e!3872591)))

(declare-fun d!2000334 () Bool)

(declare-fun c!1162218 () Bool)

(assert (=> d!2000334 (= c!1162218 (is-EmptyExpr!16292 lt!2369836))))

(assert (=> d!2000334 (= (matchRSpec!3393 lt!2369836 s!2326) e!3872596)))

(declare-fun b!6379345 () Bool)

(declare-fun call!545080 () Bool)

(assert (=> b!6379345 (= e!3872596 call!545080)))

(declare-fun bm!545076 () Bool)

(assert (=> bm!545076 (= call!545080 (isEmpty!37181 s!2326))))

(declare-fun b!6379346 () Bool)

(assert (=> b!6379346 (= e!3872594 e!3872597)))

(assert (=> b!6379346 (= c!1162217 (is-Star!16292 lt!2369836))))

(declare-fun e!3872592 () Bool)

(assert (=> b!6379347 (= e!3872592 call!545081)))

(declare-fun b!6379348 () Bool)

(declare-fun res!2624091 () Bool)

(assert (=> b!6379348 (=> res!2624091 e!3872592)))

(assert (=> b!6379348 (= res!2624091 call!545080)))

(assert (=> b!6379348 (= e!3872597 e!3872592)))

(assert (= (and d!2000334 c!1162218) b!6379345))

(assert (= (and d!2000334 (not c!1162218)) b!6379338))

(assert (= (and b!6379338 res!2624092) b!6379341))

(assert (= (and b!6379341 c!1162219) b!6379340))

(assert (= (and b!6379341 (not c!1162219)) b!6379339))

(assert (= (and b!6379339 c!1162220) b!6379344))

(assert (= (and b!6379339 (not c!1162220)) b!6379346))

(assert (= (and b!6379344 (not res!2624093)) b!6379343))

(assert (= (and b!6379346 c!1162217) b!6379348))

(assert (= (and b!6379346 (not c!1162217)) b!6379342))

(assert (= (and b!6379348 (not res!2624091)) b!6379347))

(assert (= (or b!6379347 b!6379342) bm!545075))

(assert (= (or b!6379345 b!6379348) bm!545076))

(declare-fun m!7180234 () Bool)

(assert (=> bm!545075 m!7180234))

(declare-fun m!7180236 () Bool)

(assert (=> b!6379343 m!7180236))

(declare-fun m!7180238 () Bool)

(assert (=> b!6379344 m!7180238))

(assert (=> bm!545076 m!7180176))

(assert (=> b!6378985 d!2000334))

(declare-fun d!2000336 () Bool)

(assert (=> d!2000336 (= (matchR!8475 lt!2369836 s!2326) (matchRSpec!3393 lt!2369836 s!2326))))

(declare-fun lt!2369967 () Unit!158499)

(declare-fun choose!47433 (Regex!16292 List!65177) Unit!158499)

(assert (=> d!2000336 (= lt!2369967 (choose!47433 lt!2369836 s!2326))))

(assert (=> d!2000336 (validRegex!8028 lt!2369836)))

(assert (=> d!2000336 (= (mainMatchTheorem!3393 lt!2369836 s!2326) lt!2369967)))

(declare-fun bs!1596958 () Bool)

(assert (= bs!1596958 d!2000336))

(assert (=> bs!1596958 m!7179884))

(assert (=> bs!1596958 m!7179886))

(declare-fun m!7180240 () Bool)

(assert (=> bs!1596958 m!7180240))

(assert (=> bs!1596958 m!7180224))

(assert (=> b!6378985 d!2000336))

(declare-fun b!6379367 () Bool)

(declare-fun e!3872611 () Bool)

(declare-fun lt!2369976 () Option!16183)

(declare-fun ++!14360 (List!65177 List!65177) List!65177)

(declare-fun get!22522 (Option!16183) tuple2!66542)

(assert (=> b!6379367 (= e!3872611 (= (++!14360 (_1!36574 (get!22522 lt!2369976)) (_2!36574 (get!22522 lt!2369976))) s!2326))))

(declare-fun b!6379368 () Bool)

(declare-fun e!3872608 () Option!16183)

(declare-fun e!3872609 () Option!16183)

(assert (=> b!6379368 (= e!3872608 e!3872609)))

(declare-fun c!1162225 () Bool)

(assert (=> b!6379368 (= c!1162225 (is-Nil!65053 s!2326))))

(declare-fun b!6379369 () Bool)

(assert (=> b!6379369 (= e!3872608 (Some!16182 (tuple2!66543 Nil!65053 s!2326)))))

(declare-fun b!6379370 () Bool)

(declare-fun lt!2369974 () Unit!158499)

(declare-fun lt!2369975 () Unit!158499)

(assert (=> b!6379370 (= lt!2369974 lt!2369975)))

(assert (=> b!6379370 (= (++!14360 (++!14360 Nil!65053 (Cons!65053 (h!71501 s!2326) Nil!65053)) (t!378781 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2455 (List!65177 C!32854 List!65177 List!65177) Unit!158499)

(assert (=> b!6379370 (= lt!2369975 (lemmaMoveElementToOtherListKeepsConcatEq!2455 Nil!65053 (h!71501 s!2326) (t!378781 s!2326) s!2326))))

(assert (=> b!6379370 (= e!3872609 (findConcatSeparation!2597 (regOne!33096 r!7292) (regTwo!33096 r!7292) (++!14360 Nil!65053 (Cons!65053 (h!71501 s!2326) Nil!65053)) (t!378781 s!2326) s!2326))))

(declare-fun b!6379371 () Bool)

(declare-fun res!2624106 () Bool)

(assert (=> b!6379371 (=> (not res!2624106) (not e!3872611))))

(assert (=> b!6379371 (= res!2624106 (matchR!8475 (regOne!33096 r!7292) (_1!36574 (get!22522 lt!2369976))))))

(declare-fun d!2000338 () Bool)

(declare-fun e!3872610 () Bool)

(assert (=> d!2000338 e!3872610))

(declare-fun res!2624104 () Bool)

(assert (=> d!2000338 (=> res!2624104 e!3872610)))

(assert (=> d!2000338 (= res!2624104 e!3872611)))

(declare-fun res!2624107 () Bool)

(assert (=> d!2000338 (=> (not res!2624107) (not e!3872611))))

(assert (=> d!2000338 (= res!2624107 (isDefined!12886 lt!2369976))))

(assert (=> d!2000338 (= lt!2369976 e!3872608)))

(declare-fun c!1162226 () Bool)

(declare-fun e!3872612 () Bool)

(assert (=> d!2000338 (= c!1162226 e!3872612)))

(declare-fun res!2624105 () Bool)

(assert (=> d!2000338 (=> (not res!2624105) (not e!3872612))))

(assert (=> d!2000338 (= res!2624105 (matchR!8475 (regOne!33096 r!7292) Nil!65053))))

(assert (=> d!2000338 (validRegex!8028 (regOne!33096 r!7292))))

(assert (=> d!2000338 (= (findConcatSeparation!2597 (regOne!33096 r!7292) (regTwo!33096 r!7292) Nil!65053 s!2326 s!2326) lt!2369976)))

(declare-fun b!6379372 () Bool)

(assert (=> b!6379372 (= e!3872610 (not (isDefined!12886 lt!2369976)))))

(declare-fun b!6379373 () Bool)

(assert (=> b!6379373 (= e!3872612 (matchR!8475 (regTwo!33096 r!7292) s!2326))))

(declare-fun b!6379374 () Bool)

(assert (=> b!6379374 (= e!3872609 None!16182)))

(declare-fun b!6379375 () Bool)

(declare-fun res!2624108 () Bool)

(assert (=> b!6379375 (=> (not res!2624108) (not e!3872611))))

(assert (=> b!6379375 (= res!2624108 (matchR!8475 (regTwo!33096 r!7292) (_2!36574 (get!22522 lt!2369976))))))

(assert (= (and d!2000338 res!2624105) b!6379373))

(assert (= (and d!2000338 c!1162226) b!6379369))

(assert (= (and d!2000338 (not c!1162226)) b!6379368))

(assert (= (and b!6379368 c!1162225) b!6379374))

(assert (= (and b!6379368 (not c!1162225)) b!6379370))

(assert (= (and d!2000338 res!2624107) b!6379371))

(assert (= (and b!6379371 res!2624106) b!6379375))

(assert (= (and b!6379375 res!2624108) b!6379367))

(assert (= (and d!2000338 (not res!2624104)) b!6379372))

(declare-fun m!7180242 () Bool)

(assert (=> b!6379370 m!7180242))

(assert (=> b!6379370 m!7180242))

(declare-fun m!7180244 () Bool)

(assert (=> b!6379370 m!7180244))

(declare-fun m!7180246 () Bool)

(assert (=> b!6379370 m!7180246))

(assert (=> b!6379370 m!7180242))

(declare-fun m!7180248 () Bool)

(assert (=> b!6379370 m!7180248))

(declare-fun m!7180250 () Bool)

(assert (=> b!6379367 m!7180250))

(declare-fun m!7180252 () Bool)

(assert (=> b!6379367 m!7180252))

(declare-fun m!7180254 () Bool)

(assert (=> d!2000338 m!7180254))

(declare-fun m!7180256 () Bool)

(assert (=> d!2000338 m!7180256))

(declare-fun m!7180258 () Bool)

(assert (=> d!2000338 m!7180258))

(assert (=> b!6379372 m!7180254))

(assert (=> b!6379375 m!7180250))

(declare-fun m!7180260 () Bool)

(assert (=> b!6379375 m!7180260))

(declare-fun m!7180262 () Bool)

(assert (=> b!6379373 m!7180262))

(assert (=> b!6379371 m!7180250))

(declare-fun m!7180264 () Bool)

(assert (=> b!6379371 m!7180264))

(assert (=> b!6378974 d!2000338))

(declare-fun bs!1596959 () Bool)

(declare-fun d!2000340 () Bool)

(assert (= bs!1596959 (and d!2000340 b!6378974)))

(declare-fun lambda!351832 () Int)

(assert (=> bs!1596959 (= lambda!351832 lambda!351788)))

(assert (=> bs!1596959 (not (= lambda!351832 lambda!351789))))

(declare-fun bs!1596960 () Bool)

(assert (= bs!1596960 (and d!2000340 b!6379347)))

(assert (=> bs!1596960 (not (= lambda!351832 lambda!351828))))

(declare-fun bs!1596961 () Bool)

(assert (= bs!1596961 (and d!2000340 b!6379342)))

(assert (=> bs!1596961 (not (= lambda!351832 lambda!351829))))

(assert (=> d!2000340 true))

(assert (=> d!2000340 true))

(assert (=> d!2000340 true))

(assert (=> d!2000340 (= (isDefined!12886 (findConcatSeparation!2597 (regOne!33096 r!7292) (regTwo!33096 r!7292) Nil!65053 s!2326 s!2326)) (Exists!3362 lambda!351832))))

(declare-fun lt!2369979 () Unit!158499)

(declare-fun choose!47434 (Regex!16292 Regex!16292 List!65177) Unit!158499)

(assert (=> d!2000340 (= lt!2369979 (choose!47434 (regOne!33096 r!7292) (regTwo!33096 r!7292) s!2326))))

(assert (=> d!2000340 (validRegex!8028 (regOne!33096 r!7292))))

(assert (=> d!2000340 (= (lemmaFindConcatSeparationEquivalentToExists!2361 (regOne!33096 r!7292) (regTwo!33096 r!7292) s!2326) lt!2369979)))

(declare-fun bs!1596962 () Bool)

(assert (= bs!1596962 d!2000340))

(assert (=> bs!1596962 m!7179972))

(assert (=> bs!1596962 m!7179974))

(assert (=> bs!1596962 m!7180258))

(declare-fun m!7180266 () Bool)

(assert (=> bs!1596962 m!7180266))

(assert (=> bs!1596962 m!7179972))

(declare-fun m!7180268 () Bool)

(assert (=> bs!1596962 m!7180268))

(assert (=> b!6378974 d!2000340))

(declare-fun bs!1596963 () Bool)

(declare-fun d!2000342 () Bool)

(assert (= bs!1596963 (and d!2000342 b!6379347)))

(declare-fun lambda!351837 () Int)

(assert (=> bs!1596963 (not (= lambda!351837 lambda!351828))))

(declare-fun bs!1596964 () Bool)

(assert (= bs!1596964 (and d!2000342 b!6378974)))

(assert (=> bs!1596964 (= lambda!351837 lambda!351788)))

(assert (=> bs!1596964 (not (= lambda!351837 lambda!351789))))

(declare-fun bs!1596965 () Bool)

(assert (= bs!1596965 (and d!2000342 d!2000340)))

(assert (=> bs!1596965 (= lambda!351837 lambda!351832)))

(declare-fun bs!1596966 () Bool)

(assert (= bs!1596966 (and d!2000342 b!6379342)))

(assert (=> bs!1596966 (not (= lambda!351837 lambda!351829))))

(assert (=> d!2000342 true))

(assert (=> d!2000342 true))

(assert (=> d!2000342 true))

(declare-fun lambda!351838 () Int)

(assert (=> bs!1596963 (not (= lambda!351838 lambda!351828))))

(assert (=> bs!1596964 (not (= lambda!351838 lambda!351788))))

(assert (=> bs!1596964 (= lambda!351838 lambda!351789)))

(assert (=> bs!1596965 (not (= lambda!351838 lambda!351832))))

(declare-fun bs!1596967 () Bool)

(assert (= bs!1596967 d!2000342))

(assert (=> bs!1596967 (not (= lambda!351838 lambda!351837))))

(assert (=> bs!1596966 (= (and (= (regOne!33096 r!7292) (regOne!33096 lt!2369836)) (= (regTwo!33096 r!7292) (regTwo!33096 lt!2369836))) (= lambda!351838 lambda!351829))))

(assert (=> d!2000342 true))

(assert (=> d!2000342 true))

(assert (=> d!2000342 true))

(assert (=> d!2000342 (= (Exists!3362 lambda!351837) (Exists!3362 lambda!351838))))

(declare-fun lt!2369982 () Unit!158499)

(declare-fun choose!47435 (Regex!16292 Regex!16292 List!65177) Unit!158499)

(assert (=> d!2000342 (= lt!2369982 (choose!47435 (regOne!33096 r!7292) (regTwo!33096 r!7292) s!2326))))

(assert (=> d!2000342 (validRegex!8028 (regOne!33096 r!7292))))

(assert (=> d!2000342 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1899 (regOne!33096 r!7292) (regTwo!33096 r!7292) s!2326) lt!2369982)))

(declare-fun m!7180270 () Bool)

(assert (=> bs!1596967 m!7180270))

(declare-fun m!7180272 () Bool)

(assert (=> bs!1596967 m!7180272))

(declare-fun m!7180274 () Bool)

(assert (=> bs!1596967 m!7180274))

(assert (=> bs!1596967 m!7180258))

(assert (=> b!6378974 d!2000342))

(declare-fun d!2000344 () Bool)

(declare-fun isEmpty!37182 (Option!16183) Bool)

(assert (=> d!2000344 (= (isDefined!12886 (findConcatSeparation!2597 (regOne!33096 r!7292) (regTwo!33096 r!7292) Nil!65053 s!2326 s!2326)) (not (isEmpty!37182 (findConcatSeparation!2597 (regOne!33096 r!7292) (regTwo!33096 r!7292) Nil!65053 s!2326 s!2326))))))

(declare-fun bs!1596968 () Bool)

(assert (= bs!1596968 d!2000344))

(assert (=> bs!1596968 m!7179972))

(declare-fun m!7180276 () Bool)

(assert (=> bs!1596968 m!7180276))

(assert (=> b!6378974 d!2000344))

(declare-fun d!2000346 () Bool)

(declare-fun choose!47436 (Int) Bool)

(assert (=> d!2000346 (= (Exists!3362 lambda!351789) (choose!47436 lambda!351789))))

(declare-fun bs!1596969 () Bool)

(assert (= bs!1596969 d!2000346))

(declare-fun m!7180278 () Bool)

(assert (=> bs!1596969 m!7180278))

(assert (=> b!6378974 d!2000346))

(declare-fun d!2000348 () Bool)

(assert (=> d!2000348 (= (Exists!3362 lambda!351788) (choose!47436 lambda!351788))))

(declare-fun bs!1596970 () Bool)

(assert (= bs!1596970 d!2000348))

(declare-fun m!7180280 () Bool)

(assert (=> bs!1596970 m!7180280))

(assert (=> b!6378974 d!2000348))

(declare-fun d!2000350 () Bool)

(declare-fun c!1162227 () Bool)

(assert (=> d!2000350 (= c!1162227 (isEmpty!37181 (t!378781 s!2326)))))

(declare-fun e!3872619 () Bool)

(assert (=> d!2000350 (= (matchZipper!2304 lt!2369814 (t!378781 s!2326)) e!3872619)))

(declare-fun b!6379388 () Bool)

(assert (=> b!6379388 (= e!3872619 (nullableZipper!2057 lt!2369814))))

(declare-fun b!6379389 () Bool)

(assert (=> b!6379389 (= e!3872619 (matchZipper!2304 (derivationStepZipper!2258 lt!2369814 (head!13076 (t!378781 s!2326))) (tail!12161 (t!378781 s!2326))))))

(assert (= (and d!2000350 c!1162227) b!6379388))

(assert (= (and d!2000350 (not c!1162227)) b!6379389))

(assert (=> d!2000350 m!7180188))

(declare-fun m!7180282 () Bool)

(assert (=> b!6379388 m!7180282))

(assert (=> b!6379389 m!7180192))

(assert (=> b!6379389 m!7180192))

(declare-fun m!7180284 () Bool)

(assert (=> b!6379389 m!7180284))

(assert (=> b!6379389 m!7180196))

(assert (=> b!6379389 m!7180284))

(assert (=> b!6379389 m!7180196))

(declare-fun m!7180286 () Bool)

(assert (=> b!6379389 m!7180286))

(assert (=> b!6378976 d!2000350))

(declare-fun d!2000352 () Bool)

(assert (=> d!2000352 (= (flatMap!1797 z!1189 lambda!351790) (choose!47431 z!1189 lambda!351790))))

(declare-fun bs!1596971 () Bool)

(assert (= bs!1596971 d!2000352))

(declare-fun m!7180288 () Bool)

(assert (=> bs!1596971 m!7180288))

(assert (=> b!6378996 d!2000352))

(declare-fun d!2000354 () Bool)

(assert (=> d!2000354 (= (flatMap!1797 z!1189 lambda!351790) (dynLambda!25810 lambda!351790 (h!71500 zl!343)))))

(declare-fun lt!2369983 () Unit!158499)

(assert (=> d!2000354 (= lt!2369983 (choose!47432 z!1189 (h!71500 zl!343) lambda!351790))))

(assert (=> d!2000354 (= z!1189 (set.insert (h!71500 zl!343) (as set.empty (Set Context!11352))))))

(assert (=> d!2000354 (= (lemmaFlatMapOnSingletonSet!1323 z!1189 (h!71500 zl!343) lambda!351790) lt!2369983)))

(declare-fun b_lambda!242427 () Bool)

(assert (=> (not b_lambda!242427) (not d!2000354)))

(declare-fun bs!1596972 () Bool)

(assert (= bs!1596972 d!2000354))

(assert (=> bs!1596972 m!7179902))

(declare-fun m!7180290 () Bool)

(assert (=> bs!1596972 m!7180290))

(declare-fun m!7180292 () Bool)

(assert (=> bs!1596972 m!7180292))

(declare-fun m!7180294 () Bool)

(assert (=> bs!1596972 m!7180294))

(assert (=> b!6378996 d!2000354))

(declare-fun d!2000356 () Bool)

(declare-fun nullableFct!2231 (Regex!16292) Bool)

(assert (=> d!2000356 (= (nullable!6285 (h!71499 (exprs!6176 (h!71500 zl!343)))) (nullableFct!2231 (h!71499 (exprs!6176 (h!71500 zl!343)))))))

(declare-fun bs!1596973 () Bool)

(assert (= bs!1596973 d!2000356))

(declare-fun m!7180296 () Bool)

(assert (=> bs!1596973 m!7180296))

(assert (=> b!6378996 d!2000356))

(declare-fun b!6379390 () Bool)

(declare-fun e!3872622 () Bool)

(assert (=> b!6379390 (= e!3872622 (nullable!6285 (h!71499 (exprs!6176 (Context!11353 (Cons!65051 (h!71499 (exprs!6176 (h!71500 zl!343))) (t!378779 (exprs!6176 (h!71500 zl!343)))))))))))

(declare-fun b!6379391 () Bool)

(declare-fun call!545082 () (Set Context!11352))

(declare-fun e!3872620 () (Set Context!11352))

(assert (=> b!6379391 (= e!3872620 (set.union call!545082 (derivationStepZipperUp!1466 (Context!11353 (t!378779 (exprs!6176 (Context!11353 (Cons!65051 (h!71499 (exprs!6176 (h!71500 zl!343))) (t!378779 (exprs!6176 (h!71500 zl!343)))))))) (h!71501 s!2326))))))

(declare-fun b!6379392 () Bool)

(declare-fun e!3872621 () (Set Context!11352))

(assert (=> b!6379392 (= e!3872620 e!3872621)))

(declare-fun c!1162228 () Bool)

(assert (=> b!6379392 (= c!1162228 (is-Cons!65051 (exprs!6176 (Context!11353 (Cons!65051 (h!71499 (exprs!6176 (h!71500 zl!343))) (t!378779 (exprs!6176 (h!71500 zl!343))))))))))

(declare-fun b!6379393 () Bool)

(assert (=> b!6379393 (= e!3872621 (as set.empty (Set Context!11352)))))

(declare-fun d!2000358 () Bool)

(declare-fun c!1162229 () Bool)

(assert (=> d!2000358 (= c!1162229 e!3872622)))

(declare-fun res!2624121 () Bool)

(assert (=> d!2000358 (=> (not res!2624121) (not e!3872622))))

(assert (=> d!2000358 (= res!2624121 (is-Cons!65051 (exprs!6176 (Context!11353 (Cons!65051 (h!71499 (exprs!6176 (h!71500 zl!343))) (t!378779 (exprs!6176 (h!71500 zl!343))))))))))

(assert (=> d!2000358 (= (derivationStepZipperUp!1466 (Context!11353 (Cons!65051 (h!71499 (exprs!6176 (h!71500 zl!343))) (t!378779 (exprs!6176 (h!71500 zl!343))))) (h!71501 s!2326)) e!3872620)))

(declare-fun b!6379394 () Bool)

(assert (=> b!6379394 (= e!3872621 call!545082)))

(declare-fun bm!545077 () Bool)

(assert (=> bm!545077 (= call!545082 (derivationStepZipperDown!1540 (h!71499 (exprs!6176 (Context!11353 (Cons!65051 (h!71499 (exprs!6176 (h!71500 zl!343))) (t!378779 (exprs!6176 (h!71500 zl!343))))))) (Context!11353 (t!378779 (exprs!6176 (Context!11353 (Cons!65051 (h!71499 (exprs!6176 (h!71500 zl!343))) (t!378779 (exprs!6176 (h!71500 zl!343)))))))) (h!71501 s!2326)))))

(assert (= (and d!2000358 res!2624121) b!6379390))

(assert (= (and d!2000358 c!1162229) b!6379391))

(assert (= (and d!2000358 (not c!1162229)) b!6379392))

(assert (= (and b!6379392 c!1162228) b!6379394))

(assert (= (and b!6379392 (not c!1162228)) b!6379393))

(assert (= (or b!6379391 b!6379394) bm!545077))

(declare-fun m!7180298 () Bool)

(assert (=> b!6379390 m!7180298))

(declare-fun m!7180300 () Bool)

(assert (=> b!6379391 m!7180300))

(declare-fun m!7180302 () Bool)

(assert (=> bm!545077 m!7180302))

(assert (=> b!6378996 d!2000358))

(declare-fun b!6379395 () Bool)

(declare-fun e!3872625 () Bool)

(assert (=> b!6379395 (= e!3872625 (nullable!6285 (h!71499 (exprs!6176 (h!71500 zl!343)))))))

(declare-fun call!545083 () (Set Context!11352))

(declare-fun e!3872623 () (Set Context!11352))

(declare-fun b!6379396 () Bool)

(assert (=> b!6379396 (= e!3872623 (set.union call!545083 (derivationStepZipperUp!1466 (Context!11353 (t!378779 (exprs!6176 (h!71500 zl!343)))) (h!71501 s!2326))))))

(declare-fun b!6379397 () Bool)

(declare-fun e!3872624 () (Set Context!11352))

(assert (=> b!6379397 (= e!3872623 e!3872624)))

(declare-fun c!1162230 () Bool)

(assert (=> b!6379397 (= c!1162230 (is-Cons!65051 (exprs!6176 (h!71500 zl!343))))))

(declare-fun b!6379398 () Bool)

(assert (=> b!6379398 (= e!3872624 (as set.empty (Set Context!11352)))))

(declare-fun d!2000360 () Bool)

(declare-fun c!1162231 () Bool)

(assert (=> d!2000360 (= c!1162231 e!3872625)))

(declare-fun res!2624122 () Bool)

(assert (=> d!2000360 (=> (not res!2624122) (not e!3872625))))

(assert (=> d!2000360 (= res!2624122 (is-Cons!65051 (exprs!6176 (h!71500 zl!343))))))

(assert (=> d!2000360 (= (derivationStepZipperUp!1466 (h!71500 zl!343) (h!71501 s!2326)) e!3872623)))

(declare-fun b!6379399 () Bool)

(assert (=> b!6379399 (= e!3872624 call!545083)))

(declare-fun bm!545078 () Bool)

(assert (=> bm!545078 (= call!545083 (derivationStepZipperDown!1540 (h!71499 (exprs!6176 (h!71500 zl!343))) (Context!11353 (t!378779 (exprs!6176 (h!71500 zl!343)))) (h!71501 s!2326)))))

(assert (= (and d!2000360 res!2624122) b!6379395))

(assert (= (and d!2000360 c!1162231) b!6379396))

(assert (= (and d!2000360 (not c!1162231)) b!6379397))

(assert (= (and b!6379397 c!1162230) b!6379399))

(assert (= (and b!6379397 (not c!1162230)) b!6379398))

(assert (= (or b!6379396 b!6379399) bm!545078))

(assert (=> b!6379395 m!7179904))

(declare-fun m!7180304 () Bool)

(assert (=> b!6379396 m!7180304))

(declare-fun m!7180306 () Bool)

(assert (=> bm!545078 m!7180306))

(assert (=> b!6378996 d!2000360))

(declare-fun b!6379422 () Bool)

(declare-fun e!3872643 () (Set Context!11352))

(declare-fun call!545096 () (Set Context!11352))

(assert (=> b!6379422 (= e!3872643 call!545096)))

(declare-fun c!1162242 () Bool)

(declare-fun c!1162243 () Bool)

(declare-fun call!545097 () List!65175)

(declare-fun c!1162245 () Bool)

(declare-fun call!545098 () (Set Context!11352))

(declare-fun bm!545091 () Bool)

(assert (=> bm!545091 (= call!545098 (derivationStepZipperDown!1540 (ite c!1162243 (regOne!33097 (h!71499 (exprs!6176 (h!71500 zl!343)))) (ite c!1162242 (regTwo!33096 (h!71499 (exprs!6176 (h!71500 zl!343)))) (ite c!1162245 (regOne!33096 (h!71499 (exprs!6176 (h!71500 zl!343)))) (reg!16621 (h!71499 (exprs!6176 (h!71500 zl!343))))))) (ite (or c!1162243 c!1162242) lt!2369825 (Context!11353 call!545097)) (h!71501 s!2326)))))

(declare-fun bm!545092 () Bool)

(declare-fun call!545099 () List!65175)

(assert (=> bm!545092 (= call!545097 call!545099)))

(declare-fun d!2000362 () Bool)

(declare-fun c!1162246 () Bool)

(assert (=> d!2000362 (= c!1162246 (and (is-ElementMatch!16292 (h!71499 (exprs!6176 (h!71500 zl!343)))) (= (c!1162137 (h!71499 (exprs!6176 (h!71500 zl!343)))) (h!71501 s!2326))))))

(declare-fun e!3872640 () (Set Context!11352))

(assert (=> d!2000362 (= (derivationStepZipperDown!1540 (h!71499 (exprs!6176 (h!71500 zl!343))) lt!2369825 (h!71501 s!2326)) e!3872640)))

(declare-fun b!6379423 () Bool)

(assert (=> b!6379423 (= e!3872643 (as set.empty (Set Context!11352)))))

(declare-fun b!6379424 () Bool)

(assert (=> b!6379424 (= e!3872640 (set.insert lt!2369825 (as set.empty (Set Context!11352))))))

(declare-fun bm!545093 () Bool)

(declare-fun $colon$colon!2153 (List!65175 Regex!16292) List!65175)

(assert (=> bm!545093 (= call!545099 ($colon$colon!2153 (exprs!6176 lt!2369825) (ite (or c!1162242 c!1162245) (regTwo!33096 (h!71499 (exprs!6176 (h!71500 zl!343)))) (h!71499 (exprs!6176 (h!71500 zl!343))))))))

(declare-fun b!6379425 () Bool)

(declare-fun e!3872642 () (Set Context!11352))

(assert (=> b!6379425 (= e!3872642 call!545096)))

(declare-fun b!6379426 () Bool)

(declare-fun e!3872639 () (Set Context!11352))

(assert (=> b!6379426 (= e!3872639 e!3872642)))

(assert (=> b!6379426 (= c!1162245 (is-Concat!25137 (h!71499 (exprs!6176 (h!71500 zl!343)))))))

(declare-fun b!6379427 () Bool)

(declare-fun c!1162244 () Bool)

(assert (=> b!6379427 (= c!1162244 (is-Star!16292 (h!71499 (exprs!6176 (h!71500 zl!343)))))))

(assert (=> b!6379427 (= e!3872642 e!3872643)))

(declare-fun b!6379428 () Bool)

(declare-fun e!3872641 () (Set Context!11352))

(declare-fun call!545100 () (Set Context!11352))

(assert (=> b!6379428 (= e!3872641 (set.union call!545098 call!545100))))

(declare-fun bm!545094 () Bool)

(assert (=> bm!545094 (= call!545100 (derivationStepZipperDown!1540 (ite c!1162243 (regTwo!33097 (h!71499 (exprs!6176 (h!71500 zl!343)))) (regOne!33096 (h!71499 (exprs!6176 (h!71500 zl!343))))) (ite c!1162243 lt!2369825 (Context!11353 call!545099)) (h!71501 s!2326)))))

(declare-fun bm!545095 () Bool)

(declare-fun call!545101 () (Set Context!11352))

(assert (=> bm!545095 (= call!545096 call!545101)))

(declare-fun b!6379429 () Bool)

(declare-fun e!3872638 () Bool)

(assert (=> b!6379429 (= e!3872638 (nullable!6285 (regOne!33096 (h!71499 (exprs!6176 (h!71500 zl!343))))))))

(declare-fun b!6379430 () Bool)

(assert (=> b!6379430 (= c!1162242 e!3872638)))

(declare-fun res!2624125 () Bool)

(assert (=> b!6379430 (=> (not res!2624125) (not e!3872638))))

(assert (=> b!6379430 (= res!2624125 (is-Concat!25137 (h!71499 (exprs!6176 (h!71500 zl!343)))))))

(assert (=> b!6379430 (= e!3872641 e!3872639)))

(declare-fun b!6379431 () Bool)

(assert (=> b!6379431 (= e!3872640 e!3872641)))

(assert (=> b!6379431 (= c!1162243 (is-Union!16292 (h!71499 (exprs!6176 (h!71500 zl!343)))))))

(declare-fun b!6379432 () Bool)

(assert (=> b!6379432 (= e!3872639 (set.union call!545100 call!545101))))

(declare-fun bm!545096 () Bool)

(assert (=> bm!545096 (= call!545101 call!545098)))

(assert (= (and d!2000362 c!1162246) b!6379424))

(assert (= (and d!2000362 (not c!1162246)) b!6379431))

(assert (= (and b!6379431 c!1162243) b!6379428))

(assert (= (and b!6379431 (not c!1162243)) b!6379430))

(assert (= (and b!6379430 res!2624125) b!6379429))

(assert (= (and b!6379430 c!1162242) b!6379432))

(assert (= (and b!6379430 (not c!1162242)) b!6379426))

(assert (= (and b!6379426 c!1162245) b!6379425))

(assert (= (and b!6379426 (not c!1162245)) b!6379427))

(assert (= (and b!6379427 c!1162244) b!6379422))

(assert (= (and b!6379427 (not c!1162244)) b!6379423))

(assert (= (or b!6379425 b!6379422) bm!545092))

(assert (= (or b!6379425 b!6379422) bm!545095))

(assert (= (or b!6379432 bm!545092) bm!545093))

(assert (= (or b!6379432 bm!545095) bm!545096))

(assert (= (or b!6379428 b!6379432) bm!545094))

(assert (= (or b!6379428 bm!545096) bm!545091))

(declare-fun m!7180308 () Bool)

(assert (=> bm!545091 m!7180308))

(declare-fun m!7180310 () Bool)

(assert (=> bm!545094 m!7180310))

(declare-fun m!7180312 () Bool)

(assert (=> b!6379429 m!7180312))

(declare-fun m!7180314 () Bool)

(assert (=> bm!545093 m!7180314))

(declare-fun m!7180316 () Bool)

(assert (=> b!6379424 m!7180316))

(assert (=> b!6378996 d!2000362))

(declare-fun b!6379433 () Bool)

(declare-fun e!3872646 () Bool)

(assert (=> b!6379433 (= e!3872646 (nullable!6285 (h!71499 (exprs!6176 lt!2369825))))))

(declare-fun e!3872644 () (Set Context!11352))

(declare-fun call!545102 () (Set Context!11352))

(declare-fun b!6379434 () Bool)

(assert (=> b!6379434 (= e!3872644 (set.union call!545102 (derivationStepZipperUp!1466 (Context!11353 (t!378779 (exprs!6176 lt!2369825))) (h!71501 s!2326))))))

(declare-fun b!6379435 () Bool)

(declare-fun e!3872645 () (Set Context!11352))

(assert (=> b!6379435 (= e!3872644 e!3872645)))

(declare-fun c!1162247 () Bool)

(assert (=> b!6379435 (= c!1162247 (is-Cons!65051 (exprs!6176 lt!2369825)))))

(declare-fun b!6379436 () Bool)

(assert (=> b!6379436 (= e!3872645 (as set.empty (Set Context!11352)))))

(declare-fun d!2000364 () Bool)

(declare-fun c!1162248 () Bool)

(assert (=> d!2000364 (= c!1162248 e!3872646)))

(declare-fun res!2624126 () Bool)

(assert (=> d!2000364 (=> (not res!2624126) (not e!3872646))))

(assert (=> d!2000364 (= res!2624126 (is-Cons!65051 (exprs!6176 lt!2369825)))))

(assert (=> d!2000364 (= (derivationStepZipperUp!1466 lt!2369825 (h!71501 s!2326)) e!3872644)))

(declare-fun b!6379437 () Bool)

(assert (=> b!6379437 (= e!3872645 call!545102)))

(declare-fun bm!545097 () Bool)

(assert (=> bm!545097 (= call!545102 (derivationStepZipperDown!1540 (h!71499 (exprs!6176 lt!2369825)) (Context!11353 (t!378779 (exprs!6176 lt!2369825))) (h!71501 s!2326)))))

(assert (= (and d!2000364 res!2624126) b!6379433))

(assert (= (and d!2000364 c!1162248) b!6379434))

(assert (= (and d!2000364 (not c!1162248)) b!6379435))

(assert (= (and b!6379435 c!1162247) b!6379437))

(assert (= (and b!6379435 (not c!1162247)) b!6379436))

(assert (= (or b!6379434 b!6379437) bm!545097))

(declare-fun m!7180318 () Bool)

(assert (=> b!6379433 m!7180318))

(declare-fun m!7180320 () Bool)

(assert (=> b!6379434 m!7180320))

(declare-fun m!7180322 () Bool)

(assert (=> bm!545097 m!7180322))

(assert (=> b!6378996 d!2000364))

(declare-fun d!2000366 () Bool)

(assert (=> d!2000366 (= (nullable!6285 (regOne!33096 (regOne!33096 r!7292))) (nullableFct!2231 (regOne!33096 (regOne!33096 r!7292))))))

(declare-fun bs!1596974 () Bool)

(assert (= bs!1596974 d!2000366))

(declare-fun m!7180324 () Bool)

(assert (=> bs!1596974 m!7180324))

(assert (=> b!6378998 d!2000366))

(declare-fun b!6379438 () Bool)

(declare-fun e!3872652 () (Set Context!11352))

(declare-fun call!545103 () (Set Context!11352))

(assert (=> b!6379438 (= e!3872652 call!545103)))

(declare-fun bm!545098 () Bool)

(declare-fun c!1162249 () Bool)

(declare-fun call!545104 () List!65175)

(declare-fun call!545105 () (Set Context!11352))

(declare-fun c!1162252 () Bool)

(declare-fun c!1162250 () Bool)

(assert (=> bm!545098 (= call!545105 (derivationStepZipperDown!1540 (ite c!1162250 (regOne!33097 (reg!16621 (regOne!33096 r!7292))) (ite c!1162249 (regTwo!33096 (reg!16621 (regOne!33096 r!7292))) (ite c!1162252 (regOne!33096 (reg!16621 (regOne!33096 r!7292))) (reg!16621 (reg!16621 (regOne!33096 r!7292)))))) (ite (or c!1162250 c!1162249) lt!2369822 (Context!11353 call!545104)) (h!71501 s!2326)))))

(declare-fun bm!545099 () Bool)

(declare-fun call!545106 () List!65175)

(assert (=> bm!545099 (= call!545104 call!545106)))

(declare-fun d!2000368 () Bool)

(declare-fun c!1162253 () Bool)

(assert (=> d!2000368 (= c!1162253 (and (is-ElementMatch!16292 (reg!16621 (regOne!33096 r!7292))) (= (c!1162137 (reg!16621 (regOne!33096 r!7292))) (h!71501 s!2326))))))

(declare-fun e!3872649 () (Set Context!11352))

(assert (=> d!2000368 (= (derivationStepZipperDown!1540 (reg!16621 (regOne!33096 r!7292)) lt!2369822 (h!71501 s!2326)) e!3872649)))

(declare-fun b!6379439 () Bool)

(assert (=> b!6379439 (= e!3872652 (as set.empty (Set Context!11352)))))

(declare-fun b!6379440 () Bool)

(assert (=> b!6379440 (= e!3872649 (set.insert lt!2369822 (as set.empty (Set Context!11352))))))

(declare-fun bm!545100 () Bool)

(assert (=> bm!545100 (= call!545106 ($colon$colon!2153 (exprs!6176 lt!2369822) (ite (or c!1162249 c!1162252) (regTwo!33096 (reg!16621 (regOne!33096 r!7292))) (reg!16621 (regOne!33096 r!7292)))))))

(declare-fun b!6379441 () Bool)

(declare-fun e!3872651 () (Set Context!11352))

(assert (=> b!6379441 (= e!3872651 call!545103)))

(declare-fun b!6379442 () Bool)

(declare-fun e!3872648 () (Set Context!11352))

(assert (=> b!6379442 (= e!3872648 e!3872651)))

(assert (=> b!6379442 (= c!1162252 (is-Concat!25137 (reg!16621 (regOne!33096 r!7292))))))

(declare-fun b!6379443 () Bool)

(declare-fun c!1162251 () Bool)

(assert (=> b!6379443 (= c!1162251 (is-Star!16292 (reg!16621 (regOne!33096 r!7292))))))

(assert (=> b!6379443 (= e!3872651 e!3872652)))

(declare-fun b!6379444 () Bool)

(declare-fun e!3872650 () (Set Context!11352))

(declare-fun call!545107 () (Set Context!11352))

(assert (=> b!6379444 (= e!3872650 (set.union call!545105 call!545107))))

(declare-fun bm!545101 () Bool)

(assert (=> bm!545101 (= call!545107 (derivationStepZipperDown!1540 (ite c!1162250 (regTwo!33097 (reg!16621 (regOne!33096 r!7292))) (regOne!33096 (reg!16621 (regOne!33096 r!7292)))) (ite c!1162250 lt!2369822 (Context!11353 call!545106)) (h!71501 s!2326)))))

(declare-fun bm!545102 () Bool)

(declare-fun call!545108 () (Set Context!11352))

(assert (=> bm!545102 (= call!545103 call!545108)))

(declare-fun b!6379445 () Bool)

(declare-fun e!3872647 () Bool)

(assert (=> b!6379445 (= e!3872647 (nullable!6285 (regOne!33096 (reg!16621 (regOne!33096 r!7292)))))))

(declare-fun b!6379446 () Bool)

(assert (=> b!6379446 (= c!1162249 e!3872647)))

(declare-fun res!2624127 () Bool)

(assert (=> b!6379446 (=> (not res!2624127) (not e!3872647))))

(assert (=> b!6379446 (= res!2624127 (is-Concat!25137 (reg!16621 (regOne!33096 r!7292))))))

(assert (=> b!6379446 (= e!3872650 e!3872648)))

(declare-fun b!6379447 () Bool)

(assert (=> b!6379447 (= e!3872649 e!3872650)))

(assert (=> b!6379447 (= c!1162250 (is-Union!16292 (reg!16621 (regOne!33096 r!7292))))))

(declare-fun b!6379448 () Bool)

(assert (=> b!6379448 (= e!3872648 (set.union call!545107 call!545108))))

(declare-fun bm!545103 () Bool)

(assert (=> bm!545103 (= call!545108 call!545105)))

(assert (= (and d!2000368 c!1162253) b!6379440))

(assert (= (and d!2000368 (not c!1162253)) b!6379447))

(assert (= (and b!6379447 c!1162250) b!6379444))

(assert (= (and b!6379447 (not c!1162250)) b!6379446))

(assert (= (and b!6379446 res!2624127) b!6379445))

(assert (= (and b!6379446 c!1162249) b!6379448))

(assert (= (and b!6379446 (not c!1162249)) b!6379442))

(assert (= (and b!6379442 c!1162252) b!6379441))

(assert (= (and b!6379442 (not c!1162252)) b!6379443))

(assert (= (and b!6379443 c!1162251) b!6379438))

(assert (= (and b!6379443 (not c!1162251)) b!6379439))

(assert (= (or b!6379441 b!6379438) bm!545099))

(assert (= (or b!6379441 b!6379438) bm!545102))

(assert (= (or b!6379448 bm!545099) bm!545100))

(assert (= (or b!6379448 bm!545102) bm!545103))

(assert (= (or b!6379444 b!6379448) bm!545101))

(assert (= (or b!6379444 bm!545103) bm!545098))

(declare-fun m!7180326 () Bool)

(assert (=> bm!545098 m!7180326))

(declare-fun m!7180328 () Bool)

(assert (=> bm!545101 m!7180328))

(declare-fun m!7180330 () Bool)

(assert (=> b!6379445 m!7180330))

(declare-fun m!7180332 () Bool)

(assert (=> bm!545100 m!7180332))

(assert (=> b!6379440 m!7179942))

(assert (=> b!6378987 d!2000368))

(declare-fun e!3872655 () Bool)

(declare-fun d!2000370 () Bool)

(assert (=> d!2000370 (= (matchZipper!2304 (set.union lt!2369819 lt!2369814) (t!378781 s!2326)) e!3872655)))

(declare-fun res!2624130 () Bool)

(assert (=> d!2000370 (=> res!2624130 e!3872655)))

(assert (=> d!2000370 (= res!2624130 (matchZipper!2304 lt!2369819 (t!378781 s!2326)))))

(declare-fun lt!2369986 () Unit!158499)

(declare-fun choose!47437 ((Set Context!11352) (Set Context!11352) List!65177) Unit!158499)

(assert (=> d!2000370 (= lt!2369986 (choose!47437 lt!2369819 lt!2369814 (t!378781 s!2326)))))

(assert (=> d!2000370 (= (lemmaZipperConcatMatchesSameAsBothZippers!1123 lt!2369819 lt!2369814 (t!378781 s!2326)) lt!2369986)))

(declare-fun b!6379451 () Bool)

(assert (=> b!6379451 (= e!3872655 (matchZipper!2304 lt!2369814 (t!378781 s!2326)))))

(assert (= (and d!2000370 (not res!2624130)) b!6379451))

(assert (=> d!2000370 m!7179882))

(assert (=> d!2000370 m!7179880))

(declare-fun m!7180334 () Bool)

(assert (=> d!2000370 m!7180334))

(assert (=> b!6379451 m!7179982))

(assert (=> b!6378979 d!2000370))

(declare-fun d!2000372 () Bool)

(declare-fun c!1162254 () Bool)

(assert (=> d!2000372 (= c!1162254 (isEmpty!37181 (t!378781 s!2326)))))

(declare-fun e!3872656 () Bool)

(assert (=> d!2000372 (= (matchZipper!2304 lt!2369819 (t!378781 s!2326)) e!3872656)))

(declare-fun b!6379452 () Bool)

(assert (=> b!6379452 (= e!3872656 (nullableZipper!2057 lt!2369819))))

(declare-fun b!6379453 () Bool)

(assert (=> b!6379453 (= e!3872656 (matchZipper!2304 (derivationStepZipper!2258 lt!2369819 (head!13076 (t!378781 s!2326))) (tail!12161 (t!378781 s!2326))))))

(assert (= (and d!2000372 c!1162254) b!6379452))

(assert (= (and d!2000372 (not c!1162254)) b!6379453))

(assert (=> d!2000372 m!7180188))

(declare-fun m!7180336 () Bool)

(assert (=> b!6379452 m!7180336))

(assert (=> b!6379453 m!7180192))

(assert (=> b!6379453 m!7180192))

(declare-fun m!7180338 () Bool)

(assert (=> b!6379453 m!7180338))

(assert (=> b!6379453 m!7180196))

(assert (=> b!6379453 m!7180338))

(assert (=> b!6379453 m!7180196))

(declare-fun m!7180340 () Bool)

(assert (=> b!6379453 m!7180340))

(assert (=> b!6378979 d!2000372))

(declare-fun d!2000374 () Bool)

(declare-fun c!1162255 () Bool)

(assert (=> d!2000374 (= c!1162255 (isEmpty!37181 (t!378781 s!2326)))))

(declare-fun e!3872657 () Bool)

(assert (=> d!2000374 (= (matchZipper!2304 (set.union lt!2369819 lt!2369814) (t!378781 s!2326)) e!3872657)))

(declare-fun b!6379454 () Bool)

(assert (=> b!6379454 (= e!3872657 (nullableZipper!2057 (set.union lt!2369819 lt!2369814)))))

(declare-fun b!6379455 () Bool)

(assert (=> b!6379455 (= e!3872657 (matchZipper!2304 (derivationStepZipper!2258 (set.union lt!2369819 lt!2369814) (head!13076 (t!378781 s!2326))) (tail!12161 (t!378781 s!2326))))))

(assert (= (and d!2000374 c!1162255) b!6379454))

(assert (= (and d!2000374 (not c!1162255)) b!6379455))

(assert (=> d!2000374 m!7180188))

(declare-fun m!7180342 () Bool)

(assert (=> b!6379454 m!7180342))

(assert (=> b!6379455 m!7180192))

(assert (=> b!6379455 m!7180192))

(declare-fun m!7180344 () Bool)

(assert (=> b!6379455 m!7180344))

(assert (=> b!6379455 m!7180196))

(assert (=> b!6379455 m!7180344))

(assert (=> b!6379455 m!7180196))

(declare-fun m!7180346 () Bool)

(assert (=> b!6379455 m!7180346))

(assert (=> b!6378979 d!2000374))

(declare-fun bs!1596975 () Bool)

(declare-fun b!6379465 () Bool)

(assert (= bs!1596975 (and b!6379465 b!6379347)))

(declare-fun lambda!351839 () Int)

(assert (=> bs!1596975 (= (and (= (reg!16621 r!7292) (reg!16621 lt!2369836)) (= r!7292 lt!2369836)) (= lambda!351839 lambda!351828))))

(declare-fun bs!1596976 () Bool)

(assert (= bs!1596976 (and b!6379465 d!2000342)))

(assert (=> bs!1596976 (not (= lambda!351839 lambda!351838))))

(declare-fun bs!1596977 () Bool)

(assert (= bs!1596977 (and b!6379465 b!6378974)))

(assert (=> bs!1596977 (not (= lambda!351839 lambda!351788))))

(assert (=> bs!1596977 (not (= lambda!351839 lambda!351789))))

(declare-fun bs!1596978 () Bool)

(assert (= bs!1596978 (and b!6379465 d!2000340)))

(assert (=> bs!1596978 (not (= lambda!351839 lambda!351832))))

(assert (=> bs!1596976 (not (= lambda!351839 lambda!351837))))

(declare-fun bs!1596979 () Bool)

(assert (= bs!1596979 (and b!6379465 b!6379342)))

(assert (=> bs!1596979 (not (= lambda!351839 lambda!351829))))

(assert (=> b!6379465 true))

(assert (=> b!6379465 true))

(declare-fun bs!1596980 () Bool)

(declare-fun b!6379460 () Bool)

(assert (= bs!1596980 (and b!6379460 b!6379347)))

(declare-fun lambda!351840 () Int)

(assert (=> bs!1596980 (not (= lambda!351840 lambda!351828))))

(declare-fun bs!1596981 () Bool)

(assert (= bs!1596981 (and b!6379460 d!2000342)))

(assert (=> bs!1596981 (= lambda!351840 lambda!351838)))

(declare-fun bs!1596982 () Bool)

(assert (= bs!1596982 (and b!6379460 b!6378974)))

(assert (=> bs!1596982 (= lambda!351840 lambda!351789)))

(declare-fun bs!1596983 () Bool)

(assert (= bs!1596983 (and b!6379460 d!2000340)))

(assert (=> bs!1596983 (not (= lambda!351840 lambda!351832))))

(assert (=> bs!1596981 (not (= lambda!351840 lambda!351837))))

(declare-fun bs!1596984 () Bool)

(assert (= bs!1596984 (and b!6379460 b!6379342)))

(assert (=> bs!1596984 (= (and (= (regOne!33096 r!7292) (regOne!33096 lt!2369836)) (= (regTwo!33096 r!7292) (regTwo!33096 lt!2369836))) (= lambda!351840 lambda!351829))))

(declare-fun bs!1596985 () Bool)

(assert (= bs!1596985 (and b!6379460 b!6379465)))

(assert (=> bs!1596985 (not (= lambda!351840 lambda!351839))))

(assert (=> bs!1596982 (not (= lambda!351840 lambda!351788))))

(assert (=> b!6379460 true))

(assert (=> b!6379460 true))

(declare-fun b!6379456 () Bool)

(declare-fun e!3872663 () Bool)

(declare-fun e!3872662 () Bool)

(assert (=> b!6379456 (= e!3872663 e!3872662)))

(declare-fun res!2624132 () Bool)

(assert (=> b!6379456 (= res!2624132 (not (is-EmptyLang!16292 r!7292)))))

(assert (=> b!6379456 (=> (not res!2624132) (not e!3872662))))

(declare-fun b!6379457 () Bool)

(declare-fun c!1162259 () Bool)

(assert (=> b!6379457 (= c!1162259 (is-Union!16292 r!7292))))

(declare-fun e!3872660 () Bool)

(declare-fun e!3872661 () Bool)

(assert (=> b!6379457 (= e!3872660 e!3872661)))

(declare-fun b!6379458 () Bool)

(assert (=> b!6379458 (= e!3872660 (= s!2326 (Cons!65053 (c!1162137 r!7292) Nil!65053)))))

(declare-fun b!6379459 () Bool)

(declare-fun c!1162258 () Bool)

(assert (=> b!6379459 (= c!1162258 (is-ElementMatch!16292 r!7292))))

(assert (=> b!6379459 (= e!3872662 e!3872660)))

(declare-fun e!3872664 () Bool)

(declare-fun call!545110 () Bool)

(assert (=> b!6379460 (= e!3872664 call!545110)))

(declare-fun bm!545104 () Bool)

(declare-fun c!1162256 () Bool)

(assert (=> bm!545104 (= call!545110 (Exists!3362 (ite c!1162256 lambda!351839 lambda!351840)))))

(declare-fun b!6379461 () Bool)

(declare-fun e!3872658 () Bool)

(assert (=> b!6379461 (= e!3872658 (matchRSpec!3393 (regTwo!33097 r!7292) s!2326))))

(declare-fun b!6379462 () Bool)

(assert (=> b!6379462 (= e!3872661 e!3872658)))

(declare-fun res!2624133 () Bool)

(assert (=> b!6379462 (= res!2624133 (matchRSpec!3393 (regOne!33097 r!7292) s!2326))))

(assert (=> b!6379462 (=> res!2624133 e!3872658)))

(declare-fun d!2000376 () Bool)

(declare-fun c!1162257 () Bool)

(assert (=> d!2000376 (= c!1162257 (is-EmptyExpr!16292 r!7292))))

(assert (=> d!2000376 (= (matchRSpec!3393 r!7292 s!2326) e!3872663)))

(declare-fun b!6379463 () Bool)

(declare-fun call!545109 () Bool)

(assert (=> b!6379463 (= e!3872663 call!545109)))

(declare-fun bm!545105 () Bool)

(assert (=> bm!545105 (= call!545109 (isEmpty!37181 s!2326))))

(declare-fun b!6379464 () Bool)

(assert (=> b!6379464 (= e!3872661 e!3872664)))

(assert (=> b!6379464 (= c!1162256 (is-Star!16292 r!7292))))

(declare-fun e!3872659 () Bool)

(assert (=> b!6379465 (= e!3872659 call!545110)))

(declare-fun b!6379466 () Bool)

(declare-fun res!2624131 () Bool)

(assert (=> b!6379466 (=> res!2624131 e!3872659)))

(assert (=> b!6379466 (= res!2624131 call!545109)))

(assert (=> b!6379466 (= e!3872664 e!3872659)))

(assert (= (and d!2000376 c!1162257) b!6379463))

(assert (= (and d!2000376 (not c!1162257)) b!6379456))

(assert (= (and b!6379456 res!2624132) b!6379459))

(assert (= (and b!6379459 c!1162258) b!6379458))

(assert (= (and b!6379459 (not c!1162258)) b!6379457))

(assert (= (and b!6379457 c!1162259) b!6379462))

(assert (= (and b!6379457 (not c!1162259)) b!6379464))

(assert (= (and b!6379462 (not res!2624133)) b!6379461))

(assert (= (and b!6379464 c!1162256) b!6379466))

(assert (= (and b!6379464 (not c!1162256)) b!6379460))

(assert (= (and b!6379466 (not res!2624131)) b!6379465))

(assert (= (or b!6379465 b!6379460) bm!545104))

(assert (= (or b!6379463 b!6379466) bm!545105))

(declare-fun m!7180348 () Bool)

(assert (=> bm!545104 m!7180348))

(declare-fun m!7180350 () Bool)

(assert (=> b!6379461 m!7180350))

(declare-fun m!7180352 () Bool)

(assert (=> b!6379462 m!7180352))

(assert (=> bm!545105 m!7180176))

(assert (=> b!6378968 d!2000376))

(declare-fun b!6379467 () Bool)

(declare-fun res!2624140 () Bool)

(declare-fun e!3872666 () Bool)

(assert (=> b!6379467 (=> (not res!2624140) (not e!3872666))))

(declare-fun call!545111 () Bool)

(assert (=> b!6379467 (= res!2624140 (not call!545111))))

(declare-fun b!6379468 () Bool)

(assert (=> b!6379468 (= e!3872666 (= (head!13076 s!2326) (c!1162137 r!7292)))))

(declare-fun b!6379469 () Bool)

(declare-fun res!2624136 () Bool)

(assert (=> b!6379469 (=> (not res!2624136) (not e!3872666))))

(assert (=> b!6379469 (= res!2624136 (isEmpty!37181 (tail!12161 s!2326)))))

(declare-fun b!6379470 () Bool)

(declare-fun res!2624135 () Bool)

(declare-fun e!3872665 () Bool)

(assert (=> b!6379470 (=> res!2624135 e!3872665)))

(assert (=> b!6379470 (= res!2624135 (not (isEmpty!37181 (tail!12161 s!2326))))))

(declare-fun d!2000378 () Bool)

(declare-fun e!3872671 () Bool)

(assert (=> d!2000378 e!3872671))

(declare-fun c!1162261 () Bool)

(assert (=> d!2000378 (= c!1162261 (is-EmptyExpr!16292 r!7292))))

(declare-fun lt!2369987 () Bool)

(declare-fun e!3872670 () Bool)

(assert (=> d!2000378 (= lt!2369987 e!3872670)))

(declare-fun c!1162262 () Bool)

(assert (=> d!2000378 (= c!1162262 (isEmpty!37181 s!2326))))

(assert (=> d!2000378 (validRegex!8028 r!7292)))

(assert (=> d!2000378 (= (matchR!8475 r!7292 s!2326) lt!2369987)))

(declare-fun b!6379471 () Bool)

(declare-fun e!3872667 () Bool)

(assert (=> b!6379471 (= e!3872671 e!3872667)))

(declare-fun c!1162260 () Bool)

(assert (=> b!6379471 (= c!1162260 (is-EmptyLang!16292 r!7292))))

(declare-fun b!6379472 () Bool)

(assert (=> b!6379472 (= e!3872667 (not lt!2369987))))

(declare-fun b!6379473 () Bool)

(assert (=> b!6379473 (= e!3872671 (= lt!2369987 call!545111))))

(declare-fun b!6379474 () Bool)

(declare-fun e!3872668 () Bool)

(declare-fun e!3872669 () Bool)

(assert (=> b!6379474 (= e!3872668 e!3872669)))

(declare-fun res!2624138 () Bool)

(assert (=> b!6379474 (=> (not res!2624138) (not e!3872669))))

(assert (=> b!6379474 (= res!2624138 (not lt!2369987))))

(declare-fun b!6379475 () Bool)

(assert (=> b!6379475 (= e!3872669 e!3872665)))

(declare-fun res!2624141 () Bool)

(assert (=> b!6379475 (=> res!2624141 e!3872665)))

(assert (=> b!6379475 (= res!2624141 call!545111)))

(declare-fun bm!545106 () Bool)

(assert (=> bm!545106 (= call!545111 (isEmpty!37181 s!2326))))

(declare-fun b!6379476 () Bool)

(assert (=> b!6379476 (= e!3872665 (not (= (head!13076 s!2326) (c!1162137 r!7292))))))

(declare-fun b!6379477 () Bool)

(assert (=> b!6379477 (= e!3872670 (matchR!8475 (derivativeStep!4996 r!7292 (head!13076 s!2326)) (tail!12161 s!2326)))))

(declare-fun b!6379478 () Bool)

(assert (=> b!6379478 (= e!3872670 (nullable!6285 r!7292))))

(declare-fun b!6379479 () Bool)

(declare-fun res!2624139 () Bool)

(assert (=> b!6379479 (=> res!2624139 e!3872668)))

(assert (=> b!6379479 (= res!2624139 (not (is-ElementMatch!16292 r!7292)))))

(assert (=> b!6379479 (= e!3872667 e!3872668)))

(declare-fun b!6379480 () Bool)

(declare-fun res!2624137 () Bool)

(assert (=> b!6379480 (=> res!2624137 e!3872668)))

(assert (=> b!6379480 (= res!2624137 e!3872666)))

(declare-fun res!2624134 () Bool)

(assert (=> b!6379480 (=> (not res!2624134) (not e!3872666))))

(assert (=> b!6379480 (= res!2624134 lt!2369987)))

(assert (= (and d!2000378 c!1162262) b!6379478))

(assert (= (and d!2000378 (not c!1162262)) b!6379477))

(assert (= (and d!2000378 c!1162261) b!6379473))

(assert (= (and d!2000378 (not c!1162261)) b!6379471))

(assert (= (and b!6379471 c!1162260) b!6379472))

(assert (= (and b!6379471 (not c!1162260)) b!6379479))

(assert (= (and b!6379479 (not res!2624139)) b!6379480))

(assert (= (and b!6379480 res!2624134) b!6379467))

(assert (= (and b!6379467 res!2624140) b!6379469))

(assert (= (and b!6379469 res!2624136) b!6379468))

(assert (= (and b!6379480 (not res!2624137)) b!6379474))

(assert (= (and b!6379474 res!2624138) b!6379475))

(assert (= (and b!6379475 (not res!2624141)) b!6379470))

(assert (= (and b!6379470 (not res!2624135)) b!6379476))

(assert (= (or b!6379473 b!6379467 b!6379475) bm!545106))

(assert (=> b!6379476 m!7180180))

(assert (=> d!2000378 m!7180176))

(assert (=> d!2000378 m!7179914))

(assert (=> bm!545106 m!7180176))

(assert (=> b!6379469 m!7180184))

(assert (=> b!6379469 m!7180184))

(assert (=> b!6379469 m!7180226))

(assert (=> b!6379477 m!7180180))

(assert (=> b!6379477 m!7180180))

(declare-fun m!7180354 () Bool)

(assert (=> b!6379477 m!7180354))

(assert (=> b!6379477 m!7180184))

(assert (=> b!6379477 m!7180354))

(assert (=> b!6379477 m!7180184))

(declare-fun m!7180356 () Bool)

(assert (=> b!6379477 m!7180356))

(declare-fun m!7180358 () Bool)

(assert (=> b!6379478 m!7180358))

(assert (=> b!6379468 m!7180180))

(assert (=> b!6379470 m!7180184))

(assert (=> b!6379470 m!7180184))

(assert (=> b!6379470 m!7180226))

(assert (=> b!6378968 d!2000378))

(declare-fun d!2000380 () Bool)

(assert (=> d!2000380 (= (matchR!8475 r!7292 s!2326) (matchRSpec!3393 r!7292 s!2326))))

(declare-fun lt!2369988 () Unit!158499)

(assert (=> d!2000380 (= lt!2369988 (choose!47433 r!7292 s!2326))))

(assert (=> d!2000380 (validRegex!8028 r!7292)))

(assert (=> d!2000380 (= (mainMatchTheorem!3393 r!7292 s!2326) lt!2369988)))

(declare-fun bs!1596986 () Bool)

(assert (= bs!1596986 d!2000380))

(assert (=> bs!1596986 m!7179966))

(assert (=> bs!1596986 m!7179964))

(declare-fun m!7180360 () Bool)

(assert (=> bs!1596986 m!7180360))

(assert (=> bs!1596986 m!7179914))

(assert (=> b!6378968 d!2000380))

(declare-fun bm!545107 () Bool)

(declare-fun call!545114 () Bool)

(declare-fun call!545112 () Bool)

(assert (=> bm!545107 (= call!545114 call!545112)))

(declare-fun b!6379481 () Bool)

(declare-fun e!3872676 () Bool)

(assert (=> b!6379481 (= e!3872676 call!545114)))

(declare-fun b!6379482 () Bool)

(declare-fun e!3872673 () Bool)

(declare-fun e!3872675 () Bool)

(assert (=> b!6379482 (= e!3872673 e!3872675)))

(declare-fun c!1162263 () Bool)

(assert (=> b!6379482 (= c!1162263 (is-Union!16292 lt!2369833))))

(declare-fun b!6379483 () Bool)

(declare-fun res!2624144 () Bool)

(declare-fun e!3872677 () Bool)

(assert (=> b!6379483 (=> res!2624144 e!3872677)))

(assert (=> b!6379483 (= res!2624144 (not (is-Concat!25137 lt!2369833)))))

(assert (=> b!6379483 (= e!3872675 e!3872677)))

(declare-fun d!2000382 () Bool)

(declare-fun res!2624143 () Bool)

(declare-fun e!3872674 () Bool)

(assert (=> d!2000382 (=> res!2624143 e!3872674)))

(assert (=> d!2000382 (= res!2624143 (is-ElementMatch!16292 lt!2369833))))

(assert (=> d!2000382 (= (validRegex!8028 lt!2369833) e!3872674)))

(declare-fun b!6379484 () Bool)

(declare-fun e!3872678 () Bool)

(assert (=> b!6379484 (= e!3872678 call!545112)))

(declare-fun b!6379485 () Bool)

(assert (=> b!6379485 (= e!3872673 e!3872678)))

(declare-fun res!2624146 () Bool)

(assert (=> b!6379485 (= res!2624146 (not (nullable!6285 (reg!16621 lt!2369833))))))

(assert (=> b!6379485 (=> (not res!2624146) (not e!3872678))))

(declare-fun b!6379486 () Bool)

(declare-fun res!2624142 () Bool)

(declare-fun e!3872672 () Bool)

(assert (=> b!6379486 (=> (not res!2624142) (not e!3872672))))

(declare-fun call!545113 () Bool)

(assert (=> b!6379486 (= res!2624142 call!545113)))

(assert (=> b!6379486 (= e!3872675 e!3872672)))

(declare-fun b!6379487 () Bool)

(assert (=> b!6379487 (= e!3872672 call!545114)))

(declare-fun b!6379488 () Bool)

(assert (=> b!6379488 (= e!3872674 e!3872673)))

(declare-fun c!1162264 () Bool)

(assert (=> b!6379488 (= c!1162264 (is-Star!16292 lt!2369833))))

(declare-fun bm!545108 () Bool)

(assert (=> bm!545108 (= call!545112 (validRegex!8028 (ite c!1162264 (reg!16621 lt!2369833) (ite c!1162263 (regTwo!33097 lt!2369833) (regTwo!33096 lt!2369833)))))))

(declare-fun b!6379489 () Bool)

(assert (=> b!6379489 (= e!3872677 e!3872676)))

(declare-fun res!2624145 () Bool)

(assert (=> b!6379489 (=> (not res!2624145) (not e!3872676))))

(assert (=> b!6379489 (= res!2624145 call!545113)))

(declare-fun bm!545109 () Bool)

(assert (=> bm!545109 (= call!545113 (validRegex!8028 (ite c!1162263 (regOne!33097 lt!2369833) (regOne!33096 lt!2369833))))))

(assert (= (and d!2000382 (not res!2624143)) b!6379488))

(assert (= (and b!6379488 c!1162264) b!6379485))

(assert (= (and b!6379488 (not c!1162264)) b!6379482))

(assert (= (and b!6379485 res!2624146) b!6379484))

(assert (= (and b!6379482 c!1162263) b!6379486))

(assert (= (and b!6379482 (not c!1162263)) b!6379483))

(assert (= (and b!6379486 res!2624142) b!6379487))

(assert (= (and b!6379483 (not res!2624144)) b!6379489))

(assert (= (and b!6379489 res!2624145) b!6379481))

(assert (= (or b!6379487 b!6379481) bm!545107))

(assert (= (or b!6379486 b!6379489) bm!545109))

(assert (= (or b!6379484 bm!545107) bm!545108))

(declare-fun m!7180362 () Bool)

(assert (=> b!6379485 m!7180362))

(declare-fun m!7180364 () Bool)

(assert (=> bm!545108 m!7180364))

(declare-fun m!7180366 () Bool)

(assert (=> bm!545109 m!7180366))

(assert (=> b!6378988 d!2000382))

(declare-fun d!2000384 () Bool)

(assert (=> d!2000384 (= (isEmpty!37178 (t!378780 zl!343)) (is-Nil!65052 (t!378780 zl!343)))))

(assert (=> b!6378990 d!2000384))

(declare-fun d!2000386 () Bool)

(declare-fun lt!2369989 () Regex!16292)

(assert (=> d!2000386 (validRegex!8028 lt!2369989)))

(assert (=> d!2000386 (= lt!2369989 (generalisedUnion!2136 (unfocusZipperList!1713 zl!343)))))

(assert (=> d!2000386 (= (unfocusZipper!2034 zl!343) lt!2369989)))

(declare-fun bs!1596987 () Bool)

(assert (= bs!1596987 d!2000386))

(declare-fun m!7180368 () Bool)

(assert (=> bs!1596987 m!7180368))

(assert (=> bs!1596987 m!7179956))

(assert (=> bs!1596987 m!7179956))

(assert (=> bs!1596987 m!7179958))

(assert (=> b!6378980 d!2000386))

(declare-fun d!2000388 () Bool)

(declare-fun e!3872681 () Bool)

(assert (=> d!2000388 e!3872681))

(declare-fun res!2624149 () Bool)

(assert (=> d!2000388 (=> (not res!2624149) (not e!3872681))))

(declare-fun lt!2369992 () List!65176)

(declare-fun noDuplicate!2121 (List!65176) Bool)

(assert (=> d!2000388 (= res!2624149 (noDuplicate!2121 lt!2369992))))

(declare-fun choose!47441 ((Set Context!11352)) List!65176)

(assert (=> d!2000388 (= lt!2369992 (choose!47441 z!1189))))

(assert (=> d!2000388 (= (toList!10076 z!1189) lt!2369992)))

(declare-fun b!6379492 () Bool)

(declare-fun content!12306 (List!65176) (Set Context!11352))

(assert (=> b!6379492 (= e!3872681 (= (content!12306 lt!2369992) z!1189))))

(assert (= (and d!2000388 res!2624149) b!6379492))

(declare-fun m!7180370 () Bool)

(assert (=> d!2000388 m!7180370))

(declare-fun m!7180372 () Bool)

(assert (=> d!2000388 m!7180372))

(declare-fun m!7180374 () Bool)

(assert (=> b!6379492 m!7180374))

(assert (=> b!6378969 d!2000388))

(declare-fun condSetEmpty!43535 () Bool)

(assert (=> setNonEmpty!43529 (= condSetEmpty!43535 (= setRest!43529 (as set.empty (Set Context!11352))))))

(declare-fun setRes!43535 () Bool)

(assert (=> setNonEmpty!43529 (= tp!1775402 setRes!43535)))

(declare-fun setIsEmpty!43535 () Bool)

(assert (=> setIsEmpty!43535 setRes!43535))

(declare-fun tp!1775443 () Bool)

(declare-fun e!3872684 () Bool)

(declare-fun setNonEmpty!43535 () Bool)

(declare-fun setElem!43535 () Context!11352)

(assert (=> setNonEmpty!43535 (= setRes!43535 (and tp!1775443 (inv!83978 setElem!43535) e!3872684))))

(declare-fun setRest!43535 () (Set Context!11352))

(assert (=> setNonEmpty!43535 (= setRest!43529 (set.union (set.insert setElem!43535 (as set.empty (Set Context!11352))) setRest!43535))))

(declare-fun b!6379497 () Bool)

(declare-fun tp!1775444 () Bool)

(assert (=> b!6379497 (= e!3872684 tp!1775444)))

(assert (= (and setNonEmpty!43529 condSetEmpty!43535) setIsEmpty!43535))

(assert (= (and setNonEmpty!43529 (not condSetEmpty!43535)) setNonEmpty!43535))

(assert (= setNonEmpty!43535 b!6379497))

(declare-fun m!7180376 () Bool)

(assert (=> setNonEmpty!43535 m!7180376))

(declare-fun b!6379511 () Bool)

(declare-fun e!3872687 () Bool)

(declare-fun tp!1775456 () Bool)

(declare-fun tp!1775455 () Bool)

(assert (=> b!6379511 (= e!3872687 (and tp!1775456 tp!1775455))))

(assert (=> b!6379002 (= tp!1775406 e!3872687)))

(declare-fun b!6379509 () Bool)

(declare-fun tp!1775459 () Bool)

(declare-fun tp!1775458 () Bool)

(assert (=> b!6379509 (= e!3872687 (and tp!1775459 tp!1775458))))

(declare-fun b!6379510 () Bool)

(declare-fun tp!1775457 () Bool)

(assert (=> b!6379510 (= e!3872687 tp!1775457)))

(declare-fun b!6379508 () Bool)

(assert (=> b!6379508 (= e!3872687 tp_is_empty!41837)))

(assert (= (and b!6379002 (is-ElementMatch!16292 (regOne!33096 r!7292))) b!6379508))

(assert (= (and b!6379002 (is-Concat!25137 (regOne!33096 r!7292))) b!6379509))

(assert (= (and b!6379002 (is-Star!16292 (regOne!33096 r!7292))) b!6379510))

(assert (= (and b!6379002 (is-Union!16292 (regOne!33096 r!7292))) b!6379511))

(declare-fun b!6379515 () Bool)

(declare-fun e!3872688 () Bool)

(declare-fun tp!1775461 () Bool)

(declare-fun tp!1775460 () Bool)

(assert (=> b!6379515 (= e!3872688 (and tp!1775461 tp!1775460))))

(assert (=> b!6379002 (= tp!1775401 e!3872688)))

(declare-fun b!6379513 () Bool)

(declare-fun tp!1775464 () Bool)

(declare-fun tp!1775463 () Bool)

(assert (=> b!6379513 (= e!3872688 (and tp!1775464 tp!1775463))))

(declare-fun b!6379514 () Bool)

(declare-fun tp!1775462 () Bool)

(assert (=> b!6379514 (= e!3872688 tp!1775462)))

(declare-fun b!6379512 () Bool)

(assert (=> b!6379512 (= e!3872688 tp_is_empty!41837)))

(assert (= (and b!6379002 (is-ElementMatch!16292 (regTwo!33096 r!7292))) b!6379512))

(assert (= (and b!6379002 (is-Concat!25137 (regTwo!33096 r!7292))) b!6379513))

(assert (= (and b!6379002 (is-Star!16292 (regTwo!33096 r!7292))) b!6379514))

(assert (= (and b!6379002 (is-Union!16292 (regTwo!33096 r!7292))) b!6379515))

(declare-fun b!6379523 () Bool)

(declare-fun e!3872694 () Bool)

(declare-fun tp!1775469 () Bool)

(assert (=> b!6379523 (= e!3872694 tp!1775469)))

(declare-fun e!3872693 () Bool)

(declare-fun tp!1775470 () Bool)

(declare-fun b!6379522 () Bool)

(assert (=> b!6379522 (= e!3872693 (and (inv!83978 (h!71500 (t!378780 zl!343))) e!3872694 tp!1775470))))

(assert (=> b!6378972 (= tp!1775408 e!3872693)))

(assert (= b!6379522 b!6379523))

(assert (= (and b!6378972 (is-Cons!65052 (t!378780 zl!343))) b!6379522))

(declare-fun m!7180378 () Bool)

(assert (=> b!6379522 m!7180378))

(declare-fun b!6379528 () Bool)

(declare-fun e!3872697 () Bool)

(declare-fun tp!1775473 () Bool)

(assert (=> b!6379528 (= e!3872697 (and tp_is_empty!41837 tp!1775473))))

(assert (=> b!6378977 (= tp!1775399 e!3872697)))

(assert (= (and b!6378977 (is-Cons!65053 (t!378781 s!2326))) b!6379528))

(declare-fun b!6379533 () Bool)

(declare-fun e!3872700 () Bool)

(declare-fun tp!1775478 () Bool)

(declare-fun tp!1775479 () Bool)

(assert (=> b!6379533 (= e!3872700 (and tp!1775478 tp!1775479))))

(assert (=> b!6378997 (= tp!1775403 e!3872700)))

(assert (= (and b!6378997 (is-Cons!65051 (exprs!6176 setElem!43529))) b!6379533))

(declare-fun b!6379537 () Bool)

(declare-fun e!3872701 () Bool)

(declare-fun tp!1775481 () Bool)

(declare-fun tp!1775480 () Bool)

(assert (=> b!6379537 (= e!3872701 (and tp!1775481 tp!1775480))))

(assert (=> b!6378978 (= tp!1775405 e!3872701)))

(declare-fun b!6379535 () Bool)

(declare-fun tp!1775484 () Bool)

(declare-fun tp!1775483 () Bool)

(assert (=> b!6379535 (= e!3872701 (and tp!1775484 tp!1775483))))

(declare-fun b!6379536 () Bool)

(declare-fun tp!1775482 () Bool)

(assert (=> b!6379536 (= e!3872701 tp!1775482)))

(declare-fun b!6379534 () Bool)

(assert (=> b!6379534 (= e!3872701 tp_is_empty!41837)))

(assert (= (and b!6378978 (is-ElementMatch!16292 (reg!16621 r!7292))) b!6379534))

(assert (= (and b!6378978 (is-Concat!25137 (reg!16621 r!7292))) b!6379535))

(assert (= (and b!6378978 (is-Star!16292 (reg!16621 r!7292))) b!6379536))

(assert (= (and b!6378978 (is-Union!16292 (reg!16621 r!7292))) b!6379537))

(declare-fun b!6379541 () Bool)

(declare-fun e!3872702 () Bool)

(declare-fun tp!1775486 () Bool)

(declare-fun tp!1775485 () Bool)

(assert (=> b!6379541 (= e!3872702 (and tp!1775486 tp!1775485))))

(assert (=> b!6379000 (= tp!1775407 e!3872702)))

(declare-fun b!6379539 () Bool)

(declare-fun tp!1775489 () Bool)

(declare-fun tp!1775488 () Bool)

(assert (=> b!6379539 (= e!3872702 (and tp!1775489 tp!1775488))))

(declare-fun b!6379540 () Bool)

(declare-fun tp!1775487 () Bool)

(assert (=> b!6379540 (= e!3872702 tp!1775487)))

(declare-fun b!6379538 () Bool)

(assert (=> b!6379538 (= e!3872702 tp_is_empty!41837)))

(assert (= (and b!6379000 (is-ElementMatch!16292 (regOne!33097 r!7292))) b!6379538))

(assert (= (and b!6379000 (is-Concat!25137 (regOne!33097 r!7292))) b!6379539))

(assert (= (and b!6379000 (is-Star!16292 (regOne!33097 r!7292))) b!6379540))

(assert (= (and b!6379000 (is-Union!16292 (regOne!33097 r!7292))) b!6379541))

(declare-fun b!6379545 () Bool)

(declare-fun e!3872703 () Bool)

(declare-fun tp!1775491 () Bool)

(declare-fun tp!1775490 () Bool)

(assert (=> b!6379545 (= e!3872703 (and tp!1775491 tp!1775490))))

(assert (=> b!6379000 (= tp!1775404 e!3872703)))

(declare-fun b!6379543 () Bool)

(declare-fun tp!1775494 () Bool)

(declare-fun tp!1775493 () Bool)

(assert (=> b!6379543 (= e!3872703 (and tp!1775494 tp!1775493))))

(declare-fun b!6379544 () Bool)

(declare-fun tp!1775492 () Bool)

(assert (=> b!6379544 (= e!3872703 tp!1775492)))

(declare-fun b!6379542 () Bool)

(assert (=> b!6379542 (= e!3872703 tp_is_empty!41837)))

(assert (= (and b!6379000 (is-ElementMatch!16292 (regTwo!33097 r!7292))) b!6379542))

(assert (= (and b!6379000 (is-Concat!25137 (regTwo!33097 r!7292))) b!6379543))

(assert (= (and b!6379000 (is-Star!16292 (regTwo!33097 r!7292))) b!6379544))

(assert (= (and b!6379000 (is-Union!16292 (regTwo!33097 r!7292))) b!6379545))

(declare-fun b!6379546 () Bool)

(declare-fun e!3872704 () Bool)

(declare-fun tp!1775495 () Bool)

(declare-fun tp!1775496 () Bool)

(assert (=> b!6379546 (= e!3872704 (and tp!1775495 tp!1775496))))

(assert (=> b!6378989 (= tp!1775400 e!3872704)))

(assert (= (and b!6378989 (is-Cons!65051 (exprs!6176 (h!71500 zl!343)))) b!6379546))

(declare-fun b_lambda!242429 () Bool)

(assert (= b_lambda!242423 (or b!6378996 b_lambda!242429)))

(declare-fun bs!1596988 () Bool)

(declare-fun d!2000390 () Bool)

(assert (= bs!1596988 (and d!2000390 b!6378996)))

(assert (=> bs!1596988 (= (dynLambda!25810 lambda!351790 lt!2369822) (derivationStepZipperUp!1466 lt!2369822 (h!71501 s!2326)))))

(assert (=> bs!1596988 m!7179952))

(assert (=> d!2000304 d!2000390))

(declare-fun b_lambda!242431 () Bool)

(assert (= b_lambda!242425 (or b!6378996 b_lambda!242431)))

(declare-fun bs!1596989 () Bool)

(declare-fun d!2000392 () Bool)

(assert (= bs!1596989 (and d!2000392 b!6378996)))

(assert (=> bs!1596989 (= (dynLambda!25810 lambda!351790 lt!2369820) (derivationStepZipperUp!1466 lt!2369820 (h!71501 s!2326)))))

(assert (=> bs!1596989 m!7179950))

(assert (=> d!2000306 d!2000392))

(declare-fun b_lambda!242433 () Bool)

(assert (= b_lambda!242427 (or b!6378996 b_lambda!242433)))

(declare-fun bs!1596990 () Bool)

(declare-fun d!2000394 () Bool)

(assert (= bs!1596990 (and d!2000394 b!6378996)))

(assert (=> bs!1596990 (= (dynLambda!25810 lambda!351790 (h!71500 zl!343)) (derivationStepZipperUp!1466 (h!71500 zl!343) (h!71501 s!2326)))))

(assert (=> bs!1596990 m!7179900))

(assert (=> d!2000354 d!2000394))

(declare-fun b_lambda!242435 () Bool)

(assert (= b_lambda!242421 (or b!6378996 b_lambda!242435)))

(declare-fun bs!1596991 () Bool)

(declare-fun d!2000396 () Bool)

(assert (= bs!1596991 (and d!2000396 b!6378996)))

(assert (=> bs!1596991 (= (dynLambda!25810 lambda!351790 lt!2369824) (derivationStepZipperUp!1466 lt!2369824 (h!71501 s!2326)))))

(assert (=> bs!1596991 m!7179926))

(assert (=> d!2000298 d!2000396))

(push 1)

(assert (not b!6379536))

(assert (not b!6379515))

(assert (not b!6379523))

(assert (not d!2000302))

(assert (not b!6379528))

(assert (not b!6379514))

(assert (not d!2000338))

(assert (not b!6379477))

(assert (not bm!545057))

(assert (not b!6379197))

(assert (not b!6379546))

(assert (not b!6379462))

(assert (not d!2000336))

(assert (not bm!545070))

(assert (not d!2000316))

(assert (not d!2000348))

(assert (not b!6379147))

(assert (not b!6379454))

(assert (not bm!545094))

(assert (not b!6379545))

(assert (not b!6379476))

(assert (not bm!545058))

(assert (not b!6379522))

(assert (not d!2000388))

(assert (not d!2000374))

(assert (not d!2000298))

(assert (not b!6379293))

(assert (not b!6379396))

(assert (not b!6379158))

(assert (not b!6379452))

(assert (not b!6379260))

(assert (not bm!545077))

(assert (not b!6379183))

(assert (not bm!545076))

(assert (not bm!545056))

(assert (not b!6379451))

(assert (not b!6379510))

(assert (not b!6379203))

(assert (not b!6379509))

(assert (not b!6379461))

(assert (not d!2000322))

(assert (not bm!545078))

(assert (not b_lambda!242433))

(assert (not b!6379513))

(assert (not bm!545067))

(assert (not b!6379146))

(assert (not bm!545091))

(assert (not d!2000314))

(assert (not b!6379389))

(assert (not d!2000290))

(assert (not b!6379497))

(assert (not d!2000330))

(assert (not d!2000318))

(assert (not b!6379261))

(assert (not d!2000346))

(assert (not d!2000304))

(assert (not bm!545106))

(assert (not b!6379258))

(assert (not b!6379469))

(assert (not d!2000352))

(assert (not b!6379537))

(assert (not b!6379434))

(assert (not b!6379294))

(assert (not d!2000366))

(assert (not d!2000380))

(assert (not d!2000354))

(assert (not bs!1596991))

(assert (not b!6379395))

(assert (not b!6379485))

(assert (not b!6379388))

(assert (not b!6379535))

(assert (not d!2000294))

(assert (not b!6379191))

(assert (not d!2000370))

(assert (not d!2000306))

(assert (not b!6379390))

(assert (not b!6379259))

(assert (not b!6379372))

(assert (not d!2000288))

(assert (not b!6379192))

(assert (not bm!545101))

(assert (not d!2000356))

(assert (not b!6379433))

(assert (not b!6379539))

(assert (not bm!545109))

(assert (not bs!1596990))

(assert (not b!6379511))

(assert (not b!6379256))

(assert (not b!6379254))

(assert (not bs!1596988))

(assert (not b_lambda!242435))

(assert (not b!6379370))

(assert (not d!2000340))

(assert (not bm!545093))

(assert (not b!6379533))

(assert (not bm!545105))

(assert (not d!2000332))

(assert (not d!2000378))

(assert (not d!2000320))

(assert (not b!6379371))

(assert (not d!2000344))

(assert (not b!6379301))

(assert (not b!6379159))

(assert (not bm!545066))

(assert (not b!6379373))

(assert tp_is_empty!41837)

(assert (not b!6379429))

(assert (not b!6379543))

(assert (not b!6379541))

(assert (not b!6379544))

(assert (not d!2000372))

(assert (not b!6379445))

(assert (not b!6379206))

(assert (not b!6379470))

(assert (not b!6379375))

(assert (not b!6379205))

(assert (not b!6379186))

(assert (not b!6379257))

(assert (not b!6379302))

(assert (not b!6379153))

(assert (not b!6379455))

(assert (not b!6379453))

(assert (not b!6379540))

(assert (not d!2000324))

(assert (not bm!545075))

(assert (not d!2000386))

(assert (not bm!545097))

(assert (not b!6379303))

(assert (not b!6379478))

(assert (not d!2000300))

(assert (not b_lambda!242431))

(assert (not b!6379295))

(assert (not bm!545098))

(assert (not bm!545100))

(assert (not b!6379344))

(assert (not b!6379204))

(assert (not bm!545108))

(assert (not b!6379185))

(assert (not d!2000350))

(assert (not b!6379391))

(assert (not b!6379367))

(assert (not b!6379154))

(assert (not setNonEmpty!43535))

(assert (not b_lambda!242429))

(assert (not d!2000292))

(assert (not b!6379343))

(assert (not bm!545104))

(assert (not b!6379189))

(assert (not d!2000312))

(assert (not b!6379229))

(assert (not b!6379468))

(assert (not b!6379492))

(assert (not bs!1596989))

(assert (not d!2000342))

(assert (not b!6379190))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

