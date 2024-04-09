; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93652 () Bool)

(assert start!93652)

(declare-fun b!1059225 () Bool)

(declare-fun e!602861 () Bool)

(declare-fun e!602863 () Bool)

(declare-fun mapRes!39061 () Bool)

(assert (=> b!1059225 (= e!602861 (and e!602863 mapRes!39061))))

(declare-fun condMapEmpty!39061 () Bool)

(declare-datatypes ((V!38379 0))(
  ( (V!38380 (val!12517 Int)) )
))
(declare-datatypes ((ValueCell!11763 0))(
  ( (ValueCellFull!11763 (v!15127 V!38379)) (EmptyCell!11763) )
))
(declare-datatypes ((array!66874 0))(
  ( (array!66875 (arr!32144 (Array (_ BitVec 32) ValueCell!11763)) (size!32681 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66874)

(declare-fun mapDefault!39061 () ValueCell!11763)

(assert (=> b!1059225 (= condMapEmpty!39061 (= (arr!32144 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11763)) mapDefault!39061)))))

(declare-fun b!1059226 () Bool)

(declare-fun res!707692 () Bool)

(declare-fun e!602865 () Bool)

(assert (=> b!1059226 (=> (not res!707692) (not e!602865))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!66876 0))(
  ( (array!66877 (arr!32145 (Array (_ BitVec 32) (_ BitVec 64))) (size!32682 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66876)

(assert (=> b!1059226 (= res!707692 (and (= (size!32681 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32682 _keys!1163) (size!32681 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1059227 () Bool)

(declare-fun res!707694 () Bool)

(assert (=> b!1059227 (=> (not res!707694) (not e!602865))))

(assert (=> b!1059227 (= res!707694 (and (bvsle #b00000000000000000000000000000000 (size!32682 _keys!1163)) (bvslt (size!32682 _keys!1163) #b01111111111111111111111111111111)))))

(declare-fun b!1059228 () Bool)

(declare-fun e!602860 () Bool)

(declare-fun tp_is_empty!24933 () Bool)

(assert (=> b!1059228 (= e!602860 tp_is_empty!24933)))

(declare-fun res!707693 () Bool)

(assert (=> start!93652 (=> (not res!707693) (not e!602865))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93652 (= res!707693 (validMask!0 mask!1515))))

(assert (=> start!93652 e!602865))

(assert (=> start!93652 true))

(declare-fun array_inv!24760 (array!66874) Bool)

(assert (=> start!93652 (and (array_inv!24760 _values!955) e!602861)))

(declare-fun array_inv!24761 (array!66876) Bool)

(assert (=> start!93652 (array_inv!24761 _keys!1163)))

(declare-fun b!1059229 () Bool)

(assert (=> b!1059229 (= e!602863 tp_is_empty!24933)))

(declare-fun b!1059230 () Bool)

(declare-fun e!602862 () Bool)

(declare-datatypes ((List!22544 0))(
  ( (Nil!22541) (Cons!22540 (h!23749 (_ BitVec 64)) (t!31858 List!22544)) )
))
(declare-fun contains!6227 (List!22544 (_ BitVec 64)) Bool)

(assert (=> b!1059230 (= e!602862 (contains!6227 Nil!22541 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1059231 () Bool)

(declare-fun res!707690 () Bool)

(assert (=> b!1059231 (=> (not res!707690) (not e!602865))))

(declare-fun noDuplicate!1590 (List!22544) Bool)

(assert (=> b!1059231 (= res!707690 (noDuplicate!1590 Nil!22541))))

(declare-fun mapNonEmpty!39061 () Bool)

(declare-fun tp!74868 () Bool)

(assert (=> mapNonEmpty!39061 (= mapRes!39061 (and tp!74868 e!602860))))

(declare-fun mapKey!39061 () (_ BitVec 32))

(declare-fun mapValue!39061 () ValueCell!11763)

(declare-fun mapRest!39061 () (Array (_ BitVec 32) ValueCell!11763))

(assert (=> mapNonEmpty!39061 (= (arr!32144 _values!955) (store mapRest!39061 mapKey!39061 mapValue!39061))))

(declare-fun b!1059232 () Bool)

(assert (=> b!1059232 (= e!602865 e!602862)))

(declare-fun res!707695 () Bool)

(assert (=> b!1059232 (=> res!707695 e!602862)))

(assert (=> b!1059232 (= res!707695 (contains!6227 Nil!22541 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1059233 () Bool)

(declare-fun res!707691 () Bool)

(assert (=> b!1059233 (=> (not res!707691) (not e!602865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66876 (_ BitVec 32)) Bool)

(assert (=> b!1059233 (= res!707691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39061 () Bool)

(assert (=> mapIsEmpty!39061 mapRes!39061))

(assert (= (and start!93652 res!707693) b!1059226))

(assert (= (and b!1059226 res!707692) b!1059233))

(assert (= (and b!1059233 res!707691) b!1059227))

(assert (= (and b!1059227 res!707694) b!1059231))

(assert (= (and b!1059231 res!707690) b!1059232))

(assert (= (and b!1059232 (not res!707695)) b!1059230))

(assert (= (and b!1059225 condMapEmpty!39061) mapIsEmpty!39061))

(assert (= (and b!1059225 (not condMapEmpty!39061)) mapNonEmpty!39061))

(get-info :version)

(assert (= (and mapNonEmpty!39061 ((_ is ValueCellFull!11763) mapValue!39061)) b!1059228))

(assert (= (and b!1059225 ((_ is ValueCellFull!11763) mapDefault!39061)) b!1059229))

(assert (= start!93652 b!1059225))

(declare-fun m!978837 () Bool)

(assert (=> b!1059233 m!978837))

(declare-fun m!978839 () Bool)

(assert (=> mapNonEmpty!39061 m!978839))

(declare-fun m!978841 () Bool)

(assert (=> b!1059230 m!978841))

(declare-fun m!978843 () Bool)

(assert (=> start!93652 m!978843))

(declare-fun m!978845 () Bool)

(assert (=> start!93652 m!978845))

(declare-fun m!978847 () Bool)

(assert (=> start!93652 m!978847))

(declare-fun m!978849 () Bool)

(assert (=> b!1059231 m!978849))

(declare-fun m!978851 () Bool)

(assert (=> b!1059232 m!978851))

(check-sat tp_is_empty!24933 (not start!93652) (not b!1059233) (not b!1059230) (not mapNonEmpty!39061) (not b!1059231) (not b!1059232))
(check-sat)
(get-model)

(declare-fun d!128667 () Bool)

(declare-fun lt!467074 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!539 (List!22544) (InoxSet (_ BitVec 64)))

(assert (=> d!128667 (= lt!467074 (select (content!539 Nil!22541) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!602888 () Bool)

(assert (=> d!128667 (= lt!467074 e!602888)))

(declare-fun res!707718 () Bool)

(assert (=> d!128667 (=> (not res!707718) (not e!602888))))

(assert (=> d!128667 (= res!707718 ((_ is Cons!22540) Nil!22541))))

(assert (=> d!128667 (= (contains!6227 Nil!22541 #b0000000000000000000000000000000000000000000000000000000000000000) lt!467074)))

(declare-fun b!1059265 () Bool)

(declare-fun e!602889 () Bool)

(assert (=> b!1059265 (= e!602888 e!602889)))

(declare-fun res!707719 () Bool)

(assert (=> b!1059265 (=> res!707719 e!602889)))

(assert (=> b!1059265 (= res!707719 (= (h!23749 Nil!22541) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1059266 () Bool)

(assert (=> b!1059266 (= e!602889 (contains!6227 (t!31858 Nil!22541) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!128667 res!707718) b!1059265))

(assert (= (and b!1059265 (not res!707719)) b!1059266))

(declare-fun m!978869 () Bool)

(assert (=> d!128667 m!978869))

(declare-fun m!978871 () Bool)

(assert (=> d!128667 m!978871))

(declare-fun m!978873 () Bool)

(assert (=> b!1059266 m!978873))

(assert (=> b!1059232 d!128667))

(declare-fun d!128669 () Bool)

(assert (=> d!128669 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!93652 d!128669))

(declare-fun d!128671 () Bool)

(assert (=> d!128671 (= (array_inv!24760 _values!955) (bvsge (size!32681 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!93652 d!128671))

(declare-fun d!128673 () Bool)

(assert (=> d!128673 (= (array_inv!24761 _keys!1163) (bvsge (size!32682 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!93652 d!128673))

(declare-fun d!128675 () Bool)

(declare-fun res!707724 () Bool)

(declare-fun e!602897 () Bool)

(assert (=> d!128675 (=> res!707724 e!602897)))

(assert (=> d!128675 (= res!707724 (bvsge #b00000000000000000000000000000000 (size!32682 _keys!1163)))))

(assert (=> d!128675 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!602897)))

(declare-fun b!1059275 () Bool)

(declare-fun e!602898 () Bool)

(assert (=> b!1059275 (= e!602897 e!602898)))

(declare-fun c!107141 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1059275 (= c!107141 (validKeyInArray!0 (select (arr!32145 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!44882 () Bool)

(declare-fun call!44885 () Bool)

(assert (=> bm!44882 (= call!44885 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1059276 () Bool)

(assert (=> b!1059276 (= e!602898 call!44885)))

(declare-fun b!1059277 () Bool)

(declare-fun e!602896 () Bool)

(assert (=> b!1059277 (= e!602896 call!44885)))

(declare-fun b!1059278 () Bool)

(assert (=> b!1059278 (= e!602898 e!602896)))

(declare-fun lt!467081 () (_ BitVec 64))

(assert (=> b!1059278 (= lt!467081 (select (arr!32145 _keys!1163) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34709 0))(
  ( (Unit!34710) )
))
(declare-fun lt!467082 () Unit!34709)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!66876 (_ BitVec 64) (_ BitVec 32)) Unit!34709)

(assert (=> b!1059278 (= lt!467082 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!467081 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!66876 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1059278 (arrayContainsKey!0 _keys!1163 lt!467081 #b00000000000000000000000000000000)))

(declare-fun lt!467083 () Unit!34709)

(assert (=> b!1059278 (= lt!467083 lt!467082)))

(declare-fun res!707725 () Bool)

(declare-datatypes ((SeekEntryResult!9865 0))(
  ( (MissingZero!9865 (index!41830 (_ BitVec 32))) (Found!9865 (index!41831 (_ BitVec 32))) (Intermediate!9865 (undefined!10677 Bool) (index!41832 (_ BitVec 32)) (x!94647 (_ BitVec 32))) (Undefined!9865) (MissingVacant!9865 (index!41833 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!66876 (_ BitVec 32)) SeekEntryResult!9865)

(assert (=> b!1059278 (= res!707725 (= (seekEntryOrOpen!0 (select (arr!32145 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9865 #b00000000000000000000000000000000)))))

(assert (=> b!1059278 (=> (not res!707725) (not e!602896))))

(assert (= (and d!128675 (not res!707724)) b!1059275))

(assert (= (and b!1059275 c!107141) b!1059278))

(assert (= (and b!1059275 (not c!107141)) b!1059276))

(assert (= (and b!1059278 res!707725) b!1059277))

(assert (= (or b!1059277 b!1059276) bm!44882))

(declare-fun m!978875 () Bool)

(assert (=> b!1059275 m!978875))

(assert (=> b!1059275 m!978875))

(declare-fun m!978877 () Bool)

(assert (=> b!1059275 m!978877))

(declare-fun m!978879 () Bool)

(assert (=> bm!44882 m!978879))

(assert (=> b!1059278 m!978875))

(declare-fun m!978881 () Bool)

(assert (=> b!1059278 m!978881))

(declare-fun m!978883 () Bool)

(assert (=> b!1059278 m!978883))

(assert (=> b!1059278 m!978875))

(declare-fun m!978885 () Bool)

(assert (=> b!1059278 m!978885))

(assert (=> b!1059233 d!128675))

(declare-fun d!128677 () Bool)

(declare-fun lt!467084 () Bool)

(assert (=> d!128677 (= lt!467084 (select (content!539 Nil!22541) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!602899 () Bool)

(assert (=> d!128677 (= lt!467084 e!602899)))

(declare-fun res!707726 () Bool)

(assert (=> d!128677 (=> (not res!707726) (not e!602899))))

(assert (=> d!128677 (= res!707726 ((_ is Cons!22540) Nil!22541))))

(assert (=> d!128677 (= (contains!6227 Nil!22541 #b1000000000000000000000000000000000000000000000000000000000000000) lt!467084)))

(declare-fun b!1059279 () Bool)

(declare-fun e!602900 () Bool)

(assert (=> b!1059279 (= e!602899 e!602900)))

(declare-fun res!707727 () Bool)

(assert (=> b!1059279 (=> res!707727 e!602900)))

(assert (=> b!1059279 (= res!707727 (= (h!23749 Nil!22541) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1059280 () Bool)

(assert (=> b!1059280 (= e!602900 (contains!6227 (t!31858 Nil!22541) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!128677 res!707726) b!1059279))

(assert (= (and b!1059279 (not res!707727)) b!1059280))

(assert (=> d!128677 m!978869))

(declare-fun m!978887 () Bool)

(assert (=> d!128677 m!978887))

(declare-fun m!978889 () Bool)

(assert (=> b!1059280 m!978889))

(assert (=> b!1059230 d!128677))

(declare-fun d!128679 () Bool)

(declare-fun res!707732 () Bool)

(declare-fun e!602905 () Bool)

(assert (=> d!128679 (=> res!707732 e!602905)))

(assert (=> d!128679 (= res!707732 ((_ is Nil!22541) Nil!22541))))

(assert (=> d!128679 (= (noDuplicate!1590 Nil!22541) e!602905)))

(declare-fun b!1059285 () Bool)

(declare-fun e!602906 () Bool)

(assert (=> b!1059285 (= e!602905 e!602906)))

(declare-fun res!707733 () Bool)

(assert (=> b!1059285 (=> (not res!707733) (not e!602906))))

(assert (=> b!1059285 (= res!707733 (not (contains!6227 (t!31858 Nil!22541) (h!23749 Nil!22541))))))

(declare-fun b!1059286 () Bool)

(assert (=> b!1059286 (= e!602906 (noDuplicate!1590 (t!31858 Nil!22541)))))

(assert (= (and d!128679 (not res!707732)) b!1059285))

(assert (= (and b!1059285 res!707733) b!1059286))

(declare-fun m!978891 () Bool)

(assert (=> b!1059285 m!978891))

(declare-fun m!978893 () Bool)

(assert (=> b!1059286 m!978893))

(assert (=> b!1059231 d!128679))

(declare-fun b!1059293 () Bool)

(declare-fun e!602911 () Bool)

(assert (=> b!1059293 (= e!602911 tp_is_empty!24933)))

(declare-fun condMapEmpty!39067 () Bool)

(declare-fun mapDefault!39067 () ValueCell!11763)

(assert (=> mapNonEmpty!39061 (= condMapEmpty!39067 (= mapRest!39061 ((as const (Array (_ BitVec 32) ValueCell!11763)) mapDefault!39067)))))

(declare-fun e!602912 () Bool)

(declare-fun mapRes!39067 () Bool)

(assert (=> mapNonEmpty!39061 (= tp!74868 (and e!602912 mapRes!39067))))

(declare-fun mapNonEmpty!39067 () Bool)

(declare-fun tp!74874 () Bool)

(assert (=> mapNonEmpty!39067 (= mapRes!39067 (and tp!74874 e!602911))))

(declare-fun mapValue!39067 () ValueCell!11763)

(declare-fun mapRest!39067 () (Array (_ BitVec 32) ValueCell!11763))

(declare-fun mapKey!39067 () (_ BitVec 32))

(assert (=> mapNonEmpty!39067 (= mapRest!39061 (store mapRest!39067 mapKey!39067 mapValue!39067))))

(declare-fun b!1059294 () Bool)

(assert (=> b!1059294 (= e!602912 tp_is_empty!24933)))

(declare-fun mapIsEmpty!39067 () Bool)

(assert (=> mapIsEmpty!39067 mapRes!39067))

(assert (= (and mapNonEmpty!39061 condMapEmpty!39067) mapIsEmpty!39067))

(assert (= (and mapNonEmpty!39061 (not condMapEmpty!39067)) mapNonEmpty!39067))

(assert (= (and mapNonEmpty!39067 ((_ is ValueCellFull!11763) mapValue!39067)) b!1059293))

(assert (= (and mapNonEmpty!39061 ((_ is ValueCellFull!11763) mapDefault!39067)) b!1059294))

(declare-fun m!978895 () Bool)

(assert (=> mapNonEmpty!39067 m!978895))

(check-sat tp_is_empty!24933 (not bm!44882) (not d!128677) (not b!1059280) (not mapNonEmpty!39067) (not b!1059286) (not d!128667) (not b!1059275) (not b!1059278) (not b!1059285) (not b!1059266))
(check-sat)
