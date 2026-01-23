; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538376 () Bool)

(assert start!538376)

(declare-fun b!5105712 () Bool)

(declare-fun e!3184419 () Bool)

(declare-fun tp_is_empty!37427 () Bool)

(declare-fun tp!1424232 () Bool)

(assert (=> b!5105712 (= e!3184419 (and tp_is_empty!37427 tp!1424232))))

(declare-fun b!5105713 () Bool)

(declare-fun res!2173256 () Bool)

(declare-fun e!3184418 () Bool)

(assert (=> b!5105713 (=> (not res!2173256) (not e!3184418))))

(declare-datatypes ((C!28420 0))(
  ( (C!28421 (val!23862 Int)) )
))
(declare-datatypes ((List!59027 0))(
  ( (Nil!58903) (Cons!58903 (h!65351 C!28420) (t!372028 List!59027)) )
))
(declare-fun bigger!41 () List!59027)

(declare-fun returnP!41 () List!59027)

(declare-fun size!39383 (List!59027) Int)

(assert (=> b!5105713 (= res!2173256 (>= (size!39383 bigger!41) (size!39383 returnP!41)))))

(declare-fun b!5105714 () Bool)

(declare-fun e!3184421 () Bool)

(declare-fun tp!1424231 () Bool)

(assert (=> b!5105714 (= e!3184421 (and tp_is_empty!37427 tp!1424231))))

(declare-fun b!5105715 () Bool)

(declare-fun e!3184420 () Bool)

(declare-fun tp!1424233 () Bool)

(assert (=> b!5105715 (= e!3184420 (and tp_is_empty!37427 tp!1424233))))

(declare-fun b!5105716 () Bool)

(declare-fun res!2173258 () Bool)

(assert (=> b!5105716 (=> (not res!2173258) (not e!3184418))))

(declare-fun input!5723 () List!59027)

(declare-fun isPrefix!5482 (List!59027 List!59027) Bool)

(assert (=> b!5105716 (= res!2173258 (isPrefix!5482 bigger!41 input!5723))))

(declare-fun res!2173257 () Bool)

(assert (=> start!538376 (=> (not res!2173257) (not e!3184418))))

(assert (=> start!538376 (= res!2173257 (isPrefix!5482 returnP!41 input!5723))))

(assert (=> start!538376 e!3184418))

(assert (=> start!538376 e!3184420))

(assert (=> start!538376 e!3184421))

(assert (=> start!538376 e!3184419))

(declare-fun b!5105717 () Bool)

(declare-fun ++!12930 (List!59027 List!59027) List!59027)

(assert (=> b!5105717 (= e!3184418 (not (= (++!12930 Nil!58903 input!5723) input!5723)))))

(declare-fun lt!2101591 () Int)

(assert (=> b!5105717 (= lt!2101591 (size!39383 input!5723))))

(declare-fun lt!2101592 () Int)

(assert (=> b!5105717 (= lt!2101592 (size!39383 Nil!58903))))

(assert (= (and start!538376 res!2173257) b!5105716))

(assert (= (and b!5105716 res!2173258) b!5105713))

(assert (= (and b!5105713 res!2173256) b!5105717))

(get-info :version)

(assert (= (and start!538376 ((_ is Cons!58903) returnP!41)) b!5105715))

(assert (= (and start!538376 ((_ is Cons!58903) input!5723)) b!5105714))

(assert (= (and start!538376 ((_ is Cons!58903) bigger!41)) b!5105712))

(declare-fun m!6163140 () Bool)

(assert (=> b!5105713 m!6163140))

(declare-fun m!6163142 () Bool)

(assert (=> b!5105713 m!6163142))

(declare-fun m!6163144 () Bool)

(assert (=> b!5105716 m!6163144))

(declare-fun m!6163146 () Bool)

(assert (=> start!538376 m!6163146))

(declare-fun m!6163148 () Bool)

(assert (=> b!5105717 m!6163148))

(declare-fun m!6163150 () Bool)

(assert (=> b!5105717 m!6163150))

(declare-fun m!6163152 () Bool)

(assert (=> b!5105717 m!6163152))

(check-sat (not b!5105713) (not b!5105716) (not b!5105717) tp_is_empty!37427 (not b!5105715) (not b!5105712) (not b!5105714) (not start!538376))
(check-sat)
(get-model)

(declare-fun d!1650656 () Bool)

(declare-fun e!3184438 () Bool)

(assert (=> d!1650656 e!3184438))

(declare-fun res!2173277 () Bool)

(assert (=> d!1650656 (=> res!2173277 e!3184438)))

(declare-fun lt!2101601 () Bool)

(assert (=> d!1650656 (= res!2173277 (not lt!2101601))))

(declare-fun e!3184439 () Bool)

(assert (=> d!1650656 (= lt!2101601 e!3184439)))

(declare-fun res!2173276 () Bool)

(assert (=> d!1650656 (=> res!2173276 e!3184439)))

(assert (=> d!1650656 (= res!2173276 ((_ is Nil!58903) returnP!41))))

(assert (=> d!1650656 (= (isPrefix!5482 returnP!41 input!5723) lt!2101601)))

(declare-fun b!5105743 () Bool)

(declare-fun res!2173275 () Bool)

(declare-fun e!3184440 () Bool)

(assert (=> b!5105743 (=> (not res!2173275) (not e!3184440))))

(declare-fun head!10842 (List!59027) C!28420)

(assert (=> b!5105743 (= res!2173275 (= (head!10842 returnP!41) (head!10842 input!5723)))))

(declare-fun b!5105742 () Bool)

(assert (=> b!5105742 (= e!3184439 e!3184440)))

(declare-fun res!2173278 () Bool)

(assert (=> b!5105742 (=> (not res!2173278) (not e!3184440))))

(assert (=> b!5105742 (= res!2173278 (not ((_ is Nil!58903) input!5723)))))

(declare-fun b!5105745 () Bool)

(assert (=> b!5105745 (= e!3184438 (>= (size!39383 input!5723) (size!39383 returnP!41)))))

(declare-fun b!5105744 () Bool)

(declare-fun tail!9997 (List!59027) List!59027)

(assert (=> b!5105744 (= e!3184440 (isPrefix!5482 (tail!9997 returnP!41) (tail!9997 input!5723)))))

(assert (= (and d!1650656 (not res!2173276)) b!5105742))

(assert (= (and b!5105742 res!2173278) b!5105743))

(assert (= (and b!5105743 res!2173275) b!5105744))

(assert (= (and d!1650656 (not res!2173277)) b!5105745))

(declare-fun m!6163158 () Bool)

(assert (=> b!5105743 m!6163158))

(declare-fun m!6163160 () Bool)

(assert (=> b!5105743 m!6163160))

(assert (=> b!5105745 m!6163150))

(assert (=> b!5105745 m!6163142))

(declare-fun m!6163162 () Bool)

(assert (=> b!5105744 m!6163162))

(declare-fun m!6163164 () Bool)

(assert (=> b!5105744 m!6163164))

(assert (=> b!5105744 m!6163162))

(assert (=> b!5105744 m!6163164))

(declare-fun m!6163166 () Bool)

(assert (=> b!5105744 m!6163166))

(assert (=> start!538376 d!1650656))

(declare-fun d!1650662 () Bool)

(declare-fun lt!2101605 () Int)

(assert (=> d!1650662 (>= lt!2101605 0)))

(declare-fun e!3184446 () Int)

(assert (=> d!1650662 (= lt!2101605 e!3184446)))

(declare-fun c!877064 () Bool)

(assert (=> d!1650662 (= c!877064 ((_ is Nil!58903) bigger!41))))

(assert (=> d!1650662 (= (size!39383 bigger!41) lt!2101605)))

(declare-fun b!5105754 () Bool)

(assert (=> b!5105754 (= e!3184446 0)))

(declare-fun b!5105755 () Bool)

(assert (=> b!5105755 (= e!3184446 (+ 1 (size!39383 (t!372028 bigger!41))))))

(assert (= (and d!1650662 c!877064) b!5105754))

(assert (= (and d!1650662 (not c!877064)) b!5105755))

(declare-fun m!6163178 () Bool)

(assert (=> b!5105755 m!6163178))

(assert (=> b!5105713 d!1650662))

(declare-fun d!1650666 () Bool)

(declare-fun lt!2101606 () Int)

(assert (=> d!1650666 (>= lt!2101606 0)))

(declare-fun e!3184447 () Int)

(assert (=> d!1650666 (= lt!2101606 e!3184447)))

(declare-fun c!877065 () Bool)

(assert (=> d!1650666 (= c!877065 ((_ is Nil!58903) returnP!41))))

(assert (=> d!1650666 (= (size!39383 returnP!41) lt!2101606)))

(declare-fun b!5105756 () Bool)

(assert (=> b!5105756 (= e!3184447 0)))

(declare-fun b!5105757 () Bool)

(assert (=> b!5105757 (= e!3184447 (+ 1 (size!39383 (t!372028 returnP!41))))))

(assert (= (and d!1650666 c!877065) b!5105756))

(assert (= (and d!1650666 (not c!877065)) b!5105757))

(declare-fun m!6163180 () Bool)

(assert (=> b!5105757 m!6163180))

(assert (=> b!5105713 d!1650666))

(declare-fun d!1650668 () Bool)

(declare-fun e!3184448 () Bool)

(assert (=> d!1650668 e!3184448))

(declare-fun res!2173285 () Bool)

(assert (=> d!1650668 (=> res!2173285 e!3184448)))

(declare-fun lt!2101607 () Bool)

(assert (=> d!1650668 (= res!2173285 (not lt!2101607))))

(declare-fun e!3184449 () Bool)

(assert (=> d!1650668 (= lt!2101607 e!3184449)))

(declare-fun res!2173284 () Bool)

(assert (=> d!1650668 (=> res!2173284 e!3184449)))

(assert (=> d!1650668 (= res!2173284 ((_ is Nil!58903) bigger!41))))

(assert (=> d!1650668 (= (isPrefix!5482 bigger!41 input!5723) lt!2101607)))

(declare-fun b!5105759 () Bool)

(declare-fun res!2173283 () Bool)

(declare-fun e!3184450 () Bool)

(assert (=> b!5105759 (=> (not res!2173283) (not e!3184450))))

(assert (=> b!5105759 (= res!2173283 (= (head!10842 bigger!41) (head!10842 input!5723)))))

(declare-fun b!5105758 () Bool)

(assert (=> b!5105758 (= e!3184449 e!3184450)))

(declare-fun res!2173286 () Bool)

(assert (=> b!5105758 (=> (not res!2173286) (not e!3184450))))

(assert (=> b!5105758 (= res!2173286 (not ((_ is Nil!58903) input!5723)))))

(declare-fun b!5105761 () Bool)

(assert (=> b!5105761 (= e!3184448 (>= (size!39383 input!5723) (size!39383 bigger!41)))))

(declare-fun b!5105760 () Bool)

(assert (=> b!5105760 (= e!3184450 (isPrefix!5482 (tail!9997 bigger!41) (tail!9997 input!5723)))))

(assert (= (and d!1650668 (not res!2173284)) b!5105758))

(assert (= (and b!5105758 res!2173286) b!5105759))

(assert (= (and b!5105759 res!2173283) b!5105760))

(assert (= (and d!1650668 (not res!2173285)) b!5105761))

(declare-fun m!6163182 () Bool)

(assert (=> b!5105759 m!6163182))

(assert (=> b!5105759 m!6163160))

(assert (=> b!5105761 m!6163150))

(assert (=> b!5105761 m!6163140))

(declare-fun m!6163184 () Bool)

(assert (=> b!5105760 m!6163184))

(assert (=> b!5105760 m!6163164))

(assert (=> b!5105760 m!6163184))

(assert (=> b!5105760 m!6163164))

(declare-fun m!6163186 () Bool)

(assert (=> b!5105760 m!6163186))

(assert (=> b!5105716 d!1650668))

(declare-fun b!5105794 () Bool)

(declare-fun e!3184466 () Bool)

(declare-fun lt!2101616 () List!59027)

(assert (=> b!5105794 (= e!3184466 (or (not (= input!5723 Nil!58903)) (= lt!2101616 Nil!58903)))))

(declare-fun b!5105790 () Bool)

(declare-fun e!3184467 () List!59027)

(assert (=> b!5105790 (= e!3184467 input!5723)))

(declare-fun b!5105791 () Bool)

(assert (=> b!5105791 (= e!3184467 (Cons!58903 (h!65351 Nil!58903) (++!12930 (t!372028 Nil!58903) input!5723)))))

(declare-fun d!1650670 () Bool)

(assert (=> d!1650670 e!3184466))

(declare-fun res!2173302 () Bool)

(assert (=> d!1650670 (=> (not res!2173302) (not e!3184466))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10479 (List!59027) (InoxSet C!28420))

(assert (=> d!1650670 (= res!2173302 (= (content!10479 lt!2101616) ((_ map or) (content!10479 Nil!58903) (content!10479 input!5723))))))

(assert (=> d!1650670 (= lt!2101616 e!3184467)))

(declare-fun c!877073 () Bool)

(assert (=> d!1650670 (= c!877073 ((_ is Nil!58903) Nil!58903))))

(assert (=> d!1650670 (= (++!12930 Nil!58903 input!5723) lt!2101616)))

(declare-fun b!5105792 () Bool)

(declare-fun res!2173301 () Bool)

(assert (=> b!5105792 (=> (not res!2173301) (not e!3184466))))

(assert (=> b!5105792 (= res!2173301 (= (size!39383 lt!2101616) (+ (size!39383 Nil!58903) (size!39383 input!5723))))))

(assert (= (and d!1650670 c!877073) b!5105790))

(assert (= (and d!1650670 (not c!877073)) b!5105791))

(assert (= (and d!1650670 res!2173302) b!5105792))

(assert (= (and b!5105792 res!2173301) b!5105794))

(declare-fun m!6163208 () Bool)

(assert (=> b!5105791 m!6163208))

(declare-fun m!6163210 () Bool)

(assert (=> d!1650670 m!6163210))

(declare-fun m!6163212 () Bool)

(assert (=> d!1650670 m!6163212))

(declare-fun m!6163214 () Bool)

(assert (=> d!1650670 m!6163214))

(declare-fun m!6163216 () Bool)

(assert (=> b!5105792 m!6163216))

(assert (=> b!5105792 m!6163152))

(assert (=> b!5105792 m!6163150))

(assert (=> b!5105717 d!1650670))

(declare-fun d!1650678 () Bool)

(declare-fun lt!2101617 () Int)

(assert (=> d!1650678 (>= lt!2101617 0)))

(declare-fun e!3184473 () Int)

(assert (=> d!1650678 (= lt!2101617 e!3184473)))

(declare-fun c!877074 () Bool)

(assert (=> d!1650678 (= c!877074 ((_ is Nil!58903) input!5723))))

(assert (=> d!1650678 (= (size!39383 input!5723) lt!2101617)))

(declare-fun b!5105801 () Bool)

(assert (=> b!5105801 (= e!3184473 0)))

(declare-fun b!5105802 () Bool)

(assert (=> b!5105802 (= e!3184473 (+ 1 (size!39383 (t!372028 input!5723))))))

(assert (= (and d!1650678 c!877074) b!5105801))

(assert (= (and d!1650678 (not c!877074)) b!5105802))

(declare-fun m!6163218 () Bool)

(assert (=> b!5105802 m!6163218))

(assert (=> b!5105717 d!1650678))

(declare-fun d!1650680 () Bool)

(declare-fun lt!2101618 () Int)

(assert (=> d!1650680 (>= lt!2101618 0)))

(declare-fun e!3184474 () Int)

(assert (=> d!1650680 (= lt!2101618 e!3184474)))

(declare-fun c!877075 () Bool)

(assert (=> d!1650680 (= c!877075 ((_ is Nil!58903) Nil!58903))))

(assert (=> d!1650680 (= (size!39383 Nil!58903) lt!2101618)))

(declare-fun b!5105803 () Bool)

(assert (=> b!5105803 (= e!3184474 0)))

(declare-fun b!5105804 () Bool)

(assert (=> b!5105804 (= e!3184474 (+ 1 (size!39383 (t!372028 Nil!58903))))))

(assert (= (and d!1650680 c!877075) b!5105803))

(assert (= (and d!1650680 (not c!877075)) b!5105804))

(declare-fun m!6163220 () Bool)

(assert (=> b!5105804 m!6163220))

(assert (=> b!5105717 d!1650680))

(declare-fun b!5105809 () Bool)

(declare-fun e!3184477 () Bool)

(declare-fun tp!1424241 () Bool)

(assert (=> b!5105809 (= e!3184477 (and tp_is_empty!37427 tp!1424241))))

(assert (=> b!5105715 (= tp!1424233 e!3184477)))

(assert (= (and b!5105715 ((_ is Cons!58903) (t!372028 returnP!41))) b!5105809))

(declare-fun b!5105810 () Bool)

(declare-fun e!3184478 () Bool)

(declare-fun tp!1424242 () Bool)

(assert (=> b!5105810 (= e!3184478 (and tp_is_empty!37427 tp!1424242))))

(assert (=> b!5105714 (= tp!1424231 e!3184478)))

(assert (= (and b!5105714 ((_ is Cons!58903) (t!372028 input!5723))) b!5105810))

(declare-fun b!5105811 () Bool)

(declare-fun e!3184479 () Bool)

(declare-fun tp!1424243 () Bool)

(assert (=> b!5105811 (= e!3184479 (and tp_is_empty!37427 tp!1424243))))

(assert (=> b!5105712 (= tp!1424232 e!3184479)))

(assert (= (and b!5105712 ((_ is Cons!58903) (t!372028 bigger!41))) b!5105811))

(check-sat (not b!5105811) (not b!5105761) (not b!5105810) (not d!1650670) (not b!5105744) (not b!5105757) (not b!5105809) (not b!5105760) (not b!5105802) (not b!5105791) (not b!5105759) (not b!5105745) (not b!5105804) tp_is_empty!37427 (not b!5105743) (not b!5105792) (not b!5105755))
(check-sat)
