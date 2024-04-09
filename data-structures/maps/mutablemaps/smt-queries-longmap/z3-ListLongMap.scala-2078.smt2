; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35646 () Bool)

(assert start!35646)

(declare-fun b_free!7893 () Bool)

(declare-fun b_next!7893 () Bool)

(assert (=> start!35646 (= b_free!7893 (not b_next!7893))))

(declare-fun tp!27663 () Bool)

(declare-fun b_and!15153 () Bool)

(assert (=> start!35646 (= tp!27663 b_and!15153)))

(declare-fun b!357552 () Bool)

(declare-fun res!198705 () Bool)

(declare-fun e!218910 () Bool)

(assert (=> b!357552 (=> (not res!198705) (not e!218910))))

(declare-datatypes ((array!19715 0))(
  ( (array!19716 (arr!9348 (Array (_ BitVec 32) (_ BitVec 64))) (size!9700 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19715)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19715 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357552 (= res!198705 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!357553 () Bool)

(declare-fun e!218908 () Bool)

(assert (=> b!357553 (= e!218908 true)))

(declare-datatypes ((V!11765 0))(
  ( (V!11766 (val!4090 Int)) )
))
(declare-fun minValue!1150 () V!11765)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun defaultEntry!1216 () Int)

(declare-datatypes ((ValueCell!3702 0))(
  ( (ValueCellFull!3702 (v!6280 V!11765)) (EmptyCell!3702) )
))
(declare-datatypes ((array!19717 0))(
  ( (array!19718 (arr!9349 (Array (_ BitVec 32) ValueCell!3702)) (size!9701 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19717)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11765)

(declare-datatypes ((tuple2!5710 0))(
  ( (tuple2!5711 (_1!2865 (_ BitVec 64)) (_2!2865 V!11765)) )
))
(declare-datatypes ((List!5424 0))(
  ( (Nil!5421) (Cons!5420 (h!6276 tuple2!5710) (t!10582 List!5424)) )
))
(declare-datatypes ((ListLongMap!4637 0))(
  ( (ListLongMap!4638 (toList!2334 List!5424)) )
))
(declare-fun contains!2410 (ListLongMap!4637 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1851 (array!19715 array!19717 (_ BitVec 32) (_ BitVec 32) V!11765 V!11765 (_ BitVec 32) Int) ListLongMap!4637)

(assert (=> b!357553 (contains!2410 (getCurrentListMap!1851 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k0!1077)))

(declare-datatypes ((Unit!11025 0))(
  ( (Unit!11026) )
))
(declare-fun lt!166053 () Unit!11025)

(declare-fun lemmaArrayContainsKeyThenInListMap!344 (array!19715 array!19717 (_ BitVec 32) (_ BitVec 32) V!11765 V!11765 (_ BitVec 64) (_ BitVec 32) Int) Unit!11025)

(assert (=> b!357553 (= lt!166053 (lemmaArrayContainsKeyThenInListMap!344 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun b!357554 () Bool)

(declare-fun res!198711 () Bool)

(assert (=> b!357554 (=> (not res!198711) (not e!218910))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19715 (_ BitVec 32)) Bool)

(assert (=> b!357554 (= res!198711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!357555 () Bool)

(declare-fun res!198709 () Bool)

(assert (=> b!357555 (=> (not res!198709) (not e!218910))))

(declare-datatypes ((List!5425 0))(
  ( (Nil!5422) (Cons!5421 (h!6277 (_ BitVec 64)) (t!10583 List!5425)) )
))
(declare-fun arrayNoDuplicates!0 (array!19715 (_ BitVec 32) List!5425) Bool)

(assert (=> b!357555 (= res!198709 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5422))))

(declare-fun b!357556 () Bool)

(declare-fun res!198708 () Bool)

(assert (=> b!357556 (=> (not res!198708) (not e!218910))))

(assert (=> b!357556 (= res!198708 (not (= (select (arr!9348 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!357557 () Bool)

(declare-fun res!198710 () Bool)

(assert (=> b!357557 (=> (not res!198710) (not e!218910))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357557 (= res!198710 (validKeyInArray!0 k0!1077))))

(declare-fun res!198706 () Bool)

(assert (=> start!35646 (=> (not res!198706) (not e!218910))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35646 (= res!198706 (validMask!0 mask!1842))))

(assert (=> start!35646 e!218910))

(declare-fun tp_is_empty!8091 () Bool)

(assert (=> start!35646 tp_is_empty!8091))

(assert (=> start!35646 true))

(assert (=> start!35646 tp!27663))

(declare-fun array_inv!6874 (array!19715) Bool)

(assert (=> start!35646 (array_inv!6874 _keys!1456)))

(declare-fun e!218907 () Bool)

(declare-fun array_inv!6875 (array!19717) Bool)

(assert (=> start!35646 (and (array_inv!6875 _values!1208) e!218907)))

(declare-fun b!357558 () Bool)

(declare-fun e!218909 () Bool)

(assert (=> b!357558 (= e!218909 tp_is_empty!8091)))

(declare-fun b!357559 () Bool)

(assert (=> b!357559 (= e!218910 (not e!218908))))

(declare-fun res!198704 () Bool)

(assert (=> b!357559 (=> res!198704 e!218908)))

(assert (=> b!357559 (= res!198704 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9700 _keys!1456))))))

(assert (=> b!357559 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun lt!166054 () Unit!11025)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!32 (array!19715 array!19717 (_ BitVec 32) (_ BitVec 32) V!11765 V!11765 (_ BitVec 64) (_ BitVec 32)) Unit!11025)

(assert (=> b!357559 (= lt!166054 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!32 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!357560 () Bool)

(declare-fun mapRes!13644 () Bool)

(assert (=> b!357560 (= e!218907 (and e!218909 mapRes!13644))))

(declare-fun condMapEmpty!13644 () Bool)

(declare-fun mapDefault!13644 () ValueCell!3702)

(assert (=> b!357560 (= condMapEmpty!13644 (= (arr!9349 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3702)) mapDefault!13644)))))

(declare-fun b!357561 () Bool)

(declare-fun e!218912 () Bool)

(assert (=> b!357561 (= e!218912 tp_is_empty!8091)))

(declare-fun b!357562 () Bool)

(declare-fun res!198712 () Bool)

(assert (=> b!357562 (=> (not res!198712) (not e!218910))))

(assert (=> b!357562 (= res!198712 (and (= (size!9701 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9700 _keys!1456) (size!9701 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13644 () Bool)

(declare-fun tp!27662 () Bool)

(assert (=> mapNonEmpty!13644 (= mapRes!13644 (and tp!27662 e!218912))))

(declare-fun mapKey!13644 () (_ BitVec 32))

(declare-fun mapValue!13644 () ValueCell!3702)

(declare-fun mapRest!13644 () (Array (_ BitVec 32) ValueCell!3702))

(assert (=> mapNonEmpty!13644 (= (arr!9349 _values!1208) (store mapRest!13644 mapKey!13644 mapValue!13644))))

(declare-fun b!357563 () Bool)

(declare-fun res!198707 () Bool)

(assert (=> b!357563 (=> (not res!198707) (not e!218910))))

(assert (=> b!357563 (= res!198707 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9700 _keys!1456))))))

(declare-fun mapIsEmpty!13644 () Bool)

(assert (=> mapIsEmpty!13644 mapRes!13644))

(assert (= (and start!35646 res!198706) b!357562))

(assert (= (and b!357562 res!198712) b!357554))

(assert (= (and b!357554 res!198711) b!357555))

(assert (= (and b!357555 res!198709) b!357557))

(assert (= (and b!357557 res!198710) b!357563))

(assert (= (and b!357563 res!198707) b!357552))

(assert (= (and b!357552 res!198705) b!357556))

(assert (= (and b!357556 res!198708) b!357559))

(assert (= (and b!357559 (not res!198704)) b!357553))

(assert (= (and b!357560 condMapEmpty!13644) mapIsEmpty!13644))

(assert (= (and b!357560 (not condMapEmpty!13644)) mapNonEmpty!13644))

(get-info :version)

(assert (= (and mapNonEmpty!13644 ((_ is ValueCellFull!3702) mapValue!13644)) b!357561))

(assert (= (and b!357560 ((_ is ValueCellFull!3702) mapDefault!13644)) b!357558))

(assert (= start!35646 b!357560))

(declare-fun m!355603 () Bool)

(assert (=> b!357554 m!355603))

(declare-fun m!355605 () Bool)

(assert (=> b!357553 m!355605))

(assert (=> b!357553 m!355605))

(declare-fun m!355607 () Bool)

(assert (=> b!357553 m!355607))

(declare-fun m!355609 () Bool)

(assert (=> b!357553 m!355609))

(declare-fun m!355611 () Bool)

(assert (=> b!357557 m!355611))

(declare-fun m!355613 () Bool)

(assert (=> b!357555 m!355613))

(declare-fun m!355615 () Bool)

(assert (=> start!35646 m!355615))

(declare-fun m!355617 () Bool)

(assert (=> start!35646 m!355617))

(declare-fun m!355619 () Bool)

(assert (=> start!35646 m!355619))

(declare-fun m!355621 () Bool)

(assert (=> b!357552 m!355621))

(declare-fun m!355623 () Bool)

(assert (=> b!357556 m!355623))

(declare-fun m!355625 () Bool)

(assert (=> mapNonEmpty!13644 m!355625))

(declare-fun m!355627 () Bool)

(assert (=> b!357559 m!355627))

(declare-fun m!355629 () Bool)

(assert (=> b!357559 m!355629))

(check-sat (not b!357555) (not b_next!7893) (not start!35646) b_and!15153 tp_is_empty!8091 (not b!357552) (not b!357559) (not b!357553) (not b!357554) (not mapNonEmpty!13644) (not b!357557))
(check-sat b_and!15153 (not b_next!7893))
