; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107360 () Bool)

(assert start!107360)

(declare-fun res!846196 () Bool)

(declare-fun e!725407 () Bool)

(assert (=> start!107360 (=> (not res!846196) (not e!725407))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107360 (= res!846196 (validMask!0 mask!1730))))

(assert (=> start!107360 e!725407))

(declare-datatypes ((V!49211 0))(
  ( (V!49212 (val!16581 Int)) )
))
(declare-datatypes ((ValueCell!15653 0))(
  ( (ValueCellFull!15653 (v!19216 V!49211)) (EmptyCell!15653) )
))
(declare-datatypes ((array!83217 0))(
  ( (array!83218 (arr!40141 (Array (_ BitVec 32) ValueCell!15653)) (size!40678 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83217)

(declare-fun e!725406 () Bool)

(declare-fun array_inv!30471 (array!83217) Bool)

(assert (=> start!107360 (and (array_inv!30471 _values!1134) e!725406)))

(assert (=> start!107360 true))

(declare-datatypes ((array!83219 0))(
  ( (array!83220 (arr!40142 (Array (_ BitVec 32) (_ BitVec 64))) (size!40679 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83219)

(declare-fun array_inv!30472 (array!83219) Bool)

(assert (=> start!107360 (array_inv!30472 _keys!1364)))

(declare-fun b!1271852 () Bool)

(declare-fun res!846194 () Bool)

(assert (=> b!1271852 (=> (not res!846194) (not e!725407))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83219 (_ BitVec 32)) Bool)

(assert (=> b!1271852 (= res!846194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1271853 () Bool)

(declare-fun e!725404 () Bool)

(declare-fun tp_is_empty!33013 () Bool)

(assert (=> b!1271853 (= e!725404 tp_is_empty!33013)))

(declare-fun b!1271854 () Bool)

(declare-fun res!846195 () Bool)

(assert (=> b!1271854 (=> (not res!846195) (not e!725407))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271854 (= res!846195 (and (= (size!40678 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40679 _keys!1364) (size!40678 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271855 () Bool)

(declare-fun e!725408 () Bool)

(assert (=> b!1271855 (= e!725408 tp_is_empty!33013)))

(declare-fun b!1271856 () Bool)

(declare-fun res!846197 () Bool)

(assert (=> b!1271856 (=> (not res!846197) (not e!725407))))

(declare-datatypes ((List!28704 0))(
  ( (Nil!28701) (Cons!28700 (h!29909 (_ BitVec 64)) (t!42240 List!28704)) )
))
(declare-fun arrayNoDuplicates!0 (array!83219 (_ BitVec 32) List!28704) Bool)

(assert (=> b!1271856 (= res!846197 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28701))))

(declare-fun mapNonEmpty!51100 () Bool)

(declare-fun mapRes!51100 () Bool)

(declare-fun tp!97442 () Bool)

(assert (=> mapNonEmpty!51100 (= mapRes!51100 (and tp!97442 e!725408))))

(declare-fun mapValue!51100 () ValueCell!15653)

(declare-fun mapKey!51100 () (_ BitVec 32))

(declare-fun mapRest!51100 () (Array (_ BitVec 32) ValueCell!15653))

(assert (=> mapNonEmpty!51100 (= (arr!40141 _values!1134) (store mapRest!51100 mapKey!51100 mapValue!51100))))

(declare-fun b!1271857 () Bool)

(assert (=> b!1271857 (= e!725406 (and e!725404 mapRes!51100))))

(declare-fun condMapEmpty!51100 () Bool)

(declare-fun mapDefault!51100 () ValueCell!15653)

