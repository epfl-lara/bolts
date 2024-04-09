; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35802 () Bool)

(assert start!35802)

(declare-fun b!359331 () Bool)

(declare-fun res!199782 () Bool)

(declare-fun e!220121 () Bool)

(assert (=> b!359331 (=> (not res!199782) (not e!220121))))

(declare-datatypes ((array!20015 0))(
  ( (array!20016 (arr!9498 (Array (_ BitVec 32) (_ BitVec 64))) (size!9850 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20015)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20015 (_ BitVec 32)) Bool)

(assert (=> b!359331 (= res!199782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapNonEmpty!13878 () Bool)

(declare-fun mapRes!13878 () Bool)

(declare-fun tp!27945 () Bool)

(declare-fun e!220117 () Bool)

(assert (=> mapNonEmpty!13878 (= mapRes!13878 (and tp!27945 e!220117))))

(declare-datatypes ((V!11973 0))(
  ( (V!11974 (val!4168 Int)) )
))
(declare-datatypes ((ValueCell!3780 0))(
  ( (ValueCellFull!3780 (v!6358 V!11973)) (EmptyCell!3780) )
))
(declare-fun mapValue!13878 () ValueCell!3780)

(declare-datatypes ((array!20017 0))(
  ( (array!20018 (arr!9499 (Array (_ BitVec 32) ValueCell!3780)) (size!9851 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20017)

(declare-fun mapRest!13878 () (Array (_ BitVec 32) ValueCell!3780))

(declare-fun mapKey!13878 () (_ BitVec 32))

(assert (=> mapNonEmpty!13878 (= (arr!9499 _values!1208) (store mapRest!13878 mapKey!13878 mapValue!13878))))

(declare-fun res!199781 () Bool)

(assert (=> start!35802 (=> (not res!199781) (not e!220121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35802 (= res!199781 (validMask!0 mask!1842))))

(assert (=> start!35802 e!220121))

(assert (=> start!35802 true))

(declare-fun e!220120 () Bool)

(declare-fun array_inv!6990 (array!20017) Bool)

(assert (=> start!35802 (and (array_inv!6990 _values!1208) e!220120)))

(declare-fun array_inv!6991 (array!20015) Bool)

(assert (=> start!35802 (array_inv!6991 _keys!1456)))

(declare-fun b!359332 () Bool)

(declare-fun tp_is_empty!8247 () Bool)

(assert (=> b!359332 (= e!220117 tp_is_empty!8247)))

(declare-fun b!359333 () Bool)

(declare-fun e!220118 () Bool)

(assert (=> b!359333 (= e!220118 tp_is_empty!8247)))

(declare-fun mapIsEmpty!13878 () Bool)

(assert (=> mapIsEmpty!13878 mapRes!13878))

(declare-fun b!359334 () Bool)

(declare-fun res!199783 () Bool)

(assert (=> b!359334 (=> (not res!199783) (not e!220121))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!359334 (= res!199783 (and (= (size!9851 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9850 _keys!1456) (size!9851 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359335 () Bool)

(assert (=> b!359335 (= e!220120 (and e!220118 mapRes!13878))))

(declare-fun condMapEmpty!13878 () Bool)

(declare-fun mapDefault!13878 () ValueCell!3780)

(assert (=> b!359335 (= condMapEmpty!13878 (= (arr!9499 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3780)) mapDefault!13878)))))

(declare-fun b!359336 () Bool)

(assert (=> b!359336 (= e!220121 false)))

(declare-fun lt!166318 () Bool)

(declare-datatypes ((List!5494 0))(
  ( (Nil!5491) (Cons!5490 (h!6346 (_ BitVec 64)) (t!10652 List!5494)) )
))
(declare-fun arrayNoDuplicates!0 (array!20015 (_ BitVec 32) List!5494) Bool)

(assert (=> b!359336 (= lt!166318 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5491))))

(assert (= (and start!35802 res!199781) b!359334))

(assert (= (and b!359334 res!199783) b!359331))

(assert (= (and b!359331 res!199782) b!359336))

(assert (= (and b!359335 condMapEmpty!13878) mapIsEmpty!13878))

(assert (= (and b!359335 (not condMapEmpty!13878)) mapNonEmpty!13878))

(get-info :version)

(assert (= (and mapNonEmpty!13878 ((_ is ValueCellFull!3780) mapValue!13878)) b!359332))

(assert (= (and b!359335 ((_ is ValueCellFull!3780) mapDefault!13878)) b!359333))

(assert (= start!35802 b!359335))

(declare-fun m!356847 () Bool)

(assert (=> b!359331 m!356847))

(declare-fun m!356849 () Bool)

(assert (=> mapNonEmpty!13878 m!356849))

(declare-fun m!356851 () Bool)

(assert (=> start!35802 m!356851))

(declare-fun m!356853 () Bool)

(assert (=> start!35802 m!356853))

(declare-fun m!356855 () Bool)

(assert (=> start!35802 m!356855))

(declare-fun m!356857 () Bool)

(assert (=> b!359336 m!356857))

(check-sat (not mapNonEmpty!13878) tp_is_empty!8247 (not start!35802) (not b!359336) (not b!359331))
(check-sat)
