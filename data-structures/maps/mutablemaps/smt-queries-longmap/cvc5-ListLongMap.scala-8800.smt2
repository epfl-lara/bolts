; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107060 () Bool)

(assert start!107060)

(declare-fun b!1268818 () Bool)

(declare-fun res!844511 () Bool)

(declare-fun e!723157 () Bool)

(assert (=> b!1268818 (=> (not res!844511) (not e!723157))))

(declare-datatypes ((V!48811 0))(
  ( (V!48812 (val!16431 Int)) )
))
(declare-datatypes ((ValueCell!15503 0))(
  ( (ValueCellFull!15503 (v!19066 V!48811)) (EmptyCell!15503) )
))
(declare-datatypes ((array!82669 0))(
  ( (array!82670 (arr!39867 (Array (_ BitVec 32) ValueCell!15503)) (size!40404 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82669)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82671 0))(
  ( (array!82672 (arr!39868 (Array (_ BitVec 32) (_ BitVec 64))) (size!40405 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82671)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268818 (= res!844511 (and (= (size!40404 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40405 _keys!1364) (size!40404 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!50650 () Bool)

(declare-fun mapRes!50650 () Bool)

(declare-fun tp!96830 () Bool)

(declare-fun e!723158 () Bool)

(assert (=> mapNonEmpty!50650 (= mapRes!50650 (and tp!96830 e!723158))))

(declare-fun mapRest!50650 () (Array (_ BitVec 32) ValueCell!15503))

(declare-fun mapValue!50650 () ValueCell!15503)

(declare-fun mapKey!50650 () (_ BitVec 32))

(assert (=> mapNonEmpty!50650 (= (arr!39867 _values!1134) (store mapRest!50650 mapKey!50650 mapValue!50650))))

(declare-fun b!1268819 () Bool)

(declare-fun tp_is_empty!32713 () Bool)

(assert (=> b!1268819 (= e!723158 tp_is_empty!32713)))

(declare-fun b!1268820 () Bool)

(assert (=> b!1268820 (= e!723157 false)))

(declare-fun lt!574442 () Bool)

(declare-datatypes ((List!28574 0))(
  ( (Nil!28571) (Cons!28570 (h!29779 (_ BitVec 64)) (t!42110 List!28574)) )
))
(declare-fun arrayNoDuplicates!0 (array!82671 (_ BitVec 32) List!28574) Bool)

(assert (=> b!1268820 (= lt!574442 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28571))))

(declare-fun b!1268821 () Bool)

(declare-fun res!844509 () Bool)

(assert (=> b!1268821 (=> (not res!844509) (not e!723157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82671 (_ BitVec 32)) Bool)

(assert (=> b!1268821 (= res!844509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1268817 () Bool)

(declare-fun e!723154 () Bool)

(assert (=> b!1268817 (= e!723154 tp_is_empty!32713)))

(declare-fun res!844510 () Bool)

(assert (=> start!107060 (=> (not res!844510) (not e!723157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107060 (= res!844510 (validMask!0 mask!1730))))

(assert (=> start!107060 e!723157))

(declare-fun e!723155 () Bool)

(declare-fun array_inv!30293 (array!82669) Bool)

(assert (=> start!107060 (and (array_inv!30293 _values!1134) e!723155)))

(assert (=> start!107060 true))

(declare-fun array_inv!30294 (array!82671) Bool)

(assert (=> start!107060 (array_inv!30294 _keys!1364)))

(declare-fun b!1268822 () Bool)

(assert (=> b!1268822 (= e!723155 (and e!723154 mapRes!50650))))

(declare-fun condMapEmpty!50650 () Bool)

(declare-fun mapDefault!50650 () ValueCell!15503)

