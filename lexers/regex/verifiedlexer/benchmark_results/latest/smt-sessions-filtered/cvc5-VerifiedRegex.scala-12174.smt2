; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!685118 () Bool)

(assert start!685118)

(declare-fun b!7061209 () Bool)

(assert (=> b!7061209 true))

(declare-fun b!7061190 () Bool)

(assert (=> b!7061190 true))

(declare-fun b!7061181 () Bool)

(assert (=> b!7061181 true))

(declare-fun bs!1879108 () Bool)

(declare-fun b!7061198 () Bool)

(assert (= bs!1879108 (and b!7061198 b!7061209)))

(declare-fun lambda!422063 () Int)

(declare-fun lambda!422059 () Int)

(assert (=> bs!1879108 (not (= lambda!422063 lambda!422059))))

(declare-fun b!7061179 () Bool)

(declare-fun res!2882830 () Bool)

(declare-fun e!4245113 () Bool)

(assert (=> b!7061179 (=> res!2882830 e!4245113)))

(declare-datatypes ((C!35458 0))(
  ( (C!35459 (val!27431 Int)) )
))
(declare-datatypes ((Regex!17594 0))(
  ( (ElementMatch!17594 (c!1316129 C!35458)) (Concat!26439 (regOne!35700 Regex!17594) (regTwo!35700 Regex!17594)) (EmptyExpr!17594) (Star!17594 (reg!17923 Regex!17594)) (EmptyLang!17594) (Union!17594 (regOne!35701 Regex!17594) (regTwo!35701 Regex!17594)) )
))
(declare-datatypes ((List!68308 0))(
  ( (Nil!68184) (Cons!68184 (h!74632 Regex!17594) (t!382089 List!68308)) )
))
(declare-datatypes ((Context!13180 0))(
  ( (Context!13181 (exprs!7090 List!68308)) )
))
(declare-fun lt!2536022 () (Set Context!13180))

(declare-datatypes ((List!68309 0))(
  ( (Nil!68185) (Cons!68185 (h!74633 C!35458) (t!382090 List!68309)) )
))
(declare-datatypes ((tuple2!68190 0))(
  ( (tuple2!68191 (_1!37398 List!68309) (_2!37398 List!68309)) )
))
(declare-fun lt!2536037 () tuple2!68190)

(declare-fun matchZipper!3134 ((Set Context!13180) List!68309) Bool)

(assert (=> b!7061179 (= res!2882830 (not (matchZipper!3134 lt!2536022 (_2!37398 lt!2536037))))))

(declare-fun b!7061180 () Bool)

(declare-fun e!4245098 () Bool)

(declare-fun s!7408 () List!68309)

(declare-fun ++!15685 (List!68309 List!68309) List!68309)

(assert (=> b!7061180 (= e!4245098 (= (++!15685 Nil!68185 s!7408) s!7408))))

(declare-fun res!2882811 () Bool)

(declare-fun e!4245103 () Bool)

(assert (=> start!685118 (=> (not res!2882811) (not e!4245103))))

(declare-fun lt!2536014 () (Set Context!13180))

(assert (=> start!685118 (= res!2882811 (matchZipper!3134 lt!2536014 s!7408))))

(declare-fun z1!570 () (Set Context!13180))

(declare-fun ct2!306 () Context!13180)

(declare-fun appendTo!715 ((Set Context!13180) Context!13180) (Set Context!13180))

(assert (=> start!685118 (= lt!2536014 (appendTo!715 z1!570 ct2!306))))

(assert (=> start!685118 e!4245103))

(declare-fun condSetEmpty!50004 () Bool)

(assert (=> start!685118 (= condSetEmpty!50004 (= z1!570 (as set.empty (Set Context!13180))))))

(declare-fun setRes!50004 () Bool)

(assert (=> start!685118 setRes!50004))

(declare-fun e!4245109 () Bool)

(declare-fun inv!86845 (Context!13180) Bool)

(assert (=> start!685118 (and (inv!86845 ct2!306) e!4245109)))

(declare-fun e!4245102 () Bool)

(assert (=> start!685118 e!4245102))

(declare-fun e!4245097 () Bool)

(declare-fun e!4245099 () Bool)

(assert (=> b!7061181 (= e!4245097 e!4245099)))

(declare-fun res!2882809 () Bool)

(assert (=> b!7061181 (=> res!2882809 e!4245099)))

(declare-fun lt!2536001 () (Set Context!13180))

(declare-fun lt!2536002 () (Set Context!13180))

(declare-fun derivationStepZipper!3044 ((Set Context!13180) C!35458) (Set Context!13180))

(assert (=> b!7061181 (= res!2882809 (not (= (derivationStepZipper!3044 lt!2536002 (h!74633 s!7408)) lt!2536001)))))

(declare-fun lambda!422062 () Int)

(declare-fun lt!2536039 () Context!13180)

(declare-fun flatMap!2520 ((Set Context!13180) Int) (Set Context!13180))

(declare-fun derivationStepZipperUp!2178 (Context!13180 C!35458) (Set Context!13180))

(assert (=> b!7061181 (= (flatMap!2520 lt!2536002 lambda!422062) (derivationStepZipperUp!2178 lt!2536039 (h!74633 s!7408)))))

(declare-datatypes ((Unit!161864 0))(
  ( (Unit!161865) )
))
(declare-fun lt!2536027 () Unit!161864)

(declare-fun lemmaFlatMapOnSingletonSet!2029 ((Set Context!13180) Context!13180 Int) Unit!161864)

(assert (=> b!7061181 (= lt!2536027 (lemmaFlatMapOnSingletonSet!2029 lt!2536002 lt!2536039 lambda!422062))))

(assert (=> b!7061181 (= lt!2536001 (derivationStepZipperUp!2178 lt!2536039 (h!74633 s!7408)))))

(declare-fun lt!2536029 () Unit!161864)

(declare-fun lambda!422061 () Int)

(declare-fun lt!2536013 () Context!13180)

(declare-fun lemmaConcatPreservesForall!905 (List!68308 List!68308 Int) Unit!161864)

(assert (=> b!7061181 (= lt!2536029 (lemmaConcatPreservesForall!905 (exprs!7090 lt!2536013) (exprs!7090 ct2!306) lambda!422061))))

(declare-fun b!7061182 () Bool)

(declare-fun e!4245104 () Bool)

(assert (=> b!7061182 (= e!4245104 e!4245098)))

(declare-fun res!2882822 () Bool)

(assert (=> b!7061182 (=> res!2882822 e!4245098)))

(declare-fun lt!2536038 () (Set Context!13180))

(assert (=> b!7061182 (= res!2882822 (not (matchZipper!3134 lt!2536038 (_1!37398 lt!2536037))))))

(declare-fun exists!3602 ((Set Context!13180) Int) Bool)

(assert (=> b!7061182 (exists!3602 lt!2536038 lambda!422063)))

(declare-fun lt!2535994 () Unit!161864)

(declare-fun lemmaContainsThenExists!132 ((Set Context!13180) Context!13180 Int) Unit!161864)

(assert (=> b!7061182 (= lt!2535994 (lemmaContainsThenExists!132 lt!2536038 lt!2536013 lambda!422063))))

(assert (=> b!7061182 (= lt!2536038 (set.insert lt!2536013 (as set.empty (Set Context!13180))))))

(declare-fun lt!2536026 () (Set Context!13180))

(assert (=> b!7061182 (exists!3602 lt!2536026 lambda!422063)))

(declare-fun lt!2536021 () Context!13180)

(declare-fun lt!2536028 () Unit!161864)

(assert (=> b!7061182 (= lt!2536028 (lemmaContainsThenExists!132 lt!2536026 lt!2536021 lambda!422063))))

(declare-fun b!7061183 () Bool)

(declare-fun e!4245100 () Bool)

(declare-fun lt!2535996 () (Set Context!13180))

(assert (=> b!7061183 (= e!4245100 (not (matchZipper!3134 lt!2535996 (t!382090 s!7408))))))

(declare-fun lt!2536033 () List!68308)

(declare-fun lt!2536034 () Unit!161864)

(assert (=> b!7061183 (= lt!2536034 (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(declare-fun b!7061184 () Bool)

(declare-fun res!2882832 () Bool)

(declare-fun e!4245116 () Bool)

(assert (=> b!7061184 (=> res!2882832 e!4245116)))

(declare-fun lt!2536000 () Context!13180)

(assert (=> b!7061184 (= res!2882832 (not (set.member lt!2536000 lt!2536014)))))

(declare-fun b!7061185 () Bool)

(declare-fun res!2882815 () Bool)

(assert (=> b!7061185 (=> res!2882815 e!4245098)))

(declare-fun isPrefix!5841 (List!68309 List!68309) Bool)

(assert (=> b!7061185 (= res!2882815 (not (isPrefix!5841 Nil!68185 (_1!37398 lt!2536037))))))

(declare-fun b!7061186 () Bool)

(declare-fun res!2882819 () Bool)

(assert (=> b!7061186 (=> res!2882819 e!4245099)))

(declare-fun isEmpty!39773 (List!68308) Bool)

(assert (=> b!7061186 (= res!2882819 (isEmpty!39773 (exprs!7090 lt!2536013)))))

(declare-fun b!7061187 () Bool)

(assert (=> b!7061187 (= e!4245113 e!4245104)))

(declare-fun res!2882831 () Bool)

(assert (=> b!7061187 (=> res!2882831 e!4245104)))

(declare-fun nullableContext!106 (Context!13180) Bool)

(assert (=> b!7061187 (= res!2882831 (not (nullableContext!106 lt!2536021)))))

(declare-fun lt!2536042 () Context!13180)

(declare-fun getWitness!1670 ((Set Context!13180) Int) Context!13180)

(assert (=> b!7061187 (= lt!2536042 (getWitness!1670 lt!2536026 lambda!422063))))

(declare-fun b!7061188 () Bool)

(declare-fun res!2882825 () Bool)

(assert (=> b!7061188 (=> (not res!2882825) (not e!4245103))))

(assert (=> b!7061188 (= res!2882825 (is-Cons!68185 s!7408))))

(declare-fun b!7061189 () Bool)

(declare-fun res!2882813 () Bool)

(assert (=> b!7061189 (=> res!2882813 e!4245113)))

(assert (=> b!7061189 (= res!2882813 (not (= (++!15685 (_1!37398 lt!2536037) (_2!37398 lt!2536037)) s!7408)))))

(declare-fun tp!1941082 () Bool)

(declare-fun setNonEmpty!50004 () Bool)

(declare-fun e!4245106 () Bool)

(declare-fun setElem!50004 () Context!13180)

(assert (=> setNonEmpty!50004 (= setRes!50004 (and tp!1941082 (inv!86845 setElem!50004) e!4245106))))

(declare-fun setRest!50004 () (Set Context!13180))

(assert (=> setNonEmpty!50004 (= z1!570 (set.union (set.insert setElem!50004 (as set.empty (Set Context!13180))) setRest!50004))))

(declare-fun e!4245114 () Bool)

(assert (=> b!7061190 (= e!4245116 e!4245114)))

(declare-fun res!2882821 () Bool)

(assert (=> b!7061190 (=> res!2882821 e!4245114)))

(assert (=> b!7061190 (= res!2882821 (or (not (= lt!2536039 lt!2536000)) (not (set.member lt!2536013 z1!570))))))

(declare-fun ++!15686 (List!68308 List!68308) List!68308)

(assert (=> b!7061190 (= lt!2536039 (Context!13181 (++!15686 (exprs!7090 lt!2536013) (exprs!7090 ct2!306))))))

(declare-fun lt!2536006 () Unit!161864)

(assert (=> b!7061190 (= lt!2536006 (lemmaConcatPreservesForall!905 (exprs!7090 lt!2536013) (exprs!7090 ct2!306) lambda!422061))))

(declare-fun lambda!422060 () Int)

(declare-fun mapPost2!423 ((Set Context!13180) Int Context!13180) Context!13180)

(assert (=> b!7061190 (= lt!2536013 (mapPost2!423 z1!570 lambda!422060 lt!2536000))))

(declare-fun b!7061191 () Bool)

(declare-fun res!2882816 () Bool)

(declare-fun e!4245115 () Bool)

(assert (=> b!7061191 (=> res!2882816 e!4245115)))

(declare-fun lt!2535991 () Bool)

(assert (=> b!7061191 (= res!2882816 (not lt!2535991))))

(declare-fun b!7061192 () Bool)

(declare-fun e!4245111 () Bool)

(declare-fun e!4245112 () Bool)

(assert (=> b!7061192 (= e!4245111 e!4245112)))

(declare-fun res!2882824 () Bool)

(assert (=> b!7061192 (=> res!2882824 e!4245112)))

(declare-fun lt!2536015 () (Set Context!13180))

(assert (=> b!7061192 (= res!2882824 (not (= lt!2536001 lt!2536015)))))

(declare-fun lt!2536018 () (Set Context!13180))

(assert (=> b!7061192 (= lt!2536015 (set.union lt!2536018 lt!2535996))))

(declare-fun lt!2536035 () Context!13180)

(assert (=> b!7061192 (= lt!2535996 (derivationStepZipperUp!2178 lt!2536035 (h!74633 s!7408)))))

(declare-fun derivationStepZipperDown!2228 (Regex!17594 Context!13180 C!35458) (Set Context!13180))

(assert (=> b!7061192 (= lt!2536018 (derivationStepZipperDown!2228 (h!74632 (exprs!7090 lt!2536013)) lt!2536035 (h!74633 s!7408)))))

(assert (=> b!7061192 (= lt!2536035 (Context!13181 (++!15686 lt!2536033 (exprs!7090 ct2!306))))))

(declare-fun lt!2535999 () Unit!161864)

(assert (=> b!7061192 (= lt!2535999 (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(declare-fun lt!2536023 () Unit!161864)

(assert (=> b!7061192 (= lt!2536023 (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(declare-fun b!7061193 () Bool)

(assert (=> b!7061193 (= e!4245112 e!4245115)))

(declare-fun res!2882829 () Bool)

(assert (=> b!7061193 (=> res!2882829 e!4245115)))

(assert (=> b!7061193 (= res!2882829 e!4245100)))

(declare-fun res!2882807 () Bool)

(assert (=> b!7061193 (=> (not res!2882807) (not e!4245100))))

(declare-fun lt!2536020 () Bool)

(assert (=> b!7061193 (= res!2882807 (not (= lt!2535991 lt!2536020)))))

(assert (=> b!7061193 (= lt!2535991 (matchZipper!3134 lt!2536001 (t!382090 s!7408)))))

(declare-fun lt!2535998 () Unit!161864)

(assert (=> b!7061193 (= lt!2535998 (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(declare-fun e!4245108 () Bool)

(assert (=> b!7061193 (= (matchZipper!3134 lt!2536015 (t!382090 s!7408)) e!4245108)))

(declare-fun res!2882827 () Bool)

(assert (=> b!7061193 (=> res!2882827 e!4245108)))

(assert (=> b!7061193 (= res!2882827 lt!2536020)))

(assert (=> b!7061193 (= lt!2536020 (matchZipper!3134 lt!2536018 (t!382090 s!7408)))))

(declare-fun lt!2536041 () Unit!161864)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1607 ((Set Context!13180) (Set Context!13180) List!68309) Unit!161864)

(assert (=> b!7061193 (= lt!2536041 (lemmaZipperConcatMatchesSameAsBothZippers!1607 lt!2536018 lt!2535996 (t!382090 s!7408)))))

(declare-fun lt!2536030 () Unit!161864)

(assert (=> b!7061193 (= lt!2536030 (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(declare-fun lt!2536031 () Unit!161864)

(assert (=> b!7061193 (= lt!2536031 (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(declare-fun b!7061194 () Bool)

(declare-fun res!2882835 () Bool)

(assert (=> b!7061194 (=> res!2882835 e!4245104)))

(assert (=> b!7061194 (= res!2882835 (not (nullableContext!106 lt!2536013)))))

(declare-fun b!7061195 () Bool)

(assert (=> b!7061195 (= e!4245108 (matchZipper!3134 lt!2535996 (t!382090 s!7408)))))

(declare-fun b!7061196 () Bool)

(declare-fun e!4245107 () Bool)

(declare-fun e!4245105 () Bool)

(assert (=> b!7061196 (= e!4245107 e!4245105)))

(declare-fun res!2882808 () Bool)

(assert (=> b!7061196 (=> res!2882808 e!4245105)))

(declare-fun lt!2536032 () Int)

(declare-fun contextDepthTotal!530 (Context!13180) Int)

(assert (=> b!7061196 (= res!2882808 (<= lt!2536032 (contextDepthTotal!530 lt!2536021)))))

(declare-fun lt!2536040 () Int)

(assert (=> b!7061196 (<= lt!2536032 lt!2536040)))

(declare-datatypes ((List!68310 0))(
  ( (Nil!68186) (Cons!68186 (h!74634 Context!13180) (t!382091 List!68310)) )
))
(declare-fun lt!2536007 () List!68310)

(declare-fun zipperDepthTotal!559 (List!68310) Int)

(assert (=> b!7061196 (= lt!2536040 (zipperDepthTotal!559 lt!2536007))))

(assert (=> b!7061196 (= lt!2536032 (contextDepthTotal!530 lt!2536013))))

(declare-fun lt!2536010 () Unit!161864)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!97 (List!68310 Context!13180) Unit!161864)

(assert (=> b!7061196 (= lt!2536010 (lemmaTotalDepthZipperLargerThanOfAnyContext!97 lt!2536007 lt!2536013))))

(declare-fun toList!10935 ((Set Context!13180)) List!68310)

(assert (=> b!7061196 (= lt!2536007 (toList!10935 z1!570))))

(declare-fun lt!2535997 () Unit!161864)

(assert (=> b!7061196 (= lt!2535997 (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(declare-fun lt!2536004 () Unit!161864)

(assert (=> b!7061196 (= lt!2536004 (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(declare-fun lt!2536036 () Unit!161864)

(assert (=> b!7061196 (= lt!2536036 (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(assert (=> b!7061196 (= (flatMap!2520 lt!2536026 lambda!422062) (derivationStepZipperUp!2178 lt!2536021 (h!74633 s!7408)))))

(declare-fun lt!2536005 () Unit!161864)

(assert (=> b!7061196 (= lt!2536005 (lemmaFlatMapOnSingletonSet!2029 lt!2536026 lt!2536021 lambda!422062))))

(declare-fun map!15924 ((Set Context!13180) Int) (Set Context!13180))

(assert (=> b!7061196 (= (map!15924 lt!2536026 lambda!422060) (set.insert (Context!13181 (++!15686 lt!2536033 (exprs!7090 ct2!306))) (as set.empty (Set Context!13180))))))

(declare-fun lt!2536003 () Unit!161864)

(assert (=> b!7061196 (= lt!2536003 (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(declare-fun lt!2535992 () Unit!161864)

(declare-fun lemmaMapOnSingletonSet!411 ((Set Context!13180) Context!13180 Int) Unit!161864)

(assert (=> b!7061196 (= lt!2535992 (lemmaMapOnSingletonSet!411 lt!2536026 lt!2536021 lambda!422060))))

(assert (=> b!7061196 (= lt!2536026 (set.insert lt!2536021 (as set.empty (Set Context!13180))))))

(declare-fun b!7061197 () Bool)

(declare-fun e!4245101 () Bool)

(assert (=> b!7061197 (= e!4245101 e!4245107)))

(declare-fun res!2882828 () Bool)

(assert (=> b!7061197 (=> res!2882828 e!4245107)))

(declare-fun lt!2536019 () (Set Context!13180))

(assert (=> b!7061197 (= res!2882828 (not (matchZipper!3134 lt!2536019 s!7408)))))

(declare-fun lt!2535993 () Unit!161864)

(assert (=> b!7061197 (= lt!2535993 (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(declare-fun res!2882834 () Bool)

(assert (=> b!7061198 (=> res!2882834 e!4245113)))

(assert (=> b!7061198 (= res!2882834 (not (exists!3602 lt!2536026 lambda!422063)))))

(declare-fun b!7061199 () Bool)

(declare-fun e!4245110 () Bool)

(assert (=> b!7061199 (= e!4245110 e!4245101)))

(declare-fun res!2882817 () Bool)

(assert (=> b!7061199 (=> res!2882817 e!4245101)))

(assert (=> b!7061199 (= res!2882817 (not (= (derivationStepZipper!3044 lt!2536019 (h!74633 s!7408)) lt!2535996)))))

(declare-fun lt!2535995 () Unit!161864)

(assert (=> b!7061199 (= lt!2535995 (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(declare-fun lt!2536025 () Unit!161864)

(assert (=> b!7061199 (= lt!2536025 (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(assert (=> b!7061199 (= (flatMap!2520 lt!2536019 lambda!422062) (derivationStepZipperUp!2178 lt!2536035 (h!74633 s!7408)))))

(declare-fun lt!2536011 () Unit!161864)

(assert (=> b!7061199 (= lt!2536011 (lemmaFlatMapOnSingletonSet!2029 lt!2536019 lt!2536035 lambda!422062))))

(assert (=> b!7061199 (= lt!2536019 (set.insert lt!2536035 (as set.empty (Set Context!13180))))))

(declare-fun lt!2536009 () Unit!161864)

(assert (=> b!7061199 (= lt!2536009 (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(declare-fun lt!2535989 () Unit!161864)

(assert (=> b!7061199 (= lt!2535989 (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(declare-fun b!7061200 () Bool)

(declare-fun tp!1941084 () Bool)

(assert (=> b!7061200 (= e!4245109 tp!1941084)))

(declare-fun b!7061201 () Bool)

(declare-fun tp_is_empty!44413 () Bool)

(declare-fun tp!1941081 () Bool)

(assert (=> b!7061201 (= e!4245102 (and tp_is_empty!44413 tp!1941081))))

(declare-fun b!7061202 () Bool)

(assert (=> b!7061202 (= e!4245105 e!4245113)))

(declare-fun res!2882810 () Bool)

(assert (=> b!7061202 (=> res!2882810 e!4245113)))

(assert (=> b!7061202 (= res!2882810 (not (matchZipper!3134 lt!2536026 (_1!37398 lt!2536037))))))

(declare-datatypes ((Option!16927 0))(
  ( (None!16926) (Some!16926 (v!53220 tuple2!68190)) )
))
(declare-fun lt!2535990 () Option!16927)

(declare-fun get!23875 (Option!16927) tuple2!68190)

(assert (=> b!7061202 (= lt!2536037 (get!23875 lt!2535990))))

(declare-fun isDefined!13628 (Option!16927) Bool)

(assert (=> b!7061202 (isDefined!13628 lt!2535990)))

(declare-fun findConcatSeparationZippers!443 ((Set Context!13180) (Set Context!13180) List!68309 List!68309 List!68309) Option!16927)

(assert (=> b!7061202 (= lt!2535990 (findConcatSeparationZippers!443 lt!2536026 lt!2536022 Nil!68185 s!7408 s!7408))))

(assert (=> b!7061202 (= lt!2536022 (set.insert ct2!306 (as set.empty (Set Context!13180))))))

(declare-fun lt!2535988 () Unit!161864)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!431 ((Set Context!13180) Context!13180 List!68309) Unit!161864)

(assert (=> b!7061202 (= lt!2535988 (lemmaConcatZipperMatchesStringThenFindConcatDefined!431 lt!2536026 ct2!306 s!7408))))

(declare-fun b!7061203 () Bool)

(assert (=> b!7061203 (= e!4245115 e!4245110)))

(declare-fun res!2882812 () Bool)

(assert (=> b!7061203 (=> res!2882812 e!4245110)))

(assert (=> b!7061203 (= res!2882812 (not (matchZipper!3134 lt!2535996 (t!382090 s!7408))))))

(declare-fun lt!2536008 () Unit!161864)

(assert (=> b!7061203 (= lt!2536008 (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(declare-fun setIsEmpty!50004 () Bool)

(assert (=> setIsEmpty!50004 setRes!50004))

(declare-fun b!7061204 () Bool)

(declare-fun tp!1941083 () Bool)

(assert (=> b!7061204 (= e!4245106 tp!1941083)))

(declare-fun b!7061205 () Bool)

(assert (=> b!7061205 (= e!4245114 e!4245097)))

(declare-fun res!2882818 () Bool)

(assert (=> b!7061205 (=> res!2882818 e!4245097)))

(declare-fun lt!2536024 () (Set Context!13180))

(assert (=> b!7061205 (= res!2882818 (not (= lt!2536002 lt!2536024)))))

(assert (=> b!7061205 (= lt!2536002 (set.insert lt!2536039 (as set.empty (Set Context!13180))))))

(declare-fun lt!2536012 () Unit!161864)

(assert (=> b!7061205 (= lt!2536012 (lemmaConcatPreservesForall!905 (exprs!7090 lt!2536013) (exprs!7090 ct2!306) lambda!422061))))

(declare-fun b!7061206 () Bool)

(declare-fun res!2882820 () Bool)

(assert (=> b!7061206 (=> res!2882820 e!4245099)))

(assert (=> b!7061206 (= res!2882820 (not (is-Cons!68184 (exprs!7090 lt!2536013))))))

(declare-fun b!7061207 () Bool)

(assert (=> b!7061207 (= e!4245099 e!4245111)))

(declare-fun res!2882833 () Bool)

(assert (=> b!7061207 (=> res!2882833 e!4245111)))

(declare-fun nullable!7277 (Regex!17594) Bool)

(assert (=> b!7061207 (= res!2882833 (not (nullable!7277 (h!74632 (exprs!7090 lt!2536013)))))))

(assert (=> b!7061207 (= lt!2536021 (Context!13181 lt!2536033))))

(declare-fun tail!13738 (List!68308) List!68308)

(assert (=> b!7061207 (= lt!2536033 (tail!13738 (exprs!7090 lt!2536013)))))

(declare-fun b!7061208 () Bool)

(declare-fun res!2882826 () Bool)

(assert (=> b!7061208 (=> res!2882826 e!4245113)))

(declare-fun isEmpty!39774 (List!68309) Bool)

(assert (=> b!7061208 (= res!2882826 (not (isEmpty!39774 (_1!37398 lt!2536037))))))

(assert (=> b!7061209 (= e!4245103 (not e!4245116))))

(declare-fun res!2882814 () Bool)

(assert (=> b!7061209 (=> res!2882814 e!4245116)))

(assert (=> b!7061209 (= res!2882814 (not (matchZipper!3134 lt!2536024 s!7408)))))

(assert (=> b!7061209 (= lt!2536024 (set.insert lt!2536000 (as set.empty (Set Context!13180))))))

(assert (=> b!7061209 (= lt!2536000 (getWitness!1670 lt!2536014 lambda!422059))))

(declare-fun lt!2536017 () List!68310)

(declare-fun exists!3603 (List!68310 Int) Bool)

(assert (=> b!7061209 (exists!3603 lt!2536017 lambda!422059)))

(declare-fun lt!2536016 () Unit!161864)

(declare-fun lemmaZipperMatchesExistsMatchingContext!515 (List!68310 List!68309) Unit!161864)

(assert (=> b!7061209 (= lt!2536016 (lemmaZipperMatchesExistsMatchingContext!515 lt!2536017 s!7408))))

(assert (=> b!7061209 (= lt!2536017 (toList!10935 lt!2536014))))

(declare-fun b!7061210 () Bool)

(declare-fun res!2882823 () Bool)

(assert (=> b!7061210 (=> res!2882823 e!4245105)))

(assert (=> b!7061210 (= res!2882823 (>= (zipperDepthTotal!559 (Cons!68186 lt!2536021 Nil!68186)) lt!2536040))))

(assert (= (and start!685118 res!2882811) b!7061188))

(assert (= (and b!7061188 res!2882825) b!7061209))

(assert (= (and b!7061209 (not res!2882814)) b!7061184))

(assert (= (and b!7061184 (not res!2882832)) b!7061190))

(assert (= (and b!7061190 (not res!2882821)) b!7061205))

(assert (= (and b!7061205 (not res!2882818)) b!7061181))

(assert (= (and b!7061181 (not res!2882809)) b!7061206))

(assert (= (and b!7061206 (not res!2882820)) b!7061186))

(assert (= (and b!7061186 (not res!2882819)) b!7061207))

(assert (= (and b!7061207 (not res!2882833)) b!7061192))

(assert (= (and b!7061192 (not res!2882824)) b!7061193))

(assert (= (and b!7061193 (not res!2882827)) b!7061195))

(assert (= (and b!7061193 res!2882807) b!7061183))

(assert (= (and b!7061193 (not res!2882829)) b!7061191))

(assert (= (and b!7061191 (not res!2882816)) b!7061203))

(assert (= (and b!7061203 (not res!2882812)) b!7061199))

(assert (= (and b!7061199 (not res!2882817)) b!7061197))

(assert (= (and b!7061197 (not res!2882828)) b!7061196))

(assert (= (and b!7061196 (not res!2882808)) b!7061210))

(assert (= (and b!7061210 (not res!2882823)) b!7061202))

(assert (= (and b!7061202 (not res!2882810)) b!7061179))

(assert (= (and b!7061179 (not res!2882830)) b!7061189))

(assert (= (and b!7061189 (not res!2882813)) b!7061208))

(assert (= (and b!7061208 (not res!2882826)) b!7061198))

(assert (= (and b!7061198 (not res!2882834)) b!7061187))

(assert (= (and b!7061187 (not res!2882831)) b!7061194))

(assert (= (and b!7061194 (not res!2882835)) b!7061182))

(assert (= (and b!7061182 (not res!2882822)) b!7061185))

(assert (= (and b!7061185 (not res!2882815)) b!7061180))

(assert (= (and start!685118 condSetEmpty!50004) setIsEmpty!50004))

(assert (= (and start!685118 (not condSetEmpty!50004)) setNonEmpty!50004))

(assert (= setNonEmpty!50004 b!7061204))

(assert (= start!685118 b!7061200))

(assert (= (and start!685118 (is-Cons!68185 s!7408)) b!7061201))

(declare-fun m!7781458 () Bool)

(assert (=> b!7061203 m!7781458))

(declare-fun m!7781460 () Bool)

(assert (=> b!7061203 m!7781460))

(declare-fun m!7781462 () Bool)

(assert (=> b!7061192 m!7781462))

(declare-fun m!7781464 () Bool)

(assert (=> b!7061192 m!7781464))

(assert (=> b!7061192 m!7781460))

(declare-fun m!7781466 () Bool)

(assert (=> b!7061192 m!7781466))

(assert (=> b!7061192 m!7781460))

(declare-fun m!7781468 () Bool)

(assert (=> b!7061209 m!7781468))

(declare-fun m!7781470 () Bool)

(assert (=> b!7061209 m!7781470))

(declare-fun m!7781472 () Bool)

(assert (=> b!7061209 m!7781472))

(declare-fun m!7781474 () Bool)

(assert (=> b!7061209 m!7781474))

(declare-fun m!7781476 () Bool)

(assert (=> b!7061209 m!7781476))

(declare-fun m!7781478 () Bool)

(assert (=> b!7061209 m!7781478))

(declare-fun m!7781480 () Bool)

(assert (=> b!7061180 m!7781480))

(declare-fun m!7781482 () Bool)

(assert (=> b!7061196 m!7781482))

(declare-fun m!7781484 () Bool)

(assert (=> b!7061196 m!7781484))

(assert (=> b!7061196 m!7781460))

(declare-fun m!7781486 () Bool)

(assert (=> b!7061196 m!7781486))

(assert (=> b!7061196 m!7781460))

(declare-fun m!7781488 () Bool)

(assert (=> b!7061196 m!7781488))

(assert (=> b!7061196 m!7781466))

(declare-fun m!7781490 () Bool)

(assert (=> b!7061196 m!7781490))

(declare-fun m!7781492 () Bool)

(assert (=> b!7061196 m!7781492))

(declare-fun m!7781494 () Bool)

(assert (=> b!7061196 m!7781494))

(assert (=> b!7061196 m!7781460))

(declare-fun m!7781496 () Bool)

(assert (=> b!7061196 m!7781496))

(declare-fun m!7781498 () Bool)

(assert (=> b!7061196 m!7781498))

(declare-fun m!7781500 () Bool)

(assert (=> b!7061196 m!7781500))

(declare-fun m!7781502 () Bool)

(assert (=> b!7061196 m!7781502))

(declare-fun m!7781504 () Bool)

(assert (=> b!7061196 m!7781504))

(assert (=> b!7061196 m!7781460))

(assert (=> b!7061183 m!7781458))

(assert (=> b!7061183 m!7781460))

(declare-fun m!7781506 () Bool)

(assert (=> b!7061202 m!7781506))

(declare-fun m!7781508 () Bool)

(assert (=> b!7061202 m!7781508))

(declare-fun m!7781510 () Bool)

(assert (=> b!7061202 m!7781510))

(declare-fun m!7781512 () Bool)

(assert (=> b!7061202 m!7781512))

(declare-fun m!7781514 () Bool)

(assert (=> b!7061202 m!7781514))

(declare-fun m!7781516 () Bool)

(assert (=> b!7061202 m!7781516))

(declare-fun m!7781518 () Bool)

(assert (=> start!685118 m!7781518))

(declare-fun m!7781520 () Bool)

(assert (=> start!685118 m!7781520))

(declare-fun m!7781522 () Bool)

(assert (=> start!685118 m!7781522))

(assert (=> b!7061199 m!7781460))

(declare-fun m!7781524 () Bool)

(assert (=> b!7061199 m!7781524))

(assert (=> b!7061199 m!7781460))

(assert (=> b!7061199 m!7781460))

(assert (=> b!7061199 m!7781464))

(declare-fun m!7781526 () Bool)

(assert (=> b!7061199 m!7781526))

(assert (=> b!7061199 m!7781460))

(declare-fun m!7781528 () Bool)

(assert (=> b!7061199 m!7781528))

(declare-fun m!7781530 () Bool)

(assert (=> b!7061199 m!7781530))

(declare-fun m!7781532 () Bool)

(assert (=> b!7061187 m!7781532))

(declare-fun m!7781534 () Bool)

(assert (=> b!7061187 m!7781534))

(declare-fun m!7781536 () Bool)

(assert (=> b!7061185 m!7781536))

(declare-fun m!7781538 () Bool)

(assert (=> b!7061205 m!7781538))

(declare-fun m!7781540 () Bool)

(assert (=> b!7061205 m!7781540))

(declare-fun m!7781542 () Bool)

(assert (=> b!7061210 m!7781542))

(declare-fun m!7781544 () Bool)

(assert (=> setNonEmpty!50004 m!7781544))

(declare-fun m!7781546 () Bool)

(assert (=> b!7061186 m!7781546))

(declare-fun m!7781548 () Bool)

(assert (=> b!7061208 m!7781548))

(declare-fun m!7781550 () Bool)

(assert (=> b!7061179 m!7781550))

(declare-fun m!7781552 () Bool)

(assert (=> b!7061184 m!7781552))

(declare-fun m!7781554 () Bool)

(assert (=> b!7061189 m!7781554))

(declare-fun m!7781556 () Bool)

(assert (=> b!7061194 m!7781556))

(declare-fun m!7781558 () Bool)

(assert (=> b!7061190 m!7781558))

(declare-fun m!7781560 () Bool)

(assert (=> b!7061190 m!7781560))

(assert (=> b!7061190 m!7781540))

(declare-fun m!7781562 () Bool)

(assert (=> b!7061190 m!7781562))

(declare-fun m!7781564 () Bool)

(assert (=> b!7061182 m!7781564))

(declare-fun m!7781566 () Bool)

(assert (=> b!7061182 m!7781566))

(declare-fun m!7781568 () Bool)

(assert (=> b!7061182 m!7781568))

(declare-fun m!7781570 () Bool)

(assert (=> b!7061182 m!7781570))

(declare-fun m!7781572 () Bool)

(assert (=> b!7061182 m!7781572))

(declare-fun m!7781574 () Bool)

(assert (=> b!7061182 m!7781574))

(declare-fun m!7781576 () Bool)

(assert (=> b!7061197 m!7781576))

(assert (=> b!7061197 m!7781460))

(assert (=> b!7061198 m!7781570))

(declare-fun m!7781578 () Bool)

(assert (=> b!7061207 m!7781578))

(declare-fun m!7781580 () Bool)

(assert (=> b!7061207 m!7781580))

(assert (=> b!7061195 m!7781458))

(declare-fun m!7781582 () Bool)

(assert (=> b!7061181 m!7781582))

(assert (=> b!7061181 m!7781540))

(declare-fun m!7781584 () Bool)

(assert (=> b!7061181 m!7781584))

(declare-fun m!7781586 () Bool)

(assert (=> b!7061181 m!7781586))

(declare-fun m!7781588 () Bool)

(assert (=> b!7061181 m!7781588))

(declare-fun m!7781590 () Bool)

(assert (=> b!7061193 m!7781590))

(assert (=> b!7061193 m!7781460))

(declare-fun m!7781592 () Bool)

(assert (=> b!7061193 m!7781592))

(declare-fun m!7781594 () Bool)

(assert (=> b!7061193 m!7781594))

(assert (=> b!7061193 m!7781460))

(declare-fun m!7781596 () Bool)

(assert (=> b!7061193 m!7781596))

(assert (=> b!7061193 m!7781460))

(push 1)

(assert (not b!7061205))

(assert (not b!7061198))

(assert (not b!7061207))

(assert (not b!7061210))

(assert (not start!685118))

(assert (not b!7061189))

(assert (not b!7061187))

(assert (not b!7061185))

(assert (not b!7061182))

(assert (not b!7061200))

(assert (not b!7061194))

(assert (not b!7061208))

(assert (not b!7061179))

(assert (not b!7061193))

(assert (not b!7061199))

(assert (not b!7061186))

(assert tp_is_empty!44413)

(assert (not b!7061183))

(assert (not b!7061195))

(assert (not b!7061180))

(assert (not b!7061181))

(assert (not b!7061201))

(assert (not b!7061209))

(assert (not b!7061197))

(assert (not b!7061196))

(assert (not b!7061192))

(assert (not b!7061204))

(assert (not b!7061202))

(assert (not b!7061203))

(assert (not b!7061190))

(assert (not setNonEmpty!50004))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2207683 () Bool)

(declare-fun c!1316155 () Bool)

(assert (=> d!2207683 (= c!1316155 (isEmpty!39774 (t!382090 s!7408)))))

(declare-fun e!4245179 () Bool)

(assert (=> d!2207683 (= (matchZipper!3134 lt!2535996 (t!382090 s!7408)) e!4245179)))

(declare-fun b!7061323 () Bool)

(declare-fun nullableZipper!2671 ((Set Context!13180)) Bool)

(assert (=> b!7061323 (= e!4245179 (nullableZipper!2671 lt!2535996))))

(declare-fun b!7061324 () Bool)

(declare-fun head!14374 (List!68309) C!35458)

(declare-fun tail!13740 (List!68309) List!68309)

(assert (=> b!7061324 (= e!4245179 (matchZipper!3134 (derivationStepZipper!3044 lt!2535996 (head!14374 (t!382090 s!7408))) (tail!13740 (t!382090 s!7408))))))

(assert (= (and d!2207683 c!1316155) b!7061323))

(assert (= (and d!2207683 (not c!1316155)) b!7061324))

(declare-fun m!7781738 () Bool)

(assert (=> d!2207683 m!7781738))

(declare-fun m!7781740 () Bool)

(assert (=> b!7061323 m!7781740))

(declare-fun m!7781742 () Bool)

(assert (=> b!7061324 m!7781742))

(assert (=> b!7061324 m!7781742))

(declare-fun m!7781744 () Bool)

(assert (=> b!7061324 m!7781744))

(declare-fun m!7781746 () Bool)

(assert (=> b!7061324 m!7781746))

(assert (=> b!7061324 m!7781744))

(assert (=> b!7061324 m!7781746))

(declare-fun m!7781748 () Bool)

(assert (=> b!7061324 m!7781748))

(assert (=> b!7061203 d!2207683))

(declare-fun d!2207685 () Bool)

(declare-fun forall!16544 (List!68308 Int) Bool)

(assert (=> d!2207685 (forall!16544 (++!15686 lt!2536033 (exprs!7090 ct2!306)) lambda!422061)))

(declare-fun lt!2536214 () Unit!161864)

(declare-fun choose!53925 (List!68308 List!68308 Int) Unit!161864)

(assert (=> d!2207685 (= lt!2536214 (choose!53925 lt!2536033 (exprs!7090 ct2!306) lambda!422061))))

(assert (=> d!2207685 (forall!16544 lt!2536033 lambda!422061)))

(assert (=> d!2207685 (= (lemmaConcatPreservesForall!905 lt!2536033 (exprs!7090 ct2!306) lambda!422061) lt!2536214)))

(declare-fun bs!1879110 () Bool)

(assert (= bs!1879110 d!2207685))

(assert (=> bs!1879110 m!7781466))

(assert (=> bs!1879110 m!7781466))

(declare-fun m!7781750 () Bool)

(assert (=> bs!1879110 m!7781750))

(declare-fun m!7781752 () Bool)

(assert (=> bs!1879110 m!7781752))

(declare-fun m!7781754 () Bool)

(assert (=> bs!1879110 m!7781754))

(assert (=> b!7061203 d!2207685))

(assert (=> b!7061183 d!2207683))

(assert (=> b!7061183 d!2207685))

(declare-fun d!2207687 () Bool)

(assert (=> d!2207687 (exists!3602 lt!2536038 lambda!422063)))

(declare-fun lt!2536217 () Unit!161864)

(declare-fun choose!53926 ((Set Context!13180) Context!13180 Int) Unit!161864)

(assert (=> d!2207687 (= lt!2536217 (choose!53926 lt!2536038 lt!2536013 lambda!422063))))

(assert (=> d!2207687 (set.member lt!2536013 lt!2536038)))

(assert (=> d!2207687 (= (lemmaContainsThenExists!132 lt!2536038 lt!2536013 lambda!422063) lt!2536217)))

(declare-fun bs!1879111 () Bool)

(assert (= bs!1879111 d!2207687))

(assert (=> bs!1879111 m!7781574))

(declare-fun m!7781756 () Bool)

(assert (=> bs!1879111 m!7781756))

(declare-fun m!7781758 () Bool)

(assert (=> bs!1879111 m!7781758))

(assert (=> b!7061182 d!2207687))

(declare-fun d!2207689 () Bool)

(assert (=> d!2207689 (exists!3602 lt!2536026 lambda!422063)))

(declare-fun lt!2536218 () Unit!161864)

(assert (=> d!2207689 (= lt!2536218 (choose!53926 lt!2536026 lt!2536021 lambda!422063))))

(assert (=> d!2207689 (set.member lt!2536021 lt!2536026)))

(assert (=> d!2207689 (= (lemmaContainsThenExists!132 lt!2536026 lt!2536021 lambda!422063) lt!2536218)))

(declare-fun bs!1879112 () Bool)

(assert (= bs!1879112 d!2207689))

(assert (=> bs!1879112 m!7781570))

(declare-fun m!7781760 () Bool)

(assert (=> bs!1879112 m!7781760))

(declare-fun m!7781762 () Bool)

(assert (=> bs!1879112 m!7781762))

(assert (=> b!7061182 d!2207689))

(declare-fun d!2207691 () Bool)

(declare-fun lt!2536221 () Bool)

(assert (=> d!2207691 (= lt!2536221 (exists!3603 (toList!10935 lt!2536026) lambda!422063))))

(declare-fun choose!53927 ((Set Context!13180) Int) Bool)

(assert (=> d!2207691 (= lt!2536221 (choose!53927 lt!2536026 lambda!422063))))

(assert (=> d!2207691 (= (exists!3602 lt!2536026 lambda!422063) lt!2536221)))

(declare-fun bs!1879113 () Bool)

(assert (= bs!1879113 d!2207691))

(declare-fun m!7781764 () Bool)

(assert (=> bs!1879113 m!7781764))

(assert (=> bs!1879113 m!7781764))

(declare-fun m!7781766 () Bool)

(assert (=> bs!1879113 m!7781766))

(declare-fun m!7781768 () Bool)

(assert (=> bs!1879113 m!7781768))

(assert (=> b!7061182 d!2207691))

(declare-fun d!2207693 () Bool)

(declare-fun lt!2536222 () Bool)

(assert (=> d!2207693 (= lt!2536222 (exists!3603 (toList!10935 lt!2536038) lambda!422063))))

(assert (=> d!2207693 (= lt!2536222 (choose!53927 lt!2536038 lambda!422063))))

(assert (=> d!2207693 (= (exists!3602 lt!2536038 lambda!422063) lt!2536222)))

(declare-fun bs!1879114 () Bool)

(assert (= bs!1879114 d!2207693))

(declare-fun m!7781770 () Bool)

(assert (=> bs!1879114 m!7781770))

(assert (=> bs!1879114 m!7781770))

(declare-fun m!7781772 () Bool)

(assert (=> bs!1879114 m!7781772))

(declare-fun m!7781774 () Bool)

(assert (=> bs!1879114 m!7781774))

(assert (=> b!7061182 d!2207693))

(declare-fun d!2207695 () Bool)

(declare-fun c!1316156 () Bool)

(assert (=> d!2207695 (= c!1316156 (isEmpty!39774 (_1!37398 lt!2536037)))))

(declare-fun e!4245181 () Bool)

(assert (=> d!2207695 (= (matchZipper!3134 lt!2536038 (_1!37398 lt!2536037)) e!4245181)))

(declare-fun b!7061325 () Bool)

(assert (=> b!7061325 (= e!4245181 (nullableZipper!2671 lt!2536038))))

(declare-fun b!7061326 () Bool)

(assert (=> b!7061326 (= e!4245181 (matchZipper!3134 (derivationStepZipper!3044 lt!2536038 (head!14374 (_1!37398 lt!2536037))) (tail!13740 (_1!37398 lt!2536037))))))

(assert (= (and d!2207695 c!1316156) b!7061325))

(assert (= (and d!2207695 (not c!1316156)) b!7061326))

(assert (=> d!2207695 m!7781548))

(declare-fun m!7781776 () Bool)

(assert (=> b!7061325 m!7781776))

(declare-fun m!7781778 () Bool)

(assert (=> b!7061326 m!7781778))

(assert (=> b!7061326 m!7781778))

(declare-fun m!7781780 () Bool)

(assert (=> b!7061326 m!7781780))

(declare-fun m!7781782 () Bool)

(assert (=> b!7061326 m!7781782))

(assert (=> b!7061326 m!7781780))

(assert (=> b!7061326 m!7781782))

(declare-fun m!7781784 () Bool)

(assert (=> b!7061326 m!7781784))

(assert (=> b!7061182 d!2207695))

(declare-fun d!2207697 () Bool)

(declare-fun isEmpty!39777 (Option!16927) Bool)

(assert (=> d!2207697 (= (isDefined!13628 lt!2535990) (not (isEmpty!39777 lt!2535990)))))

(declare-fun bs!1879115 () Bool)

(assert (= bs!1879115 d!2207697))

(declare-fun m!7781786 () Bool)

(assert (=> bs!1879115 m!7781786))

(assert (=> b!7061202 d!2207697))

(declare-fun b!7061345 () Bool)

(declare-fun res!2882936 () Bool)

(declare-fun e!4245195 () Bool)

(assert (=> b!7061345 (=> (not res!2882936) (not e!4245195))))

(declare-fun lt!2536229 () Option!16927)

(assert (=> b!7061345 (= res!2882936 (matchZipper!3134 lt!2536026 (_1!37398 (get!23875 lt!2536229))))))

(declare-fun b!7061346 () Bool)

(declare-fun e!4245192 () Bool)

(assert (=> b!7061346 (= e!4245192 (not (isDefined!13628 lt!2536229)))))

(declare-fun b!7061347 () Bool)

(declare-fun e!4245193 () Option!16927)

(declare-fun e!4245194 () Option!16927)

(assert (=> b!7061347 (= e!4245193 e!4245194)))

(declare-fun c!1316161 () Bool)

(assert (=> b!7061347 (= c!1316161 (is-Nil!68185 s!7408))))

(declare-fun b!7061348 () Bool)

(declare-fun lt!2536231 () Unit!161864)

(declare-fun lt!2536230 () Unit!161864)

(assert (=> b!7061348 (= lt!2536231 lt!2536230)))

(assert (=> b!7061348 (= (++!15685 (++!15685 Nil!68185 (Cons!68185 (h!74633 s!7408) Nil!68185)) (t!382090 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2957 (List!68309 C!35458 List!68309 List!68309) Unit!161864)

(assert (=> b!7061348 (= lt!2536230 (lemmaMoveElementToOtherListKeepsConcatEq!2957 Nil!68185 (h!74633 s!7408) (t!382090 s!7408) s!7408))))

(assert (=> b!7061348 (= e!4245194 (findConcatSeparationZippers!443 lt!2536026 lt!2536022 (++!15685 Nil!68185 (Cons!68185 (h!74633 s!7408) Nil!68185)) (t!382090 s!7408) s!7408))))

(declare-fun b!7061349 () Bool)

(assert (=> b!7061349 (= e!4245193 (Some!16926 (tuple2!68191 Nil!68185 s!7408)))))

(declare-fun b!7061350 () Bool)

(declare-fun res!2882935 () Bool)

(assert (=> b!7061350 (=> (not res!2882935) (not e!4245195))))

(assert (=> b!7061350 (= res!2882935 (matchZipper!3134 lt!2536022 (_2!37398 (get!23875 lt!2536229))))))

(declare-fun b!7061351 () Bool)

(assert (=> b!7061351 (= e!4245195 (= (++!15685 (_1!37398 (get!23875 lt!2536229)) (_2!37398 (get!23875 lt!2536229))) s!7408))))

(declare-fun b!7061353 () Bool)

(declare-fun e!4245196 () Bool)

(assert (=> b!7061353 (= e!4245196 (matchZipper!3134 lt!2536022 s!7408))))

(declare-fun d!2207699 () Bool)

(assert (=> d!2207699 e!4245192))

(declare-fun res!2882937 () Bool)

(assert (=> d!2207699 (=> res!2882937 e!4245192)))

(assert (=> d!2207699 (= res!2882937 e!4245195)))

(declare-fun res!2882938 () Bool)

(assert (=> d!2207699 (=> (not res!2882938) (not e!4245195))))

(assert (=> d!2207699 (= res!2882938 (isDefined!13628 lt!2536229))))

(assert (=> d!2207699 (= lt!2536229 e!4245193)))

(declare-fun c!1316162 () Bool)

(assert (=> d!2207699 (= c!1316162 e!4245196)))

(declare-fun res!2882939 () Bool)

(assert (=> d!2207699 (=> (not res!2882939) (not e!4245196))))

(assert (=> d!2207699 (= res!2882939 (matchZipper!3134 lt!2536026 Nil!68185))))

(assert (=> d!2207699 (= (++!15685 Nil!68185 s!7408) s!7408)))

(assert (=> d!2207699 (= (findConcatSeparationZippers!443 lt!2536026 lt!2536022 Nil!68185 s!7408 s!7408) lt!2536229)))

(declare-fun b!7061352 () Bool)

(assert (=> b!7061352 (= e!4245194 None!16926)))

(assert (= (and d!2207699 res!2882939) b!7061353))

(assert (= (and d!2207699 c!1316162) b!7061349))

(assert (= (and d!2207699 (not c!1316162)) b!7061347))

(assert (= (and b!7061347 c!1316161) b!7061352))

(assert (= (and b!7061347 (not c!1316161)) b!7061348))

(assert (= (and d!2207699 res!2882938) b!7061345))

(assert (= (and b!7061345 res!2882936) b!7061350))

(assert (= (and b!7061350 res!2882935) b!7061351))

(assert (= (and d!2207699 (not res!2882937)) b!7061346))

(declare-fun m!7781788 () Bool)

(assert (=> b!7061348 m!7781788))

(assert (=> b!7061348 m!7781788))

(declare-fun m!7781790 () Bool)

(assert (=> b!7061348 m!7781790))

(declare-fun m!7781792 () Bool)

(assert (=> b!7061348 m!7781792))

(assert (=> b!7061348 m!7781788))

(declare-fun m!7781794 () Bool)

(assert (=> b!7061348 m!7781794))

(declare-fun m!7781796 () Bool)

(assert (=> b!7061350 m!7781796))

(declare-fun m!7781798 () Bool)

(assert (=> b!7061350 m!7781798))

(assert (=> b!7061351 m!7781796))

(declare-fun m!7781800 () Bool)

(assert (=> b!7061351 m!7781800))

(assert (=> b!7061345 m!7781796))

(declare-fun m!7781802 () Bool)

(assert (=> b!7061345 m!7781802))

(declare-fun m!7781804 () Bool)

(assert (=> b!7061353 m!7781804))

(declare-fun m!7781806 () Bool)

(assert (=> d!2207699 m!7781806))

(declare-fun m!7781808 () Bool)

(assert (=> d!2207699 m!7781808))

(assert (=> d!2207699 m!7781480))

(assert (=> b!7061346 m!7781806))

(assert (=> b!7061202 d!2207699))

(declare-fun d!2207701 () Bool)

(declare-fun c!1316163 () Bool)

(assert (=> d!2207701 (= c!1316163 (isEmpty!39774 (_1!37398 lt!2536037)))))

(declare-fun e!4245197 () Bool)

(assert (=> d!2207701 (= (matchZipper!3134 lt!2536026 (_1!37398 lt!2536037)) e!4245197)))

(declare-fun b!7061354 () Bool)

(assert (=> b!7061354 (= e!4245197 (nullableZipper!2671 lt!2536026))))

(declare-fun b!7061355 () Bool)

(assert (=> b!7061355 (= e!4245197 (matchZipper!3134 (derivationStepZipper!3044 lt!2536026 (head!14374 (_1!37398 lt!2536037))) (tail!13740 (_1!37398 lt!2536037))))))

(assert (= (and d!2207701 c!1316163) b!7061354))

(assert (= (and d!2207701 (not c!1316163)) b!7061355))

(assert (=> d!2207701 m!7781548))

(declare-fun m!7781810 () Bool)

(assert (=> b!7061354 m!7781810))

(assert (=> b!7061355 m!7781778))

(assert (=> b!7061355 m!7781778))

(declare-fun m!7781812 () Bool)

(assert (=> b!7061355 m!7781812))

(assert (=> b!7061355 m!7781782))

(assert (=> b!7061355 m!7781812))

(assert (=> b!7061355 m!7781782))

(declare-fun m!7781814 () Bool)

(assert (=> b!7061355 m!7781814))

(assert (=> b!7061202 d!2207701))

(declare-fun d!2207703 () Bool)

(assert (=> d!2207703 (= (get!23875 lt!2535990) (v!53220 lt!2535990))))

(assert (=> b!7061202 d!2207703))

(declare-fun d!2207705 () Bool)

(assert (=> d!2207705 (isDefined!13628 (findConcatSeparationZippers!443 lt!2536026 (set.insert ct2!306 (as set.empty (Set Context!13180))) Nil!68185 s!7408 s!7408))))

(declare-fun lt!2536234 () Unit!161864)

(declare-fun choose!53928 ((Set Context!13180) Context!13180 List!68309) Unit!161864)

(assert (=> d!2207705 (= lt!2536234 (choose!53928 lt!2536026 ct2!306 s!7408))))

(assert (=> d!2207705 (matchZipper!3134 (appendTo!715 lt!2536026 ct2!306) s!7408)))

(assert (=> d!2207705 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!431 lt!2536026 ct2!306 s!7408) lt!2536234)))

(declare-fun bs!1879116 () Bool)

(assert (= bs!1879116 d!2207705))

(assert (=> bs!1879116 m!7781508))

(declare-fun m!7781816 () Bool)

(assert (=> bs!1879116 m!7781816))

(declare-fun m!7781818 () Bool)

(assert (=> bs!1879116 m!7781818))

(assert (=> bs!1879116 m!7781816))

(declare-fun m!7781820 () Bool)

(assert (=> bs!1879116 m!7781820))

(declare-fun m!7781822 () Bool)

(assert (=> bs!1879116 m!7781822))

(assert (=> bs!1879116 m!7781508))

(assert (=> bs!1879116 m!7781820))

(declare-fun m!7781824 () Bool)

(assert (=> bs!1879116 m!7781824))

(assert (=> b!7061202 d!2207705))

(declare-fun d!2207707 () Bool)

(assert (=> d!2207707 (forall!16544 (++!15686 (exprs!7090 lt!2536013) (exprs!7090 ct2!306)) lambda!422061)))

(declare-fun lt!2536235 () Unit!161864)

(assert (=> d!2207707 (= lt!2536235 (choose!53925 (exprs!7090 lt!2536013) (exprs!7090 ct2!306) lambda!422061))))

(assert (=> d!2207707 (forall!16544 (exprs!7090 lt!2536013) lambda!422061)))

(assert (=> d!2207707 (= (lemmaConcatPreservesForall!905 (exprs!7090 lt!2536013) (exprs!7090 ct2!306) lambda!422061) lt!2536235)))

(declare-fun bs!1879117 () Bool)

(assert (= bs!1879117 d!2207707))

(assert (=> bs!1879117 m!7781560))

(assert (=> bs!1879117 m!7781560))

(declare-fun m!7781826 () Bool)

(assert (=> bs!1879117 m!7781826))

(declare-fun m!7781828 () Bool)

(assert (=> bs!1879117 m!7781828))

(declare-fun m!7781830 () Bool)

(assert (=> bs!1879117 m!7781830))

(assert (=> b!7061181 d!2207707))

(declare-fun d!2207709 () Bool)

(declare-fun c!1316168 () Bool)

(declare-fun e!4245206 () Bool)

(assert (=> d!2207709 (= c!1316168 e!4245206)))

(declare-fun res!2882942 () Bool)

(assert (=> d!2207709 (=> (not res!2882942) (not e!4245206))))

(assert (=> d!2207709 (= res!2882942 (is-Cons!68184 (exprs!7090 lt!2536039)))))

(declare-fun e!4245204 () (Set Context!13180))

(assert (=> d!2207709 (= (derivationStepZipperUp!2178 lt!2536039 (h!74633 s!7408)) e!4245204)))

(declare-fun call!641661 () (Set Context!13180))

(declare-fun b!7061366 () Bool)

(assert (=> b!7061366 (= e!4245204 (set.union call!641661 (derivationStepZipperUp!2178 (Context!13181 (t!382089 (exprs!7090 lt!2536039))) (h!74633 s!7408))))))

(declare-fun b!7061367 () Bool)

(declare-fun e!4245205 () (Set Context!13180))

(assert (=> b!7061367 (= e!4245205 (as set.empty (Set Context!13180)))))

(declare-fun b!7061368 () Bool)

(assert (=> b!7061368 (= e!4245206 (nullable!7277 (h!74632 (exprs!7090 lt!2536039))))))

(declare-fun b!7061369 () Bool)

(assert (=> b!7061369 (= e!4245205 call!641661)))

(declare-fun bm!641656 () Bool)

(assert (=> bm!641656 (= call!641661 (derivationStepZipperDown!2228 (h!74632 (exprs!7090 lt!2536039)) (Context!13181 (t!382089 (exprs!7090 lt!2536039))) (h!74633 s!7408)))))

(declare-fun b!7061370 () Bool)

(assert (=> b!7061370 (= e!4245204 e!4245205)))

(declare-fun c!1316169 () Bool)

(assert (=> b!7061370 (= c!1316169 (is-Cons!68184 (exprs!7090 lt!2536039)))))

(assert (= (and d!2207709 res!2882942) b!7061368))

(assert (= (and d!2207709 c!1316168) b!7061366))

(assert (= (and d!2207709 (not c!1316168)) b!7061370))

(assert (= (and b!7061370 c!1316169) b!7061369))

(assert (= (and b!7061370 (not c!1316169)) b!7061367))

(assert (= (or b!7061366 b!7061369) bm!641656))

(declare-fun m!7781832 () Bool)

(assert (=> b!7061366 m!7781832))

(declare-fun m!7781834 () Bool)

(assert (=> b!7061368 m!7781834))

(declare-fun m!7781836 () Bool)

(assert (=> bm!641656 m!7781836))

(assert (=> b!7061181 d!2207709))

(declare-fun d!2207711 () Bool)

(declare-fun choose!53929 ((Set Context!13180) Int) (Set Context!13180))

(assert (=> d!2207711 (= (flatMap!2520 lt!2536002 lambda!422062) (choose!53929 lt!2536002 lambda!422062))))

(declare-fun bs!1879118 () Bool)

(assert (= bs!1879118 d!2207711))

(declare-fun m!7781838 () Bool)

(assert (=> bs!1879118 m!7781838))

(assert (=> b!7061181 d!2207711))

(declare-fun bs!1879119 () Bool)

(declare-fun d!2207713 () Bool)

(assert (= bs!1879119 (and d!2207713 b!7061181)))

(declare-fun lambda!422135 () Int)

(assert (=> bs!1879119 (= lambda!422135 lambda!422062)))

(assert (=> d!2207713 true))

(assert (=> d!2207713 (= (derivationStepZipper!3044 lt!2536002 (h!74633 s!7408)) (flatMap!2520 lt!2536002 lambda!422135))))

(declare-fun bs!1879120 () Bool)

(assert (= bs!1879120 d!2207713))

(declare-fun m!7781840 () Bool)

(assert (=> bs!1879120 m!7781840))

(assert (=> b!7061181 d!2207713))

(declare-fun d!2207715 () Bool)

(declare-fun dynLambda!27691 (Int Context!13180) (Set Context!13180))

(assert (=> d!2207715 (= (flatMap!2520 lt!2536002 lambda!422062) (dynLambda!27691 lambda!422062 lt!2536039))))

(declare-fun lt!2536238 () Unit!161864)

(declare-fun choose!53930 ((Set Context!13180) Context!13180 Int) Unit!161864)

(assert (=> d!2207715 (= lt!2536238 (choose!53930 lt!2536002 lt!2536039 lambda!422062))))

(assert (=> d!2207715 (= lt!2536002 (set.insert lt!2536039 (as set.empty (Set Context!13180))))))

(assert (=> d!2207715 (= (lemmaFlatMapOnSingletonSet!2029 lt!2536002 lt!2536039 lambda!422062) lt!2536238)))

(declare-fun b_lambda!269267 () Bool)

(assert (=> (not b_lambda!269267) (not d!2207715)))

(declare-fun bs!1879121 () Bool)

(assert (= bs!1879121 d!2207715))

(assert (=> bs!1879121 m!7781588))

(declare-fun m!7781842 () Bool)

(assert (=> bs!1879121 m!7781842))

(declare-fun m!7781844 () Bool)

(assert (=> bs!1879121 m!7781844))

(assert (=> bs!1879121 m!7781538))

(assert (=> b!7061181 d!2207715))

(declare-fun d!2207717 () Bool)

(declare-fun e!4245211 () Bool)

(assert (=> d!2207717 e!4245211))

(declare-fun res!2882947 () Bool)

(assert (=> d!2207717 (=> (not res!2882947) (not e!4245211))))

(declare-fun lt!2536241 () List!68309)

(declare-fun content!13713 (List!68309) (Set C!35458))

(assert (=> d!2207717 (= res!2882947 (= (content!13713 lt!2536241) (set.union (content!13713 Nil!68185) (content!13713 s!7408))))))

(declare-fun e!4245212 () List!68309)

(assert (=> d!2207717 (= lt!2536241 e!4245212)))

(declare-fun c!1316174 () Bool)

(assert (=> d!2207717 (= c!1316174 (is-Nil!68185 Nil!68185))))

(assert (=> d!2207717 (= (++!15685 Nil!68185 s!7408) lt!2536241)))

(declare-fun b!7061381 () Bool)

(assert (=> b!7061381 (= e!4245212 s!7408)))

(declare-fun b!7061382 () Bool)

(assert (=> b!7061382 (= e!4245212 (Cons!68185 (h!74633 Nil!68185) (++!15685 (t!382090 Nil!68185) s!7408)))))

(declare-fun b!7061384 () Bool)

(assert (=> b!7061384 (= e!4245211 (or (not (= s!7408 Nil!68185)) (= lt!2536241 Nil!68185)))))

(declare-fun b!7061383 () Bool)

(declare-fun res!2882948 () Bool)

(assert (=> b!7061383 (=> (not res!2882948) (not e!4245211))))

(declare-fun size!41167 (List!68309) Int)

(assert (=> b!7061383 (= res!2882948 (= (size!41167 lt!2536241) (+ (size!41167 Nil!68185) (size!41167 s!7408))))))

(assert (= (and d!2207717 c!1316174) b!7061381))

(assert (= (and d!2207717 (not c!1316174)) b!7061382))

(assert (= (and d!2207717 res!2882947) b!7061383))

(assert (= (and b!7061383 res!2882948) b!7061384))

(declare-fun m!7781846 () Bool)

(assert (=> d!2207717 m!7781846))

(declare-fun m!7781848 () Bool)

(assert (=> d!2207717 m!7781848))

(declare-fun m!7781850 () Bool)

(assert (=> d!2207717 m!7781850))

(declare-fun m!7781852 () Bool)

(assert (=> b!7061382 m!7781852))

(declare-fun m!7781854 () Bool)

(assert (=> b!7061383 m!7781854))

(declare-fun m!7781856 () Bool)

(assert (=> b!7061383 m!7781856))

(declare-fun m!7781858 () Bool)

(assert (=> b!7061383 m!7781858))

(assert (=> b!7061180 d!2207717))

(assert (=> b!7061199 d!2207685))

(declare-fun d!2207719 () Bool)

(assert (=> d!2207719 (= (flatMap!2520 lt!2536019 lambda!422062) (choose!53929 lt!2536019 lambda!422062))))

(declare-fun bs!1879122 () Bool)

(assert (= bs!1879122 d!2207719))

(declare-fun m!7781860 () Bool)

(assert (=> bs!1879122 m!7781860))

(assert (=> b!7061199 d!2207719))

(declare-fun bs!1879123 () Bool)

(declare-fun d!2207721 () Bool)

(assert (= bs!1879123 (and d!2207721 b!7061181)))

(declare-fun lambda!422136 () Int)

(assert (=> bs!1879123 (= lambda!422136 lambda!422062)))

(declare-fun bs!1879124 () Bool)

(assert (= bs!1879124 (and d!2207721 d!2207713)))

(assert (=> bs!1879124 (= lambda!422136 lambda!422135)))

(assert (=> d!2207721 true))

(assert (=> d!2207721 (= (derivationStepZipper!3044 lt!2536019 (h!74633 s!7408)) (flatMap!2520 lt!2536019 lambda!422136))))

(declare-fun bs!1879125 () Bool)

(assert (= bs!1879125 d!2207721))

(declare-fun m!7781862 () Bool)

(assert (=> bs!1879125 m!7781862))

(assert (=> b!7061199 d!2207721))

(declare-fun d!2207723 () Bool)

(declare-fun c!1316175 () Bool)

(declare-fun e!4245215 () Bool)

(assert (=> d!2207723 (= c!1316175 e!4245215)))

(declare-fun res!2882949 () Bool)

(assert (=> d!2207723 (=> (not res!2882949) (not e!4245215))))

(assert (=> d!2207723 (= res!2882949 (is-Cons!68184 (exprs!7090 lt!2536035)))))

(declare-fun e!4245213 () (Set Context!13180))

(assert (=> d!2207723 (= (derivationStepZipperUp!2178 lt!2536035 (h!74633 s!7408)) e!4245213)))

(declare-fun b!7061385 () Bool)

(declare-fun call!641662 () (Set Context!13180))

(assert (=> b!7061385 (= e!4245213 (set.union call!641662 (derivationStepZipperUp!2178 (Context!13181 (t!382089 (exprs!7090 lt!2536035))) (h!74633 s!7408))))))

(declare-fun b!7061386 () Bool)

(declare-fun e!4245214 () (Set Context!13180))

(assert (=> b!7061386 (= e!4245214 (as set.empty (Set Context!13180)))))

(declare-fun b!7061387 () Bool)

(assert (=> b!7061387 (= e!4245215 (nullable!7277 (h!74632 (exprs!7090 lt!2536035))))))

(declare-fun b!7061388 () Bool)

(assert (=> b!7061388 (= e!4245214 call!641662)))

(declare-fun bm!641657 () Bool)

(assert (=> bm!641657 (= call!641662 (derivationStepZipperDown!2228 (h!74632 (exprs!7090 lt!2536035)) (Context!13181 (t!382089 (exprs!7090 lt!2536035))) (h!74633 s!7408)))))

(declare-fun b!7061389 () Bool)

(assert (=> b!7061389 (= e!4245213 e!4245214)))

(declare-fun c!1316176 () Bool)

(assert (=> b!7061389 (= c!1316176 (is-Cons!68184 (exprs!7090 lt!2536035)))))

(assert (= (and d!2207723 res!2882949) b!7061387))

(assert (= (and d!2207723 c!1316175) b!7061385))

(assert (= (and d!2207723 (not c!1316175)) b!7061389))

(assert (= (and b!7061389 c!1316176) b!7061388))

(assert (= (and b!7061389 (not c!1316176)) b!7061386))

(assert (= (or b!7061385 b!7061388) bm!641657))

(declare-fun m!7781864 () Bool)

(assert (=> b!7061385 m!7781864))

(declare-fun m!7781866 () Bool)

(assert (=> b!7061387 m!7781866))

(declare-fun m!7781868 () Bool)

(assert (=> bm!641657 m!7781868))

(assert (=> b!7061199 d!2207723))

(declare-fun d!2207725 () Bool)

(assert (=> d!2207725 (= (flatMap!2520 lt!2536019 lambda!422062) (dynLambda!27691 lambda!422062 lt!2536035))))

(declare-fun lt!2536242 () Unit!161864)

(assert (=> d!2207725 (= lt!2536242 (choose!53930 lt!2536019 lt!2536035 lambda!422062))))

(assert (=> d!2207725 (= lt!2536019 (set.insert lt!2536035 (as set.empty (Set Context!13180))))))

(assert (=> d!2207725 (= (lemmaFlatMapOnSingletonSet!2029 lt!2536019 lt!2536035 lambda!422062) lt!2536242)))

(declare-fun b_lambda!269269 () Bool)

(assert (=> (not b_lambda!269269) (not d!2207725)))

(declare-fun bs!1879126 () Bool)

(assert (= bs!1879126 d!2207725))

(assert (=> bs!1879126 m!7781528))

(declare-fun m!7781870 () Bool)

(assert (=> bs!1879126 m!7781870))

(declare-fun m!7781872 () Bool)

(assert (=> bs!1879126 m!7781872))

(assert (=> bs!1879126 m!7781526))

(assert (=> b!7061199 d!2207725))

(declare-fun d!2207727 () Bool)

(declare-fun c!1316177 () Bool)

(assert (=> d!2207727 (= c!1316177 (isEmpty!39774 (_2!37398 lt!2536037)))))

(declare-fun e!4245216 () Bool)

(assert (=> d!2207727 (= (matchZipper!3134 lt!2536022 (_2!37398 lt!2536037)) e!4245216)))

(declare-fun b!7061390 () Bool)

(assert (=> b!7061390 (= e!4245216 (nullableZipper!2671 lt!2536022))))

(declare-fun b!7061391 () Bool)

(assert (=> b!7061391 (= e!4245216 (matchZipper!3134 (derivationStepZipper!3044 lt!2536022 (head!14374 (_2!37398 lt!2536037))) (tail!13740 (_2!37398 lt!2536037))))))

(assert (= (and d!2207727 c!1316177) b!7061390))

(assert (= (and d!2207727 (not c!1316177)) b!7061391))

(declare-fun m!7781874 () Bool)

(assert (=> d!2207727 m!7781874))

(declare-fun m!7781876 () Bool)

(assert (=> b!7061390 m!7781876))

(declare-fun m!7781878 () Bool)

(assert (=> b!7061391 m!7781878))

(assert (=> b!7061391 m!7781878))

(declare-fun m!7781880 () Bool)

(assert (=> b!7061391 m!7781880))

(declare-fun m!7781882 () Bool)

(assert (=> b!7061391 m!7781882))

(assert (=> b!7061391 m!7781880))

(assert (=> b!7061391 m!7781882))

(declare-fun m!7781884 () Bool)

(assert (=> b!7061391 m!7781884))

(assert (=> b!7061179 d!2207727))

(assert (=> b!7061198 d!2207691))

(declare-fun d!2207729 () Bool)

(declare-fun c!1316178 () Bool)

(assert (=> d!2207729 (= c!1316178 (isEmpty!39774 s!7408))))

(declare-fun e!4245217 () Bool)

(assert (=> d!2207729 (= (matchZipper!3134 lt!2536019 s!7408) e!4245217)))

(declare-fun b!7061392 () Bool)

(assert (=> b!7061392 (= e!4245217 (nullableZipper!2671 lt!2536019))))

(declare-fun b!7061393 () Bool)

(assert (=> b!7061393 (= e!4245217 (matchZipper!3134 (derivationStepZipper!3044 lt!2536019 (head!14374 s!7408)) (tail!13740 s!7408)))))

(assert (= (and d!2207729 c!1316178) b!7061392))

(assert (= (and d!2207729 (not c!1316178)) b!7061393))

(declare-fun m!7781886 () Bool)

(assert (=> d!2207729 m!7781886))

(declare-fun m!7781888 () Bool)

(assert (=> b!7061392 m!7781888))

(declare-fun m!7781890 () Bool)

(assert (=> b!7061393 m!7781890))

(assert (=> b!7061393 m!7781890))

(declare-fun m!7781892 () Bool)

(assert (=> b!7061393 m!7781892))

(declare-fun m!7781894 () Bool)

(assert (=> b!7061393 m!7781894))

(assert (=> b!7061393 m!7781892))

(assert (=> b!7061393 m!7781894))

(declare-fun m!7781896 () Bool)

(assert (=> b!7061393 m!7781896))

(assert (=> b!7061197 d!2207729))

(assert (=> b!7061197 d!2207685))

(declare-fun d!2207731 () Bool)

(declare-fun e!4245222 () Bool)

(assert (=> d!2207731 e!4245222))

(declare-fun res!2882954 () Bool)

(assert (=> d!2207731 (=> (not res!2882954) (not e!4245222))))

(declare-fun lt!2536245 () List!68308)

(declare-fun content!13714 (List!68308) (Set Regex!17594))

(assert (=> d!2207731 (= res!2882954 (= (content!13714 lt!2536245) (set.union (content!13714 lt!2536033) (content!13714 (exprs!7090 ct2!306)))))))

(declare-fun e!4245223 () List!68308)

(assert (=> d!2207731 (= lt!2536245 e!4245223)))

(declare-fun c!1316181 () Bool)

(assert (=> d!2207731 (= c!1316181 (is-Nil!68184 lt!2536033))))

(assert (=> d!2207731 (= (++!15686 lt!2536033 (exprs!7090 ct2!306)) lt!2536245)))

(declare-fun b!7061404 () Bool)

(declare-fun res!2882955 () Bool)

(assert (=> b!7061404 (=> (not res!2882955) (not e!4245222))))

(declare-fun size!41168 (List!68308) Int)

(assert (=> b!7061404 (= res!2882955 (= (size!41168 lt!2536245) (+ (size!41168 lt!2536033) (size!41168 (exprs!7090 ct2!306)))))))

(declare-fun b!7061403 () Bool)

(assert (=> b!7061403 (= e!4245223 (Cons!68184 (h!74632 lt!2536033) (++!15686 (t!382089 lt!2536033) (exprs!7090 ct2!306))))))

(declare-fun b!7061402 () Bool)

(assert (=> b!7061402 (= e!4245223 (exprs!7090 ct2!306))))

(declare-fun b!7061405 () Bool)

(assert (=> b!7061405 (= e!4245222 (or (not (= (exprs!7090 ct2!306) Nil!68184)) (= lt!2536245 lt!2536033)))))

(assert (= (and d!2207731 c!1316181) b!7061402))

(assert (= (and d!2207731 (not c!1316181)) b!7061403))

(assert (= (and d!2207731 res!2882954) b!7061404))

(assert (= (and b!7061404 res!2882955) b!7061405))

(declare-fun m!7781898 () Bool)

(assert (=> d!2207731 m!7781898))

(declare-fun m!7781900 () Bool)

(assert (=> d!2207731 m!7781900))

(declare-fun m!7781902 () Bool)

(assert (=> d!2207731 m!7781902))

(declare-fun m!7781904 () Bool)

(assert (=> b!7061404 m!7781904))

(declare-fun m!7781906 () Bool)

(assert (=> b!7061404 m!7781906))

(declare-fun m!7781908 () Bool)

(assert (=> b!7061404 m!7781908))

(declare-fun m!7781910 () Bool)

(assert (=> b!7061403 m!7781910))

(assert (=> b!7061196 d!2207731))

(declare-fun d!2207733 () Bool)

(assert (=> d!2207733 (= (flatMap!2520 lt!2536026 lambda!422062) (choose!53929 lt!2536026 lambda!422062))))

(declare-fun bs!1879127 () Bool)

(assert (= bs!1879127 d!2207733))

(declare-fun m!7781912 () Bool)

(assert (=> bs!1879127 m!7781912))

(assert (=> b!7061196 d!2207733))

(declare-fun d!2207735 () Bool)

(declare-fun lt!2536248 () Int)

(assert (=> d!2207735 (>= lt!2536248 0)))

(declare-fun e!4245226 () Int)

(assert (=> d!2207735 (= lt!2536248 e!4245226)))

(declare-fun c!1316185 () Bool)

(assert (=> d!2207735 (= c!1316185 (is-Cons!68184 (exprs!7090 lt!2536021)))))

(assert (=> d!2207735 (= (contextDepthTotal!530 lt!2536021) lt!2536248)))

(declare-fun b!7061410 () Bool)

(declare-fun regexDepthTotal!320 (Regex!17594) Int)

(assert (=> b!7061410 (= e!4245226 (+ (regexDepthTotal!320 (h!74632 (exprs!7090 lt!2536021))) (contextDepthTotal!530 (Context!13181 (t!382089 (exprs!7090 lt!2536021))))))))

(declare-fun b!7061411 () Bool)

(assert (=> b!7061411 (= e!4245226 1)))

(assert (= (and d!2207735 c!1316185) b!7061410))

(assert (= (and d!2207735 (not c!1316185)) b!7061411))

(declare-fun m!7781914 () Bool)

(assert (=> b!7061410 m!7781914))

(declare-fun m!7781916 () Bool)

(assert (=> b!7061410 m!7781916))

(assert (=> b!7061196 d!2207735))

(declare-fun d!2207737 () Bool)

(declare-fun c!1316186 () Bool)

(declare-fun e!4245229 () Bool)

(assert (=> d!2207737 (= c!1316186 e!4245229)))

(declare-fun res!2882956 () Bool)

(assert (=> d!2207737 (=> (not res!2882956) (not e!4245229))))

(assert (=> d!2207737 (= res!2882956 (is-Cons!68184 (exprs!7090 lt!2536021)))))

(declare-fun e!4245227 () (Set Context!13180))

(assert (=> d!2207737 (= (derivationStepZipperUp!2178 lt!2536021 (h!74633 s!7408)) e!4245227)))

(declare-fun call!641663 () (Set Context!13180))

(declare-fun b!7061412 () Bool)

(assert (=> b!7061412 (= e!4245227 (set.union call!641663 (derivationStepZipperUp!2178 (Context!13181 (t!382089 (exprs!7090 lt!2536021))) (h!74633 s!7408))))))

(declare-fun b!7061413 () Bool)

(declare-fun e!4245228 () (Set Context!13180))

(assert (=> b!7061413 (= e!4245228 (as set.empty (Set Context!13180)))))

(declare-fun b!7061414 () Bool)

(assert (=> b!7061414 (= e!4245229 (nullable!7277 (h!74632 (exprs!7090 lt!2536021))))))

(declare-fun b!7061415 () Bool)

(assert (=> b!7061415 (= e!4245228 call!641663)))

(declare-fun bm!641658 () Bool)

(assert (=> bm!641658 (= call!641663 (derivationStepZipperDown!2228 (h!74632 (exprs!7090 lt!2536021)) (Context!13181 (t!382089 (exprs!7090 lt!2536021))) (h!74633 s!7408)))))

(declare-fun b!7061416 () Bool)

(assert (=> b!7061416 (= e!4245227 e!4245228)))

(declare-fun c!1316187 () Bool)

(assert (=> b!7061416 (= c!1316187 (is-Cons!68184 (exprs!7090 lt!2536021)))))

(assert (= (and d!2207737 res!2882956) b!7061414))

(assert (= (and d!2207737 c!1316186) b!7061412))

(assert (= (and d!2207737 (not c!1316186)) b!7061416))

(assert (= (and b!7061416 c!1316187) b!7061415))

(assert (= (and b!7061416 (not c!1316187)) b!7061413))

(assert (= (or b!7061412 b!7061415) bm!641658))

(declare-fun m!7781918 () Bool)

(assert (=> b!7061412 m!7781918))

(declare-fun m!7781920 () Bool)

(assert (=> b!7061414 m!7781920))

(declare-fun m!7781922 () Bool)

(assert (=> bm!641658 m!7781922))

(assert (=> b!7061196 d!2207737))

(declare-fun d!2207739 () Bool)

(declare-fun e!4245232 () Bool)

(assert (=> d!2207739 e!4245232))

(declare-fun res!2882959 () Bool)

(assert (=> d!2207739 (=> (not res!2882959) (not e!4245232))))

(declare-fun lt!2536251 () List!68310)

(declare-fun noDuplicate!2702 (List!68310) Bool)

(assert (=> d!2207739 (= res!2882959 (noDuplicate!2702 lt!2536251))))

(declare-fun choose!53931 ((Set Context!13180)) List!68310)

(assert (=> d!2207739 (= lt!2536251 (choose!53931 z1!570))))

(assert (=> d!2207739 (= (toList!10935 z1!570) lt!2536251)))

(declare-fun b!7061419 () Bool)

(declare-fun content!13715 (List!68310) (Set Context!13180))

(assert (=> b!7061419 (= e!4245232 (= (content!13715 lt!2536251) z1!570))))

(assert (= (and d!2207739 res!2882959) b!7061419))

(declare-fun m!7781924 () Bool)

(assert (=> d!2207739 m!7781924))

(declare-fun m!7781926 () Bool)

(assert (=> d!2207739 m!7781926))

(declare-fun m!7781928 () Bool)

(assert (=> b!7061419 m!7781928))

(assert (=> b!7061196 d!2207739))

(declare-fun d!2207741 () Bool)

(declare-fun dynLambda!27692 (Int Context!13180) Context!13180)

(assert (=> d!2207741 (= (map!15924 lt!2536026 lambda!422060) (set.insert (dynLambda!27692 lambda!422060 lt!2536021) (as set.empty (Set Context!13180))))))

(declare-fun lt!2536254 () Unit!161864)

(declare-fun choose!53932 ((Set Context!13180) Context!13180 Int) Unit!161864)

(assert (=> d!2207741 (= lt!2536254 (choose!53932 lt!2536026 lt!2536021 lambda!422060))))

(assert (=> d!2207741 (= lt!2536026 (set.insert lt!2536021 (as set.empty (Set Context!13180))))))

(assert (=> d!2207741 (= (lemmaMapOnSingletonSet!411 lt!2536026 lt!2536021 lambda!422060) lt!2536254)))

(declare-fun b_lambda!269271 () Bool)

(assert (=> (not b_lambda!269271) (not d!2207741)))

(declare-fun bs!1879128 () Bool)

(assert (= bs!1879128 d!2207741))

(declare-fun m!7781930 () Bool)

(assert (=> bs!1879128 m!7781930))

(declare-fun m!7781932 () Bool)

(assert (=> bs!1879128 m!7781932))

(assert (=> bs!1879128 m!7781486))

(assert (=> bs!1879128 m!7781492))

(declare-fun m!7781934 () Bool)

(assert (=> bs!1879128 m!7781934))

(assert (=> bs!1879128 m!7781930))

(assert (=> b!7061196 d!2207741))

(declare-fun d!2207743 () Bool)

(declare-fun lt!2536257 () Int)

(assert (=> d!2207743 (>= lt!2536257 0)))

(declare-fun e!4245235 () Int)

(assert (=> d!2207743 (= lt!2536257 e!4245235)))

(declare-fun c!1316190 () Bool)

(assert (=> d!2207743 (= c!1316190 (is-Cons!68186 lt!2536007))))

(assert (=> d!2207743 (= (zipperDepthTotal!559 lt!2536007) lt!2536257)))

(declare-fun b!7061424 () Bool)

(assert (=> b!7061424 (= e!4245235 (+ (contextDepthTotal!530 (h!74634 lt!2536007)) (zipperDepthTotal!559 (t!382091 lt!2536007))))))

(declare-fun b!7061425 () Bool)

(assert (=> b!7061425 (= e!4245235 0)))

(assert (= (and d!2207743 c!1316190) b!7061424))

(assert (= (and d!2207743 (not c!1316190)) b!7061425))

(declare-fun m!7781936 () Bool)

(assert (=> b!7061424 m!7781936))

(declare-fun m!7781938 () Bool)

(assert (=> b!7061424 m!7781938))

(assert (=> b!7061196 d!2207743))

(declare-fun d!2207745 () Bool)

(declare-fun choose!53933 ((Set Context!13180) Int) (Set Context!13180))

(assert (=> d!2207745 (= (map!15924 lt!2536026 lambda!422060) (choose!53933 lt!2536026 lambda!422060))))

(declare-fun bs!1879129 () Bool)

(assert (= bs!1879129 d!2207745))

(declare-fun m!7781940 () Bool)

(assert (=> bs!1879129 m!7781940))

(assert (=> b!7061196 d!2207745))

(declare-fun d!2207747 () Bool)

(assert (=> d!2207747 (<= (contextDepthTotal!530 lt!2536013) (zipperDepthTotal!559 lt!2536007))))

(declare-fun lt!2536260 () Unit!161864)

(declare-fun choose!53934 (List!68310 Context!13180) Unit!161864)

(assert (=> d!2207747 (= lt!2536260 (choose!53934 lt!2536007 lt!2536013))))

(declare-fun contains!20490 (List!68310 Context!13180) Bool)

(assert (=> d!2207747 (contains!20490 lt!2536007 lt!2536013)))

(assert (=> d!2207747 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!97 lt!2536007 lt!2536013) lt!2536260)))

(declare-fun bs!1879130 () Bool)

(assert (= bs!1879130 d!2207747))

(assert (=> bs!1879130 m!7781488))

(assert (=> bs!1879130 m!7781504))

(declare-fun m!7781942 () Bool)

(assert (=> bs!1879130 m!7781942))

(declare-fun m!7781944 () Bool)

(assert (=> bs!1879130 m!7781944))

(assert (=> b!7061196 d!2207747))

(declare-fun d!2207749 () Bool)

(assert (=> d!2207749 (= (flatMap!2520 lt!2536026 lambda!422062) (dynLambda!27691 lambda!422062 lt!2536021))))

(declare-fun lt!2536261 () Unit!161864)

(assert (=> d!2207749 (= lt!2536261 (choose!53930 lt!2536026 lt!2536021 lambda!422062))))

(assert (=> d!2207749 (= lt!2536026 (set.insert lt!2536021 (as set.empty (Set Context!13180))))))

(assert (=> d!2207749 (= (lemmaFlatMapOnSingletonSet!2029 lt!2536026 lt!2536021 lambda!422062) lt!2536261)))

(declare-fun b_lambda!269273 () Bool)

(assert (=> (not b_lambda!269273) (not d!2207749)))

(declare-fun bs!1879131 () Bool)

(assert (= bs!1879131 d!2207749))

(assert (=> bs!1879131 m!7781482))

(declare-fun m!7781946 () Bool)

(assert (=> bs!1879131 m!7781946))

(declare-fun m!7781948 () Bool)

(assert (=> bs!1879131 m!7781948))

(assert (=> bs!1879131 m!7781486))

(assert (=> b!7061196 d!2207749))

(declare-fun d!2207751 () Bool)

(declare-fun lt!2536262 () Int)

(assert (=> d!2207751 (>= lt!2536262 0)))

(declare-fun e!4245236 () Int)

(assert (=> d!2207751 (= lt!2536262 e!4245236)))

(declare-fun c!1316192 () Bool)

(assert (=> d!2207751 (= c!1316192 (is-Cons!68184 (exprs!7090 lt!2536013)))))

(assert (=> d!2207751 (= (contextDepthTotal!530 lt!2536013) lt!2536262)))

(declare-fun b!7061426 () Bool)

(assert (=> b!7061426 (= e!4245236 (+ (regexDepthTotal!320 (h!74632 (exprs!7090 lt!2536013))) (contextDepthTotal!530 (Context!13181 (t!382089 (exprs!7090 lt!2536013))))))))

(declare-fun b!7061427 () Bool)

(assert (=> b!7061427 (= e!4245236 1)))

(assert (= (and d!2207751 c!1316192) b!7061426))

(assert (= (and d!2207751 (not c!1316192)) b!7061427))

(declare-fun m!7781950 () Bool)

(assert (=> b!7061426 m!7781950))

(declare-fun m!7781952 () Bool)

(assert (=> b!7061426 m!7781952))

(assert (=> b!7061196 d!2207751))

(assert (=> b!7061196 d!2207685))

(assert (=> b!7061195 d!2207683))

(declare-fun bs!1879132 () Bool)

(declare-fun d!2207753 () Bool)

(assert (= bs!1879132 (and d!2207753 b!7061190)))

(declare-fun lambda!422139 () Int)

(assert (=> bs!1879132 (not (= lambda!422139 lambda!422061))))

(assert (=> d!2207753 (= (nullableContext!106 lt!2536013) (forall!16544 (exprs!7090 lt!2536013) lambda!422139))))

(declare-fun bs!1879133 () Bool)

(assert (= bs!1879133 d!2207753))

(declare-fun m!7781954 () Bool)

(assert (=> bs!1879133 m!7781954))

(assert (=> b!7061194 d!2207753))

(assert (=> b!7061193 d!2207685))

(declare-fun d!2207755 () Bool)

(declare-fun c!1316194 () Bool)

(assert (=> d!2207755 (= c!1316194 (isEmpty!39774 (t!382090 s!7408)))))

(declare-fun e!4245237 () Bool)

(assert (=> d!2207755 (= (matchZipper!3134 lt!2536018 (t!382090 s!7408)) e!4245237)))

(declare-fun b!7061428 () Bool)

(assert (=> b!7061428 (= e!4245237 (nullableZipper!2671 lt!2536018))))

(declare-fun b!7061429 () Bool)

(assert (=> b!7061429 (= e!4245237 (matchZipper!3134 (derivationStepZipper!3044 lt!2536018 (head!14374 (t!382090 s!7408))) (tail!13740 (t!382090 s!7408))))))

(assert (= (and d!2207755 c!1316194) b!7061428))

(assert (= (and d!2207755 (not c!1316194)) b!7061429))

(assert (=> d!2207755 m!7781738))

(declare-fun m!7781956 () Bool)

(assert (=> b!7061428 m!7781956))

(assert (=> b!7061429 m!7781742))

(assert (=> b!7061429 m!7781742))

(declare-fun m!7781958 () Bool)

(assert (=> b!7061429 m!7781958))

(assert (=> b!7061429 m!7781746))

(assert (=> b!7061429 m!7781958))

(assert (=> b!7061429 m!7781746))

(declare-fun m!7781960 () Bool)

(assert (=> b!7061429 m!7781960))

(assert (=> b!7061193 d!2207755))

(declare-fun d!2207757 () Bool)

(declare-fun c!1316195 () Bool)

(assert (=> d!2207757 (= c!1316195 (isEmpty!39774 (t!382090 s!7408)))))

(declare-fun e!4245238 () Bool)

(assert (=> d!2207757 (= (matchZipper!3134 lt!2536001 (t!382090 s!7408)) e!4245238)))

(declare-fun b!7061430 () Bool)

(assert (=> b!7061430 (= e!4245238 (nullableZipper!2671 lt!2536001))))

(declare-fun b!7061431 () Bool)

(assert (=> b!7061431 (= e!4245238 (matchZipper!3134 (derivationStepZipper!3044 lt!2536001 (head!14374 (t!382090 s!7408))) (tail!13740 (t!382090 s!7408))))))

(assert (= (and d!2207757 c!1316195) b!7061430))

(assert (= (and d!2207757 (not c!1316195)) b!7061431))

(assert (=> d!2207757 m!7781738))

(declare-fun m!7781962 () Bool)

(assert (=> b!7061430 m!7781962))

(assert (=> b!7061431 m!7781742))

(assert (=> b!7061431 m!7781742))

(declare-fun m!7781964 () Bool)

(assert (=> b!7061431 m!7781964))

(assert (=> b!7061431 m!7781746))

(assert (=> b!7061431 m!7781964))

(assert (=> b!7061431 m!7781746))

(declare-fun m!7781966 () Bool)

(assert (=> b!7061431 m!7781966))

(assert (=> b!7061193 d!2207757))

(declare-fun e!4245241 () Bool)

(declare-fun d!2207759 () Bool)

(assert (=> d!2207759 (= (matchZipper!3134 (set.union lt!2536018 lt!2535996) (t!382090 s!7408)) e!4245241)))

(declare-fun res!2882962 () Bool)

(assert (=> d!2207759 (=> res!2882962 e!4245241)))

(assert (=> d!2207759 (= res!2882962 (matchZipper!3134 lt!2536018 (t!382090 s!7408)))))

(declare-fun lt!2536265 () Unit!161864)

(declare-fun choose!53935 ((Set Context!13180) (Set Context!13180) List!68309) Unit!161864)

(assert (=> d!2207759 (= lt!2536265 (choose!53935 lt!2536018 lt!2535996 (t!382090 s!7408)))))

(assert (=> d!2207759 (= (lemmaZipperConcatMatchesSameAsBothZippers!1607 lt!2536018 lt!2535996 (t!382090 s!7408)) lt!2536265)))

(declare-fun b!7061434 () Bool)

(assert (=> b!7061434 (= e!4245241 (matchZipper!3134 lt!2535996 (t!382090 s!7408)))))

(assert (= (and d!2207759 (not res!2882962)) b!7061434))

(declare-fun m!7781968 () Bool)

(assert (=> d!2207759 m!7781968))

(assert (=> d!2207759 m!7781594))

(declare-fun m!7781970 () Bool)

(assert (=> d!2207759 m!7781970))

(assert (=> b!7061434 m!7781458))

(assert (=> b!7061193 d!2207759))

(declare-fun d!2207761 () Bool)

(declare-fun c!1316196 () Bool)

(assert (=> d!2207761 (= c!1316196 (isEmpty!39774 (t!382090 s!7408)))))

(declare-fun e!4245242 () Bool)

(assert (=> d!2207761 (= (matchZipper!3134 lt!2536015 (t!382090 s!7408)) e!4245242)))

(declare-fun b!7061435 () Bool)

(assert (=> b!7061435 (= e!4245242 (nullableZipper!2671 lt!2536015))))

(declare-fun b!7061436 () Bool)

(assert (=> b!7061436 (= e!4245242 (matchZipper!3134 (derivationStepZipper!3044 lt!2536015 (head!14374 (t!382090 s!7408))) (tail!13740 (t!382090 s!7408))))))

(assert (= (and d!2207761 c!1316196) b!7061435))

(assert (= (and d!2207761 (not c!1316196)) b!7061436))

(assert (=> d!2207761 m!7781738))

(declare-fun m!7781972 () Bool)

(assert (=> b!7061435 m!7781972))

(assert (=> b!7061436 m!7781742))

(assert (=> b!7061436 m!7781742))

(declare-fun m!7781974 () Bool)

(assert (=> b!7061436 m!7781974))

(assert (=> b!7061436 m!7781746))

(assert (=> b!7061436 m!7781974))

(assert (=> b!7061436 m!7781746))

(declare-fun m!7781976 () Bool)

(assert (=> b!7061436 m!7781976))

(assert (=> b!7061193 d!2207761))

(assert (=> b!7061192 d!2207685))

(assert (=> b!7061192 d!2207723))

(assert (=> b!7061192 d!2207731))

(declare-fun b!7061459 () Bool)

(declare-fun e!4245255 () (Set Context!13180))

(declare-fun e!4245257 () (Set Context!13180))

(assert (=> b!7061459 (= e!4245255 e!4245257)))

(declare-fun c!1316207 () Bool)

(assert (=> b!7061459 (= c!1316207 (is-Concat!26439 (h!74632 (exprs!7090 lt!2536013))))))

(declare-fun b!7061460 () Bool)

(declare-fun call!641681 () (Set Context!13180))

(assert (=> b!7061460 (= e!4245257 call!641681)))

(declare-fun bm!641671 () Bool)

(declare-fun call!641678 () List!68308)

(declare-fun call!641677 () List!68308)

(assert (=> bm!641671 (= call!641678 call!641677)))

(declare-fun bm!641672 () Bool)

(declare-fun call!641679 () (Set Context!13180))

(assert (=> bm!641672 (= call!641681 call!641679)))

(declare-fun b!7061461 () Bool)

(declare-fun e!4245260 () (Set Context!13180))

(assert (=> b!7061461 (= e!4245260 (as set.empty (Set Context!13180)))))

(declare-fun b!7061462 () Bool)

(declare-fun call!641676 () (Set Context!13180))

(assert (=> b!7061462 (= e!4245255 (set.union call!641676 call!641679))))

(declare-fun b!7061463 () Bool)

(declare-fun e!4245256 () (Set Context!13180))

(assert (=> b!7061463 (= e!4245256 (set.insert lt!2536035 (as set.empty (Set Context!13180))))))

(declare-fun b!7061464 () Bool)

(assert (=> b!7061464 (= e!4245260 call!641681)))

(declare-fun b!7061465 () Bool)

(declare-fun e!4245258 () Bool)

(assert (=> b!7061465 (= e!4245258 (nullable!7277 (regOne!35700 (h!74632 (exprs!7090 lt!2536013)))))))

(declare-fun c!1316211 () Bool)

(declare-fun bm!641673 () Bool)

(declare-fun $colon$colon!2633 (List!68308 Regex!17594) List!68308)

(assert (=> bm!641673 (= call!641677 ($colon$colon!2633 (exprs!7090 lt!2536035) (ite (or c!1316211 c!1316207) (regTwo!35700 (h!74632 (exprs!7090 lt!2536013))) (h!74632 (exprs!7090 lt!2536013)))))))

(declare-fun c!1316210 () Bool)

(declare-fun bm!641674 () Bool)

(assert (=> bm!641674 (= call!641676 (derivationStepZipperDown!2228 (ite c!1316210 (regOne!35701 (h!74632 (exprs!7090 lt!2536013))) (regOne!35700 (h!74632 (exprs!7090 lt!2536013)))) (ite c!1316210 lt!2536035 (Context!13181 call!641677)) (h!74633 s!7408)))))

(declare-fun b!7061466 () Bool)

(declare-fun c!1316209 () Bool)

(assert (=> b!7061466 (= c!1316209 (is-Star!17594 (h!74632 (exprs!7090 lt!2536013))))))

(assert (=> b!7061466 (= e!4245257 e!4245260)))

(declare-fun b!7061467 () Bool)

(declare-fun e!4245259 () (Set Context!13180))

(assert (=> b!7061467 (= e!4245256 e!4245259)))

(assert (=> b!7061467 (= c!1316210 (is-Union!17594 (h!74632 (exprs!7090 lt!2536013))))))

(declare-fun b!7061468 () Bool)

(declare-fun call!641680 () (Set Context!13180))

(assert (=> b!7061468 (= e!4245259 (set.union call!641676 call!641680))))

(declare-fun bm!641675 () Bool)

(assert (=> bm!641675 (= call!641680 (derivationStepZipperDown!2228 (ite c!1316210 (regTwo!35701 (h!74632 (exprs!7090 lt!2536013))) (ite c!1316211 (regTwo!35700 (h!74632 (exprs!7090 lt!2536013))) (ite c!1316207 (regOne!35700 (h!74632 (exprs!7090 lt!2536013))) (reg!17923 (h!74632 (exprs!7090 lt!2536013)))))) (ite (or c!1316210 c!1316211) lt!2536035 (Context!13181 call!641678)) (h!74633 s!7408)))))

(declare-fun d!2207763 () Bool)

(declare-fun c!1316208 () Bool)

(assert (=> d!2207763 (= c!1316208 (and (is-ElementMatch!17594 (h!74632 (exprs!7090 lt!2536013))) (= (c!1316129 (h!74632 (exprs!7090 lt!2536013))) (h!74633 s!7408))))))

(assert (=> d!2207763 (= (derivationStepZipperDown!2228 (h!74632 (exprs!7090 lt!2536013)) lt!2536035 (h!74633 s!7408)) e!4245256)))

(declare-fun b!7061469 () Bool)

(assert (=> b!7061469 (= c!1316211 e!4245258)))

(declare-fun res!2882965 () Bool)

(assert (=> b!7061469 (=> (not res!2882965) (not e!4245258))))

(assert (=> b!7061469 (= res!2882965 (is-Concat!26439 (h!74632 (exprs!7090 lt!2536013))))))

(assert (=> b!7061469 (= e!4245259 e!4245255)))

(declare-fun bm!641676 () Bool)

(assert (=> bm!641676 (= call!641679 call!641680)))

(assert (= (and d!2207763 c!1316208) b!7061463))

(assert (= (and d!2207763 (not c!1316208)) b!7061467))

(assert (= (and b!7061467 c!1316210) b!7061468))

(assert (= (and b!7061467 (not c!1316210)) b!7061469))

(assert (= (and b!7061469 res!2882965) b!7061465))

(assert (= (and b!7061469 c!1316211) b!7061462))

(assert (= (and b!7061469 (not c!1316211)) b!7061459))

(assert (= (and b!7061459 c!1316207) b!7061460))

(assert (= (and b!7061459 (not c!1316207)) b!7061466))

(assert (= (and b!7061466 c!1316209) b!7061464))

(assert (= (and b!7061466 (not c!1316209)) b!7061461))

(assert (= (or b!7061460 b!7061464) bm!641671))

(assert (= (or b!7061460 b!7061464) bm!641672))

(assert (= (or b!7061462 bm!641672) bm!641676))

(assert (= (or b!7061462 bm!641671) bm!641673))

(assert (= (or b!7061468 b!7061462) bm!641674))

(assert (= (or b!7061468 bm!641676) bm!641675))

(declare-fun m!7781978 () Bool)

(assert (=> bm!641675 m!7781978))

(declare-fun m!7781980 () Bool)

(assert (=> bm!641674 m!7781980))

(declare-fun m!7781982 () Bool)

(assert (=> b!7061465 m!7781982))

(assert (=> b!7061463 m!7781526))

(declare-fun m!7781984 () Bool)

(assert (=> bm!641673 m!7781984))

(assert (=> b!7061192 d!2207763))

(declare-fun d!2207765 () Bool)

(declare-fun lt!2536266 () Int)

(assert (=> d!2207765 (>= lt!2536266 0)))

(declare-fun e!4245261 () Int)

(assert (=> d!2207765 (= lt!2536266 e!4245261)))

(declare-fun c!1316212 () Bool)

(assert (=> d!2207765 (= c!1316212 (is-Cons!68186 (Cons!68186 lt!2536021 Nil!68186)))))

(assert (=> d!2207765 (= (zipperDepthTotal!559 (Cons!68186 lt!2536021 Nil!68186)) lt!2536266)))

(declare-fun b!7061470 () Bool)

(assert (=> b!7061470 (= e!4245261 (+ (contextDepthTotal!530 (h!74634 (Cons!68186 lt!2536021 Nil!68186))) (zipperDepthTotal!559 (t!382091 (Cons!68186 lt!2536021 Nil!68186)))))))

(declare-fun b!7061471 () Bool)

(assert (=> b!7061471 (= e!4245261 0)))

(assert (= (and d!2207765 c!1316212) b!7061470))

(assert (= (and d!2207765 (not c!1316212)) b!7061471))

(declare-fun m!7781986 () Bool)

(assert (=> b!7061470 m!7781986))

(declare-fun m!7781988 () Bool)

(assert (=> b!7061470 m!7781988))

(assert (=> b!7061210 d!2207765))

(declare-fun d!2207767 () Bool)

(declare-fun e!4245262 () Bool)

(assert (=> d!2207767 e!4245262))

(declare-fun res!2882966 () Bool)

(assert (=> d!2207767 (=> (not res!2882966) (not e!4245262))))

(declare-fun lt!2536267 () List!68308)

(assert (=> d!2207767 (= res!2882966 (= (content!13714 lt!2536267) (set.union (content!13714 (exprs!7090 lt!2536013)) (content!13714 (exprs!7090 ct2!306)))))))

(declare-fun e!4245263 () List!68308)

(assert (=> d!2207767 (= lt!2536267 e!4245263)))

(declare-fun c!1316213 () Bool)

(assert (=> d!2207767 (= c!1316213 (is-Nil!68184 (exprs!7090 lt!2536013)))))

(assert (=> d!2207767 (= (++!15686 (exprs!7090 lt!2536013) (exprs!7090 ct2!306)) lt!2536267)))

(declare-fun b!7061474 () Bool)

(declare-fun res!2882967 () Bool)

(assert (=> b!7061474 (=> (not res!2882967) (not e!4245262))))

(assert (=> b!7061474 (= res!2882967 (= (size!41168 lt!2536267) (+ (size!41168 (exprs!7090 lt!2536013)) (size!41168 (exprs!7090 ct2!306)))))))

(declare-fun b!7061473 () Bool)

(assert (=> b!7061473 (= e!4245263 (Cons!68184 (h!74632 (exprs!7090 lt!2536013)) (++!15686 (t!382089 (exprs!7090 lt!2536013)) (exprs!7090 ct2!306))))))

(declare-fun b!7061472 () Bool)

(assert (=> b!7061472 (= e!4245263 (exprs!7090 ct2!306))))

(declare-fun b!7061475 () Bool)

(assert (=> b!7061475 (= e!4245262 (or (not (= (exprs!7090 ct2!306) Nil!68184)) (= lt!2536267 (exprs!7090 lt!2536013))))))

(assert (= (and d!2207767 c!1316213) b!7061472))

(assert (= (and d!2207767 (not c!1316213)) b!7061473))

(assert (= (and d!2207767 res!2882966) b!7061474))

(assert (= (and b!7061474 res!2882967) b!7061475))

(declare-fun m!7781990 () Bool)

(assert (=> d!2207767 m!7781990))

(declare-fun m!7781992 () Bool)

(assert (=> d!2207767 m!7781992))

(assert (=> d!2207767 m!7781902))

(declare-fun m!7781994 () Bool)

(assert (=> b!7061474 m!7781994))

(declare-fun m!7781996 () Bool)

(assert (=> b!7061474 m!7781996))

(assert (=> b!7061474 m!7781908))

(declare-fun m!7781998 () Bool)

(assert (=> b!7061473 m!7781998))

(assert (=> b!7061190 d!2207767))

(assert (=> b!7061190 d!2207707))

(declare-fun d!2207769 () Bool)

(declare-fun e!4245266 () Bool)

(assert (=> d!2207769 e!4245266))

(declare-fun res!2882970 () Bool)

(assert (=> d!2207769 (=> (not res!2882970) (not e!4245266))))

(declare-fun lt!2536270 () Context!13180)

(assert (=> d!2207769 (= res!2882970 (= lt!2536000 (dynLambda!27692 lambda!422060 lt!2536270)))))

(declare-fun choose!53936 ((Set Context!13180) Int Context!13180) Context!13180)

(assert (=> d!2207769 (= lt!2536270 (choose!53936 z1!570 lambda!422060 lt!2536000))))

(assert (=> d!2207769 (set.member lt!2536000 (map!15924 z1!570 lambda!422060))))

(assert (=> d!2207769 (= (mapPost2!423 z1!570 lambda!422060 lt!2536000) lt!2536270)))

(declare-fun b!7061479 () Bool)

(assert (=> b!7061479 (= e!4245266 (set.member lt!2536270 z1!570))))

(assert (= (and d!2207769 res!2882970) b!7061479))

(declare-fun b_lambda!269275 () Bool)

(assert (=> (not b_lambda!269275) (not d!2207769)))

(declare-fun m!7782000 () Bool)

(assert (=> d!2207769 m!7782000))

(declare-fun m!7782002 () Bool)

(assert (=> d!2207769 m!7782002))

(declare-fun m!7782004 () Bool)

(assert (=> d!2207769 m!7782004))

(declare-fun m!7782006 () Bool)

(assert (=> d!2207769 m!7782006))

(declare-fun m!7782008 () Bool)

(assert (=> b!7061479 m!7782008))

(assert (=> b!7061190 d!2207769))

(declare-fun bs!1879134 () Bool)

(declare-fun d!2207771 () Bool)

(assert (= bs!1879134 (and d!2207771 b!7061190)))

(declare-fun lambda!422142 () Int)

(assert (=> bs!1879134 (= lambda!422142 lambda!422061)))

(declare-fun bs!1879135 () Bool)

(assert (= bs!1879135 (and d!2207771 d!2207753)))

(assert (=> bs!1879135 (not (= lambda!422142 lambda!422139))))

(assert (=> d!2207771 (= (inv!86845 setElem!50004) (forall!16544 (exprs!7090 setElem!50004) lambda!422142))))

(declare-fun bs!1879136 () Bool)

(assert (= bs!1879136 d!2207771))

(declare-fun m!7782010 () Bool)

(assert (=> bs!1879136 m!7782010))

(assert (=> setNonEmpty!50004 d!2207771))

(declare-fun bs!1879137 () Bool)

(declare-fun d!2207773 () Bool)

(assert (= bs!1879137 (and d!2207773 b!7061209)))

(declare-fun lambda!422145 () Int)

(assert (=> bs!1879137 (not (= lambda!422145 lambda!422059))))

(declare-fun bs!1879138 () Bool)

(assert (= bs!1879138 (and d!2207773 b!7061198)))

(assert (=> bs!1879138 (not (= lambda!422145 lambda!422063))))

(assert (=> d!2207773 true))

(declare-fun order!28349 () Int)

(declare-fun dynLambda!27693 (Int Int) Int)

(assert (=> d!2207773 (< (dynLambda!27693 order!28349 lambda!422059) (dynLambda!27693 order!28349 lambda!422145))))

(declare-fun forall!16545 (List!68310 Int) Bool)

(assert (=> d!2207773 (= (exists!3603 lt!2536017 lambda!422059) (not (forall!16545 lt!2536017 lambda!422145)))))

(declare-fun bs!1879139 () Bool)

(assert (= bs!1879139 d!2207773))

(declare-fun m!7782012 () Bool)

(assert (=> bs!1879139 m!7782012))

(assert (=> b!7061209 d!2207773))

(declare-fun d!2207775 () Bool)

(declare-fun c!1316214 () Bool)

(assert (=> d!2207775 (= c!1316214 (isEmpty!39774 s!7408))))

(declare-fun e!4245267 () Bool)

(assert (=> d!2207775 (= (matchZipper!3134 lt!2536024 s!7408) e!4245267)))

(declare-fun b!7061482 () Bool)

(assert (=> b!7061482 (= e!4245267 (nullableZipper!2671 lt!2536024))))

(declare-fun b!7061483 () Bool)

(assert (=> b!7061483 (= e!4245267 (matchZipper!3134 (derivationStepZipper!3044 lt!2536024 (head!14374 s!7408)) (tail!13740 s!7408)))))

(assert (= (and d!2207775 c!1316214) b!7061482))

(assert (= (and d!2207775 (not c!1316214)) b!7061483))

(assert (=> d!2207775 m!7781886))

(declare-fun m!7782014 () Bool)

(assert (=> b!7061482 m!7782014))

(assert (=> b!7061483 m!7781890))

(assert (=> b!7061483 m!7781890))

(declare-fun m!7782016 () Bool)

(assert (=> b!7061483 m!7782016))

(assert (=> b!7061483 m!7781894))

(assert (=> b!7061483 m!7782016))

(assert (=> b!7061483 m!7781894))

(declare-fun m!7782018 () Bool)

(assert (=> b!7061483 m!7782018))

(assert (=> b!7061209 d!2207775))

(declare-fun d!2207777 () Bool)

(declare-fun e!4245270 () Bool)

(assert (=> d!2207777 e!4245270))

(declare-fun res!2882973 () Bool)

(assert (=> d!2207777 (=> (not res!2882973) (not e!4245270))))

(declare-fun lt!2536273 () Context!13180)

(declare-fun dynLambda!27694 (Int Context!13180) Bool)

(assert (=> d!2207777 (= res!2882973 (dynLambda!27694 lambda!422059 lt!2536273))))

(declare-fun getWitness!1672 (List!68310 Int) Context!13180)

(assert (=> d!2207777 (= lt!2536273 (getWitness!1672 (toList!10935 lt!2536014) lambda!422059))))

(assert (=> d!2207777 (exists!3602 lt!2536014 lambda!422059)))

(assert (=> d!2207777 (= (getWitness!1670 lt!2536014 lambda!422059) lt!2536273)))

(declare-fun b!7061486 () Bool)

(assert (=> b!7061486 (= e!4245270 (set.member lt!2536273 lt!2536014))))

(assert (= (and d!2207777 res!2882973) b!7061486))

(declare-fun b_lambda!269277 () Bool)

(assert (=> (not b_lambda!269277) (not d!2207777)))

(declare-fun m!7782020 () Bool)

(assert (=> d!2207777 m!7782020))

(assert (=> d!2207777 m!7781474))

(assert (=> d!2207777 m!7781474))

(declare-fun m!7782022 () Bool)

(assert (=> d!2207777 m!7782022))

(declare-fun m!7782024 () Bool)

(assert (=> d!2207777 m!7782024))

(declare-fun m!7782026 () Bool)

(assert (=> b!7061486 m!7782026))

(assert (=> b!7061209 d!2207777))

(declare-fun d!2207779 () Bool)

(declare-fun e!4245271 () Bool)

(assert (=> d!2207779 e!4245271))

(declare-fun res!2882974 () Bool)

(assert (=> d!2207779 (=> (not res!2882974) (not e!4245271))))

(declare-fun lt!2536274 () List!68310)

(assert (=> d!2207779 (= res!2882974 (noDuplicate!2702 lt!2536274))))

(assert (=> d!2207779 (= lt!2536274 (choose!53931 lt!2536014))))

(assert (=> d!2207779 (= (toList!10935 lt!2536014) lt!2536274)))

(declare-fun b!7061487 () Bool)

(assert (=> b!7061487 (= e!4245271 (= (content!13715 lt!2536274) lt!2536014))))

(assert (= (and d!2207779 res!2882974) b!7061487))

(declare-fun m!7782028 () Bool)

(assert (=> d!2207779 m!7782028))

(declare-fun m!7782030 () Bool)

(assert (=> d!2207779 m!7782030))

(declare-fun m!7782032 () Bool)

(assert (=> b!7061487 m!7782032))

(assert (=> b!7061209 d!2207779))

(declare-fun bs!1879140 () Bool)

(declare-fun d!2207781 () Bool)

(assert (= bs!1879140 (and d!2207781 b!7061209)))

(declare-fun lambda!422148 () Int)

(assert (=> bs!1879140 (= lambda!422148 lambda!422059)))

(declare-fun bs!1879141 () Bool)

(assert (= bs!1879141 (and d!2207781 b!7061198)))

(assert (=> bs!1879141 (not (= lambda!422148 lambda!422063))))

(declare-fun bs!1879142 () Bool)

(assert (= bs!1879142 (and d!2207781 d!2207773)))

(assert (=> bs!1879142 (not (= lambda!422148 lambda!422145))))

(assert (=> d!2207781 true))

(assert (=> d!2207781 (exists!3603 lt!2536017 lambda!422148)))

(declare-fun lt!2536277 () Unit!161864)

(declare-fun choose!53937 (List!68310 List!68309) Unit!161864)

(assert (=> d!2207781 (= lt!2536277 (choose!53937 lt!2536017 s!7408))))

(assert (=> d!2207781 (matchZipper!3134 (content!13715 lt!2536017) s!7408)))

(assert (=> d!2207781 (= (lemmaZipperMatchesExistsMatchingContext!515 lt!2536017 s!7408) lt!2536277)))

(declare-fun bs!1879143 () Bool)

(assert (= bs!1879143 d!2207781))

(declare-fun m!7782034 () Bool)

(assert (=> bs!1879143 m!7782034))

(declare-fun m!7782036 () Bool)

(assert (=> bs!1879143 m!7782036))

(declare-fun m!7782038 () Bool)

(assert (=> bs!1879143 m!7782038))

(assert (=> bs!1879143 m!7782038))

(declare-fun m!7782040 () Bool)

(assert (=> bs!1879143 m!7782040))

(assert (=> b!7061209 d!2207781))

(declare-fun d!2207783 () Bool)

(assert (=> d!2207783 (= (isEmpty!39774 (_1!37398 lt!2536037)) (is-Nil!68185 (_1!37398 lt!2536037)))))

(assert (=> b!7061208 d!2207783))

(declare-fun d!2207785 () Bool)

(declare-fun e!4245272 () Bool)

(assert (=> d!2207785 e!4245272))

(declare-fun res!2882975 () Bool)

(assert (=> d!2207785 (=> (not res!2882975) (not e!4245272))))

(declare-fun lt!2536278 () List!68309)

(assert (=> d!2207785 (= res!2882975 (= (content!13713 lt!2536278) (set.union (content!13713 (_1!37398 lt!2536037)) (content!13713 (_2!37398 lt!2536037)))))))

(declare-fun e!4245273 () List!68309)

(assert (=> d!2207785 (= lt!2536278 e!4245273)))

(declare-fun c!1316217 () Bool)

(assert (=> d!2207785 (= c!1316217 (is-Nil!68185 (_1!37398 lt!2536037)))))

(assert (=> d!2207785 (= (++!15685 (_1!37398 lt!2536037) (_2!37398 lt!2536037)) lt!2536278)))

(declare-fun b!7061488 () Bool)

(assert (=> b!7061488 (= e!4245273 (_2!37398 lt!2536037))))

(declare-fun b!7061489 () Bool)

(assert (=> b!7061489 (= e!4245273 (Cons!68185 (h!74633 (_1!37398 lt!2536037)) (++!15685 (t!382090 (_1!37398 lt!2536037)) (_2!37398 lt!2536037))))))

(declare-fun b!7061491 () Bool)

(assert (=> b!7061491 (= e!4245272 (or (not (= (_2!37398 lt!2536037) Nil!68185)) (= lt!2536278 (_1!37398 lt!2536037))))))

(declare-fun b!7061490 () Bool)

(declare-fun res!2882976 () Bool)

(assert (=> b!7061490 (=> (not res!2882976) (not e!4245272))))

(assert (=> b!7061490 (= res!2882976 (= (size!41167 lt!2536278) (+ (size!41167 (_1!37398 lt!2536037)) (size!41167 (_2!37398 lt!2536037)))))))

(assert (= (and d!2207785 c!1316217) b!7061488))

(assert (= (and d!2207785 (not c!1316217)) b!7061489))

(assert (= (and d!2207785 res!2882975) b!7061490))

(assert (= (and b!7061490 res!2882976) b!7061491))

(declare-fun m!7782042 () Bool)

(assert (=> d!2207785 m!7782042))

(declare-fun m!7782044 () Bool)

(assert (=> d!2207785 m!7782044))

(declare-fun m!7782046 () Bool)

(assert (=> d!2207785 m!7782046))

(declare-fun m!7782048 () Bool)

(assert (=> b!7061489 m!7782048))

(declare-fun m!7782050 () Bool)

(assert (=> b!7061490 m!7782050))

(declare-fun m!7782052 () Bool)

(assert (=> b!7061490 m!7782052))

(declare-fun m!7782054 () Bool)

(assert (=> b!7061490 m!7782054))

(assert (=> b!7061189 d!2207785))

(declare-fun d!2207787 () Bool)

(declare-fun nullableFct!2787 (Regex!17594) Bool)

(assert (=> d!2207787 (= (nullable!7277 (h!74632 (exprs!7090 lt!2536013))) (nullableFct!2787 (h!74632 (exprs!7090 lt!2536013))))))

(declare-fun bs!1879144 () Bool)

(assert (= bs!1879144 d!2207787))

(declare-fun m!7782056 () Bool)

(assert (=> bs!1879144 m!7782056))

(assert (=> b!7061207 d!2207787))

(declare-fun d!2207789 () Bool)

(assert (=> d!2207789 (= (tail!13738 (exprs!7090 lt!2536013)) (t!382089 (exprs!7090 lt!2536013)))))

(assert (=> b!7061207 d!2207789))

(declare-fun bs!1879145 () Bool)

(declare-fun d!2207791 () Bool)

(assert (= bs!1879145 (and d!2207791 b!7061190)))

(declare-fun lambda!422149 () Int)

(assert (=> bs!1879145 (not (= lambda!422149 lambda!422061))))

(declare-fun bs!1879146 () Bool)

(assert (= bs!1879146 (and d!2207791 d!2207753)))

(assert (=> bs!1879146 (= lambda!422149 lambda!422139)))

(declare-fun bs!1879147 () Bool)

(assert (= bs!1879147 (and d!2207791 d!2207771)))

(assert (=> bs!1879147 (not (= lambda!422149 lambda!422142))))

(assert (=> d!2207791 (= (nullableContext!106 lt!2536021) (forall!16544 (exprs!7090 lt!2536021) lambda!422149))))

(declare-fun bs!1879148 () Bool)

(assert (= bs!1879148 d!2207791))

(declare-fun m!7782058 () Bool)

(assert (=> bs!1879148 m!7782058))

(assert (=> b!7061187 d!2207791))

(declare-fun d!2207793 () Bool)

(declare-fun e!4245274 () Bool)

(assert (=> d!2207793 e!4245274))

(declare-fun res!2882977 () Bool)

(assert (=> d!2207793 (=> (not res!2882977) (not e!4245274))))

(declare-fun lt!2536279 () Context!13180)

(assert (=> d!2207793 (= res!2882977 (dynLambda!27694 lambda!422063 lt!2536279))))

(assert (=> d!2207793 (= lt!2536279 (getWitness!1672 (toList!10935 lt!2536026) lambda!422063))))

(assert (=> d!2207793 (exists!3602 lt!2536026 lambda!422063)))

(assert (=> d!2207793 (= (getWitness!1670 lt!2536026 lambda!422063) lt!2536279)))

(declare-fun b!7061492 () Bool)

(assert (=> b!7061492 (= e!4245274 (set.member lt!2536279 lt!2536026))))

(assert (= (and d!2207793 res!2882977) b!7061492))

(declare-fun b_lambda!269279 () Bool)

(assert (=> (not b_lambda!269279) (not d!2207793)))

(declare-fun m!7782060 () Bool)

(assert (=> d!2207793 m!7782060))

(assert (=> d!2207793 m!7781764))

(assert (=> d!2207793 m!7781764))

(declare-fun m!7782062 () Bool)

(assert (=> d!2207793 m!7782062))

(assert (=> d!2207793 m!7781570))

(declare-fun m!7782064 () Bool)

(assert (=> b!7061492 m!7782064))

(assert (=> b!7061187 d!2207793))

(declare-fun d!2207795 () Bool)

(assert (=> d!2207795 (= (isEmpty!39773 (exprs!7090 lt!2536013)) (is-Nil!68184 (exprs!7090 lt!2536013)))))

(assert (=> b!7061186 d!2207795))

(assert (=> b!7061205 d!2207707))

(declare-fun d!2207797 () Bool)

(declare-fun c!1316218 () Bool)

(assert (=> d!2207797 (= c!1316218 (isEmpty!39774 s!7408))))

(declare-fun e!4245275 () Bool)

(assert (=> d!2207797 (= (matchZipper!3134 lt!2536014 s!7408) e!4245275)))

(declare-fun b!7061493 () Bool)

(assert (=> b!7061493 (= e!4245275 (nullableZipper!2671 lt!2536014))))

(declare-fun b!7061494 () Bool)

(assert (=> b!7061494 (= e!4245275 (matchZipper!3134 (derivationStepZipper!3044 lt!2536014 (head!14374 s!7408)) (tail!13740 s!7408)))))

(assert (= (and d!2207797 c!1316218) b!7061493))

(assert (= (and d!2207797 (not c!1316218)) b!7061494))

(assert (=> d!2207797 m!7781886))

(declare-fun m!7782066 () Bool)

(assert (=> b!7061493 m!7782066))

(assert (=> b!7061494 m!7781890))

(assert (=> b!7061494 m!7781890))

(declare-fun m!7782068 () Bool)

(assert (=> b!7061494 m!7782068))

(assert (=> b!7061494 m!7781894))

(assert (=> b!7061494 m!7782068))

(assert (=> b!7061494 m!7781894))

(declare-fun m!7782070 () Bool)

(assert (=> b!7061494 m!7782070))

(assert (=> start!685118 d!2207797))

(declare-fun bs!1879149 () Bool)

(declare-fun d!2207799 () Bool)

(assert (= bs!1879149 (and d!2207799 b!7061190)))

(declare-fun lambda!422154 () Int)

(assert (=> bs!1879149 (= lambda!422154 lambda!422060)))

(assert (=> d!2207799 true))

(assert (=> d!2207799 (= (appendTo!715 z1!570 ct2!306) (map!15924 z1!570 lambda!422154))))

(declare-fun bs!1879150 () Bool)

(assert (= bs!1879150 d!2207799))

(declare-fun m!7782072 () Bool)

(assert (=> bs!1879150 m!7782072))

(assert (=> start!685118 d!2207799))

(declare-fun bs!1879151 () Bool)

(declare-fun d!2207801 () Bool)

(assert (= bs!1879151 (and d!2207801 b!7061190)))

(declare-fun lambda!422155 () Int)

(assert (=> bs!1879151 (= lambda!422155 lambda!422061)))

(declare-fun bs!1879152 () Bool)

(assert (= bs!1879152 (and d!2207801 d!2207753)))

(assert (=> bs!1879152 (not (= lambda!422155 lambda!422139))))

(declare-fun bs!1879153 () Bool)

(assert (= bs!1879153 (and d!2207801 d!2207771)))

(assert (=> bs!1879153 (= lambda!422155 lambda!422142)))

(declare-fun bs!1879154 () Bool)

(assert (= bs!1879154 (and d!2207801 d!2207791)))

(assert (=> bs!1879154 (not (= lambda!422155 lambda!422149))))

(assert (=> d!2207801 (= (inv!86845 ct2!306) (forall!16544 (exprs!7090 ct2!306) lambda!422155))))

(declare-fun bs!1879155 () Bool)

(assert (= bs!1879155 d!2207801))

(declare-fun m!7782074 () Bool)

(assert (=> bs!1879155 m!7782074))

(assert (=> start!685118 d!2207801))

(declare-fun b!7061504 () Bool)

(declare-fun res!2882988 () Bool)

(declare-fun e!4245283 () Bool)

(assert (=> b!7061504 (=> (not res!2882988) (not e!4245283))))

(assert (=> b!7061504 (= res!2882988 (= (head!14374 Nil!68185) (head!14374 (_1!37398 lt!2536037))))))

(declare-fun b!7061503 () Bool)

(declare-fun e!4245284 () Bool)

(assert (=> b!7061503 (= e!4245284 e!4245283)))

(declare-fun res!2882986 () Bool)

(assert (=> b!7061503 (=> (not res!2882986) (not e!4245283))))

(assert (=> b!7061503 (= res!2882986 (not (is-Nil!68185 (_1!37398 lt!2536037))))))

(declare-fun b!7061505 () Bool)

(assert (=> b!7061505 (= e!4245283 (isPrefix!5841 (tail!13740 Nil!68185) (tail!13740 (_1!37398 lt!2536037))))))

(declare-fun d!2207803 () Bool)

(declare-fun e!4245282 () Bool)

(assert (=> d!2207803 e!4245282))

(declare-fun res!2882989 () Bool)

(assert (=> d!2207803 (=> res!2882989 e!4245282)))

(declare-fun lt!2536284 () Bool)

(assert (=> d!2207803 (= res!2882989 (not lt!2536284))))

(assert (=> d!2207803 (= lt!2536284 e!4245284)))

(declare-fun res!2882987 () Bool)

(assert (=> d!2207803 (=> res!2882987 e!4245284)))

(assert (=> d!2207803 (= res!2882987 (is-Nil!68185 Nil!68185))))

(assert (=> d!2207803 (= (isPrefix!5841 Nil!68185 (_1!37398 lt!2536037)) lt!2536284)))

(declare-fun b!7061506 () Bool)

(assert (=> b!7061506 (= e!4245282 (>= (size!41167 (_1!37398 lt!2536037)) (size!41167 Nil!68185)))))

(assert (= (and d!2207803 (not res!2882987)) b!7061503))

(assert (= (and b!7061503 res!2882986) b!7061504))

(assert (= (and b!7061504 res!2882988) b!7061505))

(assert (= (and d!2207803 (not res!2882989)) b!7061506))

(declare-fun m!7782076 () Bool)

(assert (=> b!7061504 m!7782076))

(assert (=> b!7061504 m!7781778))

(declare-fun m!7782078 () Bool)

(assert (=> b!7061505 m!7782078))

(assert (=> b!7061505 m!7781782))

(assert (=> b!7061505 m!7782078))

(assert (=> b!7061505 m!7781782))

(declare-fun m!7782080 () Bool)

(assert (=> b!7061505 m!7782080))

(assert (=> b!7061506 m!7782052))

(assert (=> b!7061506 m!7781856))

(assert (=> b!7061185 d!2207803))

(declare-fun b!7061511 () Bool)

(declare-fun e!4245287 () Bool)

(declare-fun tp!1941099 () Bool)

(assert (=> b!7061511 (= e!4245287 (and tp_is_empty!44413 tp!1941099))))

(assert (=> b!7061201 (= tp!1941081 e!4245287)))

(assert (= (and b!7061201 (is-Cons!68185 (t!382090 s!7408))) b!7061511))

(declare-fun b!7061516 () Bool)

(declare-fun e!4245290 () Bool)

(declare-fun tp!1941104 () Bool)

(declare-fun tp!1941105 () Bool)

(assert (=> b!7061516 (= e!4245290 (and tp!1941104 tp!1941105))))

(assert (=> b!7061204 (= tp!1941083 e!4245290)))

(assert (= (and b!7061204 (is-Cons!68184 (exprs!7090 setElem!50004))) b!7061516))

(declare-fun condSetEmpty!50010 () Bool)

(assert (=> setNonEmpty!50004 (= condSetEmpty!50010 (= setRest!50004 (as set.empty (Set Context!13180))))))

(declare-fun setRes!50010 () Bool)

(assert (=> setNonEmpty!50004 (= tp!1941082 setRes!50010)))

(declare-fun setIsEmpty!50010 () Bool)

(assert (=> setIsEmpty!50010 setRes!50010))

(declare-fun setElem!50010 () Context!13180)

(declare-fun tp!1941110 () Bool)

(declare-fun e!4245293 () Bool)

(declare-fun setNonEmpty!50010 () Bool)

(assert (=> setNonEmpty!50010 (= setRes!50010 (and tp!1941110 (inv!86845 setElem!50010) e!4245293))))

(declare-fun setRest!50010 () (Set Context!13180))

(assert (=> setNonEmpty!50010 (= setRest!50004 (set.union (set.insert setElem!50010 (as set.empty (Set Context!13180))) setRest!50010))))

(declare-fun b!7061521 () Bool)

(declare-fun tp!1941111 () Bool)

(assert (=> b!7061521 (= e!4245293 tp!1941111)))

(assert (= (and setNonEmpty!50004 condSetEmpty!50010) setIsEmpty!50010))

(assert (= (and setNonEmpty!50004 (not condSetEmpty!50010)) setNonEmpty!50010))

(assert (= setNonEmpty!50010 b!7061521))

(declare-fun m!7782082 () Bool)

(assert (=> setNonEmpty!50010 m!7782082))

(declare-fun b!7061522 () Bool)

(declare-fun e!4245294 () Bool)

(declare-fun tp!1941112 () Bool)

(declare-fun tp!1941113 () Bool)

(assert (=> b!7061522 (= e!4245294 (and tp!1941112 tp!1941113))))

(assert (=> b!7061200 (= tp!1941084 e!4245294)))

(assert (= (and b!7061200 (is-Cons!68184 (exprs!7090 ct2!306))) b!7061522))

(declare-fun b_lambda!269281 () Bool)

(assert (= b_lambda!269275 (or b!7061190 b_lambda!269281)))

(declare-fun bs!1879156 () Bool)

(declare-fun d!2207805 () Bool)

(assert (= bs!1879156 (and d!2207805 b!7061190)))

(declare-fun lt!2536285 () Unit!161864)

(assert (=> bs!1879156 (= lt!2536285 (lemmaConcatPreservesForall!905 (exprs!7090 lt!2536270) (exprs!7090 ct2!306) lambda!422061))))

(assert (=> bs!1879156 (= (dynLambda!27692 lambda!422060 lt!2536270) (Context!13181 (++!15686 (exprs!7090 lt!2536270) (exprs!7090 ct2!306))))))

(declare-fun m!7782084 () Bool)

(assert (=> bs!1879156 m!7782084))

(declare-fun m!7782086 () Bool)

(assert (=> bs!1879156 m!7782086))

(assert (=> d!2207769 d!2207805))

(declare-fun b_lambda!269283 () Bool)

(assert (= b_lambda!269267 (or b!7061181 b_lambda!269283)))

(declare-fun bs!1879157 () Bool)

(declare-fun d!2207807 () Bool)

(assert (= bs!1879157 (and d!2207807 b!7061181)))

(assert (=> bs!1879157 (= (dynLambda!27691 lambda!422062 lt!2536039) (derivationStepZipperUp!2178 lt!2536039 (h!74633 s!7408)))))

(assert (=> bs!1879157 m!7781584))

(assert (=> d!2207715 d!2207807))

(declare-fun b_lambda!269285 () Bool)

(assert (= b_lambda!269269 (or b!7061181 b_lambda!269285)))

(declare-fun bs!1879158 () Bool)

(declare-fun d!2207809 () Bool)

(assert (= bs!1879158 (and d!2207809 b!7061181)))

(assert (=> bs!1879158 (= (dynLambda!27691 lambda!422062 lt!2536035) (derivationStepZipperUp!2178 lt!2536035 (h!74633 s!7408)))))

(assert (=> bs!1879158 m!7781464))

(assert (=> d!2207725 d!2207809))

(declare-fun b_lambda!269287 () Bool)

(assert (= b_lambda!269279 (or b!7061198 b_lambda!269287)))

(declare-fun bs!1879159 () Bool)

(declare-fun d!2207811 () Bool)

(assert (= bs!1879159 (and d!2207811 b!7061198)))

(assert (=> bs!1879159 (= (dynLambda!27694 lambda!422063 lt!2536279) (nullableContext!106 lt!2536279))))

(declare-fun m!7782088 () Bool)

(assert (=> bs!1879159 m!7782088))

(assert (=> d!2207793 d!2207811))

(declare-fun b_lambda!269289 () Bool)

(assert (= b_lambda!269271 (or b!7061190 b_lambda!269289)))

(declare-fun bs!1879160 () Bool)

(declare-fun d!2207813 () Bool)

(assert (= bs!1879160 (and d!2207813 b!7061190)))

(declare-fun lt!2536286 () Unit!161864)

(assert (=> bs!1879160 (= lt!2536286 (lemmaConcatPreservesForall!905 (exprs!7090 lt!2536021) (exprs!7090 ct2!306) lambda!422061))))

(assert (=> bs!1879160 (= (dynLambda!27692 lambda!422060 lt!2536021) (Context!13181 (++!15686 (exprs!7090 lt!2536021) (exprs!7090 ct2!306))))))

(declare-fun m!7782090 () Bool)

(assert (=> bs!1879160 m!7782090))

(declare-fun m!7782092 () Bool)

(assert (=> bs!1879160 m!7782092))

(assert (=> d!2207741 d!2207813))

(declare-fun b_lambda!269291 () Bool)

(assert (= b_lambda!269277 (or b!7061209 b_lambda!269291)))

(declare-fun bs!1879161 () Bool)

(declare-fun d!2207815 () Bool)

(assert (= bs!1879161 (and d!2207815 b!7061209)))

(assert (=> bs!1879161 (= (dynLambda!27694 lambda!422059 lt!2536273) (matchZipper!3134 (set.insert lt!2536273 (as set.empty (Set Context!13180))) s!7408))))

(declare-fun m!7782094 () Bool)

(assert (=> bs!1879161 m!7782094))

(assert (=> bs!1879161 m!7782094))

(declare-fun m!7782096 () Bool)

(assert (=> bs!1879161 m!7782096))

(assert (=> d!2207777 d!2207815))

(declare-fun b_lambda!269293 () Bool)

(assert (= b_lambda!269273 (or b!7061181 b_lambda!269293)))

(declare-fun bs!1879162 () Bool)

(declare-fun d!2207817 () Bool)

(assert (= bs!1879162 (and d!2207817 b!7061181)))

(assert (=> bs!1879162 (= (dynLambda!27691 lambda!422062 lt!2536021) (derivationStepZipperUp!2178 lt!2536021 (h!74633 s!7408)))))

(assert (=> bs!1879162 m!7781490))

(assert (=> d!2207749 d!2207817))

(push 1)

(assert (not d!2207739))

(assert (not b!7061385))

(assert (not d!2207713))

(assert (not b!7061326))

(assert (not b!7061430))

(assert (not b!7061403))

(assert (not b!7061412))

(assert (not d!2207787))

(assert (not d!2207711))

(assert (not b_lambda!269285))

(assert (not d!2207683))

(assert (not b!7061354))

(assert (not d!2207727))

(assert (not d!2207715))

(assert (not b!7061487))

(assert (not d!2207755))

(assert (not b!7061473))

(assert (not d!2207767))

(assert (not b!7061489))

(assert (not b_lambda!269283))

(assert (not b!7061493))

(assert (not bs!1879156))

(assert (not b!7061323))

(assert (not d!2207693))

(assert (not b!7061426))

(assert (not b!7061392))

(assert (not d!2207729))

(assert (not d!2207689))

(assert (not b!7061350))

(assert (not b!7061516))

(assert (not d!2207741))

(assert (not b!7061506))

(assert (not bm!641657))

(assert (not b!7061351))

(assert (not b!7061465))

(assert (not b!7061490))

(assert (not d!2207733))

(assert tp_is_empty!44413)

(assert (not b!7061482))

(assert (not b_lambda!269287))

(assert (not b!7061404))

(assert (not b!7061346))

(assert (not b!7061324))

(assert (not bm!641673))

(assert (not d!2207785))

(assert (not b!7061387))

(assert (not d!2207773))

(assert (not bm!641674))

(assert (not d!2207719))

(assert (not b!7061521))

(assert (not b!7061345))

(assert (not b!7061414))

(assert (not bm!641675))

(assert (not d!2207695))

(assert (not bs!1879161))

(assert (not b_lambda!269281))

(assert (not d!2207757))

(assert (not b_lambda!269293))

(assert (not b!7061505))

(assert (not b!7061325))

(assert (not b!7061353))

(assert (not bs!1879157))

(assert (not d!2207745))

(assert (not d!2207793))

(assert (not d!2207707))

(assert (not b_lambda!269291))

(assert (not bs!1879162))

(assert (not b!7061382))

(assert (not b!7061391))

(assert (not b!7061348))

(assert (not bm!641656))

(assert (not b!7061494))

(assert (not d!2207721))

(assert (not b!7061393))

(assert (not bs!1879158))

(assert (not b!7061419))

(assert (not b!7061355))

(assert (not b!7061368))

(assert (not b!7061504))

(assert (not d!2207801))

(assert (not b!7061428))

(assert (not d!2207771))

(assert (not d!2207685))

(assert (not d!2207731))

(assert (not bs!1879159))

(assert (not b!7061511))

(assert (not d!2207687))

(assert (not d!2207761))

(assert (not d!2207759))

(assert (not b!7061366))

(assert (not d!2207753))

(assert (not b!7061436))

(assert (not d!2207699))

(assert (not d!2207705))

(assert (not b!7061383))

(assert (not bs!1879160))

(assert (not setNonEmpty!50010))

(assert (not d!2207769))

(assert (not b!7061522))

(assert (not d!2207779))

(assert (not b!7061470))

(assert (not b!7061429))

(assert (not d!2207717))

(assert (not d!2207701))

(assert (not b!7061474))

(assert (not d!2207791))

(assert (not b!7061431))

(assert (not d!2207775))

(assert (not b!7061410))

(assert (not d!2207781))

(assert (not d!2207725))

(assert (not d!2207799))

(assert (not b!7061390))

(assert (not b!7061424))

(assert (not b!7061435))

(assert (not b!7061434))

(assert (not d!2207797))

(assert (not d!2207777))

(assert (not d!2207691))

(assert (not b!7061483))

(assert (not d!2207749))

(assert (not d!2207697))

(assert (not bm!641658))

(assert (not d!2207747))

(assert (not b_lambda!269289))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

