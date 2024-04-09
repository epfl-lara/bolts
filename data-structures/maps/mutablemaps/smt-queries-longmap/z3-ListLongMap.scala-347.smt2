; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6378 () Bool)

(assert start!6378)

(declare-fun b_free!1461 () Bool)

(declare-fun b_next!1461 () Bool)

(assert (=> start!6378 (= b_free!1461 (not b_next!1461))))

(declare-fun tp!5879 () Bool)

(declare-fun b_and!2581 () Bool)

(assert (=> start!6378 (= tp!5879 b_and!2581)))

(declare-fun res!25429 () Bool)

(declare-fun e!27126 () Bool)

(assert (=> start!6378 (=> (not res!25429) (not e!27126))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6378 (= res!25429 (validMask!0 mask!853))))

(assert (=> start!6378 e!27126))

(assert (=> start!6378 true))

(assert (=> start!6378 tp!5879))

(declare-fun b!42791 () Bool)

(assert (=> b!42791 (= e!27126 (not true))))

(declare-datatypes ((V!2255 0))(
  ( (V!2256 (val!964 Int)) )
))
(declare-datatypes ((tuple2!1586 0))(
  ( (tuple2!1587 (_1!803 (_ BitVec 64)) (_2!803 V!2255)) )
))
(declare-datatypes ((List!1172 0))(
  ( (Nil!1169) (Cons!1168 (h!1745 tuple2!1586) (t!4137 List!1172)) )
))
(declare-datatypes ((ListLongMap!1167 0))(
  ( (ListLongMap!1168 (toList!599 List!1172)) )
))
(declare-fun lt!17943 () ListLongMap!1167)

(declare-datatypes ((array!2843 0))(
  ( (array!2844 (arr!1365 (Array (_ BitVec 32) (_ BitVec 64))) (size!1544 (_ BitVec 32))) )
))
(declare-fun lt!17939 () array!2843)

(declare-fun lt!17940 () V!2255)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!678 0))(
  ( (ValueCellFull!678 (v!2053 V!2255)) (EmptyCell!678) )
))
(declare-datatypes ((array!2845 0))(
  ( (array!2846 (arr!1366 (Array (_ BitVec 32) ValueCell!678)) (size!1545 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!336 0))(
  ( (LongMapFixedSize!337 (defaultEntry!1861 Int) (mask!5387 (_ BitVec 32)) (extraKeys!1752 (_ BitVec 32)) (zeroValue!1779 V!2255) (minValue!1779 V!2255) (_size!217 (_ BitVec 32)) (_keys!3404 array!2843) (_values!1844 array!2845) (_vacant!217 (_ BitVec 32))) )
))
(declare-fun map!801 (LongMapFixedSize!336) ListLongMap!1167)

(assert (=> b!42791 (= lt!17943 (map!801 (LongMapFixedSize!337 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17940 lt!17940 #b00000000000000000000000000000000 lt!17939 (array!2846 ((as const (Array (_ BitVec 32) ValueCell!678)) EmptyCell!678) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1173 0))(
  ( (Nil!1170) (Cons!1169 (h!1746 (_ BitVec 64)) (t!4138 List!1173)) )
))
(declare-fun arrayNoDuplicates!0 (array!2843 (_ BitVec 32) List!1173) Bool)

(assert (=> b!42791 (arrayNoDuplicates!0 lt!17939 #b00000000000000000000000000000000 Nil!1170)))

(declare-datatypes ((Unit!1159 0))(
  ( (Unit!1160) )
))
(declare-fun lt!17942 () Unit!1159)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2843 (_ BitVec 32) (_ BitVec 32) List!1173) Unit!1159)

(assert (=> b!42791 (= lt!17942 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17939 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2843 (_ BitVec 32)) Bool)

(assert (=> b!42791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17939 mask!853)))

(declare-fun lt!17941 () Unit!1159)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2843 (_ BitVec 32) (_ BitVec 32)) Unit!1159)

(assert (=> b!42791 (= lt!17941 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17939 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2843 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42791 (= (arrayCountValidKeys!0 lt!17939 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17944 () Unit!1159)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2843 (_ BitVec 32) (_ BitVec 32)) Unit!1159)

(assert (=> b!42791 (= lt!17944 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17939 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42791 (= lt!17939 (array!2844 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!239 (Int (_ BitVec 64)) V!2255)

(assert (=> b!42791 (= lt!17940 (dynLambda!239 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6378 res!25429) b!42791))

(declare-fun b_lambda!2217 () Bool)

(assert (=> (not b_lambda!2217) (not b!42791)))

(declare-fun t!4136 () Bool)

(declare-fun tb!951 () Bool)

(assert (=> (and start!6378 (= defaultEntry!470 defaultEntry!470) t!4136) tb!951))

(declare-fun result!1645 () Bool)

(declare-fun tp_is_empty!1851 () Bool)

(assert (=> tb!951 (= result!1645 tp_is_empty!1851)))

(assert (=> b!42791 t!4136))

(declare-fun b_and!2583 () Bool)

(assert (= b_and!2581 (and (=> t!4136 result!1645) b_and!2583)))

(declare-fun m!36503 () Bool)

(assert (=> start!6378 m!36503))

(declare-fun m!36505 () Bool)

(assert (=> b!42791 m!36505))

(declare-fun m!36507 () Bool)

(assert (=> b!42791 m!36507))

(declare-fun m!36509 () Bool)

(assert (=> b!42791 m!36509))

(declare-fun m!36511 () Bool)

(assert (=> b!42791 m!36511))

(declare-fun m!36513 () Bool)

(assert (=> b!42791 m!36513))

(declare-fun m!36515 () Bool)

(assert (=> b!42791 m!36515))

(declare-fun m!36517 () Bool)

(assert (=> b!42791 m!36517))

(declare-fun m!36519 () Bool)

(assert (=> b!42791 m!36519))

(check-sat (not b_lambda!2217) (not start!6378) (not b!42791) (not b_next!1461) b_and!2583 tp_is_empty!1851)
(check-sat b_and!2583 (not b_next!1461))
