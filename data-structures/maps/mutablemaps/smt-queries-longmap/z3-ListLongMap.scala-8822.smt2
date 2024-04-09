; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107194 () Bool)

(assert start!107194)

(declare-fun b!1270347 () Bool)

(declare-fun e!724162 () Bool)

(declare-fun tp_is_empty!32847 () Bool)

(assert (=> b!1270347 (= e!724162 tp_is_empty!32847)))

(declare-fun res!845437 () Bool)

(declare-fun e!724163 () Bool)

(assert (=> start!107194 (=> (not res!845437) (not e!724163))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107194 (= res!845437 (validMask!0 mask!1730))))

(assert (=> start!107194 e!724163))

(declare-datatypes ((V!48989 0))(
  ( (V!48990 (val!16498 Int)) )
))
(declare-datatypes ((ValueCell!15570 0))(
  ( (ValueCellFull!15570 (v!19133 V!48989)) (EmptyCell!15570) )
))
(declare-datatypes ((array!82923 0))(
  ( (array!82924 (arr!39994 (Array (_ BitVec 32) ValueCell!15570)) (size!40531 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82923)

(declare-fun e!724161 () Bool)

(declare-fun array_inv!30377 (array!82923) Bool)

(assert (=> start!107194 (and (array_inv!30377 _values!1134) e!724161)))

(assert (=> start!107194 true))

(declare-datatypes ((array!82925 0))(
  ( (array!82926 (arr!39995 (Array (_ BitVec 32) (_ BitVec 64))) (size!40532 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82925)

(declare-fun array_inv!30378 (array!82925) Bool)

(assert (=> start!107194 (array_inv!30378 _keys!1364)))

(declare-fun mapNonEmpty!50851 () Bool)

(declare-fun mapRes!50851 () Bool)

(declare-fun tp!97193 () Bool)

(declare-fun e!724159 () Bool)

(assert (=> mapNonEmpty!50851 (= mapRes!50851 (and tp!97193 e!724159))))

(declare-fun mapRest!50851 () (Array (_ BitVec 32) ValueCell!15570))

(declare-fun mapValue!50851 () ValueCell!15570)

(declare-fun mapKey!50851 () (_ BitVec 32))

(assert (=> mapNonEmpty!50851 (= (arr!39994 _values!1134) (store mapRest!50851 mapKey!50851 mapValue!50851))))

(declare-fun b!1270348 () Bool)

(declare-fun res!845438 () Bool)

(assert (=> b!1270348 (=> (not res!845438) (not e!724163))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270348 (= res!845438 (and (= (size!40531 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40532 _keys!1364) (size!40531 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!50851 () Bool)

(assert (=> mapIsEmpty!50851 mapRes!50851))

(declare-fun b!1270349 () Bool)

(assert (=> b!1270349 (= e!724163 false)))

(declare-fun lt!574643 () Bool)

(declare-datatypes ((List!28653 0))(
  ( (Nil!28650) (Cons!28649 (h!29858 (_ BitVec 64)) (t!42189 List!28653)) )
))
(declare-fun arrayNoDuplicates!0 (array!82925 (_ BitVec 32) List!28653) Bool)

(assert (=> b!1270349 (= lt!574643 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28650))))

(declare-fun b!1270350 () Bool)

(assert (=> b!1270350 (= e!724161 (and e!724162 mapRes!50851))))

(declare-fun condMapEmpty!50851 () Bool)

(declare-fun mapDefault!50851 () ValueCell!15570)

(assert (=> b!1270350 (= condMapEmpty!50851 (= (arr!39994 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15570)) mapDefault!50851)))))

(declare-fun b!1270351 () Bool)

(declare-fun res!845436 () Bool)

(assert (=> b!1270351 (=> (not res!845436) (not e!724163))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82925 (_ BitVec 32)) Bool)

(assert (=> b!1270351 (= res!845436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270352 () Bool)

(assert (=> b!1270352 (= e!724159 tp_is_empty!32847)))

(assert (= (and start!107194 res!845437) b!1270348))

(assert (= (and b!1270348 res!845438) b!1270351))

(assert (= (and b!1270351 res!845436) b!1270349))

(assert (= (and b!1270350 condMapEmpty!50851) mapIsEmpty!50851))

(assert (= (and b!1270350 (not condMapEmpty!50851)) mapNonEmpty!50851))

(get-info :version)

(assert (= (and mapNonEmpty!50851 ((_ is ValueCellFull!15570) mapValue!50851)) b!1270352))

(assert (= (and b!1270350 ((_ is ValueCellFull!15570) mapDefault!50851)) b!1270347))

(assert (= start!107194 b!1270350))

(declare-fun m!1168673 () Bool)

(assert (=> start!107194 m!1168673))

(declare-fun m!1168675 () Bool)

(assert (=> start!107194 m!1168675))

(declare-fun m!1168677 () Bool)

(assert (=> start!107194 m!1168677))

(declare-fun m!1168679 () Bool)

(assert (=> mapNonEmpty!50851 m!1168679))

(declare-fun m!1168681 () Bool)

(assert (=> b!1270349 m!1168681))

(declare-fun m!1168683 () Bool)

(assert (=> b!1270351 m!1168683))

(check-sat (not start!107194) (not b!1270351) (not mapNonEmpty!50851) (not b!1270349) tp_is_empty!32847)
(check-sat)
