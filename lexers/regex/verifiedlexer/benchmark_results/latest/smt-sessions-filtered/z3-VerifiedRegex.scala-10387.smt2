; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538352 () Bool)

(assert start!538352)

(declare-fun b!5105131 () Bool)

(declare-fun e!3183964 () Bool)

(declare-fun e!3183960 () Bool)

(assert (=> b!5105131 (= e!3183964 (not e!3183960))))

(declare-fun res!2172881 () Bool)

(assert (=> b!5105131 (=> res!2172881 e!3183960)))

(declare-fun e!3183962 () Bool)

(assert (=> b!5105131 (= res!2172881 e!3183962)))

(declare-fun res!2172884 () Bool)

(assert (=> b!5105131 (=> (not res!2172884) (not e!3183962))))

(declare-fun lt!2100978 () Bool)

(assert (=> b!5105131 (= res!2172884 (not lt!2100978))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28396 0))(
  ( (C!28397 (val!23850 Int)) )
))
(declare-datatypes ((Regex!14069 0))(
  ( (ElementMatch!14069 (c!877047 C!28396)) (Concat!22914 (regOne!28650 Regex!14069) (regTwo!28650 Regex!14069)) (EmptyExpr!14069) (Star!14069 (reg!14398 Regex!14069)) (EmptyLang!14069) (Union!14069 (regOne!28651 Regex!14069) (regTwo!28651 Regex!14069)) )
))
(declare-datatypes ((List!58993 0))(
  ( (Nil!58869) (Cons!58869 (h!65317 Regex!14069) (t!371994 List!58993)) )
))
(declare-datatypes ((Context!6906 0))(
  ( (Context!6907 (exprs!3953 List!58993)) )
))
(declare-fun z!4303 () (InoxSet Context!6906))

(declare-datatypes ((List!58994 0))(
  ( (Nil!58870) (Cons!58870 (h!65318 C!28396) (t!371995 List!58994)) )
))
(declare-datatypes ((tuple2!63524 0))(
  ( (tuple2!63525 (_1!35065 List!58994) (_2!35065 List!58994)) )
))
(declare-fun lt!2100968 () tuple2!63524)

(declare-fun matchZipper!741 ((InoxSet Context!6906) List!58994) Bool)

(assert (=> b!5105131 (= lt!2100978 (matchZipper!741 z!4303 (_1!35065 lt!2100968)))))

(declare-fun e!3183971 () Bool)

(assert (=> b!5105131 e!3183971))

(declare-fun res!2172883 () Bool)

(assert (=> b!5105131 (=> res!2172883 e!3183971)))

(declare-fun lt!2100979 () tuple2!63524)

(declare-fun isEmpty!31814 (List!58994) Bool)

(assert (=> b!5105131 (= res!2172883 (isEmpty!31814 (_1!35065 lt!2100979)))))

(declare-fun lt!2100971 () Int)

(declare-fun input!5654 () List!58994)

(declare-fun r!12920 () Regex!14069)

(declare-fun lt!2100982 () Int)

(declare-fun findLongestMatchInner!2082 (Regex!14069 List!58994 Int List!58994 List!58994 Int) tuple2!63524)

(assert (=> b!5105131 (= lt!2100979 (findLongestMatchInner!2082 r!12920 Nil!58870 lt!2100982 input!5654 input!5654 lt!2100971))))

(declare-datatypes ((Unit!149932 0))(
  ( (Unit!149933) )
))
(declare-fun lt!2100985 () Unit!149932)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2084 (Regex!14069 List!58994) Unit!149932)

(assert (=> b!5105131 (= lt!2100985 (longestMatchIsAcceptedByMatchOrIsEmpty!2084 r!12920 input!5654))))

(declare-fun e!3183966 () Bool)

(assert (=> b!5105131 e!3183966))

(declare-fun res!2172877 () Bool)

(assert (=> b!5105131 (=> res!2172877 e!3183966)))

(declare-fun lt!2100983 () tuple2!63524)

(assert (=> b!5105131 (= res!2172877 (isEmpty!31814 (_1!35065 lt!2100983)))))

(declare-fun findLongestMatchInnerZipper!143 ((InoxSet Context!6906) List!58994 Int List!58994 List!58994 Int) tuple2!63524)

(assert (=> b!5105131 (= lt!2100983 (findLongestMatchInnerZipper!143 z!4303 Nil!58870 lt!2100982 input!5654 input!5654 lt!2100971))))

(declare-fun size!39371 (List!58994) Int)

(assert (=> b!5105131 (= lt!2100971 (size!39371 input!5654))))

(assert (=> b!5105131 (= lt!2100982 (size!39371 Nil!58870))))

(declare-fun lt!2100974 () Unit!149932)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2085 ((InoxSet Context!6906) List!58994) Unit!149932)

(assert (=> b!5105131 (= lt!2100974 (longestMatchIsAcceptedByMatchOrIsEmpty!2085 z!4303 input!5654))))

(declare-fun lt!2100986 () tuple2!63524)

(declare-fun lt!2100972 () List!58994)

(declare-fun isPrefix!5470 (List!58994 List!58994) Bool)

(assert (=> b!5105131 (isPrefix!5470 (_1!35065 lt!2100986) lt!2100972)))

(declare-fun lt!2100977 () Unit!149932)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3528 (List!58994 List!58994) Unit!149932)

(assert (=> b!5105131 (= lt!2100977 (lemmaConcatTwoListThenFirstIsPrefix!3528 (_1!35065 lt!2100986) (_2!35065 lt!2100986)))))

(declare-fun lt!2100975 () List!58994)

(assert (=> b!5105131 (isPrefix!5470 (_1!35065 lt!2100968) lt!2100975)))

(declare-fun lt!2100973 () Unit!149932)

(assert (=> b!5105131 (= lt!2100973 (lemmaConcatTwoListThenFirstIsPrefix!3528 (_1!35065 lt!2100968) (_2!35065 lt!2100968)))))

(declare-fun b!5105132 () Bool)

(declare-fun e!3183968 () Bool)

(declare-fun e!3183970 () Bool)

(assert (=> b!5105132 (= e!3183968 e!3183970)))

(declare-fun res!2172878 () Bool)

(assert (=> b!5105132 (=> res!2172878 e!3183970)))

(declare-fun lt!2100976 () Int)

(declare-fun lt!2100984 () Int)

(assert (=> b!5105132 (= res!2172878 (or (> lt!2100976 lt!2100984) (> lt!2100984 lt!2100976)))))

(assert (=> b!5105132 (= lt!2100984 (size!39371 (_1!35065 lt!2100968)))))

(assert (=> b!5105132 (= lt!2100976 (size!39371 (_1!35065 lt!2100986)))))

(declare-fun matchR!6854 (Regex!14069 List!58994) Bool)

(assert (=> b!5105132 (= (matchR!6854 r!12920 (_1!35065 lt!2100968)) lt!2100978)))

(declare-fun lt!2100981 () Unit!149932)

(declare-datatypes ((List!58995 0))(
  ( (Nil!58871) (Cons!58871 (h!65319 Context!6906) (t!371996 List!58995)) )
))
(declare-fun lt!2100970 () List!58995)

(declare-fun theoremZipperRegexEquiv!233 ((InoxSet Context!6906) List!58995 Regex!14069 List!58994) Unit!149932)

(assert (=> b!5105132 (= lt!2100981 (theoremZipperRegexEquiv!233 z!4303 lt!2100970 r!12920 (_1!35065 lt!2100968)))))

(declare-fun lt!2100980 () Bool)

(assert (=> b!5105132 (= lt!2100980 (matchZipper!741 z!4303 (_1!35065 lt!2100986)))))

(declare-fun lt!2100969 () Unit!149932)

(assert (=> b!5105132 (= lt!2100969 (theoremZipperRegexEquiv!233 z!4303 lt!2100970 r!12920 (_1!35065 lt!2100986)))))

(declare-fun b!5105133 () Bool)

(declare-fun e!3183958 () Bool)

(declare-fun tp!1423969 () Bool)

(declare-fun tp!1423970 () Bool)

(assert (=> b!5105133 (= e!3183958 (and tp!1423969 tp!1423970))))

(declare-fun b!5105134 () Bool)

(declare-fun tp_is_empty!37403 () Bool)

(assert (=> b!5105134 (= e!3183958 tp_is_empty!37403)))

(declare-fun b!5105135 () Bool)

(declare-fun e!3183963 () Bool)

(declare-fun e!3183969 () Bool)

(assert (=> b!5105135 (= e!3183963 e!3183969)))

(declare-fun res!2172880 () Bool)

(assert (=> b!5105135 (=> (not res!2172880) (not e!3183969))))

(declare-fun unfocusZipper!411 (List!58995) Regex!14069)

(assert (=> b!5105135 (= res!2172880 (= (unfocusZipper!411 lt!2100970) r!12920))))

(declare-fun toList!8203 ((InoxSet Context!6906)) List!58995)

(assert (=> b!5105135 (= lt!2100970 (toList!8203 z!4303))))

(declare-fun b!5105136 () Bool)

(declare-fun e!3183961 () Bool)

(assert (=> b!5105136 (= e!3183969 e!3183961)))

(declare-fun res!2172876 () Bool)

(assert (=> b!5105136 (=> (not res!2172876) (not e!3183961))))

(assert (=> b!5105136 (= res!2172876 (= lt!2100975 input!5654))))

(declare-fun ++!12918 (List!58994 List!58994) List!58994)

(assert (=> b!5105136 (= lt!2100975 (++!12918 (_1!35065 lt!2100968) (_2!35065 lt!2100968)))))

(declare-fun findLongestMatch!1899 (Regex!14069 List!58994) tuple2!63524)

(assert (=> b!5105136 (= lt!2100986 (findLongestMatch!1899 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!93 ((InoxSet Context!6906) List!58994) tuple2!63524)

(assert (=> b!5105136 (= lt!2100968 (findLongestMatchZipper!93 z!4303 input!5654))))

(declare-fun b!5105137 () Bool)

(assert (=> b!5105137 (= e!3183970 (isPrefix!5470 (_1!35065 lt!2100968) input!5654))))

(declare-fun b!5105138 () Bool)

(assert (=> b!5105138 (= e!3183961 e!3183964)))

(declare-fun res!2172882 () Bool)

(assert (=> b!5105138 (=> (not res!2172882) (not e!3183964))))

(assert (=> b!5105138 (= res!2172882 (= lt!2100972 input!5654))))

(assert (=> b!5105138 (= lt!2100972 (++!12918 (_1!35065 lt!2100986) (_2!35065 lt!2100986)))))

(declare-fun b!5105139 () Bool)

(declare-fun tp!1423971 () Bool)

(assert (=> b!5105139 (= e!3183958 tp!1423971)))

(declare-fun b!5105140 () Bool)

(declare-fun e!3183959 () Bool)

(declare-fun tp!1423974 () Bool)

(assert (=> b!5105140 (= e!3183959 (and tp_is_empty!37403 tp!1423974))))

(declare-fun b!5105141 () Bool)

(declare-fun e!3183967 () Bool)

(declare-fun tp!1423975 () Bool)

(assert (=> b!5105141 (= e!3183967 tp!1423975)))

(declare-fun b!5105142 () Bool)

(declare-fun tp!1423968 () Bool)

(declare-fun tp!1423973 () Bool)

(assert (=> b!5105142 (= e!3183958 (and tp!1423968 tp!1423973))))

(declare-fun res!2172879 () Bool)

(assert (=> start!538352 (=> (not res!2172879) (not e!3183963))))

(declare-fun validRegex!6196 (Regex!14069) Bool)

(assert (=> start!538352 (= res!2172879 (validRegex!6196 r!12920))))

(assert (=> start!538352 e!3183963))

(assert (=> start!538352 e!3183958))

(declare-fun condSetEmpty!29320 () Bool)

(assert (=> start!538352 (= condSetEmpty!29320 (= z!4303 ((as const (Array Context!6906 Bool)) false)))))

(declare-fun setRes!29320 () Bool)

(assert (=> start!538352 setRes!29320))

(assert (=> start!538352 e!3183959))

(declare-fun b!5105143 () Bool)

(declare-fun e!3183965 () Bool)

(assert (=> b!5105143 (= e!3183965 (not (isEmpty!31814 (_1!35065 lt!2100986))))))

(declare-fun b!5105144 () Bool)

(assert (=> b!5105144 (= e!3183966 (matchZipper!741 z!4303 (_1!35065 lt!2100983)))))

(declare-fun setNonEmpty!29320 () Bool)

(declare-fun tp!1423972 () Bool)

(declare-fun setElem!29320 () Context!6906)

(declare-fun inv!78347 (Context!6906) Bool)

(assert (=> setNonEmpty!29320 (= setRes!29320 (and tp!1423972 (inv!78347 setElem!29320) e!3183967))))

(declare-fun setRest!29320 () (InoxSet Context!6906))

(assert (=> setNonEmpty!29320 (= z!4303 ((_ map or) (store ((as const (Array Context!6906 Bool)) false) setElem!29320 true) setRest!29320))))

(declare-fun b!5105145 () Bool)

(assert (=> b!5105145 (= e!3183960 e!3183968)))

(declare-fun res!2172885 () Bool)

(assert (=> b!5105145 (=> res!2172885 e!3183968)))

(assert (=> b!5105145 (= res!2172885 e!3183965)))

(declare-fun res!2172886 () Bool)

(assert (=> b!5105145 (=> (not res!2172886) (not e!3183965))))

(assert (=> b!5105145 (= res!2172886 (not lt!2100980))))

(assert (=> b!5105145 (= lt!2100980 (matchR!6854 r!12920 (_1!35065 lt!2100986)))))

(declare-fun b!5105146 () Bool)

(assert (=> b!5105146 (= e!3183971 (matchR!6854 r!12920 (_1!35065 lt!2100979)))))

(declare-fun setIsEmpty!29320 () Bool)

(assert (=> setIsEmpty!29320 setRes!29320))

(declare-fun b!5105147 () Bool)

(assert (=> b!5105147 (= e!3183962 (not (isEmpty!31814 (_1!35065 lt!2100968))))))

(assert (= (and start!538352 res!2172879) b!5105135))

(assert (= (and b!5105135 res!2172880) b!5105136))

(assert (= (and b!5105136 res!2172876) b!5105138))

(assert (= (and b!5105138 res!2172882) b!5105131))

(assert (= (and b!5105131 (not res!2172877)) b!5105144))

(assert (= (and b!5105131 (not res!2172883)) b!5105146))

(assert (= (and b!5105131 res!2172884) b!5105147))

(assert (= (and b!5105131 (not res!2172881)) b!5105145))

(assert (= (and b!5105145 res!2172886) b!5105143))

(assert (= (and b!5105145 (not res!2172885)) b!5105132))

(assert (= (and b!5105132 (not res!2172878)) b!5105137))

(get-info :version)

(assert (= (and start!538352 ((_ is ElementMatch!14069) r!12920)) b!5105134))

(assert (= (and start!538352 ((_ is Concat!22914) r!12920)) b!5105142))

(assert (= (and start!538352 ((_ is Star!14069) r!12920)) b!5105139))

(assert (= (and start!538352 ((_ is Union!14069) r!12920)) b!5105133))

(assert (= (and start!538352 condSetEmpty!29320) setIsEmpty!29320))

(assert (= (and start!538352 (not condSetEmpty!29320)) setNonEmpty!29320))

(assert (= setNonEmpty!29320 b!5105141))

(assert (= (and start!538352 ((_ is Cons!58870) input!5654)) b!5105140))

(declare-fun m!6162376 () Bool)

(assert (=> b!5105135 m!6162376))

(declare-fun m!6162378 () Bool)

(assert (=> b!5105135 m!6162378))

(declare-fun m!6162380 () Bool)

(assert (=> setNonEmpty!29320 m!6162380))

(declare-fun m!6162382 () Bool)

(assert (=> b!5105132 m!6162382))

(declare-fun m!6162384 () Bool)

(assert (=> b!5105132 m!6162384))

(declare-fun m!6162386 () Bool)

(assert (=> b!5105132 m!6162386))

(declare-fun m!6162388 () Bool)

(assert (=> b!5105132 m!6162388))

(declare-fun m!6162390 () Bool)

(assert (=> b!5105132 m!6162390))

(declare-fun m!6162392 () Bool)

(assert (=> b!5105132 m!6162392))

(declare-fun m!6162394 () Bool)

(assert (=> b!5105137 m!6162394))

(declare-fun m!6162396 () Bool)

(assert (=> b!5105131 m!6162396))

(declare-fun m!6162398 () Bool)

(assert (=> b!5105131 m!6162398))

(declare-fun m!6162400 () Bool)

(assert (=> b!5105131 m!6162400))

(declare-fun m!6162402 () Bool)

(assert (=> b!5105131 m!6162402))

(declare-fun m!6162404 () Bool)

(assert (=> b!5105131 m!6162404))

(declare-fun m!6162406 () Bool)

(assert (=> b!5105131 m!6162406))

(declare-fun m!6162408 () Bool)

(assert (=> b!5105131 m!6162408))

(declare-fun m!6162410 () Bool)

(assert (=> b!5105131 m!6162410))

(declare-fun m!6162412 () Bool)

(assert (=> b!5105131 m!6162412))

(declare-fun m!6162414 () Bool)

(assert (=> b!5105131 m!6162414))

(declare-fun m!6162416 () Bool)

(assert (=> b!5105131 m!6162416))

(declare-fun m!6162418 () Bool)

(assert (=> b!5105131 m!6162418))

(declare-fun m!6162420 () Bool)

(assert (=> b!5105131 m!6162420))

(declare-fun m!6162422 () Bool)

(assert (=> b!5105145 m!6162422))

(declare-fun m!6162424 () Bool)

(assert (=> start!538352 m!6162424))

(declare-fun m!6162426 () Bool)

(assert (=> b!5105147 m!6162426))

(declare-fun m!6162428 () Bool)

(assert (=> b!5105144 m!6162428))

(declare-fun m!6162430 () Bool)

(assert (=> b!5105146 m!6162430))

(declare-fun m!6162432 () Bool)

(assert (=> b!5105136 m!6162432))

(declare-fun m!6162434 () Bool)

(assert (=> b!5105136 m!6162434))

(declare-fun m!6162436 () Bool)

(assert (=> b!5105136 m!6162436))

(declare-fun m!6162438 () Bool)

(assert (=> b!5105143 m!6162438))

(declare-fun m!6162440 () Bool)

(assert (=> b!5105138 m!6162440))

(check-sat (not b!5105147) (not b!5105133) (not b!5105139) (not b!5105136) tp_is_empty!37403 (not b!5105143) (not setNonEmpty!29320) (not b!5105132) (not b!5105145) (not start!538352) (not b!5105138) (not b!5105144) (not b!5105135) (not b!5105140) (not b!5105142) (not b!5105146) (not b!5105137) (not b!5105131) (not b!5105141))
(check-sat)
