; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6454 () Bool)

(assert start!6454)

(declare-fun b_free!1483 () Bool)

(declare-fun b_next!1483 () Bool)

(assert (=> start!6454 (= b_free!1483 (not b_next!1483))))

(declare-fun tp!5912 () Bool)

(declare-fun b_and!2625 () Bool)

(assert (=> start!6454 (= tp!5912 b_and!2625)))

(declare-fun res!25525 () Bool)

(declare-fun e!27249 () Bool)

(assert (=> start!6454 (=> (not res!25525) (not e!27249))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6454 (= res!25525 (validMask!0 mask!853))))

(assert (=> start!6454 e!27249))

(assert (=> start!6454 true))

(assert (=> start!6454 tp!5912))

(declare-fun b!42981 () Bool)

(assert (=> b!42981 (= e!27249 (not true))))

(declare-datatypes ((V!2285 0))(
  ( (V!2286 (val!975 Int)) )
))
(declare-fun lt!18202 () V!2285)

(declare-datatypes ((array!2887 0))(
  ( (array!2888 (arr!1387 (Array (_ BitVec 32) (_ BitVec 64))) (size!1572 (_ BitVec 32))) )
))
(declare-fun lt!18204 () array!2887)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((tuple2!1608 0))(
  ( (tuple2!1609 (_1!814 (_ BitVec 64)) (_2!814 V!2285)) )
))
(declare-datatypes ((List!1194 0))(
  ( (Nil!1191) (Cons!1190 (h!1767 tuple2!1608) (t!4181 List!1194)) )
))
(declare-datatypes ((ListLongMap!1189 0))(
  ( (ListLongMap!1190 (toList!610 List!1194)) )
))
(declare-fun lt!18200 () ListLongMap!1189)

(declare-datatypes ((ValueCell!689 0))(
  ( (ValueCellFull!689 (v!2064 V!2285)) (EmptyCell!689) )
))
(declare-datatypes ((array!2889 0))(
  ( (array!2890 (arr!1388 (Array (_ BitVec 32) ValueCell!689)) (size!1573 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!358 0))(
  ( (LongMapFixedSize!359 (defaultEntry!1872 Int) (mask!5415 (_ BitVec 32)) (extraKeys!1763 (_ BitVec 32)) (zeroValue!1790 V!2285) (minValue!1790 V!2285) (_size!228 (_ BitVec 32)) (_keys!3421 array!2887) (_values!1855 array!2889) (_vacant!228 (_ BitVec 32))) )
))
(declare-fun map!820 (LongMapFixedSize!358) ListLongMap!1189)

(assert (=> b!42981 (= lt!18200 (map!820 (LongMapFixedSize!359 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18202 lt!18202 #b00000000000000000000000000000000 lt!18204 (array!2890 ((as const (Array (_ BitVec 32) ValueCell!689)) EmptyCell!689) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1195 0))(
  ( (Nil!1192) (Cons!1191 (h!1768 (_ BitVec 64)) (t!4182 List!1195)) )
))
(declare-fun arrayNoDuplicates!0 (array!2887 (_ BitVec 32) List!1195) Bool)

(assert (=> b!42981 (arrayNoDuplicates!0 lt!18204 #b00000000000000000000000000000000 Nil!1192)))

(declare-datatypes ((Unit!1181 0))(
  ( (Unit!1182) )
))
(declare-fun lt!18203 () Unit!1181)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2887 (_ BitVec 32) (_ BitVec 32) List!1195) Unit!1181)

(assert (=> b!42981 (= lt!18203 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18204 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1192))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2887 (_ BitVec 32)) Bool)

(assert (=> b!42981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18204 mask!853)))

(declare-fun lt!18205 () Unit!1181)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2887 (_ BitVec 32) (_ BitVec 32)) Unit!1181)

(assert (=> b!42981 (= lt!18205 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18204 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2887 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42981 (= (arrayCountValidKeys!0 lt!18204 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18201 () Unit!1181)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2887 (_ BitVec 32) (_ BitVec 32)) Unit!1181)

(assert (=> b!42981 (= lt!18201 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18204 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42981 (= lt!18204 (array!2888 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!250 (Int (_ BitVec 64)) V!2285)

(assert (=> b!42981 (= lt!18202 (dynLambda!250 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6454 res!25525) b!42981))

(declare-fun b_lambda!2245 () Bool)

(assert (=> (not b_lambda!2245) (not b!42981)))

(declare-fun t!4180 () Bool)

(declare-fun tb!973 () Bool)

(assert (=> (and start!6454 (= defaultEntry!470 defaultEntry!470) t!4180) tb!973))

(declare-fun result!1689 () Bool)

(declare-fun tp_is_empty!1873 () Bool)

(assert (=> tb!973 (= result!1689 tp_is_empty!1873)))

(assert (=> b!42981 t!4180))

(declare-fun b_and!2627 () Bool)

(assert (= b_and!2625 (and (=> t!4180 result!1689) b_and!2627)))

(declare-fun m!36785 () Bool)

(assert (=> start!6454 m!36785))

(declare-fun m!36787 () Bool)

(assert (=> b!42981 m!36787))

(declare-fun m!36789 () Bool)

(assert (=> b!42981 m!36789))

(declare-fun m!36791 () Bool)

(assert (=> b!42981 m!36791))

(declare-fun m!36793 () Bool)

(assert (=> b!42981 m!36793))

(declare-fun m!36795 () Bool)

(assert (=> b!42981 m!36795))

(declare-fun m!36797 () Bool)

(assert (=> b!42981 m!36797))

(declare-fun m!36799 () Bool)

(assert (=> b!42981 m!36799))

(declare-fun m!36801 () Bool)

(assert (=> b!42981 m!36801))

(push 1)

(assert b_and!2627)

(assert tp_is_empty!1873)

(assert (not start!6454))

(assert (not b_lambda!2245))

(assert (not b_next!1483))

(assert (not b!42981))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2627)

(assert (not b_next!1483))

(check-sat)

(pop 1)

