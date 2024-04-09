; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6370 () Bool)

(assert start!6370)

(declare-fun b_free!1453 () Bool)

(declare-fun b_next!1453 () Bool)

(assert (=> start!6370 (= b_free!1453 (not b_next!1453))))

(declare-fun tp!5867 () Bool)

(declare-fun b_and!2565 () Bool)

(assert (=> start!6370 (= tp!5867 b_and!2565)))

(declare-fun res!25417 () Bool)

(declare-fun e!27114 () Bool)

(assert (=> start!6370 (=> (not res!25417) (not e!27114))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6370 (= res!25417 (validMask!0 mask!853))))

(assert (=> start!6370 e!27114))

(assert (=> start!6370 true))

(assert (=> start!6370 tp!5867))

(declare-fun b!42771 () Bool)

(assert (=> b!42771 (= e!27114 (not true))))

(declare-datatypes ((array!2827 0))(
  ( (array!2828 (arr!1357 (Array (_ BitVec 32) (_ BitVec 64))) (size!1536 (_ BitVec 32))) )
))
(declare-fun lt!17869 () array!2827)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((V!2245 0))(
  ( (V!2246 (val!960 Int)) )
))
(declare-datatypes ((tuple2!1578 0))(
  ( (tuple2!1579 (_1!799 (_ BitVec 64)) (_2!799 V!2245)) )
))
(declare-datatypes ((List!1164 0))(
  ( (Nil!1161) (Cons!1160 (h!1737 tuple2!1578) (t!4121 List!1164)) )
))
(declare-datatypes ((ListLongMap!1159 0))(
  ( (ListLongMap!1160 (toList!595 List!1164)) )
))
(declare-fun lt!17872 () ListLongMap!1159)

(declare-fun lt!17868 () V!2245)

(declare-datatypes ((ValueCell!674 0))(
  ( (ValueCellFull!674 (v!2049 V!2245)) (EmptyCell!674) )
))
(declare-datatypes ((array!2829 0))(
  ( (array!2830 (arr!1358 (Array (_ BitVec 32) ValueCell!674)) (size!1537 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!328 0))(
  ( (LongMapFixedSize!329 (defaultEntry!1857 Int) (mask!5381 (_ BitVec 32)) (extraKeys!1748 (_ BitVec 32)) (zeroValue!1775 V!2245) (minValue!1775 V!2245) (_size!213 (_ BitVec 32)) (_keys!3400 array!2827) (_values!1840 array!2829) (_vacant!213 (_ BitVec 32))) )
))
(declare-fun map!795 (LongMapFixedSize!328) ListLongMap!1159)

(assert (=> b!42771 (= lt!17872 (map!795 (LongMapFixedSize!329 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17868 lt!17868 #b00000000000000000000000000000000 lt!17869 (array!2830 ((as const (Array (_ BitVec 32) ValueCell!674)) EmptyCell!674) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1165 0))(
  ( (Nil!1162) (Cons!1161 (h!1738 (_ BitVec 64)) (t!4122 List!1165)) )
))
(declare-fun arrayNoDuplicates!0 (array!2827 (_ BitVec 32) List!1165) Bool)

(assert (=> b!42771 (arrayNoDuplicates!0 lt!17869 #b00000000000000000000000000000000 Nil!1162)))

(declare-datatypes ((Unit!1151 0))(
  ( (Unit!1152) )
))
(declare-fun lt!17870 () Unit!1151)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2827 (_ BitVec 32) (_ BitVec 32) List!1165) Unit!1151)

(assert (=> b!42771 (= lt!17870 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17869 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1162))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2827 (_ BitVec 32)) Bool)

(assert (=> b!42771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17869 mask!853)))

(declare-fun lt!17867 () Unit!1151)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2827 (_ BitVec 32) (_ BitVec 32)) Unit!1151)

(assert (=> b!42771 (= lt!17867 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17869 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2827 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42771 (= (arrayCountValidKeys!0 lt!17869 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17871 () Unit!1151)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2827 (_ BitVec 32) (_ BitVec 32)) Unit!1151)

(assert (=> b!42771 (= lt!17871 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17869 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42771 (= lt!17869 (array!2828 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!235 (Int (_ BitVec 64)) V!2245)

(assert (=> b!42771 (= lt!17868 (dynLambda!235 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6370 res!25417) b!42771))

(declare-fun b_lambda!2209 () Bool)

(assert (=> (not b_lambda!2209) (not b!42771)))

(declare-fun t!4120 () Bool)

(declare-fun tb!943 () Bool)

(assert (=> (and start!6370 (= defaultEntry!470 defaultEntry!470) t!4120) tb!943))

(declare-fun result!1629 () Bool)

(declare-fun tp_is_empty!1843 () Bool)

(assert (=> tb!943 (= result!1629 tp_is_empty!1843)))

(assert (=> b!42771 t!4120))

(declare-fun b_and!2567 () Bool)

(assert (= b_and!2565 (and (=> t!4120 result!1629) b_and!2567)))

(declare-fun m!36431 () Bool)

(assert (=> start!6370 m!36431))

(declare-fun m!36433 () Bool)

(assert (=> b!42771 m!36433))

(declare-fun m!36435 () Bool)

(assert (=> b!42771 m!36435))

(declare-fun m!36437 () Bool)

(assert (=> b!42771 m!36437))

(declare-fun m!36439 () Bool)

(assert (=> b!42771 m!36439))

(declare-fun m!36441 () Bool)

(assert (=> b!42771 m!36441))

(declare-fun m!36443 () Bool)

(assert (=> b!42771 m!36443))

(declare-fun m!36445 () Bool)

(assert (=> b!42771 m!36445))

(declare-fun m!36447 () Bool)

(assert (=> b!42771 m!36447))

(push 1)

(assert (not start!6370))

(assert tp_is_empty!1843)

(assert (not b_next!1453))

(assert (not b!42771))

(assert b_and!2567)

(assert (not b_lambda!2209))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2567)

(assert (not b_next!1453))

(check-sat)

(pop 1)

