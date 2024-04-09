; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133712 () Bool)

(assert start!133712)

(declare-fun mapIsEmpty!59520 () Bool)

(declare-fun mapRes!59520 () Bool)

(assert (=> mapIsEmpty!59520 mapRes!59520))

(declare-fun b!1562849 () Bool)

(declare-fun e!871013 () Bool)

(declare-fun tp_is_empty!38763 () Bool)

(assert (=> b!1562849 (= e!871013 tp_is_empty!38763)))

(declare-fun b!1562850 () Bool)

(declare-fun e!871012 () Bool)

(assert (=> b!1562850 (= e!871012 false)))

(declare-fun lt!671736 () Bool)

(declare-datatypes ((array!104189 0))(
  ( (array!104190 (arr!50282 (Array (_ BitVec 32) (_ BitVec 64))) (size!50833 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104189)

(declare-datatypes ((List!36661 0))(
  ( (Nil!36658) (Cons!36657 (h!38104 (_ BitVec 64)) (t!51515 List!36661)) )
))
(declare-fun arrayNoDuplicates!0 (array!104189 (_ BitVec 32) List!36661) Bool)

(assert (=> b!1562850 (= lt!671736 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36658))))

(declare-fun mapNonEmpty!59520 () Bool)

(declare-fun tp!113356 () Bool)

(declare-fun e!871014 () Bool)

(assert (=> mapNonEmpty!59520 (= mapRes!59520 (and tp!113356 e!871014))))

(declare-datatypes ((V!59891 0))(
  ( (V!59892 (val!19465 Int)) )
))
(declare-datatypes ((ValueCell!18351 0))(
  ( (ValueCellFull!18351 (v!22214 V!59891)) (EmptyCell!18351) )
))
(declare-fun mapRest!59520 () (Array (_ BitVec 32) ValueCell!18351))

(declare-datatypes ((array!104191 0))(
  ( (array!104192 (arr!50283 (Array (_ BitVec 32) ValueCell!18351)) (size!50834 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104191)

(declare-fun mapKey!59520 () (_ BitVec 32))

(declare-fun mapValue!59520 () ValueCell!18351)

(assert (=> mapNonEmpty!59520 (= (arr!50283 _values!487) (store mapRest!59520 mapKey!59520 mapValue!59520))))

(declare-fun res!1068550 () Bool)

(assert (=> start!133712 (=> (not res!1068550) (not e!871012))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133712 (= res!1068550 (validMask!0 mask!947))))

(assert (=> start!133712 e!871012))

(assert (=> start!133712 true))

(declare-fun e!871015 () Bool)

(declare-fun array_inv!39005 (array!104191) Bool)

(assert (=> start!133712 (and (array_inv!39005 _values!487) e!871015)))

(declare-fun array_inv!39006 (array!104189) Bool)

(assert (=> start!133712 (array_inv!39006 _keys!637)))

(declare-fun b!1562851 () Bool)

(declare-fun res!1068551 () Bool)

(assert (=> b!1562851 (=> (not res!1068551) (not e!871012))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1562851 (= res!1068551 (and (= (size!50834 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50833 _keys!637) (size!50834 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562852 () Bool)

(declare-fun res!1068549 () Bool)

(assert (=> b!1562852 (=> (not res!1068549) (not e!871012))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104189 (_ BitVec 32)) Bool)

(assert (=> b!1562852 (= res!1068549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562853 () Bool)

(assert (=> b!1562853 (= e!871015 (and e!871013 mapRes!59520))))

(declare-fun condMapEmpty!59520 () Bool)

(declare-fun mapDefault!59520 () ValueCell!18351)

(assert (=> b!1562853 (= condMapEmpty!59520 (= (arr!50283 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18351)) mapDefault!59520)))))

(declare-fun b!1562854 () Bool)

(assert (=> b!1562854 (= e!871014 tp_is_empty!38763)))

(assert (= (and start!133712 res!1068550) b!1562851))

(assert (= (and b!1562851 res!1068551) b!1562852))

(assert (= (and b!1562852 res!1068549) b!1562850))

(assert (= (and b!1562853 condMapEmpty!59520) mapIsEmpty!59520))

(assert (= (and b!1562853 (not condMapEmpty!59520)) mapNonEmpty!59520))

(get-info :version)

(assert (= (and mapNonEmpty!59520 ((_ is ValueCellFull!18351) mapValue!59520)) b!1562854))

(assert (= (and b!1562853 ((_ is ValueCellFull!18351) mapDefault!59520)) b!1562849))

(assert (= start!133712 b!1562853))

(declare-fun m!1438567 () Bool)

(assert (=> b!1562850 m!1438567))

(declare-fun m!1438569 () Bool)

(assert (=> mapNonEmpty!59520 m!1438569))

(declare-fun m!1438571 () Bool)

(assert (=> start!133712 m!1438571))

(declare-fun m!1438573 () Bool)

(assert (=> start!133712 m!1438573))

(declare-fun m!1438575 () Bool)

(assert (=> start!133712 m!1438575))

(declare-fun m!1438577 () Bool)

(assert (=> b!1562852 m!1438577))

(check-sat (not mapNonEmpty!59520) (not start!133712) (not b!1562850) (not b!1562852) tp_is_empty!38763)
(check-sat)
