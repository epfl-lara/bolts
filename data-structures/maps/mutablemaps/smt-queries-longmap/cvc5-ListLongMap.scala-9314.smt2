; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111356 () Bool)

(assert start!111356)

(declare-fun res!874343 () Bool)

(declare-fun e!751641 () Bool)

(assert (=> start!111356 (=> (not res!874343) (not e!751641))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111356 (= res!874343 (validMask!0 mask!2019))))

(assert (=> start!111356 e!751641))

(assert (=> start!111356 true))

(declare-datatypes ((V!52833 0))(
  ( (V!52834 (val!17973 Int)) )
))
(declare-datatypes ((ValueCell!17000 0))(
  ( (ValueCellFull!17000 (v!20601 V!52833)) (EmptyCell!17000) )
))
(declare-datatypes ((array!88505 0))(
  ( (array!88506 (arr!42722 (Array (_ BitVec 32) ValueCell!17000)) (size!43273 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88505)

(declare-fun e!751638 () Bool)

(declare-fun array_inv!32229 (array!88505) Bool)

(assert (=> start!111356 (and (array_inv!32229 _values!1337) e!751638)))

(declare-datatypes ((array!88507 0))(
  ( (array!88508 (arr!42723 (Array (_ BitVec 32) (_ BitVec 64))) (size!43274 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88507)

(declare-fun array_inv!32230 (array!88507) Bool)

(assert (=> start!111356 (array_inv!32230 _keys!1609)))

(declare-fun b!1317220 () Bool)

(declare-fun e!751642 () Bool)

(declare-fun tp_is_empty!35797 () Bool)

(assert (=> b!1317220 (= e!751642 tp_is_empty!35797)))

(declare-fun mapIsEmpty!55343 () Bool)

(declare-fun mapRes!55343 () Bool)

(assert (=> mapIsEmpty!55343 mapRes!55343))

(declare-fun b!1317221 () Bool)

(assert (=> b!1317221 (= e!751638 (and e!751642 mapRes!55343))))

(declare-fun condMapEmpty!55343 () Bool)

(declare-fun mapDefault!55343 () ValueCell!17000)

