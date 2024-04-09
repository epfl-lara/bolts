; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!848 () Bool)

(assert start!848)

(declare-fun b_free!241 () Bool)

(declare-fun b_next!241 () Bool)

(assert (=> start!848 (= b_free!241 (not b_next!241))))

(declare-fun tp!952 () Bool)

(declare-fun b_and!387 () Bool)

(assert (=> start!848 (= tp!952 b_and!387)))

(declare-fun b!6871 () Bool)

(declare-fun res!7095 () Bool)

(declare-fun e!3798 () Bool)

(assert (=> b!6871 (=> res!7095 e!3798)))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun lt!1350 () (_ BitVec 32))

(declare-datatypes ((array!571 0))(
  ( (array!572 (arr!274 (Array (_ BitVec 32) (_ BitVec 64))) (size!336 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!571)

(declare-fun k!1278 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!28 0))(
  ( (MissingZero!28 (index!2231 (_ BitVec 32))) (Found!28 (index!2232 (_ BitVec 32))) (Intermediate!28 (undefined!840 Bool) (index!2233 (_ BitVec 32)) (x!2566 (_ BitVec 32))) (Undefined!28) (MissingVacant!28 (index!2234 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!571 (_ BitVec 32)) SeekEntryResult!28)

(assert (=> b!6871 (= res!7095 (not (= (seekEntryOrOpen!0 k!1278 _keys!1806 mask!2250) (Found!28 lt!1350))))))

(declare-fun b!6872 () Bool)

(declare-fun res!7088 () Bool)

(declare-fun e!3797 () Bool)

(assert (=> b!6872 (=> (not res!7088) (not e!3797))))

(declare-datatypes ((List!182 0))(
  ( (Nil!179) (Cons!178 (h!744 (_ BitVec 64)) (t!2317 List!182)) )
))
(declare-fun arrayNoDuplicates!0 (array!571 (_ BitVec 32) List!182) Bool)

(assert (=> b!6872 (= res!7088 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!179))))

(declare-fun b!6873 () Bool)

(declare-fun res!7092 () Bool)

(assert (=> b!6873 (=> (not res!7092) (not e!3797))))

(declare-datatypes ((V!603 0))(
  ( (V!604 (val!165 Int)) )
))
(declare-datatypes ((ValueCell!143 0))(
  ( (ValueCellFull!143 (v!1256 V!603)) (EmptyCell!143) )
))
(declare-datatypes ((array!573 0))(
  ( (array!574 (arr!275 (Array (_ BitVec 32) ValueCell!143)) (size!337 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!573)

(declare-fun minValue!1434 () V!603)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!603)

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((tuple2!166 0))(
  ( (tuple2!167 (_1!83 (_ BitVec 64)) (_2!83 V!603)) )
))
(declare-datatypes ((List!183 0))(
  ( (Nil!180) (Cons!179 (h!745 tuple2!166) (t!2318 List!183)) )
))
(declare-datatypes ((ListLongMap!171 0))(
  ( (ListLongMap!172 (toList!101 List!183)) )
))
(declare-fun contains!75 (ListLongMap!171 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!60 (array!571 array!573 (_ BitVec 32) (_ BitVec 32) V!603 V!603 (_ BitVec 32) Int) ListLongMap!171)

(assert (=> b!6873 (= res!7092 (contains!75 (getCurrentListMap!60 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!6874 () Bool)

(declare-fun e!3801 () Bool)

(assert (=> b!6874 (= e!3801 e!3798)))

(declare-fun res!7091 () Bool)

(assert (=> b!6874 (=> res!7091 e!3798)))

(assert (=> b!6874 (= res!7091 (not (= (size!336 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!571 (_ BitVec 32)) Bool)

(assert (=> b!6874 (arrayForallSeekEntryOrOpenFound!0 lt!1350 _keys!1806 mask!2250)))

(declare-datatypes ((Unit!121 0))(
  ( (Unit!122) )
))
(declare-fun lt!1349 () Unit!121)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!571 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!121)

(assert (=> b!6874 (= lt!1349 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1350))))

(declare-fun arrayScanForKey!0 (array!571 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!6874 (= lt!1350 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun res!7094 () Bool)

(assert (=> start!848 (=> (not res!7094) (not e!3797))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!848 (= res!7094 (validMask!0 mask!2250))))

(assert (=> start!848 e!3797))

(assert (=> start!848 tp!952))

(assert (=> start!848 true))

(declare-fun e!3799 () Bool)

(declare-fun array_inv!199 (array!573) Bool)

(assert (=> start!848 (and (array_inv!199 _values!1492) e!3799)))

(declare-fun tp_is_empty!319 () Bool)

(assert (=> start!848 tp_is_empty!319))

(declare-fun array_inv!200 (array!571) Bool)

(assert (=> start!848 (array_inv!200 _keys!1806)))

(declare-fun b!6875 () Bool)

(declare-fun res!7096 () Bool)

(assert (=> b!6875 (=> (not res!7096) (not e!3797))))

(assert (=> b!6875 (= res!7096 (and (= (size!337 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!336 _keys!1806) (size!337 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!6876 () Bool)

(declare-fun e!3802 () Bool)

(assert (=> b!6876 (= e!3802 tp_is_empty!319)))

(declare-fun b!6877 () Bool)

(declare-fun e!3800 () Bool)

(declare-fun mapRes!449 () Bool)

(assert (=> b!6877 (= e!3799 (and e!3800 mapRes!449))))

(declare-fun condMapEmpty!449 () Bool)

(declare-fun mapDefault!449 () ValueCell!143)

