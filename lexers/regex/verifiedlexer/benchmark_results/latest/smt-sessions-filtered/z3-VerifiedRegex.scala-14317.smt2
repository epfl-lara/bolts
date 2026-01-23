; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!747638 () Bool)

(assert start!747638)

(declare-fun b!7915820 () Bool)

(declare-fun e!4672591 () Bool)

(declare-fun tp!2357417 () Bool)

(assert (=> b!7915820 (= e!4672591 tp!2357417)))

(declare-fun b!7915821 () Bool)

(declare-fun e!4672589 () Bool)

(declare-datatypes ((T!145608 0))(
  ( (T!145609 (val!32032 Int)) )
))
(declare-datatypes ((List!74544 0))(
  ( (Nil!74420) (Cons!74420 (h!80868 T!145608) (t!390053 List!74544)) )
))
(declare-datatypes ((IArray!31809 0))(
  ( (IArray!31810 (innerList!15962 List!74544)) )
))
(declare-datatypes ((Conc!15874 0))(
  ( (Node!15874 (left!56831 Conc!15874) (right!57161 Conc!15874) (csize!31978 Int) (cheight!16085 Int)) (Leaf!30192 (xs!19256 IArray!31809) (csize!31979 Int)) (Empty!15874) )
))
(declare-fun c!5365 () Conc!15874)

(declare-fun inv!95567 (IArray!31809) Bool)

(assert (=> b!7915821 (= e!4672589 (and (inv!95567 (xs!19256 c!5365)) e!4672591))))

(declare-fun tp!2357415 () Bool)

(declare-fun b!7915822 () Bool)

(declare-fun tp!2357418 () Bool)

(declare-fun inv!95568 (Conc!15874) Bool)

(assert (=> b!7915822 (= e!4672589 (and (inv!95568 (left!56831 c!5365)) tp!2357415 (inv!95568 (right!57161 c!5365)) tp!2357418))))

(declare-fun e!4672588 () Bool)

(declare-fun b!7915823 () Bool)

(declare-fun ll!14 () List!74544)

(declare-fun lt!2690139 () List!74544)

(declare-fun ++!18238 (List!74544 List!74544) List!74544)

(declare-fun list!19367 (Conc!15874) List!74544)

(assert (=> b!7915823 (= e!4672588 (not (= lt!2690139 (++!18238 (list!19367 c!5365) (Cons!74420 (h!80868 ll!14) Nil!74420)))))))

(declare-fun b!7915824 () Bool)

(declare-fun e!4672592 () Bool)

(assert (=> b!7915824 (= e!4672592 e!4672588)))

(declare-fun res!3141770 () Bool)

(assert (=> b!7915824 (=> (not res!3141770) (not e!4672588))))

(declare-fun lt!2690137 () Conc!15874)

(assert (=> b!7915824 (= res!3141770 (= (list!19367 lt!2690137) (++!18238 lt!2690139 (t!390053 ll!14))))))

(declare-fun lt!2690138 () Conc!15874)

(assert (=> b!7915824 (= lt!2690139 (list!19367 lt!2690138))))

(declare-fun rec!55 (List!74544 Conc!15874) Conc!15874)

(assert (=> b!7915824 (= lt!2690137 (rec!55 (t!390053 ll!14) lt!2690138))))

(declare-fun append!1120 (Conc!15874 T!145608) Conc!15874)

(assert (=> b!7915824 (= lt!2690138 (append!1120 c!5365 (h!80868 ll!14)))))

(declare-fun b!7915825 () Bool)

(declare-fun res!3141768 () Bool)

(assert (=> b!7915825 (=> (not res!3141768) (not e!4672592))))

(get-info :version)

(assert (=> b!7915825 (= res!3141768 (not ((_ is Nil!74420) ll!14)))))

(declare-fun res!3141769 () Bool)

(assert (=> start!747638 (=> (not res!3141769) (not e!4672592))))

(declare-fun isBalanced!4500 (Conc!15874) Bool)

(assert (=> start!747638 (= res!3141769 (isBalanced!4500 c!5365))))

(assert (=> start!747638 e!4672592))

(assert (=> start!747638 (and (inv!95568 c!5365) e!4672589)))

(declare-fun e!4672590 () Bool)

(assert (=> start!747638 e!4672590))

(declare-fun b!7915826 () Bool)

(declare-fun tp_is_empty!53173 () Bool)

(declare-fun tp!2357416 () Bool)

(assert (=> b!7915826 (= e!4672590 (and tp_is_empty!53173 tp!2357416))))

(assert (= (and start!747638 res!3141769) b!7915825))

(assert (= (and b!7915825 res!3141768) b!7915824))

(assert (= (and b!7915824 res!3141770) b!7915823))

(assert (= (and start!747638 ((_ is Node!15874) c!5365)) b!7915822))

(assert (= b!7915821 b!7915820))

(assert (= (and start!747638 ((_ is Leaf!30192) c!5365)) b!7915821))

(assert (= (and start!747638 ((_ is Cons!74420) ll!14)) b!7915826))

(declare-fun m!8289982 () Bool)

(assert (=> start!747638 m!8289982))

(declare-fun m!8289984 () Bool)

(assert (=> start!747638 m!8289984))

(declare-fun m!8289986 () Bool)

(assert (=> b!7915821 m!8289986))

(declare-fun m!8289988 () Bool)

(assert (=> b!7915822 m!8289988))

(declare-fun m!8289990 () Bool)

(assert (=> b!7915822 m!8289990))

(declare-fun m!8289992 () Bool)

(assert (=> b!7915823 m!8289992))

(assert (=> b!7915823 m!8289992))

(declare-fun m!8289994 () Bool)

(assert (=> b!7915823 m!8289994))

(declare-fun m!8289996 () Bool)

(assert (=> b!7915824 m!8289996))

(declare-fun m!8289998 () Bool)

(assert (=> b!7915824 m!8289998))

(declare-fun m!8290000 () Bool)

(assert (=> b!7915824 m!8290000))

(declare-fun m!8290002 () Bool)

(assert (=> b!7915824 m!8290002))

(declare-fun m!8290004 () Bool)

(assert (=> b!7915824 m!8290004))

(check-sat (not start!747638) (not b!7915820) (not b!7915823) tp_is_empty!53173 (not b!7915821) (not b!7915824) (not b!7915822) (not b!7915826))
(check-sat)
(get-model)

(declare-fun b!7915848 () Bool)

(declare-fun e!4672604 () List!74544)

(assert (=> b!7915848 (= e!4672604 (Cons!74420 (h!80868 (list!19367 c!5365)) (++!18238 (t!390053 (list!19367 c!5365)) (Cons!74420 (h!80868 ll!14) Nil!74420))))))

(declare-fun b!7915849 () Bool)

(declare-fun res!3141781 () Bool)

(declare-fun e!4672603 () Bool)

(assert (=> b!7915849 (=> (not res!3141781) (not e!4672603))))

(declare-fun lt!2690145 () List!74544)

(declare-fun size!43197 (List!74544) Int)

(assert (=> b!7915849 (= res!3141781 (= (size!43197 lt!2690145) (+ (size!43197 (list!19367 c!5365)) (size!43197 (Cons!74420 (h!80868 ll!14) Nil!74420)))))))

(declare-fun b!7915850 () Bool)

(assert (=> b!7915850 (= e!4672603 (or (not (= (Cons!74420 (h!80868 ll!14) Nil!74420) Nil!74420)) (= lt!2690145 (list!19367 c!5365))))))

(declare-fun d!2361558 () Bool)

(assert (=> d!2361558 e!4672603))

(declare-fun res!3141782 () Bool)

(assert (=> d!2361558 (=> (not res!3141782) (not e!4672603))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15764 (List!74544) (InoxSet T!145608))

(assert (=> d!2361558 (= res!3141782 (= (content!15764 lt!2690145) ((_ map or) (content!15764 (list!19367 c!5365)) (content!15764 (Cons!74420 (h!80868 ll!14) Nil!74420)))))))

(assert (=> d!2361558 (= lt!2690145 e!4672604)))

(declare-fun c!1452472 () Bool)

(assert (=> d!2361558 (= c!1452472 ((_ is Nil!74420) (list!19367 c!5365)))))

(assert (=> d!2361558 (= (++!18238 (list!19367 c!5365) (Cons!74420 (h!80868 ll!14) Nil!74420)) lt!2690145)))

(declare-fun b!7915847 () Bool)

(assert (=> b!7915847 (= e!4672604 (Cons!74420 (h!80868 ll!14) Nil!74420))))

(assert (= (and d!2361558 c!1452472) b!7915847))

(assert (= (and d!2361558 (not c!1452472)) b!7915848))

(assert (= (and d!2361558 res!3141782) b!7915849))

(assert (= (and b!7915849 res!3141781) b!7915850))

(declare-fun m!8290020 () Bool)

(assert (=> b!7915848 m!8290020))

(declare-fun m!8290022 () Bool)

(assert (=> b!7915849 m!8290022))

(assert (=> b!7915849 m!8289992))

(declare-fun m!8290024 () Bool)

(assert (=> b!7915849 m!8290024))

(declare-fun m!8290026 () Bool)

(assert (=> b!7915849 m!8290026))

(declare-fun m!8290028 () Bool)

(assert (=> d!2361558 m!8290028))

(assert (=> d!2361558 m!8289992))

(declare-fun m!8290030 () Bool)

(assert (=> d!2361558 m!8290030))

(declare-fun m!8290032 () Bool)

(assert (=> d!2361558 m!8290032))

(assert (=> b!7915823 d!2361558))

(declare-fun b!7915878 () Bool)

(declare-fun e!4672618 () List!74544)

(assert (=> b!7915878 (= e!4672618 (++!18238 (list!19367 (left!56831 c!5365)) (list!19367 (right!57161 c!5365))))))

(declare-fun b!7915876 () Bool)

(declare-fun e!4672617 () List!74544)

(assert (=> b!7915876 (= e!4672617 e!4672618)))

(declare-fun c!1452486 () Bool)

(assert (=> b!7915876 (= c!1452486 ((_ is Leaf!30192) c!5365))))

(declare-fun b!7915875 () Bool)

(assert (=> b!7915875 (= e!4672617 Nil!74420)))

(declare-fun d!2361562 () Bool)

(declare-fun c!1452485 () Bool)

(assert (=> d!2361562 (= c!1452485 ((_ is Empty!15874) c!5365))))

(assert (=> d!2361562 (= (list!19367 c!5365) e!4672617)))

(declare-fun b!7915877 () Bool)

(declare-fun list!19369 (IArray!31809) List!74544)

(assert (=> b!7915877 (= e!4672618 (list!19369 (xs!19256 c!5365)))))

(assert (= (and d!2361562 c!1452485) b!7915875))

(assert (= (and d!2361562 (not c!1452485)) b!7915876))

(assert (= (and b!7915876 c!1452486) b!7915877))

(assert (= (and b!7915876 (not c!1452486)) b!7915878))

(declare-fun m!8290048 () Bool)

(assert (=> b!7915878 m!8290048))

(declare-fun m!8290050 () Bool)

(assert (=> b!7915878 m!8290050))

(assert (=> b!7915878 m!8290048))

(assert (=> b!7915878 m!8290050))

(declare-fun m!8290054 () Bool)

(assert (=> b!7915878 m!8290054))

(declare-fun m!8290056 () Bool)

(assert (=> b!7915877 m!8290056))

(assert (=> b!7915823 d!2361562))

(declare-fun b!7915884 () Bool)

(declare-fun e!4672622 () List!74544)

(assert (=> b!7915884 (= e!4672622 (Cons!74420 (h!80868 lt!2690139) (++!18238 (t!390053 lt!2690139) (t!390053 ll!14))))))

(declare-fun b!7915885 () Bool)

(declare-fun res!3141785 () Bool)

(declare-fun e!4672621 () Bool)

(assert (=> b!7915885 (=> (not res!3141785) (not e!4672621))))

(declare-fun lt!2690147 () List!74544)

(assert (=> b!7915885 (= res!3141785 (= (size!43197 lt!2690147) (+ (size!43197 lt!2690139) (size!43197 (t!390053 ll!14)))))))

(declare-fun b!7915886 () Bool)

(assert (=> b!7915886 (= e!4672621 (or (not (= (t!390053 ll!14) Nil!74420)) (= lt!2690147 lt!2690139)))))

(declare-fun d!2361568 () Bool)

(assert (=> d!2361568 e!4672621))

(declare-fun res!3141786 () Bool)

(assert (=> d!2361568 (=> (not res!3141786) (not e!4672621))))

(assert (=> d!2361568 (= res!3141786 (= (content!15764 lt!2690147) ((_ map or) (content!15764 lt!2690139) (content!15764 (t!390053 ll!14)))))))

(assert (=> d!2361568 (= lt!2690147 e!4672622)))

(declare-fun c!1452488 () Bool)

(assert (=> d!2361568 (= c!1452488 ((_ is Nil!74420) lt!2690139))))

(assert (=> d!2361568 (= (++!18238 lt!2690139 (t!390053 ll!14)) lt!2690147)))

(declare-fun b!7915883 () Bool)

(assert (=> b!7915883 (= e!4672622 (t!390053 ll!14))))

(assert (= (and d!2361568 c!1452488) b!7915883))

(assert (= (and d!2361568 (not c!1452488)) b!7915884))

(assert (= (and d!2361568 res!3141786) b!7915885))

(assert (= (and b!7915885 res!3141785) b!7915886))

(declare-fun m!8290070 () Bool)

(assert (=> b!7915884 m!8290070))

(declare-fun m!8290074 () Bool)

(assert (=> b!7915885 m!8290074))

(declare-fun m!8290076 () Bool)

(assert (=> b!7915885 m!8290076))

(declare-fun m!8290078 () Bool)

(assert (=> b!7915885 m!8290078))

(declare-fun m!8290080 () Bool)

(assert (=> d!2361568 m!8290080))

(declare-fun m!8290082 () Bool)

(assert (=> d!2361568 m!8290082))

(declare-fun m!8290084 () Bool)

(assert (=> d!2361568 m!8290084))

(assert (=> b!7915824 d!2361568))

(declare-fun b!7915894 () Bool)

(declare-fun e!4672626 () List!74544)

(assert (=> b!7915894 (= e!4672626 (++!18238 (list!19367 (left!56831 lt!2690137)) (list!19367 (right!57161 lt!2690137))))))

(declare-fun b!7915892 () Bool)

(declare-fun e!4672625 () List!74544)

(assert (=> b!7915892 (= e!4672625 e!4672626)))

(declare-fun c!1452492 () Bool)

(assert (=> b!7915892 (= c!1452492 ((_ is Leaf!30192) lt!2690137))))

(declare-fun b!7915891 () Bool)

(assert (=> b!7915891 (= e!4672625 Nil!74420)))

(declare-fun d!2361572 () Bool)

(declare-fun c!1452491 () Bool)

(assert (=> d!2361572 (= c!1452491 ((_ is Empty!15874) lt!2690137))))

(assert (=> d!2361572 (= (list!19367 lt!2690137) e!4672625)))

(declare-fun b!7915893 () Bool)

(assert (=> b!7915893 (= e!4672626 (list!19369 (xs!19256 lt!2690137)))))

(assert (= (and d!2361572 c!1452491) b!7915891))

(assert (= (and d!2361572 (not c!1452491)) b!7915892))

(assert (= (and b!7915892 c!1452492) b!7915893))

(assert (= (and b!7915892 (not c!1452492)) b!7915894))

(declare-fun m!8290094 () Bool)

(assert (=> b!7915894 m!8290094))

(declare-fun m!8290096 () Bool)

(assert (=> b!7915894 m!8290096))

(assert (=> b!7915894 m!8290094))

(assert (=> b!7915894 m!8290096))

(declare-fun m!8290098 () Bool)

(assert (=> b!7915894 m!8290098))

(declare-fun m!8290100 () Bool)

(assert (=> b!7915893 m!8290100))

(assert (=> b!7915824 d!2361572))

(declare-fun b!7915898 () Bool)

(declare-fun e!4672628 () List!74544)

(assert (=> b!7915898 (= e!4672628 (++!18238 (list!19367 (left!56831 lt!2690138)) (list!19367 (right!57161 lt!2690138))))))

(declare-fun b!7915896 () Bool)

(declare-fun e!4672627 () List!74544)

(assert (=> b!7915896 (= e!4672627 e!4672628)))

(declare-fun c!1452494 () Bool)

(assert (=> b!7915896 (= c!1452494 ((_ is Leaf!30192) lt!2690138))))

(declare-fun b!7915895 () Bool)

(assert (=> b!7915895 (= e!4672627 Nil!74420)))

(declare-fun d!2361576 () Bool)

(declare-fun c!1452493 () Bool)

(assert (=> d!2361576 (= c!1452493 ((_ is Empty!15874) lt!2690138))))

(assert (=> d!2361576 (= (list!19367 lt!2690138) e!4672627)))

(declare-fun b!7915897 () Bool)

(assert (=> b!7915897 (= e!4672628 (list!19369 (xs!19256 lt!2690138)))))

(assert (= (and d!2361576 c!1452493) b!7915895))

(assert (= (and d!2361576 (not c!1452493)) b!7915896))

(assert (= (and b!7915896 c!1452494) b!7915897))

(assert (= (and b!7915896 (not c!1452494)) b!7915898))

(declare-fun m!8290102 () Bool)

(assert (=> b!7915898 m!8290102))

(declare-fun m!8290104 () Bool)

(assert (=> b!7915898 m!8290104))

(assert (=> b!7915898 m!8290102))

(assert (=> b!7915898 m!8290104))

(declare-fun m!8290106 () Bool)

(assert (=> b!7915898 m!8290106))

(declare-fun m!8290108 () Bool)

(assert (=> b!7915897 m!8290108))

(assert (=> b!7915824 d!2361576))

(declare-fun d!2361578 () Bool)

(declare-fun e!4672640 () Bool)

(assert (=> d!2361578 e!4672640))

(declare-fun res!3141792 () Bool)

(assert (=> d!2361578 (=> (not res!3141792) (not e!4672640))))

(declare-fun lt!2690177 () Conc!15874)

(assert (=> d!2361578 (= res!3141792 (= (list!19367 lt!2690177) (++!18238 (list!19367 lt!2690138) (t!390053 ll!14))))))

(declare-fun e!4672639 () Conc!15874)

(assert (=> d!2361578 (= lt!2690177 e!4672639)))

(declare-fun c!1452502 () Bool)

(assert (=> d!2361578 (= c!1452502 ((_ is Nil!74420) (t!390053 ll!14)))))

(assert (=> d!2361578 (isBalanced!4500 lt!2690138)))

(assert (=> d!2361578 (= (rec!55 (t!390053 ll!14) lt!2690138) lt!2690177)))

(declare-fun b!7915914 () Bool)

(assert (=> b!7915914 (= e!4672639 lt!2690138)))

(declare-fun b!7915915 () Bool)

(assert (=> b!7915915 (= e!4672639 (rec!55 (t!390053 (t!390053 ll!14)) (append!1120 lt!2690138 (h!80868 (t!390053 ll!14)))))))

(declare-fun lt!2690175 () List!74544)

(assert (=> b!7915915 (= lt!2690175 (list!19367 lt!2690138))))

(declare-fun lt!2690176 () List!74544)

(assert (=> b!7915915 (= lt!2690176 (Cons!74420 (h!80868 (t!390053 ll!14)) Nil!74420))))

(declare-datatypes ((Unit!169541 0))(
  ( (Unit!169542) )
))
(declare-fun lt!2690173 () Unit!169541)

(declare-fun lemmaConcatAssociativity!3143 (List!74544 List!74544 List!74544) Unit!169541)

(assert (=> b!7915915 (= lt!2690173 (lemmaConcatAssociativity!3143 lt!2690175 lt!2690176 (t!390053 (t!390053 ll!14))))))

(assert (=> b!7915915 (= (++!18238 (++!18238 lt!2690175 lt!2690176) (t!390053 (t!390053 ll!14))) (++!18238 lt!2690175 (++!18238 lt!2690176 (t!390053 (t!390053 ll!14)))))))

(declare-fun lt!2690174 () Unit!169541)

(assert (=> b!7915915 (= lt!2690174 lt!2690173)))

(declare-fun b!7915916 () Bool)

(assert (=> b!7915916 (= e!4672640 (isBalanced!4500 lt!2690177))))

(assert (= (and d!2361578 c!1452502) b!7915914))

(assert (= (and d!2361578 (not c!1452502)) b!7915915))

(assert (= (and d!2361578 res!3141792) b!7915916))

(declare-fun m!8290126 () Bool)

(assert (=> d!2361578 m!8290126))

(assert (=> d!2361578 m!8289996))

(assert (=> d!2361578 m!8289996))

(declare-fun m!8290130 () Bool)

(assert (=> d!2361578 m!8290130))

(declare-fun m!8290132 () Bool)

(assert (=> d!2361578 m!8290132))

(declare-fun m!8290134 () Bool)

(assert (=> b!7915915 m!8290134))

(assert (=> b!7915915 m!8290134))

(declare-fun m!8290140 () Bool)

(assert (=> b!7915915 m!8290140))

(declare-fun m!8290142 () Bool)

(assert (=> b!7915915 m!8290142))

(assert (=> b!7915915 m!8289996))

(declare-fun m!8290144 () Bool)

(assert (=> b!7915915 m!8290144))

(declare-fun m!8290146 () Bool)

(assert (=> b!7915915 m!8290146))

(declare-fun m!8290148 () Bool)

(assert (=> b!7915915 m!8290148))

(assert (=> b!7915915 m!8290144))

(assert (=> b!7915915 m!8290148))

(declare-fun m!8290150 () Bool)

(assert (=> b!7915915 m!8290150))

(declare-fun m!8290152 () Bool)

(assert (=> b!7915916 m!8290152))

(assert (=> b!7915824 d!2361578))

(declare-fun d!2361582 () Bool)

(declare-fun e!4672674 () Bool)

(assert (=> d!2361582 e!4672674))

(declare-fun res!3141810 () Bool)

(assert (=> d!2361582 (=> (not res!3141810) (not e!4672674))))

(declare-fun lt!2690283 () Conc!15874)

(assert (=> d!2361582 (= res!3141810 (isBalanced!4500 lt!2690283))))

(declare-fun e!4672671 () Conc!15874)

(assert (=> d!2361582 (= lt!2690283 e!4672671)))

(declare-fun c!1452530 () Bool)

(assert (=> d!2361582 (= c!1452530 ((_ is Empty!15874) c!5365))))

(assert (=> d!2361582 (isBalanced!4500 c!5365)))

(assert (=> d!2361582 (= (append!1120 c!5365 (h!80868 ll!14)) lt!2690283)))

(declare-fun bm!734522 () Bool)

(declare-fun call!734530 () IArray!31809)

(declare-fun fill!253 (Int T!145608) IArray!31809)

(assert (=> bm!734522 (= call!734530 (fill!253 1 (h!80868 ll!14)))))

(declare-fun call!734531 () List!74544)

(declare-fun c!1452531 () Bool)

(declare-fun lt!2690270 () List!74544)

(declare-fun lt!2690285 () List!74544)

(declare-fun lt!2690284 () List!74544)

(declare-fun bm!734523 () Bool)

(declare-fun lt!2690281 () List!74544)

(assert (=> bm!734523 (= call!734531 (++!18238 (ite c!1452531 lt!2690284 lt!2690270) (ite c!1452531 lt!2690285 lt!2690281)))))

(declare-fun b!7915982 () Bool)

(declare-fun e!4672676 () Conc!15874)

(declare-fun call!734536 () Conc!15874)

(declare-fun lt!2690275 () Conc!15874)

(declare-fun <>!412 (Conc!15874 Conc!15874) Conc!15874)

(assert (=> b!7915982 (= e!4672676 (<>!412 call!734536 (right!57161 lt!2690275)))))

(declare-fun lt!2690280 () List!74544)

(declare-fun call!734527 () List!74544)

(assert (=> b!7915982 (= lt!2690280 call!734527)))

(declare-fun lt!2690269 () List!74544)

(assert (=> b!7915982 (= lt!2690269 (list!19367 (left!56831 lt!2690275)))))

(declare-fun lt!2690278 () List!74544)

(assert (=> b!7915982 (= lt!2690278 (list!19367 (right!57161 lt!2690275)))))

(declare-fun lt!2690279 () Unit!169541)

(declare-fun lemmaConcatAssociativity!3144 (List!74544 List!74544 List!74544) Unit!169541)

(assert (=> b!7915982 (= lt!2690279 (lemmaConcatAssociativity!3144 lt!2690280 lt!2690269 lt!2690278))))

(declare-fun call!734529 () List!74544)

(declare-fun call!734534 () List!74544)

(assert (=> b!7915982 (= (++!18238 call!734534 lt!2690278) (++!18238 lt!2690280 call!734529))))

(declare-fun lt!2690273 () Unit!169541)

(assert (=> b!7915982 (= lt!2690273 lt!2690279)))

(assert (=> b!7915982 (= lt!2690270 call!734527)))

(declare-fun call!734532 () List!74544)

(assert (=> b!7915982 (= lt!2690281 call!734532)))

(declare-fun lt!2690272 () List!74544)

(assert (=> b!7915982 (= lt!2690272 (Cons!74420 (h!80868 ll!14) Nil!74420))))

(declare-fun lt!2690276 () Unit!169541)

(declare-fun call!734528 () Unit!169541)

(assert (=> b!7915982 (= lt!2690276 call!734528)))

(declare-fun call!734535 () List!74544)

(assert (=> b!7915982 (= (++!18238 call!734531 lt!2690272) (++!18238 lt!2690270 call!734535))))

(declare-fun lt!2690277 () Unit!169541)

(assert (=> b!7915982 (= lt!2690277 lt!2690276)))

(declare-fun b!7915983 () Bool)

(declare-fun res!3141808 () Bool)

(assert (=> b!7915983 (=> (not res!3141808) (not e!4672674))))

(declare-fun height!2190 (Conc!15874) Int)

(assert (=> b!7915983 (= res!3141808 (<= (height!2190 lt!2690283) (+ (height!2190 c!5365) 1)))))

(declare-fun b!7915984 () Bool)

(assert (=> b!7915984 (= c!1452531 (<= (height!2190 lt!2690275) (+ (height!2190 (left!56831 c!5365)) 1)))))

(assert (=> b!7915984 (= lt!2690275 (append!1120 (right!57161 c!5365) (h!80868 ll!14)))))

(declare-fun e!4672675 () Conc!15874)

(assert (=> b!7915984 (= e!4672675 e!4672676)))

(declare-fun b!7915985 () Bool)

(declare-fun e!4672673 () Conc!15874)

(assert (=> b!7915985 (= e!4672673 (Leaf!30192 call!734530 1))))

(declare-fun b!7915986 () Bool)

(declare-fun res!3141809 () Bool)

(assert (=> b!7915986 (=> (not res!3141809) (not e!4672674))))

(assert (=> b!7915986 (= res!3141809 (<= (height!2190 c!5365) (height!2190 lt!2690283)))))

(declare-fun b!7915987 () Bool)

(declare-fun e!4672672 () Conc!15874)

(declare-fun append!1122 (IArray!31809 T!145608) IArray!31809)

(assert (=> b!7915987 (= e!4672672 (Leaf!30192 (append!1122 (xs!19256 c!5365) (h!80868 ll!14)) (+ (csize!31979 c!5365) 1)))))

(declare-fun lt!2690274 () List!74544)

(declare-fun $colon+!297 (List!74544 T!145608) List!74544)

(assert (=> b!7915987 (= lt!2690274 ($colon+!297 (list!19369 (xs!19256 c!5365)) (h!80868 ll!14)))))

(declare-fun b!7915988 () Bool)

(assert (=> b!7915988 (= e!4672676 call!734536)))

(assert (=> b!7915988 (= lt!2690284 call!734527)))

(assert (=> b!7915988 (= lt!2690285 call!734532)))

(declare-fun lt!2690271 () List!74544)

(assert (=> b!7915988 (= lt!2690271 (Cons!74420 (h!80868 ll!14) Nil!74420))))

(declare-fun lt!2690268 () Unit!169541)

(assert (=> b!7915988 (= lt!2690268 call!734528)))

(assert (=> b!7915988 (= call!734535 call!734534)))

(declare-fun lt!2690282 () Unit!169541)

(assert (=> b!7915988 (= lt!2690282 lt!2690268)))

(declare-fun bm!734524 () Bool)

(declare-fun c!1452528 () Bool)

(declare-fun c!1452532 () Bool)

(assert (=> bm!734524 (= c!1452528 c!1452532)))

(declare-fun call!734533 () Conc!15874)

(assert (=> bm!734524 (= call!734533 (<>!412 (ite c!1452532 (left!56831 c!5365) c!5365) e!4672673))))

(declare-fun bm!734525 () Bool)

(assert (=> bm!734525 (= call!734535 (++!18238 (ite c!1452531 call!734531 lt!2690281) (ite c!1452531 lt!2690271 lt!2690272)))))

(declare-fun b!7915989 () Bool)

(assert (=> b!7915989 (= e!4672672 call!734533)))

(declare-fun b!7915990 () Bool)

(assert (=> b!7915990 (= e!4672673 (ite c!1452531 lt!2690275 (left!56831 lt!2690275)))))

(declare-fun bm!734526 () Bool)

(assert (=> bm!734526 (= call!734532 (list!19367 (right!57161 c!5365)))))

(declare-fun b!7915991 () Bool)

(assert (=> b!7915991 (= e!4672671 e!4672675)))

(assert (=> b!7915991 (= c!1452532 ((_ is Node!15874) c!5365))))

(declare-fun b!7915992 () Bool)

(assert (=> b!7915992 (= e!4672671 (Leaf!30192 call!734530 1))))

(declare-fun b!7915993 () Bool)

(assert (=> b!7915993 (= e!4672674 (= (list!19367 lt!2690283) ($colon+!297 (list!19367 c!5365) (h!80868 ll!14))))))

(declare-fun bm!734527 () Bool)

(assert (=> bm!734527 (= call!734528 (lemmaConcatAssociativity!3144 (ite c!1452531 lt!2690284 lt!2690270) (ite c!1452531 lt!2690285 lt!2690281) (ite c!1452531 lt!2690271 lt!2690272)))))

(declare-fun b!7915994 () Bool)

(declare-fun c!1452529 () Bool)

(assert (=> b!7915994 (= c!1452529 (< (csize!31979 c!5365) 512))))

(assert (=> b!7915994 (= e!4672675 e!4672672)))

(declare-fun bm!734528 () Bool)

(assert (=> bm!734528 (= call!734534 (++!18238 (ite c!1452531 lt!2690284 lt!2690280) (ite c!1452531 call!734529 lt!2690269)))))

(declare-fun bm!734529 () Bool)

(assert (=> bm!734529 (= call!734529 (++!18238 (ite c!1452531 lt!2690285 lt!2690269) (ite c!1452531 lt!2690271 lt!2690278)))))

(declare-fun bm!734530 () Bool)

(assert (=> bm!734530 (= call!734536 call!734533)))

(declare-fun bm!734531 () Bool)

(assert (=> bm!734531 (= call!734527 (list!19367 (left!56831 c!5365)))))

(assert (= (and d!2361582 c!1452530) b!7915992))

(assert (= (and d!2361582 (not c!1452530)) b!7915991))

(assert (= (and b!7915991 c!1452532) b!7915984))

(assert (= (and b!7915991 (not c!1452532)) b!7915994))

(assert (= (and b!7915984 c!1452531) b!7915988))

(assert (= (and b!7915984 (not c!1452531)) b!7915982))

(assert (= (or b!7915988 b!7915982) bm!734527))

(assert (= (or b!7915988 b!7915982) bm!734526))

(assert (= (or b!7915988 b!7915982) bm!734530))

(assert (= (or b!7915988 b!7915982) bm!734523))

(assert (= (or b!7915988 b!7915982) bm!734529))

(assert (= (or b!7915988 b!7915982) bm!734531))

(assert (= (or b!7915988 b!7915982) bm!734525))

(assert (= (or b!7915988 b!7915982) bm!734528))

(assert (= (and b!7915994 c!1452529) b!7915987))

(assert (= (and b!7915994 (not c!1452529)) b!7915989))

(assert (= (or bm!734530 b!7915989) bm!734524))

(assert (= (and bm!734524 c!1452528) b!7915990))

(assert (= (and bm!734524 (not c!1452528)) b!7915985))

(assert (= (or b!7915992 b!7915985) bm!734522))

(assert (= (and d!2361582 res!3141810) b!7915986))

(assert (= (and b!7915986 res!3141809) b!7915983))

(assert (= (and b!7915983 res!3141808) b!7915993))

(declare-fun m!8290204 () Bool)

(assert (=> bm!734528 m!8290204))

(declare-fun m!8290206 () Bool)

(assert (=> bm!734524 m!8290206))

(declare-fun m!8290208 () Bool)

(assert (=> bm!734522 m!8290208))

(assert (=> bm!734526 m!8290050))

(declare-fun m!8290210 () Bool)

(assert (=> b!7915987 m!8290210))

(assert (=> b!7915987 m!8290056))

(assert (=> b!7915987 m!8290056))

(declare-fun m!8290212 () Bool)

(assert (=> b!7915987 m!8290212))

(declare-fun m!8290214 () Bool)

(assert (=> b!7915993 m!8290214))

(assert (=> b!7915993 m!8289992))

(assert (=> b!7915993 m!8289992))

(declare-fun m!8290216 () Bool)

(assert (=> b!7915993 m!8290216))

(declare-fun m!8290218 () Bool)

(assert (=> b!7915984 m!8290218))

(declare-fun m!8290220 () Bool)

(assert (=> b!7915984 m!8290220))

(declare-fun m!8290222 () Bool)

(assert (=> b!7915984 m!8290222))

(declare-fun m!8290224 () Bool)

(assert (=> b!7915983 m!8290224))

(declare-fun m!8290226 () Bool)

(assert (=> b!7915983 m!8290226))

(declare-fun m!8290228 () Bool)

(assert (=> bm!734527 m!8290228))

(declare-fun m!8290230 () Bool)

(assert (=> d!2361582 m!8290230))

(assert (=> d!2361582 m!8289982))

(assert (=> bm!734531 m!8290048))

(assert (=> b!7915986 m!8290226))

(assert (=> b!7915986 m!8290224))

(declare-fun m!8290232 () Bool)

(assert (=> bm!734523 m!8290232))

(declare-fun m!8290234 () Bool)

(assert (=> bm!734525 m!8290234))

(declare-fun m!8290236 () Bool)

(assert (=> b!7915982 m!8290236))

(declare-fun m!8290238 () Bool)

(assert (=> b!7915982 m!8290238))

(declare-fun m!8290240 () Bool)

(assert (=> b!7915982 m!8290240))

(declare-fun m!8290242 () Bool)

(assert (=> b!7915982 m!8290242))

(declare-fun m!8290244 () Bool)

(assert (=> b!7915982 m!8290244))

(declare-fun m!8290246 () Bool)

(assert (=> b!7915982 m!8290246))

(declare-fun m!8290248 () Bool)

(assert (=> b!7915982 m!8290248))

(declare-fun m!8290250 () Bool)

(assert (=> b!7915982 m!8290250))

(declare-fun m!8290252 () Bool)

(assert (=> bm!734529 m!8290252))

(assert (=> b!7915824 d!2361582))

(declare-fun b!7916054 () Bool)

(declare-fun e!4672706 () Bool)

(declare-fun isEmpty!42735 (Conc!15874) Bool)

(assert (=> b!7916054 (= e!4672706 (not (isEmpty!42735 (right!57161 c!5365))))))

(declare-fun d!2361586 () Bool)

(declare-fun res!3141848 () Bool)

(declare-fun e!4672705 () Bool)

(assert (=> d!2361586 (=> res!3141848 e!4672705)))

(assert (=> d!2361586 (= res!3141848 (not ((_ is Node!15874) c!5365)))))

(assert (=> d!2361586 (= (isBalanced!4500 c!5365) e!4672705)))

(declare-fun b!7916055 () Bool)

(declare-fun res!3141850 () Bool)

(assert (=> b!7916055 (=> (not res!3141850) (not e!4672706))))

(assert (=> b!7916055 (= res!3141850 (isBalanced!4500 (right!57161 c!5365)))))

(declare-fun b!7916056 () Bool)

(declare-fun res!3141849 () Bool)

(assert (=> b!7916056 (=> (not res!3141849) (not e!4672706))))

(assert (=> b!7916056 (= res!3141849 (<= (- (height!2190 (left!56831 c!5365)) (height!2190 (right!57161 c!5365))) 1))))

(declare-fun b!7916057 () Bool)

(assert (=> b!7916057 (= e!4672705 e!4672706)))

(declare-fun res!3141851 () Bool)

(assert (=> b!7916057 (=> (not res!3141851) (not e!4672706))))

(assert (=> b!7916057 (= res!3141851 (<= (- 1) (- (height!2190 (left!56831 c!5365)) (height!2190 (right!57161 c!5365)))))))

(declare-fun b!7916058 () Bool)

(declare-fun res!3141847 () Bool)

(assert (=> b!7916058 (=> (not res!3141847) (not e!4672706))))

(assert (=> b!7916058 (= res!3141847 (not (isEmpty!42735 (left!56831 c!5365))))))

(declare-fun b!7916059 () Bool)

(declare-fun res!3141846 () Bool)

(assert (=> b!7916059 (=> (not res!3141846) (not e!4672706))))

(assert (=> b!7916059 (= res!3141846 (isBalanced!4500 (left!56831 c!5365)))))

(assert (= (and d!2361586 (not res!3141848)) b!7916057))

(assert (= (and b!7916057 res!3141851) b!7916056))

(assert (= (and b!7916056 res!3141849) b!7916059))

(assert (= (and b!7916059 res!3141846) b!7916055))

(assert (= (and b!7916055 res!3141850) b!7916058))

(assert (= (and b!7916058 res!3141847) b!7916054))

(assert (=> b!7916057 m!8290220))

(declare-fun m!8290278 () Bool)

(assert (=> b!7916057 m!8290278))

(declare-fun m!8290280 () Bool)

(assert (=> b!7916059 m!8290280))

(declare-fun m!8290282 () Bool)

(assert (=> b!7916054 m!8290282))

(assert (=> b!7916056 m!8290220))

(assert (=> b!7916056 m!8290278))

(declare-fun m!8290284 () Bool)

(assert (=> b!7916055 m!8290284))

(declare-fun m!8290286 () Bool)

(assert (=> b!7916058 m!8290286))

(assert (=> start!747638 d!2361586))

(declare-fun d!2361596 () Bool)

(declare-fun c!1452540 () Bool)

(assert (=> d!2361596 (= c!1452540 ((_ is Node!15874) c!5365))))

(declare-fun e!4672715 () Bool)

(assert (=> d!2361596 (= (inv!95568 c!5365) e!4672715)))

(declare-fun b!7916072 () Bool)

(declare-fun inv!95571 (Conc!15874) Bool)

(assert (=> b!7916072 (= e!4672715 (inv!95571 c!5365))))

(declare-fun b!7916073 () Bool)

(declare-fun e!4672716 () Bool)

(assert (=> b!7916073 (= e!4672715 e!4672716)))

(declare-fun res!3141854 () Bool)

(assert (=> b!7916073 (= res!3141854 (not ((_ is Leaf!30192) c!5365)))))

(assert (=> b!7916073 (=> res!3141854 e!4672716)))

(declare-fun b!7916074 () Bool)

(declare-fun inv!95572 (Conc!15874) Bool)

(assert (=> b!7916074 (= e!4672716 (inv!95572 c!5365))))

(assert (= (and d!2361596 c!1452540) b!7916072))

(assert (= (and d!2361596 (not c!1452540)) b!7916073))

(assert (= (and b!7916073 (not res!3141854)) b!7916074))

(declare-fun m!8290300 () Bool)

(assert (=> b!7916072 m!8290300))

(declare-fun m!8290302 () Bool)

(assert (=> b!7916074 m!8290302))

(assert (=> start!747638 d!2361596))

(declare-fun d!2361598 () Bool)

(declare-fun c!1452541 () Bool)

(assert (=> d!2361598 (= c!1452541 ((_ is Node!15874) (left!56831 c!5365)))))

(declare-fun e!4672717 () Bool)

(assert (=> d!2361598 (= (inv!95568 (left!56831 c!5365)) e!4672717)))

(declare-fun b!7916075 () Bool)

(assert (=> b!7916075 (= e!4672717 (inv!95571 (left!56831 c!5365)))))

(declare-fun b!7916076 () Bool)

(declare-fun e!4672718 () Bool)

(assert (=> b!7916076 (= e!4672717 e!4672718)))

(declare-fun res!3141855 () Bool)

(assert (=> b!7916076 (= res!3141855 (not ((_ is Leaf!30192) (left!56831 c!5365))))))

(assert (=> b!7916076 (=> res!3141855 e!4672718)))

(declare-fun b!7916077 () Bool)

(assert (=> b!7916077 (= e!4672718 (inv!95572 (left!56831 c!5365)))))

(assert (= (and d!2361598 c!1452541) b!7916075))

(assert (= (and d!2361598 (not c!1452541)) b!7916076))

(assert (= (and b!7916076 (not res!3141855)) b!7916077))

(declare-fun m!8290304 () Bool)

(assert (=> b!7916075 m!8290304))

(declare-fun m!8290306 () Bool)

(assert (=> b!7916077 m!8290306))

(assert (=> b!7915822 d!2361598))

(declare-fun d!2361600 () Bool)

(declare-fun c!1452542 () Bool)

(assert (=> d!2361600 (= c!1452542 ((_ is Node!15874) (right!57161 c!5365)))))

(declare-fun e!4672719 () Bool)

(assert (=> d!2361600 (= (inv!95568 (right!57161 c!5365)) e!4672719)))

(declare-fun b!7916078 () Bool)

(assert (=> b!7916078 (= e!4672719 (inv!95571 (right!57161 c!5365)))))

(declare-fun b!7916079 () Bool)

(declare-fun e!4672720 () Bool)

(assert (=> b!7916079 (= e!4672719 e!4672720)))

(declare-fun res!3141856 () Bool)

(assert (=> b!7916079 (= res!3141856 (not ((_ is Leaf!30192) (right!57161 c!5365))))))

(assert (=> b!7916079 (=> res!3141856 e!4672720)))

(declare-fun b!7916080 () Bool)

(assert (=> b!7916080 (= e!4672720 (inv!95572 (right!57161 c!5365)))))

(assert (= (and d!2361600 c!1452542) b!7916078))

(assert (= (and d!2361600 (not c!1452542)) b!7916079))

(assert (= (and b!7916079 (not res!3141856)) b!7916080))

(declare-fun m!8290308 () Bool)

(assert (=> b!7916078 m!8290308))

(declare-fun m!8290310 () Bool)

(assert (=> b!7916080 m!8290310))

(assert (=> b!7915822 d!2361600))

(declare-fun d!2361602 () Bool)

(assert (=> d!2361602 (= (inv!95567 (xs!19256 c!5365)) (<= (size!43197 (innerList!15962 (xs!19256 c!5365))) 2147483647))))

(declare-fun bs!1968454 () Bool)

(assert (= bs!1968454 d!2361602))

(declare-fun m!8290312 () Bool)

(assert (=> bs!1968454 m!8290312))

(assert (=> b!7915821 d!2361602))

(declare-fun b!7916085 () Bool)

(declare-fun e!4672723 () Bool)

(declare-fun tp!2357437 () Bool)

(assert (=> b!7916085 (= e!4672723 (and tp_is_empty!53173 tp!2357437))))

(assert (=> b!7915820 (= tp!2357417 e!4672723)))

(assert (= (and b!7915820 ((_ is Cons!74420) (innerList!15962 (xs!19256 c!5365)))) b!7916085))

(declare-fun b!7916094 () Bool)

(declare-fun tp!2357445 () Bool)

(declare-fun tp!2357446 () Bool)

(declare-fun e!4672728 () Bool)

(assert (=> b!7916094 (= e!4672728 (and (inv!95568 (left!56831 (left!56831 c!5365))) tp!2357446 (inv!95568 (right!57161 (left!56831 c!5365))) tp!2357445))))

(declare-fun b!7916096 () Bool)

(declare-fun e!4672729 () Bool)

(declare-fun tp!2357444 () Bool)

(assert (=> b!7916096 (= e!4672729 tp!2357444)))

(declare-fun b!7916095 () Bool)

(assert (=> b!7916095 (= e!4672728 (and (inv!95567 (xs!19256 (left!56831 c!5365))) e!4672729))))

(assert (=> b!7915822 (= tp!2357415 (and (inv!95568 (left!56831 c!5365)) e!4672728))))

(assert (= (and b!7915822 ((_ is Node!15874) (left!56831 c!5365))) b!7916094))

(assert (= b!7916095 b!7916096))

(assert (= (and b!7915822 ((_ is Leaf!30192) (left!56831 c!5365))) b!7916095))

(declare-fun m!8290314 () Bool)

(assert (=> b!7916094 m!8290314))

(declare-fun m!8290316 () Bool)

(assert (=> b!7916094 m!8290316))

(declare-fun m!8290318 () Bool)

(assert (=> b!7916095 m!8290318))

(assert (=> b!7915822 m!8289988))

(declare-fun e!4672730 () Bool)

(declare-fun tp!2357449 () Bool)

(declare-fun b!7916097 () Bool)

(declare-fun tp!2357448 () Bool)

(assert (=> b!7916097 (= e!4672730 (and (inv!95568 (left!56831 (right!57161 c!5365))) tp!2357449 (inv!95568 (right!57161 (right!57161 c!5365))) tp!2357448))))

(declare-fun b!7916099 () Bool)

(declare-fun e!4672731 () Bool)

(declare-fun tp!2357447 () Bool)

(assert (=> b!7916099 (= e!4672731 tp!2357447)))

(declare-fun b!7916098 () Bool)

(assert (=> b!7916098 (= e!4672730 (and (inv!95567 (xs!19256 (right!57161 c!5365))) e!4672731))))

(assert (=> b!7915822 (= tp!2357418 (and (inv!95568 (right!57161 c!5365)) e!4672730))))

(assert (= (and b!7915822 ((_ is Node!15874) (right!57161 c!5365))) b!7916097))

(assert (= b!7916098 b!7916099))

(assert (= (and b!7915822 ((_ is Leaf!30192) (right!57161 c!5365))) b!7916098))

(declare-fun m!8290320 () Bool)

(assert (=> b!7916097 m!8290320))

(declare-fun m!8290322 () Bool)

(assert (=> b!7916097 m!8290322))

(declare-fun m!8290324 () Bool)

(assert (=> b!7916098 m!8290324))

(assert (=> b!7915822 m!8289990))

(declare-fun b!7916100 () Bool)

(declare-fun e!4672732 () Bool)

(declare-fun tp!2357450 () Bool)

(assert (=> b!7916100 (= e!4672732 (and tp_is_empty!53173 tp!2357450))))

(assert (=> b!7915826 (= tp!2357416 e!4672732)))

(assert (= (and b!7915826 ((_ is Cons!74420) (t!390053 ll!14))) b!7916100))

(check-sat (not b!7915982) (not bm!734526) (not b!7916075) (not b!7915885) (not b!7915884) (not b!7916096) (not b!7915878) (not b!7916095) (not b!7915898) (not b!7915877) (not bm!734525) (not d!2361568) (not b!7915897) (not b!7915893) (not b!7915849) (not b!7915848) (not bm!734524) (not bm!734522) (not b!7916100) (not b!7915993) (not bm!734531) (not b!7916057) (not b!7916085) (not bm!734528) (not b!7916059) (not b!7915983) (not bm!734529) (not b!7916098) (not b!7916058) (not b!7916094) (not d!2361602) (not b!7915894) (not b!7916099) (not bm!734523) (not b!7915915) (not b!7916077) (not b!7916078) (not b!7916074) (not b!7915916) (not d!2361582) (not b!7915986) (not b!7916072) (not b!7916054) (not d!2361558) (not bm!734527) (not b!7916080) tp_is_empty!53173 (not b!7915984) (not d!2361578) (not b!7916055) (not b!7916097) (not b!7915822) (not b!7915987) (not b!7916056))
(check-sat)
(get-model)

(declare-fun d!2361604 () Bool)

(declare-fun res!3141863 () Bool)

(declare-fun e!4672735 () Bool)

(assert (=> d!2361604 (=> (not res!3141863) (not e!4672735))))

(declare-fun size!43198 (Conc!15874) Int)

(assert (=> d!2361604 (= res!3141863 (= (csize!31978 c!5365) (+ (size!43198 (left!56831 c!5365)) (size!43198 (right!57161 c!5365)))))))

(assert (=> d!2361604 (= (inv!95571 c!5365) e!4672735)))

(declare-fun b!7916107 () Bool)

(declare-fun res!3141864 () Bool)

(assert (=> b!7916107 (=> (not res!3141864) (not e!4672735))))

(assert (=> b!7916107 (= res!3141864 (and (not (= (left!56831 c!5365) Empty!15874)) (not (= (right!57161 c!5365) Empty!15874))))))

(declare-fun b!7916108 () Bool)

(declare-fun res!3141865 () Bool)

(assert (=> b!7916108 (=> (not res!3141865) (not e!4672735))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!7916108 (= res!3141865 (= (cheight!16085 c!5365) (+ (max!0 (height!2190 (left!56831 c!5365)) (height!2190 (right!57161 c!5365))) 1)))))

(declare-fun b!7916109 () Bool)

(assert (=> b!7916109 (= e!4672735 (<= 0 (cheight!16085 c!5365)))))

(assert (= (and d!2361604 res!3141863) b!7916107))

(assert (= (and b!7916107 res!3141864) b!7916108))

(assert (= (and b!7916108 res!3141865) b!7916109))

(declare-fun m!8290326 () Bool)

(assert (=> d!2361604 m!8290326))

(declare-fun m!8290328 () Bool)

(assert (=> d!2361604 m!8290328))

(assert (=> b!7916108 m!8290220))

(assert (=> b!7916108 m!8290278))

(assert (=> b!7916108 m!8290220))

(assert (=> b!7916108 m!8290278))

(declare-fun m!8290330 () Bool)

(assert (=> b!7916108 m!8290330))

(assert (=> b!7916072 d!2361604))

(declare-fun e!4672737 () List!74544)

(declare-fun b!7916111 () Bool)

(assert (=> b!7916111 (= e!4672737 (Cons!74420 (h!80868 (ite c!1452531 lt!2690284 lt!2690270)) (++!18238 (t!390053 (ite c!1452531 lt!2690284 lt!2690270)) (ite c!1452531 lt!2690285 lt!2690281))))))

(declare-fun b!7916112 () Bool)

(declare-fun res!3141866 () Bool)

(declare-fun e!4672736 () Bool)

(assert (=> b!7916112 (=> (not res!3141866) (not e!4672736))))

(declare-fun lt!2690286 () List!74544)

(assert (=> b!7916112 (= res!3141866 (= (size!43197 lt!2690286) (+ (size!43197 (ite c!1452531 lt!2690284 lt!2690270)) (size!43197 (ite c!1452531 lt!2690285 lt!2690281)))))))

(declare-fun b!7916113 () Bool)

(assert (=> b!7916113 (= e!4672736 (or (not (= (ite c!1452531 lt!2690285 lt!2690281) Nil!74420)) (= lt!2690286 (ite c!1452531 lt!2690284 lt!2690270))))))

(declare-fun d!2361606 () Bool)

(assert (=> d!2361606 e!4672736))

(declare-fun res!3141867 () Bool)

(assert (=> d!2361606 (=> (not res!3141867) (not e!4672736))))

(assert (=> d!2361606 (= res!3141867 (= (content!15764 lt!2690286) ((_ map or) (content!15764 (ite c!1452531 lt!2690284 lt!2690270)) (content!15764 (ite c!1452531 lt!2690285 lt!2690281)))))))

(assert (=> d!2361606 (= lt!2690286 e!4672737)))

(declare-fun c!1452543 () Bool)

(assert (=> d!2361606 (= c!1452543 ((_ is Nil!74420) (ite c!1452531 lt!2690284 lt!2690270)))))

(assert (=> d!2361606 (= (++!18238 (ite c!1452531 lt!2690284 lt!2690270) (ite c!1452531 lt!2690285 lt!2690281)) lt!2690286)))

(declare-fun b!7916110 () Bool)

(assert (=> b!7916110 (= e!4672737 (ite c!1452531 lt!2690285 lt!2690281))))

(assert (= (and d!2361606 c!1452543) b!7916110))

(assert (= (and d!2361606 (not c!1452543)) b!7916111))

(assert (= (and d!2361606 res!3141867) b!7916112))

(assert (= (and b!7916112 res!3141866) b!7916113))

(declare-fun m!8290332 () Bool)

(assert (=> b!7916111 m!8290332))

(declare-fun m!8290334 () Bool)

(assert (=> b!7916112 m!8290334))

(declare-fun m!8290336 () Bool)

(assert (=> b!7916112 m!8290336))

(declare-fun m!8290338 () Bool)

(assert (=> b!7916112 m!8290338))

(declare-fun m!8290340 () Bool)

(assert (=> d!2361606 m!8290340))

(declare-fun m!8290342 () Bool)

(assert (=> d!2361606 m!8290342))

(declare-fun m!8290344 () Bool)

(assert (=> d!2361606 m!8290344))

(assert (=> bm!734523 d!2361606))

(declare-fun d!2361608 () Bool)

(assert (=> d!2361608 (= (list!19369 (xs!19256 c!5365)) (innerList!15962 (xs!19256 c!5365)))))

(assert (=> b!7915877 d!2361608))

(declare-fun b!7916117 () Bool)

(declare-fun e!4672739 () List!74544)

(assert (=> b!7916117 (= e!4672739 (++!18238 (list!19367 (left!56831 (left!56831 c!5365))) (list!19367 (right!57161 (left!56831 c!5365)))))))

(declare-fun b!7916115 () Bool)

(declare-fun e!4672738 () List!74544)

(assert (=> b!7916115 (= e!4672738 e!4672739)))

(declare-fun c!1452545 () Bool)

(assert (=> b!7916115 (= c!1452545 ((_ is Leaf!30192) (left!56831 c!5365)))))

(declare-fun b!7916114 () Bool)

(assert (=> b!7916114 (= e!4672738 Nil!74420)))

(declare-fun d!2361610 () Bool)

(declare-fun c!1452544 () Bool)

(assert (=> d!2361610 (= c!1452544 ((_ is Empty!15874) (left!56831 c!5365)))))

(assert (=> d!2361610 (= (list!19367 (left!56831 c!5365)) e!4672738)))

(declare-fun b!7916116 () Bool)

(assert (=> b!7916116 (= e!4672739 (list!19369 (xs!19256 (left!56831 c!5365))))))

(assert (= (and d!2361610 c!1452544) b!7916114))

(assert (= (and d!2361610 (not c!1452544)) b!7916115))

(assert (= (and b!7916115 c!1452545) b!7916116))

(assert (= (and b!7916115 (not c!1452545)) b!7916117))

(declare-fun m!8290346 () Bool)

(assert (=> b!7916117 m!8290346))

(declare-fun m!8290348 () Bool)

(assert (=> b!7916117 m!8290348))

(assert (=> b!7916117 m!8290346))

(assert (=> b!7916117 m!8290348))

(declare-fun m!8290350 () Bool)

(assert (=> b!7916117 m!8290350))

(declare-fun m!8290352 () Bool)

(assert (=> b!7916116 m!8290352))

(assert (=> bm!734531 d!2361610))

(declare-fun b!7916118 () Bool)

(declare-fun e!4672741 () Bool)

(assert (=> b!7916118 (= e!4672741 (not (isEmpty!42735 (right!57161 (left!56831 c!5365)))))))

(declare-fun d!2361612 () Bool)

(declare-fun res!3141870 () Bool)

(declare-fun e!4672740 () Bool)

(assert (=> d!2361612 (=> res!3141870 e!4672740)))

(assert (=> d!2361612 (= res!3141870 (not ((_ is Node!15874) (left!56831 c!5365))))))

(assert (=> d!2361612 (= (isBalanced!4500 (left!56831 c!5365)) e!4672740)))

(declare-fun b!7916119 () Bool)

(declare-fun res!3141872 () Bool)

(assert (=> b!7916119 (=> (not res!3141872) (not e!4672741))))

(assert (=> b!7916119 (= res!3141872 (isBalanced!4500 (right!57161 (left!56831 c!5365))))))

(declare-fun b!7916120 () Bool)

(declare-fun res!3141871 () Bool)

(assert (=> b!7916120 (=> (not res!3141871) (not e!4672741))))

(assert (=> b!7916120 (= res!3141871 (<= (- (height!2190 (left!56831 (left!56831 c!5365))) (height!2190 (right!57161 (left!56831 c!5365)))) 1))))

(declare-fun b!7916121 () Bool)

(assert (=> b!7916121 (= e!4672740 e!4672741)))

(declare-fun res!3141873 () Bool)

(assert (=> b!7916121 (=> (not res!3141873) (not e!4672741))))

(assert (=> b!7916121 (= res!3141873 (<= (- 1) (- (height!2190 (left!56831 (left!56831 c!5365))) (height!2190 (right!57161 (left!56831 c!5365))))))))

(declare-fun b!7916122 () Bool)

(declare-fun res!3141869 () Bool)

(assert (=> b!7916122 (=> (not res!3141869) (not e!4672741))))

(assert (=> b!7916122 (= res!3141869 (not (isEmpty!42735 (left!56831 (left!56831 c!5365)))))))

(declare-fun b!7916123 () Bool)

(declare-fun res!3141868 () Bool)

(assert (=> b!7916123 (=> (not res!3141868) (not e!4672741))))

(assert (=> b!7916123 (= res!3141868 (isBalanced!4500 (left!56831 (left!56831 c!5365))))))

(assert (= (and d!2361612 (not res!3141870)) b!7916121))

(assert (= (and b!7916121 res!3141873) b!7916120))

(assert (= (and b!7916120 res!3141871) b!7916123))

(assert (= (and b!7916123 res!3141868) b!7916119))

(assert (= (and b!7916119 res!3141872) b!7916122))

(assert (= (and b!7916122 res!3141869) b!7916118))

(declare-fun m!8290354 () Bool)

(assert (=> b!7916121 m!8290354))

(declare-fun m!8290356 () Bool)

(assert (=> b!7916121 m!8290356))

(declare-fun m!8290358 () Bool)

(assert (=> b!7916123 m!8290358))

(declare-fun m!8290360 () Bool)

(assert (=> b!7916118 m!8290360))

(assert (=> b!7916120 m!8290354))

(assert (=> b!7916120 m!8290356))

(declare-fun m!8290362 () Bool)

(assert (=> b!7916119 m!8290362))

(declare-fun m!8290364 () Bool)

(assert (=> b!7916122 m!8290364))

(assert (=> b!7916059 d!2361612))

(declare-fun d!2361614 () Bool)

(assert (=> d!2361614 (= (inv!95567 (xs!19256 (left!56831 c!5365))) (<= (size!43197 (innerList!15962 (xs!19256 (left!56831 c!5365)))) 2147483647))))

(declare-fun bs!1968455 () Bool)

(assert (= bs!1968455 d!2361614))

(declare-fun m!8290366 () Bool)

(assert (=> bs!1968455 m!8290366))

(assert (=> b!7916095 d!2361614))

(assert (=> b!7915822 d!2361598))

(assert (=> b!7915822 d!2361600))

(declare-fun d!2361616 () Bool)

(declare-fun res!3141878 () Bool)

(declare-fun e!4672744 () Bool)

(assert (=> d!2361616 (=> (not res!3141878) (not e!4672744))))

(assert (=> d!2361616 (= res!3141878 (<= (size!43197 (list!19369 (xs!19256 c!5365))) 512))))

(assert (=> d!2361616 (= (inv!95572 c!5365) e!4672744)))

(declare-fun b!7916128 () Bool)

(declare-fun res!3141879 () Bool)

(assert (=> b!7916128 (=> (not res!3141879) (not e!4672744))))

(assert (=> b!7916128 (= res!3141879 (= (csize!31979 c!5365) (size!43197 (list!19369 (xs!19256 c!5365)))))))

(declare-fun b!7916129 () Bool)

(assert (=> b!7916129 (= e!4672744 (and (> (csize!31979 c!5365) 0) (<= (csize!31979 c!5365) 512)))))

(assert (= (and d!2361616 res!3141878) b!7916128))

(assert (= (and b!7916128 res!3141879) b!7916129))

(assert (=> d!2361616 m!8290056))

(assert (=> d!2361616 m!8290056))

(declare-fun m!8290368 () Bool)

(assert (=> d!2361616 m!8290368))

(assert (=> b!7916128 m!8290056))

(assert (=> b!7916128 m!8290056))

(assert (=> b!7916128 m!8290368))

(assert (=> b!7916074 d!2361616))

(declare-fun d!2361618 () Bool)

(assert (=> d!2361618 (= (list!19369 (xs!19256 lt!2690137)) (innerList!15962 (xs!19256 lt!2690137)))))

(assert (=> b!7915893 d!2361618))

(declare-fun d!2361620 () Bool)

(assert (=> d!2361620 (= (height!2190 lt!2690283) (ite ((_ is Empty!15874) lt!2690283) 0 (ite ((_ is Leaf!30192) lt!2690283) 1 (cheight!16085 lt!2690283))))))

(assert (=> b!7915983 d!2361620))

(declare-fun d!2361622 () Bool)

(assert (=> d!2361622 (= (height!2190 c!5365) (ite ((_ is Empty!15874) c!5365) 0 (ite ((_ is Leaf!30192) c!5365) 1 (cheight!16085 c!5365))))))

(assert (=> b!7915983 d!2361622))

(declare-fun b!7916133 () Bool)

(declare-fun e!4672746 () List!74544)

(assert (=> b!7916133 (= e!4672746 (++!18238 (list!19367 (left!56831 lt!2690283)) (list!19367 (right!57161 lt!2690283))))))

(declare-fun b!7916131 () Bool)

(declare-fun e!4672745 () List!74544)

(assert (=> b!7916131 (= e!4672745 e!4672746)))

(declare-fun c!1452547 () Bool)

(assert (=> b!7916131 (= c!1452547 ((_ is Leaf!30192) lt!2690283))))

(declare-fun b!7916130 () Bool)

(assert (=> b!7916130 (= e!4672745 Nil!74420)))

(declare-fun d!2361624 () Bool)

(declare-fun c!1452546 () Bool)

(assert (=> d!2361624 (= c!1452546 ((_ is Empty!15874) lt!2690283))))

(assert (=> d!2361624 (= (list!19367 lt!2690283) e!4672745)))

(declare-fun b!7916132 () Bool)

(assert (=> b!7916132 (= e!4672746 (list!19369 (xs!19256 lt!2690283)))))

(assert (= (and d!2361624 c!1452546) b!7916130))

(assert (= (and d!2361624 (not c!1452546)) b!7916131))

(assert (= (and b!7916131 c!1452547) b!7916132))

(assert (= (and b!7916131 (not c!1452547)) b!7916133))

(declare-fun m!8290370 () Bool)

(assert (=> b!7916133 m!8290370))

(declare-fun m!8290372 () Bool)

(assert (=> b!7916133 m!8290372))

(assert (=> b!7916133 m!8290370))

(assert (=> b!7916133 m!8290372))

(declare-fun m!8290374 () Bool)

(assert (=> b!7916133 m!8290374))

(declare-fun m!8290376 () Bool)

(assert (=> b!7916132 m!8290376))

(assert (=> b!7915993 d!2361624))

(declare-fun bm!734536 () Bool)

(declare-fun call!734541 () (_ BitVec 32))

(declare-fun isize!107 (List!74544) (_ BitVec 32))

(assert (=> bm!734536 (= call!734541 (isize!107 (list!19367 c!5365)))))

(declare-fun b!7916150 () Bool)

(declare-fun e!4672755 () List!74544)

(assert (=> b!7916150 (= e!4672755 (Cons!74420 (h!80868 ll!14) (list!19367 c!5365)))))

(declare-fun bm!734537 () Bool)

(declare-fun call!734542 () (_ BitVec 32))

(declare-fun lt!2690289 () List!74544)

(assert (=> bm!734537 (= call!734542 (isize!107 lt!2690289))))

(declare-fun d!2361626 () Bool)

(declare-fun e!4672753 () Bool)

(assert (=> d!2361626 e!4672753))

(declare-fun res!3141890 () Bool)

(assert (=> d!2361626 (=> (not res!3141890) (not e!4672753))))

(assert (=> d!2361626 (= res!3141890 ((_ is Cons!74420) lt!2690289))))

(assert (=> d!2361626 (= lt!2690289 e!4672755)))

(declare-fun c!1452553 () Bool)

(assert (=> d!2361626 (= c!1452553 ((_ is Nil!74420) (list!19367 c!5365)))))

(assert (=> d!2361626 (= ($colon+!297 (list!19367 c!5365) (h!80868 ll!14)) lt!2690289)))

(declare-fun b!7916151 () Bool)

(assert (=> b!7916151 (= e!4672753 (= lt!2690289 (++!18238 (list!19367 c!5365) (Cons!74420 (h!80868 ll!14) Nil!74420))))))

(declare-fun b!7916152 () Bool)

(declare-fun e!4672754 () Bool)

(assert (=> b!7916152 (= e!4672754 (= call!734542 call!734541))))

(declare-fun b!7916153 () Bool)

(declare-fun res!3141889 () Bool)

(assert (=> b!7916153 (=> (not res!3141889) (not e!4672753))))

(assert (=> b!7916153 (= res!3141889 e!4672754)))

(declare-fun c!1452552 () Bool)

(assert (=> b!7916153 (= c!1452552 (bvslt (isize!107 (list!19367 c!5365)) #b01111111111111111111111111111111))))

(declare-fun b!7916154 () Bool)

(assert (=> b!7916154 (= e!4672754 (= call!734542 (bvadd call!734541 #b00000000000000000000000000000001)))))

(declare-fun b!7916155 () Bool)

(declare-fun res!3141888 () Bool)

(assert (=> b!7916155 (=> (not res!3141888) (not e!4672753))))

(assert (=> b!7916155 (= res!3141888 (= (size!43197 lt!2690289) (+ (size!43197 (list!19367 c!5365)) 1)))))

(declare-fun b!7916156 () Bool)

(assert (=> b!7916156 (= e!4672755 (Cons!74420 (h!80868 (list!19367 c!5365)) ($colon+!297 (t!390053 (list!19367 c!5365)) (h!80868 ll!14))))))

(declare-fun b!7916157 () Bool)

(declare-fun res!3141891 () Bool)

(assert (=> b!7916157 (=> (not res!3141891) (not e!4672753))))

(assert (=> b!7916157 (= res!3141891 (= (content!15764 lt!2690289) ((_ map or) (content!15764 (list!19367 c!5365)) (store ((as const (Array T!145608 Bool)) false) (h!80868 ll!14) true))))))

(assert (= (and d!2361626 c!1452553) b!7916150))

(assert (= (and d!2361626 (not c!1452553)) b!7916156))

(assert (= (and d!2361626 res!3141890) b!7916155))

(assert (= (and b!7916155 res!3141888) b!7916153))

(assert (= (and b!7916153 c!1452552) b!7916154))

(assert (= (and b!7916153 (not c!1452552)) b!7916152))

(assert (= (or b!7916154 b!7916152) bm!734537))

(assert (= (or b!7916154 b!7916152) bm!734536))

(assert (= (and b!7916153 res!3141889) b!7916157))

(assert (= (and b!7916157 res!3141891) b!7916151))

(declare-fun m!8290378 () Bool)

(assert (=> b!7916155 m!8290378))

(assert (=> b!7916155 m!8289992))

(assert (=> b!7916155 m!8290024))

(assert (=> b!7916153 m!8289992))

(declare-fun m!8290380 () Bool)

(assert (=> b!7916153 m!8290380))

(declare-fun m!8290382 () Bool)

(assert (=> b!7916156 m!8290382))

(assert (=> b!7916151 m!8289992))

(assert (=> b!7916151 m!8289994))

(declare-fun m!8290384 () Bool)

(assert (=> bm!734537 m!8290384))

(assert (=> bm!734536 m!8289992))

(assert (=> bm!734536 m!8290380))

(declare-fun m!8290386 () Bool)

(assert (=> b!7916157 m!8290386))

(assert (=> b!7916157 m!8289992))

(assert (=> b!7916157 m!8290030))

(declare-fun m!8290388 () Bool)

(assert (=> b!7916157 m!8290388))

(assert (=> b!7915993 d!2361626))

(assert (=> b!7915993 d!2361562))

(declare-fun b!7916158 () Bool)

(declare-fun e!4672757 () Bool)

(assert (=> b!7916158 (= e!4672757 (not (isEmpty!42735 (right!57161 (right!57161 c!5365)))))))

(declare-fun d!2361628 () Bool)

(declare-fun res!3141894 () Bool)

(declare-fun e!4672756 () Bool)

(assert (=> d!2361628 (=> res!3141894 e!4672756)))

(assert (=> d!2361628 (= res!3141894 (not ((_ is Node!15874) (right!57161 c!5365))))))

(assert (=> d!2361628 (= (isBalanced!4500 (right!57161 c!5365)) e!4672756)))

(declare-fun b!7916159 () Bool)

(declare-fun res!3141896 () Bool)

(assert (=> b!7916159 (=> (not res!3141896) (not e!4672757))))

(assert (=> b!7916159 (= res!3141896 (isBalanced!4500 (right!57161 (right!57161 c!5365))))))

(declare-fun b!7916160 () Bool)

(declare-fun res!3141895 () Bool)

(assert (=> b!7916160 (=> (not res!3141895) (not e!4672757))))

(assert (=> b!7916160 (= res!3141895 (<= (- (height!2190 (left!56831 (right!57161 c!5365))) (height!2190 (right!57161 (right!57161 c!5365)))) 1))))

(declare-fun b!7916161 () Bool)

(assert (=> b!7916161 (= e!4672756 e!4672757)))

(declare-fun res!3141897 () Bool)

(assert (=> b!7916161 (=> (not res!3141897) (not e!4672757))))

(assert (=> b!7916161 (= res!3141897 (<= (- 1) (- (height!2190 (left!56831 (right!57161 c!5365))) (height!2190 (right!57161 (right!57161 c!5365))))))))

(declare-fun b!7916162 () Bool)

(declare-fun res!3141893 () Bool)

(assert (=> b!7916162 (=> (not res!3141893) (not e!4672757))))

(assert (=> b!7916162 (= res!3141893 (not (isEmpty!42735 (left!56831 (right!57161 c!5365)))))))

(declare-fun b!7916163 () Bool)

(declare-fun res!3141892 () Bool)

(assert (=> b!7916163 (=> (not res!3141892) (not e!4672757))))

(assert (=> b!7916163 (= res!3141892 (isBalanced!4500 (left!56831 (right!57161 c!5365))))))

(assert (= (and d!2361628 (not res!3141894)) b!7916161))

(assert (= (and b!7916161 res!3141897) b!7916160))

(assert (= (and b!7916160 res!3141895) b!7916163))

(assert (= (and b!7916163 res!3141892) b!7916159))

(assert (= (and b!7916159 res!3141896) b!7916162))

(assert (= (and b!7916162 res!3141893) b!7916158))

(declare-fun m!8290390 () Bool)

(assert (=> b!7916161 m!8290390))

(declare-fun m!8290392 () Bool)

(assert (=> b!7916161 m!8290392))

(declare-fun m!8290394 () Bool)

(assert (=> b!7916163 m!8290394))

(declare-fun m!8290396 () Bool)

(assert (=> b!7916158 m!8290396))

(assert (=> b!7916160 m!8290390))

(assert (=> b!7916160 m!8290392))

(declare-fun m!8290398 () Bool)

(assert (=> b!7916159 m!8290398))

(declare-fun m!8290400 () Bool)

(assert (=> b!7916162 m!8290400))

(assert (=> b!7916055 d!2361628))

(declare-fun b!7916165 () Bool)

(declare-fun e!4672759 () List!74544)

(assert (=> b!7916165 (= e!4672759 (Cons!74420 (h!80868 (ite c!1452531 lt!2690285 lt!2690269)) (++!18238 (t!390053 (ite c!1452531 lt!2690285 lt!2690269)) (ite c!1452531 lt!2690271 lt!2690278))))))

(declare-fun b!7916166 () Bool)

(declare-fun res!3141898 () Bool)

(declare-fun e!4672758 () Bool)

(assert (=> b!7916166 (=> (not res!3141898) (not e!4672758))))

(declare-fun lt!2690290 () List!74544)

(assert (=> b!7916166 (= res!3141898 (= (size!43197 lt!2690290) (+ (size!43197 (ite c!1452531 lt!2690285 lt!2690269)) (size!43197 (ite c!1452531 lt!2690271 lt!2690278)))))))

(declare-fun b!7916167 () Bool)

(assert (=> b!7916167 (= e!4672758 (or (not (= (ite c!1452531 lt!2690271 lt!2690278) Nil!74420)) (= lt!2690290 (ite c!1452531 lt!2690285 lt!2690269))))))

(declare-fun d!2361630 () Bool)

(assert (=> d!2361630 e!4672758))

(declare-fun res!3141899 () Bool)

(assert (=> d!2361630 (=> (not res!3141899) (not e!4672758))))

(assert (=> d!2361630 (= res!3141899 (= (content!15764 lt!2690290) ((_ map or) (content!15764 (ite c!1452531 lt!2690285 lt!2690269)) (content!15764 (ite c!1452531 lt!2690271 lt!2690278)))))))

(assert (=> d!2361630 (= lt!2690290 e!4672759)))

(declare-fun c!1452554 () Bool)

(assert (=> d!2361630 (= c!1452554 ((_ is Nil!74420) (ite c!1452531 lt!2690285 lt!2690269)))))

(assert (=> d!2361630 (= (++!18238 (ite c!1452531 lt!2690285 lt!2690269) (ite c!1452531 lt!2690271 lt!2690278)) lt!2690290)))

(declare-fun b!7916164 () Bool)

(assert (=> b!7916164 (= e!4672759 (ite c!1452531 lt!2690271 lt!2690278))))

(assert (= (and d!2361630 c!1452554) b!7916164))

(assert (= (and d!2361630 (not c!1452554)) b!7916165))

(assert (= (and d!2361630 res!3141899) b!7916166))

(assert (= (and b!7916166 res!3141898) b!7916167))

(declare-fun m!8290402 () Bool)

(assert (=> b!7916165 m!8290402))

(declare-fun m!8290404 () Bool)

(assert (=> b!7916166 m!8290404))

(declare-fun m!8290406 () Bool)

(assert (=> b!7916166 m!8290406))

(declare-fun m!8290408 () Bool)

(assert (=> b!7916166 m!8290408))

(declare-fun m!8290410 () Bool)

(assert (=> d!2361630 m!8290410))

(declare-fun m!8290412 () Bool)

(assert (=> d!2361630 m!8290412))

(declare-fun m!8290414 () Bool)

(assert (=> d!2361630 m!8290414))

(assert (=> bm!734529 d!2361630))

(declare-fun d!2361632 () Bool)

(assert (=> d!2361632 (= (height!2190 (left!56831 c!5365)) (ite ((_ is Empty!15874) (left!56831 c!5365)) 0 (ite ((_ is Leaf!30192) (left!56831 c!5365)) 1 (cheight!16085 (left!56831 c!5365)))))))

(assert (=> b!7916057 d!2361632))

(declare-fun d!2361634 () Bool)

(assert (=> d!2361634 (= (height!2190 (right!57161 c!5365)) (ite ((_ is Empty!15874) (right!57161 c!5365)) 0 (ite ((_ is Leaf!30192) (right!57161 c!5365)) 1 (cheight!16085 (right!57161 c!5365)))))))

(assert (=> b!7916057 d!2361634))

(declare-fun d!2361636 () Bool)

(declare-fun lt!2690293 () Int)

(assert (=> d!2361636 (>= lt!2690293 0)))

(declare-fun e!4672762 () Int)

(assert (=> d!2361636 (= lt!2690293 e!4672762)))

(declare-fun c!1452557 () Bool)

(assert (=> d!2361636 (= c!1452557 ((_ is Nil!74420) lt!2690147))))

(assert (=> d!2361636 (= (size!43197 lt!2690147) lt!2690293)))

(declare-fun b!7916172 () Bool)

(assert (=> b!7916172 (= e!4672762 0)))

(declare-fun b!7916173 () Bool)

(assert (=> b!7916173 (= e!4672762 (+ 1 (size!43197 (t!390053 lt!2690147))))))

(assert (= (and d!2361636 c!1452557) b!7916172))

(assert (= (and d!2361636 (not c!1452557)) b!7916173))

(declare-fun m!8290416 () Bool)

(assert (=> b!7916173 m!8290416))

(assert (=> b!7915885 d!2361636))

(declare-fun d!2361638 () Bool)

(declare-fun lt!2690294 () Int)

(assert (=> d!2361638 (>= lt!2690294 0)))

(declare-fun e!4672763 () Int)

(assert (=> d!2361638 (= lt!2690294 e!4672763)))

(declare-fun c!1452558 () Bool)

(assert (=> d!2361638 (= c!1452558 ((_ is Nil!74420) lt!2690139))))

(assert (=> d!2361638 (= (size!43197 lt!2690139) lt!2690294)))

(declare-fun b!7916174 () Bool)

(assert (=> b!7916174 (= e!4672763 0)))

(declare-fun b!7916175 () Bool)

(assert (=> b!7916175 (= e!4672763 (+ 1 (size!43197 (t!390053 lt!2690139))))))

(assert (= (and d!2361638 c!1452558) b!7916174))

(assert (= (and d!2361638 (not c!1452558)) b!7916175))

(declare-fun m!8290418 () Bool)

(assert (=> b!7916175 m!8290418))

(assert (=> b!7915885 d!2361638))

(declare-fun d!2361640 () Bool)

(declare-fun lt!2690295 () Int)

(assert (=> d!2361640 (>= lt!2690295 0)))

(declare-fun e!4672764 () Int)

(assert (=> d!2361640 (= lt!2690295 e!4672764)))

(declare-fun c!1452559 () Bool)

(assert (=> d!2361640 (= c!1452559 ((_ is Nil!74420) (t!390053 ll!14)))))

(assert (=> d!2361640 (= (size!43197 (t!390053 ll!14)) lt!2690295)))

(declare-fun b!7916176 () Bool)

(assert (=> b!7916176 (= e!4672764 0)))

(declare-fun b!7916177 () Bool)

(assert (=> b!7916177 (= e!4672764 (+ 1 (size!43197 (t!390053 (t!390053 ll!14)))))))

(assert (= (and d!2361640 c!1452559) b!7916176))

(assert (= (and d!2361640 (not c!1452559)) b!7916177))

(declare-fun m!8290420 () Bool)

(assert (=> b!7916177 m!8290420))

(assert (=> b!7915885 d!2361640))

(declare-fun b!7916179 () Bool)

(declare-fun e!4672766 () List!74544)

(assert (=> b!7916179 (= e!4672766 (Cons!74420 (h!80868 (list!19367 (left!56831 lt!2690138))) (++!18238 (t!390053 (list!19367 (left!56831 lt!2690138))) (list!19367 (right!57161 lt!2690138)))))))

(declare-fun b!7916180 () Bool)

(declare-fun res!3141900 () Bool)

(declare-fun e!4672765 () Bool)

(assert (=> b!7916180 (=> (not res!3141900) (not e!4672765))))

(declare-fun lt!2690296 () List!74544)

(assert (=> b!7916180 (= res!3141900 (= (size!43197 lt!2690296) (+ (size!43197 (list!19367 (left!56831 lt!2690138))) (size!43197 (list!19367 (right!57161 lt!2690138))))))))

(declare-fun b!7916181 () Bool)

(assert (=> b!7916181 (= e!4672765 (or (not (= (list!19367 (right!57161 lt!2690138)) Nil!74420)) (= lt!2690296 (list!19367 (left!56831 lt!2690138)))))))

(declare-fun d!2361642 () Bool)

(assert (=> d!2361642 e!4672765))

(declare-fun res!3141901 () Bool)

(assert (=> d!2361642 (=> (not res!3141901) (not e!4672765))))

(assert (=> d!2361642 (= res!3141901 (= (content!15764 lt!2690296) ((_ map or) (content!15764 (list!19367 (left!56831 lt!2690138))) (content!15764 (list!19367 (right!57161 lt!2690138))))))))

(assert (=> d!2361642 (= lt!2690296 e!4672766)))

(declare-fun c!1452560 () Bool)

(assert (=> d!2361642 (= c!1452560 ((_ is Nil!74420) (list!19367 (left!56831 lt!2690138))))))

(assert (=> d!2361642 (= (++!18238 (list!19367 (left!56831 lt!2690138)) (list!19367 (right!57161 lt!2690138))) lt!2690296)))

(declare-fun b!7916178 () Bool)

(assert (=> b!7916178 (= e!4672766 (list!19367 (right!57161 lt!2690138)))))

(assert (= (and d!2361642 c!1452560) b!7916178))

(assert (= (and d!2361642 (not c!1452560)) b!7916179))

(assert (= (and d!2361642 res!3141901) b!7916180))

(assert (= (and b!7916180 res!3141900) b!7916181))

(assert (=> b!7916179 m!8290104))

(declare-fun m!8290422 () Bool)

(assert (=> b!7916179 m!8290422))

(declare-fun m!8290424 () Bool)

(assert (=> b!7916180 m!8290424))

(assert (=> b!7916180 m!8290102))

(declare-fun m!8290426 () Bool)

(assert (=> b!7916180 m!8290426))

(assert (=> b!7916180 m!8290104))

(declare-fun m!8290428 () Bool)

(assert (=> b!7916180 m!8290428))

(declare-fun m!8290430 () Bool)

(assert (=> d!2361642 m!8290430))

(assert (=> d!2361642 m!8290102))

(declare-fun m!8290432 () Bool)

(assert (=> d!2361642 m!8290432))

(assert (=> d!2361642 m!8290104))

(declare-fun m!8290434 () Bool)

(assert (=> d!2361642 m!8290434))

(assert (=> b!7915898 d!2361642))

(declare-fun b!7916185 () Bool)

(declare-fun e!4672768 () List!74544)

(assert (=> b!7916185 (= e!4672768 (++!18238 (list!19367 (left!56831 (left!56831 lt!2690138))) (list!19367 (right!57161 (left!56831 lt!2690138)))))))

(declare-fun b!7916183 () Bool)

(declare-fun e!4672767 () List!74544)

(assert (=> b!7916183 (= e!4672767 e!4672768)))

(declare-fun c!1452562 () Bool)

(assert (=> b!7916183 (= c!1452562 ((_ is Leaf!30192) (left!56831 lt!2690138)))))

(declare-fun b!7916182 () Bool)

(assert (=> b!7916182 (= e!4672767 Nil!74420)))

(declare-fun d!2361644 () Bool)

(declare-fun c!1452561 () Bool)

(assert (=> d!2361644 (= c!1452561 ((_ is Empty!15874) (left!56831 lt!2690138)))))

(assert (=> d!2361644 (= (list!19367 (left!56831 lt!2690138)) e!4672767)))

(declare-fun b!7916184 () Bool)

(assert (=> b!7916184 (= e!4672768 (list!19369 (xs!19256 (left!56831 lt!2690138))))))

(assert (= (and d!2361644 c!1452561) b!7916182))

(assert (= (and d!2361644 (not c!1452561)) b!7916183))

(assert (= (and b!7916183 c!1452562) b!7916184))

(assert (= (and b!7916183 (not c!1452562)) b!7916185))

(declare-fun m!8290436 () Bool)

(assert (=> b!7916185 m!8290436))

(declare-fun m!8290438 () Bool)

(assert (=> b!7916185 m!8290438))

(assert (=> b!7916185 m!8290436))

(assert (=> b!7916185 m!8290438))

(declare-fun m!8290440 () Bool)

(assert (=> b!7916185 m!8290440))

(declare-fun m!8290442 () Bool)

(assert (=> b!7916184 m!8290442))

(assert (=> b!7915898 d!2361644))

(declare-fun b!7916189 () Bool)

(declare-fun e!4672770 () List!74544)

(assert (=> b!7916189 (= e!4672770 (++!18238 (list!19367 (left!56831 (right!57161 lt!2690138))) (list!19367 (right!57161 (right!57161 lt!2690138)))))))

(declare-fun b!7916187 () Bool)

(declare-fun e!4672769 () List!74544)

(assert (=> b!7916187 (= e!4672769 e!4672770)))

(declare-fun c!1452564 () Bool)

(assert (=> b!7916187 (= c!1452564 ((_ is Leaf!30192) (right!57161 lt!2690138)))))

(declare-fun b!7916186 () Bool)

(assert (=> b!7916186 (= e!4672769 Nil!74420)))

(declare-fun d!2361646 () Bool)

(declare-fun c!1452563 () Bool)

(assert (=> d!2361646 (= c!1452563 ((_ is Empty!15874) (right!57161 lt!2690138)))))

(assert (=> d!2361646 (= (list!19367 (right!57161 lt!2690138)) e!4672769)))

(declare-fun b!7916188 () Bool)

(assert (=> b!7916188 (= e!4672770 (list!19369 (xs!19256 (right!57161 lt!2690138))))))

(assert (= (and d!2361646 c!1452563) b!7916186))

(assert (= (and d!2361646 (not c!1452563)) b!7916187))

(assert (= (and b!7916187 c!1452564) b!7916188))

(assert (= (and b!7916187 (not c!1452564)) b!7916189))

(declare-fun m!8290444 () Bool)

(assert (=> b!7916189 m!8290444))

(declare-fun m!8290446 () Bool)

(assert (=> b!7916189 m!8290446))

(assert (=> b!7916189 m!8290444))

(assert (=> b!7916189 m!8290446))

(declare-fun m!8290448 () Bool)

(assert (=> b!7916189 m!8290448))

(declare-fun m!8290450 () Bool)

(assert (=> b!7916188 m!8290450))

(assert (=> b!7915898 d!2361646))

(declare-fun d!2361648 () Bool)

(declare-fun lt!2690297 () Int)

(assert (=> d!2361648 (>= lt!2690297 0)))

(declare-fun e!4672771 () Int)

(assert (=> d!2361648 (= lt!2690297 e!4672771)))

(declare-fun c!1452565 () Bool)

(assert (=> d!2361648 (= c!1452565 ((_ is Nil!74420) (innerList!15962 (xs!19256 c!5365))))))

(assert (=> d!2361648 (= (size!43197 (innerList!15962 (xs!19256 c!5365))) lt!2690297)))

(declare-fun b!7916190 () Bool)

(assert (=> b!7916190 (= e!4672771 0)))

(declare-fun b!7916191 () Bool)

(assert (=> b!7916191 (= e!4672771 (+ 1 (size!43197 (t!390053 (innerList!15962 (xs!19256 c!5365))))))))

(assert (= (and d!2361648 c!1452565) b!7916190))

(assert (= (and d!2361648 (not c!1452565)) b!7916191))

(declare-fun m!8290452 () Bool)

(assert (=> b!7916191 m!8290452))

(assert (=> d!2361602 d!2361648))

(declare-fun b!7916195 () Bool)

(declare-fun e!4672773 () List!74544)

(assert (=> b!7916195 (= e!4672773 (++!18238 (list!19367 (left!56831 (right!57161 c!5365))) (list!19367 (right!57161 (right!57161 c!5365)))))))

(declare-fun b!7916193 () Bool)

(declare-fun e!4672772 () List!74544)

(assert (=> b!7916193 (= e!4672772 e!4672773)))

(declare-fun c!1452567 () Bool)

(assert (=> b!7916193 (= c!1452567 ((_ is Leaf!30192) (right!57161 c!5365)))))

(declare-fun b!7916192 () Bool)

(assert (=> b!7916192 (= e!4672772 Nil!74420)))

(declare-fun d!2361650 () Bool)

(declare-fun c!1452566 () Bool)

(assert (=> d!2361650 (= c!1452566 ((_ is Empty!15874) (right!57161 c!5365)))))

(assert (=> d!2361650 (= (list!19367 (right!57161 c!5365)) e!4672772)))

(declare-fun b!7916194 () Bool)

(assert (=> b!7916194 (= e!4672773 (list!19369 (xs!19256 (right!57161 c!5365))))))

(assert (= (and d!2361650 c!1452566) b!7916192))

(assert (= (and d!2361650 (not c!1452566)) b!7916193))

(assert (= (and b!7916193 c!1452567) b!7916194))

(assert (= (and b!7916193 (not c!1452567)) b!7916195))

(declare-fun m!8290454 () Bool)

(assert (=> b!7916195 m!8290454))

(declare-fun m!8290456 () Bool)

(assert (=> b!7916195 m!8290456))

(assert (=> b!7916195 m!8290454))

(assert (=> b!7916195 m!8290456))

(declare-fun m!8290458 () Bool)

(assert (=> b!7916195 m!8290458))

(declare-fun m!8290460 () Bool)

(assert (=> b!7916194 m!8290460))

(assert (=> bm!734526 d!2361650))

(declare-fun b!7916196 () Bool)

(declare-fun e!4672775 () Bool)

(assert (=> b!7916196 (= e!4672775 (not (isEmpty!42735 (right!57161 lt!2690177))))))

(declare-fun d!2361652 () Bool)

(declare-fun res!3141904 () Bool)

(declare-fun e!4672774 () Bool)

(assert (=> d!2361652 (=> res!3141904 e!4672774)))

(assert (=> d!2361652 (= res!3141904 (not ((_ is Node!15874) lt!2690177)))))

(assert (=> d!2361652 (= (isBalanced!4500 lt!2690177) e!4672774)))

(declare-fun b!7916197 () Bool)

(declare-fun res!3141906 () Bool)

(assert (=> b!7916197 (=> (not res!3141906) (not e!4672775))))

(assert (=> b!7916197 (= res!3141906 (isBalanced!4500 (right!57161 lt!2690177)))))

(declare-fun b!7916198 () Bool)

(declare-fun res!3141905 () Bool)

(assert (=> b!7916198 (=> (not res!3141905) (not e!4672775))))

(assert (=> b!7916198 (= res!3141905 (<= (- (height!2190 (left!56831 lt!2690177)) (height!2190 (right!57161 lt!2690177))) 1))))

(declare-fun b!7916199 () Bool)

(assert (=> b!7916199 (= e!4672774 e!4672775)))

(declare-fun res!3141907 () Bool)

(assert (=> b!7916199 (=> (not res!3141907) (not e!4672775))))

(assert (=> b!7916199 (= res!3141907 (<= (- 1) (- (height!2190 (left!56831 lt!2690177)) (height!2190 (right!57161 lt!2690177)))))))

(declare-fun b!7916200 () Bool)

(declare-fun res!3141903 () Bool)

(assert (=> b!7916200 (=> (not res!3141903) (not e!4672775))))

(assert (=> b!7916200 (= res!3141903 (not (isEmpty!42735 (left!56831 lt!2690177))))))

(declare-fun b!7916201 () Bool)

(declare-fun res!3141902 () Bool)

(assert (=> b!7916201 (=> (not res!3141902) (not e!4672775))))

(assert (=> b!7916201 (= res!3141902 (isBalanced!4500 (left!56831 lt!2690177)))))

(assert (= (and d!2361652 (not res!3141904)) b!7916199))

(assert (= (and b!7916199 res!3141907) b!7916198))

(assert (= (and b!7916198 res!3141905) b!7916201))

(assert (= (and b!7916201 res!3141902) b!7916197))

(assert (= (and b!7916197 res!3141906) b!7916200))

(assert (= (and b!7916200 res!3141903) b!7916196))

(declare-fun m!8290462 () Bool)

(assert (=> b!7916199 m!8290462))

(declare-fun m!8290464 () Bool)

(assert (=> b!7916199 m!8290464))

(declare-fun m!8290466 () Bool)

(assert (=> b!7916201 m!8290466))

(declare-fun m!8290468 () Bool)

(assert (=> b!7916196 m!8290468))

(assert (=> b!7916198 m!8290462))

(assert (=> b!7916198 m!8290464))

(declare-fun m!8290470 () Bool)

(assert (=> b!7916197 m!8290470))

(declare-fun m!8290472 () Bool)

(assert (=> b!7916200 m!8290472))

(assert (=> b!7915916 d!2361652))

(declare-fun d!2361654 () Bool)

(assert (=> d!2361654 (= (inv!95567 (xs!19256 (right!57161 c!5365))) (<= (size!43197 (innerList!15962 (xs!19256 (right!57161 c!5365)))) 2147483647))))

(declare-fun bs!1968456 () Bool)

(assert (= bs!1968456 d!2361654))

(declare-fun m!8290474 () Bool)

(assert (=> bs!1968456 m!8290474))

(assert (=> b!7916098 d!2361654))

(declare-fun d!2361656 () Bool)

(declare-fun c!1452570 () Bool)

(assert (=> d!2361656 (= c!1452570 ((_ is Nil!74420) lt!2690147))))

(declare-fun e!4672778 () (InoxSet T!145608))

(assert (=> d!2361656 (= (content!15764 lt!2690147) e!4672778)))

(declare-fun b!7916206 () Bool)

(assert (=> b!7916206 (= e!4672778 ((as const (Array T!145608 Bool)) false))))

(declare-fun b!7916207 () Bool)

(assert (=> b!7916207 (= e!4672778 ((_ map or) (store ((as const (Array T!145608 Bool)) false) (h!80868 lt!2690147) true) (content!15764 (t!390053 lt!2690147))))))

(assert (= (and d!2361656 c!1452570) b!7916206))

(assert (= (and d!2361656 (not c!1452570)) b!7916207))

(declare-fun m!8290476 () Bool)

(assert (=> b!7916207 m!8290476))

(declare-fun m!8290478 () Bool)

(assert (=> b!7916207 m!8290478))

(assert (=> d!2361568 d!2361656))

(declare-fun d!2361658 () Bool)

(declare-fun c!1452571 () Bool)

(assert (=> d!2361658 (= c!1452571 ((_ is Nil!74420) lt!2690139))))

(declare-fun e!4672779 () (InoxSet T!145608))

(assert (=> d!2361658 (= (content!15764 lt!2690139) e!4672779)))

(declare-fun b!7916208 () Bool)

(assert (=> b!7916208 (= e!4672779 ((as const (Array T!145608 Bool)) false))))

(declare-fun b!7916209 () Bool)

(assert (=> b!7916209 (= e!4672779 ((_ map or) (store ((as const (Array T!145608 Bool)) false) (h!80868 lt!2690139) true) (content!15764 (t!390053 lt!2690139))))))

(assert (= (and d!2361658 c!1452571) b!7916208))

(assert (= (and d!2361658 (not c!1452571)) b!7916209))

(declare-fun m!8290480 () Bool)

(assert (=> b!7916209 m!8290480))

(declare-fun m!8290482 () Bool)

(assert (=> b!7916209 m!8290482))

(assert (=> d!2361568 d!2361658))

(declare-fun d!2361660 () Bool)

(declare-fun c!1452572 () Bool)

(assert (=> d!2361660 (= c!1452572 ((_ is Nil!74420) (t!390053 ll!14)))))

(declare-fun e!4672780 () (InoxSet T!145608))

(assert (=> d!2361660 (= (content!15764 (t!390053 ll!14)) e!4672780)))

(declare-fun b!7916210 () Bool)

(assert (=> b!7916210 (= e!4672780 ((as const (Array T!145608 Bool)) false))))

(declare-fun b!7916211 () Bool)

(assert (=> b!7916211 (= e!4672780 ((_ map or) (store ((as const (Array T!145608 Bool)) false) (h!80868 (t!390053 ll!14)) true) (content!15764 (t!390053 (t!390053 ll!14)))))))

(assert (= (and d!2361660 c!1452572) b!7916210))

(assert (= (and d!2361660 (not c!1452572)) b!7916211))

(declare-fun m!8290484 () Bool)

(assert (=> b!7916211 m!8290484))

(declare-fun m!8290486 () Bool)

(assert (=> b!7916211 m!8290486))

(assert (=> d!2361568 d!2361660))

(declare-fun d!2361662 () Bool)

(declare-fun lt!2690302 () IArray!31809)

(assert (=> d!2361662 (= lt!2690302 (IArray!31810 ($colon+!297 (list!19369 (xs!19256 c!5365)) (h!80868 ll!14))))))

(declare-fun choose!59792 (IArray!31809 T!145608) IArray!31809)

(assert (=> d!2361662 (= lt!2690302 (choose!59792 (xs!19256 c!5365) (h!80868 ll!14)))))

(declare-fun size!43199 (IArray!31809) Int)

(assert (=> d!2361662 (<= (+ (size!43199 (xs!19256 c!5365)) 1) 2147483647)))

(assert (=> d!2361662 (= (append!1122 (xs!19256 c!5365) (h!80868 ll!14)) lt!2690302)))

(declare-fun bs!1968457 () Bool)

(assert (= bs!1968457 d!2361662))

(assert (=> bs!1968457 m!8290056))

(assert (=> bs!1968457 m!8290056))

(assert (=> bs!1968457 m!8290212))

(declare-fun m!8290488 () Bool)

(assert (=> bs!1968457 m!8290488))

(declare-fun m!8290490 () Bool)

(assert (=> bs!1968457 m!8290490))

(assert (=> b!7915987 d!2361662))

(declare-fun bm!734538 () Bool)

(declare-fun call!734543 () (_ BitVec 32))

(assert (=> bm!734538 (= call!734543 (isize!107 (list!19369 (xs!19256 c!5365))))))

(declare-fun b!7916216 () Bool)

(declare-fun e!4672785 () List!74544)

(assert (=> b!7916216 (= e!4672785 (Cons!74420 (h!80868 ll!14) (list!19369 (xs!19256 c!5365))))))

(declare-fun bm!734539 () Bool)

(declare-fun call!734544 () (_ BitVec 32))

(declare-fun lt!2690303 () List!74544)

(assert (=> bm!734539 (= call!734544 (isize!107 lt!2690303))))

(declare-fun d!2361666 () Bool)

(declare-fun e!4672783 () Bool)

(assert (=> d!2361666 e!4672783))

(declare-fun res!3141910 () Bool)

(assert (=> d!2361666 (=> (not res!3141910) (not e!4672783))))

(assert (=> d!2361666 (= res!3141910 ((_ is Cons!74420) lt!2690303))))

(assert (=> d!2361666 (= lt!2690303 e!4672785)))

(declare-fun c!1452576 () Bool)

(assert (=> d!2361666 (= c!1452576 ((_ is Nil!74420) (list!19369 (xs!19256 c!5365))))))

(assert (=> d!2361666 (= ($colon+!297 (list!19369 (xs!19256 c!5365)) (h!80868 ll!14)) lt!2690303)))

(declare-fun b!7916217 () Bool)

(assert (=> b!7916217 (= e!4672783 (= lt!2690303 (++!18238 (list!19369 (xs!19256 c!5365)) (Cons!74420 (h!80868 ll!14) Nil!74420))))))

(declare-fun b!7916218 () Bool)

(declare-fun e!4672784 () Bool)

(assert (=> b!7916218 (= e!4672784 (= call!734544 call!734543))))

(declare-fun b!7916219 () Bool)

(declare-fun res!3141909 () Bool)

(assert (=> b!7916219 (=> (not res!3141909) (not e!4672783))))

(assert (=> b!7916219 (= res!3141909 e!4672784)))

(declare-fun c!1452575 () Bool)

(assert (=> b!7916219 (= c!1452575 (bvslt (isize!107 (list!19369 (xs!19256 c!5365))) #b01111111111111111111111111111111))))

(declare-fun b!7916220 () Bool)

(assert (=> b!7916220 (= e!4672784 (= call!734544 (bvadd call!734543 #b00000000000000000000000000000001)))))

(declare-fun b!7916221 () Bool)

(declare-fun res!3141908 () Bool)

(assert (=> b!7916221 (=> (not res!3141908) (not e!4672783))))

(assert (=> b!7916221 (= res!3141908 (= (size!43197 lt!2690303) (+ (size!43197 (list!19369 (xs!19256 c!5365))) 1)))))

(declare-fun b!7916222 () Bool)

(assert (=> b!7916222 (= e!4672785 (Cons!74420 (h!80868 (list!19369 (xs!19256 c!5365))) ($colon+!297 (t!390053 (list!19369 (xs!19256 c!5365))) (h!80868 ll!14))))))

(declare-fun b!7916223 () Bool)

(declare-fun res!3141911 () Bool)

(assert (=> b!7916223 (=> (not res!3141911) (not e!4672783))))

(assert (=> b!7916223 (= res!3141911 (= (content!15764 lt!2690303) ((_ map or) (content!15764 (list!19369 (xs!19256 c!5365))) (store ((as const (Array T!145608 Bool)) false) (h!80868 ll!14) true))))))

(assert (= (and d!2361666 c!1452576) b!7916216))

(assert (= (and d!2361666 (not c!1452576)) b!7916222))

(assert (= (and d!2361666 res!3141910) b!7916221))

(assert (= (and b!7916221 res!3141908) b!7916219))

(assert (= (and b!7916219 c!1452575) b!7916220))

(assert (= (and b!7916219 (not c!1452575)) b!7916218))

(assert (= (or b!7916220 b!7916218) bm!734539))

(assert (= (or b!7916220 b!7916218) bm!734538))

(assert (= (and b!7916219 res!3141909) b!7916223))

(assert (= (and b!7916223 res!3141911) b!7916217))

(declare-fun m!8290492 () Bool)

(assert (=> b!7916221 m!8290492))

(assert (=> b!7916221 m!8290056))

(assert (=> b!7916221 m!8290368))

(assert (=> b!7916219 m!8290056))

(declare-fun m!8290494 () Bool)

(assert (=> b!7916219 m!8290494))

(declare-fun m!8290496 () Bool)

(assert (=> b!7916222 m!8290496))

(assert (=> b!7916217 m!8290056))

(declare-fun m!8290498 () Bool)

(assert (=> b!7916217 m!8290498))

(declare-fun m!8290500 () Bool)

(assert (=> bm!734539 m!8290500))

(assert (=> bm!734538 m!8290056))

(assert (=> bm!734538 m!8290494))

(declare-fun m!8290502 () Bool)

(assert (=> b!7916223 m!8290502))

(assert (=> b!7916223 m!8290056))

(declare-fun m!8290504 () Bool)

(assert (=> b!7916223 m!8290504))

(assert (=> b!7916223 m!8290388))

(assert (=> b!7915987 d!2361666))

(assert (=> b!7915987 d!2361608))

(declare-fun b!7916227 () Bool)

(declare-fun e!4672788 () List!74544)

(assert (=> b!7916227 (= e!4672788 (Cons!74420 (h!80868 (t!390053 (list!19367 c!5365))) (++!18238 (t!390053 (t!390053 (list!19367 c!5365))) (Cons!74420 (h!80868 ll!14) Nil!74420))))))

(declare-fun b!7916228 () Bool)

(declare-fun res!3141912 () Bool)

(declare-fun e!4672787 () Bool)

(assert (=> b!7916228 (=> (not res!3141912) (not e!4672787))))

(declare-fun lt!2690305 () List!74544)

(assert (=> b!7916228 (= res!3141912 (= (size!43197 lt!2690305) (+ (size!43197 (t!390053 (list!19367 c!5365))) (size!43197 (Cons!74420 (h!80868 ll!14) Nil!74420)))))))

(declare-fun b!7916229 () Bool)

(assert (=> b!7916229 (= e!4672787 (or (not (= (Cons!74420 (h!80868 ll!14) Nil!74420) Nil!74420)) (= lt!2690305 (t!390053 (list!19367 c!5365)))))))

(declare-fun d!2361668 () Bool)

(assert (=> d!2361668 e!4672787))

(declare-fun res!3141913 () Bool)

(assert (=> d!2361668 (=> (not res!3141913) (not e!4672787))))

(assert (=> d!2361668 (= res!3141913 (= (content!15764 lt!2690305) ((_ map or) (content!15764 (t!390053 (list!19367 c!5365))) (content!15764 (Cons!74420 (h!80868 ll!14) Nil!74420)))))))

(assert (=> d!2361668 (= lt!2690305 e!4672788)))

(declare-fun c!1452578 () Bool)

(assert (=> d!2361668 (= c!1452578 ((_ is Nil!74420) (t!390053 (list!19367 c!5365))))))

(assert (=> d!2361668 (= (++!18238 (t!390053 (list!19367 c!5365)) (Cons!74420 (h!80868 ll!14) Nil!74420)) lt!2690305)))

(declare-fun b!7916226 () Bool)

(assert (=> b!7916226 (= e!4672788 (Cons!74420 (h!80868 ll!14) Nil!74420))))

(assert (= (and d!2361668 c!1452578) b!7916226))

(assert (= (and d!2361668 (not c!1452578)) b!7916227))

(assert (= (and d!2361668 res!3141913) b!7916228))

(assert (= (and b!7916228 res!3141912) b!7916229))

(declare-fun m!8290508 () Bool)

(assert (=> b!7916227 m!8290508))

(declare-fun m!8290510 () Bool)

(assert (=> b!7916228 m!8290510))

(declare-fun m!8290512 () Bool)

(assert (=> b!7916228 m!8290512))

(assert (=> b!7916228 m!8290026))

(declare-fun m!8290514 () Bool)

(assert (=> d!2361668 m!8290514))

(declare-fun m!8290516 () Bool)

(assert (=> d!2361668 m!8290516))

(assert (=> d!2361668 m!8290032))

(assert (=> b!7915848 d!2361668))

(declare-fun b!7916262 () Bool)

(declare-fun e!4672803 () Conc!15874)

(assert (=> b!7916262 (= e!4672803 (ite c!1452532 (left!56831 c!5365) c!5365))))

(declare-fun d!2361672 () Bool)

(declare-fun lt!2690310 () Conc!15874)

(assert (=> d!2361672 (= (list!19367 lt!2690310) (++!18238 (list!19367 (ite c!1452532 (left!56831 c!5365) c!5365)) (list!19367 e!4672673)))))

(declare-fun e!4672804 () Conc!15874)

(assert (=> d!2361672 (= lt!2690310 e!4672804)))

(declare-fun c!1452590 () Bool)

(assert (=> d!2361672 (= c!1452590 (= (ite c!1452532 (left!56831 c!5365) c!5365) Empty!15874))))

(assert (=> d!2361672 (= (<>!412 (ite c!1452532 (left!56831 c!5365) c!5365) e!4672673) lt!2690310)))

(declare-fun b!7916261 () Bool)

(assert (=> b!7916261 (= e!4672804 e!4672803)))

(declare-fun c!1452589 () Bool)

(assert (=> b!7916261 (= c!1452589 (= e!4672673 Empty!15874))))

(declare-fun b!7916263 () Bool)

(assert (=> b!7916263 (= e!4672803 (Node!15874 (ite c!1452532 (left!56831 c!5365) c!5365) e!4672673 (+ (size!43198 (ite c!1452532 (left!56831 c!5365) c!5365)) (size!43198 e!4672673)) (+ (max!0 (height!2190 (ite c!1452532 (left!56831 c!5365) c!5365)) (height!2190 e!4672673)) 1)))))

(declare-fun b!7916260 () Bool)

(assert (=> b!7916260 (= e!4672804 e!4672673)))

(assert (= (and d!2361672 c!1452590) b!7916260))

(assert (= (and d!2361672 (not c!1452590)) b!7916261))

(assert (= (and b!7916261 c!1452589) b!7916262))

(assert (= (and b!7916261 (not c!1452589)) b!7916263))

(declare-fun m!8290570 () Bool)

(assert (=> d!2361672 m!8290570))

(declare-fun m!8290572 () Bool)

(assert (=> d!2361672 m!8290572))

(declare-fun m!8290574 () Bool)

(assert (=> d!2361672 m!8290574))

(assert (=> d!2361672 m!8290572))

(assert (=> d!2361672 m!8290574))

(declare-fun m!8290576 () Bool)

(assert (=> d!2361672 m!8290576))

(declare-fun m!8290578 () Bool)

(assert (=> b!7916263 m!8290578))

(declare-fun m!8290580 () Bool)

(assert (=> b!7916263 m!8290580))

(declare-fun m!8290582 () Bool)

(assert (=> b!7916263 m!8290582))

(assert (=> b!7916263 m!8290582))

(assert (=> b!7916263 m!8290580))

(declare-fun m!8290584 () Bool)

(assert (=> b!7916263 m!8290584))

(declare-fun m!8290588 () Bool)

(assert (=> b!7916263 m!8290588))

(assert (=> bm!734524 d!2361672))

(declare-fun d!2361692 () Bool)

(declare-fun lt!2690314 () IArray!31809)

(declare-fun fill!254 (Int T!145608) List!74544)

(assert (=> d!2361692 (= lt!2690314 (IArray!31810 (fill!254 1 (h!80868 ll!14))))))

(declare-fun choose!59793 (Int T!145608) IArray!31809)

(assert (=> d!2361692 (= lt!2690314 (choose!59793 1 (h!80868 ll!14)))))

(assert (=> d!2361692 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!2361692 (= (fill!253 1 (h!80868 ll!14)) lt!2690314)))

(declare-fun bs!1968458 () Bool)

(assert (= bs!1968458 d!2361692))

(declare-fun m!8290618 () Bool)

(assert (=> bs!1968458 m!8290618))

(declare-fun m!8290620 () Bool)

(assert (=> bs!1968458 m!8290620))

(assert (=> bm!734522 d!2361692))

(declare-fun b!7916279 () Bool)

(declare-fun e!4672812 () List!74544)

(assert (=> b!7916279 (= e!4672812 (Cons!74420 (h!80868 (list!19367 (left!56831 c!5365))) (++!18238 (t!390053 (list!19367 (left!56831 c!5365))) (list!19367 (right!57161 c!5365)))))))

(declare-fun b!7916280 () Bool)

(declare-fun res!3141932 () Bool)

(declare-fun e!4672811 () Bool)

(assert (=> b!7916280 (=> (not res!3141932) (not e!4672811))))

(declare-fun lt!2690315 () List!74544)

(assert (=> b!7916280 (= res!3141932 (= (size!43197 lt!2690315) (+ (size!43197 (list!19367 (left!56831 c!5365))) (size!43197 (list!19367 (right!57161 c!5365))))))))

(declare-fun b!7916281 () Bool)

(assert (=> b!7916281 (= e!4672811 (or (not (= (list!19367 (right!57161 c!5365)) Nil!74420)) (= lt!2690315 (list!19367 (left!56831 c!5365)))))))

(declare-fun d!2361700 () Bool)

(assert (=> d!2361700 e!4672811))

(declare-fun res!3141933 () Bool)

(assert (=> d!2361700 (=> (not res!3141933) (not e!4672811))))

(assert (=> d!2361700 (= res!3141933 (= (content!15764 lt!2690315) ((_ map or) (content!15764 (list!19367 (left!56831 c!5365))) (content!15764 (list!19367 (right!57161 c!5365))))))))

(assert (=> d!2361700 (= lt!2690315 e!4672812)))

(declare-fun c!1452594 () Bool)

(assert (=> d!2361700 (= c!1452594 ((_ is Nil!74420) (list!19367 (left!56831 c!5365))))))

(assert (=> d!2361700 (= (++!18238 (list!19367 (left!56831 c!5365)) (list!19367 (right!57161 c!5365))) lt!2690315)))

(declare-fun b!7916278 () Bool)

(assert (=> b!7916278 (= e!4672812 (list!19367 (right!57161 c!5365)))))

(assert (= (and d!2361700 c!1452594) b!7916278))

(assert (= (and d!2361700 (not c!1452594)) b!7916279))

(assert (= (and d!2361700 res!3141933) b!7916280))

(assert (= (and b!7916280 res!3141932) b!7916281))

(assert (=> b!7916279 m!8290050))

(declare-fun m!8290622 () Bool)

(assert (=> b!7916279 m!8290622))

(declare-fun m!8290624 () Bool)

(assert (=> b!7916280 m!8290624))

(assert (=> b!7916280 m!8290048))

(declare-fun m!8290626 () Bool)

(assert (=> b!7916280 m!8290626))

(assert (=> b!7916280 m!8290050))

(declare-fun m!8290628 () Bool)

(assert (=> b!7916280 m!8290628))

(declare-fun m!8290630 () Bool)

(assert (=> d!2361700 m!8290630))

(assert (=> d!2361700 m!8290048))

(declare-fun m!8290632 () Bool)

(assert (=> d!2361700 m!8290632))

(assert (=> d!2361700 m!8290050))

(declare-fun m!8290634 () Bool)

(assert (=> d!2361700 m!8290634))

(assert (=> b!7915878 d!2361700))

(assert (=> b!7915878 d!2361610))

(assert (=> b!7915878 d!2361650))

(declare-fun d!2361702 () Bool)

(declare-fun lt!2690318 () Bool)

(declare-fun isEmpty!42736 (List!74544) Bool)

(assert (=> d!2361702 (= lt!2690318 (isEmpty!42736 (list!19367 (left!56831 c!5365))))))

(assert (=> d!2361702 (= lt!2690318 (= (size!43198 (left!56831 c!5365)) 0))))

(assert (=> d!2361702 (= (isEmpty!42735 (left!56831 c!5365)) lt!2690318)))

(declare-fun bs!1968459 () Bool)

(assert (= bs!1968459 d!2361702))

(assert (=> bs!1968459 m!8290048))

(assert (=> bs!1968459 m!8290048))

(declare-fun m!8290636 () Bool)

(assert (=> bs!1968459 m!8290636))

(assert (=> bs!1968459 m!8290326))

(assert (=> b!7916058 d!2361702))

(declare-fun d!2361704 () Bool)

(declare-fun c!1452595 () Bool)

(assert (=> d!2361704 (= c!1452595 ((_ is Node!15874) (left!56831 (left!56831 c!5365))))))

(declare-fun e!4672815 () Bool)

(assert (=> d!2361704 (= (inv!95568 (left!56831 (left!56831 c!5365))) e!4672815)))

(declare-fun b!7916286 () Bool)

(assert (=> b!7916286 (= e!4672815 (inv!95571 (left!56831 (left!56831 c!5365))))))

(declare-fun b!7916287 () Bool)

(declare-fun e!4672816 () Bool)

(assert (=> b!7916287 (= e!4672815 e!4672816)))

(declare-fun res!3141938 () Bool)

(assert (=> b!7916287 (= res!3141938 (not ((_ is Leaf!30192) (left!56831 (left!56831 c!5365)))))))

(assert (=> b!7916287 (=> res!3141938 e!4672816)))

(declare-fun b!7916288 () Bool)

(assert (=> b!7916288 (= e!4672816 (inv!95572 (left!56831 (left!56831 c!5365))))))

(assert (= (and d!2361704 c!1452595) b!7916286))

(assert (= (and d!2361704 (not c!1452595)) b!7916287))

(assert (= (and b!7916287 (not res!3141938)) b!7916288))

(declare-fun m!8290638 () Bool)

(assert (=> b!7916286 m!8290638))

(declare-fun m!8290640 () Bool)

(assert (=> b!7916288 m!8290640))

(assert (=> b!7916094 d!2361704))

(declare-fun d!2361706 () Bool)

(declare-fun c!1452596 () Bool)

(assert (=> d!2361706 (= c!1452596 ((_ is Node!15874) (right!57161 (left!56831 c!5365))))))

(declare-fun e!4672817 () Bool)

(assert (=> d!2361706 (= (inv!95568 (right!57161 (left!56831 c!5365))) e!4672817)))

(declare-fun b!7916289 () Bool)

(assert (=> b!7916289 (= e!4672817 (inv!95571 (right!57161 (left!56831 c!5365))))))

(declare-fun b!7916290 () Bool)

(declare-fun e!4672818 () Bool)

(assert (=> b!7916290 (= e!4672817 e!4672818)))

(declare-fun res!3141939 () Bool)

(assert (=> b!7916290 (= res!3141939 (not ((_ is Leaf!30192) (right!57161 (left!56831 c!5365)))))))

(assert (=> b!7916290 (=> res!3141939 e!4672818)))

(declare-fun b!7916291 () Bool)

(assert (=> b!7916291 (= e!4672818 (inv!95572 (right!57161 (left!56831 c!5365))))))

(assert (= (and d!2361706 c!1452596) b!7916289))

(assert (= (and d!2361706 (not c!1452596)) b!7916290))

(assert (= (and b!7916290 (not res!3141939)) b!7916291))

(declare-fun m!8290642 () Bool)

(assert (=> b!7916289 m!8290642))

(declare-fun m!8290644 () Bool)

(assert (=> b!7916291 m!8290644))

(assert (=> b!7916094 d!2361706))

(declare-fun d!2361708 () Bool)

(declare-fun c!1452597 () Bool)

(assert (=> d!2361708 (= c!1452597 ((_ is Nil!74420) lt!2690145))))

(declare-fun e!4672819 () (InoxSet T!145608))

(assert (=> d!2361708 (= (content!15764 lt!2690145) e!4672819)))

(declare-fun b!7916292 () Bool)

(assert (=> b!7916292 (= e!4672819 ((as const (Array T!145608 Bool)) false))))

(declare-fun b!7916293 () Bool)

(assert (=> b!7916293 (= e!4672819 ((_ map or) (store ((as const (Array T!145608 Bool)) false) (h!80868 lt!2690145) true) (content!15764 (t!390053 lt!2690145))))))

(assert (= (and d!2361708 c!1452597) b!7916292))

(assert (= (and d!2361708 (not c!1452597)) b!7916293))

(declare-fun m!8290646 () Bool)

(assert (=> b!7916293 m!8290646))

(declare-fun m!8290648 () Bool)

(assert (=> b!7916293 m!8290648))

(assert (=> d!2361558 d!2361708))

(declare-fun d!2361710 () Bool)

(declare-fun c!1452598 () Bool)

(assert (=> d!2361710 (= c!1452598 ((_ is Nil!74420) (list!19367 c!5365)))))

(declare-fun e!4672820 () (InoxSet T!145608))

(assert (=> d!2361710 (= (content!15764 (list!19367 c!5365)) e!4672820)))

(declare-fun b!7916294 () Bool)

(assert (=> b!7916294 (= e!4672820 ((as const (Array T!145608 Bool)) false))))

(declare-fun b!7916295 () Bool)

(assert (=> b!7916295 (= e!4672820 ((_ map or) (store ((as const (Array T!145608 Bool)) false) (h!80868 (list!19367 c!5365)) true) (content!15764 (t!390053 (list!19367 c!5365)))))))

(assert (= (and d!2361710 c!1452598) b!7916294))

(assert (= (and d!2361710 (not c!1452598)) b!7916295))

(declare-fun m!8290650 () Bool)

(assert (=> b!7916295 m!8290650))

(assert (=> b!7916295 m!8290516))

(assert (=> d!2361558 d!2361710))

(declare-fun d!2361712 () Bool)

(declare-fun c!1452599 () Bool)

(assert (=> d!2361712 (= c!1452599 ((_ is Nil!74420) (Cons!74420 (h!80868 ll!14) Nil!74420)))))

(declare-fun e!4672821 () (InoxSet T!145608))

(assert (=> d!2361712 (= (content!15764 (Cons!74420 (h!80868 ll!14) Nil!74420)) e!4672821)))

(declare-fun b!7916296 () Bool)

(assert (=> b!7916296 (= e!4672821 ((as const (Array T!145608 Bool)) false))))

(declare-fun b!7916297 () Bool)

(assert (=> b!7916297 (= e!4672821 ((_ map or) (store ((as const (Array T!145608 Bool)) false) (h!80868 (Cons!74420 (h!80868 ll!14) Nil!74420)) true) (content!15764 (t!390053 (Cons!74420 (h!80868 ll!14) Nil!74420)))))))

(assert (= (and d!2361712 c!1452599) b!7916296))

(assert (= (and d!2361712 (not c!1452599)) b!7916297))

(declare-fun m!8290652 () Bool)

(assert (=> b!7916297 m!8290652))

(declare-fun m!8290654 () Bool)

(assert (=> b!7916297 m!8290654))

(assert (=> d!2361558 d!2361712))

(declare-fun b!7916299 () Bool)

(declare-fun e!4672823 () List!74544)

(assert (=> b!7916299 (= e!4672823 (Cons!74420 (h!80868 (list!19367 (left!56831 lt!2690137))) (++!18238 (t!390053 (list!19367 (left!56831 lt!2690137))) (list!19367 (right!57161 lt!2690137)))))))

(declare-fun b!7916300 () Bool)

(declare-fun res!3141940 () Bool)

(declare-fun e!4672822 () Bool)

(assert (=> b!7916300 (=> (not res!3141940) (not e!4672822))))

(declare-fun lt!2690319 () List!74544)

(assert (=> b!7916300 (= res!3141940 (= (size!43197 lt!2690319) (+ (size!43197 (list!19367 (left!56831 lt!2690137))) (size!43197 (list!19367 (right!57161 lt!2690137))))))))

(declare-fun b!7916301 () Bool)

(assert (=> b!7916301 (= e!4672822 (or (not (= (list!19367 (right!57161 lt!2690137)) Nil!74420)) (= lt!2690319 (list!19367 (left!56831 lt!2690137)))))))

(declare-fun d!2361714 () Bool)

(assert (=> d!2361714 e!4672822))

(declare-fun res!3141941 () Bool)

(assert (=> d!2361714 (=> (not res!3141941) (not e!4672822))))

(assert (=> d!2361714 (= res!3141941 (= (content!15764 lt!2690319) ((_ map or) (content!15764 (list!19367 (left!56831 lt!2690137))) (content!15764 (list!19367 (right!57161 lt!2690137))))))))

(assert (=> d!2361714 (= lt!2690319 e!4672823)))

(declare-fun c!1452600 () Bool)

(assert (=> d!2361714 (= c!1452600 ((_ is Nil!74420) (list!19367 (left!56831 lt!2690137))))))

(assert (=> d!2361714 (= (++!18238 (list!19367 (left!56831 lt!2690137)) (list!19367 (right!57161 lt!2690137))) lt!2690319)))

(declare-fun b!7916298 () Bool)

(assert (=> b!7916298 (= e!4672823 (list!19367 (right!57161 lt!2690137)))))

(assert (= (and d!2361714 c!1452600) b!7916298))

(assert (= (and d!2361714 (not c!1452600)) b!7916299))

(assert (= (and d!2361714 res!3141941) b!7916300))

(assert (= (and b!7916300 res!3141940) b!7916301))

(assert (=> b!7916299 m!8290096))

(declare-fun m!8290656 () Bool)

(assert (=> b!7916299 m!8290656))

(declare-fun m!8290658 () Bool)

(assert (=> b!7916300 m!8290658))

(assert (=> b!7916300 m!8290094))

(declare-fun m!8290660 () Bool)

(assert (=> b!7916300 m!8290660))

(assert (=> b!7916300 m!8290096))

(declare-fun m!8290662 () Bool)

(assert (=> b!7916300 m!8290662))

(declare-fun m!8290664 () Bool)

(assert (=> d!2361714 m!8290664))

(assert (=> d!2361714 m!8290094))

(declare-fun m!8290666 () Bool)

(assert (=> d!2361714 m!8290666))

(assert (=> d!2361714 m!8290096))

(declare-fun m!8290668 () Bool)

(assert (=> d!2361714 m!8290668))

(assert (=> b!7915894 d!2361714))

(declare-fun b!7916305 () Bool)

(declare-fun e!4672825 () List!74544)

(assert (=> b!7916305 (= e!4672825 (++!18238 (list!19367 (left!56831 (left!56831 lt!2690137))) (list!19367 (right!57161 (left!56831 lt!2690137)))))))

(declare-fun b!7916303 () Bool)

(declare-fun e!4672824 () List!74544)

(assert (=> b!7916303 (= e!4672824 e!4672825)))

(declare-fun c!1452602 () Bool)

(assert (=> b!7916303 (= c!1452602 ((_ is Leaf!30192) (left!56831 lt!2690137)))))

(declare-fun b!7916302 () Bool)

(assert (=> b!7916302 (= e!4672824 Nil!74420)))

(declare-fun d!2361716 () Bool)

(declare-fun c!1452601 () Bool)

(assert (=> d!2361716 (= c!1452601 ((_ is Empty!15874) (left!56831 lt!2690137)))))

(assert (=> d!2361716 (= (list!19367 (left!56831 lt!2690137)) e!4672824)))

(declare-fun b!7916304 () Bool)

(assert (=> b!7916304 (= e!4672825 (list!19369 (xs!19256 (left!56831 lt!2690137))))))

(assert (= (and d!2361716 c!1452601) b!7916302))

(assert (= (and d!2361716 (not c!1452601)) b!7916303))

(assert (= (and b!7916303 c!1452602) b!7916304))

(assert (= (and b!7916303 (not c!1452602)) b!7916305))

(declare-fun m!8290670 () Bool)

(assert (=> b!7916305 m!8290670))

(declare-fun m!8290672 () Bool)

(assert (=> b!7916305 m!8290672))

(assert (=> b!7916305 m!8290670))

(assert (=> b!7916305 m!8290672))

(declare-fun m!8290674 () Bool)

(assert (=> b!7916305 m!8290674))

(declare-fun m!8290676 () Bool)

(assert (=> b!7916304 m!8290676))

(assert (=> b!7915894 d!2361716))

(declare-fun b!7916311 () Bool)

(declare-fun e!4672828 () List!74544)

(assert (=> b!7916311 (= e!4672828 (++!18238 (list!19367 (left!56831 (right!57161 lt!2690137))) (list!19367 (right!57161 (right!57161 lt!2690137)))))))

(declare-fun b!7916309 () Bool)

(declare-fun e!4672827 () List!74544)

(assert (=> b!7916309 (= e!4672827 e!4672828)))

(declare-fun c!1452604 () Bool)

(assert (=> b!7916309 (= c!1452604 ((_ is Leaf!30192) (right!57161 lt!2690137)))))

(declare-fun b!7916308 () Bool)

(assert (=> b!7916308 (= e!4672827 Nil!74420)))

(declare-fun d!2361718 () Bool)

(declare-fun c!1452603 () Bool)

(assert (=> d!2361718 (= c!1452603 ((_ is Empty!15874) (right!57161 lt!2690137)))))

(assert (=> d!2361718 (= (list!19367 (right!57161 lt!2690137)) e!4672827)))

(declare-fun b!7916310 () Bool)

(assert (=> b!7916310 (= e!4672828 (list!19369 (xs!19256 (right!57161 lt!2690137))))))

(assert (= (and d!2361718 c!1452603) b!7916308))

(assert (= (and d!2361718 (not c!1452603)) b!7916309))

(assert (= (and b!7916309 c!1452604) b!7916310))

(assert (= (and b!7916309 (not c!1452604)) b!7916311))

(declare-fun m!8290678 () Bool)

(assert (=> b!7916311 m!8290678))

(declare-fun m!8290680 () Bool)

(assert (=> b!7916311 m!8290680))

(assert (=> b!7916311 m!8290678))

(assert (=> b!7916311 m!8290680))

(declare-fun m!8290682 () Bool)

(assert (=> b!7916311 m!8290682))

(declare-fun m!8290684 () Bool)

(assert (=> b!7916310 m!8290684))

(assert (=> b!7915894 d!2361718))

(declare-fun b!7916313 () Bool)

(declare-fun e!4672830 () List!74544)

(assert (=> b!7916313 (= e!4672830 (Cons!74420 (h!80868 lt!2690280) (++!18238 (t!390053 lt!2690280) call!734529)))))

(declare-fun b!7916314 () Bool)

(declare-fun res!3141944 () Bool)

(declare-fun e!4672829 () Bool)

(assert (=> b!7916314 (=> (not res!3141944) (not e!4672829))))

(declare-fun lt!2690320 () List!74544)

(assert (=> b!7916314 (= res!3141944 (= (size!43197 lt!2690320) (+ (size!43197 lt!2690280) (size!43197 call!734529))))))

(declare-fun b!7916315 () Bool)

(assert (=> b!7916315 (= e!4672829 (or (not (= call!734529 Nil!74420)) (= lt!2690320 lt!2690280)))))

(declare-fun d!2361720 () Bool)

(assert (=> d!2361720 e!4672829))

(declare-fun res!3141945 () Bool)

(assert (=> d!2361720 (=> (not res!3141945) (not e!4672829))))

(assert (=> d!2361720 (= res!3141945 (= (content!15764 lt!2690320) ((_ map or) (content!15764 lt!2690280) (content!15764 call!734529))))))

(assert (=> d!2361720 (= lt!2690320 e!4672830)))

(declare-fun c!1452605 () Bool)

(assert (=> d!2361720 (= c!1452605 ((_ is Nil!74420) lt!2690280))))

(assert (=> d!2361720 (= (++!18238 lt!2690280 call!734529) lt!2690320)))

(declare-fun b!7916312 () Bool)

(assert (=> b!7916312 (= e!4672830 call!734529)))

(assert (= (and d!2361720 c!1452605) b!7916312))

(assert (= (and d!2361720 (not c!1452605)) b!7916313))

(assert (= (and d!2361720 res!3141945) b!7916314))

(assert (= (and b!7916314 res!3141944) b!7916315))

(declare-fun m!8290688 () Bool)

(assert (=> b!7916313 m!8290688))

(declare-fun m!8290690 () Bool)

(assert (=> b!7916314 m!8290690))

(declare-fun m!8290692 () Bool)

(assert (=> b!7916314 m!8290692))

(declare-fun m!8290694 () Bool)

(assert (=> b!7916314 m!8290694))

(declare-fun m!8290696 () Bool)

(assert (=> d!2361720 m!8290696))

(declare-fun m!8290698 () Bool)

(assert (=> d!2361720 m!8290698))

(declare-fun m!8290700 () Bool)

(assert (=> d!2361720 m!8290700))

(assert (=> b!7915982 d!2361720))

(declare-fun b!7916317 () Bool)

(declare-fun e!4672832 () List!74544)

(assert (=> b!7916317 (= e!4672832 (Cons!74420 (h!80868 call!734534) (++!18238 (t!390053 call!734534) lt!2690278)))))

(declare-fun b!7916318 () Bool)

(declare-fun res!3141946 () Bool)

(declare-fun e!4672831 () Bool)

(assert (=> b!7916318 (=> (not res!3141946) (not e!4672831))))

(declare-fun lt!2690321 () List!74544)

(assert (=> b!7916318 (= res!3141946 (= (size!43197 lt!2690321) (+ (size!43197 call!734534) (size!43197 lt!2690278))))))

(declare-fun b!7916319 () Bool)

(assert (=> b!7916319 (= e!4672831 (or (not (= lt!2690278 Nil!74420)) (= lt!2690321 call!734534)))))

(declare-fun d!2361724 () Bool)

(assert (=> d!2361724 e!4672831))

(declare-fun res!3141947 () Bool)

(assert (=> d!2361724 (=> (not res!3141947) (not e!4672831))))

(assert (=> d!2361724 (= res!3141947 (= (content!15764 lt!2690321) ((_ map or) (content!15764 call!734534) (content!15764 lt!2690278))))))

(assert (=> d!2361724 (= lt!2690321 e!4672832)))

(declare-fun c!1452606 () Bool)

(assert (=> d!2361724 (= c!1452606 ((_ is Nil!74420) call!734534))))

(assert (=> d!2361724 (= (++!18238 call!734534 lt!2690278) lt!2690321)))

(declare-fun b!7916316 () Bool)

(assert (=> b!7916316 (= e!4672832 lt!2690278)))

(assert (= (and d!2361724 c!1452606) b!7916316))

(assert (= (and d!2361724 (not c!1452606)) b!7916317))

(assert (= (and d!2361724 res!3141947) b!7916318))

(assert (= (and b!7916318 res!3141946) b!7916319))

(declare-fun m!8290702 () Bool)

(assert (=> b!7916317 m!8290702))

(declare-fun m!8290704 () Bool)

(assert (=> b!7916318 m!8290704))

(declare-fun m!8290706 () Bool)

(assert (=> b!7916318 m!8290706))

(declare-fun m!8290708 () Bool)

(assert (=> b!7916318 m!8290708))

(declare-fun m!8290710 () Bool)

(assert (=> d!2361724 m!8290710))

(declare-fun m!8290712 () Bool)

(assert (=> d!2361724 m!8290712))

(declare-fun m!8290714 () Bool)

(assert (=> d!2361724 m!8290714))

(assert (=> b!7915982 d!2361724))

(declare-fun b!7916323 () Bool)

(declare-fun e!4672834 () List!74544)

(assert (=> b!7916323 (= e!4672834 (++!18238 (list!19367 (left!56831 (left!56831 lt!2690275))) (list!19367 (right!57161 (left!56831 lt!2690275)))))))

(declare-fun b!7916321 () Bool)

(declare-fun e!4672833 () List!74544)

(assert (=> b!7916321 (= e!4672833 e!4672834)))

(declare-fun c!1452608 () Bool)

(assert (=> b!7916321 (= c!1452608 ((_ is Leaf!30192) (left!56831 lt!2690275)))))

(declare-fun b!7916320 () Bool)

(assert (=> b!7916320 (= e!4672833 Nil!74420)))

(declare-fun d!2361726 () Bool)

(declare-fun c!1452607 () Bool)

(assert (=> d!2361726 (= c!1452607 ((_ is Empty!15874) (left!56831 lt!2690275)))))

(assert (=> d!2361726 (= (list!19367 (left!56831 lt!2690275)) e!4672833)))

(declare-fun b!7916322 () Bool)

(assert (=> b!7916322 (= e!4672834 (list!19369 (xs!19256 (left!56831 lt!2690275))))))

(assert (= (and d!2361726 c!1452607) b!7916320))

(assert (= (and d!2361726 (not c!1452607)) b!7916321))

(assert (= (and b!7916321 c!1452608) b!7916322))

(assert (= (and b!7916321 (not c!1452608)) b!7916323))

(declare-fun m!8290716 () Bool)

(assert (=> b!7916323 m!8290716))

(declare-fun m!8290718 () Bool)

(assert (=> b!7916323 m!8290718))

(assert (=> b!7916323 m!8290716))

(assert (=> b!7916323 m!8290718))

(declare-fun m!8290720 () Bool)

(assert (=> b!7916323 m!8290720))

(declare-fun m!8290722 () Bool)

(assert (=> b!7916322 m!8290722))

(assert (=> b!7915982 d!2361726))

(declare-fun b!7916326 () Bool)

(declare-fun e!4672835 () Conc!15874)

(assert (=> b!7916326 (= e!4672835 call!734536)))

(declare-fun d!2361728 () Bool)

(declare-fun lt!2690322 () Conc!15874)

(assert (=> d!2361728 (= (list!19367 lt!2690322) (++!18238 (list!19367 call!734536) (list!19367 (right!57161 lt!2690275))))))

(declare-fun e!4672836 () Conc!15874)

(assert (=> d!2361728 (= lt!2690322 e!4672836)))

(declare-fun c!1452610 () Bool)

(assert (=> d!2361728 (= c!1452610 (= call!734536 Empty!15874))))

(assert (=> d!2361728 (= (<>!412 call!734536 (right!57161 lt!2690275)) lt!2690322)))

(declare-fun b!7916325 () Bool)

(assert (=> b!7916325 (= e!4672836 e!4672835)))

(declare-fun c!1452609 () Bool)

(assert (=> b!7916325 (= c!1452609 (= (right!57161 lt!2690275) Empty!15874))))

(declare-fun b!7916327 () Bool)

(assert (=> b!7916327 (= e!4672835 (Node!15874 call!734536 (right!57161 lt!2690275) (+ (size!43198 call!734536) (size!43198 (right!57161 lt!2690275))) (+ (max!0 (height!2190 call!734536) (height!2190 (right!57161 lt!2690275))) 1)))))

(declare-fun b!7916324 () Bool)

(assert (=> b!7916324 (= e!4672836 (right!57161 lt!2690275))))

(assert (= (and d!2361728 c!1452610) b!7916324))

(assert (= (and d!2361728 (not c!1452610)) b!7916325))

(assert (= (and b!7916325 c!1452609) b!7916326))

(assert (= (and b!7916325 (not c!1452609)) b!7916327))

(declare-fun m!8290724 () Bool)

(assert (=> d!2361728 m!8290724))

(declare-fun m!8290726 () Bool)

(assert (=> d!2361728 m!8290726))

(assert (=> d!2361728 m!8290242))

(assert (=> d!2361728 m!8290726))

(assert (=> d!2361728 m!8290242))

(declare-fun m!8290728 () Bool)

(assert (=> d!2361728 m!8290728))

(declare-fun m!8290730 () Bool)

(assert (=> b!7916327 m!8290730))

(declare-fun m!8290732 () Bool)

(assert (=> b!7916327 m!8290732))

(declare-fun m!8290734 () Bool)

(assert (=> b!7916327 m!8290734))

(assert (=> b!7916327 m!8290734))

(assert (=> b!7916327 m!8290732))

(declare-fun m!8290736 () Bool)

(assert (=> b!7916327 m!8290736))

(declare-fun m!8290738 () Bool)

(assert (=> b!7916327 m!8290738))

(assert (=> b!7915982 d!2361728))

(declare-fun d!2361730 () Bool)

(assert (=> d!2361730 (= (++!18238 (++!18238 lt!2690280 lt!2690269) lt!2690278) (++!18238 lt!2690280 (++!18238 lt!2690269 lt!2690278)))))

(declare-fun lt!2690325 () Unit!169541)

(declare-fun choose!59795 (List!74544 List!74544 List!74544) Unit!169541)

(assert (=> d!2361730 (= lt!2690325 (choose!59795 lt!2690280 lt!2690269 lt!2690278))))

(assert (=> d!2361730 (= (lemmaConcatAssociativity!3144 lt!2690280 lt!2690269 lt!2690278) lt!2690325)))

(declare-fun bs!1968460 () Bool)

(assert (= bs!1968460 d!2361730))

(declare-fun m!8290740 () Bool)

(assert (=> bs!1968460 m!8290740))

(declare-fun m!8290742 () Bool)

(assert (=> bs!1968460 m!8290742))

(declare-fun m!8290744 () Bool)

(assert (=> bs!1968460 m!8290744))

(assert (=> bs!1968460 m!8290744))

(declare-fun m!8290746 () Bool)

(assert (=> bs!1968460 m!8290746))

(assert (=> bs!1968460 m!8290740))

(declare-fun m!8290748 () Bool)

(assert (=> bs!1968460 m!8290748))

(assert (=> b!7915982 d!2361730))

(declare-fun b!7916331 () Bool)

(declare-fun e!4672838 () List!74544)

(assert (=> b!7916331 (= e!4672838 (++!18238 (list!19367 (left!56831 (right!57161 lt!2690275))) (list!19367 (right!57161 (right!57161 lt!2690275)))))))

(declare-fun b!7916329 () Bool)

(declare-fun e!4672837 () List!74544)

(assert (=> b!7916329 (= e!4672837 e!4672838)))

(declare-fun c!1452612 () Bool)

(assert (=> b!7916329 (= c!1452612 ((_ is Leaf!30192) (right!57161 lt!2690275)))))

(declare-fun b!7916328 () Bool)

(assert (=> b!7916328 (= e!4672837 Nil!74420)))

(declare-fun d!2361732 () Bool)

(declare-fun c!1452611 () Bool)

(assert (=> d!2361732 (= c!1452611 ((_ is Empty!15874) (right!57161 lt!2690275)))))

(assert (=> d!2361732 (= (list!19367 (right!57161 lt!2690275)) e!4672837)))

(declare-fun b!7916330 () Bool)

(assert (=> b!7916330 (= e!4672838 (list!19369 (xs!19256 (right!57161 lt!2690275))))))

(assert (= (and d!2361732 c!1452611) b!7916328))

(assert (= (and d!2361732 (not c!1452611)) b!7916329))

(assert (= (and b!7916329 c!1452612) b!7916330))

(assert (= (and b!7916329 (not c!1452612)) b!7916331))

(declare-fun m!8290750 () Bool)

(assert (=> b!7916331 m!8290750))

(declare-fun m!8290752 () Bool)

(assert (=> b!7916331 m!8290752))

(assert (=> b!7916331 m!8290750))

(assert (=> b!7916331 m!8290752))

(declare-fun m!8290754 () Bool)

(assert (=> b!7916331 m!8290754))

(declare-fun m!8290756 () Bool)

(assert (=> b!7916330 m!8290756))

(assert (=> b!7915982 d!2361732))

(declare-fun b!7916333 () Bool)

(declare-fun e!4672840 () List!74544)

(assert (=> b!7916333 (= e!4672840 (Cons!74420 (h!80868 call!734531) (++!18238 (t!390053 call!734531) lt!2690272)))))

(declare-fun b!7916334 () Bool)

(declare-fun res!3141948 () Bool)

(declare-fun e!4672839 () Bool)

(assert (=> b!7916334 (=> (not res!3141948) (not e!4672839))))

(declare-fun lt!2690328 () List!74544)

(assert (=> b!7916334 (= res!3141948 (= (size!43197 lt!2690328) (+ (size!43197 call!734531) (size!43197 lt!2690272))))))

(declare-fun b!7916335 () Bool)

(assert (=> b!7916335 (= e!4672839 (or (not (= lt!2690272 Nil!74420)) (= lt!2690328 call!734531)))))

(declare-fun d!2361734 () Bool)

(assert (=> d!2361734 e!4672839))

(declare-fun res!3141949 () Bool)

(assert (=> d!2361734 (=> (not res!3141949) (not e!4672839))))

(assert (=> d!2361734 (= res!3141949 (= (content!15764 lt!2690328) ((_ map or) (content!15764 call!734531) (content!15764 lt!2690272))))))

(assert (=> d!2361734 (= lt!2690328 e!4672840)))

(declare-fun c!1452613 () Bool)

(assert (=> d!2361734 (= c!1452613 ((_ is Nil!74420) call!734531))))

(assert (=> d!2361734 (= (++!18238 call!734531 lt!2690272) lt!2690328)))

(declare-fun b!7916332 () Bool)

(assert (=> b!7916332 (= e!4672840 lt!2690272)))

(assert (= (and d!2361734 c!1452613) b!7916332))

(assert (= (and d!2361734 (not c!1452613)) b!7916333))

(assert (= (and d!2361734 res!3141949) b!7916334))

(assert (= (and b!7916334 res!3141948) b!7916335))

(declare-fun m!8290758 () Bool)

(assert (=> b!7916333 m!8290758))

(declare-fun m!8290760 () Bool)

(assert (=> b!7916334 m!8290760))

(declare-fun m!8290762 () Bool)

(assert (=> b!7916334 m!8290762))

(declare-fun m!8290764 () Bool)

(assert (=> b!7916334 m!8290764))

(declare-fun m!8290766 () Bool)

(assert (=> d!2361734 m!8290766))

(declare-fun m!8290768 () Bool)

(assert (=> d!2361734 m!8290768))

(declare-fun m!8290770 () Bool)

(assert (=> d!2361734 m!8290770))

(assert (=> b!7915982 d!2361734))

(declare-fun b!7916337 () Bool)

(declare-fun e!4672842 () List!74544)

(assert (=> b!7916337 (= e!4672842 (Cons!74420 (h!80868 lt!2690270) (++!18238 (t!390053 lt!2690270) call!734535)))))

(declare-fun b!7916338 () Bool)

(declare-fun res!3141950 () Bool)

(declare-fun e!4672841 () Bool)

(assert (=> b!7916338 (=> (not res!3141950) (not e!4672841))))

(declare-fun lt!2690330 () List!74544)

(assert (=> b!7916338 (= res!3141950 (= (size!43197 lt!2690330) (+ (size!43197 lt!2690270) (size!43197 call!734535))))))

(declare-fun b!7916339 () Bool)

(assert (=> b!7916339 (= e!4672841 (or (not (= call!734535 Nil!74420)) (= lt!2690330 lt!2690270)))))

(declare-fun d!2361736 () Bool)

(assert (=> d!2361736 e!4672841))

(declare-fun res!3141951 () Bool)

(assert (=> d!2361736 (=> (not res!3141951) (not e!4672841))))

(assert (=> d!2361736 (= res!3141951 (= (content!15764 lt!2690330) ((_ map or) (content!15764 lt!2690270) (content!15764 call!734535))))))

(assert (=> d!2361736 (= lt!2690330 e!4672842)))

(declare-fun c!1452614 () Bool)

(assert (=> d!2361736 (= c!1452614 ((_ is Nil!74420) lt!2690270))))

(assert (=> d!2361736 (= (++!18238 lt!2690270 call!734535) lt!2690330)))

(declare-fun b!7916336 () Bool)

(assert (=> b!7916336 (= e!4672842 call!734535)))

(assert (= (and d!2361736 c!1452614) b!7916336))

(assert (= (and d!2361736 (not c!1452614)) b!7916337))

(assert (= (and d!2361736 res!3141951) b!7916338))

(assert (= (and b!7916338 res!3141950) b!7916339))

(declare-fun m!8290774 () Bool)

(assert (=> b!7916337 m!8290774))

(declare-fun m!8290776 () Bool)

(assert (=> b!7916338 m!8290776))

(declare-fun m!8290778 () Bool)

(assert (=> b!7916338 m!8290778))

(declare-fun m!8290782 () Bool)

(assert (=> b!7916338 m!8290782))

(declare-fun m!8290784 () Bool)

(assert (=> d!2361736 m!8290784))

(declare-fun m!8290786 () Bool)

(assert (=> d!2361736 m!8290786))

(declare-fun m!8290788 () Bool)

(assert (=> d!2361736 m!8290788))

(assert (=> b!7915982 d!2361736))

(declare-fun d!2361740 () Bool)

(assert (=> d!2361740 (= (height!2190 lt!2690275) (ite ((_ is Empty!15874) lt!2690275) 0 (ite ((_ is Leaf!30192) lt!2690275) 1 (cheight!16085 lt!2690275))))))

(assert (=> b!7915984 d!2361740))

(assert (=> b!7915984 d!2361632))

(declare-fun d!2361742 () Bool)

(declare-fun e!4672846 () Bool)

(assert (=> d!2361742 e!4672846))

(declare-fun res!3141954 () Bool)

(assert (=> d!2361742 (=> (not res!3141954) (not e!4672846))))

(declare-fun lt!2690347 () Conc!15874)

(assert (=> d!2361742 (= res!3141954 (isBalanced!4500 lt!2690347))))

(declare-fun e!4672843 () Conc!15874)

(assert (=> d!2361742 (= lt!2690347 e!4672843)))

(declare-fun c!1452617 () Bool)

(assert (=> d!2361742 (= c!1452617 ((_ is Empty!15874) (right!57161 c!5365)))))

(assert (=> d!2361742 (isBalanced!4500 (right!57161 c!5365))))

(assert (=> d!2361742 (= (append!1120 (right!57161 c!5365) (h!80868 ll!14)) lt!2690347)))

(declare-fun bm!734540 () Bool)

(declare-fun call!734548 () IArray!31809)

(assert (=> bm!734540 (= call!734548 (fill!253 1 (h!80868 ll!14)))))

(declare-fun call!734549 () List!74544)

(declare-fun c!1452618 () Bool)

(declare-fun bm!734541 () Bool)

(declare-fun lt!2690334 () List!74544)

(declare-fun lt!2690349 () List!74544)

(declare-fun lt!2690345 () List!74544)

(declare-fun lt!2690348 () List!74544)

(assert (=> bm!734541 (= call!734549 (++!18238 (ite c!1452618 lt!2690348 lt!2690334) (ite c!1452618 lt!2690349 lt!2690345)))))

(declare-fun b!7916340 () Bool)

(declare-fun e!4672848 () Conc!15874)

(declare-fun call!734554 () Conc!15874)

(declare-fun lt!2690339 () Conc!15874)

(assert (=> b!7916340 (= e!4672848 (<>!412 call!734554 (right!57161 lt!2690339)))))

(declare-fun lt!2690344 () List!74544)

(declare-fun call!734545 () List!74544)

(assert (=> b!7916340 (= lt!2690344 call!734545)))

(declare-fun lt!2690333 () List!74544)

(assert (=> b!7916340 (= lt!2690333 (list!19367 (left!56831 lt!2690339)))))

(declare-fun lt!2690342 () List!74544)

(assert (=> b!7916340 (= lt!2690342 (list!19367 (right!57161 lt!2690339)))))

(declare-fun lt!2690343 () Unit!169541)

(assert (=> b!7916340 (= lt!2690343 (lemmaConcatAssociativity!3144 lt!2690344 lt!2690333 lt!2690342))))

(declare-fun call!734547 () List!74544)

(declare-fun call!734552 () List!74544)

(assert (=> b!7916340 (= (++!18238 call!734552 lt!2690342) (++!18238 lt!2690344 call!734547))))

(declare-fun lt!2690337 () Unit!169541)

(assert (=> b!7916340 (= lt!2690337 lt!2690343)))

(assert (=> b!7916340 (= lt!2690334 call!734545)))

(declare-fun call!734550 () List!74544)

(assert (=> b!7916340 (= lt!2690345 call!734550)))

(declare-fun lt!2690336 () List!74544)

(assert (=> b!7916340 (= lt!2690336 (Cons!74420 (h!80868 ll!14) Nil!74420))))

(declare-fun lt!2690340 () Unit!169541)

(declare-fun call!734546 () Unit!169541)

(assert (=> b!7916340 (= lt!2690340 call!734546)))

(declare-fun call!734553 () List!74544)

(assert (=> b!7916340 (= (++!18238 call!734549 lt!2690336) (++!18238 lt!2690334 call!734553))))

(declare-fun lt!2690341 () Unit!169541)

(assert (=> b!7916340 (= lt!2690341 lt!2690340)))

(declare-fun b!7916341 () Bool)

(declare-fun res!3141952 () Bool)

(assert (=> b!7916341 (=> (not res!3141952) (not e!4672846))))

(assert (=> b!7916341 (= res!3141952 (<= (height!2190 lt!2690347) (+ (height!2190 (right!57161 c!5365)) 1)))))

(declare-fun b!7916342 () Bool)

(assert (=> b!7916342 (= c!1452618 (<= (height!2190 lt!2690339) (+ (height!2190 (left!56831 (right!57161 c!5365))) 1)))))

(assert (=> b!7916342 (= lt!2690339 (append!1120 (right!57161 (right!57161 c!5365)) (h!80868 ll!14)))))

(declare-fun e!4672847 () Conc!15874)

(assert (=> b!7916342 (= e!4672847 e!4672848)))

(declare-fun b!7916343 () Bool)

(declare-fun e!4672845 () Conc!15874)

(assert (=> b!7916343 (= e!4672845 (Leaf!30192 call!734548 1))))

(declare-fun b!7916344 () Bool)

(declare-fun res!3141953 () Bool)

(assert (=> b!7916344 (=> (not res!3141953) (not e!4672846))))

(assert (=> b!7916344 (= res!3141953 (<= (height!2190 (right!57161 c!5365)) (height!2190 lt!2690347)))))

(declare-fun b!7916345 () Bool)

(declare-fun e!4672844 () Conc!15874)

(assert (=> b!7916345 (= e!4672844 (Leaf!30192 (append!1122 (xs!19256 (right!57161 c!5365)) (h!80868 ll!14)) (+ (csize!31979 (right!57161 c!5365)) 1)))))

(declare-fun lt!2690338 () List!74544)

(assert (=> b!7916345 (= lt!2690338 ($colon+!297 (list!19369 (xs!19256 (right!57161 c!5365))) (h!80868 ll!14)))))

(declare-fun b!7916346 () Bool)

(assert (=> b!7916346 (= e!4672848 call!734554)))

(assert (=> b!7916346 (= lt!2690348 call!734545)))

(assert (=> b!7916346 (= lt!2690349 call!734550)))

(declare-fun lt!2690335 () List!74544)

(assert (=> b!7916346 (= lt!2690335 (Cons!74420 (h!80868 ll!14) Nil!74420))))

(declare-fun lt!2690332 () Unit!169541)

(assert (=> b!7916346 (= lt!2690332 call!734546)))

(assert (=> b!7916346 (= call!734553 call!734552)))

(declare-fun lt!2690346 () Unit!169541)

(assert (=> b!7916346 (= lt!2690346 lt!2690332)))

(declare-fun bm!734542 () Bool)

(declare-fun c!1452615 () Bool)

(declare-fun c!1452619 () Bool)

(assert (=> bm!734542 (= c!1452615 c!1452619)))

(declare-fun call!734551 () Conc!15874)

(assert (=> bm!734542 (= call!734551 (<>!412 (ite c!1452619 (left!56831 (right!57161 c!5365)) (right!57161 c!5365)) e!4672845))))

(declare-fun bm!734543 () Bool)

(assert (=> bm!734543 (= call!734553 (++!18238 (ite c!1452618 call!734549 lt!2690345) (ite c!1452618 lt!2690335 lt!2690336)))))

(declare-fun b!7916347 () Bool)

(assert (=> b!7916347 (= e!4672844 call!734551)))

(declare-fun b!7916348 () Bool)

(assert (=> b!7916348 (= e!4672845 (ite c!1452618 lt!2690339 (left!56831 lt!2690339)))))

(declare-fun bm!734544 () Bool)

(assert (=> bm!734544 (= call!734550 (list!19367 (right!57161 (right!57161 c!5365))))))

(declare-fun b!7916349 () Bool)

(assert (=> b!7916349 (= e!4672843 e!4672847)))

(assert (=> b!7916349 (= c!1452619 ((_ is Node!15874) (right!57161 c!5365)))))

(declare-fun b!7916350 () Bool)

(assert (=> b!7916350 (= e!4672843 (Leaf!30192 call!734548 1))))

(declare-fun b!7916351 () Bool)

(assert (=> b!7916351 (= e!4672846 (= (list!19367 lt!2690347) ($colon+!297 (list!19367 (right!57161 c!5365)) (h!80868 ll!14))))))

(declare-fun bm!734545 () Bool)

(assert (=> bm!734545 (= call!734546 (lemmaConcatAssociativity!3144 (ite c!1452618 lt!2690348 lt!2690334) (ite c!1452618 lt!2690349 lt!2690345) (ite c!1452618 lt!2690335 lt!2690336)))))

(declare-fun b!7916352 () Bool)

(declare-fun c!1452616 () Bool)

(assert (=> b!7916352 (= c!1452616 (< (csize!31979 (right!57161 c!5365)) 512))))

(assert (=> b!7916352 (= e!4672847 e!4672844)))

(declare-fun bm!734546 () Bool)

(assert (=> bm!734546 (= call!734552 (++!18238 (ite c!1452618 lt!2690348 lt!2690344) (ite c!1452618 call!734547 lt!2690333)))))

(declare-fun bm!734547 () Bool)

(assert (=> bm!734547 (= call!734547 (++!18238 (ite c!1452618 lt!2690349 lt!2690333) (ite c!1452618 lt!2690335 lt!2690342)))))

(declare-fun bm!734548 () Bool)

(assert (=> bm!734548 (= call!734554 call!734551)))

(declare-fun bm!734549 () Bool)

(assert (=> bm!734549 (= call!734545 (list!19367 (left!56831 (right!57161 c!5365))))))

(assert (= (and d!2361742 c!1452617) b!7916350))

(assert (= (and d!2361742 (not c!1452617)) b!7916349))

(assert (= (and b!7916349 c!1452619) b!7916342))

(assert (= (and b!7916349 (not c!1452619)) b!7916352))

(assert (= (and b!7916342 c!1452618) b!7916346))

(assert (= (and b!7916342 (not c!1452618)) b!7916340))

(assert (= (or b!7916346 b!7916340) bm!734545))

(assert (= (or b!7916346 b!7916340) bm!734544))

(assert (= (or b!7916346 b!7916340) bm!734548))

(assert (= (or b!7916346 b!7916340) bm!734541))

(assert (= (or b!7916346 b!7916340) bm!734547))

(assert (= (or b!7916346 b!7916340) bm!734549))

(assert (= (or b!7916346 b!7916340) bm!734543))

(assert (= (or b!7916346 b!7916340) bm!734546))

(assert (= (and b!7916352 c!1452616) b!7916345))

(assert (= (and b!7916352 (not c!1452616)) b!7916347))

(assert (= (or bm!734548 b!7916347) bm!734542))

(assert (= (and bm!734542 c!1452615) b!7916348))

(assert (= (and bm!734542 (not c!1452615)) b!7916343))

(assert (= (or b!7916350 b!7916343) bm!734540))

(assert (= (and d!2361742 res!3141954) b!7916344))

(assert (= (and b!7916344 res!3141953) b!7916341))

(assert (= (and b!7916341 res!3141952) b!7916351))

(declare-fun m!8290806 () Bool)

(assert (=> bm!734546 m!8290806))

(declare-fun m!8290808 () Bool)

(assert (=> bm!734542 m!8290808))

(assert (=> bm!734540 m!8290208))

(assert (=> bm!734544 m!8290456))

(declare-fun m!8290810 () Bool)

(assert (=> b!7916345 m!8290810))

(assert (=> b!7916345 m!8290460))

(assert (=> b!7916345 m!8290460))

(declare-fun m!8290812 () Bool)

(assert (=> b!7916345 m!8290812))

(declare-fun m!8290814 () Bool)

(assert (=> b!7916351 m!8290814))

(assert (=> b!7916351 m!8290050))

(assert (=> b!7916351 m!8290050))

(declare-fun m!8290816 () Bool)

(assert (=> b!7916351 m!8290816))

(declare-fun m!8290818 () Bool)

(assert (=> b!7916342 m!8290818))

(assert (=> b!7916342 m!8290390))

(declare-fun m!8290820 () Bool)

(assert (=> b!7916342 m!8290820))

(declare-fun m!8290822 () Bool)

(assert (=> b!7916341 m!8290822))

(assert (=> b!7916341 m!8290278))

(declare-fun m!8290824 () Bool)

(assert (=> bm!734545 m!8290824))

(declare-fun m!8290826 () Bool)

(assert (=> d!2361742 m!8290826))

(assert (=> d!2361742 m!8290284))

(assert (=> bm!734549 m!8290454))

(assert (=> b!7916344 m!8290278))

(assert (=> b!7916344 m!8290822))

(declare-fun m!8290830 () Bool)

(assert (=> bm!734541 m!8290830))

(declare-fun m!8290832 () Bool)

(assert (=> bm!734543 m!8290832))

(declare-fun m!8290834 () Bool)

(assert (=> b!7916340 m!8290834))

(declare-fun m!8290836 () Bool)

(assert (=> b!7916340 m!8290836))

(declare-fun m!8290838 () Bool)

(assert (=> b!7916340 m!8290838))

(declare-fun m!8290840 () Bool)

(assert (=> b!7916340 m!8290840))

(declare-fun m!8290842 () Bool)

(assert (=> b!7916340 m!8290842))

(declare-fun m!8290844 () Bool)

(assert (=> b!7916340 m!8290844))

(declare-fun m!8290846 () Bool)

(assert (=> b!7916340 m!8290846))

(declare-fun m!8290848 () Bool)

(assert (=> b!7916340 m!8290848))

(declare-fun m!8290850 () Bool)

(assert (=> bm!734547 m!8290850))

(assert (=> b!7915984 d!2361742))

(declare-fun b!7916364 () Bool)

(declare-fun e!4672855 () List!74544)

(assert (=> b!7916364 (= e!4672855 (Cons!74420 (h!80868 (t!390053 lt!2690139)) (++!18238 (t!390053 (t!390053 lt!2690139)) (t!390053 ll!14))))))

(declare-fun b!7916365 () Bool)

(declare-fun res!3141955 () Bool)

(declare-fun e!4672854 () Bool)

(assert (=> b!7916365 (=> (not res!3141955) (not e!4672854))))

(declare-fun lt!2690353 () List!74544)

(assert (=> b!7916365 (= res!3141955 (= (size!43197 lt!2690353) (+ (size!43197 (t!390053 lt!2690139)) (size!43197 (t!390053 ll!14)))))))

(declare-fun b!7916366 () Bool)

(assert (=> b!7916366 (= e!4672854 (or (not (= (t!390053 ll!14) Nil!74420)) (= lt!2690353 (t!390053 lt!2690139))))))

(declare-fun d!2361754 () Bool)

(assert (=> d!2361754 e!4672854))

(declare-fun res!3141956 () Bool)

(assert (=> d!2361754 (=> (not res!3141956) (not e!4672854))))

(assert (=> d!2361754 (= res!3141956 (= (content!15764 lt!2690353) ((_ map or) (content!15764 (t!390053 lt!2690139)) (content!15764 (t!390053 ll!14)))))))

(assert (=> d!2361754 (= lt!2690353 e!4672855)))

(declare-fun c!1452625 () Bool)

(assert (=> d!2361754 (= c!1452625 ((_ is Nil!74420) (t!390053 lt!2690139)))))

(assert (=> d!2361754 (= (++!18238 (t!390053 lt!2690139) (t!390053 ll!14)) lt!2690353)))

(declare-fun b!7916363 () Bool)

(assert (=> b!7916363 (= e!4672855 (t!390053 ll!14))))

(assert (= (and d!2361754 c!1452625) b!7916363))

(assert (= (and d!2361754 (not c!1452625)) b!7916364))

(assert (= (and d!2361754 res!3141956) b!7916365))

(assert (= (and b!7916365 res!3141955) b!7916366))

(declare-fun m!8290854 () Bool)

(assert (=> b!7916364 m!8290854))

(declare-fun m!8290856 () Bool)

(assert (=> b!7916365 m!8290856))

(assert (=> b!7916365 m!8290418))

(assert (=> b!7916365 m!8290078))

(declare-fun m!8290858 () Bool)

(assert (=> d!2361754 m!8290858))

(assert (=> d!2361754 m!8290482))

(assert (=> d!2361754 m!8290084))

(assert (=> b!7915884 d!2361754))

(declare-fun d!2361758 () Bool)

(assert (=> d!2361758 (= (++!18238 (++!18238 (ite c!1452531 lt!2690284 lt!2690270) (ite c!1452531 lt!2690285 lt!2690281)) (ite c!1452531 lt!2690271 lt!2690272)) (++!18238 (ite c!1452531 lt!2690284 lt!2690270) (++!18238 (ite c!1452531 lt!2690285 lt!2690281) (ite c!1452531 lt!2690271 lt!2690272))))))

(declare-fun lt!2690354 () Unit!169541)

(assert (=> d!2361758 (= lt!2690354 (choose!59795 (ite c!1452531 lt!2690284 lt!2690270) (ite c!1452531 lt!2690285 lt!2690281) (ite c!1452531 lt!2690271 lt!2690272)))))

(assert (=> d!2361758 (= (lemmaConcatAssociativity!3144 (ite c!1452531 lt!2690284 lt!2690270) (ite c!1452531 lt!2690285 lt!2690281) (ite c!1452531 lt!2690271 lt!2690272)) lt!2690354)))

(declare-fun bs!1968464 () Bool)

(assert (= bs!1968464 d!2361758))

(declare-fun m!8290860 () Bool)

(assert (=> bs!1968464 m!8290860))

(declare-fun m!8290862 () Bool)

(assert (=> bs!1968464 m!8290862))

(assert (=> bs!1968464 m!8290232))

(assert (=> bs!1968464 m!8290232))

(declare-fun m!8290864 () Bool)

(assert (=> bs!1968464 m!8290864))

(assert (=> bs!1968464 m!8290860))

(declare-fun m!8290866 () Bool)

(assert (=> bs!1968464 m!8290866))

(assert (=> bm!734527 d!2361758))

(declare-fun d!2361760 () Bool)

(declare-fun lt!2690355 () Bool)

(assert (=> d!2361760 (= lt!2690355 (isEmpty!42736 (list!19367 (right!57161 c!5365))))))

(assert (=> d!2361760 (= lt!2690355 (= (size!43198 (right!57161 c!5365)) 0))))

(assert (=> d!2361760 (= (isEmpty!42735 (right!57161 c!5365)) lt!2690355)))

(declare-fun bs!1968465 () Bool)

(assert (= bs!1968465 d!2361760))

(assert (=> bs!1968465 m!8290050))

(assert (=> bs!1968465 m!8290050))

(declare-fun m!8290868 () Bool)

(assert (=> bs!1968465 m!8290868))

(assert (=> bs!1968465 m!8290328))

(assert (=> b!7916054 d!2361760))

(declare-fun b!7916370 () Bool)

(declare-fun e!4672857 () List!74544)

(assert (=> b!7916370 (= e!4672857 (++!18238 (list!19367 (left!56831 lt!2690177)) (list!19367 (right!57161 lt!2690177))))))

(declare-fun b!7916368 () Bool)

(declare-fun e!4672856 () List!74544)

(assert (=> b!7916368 (= e!4672856 e!4672857)))

(declare-fun c!1452627 () Bool)

(assert (=> b!7916368 (= c!1452627 ((_ is Leaf!30192) lt!2690177))))

(declare-fun b!7916367 () Bool)

(assert (=> b!7916367 (= e!4672856 Nil!74420)))

(declare-fun d!2361762 () Bool)

(declare-fun c!1452626 () Bool)

(assert (=> d!2361762 (= c!1452626 ((_ is Empty!15874) lt!2690177))))

(assert (=> d!2361762 (= (list!19367 lt!2690177) e!4672856)))

(declare-fun b!7916369 () Bool)

(assert (=> b!7916369 (= e!4672857 (list!19369 (xs!19256 lt!2690177)))))

(assert (= (and d!2361762 c!1452626) b!7916367))

(assert (= (and d!2361762 (not c!1452626)) b!7916368))

(assert (= (and b!7916368 c!1452627) b!7916369))

(assert (= (and b!7916368 (not c!1452627)) b!7916370))

(declare-fun m!8290870 () Bool)

(assert (=> b!7916370 m!8290870))

(declare-fun m!8290872 () Bool)

(assert (=> b!7916370 m!8290872))

(assert (=> b!7916370 m!8290870))

(assert (=> b!7916370 m!8290872))

(declare-fun m!8290874 () Bool)

(assert (=> b!7916370 m!8290874))

(declare-fun m!8290876 () Bool)

(assert (=> b!7916369 m!8290876))

(assert (=> d!2361578 d!2361762))

(declare-fun b!7916372 () Bool)

(declare-fun e!4672859 () List!74544)

(assert (=> b!7916372 (= e!4672859 (Cons!74420 (h!80868 (list!19367 lt!2690138)) (++!18238 (t!390053 (list!19367 lt!2690138)) (t!390053 ll!14))))))

(declare-fun b!7916373 () Bool)

(declare-fun res!3141957 () Bool)

(declare-fun e!4672858 () Bool)

(assert (=> b!7916373 (=> (not res!3141957) (not e!4672858))))

(declare-fun lt!2690356 () List!74544)

(assert (=> b!7916373 (= res!3141957 (= (size!43197 lt!2690356) (+ (size!43197 (list!19367 lt!2690138)) (size!43197 (t!390053 ll!14)))))))

(declare-fun b!7916374 () Bool)

(assert (=> b!7916374 (= e!4672858 (or (not (= (t!390053 ll!14) Nil!74420)) (= lt!2690356 (list!19367 lt!2690138))))))

(declare-fun d!2361764 () Bool)

(assert (=> d!2361764 e!4672858))

(declare-fun res!3141958 () Bool)

(assert (=> d!2361764 (=> (not res!3141958) (not e!4672858))))

(assert (=> d!2361764 (= res!3141958 (= (content!15764 lt!2690356) ((_ map or) (content!15764 (list!19367 lt!2690138)) (content!15764 (t!390053 ll!14)))))))

(assert (=> d!2361764 (= lt!2690356 e!4672859)))

(declare-fun c!1452628 () Bool)

(assert (=> d!2361764 (= c!1452628 ((_ is Nil!74420) (list!19367 lt!2690138)))))

(assert (=> d!2361764 (= (++!18238 (list!19367 lt!2690138) (t!390053 ll!14)) lt!2690356)))

(declare-fun b!7916371 () Bool)

(assert (=> b!7916371 (= e!4672859 (t!390053 ll!14))))

(assert (= (and d!2361764 c!1452628) b!7916371))

(assert (= (and d!2361764 (not c!1452628)) b!7916372))

(assert (= (and d!2361764 res!3141958) b!7916373))

(assert (= (and b!7916373 res!3141957) b!7916374))

(declare-fun m!8290878 () Bool)

(assert (=> b!7916372 m!8290878))

(declare-fun m!8290880 () Bool)

(assert (=> b!7916373 m!8290880))

(assert (=> b!7916373 m!8289996))

(declare-fun m!8290882 () Bool)

(assert (=> b!7916373 m!8290882))

(assert (=> b!7916373 m!8290078))

(declare-fun m!8290884 () Bool)

(assert (=> d!2361764 m!8290884))

(assert (=> d!2361764 m!8289996))

(declare-fun m!8290886 () Bool)

(assert (=> d!2361764 m!8290886))

(assert (=> d!2361764 m!8290084))

(assert (=> d!2361578 d!2361764))

(assert (=> d!2361578 d!2361576))

(declare-fun b!7916375 () Bool)

(declare-fun e!4672861 () Bool)

(assert (=> b!7916375 (= e!4672861 (not (isEmpty!42735 (right!57161 lt!2690138))))))

(declare-fun d!2361766 () Bool)

(declare-fun res!3141961 () Bool)

(declare-fun e!4672860 () Bool)

(assert (=> d!2361766 (=> res!3141961 e!4672860)))

(assert (=> d!2361766 (= res!3141961 (not ((_ is Node!15874) lt!2690138)))))

(assert (=> d!2361766 (= (isBalanced!4500 lt!2690138) e!4672860)))

(declare-fun b!7916376 () Bool)

(declare-fun res!3141963 () Bool)

(assert (=> b!7916376 (=> (not res!3141963) (not e!4672861))))

(assert (=> b!7916376 (= res!3141963 (isBalanced!4500 (right!57161 lt!2690138)))))

(declare-fun b!7916377 () Bool)

(declare-fun res!3141962 () Bool)

(assert (=> b!7916377 (=> (not res!3141962) (not e!4672861))))

(assert (=> b!7916377 (= res!3141962 (<= (- (height!2190 (left!56831 lt!2690138)) (height!2190 (right!57161 lt!2690138))) 1))))

(declare-fun b!7916378 () Bool)

(assert (=> b!7916378 (= e!4672860 e!4672861)))

(declare-fun res!3141964 () Bool)

(assert (=> b!7916378 (=> (not res!3141964) (not e!4672861))))

(assert (=> b!7916378 (= res!3141964 (<= (- 1) (- (height!2190 (left!56831 lt!2690138)) (height!2190 (right!57161 lt!2690138)))))))

(declare-fun b!7916379 () Bool)

(declare-fun res!3141960 () Bool)

(assert (=> b!7916379 (=> (not res!3141960) (not e!4672861))))

(assert (=> b!7916379 (= res!3141960 (not (isEmpty!42735 (left!56831 lt!2690138))))))

(declare-fun b!7916380 () Bool)

(declare-fun res!3141959 () Bool)

(assert (=> b!7916380 (=> (not res!3141959) (not e!4672861))))

(assert (=> b!7916380 (= res!3141959 (isBalanced!4500 (left!56831 lt!2690138)))))

(assert (= (and d!2361766 (not res!3141961)) b!7916378))

(assert (= (and b!7916378 res!3141964) b!7916377))

(assert (= (and b!7916377 res!3141962) b!7916380))

(assert (= (and b!7916380 res!3141959) b!7916376))

(assert (= (and b!7916376 res!3141963) b!7916379))

(assert (= (and b!7916379 res!3141960) b!7916375))

(declare-fun m!8290888 () Bool)

(assert (=> b!7916378 m!8290888))

(declare-fun m!8290890 () Bool)

(assert (=> b!7916378 m!8290890))

(declare-fun m!8290892 () Bool)

(assert (=> b!7916380 m!8290892))

(declare-fun m!8290894 () Bool)

(assert (=> b!7916375 m!8290894))

(assert (=> b!7916377 m!8290888))

(assert (=> b!7916377 m!8290890))

(declare-fun m!8290896 () Bool)

(assert (=> b!7916376 m!8290896))

(declare-fun m!8290898 () Bool)

(assert (=> b!7916379 m!8290898))

(assert (=> d!2361578 d!2361766))

(declare-fun b!7916381 () Bool)

(declare-fun e!4672863 () Bool)

(assert (=> b!7916381 (= e!4672863 (not (isEmpty!42735 (right!57161 lt!2690283))))))

(declare-fun d!2361768 () Bool)

(declare-fun res!3141967 () Bool)

(declare-fun e!4672862 () Bool)

(assert (=> d!2361768 (=> res!3141967 e!4672862)))

(assert (=> d!2361768 (= res!3141967 (not ((_ is Node!15874) lt!2690283)))))

(assert (=> d!2361768 (= (isBalanced!4500 lt!2690283) e!4672862)))

(declare-fun b!7916382 () Bool)

(declare-fun res!3141969 () Bool)

(assert (=> b!7916382 (=> (not res!3141969) (not e!4672863))))

(assert (=> b!7916382 (= res!3141969 (isBalanced!4500 (right!57161 lt!2690283)))))

(declare-fun b!7916383 () Bool)

(declare-fun res!3141968 () Bool)

(assert (=> b!7916383 (=> (not res!3141968) (not e!4672863))))

(assert (=> b!7916383 (= res!3141968 (<= (- (height!2190 (left!56831 lt!2690283)) (height!2190 (right!57161 lt!2690283))) 1))))

(declare-fun b!7916384 () Bool)

(assert (=> b!7916384 (= e!4672862 e!4672863)))

(declare-fun res!3141970 () Bool)

(assert (=> b!7916384 (=> (not res!3141970) (not e!4672863))))

(assert (=> b!7916384 (= res!3141970 (<= (- 1) (- (height!2190 (left!56831 lt!2690283)) (height!2190 (right!57161 lt!2690283)))))))

(declare-fun b!7916385 () Bool)

(declare-fun res!3141966 () Bool)

(assert (=> b!7916385 (=> (not res!3141966) (not e!4672863))))

(assert (=> b!7916385 (= res!3141966 (not (isEmpty!42735 (left!56831 lt!2690283))))))

(declare-fun b!7916386 () Bool)

(declare-fun res!3141965 () Bool)

(assert (=> b!7916386 (=> (not res!3141965) (not e!4672863))))

(assert (=> b!7916386 (= res!3141965 (isBalanced!4500 (left!56831 lt!2690283)))))

(assert (= (and d!2361768 (not res!3141967)) b!7916384))

(assert (= (and b!7916384 res!3141970) b!7916383))

(assert (= (and b!7916383 res!3141968) b!7916386))

(assert (= (and b!7916386 res!3141965) b!7916382))

(assert (= (and b!7916382 res!3141969) b!7916385))

(assert (= (and b!7916385 res!3141966) b!7916381))

(declare-fun m!8290900 () Bool)

(assert (=> b!7916384 m!8290900))

(declare-fun m!8290902 () Bool)

(assert (=> b!7916384 m!8290902))

(declare-fun m!8290904 () Bool)

(assert (=> b!7916386 m!8290904))

(declare-fun m!8290906 () Bool)

(assert (=> b!7916381 m!8290906))

(assert (=> b!7916383 m!8290900))

(assert (=> b!7916383 m!8290902))

(declare-fun m!8290908 () Bool)

(assert (=> b!7916382 m!8290908))

(declare-fun m!8290910 () Bool)

(assert (=> b!7916385 m!8290910))

(assert (=> d!2361582 d!2361768))

(assert (=> d!2361582 d!2361586))

(declare-fun b!7916388 () Bool)

(declare-fun e!4672865 () List!74544)

(assert (=> b!7916388 (= e!4672865 (Cons!74420 (h!80868 (ite c!1452531 lt!2690284 lt!2690280)) (++!18238 (t!390053 (ite c!1452531 lt!2690284 lt!2690280)) (ite c!1452531 call!734529 lt!2690269))))))

(declare-fun b!7916389 () Bool)

(declare-fun res!3141971 () Bool)

(declare-fun e!4672864 () Bool)

(assert (=> b!7916389 (=> (not res!3141971) (not e!4672864))))

(declare-fun lt!2690359 () List!74544)

(assert (=> b!7916389 (= res!3141971 (= (size!43197 lt!2690359) (+ (size!43197 (ite c!1452531 lt!2690284 lt!2690280)) (size!43197 (ite c!1452531 call!734529 lt!2690269)))))))

(declare-fun b!7916390 () Bool)

(assert (=> b!7916390 (= e!4672864 (or (not (= (ite c!1452531 call!734529 lt!2690269) Nil!74420)) (= lt!2690359 (ite c!1452531 lt!2690284 lt!2690280))))))

(declare-fun d!2361770 () Bool)

(assert (=> d!2361770 e!4672864))

(declare-fun res!3141972 () Bool)

(assert (=> d!2361770 (=> (not res!3141972) (not e!4672864))))

(assert (=> d!2361770 (= res!3141972 (= (content!15764 lt!2690359) ((_ map or) (content!15764 (ite c!1452531 lt!2690284 lt!2690280)) (content!15764 (ite c!1452531 call!734529 lt!2690269)))))))

(assert (=> d!2361770 (= lt!2690359 e!4672865)))

(declare-fun c!1452629 () Bool)

(assert (=> d!2361770 (= c!1452629 ((_ is Nil!74420) (ite c!1452531 lt!2690284 lt!2690280)))))

(assert (=> d!2361770 (= (++!18238 (ite c!1452531 lt!2690284 lt!2690280) (ite c!1452531 call!734529 lt!2690269)) lt!2690359)))

(declare-fun b!7916387 () Bool)

(assert (=> b!7916387 (= e!4672865 (ite c!1452531 call!734529 lt!2690269))))

(assert (= (and d!2361770 c!1452629) b!7916387))

(assert (= (and d!2361770 (not c!1452629)) b!7916388))

(assert (= (and d!2361770 res!3141972) b!7916389))

(assert (= (and b!7916389 res!3141971) b!7916390))

(declare-fun m!8290912 () Bool)

(assert (=> b!7916388 m!8290912))

(declare-fun m!8290914 () Bool)

(assert (=> b!7916389 m!8290914))

(declare-fun m!8290916 () Bool)

(assert (=> b!7916389 m!8290916))

(declare-fun m!8290918 () Bool)

(assert (=> b!7916389 m!8290918))

(declare-fun m!8290920 () Bool)

(assert (=> d!2361770 m!8290920))

(declare-fun m!8290922 () Bool)

(assert (=> d!2361770 m!8290922))

(declare-fun m!8290924 () Bool)

(assert (=> d!2361770 m!8290924))

(assert (=> bm!734528 d!2361770))

(assert (=> b!7916056 d!2361632))

(assert (=> b!7916056 d!2361634))

(declare-fun e!4672867 () List!74544)

(declare-fun b!7916392 () Bool)

(assert (=> b!7916392 (= e!4672867 (Cons!74420 (h!80868 (ite c!1452531 call!734531 lt!2690281)) (++!18238 (t!390053 (ite c!1452531 call!734531 lt!2690281)) (ite c!1452531 lt!2690271 lt!2690272))))))

(declare-fun b!7916393 () Bool)

(declare-fun res!3141973 () Bool)

(declare-fun e!4672866 () Bool)

(assert (=> b!7916393 (=> (not res!3141973) (not e!4672866))))

(declare-fun lt!2690360 () List!74544)

(assert (=> b!7916393 (= res!3141973 (= (size!43197 lt!2690360) (+ (size!43197 (ite c!1452531 call!734531 lt!2690281)) (size!43197 (ite c!1452531 lt!2690271 lt!2690272)))))))

(declare-fun b!7916394 () Bool)

(assert (=> b!7916394 (= e!4672866 (or (not (= (ite c!1452531 lt!2690271 lt!2690272) Nil!74420)) (= lt!2690360 (ite c!1452531 call!734531 lt!2690281))))))

(declare-fun d!2361772 () Bool)

(assert (=> d!2361772 e!4672866))

(declare-fun res!3141974 () Bool)

(assert (=> d!2361772 (=> (not res!3141974) (not e!4672866))))

(assert (=> d!2361772 (= res!3141974 (= (content!15764 lt!2690360) ((_ map or) (content!15764 (ite c!1452531 call!734531 lt!2690281)) (content!15764 (ite c!1452531 lt!2690271 lt!2690272)))))))

(assert (=> d!2361772 (= lt!2690360 e!4672867)))

(declare-fun c!1452630 () Bool)

(assert (=> d!2361772 (= c!1452630 ((_ is Nil!74420) (ite c!1452531 call!734531 lt!2690281)))))

(assert (=> d!2361772 (= (++!18238 (ite c!1452531 call!734531 lt!2690281) (ite c!1452531 lt!2690271 lt!2690272)) lt!2690360)))

(declare-fun b!7916391 () Bool)

(assert (=> b!7916391 (= e!4672867 (ite c!1452531 lt!2690271 lt!2690272))))

(assert (= (and d!2361772 c!1452630) b!7916391))

(assert (= (and d!2361772 (not c!1452630)) b!7916392))

(assert (= (and d!2361772 res!3141974) b!7916393))

(assert (= (and b!7916393 res!3141973) b!7916394))

(declare-fun m!8290926 () Bool)

(assert (=> b!7916392 m!8290926))

(declare-fun m!8290928 () Bool)

(assert (=> b!7916393 m!8290928))

(declare-fun m!8290930 () Bool)

(assert (=> b!7916393 m!8290930))

(declare-fun m!8290932 () Bool)

(assert (=> b!7916393 m!8290932))

(declare-fun m!8290934 () Bool)

(assert (=> d!2361772 m!8290934))

(declare-fun m!8290936 () Bool)

(assert (=> d!2361772 m!8290936))

(declare-fun m!8290938 () Bool)

(assert (=> d!2361772 m!8290938))

(assert (=> bm!734525 d!2361772))

(declare-fun d!2361774 () Bool)

(declare-fun c!1452631 () Bool)

(assert (=> d!2361774 (= c!1452631 ((_ is Node!15874) (left!56831 (right!57161 c!5365))))))

(declare-fun e!4672868 () Bool)

(assert (=> d!2361774 (= (inv!95568 (left!56831 (right!57161 c!5365))) e!4672868)))

(declare-fun b!7916395 () Bool)

(assert (=> b!7916395 (= e!4672868 (inv!95571 (left!56831 (right!57161 c!5365))))))

(declare-fun b!7916396 () Bool)

(declare-fun e!4672869 () Bool)

(assert (=> b!7916396 (= e!4672868 e!4672869)))

(declare-fun res!3141975 () Bool)

(assert (=> b!7916396 (= res!3141975 (not ((_ is Leaf!30192) (left!56831 (right!57161 c!5365)))))))

(assert (=> b!7916396 (=> res!3141975 e!4672869)))

(declare-fun b!7916397 () Bool)

(assert (=> b!7916397 (= e!4672869 (inv!95572 (left!56831 (right!57161 c!5365))))))

(assert (= (and d!2361774 c!1452631) b!7916395))

(assert (= (and d!2361774 (not c!1452631)) b!7916396))

(assert (= (and b!7916396 (not res!3141975)) b!7916397))

(declare-fun m!8290940 () Bool)

(assert (=> b!7916395 m!8290940))

(declare-fun m!8290942 () Bool)

(assert (=> b!7916397 m!8290942))

(assert (=> b!7916097 d!2361774))

(declare-fun d!2361776 () Bool)

(declare-fun c!1452632 () Bool)

(assert (=> d!2361776 (= c!1452632 ((_ is Node!15874) (right!57161 (right!57161 c!5365))))))

(declare-fun e!4672870 () Bool)

(assert (=> d!2361776 (= (inv!95568 (right!57161 (right!57161 c!5365))) e!4672870)))

(declare-fun b!7916398 () Bool)

(assert (=> b!7916398 (= e!4672870 (inv!95571 (right!57161 (right!57161 c!5365))))))

(declare-fun b!7916399 () Bool)

(declare-fun e!4672871 () Bool)

(assert (=> b!7916399 (= e!4672870 e!4672871)))

(declare-fun res!3141976 () Bool)

(assert (=> b!7916399 (= res!3141976 (not ((_ is Leaf!30192) (right!57161 (right!57161 c!5365)))))))

(assert (=> b!7916399 (=> res!3141976 e!4672871)))

(declare-fun b!7916400 () Bool)

(assert (=> b!7916400 (= e!4672871 (inv!95572 (right!57161 (right!57161 c!5365))))))

(assert (= (and d!2361776 c!1452632) b!7916398))

(assert (= (and d!2361776 (not c!1452632)) b!7916399))

(assert (= (and b!7916399 (not res!3141976)) b!7916400))

(declare-fun m!8290944 () Bool)

(assert (=> b!7916398 m!8290944))

(declare-fun m!8290946 () Bool)

(assert (=> b!7916400 m!8290946))

(assert (=> b!7916097 d!2361776))

(declare-fun d!2361778 () Bool)

(declare-fun res!3141977 () Bool)

(declare-fun e!4672872 () Bool)

(assert (=> d!2361778 (=> (not res!3141977) (not e!4672872))))

(assert (=> d!2361778 (= res!3141977 (= (csize!31978 (left!56831 c!5365)) (+ (size!43198 (left!56831 (left!56831 c!5365))) (size!43198 (right!57161 (left!56831 c!5365))))))))

(assert (=> d!2361778 (= (inv!95571 (left!56831 c!5365)) e!4672872)))

(declare-fun b!7916401 () Bool)

(declare-fun res!3141978 () Bool)

(assert (=> b!7916401 (=> (not res!3141978) (not e!4672872))))

(assert (=> b!7916401 (= res!3141978 (and (not (= (left!56831 (left!56831 c!5365)) Empty!15874)) (not (= (right!57161 (left!56831 c!5365)) Empty!15874))))))

(declare-fun b!7916402 () Bool)

(declare-fun res!3141979 () Bool)

(assert (=> b!7916402 (=> (not res!3141979) (not e!4672872))))

(assert (=> b!7916402 (= res!3141979 (= (cheight!16085 (left!56831 c!5365)) (+ (max!0 (height!2190 (left!56831 (left!56831 c!5365))) (height!2190 (right!57161 (left!56831 c!5365)))) 1)))))

(declare-fun b!7916403 () Bool)

(assert (=> b!7916403 (= e!4672872 (<= 0 (cheight!16085 (left!56831 c!5365))))))

(assert (= (and d!2361778 res!3141977) b!7916401))

(assert (= (and b!7916401 res!3141978) b!7916402))

(assert (= (and b!7916402 res!3141979) b!7916403))

(declare-fun m!8290948 () Bool)

(assert (=> d!2361778 m!8290948))

(declare-fun m!8290950 () Bool)

(assert (=> d!2361778 m!8290950))

(assert (=> b!7916402 m!8290354))

(assert (=> b!7916402 m!8290356))

(assert (=> b!7916402 m!8290354))

(assert (=> b!7916402 m!8290356))

(declare-fun m!8290952 () Bool)

(assert (=> b!7916402 m!8290952))

(assert (=> b!7916075 d!2361778))

(declare-fun d!2361780 () Bool)

(declare-fun res!3141980 () Bool)

(declare-fun e!4672873 () Bool)

(assert (=> d!2361780 (=> (not res!3141980) (not e!4672873))))

(assert (=> d!2361780 (= res!3141980 (<= (size!43197 (list!19369 (xs!19256 (left!56831 c!5365)))) 512))))

(assert (=> d!2361780 (= (inv!95572 (left!56831 c!5365)) e!4672873)))

(declare-fun b!7916404 () Bool)

(declare-fun res!3141981 () Bool)

(assert (=> b!7916404 (=> (not res!3141981) (not e!4672873))))

(assert (=> b!7916404 (= res!3141981 (= (csize!31979 (left!56831 c!5365)) (size!43197 (list!19369 (xs!19256 (left!56831 c!5365))))))))

(declare-fun b!7916405 () Bool)

(assert (=> b!7916405 (= e!4672873 (and (> (csize!31979 (left!56831 c!5365)) 0) (<= (csize!31979 (left!56831 c!5365)) 512)))))

(assert (= (and d!2361780 res!3141980) b!7916404))

(assert (= (and b!7916404 res!3141981) b!7916405))

(assert (=> d!2361780 m!8290352))

(assert (=> d!2361780 m!8290352))

(declare-fun m!8290958 () Bool)

(assert (=> d!2361780 m!8290958))

(assert (=> b!7916404 m!8290352))

(assert (=> b!7916404 m!8290352))

(assert (=> b!7916404 m!8290958))

(assert (=> b!7916077 d!2361780))

(declare-fun d!2361782 () Bool)

(declare-fun e!4672877 () Bool)

(assert (=> d!2361782 e!4672877))

(declare-fun res!3141984 () Bool)

(assert (=> d!2361782 (=> (not res!3141984) (not e!4672877))))

(declare-fun lt!2690377 () Conc!15874)

(assert (=> d!2361782 (= res!3141984 (isBalanced!4500 lt!2690377))))

(declare-fun e!4672874 () Conc!15874)

(assert (=> d!2361782 (= lt!2690377 e!4672874)))

(declare-fun c!1452635 () Bool)

(assert (=> d!2361782 (= c!1452635 ((_ is Empty!15874) lt!2690138))))

(assert (=> d!2361782 (isBalanced!4500 lt!2690138)))

(assert (=> d!2361782 (= (append!1120 lt!2690138 (h!80868 (t!390053 ll!14))) lt!2690377)))

(declare-fun bm!734550 () Bool)

(declare-fun call!734558 () IArray!31809)

(assert (=> bm!734550 (= call!734558 (fill!253 1 (h!80868 (t!390053 ll!14))))))

(declare-fun call!734559 () List!74544)

(declare-fun bm!734551 () Bool)

(declare-fun lt!2690375 () List!74544)

(declare-fun lt!2690379 () List!74544)

(declare-fun lt!2690378 () List!74544)

(declare-fun lt!2690364 () List!74544)

(declare-fun c!1452636 () Bool)

(assert (=> bm!734551 (= call!734559 (++!18238 (ite c!1452636 lt!2690378 lt!2690364) (ite c!1452636 lt!2690379 lt!2690375)))))

(declare-fun b!7916406 () Bool)

(declare-fun e!4672879 () Conc!15874)

(declare-fun call!734564 () Conc!15874)

(declare-fun lt!2690369 () Conc!15874)

(assert (=> b!7916406 (= e!4672879 (<>!412 call!734564 (right!57161 lt!2690369)))))

(declare-fun lt!2690374 () List!74544)

(declare-fun call!734555 () List!74544)

(assert (=> b!7916406 (= lt!2690374 call!734555)))

(declare-fun lt!2690363 () List!74544)

(assert (=> b!7916406 (= lt!2690363 (list!19367 (left!56831 lt!2690369)))))

(declare-fun lt!2690372 () List!74544)

(assert (=> b!7916406 (= lt!2690372 (list!19367 (right!57161 lt!2690369)))))

(declare-fun lt!2690373 () Unit!169541)

(assert (=> b!7916406 (= lt!2690373 (lemmaConcatAssociativity!3144 lt!2690374 lt!2690363 lt!2690372))))

(declare-fun call!734557 () List!74544)

(declare-fun call!734562 () List!74544)

(assert (=> b!7916406 (= (++!18238 call!734562 lt!2690372) (++!18238 lt!2690374 call!734557))))

(declare-fun lt!2690367 () Unit!169541)

(assert (=> b!7916406 (= lt!2690367 lt!2690373)))

(assert (=> b!7916406 (= lt!2690364 call!734555)))

(declare-fun call!734560 () List!74544)

(assert (=> b!7916406 (= lt!2690375 call!734560)))

(declare-fun lt!2690366 () List!74544)

(assert (=> b!7916406 (= lt!2690366 (Cons!74420 (h!80868 (t!390053 ll!14)) Nil!74420))))

(declare-fun lt!2690370 () Unit!169541)

(declare-fun call!734556 () Unit!169541)

(assert (=> b!7916406 (= lt!2690370 call!734556)))

(declare-fun call!734563 () List!74544)

(assert (=> b!7916406 (= (++!18238 call!734559 lt!2690366) (++!18238 lt!2690364 call!734563))))

(declare-fun lt!2690371 () Unit!169541)

(assert (=> b!7916406 (= lt!2690371 lt!2690370)))

(declare-fun b!7916407 () Bool)

(declare-fun res!3141982 () Bool)

(assert (=> b!7916407 (=> (not res!3141982) (not e!4672877))))

(assert (=> b!7916407 (= res!3141982 (<= (height!2190 lt!2690377) (+ (height!2190 lt!2690138) 1)))))

(declare-fun b!7916408 () Bool)

(assert (=> b!7916408 (= c!1452636 (<= (height!2190 lt!2690369) (+ (height!2190 (left!56831 lt!2690138)) 1)))))

(assert (=> b!7916408 (= lt!2690369 (append!1120 (right!57161 lt!2690138) (h!80868 (t!390053 ll!14))))))

(declare-fun e!4672878 () Conc!15874)

(assert (=> b!7916408 (= e!4672878 e!4672879)))

(declare-fun b!7916409 () Bool)

(declare-fun e!4672876 () Conc!15874)

(assert (=> b!7916409 (= e!4672876 (Leaf!30192 call!734558 1))))

(declare-fun b!7916410 () Bool)

(declare-fun res!3141983 () Bool)

(assert (=> b!7916410 (=> (not res!3141983) (not e!4672877))))

(assert (=> b!7916410 (= res!3141983 (<= (height!2190 lt!2690138) (height!2190 lt!2690377)))))

(declare-fun b!7916411 () Bool)

(declare-fun e!4672875 () Conc!15874)

(assert (=> b!7916411 (= e!4672875 (Leaf!30192 (append!1122 (xs!19256 lt!2690138) (h!80868 (t!390053 ll!14))) (+ (csize!31979 lt!2690138) 1)))))

(declare-fun lt!2690368 () List!74544)

(assert (=> b!7916411 (= lt!2690368 ($colon+!297 (list!19369 (xs!19256 lt!2690138)) (h!80868 (t!390053 ll!14))))))

(declare-fun b!7916412 () Bool)

(assert (=> b!7916412 (= e!4672879 call!734564)))

(assert (=> b!7916412 (= lt!2690378 call!734555)))

(assert (=> b!7916412 (= lt!2690379 call!734560)))

(declare-fun lt!2690365 () List!74544)

(assert (=> b!7916412 (= lt!2690365 (Cons!74420 (h!80868 (t!390053 ll!14)) Nil!74420))))

(declare-fun lt!2690362 () Unit!169541)

(assert (=> b!7916412 (= lt!2690362 call!734556)))

(assert (=> b!7916412 (= call!734563 call!734562)))

(declare-fun lt!2690376 () Unit!169541)

(assert (=> b!7916412 (= lt!2690376 lt!2690362)))

(declare-fun bm!734552 () Bool)

(declare-fun c!1452633 () Bool)

(declare-fun c!1452637 () Bool)

(assert (=> bm!734552 (= c!1452633 c!1452637)))

(declare-fun call!734561 () Conc!15874)

(assert (=> bm!734552 (= call!734561 (<>!412 (ite c!1452637 (left!56831 lt!2690138) lt!2690138) e!4672876))))

(declare-fun bm!734553 () Bool)

(assert (=> bm!734553 (= call!734563 (++!18238 (ite c!1452636 call!734559 lt!2690375) (ite c!1452636 lt!2690365 lt!2690366)))))

(declare-fun b!7916413 () Bool)

(assert (=> b!7916413 (= e!4672875 call!734561)))

(declare-fun b!7916414 () Bool)

(assert (=> b!7916414 (= e!4672876 (ite c!1452636 lt!2690369 (left!56831 lt!2690369)))))

(declare-fun bm!734554 () Bool)

(assert (=> bm!734554 (= call!734560 (list!19367 (right!57161 lt!2690138)))))

(declare-fun b!7916415 () Bool)

(assert (=> b!7916415 (= e!4672874 e!4672878)))

(assert (=> b!7916415 (= c!1452637 ((_ is Node!15874) lt!2690138))))

(declare-fun b!7916416 () Bool)

(assert (=> b!7916416 (= e!4672874 (Leaf!30192 call!734558 1))))

(declare-fun b!7916417 () Bool)

(assert (=> b!7916417 (= e!4672877 (= (list!19367 lt!2690377) ($colon+!297 (list!19367 lt!2690138) (h!80868 (t!390053 ll!14)))))))

(declare-fun bm!734555 () Bool)

(assert (=> bm!734555 (= call!734556 (lemmaConcatAssociativity!3144 (ite c!1452636 lt!2690378 lt!2690364) (ite c!1452636 lt!2690379 lt!2690375) (ite c!1452636 lt!2690365 lt!2690366)))))

(declare-fun b!7916418 () Bool)

(declare-fun c!1452634 () Bool)

(assert (=> b!7916418 (= c!1452634 (< (csize!31979 lt!2690138) 512))))

(assert (=> b!7916418 (= e!4672878 e!4672875)))

(declare-fun bm!734556 () Bool)

(assert (=> bm!734556 (= call!734562 (++!18238 (ite c!1452636 lt!2690378 lt!2690374) (ite c!1452636 call!734557 lt!2690363)))))

(declare-fun bm!734557 () Bool)

(assert (=> bm!734557 (= call!734557 (++!18238 (ite c!1452636 lt!2690379 lt!2690363) (ite c!1452636 lt!2690365 lt!2690372)))))

(declare-fun bm!734558 () Bool)

(assert (=> bm!734558 (= call!734564 call!734561)))

(declare-fun bm!734559 () Bool)

(assert (=> bm!734559 (= call!734555 (list!19367 (left!56831 lt!2690138)))))

(assert (= (and d!2361782 c!1452635) b!7916416))

(assert (= (and d!2361782 (not c!1452635)) b!7916415))

(assert (= (and b!7916415 c!1452637) b!7916408))

(assert (= (and b!7916415 (not c!1452637)) b!7916418))

(assert (= (and b!7916408 c!1452636) b!7916412))

(assert (= (and b!7916408 (not c!1452636)) b!7916406))

(assert (= (or b!7916412 b!7916406) bm!734555))

(assert (= (or b!7916412 b!7916406) bm!734554))

(assert (= (or b!7916412 b!7916406) bm!734558))

(assert (= (or b!7916412 b!7916406) bm!734551))

(assert (= (or b!7916412 b!7916406) bm!734557))

(assert (= (or b!7916412 b!7916406) bm!734559))

(assert (= (or b!7916412 b!7916406) bm!734553))

(assert (= (or b!7916412 b!7916406) bm!734556))

(assert (= (and b!7916418 c!1452634) b!7916411))

(assert (= (and b!7916418 (not c!1452634)) b!7916413))

(assert (= (or bm!734558 b!7916413) bm!734552))

(assert (= (and bm!734552 c!1452633) b!7916414))

(assert (= (and bm!734552 (not c!1452633)) b!7916409))

(assert (= (or b!7916416 b!7916409) bm!734550))

(assert (= (and d!2361782 res!3141984) b!7916410))

(assert (= (and b!7916410 res!3141983) b!7916407))

(assert (= (and b!7916407 res!3141982) b!7916417))

(declare-fun m!8290968 () Bool)

(assert (=> bm!734556 m!8290968))

(declare-fun m!8290970 () Bool)

(assert (=> bm!734552 m!8290970))

(declare-fun m!8290972 () Bool)

(assert (=> bm!734550 m!8290972))

(assert (=> bm!734554 m!8290104))

(declare-fun m!8290974 () Bool)

(assert (=> b!7916411 m!8290974))

(assert (=> b!7916411 m!8290108))

(assert (=> b!7916411 m!8290108))

(declare-fun m!8290976 () Bool)

(assert (=> b!7916411 m!8290976))

(declare-fun m!8290978 () Bool)

(assert (=> b!7916417 m!8290978))

(assert (=> b!7916417 m!8289996))

(assert (=> b!7916417 m!8289996))

(declare-fun m!8290980 () Bool)

(assert (=> b!7916417 m!8290980))

(declare-fun m!8290982 () Bool)

(assert (=> b!7916408 m!8290982))

(assert (=> b!7916408 m!8290888))

(declare-fun m!8290984 () Bool)

(assert (=> b!7916408 m!8290984))

(declare-fun m!8290986 () Bool)

(assert (=> b!7916407 m!8290986))

(declare-fun m!8290988 () Bool)

(assert (=> b!7916407 m!8290988))

(declare-fun m!8290990 () Bool)

(assert (=> bm!734555 m!8290990))

(declare-fun m!8290992 () Bool)

(assert (=> d!2361782 m!8290992))

(assert (=> d!2361782 m!8290132))

(assert (=> bm!734559 m!8290102))

(assert (=> b!7916410 m!8290988))

(assert (=> b!7916410 m!8290986))

(declare-fun m!8290994 () Bool)

(assert (=> bm!734551 m!8290994))

(declare-fun m!8290996 () Bool)

(assert (=> bm!734553 m!8290996))

(declare-fun m!8290998 () Bool)

(assert (=> b!7916406 m!8290998))

(declare-fun m!8291000 () Bool)

(assert (=> b!7916406 m!8291000))

(declare-fun m!8291002 () Bool)

(assert (=> b!7916406 m!8291002))

(declare-fun m!8291004 () Bool)

(assert (=> b!7916406 m!8291004))

(declare-fun m!8291006 () Bool)

(assert (=> b!7916406 m!8291006))

(declare-fun m!8291008 () Bool)

(assert (=> b!7916406 m!8291008))

(declare-fun m!8291010 () Bool)

(assert (=> b!7916406 m!8291010))

(declare-fun m!8291012 () Bool)

(assert (=> b!7916406 m!8291012))

(declare-fun m!8291014 () Bool)

(assert (=> bm!734557 m!8291014))

(assert (=> b!7915915 d!2361782))

(declare-fun b!7916420 () Bool)

(declare-fun e!4672881 () List!74544)

(assert (=> b!7916420 (= e!4672881 (Cons!74420 (h!80868 lt!2690175) (++!18238 (t!390053 lt!2690175) lt!2690176)))))

(declare-fun b!7916421 () Bool)

(declare-fun res!3141985 () Bool)

(declare-fun e!4672880 () Bool)

(assert (=> b!7916421 (=> (not res!3141985) (not e!4672880))))

(declare-fun lt!2690380 () List!74544)

(assert (=> b!7916421 (= res!3141985 (= (size!43197 lt!2690380) (+ (size!43197 lt!2690175) (size!43197 lt!2690176))))))

(declare-fun b!7916422 () Bool)

(assert (=> b!7916422 (= e!4672880 (or (not (= lt!2690176 Nil!74420)) (= lt!2690380 lt!2690175)))))

(declare-fun d!2361788 () Bool)

(assert (=> d!2361788 e!4672880))

(declare-fun res!3141986 () Bool)

(assert (=> d!2361788 (=> (not res!3141986) (not e!4672880))))

(assert (=> d!2361788 (= res!3141986 (= (content!15764 lt!2690380) ((_ map or) (content!15764 lt!2690175) (content!15764 lt!2690176))))))

(assert (=> d!2361788 (= lt!2690380 e!4672881)))

(declare-fun c!1452638 () Bool)

(assert (=> d!2361788 (= c!1452638 ((_ is Nil!74420) lt!2690175))))

(assert (=> d!2361788 (= (++!18238 lt!2690175 lt!2690176) lt!2690380)))

(declare-fun b!7916419 () Bool)

(assert (=> b!7916419 (= e!4672881 lt!2690176)))

(assert (= (and d!2361788 c!1452638) b!7916419))

(assert (= (and d!2361788 (not c!1452638)) b!7916420))

(assert (= (and d!2361788 res!3141986) b!7916421))

(assert (= (and b!7916421 res!3141985) b!7916422))

(declare-fun m!8291016 () Bool)

(assert (=> b!7916420 m!8291016))

(declare-fun m!8291018 () Bool)

(assert (=> b!7916421 m!8291018))

(declare-fun m!8291020 () Bool)

(assert (=> b!7916421 m!8291020))

(declare-fun m!8291022 () Bool)

(assert (=> b!7916421 m!8291022))

(declare-fun m!8291024 () Bool)

(assert (=> d!2361788 m!8291024))

(declare-fun m!8291026 () Bool)

(assert (=> d!2361788 m!8291026))

(declare-fun m!8291028 () Bool)

(assert (=> d!2361788 m!8291028))

(assert (=> b!7915915 d!2361788))

(declare-fun e!4672883 () List!74544)

(declare-fun b!7916424 () Bool)

(assert (=> b!7916424 (= e!4672883 (Cons!74420 (h!80868 (++!18238 lt!2690175 lt!2690176)) (++!18238 (t!390053 (++!18238 lt!2690175 lt!2690176)) (t!390053 (t!390053 ll!14)))))))

(declare-fun b!7916425 () Bool)

(declare-fun res!3141987 () Bool)

(declare-fun e!4672882 () Bool)

(assert (=> b!7916425 (=> (not res!3141987) (not e!4672882))))

(declare-fun lt!2690381 () List!74544)

(assert (=> b!7916425 (= res!3141987 (= (size!43197 lt!2690381) (+ (size!43197 (++!18238 lt!2690175 lt!2690176)) (size!43197 (t!390053 (t!390053 ll!14))))))))

(declare-fun b!7916426 () Bool)

(assert (=> b!7916426 (= e!4672882 (or (not (= (t!390053 (t!390053 ll!14)) Nil!74420)) (= lt!2690381 (++!18238 lt!2690175 lt!2690176))))))

(declare-fun d!2361790 () Bool)

(assert (=> d!2361790 e!4672882))

(declare-fun res!3141988 () Bool)

(assert (=> d!2361790 (=> (not res!3141988) (not e!4672882))))

(assert (=> d!2361790 (= res!3141988 (= (content!15764 lt!2690381) ((_ map or) (content!15764 (++!18238 lt!2690175 lt!2690176)) (content!15764 (t!390053 (t!390053 ll!14))))))))

(assert (=> d!2361790 (= lt!2690381 e!4672883)))

(declare-fun c!1452639 () Bool)

(assert (=> d!2361790 (= c!1452639 ((_ is Nil!74420) (++!18238 lt!2690175 lt!2690176)))))

(assert (=> d!2361790 (= (++!18238 (++!18238 lt!2690175 lt!2690176) (t!390053 (t!390053 ll!14))) lt!2690381)))

(declare-fun b!7916423 () Bool)

(assert (=> b!7916423 (= e!4672883 (t!390053 (t!390053 ll!14)))))

(assert (= (and d!2361790 c!1452639) b!7916423))

(assert (= (and d!2361790 (not c!1452639)) b!7916424))

(assert (= (and d!2361790 res!3141988) b!7916425))

(assert (= (and b!7916425 res!3141987) b!7916426))

(declare-fun m!8291030 () Bool)

(assert (=> b!7916424 m!8291030))

(declare-fun m!8291032 () Bool)

(assert (=> b!7916425 m!8291032))

(assert (=> b!7916425 m!8290134))

(declare-fun m!8291034 () Bool)

(assert (=> b!7916425 m!8291034))

(assert (=> b!7916425 m!8290420))

(declare-fun m!8291036 () Bool)

(assert (=> d!2361790 m!8291036))

(assert (=> d!2361790 m!8290134))

(declare-fun m!8291038 () Bool)

(assert (=> d!2361790 m!8291038))

(assert (=> d!2361790 m!8290486))

(assert (=> b!7915915 d!2361790))

(declare-fun e!4672885 () List!74544)

(declare-fun b!7916428 () Bool)

(assert (=> b!7916428 (= e!4672885 (Cons!74420 (h!80868 lt!2690175) (++!18238 (t!390053 lt!2690175) (++!18238 lt!2690176 (t!390053 (t!390053 ll!14))))))))

(declare-fun b!7916429 () Bool)

(declare-fun res!3141989 () Bool)

(declare-fun e!4672884 () Bool)

(assert (=> b!7916429 (=> (not res!3141989) (not e!4672884))))

(declare-fun lt!2690382 () List!74544)

(assert (=> b!7916429 (= res!3141989 (= (size!43197 lt!2690382) (+ (size!43197 lt!2690175) (size!43197 (++!18238 lt!2690176 (t!390053 (t!390053 ll!14)))))))))

(declare-fun b!7916430 () Bool)

(assert (=> b!7916430 (= e!4672884 (or (not (= (++!18238 lt!2690176 (t!390053 (t!390053 ll!14))) Nil!74420)) (= lt!2690382 lt!2690175)))))

(declare-fun d!2361792 () Bool)

(assert (=> d!2361792 e!4672884))

(declare-fun res!3141990 () Bool)

(assert (=> d!2361792 (=> (not res!3141990) (not e!4672884))))

(assert (=> d!2361792 (= res!3141990 (= (content!15764 lt!2690382) ((_ map or) (content!15764 lt!2690175) (content!15764 (++!18238 lt!2690176 (t!390053 (t!390053 ll!14)))))))))

(assert (=> d!2361792 (= lt!2690382 e!4672885)))

(declare-fun c!1452640 () Bool)

(assert (=> d!2361792 (= c!1452640 ((_ is Nil!74420) lt!2690175))))

(assert (=> d!2361792 (= (++!18238 lt!2690175 (++!18238 lt!2690176 (t!390053 (t!390053 ll!14)))) lt!2690382)))

(declare-fun b!7916427 () Bool)

(assert (=> b!7916427 (= e!4672885 (++!18238 lt!2690176 (t!390053 (t!390053 ll!14))))))

(assert (= (and d!2361792 c!1452640) b!7916427))

(assert (= (and d!2361792 (not c!1452640)) b!7916428))

(assert (= (and d!2361792 res!3141990) b!7916429))

(assert (= (and b!7916429 res!3141989) b!7916430))

(assert (=> b!7916428 m!8290148))

(declare-fun m!8291040 () Bool)

(assert (=> b!7916428 m!8291040))

(declare-fun m!8291042 () Bool)

(assert (=> b!7916429 m!8291042))

(assert (=> b!7916429 m!8291020))

(assert (=> b!7916429 m!8290148))

(declare-fun m!8291044 () Bool)

(assert (=> b!7916429 m!8291044))

(declare-fun m!8291046 () Bool)

(assert (=> d!2361792 m!8291046))

(assert (=> d!2361792 m!8291026))

(assert (=> d!2361792 m!8290148))

(declare-fun m!8291048 () Bool)

(assert (=> d!2361792 m!8291048))

(assert (=> b!7915915 d!2361792))

(declare-fun d!2361794 () Bool)

(assert (=> d!2361794 (= (++!18238 (++!18238 lt!2690175 lt!2690176) (t!390053 (t!390053 ll!14))) (++!18238 lt!2690175 (++!18238 lt!2690176 (t!390053 (t!390053 ll!14)))))))

(declare-fun lt!2690387 () Unit!169541)

(declare-fun choose!59798 (List!74544 List!74544 List!74544) Unit!169541)

(assert (=> d!2361794 (= lt!2690387 (choose!59798 lt!2690175 lt!2690176 (t!390053 (t!390053 ll!14))))))

(assert (=> d!2361794 (= (lemmaConcatAssociativity!3143 lt!2690175 lt!2690176 (t!390053 (t!390053 ll!14))) lt!2690387)))

(declare-fun bs!1968468 () Bool)

(assert (= bs!1968468 d!2361794))

(assert (=> bs!1968468 m!8290134))

(assert (=> bs!1968468 m!8290140))

(declare-fun m!8291050 () Bool)

(assert (=> bs!1968468 m!8291050))

(assert (=> bs!1968468 m!8290148))

(assert (=> bs!1968468 m!8290134))

(assert (=> bs!1968468 m!8290148))

(assert (=> bs!1968468 m!8290150))

(assert (=> b!7915915 d!2361794))

(assert (=> b!7915915 d!2361576))

(declare-fun b!7916440 () Bool)

(declare-fun e!4672891 () List!74544)

(assert (=> b!7916440 (= e!4672891 (Cons!74420 (h!80868 lt!2690176) (++!18238 (t!390053 lt!2690176) (t!390053 (t!390053 ll!14)))))))

(declare-fun b!7916441 () Bool)

(declare-fun res!3141991 () Bool)

(declare-fun e!4672890 () Bool)

(assert (=> b!7916441 (=> (not res!3141991) (not e!4672890))))

(declare-fun lt!2690388 () List!74544)

(assert (=> b!7916441 (= res!3141991 (= (size!43197 lt!2690388) (+ (size!43197 lt!2690176) (size!43197 (t!390053 (t!390053 ll!14))))))))

(declare-fun b!7916442 () Bool)

(assert (=> b!7916442 (= e!4672890 (or (not (= (t!390053 (t!390053 ll!14)) Nil!74420)) (= lt!2690388 lt!2690176)))))

(declare-fun d!2361796 () Bool)

(assert (=> d!2361796 e!4672890))

(declare-fun res!3141992 () Bool)

(assert (=> d!2361796 (=> (not res!3141992) (not e!4672890))))

(assert (=> d!2361796 (= res!3141992 (= (content!15764 lt!2690388) ((_ map or) (content!15764 lt!2690176) (content!15764 (t!390053 (t!390053 ll!14))))))))

(assert (=> d!2361796 (= lt!2690388 e!4672891)))

(declare-fun c!1452645 () Bool)

(assert (=> d!2361796 (= c!1452645 ((_ is Nil!74420) lt!2690176))))

(assert (=> d!2361796 (= (++!18238 lt!2690176 (t!390053 (t!390053 ll!14))) lt!2690388)))

(declare-fun b!7916439 () Bool)

(assert (=> b!7916439 (= e!4672891 (t!390053 (t!390053 ll!14)))))

(assert (= (and d!2361796 c!1452645) b!7916439))

(assert (= (and d!2361796 (not c!1452645)) b!7916440))

(assert (= (and d!2361796 res!3141992) b!7916441))

(assert (= (and b!7916441 res!3141991) b!7916442))

(declare-fun m!8291052 () Bool)

(assert (=> b!7916440 m!8291052))

(declare-fun m!8291054 () Bool)

(assert (=> b!7916441 m!8291054))

(assert (=> b!7916441 m!8291022))

(assert (=> b!7916441 m!8290420))

(declare-fun m!8291056 () Bool)

(assert (=> d!2361796 m!8291056))

(assert (=> d!2361796 m!8291028))

(assert (=> d!2361796 m!8290486))

(assert (=> b!7915915 d!2361796))

(declare-fun d!2361798 () Bool)

(declare-fun e!4672893 () Bool)

(assert (=> d!2361798 e!4672893))

(declare-fun res!3141993 () Bool)

(assert (=> d!2361798 (=> (not res!3141993) (not e!4672893))))

(declare-fun lt!2690393 () Conc!15874)

(assert (=> d!2361798 (= res!3141993 (= (list!19367 lt!2690393) (++!18238 (list!19367 (append!1120 lt!2690138 (h!80868 (t!390053 ll!14)))) (t!390053 (t!390053 ll!14)))))))

(declare-fun e!4672892 () Conc!15874)

(assert (=> d!2361798 (= lt!2690393 e!4672892)))

(declare-fun c!1452646 () Bool)

(assert (=> d!2361798 (= c!1452646 ((_ is Nil!74420) (t!390053 (t!390053 ll!14))))))

(assert (=> d!2361798 (isBalanced!4500 (append!1120 lt!2690138 (h!80868 (t!390053 ll!14))))))

(assert (=> d!2361798 (= (rec!55 (t!390053 (t!390053 ll!14)) (append!1120 lt!2690138 (h!80868 (t!390053 ll!14)))) lt!2690393)))

(declare-fun b!7916443 () Bool)

(assert (=> b!7916443 (= e!4672892 (append!1120 lt!2690138 (h!80868 (t!390053 ll!14))))))

(declare-fun b!7916444 () Bool)

(assert (=> b!7916444 (= e!4672892 (rec!55 (t!390053 (t!390053 (t!390053 ll!14))) (append!1120 (append!1120 lt!2690138 (h!80868 (t!390053 ll!14))) (h!80868 (t!390053 (t!390053 ll!14))))))))

(declare-fun lt!2690391 () List!74544)

(assert (=> b!7916444 (= lt!2690391 (list!19367 (append!1120 lt!2690138 (h!80868 (t!390053 ll!14)))))))

(declare-fun lt!2690392 () List!74544)

(assert (=> b!7916444 (= lt!2690392 (Cons!74420 (h!80868 (t!390053 (t!390053 ll!14))) Nil!74420))))

(declare-fun lt!2690389 () Unit!169541)

(assert (=> b!7916444 (= lt!2690389 (lemmaConcatAssociativity!3143 lt!2690391 lt!2690392 (t!390053 (t!390053 (t!390053 ll!14)))))))

(assert (=> b!7916444 (= (++!18238 (++!18238 lt!2690391 lt!2690392) (t!390053 (t!390053 (t!390053 ll!14)))) (++!18238 lt!2690391 (++!18238 lt!2690392 (t!390053 (t!390053 (t!390053 ll!14))))))))

(declare-fun lt!2690390 () Unit!169541)

(assert (=> b!7916444 (= lt!2690390 lt!2690389)))

(declare-fun b!7916445 () Bool)

(assert (=> b!7916445 (= e!4672893 (isBalanced!4500 lt!2690393))))

(assert (= (and d!2361798 c!1452646) b!7916443))

(assert (= (and d!2361798 (not c!1452646)) b!7916444))

(assert (= (and d!2361798 res!3141993) b!7916445))

(declare-fun m!8291058 () Bool)

(assert (=> d!2361798 m!8291058))

(assert (=> d!2361798 m!8290144))

(declare-fun m!8291060 () Bool)

(assert (=> d!2361798 m!8291060))

(assert (=> d!2361798 m!8291060))

(declare-fun m!8291062 () Bool)

(assert (=> d!2361798 m!8291062))

(assert (=> d!2361798 m!8290144))

(declare-fun m!8291064 () Bool)

(assert (=> d!2361798 m!8291064))

(declare-fun m!8291066 () Bool)

(assert (=> b!7916444 m!8291066))

(assert (=> b!7916444 m!8291066))

(declare-fun m!8291068 () Bool)

(assert (=> b!7916444 m!8291068))

(declare-fun m!8291070 () Bool)

(assert (=> b!7916444 m!8291070))

(assert (=> b!7916444 m!8290144))

(assert (=> b!7916444 m!8291060))

(declare-fun m!8291072 () Bool)

(assert (=> b!7916444 m!8291072))

(declare-fun m!8291074 () Bool)

(assert (=> b!7916444 m!8291074))

(declare-fun m!8291076 () Bool)

(assert (=> b!7916444 m!8291076))

(assert (=> b!7916444 m!8290144))

(assert (=> b!7916444 m!8291072))

(assert (=> b!7916444 m!8291076))

(declare-fun m!8291078 () Bool)

(assert (=> b!7916444 m!8291078))

(declare-fun m!8291080 () Bool)

(assert (=> b!7916445 m!8291080))

(assert (=> b!7915915 d!2361798))

(declare-fun d!2361800 () Bool)

(declare-fun res!3141994 () Bool)

(declare-fun e!4672894 () Bool)

(assert (=> d!2361800 (=> (not res!3141994) (not e!4672894))))

(assert (=> d!2361800 (= res!3141994 (= (csize!31978 (right!57161 c!5365)) (+ (size!43198 (left!56831 (right!57161 c!5365))) (size!43198 (right!57161 (right!57161 c!5365))))))))

(assert (=> d!2361800 (= (inv!95571 (right!57161 c!5365)) e!4672894)))

(declare-fun b!7916446 () Bool)

(declare-fun res!3141995 () Bool)

(assert (=> b!7916446 (=> (not res!3141995) (not e!4672894))))

(assert (=> b!7916446 (= res!3141995 (and (not (= (left!56831 (right!57161 c!5365)) Empty!15874)) (not (= (right!57161 (right!57161 c!5365)) Empty!15874))))))

(declare-fun b!7916447 () Bool)

(declare-fun res!3141996 () Bool)

(assert (=> b!7916447 (=> (not res!3141996) (not e!4672894))))

(assert (=> b!7916447 (= res!3141996 (= (cheight!16085 (right!57161 c!5365)) (+ (max!0 (height!2190 (left!56831 (right!57161 c!5365))) (height!2190 (right!57161 (right!57161 c!5365)))) 1)))))

(declare-fun b!7916448 () Bool)

(assert (=> b!7916448 (= e!4672894 (<= 0 (cheight!16085 (right!57161 c!5365))))))

(assert (= (and d!2361800 res!3141994) b!7916446))

(assert (= (and b!7916446 res!3141995) b!7916447))

(assert (= (and b!7916447 res!3141996) b!7916448))

(declare-fun m!8291082 () Bool)

(assert (=> d!2361800 m!8291082))

(declare-fun m!8291084 () Bool)

(assert (=> d!2361800 m!8291084))

(assert (=> b!7916447 m!8290390))

(assert (=> b!7916447 m!8290392))

(assert (=> b!7916447 m!8290390))

(assert (=> b!7916447 m!8290392))

(declare-fun m!8291086 () Bool)

(assert (=> b!7916447 m!8291086))

(assert (=> b!7916078 d!2361800))

(declare-fun d!2361802 () Bool)

(declare-fun res!3141997 () Bool)

(declare-fun e!4672895 () Bool)

(assert (=> d!2361802 (=> (not res!3141997) (not e!4672895))))

(assert (=> d!2361802 (= res!3141997 (<= (size!43197 (list!19369 (xs!19256 (right!57161 c!5365)))) 512))))

(assert (=> d!2361802 (= (inv!95572 (right!57161 c!5365)) e!4672895)))

(declare-fun b!7916449 () Bool)

(declare-fun res!3141998 () Bool)

(assert (=> b!7916449 (=> (not res!3141998) (not e!4672895))))

(assert (=> b!7916449 (= res!3141998 (= (csize!31979 (right!57161 c!5365)) (size!43197 (list!19369 (xs!19256 (right!57161 c!5365))))))))

(declare-fun b!7916450 () Bool)

(assert (=> b!7916450 (= e!4672895 (and (> (csize!31979 (right!57161 c!5365)) 0) (<= (csize!31979 (right!57161 c!5365)) 512)))))

(assert (= (and d!2361802 res!3141997) b!7916449))

(assert (= (and b!7916449 res!3141998) b!7916450))

(assert (=> d!2361802 m!8290460))

(assert (=> d!2361802 m!8290460))

(declare-fun m!8291088 () Bool)

(assert (=> d!2361802 m!8291088))

(assert (=> b!7916449 m!8290460))

(assert (=> b!7916449 m!8290460))

(assert (=> b!7916449 m!8291088))

(assert (=> b!7916080 d!2361802))

(assert (=> b!7915986 d!2361622))

(assert (=> b!7915986 d!2361620))

(declare-fun d!2361804 () Bool)

(declare-fun lt!2690394 () Int)

(assert (=> d!2361804 (>= lt!2690394 0)))

(declare-fun e!4672896 () Int)

(assert (=> d!2361804 (= lt!2690394 e!4672896)))

(declare-fun c!1452647 () Bool)

(assert (=> d!2361804 (= c!1452647 ((_ is Nil!74420) lt!2690145))))

(assert (=> d!2361804 (= (size!43197 lt!2690145) lt!2690394)))

(declare-fun b!7916451 () Bool)

(assert (=> b!7916451 (= e!4672896 0)))

(declare-fun b!7916452 () Bool)

(assert (=> b!7916452 (= e!4672896 (+ 1 (size!43197 (t!390053 lt!2690145))))))

(assert (= (and d!2361804 c!1452647) b!7916451))

(assert (= (and d!2361804 (not c!1452647)) b!7916452))

(declare-fun m!8291090 () Bool)

(assert (=> b!7916452 m!8291090))

(assert (=> b!7915849 d!2361804))

(declare-fun d!2361806 () Bool)

(declare-fun lt!2690395 () Int)

(assert (=> d!2361806 (>= lt!2690395 0)))

(declare-fun e!4672897 () Int)

(assert (=> d!2361806 (= lt!2690395 e!4672897)))

(declare-fun c!1452648 () Bool)

(assert (=> d!2361806 (= c!1452648 ((_ is Nil!74420) (list!19367 c!5365)))))

(assert (=> d!2361806 (= (size!43197 (list!19367 c!5365)) lt!2690395)))

(declare-fun b!7916453 () Bool)

(assert (=> b!7916453 (= e!4672897 0)))

(declare-fun b!7916454 () Bool)

(assert (=> b!7916454 (= e!4672897 (+ 1 (size!43197 (t!390053 (list!19367 c!5365)))))))

(assert (= (and d!2361806 c!1452648) b!7916453))

(assert (= (and d!2361806 (not c!1452648)) b!7916454))

(assert (=> b!7916454 m!8290512))

(assert (=> b!7915849 d!2361806))

(declare-fun d!2361808 () Bool)

(declare-fun lt!2690396 () Int)

(assert (=> d!2361808 (>= lt!2690396 0)))

(declare-fun e!4672898 () Int)

(assert (=> d!2361808 (= lt!2690396 e!4672898)))

(declare-fun c!1452649 () Bool)

(assert (=> d!2361808 (= c!1452649 ((_ is Nil!74420) (Cons!74420 (h!80868 ll!14) Nil!74420)))))

(assert (=> d!2361808 (= (size!43197 (Cons!74420 (h!80868 ll!14) Nil!74420)) lt!2690396)))

(declare-fun b!7916455 () Bool)

(assert (=> b!7916455 (= e!4672898 0)))

(declare-fun b!7916456 () Bool)

(assert (=> b!7916456 (= e!4672898 (+ 1 (size!43197 (t!390053 (Cons!74420 (h!80868 ll!14) Nil!74420)))))))

(assert (= (and d!2361808 c!1452649) b!7916455))

(assert (= (and d!2361808 (not c!1452649)) b!7916456))

(declare-fun m!8291092 () Bool)

(assert (=> b!7916456 m!8291092))

(assert (=> b!7915849 d!2361808))

(declare-fun d!2361810 () Bool)

(assert (=> d!2361810 (= (list!19369 (xs!19256 lt!2690138)) (innerList!15962 (xs!19256 lt!2690138)))))

(assert (=> b!7915897 d!2361810))

(declare-fun b!7916457 () Bool)

(declare-fun e!4672899 () Bool)

(declare-fun tp!2357451 () Bool)

(assert (=> b!7916457 (= e!4672899 (and tp_is_empty!53173 tp!2357451))))

(assert (=> b!7916099 (= tp!2357447 e!4672899)))

(assert (= (and b!7916099 ((_ is Cons!74420) (innerList!15962 (xs!19256 (right!57161 c!5365))))) b!7916457))

(declare-fun b!7916458 () Bool)

(declare-fun tp!2357453 () Bool)

(declare-fun tp!2357454 () Bool)

(declare-fun e!4672900 () Bool)

(assert (=> b!7916458 (= e!4672900 (and (inv!95568 (left!56831 (left!56831 (left!56831 c!5365)))) tp!2357454 (inv!95568 (right!57161 (left!56831 (left!56831 c!5365)))) tp!2357453))))

(declare-fun b!7916460 () Bool)

(declare-fun e!4672901 () Bool)

(declare-fun tp!2357452 () Bool)

(assert (=> b!7916460 (= e!4672901 tp!2357452)))

(declare-fun b!7916459 () Bool)

(assert (=> b!7916459 (= e!4672900 (and (inv!95567 (xs!19256 (left!56831 (left!56831 c!5365)))) e!4672901))))

(assert (=> b!7916094 (= tp!2357446 (and (inv!95568 (left!56831 (left!56831 c!5365))) e!4672900))))

(assert (= (and b!7916094 ((_ is Node!15874) (left!56831 (left!56831 c!5365)))) b!7916458))

(assert (= b!7916459 b!7916460))

(assert (= (and b!7916094 ((_ is Leaf!30192) (left!56831 (left!56831 c!5365)))) b!7916459))

(declare-fun m!8291094 () Bool)

(assert (=> b!7916458 m!8291094))

(declare-fun m!8291096 () Bool)

(assert (=> b!7916458 m!8291096))

(declare-fun m!8291098 () Bool)

(assert (=> b!7916459 m!8291098))

(assert (=> b!7916094 m!8290314))

(declare-fun tp!2357457 () Bool)

(declare-fun tp!2357456 () Bool)

(declare-fun b!7916465 () Bool)

(declare-fun e!4672904 () Bool)

(assert (=> b!7916465 (= e!4672904 (and (inv!95568 (left!56831 (right!57161 (left!56831 c!5365)))) tp!2357457 (inv!95568 (right!57161 (right!57161 (left!56831 c!5365)))) tp!2357456))))

(declare-fun b!7916467 () Bool)

(declare-fun e!4672905 () Bool)

(declare-fun tp!2357455 () Bool)

(assert (=> b!7916467 (= e!4672905 tp!2357455)))

(declare-fun b!7916466 () Bool)

(assert (=> b!7916466 (= e!4672904 (and (inv!95567 (xs!19256 (right!57161 (left!56831 c!5365)))) e!4672905))))

(assert (=> b!7916094 (= tp!2357445 (and (inv!95568 (right!57161 (left!56831 c!5365))) e!4672904))))

(assert (= (and b!7916094 ((_ is Node!15874) (right!57161 (left!56831 c!5365)))) b!7916465))

(assert (= b!7916466 b!7916467))

(assert (= (and b!7916094 ((_ is Leaf!30192) (right!57161 (left!56831 c!5365)))) b!7916466))

(declare-fun m!8291100 () Bool)

(assert (=> b!7916465 m!8291100))

(declare-fun m!8291102 () Bool)

(assert (=> b!7916465 m!8291102))

(declare-fun m!8291104 () Bool)

(assert (=> b!7916466 m!8291104))

(assert (=> b!7916094 m!8290316))

(declare-fun b!7916468 () Bool)

(declare-fun e!4672906 () Bool)

(declare-fun tp!2357458 () Bool)

(assert (=> b!7916468 (= e!4672906 (and tp_is_empty!53173 tp!2357458))))

(assert (=> b!7916096 (= tp!2357444 e!4672906)))

(assert (= (and b!7916096 ((_ is Cons!74420) (innerList!15962 (xs!19256 (left!56831 c!5365))))) b!7916468))

(declare-fun e!4672907 () Bool)

(declare-fun tp!2357460 () Bool)

(declare-fun b!7916469 () Bool)

(declare-fun tp!2357461 () Bool)

(assert (=> b!7916469 (= e!4672907 (and (inv!95568 (left!56831 (left!56831 (right!57161 c!5365)))) tp!2357461 (inv!95568 (right!57161 (left!56831 (right!57161 c!5365)))) tp!2357460))))

(declare-fun b!7916471 () Bool)

(declare-fun e!4672908 () Bool)

(declare-fun tp!2357459 () Bool)

(assert (=> b!7916471 (= e!4672908 tp!2357459)))

(declare-fun b!7916470 () Bool)

(assert (=> b!7916470 (= e!4672907 (and (inv!95567 (xs!19256 (left!56831 (right!57161 c!5365)))) e!4672908))))

(assert (=> b!7916097 (= tp!2357449 (and (inv!95568 (left!56831 (right!57161 c!5365))) e!4672907))))

(assert (= (and b!7916097 ((_ is Node!15874) (left!56831 (right!57161 c!5365)))) b!7916469))

(assert (= b!7916470 b!7916471))

(assert (= (and b!7916097 ((_ is Leaf!30192) (left!56831 (right!57161 c!5365)))) b!7916470))

(declare-fun m!8291106 () Bool)

(assert (=> b!7916469 m!8291106))

(declare-fun m!8291108 () Bool)

(assert (=> b!7916469 m!8291108))

(declare-fun m!8291110 () Bool)

(assert (=> b!7916470 m!8291110))

(assert (=> b!7916097 m!8290320))

(declare-fun b!7916472 () Bool)

(declare-fun tp!2357464 () Bool)

(declare-fun e!4672909 () Bool)

(declare-fun tp!2357463 () Bool)

(assert (=> b!7916472 (= e!4672909 (and (inv!95568 (left!56831 (right!57161 (right!57161 c!5365)))) tp!2357464 (inv!95568 (right!57161 (right!57161 (right!57161 c!5365)))) tp!2357463))))

(declare-fun b!7916474 () Bool)

(declare-fun e!4672910 () Bool)

(declare-fun tp!2357462 () Bool)

(assert (=> b!7916474 (= e!4672910 tp!2357462)))

(declare-fun b!7916473 () Bool)

(assert (=> b!7916473 (= e!4672909 (and (inv!95567 (xs!19256 (right!57161 (right!57161 c!5365)))) e!4672910))))

(assert (=> b!7916097 (= tp!2357448 (and (inv!95568 (right!57161 (right!57161 c!5365))) e!4672909))))

(assert (= (and b!7916097 ((_ is Node!15874) (right!57161 (right!57161 c!5365)))) b!7916472))

(assert (= b!7916473 b!7916474))

(assert (= (and b!7916097 ((_ is Leaf!30192) (right!57161 (right!57161 c!5365)))) b!7916473))

(declare-fun m!8291118 () Bool)

(assert (=> b!7916472 m!8291118))

(declare-fun m!8291120 () Bool)

(assert (=> b!7916472 m!8291120))

(declare-fun m!8291122 () Bool)

(assert (=> b!7916473 m!8291122))

(assert (=> b!7916097 m!8290322))

(declare-fun b!7916475 () Bool)

(declare-fun e!4672911 () Bool)

(declare-fun tp!2357465 () Bool)

(assert (=> b!7916475 (= e!4672911 (and tp_is_empty!53173 tp!2357465))))

(assert (=> b!7916085 (= tp!2357437 e!4672911)))

(assert (= (and b!7916085 ((_ is Cons!74420) (t!390053 (innerList!15962 (xs!19256 c!5365))))) b!7916475))

(declare-fun b!7916476 () Bool)

(declare-fun e!4672912 () Bool)

(declare-fun tp!2357466 () Bool)

(assert (=> b!7916476 (= e!4672912 (and tp_is_empty!53173 tp!2357466))))

(assert (=> b!7916100 (= tp!2357450 e!4672912)))

(assert (= (and b!7916100 ((_ is Cons!74420) (t!390053 (t!390053 ll!14)))) b!7916476))

(check-sat (not d!2361736) (not bm!734544) (not b!7916381) (not b!7916196) (not b!7916221) (not b!7916468) (not b!7916383) (not d!2361780) (not b!7916465) (not d!2361772) (not b!7916199) (not b!7916156) (not d!2361758) (not b!7916163) (not b!7916158) (not b!7916456) (not d!2361754) (not b!7916384) (not bm!734546) (not bm!734551) (not d!2361630) (not b!7916211) (not d!2361702) (not b!7916185) (not bm!734555) (not b!7916299) (not b!7916469) (not b!7916373) (not b!7916406) (not b!7916219) (not b!7916327) (not b!7916201) (not b!7916323) (not b!7916288) (not d!2361796) (not b!7916293) (not b!7916180) (not b!7916445) (not b!7916476) (not b!7916160) (not b!7916385) (not b!7916341) (not b!7916475) (not d!2361724) (not b!7916372) (not b!7916223) (not b!7916166) (not b!7916379) (not d!2361700) (not b!7916112) (not b!7916128) (not b!7916337) (not b!7916297) (not b!7916198) (not b!7916378) (not b!7916188) (not b!7916162) (not b!7916452) (not b!7916123) (not b!7916133) (not d!2361714) (not bm!734547) (not b!7916318) (not b!7916411) (not b!7916417) (not b!7916310) (not d!2361672) (not d!2361782) (not b!7916333) (not b!7916344) (not b!7916300) (not d!2361662) (not b!7916286) (not b!7916444) (not b!7916159) (not b!7916364) (not b!7916108) (not b!7916441) (not b!7916120) (not b!7916194) (not b!7916177) (not b!7916472) (not b!7916342) (not d!2361802) (not b!7916116) (not d!2361742) (not b!7916195) (not b!7916459) (not b!7916392) (not b!7916470) (not bm!734540) (not b!7916388) (not b!7916121) (not b!7916334) (not b!7916429) (not b!7916375) (not d!2361800) (not bm!734557) (not b!7916111) (not b!7916471) (not d!2361770) (not b!7916317) (not d!2361654) (not b!7916421) (not d!2361778) (not b!7916175) (not bm!734554) (not b!7916428) (not b!7916365) (not b!7916197) (not b!7916398) (not b!7916449) (not b!7916280) (not d!2361760) (not b!7916402) (not b!7916370) (not b!7916395) (not d!2361734) (not b!7916404) (not d!2361720) (not b!7916380) (not b!7916227) (not b!7916122) (not d!2361792) (not b!7916425) (not d!2361692) (not bm!734550) (not b!7916094) (not d!2361764) (not b!7916460) (not d!2361606) (not b!7916447) (not b!7916191) (not b!7916400) (not bm!734542) (not b!7916289) (not b!7916209) (not b!7916338) (not bm!734553) (not b!7916340) (not b!7916351) (not b!7916386) (not b!7916440) (not d!2361788) (not b!7916291) (not b!7916331) (not b!7916189) (not b!7916118) (not b!7916314) (not bm!734537) (not b!7916313) (not b!7916330) (not b!7916322) (not b!7916311) (not d!2361616) (not bm!734559) (not b!7916420) (not b!7916222) (not b!7916153) (not b!7916473) (not bm!734536) (not b!7916117) (not b!7916305) (not b!7916279) (not b!7916424) (not b!7916184) (not b!7916474) (not d!2361604) (not b!7916454) (not b!7916377) (not d!2361798) (not b!7916119) (not b!7916200) (not d!2361728) (not b!7916132) (not b!7916304) (not b!7916173) (not bm!734541) (not b!7916345) (not d!2361642) (not d!2361614) (not bm!734545) (not b!7916207) (not b!7916165) (not b!7916393) (not bm!734556) tp_is_empty!53173 (not b!7916295) (not b!7916457) (not b!7916397) (not bm!734549) (not b!7916161) (not b!7916408) (not b!7916097) (not b!7916410) (not d!2361790) (not bm!734539) (not b!7916466) (not b!7916458) (not b!7916407) (not b!7916382) (not b!7916228) (not bm!734552) (not b!7916263) (not bm!734538) (not d!2361794) (not d!2361730) (not b!7916467) (not b!7916389) (not b!7916151) (not b!7916369) (not b!7916217) (not b!7916155) (not b!7916157) (not bm!734543) (not d!2361668) (not b!7916376) (not b!7916179))
(check-sat)
