; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82216 () Bool)

(assert start!82216)

(declare-fun b_free!18461 () Bool)

(declare-fun b_next!18461 () Bool)

(assert (=> start!82216 (= b_free!18461 (not b_next!18461))))

(declare-fun tp!64345 () Bool)

(declare-fun b_and!29967 () Bool)

(assert (=> start!82216 (= tp!64345 b_and!29967)))

(declare-fun b!957752 () Bool)

(declare-fun res!641204 () Bool)

(declare-fun e!539976 () Bool)

(assert (=> b!957752 (=> (not res!641204) (not e!539976))))

(declare-datatypes ((array!58451 0))(
  ( (array!58452 (arr!28095 (Array (_ BitVec 32) (_ BitVec 64))) (size!28575 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58451)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!957752 (= res!641204 (validKeyInArray!0 (select (arr!28095 _keys!1668) i!793)))))

(declare-fun b!957753 () Bool)

(declare-fun e!539975 () Bool)

(declare-fun tp_is_empty!21167 () Bool)

(assert (=> b!957753 (= e!539975 tp_is_empty!21167)))

(declare-fun res!641200 () Bool)

(assert (=> start!82216 (=> (not res!641200) (not e!539976))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82216 (= res!641200 (validMask!0 mask!2088))))

(assert (=> start!82216 e!539976))

(assert (=> start!82216 true))

(assert (=> start!82216 tp_is_empty!21167))

(declare-fun array_inv!21737 (array!58451) Bool)

(assert (=> start!82216 (array_inv!21737 _keys!1668)))

(declare-datatypes ((V!33205 0))(
  ( (V!33206 (val!10634 Int)) )
))
(declare-datatypes ((ValueCell!10102 0))(
  ( (ValueCellFull!10102 (v!13191 V!33205)) (EmptyCell!10102) )
))
(declare-datatypes ((array!58453 0))(
  ( (array!58454 (arr!28096 (Array (_ BitVec 32) ValueCell!10102)) (size!28576 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58453)

(declare-fun e!539977 () Bool)

(declare-fun array_inv!21738 (array!58453) Bool)

(assert (=> start!82216 (and (array_inv!21738 _values!1386) e!539977)))

(assert (=> start!82216 tp!64345))

(declare-fun mapNonEmpty!33730 () Bool)

(declare-fun mapRes!33730 () Bool)

(declare-fun tp!64344 () Bool)

(declare-fun e!539978 () Bool)

(assert (=> mapNonEmpty!33730 (= mapRes!33730 (and tp!64344 e!539978))))

(declare-fun mapRest!33730 () (Array (_ BitVec 32) ValueCell!10102))

(declare-fun mapKey!33730 () (_ BitVec 32))

(declare-fun mapValue!33730 () ValueCell!10102)

(assert (=> mapNonEmpty!33730 (= (arr!28096 _values!1386) (store mapRest!33730 mapKey!33730 mapValue!33730))))

(declare-fun b!957754 () Bool)

(assert (=> b!957754 (= e!539977 (and e!539975 mapRes!33730))))

(declare-fun condMapEmpty!33730 () Bool)

(declare-fun mapDefault!33730 () ValueCell!10102)

