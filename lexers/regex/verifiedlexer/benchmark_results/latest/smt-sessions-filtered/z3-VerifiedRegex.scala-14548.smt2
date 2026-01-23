; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755136 () Bool)

(assert start!755136)

(declare-fun b!8022003 () Bool)

(declare-fun res!3172087 () Bool)

(declare-fun e!4725651 () Bool)

(assert (=> b!8022003 (=> (not res!3172087) (not e!4725651))))

(declare-datatypes ((B!4209 0))(
  ( (B!4210 (val!32494 Int)) )
))
(declare-datatypes ((List!75006 0))(
  ( (Nil!74882) (Cons!74882 (h!81330 B!4209) (t!390749 List!75006)) )
))
(declare-fun p1!179 () List!75006)

(declare-fun p2!179 () List!75006)

(get-info :version)

(assert (=> b!8022003 (= res!3172087 (and (= p1!179 p2!179) ((_ is Cons!74882) p1!179)))))

(declare-fun b!8022004 () Bool)

(declare-fun e!4725654 () Bool)

(declare-fun tp_is_empty!54097 () Bool)

(declare-fun tp!2400885 () Bool)

(assert (=> b!8022004 (= e!4725654 (and tp_is_empty!54097 tp!2400885))))

(declare-fun b!8022005 () Bool)

(declare-fun e!4725657 () Bool)

(declare-fun tp!2400884 () Bool)

(assert (=> b!8022005 (= e!4725657 (and tp_is_empty!54097 tp!2400884))))

(declare-fun res!3172081 () Bool)

(assert (=> start!755136 (=> (not res!3172081) (not e!4725651))))

(declare-fun l!3411 () List!75006)

(declare-fun isPrefix!6813 (List!75006 List!75006) Bool)

(assert (=> start!755136 (= res!3172081 (isPrefix!6813 p1!179 l!3411))))

(assert (=> start!755136 e!4725651))

(declare-fun e!4725652 () Bool)

(assert (=> start!755136 e!4725652))

(assert (=> start!755136 e!4725657))

(declare-fun e!4725656 () Bool)

(assert (=> start!755136 e!4725656))

(assert (=> start!755136 e!4725654))

(declare-fun e!4725655 () Bool)

(assert (=> start!755136 e!4725655))

(declare-fun b!8022006 () Bool)

(declare-fun res!3172082 () Bool)

(declare-fun e!4725653 () Bool)

(assert (=> b!8022006 (=> (not res!3172082) (not e!4725653))))

(declare-fun lt!2720162 () List!75006)

(declare-fun lt!2720163 () List!75006)

(assert (=> b!8022006 (= res!3172082 (isPrefix!6813 lt!2720162 lt!2720163))))

(declare-fun b!8022007 () Bool)

(declare-fun res!3172085 () Bool)

(assert (=> b!8022007 (=> (not res!3172085) (not e!4725653))))

(declare-fun s1!490 () List!75006)

(declare-fun ++!18550 (List!75006 List!75006) List!75006)

(assert (=> b!8022007 (= res!3172085 (= (++!18550 (t!390749 p1!179) s1!490) lt!2720163))))

(declare-fun b!8022008 () Bool)

(declare-fun res!3172088 () Bool)

(assert (=> b!8022008 (=> (not res!3172088) (not e!4725651))))

(assert (=> b!8022008 (= res!3172088 (= (++!18550 p1!179 s1!490) l!3411))))

(declare-fun b!8022009 () Bool)

(declare-fun tp!2400881 () Bool)

(assert (=> b!8022009 (= e!4725652 (and tp_is_empty!54097 tp!2400881))))

(declare-fun b!8022010 () Bool)

(declare-fun res!3172086 () Bool)

(assert (=> b!8022010 (=> (not res!3172086) (not e!4725651))))

(declare-fun s2!455 () List!75006)

(assert (=> b!8022010 (= res!3172086 (= (++!18550 p2!179 s2!455) l!3411))))

(declare-fun b!8022011 () Bool)

(declare-fun tp!2400883 () Bool)

(assert (=> b!8022011 (= e!4725655 (and tp_is_empty!54097 tp!2400883))))

(declare-fun b!8022012 () Bool)

(assert (=> b!8022012 (= e!4725653 false)))

(declare-fun lt!2720164 () List!75006)

(assert (=> b!8022012 (= lt!2720164 (++!18550 lt!2720162 s2!455))))

(declare-fun b!8022013 () Bool)

(declare-fun tp!2400882 () Bool)

(assert (=> b!8022013 (= e!4725656 (and tp_is_empty!54097 tp!2400882))))

(declare-fun b!8022014 () Bool)

(declare-fun res!3172083 () Bool)

(assert (=> b!8022014 (=> (not res!3172083) (not e!4725651))))

(assert (=> b!8022014 (= res!3172083 (isPrefix!6813 p2!179 l!3411))))

(declare-fun b!8022015 () Bool)

(assert (=> b!8022015 (= e!4725651 e!4725653)))

(declare-fun res!3172084 () Bool)

(assert (=> b!8022015 (=> (not res!3172084) (not e!4725653))))

(assert (=> b!8022015 (= res!3172084 (isPrefix!6813 (t!390749 p1!179) lt!2720163))))

(declare-fun tail!15952 (List!75006) List!75006)

(assert (=> b!8022015 (= lt!2720163 (tail!15952 l!3411))))

(assert (=> b!8022015 (= lt!2720162 (tail!15952 p2!179))))

(assert (= (and start!755136 res!3172081) b!8022014))

(assert (= (and b!8022014 res!3172083) b!8022008))

(assert (= (and b!8022008 res!3172088) b!8022010))

(assert (= (and b!8022010 res!3172086) b!8022003))

(assert (= (and b!8022003 res!3172087) b!8022015))

(assert (= (and b!8022015 res!3172084) b!8022006))

(assert (= (and b!8022006 res!3172082) b!8022007))

(assert (= (and b!8022007 res!3172085) b!8022012))

(assert (= (and start!755136 ((_ is Cons!74882) p2!179)) b!8022009))

(assert (= (and start!755136 ((_ is Cons!74882) s2!455)) b!8022005))

(assert (= (and start!755136 ((_ is Cons!74882) l!3411)) b!8022013))

(assert (= (and start!755136 ((_ is Cons!74882) p1!179)) b!8022004))

(assert (= (and start!755136 ((_ is Cons!74882) s1!490)) b!8022011))

(declare-fun m!8384758 () Bool)

(assert (=> b!8022012 m!8384758))

(declare-fun m!8384760 () Bool)

(assert (=> b!8022006 m!8384760))

(declare-fun m!8384762 () Bool)

(assert (=> b!8022010 m!8384762))

(declare-fun m!8384764 () Bool)

(assert (=> b!8022008 m!8384764))

(declare-fun m!8384766 () Bool)

(assert (=> b!8022014 m!8384766))

(declare-fun m!8384768 () Bool)

(assert (=> b!8022015 m!8384768))

(declare-fun m!8384770 () Bool)

(assert (=> b!8022015 m!8384770))

(declare-fun m!8384772 () Bool)

(assert (=> b!8022015 m!8384772))

(declare-fun m!8384774 () Bool)

(assert (=> b!8022007 m!8384774))

(declare-fun m!8384776 () Bool)

(assert (=> start!755136 m!8384776))

(check-sat tp_is_empty!54097 (not b!8022009) (not b!8022007) (not b!8022006) (not start!755136) (not b!8022004) (not b!8022010) (not b!8022014) (not b!8022013) (not b!8022005) (not b!8022015) (not b!8022011) (not b!8022012) (not b!8022008))
(check-sat)
