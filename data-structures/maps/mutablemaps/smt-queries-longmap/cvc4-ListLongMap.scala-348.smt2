; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6386 () Bool)

(assert start!6386)

(declare-fun b_free!1469 () Bool)

(declare-fun b_next!1469 () Bool)

(assert (=> start!6386 (= b_free!1469 (not b_next!1469))))

(declare-fun tp!5891 () Bool)

(declare-fun b_and!2597 () Bool)

(assert (=> start!6386 (= tp!5891 b_and!2597)))

(declare-fun res!25441 () Bool)

(declare-fun e!27138 () Bool)

(assert (=> start!6386 (=> (not res!25441) (not e!27138))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6386 (= res!25441 (validMask!0 mask!853))))

(assert (=> start!6386 e!27138))

(assert (=> start!6386 true))

(assert (=> start!6386 tp!5891))

(declare-fun b!42811 () Bool)

(assert (=> b!42811 (= e!27138 (not true))))

(declare-datatypes ((V!2265 0))(
  ( (V!2266 (val!968 Int)) )
))
(declare-fun lt!18015 () V!2265)

(declare-datatypes ((array!2859 0))(
  ( (array!2860 (arr!1373 (Array (_ BitVec 32) (_ BitVec 64))) (size!1552 (_ BitVec 32))) )
))
(declare-fun lt!18014 () array!2859)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((tuple2!1594 0))(
  ( (tuple2!1595 (_1!807 (_ BitVec 64)) (_2!807 V!2265)) )
))
(declare-datatypes ((List!1180 0))(
  ( (Nil!1177) (Cons!1176 (h!1753 tuple2!1594) (t!4153 List!1180)) )
))
(declare-datatypes ((ListLongMap!1175 0))(
  ( (ListLongMap!1176 (toList!603 List!1180)) )
))
(declare-fun lt!18011 () ListLongMap!1175)

(declare-datatypes ((ValueCell!682 0))(
  ( (ValueCellFull!682 (v!2057 V!2265)) (EmptyCell!682) )
))
(declare-datatypes ((array!2861 0))(
  ( (array!2862 (arr!1374 (Array (_ BitVec 32) ValueCell!682)) (size!1553 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!344 0))(
  ( (LongMapFixedSize!345 (defaultEntry!1865 Int) (mask!5393 (_ BitVec 32)) (extraKeys!1756 (_ BitVec 32)) (zeroValue!1783 V!2265) (minValue!1783 V!2265) (_size!221 (_ BitVec 32)) (_keys!3408 array!2859) (_values!1848 array!2861) (_vacant!221 (_ BitVec 32))) )
))
(declare-fun map!807 (LongMapFixedSize!344) ListLongMap!1175)

(assert (=> b!42811 (= lt!18011 (map!807 (LongMapFixedSize!345 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18015 lt!18015 #b00000000000000000000000000000000 lt!18014 (array!2862 ((as const (Array (_ BitVec 32) ValueCell!682)) EmptyCell!682) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1181 0))(
  ( (Nil!1178) (Cons!1177 (h!1754 (_ BitVec 64)) (t!4154 List!1181)) )
))
(declare-fun arrayNoDuplicates!0 (array!2859 (_ BitVec 32) List!1181) Bool)

(assert (=> b!42811 (arrayNoDuplicates!0 lt!18014 #b00000000000000000000000000000000 Nil!1178)))

(declare-datatypes ((Unit!1167 0))(
  ( (Unit!1168) )
))
(declare-fun lt!18016 () Unit!1167)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2859 (_ BitVec 32) (_ BitVec 32) List!1181) Unit!1167)

(assert (=> b!42811 (= lt!18016 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18014 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1178))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2859 (_ BitVec 32)) Bool)

(assert (=> b!42811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18014 mask!853)))

(declare-fun lt!18012 () Unit!1167)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2859 (_ BitVec 32) (_ BitVec 32)) Unit!1167)

(assert (=> b!42811 (= lt!18012 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18014 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2859 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42811 (= (arrayCountValidKeys!0 lt!18014 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18013 () Unit!1167)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2859 (_ BitVec 32) (_ BitVec 32)) Unit!1167)

(assert (=> b!42811 (= lt!18013 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18014 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42811 (= lt!18014 (array!2860 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!243 (Int (_ BitVec 64)) V!2265)

(assert (=> b!42811 (= lt!18015 (dynLambda!243 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6386 res!25441) b!42811))

(declare-fun b_lambda!2225 () Bool)

(assert (=> (not b_lambda!2225) (not b!42811)))

(declare-fun t!4152 () Bool)

(declare-fun tb!959 () Bool)

(assert (=> (and start!6386 (= defaultEntry!470 defaultEntry!470) t!4152) tb!959))

(declare-fun result!1661 () Bool)

(declare-fun tp_is_empty!1859 () Bool)

(assert (=> tb!959 (= result!1661 tp_is_empty!1859)))

(assert (=> b!42811 t!4152))

(declare-fun b_and!2599 () Bool)

(assert (= b_and!2597 (and (=> t!4152 result!1661) b_and!2599)))

(declare-fun m!36575 () Bool)

(assert (=> start!6386 m!36575))

(declare-fun m!36577 () Bool)

(assert (=> b!42811 m!36577))

(declare-fun m!36579 () Bool)

(assert (=> b!42811 m!36579))

(declare-fun m!36581 () Bool)

(assert (=> b!42811 m!36581))

(declare-fun m!36583 () Bool)

(assert (=> b!42811 m!36583))

(declare-fun m!36585 () Bool)

(assert (=> b!42811 m!36585))

(declare-fun m!36587 () Bool)

(assert (=> b!42811 m!36587))

(declare-fun m!36589 () Bool)

(assert (=> b!42811 m!36589))

(declare-fun m!36591 () Bool)

(assert (=> b!42811 m!36591))

(push 1)

(assert (not b_next!1469))

(assert (not b!42811))

(assert b_and!2599)

(assert (not start!6386))

(assert (not b_lambda!2225))

(assert tp_is_empty!1859)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2599)

(assert (not b_next!1469))

(check-sat)

(pop 1)

