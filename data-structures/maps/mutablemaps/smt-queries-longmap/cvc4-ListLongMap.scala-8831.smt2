; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107250 () Bool)

(assert start!107250)

(declare-fun b!1270851 () Bool)

(declare-fun e!724579 () Bool)

(declare-fun tp_is_empty!32903 () Bool)

(assert (=> b!1270851 (= e!724579 tp_is_empty!32903)))

(declare-fun b!1270852 () Bool)

(declare-fun res!845689 () Bool)

(declare-fun e!724581 () Bool)

(assert (=> b!1270852 (=> (not res!845689) (not e!724581))))

(declare-datatypes ((array!83025 0))(
  ( (array!83026 (arr!40045 (Array (_ BitVec 32) (_ BitVec 64))) (size!40582 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83025)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83025 (_ BitVec 32)) Bool)

(assert (=> b!1270852 (= res!845689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270853 () Bool)

(declare-fun e!724580 () Bool)

(assert (=> b!1270853 (= e!724580 tp_is_empty!32903)))

(declare-fun mapNonEmpty!50935 () Bool)

(declare-fun mapRes!50935 () Bool)

(declare-fun tp!97277 () Bool)

(assert (=> mapNonEmpty!50935 (= mapRes!50935 (and tp!97277 e!724579))))

(declare-datatypes ((V!49063 0))(
  ( (V!49064 (val!16526 Int)) )
))
(declare-datatypes ((ValueCell!15598 0))(
  ( (ValueCellFull!15598 (v!19161 V!49063)) (EmptyCell!15598) )
))
(declare-datatypes ((array!83027 0))(
  ( (array!83028 (arr!40046 (Array (_ BitVec 32) ValueCell!15598)) (size!40583 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83027)

(declare-fun mapRest!50935 () (Array (_ BitVec 32) ValueCell!15598))

(declare-fun mapKey!50935 () (_ BitVec 32))

(declare-fun mapValue!50935 () ValueCell!15598)

(assert (=> mapNonEmpty!50935 (= (arr!40046 _values!1134) (store mapRest!50935 mapKey!50935 mapValue!50935))))

(declare-fun mapIsEmpty!50935 () Bool)

(assert (=> mapIsEmpty!50935 mapRes!50935))

(declare-fun b!1270854 () Bool)

(declare-fun res!845688 () Bool)

(assert (=> b!1270854 (=> (not res!845688) (not e!724581))))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(assert (=> b!1270854 (= res!845688 (and (= (size!40583 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40582 _keys!1364) (size!40583 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270856 () Bool)

(assert (=> b!1270856 (= e!724581 false)))

(declare-fun lt!574727 () Bool)

(declare-datatypes ((List!28670 0))(
  ( (Nil!28667) (Cons!28666 (h!29875 (_ BitVec 64)) (t!42206 List!28670)) )
))
(declare-fun arrayNoDuplicates!0 (array!83025 (_ BitVec 32) List!28670) Bool)

(assert (=> b!1270856 (= lt!574727 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28667))))

(declare-fun b!1270855 () Bool)

(declare-fun e!724583 () Bool)

(assert (=> b!1270855 (= e!724583 (and e!724580 mapRes!50935))))

(declare-fun condMapEmpty!50935 () Bool)

(declare-fun mapDefault!50935 () ValueCell!15598)

