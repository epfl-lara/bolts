; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111152 () Bool)

(assert start!111152)

(declare-fun b_free!29951 () Bool)

(declare-fun b_next!29951 () Bool)

(assert (=> start!111152 (= b_free!29951 (not b_next!29951))))

(declare-fun tp!105175 () Bool)

(declare-fun b_and!48169 () Bool)

(assert (=> start!111152 (= tp!105175 b_and!48169)))

(declare-fun b!1315521 () Bool)

(declare-fun e!750470 () Bool)

(assert (=> b!1315521 (= e!750470 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!88285 0))(
  ( (array!88286 (arr!42618 (Array (_ BitVec 32) (_ BitVec 64))) (size!43169 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88285)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52677 0))(
  ( (V!52678 (val!17915 Int)) )
))
(declare-fun minValue!1296 () V!52677)

(declare-fun zeroValue!1296 () V!52677)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585868 () Bool)

(declare-datatypes ((ValueCell!16942 0))(
  ( (ValueCellFull!16942 (v!20540 V!52677)) (EmptyCell!16942) )
))
(declare-datatypes ((array!88287 0))(
  ( (array!88288 (arr!42619 (Array (_ BitVec 32) ValueCell!16942)) (size!43170 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88287)

(declare-datatypes ((tuple2!23260 0))(
  ( (tuple2!23261 (_1!11640 (_ BitVec 64)) (_2!11640 V!52677)) )
))
(declare-datatypes ((List!30430 0))(
  ( (Nil!30427) (Cons!30426 (h!31635 tuple2!23260) (t!44043 List!30430)) )
))
(declare-datatypes ((ListLongMap!20929 0))(
  ( (ListLongMap!20930 (toList!10480 List!30430)) )
))
(declare-fun contains!8566 (ListLongMap!20929 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5436 (array!88285 array!88287 (_ BitVec 32) (_ BitVec 32) V!52677 V!52677 (_ BitVec 32) Int) ListLongMap!20929)

(assert (=> b!1315521 (= lt!585868 (contains!8566 (getCurrentListMap!5436 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun res!873408 () Bool)

(assert (=> start!111152 (=> (not res!873408) (not e!750470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111152 (= res!873408 (validMask!0 mask!2040))))

(assert (=> start!111152 e!750470))

(assert (=> start!111152 tp!105175))

(declare-fun array_inv!32159 (array!88285) Bool)

(assert (=> start!111152 (array_inv!32159 _keys!1628)))

(assert (=> start!111152 true))

(declare-fun tp_is_empty!35681 () Bool)

(assert (=> start!111152 tp_is_empty!35681))

(declare-fun e!750469 () Bool)

(declare-fun array_inv!32160 (array!88287) Bool)

(assert (=> start!111152 (and (array_inv!32160 _values!1354) e!750469)))

(declare-fun b!1315522 () Bool)

(declare-fun e!750468 () Bool)

(assert (=> b!1315522 (= e!750468 tp_is_empty!35681)))

(declare-fun b!1315523 () Bool)

(declare-fun e!750467 () Bool)

(declare-fun mapRes!55150 () Bool)

(assert (=> b!1315523 (= e!750469 (and e!750467 mapRes!55150))))

(declare-fun condMapEmpty!55150 () Bool)

(declare-fun mapDefault!55150 () ValueCell!16942)

