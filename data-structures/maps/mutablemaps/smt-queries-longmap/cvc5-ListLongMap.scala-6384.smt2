; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82084 () Bool)

(assert start!82084)

(declare-fun b!956779 () Bool)

(declare-fun e!539221 () Bool)

(declare-fun tp_is_empty!21079 () Bool)

(assert (=> b!956779 (= e!539221 tp_is_empty!21079)))

(declare-fun mapNonEmpty!33583 () Bool)

(declare-fun mapRes!33583 () Bool)

(declare-fun tp!64189 () Bool)

(assert (=> mapNonEmpty!33583 (= mapRes!33583 (and tp!64189 e!539221))))

(declare-datatypes ((V!33089 0))(
  ( (V!33090 (val!10590 Int)) )
))
(declare-datatypes ((ValueCell!10058 0))(
  ( (ValueCellFull!10058 (v!13146 V!33089)) (EmptyCell!10058) )
))
(declare-fun mapRest!33583 () (Array (_ BitVec 32) ValueCell!10058))

(declare-fun mapValue!33583 () ValueCell!10058)

(declare-datatypes ((array!58277 0))(
  ( (array!58278 (arr!28013 (Array (_ BitVec 32) ValueCell!10058)) (size!28493 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58277)

(declare-fun mapKey!33583 () (_ BitVec 32))

(assert (=> mapNonEmpty!33583 (= (arr!28013 _values!1386) (store mapRest!33583 mapKey!33583 mapValue!33583))))

(declare-fun b!956780 () Bool)

(declare-fun e!539222 () Bool)

(assert (=> b!956780 (= e!539222 tp_is_empty!21079)))

(declare-fun res!640687 () Bool)

(declare-fun e!539220 () Bool)

(assert (=> start!82084 (=> (not res!640687) (not e!539220))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82084 (= res!640687 (validMask!0 mask!2088))))

(assert (=> start!82084 e!539220))

(assert (=> start!82084 true))

(declare-fun e!539223 () Bool)

(declare-fun array_inv!21677 (array!58277) Bool)

(assert (=> start!82084 (and (array_inv!21677 _values!1386) e!539223)))

(declare-datatypes ((array!58279 0))(
  ( (array!58280 (arr!28014 (Array (_ BitVec 32) (_ BitVec 64))) (size!28494 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58279)

(declare-fun array_inv!21678 (array!58279) Bool)

(assert (=> start!82084 (array_inv!21678 _keys!1668)))

(declare-fun b!956781 () Bool)

(assert (=> b!956781 (= e!539223 (and e!539222 mapRes!33583))))

(declare-fun condMapEmpty!33583 () Bool)

(declare-fun mapDefault!33583 () ValueCell!10058)

