; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13538 () Bool)

(assert start!13538)

(declare-fun res!60662 () Bool)

(declare-fun e!75517 () Bool)

(assert (=> start!13538 (=> (not res!60662) (not e!75517))))

(declare-datatypes ((B!753 0))(
  ( (B!754 (val!862 Int)) )
))
(declare-datatypes ((List!2180 0))(
  ( (Nil!2174) (Cons!2174 (h!7571 B!753) (t!22766 List!2180)) )
))
(declare-fun baseList!9 () List!2180)

(declare-fun noDuplicate!70 (List!2180) Bool)

(assert (=> start!13538 (= res!60662 (noDuplicate!70 baseList!9))))

(assert (=> start!13538 e!75517))

(declare-fun e!75515 () Bool)

(assert (=> start!13538 e!75515))

(declare-fun e!75516 () Bool)

(assert (=> start!13538 e!75516))

(declare-fun b!130956 () Bool)

(declare-fun newList!20 () List!2180)

(declare-fun ListPrimitiveSize!18 (List!2180) Int)

(assert (=> b!130956 (= e!75517 (< (ListPrimitiveSize!18 newList!20) 0))))

(declare-fun b!130957 () Bool)

(declare-fun tp_is_empty!1397 () Bool)

(declare-fun tp!70354 () Bool)

(assert (=> b!130957 (= e!75515 (and tp_is_empty!1397 tp!70354))))

(declare-fun b!130958 () Bool)

(declare-fun tp!70353 () Bool)

(assert (=> b!130958 (= e!75516 (and tp_is_empty!1397 tp!70353))))

(assert (= (and start!13538 res!60662) b!130956))

(get-info :version)

(assert (= (and start!13538 ((_ is Cons!2174) baseList!9)) b!130957))

(assert (= (and start!13538 ((_ is Cons!2174) newList!20)) b!130958))

(declare-fun m!115665 () Bool)

(assert (=> start!13538 m!115665))

(declare-fun m!115667 () Bool)

(assert (=> b!130956 m!115667))

(check-sat tp_is_empty!1397 (not b!130958) (not b!130956) (not start!13538) (not b!130957))
(check-sat)
(get-model)

(declare-fun d!30894 () Bool)

(declare-fun res!60667 () Bool)

(declare-fun e!75525 () Bool)

(assert (=> d!30894 (=> res!60667 e!75525)))

(assert (=> d!30894 (= res!60667 ((_ is Nil!2174) baseList!9))))

(assert (=> d!30894 (= (noDuplicate!70 baseList!9) e!75525)))

(declare-fun b!130969 () Bool)

(declare-fun e!75526 () Bool)

(assert (=> b!130969 (= e!75525 e!75526)))

(declare-fun res!60668 () Bool)

(assert (=> b!130969 (=> (not res!60668) (not e!75526))))

(declare-fun contains!353 (List!2180 B!753) Bool)

(assert (=> b!130969 (= res!60668 (not (contains!353 (t!22766 baseList!9) (h!7571 baseList!9))))))

(declare-fun b!130970 () Bool)

(assert (=> b!130970 (= e!75526 (noDuplicate!70 (t!22766 baseList!9)))))

(assert (= (and d!30894 (not res!60667)) b!130969))

(assert (= (and b!130969 res!60668) b!130970))

(declare-fun m!115671 () Bool)

(assert (=> b!130969 m!115671))

(declare-fun m!115673 () Bool)

(assert (=> b!130970 m!115673))

(assert (=> start!13538 d!30894))

(declare-fun d!30898 () Bool)

(declare-fun lt!39542 () Int)

(assert (=> d!30898 (>= lt!39542 0)))

(declare-fun e!75535 () Int)

(assert (=> d!30898 (= lt!39542 e!75535)))

(declare-fun c!28320 () Bool)

(assert (=> d!30898 (= c!28320 ((_ is Nil!2174) newList!20))))

(assert (=> d!30898 (= (ListPrimitiveSize!18 newList!20) lt!39542)))

(declare-fun b!130981 () Bool)

(assert (=> b!130981 (= e!75535 0)))

(declare-fun b!130982 () Bool)

(assert (=> b!130982 (= e!75535 (+ 1 (ListPrimitiveSize!18 (t!22766 newList!20))))))

(assert (= (and d!30898 c!28320) b!130981))

(assert (= (and d!30898 (not c!28320)) b!130982))

(declare-fun m!115679 () Bool)

(assert (=> b!130982 m!115679))

(assert (=> b!130956 d!30898))

(declare-fun b!130993 () Bool)

(declare-fun e!75542 () Bool)

(declare-fun tp!70361 () Bool)

(assert (=> b!130993 (= e!75542 (and tp_is_empty!1397 tp!70361))))

(assert (=> b!130957 (= tp!70354 e!75542)))

(assert (= (and b!130957 ((_ is Cons!2174) (t!22766 baseList!9))) b!130993))

(declare-fun b!130994 () Bool)

(declare-fun e!75543 () Bool)

(declare-fun tp!70362 () Bool)

(assert (=> b!130994 (= e!75543 (and tp_is_empty!1397 tp!70362))))

(assert (=> b!130958 (= tp!70353 e!75543)))

(assert (= (and b!130958 ((_ is Cons!2174) (t!22766 newList!20))) b!130994))

(check-sat (not b!130982) tp_is_empty!1397 (not b!130994) (not b!130970) (not b!130993) (not b!130969))
(check-sat)
