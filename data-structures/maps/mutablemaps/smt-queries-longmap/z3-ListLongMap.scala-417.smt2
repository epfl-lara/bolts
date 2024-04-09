; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7824 () Bool)

(assert start!7824)

(declare-fun res!28641 () Bool)

(declare-fun e!31866 () Bool)

(assert (=> start!7824 (=> (not res!28641) (not e!31866))))

(declare-datatypes ((B!1018 0))(
  ( (B!1019 (val!1129 Int)) )
))
(declare-datatypes ((tuple2!1844 0))(
  ( (tuple2!1845 (_1!932 (_ BitVec 64)) (_2!932 B!1018)) )
))
(declare-datatypes ((List!1345 0))(
  ( (Nil!1342) (Cons!1341 (h!1921 tuple2!1844) (t!4387 List!1345)) )
))
(declare-fun keyValues!2 () List!1345)

(get-info :version)

(assert (=> start!7824 (= res!28641 (not ((_ is Nil!1342) keyValues!2)))))

(assert (=> start!7824 e!31866))

(declare-fun e!31865 () Bool)

(assert (=> start!7824 e!31865))

(declare-datatypes ((ListLongMap!1263 0))(
  ( (ListLongMap!1264 (toList!647 List!1345)) )
))
(declare-fun thiss!210 () ListLongMap!1263)

(declare-fun e!31867 () Bool)

(declare-fun inv!2318 (ListLongMap!1263) Bool)

(assert (=> start!7824 (and (inv!2318 thiss!210) e!31867)))

(declare-fun b!49570 () Bool)

(declare-fun ListPrimitiveSize!59 (List!1345) Int)

(assert (=> b!49570 (= e!31866 (>= (ListPrimitiveSize!59 (t!4387 keyValues!2)) (ListPrimitiveSize!59 keyValues!2)))))

(declare-fun lt!20781 () ListLongMap!1263)

(declare-fun +!77 (ListLongMap!1263 tuple2!1844) ListLongMap!1263)

(assert (=> b!49570 (= lt!20781 (+!77 thiss!210 (h!1921 keyValues!2)))))

(declare-fun b!49571 () Bool)

(declare-fun tp_is_empty!2169 () Bool)

(declare-fun tp!6578 () Bool)

(assert (=> b!49571 (= e!31865 (and tp_is_empty!2169 tp!6578))))

(declare-fun b!49572 () Bool)

(declare-fun tp!6577 () Bool)

(assert (=> b!49572 (= e!31867 tp!6577)))

(assert (= (and start!7824 res!28641) b!49570))

(assert (= (and start!7824 ((_ is Cons!1341) keyValues!2)) b!49571))

(assert (= start!7824 b!49572))

(declare-fun m!42941 () Bool)

(assert (=> start!7824 m!42941))

(declare-fun m!42943 () Bool)

(assert (=> b!49570 m!42943))

(declare-fun m!42945 () Bool)

(assert (=> b!49570 m!42945))

(declare-fun m!42947 () Bool)

(assert (=> b!49570 m!42947))

(check-sat (not b!49571) tp_is_empty!2169 (not b!49570) (not start!7824) (not b!49572))
(check-sat)
(get-model)

(declare-fun d!9957 () Bool)

(declare-fun lt!20790 () Int)

(assert (=> d!9957 (>= lt!20790 0)))

(declare-fun e!31882 () Int)

(assert (=> d!9957 (= lt!20790 e!31882)))

(declare-fun c!6708 () Bool)

(assert (=> d!9957 (= c!6708 ((_ is Nil!1342) (t!4387 keyValues!2)))))

(assert (=> d!9957 (= (ListPrimitiveSize!59 (t!4387 keyValues!2)) lt!20790)))

(declare-fun b!49592 () Bool)

(assert (=> b!49592 (= e!31882 0)))

(declare-fun b!49593 () Bool)

(assert (=> b!49593 (= e!31882 (+ 1 (ListPrimitiveSize!59 (t!4387 (t!4387 keyValues!2)))))))

(assert (= (and d!9957 c!6708) b!49592))

(assert (= (and d!9957 (not c!6708)) b!49593))

(declare-fun m!42963 () Bool)

(assert (=> b!49593 m!42963))

(assert (=> b!49570 d!9957))

(declare-fun d!9967 () Bool)

(declare-fun lt!20792 () Int)

(assert (=> d!9967 (>= lt!20792 0)))

(declare-fun e!31884 () Int)

(assert (=> d!9967 (= lt!20792 e!31884)))

(declare-fun c!6710 () Bool)

(assert (=> d!9967 (= c!6710 ((_ is Nil!1342) keyValues!2))))

(assert (=> d!9967 (= (ListPrimitiveSize!59 keyValues!2) lt!20792)))

(declare-fun b!49596 () Bool)

(assert (=> b!49596 (= e!31884 0)))

(declare-fun b!49597 () Bool)

(assert (=> b!49597 (= e!31884 (+ 1 (ListPrimitiveSize!59 (t!4387 keyValues!2))))))

(assert (= (and d!9967 c!6710) b!49596))

(assert (= (and d!9967 (not c!6710)) b!49597))

(assert (=> b!49597 m!42943))

(assert (=> b!49570 d!9967))

(declare-fun d!9971 () Bool)

(declare-fun e!31900 () Bool)

(assert (=> d!9971 e!31900))

(declare-fun res!28659 () Bool)

(assert (=> d!9971 (=> (not res!28659) (not e!31900))))

(declare-fun lt!20827 () ListLongMap!1263)

(declare-fun contains!616 (ListLongMap!1263 (_ BitVec 64)) Bool)

(assert (=> d!9971 (= res!28659 (contains!616 lt!20827 (_1!932 (h!1921 keyValues!2))))))

(declare-fun lt!20825 () List!1345)

(assert (=> d!9971 (= lt!20827 (ListLongMap!1264 lt!20825))))

(declare-datatypes ((Unit!1378 0))(
  ( (Unit!1379) )
))
(declare-fun lt!20828 () Unit!1378)

(declare-fun lt!20826 () Unit!1378)

(assert (=> d!9971 (= lt!20828 lt!20826)))

(declare-datatypes ((Option!125 0))(
  ( (Some!124 (v!2147 B!1018)) (None!123) )
))
(declare-fun getValueByKey!119 (List!1345 (_ BitVec 64)) Option!125)

(assert (=> d!9971 (= (getValueByKey!119 lt!20825 (_1!932 (h!1921 keyValues!2))) (Some!124 (_2!932 (h!1921 keyValues!2))))))

(declare-fun lemmaContainsTupThenGetReturnValue!39 (List!1345 (_ BitVec 64) B!1018) Unit!1378)

(assert (=> d!9971 (= lt!20826 (lemmaContainsTupThenGetReturnValue!39 lt!20825 (_1!932 (h!1921 keyValues!2)) (_2!932 (h!1921 keyValues!2))))))

(declare-fun insertStrictlySorted!42 (List!1345 (_ BitVec 64) B!1018) List!1345)

(assert (=> d!9971 (= lt!20825 (insertStrictlySorted!42 (toList!647 thiss!210) (_1!932 (h!1921 keyValues!2)) (_2!932 (h!1921 keyValues!2))))))

(assert (=> d!9971 (= (+!77 thiss!210 (h!1921 keyValues!2)) lt!20827)))

(declare-fun b!49626 () Bool)

(declare-fun res!28660 () Bool)

(assert (=> b!49626 (=> (not res!28660) (not e!31900))))

(assert (=> b!49626 (= res!28660 (= (getValueByKey!119 (toList!647 lt!20827) (_1!932 (h!1921 keyValues!2))) (Some!124 (_2!932 (h!1921 keyValues!2)))))))

(declare-fun b!49627 () Bool)

(declare-fun contains!618 (List!1345 tuple2!1844) Bool)

(assert (=> b!49627 (= e!31900 (contains!618 (toList!647 lt!20827) (h!1921 keyValues!2)))))

(assert (= (and d!9971 res!28659) b!49626))

(assert (= (and b!49626 res!28660) b!49627))

(declare-fun m!42979 () Bool)

(assert (=> d!9971 m!42979))

(declare-fun m!42981 () Bool)

(assert (=> d!9971 m!42981))

(declare-fun m!42983 () Bool)

(assert (=> d!9971 m!42983))

