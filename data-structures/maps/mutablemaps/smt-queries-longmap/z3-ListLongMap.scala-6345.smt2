; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81814 () Bool)

(assert start!81814)

(declare-fun res!638810 () Bool)

(declare-fun e!537352 () Bool)

(assert (=> start!81814 (=> (not res!638810) (not e!537352))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81814 (= res!638810 (validMask!0 mask!1823))))

(assert (=> start!81814 e!537352))

(assert (=> start!81814 true))

(declare-datatypes ((V!32779 0))(
  ( (V!32780 (val!10474 Int)) )
))
(declare-datatypes ((ValueCell!9942 0))(
  ( (ValueCellFull!9942 (v!13028 V!32779)) (EmptyCell!9942) )
))
(declare-datatypes ((array!57819 0))(
  ( (array!57820 (arr!27787 (Array (_ BitVec 32) ValueCell!9942)) (size!28267 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57819)

(declare-fun e!537350 () Bool)

(declare-fun array_inv!21511 (array!57819) Bool)

(assert (=> start!81814 (and (array_inv!21511 _values!1197) e!537350)))

(declare-datatypes ((array!57821 0))(
  ( (array!57822 (arr!27788 (Array (_ BitVec 32) (_ BitVec 64))) (size!28268 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57821)

(declare-fun array_inv!21512 (array!57821) Bool)

(assert (=> start!81814 (array_inv!21512 _keys!1441)))

(declare-fun b!953766 () Bool)

(declare-fun res!638813 () Bool)

(assert (=> b!953766 (=> (not res!638813) (not e!537352))))

(assert (=> b!953766 (= res!638813 (and (bvsle #b00000000000000000000000000000000 (size!28268 _keys!1441)) (bvslt (size!28268 _keys!1441) #b01111111111111111111111111111111)))))

(declare-fun b!953767 () Bool)

(declare-datatypes ((List!19506 0))(
  ( (Nil!19503) (Cons!19502 (h!20664 (_ BitVec 64)) (t!27875 List!19506)) )
))
(declare-fun noDuplicate!1362 (List!19506) Bool)

(assert (=> b!953767 (= e!537352 (not (noDuplicate!1362 Nil!19503)))))

(declare-fun b!953768 () Bool)

(declare-fun res!638811 () Bool)

(assert (=> b!953768 (=> (not res!638811) (not e!537352))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!953768 (= res!638811 (and (= (size!28267 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28268 _keys!1441) (size!28267 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!953769 () Bool)

(declare-fun e!537351 () Bool)

(declare-fun tp_is_empty!20847 () Bool)

(assert (=> b!953769 (= e!537351 tp_is_empty!20847)))

(declare-fun b!953770 () Bool)

(declare-fun e!537349 () Bool)

(declare-fun mapRes!33226 () Bool)

(assert (=> b!953770 (= e!537350 (and e!537349 mapRes!33226))))

(declare-fun condMapEmpty!33226 () Bool)

(declare-fun mapDefault!33226 () ValueCell!9942)

(assert (=> b!953770 (= condMapEmpty!33226 (= (arr!27787 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9942)) mapDefault!33226)))))

(declare-fun mapIsEmpty!33226 () Bool)

(assert (=> mapIsEmpty!33226 mapRes!33226))

(declare-fun b!953771 () Bool)

(declare-fun res!638812 () Bool)

(assert (=> b!953771 (=> (not res!638812) (not e!537352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57821 (_ BitVec 32)) Bool)

(assert (=> b!953771 (= res!638812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!953772 () Bool)

(assert (=> b!953772 (= e!537349 tp_is_empty!20847)))

(declare-fun mapNonEmpty!33226 () Bool)

(declare-fun tp!63616 () Bool)

(assert (=> mapNonEmpty!33226 (= mapRes!33226 (and tp!63616 e!537351))))

(declare-fun mapKey!33226 () (_ BitVec 32))

(declare-fun mapValue!33226 () ValueCell!9942)

(declare-fun mapRest!33226 () (Array (_ BitVec 32) ValueCell!9942))

(assert (=> mapNonEmpty!33226 (= (arr!27787 _values!1197) (store mapRest!33226 mapKey!33226 mapValue!33226))))

(assert (= (and start!81814 res!638810) b!953768))

(assert (= (and b!953768 res!638811) b!953771))

(assert (= (and b!953771 res!638812) b!953766))

(assert (= (and b!953766 res!638813) b!953767))

(assert (= (and b!953770 condMapEmpty!33226) mapIsEmpty!33226))

(assert (= (and b!953770 (not condMapEmpty!33226)) mapNonEmpty!33226))

(get-info :version)

(assert (= (and mapNonEmpty!33226 ((_ is ValueCellFull!9942) mapValue!33226)) b!953769))

(assert (= (and b!953770 ((_ is ValueCellFull!9942) mapDefault!33226)) b!953772))

(assert (= start!81814 b!953770))

(declare-fun m!885761 () Bool)

(assert (=> start!81814 m!885761))

(declare-fun m!885763 () Bool)

(assert (=> start!81814 m!885763))

(declare-fun m!885765 () Bool)

(assert (=> start!81814 m!885765))

(declare-fun m!885767 () Bool)

(assert (=> b!953767 m!885767))

(declare-fun m!885769 () Bool)

(assert (=> b!953771 m!885769))

(declare-fun m!885771 () Bool)

(assert (=> mapNonEmpty!33226 m!885771))

(check-sat (not b!953767) (not start!81814) (not mapNonEmpty!33226) tp_is_empty!20847 (not b!953771))
(check-sat)
(get-model)

(declare-fun b!953802 () Bool)

(declare-fun e!537376 () Bool)

(declare-fun e!537374 () Bool)

(assert (=> b!953802 (= e!537376 e!537374)))

(declare-fun c!99781 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953802 (= c!99781 (validKeyInArray!0 (select (arr!27788 _keys!1441) #b00000000000000000000000000000000)))))

(declare-fun d!115667 () Bool)

(declare-fun res!638830 () Bool)

(assert (=> d!115667 (=> res!638830 e!537376)))

(assert (=> d!115667 (= res!638830 (bvsge #b00000000000000000000000000000000 (size!28268 _keys!1441)))))

(assert (=> d!115667 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823) e!537376)))

(declare-fun b!953803 () Bool)

(declare-fun e!537375 () Bool)

(declare-fun call!41675 () Bool)

(assert (=> b!953803 (= e!537375 call!41675)))

(declare-fun bm!41672 () Bool)

(assert (=> bm!41672 (= call!41675 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1441 mask!1823))))

(declare-fun b!953804 () Bool)

(assert (=> b!953804 (= e!537374 call!41675)))

(declare-fun b!953805 () Bool)

(assert (=> b!953805 (= e!537374 e!537375)))

(declare-fun lt!429790 () (_ BitVec 64))

(assert (=> b!953805 (= lt!429790 (select (arr!27788 _keys!1441) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32085 0))(
  ( (Unit!32086) )
))
(declare-fun lt!429792 () Unit!32085)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57821 (_ BitVec 64) (_ BitVec 32)) Unit!32085)

(assert (=> b!953805 (= lt!429792 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1441 lt!429790 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57821 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!953805 (arrayContainsKey!0 _keys!1441 lt!429790 #b00000000000000000000000000000000)))

(declare-fun lt!429791 () Unit!32085)

(assert (=> b!953805 (= lt!429791 lt!429792)))

(declare-fun res!638831 () Bool)

(declare-datatypes ((SeekEntryResult!9174 0))(
  ( (MissingZero!9174 (index!39066 (_ BitVec 32))) (Found!9174 (index!39067 (_ BitVec 32))) (Intermediate!9174 (undefined!9986 Bool) (index!39068 (_ BitVec 32)) (x!82119 (_ BitVec 32))) (Undefined!9174) (MissingVacant!9174 (index!39069 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57821 (_ BitVec 32)) SeekEntryResult!9174)

(assert (=> b!953805 (= res!638831 (= (seekEntryOrOpen!0 (select (arr!27788 _keys!1441) #b00000000000000000000000000000000) _keys!1441 mask!1823) (Found!9174 #b00000000000000000000000000000000)))))

(assert (=> b!953805 (=> (not res!638831) (not e!537375))))

(assert (= (and d!115667 (not res!638830)) b!953802))

(assert (= (and b!953802 c!99781) b!953805))

(assert (= (and b!953802 (not c!99781)) b!953804))

(assert (= (and b!953805 res!638831) b!953803))

(assert (= (or b!953803 b!953804) bm!41672))

(declare-fun m!885785 () Bool)

(assert (=> b!953802 m!885785))

(assert (=> b!953802 m!885785))

(declare-fun m!885787 () Bool)

(assert (=> b!953802 m!885787))

(declare-fun m!885789 () Bool)

(assert (=> bm!41672 m!885789))

(assert (=> b!953805 m!885785))

(declare-fun m!885791 () Bool)

(assert (=> b!953805 m!885791))

(declare-fun m!885793 () Bool)

(assert (=> b!953805 m!885793))

(assert (=> b!953805 m!885785))

(declare-fun m!885795 () Bool)

(assert (=> b!953805 m!885795))

(assert (=> b!953771 d!115667))

(declare-fun d!115669 () Bool)

(declare-fun res!638836 () Bool)

(declare-fun e!537381 () Bool)

(assert (=> d!115669 (=> res!638836 e!537381)))

(assert (=> d!115669 (= res!638836 ((_ is Nil!19503) Nil!19503))))

(assert (=> d!115669 (= (noDuplicate!1362 Nil!19503) e!537381)))

(declare-fun b!953810 () Bool)

(declare-fun e!537382 () Bool)

(assert (=> b!953810 (= e!537381 e!537382)))

(declare-fun res!638837 () Bool)

(assert (=> b!953810 (=> (not res!638837) (not e!537382))))

(declare-fun contains!5264 (List!19506 (_ BitVec 64)) Bool)

(assert (=> b!953810 (= res!638837 (not (contains!5264 (t!27875 Nil!19503) (h!20664 Nil!19503))))))

(declare-fun b!953811 () Bool)

(assert (=> b!953811 (= e!537382 (noDuplicate!1362 (t!27875 Nil!19503)))))

(assert (= (and d!115669 (not res!638836)) b!953810))

(assert (= (and b!953810 res!638837) b!953811))

(declare-fun m!885797 () Bool)

(assert (=> b!953810 m!885797))

(declare-fun m!885799 () Bool)

(assert (=> b!953811 m!885799))

(assert (=> b!953767 d!115669))

(declare-fun d!115671 () Bool)

(assert (=> d!115671 (= (validMask!0 mask!1823) (and (or (= mask!1823 #b00000000000000000000000000000111) (= mask!1823 #b00000000000000000000000000001111) (= mask!1823 #b00000000000000000000000000011111) (= mask!1823 #b00000000000000000000000000111111) (= mask!1823 #b00000000000000000000000001111111) (= mask!1823 #b00000000000000000000000011111111) (= mask!1823 #b00000000000000000000000111111111) (= mask!1823 #b00000000000000000000001111111111) (= mask!1823 #b00000000000000000000011111111111) (= mask!1823 #b00000000000000000000111111111111) (= mask!1823 #b00000000000000000001111111111111) (= mask!1823 #b00000000000000000011111111111111) (= mask!1823 #b00000000000000000111111111111111) (= mask!1823 #b00000000000000001111111111111111) (= mask!1823 #b00000000000000011111111111111111) (= mask!1823 #b00000000000000111111111111111111) (= mask!1823 #b00000000000001111111111111111111) (= mask!1823 #b00000000000011111111111111111111) (= mask!1823 #b00000000000111111111111111111111) (= mask!1823 #b00000000001111111111111111111111) (= mask!1823 #b00000000011111111111111111111111) (= mask!1823 #b00000000111111111111111111111111) (= mask!1823 #b00000001111111111111111111111111) (= mask!1823 #b00000011111111111111111111111111) (= mask!1823 #b00000111111111111111111111111111) (= mask!1823 #b00001111111111111111111111111111) (= mask!1823 #b00011111111111111111111111111111) (= mask!1823 #b00111111111111111111111111111111)) (bvsle mask!1823 #b00111111111111111111111111111111)))))

(assert (=> start!81814 d!115671))

(declare-fun d!115673 () Bool)

(assert (=> d!115673 (= (array_inv!21511 _values!1197) (bvsge (size!28267 _values!1197) #b00000000000000000000000000000000))))

(assert (=> start!81814 d!115673))

(declare-fun d!115675 () Bool)

(assert (=> d!115675 (= (array_inv!21512 _keys!1441) (bvsge (size!28268 _keys!1441) #b00000000000000000000000000000000))))

(assert (=> start!81814 d!115675))

(declare-fun condMapEmpty!33232 () Bool)

(declare-fun mapDefault!33232 () ValueCell!9942)

(assert (=> mapNonEmpty!33226 (= condMapEmpty!33232 (= mapRest!33226 ((as const (Array (_ BitVec 32) ValueCell!9942)) mapDefault!33232)))))

(declare-fun e!537388 () Bool)

(declare-fun mapRes!33232 () Bool)

(assert (=> mapNonEmpty!33226 (= tp!63616 (and e!537388 mapRes!33232))))

(declare-fun mapNonEmpty!33232 () Bool)

(declare-fun tp!63622 () Bool)

(declare-fun e!537387 () Bool)

(assert (=> mapNonEmpty!33232 (= mapRes!33232 (and tp!63622 e!537387))))

(declare-fun mapKey!33232 () (_ BitVec 32))

(declare-fun mapRest!33232 () (Array (_ BitVec 32) ValueCell!9942))

(declare-fun mapValue!33232 () ValueCell!9942)

(assert (=> mapNonEmpty!33232 (= mapRest!33226 (store mapRest!33232 mapKey!33232 mapValue!33232))))

(declare-fun b!953819 () Bool)

(assert (=> b!953819 (= e!537388 tp_is_empty!20847)))

(declare-fun mapIsEmpty!33232 () Bool)

(assert (=> mapIsEmpty!33232 mapRes!33232))

(declare-fun b!953818 () Bool)

(assert (=> b!953818 (= e!537387 tp_is_empty!20847)))

(assert (= (and mapNonEmpty!33226 condMapEmpty!33232) mapIsEmpty!33232))

(assert (= (and mapNonEmpty!33226 (not condMapEmpty!33232)) mapNonEmpty!33232))

(assert (= (and mapNonEmpty!33232 ((_ is ValueCellFull!9942) mapValue!33232)) b!953818))

(assert (= (and mapNonEmpty!33226 ((_ is ValueCellFull!9942) mapDefault!33232)) b!953819))

(declare-fun m!885801 () Bool)

(assert (=> mapNonEmpty!33232 m!885801))

(check-sat (not bm!41672) (not mapNonEmpty!33232) tp_is_empty!20847 (not b!953811) (not b!953802) (not b!953805) (not b!953810))
(check-sat)
