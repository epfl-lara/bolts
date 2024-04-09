; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97170 () Bool)

(assert start!97170)

(declare-fun b!1104840 () Bool)

(declare-fun res!737244 () Bool)

(declare-fun e!630660 () Bool)

(assert (=> b!1104840 (=> (not res!737244) (not e!630660))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104840 (= res!737244 (validKeyInArray!0 k0!934))))

(declare-fun b!1104841 () Bool)

(declare-fun e!630658 () Bool)

(declare-fun tp_is_empty!27381 () Bool)

(assert (=> b!1104841 (= e!630658 tp_is_empty!27381)))

(declare-fun b!1104842 () Bool)

(declare-fun res!737243 () Bool)

(declare-fun e!630656 () Bool)

(assert (=> b!1104842 (=> (not res!737243) (not e!630656))))

(declare-datatypes ((array!71636 0))(
  ( (array!71637 (arr!34468 (Array (_ BitVec 32) (_ BitVec 64))) (size!35005 (_ BitVec 32))) )
))
(declare-fun lt!495192 () array!71636)

(declare-datatypes ((List!24186 0))(
  ( (Nil!24183) (Cons!24182 (h!25391 (_ BitVec 64)) (t!34458 List!24186)) )
))
(declare-fun arrayNoDuplicates!0 (array!71636 (_ BitVec 32) List!24186) Bool)

(assert (=> b!1104842 (= res!737243 (arrayNoDuplicates!0 lt!495192 #b00000000000000000000000000000000 Nil!24183))))

(declare-fun b!1104843 () Bool)

(declare-fun res!737251 () Bool)

(assert (=> b!1104843 (=> (not res!737251) (not e!630660))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104843 (= res!737251 (validMask!0 mask!1564))))

(declare-fun b!1104844 () Bool)

(assert (=> b!1104844 (= e!630656 (not true))))

(declare-fun _keys!1208 () array!71636)

(declare-fun arrayContainsKey!0 (array!71636 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1104844 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36187 0))(
  ( (Unit!36188) )
))
(declare-fun lt!495191 () Unit!36187)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71636 (_ BitVec 64) (_ BitVec 32)) Unit!36187)

(assert (=> b!1104844 (= lt!495191 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1104845 () Bool)

(assert (=> b!1104845 (= e!630660 e!630656)))

(declare-fun res!737248 () Bool)

(assert (=> b!1104845 (=> (not res!737248) (not e!630656))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71636 (_ BitVec 32)) Bool)

(assert (=> b!1104845 (= res!737248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495192 mask!1564))))

(assert (=> b!1104845 (= lt!495192 (array!71637 (store (arr!34468 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35005 _keys!1208)))))

(declare-fun b!1104846 () Bool)

(declare-fun res!737249 () Bool)

(assert (=> b!1104846 (=> (not res!737249) (not e!630660))))

(assert (=> b!1104846 (= res!737249 (= (select (arr!34468 _keys!1208) i!673) k0!934))))

(declare-fun b!1104847 () Bool)

(declare-fun res!737250 () Bool)

(assert (=> b!1104847 (=> (not res!737250) (not e!630660))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41635 0))(
  ( (V!41636 (val!13747 Int)) )
))
(declare-datatypes ((ValueCell!12981 0))(
  ( (ValueCellFull!12981 (v!16381 V!41635)) (EmptyCell!12981) )
))
(declare-datatypes ((array!71638 0))(
  ( (array!71639 (arr!34469 (Array (_ BitVec 32) ValueCell!12981)) (size!35006 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71638)

(assert (=> b!1104847 (= res!737250 (and (= (size!35006 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35005 _keys!1208) (size!35006 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1104848 () Bool)

(declare-fun e!630659 () Bool)

(declare-fun mapRes!42886 () Bool)

(assert (=> b!1104848 (= e!630659 (and e!630658 mapRes!42886))))

(declare-fun condMapEmpty!42886 () Bool)

(declare-fun mapDefault!42886 () ValueCell!12981)

(assert (=> b!1104848 (= condMapEmpty!42886 (= (arr!34469 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12981)) mapDefault!42886)))))

(declare-fun b!1104849 () Bool)

(declare-fun res!737246 () Bool)

(assert (=> b!1104849 (=> (not res!737246) (not e!630660))))

(assert (=> b!1104849 (= res!737246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!737242 () Bool)

(assert (=> start!97170 (=> (not res!737242) (not e!630660))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97170 (= res!737242 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35005 _keys!1208))))))

(assert (=> start!97170 e!630660))

(declare-fun array_inv!26396 (array!71636) Bool)

(assert (=> start!97170 (array_inv!26396 _keys!1208)))

(assert (=> start!97170 true))

(declare-fun array_inv!26397 (array!71638) Bool)

(assert (=> start!97170 (and (array_inv!26397 _values!996) e!630659)))

(declare-fun b!1104839 () Bool)

(declare-fun res!737247 () Bool)

(assert (=> b!1104839 (=> (not res!737247) (not e!630660))))

(assert (=> b!1104839 (= res!737247 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35005 _keys!1208))))))

(declare-fun b!1104850 () Bool)

(declare-fun e!630657 () Bool)

(assert (=> b!1104850 (= e!630657 tp_is_empty!27381)))

(declare-fun mapNonEmpty!42886 () Bool)

(declare-fun tp!81807 () Bool)

(assert (=> mapNonEmpty!42886 (= mapRes!42886 (and tp!81807 e!630657))))

(declare-fun mapKey!42886 () (_ BitVec 32))

(declare-fun mapValue!42886 () ValueCell!12981)

(declare-fun mapRest!42886 () (Array (_ BitVec 32) ValueCell!12981))

(assert (=> mapNonEmpty!42886 (= (arr!34469 _values!996) (store mapRest!42886 mapKey!42886 mapValue!42886))))

(declare-fun mapIsEmpty!42886 () Bool)

(assert (=> mapIsEmpty!42886 mapRes!42886))

(declare-fun b!1104851 () Bool)

(declare-fun res!737245 () Bool)

(assert (=> b!1104851 (=> (not res!737245) (not e!630660))))

(assert (=> b!1104851 (= res!737245 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24183))))

(assert (= (and start!97170 res!737242) b!1104843))

(assert (= (and b!1104843 res!737251) b!1104847))

(assert (= (and b!1104847 res!737250) b!1104849))

(assert (= (and b!1104849 res!737246) b!1104851))

(assert (= (and b!1104851 res!737245) b!1104839))

(assert (= (and b!1104839 res!737247) b!1104840))

(assert (= (and b!1104840 res!737244) b!1104846))

(assert (= (and b!1104846 res!737249) b!1104845))

(assert (= (and b!1104845 res!737248) b!1104842))

(assert (= (and b!1104842 res!737243) b!1104844))

(assert (= (and b!1104848 condMapEmpty!42886) mapIsEmpty!42886))

(assert (= (and b!1104848 (not condMapEmpty!42886)) mapNonEmpty!42886))

(get-info :version)

(assert (= (and mapNonEmpty!42886 ((_ is ValueCellFull!12981) mapValue!42886)) b!1104850))

(assert (= (and b!1104848 ((_ is ValueCellFull!12981) mapDefault!42886)) b!1104841))

(assert (= start!97170 b!1104848))

(declare-fun m!1024549 () Bool)

(assert (=> b!1104845 m!1024549))

(declare-fun m!1024551 () Bool)

(assert (=> b!1104845 m!1024551))

(declare-fun m!1024553 () Bool)

(assert (=> mapNonEmpty!42886 m!1024553))

(declare-fun m!1024555 () Bool)

(assert (=> b!1104849 m!1024555))

(declare-fun m!1024557 () Bool)

(assert (=> b!1104844 m!1024557))

(declare-fun m!1024559 () Bool)

(assert (=> b!1104844 m!1024559))

(declare-fun m!1024561 () Bool)

(assert (=> b!1104846 m!1024561))

(declare-fun m!1024563 () Bool)

(assert (=> b!1104843 m!1024563))

(declare-fun m!1024565 () Bool)

(assert (=> b!1104842 m!1024565))

(declare-fun m!1024567 () Bool)

(assert (=> start!97170 m!1024567))

(declare-fun m!1024569 () Bool)

(assert (=> start!97170 m!1024569))

(declare-fun m!1024571 () Bool)

(assert (=> b!1104840 m!1024571))

(declare-fun m!1024573 () Bool)

(assert (=> b!1104851 m!1024573))

(check-sat (not b!1104840) (not start!97170) (not b!1104843) (not b!1104844) (not b!1104851) (not b!1104845) tp_is_empty!27381 (not b!1104842) (not mapNonEmpty!42886) (not b!1104849))
(check-sat)
