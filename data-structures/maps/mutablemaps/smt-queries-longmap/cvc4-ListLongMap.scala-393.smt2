; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7414 () Bool)

(assert start!7414)

(declare-fun b!47564 () Bool)

(declare-fun e!30474 () Bool)

(declare-fun tp_is_empty!2039 () Bool)

(assert (=> b!47564 (= e!30474 tp_is_empty!2039)))

(declare-fun b!47565 () Bool)

(declare-fun e!30475 () Bool)

(assert (=> b!47565 (= e!30475 tp_is_empty!2039)))

(declare-fun mapNonEmpty!2102 () Bool)

(declare-fun mapRes!2102 () Bool)

(declare-fun tp!6251 () Bool)

(assert (=> mapNonEmpty!2102 (= mapRes!2102 (and tp!6251 e!30475))))

(declare-fun mapKey!2102 () (_ BitVec 32))

(declare-datatypes ((V!2451 0))(
  ( (V!2452 (val!1058 Int)) )
))
(declare-datatypes ((ValueCell!730 0))(
  ( (ValueCellFull!730 (v!2118 V!2451)) (EmptyCell!730) )
))
(declare-fun mapValue!2102 () ValueCell!730)

(declare-fun mapRest!2102 () (Array (_ BitVec 32) ValueCell!730))

(declare-datatypes ((array!3144 0))(
  ( (array!3145 (arr!1506 (Array (_ BitVec 32) ValueCell!730)) (size!1728 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3144)

(assert (=> mapNonEmpty!2102 (= (arr!1506 _values!1550) (store mapRest!2102 mapKey!2102 mapValue!2102))))

(declare-fun b!47566 () Bool)

(declare-fun e!30473 () Bool)

(assert (=> b!47566 (= e!30473 (and e!30474 mapRes!2102))))

(declare-fun condMapEmpty!2102 () Bool)

(declare-fun mapDefault!2102 () ValueCell!730)

