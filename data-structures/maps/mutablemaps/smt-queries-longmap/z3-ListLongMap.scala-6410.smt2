; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82286 () Bool)

(assert start!82286)

(declare-fun b_free!18531 () Bool)

(declare-fun b_next!18531 () Bool)

(assert (=> start!82286 (= b_free!18531 (not b_next!18531))))

(declare-fun tp!64555 () Bool)

(declare-fun b_and!30037 () Bool)

(assert (=> start!82286 (= tp!64555 b_and!30037)))

(declare-fun b!958702 () Bool)

(declare-fun e!540501 () Bool)

(declare-fun e!540500 () Bool)

(declare-fun mapRes!33835 () Bool)

(assert (=> b!958702 (= e!540501 (and e!540500 mapRes!33835))))

(declare-fun condMapEmpty!33835 () Bool)

(declare-datatypes ((V!33299 0))(
  ( (V!33300 (val!10669 Int)) )
))
(declare-datatypes ((ValueCell!10137 0))(
  ( (ValueCellFull!10137 (v!13226 V!33299)) (EmptyCell!10137) )
))
(declare-datatypes ((array!58587 0))(
  ( (array!58588 (arr!28163 (Array (_ BitVec 32) ValueCell!10137)) (size!28643 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58587)

(declare-fun mapDefault!33835 () ValueCell!10137)

(assert (=> b!958702 (= condMapEmpty!33835 (= (arr!28163 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10137)) mapDefault!33835)))))

(declare-fun b!958703 () Bool)

(declare-fun res!641838 () Bool)

(declare-fun e!540502 () Bool)

(assert (=> b!958703 (=> (not res!641838) (not e!540502))))

(declare-datatypes ((array!58589 0))(
  ( (array!58590 (arr!28164 (Array (_ BitVec 32) (_ BitVec 64))) (size!28644 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58589)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!958703 (= res!641838 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28644 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28644 _keys!1668))))))

(declare-fun res!641841 () Bool)

(assert (=> start!82286 (=> (not res!641841) (not e!540502))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82286 (= res!641841 (validMask!0 mask!2088))))

(assert (=> start!82286 e!540502))

(assert (=> start!82286 true))

(declare-fun tp_is_empty!21237 () Bool)

(assert (=> start!82286 tp_is_empty!21237))

(declare-fun array_inv!21781 (array!58589) Bool)

(assert (=> start!82286 (array_inv!21781 _keys!1668)))

(declare-fun array_inv!21782 (array!58587) Bool)

(assert (=> start!82286 (and (array_inv!21782 _values!1386) e!540501)))

(assert (=> start!82286 tp!64555))

(declare-fun b!958704 () Bool)

(declare-fun res!641835 () Bool)

(assert (=> b!958704 (=> (not res!641835) (not e!540502))))

(declare-datatypes ((List!19711 0))(
  ( (Nil!19708) (Cons!19707 (h!20869 (_ BitVec 64)) (t!28082 List!19711)) )
))
(declare-fun arrayNoDuplicates!0 (array!58589 (_ BitVec 32) List!19711) Bool)

(assert (=> b!958704 (= res!641835 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19708))))

(declare-fun b!958705 () Bool)

(declare-fun res!641839 () Bool)

(assert (=> b!958705 (=> (not res!641839) (not e!540502))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!958705 (= res!641839 (and (= (size!28643 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28644 _keys!1668) (size!28643 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!958706 () Bool)

(declare-fun res!641837 () Bool)

(assert (=> b!958706 (=> (not res!641837) (not e!540502))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58589 (_ BitVec 32)) Bool)

(assert (=> b!958706 (= res!641837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!958707 () Bool)

(declare-fun res!641840 () Bool)

(assert (=> b!958707 (=> (not res!641840) (not e!540502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958707 (= res!641840 (validKeyInArray!0 (select (arr!28164 _keys!1668) i!793)))))

(declare-fun b!958708 () Bool)

(declare-fun e!540499 () Bool)

(assert (=> b!958708 (= e!540499 tp_is_empty!21237)))

(declare-fun mapIsEmpty!33835 () Bool)

(assert (=> mapIsEmpty!33835 mapRes!33835))

(declare-fun mapNonEmpty!33835 () Bool)

(declare-fun tp!64554 () Bool)

(assert (=> mapNonEmpty!33835 (= mapRes!33835 (and tp!64554 e!540499))))

(declare-fun mapKey!33835 () (_ BitVec 32))

(declare-fun mapValue!33835 () ValueCell!10137)

(declare-fun mapRest!33835 () (Array (_ BitVec 32) ValueCell!10137))

(assert (=> mapNonEmpty!33835 (= (arr!28163 _values!1386) (store mapRest!33835 mapKey!33835 mapValue!33835))))

(declare-fun b!958709 () Bool)

(assert (=> b!958709 (= e!540500 tp_is_empty!21237)))

(declare-fun b!958710 () Bool)

(assert (=> b!958710 (= e!540502 (not true))))

(declare-fun minValue!1328 () V!33299)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33299)

(declare-datatypes ((tuple2!13846 0))(
  ( (tuple2!13847 (_1!6933 (_ BitVec 64)) (_2!6933 V!33299)) )
))
(declare-datatypes ((List!19712 0))(
  ( (Nil!19709) (Cons!19708 (h!20870 tuple2!13846) (t!28083 List!19712)) )
))
(declare-datatypes ((ListLongMap!12557 0))(
  ( (ListLongMap!12558 (toList!6294 List!19712)) )
))
(declare-fun contains!5347 (ListLongMap!12557 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3479 (array!58589 array!58587 (_ BitVec 32) (_ BitVec 32) V!33299 V!33299 (_ BitVec 32) Int) ListLongMap!12557)

(assert (=> b!958710 (contains!5347 (getCurrentListMap!3479 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28164 _keys!1668) i!793))))

(declare-datatypes ((Unit!32143 0))(
  ( (Unit!32144) )
))
(declare-fun lt!430433 () Unit!32143)

(declare-fun lemmaInListMapFromThenInFromSmaller!1 (array!58589 array!58587 (_ BitVec 32) (_ BitVec 32) V!33299 V!33299 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32143)

(assert (=> b!958710 (= lt!430433 (lemmaInListMapFromThenInFromSmaller!1 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(declare-fun b!958711 () Bool)

(declare-fun res!641836 () Bool)

(assert (=> b!958711 (=> (not res!641836) (not e!540502))))

(assert (=> b!958711 (= res!641836 (contains!5347 (getCurrentListMap!3479 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28164 _keys!1668) i!793)))))

(assert (= (and start!82286 res!641841) b!958705))

(assert (= (and b!958705 res!641839) b!958706))

(assert (= (and b!958706 res!641837) b!958704))

(assert (= (and b!958704 res!641835) b!958703))

(assert (= (and b!958703 res!641838) b!958707))

(assert (= (and b!958707 res!641840) b!958711))

(assert (= (and b!958711 res!641836) b!958710))

(assert (= (and b!958702 condMapEmpty!33835) mapIsEmpty!33835))

(assert (= (and b!958702 (not condMapEmpty!33835)) mapNonEmpty!33835))

(get-info :version)

(assert (= (and mapNonEmpty!33835 ((_ is ValueCellFull!10137) mapValue!33835)) b!958708))

(assert (= (and b!958702 ((_ is ValueCellFull!10137) mapDefault!33835)) b!958709))

(assert (= start!82286 b!958702))

(declare-fun m!889379 () Bool)

(assert (=> start!82286 m!889379))

(declare-fun m!889381 () Bool)

(assert (=> start!82286 m!889381))

(declare-fun m!889383 () Bool)

(assert (=> start!82286 m!889383))

(declare-fun m!889385 () Bool)

(assert (=> b!958704 m!889385))

(declare-fun m!889387 () Bool)

(assert (=> b!958706 m!889387))

(declare-fun m!889389 () Bool)

(assert (=> b!958710 m!889389))

(declare-fun m!889391 () Bool)

(assert (=> b!958710 m!889391))

(assert (=> b!958710 m!889389))

(assert (=> b!958710 m!889391))

(declare-fun m!889393 () Bool)

(assert (=> b!958710 m!889393))

(declare-fun m!889395 () Bool)

(assert (=> b!958710 m!889395))

(declare-fun m!889397 () Bool)

(assert (=> b!958711 m!889397))

(assert (=> b!958711 m!889391))

(assert (=> b!958711 m!889397))

(assert (=> b!958711 m!889391))

(declare-fun m!889399 () Bool)

(assert (=> b!958711 m!889399))

(assert (=> b!958707 m!889391))

(assert (=> b!958707 m!889391))

(declare-fun m!889401 () Bool)

(assert (=> b!958707 m!889401))

(declare-fun m!889403 () Bool)

(assert (=> mapNonEmpty!33835 m!889403))

(check-sat tp_is_empty!21237 (not b!958710) b_and!30037 (not b_next!18531) (not mapNonEmpty!33835) (not start!82286) (not b!958707) (not b!958704) (not b!958706) (not b!958711))
(check-sat b_and!30037 (not b_next!18531))
