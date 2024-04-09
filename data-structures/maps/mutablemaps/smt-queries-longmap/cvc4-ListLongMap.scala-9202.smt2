; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110600 () Bool)

(assert start!110600)

(declare-fun b_free!29399 () Bool)

(declare-fun b_next!29399 () Bool)

(assert (=> start!110600 (= b_free!29399 (not b_next!29399))))

(declare-fun tp!103520 () Bool)

(declare-fun b_and!47617 () Bool)

(assert (=> start!110600 (= tp!103520 b_and!47617)))

(declare-fun b!1307858 () Bool)

(declare-fun res!868234 () Bool)

(declare-fun e!746328 () Bool)

(assert (=> b!1307858 (=> (not res!868234) (not e!746328))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1307858 (= res!868234 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1307859 () Bool)

(declare-fun res!868230 () Bool)

(assert (=> b!1307859 (=> (not res!868230) (not e!746328))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87229 0))(
  ( (array!87230 (arr!42090 (Array (_ BitVec 32) (_ BitVec 64))) (size!42641 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87229)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!51941 0))(
  ( (V!51942 (val!17639 Int)) )
))
(declare-fun minValue!1296 () V!51941)

(declare-datatypes ((ValueCell!16666 0))(
  ( (ValueCellFull!16666 (v!20264 V!51941)) (EmptyCell!16666) )
))
(declare-datatypes ((array!87231 0))(
  ( (array!87232 (arr!42091 (Array (_ BitVec 32) ValueCell!16666)) (size!42642 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87231)

(declare-fun zeroValue!1296 () V!51941)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22876 0))(
  ( (tuple2!22877 (_1!11448 (_ BitVec 64)) (_2!11448 V!51941)) )
))
(declare-datatypes ((List!30048 0))(
  ( (Nil!30045) (Cons!30044 (h!31253 tuple2!22876) (t!43661 List!30048)) )
))
(declare-datatypes ((ListLongMap!20545 0))(
  ( (ListLongMap!20546 (toList!10288 List!30048)) )
))
(declare-fun contains!8374 (ListLongMap!20545 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5244 (array!87229 array!87231 (_ BitVec 32) (_ BitVec 32) V!51941 V!51941 (_ BitVec 32) Int) ListLongMap!20545)

(assert (=> b!1307859 (= res!868230 (contains!8374 (getCurrentListMap!5244 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1307860 () Bool)

(declare-fun res!868231 () Bool)

(assert (=> b!1307860 (=> (not res!868231) (not e!746328))))

(declare-datatypes ((List!30049 0))(
  ( (Nil!30046) (Cons!30045 (h!31254 (_ BitVec 64)) (t!43662 List!30049)) )
))
(declare-fun arrayNoDuplicates!0 (array!87229 (_ BitVec 32) List!30049) Bool)

(assert (=> b!1307860 (= res!868231 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30046))))

(declare-fun b!1307861 () Bool)

(declare-fun res!868233 () Bool)

(assert (=> b!1307861 (=> (not res!868233) (not e!746328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87229 (_ BitVec 32)) Bool)

(assert (=> b!1307861 (= res!868233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1307863 () Bool)

(declare-fun res!868227 () Bool)

(assert (=> b!1307863 (=> (not res!868227) (not e!746328))))

(assert (=> b!1307863 (= res!868227 (not (= (select (arr!42090 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1307864 () Bool)

(declare-fun res!868229 () Bool)

(assert (=> b!1307864 (=> (not res!868229) (not e!746328))))

(assert (=> b!1307864 (= res!868229 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42641 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307865 () Bool)

(assert (=> b!1307865 (= e!746328 (not true))))

(assert (=> b!1307865 (contains!8374 (getCurrentListMap!5244 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43226 0))(
  ( (Unit!43227) )
))
(declare-fun lt!585049 () Unit!43226)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!3 (array!87229 array!87231 (_ BitVec 32) (_ BitVec 32) V!51941 V!51941 (_ BitVec 64) (_ BitVec 32) Int) Unit!43226)

(assert (=> b!1307865 (= lt!585049 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!3 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun mapIsEmpty!54322 () Bool)

(declare-fun mapRes!54322 () Bool)

(assert (=> mapIsEmpty!54322 mapRes!54322))

(declare-fun b!1307862 () Bool)

(declare-fun res!868228 () Bool)

(assert (=> b!1307862 (=> (not res!868228) (not e!746328))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1307862 (= res!868228 (validKeyInArray!0 (select (arr!42090 _keys!1628) from!2020)))))

(declare-fun res!868235 () Bool)

(assert (=> start!110600 (=> (not res!868235) (not e!746328))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110600 (= res!868235 (validMask!0 mask!2040))))

(assert (=> start!110600 e!746328))

(assert (=> start!110600 tp!103520))

(declare-fun array_inv!31815 (array!87229) Bool)

(assert (=> start!110600 (array_inv!31815 _keys!1628)))

(assert (=> start!110600 true))

(declare-fun tp_is_empty!35129 () Bool)

(assert (=> start!110600 tp_is_empty!35129))

(declare-fun e!746327 () Bool)

(declare-fun array_inv!31816 (array!87231) Bool)

(assert (=> start!110600 (and (array_inv!31816 _values!1354) e!746327)))

(declare-fun b!1307866 () Bool)

(declare-fun e!746329 () Bool)

(assert (=> b!1307866 (= e!746327 (and e!746329 mapRes!54322))))

(declare-fun condMapEmpty!54322 () Bool)

(declare-fun mapDefault!54322 () ValueCell!16666)

