; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185342 () Bool)

(assert start!185342)

(declare-fun res!832125 () Bool)

(declare-fun e!1185942 () Bool)

(assert (=> start!185342 (=> (not res!832125) (not e!1185942))))

(declare-datatypes ((K!3720 0))(
  ( (K!3721 (val!5875 Int)) )
))
(declare-datatypes ((B!1621 0))(
  ( (B!1622 (val!5876 Int)) )
))
(declare-datatypes ((tuple2!19834 0))(
  ( (tuple2!19835 (_1!11344 K!3720) (_2!11344 B!1621)) )
))
(declare-datatypes ((List!20679 0))(
  ( (Nil!20599) (Cons!20599 (h!26000 tuple2!19834) (t!172544 List!20679)) )
))
(declare-fun keyValues!2 () List!20679)

(get-info :version)

(assert (=> start!185342 (= res!832125 (not ((_ is Nil!20599) keyValues!2)))))

(assert (=> start!185342 e!1185942))

(declare-fun e!1185940 () Bool)

(assert (=> start!185342 e!1185940))

(declare-datatypes ((ListMap!569 0))(
  ( (ListMap!570 (toList!985 List!20679)) )
))
(declare-fun thiss!41866 () ListMap!569)

(declare-fun e!1185941 () Bool)

(declare-fun inv!27010 (ListMap!569) Bool)

(assert (=> start!185342 (and (inv!27010 thiss!41866) e!1185941)))

(declare-fun b!1856470 () Bool)

(declare-fun ListPrimitiveSize!134 (List!20679) Int)

(assert (=> b!1856470 (= e!1185942 (>= (ListPrimitiveSize!134 (t!172544 keyValues!2)) (ListPrimitiveSize!134 keyValues!2)))))

(declare-fun lt!716942 () ListMap!569)

(declare-fun +!38 (ListMap!569 tuple2!19834) ListMap!569)

(assert (=> b!1856470 (= lt!716942 (+!38 thiss!41866 (h!26000 keyValues!2)))))

(declare-fun tp_is_empty!8551 () Bool)

(declare-fun tp!528164 () Bool)

(declare-fun b!1856471 () Bool)

(declare-fun tp_is_empty!8549 () Bool)

(assert (=> b!1856471 (= e!1185940 (and tp_is_empty!8549 tp_is_empty!8551 tp!528164))))

(declare-fun b!1856472 () Bool)

(declare-fun tp!528163 () Bool)

(assert (=> b!1856472 (= e!1185941 tp!528163)))

(assert (= (and start!185342 res!832125) b!1856470))

(assert (= (and start!185342 ((_ is Cons!20599) keyValues!2)) b!1856471))

(assert (= start!185342 b!1856472))

(declare-fun m!2281457 () Bool)

(assert (=> start!185342 m!2281457))

(declare-fun m!2281459 () Bool)

(assert (=> b!1856470 m!2281459))

(declare-fun m!2281461 () Bool)

(assert (=> b!1856470 m!2281461))

(declare-fun m!2281463 () Bool)

(assert (=> b!1856470 m!2281463))

(check-sat tp_is_empty!8551 (not b!1856471) tp_is_empty!8549 (not b!1856470) (not start!185342) (not b!1856472))
(check-sat)
(get-model)

(declare-fun d!566858 () Bool)

(declare-fun invariantList!260 (List!20679) Bool)

(assert (=> d!566858 (= (inv!27010 thiss!41866) (invariantList!260 (toList!985 thiss!41866)))))

(declare-fun bs!410665 () Bool)

(assert (= bs!410665 d!566858))

(declare-fun m!2281467 () Bool)

(assert (=> bs!410665 m!2281467))

(assert (=> start!185342 d!566858))

(declare-fun d!566862 () Bool)

(declare-fun lt!716949 () Int)

(assert (=> d!566862 (>= lt!716949 0)))

(declare-fun e!1185949 () Int)

(assert (=> d!566862 (= lt!716949 e!1185949)))

(declare-fun c!302448 () Bool)

(assert (=> d!566862 (= c!302448 ((_ is Nil!20599) (t!172544 keyValues!2)))))

(assert (=> d!566862 (= (ListPrimitiveSize!134 (t!172544 keyValues!2)) lt!716949)))

(declare-fun b!1856485 () Bool)

(assert (=> b!1856485 (= e!1185949 0)))

(declare-fun b!1856486 () Bool)

(assert (=> b!1856486 (= e!1185949 (+ 1 (ListPrimitiveSize!134 (t!172544 (t!172544 keyValues!2)))))))

(assert (= (and d!566862 c!302448) b!1856485))

(assert (= (and d!566862 (not c!302448)) b!1856486))

(declare-fun m!2281471 () Bool)

(assert (=> b!1856486 m!2281471))

(assert (=> b!1856470 d!566862))

(declare-fun d!566868 () Bool)

(declare-fun lt!716950 () Int)

(assert (=> d!566868 (>= lt!716950 0)))

(declare-fun e!1185950 () Int)

(assert (=> d!566868 (= lt!716950 e!1185950)))

(declare-fun c!302449 () Bool)

(assert (=> d!566868 (= c!302449 ((_ is Nil!20599) keyValues!2))))

(assert (=> d!566868 (= (ListPrimitiveSize!134 keyValues!2) lt!716950)))

(declare-fun b!1856487 () Bool)

(assert (=> b!1856487 (= e!1185950 0)))

(declare-fun b!1856488 () Bool)

(assert (=> b!1856488 (= e!1185950 (+ 1 (ListPrimitiveSize!134 (t!172544 keyValues!2))))))

(assert (= (and d!566868 c!302449) b!1856487))

(assert (= (and d!566868 (not c!302449)) b!1856488))

(assert (=> b!1856488 m!2281459))

(assert (=> b!1856470 d!566868))

(declare-fun d!566870 () Bool)

(declare-fun e!1185960 () Bool)

(assert (=> d!566870 e!1185960))

(declare-fun res!832137 () Bool)

(assert (=> d!566870 (=> (not res!832137) (not e!1185960))))

(declare-fun lt!716973 () ListMap!569)

(declare-fun contains!3797 (ListMap!569 K!3720) Bool)

(assert (=> d!566870 (= res!832137 (contains!3797 lt!716973 (_1!11344 (h!26000 keyValues!2))))))

(declare-fun lt!716971 () List!20679)

(assert (=> d!566870 (= lt!716973 (ListMap!570 lt!716971))))

(declare-datatypes ((Unit!35202 0))(
  ( (Unit!35203) )
))
(declare-fun lt!716974 () Unit!35202)

(declare-fun lt!716972 () Unit!35202)

(assert (=> d!566870 (= lt!716974 lt!716972)))

(declare-datatypes ((Option!4234 0))(
  ( (None!4233) (Some!4233 (v!26036 B!1621)) )
))
(declare-fun getValueByKey!28 (List!20679 K!3720) Option!4234)

(assert (=> d!566870 (= (getValueByKey!28 lt!716971 (_1!11344 (h!26000 keyValues!2))) (Some!4233 (_2!11344 (h!26000 keyValues!2))))))

(declare-fun lemmaContainsTupThenGetReturnValue!14 (List!20679 K!3720 B!1621) Unit!35202)

(assert (=> d!566870 (= lt!716972 (lemmaContainsTupThenGetReturnValue!14 lt!716971 (_1!11344 (h!26000 keyValues!2)) (_2!11344 (h!26000 keyValues!2))))))

(declare-fun insertNoDuplicatedKeys!5 (List!20679 K!3720 B!1621) List!20679)

(assert (=> d!566870 (= lt!716971 (insertNoDuplicatedKeys!5 (toList!985 thiss!41866) (_1!11344 (h!26000 keyValues!2)) (_2!11344 (h!26000 keyValues!2))))))

(assert (=> d!566870 (= (+!38 thiss!41866 (h!26000 keyValues!2)) lt!716973)))

(declare-fun b!1856505 () Bool)

(declare-fun res!832136 () Bool)

(assert (=> b!1856505 (=> (not res!832136) (not e!1185960))))

(assert (=> b!1856505 (= res!832136 (= (getValueByKey!28 (toList!985 lt!716973) (_1!11344 (h!26000 keyValues!2))) (Some!4233 (_2!11344 (h!26000 keyValues!2)))))))

(declare-fun b!1856506 () Bool)

(declare-fun contains!3799 (List!20679 tuple2!19834) Bool)

(assert (=> b!1856506 (= e!1185960 (contains!3799 (toList!985 lt!716973) (h!26000 keyValues!2)))))

(assert (= (and d!566870 res!832137) b!1856505))

(assert (= (and b!1856505 res!832136) b!1856506))

(declare-fun m!2281485 () Bool)

(assert (=> d!566870 m!2281485))

(declare-fun m!2281487 () Bool)

(assert (=> d!566870 m!2281487))

(declare-fun m!2281489 () Bool)

(assert (=> d!566870 m!2281489))

(declare-fun m!2281491 () Bool)

(assert (=> d!566870 m!2281491))

(declare-fun m!2281493 () Bool)

(assert (=> b!1856505 m!2281493))

(declare-fun m!2281495 () Bool)

(assert (=> b!1856506 m!2281495))

(assert (=> b!1856470 d!566870))

(declare-fun b!1856511 () Bool)

(declare-fun e!1185963 () Bool)

(declare-fun tp!528171 () Bool)

(assert (=> b!1856511 (= e!1185963 (and tp_is_empty!8549 tp_is_empty!8551 tp!528171))))

(assert (=> b!1856471 (= tp!528164 e!1185963)))

(assert (= (and b!1856471 ((_ is Cons!20599) (t!172544 keyValues!2))) b!1856511))

(declare-fun b!1856512 () Bool)

(declare-fun e!1185964 () Bool)

(declare-fun tp!528172 () Bool)

(assert (=> b!1856512 (= e!1185964 (and tp_is_empty!8549 tp_is_empty!8551 tp!528172))))

(assert (=> b!1856472 (= tp!528163 e!1185964)))

(assert (= (and b!1856472 ((_ is Cons!20599) (toList!985 thiss!41866))) b!1856512))

(check-sat tp_is_empty!8551 (not d!566858) (not d!566870) tp_is_empty!8549 (not b!1856512) (not b!1856511) (not b!1856488) (not b!1856505) (not b!1856486) (not b!1856506))
(check-sat)
