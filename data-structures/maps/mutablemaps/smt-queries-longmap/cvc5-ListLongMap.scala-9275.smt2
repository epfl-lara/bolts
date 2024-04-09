; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111034 () Bool)

(assert start!111034)

(declare-fun b_free!29833 () Bool)

(declare-fun b_next!29833 () Bool)

(assert (=> start!111034 (= b_free!29833 (not b_next!29833))))

(declare-fun tp!104822 () Bool)

(declare-fun b_and!48051 () Bool)

(assert (=> start!111034 (= tp!104822 b_and!48051)))

(declare-fun mapNonEmpty!54973 () Bool)

(declare-fun mapRes!54973 () Bool)

(declare-fun tp!104821 () Bool)

(declare-fun e!749581 () Bool)

(assert (=> mapNonEmpty!54973 (= mapRes!54973 (and tp!104821 e!749581))))

(declare-datatypes ((V!52521 0))(
  ( (V!52522 (val!17856 Int)) )
))
(declare-datatypes ((ValueCell!16883 0))(
  ( (ValueCellFull!16883 (v!20481 V!52521)) (EmptyCell!16883) )
))
(declare-fun mapValue!54973 () ValueCell!16883)

(declare-fun mapKey!54973 () (_ BitVec 32))

(declare-datatypes ((array!88063 0))(
  ( (array!88064 (arr!42507 (Array (_ BitVec 32) ValueCell!16883)) (size!43058 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88063)

(declare-fun mapRest!54973 () (Array (_ BitVec 32) ValueCell!16883))

(assert (=> mapNonEmpty!54973 (= (arr!42507 _values!1354) (store mapRest!54973 mapKey!54973 mapValue!54973))))

(declare-fun mapIsEmpty!54973 () Bool)

(assert (=> mapIsEmpty!54973 mapRes!54973))

(declare-fun b!1314033 () Bool)

(declare-fun tp_is_empty!35563 () Bool)

(assert (=> b!1314033 (= e!749581 tp_is_empty!35563)))

(declare-fun res!872453 () Bool)

(declare-fun e!749585 () Bool)

(assert (=> start!111034 (=> (not res!872453) (not e!749585))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111034 (= res!872453 (validMask!0 mask!2040))))

(assert (=> start!111034 e!749585))

(assert (=> start!111034 tp!104822))

(declare-datatypes ((array!88065 0))(
  ( (array!88066 (arr!42508 (Array (_ BitVec 32) (_ BitVec 64))) (size!43059 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88065)

(declare-fun array_inv!32085 (array!88065) Bool)

(assert (=> start!111034 (array_inv!32085 _keys!1628)))

(assert (=> start!111034 true))

(assert (=> start!111034 tp_is_empty!35563))

(declare-fun e!749583 () Bool)

(declare-fun array_inv!32086 (array!88063) Bool)

(assert (=> start!111034 (and (array_inv!32086 _values!1354) e!749583)))

(declare-fun b!1314034 () Bool)

(declare-fun res!872450 () Bool)

(assert (=> b!1314034 (=> (not res!872450) (not e!749585))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1314034 (= res!872450 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43059 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314035 () Bool)

(declare-fun res!872451 () Bool)

(assert (=> b!1314035 (=> (not res!872451) (not e!749585))))

(declare-datatypes ((List!30358 0))(
  ( (Nil!30355) (Cons!30354 (h!31563 (_ BitVec 64)) (t!43971 List!30358)) )
))
(declare-fun arrayNoDuplicates!0 (array!88065 (_ BitVec 32) List!30358) Bool)

(assert (=> b!1314035 (= res!872451 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30355))))

(declare-fun b!1314036 () Bool)

(declare-fun res!872449 () Bool)

(assert (=> b!1314036 (=> (not res!872449) (not e!749585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88065 (_ BitVec 32)) Bool)

(assert (=> b!1314036 (= res!872449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314037 () Bool)

(declare-fun e!749582 () Bool)

(assert (=> b!1314037 (= e!749583 (and e!749582 mapRes!54973))))

(declare-fun condMapEmpty!54973 () Bool)

(declare-fun mapDefault!54973 () ValueCell!16883)

