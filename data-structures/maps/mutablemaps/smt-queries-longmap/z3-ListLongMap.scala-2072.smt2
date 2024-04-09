; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35610 () Bool)

(assert start!35610)

(declare-fun b!356917 () Bool)

(declare-fun res!198234 () Bool)

(declare-fun e!218599 () Bool)

(assert (=> b!356917 (=> (not res!198234) (not e!218599))))

(declare-datatypes ((array!19645 0))(
  ( (array!19646 (arr!9313 (Array (_ BitVec 32) (_ BitVec 64))) (size!9665 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19645)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19645 (_ BitVec 32)) Bool)

(assert (=> b!356917 (= res!198234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!356918 () Bool)

(declare-fun res!198231 () Bool)

(assert (=> b!356918 (=> (not res!198231) (not e!218599))))

(declare-datatypes ((List!5405 0))(
  ( (Nil!5402) (Cons!5401 (h!6257 (_ BitVec 64)) (t!10563 List!5405)) )
))
(declare-fun arrayNoDuplicates!0 (array!19645 (_ BitVec 32) List!5405) Bool)

(assert (=> b!356918 (= res!198231 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5402))))

(declare-fun b!356919 () Bool)

(declare-fun res!198233 () Bool)

(assert (=> b!356919 (=> (not res!198233) (not e!218599))))

(declare-fun from!1805 () (_ BitVec 32))

(assert (=> b!356919 (= res!198233 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9665 _keys!1456))))))

(declare-fun b!356920 () Bool)

(declare-fun res!198232 () Bool)

(assert (=> b!356920 (=> (not res!198232) (not e!218599))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356920 (= res!198232 (validKeyInArray!0 k0!1077))))

(declare-fun mapIsEmpty!13590 () Bool)

(declare-fun mapRes!13590 () Bool)

(assert (=> mapIsEmpty!13590 mapRes!13590))

(declare-fun b!356921 () Bool)

(assert (=> b!356921 (= e!218599 (not true))))

(declare-fun arrayContainsKey!0 (array!19645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356921 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!11717 0))(
  ( (V!11718 (val!4072 Int)) )
))
(declare-fun minValue!1150 () V!11717)

(declare-datatypes ((Unit!10999 0))(
  ( (Unit!11000) )
))
(declare-fun lt!165958 () Unit!10999)

(declare-datatypes ((ValueCell!3684 0))(
  ( (ValueCellFull!3684 (v!6262 V!11717)) (EmptyCell!3684) )
))
(declare-datatypes ((array!19647 0))(
  ( (array!19648 (arr!9314 (Array (_ BitVec 32) ValueCell!3684)) (size!9666 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19647)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11717)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!20 (array!19645 array!19647 (_ BitVec 32) (_ BitVec 32) V!11717 V!11717 (_ BitVec 64) (_ BitVec 32)) Unit!10999)

(assert (=> b!356921 (= lt!165958 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!20 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!356922 () Bool)

(declare-fun res!198236 () Bool)

(assert (=> b!356922 (=> (not res!198236) (not e!218599))))

(assert (=> b!356922 (= res!198236 (and (= (size!9666 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9665 _keys!1456) (size!9666 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!356923 () Bool)

(declare-fun res!198237 () Bool)

(assert (=> b!356923 (=> (not res!198237) (not e!218599))))

(assert (=> b!356923 (= res!198237 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!356924 () Bool)

(declare-fun e!218600 () Bool)

(declare-fun tp_is_empty!8055 () Bool)

(assert (=> b!356924 (= e!218600 tp_is_empty!8055)))

(declare-fun res!198235 () Bool)

(assert (=> start!35610 (=> (not res!198235) (not e!218599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35610 (= res!198235 (validMask!0 mask!1842))))

(assert (=> start!35610 e!218599))

(assert (=> start!35610 tp_is_empty!8055))

(assert (=> start!35610 true))

(declare-fun array_inv!6856 (array!19645) Bool)

(assert (=> start!35610 (array_inv!6856 _keys!1456)))

(declare-fun e!218597 () Bool)

(declare-fun array_inv!6857 (array!19647) Bool)

(assert (=> start!35610 (and (array_inv!6857 _values!1208) e!218597)))

(declare-fun b!356925 () Bool)

(declare-fun e!218596 () Bool)

(assert (=> b!356925 (= e!218596 tp_is_empty!8055)))

(declare-fun b!356926 () Bool)

(assert (=> b!356926 (= e!218597 (and e!218600 mapRes!13590))))

(declare-fun condMapEmpty!13590 () Bool)

(declare-fun mapDefault!13590 () ValueCell!3684)

(assert (=> b!356926 (= condMapEmpty!13590 (= (arr!9314 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3684)) mapDefault!13590)))))

(declare-fun b!356927 () Bool)

(declare-fun res!198238 () Bool)

(assert (=> b!356927 (=> (not res!198238) (not e!218599))))

(assert (=> b!356927 (= res!198238 (not (= (select (arr!9313 _keys!1456) from!1805) k0!1077)))))

(declare-fun mapNonEmpty!13590 () Bool)

(declare-fun tp!27567 () Bool)

(assert (=> mapNonEmpty!13590 (= mapRes!13590 (and tp!27567 e!218596))))

(declare-fun mapValue!13590 () ValueCell!3684)

(declare-fun mapKey!13590 () (_ BitVec 32))

(declare-fun mapRest!13590 () (Array (_ BitVec 32) ValueCell!3684))

(assert (=> mapNonEmpty!13590 (= (arr!9314 _values!1208) (store mapRest!13590 mapKey!13590 mapValue!13590))))

(assert (= (and start!35610 res!198235) b!356922))

(assert (= (and b!356922 res!198236) b!356917))

(assert (= (and b!356917 res!198234) b!356918))

(assert (= (and b!356918 res!198231) b!356920))

(assert (= (and b!356920 res!198232) b!356919))

(assert (= (and b!356919 res!198233) b!356923))

(assert (= (and b!356923 res!198237) b!356927))

(assert (= (and b!356927 res!198238) b!356921))

(assert (= (and b!356926 condMapEmpty!13590) mapIsEmpty!13590))

(assert (= (and b!356926 (not condMapEmpty!13590)) mapNonEmpty!13590))

(get-info :version)

(assert (= (and mapNonEmpty!13590 ((_ is ValueCellFull!3684) mapValue!13590)) b!356925))

(assert (= (and b!356926 ((_ is ValueCellFull!3684) mapDefault!13590)) b!356924))

(assert (= start!35610 b!356926))

(declare-fun m!355129 () Bool)

(assert (=> b!356917 m!355129))

(declare-fun m!355131 () Bool)

(assert (=> mapNonEmpty!13590 m!355131))

(declare-fun m!355133 () Bool)

(assert (=> b!356921 m!355133))

(declare-fun m!355135 () Bool)

(assert (=> b!356921 m!355135))

(declare-fun m!355137 () Bool)

(assert (=> b!356923 m!355137))

(declare-fun m!355139 () Bool)

(assert (=> b!356918 m!355139))

(declare-fun m!355141 () Bool)

(assert (=> b!356920 m!355141))

(declare-fun m!355143 () Bool)

(assert (=> start!35610 m!355143))

(declare-fun m!355145 () Bool)

(assert (=> start!35610 m!355145))

(declare-fun m!355147 () Bool)

(assert (=> start!35610 m!355147))

(declare-fun m!355149 () Bool)

(assert (=> b!356927 m!355149))

(check-sat (not b!356918) (not b!356920) (not start!35610) tp_is_empty!8055 (not b!356921) (not mapNonEmpty!13590) (not b!356923) (not b!356917))
(check-sat)
