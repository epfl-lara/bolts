; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!834 () Bool)

(assert start!834)

(declare-fun b_free!227 () Bool)

(declare-fun b_next!227 () Bool)

(assert (=> start!834 (= b_free!227 (not b_next!227))))

(declare-fun tp!910 () Bool)

(declare-fun b_and!373 () Bool)

(assert (=> start!834 (= tp!910 b_and!373)))

(declare-fun b!6587 () Bool)

(declare-fun res!6915 () Bool)

(declare-fun e!3630 () Bool)

(assert (=> b!6587 (=> (not res!6915) (not e!3630))))

(declare-datatypes ((array!543 0))(
  ( (array!544 (arr!260 (Array (_ BitVec 32) (_ BitVec 64))) (size!322 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!543)

(declare-datatypes ((List!171 0))(
  ( (Nil!168) (Cons!167 (h!733 (_ BitVec 64)) (t!2306 List!171)) )
))
(declare-fun arrayNoDuplicates!0 (array!543 (_ BitVec 32) List!171) Bool)

(assert (=> b!6587 (= res!6915 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!168))))

(declare-fun mapIsEmpty!428 () Bool)

(declare-fun mapRes!428 () Bool)

(assert (=> mapIsEmpty!428 mapRes!428))

(declare-fun b!6588 () Bool)

(declare-fun res!6916 () Bool)

(assert (=> b!6588 (=> (not res!6916) (not e!3630))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!583 0))(
  ( (V!584 (val!158 Int)) )
))
(declare-datatypes ((ValueCell!136 0))(
  ( (ValueCellFull!136 (v!1249 V!583)) (EmptyCell!136) )
))
(declare-datatypes ((array!545 0))(
  ( (array!546 (arr!261 (Array (_ BitVec 32) ValueCell!136)) (size!323 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!545)

(declare-fun minValue!1434 () V!583)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!583)

(declare-datatypes ((tuple2!156 0))(
  ( (tuple2!157 (_1!78 (_ BitVec 64)) (_2!78 V!583)) )
))
(declare-datatypes ((List!172 0))(
  ( (Nil!169) (Cons!168 (h!734 tuple2!156) (t!2307 List!172)) )
))
(declare-datatypes ((ListLongMap!161 0))(
  ( (ListLongMap!162 (toList!96 List!172)) )
))
(declare-fun contains!70 (ListLongMap!161 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!55 (array!543 array!545 (_ BitVec 32) (_ BitVec 32) V!583 V!583 (_ BitVec 32) Int) ListLongMap!161)

(assert (=> b!6588 (= res!6916 (contains!70 (getCurrentListMap!55 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!6589 () Bool)

(declare-fun e!3634 () Bool)

(assert (=> b!6589 (= e!3634 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!6590 () Bool)

(declare-fun e!3631 () Bool)

(declare-fun tp_is_empty!305 () Bool)

(assert (=> b!6590 (= e!3631 tp_is_empty!305)))

(declare-fun b!6591 () Bool)

(declare-fun res!6911 () Bool)

(assert (=> b!6591 (=> (not res!6911) (not e!3630))))

(assert (=> b!6591 (= res!6911 (and (= (size!323 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!322 _keys!1806) (size!323 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!6592 () Bool)

(declare-fun res!6912 () Bool)

(assert (=> b!6592 (=> (not res!6912) (not e!3630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!543 (_ BitVec 32)) Bool)

(assert (=> b!6592 (= res!6912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun res!6914 () Bool)

(assert (=> start!834 (=> (not res!6914) (not e!3630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!834 (= res!6914 (validMask!0 mask!2250))))

(assert (=> start!834 e!3630))

(assert (=> start!834 tp!910))

(assert (=> start!834 true))

(declare-fun e!3628 () Bool)

(declare-fun array_inv!185 (array!545) Bool)

(assert (=> start!834 (and (array_inv!185 _values!1492) e!3628)))

(assert (=> start!834 tp_is_empty!305))

(declare-fun array_inv!186 (array!543) Bool)

(assert (=> start!834 (array_inv!186 _keys!1806)))

(declare-fun b!6593 () Bool)

(declare-fun e!3635 () Bool)

(assert (=> b!6593 (= e!3628 (and e!3635 mapRes!428))))

(declare-fun condMapEmpty!428 () Bool)

(declare-fun mapDefault!428 () ValueCell!136)

