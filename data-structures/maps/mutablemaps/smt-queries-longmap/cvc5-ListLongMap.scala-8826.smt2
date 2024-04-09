; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107216 () Bool)

(assert start!107216)

(declare-fun b!1270545 () Bool)

(declare-fun res!845535 () Bool)

(declare-fun e!724324 () Bool)

(assert (=> b!1270545 (=> (not res!845535) (not e!724324))))

(declare-datatypes ((array!82963 0))(
  ( (array!82964 (arr!40014 (Array (_ BitVec 32) (_ BitVec 64))) (size!40551 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82963)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82963 (_ BitVec 32)) Bool)

(assert (=> b!1270545 (= res!845535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!845536 () Bool)

(assert (=> start!107216 (=> (not res!845536) (not e!724324))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107216 (= res!845536 (validMask!0 mask!1730))))

(assert (=> start!107216 e!724324))

(declare-datatypes ((V!49019 0))(
  ( (V!49020 (val!16509 Int)) )
))
(declare-datatypes ((ValueCell!15581 0))(
  ( (ValueCellFull!15581 (v!19144 V!49019)) (EmptyCell!15581) )
))
(declare-datatypes ((array!82965 0))(
  ( (array!82966 (arr!40015 (Array (_ BitVec 32) ValueCell!15581)) (size!40552 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82965)

(declare-fun e!724327 () Bool)

(declare-fun array_inv!30387 (array!82965) Bool)

(assert (=> start!107216 (and (array_inv!30387 _values!1134) e!724327)))

(assert (=> start!107216 true))

(declare-fun array_inv!30388 (array!82963) Bool)

(assert (=> start!107216 (array_inv!30388 _keys!1364)))

(declare-fun b!1270546 () Bool)

(declare-fun res!845537 () Bool)

(assert (=> b!1270546 (=> (not res!845537) (not e!724324))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270546 (= res!845537 (and (= (size!40552 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40551 _keys!1364) (size!40552 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270547 () Bool)

(assert (=> b!1270547 (= e!724324 false)))

(declare-fun lt!574676 () Bool)

(declare-datatypes ((List!28658 0))(
  ( (Nil!28655) (Cons!28654 (h!29863 (_ BitVec 64)) (t!42194 List!28658)) )
))
(declare-fun arrayNoDuplicates!0 (array!82963 (_ BitVec 32) List!28658) Bool)

(assert (=> b!1270547 (= lt!574676 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28655))))

(declare-fun b!1270548 () Bool)

(declare-fun e!724325 () Bool)

(declare-fun tp_is_empty!32869 () Bool)

(assert (=> b!1270548 (= e!724325 tp_is_empty!32869)))

(declare-fun b!1270549 () Bool)

(declare-fun e!724328 () Bool)

(assert (=> b!1270549 (= e!724328 tp_is_empty!32869)))

(declare-fun b!1270550 () Bool)

(declare-fun mapRes!50884 () Bool)

(assert (=> b!1270550 (= e!724327 (and e!724328 mapRes!50884))))

(declare-fun condMapEmpty!50884 () Bool)

(declare-fun mapDefault!50884 () ValueCell!15581)

