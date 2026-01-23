; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507802 () Bool)

(assert start!507802)

(declare-fun b!4859566 () Bool)

(declare-fun e!3038041 () Bool)

(declare-datatypes ((B!2929 0))(
  ( (B!2930 (val!22420 Int)) )
))
(declare-datatypes ((List!55888 0))(
  ( (Nil!55764) (Cons!55764 (h!62212 B!2929) (t!363508 List!55888)) )
))
(declare-fun lt!1992066 () List!55888)

(declare-fun l2!1268 () List!55888)

(declare-fun last!416 (List!55888) B!2929)

(assert (=> b!4859566 (= e!3038041 (= (last!416 lt!1992066) (last!416 l2!1268)))))

(declare-fun b!4859567 () Bool)

(declare-fun e!3038047 () Bool)

(declare-fun e!3038042 () Bool)

(assert (=> b!4859567 (= e!3038047 e!3038042)))

(declare-fun res!2074597 () Bool)

(assert (=> b!4859567 (=> (not res!2074597) (not e!3038042))))

(declare-fun isEmpty!29853 (List!55888) Bool)

(assert (=> b!4859567 (= res!2074597 (not (isEmpty!29853 lt!1992066)))))

(declare-fun l1!1299 () List!55888)

(declare-fun ++!12149 (List!55888 List!55888) List!55888)

(assert (=> b!4859567 (= lt!1992066 (++!12149 (t!363508 l1!1299) l2!1268))))

(declare-fun res!2074598 () Bool)

(assert (=> start!507802 (=> (not res!2074598) (not e!3038047))))

(declare-fun lt!1992064 () List!55888)

(assert (=> start!507802 (= res!2074598 (not (isEmpty!29853 lt!1992064)))))

(assert (=> start!507802 (= lt!1992064 (++!12149 l1!1299 l2!1268))))

(assert (=> start!507802 e!3038047))

(declare-fun e!3038043 () Bool)

(assert (=> start!507802 e!3038043))

(declare-fun e!3038044 () Bool)

(assert (=> start!507802 e!3038044))

(declare-fun b!4859568 () Bool)

(declare-fun tp_is_empty!35547 () Bool)

(declare-fun tp!1366885 () Bool)

(assert (=> b!4859568 (= e!3038043 (and tp_is_empty!35547 tp!1366885))))

(declare-fun b!4859569 () Bool)

(declare-fun e!3038048 () Bool)

(assert (=> b!4859569 (= e!3038048 (not (= (last!416 lt!1992064) (last!416 l1!1299))))))

(declare-fun b!4859570 () Bool)

(assert (=> b!4859570 (= e!3038042 (not true))))

(declare-fun lt!1992065 () Bool)

(assert (=> b!4859570 (= lt!1992065 e!3038048)))

(declare-fun res!2074600 () Bool)

(assert (=> b!4859570 (=> res!2074600 e!3038048)))

(declare-fun lt!1992067 () Bool)

(assert (=> b!4859570 (= res!2074600 lt!1992067)))

(declare-fun e!3038046 () Bool)

(assert (=> b!4859570 e!3038046))

(declare-fun res!2074599 () Bool)

(assert (=> b!4859570 (=> res!2074599 e!3038046)))

(declare-fun e!3038045 () Bool)

(assert (=> b!4859570 (= res!2074599 e!3038045)))

(declare-fun res!2074601 () Bool)

(assert (=> b!4859570 (=> (not res!2074601) (not e!3038045))))

(assert (=> b!4859570 (= res!2074601 (not lt!1992067))))

(declare-fun lt!1992068 () Bool)

(assert (=> b!4859570 (= lt!1992067 (not lt!1992068))))

(assert (=> b!4859570 (= lt!1992068 (isEmpty!29853 l2!1268))))

(declare-datatypes ((Unit!145871 0))(
  ( (Unit!145872) )
))
(declare-fun lt!1992069 () Unit!145871)

(declare-fun lemmaLastOfConcatIsLastOfRhs!42 (List!55888 List!55888) Unit!145871)

(assert (=> b!4859570 (= lt!1992069 (lemmaLastOfConcatIsLastOfRhs!42 (t!363508 l1!1299) l2!1268))))

(declare-fun b!4859571 () Bool)

(declare-fun res!2074603 () Bool)

(assert (=> b!4859571 (=> (not res!2074603) (not e!3038047))))

(assert (=> b!4859571 (= res!2074603 (not (isEmpty!29853 (t!363508 l1!1299))))))

(declare-fun b!4859572 () Bool)

(declare-fun tp!1366884 () Bool)

(assert (=> b!4859572 (= e!3038044 (and tp_is_empty!35547 tp!1366884))))

(declare-fun b!4859573 () Bool)

(assert (=> b!4859573 (= e!3038045 (= (last!416 lt!1992066) (last!416 (t!363508 l1!1299))))))

(declare-fun b!4859574 () Bool)

(declare-fun res!2074602 () Bool)

(assert (=> b!4859574 (=> (not res!2074602) (not e!3038047))))

(get-info :version)

(assert (=> b!4859574 (= res!2074602 ((_ is Cons!55764) l1!1299))))

(declare-fun b!4859575 () Bool)

(assert (=> b!4859575 (= e!3038046 e!3038041)))

(declare-fun res!2074596 () Bool)

(assert (=> b!4859575 (=> (not res!2074596) (not e!3038041))))

(assert (=> b!4859575 (= res!2074596 (not lt!1992068))))

(assert (= (and start!507802 res!2074598) b!4859574))

(assert (= (and b!4859574 res!2074602) b!4859571))

(assert (= (and b!4859571 res!2074603) b!4859567))

(assert (= (and b!4859567 res!2074597) b!4859570))

(assert (= (and b!4859570 res!2074601) b!4859573))

(assert (= (and b!4859570 (not res!2074599)) b!4859575))

(assert (= (and b!4859575 res!2074596) b!4859566))

(assert (= (and b!4859570 (not res!2074600)) b!4859569))

(assert (= (and start!507802 ((_ is Cons!55764) l1!1299)) b!4859568))

(assert (= (and start!507802 ((_ is Cons!55764) l2!1268)) b!4859572))

(declare-fun m!5857880 () Bool)

(assert (=> b!4859569 m!5857880))

(declare-fun m!5857882 () Bool)

(assert (=> b!4859569 m!5857882))

(declare-fun m!5857884 () Bool)

(assert (=> start!507802 m!5857884))

(declare-fun m!5857886 () Bool)

(assert (=> start!507802 m!5857886))

(declare-fun m!5857888 () Bool)

(assert (=> b!4859567 m!5857888))

(declare-fun m!5857890 () Bool)

(assert (=> b!4859567 m!5857890))

(declare-fun m!5857892 () Bool)

(assert (=> b!4859573 m!5857892))

(declare-fun m!5857894 () Bool)

(assert (=> b!4859573 m!5857894))

(declare-fun m!5857896 () Bool)

(assert (=> b!4859570 m!5857896))

(declare-fun m!5857898 () Bool)

(assert (=> b!4859570 m!5857898))

(assert (=> b!4859566 m!5857892))

(declare-fun m!5857900 () Bool)

(assert (=> b!4859566 m!5857900))

(declare-fun m!5857902 () Bool)

(assert (=> b!4859571 m!5857902))

(check-sat (not b!4859573) (not start!507802) (not b!4859568) (not b!4859571) (not b!4859570) (not b!4859566) (not b!4859569) (not b!4859567) tp_is_empty!35547 (not b!4859572))
(check-sat)
