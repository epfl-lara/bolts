; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6380 () Bool)

(assert start!6380)

(declare-fun b_free!1463 () Bool)

(declare-fun b_next!1463 () Bool)

(assert (=> start!6380 (= b_free!1463 (not b_next!1463))))

(declare-fun tp!5882 () Bool)

(declare-fun b_and!2585 () Bool)

(assert (=> start!6380 (= tp!5882 b_and!2585)))

(declare-fun res!25432 () Bool)

(declare-fun e!27129 () Bool)

(assert (=> start!6380 (=> (not res!25432) (not e!27129))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6380 (= res!25432 (validMask!0 mask!853))))

(assert (=> start!6380 e!27129))

(assert (=> start!6380 true))

(assert (=> start!6380 tp!5882))

(declare-fun b!42796 () Bool)

(assert (=> b!42796 (= e!27129 (not true))))

(declare-datatypes ((V!2257 0))(
  ( (V!2258 (val!965 Int)) )
))
(declare-datatypes ((tuple2!1588 0))(
  ( (tuple2!1589 (_1!804 (_ BitVec 64)) (_2!804 V!2257)) )
))
(declare-datatypes ((List!1174 0))(
  ( (Nil!1171) (Cons!1170 (h!1747 tuple2!1588) (t!4141 List!1174)) )
))
(declare-datatypes ((ListLongMap!1169 0))(
  ( (ListLongMap!1170 (toList!600 List!1174)) )
))
(declare-fun lt!17959 () ListLongMap!1169)

(declare-datatypes ((array!2847 0))(
  ( (array!2848 (arr!1367 (Array (_ BitVec 32) (_ BitVec 64))) (size!1546 (_ BitVec 32))) )
))
(declare-fun lt!17962 () array!2847)

(declare-fun lt!17958 () V!2257)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!679 0))(
  ( (ValueCellFull!679 (v!2054 V!2257)) (EmptyCell!679) )
))
(declare-datatypes ((array!2849 0))(
  ( (array!2850 (arr!1368 (Array (_ BitVec 32) ValueCell!679)) (size!1547 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!338 0))(
  ( (LongMapFixedSize!339 (defaultEntry!1862 Int) (mask!5388 (_ BitVec 32)) (extraKeys!1753 (_ BitVec 32)) (zeroValue!1780 V!2257) (minValue!1780 V!2257) (_size!218 (_ BitVec 32)) (_keys!3405 array!2847) (_values!1845 array!2849) (_vacant!218 (_ BitVec 32))) )
))
(declare-fun map!802 (LongMapFixedSize!338) ListLongMap!1169)

(assert (=> b!42796 (= lt!17959 (map!802 (LongMapFixedSize!339 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17958 lt!17958 #b00000000000000000000000000000000 lt!17962 (array!2850 ((as const (Array (_ BitVec 32) ValueCell!679)) EmptyCell!679) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1175 0))(
  ( (Nil!1172) (Cons!1171 (h!1748 (_ BitVec 64)) (t!4142 List!1175)) )
))
(declare-fun arrayNoDuplicates!0 (array!2847 (_ BitVec 32) List!1175) Bool)

(assert (=> b!42796 (arrayNoDuplicates!0 lt!17962 #b00000000000000000000000000000000 Nil!1172)))

(declare-datatypes ((Unit!1161 0))(
  ( (Unit!1162) )
))
(declare-fun lt!17960 () Unit!1161)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2847 (_ BitVec 32) (_ BitVec 32) List!1175) Unit!1161)

(assert (=> b!42796 (= lt!17960 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17962 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1172))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2847 (_ BitVec 32)) Bool)

(assert (=> b!42796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17962 mask!853)))

(declare-fun lt!17961 () Unit!1161)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2847 (_ BitVec 32) (_ BitVec 32)) Unit!1161)

(assert (=> b!42796 (= lt!17961 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17962 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2847 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42796 (= (arrayCountValidKeys!0 lt!17962 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17957 () Unit!1161)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2847 (_ BitVec 32) (_ BitVec 32)) Unit!1161)

(assert (=> b!42796 (= lt!17957 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17962 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42796 (= lt!17962 (array!2848 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!240 (Int (_ BitVec 64)) V!2257)

(assert (=> b!42796 (= lt!17958 (dynLambda!240 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6380 res!25432) b!42796))

(declare-fun b_lambda!2219 () Bool)

(assert (=> (not b_lambda!2219) (not b!42796)))

(declare-fun t!4140 () Bool)

(declare-fun tb!953 () Bool)

(assert (=> (and start!6380 (= defaultEntry!470 defaultEntry!470) t!4140) tb!953))

(declare-fun result!1649 () Bool)

(declare-fun tp_is_empty!1853 () Bool)

(assert (=> tb!953 (= result!1649 tp_is_empty!1853)))

(assert (=> b!42796 t!4140))

(declare-fun b_and!2587 () Bool)

(assert (= b_and!2585 (and (=> t!4140 result!1649) b_and!2587)))

(declare-fun m!36521 () Bool)

(assert (=> start!6380 m!36521))

(declare-fun m!36523 () Bool)

(assert (=> b!42796 m!36523))

(declare-fun m!36525 () Bool)

(assert (=> b!42796 m!36525))

(declare-fun m!36527 () Bool)

(assert (=> b!42796 m!36527))

(declare-fun m!36529 () Bool)

(assert (=> b!42796 m!36529))

(declare-fun m!36531 () Bool)

(assert (=> b!42796 m!36531))

(declare-fun m!36533 () Bool)

(assert (=> b!42796 m!36533))

(declare-fun m!36535 () Bool)

(assert (=> b!42796 m!36535))

(declare-fun m!36537 () Bool)

(assert (=> b!42796 m!36537))

(push 1)

(assert (not b_next!1463))

(assert (not start!6380))

(assert tp_is_empty!1853)

(assert (not b_lambda!2219))

(assert (not b!42796))

(assert b_and!2587)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2587)

(assert (not b_next!1463))

(check-sat)

(pop 1)

