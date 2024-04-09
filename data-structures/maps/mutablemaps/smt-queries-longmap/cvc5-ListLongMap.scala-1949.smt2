; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34448 () Bool)

(assert start!34448)

(declare-fun b_free!7363 () Bool)

(declare-fun b_next!7363 () Bool)

(assert (=> start!34448 (= b_free!7363 (not b_next!7363))))

(declare-fun tp!25635 () Bool)

(declare-fun b_and!14589 () Bool)

(assert (=> start!34448 (= tp!25635 b_and!14589)))

(declare-fun b!343745 () Bool)

(declare-fun e!210764 () Bool)

(declare-fun tp_is_empty!7315 () Bool)

(assert (=> b!343745 (= e!210764 tp_is_empty!7315)))

(declare-fun b!343746 () Bool)

(declare-fun res!190115 () Bool)

(declare-fun e!210766 () Bool)

(assert (=> b!343746 (=> (not res!190115) (not e!210766))))

(declare-datatypes ((array!18193 0))(
  ( (array!18194 (arr!8610 (Array (_ BitVec 32) (_ BitVec 64))) (size!8962 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18193)

(declare-datatypes ((List!4997 0))(
  ( (Nil!4994) (Cons!4993 (h!5849 (_ BitVec 64)) (t!10121 List!4997)) )
))
(declare-fun arrayNoDuplicates!0 (array!18193 (_ BitVec 32) List!4997) Bool)

(assert (=> b!343746 (= res!190115 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4994))))

(declare-fun b!343747 () Bool)

(declare-fun res!190114 () Bool)

(assert (=> b!343747 (=> (not res!190114) (not e!210766))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343747 (= res!190114 (validKeyInArray!0 k!1348))))

(declare-fun res!190118 () Bool)

(assert (=> start!34448 (=> (not res!190118) (not e!210766))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34448 (= res!190118 (validMask!0 mask!2385))))

(assert (=> start!34448 e!210766))

(assert (=> start!34448 true))

(assert (=> start!34448 tp_is_empty!7315))

(assert (=> start!34448 tp!25635))

(declare-datatypes ((V!10731 0))(
  ( (V!10732 (val!3702 Int)) )
))
(declare-datatypes ((ValueCell!3314 0))(
  ( (ValueCellFull!3314 (v!5874 V!10731)) (EmptyCell!3314) )
))
(declare-datatypes ((array!18195 0))(
  ( (array!18196 (arr!8611 (Array (_ BitVec 32) ValueCell!3314)) (size!8963 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18195)

(declare-fun e!210765 () Bool)

(declare-fun array_inv!6370 (array!18195) Bool)

(assert (=> start!34448 (and (array_inv!6370 _values!1525) e!210765)))

(declare-fun array_inv!6371 (array!18193) Bool)

(assert (=> start!34448 (array_inv!6371 _keys!1895)))

(declare-fun b!343748 () Bool)

(declare-fun res!190113 () Bool)

(assert (=> b!343748 (=> (not res!190113) (not e!210766))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!343748 (= res!190113 (and (= (size!8963 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8962 _keys!1895) (size!8963 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!343749 () Bool)

(declare-fun res!190116 () Bool)

(assert (=> b!343749 (=> (not res!190116) (not e!210766))))

(declare-fun zeroValue!1467 () V!10731)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10731)

(declare-datatypes ((tuple2!5352 0))(
  ( (tuple2!5353 (_1!2686 (_ BitVec 64)) (_2!2686 V!10731)) )
))
(declare-datatypes ((List!4998 0))(
  ( (Nil!4995) (Cons!4994 (h!5850 tuple2!5352) (t!10122 List!4998)) )
))
(declare-datatypes ((ListLongMap!4279 0))(
  ( (ListLongMap!4280 (toList!2155 List!4998)) )
))
(declare-fun contains!2209 (ListLongMap!4279 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1675 (array!18193 array!18195 (_ BitVec 32) (_ BitVec 32) V!10731 V!10731 (_ BitVec 32) Int) ListLongMap!4279)

(assert (=> b!343749 (= res!190116 (not (contains!2209 (getCurrentListMap!1675 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!343750 () Bool)

(declare-fun e!210768 () Bool)

(declare-fun mapRes!12411 () Bool)

(assert (=> b!343750 (= e!210765 (and e!210768 mapRes!12411))))

(declare-fun condMapEmpty!12411 () Bool)

(declare-fun mapDefault!12411 () ValueCell!3314)

