; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110848 () Bool)

(assert start!110848)

(declare-fun b_free!29647 () Bool)

(declare-fun b_next!29647 () Bool)

(assert (=> start!110848 (= b_free!29647 (not b_next!29647))))

(declare-fun tp!104264 () Bool)

(declare-fun b_and!47865 () Bool)

(assert (=> start!110848 (= tp!104264 b_and!47865)))

(declare-fun b!1311458 () Bool)

(declare-fun res!870716 () Bool)

(declare-fun e!748188 () Bool)

(assert (=> b!1311458 (=> (not res!870716) (not e!748188))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87705 0))(
  ( (array!87706 (arr!42328 (Array (_ BitVec 32) (_ BitVec 64))) (size!42879 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87705)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52273 0))(
  ( (V!52274 (val!17763 Int)) )
))
(declare-fun minValue!1296 () V!52273)

(declare-datatypes ((ValueCell!16790 0))(
  ( (ValueCellFull!16790 (v!20388 V!52273)) (EmptyCell!16790) )
))
(declare-datatypes ((array!87707 0))(
  ( (array!87708 (arr!42329 (Array (_ BitVec 32) ValueCell!16790)) (size!42880 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87707)

(declare-fun zeroValue!1296 () V!52273)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23062 0))(
  ( (tuple2!23063 (_1!11541 (_ BitVec 64)) (_2!11541 V!52273)) )
))
(declare-datatypes ((List!30226 0))(
  ( (Nil!30223) (Cons!30222 (h!31431 tuple2!23062) (t!43839 List!30226)) )
))
(declare-datatypes ((ListLongMap!20731 0))(
  ( (ListLongMap!20732 (toList!10381 List!30226)) )
))
(declare-fun contains!8467 (ListLongMap!20731 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5337 (array!87705 array!87707 (_ BitVec 32) (_ BitVec 32) V!52273 V!52273 (_ BitVec 32) Int) ListLongMap!20731)

(assert (=> b!1311458 (= res!870716 (contains!8467 (getCurrentListMap!5337 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1311459 () Bool)

(declare-fun res!870719 () Bool)

(assert (=> b!1311459 (=> (not res!870719) (not e!748188))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87705 (_ BitVec 32)) Bool)

(assert (=> b!1311459 (= res!870719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1311460 () Bool)

(assert (=> b!1311460 (= e!748188 (not true))))

(assert (=> b!1311460 (contains!8467 (getCurrentListMap!5337 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43296 0))(
  ( (Unit!43297) )
))
(declare-fun lt!585421 () Unit!43296)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!1 (array!87705 array!87707 (_ BitVec 32) (_ BitVec 32) V!52273 V!52273 (_ BitVec 64) (_ BitVec 32) Int) Unit!43296)

(assert (=> b!1311460 (= lt!585421 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!1 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun mapIsEmpty!54694 () Bool)

(declare-fun mapRes!54694 () Bool)

(assert (=> mapIsEmpty!54694 mapRes!54694))

(declare-fun b!1311461 () Bool)

(declare-fun res!870715 () Bool)

(assert (=> b!1311461 (=> (not res!870715) (not e!748188))))

(assert (=> b!1311461 (= res!870715 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1311462 () Bool)

(declare-fun res!870717 () Bool)

(assert (=> b!1311462 (=> (not res!870717) (not e!748188))))

(declare-datatypes ((List!30227 0))(
  ( (Nil!30224) (Cons!30223 (h!31432 (_ BitVec 64)) (t!43840 List!30227)) )
))
(declare-fun arrayNoDuplicates!0 (array!87705 (_ BitVec 32) List!30227) Bool)

(assert (=> b!1311462 (= res!870717 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30224))))

(declare-fun b!1311463 () Bool)

(declare-fun e!748189 () Bool)

(declare-fun e!748186 () Bool)

(assert (=> b!1311463 (= e!748189 (and e!748186 mapRes!54694))))

(declare-fun condMapEmpty!54694 () Bool)

(declare-fun mapDefault!54694 () ValueCell!16790)

