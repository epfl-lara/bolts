; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35748 () Bool)

(assert start!35748)

(declare-fun b_free!7923 () Bool)

(declare-fun b_next!7923 () Bool)

(assert (=> start!35748 (= b_free!7923 (not b_next!7923))))

(declare-fun tp!27860 () Bool)

(declare-fun b_and!15183 () Bool)

(assert (=> start!35748 (= tp!27860 b_and!15183)))

(declare-fun b!358821 () Bool)

(declare-fun e!219713 () Bool)

(declare-fun e!219716 () Bool)

(declare-fun mapRes!13797 () Bool)

(assert (=> b!358821 (= e!219713 (and e!219716 mapRes!13797))))

(declare-fun condMapEmpty!13797 () Bool)

(declare-datatypes ((V!11901 0))(
  ( (V!11902 (val!4141 Int)) )
))
(declare-datatypes ((ValueCell!3753 0))(
  ( (ValueCellFull!3753 (v!6331 V!11901)) (EmptyCell!3753) )
))
(declare-datatypes ((array!19911 0))(
  ( (array!19912 (arr!9446 (Array (_ BitVec 32) ValueCell!3753)) (size!9798 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19911)

(declare-fun mapDefault!13797 () ValueCell!3753)

(assert (=> b!358821 (= condMapEmpty!13797 (= (arr!9446 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3753)) mapDefault!13797)))))

(declare-fun b!358822 () Bool)

(declare-fun res!199520 () Bool)

(declare-fun e!219712 () Bool)

(assert (=> b!358822 (=> (not res!199520) (not e!219712))))

(declare-datatypes ((array!19913 0))(
  ( (array!19914 (arr!9447 (Array (_ BitVec 32) (_ BitVec 64))) (size!9799 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19913)

(declare-datatypes ((List!5473 0))(
  ( (Nil!5470) (Cons!5469 (h!6325 (_ BitVec 64)) (t!10631 List!5473)) )
))
(declare-fun arrayNoDuplicates!0 (array!19913 (_ BitVec 32) List!5473) Bool)

(assert (=> b!358822 (= res!199520 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5470))))

(declare-fun b!358823 () Bool)

(declare-fun res!199519 () Bool)

(assert (=> b!358823 (=> (not res!199519) (not e!219712))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!358823 (= res!199519 (validKeyInArray!0 k0!1077))))

(declare-fun b!358824 () Bool)

(declare-fun e!219714 () Bool)

(declare-fun tp_is_empty!8193 () Bool)

(assert (=> b!358824 (= e!219714 tp_is_empty!8193)))

(declare-fun b!358825 () Bool)

(assert (=> b!358825 (= e!219716 tp_is_empty!8193)))

(declare-fun b!358826 () Bool)

(declare-fun res!199516 () Bool)

(assert (=> b!358826 (=> (not res!199516) (not e!219712))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!19913 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!358826 (= res!199516 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!358827 () Bool)

(declare-fun res!199522 () Bool)

(assert (=> b!358827 (=> (not res!199522) (not e!219712))))

(assert (=> b!358827 (= res!199522 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9799 _keys!1456))))))

(declare-fun b!358828 () Bool)

(declare-datatypes ((tuple2!5732 0))(
  ( (tuple2!5733 (_1!2876 (_ BitVec 64)) (_2!2876 V!11901)) )
))
(declare-datatypes ((List!5474 0))(
  ( (Nil!5471) (Cons!5470 (h!6326 tuple2!5732) (t!10632 List!5474)) )
))
(declare-datatypes ((ListLongMap!4659 0))(
  ( (ListLongMap!4660 (toList!2345 List!5474)) )
))
(declare-fun lt!166234 () ListLongMap!4659)

(declare-fun contains!2421 (ListLongMap!4659 (_ BitVec 64)) Bool)

(assert (=> b!358828 (= e!219712 (not (contains!2421 lt!166234 k0!1077)))))

(assert (=> b!358828 (contains!2421 lt!166234 (select (arr!9447 _keys!1456) from!1805))))

(declare-fun minValue!1150 () V!11901)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun defaultEntry!1216 () Int)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11901)

(declare-fun getCurrentListMap!1862 (array!19913 array!19911 (_ BitVec 32) (_ BitVec 32) V!11901 V!11901 (_ BitVec 32) Int) ListLongMap!4659)

(assert (=> b!358828 (= lt!166234 (getCurrentListMap!1862 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216))))

(declare-datatypes ((Unit!11049 0))(
  ( (Unit!11050) )
))
(declare-fun lt!166233 () Unit!11049)

(declare-fun lemmaValidKeyInArrayIsInListMap!193 (array!19913 array!19911 (_ BitVec 32) (_ BitVec 32) V!11901 V!11901 (_ BitVec 32) Int) Unit!11049)

(assert (=> b!358828 (= lt!166233 (lemmaValidKeyInArrayIsInListMap!193 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun res!199514 () Bool)

(assert (=> start!35748 (=> (not res!199514) (not e!219712))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35748 (= res!199514 (validMask!0 mask!1842))))

(assert (=> start!35748 e!219712))

(assert (=> start!35748 tp_is_empty!8193))

(assert (=> start!35748 true))

(assert (=> start!35748 tp!27860))

(declare-fun array_inv!6948 (array!19913) Bool)

(assert (=> start!35748 (array_inv!6948 _keys!1456)))

(declare-fun array_inv!6949 (array!19911) Bool)

(assert (=> start!35748 (and (array_inv!6949 _values!1208) e!219713)))

(declare-fun b!358829 () Bool)

(declare-fun res!199517 () Bool)

(assert (=> b!358829 (=> (not res!199517) (not e!219712))))

(assert (=> b!358829 (= res!199517 (= (select (arr!9447 _keys!1456) from!1805) k0!1077))))

(declare-fun mapNonEmpty!13797 () Bool)

(declare-fun tp!27861 () Bool)

(assert (=> mapNonEmpty!13797 (= mapRes!13797 (and tp!27861 e!219714))))

(declare-fun mapRest!13797 () (Array (_ BitVec 32) ValueCell!3753))

(declare-fun mapKey!13797 () (_ BitVec 32))

(declare-fun mapValue!13797 () ValueCell!3753)

(assert (=> mapNonEmpty!13797 (= (arr!9446 _values!1208) (store mapRest!13797 mapKey!13797 mapValue!13797))))

(declare-fun mapIsEmpty!13797 () Bool)

(assert (=> mapIsEmpty!13797 mapRes!13797))

(declare-fun b!358830 () Bool)

(declare-fun res!199515 () Bool)

(assert (=> b!358830 (=> (not res!199515) (not e!219712))))

(assert (=> b!358830 (= res!199515 (validKeyInArray!0 (select (arr!9447 _keys!1456) from!1805)))))

(declare-fun b!358831 () Bool)

(declare-fun res!199518 () Bool)

(assert (=> b!358831 (=> (not res!199518) (not e!219712))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19913 (_ BitVec 32)) Bool)

(assert (=> b!358831 (= res!199518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!358832 () Bool)

(declare-fun res!199521 () Bool)

(assert (=> b!358832 (=> (not res!199521) (not e!219712))))

(assert (=> b!358832 (= res!199521 (and (= (size!9798 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9799 _keys!1456) (size!9798 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(assert (= (and start!35748 res!199514) b!358832))

(assert (= (and b!358832 res!199521) b!358831))

(assert (= (and b!358831 res!199518) b!358822))

(assert (= (and b!358822 res!199520) b!358823))

(assert (= (and b!358823 res!199519) b!358827))

(assert (= (and b!358827 res!199522) b!358826))

(assert (= (and b!358826 res!199516) b!358829))

(assert (= (and b!358829 res!199517) b!358830))

(assert (= (and b!358830 res!199515) b!358828))

(assert (= (and b!358821 condMapEmpty!13797) mapIsEmpty!13797))

(assert (= (and b!358821 (not condMapEmpty!13797)) mapNonEmpty!13797))

(get-info :version)

(assert (= (and mapNonEmpty!13797 ((_ is ValueCellFull!3753) mapValue!13797)) b!358824))

(assert (= (and b!358821 ((_ is ValueCellFull!3753) mapDefault!13797)) b!358825))

(assert (= start!35748 b!358821))

(declare-fun m!356491 () Bool)

(assert (=> b!358826 m!356491))

(declare-fun m!356493 () Bool)

(assert (=> b!358823 m!356493))

(declare-fun m!356495 () Bool)

(assert (=> start!35748 m!356495))

(declare-fun m!356497 () Bool)

(assert (=> start!35748 m!356497))

(declare-fun m!356499 () Bool)

(assert (=> start!35748 m!356499))

(declare-fun m!356501 () Bool)

(assert (=> b!358829 m!356501))

(declare-fun m!356503 () Bool)

(assert (=> b!358831 m!356503))

(declare-fun m!356505 () Bool)

(assert (=> b!358828 m!356505))

(assert (=> b!358828 m!356501))

(declare-fun m!356507 () Bool)

(assert (=> b!358828 m!356507))

(declare-fun m!356509 () Bool)

(assert (=> b!358828 m!356509))

(assert (=> b!358828 m!356501))

(declare-fun m!356511 () Bool)

(assert (=> b!358828 m!356511))

(declare-fun m!356513 () Bool)

(assert (=> mapNonEmpty!13797 m!356513))

(declare-fun m!356515 () Bool)

(assert (=> b!358822 m!356515))

(assert (=> b!358830 m!356501))

(assert (=> b!358830 m!356501))

(declare-fun m!356517 () Bool)

(assert (=> b!358830 m!356517))

(check-sat (not b!358822) (not b!358823) (not b!358831) (not mapNonEmpty!13797) (not start!35748) tp_is_empty!8193 (not b!358826) (not b_next!7923) (not b!358828) (not b!358830) b_and!15183)
(check-sat b_and!15183 (not b_next!7923))
