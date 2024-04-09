; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111196 () Bool)

(assert start!111196)

(declare-fun b_free!29995 () Bool)

(declare-fun b_next!29995 () Bool)

(assert (=> start!111196 (= b_free!29995 (not b_next!29995))))

(declare-fun tp!105308 () Bool)

(declare-fun b_and!48213 () Bool)

(assert (=> start!111196 (= tp!105308 b_and!48213)))

(declare-fun b!1316057 () Bool)

(declare-fun e!750800 () Bool)

(assert (=> b!1316057 (= e!750800 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!88367 0))(
  ( (array!88368 (arr!42659 (Array (_ BitVec 32) (_ BitVec 64))) (size!43210 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88367)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52737 0))(
  ( (V!52738 (val!17937 Int)) )
))
(declare-fun minValue!1296 () V!52737)

(declare-datatypes ((ValueCell!16964 0))(
  ( (ValueCellFull!16964 (v!20562 V!52737)) (EmptyCell!16964) )
))
(declare-datatypes ((array!88369 0))(
  ( (array!88370 (arr!42660 (Array (_ BitVec 32) ValueCell!16964)) (size!43211 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88369)

(declare-fun zeroValue!1296 () V!52737)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23288 0))(
  ( (tuple2!23289 (_1!11654 (_ BitVec 64)) (_2!11654 V!52737)) )
))
(declare-datatypes ((List!30457 0))(
  ( (Nil!30454) (Cons!30453 (h!31662 tuple2!23288) (t!44070 List!30457)) )
))
(declare-datatypes ((ListLongMap!20957 0))(
  ( (ListLongMap!20958 (toList!10494 List!30457)) )
))
(declare-fun contains!8580 (ListLongMap!20957 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5450 (array!88367 array!88369 (_ BitVec 32) (_ BitVec 32) V!52737 V!52737 (_ BitVec 32) Int) ListLongMap!20957)

(assert (=> b!1316057 (contains!8580 (getCurrentListMap!5450 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43336 0))(
  ( (Unit!43337) )
))
(declare-fun lt!585934 () Unit!43336)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!19 (array!88367 array!88369 (_ BitVec 32) (_ BitVec 32) V!52737 V!52737 (_ BitVec 64) (_ BitVec 32) Int) Unit!43336)

(assert (=> b!1316057 (= lt!585934 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!19 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun mapIsEmpty!55216 () Bool)

(declare-fun mapRes!55216 () Bool)

(assert (=> mapIsEmpty!55216 mapRes!55216))

(declare-fun b!1316058 () Bool)

(declare-fun res!873746 () Bool)

(assert (=> b!1316058 (=> (not res!873746) (not e!750800))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88367 (_ BitVec 32)) Bool)

(assert (=> b!1316058 (= res!873746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1316059 () Bool)

(declare-fun res!873749 () Bool)

(assert (=> b!1316059 (=> (not res!873749) (not e!750800))))

(assert (=> b!1316059 (= res!873749 (not (= (select (arr!42659 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1316060 () Bool)

(declare-fun res!873747 () Bool)

(assert (=> b!1316060 (=> (not res!873747) (not e!750800))))

(declare-datatypes ((List!30458 0))(
  ( (Nil!30455) (Cons!30454 (h!31663 (_ BitVec 64)) (t!44071 List!30458)) )
))
(declare-fun arrayNoDuplicates!0 (array!88367 (_ BitVec 32) List!30458) Bool)

(assert (=> b!1316060 (= res!873747 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30455))))

(declare-fun res!873752 () Bool)

(assert (=> start!111196 (=> (not res!873752) (not e!750800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111196 (= res!873752 (validMask!0 mask!2040))))

(assert (=> start!111196 e!750800))

(assert (=> start!111196 tp!105308))

(declare-fun array_inv!32185 (array!88367) Bool)

(assert (=> start!111196 (array_inv!32185 _keys!1628)))

(assert (=> start!111196 true))

(declare-fun tp_is_empty!35725 () Bool)

(assert (=> start!111196 tp_is_empty!35725))

(declare-fun e!750796 () Bool)

(declare-fun array_inv!32186 (array!88369) Bool)

(assert (=> start!111196 (and (array_inv!32186 _values!1354) e!750796)))

(declare-fun b!1316061 () Bool)

(declare-fun res!873748 () Bool)

(assert (=> b!1316061 (=> (not res!873748) (not e!750800))))

(assert (=> b!1316061 (= res!873748 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43210 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1316062 () Bool)

(declare-fun res!873745 () Bool)

(assert (=> b!1316062 (=> (not res!873745) (not e!750800))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1316062 (= res!873745 (validKeyInArray!0 (select (arr!42659 _keys!1628) from!2020)))))

(declare-fun b!1316063 () Bool)

(declare-fun e!750799 () Bool)

(assert (=> b!1316063 (= e!750796 (and e!750799 mapRes!55216))))

(declare-fun condMapEmpty!55216 () Bool)

(declare-fun mapDefault!55216 () ValueCell!16964)

