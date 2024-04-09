; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40882 () Bool)

(assert start!40882)

(declare-fun b_free!10809 () Bool)

(declare-fun b_next!10809 () Bool)

(assert (=> start!40882 (= b_free!10809 (not b_next!10809))))

(declare-fun tp!38253 () Bool)

(declare-fun b_and!18969 () Bool)

(assert (=> start!40882 (= tp!38253 b_and!18969)))

(declare-fun b!453632 () Bool)

(declare-fun res!270238 () Bool)

(declare-fun e!265527 () Bool)

(assert (=> b!453632 (=> (not res!270238) (not e!265527))))

(declare-datatypes ((array!28063 0))(
  ( (array!28064 (arr!13472 (Array (_ BitVec 32) (_ BitVec 64))) (size!13824 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28063)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17301 0))(
  ( (V!17302 (val!6118 Int)) )
))
(declare-datatypes ((ValueCell!5730 0))(
  ( (ValueCellFull!5730 (v!8380 V!17301)) (EmptyCell!5730) )
))
(declare-datatypes ((array!28065 0))(
  ( (array!28066 (arr!13473 (Array (_ BitVec 32) ValueCell!5730)) (size!13825 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28065)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!453632 (= res!270238 (and (= (size!13825 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13824 _keys!709) (size!13825 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!453633 () Bool)

(declare-fun res!270235 () Bool)

(assert (=> b!453633 (=> (not res!270235) (not e!265527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!453633 (= res!270235 (validMask!0 mask!1025))))

(declare-fun b!453634 () Bool)

(declare-fun e!265528 () Bool)

(assert (=> b!453634 (= e!265527 e!265528)))

(declare-fun res!270232 () Bool)

(assert (=> b!453634 (=> (not res!270232) (not e!265528))))

(declare-fun lt!205976 () array!28063)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28063 (_ BitVec 32)) Bool)

(assert (=> b!453634 (= res!270232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205976 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!453634 (= lt!205976 (array!28064 (store (arr!13472 _keys!709) i!563 k0!794) (size!13824 _keys!709)))))

(declare-fun b!453635 () Bool)

(declare-fun e!265531 () Bool)

(declare-fun tp_is_empty!12147 () Bool)

(assert (=> b!453635 (= e!265531 tp_is_empty!12147)))

(declare-fun res!270231 () Bool)

(assert (=> start!40882 (=> (not res!270231) (not e!265527))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40882 (= res!270231 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13824 _keys!709))))))

(assert (=> start!40882 e!265527))

(assert (=> start!40882 tp_is_empty!12147))

(assert (=> start!40882 tp!38253))

(assert (=> start!40882 true))

(declare-fun e!265532 () Bool)

(declare-fun array_inv!9754 (array!28065) Bool)

(assert (=> start!40882 (and (array_inv!9754 _values!549) e!265532)))

(declare-fun array_inv!9755 (array!28063) Bool)

(assert (=> start!40882 (array_inv!9755 _keys!709)))

(declare-fun b!453636 () Bool)

(declare-fun res!270237 () Bool)

(assert (=> b!453636 (=> (not res!270237) (not e!265528))))

(declare-datatypes ((List!8108 0))(
  ( (Nil!8105) (Cons!8104 (h!8960 (_ BitVec 64)) (t!13944 List!8108)) )
))
(declare-fun arrayNoDuplicates!0 (array!28063 (_ BitVec 32) List!8108) Bool)

(assert (=> b!453636 (= res!270237 (arrayNoDuplicates!0 lt!205976 #b00000000000000000000000000000000 Nil!8105))))

(declare-fun b!453637 () Bool)

(declare-fun res!270236 () Bool)

(assert (=> b!453637 (=> (not res!270236) (not e!265527))))

(assert (=> b!453637 (= res!270236 (or (= (select (arr!13472 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13472 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!453638 () Bool)

(declare-fun res!270239 () Bool)

(assert (=> b!453638 (=> (not res!270239) (not e!265527))))

(assert (=> b!453638 (= res!270239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!453639 () Bool)

(declare-fun res!270241 () Bool)

(assert (=> b!453639 (=> (not res!270241) (not e!265528))))

(assert (=> b!453639 (= res!270241 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!19861 () Bool)

(declare-fun mapRes!19861 () Bool)

(assert (=> mapIsEmpty!19861 mapRes!19861))

(declare-fun mapNonEmpty!19861 () Bool)

(declare-fun tp!38254 () Bool)

(declare-fun e!265529 () Bool)

(assert (=> mapNonEmpty!19861 (= mapRes!19861 (and tp!38254 e!265529))))

(declare-fun mapRest!19861 () (Array (_ BitVec 32) ValueCell!5730))

(declare-fun mapKey!19861 () (_ BitVec 32))

(declare-fun mapValue!19861 () ValueCell!5730)

(assert (=> mapNonEmpty!19861 (= (arr!13473 _values!549) (store mapRest!19861 mapKey!19861 mapValue!19861))))

(declare-fun b!453640 () Bool)

(assert (=> b!453640 (= e!265532 (and e!265531 mapRes!19861))))

(declare-fun condMapEmpty!19861 () Bool)

(declare-fun mapDefault!19861 () ValueCell!5730)

(assert (=> b!453640 (= condMapEmpty!19861 (= (arr!13473 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5730)) mapDefault!19861)))))

(declare-fun b!453641 () Bool)

(declare-fun res!270242 () Bool)

(assert (=> b!453641 (=> (not res!270242) (not e!265527))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!453641 (= res!270242 (validKeyInArray!0 k0!794))))

(declare-fun b!453642 () Bool)

(declare-fun res!270233 () Bool)

(assert (=> b!453642 (=> (not res!270233) (not e!265527))))

(declare-fun arrayContainsKey!0 (array!28063 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!453642 (= res!270233 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!453643 () Bool)

(assert (=> b!453643 (= e!265529 tp_is_empty!12147)))

(declare-fun b!453644 () Bool)

(declare-fun res!270240 () Bool)

(assert (=> b!453644 (=> (not res!270240) (not e!265527))))

(assert (=> b!453644 (= res!270240 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13824 _keys!709))))))

(declare-fun b!453645 () Bool)

(declare-fun res!270234 () Bool)

(assert (=> b!453645 (=> (not res!270234) (not e!265527))))

(assert (=> b!453645 (= res!270234 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8105))))

(declare-fun b!453646 () Bool)

(assert (=> b!453646 (= e!265528 (and (not (= from!863 i!563)) (bvslt from!863 i!563) (or (bvslt (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!863) (size!13824 _keys!709)))))))

(declare-fun minValue!515 () V!17301)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8006 0))(
  ( (tuple2!8007 (_1!4013 (_ BitVec 64)) (_2!4013 V!17301)) )
))
(declare-datatypes ((List!8109 0))(
  ( (Nil!8106) (Cons!8105 (h!8961 tuple2!8006) (t!13945 List!8109)) )
))
(declare-datatypes ((ListLongMap!6933 0))(
  ( (ListLongMap!6934 (toList!3482 List!8109)) )
))
(declare-fun lt!205977 () ListLongMap!6933)

(declare-fun zeroValue!515 () V!17301)

(declare-fun v!412 () V!17301)

(declare-fun getCurrentListMapNoExtraKeys!1658 (array!28063 array!28065 (_ BitVec 32) (_ BitVec 32) V!17301 V!17301 (_ BitVec 32) Int) ListLongMap!6933)

(assert (=> b!453646 (= lt!205977 (getCurrentListMapNoExtraKeys!1658 lt!205976 (array!28066 (store (arr!13473 _values!549) i!563 (ValueCellFull!5730 v!412)) (size!13825 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!205975 () ListLongMap!6933)

(assert (=> b!453646 (= lt!205975 (getCurrentListMapNoExtraKeys!1658 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (= (and start!40882 res!270231) b!453633))

(assert (= (and b!453633 res!270235) b!453632))

(assert (= (and b!453632 res!270238) b!453638))

(assert (= (and b!453638 res!270239) b!453645))

(assert (= (and b!453645 res!270234) b!453644))

(assert (= (and b!453644 res!270240) b!453641))

(assert (= (and b!453641 res!270242) b!453637))

(assert (= (and b!453637 res!270236) b!453642))

(assert (= (and b!453642 res!270233) b!453634))

(assert (= (and b!453634 res!270232) b!453636))

(assert (= (and b!453636 res!270237) b!453639))

(assert (= (and b!453639 res!270241) b!453646))

(assert (= (and b!453640 condMapEmpty!19861) mapIsEmpty!19861))

(assert (= (and b!453640 (not condMapEmpty!19861)) mapNonEmpty!19861))

(get-info :version)

(assert (= (and mapNonEmpty!19861 ((_ is ValueCellFull!5730) mapValue!19861)) b!453643))

(assert (= (and b!453640 ((_ is ValueCellFull!5730) mapDefault!19861)) b!453635))

(assert (= start!40882 b!453640))

(declare-fun m!437991 () Bool)

(assert (=> b!453646 m!437991))

(declare-fun m!437993 () Bool)

(assert (=> b!453646 m!437993))

(declare-fun m!437995 () Bool)

(assert (=> b!453646 m!437995))

(declare-fun m!437997 () Bool)

(assert (=> b!453636 m!437997))

(declare-fun m!437999 () Bool)

(assert (=> b!453638 m!437999))

(declare-fun m!438001 () Bool)

(assert (=> b!453634 m!438001))

(declare-fun m!438003 () Bool)

(assert (=> b!453634 m!438003))

(declare-fun m!438005 () Bool)

(assert (=> b!453637 m!438005))

(declare-fun m!438007 () Bool)

(assert (=> start!40882 m!438007))

(declare-fun m!438009 () Bool)

(assert (=> start!40882 m!438009))

(declare-fun m!438011 () Bool)

(assert (=> b!453642 m!438011))

(declare-fun m!438013 () Bool)

(assert (=> mapNonEmpty!19861 m!438013))

(declare-fun m!438015 () Bool)

(assert (=> b!453645 m!438015))

(declare-fun m!438017 () Bool)

(assert (=> b!453641 m!438017))

(declare-fun m!438019 () Bool)

(assert (=> b!453633 m!438019))

(check-sat (not b!453642) (not b_next!10809) (not b!453636) (not start!40882) tp_is_empty!12147 (not mapNonEmpty!19861) b_and!18969 (not b!453633) (not b!453638) (not b!453634) (not b!453641) (not b!453646) (not b!453645))
(check-sat b_and!18969 (not b_next!10809))
