; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108084 () Bool)

(assert start!108084)

(declare-fun b!1276033 () Bool)

(declare-fun res!848134 () Bool)

(declare-fun e!728639 () Bool)

(assert (=> b!1276033 (=> (not res!848134) (not e!728639))))

(declare-datatypes ((array!83691 0))(
  ( (array!83692 (arr!40353 (Array (_ BitVec 32) (_ BitVec 64))) (size!40904 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83691)

(declare-datatypes ((List!28796 0))(
  ( (Nil!28793) (Cons!28792 (h!30001 (_ BitVec 64)) (t!42339 List!28796)) )
))
(declare-fun arrayNoDuplicates!0 (array!83691 (_ BitVec 32) List!28796) Bool)

(assert (=> b!1276033 (= res!848134 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28793))))

(declare-fun b!1276034 () Bool)

(declare-fun e!728638 () Bool)

(declare-fun tp_is_empty!33321 () Bool)

(assert (=> b!1276034 (= e!728638 tp_is_empty!33321)))

(declare-fun b!1276035 () Bool)

(declare-fun e!728637 () Bool)

(declare-fun mapRes!51509 () Bool)

(assert (=> b!1276035 (= e!728637 (and e!728638 mapRes!51509))))

(declare-fun condMapEmpty!51509 () Bool)

(declare-datatypes ((V!49531 0))(
  ( (V!49532 (val!16735 Int)) )
))
(declare-datatypes ((ValueCell!15762 0))(
  ( (ValueCellFull!15762 (v!19330 V!49531)) (EmptyCell!15762) )
))
(declare-datatypes ((array!83693 0))(
  ( (array!83694 (arr!40354 (Array (_ BitVec 32) ValueCell!15762)) (size!40905 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83693)

(declare-fun mapDefault!51509 () ValueCell!15762)

(assert (=> b!1276035 (= condMapEmpty!51509 (= (arr!40354 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15762)) mapDefault!51509)))))

(declare-fun b!1276036 () Bool)

(assert (=> b!1276036 (= e!728639 (bvsgt #b00000000000000000000000000000000 (size!40904 _keys!1427)))))

(declare-fun b!1276037 () Bool)

(declare-fun res!848133 () Bool)

(assert (=> b!1276037 (=> (not res!848133) (not e!728639))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1276037 (= res!848133 (and (= (size!40905 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40904 _keys!1427) (size!40905 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276038 () Bool)

(declare-fun e!728635 () Bool)

(assert (=> b!1276038 (= e!728635 tp_is_empty!33321)))

(declare-fun mapNonEmpty!51509 () Bool)

(declare-fun tp!98268 () Bool)

(assert (=> mapNonEmpty!51509 (= mapRes!51509 (and tp!98268 e!728635))))

(declare-fun mapRest!51509 () (Array (_ BitVec 32) ValueCell!15762))

(declare-fun mapKey!51509 () (_ BitVec 32))

(declare-fun mapValue!51509 () ValueCell!15762)

(assert (=> mapNonEmpty!51509 (= (arr!40354 _values!1187) (store mapRest!51509 mapKey!51509 mapValue!51509))))

(declare-fun res!848135 () Bool)

(assert (=> start!108084 (=> (not res!848135) (not e!728639))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108084 (= res!848135 (validMask!0 mask!1805))))

(assert (=> start!108084 e!728639))

(assert (=> start!108084 true))

(declare-fun array_inv!30627 (array!83693) Bool)

(assert (=> start!108084 (and (array_inv!30627 _values!1187) e!728637)))

(declare-fun array_inv!30628 (array!83691) Bool)

(assert (=> start!108084 (array_inv!30628 _keys!1427)))

(declare-fun b!1276039 () Bool)

(declare-fun res!848136 () Bool)

(assert (=> b!1276039 (=> (not res!848136) (not e!728639))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83691 (_ BitVec 32)) Bool)

(assert (=> b!1276039 (= res!848136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun mapIsEmpty!51509 () Bool)

(assert (=> mapIsEmpty!51509 mapRes!51509))

(assert (= (and start!108084 res!848135) b!1276037))

(assert (= (and b!1276037 res!848133) b!1276039))

(assert (= (and b!1276039 res!848136) b!1276033))

(assert (= (and b!1276033 res!848134) b!1276036))

(assert (= (and b!1276035 condMapEmpty!51509) mapIsEmpty!51509))

(assert (= (and b!1276035 (not condMapEmpty!51509)) mapNonEmpty!51509))

(get-info :version)

(assert (= (and mapNonEmpty!51509 ((_ is ValueCellFull!15762) mapValue!51509)) b!1276038))

(assert (= (and b!1276035 ((_ is ValueCellFull!15762) mapDefault!51509)) b!1276034))

(assert (= start!108084 b!1276035))

(declare-fun m!1172081 () Bool)

(assert (=> b!1276033 m!1172081))

(declare-fun m!1172083 () Bool)

(assert (=> mapNonEmpty!51509 m!1172083))

(declare-fun m!1172085 () Bool)

(assert (=> start!108084 m!1172085))

(declare-fun m!1172087 () Bool)

(assert (=> start!108084 m!1172087))

(declare-fun m!1172089 () Bool)

(assert (=> start!108084 m!1172089))

(declare-fun m!1172091 () Bool)

(assert (=> b!1276039 m!1172091))

(check-sat tp_is_empty!33321 (not start!108084) (not b!1276033) (not b!1276039) (not mapNonEmpty!51509))
(check-sat)
(get-model)

(declare-fun bm!62640 () Bool)

(declare-fun call!62643 () Bool)

(declare-fun c!123873 () Bool)

(assert (=> bm!62640 (= call!62643 (arrayNoDuplicates!0 _keys!1427 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!123873 (Cons!28792 (select (arr!40353 _keys!1427) #b00000000000000000000000000000000) Nil!28793) Nil!28793)))))

(declare-fun b!1276071 () Bool)

(declare-fun e!728666 () Bool)

(declare-fun contains!7702 (List!28796 (_ BitVec 64)) Bool)

(assert (=> b!1276071 (= e!728666 (contains!7702 Nil!28793 (select (arr!40353 _keys!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1276072 () Bool)

(declare-fun e!728663 () Bool)

(assert (=> b!1276072 (= e!728663 call!62643)))

(declare-fun b!1276073 () Bool)

(assert (=> b!1276073 (= e!728663 call!62643)))

(declare-fun b!1276074 () Bool)

(declare-fun e!728665 () Bool)

(declare-fun e!728664 () Bool)

(assert (=> b!1276074 (= e!728665 e!728664)))

(declare-fun res!848156 () Bool)

(assert (=> b!1276074 (=> (not res!848156) (not e!728664))))

(assert (=> b!1276074 (= res!848156 (not e!728666))))

(declare-fun res!848157 () Bool)

(assert (=> b!1276074 (=> (not res!848157) (not e!728666))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1276074 (= res!848157 (validKeyInArray!0 (select (arr!40353 _keys!1427) #b00000000000000000000000000000000)))))

(declare-fun d!140329 () Bool)

(declare-fun res!848155 () Bool)

(assert (=> d!140329 (=> res!848155 e!728665)))

(assert (=> d!140329 (= res!848155 (bvsge #b00000000000000000000000000000000 (size!40904 _keys!1427)))))

(assert (=> d!140329 (= (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28793) e!728665)))

(declare-fun b!1276075 () Bool)

(assert (=> b!1276075 (= e!728664 e!728663)))

(assert (=> b!1276075 (= c!123873 (validKeyInArray!0 (select (arr!40353 _keys!1427) #b00000000000000000000000000000000)))))

(assert (= (and d!140329 (not res!848155)) b!1276074))

(assert (= (and b!1276074 res!848157) b!1276071))

(assert (= (and b!1276074 res!848156) b!1276075))

(assert (= (and b!1276075 c!123873) b!1276073))

(assert (= (and b!1276075 (not c!123873)) b!1276072))

(assert (= (or b!1276073 b!1276072) bm!62640))

(declare-fun m!1172105 () Bool)

(assert (=> bm!62640 m!1172105))

(declare-fun m!1172107 () Bool)

(assert (=> bm!62640 m!1172107))

(assert (=> b!1276071 m!1172105))

(assert (=> b!1276071 m!1172105))

(declare-fun m!1172109 () Bool)

(assert (=> b!1276071 m!1172109))

(assert (=> b!1276074 m!1172105))

(assert (=> b!1276074 m!1172105))

(declare-fun m!1172111 () Bool)

(assert (=> b!1276074 m!1172111))

(assert (=> b!1276075 m!1172105))

(assert (=> b!1276075 m!1172105))

(assert (=> b!1276075 m!1172111))

(assert (=> b!1276033 d!140329))

(declare-fun d!140331 () Bool)

(assert (=> d!140331 (= (validMask!0 mask!1805) (and (or (= mask!1805 #b00000000000000000000000000000111) (= mask!1805 #b00000000000000000000000000001111) (= mask!1805 #b00000000000000000000000000011111) (= mask!1805 #b00000000000000000000000000111111) (= mask!1805 #b00000000000000000000000001111111) (= mask!1805 #b00000000000000000000000011111111) (= mask!1805 #b00000000000000000000000111111111) (= mask!1805 #b00000000000000000000001111111111) (= mask!1805 #b00000000000000000000011111111111) (= mask!1805 #b00000000000000000000111111111111) (= mask!1805 #b00000000000000000001111111111111) (= mask!1805 #b00000000000000000011111111111111) (= mask!1805 #b00000000000000000111111111111111) (= mask!1805 #b00000000000000001111111111111111) (= mask!1805 #b00000000000000011111111111111111) (= mask!1805 #b00000000000000111111111111111111) (= mask!1805 #b00000000000001111111111111111111) (= mask!1805 #b00000000000011111111111111111111) (= mask!1805 #b00000000000111111111111111111111) (= mask!1805 #b00000000001111111111111111111111) (= mask!1805 #b00000000011111111111111111111111) (= mask!1805 #b00000000111111111111111111111111) (= mask!1805 #b00000001111111111111111111111111) (= mask!1805 #b00000011111111111111111111111111) (= mask!1805 #b00000111111111111111111111111111) (= mask!1805 #b00001111111111111111111111111111) (= mask!1805 #b00011111111111111111111111111111) (= mask!1805 #b00111111111111111111111111111111)) (bvsle mask!1805 #b00111111111111111111111111111111)))))

(assert (=> start!108084 d!140331))

(declare-fun d!140333 () Bool)

(assert (=> d!140333 (= (array_inv!30627 _values!1187) (bvsge (size!40905 _values!1187) #b00000000000000000000000000000000))))

(assert (=> start!108084 d!140333))

(declare-fun d!140335 () Bool)

(assert (=> d!140335 (= (array_inv!30628 _keys!1427) (bvsge (size!40904 _keys!1427) #b00000000000000000000000000000000))))

(assert (=> start!108084 d!140335))

(declare-fun b!1276084 () Bool)

(declare-fun e!728674 () Bool)

(declare-fun call!62646 () Bool)

(assert (=> b!1276084 (= e!728674 call!62646)))

(declare-fun bm!62643 () Bool)

(assert (=> bm!62643 (= call!62646 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1427 mask!1805))))

(declare-fun b!1276085 () Bool)

(declare-fun e!728675 () Bool)

(assert (=> b!1276085 (= e!728674 e!728675)))

(declare-fun lt!575386 () (_ BitVec 64))

(assert (=> b!1276085 (= lt!575386 (select (arr!40353 _keys!1427) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42303 0))(
  ( (Unit!42304) )
))
(declare-fun lt!575388 () Unit!42303)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83691 (_ BitVec 64) (_ BitVec 32)) Unit!42303)

(assert (=> b!1276085 (= lt!575388 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1427 lt!575386 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83691 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1276085 (arrayContainsKey!0 _keys!1427 lt!575386 #b00000000000000000000000000000000)))

(declare-fun lt!575387 () Unit!42303)

(assert (=> b!1276085 (= lt!575387 lt!575388)))

(declare-fun res!848162 () Bool)

(declare-datatypes ((SeekEntryResult!10002 0))(
  ( (MissingZero!10002 (index!42378 (_ BitVec 32))) (Found!10002 (index!42379 (_ BitVec 32))) (Intermediate!10002 (undefined!10814 Bool) (index!42380 (_ BitVec 32)) (x!113046 (_ BitVec 32))) (Undefined!10002) (MissingVacant!10002 (index!42381 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83691 (_ BitVec 32)) SeekEntryResult!10002)

(assert (=> b!1276085 (= res!848162 (= (seekEntryOrOpen!0 (select (arr!40353 _keys!1427) #b00000000000000000000000000000000) _keys!1427 mask!1805) (Found!10002 #b00000000000000000000000000000000)))))

(assert (=> b!1276085 (=> (not res!848162) (not e!728675))))

(declare-fun b!1276086 () Bool)

(declare-fun e!728673 () Bool)

(assert (=> b!1276086 (= e!728673 e!728674)))

(declare-fun c!123876 () Bool)

(assert (=> b!1276086 (= c!123876 (validKeyInArray!0 (select (arr!40353 _keys!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1276087 () Bool)

(assert (=> b!1276087 (= e!728675 call!62646)))

(declare-fun d!140337 () Bool)

(declare-fun res!848163 () Bool)

(assert (=> d!140337 (=> res!848163 e!728673)))

(assert (=> d!140337 (= res!848163 (bvsge #b00000000000000000000000000000000 (size!40904 _keys!1427)))))

(assert (=> d!140337 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805) e!728673)))

(assert (= (and d!140337 (not res!848163)) b!1276086))

(assert (= (and b!1276086 c!123876) b!1276085))

(assert (= (and b!1276086 (not c!123876)) b!1276084))

(assert (= (and b!1276085 res!848162) b!1276087))

(assert (= (or b!1276087 b!1276084) bm!62643))

(declare-fun m!1172113 () Bool)

(assert (=> bm!62643 m!1172113))

(assert (=> b!1276085 m!1172105))

(declare-fun m!1172115 () Bool)

(assert (=> b!1276085 m!1172115))

(declare-fun m!1172117 () Bool)

(assert (=> b!1276085 m!1172117))

(assert (=> b!1276085 m!1172105))

(declare-fun m!1172119 () Bool)

(assert (=> b!1276085 m!1172119))

(assert (=> b!1276086 m!1172105))

(assert (=> b!1276086 m!1172105))

(assert (=> b!1276086 m!1172111))

(assert (=> b!1276039 d!140337))

(declare-fun condMapEmpty!51515 () Bool)

(declare-fun mapDefault!51515 () ValueCell!15762)

(assert (=> mapNonEmpty!51509 (= condMapEmpty!51515 (= mapRest!51509 ((as const (Array (_ BitVec 32) ValueCell!15762)) mapDefault!51515)))))

(declare-fun e!728681 () Bool)

(declare-fun mapRes!51515 () Bool)

(assert (=> mapNonEmpty!51509 (= tp!98268 (and e!728681 mapRes!51515))))

(declare-fun b!1276094 () Bool)

(declare-fun e!728680 () Bool)

(assert (=> b!1276094 (= e!728680 tp_is_empty!33321)))

(declare-fun mapNonEmpty!51515 () Bool)

(declare-fun tp!98274 () Bool)

(assert (=> mapNonEmpty!51515 (= mapRes!51515 (and tp!98274 e!728680))))

(declare-fun mapRest!51515 () (Array (_ BitVec 32) ValueCell!15762))

(declare-fun mapKey!51515 () (_ BitVec 32))

(declare-fun mapValue!51515 () ValueCell!15762)

(assert (=> mapNonEmpty!51515 (= mapRest!51509 (store mapRest!51515 mapKey!51515 mapValue!51515))))

(declare-fun b!1276095 () Bool)

(assert (=> b!1276095 (= e!728681 tp_is_empty!33321)))

(declare-fun mapIsEmpty!51515 () Bool)

(assert (=> mapIsEmpty!51515 mapRes!51515))

(assert (= (and mapNonEmpty!51509 condMapEmpty!51515) mapIsEmpty!51515))

(assert (= (and mapNonEmpty!51509 (not condMapEmpty!51515)) mapNonEmpty!51515))

(assert (= (and mapNonEmpty!51515 ((_ is ValueCellFull!15762) mapValue!51515)) b!1276094))

(assert (= (and mapNonEmpty!51509 ((_ is ValueCellFull!15762) mapDefault!51515)) b!1276095))

(declare-fun m!1172121 () Bool)

(assert (=> mapNonEmpty!51515 m!1172121))

(check-sat (not bm!62640) (not b!1276086) (not b!1276075) (not mapNonEmpty!51515) (not b!1276085) tp_is_empty!33321 (not bm!62643) (not b!1276074) (not b!1276071))
(check-sat)
