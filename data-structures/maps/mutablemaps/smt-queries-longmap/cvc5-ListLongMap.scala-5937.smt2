; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77454 () Bool)

(assert start!77454)

(declare-fun b!902319 () Bool)

(declare-fun e!505382 () Bool)

(declare-fun tp_is_empty!18451 () Bool)

(assert (=> b!902319 (= e!505382 tp_is_empty!18451)))

(declare-fun mapNonEmpty!29383 () Bool)

(declare-fun mapRes!29383 () Bool)

(declare-fun tp!56443 () Bool)

(declare-fun e!505383 () Bool)

(assert (=> mapNonEmpty!29383 (= mapRes!29383 (and tp!56443 e!505383))))

(declare-datatypes ((V!29567 0))(
  ( (V!29568 (val!9276 Int)) )
))
(declare-datatypes ((ValueCell!8744 0))(
  ( (ValueCellFull!8744 (v!11780 V!29567)) (EmptyCell!8744) )
))
(declare-datatypes ((array!52954 0))(
  ( (array!52955 (arr!25434 (Array (_ BitVec 32) ValueCell!8744)) (size!25894 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52954)

(declare-fun mapRest!29383 () (Array (_ BitVec 32) ValueCell!8744))

(declare-fun mapValue!29383 () ValueCell!8744)

(declare-fun mapKey!29383 () (_ BitVec 32))

(assert (=> mapNonEmpty!29383 (= (arr!25434 _values!1152) (store mapRest!29383 mapKey!29383 mapValue!29383))))

(declare-fun b!902320 () Bool)

(declare-fun e!505386 () Bool)

(assert (=> b!902320 (= e!505386 (and e!505382 mapRes!29383))))

(declare-fun condMapEmpty!29383 () Bool)

(declare-fun mapDefault!29383 () ValueCell!8744)

