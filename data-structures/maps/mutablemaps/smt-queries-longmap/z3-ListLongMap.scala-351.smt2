; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6456 () Bool)

(assert start!6456)

(declare-fun b_free!1485 () Bool)

(declare-fun b_next!1485 () Bool)

(assert (=> start!6456 (= b_free!1485 (not b_next!1485))))

(declare-fun tp!5915 () Bool)

(declare-fun b_and!2629 () Bool)

(assert (=> start!6456 (= tp!5915 b_and!2629)))

(declare-fun res!25528 () Bool)

(declare-fun e!27252 () Bool)

(assert (=> start!6456 (=> (not res!25528) (not e!27252))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6456 (= res!25528 (validMask!0 mask!853))))

(assert (=> start!6456 e!27252))

(assert (=> start!6456 true))

(assert (=> start!6456 tp!5915))

(declare-fun b!42986 () Bool)

(assert (=> b!42986 (= e!27252 (not true))))

(declare-datatypes ((array!2891 0))(
  ( (array!2892 (arr!1389 (Array (_ BitVec 32) (_ BitVec 64))) (size!1574 (_ BitVec 32))) )
))
(declare-fun lt!18222 () array!2891)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((V!2287 0))(
  ( (V!2288 (val!976 Int)) )
))
(declare-fun lt!18220 () V!2287)

(declare-datatypes ((tuple2!1610 0))(
  ( (tuple2!1611 (_1!815 (_ BitVec 64)) (_2!815 V!2287)) )
))
(declare-datatypes ((List!1196 0))(
  ( (Nil!1193) (Cons!1192 (h!1769 tuple2!1610) (t!4185 List!1196)) )
))
(declare-datatypes ((ListLongMap!1191 0))(
  ( (ListLongMap!1192 (toList!611 List!1196)) )
))
(declare-fun lt!18218 () ListLongMap!1191)

(declare-datatypes ((ValueCell!690 0))(
  ( (ValueCellFull!690 (v!2065 V!2287)) (EmptyCell!690) )
))
(declare-datatypes ((array!2893 0))(
  ( (array!2894 (arr!1390 (Array (_ BitVec 32) ValueCell!690)) (size!1575 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!360 0))(
  ( (LongMapFixedSize!361 (defaultEntry!1873 Int) (mask!5416 (_ BitVec 32)) (extraKeys!1764 (_ BitVec 32)) (zeroValue!1791 V!2287) (minValue!1791 V!2287) (_size!229 (_ BitVec 32)) (_keys!3422 array!2891) (_values!1856 array!2893) (_vacant!229 (_ BitVec 32))) )
))
(declare-fun map!821 (LongMapFixedSize!360) ListLongMap!1191)

(assert (=> b!42986 (= lt!18218 (map!821 (LongMapFixedSize!361 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18220 lt!18220 #b00000000000000000000000000000000 lt!18222 (array!2894 ((as const (Array (_ BitVec 32) ValueCell!690)) EmptyCell!690) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1197 0))(
  ( (Nil!1194) (Cons!1193 (h!1770 (_ BitVec 64)) (t!4186 List!1197)) )
))
(declare-fun arrayNoDuplicates!0 (array!2891 (_ BitVec 32) List!1197) Bool)

(assert (=> b!42986 (arrayNoDuplicates!0 lt!18222 #b00000000000000000000000000000000 Nil!1194)))

(declare-datatypes ((Unit!1183 0))(
  ( (Unit!1184) )
))
(declare-fun lt!18223 () Unit!1183)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2891 (_ BitVec 32) (_ BitVec 32) List!1197) Unit!1183)

(assert (=> b!42986 (= lt!18223 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18222 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2891 (_ BitVec 32)) Bool)

(assert (=> b!42986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18222 mask!853)))

(declare-fun lt!18221 () Unit!1183)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2891 (_ BitVec 32) (_ BitVec 32)) Unit!1183)

(assert (=> b!42986 (= lt!18221 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18222 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2891 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42986 (= (arrayCountValidKeys!0 lt!18222 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18219 () Unit!1183)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2891 (_ BitVec 32) (_ BitVec 32)) Unit!1183)

(assert (=> b!42986 (= lt!18219 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18222 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42986 (= lt!18222 (array!2892 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!251 (Int (_ BitVec 64)) V!2287)

(assert (=> b!42986 (= lt!18220 (dynLambda!251 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6456 res!25528) b!42986))

(declare-fun b_lambda!2247 () Bool)

(assert (=> (not b_lambda!2247) (not b!42986)))

(declare-fun t!4184 () Bool)

(declare-fun tb!975 () Bool)

(assert (=> (and start!6456 (= defaultEntry!470 defaultEntry!470) t!4184) tb!975))

(declare-fun result!1693 () Bool)

(declare-fun tp_is_empty!1875 () Bool)

(assert (=> tb!975 (= result!1693 tp_is_empty!1875)))

(assert (=> b!42986 t!4184))

(declare-fun b_and!2631 () Bool)

(assert (= b_and!2629 (and (=> t!4184 result!1693) b_and!2631)))

(declare-fun m!36803 () Bool)

(assert (=> start!6456 m!36803))

(declare-fun m!36805 () Bool)

(assert (=> b!42986 m!36805))

(declare-fun m!36807 () Bool)

(assert (=> b!42986 m!36807))

(declare-fun m!36809 () Bool)

(assert (=> b!42986 m!36809))

(declare-fun m!36811 () Bool)

(assert (=> b!42986 m!36811))

(declare-fun m!36813 () Bool)

(assert (=> b!42986 m!36813))

(declare-fun m!36815 () Bool)

(assert (=> b!42986 m!36815))

(declare-fun m!36817 () Bool)

(assert (=> b!42986 m!36817))

(declare-fun m!36819 () Bool)

(assert (=> b!42986 m!36819))

(check-sat (not b_lambda!2247) (not start!6456) b_and!2631 tp_is_empty!1875 (not b!42986) (not b_next!1485))
(check-sat b_and!2631 (not b_next!1485))
