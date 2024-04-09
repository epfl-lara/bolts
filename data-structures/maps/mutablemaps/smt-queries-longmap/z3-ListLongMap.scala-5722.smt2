; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74158 () Bool)

(assert start!74158)

(declare-fun b!871918 () Bool)

(declare-fun e!485520 () Bool)

(declare-fun e!485519 () Bool)

(declare-fun mapRes!27356 () Bool)

(assert (=> b!871918 (= e!485520 (and e!485519 mapRes!27356))))

(declare-fun condMapEmpty!27356 () Bool)

(declare-datatypes ((V!27939 0))(
  ( (V!27940 (val!8632 Int)) )
))
(declare-datatypes ((ValueCell!8145 0))(
  ( (ValueCellFull!8145 (v!11053 V!27939)) (EmptyCell!8145) )
))
(declare-datatypes ((array!50468 0))(
  ( (array!50469 (arr!24260 (Array (_ BitVec 32) ValueCell!8145)) (size!24701 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50468)

(declare-fun mapDefault!27356 () ValueCell!8145)

(assert (=> b!871918 (= condMapEmpty!27356 (= (arr!24260 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8145)) mapDefault!27356)))))

(declare-fun b!871919 () Bool)

(declare-fun e!485522 () Bool)

(declare-fun tp_is_empty!17169 () Bool)

(assert (=> b!871919 (= e!485522 tp_is_empty!17169)))

(declare-fun b!871920 () Bool)

(declare-fun e!485523 () Bool)

(assert (=> b!871920 (= e!485523 false)))

(declare-fun lt!395514 () Bool)

(declare-datatypes ((array!50470 0))(
  ( (array!50471 (arr!24261 (Array (_ BitVec 32) (_ BitVec 64))) (size!24702 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50470)

(declare-datatypes ((List!17314 0))(
  ( (Nil!17311) (Cons!17310 (h!18441 (_ BitVec 64)) (t!24359 List!17314)) )
))
(declare-fun arrayNoDuplicates!0 (array!50470 (_ BitVec 32) List!17314) Bool)

(assert (=> b!871920 (= lt!395514 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17311))))

(declare-fun b!871921 () Bool)

(declare-fun res!592757 () Bool)

(assert (=> b!871921 (=> (not res!592757) (not e!485523))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50470 (_ BitVec 32)) Bool)

(assert (=> b!871921 (= res!592757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871922 () Bool)

(declare-fun res!592755 () Bool)

(assert (=> b!871922 (=> (not res!592755) (not e!485523))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871922 (= res!592755 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!27356 () Bool)

(declare-fun tp!52556 () Bool)

(assert (=> mapNonEmpty!27356 (= mapRes!27356 (and tp!52556 e!485522))))

(declare-fun mapRest!27356 () (Array (_ BitVec 32) ValueCell!8145))

(declare-fun mapValue!27356 () ValueCell!8145)

(declare-fun mapKey!27356 () (_ BitVec 32))

(assert (=> mapNonEmpty!27356 (= (arr!24260 _values!688) (store mapRest!27356 mapKey!27356 mapValue!27356))))

(declare-fun res!592758 () Bool)

(assert (=> start!74158 (=> (not res!592758) (not e!485523))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74158 (= res!592758 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24702 _keys!868))))))

(assert (=> start!74158 e!485523))

(assert (=> start!74158 true))

(declare-fun array_inv!19126 (array!50470) Bool)

(assert (=> start!74158 (array_inv!19126 _keys!868)))

(declare-fun array_inv!19127 (array!50468) Bool)

(assert (=> start!74158 (and (array_inv!19127 _values!688) e!485520)))

(declare-fun mapIsEmpty!27356 () Bool)

(assert (=> mapIsEmpty!27356 mapRes!27356))

(declare-fun b!871923 () Bool)

(assert (=> b!871923 (= e!485519 tp_is_empty!17169)))

(declare-fun b!871924 () Bool)

(declare-fun res!592756 () Bool)

(assert (=> b!871924 (=> (not res!592756) (not e!485523))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!871924 (= res!592756 (and (= (size!24701 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24702 _keys!868) (size!24701 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!74158 res!592758) b!871922))

(assert (= (and b!871922 res!592755) b!871924))

(assert (= (and b!871924 res!592756) b!871921))

(assert (= (and b!871921 res!592757) b!871920))

(assert (= (and b!871918 condMapEmpty!27356) mapIsEmpty!27356))

(assert (= (and b!871918 (not condMapEmpty!27356)) mapNonEmpty!27356))

(get-info :version)

(assert (= (and mapNonEmpty!27356 ((_ is ValueCellFull!8145) mapValue!27356)) b!871919))

(assert (= (and b!871918 ((_ is ValueCellFull!8145) mapDefault!27356)) b!871923))

(assert (= start!74158 b!871918))

(declare-fun m!813001 () Bool)

(assert (=> start!74158 m!813001))

(declare-fun m!813003 () Bool)

(assert (=> start!74158 m!813003))

(declare-fun m!813005 () Bool)

(assert (=> mapNonEmpty!27356 m!813005))

(declare-fun m!813007 () Bool)

(assert (=> b!871921 m!813007))

(declare-fun m!813009 () Bool)

(assert (=> b!871920 m!813009))

(declare-fun m!813011 () Bool)

(assert (=> b!871922 m!813011))

(check-sat (not b!871921) tp_is_empty!17169 (not b!871920) (not b!871922) (not mapNonEmpty!27356) (not start!74158))
(check-sat)
