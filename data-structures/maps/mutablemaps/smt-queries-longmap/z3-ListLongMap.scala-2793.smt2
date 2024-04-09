; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40656 () Bool)

(assert start!40656)

(declare-fun b_free!10659 () Bool)

(declare-fun b_next!10659 () Bool)

(assert (=> start!40656 (= b_free!10659 (not b_next!10659))))

(declare-fun tp!37796 () Bool)

(declare-fun b_and!18685 () Bool)

(assert (=> start!40656 (= tp!37796 b_and!18685)))

(declare-fun b!448802 () Bool)

(declare-fun e!263242 () Bool)

(assert (=> b!448802 (= e!263242 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17101 0))(
  ( (V!17102 (val!6043 Int)) )
))
(declare-fun minValue!515 () V!17101)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((array!27761 0))(
  ( (array!27762 (arr!13323 (Array (_ BitVec 32) (_ BitVec 64))) (size!13675 (_ BitVec 32))) )
))
(declare-fun lt!204240 () array!27761)

(declare-datatypes ((ValueCell!5655 0))(
  ( (ValueCellFull!5655 (v!8294 V!17101)) (EmptyCell!5655) )
))
(declare-datatypes ((array!27763 0))(
  ( (array!27764 (arr!13324 (Array (_ BitVec 32) ValueCell!5655)) (size!13676 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27763)

(declare-fun zeroValue!515 () V!17101)

(declare-datatypes ((tuple2!7864 0))(
  ( (tuple2!7865 (_1!3942 (_ BitVec 64)) (_2!3942 V!17101)) )
))
(declare-datatypes ((List!7975 0))(
  ( (Nil!7972) (Cons!7971 (h!8827 tuple2!7864) (t!13745 List!7975)) )
))
(declare-datatypes ((ListLongMap!6791 0))(
  ( (ListLongMap!6792 (toList!3411 List!7975)) )
))
(declare-fun lt!204241 () ListLongMap!6791)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!17101)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1591 (array!27761 array!27763 (_ BitVec 32) (_ BitVec 32) V!17101 V!17101 (_ BitVec 32) Int) ListLongMap!6791)

(assert (=> b!448802 (= lt!204241 (getCurrentListMapNoExtraKeys!1591 lt!204240 (array!27764 (store (arr!13324 _values!549) i!563 (ValueCellFull!5655 v!412)) (size!13676 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _keys!709 () array!27761)

(declare-fun lt!204239 () ListLongMap!6791)

(assert (=> b!448802 (= lt!204239 (getCurrentListMapNoExtraKeys!1591 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!266936 () Bool)

(declare-fun e!263245 () Bool)

(assert (=> start!40656 (=> (not res!266936) (not e!263245))))

(assert (=> start!40656 (= res!266936 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13675 _keys!709))))))

(assert (=> start!40656 e!263245))

(declare-fun tp_is_empty!11997 () Bool)

(assert (=> start!40656 tp_is_empty!11997))

(assert (=> start!40656 tp!37796))

(assert (=> start!40656 true))

(declare-fun e!263243 () Bool)

(declare-fun array_inv!9644 (array!27763) Bool)

(assert (=> start!40656 (and (array_inv!9644 _values!549) e!263243)))

(declare-fun array_inv!9645 (array!27761) Bool)

(assert (=> start!40656 (array_inv!9645 _keys!709)))

(declare-fun b!448803 () Bool)

(declare-fun res!266940 () Bool)

(assert (=> b!448803 (=> (not res!266940) (not e!263242))))

(assert (=> b!448803 (= res!266940 (bvsle from!863 i!563))))

(declare-fun b!448804 () Bool)

(declare-fun res!266945 () Bool)

(assert (=> b!448804 (=> (not res!266945) (not e!263245))))

(declare-datatypes ((List!7976 0))(
  ( (Nil!7973) (Cons!7972 (h!8828 (_ BitVec 64)) (t!13746 List!7976)) )
))
(declare-fun arrayNoDuplicates!0 (array!27761 (_ BitVec 32) List!7976) Bool)

(assert (=> b!448804 (= res!266945 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7973))))

(declare-fun b!448805 () Bool)

(declare-fun res!266937 () Bool)

(assert (=> b!448805 (=> (not res!266937) (not e!263245))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!448805 (= res!266937 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!448806 () Bool)

(declare-fun res!266935 () Bool)

(assert (=> b!448806 (=> (not res!266935) (not e!263245))))

(assert (=> b!448806 (= res!266935 (and (= (size!13676 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13675 _keys!709) (size!13676 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!448807 () Bool)

(declare-fun res!266939 () Bool)

(assert (=> b!448807 (=> (not res!266939) (not e!263245))))

(assert (=> b!448807 (= res!266939 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13675 _keys!709))))))

(declare-fun mapIsEmpty!19629 () Bool)

(declare-fun mapRes!19629 () Bool)

(assert (=> mapIsEmpty!19629 mapRes!19629))

(declare-fun b!448808 () Bool)

(declare-fun e!263244 () Bool)

(assert (=> b!448808 (= e!263243 (and e!263244 mapRes!19629))))

(declare-fun condMapEmpty!19629 () Bool)

(declare-fun mapDefault!19629 () ValueCell!5655)

(assert (=> b!448808 (= condMapEmpty!19629 (= (arr!13324 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5655)) mapDefault!19629)))))

(declare-fun b!448809 () Bool)

(declare-fun res!266943 () Bool)

(assert (=> b!448809 (=> (not res!266943) (not e!263245))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!448809 (= res!266943 (validKeyInArray!0 k0!794))))

(declare-fun b!448810 () Bool)

(declare-fun e!263246 () Bool)

(assert (=> b!448810 (= e!263246 tp_is_empty!11997)))

(declare-fun mapNonEmpty!19629 () Bool)

(declare-fun tp!37797 () Bool)

(assert (=> mapNonEmpty!19629 (= mapRes!19629 (and tp!37797 e!263246))))

(declare-fun mapRest!19629 () (Array (_ BitVec 32) ValueCell!5655))

(declare-fun mapKey!19629 () (_ BitVec 32))

(declare-fun mapValue!19629 () ValueCell!5655)

(assert (=> mapNonEmpty!19629 (= (arr!13324 _values!549) (store mapRest!19629 mapKey!19629 mapValue!19629))))

(declare-fun b!448811 () Bool)

(declare-fun res!266942 () Bool)

(assert (=> b!448811 (=> (not res!266942) (not e!263242))))

(assert (=> b!448811 (= res!266942 (arrayNoDuplicates!0 lt!204240 #b00000000000000000000000000000000 Nil!7973))))

(declare-fun b!448812 () Bool)

(assert (=> b!448812 (= e!263244 tp_is_empty!11997)))

(declare-fun b!448813 () Bool)

(declare-fun res!266938 () Bool)

(assert (=> b!448813 (=> (not res!266938) (not e!263245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!448813 (= res!266938 (validMask!0 mask!1025))))

(declare-fun b!448814 () Bool)

(assert (=> b!448814 (= e!263245 e!263242)))

(declare-fun res!266941 () Bool)

(assert (=> b!448814 (=> (not res!266941) (not e!263242))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27761 (_ BitVec 32)) Bool)

(assert (=> b!448814 (= res!266941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204240 mask!1025))))

(assert (=> b!448814 (= lt!204240 (array!27762 (store (arr!13323 _keys!709) i!563 k0!794) (size!13675 _keys!709)))))

(declare-fun b!448815 () Bool)

(declare-fun res!266946 () Bool)

(assert (=> b!448815 (=> (not res!266946) (not e!263245))))

(assert (=> b!448815 (= res!266946 (or (= (select (arr!13323 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13323 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!448816 () Bool)

(declare-fun res!266944 () Bool)

(assert (=> b!448816 (=> (not res!266944) (not e!263245))))

(assert (=> b!448816 (= res!266944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!40656 res!266936) b!448813))

(assert (= (and b!448813 res!266938) b!448806))

(assert (= (and b!448806 res!266935) b!448816))

(assert (= (and b!448816 res!266944) b!448804))

(assert (= (and b!448804 res!266945) b!448807))

(assert (= (and b!448807 res!266939) b!448809))

(assert (= (and b!448809 res!266943) b!448815))

(assert (= (and b!448815 res!266946) b!448805))

(assert (= (and b!448805 res!266937) b!448814))

(assert (= (and b!448814 res!266941) b!448811))

(assert (= (and b!448811 res!266942) b!448803))

(assert (= (and b!448803 res!266940) b!448802))

(assert (= (and b!448808 condMapEmpty!19629) mapIsEmpty!19629))

(assert (= (and b!448808 (not condMapEmpty!19629)) mapNonEmpty!19629))

(get-info :version)

(assert (= (and mapNonEmpty!19629 ((_ is ValueCellFull!5655) mapValue!19629)) b!448810))

(assert (= (and b!448808 ((_ is ValueCellFull!5655) mapDefault!19629)) b!448812))

(assert (= start!40656 b!448808))

(declare-fun m!433205 () Bool)

(assert (=> b!448815 m!433205))

(declare-fun m!433207 () Bool)

(assert (=> b!448804 m!433207))

(declare-fun m!433209 () Bool)

(assert (=> b!448814 m!433209))

(declare-fun m!433211 () Bool)

(assert (=> b!448814 m!433211))

(declare-fun m!433213 () Bool)

(assert (=> b!448809 m!433213))

(declare-fun m!433215 () Bool)

(assert (=> b!448802 m!433215))

(declare-fun m!433217 () Bool)

(assert (=> b!448802 m!433217))

(declare-fun m!433219 () Bool)

(assert (=> b!448802 m!433219))

(declare-fun m!433221 () Bool)

(assert (=> b!448813 m!433221))

(declare-fun m!433223 () Bool)

(assert (=> b!448816 m!433223))

(declare-fun m!433225 () Bool)

(assert (=> b!448811 m!433225))

(declare-fun m!433227 () Bool)

(assert (=> start!40656 m!433227))

(declare-fun m!433229 () Bool)

(assert (=> start!40656 m!433229))

(declare-fun m!433231 () Bool)

(assert (=> b!448805 m!433231))

(declare-fun m!433233 () Bool)

(assert (=> mapNonEmpty!19629 m!433233))

(check-sat (not b!448811) (not b!448814) (not b!448805) (not b_next!10659) tp_is_empty!11997 (not b!448802) (not b!448813) (not b!448816) (not b!448804) (not b!448809) (not start!40656) b_and!18685 (not mapNonEmpty!19629))
(check-sat b_and!18685 (not b_next!10659))
