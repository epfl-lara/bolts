; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6382 () Bool)

(assert start!6382)

(declare-fun b_free!1465 () Bool)

(declare-fun b_next!1465 () Bool)

(assert (=> start!6382 (= b_free!1465 (not b_next!1465))))

(declare-fun tp!5885 () Bool)

(declare-fun b_and!2589 () Bool)

(assert (=> start!6382 (= tp!5885 b_and!2589)))

(declare-fun res!25435 () Bool)

(declare-fun e!27132 () Bool)

(assert (=> start!6382 (=> (not res!25435) (not e!27132))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6382 (= res!25435 (validMask!0 mask!853))))

(assert (=> start!6382 e!27132))

(assert (=> start!6382 true))

(assert (=> start!6382 tp!5885))

(declare-fun b!42801 () Bool)

(assert (=> b!42801 (= e!27132 (not true))))

(declare-datatypes ((V!2261 0))(
  ( (V!2262 (val!966 Int)) )
))
(declare-datatypes ((tuple2!1590 0))(
  ( (tuple2!1591 (_1!805 (_ BitVec 64)) (_2!805 V!2261)) )
))
(declare-datatypes ((List!1176 0))(
  ( (Nil!1173) (Cons!1172 (h!1749 tuple2!1590) (t!4145 List!1176)) )
))
(declare-datatypes ((ListLongMap!1171 0))(
  ( (ListLongMap!1172 (toList!601 List!1176)) )
))
(declare-fun lt!17980 () ListLongMap!1171)

(declare-fun defaultEntry!470 () Int)

(declare-fun lt!17979 () V!2261)

(declare-datatypes ((array!2851 0))(
  ( (array!2852 (arr!1369 (Array (_ BitVec 32) (_ BitVec 64))) (size!1548 (_ BitVec 32))) )
))
(declare-fun lt!17978 () array!2851)

(declare-datatypes ((ValueCell!680 0))(
  ( (ValueCellFull!680 (v!2055 V!2261)) (EmptyCell!680) )
))
(declare-datatypes ((array!2853 0))(
  ( (array!2854 (arr!1370 (Array (_ BitVec 32) ValueCell!680)) (size!1549 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!340 0))(
  ( (LongMapFixedSize!341 (defaultEntry!1863 Int) (mask!5391 (_ BitVec 32)) (extraKeys!1754 (_ BitVec 32)) (zeroValue!1781 V!2261) (minValue!1781 V!2261) (_size!219 (_ BitVec 32)) (_keys!3406 array!2851) (_values!1846 array!2853) (_vacant!219 (_ BitVec 32))) )
))
(declare-fun map!805 (LongMapFixedSize!340) ListLongMap!1171)

(assert (=> b!42801 (= lt!17980 (map!805 (LongMapFixedSize!341 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17979 lt!17979 #b00000000000000000000000000000000 lt!17978 (array!2854 ((as const (Array (_ BitVec 32) ValueCell!680)) EmptyCell!680) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1177 0))(
  ( (Nil!1174) (Cons!1173 (h!1750 (_ BitVec 64)) (t!4146 List!1177)) )
))
(declare-fun arrayNoDuplicates!0 (array!2851 (_ BitVec 32) List!1177) Bool)

(assert (=> b!42801 (arrayNoDuplicates!0 lt!17978 #b00000000000000000000000000000000 Nil!1174)))

(declare-datatypes ((Unit!1163 0))(
  ( (Unit!1164) )
))
(declare-fun lt!17977 () Unit!1163)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2851 (_ BitVec 32) (_ BitVec 32) List!1177) Unit!1163)

(assert (=> b!42801 (= lt!17977 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17978 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2851 (_ BitVec 32)) Bool)

(assert (=> b!42801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17978 mask!853)))

(declare-fun lt!17976 () Unit!1163)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2851 (_ BitVec 32) (_ BitVec 32)) Unit!1163)

(assert (=> b!42801 (= lt!17976 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17978 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2851 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42801 (= (arrayCountValidKeys!0 lt!17978 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17975 () Unit!1163)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2851 (_ BitVec 32) (_ BitVec 32)) Unit!1163)

(assert (=> b!42801 (= lt!17975 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17978 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42801 (= lt!17978 (array!2852 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!241 (Int (_ BitVec 64)) V!2261)

(assert (=> b!42801 (= lt!17979 (dynLambda!241 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6382 res!25435) b!42801))

(declare-fun b_lambda!2221 () Bool)

(assert (=> (not b_lambda!2221) (not b!42801)))

(declare-fun t!4144 () Bool)

(declare-fun tb!955 () Bool)

(assert (=> (and start!6382 (= defaultEntry!470 defaultEntry!470) t!4144) tb!955))

(declare-fun result!1653 () Bool)

(declare-fun tp_is_empty!1855 () Bool)

(assert (=> tb!955 (= result!1653 tp_is_empty!1855)))

(assert (=> b!42801 t!4144))

(declare-fun b_and!2591 () Bool)

(assert (= b_and!2589 (and (=> t!4144 result!1653) b_and!2591)))

(declare-fun m!36539 () Bool)

(assert (=> start!6382 m!36539))

(declare-fun m!36541 () Bool)

(assert (=> b!42801 m!36541))

(declare-fun m!36543 () Bool)

(assert (=> b!42801 m!36543))

(declare-fun m!36545 () Bool)

(assert (=> b!42801 m!36545))

(declare-fun m!36547 () Bool)

(assert (=> b!42801 m!36547))

(declare-fun m!36549 () Bool)

(assert (=> b!42801 m!36549))

(declare-fun m!36551 () Bool)

(assert (=> b!42801 m!36551))

(declare-fun m!36553 () Bool)

(assert (=> b!42801 m!36553))

(declare-fun m!36555 () Bool)

(assert (=> b!42801 m!36555))

(push 1)

(assert (not b!42801))

(assert (not start!6382))

(assert tp_is_empty!1855)

(assert (not b_lambda!2221))

(assert (not b_next!1465))

(assert b_and!2591)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2591)

(assert (not b_next!1465))

(check-sat)

(pop 1)

