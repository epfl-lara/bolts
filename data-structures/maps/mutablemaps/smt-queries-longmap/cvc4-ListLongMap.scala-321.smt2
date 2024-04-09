; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5918 () Bool)

(assert start!5918)

(declare-fun b_free!1391 () Bool)

(declare-fun b_next!1391 () Bool)

(assert (=> start!5918 (= b_free!1391 (not b_next!1391))))

(declare-fun tp!5774 () Bool)

(declare-fun b_and!2441 () Bool)

(assert (=> start!5918 (= tp!5774 b_and!2441)))

(declare-fun b!41531 () Bool)

(declare-fun res!24670 () Bool)

(declare-fun e!26298 () Bool)

(assert (=> b!41531 (=> res!24670 e!26298)))

(declare-datatypes ((V!2133 0))(
  ( (V!2134 (val!929 Int)) )
))
(declare-datatypes ((tuple2!1516 0))(
  ( (tuple2!1517 (_1!768 (_ BitVec 64)) (_2!768 V!2133)) )
))
(declare-datatypes ((List!1096 0))(
  ( (Nil!1093) (Cons!1092 (h!1669 tuple2!1516) (t!3991 List!1096)) )
))
(declare-datatypes ((ListLongMap!1097 0))(
  ( (ListLongMap!1098 (toList!564 List!1096)) )
))
(declare-fun lt!16460 () ListLongMap!1097)

(declare-fun isEmpty!249 (List!1096) Bool)

(assert (=> b!41531 (= res!24670 (isEmpty!249 (toList!564 lt!16460)))))

(declare-fun res!24671 () Bool)

(declare-fun e!26297 () Bool)

(assert (=> start!5918 (=> (not res!24671) (not e!26297))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5918 (= res!24671 (validMask!0 mask!853))))

(assert (=> start!5918 e!26297))

(assert (=> start!5918 true))

(assert (=> start!5918 tp!5774))

(declare-fun b!41530 () Bool)

(assert (=> b!41530 (= e!26297 (not e!26298))))

(declare-fun res!24672 () Bool)

(assert (=> b!41530 (=> res!24672 e!26298)))

(assert (=> b!41530 (= res!24672 (= lt!16460 (ListLongMap!1098 Nil!1093)))))

(declare-fun lt!16458 () V!2133)

(declare-datatypes ((ValueCell!643 0))(
  ( (ValueCellFull!643 (v!2012 V!2133)) (EmptyCell!643) )
))
(declare-datatypes ((array!2643 0))(
  ( (array!2644 (arr!1265 (Array (_ BitVec 32) ValueCell!643)) (size!1417 (_ BitVec 32))) )
))
(declare-fun lt!16457 () array!2643)

(declare-datatypes ((array!2645 0))(
  ( (array!2646 (arr!1266 (Array (_ BitVec 32) (_ BitVec 64))) (size!1418 (_ BitVec 32))) )
))
(declare-fun lt!16462 () array!2645)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((LongMapFixedSize!266 0))(
  ( (LongMapFixedSize!267 (defaultEntry!1823 Int) (mask!5228 (_ BitVec 32)) (extraKeys!1714 (_ BitVec 32)) (zeroValue!1741 V!2133) (minValue!1741 V!2133) (_size!182 (_ BitVec 32)) (_keys!3330 array!2645) (_values!1806 array!2643) (_vacant!182 (_ BitVec 32))) )
))
(declare-fun map!714 (LongMapFixedSize!266) ListLongMap!1097)

(assert (=> b!41530 (= lt!16460 (map!714 (LongMapFixedSize!267 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16458 lt!16458 #b00000000000000000000000000000000 lt!16462 lt!16457 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1097 0))(
  ( (Nil!1094) (Cons!1093 (h!1670 (_ BitVec 64)) (t!3992 List!1097)) )
))
(declare-fun arrayNoDuplicates!0 (array!2645 (_ BitVec 32) List!1097) Bool)

(assert (=> b!41530 (arrayNoDuplicates!0 lt!16462 #b00000000000000000000000000000000 Nil!1094)))

(declare-datatypes ((Unit!1023 0))(
  ( (Unit!1024) )
))
(declare-fun lt!16455 () Unit!1023)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2645 (_ BitVec 32) (_ BitVec 32) List!1097) Unit!1023)

(assert (=> b!41530 (= lt!16455 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16462 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2645 (_ BitVec 32)) Bool)

(assert (=> b!41530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16462 mask!853)))

(declare-fun lt!16456 () Unit!1023)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2645 (_ BitVec 32) (_ BitVec 32)) Unit!1023)

(assert (=> b!41530 (= lt!16456 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16462 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2645 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41530 (= (arrayCountValidKeys!0 lt!16462 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16459 () Unit!1023)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2645 (_ BitVec 32) (_ BitVec 32)) Unit!1023)

(assert (=> b!41530 (= lt!16459 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16462 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41530 (= lt!16457 (array!2644 ((as const (Array (_ BitVec 32) ValueCell!643)) EmptyCell!643) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41530 (= lt!16462 (array!2646 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!204 (Int (_ BitVec 64)) V!2133)

(assert (=> b!41530 (= lt!16458 (dynLambda!204 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41533 () Bool)

(assert (=> b!41533 (= e!26298 true)))

(declare-fun lt!16461 () Bool)

(declare-fun contains!530 (ListLongMap!1097 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!322 (array!2645 array!2643 (_ BitVec 32) (_ BitVec 32) V!2133 V!2133 (_ BitVec 32) Int) ListLongMap!1097)

(declare-fun head!859 (List!1096) tuple2!1516)

(assert (=> b!41533 (= lt!16461 (contains!530 (getCurrentListMap!322 lt!16462 lt!16457 mask!853 #b00000000000000000000000000000000 lt!16458 lt!16458 #b00000000000000000000000000000000 defaultEntry!470) (_1!768 (head!859 (toList!564 lt!16460)))))))

(declare-fun b!41532 () Bool)

(declare-fun res!24673 () Bool)

(assert (=> b!41532 (=> res!24673 e!26298)))

(assert (=> b!41532 (= res!24673 (bvslt mask!853 #b00000000000000000000000000000000))))

(assert (= (and start!5918 res!24671) b!41530))

(assert (= (and b!41530 (not res!24672)) b!41531))

(assert (= (and b!41531 (not res!24670)) b!41532))

(assert (= (and b!41532 (not res!24673)) b!41533))

(declare-fun b_lambda!2135 () Bool)

(assert (=> (not b_lambda!2135) (not b!41530)))

(declare-fun t!3990 () Bool)

(declare-fun tb!881 () Bool)

(assert (=> (and start!5918 (= defaultEntry!470 defaultEntry!470) t!3990) tb!881))

(declare-fun result!1505 () Bool)

(declare-fun tp_is_empty!1781 () Bool)

(assert (=> tb!881 (= result!1505 tp_is_empty!1781)))

(assert (=> b!41530 t!3990))

(declare-fun b_and!2443 () Bool)

(assert (= b_and!2441 (and (=> t!3990 result!1505) b_and!2443)))

(declare-fun m!34851 () Bool)

(assert (=> b!41531 m!34851))

(declare-fun m!34853 () Bool)

(assert (=> start!5918 m!34853))

(declare-fun m!34855 () Bool)

(assert (=> b!41530 m!34855))

(declare-fun m!34857 () Bool)

(assert (=> b!41530 m!34857))

(declare-fun m!34859 () Bool)

(assert (=> b!41530 m!34859))

(declare-fun m!34861 () Bool)

(assert (=> b!41530 m!34861))

(declare-fun m!34863 () Bool)

(assert (=> b!41530 m!34863))

(declare-fun m!34865 () Bool)

(assert (=> b!41530 m!34865))

(declare-fun m!34867 () Bool)

(assert (=> b!41530 m!34867))

(declare-fun m!34869 () Bool)

(assert (=> b!41530 m!34869))

(declare-fun m!34871 () Bool)

(assert (=> b!41533 m!34871))

(declare-fun m!34873 () Bool)

(assert (=> b!41533 m!34873))

(assert (=> b!41533 m!34871))

(declare-fun m!34875 () Bool)

(assert (=> b!41533 m!34875))

(push 1)

(assert (not start!5918))

(assert (not b!41530))

(assert (not b!41533))

(assert b_and!2443)

(assert (not b_next!1391))

(assert (not b_lambda!2135))

(assert tp_is_empty!1781)

(assert (not b!41531))

(check-sat)

