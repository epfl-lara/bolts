; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35742 () Bool)

(assert start!35742)

(declare-fun b!358718 () Bool)

(declare-fun res!199437 () Bool)

(declare-fun e!219669 () Bool)

(assert (=> b!358718 (=> (not res!199437) (not e!219669))))

(declare-datatypes ((array!19899 0))(
  ( (array!19900 (arr!9440 (Array (_ BitVec 32) (_ BitVec 64))) (size!9792 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19899)

(declare-datatypes ((List!5471 0))(
  ( (Nil!5468) (Cons!5467 (h!6323 (_ BitVec 64)) (t!10629 List!5471)) )
))
(declare-fun arrayNoDuplicates!0 (array!19899 (_ BitVec 32) List!5471) Bool)

(assert (=> b!358718 (= res!199437 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5468))))

(declare-fun mapIsEmpty!13788 () Bool)

(declare-fun mapRes!13788 () Bool)

(assert (=> mapIsEmpty!13788 mapRes!13788))

(declare-fun b!358719 () Bool)

(declare-fun res!199444 () Bool)

(assert (=> b!358719 (=> (not res!199444) (not e!219669))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19899 (_ BitVec 32)) Bool)

(assert (=> b!358719 (= res!199444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!358720 () Bool)

(declare-fun res!199440 () Bool)

(assert (=> b!358720 (=> (not res!199440) (not e!219669))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-datatypes ((V!11893 0))(
  ( (V!11894 (val!4138 Int)) )
))
(declare-datatypes ((ValueCell!3750 0))(
  ( (ValueCellFull!3750 (v!6328 V!11893)) (EmptyCell!3750) )
))
(declare-datatypes ((array!19901 0))(
  ( (array!19902 (arr!9441 (Array (_ BitVec 32) ValueCell!3750)) (size!9793 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19901)

(assert (=> b!358720 (= res!199440 (and (= (size!9793 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9792 _keys!1456) (size!9793 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!358721 () Bool)

(declare-fun res!199442 () Bool)

(assert (=> b!358721 (=> (not res!199442) (not e!219669))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19899 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!358721 (= res!199442 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!358722 () Bool)

(declare-fun res!199439 () Bool)

(assert (=> b!358722 (=> (not res!199439) (not e!219669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!358722 (= res!199439 (validKeyInArray!0 k0!1077))))

(declare-fun b!358723 () Bool)

(declare-fun res!199438 () Bool)

(assert (=> b!358723 (=> (not res!199438) (not e!219669))))

(assert (=> b!358723 (= res!199438 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9792 _keys!1456))))))

(declare-fun b!358724 () Bool)

(assert (=> b!358724 (= e!219669 (not (validKeyInArray!0 (select (arr!9440 _keys!1456) from!1805))))))

(declare-fun mapNonEmpty!13788 () Bool)

(declare-fun tp!27846 () Bool)

(declare-fun e!219667 () Bool)

(assert (=> mapNonEmpty!13788 (= mapRes!13788 (and tp!27846 e!219667))))

(declare-fun mapKey!13788 () (_ BitVec 32))

(declare-fun mapValue!13788 () ValueCell!3750)

(declare-fun mapRest!13788 () (Array (_ BitVec 32) ValueCell!3750))

(assert (=> mapNonEmpty!13788 (= (arr!9441 _values!1208) (store mapRest!13788 mapKey!13788 mapValue!13788))))

(declare-fun b!358725 () Bool)

(declare-fun tp_is_empty!8187 () Bool)

(assert (=> b!358725 (= e!219667 tp_is_empty!8187)))

(declare-fun b!358726 () Bool)

(declare-fun e!219671 () Bool)

(assert (=> b!358726 (= e!219671 tp_is_empty!8187)))

(declare-fun b!358727 () Bool)

(declare-fun e!219670 () Bool)

(assert (=> b!358727 (= e!219670 (and e!219671 mapRes!13788))))

(declare-fun condMapEmpty!13788 () Bool)

(declare-fun mapDefault!13788 () ValueCell!3750)

(assert (=> b!358727 (= condMapEmpty!13788 (= (arr!9441 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3750)) mapDefault!13788)))))

(declare-fun res!199441 () Bool)

(assert (=> start!35742 (=> (not res!199441) (not e!219669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35742 (= res!199441 (validMask!0 mask!1842))))

(assert (=> start!35742 e!219669))

(assert (=> start!35742 true))

(declare-fun array_inv!6944 (array!19899) Bool)

(assert (=> start!35742 (array_inv!6944 _keys!1456)))

(declare-fun array_inv!6945 (array!19901) Bool)

(assert (=> start!35742 (and (array_inv!6945 _values!1208) e!219670)))

(declare-fun b!358717 () Bool)

(declare-fun res!199443 () Bool)

(assert (=> b!358717 (=> (not res!199443) (not e!219669))))

(assert (=> b!358717 (= res!199443 (= (select (arr!9440 _keys!1456) from!1805) k0!1077))))

(assert (= (and start!35742 res!199441) b!358720))

(assert (= (and b!358720 res!199440) b!358719))

(assert (= (and b!358719 res!199444) b!358718))

(assert (= (and b!358718 res!199437) b!358722))

(assert (= (and b!358722 res!199439) b!358723))

(assert (= (and b!358723 res!199438) b!358721))

(assert (= (and b!358721 res!199442) b!358717))

(assert (= (and b!358717 res!199443) b!358724))

(assert (= (and b!358727 condMapEmpty!13788) mapIsEmpty!13788))

(assert (= (and b!358727 (not condMapEmpty!13788)) mapNonEmpty!13788))

(get-info :version)

(assert (= (and mapNonEmpty!13788 ((_ is ValueCellFull!3750) mapValue!13788)) b!358725))

(assert (= (and b!358727 ((_ is ValueCellFull!3750) mapDefault!13788)) b!358726))

(assert (= start!35742 b!358727))

(declare-fun m!356423 () Bool)

(assert (=> b!358718 m!356423))

(declare-fun m!356425 () Bool)

(assert (=> b!358724 m!356425))

(assert (=> b!358724 m!356425))

(declare-fun m!356427 () Bool)

(assert (=> b!358724 m!356427))

(declare-fun m!356429 () Bool)

(assert (=> b!358721 m!356429))

(declare-fun m!356431 () Bool)

(assert (=> b!358722 m!356431))

(assert (=> b!358717 m!356425))

(declare-fun m!356433 () Bool)

(assert (=> mapNonEmpty!13788 m!356433))

(declare-fun m!356435 () Bool)

(assert (=> b!358719 m!356435))

(declare-fun m!356437 () Bool)

(assert (=> start!35742 m!356437))

(declare-fun m!356439 () Bool)

(assert (=> start!35742 m!356439))

(declare-fun m!356441 () Bool)

(assert (=> start!35742 m!356441))

(check-sat (not start!35742) tp_is_empty!8187 (not b!358724) (not b!358719) (not b!358722) (not b!358718) (not mapNonEmpty!13788) (not b!358721))
(check-sat)
