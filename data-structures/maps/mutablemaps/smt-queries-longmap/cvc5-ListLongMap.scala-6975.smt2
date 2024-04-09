; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88406 () Bool)

(assert start!88406)

(declare-fun b!1017258 () Bool)

(assert (=> b!1017258 true))

(assert (=> b!1017258 true))

(declare-fun bs!29584 () Bool)

(declare-fun b!1017255 () Bool)

(assert (= bs!29584 (and b!1017255 b!1017258)))

(declare-fun lambda!1109 () Int)

(declare-fun lambda!1108 () Int)

(declare-datatypes ((B!1556 0))(
  ( (B!1557 (val!11862 Int)) )
))
(declare-datatypes ((tuple2!15360 0))(
  ( (tuple2!15361 (_1!7690 (_ BitVec 64)) (_2!7690 B!1556)) )
))
(declare-datatypes ((List!21661 0))(
  ( (Nil!21658) (Cons!21657 (h!22855 tuple2!15360) (t!30670 List!21661)) )
))
(declare-fun l!1114 () List!21661)

(declare-fun newHead!31 () tuple2!15360)

(assert (=> bs!29584 (= (= (Cons!21657 newHead!31 l!1114) l!1114) (= lambda!1109 lambda!1108))))

(assert (=> b!1017255 true))

(assert (=> b!1017255 true))

(assert (=> b!1017255 true))

(declare-fun b!1017254 () Bool)

(declare-fun res!682386 () Bool)

(declare-fun e!572362 () Bool)

(assert (=> b!1017254 (=> (not res!682386) (not e!572362))))

(declare-fun isEmpty!907 (List!21661) Bool)

(assert (=> b!1017254 (= res!682386 (not (isEmpty!907 l!1114)))))

(declare-fun b!1017256 () Bool)

(declare-fun res!682385 () Bool)

(assert (=> b!1017256 (=> (not res!682385) (not e!572362))))

(declare-fun head!977 (List!21661) tuple2!15360)

(assert (=> b!1017256 (= res!682385 (bvslt (_1!7690 newHead!31) (_1!7690 (head!977 l!1114))))))

(declare-fun b!1017257 () Bool)

(declare-fun e!572361 () Bool)

(declare-fun tp_is_empty!23623 () Bool)

(declare-fun tp!70847 () Bool)

(assert (=> b!1017257 (= e!572361 (and tp_is_empty!23623 tp!70847))))

(declare-fun res!682388 () Bool)

(assert (=> start!88406 (=> (not res!682388) (not e!572362))))

(declare-fun isStrictlySorted!626 (List!21661) Bool)

(assert (=> start!88406 (= res!682388 (isStrictlySorted!626 l!1114))))

(assert (=> start!88406 e!572362))

(assert (=> start!88406 e!572361))

(assert (=> start!88406 true))

(assert (=> start!88406 tp_is_empty!23623))

(declare-datatypes ((List!21662 0))(
  ( (Nil!21659) (Cons!21658 (h!22856 (_ BitVec 64)) (t!30671 List!21662)) )
))
(declare-fun keys!40 () List!21662)

(declare-fun forall!295 (List!21662 Int) Bool)

(assert (=> b!1017255 (= e!572362 (not (forall!295 keys!40 lambda!1109)))))

(declare-fun res!682387 () Bool)

(assert (=> b!1017258 (=> (not res!682387) (not e!572362))))

(assert (=> b!1017258 (= res!682387 (forall!295 keys!40 lambda!1108))))

(declare-fun b!1017259 () Bool)

(declare-fun res!682389 () Bool)

(assert (=> b!1017259 (=> (not res!682389) (not e!572362))))

(assert (=> b!1017259 (= res!682389 (not (is-Cons!21658 keys!40)))))

(assert (= (and start!88406 res!682388) b!1017254))

(assert (= (and b!1017254 res!682386) b!1017258))

(assert (= (and b!1017258 res!682387) b!1017256))

(assert (= (and b!1017256 res!682385) b!1017259))

(assert (= (and b!1017259 res!682389) b!1017255))

(assert (= (and start!88406 (is-Cons!21657 l!1114)) b!1017257))

(declare-fun m!938831 () Bool)

(assert (=> b!1017255 m!938831))

(declare-fun m!938833 () Bool)

(assert (=> b!1017254 m!938833))

(declare-fun m!938835 () Bool)

(assert (=> b!1017258 m!938835))

(declare-fun m!938837 () Bool)

(assert (=> b!1017256 m!938837))

(declare-fun m!938839 () Bool)

(assert (=> start!88406 m!938839))

(push 1)

(assert (not b!1017257))

(assert (not b!1017258))

(assert tp_is_empty!23623)

(assert (not start!88406))

(assert (not b!1017255))

(assert (not b!1017256))

(assert (not b!1017254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121553 () Bool)

(assert (=> d!121553 (= (isEmpty!907 l!1114) (is-Nil!21658 l!1114))))

(assert (=> b!1017254 d!121553))

(declare-fun d!121557 () Bool)

(declare-fun res!682438 () Bool)

(declare-fun e!572393 () Bool)

(assert (=> d!121557 (=> res!682438 e!572393)))

(assert (=> d!121557 (= res!682438 (is-Nil!21659 keys!40))))

(assert (=> d!121557 (= (forall!295 keys!40 lambda!1109) e!572393)))

(declare-fun b!1017332 () Bool)

(declare-fun e!572394 () Bool)

(assert (=> b!1017332 (= e!572393 e!572394)))

(declare-fun res!682439 () Bool)

(assert (=> b!1017332 (=> (not res!682439) (not e!572394))))

(declare-fun dynLambda!1934 (Int (_ BitVec 64)) Bool)

(assert (=> b!1017332 (= res!682439 (dynLambda!1934 lambda!1109 (h!22856 keys!40)))))

(declare-fun b!1017333 () Bool)

(assert (=> b!1017333 (= e!572394 (forall!295 (t!30671 keys!40) lambda!1109))))

(assert (= (and d!121557 (not res!682438)) b!1017332))

(assert (= (and b!1017332 res!682439) b!1017333))

(declare-fun b_lambda!15659 () Bool)

(assert (=> (not b_lambda!15659) (not b!1017332)))

(declare-fun m!938865 () Bool)

(assert (=> b!1017332 m!938865))

(declare-fun m!938867 () Bool)

(assert (=> b!1017333 m!938867))

(assert (=> b!1017255 d!121557))

(declare-fun d!121561 () Bool)

(declare-fun res!682442 () Bool)

(declare-fun e!572397 () Bool)

(assert (=> d!121561 (=> res!682442 e!572397)))

(assert (=> d!121561 (= res!682442 (is-Nil!21659 keys!40))))

(assert (=> d!121561 (= (forall!295 keys!40 lambda!1108) e!572397)))

(declare-fun b!1017336 () Bool)

(declare-fun e!572398 () Bool)

(assert (=> b!1017336 (= e!572397 e!572398)))

(declare-fun res!682443 () Bool)

(assert (=> b!1017336 (=> (not res!682443) (not e!572398))))

(assert (=> b!1017336 (= res!682443 (dynLambda!1934 lambda!1108 (h!22856 keys!40)))))

(declare-fun b!1017337 () Bool)

(assert (=> b!1017337 (= e!572398 (forall!295 (t!30671 keys!40) lambda!1108))))

(assert (= (and d!121561 (not res!682442)) b!1017336))

(assert (= (and b!1017336 res!682443) b!1017337))

(declare-fun b_lambda!15663 () Bool)

(assert (=> (not b_lambda!15663) (not b!1017336)))

(declare-fun m!938873 () Bool)

(assert (=> b!1017336 m!938873))

(declare-fun m!938875 () Bool)

(assert (=> b!1017337 m!938875))

(assert (=> b!1017258 d!121561))

(declare-fun d!121565 () Bool)

(declare-fun res!682456 () Bool)

(declare-fun e!572414 () Bool)

(assert (=> d!121565 (=> res!682456 e!572414)))

(assert (=> d!121565 (= res!682456 (or (is-Nil!21658 l!1114) (is-Nil!21658 (t!30670 l!1114))))))

(assert (=> d!121565 (= (isStrictlySorted!626 l!1114) e!572414)))

(declare-fun b!1017355 () Bool)

(declare-fun e!572415 () Bool)

(assert (=> b!1017355 (= e!572414 e!572415)))

(declare-fun res!682457 () Bool)

(assert (=> b!1017355 (=> (not res!682457) (not e!572415))))

(assert (=> b!1017355 (= res!682457 (bvslt (_1!7690 (h!22855 l!1114)) (_1!7690 (h!22855 (t!30670 l!1114)))))))

(declare-fun b!1017356 () Bool)

(assert (=> b!1017356 (= e!572415 (isStrictlySorted!626 (t!30670 l!1114)))))

(assert (= (and d!121565 (not res!682456)) b!1017355))

(assert (= (and b!1017355 res!682457) b!1017356))

(declare-fun m!938885 () Bool)

(assert (=> b!1017356 m!938885))

(assert (=> start!88406 d!121565))

(declare-fun d!121577 () Bool)

(assert (=> d!121577 (= (head!977 l!1114) (h!22855 l!1114))))

(assert (=> b!1017256 d!121577))

(declare-fun b!1017363 () Bool)

(declare-fun e!572420 () Bool)

(declare-fun tp!70859 () Bool)

(assert (=> b!1017363 (= e!572420 (and tp_is_empty!23623 tp!70859))))

(assert (=> b!1017257 (= tp!70847 e!572420)))

(assert (= (and b!1017257 (is-Cons!21657 (t!30670 l!1114))) b!1017363))

(declare-fun b_lambda!15671 () Bool)

(assert (= b_lambda!15659 (or b!1017255 b_lambda!15671)))

(declare-fun bs!29589 () Bool)

(declare-fun d!121583 () Bool)

(assert (= bs!29589 (and d!121583 b!1017255)))

(declare-fun value!178 () B!1556)

(declare-datatypes ((Option!619 0))(
  ( (Some!618 (v!14467 B!1556)) (None!617) )
))
(declare-fun getValueByKey!568 (List!21661 (_ BitVec 64)) Option!619)

(assert (=> bs!29589 (= (dynLambda!1934 lambda!1109 (h!22856 keys!40)) (= (getValueByKey!568 (Cons!21657 newHead!31 l!1114) (h!22856 keys!40)) (Some!618 value!178)))))

(declare-fun m!938891 () Bool)

(assert (=> bs!29589 m!938891))

(assert (=> b!1017332 d!121583))

(declare-fun b_lambda!15673 () Bool)

(assert (= b_lambda!15663 (or b!1017258 b_lambda!15673)))

(declare-fun bs!29590 () Bool)

(declare-fun d!121585 () Bool)

(assert (= bs!29590 (and d!121585 b!1017258)))

(assert (=> bs!29590 (= (dynLambda!1934 lambda!1108 (h!22856 keys!40)) (= (getValueByKey!568 l!1114 (h!22856 keys!40)) (Some!618 value!178)))))

