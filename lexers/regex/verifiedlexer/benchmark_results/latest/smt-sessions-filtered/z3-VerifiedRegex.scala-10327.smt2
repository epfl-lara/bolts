; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536670 () Bool)

(assert start!536670)

(declare-fun b!5092554 () Bool)

(declare-fun e!3175877 () Bool)

(declare-fun tp!1419552 () Bool)

(assert (=> b!5092554 (= e!3175877 tp!1419552)))

(declare-fun e!3175876 () Bool)

(declare-fun tp!1419551 () Bool)

(declare-fun b!5092555 () Bool)

(declare-fun tp!1419553 () Bool)

(declare-datatypes ((T!105664 0))(
  ( (T!105665 (val!23730 Int)) )
))
(declare-datatypes ((List!58655 0))(
  ( (Nil!58531) (Cons!58531 (h!64979 T!105664) (t!371590 List!58655)) )
))
(declare-datatypes ((IArray!31353 0))(
  ( (IArray!31354 (innerList!15734 List!58655)) )
))
(declare-datatypes ((Conc!15646 0))(
  ( (Node!15646 (left!42941 Conc!15646) (right!43271 Conc!15646) (csize!31522 Int) (cheight!15857 Int)) (Leaf!25974 (xs!19028 IArray!31353) (csize!31523 Int)) (Empty!15646) )
))
(declare-fun t!3643 () Conc!15646)

(declare-fun inv!77993 (Conc!15646) Bool)

(assert (=> b!5092555 (= e!3175876 (and (inv!77993 (left!42941 t!3643)) tp!1419551 (inv!77993 (right!43271 t!3643)) tp!1419553))))

(declare-fun res!2167248 () Bool)

(declare-fun e!3175878 () Bool)

(assert (=> start!536670 (=> (not res!2167248) (not e!3175878))))

(declare-fun i!607 () Int)

(assert (=> start!536670 (= res!2167248 (<= 0 i!607))))

(assert (=> start!536670 e!3175878))

(assert (=> start!536670 true))

(assert (=> start!536670 (and (inv!77993 t!3643) e!3175876)))

(declare-fun b!5092556 () Bool)

(get-info :version)

(assert (=> b!5092556 (= e!3175878 (and (not ((_ is Leaf!25974) t!3643)) (not ((_ is Node!15646) t!3643))))))

(declare-fun b!5092557 () Bool)

(declare-fun res!2167247 () Bool)

(assert (=> b!5092557 (=> (not res!2167247) (not e!3175878))))

(declare-fun size!39235 (Conc!15646) Int)

(assert (=> b!5092557 (= res!2167247 (< i!607 (size!39235 t!3643)))))

(declare-fun b!5092558 () Bool)

(declare-fun inv!77994 (IArray!31353) Bool)

(assert (=> b!5092558 (= e!3175876 (and (inv!77994 (xs!19028 t!3643)) e!3175877))))

(assert (= (and start!536670 res!2167248) b!5092557))

(assert (= (and b!5092557 res!2167247) b!5092556))

(assert (= (and start!536670 ((_ is Node!15646) t!3643)) b!5092555))

(assert (= b!5092558 b!5092554))

(assert (= (and start!536670 ((_ is Leaf!25974) t!3643)) b!5092558))

(declare-fun m!6150828 () Bool)

(assert (=> b!5092555 m!6150828))

(declare-fun m!6150830 () Bool)

(assert (=> b!5092555 m!6150830))

(declare-fun m!6150832 () Bool)

(assert (=> start!536670 m!6150832))

(declare-fun m!6150834 () Bool)

(assert (=> b!5092557 m!6150834))

(declare-fun m!6150836 () Bool)

(assert (=> b!5092558 m!6150836))

(check-sat (not b!5092557) (not b!5092555) (not start!536670) (not b!5092558) (not b!5092554))
(check-sat)
(get-model)

(declare-fun d!1648458 () Bool)

(declare-fun c!875306 () Bool)

(assert (=> d!1648458 (= c!875306 ((_ is Node!15646) (left!42941 t!3643)))))

(declare-fun e!3175893 () Bool)

(assert (=> d!1648458 (= (inv!77993 (left!42941 t!3643)) e!3175893)))

(declare-fun b!5092580 () Bool)

(declare-fun inv!77997 (Conc!15646) Bool)

(assert (=> b!5092580 (= e!3175893 (inv!77997 (left!42941 t!3643)))))

(declare-fun b!5092581 () Bool)

(declare-fun e!3175894 () Bool)

(assert (=> b!5092581 (= e!3175893 e!3175894)))

(declare-fun res!2167256 () Bool)

(assert (=> b!5092581 (= res!2167256 (not ((_ is Leaf!25974) (left!42941 t!3643))))))

(assert (=> b!5092581 (=> res!2167256 e!3175894)))

(declare-fun b!5092582 () Bool)

(declare-fun inv!77998 (Conc!15646) Bool)

(assert (=> b!5092582 (= e!3175894 (inv!77998 (left!42941 t!3643)))))

(assert (= (and d!1648458 c!875306) b!5092580))

(assert (= (and d!1648458 (not c!875306)) b!5092581))

(assert (= (and b!5092581 (not res!2167256)) b!5092582))

(declare-fun m!6150850 () Bool)

(assert (=> b!5092580 m!6150850))

(declare-fun m!6150852 () Bool)

(assert (=> b!5092582 m!6150852))

(assert (=> b!5092555 d!1648458))

(declare-fun d!1648466 () Bool)

(declare-fun c!875307 () Bool)

(assert (=> d!1648466 (= c!875307 ((_ is Node!15646) (right!43271 t!3643)))))

(declare-fun e!3175895 () Bool)

(assert (=> d!1648466 (= (inv!77993 (right!43271 t!3643)) e!3175895)))

(declare-fun b!5092583 () Bool)

(assert (=> b!5092583 (= e!3175895 (inv!77997 (right!43271 t!3643)))))

(declare-fun b!5092584 () Bool)

(declare-fun e!3175896 () Bool)

(assert (=> b!5092584 (= e!3175895 e!3175896)))

(declare-fun res!2167257 () Bool)

(assert (=> b!5092584 (= res!2167257 (not ((_ is Leaf!25974) (right!43271 t!3643))))))

(assert (=> b!5092584 (=> res!2167257 e!3175896)))

(declare-fun b!5092585 () Bool)

(assert (=> b!5092585 (= e!3175896 (inv!77998 (right!43271 t!3643)))))

(assert (= (and d!1648466 c!875307) b!5092583))

(assert (= (and d!1648466 (not c!875307)) b!5092584))

(assert (= (and b!5092584 (not res!2167257)) b!5092585))

(declare-fun m!6150856 () Bool)

(assert (=> b!5092583 m!6150856))

(declare-fun m!6150858 () Bool)

(assert (=> b!5092585 m!6150858))

(assert (=> b!5092555 d!1648466))

(declare-fun d!1648468 () Bool)

(declare-fun c!875308 () Bool)

(assert (=> d!1648468 (= c!875308 ((_ is Node!15646) t!3643))))

(declare-fun e!3175897 () Bool)

(assert (=> d!1648468 (= (inv!77993 t!3643) e!3175897)))

(declare-fun b!5092586 () Bool)

(assert (=> b!5092586 (= e!3175897 (inv!77997 t!3643))))

(declare-fun b!5092587 () Bool)

(declare-fun e!3175898 () Bool)

(assert (=> b!5092587 (= e!3175897 e!3175898)))

(declare-fun res!2167258 () Bool)

(assert (=> b!5092587 (= res!2167258 (not ((_ is Leaf!25974) t!3643)))))

(assert (=> b!5092587 (=> res!2167258 e!3175898)))

(declare-fun b!5092588 () Bool)

(assert (=> b!5092588 (= e!3175898 (inv!77998 t!3643))))

(assert (= (and d!1648468 c!875308) b!5092586))

(assert (= (and d!1648468 (not c!875308)) b!5092587))

(assert (= (and b!5092587 (not res!2167258)) b!5092588))

(declare-fun m!6150860 () Bool)

(assert (=> b!5092586 m!6150860))

(declare-fun m!6150862 () Bool)

(assert (=> b!5092588 m!6150862))

(assert (=> start!536670 d!1648468))

(declare-fun d!1648472 () Bool)

(declare-fun lt!2092680 () Int)

(declare-fun size!39237 (List!58655) Int)

(declare-fun list!19120 (Conc!15646) List!58655)

(assert (=> d!1648472 (= lt!2092680 (size!39237 (list!19120 t!3643)))))

(assert (=> d!1648472 (= lt!2092680 (ite ((_ is Empty!15646) t!3643) 0 (ite ((_ is Leaf!25974) t!3643) (csize!31523 t!3643) (csize!31522 t!3643))))))

(assert (=> d!1648472 (= (size!39235 t!3643) lt!2092680)))

(declare-fun bs!1191212 () Bool)

(assert (= bs!1191212 d!1648472))

(declare-fun m!6150868 () Bool)

(assert (=> bs!1191212 m!6150868))

(assert (=> bs!1191212 m!6150868))

(declare-fun m!6150870 () Bool)

(assert (=> bs!1191212 m!6150870))

(assert (=> b!5092557 d!1648472))

(declare-fun d!1648474 () Bool)

(assert (=> d!1648474 (= (inv!77994 (xs!19028 t!3643)) (<= (size!39237 (innerList!15734 (xs!19028 t!3643))) 2147483647))))

(declare-fun bs!1191213 () Bool)

(assert (= bs!1191213 d!1648474))

(declare-fun m!6150872 () Bool)

(assert (=> bs!1191213 m!6150872))

(assert (=> b!5092558 d!1648474))

(declare-fun tp!1419575 () Bool)

(declare-fun b!5092616 () Bool)

(declare-fun e!3175914 () Bool)

(declare-fun tp!1419576 () Bool)

(assert (=> b!5092616 (= e!3175914 (and (inv!77993 (left!42941 (left!42941 t!3643))) tp!1419576 (inv!77993 (right!43271 (left!42941 t!3643))) tp!1419575))))

(declare-fun b!5092618 () Bool)

(declare-fun e!3175915 () Bool)

(declare-fun tp!1419577 () Bool)

(assert (=> b!5092618 (= e!3175915 tp!1419577)))

(declare-fun b!5092617 () Bool)

(assert (=> b!5092617 (= e!3175914 (and (inv!77994 (xs!19028 (left!42941 t!3643))) e!3175915))))

(assert (=> b!5092555 (= tp!1419551 (and (inv!77993 (left!42941 t!3643)) e!3175914))))

(assert (= (and b!5092555 ((_ is Node!15646) (left!42941 t!3643))) b!5092616))

(assert (= b!5092617 b!5092618))

(assert (= (and b!5092555 ((_ is Leaf!25974) (left!42941 t!3643))) b!5092617))

(declare-fun m!6150886 () Bool)

(assert (=> b!5092616 m!6150886))

(declare-fun m!6150888 () Bool)

(assert (=> b!5092616 m!6150888))

(declare-fun m!6150890 () Bool)

(assert (=> b!5092617 m!6150890))

(assert (=> b!5092555 m!6150828))

(declare-fun b!5092619 () Bool)

(declare-fun tp!1419578 () Bool)

(declare-fun e!3175916 () Bool)

(declare-fun tp!1419579 () Bool)

(assert (=> b!5092619 (= e!3175916 (and (inv!77993 (left!42941 (right!43271 t!3643))) tp!1419579 (inv!77993 (right!43271 (right!43271 t!3643))) tp!1419578))))

(declare-fun b!5092621 () Bool)

(declare-fun e!3175917 () Bool)

(declare-fun tp!1419580 () Bool)

(assert (=> b!5092621 (= e!3175917 tp!1419580)))

(declare-fun b!5092620 () Bool)

(assert (=> b!5092620 (= e!3175916 (and (inv!77994 (xs!19028 (right!43271 t!3643))) e!3175917))))

(assert (=> b!5092555 (= tp!1419553 (and (inv!77993 (right!43271 t!3643)) e!3175916))))

(assert (= (and b!5092555 ((_ is Node!15646) (right!43271 t!3643))) b!5092619))

(assert (= b!5092620 b!5092621))

(assert (= (and b!5092555 ((_ is Leaf!25974) (right!43271 t!3643))) b!5092620))

(declare-fun m!6150892 () Bool)

(assert (=> b!5092619 m!6150892))

(declare-fun m!6150894 () Bool)

(assert (=> b!5092619 m!6150894))

(declare-fun m!6150896 () Bool)

(assert (=> b!5092620 m!6150896))

(assert (=> b!5092555 m!6150830))

(declare-fun b!5092626 () Bool)

(declare-fun e!3175920 () Bool)

(declare-fun tp_is_empty!37171 () Bool)

(declare-fun tp!1419583 () Bool)

(assert (=> b!5092626 (= e!3175920 (and tp_is_empty!37171 tp!1419583))))

(assert (=> b!5092554 (= tp!1419552 e!3175920)))

(assert (= (and b!5092554 ((_ is Cons!58531) (innerList!15734 (xs!19028 t!3643)))) b!5092626))

(check-sat (not d!1648472) (not b!5092586) (not b!5092620) (not b!5092555) (not b!5092618) (not b!5092626) (not d!1648474) (not b!5092583) (not b!5092588) (not b!5092616) (not b!5092580) (not b!5092582) tp_is_empty!37171 (not b!5092617) (not b!5092619) (not b!5092621) (not b!5092585))
(check-sat)
