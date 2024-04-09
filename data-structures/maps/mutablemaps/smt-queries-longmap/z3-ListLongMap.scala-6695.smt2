; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84172 () Bool)

(assert start!84172)

(declare-fun b_free!19845 () Bool)

(declare-fun b_next!19845 () Bool)

(assert (=> start!84172 (= b_free!19845 (not b_next!19845))))

(declare-fun tp!69140 () Bool)

(declare-fun b_and!31789 () Bool)

(assert (=> start!84172 (= tp!69140 b_and!31789)))

(declare-fun b!983685 () Bool)

(declare-fun res!658334 () Bool)

(declare-fun e!554601 () Bool)

(assert (=> b!983685 (=> (not res!658334) (not e!554601))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61865 0))(
  ( (array!61866 (arr!29786 (Array (_ BitVec 32) (_ BitVec 64))) (size!30266 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61865)

(assert (=> b!983685 (= res!658334 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30266 _keys!1544))))))

(declare-fun mapNonEmpty!36449 () Bool)

(declare-fun mapRes!36449 () Bool)

(declare-fun tp!69139 () Bool)

(declare-fun e!554599 () Bool)

(assert (=> mapNonEmpty!36449 (= mapRes!36449 (and tp!69139 e!554599))))

(declare-fun mapKey!36449 () (_ BitVec 32))

(declare-datatypes ((V!35579 0))(
  ( (V!35580 (val!11524 Int)) )
))
(declare-datatypes ((ValueCell!10992 0))(
  ( (ValueCellFull!10992 (v!14086 V!35579)) (EmptyCell!10992) )
))
(declare-datatypes ((array!61867 0))(
  ( (array!61868 (arr!29787 (Array (_ BitVec 32) ValueCell!10992)) (size!30267 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61867)

(declare-fun mapRest!36449 () (Array (_ BitVec 32) ValueCell!10992))

(declare-fun mapValue!36449 () ValueCell!10992)

(assert (=> mapNonEmpty!36449 (= (arr!29787 _values!1278) (store mapRest!36449 mapKey!36449 mapValue!36449))))

(declare-fun mapIsEmpty!36449 () Bool)

(assert (=> mapIsEmpty!36449 mapRes!36449))

(declare-fun res!658332 () Bool)

(assert (=> start!84172 (=> (not res!658332) (not e!554601))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84172 (= res!658332 (validMask!0 mask!1948))))

(assert (=> start!84172 e!554601))

(assert (=> start!84172 true))

(declare-fun tp_is_empty!22947 () Bool)

(assert (=> start!84172 tp_is_empty!22947))

(declare-fun e!554602 () Bool)

(declare-fun array_inv!22897 (array!61867) Bool)

(assert (=> start!84172 (and (array_inv!22897 _values!1278) e!554602)))

(assert (=> start!84172 tp!69140))

(declare-fun array_inv!22898 (array!61865) Bool)

(assert (=> start!84172 (array_inv!22898 _keys!1544)))

(declare-fun b!983686 () Bool)

(assert (=> b!983686 (= e!554599 tp_is_empty!22947)))

(declare-fun b!983687 () Bool)

(declare-fun res!658335 () Bool)

(assert (=> b!983687 (=> (not res!658335) (not e!554601))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983687 (= res!658335 (and (= (size!30267 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30266 _keys!1544) (size!30267 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983688 () Bool)

(declare-fun e!554603 () Bool)

(assert (=> b!983688 (= e!554602 (and e!554603 mapRes!36449))))

(declare-fun condMapEmpty!36449 () Bool)

(declare-fun mapDefault!36449 () ValueCell!10992)

(assert (=> b!983688 (= condMapEmpty!36449 (= (arr!29787 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10992)) mapDefault!36449)))))

(declare-fun b!983689 () Bool)

(declare-fun res!658331 () Bool)

(assert (=> b!983689 (=> (not res!658331) (not e!554601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61865 (_ BitVec 32)) Bool)

(assert (=> b!983689 (= res!658331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!983690 () Bool)

(declare-fun res!658329 () Bool)

(assert (=> b!983690 (=> (not res!658329) (not e!554601))))

(assert (=> b!983690 (= res!658329 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!983691 () Bool)

(declare-fun res!658330 () Bool)

(assert (=> b!983691 (=> (not res!658330) (not e!554601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!983691 (= res!658330 (validKeyInArray!0 (select (arr!29786 _keys!1544) from!1932)))))

(declare-fun b!983692 () Bool)

(assert (=> b!983692 (= e!554603 tp_is_empty!22947)))

(declare-fun b!983693 () Bool)

(assert (=> b!983693 (= e!554601 false)))

(declare-fun minValue!1220 () V!35579)

(declare-fun zeroValue!1220 () V!35579)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!14834 0))(
  ( (tuple2!14835 (_1!7427 (_ BitVec 64)) (_2!7427 V!35579)) )
))
(declare-datatypes ((List!20755 0))(
  ( (Nil!20752) (Cons!20751 (h!21913 tuple2!14834) (t!29554 List!20755)) )
))
(declare-datatypes ((ListLongMap!13545 0))(
  ( (ListLongMap!13546 (toList!6788 List!20755)) )
))
(declare-fun lt!436513 () ListLongMap!13545)

(declare-fun getCurrentListMapNoExtraKeys!3447 (array!61865 array!61867 (_ BitVec 32) (_ BitVec 32) V!35579 V!35579 (_ BitVec 32) Int) ListLongMap!13545)

(assert (=> b!983693 (= lt!436513 (getCurrentListMapNoExtraKeys!3447 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!983694 () Bool)

(declare-fun res!658333 () Bool)

(assert (=> b!983694 (=> (not res!658333) (not e!554601))))

(declare-datatypes ((List!20756 0))(
  ( (Nil!20753) (Cons!20752 (h!21914 (_ BitVec 64)) (t!29555 List!20756)) )
))
(declare-fun arrayNoDuplicates!0 (array!61865 (_ BitVec 32) List!20756) Bool)

(assert (=> b!983694 (= res!658333 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20753))))

(assert (= (and start!84172 res!658332) b!983687))

(assert (= (and b!983687 res!658335) b!983689))

(assert (= (and b!983689 res!658331) b!983694))

(assert (= (and b!983694 res!658333) b!983685))

(assert (= (and b!983685 res!658334) b!983691))

(assert (= (and b!983691 res!658330) b!983690))

(assert (= (and b!983690 res!658329) b!983693))

(assert (= (and b!983688 condMapEmpty!36449) mapIsEmpty!36449))

(assert (= (and b!983688 (not condMapEmpty!36449)) mapNonEmpty!36449))

(get-info :version)

(assert (= (and mapNonEmpty!36449 ((_ is ValueCellFull!10992) mapValue!36449)) b!983686))

(assert (= (and b!983688 ((_ is ValueCellFull!10992) mapDefault!36449)) b!983692))

(assert (= start!84172 b!983688))

(declare-fun m!910919 () Bool)

(assert (=> b!983693 m!910919))

(declare-fun m!910921 () Bool)

(assert (=> b!983694 m!910921))

(declare-fun m!910923 () Bool)

(assert (=> mapNonEmpty!36449 m!910923))

(declare-fun m!910925 () Bool)

(assert (=> b!983689 m!910925))

(declare-fun m!910927 () Bool)

(assert (=> b!983691 m!910927))

(assert (=> b!983691 m!910927))

(declare-fun m!910929 () Bool)

(assert (=> b!983691 m!910929))

(declare-fun m!910931 () Bool)

(assert (=> start!84172 m!910931))

(declare-fun m!910933 () Bool)

(assert (=> start!84172 m!910933))

(declare-fun m!910935 () Bool)

(assert (=> start!84172 m!910935))

(check-sat (not b_next!19845) (not b!983694) (not mapNonEmpty!36449) b_and!31789 (not b!983689) (not b!983691) tp_is_empty!22947 (not b!983693) (not start!84172))
(check-sat b_and!31789 (not b_next!19845))
