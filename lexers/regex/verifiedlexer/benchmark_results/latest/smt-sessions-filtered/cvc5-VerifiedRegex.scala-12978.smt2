; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713688 () Bool)

(assert start!713688)

(declare-fun b_free!134087 () Bool)

(declare-fun b_next!134877 () Bool)

(assert (=> start!713688 (= b_free!134087 (not b_next!134877))))

(declare-fun tp!2078345 () Bool)

(declare-fun b_and!351495 () Bool)

(assert (=> start!713688 (= tp!2078345 b_and!351495)))

(declare-fun b!7318733 () Bool)

(assert (=> b!7318733 true))

(declare-fun setIsEmpty!55047 () Bool)

(declare-fun setRes!55048 () Bool)

(assert (=> setIsEmpty!55047 setRes!55048))

(declare-fun res!2957533 () Bool)

(declare-fun e!4381682 () Bool)

(assert (=> start!713688 (=> (not res!2957533) (not e!4381682))))

(declare-datatypes ((A!933 0))(
  ( (A!934 (val!29253 Int)) )
))
(declare-fun s1!456 () (Set A!933))

(declare-fun f!803 () Int)

(declare-datatypes ((B!3635 0))(
  ( (B!3636 (val!29254 Int)) )
))
(declare-datatypes ((List!71381 0))(
  ( (Nil!71257) (Cons!71257 (h!77705 B!3635) (t!385616 List!71381)) )
))
(declare-fun l1!819 () List!71381)

(declare-fun s2!427 () (Set A!933))

(declare-fun toList!11668 ((Set B!3635)) List!71381)

(declare-fun flatMap!3086 ((Set A!933) Int) (Set B!3635))

(assert (=> start!713688 (= res!2957533 (= l1!819 (toList!11668 (set.union (flatMap!3086 s1!456 f!803) (flatMap!3086 s2!427 f!803)))))))

(assert (=> start!713688 e!4381682))

(declare-fun e!4381681 () Bool)

(assert (=> start!713688 e!4381681))

(declare-fun condSetEmpty!55048 () Bool)

(assert (=> start!713688 (= condSetEmpty!55048 (= s1!456 (as set.empty (Set A!933))))))

(assert (=> start!713688 setRes!55048))

(assert (=> start!713688 tp!2078345))

(declare-fun e!4381680 () Bool)

(assert (=> start!713688 e!4381680))

(declare-fun condSetEmpty!55047 () Bool)

(assert (=> start!713688 (= condSetEmpty!55047 (= s2!427 (as set.empty (Set A!933))))))

(declare-fun setRes!55047 () Bool)

(assert (=> start!713688 setRes!55047))

(declare-fun b!7318731 () Bool)

(declare-fun res!2957531 () Bool)

(assert (=> b!7318731 (=> (not res!2957531) (not e!4381682))))

(declare-fun l2!808 () List!71381)

(assert (=> b!7318731 (= res!2957531 (not (is-Cons!71257 l2!808)))))

(declare-fun b!7318732 () Bool)

(declare-fun res!2957532 () Bool)

(assert (=> b!7318732 (=> (not res!2957532) (not e!4381682))))

(declare-fun subseq!878 (List!71381 List!71381) Bool)

(assert (=> b!7318732 (= res!2957532 (subseq!878 l2!808 (toList!11668 (flatMap!3086 (set.union s1!456 s2!427) f!803))))))

(declare-fun lambda!452909 () Int)

(declare-fun forall!17805 (List!71381 Int) Bool)

(assert (=> b!7318733 (= e!4381682 (not (forall!17805 l2!808 lambda!452909)))))

(declare-fun setIsEmpty!55048 () Bool)

(assert (=> setIsEmpty!55048 setRes!55047))

(declare-fun setNonEmpty!55047 () Bool)

(declare-fun tp!2078348 () Bool)

(declare-fun tp_is_empty!47759 () Bool)

(assert (=> setNonEmpty!55047 (= setRes!55048 (and tp!2078348 tp_is_empty!47759))))

(declare-fun setElem!55048 () A!933)

(declare-fun setRest!55048 () (Set A!933))

(assert (=> setNonEmpty!55047 (= s1!456 (set.union (set.insert setElem!55048 (as set.empty (Set A!933))) setRest!55048))))

(declare-fun b!7318734 () Bool)

(declare-fun tp_is_empty!47757 () Bool)

(declare-fun tp!2078347 () Bool)

(assert (=> b!7318734 (= e!4381681 (and tp_is_empty!47757 tp!2078347))))

(declare-fun b!7318735 () Bool)

(declare-fun tp!2078349 () Bool)

(assert (=> b!7318735 (= e!4381680 (and tp_is_empty!47757 tp!2078349))))

(declare-fun setNonEmpty!55048 () Bool)

(declare-fun tp!2078346 () Bool)

(assert (=> setNonEmpty!55048 (= setRes!55047 (and tp!2078346 tp_is_empty!47759))))

(declare-fun setElem!55047 () A!933)

(declare-fun setRest!55047 () (Set A!933))

(assert (=> setNonEmpty!55048 (= s2!427 (set.union (set.insert setElem!55047 (as set.empty (Set A!933))) setRest!55047))))

(assert (= (and start!713688 res!2957533) b!7318732))

(assert (= (and b!7318732 res!2957532) b!7318731))

(assert (= (and b!7318731 res!2957531) b!7318733))

(assert (= (and start!713688 (is-Cons!71257 l2!808)) b!7318734))

(assert (= (and start!713688 condSetEmpty!55048) setIsEmpty!55047))

(assert (= (and start!713688 (not condSetEmpty!55048)) setNonEmpty!55047))

(assert (= (and start!713688 (is-Cons!71257 l1!819)) b!7318735))

(assert (= (and start!713688 condSetEmpty!55047) setIsEmpty!55048))

(assert (= (and start!713688 (not condSetEmpty!55047)) setNonEmpty!55048))

(declare-fun m!7983532 () Bool)

(assert (=> start!713688 m!7983532))

(declare-fun m!7983534 () Bool)

(assert (=> start!713688 m!7983534))

(declare-fun m!7983536 () Bool)

(assert (=> start!713688 m!7983536))

(declare-fun m!7983538 () Bool)

(assert (=> b!7318732 m!7983538))

(assert (=> b!7318732 m!7983538))

(declare-fun m!7983540 () Bool)

(assert (=> b!7318732 m!7983540))

(assert (=> b!7318732 m!7983540))

(declare-fun m!7983542 () Bool)

(assert (=> b!7318732 m!7983542))

(declare-fun m!7983544 () Bool)

(assert (=> b!7318733 m!7983544))

(push 1)

(assert (not b!7318735))

(assert (not b!7318734))

(assert tp_is_empty!47757)

(assert (not b!7318733))

(assert (not setNonEmpty!55048))

(assert (not setNonEmpty!55047))

(assert b_and!351495)

(assert tp_is_empty!47759)

(assert (not start!713688))

(assert (not b!7318732))

(assert (not b_next!134877))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351495)

(assert (not b_next!134877))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7318763 () Bool)

(declare-fun e!4381701 () Bool)

(declare-fun e!4381702 () Bool)

(assert (=> b!7318763 (= e!4381701 e!4381702)))

(declare-fun res!2957551 () Bool)

(assert (=> b!7318763 (=> (not res!2957551) (not e!4381702))))

(assert (=> b!7318763 (= res!2957551 (is-Cons!71257 (toList!11668 (flatMap!3086 (set.union s1!456 s2!427) f!803))))))

(declare-fun b!7318764 () Bool)

(declare-fun e!4381703 () Bool)

(assert (=> b!7318764 (= e!4381702 e!4381703)))

(declare-fun res!2957552 () Bool)

(assert (=> b!7318764 (=> res!2957552 e!4381703)))

(declare-fun e!4381700 () Bool)

(assert (=> b!7318764 (= res!2957552 e!4381700)))

(declare-fun res!2957553 () Bool)

(assert (=> b!7318764 (=> (not res!2957553) (not e!4381700))))

(assert (=> b!7318764 (= res!2957553 (= (h!77705 l2!808) (h!77705 (toList!11668 (flatMap!3086 (set.union s1!456 s2!427) f!803)))))))

(declare-fun b!7318765 () Bool)

(assert (=> b!7318765 (= e!4381700 (subseq!878 (t!385616 l2!808) (t!385616 (toList!11668 (flatMap!3086 (set.union s1!456 s2!427) f!803)))))))

(declare-fun b!7318766 () Bool)

(assert (=> b!7318766 (= e!4381703 (subseq!878 l2!808 (t!385616 (toList!11668 (flatMap!3086 (set.union s1!456 s2!427) f!803)))))))

(declare-fun d!2272699 () Bool)

(declare-fun res!2957554 () Bool)

(assert (=> d!2272699 (=> res!2957554 e!4381701)))

(assert (=> d!2272699 (= res!2957554 (is-Nil!71257 l2!808))))

(assert (=> d!2272699 (= (subseq!878 l2!808 (toList!11668 (flatMap!3086 (set.union s1!456 s2!427) f!803))) e!4381701)))

(assert (= (and d!2272699 (not res!2957554)) b!7318763))

(assert (= (and b!7318763 res!2957551) b!7318764))

(assert (= (and b!7318764 res!2957553) b!7318765))

(assert (= (and b!7318764 (not res!2957552)) b!7318766))

(declare-fun m!7983560 () Bool)

(assert (=> b!7318765 m!7983560))

(declare-fun m!7983562 () Bool)

(assert (=> b!7318766 m!7983562))

(assert (=> b!7318732 d!2272699))

(declare-fun d!2272701 () Bool)

(declare-fun e!4381706 () Bool)

(assert (=> d!2272701 e!4381706))

(declare-fun res!2957557 () Bool)

(assert (=> d!2272701 (=> (not res!2957557) (not e!4381706))))

(declare-fun lt!2603279 () List!71381)

(declare-fun noDuplicate!3074 (List!71381) Bool)

(assert (=> d!2272701 (= res!2957557 (noDuplicate!3074 lt!2603279))))

(declare-fun choose!56816 ((Set B!3635)) List!71381)

(assert (=> d!2272701 (= lt!2603279 (choose!56816 (flatMap!3086 (set.union s1!456 s2!427) f!803)))))

(assert (=> d!2272701 (= (toList!11668 (flatMap!3086 (set.union s1!456 s2!427) f!803)) lt!2603279)))

(declare-fun b!7318769 () Bool)

(declare-fun content!14893 (List!71381) (Set B!3635))

(assert (=> b!7318769 (= e!4381706 (= (content!14893 lt!2603279) (flatMap!3086 (set.union s1!456 s2!427) f!803)))))

(assert (= (and d!2272701 res!2957557) b!7318769))

(declare-fun m!7983564 () Bool)

(assert (=> d!2272701 m!7983564))

(assert (=> d!2272701 m!7983538))

(declare-fun m!7983566 () Bool)

(assert (=> d!2272701 m!7983566))

(declare-fun m!7983568 () Bool)

(assert (=> b!7318769 m!7983568))

(assert (=> b!7318732 d!2272701))

(declare-fun d!2272703 () Bool)

(declare-fun choose!56817 ((Set A!933) Int) (Set B!3635))

(assert (=> d!2272703 (= (flatMap!3086 (set.union s1!456 s2!427) f!803) (choose!56817 (set.union s1!456 s2!427) f!803))))

(declare-fun bs!1915655 () Bool)

(assert (= bs!1915655 d!2272703))

(declare-fun m!7983570 () Bool)

(assert (=> bs!1915655 m!7983570))

(assert (=> b!7318732 d!2272703))

(declare-fun d!2272705 () Bool)

(declare-fun e!4381707 () Bool)

(assert (=> d!2272705 e!4381707))

(declare-fun res!2957558 () Bool)

(assert (=> d!2272705 (=> (not res!2957558) (not e!4381707))))

(declare-fun lt!2603280 () List!71381)

(assert (=> d!2272705 (= res!2957558 (noDuplicate!3074 lt!2603280))))

(assert (=> d!2272705 (= lt!2603280 (choose!56816 (set.union (flatMap!3086 s1!456 f!803) (flatMap!3086 s2!427 f!803))))))

(assert (=> d!2272705 (= (toList!11668 (set.union (flatMap!3086 s1!456 f!803) (flatMap!3086 s2!427 f!803))) lt!2603280)))

(declare-fun b!7318770 () Bool)

(assert (=> b!7318770 (= e!4381707 (= (content!14893 lt!2603280) (set.union (flatMap!3086 s1!456 f!803) (flatMap!3086 s2!427 f!803))))))

(assert (= (and d!2272705 res!2957558) b!7318770))

(declare-fun m!7983572 () Bool)

(assert (=> d!2272705 m!7983572))

(declare-fun m!7983574 () Bool)

(assert (=> d!2272705 m!7983574))

(declare-fun m!7983576 () Bool)

(assert (=> b!7318770 m!7983576))

(assert (=> start!713688 d!2272705))

(declare-fun d!2272707 () Bool)

(assert (=> d!2272707 (= (flatMap!3086 s1!456 f!803) (choose!56817 s1!456 f!803))))

(declare-fun bs!1915656 () Bool)

(assert (= bs!1915656 d!2272707))

(declare-fun m!7983578 () Bool)

(assert (=> bs!1915656 m!7983578))

(assert (=> start!713688 d!2272707))

(declare-fun d!2272709 () Bool)

(assert (=> d!2272709 (= (flatMap!3086 s2!427 f!803) (choose!56817 s2!427 f!803))))

(declare-fun bs!1915657 () Bool)

(assert (= bs!1915657 d!2272709))

(declare-fun m!7983580 () Bool)

(assert (=> bs!1915657 m!7983580))

(assert (=> start!713688 d!2272709))

(declare-fun d!2272711 () Bool)

(declare-fun res!2957563 () Bool)

(declare-fun e!4381712 () Bool)

(assert (=> d!2272711 (=> res!2957563 e!4381712)))

(assert (=> d!2272711 (= res!2957563 (is-Nil!71257 l2!808))))

(assert (=> d!2272711 (= (forall!17805 l2!808 lambda!452909) e!4381712)))

(declare-fun b!7318775 () Bool)

(declare-fun e!4381713 () Bool)

(assert (=> b!7318775 (= e!4381712 e!4381713)))

(declare-fun res!2957564 () Bool)

(assert (=> b!7318775 (=> (not res!2957564) (not e!4381713))))

(declare-fun dynLambda!29180 (Int B!3635) Bool)

(assert (=> b!7318775 (= res!2957564 (dynLambda!29180 lambda!452909 (h!77705 l2!808)))))

(declare-fun b!7318776 () Bool)

(assert (=> b!7318776 (= e!4381713 (forall!17805 (t!385616 l2!808) lambda!452909))))

(assert (= (and d!2272711 (not res!2957563)) b!7318775))

(assert (= (and b!7318775 res!2957564) b!7318776))

(declare-fun b_lambda!282759 () Bool)

(assert (=> (not b_lambda!282759) (not b!7318775)))

(declare-fun m!7983582 () Bool)

(assert (=> b!7318775 m!7983582))

(declare-fun m!7983584 () Bool)

(assert (=> b!7318776 m!7983584))

(assert (=> b!7318733 d!2272711))

(declare-fun b!7318781 () Bool)

(declare-fun e!4381716 () Bool)

(declare-fun tp!2078367 () Bool)

(assert (=> b!7318781 (= e!4381716 (and tp_is_empty!47757 tp!2078367))))

(assert (=> b!7318735 (= tp!2078349 e!4381716)))

(assert (= (and b!7318735 (is-Cons!71257 (t!385616 l1!819))) b!7318781))

(declare-fun condSetEmpty!55057 () Bool)

(assert (=> setNonEmpty!55048 (= condSetEmpty!55057 (= setRest!55047 (as set.empty (Set A!933))))))

(declare-fun setRes!55057 () Bool)

(assert (=> setNonEmpty!55048 (= tp!2078346 setRes!55057)))

(declare-fun setIsEmpty!55057 () Bool)

(assert (=> setIsEmpty!55057 setRes!55057))

(declare-fun setNonEmpty!55057 () Bool)

(declare-fun tp!2078370 () Bool)

(assert (=> setNonEmpty!55057 (= setRes!55057 (and tp!2078370 tp_is_empty!47759))))

(declare-fun setElem!55057 () A!933)

(declare-fun setRest!55057 () (Set A!933))

(assert (=> setNonEmpty!55057 (= setRest!55047 (set.union (set.insert setElem!55057 (as set.empty (Set A!933))) setRest!55057))))

(assert (= (and setNonEmpty!55048 condSetEmpty!55057) setIsEmpty!55057))

(assert (= (and setNonEmpty!55048 (not condSetEmpty!55057)) setNonEmpty!55057))

(declare-fun condSetEmpty!55058 () Bool)

(assert (=> setNonEmpty!55047 (= condSetEmpty!55058 (= setRest!55048 (as set.empty (Set A!933))))))

(declare-fun setRes!55058 () Bool)

(assert (=> setNonEmpty!55047 (= tp!2078348 setRes!55058)))

(declare-fun setIsEmpty!55058 () Bool)

(assert (=> setIsEmpty!55058 setRes!55058))

(declare-fun setNonEmpty!55058 () Bool)

(declare-fun tp!2078371 () Bool)

(assert (=> setNonEmpty!55058 (= setRes!55058 (and tp!2078371 tp_is_empty!47759))))

(declare-fun setElem!55058 () A!933)

(declare-fun setRest!55058 () (Set A!933))

(assert (=> setNonEmpty!55058 (= setRest!55048 (set.union (set.insert setElem!55058 (as set.empty (Set A!933))) setRest!55058))))

(assert (= (and setNonEmpty!55047 condSetEmpty!55058) setIsEmpty!55058))

(assert (= (and setNonEmpty!55047 (not condSetEmpty!55058)) setNonEmpty!55058))

(declare-fun b!7318784 () Bool)

(declare-fun e!4381717 () Bool)

(declare-fun tp!2078372 () Bool)

(assert (=> b!7318784 (= e!4381717 (and tp_is_empty!47757 tp!2078372))))

(assert (=> b!7318734 (= tp!2078347 e!4381717)))

(assert (= (and b!7318734 (is-Cons!71257 (t!385616 l2!808))) b!7318784))

(declare-fun b_lambda!282761 () Bool)

(assert (= b_lambda!282759 (or b!7318733 b_lambda!282761)))

(declare-fun bs!1915658 () Bool)

(declare-fun d!2272713 () Bool)

(assert (= bs!1915658 (and d!2272713 b!7318733)))

(declare-fun contains!20806 (List!71381 B!3635) Bool)

(assert (=> bs!1915658 (= (dynLambda!29180 lambda!452909 (h!77705 l2!808)) (contains!20806 l1!819 (h!77705 l2!808)))))

(declare-fun m!7983586 () Bool)

(assert (=> bs!1915658 m!7983586))

(assert (=> b!7318775 d!2272713))

(push 1)

(assert tp_is_empty!47757)

(assert (not d!2272709))

(assert (not d!2272707))

(assert (not bs!1915658))

(assert tp_is_empty!47759)

(assert (not b_lambda!282761))

(assert (not b!7318765))

(assert (not b!7318770))

(assert (not setNonEmpty!55057))

(assert (not d!2272701))

(assert (not d!2272705))

(assert (not b!7318769))

(assert (not b!7318781))

(assert (not d!2272703))

(assert (not b!7318784))

(assert b_and!351495)

(assert (not b_next!134877))

(assert (not b!7318766))

(assert (not b!7318776))

(assert (not setNonEmpty!55058))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351495)

(assert (not b_next!134877))

(check-sat)

(pop 1)

