; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82180 () Bool)

(assert start!82180)

(declare-fun res!640989 () Bool)

(declare-fun e!539707 () Bool)

(assert (=> start!82180 (=> (not res!640989) (not e!539707))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82180 (= res!640989 (validMask!0 mask!2088))))

(assert (=> start!82180 e!539707))

(assert (=> start!82180 true))

(declare-datatypes ((V!33157 0))(
  ( (V!33158 (val!10616 Int)) )
))
(declare-datatypes ((ValueCell!10084 0))(
  ( (ValueCellFull!10084 (v!13173 V!33157)) (EmptyCell!10084) )
))
(declare-datatypes ((array!58381 0))(
  ( (array!58382 (arr!28060 (Array (_ BitVec 32) ValueCell!10084)) (size!28540 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58381)

(declare-fun e!539708 () Bool)

(declare-fun array_inv!21711 (array!58381) Bool)

(assert (=> start!82180 (and (array_inv!21711 _values!1386) e!539708)))

(declare-datatypes ((array!58383 0))(
  ( (array!58384 (arr!28061 (Array (_ BitVec 32) (_ BitVec 64))) (size!28541 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58383)

(declare-fun array_inv!21712 (array!58383) Bool)

(assert (=> start!82180 (array_inv!21712 _keys!1668)))

(declare-fun b!957377 () Bool)

(declare-fun res!640988 () Bool)

(assert (=> b!957377 (=> (not res!640988) (not e!539707))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957377 (= res!640988 (and (= (size!28540 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28541 _keys!1668) (size!28540 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957378 () Bool)

(declare-fun res!640987 () Bool)

(assert (=> b!957378 (=> (not res!640987) (not e!539707))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58383 (_ BitVec 32)) Bool)

(assert (=> b!957378 (= res!640987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957379 () Bool)

(assert (=> b!957379 (= e!539707 false)))

(declare-fun lt!430283 () Bool)

(declare-datatypes ((List!19652 0))(
  ( (Nil!19649) (Cons!19648 (h!20810 (_ BitVec 64)) (t!28023 List!19652)) )
))
(declare-fun arrayNoDuplicates!0 (array!58383 (_ BitVec 32) List!19652) Bool)

(assert (=> b!957379 (= lt!430283 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19649))))

(declare-fun b!957380 () Bool)

(declare-fun e!539704 () Bool)

(declare-fun tp_is_empty!21131 () Bool)

(assert (=> b!957380 (= e!539704 tp_is_empty!21131)))

(declare-fun mapIsEmpty!33676 () Bool)

(declare-fun mapRes!33676 () Bool)

(assert (=> mapIsEmpty!33676 mapRes!33676))

(declare-fun b!957381 () Bool)

(assert (=> b!957381 (= e!539708 (and e!539704 mapRes!33676))))

(declare-fun condMapEmpty!33676 () Bool)

(declare-fun mapDefault!33676 () ValueCell!10084)

