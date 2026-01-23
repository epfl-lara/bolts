; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!408194 () Bool)

(assert start!408194)

(declare-fun b_free!126681 () Bool)

(declare-fun b_next!127385 () Bool)

(assert (=> start!408194 (= b_free!126681 (not b_next!127385))))

(declare-fun tp!1306811 () Bool)

(declare-fun b_and!337651 () Bool)

(assert (=> start!408194 (= tp!1306811 b_and!337651)))

(declare-fun b!4259741 () Bool)

(declare-fun res!1751021 () Bool)

(declare-fun e!2645438 () Bool)

(assert (=> b!4259741 (=> (not res!1751021) (not e!2645438))))

(declare-datatypes ((T!79392 0))(
  ( (T!79393 (val!15229 Int)) )
))
(declare-datatypes ((List!47358 0))(
  ( (Nil!47234) (Cons!47234 (h!52654 T!79392) (t!353133 List!47358)) )
))
(declare-datatypes ((IArray!28487 0))(
  ( (IArray!28488 (innerList!14301 List!47358)) )
))
(declare-datatypes ((Conc!14241 0))(
  ( (Node!14241 (left!35016 Conc!14241) (right!35346 Conc!14241) (csize!28712 Int) (cheight!14452 Int)) (Leaf!22009 (xs!17547 IArray!28487) (csize!28713 Int)) (Empty!14241) )
))
(declare-fun t!4386 () Conc!14241)

(get-info :version)

(assert (=> b!4259741 (= res!1751021 (and (not ((_ is Empty!14241) t!4386)) (not ((_ is Leaf!22009) t!4386))))))

(declare-fun b!4259742 () Bool)

(declare-fun e!2645437 () Bool)

(declare-fun height!1866 (Conc!14241) Int)

(assert (=> b!4259742 (= e!2645437 (>= (height!1866 (left!35016 t!4386)) (height!1866 t!4386)))))

(declare-fun b!4259743 () Bool)

(assert (=> b!4259743 (= e!2645438 e!2645437)))

(declare-fun res!1751023 () Bool)

(assert (=> b!4259743 (=> (not res!1751023) (not e!2645437))))

(declare-fun lt!1510402 () List!47358)

(declare-fun lt!1510403 () List!47358)

(declare-fun f!428 () Int)

(declare-datatypes ((B!2817 0))(
  ( (B!2818 (val!15230 Int)) )
))
(declare-datatypes ((List!47359 0))(
  ( (Nil!47235) (Cons!47235 (h!52655 B!2817) (t!353134 List!47359)) )
))
(declare-fun map!9663 (List!47358 Int) List!47359)

(declare-fun ++!12027 (List!47358 List!47358) List!47358)

(declare-fun ++!12028 (List!47359 List!47359) List!47359)

(assert (=> b!4259743 (= res!1751023 (= (map!9663 (++!12027 lt!1510403 lt!1510402) f!428) (++!12028 (map!9663 lt!1510403 f!428) (map!9663 lt!1510402 f!428))))))

(declare-datatypes ((Unit!66131 0))(
  ( (Unit!66132) )
))
(declare-fun lt!1510404 () Unit!66131)

(declare-fun lemmaMapConcat!28 (List!47358 List!47358 Int) Unit!66131)

(assert (=> b!4259743 (= lt!1510404 (lemmaMapConcat!28 lt!1510403 lt!1510402 f!428))))

(declare-fun list!17054 (Conc!14241) List!47358)

(assert (=> b!4259743 (= lt!1510402 (list!17054 (right!35346 t!4386)))))

(assert (=> b!4259743 (= lt!1510403 (list!17054 (left!35016 t!4386)))))

(declare-fun res!1751022 () Bool)

(assert (=> start!408194 (=> (not res!1751022) (not e!2645438))))

(declare-fun isBalanced!3800 (Conc!14241) Bool)

(assert (=> start!408194 (= res!1751022 (isBalanced!3800 t!4386))))

(assert (=> start!408194 e!2645438))

(declare-fun e!2645439 () Bool)

(declare-fun inv!62126 (Conc!14241) Bool)

(assert (=> start!408194 (and (inv!62126 t!4386) e!2645439)))

(assert (=> start!408194 tp!1306811))

(declare-fun b!4259744 () Bool)

(declare-fun e!2645440 () Bool)

(declare-fun inv!62127 (IArray!28487) Bool)

(assert (=> b!4259744 (= e!2645439 (and (inv!62127 (xs!17547 t!4386)) e!2645440))))

(declare-fun b!4259745 () Bool)

(declare-fun tp!1306813 () Bool)

(assert (=> b!4259745 (= e!2645440 tp!1306813)))

(declare-fun tp!1306812 () Bool)

(declare-fun tp!1306814 () Bool)

(declare-fun b!4259746 () Bool)

(assert (=> b!4259746 (= e!2645439 (and (inv!62126 (left!35016 t!4386)) tp!1306812 (inv!62126 (right!35346 t!4386)) tp!1306814))))

(assert (= (and start!408194 res!1751022) b!4259741))

(assert (= (and b!4259741 res!1751021) b!4259743))

(assert (= (and b!4259743 res!1751023) b!4259742))

(assert (= (and start!408194 ((_ is Node!14241) t!4386)) b!4259746))

(assert (= b!4259744 b!4259745))

(assert (= (and start!408194 ((_ is Leaf!22009) t!4386)) b!4259744))

(declare-fun m!4846661 () Bool)

(assert (=> b!4259746 m!4846661))

(declare-fun m!4846663 () Bool)

(assert (=> b!4259746 m!4846663))

(declare-fun m!4846665 () Bool)

(assert (=> b!4259744 m!4846665))

(declare-fun m!4846667 () Bool)

(assert (=> start!408194 m!4846667))

(declare-fun m!4846669 () Bool)

(assert (=> start!408194 m!4846669))

(declare-fun m!4846671 () Bool)

(assert (=> b!4259743 m!4846671))

(declare-fun m!4846673 () Bool)

(assert (=> b!4259743 m!4846673))

(assert (=> b!4259743 m!4846671))

(declare-fun m!4846675 () Bool)

(assert (=> b!4259743 m!4846675))

(declare-fun m!4846677 () Bool)

(assert (=> b!4259743 m!4846677))

(declare-fun m!4846679 () Bool)

(assert (=> b!4259743 m!4846679))

(declare-fun m!4846681 () Bool)

(assert (=> b!4259743 m!4846681))

(assert (=> b!4259743 m!4846675))

(assert (=> b!4259743 m!4846681))

(declare-fun m!4846683 () Bool)

(assert (=> b!4259743 m!4846683))

(declare-fun m!4846685 () Bool)

(assert (=> b!4259743 m!4846685))

(declare-fun m!4846687 () Bool)

(assert (=> b!4259742 m!4846687))

(declare-fun m!4846689 () Bool)

(assert (=> b!4259742 m!4846689))

(check-sat b_and!337651 (not b!4259746) (not start!408194) (not b!4259744) (not b_next!127385) (not b!4259745) (not b!4259743) (not b!4259742))
(check-sat b_and!337651 (not b_next!127385))
(get-model)

(declare-fun b!4259775 () Bool)

(declare-fun res!1751037 () Bool)

(declare-fun e!2645454 () Bool)

(assert (=> b!4259775 (=> (not res!1751037) (not e!2645454))))

(assert (=> b!4259775 (= res!1751037 (isBalanced!3800 (right!35346 t!4386)))))

(declare-fun b!4259776 () Bool)

(declare-fun e!2645453 () Bool)

(assert (=> b!4259776 (= e!2645453 e!2645454)))

(declare-fun res!1751040 () Bool)

(assert (=> b!4259776 (=> (not res!1751040) (not e!2645454))))

(assert (=> b!4259776 (= res!1751040 (<= (- 1) (- (height!1866 (left!35016 t!4386)) (height!1866 (right!35346 t!4386)))))))

(declare-fun b!4259778 () Bool)

(declare-fun res!1751038 () Bool)

(assert (=> b!4259778 (=> (not res!1751038) (not e!2645454))))

(assert (=> b!4259778 (= res!1751038 (isBalanced!3800 (left!35016 t!4386)))))

(declare-fun b!4259779 () Bool)

(declare-fun res!1751041 () Bool)

(assert (=> b!4259779 (=> (not res!1751041) (not e!2645454))))

(declare-fun isEmpty!27974 (Conc!14241) Bool)

(assert (=> b!4259779 (= res!1751041 (not (isEmpty!27974 (left!35016 t!4386))))))

(declare-fun b!4259780 () Bool)

(declare-fun res!1751036 () Bool)

(assert (=> b!4259780 (=> (not res!1751036) (not e!2645454))))

(assert (=> b!4259780 (= res!1751036 (<= (- (height!1866 (left!35016 t!4386)) (height!1866 (right!35346 t!4386))) 1))))

(declare-fun b!4259777 () Bool)

(assert (=> b!4259777 (= e!2645454 (not (isEmpty!27974 (right!35346 t!4386))))))

(declare-fun d!1253402 () Bool)

(declare-fun res!1751039 () Bool)

(assert (=> d!1253402 (=> res!1751039 e!2645453)))

(assert (=> d!1253402 (= res!1751039 (not ((_ is Node!14241) t!4386)))))

(assert (=> d!1253402 (= (isBalanced!3800 t!4386) e!2645453)))

(assert (= (and d!1253402 (not res!1751039)) b!4259776))

(assert (= (and b!4259776 res!1751040) b!4259780))

(assert (= (and b!4259780 res!1751036) b!4259778))

(assert (= (and b!4259778 res!1751038) b!4259775))

(assert (= (and b!4259775 res!1751037) b!4259779))

(assert (= (and b!4259779 res!1751041) b!4259777))

(declare-fun m!4846699 () Bool)

(assert (=> b!4259777 m!4846699))

(declare-fun m!4846701 () Bool)

(assert (=> b!4259775 m!4846701))

(assert (=> b!4259780 m!4846687))

(declare-fun m!4846703 () Bool)

(assert (=> b!4259780 m!4846703))

(declare-fun m!4846705 () Bool)

(assert (=> b!4259779 m!4846705))

(declare-fun m!4846707 () Bool)

(assert (=> b!4259778 m!4846707))

(assert (=> b!4259776 m!4846687))

(assert (=> b!4259776 m!4846703))

(assert (=> start!408194 d!1253402))

(declare-fun d!1253406 () Bool)

(declare-fun c!723406 () Bool)

(assert (=> d!1253406 (= c!723406 ((_ is Node!14241) t!4386))))

(declare-fun e!2645461 () Bool)

(assert (=> d!1253406 (= (inv!62126 t!4386) e!2645461)))

(declare-fun b!4259793 () Bool)

(declare-fun inv!62128 (Conc!14241) Bool)

(assert (=> b!4259793 (= e!2645461 (inv!62128 t!4386))))

(declare-fun b!4259794 () Bool)

(declare-fun e!2645462 () Bool)

(assert (=> b!4259794 (= e!2645461 e!2645462)))

(declare-fun res!1751044 () Bool)

(assert (=> b!4259794 (= res!1751044 (not ((_ is Leaf!22009) t!4386)))))

(assert (=> b!4259794 (=> res!1751044 e!2645462)))

(declare-fun b!4259795 () Bool)

(declare-fun inv!62129 (Conc!14241) Bool)

(assert (=> b!4259795 (= e!2645462 (inv!62129 t!4386))))

(assert (= (and d!1253406 c!723406) b!4259793))

(assert (= (and d!1253406 (not c!723406)) b!4259794))

(assert (= (and b!4259794 (not res!1751044)) b!4259795))

(declare-fun m!4846729 () Bool)

(assert (=> b!4259793 m!4846729))

(declare-fun m!4846731 () Bool)

(assert (=> b!4259795 m!4846731))

(assert (=> start!408194 d!1253406))

(declare-fun d!1253412 () Bool)

(declare-fun size!34591 (List!47358) Int)

(assert (=> d!1253412 (= (inv!62127 (xs!17547 t!4386)) (<= (size!34591 (innerList!14301 (xs!17547 t!4386))) 2147483647))))

(declare-fun bs!598994 () Bool)

(assert (= bs!598994 d!1253412))

(declare-fun m!4846733 () Bool)

(assert (=> bs!598994 m!4846733))

(assert (=> b!4259744 d!1253412))

(declare-fun b!4259822 () Bool)

(declare-fun res!1751056 () Bool)

(declare-fun e!2645475 () Bool)

(assert (=> b!4259822 (=> (not res!1751056) (not e!2645475))))

(declare-fun lt!1510416 () List!47358)

(assert (=> b!4259822 (= res!1751056 (= (size!34591 lt!1510416) (+ (size!34591 lt!1510403) (size!34591 lt!1510402))))))

(declare-fun d!1253414 () Bool)

(assert (=> d!1253414 e!2645475))

(declare-fun res!1751055 () Bool)

(assert (=> d!1253414 (=> (not res!1751055) (not e!2645475))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7437 (List!47358) (InoxSet T!79392))

(assert (=> d!1253414 (= res!1751055 (= (content!7437 lt!1510416) ((_ map or) (content!7437 lt!1510403) (content!7437 lt!1510402))))))

(declare-fun e!2645476 () List!47358)

(assert (=> d!1253414 (= lt!1510416 e!2645476)))

(declare-fun c!723414 () Bool)

(assert (=> d!1253414 (= c!723414 ((_ is Nil!47234) lt!1510403))))

(assert (=> d!1253414 (= (++!12027 lt!1510403 lt!1510402) lt!1510416)))

(declare-fun b!4259820 () Bool)

(assert (=> b!4259820 (= e!2645476 lt!1510402)))

(declare-fun b!4259821 () Bool)

(assert (=> b!4259821 (= e!2645476 (Cons!47234 (h!52654 lt!1510403) (++!12027 (t!353133 lt!1510403) lt!1510402)))))

(declare-fun b!4259823 () Bool)

(assert (=> b!4259823 (= e!2645475 (or (not (= lt!1510402 Nil!47234)) (= lt!1510416 lt!1510403)))))

(assert (= (and d!1253414 c!723414) b!4259820))

(assert (= (and d!1253414 (not c!723414)) b!4259821))

(assert (= (and d!1253414 res!1751055) b!4259822))

(assert (= (and b!4259822 res!1751056) b!4259823))

(declare-fun m!4846749 () Bool)

(assert (=> b!4259822 m!4846749))

(declare-fun m!4846751 () Bool)

(assert (=> b!4259822 m!4846751))

(declare-fun m!4846753 () Bool)

(assert (=> b!4259822 m!4846753))

(declare-fun m!4846755 () Bool)

(assert (=> d!1253414 m!4846755))

(declare-fun m!4846757 () Bool)

(assert (=> d!1253414 m!4846757))

(declare-fun m!4846759 () Bool)

(assert (=> d!1253414 m!4846759))

(declare-fun m!4846761 () Bool)

(assert (=> b!4259821 m!4846761))

(assert (=> b!4259743 d!1253414))

(declare-fun b!4259848 () Bool)

(declare-fun res!1751067 () Bool)

(declare-fun e!2645488 () Bool)

(assert (=> b!4259848 (=> (not res!1751067) (not e!2645488))))

(declare-fun lt!1510423 () List!47359)

(declare-fun size!34592 (List!47359) Int)

(assert (=> b!4259848 (= res!1751067 (= (size!34592 lt!1510423) (+ (size!34592 (map!9663 lt!1510403 f!428)) (size!34592 (map!9663 lt!1510402 f!428)))))))

(declare-fun b!4259849 () Bool)

(assert (=> b!4259849 (= e!2645488 (or (not (= (map!9663 lt!1510402 f!428) Nil!47235)) (= lt!1510423 (map!9663 lt!1510403 f!428))))))

(declare-fun d!1253418 () Bool)

(assert (=> d!1253418 e!2645488))

(declare-fun res!1751068 () Bool)

(assert (=> d!1253418 (=> (not res!1751068) (not e!2645488))))

(declare-fun content!7439 (List!47359) (InoxSet B!2817))

(assert (=> d!1253418 (= res!1751068 (= (content!7439 lt!1510423) ((_ map or) (content!7439 (map!9663 lt!1510403 f!428)) (content!7439 (map!9663 lt!1510402 f!428)))))))

(declare-fun e!2645489 () List!47359)

(assert (=> d!1253418 (= lt!1510423 e!2645489)))

(declare-fun c!723421 () Bool)

(assert (=> d!1253418 (= c!723421 ((_ is Nil!47235) (map!9663 lt!1510403 f!428)))))

(assert (=> d!1253418 (= (++!12028 (map!9663 lt!1510403 f!428) (map!9663 lt!1510402 f!428)) lt!1510423)))

(declare-fun b!4259847 () Bool)

(assert (=> b!4259847 (= e!2645489 (Cons!47235 (h!52655 (map!9663 lt!1510403 f!428)) (++!12028 (t!353134 (map!9663 lt!1510403 f!428)) (map!9663 lt!1510402 f!428))))))

(declare-fun b!4259846 () Bool)

(assert (=> b!4259846 (= e!2645489 (map!9663 lt!1510402 f!428))))

(assert (= (and d!1253418 c!723421) b!4259846))

(assert (= (and d!1253418 (not c!723421)) b!4259847))

(assert (= (and d!1253418 res!1751068) b!4259848))

(assert (= (and b!4259848 res!1751067) b!4259849))

(declare-fun m!4846791 () Bool)

(assert (=> b!4259848 m!4846791))

(assert (=> b!4259848 m!4846671))

(declare-fun m!4846793 () Bool)

(assert (=> b!4259848 m!4846793))

(assert (=> b!4259848 m!4846675))

(declare-fun m!4846795 () Bool)

(assert (=> b!4259848 m!4846795))

(declare-fun m!4846797 () Bool)

(assert (=> d!1253418 m!4846797))

(assert (=> d!1253418 m!4846671))

(declare-fun m!4846799 () Bool)

(assert (=> d!1253418 m!4846799))

(assert (=> d!1253418 m!4846675))

(declare-fun m!4846801 () Bool)

(assert (=> d!1253418 m!4846801))

(assert (=> b!4259847 m!4846675))

(declare-fun m!4846803 () Bool)

(assert (=> b!4259847 m!4846803))

(assert (=> b!4259743 d!1253418))

(declare-fun d!1253426 () Bool)

(declare-fun lt!1510427 () List!47359)

(assert (=> d!1253426 (= (size!34592 lt!1510427) (size!34591 lt!1510402))))

(declare-fun e!2645492 () List!47359)

(assert (=> d!1253426 (= lt!1510427 e!2645492)))

(declare-fun c!723424 () Bool)

(assert (=> d!1253426 (= c!723424 ((_ is Nil!47234) lt!1510402))))

(assert (=> d!1253426 (= (map!9663 lt!1510402 f!428) lt!1510427)))

(declare-fun b!4259854 () Bool)

(assert (=> b!4259854 (= e!2645492 Nil!47235)))

(declare-fun b!4259855 () Bool)

(declare-fun $colon$colon!629 (List!47359 B!2817) List!47359)

(declare-fun dynLambda!20217 (Int T!79392) B!2817)

(assert (=> b!4259855 (= e!2645492 ($colon$colon!629 (map!9663 (t!353133 lt!1510402) f!428) (dynLambda!20217 f!428 (h!52654 lt!1510402))))))

(assert (= (and d!1253426 c!723424) b!4259854))

(assert (= (and d!1253426 (not c!723424)) b!4259855))

(declare-fun b_lambda!125633 () Bool)

(assert (=> (not b_lambda!125633) (not b!4259855)))

(declare-fun t!353145 () Bool)

(declare-fun tb!256857 () Bool)

(assert (=> (and start!408194 (= f!428 f!428) t!353145) tb!256857))

(declare-fun result!313400 () Bool)

(declare-fun tp_is_empty!22865 () Bool)

(assert (=> tb!256857 (= result!313400 tp_is_empty!22865)))

(assert (=> b!4259855 t!353145))

(declare-fun b_and!337659 () Bool)

(assert (= b_and!337651 (and (=> t!353145 result!313400) b_and!337659)))

(declare-fun m!4846807 () Bool)

(assert (=> d!1253426 m!4846807))

(assert (=> d!1253426 m!4846753))

(declare-fun m!4846809 () Bool)

(assert (=> b!4259855 m!4846809))

(declare-fun m!4846811 () Bool)

(assert (=> b!4259855 m!4846811))

(assert (=> b!4259855 m!4846809))

(assert (=> b!4259855 m!4846811))

(declare-fun m!4846813 () Bool)

(assert (=> b!4259855 m!4846813))

(assert (=> b!4259743 d!1253426))

(declare-fun d!1253434 () Bool)

(declare-fun lt!1510428 () List!47359)

(assert (=> d!1253434 (= (size!34592 lt!1510428) (size!34591 (++!12027 lt!1510403 lt!1510402)))))

(declare-fun e!2645495 () List!47359)

(assert (=> d!1253434 (= lt!1510428 e!2645495)))

(declare-fun c!723427 () Bool)

(assert (=> d!1253434 (= c!723427 ((_ is Nil!47234) (++!12027 lt!1510403 lt!1510402)))))

(assert (=> d!1253434 (= (map!9663 (++!12027 lt!1510403 lt!1510402) f!428) lt!1510428)))

(declare-fun b!4259862 () Bool)

(assert (=> b!4259862 (= e!2645495 Nil!47235)))

(declare-fun b!4259863 () Bool)

(assert (=> b!4259863 (= e!2645495 ($colon$colon!629 (map!9663 (t!353133 (++!12027 lt!1510403 lt!1510402)) f!428) (dynLambda!20217 f!428 (h!52654 (++!12027 lt!1510403 lt!1510402)))))))

(assert (= (and d!1253434 c!723427) b!4259862))

(assert (= (and d!1253434 (not c!723427)) b!4259863))

(declare-fun b_lambda!125635 () Bool)

(assert (=> (not b_lambda!125635) (not b!4259863)))

(declare-fun t!353147 () Bool)

(declare-fun tb!256859 () Bool)

(assert (=> (and start!408194 (= f!428 f!428) t!353147) tb!256859))

(declare-fun result!313404 () Bool)

(assert (=> tb!256859 (= result!313404 tp_is_empty!22865)))

(assert (=> b!4259863 t!353147))

(declare-fun b_and!337661 () Bool)

(assert (= b_and!337659 (and (=> t!353147 result!313404) b_and!337661)))

(declare-fun m!4846815 () Bool)

(assert (=> d!1253434 m!4846815))

(assert (=> d!1253434 m!4846681))

(declare-fun m!4846817 () Bool)

(assert (=> d!1253434 m!4846817))

(declare-fun m!4846819 () Bool)

(assert (=> b!4259863 m!4846819))

(declare-fun m!4846821 () Bool)

(assert (=> b!4259863 m!4846821))

(assert (=> b!4259863 m!4846819))

(assert (=> b!4259863 m!4846821))

(declare-fun m!4846823 () Bool)

(assert (=> b!4259863 m!4846823))

(assert (=> b!4259743 d!1253434))

(declare-fun b!4259880 () Bool)

(declare-fun e!2645506 () List!47358)

(assert (=> b!4259880 (= e!2645506 Nil!47234)))

(declare-fun b!4259883 () Bool)

(declare-fun e!2645507 () List!47358)

(assert (=> b!4259883 (= e!2645507 (++!12027 (list!17054 (left!35016 (right!35346 t!4386))) (list!17054 (right!35346 (right!35346 t!4386)))))))

(declare-fun b!4259882 () Bool)

(declare-fun list!17056 (IArray!28487) List!47358)

(assert (=> b!4259882 (= e!2645507 (list!17056 (xs!17547 (right!35346 t!4386))))))

(declare-fun b!4259881 () Bool)

(assert (=> b!4259881 (= e!2645506 e!2645507)))

(declare-fun c!723435 () Bool)

(assert (=> b!4259881 (= c!723435 ((_ is Leaf!22009) (right!35346 t!4386)))))

(declare-fun d!1253436 () Bool)

(declare-fun c!723434 () Bool)

(assert (=> d!1253436 (= c!723434 ((_ is Empty!14241) (right!35346 t!4386)))))

(assert (=> d!1253436 (= (list!17054 (right!35346 t!4386)) e!2645506)))

(assert (= (and d!1253436 c!723434) b!4259880))

(assert (= (and d!1253436 (not c!723434)) b!4259881))

(assert (= (and b!4259881 c!723435) b!4259882))

(assert (= (and b!4259881 (not c!723435)) b!4259883))

(declare-fun m!4846833 () Bool)

(assert (=> b!4259883 m!4846833))

(declare-fun m!4846835 () Bool)

(assert (=> b!4259883 m!4846835))

(assert (=> b!4259883 m!4846833))

(assert (=> b!4259883 m!4846835))

(declare-fun m!4846837 () Bool)

(assert (=> b!4259883 m!4846837))

(declare-fun m!4846839 () Bool)

(assert (=> b!4259882 m!4846839))

(assert (=> b!4259743 d!1253436))

(declare-fun d!1253442 () Bool)

(declare-fun lt!1510429 () List!47359)

(assert (=> d!1253442 (= (size!34592 lt!1510429) (size!34591 lt!1510403))))

(declare-fun e!2645508 () List!47359)

(assert (=> d!1253442 (= lt!1510429 e!2645508)))

(declare-fun c!723436 () Bool)

(assert (=> d!1253442 (= c!723436 ((_ is Nil!47234) lt!1510403))))

(assert (=> d!1253442 (= (map!9663 lt!1510403 f!428) lt!1510429)))

(declare-fun b!4259884 () Bool)

(assert (=> b!4259884 (= e!2645508 Nil!47235)))

(declare-fun b!4259885 () Bool)

(assert (=> b!4259885 (= e!2645508 ($colon$colon!629 (map!9663 (t!353133 lt!1510403) f!428) (dynLambda!20217 f!428 (h!52654 lt!1510403))))))

(assert (= (and d!1253442 c!723436) b!4259884))

(assert (= (and d!1253442 (not c!723436)) b!4259885))

(declare-fun b_lambda!125637 () Bool)

(assert (=> (not b_lambda!125637) (not b!4259885)))

(declare-fun t!353150 () Bool)

(declare-fun tb!256861 () Bool)

(assert (=> (and start!408194 (= f!428 f!428) t!353150) tb!256861))

(declare-fun result!313406 () Bool)

(assert (=> tb!256861 (= result!313406 tp_is_empty!22865)))

(assert (=> b!4259885 t!353150))

(declare-fun b_and!337663 () Bool)

(assert (= b_and!337661 (and (=> t!353150 result!313406) b_and!337663)))

(declare-fun m!4846841 () Bool)

(assert (=> d!1253442 m!4846841))

(assert (=> d!1253442 m!4846751))

(declare-fun m!4846843 () Bool)

(assert (=> b!4259885 m!4846843))

(declare-fun m!4846845 () Bool)

(assert (=> b!4259885 m!4846845))

(assert (=> b!4259885 m!4846843))

(assert (=> b!4259885 m!4846845))

(declare-fun m!4846847 () Bool)

(assert (=> b!4259885 m!4846847))

(assert (=> b!4259743 d!1253442))

(declare-fun d!1253444 () Bool)

(assert (=> d!1253444 (= (map!9663 (++!12027 lt!1510403 lt!1510402) f!428) (++!12028 (map!9663 lt!1510403 f!428) (map!9663 lt!1510402 f!428)))))

(declare-fun lt!1510432 () Unit!66131)

(declare-fun choose!25982 (List!47358 List!47358 Int) Unit!66131)

(assert (=> d!1253444 (= lt!1510432 (choose!25982 lt!1510403 lt!1510402 f!428))))

(assert (=> d!1253444 (= (lemmaMapConcat!28 lt!1510403 lt!1510402 f!428) lt!1510432)))

(declare-fun bs!598996 () Bool)

(assert (= bs!598996 d!1253444))

(declare-fun m!4846849 () Bool)

(assert (=> bs!598996 m!4846849))

(assert (=> bs!598996 m!4846681))

(assert (=> bs!598996 m!4846671))

(assert (=> bs!598996 m!4846675))

(assert (=> bs!598996 m!4846677))

(assert (=> bs!598996 m!4846671))

(assert (=> bs!598996 m!4846675))

(assert (=> bs!598996 m!4846681))

(assert (=> bs!598996 m!4846683))

(assert (=> b!4259743 d!1253444))

(declare-fun b!4259904 () Bool)

(declare-fun e!2645515 () List!47358)

(assert (=> b!4259904 (= e!2645515 Nil!47234)))

(declare-fun b!4259907 () Bool)

(declare-fun e!2645516 () List!47358)

(assert (=> b!4259907 (= e!2645516 (++!12027 (list!17054 (left!35016 (left!35016 t!4386))) (list!17054 (right!35346 (left!35016 t!4386)))))))

(declare-fun b!4259906 () Bool)

(assert (=> b!4259906 (= e!2645516 (list!17056 (xs!17547 (left!35016 t!4386))))))

(declare-fun b!4259905 () Bool)

(assert (=> b!4259905 (= e!2645515 e!2645516)))

(declare-fun c!723438 () Bool)

(assert (=> b!4259905 (= c!723438 ((_ is Leaf!22009) (left!35016 t!4386)))))

(declare-fun d!1253446 () Bool)

(declare-fun c!723437 () Bool)

(assert (=> d!1253446 (= c!723437 ((_ is Empty!14241) (left!35016 t!4386)))))

(assert (=> d!1253446 (= (list!17054 (left!35016 t!4386)) e!2645515)))

(assert (= (and d!1253446 c!723437) b!4259904))

(assert (= (and d!1253446 (not c!723437)) b!4259905))

(assert (= (and b!4259905 c!723438) b!4259906))

(assert (= (and b!4259905 (not c!723438)) b!4259907))

(declare-fun m!4846861 () Bool)

(assert (=> b!4259907 m!4846861))

(declare-fun m!4846865 () Bool)

(assert (=> b!4259907 m!4846865))

(assert (=> b!4259907 m!4846861))

(assert (=> b!4259907 m!4846865))

(declare-fun m!4846869 () Bool)

(assert (=> b!4259907 m!4846869))

(declare-fun m!4846871 () Bool)

(assert (=> b!4259906 m!4846871))

(assert (=> b!4259743 d!1253446))

(declare-fun d!1253452 () Bool)

(assert (=> d!1253452 (= (height!1866 (left!35016 t!4386)) (ite ((_ is Empty!14241) (left!35016 t!4386)) 0 (ite ((_ is Leaf!22009) (left!35016 t!4386)) 1 (cheight!14452 (left!35016 t!4386)))))))

(assert (=> b!4259742 d!1253452))

(declare-fun d!1253454 () Bool)

(assert (=> d!1253454 (= (height!1866 t!4386) (ite ((_ is Empty!14241) t!4386) 0 (ite ((_ is Leaf!22009) t!4386) 1 (cheight!14452 t!4386))))))

(assert (=> b!4259742 d!1253454))

(declare-fun d!1253456 () Bool)

(declare-fun c!723440 () Bool)

(assert (=> d!1253456 (= c!723440 ((_ is Node!14241) (left!35016 t!4386)))))

(declare-fun e!2645521 () Bool)

(assert (=> d!1253456 (= (inv!62126 (left!35016 t!4386)) e!2645521)))

(declare-fun b!4259915 () Bool)

(assert (=> b!4259915 (= e!2645521 (inv!62128 (left!35016 t!4386)))))

(declare-fun b!4259916 () Bool)

(declare-fun e!2645522 () Bool)

(assert (=> b!4259916 (= e!2645521 e!2645522)))

(declare-fun res!1751092 () Bool)

(assert (=> b!4259916 (= res!1751092 (not ((_ is Leaf!22009) (left!35016 t!4386))))))

(assert (=> b!4259916 (=> res!1751092 e!2645522)))

(declare-fun b!4259917 () Bool)

(assert (=> b!4259917 (= e!2645522 (inv!62129 (left!35016 t!4386)))))

(assert (= (and d!1253456 c!723440) b!4259915))

(assert (= (and d!1253456 (not c!723440)) b!4259916))

(assert (= (and b!4259916 (not res!1751092)) b!4259917))

(declare-fun m!4846875 () Bool)

(assert (=> b!4259915 m!4846875))

(declare-fun m!4846877 () Bool)

(assert (=> b!4259917 m!4846877))

(assert (=> b!4259746 d!1253456))

(declare-fun d!1253458 () Bool)

(declare-fun c!723441 () Bool)

(assert (=> d!1253458 (= c!723441 ((_ is Node!14241) (right!35346 t!4386)))))

(declare-fun e!2645523 () Bool)

(assert (=> d!1253458 (= (inv!62126 (right!35346 t!4386)) e!2645523)))

(declare-fun b!4259919 () Bool)

(assert (=> b!4259919 (= e!2645523 (inv!62128 (right!35346 t!4386)))))

(declare-fun b!4259920 () Bool)

(declare-fun e!2645525 () Bool)

(assert (=> b!4259920 (= e!2645523 e!2645525)))

(declare-fun res!1751093 () Bool)

(assert (=> b!4259920 (= res!1751093 (not ((_ is Leaf!22009) (right!35346 t!4386))))))

(assert (=> b!4259920 (=> res!1751093 e!2645525)))

(declare-fun b!4259921 () Bool)

(assert (=> b!4259921 (= e!2645525 (inv!62129 (right!35346 t!4386)))))

(assert (= (and d!1253458 c!723441) b!4259919))

(assert (= (and d!1253458 (not c!723441)) b!4259920))

(assert (= (and b!4259920 (not res!1751093)) b!4259921))

(declare-fun m!4846879 () Bool)

(assert (=> b!4259919 m!4846879))

(declare-fun m!4846881 () Bool)

(assert (=> b!4259921 m!4846881))

(assert (=> b!4259746 d!1253458))

(declare-fun b!4259934 () Bool)

(declare-fun e!2645532 () Bool)

(declare-fun tp_is_empty!22869 () Bool)

(declare-fun tp!1306826 () Bool)

(assert (=> b!4259934 (= e!2645532 (and tp_is_empty!22869 tp!1306826))))

(assert (=> b!4259745 (= tp!1306813 e!2645532)))

(assert (= (and b!4259745 ((_ is Cons!47234) (innerList!14301 (xs!17547 t!4386)))) b!4259934))

(declare-fun e!2645542 () Bool)

(declare-fun b!4259949 () Bool)

(declare-fun tp!1306839 () Bool)

(declare-fun tp!1306841 () Bool)

(assert (=> b!4259949 (= e!2645542 (and (inv!62126 (left!35016 (left!35016 t!4386))) tp!1306841 (inv!62126 (right!35346 (left!35016 t!4386))) tp!1306839))))

(declare-fun b!4259951 () Bool)

(declare-fun e!2645541 () Bool)

(declare-fun tp!1306840 () Bool)

(assert (=> b!4259951 (= e!2645541 tp!1306840)))

(declare-fun b!4259950 () Bool)

(assert (=> b!4259950 (= e!2645542 (and (inv!62127 (xs!17547 (left!35016 t!4386))) e!2645541))))

(assert (=> b!4259746 (= tp!1306812 (and (inv!62126 (left!35016 t!4386)) e!2645542))))

(assert (= (and b!4259746 ((_ is Node!14241) (left!35016 t!4386))) b!4259949))

(assert (= b!4259950 b!4259951))

(assert (= (and b!4259746 ((_ is Leaf!22009) (left!35016 t!4386))) b!4259950))

(declare-fun m!4846895 () Bool)

(assert (=> b!4259949 m!4846895))

(declare-fun m!4846897 () Bool)

(assert (=> b!4259949 m!4846897))

(declare-fun m!4846899 () Bool)

(assert (=> b!4259950 m!4846899))

(assert (=> b!4259746 m!4846661))

(declare-fun tp!1306842 () Bool)

(declare-fun tp!1306844 () Bool)

(declare-fun b!4259952 () Bool)

(declare-fun e!2645544 () Bool)

(assert (=> b!4259952 (= e!2645544 (and (inv!62126 (left!35016 (right!35346 t!4386))) tp!1306844 (inv!62126 (right!35346 (right!35346 t!4386))) tp!1306842))))

(declare-fun b!4259954 () Bool)

(declare-fun e!2645543 () Bool)

(declare-fun tp!1306843 () Bool)

(assert (=> b!4259954 (= e!2645543 tp!1306843)))

(declare-fun b!4259953 () Bool)

(assert (=> b!4259953 (= e!2645544 (and (inv!62127 (xs!17547 (right!35346 t!4386))) e!2645543))))

(assert (=> b!4259746 (= tp!1306814 (and (inv!62126 (right!35346 t!4386)) e!2645544))))

(assert (= (and b!4259746 ((_ is Node!14241) (right!35346 t!4386))) b!4259952))

(assert (= b!4259953 b!4259954))

(assert (= (and b!4259746 ((_ is Leaf!22009) (right!35346 t!4386))) b!4259953))

(declare-fun m!4846901 () Bool)

(assert (=> b!4259952 m!4846901))

(declare-fun m!4846903 () Bool)

(assert (=> b!4259952 m!4846903))

(declare-fun m!4846905 () Bool)

(assert (=> b!4259953 m!4846905))

(assert (=> b!4259746 m!4846663))

(declare-fun b_lambda!125645 () Bool)

(assert (= b_lambda!125637 (or (and start!408194 b_free!126681) b_lambda!125645)))

(declare-fun b_lambda!125647 () Bool)

(assert (= b_lambda!125635 (or (and start!408194 b_free!126681) b_lambda!125647)))

(declare-fun b_lambda!125649 () Bool)

(assert (= b_lambda!125633 (or (and start!408194 b_free!126681) b_lambda!125649)))

(check-sat (not b!4259795) (not b!4259778) (not b!4259822) (not b!4259953) (not b!4259921) b_and!337663 (not b!4259780) (not b_lambda!125645) (not b!4259775) (not b!4259855) (not b!4259777) (not b!4259863) tp_is_empty!22865 (not b!4259746) tp_is_empty!22869 (not d!1253412) (not b!4259949) (not b!4259934) (not b!4259919) (not b!4259793) (not d!1253434) (not b!4259906) (not b!4259915) (not b!4259954) (not d!1253414) (not d!1253444) (not d!1253442) (not b!4259952) (not b_next!127385) (not b!4259917) (not b!4259848) (not b!4259882) (not d!1253426) (not b!4259885) (not d!1253418) (not b!4259779) (not b!4259821) (not b_lambda!125647) (not b!4259951) (not b!4259907) (not b!4259847) (not b!4259950) (not b!4259776) (not b!4259883) (not b_lambda!125649))
(check-sat b_and!337663 (not b_next!127385))
(get-model)

(declare-fun d!1253460 () Bool)

(declare-fun res!1751100 () Bool)

(declare-fun e!2645547 () Bool)

(assert (=> d!1253460 (=> (not res!1751100) (not e!2645547))))

(declare-fun size!34593 (Conc!14241) Int)

(assert (=> d!1253460 (= res!1751100 (= (csize!28712 (left!35016 t!4386)) (+ (size!34593 (left!35016 (left!35016 t!4386))) (size!34593 (right!35346 (left!35016 t!4386))))))))

(assert (=> d!1253460 (= (inv!62128 (left!35016 t!4386)) e!2645547)))

(declare-fun b!4259961 () Bool)

(declare-fun res!1751101 () Bool)

(assert (=> b!4259961 (=> (not res!1751101) (not e!2645547))))

(assert (=> b!4259961 (= res!1751101 (and (not (= (left!35016 (left!35016 t!4386)) Empty!14241)) (not (= (right!35346 (left!35016 t!4386)) Empty!14241))))))

(declare-fun b!4259962 () Bool)

(declare-fun res!1751102 () Bool)

(assert (=> b!4259962 (=> (not res!1751102) (not e!2645547))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4259962 (= res!1751102 (= (cheight!14452 (left!35016 t!4386)) (+ (max!0 (height!1866 (left!35016 (left!35016 t!4386))) (height!1866 (right!35346 (left!35016 t!4386)))) 1)))))

(declare-fun b!4259963 () Bool)

(assert (=> b!4259963 (= e!2645547 (<= 0 (cheight!14452 (left!35016 t!4386))))))

(assert (= (and d!1253460 res!1751100) b!4259961))

(assert (= (and b!4259961 res!1751101) b!4259962))

(assert (= (and b!4259962 res!1751102) b!4259963))

(declare-fun m!4846907 () Bool)

(assert (=> d!1253460 m!4846907))

(declare-fun m!4846909 () Bool)

(assert (=> d!1253460 m!4846909))

(declare-fun m!4846911 () Bool)

(assert (=> b!4259962 m!4846911))

(declare-fun m!4846913 () Bool)

(assert (=> b!4259962 m!4846913))

(assert (=> b!4259962 m!4846911))

(assert (=> b!4259962 m!4846913))

(declare-fun m!4846915 () Bool)

(assert (=> b!4259962 m!4846915))

(assert (=> b!4259915 d!1253460))

(declare-fun b!4259966 () Bool)

(declare-fun res!1751103 () Bool)

(declare-fun e!2645548 () Bool)

(assert (=> b!4259966 (=> (not res!1751103) (not e!2645548))))

(declare-fun lt!1510433 () List!47359)

(assert (=> b!4259966 (= res!1751103 (= (size!34592 lt!1510433) (+ (size!34592 (t!353134 (map!9663 lt!1510403 f!428))) (size!34592 (map!9663 lt!1510402 f!428)))))))

(declare-fun b!4259967 () Bool)

(assert (=> b!4259967 (= e!2645548 (or (not (= (map!9663 lt!1510402 f!428) Nil!47235)) (= lt!1510433 (t!353134 (map!9663 lt!1510403 f!428)))))))

(declare-fun d!1253462 () Bool)

(assert (=> d!1253462 e!2645548))

(declare-fun res!1751104 () Bool)

(assert (=> d!1253462 (=> (not res!1751104) (not e!2645548))))

(assert (=> d!1253462 (= res!1751104 (= (content!7439 lt!1510433) ((_ map or) (content!7439 (t!353134 (map!9663 lt!1510403 f!428))) (content!7439 (map!9663 lt!1510402 f!428)))))))

(declare-fun e!2645549 () List!47359)

(assert (=> d!1253462 (= lt!1510433 e!2645549)))

(declare-fun c!723442 () Bool)

(assert (=> d!1253462 (= c!723442 ((_ is Nil!47235) (t!353134 (map!9663 lt!1510403 f!428))))))

(assert (=> d!1253462 (= (++!12028 (t!353134 (map!9663 lt!1510403 f!428)) (map!9663 lt!1510402 f!428)) lt!1510433)))

(declare-fun b!4259965 () Bool)

(assert (=> b!4259965 (= e!2645549 (Cons!47235 (h!52655 (t!353134 (map!9663 lt!1510403 f!428))) (++!12028 (t!353134 (t!353134 (map!9663 lt!1510403 f!428))) (map!9663 lt!1510402 f!428))))))

(declare-fun b!4259964 () Bool)

(assert (=> b!4259964 (= e!2645549 (map!9663 lt!1510402 f!428))))

(assert (= (and d!1253462 c!723442) b!4259964))

(assert (= (and d!1253462 (not c!723442)) b!4259965))

(assert (= (and d!1253462 res!1751104) b!4259966))

(assert (= (and b!4259966 res!1751103) b!4259967))

(declare-fun m!4846917 () Bool)

(assert (=> b!4259966 m!4846917))

(declare-fun m!4846919 () Bool)

(assert (=> b!4259966 m!4846919))

(assert (=> b!4259966 m!4846675))

(assert (=> b!4259966 m!4846795))

(declare-fun m!4846921 () Bool)

(assert (=> d!1253462 m!4846921))

(declare-fun m!4846923 () Bool)

(assert (=> d!1253462 m!4846923))

(assert (=> d!1253462 m!4846675))

(assert (=> d!1253462 m!4846801))

(assert (=> b!4259965 m!4846675))

(declare-fun m!4846925 () Bool)

(assert (=> b!4259965 m!4846925))

(assert (=> b!4259847 d!1253462))

(declare-fun d!1253464 () Bool)

(declare-fun lt!1510436 () Int)

(assert (=> d!1253464 (>= lt!1510436 0)))

(declare-fun e!2645552 () Int)

(assert (=> d!1253464 (= lt!1510436 e!2645552)))

(declare-fun c!723445 () Bool)

(assert (=> d!1253464 (= c!723445 ((_ is Nil!47235) lt!1510423))))

(assert (=> d!1253464 (= (size!34592 lt!1510423) lt!1510436)))

(declare-fun b!4259972 () Bool)

(assert (=> b!4259972 (= e!2645552 0)))

(declare-fun b!4259973 () Bool)

(assert (=> b!4259973 (= e!2645552 (+ 1 (size!34592 (t!353134 lt!1510423))))))

(assert (= (and d!1253464 c!723445) b!4259972))

(assert (= (and d!1253464 (not c!723445)) b!4259973))

(declare-fun m!4846927 () Bool)

(assert (=> b!4259973 m!4846927))

(assert (=> b!4259848 d!1253464))

(declare-fun d!1253466 () Bool)

(declare-fun lt!1510437 () Int)

(assert (=> d!1253466 (>= lt!1510437 0)))

(declare-fun e!2645553 () Int)

(assert (=> d!1253466 (= lt!1510437 e!2645553)))

(declare-fun c!723446 () Bool)

(assert (=> d!1253466 (= c!723446 ((_ is Nil!47235) (map!9663 lt!1510403 f!428)))))

(assert (=> d!1253466 (= (size!34592 (map!9663 lt!1510403 f!428)) lt!1510437)))

(declare-fun b!4259974 () Bool)

(assert (=> b!4259974 (= e!2645553 0)))

(declare-fun b!4259975 () Bool)

(assert (=> b!4259975 (= e!2645553 (+ 1 (size!34592 (t!353134 (map!9663 lt!1510403 f!428)))))))

(assert (= (and d!1253466 c!723446) b!4259974))

(assert (= (and d!1253466 (not c!723446)) b!4259975))

(assert (=> b!4259975 m!4846919))

(assert (=> b!4259848 d!1253466))

(declare-fun d!1253468 () Bool)

(declare-fun lt!1510438 () Int)

(assert (=> d!1253468 (>= lt!1510438 0)))

(declare-fun e!2645554 () Int)

(assert (=> d!1253468 (= lt!1510438 e!2645554)))

(declare-fun c!723447 () Bool)

(assert (=> d!1253468 (= c!723447 ((_ is Nil!47235) (map!9663 lt!1510402 f!428)))))

(assert (=> d!1253468 (= (size!34592 (map!9663 lt!1510402 f!428)) lt!1510438)))

(declare-fun b!4259976 () Bool)

(assert (=> b!4259976 (= e!2645554 0)))

(declare-fun b!4259977 () Bool)

(assert (=> b!4259977 (= e!2645554 (+ 1 (size!34592 (t!353134 (map!9663 lt!1510402 f!428)))))))

(assert (= (and d!1253468 c!723447) b!4259976))

(assert (= (and d!1253468 (not c!723447)) b!4259977))

(declare-fun m!4846929 () Bool)

(assert (=> b!4259977 m!4846929))

(assert (=> b!4259848 d!1253468))

(declare-fun d!1253470 () Bool)

(declare-fun c!723450 () Bool)

(assert (=> d!1253470 (= c!723450 ((_ is Nil!47235) lt!1510423))))

(declare-fun e!2645557 () (InoxSet B!2817))

(assert (=> d!1253470 (= (content!7439 lt!1510423) e!2645557)))

(declare-fun b!4259982 () Bool)

(assert (=> b!4259982 (= e!2645557 ((as const (Array B!2817 Bool)) false))))

(declare-fun b!4259983 () Bool)

(assert (=> b!4259983 (= e!2645557 ((_ map or) (store ((as const (Array B!2817 Bool)) false) (h!52655 lt!1510423) true) (content!7439 (t!353134 lt!1510423))))))

(assert (= (and d!1253470 c!723450) b!4259982))

(assert (= (and d!1253470 (not c!723450)) b!4259983))

(declare-fun m!4846931 () Bool)

(assert (=> b!4259983 m!4846931))

(declare-fun m!4846933 () Bool)

(assert (=> b!4259983 m!4846933))

(assert (=> d!1253418 d!1253470))

(declare-fun d!1253472 () Bool)

(declare-fun c!723451 () Bool)

(assert (=> d!1253472 (= c!723451 ((_ is Nil!47235) (map!9663 lt!1510403 f!428)))))

(declare-fun e!2645558 () (InoxSet B!2817))

(assert (=> d!1253472 (= (content!7439 (map!9663 lt!1510403 f!428)) e!2645558)))

(declare-fun b!4259984 () Bool)

(assert (=> b!4259984 (= e!2645558 ((as const (Array B!2817 Bool)) false))))

(declare-fun b!4259985 () Bool)

(assert (=> b!4259985 (= e!2645558 ((_ map or) (store ((as const (Array B!2817 Bool)) false) (h!52655 (map!9663 lt!1510403 f!428)) true) (content!7439 (t!353134 (map!9663 lt!1510403 f!428)))))))

(assert (= (and d!1253472 c!723451) b!4259984))

(assert (= (and d!1253472 (not c!723451)) b!4259985))

(declare-fun m!4846935 () Bool)

(assert (=> b!4259985 m!4846935))

(assert (=> b!4259985 m!4846923))

(assert (=> d!1253418 d!1253472))

(declare-fun d!1253474 () Bool)

(declare-fun c!723452 () Bool)

(assert (=> d!1253474 (= c!723452 ((_ is Nil!47235) (map!9663 lt!1510402 f!428)))))

(declare-fun e!2645559 () (InoxSet B!2817))

(assert (=> d!1253474 (= (content!7439 (map!9663 lt!1510402 f!428)) e!2645559)))

(declare-fun b!4259986 () Bool)

(assert (=> b!4259986 (= e!2645559 ((as const (Array B!2817 Bool)) false))))

(declare-fun b!4259987 () Bool)

(assert (=> b!4259987 (= e!2645559 ((_ map or) (store ((as const (Array B!2817 Bool)) false) (h!52655 (map!9663 lt!1510402 f!428)) true) (content!7439 (t!353134 (map!9663 lt!1510402 f!428)))))))

(assert (= (and d!1253474 c!723452) b!4259986))

(assert (= (and d!1253474 (not c!723452)) b!4259987))

(declare-fun m!4846937 () Bool)

(assert (=> b!4259987 m!4846937))

(declare-fun m!4846939 () Bool)

(assert (=> b!4259987 m!4846939))

(assert (=> d!1253418 d!1253474))

(assert (=> b!4259780 d!1253452))

(declare-fun d!1253476 () Bool)

(assert (=> d!1253476 (= (height!1866 (right!35346 t!4386)) (ite ((_ is Empty!14241) (right!35346 t!4386)) 0 (ite ((_ is Leaf!22009) (right!35346 t!4386)) 1 (cheight!14452 (right!35346 t!4386)))))))

(assert (=> b!4259780 d!1253476))

(declare-fun d!1253478 () Bool)

(declare-fun lt!1510439 () Int)

(assert (=> d!1253478 (>= lt!1510439 0)))

(declare-fun e!2645560 () Int)

(assert (=> d!1253478 (= lt!1510439 e!2645560)))

(declare-fun c!723453 () Bool)

(assert (=> d!1253478 (= c!723453 ((_ is Nil!47235) lt!1510428))))

(assert (=> d!1253478 (= (size!34592 lt!1510428) lt!1510439)))

(declare-fun b!4259988 () Bool)

(assert (=> b!4259988 (= e!2645560 0)))

(declare-fun b!4259989 () Bool)

(assert (=> b!4259989 (= e!2645560 (+ 1 (size!34592 (t!353134 lt!1510428))))))

(assert (= (and d!1253478 c!723453) b!4259988))

(assert (= (and d!1253478 (not c!723453)) b!4259989))

(declare-fun m!4846941 () Bool)

(assert (=> b!4259989 m!4846941))

(assert (=> d!1253434 d!1253478))

(declare-fun d!1253480 () Bool)

(declare-fun lt!1510442 () Int)

(assert (=> d!1253480 (>= lt!1510442 0)))

(declare-fun e!2645563 () Int)

(assert (=> d!1253480 (= lt!1510442 e!2645563)))

(declare-fun c!723456 () Bool)

(assert (=> d!1253480 (= c!723456 ((_ is Nil!47234) (++!12027 lt!1510403 lt!1510402)))))

(assert (=> d!1253480 (= (size!34591 (++!12027 lt!1510403 lt!1510402)) lt!1510442)))

(declare-fun b!4259994 () Bool)

(assert (=> b!4259994 (= e!2645563 0)))

(declare-fun b!4259995 () Bool)

(assert (=> b!4259995 (= e!2645563 (+ 1 (size!34591 (t!353133 (++!12027 lt!1510403 lt!1510402)))))))

(assert (= (and d!1253480 c!723456) b!4259994))

(assert (= (and d!1253480 (not c!723456)) b!4259995))

(declare-fun m!4846943 () Bool)

(assert (=> b!4259995 m!4846943))

(assert (=> d!1253434 d!1253480))

(declare-fun b!4259996 () Bool)

(declare-fun res!1751106 () Bool)

(declare-fun e!2645565 () Bool)

(assert (=> b!4259996 (=> (not res!1751106) (not e!2645565))))

(assert (=> b!4259996 (= res!1751106 (isBalanced!3800 (right!35346 (left!35016 t!4386))))))

(declare-fun b!4259997 () Bool)

(declare-fun e!2645564 () Bool)

(assert (=> b!4259997 (= e!2645564 e!2645565)))

(declare-fun res!1751109 () Bool)

(assert (=> b!4259997 (=> (not res!1751109) (not e!2645565))))

(assert (=> b!4259997 (= res!1751109 (<= (- 1) (- (height!1866 (left!35016 (left!35016 t!4386))) (height!1866 (right!35346 (left!35016 t!4386))))))))

(declare-fun b!4259999 () Bool)

(declare-fun res!1751107 () Bool)

(assert (=> b!4259999 (=> (not res!1751107) (not e!2645565))))

(assert (=> b!4259999 (= res!1751107 (isBalanced!3800 (left!35016 (left!35016 t!4386))))))

(declare-fun b!4260000 () Bool)

(declare-fun res!1751110 () Bool)

(assert (=> b!4260000 (=> (not res!1751110) (not e!2645565))))

(assert (=> b!4260000 (= res!1751110 (not (isEmpty!27974 (left!35016 (left!35016 t!4386)))))))

(declare-fun b!4260001 () Bool)

(declare-fun res!1751105 () Bool)

(assert (=> b!4260001 (=> (not res!1751105) (not e!2645565))))

(assert (=> b!4260001 (= res!1751105 (<= (- (height!1866 (left!35016 (left!35016 t!4386))) (height!1866 (right!35346 (left!35016 t!4386)))) 1))))

(declare-fun b!4259998 () Bool)

(assert (=> b!4259998 (= e!2645565 (not (isEmpty!27974 (right!35346 (left!35016 t!4386)))))))

(declare-fun d!1253482 () Bool)

(declare-fun res!1751108 () Bool)

(assert (=> d!1253482 (=> res!1751108 e!2645564)))

(assert (=> d!1253482 (= res!1751108 (not ((_ is Node!14241) (left!35016 t!4386))))))

(assert (=> d!1253482 (= (isBalanced!3800 (left!35016 t!4386)) e!2645564)))

(assert (= (and d!1253482 (not res!1751108)) b!4259997))

(assert (= (and b!4259997 res!1751109) b!4260001))

(assert (= (and b!4260001 res!1751105) b!4259999))

(assert (= (and b!4259999 res!1751107) b!4259996))

(assert (= (and b!4259996 res!1751106) b!4260000))

(assert (= (and b!4260000 res!1751110) b!4259998))

(declare-fun m!4846945 () Bool)

(assert (=> b!4259998 m!4846945))

(declare-fun m!4846947 () Bool)

(assert (=> b!4259996 m!4846947))

(assert (=> b!4260001 m!4846911))

(assert (=> b!4260001 m!4846913))

(declare-fun m!4846949 () Bool)

(assert (=> b!4260000 m!4846949))

(declare-fun m!4846951 () Bool)

(assert (=> b!4259999 m!4846951))

(assert (=> b!4259997 m!4846911))

(assert (=> b!4259997 m!4846913))

(assert (=> b!4259778 d!1253482))

(declare-fun d!1253484 () Bool)

(declare-fun lt!1510445 () Bool)

(declare-fun isEmpty!27976 (List!47358) Bool)

(assert (=> d!1253484 (= lt!1510445 (isEmpty!27976 (list!17054 (left!35016 t!4386))))))

(assert (=> d!1253484 (= lt!1510445 (= (size!34593 (left!35016 t!4386)) 0))))

(assert (=> d!1253484 (= (isEmpty!27974 (left!35016 t!4386)) lt!1510445)))

(declare-fun bs!598998 () Bool)

(assert (= bs!598998 d!1253484))

(assert (=> bs!598998 m!4846679))

(assert (=> bs!598998 m!4846679))

(declare-fun m!4846953 () Bool)

(assert (=> bs!598998 m!4846953))

(declare-fun m!4846955 () Bool)

(assert (=> bs!598998 m!4846955))

(assert (=> b!4259779 d!1253484))

(declare-fun d!1253486 () Bool)

(declare-fun res!1751115 () Bool)

(declare-fun e!2645568 () Bool)

(assert (=> d!1253486 (=> (not res!1751115) (not e!2645568))))

(assert (=> d!1253486 (= res!1751115 (<= (size!34591 (list!17056 (xs!17547 (right!35346 t!4386)))) 512))))

(assert (=> d!1253486 (= (inv!62129 (right!35346 t!4386)) e!2645568)))

(declare-fun b!4260006 () Bool)

(declare-fun res!1751116 () Bool)

(assert (=> b!4260006 (=> (not res!1751116) (not e!2645568))))

(assert (=> b!4260006 (= res!1751116 (= (csize!28713 (right!35346 t!4386)) (size!34591 (list!17056 (xs!17547 (right!35346 t!4386))))))))

(declare-fun b!4260007 () Bool)

(assert (=> b!4260007 (= e!2645568 (and (> (csize!28713 (right!35346 t!4386)) 0) (<= (csize!28713 (right!35346 t!4386)) 512)))))

(assert (= (and d!1253486 res!1751115) b!4260006))

(assert (= (and b!4260006 res!1751116) b!4260007))

(assert (=> d!1253486 m!4846839))

(assert (=> d!1253486 m!4846839))

(declare-fun m!4846957 () Bool)

(assert (=> d!1253486 m!4846957))

(assert (=> b!4260006 m!4846839))

(assert (=> b!4260006 m!4846839))

(assert (=> b!4260006 m!4846957))

(assert (=> b!4259921 d!1253486))

(declare-fun d!1253488 () Bool)

(assert (=> d!1253488 (= ($colon$colon!629 (map!9663 (t!353133 lt!1510403) f!428) (dynLambda!20217 f!428 (h!52654 lt!1510403))) (Cons!47235 (dynLambda!20217 f!428 (h!52654 lt!1510403)) (map!9663 (t!353133 lt!1510403) f!428)))))

(assert (=> b!4259885 d!1253488))

(declare-fun d!1253490 () Bool)

(declare-fun lt!1510446 () List!47359)

(assert (=> d!1253490 (= (size!34592 lt!1510446) (size!34591 (t!353133 lt!1510403)))))

(declare-fun e!2645569 () List!47359)

(assert (=> d!1253490 (= lt!1510446 e!2645569)))

(declare-fun c!723457 () Bool)

(assert (=> d!1253490 (= c!723457 ((_ is Nil!47234) (t!353133 lt!1510403)))))

(assert (=> d!1253490 (= (map!9663 (t!353133 lt!1510403) f!428) lt!1510446)))

(declare-fun b!4260008 () Bool)

(assert (=> b!4260008 (= e!2645569 Nil!47235)))

(declare-fun b!4260009 () Bool)

(assert (=> b!4260009 (= e!2645569 ($colon$colon!629 (map!9663 (t!353133 (t!353133 lt!1510403)) f!428) (dynLambda!20217 f!428 (h!52654 (t!353133 lt!1510403)))))))

(assert (= (and d!1253490 c!723457) b!4260008))

(assert (= (and d!1253490 (not c!723457)) b!4260009))

(declare-fun b_lambda!125651 () Bool)

(assert (=> (not b_lambda!125651) (not b!4260009)))

(declare-fun t!353156 () Bool)

(declare-fun tb!256863 () Bool)

(assert (=> (and start!408194 (= f!428 f!428) t!353156) tb!256863))

(declare-fun result!313416 () Bool)

(assert (=> tb!256863 (= result!313416 tp_is_empty!22865)))

(assert (=> b!4260009 t!353156))

(declare-fun b_and!337665 () Bool)

(assert (= b_and!337663 (and (=> t!353156 result!313416) b_and!337665)))

(declare-fun m!4846959 () Bool)

(assert (=> d!1253490 m!4846959))

(declare-fun m!4846961 () Bool)

(assert (=> d!1253490 m!4846961))

(declare-fun m!4846963 () Bool)

(assert (=> b!4260009 m!4846963))

(declare-fun m!4846965 () Bool)

(assert (=> b!4260009 m!4846965))

(assert (=> b!4260009 m!4846963))

(assert (=> b!4260009 m!4846965))

(declare-fun m!4846967 () Bool)

(assert (=> b!4260009 m!4846967))

(assert (=> b!4259885 d!1253490))

(declare-fun d!1253492 () Bool)

(declare-fun lt!1510447 () Bool)

(assert (=> d!1253492 (= lt!1510447 (isEmpty!27976 (list!17054 (right!35346 t!4386))))))

(assert (=> d!1253492 (= lt!1510447 (= (size!34593 (right!35346 t!4386)) 0))))

(assert (=> d!1253492 (= (isEmpty!27974 (right!35346 t!4386)) lt!1510447)))

(declare-fun bs!598999 () Bool)

(assert (= bs!598999 d!1253492))

(assert (=> bs!598999 m!4846685))

(assert (=> bs!598999 m!4846685))

(declare-fun m!4846969 () Bool)

(assert (=> bs!598999 m!4846969))

(declare-fun m!4846971 () Bool)

(assert (=> bs!598999 m!4846971))

(assert (=> b!4259777 d!1253492))

(declare-fun d!1253494 () Bool)

(declare-fun res!1751117 () Bool)

(declare-fun e!2645570 () Bool)

(assert (=> d!1253494 (=> (not res!1751117) (not e!2645570))))

(assert (=> d!1253494 (= res!1751117 (= (csize!28712 (right!35346 t!4386)) (+ (size!34593 (left!35016 (right!35346 t!4386))) (size!34593 (right!35346 (right!35346 t!4386))))))))

(assert (=> d!1253494 (= (inv!62128 (right!35346 t!4386)) e!2645570)))

(declare-fun b!4260010 () Bool)

(declare-fun res!1751118 () Bool)

(assert (=> b!4260010 (=> (not res!1751118) (not e!2645570))))

(assert (=> b!4260010 (= res!1751118 (and (not (= (left!35016 (right!35346 t!4386)) Empty!14241)) (not (= (right!35346 (right!35346 t!4386)) Empty!14241))))))

(declare-fun b!4260011 () Bool)

(declare-fun res!1751119 () Bool)

(assert (=> b!4260011 (=> (not res!1751119) (not e!2645570))))

(assert (=> b!4260011 (= res!1751119 (= (cheight!14452 (right!35346 t!4386)) (+ (max!0 (height!1866 (left!35016 (right!35346 t!4386))) (height!1866 (right!35346 (right!35346 t!4386)))) 1)))))

(declare-fun b!4260012 () Bool)

(assert (=> b!4260012 (= e!2645570 (<= 0 (cheight!14452 (right!35346 t!4386))))))

(assert (= (and d!1253494 res!1751117) b!4260010))

(assert (= (and b!4260010 res!1751118) b!4260011))

(assert (= (and b!4260011 res!1751119) b!4260012))

(declare-fun m!4846973 () Bool)

(assert (=> d!1253494 m!4846973))

(declare-fun m!4846975 () Bool)

(assert (=> d!1253494 m!4846975))

(declare-fun m!4846977 () Bool)

(assert (=> b!4260011 m!4846977))

(declare-fun m!4846979 () Bool)

(assert (=> b!4260011 m!4846979))

(assert (=> b!4260011 m!4846977))

(assert (=> b!4260011 m!4846979))

(declare-fun m!4846981 () Bool)

(assert (=> b!4260011 m!4846981))

(assert (=> b!4259919 d!1253494))

(declare-fun d!1253496 () Bool)

(declare-fun lt!1510448 () Int)

(assert (=> d!1253496 (>= lt!1510448 0)))

(declare-fun e!2645571 () Int)

(assert (=> d!1253496 (= lt!1510448 e!2645571)))

(declare-fun c!723458 () Bool)

(assert (=> d!1253496 (= c!723458 ((_ is Nil!47235) lt!1510427))))

(assert (=> d!1253496 (= (size!34592 lt!1510427) lt!1510448)))

(declare-fun b!4260013 () Bool)

(assert (=> b!4260013 (= e!2645571 0)))

(declare-fun b!4260014 () Bool)

(assert (=> b!4260014 (= e!2645571 (+ 1 (size!34592 (t!353134 lt!1510427))))))

(assert (= (and d!1253496 c!723458) b!4260013))

(assert (= (and d!1253496 (not c!723458)) b!4260014))

(declare-fun m!4846983 () Bool)

(assert (=> b!4260014 m!4846983))

(assert (=> d!1253426 d!1253496))

(declare-fun d!1253498 () Bool)

(declare-fun lt!1510449 () Int)

(assert (=> d!1253498 (>= lt!1510449 0)))

(declare-fun e!2645572 () Int)

(assert (=> d!1253498 (= lt!1510449 e!2645572)))

(declare-fun c!723459 () Bool)

(assert (=> d!1253498 (= c!723459 ((_ is Nil!47234) lt!1510402))))

(assert (=> d!1253498 (= (size!34591 lt!1510402) lt!1510449)))

(declare-fun b!4260015 () Bool)

(assert (=> b!4260015 (= e!2645572 0)))

(declare-fun b!4260016 () Bool)

(assert (=> b!4260016 (= e!2645572 (+ 1 (size!34591 (t!353133 lt!1510402))))))

(assert (= (and d!1253498 c!723459) b!4260015))

(assert (= (and d!1253498 (not c!723459)) b!4260016))

(declare-fun m!4846985 () Bool)

(assert (=> b!4260016 m!4846985))

(assert (=> d!1253426 d!1253498))

(declare-fun d!1253500 () Bool)

(declare-fun lt!1510450 () Int)

(assert (=> d!1253500 (>= lt!1510450 0)))

(declare-fun e!2645573 () Int)

(assert (=> d!1253500 (= lt!1510450 e!2645573)))

(declare-fun c!723460 () Bool)

(assert (=> d!1253500 (= c!723460 ((_ is Nil!47234) (innerList!14301 (xs!17547 t!4386))))))

(assert (=> d!1253500 (= (size!34591 (innerList!14301 (xs!17547 t!4386))) lt!1510450)))

(declare-fun b!4260017 () Bool)

(assert (=> b!4260017 (= e!2645573 0)))

(declare-fun b!4260018 () Bool)

(assert (=> b!4260018 (= e!2645573 (+ 1 (size!34591 (t!353133 (innerList!14301 (xs!17547 t!4386))))))))

(assert (= (and d!1253500 c!723460) b!4260017))

(assert (= (and d!1253500 (not c!723460)) b!4260018))

(declare-fun m!4846987 () Bool)

(assert (=> b!4260018 m!4846987))

(assert (=> d!1253412 d!1253500))

(declare-fun d!1253504 () Bool)

(declare-fun lt!1510451 () Int)

(assert (=> d!1253504 (>= lt!1510451 0)))

(declare-fun e!2645574 () Int)

(assert (=> d!1253504 (= lt!1510451 e!2645574)))

(declare-fun c!723461 () Bool)

(assert (=> d!1253504 (= c!723461 ((_ is Nil!47234) lt!1510416))))

(assert (=> d!1253504 (= (size!34591 lt!1510416) lt!1510451)))

(declare-fun b!4260019 () Bool)

(assert (=> b!4260019 (= e!2645574 0)))

(declare-fun b!4260020 () Bool)

(assert (=> b!4260020 (= e!2645574 (+ 1 (size!34591 (t!353133 lt!1510416))))))

(assert (= (and d!1253504 c!723461) b!4260019))

(assert (= (and d!1253504 (not c!723461)) b!4260020))

(declare-fun m!4846989 () Bool)

(assert (=> b!4260020 m!4846989))

(assert (=> b!4259822 d!1253504))

(declare-fun d!1253506 () Bool)

(declare-fun lt!1510452 () Int)

(assert (=> d!1253506 (>= lt!1510452 0)))

(declare-fun e!2645575 () Int)

(assert (=> d!1253506 (= lt!1510452 e!2645575)))

(declare-fun c!723462 () Bool)

(assert (=> d!1253506 (= c!723462 ((_ is Nil!47234) lt!1510403))))

(assert (=> d!1253506 (= (size!34591 lt!1510403) lt!1510452)))

(declare-fun b!4260021 () Bool)

(assert (=> b!4260021 (= e!2645575 0)))

(declare-fun b!4260022 () Bool)

(assert (=> b!4260022 (= e!2645575 (+ 1 (size!34591 (t!353133 lt!1510403))))))

(assert (= (and d!1253506 c!723462) b!4260021))

(assert (= (and d!1253506 (not c!723462)) b!4260022))

(assert (=> b!4260022 m!4846961))

(assert (=> b!4259822 d!1253506))

(assert (=> b!4259822 d!1253498))

(assert (=> b!4259776 d!1253452))

(assert (=> b!4259776 d!1253476))

(declare-fun b!4260023 () Bool)

(declare-fun res!1751121 () Bool)

(declare-fun e!2645577 () Bool)

(assert (=> b!4260023 (=> (not res!1751121) (not e!2645577))))

(assert (=> b!4260023 (= res!1751121 (isBalanced!3800 (right!35346 (right!35346 t!4386))))))

(declare-fun b!4260024 () Bool)

(declare-fun e!2645576 () Bool)

(assert (=> b!4260024 (= e!2645576 e!2645577)))

(declare-fun res!1751124 () Bool)

(assert (=> b!4260024 (=> (not res!1751124) (not e!2645577))))

(assert (=> b!4260024 (= res!1751124 (<= (- 1) (- (height!1866 (left!35016 (right!35346 t!4386))) (height!1866 (right!35346 (right!35346 t!4386))))))))

(declare-fun b!4260026 () Bool)

(declare-fun res!1751122 () Bool)

(assert (=> b!4260026 (=> (not res!1751122) (not e!2645577))))

(assert (=> b!4260026 (= res!1751122 (isBalanced!3800 (left!35016 (right!35346 t!4386))))))

(declare-fun b!4260027 () Bool)

(declare-fun res!1751125 () Bool)

(assert (=> b!4260027 (=> (not res!1751125) (not e!2645577))))

(assert (=> b!4260027 (= res!1751125 (not (isEmpty!27974 (left!35016 (right!35346 t!4386)))))))

(declare-fun b!4260028 () Bool)

(declare-fun res!1751120 () Bool)

(assert (=> b!4260028 (=> (not res!1751120) (not e!2645577))))

(assert (=> b!4260028 (= res!1751120 (<= (- (height!1866 (left!35016 (right!35346 t!4386))) (height!1866 (right!35346 (right!35346 t!4386)))) 1))))

(declare-fun b!4260025 () Bool)

(assert (=> b!4260025 (= e!2645577 (not (isEmpty!27974 (right!35346 (right!35346 t!4386)))))))

(declare-fun d!1253508 () Bool)

(declare-fun res!1751123 () Bool)

(assert (=> d!1253508 (=> res!1751123 e!2645576)))

(assert (=> d!1253508 (= res!1751123 (not ((_ is Node!14241) (right!35346 t!4386))))))

(assert (=> d!1253508 (= (isBalanced!3800 (right!35346 t!4386)) e!2645576)))

(assert (= (and d!1253508 (not res!1751123)) b!4260024))

(assert (= (and b!4260024 res!1751124) b!4260028))

(assert (= (and b!4260028 res!1751120) b!4260026))

(assert (= (and b!4260026 res!1751122) b!4260023))

(assert (= (and b!4260023 res!1751121) b!4260027))

(assert (= (and b!4260027 res!1751125) b!4260025))

(declare-fun m!4846991 () Bool)

(assert (=> b!4260025 m!4846991))

(declare-fun m!4846993 () Bool)

(assert (=> b!4260023 m!4846993))

(assert (=> b!4260028 m!4846977))

(assert (=> b!4260028 m!4846979))

(declare-fun m!4846995 () Bool)

(assert (=> b!4260027 m!4846995))

(declare-fun m!4846997 () Bool)

(assert (=> b!4260026 m!4846997))

(assert (=> b!4260024 m!4846977))

(assert (=> b!4260024 m!4846979))

(assert (=> b!4259775 d!1253508))

(declare-fun b!4260031 () Bool)

(declare-fun res!1751127 () Bool)

(declare-fun e!2645578 () Bool)

(assert (=> b!4260031 (=> (not res!1751127) (not e!2645578))))

(declare-fun lt!1510453 () List!47358)

(assert (=> b!4260031 (= res!1751127 (= (size!34591 lt!1510453) (+ (size!34591 (t!353133 lt!1510403)) (size!34591 lt!1510402))))))

(declare-fun d!1253510 () Bool)

(assert (=> d!1253510 e!2645578))

(declare-fun res!1751126 () Bool)

(assert (=> d!1253510 (=> (not res!1751126) (not e!2645578))))

(assert (=> d!1253510 (= res!1751126 (= (content!7437 lt!1510453) ((_ map or) (content!7437 (t!353133 lt!1510403)) (content!7437 lt!1510402))))))

(declare-fun e!2645579 () List!47358)

(assert (=> d!1253510 (= lt!1510453 e!2645579)))

(declare-fun c!723463 () Bool)

(assert (=> d!1253510 (= c!723463 ((_ is Nil!47234) (t!353133 lt!1510403)))))

(assert (=> d!1253510 (= (++!12027 (t!353133 lt!1510403) lt!1510402) lt!1510453)))

(declare-fun b!4260029 () Bool)

(assert (=> b!4260029 (= e!2645579 lt!1510402)))

(declare-fun b!4260030 () Bool)

(assert (=> b!4260030 (= e!2645579 (Cons!47234 (h!52654 (t!353133 lt!1510403)) (++!12027 (t!353133 (t!353133 lt!1510403)) lt!1510402)))))

(declare-fun b!4260032 () Bool)

(assert (=> b!4260032 (= e!2645578 (or (not (= lt!1510402 Nil!47234)) (= lt!1510453 (t!353133 lt!1510403))))))

(assert (= (and d!1253510 c!723463) b!4260029))

(assert (= (and d!1253510 (not c!723463)) b!4260030))

(assert (= (and d!1253510 res!1751126) b!4260031))

(assert (= (and b!4260031 res!1751127) b!4260032))

(declare-fun m!4846999 () Bool)

(assert (=> b!4260031 m!4846999))

(assert (=> b!4260031 m!4846961))

(assert (=> b!4260031 m!4846753))

(declare-fun m!4847001 () Bool)

(assert (=> d!1253510 m!4847001))

(declare-fun m!4847003 () Bool)

(assert (=> d!1253510 m!4847003))

(assert (=> d!1253510 m!4846759))

(declare-fun m!4847005 () Bool)

(assert (=> b!4260030 m!4847005))

(assert (=> b!4259821 d!1253510))

(assert (=> d!1253444 d!1253414))

(assert (=> d!1253444 d!1253418))

(assert (=> d!1253444 d!1253426))

(assert (=> d!1253444 d!1253434))

(assert (=> d!1253444 d!1253442))

(declare-fun d!1253512 () Bool)

(assert (=> d!1253512 (= (map!9663 (++!12027 lt!1510403 lt!1510402) f!428) (++!12028 (map!9663 lt!1510403 f!428) (map!9663 lt!1510402 f!428)))))

(assert (=> d!1253512 true))

(declare-fun _$82!101 () Unit!66131)

(assert (=> d!1253512 (= (choose!25982 lt!1510403 lt!1510402 f!428) _$82!101)))

(declare-fun bs!599001 () Bool)

(assert (= bs!599001 d!1253512))

(assert (=> bs!599001 m!4846675))

(assert (=> bs!599001 m!4846681))

(assert (=> bs!599001 m!4846681))

(assert (=> bs!599001 m!4846683))

(assert (=> bs!599001 m!4846671))

(assert (=> bs!599001 m!4846675))

(assert (=> bs!599001 m!4846677))

(assert (=> bs!599001 m!4846671))

(assert (=> d!1253444 d!1253512))

(declare-fun d!1253516 () Bool)

(declare-fun lt!1510454 () Int)

(assert (=> d!1253516 (>= lt!1510454 0)))

(declare-fun e!2645582 () Int)

(assert (=> d!1253516 (= lt!1510454 e!2645582)))

(declare-fun c!723464 () Bool)

(assert (=> d!1253516 (= c!723464 ((_ is Nil!47235) lt!1510429))))

(assert (=> d!1253516 (= (size!34592 lt!1510429) lt!1510454)))

(declare-fun b!4260039 () Bool)

(assert (=> b!4260039 (= e!2645582 0)))

(declare-fun b!4260040 () Bool)

(assert (=> b!4260040 (= e!2645582 (+ 1 (size!34592 (t!353134 lt!1510429))))))

(assert (= (and d!1253516 c!723464) b!4260039))

(assert (= (and d!1253516 (not c!723464)) b!4260040))

(declare-fun m!4847019 () Bool)

(assert (=> b!4260040 m!4847019))

(assert (=> d!1253442 d!1253516))

(assert (=> d!1253442 d!1253506))

(declare-fun d!1253520 () Bool)

(declare-fun res!1751134 () Bool)

(declare-fun e!2645583 () Bool)

(assert (=> d!1253520 (=> (not res!1751134) (not e!2645583))))

(assert (=> d!1253520 (= res!1751134 (<= (size!34591 (list!17056 (xs!17547 t!4386))) 512))))

(assert (=> d!1253520 (= (inv!62129 t!4386) e!2645583)))

(declare-fun b!4260041 () Bool)

(declare-fun res!1751135 () Bool)

(assert (=> b!4260041 (=> (not res!1751135) (not e!2645583))))

(assert (=> b!4260041 (= res!1751135 (= (csize!28713 t!4386) (size!34591 (list!17056 (xs!17547 t!4386)))))))

(declare-fun b!4260042 () Bool)

(assert (=> b!4260042 (= e!2645583 (and (> (csize!28713 t!4386) 0) (<= (csize!28713 t!4386) 512)))))

(assert (= (and d!1253520 res!1751134) b!4260041))

(assert (= (and b!4260041 res!1751135) b!4260042))

(declare-fun m!4847021 () Bool)

(assert (=> d!1253520 m!4847021))

(assert (=> d!1253520 m!4847021))

(declare-fun m!4847023 () Bool)

(assert (=> d!1253520 m!4847023))

(assert (=> b!4260041 m!4847021))

(assert (=> b!4260041 m!4847021))

(assert (=> b!4260041 m!4847023))

(assert (=> b!4259795 d!1253520))

(declare-fun d!1253522 () Bool)

(declare-fun c!723465 () Bool)

(assert (=> d!1253522 (= c!723465 ((_ is Node!14241) (left!35016 (left!35016 t!4386))))))

(declare-fun e!2645584 () Bool)

(assert (=> d!1253522 (= (inv!62126 (left!35016 (left!35016 t!4386))) e!2645584)))

(declare-fun b!4260043 () Bool)

(assert (=> b!4260043 (= e!2645584 (inv!62128 (left!35016 (left!35016 t!4386))))))

(declare-fun b!4260044 () Bool)

(declare-fun e!2645585 () Bool)

(assert (=> b!4260044 (= e!2645584 e!2645585)))

(declare-fun res!1751136 () Bool)

(assert (=> b!4260044 (= res!1751136 (not ((_ is Leaf!22009) (left!35016 (left!35016 t!4386)))))))

(assert (=> b!4260044 (=> res!1751136 e!2645585)))

(declare-fun b!4260045 () Bool)

(assert (=> b!4260045 (= e!2645585 (inv!62129 (left!35016 (left!35016 t!4386))))))

(assert (= (and d!1253522 c!723465) b!4260043))

(assert (= (and d!1253522 (not c!723465)) b!4260044))

(assert (= (and b!4260044 (not res!1751136)) b!4260045))

(declare-fun m!4847025 () Bool)

(assert (=> b!4260043 m!4847025))

(declare-fun m!4847027 () Bool)

(assert (=> b!4260045 m!4847027))

(assert (=> b!4259949 d!1253522))

(declare-fun d!1253524 () Bool)

(declare-fun c!723466 () Bool)

(assert (=> d!1253524 (= c!723466 ((_ is Node!14241) (right!35346 (left!35016 t!4386))))))

(declare-fun e!2645586 () Bool)

(assert (=> d!1253524 (= (inv!62126 (right!35346 (left!35016 t!4386))) e!2645586)))

(declare-fun b!4260046 () Bool)

(assert (=> b!4260046 (= e!2645586 (inv!62128 (right!35346 (left!35016 t!4386))))))

(declare-fun b!4260047 () Bool)

(declare-fun e!2645587 () Bool)

(assert (=> b!4260047 (= e!2645586 e!2645587)))

(declare-fun res!1751137 () Bool)

(assert (=> b!4260047 (= res!1751137 (not ((_ is Leaf!22009) (right!35346 (left!35016 t!4386)))))))

(assert (=> b!4260047 (=> res!1751137 e!2645587)))

(declare-fun b!4260048 () Bool)

(assert (=> b!4260048 (= e!2645587 (inv!62129 (right!35346 (left!35016 t!4386))))))

(assert (= (and d!1253524 c!723466) b!4260046))

(assert (= (and d!1253524 (not c!723466)) b!4260047))

(assert (= (and b!4260047 (not res!1751137)) b!4260048))

(declare-fun m!4847029 () Bool)

(assert (=> b!4260046 m!4847029))

(declare-fun m!4847031 () Bool)

(assert (=> b!4260048 m!4847031))

(assert (=> b!4259949 d!1253524))

(declare-fun d!1253526 () Bool)

(assert (=> d!1253526 (= (inv!62127 (xs!17547 (left!35016 t!4386))) (<= (size!34591 (innerList!14301 (xs!17547 (left!35016 t!4386)))) 2147483647))))

(declare-fun bs!599002 () Bool)

(assert (= bs!599002 d!1253526))

(declare-fun m!4847033 () Bool)

(assert (=> bs!599002 m!4847033))

(assert (=> b!4259950 d!1253526))

(declare-fun d!1253528 () Bool)

(declare-fun c!723467 () Bool)

(assert (=> d!1253528 (= c!723467 ((_ is Node!14241) (left!35016 (right!35346 t!4386))))))

(declare-fun e!2645588 () Bool)

(assert (=> d!1253528 (= (inv!62126 (left!35016 (right!35346 t!4386))) e!2645588)))

(declare-fun b!4260049 () Bool)

(assert (=> b!4260049 (= e!2645588 (inv!62128 (left!35016 (right!35346 t!4386))))))

(declare-fun b!4260050 () Bool)

(declare-fun e!2645589 () Bool)

(assert (=> b!4260050 (= e!2645588 e!2645589)))

(declare-fun res!1751138 () Bool)

(assert (=> b!4260050 (= res!1751138 (not ((_ is Leaf!22009) (left!35016 (right!35346 t!4386)))))))

(assert (=> b!4260050 (=> res!1751138 e!2645589)))

(declare-fun b!4260051 () Bool)

(assert (=> b!4260051 (= e!2645589 (inv!62129 (left!35016 (right!35346 t!4386))))))

(assert (= (and d!1253528 c!723467) b!4260049))

(assert (= (and d!1253528 (not c!723467)) b!4260050))

(assert (= (and b!4260050 (not res!1751138)) b!4260051))

(declare-fun m!4847035 () Bool)

(assert (=> b!4260049 m!4847035))

(declare-fun m!4847037 () Bool)

(assert (=> b!4260051 m!4847037))

(assert (=> b!4259952 d!1253528))

(declare-fun d!1253530 () Bool)

(declare-fun c!723468 () Bool)

(assert (=> d!1253530 (= c!723468 ((_ is Node!14241) (right!35346 (right!35346 t!4386))))))

(declare-fun e!2645590 () Bool)

(assert (=> d!1253530 (= (inv!62126 (right!35346 (right!35346 t!4386))) e!2645590)))

(declare-fun b!4260052 () Bool)

(assert (=> b!4260052 (= e!2645590 (inv!62128 (right!35346 (right!35346 t!4386))))))

(declare-fun b!4260054 () Bool)

(declare-fun e!2645591 () Bool)

(assert (=> b!4260054 (= e!2645590 e!2645591)))

(declare-fun res!1751139 () Bool)

(assert (=> b!4260054 (= res!1751139 (not ((_ is Leaf!22009) (right!35346 (right!35346 t!4386)))))))

(assert (=> b!4260054 (=> res!1751139 e!2645591)))

(declare-fun b!4260056 () Bool)

(assert (=> b!4260056 (= e!2645591 (inv!62129 (right!35346 (right!35346 t!4386))))))

(assert (= (and d!1253530 c!723468) b!4260052))

(assert (= (and d!1253530 (not c!723468)) b!4260054))

(assert (= (and b!4260054 (not res!1751139)) b!4260056))

(declare-fun m!4847039 () Bool)

(assert (=> b!4260052 m!4847039))

(declare-fun m!4847041 () Bool)

(assert (=> b!4260056 m!4847041))

(assert (=> b!4259952 d!1253530))

(declare-fun d!1253532 () Bool)

(assert (=> d!1253532 (= (inv!62127 (xs!17547 (right!35346 t!4386))) (<= (size!34591 (innerList!14301 (xs!17547 (right!35346 t!4386)))) 2147483647))))

(declare-fun bs!599003 () Bool)

(assert (= bs!599003 d!1253532))

(declare-fun m!4847043 () Bool)

(assert (=> bs!599003 m!4847043))

(assert (=> b!4259953 d!1253532))

(declare-fun d!1253534 () Bool)

(declare-fun res!1751140 () Bool)

(declare-fun e!2645594 () Bool)

(assert (=> d!1253534 (=> (not res!1751140) (not e!2645594))))

(assert (=> d!1253534 (= res!1751140 (= (csize!28712 t!4386) (+ (size!34593 (left!35016 t!4386)) (size!34593 (right!35346 t!4386)))))))

(assert (=> d!1253534 (= (inv!62128 t!4386) e!2645594)))

(declare-fun b!4260059 () Bool)

(declare-fun res!1751141 () Bool)

(assert (=> b!4260059 (=> (not res!1751141) (not e!2645594))))

(assert (=> b!4260059 (= res!1751141 (and (not (= (left!35016 t!4386) Empty!14241)) (not (= (right!35346 t!4386) Empty!14241))))))

(declare-fun b!4260060 () Bool)

(declare-fun res!1751142 () Bool)

(assert (=> b!4260060 (=> (not res!1751142) (not e!2645594))))

(assert (=> b!4260060 (= res!1751142 (= (cheight!14452 t!4386) (+ (max!0 (height!1866 (left!35016 t!4386)) (height!1866 (right!35346 t!4386))) 1)))))

(declare-fun b!4260061 () Bool)

(assert (=> b!4260061 (= e!2645594 (<= 0 (cheight!14452 t!4386)))))

(assert (= (and d!1253534 res!1751140) b!4260059))

(assert (= (and b!4260059 res!1751141) b!4260060))

(assert (= (and b!4260060 res!1751142) b!4260061))

(assert (=> d!1253534 m!4846955))

(assert (=> d!1253534 m!4846971))

(assert (=> b!4260060 m!4846687))

(assert (=> b!4260060 m!4846703))

(assert (=> b!4260060 m!4846687))

(assert (=> b!4260060 m!4846703))

(declare-fun m!4847045 () Bool)

(assert (=> b!4260060 m!4847045))

(assert (=> b!4259793 d!1253534))

(declare-fun d!1253536 () Bool)

(assert (=> d!1253536 (= ($colon$colon!629 (map!9663 (t!353133 (++!12027 lt!1510403 lt!1510402)) f!428) (dynLambda!20217 f!428 (h!52654 (++!12027 lt!1510403 lt!1510402)))) (Cons!47235 (dynLambda!20217 f!428 (h!52654 (++!12027 lt!1510403 lt!1510402))) (map!9663 (t!353133 (++!12027 lt!1510403 lt!1510402)) f!428)))))

(assert (=> b!4259863 d!1253536))

(declare-fun d!1253538 () Bool)

(declare-fun lt!1510457 () List!47359)

(assert (=> d!1253538 (= (size!34592 lt!1510457) (size!34591 (t!353133 (++!12027 lt!1510403 lt!1510402))))))

(declare-fun e!2645595 () List!47359)

(assert (=> d!1253538 (= lt!1510457 e!2645595)))

(declare-fun c!723471 () Bool)

(assert (=> d!1253538 (= c!723471 ((_ is Nil!47234) (t!353133 (++!12027 lt!1510403 lt!1510402))))))

(assert (=> d!1253538 (= (map!9663 (t!353133 (++!12027 lt!1510403 lt!1510402)) f!428) lt!1510457)))

(declare-fun b!4260062 () Bool)

(assert (=> b!4260062 (= e!2645595 Nil!47235)))

(declare-fun b!4260063 () Bool)

(assert (=> b!4260063 (= e!2645595 ($colon$colon!629 (map!9663 (t!353133 (t!353133 (++!12027 lt!1510403 lt!1510402))) f!428) (dynLambda!20217 f!428 (h!52654 (t!353133 (++!12027 lt!1510403 lt!1510402))))))))

(assert (= (and d!1253538 c!723471) b!4260062))

(assert (= (and d!1253538 (not c!723471)) b!4260063))

(declare-fun b_lambda!125653 () Bool)

(assert (=> (not b_lambda!125653) (not b!4260063)))

(declare-fun t!353158 () Bool)

(declare-fun tb!256865 () Bool)

(assert (=> (and start!408194 (= f!428 f!428) t!353158) tb!256865))

(declare-fun result!313418 () Bool)

(assert (=> tb!256865 (= result!313418 tp_is_empty!22865)))

(assert (=> b!4260063 t!353158))

(declare-fun b_and!337667 () Bool)

(assert (= b_and!337665 (and (=> t!353158 result!313418) b_and!337667)))

(declare-fun m!4847047 () Bool)

(assert (=> d!1253538 m!4847047))

(assert (=> d!1253538 m!4846943))

(declare-fun m!4847049 () Bool)

(assert (=> b!4260063 m!4847049))

(declare-fun m!4847053 () Bool)

(assert (=> b!4260063 m!4847053))

(assert (=> b!4260063 m!4847049))

(assert (=> b!4260063 m!4847053))

(declare-fun m!4847055 () Bool)

(assert (=> b!4260063 m!4847055))

(assert (=> b!4259863 d!1253538))

(declare-fun b!4260068 () Bool)

(declare-fun res!1751144 () Bool)

(declare-fun e!2645597 () Bool)

(assert (=> b!4260068 (=> (not res!1751144) (not e!2645597))))

(declare-fun lt!1510459 () List!47358)

(assert (=> b!4260068 (= res!1751144 (= (size!34591 lt!1510459) (+ (size!34591 (list!17054 (left!35016 (left!35016 t!4386)))) (size!34591 (list!17054 (right!35346 (left!35016 t!4386)))))))))

(declare-fun d!1253542 () Bool)

(assert (=> d!1253542 e!2645597))

(declare-fun res!1751143 () Bool)

(assert (=> d!1253542 (=> (not res!1751143) (not e!2645597))))

(assert (=> d!1253542 (= res!1751143 (= (content!7437 lt!1510459) ((_ map or) (content!7437 (list!17054 (left!35016 (left!35016 t!4386)))) (content!7437 (list!17054 (right!35346 (left!35016 t!4386)))))))))

(declare-fun e!2645598 () List!47358)

(assert (=> d!1253542 (= lt!1510459 e!2645598)))

(declare-fun c!723473 () Bool)

(assert (=> d!1253542 (= c!723473 ((_ is Nil!47234) (list!17054 (left!35016 (left!35016 t!4386)))))))

(assert (=> d!1253542 (= (++!12027 (list!17054 (left!35016 (left!35016 t!4386))) (list!17054 (right!35346 (left!35016 t!4386)))) lt!1510459)))

(declare-fun b!4260066 () Bool)

(assert (=> b!4260066 (= e!2645598 (list!17054 (right!35346 (left!35016 t!4386))))))

(declare-fun b!4260067 () Bool)

(assert (=> b!4260067 (= e!2645598 (Cons!47234 (h!52654 (list!17054 (left!35016 (left!35016 t!4386)))) (++!12027 (t!353133 (list!17054 (left!35016 (left!35016 t!4386)))) (list!17054 (right!35346 (left!35016 t!4386))))))))

(declare-fun b!4260069 () Bool)

(assert (=> b!4260069 (= e!2645597 (or (not (= (list!17054 (right!35346 (left!35016 t!4386))) Nil!47234)) (= lt!1510459 (list!17054 (left!35016 (left!35016 t!4386))))))))

(assert (= (and d!1253542 c!723473) b!4260066))

(assert (= (and d!1253542 (not c!723473)) b!4260067))

(assert (= (and d!1253542 res!1751143) b!4260068))

(assert (= (and b!4260068 res!1751144) b!4260069))

(declare-fun m!4847057 () Bool)

(assert (=> b!4260068 m!4847057))

(assert (=> b!4260068 m!4846861))

(declare-fun m!4847059 () Bool)

(assert (=> b!4260068 m!4847059))

(assert (=> b!4260068 m!4846865))

(declare-fun m!4847061 () Bool)

(assert (=> b!4260068 m!4847061))

(declare-fun m!4847063 () Bool)

(assert (=> d!1253542 m!4847063))

(assert (=> d!1253542 m!4846861))

(declare-fun m!4847065 () Bool)

(assert (=> d!1253542 m!4847065))

(assert (=> d!1253542 m!4846865))

(declare-fun m!4847067 () Bool)

(assert (=> d!1253542 m!4847067))

(assert (=> b!4260067 m!4846865))

(declare-fun m!4847069 () Bool)

(assert (=> b!4260067 m!4847069))

(assert (=> b!4259907 d!1253542))

(declare-fun b!4260070 () Bool)

(declare-fun e!2645599 () List!47358)

(assert (=> b!4260070 (= e!2645599 Nil!47234)))

(declare-fun b!4260073 () Bool)

(declare-fun e!2645600 () List!47358)

(assert (=> b!4260073 (= e!2645600 (++!12027 (list!17054 (left!35016 (left!35016 (left!35016 t!4386)))) (list!17054 (right!35346 (left!35016 (left!35016 t!4386))))))))

(declare-fun b!4260072 () Bool)

(assert (=> b!4260072 (= e!2645600 (list!17056 (xs!17547 (left!35016 (left!35016 t!4386)))))))

(declare-fun b!4260071 () Bool)

(assert (=> b!4260071 (= e!2645599 e!2645600)))

(declare-fun c!723475 () Bool)

(assert (=> b!4260071 (= c!723475 ((_ is Leaf!22009) (left!35016 (left!35016 t!4386))))))

(declare-fun d!1253544 () Bool)

(declare-fun c!723474 () Bool)

(assert (=> d!1253544 (= c!723474 ((_ is Empty!14241) (left!35016 (left!35016 t!4386))))))

(assert (=> d!1253544 (= (list!17054 (left!35016 (left!35016 t!4386))) e!2645599)))

(assert (= (and d!1253544 c!723474) b!4260070))

(assert (= (and d!1253544 (not c!723474)) b!4260071))

(assert (= (and b!4260071 c!723475) b!4260072))

(assert (= (and b!4260071 (not c!723475)) b!4260073))

(declare-fun m!4847071 () Bool)

(assert (=> b!4260073 m!4847071))

(declare-fun m!4847073 () Bool)

(assert (=> b!4260073 m!4847073))

(assert (=> b!4260073 m!4847071))

(assert (=> b!4260073 m!4847073))

(declare-fun m!4847075 () Bool)

(assert (=> b!4260073 m!4847075))

(declare-fun m!4847077 () Bool)

(assert (=> b!4260072 m!4847077))

(assert (=> b!4259907 d!1253544))

(declare-fun b!4260078 () Bool)

(declare-fun e!2645603 () List!47358)

(assert (=> b!4260078 (= e!2645603 Nil!47234)))

(declare-fun b!4260081 () Bool)

(declare-fun e!2645604 () List!47358)

(assert (=> b!4260081 (= e!2645604 (++!12027 (list!17054 (left!35016 (right!35346 (left!35016 t!4386)))) (list!17054 (right!35346 (right!35346 (left!35016 t!4386))))))))

(declare-fun b!4260080 () Bool)

(assert (=> b!4260080 (= e!2645604 (list!17056 (xs!17547 (right!35346 (left!35016 t!4386)))))))

(declare-fun b!4260079 () Bool)

(assert (=> b!4260079 (= e!2645603 e!2645604)))

(declare-fun c!723479 () Bool)

(assert (=> b!4260079 (= c!723479 ((_ is Leaf!22009) (right!35346 (left!35016 t!4386))))))

(declare-fun d!1253546 () Bool)

(declare-fun c!723478 () Bool)

(assert (=> d!1253546 (= c!723478 ((_ is Empty!14241) (right!35346 (left!35016 t!4386))))))

(assert (=> d!1253546 (= (list!17054 (right!35346 (left!35016 t!4386))) e!2645603)))

(assert (= (and d!1253546 c!723478) b!4260078))

(assert (= (and d!1253546 (not c!723478)) b!4260079))

(assert (= (and b!4260079 c!723479) b!4260080))

(assert (= (and b!4260079 (not c!723479)) b!4260081))

(declare-fun m!4847079 () Bool)

(assert (=> b!4260081 m!4847079))

(declare-fun m!4847081 () Bool)

(assert (=> b!4260081 m!4847081))

(assert (=> b!4260081 m!4847079))

(assert (=> b!4260081 m!4847081))

(declare-fun m!4847083 () Bool)

(assert (=> b!4260081 m!4847083))

(declare-fun m!4847085 () Bool)

(assert (=> b!4260080 m!4847085))

(assert (=> b!4259907 d!1253546))

(declare-fun d!1253548 () Bool)

(assert (=> d!1253548 (= (list!17056 (xs!17547 (left!35016 t!4386))) (innerList!14301 (xs!17547 (left!35016 t!4386))))))

(assert (=> b!4259906 d!1253548))

(declare-fun d!1253550 () Bool)

(assert (=> d!1253550 (= ($colon$colon!629 (map!9663 (t!353133 lt!1510402) f!428) (dynLambda!20217 f!428 (h!52654 lt!1510402))) (Cons!47235 (dynLambda!20217 f!428 (h!52654 lt!1510402)) (map!9663 (t!353133 lt!1510402) f!428)))))

(assert (=> b!4259855 d!1253550))

(declare-fun d!1253552 () Bool)

(declare-fun lt!1510462 () List!47359)

(assert (=> d!1253552 (= (size!34592 lt!1510462) (size!34591 (t!353133 lt!1510402)))))

(declare-fun e!2645605 () List!47359)

(assert (=> d!1253552 (= lt!1510462 e!2645605)))

(declare-fun c!723480 () Bool)

(assert (=> d!1253552 (= c!723480 ((_ is Nil!47234) (t!353133 lt!1510402)))))

(assert (=> d!1253552 (= (map!9663 (t!353133 lt!1510402) f!428) lt!1510462)))

(declare-fun b!4260082 () Bool)

(assert (=> b!4260082 (= e!2645605 Nil!47235)))

(declare-fun b!4260083 () Bool)

(assert (=> b!4260083 (= e!2645605 ($colon$colon!629 (map!9663 (t!353133 (t!353133 lt!1510402)) f!428) (dynLambda!20217 f!428 (h!52654 (t!353133 lt!1510402)))))))

(assert (= (and d!1253552 c!723480) b!4260082))

(assert (= (and d!1253552 (not c!723480)) b!4260083))

(declare-fun b_lambda!125655 () Bool)

(assert (=> (not b_lambda!125655) (not b!4260083)))

(declare-fun t!353160 () Bool)

(declare-fun tb!256867 () Bool)

(assert (=> (and start!408194 (= f!428 f!428) t!353160) tb!256867))

(declare-fun result!313420 () Bool)

(assert (=> tb!256867 (= result!313420 tp_is_empty!22865)))

(assert (=> b!4260083 t!353160))

(declare-fun b_and!337669 () Bool)

(assert (= b_and!337667 (and (=> t!353160 result!313420) b_and!337669)))

(declare-fun m!4847087 () Bool)

(assert (=> d!1253552 m!4847087))

(assert (=> d!1253552 m!4846985))

(declare-fun m!4847091 () Bool)

(assert (=> b!4260083 m!4847091))

(declare-fun m!4847093 () Bool)

(assert (=> b!4260083 m!4847093))

(assert (=> b!4260083 m!4847091))

(assert (=> b!4260083 m!4847093))

(declare-fun m!4847095 () Bool)

(assert (=> b!4260083 m!4847095))

(assert (=> b!4259855 d!1253552))

(declare-fun d!1253556 () Bool)

(declare-fun c!723484 () Bool)

(assert (=> d!1253556 (= c!723484 ((_ is Nil!47234) lt!1510416))))

(declare-fun e!2645611 () (InoxSet T!79392))

(assert (=> d!1253556 (= (content!7437 lt!1510416) e!2645611)))

(declare-fun b!4260094 () Bool)

(assert (=> b!4260094 (= e!2645611 ((as const (Array T!79392 Bool)) false))))

(declare-fun b!4260095 () Bool)

(assert (=> b!4260095 (= e!2645611 ((_ map or) (store ((as const (Array T!79392 Bool)) false) (h!52654 lt!1510416) true) (content!7437 (t!353133 lt!1510416))))))

(assert (= (and d!1253556 c!723484) b!4260094))

(assert (= (and d!1253556 (not c!723484)) b!4260095))

(declare-fun m!4847097 () Bool)

(assert (=> b!4260095 m!4847097))

(declare-fun m!4847099 () Bool)

(assert (=> b!4260095 m!4847099))

(assert (=> d!1253414 d!1253556))

(declare-fun d!1253558 () Bool)

(declare-fun c!723485 () Bool)

(assert (=> d!1253558 (= c!723485 ((_ is Nil!47234) lt!1510403))))

(declare-fun e!2645612 () (InoxSet T!79392))

(assert (=> d!1253558 (= (content!7437 lt!1510403) e!2645612)))

(declare-fun b!4260096 () Bool)

(assert (=> b!4260096 (= e!2645612 ((as const (Array T!79392 Bool)) false))))

(declare-fun b!4260097 () Bool)

(assert (=> b!4260097 (= e!2645612 ((_ map or) (store ((as const (Array T!79392 Bool)) false) (h!52654 lt!1510403) true) (content!7437 (t!353133 lt!1510403))))))

(assert (= (and d!1253558 c!723485) b!4260096))

(assert (= (and d!1253558 (not c!723485)) b!4260097))

(declare-fun m!4847101 () Bool)

(assert (=> b!4260097 m!4847101))

(assert (=> b!4260097 m!4847003))

(assert (=> d!1253414 d!1253558))

(declare-fun d!1253560 () Bool)

(declare-fun c!723486 () Bool)

(assert (=> d!1253560 (= c!723486 ((_ is Nil!47234) lt!1510402))))

(declare-fun e!2645613 () (InoxSet T!79392))

(assert (=> d!1253560 (= (content!7437 lt!1510402) e!2645613)))

(declare-fun b!4260098 () Bool)

(assert (=> b!4260098 (= e!2645613 ((as const (Array T!79392 Bool)) false))))

(declare-fun b!4260099 () Bool)

(assert (=> b!4260099 (= e!2645613 ((_ map or) (store ((as const (Array T!79392 Bool)) false) (h!52654 lt!1510402) true) (content!7437 (t!353133 lt!1510402))))))

(assert (= (and d!1253560 c!723486) b!4260098))

(assert (= (and d!1253560 (not c!723486)) b!4260099))

(declare-fun m!4847103 () Bool)

(assert (=> b!4260099 m!4847103))

(declare-fun m!4847105 () Bool)

(assert (=> b!4260099 m!4847105))

(assert (=> d!1253414 d!1253560))

(declare-fun b!4260102 () Bool)

(declare-fun res!1751150 () Bool)

(declare-fun e!2645614 () Bool)

(assert (=> b!4260102 (=> (not res!1751150) (not e!2645614))))

(declare-fun lt!1510464 () List!47358)

(assert (=> b!4260102 (= res!1751150 (= (size!34591 lt!1510464) (+ (size!34591 (list!17054 (left!35016 (right!35346 t!4386)))) (size!34591 (list!17054 (right!35346 (right!35346 t!4386)))))))))

(declare-fun d!1253562 () Bool)

(assert (=> d!1253562 e!2645614))

(declare-fun res!1751149 () Bool)

(assert (=> d!1253562 (=> (not res!1751149) (not e!2645614))))

(assert (=> d!1253562 (= res!1751149 (= (content!7437 lt!1510464) ((_ map or) (content!7437 (list!17054 (left!35016 (right!35346 t!4386)))) (content!7437 (list!17054 (right!35346 (right!35346 t!4386)))))))))

(declare-fun e!2645615 () List!47358)

(assert (=> d!1253562 (= lt!1510464 e!2645615)))

(declare-fun c!723487 () Bool)

(assert (=> d!1253562 (= c!723487 ((_ is Nil!47234) (list!17054 (left!35016 (right!35346 t!4386)))))))

(assert (=> d!1253562 (= (++!12027 (list!17054 (left!35016 (right!35346 t!4386))) (list!17054 (right!35346 (right!35346 t!4386)))) lt!1510464)))

(declare-fun b!4260100 () Bool)

(assert (=> b!4260100 (= e!2645615 (list!17054 (right!35346 (right!35346 t!4386))))))

(declare-fun b!4260101 () Bool)

(assert (=> b!4260101 (= e!2645615 (Cons!47234 (h!52654 (list!17054 (left!35016 (right!35346 t!4386)))) (++!12027 (t!353133 (list!17054 (left!35016 (right!35346 t!4386)))) (list!17054 (right!35346 (right!35346 t!4386))))))))

(declare-fun b!4260103 () Bool)

(assert (=> b!4260103 (= e!2645614 (or (not (= (list!17054 (right!35346 (right!35346 t!4386))) Nil!47234)) (= lt!1510464 (list!17054 (left!35016 (right!35346 t!4386))))))))

(assert (= (and d!1253562 c!723487) b!4260100))

(assert (= (and d!1253562 (not c!723487)) b!4260101))

(assert (= (and d!1253562 res!1751149) b!4260102))

(assert (= (and b!4260102 res!1751150) b!4260103))

(declare-fun m!4847107 () Bool)

(assert (=> b!4260102 m!4847107))

(assert (=> b!4260102 m!4846833))

(declare-fun m!4847109 () Bool)

(assert (=> b!4260102 m!4847109))

(assert (=> b!4260102 m!4846835))

(declare-fun m!4847111 () Bool)

(assert (=> b!4260102 m!4847111))

(declare-fun m!4847113 () Bool)

(assert (=> d!1253562 m!4847113))

(assert (=> d!1253562 m!4846833))

(declare-fun m!4847115 () Bool)

(assert (=> d!1253562 m!4847115))

(assert (=> d!1253562 m!4846835))

(declare-fun m!4847117 () Bool)

(assert (=> d!1253562 m!4847117))

(assert (=> b!4260101 m!4846835))

(declare-fun m!4847119 () Bool)

(assert (=> b!4260101 m!4847119))

(assert (=> b!4259883 d!1253562))

(declare-fun b!4260106 () Bool)

(declare-fun e!2645617 () List!47358)

(assert (=> b!4260106 (= e!2645617 Nil!47234)))

(declare-fun b!4260109 () Bool)

(declare-fun e!2645618 () List!47358)

(assert (=> b!4260109 (= e!2645618 (++!12027 (list!17054 (left!35016 (left!35016 (right!35346 t!4386)))) (list!17054 (right!35346 (left!35016 (right!35346 t!4386))))))))

(declare-fun b!4260108 () Bool)

(assert (=> b!4260108 (= e!2645618 (list!17056 (xs!17547 (left!35016 (right!35346 t!4386)))))))

(declare-fun b!4260107 () Bool)

(assert (=> b!4260107 (= e!2645617 e!2645618)))

(declare-fun c!723489 () Bool)

(assert (=> b!4260107 (= c!723489 ((_ is Leaf!22009) (left!35016 (right!35346 t!4386))))))

(declare-fun d!1253564 () Bool)

(declare-fun c!723488 () Bool)

(assert (=> d!1253564 (= c!723488 ((_ is Empty!14241) (left!35016 (right!35346 t!4386))))))

(assert (=> d!1253564 (= (list!17054 (left!35016 (right!35346 t!4386))) e!2645617)))

(assert (= (and d!1253564 c!723488) b!4260106))

(assert (= (and d!1253564 (not c!723488)) b!4260107))

(assert (= (and b!4260107 c!723489) b!4260108))

(assert (= (and b!4260107 (not c!723489)) b!4260109))

(declare-fun m!4847123 () Bool)

(assert (=> b!4260109 m!4847123))

(declare-fun m!4847125 () Bool)

(assert (=> b!4260109 m!4847125))

(assert (=> b!4260109 m!4847123))

(assert (=> b!4260109 m!4847125))

(declare-fun m!4847127 () Bool)

(assert (=> b!4260109 m!4847127))

(declare-fun m!4847129 () Bool)

(assert (=> b!4260108 m!4847129))

(assert (=> b!4259883 d!1253564))

(declare-fun b!4260110 () Bool)

(declare-fun e!2645619 () List!47358)

(assert (=> b!4260110 (= e!2645619 Nil!47234)))

(declare-fun b!4260113 () Bool)

(declare-fun e!2645620 () List!47358)

(assert (=> b!4260113 (= e!2645620 (++!12027 (list!17054 (left!35016 (right!35346 (right!35346 t!4386)))) (list!17054 (right!35346 (right!35346 (right!35346 t!4386))))))))

(declare-fun b!4260112 () Bool)

(assert (=> b!4260112 (= e!2645620 (list!17056 (xs!17547 (right!35346 (right!35346 t!4386)))))))

(declare-fun b!4260111 () Bool)

(assert (=> b!4260111 (= e!2645619 e!2645620)))

(declare-fun c!723491 () Bool)

(assert (=> b!4260111 (= c!723491 ((_ is Leaf!22009) (right!35346 (right!35346 t!4386))))))

(declare-fun d!1253568 () Bool)

(declare-fun c!723490 () Bool)

(assert (=> d!1253568 (= c!723490 ((_ is Empty!14241) (right!35346 (right!35346 t!4386))))))

(assert (=> d!1253568 (= (list!17054 (right!35346 (right!35346 t!4386))) e!2645619)))

(assert (= (and d!1253568 c!723490) b!4260110))

(assert (= (and d!1253568 (not c!723490)) b!4260111))

(assert (= (and b!4260111 c!723491) b!4260112))

(assert (= (and b!4260111 (not c!723491)) b!4260113))

(declare-fun m!4847131 () Bool)

(assert (=> b!4260113 m!4847131))

(declare-fun m!4847133 () Bool)

(assert (=> b!4260113 m!4847133))

(assert (=> b!4260113 m!4847131))

(assert (=> b!4260113 m!4847133))

(declare-fun m!4847135 () Bool)

(assert (=> b!4260113 m!4847135))

(declare-fun m!4847137 () Bool)

(assert (=> b!4260112 m!4847137))

(assert (=> b!4259883 d!1253568))

(assert (=> b!4259746 d!1253456))

(assert (=> b!4259746 d!1253458))

(declare-fun d!1253570 () Bool)

(declare-fun res!1751153 () Bool)

(declare-fun e!2645621 () Bool)

(assert (=> d!1253570 (=> (not res!1751153) (not e!2645621))))

(assert (=> d!1253570 (= res!1751153 (<= (size!34591 (list!17056 (xs!17547 (left!35016 t!4386)))) 512))))

(assert (=> d!1253570 (= (inv!62129 (left!35016 t!4386)) e!2645621)))

(declare-fun b!4260114 () Bool)

(declare-fun res!1751154 () Bool)

(assert (=> b!4260114 (=> (not res!1751154) (not e!2645621))))

(assert (=> b!4260114 (= res!1751154 (= (csize!28713 (left!35016 t!4386)) (size!34591 (list!17056 (xs!17547 (left!35016 t!4386))))))))

(declare-fun b!4260115 () Bool)

(assert (=> b!4260115 (= e!2645621 (and (> (csize!28713 (left!35016 t!4386)) 0) (<= (csize!28713 (left!35016 t!4386)) 512)))))

(assert (= (and d!1253570 res!1751153) b!4260114))

(assert (= (and b!4260114 res!1751154) b!4260115))

(assert (=> d!1253570 m!4846871))

(assert (=> d!1253570 m!4846871))

(declare-fun m!4847139 () Bool)

(assert (=> d!1253570 m!4847139))

(assert (=> b!4260114 m!4846871))

(assert (=> b!4260114 m!4846871))

(assert (=> b!4260114 m!4847139))

(assert (=> b!4259917 d!1253570))

(declare-fun d!1253572 () Bool)

(assert (=> d!1253572 (= (list!17056 (xs!17547 (right!35346 t!4386))) (innerList!14301 (xs!17547 (right!35346 t!4386))))))

(assert (=> b!4259882 d!1253572))

(declare-fun tp!1306845 () Bool)

(declare-fun tp!1306847 () Bool)

(declare-fun b!4260116 () Bool)

(declare-fun e!2645623 () Bool)

(assert (=> b!4260116 (= e!2645623 (and (inv!62126 (left!35016 (left!35016 (left!35016 t!4386)))) tp!1306847 (inv!62126 (right!35346 (left!35016 (left!35016 t!4386)))) tp!1306845))))

(declare-fun b!4260118 () Bool)

(declare-fun e!2645622 () Bool)

(declare-fun tp!1306846 () Bool)

(assert (=> b!4260118 (= e!2645622 tp!1306846)))

(declare-fun b!4260117 () Bool)

(assert (=> b!4260117 (= e!2645623 (and (inv!62127 (xs!17547 (left!35016 (left!35016 t!4386)))) e!2645622))))

(assert (=> b!4259949 (= tp!1306841 (and (inv!62126 (left!35016 (left!35016 t!4386))) e!2645623))))

(assert (= (and b!4259949 ((_ is Node!14241) (left!35016 (left!35016 t!4386)))) b!4260116))

(assert (= b!4260117 b!4260118))

(assert (= (and b!4259949 ((_ is Leaf!22009) (left!35016 (left!35016 t!4386)))) b!4260117))

(declare-fun m!4847141 () Bool)

(assert (=> b!4260116 m!4847141))

(declare-fun m!4847143 () Bool)

(assert (=> b!4260116 m!4847143))

(declare-fun m!4847145 () Bool)

(assert (=> b!4260117 m!4847145))

(assert (=> b!4259949 m!4846895))

(declare-fun e!2645625 () Bool)

(declare-fun tp!1306848 () Bool)

(declare-fun tp!1306850 () Bool)

(declare-fun b!4260119 () Bool)

(assert (=> b!4260119 (= e!2645625 (and (inv!62126 (left!35016 (right!35346 (left!35016 t!4386)))) tp!1306850 (inv!62126 (right!35346 (right!35346 (left!35016 t!4386)))) tp!1306848))))

(declare-fun b!4260121 () Bool)

(declare-fun e!2645624 () Bool)

(declare-fun tp!1306849 () Bool)

(assert (=> b!4260121 (= e!2645624 tp!1306849)))

(declare-fun b!4260120 () Bool)

(assert (=> b!4260120 (= e!2645625 (and (inv!62127 (xs!17547 (right!35346 (left!35016 t!4386)))) e!2645624))))

(assert (=> b!4259949 (= tp!1306839 (and (inv!62126 (right!35346 (left!35016 t!4386))) e!2645625))))

(assert (= (and b!4259949 ((_ is Node!14241) (right!35346 (left!35016 t!4386)))) b!4260119))

(assert (= b!4260120 b!4260121))

(assert (= (and b!4259949 ((_ is Leaf!22009) (right!35346 (left!35016 t!4386)))) b!4260120))

(declare-fun m!4847147 () Bool)

(assert (=> b!4260119 m!4847147))

(declare-fun m!4847149 () Bool)

(assert (=> b!4260119 m!4847149))

(declare-fun m!4847151 () Bool)

(assert (=> b!4260120 m!4847151))

(assert (=> b!4259949 m!4846897))

(declare-fun b!4260122 () Bool)

(declare-fun e!2645626 () Bool)

(declare-fun tp!1306851 () Bool)

(assert (=> b!4260122 (= e!2645626 (and tp_is_empty!22869 tp!1306851))))

(assert (=> b!4259954 (= tp!1306843 e!2645626)))

(assert (= (and b!4259954 ((_ is Cons!47234) (innerList!14301 (xs!17547 (right!35346 t!4386))))) b!4260122))

(declare-fun tp!1306854 () Bool)

(declare-fun e!2645628 () Bool)

(declare-fun tp!1306852 () Bool)

(declare-fun b!4260123 () Bool)

(assert (=> b!4260123 (= e!2645628 (and (inv!62126 (left!35016 (left!35016 (right!35346 t!4386)))) tp!1306854 (inv!62126 (right!35346 (left!35016 (right!35346 t!4386)))) tp!1306852))))

(declare-fun b!4260125 () Bool)

(declare-fun e!2645627 () Bool)

(declare-fun tp!1306853 () Bool)

(assert (=> b!4260125 (= e!2645627 tp!1306853)))

(declare-fun b!4260124 () Bool)

(assert (=> b!4260124 (= e!2645628 (and (inv!62127 (xs!17547 (left!35016 (right!35346 t!4386)))) e!2645627))))

(assert (=> b!4259952 (= tp!1306844 (and (inv!62126 (left!35016 (right!35346 t!4386))) e!2645628))))

(assert (= (and b!4259952 ((_ is Node!14241) (left!35016 (right!35346 t!4386)))) b!4260123))

(assert (= b!4260124 b!4260125))

(assert (= (and b!4259952 ((_ is Leaf!22009) (left!35016 (right!35346 t!4386)))) b!4260124))

(declare-fun m!4847153 () Bool)

(assert (=> b!4260123 m!4847153))

(declare-fun m!4847155 () Bool)

(assert (=> b!4260123 m!4847155))

(declare-fun m!4847157 () Bool)

(assert (=> b!4260124 m!4847157))

(assert (=> b!4259952 m!4846901))

(declare-fun tp!1306857 () Bool)

(declare-fun b!4260126 () Bool)

(declare-fun tp!1306855 () Bool)

(declare-fun e!2645630 () Bool)

(assert (=> b!4260126 (= e!2645630 (and (inv!62126 (left!35016 (right!35346 (right!35346 t!4386)))) tp!1306857 (inv!62126 (right!35346 (right!35346 (right!35346 t!4386)))) tp!1306855))))

(declare-fun b!4260128 () Bool)

(declare-fun e!2645629 () Bool)

(declare-fun tp!1306856 () Bool)

(assert (=> b!4260128 (= e!2645629 tp!1306856)))

(declare-fun b!4260127 () Bool)

(assert (=> b!4260127 (= e!2645630 (and (inv!62127 (xs!17547 (right!35346 (right!35346 t!4386)))) e!2645629))))

(assert (=> b!4259952 (= tp!1306842 (and (inv!62126 (right!35346 (right!35346 t!4386))) e!2645630))))

(assert (= (and b!4259952 ((_ is Node!14241) (right!35346 (right!35346 t!4386)))) b!4260126))

(assert (= b!4260127 b!4260128))

(assert (= (and b!4259952 ((_ is Leaf!22009) (right!35346 (right!35346 t!4386)))) b!4260127))

(declare-fun m!4847159 () Bool)

(assert (=> b!4260126 m!4847159))

(declare-fun m!4847161 () Bool)

(assert (=> b!4260126 m!4847161))

(declare-fun m!4847163 () Bool)

(assert (=> b!4260127 m!4847163))

(assert (=> b!4259952 m!4846903))

(declare-fun b!4260129 () Bool)

(declare-fun e!2645631 () Bool)

(declare-fun tp!1306858 () Bool)

(assert (=> b!4260129 (= e!2645631 (and tp_is_empty!22869 tp!1306858))))

(assert (=> b!4259934 (= tp!1306826 e!2645631)))

(assert (= (and b!4259934 ((_ is Cons!47234) (t!353133 (innerList!14301 (xs!17547 t!4386))))) b!4260129))

(declare-fun b!4260130 () Bool)

(declare-fun e!2645632 () Bool)

(declare-fun tp!1306859 () Bool)

(assert (=> b!4260130 (= e!2645632 (and tp_is_empty!22869 tp!1306859))))

(assert (=> b!4259951 (= tp!1306840 e!2645632)))

(assert (= (and b!4259951 ((_ is Cons!47234) (innerList!14301 (xs!17547 (left!35016 t!4386))))) b!4260130))

(declare-fun b_lambda!125657 () Bool)

(assert (= b_lambda!125655 (or (and start!408194 b_free!126681) b_lambda!125657)))

(declare-fun b_lambda!125659 () Bool)

(assert (= b_lambda!125653 (or (and start!408194 b_free!126681) b_lambda!125659)))

(declare-fun b_lambda!125661 () Bool)

(assert (= b_lambda!125651 (or (and start!408194 b_free!126681) b_lambda!125661)))

(check-sat (not d!1253520) b_and!337669 (not d!1253462) (not b!4260112) (not b!4260056) (not b!4260025) (not b!4260048) (not b_lambda!125657) tp_is_empty!22869 (not b!4259949) tp_is_empty!22865 (not b!4260119) (not b!4259985) (not b!4260099) (not b!4260067) (not d!1253512) (not b!4259989) (not b!4260113) (not b!4260081) (not b!4260041) (not b!4260060) (not d!1253534) (not b!4260109) (not b!4260068) (not b!4260126) (not d!1253490) (not b!4260121) (not b!4260023) (not b!4260072) (not b!4260024) (not b!4259983) (not b!4259952) (not b!4260049) (not b!4260026) (not d!1253570) (not b!4260128) (not b!4260009) (not b!4260108) (not b!4260001) (not b!4260083) (not d!1253486) (not b_next!127385) (not d!1253532) (not b!4259998) (not b!4259973) (not d!1253492) (not b!4260114) (not d!1253494) (not d!1253542) (not d!1253526) (not b!4260102) (not b!4260027) (not b!4259975) (not b!4260073) (not b!4260031) (not d!1253460) (not b!4260016) (not d!1253562) (not d!1253510) (not b!4260080) (not b!4260045) (not b!4259997) (not b!4259999) (not b!4260125) (not b!4259987) (not d!1253538) (not b!4260120) (not b!4260020) (not b!4260046) (not b!4260095) (not b!4260123) (not b_lambda!125661) (not b!4260030) (not b!4260116) (not b!4260101) (not b!4260129) (not b!4260127) (not b!4260006) (not b!4260051) (not b!4259996) (not b!4259962) (not b_lambda!125645) (not d!1253484) (not b!4260124) (not b!4260117) (not b_lambda!125659) (not b!4260000) (not b!4260043) (not b!4260122) (not b!4260018) (not d!1253552) (not b_lambda!125647) (not b!4260022) (not b!4260011) (not b!4259965) (not b!4260028) (not b!4260014) (not b!4260063) (not b!4260130) (not b!4260040) (not b!4260118) (not b!4260052) (not b!4259995) (not b!4259977) (not b!4260097) (not b!4259966) (not b_lambda!125649))
(check-sat b_and!337669 (not b_next!127385))
(get-model)

(declare-fun d!1253664 () Bool)

(declare-fun lt!1510485 () Int)

(assert (=> d!1253664 (>= lt!1510485 0)))

(declare-fun e!2645699 () Int)

(assert (=> d!1253664 (= lt!1510485 e!2645699)))

(declare-fun c!723530 () Bool)

(assert (=> d!1253664 (= c!723530 ((_ is Nil!47234) (innerList!14301 (xs!17547 (left!35016 t!4386)))))))

(assert (=> d!1253664 (= (size!34591 (innerList!14301 (xs!17547 (left!35016 t!4386)))) lt!1510485)))

(declare-fun b!4260259 () Bool)

(assert (=> b!4260259 (= e!2645699 0)))

(declare-fun b!4260260 () Bool)

(assert (=> b!4260260 (= e!2645699 (+ 1 (size!34591 (t!353133 (innerList!14301 (xs!17547 (left!35016 t!4386)))))))))

(assert (= (and d!1253664 c!723530) b!4260259))

(assert (= (and d!1253664 (not c!723530)) b!4260260))

(declare-fun m!4847387 () Bool)

(assert (=> b!4260260 m!4847387))

(assert (=> d!1253526 d!1253664))

(declare-fun b!4260261 () Bool)

(declare-fun res!1751193 () Bool)

(declare-fun e!2645701 () Bool)

(assert (=> b!4260261 (=> (not res!1751193) (not e!2645701))))

(assert (=> b!4260261 (= res!1751193 (isBalanced!3800 (right!35346 (left!35016 (right!35346 t!4386)))))))

(declare-fun b!4260262 () Bool)

(declare-fun e!2645700 () Bool)

(assert (=> b!4260262 (= e!2645700 e!2645701)))

(declare-fun res!1751196 () Bool)

(assert (=> b!4260262 (=> (not res!1751196) (not e!2645701))))

(assert (=> b!4260262 (= res!1751196 (<= (- 1) (- (height!1866 (left!35016 (left!35016 (right!35346 t!4386)))) (height!1866 (right!35346 (left!35016 (right!35346 t!4386)))))))))

(declare-fun b!4260264 () Bool)

(declare-fun res!1751194 () Bool)

(assert (=> b!4260264 (=> (not res!1751194) (not e!2645701))))

(assert (=> b!4260264 (= res!1751194 (isBalanced!3800 (left!35016 (left!35016 (right!35346 t!4386)))))))

(declare-fun b!4260265 () Bool)

(declare-fun res!1751197 () Bool)

(assert (=> b!4260265 (=> (not res!1751197) (not e!2645701))))

(assert (=> b!4260265 (= res!1751197 (not (isEmpty!27974 (left!35016 (left!35016 (right!35346 t!4386))))))))

(declare-fun b!4260266 () Bool)

(declare-fun res!1751192 () Bool)

(assert (=> b!4260266 (=> (not res!1751192) (not e!2645701))))

(assert (=> b!4260266 (= res!1751192 (<= (- (height!1866 (left!35016 (left!35016 (right!35346 t!4386)))) (height!1866 (right!35346 (left!35016 (right!35346 t!4386))))) 1))))

(declare-fun b!4260263 () Bool)

(assert (=> b!4260263 (= e!2645701 (not (isEmpty!27974 (right!35346 (left!35016 (right!35346 t!4386))))))))

(declare-fun d!1253666 () Bool)

(declare-fun res!1751195 () Bool)

(assert (=> d!1253666 (=> res!1751195 e!2645700)))

(assert (=> d!1253666 (= res!1751195 (not ((_ is Node!14241) (left!35016 (right!35346 t!4386)))))))

(assert (=> d!1253666 (= (isBalanced!3800 (left!35016 (right!35346 t!4386))) e!2645700)))

(assert (= (and d!1253666 (not res!1751195)) b!4260262))

(assert (= (and b!4260262 res!1751196) b!4260266))

(assert (= (and b!4260266 res!1751192) b!4260264))

(assert (= (and b!4260264 res!1751194) b!4260261))

(assert (= (and b!4260261 res!1751193) b!4260265))

(assert (= (and b!4260265 res!1751197) b!4260263))

(declare-fun m!4847389 () Bool)

(assert (=> b!4260263 m!4847389))

(declare-fun m!4847391 () Bool)

(assert (=> b!4260261 m!4847391))

(declare-fun m!4847393 () Bool)

(assert (=> b!4260266 m!4847393))

(declare-fun m!4847395 () Bool)

(assert (=> b!4260266 m!4847395))

(declare-fun m!4847397 () Bool)

(assert (=> b!4260265 m!4847397))

(declare-fun m!4847399 () Bool)

(assert (=> b!4260264 m!4847399))

(assert (=> b!4260262 m!4847393))

(assert (=> b!4260262 m!4847395))

(assert (=> b!4260026 d!1253666))

(declare-fun d!1253668 () Bool)

(declare-fun res!1751198 () Bool)

(declare-fun e!2645702 () Bool)

(assert (=> d!1253668 (=> (not res!1751198) (not e!2645702))))

(assert (=> d!1253668 (= res!1751198 (= (csize!28712 (left!35016 (left!35016 t!4386))) (+ (size!34593 (left!35016 (left!35016 (left!35016 t!4386)))) (size!34593 (right!35346 (left!35016 (left!35016 t!4386)))))))))

(assert (=> d!1253668 (= (inv!62128 (left!35016 (left!35016 t!4386))) e!2645702)))

(declare-fun b!4260267 () Bool)

(declare-fun res!1751199 () Bool)

(assert (=> b!4260267 (=> (not res!1751199) (not e!2645702))))

(assert (=> b!4260267 (= res!1751199 (and (not (= (left!35016 (left!35016 (left!35016 t!4386))) Empty!14241)) (not (= (right!35346 (left!35016 (left!35016 t!4386))) Empty!14241))))))

(declare-fun b!4260268 () Bool)

(declare-fun res!1751200 () Bool)

(assert (=> b!4260268 (=> (not res!1751200) (not e!2645702))))

(assert (=> b!4260268 (= res!1751200 (= (cheight!14452 (left!35016 (left!35016 t!4386))) (+ (max!0 (height!1866 (left!35016 (left!35016 (left!35016 t!4386)))) (height!1866 (right!35346 (left!35016 (left!35016 t!4386))))) 1)))))

(declare-fun b!4260269 () Bool)

(assert (=> b!4260269 (= e!2645702 (<= 0 (cheight!14452 (left!35016 (left!35016 t!4386)))))))

(assert (= (and d!1253668 res!1751198) b!4260267))

(assert (= (and b!4260267 res!1751199) b!4260268))

(assert (= (and b!4260268 res!1751200) b!4260269))

(declare-fun m!4847401 () Bool)

(assert (=> d!1253668 m!4847401))

(declare-fun m!4847403 () Bool)

(assert (=> d!1253668 m!4847403))

(declare-fun m!4847405 () Bool)

(assert (=> b!4260268 m!4847405))

(declare-fun m!4847407 () Bool)

(assert (=> b!4260268 m!4847407))

(assert (=> b!4260268 m!4847405))

(assert (=> b!4260268 m!4847407))

(declare-fun m!4847409 () Bool)

(assert (=> b!4260268 m!4847409))

(assert (=> b!4260043 d!1253668))

(declare-fun d!1253670 () Bool)

(declare-fun lt!1510486 () Bool)

(assert (=> d!1253670 (= lt!1510486 (isEmpty!27976 (list!17054 (right!35346 (left!35016 t!4386)))))))

(assert (=> d!1253670 (= lt!1510486 (= (size!34593 (right!35346 (left!35016 t!4386))) 0))))

(assert (=> d!1253670 (= (isEmpty!27974 (right!35346 (left!35016 t!4386))) lt!1510486)))

(declare-fun bs!599008 () Bool)

(assert (= bs!599008 d!1253670))

(assert (=> bs!599008 m!4846865))

(assert (=> bs!599008 m!4846865))

(declare-fun m!4847411 () Bool)

(assert (=> bs!599008 m!4847411))

(assert (=> bs!599008 m!4846909))

(assert (=> b!4259998 d!1253670))

(declare-fun b!4260270 () Bool)

(declare-fun res!1751202 () Bool)

(declare-fun e!2645704 () Bool)

(assert (=> b!4260270 (=> (not res!1751202) (not e!2645704))))

(assert (=> b!4260270 (= res!1751202 (isBalanced!3800 (right!35346 (right!35346 (left!35016 t!4386)))))))

(declare-fun b!4260271 () Bool)

(declare-fun e!2645703 () Bool)

(assert (=> b!4260271 (= e!2645703 e!2645704)))

(declare-fun res!1751205 () Bool)

(assert (=> b!4260271 (=> (not res!1751205) (not e!2645704))))

(assert (=> b!4260271 (= res!1751205 (<= (- 1) (- (height!1866 (left!35016 (right!35346 (left!35016 t!4386)))) (height!1866 (right!35346 (right!35346 (left!35016 t!4386)))))))))

(declare-fun b!4260273 () Bool)

(declare-fun res!1751203 () Bool)

(assert (=> b!4260273 (=> (not res!1751203) (not e!2645704))))

(assert (=> b!4260273 (= res!1751203 (isBalanced!3800 (left!35016 (right!35346 (left!35016 t!4386)))))))

(declare-fun b!4260274 () Bool)

(declare-fun res!1751206 () Bool)

(assert (=> b!4260274 (=> (not res!1751206) (not e!2645704))))

(assert (=> b!4260274 (= res!1751206 (not (isEmpty!27974 (left!35016 (right!35346 (left!35016 t!4386))))))))

(declare-fun b!4260275 () Bool)

(declare-fun res!1751201 () Bool)

(assert (=> b!4260275 (=> (not res!1751201) (not e!2645704))))

(assert (=> b!4260275 (= res!1751201 (<= (- (height!1866 (left!35016 (right!35346 (left!35016 t!4386)))) (height!1866 (right!35346 (right!35346 (left!35016 t!4386))))) 1))))

(declare-fun b!4260272 () Bool)

(assert (=> b!4260272 (= e!2645704 (not (isEmpty!27974 (right!35346 (right!35346 (left!35016 t!4386))))))))

(declare-fun d!1253672 () Bool)

(declare-fun res!1751204 () Bool)

(assert (=> d!1253672 (=> res!1751204 e!2645703)))

(assert (=> d!1253672 (= res!1751204 (not ((_ is Node!14241) (right!35346 (left!35016 t!4386)))))))

(assert (=> d!1253672 (= (isBalanced!3800 (right!35346 (left!35016 t!4386))) e!2645703)))

(assert (= (and d!1253672 (not res!1751204)) b!4260271))

(assert (= (and b!4260271 res!1751205) b!4260275))

(assert (= (and b!4260275 res!1751201) b!4260273))

(assert (= (and b!4260273 res!1751203) b!4260270))

(assert (= (and b!4260270 res!1751202) b!4260274))

(assert (= (and b!4260274 res!1751206) b!4260272))

(declare-fun m!4847413 () Bool)

(assert (=> b!4260272 m!4847413))

(declare-fun m!4847415 () Bool)

(assert (=> b!4260270 m!4847415))

(declare-fun m!4847417 () Bool)

(assert (=> b!4260275 m!4847417))

(declare-fun m!4847419 () Bool)

(assert (=> b!4260275 m!4847419))

(declare-fun m!4847421 () Bool)

(assert (=> b!4260274 m!4847421))

(declare-fun m!4847423 () Bool)

(assert (=> b!4260273 m!4847423))

(assert (=> b!4260271 m!4847417))

(assert (=> b!4260271 m!4847419))

(assert (=> b!4259996 d!1253672))

(declare-fun d!1253674 () Bool)

(declare-fun lt!1510487 () Int)

(assert (=> d!1253674 (>= lt!1510487 0)))

(declare-fun e!2645705 () Int)

(assert (=> d!1253674 (= lt!1510487 e!2645705)))

(declare-fun c!723531 () Bool)

(assert (=> d!1253674 (= c!723531 ((_ is Nil!47234) lt!1510453))))

(assert (=> d!1253674 (= (size!34591 lt!1510453) lt!1510487)))

(declare-fun b!4260276 () Bool)

(assert (=> b!4260276 (= e!2645705 0)))

(declare-fun b!4260277 () Bool)

(assert (=> b!4260277 (= e!2645705 (+ 1 (size!34591 (t!353133 lt!1510453))))))

(assert (= (and d!1253674 c!723531) b!4260276))

(assert (= (and d!1253674 (not c!723531)) b!4260277))

(declare-fun m!4847425 () Bool)

(assert (=> b!4260277 m!4847425))

(assert (=> b!4260031 d!1253674))

(declare-fun d!1253676 () Bool)

(declare-fun lt!1510488 () Int)

(assert (=> d!1253676 (>= lt!1510488 0)))

(declare-fun e!2645706 () Int)

(assert (=> d!1253676 (= lt!1510488 e!2645706)))

(declare-fun c!723532 () Bool)

(assert (=> d!1253676 (= c!723532 ((_ is Nil!47234) (t!353133 lt!1510403)))))

(assert (=> d!1253676 (= (size!34591 (t!353133 lt!1510403)) lt!1510488)))

(declare-fun b!4260278 () Bool)

(assert (=> b!4260278 (= e!2645706 0)))

(declare-fun b!4260279 () Bool)

(assert (=> b!4260279 (= e!2645706 (+ 1 (size!34591 (t!353133 (t!353133 lt!1510403)))))))

(assert (= (and d!1253676 c!723532) b!4260278))

(assert (= (and d!1253676 (not c!723532)) b!4260279))

(declare-fun m!4847427 () Bool)

(assert (=> b!4260279 m!4847427))

(assert (=> b!4260031 d!1253676))

(assert (=> b!4260031 d!1253498))

(declare-fun d!1253678 () Bool)

(assert (=> d!1253678 (= (height!1866 (left!35016 (right!35346 t!4386))) (ite ((_ is Empty!14241) (left!35016 (right!35346 t!4386))) 0 (ite ((_ is Leaf!22009) (left!35016 (right!35346 t!4386))) 1 (cheight!14452 (left!35016 (right!35346 t!4386))))))))

(assert (=> b!4260024 d!1253678))

(declare-fun d!1253680 () Bool)

(assert (=> d!1253680 (= (height!1866 (right!35346 (right!35346 t!4386))) (ite ((_ is Empty!14241) (right!35346 (right!35346 t!4386))) 0 (ite ((_ is Leaf!22009) (right!35346 (right!35346 t!4386))) 1 (cheight!14452 (right!35346 (right!35346 t!4386))))))))

(assert (=> b!4260024 d!1253680))

(declare-fun d!1253682 () Bool)

(assert (=> d!1253682 (= (inv!62127 (xs!17547 (left!35016 (right!35346 t!4386)))) (<= (size!34591 (innerList!14301 (xs!17547 (left!35016 (right!35346 t!4386))))) 2147483647))))

(declare-fun bs!599009 () Bool)

(assert (= bs!599009 d!1253682))

(declare-fun m!4847429 () Bool)

(assert (=> bs!599009 m!4847429))

(assert (=> b!4260124 d!1253682))

(declare-fun d!1253684 () Bool)

(declare-fun lt!1510489 () Int)

(assert (=> d!1253684 (>= lt!1510489 0)))

(declare-fun e!2645707 () Int)

(assert (=> d!1253684 (= lt!1510489 e!2645707)))

(declare-fun c!723533 () Bool)

(assert (=> d!1253684 (= c!723533 ((_ is Nil!47234) lt!1510459))))

(assert (=> d!1253684 (= (size!34591 lt!1510459) lt!1510489)))

(declare-fun b!4260280 () Bool)

(assert (=> b!4260280 (= e!2645707 0)))

(declare-fun b!4260281 () Bool)

(assert (=> b!4260281 (= e!2645707 (+ 1 (size!34591 (t!353133 lt!1510459))))))

(assert (= (and d!1253684 c!723533) b!4260280))

(assert (= (and d!1253684 (not c!723533)) b!4260281))

(declare-fun m!4847431 () Bool)

(assert (=> b!4260281 m!4847431))

(assert (=> b!4260068 d!1253684))

(declare-fun d!1253686 () Bool)

(declare-fun lt!1510490 () Int)

(assert (=> d!1253686 (>= lt!1510490 0)))

(declare-fun e!2645708 () Int)

(assert (=> d!1253686 (= lt!1510490 e!2645708)))

(declare-fun c!723534 () Bool)

(assert (=> d!1253686 (= c!723534 ((_ is Nil!47234) (list!17054 (left!35016 (left!35016 t!4386)))))))

(assert (=> d!1253686 (= (size!34591 (list!17054 (left!35016 (left!35016 t!4386)))) lt!1510490)))

(declare-fun b!4260282 () Bool)

(assert (=> b!4260282 (= e!2645708 0)))

(declare-fun b!4260283 () Bool)

(assert (=> b!4260283 (= e!2645708 (+ 1 (size!34591 (t!353133 (list!17054 (left!35016 (left!35016 t!4386)))))))))

(assert (= (and d!1253686 c!723534) b!4260282))

(assert (= (and d!1253686 (not c!723534)) b!4260283))

(declare-fun m!4847433 () Bool)

(assert (=> b!4260283 m!4847433))

(assert (=> b!4260068 d!1253686))

(declare-fun d!1253688 () Bool)

(declare-fun lt!1510491 () Int)

(assert (=> d!1253688 (>= lt!1510491 0)))

(declare-fun e!2645709 () Int)

(assert (=> d!1253688 (= lt!1510491 e!2645709)))

(declare-fun c!723535 () Bool)

(assert (=> d!1253688 (= c!723535 ((_ is Nil!47234) (list!17054 (right!35346 (left!35016 t!4386)))))))

(assert (=> d!1253688 (= (size!34591 (list!17054 (right!35346 (left!35016 t!4386)))) lt!1510491)))

(declare-fun b!4260284 () Bool)

(assert (=> b!4260284 (= e!2645709 0)))

(declare-fun b!4260285 () Bool)

(assert (=> b!4260285 (= e!2645709 (+ 1 (size!34591 (t!353133 (list!17054 (right!35346 (left!35016 t!4386)))))))))

(assert (= (and d!1253688 c!723535) b!4260284))

(assert (= (and d!1253688 (not c!723535)) b!4260285))

(declare-fun m!4847435 () Bool)

(assert (=> b!4260285 m!4847435))

(assert (=> b!4260068 d!1253688))

(declare-fun d!1253690 () Bool)

(declare-fun lt!1510492 () Int)

(assert (=> d!1253690 (>= lt!1510492 0)))

(declare-fun e!2645710 () Int)

(assert (=> d!1253690 (= lt!1510492 e!2645710)))

(declare-fun c!723536 () Bool)

(assert (=> d!1253690 (= c!723536 ((_ is Nil!47234) (t!353133 lt!1510416)))))

(assert (=> d!1253690 (= (size!34591 (t!353133 lt!1510416)) lt!1510492)))

(declare-fun b!4260286 () Bool)

(assert (=> b!4260286 (= e!2645710 0)))

(declare-fun b!4260287 () Bool)

(assert (=> b!4260287 (= e!2645710 (+ 1 (size!34591 (t!353133 (t!353133 lt!1510416)))))))

(assert (= (and d!1253690 c!723536) b!4260286))

(assert (= (and d!1253690 (not c!723536)) b!4260287))

(declare-fun m!4847437 () Bool)

(assert (=> b!4260287 m!4847437))

(assert (=> b!4260020 d!1253690))

(declare-fun d!1253692 () Bool)

(declare-fun lt!1510493 () Int)

(assert (=> d!1253692 (>= lt!1510493 0)))

(declare-fun e!2645711 () Int)

(assert (=> d!1253692 (= lt!1510493 e!2645711)))

(declare-fun c!723537 () Bool)

(assert (=> d!1253692 (= c!723537 ((_ is Nil!47235) lt!1510433))))

(assert (=> d!1253692 (= (size!34592 lt!1510433) lt!1510493)))

(declare-fun b!4260288 () Bool)

(assert (=> b!4260288 (= e!2645711 0)))

(declare-fun b!4260289 () Bool)

(assert (=> b!4260289 (= e!2645711 (+ 1 (size!34592 (t!353134 lt!1510433))))))

(assert (= (and d!1253692 c!723537) b!4260288))

(assert (= (and d!1253692 (not c!723537)) b!4260289))

(declare-fun m!4847439 () Bool)

(assert (=> b!4260289 m!4847439))

(assert (=> b!4259966 d!1253692))

(declare-fun d!1253694 () Bool)

(declare-fun lt!1510494 () Int)

(assert (=> d!1253694 (>= lt!1510494 0)))

(declare-fun e!2645712 () Int)

(assert (=> d!1253694 (= lt!1510494 e!2645712)))

(declare-fun c!723538 () Bool)

(assert (=> d!1253694 (= c!723538 ((_ is Nil!47235) (t!353134 (map!9663 lt!1510403 f!428))))))

(assert (=> d!1253694 (= (size!34592 (t!353134 (map!9663 lt!1510403 f!428))) lt!1510494)))

(declare-fun b!4260290 () Bool)

(assert (=> b!4260290 (= e!2645712 0)))

(declare-fun b!4260291 () Bool)

(assert (=> b!4260291 (= e!2645712 (+ 1 (size!34592 (t!353134 (t!353134 (map!9663 lt!1510403 f!428))))))))

(assert (= (and d!1253694 c!723538) b!4260290))

(assert (= (and d!1253694 (not c!723538)) b!4260291))

(declare-fun m!4847441 () Bool)

(assert (=> b!4260291 m!4847441))

(assert (=> b!4259966 d!1253694))

(assert (=> b!4259966 d!1253468))

(declare-fun d!1253696 () Bool)

(declare-fun lt!1510495 () Int)

(assert (=> d!1253696 (>= lt!1510495 0)))

(declare-fun e!2645713 () Int)

(assert (=> d!1253696 (= lt!1510495 e!2645713)))

(declare-fun c!723539 () Bool)

(assert (=> d!1253696 (= c!723539 ((_ is Nil!47235) lt!1510446))))

(assert (=> d!1253696 (= (size!34592 lt!1510446) lt!1510495)))

(declare-fun b!4260292 () Bool)

(assert (=> b!4260292 (= e!2645713 0)))

(declare-fun b!4260293 () Bool)

(assert (=> b!4260293 (= e!2645713 (+ 1 (size!34592 (t!353134 lt!1510446))))))

(assert (= (and d!1253696 c!723539) b!4260292))

(assert (= (and d!1253696 (not c!723539)) b!4260293))

(declare-fun m!4847443 () Bool)

(assert (=> b!4260293 m!4847443))

(assert (=> d!1253490 d!1253696))

(assert (=> d!1253490 d!1253676))

(declare-fun d!1253698 () Bool)

(declare-fun lt!1510496 () Int)

(assert (=> d!1253698 (>= lt!1510496 0)))

(declare-fun e!2645714 () Int)

(assert (=> d!1253698 (= lt!1510496 e!2645714)))

(declare-fun c!723540 () Bool)

(assert (=> d!1253698 (= c!723540 ((_ is Nil!47234) lt!1510464))))

(assert (=> d!1253698 (= (size!34591 lt!1510464) lt!1510496)))

(declare-fun b!4260294 () Bool)

(assert (=> b!4260294 (= e!2645714 0)))

(declare-fun b!4260295 () Bool)

(assert (=> b!4260295 (= e!2645714 (+ 1 (size!34591 (t!353133 lt!1510464))))))

(assert (= (and d!1253698 c!723540) b!4260294))

(assert (= (and d!1253698 (not c!723540)) b!4260295))

(declare-fun m!4847445 () Bool)

(assert (=> b!4260295 m!4847445))

(assert (=> b!4260102 d!1253698))

(declare-fun d!1253700 () Bool)

(declare-fun lt!1510497 () Int)

(assert (=> d!1253700 (>= lt!1510497 0)))

(declare-fun e!2645715 () Int)

(assert (=> d!1253700 (= lt!1510497 e!2645715)))

(declare-fun c!723541 () Bool)

(assert (=> d!1253700 (= c!723541 ((_ is Nil!47234) (list!17054 (left!35016 (right!35346 t!4386)))))))

(assert (=> d!1253700 (= (size!34591 (list!17054 (left!35016 (right!35346 t!4386)))) lt!1510497)))

(declare-fun b!4260296 () Bool)

(assert (=> b!4260296 (= e!2645715 0)))

(declare-fun b!4260297 () Bool)

(assert (=> b!4260297 (= e!2645715 (+ 1 (size!34591 (t!353133 (list!17054 (left!35016 (right!35346 t!4386)))))))))

(assert (= (and d!1253700 c!723541) b!4260296))

(assert (= (and d!1253700 (not c!723541)) b!4260297))

(declare-fun m!4847447 () Bool)

(assert (=> b!4260297 m!4847447))

(assert (=> b!4260102 d!1253700))

(declare-fun d!1253702 () Bool)

(declare-fun lt!1510498 () Int)

(assert (=> d!1253702 (>= lt!1510498 0)))

(declare-fun e!2645716 () Int)

(assert (=> d!1253702 (= lt!1510498 e!2645716)))

(declare-fun c!723542 () Bool)

(assert (=> d!1253702 (= c!723542 ((_ is Nil!47234) (list!17054 (right!35346 (right!35346 t!4386)))))))

(assert (=> d!1253702 (= (size!34591 (list!17054 (right!35346 (right!35346 t!4386)))) lt!1510498)))

(declare-fun b!4260298 () Bool)

(assert (=> b!4260298 (= e!2645716 0)))

(declare-fun b!4260299 () Bool)

(assert (=> b!4260299 (= e!2645716 (+ 1 (size!34591 (t!353133 (list!17054 (right!35346 (right!35346 t!4386)))))))))

(assert (= (and d!1253702 c!723542) b!4260298))

(assert (= (and d!1253702 (not c!723542)) b!4260299))

(declare-fun m!4847449 () Bool)

(assert (=> b!4260299 m!4847449))

(assert (=> b!4260102 d!1253702))

(declare-fun d!1253704 () Bool)

(assert (=> d!1253704 (= (inv!62127 (xs!17547 (right!35346 (right!35346 t!4386)))) (<= (size!34591 (innerList!14301 (xs!17547 (right!35346 (right!35346 t!4386))))) 2147483647))))

(declare-fun bs!599010 () Bool)

(assert (= bs!599010 d!1253704))

(declare-fun m!4847451 () Bool)

(assert (=> bs!599010 m!4847451))

(assert (=> b!4260127 d!1253704))

(declare-fun d!1253706 () Bool)

(declare-fun c!723543 () Bool)

(assert (=> d!1253706 (= c!723543 ((_ is Nil!47235) (t!353134 (map!9663 lt!1510402 f!428))))))

(declare-fun e!2645717 () (InoxSet B!2817))

(assert (=> d!1253706 (= (content!7439 (t!353134 (map!9663 lt!1510402 f!428))) e!2645717)))

(declare-fun b!4260300 () Bool)

(assert (=> b!4260300 (= e!2645717 ((as const (Array B!2817 Bool)) false))))

(declare-fun b!4260301 () Bool)

(assert (=> b!4260301 (= e!2645717 ((_ map or) (store ((as const (Array B!2817 Bool)) false) (h!52655 (t!353134 (map!9663 lt!1510402 f!428))) true) (content!7439 (t!353134 (t!353134 (map!9663 lt!1510402 f!428))))))))

(assert (= (and d!1253706 c!723543) b!4260300))

(assert (= (and d!1253706 (not c!723543)) b!4260301))

(declare-fun m!4847453 () Bool)

(assert (=> b!4260301 m!4847453))

(declare-fun m!4847455 () Bool)

(assert (=> b!4260301 m!4847455))

(assert (=> b!4259987 d!1253706))

(declare-fun d!1253708 () Bool)

(declare-fun res!1751207 () Bool)

(declare-fun e!2645718 () Bool)

(assert (=> d!1253708 (=> (not res!1751207) (not e!2645718))))

(assert (=> d!1253708 (= res!1751207 (<= (size!34591 (list!17056 (xs!17547 (right!35346 (left!35016 t!4386))))) 512))))

(assert (=> d!1253708 (= (inv!62129 (right!35346 (left!35016 t!4386))) e!2645718)))

(declare-fun b!4260302 () Bool)

(declare-fun res!1751208 () Bool)

(assert (=> b!4260302 (=> (not res!1751208) (not e!2645718))))

(assert (=> b!4260302 (= res!1751208 (= (csize!28713 (right!35346 (left!35016 t!4386))) (size!34591 (list!17056 (xs!17547 (right!35346 (left!35016 t!4386)))))))))

(declare-fun b!4260303 () Bool)

(assert (=> b!4260303 (= e!2645718 (and (> (csize!28713 (right!35346 (left!35016 t!4386))) 0) (<= (csize!28713 (right!35346 (left!35016 t!4386))) 512)))))

(assert (= (and d!1253708 res!1751207) b!4260302))

(assert (= (and b!4260302 res!1751208) b!4260303))

(assert (=> d!1253708 m!4847085))

(assert (=> d!1253708 m!4847085))

(declare-fun m!4847457 () Bool)

(assert (=> d!1253708 m!4847457))

(assert (=> b!4260302 m!4847085))

(assert (=> b!4260302 m!4847085))

(assert (=> b!4260302 m!4847457))

(assert (=> b!4260048 d!1253708))

(declare-fun d!1253710 () Bool)

(declare-fun c!723544 () Bool)

(assert (=> d!1253710 (= c!723544 ((_ is Nil!47234) (t!353133 lt!1510403)))))

(declare-fun e!2645719 () (InoxSet T!79392))

(assert (=> d!1253710 (= (content!7437 (t!353133 lt!1510403)) e!2645719)))

(declare-fun b!4260304 () Bool)

(assert (=> b!4260304 (= e!2645719 ((as const (Array T!79392 Bool)) false))))

(declare-fun b!4260305 () Bool)

(assert (=> b!4260305 (= e!2645719 ((_ map or) (store ((as const (Array T!79392 Bool)) false) (h!52654 (t!353133 lt!1510403)) true) (content!7437 (t!353133 (t!353133 lt!1510403)))))))

(assert (= (and d!1253710 c!723544) b!4260304))

(assert (= (and d!1253710 (not c!723544)) b!4260305))

(declare-fun m!4847459 () Bool)

(assert (=> b!4260305 m!4847459))

(declare-fun m!4847461 () Bool)

(assert (=> b!4260305 m!4847461))

(assert (=> b!4260097 d!1253710))

(declare-fun d!1253712 () Bool)

(declare-fun res!1751209 () Bool)

(declare-fun e!2645720 () Bool)

(assert (=> d!1253712 (=> (not res!1751209) (not e!2645720))))

(assert (=> d!1253712 (= res!1751209 (= (csize!28712 (right!35346 (left!35016 t!4386))) (+ (size!34593 (left!35016 (right!35346 (left!35016 t!4386)))) (size!34593 (right!35346 (right!35346 (left!35016 t!4386)))))))))

(assert (=> d!1253712 (= (inv!62128 (right!35346 (left!35016 t!4386))) e!2645720)))

(declare-fun b!4260306 () Bool)

(declare-fun res!1751210 () Bool)

(assert (=> b!4260306 (=> (not res!1751210) (not e!2645720))))

(assert (=> b!4260306 (= res!1751210 (and (not (= (left!35016 (right!35346 (left!35016 t!4386))) Empty!14241)) (not (= (right!35346 (right!35346 (left!35016 t!4386))) Empty!14241))))))

(declare-fun b!4260307 () Bool)

(declare-fun res!1751211 () Bool)

(assert (=> b!4260307 (=> (not res!1751211) (not e!2645720))))

(assert (=> b!4260307 (= res!1751211 (= (cheight!14452 (right!35346 (left!35016 t!4386))) (+ (max!0 (height!1866 (left!35016 (right!35346 (left!35016 t!4386)))) (height!1866 (right!35346 (right!35346 (left!35016 t!4386))))) 1)))))

(declare-fun b!4260308 () Bool)

(assert (=> b!4260308 (= e!2645720 (<= 0 (cheight!14452 (right!35346 (left!35016 t!4386)))))))

(assert (= (and d!1253712 res!1751209) b!4260306))

(assert (= (and b!4260306 res!1751210) b!4260307))

(assert (= (and b!4260307 res!1751211) b!4260308))

(declare-fun m!4847463 () Bool)

(assert (=> d!1253712 m!4847463))

(declare-fun m!4847465 () Bool)

(assert (=> d!1253712 m!4847465))

(assert (=> b!4260307 m!4847417))

(assert (=> b!4260307 m!4847419))

(assert (=> b!4260307 m!4847417))

(assert (=> b!4260307 m!4847419))

(declare-fun m!4847467 () Bool)

(assert (=> b!4260307 m!4847467))

(assert (=> b!4260046 d!1253712))

(assert (=> b!4259975 d!1253694))

(declare-fun d!1253714 () Bool)

(assert (=> d!1253714 (= (isEmpty!27976 (list!17054 (left!35016 t!4386))) ((_ is Nil!47234) (list!17054 (left!35016 t!4386))))))

(assert (=> d!1253484 d!1253714))

(assert (=> d!1253484 d!1253446))

(declare-fun d!1253716 () Bool)

(declare-fun lt!1510501 () Int)

(assert (=> d!1253716 (= lt!1510501 (size!34591 (list!17054 (left!35016 t!4386))))))

(assert (=> d!1253716 (= lt!1510501 (ite ((_ is Empty!14241) (left!35016 t!4386)) 0 (ite ((_ is Leaf!22009) (left!35016 t!4386)) (csize!28713 (left!35016 t!4386)) (csize!28712 (left!35016 t!4386)))))))

(assert (=> d!1253716 (= (size!34593 (left!35016 t!4386)) lt!1510501)))

(declare-fun bs!599011 () Bool)

(assert (= bs!599011 d!1253716))

(assert (=> bs!599011 m!4846679))

(assert (=> bs!599011 m!4846679))

(declare-fun m!4847469 () Bool)

(assert (=> bs!599011 m!4847469))

(assert (=> d!1253484 d!1253716))

(declare-fun d!1253718 () Bool)

(declare-fun lt!1510502 () Int)

(assert (=> d!1253718 (>= lt!1510502 0)))

(declare-fun e!2645721 () Int)

(assert (=> d!1253718 (= lt!1510502 e!2645721)))

(declare-fun c!723545 () Bool)

(assert (=> d!1253718 (= c!723545 ((_ is Nil!47235) (t!353134 lt!1510427)))))

(assert (=> d!1253718 (= (size!34592 (t!353134 lt!1510427)) lt!1510502)))

(declare-fun b!4260309 () Bool)

(assert (=> b!4260309 (= e!2645721 0)))

(declare-fun b!4260310 () Bool)

(assert (=> b!4260310 (= e!2645721 (+ 1 (size!34592 (t!353134 (t!353134 lt!1510427)))))))

(assert (= (and d!1253718 c!723545) b!4260309))

(assert (= (and d!1253718 (not c!723545)) b!4260310))

(declare-fun m!4847471 () Bool)

(assert (=> b!4260310 m!4847471))

(assert (=> b!4260014 d!1253718))

(declare-fun d!1253720 () Bool)

(assert (=> d!1253720 (= (max!0 (height!1866 (left!35016 t!4386)) (height!1866 (right!35346 t!4386))) (ite (< (height!1866 (left!35016 t!4386)) (height!1866 (right!35346 t!4386))) (height!1866 (right!35346 t!4386)) (height!1866 (left!35016 t!4386))))))

(assert (=> b!4260060 d!1253720))

(assert (=> b!4260060 d!1253452))

(assert (=> b!4260060 d!1253476))

(declare-fun d!1253722 () Bool)

(assert (=> d!1253722 (= ($colon$colon!629 (map!9663 (t!353133 (t!353133 lt!1510402)) f!428) (dynLambda!20217 f!428 (h!52654 (t!353133 lt!1510402)))) (Cons!47235 (dynLambda!20217 f!428 (h!52654 (t!353133 lt!1510402))) (map!9663 (t!353133 (t!353133 lt!1510402)) f!428)))))

(assert (=> b!4260083 d!1253722))

(declare-fun d!1253724 () Bool)

(declare-fun lt!1510503 () List!47359)

(assert (=> d!1253724 (= (size!34592 lt!1510503) (size!34591 (t!353133 (t!353133 lt!1510402))))))

(declare-fun e!2645722 () List!47359)

(assert (=> d!1253724 (= lt!1510503 e!2645722)))

(declare-fun c!723546 () Bool)

(assert (=> d!1253724 (= c!723546 ((_ is Nil!47234) (t!353133 (t!353133 lt!1510402))))))

(assert (=> d!1253724 (= (map!9663 (t!353133 (t!353133 lt!1510402)) f!428) lt!1510503)))

(declare-fun b!4260311 () Bool)

(assert (=> b!4260311 (= e!2645722 Nil!47235)))

(declare-fun b!4260312 () Bool)

(assert (=> b!4260312 (= e!2645722 ($colon$colon!629 (map!9663 (t!353133 (t!353133 (t!353133 lt!1510402))) f!428) (dynLambda!20217 f!428 (h!52654 (t!353133 (t!353133 lt!1510402))))))))

(assert (= (and d!1253724 c!723546) b!4260311))

(assert (= (and d!1253724 (not c!723546)) b!4260312))

(declare-fun b_lambda!125675 () Bool)

(assert (=> (not b_lambda!125675) (not b!4260312)))

(declare-fun t!353171 () Bool)

(declare-fun tb!256875 () Bool)

(assert (=> (and start!408194 (= f!428 f!428) t!353171) tb!256875))

(declare-fun result!313428 () Bool)

(assert (=> tb!256875 (= result!313428 tp_is_empty!22865)))

(assert (=> b!4260312 t!353171))

(declare-fun b_and!337677 () Bool)

(assert (= b_and!337669 (and (=> t!353171 result!313428) b_and!337677)))

(declare-fun m!4847473 () Bool)

(assert (=> d!1253724 m!4847473))

(declare-fun m!4847475 () Bool)

(assert (=> d!1253724 m!4847475))

(declare-fun m!4847477 () Bool)

(assert (=> b!4260312 m!4847477))

(declare-fun m!4847479 () Bool)

(assert (=> b!4260312 m!4847479))

(assert (=> b!4260312 m!4847477))

(assert (=> b!4260312 m!4847479))

(declare-fun m!4847481 () Bool)

(assert (=> b!4260312 m!4847481))

(assert (=> b!4260083 d!1253724))

(declare-fun d!1253726 () Bool)

(declare-fun res!1751212 () Bool)

(declare-fun e!2645723 () Bool)

(assert (=> d!1253726 (=> (not res!1751212) (not e!2645723))))

(assert (=> d!1253726 (= res!1751212 (<= (size!34591 (list!17056 (xs!17547 (right!35346 (right!35346 t!4386))))) 512))))

(assert (=> d!1253726 (= (inv!62129 (right!35346 (right!35346 t!4386))) e!2645723)))

(declare-fun b!4260313 () Bool)

(declare-fun res!1751213 () Bool)

(assert (=> b!4260313 (=> (not res!1751213) (not e!2645723))))

(assert (=> b!4260313 (= res!1751213 (= (csize!28713 (right!35346 (right!35346 t!4386))) (size!34591 (list!17056 (xs!17547 (right!35346 (right!35346 t!4386)))))))))

(declare-fun b!4260314 () Bool)

(assert (=> b!4260314 (= e!2645723 (and (> (csize!28713 (right!35346 (right!35346 t!4386))) 0) (<= (csize!28713 (right!35346 (right!35346 t!4386))) 512)))))

(assert (= (and d!1253726 res!1751212) b!4260313))

(assert (= (and b!4260313 res!1751213) b!4260314))

(assert (=> d!1253726 m!4847137))

(assert (=> d!1253726 m!4847137))

(declare-fun m!4847483 () Bool)

(assert (=> d!1253726 m!4847483))

(assert (=> b!4260313 m!4847137))

(assert (=> b!4260313 m!4847137))

(assert (=> b!4260313 m!4847483))

(assert (=> b!4260056 d!1253726))

(declare-fun d!1253728 () Bool)

(assert (=> d!1253728 (= (list!17056 (xs!17547 (right!35346 (left!35016 t!4386)))) (innerList!14301 (xs!17547 (right!35346 (left!35016 t!4386)))))))

(assert (=> b!4260080 d!1253728))

(assert (=> b!4259952 d!1253528))

(assert (=> b!4259952 d!1253530))

(declare-fun d!1253730 () Bool)

(declare-fun lt!1510504 () Int)

(assert (=> d!1253730 (>= lt!1510504 0)))

(declare-fun e!2645724 () Int)

(assert (=> d!1253730 (= lt!1510504 e!2645724)))

(declare-fun c!723547 () Bool)

(assert (=> d!1253730 (= c!723547 ((_ is Nil!47234) (list!17056 (xs!17547 t!4386))))))

(assert (=> d!1253730 (= (size!34591 (list!17056 (xs!17547 t!4386))) lt!1510504)))

(declare-fun b!4260315 () Bool)

(assert (=> b!4260315 (= e!2645724 0)))

(declare-fun b!4260316 () Bool)

(assert (=> b!4260316 (= e!2645724 (+ 1 (size!34591 (t!353133 (list!17056 (xs!17547 t!4386))))))))

(assert (= (and d!1253730 c!723547) b!4260315))

(assert (= (and d!1253730 (not c!723547)) b!4260316))

(declare-fun m!4847485 () Bool)

(assert (=> b!4260316 m!4847485))

(assert (=> b!4260041 d!1253730))

(declare-fun d!1253732 () Bool)

(assert (=> d!1253732 (= (list!17056 (xs!17547 t!4386)) (innerList!14301 (xs!17547 t!4386)))))

(assert (=> b!4260041 d!1253732))

(declare-fun d!1253734 () Bool)

(assert (=> d!1253734 (= (inv!62127 (xs!17547 (left!35016 (left!35016 t!4386)))) (<= (size!34591 (innerList!14301 (xs!17547 (left!35016 (left!35016 t!4386))))) 2147483647))))

(declare-fun bs!599012 () Bool)

(assert (= bs!599012 d!1253734))

(declare-fun m!4847487 () Bool)

(assert (=> bs!599012 m!4847487))

(assert (=> b!4260117 d!1253734))

(declare-fun d!1253736 () Bool)

(declare-fun res!1751214 () Bool)

(declare-fun e!2645725 () Bool)

(assert (=> d!1253736 (=> (not res!1751214) (not e!2645725))))

(assert (=> d!1253736 (= res!1751214 (= (csize!28712 (right!35346 (right!35346 t!4386))) (+ (size!34593 (left!35016 (right!35346 (right!35346 t!4386)))) (size!34593 (right!35346 (right!35346 (right!35346 t!4386)))))))))

(assert (=> d!1253736 (= (inv!62128 (right!35346 (right!35346 t!4386))) e!2645725)))

(declare-fun b!4260317 () Bool)

(declare-fun res!1751215 () Bool)

(assert (=> b!4260317 (=> (not res!1751215) (not e!2645725))))

(assert (=> b!4260317 (= res!1751215 (and (not (= (left!35016 (right!35346 (right!35346 t!4386))) Empty!14241)) (not (= (right!35346 (right!35346 (right!35346 t!4386))) Empty!14241))))))

(declare-fun b!4260318 () Bool)

(declare-fun res!1751216 () Bool)

(assert (=> b!4260318 (=> (not res!1751216) (not e!2645725))))

(assert (=> b!4260318 (= res!1751216 (= (cheight!14452 (right!35346 (right!35346 t!4386))) (+ (max!0 (height!1866 (left!35016 (right!35346 (right!35346 t!4386)))) (height!1866 (right!35346 (right!35346 (right!35346 t!4386))))) 1)))))

(declare-fun b!4260319 () Bool)

(assert (=> b!4260319 (= e!2645725 (<= 0 (cheight!14452 (right!35346 (right!35346 t!4386)))))))

(assert (= (and d!1253736 res!1751214) b!4260317))

(assert (= (and b!4260317 res!1751215) b!4260318))

(assert (= (and b!4260318 res!1751216) b!4260319))

(declare-fun m!4847489 () Bool)

(assert (=> d!1253736 m!4847489))

(declare-fun m!4847491 () Bool)

(assert (=> d!1253736 m!4847491))

(declare-fun m!4847493 () Bool)

(assert (=> b!4260318 m!4847493))

(declare-fun m!4847495 () Bool)

(assert (=> b!4260318 m!4847495))

(assert (=> b!4260318 m!4847493))

(assert (=> b!4260318 m!4847495))

(declare-fun m!4847497 () Bool)

(assert (=> b!4260318 m!4847497))

(assert (=> b!4260052 d!1253736))

(declare-fun d!1253738 () Bool)

(declare-fun c!723548 () Bool)

(assert (=> d!1253738 (= c!723548 ((_ is Nil!47235) (t!353134 (map!9663 lt!1510403 f!428))))))

(declare-fun e!2645726 () (InoxSet B!2817))

(assert (=> d!1253738 (= (content!7439 (t!353134 (map!9663 lt!1510403 f!428))) e!2645726)))

(declare-fun b!4260320 () Bool)

(assert (=> b!4260320 (= e!2645726 ((as const (Array B!2817 Bool)) false))))

(declare-fun b!4260321 () Bool)

(assert (=> b!4260321 (= e!2645726 ((_ map or) (store ((as const (Array B!2817 Bool)) false) (h!52655 (t!353134 (map!9663 lt!1510403 f!428))) true) (content!7439 (t!353134 (t!353134 (map!9663 lt!1510403 f!428))))))))

(assert (= (and d!1253738 c!723548) b!4260320))

(assert (= (and d!1253738 (not c!723548)) b!4260321))

(declare-fun m!4847499 () Bool)

(assert (=> b!4260321 m!4847499))

(declare-fun m!4847501 () Bool)

(assert (=> b!4260321 m!4847501))

(assert (=> b!4259985 d!1253738))

(declare-fun d!1253740 () Bool)

(declare-fun lt!1510505 () Int)

(assert (=> d!1253740 (>= lt!1510505 0)))

(declare-fun e!2645727 () Int)

(assert (=> d!1253740 (= lt!1510505 e!2645727)))

(declare-fun c!723549 () Bool)

(assert (=> d!1253740 (= c!723549 ((_ is Nil!47234) (list!17056 (xs!17547 (right!35346 t!4386)))))))

(assert (=> d!1253740 (= (size!34591 (list!17056 (xs!17547 (right!35346 t!4386)))) lt!1510505)))

(declare-fun b!4260322 () Bool)

(assert (=> b!4260322 (= e!2645727 0)))

(declare-fun b!4260323 () Bool)

(assert (=> b!4260323 (= e!2645727 (+ 1 (size!34591 (t!353133 (list!17056 (xs!17547 (right!35346 t!4386)))))))))

(assert (= (and d!1253740 c!723549) b!4260322))

(assert (= (and d!1253740 (not c!723549)) b!4260323))

(declare-fun m!4847503 () Bool)

(assert (=> b!4260323 m!4847503))

(assert (=> d!1253486 d!1253740))

(assert (=> d!1253486 d!1253572))

(assert (=> b!4260022 d!1253676))

(declare-fun d!1253742 () Bool)

(declare-fun c!723550 () Bool)

(assert (=> d!1253742 (= c!723550 ((_ is Nil!47234) (t!353133 lt!1510416)))))

(declare-fun e!2645728 () (InoxSet T!79392))

(assert (=> d!1253742 (= (content!7437 (t!353133 lt!1510416)) e!2645728)))

(declare-fun b!4260324 () Bool)

(assert (=> b!4260324 (= e!2645728 ((as const (Array T!79392 Bool)) false))))

(declare-fun b!4260325 () Bool)

(assert (=> b!4260325 (= e!2645728 ((_ map or) (store ((as const (Array T!79392 Bool)) false) (h!52654 (t!353133 lt!1510416)) true) (content!7437 (t!353133 (t!353133 lt!1510416)))))))

(assert (= (and d!1253742 c!723550) b!4260324))

(assert (= (and d!1253742 (not c!723550)) b!4260325))

(declare-fun m!4847505 () Bool)

(assert (=> b!4260325 m!4847505))

(declare-fun m!4847507 () Bool)

(assert (=> b!4260325 m!4847507))

(assert (=> b!4260095 d!1253742))

(assert (=> d!1253520 d!1253730))

(assert (=> d!1253520 d!1253732))

(assert (=> d!1253534 d!1253716))

(declare-fun d!1253744 () Bool)

(declare-fun lt!1510506 () Int)

(assert (=> d!1253744 (= lt!1510506 (size!34591 (list!17054 (right!35346 t!4386))))))

(assert (=> d!1253744 (= lt!1510506 (ite ((_ is Empty!14241) (right!35346 t!4386)) 0 (ite ((_ is Leaf!22009) (right!35346 t!4386)) (csize!28713 (right!35346 t!4386)) (csize!28712 (right!35346 t!4386)))))))

(assert (=> d!1253744 (= (size!34593 (right!35346 t!4386)) lt!1510506)))

(declare-fun bs!599013 () Bool)

(assert (= bs!599013 d!1253744))

(assert (=> bs!599013 m!4846685))

(assert (=> bs!599013 m!4846685))

(declare-fun m!4847509 () Bool)

(assert (=> bs!599013 m!4847509))

(assert (=> d!1253534 d!1253744))

(declare-fun d!1253746 () Bool)

(declare-fun lt!1510507 () Int)

(assert (=> d!1253746 (>= lt!1510507 0)))

(declare-fun e!2645729 () Int)

(assert (=> d!1253746 (= lt!1510507 e!2645729)))

(declare-fun c!723551 () Bool)

(assert (=> d!1253746 (= c!723551 ((_ is Nil!47235) (t!353134 lt!1510428)))))

(assert (=> d!1253746 (= (size!34592 (t!353134 lt!1510428)) lt!1510507)))

(declare-fun b!4260326 () Bool)

(assert (=> b!4260326 (= e!2645729 0)))

(declare-fun b!4260327 () Bool)

(assert (=> b!4260327 (= e!2645729 (+ 1 (size!34592 (t!353134 (t!353134 lt!1510428)))))))

(assert (= (and d!1253746 c!723551) b!4260326))

(assert (= (and d!1253746 (not c!723551)) b!4260327))

(declare-fun m!4847511 () Bool)

(assert (=> b!4260327 m!4847511))

(assert (=> b!4259989 d!1253746))

(declare-fun d!1253748 () Bool)

(assert (=> d!1253748 (= (list!17056 (xs!17547 (right!35346 (right!35346 t!4386)))) (innerList!14301 (xs!17547 (right!35346 (right!35346 t!4386)))))))

(assert (=> b!4260112 d!1253748))

(declare-fun b!4260330 () Bool)

(declare-fun res!1751218 () Bool)

(declare-fun e!2645730 () Bool)

(assert (=> b!4260330 (=> (not res!1751218) (not e!2645730))))

(declare-fun lt!1510508 () List!47358)

(assert (=> b!4260330 (= res!1751218 (= (size!34591 lt!1510508) (+ (size!34591 (list!17054 (left!35016 (left!35016 (right!35346 t!4386))))) (size!34591 (list!17054 (right!35346 (left!35016 (right!35346 t!4386))))))))))

(declare-fun d!1253750 () Bool)

(assert (=> d!1253750 e!2645730))

(declare-fun res!1751217 () Bool)

(assert (=> d!1253750 (=> (not res!1751217) (not e!2645730))))

(assert (=> d!1253750 (= res!1751217 (= (content!7437 lt!1510508) ((_ map or) (content!7437 (list!17054 (left!35016 (left!35016 (right!35346 t!4386))))) (content!7437 (list!17054 (right!35346 (left!35016 (right!35346 t!4386))))))))))

(declare-fun e!2645731 () List!47358)

(assert (=> d!1253750 (= lt!1510508 e!2645731)))

(declare-fun c!723552 () Bool)

(assert (=> d!1253750 (= c!723552 ((_ is Nil!47234) (list!17054 (left!35016 (left!35016 (right!35346 t!4386))))))))

(assert (=> d!1253750 (= (++!12027 (list!17054 (left!35016 (left!35016 (right!35346 t!4386)))) (list!17054 (right!35346 (left!35016 (right!35346 t!4386))))) lt!1510508)))

(declare-fun b!4260328 () Bool)

(assert (=> b!4260328 (= e!2645731 (list!17054 (right!35346 (left!35016 (right!35346 t!4386)))))))

(declare-fun b!4260329 () Bool)

(assert (=> b!4260329 (= e!2645731 (Cons!47234 (h!52654 (list!17054 (left!35016 (left!35016 (right!35346 t!4386))))) (++!12027 (t!353133 (list!17054 (left!35016 (left!35016 (right!35346 t!4386))))) (list!17054 (right!35346 (left!35016 (right!35346 t!4386)))))))))

(declare-fun b!4260331 () Bool)

(assert (=> b!4260331 (= e!2645730 (or (not (= (list!17054 (right!35346 (left!35016 (right!35346 t!4386)))) Nil!47234)) (= lt!1510508 (list!17054 (left!35016 (left!35016 (right!35346 t!4386)))))))))

(assert (= (and d!1253750 c!723552) b!4260328))

(assert (= (and d!1253750 (not c!723552)) b!4260329))

(assert (= (and d!1253750 res!1751217) b!4260330))

(assert (= (and b!4260330 res!1751218) b!4260331))

(declare-fun m!4847513 () Bool)

(assert (=> b!4260330 m!4847513))

(assert (=> b!4260330 m!4847123))

(declare-fun m!4847515 () Bool)

(assert (=> b!4260330 m!4847515))

(assert (=> b!4260330 m!4847125))

(declare-fun m!4847517 () Bool)

(assert (=> b!4260330 m!4847517))

(declare-fun m!4847519 () Bool)

(assert (=> d!1253750 m!4847519))

(assert (=> d!1253750 m!4847123))

(declare-fun m!4847521 () Bool)

(assert (=> d!1253750 m!4847521))

(assert (=> d!1253750 m!4847125))

(declare-fun m!4847523 () Bool)

(assert (=> d!1253750 m!4847523))

(assert (=> b!4260329 m!4847125))

(declare-fun m!4847525 () Bool)

(assert (=> b!4260329 m!4847525))

(assert (=> b!4260109 d!1253750))

(declare-fun b!4260332 () Bool)

(declare-fun e!2645732 () List!47358)

(assert (=> b!4260332 (= e!2645732 Nil!47234)))

(declare-fun b!4260335 () Bool)

(declare-fun e!2645733 () List!47358)

(assert (=> b!4260335 (= e!2645733 (++!12027 (list!17054 (left!35016 (left!35016 (left!35016 (right!35346 t!4386))))) (list!17054 (right!35346 (left!35016 (left!35016 (right!35346 t!4386)))))))))

(declare-fun b!4260334 () Bool)

(assert (=> b!4260334 (= e!2645733 (list!17056 (xs!17547 (left!35016 (left!35016 (right!35346 t!4386))))))))

(declare-fun b!4260333 () Bool)

(assert (=> b!4260333 (= e!2645732 e!2645733)))

(declare-fun c!723554 () Bool)

(assert (=> b!4260333 (= c!723554 ((_ is Leaf!22009) (left!35016 (left!35016 (right!35346 t!4386)))))))

(declare-fun d!1253752 () Bool)

(declare-fun c!723553 () Bool)

(assert (=> d!1253752 (= c!723553 ((_ is Empty!14241) (left!35016 (left!35016 (right!35346 t!4386)))))))

(assert (=> d!1253752 (= (list!17054 (left!35016 (left!35016 (right!35346 t!4386)))) e!2645732)))

(assert (= (and d!1253752 c!723553) b!4260332))

(assert (= (and d!1253752 (not c!723553)) b!4260333))

(assert (= (and b!4260333 c!723554) b!4260334))

(assert (= (and b!4260333 (not c!723554)) b!4260335))

(declare-fun m!4847527 () Bool)

(assert (=> b!4260335 m!4847527))

(declare-fun m!4847529 () Bool)

(assert (=> b!4260335 m!4847529))

(assert (=> b!4260335 m!4847527))

(assert (=> b!4260335 m!4847529))

(declare-fun m!4847531 () Bool)

(assert (=> b!4260335 m!4847531))

(declare-fun m!4847533 () Bool)

(assert (=> b!4260334 m!4847533))

(assert (=> b!4260109 d!1253752))

(declare-fun b!4260336 () Bool)

(declare-fun e!2645734 () List!47358)

(assert (=> b!4260336 (= e!2645734 Nil!47234)))

(declare-fun b!4260339 () Bool)

(declare-fun e!2645735 () List!47358)

(assert (=> b!4260339 (= e!2645735 (++!12027 (list!17054 (left!35016 (right!35346 (left!35016 (right!35346 t!4386))))) (list!17054 (right!35346 (right!35346 (left!35016 (right!35346 t!4386)))))))))

(declare-fun b!4260338 () Bool)

(assert (=> b!4260338 (= e!2645735 (list!17056 (xs!17547 (right!35346 (left!35016 (right!35346 t!4386))))))))

(declare-fun b!4260337 () Bool)

(assert (=> b!4260337 (= e!2645734 e!2645735)))

(declare-fun c!723556 () Bool)

(assert (=> b!4260337 (= c!723556 ((_ is Leaf!22009) (right!35346 (left!35016 (right!35346 t!4386)))))))

(declare-fun d!1253754 () Bool)

(declare-fun c!723555 () Bool)

(assert (=> d!1253754 (= c!723555 ((_ is Empty!14241) (right!35346 (left!35016 (right!35346 t!4386)))))))

(assert (=> d!1253754 (= (list!17054 (right!35346 (left!35016 (right!35346 t!4386)))) e!2645734)))

(assert (= (and d!1253754 c!723555) b!4260336))

(assert (= (and d!1253754 (not c!723555)) b!4260337))

(assert (= (and b!4260337 c!723556) b!4260338))

(assert (= (and b!4260337 (not c!723556)) b!4260339))

(declare-fun m!4847535 () Bool)

(assert (=> b!4260339 m!4847535))

(declare-fun m!4847537 () Bool)

(assert (=> b!4260339 m!4847537))

(assert (=> b!4260339 m!4847535))

(assert (=> b!4260339 m!4847537))

(declare-fun m!4847539 () Bool)

(assert (=> b!4260339 m!4847539))

(declare-fun m!4847541 () Bool)

(assert (=> b!4260338 m!4847541))

(assert (=> b!4260109 d!1253754))

(declare-fun d!1253756 () Bool)

(assert (=> d!1253756 (= (height!1866 (left!35016 (left!35016 t!4386))) (ite ((_ is Empty!14241) (left!35016 (left!35016 t!4386))) 0 (ite ((_ is Leaf!22009) (left!35016 (left!35016 t!4386))) 1 (cheight!14452 (left!35016 (left!35016 t!4386))))))))

(assert (=> b!4260001 d!1253756))

(declare-fun d!1253758 () Bool)

(assert (=> d!1253758 (= (height!1866 (right!35346 (left!35016 t!4386))) (ite ((_ is Empty!14241) (right!35346 (left!35016 t!4386))) 0 (ite ((_ is Leaf!22009) (right!35346 (left!35016 t!4386))) 1 (cheight!14452 (right!35346 (left!35016 t!4386))))))))

(assert (=> b!4260001 d!1253758))

(declare-fun d!1253760 () Bool)

(declare-fun c!723557 () Bool)

(assert (=> d!1253760 (= c!723557 ((_ is Node!14241) (left!35016 (right!35346 (left!35016 t!4386)))))))

(declare-fun e!2645736 () Bool)

(assert (=> d!1253760 (= (inv!62126 (left!35016 (right!35346 (left!35016 t!4386)))) e!2645736)))

(declare-fun b!4260340 () Bool)

(assert (=> b!4260340 (= e!2645736 (inv!62128 (left!35016 (right!35346 (left!35016 t!4386)))))))

(declare-fun b!4260341 () Bool)

(declare-fun e!2645737 () Bool)

(assert (=> b!4260341 (= e!2645736 e!2645737)))

(declare-fun res!1751219 () Bool)

(assert (=> b!4260341 (= res!1751219 (not ((_ is Leaf!22009) (left!35016 (right!35346 (left!35016 t!4386))))))))

(assert (=> b!4260341 (=> res!1751219 e!2645737)))

(declare-fun b!4260342 () Bool)

(assert (=> b!4260342 (= e!2645737 (inv!62129 (left!35016 (right!35346 (left!35016 t!4386)))))))

(assert (= (and d!1253760 c!723557) b!4260340))

(assert (= (and d!1253760 (not c!723557)) b!4260341))

(assert (= (and b!4260341 (not res!1751219)) b!4260342))

(declare-fun m!4847543 () Bool)

(assert (=> b!4260340 m!4847543))

(declare-fun m!4847545 () Bool)

(assert (=> b!4260342 m!4847545))

(assert (=> b!4260119 d!1253760))

(declare-fun d!1253762 () Bool)

(declare-fun c!723558 () Bool)

(assert (=> d!1253762 (= c!723558 ((_ is Node!14241) (right!35346 (right!35346 (left!35016 t!4386)))))))

(declare-fun e!2645738 () Bool)

(assert (=> d!1253762 (= (inv!62126 (right!35346 (right!35346 (left!35016 t!4386)))) e!2645738)))

(declare-fun b!4260343 () Bool)

(assert (=> b!4260343 (= e!2645738 (inv!62128 (right!35346 (right!35346 (left!35016 t!4386)))))))

(declare-fun b!4260344 () Bool)

(declare-fun e!2645739 () Bool)

(assert (=> b!4260344 (= e!2645738 e!2645739)))

(declare-fun res!1751220 () Bool)

(assert (=> b!4260344 (= res!1751220 (not ((_ is Leaf!22009) (right!35346 (right!35346 (left!35016 t!4386))))))))

(assert (=> b!4260344 (=> res!1751220 e!2645739)))

(declare-fun b!4260345 () Bool)

(assert (=> b!4260345 (= e!2645739 (inv!62129 (right!35346 (right!35346 (left!35016 t!4386)))))))

(assert (= (and d!1253762 c!723558) b!4260343))

(assert (= (and d!1253762 (not c!723558)) b!4260344))

(assert (= (and b!4260344 (not res!1751220)) b!4260345))

(declare-fun m!4847547 () Bool)

(assert (=> b!4260343 m!4847547))

(declare-fun m!4847549 () Bool)

(assert (=> b!4260345 m!4847549))

(assert (=> b!4260119 d!1253762))

(declare-fun b!4260346 () Bool)

(declare-fun res!1751222 () Bool)

(declare-fun e!2645741 () Bool)

(assert (=> b!4260346 (=> (not res!1751222) (not e!2645741))))

(assert (=> b!4260346 (= res!1751222 (isBalanced!3800 (right!35346 (left!35016 (left!35016 t!4386)))))))

(declare-fun b!4260347 () Bool)

(declare-fun e!2645740 () Bool)

(assert (=> b!4260347 (= e!2645740 e!2645741)))

(declare-fun res!1751225 () Bool)

(assert (=> b!4260347 (=> (not res!1751225) (not e!2645741))))

(assert (=> b!4260347 (= res!1751225 (<= (- 1) (- (height!1866 (left!35016 (left!35016 (left!35016 t!4386)))) (height!1866 (right!35346 (left!35016 (left!35016 t!4386)))))))))

(declare-fun b!4260349 () Bool)

(declare-fun res!1751223 () Bool)

(assert (=> b!4260349 (=> (not res!1751223) (not e!2645741))))

(assert (=> b!4260349 (= res!1751223 (isBalanced!3800 (left!35016 (left!35016 (left!35016 t!4386)))))))

(declare-fun b!4260350 () Bool)

(declare-fun res!1751226 () Bool)

(assert (=> b!4260350 (=> (not res!1751226) (not e!2645741))))

(assert (=> b!4260350 (= res!1751226 (not (isEmpty!27974 (left!35016 (left!35016 (left!35016 t!4386))))))))

(declare-fun b!4260351 () Bool)

(declare-fun res!1751221 () Bool)

(assert (=> b!4260351 (=> (not res!1751221) (not e!2645741))))

(assert (=> b!4260351 (= res!1751221 (<= (- (height!1866 (left!35016 (left!35016 (left!35016 t!4386)))) (height!1866 (right!35346 (left!35016 (left!35016 t!4386))))) 1))))

(declare-fun b!4260348 () Bool)

(assert (=> b!4260348 (= e!2645741 (not (isEmpty!27974 (right!35346 (left!35016 (left!35016 t!4386))))))))

(declare-fun d!1253764 () Bool)

(declare-fun res!1751224 () Bool)

(assert (=> d!1253764 (=> res!1751224 e!2645740)))

(assert (=> d!1253764 (= res!1751224 (not ((_ is Node!14241) (left!35016 (left!35016 t!4386)))))))

(assert (=> d!1253764 (= (isBalanced!3800 (left!35016 (left!35016 t!4386))) e!2645740)))

(assert (= (and d!1253764 (not res!1751224)) b!4260347))

(assert (= (and b!4260347 res!1751225) b!4260351))

(assert (= (and b!4260351 res!1751221) b!4260349))

(assert (= (and b!4260349 res!1751223) b!4260346))

(assert (= (and b!4260346 res!1751222) b!4260350))

(assert (= (and b!4260350 res!1751226) b!4260348))

(declare-fun m!4847551 () Bool)

(assert (=> b!4260348 m!4847551))

(declare-fun m!4847553 () Bool)

(assert (=> b!4260346 m!4847553))

(assert (=> b!4260351 m!4847405))

(assert (=> b!4260351 m!4847407))

(declare-fun m!4847555 () Bool)

(assert (=> b!4260350 m!4847555))

(declare-fun m!4847557 () Bool)

(assert (=> b!4260349 m!4847557))

(assert (=> b!4260347 m!4847405))

(assert (=> b!4260347 m!4847407))

(assert (=> b!4259999 d!1253764))

(declare-fun d!1253766 () Bool)

(assert (=> d!1253766 (= ($colon$colon!629 (map!9663 (t!353133 (t!353133 lt!1510403)) f!428) (dynLambda!20217 f!428 (h!52654 (t!353133 lt!1510403)))) (Cons!47235 (dynLambda!20217 f!428 (h!52654 (t!353133 lt!1510403))) (map!9663 (t!353133 (t!353133 lt!1510403)) f!428)))))

(assert (=> b!4260009 d!1253766))

(declare-fun d!1253768 () Bool)

(declare-fun lt!1510509 () List!47359)

(assert (=> d!1253768 (= (size!34592 lt!1510509) (size!34591 (t!353133 (t!353133 lt!1510403))))))

(declare-fun e!2645742 () List!47359)

(assert (=> d!1253768 (= lt!1510509 e!2645742)))

(declare-fun c!723559 () Bool)

(assert (=> d!1253768 (= c!723559 ((_ is Nil!47234) (t!353133 (t!353133 lt!1510403))))))

(assert (=> d!1253768 (= (map!9663 (t!353133 (t!353133 lt!1510403)) f!428) lt!1510509)))

(declare-fun b!4260352 () Bool)

(assert (=> b!4260352 (= e!2645742 Nil!47235)))

(declare-fun b!4260353 () Bool)

(assert (=> b!4260353 (= e!2645742 ($colon$colon!629 (map!9663 (t!353133 (t!353133 (t!353133 lt!1510403))) f!428) (dynLambda!20217 f!428 (h!52654 (t!353133 (t!353133 lt!1510403))))))))

(assert (= (and d!1253768 c!723559) b!4260352))

(assert (= (and d!1253768 (not c!723559)) b!4260353))

(declare-fun b_lambda!125677 () Bool)

(assert (=> (not b_lambda!125677) (not b!4260353)))

(declare-fun t!353173 () Bool)

(declare-fun tb!256877 () Bool)

(assert (=> (and start!408194 (= f!428 f!428) t!353173) tb!256877))

(declare-fun result!313430 () Bool)

(assert (=> tb!256877 (= result!313430 tp_is_empty!22865)))

(assert (=> b!4260353 t!353173))

(declare-fun b_and!337679 () Bool)

(assert (= b_and!337677 (and (=> t!353173 result!313430) b_and!337679)))

(declare-fun m!4847559 () Bool)

(assert (=> d!1253768 m!4847559))

(assert (=> d!1253768 m!4847427))

(declare-fun m!4847561 () Bool)

(assert (=> b!4260353 m!4847561))

(declare-fun m!4847563 () Bool)

(assert (=> b!4260353 m!4847563))

(assert (=> b!4260353 m!4847561))

(assert (=> b!4260353 m!4847563))

(declare-fun m!4847565 () Bool)

(assert (=> b!4260353 m!4847565))

(assert (=> b!4260009 d!1253768))

(declare-fun d!1253770 () Bool)

(assert (=> d!1253770 (= (list!17056 (xs!17547 (left!35016 (left!35016 t!4386)))) (innerList!14301 (xs!17547 (left!35016 (left!35016 t!4386)))))))

(assert (=> b!4260072 d!1253770))

(declare-fun d!1253772 () Bool)

(declare-fun lt!1510510 () Bool)

(assert (=> d!1253772 (= lt!1510510 (isEmpty!27976 (list!17054 (left!35016 (right!35346 t!4386)))))))

(assert (=> d!1253772 (= lt!1510510 (= (size!34593 (left!35016 (right!35346 t!4386))) 0))))

(assert (=> d!1253772 (= (isEmpty!27974 (left!35016 (right!35346 t!4386))) lt!1510510)))

(declare-fun bs!599014 () Bool)

(assert (= bs!599014 d!1253772))

(assert (=> bs!599014 m!4846833))

(assert (=> bs!599014 m!4846833))

(declare-fun m!4847567 () Bool)

(assert (=> bs!599014 m!4847567))

(assert (=> bs!599014 m!4846973))

(assert (=> b!4260027 d!1253772))

(declare-fun d!1253774 () Bool)

(declare-fun lt!1510511 () Int)

(assert (=> d!1253774 (>= lt!1510511 0)))

(declare-fun e!2645743 () Int)

(assert (=> d!1253774 (= lt!1510511 e!2645743)))

(declare-fun c!723560 () Bool)

(assert (=> d!1253774 (= c!723560 ((_ is Nil!47235) (t!353134 (map!9663 lt!1510402 f!428))))))

(assert (=> d!1253774 (= (size!34592 (t!353134 (map!9663 lt!1510402 f!428))) lt!1510511)))

(declare-fun b!4260354 () Bool)

(assert (=> b!4260354 (= e!2645743 0)))

(declare-fun b!4260355 () Bool)

(assert (=> b!4260355 (= e!2645743 (+ 1 (size!34592 (t!353134 (t!353134 (map!9663 lt!1510402 f!428))))))))

(assert (= (and d!1253774 c!723560) b!4260354))

(assert (= (and d!1253774 (not c!723560)) b!4260355))

(declare-fun m!4847569 () Bool)

(assert (=> b!4260355 m!4847569))

(assert (=> b!4259977 d!1253774))

(declare-fun b!4260358 () Bool)

(declare-fun res!1751228 () Bool)

(declare-fun e!2645744 () Bool)

(assert (=> b!4260358 (=> (not res!1751228) (not e!2645744))))

(declare-fun lt!1510512 () List!47358)

(assert (=> b!4260358 (= res!1751228 (= (size!34591 lt!1510512) (+ (size!34591 (t!353133 (t!353133 lt!1510403))) (size!34591 lt!1510402))))))

(declare-fun d!1253776 () Bool)

(assert (=> d!1253776 e!2645744))

(declare-fun res!1751227 () Bool)

(assert (=> d!1253776 (=> (not res!1751227) (not e!2645744))))

(assert (=> d!1253776 (= res!1751227 (= (content!7437 lt!1510512) ((_ map or) (content!7437 (t!353133 (t!353133 lt!1510403))) (content!7437 lt!1510402))))))

(declare-fun e!2645745 () List!47358)

(assert (=> d!1253776 (= lt!1510512 e!2645745)))

(declare-fun c!723561 () Bool)

(assert (=> d!1253776 (= c!723561 ((_ is Nil!47234) (t!353133 (t!353133 lt!1510403))))))

(assert (=> d!1253776 (= (++!12027 (t!353133 (t!353133 lt!1510403)) lt!1510402) lt!1510512)))

(declare-fun b!4260356 () Bool)

(assert (=> b!4260356 (= e!2645745 lt!1510402)))

(declare-fun b!4260357 () Bool)

(assert (=> b!4260357 (= e!2645745 (Cons!47234 (h!52654 (t!353133 (t!353133 lt!1510403))) (++!12027 (t!353133 (t!353133 (t!353133 lt!1510403))) lt!1510402)))))

(declare-fun b!4260359 () Bool)

(assert (=> b!4260359 (= e!2645744 (or (not (= lt!1510402 Nil!47234)) (= lt!1510512 (t!353133 (t!353133 lt!1510403)))))))

(assert (= (and d!1253776 c!723561) b!4260356))

(assert (= (and d!1253776 (not c!723561)) b!4260357))

(assert (= (and d!1253776 res!1751227) b!4260358))

(assert (= (and b!4260358 res!1751228) b!4260359))

(declare-fun m!4847571 () Bool)

(assert (=> b!4260358 m!4847571))

(assert (=> b!4260358 m!4847427))

(assert (=> b!4260358 m!4846753))

(declare-fun m!4847573 () Bool)

(assert (=> d!1253776 m!4847573))

(assert (=> d!1253776 m!4847461))

(assert (=> d!1253776 m!4846759))

(declare-fun m!4847575 () Bool)

(assert (=> b!4260357 m!4847575))

(assert (=> b!4260030 d!1253776))

(declare-fun d!1253778 () Bool)

(declare-fun lt!1510513 () Bool)

(assert (=> d!1253778 (= lt!1510513 (isEmpty!27976 (list!17054 (right!35346 (right!35346 t!4386)))))))

(assert (=> d!1253778 (= lt!1510513 (= (size!34593 (right!35346 (right!35346 t!4386))) 0))))

(assert (=> d!1253778 (= (isEmpty!27974 (right!35346 (right!35346 t!4386))) lt!1510513)))

(declare-fun bs!599015 () Bool)

(assert (= bs!599015 d!1253778))

(assert (=> bs!599015 m!4846835))

(assert (=> bs!599015 m!4846835))

(declare-fun m!4847577 () Bool)

(assert (=> bs!599015 m!4847577))

(assert (=> bs!599015 m!4846975))

(assert (=> b!4260025 d!1253778))

(assert (=> b!4259997 d!1253756))

(assert (=> b!4259997 d!1253758))

(declare-fun d!1253780 () Bool)

(declare-fun lt!1510514 () Int)

(assert (=> d!1253780 (>= lt!1510514 0)))

(declare-fun e!2645746 () Int)

(assert (=> d!1253780 (= lt!1510514 e!2645746)))

(declare-fun c!723562 () Bool)

(assert (=> d!1253780 (= c!723562 ((_ is Nil!47234) (t!353133 lt!1510402)))))

(assert (=> d!1253780 (= (size!34591 (t!353133 lt!1510402)) lt!1510514)))

(declare-fun b!4260360 () Bool)

(assert (=> b!4260360 (= e!2645746 0)))

(declare-fun b!4260361 () Bool)

(assert (=> b!4260361 (= e!2645746 (+ 1 (size!34591 (t!353133 (t!353133 lt!1510402)))))))

(assert (= (and d!1253780 c!723562) b!4260360))

(assert (= (and d!1253780 (not c!723562)) b!4260361))

(assert (=> b!4260361 m!4847475))

(assert (=> b!4260016 d!1253780))

(declare-fun b!4260364 () Bool)

(declare-fun res!1751230 () Bool)

(declare-fun e!2645747 () Bool)

(assert (=> b!4260364 (=> (not res!1751230) (not e!2645747))))

(declare-fun lt!1510515 () List!47358)

(assert (=> b!4260364 (= res!1751230 (= (size!34591 lt!1510515) (+ (size!34591 (t!353133 (list!17054 (left!35016 (left!35016 t!4386))))) (size!34591 (list!17054 (right!35346 (left!35016 t!4386)))))))))

(declare-fun d!1253782 () Bool)

(assert (=> d!1253782 e!2645747))

(declare-fun res!1751229 () Bool)

(assert (=> d!1253782 (=> (not res!1751229) (not e!2645747))))

(assert (=> d!1253782 (= res!1751229 (= (content!7437 lt!1510515) ((_ map or) (content!7437 (t!353133 (list!17054 (left!35016 (left!35016 t!4386))))) (content!7437 (list!17054 (right!35346 (left!35016 t!4386)))))))))

(declare-fun e!2645748 () List!47358)

(assert (=> d!1253782 (= lt!1510515 e!2645748)))

(declare-fun c!723563 () Bool)

(assert (=> d!1253782 (= c!723563 ((_ is Nil!47234) (t!353133 (list!17054 (left!35016 (left!35016 t!4386))))))))

(assert (=> d!1253782 (= (++!12027 (t!353133 (list!17054 (left!35016 (left!35016 t!4386)))) (list!17054 (right!35346 (left!35016 t!4386)))) lt!1510515)))

(declare-fun b!4260362 () Bool)

(assert (=> b!4260362 (= e!2645748 (list!17054 (right!35346 (left!35016 t!4386))))))

(declare-fun b!4260363 () Bool)

(assert (=> b!4260363 (= e!2645748 (Cons!47234 (h!52654 (t!353133 (list!17054 (left!35016 (left!35016 t!4386))))) (++!12027 (t!353133 (t!353133 (list!17054 (left!35016 (left!35016 t!4386))))) (list!17054 (right!35346 (left!35016 t!4386))))))))

(declare-fun b!4260365 () Bool)

(assert (=> b!4260365 (= e!2645747 (or (not (= (list!17054 (right!35346 (left!35016 t!4386))) Nil!47234)) (= lt!1510515 (t!353133 (list!17054 (left!35016 (left!35016 t!4386)))))))))

(assert (= (and d!1253782 c!723563) b!4260362))

(assert (= (and d!1253782 (not c!723563)) b!4260363))

(assert (= (and d!1253782 res!1751229) b!4260364))

(assert (= (and b!4260364 res!1751230) b!4260365))

(declare-fun m!4847579 () Bool)

(assert (=> b!4260364 m!4847579))

(assert (=> b!4260364 m!4847433))

(assert (=> b!4260364 m!4846865))

(assert (=> b!4260364 m!4847061))

(declare-fun m!4847581 () Bool)

(assert (=> d!1253782 m!4847581))

(declare-fun m!4847583 () Bool)

(assert (=> d!1253782 m!4847583))

(assert (=> d!1253782 m!4846865))

(assert (=> d!1253782 m!4847067))

(assert (=> b!4260363 m!4846865))

(declare-fun m!4847585 () Bool)

(assert (=> b!4260363 m!4847585))

(assert (=> b!4260067 d!1253782))

(declare-fun d!1253784 () Bool)

(declare-fun lt!1510516 () Int)

(assert (=> d!1253784 (>= lt!1510516 0)))

(declare-fun e!2645749 () Int)

(assert (=> d!1253784 (= lt!1510516 e!2645749)))

(declare-fun c!723564 () Bool)

(assert (=> d!1253784 (= c!723564 ((_ is Nil!47234) (list!17056 (xs!17547 (left!35016 t!4386)))))))

(assert (=> d!1253784 (= (size!34591 (list!17056 (xs!17547 (left!35016 t!4386)))) lt!1510516)))

(declare-fun b!4260366 () Bool)

(assert (=> b!4260366 (= e!2645749 0)))

(declare-fun b!4260367 () Bool)

(assert (=> b!4260367 (= e!2645749 (+ 1 (size!34591 (t!353133 (list!17056 (xs!17547 (left!35016 t!4386)))))))))

(assert (= (and d!1253784 c!723564) b!4260366))

(assert (= (and d!1253784 (not c!723564)) b!4260367))

(declare-fun m!4847587 () Bool)

(assert (=> b!4260367 m!4847587))

(assert (=> b!4260114 d!1253784))

(assert (=> b!4260114 d!1253548))

(declare-fun d!1253786 () Bool)

(declare-fun lt!1510517 () Int)

(assert (=> d!1253786 (>= lt!1510517 0)))

(declare-fun e!2645750 () Int)

(assert (=> d!1253786 (= lt!1510517 e!2645750)))

(declare-fun c!723565 () Bool)

(assert (=> d!1253786 (= c!723565 ((_ is Nil!47235) lt!1510457))))

(assert (=> d!1253786 (= (size!34592 lt!1510457) lt!1510517)))

(declare-fun b!4260368 () Bool)

(assert (=> b!4260368 (= e!2645750 0)))

(declare-fun b!4260369 () Bool)

(assert (=> b!4260369 (= e!2645750 (+ 1 (size!34592 (t!353134 lt!1510457))))))

(assert (= (and d!1253786 c!723565) b!4260368))

(assert (= (and d!1253786 (not c!723565)) b!4260369))

(declare-fun m!4847589 () Bool)

(assert (=> b!4260369 m!4847589))

(assert (=> d!1253538 d!1253786))

(declare-fun d!1253788 () Bool)

(declare-fun lt!1510518 () Int)

(assert (=> d!1253788 (>= lt!1510518 0)))

(declare-fun e!2645751 () Int)

(assert (=> d!1253788 (= lt!1510518 e!2645751)))

(declare-fun c!723566 () Bool)

(assert (=> d!1253788 (= c!723566 ((_ is Nil!47234) (t!353133 (++!12027 lt!1510403 lt!1510402))))))

(assert (=> d!1253788 (= (size!34591 (t!353133 (++!12027 lt!1510403 lt!1510402))) lt!1510518)))

(declare-fun b!4260370 () Bool)

(assert (=> b!4260370 (= e!2645751 0)))

(declare-fun b!4260371 () Bool)

(assert (=> b!4260371 (= e!2645751 (+ 1 (size!34591 (t!353133 (t!353133 (++!12027 lt!1510403 lt!1510402))))))))

(assert (= (and d!1253788 c!723566) b!4260370))

(assert (= (and d!1253788 (not c!723566)) b!4260371))

(declare-fun m!4847591 () Bool)

(assert (=> b!4260371 m!4847591))

(assert (=> d!1253538 d!1253788))

(assert (=> d!1253512 d!1253414))

(assert (=> d!1253512 d!1253418))

(assert (=> d!1253512 d!1253426))

(assert (=> d!1253512 d!1253434))

(assert (=> d!1253512 d!1253442))

(declare-fun d!1253790 () Bool)

(declare-fun c!723567 () Bool)

(assert (=> d!1253790 (= c!723567 ((_ is Nil!47235) (t!353134 lt!1510423)))))

(declare-fun e!2645752 () (InoxSet B!2817))

(assert (=> d!1253790 (= (content!7439 (t!353134 lt!1510423)) e!2645752)))

(declare-fun b!4260372 () Bool)

(assert (=> b!4260372 (= e!2645752 ((as const (Array B!2817 Bool)) false))))

(declare-fun b!4260373 () Bool)

(assert (=> b!4260373 (= e!2645752 ((_ map or) (store ((as const (Array B!2817 Bool)) false) (h!52655 (t!353134 lt!1510423)) true) (content!7439 (t!353134 (t!353134 lt!1510423)))))))

(assert (= (and d!1253790 c!723567) b!4260372))

(assert (= (and d!1253790 (not c!723567)) b!4260373))

(declare-fun m!4847593 () Bool)

(assert (=> b!4260373 m!4847593))

(declare-fun m!4847595 () Bool)

(assert (=> b!4260373 m!4847595))

(assert (=> b!4259983 d!1253790))

(declare-fun b!4260374 () Bool)

(declare-fun res!1751232 () Bool)

(declare-fun e!2645754 () Bool)

(assert (=> b!4260374 (=> (not res!1751232) (not e!2645754))))

(assert (=> b!4260374 (= res!1751232 (isBalanced!3800 (right!35346 (right!35346 (right!35346 t!4386)))))))

(declare-fun b!4260375 () Bool)

(declare-fun e!2645753 () Bool)

(assert (=> b!4260375 (= e!2645753 e!2645754)))

(declare-fun res!1751235 () Bool)

(assert (=> b!4260375 (=> (not res!1751235) (not e!2645754))))

(assert (=> b!4260375 (= res!1751235 (<= (- 1) (- (height!1866 (left!35016 (right!35346 (right!35346 t!4386)))) (height!1866 (right!35346 (right!35346 (right!35346 t!4386)))))))))

(declare-fun b!4260377 () Bool)

(declare-fun res!1751233 () Bool)

(assert (=> b!4260377 (=> (not res!1751233) (not e!2645754))))

(assert (=> b!4260377 (= res!1751233 (isBalanced!3800 (left!35016 (right!35346 (right!35346 t!4386)))))))

(declare-fun b!4260378 () Bool)

(declare-fun res!1751236 () Bool)

(assert (=> b!4260378 (=> (not res!1751236) (not e!2645754))))

(assert (=> b!4260378 (= res!1751236 (not (isEmpty!27974 (left!35016 (right!35346 (right!35346 t!4386))))))))

(declare-fun b!4260379 () Bool)

(declare-fun res!1751231 () Bool)

(assert (=> b!4260379 (=> (not res!1751231) (not e!2645754))))

(assert (=> b!4260379 (= res!1751231 (<= (- (height!1866 (left!35016 (right!35346 (right!35346 t!4386)))) (height!1866 (right!35346 (right!35346 (right!35346 t!4386))))) 1))))

(declare-fun b!4260376 () Bool)

(assert (=> b!4260376 (= e!2645754 (not (isEmpty!27974 (right!35346 (right!35346 (right!35346 t!4386))))))))

(declare-fun d!1253792 () Bool)

(declare-fun res!1751234 () Bool)

(assert (=> d!1253792 (=> res!1751234 e!2645753)))

(assert (=> d!1253792 (= res!1751234 (not ((_ is Node!14241) (right!35346 (right!35346 t!4386)))))))

(assert (=> d!1253792 (= (isBalanced!3800 (right!35346 (right!35346 t!4386))) e!2645753)))

(assert (= (and d!1253792 (not res!1751234)) b!4260375))

(assert (= (and b!4260375 res!1751235) b!4260379))

(assert (= (and b!4260379 res!1751231) b!4260377))

(assert (= (and b!4260377 res!1751233) b!4260374))

(assert (= (and b!4260374 res!1751232) b!4260378))

(assert (= (and b!4260378 res!1751236) b!4260376))

(declare-fun m!4847597 () Bool)

(assert (=> b!4260376 m!4847597))

(declare-fun m!4847599 () Bool)

(assert (=> b!4260374 m!4847599))

(assert (=> b!4260379 m!4847493))

(assert (=> b!4260379 m!4847495))

(declare-fun m!4847601 () Bool)

(assert (=> b!4260378 m!4847601))

(declare-fun m!4847603 () Bool)

(assert (=> b!4260377 m!4847603))

(assert (=> b!4260375 m!4847493))

(assert (=> b!4260375 m!4847495))

(assert (=> b!4260023 d!1253792))

(declare-fun d!1253794 () Bool)

(declare-fun c!723568 () Bool)

(assert (=> d!1253794 (= c!723568 ((_ is Node!14241) (left!35016 (left!35016 (right!35346 t!4386)))))))

(declare-fun e!2645755 () Bool)

(assert (=> d!1253794 (= (inv!62126 (left!35016 (left!35016 (right!35346 t!4386)))) e!2645755)))

(declare-fun b!4260380 () Bool)

(assert (=> b!4260380 (= e!2645755 (inv!62128 (left!35016 (left!35016 (right!35346 t!4386)))))))

(declare-fun b!4260381 () Bool)

(declare-fun e!2645756 () Bool)

(assert (=> b!4260381 (= e!2645755 e!2645756)))

(declare-fun res!1751237 () Bool)

(assert (=> b!4260381 (= res!1751237 (not ((_ is Leaf!22009) (left!35016 (left!35016 (right!35346 t!4386))))))))

(assert (=> b!4260381 (=> res!1751237 e!2645756)))

(declare-fun b!4260382 () Bool)

(assert (=> b!4260382 (= e!2645756 (inv!62129 (left!35016 (left!35016 (right!35346 t!4386)))))))

(assert (= (and d!1253794 c!723568) b!4260380))

(assert (= (and d!1253794 (not c!723568)) b!4260381))

(assert (= (and b!4260381 (not res!1751237)) b!4260382))

(declare-fun m!4847605 () Bool)

(assert (=> b!4260380 m!4847605))

(declare-fun m!4847607 () Bool)

(assert (=> b!4260382 m!4847607))

(assert (=> b!4260123 d!1253794))

(declare-fun d!1253796 () Bool)

(declare-fun c!723569 () Bool)

(assert (=> d!1253796 (= c!723569 ((_ is Node!14241) (right!35346 (left!35016 (right!35346 t!4386)))))))

(declare-fun e!2645757 () Bool)

(assert (=> d!1253796 (= (inv!62126 (right!35346 (left!35016 (right!35346 t!4386)))) e!2645757)))

(declare-fun b!4260383 () Bool)

(assert (=> b!4260383 (= e!2645757 (inv!62128 (right!35346 (left!35016 (right!35346 t!4386)))))))

(declare-fun b!4260384 () Bool)

(declare-fun e!2645758 () Bool)

(assert (=> b!4260384 (= e!2645757 e!2645758)))

(declare-fun res!1751238 () Bool)

(assert (=> b!4260384 (= res!1751238 (not ((_ is Leaf!22009) (right!35346 (left!35016 (right!35346 t!4386))))))))

(assert (=> b!4260384 (=> res!1751238 e!2645758)))

(declare-fun b!4260385 () Bool)

(assert (=> b!4260385 (= e!2645758 (inv!62129 (right!35346 (left!35016 (right!35346 t!4386)))))))

(assert (= (and d!1253796 c!723569) b!4260383))

(assert (= (and d!1253796 (not c!723569)) b!4260384))

(assert (= (and b!4260384 (not res!1751238)) b!4260385))

(declare-fun m!4847609 () Bool)

(assert (=> b!4260383 m!4847609))

(declare-fun m!4847611 () Bool)

(assert (=> b!4260385 m!4847611))

(assert (=> b!4260123 d!1253796))

(declare-fun b!4260388 () Bool)

(declare-fun res!1751240 () Bool)

(declare-fun e!2645759 () Bool)

(assert (=> b!4260388 (=> (not res!1751240) (not e!2645759))))

(declare-fun lt!1510519 () List!47358)

(assert (=> b!4260388 (= res!1751240 (= (size!34591 lt!1510519) (+ (size!34591 (t!353133 (list!17054 (left!35016 (right!35346 t!4386))))) (size!34591 (list!17054 (right!35346 (right!35346 t!4386)))))))))

(declare-fun d!1253798 () Bool)

(assert (=> d!1253798 e!2645759))

(declare-fun res!1751239 () Bool)

(assert (=> d!1253798 (=> (not res!1751239) (not e!2645759))))

(assert (=> d!1253798 (= res!1751239 (= (content!7437 lt!1510519) ((_ map or) (content!7437 (t!353133 (list!17054 (left!35016 (right!35346 t!4386))))) (content!7437 (list!17054 (right!35346 (right!35346 t!4386)))))))))

(declare-fun e!2645760 () List!47358)

(assert (=> d!1253798 (= lt!1510519 e!2645760)))

(declare-fun c!723570 () Bool)

(assert (=> d!1253798 (= c!723570 ((_ is Nil!47234) (t!353133 (list!17054 (left!35016 (right!35346 t!4386))))))))

(assert (=> d!1253798 (= (++!12027 (t!353133 (list!17054 (left!35016 (right!35346 t!4386)))) (list!17054 (right!35346 (right!35346 t!4386)))) lt!1510519)))

(declare-fun b!4260386 () Bool)

(assert (=> b!4260386 (= e!2645760 (list!17054 (right!35346 (right!35346 t!4386))))))

(declare-fun b!4260387 () Bool)

(assert (=> b!4260387 (= e!2645760 (Cons!47234 (h!52654 (t!353133 (list!17054 (left!35016 (right!35346 t!4386))))) (++!12027 (t!353133 (t!353133 (list!17054 (left!35016 (right!35346 t!4386))))) (list!17054 (right!35346 (right!35346 t!4386))))))))

(declare-fun b!4260389 () Bool)

(assert (=> b!4260389 (= e!2645759 (or (not (= (list!17054 (right!35346 (right!35346 t!4386))) Nil!47234)) (= lt!1510519 (t!353133 (list!17054 (left!35016 (right!35346 t!4386)))))))))

(assert (= (and d!1253798 c!723570) b!4260386))

(assert (= (and d!1253798 (not c!723570)) b!4260387))

(assert (= (and d!1253798 res!1751239) b!4260388))

(assert (= (and b!4260388 res!1751240) b!4260389))

(declare-fun m!4847613 () Bool)

(assert (=> b!4260388 m!4847613))

(assert (=> b!4260388 m!4847447))

(assert (=> b!4260388 m!4846835))

(assert (=> b!4260388 m!4847111))

(declare-fun m!4847615 () Bool)

(assert (=> d!1253798 m!4847615))

(declare-fun m!4847617 () Bool)

(assert (=> d!1253798 m!4847617))

(assert (=> d!1253798 m!4846835))

(assert (=> d!1253798 m!4847117))

(assert (=> b!4260387 m!4846835))

(declare-fun m!4847619 () Bool)

(assert (=> b!4260387 m!4847619))

(assert (=> b!4260101 d!1253798))

(declare-fun d!1253800 () Bool)

(declare-fun c!723571 () Bool)

(assert (=> d!1253800 (= c!723571 ((_ is Node!14241) (left!35016 (right!35346 (right!35346 t!4386)))))))

(declare-fun e!2645761 () Bool)

(assert (=> d!1253800 (= (inv!62126 (left!35016 (right!35346 (right!35346 t!4386)))) e!2645761)))

(declare-fun b!4260390 () Bool)

(assert (=> b!4260390 (= e!2645761 (inv!62128 (left!35016 (right!35346 (right!35346 t!4386)))))))

(declare-fun b!4260391 () Bool)

(declare-fun e!2645762 () Bool)

(assert (=> b!4260391 (= e!2645761 e!2645762)))

(declare-fun res!1751241 () Bool)

(assert (=> b!4260391 (= res!1751241 (not ((_ is Leaf!22009) (left!35016 (right!35346 (right!35346 t!4386))))))))

(assert (=> b!4260391 (=> res!1751241 e!2645762)))

(declare-fun b!4260392 () Bool)

(assert (=> b!4260392 (= e!2645762 (inv!62129 (left!35016 (right!35346 (right!35346 t!4386)))))))

(assert (= (and d!1253800 c!723571) b!4260390))

(assert (= (and d!1253800 (not c!723571)) b!4260391))

(assert (= (and b!4260391 (not res!1751241)) b!4260392))

(declare-fun m!4847621 () Bool)

(assert (=> b!4260390 m!4847621))

(declare-fun m!4847623 () Bool)

(assert (=> b!4260392 m!4847623))

(assert (=> b!4260126 d!1253800))

(declare-fun d!1253802 () Bool)

(declare-fun c!723572 () Bool)

(assert (=> d!1253802 (= c!723572 ((_ is Node!14241) (right!35346 (right!35346 (right!35346 t!4386)))))))

(declare-fun e!2645763 () Bool)

(assert (=> d!1253802 (= (inv!62126 (right!35346 (right!35346 (right!35346 t!4386)))) e!2645763)))

(declare-fun b!4260393 () Bool)

(assert (=> b!4260393 (= e!2645763 (inv!62128 (right!35346 (right!35346 (right!35346 t!4386)))))))

(declare-fun b!4260394 () Bool)

(declare-fun e!2645764 () Bool)

(assert (=> b!4260394 (= e!2645763 e!2645764)))

(declare-fun res!1751242 () Bool)

(assert (=> b!4260394 (= res!1751242 (not ((_ is Leaf!22009) (right!35346 (right!35346 (right!35346 t!4386))))))))

(assert (=> b!4260394 (=> res!1751242 e!2645764)))

(declare-fun b!4260395 () Bool)

(assert (=> b!4260395 (= e!2645764 (inv!62129 (right!35346 (right!35346 (right!35346 t!4386)))))))

(assert (= (and d!1253802 c!723572) b!4260393))

(assert (= (and d!1253802 (not c!723572)) b!4260394))

(assert (= (and b!4260394 (not res!1751242)) b!4260395))

(declare-fun m!4847625 () Bool)

(assert (=> b!4260393 m!4847625))

(declare-fun m!4847627 () Bool)

(assert (=> b!4260395 m!4847627))

(assert (=> b!4260126 d!1253802))

(declare-fun b!4260398 () Bool)

(declare-fun res!1751243 () Bool)

(declare-fun e!2645765 () Bool)

(assert (=> b!4260398 (=> (not res!1751243) (not e!2645765))))

(declare-fun lt!1510520 () List!47359)

(assert (=> b!4260398 (= res!1751243 (= (size!34592 lt!1510520) (+ (size!34592 (t!353134 (t!353134 (map!9663 lt!1510403 f!428)))) (size!34592 (map!9663 lt!1510402 f!428)))))))

(declare-fun b!4260399 () Bool)

(assert (=> b!4260399 (= e!2645765 (or (not (= (map!9663 lt!1510402 f!428) Nil!47235)) (= lt!1510520 (t!353134 (t!353134 (map!9663 lt!1510403 f!428))))))))

(declare-fun d!1253804 () Bool)

(assert (=> d!1253804 e!2645765))

(declare-fun res!1751244 () Bool)

(assert (=> d!1253804 (=> (not res!1751244) (not e!2645765))))

(assert (=> d!1253804 (= res!1751244 (= (content!7439 lt!1510520) ((_ map or) (content!7439 (t!353134 (t!353134 (map!9663 lt!1510403 f!428)))) (content!7439 (map!9663 lt!1510402 f!428)))))))

(declare-fun e!2645766 () List!47359)

(assert (=> d!1253804 (= lt!1510520 e!2645766)))

(declare-fun c!723573 () Bool)

(assert (=> d!1253804 (= c!723573 ((_ is Nil!47235) (t!353134 (t!353134 (map!9663 lt!1510403 f!428)))))))

(assert (=> d!1253804 (= (++!12028 (t!353134 (t!353134 (map!9663 lt!1510403 f!428))) (map!9663 lt!1510402 f!428)) lt!1510520)))

(declare-fun b!4260397 () Bool)

(assert (=> b!4260397 (= e!2645766 (Cons!47235 (h!52655 (t!353134 (t!353134 (map!9663 lt!1510403 f!428)))) (++!12028 (t!353134 (t!353134 (t!353134 (map!9663 lt!1510403 f!428)))) (map!9663 lt!1510402 f!428))))))

(declare-fun b!4260396 () Bool)

(assert (=> b!4260396 (= e!2645766 (map!9663 lt!1510402 f!428))))

(assert (= (and d!1253804 c!723573) b!4260396))

(assert (= (and d!1253804 (not c!723573)) b!4260397))

(assert (= (and d!1253804 res!1751244) b!4260398))

(assert (= (and b!4260398 res!1751243) b!4260399))

(declare-fun m!4847629 () Bool)

(assert (=> b!4260398 m!4847629))

(assert (=> b!4260398 m!4847441))

(assert (=> b!4260398 m!4846675))

(assert (=> b!4260398 m!4846795))

(declare-fun m!4847631 () Bool)

(assert (=> d!1253804 m!4847631))

(assert (=> d!1253804 m!4847501))

(assert (=> d!1253804 m!4846675))

(assert (=> d!1253804 m!4846801))

(assert (=> b!4260397 m!4846675))

(declare-fun m!4847633 () Bool)

(assert (=> b!4260397 m!4847633))

(assert (=> b!4259965 d!1253804))

(assert (=> d!1253570 d!1253784))

(assert (=> d!1253570 d!1253548))

(declare-fun d!1253806 () Bool)

(assert (=> d!1253806 (= (max!0 (height!1866 (left!35016 (right!35346 t!4386))) (height!1866 (right!35346 (right!35346 t!4386)))) (ite (< (height!1866 (left!35016 (right!35346 t!4386))) (height!1866 (right!35346 (right!35346 t!4386)))) (height!1866 (right!35346 (right!35346 t!4386))) (height!1866 (left!35016 (right!35346 t!4386)))))))

(assert (=> b!4260011 d!1253806))

(assert (=> b!4260011 d!1253678))

(assert (=> b!4260011 d!1253680))

(declare-fun d!1253808 () Bool)

(assert (=> d!1253808 (= (max!0 (height!1866 (left!35016 (left!35016 t!4386))) (height!1866 (right!35346 (left!35016 t!4386)))) (ite (< (height!1866 (left!35016 (left!35016 t!4386))) (height!1866 (right!35346 (left!35016 t!4386)))) (height!1866 (right!35346 (left!35016 t!4386))) (height!1866 (left!35016 (left!35016 t!4386)))))))

(assert (=> b!4259962 d!1253808))

(assert (=> b!4259962 d!1253756))

(assert (=> b!4259962 d!1253758))

(declare-fun d!1253810 () Bool)

(declare-fun lt!1510521 () Int)

(assert (=> d!1253810 (= lt!1510521 (size!34591 (list!17054 (left!35016 (left!35016 t!4386)))))))

(assert (=> d!1253810 (= lt!1510521 (ite ((_ is Empty!14241) (left!35016 (left!35016 t!4386))) 0 (ite ((_ is Leaf!22009) (left!35016 (left!35016 t!4386))) (csize!28713 (left!35016 (left!35016 t!4386))) (csize!28712 (left!35016 (left!35016 t!4386))))))))

(assert (=> d!1253810 (= (size!34593 (left!35016 (left!35016 t!4386))) lt!1510521)))

(declare-fun bs!599016 () Bool)

(assert (= bs!599016 d!1253810))

(assert (=> bs!599016 m!4846861))

(assert (=> bs!599016 m!4846861))

(assert (=> bs!599016 m!4847059))

(assert (=> d!1253460 d!1253810))

(declare-fun d!1253812 () Bool)

(declare-fun lt!1510522 () Int)

(assert (=> d!1253812 (= lt!1510522 (size!34591 (list!17054 (right!35346 (left!35016 t!4386)))))))

(assert (=> d!1253812 (= lt!1510522 (ite ((_ is Empty!14241) (right!35346 (left!35016 t!4386))) 0 (ite ((_ is Leaf!22009) (right!35346 (left!35016 t!4386))) (csize!28713 (right!35346 (left!35016 t!4386))) (csize!28712 (right!35346 (left!35016 t!4386))))))))

(assert (=> d!1253812 (= (size!34593 (right!35346 (left!35016 t!4386))) lt!1510522)))

(declare-fun bs!599017 () Bool)

(assert (= bs!599017 d!1253812))

(assert (=> bs!599017 m!4846865))

(assert (=> bs!599017 m!4846865))

(assert (=> bs!599017 m!4847061))

(assert (=> d!1253460 d!1253812))

(declare-fun d!1253814 () Bool)

(declare-fun res!1751245 () Bool)

(declare-fun e!2645767 () Bool)

(assert (=> d!1253814 (=> (not res!1751245) (not e!2645767))))

(assert (=> d!1253814 (= res!1751245 (<= (size!34591 (list!17056 (xs!17547 (left!35016 (right!35346 t!4386))))) 512))))

(assert (=> d!1253814 (= (inv!62129 (left!35016 (right!35346 t!4386))) e!2645767)))

(declare-fun b!4260400 () Bool)

(declare-fun res!1751246 () Bool)

(assert (=> b!4260400 (=> (not res!1751246) (not e!2645767))))

(assert (=> b!4260400 (= res!1751246 (= (csize!28713 (left!35016 (right!35346 t!4386))) (size!34591 (list!17056 (xs!17547 (left!35016 (right!35346 t!4386)))))))))

(declare-fun b!4260401 () Bool)

(assert (=> b!4260401 (= e!2645767 (and (> (csize!28713 (left!35016 (right!35346 t!4386))) 0) (<= (csize!28713 (left!35016 (right!35346 t!4386))) 512)))))

(assert (= (and d!1253814 res!1751245) b!4260400))

(assert (= (and b!4260400 res!1751246) b!4260401))

(assert (=> d!1253814 m!4847129))

(assert (=> d!1253814 m!4847129))

(declare-fun m!4847635 () Bool)

(assert (=> d!1253814 m!4847635))

(assert (=> b!4260400 m!4847129))

(assert (=> b!4260400 m!4847129))

(assert (=> b!4260400 m!4847635))

(assert (=> b!4260051 d!1253814))

(declare-fun d!1253816 () Bool)

(declare-fun c!723574 () Bool)

(assert (=> d!1253816 (= c!723574 ((_ is Nil!47234) lt!1510453))))

(declare-fun e!2645768 () (InoxSet T!79392))

(assert (=> d!1253816 (= (content!7437 lt!1510453) e!2645768)))

(declare-fun b!4260402 () Bool)

(assert (=> b!4260402 (= e!2645768 ((as const (Array T!79392 Bool)) false))))

(declare-fun b!4260403 () Bool)

(assert (=> b!4260403 (= e!2645768 ((_ map or) (store ((as const (Array T!79392 Bool)) false) (h!52654 lt!1510453) true) (content!7437 (t!353133 lt!1510453))))))

(assert (= (and d!1253816 c!723574) b!4260402))

(assert (= (and d!1253816 (not c!723574)) b!4260403))

(declare-fun m!4847637 () Bool)

(assert (=> b!4260403 m!4847637))

(declare-fun m!4847639 () Bool)

(assert (=> b!4260403 m!4847639))

(assert (=> d!1253510 d!1253816))

(assert (=> d!1253510 d!1253710))

(assert (=> d!1253510 d!1253560))

(declare-fun d!1253818 () Bool)

(declare-fun lt!1510523 () Int)

(assert (=> d!1253818 (>= lt!1510523 0)))

(declare-fun e!2645769 () Int)

(assert (=> d!1253818 (= lt!1510523 e!2645769)))

(declare-fun c!723575 () Bool)

(assert (=> d!1253818 (= c!723575 ((_ is Nil!47235) (t!353134 lt!1510429)))))

(assert (=> d!1253818 (= (size!34592 (t!353134 lt!1510429)) lt!1510523)))

(declare-fun b!4260404 () Bool)

(assert (=> b!4260404 (= e!2645769 0)))

(declare-fun b!4260405 () Bool)

(assert (=> b!4260405 (= e!2645769 (+ 1 (size!34592 (t!353134 (t!353134 lt!1510429)))))))

(assert (= (and d!1253818 c!723575) b!4260404))

(assert (= (and d!1253818 (not c!723575)) b!4260405))

(declare-fun m!4847641 () Bool)

(assert (=> b!4260405 m!4847641))

(assert (=> b!4260040 d!1253818))

(declare-fun d!1253820 () Bool)

(declare-fun c!723576 () Bool)

(assert (=> d!1253820 (= c!723576 ((_ is Nil!47234) lt!1510459))))

(declare-fun e!2645770 () (InoxSet T!79392))

(assert (=> d!1253820 (= (content!7437 lt!1510459) e!2645770)))

(declare-fun b!4260406 () Bool)

(assert (=> b!4260406 (= e!2645770 ((as const (Array T!79392 Bool)) false))))

(declare-fun b!4260407 () Bool)

(assert (=> b!4260407 (= e!2645770 ((_ map or) (store ((as const (Array T!79392 Bool)) false) (h!52654 lt!1510459) true) (content!7437 (t!353133 lt!1510459))))))

(assert (= (and d!1253820 c!723576) b!4260406))

(assert (= (and d!1253820 (not c!723576)) b!4260407))

(declare-fun m!4847643 () Bool)

(assert (=> b!4260407 m!4847643))

(declare-fun m!4847645 () Bool)

(assert (=> b!4260407 m!4847645))

(assert (=> d!1253542 d!1253820))

(declare-fun d!1253822 () Bool)

(declare-fun c!723577 () Bool)

(assert (=> d!1253822 (= c!723577 ((_ is Nil!47234) (list!17054 (left!35016 (left!35016 t!4386)))))))

(declare-fun e!2645771 () (InoxSet T!79392))

(assert (=> d!1253822 (= (content!7437 (list!17054 (left!35016 (left!35016 t!4386)))) e!2645771)))

(declare-fun b!4260408 () Bool)

(assert (=> b!4260408 (= e!2645771 ((as const (Array T!79392 Bool)) false))))

(declare-fun b!4260409 () Bool)

(assert (=> b!4260409 (= e!2645771 ((_ map or) (store ((as const (Array T!79392 Bool)) false) (h!52654 (list!17054 (left!35016 (left!35016 t!4386)))) true) (content!7437 (t!353133 (list!17054 (left!35016 (left!35016 t!4386)))))))))

(assert (= (and d!1253822 c!723577) b!4260408))

(assert (= (and d!1253822 (not c!723577)) b!4260409))

(declare-fun m!4847647 () Bool)

(assert (=> b!4260409 m!4847647))

(assert (=> b!4260409 m!4847583))

(assert (=> d!1253542 d!1253822))

(declare-fun d!1253824 () Bool)

(declare-fun c!723578 () Bool)

(assert (=> d!1253824 (= c!723578 ((_ is Nil!47234) (list!17054 (right!35346 (left!35016 t!4386)))))))

(declare-fun e!2645772 () (InoxSet T!79392))

(assert (=> d!1253824 (= (content!7437 (list!17054 (right!35346 (left!35016 t!4386)))) e!2645772)))

(declare-fun b!4260410 () Bool)

(assert (=> b!4260410 (= e!2645772 ((as const (Array T!79392 Bool)) false))))

(declare-fun b!4260411 () Bool)

(assert (=> b!4260411 (= e!2645772 ((_ map or) (store ((as const (Array T!79392 Bool)) false) (h!52654 (list!17054 (right!35346 (left!35016 t!4386)))) true) (content!7437 (t!353133 (list!17054 (right!35346 (left!35016 t!4386)))))))))

(assert (= (and d!1253824 c!723578) b!4260410))

(assert (= (and d!1253824 (not c!723578)) b!4260411))

(declare-fun m!4847649 () Bool)

(assert (=> b!4260411 m!4847649))

(declare-fun m!4847651 () Bool)

(assert (=> b!4260411 m!4847651))

(assert (=> d!1253542 d!1253824))

(assert (=> b!4259949 d!1253522))

(assert (=> b!4259949 d!1253524))

(declare-fun b!4260414 () Bool)

(declare-fun res!1751248 () Bool)

(declare-fun e!2645773 () Bool)

(assert (=> b!4260414 (=> (not res!1751248) (not e!2645773))))

(declare-fun lt!1510524 () List!47358)

(assert (=> b!4260414 (= res!1751248 (= (size!34591 lt!1510524) (+ (size!34591 (list!17054 (left!35016 (right!35346 (left!35016 t!4386))))) (size!34591 (list!17054 (right!35346 (right!35346 (left!35016 t!4386))))))))))

(declare-fun d!1253826 () Bool)

(assert (=> d!1253826 e!2645773))

(declare-fun res!1751247 () Bool)

(assert (=> d!1253826 (=> (not res!1751247) (not e!2645773))))

(assert (=> d!1253826 (= res!1751247 (= (content!7437 lt!1510524) ((_ map or) (content!7437 (list!17054 (left!35016 (right!35346 (left!35016 t!4386))))) (content!7437 (list!17054 (right!35346 (right!35346 (left!35016 t!4386))))))))))

(declare-fun e!2645774 () List!47358)

(assert (=> d!1253826 (= lt!1510524 e!2645774)))

(declare-fun c!723579 () Bool)

(assert (=> d!1253826 (= c!723579 ((_ is Nil!47234) (list!17054 (left!35016 (right!35346 (left!35016 t!4386))))))))

(assert (=> d!1253826 (= (++!12027 (list!17054 (left!35016 (right!35346 (left!35016 t!4386)))) (list!17054 (right!35346 (right!35346 (left!35016 t!4386))))) lt!1510524)))

(declare-fun b!4260412 () Bool)

(assert (=> b!4260412 (= e!2645774 (list!17054 (right!35346 (right!35346 (left!35016 t!4386)))))))

(declare-fun b!4260413 () Bool)

(assert (=> b!4260413 (= e!2645774 (Cons!47234 (h!52654 (list!17054 (left!35016 (right!35346 (left!35016 t!4386))))) (++!12027 (t!353133 (list!17054 (left!35016 (right!35346 (left!35016 t!4386))))) (list!17054 (right!35346 (right!35346 (left!35016 t!4386)))))))))

(declare-fun b!4260415 () Bool)

(assert (=> b!4260415 (= e!2645773 (or (not (= (list!17054 (right!35346 (right!35346 (left!35016 t!4386)))) Nil!47234)) (= lt!1510524 (list!17054 (left!35016 (right!35346 (left!35016 t!4386)))))))))

(assert (= (and d!1253826 c!723579) b!4260412))

(assert (= (and d!1253826 (not c!723579)) b!4260413))

(assert (= (and d!1253826 res!1751247) b!4260414))

(assert (= (and b!4260414 res!1751248) b!4260415))

(declare-fun m!4847653 () Bool)

(assert (=> b!4260414 m!4847653))

(assert (=> b!4260414 m!4847079))

(declare-fun m!4847655 () Bool)

(assert (=> b!4260414 m!4847655))

(assert (=> b!4260414 m!4847081))

(declare-fun m!4847657 () Bool)

(assert (=> b!4260414 m!4847657))

(declare-fun m!4847659 () Bool)

(assert (=> d!1253826 m!4847659))

(assert (=> d!1253826 m!4847079))

(declare-fun m!4847661 () Bool)

(assert (=> d!1253826 m!4847661))

(assert (=> d!1253826 m!4847081))

(declare-fun m!4847663 () Bool)

(assert (=> d!1253826 m!4847663))

(assert (=> b!4260413 m!4847081))

(declare-fun m!4847665 () Bool)

(assert (=> b!4260413 m!4847665))

(assert (=> b!4260081 d!1253826))

(declare-fun b!4260416 () Bool)

(declare-fun e!2645775 () List!47358)

(assert (=> b!4260416 (= e!2645775 Nil!47234)))

(declare-fun b!4260419 () Bool)

(declare-fun e!2645776 () List!47358)

(assert (=> b!4260419 (= e!2645776 (++!12027 (list!17054 (left!35016 (left!35016 (right!35346 (left!35016 t!4386))))) (list!17054 (right!35346 (left!35016 (right!35346 (left!35016 t!4386)))))))))

(declare-fun b!4260418 () Bool)

(assert (=> b!4260418 (= e!2645776 (list!17056 (xs!17547 (left!35016 (right!35346 (left!35016 t!4386))))))))

(declare-fun b!4260417 () Bool)

(assert (=> b!4260417 (= e!2645775 e!2645776)))

(declare-fun c!723581 () Bool)

(assert (=> b!4260417 (= c!723581 ((_ is Leaf!22009) (left!35016 (right!35346 (left!35016 t!4386)))))))

(declare-fun d!1253828 () Bool)

(declare-fun c!723580 () Bool)

(assert (=> d!1253828 (= c!723580 ((_ is Empty!14241) (left!35016 (right!35346 (left!35016 t!4386)))))))

(assert (=> d!1253828 (= (list!17054 (left!35016 (right!35346 (left!35016 t!4386)))) e!2645775)))

(assert (= (and d!1253828 c!723580) b!4260416))

(assert (= (and d!1253828 (not c!723580)) b!4260417))

(assert (= (and b!4260417 c!723581) b!4260418))

(assert (= (and b!4260417 (not c!723581)) b!4260419))

(declare-fun m!4847667 () Bool)

(assert (=> b!4260419 m!4847667))

(declare-fun m!4847669 () Bool)

(assert (=> b!4260419 m!4847669))

(assert (=> b!4260419 m!4847667))

(assert (=> b!4260419 m!4847669))

(declare-fun m!4847671 () Bool)

(assert (=> b!4260419 m!4847671))

(declare-fun m!4847673 () Bool)

(assert (=> b!4260418 m!4847673))

(assert (=> b!4260081 d!1253828))

(declare-fun b!4260420 () Bool)

(declare-fun e!2645777 () List!47358)

(assert (=> b!4260420 (= e!2645777 Nil!47234)))

(declare-fun b!4260423 () Bool)

(declare-fun e!2645778 () List!47358)

(assert (=> b!4260423 (= e!2645778 (++!12027 (list!17054 (left!35016 (right!35346 (right!35346 (left!35016 t!4386))))) (list!17054 (right!35346 (right!35346 (right!35346 (left!35016 t!4386)))))))))

(declare-fun b!4260422 () Bool)

(assert (=> b!4260422 (= e!2645778 (list!17056 (xs!17547 (right!35346 (right!35346 (left!35016 t!4386))))))))

(declare-fun b!4260421 () Bool)

(assert (=> b!4260421 (= e!2645777 e!2645778)))

(declare-fun c!723583 () Bool)

(assert (=> b!4260421 (= c!723583 ((_ is Leaf!22009) (right!35346 (right!35346 (left!35016 t!4386)))))))

(declare-fun d!1253830 () Bool)

(declare-fun c!723582 () Bool)

(assert (=> d!1253830 (= c!723582 ((_ is Empty!14241) (right!35346 (right!35346 (left!35016 t!4386)))))))

(assert (=> d!1253830 (= (list!17054 (right!35346 (right!35346 (left!35016 t!4386)))) e!2645777)))

(assert (= (and d!1253830 c!723582) b!4260420))

(assert (= (and d!1253830 (not c!723582)) b!4260421))

(assert (= (and b!4260421 c!723583) b!4260422))

(assert (= (and b!4260421 (not c!723583)) b!4260423))

(declare-fun m!4847675 () Bool)

(assert (=> b!4260423 m!4847675))

(declare-fun m!4847677 () Bool)

(assert (=> b!4260423 m!4847677))

(assert (=> b!4260423 m!4847675))

(assert (=> b!4260423 m!4847677))

(declare-fun m!4847679 () Bool)

(assert (=> b!4260423 m!4847679))

(declare-fun m!4847681 () Bool)

(assert (=> b!4260422 m!4847681))

(assert (=> b!4260081 d!1253830))

(declare-fun d!1253832 () Bool)

(declare-fun lt!1510525 () Int)

(assert (=> d!1253832 (= lt!1510525 (size!34591 (list!17054 (left!35016 (right!35346 t!4386)))))))

(assert (=> d!1253832 (= lt!1510525 (ite ((_ is Empty!14241) (left!35016 (right!35346 t!4386))) 0 (ite ((_ is Leaf!22009) (left!35016 (right!35346 t!4386))) (csize!28713 (left!35016 (right!35346 t!4386))) (csize!28712 (left!35016 (right!35346 t!4386))))))))

(assert (=> d!1253832 (= (size!34593 (left!35016 (right!35346 t!4386))) lt!1510525)))

(declare-fun bs!599018 () Bool)

(assert (= bs!599018 d!1253832))

(assert (=> bs!599018 m!4846833))

(assert (=> bs!599018 m!4846833))

(assert (=> bs!599018 m!4847109))

(assert (=> d!1253494 d!1253832))

(declare-fun d!1253834 () Bool)

(declare-fun lt!1510526 () Int)

(assert (=> d!1253834 (= lt!1510526 (size!34591 (list!17054 (right!35346 (right!35346 t!4386)))))))

(assert (=> d!1253834 (= lt!1510526 (ite ((_ is Empty!14241) (right!35346 (right!35346 t!4386))) 0 (ite ((_ is Leaf!22009) (right!35346 (right!35346 t!4386))) (csize!28713 (right!35346 (right!35346 t!4386))) (csize!28712 (right!35346 (right!35346 t!4386))))))))

(assert (=> d!1253834 (= (size!34593 (right!35346 (right!35346 t!4386))) lt!1510526)))

(declare-fun bs!599019 () Bool)

(assert (= bs!599019 d!1253834))

(assert (=> bs!599019 m!4846835))

(assert (=> bs!599019 m!4846835))

(assert (=> bs!599019 m!4847111))

(assert (=> d!1253494 d!1253834))

(declare-fun d!1253836 () Bool)

(declare-fun res!1751249 () Bool)

(declare-fun e!2645779 () Bool)

(assert (=> d!1253836 (=> (not res!1751249) (not e!2645779))))

(assert (=> d!1253836 (= res!1751249 (= (csize!28712 (left!35016 (right!35346 t!4386))) (+ (size!34593 (left!35016 (left!35016 (right!35346 t!4386)))) (size!34593 (right!35346 (left!35016 (right!35346 t!4386)))))))))

(assert (=> d!1253836 (= (inv!62128 (left!35016 (right!35346 t!4386))) e!2645779)))

(declare-fun b!4260424 () Bool)

(declare-fun res!1751250 () Bool)

(assert (=> b!4260424 (=> (not res!1751250) (not e!2645779))))

(assert (=> b!4260424 (= res!1751250 (and (not (= (left!35016 (left!35016 (right!35346 t!4386))) Empty!14241)) (not (= (right!35346 (left!35016 (right!35346 t!4386))) Empty!14241))))))

(declare-fun b!4260425 () Bool)

(declare-fun res!1751251 () Bool)

(assert (=> b!4260425 (=> (not res!1751251) (not e!2645779))))

(assert (=> b!4260425 (= res!1751251 (= (cheight!14452 (left!35016 (right!35346 t!4386))) (+ (max!0 (height!1866 (left!35016 (left!35016 (right!35346 t!4386)))) (height!1866 (right!35346 (left!35016 (right!35346 t!4386))))) 1)))))

(declare-fun b!4260426 () Bool)

(assert (=> b!4260426 (= e!2645779 (<= 0 (cheight!14452 (left!35016 (right!35346 t!4386)))))))

(assert (= (and d!1253836 res!1751249) b!4260424))

(assert (= (and b!4260424 res!1751250) b!4260425))

(assert (= (and b!4260425 res!1751251) b!4260426))

(declare-fun m!4847683 () Bool)

(assert (=> d!1253836 m!4847683))

(declare-fun m!4847685 () Bool)

(assert (=> d!1253836 m!4847685))

(assert (=> b!4260425 m!4847393))

(assert (=> b!4260425 m!4847395))

(assert (=> b!4260425 m!4847393))

(assert (=> b!4260425 m!4847395))

(declare-fun m!4847687 () Bool)

(assert (=> b!4260425 m!4847687))

(assert (=> b!4260049 d!1253836))

(declare-fun d!1253838 () Bool)

(declare-fun c!723584 () Bool)

(assert (=> d!1253838 (= c!723584 ((_ is Nil!47234) lt!1510464))))

(declare-fun e!2645780 () (InoxSet T!79392))

(assert (=> d!1253838 (= (content!7437 lt!1510464) e!2645780)))

(declare-fun b!4260427 () Bool)

(assert (=> b!4260427 (= e!2645780 ((as const (Array T!79392 Bool)) false))))

(declare-fun b!4260428 () Bool)

(assert (=> b!4260428 (= e!2645780 ((_ map or) (store ((as const (Array T!79392 Bool)) false) (h!52654 lt!1510464) true) (content!7437 (t!353133 lt!1510464))))))

(assert (= (and d!1253838 c!723584) b!4260427))

(assert (= (and d!1253838 (not c!723584)) b!4260428))

(declare-fun m!4847689 () Bool)

(assert (=> b!4260428 m!4847689))

(declare-fun m!4847691 () Bool)

(assert (=> b!4260428 m!4847691))

(assert (=> d!1253562 d!1253838))

(declare-fun d!1253840 () Bool)

(declare-fun c!723585 () Bool)

(assert (=> d!1253840 (= c!723585 ((_ is Nil!47234) (list!17054 (left!35016 (right!35346 t!4386)))))))

(declare-fun e!2645781 () (InoxSet T!79392))

(assert (=> d!1253840 (= (content!7437 (list!17054 (left!35016 (right!35346 t!4386)))) e!2645781)))

(declare-fun b!4260429 () Bool)

(assert (=> b!4260429 (= e!2645781 ((as const (Array T!79392 Bool)) false))))

(declare-fun b!4260430 () Bool)

(assert (=> b!4260430 (= e!2645781 ((_ map or) (store ((as const (Array T!79392 Bool)) false) (h!52654 (list!17054 (left!35016 (right!35346 t!4386)))) true) (content!7437 (t!353133 (list!17054 (left!35016 (right!35346 t!4386)))))))))

(assert (= (and d!1253840 c!723585) b!4260429))

(assert (= (and d!1253840 (not c!723585)) b!4260430))

(declare-fun m!4847693 () Bool)

(assert (=> b!4260430 m!4847693))

(assert (=> b!4260430 m!4847617))

(assert (=> d!1253562 d!1253840))

(declare-fun d!1253842 () Bool)

(declare-fun c!723586 () Bool)

(assert (=> d!1253842 (= c!723586 ((_ is Nil!47234) (list!17054 (right!35346 (right!35346 t!4386)))))))

(declare-fun e!2645782 () (InoxSet T!79392))

(assert (=> d!1253842 (= (content!7437 (list!17054 (right!35346 (right!35346 t!4386)))) e!2645782)))

(declare-fun b!4260431 () Bool)

(assert (=> b!4260431 (= e!2645782 ((as const (Array T!79392 Bool)) false))))

(declare-fun b!4260432 () Bool)

(assert (=> b!4260432 (= e!2645782 ((_ map or) (store ((as const (Array T!79392 Bool)) false) (h!52654 (list!17054 (right!35346 (right!35346 t!4386)))) true) (content!7437 (t!353133 (list!17054 (right!35346 (right!35346 t!4386)))))))))

(assert (= (and d!1253842 c!723586) b!4260431))

(assert (= (and d!1253842 (not c!723586)) b!4260432))

(declare-fun m!4847695 () Bool)

(assert (=> b!4260432 m!4847695))

(declare-fun m!4847697 () Bool)

(assert (=> b!4260432 m!4847697))

(assert (=> d!1253562 d!1253842))

(declare-fun d!1253844 () Bool)

(declare-fun lt!1510527 () Int)

(assert (=> d!1253844 (>= lt!1510527 0)))

(declare-fun e!2645783 () Int)

(assert (=> d!1253844 (= lt!1510527 e!2645783)))

(declare-fun c!723587 () Bool)

(assert (=> d!1253844 (= c!723587 ((_ is Nil!47234) (t!353133 (innerList!14301 (xs!17547 t!4386)))))))

(assert (=> d!1253844 (= (size!34591 (t!353133 (innerList!14301 (xs!17547 t!4386)))) lt!1510527)))

(declare-fun b!4260433 () Bool)

(assert (=> b!4260433 (= e!2645783 0)))

(declare-fun b!4260434 () Bool)

(assert (=> b!4260434 (= e!2645783 (+ 1 (size!34591 (t!353133 (t!353133 (innerList!14301 (xs!17547 t!4386)))))))))

(assert (= (and d!1253844 c!723587) b!4260433))

(assert (= (and d!1253844 (not c!723587)) b!4260434))

(declare-fun m!4847699 () Bool)

(assert (=> b!4260434 m!4847699))

(assert (=> b!4260018 d!1253844))

(declare-fun d!1253846 () Bool)

(declare-fun c!723588 () Bool)

(assert (=> d!1253846 (= c!723588 ((_ is Node!14241) (left!35016 (left!35016 (left!35016 t!4386)))))))

(declare-fun e!2645784 () Bool)

(assert (=> d!1253846 (= (inv!62126 (left!35016 (left!35016 (left!35016 t!4386)))) e!2645784)))

(declare-fun b!4260435 () Bool)

(assert (=> b!4260435 (= e!2645784 (inv!62128 (left!35016 (left!35016 (left!35016 t!4386)))))))

(declare-fun b!4260436 () Bool)

(declare-fun e!2645785 () Bool)

(assert (=> b!4260436 (= e!2645784 e!2645785)))

(declare-fun res!1751252 () Bool)

(assert (=> b!4260436 (= res!1751252 (not ((_ is Leaf!22009) (left!35016 (left!35016 (left!35016 t!4386))))))))

(assert (=> b!4260436 (=> res!1751252 e!2645785)))

(declare-fun b!4260437 () Bool)

(assert (=> b!4260437 (= e!2645785 (inv!62129 (left!35016 (left!35016 (left!35016 t!4386)))))))

(assert (= (and d!1253846 c!723588) b!4260435))

(assert (= (and d!1253846 (not c!723588)) b!4260436))

(assert (= (and b!4260436 (not res!1751252)) b!4260437))

(declare-fun m!4847701 () Bool)

(assert (=> b!4260435 m!4847701))

(declare-fun m!4847703 () Bool)

(assert (=> b!4260437 m!4847703))

(assert (=> b!4260116 d!1253846))

(declare-fun d!1253848 () Bool)

(declare-fun c!723589 () Bool)

(assert (=> d!1253848 (= c!723589 ((_ is Node!14241) (right!35346 (left!35016 (left!35016 t!4386)))))))

(declare-fun e!2645786 () Bool)

(assert (=> d!1253848 (= (inv!62126 (right!35346 (left!35016 (left!35016 t!4386)))) e!2645786)))

(declare-fun b!4260438 () Bool)

(assert (=> b!4260438 (= e!2645786 (inv!62128 (right!35346 (left!35016 (left!35016 t!4386)))))))

(declare-fun b!4260439 () Bool)

(declare-fun e!2645787 () Bool)

(assert (=> b!4260439 (= e!2645786 e!2645787)))

(declare-fun res!1751253 () Bool)

(assert (=> b!4260439 (= res!1751253 (not ((_ is Leaf!22009) (right!35346 (left!35016 (left!35016 t!4386))))))))

(assert (=> b!4260439 (=> res!1751253 e!2645787)))

(declare-fun b!4260440 () Bool)

(assert (=> b!4260440 (= e!2645787 (inv!62129 (right!35346 (left!35016 (left!35016 t!4386)))))))

(assert (= (and d!1253848 c!723589) b!4260438))

(assert (= (and d!1253848 (not c!723589)) b!4260439))

(assert (= (and b!4260439 (not res!1751253)) b!4260440))

(declare-fun m!4847705 () Bool)

(assert (=> b!4260438 m!4847705))

(declare-fun m!4847707 () Bool)

(assert (=> b!4260440 m!4847707))

(assert (=> b!4260116 d!1253848))

(declare-fun d!1253850 () Bool)

(declare-fun c!723590 () Bool)

(assert (=> d!1253850 (= c!723590 ((_ is Nil!47235) lt!1510433))))

(declare-fun e!2645788 () (InoxSet B!2817))

(assert (=> d!1253850 (= (content!7439 lt!1510433) e!2645788)))

(declare-fun b!4260441 () Bool)

(assert (=> b!4260441 (= e!2645788 ((as const (Array B!2817 Bool)) false))))

(declare-fun b!4260442 () Bool)

(assert (=> b!4260442 (= e!2645788 ((_ map or) (store ((as const (Array B!2817 Bool)) false) (h!52655 lt!1510433) true) (content!7439 (t!353134 lt!1510433))))))

(assert (= (and d!1253850 c!723590) b!4260441))

(assert (= (and d!1253850 (not c!723590)) b!4260442))

(declare-fun m!4847709 () Bool)

(assert (=> b!4260442 m!4847709))

(declare-fun m!4847711 () Bool)

(assert (=> b!4260442 m!4847711))

(assert (=> d!1253462 d!1253850))

(assert (=> d!1253462 d!1253738))

(assert (=> d!1253462 d!1253474))

(assert (=> b!4259995 d!1253788))

(declare-fun d!1253852 () Bool)

(declare-fun lt!1510528 () Int)

(assert (=> d!1253852 (>= lt!1510528 0)))

(declare-fun e!2645789 () Int)

(assert (=> d!1253852 (= lt!1510528 e!2645789)))

(declare-fun c!723591 () Bool)

(assert (=> d!1253852 (= c!723591 ((_ is Nil!47235) lt!1510462))))

(assert (=> d!1253852 (= (size!34592 lt!1510462) lt!1510528)))

(declare-fun b!4260443 () Bool)

(assert (=> b!4260443 (= e!2645789 0)))

(declare-fun b!4260444 () Bool)

(assert (=> b!4260444 (= e!2645789 (+ 1 (size!34592 (t!353134 lt!1510462))))))

(assert (= (and d!1253852 c!723591) b!4260443))

(assert (= (and d!1253852 (not c!723591)) b!4260444))

(declare-fun m!4847713 () Bool)

(assert (=> b!4260444 m!4847713))

(assert (=> d!1253552 d!1253852))

(assert (=> d!1253552 d!1253780))

(assert (=> b!4260006 d!1253740))

(assert (=> b!4260006 d!1253572))

(declare-fun d!1253854 () Bool)

(declare-fun lt!1510529 () Int)

(assert (=> d!1253854 (>= lt!1510529 0)))

(declare-fun e!2645790 () Int)

(assert (=> d!1253854 (= lt!1510529 e!2645790)))

(declare-fun c!723592 () Bool)

(assert (=> d!1253854 (= c!723592 ((_ is Nil!47235) (t!353134 lt!1510423)))))

(assert (=> d!1253854 (= (size!34592 (t!353134 lt!1510423)) lt!1510529)))

(declare-fun b!4260445 () Bool)

(assert (=> b!4260445 (= e!2645790 0)))

(declare-fun b!4260446 () Bool)

(assert (=> b!4260446 (= e!2645790 (+ 1 (size!34592 (t!353134 (t!353134 lt!1510423)))))))

(assert (= (and d!1253854 c!723592) b!4260445))

(assert (= (and d!1253854 (not c!723592)) b!4260446))

(declare-fun m!4847715 () Bool)

(assert (=> b!4260446 m!4847715))

(assert (=> b!4259973 d!1253854))

(declare-fun b!4260449 () Bool)

(declare-fun res!1751255 () Bool)

(declare-fun e!2645791 () Bool)

(assert (=> b!4260449 (=> (not res!1751255) (not e!2645791))))

(declare-fun lt!1510530 () List!47358)

(assert (=> b!4260449 (= res!1751255 (= (size!34591 lt!1510530) (+ (size!34591 (list!17054 (left!35016 (right!35346 (right!35346 t!4386))))) (size!34591 (list!17054 (right!35346 (right!35346 (right!35346 t!4386))))))))))

(declare-fun d!1253856 () Bool)

(assert (=> d!1253856 e!2645791))

(declare-fun res!1751254 () Bool)

(assert (=> d!1253856 (=> (not res!1751254) (not e!2645791))))

(assert (=> d!1253856 (= res!1751254 (= (content!7437 lt!1510530) ((_ map or) (content!7437 (list!17054 (left!35016 (right!35346 (right!35346 t!4386))))) (content!7437 (list!17054 (right!35346 (right!35346 (right!35346 t!4386))))))))))

(declare-fun e!2645792 () List!47358)

(assert (=> d!1253856 (= lt!1510530 e!2645792)))

(declare-fun c!723593 () Bool)

(assert (=> d!1253856 (= c!723593 ((_ is Nil!47234) (list!17054 (left!35016 (right!35346 (right!35346 t!4386))))))))

(assert (=> d!1253856 (= (++!12027 (list!17054 (left!35016 (right!35346 (right!35346 t!4386)))) (list!17054 (right!35346 (right!35346 (right!35346 t!4386))))) lt!1510530)))

(declare-fun b!4260447 () Bool)

(assert (=> b!4260447 (= e!2645792 (list!17054 (right!35346 (right!35346 (right!35346 t!4386)))))))

(declare-fun b!4260448 () Bool)

(assert (=> b!4260448 (= e!2645792 (Cons!47234 (h!52654 (list!17054 (left!35016 (right!35346 (right!35346 t!4386))))) (++!12027 (t!353133 (list!17054 (left!35016 (right!35346 (right!35346 t!4386))))) (list!17054 (right!35346 (right!35346 (right!35346 t!4386)))))))))

(declare-fun b!4260450 () Bool)

(assert (=> b!4260450 (= e!2645791 (or (not (= (list!17054 (right!35346 (right!35346 (right!35346 t!4386)))) Nil!47234)) (= lt!1510530 (list!17054 (left!35016 (right!35346 (right!35346 t!4386)))))))))

(assert (= (and d!1253856 c!723593) b!4260447))

(assert (= (and d!1253856 (not c!723593)) b!4260448))

(assert (= (and d!1253856 res!1751254) b!4260449))

(assert (= (and b!4260449 res!1751255) b!4260450))

(declare-fun m!4847717 () Bool)

(assert (=> b!4260449 m!4847717))

(assert (=> b!4260449 m!4847131))

(declare-fun m!4847719 () Bool)

(assert (=> b!4260449 m!4847719))

(assert (=> b!4260449 m!4847133))

(declare-fun m!4847721 () Bool)

(assert (=> b!4260449 m!4847721))

(declare-fun m!4847723 () Bool)

(assert (=> d!1253856 m!4847723))

(assert (=> d!1253856 m!4847131))

(declare-fun m!4847725 () Bool)

(assert (=> d!1253856 m!4847725))

(assert (=> d!1253856 m!4847133))

(declare-fun m!4847727 () Bool)

(assert (=> d!1253856 m!4847727))

(assert (=> b!4260448 m!4847133))

(declare-fun m!4847729 () Bool)

(assert (=> b!4260448 m!4847729))

(assert (=> b!4260113 d!1253856))

(declare-fun b!4260451 () Bool)

(declare-fun e!2645793 () List!47358)

(assert (=> b!4260451 (= e!2645793 Nil!47234)))

(declare-fun b!4260454 () Bool)

(declare-fun e!2645794 () List!47358)

(assert (=> b!4260454 (= e!2645794 (++!12027 (list!17054 (left!35016 (left!35016 (right!35346 (right!35346 t!4386))))) (list!17054 (right!35346 (left!35016 (right!35346 (right!35346 t!4386)))))))))

(declare-fun b!4260453 () Bool)

(assert (=> b!4260453 (= e!2645794 (list!17056 (xs!17547 (left!35016 (right!35346 (right!35346 t!4386))))))))

(declare-fun b!4260452 () Bool)

(assert (=> b!4260452 (= e!2645793 e!2645794)))

(declare-fun c!723595 () Bool)

(assert (=> b!4260452 (= c!723595 ((_ is Leaf!22009) (left!35016 (right!35346 (right!35346 t!4386)))))))

(declare-fun d!1253858 () Bool)

(declare-fun c!723594 () Bool)

(assert (=> d!1253858 (= c!723594 ((_ is Empty!14241) (left!35016 (right!35346 (right!35346 t!4386)))))))

(assert (=> d!1253858 (= (list!17054 (left!35016 (right!35346 (right!35346 t!4386)))) e!2645793)))

(assert (= (and d!1253858 c!723594) b!4260451))

(assert (= (and d!1253858 (not c!723594)) b!4260452))

(assert (= (and b!4260452 c!723595) b!4260453))

(assert (= (and b!4260452 (not c!723595)) b!4260454))

(declare-fun m!4847731 () Bool)

(assert (=> b!4260454 m!4847731))

(declare-fun m!4847733 () Bool)

(assert (=> b!4260454 m!4847733))

(assert (=> b!4260454 m!4847731))

(assert (=> b!4260454 m!4847733))

(declare-fun m!4847735 () Bool)

(assert (=> b!4260454 m!4847735))

(declare-fun m!4847737 () Bool)

(assert (=> b!4260453 m!4847737))

(assert (=> b!4260113 d!1253858))

(declare-fun b!4260455 () Bool)

(declare-fun e!2645795 () List!47358)

(assert (=> b!4260455 (= e!2645795 Nil!47234)))

(declare-fun b!4260458 () Bool)

(declare-fun e!2645796 () List!47358)

(assert (=> b!4260458 (= e!2645796 (++!12027 (list!17054 (left!35016 (right!35346 (right!35346 (right!35346 t!4386))))) (list!17054 (right!35346 (right!35346 (right!35346 (right!35346 t!4386)))))))))

(declare-fun b!4260457 () Bool)

(assert (=> b!4260457 (= e!2645796 (list!17056 (xs!17547 (right!35346 (right!35346 (right!35346 t!4386))))))))

(declare-fun b!4260456 () Bool)

(assert (=> b!4260456 (= e!2645795 e!2645796)))

(declare-fun c!723597 () Bool)

(assert (=> b!4260456 (= c!723597 ((_ is Leaf!22009) (right!35346 (right!35346 (right!35346 t!4386)))))))

(declare-fun d!1253860 () Bool)

(declare-fun c!723596 () Bool)

(assert (=> d!1253860 (= c!723596 ((_ is Empty!14241) (right!35346 (right!35346 (right!35346 t!4386)))))))

(assert (=> d!1253860 (= (list!17054 (right!35346 (right!35346 (right!35346 t!4386)))) e!2645795)))

(assert (= (and d!1253860 c!723596) b!4260455))

(assert (= (and d!1253860 (not c!723596)) b!4260456))

(assert (= (and b!4260456 c!723597) b!4260457))

(assert (= (and b!4260456 (not c!723597)) b!4260458))

(declare-fun m!4847739 () Bool)

(assert (=> b!4260458 m!4847739))

(declare-fun m!4847741 () Bool)

(assert (=> b!4260458 m!4847741))

(assert (=> b!4260458 m!4847739))

(assert (=> b!4260458 m!4847741))

(declare-fun m!4847743 () Bool)

(assert (=> b!4260458 m!4847743))

(declare-fun m!4847745 () Bool)

(assert (=> b!4260457 m!4847745))

(assert (=> b!4260113 d!1253860))

(declare-fun d!1253862 () Bool)

(declare-fun lt!1510531 () Bool)

(assert (=> d!1253862 (= lt!1510531 (isEmpty!27976 (list!17054 (left!35016 (left!35016 t!4386)))))))

(assert (=> d!1253862 (= lt!1510531 (= (size!34593 (left!35016 (left!35016 t!4386))) 0))))

(assert (=> d!1253862 (= (isEmpty!27974 (left!35016 (left!35016 t!4386))) lt!1510531)))

(declare-fun bs!599020 () Bool)

(assert (= bs!599020 d!1253862))

(assert (=> bs!599020 m!4846861))

(assert (=> bs!599020 m!4846861))

(declare-fun m!4847747 () Bool)

(assert (=> bs!599020 m!4847747))

(assert (=> bs!599020 m!4846907))

(assert (=> b!4260000 d!1253862))

(declare-fun d!1253864 () Bool)

(assert (=> d!1253864 (= ($colon$colon!629 (map!9663 (t!353133 (t!353133 (++!12027 lt!1510403 lt!1510402))) f!428) (dynLambda!20217 f!428 (h!52654 (t!353133 (++!12027 lt!1510403 lt!1510402))))) (Cons!47235 (dynLambda!20217 f!428 (h!52654 (t!353133 (++!12027 lt!1510403 lt!1510402)))) (map!9663 (t!353133 (t!353133 (++!12027 lt!1510403 lt!1510402))) f!428)))))

(assert (=> b!4260063 d!1253864))

(declare-fun d!1253866 () Bool)

(declare-fun lt!1510532 () List!47359)

(assert (=> d!1253866 (= (size!34592 lt!1510532) (size!34591 (t!353133 (t!353133 (++!12027 lt!1510403 lt!1510402)))))))

(declare-fun e!2645797 () List!47359)

(assert (=> d!1253866 (= lt!1510532 e!2645797)))

(declare-fun c!723598 () Bool)

(assert (=> d!1253866 (= c!723598 ((_ is Nil!47234) (t!353133 (t!353133 (++!12027 lt!1510403 lt!1510402)))))))

(assert (=> d!1253866 (= (map!9663 (t!353133 (t!353133 (++!12027 lt!1510403 lt!1510402))) f!428) lt!1510532)))

(declare-fun b!4260459 () Bool)

(assert (=> b!4260459 (= e!2645797 Nil!47235)))

(declare-fun b!4260460 () Bool)

(assert (=> b!4260460 (= e!2645797 ($colon$colon!629 (map!9663 (t!353133 (t!353133 (t!353133 (++!12027 lt!1510403 lt!1510402)))) f!428) (dynLambda!20217 f!428 (h!52654 (t!353133 (t!353133 (++!12027 lt!1510403 lt!1510402)))))))))

(assert (= (and d!1253866 c!723598) b!4260459))

(assert (= (and d!1253866 (not c!723598)) b!4260460))

(declare-fun b_lambda!125679 () Bool)

(assert (=> (not b_lambda!125679) (not b!4260460)))

(declare-fun t!353175 () Bool)

(declare-fun tb!256879 () Bool)

(assert (=> (and start!408194 (= f!428 f!428) t!353175) tb!256879))

(declare-fun result!313432 () Bool)

(assert (=> tb!256879 (= result!313432 tp_is_empty!22865)))

(assert (=> b!4260460 t!353175))

(declare-fun b_and!337681 () Bool)

(assert (= b_and!337679 (and (=> t!353175 result!313432) b_and!337681)))

(declare-fun m!4847749 () Bool)

(assert (=> d!1253866 m!4847749))

(assert (=> d!1253866 m!4847591))

(declare-fun m!4847751 () Bool)

(assert (=> b!4260460 m!4847751))

(declare-fun m!4847753 () Bool)

(assert (=> b!4260460 m!4847753))

(assert (=> b!4260460 m!4847751))

(assert (=> b!4260460 m!4847753))

(declare-fun m!4847755 () Bool)

(assert (=> b!4260460 m!4847755))

(assert (=> b!4260063 d!1253866))

(declare-fun d!1253868 () Bool)

(assert (=> d!1253868 (= (list!17056 (xs!17547 (left!35016 (right!35346 t!4386)))) (innerList!14301 (xs!17547 (left!35016 (right!35346 t!4386)))))))

(assert (=> b!4260108 d!1253868))

(declare-fun d!1253870 () Bool)

(declare-fun lt!1510533 () Int)

(assert (=> d!1253870 (>= lt!1510533 0)))

(declare-fun e!2645798 () Int)

(assert (=> d!1253870 (= lt!1510533 e!2645798)))

(declare-fun c!723599 () Bool)

(assert (=> d!1253870 (= c!723599 ((_ is Nil!47234) (innerList!14301 (xs!17547 (right!35346 t!4386)))))))

(assert (=> d!1253870 (= (size!34591 (innerList!14301 (xs!17547 (right!35346 t!4386)))) lt!1510533)))

(declare-fun b!4260461 () Bool)

(assert (=> b!4260461 (= e!2645798 0)))

(declare-fun b!4260462 () Bool)

(assert (=> b!4260462 (= e!2645798 (+ 1 (size!34591 (t!353133 (innerList!14301 (xs!17547 (right!35346 t!4386)))))))))

(assert (= (and d!1253870 c!723599) b!4260461))

(assert (= (and d!1253870 (not c!723599)) b!4260462))

(declare-fun m!4847757 () Bool)

(assert (=> b!4260462 m!4847757))

(assert (=> d!1253532 d!1253870))

(declare-fun d!1253872 () Bool)

(assert (=> d!1253872 (= (isEmpty!27976 (list!17054 (right!35346 t!4386))) ((_ is Nil!47234) (list!17054 (right!35346 t!4386))))))

(assert (=> d!1253492 d!1253872))

(assert (=> d!1253492 d!1253436))

(assert (=> d!1253492 d!1253744))

(declare-fun b!4260465 () Bool)

(declare-fun res!1751257 () Bool)

(declare-fun e!2645799 () Bool)

(assert (=> b!4260465 (=> (not res!1751257) (not e!2645799))))

(declare-fun lt!1510534 () List!47358)

(assert (=> b!4260465 (= res!1751257 (= (size!34591 lt!1510534) (+ (size!34591 (list!17054 (left!35016 (left!35016 (left!35016 t!4386))))) (size!34591 (list!17054 (right!35346 (left!35016 (left!35016 t!4386))))))))))

(declare-fun d!1253874 () Bool)

(assert (=> d!1253874 e!2645799))

(declare-fun res!1751256 () Bool)

(assert (=> d!1253874 (=> (not res!1751256) (not e!2645799))))

(assert (=> d!1253874 (= res!1751256 (= (content!7437 lt!1510534) ((_ map or) (content!7437 (list!17054 (left!35016 (left!35016 (left!35016 t!4386))))) (content!7437 (list!17054 (right!35346 (left!35016 (left!35016 t!4386))))))))))

(declare-fun e!2645800 () List!47358)

(assert (=> d!1253874 (= lt!1510534 e!2645800)))

(declare-fun c!723600 () Bool)

(assert (=> d!1253874 (= c!723600 ((_ is Nil!47234) (list!17054 (left!35016 (left!35016 (left!35016 t!4386))))))))

(assert (=> d!1253874 (= (++!12027 (list!17054 (left!35016 (left!35016 (left!35016 t!4386)))) (list!17054 (right!35346 (left!35016 (left!35016 t!4386))))) lt!1510534)))

(declare-fun b!4260463 () Bool)

(assert (=> b!4260463 (= e!2645800 (list!17054 (right!35346 (left!35016 (left!35016 t!4386)))))))

(declare-fun b!4260464 () Bool)

(assert (=> b!4260464 (= e!2645800 (Cons!47234 (h!52654 (list!17054 (left!35016 (left!35016 (left!35016 t!4386))))) (++!12027 (t!353133 (list!17054 (left!35016 (left!35016 (left!35016 t!4386))))) (list!17054 (right!35346 (left!35016 (left!35016 t!4386)))))))))

(declare-fun b!4260466 () Bool)

(assert (=> b!4260466 (= e!2645799 (or (not (= (list!17054 (right!35346 (left!35016 (left!35016 t!4386)))) Nil!47234)) (= lt!1510534 (list!17054 (left!35016 (left!35016 (left!35016 t!4386)))))))))

(assert (= (and d!1253874 c!723600) b!4260463))

(assert (= (and d!1253874 (not c!723600)) b!4260464))

(assert (= (and d!1253874 res!1751256) b!4260465))

(assert (= (and b!4260465 res!1751257) b!4260466))

(declare-fun m!4847759 () Bool)

(assert (=> b!4260465 m!4847759))

(assert (=> b!4260465 m!4847071))

(declare-fun m!4847761 () Bool)

(assert (=> b!4260465 m!4847761))

(assert (=> b!4260465 m!4847073))

(declare-fun m!4847763 () Bool)

(assert (=> b!4260465 m!4847763))

(declare-fun m!4847765 () Bool)

(assert (=> d!1253874 m!4847765))

(assert (=> d!1253874 m!4847071))

(declare-fun m!4847767 () Bool)

(assert (=> d!1253874 m!4847767))

(assert (=> d!1253874 m!4847073))

(declare-fun m!4847769 () Bool)

(assert (=> d!1253874 m!4847769))

(assert (=> b!4260464 m!4847073))

(declare-fun m!4847771 () Bool)

(assert (=> b!4260464 m!4847771))

(assert (=> b!4260073 d!1253874))

(declare-fun b!4260467 () Bool)

(declare-fun e!2645801 () List!47358)

(assert (=> b!4260467 (= e!2645801 Nil!47234)))

(declare-fun b!4260470 () Bool)

(declare-fun e!2645802 () List!47358)

(assert (=> b!4260470 (= e!2645802 (++!12027 (list!17054 (left!35016 (left!35016 (left!35016 (left!35016 t!4386))))) (list!17054 (right!35346 (left!35016 (left!35016 (left!35016 t!4386)))))))))

(declare-fun b!4260469 () Bool)

(assert (=> b!4260469 (= e!2645802 (list!17056 (xs!17547 (left!35016 (left!35016 (left!35016 t!4386))))))))

(declare-fun b!4260468 () Bool)

(assert (=> b!4260468 (= e!2645801 e!2645802)))

(declare-fun c!723602 () Bool)

(assert (=> b!4260468 (= c!723602 ((_ is Leaf!22009) (left!35016 (left!35016 (left!35016 t!4386)))))))

(declare-fun d!1253876 () Bool)

(declare-fun c!723601 () Bool)

(assert (=> d!1253876 (= c!723601 ((_ is Empty!14241) (left!35016 (left!35016 (left!35016 t!4386)))))))

(assert (=> d!1253876 (= (list!17054 (left!35016 (left!35016 (left!35016 t!4386)))) e!2645801)))

(assert (= (and d!1253876 c!723601) b!4260467))

(assert (= (and d!1253876 (not c!723601)) b!4260468))

(assert (= (and b!4260468 c!723602) b!4260469))

(assert (= (and b!4260468 (not c!723602)) b!4260470))

(declare-fun m!4847773 () Bool)

(assert (=> b!4260470 m!4847773))

(declare-fun m!4847775 () Bool)

(assert (=> b!4260470 m!4847775))

(assert (=> b!4260470 m!4847773))

(assert (=> b!4260470 m!4847775))

(declare-fun m!4847777 () Bool)

(assert (=> b!4260470 m!4847777))

(declare-fun m!4847779 () Bool)

(assert (=> b!4260469 m!4847779))

(assert (=> b!4260073 d!1253876))

(declare-fun b!4260471 () Bool)

(declare-fun e!2645803 () List!47358)

(assert (=> b!4260471 (= e!2645803 Nil!47234)))

(declare-fun b!4260474 () Bool)

(declare-fun e!2645804 () List!47358)

(assert (=> b!4260474 (= e!2645804 (++!12027 (list!17054 (left!35016 (right!35346 (left!35016 (left!35016 t!4386))))) (list!17054 (right!35346 (right!35346 (left!35016 (left!35016 t!4386)))))))))

(declare-fun b!4260473 () Bool)

(assert (=> b!4260473 (= e!2645804 (list!17056 (xs!17547 (right!35346 (left!35016 (left!35016 t!4386))))))))

(declare-fun b!4260472 () Bool)

(assert (=> b!4260472 (= e!2645803 e!2645804)))

(declare-fun c!723604 () Bool)

(assert (=> b!4260472 (= c!723604 ((_ is Leaf!22009) (right!35346 (left!35016 (left!35016 t!4386)))))))

(declare-fun d!1253878 () Bool)

(declare-fun c!723603 () Bool)

(assert (=> d!1253878 (= c!723603 ((_ is Empty!14241) (right!35346 (left!35016 (left!35016 t!4386)))))))

(assert (=> d!1253878 (= (list!17054 (right!35346 (left!35016 (left!35016 t!4386)))) e!2645803)))

(assert (= (and d!1253878 c!723603) b!4260471))

(assert (= (and d!1253878 (not c!723603)) b!4260472))

(assert (= (and b!4260472 c!723604) b!4260473))

(assert (= (and b!4260472 (not c!723604)) b!4260474))

(declare-fun m!4847781 () Bool)

(assert (=> b!4260474 m!4847781))

(declare-fun m!4847783 () Bool)

(assert (=> b!4260474 m!4847783))

(assert (=> b!4260474 m!4847781))

(assert (=> b!4260474 m!4847783))

(declare-fun m!4847785 () Bool)

(assert (=> b!4260474 m!4847785))

(declare-fun m!4847787 () Bool)

(assert (=> b!4260473 m!4847787))

(assert (=> b!4260073 d!1253878))

(assert (=> b!4260028 d!1253678))

(assert (=> b!4260028 d!1253680))

(declare-fun d!1253880 () Bool)

(declare-fun c!723605 () Bool)

(assert (=> d!1253880 (= c!723605 ((_ is Nil!47234) (t!353133 lt!1510402)))))

(declare-fun e!2645805 () (InoxSet T!79392))

(assert (=> d!1253880 (= (content!7437 (t!353133 lt!1510402)) e!2645805)))

(declare-fun b!4260475 () Bool)

(assert (=> b!4260475 (= e!2645805 ((as const (Array T!79392 Bool)) false))))

(declare-fun b!4260476 () Bool)

(assert (=> b!4260476 (= e!2645805 ((_ map or) (store ((as const (Array T!79392 Bool)) false) (h!52654 (t!353133 lt!1510402)) true) (content!7437 (t!353133 (t!353133 lt!1510402)))))))

(assert (= (and d!1253880 c!723605) b!4260475))

(assert (= (and d!1253880 (not c!723605)) b!4260476))

(declare-fun m!4847789 () Bool)

(assert (=> b!4260476 m!4847789))

(declare-fun m!4847791 () Bool)

(assert (=> b!4260476 m!4847791))

(assert (=> b!4260099 d!1253880))

(declare-fun d!1253882 () Bool)

(declare-fun res!1751258 () Bool)

(declare-fun e!2645806 () Bool)

(assert (=> d!1253882 (=> (not res!1751258) (not e!2645806))))

(assert (=> d!1253882 (= res!1751258 (<= (size!34591 (list!17056 (xs!17547 (left!35016 (left!35016 t!4386))))) 512))))

(assert (=> d!1253882 (= (inv!62129 (left!35016 (left!35016 t!4386))) e!2645806)))

(declare-fun b!4260477 () Bool)

(declare-fun res!1751259 () Bool)

(assert (=> b!4260477 (=> (not res!1751259) (not e!2645806))))

(assert (=> b!4260477 (= res!1751259 (= (csize!28713 (left!35016 (left!35016 t!4386))) (size!34591 (list!17056 (xs!17547 (left!35016 (left!35016 t!4386)))))))))

(declare-fun b!4260478 () Bool)

(assert (=> b!4260478 (= e!2645806 (and (> (csize!28713 (left!35016 (left!35016 t!4386))) 0) (<= (csize!28713 (left!35016 (left!35016 t!4386))) 512)))))

(assert (= (and d!1253882 res!1751258) b!4260477))

(assert (= (and b!4260477 res!1751259) b!4260478))

(assert (=> d!1253882 m!4847077))

(assert (=> d!1253882 m!4847077))

(declare-fun m!4847793 () Bool)

(assert (=> d!1253882 m!4847793))

(assert (=> b!4260477 m!4847077))

(assert (=> b!4260477 m!4847077))

(assert (=> b!4260477 m!4847793))

(assert (=> b!4260045 d!1253882))

(declare-fun d!1253884 () Bool)

(assert (=> d!1253884 (= (inv!62127 (xs!17547 (right!35346 (left!35016 t!4386)))) (<= (size!34591 (innerList!14301 (xs!17547 (right!35346 (left!35016 t!4386))))) 2147483647))))

(declare-fun bs!599021 () Bool)

(assert (= bs!599021 d!1253884))

(declare-fun m!4847795 () Bool)

(assert (=> bs!599021 m!4847795))

(assert (=> b!4260120 d!1253884))

(declare-fun b!4260479 () Bool)

(declare-fun e!2645807 () Bool)

(declare-fun tp!1306875 () Bool)

(assert (=> b!4260479 (= e!2645807 (and tp_is_empty!22869 tp!1306875))))

(assert (=> b!4260118 (= tp!1306846 e!2645807)))

(assert (= (and b!4260118 ((_ is Cons!47234) (innerList!14301 (xs!17547 (left!35016 (left!35016 t!4386)))))) b!4260479))

(declare-fun e!2645809 () Bool)

(declare-fun tp!1306876 () Bool)

(declare-fun tp!1306878 () Bool)

(declare-fun b!4260480 () Bool)

(assert (=> b!4260480 (= e!2645809 (and (inv!62126 (left!35016 (left!35016 (right!35346 (right!35346 t!4386))))) tp!1306878 (inv!62126 (right!35346 (left!35016 (right!35346 (right!35346 t!4386))))) tp!1306876))))

(declare-fun b!4260482 () Bool)

(declare-fun e!2645808 () Bool)

(declare-fun tp!1306877 () Bool)

(assert (=> b!4260482 (= e!2645808 tp!1306877)))

(declare-fun b!4260481 () Bool)

(assert (=> b!4260481 (= e!2645809 (and (inv!62127 (xs!17547 (left!35016 (right!35346 (right!35346 t!4386))))) e!2645808))))

(assert (=> b!4260126 (= tp!1306857 (and (inv!62126 (left!35016 (right!35346 (right!35346 t!4386)))) e!2645809))))

(assert (= (and b!4260126 ((_ is Node!14241) (left!35016 (right!35346 (right!35346 t!4386))))) b!4260480))

(assert (= b!4260481 b!4260482))

(assert (= (and b!4260126 ((_ is Leaf!22009) (left!35016 (right!35346 (right!35346 t!4386))))) b!4260481))

(declare-fun m!4847797 () Bool)

(assert (=> b!4260480 m!4847797))

(declare-fun m!4847799 () Bool)

(assert (=> b!4260480 m!4847799))

(declare-fun m!4847801 () Bool)

(assert (=> b!4260481 m!4847801))

(assert (=> b!4260126 m!4847159))

(declare-fun e!2645811 () Bool)

(declare-fun tp!1306881 () Bool)

(declare-fun tp!1306879 () Bool)

(declare-fun b!4260483 () Bool)

(assert (=> b!4260483 (= e!2645811 (and (inv!62126 (left!35016 (right!35346 (right!35346 (right!35346 t!4386))))) tp!1306881 (inv!62126 (right!35346 (right!35346 (right!35346 (right!35346 t!4386))))) tp!1306879))))

(declare-fun b!4260485 () Bool)

(declare-fun e!2645810 () Bool)

(declare-fun tp!1306880 () Bool)

(assert (=> b!4260485 (= e!2645810 tp!1306880)))

(declare-fun b!4260484 () Bool)

(assert (=> b!4260484 (= e!2645811 (and (inv!62127 (xs!17547 (right!35346 (right!35346 (right!35346 t!4386))))) e!2645810))))

(assert (=> b!4260126 (= tp!1306855 (and (inv!62126 (right!35346 (right!35346 (right!35346 t!4386)))) e!2645811))))

(assert (= (and b!4260126 ((_ is Node!14241) (right!35346 (right!35346 (right!35346 t!4386))))) b!4260483))

(assert (= b!4260484 b!4260485))

(assert (= (and b!4260126 ((_ is Leaf!22009) (right!35346 (right!35346 (right!35346 t!4386))))) b!4260484))

(declare-fun m!4847803 () Bool)

(assert (=> b!4260483 m!4847803))

(declare-fun m!4847805 () Bool)

(assert (=> b!4260483 m!4847805))

(declare-fun m!4847807 () Bool)

(assert (=> b!4260484 m!4847807))

(assert (=> b!4260126 m!4847161))

(declare-fun b!4260486 () Bool)

(declare-fun e!2645812 () Bool)

(declare-fun tp!1306882 () Bool)

(assert (=> b!4260486 (= e!2645812 (and tp_is_empty!22869 tp!1306882))))

(assert (=> b!4260129 (= tp!1306858 e!2645812)))

(assert (= (and b!4260129 ((_ is Cons!47234) (t!353133 (t!353133 (innerList!14301 (xs!17547 t!4386)))))) b!4260486))

(declare-fun b!4260487 () Bool)

(declare-fun e!2645813 () Bool)

(declare-fun tp!1306883 () Bool)

(assert (=> b!4260487 (= e!2645813 (and tp_is_empty!22869 tp!1306883))))

(assert (=> b!4260125 (= tp!1306853 e!2645813)))

(assert (= (and b!4260125 ((_ is Cons!47234) (innerList!14301 (xs!17547 (left!35016 (right!35346 t!4386)))))) b!4260487))

(declare-fun b!4260488 () Bool)

(declare-fun e!2645814 () Bool)

(declare-fun tp!1306884 () Bool)

(assert (=> b!4260488 (= e!2645814 (and tp_is_empty!22869 tp!1306884))))

(assert (=> b!4260121 (= tp!1306849 e!2645814)))

(assert (= (and b!4260121 ((_ is Cons!47234) (innerList!14301 (xs!17547 (right!35346 (left!35016 t!4386)))))) b!4260488))

(declare-fun b!4260489 () Bool)

(declare-fun tp!1306887 () Bool)

(declare-fun tp!1306885 () Bool)

(declare-fun e!2645816 () Bool)

(assert (=> b!4260489 (= e!2645816 (and (inv!62126 (left!35016 (left!35016 (left!35016 (left!35016 t!4386))))) tp!1306887 (inv!62126 (right!35346 (left!35016 (left!35016 (left!35016 t!4386))))) tp!1306885))))

(declare-fun b!4260491 () Bool)

(declare-fun e!2645815 () Bool)

(declare-fun tp!1306886 () Bool)

(assert (=> b!4260491 (= e!2645815 tp!1306886)))

(declare-fun b!4260490 () Bool)

(assert (=> b!4260490 (= e!2645816 (and (inv!62127 (xs!17547 (left!35016 (left!35016 (left!35016 t!4386))))) e!2645815))))

(assert (=> b!4260116 (= tp!1306847 (and (inv!62126 (left!35016 (left!35016 (left!35016 t!4386)))) e!2645816))))

(assert (= (and b!4260116 ((_ is Node!14241) (left!35016 (left!35016 (left!35016 t!4386))))) b!4260489))

(assert (= b!4260490 b!4260491))

(assert (= (and b!4260116 ((_ is Leaf!22009) (left!35016 (left!35016 (left!35016 t!4386))))) b!4260490))

(declare-fun m!4847809 () Bool)

(assert (=> b!4260489 m!4847809))

(declare-fun m!4847811 () Bool)

(assert (=> b!4260489 m!4847811))

(declare-fun m!4847813 () Bool)

(assert (=> b!4260490 m!4847813))

(assert (=> b!4260116 m!4847141))

(declare-fun tp!1306888 () Bool)

(declare-fun b!4260492 () Bool)

(declare-fun e!2645818 () Bool)

(declare-fun tp!1306890 () Bool)

(assert (=> b!4260492 (= e!2645818 (and (inv!62126 (left!35016 (right!35346 (left!35016 (left!35016 t!4386))))) tp!1306890 (inv!62126 (right!35346 (right!35346 (left!35016 (left!35016 t!4386))))) tp!1306888))))

(declare-fun b!4260494 () Bool)

(declare-fun e!2645817 () Bool)

(declare-fun tp!1306889 () Bool)

(assert (=> b!4260494 (= e!2645817 tp!1306889)))

(declare-fun b!4260493 () Bool)

(assert (=> b!4260493 (= e!2645818 (and (inv!62127 (xs!17547 (right!35346 (left!35016 (left!35016 t!4386))))) e!2645817))))

(assert (=> b!4260116 (= tp!1306845 (and (inv!62126 (right!35346 (left!35016 (left!35016 t!4386)))) e!2645818))))

(assert (= (and b!4260116 ((_ is Node!14241) (right!35346 (left!35016 (left!35016 t!4386))))) b!4260492))

(assert (= b!4260493 b!4260494))

(assert (= (and b!4260116 ((_ is Leaf!22009) (right!35346 (left!35016 (left!35016 t!4386))))) b!4260493))

(declare-fun m!4847815 () Bool)

(assert (=> b!4260492 m!4847815))

(declare-fun m!4847817 () Bool)

(assert (=> b!4260492 m!4847817))

(declare-fun m!4847819 () Bool)

(assert (=> b!4260493 m!4847819))

(assert (=> b!4260116 m!4847143))

(declare-fun b!4260495 () Bool)

(declare-fun e!2645819 () Bool)

(declare-fun tp!1306891 () Bool)

(assert (=> b!4260495 (= e!2645819 (and tp_is_empty!22869 tp!1306891))))

(assert (=> b!4260130 (= tp!1306859 e!2645819)))

(assert (= (and b!4260130 ((_ is Cons!47234) (t!353133 (innerList!14301 (xs!17547 (left!35016 t!4386)))))) b!4260495))

(declare-fun e!2645821 () Bool)

(declare-fun tp!1306894 () Bool)

(declare-fun tp!1306892 () Bool)

(declare-fun b!4260496 () Bool)

(assert (=> b!4260496 (= e!2645821 (and (inv!62126 (left!35016 (left!35016 (right!35346 (left!35016 t!4386))))) tp!1306894 (inv!62126 (right!35346 (left!35016 (right!35346 (left!35016 t!4386))))) tp!1306892))))

(declare-fun b!4260498 () Bool)

(declare-fun e!2645820 () Bool)

(declare-fun tp!1306893 () Bool)

(assert (=> b!4260498 (= e!2645820 tp!1306893)))

(declare-fun b!4260497 () Bool)

(assert (=> b!4260497 (= e!2645821 (and (inv!62127 (xs!17547 (left!35016 (right!35346 (left!35016 t!4386))))) e!2645820))))

(assert (=> b!4260119 (= tp!1306850 (and (inv!62126 (left!35016 (right!35346 (left!35016 t!4386)))) e!2645821))))

(assert (= (and b!4260119 ((_ is Node!14241) (left!35016 (right!35346 (left!35016 t!4386))))) b!4260496))

(assert (= b!4260497 b!4260498))

(assert (= (and b!4260119 ((_ is Leaf!22009) (left!35016 (right!35346 (left!35016 t!4386))))) b!4260497))

(declare-fun m!4847821 () Bool)

(assert (=> b!4260496 m!4847821))

(declare-fun m!4847823 () Bool)

(assert (=> b!4260496 m!4847823))

(declare-fun m!4847825 () Bool)

(assert (=> b!4260497 m!4847825))

(assert (=> b!4260119 m!4847147))

(declare-fun b!4260499 () Bool)

(declare-fun tp!1306897 () Bool)

(declare-fun e!2645823 () Bool)

(declare-fun tp!1306895 () Bool)

(assert (=> b!4260499 (= e!2645823 (and (inv!62126 (left!35016 (right!35346 (right!35346 (left!35016 t!4386))))) tp!1306897 (inv!62126 (right!35346 (right!35346 (right!35346 (left!35016 t!4386))))) tp!1306895))))

(declare-fun b!4260501 () Bool)

(declare-fun e!2645822 () Bool)

(declare-fun tp!1306896 () Bool)

(assert (=> b!4260501 (= e!2645822 tp!1306896)))

(declare-fun b!4260500 () Bool)

(assert (=> b!4260500 (= e!2645823 (and (inv!62127 (xs!17547 (right!35346 (right!35346 (left!35016 t!4386))))) e!2645822))))

(assert (=> b!4260119 (= tp!1306848 (and (inv!62126 (right!35346 (right!35346 (left!35016 t!4386)))) e!2645823))))

(assert (= (and b!4260119 ((_ is Node!14241) (right!35346 (right!35346 (left!35016 t!4386))))) b!4260499))

(assert (= b!4260500 b!4260501))

(assert (= (and b!4260119 ((_ is Leaf!22009) (right!35346 (right!35346 (left!35016 t!4386))))) b!4260500))

(declare-fun m!4847827 () Bool)

(assert (=> b!4260499 m!4847827))

(declare-fun m!4847829 () Bool)

(assert (=> b!4260499 m!4847829))

(declare-fun m!4847831 () Bool)

(assert (=> b!4260500 m!4847831))

(assert (=> b!4260119 m!4847149))

(declare-fun b!4260502 () Bool)

(declare-fun e!2645824 () Bool)

(declare-fun tp!1306898 () Bool)

(assert (=> b!4260502 (= e!2645824 (and tp_is_empty!22869 tp!1306898))))

(assert (=> b!4260122 (= tp!1306851 e!2645824)))

(assert (= (and b!4260122 ((_ is Cons!47234) (t!353133 (innerList!14301 (xs!17547 (right!35346 t!4386)))))) b!4260502))

(declare-fun b!4260503 () Bool)

(declare-fun e!2645825 () Bool)

(declare-fun tp!1306899 () Bool)

(assert (=> b!4260503 (= e!2645825 (and tp_is_empty!22869 tp!1306899))))

(assert (=> b!4260128 (= tp!1306856 e!2645825)))

(assert (= (and b!4260128 ((_ is Cons!47234) (innerList!14301 (xs!17547 (right!35346 (right!35346 t!4386)))))) b!4260503))

(declare-fun e!2645827 () Bool)

(declare-fun b!4260504 () Bool)

(declare-fun tp!1306902 () Bool)

(declare-fun tp!1306900 () Bool)

(assert (=> b!4260504 (= e!2645827 (and (inv!62126 (left!35016 (left!35016 (left!35016 (right!35346 t!4386))))) tp!1306902 (inv!62126 (right!35346 (left!35016 (left!35016 (right!35346 t!4386))))) tp!1306900))))

(declare-fun b!4260506 () Bool)

(declare-fun e!2645826 () Bool)

(declare-fun tp!1306901 () Bool)

(assert (=> b!4260506 (= e!2645826 tp!1306901)))

(declare-fun b!4260505 () Bool)

(assert (=> b!4260505 (= e!2645827 (and (inv!62127 (xs!17547 (left!35016 (left!35016 (right!35346 t!4386))))) e!2645826))))

(assert (=> b!4260123 (= tp!1306854 (and (inv!62126 (left!35016 (left!35016 (right!35346 t!4386)))) e!2645827))))

(assert (= (and b!4260123 ((_ is Node!14241) (left!35016 (left!35016 (right!35346 t!4386))))) b!4260504))

(assert (= b!4260505 b!4260506))

(assert (= (and b!4260123 ((_ is Leaf!22009) (left!35016 (left!35016 (right!35346 t!4386))))) b!4260505))

(declare-fun m!4847833 () Bool)

(assert (=> b!4260504 m!4847833))

(declare-fun m!4847835 () Bool)

(assert (=> b!4260504 m!4847835))

(declare-fun m!4847837 () Bool)

(assert (=> b!4260505 m!4847837))

(assert (=> b!4260123 m!4847153))

(declare-fun tp!1306905 () Bool)

(declare-fun b!4260507 () Bool)

(declare-fun tp!1306903 () Bool)

(declare-fun e!2645829 () Bool)

(assert (=> b!4260507 (= e!2645829 (and (inv!62126 (left!35016 (right!35346 (left!35016 (right!35346 t!4386))))) tp!1306905 (inv!62126 (right!35346 (right!35346 (left!35016 (right!35346 t!4386))))) tp!1306903))))

(declare-fun b!4260509 () Bool)

(declare-fun e!2645828 () Bool)

(declare-fun tp!1306904 () Bool)

(assert (=> b!4260509 (= e!2645828 tp!1306904)))

(declare-fun b!4260508 () Bool)

(assert (=> b!4260508 (= e!2645829 (and (inv!62127 (xs!17547 (right!35346 (left!35016 (right!35346 t!4386))))) e!2645828))))

(assert (=> b!4260123 (= tp!1306852 (and (inv!62126 (right!35346 (left!35016 (right!35346 t!4386)))) e!2645829))))

(assert (= (and b!4260123 ((_ is Node!14241) (right!35346 (left!35016 (right!35346 t!4386))))) b!4260507))

(assert (= b!4260508 b!4260509))

(assert (= (and b!4260123 ((_ is Leaf!22009) (right!35346 (left!35016 (right!35346 t!4386))))) b!4260508))

(declare-fun m!4847839 () Bool)

(assert (=> b!4260507 m!4847839))

(declare-fun m!4847841 () Bool)

(assert (=> b!4260507 m!4847841))

(declare-fun m!4847843 () Bool)

(assert (=> b!4260508 m!4847843))

(assert (=> b!4260123 m!4847155))

(declare-fun b_lambda!125681 () Bool)

(assert (= b_lambda!125675 (or (and start!408194 b_free!126681) b_lambda!125681)))

(declare-fun b_lambda!125683 () Bool)

(assert (= b_lambda!125679 (or (and start!408194 b_free!126681) b_lambda!125683)))

(declare-fun b_lambda!125685 () Bool)

(assert (= b_lambda!125677 (or (and start!408194 b_free!126681) b_lambda!125685)))

(check-sat (not b!4260355) (not b!4260274) (not d!1253814) (not b_lambda!125657) tp_is_empty!22869 tp_is_empty!22865 (not b!4260119) (not d!1253834) (not b!4260449) (not b!4260277) (not d!1253810) (not b!4260293) (not b!4260503) (not b!4260330) (not d!1253836) (not b!4260349) (not b!4260398) (not b!4260446) (not d!1253778) (not b!4260479) (not b!4260505) (not b!4260400) (not b!4260285) (not b!4260327) (not b!4260489) (not b!4260485) (not b!4260507) (not b!4260377) (not b!4260371) (not b!4260453) (not b!4260348) (not d!1253826) (not b!4260481) (not b!4260419) (not b!4260397) (not b!4260351) (not b_lambda!125683) (not d!1253704) (not b!4260126) (not d!1253874) (not b!4260367) (not b!4260318) (not d!1253726) (not b!4260357) (not b!4260358) (not d!1253768) (not b!4260392) (not b!4260301) (not b!4260379) (not b!4260299) (not b!4260281) (not b!4260496) (not b!4260378) (not b!4260486) (not b!4260434) (not b!4260469) (not b!4260260) (not d!1253862) (not d!1253882) (not d!1253668) (not b!4260265) (not d!1253866) (not b!4260476) (not b!4260273) (not b!4260495) (not b!4260480) (not b_next!127385) (not b!4260335) (not b!4260470) (not b!4260477) (not b!4260270) (not b!4260382) (not b!4260321) (not b!4260509) (not b!4260462) (not b!4260380) (not b!4260428) (not b!4260312) (not b!4260488) (not b!4260464) (not b!4260295) (not b!4260458) (not b!4260483) (not b!4260307) (not d!1253724) (not b!4260418) (not d!1253736) (not b!4260334) (not b!4260261) (not b!4260263) (not b!4260440) (not b!4260283) (not b!4260375) (not b!4260504) (not d!1253670) (not b!4260473) (not b!4260390) (not d!1253734) (not b!4260275) (not b!4260407) (not b!4260388) (not b!4260364) (not b!4260438) (not b!4260387) (not d!1253744) (not b!4260493) (not b!4260302) (not b!4260287) (not b!4260266) (not b!4260492) (not b!4260297) (not b!4260454) (not b!4260385) (not b!4260323) (not b!4260123) (not b!4260491) (not b_lambda!125661) (not b!4260342) (not d!1253776) (not b!4260490) (not b!4260498) (not b!4260316) (not b!4260350) (not b!4260116) (not b!4260425) b_and!337681 (not b!4260268) (not b!4260271) (not b!4260310) (not b!4260414) (not b!4260497) (not b!4260373) (not b!4260325) (not d!1253782) (not d!1253804) (not b!4260444) (not d!1253798) (not d!1253682) (not b!4260346) (not b!4260501) (not b!4260291) (not b!4260363) (not b!4260361) (not b!4260442) (not b_lambda!125681) (not b!4260329) (not b!4260494) (not b!4260448) (not b!4260484) (not b_lambda!125645) (not b!4260353) (not b_lambda!125659) (not b!4260437) (not b!4260289) (not b!4260272) (not b!4260262) (not b!4260432) (not d!1253856) (not b!4260482) (not b!4260465) (not b!4260409) (not b!4260502) (not b!4260430) (not b!4260499) (not b!4260405) (not d!1253708) (not b!4260393) (not b_lambda!125647) (not b!4260374) (not b!4260460) (not b!4260403) (not b!4260423) (not b!4260313) (not b!4260279) (not b!4260376) (not b!4260343) (not b!4260264) (not b!4260506) (not b!4260347) (not b!4260435) (not b!4260395) (not d!1253812) (not b!4260383) (not b!4260457) (not d!1253750) (not d!1253772) (not b!4260339) (not b_lambda!125685) (not b!4260411) (not d!1253712) (not b!4260340) (not d!1253716) (not b!4260500) (not d!1253884) (not b!4260338) (not b!4260413) (not b!4260345) (not d!1253832) (not b!4260508) (not b!4260487) (not b!4260369) (not b!4260474) (not b!4260305) (not b!4260422) (not b_lambda!125649))
(check-sat b_and!337681 (not b_next!127385))
