; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35784 () Bool)

(assert start!35784)

(declare-fun b!359169 () Bool)

(declare-fun res!199700 () Bool)

(declare-fun e!219983 () Bool)

(assert (=> b!359169 (=> (not res!199700) (not e!219983))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19979 0))(
  ( (array!19980 (arr!9480 (Array (_ BitVec 32) (_ BitVec 64))) (size!9832 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19979)

(declare-datatypes ((V!11949 0))(
  ( (V!11950 (val!4159 Int)) )
))
(declare-datatypes ((ValueCell!3771 0))(
  ( (ValueCellFull!3771 (v!6349 V!11949)) (EmptyCell!3771) )
))
(declare-datatypes ((array!19981 0))(
  ( (array!19982 (arr!9481 (Array (_ BitVec 32) ValueCell!3771)) (size!9833 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19981)

(assert (=> b!359169 (= res!199700 (and (= (size!9833 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9832 _keys!1456) (size!9833 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359170 () Bool)

(assert (=> b!359170 (= e!219983 false)))

(declare-fun lt!166291 () Bool)

(declare-datatypes ((List!5487 0))(
  ( (Nil!5484) (Cons!5483 (h!6339 (_ BitVec 64)) (t!10645 List!5487)) )
))
(declare-fun arrayNoDuplicates!0 (array!19979 (_ BitVec 32) List!5487) Bool)

(assert (=> b!359170 (= lt!166291 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5484))))

(declare-fun b!359171 () Bool)

(declare-fun res!199701 () Bool)

(assert (=> b!359171 (=> (not res!199701) (not e!219983))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19979 (_ BitVec 32)) Bool)

(assert (=> b!359171 (= res!199701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359172 () Bool)

(declare-fun e!219985 () Bool)

(declare-fun tp_is_empty!8229 () Bool)

(assert (=> b!359172 (= e!219985 tp_is_empty!8229)))

(declare-fun mapIsEmpty!13851 () Bool)

(declare-fun mapRes!13851 () Bool)

(assert (=> mapIsEmpty!13851 mapRes!13851))

(declare-fun b!359173 () Bool)

(declare-fun e!219982 () Bool)

(assert (=> b!359173 (= e!219982 tp_is_empty!8229)))

(declare-fun res!199702 () Bool)

(assert (=> start!35784 (=> (not res!199702) (not e!219983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35784 (= res!199702 (validMask!0 mask!1842))))

(assert (=> start!35784 e!219983))

(assert (=> start!35784 true))

(declare-fun e!219984 () Bool)

(declare-fun array_inv!6976 (array!19981) Bool)

(assert (=> start!35784 (and (array_inv!6976 _values!1208) e!219984)))

(declare-fun array_inv!6977 (array!19979) Bool)

(assert (=> start!35784 (array_inv!6977 _keys!1456)))

(declare-fun mapNonEmpty!13851 () Bool)

(declare-fun tp!27918 () Bool)

(assert (=> mapNonEmpty!13851 (= mapRes!13851 (and tp!27918 e!219985))))

(declare-fun mapKey!13851 () (_ BitVec 32))

(declare-fun mapValue!13851 () ValueCell!3771)

(declare-fun mapRest!13851 () (Array (_ BitVec 32) ValueCell!3771))

(assert (=> mapNonEmpty!13851 (= (arr!9481 _values!1208) (store mapRest!13851 mapKey!13851 mapValue!13851))))

(declare-fun b!359174 () Bool)

(assert (=> b!359174 (= e!219984 (and e!219982 mapRes!13851))))

(declare-fun condMapEmpty!13851 () Bool)

(declare-fun mapDefault!13851 () ValueCell!3771)

(assert (=> b!359174 (= condMapEmpty!13851 (= (arr!9481 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3771)) mapDefault!13851)))))

(assert (= (and start!35784 res!199702) b!359169))

(assert (= (and b!359169 res!199700) b!359171))

(assert (= (and b!359171 res!199701) b!359170))

(assert (= (and b!359174 condMapEmpty!13851) mapIsEmpty!13851))

(assert (= (and b!359174 (not condMapEmpty!13851)) mapNonEmpty!13851))

(get-info :version)

(assert (= (and mapNonEmpty!13851 ((_ is ValueCellFull!3771) mapValue!13851)) b!359172))

(assert (= (and b!359174 ((_ is ValueCellFull!3771) mapDefault!13851)) b!359173))

(assert (= start!35784 b!359174))

(declare-fun m!356739 () Bool)

(assert (=> b!359170 m!356739))

(declare-fun m!356741 () Bool)

(assert (=> b!359171 m!356741))

(declare-fun m!356743 () Bool)

(assert (=> start!35784 m!356743))

(declare-fun m!356745 () Bool)

(assert (=> start!35784 m!356745))

(declare-fun m!356747 () Bool)

(assert (=> start!35784 m!356747))

(declare-fun m!356749 () Bool)

(assert (=> mapNonEmpty!13851 m!356749))

(check-sat (not mapNonEmpty!13851) (not b!359171) (not b!359170) tp_is_empty!8229 (not start!35784))
(check-sat)
