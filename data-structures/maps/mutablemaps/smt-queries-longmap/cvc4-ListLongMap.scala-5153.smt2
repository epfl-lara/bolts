; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69910 () Bool)

(assert start!69910)

(declare-fun mapNonEmpty!22633 () Bool)

(declare-fun mapRes!22633 () Bool)

(declare-fun tp!43741 () Bool)

(declare-fun e!450020 () Bool)

(assert (=> mapNonEmpty!22633 (= mapRes!22633 (and tp!43741 e!450020))))

(declare-datatypes ((V!23719 0))(
  ( (V!23720 (val!7067 Int)) )
))
(declare-datatypes ((ValueCell!6604 0))(
  ( (ValueCellFull!6604 (v!9490 V!23719)) (EmptyCell!6604) )
))
(declare-fun mapValue!22633 () ValueCell!6604)

(declare-fun mapRest!22633 () (Array (_ BitVec 32) ValueCell!6604))

(declare-datatypes ((array!44276 0))(
  ( (array!44277 (arr!21196 (Array (_ BitVec 32) ValueCell!6604)) (size!21617 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44276)

(declare-fun mapKey!22633 () (_ BitVec 32))

(assert (=> mapNonEmpty!22633 (= (arr!21196 _values!788) (store mapRest!22633 mapKey!22633 mapValue!22633))))

(declare-fun b!812379 () Bool)

(declare-fun e!450017 () Bool)

(declare-fun e!450016 () Bool)

(assert (=> b!812379 (= e!450017 (and e!450016 mapRes!22633))))

(declare-fun condMapEmpty!22633 () Bool)

(declare-fun mapDefault!22633 () ValueCell!6604)

