; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732852 () Bool)

(assert start!732852)

(declare-fun b!7599961 () Bool)

(assert (=> b!7599961 true))

(assert (=> b!7599961 true))

(assert (=> b!7599961 true))

(declare-fun b!7599953 () Bool)

(declare-fun e!4521692 () Bool)

(declare-fun tp!2215457 () Bool)

(assert (=> b!7599953 (= e!4521692 tp!2215457)))

(declare-fun b!7599954 () Bool)

(declare-fun e!4521694 () Bool)

(declare-fun tp_is_empty!50617 () Bool)

(declare-fun tp!2215463 () Bool)

(assert (=> b!7599954 (= e!4521694 (and tp_is_empty!50617 tp!2215463))))

(declare-fun b!7599955 () Bool)

(declare-fun e!4521697 () Bool)

(declare-fun e!4521699 () Bool)

(assert (=> b!7599955 (= e!4521697 (not e!4521699))))

(declare-fun res!3043024 () Bool)

(assert (=> b!7599955 (=> res!3043024 e!4521699)))

(declare-fun lt!2654148 () Bool)

(declare-fun lt!2654146 () Bool)

(assert (=> b!7599955 (= res!3043024 (or (not lt!2654148) (not lt!2654146)))))

(declare-datatypes ((C!40588 0))(
  ( (C!40589 (val!30734 Int)) )
))
(declare-datatypes ((Regex!20131 0))(
  ( (ElementMatch!20131 (c!1402220 C!40588)) (Concat!28976 (regOne!40774 Regex!20131) (regTwo!40774 Regex!20131)) (EmptyExpr!20131) (Star!20131 (reg!20460 Regex!20131)) (EmptyLang!20131) (Union!20131 (regOne!40775 Regex!20131) (regTwo!40775 Regex!20131)) )
))
(declare-fun r2!3249 () Regex!20131)

(declare-datatypes ((List!73014 0))(
  ( (Nil!72890) (Cons!72890 (h!79338 C!40588) (t!387749 List!73014)) )
))
(declare-datatypes ((tuple2!68980 0))(
  ( (tuple2!68981 (_1!37793 List!73014) (_2!37793 List!73014)) )
))
(declare-fun lt!2654147 () tuple2!68980)

(declare-fun matchRSpec!4432 (Regex!20131 List!73014) Bool)

(assert (=> b!7599955 (= lt!2654146 (matchRSpec!4432 r2!3249 (_2!37793 lt!2654147)))))

(declare-fun matchR!9715 (Regex!20131 List!73014) Bool)

(assert (=> b!7599955 (= lt!2654146 (matchR!9715 r2!3249 (_2!37793 lt!2654147)))))

(declare-datatypes ((Unit!167194 0))(
  ( (Unit!167195) )
))
(declare-fun lt!2654150 () Unit!167194)

(declare-fun mainMatchTheorem!4426 (Regex!20131 List!73014) Unit!167194)

(assert (=> b!7599955 (= lt!2654150 (mainMatchTheorem!4426 r2!3249 (_2!37793 lt!2654147)))))

(declare-fun r1!3349 () Regex!20131)

(assert (=> b!7599955 (= lt!2654148 (matchRSpec!4432 r1!3349 (_1!37793 lt!2654147)))))

(assert (=> b!7599955 (= lt!2654148 (matchR!9715 r1!3349 (_1!37793 lt!2654147)))))

(declare-fun lt!2654149 () Unit!167194)

(assert (=> b!7599955 (= lt!2654149 (mainMatchTheorem!4426 r1!3349 (_1!37793 lt!2654147)))))

(declare-fun b!7599956 () Bool)

(declare-fun e!4521698 () Bool)

(assert (=> b!7599956 (= e!4521698 tp_is_empty!50617)))

(declare-fun res!3043026 () Bool)

(declare-fun e!4521693 () Bool)

(assert (=> start!732852 (=> (not res!3043026) (not e!4521693))))

(declare-fun validRegex!10559 (Regex!20131) Bool)

(assert (=> start!732852 (= res!3043026 (validRegex!10559 r1!3349))))

(assert (=> start!732852 e!4521693))

(assert (=> start!732852 e!4521692))

(assert (=> start!732852 e!4521698))

(assert (=> start!732852 e!4521694))

(declare-fun e!4521696 () Bool)

(declare-fun e!4521695 () Bool)

(assert (=> start!732852 (and e!4521696 e!4521695)))

(declare-fun b!7599957 () Bool)

(assert (=> b!7599957 (= e!4521692 tp_is_empty!50617)))

(declare-fun b!7599958 () Bool)

(declare-fun tp!2215452 () Bool)

(declare-fun tp!2215459 () Bool)

(assert (=> b!7599958 (= e!4521692 (and tp!2215452 tp!2215459))))

(declare-fun b!7599959 () Bool)

(declare-fun tp!2215460 () Bool)

(declare-fun tp!2215453 () Bool)

(assert (=> b!7599959 (= e!4521698 (and tp!2215460 tp!2215453))))

(declare-fun b!7599960 () Bool)

(declare-fun tp!2215454 () Bool)

(assert (=> b!7599960 (= e!4521696 (and tp_is_empty!50617 tp!2215454))))

(declare-fun res!3043028 () Bool)

(assert (=> b!7599961 (=> (not res!3043028) (not e!4521693))))

(declare-fun lambda!467513 () Int)

(declare-fun Exists!4359 (Int) Bool)

(assert (=> b!7599961 (= res!3043028 (Exists!4359 lambda!467513))))

(declare-fun b!7599962 () Bool)

(declare-fun res!3043027 () Bool)

(assert (=> b!7599962 (=> (not res!3043027) (not e!4521693))))

(assert (=> b!7599962 (= res!3043027 (validRegex!10559 r2!3249))))

(declare-fun b!7599963 () Bool)

(declare-fun tp!2215462 () Bool)

(declare-fun tp!2215455 () Bool)

(assert (=> b!7599963 (= e!4521698 (and tp!2215462 tp!2215455))))

(declare-fun b!7599964 () Bool)

(declare-fun res!3043025 () Bool)

(assert (=> b!7599964 (=> res!3043025 e!4521699)))

(declare-fun cut!33 () tuple2!68980)

(declare-fun s!10235 () List!73014)

(declare-fun ++!17537 (List!73014 List!73014) List!73014)

(assert (=> b!7599964 (= res!3043025 (not (= (++!17537 (_1!37793 cut!33) (_2!37793 cut!33)) s!10235)))))

(declare-fun b!7599965 () Bool)

(declare-fun tp!2215456 () Bool)

(declare-fun tp!2215451 () Bool)

(assert (=> b!7599965 (= e!4521692 (and tp!2215456 tp!2215451))))

(declare-fun b!7599966 () Bool)

(declare-fun tp!2215458 () Bool)

(assert (=> b!7599966 (= e!4521695 (and tp_is_empty!50617 tp!2215458))))

(declare-fun b!7599967 () Bool)

(assert (=> b!7599967 (= e!4521699 true)))

(declare-fun b!7599968 () Bool)

(declare-fun tp!2215461 () Bool)

(assert (=> b!7599968 (= e!4521698 tp!2215461)))

(declare-fun b!7599969 () Bool)

(assert (=> b!7599969 (= e!4521693 e!4521697)))

(declare-fun res!3043023 () Bool)

(assert (=> b!7599969 (=> (not res!3043023) (not e!4521697))))

(assert (=> b!7599969 (= res!3043023 (= (++!17537 (_1!37793 lt!2654147) (_2!37793 lt!2654147)) s!10235))))

(declare-fun pickWitness!396 (Int) tuple2!68980)

(assert (=> b!7599969 (= lt!2654147 (pickWitness!396 lambda!467513))))

(assert (= (and start!732852 res!3043026) b!7599962))

(assert (= (and b!7599962 res!3043027) b!7599961))

(assert (= (and b!7599961 res!3043028) b!7599969))

(assert (= (and b!7599969 res!3043023) b!7599955))

(assert (= (and b!7599955 (not res!3043024)) b!7599964))

(assert (= (and b!7599964 (not res!3043025)) b!7599967))

(get-info :version)

(assert (= (and start!732852 ((_ is ElementMatch!20131) r1!3349)) b!7599957))

(assert (= (and start!732852 ((_ is Concat!28976) r1!3349)) b!7599958))

(assert (= (and start!732852 ((_ is Star!20131) r1!3349)) b!7599953))

(assert (= (and start!732852 ((_ is Union!20131) r1!3349)) b!7599965))

(assert (= (and start!732852 ((_ is ElementMatch!20131) r2!3249)) b!7599956))

(assert (= (and start!732852 ((_ is Concat!28976) r2!3249)) b!7599963))

(assert (= (and start!732852 ((_ is Star!20131) r2!3249)) b!7599968))

(assert (= (and start!732852 ((_ is Union!20131) r2!3249)) b!7599959))

(assert (= (and start!732852 ((_ is Cons!72890) s!10235)) b!7599954))

(assert (= (and start!732852 ((_ is Cons!72890) (_1!37793 cut!33))) b!7599960))

(assert (= (and start!732852 ((_ is Cons!72890) (_2!37793 cut!33))) b!7599966))

(declare-fun m!8144778 () Bool)

(assert (=> b!7599969 m!8144778))

(declare-fun m!8144780 () Bool)

(assert (=> b!7599969 m!8144780))

(declare-fun m!8144782 () Bool)

(assert (=> b!7599964 m!8144782))

(declare-fun m!8144784 () Bool)

(assert (=> b!7599962 m!8144784))

(declare-fun m!8144786 () Bool)

(assert (=> b!7599955 m!8144786))

(declare-fun m!8144788 () Bool)

(assert (=> b!7599955 m!8144788))

(declare-fun m!8144790 () Bool)

(assert (=> b!7599955 m!8144790))

(declare-fun m!8144792 () Bool)

(assert (=> b!7599955 m!8144792))

(declare-fun m!8144794 () Bool)

(assert (=> b!7599955 m!8144794))

(declare-fun m!8144796 () Bool)

(assert (=> b!7599955 m!8144796))

(declare-fun m!8144798 () Bool)

(assert (=> start!732852 m!8144798))

(declare-fun m!8144800 () Bool)

(assert (=> b!7599961 m!8144800))

(check-sat (not b!7599955) (not b!7599969) (not b!7599964) (not b!7599963) (not b!7599965) (not b!7599966) (not b!7599962) (not start!732852) (not b!7599960) (not b!7599953) (not b!7599959) (not b!7599961) (not b!7599958) tp_is_empty!50617 (not b!7599954) (not b!7599968))
(check-sat)
