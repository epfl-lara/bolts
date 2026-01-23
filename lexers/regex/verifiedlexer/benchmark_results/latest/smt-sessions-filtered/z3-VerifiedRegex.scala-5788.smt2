; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285808 () Bool)

(assert start!285808)

(declare-fun b!2944374 () Bool)

(declare-fun res!1215245 () Bool)

(declare-fun e!1855129 () Bool)

(assert (=> b!2944374 (=> res!1215245 e!1855129)))

(declare-datatypes ((C!18440 0))(
  ( (C!18441 (val!11256 Int)) )
))
(declare-datatypes ((Regex!9127 0))(
  ( (ElementMatch!9127 (c!481505 C!18440)) (Concat!14448 (regOne!18766 Regex!9127) (regTwo!18766 Regex!9127)) (EmptyExpr!9127) (Star!9127 (reg!9456 Regex!9127)) (EmptyLang!9127) (Union!9127 (regOne!18767 Regex!9127) (regTwo!18767 Regex!9127)) )
))
(declare-fun lt!1030957 () Regex!9127)

(declare-fun isEmptyExpr!330 (Regex!9127) Bool)

(assert (=> b!2944374 (= res!1215245 (isEmptyExpr!330 lt!1030957))))

(declare-fun b!2944375 () Bool)

(declare-fun res!1215249 () Bool)

(declare-fun e!1855127 () Bool)

(assert (=> b!2944375 (=> res!1215249 e!1855127)))

(declare-datatypes ((List!34992 0))(
  ( (Nil!34868) (Cons!34868 (h!40288 C!18440) (t!234057 List!34992)) )
))
(declare-fun s!11993 () List!34992)

(declare-fun isEmpty!19129 (List!34992) Bool)

(assert (=> b!2944375 (= res!1215249 (isEmpty!19129 s!11993))))

(declare-fun b!2944376 () Bool)

(declare-fun res!1215247 () Bool)

(assert (=> b!2944376 (=> res!1215247 e!1855129)))

(declare-fun lt!1030954 () Regex!9127)

(assert (=> b!2944376 (= res!1215247 (not (isEmptyExpr!330 lt!1030954)))))

(declare-fun b!2944377 () Bool)

(declare-fun e!1855128 () Bool)

(declare-fun tp_is_empty!15817 () Bool)

(declare-fun tp!942041 () Bool)

(assert (=> b!2944377 (= e!1855128 (and tp_is_empty!15817 tp!942041))))

(declare-fun b!2944378 () Bool)

(assert (=> b!2944378 (= e!1855129 true)))

(declare-fun r!17423 () Regex!9127)

(declare-fun matchR!4009 (Regex!9127 List!34992) Bool)

(assert (=> b!2944378 (= (matchR!4009 (regTwo!18766 r!17423) Nil!34868) (matchR!4009 lt!1030954 Nil!34868))))

(declare-datatypes ((Unit!48633 0))(
  ( (Unit!48634) )
))
(declare-fun lt!1030953 () Unit!48633)

(declare-fun lemmaSimplifySound!114 (Regex!9127 List!34992) Unit!48633)

(assert (=> b!2944378 (= lt!1030953 (lemmaSimplifySound!114 (regTwo!18766 r!17423) Nil!34868))))

(assert (=> b!2944378 (= (matchR!4009 (regOne!18766 r!17423) s!11993) (matchR!4009 lt!1030957 s!11993))))

(declare-fun lt!1030956 () Unit!48633)

(assert (=> b!2944378 (= lt!1030956 (lemmaSimplifySound!114 (regOne!18766 r!17423) s!11993))))

(declare-fun b!2944379 () Bool)

(declare-fun res!1215244 () Bool)

(assert (=> b!2944379 (=> res!1215244 e!1855129)))

(declare-fun isEmptyLang!249 (Regex!9127) Bool)

(assert (=> b!2944379 (= res!1215244 (isEmptyLang!249 lt!1030954))))

(declare-fun b!2944381 () Bool)

(declare-fun e!1855130 () Bool)

(declare-fun tp!942040 () Bool)

(assert (=> b!2944381 (= e!1855130 tp!942040)))

(declare-fun b!2944382 () Bool)

(declare-fun tp!942036 () Bool)

(declare-fun tp!942038 () Bool)

(assert (=> b!2944382 (= e!1855130 (and tp!942036 tp!942038))))

(declare-fun b!2944383 () Bool)

(declare-fun e!1855131 () Bool)

(assert (=> b!2944383 (= e!1855131 (not e!1855127))))

(declare-fun res!1215246 () Bool)

(assert (=> b!2944383 (=> res!1215246 e!1855127)))

(declare-fun lt!1030952 () Bool)

(get-info :version)

(assert (=> b!2944383 (= res!1215246 (or lt!1030952 (not ((_ is Concat!14448) r!17423))))))

(declare-fun matchRSpec!1264 (Regex!9127 List!34992) Bool)

(assert (=> b!2944383 (= lt!1030952 (matchRSpec!1264 r!17423 s!11993))))

(assert (=> b!2944383 (= lt!1030952 (matchR!4009 r!17423 s!11993))))

(declare-fun lt!1030955 () Unit!48633)

(declare-fun mainMatchTheorem!1264 (Regex!9127 List!34992) Unit!48633)

(assert (=> b!2944383 (= lt!1030955 (mainMatchTheorem!1264 r!17423 s!11993))))

(declare-fun b!2944384 () Bool)

(assert (=> b!2944384 (= e!1855127 e!1855129)))

(declare-fun res!1215250 () Bool)

(assert (=> b!2944384 (=> res!1215250 e!1855129)))

(assert (=> b!2944384 (= res!1215250 (isEmptyLang!249 lt!1030957))))

(declare-fun simplify!132 (Regex!9127) Regex!9127)

(assert (=> b!2944384 (= lt!1030954 (simplify!132 (regTwo!18766 r!17423)))))

(assert (=> b!2944384 (= lt!1030957 (simplify!132 (regOne!18766 r!17423)))))

(declare-fun b!2944385 () Bool)

(assert (=> b!2944385 (= e!1855130 tp_is_empty!15817)))

(declare-fun res!1215248 () Bool)

(assert (=> start!285808 (=> (not res!1215248) (not e!1855131))))

(declare-fun validRegex!3860 (Regex!9127) Bool)

(assert (=> start!285808 (= res!1215248 (validRegex!3860 r!17423))))

(assert (=> start!285808 e!1855131))

(assert (=> start!285808 e!1855130))

(assert (=> start!285808 e!1855128))

(declare-fun b!2944380 () Bool)

(declare-fun tp!942039 () Bool)

(declare-fun tp!942037 () Bool)

(assert (=> b!2944380 (= e!1855130 (and tp!942039 tp!942037))))

(assert (= (and start!285808 res!1215248) b!2944383))

(assert (= (and b!2944383 (not res!1215246)) b!2944375))

(assert (= (and b!2944375 (not res!1215249)) b!2944384))

(assert (= (and b!2944384 (not res!1215250)) b!2944379))

(assert (= (and b!2944379 (not res!1215244)) b!2944374))

(assert (= (and b!2944374 (not res!1215245)) b!2944376))

(assert (= (and b!2944376 (not res!1215247)) b!2944378))

(assert (= (and start!285808 ((_ is ElementMatch!9127) r!17423)) b!2944385))

(assert (= (and start!285808 ((_ is Concat!14448) r!17423)) b!2944382))

(assert (= (and start!285808 ((_ is Star!9127) r!17423)) b!2944381))

(assert (= (and start!285808 ((_ is Union!9127) r!17423)) b!2944380))

(assert (= (and start!285808 ((_ is Cons!34868) s!11993)) b!2944377))

(declare-fun m!3327171 () Bool)

(assert (=> b!2944375 m!3327171))

(declare-fun m!3327173 () Bool)

(assert (=> b!2944378 m!3327173))

(declare-fun m!3327175 () Bool)

(assert (=> b!2944378 m!3327175))

(declare-fun m!3327177 () Bool)

(assert (=> b!2944378 m!3327177))

(declare-fun m!3327179 () Bool)

(assert (=> b!2944378 m!3327179))

(declare-fun m!3327181 () Bool)

(assert (=> b!2944378 m!3327181))

(declare-fun m!3327183 () Bool)

(assert (=> b!2944378 m!3327183))

(declare-fun m!3327185 () Bool)

(assert (=> b!2944376 m!3327185))

(declare-fun m!3327187 () Bool)

(assert (=> b!2944379 m!3327187))

(declare-fun m!3327189 () Bool)

(assert (=> start!285808 m!3327189))

(declare-fun m!3327191 () Bool)

(assert (=> b!2944383 m!3327191))

(declare-fun m!3327193 () Bool)

(assert (=> b!2944383 m!3327193))

(declare-fun m!3327195 () Bool)

(assert (=> b!2944383 m!3327195))

(declare-fun m!3327197 () Bool)

(assert (=> b!2944384 m!3327197))

(declare-fun m!3327199 () Bool)

(assert (=> b!2944384 m!3327199))

(declare-fun m!3327201 () Bool)

(assert (=> b!2944384 m!3327201))

(declare-fun m!3327203 () Bool)

(assert (=> b!2944374 m!3327203))

(check-sat (not b!2944381) (not b!2944383) (not b!2944374) (not b!2944384) (not start!285808) (not b!2944377) (not b!2944380) (not b!2944379) tp_is_empty!15817 (not b!2944375) (not b!2944382) (not b!2944376) (not b!2944378))
(check-sat)
