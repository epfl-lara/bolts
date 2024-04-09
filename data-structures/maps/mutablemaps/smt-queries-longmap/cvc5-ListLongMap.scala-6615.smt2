; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83646 () Bool)

(assert start!83646)

(declare-fun b!976788 () Bool)

(declare-fun e!550566 () Bool)

(declare-fun tp_is_empty!22465 () Bool)

(assert (=> b!976788 (= e!550566 tp_is_empty!22465)))

(declare-fun mapIsEmpty!35711 () Bool)

(declare-fun mapRes!35711 () Bool)

(assert (=> mapIsEmpty!35711 mapRes!35711))

(declare-fun b!976789 () Bool)

(declare-fun e!550569 () Bool)

(assert (=> b!976789 (= e!550569 (and e!550566 mapRes!35711))))

(declare-fun condMapEmpty!35711 () Bool)

(declare-datatypes ((V!34937 0))(
  ( (V!34938 (val!11283 Int)) )
))
(declare-datatypes ((ValueCell!10751 0))(
  ( (ValueCellFull!10751 (v!13844 V!34937)) (EmptyCell!10751) )
))
(declare-datatypes ((array!60943 0))(
  ( (array!60944 (arr!29330 (Array (_ BitVec 32) ValueCell!10751)) (size!29810 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60943)

(declare-fun mapDefault!35711 () ValueCell!10751)

