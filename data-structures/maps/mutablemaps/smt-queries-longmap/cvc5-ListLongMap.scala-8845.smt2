; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107330 () Bool)

(assert start!107330)

(declare-fun res!846048 () Bool)

(declare-fun e!725183 () Bool)

(assert (=> start!107330 (=> (not res!846048) (not e!725183))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107330 (= res!846048 (validMask!0 mask!1730))))

(assert (=> start!107330 e!725183))

(declare-datatypes ((V!49171 0))(
  ( (V!49172 (val!16566 Int)) )
))
(declare-datatypes ((ValueCell!15638 0))(
  ( (ValueCellFull!15638 (v!19201 V!49171)) (EmptyCell!15638) )
))
(declare-datatypes ((array!83165 0))(
  ( (array!83166 (arr!40115 (Array (_ BitVec 32) ValueCell!15638)) (size!40652 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83165)

(declare-fun e!725180 () Bool)

(declare-fun array_inv!30449 (array!83165) Bool)

(assert (=> start!107330 (and (array_inv!30449 _values!1134) e!725180)))

(assert (=> start!107330 true))

(declare-datatypes ((array!83167 0))(
  ( (array!83168 (arr!40116 (Array (_ BitVec 32) (_ BitVec 64))) (size!40653 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83167)

(declare-fun array_inv!30450 (array!83167) Bool)

(assert (=> start!107330 (array_inv!30450 _keys!1364)))

(declare-fun b!1271571 () Bool)

(declare-fun res!846049 () Bool)

(assert (=> b!1271571 (=> (not res!846049) (not e!725183))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83167 (_ BitVec 32)) Bool)

(assert (=> b!1271571 (= res!846049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!51055 () Bool)

(declare-fun mapRes!51055 () Bool)

(declare-fun tp!97397 () Bool)

(declare-fun e!725181 () Bool)

(assert (=> mapNonEmpty!51055 (= mapRes!51055 (and tp!97397 e!725181))))

(declare-fun mapKey!51055 () (_ BitVec 32))

(declare-fun mapRest!51055 () (Array (_ BitVec 32) ValueCell!15638))

(declare-fun mapValue!51055 () ValueCell!15638)

(assert (=> mapNonEmpty!51055 (= (arr!40115 _values!1134) (store mapRest!51055 mapKey!51055 mapValue!51055))))

(declare-fun b!1271572 () Bool)

(assert (=> b!1271572 (= e!725183 false)))

(declare-fun lt!574847 () Bool)

(declare-datatypes ((List!28693 0))(
  ( (Nil!28690) (Cons!28689 (h!29898 (_ BitVec 64)) (t!42229 List!28693)) )
))
(declare-fun arrayNoDuplicates!0 (array!83167 (_ BitVec 32) List!28693) Bool)

(assert (=> b!1271572 (= lt!574847 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28690))))

(declare-fun b!1271573 () Bool)

(declare-fun e!725179 () Bool)

(declare-fun tp_is_empty!32983 () Bool)

(assert (=> b!1271573 (= e!725179 tp_is_empty!32983)))

(declare-fun b!1271574 () Bool)

(assert (=> b!1271574 (= e!725181 tp_is_empty!32983)))

(declare-fun mapIsEmpty!51055 () Bool)

(assert (=> mapIsEmpty!51055 mapRes!51055))

(declare-fun b!1271575 () Bool)

(declare-fun res!846050 () Bool)

(assert (=> b!1271575 (=> (not res!846050) (not e!725183))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271575 (= res!846050 (and (= (size!40652 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40653 _keys!1364) (size!40652 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271576 () Bool)

(assert (=> b!1271576 (= e!725180 (and e!725179 mapRes!51055))))

(declare-fun condMapEmpty!51055 () Bool)

(declare-fun mapDefault!51055 () ValueCell!15638)

