; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107244 () Bool)

(assert start!107244)

(declare-fun b!1270797 () Bool)

(declare-fun e!724535 () Bool)

(declare-fun tp_is_empty!32897 () Bool)

(assert (=> b!1270797 (= e!724535 tp_is_empty!32897)))

(declare-fun res!845661 () Bool)

(declare-fun e!724538 () Bool)

(assert (=> start!107244 (=> (not res!845661) (not e!724538))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107244 (= res!845661 (validMask!0 mask!1730))))

(assert (=> start!107244 e!724538))

(declare-datatypes ((V!49055 0))(
  ( (V!49056 (val!16523 Int)) )
))
(declare-datatypes ((ValueCell!15595 0))(
  ( (ValueCellFull!15595 (v!19158 V!49055)) (EmptyCell!15595) )
))
(declare-datatypes ((array!83013 0))(
  ( (array!83014 (arr!40039 (Array (_ BitVec 32) ValueCell!15595)) (size!40576 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83013)

(declare-fun e!724536 () Bool)

(declare-fun array_inv!30401 (array!83013) Bool)

(assert (=> start!107244 (and (array_inv!30401 _values!1134) e!724536)))

(assert (=> start!107244 true))

(declare-datatypes ((array!83015 0))(
  ( (array!83016 (arr!40040 (Array (_ BitVec 32) (_ BitVec 64))) (size!40577 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83015)

(declare-fun array_inv!30402 (array!83015) Bool)

(assert (=> start!107244 (array_inv!30402 _keys!1364)))

(declare-fun b!1270798 () Bool)

(declare-fun res!845663 () Bool)

(assert (=> b!1270798 (=> (not res!845663) (not e!724538))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83015 (_ BitVec 32)) Bool)

(assert (=> b!1270798 (= res!845663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!50926 () Bool)

(declare-fun mapRes!50926 () Bool)

(assert (=> mapIsEmpty!50926 mapRes!50926))

(declare-fun b!1270799 () Bool)

(assert (=> b!1270799 (= e!724538 false)))

(declare-fun lt!574718 () Bool)

(declare-datatypes ((List!28667 0))(
  ( (Nil!28664) (Cons!28663 (h!29872 (_ BitVec 64)) (t!42203 List!28667)) )
))
(declare-fun arrayNoDuplicates!0 (array!83015 (_ BitVec 32) List!28667) Bool)

(assert (=> b!1270799 (= lt!574718 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28664))))

(declare-fun mapNonEmpty!50926 () Bool)

(declare-fun tp!97268 () Bool)

(assert (=> mapNonEmpty!50926 (= mapRes!50926 (and tp!97268 e!724535))))

(declare-fun mapValue!50926 () ValueCell!15595)

(declare-fun mapRest!50926 () (Array (_ BitVec 32) ValueCell!15595))

(declare-fun mapKey!50926 () (_ BitVec 32))

(assert (=> mapNonEmpty!50926 (= (arr!40039 _values!1134) (store mapRest!50926 mapKey!50926 mapValue!50926))))

(declare-fun b!1270800 () Bool)

(declare-fun e!724534 () Bool)

(assert (=> b!1270800 (= e!724534 tp_is_empty!32897)))

(declare-fun b!1270801 () Bool)

(declare-fun res!845662 () Bool)

(assert (=> b!1270801 (=> (not res!845662) (not e!724538))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270801 (= res!845662 (and (= (size!40576 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40577 _keys!1364) (size!40576 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270802 () Bool)

(assert (=> b!1270802 (= e!724536 (and e!724534 mapRes!50926))))

(declare-fun condMapEmpty!50926 () Bool)

(declare-fun mapDefault!50926 () ValueCell!15595)

