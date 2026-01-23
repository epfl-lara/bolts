; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755268 () Bool)

(assert start!755268)

(declare-fun b!8023473 () Bool)

(declare-fun res!3172928 () Bool)

(declare-fun e!4726535 () Bool)

(assert (=> b!8023473 (=> (not res!3172928) (not e!4726535))))

(declare-datatypes ((B!4241 0))(
  ( (B!4242 (val!32510 Int)) )
))
(declare-datatypes ((List!75022 0))(
  ( (Nil!74898) (Cons!74898 (h!81346 B!4241) (t!390765 List!75022)) )
))
(declare-fun l!3411 () List!75022)

(declare-fun p1!179 () List!75022)

(declare-fun s1!490 () List!75022)

(declare-fun ++!18566 (List!75022 List!75022) List!75022)

(assert (=> b!8023473 (= res!3172928 (= (++!18566 p1!179 s1!490) l!3411))))

(declare-fun b!8023474 () Bool)

(declare-fun e!4726541 () Bool)

(declare-fun tp_is_empty!54129 () Bool)

(declare-fun tp!2401231 () Bool)

(assert (=> b!8023474 (= e!4726541 (and tp_is_empty!54129 tp!2401231))))

(declare-fun b!8023475 () Bool)

(declare-fun res!3172924 () Bool)

(declare-fun e!4726538 () Bool)

(assert (=> b!8023475 (=> (not res!3172924) (not e!4726538))))

(declare-fun lt!2720423 () List!75022)

(declare-fun lt!2720424 () List!75022)

(declare-fun s2!455 () List!75022)

(assert (=> b!8023475 (= res!3172924 (= (++!18566 lt!2720423 s2!455) lt!2720424))))

(declare-fun b!8023476 () Bool)

(declare-fun res!3172923 () Bool)

(assert (=> b!8023476 (=> (not res!3172923) (not e!4726535))))

(declare-fun p2!179 () List!75022)

(assert (=> b!8023476 (= res!3172923 (= (++!18566 p2!179 s2!455) l!3411))))

(declare-fun b!8023477 () Bool)

(declare-fun e!4726540 () Bool)

(declare-fun tp!2401229 () Bool)

(assert (=> b!8023477 (= e!4726540 (and tp_is_empty!54129 tp!2401229))))

(declare-fun b!8023478 () Bool)

(declare-fun e!4726539 () Bool)

(declare-fun tp!2401232 () Bool)

(assert (=> b!8023478 (= e!4726539 (and tp_is_empty!54129 tp!2401232))))

(declare-fun b!8023479 () Bool)

(assert (=> b!8023479 (= e!4726538 (not true))))

(assert (=> b!8023479 (= s1!490 s2!455)))

(declare-datatypes ((Unit!170928 0))(
  ( (Unit!170929) )
))
(declare-fun lt!2720422 () Unit!170928)

(declare-fun lemmaSamePrefixThenSameSuffix!3102 (List!75022 List!75022 List!75022 List!75022 List!75022) Unit!170928)

(assert (=> b!8023479 (= lt!2720422 (lemmaSamePrefixThenSameSuffix!3102 (t!390765 p1!179) s1!490 lt!2720423 s2!455 lt!2720424))))

(declare-fun b!8023480 () Bool)

(declare-fun res!3172927 () Bool)

(assert (=> b!8023480 (=> (not res!3172927) (not e!4726538))))

(assert (=> b!8023480 (= res!3172927 (= (t!390765 p1!179) lt!2720423))))

(declare-fun b!8023481 () Bool)

(declare-fun res!3172926 () Bool)

(assert (=> b!8023481 (=> (not res!3172926) (not e!4726535))))

(get-info :version)

(assert (=> b!8023481 (= res!3172926 (and (= p1!179 p2!179) ((_ is Cons!74898) p1!179)))))

(declare-fun res!3172931 () Bool)

(assert (=> start!755268 (=> (not res!3172931) (not e!4726535))))

(declare-fun isPrefix!6829 (List!75022 List!75022) Bool)

(assert (=> start!755268 (= res!3172931 (isPrefix!6829 p1!179 l!3411))))

(assert (=> start!755268 e!4726535))

(assert (=> start!755268 e!4726541))

(assert (=> start!755268 e!4726540))

(declare-fun e!4726537 () Bool)

(assert (=> start!755268 e!4726537))

(declare-fun e!4726536 () Bool)

(assert (=> start!755268 e!4726536))

(assert (=> start!755268 e!4726539))

(declare-fun b!8023482 () Bool)

(declare-fun res!3172925 () Bool)

(assert (=> b!8023482 (=> (not res!3172925) (not e!4726538))))

(assert (=> b!8023482 (= res!3172925 (= (++!18566 (t!390765 p1!179) s1!490) lt!2720424))))

(declare-fun b!8023483 () Bool)

(declare-fun tp!2401233 () Bool)

(assert (=> b!8023483 (= e!4726537 (and tp_is_empty!54129 tp!2401233))))

(declare-fun b!8023484 () Bool)

(declare-fun res!3172930 () Bool)

(assert (=> b!8023484 (=> (not res!3172930) (not e!4726535))))

(assert (=> b!8023484 (= res!3172930 (isPrefix!6829 p2!179 l!3411))))

(declare-fun b!8023485 () Bool)

(declare-fun tp!2401230 () Bool)

(assert (=> b!8023485 (= e!4726536 (and tp_is_empty!54129 tp!2401230))))

(declare-fun b!8023486 () Bool)

(declare-fun res!3172932 () Bool)

(assert (=> b!8023486 (=> (not res!3172932) (not e!4726538))))

(assert (=> b!8023486 (= res!3172932 (isPrefix!6829 lt!2720423 lt!2720424))))

(declare-fun b!8023487 () Bool)

(assert (=> b!8023487 (= e!4726535 e!4726538)))

(declare-fun res!3172929 () Bool)

(assert (=> b!8023487 (=> (not res!3172929) (not e!4726538))))

(assert (=> b!8023487 (= res!3172929 (isPrefix!6829 (t!390765 p1!179) lt!2720424))))

(declare-fun tail!15967 (List!75022) List!75022)

(assert (=> b!8023487 (= lt!2720424 (tail!15967 l!3411))))

(assert (=> b!8023487 (= lt!2720423 (tail!15967 p2!179))))

(assert (= (and start!755268 res!3172931) b!8023484))

(assert (= (and b!8023484 res!3172930) b!8023473))

(assert (= (and b!8023473 res!3172928) b!8023476))

(assert (= (and b!8023476 res!3172923) b!8023481))

(assert (= (and b!8023481 res!3172926) b!8023487))

(assert (= (and b!8023487 res!3172929) b!8023486))

(assert (= (and b!8023486 res!3172932) b!8023482))

(assert (= (and b!8023482 res!3172925) b!8023475))

(assert (= (and b!8023475 res!3172924) b!8023480))

(assert (= (and b!8023480 res!3172927) b!8023479))

(assert (= (and start!755268 ((_ is Cons!74898) p2!179)) b!8023474))

(assert (= (and start!755268 ((_ is Cons!74898) s2!455)) b!8023477))

(assert (= (and start!755268 ((_ is Cons!74898) l!3411)) b!8023483))

(assert (= (and start!755268 ((_ is Cons!74898) p1!179)) b!8023485))

(assert (= (and start!755268 ((_ is Cons!74898) s1!490)) b!8023478))

(declare-fun m!8386156 () Bool)

(assert (=> b!8023486 m!8386156))

(declare-fun m!8386158 () Bool)

(assert (=> b!8023476 m!8386158))

(declare-fun m!8386160 () Bool)

(assert (=> b!8023473 m!8386160))

(declare-fun m!8386162 () Bool)

(assert (=> b!8023475 m!8386162))

(declare-fun m!8386164 () Bool)

(assert (=> b!8023487 m!8386164))

(declare-fun m!8386166 () Bool)

(assert (=> b!8023487 m!8386166))

(declare-fun m!8386168 () Bool)

(assert (=> b!8023487 m!8386168))

(declare-fun m!8386170 () Bool)

(assert (=> b!8023484 m!8386170))

(declare-fun m!8386172 () Bool)

(assert (=> b!8023479 m!8386172))

(declare-fun m!8386174 () Bool)

(assert (=> start!755268 m!8386174))

(declare-fun m!8386176 () Bool)

(assert (=> b!8023482 m!8386176))

(check-sat (not b!8023484) (not b!8023477) (not start!755268) (not b!8023486) (not b!8023487) (not b!8023485) (not b!8023475) (not b!8023479) (not b!8023474) (not b!8023482) (not b!8023473) (not b!8023476) (not b!8023478) (not b!8023483) tp_is_empty!54129)
(check-sat)
