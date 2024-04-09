; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83328 () Bool)

(assert start!83328)

(declare-fun b_free!19293 () Bool)

(declare-fun b_next!19293 () Bool)

(assert (=> start!83328 (= b_free!19293 (not b_next!19293))))

(declare-fun tp!67158 () Bool)

(declare-fun b_and!30825 () Bool)

(assert (=> start!83328 (= tp!67158 b_and!30825)))

(declare-fun mapNonEmpty!35296 () Bool)

(declare-fun mapRes!35296 () Bool)

(declare-fun tp!67159 () Bool)

(declare-fun e!547986 () Bool)

(assert (=> mapNonEmpty!35296 (= mapRes!35296 (and tp!67159 e!547986))))

(declare-datatypes ((V!34571 0))(
  ( (V!34572 (val!11146 Int)) )
))
(declare-datatypes ((ValueCell!10614 0))(
  ( (ValueCellFull!10614 (v!13705 V!34571)) (EmptyCell!10614) )
))
(declare-fun mapValue!35296 () ValueCell!10614)

(declare-datatypes ((array!60411 0))(
  ( (array!60412 (arr!29065 (Array (_ BitVec 32) ValueCell!10614)) (size!29545 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60411)

(declare-fun mapKey!35296 () (_ BitVec 32))

(declare-fun mapRest!35296 () (Array (_ BitVec 32) ValueCell!10614))

(assert (=> mapNonEmpty!35296 (= (arr!29065 _values!1425) (store mapRest!35296 mapKey!35296 mapValue!35296))))

(declare-fun b!972116 () Bool)

(declare-fun res!650809 () Bool)

(declare-fun e!547988 () Bool)

(assert (=> b!972116 (=> (not res!650809) (not e!547988))))

(declare-datatypes ((array!60413 0))(
  ( (array!60414 (arr!29066 (Array (_ BitVec 32) (_ BitVec 64))) (size!29546 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60413)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972116 (= res!650809 (validKeyInArray!0 (select (arr!29066 _keys!1717) i!822)))))

(declare-fun b!972117 () Bool)

(declare-fun e!547985 () Bool)

(assert (=> b!972117 (= e!547985 (not true))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun lt!431937 () (_ BitVec 64))

(declare-datatypes ((tuple2!14394 0))(
  ( (tuple2!14395 (_1!7207 (_ BitVec 64)) (_2!7207 V!34571)) )
))
(declare-datatypes ((List!20285 0))(
  ( (Nil!20282) (Cons!20281 (h!21443 tuple2!14394) (t!28684 List!20285)) )
))
(declare-datatypes ((ListLongMap!13105 0))(
  ( (ListLongMap!13106 (toList!6568 List!20285)) )
))
(declare-fun lt!431936 () ListLongMap!13105)

(declare-fun zeroValue!1367 () V!34571)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34571)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun +!2846 (ListLongMap!13105 tuple2!14394) ListLongMap!13105)

(declare-fun getCurrentListMap!3753 (array!60413 array!60411 (_ BitVec 32) (_ BitVec 32) V!34571 V!34571 (_ BitVec 32) Int) ListLongMap!13105)

(declare-fun get!15079 (ValueCell!10614 V!34571) V!34571)

(declare-fun dynLambda!1685 (Int (_ BitVec 64)) V!34571)

(assert (=> b!972117 (= lt!431936 (+!2846 (getCurrentListMap!3753 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14395 lt!431937 (get!15079 (select (arr!29065 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1685 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32353 0))(
  ( (Unit!32354) )
))
(declare-fun lt!431938 () Unit!32353)

(declare-fun lemmaListMapRecursiveValidKeyArray!257 (array!60413 array!60411 (_ BitVec 32) (_ BitVec 32) V!34571 V!34571 (_ BitVec 32) Int) Unit!32353)

(assert (=> b!972117 (= lt!431938 (lemmaListMapRecursiveValidKeyArray!257 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972118 () Bool)

(declare-fun res!650805 () Bool)

(assert (=> b!972118 (=> (not res!650805) (not e!547988))))

(declare-datatypes ((List!20286 0))(
  ( (Nil!20283) (Cons!20282 (h!21444 (_ BitVec 64)) (t!28685 List!20286)) )
))
(declare-fun arrayNoDuplicates!0 (array!60413 (_ BitVec 32) List!20286) Bool)

(assert (=> b!972118 (= res!650805 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20283))))

(declare-fun b!972119 () Bool)

(declare-fun tp_is_empty!22191 () Bool)

(assert (=> b!972119 (= e!547986 tp_is_empty!22191)))

(declare-fun b!972120 () Bool)

(declare-fun res!650802 () Bool)

(assert (=> b!972120 (=> (not res!650802) (not e!547988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60413 (_ BitVec 32)) Bool)

(assert (=> b!972120 (= res!650802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!972121 () Bool)

(declare-fun e!547984 () Bool)

(assert (=> b!972121 (= e!547984 tp_is_empty!22191)))

(declare-fun mapIsEmpty!35296 () Bool)

(assert (=> mapIsEmpty!35296 mapRes!35296))

(declare-fun b!972122 () Bool)

(declare-fun res!650807 () Bool)

(assert (=> b!972122 (=> (not res!650807) (not e!547988))))

(assert (=> b!972122 (= res!650807 (and (= (size!29545 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29546 _keys!1717) (size!29545 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!972123 () Bool)

(declare-fun e!547989 () Bool)

(assert (=> b!972123 (= e!547989 (and e!547984 mapRes!35296))))

(declare-fun condMapEmpty!35296 () Bool)

(declare-fun mapDefault!35296 () ValueCell!10614)

(assert (=> b!972123 (= condMapEmpty!35296 (= (arr!29065 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10614)) mapDefault!35296)))))

(declare-fun b!972124 () Bool)

(declare-fun res!650806 () Bool)

(assert (=> b!972124 (=> (not res!650806) (not e!547988))))

(assert (=> b!972124 (= res!650806 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29546 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29546 _keys!1717))))))

(declare-fun res!650803 () Bool)

(assert (=> start!83328 (=> (not res!650803) (not e!547988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83328 (= res!650803 (validMask!0 mask!2147))))

(assert (=> start!83328 e!547988))

(assert (=> start!83328 true))

(declare-fun array_inv!22385 (array!60411) Bool)

(assert (=> start!83328 (and (array_inv!22385 _values!1425) e!547989)))

(assert (=> start!83328 tp_is_empty!22191))

(assert (=> start!83328 tp!67158))

(declare-fun array_inv!22386 (array!60413) Bool)

(assert (=> start!83328 (array_inv!22386 _keys!1717)))

(declare-fun b!972125 () Bool)

(declare-fun res!650808 () Bool)

(assert (=> b!972125 (=> (not res!650808) (not e!547988))))

(declare-fun contains!5616 (ListLongMap!13105 (_ BitVec 64)) Bool)

(assert (=> b!972125 (= res!650808 (contains!5616 (getCurrentListMap!3753 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29066 _keys!1717) i!822)))))

(declare-fun b!972126 () Bool)

(assert (=> b!972126 (= e!547988 e!547985)))

(declare-fun res!650804 () Bool)

(assert (=> b!972126 (=> (not res!650804) (not e!547985))))

(assert (=> b!972126 (= res!650804 (validKeyInArray!0 lt!431937))))

(assert (=> b!972126 (= lt!431937 (select (arr!29066 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!972126 (= lt!431936 (getCurrentListMap!3753 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(assert (= (and start!83328 res!650803) b!972122))

(assert (= (and b!972122 res!650807) b!972120))

(assert (= (and b!972120 res!650802) b!972118))

(assert (= (and b!972118 res!650805) b!972124))

(assert (= (and b!972124 res!650806) b!972116))

(assert (= (and b!972116 res!650809) b!972125))

(assert (= (and b!972125 res!650808) b!972126))

(assert (= (and b!972126 res!650804) b!972117))

(assert (= (and b!972123 condMapEmpty!35296) mapIsEmpty!35296))

(assert (= (and b!972123 (not condMapEmpty!35296)) mapNonEmpty!35296))

(get-info :version)

(assert (= (and mapNonEmpty!35296 ((_ is ValueCellFull!10614) mapValue!35296)) b!972119))

(assert (= (and b!972123 ((_ is ValueCellFull!10614) mapDefault!35296)) b!972121))

(assert (= start!83328 b!972123))

(declare-fun b_lambda!14487 () Bool)

(assert (=> (not b_lambda!14487) (not b!972117)))

(declare-fun t!28683 () Bool)

(declare-fun tb!6249 () Bool)

(assert (=> (and start!83328 (= defaultEntry!1428 defaultEntry!1428) t!28683) tb!6249))

(declare-fun result!12467 () Bool)

(assert (=> tb!6249 (= result!12467 tp_is_empty!22191)))

(assert (=> b!972117 t!28683))

(declare-fun b_and!30827 () Bool)

(assert (= b_and!30825 (and (=> t!28683 result!12467) b_and!30827)))

(declare-fun m!899617 () Bool)

(assert (=> b!972118 m!899617))

(declare-fun m!899619 () Bool)

(assert (=> b!972116 m!899619))

(assert (=> b!972116 m!899619))

(declare-fun m!899621 () Bool)

(assert (=> b!972116 m!899621))

(declare-fun m!899623 () Bool)

(assert (=> b!972117 m!899623))

(declare-fun m!899625 () Bool)

(assert (=> b!972117 m!899625))

(declare-fun m!899627 () Bool)

(assert (=> b!972117 m!899627))

(assert (=> b!972117 m!899623))

(declare-fun m!899629 () Bool)

(assert (=> b!972117 m!899629))

(assert (=> b!972117 m!899627))

(assert (=> b!972117 m!899629))

(declare-fun m!899631 () Bool)

(assert (=> b!972117 m!899631))

(declare-fun m!899633 () Bool)

(assert (=> b!972117 m!899633))

(declare-fun m!899635 () Bool)

(assert (=> b!972125 m!899635))

(assert (=> b!972125 m!899619))

(assert (=> b!972125 m!899635))

(assert (=> b!972125 m!899619))

(declare-fun m!899637 () Bool)

(assert (=> b!972125 m!899637))

(declare-fun m!899639 () Bool)

(assert (=> b!972126 m!899639))

(declare-fun m!899641 () Bool)

(assert (=> b!972126 m!899641))

(declare-fun m!899643 () Bool)

(assert (=> b!972126 m!899643))

(declare-fun m!899645 () Bool)

(assert (=> mapNonEmpty!35296 m!899645))

(declare-fun m!899647 () Bool)

(assert (=> b!972120 m!899647))

(declare-fun m!899649 () Bool)

(assert (=> start!83328 m!899649))

(declare-fun m!899651 () Bool)

(assert (=> start!83328 m!899651))

(declare-fun m!899653 () Bool)

(assert (=> start!83328 m!899653))

(check-sat (not b!972118) (not b!972117) (not b!972126) (not b_lambda!14487) b_and!30827 (not mapNonEmpty!35296) (not b!972125) (not b_next!19293) (not b!972116) (not b!972120) tp_is_empty!22191 (not start!83328))
(check-sat b_and!30827 (not b_next!19293))
