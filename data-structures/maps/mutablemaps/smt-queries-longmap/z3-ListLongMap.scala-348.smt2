; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6384 () Bool)

(assert start!6384)

(declare-fun b_free!1467 () Bool)

(declare-fun b_next!1467 () Bool)

(assert (=> start!6384 (= b_free!1467 (not b_next!1467))))

(declare-fun tp!5888 () Bool)

(declare-fun b_and!2593 () Bool)

(assert (=> start!6384 (= tp!5888 b_and!2593)))

(declare-fun res!25438 () Bool)

(declare-fun e!27135 () Bool)

(assert (=> start!6384 (=> (not res!25438) (not e!27135))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6384 (= res!25438 (validMask!0 mask!853))))

(assert (=> start!6384 e!27135))

(assert (=> start!6384 true))

(assert (=> start!6384 tp!5888))

(declare-fun b!42806 () Bool)

(assert (=> b!42806 (= e!27135 (not true))))

(declare-datatypes ((V!2263 0))(
  ( (V!2264 (val!967 Int)) )
))
(declare-datatypes ((tuple2!1592 0))(
  ( (tuple2!1593 (_1!806 (_ BitVec 64)) (_2!806 V!2263)) )
))
(declare-datatypes ((List!1178 0))(
  ( (Nil!1175) (Cons!1174 (h!1751 tuple2!1592) (t!4149 List!1178)) )
))
(declare-datatypes ((ListLongMap!1173 0))(
  ( (ListLongMap!1174 (toList!602 List!1178)) )
))
(declare-fun lt!17995 () ListLongMap!1173)

(declare-datatypes ((array!2855 0))(
  ( (array!2856 (arr!1371 (Array (_ BitVec 32) (_ BitVec 64))) (size!1550 (_ BitVec 32))) )
))
(declare-fun lt!17993 () array!2855)

(declare-fun lt!17998 () V!2263)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!681 0))(
  ( (ValueCellFull!681 (v!2056 V!2263)) (EmptyCell!681) )
))
(declare-datatypes ((array!2857 0))(
  ( (array!2858 (arr!1372 (Array (_ BitVec 32) ValueCell!681)) (size!1551 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!342 0))(
  ( (LongMapFixedSize!343 (defaultEntry!1864 Int) (mask!5392 (_ BitVec 32)) (extraKeys!1755 (_ BitVec 32)) (zeroValue!1782 V!2263) (minValue!1782 V!2263) (_size!220 (_ BitVec 32)) (_keys!3407 array!2855) (_values!1847 array!2857) (_vacant!220 (_ BitVec 32))) )
))
(declare-fun map!806 (LongMapFixedSize!342) ListLongMap!1173)

(assert (=> b!42806 (= lt!17995 (map!806 (LongMapFixedSize!343 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17998 lt!17998 #b00000000000000000000000000000000 lt!17993 (array!2858 ((as const (Array (_ BitVec 32) ValueCell!681)) EmptyCell!681) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1179 0))(
  ( (Nil!1176) (Cons!1175 (h!1752 (_ BitVec 64)) (t!4150 List!1179)) )
))
(declare-fun arrayNoDuplicates!0 (array!2855 (_ BitVec 32) List!1179) Bool)

(assert (=> b!42806 (arrayNoDuplicates!0 lt!17993 #b00000000000000000000000000000000 Nil!1176)))

(declare-datatypes ((Unit!1165 0))(
  ( (Unit!1166) )
))
(declare-fun lt!17994 () Unit!1165)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2855 (_ BitVec 32) (_ BitVec 32) List!1179) Unit!1165)

(assert (=> b!42806 (= lt!17994 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17993 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2855 (_ BitVec 32)) Bool)

(assert (=> b!42806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17993 mask!853)))

(declare-fun lt!17996 () Unit!1165)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2855 (_ BitVec 32) (_ BitVec 32)) Unit!1165)

(assert (=> b!42806 (= lt!17996 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17993 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2855 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42806 (= (arrayCountValidKeys!0 lt!17993 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17997 () Unit!1165)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2855 (_ BitVec 32) (_ BitVec 32)) Unit!1165)

(assert (=> b!42806 (= lt!17997 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17993 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42806 (= lt!17993 (array!2856 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!242 (Int (_ BitVec 64)) V!2263)

(assert (=> b!42806 (= lt!17998 (dynLambda!242 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6384 res!25438) b!42806))

(declare-fun b_lambda!2223 () Bool)

(assert (=> (not b_lambda!2223) (not b!42806)))

(declare-fun t!4148 () Bool)

(declare-fun tb!957 () Bool)

(assert (=> (and start!6384 (= defaultEntry!470 defaultEntry!470) t!4148) tb!957))

(declare-fun result!1657 () Bool)

(declare-fun tp_is_empty!1857 () Bool)

(assert (=> tb!957 (= result!1657 tp_is_empty!1857)))

(assert (=> b!42806 t!4148))

(declare-fun b_and!2595 () Bool)

(assert (= b_and!2593 (and (=> t!4148 result!1657) b_and!2595)))

(declare-fun m!36557 () Bool)

(assert (=> start!6384 m!36557))

(declare-fun m!36559 () Bool)

(assert (=> b!42806 m!36559))

(declare-fun m!36561 () Bool)

(assert (=> b!42806 m!36561))

(declare-fun m!36563 () Bool)

(assert (=> b!42806 m!36563))

(declare-fun m!36565 () Bool)

(assert (=> b!42806 m!36565))

(declare-fun m!36567 () Bool)

(assert (=> b!42806 m!36567))

(declare-fun m!36569 () Bool)

(assert (=> b!42806 m!36569))

(declare-fun m!36571 () Bool)

(assert (=> b!42806 m!36571))

(declare-fun m!36573 () Bool)

(assert (=> b!42806 m!36573))

(check-sat tp_is_empty!1857 b_and!2595 (not b_next!1467) (not b!42806) (not b_lambda!2223) (not start!6384))
(check-sat b_and!2595 (not b_next!1467))
