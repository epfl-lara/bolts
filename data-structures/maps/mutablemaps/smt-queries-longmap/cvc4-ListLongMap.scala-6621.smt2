; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83730 () Bool)

(assert start!83730)

(declare-fun b!977278 () Bool)

(declare-fun e!550962 () Bool)

(declare-fun e!550960 () Bool)

(declare-fun mapRes!35786 () Bool)

(assert (=> b!977278 (= e!550962 (and e!550960 mapRes!35786))))

(declare-fun condMapEmpty!35786 () Bool)

(declare-datatypes ((V!34989 0))(
  ( (V!34990 (val!11303 Int)) )
))
(declare-datatypes ((ValueCell!10771 0))(
  ( (ValueCellFull!10771 (v!13865 V!34989)) (EmptyCell!10771) )
))
(declare-datatypes ((array!61029 0))(
  ( (array!61030 (arr!29368 (Array (_ BitVec 32) ValueCell!10771)) (size!29848 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61029)

(declare-fun mapDefault!35786 () ValueCell!10771)

