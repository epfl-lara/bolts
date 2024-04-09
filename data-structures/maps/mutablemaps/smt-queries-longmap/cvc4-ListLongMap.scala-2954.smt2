; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41956 () Bool)

(assert start!41956)

(declare-fun b_free!11537 () Bool)

(declare-fun b_next!11537 () Bool)

(assert (=> start!41956 (= b_free!11537 (not b_next!11537))))

(declare-fun tp!40623 () Bool)

(declare-fun b_and!19943 () Bool)

(assert (=> start!41956 (= tp!40623 b_and!19943)))

(declare-fun b!468155 () Bool)

(declare-fun res!279869 () Bool)

(declare-fun e!273995 () Bool)

(assert (=> b!468155 (=> (not res!279869) (not e!273995))))

(declare-datatypes ((array!29661 0))(
  ( (array!29662 (arr!14254 (Array (_ BitVec 32) (_ BitVec 64))) (size!14606 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29661)

(declare-datatypes ((List!8677 0))(
  ( (Nil!8674) (Cons!8673 (h!9529 (_ BitVec 64)) (t!14641 List!8677)) )
))
(declare-fun arrayNoDuplicates!0 (array!29661 (_ BitVec 32) List!8677) Bool)

(assert (=> b!468155 (= res!279869 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8674))))

(declare-fun b!468156 () Bool)

(declare-fun e!273996 () Bool)

(declare-fun e!273993 () Bool)

(declare-fun mapRes!21139 () Bool)

(assert (=> b!468156 (= e!273996 (and e!273993 mapRes!21139))))

(declare-fun condMapEmpty!21139 () Bool)

(declare-datatypes ((V!18391 0))(
  ( (V!18392 (val!6527 Int)) )
))
(declare-datatypes ((ValueCell!6139 0))(
  ( (ValueCellFull!6139 (v!8812 V!18391)) (EmptyCell!6139) )
))
(declare-datatypes ((array!29663 0))(
  ( (array!29664 (arr!14255 (Array (_ BitVec 32) ValueCell!6139)) (size!14607 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29663)

(declare-fun mapDefault!21139 () ValueCell!6139)

