; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546042 () Bool)

(assert start!546042)

(declare-fun b_free!133573 () Bool)

(declare-fun b_next!134363 () Bool)

(assert (=> start!546042 (= b_free!133573 (not b_next!134363))))

(declare-fun tp!1447999 () Bool)

(declare-fun b_and!350585 () Bool)

(assert (=> start!546042 (= tp!1447999 b_and!350585)))

(declare-fun b!5162746 () Bool)

(declare-fun e!3216748 () Bool)

(declare-datatypes ((B!3129 0))(
  ( (B!3130 (val!24348 Int)) )
))
(declare-datatypes ((List!60014 0))(
  ( (Nil!59890) (Cons!59890 (h!66338 B!3129) (t!373135 List!60014)) )
))
(declare-fun l!3049 () List!60014)

(declare-fun ListPrimitiveSize!400 (List!60014) Int)

(assert (=> b!5162746 (= e!3216748 (>= (ListPrimitiveSize!400 (t!373135 l!3049)) (ListPrimitiveSize!400 l!3049)))))

(declare-fun res!2194920 () Bool)

(assert (=> start!546042 (=> (not res!2194920) (not e!3216748))))

(declare-fun p!1890 () Int)

(declare-fun forall!14081 (List!60014 Int) Bool)

(assert (=> start!546042 (= res!2194920 (forall!14081 l!3049 p!1890))))

(assert (=> start!546042 e!3216748))

(declare-fun e!3216747 () Bool)

(assert (=> start!546042 e!3216747))

(assert (=> start!546042 tp!1447999))

(declare-fun b!5162744 () Bool)

(declare-fun res!2194918 () Bool)

(assert (=> b!5162744 (=> (not res!2194918) (not e!3216748))))

(get-info :version)

(assert (=> b!5162744 (= res!2194918 ((_ is Cons!59890) l!3049))))

(declare-fun b!5162747 () Bool)

(declare-fun tp_is_empty!38275 () Bool)

(declare-fun tp!1447998 () Bool)

(assert (=> b!5162747 (= e!3216747 (and tp_is_empty!38275 tp!1447998))))

(declare-fun b!5162745 () Bool)

(declare-fun res!2194919 () Bool)

(assert (=> b!5162745 (=> (not res!2194919) (not e!3216748))))

(assert (=> b!5162745 (= res!2194919 (forall!14081 (t!373135 l!3049) p!1890))))

(assert (= (and start!546042 res!2194920) b!5162744))

(assert (= (and b!5162744 res!2194918) b!5162745))

(assert (= (and b!5162745 res!2194919) b!5162746))

(assert (= (and start!546042 ((_ is Cons!59890) l!3049)) b!5162747))

(declare-fun m!6213360 () Bool)

(assert (=> b!5162746 m!6213360))

(declare-fun m!6213362 () Bool)

(assert (=> b!5162746 m!6213362))

(declare-fun m!6213364 () Bool)

(assert (=> start!546042 m!6213364))

(declare-fun m!6213366 () Bool)

(assert (=> b!5162745 m!6213366))

(check-sat (not b!5162746) (not start!546042) (not b!5162745) (not b_next!134363) tp_is_empty!38275 b_and!350585 (not b!5162747))
(check-sat b_and!350585 (not b_next!134363))
(get-model)

(declare-fun d!1665991 () Bool)

(declare-fun lt!2122672 () Int)

(assert (=> d!1665991 (>= lt!2122672 0)))

(declare-fun e!3216759 () Int)

(assert (=> d!1665991 (= lt!2122672 e!3216759)))

(declare-fun c!888203 () Bool)

(assert (=> d!1665991 (= c!888203 ((_ is Nil!59890) (t!373135 l!3049)))))

(assert (=> d!1665991 (= (ListPrimitiveSize!400 (t!373135 l!3049)) lt!2122672)))

(declare-fun b!5162760 () Bool)

(assert (=> b!5162760 (= e!3216759 0)))

(declare-fun b!5162761 () Bool)

(assert (=> b!5162761 (= e!3216759 (+ 1 (ListPrimitiveSize!400 (t!373135 (t!373135 l!3049)))))))

(assert (= (and d!1665991 c!888203) b!5162760))

(assert (= (and d!1665991 (not c!888203)) b!5162761))

(declare-fun m!6213374 () Bool)

(assert (=> b!5162761 m!6213374))

(assert (=> b!5162746 d!1665991))

(declare-fun d!1665997 () Bool)

(declare-fun lt!2122673 () Int)

(assert (=> d!1665997 (>= lt!2122673 0)))

(declare-fun e!3216760 () Int)

(assert (=> d!1665997 (= lt!2122673 e!3216760)))

(declare-fun c!888204 () Bool)

(assert (=> d!1665997 (= c!888204 ((_ is Nil!59890) l!3049))))

(assert (=> d!1665997 (= (ListPrimitiveSize!400 l!3049) lt!2122673)))

(declare-fun b!5162762 () Bool)

(assert (=> b!5162762 (= e!3216760 0)))

(declare-fun b!5162763 () Bool)

(assert (=> b!5162763 (= e!3216760 (+ 1 (ListPrimitiveSize!400 (t!373135 l!3049))))))

(assert (= (and d!1665997 c!888204) b!5162762))

(assert (= (and d!1665997 (not c!888204)) b!5162763))

(assert (=> b!5162763 m!6213360))

(assert (=> b!5162746 d!1665997))

(declare-fun d!1665999 () Bool)

(declare-fun res!2194933 () Bool)

(declare-fun e!3216769 () Bool)

(assert (=> d!1665999 (=> res!2194933 e!3216769)))

(assert (=> d!1665999 (= res!2194933 ((_ is Nil!59890) (t!373135 l!3049)))))

(assert (=> d!1665999 (= (forall!14081 (t!373135 l!3049) p!1890) e!3216769)))

(declare-fun b!5162776 () Bool)

(declare-fun e!3216770 () Bool)

(assert (=> b!5162776 (= e!3216769 e!3216770)))

(declare-fun res!2194934 () Bool)

(assert (=> b!5162776 (=> (not res!2194934) (not e!3216770))))

(declare-fun dynLambda!23846 (Int B!3129) Bool)

(assert (=> b!5162776 (= res!2194934 (dynLambda!23846 p!1890 (h!66338 (t!373135 l!3049))))))

(declare-fun b!5162777 () Bool)

(assert (=> b!5162777 (= e!3216770 (forall!14081 (t!373135 (t!373135 l!3049)) p!1890))))

(assert (= (and d!1665999 (not res!2194933)) b!5162776))

(assert (= (and b!5162776 res!2194934) b!5162777))

(declare-fun b_lambda!200701 () Bool)

(assert (=> (not b_lambda!200701) (not b!5162776)))

(declare-fun t!373141 () Bool)

(declare-fun tb!261925 () Bool)

(assert (=> (and start!546042 (= p!1890 p!1890) t!373141) tb!261925))

(declare-fun result!330410 () Bool)

(assert (=> tb!261925 (= result!330410 true)))

(assert (=> b!5162776 t!373141))

(declare-fun b_and!350591 () Bool)

(assert (= b_and!350585 (and (=> t!373141 result!330410) b_and!350591)))

(declare-fun m!6213378 () Bool)

(assert (=> b!5162776 m!6213378))

(declare-fun m!6213380 () Bool)

(assert (=> b!5162777 m!6213380))

(assert (=> b!5162745 d!1665999))

(declare-fun d!1666003 () Bool)

(declare-fun res!2194935 () Bool)

(declare-fun e!3216773 () Bool)

(assert (=> d!1666003 (=> res!2194935 e!3216773)))

(assert (=> d!1666003 (= res!2194935 ((_ is Nil!59890) l!3049))))

(assert (=> d!1666003 (= (forall!14081 l!3049 p!1890) e!3216773)))

(declare-fun b!5162782 () Bool)

(declare-fun e!3216774 () Bool)

(assert (=> b!5162782 (= e!3216773 e!3216774)))

(declare-fun res!2194936 () Bool)

(assert (=> b!5162782 (=> (not res!2194936) (not e!3216774))))

(assert (=> b!5162782 (= res!2194936 (dynLambda!23846 p!1890 (h!66338 l!3049)))))

(declare-fun b!5162783 () Bool)

(assert (=> b!5162783 (= e!3216774 (forall!14081 (t!373135 l!3049) p!1890))))

(assert (= (and d!1666003 (not res!2194935)) b!5162782))

(assert (= (and b!5162782 res!2194936) b!5162783))

(declare-fun b_lambda!200703 () Bool)

(assert (=> (not b_lambda!200703) (not b!5162782)))

(declare-fun t!373143 () Bool)

(declare-fun tb!261927 () Bool)

(assert (=> (and start!546042 (= p!1890 p!1890) t!373143) tb!261927))

(declare-fun result!330412 () Bool)

(assert (=> tb!261927 (= result!330412 true)))

(assert (=> b!5162782 t!373143))

(declare-fun b_and!350593 () Bool)

(assert (= b_and!350591 (and (=> t!373143 result!330412) b_and!350593)))

(declare-fun m!6213382 () Bool)

(assert (=> b!5162782 m!6213382))

(assert (=> b!5162783 m!6213366))

(assert (=> start!546042 d!1666003))

(declare-fun b!5162789 () Bool)

(declare-fun e!3216778 () Bool)

(declare-fun tp!1448005 () Bool)

(assert (=> b!5162789 (= e!3216778 (and tp_is_empty!38275 tp!1448005))))

(assert (=> b!5162747 (= tp!1447998 e!3216778)))

(assert (= (and b!5162747 ((_ is Cons!59890) (t!373135 l!3049))) b!5162789))

(declare-fun b_lambda!200709 () Bool)

(assert (= b_lambda!200701 (or (and start!546042 b_free!133573) b_lambda!200709)))

(declare-fun b_lambda!200711 () Bool)

(assert (= b_lambda!200703 (or (and start!546042 b_free!133573) b_lambda!200711)))

(check-sat (not b_lambda!200711) b_and!350593 (not b_lambda!200709) (not b!5162789) (not b!5162783) (not b!5162761) (not b_next!134363) (not b!5162777) tp_is_empty!38275 (not b!5162763))
(check-sat b_and!350593 (not b_next!134363))
