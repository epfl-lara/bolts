; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81800 () Bool)

(assert start!81800)

(declare-fun res!638772 () Bool)

(declare-fun e!537292 () Bool)

(assert (=> start!81800 (=> (not res!638772) (not e!537292))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81800 (= res!638772 (validMask!0 mask!1823))))

(assert (=> start!81800 e!537292))

(assert (=> start!81800 true))

(declare-datatypes ((V!32771 0))(
  ( (V!32772 (val!10471 Int)) )
))
(declare-datatypes ((ValueCell!9939 0))(
  ( (ValueCellFull!9939 (v!13025 V!32771)) (EmptyCell!9939) )
))
(declare-datatypes ((array!57807 0))(
  ( (array!57808 (arr!27782 (Array (_ BitVec 32) ValueCell!9939)) (size!28262 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57807)

(declare-fun e!537289 () Bool)

(declare-fun array_inv!21507 (array!57807) Bool)

(assert (=> start!81800 (and (array_inv!21507 _values!1197) e!537289)))

(declare-datatypes ((array!57809 0))(
  ( (array!57810 (arr!27783 (Array (_ BitVec 32) (_ BitVec 64))) (size!28263 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57809)

(declare-fun array_inv!21508 (array!57809) Bool)

(assert (=> start!81800 (array_inv!21508 _keys!1441)))

(declare-fun b!953687 () Bool)

(declare-fun res!638773 () Bool)

(assert (=> b!953687 (=> (not res!638773) (not e!537292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57809 (_ BitVec 32)) Bool)

(assert (=> b!953687 (= res!638773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!953688 () Bool)

(declare-fun e!537290 () Bool)

(declare-fun tp_is_empty!20841 () Bool)

(assert (=> b!953688 (= e!537290 tp_is_empty!20841)))

(declare-fun mapNonEmpty!33214 () Bool)

(declare-fun mapRes!33214 () Bool)

(declare-fun tp!63604 () Bool)

(declare-fun e!537288 () Bool)

(assert (=> mapNonEmpty!33214 (= mapRes!33214 (and tp!63604 e!537288))))

(declare-fun mapRest!33214 () (Array (_ BitVec 32) ValueCell!9939))

(declare-fun mapValue!33214 () ValueCell!9939)

(declare-fun mapKey!33214 () (_ BitVec 32))

(assert (=> mapNonEmpty!33214 (= (arr!27782 _values!1197) (store mapRest!33214 mapKey!33214 mapValue!33214))))

(declare-fun mapIsEmpty!33214 () Bool)

(assert (=> mapIsEmpty!33214 mapRes!33214))

(declare-fun b!953689 () Bool)

(assert (=> b!953689 (= e!537292 (and (bvsle #b00000000000000000000000000000000 (size!28263 _keys!1441)) (bvsge (size!28263 _keys!1441) #b01111111111111111111111111111111)))))

(declare-fun b!953690 () Bool)

(assert (=> b!953690 (= e!537289 (and e!537290 mapRes!33214))))

(declare-fun condMapEmpty!33214 () Bool)

(declare-fun mapDefault!33214 () ValueCell!9939)

(assert (=> b!953690 (= condMapEmpty!33214 (= (arr!27782 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9939)) mapDefault!33214)))))

(declare-fun b!953691 () Bool)

(declare-fun res!638774 () Bool)

(assert (=> b!953691 (=> (not res!638774) (not e!537292))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!953691 (= res!638774 (and (= (size!28262 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28263 _keys!1441) (size!28262 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!953692 () Bool)

(assert (=> b!953692 (= e!537288 tp_is_empty!20841)))

(assert (= (and start!81800 res!638772) b!953691))

(assert (= (and b!953691 res!638774) b!953687))

(assert (= (and b!953687 res!638773) b!953689))

(assert (= (and b!953690 condMapEmpty!33214) mapIsEmpty!33214))

(assert (= (and b!953690 (not condMapEmpty!33214)) mapNonEmpty!33214))

(get-info :version)

(assert (= (and mapNonEmpty!33214 ((_ is ValueCellFull!9939) mapValue!33214)) b!953692))

(assert (= (and b!953690 ((_ is ValueCellFull!9939) mapDefault!33214)) b!953688))

(assert (= start!81800 b!953690))

(declare-fun m!885715 () Bool)

(assert (=> start!81800 m!885715))

(declare-fun m!885717 () Bool)

(assert (=> start!81800 m!885717))

(declare-fun m!885719 () Bool)

(assert (=> start!81800 m!885719))

(declare-fun m!885721 () Bool)

(assert (=> b!953687 m!885721))

(declare-fun m!885723 () Bool)

(assert (=> mapNonEmpty!33214 m!885723))

(check-sat (not b!953687) (not start!81800) (not mapNonEmpty!33214) tp_is_empty!20841)
(check-sat)
(get-model)

(declare-fun bm!41669 () Bool)

(declare-fun call!41672 () Bool)

(assert (=> bm!41669 (= call!41672 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1441 mask!1823))))

(declare-fun b!953719 () Bool)

(declare-fun e!537314 () Bool)

(assert (=> b!953719 (= e!537314 call!41672)))

(declare-fun b!953720 () Bool)

(declare-fun e!537316 () Bool)

(assert (=> b!953720 (= e!537316 call!41672)))

(declare-fun b!953721 () Bool)

(assert (=> b!953721 (= e!537316 e!537314)))

(declare-fun lt!429781 () (_ BitVec 64))

(assert (=> b!953721 (= lt!429781 (select (arr!27783 _keys!1441) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32083 0))(
  ( (Unit!32084) )
))
(declare-fun lt!429782 () Unit!32083)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57809 (_ BitVec 64) (_ BitVec 32)) Unit!32083)

(assert (=> b!953721 (= lt!429782 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1441 lt!429781 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57809 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!953721 (arrayContainsKey!0 _keys!1441 lt!429781 #b00000000000000000000000000000000)))

(declare-fun lt!429783 () Unit!32083)

(assert (=> b!953721 (= lt!429783 lt!429782)))

(declare-fun res!638788 () Bool)

(declare-datatypes ((SeekEntryResult!9173 0))(
  ( (MissingZero!9173 (index!39062 (_ BitVec 32))) (Found!9173 (index!39063 (_ BitVec 32))) (Intermediate!9173 (undefined!9985 Bool) (index!39064 (_ BitVec 32)) (x!82108 (_ BitVec 32))) (Undefined!9173) (MissingVacant!9173 (index!39065 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57809 (_ BitVec 32)) SeekEntryResult!9173)

(assert (=> b!953721 (= res!638788 (= (seekEntryOrOpen!0 (select (arr!27783 _keys!1441) #b00000000000000000000000000000000) _keys!1441 mask!1823) (Found!9173 #b00000000000000000000000000000000)))))

(assert (=> b!953721 (=> (not res!638788) (not e!537314))))

(declare-fun d!115657 () Bool)

(declare-fun res!638789 () Bool)

(declare-fun e!537315 () Bool)

(assert (=> d!115657 (=> res!638789 e!537315)))

(assert (=> d!115657 (= res!638789 (bvsge #b00000000000000000000000000000000 (size!28263 _keys!1441)))))

(assert (=> d!115657 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823) e!537315)))

(declare-fun b!953722 () Bool)

(assert (=> b!953722 (= e!537315 e!537316)))

(declare-fun c!99778 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953722 (= c!99778 (validKeyInArray!0 (select (arr!27783 _keys!1441) #b00000000000000000000000000000000)))))

(assert (= (and d!115657 (not res!638789)) b!953722))

(assert (= (and b!953722 c!99778) b!953721))

(assert (= (and b!953722 (not c!99778)) b!953720))

(assert (= (and b!953721 res!638788) b!953719))

(assert (= (or b!953719 b!953720) bm!41669))

(declare-fun m!885735 () Bool)

(assert (=> bm!41669 m!885735))

(declare-fun m!885737 () Bool)

(assert (=> b!953721 m!885737))

(declare-fun m!885739 () Bool)

(assert (=> b!953721 m!885739))

(declare-fun m!885741 () Bool)

(assert (=> b!953721 m!885741))

(assert (=> b!953721 m!885737))

(declare-fun m!885743 () Bool)

(assert (=> b!953721 m!885743))

(assert (=> b!953722 m!885737))

(assert (=> b!953722 m!885737))

(declare-fun m!885745 () Bool)

(assert (=> b!953722 m!885745))

(assert (=> b!953687 d!115657))

(declare-fun d!115659 () Bool)

(assert (=> d!115659 (= (validMask!0 mask!1823) (and (or (= mask!1823 #b00000000000000000000000000000111) (= mask!1823 #b00000000000000000000000000001111) (= mask!1823 #b00000000000000000000000000011111) (= mask!1823 #b00000000000000000000000000111111) (= mask!1823 #b00000000000000000000000001111111) (= mask!1823 #b00000000000000000000000011111111) (= mask!1823 #b00000000000000000000000111111111) (= mask!1823 #b00000000000000000000001111111111) (= mask!1823 #b00000000000000000000011111111111) (= mask!1823 #b00000000000000000000111111111111) (= mask!1823 #b00000000000000000001111111111111) (= mask!1823 #b00000000000000000011111111111111) (= mask!1823 #b00000000000000000111111111111111) (= mask!1823 #b00000000000000001111111111111111) (= mask!1823 #b00000000000000011111111111111111) (= mask!1823 #b00000000000000111111111111111111) (= mask!1823 #b00000000000001111111111111111111) (= mask!1823 #b00000000000011111111111111111111) (= mask!1823 #b00000000000111111111111111111111) (= mask!1823 #b00000000001111111111111111111111) (= mask!1823 #b00000000011111111111111111111111) (= mask!1823 #b00000000111111111111111111111111) (= mask!1823 #b00000001111111111111111111111111) (= mask!1823 #b00000011111111111111111111111111) (= mask!1823 #b00000111111111111111111111111111) (= mask!1823 #b00001111111111111111111111111111) (= mask!1823 #b00011111111111111111111111111111) (= mask!1823 #b00111111111111111111111111111111)) (bvsle mask!1823 #b00111111111111111111111111111111)))))

(assert (=> start!81800 d!115659))

(declare-fun d!115661 () Bool)

(assert (=> d!115661 (= (array_inv!21507 _values!1197) (bvsge (size!28262 _values!1197) #b00000000000000000000000000000000))))

(assert (=> start!81800 d!115661))

(declare-fun d!115663 () Bool)

(assert (=> d!115663 (= (array_inv!21508 _keys!1441) (bvsge (size!28263 _keys!1441) #b00000000000000000000000000000000))))

(assert (=> start!81800 d!115663))

(declare-fun b!953729 () Bool)

(declare-fun e!537321 () Bool)

(assert (=> b!953729 (= e!537321 tp_is_empty!20841)))

(declare-fun b!953730 () Bool)

(declare-fun e!537322 () Bool)

(assert (=> b!953730 (= e!537322 tp_is_empty!20841)))

(declare-fun condMapEmpty!33220 () Bool)

(declare-fun mapDefault!33220 () ValueCell!9939)

(assert (=> mapNonEmpty!33214 (= condMapEmpty!33220 (= mapRest!33214 ((as const (Array (_ BitVec 32) ValueCell!9939)) mapDefault!33220)))))

(declare-fun mapRes!33220 () Bool)

(assert (=> mapNonEmpty!33214 (= tp!63604 (and e!537322 mapRes!33220))))

(declare-fun mapIsEmpty!33220 () Bool)

(assert (=> mapIsEmpty!33220 mapRes!33220))

(declare-fun mapNonEmpty!33220 () Bool)

(declare-fun tp!63610 () Bool)

(assert (=> mapNonEmpty!33220 (= mapRes!33220 (and tp!63610 e!537321))))

(declare-fun mapKey!33220 () (_ BitVec 32))

(declare-fun mapValue!33220 () ValueCell!9939)

(declare-fun mapRest!33220 () (Array (_ BitVec 32) ValueCell!9939))

(assert (=> mapNonEmpty!33220 (= mapRest!33214 (store mapRest!33220 mapKey!33220 mapValue!33220))))

(assert (= (and mapNonEmpty!33214 condMapEmpty!33220) mapIsEmpty!33220))

(assert (= (and mapNonEmpty!33214 (not condMapEmpty!33220)) mapNonEmpty!33220))

(assert (= (and mapNonEmpty!33220 ((_ is ValueCellFull!9939) mapValue!33220)) b!953729))

(assert (= (and mapNonEmpty!33214 ((_ is ValueCellFull!9939) mapDefault!33220)) b!953730))

(declare-fun m!885747 () Bool)

(assert (=> mapNonEmpty!33220 m!885747))

(check-sat (not b!953722) (not b!953721) (not mapNonEmpty!33220) (not bm!41669) tp_is_empty!20841)
(check-sat)
