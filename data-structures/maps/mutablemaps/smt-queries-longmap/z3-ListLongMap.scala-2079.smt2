; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35652 () Bool)

(assert start!35652)

(declare-fun b_free!7899 () Bool)

(declare-fun b_next!7899 () Bool)

(assert (=> start!35652 (= b_free!7899 (not b_next!7899))))

(declare-fun tp!27681 () Bool)

(declare-fun b_and!15159 () Bool)

(assert (=> start!35652 (= tp!27681 b_and!15159)))

(declare-fun b!357660 () Bool)

(declare-fun e!218966 () Bool)

(declare-fun tp_is_empty!8097 () Bool)

(assert (=> b!357660 (= e!218966 tp_is_empty!8097)))

(declare-fun b!357661 () Bool)

(declare-fun res!198787 () Bool)

(declare-fun e!218961 () Bool)

(assert (=> b!357661 (=> (not res!198787) (not e!218961))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357661 (= res!198787 (validKeyInArray!0 k0!1077))))

(declare-fun b!357662 () Bool)

(declare-fun e!218963 () Bool)

(declare-fun mapRes!13653 () Bool)

(assert (=> b!357662 (= e!218963 (and e!218966 mapRes!13653))))

(declare-fun condMapEmpty!13653 () Bool)

(declare-datatypes ((V!11773 0))(
  ( (V!11774 (val!4093 Int)) )
))
(declare-datatypes ((ValueCell!3705 0))(
  ( (ValueCellFull!3705 (v!6283 V!11773)) (EmptyCell!3705) )
))
(declare-datatypes ((array!19727 0))(
  ( (array!19728 (arr!9354 (Array (_ BitVec 32) ValueCell!3705)) (size!9706 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19727)

(declare-fun mapDefault!13653 () ValueCell!3705)

(assert (=> b!357662 (= condMapEmpty!13653 (= (arr!9354 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3705)) mapDefault!13653)))))

(declare-fun b!357663 () Bool)

(declare-fun res!198792 () Bool)

(assert (=> b!357663 (=> (not res!198792) (not e!218961))))

(declare-datatypes ((array!19729 0))(
  ( (array!19730 (arr!9355 (Array (_ BitVec 32) (_ BitVec 64))) (size!9707 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19729)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!19729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357663 (= res!198792 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!357664 () Bool)

(declare-fun e!218962 () Bool)

(assert (=> b!357664 (= e!218962 true)))

(declare-fun minValue!1150 () V!11773)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun defaultEntry!1216 () Int)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11773)

(declare-datatypes ((tuple2!5712 0))(
  ( (tuple2!5713 (_1!2866 (_ BitVec 64)) (_2!2866 V!11773)) )
))
(declare-datatypes ((List!5427 0))(
  ( (Nil!5424) (Cons!5423 (h!6279 tuple2!5712) (t!10585 List!5427)) )
))
(declare-datatypes ((ListLongMap!4639 0))(
  ( (ListLongMap!4640 (toList!2335 List!5427)) )
))
(declare-fun contains!2411 (ListLongMap!4639 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1852 (array!19729 array!19727 (_ BitVec 32) (_ BitVec 32) V!11773 V!11773 (_ BitVec 32) Int) ListLongMap!4639)

(assert (=> b!357664 (contains!2411 (getCurrentListMap!1852 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k0!1077)))

(declare-datatypes ((Unit!11029 0))(
  ( (Unit!11030) )
))
(declare-fun lt!166072 () Unit!11029)

(declare-fun lemmaArrayContainsKeyThenInListMap!345 (array!19729 array!19727 (_ BitVec 32) (_ BitVec 32) V!11773 V!11773 (_ BitVec 64) (_ BitVec 32) Int) Unit!11029)

(assert (=> b!357664 (= lt!166072 (lemmaArrayContainsKeyThenInListMap!345 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun res!198789 () Bool)

(assert (=> start!35652 (=> (not res!198789) (not e!218961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35652 (= res!198789 (validMask!0 mask!1842))))

(assert (=> start!35652 e!218961))

(assert (=> start!35652 tp_is_empty!8097))

(assert (=> start!35652 true))

(assert (=> start!35652 tp!27681))

(declare-fun array_inv!6878 (array!19729) Bool)

(assert (=> start!35652 (array_inv!6878 _keys!1456)))

(declare-fun array_inv!6879 (array!19727) Bool)

(assert (=> start!35652 (and (array_inv!6879 _values!1208) e!218963)))

(declare-fun mapNonEmpty!13653 () Bool)

(declare-fun tp!27680 () Bool)

(declare-fun e!218964 () Bool)

(assert (=> mapNonEmpty!13653 (= mapRes!13653 (and tp!27680 e!218964))))

(declare-fun mapKey!13653 () (_ BitVec 32))

(declare-fun mapRest!13653 () (Array (_ BitVec 32) ValueCell!3705))

(declare-fun mapValue!13653 () ValueCell!3705)

(assert (=> mapNonEmpty!13653 (= (arr!9354 _values!1208) (store mapRest!13653 mapKey!13653 mapValue!13653))))

(declare-fun b!357665 () Bool)

(declare-fun res!198788 () Bool)

(assert (=> b!357665 (=> (not res!198788) (not e!218961))))

(assert (=> b!357665 (= res!198788 (and (= (size!9706 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9707 _keys!1456) (size!9706 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!357666 () Bool)

(declare-fun res!198786 () Bool)

(assert (=> b!357666 (=> (not res!198786) (not e!218961))))

(assert (=> b!357666 (= res!198786 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9707 _keys!1456))))))

(declare-fun b!357667 () Bool)

(declare-fun res!198785 () Bool)

(assert (=> b!357667 (=> (not res!198785) (not e!218961))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19729 (_ BitVec 32)) Bool)

(assert (=> b!357667 (= res!198785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!357668 () Bool)

(assert (=> b!357668 (= e!218964 tp_is_empty!8097)))

(declare-fun b!357669 () Bool)

(declare-fun res!198793 () Bool)

(assert (=> b!357669 (=> (not res!198793) (not e!218961))))

(assert (=> b!357669 (= res!198793 (not (= (select (arr!9355 _keys!1456) from!1805) k0!1077)))))

(declare-fun mapIsEmpty!13653 () Bool)

(assert (=> mapIsEmpty!13653 mapRes!13653))

(declare-fun b!357670 () Bool)

(declare-fun res!198791 () Bool)

(assert (=> b!357670 (=> (not res!198791) (not e!218961))))

(declare-datatypes ((List!5428 0))(
  ( (Nil!5425) (Cons!5424 (h!6280 (_ BitVec 64)) (t!10586 List!5428)) )
))
(declare-fun arrayNoDuplicates!0 (array!19729 (_ BitVec 32) List!5428) Bool)

(assert (=> b!357670 (= res!198791 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5425))))

(declare-fun b!357671 () Bool)

(assert (=> b!357671 (= e!218961 (not e!218962))))

(declare-fun res!198790 () Bool)

(assert (=> b!357671 (=> res!198790 e!218962)))

(assert (=> b!357671 (= res!198790 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9707 _keys!1456))))))

(assert (=> b!357671 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun lt!166071 () Unit!11029)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!34 (array!19729 array!19727 (_ BitVec 32) (_ BitVec 32) V!11773 V!11773 (_ BitVec 64) (_ BitVec 32)) Unit!11029)

(assert (=> b!357671 (= lt!166071 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!34 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(assert (= (and start!35652 res!198789) b!357665))

(assert (= (and b!357665 res!198788) b!357667))

(assert (= (and b!357667 res!198785) b!357670))

(assert (= (and b!357670 res!198791) b!357661))

(assert (= (and b!357661 res!198787) b!357666))

(assert (= (and b!357666 res!198786) b!357663))

(assert (= (and b!357663 res!198792) b!357669))

(assert (= (and b!357669 res!198793) b!357671))

(assert (= (and b!357671 (not res!198790)) b!357664))

(assert (= (and b!357662 condMapEmpty!13653) mapIsEmpty!13653))

(assert (= (and b!357662 (not condMapEmpty!13653)) mapNonEmpty!13653))

(get-info :version)

(assert (= (and mapNonEmpty!13653 ((_ is ValueCellFull!3705) mapValue!13653)) b!357668))

(assert (= (and b!357662 ((_ is ValueCellFull!3705) mapDefault!13653)) b!357660))

(assert (= start!35652 b!357662))

(declare-fun m!355687 () Bool)

(assert (=> b!357667 m!355687))

(declare-fun m!355689 () Bool)

(assert (=> b!357663 m!355689))

(declare-fun m!355691 () Bool)

(assert (=> mapNonEmpty!13653 m!355691))

(declare-fun m!355693 () Bool)

(assert (=> b!357669 m!355693))

(declare-fun m!355695 () Bool)

(assert (=> b!357661 m!355695))

(declare-fun m!355697 () Bool)

(assert (=> b!357671 m!355697))

(declare-fun m!355699 () Bool)

(assert (=> b!357671 m!355699))

(declare-fun m!355701 () Bool)

(assert (=> start!35652 m!355701))

(declare-fun m!355703 () Bool)

(assert (=> start!35652 m!355703))

(declare-fun m!355705 () Bool)

(assert (=> start!35652 m!355705))

(declare-fun m!355707 () Bool)

(assert (=> b!357670 m!355707))

(declare-fun m!355709 () Bool)

(assert (=> b!357664 m!355709))

(assert (=> b!357664 m!355709))

(declare-fun m!355711 () Bool)

(assert (=> b!357664 m!355711))

(declare-fun m!355713 () Bool)

(assert (=> b!357664 m!355713))

(check-sat (not mapNonEmpty!13653) (not b!357661) b_and!15159 (not b_next!7899) (not start!35652) (not b!357667) (not b!357670) (not b!357664) tp_is_empty!8097 (not b!357663) (not b!357671))
(check-sat b_and!15159 (not b_next!7899))
