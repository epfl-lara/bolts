; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534366 () Bool)

(assert start!534366)

(declare-fun b!5052704 () Bool)

(declare-fun res!2151430 () Bool)

(declare-fun e!3154435 () Bool)

(assert (=> b!5052704 (=> (not res!2151430) (not e!3154435))))

(declare-datatypes ((T!104880 0))(
  ( (T!104881 (val!23614 Int)) )
))
(declare-datatypes ((List!58524 0))(
  ( (Nil!58400) (Cons!58400 (h!64848 T!104880) (t!371163 List!58524)) )
))
(declare-fun l!2757 () List!58524)

(declare-fun isEmpty!31579 (List!58524) Bool)

(assert (=> b!5052704 (= res!2151430 (not (isEmpty!31579 l!2757)))))

(declare-fun b!5052705 () Bool)

(declare-fun res!2151425 () Bool)

(assert (=> b!5052705 (=> (not res!2151425) (not e!3154435))))

(declare-fun i!652 () Int)

(assert (=> b!5052705 (= res!2151425 (> i!652 0))))

(declare-fun b!5052706 () Bool)

(declare-fun e!3154433 () Bool)

(declare-fun tp_is_empty!36983 () Bool)

(declare-fun tp!1412364 () Bool)

(assert (=> b!5052706 (= e!3154433 (and tp_is_empty!36983 tp!1412364))))

(declare-fun b!5052707 () Bool)

(declare-fun e!3154436 () Bool)

(declare-fun e!3154432 () Bool)

(assert (=> b!5052707 (= e!3154436 e!3154432)))

(declare-fun res!2151426 () Bool)

(assert (=> b!5052707 (=> res!2151426 e!3154432)))

(assert (=> b!5052707 (= res!2151426 (> 0 (- i!652 1)))))

(declare-fun b!5052708 () Bool)

(declare-fun e!3154434 () Bool)

(declare-fun tp!1412365 () Bool)

(assert (=> b!5052708 (= e!3154434 (and tp_is_empty!36983 tp!1412365))))

(declare-fun lt!2087024 () Int)

(declare-fun lt!2087023 () List!58524)

(declare-fun b!5052709 () Bool)

(declare-fun size!39023 (List!58524) Int)

(assert (=> b!5052709 (= e!3154432 (> (- i!652 1) (+ (size!39023 lt!2087023) lt!2087024)))))

(declare-fun b!5052703 () Bool)

(assert (=> b!5052703 (= e!3154435 e!3154436)))

(declare-fun res!2151427 () Bool)

(assert (=> b!5052703 (=> (not res!2151427) (not e!3154436))))

(declare-fun r!2041 () List!58524)

(declare-fun tail!9946 (List!58524) List!58524)

(declare-fun ++!12763 (List!58524 List!58524) List!58524)

(assert (=> b!5052703 (= res!2151427 (= (tail!9946 (++!12763 l!2757 r!2041)) (++!12763 lt!2087023 r!2041)))))

(assert (=> b!5052703 (= lt!2087023 (tail!9946 l!2757))))

(declare-fun res!2151431 () Bool)

(declare-fun e!3154431 () Bool)

(assert (=> start!534366 (=> (not res!2151431) (not e!3154431))))

(assert (=> start!534366 (= res!2151431 (<= 0 i!652))))

(assert (=> start!534366 e!3154431))

(assert (=> start!534366 true))

(assert (=> start!534366 e!3154433))

(assert (=> start!534366 e!3154434))

(declare-fun b!5052710 () Bool)

(assert (=> b!5052710 (= e!3154431 e!3154435)))

(declare-fun res!2151429 () Bool)

(assert (=> b!5052710 (=> (not res!2151429) (not e!3154435))))

(declare-fun lt!2087025 () Int)

(assert (=> b!5052710 (= res!2151429 (and (<= i!652 (+ lt!2087025 lt!2087024)) (not (= l!2757 Nil!58400)) (not (= r!2041 Nil!58400))))))

(assert (=> b!5052710 (= lt!2087024 (size!39023 r!2041))))

(assert (=> b!5052710 (= lt!2087025 (size!39023 l!2757))))

(declare-fun b!5052711 () Bool)

(declare-fun res!2151428 () Bool)

(assert (=> b!5052711 (=> (not res!2151428) (not e!3154435))))

(assert (=> b!5052711 (= res!2151428 (not (isEmpty!31579 r!2041)))))

(assert (= (and start!534366 res!2151431) b!5052710))

(assert (= (and b!5052710 res!2151429) b!5052704))

(assert (= (and b!5052704 res!2151430) b!5052711))

(assert (= (and b!5052711 res!2151428) b!5052705))

(assert (= (and b!5052705 res!2151425) b!5052703))

(assert (= (and b!5052703 res!2151427) b!5052707))

(assert (= (and b!5052707 (not res!2151426)) b!5052709))

(get-info :version)

(assert (= (and start!534366 ((_ is Cons!58400) l!2757)) b!5052706))

(assert (= (and start!534366 ((_ is Cons!58400) r!2041)) b!5052708))

(declare-fun m!6086860 () Bool)

(assert (=> b!5052703 m!6086860))

(assert (=> b!5052703 m!6086860))

(declare-fun m!6086862 () Bool)

(assert (=> b!5052703 m!6086862))

(declare-fun m!6086864 () Bool)

(assert (=> b!5052703 m!6086864))

(declare-fun m!6086866 () Bool)

(assert (=> b!5052703 m!6086866))

(declare-fun m!6086868 () Bool)

(assert (=> b!5052711 m!6086868))

(declare-fun m!6086870 () Bool)

(assert (=> b!5052704 m!6086870))

(declare-fun m!6086872 () Bool)

(assert (=> b!5052709 m!6086872))

(declare-fun m!6086874 () Bool)

(assert (=> b!5052710 m!6086874))

(declare-fun m!6086876 () Bool)

(assert (=> b!5052710 m!6086876))

(check-sat (not b!5052703) (not b!5052711) (not b!5052706) (not b!5052709) (not b!5052708) (not b!5052704) (not b!5052710) tp_is_empty!36983)
(check-sat)
(get-model)

(declare-fun d!1625914 () Bool)

(assert (=> d!1625914 (= (tail!9946 (++!12763 l!2757 r!2041)) (t!371163 (++!12763 l!2757 r!2041)))))

(assert (=> b!5052703 d!1625914))

(declare-fun lt!2087030 () List!58524)

(declare-fun e!3154446 () Bool)

(declare-fun b!5052731 () Bool)

(assert (=> b!5052731 (= e!3154446 (or (not (= r!2041 Nil!58400)) (= lt!2087030 l!2757)))))

(declare-fun b!5052728 () Bool)

(declare-fun e!3154445 () List!58524)

(assert (=> b!5052728 (= e!3154445 r!2041)))

(declare-fun b!5052730 () Bool)

(declare-fun res!2151440 () Bool)

(assert (=> b!5052730 (=> (not res!2151440) (not e!3154446))))

(assert (=> b!5052730 (= res!2151440 (= (size!39023 lt!2087030) (+ (size!39023 l!2757) (size!39023 r!2041))))))

(declare-fun d!1625916 () Bool)

(assert (=> d!1625916 e!3154446))

(declare-fun res!2151441 () Bool)

(assert (=> d!1625916 (=> (not res!2151441) (not e!3154446))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10401 (List!58524) (InoxSet T!104880))

(assert (=> d!1625916 (= res!2151441 (= (content!10401 lt!2087030) ((_ map or) (content!10401 l!2757) (content!10401 r!2041))))))

(assert (=> d!1625916 (= lt!2087030 e!3154445)))

(declare-fun c!866998 () Bool)

(assert (=> d!1625916 (= c!866998 ((_ is Nil!58400) l!2757))))

(assert (=> d!1625916 (= (++!12763 l!2757 r!2041) lt!2087030)))

(declare-fun b!5052729 () Bool)

(assert (=> b!5052729 (= e!3154445 (Cons!58400 (h!64848 l!2757) (++!12763 (t!371163 l!2757) r!2041)))))

(assert (= (and d!1625916 c!866998) b!5052728))

(assert (= (and d!1625916 (not c!866998)) b!5052729))

(assert (= (and d!1625916 res!2151441) b!5052730))

(assert (= (and b!5052730 res!2151440) b!5052731))

(declare-fun m!6086878 () Bool)

(assert (=> b!5052730 m!6086878))

(assert (=> b!5052730 m!6086876))

(assert (=> b!5052730 m!6086874))

(declare-fun m!6086880 () Bool)

(assert (=> d!1625916 m!6086880))

(declare-fun m!6086882 () Bool)

(assert (=> d!1625916 m!6086882))

(declare-fun m!6086884 () Bool)

(assert (=> d!1625916 m!6086884))

(declare-fun m!6086886 () Bool)

(assert (=> b!5052729 m!6086886))

(assert (=> b!5052703 d!1625916))

(declare-fun b!5052735 () Bool)

(declare-fun e!3154448 () Bool)

(declare-fun lt!2087031 () List!58524)

(assert (=> b!5052735 (= e!3154448 (or (not (= r!2041 Nil!58400)) (= lt!2087031 lt!2087023)))))

(declare-fun b!5052732 () Bool)

(declare-fun e!3154447 () List!58524)

(assert (=> b!5052732 (= e!3154447 r!2041)))

(declare-fun b!5052734 () Bool)

(declare-fun res!2151442 () Bool)

(assert (=> b!5052734 (=> (not res!2151442) (not e!3154448))))

(assert (=> b!5052734 (= res!2151442 (= (size!39023 lt!2087031) (+ (size!39023 lt!2087023) (size!39023 r!2041))))))

(declare-fun d!1625922 () Bool)

(assert (=> d!1625922 e!3154448))

(declare-fun res!2151443 () Bool)

(assert (=> d!1625922 (=> (not res!2151443) (not e!3154448))))

(assert (=> d!1625922 (= res!2151443 (= (content!10401 lt!2087031) ((_ map or) (content!10401 lt!2087023) (content!10401 r!2041))))))

(assert (=> d!1625922 (= lt!2087031 e!3154447)))

(declare-fun c!866999 () Bool)

(assert (=> d!1625922 (= c!866999 ((_ is Nil!58400) lt!2087023))))

(assert (=> d!1625922 (= (++!12763 lt!2087023 r!2041) lt!2087031)))

(declare-fun b!5052733 () Bool)

(assert (=> b!5052733 (= e!3154447 (Cons!58400 (h!64848 lt!2087023) (++!12763 (t!371163 lt!2087023) r!2041)))))

(assert (= (and d!1625922 c!866999) b!5052732))

(assert (= (and d!1625922 (not c!866999)) b!5052733))

(assert (= (and d!1625922 res!2151443) b!5052734))

(assert (= (and b!5052734 res!2151442) b!5052735))

(declare-fun m!6086888 () Bool)

(assert (=> b!5052734 m!6086888))

(assert (=> b!5052734 m!6086872))

(assert (=> b!5052734 m!6086874))

(declare-fun m!6086890 () Bool)

(assert (=> d!1625922 m!6086890))

(declare-fun m!6086892 () Bool)

(assert (=> d!1625922 m!6086892))

(assert (=> d!1625922 m!6086884))

(declare-fun m!6086894 () Bool)

(assert (=> b!5052733 m!6086894))

(assert (=> b!5052703 d!1625922))

(declare-fun d!1625924 () Bool)

(assert (=> d!1625924 (= (tail!9946 l!2757) (t!371163 l!2757))))

(assert (=> b!5052703 d!1625924))

(declare-fun d!1625926 () Bool)

(declare-fun lt!2087036 () Int)

(assert (=> d!1625926 (>= lt!2087036 0)))

(declare-fun e!3154455 () Int)

(assert (=> d!1625926 (= lt!2087036 e!3154455)))

(declare-fun c!867004 () Bool)

(assert (=> d!1625926 (= c!867004 ((_ is Nil!58400) lt!2087023))))

(assert (=> d!1625926 (= (size!39023 lt!2087023) lt!2087036)))

(declare-fun b!5052748 () Bool)

(assert (=> b!5052748 (= e!3154455 0)))

(declare-fun b!5052749 () Bool)

(assert (=> b!5052749 (= e!3154455 (+ 1 (size!39023 (t!371163 lt!2087023))))))

(assert (= (and d!1625926 c!867004) b!5052748))

(assert (= (and d!1625926 (not c!867004)) b!5052749))

(declare-fun m!6086914 () Bool)

(assert (=> b!5052749 m!6086914))

(assert (=> b!5052709 d!1625926))

(declare-fun d!1625936 () Bool)

(assert (=> d!1625936 (= (isEmpty!31579 l!2757) ((_ is Nil!58400) l!2757))))

(assert (=> b!5052704 d!1625936))

(declare-fun d!1625938 () Bool)

(declare-fun lt!2087037 () Int)

(assert (=> d!1625938 (>= lt!2087037 0)))

(declare-fun e!3154456 () Int)

(assert (=> d!1625938 (= lt!2087037 e!3154456)))

(declare-fun c!867005 () Bool)

(assert (=> d!1625938 (= c!867005 ((_ is Nil!58400) r!2041))))

(assert (=> d!1625938 (= (size!39023 r!2041) lt!2087037)))

(declare-fun b!5052750 () Bool)

(assert (=> b!5052750 (= e!3154456 0)))

(declare-fun b!5052751 () Bool)

(assert (=> b!5052751 (= e!3154456 (+ 1 (size!39023 (t!371163 r!2041))))))

(assert (= (and d!1625938 c!867005) b!5052750))

(assert (= (and d!1625938 (not c!867005)) b!5052751))

(declare-fun m!6086916 () Bool)

(assert (=> b!5052751 m!6086916))

(assert (=> b!5052710 d!1625938))

(declare-fun d!1625940 () Bool)

(declare-fun lt!2087040 () Int)

(assert (=> d!1625940 (>= lt!2087040 0)))

(declare-fun e!3154459 () Int)

(assert (=> d!1625940 (= lt!2087040 e!3154459)))

(declare-fun c!867008 () Bool)

(assert (=> d!1625940 (= c!867008 ((_ is Nil!58400) l!2757))))

(assert (=> d!1625940 (= (size!39023 l!2757) lt!2087040)))

(declare-fun b!5052756 () Bool)

(assert (=> b!5052756 (= e!3154459 0)))

(declare-fun b!5052757 () Bool)

(assert (=> b!5052757 (= e!3154459 (+ 1 (size!39023 (t!371163 l!2757))))))

(assert (= (and d!1625940 c!867008) b!5052756))

(assert (= (and d!1625940 (not c!867008)) b!5052757))

(declare-fun m!6086918 () Bool)

(assert (=> b!5052757 m!6086918))

(assert (=> b!5052710 d!1625940))

(declare-fun d!1625942 () Bool)

(assert (=> d!1625942 (= (isEmpty!31579 r!2041) ((_ is Nil!58400) r!2041))))

(assert (=> b!5052711 d!1625942))

(declare-fun b!5052762 () Bool)

(declare-fun e!3154462 () Bool)

(declare-fun tp!1412368 () Bool)

(assert (=> b!5052762 (= e!3154462 (and tp_is_empty!36983 tp!1412368))))

(assert (=> b!5052708 (= tp!1412365 e!3154462)))

(assert (= (and b!5052708 ((_ is Cons!58400) (t!371163 r!2041))) b!5052762))

(declare-fun b!5052763 () Bool)

(declare-fun e!3154463 () Bool)

(declare-fun tp!1412369 () Bool)

(assert (=> b!5052763 (= e!3154463 (and tp_is_empty!36983 tp!1412369))))

(assert (=> b!5052706 (= tp!1412364 e!3154463)))

(assert (= (and b!5052706 ((_ is Cons!58400) (t!371163 l!2757))) b!5052763))

(check-sat (not b!5052734) (not b!5052757) (not d!1625922) (not b!5052763) (not b!5052751) (not b!5052762) (not b!5052730) (not b!5052729) tp_is_empty!36983 (not b!5052749) (not b!5052733) (not d!1625916))
(check-sat)
