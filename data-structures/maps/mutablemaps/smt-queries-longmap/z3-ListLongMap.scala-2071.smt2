; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35604 () Bool)

(assert start!35604)

(declare-fun b!356818 () Bool)

(declare-fun res!198162 () Bool)

(declare-fun e!218554 () Bool)

(assert (=> b!356818 (=> (not res!198162) (not e!218554))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356818 (= res!198162 (validKeyInArray!0 k0!1077))))

(declare-fun b!356819 () Bool)

(declare-fun res!198164 () Bool)

(assert (=> b!356819 (=> (not res!198164) (not e!218554))))

(declare-datatypes ((array!19633 0))(
  ( (array!19634 (arr!9307 (Array (_ BitVec 32) (_ BitVec 64))) (size!9659 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19633)

(declare-datatypes ((List!5403 0))(
  ( (Nil!5400) (Cons!5399 (h!6255 (_ BitVec 64)) (t!10561 List!5403)) )
))
(declare-fun arrayNoDuplicates!0 (array!19633 (_ BitVec 32) List!5403) Bool)

(assert (=> b!356819 (= res!198164 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5400))))

(declare-fun b!356820 () Bool)

(declare-fun res!198166 () Bool)

(assert (=> b!356820 (=> (not res!198166) (not e!218554))))

(declare-fun from!1805 () (_ BitVec 32))

(assert (=> b!356820 (= res!198166 (not (= (select (arr!9307 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!356821 () Bool)

(declare-fun res!198159 () Bool)

(assert (=> b!356821 (=> (not res!198159) (not e!218554))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!11709 0))(
  ( (V!11710 (val!4069 Int)) )
))
(declare-datatypes ((ValueCell!3681 0))(
  ( (ValueCellFull!3681 (v!6259 V!11709)) (EmptyCell!3681) )
))
(declare-datatypes ((array!19635 0))(
  ( (array!19636 (arr!9308 (Array (_ BitVec 32) ValueCell!3681)) (size!9660 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19635)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!356821 (= res!198159 (and (= (size!9660 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9659 _keys!1456) (size!9660 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13581 () Bool)

(declare-fun mapRes!13581 () Bool)

(declare-fun tp!27558 () Bool)

(declare-fun e!218553 () Bool)

(assert (=> mapNonEmpty!13581 (= mapRes!13581 (and tp!27558 e!218553))))

(declare-fun mapKey!13581 () (_ BitVec 32))

(declare-fun mapValue!13581 () ValueCell!3681)

(declare-fun mapRest!13581 () (Array (_ BitVec 32) ValueCell!3681))

(assert (=> mapNonEmpty!13581 (= (arr!9308 _values!1208) (store mapRest!13581 mapKey!13581 mapValue!13581))))

(declare-fun b!356822 () Bool)

(declare-fun res!198163 () Bool)

(assert (=> b!356822 (=> (not res!198163) (not e!218554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19633 (_ BitVec 32)) Bool)

(assert (=> b!356822 (= res!198163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!356823 () Bool)

(declare-fun tp_is_empty!8049 () Bool)

(assert (=> b!356823 (= e!218553 tp_is_empty!8049)))

(declare-fun b!356824 () Bool)

(declare-fun e!218555 () Bool)

(declare-fun e!218552 () Bool)

(assert (=> b!356824 (= e!218555 (and e!218552 mapRes!13581))))

(declare-fun condMapEmpty!13581 () Bool)

(declare-fun mapDefault!13581 () ValueCell!3681)

(assert (=> b!356824 (= condMapEmpty!13581 (= (arr!9308 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3681)) mapDefault!13581)))))

(declare-fun b!356825 () Bool)

(declare-fun res!198161 () Bool)

(assert (=> b!356825 (=> (not res!198161) (not e!218554))))

(declare-fun arrayContainsKey!0 (array!19633 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356825 (= res!198161 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun mapIsEmpty!13581 () Bool)

(assert (=> mapIsEmpty!13581 mapRes!13581))

(declare-fun b!356827 () Bool)

(declare-fun res!198165 () Bool)

(assert (=> b!356827 (=> (not res!198165) (not e!218554))))

(assert (=> b!356827 (= res!198165 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9659 _keys!1456))))))

(declare-fun b!356828 () Bool)

(assert (=> b!356828 (= e!218552 tp_is_empty!8049)))

(declare-fun res!198160 () Bool)

(assert (=> start!35604 (=> (not res!198160) (not e!218554))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35604 (= res!198160 (validMask!0 mask!1842))))

(assert (=> start!35604 e!218554))

(assert (=> start!35604 tp_is_empty!8049))

(assert (=> start!35604 true))

(declare-fun array_inv!6852 (array!19633) Bool)

(assert (=> start!35604 (array_inv!6852 _keys!1456)))

(declare-fun array_inv!6853 (array!19635) Bool)

(assert (=> start!35604 (and (array_inv!6853 _values!1208) e!218555)))

(declare-fun b!356826 () Bool)

(assert (=> b!356826 (= e!218554 (not true))))

(assert (=> b!356826 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!11709)

(declare-datatypes ((Unit!10995 0))(
  ( (Unit!10996) )
))
(declare-fun lt!165949 () Unit!10995)

(declare-fun zeroValue!1150 () V!11709)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!18 (array!19633 array!19635 (_ BitVec 32) (_ BitVec 32) V!11709 V!11709 (_ BitVec 64) (_ BitVec 32)) Unit!10995)

(assert (=> b!356826 (= lt!165949 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!18 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(assert (= (and start!35604 res!198160) b!356821))

(assert (= (and b!356821 res!198159) b!356822))

(assert (= (and b!356822 res!198163) b!356819))

(assert (= (and b!356819 res!198164) b!356818))

(assert (= (and b!356818 res!198162) b!356827))

(assert (= (and b!356827 res!198165) b!356825))

(assert (= (and b!356825 res!198161) b!356820))

(assert (= (and b!356820 res!198166) b!356826))

(assert (= (and b!356824 condMapEmpty!13581) mapIsEmpty!13581))

(assert (= (and b!356824 (not condMapEmpty!13581)) mapNonEmpty!13581))

(get-info :version)

(assert (= (and mapNonEmpty!13581 ((_ is ValueCellFull!3681) mapValue!13581)) b!356823))

(assert (= (and b!356824 ((_ is ValueCellFull!3681) mapDefault!13581)) b!356828))

(assert (= start!35604 b!356824))

(declare-fun m!355063 () Bool)

(assert (=> b!356822 m!355063))

(declare-fun m!355065 () Bool)

(assert (=> start!35604 m!355065))

(declare-fun m!355067 () Bool)

(assert (=> start!35604 m!355067))

(declare-fun m!355069 () Bool)

(assert (=> start!35604 m!355069))

(declare-fun m!355071 () Bool)

(assert (=> b!356820 m!355071))

(declare-fun m!355073 () Bool)

(assert (=> b!356825 m!355073))

(declare-fun m!355075 () Bool)

(assert (=> b!356819 m!355075))

(declare-fun m!355077 () Bool)

(assert (=> mapNonEmpty!13581 m!355077))

(declare-fun m!355079 () Bool)

(assert (=> b!356818 m!355079))

(declare-fun m!355081 () Bool)

(assert (=> b!356826 m!355081))

(declare-fun m!355083 () Bool)

(assert (=> b!356826 m!355083))

(check-sat (not b!356822) (not b!356819) (not mapNonEmpty!13581) (not start!35604) (not b!356825) (not b!356818) (not b!356826) tp_is_empty!8049)
(check-sat)
