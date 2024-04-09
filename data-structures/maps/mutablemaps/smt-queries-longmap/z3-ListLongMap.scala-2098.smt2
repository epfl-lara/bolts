; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35766 () Bool)

(assert start!35766)

(declare-fun mapNonEmpty!13824 () Bool)

(declare-fun mapRes!13824 () Bool)

(declare-fun tp!27891 () Bool)

(declare-fun e!219850 () Bool)

(assert (=> mapNonEmpty!13824 (= mapRes!13824 (and tp!27891 e!219850))))

(declare-datatypes ((V!11925 0))(
  ( (V!11926 (val!4150 Int)) )
))
(declare-datatypes ((ValueCell!3762 0))(
  ( (ValueCellFull!3762 (v!6340 V!11925)) (EmptyCell!3762) )
))
(declare-fun mapRest!13824 () (Array (_ BitVec 32) ValueCell!3762))

(declare-datatypes ((array!19943 0))(
  ( (array!19944 (arr!9462 (Array (_ BitVec 32) ValueCell!3762)) (size!9814 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19943)

(declare-fun mapKey!13824 () (_ BitVec 32))

(declare-fun mapValue!13824 () ValueCell!3762)

(assert (=> mapNonEmpty!13824 (= (arr!9462 _values!1208) (store mapRest!13824 mapKey!13824 mapValue!13824))))

(declare-fun mapIsEmpty!13824 () Bool)

(assert (=> mapIsEmpty!13824 mapRes!13824))

(declare-fun b!359008 () Bool)

(declare-fun e!219847 () Bool)

(assert (=> b!359008 (= e!219847 false)))

(declare-fun lt!166264 () Bool)

(declare-datatypes ((array!19945 0))(
  ( (array!19946 (arr!9463 (Array (_ BitVec 32) (_ BitVec 64))) (size!9815 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19945)

(declare-datatypes ((List!5481 0))(
  ( (Nil!5478) (Cons!5477 (h!6333 (_ BitVec 64)) (t!10639 List!5481)) )
))
(declare-fun arrayNoDuplicates!0 (array!19945 (_ BitVec 32) List!5481) Bool)

(assert (=> b!359008 (= lt!166264 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5478))))

(declare-fun b!359009 () Bool)

(declare-fun e!219849 () Bool)

(declare-fun e!219848 () Bool)

(assert (=> b!359009 (= e!219849 (and e!219848 mapRes!13824))))

(declare-fun condMapEmpty!13824 () Bool)

(declare-fun mapDefault!13824 () ValueCell!3762)

(assert (=> b!359009 (= condMapEmpty!13824 (= (arr!9462 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3762)) mapDefault!13824)))))

(declare-fun b!359010 () Bool)

(declare-fun res!199620 () Bool)

(assert (=> b!359010 (=> (not res!199620) (not e!219847))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(assert (=> b!359010 (= res!199620 (and (= (size!9814 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9815 _keys!1456) (size!9814 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359007 () Bool)

(declare-fun tp_is_empty!8211 () Bool)

(assert (=> b!359007 (= e!219850 tp_is_empty!8211)))

(declare-fun res!199621 () Bool)

(assert (=> start!35766 (=> (not res!199621) (not e!219847))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35766 (= res!199621 (validMask!0 mask!1842))))

(assert (=> start!35766 e!219847))

(assert (=> start!35766 true))

(declare-fun array_inv!6962 (array!19943) Bool)

(assert (=> start!35766 (and (array_inv!6962 _values!1208) e!219849)))

(declare-fun array_inv!6963 (array!19945) Bool)

(assert (=> start!35766 (array_inv!6963 _keys!1456)))

(declare-fun b!359011 () Bool)

(assert (=> b!359011 (= e!219848 tp_is_empty!8211)))

(declare-fun b!359012 () Bool)

(declare-fun res!199619 () Bool)

(assert (=> b!359012 (=> (not res!199619) (not e!219847))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19945 (_ BitVec 32)) Bool)

(assert (=> b!359012 (= res!199619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(assert (= (and start!35766 res!199621) b!359010))

(assert (= (and b!359010 res!199620) b!359012))

(assert (= (and b!359012 res!199619) b!359008))

(assert (= (and b!359009 condMapEmpty!13824) mapIsEmpty!13824))

(assert (= (and b!359009 (not condMapEmpty!13824)) mapNonEmpty!13824))

(get-info :version)

(assert (= (and mapNonEmpty!13824 ((_ is ValueCellFull!3762) mapValue!13824)) b!359007))

(assert (= (and b!359009 ((_ is ValueCellFull!3762) mapDefault!13824)) b!359011))

(assert (= start!35766 b!359009))

(declare-fun m!356631 () Bool)

(assert (=> mapNonEmpty!13824 m!356631))

(declare-fun m!356633 () Bool)

(assert (=> b!359008 m!356633))

(declare-fun m!356635 () Bool)

(assert (=> start!35766 m!356635))

(declare-fun m!356637 () Bool)

(assert (=> start!35766 m!356637))

(declare-fun m!356639 () Bool)

(assert (=> start!35766 m!356639))

(declare-fun m!356641 () Bool)

(assert (=> b!359012 m!356641))

(check-sat (not b!359008) (not start!35766) (not b!359012) tp_is_empty!8211 (not mapNonEmpty!13824))
(check-sat)
