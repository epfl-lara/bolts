; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110858 () Bool)

(assert start!110858)

(declare-fun b_free!29657 () Bool)

(declare-fun b_next!29657 () Bool)

(assert (=> start!110858 (= b_free!29657 (not b_next!29657))))

(declare-fun tp!104294 () Bool)

(declare-fun b_and!47875 () Bool)

(assert (=> start!110858 (= tp!104294 b_and!47875)))

(declare-fun b!1311638 () Bool)

(declare-fun res!870852 () Bool)

(declare-fun e!748261 () Bool)

(assert (=> b!1311638 (=> (not res!870852) (not e!748261))))

(declare-datatypes ((array!87725 0))(
  ( (array!87726 (arr!42338 (Array (_ BitVec 32) (_ BitVec 64))) (size!42889 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87725)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87725 (_ BitVec 32)) Bool)

(assert (=> b!1311638 (= res!870852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1311639 () Bool)

(assert (=> b!1311639 (= e!748261 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52285 0))(
  ( (V!52286 (val!17768 Int)) )
))
(declare-fun minValue!1296 () V!52285)

(declare-datatypes ((ValueCell!16795 0))(
  ( (ValueCellFull!16795 (v!20393 V!52285)) (EmptyCell!16795) )
))
(declare-datatypes ((array!87727 0))(
  ( (array!87728 (arr!42339 (Array (_ BitVec 32) ValueCell!16795)) (size!42890 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87727)

(declare-fun zeroValue!1296 () V!52285)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23072 0))(
  ( (tuple2!23073 (_1!11546 (_ BitVec 64)) (_2!11546 V!52285)) )
))
(declare-datatypes ((List!30235 0))(
  ( (Nil!30232) (Cons!30231 (h!31440 tuple2!23072) (t!43848 List!30235)) )
))
(declare-datatypes ((ListLongMap!20741 0))(
  ( (ListLongMap!20742 (toList!10386 List!30235)) )
))
(declare-fun contains!8472 (ListLongMap!20741 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5342 (array!87725 array!87727 (_ BitVec 32) (_ BitVec 32) V!52285 V!52285 (_ BitVec 32) Int) ListLongMap!20741)

(assert (=> b!1311639 (contains!8472 (getCurrentListMap!5342 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43306 0))(
  ( (Unit!43307) )
))
(declare-fun lt!585436 () Unit!43306)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!6 (array!87725 array!87727 (_ BitVec 32) (_ BitVec 32) V!52285 V!52285 (_ BitVec 64) (_ BitVec 32) Int) Unit!43306)

(assert (=> b!1311639 (= lt!585436 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!6 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1311641 () Bool)

(declare-fun res!870851 () Bool)

(assert (=> b!1311641 (=> (not res!870851) (not e!748261))))

(declare-datatypes ((List!30236 0))(
  ( (Nil!30233) (Cons!30232 (h!31441 (_ BitVec 64)) (t!43849 List!30236)) )
))
(declare-fun arrayNoDuplicates!0 (array!87725 (_ BitVec 32) List!30236) Bool)

(assert (=> b!1311641 (= res!870851 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30233))))

(declare-fun b!1311642 () Bool)

(declare-fun res!870846 () Bool)

(assert (=> b!1311642 (=> (not res!870846) (not e!748261))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1311642 (= res!870846 (validKeyInArray!0 (select (arr!42338 _keys!1628) from!2020)))))

(declare-fun b!1311643 () Bool)

(declare-fun res!870854 () Bool)

(assert (=> b!1311643 (=> (not res!870854) (not e!748261))))

(assert (=> b!1311643 (= res!870854 (and (= (size!42890 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42889 _keys!1628) (size!42890 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311644 () Bool)

(declare-fun res!870847 () Bool)

(assert (=> b!1311644 (=> (not res!870847) (not e!748261))))

(assert (=> b!1311644 (= res!870847 (contains!8472 (getCurrentListMap!5342 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1311645 () Bool)

(declare-fun e!748264 () Bool)

(declare-fun tp_is_empty!35387 () Bool)

(assert (=> b!1311645 (= e!748264 tp_is_empty!35387)))

(declare-fun b!1311646 () Bool)

(declare-fun res!870850 () Bool)

(assert (=> b!1311646 (=> (not res!870850) (not e!748261))))

(assert (=> b!1311646 (= res!870850 (not (= (select (arr!42338 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1311647 () Bool)

(declare-fun e!748263 () Bool)

(declare-fun mapRes!54709 () Bool)

(assert (=> b!1311647 (= e!748263 (and e!748264 mapRes!54709))))

(declare-fun condMapEmpty!54709 () Bool)

(declare-fun mapDefault!54709 () ValueCell!16795)

