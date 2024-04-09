; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3818 () Bool)

(assert start!3818)

(declare-fun b_free!775 () Bool)

(declare-fun b_next!775 () Bool)

(assert (=> start!3818 (= b_free!775 (not b_next!775))))

(declare-fun tp!3736 () Bool)

(declare-fun b_and!1581 () Bool)

(assert (=> start!3818 (= tp!3736 b_and!1581)))

(declare-fun b!26752 () Bool)

(declare-fun e!17455 () Bool)

(declare-fun tp_is_empty!1129 () Bool)

(assert (=> b!26752 (= e!17455 tp_is_empty!1129)))

(declare-fun b!26753 () Bool)

(declare-fun res!15848 () Bool)

(declare-fun e!17457 () Bool)

(assert (=> b!26753 (=> (not res!15848) (not e!17457))))

(declare-datatypes ((array!1489 0))(
  ( (array!1490 (arr!701 (Array (_ BitVec 32) (_ BitVec 64))) (size!802 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1489)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1489 (_ BitVec 32)) Bool)

(assert (=> b!26753 (= res!15848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!26754 () Bool)

(declare-fun res!15849 () Bool)

(assert (=> b!26754 (=> (not res!15849) (not e!17457))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!26754 (= res!15849 (validKeyInArray!0 k!1304))))

(declare-fun b!26755 () Bool)

(declare-fun e!17456 () Bool)

(declare-fun e!17458 () Bool)

(declare-fun mapRes!1213 () Bool)

(assert (=> b!26755 (= e!17456 (and e!17458 mapRes!1213))))

(declare-fun condMapEmpty!1213 () Bool)

(declare-datatypes ((V!1331 0))(
  ( (V!1332 (val!591 Int)) )
))
(declare-datatypes ((ValueCell!365 0))(
  ( (ValueCellFull!365 (v!1677 V!1331)) (EmptyCell!365) )
))
(declare-datatypes ((array!1491 0))(
  ( (array!1492 (arr!702 (Array (_ BitVec 32) ValueCell!365)) (size!803 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1491)

(declare-fun mapDefault!1213 () ValueCell!365)

