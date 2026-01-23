; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694584 () Bool)

(assert start!694584)

(declare-fun b!7130136 () Bool)

(declare-datatypes ((Unit!162953 0))(
  ( (Unit!162954) )
))
(declare-fun e!4284865 () Unit!162953)

(declare-fun Unit!162955 () Unit!162953)

(assert (=> b!7130136 (= e!4284865 Unit!162955)))

(declare-datatypes ((C!36380 0))(
  ( (C!36381 (val!28116 Int)) )
))
(declare-datatypes ((List!69164 0))(
  ( (Nil!69040) (Cons!69040 (h!75488 C!36380) (t!383141 List!69164)) )
))
(declare-fun s2Rec!140 () List!69164)

(declare-fun s2!1620 () List!69164)

(declare-fun lt!2564142 () Unit!162953)

(declare-fun s1Rec!140 () List!69164)

(declare-fun s1!1688 () List!69164)

(declare-fun s!7390 () List!69164)

(declare-fun lemmaSamePrefixThenSameSuffix!2735 (List!69164 List!69164 List!69164 List!69164 List!69164) Unit!162953)

(assert (=> b!7130136 (= lt!2564142 (lemmaSamePrefixThenSameSuffix!2735 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> b!7130136 false))

(declare-fun b!7130137 () Bool)

(declare-fun res!2909261 () Bool)

(declare-fun e!4284855 () Bool)

(assert (=> b!7130137 (=> res!2909261 e!4284855)))

(declare-fun isPrefix!5924 (List!69164 List!69164) Bool)

(assert (=> b!7130137 (= res!2909261 (not (isPrefix!5924 s1!1688 s!7390)))))

(declare-fun b!7130138 () Bool)

(declare-fun e!4284864 () Bool)

(assert (=> b!7130138 (= e!4284864 (not e!4284855))))

(declare-fun res!2909253 () Bool)

(assert (=> b!7130138 (=> res!2909253 e!4284855)))

(declare-fun lt!2564139 () Int)

(declare-fun lt!2564143 () Int)

(assert (=> b!7130138 (= res!2909253 (not (= lt!2564139 lt!2564143)))))

(declare-fun size!41480 (List!69164) Int)

(assert (=> b!7130138 (= lt!2564143 (size!41480 s1!1688))))

(assert (=> b!7130138 (= lt!2564139 (size!41480 s1Rec!140))))

(declare-fun lt!2564140 () List!69164)

(declare-fun lt!2564145 () List!69164)

(assert (=> b!7130138 (isPrefix!5924 lt!2564140 lt!2564145)))

(declare-fun lt!2564146 () Unit!162953)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3637 (List!69164 List!69164) Unit!162953)

(assert (=> b!7130138 (= lt!2564146 (lemmaConcatTwoListThenFirstIsPrefix!3637 lt!2564140 (t!383141 s2Rec!140)))))

(assert (=> b!7130138 (= lt!2564145 s!7390)))

(declare-fun ++!16193 (List!69164 List!69164) List!69164)

(assert (=> b!7130138 (= lt!2564145 (++!16193 lt!2564140 (t!383141 s2Rec!140)))))

(assert (=> b!7130138 (= lt!2564140 (++!16193 s1Rec!140 (Cons!69040 (h!75488 s2Rec!140) Nil!69040)))))

(declare-fun lt!2564147 () Unit!162953)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3015 (List!69164 C!36380 List!69164 List!69164) Unit!162953)

(assert (=> b!7130138 (= lt!2564147 (lemmaMoveElementToOtherListKeepsConcatEq!3015 s1Rec!140 (h!75488 s2Rec!140) (t!383141 s2Rec!140) s!7390))))

(declare-fun lt!2564138 () Unit!162953)

(assert (=> b!7130138 (= lt!2564138 e!4284865)))

(declare-fun c!1329988 () Bool)

(assert (=> b!7130138 (= c!1329988 (= s1Rec!140 s1!1688))))

(declare-fun lt!2564137 () List!69164)

(assert (=> b!7130138 (isPrefix!5924 s1Rec!140 lt!2564137)))

(declare-fun lt!2564141 () Unit!162953)

(assert (=> b!7130138 (= lt!2564141 (lemmaConcatTwoListThenFirstIsPrefix!3637 s1Rec!140 s2Rec!140))))

(declare-fun lt!2564148 () List!69164)

(assert (=> b!7130138 (isPrefix!5924 s1!1688 lt!2564148)))

(declare-fun lt!2564144 () Unit!162953)

(assert (=> b!7130138 (= lt!2564144 (lemmaConcatTwoListThenFirstIsPrefix!3637 s1!1688 s2!1620))))

(declare-fun b!7130139 () Bool)

(declare-fun res!2909255 () Bool)

(assert (=> b!7130139 (=> (not res!2909255) (not e!4284864))))

(declare-fun e!4284862 () Bool)

(assert (=> b!7130139 (= res!2909255 e!4284862)))

(declare-fun res!2909260 () Bool)

(assert (=> b!7130139 (=> res!2909260 e!4284862)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18055 0))(
  ( (ElementMatch!18055 (c!1329989 C!36380)) (Concat!26900 (regOne!36622 Regex!18055) (regTwo!36622 Regex!18055)) (EmptyExpr!18055) (Star!18055 (reg!18384 Regex!18055)) (EmptyLang!18055) (Union!18055 (regOne!36623 Regex!18055) (regTwo!36623 Regex!18055)) )
))
(declare-datatypes ((List!69165 0))(
  ( (Nil!69041) (Cons!69041 (h!75489 Regex!18055) (t!383142 List!69165)) )
))
(declare-datatypes ((Context!14098 0))(
  ( (Context!14099 (exprs!7549 List!69165)) )
))
(declare-fun z1!552 () (InoxSet Context!14098))

(declare-fun matchZipper!3311 ((InoxSet Context!14098) List!69164) Bool)

(assert (=> b!7130139 (= res!2909260 (not (matchZipper!3311 z1!552 s1Rec!140)))))

(declare-fun setRes!51967 () Bool)

(declare-fun tp!1964848 () Bool)

(declare-fun setElem!51966 () Context!14098)

(declare-fun setNonEmpty!51966 () Bool)

(declare-fun e!4284857 () Bool)

(declare-fun inv!88165 (Context!14098) Bool)

(assert (=> setNonEmpty!51966 (= setRes!51967 (and tp!1964848 (inv!88165 setElem!51966) e!4284857))))

(declare-fun z2!471 () (InoxSet Context!14098))

(declare-fun setRest!51966 () (InoxSet Context!14098))

(assert (=> setNonEmpty!51966 (= z2!471 ((_ map or) (store ((as const (Array Context!14098 Bool)) false) setElem!51966 true) setRest!51966))))

(declare-fun setElem!51967 () Context!14098)

(declare-fun setNonEmpty!51967 () Bool)

(declare-fun setRes!51966 () Bool)

(declare-fun e!4284856 () Bool)

(declare-fun tp!1964855 () Bool)

(assert (=> setNonEmpty!51967 (= setRes!51966 (and tp!1964855 (inv!88165 setElem!51967) e!4284856))))

(declare-fun setRest!51967 () (InoxSet Context!14098))

(assert (=> setNonEmpty!51967 (= z1!552 ((_ map or) (store ((as const (Array Context!14098 Bool)) false) setElem!51967 true) setRest!51967))))

(declare-fun b!7130140 () Bool)

(declare-fun e!4284858 () Bool)

(declare-fun tp_is_empty!45711 () Bool)

(declare-fun tp!1964851 () Bool)

(assert (=> b!7130140 (= e!4284858 (and tp_is_empty!45711 tp!1964851))))

(declare-fun b!7130141 () Bool)

(assert (=> b!7130141 (= e!4284855 (= lt!2564143 lt!2564139))))

(declare-fun b!7130142 () Bool)

(declare-fun tp!1964854 () Bool)

(assert (=> b!7130142 (= e!4284857 tp!1964854)))

(declare-fun b!7130143 () Bool)

(declare-fun res!2909252 () Bool)

(declare-fun e!4284861 () Bool)

(assert (=> b!7130143 (=> (not res!2909252) (not e!4284861))))

(assert (=> b!7130143 (= res!2909252 (matchZipper!3311 z2!471 s2!1620))))

(declare-fun res!2909257 () Bool)

(assert (=> start!694584 (=> (not res!2909257) (not e!4284861))))

(assert (=> start!694584 (= res!2909257 (matchZipper!3311 z1!552 s1!1688))))

(assert (=> start!694584 e!4284861))

(assert (=> start!694584 e!4284858))

(declare-fun condSetEmpty!51967 () Bool)

(assert (=> start!694584 (= condSetEmpty!51967 (= z1!552 ((as const (Array Context!14098 Bool)) false)))))

(assert (=> start!694584 setRes!51966))

(declare-fun e!4284859 () Bool)

(assert (=> start!694584 e!4284859))

(declare-fun condSetEmpty!51966 () Bool)

(assert (=> start!694584 (= condSetEmpty!51966 (= z2!471 ((as const (Array Context!14098 Bool)) false)))))

(assert (=> start!694584 setRes!51967))

(declare-fun e!4284854 () Bool)

(assert (=> start!694584 e!4284854))

(declare-fun e!4284860 () Bool)

(assert (=> start!694584 e!4284860))

(declare-fun e!4284863 () Bool)

(assert (=> start!694584 e!4284863))

(declare-fun b!7130144 () Bool)

(declare-fun res!2909254 () Bool)

(declare-fun e!4284853 () Bool)

(assert (=> b!7130144 (=> (not res!2909254) (not e!4284853))))

(assert (=> b!7130144 (= res!2909254 (isPrefix!5924 s1Rec!140 s1!1688))))

(declare-fun b!7130145 () Bool)

(declare-fun tp!1964849 () Bool)

(assert (=> b!7130145 (= e!4284856 tp!1964849)))

(declare-fun b!7130146 () Bool)

(declare-fun tp!1964853 () Bool)

(assert (=> b!7130146 (= e!4284863 (and tp_is_empty!45711 tp!1964853))))

(declare-fun b!7130147 () Bool)

(declare-fun Unit!162956 () Unit!162953)

(assert (=> b!7130147 (= e!4284865 Unit!162956)))

(declare-fun b!7130148 () Bool)

(declare-fun res!2909258 () Bool)

(assert (=> b!7130148 (=> res!2909258 e!4284855)))

(assert (=> b!7130148 (= res!2909258 (not (isPrefix!5924 s1Rec!140 s!7390)))))

(declare-fun b!7130149 () Bool)

(declare-fun tp!1964847 () Bool)

(assert (=> b!7130149 (= e!4284860 (and tp_is_empty!45711 tp!1964847))))

(declare-fun b!7130150 () Bool)

(assert (=> b!7130150 (= e!4284862 (not (matchZipper!3311 z2!471 s2Rec!140)))))

(declare-fun setIsEmpty!51966 () Bool)

(assert (=> setIsEmpty!51966 setRes!51967))

(declare-fun setIsEmpty!51967 () Bool)

(assert (=> setIsEmpty!51967 setRes!51966))

(declare-fun b!7130151 () Bool)

(declare-fun tp!1964850 () Bool)

(assert (=> b!7130151 (= e!4284859 (and tp_is_empty!45711 tp!1964850))))

(declare-fun b!7130152 () Bool)

(declare-fun tp!1964852 () Bool)

(assert (=> b!7130152 (= e!4284854 (and tp_is_empty!45711 tp!1964852))))

(declare-fun b!7130153 () Bool)

(assert (=> b!7130153 (= e!4284853 e!4284864)))

(declare-fun res!2909256 () Bool)

(assert (=> b!7130153 (=> (not res!2909256) (not e!4284864))))

(assert (=> b!7130153 (= res!2909256 (= lt!2564137 s!7390))))

(assert (=> b!7130153 (= lt!2564137 (++!16193 s1Rec!140 s2Rec!140))))

(declare-fun b!7130154 () Bool)

(declare-fun res!2909259 () Bool)

(assert (=> b!7130154 (=> (not res!2909259) (not e!4284864))))

(get-info :version)

(assert (=> b!7130154 (= res!2909259 (not ((_ is Nil!69040) s2Rec!140)))))

(declare-fun b!7130155 () Bool)

(assert (=> b!7130155 (= e!4284861 e!4284853)))

(declare-fun res!2909251 () Bool)

(assert (=> b!7130155 (=> (not res!2909251) (not e!4284853))))

(assert (=> b!7130155 (= res!2909251 (= lt!2564148 s!7390))))

(assert (=> b!7130155 (= lt!2564148 (++!16193 s1!1688 s2!1620))))

(assert (= (and start!694584 res!2909257) b!7130143))

(assert (= (and b!7130143 res!2909252) b!7130155))

(assert (= (and b!7130155 res!2909251) b!7130144))

(assert (= (and b!7130144 res!2909254) b!7130153))

(assert (= (and b!7130153 res!2909256) b!7130139))

(assert (= (and b!7130139 (not res!2909260)) b!7130150))

(assert (= (and b!7130139 res!2909255) b!7130154))

(assert (= (and b!7130154 res!2909259) b!7130138))

(assert (= (and b!7130138 c!1329988) b!7130136))

(assert (= (and b!7130138 (not c!1329988)) b!7130147))

(assert (= (and b!7130138 (not res!2909253)) b!7130137))

(assert (= (and b!7130137 (not res!2909261)) b!7130148))

(assert (= (and b!7130148 (not res!2909258)) b!7130141))

(assert (= (and start!694584 ((_ is Cons!69040) s1Rec!140)) b!7130140))

(assert (= (and start!694584 condSetEmpty!51967) setIsEmpty!51967))

(assert (= (and start!694584 (not condSetEmpty!51967)) setNonEmpty!51967))

(assert (= setNonEmpty!51967 b!7130145))

(assert (= (and start!694584 ((_ is Cons!69040) s2Rec!140)) b!7130151))

(assert (= (and start!694584 condSetEmpty!51966) setIsEmpty!51966))

(assert (= (and start!694584 (not condSetEmpty!51966)) setNonEmpty!51966))

(assert (= setNonEmpty!51966 b!7130142))

(assert (= (and start!694584 ((_ is Cons!69040) s2!1620)) b!7130152))

(assert (= (and start!694584 ((_ is Cons!69040) s1!1688)) b!7130149))

(assert (= (and start!694584 ((_ is Cons!69040) s!7390)) b!7130146))

(declare-fun m!7847070 () Bool)

(assert (=> b!7130144 m!7847070))

(declare-fun m!7847072 () Bool)

(assert (=> b!7130136 m!7847072))

(declare-fun m!7847074 () Bool)

(assert (=> b!7130155 m!7847074))

(declare-fun m!7847076 () Bool)

(assert (=> b!7130150 m!7847076))

(declare-fun m!7847078 () Bool)

(assert (=> b!7130138 m!7847078))

(declare-fun m!7847080 () Bool)

(assert (=> b!7130138 m!7847080))

(declare-fun m!7847082 () Bool)

(assert (=> b!7130138 m!7847082))

(declare-fun m!7847084 () Bool)

(assert (=> b!7130138 m!7847084))

(declare-fun m!7847086 () Bool)

(assert (=> b!7130138 m!7847086))

(declare-fun m!7847088 () Bool)

(assert (=> b!7130138 m!7847088))

(declare-fun m!7847090 () Bool)

(assert (=> b!7130138 m!7847090))

(declare-fun m!7847092 () Bool)

(assert (=> b!7130138 m!7847092))

(declare-fun m!7847094 () Bool)

(assert (=> b!7130138 m!7847094))

(declare-fun m!7847096 () Bool)

(assert (=> b!7130138 m!7847096))

(declare-fun m!7847098 () Bool)

(assert (=> b!7130138 m!7847098))

(declare-fun m!7847100 () Bool)

(assert (=> b!7130139 m!7847100))

(declare-fun m!7847102 () Bool)

(assert (=> setNonEmpty!51966 m!7847102))

(declare-fun m!7847104 () Bool)

(assert (=> start!694584 m!7847104))

(declare-fun m!7847106 () Bool)

(assert (=> b!7130153 m!7847106))

(declare-fun m!7847108 () Bool)

(assert (=> b!7130137 m!7847108))

(declare-fun m!7847110 () Bool)

(assert (=> b!7130148 m!7847110))

(declare-fun m!7847112 () Bool)

(assert (=> b!7130143 m!7847112))

(declare-fun m!7847114 () Bool)

(assert (=> setNonEmpty!51967 m!7847114))

(check-sat (not b!7130145) (not b!7130149) (not b!7130144) (not start!694584) (not b!7130146) (not b!7130148) (not b!7130140) (not b!7130143) (not b!7130136) (not setNonEmpty!51967) (not b!7130142) (not b!7130138) (not setNonEmpty!51966) (not b!7130153) tp_is_empty!45711 (not b!7130150) (not b!7130152) (not b!7130151) (not b!7130137) (not b!7130139) (not b!7130155))
(check-sat)
