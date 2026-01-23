; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732892 () Bool)

(assert start!732892)

(declare-fun b!7601169 () Bool)

(assert (=> b!7601169 true))

(assert (=> b!7601169 true))

(assert (=> b!7601169 true))

(declare-fun bs!1942410 () Bool)

(declare-fun b!7601167 () Bool)

(assert (= bs!1942410 (and b!7601167 b!7601169)))

(declare-fun lambda!467635 () Int)

(declare-fun lambda!467634 () Int)

(assert (=> bs!1942410 (not (= lambda!467635 lambda!467634))))

(assert (=> b!7601167 true))

(assert (=> b!7601167 true))

(assert (=> b!7601167 true))

(declare-fun b!7601153 () Bool)

(declare-fun e!4522191 () Bool)

(declare-fun tp_is_empty!50657 () Bool)

(assert (=> b!7601153 (= e!4522191 tp_is_empty!50657)))

(declare-fun b!7601154 () Bool)

(declare-fun e!4522188 () Bool)

(assert (=> b!7601154 (= e!4522188 false)))

(declare-fun b!7601155 () Bool)

(declare-fun e!4522190 () Bool)

(declare-fun tp!2216226 () Bool)

(assert (=> b!7601155 (= e!4522190 tp!2216226)))

(declare-fun b!7601156 () Bool)

(declare-fun res!3043498 () Bool)

(assert (=> b!7601156 (=> (not res!3043498) (not e!4522188))))

(declare-datatypes ((C!40628 0))(
  ( (C!40629 (val!30754 Int)) )
))
(declare-datatypes ((List!73034 0))(
  ( (Nil!72910) (Cons!72910 (h!79358 C!40628) (t!387769 List!73034)) )
))
(declare-datatypes ((tuple2!69020 0))(
  ( (tuple2!69021 (_1!37813 List!73034) (_2!37813 List!73034)) )
))
(declare-fun cut!37 () tuple2!69020)

(declare-fun s!10235 () List!73034)

(declare-fun ++!17557 (List!73034 List!73034) List!73034)

(assert (=> b!7601156 (= res!3043498 (= (++!17557 (_1!37813 cut!37) (_2!37813 cut!37)) s!10235))))

(declare-fun b!7601157 () Bool)

(declare-fun tp!2216223 () Bool)

(declare-fun tp!2216229 () Bool)

(assert (=> b!7601157 (= e!4522190 (and tp!2216223 tp!2216229))))

(declare-fun b!7601158 () Bool)

(declare-fun tp!2216219 () Bool)

(declare-fun tp!2216221 () Bool)

(assert (=> b!7601158 (= e!4522191 (and tp!2216219 tp!2216221))))

(declare-fun res!3043499 () Bool)

(assert (=> start!732892 (=> (not res!3043499) (not e!4522188))))

(declare-datatypes ((Regex!20151 0))(
  ( (ElementMatch!20151 (c!1402240 C!40628)) (Concat!28996 (regOne!40814 Regex!20151) (regTwo!40814 Regex!20151)) (EmptyExpr!20151) (Star!20151 (reg!20480 Regex!20151)) (EmptyLang!20151) (Union!20151 (regOne!40815 Regex!20151) (regTwo!40815 Regex!20151)) )
))
(declare-fun r1!3349 () Regex!20151)

(declare-fun validRegex!10579 (Regex!20151) Bool)

(assert (=> start!732892 (= res!3043499 (validRegex!10579 r1!3349))))

(assert (=> start!732892 e!4522188))

(assert (=> start!732892 e!4522191))

(assert (=> start!732892 e!4522190))

(declare-fun e!4522193 () Bool)

(assert (=> start!732892 e!4522193))

(declare-fun e!4522189 () Bool)

(declare-fun e!4522192 () Bool)

(assert (=> start!732892 (and e!4522189 e!4522192)))

(declare-fun b!7601159 () Bool)

(declare-fun res!3043495 () Bool)

(assert (=> b!7601159 (=> (not res!3043495) (not e!4522188))))

(declare-fun r2!3249 () Regex!20151)

(assert (=> b!7601159 (= res!3043495 (validRegex!10579 r2!3249))))

(declare-fun b!7601160 () Bool)

(declare-fun tp!2216224 () Bool)

(assert (=> b!7601160 (= e!4522193 (and tp_is_empty!50657 tp!2216224))))

(declare-fun b!7601161 () Bool)

(assert (=> b!7601161 (= e!4522190 tp_is_empty!50657)))

(declare-fun b!7601162 () Bool)

(declare-fun tp!2216227 () Bool)

(assert (=> b!7601162 (= e!4522192 (and tp_is_empty!50657 tp!2216227))))

(declare-fun b!7601163 () Bool)

(declare-fun tp!2216225 () Bool)

(assert (=> b!7601163 (= e!4522191 tp!2216225)))

(declare-fun b!7601164 () Bool)

(declare-fun res!3043500 () Bool)

(assert (=> b!7601164 (=> (not res!3043500) (not e!4522188))))

(declare-fun Exists!4379 (Int) Bool)

(assert (=> b!7601164 (= res!3043500 (not (Exists!4379 lambda!467634)))))

(declare-fun b!7601165 () Bool)

(declare-fun tp!2216220 () Bool)

(assert (=> b!7601165 (= e!4522189 (and tp_is_empty!50657 tp!2216220))))

(declare-fun b!7601166 () Bool)

(declare-fun tp!2216231 () Bool)

(declare-fun tp!2216228 () Bool)

(assert (=> b!7601166 (= e!4522191 (and tp!2216231 tp!2216228))))

(declare-fun res!3043497 () Bool)

(assert (=> b!7601167 (=> (not res!3043497) (not e!4522188))))

(assert (=> b!7601167 (= res!3043497 (Exists!4379 lambda!467635))))

(declare-fun b!7601168 () Bool)

(declare-fun tp!2216230 () Bool)

(declare-fun tp!2216222 () Bool)

(assert (=> b!7601168 (= e!4522190 (and tp!2216230 tp!2216222))))

(declare-fun res!3043496 () Bool)

(assert (=> b!7601169 (=> (not res!3043496) (not e!4522188))))

(assert (=> b!7601169 (= res!3043496 (not (Exists!4379 lambda!467634)))))

(assert (= (and start!732892 res!3043499) b!7601159))

(assert (= (and b!7601159 res!3043495) b!7601169))

(assert (= (and b!7601169 res!3043496) b!7601164))

(assert (= (and b!7601164 res!3043500) b!7601167))

(assert (= (and b!7601167 res!3043497) b!7601156))

(assert (= (and b!7601156 res!3043498) b!7601154))

(get-info :version)

(assert (= (and start!732892 ((_ is ElementMatch!20151) r1!3349)) b!7601153))

(assert (= (and start!732892 ((_ is Concat!28996) r1!3349)) b!7601166))

(assert (= (and start!732892 ((_ is Star!20151) r1!3349)) b!7601163))

(assert (= (and start!732892 ((_ is Union!20151) r1!3349)) b!7601158))

(assert (= (and start!732892 ((_ is ElementMatch!20151) r2!3249)) b!7601161))

(assert (= (and start!732892 ((_ is Concat!28996) r2!3249)) b!7601168))

(assert (= (and start!732892 ((_ is Star!20151) r2!3249)) b!7601155))

(assert (= (and start!732892 ((_ is Union!20151) r2!3249)) b!7601157))

(assert (= (and start!732892 ((_ is Cons!72910) s!10235)) b!7601160))

(assert (= (and start!732892 ((_ is Cons!72910) (_1!37813 cut!37))) b!7601165))

(assert (= (and start!732892 ((_ is Cons!72910) (_2!37813 cut!37))) b!7601162))

(declare-fun m!8145104 () Bool)

(assert (=> b!7601169 m!8145104))

(assert (=> b!7601164 m!8145104))

(declare-fun m!8145106 () Bool)

(assert (=> start!732892 m!8145106))

(declare-fun m!8145108 () Bool)

(assert (=> b!7601156 m!8145108))

(declare-fun m!8145110 () Bool)

(assert (=> b!7601167 m!8145110))

(declare-fun m!8145112 () Bool)

(assert (=> b!7601159 m!8145112))

(check-sat (not b!7601168) (not b!7601163) (not b!7601162) (not b!7601159) tp_is_empty!50657 (not b!7601166) (not b!7601157) (not b!7601155) (not b!7601158) (not b!7601160) (not b!7601167) (not start!732892) (not b!7601156) (not b!7601169) (not b!7601164) (not b!7601165))
(check-sat)
