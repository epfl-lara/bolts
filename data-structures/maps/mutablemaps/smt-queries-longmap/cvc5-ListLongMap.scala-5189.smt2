; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70158 () Bool)

(assert start!70158)

(declare-fun b_free!12541 () Bool)

(declare-fun b_next!12541 () Bool)

(assert (=> start!70158 (= b_free!12541 (not b_next!12541))))

(declare-fun tp!44341 () Bool)

(declare-fun b_and!21339 () Bool)

(assert (=> start!70158 (= tp!44341 b_and!21339)))

(declare-fun b!814761 () Bool)

(declare-fun res!556545 () Bool)

(declare-fun e!451740 () Bool)

(assert (=> b!814761 (=> (not res!556545) (not e!451740))))

(declare-datatypes ((array!44690 0))(
  ( (array!44691 (arr!21400 (Array (_ BitVec 32) (_ BitVec 64))) (size!21821 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44690)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44690 (_ BitVec 32)) Bool)

(assert (=> b!814761 (= res!556545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814762 () Bool)

(declare-fun res!556547 () Bool)

(assert (=> b!814762 (=> (not res!556547) (not e!451740))))

(declare-datatypes ((List!15284 0))(
  ( (Nil!15281) (Cons!15280 (h!16409 (_ BitVec 64)) (t!21611 List!15284)) )
))
(declare-fun arrayNoDuplicates!0 (array!44690 (_ BitVec 32) List!15284) Bool)

(assert (=> b!814762 (= res!556547 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15281))))

(declare-fun mapNonEmpty!22960 () Bool)

(declare-fun mapRes!22960 () Bool)

(declare-fun tp!44340 () Bool)

(declare-fun e!451739 () Bool)

(assert (=> mapNonEmpty!22960 (= mapRes!22960 (and tp!44340 e!451739))))

(declare-datatypes ((V!24003 0))(
  ( (V!24004 (val!7173 Int)) )
))
(declare-datatypes ((ValueCell!6710 0))(
  ( (ValueCellFull!6710 (v!9596 V!24003)) (EmptyCell!6710) )
))
(declare-fun mapValue!22960 () ValueCell!6710)

(declare-fun mapRest!22960 () (Array (_ BitVec 32) ValueCell!6710))

(declare-datatypes ((array!44692 0))(
  ( (array!44693 (arr!21401 (Array (_ BitVec 32) ValueCell!6710)) (size!21822 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44692)

(declare-fun mapKey!22960 () (_ BitVec 32))

(assert (=> mapNonEmpty!22960 (= (arr!21401 _values!788) (store mapRest!22960 mapKey!22960 mapValue!22960))))

(declare-fun res!556546 () Bool)

(assert (=> start!70158 (=> (not res!556546) (not e!451740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70158 (= res!556546 (validMask!0 mask!1312))))

(assert (=> start!70158 e!451740))

(declare-fun tp_is_empty!14251 () Bool)

(assert (=> start!70158 tp_is_empty!14251))

(declare-fun array_inv!17101 (array!44690) Bool)

(assert (=> start!70158 (array_inv!17101 _keys!976)))

(assert (=> start!70158 true))

(declare-fun e!451738 () Bool)

(declare-fun array_inv!17102 (array!44692) Bool)

(assert (=> start!70158 (and (array_inv!17102 _values!788) e!451738)))

(assert (=> start!70158 tp!44341))

(declare-fun b!814763 () Bool)

(declare-fun e!451736 () Bool)

(assert (=> b!814763 (= e!451736 tp_is_empty!14251)))

(declare-fun b!814764 () Bool)

(assert (=> b!814764 (= e!451739 tp_is_empty!14251)))

(declare-fun b!814765 () Bool)

(assert (=> b!814765 (= e!451738 (and e!451736 mapRes!22960))))

(declare-fun condMapEmpty!22960 () Bool)

(declare-fun mapDefault!22960 () ValueCell!6710)

