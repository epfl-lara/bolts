; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239898 () Bool)

(assert start!239898)

(declare-fun b_free!70583 () Bool)

(declare-fun b_next!71287 () Bool)

(assert (=> start!239898 (= b_free!70583 (not b_next!71287))))

(declare-fun tp!783453 () Bool)

(declare-fun b_and!185601 () Bool)

(assert (=> start!239898 (= tp!783453 b_and!185601)))

(declare-fun b!2460765 () Bool)

(declare-fun e!1560683 () Bool)

(declare-datatypes ((B!1881 0))(
  ( (B!1882 (val!8570 Int)) )
))
(declare-datatypes ((List!28727 0))(
  ( (Nil!28627) (Cons!28627 (h!34028 B!1881) (t!208722 List!28727)) )
))
(declare-fun l!3055 () List!28727)

(declare-fun ListPrimitiveSize!165 (List!28727) Int)

(assert (=> b!2460765 (= e!1560683 (>= (ListPrimitiveSize!165 (t!208722 l!3055)) (ListPrimitiveSize!165 l!3055)))))

(declare-fun b!2460766 () Bool)

(declare-fun res!1042805 () Bool)

(assert (=> b!2460766 (=> (not res!1042805) (not e!1560683))))

(declare-fun p!1945 () Int)

(declare-fun dynLambda!12284 (Int B!1881) Bool)

(assert (=> b!2460766 (= res!1042805 (dynLambda!12284 p!1945 (h!34028 l!3055)))))

(declare-fun b!2460767 () Bool)

(declare-fun res!1042803 () Bool)

(assert (=> b!2460767 (=> (not res!1042803) (not e!1560683))))

(declare-fun forall!5879 (List!28727 Int) Bool)

(assert (=> b!2460767 (= res!1042803 (not (forall!5879 (t!208722 l!3055) p!1945)))))

(declare-fun b!2460768 () Bool)

(declare-fun res!1042806 () Bool)

(assert (=> b!2460768 (=> (not res!1042806) (not e!1560683))))

(get-info :version)

(assert (=> b!2460768 (= res!1042806 (not ((_ is Nil!28627) l!3055)))))

(declare-fun res!1042804 () Bool)

(assert (=> start!239898 (=> (not res!1042804) (not e!1560683))))

(assert (=> start!239898 (= res!1042804 (not (forall!5879 l!3055 p!1945)))))

(assert (=> start!239898 e!1560683))

(declare-fun e!1560684 () Bool)

(assert (=> start!239898 e!1560684))

(assert (=> start!239898 tp!783453))

(declare-fun b!2460764 () Bool)

(declare-fun tp_is_empty!11911 () Bool)

(declare-fun tp!783452 () Bool)

(assert (=> b!2460764 (= e!1560684 (and tp_is_empty!11911 tp!783452))))

(assert (= (and start!239898 res!1042804) b!2460768))

(assert (= (and b!2460768 res!1042806) b!2460766))

(assert (= (and b!2460766 res!1042805) b!2460767))

(assert (= (and b!2460767 res!1042803) b!2460765))

(assert (= (and start!239898 ((_ is Cons!28627) l!3055)) b!2460764))

(declare-fun b_lambda!75281 () Bool)

(assert (=> (not b_lambda!75281) (not b!2460766)))

(declare-fun t!208721 () Bool)

(declare-fun tb!138855 () Bool)

(assert (=> (and start!239898 (= p!1945 p!1945) t!208721) tb!138855))

(declare-fun result!171402 () Bool)

(assert (=> tb!138855 (= result!171402 true)))

(assert (=> b!2460766 t!208721))

(declare-fun b_and!185603 () Bool)

(assert (= b_and!185601 (and (=> t!208721 result!171402) b_and!185603)))

(declare-fun m!2830033 () Bool)

(assert (=> b!2460765 m!2830033))

(declare-fun m!2830035 () Bool)

(assert (=> b!2460765 m!2830035))

(declare-fun m!2830037 () Bool)

(assert (=> b!2460766 m!2830037))

(declare-fun m!2830039 () Bool)

(assert (=> b!2460767 m!2830039))

(declare-fun m!2830041 () Bool)

(assert (=> start!239898 m!2830041))

(check-sat (not b!2460767) (not b_next!71287) b_and!185603 (not start!239898) (not b!2460764) (not b_lambda!75281) (not b!2460765) tp_is_empty!11911)
(check-sat b_and!185603 (not b_next!71287))
(get-model)

(declare-fun b_lambda!75283 () Bool)

(assert (= b_lambda!75281 (or (and start!239898 b_free!70583) b_lambda!75283)))

(check-sat (not b!2460767) (not b_next!71287) b_and!185603 (not start!239898) (not b!2460764) (not b!2460765) tp_is_empty!11911 (not b_lambda!75283))
(check-sat b_and!185603 (not b_next!71287))
(get-model)

(declare-fun d!708343 () Bool)

(declare-fun lt!881007 () Int)

(assert (=> d!708343 (>= lt!881007 0)))

(declare-fun e!1560691 () Int)

(assert (=> d!708343 (= lt!881007 e!1560691)))

(declare-fun c!392750 () Bool)

(assert (=> d!708343 (= c!392750 ((_ is Nil!28627) (t!208722 l!3055)))))

(assert (=> d!708343 (= (ListPrimitiveSize!165 (t!208722 l!3055)) lt!881007)))

(declare-fun b!2460777 () Bool)

(assert (=> b!2460777 (= e!1560691 0)))

(declare-fun b!2460778 () Bool)

(assert (=> b!2460778 (= e!1560691 (+ 1 (ListPrimitiveSize!165 (t!208722 (t!208722 l!3055)))))))

(assert (= (and d!708343 c!392750) b!2460777))

(assert (= (and d!708343 (not c!392750)) b!2460778))

(declare-fun m!2830043 () Bool)

(assert (=> b!2460778 m!2830043))

(assert (=> b!2460765 d!708343))

(declare-fun d!708347 () Bool)

(declare-fun lt!881008 () Int)

(assert (=> d!708347 (>= lt!881008 0)))

(declare-fun e!1560692 () Int)

(assert (=> d!708347 (= lt!881008 e!1560692)))

(declare-fun c!392751 () Bool)

(assert (=> d!708347 (= c!392751 ((_ is Nil!28627) l!3055))))

(assert (=> d!708347 (= (ListPrimitiveSize!165 l!3055) lt!881008)))

(declare-fun b!2460779 () Bool)

(assert (=> b!2460779 (= e!1560692 0)))

(declare-fun b!2460780 () Bool)

(assert (=> b!2460780 (= e!1560692 (+ 1 (ListPrimitiveSize!165 (t!208722 l!3055))))))

(assert (= (and d!708347 c!392751) b!2460779))

(assert (= (and d!708347 (not c!392751)) b!2460780))

(assert (=> b!2460780 m!2830033))

(assert (=> b!2460765 d!708347))

(declare-fun d!708349 () Bool)

(declare-fun res!1042817 () Bool)

(declare-fun e!1560701 () Bool)

(assert (=> d!708349 (=> res!1042817 e!1560701)))

(assert (=> d!708349 (= res!1042817 ((_ is Nil!28627) (t!208722 l!3055)))))

(assert (=> d!708349 (= (forall!5879 (t!208722 l!3055) p!1945) e!1560701)))

(declare-fun b!2460791 () Bool)

(declare-fun e!1560702 () Bool)

(assert (=> b!2460791 (= e!1560701 e!1560702)))

(declare-fun res!1042818 () Bool)

(assert (=> b!2460791 (=> (not res!1042818) (not e!1560702))))

(assert (=> b!2460791 (= res!1042818 (dynLambda!12284 p!1945 (h!34028 (t!208722 l!3055))))))

(declare-fun b!2460792 () Bool)

(assert (=> b!2460792 (= e!1560702 (forall!5879 (t!208722 (t!208722 l!3055)) p!1945))))

(assert (= (and d!708349 (not res!1042817)) b!2460791))

(assert (= (and b!2460791 res!1042818) b!2460792))

(declare-fun b_lambda!75289 () Bool)

(assert (=> (not b_lambda!75289) (not b!2460791)))

(declare-fun t!208726 () Bool)

(declare-fun tb!138859 () Bool)

(assert (=> (and start!239898 (= p!1945 p!1945) t!208726) tb!138859))

(declare-fun result!171406 () Bool)

(assert (=> tb!138859 (= result!171406 true)))

(assert (=> b!2460791 t!208726))

(declare-fun b_and!185607 () Bool)

(assert (= b_and!185603 (and (=> t!208726 result!171406) b_and!185607)))

(declare-fun m!2830049 () Bool)

(assert (=> b!2460791 m!2830049))

(declare-fun m!2830051 () Bool)

(assert (=> b!2460792 m!2830051))

(assert (=> b!2460767 d!708349))

(declare-fun d!708353 () Bool)

(declare-fun res!1042819 () Bool)

(declare-fun e!1560704 () Bool)

(assert (=> d!708353 (=> res!1042819 e!1560704)))

(assert (=> d!708353 (= res!1042819 ((_ is Nil!28627) l!3055))))

(assert (=> d!708353 (= (forall!5879 l!3055 p!1945) e!1560704)))

(declare-fun b!2460795 () Bool)

(declare-fun e!1560705 () Bool)

(assert (=> b!2460795 (= e!1560704 e!1560705)))

(declare-fun res!1042820 () Bool)

(assert (=> b!2460795 (=> (not res!1042820) (not e!1560705))))

(assert (=> b!2460795 (= res!1042820 (dynLambda!12284 p!1945 (h!34028 l!3055)))))

(declare-fun b!2460796 () Bool)

(assert (=> b!2460796 (= e!1560705 (forall!5879 (t!208722 l!3055) p!1945))))

(assert (= (and d!708353 (not res!1042819)) b!2460795))

(assert (= (and b!2460795 res!1042820) b!2460796))

(declare-fun b_lambda!75291 () Bool)

(assert (=> (not b_lambda!75291) (not b!2460795)))

(assert (=> b!2460795 t!208721))

(declare-fun b_and!185609 () Bool)

(assert (= b_and!185607 (and (=> t!208721 result!171402) b_and!185609)))

(assert (=> b!2460795 m!2830037))

(assert (=> b!2460796 m!2830039))

(assert (=> start!239898 d!708353))

(declare-fun b!2460809 () Bool)

(declare-fun e!1560713 () Bool)

(declare-fun tp!783458 () Bool)

(assert (=> b!2460809 (= e!1560713 (and tp_is_empty!11911 tp!783458))))

(assert (=> b!2460764 (= tp!783452 e!1560713)))

(assert (= (and b!2460764 ((_ is Cons!28627) (t!208722 l!3055))) b!2460809))

(declare-fun b_lambda!75295 () Bool)

(assert (= b_lambda!75291 (or (and start!239898 b_free!70583) b_lambda!75295)))

(declare-fun b_lambda!75297 () Bool)

(assert (= b_lambda!75289 (or (and start!239898 b_free!70583) b_lambda!75297)))

(check-sat (not b_lambda!75295) (not b_lambda!75297) (not b!2460792) (not b_next!71287) (not b!2460780) (not b!2460796) (not b!2460778) b_and!185609 (not b!2460809) tp_is_empty!11911 (not b_lambda!75283))
(check-sat b_and!185609 (not b_next!71287))
