; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82310 () Bool)

(assert start!82310)

(declare-fun b_free!18555 () Bool)

(declare-fun b_next!18555 () Bool)

(assert (=> start!82310 (= b_free!18555 (not b_next!18555))))

(declare-fun tp!64626 () Bool)

(declare-fun b_and!30061 () Bool)

(assert (=> start!82310 (= tp!64626 b_and!30061)))

(declare-fun b!959062 () Bool)

(declare-fun res!642088 () Bool)

(declare-fun e!540679 () Bool)

(assert (=> b!959062 (=> (not res!642088) (not e!540679))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33331 0))(
  ( (V!33332 (val!10681 Int)) )
))
(declare-fun minValue!1328 () V!33331)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58635 0))(
  ( (array!58636 (arr!28187 (Array (_ BitVec 32) (_ BitVec 64))) (size!28667 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58635)

(declare-datatypes ((ValueCell!10149 0))(
  ( (ValueCellFull!10149 (v!13238 V!33331)) (EmptyCell!10149) )
))
(declare-datatypes ((array!58637 0))(
  ( (array!58638 (arr!28188 (Array (_ BitVec 32) ValueCell!10149)) (size!28668 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58637)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33331)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((tuple2!13862 0))(
  ( (tuple2!13863 (_1!6941 (_ BitVec 64)) (_2!6941 V!33331)) )
))
(declare-datatypes ((List!19728 0))(
  ( (Nil!19725) (Cons!19724 (h!20886 tuple2!13862) (t!28099 List!19728)) )
))
(declare-datatypes ((ListLongMap!12573 0))(
  ( (ListLongMap!12574 (toList!6302 List!19728)) )
))
(declare-fun contains!5355 (ListLongMap!12573 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3487 (array!58635 array!58637 (_ BitVec 32) (_ BitVec 32) V!33331 V!33331 (_ BitVec 32) Int) ListLongMap!12573)

(assert (=> b!959062 (= res!642088 (contains!5355 (getCurrentListMap!3487 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28187 _keys!1668) i!793)))))

(declare-fun b!959063 () Bool)

(declare-fun res!642092 () Bool)

(assert (=> b!959063 (=> (not res!642092) (not e!540679))))

(assert (=> b!959063 (= res!642092 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28667 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28667 _keys!1668))))))

(declare-fun b!959064 () Bool)

(declare-fun res!642090 () Bool)

(assert (=> b!959064 (=> (not res!642090) (not e!540679))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959064 (= res!642090 (validKeyInArray!0 (select (arr!28187 _keys!1668) i!793)))))

(declare-fun b!959066 () Bool)

(assert (=> b!959066 (= e!540679 (not true))))

(assert (=> b!959066 (contains!5355 (getCurrentListMap!3487 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28187 _keys!1668) i!793))))

(declare-datatypes ((Unit!32155 0))(
  ( (Unit!32156) )
))
(declare-fun lt!430469 () Unit!32155)

(declare-fun lemmaInListMapFromThenInFromSmaller!7 (array!58635 array!58637 (_ BitVec 32) (_ BitVec 32) V!33331 V!33331 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32155)

(assert (=> b!959066 (= lt!430469 (lemmaInListMapFromThenInFromSmaller!7 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(declare-fun mapIsEmpty!33871 () Bool)

(declare-fun mapRes!33871 () Bool)

(assert (=> mapIsEmpty!33871 mapRes!33871))

(declare-fun b!959067 () Bool)

(declare-fun e!540683 () Bool)

(declare-fun tp_is_empty!21261 () Bool)

(assert (=> b!959067 (= e!540683 tp_is_empty!21261)))

(declare-fun b!959068 () Bool)

(declare-fun res!642093 () Bool)

(assert (=> b!959068 (=> (not res!642093) (not e!540679))))

(declare-datatypes ((List!19729 0))(
  ( (Nil!19726) (Cons!19725 (h!20887 (_ BitVec 64)) (t!28100 List!19729)) )
))
(declare-fun arrayNoDuplicates!0 (array!58635 (_ BitVec 32) List!19729) Bool)

(assert (=> b!959068 (= res!642093 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19726))))

(declare-fun b!959069 () Bool)

(declare-fun e!540682 () Bool)

(assert (=> b!959069 (= e!540682 (and e!540683 mapRes!33871))))

(declare-fun condMapEmpty!33871 () Bool)

(declare-fun mapDefault!33871 () ValueCell!10149)

(assert (=> b!959069 (= condMapEmpty!33871 (= (arr!28188 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10149)) mapDefault!33871)))))

(declare-fun mapNonEmpty!33871 () Bool)

(declare-fun tp!64627 () Bool)

(declare-fun e!540681 () Bool)

(assert (=> mapNonEmpty!33871 (= mapRes!33871 (and tp!64627 e!540681))))

(declare-fun mapValue!33871 () ValueCell!10149)

(declare-fun mapKey!33871 () (_ BitVec 32))

(declare-fun mapRest!33871 () (Array (_ BitVec 32) ValueCell!10149))

(assert (=> mapNonEmpty!33871 (= (arr!28188 _values!1386) (store mapRest!33871 mapKey!33871 mapValue!33871))))

(declare-fun b!959070 () Bool)

(declare-fun res!642087 () Bool)

(assert (=> b!959070 (=> (not res!642087) (not e!540679))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58635 (_ BitVec 32)) Bool)

(assert (=> b!959070 (= res!642087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959071 () Bool)

(declare-fun res!642091 () Bool)

(assert (=> b!959071 (=> (not res!642091) (not e!540679))))

(assert (=> b!959071 (= res!642091 (and (= (size!28668 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28667 _keys!1668) (size!28668 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun res!642089 () Bool)

(assert (=> start!82310 (=> (not res!642089) (not e!540679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82310 (= res!642089 (validMask!0 mask!2088))))

(assert (=> start!82310 e!540679))

(assert (=> start!82310 true))

(assert (=> start!82310 tp_is_empty!21261))

(declare-fun array_inv!21795 (array!58635) Bool)

(assert (=> start!82310 (array_inv!21795 _keys!1668)))

(declare-fun array_inv!21796 (array!58637) Bool)

(assert (=> start!82310 (and (array_inv!21796 _values!1386) e!540682)))

(assert (=> start!82310 tp!64626))

(declare-fun b!959065 () Bool)

(assert (=> b!959065 (= e!540681 tp_is_empty!21261)))

(assert (= (and start!82310 res!642089) b!959071))

(assert (= (and b!959071 res!642091) b!959070))

(assert (= (and b!959070 res!642087) b!959068))

(assert (= (and b!959068 res!642093) b!959063))

(assert (= (and b!959063 res!642092) b!959064))

(assert (= (and b!959064 res!642090) b!959062))

(assert (= (and b!959062 res!642088) b!959066))

(assert (= (and b!959069 condMapEmpty!33871) mapIsEmpty!33871))

(assert (= (and b!959069 (not condMapEmpty!33871)) mapNonEmpty!33871))

(get-info :version)

(assert (= (and mapNonEmpty!33871 ((_ is ValueCellFull!10149) mapValue!33871)) b!959065))

(assert (= (and b!959069 ((_ is ValueCellFull!10149) mapDefault!33871)) b!959067))

(assert (= start!82310 b!959069))

(declare-fun m!889691 () Bool)

(assert (=> mapNonEmpty!33871 m!889691))

(declare-fun m!889693 () Bool)

(assert (=> b!959062 m!889693))

(declare-fun m!889695 () Bool)

(assert (=> b!959062 m!889695))

(assert (=> b!959062 m!889693))

(assert (=> b!959062 m!889695))

(declare-fun m!889697 () Bool)

(assert (=> b!959062 m!889697))

(declare-fun m!889699 () Bool)

(assert (=> start!82310 m!889699))

(declare-fun m!889701 () Bool)

(assert (=> start!82310 m!889701))

(declare-fun m!889703 () Bool)

(assert (=> start!82310 m!889703))

(declare-fun m!889705 () Bool)

(assert (=> b!959066 m!889705))

(assert (=> b!959066 m!889695))

(assert (=> b!959066 m!889705))

(assert (=> b!959066 m!889695))

(declare-fun m!889707 () Bool)

(assert (=> b!959066 m!889707))

(declare-fun m!889709 () Bool)

(assert (=> b!959066 m!889709))

(assert (=> b!959064 m!889695))

(assert (=> b!959064 m!889695))

(declare-fun m!889711 () Bool)

(assert (=> b!959064 m!889711))

(declare-fun m!889713 () Bool)

(assert (=> b!959068 m!889713))

(declare-fun m!889715 () Bool)

(assert (=> b!959070 m!889715))

(check-sat (not b!959068) (not b!959070) (not b!959062) b_and!30061 tp_is_empty!21261 (not mapNonEmpty!33871) (not start!82310) (not b_next!18555) (not b!959066) (not b!959064))
(check-sat b_and!30061 (not b_next!18555))
