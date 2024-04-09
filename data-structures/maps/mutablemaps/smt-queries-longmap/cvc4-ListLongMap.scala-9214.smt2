; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110672 () Bool)

(assert start!110672)

(declare-fun b_free!29471 () Bool)

(declare-fun b_next!29471 () Bool)

(assert (=> start!110672 (= b_free!29471 (not b_next!29471))))

(declare-fun tp!103736 () Bool)

(declare-fun b_and!47689 () Bool)

(assert (=> start!110672 (= tp!103736 b_and!47689)))

(declare-fun b!1309014 () Bool)

(declare-fun e!746868 () Bool)

(assert (=> b!1309014 (= e!746868 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87365 0))(
  ( (array!87366 (arr!42158 (Array (_ BitVec 32) (_ BitVec 64))) (size!42709 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87365)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun lt!585157 () Bool)

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52037 0))(
  ( (V!52038 (val!17675 Int)) )
))
(declare-fun minValue!1296 () V!52037)

(declare-datatypes ((ValueCell!16702 0))(
  ( (ValueCellFull!16702 (v!20300 V!52037)) (EmptyCell!16702) )
))
(declare-datatypes ((array!87367 0))(
  ( (array!87368 (arr!42159 (Array (_ BitVec 32) ValueCell!16702)) (size!42710 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87367)

(declare-fun zeroValue!1296 () V!52037)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22924 0))(
  ( (tuple2!22925 (_1!11472 (_ BitVec 64)) (_2!11472 V!52037)) )
))
(declare-datatypes ((List!30097 0))(
  ( (Nil!30094) (Cons!30093 (h!31302 tuple2!22924) (t!43710 List!30097)) )
))
(declare-datatypes ((ListLongMap!20593 0))(
  ( (ListLongMap!20594 (toList!10312 List!30097)) )
))
(declare-fun contains!8398 (ListLongMap!20593 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5268 (array!87365 array!87367 (_ BitVec 32) (_ BitVec 32) V!52037 V!52037 (_ BitVec 32) Int) ListLongMap!20593)

(assert (=> b!1309014 (= lt!585157 (contains!8398 (getCurrentListMap!5268 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1309015 () Bool)

(declare-fun res!869061 () Bool)

(assert (=> b!1309015 (=> (not res!869061) (not e!746868))))

(assert (=> b!1309015 (= res!869061 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42709 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309016 () Bool)

(declare-fun e!746870 () Bool)

(declare-fun e!746869 () Bool)

(declare-fun mapRes!54430 () Bool)

(assert (=> b!1309016 (= e!746870 (and e!746869 mapRes!54430))))

(declare-fun condMapEmpty!54430 () Bool)

(declare-fun mapDefault!54430 () ValueCell!16702)

