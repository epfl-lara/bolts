; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83536 () Bool)

(assert start!83536)

(declare-fun b_free!19495 () Bool)

(declare-fun b_next!19495 () Bool)

(assert (=> start!83536 (= b_free!19495 (not b_next!19495))))

(declare-fun tp!67773 () Bool)

(declare-fun b_and!31115 () Bool)

(assert (=> start!83536 (= tp!67773 b_and!31115)))

(declare-fun mapIsEmpty!35608 () Bool)

(declare-fun mapRes!35608 () Bool)

(assert (=> mapIsEmpty!35608 mapRes!35608))

(declare-fun b!975429 () Bool)

(declare-fun e!549768 () Bool)

(declare-fun from!2118 () (_ BitVec 32))

(declare-datatypes ((array!60813 0))(
  ( (array!60814 (arr!29266 (Array (_ BitVec 32) (_ BitVec 64))) (size!29746 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60813)

(assert (=> b!975429 (= e!549768 (bvsge (bvsub from!2118 #b00000000000000000000000000000001) (size!29746 _keys!1717)))))

(declare-fun b!975430 () Bool)

(declare-fun e!549766 () Bool)

(declare-fun e!549767 () Bool)

(assert (=> b!975430 (= e!549766 (and e!549767 mapRes!35608))))

(declare-fun condMapEmpty!35608 () Bool)

(declare-datatypes ((V!34849 0))(
  ( (V!34850 (val!11250 Int)) )
))
(declare-datatypes ((ValueCell!10718 0))(
  ( (ValueCellFull!10718 (v!13809 V!34849)) (EmptyCell!10718) )
))
(declare-datatypes ((array!60815 0))(
  ( (array!60816 (arr!29267 (Array (_ BitVec 32) ValueCell!10718)) (size!29747 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60815)

(declare-fun mapDefault!35608 () ValueCell!10718)

