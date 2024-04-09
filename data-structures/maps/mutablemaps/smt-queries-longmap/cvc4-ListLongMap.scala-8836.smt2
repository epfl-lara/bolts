; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107280 () Bool)

(assert start!107280)

(declare-fun b!1271121 () Bool)

(declare-fun e!724806 () Bool)

(assert (=> b!1271121 (= e!724806 false)))

(declare-fun lt!574772 () Bool)

(declare-datatypes ((array!83079 0))(
  ( (array!83080 (arr!40072 (Array (_ BitVec 32) (_ BitVec 64))) (size!40609 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83079)

(declare-datatypes ((List!28680 0))(
  ( (Nil!28677) (Cons!28676 (h!29885 (_ BitVec 64)) (t!42216 List!28680)) )
))
(declare-fun arrayNoDuplicates!0 (array!83079 (_ BitVec 32) List!28680) Bool)

(assert (=> b!1271121 (= lt!574772 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28677))))

(declare-fun b!1271122 () Bool)

(declare-fun res!845823 () Bool)

(assert (=> b!1271122 (=> (not res!845823) (not e!724806))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-datatypes ((V!49103 0))(
  ( (V!49104 (val!16541 Int)) )
))
(declare-datatypes ((ValueCell!15613 0))(
  ( (ValueCellFull!15613 (v!19176 V!49103)) (EmptyCell!15613) )
))
(declare-datatypes ((array!83081 0))(
  ( (array!83082 (arr!40073 (Array (_ BitVec 32) ValueCell!15613)) (size!40610 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83081)

(assert (=> b!1271122 (= res!845823 (and (= (size!40610 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40609 _keys!1364) (size!40610 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271123 () Bool)

(declare-fun e!724805 () Bool)

(declare-fun tp_is_empty!32933 () Bool)

(assert (=> b!1271123 (= e!724805 tp_is_empty!32933)))

(declare-fun mapIsEmpty!50980 () Bool)

(declare-fun mapRes!50980 () Bool)

(assert (=> mapIsEmpty!50980 mapRes!50980))

(declare-fun res!845825 () Bool)

(assert (=> start!107280 (=> (not res!845825) (not e!724806))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107280 (= res!845825 (validMask!0 mask!1730))))

(assert (=> start!107280 e!724806))

(declare-fun e!724804 () Bool)

(declare-fun array_inv!30425 (array!83081) Bool)

(assert (=> start!107280 (and (array_inv!30425 _values!1134) e!724804)))

(assert (=> start!107280 true))

(declare-fun array_inv!30426 (array!83079) Bool)

(assert (=> start!107280 (array_inv!30426 _keys!1364)))

(declare-fun b!1271124 () Bool)

(declare-fun res!845824 () Bool)

(assert (=> b!1271124 (=> (not res!845824) (not e!724806))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83079 (_ BitVec 32)) Bool)

(assert (=> b!1271124 (= res!845824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1271125 () Bool)

(declare-fun e!724808 () Bool)

(assert (=> b!1271125 (= e!724808 tp_is_empty!32933)))

(declare-fun mapNonEmpty!50980 () Bool)

(declare-fun tp!97322 () Bool)

(assert (=> mapNonEmpty!50980 (= mapRes!50980 (and tp!97322 e!724808))))

(declare-fun mapRest!50980 () (Array (_ BitVec 32) ValueCell!15613))

(declare-fun mapValue!50980 () ValueCell!15613)

(declare-fun mapKey!50980 () (_ BitVec 32))

(assert (=> mapNonEmpty!50980 (= (arr!40073 _values!1134) (store mapRest!50980 mapKey!50980 mapValue!50980))))

(declare-fun b!1271126 () Bool)

(assert (=> b!1271126 (= e!724804 (and e!724805 mapRes!50980))))

(declare-fun condMapEmpty!50980 () Bool)

(declare-fun mapDefault!50980 () ValueCell!15613)

