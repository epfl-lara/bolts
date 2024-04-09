; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107956 () Bool)

(assert start!107956)

(declare-fun b!1275154 () Bool)

(declare-fun e!727911 () Bool)

(declare-fun e!727913 () Bool)

(declare-fun mapRes!51368 () Bool)

(assert (=> b!1275154 (= e!727911 (and e!727913 mapRes!51368))))

(declare-fun condMapEmpty!51368 () Bool)

(declare-datatypes ((V!49419 0))(
  ( (V!49420 (val!16693 Int)) )
))
(declare-datatypes ((ValueCell!15720 0))(
  ( (ValueCellFull!15720 (v!19287 V!49419)) (EmptyCell!15720) )
))
(declare-datatypes ((array!83523 0))(
  ( (array!83524 (arr!40274 (Array (_ BitVec 32) ValueCell!15720)) (size!40825 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83523)

(declare-fun mapDefault!51368 () ValueCell!15720)

(assert (=> b!1275154 (= condMapEmpty!51368 (= (arr!40274 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15720)) mapDefault!51368)))))

(declare-fun b!1275155 () Bool)

(declare-fun e!727910 () Bool)

(declare-fun tp_is_empty!33237 () Bool)

(assert (=> b!1275155 (= e!727910 tp_is_empty!33237)))

(declare-fun res!847696 () Bool)

(declare-fun e!727914 () Bool)

(assert (=> start!107956 (=> (not res!847696) (not e!727914))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107956 (= res!847696 (validMask!0 mask!1805))))

(assert (=> start!107956 e!727914))

(assert (=> start!107956 true))

(declare-fun array_inv!30565 (array!83523) Bool)

(assert (=> start!107956 (and (array_inv!30565 _values!1187) e!727911)))

(declare-datatypes ((array!83525 0))(
  ( (array!83526 (arr!40275 (Array (_ BitVec 32) (_ BitVec 64))) (size!40826 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83525)

(declare-fun array_inv!30566 (array!83525) Bool)

(assert (=> start!107956 (array_inv!30566 _keys!1427)))

(declare-fun mapNonEmpty!51368 () Bool)

(declare-fun tp!98127 () Bool)

(assert (=> mapNonEmpty!51368 (= mapRes!51368 (and tp!98127 e!727910))))

(declare-fun mapKey!51368 () (_ BitVec 32))

(declare-fun mapRest!51368 () (Array (_ BitVec 32) ValueCell!15720))

(declare-fun mapValue!51368 () ValueCell!15720)

(assert (=> mapNonEmpty!51368 (= (arr!40274 _values!1187) (store mapRest!51368 mapKey!51368 mapValue!51368))))

(declare-fun mapIsEmpty!51368 () Bool)

(assert (=> mapIsEmpty!51368 mapRes!51368))

(declare-fun b!1275156 () Bool)

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1275156 (= e!727914 (and (= (size!40825 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40826 _keys!1427) (size!40825 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011) (not (= (size!40826 _keys!1427) (bvadd #b00000000000000000000000000000001 mask!1805)))))))

(declare-fun b!1275157 () Bool)

(assert (=> b!1275157 (= e!727913 tp_is_empty!33237)))

(assert (= (and start!107956 res!847696) b!1275156))

(assert (= (and b!1275154 condMapEmpty!51368) mapIsEmpty!51368))

(assert (= (and b!1275154 (not condMapEmpty!51368)) mapNonEmpty!51368))

(get-info :version)

(assert (= (and mapNonEmpty!51368 ((_ is ValueCellFull!15720) mapValue!51368)) b!1275155))

(assert (= (and b!1275154 ((_ is ValueCellFull!15720) mapDefault!51368)) b!1275157))

(assert (= start!107956 b!1275154))

(declare-fun m!1171521 () Bool)

(assert (=> start!107956 m!1171521))

(declare-fun m!1171523 () Bool)

(assert (=> start!107956 m!1171523))

(declare-fun m!1171525 () Bool)

(assert (=> start!107956 m!1171525))

(declare-fun m!1171527 () Bool)

(assert (=> mapNonEmpty!51368 m!1171527))

(check-sat (not start!107956) (not mapNonEmpty!51368) tp_is_empty!33237)
(check-sat)
