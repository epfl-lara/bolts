; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107358 () Bool)

(assert start!107358)

(declare-fun b!1271831 () Bool)

(declare-fun e!725389 () Bool)

(declare-fun from!1698 () (_ BitVec 32))

(declare-datatypes ((array!83213 0))(
  ( (array!83214 (arr!40139 (Array (_ BitVec 32) (_ BitVec 64))) (size!40676 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83213)

(assert (=> b!1271831 (= e!725389 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40676 _keys!1364)) (bvslt from!1698 (size!40676 _keys!1364)) (bvslt (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!51097 () Bool)

(declare-fun mapRes!51097 () Bool)

(declare-fun tp!97439 () Bool)

(declare-fun e!725392 () Bool)

(assert (=> mapNonEmpty!51097 (= mapRes!51097 (and tp!97439 e!725392))))

(declare-datatypes ((V!49207 0))(
  ( (V!49208 (val!16580 Int)) )
))
(declare-datatypes ((ValueCell!15652 0))(
  ( (ValueCellFull!15652 (v!19215 V!49207)) (EmptyCell!15652) )
))
(declare-datatypes ((array!83215 0))(
  ( (array!83216 (arr!40140 (Array (_ BitVec 32) ValueCell!15652)) (size!40677 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83215)

(declare-fun mapValue!51097 () ValueCell!15652)

(declare-fun mapKey!51097 () (_ BitVec 32))

(declare-fun mapRest!51097 () (Array (_ BitVec 32) ValueCell!15652))

(assert (=> mapNonEmpty!51097 (= (arr!40140 _values!1134) (store mapRest!51097 mapKey!51097 mapValue!51097))))

(declare-fun b!1271832 () Bool)

(declare-fun res!846183 () Bool)

(assert (=> b!1271832 (=> (not res!846183) (not e!725389))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271832 (= res!846183 (and (= (size!40677 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40676 _keys!1364) (size!40677 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!846184 () Bool)

(assert (=> start!107358 (=> (not res!846184) (not e!725389))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107358 (= res!846184 (validMask!0 mask!1730))))

(assert (=> start!107358 e!725389))

(declare-fun e!725390 () Bool)

(declare-fun array_inv!30469 (array!83215) Bool)

(assert (=> start!107358 (and (array_inv!30469 _values!1134) e!725390)))

(assert (=> start!107358 true))

(declare-fun array_inv!30470 (array!83213) Bool)

(assert (=> start!107358 (array_inv!30470 _keys!1364)))

(declare-fun b!1271833 () Bool)

(declare-fun res!846182 () Bool)

(assert (=> b!1271833 (=> (not res!846182) (not e!725389))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83213 (_ BitVec 32)) Bool)

(assert (=> b!1271833 (= res!846182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1271834 () Bool)

(declare-fun res!846185 () Bool)

(assert (=> b!1271834 (=> (not res!846185) (not e!725389))))

(declare-datatypes ((List!28703 0))(
  ( (Nil!28700) (Cons!28699 (h!29908 (_ BitVec 64)) (t!42239 List!28703)) )
))
(declare-fun arrayNoDuplicates!0 (array!83213 (_ BitVec 32) List!28703) Bool)

(assert (=> b!1271834 (= res!846185 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28700))))

(declare-fun b!1271835 () Bool)

(declare-fun e!725393 () Bool)

(assert (=> b!1271835 (= e!725390 (and e!725393 mapRes!51097))))

(declare-fun condMapEmpty!51097 () Bool)

(declare-fun mapDefault!51097 () ValueCell!15652)

