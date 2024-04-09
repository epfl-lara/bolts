; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6460 () Bool)

(assert start!6460)

(declare-fun b_free!1489 () Bool)

(declare-fun b_next!1489 () Bool)

(assert (=> start!6460 (= b_free!1489 (not b_next!1489))))

(declare-fun tp!5921 () Bool)

(declare-fun b_and!2637 () Bool)

(assert (=> start!6460 (= tp!5921 b_and!2637)))

(declare-fun res!25534 () Bool)

(declare-fun e!27258 () Bool)

(assert (=> start!6460 (=> (not res!25534) (not e!27258))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6460 (= res!25534 (validMask!0 mask!853))))

(assert (=> start!6460 e!27258))

(assert (=> start!6460 true))

(assert (=> start!6460 tp!5921))

(declare-fun b!42996 () Bool)

(assert (=> b!42996 (= e!27258 (not true))))

(declare-datatypes ((array!2899 0))(
  ( (array!2900 (arr!1393 (Array (_ BitVec 32) (_ BitVec 64))) (size!1578 (_ BitVec 32))) )
))
(declare-fun lt!18256 () array!2899)

(declare-datatypes ((V!2293 0))(
  ( (V!2294 (val!978 Int)) )
))
(declare-datatypes ((tuple2!1614 0))(
  ( (tuple2!1615 (_1!817 (_ BitVec 64)) (_2!817 V!2293)) )
))
(declare-datatypes ((List!1200 0))(
  ( (Nil!1197) (Cons!1196 (h!1773 tuple2!1614) (t!4193 List!1200)) )
))
(declare-datatypes ((ListLongMap!1195 0))(
  ( (ListLongMap!1196 (toList!613 List!1200)) )
))
(declare-fun lt!18257 () ListLongMap!1195)

(declare-fun lt!18255 () V!2293)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!692 0))(
  ( (ValueCellFull!692 (v!2067 V!2293)) (EmptyCell!692) )
))
(declare-datatypes ((array!2901 0))(
  ( (array!2902 (arr!1394 (Array (_ BitVec 32) ValueCell!692)) (size!1579 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!364 0))(
  ( (LongMapFixedSize!365 (defaultEntry!1875 Int) (mask!5420 (_ BitVec 32)) (extraKeys!1766 (_ BitVec 32)) (zeroValue!1793 V!2293) (minValue!1793 V!2293) (_size!231 (_ BitVec 32)) (_keys!3424 array!2899) (_values!1858 array!2901) (_vacant!231 (_ BitVec 32))) )
))
(declare-fun map!825 (LongMapFixedSize!364) ListLongMap!1195)

(assert (=> b!42996 (= lt!18257 (map!825 (LongMapFixedSize!365 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18255 lt!18255 #b00000000000000000000000000000000 lt!18256 (array!2902 ((as const (Array (_ BitVec 32) ValueCell!692)) EmptyCell!692) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1201 0))(
  ( (Nil!1198) (Cons!1197 (h!1774 (_ BitVec 64)) (t!4194 List!1201)) )
))
(declare-fun arrayNoDuplicates!0 (array!2899 (_ BitVec 32) List!1201) Bool)

(assert (=> b!42996 (arrayNoDuplicates!0 lt!18256 #b00000000000000000000000000000000 Nil!1198)))

(declare-datatypes ((Unit!1187 0))(
  ( (Unit!1188) )
))
(declare-fun lt!18259 () Unit!1187)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2899 (_ BitVec 32) (_ BitVec 32) List!1201) Unit!1187)

(assert (=> b!42996 (= lt!18259 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18256 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1198))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2899 (_ BitVec 32)) Bool)

(assert (=> b!42996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18256 mask!853)))

(declare-fun lt!18254 () Unit!1187)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2899 (_ BitVec 32) (_ BitVec 32)) Unit!1187)

(assert (=> b!42996 (= lt!18254 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18256 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2899 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42996 (= (arrayCountValidKeys!0 lt!18256 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18258 () Unit!1187)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2899 (_ BitVec 32) (_ BitVec 32)) Unit!1187)

(assert (=> b!42996 (= lt!18258 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18256 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42996 (= lt!18256 (array!2900 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!253 (Int (_ BitVec 64)) V!2293)

(assert (=> b!42996 (= lt!18255 (dynLambda!253 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6460 res!25534) b!42996))

(declare-fun b_lambda!2251 () Bool)

(assert (=> (not b_lambda!2251) (not b!42996)))

(declare-fun t!4192 () Bool)

(declare-fun tb!979 () Bool)

(assert (=> (and start!6460 (= defaultEntry!470 defaultEntry!470) t!4192) tb!979))

(declare-fun result!1701 () Bool)

(declare-fun tp_is_empty!1879 () Bool)

(assert (=> tb!979 (= result!1701 tp_is_empty!1879)))

(assert (=> b!42996 t!4192))

(declare-fun b_and!2639 () Bool)

(assert (= b_and!2637 (and (=> t!4192 result!1701) b_and!2639)))

(declare-fun m!36839 () Bool)

(assert (=> start!6460 m!36839))

(declare-fun m!36841 () Bool)

(assert (=> b!42996 m!36841))

(declare-fun m!36843 () Bool)

(assert (=> b!42996 m!36843))

(declare-fun m!36845 () Bool)

(assert (=> b!42996 m!36845))

(declare-fun m!36847 () Bool)

(assert (=> b!42996 m!36847))

(declare-fun m!36849 () Bool)

(assert (=> b!42996 m!36849))

(declare-fun m!36851 () Bool)

(assert (=> b!42996 m!36851))

(declare-fun m!36853 () Bool)

(assert (=> b!42996 m!36853))

(declare-fun m!36855 () Bool)

(assert (=> b!42996 m!36855))

(push 1)

(assert (not b!42996))

(assert (not b_next!1489))

(assert (not start!6460))

(assert b_and!2639)

(assert (not b_lambda!2251))

(assert tp_is_empty!1879)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2639)

(assert (not b_next!1489))

(check-sat)

(pop 1)

