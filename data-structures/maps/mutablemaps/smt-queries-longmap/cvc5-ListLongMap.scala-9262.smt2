; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110956 () Bool)

(assert start!110956)

(declare-fun b_free!29755 () Bool)

(declare-fun b_next!29755 () Bool)

(assert (=> start!110956 (= b_free!29755 (not b_next!29755))))

(declare-fun tp!104588 () Bool)

(declare-fun b_and!47973 () Bool)

(assert (=> start!110956 (= tp!104588 b_and!47973)))

(declare-fun b!1313097 () Bool)

(declare-fun res!871867 () Bool)

(declare-fun e!749000 () Bool)

(assert (=> b!1313097 (=> (not res!871867) (not e!749000))))

(declare-datatypes ((array!87917 0))(
  ( (array!87918 (arr!42434 (Array (_ BitVec 32) (_ BitVec 64))) (size!42985 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87917)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1313097 (= res!871867 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42985 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313098 () Bool)

(declare-fun e!748996 () Bool)

(declare-fun tp_is_empty!35485 () Bool)

(assert (=> b!1313098 (= e!748996 tp_is_empty!35485)))

(declare-fun b!1313099 () Bool)

(assert (=> b!1313099 (= e!749000 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52417 0))(
  ( (V!52418 (val!17817 Int)) )
))
(declare-fun minValue!1296 () V!52417)

(declare-datatypes ((ValueCell!16844 0))(
  ( (ValueCellFull!16844 (v!20442 V!52417)) (EmptyCell!16844) )
))
(declare-datatypes ((array!87919 0))(
  ( (array!87920 (arr!42435 (Array (_ BitVec 32) ValueCell!16844)) (size!42986 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87919)

(declare-fun zeroValue!1296 () V!52417)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun lt!585574 () Bool)

(declare-datatypes ((tuple2!23144 0))(
  ( (tuple2!23145 (_1!11582 (_ BitVec 64)) (_2!11582 V!52417)) )
))
(declare-datatypes ((List!30304 0))(
  ( (Nil!30301) (Cons!30300 (h!31509 tuple2!23144) (t!43917 List!30304)) )
))
(declare-datatypes ((ListLongMap!20813 0))(
  ( (ListLongMap!20814 (toList!10422 List!30304)) )
))
(declare-fun contains!8508 (ListLongMap!20813 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5378 (array!87917 array!87919 (_ BitVec 32) (_ BitVec 32) V!52417 V!52417 (_ BitVec 32) Int) ListLongMap!20813)

(assert (=> b!1313099 (= lt!585574 (contains!8508 (getCurrentListMap!5378 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1313100 () Bool)

(declare-fun res!871864 () Bool)

(assert (=> b!1313100 (=> (not res!871864) (not e!749000))))

(declare-datatypes ((List!30305 0))(
  ( (Nil!30302) (Cons!30301 (h!31510 (_ BitVec 64)) (t!43918 List!30305)) )
))
(declare-fun arrayNoDuplicates!0 (array!87917 (_ BitVec 32) List!30305) Bool)

(assert (=> b!1313100 (= res!871864 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30302))))

(declare-fun b!1313101 () Bool)

(declare-fun res!871866 () Bool)

(assert (=> b!1313101 (=> (not res!871866) (not e!749000))))

(assert (=> b!1313101 (= res!871866 (and (= (size!42986 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42985 _keys!1628) (size!42986 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313102 () Bool)

(declare-fun res!871868 () Bool)

(assert (=> b!1313102 (=> (not res!871868) (not e!749000))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87917 (_ BitVec 32)) Bool)

(assert (=> b!1313102 (= res!871868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!54856 () Bool)

(declare-fun mapRes!54856 () Bool)

(declare-fun tp!104587 () Bool)

(declare-fun e!748998 () Bool)

(assert (=> mapNonEmpty!54856 (= mapRes!54856 (and tp!104587 e!748998))))

(declare-fun mapValue!54856 () ValueCell!16844)

(declare-fun mapRest!54856 () (Array (_ BitVec 32) ValueCell!16844))

(declare-fun mapKey!54856 () (_ BitVec 32))

(assert (=> mapNonEmpty!54856 (= (arr!42435 _values!1354) (store mapRest!54856 mapKey!54856 mapValue!54856))))

(declare-fun mapIsEmpty!54856 () Bool)

(assert (=> mapIsEmpty!54856 mapRes!54856))

(declare-fun b!1313103 () Bool)

(declare-fun e!748997 () Bool)

(assert (=> b!1313103 (= e!748997 (and e!748996 mapRes!54856))))

(declare-fun condMapEmpty!54856 () Bool)

(declare-fun mapDefault!54856 () ValueCell!16844)

