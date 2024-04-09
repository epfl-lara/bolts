; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16090 () Bool)

(assert start!16090)

(declare-fun b!159650 () Bool)

(declare-fun b_free!3539 () Bool)

(declare-fun b_next!3539 () Bool)

(assert (=> b!159650 (= b_free!3539 (not b_next!3539))))

(declare-fun tp!13186 () Bool)

(declare-fun b_and!9971 () Bool)

(assert (=> b!159650 (= tp!13186 b_and!9971)))

(declare-fun b!159649 () Bool)

(declare-fun e!104479 () Bool)

(assert (=> b!159649 (= e!104479 false)))

(declare-fun lt!82043 () Bool)

(declare-datatypes ((V!4101 0))(
  ( (V!4102 (val!1715 Int)) )
))
(declare-datatypes ((ValueCell!1327 0))(
  ( (ValueCellFull!1327 (v!3576 V!4101)) (EmptyCell!1327) )
))
(declare-datatypes ((array!5760 0))(
  ( (array!5761 (arr!2724 (Array (_ BitVec 32) (_ BitVec 64))) (size!3008 (_ BitVec 32))) )
))
(declare-datatypes ((array!5762 0))(
  ( (array!5763 (arr!2725 (Array (_ BitVec 32) ValueCell!1327)) (size!3009 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1562 0))(
  ( (LongMapFixedSize!1563 (defaultEntry!3223 Int) (mask!7777 (_ BitVec 32)) (extraKeys!2964 (_ BitVec 32)) (zeroValue!3066 V!4101) (minValue!3066 V!4101) (_size!830 (_ BitVec 32)) (_keys!5024 array!5760) (_values!3206 array!5762) (_vacant!830 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1562)

(declare-datatypes ((List!1932 0))(
  ( (Nil!1929) (Cons!1928 (h!2541 (_ BitVec 64)) (t!6742 List!1932)) )
))
(declare-fun arrayNoDuplicates!0 (array!5760 (_ BitVec 32) List!1932) Bool)

(assert (=> b!159649 (= lt!82043 (arrayNoDuplicates!0 (_keys!5024 thiss!1248) #b00000000000000000000000000000000 Nil!1929))))

(declare-fun e!104478 () Bool)

(declare-fun e!104483 () Bool)

(declare-fun tp_is_empty!3341 () Bool)

(declare-fun array_inv!1725 (array!5760) Bool)

(declare-fun array_inv!1726 (array!5762) Bool)

(assert (=> b!159650 (= e!104478 (and tp!13186 tp_is_empty!3341 (array_inv!1725 (_keys!5024 thiss!1248)) (array_inv!1726 (_values!3206 thiss!1248)) e!104483))))

(declare-fun b!159651 () Bool)

(declare-fun res!75488 () Bool)

(assert (=> b!159651 (=> (not res!75488) (not e!104479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159651 (= res!75488 (validMask!0 (mask!7777 thiss!1248)))))

(declare-fun b!159652 () Bool)

(declare-fun e!104480 () Bool)

(declare-fun mapRes!5699 () Bool)

(assert (=> b!159652 (= e!104483 (and e!104480 mapRes!5699))))

(declare-fun condMapEmpty!5699 () Bool)

(declare-fun mapDefault!5699 () ValueCell!1327)

