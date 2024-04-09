; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4052 () Bool)

(assert start!4052)

(declare-fun b_free!959 () Bool)

(declare-fun b_next!959 () Bool)

(assert (=> start!4052 (= b_free!959 (not b_next!959))))

(declare-fun tp!4296 () Bool)

(declare-fun b_and!1771 () Bool)

(assert (=> start!4052 (= tp!4296 b_and!1771)))

(declare-fun b!29806 () Bool)

(declare-fun res!17882 () Bool)

(declare-fun e!19218 () Bool)

(assert (=> b!29806 (=> (not res!17882) (not e!19218))))

(declare-datatypes ((array!1847 0))(
  ( (array!1848 (arr!877 (Array (_ BitVec 32) (_ BitVec 64))) (size!978 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1847)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1847 (_ BitVec 32)) Bool)

(assert (=> b!29806 (= res!17882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun res!17881 () Bool)

(assert (=> start!4052 (=> (not res!17881) (not e!19218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4052 (= res!17881 (validMask!0 mask!2294))))

(assert (=> start!4052 e!19218))

(assert (=> start!4052 true))

(assert (=> start!4052 tp!4296))

(declare-datatypes ((V!1575 0))(
  ( (V!1576 (val!683 Int)) )
))
(declare-datatypes ((ValueCell!457 0))(
  ( (ValueCellFull!457 (v!1772 V!1575)) (EmptyCell!457) )
))
(declare-datatypes ((array!1849 0))(
  ( (array!1850 (arr!878 (Array (_ BitVec 32) ValueCell!457)) (size!979 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1849)

(declare-fun e!19222 () Bool)

(declare-fun array_inv!591 (array!1849) Bool)

(assert (=> start!4052 (and (array_inv!591 _values!1501) e!19222)))

(declare-fun array_inv!592 (array!1847) Bool)

(assert (=> start!4052 (array_inv!592 _keys!1833)))

(declare-fun tp_is_empty!1313 () Bool)

(assert (=> start!4052 tp_is_empty!1313))

(declare-fun b!29807 () Bool)

(declare-fun e!19221 () Bool)

(assert (=> b!29807 (= e!19221 tp_is_empty!1313)))

(declare-fun b!29808 () Bool)

(declare-fun res!17883 () Bool)

(assert (=> b!29808 (=> (not res!17883) (not e!19218))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29808 (= res!17883 (validKeyInArray!0 k!1304))))

(declare-fun b!29809 () Bool)

(declare-fun mapRes!1498 () Bool)

(assert (=> b!29809 (= e!19222 (and e!19221 mapRes!1498))))

(declare-fun condMapEmpty!1498 () Bool)

(declare-fun mapDefault!1498 () ValueCell!457)

