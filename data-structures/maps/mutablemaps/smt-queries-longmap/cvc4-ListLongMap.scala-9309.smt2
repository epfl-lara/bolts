; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111318 () Bool)

(assert start!111318)

(declare-fun b!1316949 () Bool)

(declare-fun res!874203 () Bool)

(declare-fun e!751416 () Bool)

(assert (=> b!1316949 (=> (not res!874203) (not e!751416))))

(declare-datatypes ((array!88455 0))(
  ( (array!88456 (arr!42698 (Array (_ BitVec 32) (_ BitVec 64))) (size!43249 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88455)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88455 (_ BitVec 32)) Bool)

(assert (=> b!1316949 (= res!874203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!874207 () Bool)

(assert (=> start!111318 (=> (not res!874207) (not e!751416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111318 (= res!874207 (validMask!0 mask!2019))))

(assert (=> start!111318 e!751416))

(assert (=> start!111318 true))

(declare-datatypes ((V!52797 0))(
  ( (V!52798 (val!17960 Int)) )
))
(declare-datatypes ((ValueCell!16987 0))(
  ( (ValueCellFull!16987 (v!20587 V!52797)) (EmptyCell!16987) )
))
(declare-datatypes ((array!88457 0))(
  ( (array!88458 (arr!42699 (Array (_ BitVec 32) ValueCell!16987)) (size!43250 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88457)

(declare-fun e!751415 () Bool)

(declare-fun array_inv!32213 (array!88457) Bool)

(assert (=> start!111318 (and (array_inv!32213 _values!1337) e!751415)))

(declare-fun array_inv!32214 (array!88455) Bool)

(assert (=> start!111318 (array_inv!32214 _keys!1609)))

(declare-fun b!1316950 () Bool)

(declare-fun e!751413 () Bool)

(declare-fun mapRes!55301 () Bool)

(assert (=> b!1316950 (= e!751415 (and e!751413 mapRes!55301))))

(declare-fun condMapEmpty!55301 () Bool)

(declare-fun mapDefault!55301 () ValueCell!16987)

