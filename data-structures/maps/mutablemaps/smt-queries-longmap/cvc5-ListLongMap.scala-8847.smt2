; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107342 () Bool)

(assert start!107342)

(declare-fun b!1271679 () Bool)

(declare-fun res!846103 () Bool)

(declare-fun e!725273 () Bool)

(assert (=> b!1271679 (=> (not res!846103) (not e!725273))))

(declare-datatypes ((array!83185 0))(
  ( (array!83186 (arr!40125 (Array (_ BitVec 32) (_ BitVec 64))) (size!40662 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83185)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83185 (_ BitVec 32)) Bool)

(assert (=> b!1271679 (= res!846103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!51073 () Bool)

(declare-fun mapRes!51073 () Bool)

(assert (=> mapIsEmpty!51073 mapRes!51073))

(declare-fun b!1271680 () Bool)

(declare-fun res!846104 () Bool)

(assert (=> b!1271680 (=> (not res!846104) (not e!725273))))

(declare-datatypes ((V!49187 0))(
  ( (V!49188 (val!16572 Int)) )
))
(declare-datatypes ((ValueCell!15644 0))(
  ( (ValueCellFull!15644 (v!19207 V!49187)) (EmptyCell!15644) )
))
(declare-datatypes ((array!83187 0))(
  ( (array!83188 (arr!40126 (Array (_ BitVec 32) ValueCell!15644)) (size!40663 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83187)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271680 (= res!846104 (and (= (size!40663 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40662 _keys!1364) (size!40663 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271681 () Bool)

(declare-fun e!725269 () Bool)

(declare-fun tp_is_empty!32995 () Bool)

(assert (=> b!1271681 (= e!725269 tp_is_empty!32995)))

(declare-fun res!846102 () Bool)

(assert (=> start!107342 (=> (not res!846102) (not e!725273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107342 (= res!846102 (validMask!0 mask!1730))))

(assert (=> start!107342 e!725273))

(declare-fun e!725270 () Bool)

(declare-fun array_inv!30457 (array!83187) Bool)

(assert (=> start!107342 (and (array_inv!30457 _values!1134) e!725270)))

(assert (=> start!107342 true))

(declare-fun array_inv!30458 (array!83185) Bool)

(assert (=> start!107342 (array_inv!30458 _keys!1364)))

(declare-fun b!1271682 () Bool)

(declare-fun e!725271 () Bool)

(assert (=> b!1271682 (= e!725271 tp_is_empty!32995)))

(declare-fun mapNonEmpty!51073 () Bool)

(declare-fun tp!97415 () Bool)

(assert (=> mapNonEmpty!51073 (= mapRes!51073 (and tp!97415 e!725269))))

(declare-fun mapRest!51073 () (Array (_ BitVec 32) ValueCell!15644))

(declare-fun mapValue!51073 () ValueCell!15644)

(declare-fun mapKey!51073 () (_ BitVec 32))

(assert (=> mapNonEmpty!51073 (= (arr!40126 _values!1134) (store mapRest!51073 mapKey!51073 mapValue!51073))))

(declare-fun b!1271683 () Bool)

(assert (=> b!1271683 (= e!725273 false)))

(declare-fun lt!574865 () Bool)

(declare-datatypes ((List!28697 0))(
  ( (Nil!28694) (Cons!28693 (h!29902 (_ BitVec 64)) (t!42233 List!28697)) )
))
(declare-fun arrayNoDuplicates!0 (array!83185 (_ BitVec 32) List!28697) Bool)

(assert (=> b!1271683 (= lt!574865 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28694))))

(declare-fun b!1271684 () Bool)

(assert (=> b!1271684 (= e!725270 (and e!725271 mapRes!51073))))

(declare-fun condMapEmpty!51073 () Bool)

(declare-fun mapDefault!51073 () ValueCell!15644)

