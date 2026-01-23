; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46282 () Bool)

(assert start!46282)

(declare-fun b!511650 () Bool)

(declare-fun e!305651 () Bool)

(declare-fun tp_is_empty!2435 () Bool)

(declare-fun tp!159061 () Bool)

(assert (=> b!511650 (= e!305651 (and tp_is_empty!2435 tp!159061))))

(declare-fun b!511651 () Bool)

(declare-datatypes ((B!1049 0))(
  ( (B!1050 (val!1666 Int)) )
))
(declare-datatypes ((List!4639 0))(
  ( (Nil!4629) (Cons!4629 (h!10026 B!1049) (t!73157 List!4639)) )
))
(declare-fun l2!1029 () List!4639)

(declare-fun tot!35 () List!4639)

(declare-fun lt!212047 () List!4639)

(declare-fun l1!1060 () List!4639)

(declare-fun e!305653 () Bool)

(declare-fun ++!1351 (List!4639 List!4639) List!4639)

(declare-fun tail!688 (List!4639) List!4639)

(assert (=> b!511651 (= e!305653 (not (= (++!1351 (++!1351 (t!73157 l1!1060) lt!212047) l2!1029) (tail!688 tot!35))))))

(declare-fun b!511652 () Bool)

(declare-fun e!305654 () Bool)

(declare-fun tp!159062 () Bool)

(assert (=> b!511652 (= e!305654 (and tp_is_empty!2435 tp!159062))))

(declare-fun b!511653 () Bool)

(declare-fun e!305652 () Bool)

(declare-fun tp!159063 () Bool)

(assert (=> b!511653 (= e!305652 (and tp_is_empty!2435 tp!159063))))

(declare-fun res!217164 () Bool)

(assert (=> start!46282 (=> (not res!217164) (not e!305653))))

(assert (=> start!46282 (= res!217164 (= (++!1351 (++!1351 l1!1060 lt!212047) l2!1029) tot!35))))

(declare-fun elmt!142 () B!1049)

(assert (=> start!46282 (= lt!212047 (Cons!4629 elmt!142 Nil!4629))))

(assert (=> start!46282 e!305653))

(assert (=> start!46282 tp_is_empty!2435))

(assert (=> start!46282 e!305651))

(assert (=> start!46282 e!305652))

(assert (=> start!46282 e!305654))

(declare-fun b!511654 () Bool)

(declare-fun res!217165 () Bool)

(assert (=> b!511654 (=> (not res!217165) (not e!305653))))

(get-info :version)

(assert (=> b!511654 (= res!217165 ((_ is Cons!4629) l1!1060))))

(assert (= (and start!46282 res!217164) b!511654))

(assert (= (and b!511654 res!217165) b!511651))

(assert (= (and start!46282 ((_ is Cons!4629) l2!1029)) b!511650))

(assert (= (and start!46282 ((_ is Cons!4629) l1!1060)) b!511653))

(assert (= (and start!46282 ((_ is Cons!4629) tot!35)) b!511652))

(declare-fun m!758409 () Bool)

(assert (=> b!511651 m!758409))

(assert (=> b!511651 m!758409))

(declare-fun m!758411 () Bool)

(assert (=> b!511651 m!758411))

(declare-fun m!758413 () Bool)

(assert (=> b!511651 m!758413))

(declare-fun m!758415 () Bool)

(assert (=> start!46282 m!758415))

(assert (=> start!46282 m!758415))

(declare-fun m!758417 () Bool)

(assert (=> start!46282 m!758417))

(check-sat (not b!511650) (not b!511651) tp_is_empty!2435 (not start!46282) (not b!511652) (not b!511653))
(check-sat)
(get-model)

(declare-fun d!183922 () Bool)

(declare-fun e!305664 () Bool)

(assert (=> d!183922 e!305664))

(declare-fun res!217174 () Bool)

(assert (=> d!183922 (=> (not res!217174) (not e!305664))))

(declare-fun lt!212052 () List!4639)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!798 (List!4639) (InoxSet B!1049))

(assert (=> d!183922 (= res!217174 (= (content!798 lt!212052) ((_ map or) (content!798 (++!1351 (t!73157 l1!1060) lt!212047)) (content!798 l2!1029))))))

(declare-fun e!305663 () List!4639)

(assert (=> d!183922 (= lt!212052 e!305663)))

(declare-fun c!99472 () Bool)

(assert (=> d!183922 (= c!99472 ((_ is Nil!4629) (++!1351 (t!73157 l1!1060) lt!212047)))))

(assert (=> d!183922 (= (++!1351 (++!1351 (t!73157 l1!1060) lt!212047) l2!1029) lt!212052)))

(declare-fun b!511674 () Bool)

(assert (=> b!511674 (= e!305664 (or (not (= l2!1029 Nil!4629)) (= lt!212052 (++!1351 (t!73157 l1!1060) lt!212047))))))

(declare-fun b!511671 () Bool)

(assert (=> b!511671 (= e!305663 l2!1029)))

(declare-fun b!511672 () Bool)

(assert (=> b!511672 (= e!305663 (Cons!4629 (h!10026 (++!1351 (t!73157 l1!1060) lt!212047)) (++!1351 (t!73157 (++!1351 (t!73157 l1!1060) lt!212047)) l2!1029)))))

(declare-fun b!511673 () Bool)

(declare-fun res!217175 () Bool)

(assert (=> b!511673 (=> (not res!217175) (not e!305664))))

(declare-fun size!3730 (List!4639) Int)

(assert (=> b!511673 (= res!217175 (= (size!3730 lt!212052) (+ (size!3730 (++!1351 (t!73157 l1!1060) lt!212047)) (size!3730 l2!1029))))))

(assert (= (and d!183922 c!99472) b!511671))

(assert (= (and d!183922 (not c!99472)) b!511672))

(assert (= (and d!183922 res!217174) b!511673))

(assert (= (and b!511673 res!217175) b!511674))

(declare-fun m!758419 () Bool)

(assert (=> d!183922 m!758419))

(assert (=> d!183922 m!758409))

(declare-fun m!758421 () Bool)

(assert (=> d!183922 m!758421))

(declare-fun m!758423 () Bool)

(assert (=> d!183922 m!758423))

(declare-fun m!758425 () Bool)

(assert (=> b!511672 m!758425))

(declare-fun m!758427 () Bool)

(assert (=> b!511673 m!758427))

(assert (=> b!511673 m!758409))

(declare-fun m!758429 () Bool)

(assert (=> b!511673 m!758429))

(declare-fun m!758431 () Bool)

(assert (=> b!511673 m!758431))

(assert (=> b!511651 d!183922))

(declare-fun d!183926 () Bool)

(declare-fun e!305668 () Bool)

(assert (=> d!183926 e!305668))

(declare-fun res!217178 () Bool)

(assert (=> d!183926 (=> (not res!217178) (not e!305668))))

(declare-fun lt!212054 () List!4639)

(assert (=> d!183926 (= res!217178 (= (content!798 lt!212054) ((_ map or) (content!798 (t!73157 l1!1060)) (content!798 lt!212047))))))

(declare-fun e!305667 () List!4639)

(assert (=> d!183926 (= lt!212054 e!305667)))

(declare-fun c!99474 () Bool)

(assert (=> d!183926 (= c!99474 ((_ is Nil!4629) (t!73157 l1!1060)))))

(assert (=> d!183926 (= (++!1351 (t!73157 l1!1060) lt!212047) lt!212054)))

(declare-fun b!511682 () Bool)

(assert (=> b!511682 (= e!305668 (or (not (= lt!212047 Nil!4629)) (= lt!212054 (t!73157 l1!1060))))))

(declare-fun b!511679 () Bool)

(assert (=> b!511679 (= e!305667 lt!212047)))

(declare-fun b!511680 () Bool)

(assert (=> b!511680 (= e!305667 (Cons!4629 (h!10026 (t!73157 l1!1060)) (++!1351 (t!73157 (t!73157 l1!1060)) lt!212047)))))

(declare-fun b!511681 () Bool)

(declare-fun res!217179 () Bool)

(assert (=> b!511681 (=> (not res!217179) (not e!305668))))

(assert (=> b!511681 (= res!217179 (= (size!3730 lt!212054) (+ (size!3730 (t!73157 l1!1060)) (size!3730 lt!212047))))))

(assert (= (and d!183926 c!99474) b!511679))

(assert (= (and d!183926 (not c!99474)) b!511680))

(assert (= (and d!183926 res!217178) b!511681))

(assert (= (and b!511681 res!217179) b!511682))

(declare-fun m!758447 () Bool)

(assert (=> d!183926 m!758447))

(declare-fun m!758449 () Bool)

(assert (=> d!183926 m!758449))

(declare-fun m!758451 () Bool)

(assert (=> d!183926 m!758451))

(declare-fun m!758453 () Bool)

(assert (=> b!511680 m!758453))

(declare-fun m!758455 () Bool)

(assert (=> b!511681 m!758455))

(declare-fun m!758457 () Bool)

(assert (=> b!511681 m!758457))

(declare-fun m!758459 () Bool)

(assert (=> b!511681 m!758459))

(assert (=> b!511651 d!183926))

(declare-fun d!183930 () Bool)

(assert (=> d!183930 (= (tail!688 tot!35) (t!73157 tot!35))))

(assert (=> b!511651 d!183930))

(declare-fun d!183934 () Bool)

(declare-fun e!305672 () Bool)

(assert (=> d!183934 e!305672))

(declare-fun res!217182 () Bool)

(assert (=> d!183934 (=> (not res!217182) (not e!305672))))

(declare-fun lt!212056 () List!4639)

(assert (=> d!183934 (= res!217182 (= (content!798 lt!212056) ((_ map or) (content!798 (++!1351 l1!1060 lt!212047)) (content!798 l2!1029))))))

(declare-fun e!305671 () List!4639)

(assert (=> d!183934 (= lt!212056 e!305671)))

(declare-fun c!99476 () Bool)

(assert (=> d!183934 (= c!99476 ((_ is Nil!4629) (++!1351 l1!1060 lt!212047)))))

(assert (=> d!183934 (= (++!1351 (++!1351 l1!1060 lt!212047) l2!1029) lt!212056)))

(declare-fun b!511690 () Bool)

(assert (=> b!511690 (= e!305672 (or (not (= l2!1029 Nil!4629)) (= lt!212056 (++!1351 l1!1060 lt!212047))))))

(declare-fun b!511687 () Bool)

(assert (=> b!511687 (= e!305671 l2!1029)))

(declare-fun b!511688 () Bool)

(assert (=> b!511688 (= e!305671 (Cons!4629 (h!10026 (++!1351 l1!1060 lt!212047)) (++!1351 (t!73157 (++!1351 l1!1060 lt!212047)) l2!1029)))))

(declare-fun b!511689 () Bool)

(declare-fun res!217183 () Bool)

(assert (=> b!511689 (=> (not res!217183) (not e!305672))))

(assert (=> b!511689 (= res!217183 (= (size!3730 lt!212056) (+ (size!3730 (++!1351 l1!1060 lt!212047)) (size!3730 l2!1029))))))

(assert (= (and d!183934 c!99476) b!511687))

(assert (= (and d!183934 (not c!99476)) b!511688))

(assert (= (and d!183934 res!217182) b!511689))

(assert (= (and b!511689 res!217183) b!511690))

(declare-fun m!758475 () Bool)

(assert (=> d!183934 m!758475))

(assert (=> d!183934 m!758415))

(declare-fun m!758477 () Bool)

(assert (=> d!183934 m!758477))

(assert (=> d!183934 m!758423))

(declare-fun m!758479 () Bool)

(assert (=> b!511688 m!758479))

(declare-fun m!758481 () Bool)

(assert (=> b!511689 m!758481))

(assert (=> b!511689 m!758415))

(declare-fun m!758483 () Bool)

(assert (=> b!511689 m!758483))

(assert (=> b!511689 m!758431))

(assert (=> start!46282 d!183934))

(declare-fun d!183938 () Bool)

(declare-fun e!305676 () Bool)

(assert (=> d!183938 e!305676))

(declare-fun res!217186 () Bool)

(assert (=> d!183938 (=> (not res!217186) (not e!305676))))

(declare-fun lt!212058 () List!4639)

(assert (=> d!183938 (= res!217186 (= (content!798 lt!212058) ((_ map or) (content!798 l1!1060) (content!798 lt!212047))))))

(declare-fun e!305675 () List!4639)

(assert (=> d!183938 (= lt!212058 e!305675)))

(declare-fun c!99478 () Bool)

(assert (=> d!183938 (= c!99478 ((_ is Nil!4629) l1!1060))))

(assert (=> d!183938 (= (++!1351 l1!1060 lt!212047) lt!212058)))

(declare-fun b!511698 () Bool)

(assert (=> b!511698 (= e!305676 (or (not (= lt!212047 Nil!4629)) (= lt!212058 l1!1060)))))

(declare-fun b!511695 () Bool)

(assert (=> b!511695 (= e!305675 lt!212047)))

(declare-fun b!511696 () Bool)

(assert (=> b!511696 (= e!305675 (Cons!4629 (h!10026 l1!1060) (++!1351 (t!73157 l1!1060) lt!212047)))))

(declare-fun b!511697 () Bool)

(declare-fun res!217187 () Bool)

(assert (=> b!511697 (=> (not res!217187) (not e!305676))))

(assert (=> b!511697 (= res!217187 (= (size!3730 lt!212058) (+ (size!3730 l1!1060) (size!3730 lt!212047))))))

(assert (= (and d!183938 c!99478) b!511695))

(assert (= (and d!183938 (not c!99478)) b!511696))

(assert (= (and d!183938 res!217186) b!511697))

(assert (= (and b!511697 res!217187) b!511698))

(declare-fun m!758495 () Bool)

(assert (=> d!183938 m!758495))

(declare-fun m!758497 () Bool)

(assert (=> d!183938 m!758497))

(assert (=> d!183938 m!758451))

(assert (=> b!511696 m!758409))

(declare-fun m!758499 () Bool)

(assert (=> b!511697 m!758499))

(declare-fun m!758501 () Bool)

(assert (=> b!511697 m!758501))

(assert (=> b!511697 m!758459))

(assert (=> start!46282 d!183938))

(declare-fun b!511711 () Bool)

(declare-fun e!305683 () Bool)

(declare-fun tp!159068 () Bool)

(assert (=> b!511711 (= e!305683 (and tp_is_empty!2435 tp!159068))))

(assert (=> b!511652 (= tp!159062 e!305683)))

(assert (= (and b!511652 ((_ is Cons!4629) (t!73157 tot!35))) b!511711))

(declare-fun b!511712 () Bool)

(declare-fun e!305684 () Bool)

(declare-fun tp!159069 () Bool)

(assert (=> b!511712 (= e!305684 (and tp_is_empty!2435 tp!159069))))

(assert (=> b!511653 (= tp!159063 e!305684)))

(assert (= (and b!511653 ((_ is Cons!4629) (t!73157 l1!1060))) b!511712))

(declare-fun b!511713 () Bool)

(declare-fun e!305685 () Bool)

(declare-fun tp!159070 () Bool)

(assert (=> b!511713 (= e!305685 (and tp_is_empty!2435 tp!159070))))

(assert (=> b!511650 (= tp!159061 e!305685)))

(assert (= (and b!511650 ((_ is Cons!4629) (t!73157 l2!1029))) b!511713))

(check-sat (not b!511680) (not b!511711) (not b!511713) (not b!511697) (not d!183934) tp_is_empty!2435 (not d!183926) (not b!511688) (not b!511712) (not b!511696) (not d!183922) (not b!511681) (not b!511672) (not d!183938) (not b!511689) (not b!511673))
(check-sat)
