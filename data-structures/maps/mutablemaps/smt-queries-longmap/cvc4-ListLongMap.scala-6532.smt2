; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83108 () Bool)

(assert start!83108)

(declare-fun b!969014 () Bool)

(declare-fun e!546293 () Bool)

(declare-fun tp_is_empty!21971 () Bool)

(assert (=> b!969014 (= e!546293 tp_is_empty!21971)))

(declare-fun mapIsEmpty!34966 () Bool)

(declare-fun mapRes!34966 () Bool)

(assert (=> mapIsEmpty!34966 mapRes!34966))

(declare-fun b!969015 () Bool)

(declare-fun e!546294 () Bool)

(assert (=> b!969015 (= e!546294 false)))

(declare-fun lt!431551 () Bool)

(declare-datatypes ((array!59991 0))(
  ( (array!59992 (arr!28855 (Array (_ BitVec 32) (_ BitVec 64))) (size!29335 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59991)

(declare-datatypes ((List!20137 0))(
  ( (Nil!20134) (Cons!20133 (h!21295 (_ BitVec 64)) (t!28508 List!20137)) )
))
(declare-fun arrayNoDuplicates!0 (array!59991 (_ BitVec 32) List!20137) Bool)

(assert (=> b!969015 (= lt!431551 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20134))))

(declare-fun b!969016 () Bool)

(declare-fun e!546296 () Bool)

(assert (=> b!969016 (= e!546296 (and e!546293 mapRes!34966))))

(declare-fun condMapEmpty!34966 () Bool)

(declare-datatypes ((V!34277 0))(
  ( (V!34278 (val!11036 Int)) )
))
(declare-datatypes ((ValueCell!10504 0))(
  ( (ValueCellFull!10504 (v!13595 V!34277)) (EmptyCell!10504) )
))
(declare-datatypes ((array!59993 0))(
  ( (array!59994 (arr!28856 (Array (_ BitVec 32) ValueCell!10504)) (size!29336 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59993)

(declare-fun mapDefault!34966 () ValueCell!10504)

