; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40644 () Bool)

(assert start!40644)

(declare-fun b_free!10647 () Bool)

(declare-fun b_next!10647 () Bool)

(assert (=> start!40644 (= b_free!10647 (not b_next!10647))))

(declare-fun tp!37761 () Bool)

(declare-fun b_and!18673 () Bool)

(assert (=> start!40644 (= tp!37761 b_and!18673)))

(declare-fun b!448532 () Bool)

(declare-fun res!266729 () Bool)

(declare-fun e!263138 () Bool)

(assert (=> b!448532 (=> (not res!266729) (not e!263138))))

(declare-datatypes ((array!27737 0))(
  ( (array!27738 (arr!13311 (Array (_ BitVec 32) (_ BitVec 64))) (size!13663 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27737)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!448532 (= res!266729 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!448533 () Bool)

(declare-fun e!263136 () Bool)

(declare-fun tp_is_empty!11985 () Bool)

(assert (=> b!448533 (= e!263136 tp_is_empty!11985)))

(declare-fun res!266728 () Bool)

(assert (=> start!40644 (=> (not res!266728) (not e!263138))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40644 (= res!266728 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13663 _keys!709))))))

(assert (=> start!40644 e!263138))

(assert (=> start!40644 tp_is_empty!11985))

(assert (=> start!40644 tp!37761))

(assert (=> start!40644 true))

(declare-datatypes ((V!17085 0))(
  ( (V!17086 (val!6037 Int)) )
))
(declare-datatypes ((ValueCell!5649 0))(
  ( (ValueCellFull!5649 (v!8288 V!17085)) (EmptyCell!5649) )
))
(declare-datatypes ((array!27739 0))(
  ( (array!27740 (arr!13312 (Array (_ BitVec 32) ValueCell!5649)) (size!13664 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27739)

(declare-fun e!263134 () Bool)

(declare-fun array_inv!9638 (array!27739) Bool)

(assert (=> start!40644 (and (array_inv!9638 _values!549) e!263134)))

(declare-fun array_inv!9639 (array!27737) Bool)

(assert (=> start!40644 (array_inv!9639 _keys!709)))

(declare-fun b!448534 () Bool)

(declare-fun res!266719 () Bool)

(assert (=> b!448534 (=> (not res!266719) (not e!263138))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!448534 (= res!266719 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13663 _keys!709))))))

(declare-fun b!448535 () Bool)

(declare-fun e!263139 () Bool)

(assert (=> b!448535 (= e!263138 e!263139)))

(declare-fun res!266722 () Bool)

(assert (=> b!448535 (=> (not res!266722) (not e!263139))))

(declare-fun lt!204186 () array!27737)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27737 (_ BitVec 32)) Bool)

(assert (=> b!448535 (= res!266722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204186 mask!1025))))

(assert (=> b!448535 (= lt!204186 (array!27738 (store (arr!13311 _keys!709) i!563 k0!794) (size!13663 _keys!709)))))

(declare-fun b!448536 () Bool)

(declare-fun res!266725 () Bool)

(assert (=> b!448536 (=> (not res!266725) (not e!263138))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!448536 (= res!266725 (and (= (size!13664 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13663 _keys!709) (size!13664 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!448537 () Bool)

(declare-fun res!266720 () Bool)

(assert (=> b!448537 (=> (not res!266720) (not e!263138))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!448537 (= res!266720 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!19611 () Bool)

(declare-fun mapRes!19611 () Bool)

(assert (=> mapIsEmpty!19611 mapRes!19611))

(declare-fun b!448538 () Bool)

(declare-fun e!263135 () Bool)

(assert (=> b!448538 (= e!263135 tp_is_empty!11985)))

(declare-fun b!448539 () Bool)

(assert (=> b!448539 (= e!263139 false)))

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17085)

(declare-fun v!412 () V!17085)

(declare-fun minValue!515 () V!17085)

(declare-datatypes ((tuple2!7854 0))(
  ( (tuple2!7855 (_1!3937 (_ BitVec 64)) (_2!3937 V!17085)) )
))
(declare-datatypes ((List!7965 0))(
  ( (Nil!7962) (Cons!7961 (h!8817 tuple2!7854) (t!13735 List!7965)) )
))
(declare-datatypes ((ListLongMap!6781 0))(
  ( (ListLongMap!6782 (toList!3406 List!7965)) )
))
(declare-fun lt!204185 () ListLongMap!6781)

(declare-fun getCurrentListMapNoExtraKeys!1586 (array!27737 array!27739 (_ BitVec 32) (_ BitVec 32) V!17085 V!17085 (_ BitVec 32) Int) ListLongMap!6781)

(assert (=> b!448539 (= lt!204185 (getCurrentListMapNoExtraKeys!1586 lt!204186 (array!27740 (store (arr!13312 _values!549) i!563 (ValueCellFull!5649 v!412)) (size!13664 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204187 () ListLongMap!6781)

(assert (=> b!448539 (= lt!204187 (getCurrentListMapNoExtraKeys!1586 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!19611 () Bool)

(declare-fun tp!37760 () Bool)

(assert (=> mapNonEmpty!19611 (= mapRes!19611 (and tp!37760 e!263135))))

(declare-fun mapValue!19611 () ValueCell!5649)

(declare-fun mapRest!19611 () (Array (_ BitVec 32) ValueCell!5649))

(declare-fun mapKey!19611 () (_ BitVec 32))

(assert (=> mapNonEmpty!19611 (= (arr!13312 _values!549) (store mapRest!19611 mapKey!19611 mapValue!19611))))

(declare-fun b!448540 () Bool)

(declare-fun res!266721 () Bool)

(assert (=> b!448540 (=> (not res!266721) (not e!263139))))

(assert (=> b!448540 (= res!266721 (bvsle from!863 i!563))))

(declare-fun b!448541 () Bool)

(assert (=> b!448541 (= e!263134 (and e!263136 mapRes!19611))))

(declare-fun condMapEmpty!19611 () Bool)

(declare-fun mapDefault!19611 () ValueCell!5649)

(assert (=> b!448541 (= condMapEmpty!19611 (= (arr!13312 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5649)) mapDefault!19611)))))

(declare-fun b!448542 () Bool)

(declare-fun res!266726 () Bool)

(assert (=> b!448542 (=> (not res!266726) (not e!263139))))

(declare-datatypes ((List!7966 0))(
  ( (Nil!7963) (Cons!7962 (h!8818 (_ BitVec 64)) (t!13736 List!7966)) )
))
(declare-fun arrayNoDuplicates!0 (array!27737 (_ BitVec 32) List!7966) Bool)

(assert (=> b!448542 (= res!266726 (arrayNoDuplicates!0 lt!204186 #b00000000000000000000000000000000 Nil!7963))))

(declare-fun b!448543 () Bool)

(declare-fun res!266723 () Bool)

(assert (=> b!448543 (=> (not res!266723) (not e!263138))))

(assert (=> b!448543 (= res!266723 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7963))))

(declare-fun b!448544 () Bool)

(declare-fun res!266727 () Bool)

(assert (=> b!448544 (=> (not res!266727) (not e!263138))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!448544 (= res!266727 (validKeyInArray!0 k0!794))))

(declare-fun b!448545 () Bool)

(declare-fun res!266730 () Bool)

(assert (=> b!448545 (=> (not res!266730) (not e!263138))))

(assert (=> b!448545 (= res!266730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!448546 () Bool)

(declare-fun res!266724 () Bool)

(assert (=> b!448546 (=> (not res!266724) (not e!263138))))

(assert (=> b!448546 (= res!266724 (or (= (select (arr!13311 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13311 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!40644 res!266728) b!448537))

(assert (= (and b!448537 res!266720) b!448536))

(assert (= (and b!448536 res!266725) b!448545))

(assert (= (and b!448545 res!266730) b!448543))

(assert (= (and b!448543 res!266723) b!448534))

(assert (= (and b!448534 res!266719) b!448544))

(assert (= (and b!448544 res!266727) b!448546))

(assert (= (and b!448546 res!266724) b!448532))

(assert (= (and b!448532 res!266729) b!448535))

(assert (= (and b!448535 res!266722) b!448542))

(assert (= (and b!448542 res!266726) b!448540))

(assert (= (and b!448540 res!266721) b!448539))

(assert (= (and b!448541 condMapEmpty!19611) mapIsEmpty!19611))

(assert (= (and b!448541 (not condMapEmpty!19611)) mapNonEmpty!19611))

(get-info :version)

(assert (= (and mapNonEmpty!19611 ((_ is ValueCellFull!5649) mapValue!19611)) b!448538))

(assert (= (and b!448541 ((_ is ValueCellFull!5649) mapDefault!19611)) b!448533))

(assert (= start!40644 b!448541))

(declare-fun m!433025 () Bool)

(assert (=> b!448546 m!433025))

(declare-fun m!433027 () Bool)

(assert (=> b!448537 m!433027))

(declare-fun m!433029 () Bool)

(assert (=> b!448543 m!433029))

(declare-fun m!433031 () Bool)

(assert (=> b!448542 m!433031))

(declare-fun m!433033 () Bool)

(assert (=> b!448539 m!433033))

(declare-fun m!433035 () Bool)

(assert (=> b!448539 m!433035))

(declare-fun m!433037 () Bool)

(assert (=> b!448539 m!433037))

(declare-fun m!433039 () Bool)

(assert (=> start!40644 m!433039))

(declare-fun m!433041 () Bool)

(assert (=> start!40644 m!433041))

(declare-fun m!433043 () Bool)

(assert (=> b!448545 m!433043))

(declare-fun m!433045 () Bool)

(assert (=> mapNonEmpty!19611 m!433045))

(declare-fun m!433047 () Bool)

(assert (=> b!448532 m!433047))

(declare-fun m!433049 () Bool)

(assert (=> b!448535 m!433049))

(declare-fun m!433051 () Bool)

(assert (=> b!448535 m!433051))

(declare-fun m!433053 () Bool)

(assert (=> b!448544 m!433053))

(check-sat b_and!18673 (not b!448535) tp_is_empty!11985 (not b!448542) (not b!448543) (not b!448545) (not b!448537) (not b_next!10647) (not start!40644) (not b!448544) (not mapNonEmpty!19611) (not b!448539) (not b!448532))
(check-sat b_and!18673 (not b_next!10647))
