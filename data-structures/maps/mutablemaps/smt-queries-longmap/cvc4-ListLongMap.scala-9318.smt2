; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111384 () Bool)

(assert start!111384)

(declare-fun b!1317480 () Bool)

(declare-fun e!751848 () Bool)

(declare-fun tp_is_empty!35825 () Bool)

(assert (=> b!1317480 (= e!751848 tp_is_empty!35825)))

(declare-datatypes ((array!88557 0))(
  ( (array!88558 (arr!42748 (Array (_ BitVec 32) (_ BitVec 64))) (size!43299 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88557)

(declare-fun e!751851 () Bool)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun b!1317481 () Bool)

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1317481 (= e!751851 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43299 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsgt from!2000 (size!43299 _keys!1609))))))

(declare-fun b!1317482 () Bool)

(declare-fun res!874478 () Bool)

(assert (=> b!1317482 (=> (not res!874478) (not e!751851))))

(declare-datatypes ((List!30489 0))(
  ( (Nil!30486) (Cons!30485 (h!31694 (_ BitVec 64)) (t!44104 List!30489)) )
))
(declare-fun arrayNoDuplicates!0 (array!88557 (_ BitVec 32) List!30489) Bool)

(assert (=> b!1317482 (= res!874478 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30486))))

(declare-fun b!1317483 () Bool)

(declare-fun res!874480 () Bool)

(assert (=> b!1317483 (=> (not res!874480) (not e!751851))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88557 (_ BitVec 32)) Bool)

(assert (=> b!1317483 (= res!874480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317484 () Bool)

(declare-fun e!751850 () Bool)

(declare-fun mapRes!55385 () Bool)

(assert (=> b!1317484 (= e!751850 (and e!751848 mapRes!55385))))

(declare-fun condMapEmpty!55385 () Bool)

(declare-datatypes ((V!52869 0))(
  ( (V!52870 (val!17987 Int)) )
))
(declare-datatypes ((ValueCell!17014 0))(
  ( (ValueCellFull!17014 (v!20615 V!52869)) (EmptyCell!17014) )
))
(declare-datatypes ((array!88559 0))(
  ( (array!88560 (arr!42749 (Array (_ BitVec 32) ValueCell!17014)) (size!43300 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88559)

(declare-fun mapDefault!55385 () ValueCell!17014)

