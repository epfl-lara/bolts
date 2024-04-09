; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3678 () Bool)

(assert start!3678)

(declare-fun mapIsEmpty!1069 () Bool)

(declare-fun mapRes!1069 () Bool)

(assert (=> mapIsEmpty!1069 mapRes!1069))

(declare-fun b!25809 () Bool)

(declare-fun e!16703 () Bool)

(declare-fun tp_is_empty!1045 () Bool)

(assert (=> b!25809 (= e!16703 tp_is_empty!1045)))

(declare-fun b!25810 () Bool)

(declare-fun e!16702 () Bool)

(declare-fun e!16705 () Bool)

(assert (=> b!25810 (= e!16702 (and e!16705 mapRes!1069))))

(declare-fun condMapEmpty!1069 () Bool)

(declare-datatypes ((V!1219 0))(
  ( (V!1220 (val!549 Int)) )
))
(declare-datatypes ((ValueCell!323 0))(
  ( (ValueCellFull!323 (v!1634 V!1219)) (EmptyCell!323) )
))
(declare-datatypes ((array!1325 0))(
  ( (array!1326 (arr!625 (Array (_ BitVec 32) ValueCell!323)) (size!726 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1325)

(declare-fun mapDefault!1069 () ValueCell!323)

