; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73256 () Bool)

(assert start!73256)

(declare-fun e!542157 () Bool)

(declare-datatypes ((B!1209 0))(
  ( (B!1210 (val!2562 Int)) )
))
(declare-datatypes ((List!8833 0))(
  ( (Nil!8817) (Cons!8817 (h!14218 B!1209) (t!92945 List!8833)) )
))
(declare-fun l1!1535 () List!8833)

(declare-fun e!542156 () Bool)

(declare-fun b!25421 () B!1209)

(declare-fun l2!1504 () List!8833)

(declare-fun b!820589 () Bool)

(declare-fun contains!1620 (List!8833 B!1209) Bool)

(declare-fun ++!2259 (List!8833 List!8833) List!8833)

(assert (=> b!820589 (= e!542156 (not (= (contains!1620 (++!2259 l1!1535 l2!1504) b!25421) e!542157)))))

(declare-fun res!378784 () Bool)

(assert (=> b!820589 (=> res!378784 e!542157)))

(assert (=> b!820589 (= res!378784 (contains!1620 l1!1535 b!25421))))

(declare-fun b!820591 () Bool)

(declare-fun e!542155 () Bool)

(declare-fun tp_is_empty!3781 () Bool)

(declare-fun tp!256592 () Bool)

(assert (=> b!820591 (= e!542155 (and tp_is_empty!3781 tp!256592))))

(declare-fun b!820592 () Bool)

(declare-fun e!542158 () Bool)

(declare-fun tp!256591 () Bool)

(assert (=> b!820592 (= e!542158 (and tp_is_empty!3781 tp!256591))))

(declare-fun res!378783 () Bool)

(assert (=> start!73256 (=> (not res!378783) (not e!542156))))

(get-info :version)

(assert (=> start!73256 (= res!378783 (and (or (not ((_ is Cons!8817) l1!1535)) (not (= (h!14218 l1!1535) b!25421))) (not ((_ is Cons!8817) l1!1535))))))

(assert (=> start!73256 e!542156))

(assert (=> start!73256 e!542155))

(assert (=> start!73256 tp_is_empty!3781))

(assert (=> start!73256 e!542158))

(declare-fun b!820590 () Bool)

(assert (=> b!820590 (= e!542157 (contains!1620 l2!1504 b!25421))))

(assert (= (and start!73256 res!378783) b!820589))

(assert (= (and b!820589 (not res!378784)) b!820590))

(assert (= (and start!73256 ((_ is Cons!8817) l1!1535)) b!820591))

(assert (= (and start!73256 ((_ is Cons!8817) l2!1504)) b!820592))

(declare-fun m!1061571 () Bool)

(assert (=> b!820589 m!1061571))

(assert (=> b!820589 m!1061571))

(declare-fun m!1061573 () Bool)

(assert (=> b!820589 m!1061573))

(declare-fun m!1061575 () Bool)

(assert (=> b!820589 m!1061575))

(declare-fun m!1061577 () Bool)

(assert (=> b!820590 m!1061577))

(check-sat (not b!820592) tp_is_empty!3781 (not b!820590) (not b!820589) (not b!820591))
(check-sat)
(get-model)

(declare-fun d!258415 () Bool)

(declare-fun lt!317102 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1278 (List!8833) (InoxSet B!1209))

(assert (=> d!258415 (= lt!317102 (select (content!1278 l2!1504) b!25421))))

(declare-fun e!542172 () Bool)

(assert (=> d!258415 (= lt!317102 e!542172)))

(declare-fun res!378798 () Bool)

(assert (=> d!258415 (=> (not res!378798) (not e!542172))))

(assert (=> d!258415 (= res!378798 ((_ is Cons!8817) l2!1504))))

(assert (=> d!258415 (= (contains!1620 l2!1504 b!25421) lt!317102)))

(declare-fun b!820605 () Bool)

(declare-fun e!542171 () Bool)

(assert (=> b!820605 (= e!542172 e!542171)))

(declare-fun res!378797 () Bool)

(assert (=> b!820605 (=> res!378797 e!542171)))

(assert (=> b!820605 (= res!378797 (= (h!14218 l2!1504) b!25421))))

(declare-fun b!820606 () Bool)

(assert (=> b!820606 (= e!542171 (contains!1620 (t!92945 l2!1504) b!25421))))

(assert (= (and d!258415 res!378798) b!820605))

(assert (= (and b!820605 (not res!378797)) b!820606))

(declare-fun m!1061591 () Bool)

(assert (=> d!258415 m!1061591))

(declare-fun m!1061593 () Bool)

(assert (=> d!258415 m!1061593))

(declare-fun m!1061595 () Bool)

(assert (=> b!820606 m!1061595))

(assert (=> b!820590 d!258415))

(declare-fun lt!317103 () Bool)

(declare-fun d!258421 () Bool)

(assert (=> d!258421 (= lt!317103 (select (content!1278 (++!2259 l1!1535 l2!1504)) b!25421))))

(declare-fun e!542174 () Bool)

(assert (=> d!258421 (= lt!317103 e!542174)))

(declare-fun res!378800 () Bool)

(assert (=> d!258421 (=> (not res!378800) (not e!542174))))

(assert (=> d!258421 (= res!378800 ((_ is Cons!8817) (++!2259 l1!1535 l2!1504)))))

(assert (=> d!258421 (= (contains!1620 (++!2259 l1!1535 l2!1504) b!25421) lt!317103)))

(declare-fun b!820607 () Bool)

(declare-fun e!542173 () Bool)

(assert (=> b!820607 (= e!542174 e!542173)))

(declare-fun res!378799 () Bool)

(assert (=> b!820607 (=> res!378799 e!542173)))

(assert (=> b!820607 (= res!378799 (= (h!14218 (++!2259 l1!1535 l2!1504)) b!25421))))

(declare-fun b!820608 () Bool)

(assert (=> b!820608 (= e!542173 (contains!1620 (t!92945 (++!2259 l1!1535 l2!1504)) b!25421))))

(assert (= (and d!258421 res!378800) b!820607))

(assert (= (and b!820607 (not res!378799)) b!820608))

(assert (=> d!258421 m!1061571))

(declare-fun m!1061597 () Bool)

(assert (=> d!258421 m!1061597))

(declare-fun m!1061599 () Bool)

(assert (=> d!258421 m!1061599))

(declare-fun m!1061601 () Bool)

(assert (=> b!820608 m!1061601))

(assert (=> b!820589 d!258421))

(declare-fun b!820638 () Bool)

(declare-fun e!542191 () List!8833)

(assert (=> b!820638 (= e!542191 (Cons!8817 (h!14218 l1!1535) (++!2259 (t!92945 l1!1535) l2!1504)))))

(declare-fun d!258423 () Bool)

(declare-fun e!542192 () Bool)

(assert (=> d!258423 e!542192))

(declare-fun res!378813 () Bool)

(assert (=> d!258423 (=> (not res!378813) (not e!542192))))

(declare-fun lt!317110 () List!8833)

(assert (=> d!258423 (= res!378813 (= (content!1278 lt!317110) ((_ map or) (content!1278 l1!1535) (content!1278 l2!1504))))))

(assert (=> d!258423 (= lt!317110 e!542191)))

(declare-fun c!132958 () Bool)

(assert (=> d!258423 (= c!132958 ((_ is Nil!8817) l1!1535))))

(assert (=> d!258423 (= (++!2259 l1!1535 l2!1504) lt!317110)))

(declare-fun b!820640 () Bool)

(assert (=> b!820640 (= e!542192 (or (not (= l2!1504 Nil!8817)) (= lt!317110 l1!1535)))))

(declare-fun b!820639 () Bool)

(declare-fun res!378814 () Bool)

(assert (=> b!820639 (=> (not res!378814) (not e!542192))))

(declare-fun size!7467 (List!8833) Int)

(assert (=> b!820639 (= res!378814 (= (size!7467 lt!317110) (+ (size!7467 l1!1535) (size!7467 l2!1504))))))

(declare-fun b!820637 () Bool)

(assert (=> b!820637 (= e!542191 l2!1504)))

(assert (= (and d!258423 c!132958) b!820637))

(assert (= (and d!258423 (not c!132958)) b!820638))

(assert (= (and d!258423 res!378813) b!820639))

(assert (= (and b!820639 res!378814) b!820640))

(declare-fun m!1061619 () Bool)

(assert (=> b!820638 m!1061619))

(declare-fun m!1061621 () Bool)

(assert (=> d!258423 m!1061621))

(declare-fun m!1061623 () Bool)

(assert (=> d!258423 m!1061623))

(assert (=> d!258423 m!1061591))

(declare-fun m!1061625 () Bool)

(assert (=> b!820639 m!1061625))

(declare-fun m!1061627 () Bool)

(assert (=> b!820639 m!1061627))

(declare-fun m!1061629 () Bool)

(assert (=> b!820639 m!1061629))

(assert (=> b!820589 d!258423))

(declare-fun d!258427 () Bool)

(declare-fun lt!317111 () Bool)

(assert (=> d!258427 (= lt!317111 (select (content!1278 l1!1535) b!25421))))

(declare-fun e!542194 () Bool)

(assert (=> d!258427 (= lt!317111 e!542194)))

(declare-fun res!378816 () Bool)

(assert (=> d!258427 (=> (not res!378816) (not e!542194))))

(assert (=> d!258427 (= res!378816 ((_ is Cons!8817) l1!1535))))

(assert (=> d!258427 (= (contains!1620 l1!1535 b!25421) lt!317111)))

(declare-fun b!820641 () Bool)

(declare-fun e!542193 () Bool)

(assert (=> b!820641 (= e!542194 e!542193)))

(declare-fun res!378815 () Bool)

(assert (=> b!820641 (=> res!378815 e!542193)))

(assert (=> b!820641 (= res!378815 (= (h!14218 l1!1535) b!25421))))

(declare-fun b!820642 () Bool)

(assert (=> b!820642 (= e!542193 (contains!1620 (t!92945 l1!1535) b!25421))))

(assert (= (and d!258427 res!378816) b!820641))

(assert (= (and b!820641 (not res!378815)) b!820642))

(assert (=> d!258427 m!1061623))

(declare-fun m!1061631 () Bool)

(assert (=> d!258427 m!1061631))

(declare-fun m!1061633 () Bool)

(assert (=> b!820642 m!1061633))

(assert (=> b!820589 d!258427))

(declare-fun b!820647 () Bool)

(declare-fun e!542197 () Bool)

(declare-fun tp!256599 () Bool)

(assert (=> b!820647 (= e!542197 (and tp_is_empty!3781 tp!256599))))

(assert (=> b!820592 (= tp!256591 e!542197)))

(assert (= (and b!820592 ((_ is Cons!8817) (t!92945 l2!1504))) b!820647))

(declare-fun b!820648 () Bool)

(declare-fun e!542198 () Bool)

(declare-fun tp!256600 () Bool)

(assert (=> b!820648 (= e!542198 (and tp_is_empty!3781 tp!256600))))

(assert (=> b!820591 (= tp!256592 e!542198)))

(assert (= (and b!820591 ((_ is Cons!8817) (t!92945 l1!1535))) b!820648))

(check-sat tp_is_empty!3781 (not d!258423) (not b!820606) (not d!258415) (not b!820639) (not d!258421) (not b!820648) (not b!820642) (not b!820638) (not b!820608) (not d!258427) (not b!820647))
(check-sat)
