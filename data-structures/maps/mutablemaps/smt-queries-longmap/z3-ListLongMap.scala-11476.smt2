; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133688 () Bool)

(assert start!133688)

(declare-fun b!1562633 () Bool)

(declare-fun e!870835 () Bool)

(assert (=> b!1562633 (= e!870835 false)))

(declare-fun lt!671700 () Bool)

(declare-datatypes ((array!104141 0))(
  ( (array!104142 (arr!50258 (Array (_ BitVec 32) (_ BitVec 64))) (size!50809 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104141)

(declare-datatypes ((List!36655 0))(
  ( (Nil!36652) (Cons!36651 (h!38098 (_ BitVec 64)) (t!51509 List!36655)) )
))
(declare-fun arrayNoDuplicates!0 (array!104141 (_ BitVec 32) List!36655) Bool)

(assert (=> b!1562633 (= lt!671700 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36652))))

(declare-fun b!1562634 () Bool)

(declare-fun e!870833 () Bool)

(declare-fun tp_is_empty!38739 () Bool)

(assert (=> b!1562634 (= e!870833 tp_is_empty!38739)))

(declare-fun b!1562635 () Bool)

(declare-fun e!870832 () Bool)

(declare-fun mapRes!59484 () Bool)

(assert (=> b!1562635 (= e!870832 (and e!870833 mapRes!59484))))

(declare-fun condMapEmpty!59484 () Bool)

(declare-datatypes ((V!59859 0))(
  ( (V!59860 (val!19453 Int)) )
))
(declare-datatypes ((ValueCell!18339 0))(
  ( (ValueCellFull!18339 (v!22202 V!59859)) (EmptyCell!18339) )
))
(declare-datatypes ((array!104143 0))(
  ( (array!104144 (arr!50259 (Array (_ BitVec 32) ValueCell!18339)) (size!50810 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104143)

(declare-fun mapDefault!59484 () ValueCell!18339)

(assert (=> b!1562635 (= condMapEmpty!59484 (= (arr!50259 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18339)) mapDefault!59484)))))

(declare-fun b!1562636 () Bool)

(declare-fun res!1068443 () Bool)

(assert (=> b!1562636 (=> (not res!1068443) (not e!870835))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1562636 (= res!1068443 (and (= (size!50810 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50809 _keys!637) (size!50810 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59484 () Bool)

(declare-fun tp!113320 () Bool)

(declare-fun e!870836 () Bool)

(assert (=> mapNonEmpty!59484 (= mapRes!59484 (and tp!113320 e!870836))))

(declare-fun mapValue!59484 () ValueCell!18339)

(declare-fun mapKey!59484 () (_ BitVec 32))

(declare-fun mapRest!59484 () (Array (_ BitVec 32) ValueCell!18339))

(assert (=> mapNonEmpty!59484 (= (arr!50259 _values!487) (store mapRest!59484 mapKey!59484 mapValue!59484))))

(declare-fun mapIsEmpty!59484 () Bool)

(assert (=> mapIsEmpty!59484 mapRes!59484))

(declare-fun b!1562637 () Bool)

(declare-fun res!1068441 () Bool)

(assert (=> b!1562637 (=> (not res!1068441) (not e!870835))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104141 (_ BitVec 32)) Bool)

(assert (=> b!1562637 (= res!1068441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562638 () Bool)

(assert (=> b!1562638 (= e!870836 tp_is_empty!38739)))

(declare-fun res!1068442 () Bool)

(assert (=> start!133688 (=> (not res!1068442) (not e!870835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133688 (= res!1068442 (validMask!0 mask!947))))

(assert (=> start!133688 e!870835))

(assert (=> start!133688 true))

(declare-fun array_inv!38991 (array!104143) Bool)

(assert (=> start!133688 (and (array_inv!38991 _values!487) e!870832)))

(declare-fun array_inv!38992 (array!104141) Bool)

(assert (=> start!133688 (array_inv!38992 _keys!637)))

(assert (= (and start!133688 res!1068442) b!1562636))

(assert (= (and b!1562636 res!1068443) b!1562637))

(assert (= (and b!1562637 res!1068441) b!1562633))

(assert (= (and b!1562635 condMapEmpty!59484) mapIsEmpty!59484))

(assert (= (and b!1562635 (not condMapEmpty!59484)) mapNonEmpty!59484))

(get-info :version)

(assert (= (and mapNonEmpty!59484 ((_ is ValueCellFull!18339) mapValue!59484)) b!1562638))

(assert (= (and b!1562635 ((_ is ValueCellFull!18339) mapDefault!59484)) b!1562634))

(assert (= start!133688 b!1562635))

(declare-fun m!1438423 () Bool)

(assert (=> b!1562633 m!1438423))

(declare-fun m!1438425 () Bool)

(assert (=> mapNonEmpty!59484 m!1438425))

(declare-fun m!1438427 () Bool)

(assert (=> b!1562637 m!1438427))

(declare-fun m!1438429 () Bool)

(assert (=> start!133688 m!1438429))

(declare-fun m!1438431 () Bool)

(assert (=> start!133688 m!1438431))

(declare-fun m!1438433 () Bool)

(assert (=> start!133688 m!1438433))

(check-sat (not b!1562633) tp_is_empty!38739 (not start!133688) (not mapNonEmpty!59484) (not b!1562637))
(check-sat)
