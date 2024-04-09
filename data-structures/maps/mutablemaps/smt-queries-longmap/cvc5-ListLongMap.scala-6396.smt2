; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82200 () Bool)

(assert start!82200)

(declare-fun mapNonEmpty!33706 () Bool)

(declare-fun mapRes!33706 () Bool)

(declare-fun tp!64312 () Bool)

(declare-fun e!539855 () Bool)

(assert (=> mapNonEmpty!33706 (= mapRes!33706 (and tp!64312 e!539855))))

(declare-datatypes ((V!33185 0))(
  ( (V!33186 (val!10626 Int)) )
))
(declare-datatypes ((ValueCell!10094 0))(
  ( (ValueCellFull!10094 (v!13183 V!33185)) (EmptyCell!10094) )
))
(declare-fun mapValue!33706 () ValueCell!10094)

(declare-fun mapKey!33706 () (_ BitVec 32))

(declare-datatypes ((array!58419 0))(
  ( (array!58420 (arr!28079 (Array (_ BitVec 32) ValueCell!10094)) (size!28559 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58419)

(declare-fun mapRest!33706 () (Array (_ BitVec 32) ValueCell!10094))

(assert (=> mapNonEmpty!33706 (= (arr!28079 _values!1386) (store mapRest!33706 mapKey!33706 mapValue!33706))))

(declare-fun b!957557 () Bool)

(declare-fun e!539854 () Bool)

(declare-fun tp_is_empty!21151 () Bool)

(assert (=> b!957557 (= e!539854 tp_is_empty!21151)))

(declare-fun b!957558 () Bool)

(declare-fun res!641077 () Bool)

(declare-fun e!539856 () Bool)

(assert (=> b!957558 (=> (not res!641077) (not e!539856))))

(declare-datatypes ((array!58421 0))(
  ( (array!58422 (arr!28080 (Array (_ BitVec 32) (_ BitVec 64))) (size!28560 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58421)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58421 (_ BitVec 32)) Bool)

(assert (=> b!957558 (= res!641077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957559 () Bool)

(assert (=> b!957559 (= e!539855 tp_is_empty!21151)))

(declare-fun b!957560 () Bool)

(declare-fun e!539858 () Bool)

(assert (=> b!957560 (= e!539858 (and e!539854 mapRes!33706))))

(declare-fun condMapEmpty!33706 () Bool)

(declare-fun mapDefault!33706 () ValueCell!10094)

