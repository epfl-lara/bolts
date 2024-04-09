; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107190 () Bool)

(assert start!107190)

(declare-fun mapNonEmpty!50845 () Bool)

(declare-fun mapRes!50845 () Bool)

(declare-fun tp!97187 () Bool)

(declare-fun e!724133 () Bool)

(assert (=> mapNonEmpty!50845 (= mapRes!50845 (and tp!97187 e!724133))))

(declare-datatypes ((V!48983 0))(
  ( (V!48984 (val!16496 Int)) )
))
(declare-datatypes ((ValueCell!15568 0))(
  ( (ValueCellFull!15568 (v!19131 V!48983)) (EmptyCell!15568) )
))
(declare-datatypes ((array!82915 0))(
  ( (array!82916 (arr!39990 (Array (_ BitVec 32) ValueCell!15568)) (size!40527 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82915)

(declare-fun mapValue!50845 () ValueCell!15568)

(declare-fun mapRest!50845 () (Array (_ BitVec 32) ValueCell!15568))

(declare-fun mapKey!50845 () (_ BitVec 32))

(assert (=> mapNonEmpty!50845 (= (arr!39990 _values!1134) (store mapRest!50845 mapKey!50845 mapValue!50845))))

(declare-fun b!1270311 () Bool)

(declare-fun tp_is_empty!32843 () Bool)

(assert (=> b!1270311 (= e!724133 tp_is_empty!32843)))

(declare-fun b!1270312 () Bool)

(declare-fun res!845420 () Bool)

(declare-fun e!724130 () Bool)

(assert (=> b!1270312 (=> (not res!845420) (not e!724130))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82917 0))(
  ( (array!82918 (arr!39991 (Array (_ BitVec 32) (_ BitVec 64))) (size!40528 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82917)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270312 (= res!845420 (and (= (size!40527 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40528 _keys!1364) (size!40527 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270313 () Bool)

(assert (=> b!1270313 (= e!724130 false)))

(declare-fun lt!574637 () Bool)

(declare-datatypes ((List!28651 0))(
  ( (Nil!28648) (Cons!28647 (h!29856 (_ BitVec 64)) (t!42187 List!28651)) )
))
(declare-fun arrayNoDuplicates!0 (array!82917 (_ BitVec 32) List!28651) Bool)

(assert (=> b!1270313 (= lt!574637 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28648))))

(declare-fun b!1270315 () Bool)

(declare-fun e!724131 () Bool)

(declare-fun e!724129 () Bool)

(assert (=> b!1270315 (= e!724131 (and e!724129 mapRes!50845))))

(declare-fun condMapEmpty!50845 () Bool)

(declare-fun mapDefault!50845 () ValueCell!15568)

