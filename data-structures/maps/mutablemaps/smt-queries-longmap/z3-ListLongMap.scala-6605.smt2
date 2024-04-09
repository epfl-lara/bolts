; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83544 () Bool)

(assert start!83544)

(declare-fun b_free!19503 () Bool)

(declare-fun b_next!19503 () Bool)

(assert (=> start!83544 (= b_free!19503 (not b_next!19503))))

(declare-fun tp!67798 () Bool)

(declare-fun b_and!31123 () Bool)

(assert (=> start!83544 (= tp!67798 b_and!31123)))

(declare-fun res!653188 () Bool)

(declare-fun e!549836 () Bool)

(assert (=> start!83544 (=> (not res!653188) (not e!549836))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83544 (= res!653188 (validMask!0 mask!2147))))

(assert (=> start!83544 e!549836))

(assert (=> start!83544 true))

(declare-datatypes ((V!34859 0))(
  ( (V!34860 (val!11254 Int)) )
))
(declare-datatypes ((ValueCell!10722 0))(
  ( (ValueCellFull!10722 (v!13813 V!34859)) (EmptyCell!10722) )
))
(declare-datatypes ((array!60829 0))(
  ( (array!60830 (arr!29274 (Array (_ BitVec 32) ValueCell!10722)) (size!29754 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60829)

(declare-fun e!549835 () Bool)

(declare-fun array_inv!22535 (array!60829) Bool)

(assert (=> start!83544 (and (array_inv!22535 _values!1425) e!549835)))

(declare-fun tp_is_empty!22407 () Bool)

(assert (=> start!83544 tp_is_empty!22407))

(assert (=> start!83544 tp!67798))

(declare-datatypes ((array!60831 0))(
  ( (array!60832 (arr!29275 (Array (_ BitVec 32) (_ BitVec 64))) (size!29755 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60831)

(declare-fun array_inv!22536 (array!60831) Bool)

(assert (=> start!83544 (array_inv!22536 _keys!1717)))

(declare-fun b!975556 () Bool)

(declare-fun res!653183 () Bool)

(assert (=> b!975556 (=> (not res!653183) (not e!549836))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!975556 (= res!653183 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29755 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29755 _keys!1717))))))

(declare-fun b!975557 () Bool)

(declare-fun res!653182 () Bool)

(assert (=> b!975557 (=> (not res!653182) (not e!549836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60831 (_ BitVec 32)) Bool)

(assert (=> b!975557 (= res!653182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapIsEmpty!35620 () Bool)

(declare-fun mapRes!35620 () Bool)

(assert (=> mapIsEmpty!35620 mapRes!35620))

(declare-fun b!975558 () Bool)

(declare-fun res!653185 () Bool)

(assert (=> b!975558 (=> (not res!653185) (not e!549836))))

(declare-datatypes ((List!20448 0))(
  ( (Nil!20445) (Cons!20444 (h!21606 (_ BitVec 64)) (t!28933 List!20448)) )
))
(declare-fun arrayNoDuplicates!0 (array!60831 (_ BitVec 32) List!20448) Bool)

(assert (=> b!975558 (= res!653185 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20445))))

(declare-fun mapNonEmpty!35620 () Bool)

(declare-fun tp!67797 () Bool)

(declare-fun e!549833 () Bool)

(assert (=> mapNonEmpty!35620 (= mapRes!35620 (and tp!67797 e!549833))))

(declare-fun mapRest!35620 () (Array (_ BitVec 32) ValueCell!10722))

(declare-fun mapKey!35620 () (_ BitVec 32))

(declare-fun mapValue!35620 () ValueCell!10722)

(assert (=> mapNonEmpty!35620 (= (arr!29274 _values!1425) (store mapRest!35620 mapKey!35620 mapValue!35620))))

(declare-fun b!975559 () Bool)

(declare-fun res!653186 () Bool)

(assert (=> b!975559 (=> (not res!653186) (not e!549836))))

(declare-fun zeroValue!1367 () V!34859)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34859)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14576 0))(
  ( (tuple2!14577 (_1!7298 (_ BitVec 64)) (_2!7298 V!34859)) )
))
(declare-datatypes ((List!20449 0))(
  ( (Nil!20446) (Cons!20445 (h!21607 tuple2!14576) (t!28934 List!20449)) )
))
(declare-datatypes ((ListLongMap!13287 0))(
  ( (ListLongMap!13288 (toList!6659 List!20449)) )
))
(declare-fun contains!5691 (ListLongMap!13287 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3844 (array!60831 array!60829 (_ BitVec 32) (_ BitVec 32) V!34859 V!34859 (_ BitVec 32) Int) ListLongMap!13287)

(assert (=> b!975559 (= res!653186 (contains!5691 (getCurrentListMap!3844 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29275 _keys!1717) i!822)))))

(declare-fun b!975560 () Bool)

(declare-fun e!549837 () Bool)

(assert (=> b!975560 (= e!549835 (and e!549837 mapRes!35620))))

(declare-fun condMapEmpty!35620 () Bool)

(declare-fun mapDefault!35620 () ValueCell!10722)

(assert (=> b!975560 (= condMapEmpty!35620 (= (arr!29274 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10722)) mapDefault!35620)))))

(declare-fun b!975561 () Bool)

(assert (=> b!975561 (= e!549833 tp_is_empty!22407)))

(declare-fun b!975562 () Bool)

(declare-fun res!653184 () Bool)

(assert (=> b!975562 (=> (not res!653184) (not e!549836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975562 (= res!653184 (validKeyInArray!0 (select (arr!29275 _keys!1717) i!822)))))

(declare-fun b!975563 () Bool)

(declare-fun res!653187 () Bool)

(assert (=> b!975563 (=> (not res!653187) (not e!549836))))

(assert (=> b!975563 (= res!653187 (and (= (size!29754 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29755 _keys!1717) (size!29754 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975564 () Bool)

(assert (=> b!975564 (= e!549837 tp_is_empty!22407)))

(declare-fun b!975565 () Bool)

(assert (=> b!975565 (= e!549836 false)))

(declare-fun lt!432835 () ListLongMap!13287)

(assert (=> b!975565 (= lt!432835 (getCurrentListMap!3844 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(assert (= (and start!83544 res!653188) b!975563))

(assert (= (and b!975563 res!653187) b!975557))

(assert (= (and b!975557 res!653182) b!975558))

(assert (= (and b!975558 res!653185) b!975556))

(assert (= (and b!975556 res!653183) b!975562))

(assert (= (and b!975562 res!653184) b!975559))

(assert (= (and b!975559 res!653186) b!975565))

(assert (= (and b!975560 condMapEmpty!35620) mapIsEmpty!35620))

(assert (= (and b!975560 (not condMapEmpty!35620)) mapNonEmpty!35620))

(get-info :version)

(assert (= (and mapNonEmpty!35620 ((_ is ValueCellFull!10722) mapValue!35620)) b!975561))

(assert (= (and b!975560 ((_ is ValueCellFull!10722) mapDefault!35620)) b!975564))

(assert (= start!83544 b!975560))

(declare-fun m!902841 () Bool)

(assert (=> b!975558 m!902841))

(declare-fun m!902843 () Bool)

(assert (=> b!975557 m!902843))

(declare-fun m!902845 () Bool)

(assert (=> start!83544 m!902845))

(declare-fun m!902847 () Bool)

(assert (=> start!83544 m!902847))

(declare-fun m!902849 () Bool)

(assert (=> start!83544 m!902849))

(declare-fun m!902851 () Bool)

(assert (=> b!975562 m!902851))

(assert (=> b!975562 m!902851))

(declare-fun m!902853 () Bool)

(assert (=> b!975562 m!902853))

(declare-fun m!902855 () Bool)

(assert (=> b!975559 m!902855))

(assert (=> b!975559 m!902851))

(assert (=> b!975559 m!902855))

(assert (=> b!975559 m!902851))

(declare-fun m!902857 () Bool)

(assert (=> b!975559 m!902857))

(declare-fun m!902859 () Bool)

(assert (=> b!975565 m!902859))

(declare-fun m!902861 () Bool)

(assert (=> mapNonEmpty!35620 m!902861))

(check-sat (not b!975559) (not b!975562) (not b!975557) b_and!31123 (not b!975558) (not mapNonEmpty!35620) (not b!975565) (not start!83544) (not b_next!19503) tp_is_empty!22407)
(check-sat b_and!31123 (not b_next!19503))
