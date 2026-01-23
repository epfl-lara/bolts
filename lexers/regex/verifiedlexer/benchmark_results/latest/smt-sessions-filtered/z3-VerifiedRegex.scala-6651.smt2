; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349866 () Bool)

(assert start!349866)

(declare-fun b!3710790 () Bool)

(declare-fun res!1509095 () Bool)

(declare-fun e!2298129 () Bool)

(assert (=> b!3710790 (=> (not res!1509095) (not e!2298129))))

(declare-datatypes ((C!21868 0))(
  ( (C!21869 (val!12982 Int)) )
))
(declare-datatypes ((List!39722 0))(
  ( (Nil!39598) (Cons!39598 (h!45018 C!21868) (t!302405 List!39722)) )
))
(declare-fun tl!3933 () List!39722)

(declare-fun isEmpty!23496 (List!39722) Bool)

(assert (=> b!3710790 (= res!1509095 (isEmpty!23496 tl!3933))))

(declare-fun b!3710791 () Bool)

(assert (=> b!3710791 (= e!2298129 false)))

(declare-fun lt!1296825 () Bool)

(declare-datatypes ((Regex!10841 0))(
  ( (ElementMatch!10841 (c!640985 C!21868)) (Concat!17112 (regOne!22194 Regex!10841) (regTwo!22194 Regex!10841)) (EmptyExpr!10841) (Star!10841 (reg!11170 Regex!10841)) (EmptyLang!10841) (Union!10841 (regOne!22195 Regex!10841) (regTwo!22195 Regex!10841)) )
))
(declare-fun r!26326 () Regex!10841)

(declare-fun c!13576 () C!21868)

(declare-fun contains!7934 (List!39722 C!21868) Bool)

(declare-fun usedCharacters!1104 (Regex!10841) List!39722)

(assert (=> b!3710791 (= lt!1296825 (contains!7934 (usedCharacters!1104 r!26326) c!13576))))

(declare-fun b!3710792 () Bool)

(declare-fun e!2298131 () Bool)

(declare-fun tp!1129294 () Bool)

(declare-fun tp!1129296 () Bool)

(assert (=> b!3710792 (= e!2298131 (and tp!1129294 tp!1129296))))

(declare-fun res!1509094 () Bool)

(declare-fun e!2298130 () Bool)

(assert (=> start!349866 (=> (not res!1509094) (not e!2298130))))

(declare-fun validRegex!4948 (Regex!10841) Bool)

(assert (=> start!349866 (= res!1509094 (validRegex!4948 r!26326))))

(assert (=> start!349866 e!2298130))

(assert (=> start!349866 e!2298131))

(declare-fun tp_is_empty!18697 () Bool)

(assert (=> start!349866 tp_is_empty!18697))

(declare-fun e!2298132 () Bool)

(assert (=> start!349866 e!2298132))

(declare-fun b!3710793 () Bool)

(declare-fun tp!1129295 () Bool)

(assert (=> b!3710793 (= e!2298131 tp!1129295)))

(declare-fun b!3710794 () Bool)

(assert (=> b!3710794 (= e!2298131 tp_is_empty!18697)))

(declare-fun b!3710795 () Bool)

(assert (=> b!3710795 (= e!2298130 e!2298129)))

(declare-fun res!1509096 () Bool)

(assert (=> b!3710795 (=> (not res!1509096) (not e!2298129))))

(declare-fun lt!1296826 () Regex!10841)

(declare-fun nullable!3764 (Regex!10841) Bool)

(declare-fun derivative!355 (Regex!10841 List!39722) Regex!10841)

(assert (=> b!3710795 (= res!1509096 (nullable!3764 (derivative!355 lt!1296826 tl!3933)))))

(declare-fun derivativeStep!3306 (Regex!10841 C!21868) Regex!10841)

(assert (=> b!3710795 (= lt!1296826 (derivativeStep!3306 r!26326 c!13576))))

(declare-fun b!3710796 () Bool)

(declare-fun res!1509093 () Bool)

(assert (=> b!3710796 (=> (not res!1509093) (not e!2298129))))

(get-info :version)

(assert (=> b!3710796 (= res!1509093 (and (not ((_ is EmptyExpr!10841) r!26326)) (not ((_ is EmptyLang!10841) r!26326)) ((_ is ElementMatch!10841) r!26326) (= c!13576 (c!640985 r!26326)) (= lt!1296826 EmptyExpr!10841)))))

(declare-fun b!3710797 () Bool)

(declare-fun tp!1129293 () Bool)

(declare-fun tp!1129291 () Bool)

(assert (=> b!3710797 (= e!2298131 (and tp!1129293 tp!1129291))))

(declare-fun b!3710798 () Bool)

(declare-fun tp!1129292 () Bool)

(assert (=> b!3710798 (= e!2298132 (and tp_is_empty!18697 tp!1129292))))

(assert (= (and start!349866 res!1509094) b!3710795))

(assert (= (and b!3710795 res!1509096) b!3710796))

(assert (= (and b!3710796 res!1509093) b!3710790))

(assert (= (and b!3710790 res!1509095) b!3710791))

(assert (= (and start!349866 ((_ is ElementMatch!10841) r!26326)) b!3710794))

(assert (= (and start!349866 ((_ is Concat!17112) r!26326)) b!3710792))

(assert (= (and start!349866 ((_ is Star!10841) r!26326)) b!3710793))

(assert (= (and start!349866 ((_ is Union!10841) r!26326)) b!3710797))

(assert (= (and start!349866 ((_ is Cons!39598) tl!3933)) b!3710798))

(declare-fun m!4218415 () Bool)

(assert (=> b!3710790 m!4218415))

(declare-fun m!4218417 () Bool)

(assert (=> b!3710791 m!4218417))

(assert (=> b!3710791 m!4218417))

(declare-fun m!4218419 () Bool)

(assert (=> b!3710791 m!4218419))

(declare-fun m!4218421 () Bool)

(assert (=> start!349866 m!4218421))

(declare-fun m!4218423 () Bool)

(assert (=> b!3710795 m!4218423))

(assert (=> b!3710795 m!4218423))

(declare-fun m!4218425 () Bool)

(assert (=> b!3710795 m!4218425))

(declare-fun m!4218427 () Bool)

(assert (=> b!3710795 m!4218427))

(check-sat (not b!3710792) (not b!3710795) (not b!3710798) (not b!3710790) (not b!3710797) (not b!3710791) (not b!3710793) (not start!349866) tp_is_empty!18697)
(check-sat)
