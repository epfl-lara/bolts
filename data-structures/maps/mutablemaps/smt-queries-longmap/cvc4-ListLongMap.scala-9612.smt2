; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113716 () Bool)

(assert start!113716)

(declare-fun b_free!31589 () Bool)

(declare-fun b_next!31589 () Bool)

(assert (=> start!113716 (= b_free!31589 (not b_next!31589))))

(declare-fun tp!110583 () Bool)

(declare-fun b_and!50987 () Bool)

(assert (=> start!113716 (= tp!110583 b_and!50987)))

(declare-fun b!1349248 () Bool)

(declare-fun e!767549 () Bool)

(declare-fun tp_is_empty!37589 () Bool)

(assert (=> b!1349248 (= e!767549 tp_is_empty!37589)))

(declare-fun b!1349249 () Bool)

(declare-fun e!767550 () Bool)

(declare-fun e!767551 () Bool)

(assert (=> b!1349249 (= e!767550 e!767551)))

(declare-fun res!895237 () Bool)

(assert (=> b!1349249 (=> (not res!895237) (not e!767551))))

(declare-datatypes ((V!55221 0))(
  ( (V!55222 (val!18869 Int)) )
))
(declare-fun lt!596382 () V!55221)

(declare-datatypes ((tuple2!24474 0))(
  ( (tuple2!24475 (_1!12247 (_ BitVec 64)) (_2!12247 V!55221)) )
))
(declare-datatypes ((List!31641 0))(
  ( (Nil!31638) (Cons!31637 (h!32846 tuple2!24474) (t!46304 List!31641)) )
))
(declare-datatypes ((ListLongMap!22143 0))(
  ( (ListLongMap!22144 (toList!11087 List!31641)) )
))
(declare-fun lt!596383 () ListLongMap!22143)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91967 0))(
  ( (array!91968 (arr!44432 (Array (_ BitVec 32) (_ BitVec 64))) (size!44983 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91967)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun contains!9204 (ListLongMap!22143 (_ BitVec 64)) Bool)

(declare-fun +!4829 (ListLongMap!22143 tuple2!24474) ListLongMap!22143)

(assert (=> b!1349249 (= res!895237 (contains!9204 (+!4829 lt!596383 (tuple2!24475 (select (arr!44432 _keys!1571) from!1960) lt!596382)) k!1142))))

(declare-fun minValue!1245 () V!55221)

(declare-fun defaultEntry!1306 () Int)

(declare-fun zeroValue!1245 () V!55221)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17896 0))(
  ( (ValueCellFull!17896 (v!21522 V!55221)) (EmptyCell!17896) )
))
(declare-datatypes ((array!91969 0))(
  ( (array!91970 (arr!44433 (Array (_ BitVec 32) ValueCell!17896)) (size!44984 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91969)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6556 (array!91967 array!91969 (_ BitVec 32) (_ BitVec 32) V!55221 V!55221 (_ BitVec 32) Int) ListLongMap!22143)

(assert (=> b!1349249 (= lt!596383 (getCurrentListMapNoExtraKeys!6556 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22494 (ValueCell!17896 V!55221) V!55221)

(declare-fun dynLambda!3866 (Int (_ BitVec 64)) V!55221)

(assert (=> b!1349249 (= lt!596382 (get!22494 (select (arr!44433 _values!1303) from!1960) (dynLambda!3866 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1349250 () Bool)

(declare-fun res!895244 () Bool)

(assert (=> b!1349250 (=> (not res!895244) (not e!767550))))

(assert (=> b!1349250 (= res!895244 (not (= (select (arr!44432 _keys!1571) from!1960) k!1142)))))

(declare-fun mapNonEmpty!58101 () Bool)

(declare-fun mapRes!58101 () Bool)

(declare-fun tp!110584 () Bool)

(assert (=> mapNonEmpty!58101 (= mapRes!58101 (and tp!110584 e!767549))))

(declare-fun mapValue!58101 () ValueCell!17896)

(declare-fun mapRest!58101 () (Array (_ BitVec 32) ValueCell!17896))

(declare-fun mapKey!58101 () (_ BitVec 32))

(assert (=> mapNonEmpty!58101 (= (arr!44433 _values!1303) (store mapRest!58101 mapKey!58101 mapValue!58101))))

(declare-fun res!895241 () Bool)

(assert (=> start!113716 (=> (not res!895241) (not e!767550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113716 (= res!895241 (validMask!0 mask!1977))))

(assert (=> start!113716 e!767550))

(assert (=> start!113716 tp_is_empty!37589))

(assert (=> start!113716 true))

(declare-fun array_inv!33379 (array!91967) Bool)

(assert (=> start!113716 (array_inv!33379 _keys!1571)))

(declare-fun e!767548 () Bool)

(declare-fun array_inv!33380 (array!91969) Bool)

(assert (=> start!113716 (and (array_inv!33380 _values!1303) e!767548)))

(assert (=> start!113716 tp!110583))

(declare-fun b!1349251 () Bool)

(declare-fun res!895242 () Bool)

(assert (=> b!1349251 (=> (not res!895242) (not e!767550))))

(assert (=> b!1349251 (= res!895242 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44983 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!58101 () Bool)

(assert (=> mapIsEmpty!58101 mapRes!58101))

(declare-fun b!1349252 () Bool)

(declare-fun res!895243 () Bool)

(assert (=> b!1349252 (=> (not res!895243) (not e!767550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1349252 (= res!895243 (validKeyInArray!0 (select (arr!44432 _keys!1571) from!1960)))))

(declare-fun b!1349253 () Bool)

(declare-fun res!895236 () Bool)

(assert (=> b!1349253 (=> (not res!895236) (not e!767550))))

(declare-datatypes ((List!31642 0))(
  ( (Nil!31639) (Cons!31638 (h!32847 (_ BitVec 64)) (t!46305 List!31642)) )
))
(declare-fun arrayNoDuplicates!0 (array!91967 (_ BitVec 32) List!31642) Bool)

(assert (=> b!1349253 (= res!895236 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31639))))

(declare-fun b!1349254 () Bool)

(declare-fun res!895239 () Bool)

(assert (=> b!1349254 (=> (not res!895239) (not e!767551))))

(assert (=> b!1349254 (= res!895239 (not (= k!1142 (select (arr!44432 _keys!1571) from!1960))))))

(declare-fun b!1349255 () Bool)

(declare-fun e!767552 () Bool)

(assert (=> b!1349255 (= e!767552 tp_is_empty!37589)))

(declare-fun b!1349256 () Bool)

(assert (=> b!1349256 (= e!767548 (and e!767552 mapRes!58101))))

(declare-fun condMapEmpty!58101 () Bool)

(declare-fun mapDefault!58101 () ValueCell!17896)

