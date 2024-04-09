; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87456 () Bool)

(assert start!87456)

(declare-fun b!1012767 () Bool)

(assert (=> b!1012767 true))

(assert (=> b!1012767 true))

(declare-fun b!1012762 () Bool)

(declare-fun res!680227 () Bool)

(declare-fun e!569752 () Bool)

(assert (=> b!1012762 (=> (not res!680227) (not e!569752))))

(declare-datatypes ((B!1360 0))(
  ( (B!1361 (val!11764 Int)) )
))
(declare-datatypes ((tuple2!15164 0))(
  ( (tuple2!15165 (_1!7592 (_ BitVec 64)) (_2!7592 B!1360)) )
))
(declare-datatypes ((List!21489 0))(
  ( (Nil!21486) (Cons!21485 (h!22683 tuple2!15164) (t!30498 List!21489)) )
))
(declare-fun l!412 () List!21489)

(declare-fun isEmpty!804 (List!21489) Bool)

(assert (=> b!1012762 (= res!680227 (not (isEmpty!804 (t!30498 l!412))))))

(declare-fun b!1012763 () Bool)

(declare-fun res!680221 () Bool)

(declare-fun e!569751 () Bool)

(assert (=> b!1012763 (=> (not res!680221) (not e!569751))))

(declare-fun value!115 () B!1360)

(get-info :version)

(assert (=> b!1012763 (= res!680221 (and (not (= (_2!7592 (h!22683 l!412)) value!115)) ((_ is Cons!21485) l!412)))))

(declare-fun b!1012764 () Bool)

(declare-fun res!680226 () Bool)

(assert (=> b!1012764 (=> (not res!680226) (not e!569752))))

(declare-fun isStrictlySorted!540 (List!21489) Bool)

(assert (=> b!1012764 (= res!680226 (isStrictlySorted!540 (t!30498 l!412)))))

(declare-fun res!680222 () Bool)

(assert (=> start!87456 (=> (not res!680222) (not e!569751))))

(assert (=> start!87456 (= res!680222 (isStrictlySorted!540 l!412))))

(assert (=> start!87456 e!569751))

(declare-fun e!569753 () Bool)

(assert (=> start!87456 e!569753))

(declare-fun tp_is_empty!23427 () Bool)

(assert (=> start!87456 tp_is_empty!23427))

(declare-fun b!1012765 () Bool)

(declare-fun tp!70341 () Bool)

(assert (=> b!1012765 (= e!569753 (and tp_is_empty!23427 tp!70341))))

(declare-fun b!1012766 () Bool)

(declare-fun res!680225 () Bool)

(assert (=> b!1012766 (=> (not res!680225) (not e!569752))))

(declare-fun head!926 (List!21489) tuple2!15164)

(assert (=> b!1012766 (= res!680225 (bvslt (_1!7592 (h!22683 l!412)) (_1!7592 (head!926 (t!30498 l!412)))))))

(declare-fun res!680224 () Bool)

(assert (=> b!1012767 (=> (not res!680224) (not e!569752))))

(declare-datatypes ((List!21490 0))(
  ( (Nil!21487) (Cons!21486 (h!22684 (_ BitVec 64)) (t!30499 List!21490)) )
))
(declare-fun lt!447681 () List!21490)

(declare-fun lambda!411 () Int)

(declare-fun forall!222 (List!21490 Int) Bool)

(assert (=> b!1012767 (= res!680224 (forall!222 lt!447681 lambda!411))))

(declare-fun b!1012768 () Bool)

(assert (=> b!1012768 (= e!569752 (not (forall!222 lt!447681 lambda!411)))))

(declare-fun b!1012769 () Bool)

(assert (=> b!1012769 (= e!569751 e!569752)))

(declare-fun res!680223 () Bool)

(assert (=> b!1012769 (=> (not res!680223) (not e!569752))))

(declare-fun isEmpty!805 (List!21490) Bool)

(assert (=> b!1012769 (= res!680223 (not (isEmpty!805 lt!447681)))))

(declare-fun getKeysOf!26 (List!21489 B!1360) List!21490)

(assert (=> b!1012769 (= lt!447681 (getKeysOf!26 (t!30498 l!412) value!115))))

(assert (= (and start!87456 res!680222) b!1012763))

(assert (= (and b!1012763 res!680221) b!1012769))

(assert (= (and b!1012769 res!680223) b!1012764))

(assert (= (and b!1012764 res!680226) b!1012762))

(assert (= (and b!1012762 res!680227) b!1012767))

(assert (= (and b!1012767 res!680224) b!1012766))

(assert (= (and b!1012766 res!680225) b!1012768))

(assert (= (and start!87456 ((_ is Cons!21485) l!412)) b!1012765))

(declare-fun m!936239 () Bool)

(assert (=> b!1012764 m!936239))

(declare-fun m!936241 () Bool)

(assert (=> b!1012762 m!936241))

(declare-fun m!936243 () Bool)

(assert (=> b!1012769 m!936243))

(declare-fun m!936245 () Bool)

(assert (=> b!1012769 m!936245))

(declare-fun m!936247 () Bool)

(assert (=> b!1012768 m!936247))

(declare-fun m!936249 () Bool)

(assert (=> start!87456 m!936249))

(assert (=> b!1012767 m!936247))

(declare-fun m!936251 () Bool)

(assert (=> b!1012766 m!936251))

(check-sat (not b!1012762) tp_is_empty!23427 (not b!1012768) (not b!1012769) (not b!1012766) (not b!1012764) (not b!1012767) (not start!87456) (not b!1012765))
(check-sat)
