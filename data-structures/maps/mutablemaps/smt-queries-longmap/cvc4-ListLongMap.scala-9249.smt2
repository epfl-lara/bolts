; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110882 () Bool)

(assert start!110882)

(declare-fun b_free!29681 () Bool)

(declare-fun b_next!29681 () Bool)

(assert (=> start!110882 (= b_free!29681 (not b_next!29681))))

(declare-fun tp!104366 () Bool)

(declare-fun b_and!47899 () Bool)

(assert (=> start!110882 (= tp!104366 b_and!47899)))

(declare-fun mapNonEmpty!54745 () Bool)

(declare-fun mapRes!54745 () Bool)

(declare-fun tp!104365 () Bool)

(declare-fun e!748445 () Bool)

(assert (=> mapNonEmpty!54745 (= mapRes!54745 (and tp!104365 e!748445))))

(declare-datatypes ((V!52317 0))(
  ( (V!52318 (val!17780 Int)) )
))
(declare-datatypes ((ValueCell!16807 0))(
  ( (ValueCellFull!16807 (v!20405 V!52317)) (EmptyCell!16807) )
))
(declare-fun mapRest!54745 () (Array (_ BitVec 32) ValueCell!16807))

(declare-fun mapValue!54745 () ValueCell!16807)

(declare-fun mapKey!54745 () (_ BitVec 32))

(declare-datatypes ((array!87773 0))(
  ( (array!87774 (arr!42362 (Array (_ BitVec 32) ValueCell!16807)) (size!42913 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87773)

(assert (=> mapNonEmpty!54745 (= (arr!42362 _values!1354) (store mapRest!54745 mapKey!54745 mapValue!54745))))

(declare-fun b!1312070 () Bool)

(declare-fun res!871175 () Bool)

(declare-fun e!748444 () Bool)

(assert (=> b!1312070 (=> (not res!871175) (not e!748444))))

(declare-datatypes ((array!87775 0))(
  ( (array!87776 (arr!42363 (Array (_ BitVec 32) (_ BitVec 64))) (size!42914 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87775)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87775 (_ BitVec 32)) Bool)

(assert (=> b!1312070 (= res!871175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54745 () Bool)

(assert (=> mapIsEmpty!54745 mapRes!54745))

(declare-fun b!1312071 () Bool)

(declare-fun res!871173 () Bool)

(assert (=> b!1312071 (=> (not res!871173) (not e!748444))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312071 (= res!871173 (not (= (select (arr!42363 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1312073 () Bool)

(declare-fun res!871170 () Bool)

(assert (=> b!1312073 (=> (not res!871170) (not e!748444))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312073 (= res!871170 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1312074 () Bool)

(declare-fun res!871172 () Bool)

(assert (=> b!1312074 (=> (not res!871172) (not e!748444))))

(declare-datatypes ((List!30252 0))(
  ( (Nil!30249) (Cons!30248 (h!31457 (_ BitVec 64)) (t!43865 List!30252)) )
))
(declare-fun arrayNoDuplicates!0 (array!87775 (_ BitVec 32) List!30252) Bool)

(assert (=> b!1312074 (= res!871172 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30249))))

(declare-fun b!1312075 () Bool)

(declare-fun res!871171 () Bool)

(assert (=> b!1312075 (=> (not res!871171) (not e!748444))))

(assert (=> b!1312075 (= res!871171 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42914 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312076 () Bool)

(declare-fun res!871177 () Bool)

(assert (=> b!1312076 (=> (not res!871177) (not e!748444))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52317)

(declare-fun zeroValue!1296 () V!52317)

(declare-datatypes ((tuple2!23092 0))(
  ( (tuple2!23093 (_1!11556 (_ BitVec 64)) (_2!11556 V!52317)) )
))
(declare-datatypes ((List!30253 0))(
  ( (Nil!30250) (Cons!30249 (h!31458 tuple2!23092) (t!43866 List!30253)) )
))
(declare-datatypes ((ListLongMap!20761 0))(
  ( (ListLongMap!20762 (toList!10396 List!30253)) )
))
(declare-fun contains!8482 (ListLongMap!20761 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5352 (array!87775 array!87773 (_ BitVec 32) (_ BitVec 32) V!52317 V!52317 (_ BitVec 32) Int) ListLongMap!20761)

(assert (=> b!1312076 (= res!871177 (contains!8482 (getCurrentListMap!5352 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1312077 () Bool)

(declare-fun res!871176 () Bool)

(assert (=> b!1312077 (=> (not res!871176) (not e!748444))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1312077 (= res!871176 (validKeyInArray!0 (select (arr!42363 _keys!1628) from!2020)))))

(declare-fun b!1312078 () Bool)

(assert (=> b!1312078 (= e!748444 (not true))))

(assert (=> b!1312078 (contains!8482 (getCurrentListMap!5352 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43318 0))(
  ( (Unit!43319) )
))
(declare-fun lt!585472 () Unit!43318)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!12 (array!87775 array!87773 (_ BitVec 32) (_ BitVec 32) V!52317 V!52317 (_ BitVec 64) (_ BitVec 32) Int) Unit!43318)

(assert (=> b!1312078 (= lt!585472 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!12 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1312079 () Bool)

(declare-fun e!748442 () Bool)

(declare-fun tp_is_empty!35411 () Bool)

(assert (=> b!1312079 (= e!748442 tp_is_empty!35411)))

(declare-fun b!1312080 () Bool)

(assert (=> b!1312080 (= e!748445 tp_is_empty!35411)))

(declare-fun b!1312081 () Bool)

(declare-fun e!748443 () Bool)

(assert (=> b!1312081 (= e!748443 (and e!748442 mapRes!54745))))

(declare-fun condMapEmpty!54745 () Bool)

(declare-fun mapDefault!54745 () ValueCell!16807)

