; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83988 () Bool)

(assert start!83988)

(declare-fun b!981001 () Bool)

(declare-fun res!656583 () Bool)

(declare-fun e!553058 () Bool)

(assert (=> b!981001 (=> (not res!656583) (not e!553058))))

(declare-datatypes ((array!61523 0))(
  ( (array!61524 (arr!29615 (Array (_ BitVec 32) (_ BitVec 64))) (size!30095 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61523)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61523 (_ BitVec 32)) Bool)

(assert (=> b!981001 (= res!656583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981002 () Bool)

(declare-fun e!553061 () Bool)

(declare-fun e!553059 () Bool)

(declare-fun mapRes!36173 () Bool)

(assert (=> b!981002 (= e!553061 (and e!553059 mapRes!36173))))

(declare-fun condMapEmpty!36173 () Bool)

(declare-datatypes ((V!35333 0))(
  ( (V!35334 (val!11432 Int)) )
))
(declare-datatypes ((ValueCell!10900 0))(
  ( (ValueCellFull!10900 (v!13994 V!35333)) (EmptyCell!10900) )
))
(declare-datatypes ((array!61525 0))(
  ( (array!61526 (arr!29616 (Array (_ BitVec 32) ValueCell!10900)) (size!30096 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61525)

(declare-fun mapDefault!36173 () ValueCell!10900)

