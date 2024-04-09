; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110860 () Bool)

(assert start!110860)

(declare-fun b_free!29659 () Bool)

(declare-fun b_next!29659 () Bool)

(assert (=> start!110860 (= b_free!29659 (not b_next!29659))))

(declare-fun tp!104299 () Bool)

(declare-fun b_and!47877 () Bool)

(assert (=> start!110860 (= tp!104299 b_and!47877)))

(declare-fun b!1311674 () Bool)

(declare-fun e!748277 () Bool)

(assert (=> b!1311674 (= e!748277 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87729 0))(
  ( (array!87730 (arr!42340 (Array (_ BitVec 32) (_ BitVec 64))) (size!42891 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87729)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52289 0))(
  ( (V!52290 (val!17769 Int)) )
))
(declare-fun minValue!1296 () V!52289)

(declare-datatypes ((ValueCell!16796 0))(
  ( (ValueCellFull!16796 (v!20394 V!52289)) (EmptyCell!16796) )
))
(declare-datatypes ((array!87731 0))(
  ( (array!87732 (arr!42341 (Array (_ BitVec 32) ValueCell!16796)) (size!42892 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87731)

(declare-fun zeroValue!1296 () V!52289)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23074 0))(
  ( (tuple2!23075 (_1!11547 (_ BitVec 64)) (_2!11547 V!52289)) )
))
(declare-datatypes ((List!30237 0))(
  ( (Nil!30234) (Cons!30233 (h!31442 tuple2!23074) (t!43850 List!30237)) )
))
(declare-datatypes ((ListLongMap!20743 0))(
  ( (ListLongMap!20744 (toList!10387 List!30237)) )
))
(declare-fun contains!8473 (ListLongMap!20743 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5343 (array!87729 array!87731 (_ BitVec 32) (_ BitVec 32) V!52289 V!52289 (_ BitVec 32) Int) ListLongMap!20743)

(assert (=> b!1311674 (contains!8473 (getCurrentListMap!5343 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43308 0))(
  ( (Unit!43309) )
))
(declare-fun lt!585439 () Unit!43308)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!7 (array!87729 array!87731 (_ BitVec 32) (_ BitVec 32) V!52289 V!52289 (_ BitVec 64) (_ BitVec 32) Int) Unit!43308)

(assert (=> b!1311674 (= lt!585439 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!7 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1311675 () Bool)

(declare-fun res!870874 () Bool)

(assert (=> b!1311675 (=> (not res!870874) (not e!748277))))

(assert (=> b!1311675 (= res!870874 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1311676 () Bool)

(declare-fun res!870881 () Bool)

(assert (=> b!1311676 (=> (not res!870881) (not e!748277))))

(assert (=> b!1311676 (= res!870881 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42891 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1311677 () Bool)

(declare-fun res!870877 () Bool)

(assert (=> b!1311677 (=> (not res!870877) (not e!748277))))

(assert (=> b!1311677 (= res!870877 (contains!8473 (getCurrentListMap!5343 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1311678 () Bool)

(declare-fun e!748276 () Bool)

(declare-fun e!748278 () Bool)

(declare-fun mapRes!54712 () Bool)

(assert (=> b!1311678 (= e!748276 (and e!748278 mapRes!54712))))

(declare-fun condMapEmpty!54712 () Bool)

(declare-fun mapDefault!54712 () ValueCell!16796)

