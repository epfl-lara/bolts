; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13918 () Bool)

(assert start!13918)

(declare-fun res!62498 () Bool)

(declare-fun e!77443 () Bool)

(assert (=> start!13918 (=> (not res!62498) (not e!77443))))

(declare-datatypes ((B!801 0))(
  ( (B!802 (val!886 Int)) )
))
(declare-datatypes ((List!2204 0))(
  ( (Nil!2198) (Cons!2198 (h!7595 B!801) (t!22790 List!2204)) )
))
(declare-fun l!3288 () List!2204)

(declare-fun tot!41 () List!2204)

(declare-fun elmt!148 () B!801)

(declare-fun isPrefix!191 (List!2204 List!2204) Bool)

(declare-fun ++!472 (List!2204 List!2204) List!2204)

(assert (=> start!13918 (= res!62498 (isPrefix!191 (++!472 l!3288 (Cons!2198 elmt!148 Nil!2198)) tot!41))))

(assert (=> start!13918 e!77443))

(declare-fun e!77441 () Bool)

(assert (=> start!13918 e!77441))

(declare-fun tp_is_empty!1445 () Bool)

(assert (=> start!13918 tp_is_empty!1445))

(declare-fun e!77442 () Bool)

(assert (=> start!13918 e!77442))

(declare-fun b!133722 () Bool)

(declare-fun ListPrimitiveSize!28 (List!2204) Int)

(assert (=> b!133722 (= e!77443 (< (ListPrimitiveSize!28 l!3288) 0))))

(declare-fun b!133723 () Bool)

(declare-fun tp!70595 () Bool)

(assert (=> b!133723 (= e!77441 (and tp_is_empty!1445 tp!70595))))

(declare-fun b!133724 () Bool)

(declare-fun tp!70596 () Bool)

(assert (=> b!133724 (= e!77442 (and tp_is_empty!1445 tp!70596))))

(assert (= (and start!13918 res!62498) b!133722))

(get-info :version)

(assert (= (and start!13918 ((_ is Cons!2198) l!3288)) b!133723))

(assert (= (and start!13918 ((_ is Cons!2198) tot!41)) b!133724))

(declare-fun m!118711 () Bool)

(assert (=> start!13918 m!118711))

(assert (=> start!13918 m!118711))

(declare-fun m!118713 () Bool)

(assert (=> start!13918 m!118713))

(declare-fun m!118715 () Bool)

(assert (=> b!133722 m!118715))

(check-sat tp_is_empty!1445 (not b!133722) (not b!133723) (not b!133724) (not start!13918))
(check-sat)
(get-model)

(declare-fun d!31990 () Bool)

(declare-fun lt!40360 () Int)

(assert (=> d!31990 (>= lt!40360 0)))

(declare-fun e!77449 () Int)

(assert (=> d!31990 (= lt!40360 e!77449)))

(declare-fun c!28652 () Bool)

(assert (=> d!31990 (= c!28652 ((_ is Nil!2198) l!3288))))

(assert (=> d!31990 (= (ListPrimitiveSize!28 l!3288) lt!40360)))

(declare-fun b!133735 () Bool)

(assert (=> b!133735 (= e!77449 0)))

(declare-fun b!133736 () Bool)

(assert (=> b!133736 (= e!77449 (+ 1 (ListPrimitiveSize!28 (t!22790 l!3288))))))

(assert (= (and d!31990 c!28652) b!133735))

(assert (= (and d!31990 (not c!28652)) b!133736))

(declare-fun m!118719 () Bool)

(assert (=> b!133736 m!118719))

(assert (=> b!133722 d!31990))

(declare-fun d!31994 () Bool)

(declare-fun e!77467 () Bool)

(assert (=> d!31994 e!77467))

(declare-fun res!62519 () Bool)

(assert (=> d!31994 (=> res!62519 e!77467)))

(declare-fun lt!40366 () Bool)

(assert (=> d!31994 (= res!62519 (not lt!40366))))

(declare-fun e!77465 () Bool)

(assert (=> d!31994 (= lt!40366 e!77465)))

(declare-fun res!62521 () Bool)

(assert (=> d!31994 (=> res!62521 e!77465)))

(assert (=> d!31994 (= res!62521 ((_ is Nil!2198) (++!472 l!3288 (Cons!2198 elmt!148 Nil!2198))))))

(assert (=> d!31994 (= (isPrefix!191 (++!472 l!3288 (Cons!2198 elmt!148 Nil!2198)) tot!41) lt!40366)))

(declare-fun e!77466 () Bool)

(declare-fun b!133759 () Bool)

(declare-fun tail!282 (List!2204) List!2204)

(assert (=> b!133759 (= e!77466 (isPrefix!191 (tail!282 (++!472 l!3288 (Cons!2198 elmt!148 Nil!2198))) (tail!282 tot!41)))))

(declare-fun b!133758 () Bool)

(declare-fun res!62522 () Bool)

(assert (=> b!133758 (=> (not res!62522) (not e!77466))))

(declare-fun head!534 (List!2204) B!801)

(assert (=> b!133758 (= res!62522 (= (head!534 (++!472 l!3288 (Cons!2198 elmt!148 Nil!2198))) (head!534 tot!41)))))

(declare-fun b!133760 () Bool)

(declare-fun size!1995 (List!2204) Int)

(assert (=> b!133760 (= e!77467 (>= (size!1995 tot!41) (size!1995 (++!472 l!3288 (Cons!2198 elmt!148 Nil!2198)))))))

(declare-fun b!133757 () Bool)

(assert (=> b!133757 (= e!77465 e!77466)))

(declare-fun res!62520 () Bool)

(assert (=> b!133757 (=> (not res!62520) (not e!77466))))

(assert (=> b!133757 (= res!62520 (not ((_ is Nil!2198) tot!41)))))

(assert (= (and d!31994 (not res!62521)) b!133757))

(assert (= (and b!133757 res!62520) b!133758))

(assert (= (and b!133758 res!62522) b!133759))

(assert (= (and d!31994 (not res!62519)) b!133760))

(assert (=> b!133759 m!118711))

(declare-fun m!118735 () Bool)

(assert (=> b!133759 m!118735))

(declare-fun m!118737 () Bool)

(assert (=> b!133759 m!118737))

(assert (=> b!133759 m!118735))

(assert (=> b!133759 m!118737))

(declare-fun m!118739 () Bool)

(assert (=> b!133759 m!118739))

(assert (=> b!133758 m!118711))

(declare-fun m!118741 () Bool)

(assert (=> b!133758 m!118741))

(declare-fun m!118743 () Bool)

(assert (=> b!133758 m!118743))

(declare-fun m!118745 () Bool)

(assert (=> b!133760 m!118745))

(assert (=> b!133760 m!118711))

(declare-fun m!118747 () Bool)

(assert (=> b!133760 m!118747))

(assert (=> start!13918 d!31994))

(declare-fun b!133788 () Bool)

(declare-fun e!77483 () List!2204)

(assert (=> b!133788 (= e!77483 (Cons!2198 (h!7595 l!3288) (++!472 (t!22790 l!3288) (Cons!2198 elmt!148 Nil!2198))))))

(declare-fun d!31998 () Bool)

(declare-fun e!77482 () Bool)

(assert (=> d!31998 e!77482))

(declare-fun res!62534 () Bool)

(assert (=> d!31998 (=> (not res!62534) (not e!77482))))

(declare-fun lt!40372 () List!2204)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!307 (List!2204) (InoxSet B!801))

(assert (=> d!31998 (= res!62534 (= (content!307 lt!40372) ((_ map or) (content!307 l!3288) (content!307 (Cons!2198 elmt!148 Nil!2198)))))))

(assert (=> d!31998 (= lt!40372 e!77483)))

(declare-fun c!28658 () Bool)

(assert (=> d!31998 (= c!28658 ((_ is Nil!2198) l!3288))))

(assert (=> d!31998 (= (++!472 l!3288 (Cons!2198 elmt!148 Nil!2198)) lt!40372)))

(declare-fun b!133790 () Bool)

(assert (=> b!133790 (= e!77482 (or (not (= (Cons!2198 elmt!148 Nil!2198) Nil!2198)) (= lt!40372 l!3288)))))

(declare-fun b!133787 () Bool)

(assert (=> b!133787 (= e!77483 (Cons!2198 elmt!148 Nil!2198))))

(declare-fun b!133789 () Bool)

(declare-fun res!62533 () Bool)

(assert (=> b!133789 (=> (not res!62533) (not e!77482))))

(assert (=> b!133789 (= res!62533 (= (size!1995 lt!40372) (+ (size!1995 l!3288) (size!1995 (Cons!2198 elmt!148 Nil!2198)))))))

(assert (= (and d!31998 c!28658) b!133787))

(assert (= (and d!31998 (not c!28658)) b!133788))

(assert (= (and d!31998 res!62534) b!133789))

(assert (= (and b!133789 res!62533) b!133790))

(declare-fun m!118763 () Bool)

(assert (=> b!133788 m!118763))

(declare-fun m!118765 () Bool)

(assert (=> d!31998 m!118765))

(declare-fun m!118767 () Bool)

(assert (=> d!31998 m!118767))

(declare-fun m!118769 () Bool)

(assert (=> d!31998 m!118769))

(declare-fun m!118771 () Bool)

(assert (=> b!133789 m!118771))

(declare-fun m!118773 () Bool)

(assert (=> b!133789 m!118773))

(declare-fun m!118775 () Bool)

(assert (=> b!133789 m!118775))

(assert (=> start!13918 d!31998))

(declare-fun b!133795 () Bool)

(declare-fun e!77486 () Bool)

(declare-fun tp!70603 () Bool)

(assert (=> b!133795 (= e!77486 (and tp_is_empty!1445 tp!70603))))

(assert (=> b!133724 (= tp!70596 e!77486)))

(assert (= (and b!133724 ((_ is Cons!2198) (t!22790 tot!41))) b!133795))

(declare-fun b!133796 () Bool)

(declare-fun e!77487 () Bool)

(declare-fun tp!70604 () Bool)

(assert (=> b!133796 (= e!77487 (and tp_is_empty!1445 tp!70604))))

(assert (=> b!133723 (= tp!70595 e!77487)))

(assert (= (and b!133723 ((_ is Cons!2198) (t!22790 l!3288))) b!133796))

(check-sat (not b!133736) (not b!133788) (not b!133796) tp_is_empty!1445 (not b!133795) (not d!31998) (not b!133789) (not b!133759) (not b!133758) (not b!133760))
(check-sat)
