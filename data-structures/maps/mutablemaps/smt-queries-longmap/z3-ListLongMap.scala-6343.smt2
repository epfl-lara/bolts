; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81786 () Bool)

(assert start!81786)

(declare-fun mapNonEmpty!33202 () Bool)

(declare-fun mapRes!33202 () Bool)

(declare-fun tp!63592 () Bool)

(declare-fun e!537231 () Bool)

(assert (=> mapNonEmpty!33202 (= mapRes!33202 (and tp!63592 e!537231))))

(declare-datatypes ((V!32763 0))(
  ( (V!32764 (val!10468 Int)) )
))
(declare-datatypes ((ValueCell!9936 0))(
  ( (ValueCellFull!9936 (v!13022 V!32763)) (EmptyCell!9936) )
))
(declare-fun mapValue!33202 () ValueCell!9936)

(declare-fun mapKey!33202 () (_ BitVec 32))

(declare-datatypes ((array!57793 0))(
  ( (array!57794 (arr!27776 (Array (_ BitVec 32) ValueCell!9936)) (size!28256 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57793)

(declare-fun mapRest!33202 () (Array (_ BitVec 32) ValueCell!9936))

(assert (=> mapNonEmpty!33202 (= (arr!27776 _values!1197) (store mapRest!33202 mapKey!33202 mapValue!33202))))

(declare-fun b!953613 () Bool)

(declare-fun tp_is_empty!20835 () Bool)

(assert (=> b!953613 (= e!537231 tp_is_empty!20835)))

(declare-fun b!953614 () Bool)

(declare-fun res!638741 () Bool)

(declare-fun e!537232 () Bool)

(assert (=> b!953614 (=> (not res!638741) (not e!537232))))

(declare-datatypes ((array!57795 0))(
  ( (array!57796 (arr!27777 (Array (_ BitVec 32) (_ BitVec 64))) (size!28257 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57795)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57795 (_ BitVec 32)) Bool)

(assert (=> b!953614 (= res!638741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!953615 () Bool)

(declare-fun e!537228 () Bool)

(declare-fun e!537230 () Bool)

(assert (=> b!953615 (= e!537228 (and e!537230 mapRes!33202))))

(declare-fun condMapEmpty!33202 () Bool)

(declare-fun mapDefault!33202 () ValueCell!9936)

(assert (=> b!953615 (= condMapEmpty!33202 (= (arr!27776 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9936)) mapDefault!33202)))))

(declare-fun res!638739 () Bool)

(assert (=> start!81786 (=> (not res!638739) (not e!537232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81786 (= res!638739 (validMask!0 mask!1823))))

(assert (=> start!81786 e!537232))

(assert (=> start!81786 true))

(declare-fun array_inv!21505 (array!57793) Bool)

(assert (=> start!81786 (and (array_inv!21505 _values!1197) e!537228)))

(declare-fun array_inv!21506 (array!57795) Bool)

(assert (=> start!81786 (array_inv!21506 _keys!1441)))

(declare-fun mapIsEmpty!33202 () Bool)

(assert (=> mapIsEmpty!33202 mapRes!33202))

(declare-fun b!953616 () Bool)

(assert (=> b!953616 (= e!537232 (bvsgt #b00000000000000000000000000000000 (size!28257 _keys!1441)))))

(declare-fun b!953617 () Bool)

(assert (=> b!953617 (= e!537230 tp_is_empty!20835)))

(declare-fun b!953618 () Bool)

(declare-fun res!638740 () Bool)

(assert (=> b!953618 (=> (not res!638740) (not e!537232))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!953618 (= res!638740 (and (= (size!28256 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28257 _keys!1441) (size!28256 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(assert (= (and start!81786 res!638739) b!953618))

(assert (= (and b!953618 res!638740) b!953614))

(assert (= (and b!953614 res!638741) b!953616))

(assert (= (and b!953615 condMapEmpty!33202) mapIsEmpty!33202))

(assert (= (and b!953615 (not condMapEmpty!33202)) mapNonEmpty!33202))

(get-info :version)

(assert (= (and mapNonEmpty!33202 ((_ is ValueCellFull!9936) mapValue!33202)) b!953613))

(assert (= (and b!953615 ((_ is ValueCellFull!9936) mapDefault!33202)) b!953617))

(assert (= start!81786 b!953615))

(declare-fun m!885671 () Bool)

(assert (=> mapNonEmpty!33202 m!885671))

(declare-fun m!885673 () Bool)

(assert (=> b!953614 m!885673))

(declare-fun m!885675 () Bool)

(assert (=> start!81786 m!885675))

(declare-fun m!885677 () Bool)

(assert (=> start!81786 m!885677))

(declare-fun m!885679 () Bool)

(assert (=> start!81786 m!885679))

(check-sat (not b!953614) (not start!81786) (not mapNonEmpty!33202) tp_is_empty!20835)
(check-sat)
(get-model)

(declare-fun b!953645 () Bool)

(declare-fun e!537254 () Bool)

(declare-fun e!537256 () Bool)

(assert (=> b!953645 (= e!537254 e!537256)))

(declare-fun lt!429772 () (_ BitVec 64))

(assert (=> b!953645 (= lt!429772 (select (arr!27777 _keys!1441) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32081 0))(
  ( (Unit!32082) )
))
(declare-fun lt!429774 () Unit!32081)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57795 (_ BitVec 64) (_ BitVec 32)) Unit!32081)

(assert (=> b!953645 (= lt!429774 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1441 lt!429772 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57795 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!953645 (arrayContainsKey!0 _keys!1441 lt!429772 #b00000000000000000000000000000000)))

(declare-fun lt!429773 () Unit!32081)

(assert (=> b!953645 (= lt!429773 lt!429774)))

(declare-fun res!638756 () Bool)

(declare-datatypes ((SeekEntryResult!9172 0))(
  ( (MissingZero!9172 (index!39058 (_ BitVec 32))) (Found!9172 (index!39059 (_ BitVec 32))) (Intermediate!9172 (undefined!9984 Bool) (index!39060 (_ BitVec 32)) (x!82097 (_ BitVec 32))) (Undefined!9172) (MissingVacant!9172 (index!39061 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57795 (_ BitVec 32)) SeekEntryResult!9172)

(assert (=> b!953645 (= res!638756 (= (seekEntryOrOpen!0 (select (arr!27777 _keys!1441) #b00000000000000000000000000000000) _keys!1441 mask!1823) (Found!9172 #b00000000000000000000000000000000)))))

(assert (=> b!953645 (=> (not res!638756) (not e!537256))))

(declare-fun b!953646 () Bool)

(declare-fun call!41669 () Bool)

(assert (=> b!953646 (= e!537256 call!41669)))

(declare-fun b!953647 () Bool)

(declare-fun e!537255 () Bool)

(assert (=> b!953647 (= e!537255 e!537254)))

(declare-fun c!99775 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953647 (= c!99775 (validKeyInArray!0 (select (arr!27777 _keys!1441) #b00000000000000000000000000000000)))))

(declare-fun d!115647 () Bool)

(declare-fun res!638755 () Bool)

(assert (=> d!115647 (=> res!638755 e!537255)))

(assert (=> d!115647 (= res!638755 (bvsge #b00000000000000000000000000000000 (size!28257 _keys!1441)))))

(assert (=> d!115647 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823) e!537255)))

(declare-fun bm!41666 () Bool)

(assert (=> bm!41666 (= call!41669 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1441 mask!1823))))

(declare-fun b!953648 () Bool)

(assert (=> b!953648 (= e!537254 call!41669)))

(assert (= (and d!115647 (not res!638755)) b!953647))

(assert (= (and b!953647 c!99775) b!953645))

(assert (= (and b!953647 (not c!99775)) b!953648))

(assert (= (and b!953645 res!638756) b!953646))

(assert (= (or b!953646 b!953648) bm!41666))

(declare-fun m!885691 () Bool)

(assert (=> b!953645 m!885691))

(declare-fun m!885693 () Bool)

(assert (=> b!953645 m!885693))

(declare-fun m!885695 () Bool)

(assert (=> b!953645 m!885695))

(assert (=> b!953645 m!885691))

(declare-fun m!885697 () Bool)

(assert (=> b!953645 m!885697))

(assert (=> b!953647 m!885691))

(assert (=> b!953647 m!885691))

(declare-fun m!885699 () Bool)

(assert (=> b!953647 m!885699))

(declare-fun m!885701 () Bool)

(assert (=> bm!41666 m!885701))

(assert (=> b!953614 d!115647))

(declare-fun d!115649 () Bool)

(assert (=> d!115649 (= (validMask!0 mask!1823) (and (or (= mask!1823 #b00000000000000000000000000000111) (= mask!1823 #b00000000000000000000000000001111) (= mask!1823 #b00000000000000000000000000011111) (= mask!1823 #b00000000000000000000000000111111) (= mask!1823 #b00000000000000000000000001111111) (= mask!1823 #b00000000000000000000000011111111) (= mask!1823 #b00000000000000000000000111111111) (= mask!1823 #b00000000000000000000001111111111) (= mask!1823 #b00000000000000000000011111111111) (= mask!1823 #b00000000000000000000111111111111) (= mask!1823 #b00000000000000000001111111111111) (= mask!1823 #b00000000000000000011111111111111) (= mask!1823 #b00000000000000000111111111111111) (= mask!1823 #b00000000000000001111111111111111) (= mask!1823 #b00000000000000011111111111111111) (= mask!1823 #b00000000000000111111111111111111) (= mask!1823 #b00000000000001111111111111111111) (= mask!1823 #b00000000000011111111111111111111) (= mask!1823 #b00000000000111111111111111111111) (= mask!1823 #b00000000001111111111111111111111) (= mask!1823 #b00000000011111111111111111111111) (= mask!1823 #b00000000111111111111111111111111) (= mask!1823 #b00000001111111111111111111111111) (= mask!1823 #b00000011111111111111111111111111) (= mask!1823 #b00000111111111111111111111111111) (= mask!1823 #b00001111111111111111111111111111) (= mask!1823 #b00011111111111111111111111111111) (= mask!1823 #b00111111111111111111111111111111)) (bvsle mask!1823 #b00111111111111111111111111111111)))))

(assert (=> start!81786 d!115649))

(declare-fun d!115651 () Bool)

(assert (=> d!115651 (= (array_inv!21505 _values!1197) (bvsge (size!28256 _values!1197) #b00000000000000000000000000000000))))

(assert (=> start!81786 d!115651))

(declare-fun d!115653 () Bool)

(assert (=> d!115653 (= (array_inv!21506 _keys!1441) (bvsge (size!28257 _keys!1441) #b00000000000000000000000000000000))))

(assert (=> start!81786 d!115653))

(declare-fun mapIsEmpty!33208 () Bool)

(declare-fun mapRes!33208 () Bool)

(assert (=> mapIsEmpty!33208 mapRes!33208))

(declare-fun condMapEmpty!33208 () Bool)

(declare-fun mapDefault!33208 () ValueCell!9936)

(assert (=> mapNonEmpty!33202 (= condMapEmpty!33208 (= mapRest!33202 ((as const (Array (_ BitVec 32) ValueCell!9936)) mapDefault!33208)))))

(declare-fun e!537261 () Bool)

(assert (=> mapNonEmpty!33202 (= tp!63592 (and e!537261 mapRes!33208))))

(declare-fun b!953656 () Bool)

(assert (=> b!953656 (= e!537261 tp_is_empty!20835)))

(declare-fun mapNonEmpty!33208 () Bool)

(declare-fun tp!63598 () Bool)

(declare-fun e!537262 () Bool)

(assert (=> mapNonEmpty!33208 (= mapRes!33208 (and tp!63598 e!537262))))

(declare-fun mapRest!33208 () (Array (_ BitVec 32) ValueCell!9936))

(declare-fun mapKey!33208 () (_ BitVec 32))

(declare-fun mapValue!33208 () ValueCell!9936)

(assert (=> mapNonEmpty!33208 (= mapRest!33202 (store mapRest!33208 mapKey!33208 mapValue!33208))))

(declare-fun b!953655 () Bool)

(assert (=> b!953655 (= e!537262 tp_is_empty!20835)))

(assert (= (and mapNonEmpty!33202 condMapEmpty!33208) mapIsEmpty!33208))

(assert (= (and mapNonEmpty!33202 (not condMapEmpty!33208)) mapNonEmpty!33208))

(assert (= (and mapNonEmpty!33208 ((_ is ValueCellFull!9936) mapValue!33208)) b!953655))

(assert (= (and mapNonEmpty!33202 ((_ is ValueCellFull!9936) mapDefault!33208)) b!953656))

(declare-fun m!885703 () Bool)

(assert (=> mapNonEmpty!33208 m!885703))

(check-sat (not bm!41666) tp_is_empty!20835 (not b!953645) (not mapNonEmpty!33208) (not b!953647))
(check-sat)
