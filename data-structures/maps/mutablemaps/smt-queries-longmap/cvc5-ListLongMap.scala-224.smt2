; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4024 () Bool)

(assert start!4024)

(declare-fun b_free!931 () Bool)

(declare-fun b_next!931 () Bool)

(assert (=> start!4024 (= b_free!931 (not b_next!931))))

(declare-fun tp!4213 () Bool)

(declare-fun b_and!1743 () Bool)

(assert (=> start!4024 (= tp!4213 b_and!1743)))

(declare-fun b!29420 () Bool)

(declare-fun res!17624 () Bool)

(declare-fun e!18995 () Bool)

(assert (=> b!29420 (=> (not res!17624) (not e!18995))))

(declare-datatypes ((array!1791 0))(
  ( (array!1792 (arr!849 (Array (_ BitVec 32) (_ BitVec 64))) (size!950 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1791)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1791 (_ BitVec 32)) Bool)

(assert (=> b!29420 (= res!17624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29421 () Bool)

(declare-fun res!17620 () Bool)

(declare-fun e!18992 () Bool)

(assert (=> b!29421 (=> (not res!17620) (not e!18992))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1791 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29421 (= res!17620 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!29422 () Bool)

(declare-fun e!18997 () Bool)

(declare-fun e!18996 () Bool)

(declare-fun mapRes!1456 () Bool)

(assert (=> b!29422 (= e!18997 (and e!18996 mapRes!1456))))

(declare-fun condMapEmpty!1456 () Bool)

(declare-datatypes ((V!1539 0))(
  ( (V!1540 (val!669 Int)) )
))
(declare-datatypes ((ValueCell!443 0))(
  ( (ValueCellFull!443 (v!1758 V!1539)) (EmptyCell!443) )
))
(declare-datatypes ((array!1793 0))(
  ( (array!1794 (arr!850 (Array (_ BitVec 32) ValueCell!443)) (size!951 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1793)

(declare-fun mapDefault!1456 () ValueCell!443)

