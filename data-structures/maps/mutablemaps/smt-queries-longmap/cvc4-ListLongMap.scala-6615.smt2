; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83650 () Bool)

(assert start!83650)

(declare-fun b!976812 () Bool)

(declare-fun e!550596 () Bool)

(declare-fun e!550599 () Bool)

(declare-fun mapRes!35717 () Bool)

(assert (=> b!976812 (= e!550596 (and e!550599 mapRes!35717))))

(declare-fun condMapEmpty!35717 () Bool)

(declare-datatypes ((V!34941 0))(
  ( (V!34942 (val!11285 Int)) )
))
(declare-datatypes ((ValueCell!10753 0))(
  ( (ValueCellFull!10753 (v!13846 V!34941)) (EmptyCell!10753) )
))
(declare-datatypes ((array!60949 0))(
  ( (array!60950 (arr!29333 (Array (_ BitVec 32) ValueCell!10753)) (size!29813 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60949)

(declare-fun mapDefault!35717 () ValueCell!10753)

