; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107288 () Bool)

(assert start!107288)

(declare-fun b!1271193 () Bool)

(declare-fun e!724865 () Bool)

(assert (=> b!1271193 (= e!724865 false)))

(declare-fun lt!574784 () Bool)

(declare-datatypes ((array!83093 0))(
  ( (array!83094 (arr!40079 (Array (_ BitVec 32) (_ BitVec 64))) (size!40616 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83093)

(declare-datatypes ((List!28682 0))(
  ( (Nil!28679) (Cons!28678 (h!29887 (_ BitVec 64)) (t!42218 List!28682)) )
))
(declare-fun arrayNoDuplicates!0 (array!83093 (_ BitVec 32) List!28682) Bool)

(assert (=> b!1271193 (= lt!574784 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28679))))

(declare-fun mapIsEmpty!50992 () Bool)

(declare-fun mapRes!50992 () Bool)

(assert (=> mapIsEmpty!50992 mapRes!50992))

(declare-fun b!1271194 () Bool)

(declare-fun res!845861 () Bool)

(assert (=> b!1271194 (=> (not res!845861) (not e!724865))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83093 (_ BitVec 32)) Bool)

(assert (=> b!1271194 (= res!845861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1271195 () Bool)

(declare-fun res!845859 () Bool)

(assert (=> b!1271195 (=> (not res!845859) (not e!724865))))

(declare-datatypes ((V!49115 0))(
  ( (V!49116 (val!16545 Int)) )
))
(declare-datatypes ((ValueCell!15617 0))(
  ( (ValueCellFull!15617 (v!19180 V!49115)) (EmptyCell!15617) )
))
(declare-datatypes ((array!83095 0))(
  ( (array!83096 (arr!40080 (Array (_ BitVec 32) ValueCell!15617)) (size!40617 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83095)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271195 (= res!845859 (and (= (size!40617 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40616 _keys!1364) (size!40617 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!50992 () Bool)

(declare-fun tp!97334 () Bool)

(declare-fun e!724866 () Bool)

(assert (=> mapNonEmpty!50992 (= mapRes!50992 (and tp!97334 e!724866))))

(declare-fun mapKey!50992 () (_ BitVec 32))

(declare-fun mapRest!50992 () (Array (_ BitVec 32) ValueCell!15617))

(declare-fun mapValue!50992 () ValueCell!15617)

(assert (=> mapNonEmpty!50992 (= (arr!40080 _values!1134) (store mapRest!50992 mapKey!50992 mapValue!50992))))

(declare-fun res!845860 () Bool)

(assert (=> start!107288 (=> (not res!845860) (not e!724865))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107288 (= res!845860 (validMask!0 mask!1730))))

(assert (=> start!107288 e!724865))

(declare-fun e!724868 () Bool)

(declare-fun array_inv!30429 (array!83095) Bool)

(assert (=> start!107288 (and (array_inv!30429 _values!1134) e!724868)))

(assert (=> start!107288 true))

(declare-fun array_inv!30430 (array!83093) Bool)

(assert (=> start!107288 (array_inv!30430 _keys!1364)))

(declare-fun b!1271196 () Bool)

(declare-fun e!724867 () Bool)

(declare-fun tp_is_empty!32941 () Bool)

(assert (=> b!1271196 (= e!724867 tp_is_empty!32941)))

(declare-fun b!1271197 () Bool)

(assert (=> b!1271197 (= e!724868 (and e!724867 mapRes!50992))))

(declare-fun condMapEmpty!50992 () Bool)

(declare-fun mapDefault!50992 () ValueCell!15617)

