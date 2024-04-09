; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107024 () Bool)

(assert start!107024)

(declare-fun b!1268493 () Bool)

(declare-fun res!844347 () Bool)

(declare-fun e!722887 () Bool)

(assert (=> b!1268493 (=> (not res!844347) (not e!722887))))

(declare-datatypes ((array!82605 0))(
  ( (array!82606 (arr!39835 (Array (_ BitVec 32) (_ BitVec 64))) (size!40372 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82605)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82605 (_ BitVec 32)) Bool)

(assert (=> b!1268493 (= res!844347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1268494 () Bool)

(declare-fun e!722885 () Bool)

(declare-fun tp_is_empty!32677 () Bool)

(assert (=> b!1268494 (= e!722885 tp_is_empty!32677)))

(declare-fun b!1268496 () Bool)

(assert (=> b!1268496 (= e!722887 false)))

(declare-fun lt!574388 () Bool)

(declare-datatypes ((List!28563 0))(
  ( (Nil!28560) (Cons!28559 (h!29768 (_ BitVec 64)) (t!42099 List!28563)) )
))
(declare-fun arrayNoDuplicates!0 (array!82605 (_ BitVec 32) List!28563) Bool)

(assert (=> b!1268496 (= lt!574388 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28560))))

(declare-fun mapIsEmpty!50596 () Bool)

(declare-fun mapRes!50596 () Bool)

(assert (=> mapIsEmpty!50596 mapRes!50596))

(declare-fun b!1268497 () Bool)

(declare-fun res!844349 () Bool)

(assert (=> b!1268497 (=> (not res!844349) (not e!722887))))

(declare-datatypes ((V!48763 0))(
  ( (V!48764 (val!16413 Int)) )
))
(declare-datatypes ((ValueCell!15485 0))(
  ( (ValueCellFull!15485 (v!19048 V!48763)) (EmptyCell!15485) )
))
(declare-datatypes ((array!82607 0))(
  ( (array!82608 (arr!39836 (Array (_ BitVec 32) ValueCell!15485)) (size!40373 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82607)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268497 (= res!844349 (and (= (size!40373 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40372 _keys!1364) (size!40373 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1268495 () Bool)

(declare-fun e!722884 () Bool)

(assert (=> b!1268495 (= e!722884 tp_is_empty!32677)))

(declare-fun res!844348 () Bool)

(assert (=> start!107024 (=> (not res!844348) (not e!722887))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107024 (= res!844348 (validMask!0 mask!1730))))

(assert (=> start!107024 e!722887))

(declare-fun e!722886 () Bool)

(declare-fun array_inv!30269 (array!82607) Bool)

(assert (=> start!107024 (and (array_inv!30269 _values!1134) e!722886)))

(assert (=> start!107024 true))

(declare-fun array_inv!30270 (array!82605) Bool)

(assert (=> start!107024 (array_inv!30270 _keys!1364)))

(declare-fun b!1268498 () Bool)

(assert (=> b!1268498 (= e!722886 (and e!722884 mapRes!50596))))

(declare-fun condMapEmpty!50596 () Bool)

(declare-fun mapDefault!50596 () ValueCell!15485)

